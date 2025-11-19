@interface CADSPThreadCounterProfiler
- (CADSPThreadCounterProfiler)initWithGraph:(id)a3 secondsPerWindow:(double)a4;
- (NSDictionary)statistics;
- (id).cxx_construct;
@end

@implementation CADSPThreadCounterProfiler

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 40) = 0;
  return self;
}

- (NSDictionary)statistics
{
  ptr = self->_this.var0.__val_.mImplementation.__ptr_;
  v3 = self->_this.var0.__val_.mGraph.__ptr_;
  v34 = 0;
  v35 = 0uLL;
  v4 = v3 + 504;
  v5 = *(v3 + 528);
  v6 = *(v3 + 527);
  v7 = *(v3 + 63);
  if (v6 >= 0)
  {
    v7 = v4;
  }

  if (v5)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  AudioDSPGraph::Metrics::getStatistics(v32, ptr + 64);
  AudioDSPGraph::Extras::ThreadCounterProfiler::Implementation::copyStatistics(AudioDSPGraph::Graph const&)const::{lambda(AudioDSPGraph::Metrics::Statistics const&)#1}::operator()(&cf, v32);
  v9 = v35;
  if (v35 >= *(&v35 + 1))
  {
    v11 = (v35 - v34) >> 4;
    if ((v11 + 1) >> 60)
    {
      std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
    }

    v12 = (*(&v35 + 1) - v34) >> 3;
    if (v12 <= v11 + 1)
    {
      v12 = v11 + 1;
    }

    if (*(&v35 + 1) - v34 >= 0x7FFFFFFFFFFFFFF0uLL)
    {
      v13 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v12;
    }

    v39 = &v34;
    if (v13)
    {
      std::allocator<applesauce::CF::TypeRefPair>::allocate_at_least[abi:ne200100](v13);
    }

    v36 = 0;
    v37 = 16 * v11;
    v38 = (16 * v11);
    std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::construct[abi:ne200100]<applesauce::CF::TypeRefPair,char const*,applesauce::CF::DictionaryRef,void,0>((16 * v11), v8, &cf);
    *&v38 = v38 + 16;
    v14 = (v34 + v37 - v35);
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<applesauce::CF::TypeRefPair>,applesauce::CF::TypeRefPair*>(&v34, v34, v35, v14);
    v15 = v34;
    v16 = *(&v35 + 1);
    v34 = v14;
    v30 = v38;
    v35 = v38;
    *&v38 = v15;
    *(&v38 + 1) = v16;
    v36 = v15;
    v37 = v15;
    std::__split_buffer<applesauce::CF::TypeRefPair>::~__split_buffer(&v36);
    v10 = v30;
  }

  else
  {
    std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::construct[abi:ne200100]<applesauce::CF::TypeRefPair,char const*,applesauce::CF::DictionaryRef,void,0>(v35, v8, &cf);
    v10 = v9 + 16;
  }

  *&v35 = v10;
  if (cf)
  {
    CFRelease(cf);
  }

  for (i = *(ptr + 74); i; i = *i)
  {
    AudioDSPGraph::Metrics::getStatistics(v32, (i + 128));
    AudioDSPGraph::Extras::ThreadCounterProfiler::Implementation::copyStatistics(AudioDSPGraph::Graph const&)const::{lambda(AudioDSPGraph::Metrics::Statistics const&)#1}::operator()(&cf, v32);
    v18 = v35;
    if (v35 >= *(&v35 + 1))
    {
      v20 = (v35 - v34) >> 4;
      if ((v20 + 1) >> 60)
      {
        std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
      }

      v21 = (*(&v35 + 1) - v34) >> 3;
      if (v21 <= v20 + 1)
      {
        v21 = v20 + 1;
      }

      if (*(&v35 + 1) - v34 >= 0x7FFFFFFFFFFFFFF0uLL)
      {
        v22 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v22 = v21;
      }

      v39 = &v34;
      if (v22)
      {
        std::allocator<applesauce::CF::TypeRefPair>::allocate_at_least[abi:ne200100](v22);
      }

      v36 = 0;
      v37 = 16 * v20;
      v38 = (16 * v20);
      std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::construct[abi:ne200100]<applesauce::CF::TypeRefPair,std::string const&,applesauce::CF::DictionaryRef,void,0>((16 * v20), i + 64, &cf);
      *&v38 = v38 + 16;
      v23 = (v34 + v37 - v35);
      std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<applesauce::CF::TypeRefPair>,applesauce::CF::TypeRefPair*>(&v34, v34, v35, v23);
      v24 = v34;
      v25 = *(&v35 + 1);
      v34 = v23;
      v31 = v38;
      v35 = v38;
      *&v38 = v24;
      *(&v38 + 1) = v25;
      v36 = v24;
      v37 = v24;
      std::__split_buffer<applesauce::CF::TypeRefPair>::~__split_buffer(&v36);
      v19 = v31;
    }

    else
    {
      std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::construct[abi:ne200100]<applesauce::CF::TypeRefPair,std::string const&,applesauce::CF::DictionaryRef,void,0>(v35, i + 64, &cf);
      v19 = v18 + 16;
    }

    *&v35 = v19;
    if (cf)
    {
      CFRelease(cf);
    }
  }

  CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(&v34);
  v32[0] = &v34;
  std::vector<applesauce::CF::TypeRefPair>::__destroy_vector::operator()[abi:ne200100](v32);
  v27 = CFDictionaryRef;
  v28 = v27;
  if (v27)
  {
    CFRelease(v27);
  }

  return v28;
}

- (CADSPThreadCounterProfiler)initWithGraph:(id)a3 secondsPerWindow:(double)a4
{
  v56 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (!v7)
  {
    v53 = 0;
    memset(v54, 0, sizeof(v54));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v55) = 134217984;
    *(&v55 + 4) = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_87;
  }

  v52.receiver = self;
  v52.super_class = CADSPThreadCounterProfiler;
  v8 = [(CADSPThreadCounterProfiler *)&v52 init];
  v9 = v8;
  if (v8)
  {
    if (v8->_this.__engaged_)
    {
      AudioDSPGraph::Extras::ThreadCounterProfiler::~ThreadCounterProfiler(&v8->_this);
      v9->_this.__engaged_ = 0;
    }

    v10 = *(v7 + 8);
    v11 = *(v7 + 2);
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    v51 = v10;
    *&v9->_this.var0.__null_state_ = v10;
    v49 = v7;
    v50 = v9;
    v12 = operator new(0x2C0uLL, 0x40uLL);
    *(v12 + 1) = 0;
    *(v12 + 2) = 0;
    *v12 = &unk_1F48D3718;
    *(v12 + 8) = &unk_1F48D3750;
    *(v12 + 9) = &unk_1F48D3790;
    AudioDSPGraph::Metrics::Metrics((v12 + 128), a4);
    v13 = (v12 + 640);
    *(v12 + 40) = 0u;
    *(v12 + 41) = 0u;
    *(v12 + 168) = 1065353216;
    v14 = (v51 + 32);
    v15 = v12 + 656;
    while (1)
    {
LABEL_8:
      v14 = *v14;
      if (!v14)
      {
        v9 = v50;
        v50->_this.var0.__val_.mImplementation.__ptr_ = (v12 + 64);
        v50->_this.var0.__val_.mImplementation.__cntrl_ = v12;
        ptr = v50->_this.var0.__val_.mGraph.__ptr_;
        *&v54[0] = v12 + 64;
        *(&v54[0] + 1) = v12;
        atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
        AudioDSPGraph::Graph::addEventHandler(ptr, v54);
        v7 = v49;
        if (*(&v54[0] + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v54[0] + 1));
        }

        for (i = *(v50->_this.var0.__val_.mGraph.__ptr_ + 4); i; i = *i)
        {
          v43 = i[2];
          v45 = v50->_this.var0.__val_.mImplementation.__ptr_;
          cntrl = v50->_this.var0.__val_.mImplementation.__cntrl_;
          if (v45)
          {
            v46 = v45 + 8;
          }

          else
          {
            v46 = 0;
          }

          *&v55 = v46;
          *(&v55 + 1) = cntrl;
          if (cntrl)
          {
            atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
          }

          AudioDSPGraph::Box::addEventHandler(v43, &v55);
          if (*(&v55 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v55 + 1));
          }
        }

        v50->_this.__engaged_ = 1;
        break;
      }

      v16 = v14[2];
      v17 = std::__string_hash<char>::operator()[abi:ne200100](v16 + 40);
      v18 = v17;
      v19 = *(v12 + 81);
      if (v19)
      {
        v20 = vcnt_s8(v19);
        v20.i16[0] = vaddlv_u8(v20);
        v21 = v20.u32[0];
        if (v20.u32[0] > 1uLL)
        {
          v4 = v17;
          if (v17 >= v19)
          {
            v4 = v17 % v19;
          }
        }

        else
        {
          v4 = (v19 - 1) & v17;
        }

        v22 = *(*v13 + v4);
        if (v22)
        {
          v23 = *v22;
          if (*v22)
          {
            while (1)
            {
              v24 = v23[1];
              if (v24 == v18)
              {
                if (AudioDSPGraph::IR::BoxAlias::operator==(v23 + 8, (v16 + 40)))
                {
                  v15 = v12 + 656;
                  goto LABEL_8;
                }
              }

              else
              {
                if (v21 > 1)
                {
                  if (v24 >= v19)
                  {
                    v24 %= v19;
                  }
                }

                else
                {
                  v24 &= v19 - 1;
                }

                if (v24 != v4)
                {
LABEL_25:
                  v15 = v12 + 656;
                  break;
                }
              }

              v23 = *v23;
              if (!v23)
              {
                goto LABEL_25;
              }
            }
          }
        }
      }

      v25 = operator new(0x280uLL, 0x40uLL);
      v26 = v25;
      *v25 = 0;
      *(v25 + 1) = v18;
      if (*(v16 + 63) < 0)
      {
        std::string::__init_copy_ctor_external((v25 + 64), *(v16 + 40), *(v16 + 48));
      }

      else
      {
        v27 = *(v16 + 40);
        *(v25 + 10) = *(v16 + 56);
        *(v25 + 4) = v27;
      }

      AudioDSPGraph::Metrics::Metrics((v26 + 128), a4);
      v28 = (*(v12 + 83) + 1);
      v29 = *(v12 + 168);
      if (!v19 || (v29 * v19) < v28)
      {
        v30 = (v19 & (v19 - 1)) != 0;
        if (v19 < 3)
        {
          v30 = 1;
        }

        v31 = v30 | (2 * v19);
        v32 = vcvtps_u32_f32(v28 / v29);
        if (v31 <= v32)
        {
          prime = v32;
        }

        else
        {
          prime = v31;
        }

        if (prime == 1)
        {
          prime = 2;
        }

        else if ((prime & (prime - 1)) != 0)
        {
          prime = std::__next_prime(prime);
        }

        v19 = *(v12 + 81);
        if (prime > v19)
        {
LABEL_41:
          if (!(prime >> 61))
          {
            operator new();
          }

LABEL_87:
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        if (prime < v19)
        {
          v34 = vcvtps_u32_f32(*(v12 + 83) / *(v12 + 168));
          if (v19 < 3 || (v35 = vcnt_s8(v19), v35.i16[0] = vaddlv_u8(v35), v35.u32[0] > 1uLL))
          {
            v34 = std::__next_prime(v34);
          }

          else
          {
            v36 = 1 << -__clz(v34 - 1);
            if (v34 >= 2)
            {
              v34 = v36;
            }
          }

          if (prime <= v34)
          {
            prime = v34;
          }

          if (prime >= v19)
          {
            v19 = *(v12 + 81);
          }

          else
          {
            if (prime)
            {
              goto LABEL_41;
            }

            v40 = *v13;
            *v13 = 0;
            if (v40)
            {
              operator delete(v40);
            }

            v19 = 0;
            *(v12 + 81) = 0;
          }
        }

        if ((v19 & (v19 - 1)) != 0)
        {
          if (v18 >= v19)
          {
            v4 = v18 % v19;
          }

          else
          {
            v4 = v18;
          }
        }

        else
        {
          v4 = (v19 - 1) & v18;
        }
      }

      v37 = *v13;
      v38 = *(*v13 + v4);
      if (v38)
      {
        *v26 = *v38;
      }

      else
      {
        *v26 = *v15;
        *v15 = v26;
        v37[v4] = v15;
        if (!*v26)
        {
          goto LABEL_63;
        }

        v39 = *(*v26 + 8);
        if ((v19 & (v19 - 1)) != 0)
        {
          if (v39 >= v19)
          {
            v39 %= v19;
          }
        }

        else
        {
          v39 &= v19 - 1;
        }

        v38 = *v13 + 8 * v39;
      }

      *v38 = v26;
LABEL_63:
      ++*(v12 + 83);
    }
  }

  v47 = *MEMORY[0x1E69E9840];
  return v9;
}

@end