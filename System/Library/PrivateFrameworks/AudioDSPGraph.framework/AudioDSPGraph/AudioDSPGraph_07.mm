uint64_t std::__hash_table<std::unique_ptr<AudioDSPGraph::IsoGroup>,std::hash<std::unique_ptr<AudioDSPGraph::IsoGroup>>,std::equal_to<std::unique_ptr<AudioDSPGraph::IsoGroup>>,std::allocator<std::unique_ptr<AudioDSPGraph::IsoGroup>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::unique_ptr<AudioDSPGraph::IsoGroup>,std::hash<std::unique_ptr<AudioDSPGraph::IsoGroup>>,std::equal_to<std::unique_ptr<AudioDSPGraph::IsoGroup>>,std::allocator<std::unique_ptr<AudioDSPGraph::IsoGroup>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::vector<std::unique_ptr<AudioDSPGraph::InternalBuffer>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<AudioDSPGraph::InternalBuffer>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t std::__hash_table<std::unique_ptr<AudioDSPGraph::Box>,std::hash<std::unique_ptr<AudioDSPGraph::Box>>,std::equal_to<std::unique_ptr<AudioDSPGraph::Box>>,std::allocator<std::unique_ptr<AudioDSPGraph::Box>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[2];
      v2[2] = 0;
      if (v4)
      {
        (*(*v4 + 8))(v4);
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

void *std::vector<std::unique_ptr<AudioDSPGraph::InternalBuffer>>::clear[abi:ne200100](void *result)
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

void std::__hash_table<std::unique_ptr<AudioDSPGraph::IsoGroup>,std::hash<std::unique_ptr<AudioDSPGraph::IsoGroup>>,std::equal_to<std::unique_ptr<AudioDSPGraph::IsoGroup>>,std::allocator<std::unique_ptr<AudioDSPGraph::IsoGroup>>>::__deallocate_node(void *__p)
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

uint64_t *std::unique_ptr<AudioDSPGraph::Subset>::reset[abi:ne200100](uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    std::__hash_table<AudioDSPGraph::Box *,std::hash<AudioDSPGraph::Box *>,std::equal_to<AudioDSPGraph::Box *>,std::allocator<AudioDSPGraph::Box *>>::~__hash_table(v1 + 32);
    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    JUMPOUT(0x1CCA84AE0);
  }

  return result;
}

unint64_t AudioDSPGraph::Graph::generateSerialNumber(AudioDSPGraph::Graph *this)
{
  {
    std::random_device::random_device[abi:ne200100](&v5);
    v4 = MEMORY[0x1CCA84770](&v5);
    AudioDSPGraph::Graph::generateSerialNumber(void)::sSerialNo = AudioDSPGraph::intHash(v4);
    std::random_device::~random_device(&v5);
  }

  std::mutex::lock(&AudioDSPGraph::Graph::generateSerialNumber(void)::sSerialNoLock);
  v1 = atomic_load(&AudioDSPGraph::Graph::generateSerialNumber(void)::sSerialNo);
  atomic_store(v1 + 1 + (((v1 + 1) / 0x7FFFFFFFFFFFFFFFLL) | (((v1 + 1) / 0x7FFFFFFFFFFFFFFFLL) << 63)), &AudioDSPGraph::Graph::generateSerialNumber(void)::sSerialNo);
  v2 = atomic_load(&AudioDSPGraph::Graph::generateSerialNumber(void)::sSerialNo);
  std::mutex::unlock(&AudioDSPGraph::Graph::generateSerialNumber(void)::sSerialNoLock);
  return v2;
}

void sub_1C9226410(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, std::random_device a11, std::random_device a12)
{
  std::random_device::~random_device(&a11);
  _Unwind_Resume(a1);
}

std::random_device *std::random_device::random_device[abi:ne200100](std::random_device *a1)
{
  std::string::basic_string[abi:ne200100]<0>(&__token, "/dev/urandom");
  std::random_device::random_device(a1, &__token);
  if (SHIBYTE(__token.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__token.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_1C9226490(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t AudioDSPGraph::intHash(AudioDSPGraph *this)
{
  v1 = (this + ~(this << 32)) ^ ((this + ~(this << 32)) >> 22);
  v2 = 9 * ((v1 + ~(v1 << 13)) ^ ((v1 + ~(v1 << 13)) >> 8));
  v3 = (v2 ^ (v2 >> 15)) + ~((v2 ^ (v2 >> 15)) << 27);
  return v3 ^ (v3 >> 31);
}

void AudioDSPGraph::Graph::construct(int8x8_t *this, const AudioStreamBasicDescription *a2, const AudioDSPGraph::BoxRegistry *a3)
{
  v4 = a2;
  v5 = this;
  v460 = *MEMORY[0x1E69E9840];
  if (LOBYTE(a2->mBytesPerFrame) == 1)
  {
    if (SHIBYTE(a2->mFramesPerPacket) < 0)
    {
      std::string::__init_copy_ctor_external(&v447, *&a2->mSampleRate, *&a2->mFormatID);
      v5 = this;
    }

    else
    {
      v447 = *&a2->mSampleRate;
    }

    v6 = (v5 + 504);
    if (*(v5 + 528) == 1)
    {
      if (*(v5 + 527) < 0)
      {
        operator delete(*v6);
      }

      *v6 = *&v447.__r_.__value_.__l.__data_;
      *(v5 + 65) = *(&v447.__r_.__value_.__l + 2);
      *(&v447.__r_.__value_.__s + 23) = 0;
      v447.__r_.__value_.__s.__data_[0] = 0;
    }

    else
    {
      *v6 = *&v447.__r_.__value_.__l.__data_;
      *(v5 + 65) = *(&v447.__r_.__value_.__l + 2);
      memset(&v447, 0, sizeof(v447));
      *(v5 + 528) = 1;
    }

    v4 = a2;
  }

  for (i = *&v4[4].mFormatID; i; v5 = this)
  {
    v8 = *(i + 7);
    *v454 = *(i + 5);
    *&v454[16] = v8;
    *&v454[32] = i[9];
    *&v454[40] = *(i + 20);
    if (*(v5 + 921) == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(&v451, "graph is configured");
      AudioDSPGraph::ThrowException(1667655457, &v451, off_1E8336408);
    }

    if (*&v454[8] == 1718773105 && *&v454[32] != 64)
    {
      std::string::basic_string[abi:ne200100]<0>(&v451, "frequency domain format should be 64 bits.");
      AudioDSPGraph::ThrowException(1718449215, &v451, off_1E8336420);
    }

    if (*v454 != floor(*v454))
    {
      std::string::basic_string[abi:ne200100]<0>(&v451, "only integer sample rates are supported.");
      AudioDSPGraph::ThrowException(1718449215, &v451, off_1E8336438);
    }

    if (!AudioDSPGraph::MinimalSafetyCheck(v454, a2))
    {
      std::string::basic_string[abi:ne200100]<0>(&v451, "format failed sanity check.");
      AudioDSPGraph::ThrowException(1718449215, &v451, off_1E8336450);
    }

    v451.__r_.__value_.__r.__words[0] = (i + 2);
    v9 = std::__hash_table<std::__hash_value_type<std::string,AudioDSPGraph::FormatAndBlockSize>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AudioDSPGraph::FormatAndBlockSize>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AudioDSPGraph::FormatAndBlockSize>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AudioDSPGraph::FormatAndBlockSize>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v5 + 83, i + 2);
    v10 = *&v454[16];
    *(v9 + 5) = *v454;
    *(v9 + 7) = v10;
    *(v9 + 68) = *&v454[28];
    v451.__r_.__value_.__r.__words[0] = (i + 2);
    std::__hash_table<std::__hash_value_type<std::string,AudioDSPGraph::FormatAndBlockSize>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AudioDSPGraph::FormatAndBlockSize>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AudioDSPGraph::FormatAndBlockSize>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AudioDSPGraph::FormatAndBlockSize>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&this[83], i + 2);
    i = *i;
  }

  if (*(v5 + 922) == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(v454, "graph is initialized");
    AudioDSPGraph::ThrowException(1667655457, v454, off_1E83363D8);
  }

  *(v5 + 260) = a2->mBitsPerChannel;
  v11 = *(v5 + 60);
  if (v11)
  {
    do
    {
      v12 = (*(*v11[2] + 256))(v11[2]);
      if (v12)
      {
        *(v12 + 896) = *(v5 + 260);
      }

      v11 = *v11;
    }

    while (v11);
    if (*(v5 + 922))
    {
      std::string::basic_string[abi:ne200100]<0>(v454, "graph is initialized");
      AudioDSPGraph::ThrowException(1667655457, v454, off_1E83363F0);
    }

    mReserved = a2->mReserved;
  }

  else
  {
    mReserved = a2->mReserved;
  }

  *(v5 + 261) = mReserved;
  for (j = *(v5 + 60); j; j = *j)
  {
    v15 = (*(*j[2] + 256))(j[2]);
    if (v15)
    {
      *(v15 + 900) = *(v5 + 261);
    }
  }

  if (*(v5 + 921) == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(v454, "cannot set slice duration if graph is already configured.");
    AudioDSPGraph::ThrowException(1667655457, v454, off_1E8335C28);
  }

  mFormatID = a2[1].mFormatID;
  *(v5 + 104) = *&a2[1].mSampleRate;
  *(v5 + 920) = mFormatID;
  if (*(v5 + 922) == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(v454, "cannot set options if graph is already initialized.");
    AudioDSPGraph::ThrowException(1667655457, v454, off_1E8336468);
  }

  *(v5 + 840) = BYTE1(a2[1].mFormatID);
  v17 = *&a2[1].mBytesPerPacket;
  for (k = *&a2[1].mBytesPerFrame; v17 != k; v5 = this)
  {
    if (*(v17 + 112) == 1)
    {
      v19 = *(v5 + 127);
      v20 = *(v5 + 128);
      Subset = AudioDSPGraph::Graph::getSubset(v19, v20, (v17 + 88));
      if (!Subset)
      {
        Subset = AudioDSPGraph::Graph::getSubset(v19, v20, (v17 + 88));
        if (!Subset)
        {
          operator new();
        }
      }

      v22 = Subset;
    }

    else
    {
      v22 = 0;
    }

    if (*(v17 + 76) == 1)
    {
      if (*(v17 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v446, *v17, *(v17 + 8));
      }

      else
      {
        v446 = *v17;
      }

      AudioDSPGraph::BoxRegistry::newBox(v454, *(a3 + 5), *(a3 + 6), (v17 + 56), &v446, *(v17 + 80), *(v17 + 84));
      v23 = *v454;
      *v454 = 0;
      if (SHIBYTE(v446.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v446.__r_.__value_.__l.__data_);
      }

      if (!v23)
      {
        v402 = v454;
        caulk::string_from_4cc(v454, *(v17 + 56));
        if (v454[23] < 0)
        {
          v402 = *v454;
        }

        v403 = &v451;
        caulk::string_from_4cc(&v451, *(v17 + 60));
        if ((v451.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v403 = v451.__r_.__value_.__r.__words[0];
        }

        caulk::string_from_4cc(__s1, *(v17 + 64));
        if (__s1[23] >= 0)
        {
          v404 = __s1;
        }

        else
        {
          v404 = *__s1;
        }

        caulk::make_string("box component (%s %s %s) not found", v445, v402, v403, v404);
        AudioDSPGraph::ThrowException(1852204065, v445, off_1E8335AA8);
      }
    }

    else
    {
      if (*(v17 + 48) != 1)
      {
        v405 = *(v17 + 23);
        v406 = v405;
        v407 = *v17;
        v408 = *(v17 + 8);
        v451.__r_.__value_.__r.__words[2] = 13;
        if ((v405 & 0x80u) != 0)
        {
          v405 = v408;
        }

        if (v406 >= 0)
        {
          v409 = v17;
        }

        else
        {
          v409 = v407;
        }

        v451.__r_.__value_.__l.__size_ = v405;
        v451.__r_.__value_.__r.__words[0] = v409;
        *v454 = &v454[40];
        *&v454[8] = xmmword_1C925F110;
        *&v454[24] = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
        *&v454[32] = 0;
        v459 = &v454[40];
        *__s1 = 1;
        *&__s1[8] = &v451;
        *&__s1[16] = 13;
        std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v454, "box {} has no class name or component description", 51, __s1);
        std::string::basic_string<std::string_view,0>(v442, v459, *&v454[16]);
        if (v459 != &v454[40])
        {
          operator delete(v459);
        }

        AudioDSPGraph::ThrowException(1852204065, v442, off_1E8335AD8);
      }

      if (*(v17 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v444, *v17, *(v17 + 8));
      }

      else
      {
        v444 = *v17;
      }

      AudioDSPGraph::BoxRegistry::newBox(v454, a3, (v17 + 24), &v444, *(v17 + 80), *(v17 + 84));
      v23 = *v454;
      *v454 = 0;
      if (SHIBYTE(v444.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v444.__r_.__value_.__l.__data_);
      }

      if (!v23)
      {
        v410 = *(v17 + 47);
        v411 = v410;
        v412 = *(v17 + 24);
        v413 = *(v17 + 32);
        v451.__r_.__value_.__r.__words[2] = 13;
        if ((v410 & 0x80u) != 0)
        {
          v410 = v413;
        }

        if (v411 >= 0)
        {
          v414 = v17 + 24;
        }

        else
        {
          v414 = v412;
        }

        v451.__r_.__value_.__l.__size_ = v410;
        v451.__r_.__value_.__r.__words[0] = v414;
        *v454 = &v454[40];
        *&v454[8] = xmmword_1C925F110;
        *&v454[24] = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
        *&v454[32] = 0;
        v459 = &v454[40];
        *__s1 = 1;
        *&__s1[8] = &v451;
        *&__s1[16] = 13;
        std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v454, "box class {} not found", 24, __s1);
        std::string::basic_string<std::string_view,0>(v443, v459, *&v454[16]);
        if (v459 != &v454[40])
        {
          operator delete(v459);
        }

        AudioDSPGraph::ThrowException(1852204065, v443, off_1E8335AC0);
      }
    }

    if (v22)
    {
      v24 = *(v23 + 32);
      if (v24 != v22)
      {
        if (v24)
        {
          v25 = v24[5];
          if (v25)
          {
            v26 = 0x9DDFEA08EB382D69 * ((8 * (v23 & 0x1FFFFFFF) + 8) ^ HIDWORD(v23));
            v27 = 0x9DDFEA08EB382D69 * (HIDWORD(v23) ^ (v26 >> 47) ^ v26);
            v28 = 0x9DDFEA08EB382D69 * (v27 ^ (v27 >> 47));
            v29 = vcnt_s8(v25);
            v29.i16[0] = vaddlv_u8(v29);
            if (v29.u32[0] > 1uLL)
            {
              v30 = 0x9DDFEA08EB382D69 * (v27 ^ (v27 >> 47));
              if (v28 >= *&v25)
              {
                v30 = v28 % *&v25;
              }
            }

            else
            {
              v30 = v28 & (*&v25 - 1);
            }

            v31 = v24[4];
            v32 = *(v31 + 8 * v30);
            if (v32)
            {
              v33 = *v32;
              if (*v32)
              {
                v34 = *&v25 - 1;
                do
                {
                  v35 = v33[1];
                  if (v35 == v28)
                  {
                    if (v33[2] == v23)
                    {
                      v36 = v33[1];
                      if (v29.u32[0] > 1uLL)
                      {
                        if (v36 >= *&v25)
                        {
                          v36 %= *&v25;
                        }
                      }

                      else
                      {
                        v36 &= v34;
                      }

                      v37 = *(v31 + 8 * v36);
                      do
                      {
                        v38 = v37;
                        v37 = *v37;
                      }

                      while (v37 != v33);
                      if (v38 == v24 + 6)
                      {
                        goto LABEL_92;
                      }

                      v39 = v38[1];
                      if (v29.u32[0] > 1uLL)
                      {
                        if (v39 >= *&v25)
                        {
                          v39 %= *&v25;
                        }
                      }

                      else
                      {
                        v39 &= v34;
                      }

                      if (v39 != v36)
                      {
LABEL_92:
                        if (!*v33)
                        {
                          goto LABEL_93;
                        }

                        v40 = *(*v33 + 8);
                        if (v29.u32[0] > 1uLL)
                        {
                          if (v40 >= *&v25)
                          {
                            v40 %= *&v25;
                          }
                        }

                        else
                        {
                          v40 &= v34;
                        }

                        if (v40 != v36)
                        {
LABEL_93:
                          *(v31 + 8 * v36) = 0;
                        }
                      }

                      v41 = *v33;
                      if (*v33)
                      {
                        v42 = *(v41 + 8);
                        if (v29.u32[0] > 1uLL)
                        {
                          if (v42 >= *&v25)
                          {
                            v42 %= *&v25;
                          }
                        }

                        else
                        {
                          v42 &= v34;
                        }

                        if (v42 != v36)
                        {
                          *(v24[4] + 8 * v42) = v38;
                          v41 = *v33;
                        }
                      }

                      *v38 = v41;
                      *v33 = 0;
                      --v24[7];
                      operator delete(v33);
                      break;
                    }
                  }

                  else
                  {
                    if (v29.u32[0] > 1uLL)
                    {
                      if (v35 >= *&v25)
                      {
                        v35 %= *&v25;
                      }
                    }

                    else
                    {
                      v35 &= v34;
                    }

                    if (v35 != v30)
                    {
                      break;
                    }
                  }

                  v33 = *v33;
                }

                while (v33);
              }
            }
          }
        }

        *(v23 + 32) = v22;
        *v454 = v23;
        std::__hash_table<AudioDSPGraph::Box *,std::hash<AudioDSPGraph::Box *>,std::equal_to<AudioDSPGraph::Box *>,std::allocator<AudioDSPGraph::Box *>>::__emplace_unique_key_args<AudioDSPGraph::Box *,AudioDSPGraph::Box * const&>(v22 + 4, v23);
      }
    }

    AudioDSPGraph::Graph::addBox(v5, v23);
    v17 += 120;
  }

  if (*&a2[4].mBitsPerChannel != *&a2[5].mSampleRate)
  {
    if (*(v5 + 921) != 1)
    {
      operator new();
    }

    std::string::basic_string[abi:ne200100]<0>(v454, "graph is configured");
    AudioDSPGraph::ThrowException(1667655457, v454, off_1E8335DF0);
  }

  if (*&a2[5].mBytesPerPacket != *&a2[5].mBytesPerFrame)
  {
    if (*(v5 + 921) != 1)
    {
      operator new();
    }

    std::string::basic_string[abi:ne200100]<0>(v454, "graph is configured");
    AudioDSPGraph::ThrowException(1667655457, v454, off_1E8335E08);
  }

  mSampleRate = a2[6].mSampleRate;
  for (m = *&a2[6].mFormatID; *&mSampleRate != m; v5 = this)
  {
    *v454 = mSampleRate;
    std::__hash_table<std::__hash_value_type<std::string,AudioDSPGraph::Jack>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Jack>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Jack>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AudioDSPGraph::Jack>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v5 + 88, *&mSampleRate)[5] = 0;
    *v454 = mSampleRate;
    std::__hash_table<std::__hash_value_type<std::string,AudioDSPGraph::Jack>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Jack>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Jack>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AudioDSPGraph::Jack>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&this[88], *&mSampleRate);
    *&mSampleRate += 24;
  }

  v46 = *&a2[3].mFormatID;
  v45 = *&a2[3].mBytesPerPacket;
  while (v46 != v45)
  {
    memset(__s1, 0, 40);
    *&__s1[40] = 1;
    v47 = *(v46 + 28);
    if (v47 == 2)
    {
      v50 = std::__string_hash<char>::operator()[abi:ne200100]((v46 + 64));
      v51 = *(v5 + 672);
      if (!*&v51)
      {
        goto LABEL_511;
      }

      v52 = v50;
      v53 = vcnt_s8(v51);
      v53.i16[0] = vaddlv_u8(v53);
      v54 = v53.u32[0];
      if (v53.u32[0] > 1uLL)
      {
        v55 = v50;
        if (v50 >= *&v51)
        {
          v55 = v50 % *&v51;
        }
      }

      else
      {
        v55 = (*&v51 - 1) & v50;
      }

      v56 = *(*(v5 + 83) + 8 * v55);
      if (!v56 || (v57 = *v56) == 0)
      {
LABEL_511:
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      while (1)
      {
        v58 = v57[1];
        if (v52 == v58)
        {
          if (AudioDSPGraph::IR::BoxAlias::operator==(v57 + 2, v46 + 8))
          {
            v48 = v57 + 5;
            v59 = *(v57 + 7);
            *__s1 = *(v57 + 5);
            *&__s1[16] = v59;
            *&__s1[28] = *(v57 + 68);
            goto LABEL_134;
          }
        }

        else
        {
          if (v54 > 1)
          {
            if (v58 >= *&v51)
            {
              v58 %= *&v51;
            }
          }

          else
          {
            v58 &= *&v51 - 1;
          }

          if (v58 != v55)
          {
            goto LABEL_511;
          }
        }

        v57 = *v57;
        if (!v57)
        {
          goto LABEL_511;
        }
      }
    }

    if (v47 != 1)
    {
      v453[0] = 0;
      std::__format::__create_packed_storage[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>,std::string const,unsigned int const,std::string const,unsigned int const>(v453, &v451, v46, v46 + 6, v46 + 4, v46 + 14);
      *v454 = &v454[40];
      *&v454[8] = xmmword_1C925F110;
      *&v454[24] = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
      *&v454[32] = 0;
      v459 = &v454[40];
      v450.__r_.__value_.__r.__words[0] = 4;
      v450.__r_.__value_.__l.__size_ = &v451;
      v450.__r_.__value_.__r.__words[2] = v453[0];
      std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v454, "wire from {} port {} to {} port {} has no configuration", 59, &v450);
      std::string::basic_string<std::string_view,0>(v440, v459, *&v454[16]);
      if (v459 != &v454[40])
      {
        operator delete(v459);
      }

      AudioDSPGraph::ThrowException(1852204065, v440, off_1E8335B08);
    }

    v48 = 0;
    v49 = *(v46 + 5);
    *__s1 = *(v46 + 4);
    *&__s1[16] = v49;
    *&__s1[32] = *(v46 + 12);
    *&__s1[40] = *(v46 + 26);
LABEL_134:
    v60 = *(v46 + 6);
    v61 = *(v46 + 14);
    if (v60)
    {
      v62 = 0;
    }

    else
    {
      v63 = std::__hash_table<std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AudioDSPGraph::Box *>>>::find<std::string>(v5 + 88, v46);
      if (v63)
      {
        v62 = v63 + 5;
      }

      else
      {
        v62 = 0;
      }
    }

    v64 = std::__hash_table<std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AudioDSPGraph::Box *>>>::find<std::string>(v5 + 117, v46);
    if (v64)
    {
      v65 = v64[5];
    }

    else
    {
      v65 = 0;
    }

    if (!(v65 | v62))
    {
      std::operator+<char>();
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v450, &v449, " index ");
      std::to_string(&v448, v60);
      if ((v448.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v370 = &v448;
      }

      else
      {
        v370 = v448.__r_.__value_.__r.__words[0];
      }

      if ((v448.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v448.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v448.__r_.__value_.__l.__size_;
      }

      v372 = std::string::append(&v450, v370, size);
      v373 = *&v372->__r_.__value_.__l.__data_;
      v451.__r_.__value_.__r.__words[2] = v372->__r_.__value_.__r.__words[2];
      *&v451.__r_.__value_.__l.__data_ = v373;
      v372->__r_.__value_.__l.__size_ = 0;
      v372->__r_.__value_.__r.__words[2] = 0;
      v372->__r_.__value_.__r.__words[0] = 0;
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v454, &v451, " not found");
      AudioDSPGraph::ThrowException(1852204065, v454, off_1E8335E20);
    }

    if (v61)
    {
      v66 = 0;
    }

    else
    {
      v67 = std::__hash_table<std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AudioDSPGraph::Box *>>>::find<std::string>(v5 + 88, v46 + 4);
      if (v67)
      {
        v66 = v67 + 5;
      }

      else
      {
        v66 = 0;
      }
    }

    v68 = std::__hash_table<std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AudioDSPGraph::Box *>>>::find<std::string>(v5 + 117, v46 + 4);
    if (v68)
    {
      v70 = v68[5];
    }

    else
    {
      v70 = 0;
    }

    if (!(v70 | v66))
    {
      std::operator+<char>();
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v450, &v449, " index ");
      std::to_string(&v448, v61);
      if ((v448.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v366 = &v448;
      }

      else
      {
        v366 = v448.__r_.__value_.__r.__words[0];
      }

      if ((v448.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v367 = HIBYTE(v448.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v367 = v448.__r_.__value_.__l.__size_;
      }

      v368 = std::string::append(&v450, v366, v367);
      v369 = *&v368->__r_.__value_.__l.__data_;
      v451.__r_.__value_.__r.__words[2] = v368->__r_.__value_.__r.__words[2];
      *&v451.__r_.__value_.__l.__data_ = v369;
      v368->__r_.__value_.__l.__size_ = 0;
      v368->__r_.__value_.__r.__words[2] = 0;
      v368->__r_.__value_.__r.__words[0] = 0;
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v454, &v451, " not found");
      AudioDSPGraph::ThrowException(1852204065, v454, off_1E8335E38);
    }

    if (*&__s1[8] == 1718773105 && *&__s1[32] != 64)
    {
      std::string::basic_string[abi:ne200100]<0>(v454, "frequency domain format should be 64 bits.");
      AudioDSPGraph::ThrowException(1718449215, v454, off_1E8335E50);
    }

    if (*__s1 != floor(*__s1))
    {
      std::string::basic_string[abi:ne200100]<0>(v454, "only integer sample rates are supported.");
      AudioDSPGraph::ThrowException(1718449215, v454, off_1E8335E68);
    }

    if (!AudioDSPGraph::MinimalSafetyCheck(__s1, v69))
    {
      std::string::basic_string[abi:ne200100]<0>(v454, "format failed sanity check.");
      AudioDSPGraph::ThrowException(1718449215, v454, off_1E8335E80);
    }

    if (*(v5 + 921) == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(v454, "graph is configured");
      AudioDSPGraph::ThrowException(1667655457, v454, off_1E8335E98);
    }

    if (v62)
    {
      if (v66)
      {
        v71 = *v66;
        v72 = *v62;
        if (*v62)
        {
          if (v71)
          {
            if (v72 == v71)
            {
              goto LABEL_188;
            }

            if (*(v71 + 8))
            {
              std::string::basic_string[abi:ne200100]<0>(v454, "destination jack already has a source.");
              AudioDSPGraph::ThrowException(1633903905, v454, off_1E8335EB0);
            }

            AudioDSPGraph::Wire::addAll(*v62, *(v71 + 32));
            AudioDSPGraph::Graph::removeWire(this, v71);
          }

LABEL_187:
          *v66 = v72;
          goto LABEL_188;
        }

        if (!v71)
        {
          operator new();
        }

        *v62 = v71;
        v72 = v71;
      }

      else
      {
        v77 = *(v70 + 72);
        v78 = (*(v70 + 80) - v77) >> 5;
        if (v78 <= v61)
        {
          v416 = (v70 + 40);
          if (*(v70 + 63) < 0)
          {
            v416 = *v416;
          }

          caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v454, v416, v78, v61);
          AudioDSPGraph::ThrowException(1919837985, v454, off_1E8337C60);
        }

        v79 = v77 + 32 * v61;
        if (*(v79 + 16))
        {
          std::string::basic_string[abi:ne200100]<0>(v454, "The input port already has a connection.");
          AudioDSPGraph::ThrowException(1633903905, v454, off_1E8335EC8);
        }

        v72 = *v62;
        if (!*v62)
        {
          operator new();
        }

        *v454 = v79;
        std::__hash_table<AudioDSPGraph::InputPort *,std::hash<AudioDSPGraph::InputPort *>,std::equal_to<AudioDSPGraph::InputPort *>,std::allocator<AudioDSPGraph::InputPort *>>::__emplace_unique_key_args<AudioDSPGraph::InputPort *,AudioDSPGraph::InputPort * const&>((v72 + 16), v79);
        *(v79 + 16) = v72;
      }
    }

    else
    {
      v73 = *(v65 + 96);
      v74 = (*(v65 + 104) - v73) >> 5;
      if (v74 <= v60)
      {
        v415 = (v65 + 40);
        if (*(v65 + 63) < 0)
        {
          v415 = *v415;
        }

        caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v454, v415, v74, v60);
        AudioDSPGraph::ThrowException(1919837985, v454, off_1E8337C78);
      }

      v75 = (v73 + 32 * v60);
      if (v66)
      {
        v72 = *(v75 + 2);
        v76 = *v66;
        if (v72)
        {
          if (v76)
          {
            if (v72 == v76)
            {
              goto LABEL_188;
            }

            if (*(v76 + 8))
            {
              std::string::basic_string[abi:ne200100]<0>(v454, "The jack already has a source.");
              AudioDSPGraph::ThrowException(1633903905, v454, off_1E8335EE0);
            }

            AudioDSPGraph::Wire::addAll(*(v75 + 2), *(v76 + 32));
            AudioDSPGraph::Graph::removeWire(this, v76);
          }

          goto LABEL_187;
        }

        if (!v76)
        {
          operator new();
        }

        AudioDSPGraph::Wire::setSource(*v66, v75);
        v72 = v76;
      }

      else
      {
        v80 = *(v70 + 72);
        v81 = (*(v70 + 80) - v80) >> 5;
        if (v81 <= v61)
        {
          v417 = (v70 + 40);
          if (*(v70 + 63) < 0)
          {
            v417 = *v417;
          }

          caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v454, v417, v81, v61);
          AudioDSPGraph::ThrowException(1919837985, v454, off_1E8337C60);
        }

        v82 = v80 + 32 * v61;
        if (*(v82 + 16))
        {
          std::string::basic_string[abi:ne200100]<0>(v454, "The input port already has a connection.");
          AudioDSPGraph::ThrowException(1633903905, v454, off_1E8335EF8);
        }

        v72 = *(v75 + 2);
        if (!v72)
        {
          operator new();
        }

        *v454 = v82;
        std::__hash_table<AudioDSPGraph::InputPort *,std::hash<AudioDSPGraph::InputPort *>,std::equal_to<AudioDSPGraph::InputPort *>,std::allocator<AudioDSPGraph::InputPort *>>::__emplace_unique_key_args<AudioDSPGraph::InputPort *,AudioDSPGraph::InputPort * const&>((v72 + 16), v82);
        *(v82 + 16) = v72;
      }
    }

LABEL_188:
    v83 = *&__s1[40];
    if (*(v72 + 64) == 1)
    {
      v84 = *(v72 + 120);
      if (memcmp(__s1, v84, 0x28uLL) || v84[10] != v83)
      {
        v374 = *(*(v72 + 8) + 8);
        v375 = (v374 + 40);
        if (*(v374 + 63) < 0)
        {
          v375 = *v375;
        }

        *v454 = *__s1;
        *&v454[16] = *&__s1[16];
        *&v454[32] = *&__s1[32];
        CA::StreamDescription::AsString(&v451, v454, *__s1, *&__s1[16]);
        v376 = SHIBYTE(v451.__r_.__value_.__r.__words[2]);
        v377 = v451.__r_.__value_.__r.__words[0];
        v378 = *(v72 + 120);
        *v454 = *v378;
        *&v454[16] = *(v378 + 16);
        *&v454[32] = *(v378 + 32);
        CA::StreamDescription::AsString(&v450, v454, *&v454[16], v379);
        if (v376 >= 0)
        {
          v380 = &v451;
        }

        else
        {
          v380 = v377;
        }

        if ((v450.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v381 = &v450;
        }

        else
        {
          v381 = v450.__r_.__value_.__r.__words[0];
        }

        caulk::make_string("Wire from box %s: format\n%s, %u block size\ndoes not match the one previously set\n%s, %u block size\n", v454, v375, v380, v83, v381, *(*(v72 + 120) + 40));
        AudioDSPGraph::ThrowException(1718444833, v454, off_1E8337D50);
      }
    }

    else
    {
      v85 = *&__s1[16];
      *(v72 + 72) = *__s1;
      *(v72 + 88) = v85;
      *(v72 + 104) = *&__s1[32];
      *(v72 + 64) = 1;
    }

    *(v72 + 112) = v83;
    *(v72 + 120) = v72 + 72;
    v5 = this;
    if (v48)
    {
      if (memcmp(v48, (v72 + 72), 0x28uLL) || v48[10] != v83)
      {
        v351 = *(*(v72 + 8) + 8);
        v352 = (v351 + 40);
        if (*(v351 + 63) < 0)
        {
          v352 = *v352;
        }

        v353 = *(v48 + 1);
        *v454 = *v48;
        *&v454[16] = v353;
        *&v454[32] = *(v48 + 4);
        CA::StreamDescription::AsString(&v451, v454, *v454, *&v353);
        v354 = SHIBYTE(v451.__r_.__value_.__r.__words[2]);
        v355 = v451.__r_.__value_.__r.__words[0];
        v356 = v48[10];
        v357 = *(v72 + 120);
        *v454 = *v357;
        *&v454[16] = *(v357 + 16);
        *&v454[32] = *(v357 + 32);
        CA::StreamDescription::AsString(&v450, v454, *&v454[16], v358);
        if (v354 >= 0)
        {
          v359 = &v451;
        }

        else
        {
          v359 = v355;
        }

        if ((v450.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v360 = &v450;
        }

        else
        {
          v360 = v450.__r_.__value_.__r.__words[0];
        }

        caulk::make_string("Wire from box %s: format\n%s, %u block size\ndoes not match the one previously set\n%s, %u block size\n", v454, v352, v359, v356, v360, *(*(v72 + 120) + 40));
        AudioDSPGraph::ThrowException(1718444833, v454, off_1E8337D68);
      }

      *(v72 + 120) = v48;
    }

    v46 += 120;
  }

  v86 = *&a2[6].mBytesPerFrame;
  v421 = *&a2[6].mBitsPerChannel;
  if (v86 == v421)
  {
    goto LABEL_218;
  }

  while (2)
  {
    if (*(v5 + 921) == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(v454, "graph is configured");
      AudioDSPGraph::ThrowException(1667655457, v454, off_1E8336228);
    }

    v87 = *(v86 + 1);
    v89 = *v86;
    v88 = v86[1];
    v90 = *(v5 + 592);
    if (!*&v90)
    {
      goto LABEL_216;
    }

    v91 = vcnt_s8(v90);
    v91.i16[0] = vaddlv_u8(v91);
    if (v91.u32[0] > 1uLL)
    {
      v92 = *v86;
      if (*&v90 <= v89)
      {
        v92 = v89 % v90.i32[0];
      }
    }

    else
    {
      v92 = (v90.i32[0] - 1) & v89;
    }

    v93 = *(*(v5 + 73) + 8 * v92);
    if (!v93 || (v94 = *v93) == 0)
    {
LABEL_216:
      operator new();
    }

    while (2)
    {
      v95 = v94[1];
      if (v95 != v89)
      {
        if (v91.u32[0] > 1uLL)
        {
          if (v95 >= *&v90)
          {
            v95 %= *&v90;
          }
        }

        else
        {
          v95 &= *&v90 - 1;
        }

        if (v95 != v92)
        {
          goto LABEL_216;
        }

        goto LABEL_215;
      }

      if (*(v94 + 4) != v89)
      {
LABEL_215:
        v94 = *v94;
        if (!v94)
        {
          goto LABEL_216;
        }

        continue;
      }

      break;
    }

    *(v94 + 6) = v89;
    *(v94 + 7) = v87;
    *(v94 + 32) = BYTE4(v87);
    *(v94 + 36) = v88 == 1;
    v94[6] = v94[5];
    v86 += 4;
    if (v86 != v421)
    {
      continue;
    }

    break;
  }

LABEL_218:
  v96 = *&a2[7].mFormatID;
  v97 = *&a2[7].mBytesPerPacket;
  if (v96 != v97)
  {
    while (1)
    {
      v98 = *(v96 + 4);
      v99 = *(v96 + 10);
      v100 = (v96 + 8);
      v101 = std::__hash_table<std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AudioDSPGraph::Box *>>>::find<std::string>(v5 + 117, v96 + 1);
      if (!v101)
      {
        goto LABEL_554;
      }

      v102 = v101[5];
      if (!v102)
      {
        break;
      }

      if (*(v5 + 921) == 1)
      {
        std::string::basic_string[abi:ne200100]<0>(v454, "graph is configured");
        AudioDSPGraph::ThrowException(1667655457, v454, off_1E8336240);
      }

      v103 = std::__hash_table<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>>>::find<unsigned int>(v5 + 73, *v96);
      if (!v103)
      {
        std::string::basic_string[abi:ne200100]<0>(v454, "connectParameter : inParamID not found");
        AudioDSPGraph::ThrowException(1852204065, v454, off_1E8336258);
      }

      v104 = v103;
      v106 = v103[6];
      v105 = v103[7];
      if (v106 >= v105)
      {
        v108 = v103[5];
        v109 = 0xAAAAAAAAAAAAAAABLL * ((v106 - v108) >> 3);
        v110 = v109 + 1;
        if (v109 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
        }

        v111 = 0xAAAAAAAAAAAAAAABLL * ((v105 - v108) >> 3);
        if (2 * v111 > v110)
        {
          v110 = 2 * v111;
        }

        if (v111 >= 0x555555555555555)
        {
          v112 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v112 = v110;
        }

        if (v112)
        {
          if (v112 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v113 = 24 * v109;
        *v113 = v102;
        *(v113 + 8) = v98;
        *(v113 + 16) = v99;
        v107 = 24 * v109 + 24;
        v114 = v103[5];
        v115 = v103[6] - v114;
        v116 = (24 * v109 - v115);
        memcpy(v116, v114, v115);
        v117 = v104[5];
        v104[5] = v116;
        v104[6] = v107;
        v104[7] = 0;
        if (v117)
        {
          operator delete(v117);
        }

        v5 = this;
      }

      else
      {
        *v106 = v102;
        *(v106 + 8) = v98;
        v107 = v106 + 24;
        *(v106 + 16) = v99;
      }

      v104[6] = v107;
      v96 += 48;
      if (v96 == v97)
      {
        goto LABEL_238;
      }
    }

    v100 = (v96 + 8);
LABEL_554:
    AudioDSPGraph::stringFromFourCharCode<unsigned int>(&v450, *v96);
    std::make_format_args[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>,std::string,std::string const>(&v451, &v450, v100);
    *v454 = &v454[40];
    *&v454[8] = xmmword_1C925F110;
    *&v454[24] = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
    *&v454[32] = 0;
    v459 = &v454[40];
    *__s1 = 2;
    *&__s1[8] = &v451;
    *&__s1[16] = __s.__r_.__value_.__l.__size_;
    std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v454, "parameter connection {} box {} not found", 42, __s1);
    std::string::basic_string<std::string_view,0>(v439, v459, *&v454[16]);
    if (v459 != &v454[40])
    {
      operator delete(v459);
    }

    AudioDSPGraph::ThrowException(1852204065, v439, off_1E8335B20);
  }

LABEL_238:
  v118 = *&a2[7].mBitsPerChannel;
  v119 = *&a2[8].mSampleRate;
  if (v118 != v119)
  {
    v418 = *&a2[8].mSampleRate;
    while (1)
    {
      v120 = *(v118 + 24);
      v121 = *(v118 + 32);
      v122 = std::__hash_table<std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AudioDSPGraph::Box *>>>::find<std::string>(v5 + 117, v118);
      if (!v122 || (v123 = v122[5]) == 0)
      {
        v336 = *(v118 + 23);
        v337 = v336;
        v338 = *v118;
        v339 = *(v118 + 8);
        v451.__r_.__value_.__r.__words[2] = 13;
        if ((v336 & 0x80u) != 0)
        {
          v336 = v339;
        }

        if (v337 >= 0)
        {
          v340 = v118;
        }

        else
        {
          v340 = v338;
        }

        v451.__r_.__value_.__l.__size_ = v336;
        v451.__r_.__value_.__r.__words[0] = v340;
        *v454 = &v454[40];
        *&v454[8] = xmmword_1C925F110;
        *&v454[24] = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
        *&v454[32] = 0;
        v459 = &v454[40];
        *__s1 = 1;
        *&__s1[8] = &v451;
        *&__s1[16] = 13;
        std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v454, "parameter wire source box {} not found", 40, __s1);
        std::string::basic_string<std::string_view,0>(__dst, v459, *&v454[16]);
        if (v459 != &v454[40])
        {
          operator delete(v459);
        }

        AudioDSPGraph::ThrowException(1852204065, __dst, off_1E8335B38);
      }

      v124 = v118 + 40;
      v125 = *(v118 + 64);
      v126 = *(v118 + 72);
      v127 = std::__hash_table<std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AudioDSPGraph::Box *>>>::find<std::string>(v5 + 117, (v118 + 40));
      if (!v127)
      {
        goto LABEL_560;
      }

      v128 = v127[5];
      if (!v128)
      {
        break;
      }

      if (*(v5 + 921) == 1)
      {
        std::string::basic_string[abi:ne200100]<0>(v454, "graph is configured");
        AudioDSPGraph::ThrowException(1667655457, v454, off_1E8335F10);
      }

      v129 = *(v118 + 80);
      v130 = *(v5 + 68);
      v131 = *(v5 + 69);
      if (v130 >= v131)
      {
        v133 = *(v5 + 67);
        v134 = v130 - v133;
        v135 = 0x6DB6DB6DB6DB6DB7 * ((v130 - v133) >> 3);
        v136 = v135 + 1;
        if ((v135 + 1) > 0x492492492492492)
        {
          std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
        }

        v137 = 0x6DB6DB6DB6DB6DB7 * ((v131 - v133) >> 3);
        if (2 * v137 > v136)
        {
          v136 = 2 * v137;
        }

        if (v137 >= 0x249249249249249)
        {
          v138 = 0x492492492492492;
        }

        else
        {
          v138 = v136;
        }

        if (v138)
        {
          if (v138 <= 0x492492492492492)
          {
            v139 = *(v118 + 80);
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v140 = 56 * v135;
        *v140 = v123;
        *(v140 + 8) = v120;
        v422 = v121;
        *(v140 + 16) = v121;
        *(v140 + 24) = v128;
        *(v140 + 32) = v125;
        *(v140 + 40) = v126;
        v141 = v129;
        *(v140 + 48) = v129;
        v132 = 56 * v135 + 56;
        v142 = 56 * v135 - v134;
        memcpy((v140 - v134), v133, v134);
        *(v5 + 67) = v142;
        *(v5 + 68) = v132;
        *(v5 + 69) = 0;
        if (v133)
        {
          operator delete(v133);
        }

        v119 = v418;
        v129 = v141;
        v121 = v422;
      }

      else
      {
        *v130 = v123;
        *(v130 + 8) = v120;
        *(v130 + 16) = v121;
        *(v130 + 24) = v128;
        *(v130 + 32) = v125;
        *(v130 + 40) = v126;
        v132 = v130 + 56;
        *(v130 + 48) = v129;
      }

      *(v5 + 68) = v132;
      v143 = *(v128 + 168);
      v144 = *(v128 + 176);
      if (v143 >= v144)
      {
        v146 = *(v128 + 160);
        v147 = 0xCCCCCCCCCCCCCCCDLL * ((v143 - v146) >> 3);
        v148 = v147 + 1;
        if (v147 + 1 > 0x666666666666666)
        {
          std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
        }

        v149 = 0xCCCCCCCCCCCCCCCDLL * ((v144 - v146) >> 3);
        if (2 * v149 > v148)
        {
          v148 = 2 * v149;
        }

        if (v149 >= 0x333333333333333)
        {
          v150 = 0x666666666666666;
        }

        else
        {
          v150 = v148;
        }

        if (v150)
        {
          if (v150 <= 0x666666666666666)
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v151 = 40 * v147;
        *v151 = v123;
        *(v151 + 8) = v120;
        *(v151 + 16) = v121;
        *(v151 + 24) = v125;
        *(v151 + 32) = v126;
        *(v151 + 36) = v129;
        v145 = 40 * v147 + 40;
        v152 = *(v128 + 160);
        v153 = *(v128 + 168) - v152;
        v154 = 40 * v147 - v153;
        memcpy((v151 - v153), v152, v153);
        v155 = *(v128 + 160);
        *(v128 + 160) = v154;
        *(v128 + 168) = v145;
        *(v128 + 176) = 0;
        if (v155)
        {
          operator delete(v155);
        }

        v5 = this;
      }

      else
      {
        *v143 = v123;
        *(v143 + 8) = v120;
        *(v143 + 16) = v121;
        *(v143 + 24) = v125;
        *(v143 + 32) = v126;
        v145 = v143 + 40;
        *(v143 + 36) = v129;
      }

      *(v128 + 168) = v145;
      atomic_fetch_add((v128 + 760), 1u);
      v118 += 88;
      if (v118 == v119)
      {
        goto LABEL_274;
      }
    }

    v124 = v118 + 40;
LABEL_560:
    v361 = *(v118 + 63);
    v362 = v361;
    v363 = *(v118 + 40);
    v364 = *(v118 + 48);
    v451.__r_.__value_.__r.__words[2] = 13;
    if ((v361 & 0x80u) != 0)
    {
      v361 = v364;
    }

    if (v362 >= 0)
    {
      v365 = v124;
    }

    else
    {
      v365 = v363;
    }

    v451.__r_.__value_.__l.__size_ = v361;
    v451.__r_.__value_.__r.__words[0] = v365;
    *v454 = &v454[40];
    *&v454[8] = xmmword_1C925F110;
    *&v454[24] = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
    *&v454[32] = 0;
    v459 = &v454[40];
    *__s1 = 1;
    *&__s1[8] = &v451;
    *&__s1[16] = 13;
    std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v454, "parameter wire destination {} not found", 41, __s1);
    std::string::basic_string<std::string_view,0>(v437, v459, *&v454[16]);
    if (v459 != &v454[40])
    {
      operator delete(v459);
    }

    AudioDSPGraph::ThrowException(1852204065, v437, off_1E8335B50);
  }

LABEL_274:
  v156 = a2;
  v158 = *&a2[8].mBytesPerPacket;
  v157 = *&a2[8].mBytesPerFrame;
  if (v158 == v157)
  {
    goto LABEL_325;
  }

  while (2)
  {
    v159 = *v158;
    std::__optional_copy_base<std::vector<unsigned char>,false>::__optional_copy_base[abi:ne200100](__p, (v158 + 2));
    v5 = this;
    if (this[115].i8[1] == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(v454, "graph is configured");
      AudioDSPGraph::ThrowException(1667655457, v454, off_1E8336180);
    }

    v160 = v158[1] == 1;
    *v454 = v159;
    v454[8] = 0;
    v454[32] = 0;
    if (v436 == 1)
    {
      *&v454[8] = *__p;
      *&v454[24] = v435;
      __p[1] = 0;
      v435 = 0;
      __p[0] = 0;
      v454[32] = 1;
    }

    v454[40] = v160;
    v456 = 0;
    v457 = 0;
    __src = 0;
    v161 = this[79];
    if (!*&v161)
    {
      goto LABEL_294;
    }

    v162 = vcnt_s8(v161);
    v162.i16[0] = vaddlv_u8(v162);
    if (v162.u32[0] > 1uLL)
    {
      v163 = v159;
      if (*&v161 <= v159)
      {
        v163 = v159 % v161.i32[0];
      }
    }

    else
    {
      v163 = (v161.i32[0] - 1) & v159;
    }

    v164 = *(*&this[78] + 8 * v163);
    if (!v164 || (v165 = *v164) == 0)
    {
LABEL_294:
      operator new();
    }

    while (2)
    {
      v166 = v165[1];
      if (v166 != v159)
      {
        if (v162.u32[0] > 1uLL)
        {
          if (v166 >= *&v161)
          {
            v166 %= *&v161;
          }
        }

        else
        {
          v166 &= *&v161 - 1;
        }

        if (v166 != v163)
        {
          goto LABEL_294;
        }

        goto LABEL_293;
      }

      if (*(v165 + 4) != v159)
      {
LABEL_293:
        v165 = *v165;
        if (!v165)
        {
          goto LABEL_294;
        }

        continue;
      }

      break;
    }

    *(v165 + 6) = v159;
    std::__optional_storage_base<std::vector<unsigned char>,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::vector<unsigned char>,false> const&>((v165 + 4), &v454[8]);
    *(v165 + 64) = v454[40];
    if (v165 + 3 != v454)
    {
      v167 = v165[9];
      v168 = __src;
      v169 = v456;
      v170 = v456 - __src;
      v171 = v165[11];
      if (v171 - v167 < (v456 - __src))
      {
        if (v167)
        {
          v165[10] = v167;
          operator delete(v167);
          v171 = 0;
          v165[9] = 0;
          v165[10] = 0;
          v165[11] = 0;
        }

        v172 = 0xAAAAAAAAAAAAAAABLL * (v170 >> 3);
        if (v172 <= 0xAAAAAAAAAAAAAAALL)
        {
          v173 = 0xAAAAAAAAAAAAAAABLL * (v171 >> 3);
          if (2 * v173 > v172)
          {
            v172 = 2 * v173;
          }

          if (v173 >= 0x555555555555555)
          {
            v174 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v174 = v172;
          }

          if (v174 <= 0xAAAAAAAAAAAAAAALL)
          {
            std::allocator<AudioDSPGraph::PropertyEndpoint>::allocate_at_least[abi:ne200100](v174);
          }
        }

        std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
      }

      v175 = v157;
      v176 = v165[10];
      v177 = v176 - v167;
      if (v176 - v167 >= v170)
      {
        v157 = v175;
        if (v456 != __src)
        {
          memmove(v165[9], __src, v170 - 4);
        }

        v165[10] = &v167[v170];
      }

      else
      {
        if (v176 != v167)
        {
          memmove(v165[9], __src, v177 - 4);
          v176 = v165[10];
        }

        v178 = v169 - &v168[v177];
        if (v169 != &v168[v177])
        {
          memmove(v176, &v168[v177], v178 - 4);
        }

        v165[10] = &v176[v178];
        v157 = v175;
      }
    }

    if (__src)
    {
      v456 = __src;
      operator delete(__src);
    }

    v156 = a2;
    if (v454[32] == 1 && *&v454[8])
    {
      *&v454[16] = *&v454[8];
      operator delete(*&v454[8]);
    }

    if (v436 == 1 && __p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    v158 += 10;
    if (v158 != v157)
    {
      continue;
    }

    break;
  }

LABEL_325:
  v179 = v156;
  v180 = v156[9].mSampleRate;
  v181 = *&v179[9].mFormatID;
  if (*&v180 != v181)
  {
    while (1)
    {
      v182 = *(*&v180 + 32);
      v183 = *(*&v180 + 40);
      v184 = (*&v180 + 8);
      v185 = std::__hash_table<std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AudioDSPGraph::Box *>>>::find<std::string>(v5 + 117, (*&v180 + 8));
      if (!v185)
      {
        goto LABEL_571;
      }

      v186 = v185[5];
      if (!v186)
      {
        break;
      }

      if (*(v5 + 921) == 1)
      {
        std::string::basic_string[abi:ne200100]<0>(v454, "graph is configured");
        AudioDSPGraph::ThrowException(1667655457, v454, off_1E8336198);
      }

      v187 = std::__hash_table<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>>>::find<unsigned int>(v5 + 78, **&v180);
      if (!v187)
      {
        std::string::basic_string[abi:ne200100]<0>(v454, "connectProperty : inPropertyID not found");
        AudioDSPGraph::ThrowException(1852204065, v454, off_1E83361B0);
      }

      v188 = v187;
      v190 = v187[10];
      v189 = v187[11];
      if (v190 >= v189)
      {
        v192 = v187[9];
        v193 = 0xAAAAAAAAAAAAAAABLL * ((v190 - v192) >> 3);
        v194 = v193 + 1;
        if (v193 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
        }

        v195 = 0xAAAAAAAAAAAAAAABLL * ((v189 - v192) >> 3);
        if (2 * v195 > v194)
        {
          v194 = 2 * v195;
        }

        if (v195 >= 0x555555555555555)
        {
          v196 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v196 = v194;
        }

        if (v196)
        {
          std::allocator<AudioDSPGraph::PropertyEndpoint>::allocate_at_least[abi:ne200100](v196);
        }

        v197 = 24 * v193;
        *v197 = v186;
        *(v197 + 8) = v182;
        *(v197 + 16) = v183;
        v191 = 24 * v193 + 24;
        v198 = v188[9];
        v199 = v188[10] - v198;
        v200 = (24 * v193 - v199);
        memcpy(v200, v198, v199);
        v201 = v188[9];
        v188[9] = v200;
        v188[10] = v191;
        v188[11] = 0;
        if (v201)
        {
          operator delete(v201);
        }

        v5 = this;
      }

      else
      {
        *v190 = v186;
        *(v190 + 8) = v182;
        v191 = v190 + 24;
        *(v190 + 16) = v183;
      }

      v188[10] = v191;
      *&v180 += 48;
      if (*&v180 == v181)
      {
        goto LABEL_344;
      }
    }

    v184 = (*&v180 + 8);
LABEL_571:
    AudioDSPGraph::stringFromFourCharCode<unsigned int>(&v450, **&v180);
    std::make_format_args[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>,std::string,std::string const>(&v451, &v450, v184);
    *v454 = &v454[40];
    *&v454[8] = xmmword_1C925F110;
    *&v454[24] = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
    *&v454[32] = 0;
    v459 = &v454[40];
    *__s1 = 2;
    *&__s1[8] = &v451;
    *&__s1[16] = __s.__r_.__value_.__l.__size_;
    std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v454, "property connection {} box {} not found", 41, __s1);
    std::string::basic_string<std::string_view,0>(v433, v459, *&v454[16]);
    if (v459 != &v454[40])
    {
      operator delete(v459);
    }

    AudioDSPGraph::ThrowException(1852204065, v433, off_1E8335B68);
  }

LABEL_344:
  v202 = a2;
  v203 = *&a2[9].mBytesPerFrame;
  for (n = *&a2[9].mBitsPerChannel; v203 != n; v203 += 88)
  {
    v204 = *(v203 + 3);
    v205 = *(v203 + 8);
    v206 = std::__hash_table<std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AudioDSPGraph::Box *>>>::find<std::string>(v5 + 117, v203);
    if (!v206 || (v207 = v206[5]) == 0)
    {
      v341 = v203[23];
      v342 = v341;
      v343 = *v203;
      v344 = *(v203 + 1);
      v451.__r_.__value_.__r.__words[2] = 13;
      if ((v341 & 0x80u) != 0)
      {
        v341 = v344;
      }

      if (v342 >= 0)
      {
        v345 = v203;
      }

      else
      {
        v345 = v343;
      }

      v451.__r_.__value_.__l.__size_ = v341;
      v451.__r_.__value_.__r.__words[0] = v345;
      *v454 = &v454[40];
      *&v454[8] = xmmword_1C925F110;
      *&v454[24] = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
      *&v454[32] = 0;
      v459 = &v454[40];
      *__s1 = 1;
      *&__s1[8] = &v451;
      *&__s1[16] = 13;
      std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v454, "property wire source box {} not found", 39, __s1);
      std::string::basic_string<std::string_view,0>(v432, v459, *&v454[16]);
      if (v459 != &v454[40])
      {
        operator delete(v459);
      }

      AudioDSPGraph::ThrowException(1852204065, v432, off_1E8335B80);
    }

    v208 = *(v203 + 8);
    v209 = *(v203 + 18);
    v210 = std::__hash_table<std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AudioDSPGraph::Box *>>>::find<std::string>(v5 + 117, v203 + 5);
    if (!v210 || (v211 = v210[5]) == 0)
    {
      v346 = v203[63];
      v347 = v346;
      v348 = *(v203 + 5);
      v349 = *(v203 + 6);
      v451.__r_.__value_.__r.__words[2] = 13;
      if ((v346 & 0x80u) != 0)
      {
        v346 = v349;
      }

      if (v347 >= 0)
      {
        v350 = (v203 + 40);
      }

      else
      {
        v350 = v348;
      }

      v451.__r_.__value_.__l.__size_ = v346;
      v451.__r_.__value_.__r.__words[0] = v350;
      *v454 = &v454[40];
      *&v454[8] = xmmword_1C925F110;
      *&v454[24] = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
      *&v454[32] = 0;
      v459 = &v454[40];
      *__s1 = 1;
      *&__s1[8] = &v451;
      *&__s1[16] = 13;
      std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v454, "property wire destination {} not found", 40, __s1);
      std::string::basic_string<std::string_view,0>(v431, v459, *&v454[16]);
      if (v459 != &v454[40])
      {
        operator delete(v459);
      }

      AudioDSPGraph::ThrowException(1852204065, v431, off_1E8335B98);
    }

    if (*(v5 + 921) == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(v454, "graph is configured");
      AudioDSPGraph::ThrowException(1667655457, v454, off_1E8335F28);
    }

    v212 = v203[80];
    v213 = *(v5 + 71);
    v214 = *(v5 + 72);
    if (v213 >= v214)
    {
      v216 = *(v5 + 70);
      v217 = v213 - v216;
      v218 = 0x6DB6DB6DB6DB6DB7 * ((v213 - v216) >> 3);
      v219 = v218 + 1;
      if ((v218 + 1) > 0x492492492492492)
      {
        std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
      }

      v220 = 0x6DB6DB6DB6DB6DB7 * ((v214 - v216) >> 3);
      if (2 * v220 > v219)
      {
        v219 = 2 * v220;
      }

      if (v220 >= 0x249249249249249)
      {
        v221 = 0x492492492492492;
      }

      else
      {
        v221 = v219;
      }

      if (v221)
      {
        if (v221 <= 0x492492492492492)
        {
          v222 = v203[80];
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v223 = 56 * v218;
      *v223 = v207;
      *(v223 + 8) = v204;
      v419 = v205;
      *(v223 + 16) = v205;
      *(v223 + 24) = v211;
      *(v223 + 32) = v208;
      *(v223 + 40) = v209;
      v224 = v212;
      *(v223 + 48) = v212;
      v215 = 56 * v218 + 56;
      v225 = 56 * v218 - v217;
      memcpy((v223 - v217), v216, v217);
      *(v5 + 70) = v225;
      *(v5 + 71) = v215;
      *(v5 + 72) = 0;
      if (v216)
      {
        operator delete(v216);
      }

      v212 = v224;
      v5 = this;
      v205 = v419;
    }

    else
    {
      *v213 = v207;
      *(v213 + 8) = v204;
      *(v213 + 16) = v205;
      *(v213 + 24) = v211;
      *(v213 + 32) = v208;
      *(v213 + 40) = v209;
      v215 = v213 + 56;
      *(v213 + 48) = v212;
    }

    *(v5 + 71) = v215;
    v227 = *(v211 + 192);
    v226 = *(v211 + 200);
    if (v227 >= v226)
    {
      v229 = *(v211 + 184);
      v230 = (v227 - v229) >> 6;
      if ((v230 + 1) >> 58)
      {
        std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
      }

      v231 = v226 - v229;
      v232 = v231 >> 5;
      if (v231 >> 5 <= (v230 + 1))
      {
        v232 = v230 + 1;
      }

      if (v231 >= 0x7FFFFFFFFFFFFFC0)
      {
        v233 = 0x3FFFFFFFFFFFFFFLL;
      }

      else
      {
        v233 = v232;
      }

      *&v454[32] = v211 + 184;
      if (v233)
      {
        if (!(v233 >> 58))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v234 = v230 << 6;
      *v454 = 0;
      *&v454[8] = v234;
      *&v454[16] = v230 << 6;
      *&v454[24] = 0;
      *v234 = v207;
      *(v234 + 8) = v204;
      *(v234 + 16) = v205;
      *(v234 + 24) = v208;
      *(v234 + 32) = v209;
      *(v234 + 36) = v212;
      *(v234 + 48) = 0;
      *(v234 + 56) = 0;
      *(v234 + 40) = 0;
      std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>((v230 << 6) + 40, 0, 0, 0);
      *&v454[16] += 64;
      v236 = *(v211 + 184);
      v235 = *(v211 + 192);
      v237 = *&v454[8] + v236 - v235;
      v202 = a2;
      v5 = this;
      if (v236 != v235)
      {
        v238 = *(v211 + 184);
        v239 = *&v454[8] + v236 - v235;
        do
        {
          v240 = *v238;
          v241 = v238[1];
          *(v239 + 29) = *(v238 + 29);
          *v239 = v240;
          *(v239 + 16) = v241;
          *(v239 + 48) = 0;
          *(v239 + 56) = 0;
          *(v239 + 40) = 0;
          *(v239 + 40) = *(v238 + 40);
          *(v239 + 56) = *(v238 + 7);
          *(v238 + 5) = 0;
          *(v238 + 6) = 0;
          *(v238 + 7) = 0;
          v238 += 4;
          v239 += 64;
        }

        while (v238 != v235);
        do
        {
          v242 = *(v236 + 40);
          if (v242)
          {
            *(v236 + 48) = v242;
            operator delete(v242);
          }

          v236 += 64;
        }

        while (v236 != v235);
      }

      v243 = *(v211 + 184);
      *(v211 + 184) = v237;
      v244 = *(v211 + 200);
      v420 = *&v454[16];
      *(v211 + 192) = *&v454[16];
      *&v454[16] = v243;
      *&v454[24] = v244;
      *&v454[8] = v243;
      *v454 = v243;
      std::__split_buffer<AudioDSPGraph::PropertyTap>::~__split_buffer(v454);
      v228 = v420;
    }

    else
    {
      *v227 = v207;
      *(v227 + 8) = v204;
      *(v227 + 16) = v205;
      *(v227 + 24) = v208;
      *(v227 + 32) = v209;
      *(v227 + 36) = v212;
      *(v227 + 48) = 0;
      *(v227 + 56) = 0;
      *(v227 + 40) = 0;
      std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v227 + 40, 0, 0, 0);
      v228 = v227 + 64;
      *(v211 + 192) = v227 + 64;
      v202 = a2;
    }

    *(v211 + 192) = v228;
    atomic_fetch_add((v211 + 760), 1u);
  }

  v245 = v202[2].mSampleRate;
  v246 = *&v202[2].mFormatID;
  if (*&v245 != v246)
  {
    v247 = *&v245 + 24;
    do
    {
      if (*(v247 + 24) == 1)
      {
        v248 = std::__hash_table<std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AudioDSPGraph::Box *>>>::find<std::string>(v5 + 117, (v247 - 24));
        if (!v248 || (v249 = v248[5]) == 0)
        {
          v382 = *(v247 - 1);
          v383 = v382;
          v384 = *(v247 - 24);
          v385 = *(v247 - 16);
          v451.__r_.__value_.__r.__words[2] = 13;
          if ((v382 & 0x80u) != 0)
          {
            v382 = v385;
          }

          if (v383 >= 0)
          {
            v386 = v247 - 24;
          }

          else
          {
            v386 = v384;
          }

          v451.__r_.__value_.__l.__size_ = v382;
          v451.__r_.__value_.__r.__words[0] = v386;
          *v454 = &v454[40];
          *&v454[8] = xmmword_1C925F110;
          *&v454[24] = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
          *&v454[32] = 0;
          v459 = &v454[40];
          *__s1 = 1;
          *&__s1[8] = &v451;
          *&__s1[16] = 13;
          std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v454, "ordering constraint before box {} not found", 45, __s1);
          std::string::basic_string<std::string_view,0>(v430, v459, *&v454[16]);
          if (v459 != &v454[40])
          {
            operator delete(v459);
          }

          AudioDSPGraph::ThrowException(1852204065, v430, off_1E8335BB0);
        }

        v250 = std::__hash_table<std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AudioDSPGraph::Box *>>>::find<std::string>(v5 + 117, v247);
        if (!v250 || (v251 = v250[5]) == 0)
        {
          v387 = *(v247 + 23);
          v388 = v387;
          v389 = *v247;
          v390 = *(v247 + 8);
          v451.__r_.__value_.__r.__words[2] = 13;
          if ((v387 & 0x80u) != 0)
          {
            v387 = v390;
          }

          if (v388 >= 0)
          {
            v391 = v247;
          }

          else
          {
            v391 = v389;
          }

          v451.__r_.__value_.__l.__size_ = v387;
          v451.__r_.__value_.__r.__words[0] = v391;
          *v454 = &v454[40];
          *&v454[8] = xmmword_1C925F110;
          *&v454[24] = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
          *&v454[32] = 0;
          v459 = &v454[40];
          *__s1 = 1;
          *&__s1[8] = &v451;
          *&__s1[16] = 13;
          std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v454, "ordering constraint after box {} not found", 44, __s1);
          std::string::basic_string<std::string_view,0>(v429, v459, *&v454[16]);
          if (v459 != &v454[40])
          {
            operator delete(v459);
          }

          AudioDSPGraph::ThrowException(1852204065, v429, off_1E8335BC8);
        }

        if (*(v5 + 921) == 1)
        {
          std::string::basic_string[abi:ne200100]<0>(v454, "graph is configured");
          AudioDSPGraph::ThrowException(1667655457, v454, off_1E8335F40);
        }

        *v454 = v250[5];
        std::__hash_table<AudioDSPGraph::Box *,std::hash<AudioDSPGraph::Box *>,std::equal_to<AudioDSPGraph::Box *>,std::allocator<AudioDSPGraph::Box *>>::__emplace_unique_key_args<AudioDSPGraph::Box *,AudioDSPGraph::Box * const&>((v249 + 120), v251);
        v5 = this;
      }

      v252 = v247 + 32;
      v247 += 56;
    }

    while (v252 != v246);
  }

  v253 = *&a2[10].mFormatID;
  v254 = *&a2[10].mBytesPerPacket;
  if (v253 != v254)
  {
    while (1)
    {
      data = *v253;
      v257 = (v253 + 32);
      v256 = *(v253 + 32);
      v258 = (v253 + 8);
      LODWORD(v449.__r_.__value_.__l.__data_) = *v253;
      if (v256 >> 15 == 49898)
      {
        break;
      }

      if (v256 == 1634626682 && *(v253 + 36) == 1952805748)
      {
        if ((*(v253 + 31) & 0x80000000) == 0)
        {
          v263 = *v258;
          *&v454[16] = *(v253 + 24);
          *v454 = v263;
          v264 = *(v253 + 48);
          *&v454[24] = *v257;
          *&v454[40] = v264;
          *__s1 = data;
          goto LABEL_414;
        }

        std::string::__init_copy_ctor_external(v454, *(v253 + 8), *(v253 + 16));
        v270 = *(v253 + 31);
        v271 = *(v253 + 48);
        *&v454[24] = *v257;
        *&v454[40] = v271;
        *__s1 = v449.__r_.__value_.__l.__data_;
        if (v270 < 0)
        {
          std::string::__init_copy_ctor_external(&__s1[8], *(v253 + 8), *(v253 + 16));
        }

        else
        {
LABEL_414:
          *&__s1[8] = *v258;
          *&__s1[24] = *(v253 + 24);
        }

        p_src = 0;
        operator new();
      }

      if (*(v253 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(v454, *(v253 + 8), *(v253 + 16));
        data = v449.__r_.__value_.__l.__data_;
        v5 = this;
      }

      else
      {
        v262 = *v258;
        *&v454[16] = *(v253 + 24);
        *v454 = v262;
      }

      v267 = *v257;
      *&v454[40] = *(v253 + 48);
      *&v454[24] = v267;
      __src = &unk_1F48D0E28;
      p_src = &__src;
      v450.__r_.__value_.__r.__words[0] = &v449;
      v268 = std::__hash_table<std::__hash_value_type<unsigned int,AudioDSPGraph::AnalyzerBuilder::Info>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,AudioDSPGraph::AnalyzerBuilder::Info>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,AudioDSPGraph::AnalyzerBuilder::Info>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,AudioDSPGraph::AnalyzerBuilder::Info>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v5 + 31, data);
      v269 = v268;
      if (*(v268 + 47) < 0)
      {
        operator delete(v268[3]);
      }

      *(v269 + 3) = *v454;
      v269[5] = *&v454[16];
      v454[23] = 0;
      v454[0] = 0;
      *(v269 + 3) = *&v454[24];
      *(v269 + 16) = *&v454[40];
      std::__function::__value_func<std::unique_ptr<AudioDSPGraph::Analyzer> ()(void)>::operator=[abi:ne200100]((v269 + 9), &__src);
      std::__function::__value_func<std::unique_ptr<AudioDSPGraph::Analyzer> ()(void)>::~__value_func[abi:ne200100](&__src);
      if ((v454[23] & 0x80000000) != 0)
      {
        operator delete(*v454);
      }

      v253 += 56;
      if (v253 == v254)
      {
        goto LABEL_420;
      }
    }

    if ((*(v253 + 31) & 0x80000000) == 0)
    {
      v259 = *v258;
      *&v454[16] = *(v253 + 24);
      *v454 = v259;
      v260 = *v257;
      *&v454[40] = *(v253 + 48);
      *&v454[24] = v260;
      LODWORD(v451.__r_.__value_.__l.__data_) = data;
      *(v451.__r_.__value_.__r.__words + 4) = *v257;
      HIDWORD(v451.__r_.__value_.__r.__words[2]) = *(v253 + 48);
      goto LABEL_406;
    }

    std::string::__init_copy_ctor_external(v454, *(v253 + 8), *(v253 + 16));
    v265 = *(v253 + 31);
    v266 = *v257;
    *&v454[40] = *(v253 + 48);
    *&v454[24] = v266;
    LODWORD(v451.__r_.__value_.__l.__data_) = v449.__r_.__value_.__l.__data_;
    *(v451.__r_.__value_.__r.__words + 4) = *v257;
    HIDWORD(v451.__r_.__value_.__r.__words[2]) = *(v253 + 48);
    if (v265 < 0)
    {
      std::string::__init_copy_ctor_external(&__s, *(v253 + 8), *(v253 + 16));
    }

    else
    {
LABEL_406:
      *&__s.__r_.__value_.__l.__data_ = *v258;
      __s.__r_.__value_.__r.__words[2] = *(v253 + 24);
    }

    p_src = 0;
    operator new();
  }

LABEL_420:
  v272 = *&a2[10].mBitsPerChannel;
  v273 = *&a2[11].mSampleRate;
  if (v272 == v273)
  {
    goto LABEL_497;
  }

  while (2)
  {
    v274 = std::__hash_table<std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AudioDSPGraph::Box *>>>::find<std::string>(v5 + 117, v272 + 1);
    if (!v274 || (v275 = v274[5]) == 0)
    {
      std::string::basic_string[abi:ne200100]<0>(v428, "analysis box not found");
      AudioDSPGraph::ThrowException(1852204065, v428, off_1E8335BE0);
    }

    v276 = *v272;
    v277 = v272[8];
    std::mutex::lock((v275 + 256));
    for (ii = *(v275 + 320); ii != *(v275 + 328); ii += 8)
    {
      if (*(*ii + 24) == v276 && *(*ii + 80) == v277)
      {
        goto LABEL_496;
      }
    }

    v279 = *(v275 + 16);
    v280 = v279[32];
    if (!*&v280)
    {
      goto LABEL_510;
    }

    v281 = vcnt_s8(v280);
    v281.i16[0] = vaddlv_u8(v281);
    if (v281.u32[0] > 1uLL)
    {
      v282 = v276;
      if (*&v280 <= v276)
      {
        v282 = v276 % v280.i32[0];
      }
    }

    else
    {
      v282 = (v280.i32[0] - 1) & v276;
    }

    v283 = *(*&v279[31] + 8 * v282);
    if (!v283 || (v284 = *v283) == 0)
    {
LABEL_510:
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    while (2)
    {
      v285 = v284[1];
      if (v285 != v276)
      {
        if (v281.u32[0] > 1uLL)
        {
          if (v285 >= *&v280)
          {
            v285 %= *&v280;
          }
        }

        else
        {
          v285 &= *&v280 - 1;
        }

        if (v285 != v282)
        {
          goto LABEL_510;
        }

        goto LABEL_443;
      }

      if (*(v284 + 4) != v276)
      {
LABEL_443:
        v284 = *v284;
        if (!v284)
        {
          goto LABEL_510;
        }

        continue;
      }

      break;
    }

    v286 = v284[12];
    if (!v286)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v287 = (*(*v286 + 48))(&v451);
    v288 = v451.__r_.__value_.__r.__words[0];
    if (!v451.__r_.__value_.__r.__words[0])
    {
      std::string::basic_string[abi:ne200100]<0>(v454, "Box::addAnalyzer, Analyzer Not Supported.");
      AudioDSPGraph::ThrowException(1852204065, v454, off_1E8334B30);
    }

    *(v451.__r_.__value_.__r.__words[0] + 80) = v277;
    *(v288 + 88) = AudioDSPGraph::Graph::generateSerialNumber(v287);
    v289 = *(v275 + 16);
    v290 = v451.__r_.__value_.__r.__words[0];
    std::mutex::lock((v289 + 176));
    v291 = 0x9DDFEA08EB382D69 * ((8 * (v290 & 0x1FFFFFFF) + 8) ^ HIDWORD(v290));
    v292 = 0x9DDFEA08EB382D69 * (HIDWORD(v290) ^ (v291 >> 47) ^ v291);
    v293 = 0x9DDFEA08EB382D69 * (v292 ^ (v292 >> 47));
    v294 = *(v289 + 104);
    if (!*&v294)
    {
      goto LABEL_463;
    }

    v295 = vcnt_s8(v294);
    v295.i16[0] = vaddlv_u8(v295);
    if (v295.u32[0] > 1uLL)
    {
      v296 = 0x9DDFEA08EB382D69 * (v292 ^ (v292 >> 47));
      if (v293 >= *&v294)
      {
        v296 = v293 % *&v294;
      }
    }

    else
    {
      v296 = v293 & (*&v294 - 1);
    }

    v297 = *(*(v289 + 96) + 8 * v296);
    if (!v297 || (v298 = *v297) == 0)
    {
LABEL_463:
      operator new();
    }

    while (2)
    {
      v299 = v298[1];
      if (v299 != v293)
      {
        if (v295.u32[0] > 1uLL)
        {
          if (v299 >= *&v294)
          {
            v299 %= *&v294;
          }
        }

        else
        {
          v299 &= *&v294 - 1;
        }

        if (v299 != v296)
        {
          goto LABEL_463;
        }

LABEL_462:
        v298 = *v298;
        if (!v298)
        {
          goto LABEL_463;
        }

        continue;
      }

      break;
    }

    if (v298[2] != v290)
    {
      goto LABEL_462;
    }

    v300 = *(v290 + 88);
    v301 = *(v289 + 144);
    if (!*&v301)
    {
      goto LABEL_480;
    }

    v302 = vcnt_s8(v301);
    v302.i16[0] = vaddlv_u8(v302);
    if (v302.u32[0] > 1uLL)
    {
      v303 = *(v290 + 88);
      if (v300 >= *&v301)
      {
        v303 = v300 % *&v301;
      }
    }

    else
    {
      v303 = (*&v301 - 1) & v300;
    }

    v304 = *(*(v289 + 136) + 8 * v303);
    if (!v304 || (v305 = *v304) == 0)
    {
LABEL_480:
      operator new();
    }

    while (2)
    {
      v306 = v305[1];
      if (v306 != v300)
      {
        if (v302.u32[0] > 1uLL)
        {
          if (v306 >= *&v301)
          {
            v306 %= *&v301;
          }
        }

        else
        {
          v306 &= *&v301 - 1;
        }

        if (v306 != v303)
        {
          goto LABEL_480;
        }

LABEL_479:
        v305 = *v305;
        if (!v305)
        {
          goto LABEL_480;
        }

        continue;
      }

      break;
    }

    if (v305[2] != v300)
    {
      goto LABEL_479;
    }

    std::mutex::unlock((v289 + 176));
    v308 = *(v275 + 328);
    v307 = *(v275 + 336);
    if (v308 >= v307)
    {
      v311 = *(v275 + 320);
      v312 = v308 - v311;
      v313 = (v308 - v311) >> 3;
      v314 = v313 + 1;
      if ((v313 + 1) >> 61)
      {
        std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
      }

      v315 = v307 - v311;
      if (v315 >> 2 > v314)
      {
        v314 = v315 >> 2;
      }

      if (v315 >= 0x7FFFFFFFFFFFFFF8)
      {
        v316 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v316 = v314;
      }

      if (v316)
      {
        if (!(v316 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v317 = v313;
      v318 = (8 * v313);
      v319 = v451.__r_.__value_.__r.__words[0];
      v451.__r_.__value_.__r.__words[0] = 0;
      v320 = &v318[-v317];
      *v318 = v319;
      v310 = v318 + 1;
      memcpy(v320, v311, v312);
      v321 = *(v275 + 320);
      *(v275 + 320) = v320;
      *(v275 + 328) = v310;
      *(v275 + 336) = 0;
      if (v321)
      {
        operator delete(v321);
      }
    }

    else
    {
      v309 = v451.__r_.__value_.__r.__words[0];
      v451.__r_.__value_.__r.__words[0] = 0;
      *v308 = v309;
      v310 = v308 + 8;
    }

    *(v275 + 328) = v310;
    atomic_fetch_add((v275 + 760), 1u);
    v322 = v451.__r_.__value_.__r.__words[0];
    v451.__r_.__value_.__r.__words[0] = 0;
    if (v322)
    {
      (*(*v322 + 8))(v322);
    }

LABEL_496:
    std::mutex::unlock((v275 + 256));
    v272 += 10;
    v5 = this;
    if (v272 != v273)
    {
      continue;
    }

    break;
  }

LABEL_497:
  v323 = *&a2[11].mBytesPerPacket;
  v324 = *&a2[11].mBytesPerFrame;
  if (v323 != v324)
  {
    while (1)
    {
      v325 = v323 + 24;
      v326 = std::__hash_table<std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AudioDSPGraph::Box *>>>::find<std::string>(v5 + 117, (v323 + 24));
      if (!v326)
      {
        goto LABEL_621;
      }

      v327 = v326[5];
      if (!v327)
      {
        break;
      }

      v328 = v323;
      if (*(v323 + 23) < 0)
      {
        v328 = *v323;
      }

      (*(*v327 + 144))(v327, v328, *(v323 + 48), *(v323 + 52));
      v323 += 56;
      v5 = this;
      if (v323 == v324)
      {
        goto LABEL_503;
      }
    }

    v325 = v323 + 24;
LABEL_621:
    v392 = *(v323 + 47);
    v393 = v392;
    v394 = *(v323 + 24);
    v395 = *(v323 + 32);
    v451.__r_.__value_.__r.__words[2] = 13;
    if ((v392 & 0x80u) != 0)
    {
      v392 = v395;
    }

    if (v393 >= 0)
    {
      v396 = v325;
    }

    else
    {
      v396 = v394;
    }

    v451.__r_.__value_.__l.__size_ = v392;
    v451.__r_.__value_.__r.__words[0] = v396;
    *v454 = &v454[40];
    *&v454[8] = xmmword_1C925F110;
    *&v454[24] = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
    *&v454[32] = 0;
    v459 = &v454[40];
    *__s1 = 1;
    *&__s1[8] = &v451;
    *&__s1[16] = 13;
    std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v454, "inject box {} not found", 25, __s1);
    std::string::basic_string<std::string_view,0>(v427, v459, *&v454[16]);
    if (v459 != &v454[40])
    {
      operator delete(v459);
    }

    AudioDSPGraph::ThrowException(1852204065, v427, off_1E8335BF8);
  }

LABEL_503:
  v329 = *&a2[12].mSampleRate;
  v330 = *&a2[12].mFormatID;
  if (v329 != v330)
  {
    while (1)
    {
      v331 = v329 + 24;
      v332 = std::__hash_table<std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AudioDSPGraph::Box *>>>::find<std::string>(v5 + 117, v329 + 3);
      if (!v332)
      {
        goto LABEL_630;
      }

      v333 = v332[5];
      if (!v333)
      {
        break;
      }

      v334 = v329;
      if (v329[23] < 0)
      {
        v334 = *v329;
      }

      (*(*v333 + 160))(v333, v334, *(v329 + 12), 1, (BYTE1(a2[1].mFormatID) >> 3) & 1, 4130);
      v329 += 56;
      v5 = this;
      if (v329 == v330)
      {
        goto LABEL_509;
      }
    }

    v331 = v329 + 24;
LABEL_630:
    v397 = v329[47];
    v398 = v397;
    v399 = *(v329 + 3);
    v400 = *(v329 + 4);
    v451.__r_.__value_.__r.__words[2] = 13;
    if ((v397 & 0x80u) != 0)
    {
      v397 = v400;
    }

    if (v398 >= 0)
    {
      v401 = v331;
    }

    else
    {
      v401 = v399;
    }

    v451.__r_.__value_.__l.__size_ = v397;
    v451.__r_.__value_.__r.__words[0] = v401;
    *v454 = &v454[40];
    *&v454[8] = xmmword_1C925F110;
    *&v454[24] = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
    *&v454[32] = 0;
    v459 = &v454[40];
    *__s1 = 1;
    *&__s1[8] = &v451;
    *&__s1[16] = 13;
    std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v454, "record box {} not found", 25, __s1);
    std::string::basic_string<std::string_view,0>(v426, v459, *&v454[16]);
    if (v459 != &v454[40])
    {
      operator delete(v459);
    }

    AudioDSPGraph::ThrowException(1852204065, v426, off_1E8335C10);
  }

LABEL_509:
  v335 = *MEMORY[0x1E69E9840];
}

void sub_1C922AD64(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x337]) < 0)
  {
    v1 = STACK[0x320];
    JUMPOUT(0x1C922B468);
  }

  _Unwind_Resume(a1);
}

void sub_1C922B1A8()
{
  if (SLOBYTE(STACK[0x237]) < 0)
  {
    v0 = STACK[0x220];
    JUMPOUT(0x1C922B468);
  }

  JUMPOUT(0x1C922B48CLL);
}

void sub_1C922B1BC()
{
  if (SLOBYTE(STACK[0x267]) < 0)
  {
    v0 = STACK[0x250];
    JUMPOUT(0x1C922B468);
  }

  JUMPOUT(0x1C922B48CLL);
}

void sub_1C922B1D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (SLOBYTE(STACK[0x24F]) < 0)
  {
    operator delete(STACK[0x238]);
  }

  if (a70 < 0)
  {
    operator delete(a65);
  }

  if (SLOBYTE(STACK[0x2E7]) < 0)
  {
    operator delete(STACK[0x2D0]);
  }

  JUMPOUT(0x1C922B198);
}

void sub_1C922B208()
{
  if (SLOBYTE(STACK[0x2E7]) < 0)
  {
    v0 = STACK[0x2D0];
    JUMPOUT(0x1C922B468);
  }

  JUMPOUT(0x1C922B48CLL);
}

void sub_1C922B244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    JUMPOUT(0x1C922B468);
  }

  JUMPOUT(0x1C922B48CLL);
}

void sub_1C922B278(_Unwind_Exception *a1)
{
  if (STACK[0x448] != v1)
  {
    operator delete(STACK[0x448]);
  }

  if (SLOBYTE(STACK[0x2CF]) < 0)
  {
    v3 = STACK[0x2B8];
    JUMPOUT(0x1C922B468);
  }

  _Unwind_Resume(a1);
}

void sub_1C922B29C()
{
  if (SLOBYTE(STACK[0x337]) < 0)
  {
    operator delete(STACK[0x320]);
  }

  MEMORY[0x1CCA84AE0](v1, v0);
  JUMPOUT(0x1C922B48CLL);
}

void sub_1C922B2C8(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x337]) < 0)
  {
    operator delete(STACK[0x320]);
  }

  if (SLOBYTE(STACK[0x2CF]) < 0)
  {
    operator delete(STACK[0x2B8]);
  }

  if (SLOBYTE(STACK[0x2E7]) < 0)
  {
    v2 = STACK[0x2D0];
    JUMPOUT(0x1C922B468);
  }

  _Unwind_Resume(a1);
}

void sub_1C922B364(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t __dst)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    v64 = *(v62 + 87);
    v65 = v64;
    v66 = *(v62 + 64);
    v67 = *(v62 + 72);
    STACK[0x2E0] = 13;
    if ((v64 & 0x80u) != 0)
    {
      v64 = v67;
    }

    if (v65 >= 0)
    {
      v68 = v63;
    }

    else
    {
      v68 = v66;
    }

    STACK[0x2D8] = v64;
    STACK[0x2D0] = v68;
    STACK[0x320] = &STACK[0x348];
    *&STACK[0x328] = xmmword_1C925F110;
    STACK[0x338] = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
    STACK[0x340] = 0;
    STACK[0x448] = &STACK[0x348];
    STACK[0x2B8] = 1;
    STACK[0x2C0] = &STACK[0x2D0];
    STACK[0x2C8] = 13;
    std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&STACK[0x320], "format {} not found", 21, &STACK[0x2B8]);
    std::string::basic_string<std::string_view,0>(&__dst, STACK[0x448], STACK[0x330]);
    if (STACK[0x448] != &STACK[0x348])
    {
      operator delete(STACK[0x448]);
    }

    AudioDSPGraph::ThrowException(1852204065, &__dst, off_1E8335AF0);
  }

  _Unwind_Resume(a1);
}

void sub_1C922B43C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a67 < 0)
  {
    JUMPOUT(0x1C922B44CLL);
  }

  _Unwind_Resume(a1);
}

void sub_1C922B458(_Unwind_Exception *a1)
{
  if (STACK[0x448] != v1)
  {
    operator delete(STACK[0x448]);
  }

  _Unwind_Resume(a1);
}

uint64_t AudioDSPGraph::Graph::getSubset(uint64_t *a1, uint64_t *a2, const void **a3)
{
  v4 = a1;
  if (a1 != a2)
  {
    v5 = *(a3 + 23);
    if (v5 >= 0)
    {
      v6 = *(a3 + 23);
    }

    else
    {
      v6 = a3[1];
    }

    if (v5 >= 0)
    {
      v7 = a3;
    }

    else
    {
      v7 = *a3;
    }

    while (1)
    {
      v8 = *v4;
      v9 = *(*v4 + 31);
      v10 = v9;
      if ((v9 & 0x80u) != 0)
      {
        v9 = *(*v4 + 16);
      }

      if (v6 == v9)
      {
        v13 = *(v8 + 8);
        v11 = v8 + 8;
        v12 = v13;
        v14 = (v10 >= 0 ? v11 : v12);
        if (!memcmp(v7, v14, v6))
        {
          break;
        }
      }

      if (++v4 == a2)
      {
        return 0;
      }
    }
  }

  if (v4 == a2)
  {
    return 0;
  }

  else
  {
    return *v4;
  }
}

uint64_t AudioDSPGraph::Graph::addBox(uint64_t result, uint64_t a2)
{
  v3 = a2;
  v2 = (result + 32);
  do
  {
    v2 = *v2;
    if (!v2)
    {
      operator new();
    }
  }

  while (v2[2] != a2);
  return result;
}

void sub_1C922C214(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<AudioDSPGraph::IR::WireConfigurationAlias,AudioDSPGraph::IR::WireConfiguration>,void *>>>::operator()[abi:ne200100](1, v14);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__format::__create_packed_storage[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>,std::string const,unsigned int const,std::string const,unsigned int const>(void *result, void *a2, uint64_t *a3, unsigned int *a4, uint64_t *a5, unsigned int *a6)
{
  v6 = *(a3 + 23);
  v7 = v6;
  v8 = *a3;
  v9 = a3[1];
  *result = 13;
  if ((v6 & 0x80u) != 0)
  {
    v6 = v9;
  }

  if (v7 >= 0)
  {
    v10 = a3;
  }

  else
  {
    v10 = v8;
  }

  *a2 = v10;
  a2[1] = v6;
  v11 = *a4;
  *result |= 0xC0uLL;
  a2[2] = v11;
  a2[3] = 0;
  v12 = *(a5 + 23);
  v13 = v12;
  v14 = *a5;
  v15 = a5[1];
  *result |= 0x3400uLL;
  if ((v12 & 0x80u) != 0)
  {
    v12 = v15;
  }

  if (v13 >= 0)
  {
    v16 = a5;
  }

  else
  {
    v16 = v14;
  }

  a2[4] = v16;
  a2[5] = v12;
  v17 = *a6;
  *result |= 0x30000uLL;
  a2[6] = v17;
  a2[7] = 0;
  return result;
}

void *std::__hash_table<std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AudioDSPGraph::Box *>>>::find<std::string>(void *a1, void *a2)
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
        if (AudioDSPGraph::IR::BoxAlias::operator==(v11 + 2, a2))
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

void *std::make_format_args[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>,std::string,std::string const>(void *result, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  *result = v5;
  result[1] = v3;
  v6 = *(a3 + 23);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = a3[1];
  }

  if (v7 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  result[3] = v6;
  result[4] = 429;
  result[2] = v8;
  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,AudioDSPGraph::AnalyzerBuilder::Info>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,AudioDSPGraph::AnalyzerBuilder::Info>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,AudioDSPGraph::AnalyzerBuilder::Info>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,AudioDSPGraph::AnalyzerBuilder::Info>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(void *a1, unsigned int a2)
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

void sub_1C922C85C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,AudioDSPGraph::AnalyzerBuilder::Info>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,AudioDSPGraph::AnalyzerBuilder::Info>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<std::unique_ptr<AudioDSPGraph::Analyzer> ()(void)>::operator=[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v4 == a1)
  {
    (*(*v4 + 32))(v4);
  }

  else if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  v5 = *(a2 + 24);
  if (v5)
  {
    if (v5 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v5;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void AudioDSPGraph::AnalyzerBuilder::Info::~Info(void **this)
{
  std::__function::__value_func<std::unique_ptr<AudioDSPGraph::Analyzer> ()(void)>::~__value_func[abi:ne200100]((this + 6));
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void std::__function::__func<AudioDSPGraph::AnalyzerBuilder::registerAnalyzer(unsigned int,std::string const&,AudioComponentDescription const&)::{lambda(void)#2},std::allocator<AudioDSPGraph::AnalyzerBuilder::registerAnalyzer(unsigned int,std::string const&,AudioComponentDescription const&)::{lambda(void)#2}>,std::unique_ptr<AudioDSPGraph::Analyzer> ()(void)>::destroy_deallocate(void **__p)
{
  if (*(__p + 39) < 0)
  {
    operator delete(__p[2]);
  }

  operator delete(__p);
}

void std::__function::__func<AudioDSPGraph::AnalyzerBuilder::registerAnalyzer(unsigned int,std::string const&,AudioComponentDescription const&)::{lambda(void)#2},std::allocator<AudioDSPGraph::AnalyzerBuilder::registerAnalyzer(unsigned int,std::string const&,AudioComponentDescription const&)::{lambda(void)#2}>,std::unique_ptr<AudioDSPGraph::Analyzer> ()(void)>::destroy(uint64_t a1)
{
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }
}

void std::__function::__func<AudioDSPGraph::AnalyzerBuilder::registerAnalyzer(unsigned int,std::string const&,AudioComponentDescription const&)::{lambda(void)#2},std::allocator<AudioDSPGraph::AnalyzerBuilder::registerAnalyzer(unsigned int,std::string const&,AudioComponentDescription const&)::{lambda(void)#2}>,std::unique_ptr<AudioDSPGraph::Analyzer> ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F48D0DE0;
  *(a2 + 8) = *(a1 + 8);
  if (*(a1 + 39) < 0)
  {
    std::string::__init_copy_ctor_external((a2 + 16), *(a1 + 16), *(a1 + 24));
  }

  else
  {
    v2 = *(a1 + 16);
    *(a2 + 32) = *(a1 + 32);
    *(a2 + 16) = v2;
  }
}

void std::__function::__func<AudioDSPGraph::AnalyzerBuilder::registerAnalyzer(unsigned int,std::string const&,AudioComponentDescription const&)::{lambda(void)#2},std::allocator<AudioDSPGraph::AnalyzerBuilder::registerAnalyzer(unsigned int,std::string const&,AudioComponentDescription const&)::{lambda(void)#2}>,std::unique_ptr<AudioDSPGraph::Analyzer> ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F48D0DE0;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  JUMPOUT(0x1CCA84AE0);
}

uint64_t std::__function::__func<AudioDSPGraph::AnalyzerBuilder::registerAnalyzer(unsigned int,std::string const&,AudioComponentDescription const&)::{lambda(void)#2},std::allocator<AudioDSPGraph::AnalyzerBuilder::registerAnalyzer(unsigned int,std::string const&,AudioComponentDescription const&)::{lambda(void)#2}>,std::unique_ptr<AudioDSPGraph::Analyzer> ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F48D0DE0;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,AudioDSPGraph::AnalyzerBuilder::Info>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,AudioDSPGraph::AnalyzerBuilder::Info>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<unsigned int const,AudioDSPGraph::AnalyzerBuilder::Info>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__function::__func<AudioDSPGraph::AnalyzerBuilder::registerAnalyzer(unsigned int,std::string const&,AudioComponentDescription const&)::{lambda(void)#1},std::allocator<AudioDSPGraph::AnalyzerBuilder::registerAnalyzer(unsigned int,std::string const&,AudioComponentDescription const&)::{lambda(void)#1}>,std::unique_ptr<AudioDSPGraph::Analyzer> ()(void)>::destroy_deallocate(void **__p)
{
  if (*(__p + 55) < 0)
  {
    operator delete(__p[4]);
  }

  operator delete(__p);
}

void std::__function::__func<AudioDSPGraph::AnalyzerBuilder::registerAnalyzer(unsigned int,std::string const&,AudioComponentDescription const&)::{lambda(void)#1},std::allocator<AudioDSPGraph::AnalyzerBuilder::registerAnalyzer(unsigned int,std::string const&,AudioComponentDescription const&)::{lambda(void)#1}>,std::unique_ptr<AudioDSPGraph::Analyzer> ()(void)>::destroy(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }
}

void std::__function::__func<AudioDSPGraph::AnalyzerBuilder::registerAnalyzer(unsigned int,std::string const&,AudioComponentDescription const&)::{lambda(void)#1},std::allocator<AudioDSPGraph::AnalyzerBuilder::registerAnalyzer(unsigned int,std::string const&,AudioComponentDescription const&)::{lambda(void)#1}>,std::unique_ptr<AudioDSPGraph::Analyzer> ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F48D0D98;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  if (*(a1 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((a2 + 32), *(a1 + 32), *(a1 + 40));
  }

  else
  {
    v3 = *(a1 + 32);
    *(a2 + 48) = *(a1 + 48);
    *(a2 + 32) = v3;
  }
}

void std::__function::__func<AudioDSPGraph::AnalyzerBuilder::registerAnalyzer(unsigned int,std::string const&,AudioComponentDescription const&)::{lambda(void)#1},std::allocator<AudioDSPGraph::AnalyzerBuilder::registerAnalyzer(unsigned int,std::string const&,AudioComponentDescription const&)::{lambda(void)#1}>,std::unique_ptr<AudioDSPGraph::Analyzer> ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F48D0D98;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  JUMPOUT(0x1CCA84AE0);
}

uint64_t std::__function::__func<AudioDSPGraph::AnalyzerBuilder::registerAnalyzer(unsigned int,std::string const&,AudioComponentDescription const&)::{lambda(void)#1},std::allocator<AudioDSPGraph::AnalyzerBuilder::registerAnalyzer(unsigned int,std::string const&,AudioComponentDescription const&)::{lambda(void)#1}>,std::unique_ptr<AudioDSPGraph::Analyzer> ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F48D0D98;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  return a1;
}

void std::allocator<AudioDSPGraph::PropertyEndpoint>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void AudioDSPGraph::Graph::GraphProperty::~GraphProperty(AudioDSPGraph::Graph::GraphProperty *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  if (*(this + 32) == 1)
  {
    v3 = *(this + 1);
    if (v3)
    {
      *(this + 2) = v3;
      operator delete(v3);
    }
  }
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,AudioDSPGraph::Graph::GraphProperty>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[9];
    if (v3)
    {
      __p[10] = v3;
      operator delete(v3);
    }

    if (*(__p + 56) == 1)
    {
      v4 = __p[4];
      if (v4)
      {
        __p[5] = v4;
        operator delete(v4);
      }
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,AudioDSPGraph::Graph::GraphParameter>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[5];
    if (v3)
    {
      __p[6] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void AudioDSPGraph::Graph::removeWire(void *a1, unint64_t a2)
{
  v3 = a1[8];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v5 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v4 >> 47) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
  v7 = vcnt_s8(v3);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
    if (v6 >= *&v3)
    {
      v8 = v6 % *&v3;
    }
  }

  else
  {
    v8 = v6 & (*&v3 - 1);
  }

  v9 = a1[7];
  v10 = *(v9 + 8 * v8);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    if (!a2)
    {
      return;
    }

    goto LABEL_19;
  }

  v12 = *&v3 - 1;
  while (1)
  {
    v13 = v11[1];
    if (v13 == v6)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v13 >= *&v3)
      {
        v13 %= *&v3;
      }
    }

    else
    {
      v13 &= v12;
    }

    if (v13 != v8)
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

  if (v11[2] != a2)
  {
    goto LABEL_17;
  }

  v15 = v11[1];
  if (v7.u32[0] > 1uLL)
  {
    if (v15 >= *&v3)
    {
      v15 %= *&v3;
    }
  }

  else
  {
    v15 &= v12;
  }

  v16 = *(v9 + 8 * v15);
  do
  {
    v17 = v16;
    v16 = *v16;
  }

  while (v16 != v11);
  if (v17 == a1 + 9)
  {
    goto LABEL_39;
  }

  v18 = v17[1];
  if (v7.u32[0] > 1uLL)
  {
    if (v18 >= *&v3)
    {
      v18 %= *&v3;
    }
  }

  else
  {
    v18 &= v12;
  }

  if (v18 != v15)
  {
LABEL_39:
    if (!*v11)
    {
      goto LABEL_40;
    }

    v19 = *(*v11 + 8);
    if (v7.u32[0] > 1uLL)
    {
      if (v19 >= *&v3)
      {
        v19 %= *&v3;
      }
    }

    else
    {
      v19 &= v12;
    }

    if (v19 != v15)
    {
LABEL_40:
      *(v9 + 8 * v15) = 0;
    }
  }

  v20 = *v11;
  if (*v11)
  {
    v21 = *(v20 + 8);
    if (v7.u32[0] > 1uLL)
    {
      if (v21 >= *&v3)
      {
        v21 %= *&v3;
      }
    }

    else
    {
      v21 &= v12;
    }

    if (v21 != v15)
    {
      *(a1[7] + 8 * v21) = v17;
      v20 = *v11;
    }
  }

  *v17 = v20;
  *v11 = 0;
  --a1[10];
  operator delete(v11);
  if (a2)
  {
LABEL_19:
    v14 = *(*a2 + 8);

    v14(a2);
  }
}

void *std::__hash_table<std::__hash_value_type<std::string,AudioDSPGraph::Jack>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Jack>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Jack>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AudioDSPGraph::Jack>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, void *a2)
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

  if (!AudioDSPGraph::IR::BoxAlias::operator==(v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void *AudioDSPGraph::Boxes::GraphIOBox::GraphIOBox(void *a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  *__p = *a2;
  v7 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  AudioDSPGraph::Boxes::RingBufferBox::RingBufferBox(a1, __p, a3, a4);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = &unk_1F48D0EE0;
  a1[105] = 0;
  return a1;
}

void sub_1C922D868(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__hash_table<AudioDSPGraph::Boxes::FCBox *,std::hash<AudioDSPGraph::Boxes::FCBox *>,std::equal_to<AudioDSPGraph::Boxes::FCBox *>,std::allocator<AudioDSPGraph::Boxes::FCBox *>>::__emplace_unique_key_args<AudioDSPGraph::Boxes::FCBox *,AudioDSPGraph::Boxes::FCBox * const&>(void *result, unint64_t a2)
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

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::unique_ptr<AudioDSPGraph::Box>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[2];
    __p[2] = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  operator delete(__p);
}

void *std::__hash_table<std::__hash_value_type<std::string,AudioDSPGraph::FormatAndBlockSize>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AudioDSPGraph::FormatAndBlockSize>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AudioDSPGraph::FormatAndBlockSize>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AudioDSPGraph::FormatAndBlockSize>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, void *a2)
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

  if (!AudioDSPGraph::IR::BoxAlias::operator==(v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,std::vector<AudioDSPGraph::Buffer *>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<AudioDSPGraph::Buffer *>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<AudioDSPGraph::Buffer *>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::vector<AudioDSPGraph::Buffer *>>>>::~__hash_table(uint64_t a1)
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
        v2[4] = v4;
        operator delete(v4);
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

void AudioDSPGraph::BufferColorist::consumeInputs(AudioDSPGraph::BufferColorist *this, AudioDSPGraph::Box *a2)
{
  v2 = *(a2 + 9);
  for (i = *(a2 + 10); v2 != i; v2 += 32)
  {
    v5 = *(v2 + 16);
    if (!v5)
    {
      v28 = (a2 + 40);
      if (*(a2 + 63) < 0)
      {
        v28 = *v28;
      }

      v29 = (*(*a2 + 16))(a2);
      caulk::make_string("box %s %s input port is not connected.", v31, v28, v29);
      AudioDSPGraph::ThrowException(1970168609, v31, off_1E8336480);
    }

    v6 = *(v5 + 56);
    v7 = *(v6 + 104) - 1;
    *(v6 + 104) = v7;
    if (!v7)
    {
      if (*(v6 + 108))
      {
        v8 = 48;
      }

      else
      {
        v8 = 8;
      }

      v32 = *(v6 + 96);
      v9 = v32;
      if (!std::__hash_table<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>>>::find<unsigned int>((this + v8), v32))
      {
        v33 = &v32;
        v10 = std::__hash_table<std::__hash_value_type<unsigned int,std::vector<AudioDSPGraph::Buffer *>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<AudioDSPGraph::Buffer *>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<AudioDSPGraph::Buffer *>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::vector<AudioDSPGraph::Buffer *>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((this + v8), v9);
        v12 = v10 + 3;
        v11 = v10[3];
        if (v11)
        {
          v10[4] = v11;
          operator delete(v11);
        }

        *v12 = 0;
        v12[1] = 0;
        v12[2] = 0;
        v9 = v32;
      }

      v33 = &v32;
      v13 = std::__hash_table<std::__hash_value_type<unsigned int,std::vector<AudioDSPGraph::Buffer *>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<AudioDSPGraph::Buffer *>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<AudioDSPGraph::Buffer *>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::vector<AudioDSPGraph::Buffer *>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((this + v8), v9);
      v14 = v13;
      v16 = v13[4];
      v15 = v13[5];
      if (v16 >= v15)
      {
        v18 = v13[3];
        v19 = (v16 - v18) >> 3;
        if ((v19 + 1) >> 61)
        {
          std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
        }

        v20 = v15 - v18;
        v21 = v20 >> 2;
        if (v20 >> 2 <= (v19 + 1))
        {
          v21 = v19 + 1;
        }

        if (v20 >= 0x7FFFFFFFFFFFFFF8)
        {
          v22 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v22 = v21;
        }

        if (v22)
        {
          if (!(v22 >> 61))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v23 = (8 * v19);
        *v23 = v6;
        v17 = 8 * v19 + 8;
        v24 = v13[3];
        v25 = v13[4] - v24;
        v26 = v23 - v25;
        memcpy(v23 - v25, v24, v25);
        v27 = v14[3];
        v14[3] = v26;
        v14[4] = v17;
        v14[5] = 0;
        if (v27)
        {
          operator delete(v27);
        }
      }

      else
      {
        *v16 = v6;
        v17 = (v16 + 1);
      }

      v14[4] = v17;
    }
  }
}

void sub_1C922E450(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *AudioDSPGraph::BufferColorist::allocOutputs(uint64_t *this, AudioDSPGraph::Box *a2, AudioDSPGraph::Box *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = this;
    do
    {
      v6 = *(v4 + 2);
      if (!v6[7])
      {
        v7 = v6[15];
        v8 = *(v7 + 12);
        v9 = *(v7 + 28);
        v10 = v6[5];
        v15 = v9;
        if (v10 >> 31)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::overflow_error::overflow_error[abi:ne200100](exception, "numerical cast overflow: could not retain value in conversion type");
        }

        if ((v8 & 0x20) != 0)
        {
          v11 = 1;
        }

        else
        {
          v11 = 6;
        }

        if (!std::__hash_table<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>>>::find<unsigned int>(&v5[v11], v9) || (v16 = &v15, this = std::__hash_table<std::__hash_value_type<unsigned int,std::vector<AudioDSPGraph::Buffer *>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<AudioDSPGraph::Buffer *>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<AudioDSPGraph::Buffer *>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::vector<AudioDSPGraph::Buffer *>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(&v5[v11], v9), v12 = this[4], v12 == this[3]))
        {
          operator new();
        }

        v13 = *(v12 - 8);
        this[4] = v12 - 8;
        *(v13 + 104) = v10;
        v6[7] = v13;
      }

      v4 = (v4 + 32);
    }

    while (v4 != a3);
  }

  return this;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,std::vector<AudioDSPGraph::Buffer *>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<AudioDSPGraph::Buffer *>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<AudioDSPGraph::Buffer *>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::vector<AudioDSPGraph::Buffer *>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(void *a1, unsigned int a2)
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

void AudioDSPGraph::InternalBuffer::~InternalBuffer(AudioDSPGraph::InternalBuffer *this)
{
  *this = &unk_1F48D0EA8;
  AudioDSPGraph::SimpleABL::free((this + 80));

  JUMPOUT(0x1CCA84AE0);
}

{
  *this = &unk_1F48D0EA8;
  AudioDSPGraph::SimpleABL::free((this + 80));
}

void AudioDSPGraph::Graph::setParameter(AudioDSPGraph::Graph *this, uint64_t a2, float a3, unsigned int a4)
{
  v14 = a4;
  v6 = std::__hash_table<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>>>::find<unsigned int>((a2 + 584), a4);
  if (!v6)
  {
    LODWORD(v11) = 1852204065;
    *(&v11 + 1) = off_1E8336270;
    v12 = 0;
    v13 = 0;
    v7 = "graph parameter {} does not exist";
    goto LABEL_4;
  }

  if (*(v6 + 36) == 1)
  {
    LODWORD(v11) = 1852204065;
    *(&v11 + 1) = off_1E8336288;
    v12 = 0;
    v13 = 0;
    v7 = "graph parameter {} is not settable";
LABEL_4:
    AudioDSPGraph::Error::saveDescription<unsigned int &>(&v11, v7, &v14);
    *this = v11;
    v8 = v12;
    v12 = 0;
    *(this + 2) = v8;
    LODWORD(v8) = v13;
    v13 = 0;
    *(this + 6) = v8;
    *(this + 32) = 0;
    AudioDSPGraph::Error::~Error(&v11);
    return;
  }

  *(v6 + 7) = a3;
  *(v6 + 32) = 1;
  v9 = v6[5];
  v10 = v6[6];
  while (v9 != v10)
  {
    (*(**v9 + 88))(*v9, v9[2], v9[3], v9[4], 0, a3);
    if ((*(this + 32) & 1) == 0)
    {
      return;
    }

    v9 += 6;
  }

  *(this + 32) = 1;
}

uint64_t AudioDSPGraph::Error::saveDescription<unsigned int &>(uint64_t a1, uint64_t a2, int *a3)
{
  v4 = MEMORY[0x1E69E3C08];
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {
    result = caulk::rt_safe_memory_resource::rt_allocate(result);
    v8 = result;
    v9 = *a3;
    *result = &unk_1F48D1218;
    *(result + 8) = a2;
    *(result + 16) = v9;
    if (*(a1 + 24) != 1)
    {
      goto LABEL_6;
    }

    v10 = *(a1 + 16);
    if (!v10)
    {
      goto LABEL_6;
    }

    (*(*v10 + 24))(*(a1 + 16));
    (**v10)(v10);
    result = *v4;
    if (*v4)
    {
      result = caulk::rt_safe_memory_resource::rt_deallocate(result, v10);
LABEL_6:
      *(a1 + 16) = v8;
      *(a1 + 24) = 1;
      return result;
    }
  }

  __break(1u);
  return result;
}

void AudioDSPGraph::ErrorDescriptor::CustomDeferredDescription<unsigned int>::format(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  v5 = strlen(v4);
  v6 = *(a1 + 16);
  v12[1] = 0;
  v12[2] = 6;
  v11[2] = 6;
  v12[0] = v6;
  v13 = v17;
  *__len = xmmword_1C925F110;
  v15 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
  v16 = 0;
  __src = v17;
  v11[0] = 1;
  v11[1] = v12;
  std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v13, v4, v5, v11);
  v7 = __len[1];
  if (__len[1] >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len[1] >= 0x17)
  {
    operator new();
  }

  HIBYTE(v10) = __len[1];
  if (__len[1])
  {
    memmove(&v9, __src, __len[1]);
  }

  *(&v9 + v7) = 0;
  if (__src != v17)
  {
    operator delete(__src);
  }

  *a2 = v9;
  *(a2 + 16) = v10;
  *(a2 + 24) = 1;
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1C922EF80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *__p)
{
  if (a2)
  {
    if (__p != v58)
    {
      operator delete(__p);
    }

    __cxa_begin_catch(exception_object);
    *v57 = 0;
    v57[24] = 0;
    __cxa_end_catch();
    JUMPOUT(0x1C922EF40);
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::Graph::addEventHandler(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  AudioDSPGraph::EventHandlerTree<AudioDSPGraph::GraphEventHandler,AudioDSPGraph::GraphEventHandlerAggregate>::addLeaf((a1 + 752), &v3);
  v2 = *(&v3 + 1);
  if (*(&v3 + 1))
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void sub_1C922F048(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *AudioDSPGraph::Graph::removeEventHandler(uint64_t a1, void *a2)
{
  v3 = *(a1 + 808);
  v4 = *(a1 + 800);
  v5 = (v3 - v4);
  if (v3 == v4)
  {
    goto LABEL_21;
  }

  v7 = *(a1 + 800);
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
      v3 = *(a1 + 808);
      v4 = *(a1 + 800);
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

    *(a1 + 808) = v7;
    v4 = *(a1 + 800);
  }

  v13 = v7 - v4;
  if (v5 != v13)
  {
    operator new();
  }

  caulk::concurrent::exchanged_pointer_base<AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::Root>::extract_retired(&v15, v13);
  return std::unique_ptr<AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::Root,std::default_delete<AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::Root>>::~unique_ptr[abi:ne200100](&v15);
}

uint64_t AudioDSPGraph::Graph::setGraphPropertiesInitialValues(uint64_t this)
{
  v23 = *MEMORY[0x1E69E9840];
  if (this)
  {
    v1 = this;
    do
    {
      v2 = *(v1 + 72);
      v3 = *(v1 + 80);
      while (v2 != v3)
      {
        if ((*(v1 + 64) & 1) == 0 && *(v1 + 56) == 1)
        {
          v4 = *(v1 + 32);
          if ((*(v1 + 40) - v4) >> 32)
          {
            caulk::make_string("graph property size is too large to accept: %zu bytes > %u", v13, *(v1 + 40) - v4, 0xFFFFFFFFLL);
            AudioDSPGraph::ThrowException(561211770, v13, off_1E83362B8);
          }

          this = (*(**v2 + 312))(*v2, v2[2], v2[3], v2[4]);
          if (this)
          {
            v6 = this;
            AudioDSPGraph::stringFromFourCharCode<unsigned int>(&v11, *(v1 + 16));
            v7 = (*v2 + 40);
            if (*(*v2 + 63) < 0)
            {
              v7 = *v7;
            }

            v10 = v7;
            AudioDSPGraph::stringFromFourCharCode<unsigned int>(&v9, *(v1 + 16));
            caulk::string_from_4cc(&v8, v6);
            v16[0] = 0;
            std::__format::__create_packed_storage[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>,std::string,char const*,std::string,std::string>(v16, v15, &v11, &v10, &v9, &v8);
            v17 = v21;
            v18 = xmmword_1C925F110;
            v19 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
            v20 = 0;
            __p = v21;
            v14[0] = 4;
            v14[1] = v15;
            v14[2] = v16[0];
            std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v17, "failed to set default value for property {} on '{}' with error {}", 65, v14);
            std::string::basic_string<std::string_view,0>(__dst, __p, *(&v18 + 1));
            if (__p != v21)
            {
              operator delete(__p);
            }

            AudioDSPGraph::ThrowException(v6, __dst, off_1E83362D0);
          }
        }

        v2 += 6;
      }

      v1 = *v1;
    }

    while (v1);
  }

  v5 = *MEMORY[0x1E69E9840];
  return this;
}

void sub_1C922F484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a36 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  _Unwind_Resume(a1);
}

void *AudioDSPGraph::Graph::setGraphParameterInitialValues(void *this)
{
  if (this)
  {
    v1 = this;
    do
    {
      v2 = *(v1 + 40);
      v3 = *(v1 + 48);
      while (v2 != v3)
      {
        if ((*(v1 + 36) & 1) == 0 && *(v1 + 32) == 1)
        {
          v4 = v2[2];
          v5 = v2[3];
          v6 = v2[4];
          this = (*(**v2 + 88))(v7, *(v1 + 28));
          if ((v8 & 1) == 0)
          {
            AudioDSPGraph::Error::throwException(v7);
          }
        }

        v2 += 6;
      }

      v1 = *v1;
    }

    while (v1);
  }

  return this;
}

void sub_1C922F5B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if ((a14 & 1) == 0)
  {
    AudioDSPGraph::Error::~Error(&a10);
  }

  _Unwind_Resume(exception_object);
}

void *std::__format::__create_packed_storage[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>,std::string,char const*,std::string,std::string>(void *result, void *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v6 = *(a3 + 23);
  v7 = v6;
  v8 = *a3;
  v9 = a3[1];
  *result = 13;
  if ((v6 & 0x80u) != 0)
  {
    v6 = v9;
  }

  if (v7 >= 0)
  {
    v10 = a3;
  }

  else
  {
    v10 = v8;
  }

  *a2 = v10;
  a2[1] = v6;
  v11 = *a4;
  *result |= 0x180uLL;
  a2[2] = v11;
  v12 = *(a5 + 23);
  v13 = v12;
  v14 = *a5;
  v15 = a5[1];
  *result |= 0x3400uLL;
  if ((v12 & 0x80u) != 0)
  {
    v12 = v15;
  }

  if (v13 >= 0)
  {
    v16 = a5;
  }

  else
  {
    v16 = v14;
  }

  a2[4] = v16;
  a2[5] = v12;
  v17 = *(a6 + 23);
  v18 = v17;
  v19 = *a6;
  v20 = a6[1];
  *result |= 0x68000uLL;
  if ((v17 & 0x80u) != 0)
  {
    v17 = v20;
  }

  if (v18 >= 0)
  {
    v21 = a6;
  }

  else
  {
    v21 = v19;
  }

  a2[6] = v21;
  a2[7] = v17;
  return result;
}

void *std::__hash_table<std::unique_ptr<AudioDSPGraph::IsoGroup>,std::hash<std::unique_ptr<AudioDSPGraph::IsoGroup>>,std::equal_to<std::unique_ptr<AudioDSPGraph::IsoGroup>>,std::allocator<std::unique_ptr<AudioDSPGraph::IsoGroup>>>::__emplace_unique_key_args<std::unique_ptr<AudioDSPGraph::IsoGroup>,std::unique_ptr<AudioDSPGraph::IsoGroup>>(void *a1, unint64_t a2)
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

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::unique_ptr<AudioDSPGraph::IsoGroup>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[2];
    __p[2] = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void AudioDSPGraph::IsoGroup::~IsoGroup(AudioDSPGraph::IsoGroup *this)
{
  *this = &unk_1F48D11B0;
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

  std::__hash_table<AudioDSPGraph::Box *,std::hash<AudioDSPGraph::Box *>,std::equal_to<AudioDSPGraph::Box *>,std::allocator<AudioDSPGraph::Box *>>::~__hash_table(this + 136);
  std::__hash_table<AudioDSPGraph::Box *,std::hash<AudioDSPGraph::Box *>,std::equal_to<AudioDSPGraph::Box *>,std::allocator<AudioDSPGraph::Box *>>::~__hash_table(this + 96);
  std::__hash_table<AudioDSPGraph::Box *,std::hash<AudioDSPGraph::Box *>,std::equal_to<AudioDSPGraph::Box *>,std::allocator<AudioDSPGraph::Box *>>::~__hash_table(this + 56);
  std::__hash_table<AudioDSPGraph::Box *,std::hash<AudioDSPGraph::Box *>,std::equal_to<AudioDSPGraph::Box *>,std::allocator<AudioDSPGraph::Box *>>::~__hash_table(this + 16);

  JUMPOUT(0x1CCA84AE0);
}

{
  *this = &unk_1F48D11B0;
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

  std::__hash_table<AudioDSPGraph::Box *,std::hash<AudioDSPGraph::Box *>,std::equal_to<AudioDSPGraph::Box *>,std::allocator<AudioDSPGraph::Box *>>::~__hash_table(this + 136);
  std::__hash_table<AudioDSPGraph::Box *,std::hash<AudioDSPGraph::Box *>,std::equal_to<AudioDSPGraph::Box *>,std::allocator<AudioDSPGraph::Box *>>::~__hash_table(this + 96);
  std::__hash_table<AudioDSPGraph::Box *,std::hash<AudioDSPGraph::Box *>,std::equal_to<AudioDSPGraph::Box *>,std::allocator<AudioDSPGraph::Box *>>::~__hash_table(this + 56);
  std::__hash_table<AudioDSPGraph::Box *,std::hash<AudioDSPGraph::Box *>,std::equal_to<AudioDSPGraph::Box *>,std::allocator<AudioDSPGraph::Box *>>::~__hash_table(this + 16);
}

unint64_t AudioDSPGraph::Graph::getPropertyInfo(AudioDSPGraph::Graph *this, unsigned int a2)
{
  v2 = std::__hash_table<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>>>::find<unsigned int>(this + 78, a2);
  if (v2)
  {
    v3 = v2[9];
    if (v2[10] == v3)
    {
      v5 = 0;
      v6 = 1969451041;
    }

    else
    {
      v4 = (*(**v3 + 296))(*v3, v3[2], v3[3], v3[4]);
      v5 = v4 & 0xFFFFFFFF00000000;
      v6 = v4;
    }
  }

  else
  {
    v5 = 0;
    v6 = 1852204065;
  }

  return v5 | v6;
}

void std::vector<AudioDSPGraph::Box *>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 3;
    if ((v6 + 1) >> 61)
    {
      std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
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
      std::allocator<std::unique_ptr<ausdk::AUElement>>::allocate_at_least[abi:ne200100](v9);
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

uint64_t AudioDSPGraph::Graph::setAUStrip(AudioDSPGraph::Graph *this, const __CFDictionary *a2)
{
  v119 = *MEMORY[0x1E69E9840];
  applesauce::CF::DictionaryRef::from_get(&v102, a2);
  if (!v102)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v4 = applesauce::CF::details::at_key<__CFString const* const&>(v102, @"version");
  if (!v4 || ((v5 = applesauce::CF::convert_as<int,0>(v4), (v5 & 0x100000000) == 0) ? (v6 = 1) : (v6 = v5), v6 == 1))
  {
    applesauce::CF::DictionaryRef::from_get(buf, a2);
    if (!*buf)
    {
      v84 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v84, "Could not construct");
    }

    if (applesauce::CF::details::has_key<__CFString const* const&>(*buf, @"strips"))
    {
      if (!*buf)
      {
        v85 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v85, "Could not construct");
      }

      applesauce::CF::details::find_at_key<applesauce::CF::ArrayRef,__CFString const* const&>(&theArray, *buf, @"strips");
      {
        AudioDSPGraph::getLog(void)::gLog = os_log_create("com.apple.coreaudio", "AudioDSPGraph");
      }

      v101 = os_signpost_id_make_with_pointer(AudioDSPGraph::getLog(void)::gLog, this);
      v45 = theArray;
      if (!theArray)
      {
LABEL_178:
        v61 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v61, "Could not construct");
      }

      v46 = 0;
      v47 = v101 - 1;
      while (v46 < CFArrayGetCount(v45))
      {
        if (!theArray)
        {
          v72 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v72, "Could not construct");
        }

        applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(&v105, theArray, v46);
        if (!v105)
        {
          v71 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v71, "Could not construct");
        }

        if (applesauce::CF::details::has_key<__CFString const* const&>(v105, @"effects"))
        {
          if (!v105)
          {
            v73 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v73, "Could not construct");
          }

          applesauce::CF::details::find_at_key<applesauce::CF::ArrayRef,__CFString const* const&>(v114, v105, @"effects");
          v48 = *v114;
          if (!*v114)
          {
LABEL_197:
            v65 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v65, "Could not construct");
          }

          v49 = 0;
          while (v49 < CFArrayGetCount(v48))
          {
            if (!*v114)
            {
              v67 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v67, "Could not construct");
            }

            applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(&v111, *v114, v49);
            if (!v111)
            {
              v66 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v66, "Could not construct");
            }

            applesauce::CF::details::find_at_key<std::string,__CFString const* const&>(&v115, v111, @"displayname");
            v50 = v116;
            v51 = v116;
            if ((v116 & 0x80u) != 0)
            {
              v50 = *(&v115 + 1);
            }

            if (!v50)
            {
              __cxa_rethrow();
            }

            v52 = std::__hash_table<std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AudioDSPGraph::Box *>>>::find<std::string>(this + 117, &v115);
            if (v52)
            {
              v53 = v52[5];
              if (v53)
              {
                if (!v111)
                {
                  v68 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v68, "Could not construct");
                }

                v54 = applesauce::CF::details::at_key<__CFString const* const&>(v111, @"aupreset");
                if (!v54)
                {
                  v70 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v70, "Could not find item");
                }

                applesauce::CF::DictionaryRef::from_get(&v110, v54);
                {
                  AudioDSPGraph::getLog(void)::gLog = os_log_create("com.apple.coreaudio", "AudioDSPGraph");
                }

                if (v47 <= 0xFFFFFFFFFFFFFFFDLL)
                {
                  v55 = AudioDSPGraph::getLog(void)::gLog;
                  if (os_signpost_enabled(AudioDSPGraph::getLog(void)::gLog))
                  {
                    v56 = v53 + 40;
                    if (v53[63] < 0)
                    {
                      v56 = *v56;
                    }

                    LODWORD(__p) = 136315138;
                    *(&__p + 4) = v56;
                    _os_signpost_emit_with_name_impl(&dword_1C91AE000, v55, OS_SIGNPOST_INTERVAL_BEGIN, v101, "Box::setPreset", "%s", &__p, 0xCu);
                  }
                }

                (*(*v53 + 336))(v53, v110);
                {
                  AudioDSPGraph::getLog(void)::gLog = os_log_create("com.apple.coreaudio", "AudioDSPGraph");
                }

                if (v47 <= 0xFFFFFFFFFFFFFFFDLL)
                {
                  v57 = AudioDSPGraph::getLog(void)::gLog;
                  if (os_signpost_enabled(AudioDSPGraph::getLog(void)::gLog))
                  {
                    v58 = v53 + 40;
                    if (v53[63] < 0)
                    {
                      v58 = *v58;
                    }

                    LODWORD(__p) = 136315138;
                    *(&__p + 4) = v58;
                    _os_signpost_emit_with_name_impl(&dword_1C91AE000, v57, OS_SIGNPOST_INTERVAL_END, v101, "Box::setPreset", "%s", &__p, 0xCu);
                  }
                }

                if (!v111)
                {
                  v69 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v69, "Could not construct");
                }

                v59 = applesauce::CF::details::at_key<__CFString const* const&>(v111, @"bypass");
                if (v59)
                {
                  v60 = applesauce::CF::convert_as<unsigned int,0>(v59);
                  if ((v60 & 0x100000000) != 0)
                  {
                    (*(*v53 + 56))(v53, v60 != 0);
                  }
                }

                if (v110)
                {
                  CFRelease(v110);
                }

                v51 = v116;
              }
            }

            if ((v51 & 0x80) != 0)
            {
              operator delete(v115);
            }

            if (v111)
            {
              CFRelease(v111);
            }

            ++v49;
            v48 = *v114;
            if (!*v114)
            {
              goto LABEL_197;
            }
          }

          if (*v114)
          {
            CFRelease(*v114);
          }
        }

        if (v105)
        {
          CFRelease(v105);
        }

        ++v46;
        v45 = theArray;
        if (!theArray)
        {
          goto LABEL_178;
        }
      }

      if (theArray)
      {
        CFRelease(theArray);
      }
    }

    else
    {
      if (!*buf)
      {
        v86 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v86, "Could not construct");
      }

      if (CFDictionaryGetCount(*buf))
      {
        v44 = 1886548769;
        goto LABEL_185;
      }
    }

    v44 = 0;
LABEL_185:
    v62 = *buf;
    if (*buf)
    {
      goto LABEL_193;
    }

    goto LABEL_194;
  }

  if (v6 != 2)
  {
    v44 = 4294956445;
    goto LABEL_194;
  }

  applesauce::CF::DictionaryRef::from_get(&v110, a2);
  if (!v110)
  {
    v87 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v87, "Could not construct");
  }

  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,__CFString const* const&>(&theArray, v110, @"strips");
  if (v109 != 1)
  {
    if (!v110)
    {
      v88 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v88, "Could not construct");
    }

    if (CFDictionaryGetCount(v110))
    {
      v44 = 1886548769;
    }

    else
    {
      v44 = 0;
    }

    goto LABEL_192;
  }

  v7 = theArray;
  if (!theArray)
  {
    goto LABEL_120;
  }

  Count = CFArrayGetCount(theArray);
  v9 = CFArrayGetCount(v7);
  if (!Count)
  {
LABEL_118:
    if (theArray)
    {
      CFRelease(theArray);
    }

    goto LABEL_120;
  }

  v10 = v9;
  v11 = 0;
  v90 = Count;
  v91 = v7;
  v89 = v9;
  do
  {
    if (v11 == v10)
    {
      break;
    }

    applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(&v107, v7, v11);
    if (!v107)
    {
      v83 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v83, "Could not construct");
    }

    applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,__CFString const* const&>(&v105, v107, @"effects");
    if (v106 != 1)
    {
      goto LABEL_114;
    }

    v13 = v105;
    if (!v105)
    {
      goto LABEL_114;
    }

    v95 = CFArrayGetCount(v105);
    v94 = CFArrayGetCount(v13);
    if (!v95)
    {
LABEL_112:
      if (v105)
      {
        CFRelease(v105);
      }

      goto LABEL_114;
    }

    v14 = 0;
    v93 = v13;
    while (v14 != v94)
    {
      applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(&cf, v13, v14);
      if (!cf)
      {
        v80 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v80, "Could not construct");
      }

      applesauce::CF::details::find_at_key<std::string,__CFString const* const&>(&__p, cf, @"displayname");
      v15 = v113;
      v16 = v113;
      if ((v113 & 0x80u) != 0)
      {
        v15 = *(&__p + 1);
      }

      if (!v15)
      {
        __cxa_rethrow();
      }

      v17 = std::__hash_table<std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AudioDSPGraph::Box *>>>::find<std::string>(this + 117, &__p);
      if (!v17)
      {
        goto LABEL_99;
      }

      v100 = v17[5];
      if (!v100)
      {
        goto LABEL_99;
      }

      v18 = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      v103 = v18;
      if ((atomic_load_explicit(v12, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(v12))
      {
        AudioDSPGraph::getLog(void)::gLog = os_log_create("com.apple.coreaudio", "AudioDSPGraph");
        __cxa_guard_release(v12);
      }

      spid = os_signpost_id_generate(AudioDSPGraph::getLog(void)::gLog);
      if (!v103)
      {
        goto LABEL_221;
      }

      v19 = applesauce::CF::details::at_key<__CFString const* const&>(v103, @"aupreset");
      if (!v19)
      {
        goto LABEL_45;
      }

      v20 = v19;
      CFRetain(v19);
      v21 = CFGetTypeID(v20);
      if (v21 != CFDictionaryGetTypeID())
      {
        CFRelease(v20);
LABEL_45:
        LOBYTE(v115) = 0;
        BYTE8(v115) = 0;
        goto LABEL_46;
      }

      *&v115 = v20;
      BYTE8(v115) = 1;
      if ((atomic_load_explicit(v12, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(v12))
      {
        AudioDSPGraph::getLog(void)::gLog = os_log_create("com.apple.coreaudio", "AudioDSPGraph");
        __cxa_guard_release(v12);
      }

      if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v22 = AudioDSPGraph::getLog(void)::gLog;
        if (os_signpost_enabled(AudioDSPGraph::getLog(void)::gLog))
        {
          v23 = v100 + 40;
          if (v100[63] < 0)
          {
            v23 = *v23;
          }

          *buf = 136315138;
          *&buf[4] = v23;
          _os_signpost_emit_with_name_impl(&dword_1C91AE000, v22, OS_SIGNPOST_INTERVAL_BEGIN, spid, "Box::setPreset", "%s", buf, 0xCu);
        }
      }

      (*(*v100 + 336))(v100, v115);
      if ((atomic_load_explicit(v12, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(v12))
      {
        AudioDSPGraph::getLog(void)::gLog = os_log_create("com.apple.coreaudio", "AudioDSPGraph");
        __cxa_guard_release(v12);
      }

      if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v24 = AudioDSPGraph::getLog(void)::gLog;
        if (os_signpost_enabled(AudioDSPGraph::getLog(void)::gLog))
        {
          v25 = v100 + 40;
          if (v100[63] < 0)
          {
            v25 = *v25;
          }

          *buf = 136315138;
          *&buf[4] = v25;
          _os_signpost_emit_with_name_impl(&dword_1C91AE000, v24, OS_SIGNPOST_INTERVAL_END, spid, "Box::setPreset", "%s", buf, 0xCu);
        }
      }

LABEL_46:
      if (BYTE8(v115) == 1 && v115)
      {
        CFRelease(v115);
      }

      if (!v103)
      {
        goto LABEL_221;
      }

      applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,__CFString const* const&>(buf, v103, @"parameters");
      if (buf[8] == 1)
      {
        v26 = *buf;
        if (*buf)
        {
          v98 = CFArrayGetCount(*buf);
          v97 = CFArrayGetCount(v26);
          if (!v98)
          {
            goto LABEL_89;
          }

          v27 = 0;
          v99 = spid - 1;
          v92 = (v100 + 40);
          while (v97 != v27)
          {
            applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(&v111, v26, v27);
            if (!v111)
            {
              v78 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v78, "Could not construct");
            }

            v28 = applesauce::CF::details::at_key<__CFString const* const&>(v111, @"scope");
            if (v28)
            {
              applesauce::CF::convert_as<unsigned int,0>(v28);
            }

            if (!v111)
            {
              v74 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v74, "Could not construct");
            }

            v29 = applesauce::CF::details::at_key<__CFString const* const&>(v111, @"element");
            if (v29)
            {
              applesauce::CF::convert_as<unsigned int,0>(v29);
            }

            if (!v111)
            {
              v77 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v77, "Could not construct");
            }

            v30 = applesauce::CF::details::at_key<__CFString const* const&>(v111, @"parameterID");
            if (!v30)
            {
              v75 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v75, "Could not find item");
LABEL_217:
            }

            if ((applesauce::CF::convert_as<unsigned int,0>(v30) & 0x100000000) == 0)
            {
              v75 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v75, "Could not convert");
              goto LABEL_217;
            }

            if (!v111)
            {
              v79 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v79, "Could not construct");
            }

            v31 = applesauce::CF::details::at_key<__CFString const* const&>(v111, @"value");
            if (!v31)
            {
              v76 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v76, "Could not find item");
              goto LABEL_214;
            }

            v32 = applesauce::CF::convert_as<float,0>(v31);
            if (!HIDWORD(v32))
            {
              v76 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v76, "Could not convert");
LABEL_214:
            }

            v33 = *&v32;
            v34 = v12;
            if ((atomic_load_explicit(v12, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(v12))
            {
              AudioDSPGraph::getLog(void)::gLog = os_log_create("com.apple.coreaudio", "AudioDSPGraph");
              __cxa_guard_release(v12);
            }

            if (v99 <= 0xFFFFFFFFFFFFFFFDLL)
            {
              v35 = AudioDSPGraph::getLog(void)::gLog;
              if (os_signpost_enabled(AudioDSPGraph::getLog(void)::gLog))
              {
                v36 = v100 + 40;
                if (v100[63] < 0)
                {
                  v36 = *v92;
                }

                LODWORD(v115) = 136315138;
                *(&v115 + 4) = v36;
                _os_signpost_emit_with_name_impl(&dword_1C91AE000, v35, OS_SIGNPOST_INTERVAL_BEGIN, spid, "Box::setParameter", "%s", &v115, 0xCu);
              }
            }

            (*(*v100 + 88))(&v115, v33);
            v12 = v34;
            if ((atomic_load_explicit(v34, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(v34))
            {
              AudioDSPGraph::getLog(void)::gLog = os_log_create("com.apple.coreaudio", "AudioDSPGraph");
              __cxa_guard_release(v34);
            }

            if (v99 <= 0xFFFFFFFFFFFFFFFDLL)
            {
              v37 = AudioDSPGraph::getLog(void)::gLog;
              if (os_signpost_enabled(AudioDSPGraph::getLog(void)::gLog))
              {
                v38 = v100 + 40;
                if (v100[63] < 0)
                {
                  v38 = *v92;
                }

                *v114 = 136315138;
                *&v114[4] = v38;
                _os_signpost_emit_with_name_impl(&dword_1C91AE000, v37, OS_SIGNPOST_INTERVAL_END, spid, "Box::setParameter", "%s", v114, 0xCu);
              }
            }

            if ((v117 & 1) == 0)
            {
              AudioDSPGraph::Error::throwException(&v115);
            }

            if (v111)
            {
              CFRelease(v111);
            }

            if (v98 == ++v27)
            {
              break;
            }
          }

          if (buf[8])
          {
LABEL_89:
            if (*buf)
            {
              CFRelease(*buf);
            }
          }
        }
      }

      v39 = v103;
      if (!v103)
      {
LABEL_221:
        v82 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v82, "Could not construct");
      }

      v40 = applesauce::CF::details::at_key<__CFString const* const&>(v103, @"bypass");
      if (v40)
      {
        v41 = applesauce::CF::convert_as<unsigned int,0>(v40);
        if ((v41 & 0x100000000) != 0)
        {
          (*(*v100 + 56))(v100, v41 != 0);
        }
      }

      v42 = applesauce::CF::details::at_key<__CFString const* const&>(v39, @"bypass");
      if (v42)
      {
        v43 = applesauce::CF::convert_as<BOOL,0>(v42);
        if (v43 >= 0x100u)
        {
          (*(*v100 + 56))(v100, v43 & 1);
        }
      }

      CFRelease(v39);
      v16 = v113;
LABEL_99:
      if ((v16 & 0x80) != 0)
      {
        operator delete(__p);
      }

      v13 = v93;
      if (cf)
      {
        CFRelease(cf);
      }

      if (++v14 == v95)
      {
        break;
      }
    }

    Count = v90;
    v7 = v91;
    v10 = v89;
    if (v106)
    {
      goto LABEL_112;
    }

LABEL_114:
    if (v107)
    {
      CFRelease(v107);
    }

    ++v11;
  }

  while (v11 != Count);
  if (v109)
  {
    goto LABEL_118;
  }

LABEL_120:
  v44 = 0;
LABEL_192:
  v62 = v110;
  if (v110)
  {
LABEL_193:
    CFRelease(v62);
  }

LABEL_194:
  if (v102)
  {
    CFRelease(v102);
  }

  v63 = *MEMORY[0x1E69E9840];
  return v44;
}

void sub_1C923115C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, int a28, __int16 a29, char a30, char a31, int a32, __int16 a33, char a34, char a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, char a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, char a47, int a48, __int16 a49, char a50, char a51, void *__p, uint64_t a53, int a54, __int16 a55, char a56, char a57)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,__CFString const* const&>(_BYTE *a1, const __CFDictionary *a2, const void *a3)
{
  v4 = applesauce::CF::details::at_key<__CFString const* const&>(a2, a3);
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  CFRetain(v4);
  v6 = CFGetTypeID(v5);
  if (v6 != CFArrayGetTypeID())
  {
    CFRelease(v5);
LABEL_5:
    v7 = 0;
    *a1 = 0;
    goto LABEL_6;
  }

  *a1 = v5;
  v7 = 1;
LABEL_6:
  a1[8] = v7;
}

void *applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(void *a1, CFArrayRef theArray, unint64_t a3)
{
  if (CFArrayGetCount(theArray) <= a3 || (ValueAtIndex = CFArrayGetValueAtIndex(theArray, a3)) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::not_found(exception);
  }

  return applesauce::CF::DictionaryRef::from_get(a1, ValueAtIndex);
}

uint64_t std::optional<applesauce::CF::DictionaryRef>::~optional(uint64_t a1)
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

uint64_t std::optional<applesauce::CF::ArrayRef>::~optional(uint64_t a1)
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

void *applesauce::CF::details::find_at_key<applesauce::CF::ArrayRef,__CFString const* const&>(void *a1, const __CFDictionary *a2, const void *a3)
{
  v4 = applesauce::CF::details::at_key<__CFString const* const&>(a2, a3);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::not_found(exception);
  }

  return applesauce::CF::ArrayRef::from_get(a1, v4);
}

void AudioDSPGraph::stripDictFromBoxes(CFDictionaryRef *a1, uint64_t a2)
{
  v42 = *MEMORY[0x1E69E9840];
  theArray = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*a2 != v4)
  {
    do
    {
      if ((*(**v3 + 328))(*v3))
      {
        applesauce::CF::StringRef::from_get(&v31, @"type");
        (*(**v3 + 216))(&p_p);
        applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,unsigned int>(&__p, v31, &p_p);
        applesauce::CF::StringRef::from_get(&v30, @"subtype");
        (*(**v3 + 216))(value);
        applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,unsigned int>(v36, v30, value + 1);
        applesauce::CF::StringRef::from_get(&cf, @"manufacturer");
        (*(**v3 + 216))(&v26);
        applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,unsigned int>(v37, cf, v27);
        v32[0] = &__p;
        v32[1] = 3;
        CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(v32);
        v6 = 0;
        v32[2] = CFDictionaryRef;
        do
        {
          v7 = v37[v6 + 1];
          if (v7)
          {
            CFRelease(v7);
          }

          v8 = v37[v6];
          if (v8)
          {
            CFRelease(v8);
          }

          v6 -= 2;
        }

        while (v6 != -6);
        if (cf)
        {
          CFRelease(cf);
        }

        if (v30)
        {
          CFRelease(v30);
        }

        if (v31)
        {
          CFRelease(v31);
        }

        applesauce::CF::StringRef::from_get(&v26, @"aupreset");
        (*(**v3 + 344))(v32);
        v9 = v26;
        if (v26)
        {
          CFRetain(v26);
        }

        __p = v9;
        v10 = v32[0];
        if (v32[0])
        {
          CFRetain(v32[0]);
        }

        v35 = v10;
        applesauce::CF::StringRef::from_get(&v31, @"displayname");
        v11 = (*v3 + 40);
        if (*(*v3 + 63) < 0)
        {
          v11 = *v11;
        }

        v30 = v11;
        applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,char const*>(v36, v31, &v30);
        applesauce::CF::StringRef::from_get(&cf, @"bypass");
        v25 = (*(**v3 + 48))();
        applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,unsigned int>(v37, cf, &v25);
        applesauce::CF::StringRef::from_get(&v24, @"unit");
        v12 = v24;
        if (v24)
        {
          CFRetain(v24);
        }

        v38 = v12;
        CFRetain(CFDictionaryRef);
        v39 = CFDictionaryRef;
        p_p = &__p;
        v41 = 4;
        v13 = 0;
        value[0] = applesauce::CF::details::make_CFDictionaryRef(&p_p);
        do
        {
          v14 = *(&v39 + v13);
          if (v14)
          {
            CFRelease(v14);
          }

          v15 = *(&v38 + v13);
          if (v15)
          {
            CFRelease(v15);
          }

          v13 -= 16;
        }

        while (v13 != -64);
        if (v24)
        {
          CFRelease(v24);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        if (v31)
        {
          CFRelease(v31);
        }

        if (v32[0])
        {
          CFRelease(v32[0]);
        }

        if (v26)
        {
          CFRelease(v26);
        }

        CFArrayAppendValue(theArray, value[0]);
        if (value[0])
        {
          CFRelease(value[0]);
        }

        if (CFDictionaryRef)
        {
          CFRelease(CFDictionaryRef);
        }
      }

      ++v3;
    }

    while (v3 != v4);
  }

  applesauce::CF::StringRef::from_get(&v26, @"effects");
  v16 = theArray;
  applesauce::CF::ArrayRef::from_get(v32, theArray);
  v17 = v26;
  if (v26)
  {
    CFRetain(v26);
  }

  p_p = v17;
  v18 = v32[0];
  if (v32[0])
  {
    CFRetain(v32[0]);
  }

  v41 = v18;
  __p = &p_p;
  v35 = 1;
  v19 = applesauce::CF::details::make_CFDictionaryRef(&__p);
  value[0] = v19;
  if (v41)
  {
    CFRelease(v41);
  }

  if (p_p)
  {
    CFRelease(p_p);
  }

  if (v32[0])
  {
    CFRelease(v32[0]);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  CFRetain(v19);
  p_p = v19;
  std::vector<void const*>::vector[abi:ne200100](&__p, 1uLL);
  *__p = p_p;
  CFArray = applesauce::CF::details::make_CFArrayRef<void const*>(__p, v35);
  if (__p)
  {
    v35 = __p;
    operator delete(__p);
  }

  v26 = CFArray;
  if (p_p)
  {
    CFRelease(p_p);
  }

  applesauce::CF::StringRef::from_get(v32, @"strips");
  v21 = v32[0];
  if (v32[0])
  {
    CFRetain(v32[0]);
  }

  p_p = v21;
  CFRetain(CFArray);
  v41 = CFArray;
  __p = &p_p;
  v35 = 1;
  *a1 = applesauce::CF::details::make_CFDictionaryRef(&__p);
  if (v41)
  {
    CFRelease(v41);
  }

  if (p_p)
  {
    CFRelease(p_p);
  }

  if (v32[0])
  {
    CFRelease(v32[0]);
  }

  CFRelease(CFArray);
  CFRelease(v19);
  if (v16)
  {
    CFRelease(v16);
  }

  v22 = *MEMORY[0x1E69E9840];
}

void sub_1C9231EF0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, const void *a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, const void *a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29)
{
  applesauce::CF::TypeRefPair::~TypeRefPair((v29 - 120));
  applesauce::CF::StringRef::~StringRef(&a24);
  applesauce::CF::ArrayRef::~ArrayRef(&a15);
  JUMPOUT(0x1C9231F44);
}

void sub_1C9231F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v8 = va_arg(va1, const void *);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  applesauce::CF::TypeRefPair::~TypeRefPair((v6 - 120));
  applesauce::CF::ArrayRef::~ArrayRef(va1);
  applesauce::CF::StringRef::~StringRef(va);
  applesauce::CF::ObjectRef<__CFArray *>::~ObjectRef(&v7);
  JUMPOUT(0x1C9232078);
}

void sub_1C9232070(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1C9232078);
  }

  __clang_call_terminate(a1);
}

void *applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,unsigned int>(void *a1, CFTypeRef cf, int *a3)
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

void sub_1C9232134(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v2);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

const void **applesauce::CF::ObjectRef<__CFArray *>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void *std::vector<void const*>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if (!(a2 >> 61))
    {
      std::allocator<void const*>::allocate_at_least[abi:ne200100](a2);
    }

    std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_1C9232214(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

CFArrayRef applesauce::CF::details::make_CFArrayRef<void const*>(const void **values, uint64_t a2)
{
  result = CFArrayCreate(0, values, (a2 - values) >> 3, MEMORY[0x1E695E9C0]);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  return result;
}

void *std::vector<AudioDSPGraph::Box *>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      std::allocator<std::unique_ptr<ausdk::AUElement>>::allocate_at_least[abi:ne200100](a2);
    }

    std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::vector<AudioDSPGraph::Box *> AudioDSPGraph::GetBoxesSortedByName<AudioDSPGraph::Box *>(std::unordered_set<AudioDSPGraph::Box *> const&)::{lambda(AudioDSPGraph::Box *,AudioDSPGraph::Box *)#1} &,AudioDSPGraph::Box **,false>(uint64_t result, uint64_t *a2, uint64_t a3, char a4)
{
  v6 = result;
  while (2)
  {
    v146 = a2 - 1;
    v147 = a2;
    v143 = a2 - 3;
    v144 = a2 - 2;
    v7 = v6;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v8 = v7;
          v9 = a2 - v7;
          v10 = v9 - 2;
          if (v9 > 2)
          {
            switch(v9)
            {
              case 3:

                return std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<AudioDSPGraph::Box *> AudioDSPGraph::GetBoxesSortedByName<AudioDSPGraph::Box *>(std::unordered_set<AudioDSPGraph::Box *> const&)::{lambda(AudioDSPGraph::Box *,AudioDSPGraph::Box *)#1} &,AudioDSPGraph::Box **,0>(v7, v7 + 1, v146);
              case 4:

                return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<AudioDSPGraph::Box *> AudioDSPGraph::GetBoxesSortedByName<AudioDSPGraph::Box *>(std::unordered_set<AudioDSPGraph::Box *> const&)::{lambda(AudioDSPGraph::Box *,AudioDSPGraph::Box *)#1} &,AudioDSPGraph::Box **,0>(v7, v7 + 1, v7 + 2, v146);
              case 5:

                return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<AudioDSPGraph::Box *> AudioDSPGraph::GetBoxesSortedByName<AudioDSPGraph::Box *>(std::unordered_set<AudioDSPGraph::Box *> const&)::{lambda(AudioDSPGraph::Box *,AudioDSPGraph::Box *)#1} &,AudioDSPGraph::Box **,0>(v7, v7 + 1, v7 + 2, v7 + 3, v146);
            }
          }

          else
          {
            if (v9 < 2)
            {
              return result;
            }

            if (v9 == 2)
            {
              v67 = *v146;
              v68 = *v7;
              v69 = (*v146 + 40);
              if (*(*v146 + 63) < 0)
              {
                v69 = *v69;
              }

              v70 = (v68 + 40);
              if (*(v68 + 63) < 0)
              {
                v70 = *v70;
              }

              result = strcmp(v69, v70);
              if ((result & 0x80000000) != 0)
              {
                *v7 = v67;
                *v146 = v68;
              }

              return result;
            }
          }

          if (v9 <= 23)
          {
            v71 = v7 + 1;
            v73 = v7 == a2 || v71 == a2;
            if (a4)
            {
              if (!v73)
              {
                v74 = 0;
                v75 = v7;
                do
                {
                  v76 = v71;
                  v77 = v75[1];
                  v78 = (v77 + 40);
                  v79 = (v77 + 40);
                  if (*(v77 + 63) < 0)
                  {
                    v79 = *v78;
                  }

                  v80 = *v75;
                  v81 = (*v75 + 40);
                  if (*(*v75 + 63) < 0)
                  {
                    v81 = *v81;
                  }

                  result = strcmp(v79, v81);
                  if ((result & 0x80000000) != 0)
                  {
                    v82 = v74;
                    while (1)
                    {
                      *(v7 + v82 + 8) = v80;
                      if (!v82)
                      {
                        break;
                      }

                      v83 = (v77 + 40);
                      if (*(v77 + 63) < 0)
                      {
                        v83 = *v78;
                      }

                      v80 = *(v7 + v82 - 8);
                      v84 = (v80 + 40);
                      if (*(v80 + 63) < 0)
                      {
                        v84 = *v84;
                      }

                      result = strcmp(v83, v84);
                      v82 -= 8;
                      if ((result & 0x80000000) == 0)
                      {
                        v85 = (v7 + v82 + 8);
                        goto LABEL_146;
                      }
                    }

                    v85 = v7;
LABEL_146:
                    *v85 = v77;
                    a2 = v147;
                  }

                  v71 = v76 + 1;
                  v74 += 8;
                  v75 = v76;
                }

                while (v76 + 1 != a2);
              }
            }

            else if (!v73)
            {
              do
              {
                v134 = v71;
                v135 = v8[1];
                v136 = (v135 + 40);
                v137 = (v135 + 40);
                if (*(v135 + 63) < 0)
                {
                  v137 = *v136;
                }

                v138 = *v8;
                v139 = (*v8 + 40);
                if (*(*v8 + 63) < 0)
                {
                  v139 = *v139;
                }

                result = strcmp(v137, v139);
                if ((result & 0x80000000) != 0)
                {
                  v140 = v134;
                  do
                  {
                    *v140 = v138;
                    v141 = (v135 + 40);
                    if (*(v135 + 63) < 0)
                    {
                      v141 = *v136;
                    }

                    v138 = *(v140 - 2);
                    v142 = (v138 + 40);
                    if (*(v138 + 63) < 0)
                    {
                      v142 = *v142;
                    }

                    result = strcmp(v141, v142);
                    --v140;
                  }

                  while ((result & 0x80000000) != 0);
                  *v140 = v135;
                }

                v71 = v134 + 1;
                v8 = v134;
              }

              while (v134 + 1 != v147);
            }

            return result;
          }

          v149 = v7;
          if (!a3)
          {
            if (v7 != a2)
            {
              v86 = v10 >> 1;
              v87 = v10 >> 1;
              do
              {
                v88 = v87;
                if (v86 >= v87)
                {
                  v89 = (2 * v87) | 1;
                  v90 = &v149[v89];
                  if (2 * v87 + 2 < v9)
                  {
                    v91 = (*v90 + 40);
                    if (*(*v90 + 63) < 0)
                    {
                      v91 = *v91;
                    }

                    v92 = v90[1];
                    ++v90;
                    v93 = (v92 + 40);
                    if (*(v92 + 63) < 0)
                    {
                      v93 = *v93;
                    }

                    if (strcmp(v91, v93) < 0)
                    {
                      v89 = 2 * v88 + 2;
                    }

                    else
                    {
                      v90 = &v149[v89];
                    }
                  }

                  v94 = &v149[v88];
                  v95 = *v90;
                  v96 = *v94;
                  v97 = (*v90 + 40);
                  if (*(*v90 + 63) < 0)
                  {
                    v97 = *v97;
                  }

                  v98 = (v96 + 40);
                  v99 = (v96 + 40);
                  if (*(v96 + 63) < 0)
                  {
                    v99 = *v98;
                  }

                  result = strcmp(v97, v99);
                  if ((result & 0x80000000) == 0)
                  {
                    do
                    {
                      v100 = v90;
                      *v94 = v95;
                      if (v86 < v89)
                      {
                        break;
                      }

                      v101 = (2 * v89) | 1;
                      v90 = &v149[v101];
                      if (2 * v89 + 2 >= v9)
                      {
                        v89 = (2 * v89) | 1;
                      }

                      else
                      {
                        v102 = (*v90 + 40);
                        if (*(*v90 + 63) < 0)
                        {
                          v102 = *v102;
                        }

                        v103 = v90[1];
                        ++v90;
                        v104 = (v103 + 40);
                        if (*(v103 + 63) < 0)
                        {
                          v104 = *v104;
                        }

                        if (strcmp(v102, v104) < 0)
                        {
                          v89 = 2 * v89 + 2;
                        }

                        else
                        {
                          v90 = &v149[v101];
                          v89 = (2 * v89) | 1;
                        }
                      }

                      v95 = *v90;
                      v105 = (*v90 + 40);
                      if (*(*v90 + 63) < 0)
                      {
                        v105 = *v105;
                      }

                      v106 = (v96 + 40);
                      if (*(v96 + 63) < 0)
                      {
                        v106 = *v98;
                      }

                      result = strcmp(v105, v106);
                      v94 = v100;
                    }

                    while ((result & 0x80000000) == 0);
                    *v100 = v96;
                  }
                }

                v87 = v88 - 1;
              }

              while (v88);
              v107 = v147;
              v108 = v149;
              do
              {
                v109 = 0;
                v110 = *v108;
                do
                {
                  v111 = &v108[v109];
                  v112 = v111 + 1;
                  v113 = (2 * v109) | 1;
                  v114 = 2 * v109 + 2;
                  if (v114 >= v9)
                  {
                    v109 = (2 * v109) | 1;
                  }

                  else
                  {
                    v117 = v111[2];
                    v116 = v111 + 2;
                    v115 = v117;
                    v118 = *(v116 - 1);
                    v119 = (v118 + 40);
                    if (*(v118 + 63) < 0)
                    {
                      v119 = *v119;
                    }

                    v120 = (v115 + 40);
                    if (*(v115 + 63) < 0)
                    {
                      v120 = *v120;
                    }

                    result = strcmp(v119, v120);
                    if (result >= 0)
                    {
                      v109 = v113;
                    }

                    else
                    {
                      v112 = v116;
                      v109 = v114;
                    }
                  }

                  *v108 = *v112;
                  v108 = v112;
                }

                while (v109 <= (v9 - 2) / 2);
                if (v112 == --v107)
                {
                  *v112 = v110;
                }

                else
                {
                  *v112 = *v107;
                  *v107 = v110;
                  v121 = (v112 - v149 + 8) >> 3;
                  v122 = v121 < 2;
                  v123 = v121 - 2;
                  if (!v122)
                  {
                    v124 = v123 >> 1;
                    v125 = &v149[v123 >> 1];
                    v126 = *v125;
                    v127 = (*v125 + 40);
                    if (*(*v125 + 63) < 0)
                    {
                      v127 = *v127;
                    }

                    v128 = *v112;
                    v129 = (*v112 + 40);
                    v130 = v129;
                    if (*(*v112 + 63) < 0)
                    {
                      v130 = *v129;
                    }

                    result = strcmp(v127, v130);
                    if ((result & 0x80000000) != 0)
                    {
                      do
                      {
                        v131 = v125;
                        *v112 = v126;
                        if (!v124)
                        {
                          break;
                        }

                        v124 = (v124 - 1) >> 1;
                        v125 = &v149[v124];
                        v126 = *v125;
                        v132 = (*v125 + 40);
                        if (*(*v125 + 63) < 0)
                        {
                          v132 = *v132;
                        }

                        v133 = v129;
                        if (*(v128 + 63) < 0)
                        {
                          v133 = *v129;
                        }

                        result = strcmp(v132, v133);
                        v112 = v131;
                      }

                      while ((result & 0x80000000) != 0);
                      *v131 = v128;
                    }
                  }
                }

                v122 = v9-- <= 2;
                v108 = v149;
              }

              while (!v122);
            }

            return result;
          }

          v11 = v9 >> 1;
          v12 = &v7[v9 >> 1];
          if (v9 < 0x81)
          {
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<AudioDSPGraph::Box *> AudioDSPGraph::GetBoxesSortedByName<AudioDSPGraph::Box *>(std::unordered_set<AudioDSPGraph::Box *> const&)::{lambda(AudioDSPGraph::Box *,AudioDSPGraph::Box *)#1} &,AudioDSPGraph::Box **,0>(&v8[v9 >> 1], v8, v146);
          }

          else
          {
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<AudioDSPGraph::Box *> AudioDSPGraph::GetBoxesSortedByName<AudioDSPGraph::Box *>(std::unordered_set<AudioDSPGraph::Box *> const&)::{lambda(AudioDSPGraph::Box *,AudioDSPGraph::Box *)#1} &,AudioDSPGraph::Box **,0>(v8, &v8[v9 >> 1], v146);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<AudioDSPGraph::Box *> AudioDSPGraph::GetBoxesSortedByName<AudioDSPGraph::Box *>(std::unordered_set<AudioDSPGraph::Box *> const&)::{lambda(AudioDSPGraph::Box *,AudioDSPGraph::Box *)#1} &,AudioDSPGraph::Box **,0>(v8 + 1, v12 - 1, v144);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<AudioDSPGraph::Box *> AudioDSPGraph::GetBoxesSortedByName<AudioDSPGraph::Box *>(std::unordered_set<AudioDSPGraph::Box *> const&)::{lambda(AudioDSPGraph::Box *,AudioDSPGraph::Box *)#1} &,AudioDSPGraph::Box **,0>(v8 + 2, &v8[v11 + 1], v143);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<AudioDSPGraph::Box *> AudioDSPGraph::GetBoxesSortedByName<AudioDSPGraph::Box *>(std::unordered_set<AudioDSPGraph::Box *> const&)::{lambda(AudioDSPGraph::Box *,AudioDSPGraph::Box *)#1} &,AudioDSPGraph::Box **,0>(v12 - 1, &v8[v9 >> 1], &v8[v11 + 1]);
            v13 = *v8;
            *v8 = *v12;
            *v12 = v13;
          }

          --a3;
          v14 = *v8;
          v148 = a3;
          if (a4)
          {
            LOBYTE(v15) = *(v14 + 63);
            break;
          }

          v16 = *(v8 - 1);
          v17 = (v16 + 40);
          if (*(v16 + 63) < 0)
          {
            v17 = *v17;
          }

          v18 = (v14 + 40);
          v15 = *(v14 + 63);
          v19 = (v14 + 40);
          if (v15 < 0)
          {
            v19 = *v18;
          }

          if (strcmp(v17, v19) < 0)
          {
            break;
          }

          v45 = (v14 + 40);
          if (v15 < 0)
          {
            v45 = *v18;
          }

          v46 = (*v146 + 40);
          if (*(*v146 + 63) < 0)
          {
            v46 = *v46;
          }

          result = strcmp(v45, v46);
          if ((result & 0x80000000) != 0)
          {
            v7 = v8;
            do
            {
              v47 = (v14 + 40);
              if (v15 < 0)
              {
                v47 = *v18;
              }

              v48 = v7[1];
              ++v7;
              v49 = (v48 + 40);
              if (*(v48 + 63) < 0)
              {
                v49 = *v49;
              }

              result = strcmp(v47, v49);
            }

            while ((result & 0x80000000) == 0);
          }

          else
          {
            v50 = v8 + 1;
            do
            {
              v7 = v50;
              if (v50 >= a2)
              {
                break;
              }

              v51 = (v14 + 40);
              if (v15 < 0)
              {
                v51 = *v18;
              }

              v52 = (*v50 + 40);
              if (*(*v50 + 63) < 0)
              {
                v52 = *v52;
              }

              result = strcmp(v51, v52);
              v50 = v7 + 1;
            }

            while ((result & 0x80000000) == 0);
          }

          v53 = a2;
          if (v7 < a2)
          {
            v53 = a2;
            do
            {
              v54 = (v14 + 40);
              if (v15 < 0)
              {
                v54 = *v18;
              }

              v55 = *--v53;
              v56 = (v55 + 40);
              if (*(v55 + 63) < 0)
              {
                v56 = *v56;
              }

              result = strcmp(v54, v56);
            }

            while ((result & 0x80000000) != 0);
          }

          if (v7 < v53)
          {
            v57 = *v7;
            v58 = *v53;
            do
            {
              *v7 = v58;
              *v53 = v57;
              v59 = *(v14 + 63);
              do
              {
                v60 = v7[1];
                ++v7;
                v57 = v60;
                v61 = (v14 + 40);
                if (v59 < 0)
                {
                  v61 = *v18;
                }

                v62 = (v57 + 40);
                if (*(v57 + 63) < 0)
                {
                  v62 = *v62;
                }
              }

              while ((strcmp(v61, v62) & 0x80000000) == 0);
              do
              {
                v63 = *--v53;
                v58 = v63;
                v64 = (v14 + 40);
                if (v59 < 0)
                {
                  v64 = *v18;
                }

                v65 = (v58 + 40);
                if (*(v58 + 63) < 0)
                {
                  v65 = *v65;
                }

                result = strcmp(v64, v65);
              }

              while ((result & 0x80000000) != 0);
            }

            while (v7 < v53);
          }

          v66 = v7 - 1;
          if (v7 - 1 != v8)
          {
            *v8 = *v66;
          }

          a4 = 0;
          *v66 = v14;
        }

        v20 = (v14 + 40);
        v21 = v8;
        do
        {
          v23 = v21[1];
          ++v21;
          v22 = v23;
          v24 = (v23 + 40);
          if (*(v23 + 63) < 0)
          {
            v24 = *v24;
          }

          v25 = (v14 + 40);
          if ((v15 & 0x80) != 0)
          {
            v25 = *v20;
          }
        }

        while (strcmp(v24, v25) < 0);
        v26 = v21 - 1;
        v27 = a2;
        if (v21 - 1 == v149)
        {
          v27 = a2;
          do
          {
            if (v21 >= v27)
            {
              break;
            }

            v31 = *--v27;
            v32 = (v31 + 40);
            if (*(v31 + 63) < 0)
            {
              v32 = *v32;
            }

            v33 = (v14 + 40);
            if ((v15 & 0x80) != 0)
            {
              v33 = *v20;
            }
          }

          while ((strcmp(v32, v33) & 0x80000000) == 0);
        }

        else
        {
          do
          {
            v28 = *--v27;
            v29 = (v28 + 40);
            if (*(v28 + 63) < 0)
            {
              v29 = *v29;
            }

            v30 = (v14 + 40);
            if ((v15 & 0x80) != 0)
            {
              v30 = *v20;
            }
          }

          while ((strcmp(v29, v30) & 0x80000000) == 0);
        }

        if (v21 < v27)
        {
          v34 = *v27;
          v35 = v21;
          v36 = v27;
          do
          {
            *v35 = v34;
            *v36 = v22;
            v37 = *(v14 + 63);
            do
            {
              v38 = v35[1];
              ++v35;
              v22 = v38;
              v39 = (v38 + 40);
              if (*(v38 + 63) < 0)
              {
                v39 = *v39;
              }

              v40 = (v14 + 40);
              if (v37 < 0)
              {
                v40 = *v20;
              }
            }

            while (strcmp(v39, v40) < 0);
            v26 = v35 - 1;
            do
            {
              v41 = *--v36;
              v34 = v41;
              v42 = (v41 + 40);
              if (*(v41 + 63) < 0)
              {
                v42 = *v42;
              }

              v43 = (v14 + 40);
              if (v37 < 0)
              {
                v43 = *v20;
              }
            }

            while ((strcmp(v42, v43) & 0x80000000) == 0);
          }

          while (v35 < v36);
        }

        v6 = v149;
        if (v26 != v149)
        {
          *v149 = *v26;
        }

        *v26 = v14;
        a2 = v147;
        a3 = v148;
        if (v21 >= v27)
        {
          break;
        }

LABEL_62:
        result = std::__introsort<std::_ClassicAlgPolicy,std::vector<AudioDSPGraph::Box *> AudioDSPGraph::GetBoxesSortedByName<AudioDSPGraph::Box *>(std::unordered_set<AudioDSPGraph::Box *> const&)::{lambda(AudioDSPGraph::Box *,AudioDSPGraph::Box *)#1} &,AudioDSPGraph::Box **,false>(v149, v26, v148, a4 & 1);
        a4 = 0;
        v7 = v26 + 1;
      }

      v44 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<AudioDSPGraph::Box *> AudioDSPGraph::GetBoxesSortedByName<AudioDSPGraph::Box *>(std::unordered_set<AudioDSPGraph::Box *> const&)::{lambda(AudioDSPGraph::Box *,AudioDSPGraph::Box *)#1} &,AudioDSPGraph::Box **>(v149, v26);
      v7 = v26 + 1;
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<AudioDSPGraph::Box *> AudioDSPGraph::GetBoxesSortedByName<AudioDSPGraph::Box *>(std::unordered_set<AudioDSPGraph::Box *> const&)::{lambda(AudioDSPGraph::Box *,AudioDSPGraph::Box *)#1} &,AudioDSPGraph::Box **>(v26 + 1, v147);
      if (result)
      {
        break;
      }

      if (!v44)
      {
        goto LABEL_62;
      }
    }

    a2 = v26;
    if (!v44)
    {
      continue;
    }

    return result;
  }
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<AudioDSPGraph::Box *> AudioDSPGraph::GetBoxesSortedByName<AudioDSPGraph::Box *>(std::unordered_set<AudioDSPGraph::Box *> const&)::{lambda(AudioDSPGraph::Box *,AudioDSPGraph::Box *)#1} &,AudioDSPGraph::Box **,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *a2;
  v7 = *a1;
  v8 = (*a2 + 40);
  v9 = *(*a2 + 63);
  v10 = v8;
  if (v9 < 0)
  {
    v10 = *v8;
  }

  v11 = (v7 + 40);
  v12 = (v7 + 40);
  if (*(v7 + 63) < 0)
  {
    v12 = *v11;
  }

  v13 = strcmp(v10, v12);
  v14 = *a3;
  v15 = (*a3 + 40);
  v16 = *(*a3 + 63);
  if ((v13 & 0x80000000) == 0)
  {
    if (v16 < 0)
    {
      v15 = *v15;
      if ((v9 & 0x80000000) == 0)
      {
        goto LABEL_12;
      }
    }

    else if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    v8 = *v8;
LABEL_12:
    result = strcmp(v15, v8);
    if ((result & 0x80000000) != 0)
    {
      *a2 = v14;
      *a3 = v6;
      v18 = *a2;
      v19 = *a1;
      v20 = (*a2 + 40);
      if (*(*a2 + 63) < 0)
      {
        v20 = *v20;
      }

      v21 = (v19 + 40);
      if (*(v19 + 63) < 0)
      {
        v21 = *v21;
      }

      result = strcmp(v20, v21);
      if ((result & 0x80000000) != 0)
      {
        *a1 = v18;
        *a2 = v19;
      }
    }

    return result;
  }

  if (v16 < 0)
  {
    v15 = *v15;
    if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_28:
    v8 = *v8;
    goto LABEL_8;
  }

  if (v9 < 0)
  {
    goto LABEL_28;
  }

LABEL_8:
  result = strcmp(v15, v8);
  if ((result & 0x80000000) != 0)
  {
    *a1 = v14;
LABEL_25:
    *a3 = v7;
    return result;
  }

  *a1 = v6;
  *a2 = v7;
  v22 = *a3;
  v23 = (*a3 + 40);
  if (*(*a3 + 63) < 0)
  {
    v23 = *v23;
  }

  if (*(v7 + 63) < 0)
  {
    v11 = *v11;
  }

  result = strcmp(v23, v11);
  if ((result & 0x80000000) != 0)
  {
    *a2 = v22;
    goto LABEL_25;
  }

  return result;
}

uint64_t std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<AudioDSPGraph::Box *> AudioDSPGraph::GetBoxesSortedByName<AudioDSPGraph::Box *>(std::unordered_set<AudioDSPGraph::Box *> const&)::{lambda(AudioDSPGraph::Box *,AudioDSPGraph::Box *)#1} &,AudioDSPGraph::Box **,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<AudioDSPGraph::Box *> AudioDSPGraph::GetBoxesSortedByName<AudioDSPGraph::Box *>(std::unordered_set<AudioDSPGraph::Box *> const&)::{lambda(AudioDSPGraph::Box *,AudioDSPGraph::Box *)#1} &,AudioDSPGraph::Box **,0>(a1, a2, a3);
  v8 = *a4;
  v9 = *a3;
  v10 = (*a4 + 40);
  if (*(*a4 + 63) < 0)
  {
    v10 = *v10;
  }

  v11 = (v9 + 40);
  if (*(v9 + 63) < 0)
  {
    v11 = *v11;
  }

  result = strcmp(v10, v11);
  if ((result & 0x80000000) != 0)
  {
    *a3 = v8;
    *a4 = v9;
    v13 = *a3;
    v14 = *a2;
    v15 = (*a3 + 40);
    if (*(*a3 + 63) < 0)
    {
      v15 = *v15;
    }

    v16 = (v14 + 40);
    if (*(v14 + 63) < 0)
    {
      v16 = *v16;
    }

    result = strcmp(v15, v16);
    if ((result & 0x80000000) != 0)
    {
      *a2 = v13;
      *a3 = v14;
      v17 = *a2;
      v18 = *a1;
      v19 = (*a2 + 40);
      if (*(*a2 + 63) < 0)
      {
        v19 = *v19;
      }

      v20 = (v18 + 40);
      if (*(v18 + 63) < 0)
      {
        v20 = *v20;
      }

      result = strcmp(v19, v20);
      if ((result & 0x80000000) != 0)
      {
        *a1 = v17;
        *a2 = v18;
      }
    }
  }

  return result;
}

uint64_t std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<AudioDSPGraph::Box *> AudioDSPGraph::GetBoxesSortedByName<AudioDSPGraph::Box *>(std::unordered_set<AudioDSPGraph::Box *> const&)::{lambda(AudioDSPGraph::Box *,AudioDSPGraph::Box *)#1} &,AudioDSPGraph::Box **,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<AudioDSPGraph::Box *> AudioDSPGraph::GetBoxesSortedByName<AudioDSPGraph::Box *>(std::unordered_set<AudioDSPGraph::Box *> const&)::{lambda(AudioDSPGraph::Box *,AudioDSPGraph::Box *)#1} &,AudioDSPGraph::Box **,0>(a1, a2, a3, a4);
  v10 = *a5;
  v11 = *a4;
  v12 = (*a5 + 40);
  if (*(*a5 + 63) < 0)
  {
    v12 = *v12;
  }

  v13 = (v11 + 40);
  if (*(v11 + 63) < 0)
  {
    v13 = *v13;
  }

  result = strcmp(v12, v13);
  if ((result & 0x80000000) != 0)
  {
    *a4 = v10;
    *a5 = v11;
    v15 = *a4;
    v16 = *a3;
    v17 = (*a4 + 40);
    if (*(*a4 + 63) < 0)
    {
      v17 = *v17;
    }

    v18 = (v16 + 40);
    if (*(v16 + 63) < 0)
    {
      v18 = *v18;
    }

    result = strcmp(v17, v18);
    if ((result & 0x80000000) != 0)
    {
      *a3 = v15;
      *a4 = v16;
      v19 = *a3;
      v20 = *a2;
      v21 = (*a3 + 40);
      if (*(*a3 + 63) < 0)
      {
        v21 = *v21;
      }

      v22 = (v20 + 40);
      if (*(v20 + 63) < 0)
      {
        v22 = *v22;
      }

      result = strcmp(v21, v22);
      if ((result & 0x80000000) != 0)
      {
        *a2 = v19;
        *a3 = v20;
        v23 = *a2;
        v24 = *a1;
        v25 = (*a2 + 40);
        if (*(*a2 + 63) < 0)
        {
          v25 = *v25;
        }

        v26 = (v24 + 40);
        if (*(v24 + 63) < 0)
        {
          v26 = *v26;
        }

        result = strcmp(v25, v26);
        if ((result & 0x80000000) != 0)
        {
          *a1 = v23;
          *a2 = v24;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<AudioDSPGraph::Box *> AudioDSPGraph::GetBoxesSortedByName<AudioDSPGraph::Box *>(std::unordered_set<AudioDSPGraph::Box *> const&)::{lambda(AudioDSPGraph::Box *,AudioDSPGraph::Box *)#1} &,AudioDSPGraph::Box **>(uint64_t *a1, uint64_t *a2)
{
  v4 = a2 - a1;
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v5 = *(a2 - 1);
        v6 = *a1;
        v7 = (v5 + 40);
        if (*(v5 + 63) < 0)
        {
          v7 = *v7;
        }

        v8 = (v6 + 40);
        if (*(v6 + 63) < 0)
        {
          v8 = *v8;
        }

        if (strcmp(v7, v8) < 0)
        {
          *a1 = v5;
          *(a2 - 1) = v6;
        }

        return 1;
      }

      goto LABEL_15;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<AudioDSPGraph::Box *> AudioDSPGraph::GetBoxesSortedByName<AudioDSPGraph::Box *>(std::unordered_set<AudioDSPGraph::Box *> const&)::{lambda(AudioDSPGraph::Box *,AudioDSPGraph::Box *)#1} &,AudioDSPGraph::Box **,0>(a1, a1 + 1, a2 - 1);
      return 1;
    case 4:
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<AudioDSPGraph::Box *> AudioDSPGraph::GetBoxesSortedByName<AudioDSPGraph::Box *>(std::unordered_set<AudioDSPGraph::Box *> const&)::{lambda(AudioDSPGraph::Box *,AudioDSPGraph::Box *)#1} &,AudioDSPGraph::Box **,0>(a1, a1 + 1, a1 + 2, a2 - 1);
      return 1;
    case 5:
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<AudioDSPGraph::Box *> AudioDSPGraph::GetBoxesSortedByName<AudioDSPGraph::Box *>(std::unordered_set<AudioDSPGraph::Box *> const&)::{lambda(AudioDSPGraph::Box *,AudioDSPGraph::Box *)#1} &,AudioDSPGraph::Box **,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
      return 1;
  }

LABEL_15:
  v9 = a1 + 2;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<AudioDSPGraph::Box *> AudioDSPGraph::GetBoxesSortedByName<AudioDSPGraph::Box *>(std::unordered_set<AudioDSPGraph::Box *> const&)::{lambda(AudioDSPGraph::Box *,AudioDSPGraph::Box *)#1} &,AudioDSPGraph::Box **,0>(a1, a1 + 1, a1 + 2);
  v10 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v11 = 0;
  for (i = 24; ; i += 8)
  {
    v13 = *v10;
    v14 = (*v10 + 40);
    v15 = v14;
    if (*(*v10 + 63) < 0)
    {
      v15 = *v14;
    }

    v16 = *v9;
    v17 = (v16 + 40);
    if (*(v16 + 63) < 0)
    {
      v17 = *v17;
    }

    if (strcmp(v15, v17) < 0)
    {
      v18 = i;
      while (1)
      {
        *(a1 + v18) = v16;
        v19 = v18 - 8;
        if (v18 == 8)
        {
          break;
        }

        v20 = v14;
        if (*(v13 + 63) < 0)
        {
          v20 = *v14;
        }

        v16 = *(a1 + v18 - 16);
        v21 = (v16 + 40);
        if (*(v16 + 63) < 0)
        {
          v21 = *v21;
        }

        v22 = strcmp(v20, v21);
        v18 = v19;
        if ((v22 & 0x80000000) == 0)
        {
          v23 = (a1 + v19);
          goto LABEL_31;
        }
      }

      v23 = a1;
LABEL_31:
      *v23 = v13;
      if (++v11 == 8)
      {
        break;
      }
    }

    v9 = v10++;
    if (v10 == a2)
    {
      return 1;
    }
  }

  return v10 + 1 == a2;
}

void AudioDSPGraph::Graph::setPropertyStrip(AudioDSPGraph::Graph *this, CFTypeRef cf, const __CFString *a3)
{
  v255 = *MEMORY[0x1E69E9840];
  if (!cf)
  {
LABEL_483:
    std::string::basic_string[abi:ne200100]<0>(v223, "property strip is not valid");
    AudioDSPGraph::ThrowException(1886548769, v223, off_1E8335F58);
  }

  CFRetain(cf);
  v169 = cf;
  v4 = CFGetTypeID(cf);
  if (v4 != CFDictionaryGetTypeID())
  {
    CFRelease(v169);
    goto LABEL_483;
  }

  buf.__r_.__value_.__r.__words[0] = 0;
  applesauce::CF::at_or<applesauce::CF::TypeRef,__CFString const*>(&cfa, v169, @"Boxes", &buf);
  if (buf.__r_.__value_.__r.__words[0])
  {
    CFRelease(buf.__r_.__value_.__l.__data_);
  }

  v5 = cfa;
  if (!cfa)
  {
    std::string::basic_string[abi:ne200100]<0>(v221, "property strip 'Boxes' entry not found");
    AudioDSPGraph::ThrowException(1886548769, v221, off_1E8335F70);
  }

  v6 = CFGetTypeID(cfa);
  if (v6 != CFArrayGetTypeID())
  {
    std::string::basic_string[abi:ne200100]<0>(v220, "property strip 'Boxes' entry is not valid");
    AudioDSPGraph::ThrowException(1886548769, v220, off_1E8335F88);
  }

  v7 = CFGetTypeID(v5);
  if (v7 != CFArrayGetTypeID())
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  applesauce::CF::ArrayRef::from_get(&theArray, v5);
  v8 = &unk_1EC395000;
  {
    v8 = &unk_1EC395000;
    if (v168)
    {
      AudioDSPGraph::getLog(void)::gLog = os_log_create("com.apple.coreaudio", "AudioDSPGraph");
      v8 = &unk_1EC395000;
    }
  }

  spid = os_signpost_id_make_with_pointer(v8[171], this);
  v9 = theArray;
  if (!theArray)
  {
LABEL_372:
    v131 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v131, "Could not construct");
  }

  v177 = 0;
  v185 = spid - 1;
  alloc = *MEMORY[0x1E695E480];
  while (v177 < CFArrayGetCount(v9))
  {
    if (!theArray)
    {
      v150 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v150, "Could not construct");
    }

    buf.__r_.__value_.__r.__words[0] = 0;
    applesauce::CF::at_or<applesauce::CF::TypeRef>(&v218, theArray, v177, &buf);
    if (buf.__r_.__value_.__r.__words[0])
    {
      CFRelease(buf.__r_.__value_.__l.__data_);
    }

    v10 = v218;
    if (!v218 || (v11 = CFGetTypeID(v218), v11 != CFDictionaryGetTypeID()))
    {
      caulk::make_string("property strip 'Boxes[%zu]' entry is not valid", v217, v177);
      AudioDSPGraph::ThrowException(1886548769, v217, off_1E8335FA0);
    }

    v12 = CFGetTypeID(v10);
    if (v12 != CFDictionaryGetTypeID())
    {
      v149 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v149, "Could not construct");
    }

    applesauce::CF::DictionaryRef::from_get(&v216, v10);
    if (!v216)
    {
      v148 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v148, "Could not construct");
    }

    buf.__r_.__value_.__r.__words[0] = 0;
    applesauce::CF::at_or<applesauce::CF::TypeRef,__CFString const*>(&v215, v216, @"Name", &buf);
    if (buf.__r_.__value_.__r.__words[0])
    {
      CFRelease(buf.__r_.__value_.__l.__data_);
    }

    v13 = v215;
    if (!v215)
    {
      caulk::make_string("property strip 'Boxes[%zu].Name' entry not found", v214, v177);
      AudioDSPGraph::ThrowException(1886548769, v214, off_1E8335FB8);
    }

    v14 = CFGetTypeID(v215);
    if (v14 != CFStringGetTypeID())
    {
      caulk::make_string("property strip 'Boxes[%zu].Name' entry is not valid", v213, v177);
      AudioDSPGraph::ThrowException(1886548769, v213, off_1E8335FD0);
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, &byte_1C9279A7A);
    applesauce::CF::convert_as<std::string,0>(&buf, v13);
    if (v252)
    {
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v212, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      else
      {
        v212 = buf;
      }
    }

    else
    {
      v212 = __p;
      memset(&__p, 0, sizeof(__p));
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    size = HIBYTE(v212.__r_.__value_.__r.__words[2]);
    v16 = SHIBYTE(v212.__r_.__value_.__r.__words[2]);
    if ((v212.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v212.__r_.__value_.__l.__size_;
    }

    if (!size)
    {
      caulk::make_string("property strip 'Boxes[%zu].Name' entry is empty", v211, v177);
      AudioDSPGraph::ThrowException(1886548769, v211, off_1E8335FE8);
    }

    v17 = std::__hash_table<std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AudioDSPGraph::Box *>>>::find<std::string>(this + 117, &v212);
    if (!v17 || (v184 = v17[5]) == 0)
    {
      v146 = v212.__r_.__value_.__r.__words[0];
      if (v16 >= 0)
      {
        v146 = &v212;
      }

      caulk::make_string("box %s not found", v210, v146);
      AudioDSPGraph::ThrowException(1852204065, v210, off_1E8336000);
    }

    if (!v216)
    {
      v147 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v147, "Could not construct");
    }

    buf.__r_.__value_.__r.__words[0] = 0;
    applesauce::CF::at_or<applesauce::CF::TypeRef,__CFString const*>(&v209, v216, @"Properties", &buf);
    if (buf.__r_.__value_.__r.__words[0])
    {
      CFRelease(buf.__r_.__value_.__l.__data_);
    }

    v18 = v209;
    if (!v209)
    {
      caulk::make_string("property strip 'Boxes[%zu].Properties' entry not found", v208, v177);
      AudioDSPGraph::ThrowException(1886548769, v208, off_1E8336018);
    }

    v19 = CFGetTypeID(v209);
    if (v19 != CFArrayGetTypeID())
    {
      caulk::make_string("property strip 'Boxes[%zu].Properties' entry is not valid", v207, v177);
      AudioDSPGraph::ThrowException(1886548769, v207, off_1E8336030);
    }

    v20 = CFGetTypeID(v18);
    if (v20 != CFArrayGetTypeID())
    {
      v151 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v151, "Could not construct");
    }

    applesauce::CF::ArrayRef::from_get(&v206, v18);
    v21 = v206;
    if (!v206)
    {
      goto LABEL_394;
    }

    idx = 0;
    v179 = (v184 + 40);
LABEL_43:
    Count = CFArrayGetCount(v21);
    v23 = v206;
    if (idx < Count)
    {
      if (!v206)
      {
        v140 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v140, "Could not construct");
      }

      if (CFArrayGetCount(v206) > idx)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v23, idx);
        v25 = ValueAtIndex;
        if (ValueAtIndex)
        {
          CFRetain(ValueAtIndex);
          v26 = CFGetTypeID(v25);
          if (v26 == CFDictionaryGetTypeID())
          {
            CFRetain(v25);
            CFRelease(v25);
            v27 = 0;
            buf.__r_.__value_.__r.__words[0] = @"PropertyID";
            buf.__r_.__value_.__l.__size_ = @"Number";
            while (1)
            {
              v28 = applesauce::CF::details::at_key<__CFString const*&>(v25, *(&buf.__r_.__value_.__l.__data_ + v27));
              if (v28)
              {
                break;
              }

              v27 += 8;
              if (v27 == 16)
              {
                caulk::make_string("property strip 'Boxes[%zu].Properties[%zu].PropertyID' entry not found", v204, v177, idx);
                AudioDSPGraph::ThrowException(1886548769, v204, off_1E8336060);
              }
            }

            v29 = v28;
            CFRetain(v28);
            CFRetain(v29);
            CFRelease(v29);
            v30 = CFGetTypeID(v29);
            if (v30 != CFNumberGetTypeID())
            {
              v31 = CFGetTypeID(v29);
              if (v31 != CFStringGetTypeID())
              {
                caulk::make_string("property strip 'Boxes[%zu].Properties[%zu].PropertyID' entry is not valid", v203, v177, idx);
                AudioDSPGraph::ThrowException(1886548769, v203, off_1E8336078);
              }
            }

            v32 = applesauce::CF::convert_as<unsigned int,0>(v29);
            v33 = v25;
            if ((v32 & 0x100000000) != 0)
            {
              goto LABEL_83;
            }

            applesauce::CF::convert_as<std::string,0>(&buf, v29);
            if (v252 != 1)
            {
              v32 = 0;
              goto LABEL_80;
            }

            v34 = 0;
            if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_buf = &buf;
            }

            else
            {
              p_buf = buf.__r_.__value_.__r.__words[0];
            }

            LODWORD(__p.__r_.__value_.__l.__data_) = 0;
            v36 = p_buf;
            while (1)
            {
              v37 = v36->__r_.__value_.__s.__data_[0];
              if (v37 == 92)
              {
                if (v36->__r_.__value_.__s.__data_[1] != 120 || strlen(&v36->__r_.__value_.__s.__data_[2]) < 2)
                {
                  goto LABEL_78;
                }

                v39 = 0;
                v38 = (v36->__r_.__value_.__r.__words + 4);
                v40 = 2;
                do
                {
                  v41 = v39;
                  v42 = __tolower(v36->__r_.__value_.__s.__data_[v40]);
                  if (v42 > 0xFF || (*(MEMORY[0x1E69E9830] + 4 * v42 + 60) & 0x400) == 0 && v42 - 97 >= 6)
                  {
                    goto LABEL_78;
                  }

                  v39 = 1;
                  v40 = 3;
                }

                while ((v41 & 1) == 0);
                LODWORD(anURL) = 0;
                if (sscanf(&v36->__r_.__value_.__s.__data_[2], "%02X", &anURL) != 1)
                {
                  goto LABEL_78;
                }

                LOBYTE(v37) = anURL;
                if (anURL >= 0x100)
                {
                  goto LABEL_78;
                }
              }

              else
              {
                if (!v36->__r_.__value_.__s.__data_[0])
                {
                  v38 = v36;
LABEL_76:
                  if (v38 == p_buf)
                  {
LABEL_78:
                    v32 = 0;
                  }

                  else
                  {
                    v32 = bswap32(__p.__r_.__value_.__l.__data_) | 0x100000000;
                  }

                  v25 = v33;
LABEL_80:
                  if (v252 == 1 && SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                  {
                    v43 = v32;
                    operator delete(buf.__r_.__value_.__l.__data_);
                    v32 = v43;
                  }

LABEL_83:
                  if ((v32 & 0x100000000) == 0)
                  {
                    caulk::make_string("property strip 'Boxes[%zu].Properties[%zu].PropertyID' entry is not valid", v202, v177, idx);
                    AudioDSPGraph::ThrowException(1886548769, v202, off_1E8336090);
                  }

                  v188 = v32;
                  v44 = applesauce::CF::details::at_key<__CFString const*>(v25, @"Scope");
                  if (v44)
                  {
                    v45 = applesauce::CF::convert_as<unsigned int,0>(v44);
                    if ((v45 & 0x100000000) != 0)
                    {
                      v46 = v45;
                    }

                    else
                    {
                      v46 = 0;
                    }

                    v187 = v46;
                  }

                  else
                  {
                    v187 = 0;
                  }

                  v47 = applesauce::CF::details::at_key<__CFString const*>(v25, @"Element");
                  if (v47)
                  {
                    v47 = applesauce::CF::convert_as<unsigned int,0>(v47);
                  }

                  if ((v47 & 0x100000000) != 0)
                  {
                    v48 = v47;
                  }

                  else
                  {
                    v48 = 0;
                  }

                  v186 = v48;
                  buf.__r_.__value_.__r.__words[0] = 0;
                  applesauce::CF::at_or<applesauce::CF::TypeRef,__CFString const*>(&v248, v25, @"FeatureFlags", &buf);
                  if (buf.__r_.__value_.__r.__words[0])
                  {
                    CFRelease(buf.__r_.__value_.__l.__data_);
                  }

                  v49 = v248;
                  if (!v248)
                  {
                    goto LABEL_166;
                  }

                  v50 = CFGetTypeID(v248);
                  if (v50 != CFDictionaryGetTypeID())
                  {
                    caulk::make_string("property strip 'Boxes[%zu].Properties[%zu].FeatureFlags' entry is not valid", &buf, v177, idx);
                    AudioDSPGraph::ThrowException(1886548769, &buf, off_1E8336498);
                  }

                  v51 = CFGetTypeID(v49);
                  if (v51 != CFDictionaryGetTypeID())
                  {
                    v141 = __cxa_allocate_exception(0x10uLL);
                    std::runtime_error::runtime_error(v141, "Could not construct");
                  }

                  applesauce::CF::DictionaryRef::from_get(&v247, v49);
                  applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::DictionaryRef_iterator(&buf, v247);
                  applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::DictionaryRef_iterator(&__p, v247);
                  __p.__r_.__value_.__l.__size_ = (v244 - __p.__r_.__value_.__r.__words[2]) >> 3;
                  while (1)
                  {
                    if (buf.__r_.__value_.__r.__words[0] && buf.__r_.__value_.__l.__size_ != (v252 - buf.__r_.__value_.__r.__words[2]) >> 3)
                    {
                      v52 = __p.__r_.__value_.__r.__words[0];
                    }

                    else
                    {
                      v52 = __p.__r_.__value_.__r.__words[0];
                      if (!__p.__r_.__value_.__r.__words[0] || __p.__r_.__value_.__l.__size_ == (v244 - __p.__r_.__value_.__r.__words[2]) >> 3)
                      {
LABEL_152:
                        v67 = 2;
LABEL_153:
                        if (v245)
                        {
                          v246 = v245;
                          operator delete(v245);
                        }

                        if (__p.__r_.__value_.__r.__words[2])
                        {
                          v244 = __p.__r_.__value_.__r.__words[2];
                          operator delete(__p.__r_.__value_.__r.__words[2]);
                        }

                        if (v253)
                        {
                          v254 = v253;
                          operator delete(v253);
                        }

                        if (buf.__r_.__value_.__r.__words[2])
                        {
                          v252 = buf.__r_.__value_.__r.__words[2];
                          operator delete(buf.__r_.__value_.__r.__words[2]);
                        }

                        if (v247)
                        {
                          CFRelease(v247);
                        }

                        if (v67)
                        {
                          v69 = 0;
                          if (!v49)
                          {
LABEL_168:
                            if (!v69)
                            {
                              goto LABEL_337;
                            }

                            v225[0] = CFDictionaryGetValue(v25, @"Value");
                            if (v225[0])
                            {
                              {
                                AudioDSPGraph::getLog(void)::gLog = os_log_create("com.apple.coreaudio", "AudioDSPGraph");
                              }

                              if (v185 <= 0xFFFFFFFFFFFFFFFDLL)
                              {
                                v70 = AudioDSPGraph::getLog(void)::gLog;
                                if (os_signpost_enabled(AudioDSPGraph::getLog(void)::gLog))
                                {
                                  v71 = (v184 + 40);
                                  if (v184[63] < 0)
                                  {
                                    v71 = *v179;
                                  }

                                  LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
                                  *(buf.__r_.__value_.__r.__words + 4) = v71;
                                  _os_signpost_emit_with_name_impl(&dword_1C91AE000, v70, OS_SIGNPOST_INTERVAL_BEGIN, spid, "Box::setProperty", "%s", &buf, 0xCu);
                                }
                              }

                              v72 = (*(*v184 + 312))(v184, v188, v187, v186, 8, v225);
                              {
                                AudioDSPGraph::getLog(void)::gLog = os_log_create("com.apple.coreaudio", "AudioDSPGraph");
                              }

                              if (v185 <= 0xFFFFFFFFFFFFFFFDLL)
                              {
                                v73 = AudioDSPGraph::getLog(void)::gLog;
                                if (os_signpost_enabled(AudioDSPGraph::getLog(void)::gLog))
                                {
                                  v74 = (v184 + 40);
                                  if (v184[63] < 0)
                                  {
                                    v74 = *v179;
                                  }

                                  LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
                                  *(buf.__r_.__value_.__r.__words + 4) = v74;
                                  _os_signpost_emit_with_name_impl(&dword_1C91AE000, v73, OS_SIGNPOST_INTERVAL_END, spid, "Box::setProperty", "%s", &buf, 0xCu);
                                }
                              }

                              if (v72)
                              {
                                v142 = &v212;
                                if ((v212.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                                {
                                  v142 = v212.__r_.__value_.__r.__words[0];
                                }

                                caulk::make_string("%s setProperty %u %u %u failed with error %d", v201, v142, v188, v187, v186, v72);
                                AudioDSPGraph::ThrowException(v72, v201, off_1E83360A8);
                              }

                              goto LABEL_337;
                            }

                            applesauce::CF::details::find_at_key_or_optional<applesauce::CF::DataRef,__CFString const*>(&theData, v25, @"Data");
                            if (v230 == 1)
                            {
                              {
                                AudioDSPGraph::getLog(void)::gLog = os_log_create("com.apple.coreaudio", "AudioDSPGraph");
                              }

                              if (v185 <= 0xFFFFFFFFFFFFFFFDLL)
                              {
                                v75 = AudioDSPGraph::getLog(void)::gLog;
                                if (os_signpost_enabled(AudioDSPGraph::getLog(void)::gLog))
                                {
                                  v76 = (v184 + 40);
                                  if (v184[63] < 0)
                                  {
                                    v76 = *v179;
                                  }

                                  LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
                                  *(buf.__r_.__value_.__r.__words + 4) = v76;
                                  _os_signpost_emit_with_name_impl(&dword_1C91AE000, v75, OS_SIGNPOST_INTERVAL_BEGIN, spid, "Box::setProperty", "%s", &buf, 0xCu);
                                }
                              }

                              if ((v230 & 1) == 0)
                              {
                                std::__throw_bad_optional_access[abi:ne200100]();
                              }

                              if (!theData)
                              {
                                v144 = __cxa_allocate_exception(0x10uLL);
                                std::runtime_error::runtime_error(v144, "Could not construct");
                              }

                              Length = CFDataGetLength(theData);
                              if ((v230 & 1) == 0)
                              {
                                std::__throw_bad_optional_access[abi:ne200100]();
                              }

                              v78 = Length;
                              if (!theData)
                              {
                                v143 = __cxa_allocate_exception(0x10uLL);
                                std::runtime_error::runtime_error(v143, "Could not construct");
                              }

                              BytePtr = CFDataGetBytePtr(theData);
                              v80 = (*(*v184 + 312))(v184, v188, v187, v186, v78, BytePtr);
                              {
                                AudioDSPGraph::getLog(void)::gLog = os_log_create("com.apple.coreaudio", "AudioDSPGraph");
                              }

                              if (v185 <= 0xFFFFFFFFFFFFFFFDLL)
                              {
                                v81 = AudioDSPGraph::getLog(void)::gLog;
                                if (os_signpost_enabled(AudioDSPGraph::getLog(void)::gLog))
                                {
                                  v82 = (v184 + 40);
                                  if (v184[63] < 0)
                                  {
                                    v82 = *v179;
                                  }

                                  LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
                                  *(buf.__r_.__value_.__r.__words + 4) = v82;
                                  _os_signpost_emit_with_name_impl(&dword_1C91AE000, v81, OS_SIGNPOST_INTERVAL_END, spid, "Box::setProperty", "%s", &buf, 0xCu);
                                }
                              }

                              if (v80)
                              {
                                v145 = &v212;
                                if ((v212.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                                {
                                  v145 = v212.__r_.__value_.__r.__words[0];
                                }

                                caulk::make_string("%s setProperty %u %u %u failed with error %d", v200, v145, v188, v187, v186, v80);
                                AudioDSPGraph::ThrowException(v80, v200, off_1E83360C0);
                              }

LABEL_334:
                              if (v230 == 1 && theData)
                              {
                                CFRelease(theData);
                              }

LABEL_337:
                              CFRelease(v29);
                              CFRelease(v25);
                              ++idx;
                              v21 = v206;
                              if (!v206)
                              {
LABEL_394:
                                v139 = __cxa_allocate_exception(0x10uLL);
                                std::runtime_error::runtime_error(v139, "Could not construct");
                              }

                              goto LABEL_43;
                            }

                            v83 = applesauce::CF::details::at_key<char const*&>(v25, "UInt32");
                            if (v83)
                            {
                              v84 = applesauce::CF::convert_as<unsigned int,0>(v83);
                              if ((v84 & 0x100000000) != 0)
                              {
                                *v249 = v84;
                                v87 = (*(*v184 + 312))(v184, v188, v187, v186, 4, v249);
                                if (v87)
                                {
                                  if (v184[63] < 0)
                                  {
                                    v179 = *v179;
                                  }

                                  std::to_string(&__p, *v249);
                                  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                  {
                                    p_p = &__p;
                                  }

                                  else
                                  {
                                    p_p = __p.__r_.__value_.__r.__words[0];
                                  }

                                  caulk::make_string("%s setProperty %u %u %u to %s from property strip key %s failed with error %d", &buf, v179, v188, v187, v186, p_p, "UInt32", v87);
                                  AudioDSPGraph::ThrowException(v87, &buf, off_1E8336570);
                                }

                                goto LABEL_334;
                              }
                            }

                            v180 = applesauce::CF::details::at_key<char const*&>(v25, "UInt32");
                            if (v180 && (TypeID = CFArrayGetTypeID(), TypeID == CFGetTypeID(v180)))
                            {
                              v86 = CFArrayGetCount(v180);
                              if (v86 << 32)
                              {
                                v86 = v86;
                                if (!(v86 >> 62))
                                {
                                  std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v86);
                                }

                                std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
                              }

                              if (v86 < 1)
                              {
                                v176 = 0;
                              }

                              else
                              {
                                v88 = CFArrayGetValueAtIndex(v180, 0);
                                if ((applesauce::CF::convert_as<unsigned int,0>(v88) & 0x100000000) != 0)
                                {
                                  std::allocator<unsigned int>::allocate_at_least[abi:ne200100](1uLL);
                                }

                                v176 &= 0xFFFFFFFFFFFFFF00;
                              }

                              v25 = v33;
                            }

                            else
                            {
                              v176 &= 0xFFFFFFFFFFFFFF00;
                            }

                            v89 = applesauce::CF::details::at_key<char const*&>(v25, "UInt64");
                            if (v89)
                            {
                              v90 = applesauce::CF::convert_as<unsigned long long,0>(v89);
                              if (v91)
                              {
                                *v249 = v90;
                                v92 = (*(*v184 + 312))(v184, v188, v187, v186, 8, v249);
                                if (v92)
                                {
                                  if (v184[63] < 0)
                                  {
                                    v179 = *v179;
                                  }

                                  std::to_string(&__p, *v249);
                                  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                  {
                                    v153 = &__p;
                                  }

                                  else
                                  {
                                    v153 = __p.__r_.__value_.__r.__words[0];
                                  }

                                  caulk::make_string("%s setProperty %u %u %u to %s from property strip key %s failed with error %d", &buf, v179, v188, v187, v186, v153, "UInt64", v92);
                                  AudioDSPGraph::ThrowException(v92, &buf, off_1E83365A0);
                                }

                                goto LABEL_334;
                              }
                            }

                            v181 = applesauce::CF::details::at_key<char const*&>(v25, "UInt64");
                            if (v181 && (v93 = CFArrayGetTypeID(), v93 == CFGetTypeID(v181)))
                            {
                              v94 = CFArrayGetCount(v181);
                              if (v94 << 32)
                              {
                                v94 = v94;
                                if (!(v94 >> 61))
                                {
                                  std::allocator<std::pair<unsigned int,ausdk::AtomicValue<float>>>::allocate_at_least[abi:ne200100](v94);
                                }

                                std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
                              }

                              if (v94 < 1)
                              {
                                v175 = 0;
                              }

                              else
                              {
                                v95 = CFArrayGetValueAtIndex(v181, 0);
                                applesauce::CF::convert_as<unsigned long long,0>(v95);
                                if (v96)
                                {
                                  std::allocator<std::pair<unsigned int,ausdk::AtomicValue<float>>>::allocate_at_least[abi:ne200100](1uLL);
                                }

                                v175 &= 0xFFFFFFFFFFFFFF00;
                              }

                              v25 = v33;
                            }

                            else
                            {
                              v175 &= 0xFFFFFFFFFFFFFF00;
                            }

                            v97 = applesauce::CF::details::at_key<char const*&>(v25, "Float32");
                            if (v97)
                            {
                              v98 = applesauce::CF::convert_as<float,0>(v97);
                              if (HIDWORD(v98))
                              {
                                *v249 = v98;
                                v107 = (*(*v184 + 312))(v184, v188, v187, v186, 4, v249);
                                if (v107)
                                {
                                  if (v184[63] < 0)
                                  {
                                    v179 = *v179;
                                  }

                                  std::to_string(&__p, *v249);
                                  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                  {
                                    v156 = &__p;
                                  }

                                  else
                                  {
                                    v156 = __p.__r_.__value_.__r.__words[0];
                                  }

                                  caulk::make_string("%s setProperty %u %u %u to %s from property strip key %s failed with error %d", &buf, v179, v188, v187, v186, v156, "Float32", v107);
                                  AudioDSPGraph::ThrowException(v107, &buf, off_1E83365D0);
                                }

                                goto LABEL_334;
                              }
                            }

                            v182 = applesauce::CF::details::at_key<char const*&>(v25, "Float32");
                            if (v182 && (v99 = CFArrayGetTypeID(), v99 == CFGetTypeID(v182)))
                            {
                              v100 = CFArrayGetCount(v182);
                              if (v100 << 32)
                              {
                                v100 = v100;
                                if (!(v100 >> 62))
                                {
                                  std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v100);
                                }

                                std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
                              }

                              if (v100 < 1)
                              {
                                v25 = v33;
                                v174 = 0;
                              }

                              else
                              {
                                v128 = CFArrayGetValueAtIndex(v182, 0);
                                if (applesauce::CF::convert_as<float,0>(v128) >> 32)
                                {
                                  std::allocator<unsigned int>::allocate_at_least[abi:ne200100](1uLL);
                                }

                                v174 &= 0xFFFFFFFFFFFFFF00;
                                v25 = v33;
                              }
                            }

                            else
                            {
                              v174 &= 0xFFFFFFFFFFFFFF00;
                            }

                            v101 = applesauce::CF::details::at_key<char const*&>(v25, "Float64");
                            if (v101)
                            {
                              v102 = applesauce::CF::convert_as<double,0>(v101);
                              if (v103)
                              {
                                *v249 = v102;
                                v104 = (*(*v184 + 312))(v184, v188, v187, v186, 8, v249);
                                if (v104)
                                {
                                  if (v184[63] < 0)
                                  {
                                    v179 = *v179;
                                  }

                                  std::to_string(&__p, *v249);
                                  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                  {
                                    v160 = &__p;
                                  }

                                  else
                                  {
                                    v160 = __p.__r_.__value_.__r.__words[0];
                                  }

                                  caulk::make_string("%s setProperty %u %u %u to %s from property strip key %s failed with error %d", &buf, v179, v188, v187, v186, v160, "Float64", v104);
                                  AudioDSPGraph::ThrowException(v104, &buf, off_1E8336600);
                                }

                                goto LABEL_334;
                              }
                            }

                            v183 = applesauce::CF::details::at_key<char const*&>(v25, "Float64");
                            if (v183 && (v105 = CFArrayGetTypeID(), v105 == CFGetTypeID(v183)))
                            {
                              v106 = CFArrayGetCount(v183);
                              if (v106 << 32)
                              {
                                v106 = v106;
                                if (!(v106 >> 61))
                                {
                                  std::allocator<std::pair<unsigned int,ausdk::AtomicValue<float>>>::allocate_at_least[abi:ne200100](v106);
                                }

                                std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
                              }

                              if (v106 < 1)
                              {
                                v25 = v33;
                                v172 = 0;
                              }

                              else
                              {
                                v129 = CFArrayGetValueAtIndex(v183, 0);
                                applesauce::CF::convert_as<double,0>(v129);
                                if (v130)
                                {
                                  std::allocator<std::pair<unsigned int,ausdk::AtomicValue<float>>>::allocate_at_least[abi:ne200100](1uLL);
                                }

                                v172 &= 0xFFFFFFFFFFFFFF00;
                                v25 = v33;
                              }
                            }

                            else
                            {
                              v172 &= 0xFFFFFFFFFFFFFF00;
                            }

                            applesauce::CF::details::find_at_key_or_optional<applesauce::CF::StringRef,__CFString const*>(&__p, v25, @"FilePath");
                            if (__p.__r_.__value_.__s.__data_[8] == 1)
                            {
                              AudioDSPGraph::createAbsoluteURL(&anURL, __p.__r_.__value_.__l.__data_, a3);
                              if (!anURL)
                              {
                                v157 = __cxa_allocate_exception(0x10uLL);
                                std::runtime_error::runtime_error(v157, "Could not construct");
                              }

                              v108 = CFURLCopyFileSystemPath(anURL, kCFURLPOSIXPathStyle);
                              *v249 = v108;
                              if (!v108)
                              {
                                goto LABEL_442;
                              }

                              v109 = CFGetTypeID(v108);
                              if (v109 != CFStringGetTypeID())
                              {
                                v158 = __cxa_allocate_exception(0x10uLL);
                                std::runtime_error::runtime_error(v158, "Could not construct");
                              }

                              if (!*v249)
                              {
LABEL_442:
                                if (__p.__r_.__value_.__s.__data_[8])
                                {
                                  v154 = applesauce::CF::StringRef::operator->(&__p);
                                  std::string::basic_string[abi:ne200100]<0>(v198, "???");
                                  applesauce::CF::StringRef_proxy::convert_or(&buf, *v154, v198);
                                  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                  {
                                    v155 = &buf;
                                  }

                                  else
                                  {
                                    v155 = buf.__r_.__value_.__r.__words[0];
                                  }

                                  caulk::make_string("Couldn't create file path '%s'. CFURLCopyFileSystemPath failed.", v199, v155);
                                  AudioDSPGraph::ThrowException(1886548769, v199, off_1E83360D8);
                                }

                                std::__throw_bad_optional_access[abi:ne200100]();
                              }

                              stream[0] = *v249;
                              {
                                AudioDSPGraph::getLog(void)::gLog = os_log_create("com.apple.coreaudio", "AudioDSPGraph");
                              }

                              if (v185 <= 0xFFFFFFFFFFFFFFFDLL)
                              {
                                v110 = AudioDSPGraph::getLog(void)::gLog;
                                if (os_signpost_enabled(AudioDSPGraph::getLog(void)::gLog))
                                {
                                  v111 = (v184 + 40);
                                  if (v184[63] < 0)
                                  {
                                    v111 = *v179;
                                  }

                                  LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
                                  *(buf.__r_.__value_.__r.__words + 4) = v111;
                                  _os_signpost_emit_with_name_impl(&dword_1C91AE000, v110, OS_SIGNPOST_INTERVAL_BEGIN, spid, "Box::setProperty", "%s", &buf, 0xCu);
                                }
                              }

                              v112 = (*(*v184 + 312))(v184, v188, v187, v186, 8, stream);
                              {
                                AudioDSPGraph::getLog(void)::gLog = os_log_create("com.apple.coreaudio", "AudioDSPGraph");
                              }

                              if (v185 <= 0xFFFFFFFFFFFFFFFDLL)
                              {
                                v113 = AudioDSPGraph::getLog(void)::gLog;
                                if (os_signpost_enabled(AudioDSPGraph::getLog(void)::gLog))
                                {
                                  v114 = (v184 + 40);
                                  if (v184[63] < 0)
                                  {
                                    v114 = *v179;
                                  }

                                  LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
                                  *(buf.__r_.__value_.__r.__words + 4) = v114;
                                  _os_signpost_emit_with_name_impl(&dword_1C91AE000, v113, OS_SIGNPOST_INTERVAL_END, spid, "Box::setProperty", "%s", &buf, 0xCu);
                                }
                              }

                              if (v112)
                              {
                                v159 = &v212;
                                if ((v212.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                                {
                                  v159 = v212.__r_.__value_.__r.__words[0];
                                }

                                caulk::make_string("%s setProperty %u %u %u failed with error %d", v197, v159, v188, v187, v186, v112);
                                AudioDSPGraph::ThrowException(v112, v197, off_1E83360F0);
                              }

                              if (*v249)
                              {
                                CFRelease(*v249);
                              }

                              v115 = anURL;
                              if (anURL)
                              {
LABEL_320:
                                CFRelease(v115);
                              }

LABEL_321:
                              if (__p.__r_.__value_.__s.__data_[8] == 1 && __p.__r_.__value_.__r.__words[0])
                              {
                                CFRelease(__p.__r_.__value_.__l.__data_);
                              }

                              goto LABEL_334;
                            }

                            applesauce::CF::details::find_at_key_or_optional<applesauce::CF::StringRef,__CFString const*>(&anURL, v25, @"Path");
                            if (BYTE8(anURL) == 1)
                            {
                              AudioDSPGraph::createAbsoluteURL(v249, anURL, a3);
                              v116 = CFReadStreamCreateWithFile(alloc, *v249);
                              stream[0] = v116;
                              if (!v116)
                              {
                                if (BYTE8(anURL))
                                {
                                  v161 = applesauce::CF::StringRef::operator->(&anURL);
                                  std::string::basic_string[abi:ne200100]<0>(v195, "???");
                                  applesauce::CF::StringRef_proxy::convert_or(&buf, *v161, v195);
                                  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                  {
                                    v162 = &buf;
                                  }

                                  else
                                  {
                                    v162 = buf.__r_.__value_.__r.__words[0];
                                  }

                                  caulk::make_string("Couldn't load plist from path '%s'. CFReadStreamCreateWithFile failed.", v196, v162);
                                  AudioDSPGraph::ThrowException(1886548769, v196, off_1E8336108);
                                }

                                std::__throw_bad_optional_access[abi:ne200100]();
                              }

                              CFReadStreamOpen(v116);
                              v241 = CFPropertyListCreateWithStream(alloc, stream[0], 0, 0, 0, 0);
                              CFReadStreamClose(stream[0]);
                              if (!v241)
                              {
                                if (BYTE8(anURL))
                                {
                                  v164 = applesauce::CF::StringRef::operator->(&anURL);
                                  std::string::basic_string[abi:ne200100]<0>(v193, "???");
                                  applesauce::CF::StringRef_proxy::convert_or(&buf, *v164, v193);
                                  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                  {
                                    v165 = &buf;
                                  }

                                  else
                                  {
                                    v165 = buf.__r_.__value_.__r.__words[0];
                                  }

                                  caulk::make_string("Couldn't load plist from path '%s'. CFPropertyListCreateWithStream failed.", v194, v165);
                                  AudioDSPGraph::ThrowException(1886548769, v194, off_1E8336120);
                                }

                                std::__throw_bad_optional_access[abi:ne200100]();
                              }

                              v227 = v241;
                              {
                                AudioDSPGraph::getLog(void)::gLog = os_log_create("com.apple.coreaudio", "AudioDSPGraph");
                              }

                              if (v185 <= 0xFFFFFFFFFFFFFFFDLL)
                              {
                                v117 = AudioDSPGraph::getLog(void)::gLog;
                                if (os_signpost_enabled(AudioDSPGraph::getLog(void)::gLog))
                                {
                                  v118 = (v184 + 40);
                                  if (v184[63] < 0)
                                  {
                                    v118 = *v179;
                                  }

                                  LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
                                  *(buf.__r_.__value_.__r.__words + 4) = v118;
                                  _os_signpost_emit_with_name_impl(&dword_1C91AE000, v117, OS_SIGNPOST_INTERVAL_BEGIN, spid, "Box::setProperty", "%s", &buf, 0xCu);
                                }
                              }

                              v119 = (*(*v184 + 312))(v184, v188, v187, v186, 8, &v227);
                              {
                                AudioDSPGraph::getLog(void)::gLog = os_log_create("com.apple.coreaudio", "AudioDSPGraph");
                              }

                              if (v185 <= 0xFFFFFFFFFFFFFFFDLL)
                              {
                                v120 = AudioDSPGraph::getLog(void)::gLog;
                                if (os_signpost_enabled(AudioDSPGraph::getLog(void)::gLog))
                                {
                                  v121 = (v184 + 40);
                                  if (v184[63] < 0)
                                  {
                                    v121 = *v179;
                                  }

                                  LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
                                  *(buf.__r_.__value_.__r.__words + 4) = v121;
                                  _os_signpost_emit_with_name_impl(&dword_1C91AE000, v120, OS_SIGNPOST_INTERVAL_END, spid, "Box::setProperty", "%s", &buf, 0xCu);
                                }
                              }

                              if (v119)
                              {
                                v163 = &v212;
                                if ((v212.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                                {
                                  v163 = v212.__r_.__value_.__r.__words[0];
                                }

                                caulk::make_string("%s setProperty %u %u %u failed with error %d", v192, v163, v188, v187, v186, v119);
                                AudioDSPGraph::ThrowException(v119, v192, off_1E8336138);
                              }

                              if (v241)
                              {
                                CFRelease(v241);
                              }

                              if (stream[0])
                              {
                                CFRelease(stream[0]);
                              }

                              v122 = *v249;
                              if (*v249)
                              {
                                goto LABEL_317;
                              }
                            }

                            else
                            {
                              applesauce::CF::details::find_at_key_or_optional<applesauce::CF::StringRef,__CFString const*>(&buf, v25, @"URL");
                              if (buf.__r_.__value_.__s.__data_[8] != 1)
                              {
                                std::string::basic_string[abi:ne200100]<0>(v190, "Must provide either a 'Value', 'Data', 'Path', 'FilePath', 'URL', or a recognized number type for properties");
                                AudioDSPGraph::ThrowException(1886548769, v190, off_1E8336168);
                              }

                              AudioDSPGraph::createAbsoluteURL(stream, buf.__r_.__value_.__l.__data_, a3);
                              v241 = stream[0];
                              {
                                AudioDSPGraph::getLog(void)::gLog = os_log_create("com.apple.coreaudio", "AudioDSPGraph");
                              }

                              if (v185 <= 0xFFFFFFFFFFFFFFFDLL)
                              {
                                v123 = AudioDSPGraph::getLog(void)::gLog;
                                if (os_signpost_enabled(AudioDSPGraph::getLog(void)::gLog))
                                {
                                  v124 = v184 + 40;
                                  if (v184[63] < 0)
                                  {
                                    v124 = *v179;
                                  }

                                  *v249 = 136315138;
                                  *&v249[4] = v124;
                                  _os_signpost_emit_with_name_impl(&dword_1C91AE000, v123, OS_SIGNPOST_INTERVAL_BEGIN, spid, "Box::setProperty", "%s", v249, 0xCu);
                                }
                              }

                              v125 = (*(*v184 + 312))(v184, v188, v187, v186, 8, &v241);
                              {
                                AudioDSPGraph::getLog(void)::gLog = os_log_create("com.apple.coreaudio", "AudioDSPGraph");
                              }

                              if (v185 <= 0xFFFFFFFFFFFFFFFDLL)
                              {
                                v126 = AudioDSPGraph::getLog(void)::gLog;
                                if (os_signpost_enabled(AudioDSPGraph::getLog(void)::gLog))
                                {
                                  v127 = v184 + 40;
                                  if (v184[63] < 0)
                                  {
                                    v127 = *v179;
                                  }

                                  *v249 = 136315138;
                                  *&v249[4] = v127;
                                  _os_signpost_emit_with_name_impl(&dword_1C91AE000, v126, OS_SIGNPOST_INTERVAL_END, spid, "Box::setProperty", "%s", v249, 0xCu);
                                }
                              }

                              if (v125)
                              {
                                v166 = &v212;
                                if ((v212.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                                {
                                  v166 = v212.__r_.__value_.__r.__words[0];
                                }

                                caulk::make_string("%s setProperty %u %u %u failed with error %d", v191, v166, v188, v187, v186, v125);
                                AudioDSPGraph::ThrowException(v125, v191, off_1E8336150);
                              }

                              if (stream[0])
                              {
                                CFRelease(stream[0]);
                              }

                              if (buf.__r_.__value_.__s.__data_[8] == 1)
                              {
                                v122 = buf.__r_.__value_.__r.__words[0];
                                if (buf.__r_.__value_.__r.__words[0])
                                {
LABEL_317:
                                  CFRelease(v122);
                                }
                              }
                            }

                            if (BYTE8(anURL) == 1)
                            {
                              v115 = anURL;
                              if (anURL)
                              {
                                goto LABEL_320;
                              }
                            }

                            goto LABEL_321;
                          }

LABEL_167:
                          CFRelease(v49);
                          goto LABEL_168;
                        }

LABEL_166:
                        v69 = 1;
                        if (!v49)
                        {
                          goto LABEL_168;
                        }

                        goto LABEL_167;
                      }
                    }

                    if (*&buf.__r_.__value_.__l.__data_ == __PAIR128__(__p.__r_.__value_.__l.__size_, v52))
                    {
                      goto LABEL_152;
                    }

                    applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::dereference(&v241, &buf);
                    v53 = v241;
                    if (!v241 || (v54 = CFGetTypeID(v241), v54 != CFStringGetTypeID()))
                    {
                      caulk::make_string("property strip 'Boxes[%zu].Properties[%zu].FeatureFlags' entry is not valid", &anURL, v177, idx);
                      AudioDSPGraph::ThrowException(1886548769, &anURL, off_1E83364B0);
                    }

                    applesauce::CF::convert_as<std::string,0>(&anURL, v53);
                    if (v237 == 1)
                    {
                      *v249 = anURL;
                      v250 = v236;
                    }

                    else
                    {
                      std::string::basic_string[abi:ne200100]<0>(v249, &byte_1C9279A7A);
                    }

                    v55 = v242;
                    if (!v242 || (v56 = CFGetTypeID(v242), v56 != CFDictionaryGetTypeID()))
                    {
                      if (SHIBYTE(v250) >= 0)
                      {
                        v137 = v249;
                      }

                      else
                      {
                        v137 = *v249;
                      }

                      caulk::make_string("property strip 'Boxes[%zu].Properties[%zu].FeatureFlags.%s' entry is not valid", &anURL, v177, idx, v137);
                      AudioDSPGraph::ThrowException(1886548769, &anURL, off_1E83364C8);
                    }

                    v57 = CFGetTypeID(v55);
                    if (v57 != CFDictionaryGetTypeID())
                    {
                      v138 = __cxa_allocate_exception(0x10uLL);
                      std::runtime_error::runtime_error(v138, "Could not construct");
                    }

                    applesauce::CF::DictionaryRef::from_get(&v240, v55);
                    applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::DictionaryRef_iterator(&anURL, v240);
                    applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::DictionaryRef_iterator(&theData, v240);
                    v230 = (v232 - v231) >> 3;
                    while (1)
                    {
                      if (anURL && *(&anURL + 1) != (v237 - v236) >> 3)
                      {
                        v58 = theData;
                      }

                      else
                      {
                        v58 = theData;
                        if (!theData || v230 == (v232 - v231) >> 3)
                        {
LABEL_136:
                          v67 = 0;
                          v68 = 1;
                          goto LABEL_138;
                        }
                      }

                      if (anURL == __PAIR128__(v230, v58))
                      {
                        goto LABEL_136;
                      }

                      applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::dereference(&v227, &anURL);
                      v59 = v227;
                      if (!v227 || (v60 = CFGetTypeID(v227), v60 != CFStringGetTypeID()))
                      {
                        if (SHIBYTE(v250) >= 0)
                        {
                          v135 = v249;
                        }

                        else
                        {
                          v135 = *v249;
                        }

                        caulk::make_string("property strip 'Boxes[%zu].Properties[%zu].FeatureFlags.%s' entry is not valid", v225, v177, idx, v135);
                        AudioDSPGraph::ThrowException(1886548769, v225, off_1E83364E0);
                      }

                      applesauce::CF::convert_to<std::string,0>(v225, v59);
                      v61 = v228;
                      if (!v228 || (v62 = CFGetTypeID(v228), v62 != CFBooleanGetTypeID()))
                      {
                        v133 = v249;
                        if (SHIBYTE(v250) < 0)
                        {
                          v133 = *v249;
                        }

                        v134 = v225;
                        if (v226 < 0)
                        {
                          v134 = v225[0];
                        }

                        caulk::make_string("property strip 'Boxes[%zu].Properties[%zu].FeatureFlags.%s.%s' entry is not valid", stream, v177, idx, v133, v134);
                        AudioDSPGraph::ThrowException(1886548769, stream, off_1E83364F8);
                      }

                      v63 = CFBooleanGetTypeID();
                      if (v63 == CFGetTypeID(v61))
                      {
                        v64 = CFBooleanGetValue(v61) != 0;
                      }

                      else
                      {
                        v65 = CFNumberGetTypeID();
                        if (v65 != CFGetTypeID(v61) || (v64 = applesauce::CF::details::number_convert_as<BOOL>(v61), v64 <= 0xFFu))
                        {
                          v136 = __cxa_allocate_exception(0x10uLL);
                          std::runtime_error::runtime_error(v136, "Could not convert");
                        }
                      }

                      v66 = _os_feature_enabled_impl();
                      if (v226 < 0)
                      {
                        operator delete(v225[0]);
                      }

                      CFRelease(v61);
                      CFRelease(v59);
                      if ((v64 ^ v66))
                      {
                        break;
                      }

                      ++*(&anURL + 1);
                      v25 = v33;
                    }

                    v68 = 0;
                    v67 = 1;
                    v25 = v33;
LABEL_138:
                    if (v233)
                    {
                      v234 = v233;
                      operator delete(v233);
                    }

                    if (v231)
                    {
                      v232 = v231;
                      operator delete(v231);
                    }

                    if (v238)
                    {
                      v239 = v238;
                      operator delete(v238);
                    }

                    if (v236)
                    {
                      v237 = v236;
                      operator delete(v236);
                    }

                    if (v240)
                    {
                      CFRelease(v240);
                    }

                    if (SHIBYTE(v250) < 0)
                    {
                      operator delete(*v249);
                    }

                    CFRelease(v55);
                    CFRelease(v53);
                    if (!v68)
                    {
                      goto LABEL_153;
                    }

                    ++buf.__r_.__value_.__l.__size_;
                  }
                }

                v38 = (&v36->__r_.__value_.__l.__data_ + 1);
              }

              __p.__r_.__value_.__s.__data_[v34++] = v37;
              v36 = v38;
              if (v34 == 4)
              {
                goto LABEL_76;
              }
            }
          }

          CFRelease(v25);
        }
      }

      caulk::make_string("property strip 'Boxes[%zu].Properties[%zu]' entry is not valid", v205, v177, idx);
      AudioDSPGraph::ThrowException(1886548769, v205, off_1E8336048);
    }

    if (v206)
    {
      CFRelease(v206);
    }

    if (v209)
    {
      CFRelease(v209);
    }

    if (SHIBYTE(v212.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v212.__r_.__value_.__l.__data_);
    }

    if (v215)
    {
      CFRelease(v215);
    }

    if (v216)
    {
      CFRelease(v216);
    }

    if (v218)
    {
      CFRelease(v218);
    }

    ++v177;
    v9 = theArray;
    if (!theArray)
    {
      goto LABEL_372;
    }
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (cfa)
  {
    CFRelease(cfa);
  }

  CFRelease(v169);
  v132 = *MEMORY[0x1E69E9840];
}

void sub_1C9236274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, CFTypeRef a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, void *__p, uint64_t a55, int a56, __int16 a57, char a58, char a59)
{
  if (a59 < 0)
  {
    operator delete(__p);
  }

  if (*(v61 - 153) < 0)
  {
    operator delete(*(v61 - 176));
  }

  if (a53 < 0)
  {
    operator delete(a48);
  }

  applesauce::CF::ObjectRef<void const*>::~ObjectRef(&STACK[0x480]);
  applesauce::CF::ObjectRef<__CFReadStream *>::~ObjectRef(&STACK[0x3B8]);
  applesauce::CF::URLRef::~URLRef((v61 - 208));
  std::optional<applesauce::CF::StringRef>::~optional(&STACK[0x438]);
  std::optional<applesauce::CF::StringRef>::~optional(&STACK[0x490]);
  std::optional<applesauce::CF::DataRef>::~optional(&STACK[0x3F8]);
  CFRelease(v59);
  CFRelease(v60);
  if (STACK[0x270])
  {
    CFRelease(STACK[0x270]);
  }

  if (STACK[0x2A8])
  {
    CFRelease(STACK[0x2A8]);
  }

  if (SLOBYTE(STACK[0x2F7]) < 0)
  {
    operator delete(STACK[0x2E0]);
  }

  if (STACK[0x330])
  {
    CFRelease(STACK[0x330]);
  }

  if (STACK[0x338])
  {
    CFRelease(STACK[0x338]);
  }

  if (STACK[0x358])
  {
    CFRelease(STACK[0x358]);
  }

  if (STACK[0x360])
  {
    CFRelease(STACK[0x360]);
  }

  if (STACK[0x398])
  {
    CFRelease(STACK[0x398]);
  }

  CFRelease(a17);
  _Unwind_Resume(a1);
}

CFTypeID applesauce::CF::convert_as<std::string,0>(CFTypeID result, const __CFString *a2)
{
  v2 = result;
  if (a2 && (TypeID = CFStringGetTypeID(), result = CFGetTypeID(a2), TypeID == result))
  {
    result = applesauce::CF::details::CFString_get_value<false>(&v5, a2);
    *v2 = v5;
    *(v2 + 16) = v6;
    *(v2 + 24) = 1;
  }

  else
  {
    *v2 = 0;
    *(v2 + 24) = 0;
  }

  return result;
}

void applesauce::CF::details::find_at_key_or_optional<applesauce::CF::StringRef,__CFString const*>(_BYTE *a1, CFDictionaryRef theDict, const void *a3)
{
  v4 = applesauce::CF::details::at_key<__CFString const*>(theDict, a3);
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  CFRetain(v4);
  v6 = CFGetTypeID(v5);
  if (v6 != CFStringGetTypeID())
  {
    CFRelease(v5);
LABEL_5:
    v7 = 0;
    *a1 = 0;
    goto LABEL_6;
  }

  *a1 = v5;
  v7 = 1;
LABEL_6:
  a1[8] = v7;
}

void AudioDSPGraph::createAbsoluteURL(AudioDSPGraph *this, const __CFString *a2, const __CFString *a3)
{
  v6 = *MEMORY[0x1E695E480];
  v7 = CFURLCreateWithFileSystemPath(*MEMORY[0x1E695E480], a2, kCFURLPOSIXPathStyle, 0);
  v45 = v7;
  if (!v7)
  {
    goto LABEL_22;
  }

  v8 = CFGetTypeID(v7);
  if (v8 != CFURLGetTypeID())
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  if (!v45)
  {
LABEL_22:
    applesauce::CF::StringRef::from_get(&v33, a2);
    v17 = applesauce::CF::StringRef::operator->(&v33);
    std::string::basic_string[abi:ne200100]<0>(v42, "???");
    applesauce::CF::StringRef_proxy::convert_or(&v43, *v17, v42);
    if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = &v43;
    }

    else
    {
      v18 = v43.__r_.__value_.__r.__words[0];
    }

    caulk::make_string("Could not create URL from file path '%s'. CFURLCreateWithFileSystemPath failed.", v44, v18);
    AudioDSPGraph::ThrowException(1886548769, v44, off_1E8336510);
  }

  v9 = CFURLGetBaseURL(v45);
  v10 = v9;
  if (v9)
  {
    CFRetain(v9);
    v43.__r_.__value_.__r.__words[0] = v10;
    v11 = CFGetTypeID(v10);
    if (v11 != CFURLGetTypeID())
    {
      v27 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v27, "Could not construct");
    }

    CFRelease(v10);
    if (!a3)
    {
      std::string::basic_string[abi:ne200100]<0>(v41, "Property strip resource path required if path is relative");
      AudioDSPGraph::ThrowException(1886548769, v41, off_1E8336528);
    }

    v12 = CFURLCreateWithFileSystemPath(v6, a3, kCFURLPOSIXPathStyle, 1u);
    v40 = v12;
    if (!v12)
    {
      goto LABEL_26;
    }

    v13 = CFGetTypeID(v12);
    if (v13 != CFURLGetTypeID())
    {
      v28 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v28, "Could not construct");
    }

    if (!v40)
    {
LABEL_26:
      applesauce::CF::StringRef::from_get(&v33, a3);
      v19 = applesauce::CF::StringRef::operator->(&v33);
      std::string::basic_string[abi:ne200100]<0>(v38, "???");
      applesauce::CF::StringRef_proxy::convert_or(&v43, *v19, v38);
      if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v20 = &v43;
      }

      else
      {
        v20 = v43.__r_.__value_.__r.__words[0];
      }

      caulk::make_string("Could not create file URL from path '%s'.", v39, v20);
      AudioDSPGraph::ThrowException(1886548769, v39, off_1E8336540);
    }

    v14 = MEMORY[0x1CCA84310](0, a2, 0, 0);
    cf = v14;
    if (!v14)
    {
      v29 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v29, "Could not construct");
    }

    v15 = CFURLCopyAbsoluteURL(v14);
    *this = v15;
    if (!v15)
    {
      goto LABEL_30;
    }

    v16 = CFGetTypeID(v15);
    if (v16 != CFURLGetTypeID())
    {
      v30 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v30, "Could not construct");
    }

    if (!*this)
    {
LABEL_30:
      applesauce::CF::StringRef::from_get(&v35, a2);
      v21 = applesauce::CF::StringRef::operator->(&v35);
      std::string::basic_string[abi:ne200100]<0>(v34, "???");
      v22 = *v21;
      v23 = &v43;
      applesauce::CF::StringRef_proxy::convert_or(&v43, v22, v34);
      if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v23 = v43.__r_.__value_.__r.__words[0];
      }

      applesauce::CF::StringRef::from_get(&v32, a3);
      v24 = applesauce::CF::StringRef::operator->(&v32);
      std::string::basic_string[abi:ne200100]<0>(v31, "???");
      applesauce::CF::StringRef_proxy::convert_or(&v33, *v24, v31);
      if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v25 = &v33;
      }

      else
      {
        v25 = v33.__r_.__value_.__r.__words[0];
      }

      caulk::make_string("Could not create absolute URL from path '%s' with base '%s'.", v36, v23, v25);
      AudioDSPGraph::ThrowException(1886548769, v36, off_1E8336558);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v40)
    {
      CFRelease(v40);
    }
  }

  else
  {
    CFRetain(v45);
    *this = v45;
  }

  if (v45)
  {
    CFRelease(v45);
  }
}