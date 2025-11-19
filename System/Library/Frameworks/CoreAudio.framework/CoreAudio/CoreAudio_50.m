void sub_1DE5DB790(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v2);
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<AMCP::IOAudio1::Device::handle_driver_configuration_change(void)::$_0,std::allocator<AMCP::IOAudio1::Device::handle_driver_configuration_change(void)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP8IOAudio16Device34handle_driver_configuration_changeEvE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IOAudio1::Device::handle_driver_configuration_change(void)::$_0,std::allocator<AMCP::IOAudio1::Device::handle_driver_configuration_change(void)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v140 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (!v5)
      {
LABEL_207:
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
        goto LABEL_208;
      }

      v6 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v6 & 1) == 0)
      {
        v3 = AMCP::Log::AMCP_Scope_Registry::initialize(v3);
      }

      v7 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v8 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v9 = *(v7 + 16);
      switch(v9)
      {
        case 1:
          v18 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v18 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v3);
          }

          v20 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v19 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v19)
          {
            atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
            v21 = *v20;
            std::__shared_weak_count::__release_shared[abi:ne200100](v19);
          }

          else
          {
            v21 = *v20;
          }

          if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_46;
          }

          v24 = *(v5 + 24);
          if (!v24)
          {
            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Could not construct");
            __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          applesauce::CF::convert_to<std::string,0>(__p, v24);
          if (v121 >= 0)
          {
            v25 = __p;
          }

          else
          {
            v25 = __p[0];
          }

          *buf = 136315650;
          *&buf[4] = "IOAudio1_Device.cpp";
          v134 = 1024;
          v135 = 611;
          v136 = 2080;
          v137[0] = v25;
          v26 = v21;
          v27 = OS_LOG_TYPE_DEFAULT;
          break;
        case 2:
          v14 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v14 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v3);
          }

          v16 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v15 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v15)
          {
            atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
            v17 = *v16;
            std::__shared_weak_count::__release_shared[abi:ne200100](v15);
          }

          else
          {
            v17 = *v16;
          }

          if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_46;
          }

          v22 = applesauce::CF::StringRef::operator->((v5 + 24));
          applesauce::CF::convert_to<std::string,0>(__p, *v22);
          if (v121 >= 0)
          {
            v23 = __p;
          }

          else
          {
            v23 = __p[0];
          }

          *buf = 136315650;
          *&buf[4] = "IOAudio1_Device.cpp";
          v134 = 1024;
          v135 = 611;
          v136 = 2080;
          v137[0] = v23;
          _os_log_debug_impl(&dword_1DE1F9000, v17, OS_LOG_TYPE_DEBUG, "%32s:%-5d Begin configuration change for device '%s'", buf, 0x1Cu);
          goto LABEL_44;
        case 3:
          v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v10 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v3);
          }

          v12 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v11 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v11)
          {
            atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
            v13 = *v12;
            std::__shared_weak_count::__release_shared[abi:ne200100](v11);
          }

          else
          {
            v13 = *v12;
          }

          if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            goto LABEL_46;
          }

          v28 = *(v5 + 24);
          if (!v28)
          {
            v117 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v117, "Could not construct");
            __cxa_throw(v117, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          applesauce::CF::convert_to<std::string,0>(__p, v28);
          if (v121 >= 0)
          {
            v29 = __p;
          }

          else
          {
            v29 = __p[0];
          }

          *buf = 136315650;
          *&buf[4] = "IOAudio1_Device.cpp";
          v134 = 1024;
          v135 = 611;
          v136 = 2080;
          v137[0] = v29;
          v26 = v13;
          v27 = OS_LOG_TYPE_INFO;
          break;
        default:
          goto LABEL_46;
      }

      _os_log_impl(&dword_1DE1F9000, v26, v27, "%32s:%-5d Begin configuration change for device '%s'", buf, 0x1Cu);
LABEL_44:
      if (SHIBYTE(v121) < 0)
      {
        operator delete(__p[0]);
      }

LABEL_46:
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      kdebug_trace();
      v30 = *(v5 + 376);
      if (!v30)
      {
        v114 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v114, "cannot create io_object_proxy from null io_object");
        __cxa_throw(v114, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      applesauce::iokit::get_properties(buf, v30);
      v31 = *(v5 + 480);
      *(v5 + 480) = *buf;
      *buf = v31;
      if (v31)
      {
        CFRelease(v31);
      }

      v32 = *(v5 + 488);
      if (!v32)
      {
        v115 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v115, "cannot create io_object_proxy from null io_object");
        __cxa_throw(v115, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      applesauce::iokit::get_properties(buf, v32);
      v33 = *(v5 + 496);
      *(v5 + 496) = *buf;
      *buf = v33;
      if (v33)
      {
        CFRelease(v33);
      }

      std::string::basic_string[abi:ne200100]<0>(buf, "IOAudioStream");
      std::string::basic_string[abi:ne200100]<0>(__p, "IOService");
      *v138 = buf;
      _ZN4AMCP5IOKit22find_child_services_ifIZNS0_33find_child_services_by_class_nameERKN10applesauce5iokit16io_object_holderERKNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEESF_EUlRKT_E_EENS7_6vectorIS4_NSB_IS4_EEEES6_SF_SI_(v127, *(v5 + 376), __p, v138);
      if (SHIBYTE(v121) < 0)
      {
        operator delete(__p[0]);
      }

      if (SBYTE3(v137[0]) < 0)
      {
        operator delete(*buf);
      }

      AMCP::IOAudio1::Stream::create_from_service_list(buf, v5, v127[0], v127[1]);
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      _ZNSt3__16invokeB8ne200100IRZZN4AMCP8IOAudio16Device34handle_driver_configuration_changeEvENK3__0clEvEUlRT_E_JRNS_5tupleIJRNS_6vectorINS_10unique_ptrINS2_6StreamENS_14default_deleteISC_EEEENS_9allocatorISF_EEEESJ_EEEEEENS_13invoke_resultIS5_JDpT0_EE4typeEOS5_DpOSN_((v5 + 504), buf);
      _ZNSt3__16invokeB8ne200100IRZZN4AMCP8IOAudio16Device34handle_driver_configuration_changeEvENK3__0clEvEUlRT_E_JRNS_5tupleIJRNS_6vectorINS_10unique_ptrINS2_6StreamENS_14default_deleteISC_EEEENS_9allocatorISF_EEEESJ_EEEEEENS_13invoke_resultIS5_JDpT0_EE4typeEOS5_DpOSN_((v5 + 528), (v137 + 4));
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      std::string::basic_string[abi:ne200100]<0>(__p, "IOAudioControl");
      std::string::basic_string[abi:ne200100]<0>(v138, "IOService");
      v128[0] = __p;
      _ZN4AMCP5IOKit22find_child_services_ifIZNS0_33find_child_services_by_class_nameERKN10applesauce5iokit16io_object_holderERKNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEESF_EUlRKT_E_EENS7_6vectorIS4_NSB_IS4_EEEES6_SF_SI_(v126, *(v5 + 376), v138, v128);
      if (v138[23] < 0)
      {
        operator delete(*v138);
      }

      if (SHIBYTE(v121) < 0)
      {
        operator delete(__p[0]);
      }

      AMCP::IOAudio1::Control::create_from_service_list(&v124, v5, v126[0], v126[1]);
      memset(v138, 0, 24);
      v35 = v124;
      v34 = v125;
      v128[0] = v124;
      while (v35 != v34)
      {
        v36 = *(v5 + 552);
        v37 = *(v5 + 560);
        if (v36 != v37)
        {
          do
          {
            v38 = *(*v36 + 20);
            v39 = *(*v35 + 20);
            if (v38)
            {
              v40 = v39 == 0;
            }

            else
            {
              v40 = 1;
            }

            if (v40)
            {
              if (!(v38 | v39))
              {
                goto LABEL_75;
              }
            }

            else if (IOObjectIsEqualTo(v38, v39))
            {
              goto LABEL_75;
            }

            v36 += 8;
          }

          while (v36 != v37);
          v36 = v37;
LABEL_75:
          v37 = *(v5 + 560);
        }

        if (v36 == v37)
        {
          std::vector<HALS_IOA2Stream *>::push_back[abi:ne200100](v138, v128);
        }

        v35 += 8;
        v128[0] = v35;
        v34 = v125;
      }

      v129 = 0;
      v41 = 0uLL;
      *v128 = 0u;
      v42 = *(v5 + 552);
      v131 = v42;
      v43 = *(v5 + 560);
      if (v42 == v43)
      {
        v49 = 0;
      }

      else
      {
        do
        {
          v44 = v124;
          v45 = v125;
          if (v124 != v125)
          {
            do
            {
              v46 = *(*v44 + 20);
              v47 = *(*v42 + 20);
              if (v46)
              {
                v48 = v47 == 0;
              }

              else
              {
                v48 = 1;
              }

              if (v48)
              {
                if (!(v46 | v47))
                {
                  goto LABEL_91;
                }
              }

              else if (IOObjectIsEqualTo(v46, v47))
              {
                goto LABEL_91;
              }

              v44 += 8;
            }

            while (v44 != v45);
            v44 = v45;
LABEL_91:
            v45 = v125;
          }

          if (v44 == v45)
          {
            std::vector<HALS_IOA2Stream *>::push_back[abi:ne200100](v128, &v131);
          }

          v131 = ++v42;
          v43 = *(v5 + 560);
        }

        while (v42 != v43);
        v41 = *v128;
        v49 = v129;
      }

      v50 = (v5 + 552);
      *__p = *v138;
      v121 = *&v138[16];
      *v122 = v41;
      v123 = v49;
      v51 = v41;
      v52 = *&v138[8];
      v53 = *v138;
      if (v41 != *(&v41 + 1))
      {
        v54 = v41;
        do
        {
          v55 = *v54++;
          v56 = *v55;
          AMCP::Core::Broker::destroy_core(*(*(*(*(*v55 + 8) + 16) + 32) + 16), *(*v55 + 16));
          *(v56 + 16) = 0;
        }

        while (v54 != *(&v51 + 1));
        v43 = *(v5 + 552);
        v57 = *(v5 + 560);
        if (v43 != v57)
        {
          while (2)
          {
            v58 = v51;
            while (*v43 != **v58)
            {
              if (++v58 == *(&v51 + 1))
              {
                goto LABEL_106;
              }
            }

            if (v58 != *(&v51 + 1))
            {
              if (v43 != v57)
              {
                v59 = v43 + 1;
                if (v43 + 1 != v57)
                {
                  do
                  {
                    v60 = *v59;
                    v61 = v51;
                    while (v60 != **v61)
                    {
                      if (++v61 == *(&v51 + 1))
                      {
                        goto LABEL_115;
                      }
                    }

                    if (v61 != *(&v51 + 1))
                    {
                      goto LABEL_118;
                    }

LABEL_115:
                    *v59 = 0;
                    v62 = *v43;
                    *v43 = v60;
                    if (v62)
                    {
                      (*(*v62 + 8))(v62);
                    }

                    ++v43;
LABEL_118:
                    ++v59;
                  }

                  while (v59 != v57);
                  v57 = *(v5 + 560);
                }
              }

              break;
            }

LABEL_106:
            if (++v43 != v57)
            {
              continue;
            }

            goto LABEL_126;
          }
        }

        if (v43 == v57)
        {
LABEL_126:
          v43 = v57;
          goto LABEL_127;
        }

        while (v57 != v43)
        {
          v64 = *--v57;
          v63 = v64;
          *v57 = 0;
          if (v64)
          {
            (*(*v63 + 8))(v63);
          }
        }

        *(v5 + 560) = v43;
      }

LABEL_127:
      while (v53 != v52)
      {
        v65 = *v53;
        v66 = *(v5 + 568);
        if (v43 >= v66)
        {
          v68 = *v50;
          v69 = v43 - *v50;
          v70 = (v69 >> 3) + 1;
          if (v70 >> 61)
          {
            std::vector<void *>::__throw_length_error[abi:ne200100]();
          }

          v71 = v66 - v68;
          if (v71 >> 2 > v70)
          {
            v70 = v71 >> 2;
          }

          if (v71 >= 0x7FFFFFFFFFFFFFF8)
          {
            v72 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v72 = v70;
          }

          v139 = v5 + 552;
          if (v72)
          {
            std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](v72);
          }

          v73 = (8 * (v69 >> 3));
          v74 = *v65;
          *v65 = 0;
          *v73 = v74;
          v43 = v73 + 1;
          memcpy(0, v68, v69);
          v75 = *(v5 + 552);
          *(v5 + 552) = 0;
          *(v5 + 560) = v43;
          v76 = *(v5 + 568);
          *(v5 + 568) = 0;
          *&v138[16] = v75;
          *&v138[24] = v76;
          *v138 = v75;
          *&v138[8] = v75;
          std::__split_buffer<std::unique_ptr<AMCP::IOAudio1::Stream>>::~__split_buffer(v138);
        }

        else
        {
          v67 = *v65;
          *v65 = 0;
          *v43++ = v67;
        }

        *(v5 + 560) = v43;
        ++v53;
      }

      v77 = *v50;
      if (*v50 != v43)
      {
        do
        {
          v78 = *v77;
          v79 = *(*v77 + 4);
          if (!v79)
          {
            AMCP::IOAudio1::Control::build_core(*v77);
          }

          AMCP::Core::Broker::fetch_core(&v131, *(*(*(*(v78 + 1) + 16) + 32) + 16), v79);
          v80 = v131;
          if (v131)
          {
            memset(v138, 0, sizeof(v138));
            LODWORD(v139) = 1065353216;
            v83 = *(v78 + 5);
            v82 = (v78 + 20);
            v81 = v83;
            if (!v83)
            {
              v113 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v113, "cannot create io_object_proxy from null io_object");
              __cxa_throw(v113, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }

            applesauce::iokit::get_properties(&cf, v81);
            simple_required = AMCP::Core::Core::get_simple_required_property<1650682995u>(v80);
            AMCP::IOAudio1::update_control_value(simple_required, v138, v82, &cf);
            AMCP::IOAudio1::update_control_range(simple_required, v138, &cf);
            v128[0] = v80 + 6;
            LOBYTE(v128[1]) = 1;
            caulk::concurrent::shared_spin_lock::lock(v80 + 12);
            v85 = *&v138[16];
            if (*&v138[16])
            {
              do
              {
                std::unordered_map<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,std::shared_ptr<AMCP::Core::Operation>>>>::insert_or_assign[abi:ne200100]<std::shared_ptr<AMCP::Core::Operation> const&>(v80 + 1, (v85[4] + 40), v85 + 4);
                v85 = *v85;
              }

              while (v85);
            }

            caulk::concurrent::shared_spin_lock::unlock(v80 + 12);
            v128[0] = 0x676C6F626F776E72;
            LODWORD(v128[1]) = 0;
            *(v80 + 1) = AMCP::Core::Core::get_typed_property_value<unsigned int,std::enable_if<true,void>>(v80, v128, &AMCP::k_object_id_unknown);
            if (cf)
            {
              CFRelease(cf);
            }

            std::__hash_table<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>>>::__deallocate_node(*&v138[16]);
            v86 = *v138;
            *v138 = 0;
            if (v86)
            {
              operator delete(v86);
            }
          }

          if (v132)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v132);
          }

          ++v77;
        }

        while (v77 != v43);
      }

      AMCP::Core::Broker::fetch_core(&v131, *(*(*(v5 + 16) + 32) + 16), *(v5 + 32));
      if (v131)
      {
        memset(v138, 0, sizeof(v138));
        LODWORD(v139) = 1065353216;
        AMCP::IOAudio1::Device::update_core_common(v5);
      }

      if (v132)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v132);
      }

      v87 = kdebug_trace();
      v88 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v88 & 1) == 0)
      {
        v87 = AMCP::Log::AMCP_Scope_Registry::initialize(v87);
      }

      v89 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v90 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v90)
      {
        atomic_fetch_add_explicit(&v90->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v91 = *(v89 + 16);
      switch(v91)
      {
        case 1:
          v100 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v100 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v87);
          }

          v102 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v101 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v101)
          {
            atomic_fetch_add_explicit(&v101->__shared_owners_, 1uLL, memory_order_relaxed);
            v103 = *v102;
            std::__shared_weak_count::__release_shared[abi:ne200100](v101);
          }

          else
          {
            v103 = *v102;
          }

          if (!os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_200;
          }

          v106 = *(v5 + 24);
          if (!v106)
          {
            v118 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v118, "Could not construct");
            __cxa_throw(v118, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          applesauce::CF::convert_to<std::string,0>(v128, v106);
          if (v129 >= 0)
          {
            v107 = v128;
          }

          else
          {
            v107 = v128[0];
          }

          *v138 = 136315650;
          *&v138[4] = "IOAudio1_Device.cpp";
          *&v138[12] = 1024;
          *&v138[14] = 705;
          *&v138[18] = 2080;
          *&v138[20] = v107;
          v108 = v103;
          v109 = OS_LOG_TYPE_DEFAULT;
          break;
        case 2:
          v96 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v96 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v87);
          }

          v98 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v97 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v97)
          {
            atomic_fetch_add_explicit(&v97->__shared_owners_, 1uLL, memory_order_relaxed);
            v99 = *v98;
            std::__shared_weak_count::__release_shared[abi:ne200100](v97);
          }

          else
          {
            v99 = *v98;
          }

          if (!os_log_type_enabled(v99, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_200;
          }

          v104 = applesauce::CF::StringRef::operator->((v5 + 24));
          applesauce::CF::convert_to<std::string,0>(v128, *v104);
          if (v129 >= 0)
          {
            v105 = v128;
          }

          else
          {
            v105 = v128[0];
          }

          *v138 = 136315650;
          *&v138[4] = "IOAudio1_Device.cpp";
          *&v138[12] = 1024;
          *&v138[14] = 705;
          *&v138[18] = 2080;
          *&v138[20] = v105;
          _os_log_debug_impl(&dword_1DE1F9000, v99, OS_LOG_TYPE_DEBUG, "%32s:%-5d End configuration change for device '%s'", v138, 0x1Cu);
          goto LABEL_198;
        case 3:
          v92 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v92 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v87);
          }

          v94 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v93 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v93)
          {
            atomic_fetch_add_explicit(&v93->__shared_owners_, 1uLL, memory_order_relaxed);
            v95 = *v94;
            std::__shared_weak_count::__release_shared[abi:ne200100](v93);
          }

          else
          {
            v95 = *v94;
          }

          if (!os_log_type_enabled(v95, OS_LOG_TYPE_INFO))
          {
            goto LABEL_200;
          }

          v110 = *(v5 + 24);
          if (!v110)
          {
            v119 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v119, "Could not construct");
            __cxa_throw(v119, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          applesauce::CF::convert_to<std::string,0>(v128, v110);
          if (v129 >= 0)
          {
            v111 = v128;
          }

          else
          {
            v111 = v128[0];
          }

          *v138 = 136315650;
          *&v138[4] = "IOAudio1_Device.cpp";
          *&v138[12] = 1024;
          *&v138[14] = 705;
          *&v138[18] = 2080;
          *&v138[20] = v111;
          v108 = v95;
          v109 = OS_LOG_TYPE_INFO;
          break;
        default:
          goto LABEL_200;
      }

      _os_log_impl(&dword_1DE1F9000, v108, v109, "%32s:%-5d End configuration change for device '%s'", v138, 0x1Cu);
LABEL_198:
      if (SHIBYTE(v129) < 0)
      {
        operator delete(v128[0]);
      }

LABEL_200:
      if (v90)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v90);
      }

      if (v122[0])
      {
        operator delete(v122[0]);
      }

      if (__p[0])
      {
        operator delete(__p[0]);
      }

      __p[0] = &v124;
      std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>::__destroy_vector::operator()[abi:ne200100](__p);
      __p[0] = v126;
      std::vector<applesauce::iokit::io_object_holder>::__destroy_vector::operator()[abi:ne200100](__p);
      __p[0] = v137 + 4;
      std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>::__destroy_vector::operator()[abi:ne200100](__p);
      __p[0] = buf;
      std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>::__destroy_vector::operator()[abi:ne200100](__p);
      *buf = v127;
      std::vector<applesauce::iokit::io_object_holder>::__destroy_vector::operator()[abi:ne200100](buf);
      goto LABEL_207;
    }
  }

LABEL_208:
  v112 = *MEMORY[0x1E69E9840];
}

void sub_1DE5DC808(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, char *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  __cxa_free_exception(v42);
  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }

  std::pair<std::vector<unsigned int>,std::vector<unsigned int>>::~pair(&__p);
  __p = &a21;
  std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p = &a24;
  std::vector<applesauce::iokit::io_object_holder>::__destroy_vector::operator()[abi:ne200100](&__p);
  std::tuple<std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>,std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>>::~tuple(&a36);
  a36 = &a27;
  std::vector<applesauce::iokit::io_object_holder>::__destroy_vector::operator()[abi:ne200100](&a36);
  std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  _Unwind_Resume(a1);
}

void _ZNSt3__16invokeB8ne200100IRZZN4AMCP8IOAudio16Device34handle_driver_configuration_changeEvENK3__0clEvEUlRT_E_JRNS_5tupleIJRNS_6vectorINS_10unique_ptrINS2_6StreamENS_14default_deleteISC_EEEENS_9allocatorISF_EEEESJ_EEEEEENS_13invoke_resultIS5_JDpT0_EE4typeEOS5_DpOSN_(void *a1, char **a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v59[0] = 0;
  v5 = *a2;
  v4 = a2[1];
  v55[0] = *a2;
  while (v5 != v4)
  {
    v6 = *a1;
    v7 = a1[1];
    if (*a1 != v7)
    {
      do
      {
        v8 = *(*v6 + 5);
        v9 = *(*v5 + 20);
        if (v8)
        {
          v10 = v9 == 0;
        }

        else
        {
          v10 = 1;
        }

        if (v10)
        {
          if (!(v8 | v9))
          {
            goto LABEL_14;
          }
        }

        else if (IOObjectIsEqualTo(v8, v9))
        {
          goto LABEL_14;
        }

        ++v6;
      }

      while (v6 != v7);
      v6 = v7;
LABEL_14:
      v7 = a1[1];
    }

    if (v6 == v7)
    {
      std::vector<HALS_IOA2Stream *>::push_back[abi:ne200100](__p, v55);
    }

    v5 += 8;
    v55[0] = v5;
    v4 = a2[1];
  }

  v56 = 0;
  v11 = 0uLL;
  *v55 = 0u;
  v13 = a1[1];
  v61 = *a1;
  v12 = v61;
  if (v61 != v13)
  {
    do
    {
      v14 = *a2;
      v15 = a2[1];
      if (*a2 != v15)
      {
        do
        {
          v16 = *(*v14 + 20);
          v17 = *(*v12 + 5);
          if (v16)
          {
            v18 = v17 == 0;
          }

          else
          {
            v18 = 1;
          }

          if (v18)
          {
            if (!(v16 | v17))
            {
              goto LABEL_30;
            }
          }

          else if (IOObjectIsEqualTo(v16, v17))
          {
            goto LABEL_30;
          }

          v14 += 8;
        }

        while (v14 != v15);
        v14 = v15;
LABEL_30:
        v13 = a1[1];
      }

      if (v14 == v13)
      {
        std::vector<HALS_IOA2Stream *>::push_back[abi:ne200100](v55, &v61);
        v13 = a1[1];
      }

      v61 = ++v12;
    }

    while (v12 != v13);
    v11 = *v55;
  }

  v54 = *__p;
  v19 = v11;
  if (v11 == *(&v11 + 1))
  {
    goto LABEL_60;
  }

  v20 = v11;
  do
  {
    v21 = *v20++;
    v22 = *v21;
    AMCP::Core::Broker::destroy_core(*(*(*(*(*v21 + 8) + 16) + 32) + 16), *(*v21 + 16));
    *(v22 + 16) = 0;
  }

  while (v20 != *(&v19 + 1));
  v13 = *a1;
  v23 = a1[1];
  if (*a1 == v23)
  {
    goto LABEL_53;
  }

  do
  {
    v24 = v19;
    while (1)
    {
      v25 = *(*v13 + 5);
      v26 = *(**v24 + 20);
      if (v25)
      {
        v27 = v26 == 0;
      }

      else
      {
        v27 = 1;
      }

      if (v27)
      {
        if (!(v25 | v26))
        {
          break;
        }

        goto LABEL_48;
      }

      if (IOObjectIsEqualTo(v25, v26))
      {
        break;
      }

LABEL_48:
      v24 += 8;
      if (v24 == *(&v19 + 1))
      {
        goto LABEL_51;
      }
    }

    if (v24 != *(&v19 + 1))
    {
      if (v13 == v23)
      {
        goto LABEL_53;
      }

      v46 = v13 + 1;
LABEL_87:
      if (v46 == v23)
      {
        goto LABEL_53;
      }

      v47 = v19;
      while (1)
      {
        v48 = *(*v46 + 5);
        v49 = *(**v47 + 20);
        if (v48)
        {
          v50 = v49 == 0;
        }

        else
        {
          v50 = 1;
        }

        if (v50)
        {
          if (!(v48 | v49))
          {
            goto LABEL_99;
          }
        }

        else if (IOObjectIsEqualTo(v48, v49))
        {
LABEL_99:
          if (v47 != *(&v19 + 1))
          {
            goto LABEL_103;
          }

LABEL_100:
          v51 = *v46;
          *v46 = 0;
          v52 = *v13;
          *v13 = v51;
          if (v52)
          {
            (*(*v52 + 8))(v52);
          }

          ++v13;
LABEL_103:
          ++v46;
          goto LABEL_87;
        }

        v47 += 8;
        if (v47 == *(&v19 + 1))
        {
          goto LABEL_100;
        }
      }
    }

LABEL_51:
    ++v13;
  }

  while (v13 != v23);
  v13 = v23;
LABEL_53:
  v28 = a1[1];
  if (v13 == v28)
  {
    v13 = a1[1];
  }

  else
  {
    while (v28 != v13)
    {
      v30 = *--v28;
      v29 = v30;
      *v28 = 0;
      if (v30)
      {
        (*(*v29 + 8))(v29);
      }
    }

    a1[1] = v13;
  }

LABEL_60:
  if (v54 != *(&v54 + 1))
  {
    v31 = v54;
    do
    {
      v32 = *v31;
      v34 = *a1;
      v33 = a1[1];
      if (v33 != *a1)
      {
        v35 = &v33[-*a1] >> 3;
        do
        {
          v36 = v35 >> 1;
          v37 = &v34[8 * (v35 >> 1)];
          v39 = *v37;
          v38 = v37 + 8;
          v35 += ~(v35 >> 1);
          if (*(v39 + 28) < *(*v32 + 28))
          {
            v34 = v38;
          }

          else
          {
            v35 = v36;
          }
        }

        while (v35);
        v33 = v34;
      }

      std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>::emplace<std::unique_ptr<AMCP::IOAudio1::Stream>>(a1, v33, v32);
      ++v31;
    }

    while (v31 != *(&v54 + 1));
    v13 = a1[1];
  }

  for (i = *a1; i != v13; ++i)
  {
    v41 = *i;
    v42 = *(*i + 4);
    if (!v42)
    {
      AMCP::IOAudio1::Stream::build_core(*i);
    }

    AMCP::Core::Broker::fetch_core(&v61, *(*(*(*(v41 + 1) + 16) + 32) + 16), v42);
    if (v61)
    {
      *__p = 0u;
      *v59 = 0u;
      v60 = 1065353216;
      AMCP::IOAudio1::Device::get_engine_registry_entries(v55, *(*(v41 + 1) + 480));
      v45 = *(v41 + 5);
      v44 = (v41 + 20);
      v43 = v45;
      if (v45)
      {
        applesauce::iokit::get_properties(&cf, v43);
        AMCP::IOAudio1::update_stream_core(__p, v44, v55, &cf);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "cannot create io_object_proxy from null io_object");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    if (v62)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v62);
    }
  }

  if (v19)
  {
    operator delete(v19);
  }

  if (v54)
  {
    operator delete(v54);
  }
}

void sub_1DE5DCFD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  va_copy(va2, va1);
  v13 = va_arg(va2, const void *);
  v15 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  applesauce::CF::DictionaryRef::~DictionaryRef(va1);
  std::__hash_table<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>>>::~__hash_table(va2);
  v5 = *(v3 - 112);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  std::pair<std::vector<unsigned int>,std::vector<unsigned int>>::~pair(va);
  _Unwind_Resume(a1);
}

void **std::tuple<std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>,std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>>::~tuple(void **a1)
{
  v3 = a1 + 3;
  std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = a1;
  std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>::__destroy_vector::operator()[abi:ne200100](&v3);
  return a1;
}

void std::__function::__func<AMCP::IOAudio1::Device::handle_driver_configuration_change(void)::$_0,std::allocator<AMCP::IOAudio1::Device::handle_driver_configuration_change(void)::$_0>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::IOAudio1::Device::handle_driver_configuration_change(void)::$_0,std::allocator<AMCP::IOAudio1::Device::handle_driver_configuration_change(void)::$_0>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<AMCP::IOAudio1::Device::handle_driver_configuration_change(void)::$_0,std::allocator<AMCP::IOAudio1::Device::handle_driver_configuration_change(void)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F5980E30;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::IOAudio1::Device::handle_driver_configuration_change(void)::$_0,std::allocator<AMCP::IOAudio1::Device::handle_driver_configuration_change(void)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5980E30;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::IOAudio1::Device::handle_driver_configuration_change(void)::$_0,std::allocator<AMCP::IOAudio1::Device::handle_driver_configuration_change(void)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5980E30;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::IOAudio1::Device::Device(AMCP::IOAudio1::Driver &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef)::$_1,std::allocator<AMCP::IOAudio1::Device::Device(AMCP::IOAudio1::Driver &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef)::$_1>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F59800F8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AMCP::IOAudio1::Device::Device(AMCP::IOAudio1::Driver &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef)::$_0,std::allocator<AMCP::IOAudio1::Device::Device(AMCP::IOAudio1::Driver &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef)::$_0>,void ()(unsigned int,void *)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP8IOAudio16DeviceC1ERNS0_6DriverERKN10applesauce5iokit16io_object_holderENS4_2CF13DictionaryRefEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::IOAudio1::Device::Device(AMCP::IOAudio1::Driver &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef)::$_0,std::allocator<AMCP::IOAudio1::Device::Device(AMCP::IOAudio1::Driver &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef)::$_0>,void ()(unsigned int,void *)>::operator()(uint64_t result, _DWORD *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (*a2 == -536870896)
  {
    v2 = *(result + 8);
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    if (v3 != v4)
    {
      while (*v3 != *(result + 16))
      {
        v3 += 2;
        if (v3 == v4)
        {
          goto LABEL_8;
        }
      }
    }

    v6 = v3;
    if (v3 != v4)
    {
      operator new();
    }
  }

LABEL_8:
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE5DD4E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a2)
  {
    std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v15 - 72);
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::shared_ptr<std::byte>,std::weak_ptr<std::byte>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a9);
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::shared_ptr<std::byte>,std::weak_ptr<std::byte>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a15);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1DE5DD4B4);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<AMCP::IOAudio1::Device::Device(AMCP::IOAudio1::Driver &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef)::$_0,std::allocator<AMCP::IOAudio1::Device::Device(AMCP::IOAudio1::Driver &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef)::$_0>,void ()(unsigned int,void *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5980068;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::vector<applesauce::iokit::io_object_holder>::push_back[abi:ne200100](unsigned int **a1, io_object_t *a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v8 = v4 - *a1;
    if ((v8 + 1) >> 62)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v9 = v3 - *a1;
    v10 = v9 >> 1;
    if (v9 >> 1 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v31 = a1;
    if (v11)
    {
      if (!(v11 >> 62))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = (4 * v8);
    v27 = 0;
    v28 = v12;
    v29 = 4 * v8;
    v30 = 0;
    v13 = *a2;
    *v12 = *a2;
    if (v13)
    {
      v14 = IOObjectRetain(v13);
      if (v14)
      {
        exception = __cxa_allocate_exception(0x20uLL);
        v26 = std::system_category();
        MEMORY[0x1E12C10C0](exception, v14, v26, "Error on Retain");
        __cxa_throw(exception, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
      }

      v12 = v28;
      v15 = v29;
    }

    else
    {
      v15 = 4 * v8;
    }

    v7 = (v15 + 4);
    v16 = *a1;
    v17 = a1[1];
    v18 = (v12 + *a1 - v17);
    if (v17 != *a1)
    {
      v19 = *a1;
      v20 = v18;
      do
      {
        *v20 = 0;
        *v20++ = *v19;
        *v19++ = 0;
      }

      while (v19 != v17);
      do
      {
        v21 = *v16++;
        std::__destroy_at[abi:ne200100]<applesauce::iokit::io_object_holder,0>(v21);
      }

      while (v16 != v17);
      v16 = *a1;
    }

    *a1 = v18;
    a1[1] = v7;
    v22 = a1[2];
    a1[2] = v30;
    v29 = v16;
    v30 = v22;
    v27 = v16;
    v28 = v16;
    result = std::__split_buffer<applesauce::iokit::io_object_holder>::~__split_buffer(&v27);
  }

  else
  {
    result = *a2;
    *v4 = result;
    if (result)
    {
      result = IOObjectRetain(result);
      v6 = result;
      if (result)
      {
        v23 = __cxa_allocate_exception(0x20uLL);
        v24 = std::system_category();
        MEMORY[0x1E12C10C0](v23, v6, v24, "Error on Retain");
        __cxa_throw(v23, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
      }
    }

    v7 = v4 + 1;
    a1[1] = v4 + 1;
  }

  a1[1] = v7;
  return result;
}

void sub_1DE5DD820(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  __cxa_free_exception(v10);
  std::__split_buffer<applesauce::iokit::io_object_holder>::~__split_buffer(&a10);
  _Unwind_Resume(a1);
}

void AMCP::IOKit::Service_Child_Range_For::~Service_Child_Range_For(void **this)
{
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  if (*this)
  {
    IOObjectRelease(*this);
  }
}

uint64_t std::__split_buffer<applesauce::iokit::io_object_holder>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 4);
    *(a1 + 16) = i - 4;
    std::__destroy_at[abi:ne200100]<applesauce::iokit::io_object_holder,0>(v4);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__destroy_at[abi:ne200100]<applesauce::iokit::io_object_holder,0>(uint64_t result)
{
  if (result)
  {
    return IOObjectRelease(result);
  }

  return result;
}

uint64_t applesauce::iokit::kern_return_exception::kern_return_exception(uint64_t a1, const void **a2, mach_error_t a3)
{
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  v7 = &v14;
  std::string::basic_string[abi:ne200100](&v14, v6 + 1);
  if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v7 = v14.__r_.__value_.__r.__words[0];
  }

  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    memmove(v7, v8, v6);
  }

  *(&v7->__r_.__value_.__l.__data_ + v6) = 32;
  v9 = mach_error_string(a3);
  v10 = strlen(v9);
  v11 = std::string::append(&v14, v9, v10);
  v12 = *&v11->__r_.__value_.__l.__data_;
  v15.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
  *&v15.__r_.__value_.__l.__data_ = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  std::runtime_error::runtime_error(a1, &v15);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  *a1 = &unk_1F5980040;
  *(a1 + 16) = a3;
  return a1;
}

void sub_1DE5DDA38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void applesauce::iokit::kern_return_exception::~kern_return_exception(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x1E12C1730);
}

void AMCP::IOKit::Service_Parent_Range_For::~Service_Parent_Range_For(void **this)
{
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  if (*this)
  {
    IOObjectRelease(*this);
  }
}

void HALS_RemotePlugInEngine::_FreeTempBuffers(HALS_RemotePlugInEngine *this)
{
  v1 = this;
  v32 = *MEMORY[0x1E69E9840];
  v2 = *(this + 142);
  v4 = *(v2 + 416);
  v3 = *(v2 + 424);
  *buf = v4;
  v31 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::dynamic_pointer_cast[abi:ne200100]<HALS_UCRemotePlugIn,HALS_UCPlugInBase>(&v28, buf);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  v5 = *(v1 + 102);
  if (v5)
  {
    v6 = *v5;
    HALS_UCRemotePlugIn::unregister_shared_buffer(v28, *(v1 + 331), 0, 0, 3u);
  }

  v7 = *(v1 + 103);
  if (v7)
  {
    v8 = *v7;
    HALS_UCRemotePlugIn::unregister_shared_buffer(v28, *(v1 + 331), 0, 0, 4u);
  }

  HALS_IOEngine2::_GetExternalDriverStreamMixBufferInfoList(&v26, *(v1 + 101));
  v9 = v27;
  v10 = v26;
  if (v27 == v26)
  {
    v11 = 0;
  }

  else
  {
    v25 = v1;
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = v10[1];
      v14 = *(v10 + 5);
      v15 = v12 - v11;
      v16 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v11) >> 3);
      v17 = v16 + 1;
      if (v16 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      if (0x5555555555555556 * (-v11 >> 3) > v17)
      {
        v17 = 0x5555555555555556 * (-v11 >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * (-v11 >> 3) >= 0x555555555555555)
      {
        v18 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v18 = v17;
      }

      if (v18)
      {
        std::allocator<std::tuple<unsigned int,void *,unsigned int>>::allocate_at_least[abi:ne200100](v18);
      }

      v19 = 24 * v16;
      *v19 = *v10;
      *(v19 + 8) = v13;
      *(v19 + 16) = v14;
      v12 = 24 * v16 + 24;
      v20 = (v19 + 24 * (v15 / -24));
      memcpy(v20, v11, v15);
      if (v11)
      {
        operator delete(v11);
      }

      v11 = v20;
      v10 += 4;
    }

    while (v10 != v9);
    if (v20 != v12)
    {
      v21 = v28;
      v22 = v25[331];
      v23 = v11;
      do
      {
        HALS_UCRemotePlugIn::unregister_shared_buffer(v21, v22, 0, *v23, 2u);
        v23 += 6;
      }

      while (v23 != v12);
    }

    v1 = v25;
    v10 = v26;
  }

  std::unique_ptr<HALS_IOEngine2_TempBuffer>::reset[abi:ne200100](v1 + 102, 0);
  std::unique_ptr<HALS_IOEngine2_TempBuffer>::reset[abi:ne200100](v1 + 103, 0);
  if (v10)
  {
    operator delete(v10);
  }

  if (v11)
  {
    operator delete(v11);
  }

  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  v24 = *MEMORY[0x1E69E9840];
}

void sub_1DE5DDE54(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, int buf, uint64_t a22, __int16 a23, int a24, __int16 a25, int a26, __int16 a27, uint64_t a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (v28)
  {
    operator delete(v28);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  _Unwind_Resume(v29);
}

void std::allocator<std::tuple<unsigned int,void *,unsigned int>>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void HALS_RemotePlugInEngine::_AllocateTempBuffers(void ***this)
{
  HALS_IOEngine2::_AllocateTempBuffers(this);
  v2 = this[142];
  v4 = v2[52];
  v3 = v2[53];
  v5 = v4;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::dynamic_pointer_cast[abi:ne200100]<HALS_UCRemotePlugIn,HALS_UCPlugInBase>(v7, &v5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  HALS_UCRemotePlugIn::register_shared_buffer(*v7, *(this + 331), 0, 0, 3u, *this[102], *(this[102] + 2));
}

void sub_1DE5DE3C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(exception_object);
}

void HALS_RemotePlugInEngine::UnregisterIOBuffer(HALS_RemotePlugInEngine *this, uint64_t a2, int a3, uint64_t a4, uint64_t a5, void *a6)
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = ___ZN23HALS_RemotePlugInEngine18UnregisterIOBufferEbjjjPv_block_invoke;
  v16[3] = &unk_1E86774B0;
  v16[5] = &v19;
  v16[6] = this;
  v18 = a2;
  v17 = a3;
  v16[4] = &v23;
  v11 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v11, v16);
  if (v24[3])
  {
    v12 = *(v20 + 6);
    if (v12)
    {
      v13 = *(this + 142);
      v14 = *(v13 + 416);
      v15 = *(v13 + 424);
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        v12 = *(v20 + 6);
      }

      (*(*v14 + 160))(v14, *(this + 331), v12, a4, a2, a5, a6);
      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }
    }
  }

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);
}

void sub_1DE5DE5BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v10 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZN23HALS_RemotePlugInEngine18UnregisterIOBufferEbjjjPv_block_invoke(uint64_t result)
{
  v1 = *(result + 56);
  v2 = *(*(*(result + 48) + 808) + 24 * *(result + 60) + 48);
  v3 = (*(*(*(result + 48) + 808) + 24 * *(result + 60) + 56) - v2) >> 3;
  if (v1 >= v3)
  {
    v4 = 0;
  }

  else
  {
    if (v3 <= v1)
    {
      std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
    }

    v4 = *(v2 + 8 * v1);
  }

  *(*(*(result + 32) + 8) + 24) = v4;
  v5 = *(*(*(result + 32) + 8) + 24);
  if (v5)
  {
    *(*(*(result + 40) + 8) + 24) = *(v5 + 16);
  }

  return result;
}

uint64_t HALS_RemotePlugInEngine::RegisterIOBuffer(HALS_RemotePlugInEngine *this, uint64_t a2, int a3, uint64_t a4, uint64_t a5, void *a6)
{
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = ___ZN23HALS_RemotePlugInEngine16RegisterIOBufferEbjjjPv_block_invoke;
  v18[3] = &unk_1E86774B0;
  v18[5] = &v21;
  v18[6] = this;
  v20 = a2;
  v19 = a3;
  v18[4] = &v25;
  v11 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v11, v18);
  v12 = 560947818;
  if (v26[3])
  {
    v13 = *(v22 + 6);
    if (v13)
    {
      v14 = *(this + 142);
      v15 = *(v14 + 416);
      v16 = *(v14 + 424);
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        v13 = *(v22 + 6);
      }

      v12 = (*(*v15 + 152))(v15, *(this + 331), v13, a4, a2, a5, a6);
      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      }
    }
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);
  return v12;
}

void sub_1DE5DE810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZN23HALS_RemotePlugInEngine16RegisterIOBufferEbjjjPv_block_invoke(uint64_t result)
{
  v1 = *(result + 56);
  v2 = *(*(*(result + 48) + 808) + 24 * *(result + 60) + 48);
  v3 = (*(*(*(result + 48) + 808) + 24 * *(result + 60) + 56) - v2) >> 3;
  if (v1 >= v3)
  {
    v4 = 0;
  }

  else
  {
    if (v3 <= v1)
    {
      std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
    }

    v4 = *(v2 + 8 * v1);
  }

  *(*(*(result + 32) + 8) + 24) = v4;
  v5 = *(*(*(result + 32) + 8) + 24);
  if (v5)
  {
    *(*(*(result + 40) + 8) + 24) = *(v5 + 16);
  }

  return result;
}

uint64_t HALS_RemotePlugInEngine::Unregister_IOThread(HALS_RemotePlugInEngine *this)
{
  v2 = *(this + 142);
  v3 = *(v2 + 416);
  v4 = *(v2 + 424);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = (*(*v3 + 176))(v3, *(this + 331));
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return v5;
}

void sub_1DE5DE93C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_RemotePlugInEngine::Register_IOThread(HALS_RemotePlugInEngine *this, __n128 a2)
{
  v3 = *(this + 142);
  v4 = *(v3 + 416);
  v5 = *(v3 + 424);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = (*(*v4 + 168))(v4, *(this + 331), a2);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return v6;
}

void sub_1DE5DE9C8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_RemotePlugInEngine::GetZeroTimeStamp(HALS_RemotePlugInEngine *this, int a2, double *a3, unint64_t *a4, unint64_t *a5)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = ___ZNK23HALS_RemotePlugInEngine16GetZeroTimeStampEjRdRyS1__block_invoke;
  v8[3] = &unk_1E8677488;
  v8[4] = &v10;
  v8[5] = this;
  v9 = a2;
  v8[6] = a3;
  v8[7] = a4;
  v8[8] = a5;
  v5 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v5, v8);
  v6 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v6;
}

void ___ZNK23HALS_RemotePlugInEngine16GetZeroTimeStampEjRdRyS1__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 1136);
  v4 = *(v3 + 416);
  v5 = *(v3 + 424);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(*(*(a1 + 32) + 8) + 24) = (*(*v4 + 200))(v4, *(v2 + 1324), *(a1 + 72), *(a1 + 48), *(a1 + 56), *(a1 + 64));
  if (v5)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1DE5DEB6C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void HALS_RemotePlugInEngine::~HALS_RemotePlugInEngine(HALS_RemotePlugInEngine *this)
{
  HALS_PlugInEngine::~HALS_PlugInEngine(this);

  JUMPOUT(0x1E12C1730);
}

void AMCP::create_device_node_uid_from_device_uid_and_direction(const __CFString **a1@<X0>, int a2@<W1>, void **a3@<X8>)
{
  if (!*a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::convert_to<std::string,0>(__p, *a1);
  if ((v12 & 0x80u) == 0)
  {
    v5 = v12;
  }

  else
  {
    v5 = __p[1];
  }

  if (a2)
  {
    v6 = "-in";
  }

  else
  {
    v6 = "-out";
  }

  if (a2)
  {
    v7 = 3;
  }

  else
  {
    v7 = 4;
  }

  std::string::basic_string[abi:ne200100](a3, v5 + v7);
  if (*(a3 + 23) < 0)
  {
    a3 = *a3;
  }

  if (v5)
  {
    if ((v12 & 0x80u) == 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    memmove(a3, v8, v5);
  }

  v9 = a3 + v5;
  memcpy(v9, v6, v7);
  v9[v7] = 0;
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

uint64_t *HALS_IOEngine2::_FreeTempBuffers(HALS_IOEngine2 *this)
{
  std::unique_ptr<HALS_IOEngine2_TempBuffer>::reset[abi:ne200100](this + 102, 0);

  return std::unique_ptr<HALS_IOEngine2_TempBuffer>::reset[abi:ne200100](this + 103, 0);
}

uint64_t *std::unique_ptr<HALS_IOEngine2_TempBuffer>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    HALB_IOBufferManager_Server::FreeBuffer(*v2, *(v2 + 8));

    JUMPOUT(0x1E12C1730);
  }

  return result;
}

uint64_t HALS_IOEngine2::_AllocateTempBuffers(HALS_IOEngine2 *this)
{
  v1 = *(this + 101);
  if (v1)
  {
    v2 = 0;
    v3 = 0;
    v4 = 1;
    do
    {
      v5 = v4;
      v6 = v1 + 48 + 24 * v2;
      v7 = *v6;
      v8 = *(v6 + 8);
      while (v7 != v8)
      {
        v10 = *v7++;
        v9 = v10;
        v11 = *(v10 + 68);
        if (v11 <= v3)
        {
          v11 = v3;
        }

        v12 = *(v9 + 108);
        if (v12 <= v11)
        {
          v3 = v11;
        }

        else
        {
          v3 = v12;
        }
      }

      v4 = 0;
      v2 = 1;
    }

    while ((v5 & 1) != 0);
    v13 = *(v1 + 16);
    operator new();
  }

  return 0;
}

void sub_1DE5DEEB8(void *a1)
{
  MEMORY[0x1E12C1730](v1, 0x1010C40113C0ABBLL);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE5DEE9CLL);
}

void HALS_IOEngine2::InitializeAudioIssueDetectorNodes(HALS_IOEngine2 *this)
{
  v1 = *(this + 6);
  if (v1)
  {
    HALS_IssueDetector::Initialize(*(v1 + 32));
  }
}

void HALS_IOEngine2::RegisterAudioIssueDetectorNode(HALS_IOEngine2 *this, CA::StreamDescription *a2, int a3, uint64_t a4, uint64_t a5, char a6)
{
  v38 = *MEMORY[0x1E69E9840];
  if (!*(this + 6))
  {
    goto LABEL_42;
  }

  memset(&v31, 0, sizeof(v31));
  if (!strncmp(this + 836, "Baseband Voice", 0x100uLL) || !strncmp(this + 836, "MaggieDebug", 0x100uLL) || !strncmp(this + 836, "Hawking", 0x100uLL) || !strncmp(this + 836, "Mikeybus Secondary", 0x100uLL) || !strncmp(this + 836, "Reference", 0x100uLL) || !strncmp(this + 836, "Speaker", 0x100uLL) || !strncmp(this + 836, "Codec", 0x100uLL) || !strncmp(this + 836, "AOP Audio-1", 0x100uLL) || !strncmp(this + 836, "Actuator", 0x100uLL))
  {
    std::string::__assign_external(&v31, this + 836);
  }

  std::string::append(&v31, "-", 1uLL);
  if (a3)
  {
    v12 = "Input";
  }

  else
  {
    v12 = "Output";
  }

  if (a3)
  {
    v13 = 5;
  }

  else
  {
    v13 = 6;
  }

  std::string::append(&v31, v12, v13);
  if ((a6 & 1) == 0)
  {
    v14 = *(this + 6);
    v15 = v14[4];
    if (AudioIssueDetectorLibraryLoader(void)::once != -1)
    {
      dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global);
    }

    if (AudioIssueDetectorLibraryLoader(void)::libSym)
    {
      v16 = AudioIssueDetectorLibraryLoader(void)::libSym(v15, &v31, a4, a3 ^ 1u, a2, a5);
      if (!v16)
      {
        v18 = v14[2];
        v17 = v14[3];
        if (v18 >= v17)
        {
          v20 = v14[1];
          v21 = v18 - v20;
          v22 = (v18 - v20) >> 3;
          v23 = v22 + 1;
          if ((v22 + 1) >> 61)
          {
            std::vector<void *>::__throw_length_error[abi:ne200100]();
          }

          v24 = v17 - v20;
          if (v24 >> 2 > v23)
          {
            v23 = v24 >> 2;
          }

          if (v24 >= 0x7FFFFFFFFFFFFFF8)
          {
            v25 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v25 = v23;
          }

          if (v25)
          {
            if (!(v25 >> 61))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v26 = v22;
          v27 = (8 * v22);
          v28 = a4;
          v29 = &v27[-v26];
          *v27 = v28;
          v19 = v27 + 1;
          memcpy(v29, v20, v21);
          v14[1] = v29;
          v14[2] = v19;
          v14[3] = 0;
          if (v20)
          {
            operator delete(v20);
          }
        }

        else
        {
          *v18 = a4;
          v19 = v18 + 8;
        }

        v14[2] = v19;
        goto LABEL_40;
      }
    }

    else
    {
      v16 = -1;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v33 = "HALS_IssueDetector.h";
      v34 = 1024;
      v35 = 139;
      v36 = 1024;
      v37 = v16;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  err = %d calling AudioIssueDetectorClientSetNodeFormat", buf, 0x18u);
    }
  }

LABEL_40:
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

LABEL_42:
  v30 = *MEMORY[0x1E69E9840];
}

void sub_1DE5DF278(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_IOEngine2::_GetStartSample(HALS_IOEngine2 *this)
{
  v1 = *(this + 101);
  if (!v1)
  {
    return 0;
  }

  v2 = v1[6];
  if (v1[7] == v2 && (v2 = v1[9], v1[10] == v2))
  {
    return 0;
  }

  else
  {
    return *(*v2 + 456);
  }
}

void HALS_IOEngine2::_SetStartSample(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  if (*(a1 + 808))
  {
    v6 = atomic_load((a1 + 1112));
    if (v6 == 2)
    {
      if (a2)
      {
        for (i = *(a1 + 776); i != *(a1 + 784); ++i)
        {
          v9 = *i;
          if (*(*(*i + 32) + 16) == a2)
          {
            goto LABEL_9;
          }
        }
      }

      v9 = 0;
LABEL_9:
      v10 = *(a1 + 808);
      v27 = a3;
      v26 = a4;
      if (*(v9 + 159) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(v9 + 136), *(v9 + 144));
      }

      else
      {
        __p = *(v9 + 136);
      }

      v11 = 0;
      v12 = v10 + 48;
      v13 = &v27;
      v14 = 1;
      do
      {
        v15 = v14;
        v16 = *(v12 + 24 * v11);
        v17 = *(v12 + 24 * v11 + 8) - v16;
        if ((v17 & 0x7FFFFFFF8) != 0)
        {
          v18 = (v17 >> 3);
          v19 = *v13;
          v20 = v17 >> 3;
          do
          {
            if (!v20)
            {
              std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
            }

            v21 = *v16;
            if ((a6 ^ 1 | *(*v16 + 20)))
            {
              v22 = *(v21 + 456);
              v23 = v22 != 0 && v19 < v22;
              v24 = v19 < v22 || v22 == 0;
              if (!v23 && v24)
              {
                *(v21 + 456) = v19;
              }
            }

            --v20;
            ++v16;
            --v18;
          }

          while (v18);
        }

        v14 = 0;
        v13 = &v26;
        v11 = 1;
      }

      while ((v15 & 1) != 0);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }
}

void sub_1DE5DF424(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL HALS_IOEngine2::_InitializePositionsForOutputStreams(HALS_IOEngine2 *this, int a2, const HALS_IOEngineInfo *a3)
{
  v5 = *(this + 97);
  v6 = *v5;
  if (*(*(*v5 + 32) + 16) != a2)
  {
    v7 = v5 + 1;
    do
    {
      v8 = *v7++;
      v6 = v8;
    }

    while (*(*(v8 + 32) + 16) != a2);
  }

  result = HALS_IOEngine2_IOContextInfo::HasAnActiveOutputStream(*(v6 + 56), *(v6 + 64));
  if (result && *(a3 + 504) == 0)
  {
    v20 = *(v6 + 112);
    v21 = *(v6 + 120);
    if (v20 != v21)
    {
      v22 = 0;
      *&v23 = *(a3 + 92);
      v24 = *(a3 + 55) + *&v23;
      LODWORD(v23) = *(*(this + 101) + 20);
      v25 = v24 + v23;
      *&v26 = *(a3 + 100);
      v27 = v25 + *&v26;
      LODWORD(v26) = *(a3 + 104);
      LODWORD(v10) = *(a3 + 190);
      v28 = (v27 + v26 + round(*(a3 + 96) * v10) + v10);
      v29 = (v21 - v20 - 40) / 0x28uLL;
      v30 = (v29 + 2) & 0xFFFFFFFFFFFFFFELL;
      v31 = vdupq_n_s64(v29);
      v32 = (v20 + 64);
      do
      {
        v33 = vmovn_s64(vcgeq_u64(v31, vorrq_s8(vdupq_n_s64(v22), xmmword_1DE757E30)));
        if (v33.i8[0])
        {
          *(v32 - 5) = v28;
        }

        if (v33.i8[4])
        {
          *v32 = v28;
        }

        v22 += 2;
        v32 += 10;
      }

      while (v30 != v22);
      do
      {
        if (*(v20 + 32) <= v28)
        {
          *(v20 + 32) = v28;
        }

        v20 += 40;
      }

      while (v20 != v21);
    }
  }

  else
  {
    v12 = *(v6 + 112);
    v13 = *(v6 + 120);
    if (v12 != v13)
    {
      v14 = 0;
      v15 = (v13 - v12 - 40) / 0x28uLL;
      v16 = (v15 + 2) & 0xFFFFFFFFFFFFFFELL;
      v17 = vdupq_n_s64(v15);
      v18 = (v12 + 64);
      do
      {
        v19 = vmovn_s64(vcgeq_u64(v17, vorrq_s8(vdupq_n_s64(v14), xmmword_1DE757E30)));
        if (v19.i8[0])
        {
          *(v18 - 5) = 0;
        }

        if (v19.i8[4])
        {
          *v18 = 0;
        }

        v14 += 2;
        v18 += 10;
      }

      while (v16 != v14);
      do
      {
        if (*(v12 + 32) <= 0)
        {
          *(v12 + 32) = 0;
        }

        v12 += 40;
      }

      while (v12 != v13);
    }
  }

  return result;
}

BOOL HALS_IOEngine2_IOContextInfo::HasAnActiveOutputStream(HALS_IOEngine2_IOContextInfo *this, unint64_t a2)
{
  if (a2 <= 0x3F && (a2 & 0x3F) == 0)
  {
    return 0;
  }

  v2 = 0;
  v3 = (this + 8 * (a2 >> 6));
  while (1)
  {
    v4 = (*this & (1 << v2)) != 0;
    if ((*this & (1 << v2)) != 0)
    {
      break;
    }

    this = (this + 8 * (v2 == 63));
    if (v2 == 63)
    {
      v2 = 0;
    }

    else
    {
      ++v2;
    }

    if (this == v3 && v2 == (a2 & 0x3F))
    {
      return 0;
    }
  }

  return v4;
}

uint64_t HALS_IOEngine2::_WriteToStream_CommitTrailingSilence(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  if (*a6)
  {
    v12 = (*a6 + *(a6 + 8));
  }

  else
  {
    v12 = 0;
  }

  bzero(v12, *(a6 + 12));
  v13 = *(a1 + 16);
  v14 = *(a6 + 12);
  kdebug_trace();
  v65 = 0.0;
  v63 = 0;
  v64 = 0.0;
  LODWORD(v62[0]) = *(a1 + 16);
  v62[1] = &v65;
  v62[2] = &v64;
  v62[3] = &v63;
  if (!a4)
  {
    v20 = 7;
    goto LABEL_15;
  }

  v15 = *(a1 + 808);
  v16 = *(v15 + 48);
  v17 = (*(v15 + 56) - v16) >> 3;
  if (v17 <= a3)
  {
    goto LABEL_13;
  }

  if (v17 <= a3)
  {
    std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
  }

  v18 = *(v16 + 8 * a3);
  if (!v18)
  {
LABEL_13:
    v20 = 1;
    goto LABEL_15;
  }

  if (v18[12] != 1819304813 || (v18[13] & 0x40) != 0)
  {
    v20 = 2;
LABEL_15:
    v63 = v20;
    goto LABEL_16;
  }

  if (v18[16] > *(a6 + 12))
  {
    v20 = 3;
    goto LABEL_15;
  }

  if (a2)
  {
    v22 = *(a1 + 776);
    v23 = *(a1 + 784);
    if (v22 != v23)
    {
      v24 = *(v15 + 16);
      v25 = *(a1 + 776);
      while (1)
      {
        v26 = *v25;
        if (*(*(*v25 + 32) + 16) == a2)
        {
          break;
        }

        if (++v25 == v23)
        {
          goto LABEL_16;
        }
      }

      if ((v23 - v22) >= 9 && !*(a5 + 504))
      {
        v27 = *(v26 + 112);
        if (0xCCCCCCCCCCCCCCCDLL * ((*(v26 + 120) - v27) >> 3) > a3)
        {
          v28 = v27 + 40 * a3;
          v30 = *(v28 + 32);
          v29 = (v28 + 32);
          if (!v30)
          {
            v31 = *(a5 + 656);
            if ((v31 & 0x8000000000000000) == 0)
            {
              *v29 = v31;
            }
          }
        }

        v32 = (*(*a1 + 1320))(a1, a2, a3);
        v64 = v32;
        v33 = *(v26 + 112);
        v34 = 0.0;
        if (0xCCCCCCCCCCCCCCCDLL * ((*(v26 + 120) - v33) >> 3) > a3)
        {
          v34 = *(v33 + 40 * a3 + 32);
        }

        v65 = v34;
        if (v32 <= 0.0 || v32 <= v34)
        {
          v20 = 4;
          goto LABEL_15;
        }

        LODWORD(v36) = (v32 - v34);
        if (v24 >= 0x2000)
        {
          v37 = 0x2000;
        }

        else
        {
          v37 = v24;
        }

        if (v24 <= 0)
        {
          v51 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v52 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v52)
          {
            atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v53 = *(v51 + 8);
          v61 = 16;
          *&v57 = "HALS_IOEngine2.cpp";
          DWORD2(v57) = 3726;
          HIDWORD(v57) = a2;
          v58 = (v32 - v34);
          v59 = v24;
          caulk::concurrent::messenger::enqueue_call<HALS_IOEngine2::_WriteToStream_CommitTrailingSilence(unsigned int,unsigned int,unsigned int,HALS_IOEngineInfo &,HALS_BufferInfo const&)::$_1,std::tuple<char const*,int,unsigned int,int,int>>(v53, &v61, &v57);
          if (v52)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v52);
          }

          v20 = 6;
          goto LABEL_15;
        }

        v38 = v36 - v37;
        if (v36 > v37)
        {
          LODWORD(v36) = v37 & ~(v37 >> 31);
          v39 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v40 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v40)
          {
            atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v55 = v40;
          v41 = *(v39 + 8);
          v61 = 16;
          *&v57 = "HALS_IOEngine2.cpp";
          DWORD2(v57) = 3737;
          HIDWORD(v57) = a2;
          v56 = v38;
          v58 = v38;
          v59 = v36;
          v60 = v24;
          caulk::concurrent::messenger::enqueue_call<HALS_IOEngine2::_WriteToStream_CommitTrailingSilence(unsigned int,unsigned int,unsigned int,HALS_IOEngineInfo &,HALS_BufferInfo const&)::$_2,std::tuple<char const*,int,unsigned int,int,int,int>>(v41, &v61, &v57);
          if (v55)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v55);
          }

          v42 = v65 + v56;
          v43 = *(v26 + 112);
          if (0xCCCCCCCCCCCCCCCDLL * ((*(v26 + 120) - v43) >> 3) <= a3)
          {
            *(a5 + 656) = v42;
          }

          else
          {
            v44 = v42;
            v45 = v43 + 40 * a3;
            v47 = *(v45 + 32);
            v46 = (v45 + 32);
            if (v47 <= v42)
            {
              *v46 = v44;
            }

            *(a5 + 656) = v42;
            v48 = v43 + 40 * a3;
            v50 = *(v48 + 24);
            v49 = (v48 + 24);
            if (v42 < v50)
            {
              *v49 = v44;
            }
          }
        }

        if (v36 >= 1)
        {
          while (1)
          {
            v54 = v36 - a4;
            v36 = v36 >= a4 ? a4 : v36;
            if ((*(*a1 + 1208))(a1, a2, a3, v36, a5, a6, 0))
            {
              break;
            }

            *(a5 + 656) = *(a5 + 656) + v36;
            LODWORD(v36) = v54;
            if (v54 <= 0)
            {
              goto LABEL_16;
            }
          }

          v20 = 5;
          goto LABEL_15;
        }
      }
    }
  }

LABEL_16:
  applesauce::raii::v1::detail::ScopeGuard<HALS_IOEngine2::_WriteToStream_CommitTrailingSilence(unsigned int,unsigned int,unsigned int,HALS_IOEngineInfo &,HALS_BufferInfo const&)::$_0,applesauce::raii::v1::detail::StackExitPolicy>::~ScopeGuard(v62);
  return 0;
}

void sub_1DE5DFAE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  applesauce::raii::v1::detail::ScopeGuard<HALS_IOEngine2::_WriteToStream_CommitTrailingSilence(unsigned int,unsigned int,unsigned int,HALS_IOEngineInfo &,HALS_BufferInfo const&)::$_0,applesauce::raii::v1::detail::StackExitPolicy>::~ScopeGuard(va);
  _Unwind_Resume(a1);
}

caulk::rt_safe_memory_resource *caulk::concurrent::messenger::enqueue_call<HALS_IOEngine2::_WriteToStream_CommitTrailingSilence(unsigned int,unsigned int,unsigned int,HALS_IOEngineInfo &,HALS_BufferInfo const&)::$_1,std::tuple<char const*,int,unsigned int,int,int>>(caulk::concurrent::messenger *a1, _BYTE *a2, __int128 *a3)
{
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {
    v7 = caulk::rt_safe_memory_resource::rt_allocate(result);
    *(v7 + 16) = 0;
    *v7 = &unk_1F5981E78;
    *(v7 + 8) = 0;
    *(v7 + 20) = *a2;
    v8 = *a3;
    *(v7 + 40) = *(a3 + 2);
    *(v7 + 24) = v8;
    *v7 = &unk_1F5981E20;

    return caulk::concurrent::messenger::enqueue(a1, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

caulk::rt_safe_memory_resource *caulk::concurrent::messenger::enqueue_call<HALS_IOEngine2::_WriteToStream_CommitTrailingSilence(unsigned int,unsigned int,unsigned int,HALS_IOEngineInfo &,HALS_BufferInfo const&)::$_2,std::tuple<char const*,int,unsigned int,int,int,int>>(caulk::concurrent::messenger *a1, _BYTE *a2, __int128 *a3)
{
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {
    v7 = caulk::rt_safe_memory_resource::rt_allocate(result);
    *(v7 + 16) = 0;
    *v7 = &unk_1F5981EF8;
    *(v7 + 8) = 0;
    *(v7 + 20) = *a2;
    v8 = *a3;
    *(v7 + 40) = a3[1];
    *(v7 + 24) = v8;
    *v7 = &unk_1F5981EA0;

    return caulk::concurrent::messenger::enqueue(a1, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

double **applesauce::raii::v1::detail::ScopeGuard<HALS_IOEngine2::_WriteToStream_CommitTrailingSilence(unsigned int,unsigned int,unsigned int,HALS_IOEngineInfo &,HALS_BufferInfo const&)::$_0,applesauce::raii::v1::detail::StackExitPolicy>::~ScopeGuard(double **a1)
{
  v2 = *a1[1];
  v3 = *a1;
  v4 = *a1[2];
  v5 = *a1[3];
  kdebug_trace();
  return a1;
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<HALS_IOEngine2::_WriteToStream_CommitTrailingSilence(unsigned int,unsigned int,unsigned int,HALS_IOEngineInfo &,HALS_BufferInfo const&)::$_2,std::tuple<char const*,int,unsigned int,int,int,int>>::perform(caulk::concurrent::message *a1)
{
  caulk::concurrent::details::message_call<HALS_IOEngine2::_WriteToStream_CommitTrailingSilence(unsigned int,unsigned int,unsigned int,HALS_IOEngineInfo &,HALS_BufferInfo const&)::$_2,std::tuple<char const*,int,unsigned int,int,int,int>>::perform(a1);
  caulk::concurrent::message::~message(a1);
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {

    return caulk::rt_safe_memory_resource::rt_deallocate(result, a1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void caulk::concurrent::details::message_call<HALS_IOEngine2::_WriteToStream_CommitTrailingSilence(unsigned int,unsigned int,unsigned int,HALS_IOEngineInfo &,HALS_BufferInfo const&)::$_2,std::tuple<char const*,int,unsigned int,int,int,int>>::perform(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v2 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v3;
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  else
  {
    v4 = *v3;
  }

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 36);
    v9 = *(a1 + 40);
    v10 = *(a1 + 44);
    v11 = *(a1 + 48);
    v13 = 136316418;
    v14 = v6;
    v15 = 1024;
    v16 = v7;
    v17 = 1024;
    v18 = v8;
    v19 = 1024;
    v20 = v9;
    v21 = 1024;
    v22 = v10;
    v23 = 1024;
    v24 = v11;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d _WriteToStream_CommitTrailingSilence: the context (%u), context is too far behind, updating write position by %d frames, max size %d, rb size %d", &v13, 0x2Au);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void caulk::concurrent::details::rt_message_call<HALS_IOEngine2::_WriteToStream_CommitTrailingSilence(unsigned int,unsigned int,unsigned int,HALS_IOEngineInfo &,HALS_BufferInfo const&)::$_2,std::tuple<char const*,int,unsigned int,int,int,int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

void caulk::concurrent::details::message_call<HALS_IOEngine2::_WriteToStream_CommitTrailingSilence(unsigned int,unsigned int,unsigned int,HALS_IOEngineInfo &,HALS_BufferInfo const&)::$_2,std::tuple<char const*,int,unsigned int,int,int,int>>::~message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<HALS_IOEngine2::_WriteToStream_CommitTrailingSilence(unsigned int,unsigned int,unsigned int,HALS_IOEngineInfo &,HALS_BufferInfo const&)::$_1,std::tuple<char const*,int,unsigned int,int,int>>::perform(caulk::concurrent::message *a1)
{
  caulk::concurrent::details::message_call<HALS_IOEngine2::_WriteToStream_CommitTrailingSilence(unsigned int,unsigned int,unsigned int,HALS_IOEngineInfo &,HALS_BufferInfo const&)::$_1,std::tuple<char const*,int,unsigned int,int,int>>::perform(a1);
  caulk::concurrent::message::~message(a1);
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {

    return caulk::rt_safe_memory_resource::rt_deallocate(result, a1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void caulk::concurrent::details::message_call<HALS_IOEngine2::_WriteToStream_CommitTrailingSilence(unsigned int,unsigned int,unsigned int,HALS_IOEngineInfo &,HALS_BufferInfo const&)::$_1,std::tuple<char const*,int,unsigned int,int,int>>::perform(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v2 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v3;
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  else
  {
    v4 = *v3;
  }

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 36);
    v9 = *(a1 + 40);
    v10 = *(a1 + 44);
    v12 = 136316162;
    v13 = v6;
    v14 = 1024;
    v15 = v7;
    v16 = 1024;
    v17 = v8;
    v18 = 1024;
    v19 = v9;
    v20 = 1024;
    v21 = v10;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d _WriteToStream_CommitTrailingSilence: the context (%u) cannot commit trailing silence, max size is 0, wants to commit %d, rb size is %d", &v12, 0x24u);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void caulk::concurrent::details::rt_message_call<HALS_IOEngine2::_WriteToStream_CommitTrailingSilence(unsigned int,unsigned int,unsigned int,HALS_IOEngineInfo &,HALS_BufferInfo const&)::$_1,std::tuple<char const*,int,unsigned int,int,int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

void caulk::concurrent::details::message_call<HALS_IOEngine2::_WriteToStream_CommitTrailingSilence(unsigned int,unsigned int,unsigned int,HALS_IOEngineInfo &,HALS_BufferInfo const&)::$_1,std::tuple<char const*,int,unsigned int,int,int>>::~message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t HALS_IOEngine2::_WriteToStream_ConvertFromTempBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a3 + 160);
  ioOutputDataSize = 0;
  v10 = *a5;
  if (*a6)
  {
    v11 = (*a6 + *(a6 + 8));
  }

  else
  {
    v11 = 0;
  }

  if (*a8)
  {
    v12 = (*a8 + *(a8 + 8));
  }

  else
  {
    v12 = 0;
  }

  if (v10)
  {
    v13 = *(a5 + 2);
    ioOutputDataSize = *(a5 + 3);
    result = AudioConverterConvertBuffer(*v9, ioOutputDataSize, (v10 + v13), &ioOutputDataSize, v12);
  }

  if (v11)
  {
    return AudioConverterConvertBuffer(*v9, *(a6 + 12), v11, &ioOutputDataSize, &v12[ioOutputDataSize]);
  }

  return result;
}

uint64_t HALS_IOEngine2::_WriteToStream_ApplyStreamDSP(HALS_IOEngine2 *this, unsigned int a2, HALS_IOEngine2_StreamInfo *a3, const AudioServerPlugInIOCycleInfo *a4, unsigned int a5, double a6)
{
  result = **(a3 + 23);
  if (result)
  {
    result = (*(*result + 16))(result);
    if (result)
    {
      mSampleTime = a4->mOutputTime.mSampleTime;
      p_mOutputTime = &a4->mOutputTime;
      mHostTime = p_mOutputTime->mHostTime;
      kdebug_trace();
      HALS_IOEngine2_StreamInfo::GetPointersForMixBuffer(&v31, a3, p_mOutputTime->mSampleTime, a5);
      v16 = v31;
      if (v34)
      {
        v17 = v34 + v35;
      }

      else
      {
        v17 = 0;
      }

      if (v31)
      {
        v18 = v36;
        v19 = v33;
        v20 = v32;
        HALS_IOEngine2::GetExtraInputStreamsForOutputProcessing(this, a3, a6, v33, v15);
        HALS_IOStreamDSP::AddInputStreamAtIndex(*(*(a3 + 23) + 128), *(*(a3 + 23) + 136), *(a3 + 17) | (v19 << 32), v16 + v20, 0);
        v30 = 0;
        v21 = *&p_mOutputTime->mRateScalar;
        *v29 = *&p_mOutputTime->mSampleTime;
        *&v29[16] = v21;
        v22 = *&p_mOutputTime->mSMPTETime.mHours;
        *&v29[32] = *&p_mOutputTime->mSMPTETime.mSubframes;
        *&v29[48] = v22;
        v23 = (*(*this + 344))(this);
        HALS_IOEngine2_StreamInfo::ApplyDSP(a3, v29, 0, (*(a3 + 23) + 128), v16 + v20, &v30, v23);
        if (v17)
        {
          v24 = p_mOutputTime->mSampleTime;
          v25 = *&p_mOutputTime->mWordClockTime;
          *&v29[8] = *&p_mOutputTime->mHostTime;
          *&v29[24] = v25;
          *&v29[40] = *&p_mOutputTime->mSMPTETime.mType;
          v26.n128_u64[1] = *&v29[48];
          *&v29[56] = *&p_mOutputTime->mFlags;
          v26.n128_f64[0] = v19;
          v27 = v24 + v19;
          HALS_IOEngine2::GetExtraInputStreamsForOutputProcessing(this, a3, v19 + a6, v18, v26);
          HALS_IOStreamDSP::AddInputStreamAtIndex(*(*(a3 + 23) + 128), *(*(a3 + 23) + 136), *(a3 + 17) | (v18 << 32), v17, 0);
          *v29 = v27;
          v28 = (*(*this + 344))(this);
          HALS_IOEngine2_StreamInfo::ApplyDSP(a3, v29, 1, (*(a3 + 23) + 128), v17, &v30, v28);
        }
      }

      return kdebug_trace();
    }
  }

  return result;
}

void HALS_IOEngine2::GetExtraInputStreamsForOutputProcessing(HALS_IOEngine2 *this, HALS_IOEngine2_StreamInfo *a2, double a3, uint64_t a4, __n128 a5)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 23);
  v6 = *(v5 + 32);
  v7 = *(v5 + 40);
  if (v6 != v7)
  {
    v12 = 0;
    v13 = a4 << 32;
    v14 = 1;
    do
    {
      v15 = *v6;
      v16 = *(*(this + 101) + 72);
      v17 = (*(*(this + 101) + 80) - v16) >> 3;
      if (v15 >= v17)
      {
        goto LABEL_17;
      }

      if (v17 <= v15)
      {
        std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
      }

      v18 = *(v16 + 8 * v15);
      if (!v18)
      {
LABEL_17:
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *v24 = 136315394;
          *&v24[4] = "HALS_IOEngine2.cpp";
          LOWORD(v25) = 1024;
          *(&v25 + 2) = 4275;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  GetExtraInputStreamsForOutputProcessing: no such stream", v24, 0x12u);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        *exception = off_1F5991DD8;
        exception[2] = 1852797029;
      }

      v19 = *(*(a2 + 23) + 104);
      if (0xAAAAAAAAAAAAAAABLL * ((*(*(a2 + 23) + 112) - v19) >> 3) <= v14 - 1)
      {
        v20 = 0;
      }

      else
      {
        v20 = *(v19 + v12);
      }

      v21 = *(v18 + 64) * a4;
      *v24 = v20;
      *&v24[8] = 0;
      v25 = __PAIR64__(a4, v21);
      (*(*this + 1184))(this, v18, a4, v24, a3, a5);
      HALS_IOStreamDSP::AddInputStreamAtIndex(*(*(a2 + 23) + 128), *(*(a2 + 23) + 136), v13 | *(v18 + 68), v20, v14++);
      ++v6;
      v12 += 24;
    }

    while (v6 != v7);
  }

  v22 = *MEMORY[0x1E69E9840];
}

uint64_t HALS_IOEngine2::_WriteToStream_Mix(HALS_IOEngine2 *this, unsigned int a2, HALS_IOEngine2_StreamInfo *a3, double a4, unsigned int a5)
{
  v9 = a4;
  result = HALS_IOEngine2_StreamInfo::GetPointersForMixBuffer(&v35, a3, a4, a5);
  if (v35)
  {
    v11 = (v35 + v36);
  }

  else
  {
    v11 = 0;
  }

  if (v38)
  {
    v12 = (v38 + v39);
  }

  else
  {
    v12 = 0;
  }

  v13 = *(this + 97);
  v14 = *(this + 98);
  if (v13 != v14)
  {
    v30 = v37;
    v15 = v40;
    v16 = (a5 + a4);
    v17 = 1;
    do
    {
      v18 = atomic_load((*v13 + 48));
      if (v18)
      {
        __src = 0;
        v31 = 0;
        result = HALS_IOEngine2_IOContextInfo::GetPointersForOutputStreamAtIndex(*v13, *(a3 + 3), v9, a5, &v34, &__src, &v32, &v31);
        if (v17)
        {
          if (__src && v11)
          {
            result = memcpy(v11, __src, (*(a3 + 16) * v30));
          }

          if (v31 && v12)
          {
            result = memcpy(v12, v31, (*(a3 + 16) * v15));
          }
        }

        else
        {
          v19 = *(a3 + 17);
          v20 = __src;
          if (__src)
          {
            if (v11)
            {
              v21 = (v19 * v30);
              if (v21)
              {
                v22 = v11;
                do
                {
                  v23 = *v20++;
                  *v22 = v23 + *v22;
                  ++v22;
                  --v21;
                }

                while (v21);
              }
            }
          }

          v24 = v31;
          if (v31)
          {
            v25 = v12 == 0;
          }

          else
          {
            v25 = 1;
          }

          v26 = (v19 * v15);
          if (!v25 && v26 != 0)
          {
            v28 = v12;
            do
            {
              v29 = *v24++;
              *v28 = v29 + *v28;
              ++v28;
              --v26;
            }

            while (v26);
          }
        }

        if (*(a3 + 57) <= v16)
        {
          *(a3 + 57) = v16;
        }

        v17 = 0;
      }

      ++v13;
    }

    while (v13 != v14);
  }

  return result;
}

void *HALS_IOEngine2::_WriteToStream_Store(int a1, HALS_IOEngine2_IOContextInfo *this, unsigned int a3, int a4, unsigned int a5, double a6, uint64_t a7)
{
  v33 = *MEMORY[0x1E69E9840];
  v28 = 0;
  __dst = 0;
  v26 = 0;
  v25 = 0;
  HALS_IOEngine2_IOContextInfo::GetPointersForOutputStreamAtIndex(this, a3, a6, a5, &v28, &__dst, &v26, &v25);
  if (*a7)
  {
    v13 = (*a7 + *(a7 + 8));
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v30 = "HALS_IOEngine2.cpp";
      v31 = 1024;
      v32 = 3835;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_IOEngine2::_WriteToStream_Store: ERROR: theInputBuffer is null", buf, 0x12u);
    }

    v13 = 0;
  }

  if (__dst)
  {
    v14 = v28 * a4;
    memcpy(__dst, v13, v14);
  }

  else
  {
    v14 = 0;
  }

  result = v25;
  if (v25)
  {
    result = memcpy(v25, &v13[v14], v26 * a4);
  }

  v16 = *(this + 14);
  if (0xCCCCCCCCCCCCCCCDLL * ((*(this + 15) - v16) >> 3) > a3)
  {
    v17 = v16 + 40 * a3;
    v19 = *(v17 + 24);
    v18 = (v17 + 24);
    if (!v19)
    {
      *v18 = a6;
    }

    v20 = a5 + a6;
    v21 = v16 + 40 * a3;
    v23 = *(v21 + 32);
    v22 = (v21 + 32);
    if (v23 <= v20)
    {
      *v22 = v20;
    }
  }

  v24 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t HALS_IOEngine2::_HandleOverload(void *a1, int a2, unsigned int a3, unsigned int a4, int32x2_t *a5)
{
  if (a2)
  {
    v5 = a1[97];
    v6 = a1[98];
    if (v5 == v6)
    {
      goto LABEL_15;
    }

    v7 = a1[97];
    while (1)
    {
      v8 = *v7;
      if (*(*&(*v7)[4] + 16) == a2)
      {
        break;
      }

      if (++v7 == v6)
      {
        goto LABEL_14;
      }
    }

    a5[2] = vadd_s32(a5[2], v8[2]);
    v10 = *&v8[1] <= *&a5[1] ? a5 : v8;
    *a5->i8 = *v10->i8;
    v6 = a1[98];
    v5 = a1[97];
LABEL_14:
    if ((v6 - v5) <= 8)
    {
LABEL_15:
      v9 = 1852797029;
      while (v5 != v6)
      {
        v11 = *v5;
        if (*(*(*v5 + 4) + 16) == a2)
        {
          v12 = *(a1[101] + 48);
          v13 = (*(a1[101] + 56) - v12) >> 3;
          if (v13 > a3)
          {
            if (v13 <= a3)
            {
              std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
            }

            v14 = a3;
            v15 = *(v12 + 8 * a3);
            if (v15)
            {
              if (*(v15 + 48) == 1819304813 && (*(v15 + 52) & 0x40) == 0)
              {
                HALS_IOEngine2_IOContextInfo::AdjustOutputCountersForOverload(v11, a3, a4, *(v15 + 456));
                v17 = *(v11 + 14);
                v18 = 0xCCCCCCCCCCCCCCCDLL * ((*(v11 + 15) - v17) >> 3) <= v14 ? 0 : *(v17 + 40 * v14 + 32);
                if (*(v15 + 456) <= v18)
                {
                  v9 = 0;
                  *(v15 + 456) = v18;
                  return v9;
                }
              }
            }
          }

          return 0;
        }

        ++v5;
      }
    }

    else
    {
      return 0;
    }
  }

  else if (a1[98] - a1[97] <= 8uLL)
  {
    return 1852797029;
  }

  else
  {
    return 0;
  }

  return v9;
}

void HALS_IOEngine2_IOContextInfo::AdjustOutputCountersForOverload(HALS_IOEngine2_IOContextInfo *this, unsigned int a2, unsigned int a3, uint64_t a4)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((*(this + 15) - *(this + 14)) >> 3) > a2)
  {
    v8 = a2;
    memset(&v45, 0, sizeof(v45));
    v45.mFlags = 1;
    v10 = this + 24;
    v9 = *(this + 3);
    v11 = *(*(v10 + 1) + 104);
    v12 = *(v11 + 1568);
    v13 = *(v11 + 1576);
    if (v12 != v13)
    {
      while (*(*v12 + 88) != v9)
      {
        if (++v12 == v13)
        {
          mSampleTime = 0.0;
          goto LABEL_10;
        }
      }
    }

    mSampleTime = 0.0;
    if (v12 != v13)
    {
      v15 = *v12;
      if (v15)
      {
        if (*(v15 + 88))
        {
          HALS_IOClock::GetCurrentTime(*(v15 + 368), &v45);
          v9 = *(this + 3);
          mSampleTime = v45.mSampleTime;
        }
      }
    }

LABEL_10:
    v16 = (*(*v9 + 360))(v9, 0);
    v17 = (*(**(*(this + 4) + 104) + 304))();
    v18 = *(this + 4);
    v19 = *(v18 + 104);
    v20 = *(v19 + 1568);
    v21 = *(v19 + 1576);
    if (v20 != v21)
    {
      while (*(*v20 + 88) != *(this + 3))
      {
        if (++v20 == v21)
        {
          v22 = 0.0;
          goto LABEL_18;
        }
      }
    }

    v22 = 0.0;
    if (v20 != v21)
    {
      v23 = *v20;
      if (v23)
      {
        if (*(v23 + 88))
        {
          v22 = *(v23 + 872);
        }
      }
    }

LABEL_18:
    v24 = *(this + 14);
    if (0xCCCCCCCCCCCCCCCDLL * ((*(this + 15) - v24) >> 3) > v8)
    {
      v25 = *(v24 + 40 * v8 + 32);
      if (v25 >= 1 && v22 > 0.0 && v22 <= (mSampleTime - v16))
      {
        v26 = (mSampleTime + v16 + a3);
        if (a4 + a3 > v26)
        {
          v26 = a4 + a3;
        }

        if (v25 <= v26)
        {
          v27 = v26;
        }

        else
        {
          v27 = v25;
        }

        if (v25 >= v26)
        {
          v28 = v25;
        }

        else
        {
          v28 = v25 + 1;
        }

        v29 = v27 - v28;
        if (v17 <= 1uLL)
        {
          v30 = 1;
        }

        else
        {
          v30 = v17;
        }

        v31 = v25 < v26;
        v32 = v29 / v30;
        if (v31)
        {
          LODWORD(v32) = v32 + 1;
        }

        v33 = v32 * v17;
        v34 = *(v18 + 16);
        kdebug_trace();
        v35 = v25;
        v36 = *(*(this + 14) + 40 * v8 + 16);
        v49 = 0;
        v48 = 0;
        v47 = 0;
        v46 = 0;
        HALS_IOEngine2_IOContextInfo::GetPointersForOutputStreamAtIndex(this, a2, v25, v33, &v49, &v48, &v47, &v46);
        if (v48)
        {
          bzero(v48, v49 * v36);
        }

        if (v46)
        {
          bzero(v46, v47 * v36);
        }

        v37 = *(this + 14);
        if (0xCCCCCCCCCCCCCCCDLL * ((*(this + 15) - v37) >> 3) > v8)
        {
          v38 = v37 + 40 * v8;
          v40 = *(v38 + 24);
          v39 = (v38 + 24);
          if (!v40)
          {
            *v39 = v35;
          }

          v41 = v33 + v35;
          v42 = v37 + 40 * v8;
          v44 = *(v42 + 32);
          v43 = (v42 + 32);
          if (v44 <= v41)
          {
            *v43 = v41;
          }
        }
      }
    }
  }
}

caulk::rt_safe_memory_resource *HALS_IOEngine2::_WriteToStream(void *a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, void *a6)
{
  v6 = a1[101];
  if (!v6)
  {
    return 0;
  }

  v7 = 1852797029;
  if (a2)
  {
    for (i = a1[97]; i != a1[98]; i += 8)
    {
      if (*(*(*i + 32) + 16) == a2)
      {
        v11 = v6 + 48;
        v10 = *(v6 + 48);
        v12 = (*(v11 + 8) - v10) >> 3;
        if (v12 > a3)
        {
          if (v12 <= a3)
          {
            std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
          }

          v13 = *(v10 + 8 * a3);
          if (v13)
          {
            if (*(v13 + 48) == 1819304813 && (*(v13 + 52) & 0x40) == 0)
            {

              return HALS_IOEngine2::_WriteToStream_Mixable(a1, a2, v13, a4, a5, a6);
            }

            else
            {

              return HALS_IOEngine2::_WriteToStream_NonMixable(a1, a2, v13, a4, a5, a6);
            }
          }
        }

        return v7;
      }
    }
  }

  return v7;
}

caulk::rt_safe_memory_resource *HALS_IOEngine2::_WriteToStream_Mixable(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (*(a5 + 504))
  {
    return 0;
  }

  v12 = *(a3 + 12);
  v87 = 1;
  v13 = a1[102];
  if (v13)
  {
    v86[0] = *v13;
    LODWORD(v86[1]) = 0;
    *(&v86[1] + 4) = vmovn_s64(*(v13 + 8));
  }

  else
  {
    memset(v86, 0, 20);
  }

  (*(*a1 + 1232))(a1, a2, a3, a5, a4, a6, v86, &v87);
  v14 = v87 ? a6 : v86;
  for (i = a1[97]; i != a1[98]; ++i)
  {
    v16 = *i;
    if (*(*(*i + 32) + 16) == a2)
    {
      goto LABEL_13;
    }
  }

  v16 = 0;
LABEL_13:
  (*(*a1 + 1240))(a1, v16, v12, *(a3 + 64), a4, v14, *(a5 + 656));
  v17 = a1[97];
  v18 = *v17;
  if (*(*(*v17 + 4) + 16) != a2)
  {
    v19 = (v17 + 1);
    do
    {
      v20 = *v19++;
      v18 = v20;
    }

    while (*(*(v20 + 4) + 16) != a2);
  }

  v21 = *(a3 + 12);
  v23 = v18 + 112;
  v22 = *(v18 + 14);
  v83 = a3;
  v24 = 0xCCCCCCCCCCCCCCCDLL * ((*(v23 + 8) - v22) >> 3) <= v21 ? 0 : *(v22 + 40 * v21 + 32);
  v25 = a1[98];
  v26.f64[0] = NAN;
  v26.f64[1] = NAN;
  v84 = vnegq_f64(v26);
  do
  {
    v27 = atomic_load(*v17 + 48);
    if (v27)
    {
      v28 = *(*(*v17 + 4) + 104);
      if ((*(*v28 + 168))(v28))
      {
        v29 = *v17;
        if (*(*(*v17 + 4) + 16) != a2)
        {
          HALS_IOEngine2_IOContextInfo::AdjustOutputCountersForOverload(v29, v21, a4, v24);
          v29 = *v17;
        }

        v30 = *(v29 + 14);
        if (0xCCCCCCCCCCCCCCCDLL * ((*(v29 + 15) - v30) >> 3) > v21)
        {
          v31 = *(v30 + 40 * v21 + 24);
          v84 = vbslq_s8(vcgtzq_s64(v31), vbslq_s8(vcgtq_s64(v84, v31), v31, v84), v84);
        }
      }
    }

    ++v17;
  }

  while (v17 != v25);
  v32 = *(a3 + 456);
  if (v84.i64[0] > v32)
  {
    v32 = v84.i64[0];
  }

  v33 = a4 * 1.5;
  if (v33 < (v84.i64[1] - v32))
  {
    v34 = *(a1[92] + 16);
    kdebug_trace();
    v32 = (v84.i64[1] - v33);
  }

  v35 = v84.i64[1] - v32;
  if (v84.i64[1] <= v32)
  {
    return 0;
  }

  v36 = v32;
  (*(*a1 + 1248))(a1, a2, a3, v35, v32);
  v37 = *(a5 + 368);
  v38 = *(a5 + 392);
  v39 = *(a5 + 688);
  *&v99.mRateScalar = *(a5 + 672);
  *&v99.mSMPTETime.mSubframes = v39;
  v40 = *(a5 + 720);
  *&v99.mSMPTETime.mHours = *(a5 + 704);
  v100 = v40;
  v41 = *(a5 + 624);
  v96 = *(a5 + 608);
  v97 = v41;
  v42 = *(a5 + 656);
  v98 = *(a5 + 640);
  *&v99.mSampleTime = v42;
  v43 = *(a5 + 560);
  v94[1] = *(a5 + 544);
  v94[2] = v43;
  v44 = *(a5 + 592);
  v94[3] = *(a5 + 576);
  v95 = v44;
  v45 = *(a5 + 528);
  v93 = *(a5 + 512);
  v94[0] = v45;
  DWORD2(v98) = 0;
  v95 = 0uLL;
  v99.mSampleTime = v36;
  v99.mHostTime = 0;
  v99.mFlags = 1;
  *&v101.mSampleTime = *&v36;
  *&v101.mRateScalar = *&v99.mRateScalar;
  *&v101.mSMPTETime.mSubframes = *&v99.mSMPTETime.mSubframes;
  *&v101.mSMPTETime.mHours = *&v99.mSMPTETime.mHours;
  v101.mFlags = 2;
  HALS_IOClock::TranslateTime(v37, &v99, &v101);
  v99.mHostTime = v101.mHostTime;
  v99.mFlags = 3;
  v101 = v99;
  (*(*a1 + 1256))(a1, a2, a3, &v93, v35);
  v46 = v99.mSampleTime - (*(a5 + 656) - *(a5 + 592));
  if (a1[138])
  {
    v92 = v99;
    (*(*a1 + 1312))(a1, a3, &v92, v35);
  }

  (*(*a1 + 1264))(a1, a2, a3, &v93, v35, v46);
  v47 = a1[102];
  if (v47)
  {
    v48 = *v47;
    v91[0] = *v47;
    LODWORD(v91[1]) = 0;
    *(&v91[1] + 4) = vmovn_s64(*(v47 + 8));
  }

  else
  {
    v48 = 0;
    memset(v91, 0, 20);
  }

  v51 = a1[103];
  if (v51)
  {
    v90[0] = *v51;
    LODWORD(v90[1]) = 0;
    *(&v90[1] + 4) = vmovn_s64(*(v51 + 8));
  }

  else
  {
    memset(v90, 0, 20);
  }

  v52 = **(a3 + 184);
  if (v52 && (*(*v52 + 16))(v52) && (v53 = *(a3 + 184), v54 = *(v53 + 8), v54 != *(v53 + 16)) && *(v53 + 56) != *(v54 + 28))
  {
    memset(&v92, 0, 24);
    (*(*a1 + 1280))(a1, a2, a3, &v93, v90, &v92, v35, v91);
  }

  else
  {
    (*(*a1 + 1272))(a1, a2, a3, &v93, v35, v91);
  }

  v55 = *(a3 + 200);
  if (v55 && (*(*a1 + 976))(a1))
  {
    v92 = v99;
    v92.mFlags = v99.mFlags | 6;
    HALS_IOClock::TranslateTime(v37, &v99, &v92);
    v88 = 0.0;
    v89[0] = 0;
    v89[1] = 0;
    HALS_IOClock::GetRaw0Time(v37, &v88, v89);
    HALB_CaptureFile::Write(v55, v94, &v92.mSampleTime, &v88, v35, v48);
  }

  v56 = *(a1 + 4);
  v57 = *(a3 + 12);
  v82 = v37;
  v85 = v38;
  CalculateSafetyViolation_Write(v37, v38, &v101);
  v59 = v58;
  v60 = v58;
  v61.n128_f32[0] = v58;
  if (v61.n128_f32[0] < 0.0)
  {
    kdebug_trace();
  }

  if (v60 >= 0.0)
  {
    goto LABEL_65;
  }

  v61.n128_u64[0] = *&v101.mSampleTime;
  if (v101.mSampleTime >= v99.mSampleTime)
  {
    goto LABEL_65;
  }

  v62 = a1[97];
  v63 = a1[98];
  if (v62 == v63)
  {
    goto LABEL_65;
  }

  v64 = 0;
  do
  {
    v65 = atomic_load((*v62 + 48));
    if (v65)
    {
      v66 = *(*(*v62 + 32) + 104);
      v64 += (*(*v66 + 160))(v66, v61);
    }

    v62 += 8;
  }

  while (v62 != v63);
  if (v64 <= 1)
  {
LABEL_65:
    kdebug_trace();
    v49 = (*(*a1 + 1288))(a1, a2, v83, &v93, v35, v91);
    kdebug_trace();
    CalculateSafetyViolation_Write(v82, v85, &v101);
    v75 = v74;
    v76 = v74;
    v77 = v74;
    if (v77 < 0)
    {
      kdebug_trace();
    }

    if (v76 < 0.0)
    {
      for (j = a1[97]; ; ++j)
      {
        v79 = *j;
        if (*(*(*j + 32) + 16) == a2)
        {
          break;
        }
      }

      v80 = v93;
      *v79 = v75;
      *(v79 + 8) = v80;
      ++*(v79 + 20);
    }

    return v49;
  }

  v67 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v68 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v68)
  {
    atomic_fetch_add_explicit(&v68->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v81 = *(v67 + 8);
  v69 = (*(*a1 + 336))(a1, v61);
  v70 = (*(*v69 + 224))(v69);
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {
    mSampleTime = v101.mSampleTime;
    v72 = v99.mSampleTime;
    v73 = caulk::rt_safe_memory_resource::rt_allocate(result);
    *(v73 + 20) = 16;
    *(v73 + 16) = 0;
    *(v73 + 24) = "HALS_IOEngine2.cpp";
    *(v73 + 32) = 4373;
    *(v73 + 40) = v70;
    *(v73 + 48) = v72;
    *(v73 + 56) = mSampleTime;
    *(v73 + 64) = v59;
    *(v73 + 72) = v64;
    *v73 = &unk_1F5981F20;
    *(v73 + 8) = 0;
    caulk::concurrent::messenger::enqueue(v81, v73);
    if (v68)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v68);
    }

    goto LABEL_65;
  }

  __break(1u);
  return result;
}

void sub_1DE5E1A04(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_IOEngine2::_WriteToStream_NonMixable(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a3 + 200);
  if ((*(*a1 + 976))(a1))
  {
    v13 = *(a5 + 368);
    v14 = *(a5 + 672);
    *&v37.mSampleTime = *(a5 + 656);
    *&v37.mRateScalar = v14;
    v15 = *(a5 + 704);
    *&v37.mSMPTETime.mSubframes = *(a5 + 688);
    *&v37.mSMPTETime.mHours = v15;
    v16 = *(a5 + 544);
    *&v36.mSampleTime = *(a5 + 528);
    *&v36.mRateScalar = v16;
    v17 = *(a5 + 560);
    v18 = *(a5 + 576);
    if (*a6)
    {
      v19 = *a6 + *(a6 + 8);
    }

    else
    {
      v19 = 0;
    }

    *&v36.mSMPTETime.mSubframes = *(a5 + 560);
    *&v36.mSMPTETime.mHours = v18;
    WriteToCaptureFile(v12, v13, &v37, &v36, a4, v19);
  }

  v20 = *(a1 + 16);
  v21 = *(a3 + 12);
  CalculateSafetyViolation_Write(*(a5 + 368), *(a5 + 392), (a5 + 656));
  v23 = v22;
  if (v23 < 0.0)
  {
    kdebug_trace();
  }

  v24 = *(a5 + 656);
  kdebug_trace();
  v25 = a3;
  v26 = (a5 + 512);
  v27 = (*(*a1 + 1288))(a1, a2, v25, a5 + 512, a4, a6);
  kdebug_trace();
  CalculateSafetyViolation_Write(*(a5 + 368), *(a5 + 392), (a5 + 656));
  v29 = v28;
  v30 = v28;
  v31 = v28;
  if (v31 < 0)
  {
    kdebug_trace();
  }

  if (v30 < 0.0)
  {
    for (i = *(a1 + 776); ; ++i)
    {
      v33 = *i;
      if (*(*(*i + 32) + 16) == a2)
      {
        break;
      }
    }

    v34 = *v26;
    *v33 = v29;
    *(v33 + 8) = v34;
    ++*(v33 + 20);
  }

  return v27;
}

atomic_uint *WriteToCaptureFile(atomic_uint *result, HALS_IOClock *this, AudioTimeStamp *a3, AudioTimeStamp *a4, uint64_t a5, uint64_t a6)
{
  if (result)
  {
    v10 = result;
    v11 = *&a3->mRateScalar;
    *&v15.mSampleTime = *&a3->mSampleTime;
    *&v15.mRateScalar = v11;
    v12 = *&a3->mSMPTETime.mHours;
    *&v15.mSMPTETime.mSubframes = *&a3->mSMPTETime.mSubframes;
    *&v15.mSMPTETime.mHours = v12;
    v15.mFlags = DWORD2(v12) | 6;
    HALS_IOClock::TranslateTime(this, a3, &v15);
    v13 = 0.0;
    v14[0] = 0;
    v14[1] = 0;
    HALS_IOClock::GetRaw0Time(this, &v13, v14);
    return HALB_CaptureFile::Write(v10, a4, &v15.mSampleTime, &v13, a5, a6);
  }

  return result;
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOEngine2::CheckForColoringMixerGlitches(AudioTimeStamp const&,AudioTimeStamp const&,double)::$_0,std::tuple<char const*,int,char const*,double,double,double,unsigned int>>::perform(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v2 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v3;
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  else
  {
    v4 = *v3;
  }

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v11 = *(a1 + 64);
    v12 = *(a1 + 72);
    v15 = 136316674;
    v16 = v6;
    v17 = 1024;
    v18 = v7;
    v19 = 2082;
    v20 = v8;
    v21 = 2048;
    v22 = v9;
    v23 = 2048;
    v24 = v10;
    v25 = 2048;
    v26 = v11;
    v27 = 1024;
    v28 = v12;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Detected possible coloring mixer glitch on %{public}s: buffer time: %.0f  actual time: %.0f  safety violation: %.0lf  with %u running contexts", &v15, 0x40u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  result = caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void caulk::concurrent::details::rt_message_call<HALS_IOEngine2::CheckForColoringMixerGlitches(AudioTimeStamp const&,AudioTimeStamp const&,double)::$_0,std::tuple<char const*,int,char const*,double,double,double,unsigned int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t HALS_IOEngine2::_ReadFromStream_Fetch(double a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v26 = *MEMORY[0x1E69E9840];
  result = HALS_IOEngine2_StreamInfo::GetPointersForMixBuffer(&v16, a3, a1, a4);
  v8 = v16;
  if (v19)
  {
    v9 = (v19 + v20);
  }

  else
  {
    v9 = 0;
  }

  if (v16)
  {
    v10 = v17;
    v11 = v18;
    v12 = v21;
    if (*a5)
    {
      v13 = (*a5 + *(a5 + 8));
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v23 = "HALS_IOEngine2.cpp";
        v24 = 1024;
        v25 = 3337;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_IOEngine2::_ReadFromStream_Fetch: ERROR: theOutputBuffer is null", buf, 0x12u);
      }

      v13 = 0;
    }

    v14 = (*(a3 + 64) * v11);
    result = memcpy(v13, (v8 + v10), v14);
    if (v9)
    {
      result = memcpy(&v13[v14], v9, (*(a3 + 64) * v12));
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t HALS_IOEngine2::_ReadFromStream_ApplyStreamDSP(HALS_IOEngine2 *this, unsigned int a2, HALS_IOEngine2_StreamInfo *a3, const AudioServerPlugInIOCycleInfo *a4, unsigned int a5)
{
  result = **(a3 + 23);
  if (result)
  {
    result = (*(*result + 16))(result);
    if (result)
    {
      mSampleTime = a4->mInputTime.mSampleTime;
      p_mInputTime = &a4->mInputTime;
      mHostTime = p_mInputTime->mHostTime;
      v13 = p_mInputTime[1].mSampleTime;
      v14 = p_mInputTime[1].mHostTime;
      kdebug_trace();
      HALS_IOEngine2_StreamInfo::GetPointersForMixBuffer(&v29, a3, p_mInputTime->mSampleTime, a5);
      v15 = v29;
      v16 = v30;
      v17 = v34;
      if (v32)
      {
        v18 = v32 + v33;
      }

      else
      {
        v18 = 0;
      }

      v27 = v34;
      v28 = v31;
      if (v29)
      {
        HALS_IOStreamDSP::AddInputStreamAtIndex(*(*(a3 + 23) + 128), *(*(a3 + 23) + 136), *(a3 + 17) | (v31 << 32), v29 + v30, 0);
        v19 = *&p_mInputTime->mRateScalar;
        *v26 = *&p_mInputTime->mSampleTime;
        *&v26[16] = v19;
        v20 = *&p_mInputTime->mSMPTETime.mHours;
        *&v26[32] = *&p_mInputTime->mSMPTETime.mSubframes;
        *&v26[48] = v20;
        v21 = (*(*this + 344))(this);
        HALS_IOEngine2_StreamInfo::ApplyDSP(a3, v26, 0, (*(a3 + 23) + 128), v15 + v16, &v28, v21);
        if (v18)
        {
          v22 = *&p_mInputTime->mWordClockTime;
          *&v26[8] = *&p_mInputTime->mHostTime;
          v23 = p_mInputTime->mSampleTime;
          *&v26[24] = v22;
          *&v26[40] = *&p_mInputTime->mSMPTETime.mType;
          *&v26[56] = *&p_mInputTime->mFlags;
          v24 = v23 + __PAIR64__(*&v26[44], v28);
          HALS_IOStreamDSP::AddInputStreamAtIndex(*(*(a3 + 23) + 128), *(*(a3 + 23) + 136), *(a3 + 17) | (v17 << 32), v18, 0);
          *v26 = v24;
          v25 = (*(*this + 344))(this);
          HALS_IOEngine2_StreamInfo::ApplyDSP(a3, v26, 1, (*(a3 + 23) + 128), v18, &v27, v25);
        }
      }

      return kdebug_trace();
    }
  }

  return result;
}

uint64_t HALS_IOEngine2::_ReadFromStream_ConvertToTempBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a3 + 160);
  if (*a8)
  {
    v10 = (*a8 + *(a8 + 8));
  }

  else
  {
    v10 = 0;
  }

  v11 = *a5;
  if (*a6)
  {
    v12 = (*a6 + *(a6 + 8));
  }

  else
  {
    v12 = 0;
  }

  v13 = *(a6 + 16);
  if (v11)
  {
    v14 = *(a5 + 2);
    v15 = *(a5 + 4);
    v16 = (*(a3 + 144) * v15);
    ioOutputDataSize = *(a3 + 64) * v15;
    result = AudioConverterConvertBuffer(*v9, v16, v10, &ioOutputDataSize, (v11 + v14));
    if (!v12)
    {
      return result;
    }
  }

  else
  {
    v16 = 0;
    if (!v12)
    {
      return result;
    }
  }

  v18 = *(a3 + 144) * v13;
  ioOutputDataSize = *(a3 + 64) * v13;
  return AudioConverterConvertBuffer(*v9, v18, &v10[v16], &ioOutputDataSize, v12);
}

uint64_t HALS_IOEngine2::_IsolatedReadFromStream(HALS_IOEngine2 *this, unsigned int a2, uint64_t a3, const HALS_IOEngineInfo *a4, uint64_t a5)
{
  v5 = *(this + 101);
  if (v5)
  {
    v11 = v5 + 72;
    v10 = *(v5 + 72);
    v12 = (*(v11 + 8) - v10) >> 3;
    if (v12 <= a2)
    {
      v13 = 0;
    }

    else
    {
      if (v12 <= a2)
      {
        std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
      }

      v13 = *(v10 + 8 * a2);
    }

    CalculateSafetyViolation_Read(a4, a3);
    v15 = v14;
    if (v15 <= -5.0)
    {
      v16 = *(this + 4);
      kdebug_trace();
    }

    v17 = *(this + 4);
    v18 = *(a4 + 74);
    kdebug_trace();
    (*(*this + 1128))(this, v13, a4 + 512, a3, a5);
    v19 = *(this + 4);
    kdebug_trace();
    CalculateSafetyViolation_Read(a4, a3);
    v21 = v20;
    if (v21 <= -5)
    {
      v22 = *(this + 4);
      kdebug_trace();
    }
  }

  return 0;
}

uint64_t HALS_IOEngine2::_ReadFromStream(void *a1, uint64_t a2, unsigned int a3, uint64_t a4, HALS_IOClock **a5, uint64_t a6)
{
  v6 = a1[101];
  if (!v6)
  {
    return 0;
  }

  result = 1852797029;
  if (a2)
  {
    for (i = a1[97]; i != a1[98]; i += 8)
    {
      if (*(*(*i + 32) + 16) == a2)
      {
        v11 = v6 + 72;
        v10 = *(v6 + 72);
        v12 = (*(v11 + 8) - v10) >> 3;
        if (v12 > a3)
        {
          if (v12 <= a3)
          {
            std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
          }

          v13 = *(v10 + 8 * a3);
          if (v13)
          {
            if (*(v13 + 48) == 1819304813 && (*(v13 + 52) & 0x40) == 0)
            {
              HALS_IOEngine2::_ReadFromStream_Mixable(a1, a2, v13, a4, a5, a6);
            }

            else
            {
              HALS_IOEngine2::_ReadFromStream_NonMixable(a1, a2, v13, a4, a5, a6);
            }

            return 0;
          }
        }

        return result;
      }
    }
  }

  return result;
}

void HALS_IOEngine2::_ReadFromStream_Mixable(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*a6)
  {
    v12 = (*a6 + *(a6 + 8));
  }

  else
  {
    v12 = 0;
  }

  v13 = *(a3 + 456);
  v14 = *(a5 + 592);
  v15 = fmax(v14, 0.0);
  if (!v13)
  {
    v13 = v15;
  }

  v16 = a4;
  v17 = v14 + a4;
  if (v17 > v13)
  {
    v53 = v12;
    v18 = *(a5 + 592);
    *&v57.mSMPTETime.mHours = *(a5 + 576);
    *&v58.mSampleTime = v18;
    v19 = *(a5 + 560);
    *&v57.mRateScalar = *(a5 + 544);
    *&v57.mSMPTETime.mSubframes = v19;
    v20 = *(a5 + 656);
    *&v58.mSMPTETime.mHours = *(a5 + 640);
    v59 = v20;
    v21 = *(a5 + 624);
    *&v58.mRateScalar = *(a5 + 608);
    *&v58.mSMPTETime.mSubframes = v21;
    v22 = *(a5 + 720);
    v62 = *(a5 + 704);
    v63 = v22;
    v23 = *(a5 + 688);
    v60 = *(a5 + 672);
    v61 = v23;
    v24 = *(a5 + 528);
    v56 = *(a5 + 512);
    *&v57.mSampleTime = v24;
    v25 = (v17 - v13);
    v26 = *(a1[101] + 16);
    if (v26 >= v25)
    {
      v27 = v25;
    }

    else
    {
      v27 = v26;
    }

    if (v26 < v25)
    {
      v13 = (v17 - v26);
    }

    v28 = *(a5 + 368);
    DWORD2(v62) = 0;
    v59 = 0uLL;
    v58.mSampleTime = v13;
    v58.mHostTime = 0;
    v58.mFlags = 1;
    *&v64.mSampleTime = COERCE_UNSIGNED_INT64(v13);
    *&v64.mRateScalar = *&v58.mRateScalar;
    *&v64.mSMPTETime.mSubframes = *&v58.mSMPTETime.mSubframes;
    *&v64.mSMPTETime.mHours = *&v58.mSMPTETime.mHours;
    v64.mFlags = 2;
    HALS_IOClock::TranslateTime(v28, &v58, &v64);
    v58.mHostTime = v64.mHostTime;
    v58.mFlags = 3;
    CalculateSafetyViolation_Read(a5, a4);
    if (v29 <= -5)
    {
      v30 = *(a3 + 12);
      v31 = *(a1 + 4);
      kdebug_trace();
    }

    v32 = *(a1 + 4);
    v33 = *(a3 + 12);
    kdebug_trace();
    v34 = a1[102];
    if (v34)
    {
      v52 = *v34;
      v55[0] = *v34;
      LODWORD(v55[1]) = 0;
      *(&v55[1] + 4) = vmovn_s64(*(v34 + 8));
    }

    else
    {
      v52 = 0;
      memset(v55, 0, 20);
    }

    (*(*a1 + 1120))(a1, a2, a3, &v56, v27, v55);
    v35 = *(a1 + 4);
    v36 = *(a3 + 12);
    v37 = *(a3 + 24);
    kdebug_trace();
    CalculateSafetyViolation_Read(a5, a4);
    v39 = v38;
    v40 = v38;
    if (v38 <= -5)
    {
      v41 = *(a1 + 4);
      kdebug_trace();
    }

    if (v40 <= -5.0)
    {
      for (i = a1[97]; ; ++i)
      {
        v43 = *i;
        if (*(*(*i + 32) + 16) == a2)
        {
          break;
        }
      }

      v44 = *(a5 + 512);
      *v43 = v39;
      *(v43 + 8) = v44;
      ++*(v43 + 16);
    }

    v45 = *(a3 + 200);
    if ((*(*a1 + 976))(a1))
    {
      v46 = *(a5 + 368);
      v64 = v58;
      v54 = v57;
      WriteToCaptureFile(v45, v46, &v64, &v54, v27, v52);
    }

    v47 = **(a3 + 184);
    if (v47 && (*(*v47 + 16))(v47) && (v48 = *(a3 + 184), v49 = *(v48 + 8), v49 != *(v48 + 16)) && *(v48 + 56) != *(v49 + 28))
    {
      v51 = a1[103];
      if (v51)
      {
        v64.mSampleTime = *v51;
        LODWORD(v64.mHostTime) = 0;
        *(&v64.mHostTime + 4) = vmovn_s64(*(v51 + 8));
      }

      else
      {
        memset(&v64, 0, 20);
      }

      memset(&v54, 0, 24);
      (*(*a1 + 1160))(a1, a2, a3, &v56, &v64, &v54, v27, v55);
      (*(*a1 + 1176))(a1, a2, a3, &v56, v27);
    }

    else if (v58.mSampleTime >= 0.0)
    {
      (*(*a1 + 1152))(a1, a2, a3, &v56, v27, v55, v58.mSampleTime);
    }

    else
    {
      bzero(v52, (*(a3 + 64) * v27));
    }

    if (a1[138])
    {
      v64 = v58;
      (*(*a1 + 1312))(a1, a3, &v64, v27);
    }

    (*(*a1 + 1168))(a1, a2, a3, &v56, v27);
    v14 = *(a5 + 592);
    v50 = (v14 + v16);
    if (*(a3 + 456) <= v50)
    {
      *(a3 + 456) = v50;
    }

    v12 = v53;
  }

  if (v14 >= 0.0)
  {
    (*(*a1 + 1184))(a1, a3, a4, a6);
    (*(*a1 + 1192))(a1, a2, a3, a5, a4, a6);
  }

  else
  {
    bzero(v12, (*(a3 + 64) * a4));
  }
}

atomic_uint *HALS_IOEngine2::_ReadFromStream_NonMixable(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, HALS_IOClock **a5, uint64_t a6)
{
  v12 = *(a1 + 16);
  v13 = *(a3 + 12);
  CalculateSafetyViolation_Read(a5, a4);
  v15 = v14;
  if (v15 <= -5.0)
  {
    kdebug_trace();
  }

  v16 = a5[74];
  kdebug_trace();
  (*(*a1 + 1120))(a1, a2, a3, a5 + 512, a4, a6);
  v17 = *(a3 + 24);
  kdebug_trace();
  CalculateSafetyViolation_Read(a5, a4);
  v19 = v18;
  v20 = v18;
  v21 = v18;
  if (v21 <= -5)
  {
    kdebug_trace();
  }

  if (v20 < -5.0)
  {
    for (i = *(a1 + 776); ; ++i)
    {
      v23 = *i;
      if (*(*(*i + 32) + 16) == a2)
      {
        break;
      }
    }

    v24 = a5[64];
    *v23 = v19;
    *(v23 + 8) = v24;
    ++*(v23 + 16);
  }

  v25 = *(a3 + 200);
  result = (*(*a1 + 976))(a1);
  if (result)
  {
    v27 = a5[46];
    v28 = *(a5 + 38);
    *&v35.mSampleTime = *(a5 + 37);
    *&v35.mRateScalar = v28;
    v29 = *(a5 + 40);
    *&v35.mSMPTETime.mSubframes = *(a5 + 39);
    *&v35.mSMPTETime.mHours = v29;
    v30 = *(a5 + 34);
    *&v34.mSampleTime = *(a5 + 33);
    *&v34.mRateScalar = v30;
    v31 = *(a5 + 35);
    v32 = *(a5 + 36);
    if (*a6)
    {
      v33 = *a6 + *(a6 + 8);
    }

    else
    {
      v33 = 0;
    }

    *&v34.mSMPTETime.mSubframes = *(a5 + 35);
    *&v34.mSMPTETime.mHours = v32;
    return WriteToCaptureFile(v25, v27, &v35, &v34, a4, v33);
  }

  return result;
}

uint64_t HALS_IOEngine2::_BeginIOCycle(HALS_IOEngine2 *this, unsigned int a2, const HALS_IOEngineInfo *a3)
{
  v3 = *(this + 101);
  v4 = *(v3 + 48);
  v5 = *(v3 + 56) - v4;
  if ((v5 & 0x7FFFFFFF8) != 0)
  {
    v6 = 0;
    do
    {
      if (v6 < (v5 >> 3))
      {
        v7 = *(v4 + 8 * v6);
        if (v7)
        {
          v8 = *(a3 + 98);
          v9 = *(a3 + 43);
          v11 = *(a3 + 44);
          v10 = *(a3 + 45);
          *(v7 + 384) = *(a3 + 42);
          *(v7 + 400) = v9;
          *(v7 + 416) = v11;
          *(v7 + 432) = v10;
          v12 = *(a3 + 34);
          v13 = *(a3 + 35);
          v14 = *(a3 + 37);
          *(v7 + 288) = *(a3 + 36);
          *(v7 + 304) = v14;
          *(v7 + 256) = v12;
          *(v7 + 272) = v13;
          v15 = *(a3 + 38);
          v16 = *(a3 + 39);
          v17 = *(a3 + 41);
          *(v7 + 352) = *(a3 + 40);
          *(v7 + 368) = v17;
          *(v7 + 320) = v15;
          *(v7 + 336) = v16;
          v18 = *(a3 + 33);
          *(v7 + 224) = *(a3 + 32);
          *(v7 + 240) = v18;
          *(v7 + 448) = v8;
          v3 = *(this + 101);
        }
      }

      ++v6;
      v4 = *(v3 + 48);
      v5 = *(v3 + 56) - v4;
    }

    while (v6 < (v5 >> 3));
  }

  return 0;
}

uint64_t HALS_IOEngine2::_EndIOThread(HALS_IOEngine2 *this, uint64_t a2, const HALS_IOEngineInfo *a3, const applesauce::CF::DictionaryRef *a4)
{
  v4 = *(this + 208);
  if (v4)
  {
    v5 = v4 - 1;
    *(this + 208) = v5;
    if (!v5)
    {
      (*(*this + 1064))(this, a2, a3, a4);
    }
  }

  return 0;
}

uint64_t HALS_IOEngine2::_BeginIOThread(HALS_IOEngine2 *this, uint64_t a2, const HALS_IOEngineInfo *a3, const applesauce::CF::DictionaryRef *a4)
{
  v5 = *this;
  if (!*(this + 208))
  {
    result = (*(v5 + 1056))(this, a2, a3, a4);
    if (result)
    {
      return result;
    }

    v7 = 1;
    goto LABEL_6;
  }

  (*(v5 + 1304))(this, a2, a3, a4);
  v6 = *(this + 208);
  if (v6 != -1)
  {
    v7 = v6 + 1;
LABEL_6:
    result = 0;
    *(this + 208) = v7;
    return result;
  }

  return 1852797029;
}

uint64_t HALS_IOEngine2::_StopIO(uint64_t a1, uint64_t a2, int a3, _BYTE *a4)
{
  v7 = *(a2 + 16);
  if (v7)
  {
    for (i = *(a1 + 776); i != *(a1 + 784); ++i)
    {
      v9 = *i;
      if (*(*(*i + 32) + 16) == v7)
      {
        if (!a3)
        {
          v10 = atomic_load((v9 + 48));
          if (v10)
          {
            atomic_store(0, (v9 + 48));
            *(v9 + 104) = 0;
            v12 = *(v9 + 112);
              ;
            }

            *(v9 + 120) = v12;
            (*(*a1 + 720))(a1);
          }
        }

        break;
      }
    }
  }

  v13 = *(a1 + 16);
  v14 = *(a2 + 16);
  v15 = *(a1 + 1104);
  v16 = "Prewarmed";
  v17 = *(a1 + 1096);
  if (!v17)
  {
    v16 = "Stopped";
  }

  if (v15)
  {
    v18 = "Running";
  }

  else
  {
    v18 = v16;
  }

  v19 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v20 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
    goto LABEL_67;
  }

  v55 = a4;
  v21 = (a1 + 1096);
  v22 = *(v19 + 8);
  v23 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
  *(v23 + 16) = 0;
  *(v23 + 20) = 0;
  *(v23 + 24) = "HALS_IOEngine2.cpp";
  *(v23 + 32) = 2687;
  *(v23 + 36) = v13;
  *(v23 + 40) = v14;
  *(v23 + 48) = v17;
  *(v23 + 56) = v15;
  *(v23 + 64) = v18;
  *v23 = &unk_1F5981D70;
  *(v23 + 8) = 0;
  caulk::concurrent::messenger::enqueue(v22, v23);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  result = HALS_IOPrewarmManager::Stop((a1 + 1096), *(*(a2 + 104) + 1100));
  v25 = result;
  v26 = atomic_load((a1 + 1112));
  if (result != v26)
  {
    atomic_store(result != 0, (a1 + 1116));
    v37 = atomic_load((a1 + 1112));
    if (*(a1 + 1104))
    {
      v38 = 0;
    }

    else
    {
      v38 = *v21 == 0;
    }

    if (v37)
    {
      v39 = v38;
    }

    else
    {
      v39 = 0;
    }

    result = (*(*a1 + 1032))(a1, a2, result, v39);
    v40 = atomic_load((a1 + 1112));
    if (*(a1 + 1104) || !v40 || *v21)
    {
      goto LABEL_65;
    }

    result = (*(*a1 + 1376))(a1);
    v41 = *(a1 + 808);
    if (!v41)
    {
LABEL_64:
      *v55 = 1;
      goto LABEL_65;
    }

    v42 = 0;
    v43 = v41 + 48;
    v44 = 1;
    while (1)
    {
      v45 = v44;
      v46 = (v43 + 24 * v42);
      v47 = v46[1] - *v46;
      if ((v47 & 0x7FFFFFFF8) != 0)
      {
        break;
      }

LABEL_63:
      v44 = 0;
      v42 = 1;
      if ((v45 & 1) == 0)
      {
        goto LABEL_64;
      }
    }

    v48 = 0;
    v49 = (v47 >> 3);
    while (v48 < (v46[1] - *v46) >> 3)
    {
      v50 = *(*v46 + 8 * v48);
      v51 = *(v50 + 464);
      if (*(v50 + 472) != v51)
      {
        *(v50 + 472) = v51;
      }

      std::vector<float,HALB_IOBufferManager_Server::Allocator<float>>::shrink_to_fit(v50 + 464);
      std::unique_ptr<FormatConverter>::reset[abi:ne200100]((v50 + 160), 0);
      std::unique_ptr<HALB_CaptureFile>::reset[abi:ne200100]((v50 + 200), 0);
      v52 = *(v50 + 184);
      result = *v52;
      if (*v52)
      {
        result = (*(*result + 88))(result);
        v53 = v52[1];
        v54 = v52[2];
        while (v53 != v54)
        {
          result = std::unique_ptr<HALB_CaptureFile>::reset[abi:ne200100]((v53 + 80), 0);
          v53 += 88;
        }
      }

      if (++v48 == v49)
      {
        goto LABEL_63;
      }
    }

LABEL_67:
    std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
  }

  v27 = *(a1 + 808);
  v29 = *(v27 + 72);
  v28 = *(v27 + 80);
  v30 = v28 - v29;
  if (((v28 - v29) & 0x7FFFFFFF8) != 0)
  {
    v31 = 0;
    do
    {
      if ((v30 & 0x7FFFFFFF8) == 0)
      {
        goto LABEL_35;
      }

      if (v28 == v29)
      {
        goto LABEL_67;
      }

      if (*v29)
      {
        v32 = *(*v29 + 12);
        v33 = *(a1 + 776);
        v34 = *(a1 + 784);
        if (v33 == v34)
        {
          goto LABEL_36;
        }

        while (1)
        {
          if (*(*v33 + 88))
          {
            v35 = atomic_load((*v33 + 48));
            if (*(*v33 + 88) <= v32)
            {
              std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
            }

            if ((v35 & 1) != 0 && (*(*(*v33 + 80) + 8 * (v32 >> 6)) & (1 << v32)) != 0)
            {
              break;
            }
          }

          v33 += 8;
          if (v33 == v34)
          {
            v27 = *(a1 + 808);
            goto LABEL_36;
          }
        }

        v27 = *(a1 + 808);
        v29 = *(v27 + 72);
        v28 = *(v27 + 80);
        v30 = v28 - v29;
      }

      else
      {
LABEL_35:
        v32 = 0;
LABEL_36:
        v29 = *(v27 + 72);
        v28 = *(v27 + 80);
        v30 = v28 - v29;
        v36 = (v28 - v29) >> 3;
        if (v32 < v36)
        {
          if (v36 <= v32)
          {
            goto LABEL_67;
          }

          *(*(v29 + 8 * v32) + 456) = 0;
        }
      }

      ++v31;
    }

    while (v31 < (v30 >> 3));
  }

LABEL_65:
  atomic_store(v25, (a1 + 1112));
  return result;
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOEngine2::_StopIO(HALS_IOContext *,HALS_IOPrewarmManager::EngineState,BOOL &)::$_0,std::tuple<char const*,int,unsigned int,unsigned int,unsigned long long,unsigned long long,char const*>>::perform(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v2 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v3;
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  else
  {
    v4 = *v3;
  }

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 36);
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    v12 = *(a1 + 64);
    v15 = 136316674;
    v16 = v6;
    v17 = 1024;
    v18 = v7;
    v19 = 1024;
    v20 = v8;
    v21 = 1024;
    v22 = v9;
    v23 = 2048;
    v24 = v10;
    v25 = 2048;
    v26 = v11;
    v27 = 2080;
    v28 = v12;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d HALS_IOEngine2::_StopIO(%u) called on Context %u  current state: Prewarm: %llu Play: %llu State: %s", &v15, 0x3Cu);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  result = caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void caulk::concurrent::details::rt_message_call<HALS_IOEngine2::_StopIO(HALS_IOContext *,HALS_IOPrewarmManager::EngineState,BOOL &)::$_0,std::tuple<char const*,int,unsigned int,unsigned int,unsigned long long,unsigned long long,char const*>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t HALS_IOEngine2::_StartIO(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5)
{
  v97[10] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 16);
  v93 = *(a2 + 16);
  v7 = *(a1 + 1104);
  v8 = "Prewarmed";
  v9 = *(a1 + 1096);
  if (!v9)
  {
    v8 = "Stopped";
  }

  if (v7)
  {
    v10 = "Running";
  }

  else
  {
    v10 = v8;
  }

  v11 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v12 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!*MEMORY[0x1E69E3C08])
  {
    goto LABEL_98;
  }

  v13 = (a1 + 1096);
  v14 = *(v11 + 8);
  v15 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
  *(v15 + 16) = 0;
  *(v15 + 20) = 2;
  *(v15 + 24) = "HALS_IOEngine2.cpp";
  *(v15 + 32) = 2593;
  *(v15 + 36) = v6;
  *(v15 + 40) = v93;
  *(v15 + 48) = v9;
  *(v15 + 56) = v7;
  *(v15 + 64) = v10;
  *v15 = &unk_1F5981B38;
  *(v15 + 8) = 0;
  caulk::concurrent::messenger::enqueue(v14, v15);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v16 = HALS_IOPrewarmManager::Start(v13, *(*(a2 + 104) + 1100));
  v17 = atomic_load((a1 + 1112));
  if (v16 == v17)
  {
    v18 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v19 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (*MEMORY[0x1E69E3C08])
    {
      v20 = *(v18 + 8);
      v21 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
      *(v21 + 16) = 0;
      *(v21 + 20) = 0;
      *(v21 + 24) = "HALS_IOEngine2.cpp";
      *(v21 + 32) = 2601;
      *(v21 + 36) = v6;
      *(v21 + 40) = v93;
      *v21 = &unk_1F5981B90;
      *(v21 + 8) = 0;
      caulk::concurrent::messenger::enqueue(v20, v21);
      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }

      goto LABEL_91;
    }

    goto LABEL_98;
  }

  v22 = v16;
  v23 = atomic_load((a1 + 1112));
  if (*(a1 + 1104))
  {
    v24 = 1;
  }

  else
  {
    v24 = *v13 != 0;
  }

  if (v23)
  {
    v25 = 0;
  }

  else
  {
    v25 = v24;
  }

  v26 = (*(*a1 + 1024))(a1, a2, v16, v25);
  if (v26)
  {
    v27 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v28 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v28)
    {
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v29 = a1;
    if (!*MEMORY[0x1E69E3C08])
    {
      goto LABEL_98;
    }

    v30 = *(v27 + 8);
    v31 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
    v32 = v31;
    *(v31 + 8) = 0;
    *(v31 + 16) = 0;
    *(v31 + 20) = 16;
    *(v31 + 24) = "HALS_IOEngine2.cpp";
    *(v31 + 32) = 2616;
    *(v31 + 36) = v93;
    *(v31 + 40) = v26;
    v33 = &unk_1F5981BE8;
    goto LABEL_28;
  }

  v34 = *(a1 + 1104);
  v35 = *(a1 + 1096);
  v36 = "Prewarmed";
  if (!v35)
  {
    v36 = "Stopped";
  }

  if (v34)
  {
    v37 = "Running";
  }

  else
  {
    v37 = v36;
  }

  v38 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v39 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v39)
  {
    atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!*MEMORY[0x1E69E3C08])
  {
    goto LABEL_98;
  }

  v40 = *(v38 + 8);
  v41 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
  *(v41 + 16) = 0;
  *(v41 + 20) = 0;
  *(v41 + 24) = "HALS_IOEngine2.cpp";
  *(v41 + 32) = 2625;
  *(v41 + 36) = v6;
  *(v41 + 40) = v93;
  *(v41 + 48) = v35;
  *(v41 + 56) = v34;
  *(v41 + 64) = v37;
  *v41 = &unk_1F5981C40;
  *(v41 + 8) = 0;
  caulk::concurrent::messenger::enqueue(v40, v41);
  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }

  atomic_store(v22, (a1 + 1112));
  if (!v25)
  {
    goto LABEL_91;
  }

  v42 = *(a1 + 808);
  if (v42)
  {
    HALS_IOContext::GetAudioCaptureMode(a2);
    v43 = 0;
    v44 = 1;
    while (1)
    {
      v94 = v44;
      v45 = (v42 + 48 + 24 * v43);
      v46 = v45[1] - *v45;
      if ((v46 & 0x7FFFFFFF8) != 0)
      {
        break;
      }

LABEL_85:
      v44 = 0;
      v43 = 1;
      if ((v94 & 1) == 0)
      {
        goto LABEL_86;
      }
    }

    v47 = 0;
    v96 = (v46 >> 3);
    while (1)
    {
      if (v47 >= (v45[1] - *v45) >> 3)
      {
        std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
      }

      v48 = *(*v45 + 8 * v47);
      v49 = (*(**v48 + 352))(*v48);
      *(v48 + 9) = v49;
      v48[57] = 0;
      if (*(v48 + 12) == 1819304813)
      {
        v50 = *(v48 + 13);
        if ((v50 & 0x40) == 0)
        {
          break;
        }
      }

      if ((*(**v48 + 592))(*v48))
      {
        HALS_IOEngine2_StreamInfo::CreateCaptureFile(v48);
      }

      if (++v47 == v96)
      {
        goto LABEL_85;
      }
    }

    if ((v50 & 0x20) != 0)
    {
      v51 = 1;
    }

    else
    {
      v51 = *(v48 + 17);
    }

    v52 = (v51 * v49);
    v54 = v48[58];
    v53 = v48[59];
    v55 = v53 - v54;
    v56 = (v53 - v54) >> 2;
    if (v52 <= v56)
    {
      if (v52 >= v56)
      {
        goto LABEL_79;
      }

      v78 = v54 + 4 * v52;
    }

    else
    {
      v57 = v52 - v56;
      v58 = v48[60];
      if (v57 > (v58 - v53) >> 2)
      {
        v59 = v58 - v54;
        v60 = (v58 - v54) >> 1;
        if (v60 <= v52)
        {
          v60 = v52;
        }

        if (v59 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v61 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v61 = v60;
        }

        v97[4] = v48 + 58;
        Buffer = HALB_IOBufferManager_Server::AllocateBuffer((4 * v61));
        v63 = 0;
        v64 = Buffer + v55;
        v65 = Buffer + 4 * v61;
        v66 = (v57 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
        v67 = v66 - ((v57 + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
        v68 = vdupq_n_s64(v66);
        v69 = (v64 + 8);
        do
        {
          v70 = vdupq_n_s64(v63);
          v71 = vmovn_s64(vcgeq_u64(v68, vorrq_s8(v70, xmmword_1DE757E30)));
          if (vuzp1_s16(v71, *v68.i8).u8[0])
          {
            *(v69 - 2) = 0;
          }

          if (vuzp1_s16(v71, *&v68).i8[2])
          {
            *(v69 - 1) = 0;
          }

          if (vuzp1_s16(*&v68, vmovn_s64(vcgeq_u64(v68, vorrq_s8(v70, xmmword_1DE757E20)))).i32[1])
          {
            *v69 = 0;
            v69[1] = 0;
          }

          v63 += 4;
          v69 += 4;
        }

        while (v67 != v63);
        v72 = Buffer + 4 * v52;
        v73 = v48[58];
        v74 = v48[59] - v73;
        v75 = v64 - v74;
        memcpy((v64 - v74), v73, v74);
        v76 = v48[58];
        v48[58] = v75;
        v48[59] = v72;
        v77 = v48[60];
        v48[60] = v65;
        v97[2] = v76;
        v97[3] = v77;
        v97[0] = v76;
        v97[1] = v76;
        std::__split_buffer<float,HALB_IOBufferManager_Server::Allocator<float> &>::~__split_buffer(v97);
LABEL_79:
        std::vector<float,HALB_IOBufferManager_Server::Allocator<float>>::shrink_to_fit((v48 + 58));
        if (*(v48 + 20) == 1)
        {
          operator new();
        }

        operator new();
      }

      v79 = (v57 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
      v80 = vdupq_n_s64(v79);
      v81 = v79 - ((v57 + 0x3FFFFFFFFFFFFFFFLL) & 3);
      v82 = (v53 + 8);
      v83 = -4;
      do
      {
        v84 = vdupq_n_s64(v83 + 4);
        v85 = vmovn_s64(vcgeq_u64(v80, vorrq_s8(v84, xmmword_1DE757E30)));
        if (vuzp1_s16(v85, *v80.i8).u8[0])
        {
          *(v82 - 2) = 0;
        }

        if (vuzp1_s16(v85, *&v80).i8[2])
        {
          *(v82 - 1) = 0;
        }

        if (vuzp1_s16(*&v80, vmovn_s64(vcgeq_u64(v80, vorrq_s8(v84, xmmword_1DE757E20)))).i32[1])
        {
          *v82 = 0;
          v82[1] = 0;
        }

        v83 += 4;
        v82 += 4;
      }

      while (v81 != v83);
      v78 = v53 + 4 * v57;
    }

    v48[59] = v78;
    goto LABEL_79;
  }

LABEL_86:
  v26 = (*(*a1 + 1368))(a1);
  if (!v26)
  {
LABEL_91:
    v26 = 0;
    if (a5)
    {
      v29 = a1;
      v87 = atomic_load((a5 + 48));
      if (v87)
      {
        v26 = 0;
      }

      else
      {
        (*(*a1 + 720))(a1);
        v26 = 0;
        *a4 = 1;
      }
    }

    else
    {
      v29 = a1;
    }

    goto LABEL_96;
  }

  v86 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v28 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v28)
  {
    atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v29 = a1;
  if (!*MEMORY[0x1E69E3C08])
  {
LABEL_98:
    __break(1u);
  }

  v30 = *(v86 + 8);
  v31 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
  v32 = v31;
  *(v31 + 8) = 0;
  *(v31 + 16) = 0;
  *(v31 + 20) = 16;
  *(v31 + 24) = "HALS_IOEngine2.cpp";
  *(v31 + 32) = 2641;
  *(v31 + 36) = v93;
  *(v31 + 40) = v26;
  v33 = &unk_1F5981C98;
LABEL_28:
  *v31 = v33;
  caulk::concurrent::messenger::enqueue(v30, v32);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

LABEL_96:
  v88 = atomic_load((v29 + 1112));
  atomic_store(v88 != 0, (v29 + 1116));
  v89 = *MEMORY[0x1E69E9840];
  return v26;
}

void sub_1DE5E45F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, char a38, uint64_t a39)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    v40 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v41 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v41)
    {
      atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v42 = *(v40 + 8);
    a38 = 16;
    *(v39 - 128) = "HALS_IOEngine2.cpp";
    *(v39 - 120) = 2653;
    *(v39 - 116) = a12;
    *(v39 - 112) = 2003329396;
    caulk::concurrent::messenger::enqueue_call<HALS_IOEngine2::_StartIO(HALS_IOContext *,HALS_IOPrewarmManager::EngineState,BOOL &,HALS_IOEngine2_IOContextInfo *)::$_5,std::tuple<char const*,int,unsigned int,int>>(v42, &a38, (v39 - 128));
    if (v41)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v41);
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE5E4580);
  }

  _Unwind_Resume(exception_object);
}

caulk::rt_safe_memory_resource *caulk::concurrent::messenger::enqueue_call<HALS_IOEngine2::_StartIO(HALS_IOContext *,HALS_IOPrewarmManager::EngineState,BOOL &,HALS_IOEngine2_IOContextInfo *)::$_5,std::tuple<char const*,int,unsigned int,int>>(caulk::concurrent::messenger *a1, _BYTE *a2, __int128 *a3)
{
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {
    v7 = caulk::rt_safe_memory_resource::rt_allocate(result);
    *(v7 + 16) = 0;
    *v7 = &unk_1F5981D48;
    *(v7 + 8) = 0;
    *(v7 + 20) = *a2;
    v8 = *a3;
    *(v7 + 40) = *(a3 + 2);
    *(v7 + 24) = v8;
    *v7 = &unk_1F5981CF0;

    return caulk::concurrent::messenger::enqueue(a1, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<HALS_IOEngine2::_StartIO(HALS_IOContext *,HALS_IOPrewarmManager::EngineState,BOOL &,HALS_IOEngine2_IOContextInfo *)::$_5,std::tuple<char const*,int,unsigned int,int>>::perform(caulk::concurrent::message *a1)
{
  caulk::concurrent::details::message_call<HALS_IOEngine2::_StartIO(HALS_IOContext *,HALS_IOPrewarmManager::EngineState,BOOL &,HALS_IOEngine2_IOContextInfo *)::$_5,std::tuple<char const*,int,unsigned int,int>>::perform(a1);
  caulk::concurrent::message::~message(a1);
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {

    return caulk::rt_safe_memory_resource::rt_deallocate(result, a1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void caulk::concurrent::details::message_call<HALS_IOEngine2::_StartIO(HALS_IOContext *,HALS_IOPrewarmManager::EngineState,BOOL &,HALS_IOEngine2_IOContextInfo *)::$_5,std::tuple<char const*,int,unsigned int,int>>::perform(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v2 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v3;
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  else
  {
    v4 = *v3;
  }

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 36);
    v9 = *(a1 + 40);
    v11 = 136315906;
    v12 = v6;
    v13 = 1024;
    v14 = v7;
    v15 = 1024;
    v16 = v8;
    v17 = 1024;
    v18 = v9;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d HALS_IOEngine2::_StartIO: Caught exception while starting IO on Context %u  result: %d", &v11, 0x1Eu);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void caulk::concurrent::details::rt_message_call<HALS_IOEngine2::_StartIO(HALS_IOContext *,HALS_IOPrewarmManager::EngineState,BOOL &,HALS_IOEngine2_IOContextInfo *)::$_5,std::tuple<char const*,int,unsigned int,int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

void caulk::concurrent::details::message_call<HALS_IOEngine2::_StartIO(HALS_IOContext *,HALS_IOPrewarmManager::EngineState,BOOL &,HALS_IOEngine2_IOContextInfo *)::$_5,std::tuple<char const*,int,unsigned int,int>>::~message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOEngine2::_StartIO(HALS_IOContext *,HALS_IOPrewarmManager::EngineState,BOOL &,HALS_IOEngine2_IOContextInfo *)::$_4,std::tuple<char const*,int,unsigned int,int>>::perform(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v2 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v3;
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  else
  {
    v4 = *v3;
  }

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 36);
    v9 = *(a1 + 40);
    v12 = 136315906;
    v13 = v6;
    v14 = 1024;
    v15 = v7;
    v16 = 1024;
    v17 = v8;
    v18 = 1024;
    v19 = v9;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d HALS_IOEngine2::_StartIO: _AllocateTempBuffers on Context %u  returned error: %d", &v12, 0x1Eu);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  result = caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

void caulk::concurrent::details::rt_message_call<HALS_IOEngine2::_StartIO(HALS_IOContext *,HALS_IOPrewarmManager::EngineState,BOOL &,HALS_IOEngine2_IOContextInfo *)::$_4,std::tuple<char const*,int,unsigned int,int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOEngine2::_StartIO(HALS_IOContext *,HALS_IOPrewarmManager::EngineState,BOOL &,HALS_IOEngine2_IOContextInfo *)::$_3,std::tuple<char const*,int,unsigned int,unsigned int,unsigned long long,unsigned long long,char const*>>::perform(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v2 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v3;
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  else
  {
    v4 = *v3;
  }

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 36);
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    v12 = *(a1 + 64);
    v15 = 136316674;
    v16 = v6;
    v17 = 1024;
    v18 = v7;
    v19 = 1024;
    v20 = v8;
    v21 = 1024;
    v22 = v9;
    v23 = 2048;
    v24 = v10;
    v25 = 2048;
    v26 = v11;
    v27 = 2080;
    v28 = v12;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d \t\tHALS_IOEngine2::_StartIO(%u) succeeded on Context %u  new state: Prewarm: %llu Play: %llu State: %s", &v15, 0x3Cu);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  result = caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void caulk::concurrent::details::rt_message_call<HALS_IOEngine2::_StartIO(HALS_IOContext *,HALS_IOPrewarmManager::EngineState,BOOL &,HALS_IOEngine2_IOContextInfo *)::$_3,std::tuple<char const*,int,unsigned int,unsigned int,unsigned long long,unsigned long long,char const*>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOEngine2::_StartIO(HALS_IOContext *,HALS_IOPrewarmManager::EngineState,BOOL &,HALS_IOEngine2_IOContextInfo *)::$_2,std::tuple<char const*,int,unsigned int,unsigned int>>::perform(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v2 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v3;
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  else
  {
    v4 = *v3;
  }

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 36);
    v9 = *(a1 + 40);
    v12 = 136315906;
    v13 = v6;
    v14 = 1024;
    v15 = v7;
    v16 = 1024;
    v17 = v8;
    v18 = 1024;
    v19 = v9;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d HALS_IOEngine2::_StartIO: _TellHardwareToStart on Context %u  returned error: 0x%X", &v12, 0x1Eu);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  result = caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

void caulk::concurrent::details::rt_message_call<HALS_IOEngine2::_StartIO(HALS_IOContext *,HALS_IOPrewarmManager::EngineState,BOOL &,HALS_IOEngine2_IOContextInfo *)::$_2,std::tuple<char const*,int,unsigned int,unsigned int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOEngine2::_StartIO(HALS_IOContext *,HALS_IOPrewarmManager::EngineState,BOOL &,HALS_IOEngine2_IOContextInfo *)::$_1,std::tuple<char const*,int,unsigned int,unsigned int>>::perform(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v2 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v3;
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  else
  {
    v4 = *v3;
  }

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 36);
    v9 = *(a1 + 40);
    v12 = 136315906;
    v13 = v6;
    v14 = 1024;
    v15 = v7;
    v16 = 1024;
    v17 = v8;
    v18 = 1024;
    v19 = v9;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d HALS_IOEngine2::_StartIO(%u): play state has not changed on Context %u", &v12, 0x1Eu);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  result = caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

void caulk::concurrent::details::rt_message_call<HALS_IOEngine2::_StartIO(HALS_IOContext *,HALS_IOPrewarmManager::EngineState,BOOL &,HALS_IOEngine2_IOContextInfo *)::$_1,std::tuple<char const*,int,unsigned int,unsigned int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOEngine2::_StartIO(HALS_IOContext *,HALS_IOPrewarmManager::EngineState,BOOL &,HALS_IOEngine2_IOContextInfo *)::$_0,std::tuple<char const*,int,unsigned int,unsigned int,unsigned long long,unsigned long long,char const*>>::perform(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v2 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v3;
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  else
  {
    v4 = *v3;
  }

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 36);
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    v12 = *(a1 + 64);
    v15 = 136316674;
    v16 = v6;
    v17 = 1024;
    v18 = v7;
    v19 = 1024;
    v20 = v8;
    v21 = 1024;
    v22 = v9;
    v23 = 2048;
    v24 = v10;
    v25 = 2048;
    v26 = v11;
    v27 = 2080;
    v28 = v12;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d >>> HALS_IOEngine2::_StartIO(%u) called on Context %u  current state: Prewarm: %llu Play: %llu State: %s", &v15, 0x3Cu);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  result = caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void caulk::concurrent::details::rt_message_call<HALS_IOEngine2::_StartIO(HALS_IOContext *,HALS_IOPrewarmManager::EngineState,BOOL &,HALS_IOEngine2_IOContextInfo *)::$_0,std::tuple<char const*,int,unsigned int,unsigned int,unsigned long long,unsigned long long,char const*>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

_DWORD *HALS_IOEngine2::_SetAudioCaptureMode(_DWORD *result, int a2)
{
  v2 = result[201];
  if (a2)
  {
    result[201] = v2 + 1;
    if (!v2)
    {
      return (*(*result + 608))();
    }
  }

  else if (v2)
  {
    v3 = v2 - 1;
    result[201] = v3;
    if (!v3)
    {
      return (*(*result + 616))();
    }
  }

  return result;
}

uint64_t HALS_IOEngine2::CalculateBufferByteSizeForStreamDomainObjectID(HALS_IOEngine2 *this, char a2, int a3, int a4)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = ___ZNK14HALS_IOEngine246CalculateBufferByteSizeForStreamDomainObjectIDEbjj_block_invoke;
  v7[3] = &unk_1E8677948;
  v7[4] = &v11;
  v7[5] = this;
  v10 = a2;
  v8 = a3;
  v9 = a4;
  v4 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v4, v7);
  v5 = *(v12 + 6);
  _Block_object_dispose(&v11, 8);
  return v5;
}

uint64_t ___ZNK14HALS_IOEngine246CalculateBufferByteSizeForStreamDomainObjectIDEbjj_block_invoke(uint64_t result)
{
  v1 = *(*(result + 40) + 808);
  if (v1)
  {
    v2 = v1 + 24 * *(result + 56);
    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    if (v3 == v4)
    {
      v5 = 0;
    }

    else
    {
      v5 = 0;
      do
      {
        v6 = *v3;
        if (*(*v3 + 16) == *(result + 48))
        {
          v7 = v6[12];
          v8 = v6[14];
          v9 = v6[16] * *(result + 52);
          if (v7 == 1819304813)
          {
            v5 = v9;
          }

          else
          {
            v5 = v8;
          }
        }

        v3 += 8;
      }

      while (v3 != v4);
    }

    *(*(*(result + 32) + 8) + 24) = v5;
  }

  return result;
}

void HALS_IOEngine2::GatherDeviceInfo(HALS_IOEngine2 *this)
{
  v2 = (*(*this + 336))(this);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZN14HALS_IOEngine216GatherDeviceInfoEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_41_13209;
  v4[4] = this;
  v4[5] = v2;
  v3 = (*(*v2 + 64))(v2);
  HALB_CommandGate::ExecuteCommand(v3, v4);
}

void ___ZN14HALS_IOEngine216GatherDeviceInfoEv_block_invoke(__n128 *a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 0x40000000;
  v2[2] = ___ZN14HALS_IOEngine216GatherDeviceInfoEv_block_invoke_2;
  v2[3] = &__block_descriptor_tmp_40_13210;
  v3 = a1[2];
  v1 = (*(*v3.n128_u64[0] + 64))(v3.n128_u64[0], v3);
  HALB_CommandGate::ExecuteCommand(v1, v2);
}

void std::default_delete<HALS_IOEngine2_DeviceInfo>::operator()[abi:ne200100](uint64_t a1)
{
  for (i = 72; i != 24; i -= 24)
  {
    v3 = (a1 + i);
    std::vector<std::unique_ptr<HALS_IOEngine2_StreamInfo>>::__destroy_vector::operator()[abi:ne200100](&v3);
  }

  JUMPOUT(0x1E12C1730);
}

void std::vector<std::unique_ptr<HALS_IOEngine2_StreamInfo>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::unique_ptr<HALS_IOEngine2_StreamInfo>::reset[abi:ne200100](--v4, 0);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *std::unique_ptr<HALS_IOEngine2_StreamInfo>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::vector<float,HALB_IOBufferManager_Server::Allocator<float>>::__destroy_vector::operator()[abi:ne200100]((v2 + 58));
    v3 = v2[27];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v4 = v2[25];
    v2[25] = 0;
    if (v4)
    {
      HALB_CaptureFile::~HALB_CaptureFile(v4);
      MEMORY[0x1E12C1730]();
    }

    v5 = v2[24];
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    v6 = v2[20];
    v2[20] = 0;
    if (v6)
    {
      AudioConverterDispose(*v6);
      MEMORY[0x1E12C1730](v6, 0x20C4093837F09);
    }

    JUMPOUT(0x1E12C1730);
  }

  return result;
}

void std::vector<float,HALB_IOBufferManager_Server::Allocator<float>>::__destroy_vector::operator()[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    HALB_IOBufferManager_Server::FreeBuffer(v2, (*(a1 + 16) - v2) & 0xFFFFFFFC);
  }
}

uint64_t std::__split_buffer<std::unique_ptr<HALS_IOEngine2_StreamInfo>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    std::unique_ptr<HALS_IOEngine2_StreamInfo>::reset[abi:ne200100]((i - 8), 0);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t HALS_IOEngine2::_UnregisterIOContext(uint64_t this, HALS_IOContext *a2)
{
  if (a2)
  {
    v3 = this;
    v4 = *(this + 16);
    v5 = *(a2 + 4);
    kdebug_trace();
    v6 = *(v3 + 776);
    v7 = *(v3 + 784);
    while (v6 != v7)
    {
      v8 = *v6++;
      v9 = *(v8 + 32);
      if (v9 == a2)
      {
        v10 = &v6[v9 != a2];
        v11 = v10 - 1;
        v12 = v10;
        if (v10 != v7)
        {
          do
          {
            v11 = v12;
            v13 = v12 - 1;
            v14 = *v12;
            *v12++ = 0;
            std::unique_ptr<HALS_IOEngine2_IOContextInfo>::reset[abi:ne200100](v13, v14);
          }

          while (v12 != v7);
          v7 = *(v3 + 784);
        }

        while (v7 != v11)
        {
          std::unique_ptr<HALS_IOEngine2_IOContextInfo>::reset[abi:ne200100](--v7, 0);
        }

        *(v3 + 784) = v11;
        if (*(v3 + 800))
        {
          v15 = *(v3 + 800);
          v16 = *(a2 + 4);
          v17 = *(v3 + 16);
          v18 = atomic_load((v3 + 432));
          if (v18)
          {
            atomic_store(1u, (v3 + 433));
          }

          if (*(v3 + 728) != 1)
          {
            v21 = *(v3 + 400);
            operator new();
          }

          v25 = v15;
          v26 = v16;
          v27 = v17;
          v19 = *(v3 + 720);
          v20 = *(v3 + 400);
          v24[0] = MEMORY[0x1E69E9820];
          v24[1] = 0x40000000;
          v24[2] = ___ZNK4AMCP7Utility14Dispatch_Queue5asyncIZN14HALS_IOEngine220_UnregisterIOContextEP14HALS_IOContextE3__0EEvOT__block_invoke;
          v24[3] = &__block_descriptor_tmp_173;
          dispatch_group_async(v19, v20, v24);
        }

        HALS_IOEngine2::_UpdateTotalStreamUsage(v3, 0, 0);
        HALS_IOEngine2::_UpdateTotalStreamUsage(v3, 1u, 0);
        break;
      }
    }

    v22 = *(v3 + 16);
    v23 = *(a2 + 4);
    return kdebug_trace();
  }

  return this;
}

uint64_t *std::unique_ptr<HALS_IOEngine2_IOContextInfo>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    if (*(v2 + 159) < 0)
    {
      operator delete(*(v2 + 136));
    }

    v6 = (v2 + 112);
    std::vector<HALS_IOEngine2_IOContextInfo::BufferInfo>::__destroy_vector::operator()[abi:ne200100](&v6);
    v4 = 80;
    while (1)
    {
      v5 = *(v2 + v4);
      if (v5)
      {
        operator delete(v5);
      }

      v4 -= 24;
      if (v4 == 32)
      {
        HALS_ObjectMap::ReleaseObject_LongTerm(*(v2 + 32), v3);

        JUMPOUT(0x1E12C1730);
      }
    }
  }

  return result;
}

void ___ZNK4AMCP7Utility14Dispatch_Queue5asyncIZN14HALS_IOEngine220_UnregisterIOContextEP14HALS_IOContextE3__0EEvOT__block_invoke(_DWORD *a1)
{
  v3 = HALS_ObjectMap::CopyObjectByObjectID(a1[9]);
  if (v3 && a1[8])
  {
    v4 = 0;
    do
    {
      (*(**(v3 + 13) + 216))(*(v3 + 13), a1[10]);
      ++v4;
    }

    while (v4 < a1[8]);
  }

  HALS_ObjectMap::ReleaseObject(v3, v2);
}

void HALS_IOEngine2::_UpdateTotalStreamUsage(void *a1, unsigned int a2, int a3)
{
  v3 = a1[101];
  if (v3)
  {
    v4 = *(v3 + 24 * a2 + 56) - *(v3 + 24 * a2 + 48);
    if ((v4 & 0x7FFFFFFF8) != 0)
    {
      v7 = 0;
      v9 = (v4 >> 3);
      while (1)
      {
        v10 = *(a1[101] + 24 * a2 + 48);
        v11 = v7 >= ((*(a1[101] + 24 * a2 + 56) - v10) >> 3) ? 0 : *(v10 + 8 * v7);
        v12 = a1[97];
        v13 = a1[98];
        if (v12 != v13)
        {
          break;
        }

LABEL_11:
        v15 = 0;
        if (v11)
        {
          goto LABEL_14;
        }

LABEL_21:
        if (++v7 == v9)
        {
          return;
        }
      }

      while (1)
      {
        v14 = *v12 + 56;
        if (v7 < *(v14 + 24 * a2 + 8) && (*(*(v14 + 24 * a2) + 8 * (v7 >> 6)) & (1 << v7)) != 0)
        {
          break;
        }

        if (++v12 == v13)
        {
          goto LABEL_11;
        }
      }

      v15 = 1;
      if (!v11)
      {
        goto LABEL_21;
      }

LABEL_14:
      if (v15 != *(v11 + 32))
      {
        *(v11 + 32) = v15;
        v16 = *(v11 + 8);
        if (a3 == 1)
        {
          v18 = a1[96];
          v20[0] = MEMORY[0x1E69E9820];
          v20[1] = 0x40000000;
          v20[2] = ___ZN14HALS_IOEngine223_UpdateTotalStreamUsageEbN13HALS_IOEngine20StreamUsageExecutionE_block_invoke_2;
          v20[3] = &__block_descriptor_tmp_37_13214;
          v21 = v16;
          v22 = v15;
          v19 = atomic_load((v18 + 32));
          if (v19)
          {
            atomic_store(1u, (v18 + 33));
          }

          dispatch_sync(*v18, v20);
        }

        else if (!a3)
        {
          v17 = a1[96];
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 0x40000000;
          block[2] = ___ZN14HALS_IOEngine223_UpdateTotalStreamUsageEbN13HALS_IOEngine20StreamUsageExecutionE_block_invoke;
          block[3] = &__block_descriptor_tmp_36_13213;
          v24 = v16;
          v25 = v15;
          AMCP::Utility::Dispatch_Queue::async(v17, block);
        }
      }

      goto LABEL_21;
    }
  }
}

void ___ZN14HALS_IOEngine223_UpdateTotalStreamUsageEbN13HALS_IOEngine20StreamUsageExecutionE_block_invoke(uint64_t a1)
{
  v12[0] = 0;
  v12[1] = 0;
  HALS_System::GetInstance(&v13, 0, v12);
  v2 = v13;
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (v2)
  {
    v3 = HALS_ObjectMap::CopyObjectByObjectID(*(a1 + 32));
    v5 = v3;
    if (v3)
    {
      v7 = v3[5];
      v6 = v3[6];
      if (v7 == v6 || v7 == 1634956402)
      {
        if (v7 == 1634956402 || v7 != v6)
        {
          goto LABEL_17;
        }
      }

      else if (v6 == 1634956402)
      {
LABEL_17:
        v10 = *(a1 + 36);
        v11 = v3[4];
        v13 = 0x676C6F6273616374;
        LODWORD(v14) = 0;
        v15 = v10;
        (*(*v3 + 128))(v3, v11, &v13, 4, &v15, 0, 0, 0);
        goto LABEL_18;
      }

      HALS_ObjectMap::ReleaseObject(v3, v4);
      v5 = 0;
    }

LABEL_18:
    HALS_ObjectMap::ReleaseObject(v5, v4);
  }
}

void sub_1DE5E6828(void *a1, HALS_Object *a2)
{
  HALS_ObjectMap::ReleaseObject(v2, a2);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE5E6818);
}

void ___ZN14HALS_IOEngine223_UpdateTotalStreamUsageEbN13HALS_IOEngine20StreamUsageExecutionE_block_invoke_2(uint64_t a1)
{
  v12[0] = 0;
  v12[1] = 0;
  HALS_System::GetInstance(&v13, 0, v12);
  v2 = v13;
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (v2)
  {
    v3 = HALS_ObjectMap::CopyObjectByObjectID(*(a1 + 32));
    v5 = v3;
    if (v3)
    {
      v7 = v3[5];
      v6 = v3[6];
      if (v7 == v6 || v7 == 1634956402)
      {
        if (v7 == 1634956402 || v7 != v6)
        {
          goto LABEL_17;
        }
      }

      else if (v6 == 1634956402)
      {
LABEL_17:
        v10 = *(a1 + 36);
        v11 = v3[4];
        v13 = 0x676C6F6273616374;
        LODWORD(v14) = 0;
        v15 = v10;
        (*(*v3 + 128))(v3, v11, &v13, 4, &v15, 0, 0, 0);
        goto LABEL_18;
      }

      HALS_ObjectMap::ReleaseObject(v3, v4);
      v5 = 0;
    }

LABEL_18:
    HALS_ObjectMap::ReleaseObject(v5, v4);
  }
}

void sub_1DE5E6954(void *a1, HALS_Object *a2)
{
  HALS_ObjectMap::ReleaseObject(v2, a2);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE5E6944);
}

void applesauce::dispatch::v1::async<HALS_IOEngine2::_UnregisterIOContext(HALS_IOContext *)::$_0 &>(dispatch_queue_s *,HALS_IOEngine2::_UnregisterIOContext(HALS_IOContext *)::$_0 &)::{lambda(void *)#1}::__invoke(unsigned int *a1)
{
  v3 = HALS_ObjectMap::CopyObjectByObjectID(a1[1]);
  if (v3 && *a1)
  {
    v4 = 0;
    do
    {
      (*(**(v3 + 13) + 216))(*(v3 + 13), a1[2]);
      ++v4;
    }

    while (v4 < *a1);
  }

  HALS_ObjectMap::ReleaseObject(v3, v2);

  JUMPOUT(0x1E12C1730);
}

void std::vector<HALS_IOEngine2_IOContextInfo::BufferInfo>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        HALS_IOEngine2_IOContextInfo::BufferInfo::~BufferInfo((v4 - 40));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t HALS_IOEngine2::_RegisterIOContext(uint64_t this, HALS_IOContext *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = this;
    v4 = *(this + 16);
    v5 = *(a2 + 4);
    kdebug_trace();
    v6 = *(v3 + 776);
    do
    {
      if (v6 == *(v3 + 784))
      {
        operator new();
      }

      v7 = *v6++;
    }

    while (*(v7 + 32) != a2);
    v8 = *(v3 + 16);
    v9 = *(a2 + 4);
    this = kdebug_trace();
  }

  v10 = *MEMORY[0x1E69E9840];
  return this;
}

void sub_1DE5E73D4(_Unwind_Exception *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  HALS_ObjectMap::ReleaseObject(v36, a2);
  if (a23 < 0)
  {
    operator delete(a18);
  }

  HALS_ObjectMap::ReleaseObject(v35, v39);
  if (*(v37 + 159) < 0)
  {
    operator delete(*(v37 + 136));
  }

  std::vector<HALS_IOEngine2_IOContextInfo::BufferInfo>::__destroy_vector::operator()[abi:ne200100](&a18);
  v41 = 80;
  while (1)
  {
    v42 = *(v37 + v41);
    if (v42)
    {
      operator delete(v42);
    }

    v41 -= 24;
    if (v41 == 32)
    {
      HALS_Releaser_LongTerm<HALS_IOContext>::~HALS_Releaser_LongTerm((v37 + 32), v40);
      MEMORY[0x1E12C1730](v37, v34);
      _Unwind_Resume(a1);
    }
  }
}

void ___ZNK4AMCP7Utility14Dispatch_Queue5asyncIZN14HALS_IOEngine218_RegisterIOContextEP14HALS_IOContextE3__0EEvOT__block_invoke(_DWORD *a1)
{
  v3 = HALS_ObjectMap::CopyObjectByObjectID(a1[9]);
  if (v3)
  {
    if (a1[8])
    {
      v4 = 0;
      do
      {
        (*(**(v3 + 13) + 200))(*(v3 + 13), a1[10]);
        ++v4;
      }

      while (v4 < a1[8]);
    }

    (*(**(v3 + 13) + 224))(*(v3 + 13), a1[10]);
  }

  HALS_ObjectMap::ReleaseObject(v3, v2);
}

void applesauce::dispatch::v1::async<HALS_IOEngine2::_RegisterIOContext(HALS_IOContext *)::$_0 &>(dispatch_queue_s *,HALS_IOEngine2::_RegisterIOContext(HALS_IOContext *)::$_0 &)::{lambda(void *)#1}::__invoke(unsigned int *a1)
{
  v3 = HALS_ObjectMap::CopyObjectByObjectID(a1[1]);
  if (v3)
  {
    if (*a1)
    {
      v4 = 0;
      do
      {
        (*(**(v3 + 13) + 200))(*(v3 + 13), a1[2]);
        ++v4;
      }

      while (v4 < *a1);
    }

    (*(**(v3 + 13) + 224))(*(v3 + 13), a1[2]);
  }

  HALS_ObjectMap::ReleaseObject(v3, v2);

  JUMPOUT(0x1E12C1730);
}

void sub_1DE5E770C(_Unwind_Exception *a1, HALS_Object *a2)
{
  HALS_ObjectMap::ReleaseObject(v3, a2);
  MEMORY[0x1E12C1730](v2, 0x1000C403E1C8BA9);
  _Unwind_Resume(a1);
}

void HALS_IOEngine2::_GetAllRunningContextClientInfos(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 776);
  for (i = *(a1 + 784); v2 != i; v2 += 8)
  {
    v5 = *(*v2 + 32);
    if (v5)
    {
      v6 = (*(*v5 + 240))(*(*v2 + 32));
      v7 = v6;
      v8 = *(v5 + 16);
      v9 = **(v5 + 72);
      v10 = *(a2 + 8);
      v11 = *(a2 + 16);
      if (v10 >= v11)
      {
        v13 = *a2;
        v14 = v10 - *a2;
        v15 = 0xAAAAAAAAAAAAAAABLL * (v14 >> 2) + 1;
        if (v15 > 0x1555555555555555)
        {
          std::vector<void *>::__throw_length_error[abi:ne200100]();
        }

        v16 = 0xAAAAAAAAAAAAAAABLL * ((v11 - v13) >> 2);
        if (2 * v16 > v15)
        {
          v15 = 2 * v16;
        }

        if (v16 >= 0xAAAAAAAAAAAAAAALL)
        {
          v17 = 0x1555555555555555;
        }

        else
        {
          v17 = v15;
        }

        if (v17)
        {
          std::allocator<RunningIOContextClientInfo>::allocate_at_least[abi:ne200100](v17);
        }

        v18 = 4 * (v14 >> 2);
        *v18 = v7;
        *(v18 + 4) = v8;
        *(v18 + 8) = v9;
        v12 = v18 + 12;
        v19 = v18 - v14;
        memcpy((v18 - v14), v13, v14);
        v20 = *a2;
        *a2 = v19;
        *(a2 + 8) = v12;
        *(a2 + 16) = 0;
        if (v20)
        {
          operator delete(v20);
        }
      }

      else
      {
        *v10 = v6;
        v12 = v10 + 12;
        *(v10 + 4) = v8;
        *(v10 + 8) = v9;
      }

      *(a2 + 8) = v12;
    }
  }
}

void HALS_IOEngine2::_GetAllContextIDs(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 776);
  v3 = *(a1 + 784);
  while (v2 != v3)
  {
    v5 = *v2++;
    v6 = *(*(v5 + 32) + 16);
    std::vector<unsigned int>::push_back[abi:ne200100](a2, &v6);
  }
}

void HALS_IOEngine2::_CopyIOContextList(uint64_t a1, HALS_Object *a2)
{
  v2 = *(a1 + 776);
  for (i = *(a1 + 784); v2 != i; v2 += 8)
  {
    v5 = *(*v2 + 32);
    HALS_ObjectMap::RetainObject(v5, a2);
    v10 = v5;
    v7 = *(a2 + 1);
    if (v7 >= *(a2 + 2))
    {
      v9 = std::vector<HALS_Releaser<HALS_IOContext>>::__emplace_back_slow_path<HALS_Releaser<HALS_IOContext>>(a2, &v10);
      v8 = v10;
    }

    else
    {
      v8 = 0;
      *v7 = v5;
      v9 = (v7 + 1);
    }

    *(a2 + 1) = v9;
    HALS_ObjectMap::ReleaseObject(v8, v6);
  }
}

void HALS_IOEngine2::_CopyAllContexts(uint64_t a1, HALS_Object *a2)
{
  v2 = *(a1 + 776);
  for (i = *(a1 + 784); v2 != i; v2 += 8)
  {
    v5 = *(*v2 + 32);
    HALS_ObjectMap::RetainObject(v5, a2);
    v7 = *(a2 + 1);
    v6 = *(a2 + 2);
    if (v7 >= v6)
    {
      v9 = (v7 - *a2) >> 3;
      if ((v9 + 1) >> 61)
      {
        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v10 = v6 - *a2;
      v11 = v10 >> 2;
      if (v10 >> 2 <= (v9 + 1))
      {
        v11 = v9 + 1;
      }

      if (v10 >= 0x7FFFFFFFFFFFFFF8)
      {
        v12 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v11;
      }

      if (v12)
      {
        std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](v12);
      }

      v13 = (8 * v9);
      *v13 = v5;
      v8 = 8 * v9 + 8;
      v14 = *(a2 + 1) - *a2;
      v15 = v13 - v14;
      memcpy(v13 - v14, *a2, v14);
      v16 = *a2;
      *a2 = v15;
      *(a2 + 1) = v8;
      *(a2 + 2) = 0;
      if (v16)
      {
        operator delete(v16);
      }
    }

    else
    {
      *v7 = v5;
      v8 = (v7 + 1);
    }

    *(a2 + 1) = v8;
  }
}

uint64_t HALS_IOEngine2::HandleOverload(uint64_t a1, int a2, int a3, int a4, uint64_t a5)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = ___ZN14HALS_IOEngine214HandleOverloadEjjjRN22HALS_IOContextReporter13EngineMetricsE_block_invoke;
  v8[3] = &unk_1E8677CE8;
  v8[4] = &v12;
  v8[5] = a1;
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v8[6] = a5;
  v5 = (*(*a1 + 64))(a1);
  HALB_CommandGate::ExecuteCommand(v5, v8);
  v6 = *(v13 + 6);
  _Block_object_dispose(&v12, 8);
  return v6;
}

uint64_t ___ZN14HALS_IOEngine214HandleOverloadEjjjRN22HALS_IOContextReporter13EngineMetricsE_block_invoke(uint64_t a1)
{
  result = (*(**(a1 + 40) + 1224))(*(a1 + 40), *(a1 + 56), *(a1 + 60), *(a1 + 64), *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t HALS_IOEngine2::EndWriting(HALS_IOEngine2 *this, int a2, int a3, const HALS_IOEngineInfo *a4)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = ___ZN14HALS_IOEngine210EndWritingEjjRK17HALS_IOEngineInfo_block_invoke;
  v7[3] = &unk_1E8677D38;
  v7[4] = &v10;
  v7[5] = this;
  v8 = a2;
  v9 = a3;
  v7[6] = a4;
  v4 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v4, v7);
  v5 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v5;
}

uint64_t ___ZN14HALS_IOEngine210EndWritingEjjRK17HALS_IOEngineInfo_block_invoke(uint64_t a1)
{
  result = (*(**(a1 + 40) + 1216))(*(a1 + 40), *(a1 + 56), *(a1 + 60), *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t HALS_IOEngine2::WriteToStream_CommitTrailingSilence(uint64_t a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 0x40000000;
  v9[2] = ___ZN14HALS_IOEngine235WriteToStream_CommitTrailingSilenceEjjjR17HALS_IOEngineInfoRK15HALS_BufferInfo_block_invoke;
  v9[3] = &unk_1E8677D10;
  v9[4] = &v13;
  v9[5] = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v9[6] = a5;
  v9[7] = a6;
  v6 = (*(*a1 + 64))(a1);
  HALB_CommandGate::ExecuteCommand(v6, v9);
  v7 = *(v14 + 6);
  _Block_object_dispose(&v13, 8);
  return v7;
}

uint64_t ___ZN14HALS_IOEngine235WriteToStream_CommitTrailingSilenceEjjjR17HALS_IOEngineInfoRK15HALS_BufferInfo_block_invoke(uint64_t a1)
{
  result = (*(**(a1 + 40) + 1296))(*(a1 + 40), *(a1 + 64), *(a1 + 68), *(a1 + 72), *(a1 + 48), *(a1 + 56));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t HALS_IOEngine2::WriteToStream(uint64_t a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 0x40000000;
  v9[2] = ___ZN14HALS_IOEngine213WriteToStreamEjjjRK17HALS_IOEngineInfoRK15HALS_BufferInfo_block_invoke;
  v9[3] = &unk_1E8677CC0;
  v9[4] = &v13;
  v9[5] = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v9[6] = a5;
  v9[7] = a6;
  v6 = (*(*a1 + 64))(a1);
  HALB_CommandGate::ExecuteCommand(v6, v9);
  v7 = *(v14 + 6);
  _Block_object_dispose(&v13, 8);
  return v7;
}

uint64_t ___ZN14HALS_IOEngine213WriteToStreamEjjjRK17HALS_IOEngineInfoRK15HALS_BufferInfo_block_invoke(uint64_t a1)
{
  result = (*(**(a1 + 40) + 1208))(*(a1 + 40), *(a1 + 64), *(a1 + 68), *(a1 + 72), *(a1 + 48), *(a1 + 56), 1);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t HALS_IOEngine2::BeginWriting(HALS_IOEngine2 *this, int a2, int a3, const HALS_IOEngineInfo *a4)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = ___ZN14HALS_IOEngine212BeginWritingEjjRK17HALS_IOEngineInfo_block_invoke;
  v7[3] = &unk_1E8677C98;
  v7[4] = &v10;
  v7[5] = this;
  v8 = a2;
  v9 = a3;
  v7[6] = a4;
  v4 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v4, v7);
  v5 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v5;
}

uint64_t ___ZN14HALS_IOEngine212BeginWritingEjjRK17HALS_IOEngineInfo_block_invoke(uint64_t a1)
{
  result = (*(**(a1 + 40) + 1200))(*(a1 + 40), *(a1 + 56), *(a1 + 60), *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t HALS_IOEngine2::EndReading(HALS_IOEngine2 *this, int a2, int a3, const HALS_IOEngineInfo *a4)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = ___ZN14HALS_IOEngine210EndReadingEjjRK17HALS_IOEngineInfo_block_invoke;
  v7[3] = &unk_1E8677C70;
  v7[4] = &v10;
  v7[5] = this;
  v8 = a2;
  v9 = a3;
  v7[6] = a4;
  v4 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v4, v7);
  v5 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v5;
}

uint64_t ___ZN14HALS_IOEngine210EndReadingEjjRK17HALS_IOEngineInfo_block_invoke(uint64_t a1)
{
  result = (*(**(a1 + 40) + 1112))(*(a1 + 40), *(a1 + 56), *(a1 + 60), *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t HALS_IOEngine2::TeardownForIsolatedIO(HALS_IOEngine2 *this, int a2, int a3)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = ___ZN14HALS_IOEngine221TeardownForIsolatedIOEjj_block_invoke;
  v6[3] = &unk_1E8677BF8;
  v6[4] = &v9;
  v6[5] = this;
  v7 = a2;
  v8 = a3;
  v3 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v3, v6);
  v4 = *(v10 + 6);
  _Block_object_dispose(&v9, 8);
  return v4;
}

void *___ZN14HALS_IOEngine221TeardownForIsolatedIOEjj_block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  v3 = result[101];
  if (v3)
  {
    v4 = *(a1 + 48);
    v6 = v3 + 72;
    v5 = *(v3 + 72);
    v7 = (*(v6 + 8) - v5) >> 3;
    if (v4 >= v7)
    {
      v8 = 0;
    }

    else
    {
      if (v7 <= v4)
      {
        std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
      }

      v8 = *(v5 + 8 * v4);
    }

    result = (*(*result + 1144))(result, v8, *(a1 + 52));
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
  return result;
}

uint64_t HALS_IOEngine2::SetupForIsolatedIO(HALS_IOEngine2 *this, int a2, int a3, int a4)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = ___ZN14HALS_IOEngine218SetupForIsolatedIOEjjj_block_invoke;
  v7[3] = &unk_1E8677BD0;
  v7[4] = &v11;
  v7[5] = this;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v4 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v4, v7);
  v5 = *(v12 + 6);
  _Block_object_dispose(&v11, 8);
  return v5;
}

void *___ZN14HALS_IOEngine218SetupForIsolatedIOEjjj_block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  v3 = result[101];
  if (v3)
  {
    v4 = *(a1 + 48);
    v6 = v3 + 72;
    v5 = *(v3 + 72);
    v7 = (*(v6 + 8) - v5) >> 3;
    if (v4 >= v7)
    {
      v8 = 0;
    }

    else
    {
      if (v7 <= v4)
      {
        std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
      }

      v8 = *(v5 + 8 * v4);
    }

    result = (*(*result + 1136))(result, v8, *(a1 + 52), *(a1 + 56));
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
  return result;
}

uint64_t HALS_IOEngine2::IsolatedReadFromStream(HALS_IOEngine2 *this, int a2, int a3, const HALS_IOEngineInfo *a4, int a5)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = ___ZN14HALS_IOEngine222IsolatedReadFromStreamEjjRK17HALS_IOEngineInfoj_block_invoke;
  v8[3] = &unk_1E8677C20;
  v8[4] = &v12;
  v8[5] = this;
  v9 = a2;
  v10 = a3;
  v8[6] = a4;
  v11 = a5;
  v5 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v5, v8);
  v6 = *(v13 + 6);
  _Block_object_dispose(&v12, 8);
  return v6;
}

void ___ZN14HALS_IOEngine222IsolatedReadFromStreamEjjRK17HALS_IOEngineInfoj_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 24) = (*(*v2 + 1104))(v2, *(a1 + 56), *(a1 + 60), *(a1 + 48), *(a1 + 64));
  v3 = *(a1 + 56);
  v4 = *(v2[101] + 72);
  v5 = (*(v2[101] + 80) - v4) >> 3;
  if (v3 < v5)
  {
    if (v5 <= v3)
    {
      std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
    }

    v6 = *(v4 + 8 * v3);
    if (v6)
    {
      v7 = *(a1 + 48);
      v8 = *(a1 + 60);
      v9 = *(v6 + 200);
      v15 = 0;
      v14 = 0uLL;
      if ((*(*v7 + 328))(v7))
      {
        v10 = *(v7 + 640);
        *&v13.mSMPTETime.mSubframes = *(v7 + 624);
        *&v13.mSMPTETime.mHours = v10;
        v11 = *(v7 + 608);
        *&v13.mSampleTime = *(v7 + 592);
        *&v13.mRateScalar = v11;
        v13.mFlags = DWORD2(v10) | 6;
        HALS_IOClock::TranslateTime(*(v7 + 368), (v7 + 592), &v13);
        v12 = *(v7 + 368);
        v17 = 0;
        v16 = 0uLL;
        HALS_IOClock::GetRaw0Time(v12, &v16, &v16 + 1);
        v14 = v16;
        v15 = v17;
        if (v9)
        {
          HALB_CaptureFile::WriteTimestamps(v9, v7 + 528, &v13, &v14, v8);
        }
      }
    }
  }
}

uint64_t HALS_IOEngine2::ReadFromStream(uint64_t a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 0x40000000;
  v9[2] = ___ZN14HALS_IOEngine214ReadFromStreamEjjjRK17HALS_IOEngineInfoRK15HALS_BufferInfo_block_invoke;
  v9[3] = &unk_1E8677C48;
  v9[4] = &v13;
  v9[5] = a1;
  v10 = a3;
  v11 = a2;
  v12 = a4;
  v9[6] = a5;
  v9[7] = a6;
  v6 = (*(*a1 + 64))(a1);
  HALB_CommandGate::ExecuteCommand(v6, v9);
  v7 = *(v14 + 6);
  _Block_object_dispose(&v13, 8);
  return v7;
}

atomic_uint *___ZN14HALS_IOEngine214ReadFromStreamEjjjRK17HALS_IOEngineInfoRK15HALS_BufferInfo_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 101);
  v4 = *(a1 + 64);
  v5 = v3[9];
  v6 = (v3[10] - v5) >> 3;
  if (v4 >= v6)
  {
    goto LABEL_48;
  }

  if (v6 <= v4)
  {
    goto LABEL_78;
  }

  v7 = *(v5 + 8 * v4);
  if (!v7 || *(v7 + 24) != 1)
  {
LABEL_48:
    v40 = *(a1 + 72);
    v41 = *(a1 + 48);
    v42 = *(a1 + 56);
    result = (*(*v2 + 1096))(*(a1 + 40), *(a1 + 68));
    *(*(*(a1 + 32) + 8) + 24) = result;
    return result;
  }

  v8 = *(a1 + 48);
  v10 = v3[6];
  v9 = v3[7];
  if (v10 == v9)
  {
LABEL_8:
    v11 = 0;
  }

  else
  {
    while (1)
    {
      v11 = *v10;
      if (*(*v10 + 16) == *(v7 + 16))
      {
        break;
      }

      if (++v10 == v9)
      {
        goto LABEL_8;
      }
    }
  }

  v12 = *(a1 + 72);
  v13 = *(a1 + 56);
  if ((*(v8 + 505) & 1) == 0)
  {
    v14 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v15 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (*MEMORY[0x1E69E3C08])
    {
      v16 = *(v14 + 8);
      v17 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
      *(v17 + 16) = 0;
      *(v17 + 20) = 16;
      *(v17 + 24) = "HALS_IOEngine2.cpp";
      *(v17 + 32) = 2853;
      *v17 = &unk_1F5981DC8;
      *(v17 + 8) = 0;
      caulk::concurrent::messenger::enqueue(v16, v17);
      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }

      goto LABEL_15;
    }

    __break(1u);
LABEL_78:
    std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
  }

LABEL_15:
  v18 = v2[4];
  v19 = *(v11 + 12);
  v20 = *(v8 + 592);
  kdebug_trace();
  if ((*(*v2 + 688))(v2))
  {
    v22 = *(v8 + 592);
    v23 = *(v2 + 97);
    v24 = *(v2 + 98);
    v25 = 0.0;
    v26 = 0.0;
    v27 = 0.0;
    if (v23 != v24)
    {
      v28 = *(v11 + 12);
      do
      {
        v29 = atomic_load((*v23 + 48));
        if (v29)
        {
          v30 = *(*(*v23 + 32) + 104);
          if ((*(*v30 + 160))(v30))
          {
            v31 = *(*v23 + 112);
            if (0xCCCCCCCCCCCCCCCDLL * ((*(*v23 + 120) - v31) >> 3) <= v28)
            {
              if (v26 <= v27)
              {
                v26 = 0.0;
                v27 = 0.0;
              }
            }

            else
            {
              v32 = v31 + 40 * v28;
              v21 = *(v32 + 24);
              v33 = *(v32 + 32);
              if (v26 <= v27)
              {
                v26 = *(v32 + 32);
                v27 = *(v32 + 24);
              }

              else if (v33 > v21)
              {
                if (v27 > v21)
                {
                  v27 = *(v32 + 24);
                }

                if (v26 < v33)
                {
                  v26 = *(v32 + 32);
                }
              }
            }
          }
        }

        v23 += 8;
      }

      while (v23 != v24);
    }

    v34 = v12;
    LODWORD(v21) = *(*(v2 + 101) + 16);
    v35 = v26 - *&v21;
    if (v27 >= v35)
    {
      v35 = v27;
    }

    if (v26 <= v35)
    {
      goto LABEL_52;
    }

    v36 = v22 + v34;
    if (v35 < v22)
    {
      v35 = v22;
    }

    if (v36 >= v26)
    {
      v37 = v26;
    }

    else
    {
      v37 = v22 + v34;
    }

    if (v36 <= v22)
    {
      v38 = v22 + v34;
    }

    else
    {
      v38 = v37;
    }

    if (v36 <= v22)
    {
      v35 = v22;
    }

    if (v38 <= v35)
    {
LABEL_52:
      v39 = 0;
      v38 = 0.0;
    }

    else
    {
      v39 = v22 != 0.0;
      v25 = v35;
    }

    if (*v13)
    {
      v44 = (*v13 + *(v13 + 8));
    }

    else
    {
      v44 = 0;
    }

    if (v39)
    {
      v45 = v38 - v25;
      v46 = 0.0;
      if (v38 - v25 < v34)
      {
        bzero(v44, *(v13 + 12));
        v46 = v25 - v22;
      }

      HALS_IOEngine2_StreamInfo::GetPointersForMixBuffer(&v64, v11, v25, v45);
      mCounter = v64.mSMPTETime.mCounter;
      if (v64.mWordClockTime)
      {
        v49 = (v64.mWordClockTime + *&v64.mSMPTETime.mSubframes);
      }

      else
      {
        v49 = 0;
      }

      if (*&v64.mSampleTime)
      {
        mHostTime_high = HIDWORD(v64.mHostTime);
        LODWORD(v47) = *(v11 + 64);
        v44 += (v46 * v47);
        memcpy(v44, (*&v64.mSampleTime + LODWORD(v64.mHostTime)), HIDWORD(v64.mHostTime));
      }

      else
      {
        mHostTime_high = 0;
      }

      if (v49)
      {
        memcpy(&v44[mHostTime_high], v49, mCounter);
      }

      if (v45 >= v34)
      {
        goto LABEL_67;
      }

      goto LABEL_66;
    }
  }

  else if (*v13)
  {
    v44 = (*v13 + *(v13 + 8));
  }

  else
  {
    v44 = 0;
  }

  bzero(v44, *(v13 + 12));
LABEL_66:
  kdebug_trace();
LABEL_67:
  v51 = v2[4];
  v52 = *(v11 + 12);
  mach_absolute_time();
  kdebug_trace();
  *(*(*(a1 + 32) + 8) + 24) = 0;
  v54 = *(a1 + 48);
  v53 = *(a1 + 56);
  if (*v53)
  {
    v55 = *v53 + *(v53 + 8);
  }

  else
  {
    v55 = 0;
  }

  v56 = *(a1 + 72);
  v57 = *(v7 + 200);
  result = (*(*v54 + 328))(v54);
  if (result)
  {
    v58 = *(v54 + 368);
    v59 = *(v54 + 608);
    *&v64.mSampleTime = *(v54 + 592);
    *&v64.mRateScalar = v59;
    v60 = *(v54 + 640);
    *&v64.mSMPTETime.mSubframes = *(v54 + 624);
    *&v64.mSMPTETime.mHours = v60;
    v61 = *(v54 + 544);
    *&v63.mSampleTime = *(v54 + 528);
    *&v63.mRateScalar = v61;
    v62 = *(v54 + 576);
    *&v63.mSMPTETime.mSubframes = *(v54 + 560);
    *&v63.mSMPTETime.mHours = v62;
    return WriteToCaptureFile(v57, v58, &v64, &v63, v56, v55);
  }

  return result;
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOEngine2::_ReadFromSoftwareReferenceStream(unsigned int,unsigned int,unsigned int,HALS_IOEngineInfo const&,HALS_BufferInfo const&)::$_0,std::tuple<char const*,int>>::perform(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v2 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v3;
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  else
  {
    v4 = *v3;
  }

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v10 = 136315394;
    v11 = v6;
    v12 = 1024;
    v13 = v7;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Reading from ref stream when it isnt anchored yet!", &v10, 0x12u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  result = caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void caulk::concurrent::details::rt_message_call<HALS_IOEngine2::_ReadFromSoftwareReferenceStream(unsigned int,unsigned int,unsigned int,HALS_IOEngineInfo const&,HALS_BufferInfo const&)::$_0,std::tuple<char const*,int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t HALS_IOEngine2::BeginReading(HALS_IOEngine2 *this, int a2, int a3, const HALS_IOEngineInfo *a4)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = ___ZN14HALS_IOEngine212BeginReadingEjjRK17HALS_IOEngineInfo_block_invoke;
  v7[3] = &unk_1E8677BA8;
  v7[4] = &v10;
  v7[5] = this;
  v8 = a2;
  v9 = a3;
  v7[6] = a4;
  v4 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v4, v7);
  v5 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v5;
}

uint64_t ___ZN14HALS_IOEngine212BeginReadingEjjRK17HALS_IOEngineInfo_block_invoke(uint64_t a1)
{
  result = (*(**(a1 + 40) + 1088))(*(a1 + 40), *(a1 + 56), *(a1 + 60), *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t HALS_IOEngine2::EndIOCycle(HALS_IOEngine2 *this, int a2, const HALS_IOEngineInfo *a3)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = ___ZN14HALS_IOEngine210EndIOCycleEjRK17HALS_IOEngineInfo_block_invoke;
  v6[3] = &unk_1E8677B80;
  v6[4] = &v8;
  v6[5] = this;
  v7 = a2;
  v6[6] = a3;
  v3 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v3, v6);
  v4 = *(v9 + 6);
  _Block_object_dispose(&v8, 8);
  return v4;
}

uint64_t ___ZN14HALS_IOEngine210EndIOCycleEjRK17HALS_IOEngineInfo_block_invoke(uint64_t a1)
{
  result = (*(**(a1 + 40) + 1080))(*(a1 + 40), *(a1 + 56), *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t HALS_IOEngine2::BeginIOCycle(HALS_IOEngine2 *this, int a2, const HALS_IOEngineInfo *a3)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = ___ZN14HALS_IOEngine212BeginIOCycleEjRK17HALS_IOEngineInfo_block_invoke;
  v6[3] = &unk_1E8677B58;
  v6[4] = &v8;
  v6[5] = this;
  v7 = a2;
  v6[6] = a3;
  v3 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v3, v6);
  v4 = *(v9 + 6);
  _Block_object_dispose(&v8, 8);
  return v4;
}

uint64_t ___ZN14HALS_IOEngine212BeginIOCycleEjRK17HALS_IOEngineInfo_block_invoke(uint64_t a1)
{
  result = (*(**(a1 + 40) + 1072))(*(a1 + 40), *(a1 + 56), *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t HALS_IOEngine2::EndIOThread(HALS_IOEngine2 *this, int a2, const HALS_IOEngineInfo *a3, const applesauce::CF::DictionaryRef *a4)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = ___ZN14HALS_IOEngine211EndIOThreadEjRK17HALS_IOEngineInfoRKN10applesauce2CF13DictionaryRefE_block_invoke;
  v7[3] = &unk_1E8677B30;
  v7[4] = &v9;
  v7[5] = this;
  v8 = a2;
  v7[6] = a3;
  v7[7] = a4;
  v4 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v4, v7);
  v5 = *(v10 + 6);
  _Block_object_dispose(&v9, 8);
  return v5;
}

uint64_t ___ZN14HALS_IOEngine211EndIOThreadEjRK17HALS_IOEngineInfoRKN10applesauce2CF13DictionaryRefE_block_invoke(uint64_t a1)
{
  result = (*(**(a1 + 40) + 1048))(*(a1 + 40), *(a1 + 64), *(a1 + 48), *(a1 + 56));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t HALS_IOEngine2::BeginIOThread(HALS_IOEngine2 *this, int a2, const HALS_IOEngineInfo *a3, const applesauce::CF::DictionaryRef *a4)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = ___ZN14HALS_IOEngine213BeginIOThreadEjRK17HALS_IOEngineInfoRKN10applesauce2CF13DictionaryRefE_block_invoke;
  v7[3] = &unk_1E8677B08;
  v7[4] = &v9;
  v7[5] = this;
  v8 = a2;
  v7[6] = a3;
  v7[7] = a4;
  v4 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v4, v7);
  v5 = *(v10 + 6);
  _Block_object_dispose(&v9, 8);
  return v5;
}

uint64_t ___ZN14HALS_IOEngine213BeginIOThreadEjRK17HALS_IOEngineInfoRKN10applesauce2CF13DictionaryRefE_block_invoke(uint64_t a1)
{
  result = (*(**(a1 + 40) + 1040))(*(a1 + 40), *(a1 + 64), *(a1 + 48), *(a1 + 56), 0);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void HALS_IOEngine2::UpdateEngineIsMixing(HALS_IOEngine2 *this)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 0x40000000;
  v2[2] = ___ZN14HALS_IOEngine220UpdateEngineIsMixingEv_block_invoke;
  v2[3] = &__block_descriptor_tmp_94_13284;
  v2[4] = this;
  v1 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v1, v2);
}

uint64_t ___ZN14HALS_IOEngine220UpdateEngineIsMixingEv_block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(v1 + 776);
  v3 = *(v1 + 784);
  if (v2 == v3)
  {
    v7 = 0;
  }

  else
  {
    v4 = 0;
    do
    {
      v5 = atomic_load((*v2 + 48));
      if (v5)
      {
        v6 = *v2;
        result = HALS_IOEngine2_IOContextInfo::HasAnActiveOutputStream(*(*v2 + 56), *(*v2 + 64));
        if (result)
        {
          result = (*(**(*(v6 + 32) + 104) + 168))(*(*(v6 + 32) + 104));
          v4 += result;
        }
      }

      ++v2;
    }

    while (v2 != v3);
    v7 = v4 > 1;
  }

  atomic_store(v7, (v1 + 1117));
  return result;
}

void HALS_IOEngine2::StopIO(uint64_t a1, uint64_t a2, int a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "HALS_IOEngine2.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 2293;
    *&buf[18] = 2080;
    *&buf[20] = a1 + 836;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_IOEngine2::StopIO: stopping IO on device %s", buf, 0x1Cu);
  }

  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x4002000000;
  *&buf[24] = __Block_byref_object_copy__73;
  v15 = __Block_byref_object_dispose__74;
  __p = 0;
  v17 = 0;
  v18 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = ___ZN14HALS_IOEngine26StopIOEP14HALS_IOContextN21HALS_IOPrewarmManager11EngineStateE_block_invoke;
  v8[3] = &unk_1E8677AC0;
  v8[6] = a1;
  v8[7] = a2;
  v9 = a3;
  v8[4] = &v10;
  v8[5] = buf;
  v6 = (*(*a1 + 64))(a1);
  HALB_CommandGate::ExecuteCommand(v6, v8);
  HALS_IOEngine::SendIsRunningNotifications(a1, *(v11 + 24), *(*&buf[8] + 40), *(*&buf[8] + 48));
  _Block_object_dispose(buf, 8);
  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&v10, 8);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1DE5E9968(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29)
{
  _Block_object_dispose(&a23, 8);
  if (__p)
  {
    a29 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&a19, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__73(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void __Block_byref_object_dispose__74(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

uint64_t ___ZN14HALS_IOEngine26StopIOEP14HALS_IOContextN21HALS_IOPrewarmManager11EngineStateE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  (*(*v2 + 1016))(v2, *(a1 + 56), *(a1 + 64), *(*(a1 + 32) + 8) + 24);
  v3 = *(*v2 + 936);
  v4 = *(*(a1 + 40) + 8) + 40;

  return v3(v2, v4);
}

uint64_t HALS_IOEngine2::StartIO(HALS_IOEngine2 *this, HALS_IOContext *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "HALS_IOEngine2.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 2259;
    *&buf[18] = 2080;
    *&buf[20] = this + 836;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_IOEngine2::StartIO: starting IO on device %s", buf, 0x1Cu);
  }

  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x4002000000;
  *&buf[24] = __Block_byref_object_copy__73;
  v23 = __Block_byref_object_dispose__74;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 0x40000000;
  v9[2] = ___ZN14HALS_IOEngine27StartIOEP14HALS_IOContext_block_invoke;
  v9[3] = &unk_1E8677A98;
  v9[8] = this;
  v9[9] = a2;
  v9[4] = &v10;
  v9[5] = &v18;
  v9[6] = &v14;
  v9[7] = buf;
  v4 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v4, v9);
  v5 = v11[3];
  if (v5 && !*(v19 + 6) && *(v15 + 24) == 1)
  {
    HALS_IOEngine2_IOContextInfo::StartIO(v5);
  }

  HALS_IOEngine::SendIsRunningNotifications(this, *(v15 + 24), *(*&buf[8] + 40), *(*&buf[8] + 48));
  v6 = *(v19 + 6);
  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(buf, 8);
  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }

  _Block_object_dispose(&v18, 8);
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

void sub_1DE5E9CEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose((v27 - 112), 8);
  v29 = *(v27 - 72);
  if (v29)
  {
    *(v27 - 64) = v29;
    operator delete(v29);
  }

  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZN14HALS_IOEngine27StartIOEP14HALS_IOContext_block_invoke(void *a1)
{
  v2 = a1[8];
  v3 = *(a1[9] + 16);
  if (v3)
  {
    for (i = v2[97]; i != v2[98]; ++i)
    {
      v5 = *i;
      if (*(*(*i + 32) + 16) == v3)
      {
        goto LABEL_7;
      }
    }
  }

  v5 = 0;
LABEL_7:
  *(*(a1[4] + 8) + 24) = v5;
  *(*(a1[5] + 8) + 24) = (*(*v2 + 1008))(v2, a1[9], 2, *(a1[6] + 8) + 24, *(*(a1[4] + 8) + 24));
  v6 = *(*v2 + 936);
  v7 = *(a1[7] + 8) + 40;

  return v6(v2, v7);
}

void HALS_IOEngine2_IOContextInfo::StartIO(HALS_IOEngine2_IOContextInfo *this)
{
  v54 = *MEMORY[0x1E69E9840];
  v1 = atomic_load(this + 48);
  if (v1)
  {
    v43 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v43 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(this);
    }

    v45 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v44 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v44)
    {
      atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
      v46 = *v45;
      std::__shared_weak_count::__release_shared[abi:ne200100](v44);
    }

    else
    {
      v46 = *v45;
    }

    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "HALS_IOEngine2.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 249;
      *&buf[18] = 2080;
      *&buf[20] = "mIsRunning == false";
      _os_log_error_impl(&dword_1DE1F9000, v46, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s Trying to start context info when it was already started", buf, 0x1Cu);
    }

    abort();
  }

  v3 = (*(**(this + 3) + 352))(*(this + 3));
  v5 = (this + 112);
  v4 = *(this + 14);
  *(this + 26) = v3;
    ;
  }

  *(this + 15) = v4;
  v7 = (*(**(this + 3) + 416))(*(this + 3), 0);
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    do
    {
      v51 = 0;
      v49 = 0u;
      v50 = 0u;
      (*(**(this + 3) + 448))(*(this + 3), 0, v9, &v49);
      if (DWORD2(v49) == 1819304813)
      {
        v10 = HIDWORD(v50);
        v11 = (4 * *(this + 26) * HIDWORD(v50));
        v12 = 4 * HIDWORD(v50);
        v14 = *(this + 15);
        v13 = *(this + 16);
        if (v14 >= v13)
        {
          v20 = 0xCCCCCCCCCCCCCCCDLL * ((v14 - *v5) >> 3);
          v21 = v20 + 1;
          if (v20 + 1 > 0x666666666666666)
          {
            std::vector<void *>::__throw_length_error[abi:ne200100]();
          }

          v22 = 0xCCCCCCCCCCCCCCCDLL * ((v13 - *v5) >> 3);
          if (2 * v22 > v21)
          {
            v21 = 2 * v22;
          }

          if (v22 >= 0x333333333333333)
          {
            v23 = 0x666666666666666;
          }

          else
          {
            v23 = v21;
          }

          v53 = this + 112;
          if (v23)
          {
            std::allocator<HALS_IOEngine2_IOContextInfo::BufferInfo>::allocate_at_least[abi:ne200100](v23);
          }

          v28 = 40 * v20;
          *buf = 0;
          *&buf[8] = v28;
          *&buf[16] = v28;
          Buffer = HALB_IOBufferManager_Server::AllocateBuffer(v11);
          *v28 = Buffer;
          *(v28 + 8) = v11;
          *(v28 + 12) = v10;
          *(v28 + 16) = v12;
          *(v28 + 24) = 0;
          *(v28 + 32) = 0;
          bzero(Buffer, v11);
          *&buf[16] = v28 + 40;
          v30 = *(this + 14);
          v31 = *(this + 15);
          v32 = v28 + v30 - v31;
          std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<HALS_IOEngine2_IOContextInfo::BufferInfo>,HALS_IOEngine2_IOContextInfo::BufferInfo*>(v30, v31, v32);
          v33 = *(this + 14);
          *(this + 14) = v32;
          v34 = *(this + 16);
          v47 = *&buf[16];
          *(this + 120) = *&buf[16];
          *&buf[16] = v33;
          *&buf[24] = v34;
          *buf = v33;
          *&buf[8] = v33;
          std::__split_buffer<HALS_IOEngine2_IOContextInfo::BufferInfo>::~__split_buffer(buf);
          v16 = v47;
        }

        else
        {
          v15 = HALB_IOBufferManager_Server::AllocateBuffer((4 * *(this + 26) * HIDWORD(v50)));
          *v14 = v15;
          *(v14 + 8) = v11;
          *(v14 + 12) = v10;
          *(v14 + 16) = v12;
          *(v14 + 24) = 0;
          *(v14 + 32) = 0;
          bzero(v15, v11);
          v16 = v14 + 40;
          *(this + 15) = v14 + 40;
        }
      }

      else
      {
        v17 = *(this + 15);
        v18 = *(this + 16);
        if (v17 >= v18)
        {
          v24 = 0xCCCCCCCCCCCCCCCDLL * ((v17 - *v5) >> 3);
          v25 = v24 + 1;
          if (v24 + 1 > 0x666666666666666)
          {
            std::vector<void *>::__throw_length_error[abi:ne200100]();
          }

          v26 = 0xCCCCCCCCCCCCCCCDLL * ((v18 - *v5) >> 3);
          if (2 * v26 > v25)
          {
            v25 = 2 * v26;
          }

          if (v26 >= 0x333333333333333)
          {
            v27 = 0x666666666666666;
          }

          else
          {
            v27 = v25;
          }

          v53 = this + 112;
          if (v27)
          {
            std::allocator<HALS_IOEngine2_IOContextInfo::BufferInfo>::allocate_at_least[abi:ne200100](v27);
          }

          v35 = 40 * v24;
          *buf = 0;
          *&buf[8] = v35;
          *&buf[24] = 0;
          v36 = HIDWORD(v50);
          *v35 = 0;
          *(v35 + 8) = 0;
          *(v35 + 12) = v36;
          *(v35 + 16) = 0;
          *(v35 + 24) = 0;
          *(v35 + 32) = 0;
          *&buf[16] = 40 * v24 + 40;
          v37 = *(this + 14);
          v38 = *(this + 15);
          v39 = 40 * v24 + v37 - v38;
          std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<HALS_IOEngine2_IOContextInfo::BufferInfo>,HALS_IOEngine2_IOContextInfo::BufferInfo*>(v37, v38, v35 + v37 - v38);
          v40 = *(this + 14);
          *(this + 14) = v39;
          v41 = *(this + 16);
          v48 = *&buf[16];
          *(this + 120) = *&buf[16];
          *&buf[16] = v40;
          *&buf[24] = v41;
          *buf = v40;
          *&buf[8] = v40;
          std::__split_buffer<HALS_IOEngine2_IOContextInfo::BufferInfo>::~__split_buffer(buf);
          v16 = v48;
        }

        else
        {
          v19 = HIDWORD(v50);
          *v17 = 0;
          *(v17 + 8) = 0;
          *(v17 + 12) = v19;
          *(v17 + 24) = 0;
          *(v17 + 32) = 0;
          v16 = v17 + 40;
        }
      }

      *(this + 15) = v16;
      v9 = (v9 + 1);
    }

    while (v8 != v9);
  }

  atomic_store(1u, this + 48);
  v42 = *MEMORY[0x1E69E9840];
}

void sub_1DE5EA2E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::__split_buffer<HALS_IOEngine2_IOContextInfo::BufferInfo>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<HALS_IOEngine2_IOContextInfo::BufferInfo>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

HALS_IOEngine2_IOContextInfo::BufferInfo *std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<HALS_IOEngine2_IOContextInfo::BufferInfo>,HALS_IOEngine2_IOContextInfo::BufferInfo*>(HALS_IOEngine2_IOContextInfo::BufferInfo *result, HALS_IOEngine2_IOContextInfo::BufferInfo *a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = result;
    do
    {
      *a3 = *v4;
      *(a3 + 8) = *(v4 + 1);
      *(a3 + 16) = *(v4 + 4);
      *(a3 + 24) = *(v4 + 24);
      *v4 = 0;
      *(v4 + 1) = 0;
      *(v4 + 4) = 0;
      *(v4 + 3) = 0;
      *(v4 + 4) = 0;
      v4 = (v4 + 40);
      a3 += 40;
    }

    while (v4 != a2);
    do
    {
      HALS_IOEngine2_IOContextInfo::BufferInfo::~BufferInfo(result);
      result = (v5 + 40);
    }

    while (result != a2);
  }

  return result;
}

uint64_t std::__split_buffer<HALS_IOEngine2_IOContextInfo::BufferInfo>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    HALS_IOEngine2_IOContextInfo::BufferInfo::~BufferInfo((i - 40));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void HALS_IOEngine2::UnregisterIOBuffer(HALS_IOEngine2 *this, char a2, int a3, int a4, int a5, void *a6)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = ___ZN14HALS_IOEngine218UnregisterIOBufferEbjjjPv_block_invoke;
  v7[3] = &__block_descriptor_tmp_70_13301;
  v11 = a2;
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v7[4] = this;
  v7[5] = a6;
  v6 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v6, v7);
}

uint64_t HALS_IOEngine2::RegisterIOBuffer(HALS_IOEngine2 *this, char a2, int a3, int a4, int a5, void *a6)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 0x40000000;
  v9[2] = ___ZN14HALS_IOEngine216RegisterIOBufferEbjjjPv_block_invoke;
  v9[3] = &unk_1E8677A08;
  v9[4] = &v14;
  v9[5] = this;
  v13 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v9[6] = a6;
  v6 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v6, v9);
  v7 = *(v15 + 6);
  _Block_object_dispose(&v14, 8);
  return v7;
}

uint64_t ___ZN14HALS_IOEngine216RegisterIOBufferEbjjjPv_block_invoke(uint64_t a1)
{
  result = (*(**(a1 + 40) + 992))(*(a1 + 40), *(a1 + 68), *(a1 + 56), *(a1 + 60), *(a1 + 64), *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void HALS_IOEngine2::TimelineWasReset(HALS_IOEngine2 *this, int a2, int a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZN14HALS_IOEngine216TimelineWasResetEjj_block_invoke;
  v4[3] = &__block_descriptor_tmp_77_13307;
  v4[4] = this;
  v5 = a3;
  v6 = a2;
  v3 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v3, v4);
}

uint64_t ___ZN14HALS_IOEngine216TimelineWasResetEjj_block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = atomic_load((v1 + 1117));
  v3 = *(v1 + 808);
  if (v3 && ((*(result + 40) & 1) != 0 || (v2 & 1) == 0))
  {
    v4 = 0;
    v5 = v3 + 48;
    v6 = 1;
    do
    {
      v7 = v6;
      v9 = v5 + 24 * v4;
      v8 = *v9;
      v10 = *(v9 + 8) - *v9;
      if ((v10 & 0x7FFFFFFF8) != 0)
      {
        v11 = (v10 >> 3);
        v12 = v10 >> 3;
        do
        {
          if (!v12)
          {
            std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
          }

          v13 = *v8++;
          *(v13 + 456) = 0;
          --v12;
          --v11;
        }

        while (v11);
      }

      v6 = 0;
      v4 = 1;
    }

    while ((v7 & 1) != 0);
  }

  v14 = *(v1 + 776);
  v15 = *(v1 + 784);
  if (v14 != v15)
  {
    v16 = *(result + 44);
    do
    {
      v17 = *v14;
      if (*(*(*v14 + 32) + 16) == v16)
      {
        v19 = *(v17 + 112);
        v18 = *(v17 + 120);
        if (v19 != v18)
        {
          v20 = 0;
          v21 = (v18 - v19 - 40) / 0x28uLL;
          v22 = (v21 + 2) & 0xFFFFFFFFFFFFFFELL;
          v23 = vdupq_n_s64(v21);
          v24 = (v19 + 64);
          do
          {
            v25 = vmovn_s64(vcgeq_u64(v23, vorrq_s8(vdupq_n_s64(v20), xmmword_1DE757E30)));
            if (v25.i8[0])
            {
              *(v24 - 5) = 0;
            }

            if (v25.i8[4])
            {
              *v24 = 0;
            }

            v20 += 2;
            v24 += 10;
          }

          while (v22 != v20);
          v26 = 0;
          v27 = (v19 + 72);
          do
          {
            v28 = vmovn_s64(vcgeq_u64(v23, vorrq_s8(vdupq_n_s64(v26), xmmword_1DE757E30)));
            if (v28.i8[0])
            {
              *(v27 - 5) = 0;
            }

            if (v28.i8[4])
            {
              *v27 = 0;
            }

            v26 += 2;
            v27 += 10;
          }

          while (v22 != v26);
        }
      }

      ++v14;
    }

    while (v14 != v15);
  }

  return result;
}

void HALS_IOEngine2::UpdateIssueReporters(HALS_IOEngine2 *this)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x4002000000;
  v20 = __Block_byref_object_copy__66;
  v21 = __Block_byref_object_dispose__67;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 0x40000000;
  v16[2] = ___ZN14HALS_IOEngine220UpdateIssueReportersEv_block_invoke;
  v16[3] = &unk_1E86779E0;
  v16[4] = &v17;
  v16[5] = this;
  v2 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v2, v16);
  v3 = v18;
  v5 = *(this + 6);
  v4 = *(this + 7);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = v3[5];
    v7 = v3[6];
    if (v6 == v7 || !v5)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v6 = v18[5];
    v7 = v18[6];
    if (v6 == v7 || !v5)
    {
      goto LABEL_28;
    }
  }

  v25 = v5;
  v26 = v4;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v27, v6, v7, (v7 - v6) >> 2);
  v8 = atomic_load(this + 96);
  if (v8)
  {
    atomic_store(1u, this + 97);
  }

  if (*(this + 392) != 1)
  {
    v15 = *(this + 8);
    operator new();
  }

  v9 = v26;
  v35 = v25;
  v36 = v26;
  if (v26)
  {
    atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v37 = 0;
  v38 = 0;
  v39 = 0;
  v10 = v27;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v37, v27, v28, (v28 - v27) >> 2);
  v11 = *(this + 48);
  v12 = *(this + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 1174405120;
  block[2] = ___ZNK4AMCP7Utility14Dispatch_Queue5asyncIZN13HALS_IOEngine21_UpdateIssueReportersERKNSt3__16vectorIjNS4_9allocatorIjEEEEE3__0EEvOT__block_invoke;
  block[3] = &__block_descriptor_tmp_178;
  v13 = v36;
  block[4] = v35;
  v31 = v36;
  if (v36)
  {
    atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  __p = 0;
  v33 = 0;
  v34 = 0;
  v14 = v37;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&__p, v37, v38, (v38 - v37) >> 2);
  dispatch_group_async(v11, v12, block);
  if (__p)
  {
    v33 = __p;
    operator delete(__p);
  }

  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  if (v14)
  {
    operator delete(v14);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (v10)
  {
    operator delete(v10);
  }

  if (v9)
  {
    v4 = v9;
LABEL_27:
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

LABEL_28:
  _Block_object_dispose(&v17, 8);
  if (v22)
  {
    v23 = v22;
    operator delete(v22);
  }
}

void sub_1DE5EABD8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v36 = *(v34 + 8);
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  __clang_call_terminate(a1);
}

void sub_1DE5EAC14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  v16 = *(v15 - 96);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  HALS_IOEngine::_UpdateIssueReporters(std::vector<unsigned int> const&)::$_0::~$_0(va);
  JUMPOUT(0x1DE5EAC48);
}

void sub_1DE5EAC30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, void *a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25)
{
  if (a25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a25);
  }

  _Block_object_dispose(&a16, 8);
  if (a21)
  {
    a22 = a21;
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__66(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void __Block_byref_object_dispose__67(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void HALS_IOEngine2::DestroyCaptureFiles(HALS_IOEngine2 *this)
{
  v18 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315650;
    v13 = "HALS_IOEngine2.cpp";
    v14 = 1024;
    v15 = 2193;
    v16 = 2080;
    v17 = this + 836;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_IOEngine2::DestroyCaptureFiles() device %s", &v12, 0x1Cu);
  }

  v2 = *(this + 101);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315394;
    v13 = "HALS_IOEngine2.cpp";
    v14 = 1024;
    v15 = 930;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_IOEngine2_DeviceInfo::DestroyCaptureFiles()", &v12, 0x12u);
  }

  v3 = 0;
  v4 = v2 + 48;
  v5 = 1;
  do
  {
    v6 = v5;
    v7 = (v4 + 24 * v3);
    v8 = *v7;
    v9 = v7[1];
    while (v8 != v9)
    {
      v10 = *v8++;
      std::unique_ptr<HALB_CaptureFile>::reset[abi:ne200100]((v10 + 200), 0);
    }

    v5 = 0;
    v3 = 1;
  }

  while ((v6 & 1) != 0);
  v11 = *MEMORY[0x1E69E9840];
}

void HALS_IOEngine2::CreateCaptureFiles(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315650;
    v13 = "HALS_IOEngine2.cpp";
    v14 = 1024;
    v15 = 2187;
    v16 = 2080;
    v17 = a1 + 836;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_IOEngine2::CreateCaptureFiles() device %s", &v12, 0x1Cu);
  }

  v2 = *(a1 + 808);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315394;
    v13 = "HALS_IOEngine2.cpp";
    v14 = 1024;
    v15 = 918;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_IOEngine2_DeviceInfo::CreateCaptureFiles()", &v12, 0x12u);
  }

  v3 = 0;
  v4 = v2 + 48;
  v5 = 1;
  do
  {
    v6 = v5;
    v7 = (v4 + 24 * v3);
    v8 = *v7;
    v9 = v7[1];
    while (v8 != v9)
    {
      v10 = *v8++;
      HALS_IOEngine2_StreamInfo::CreateCaptureFile(v10);
    }

    v5 = 0;
    v3 = 1;
  }

  while ((v6 & 1) != 0);
  v11 = *MEMORY[0x1E69E9840];
}

void HALS_IOEngine2::SetAudioCaptureMode(uint64_t a1, int a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = ___ZN14HALS_IOEngine219SetAudioCaptureModeE17AudioCapturerMode_block_invoke;
  v3[3] = &__block_descriptor_tmp_65_13323;
  v3[4] = a1;
  v4 = a2;
  v2 = (*(*a1 + 64))(a1);
  HALB_CommandGate::ExecuteCommand(v2, v3);
}

uint64_t HALS_IOEngine2::IsCaptureFileEnabled(HALS_IOEngine2 *this)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK14HALS_IOEngine220IsCaptureFileEnabledEv_block_invoke;
  v4[3] = &unk_1E8677998;
  v4[4] = &v5;
  v4[5] = this;
  v1 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v1, v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_1DE5EB180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZNK14HALS_IOEngine220IsCaptureFileEnabledEv_block_invoke(uint64_t a1)
{
  result = (*(**(a1 + 40) + 976))(*(a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t HALS_IOEngine2::HasDSPParameterForStreamAtIndex(HALS_IOEngine2 *this, char a2, int a3, uint64_t a4)
{
  HALS_IOEngine2::GetDSPForStreamAtIndex(&v8, this, a2, a3);
  v5 = v8;
  if (v8 && *v8 && (*(**v8 + 16))(*v8) && *v5)
  {
    v6 = (*(**v5 + 72))(*v5, a4);
  }

  else
  {
    v6 = 0;
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  return v6;
}

void HALS_IOEngine2::GetDSPForStreamAtIndex(HALS_IOEngine2 *this, uint64_t a2, char a3, int a4)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3802000000;
  v13 = __Block_byref_object_copy__58;
  v15 = 0;
  v16 = 0;
  v14 = __Block_byref_object_dispose__59;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = ___ZNK14HALS_IOEngine222GetDSPForStreamAtIndexEbj_block_invoke;
  v7[3] = &unk_1E86778F8;
  v9 = a3;
  v8 = a4;
  v7[4] = &v10;
  v7[5] = a2;
  v5 = (*(*a2 + 64))(a2);
  HALB_CommandGate::ExecuteCommand(v5, v7);
  v6 = v11[6];
  *this = v11[5];
  *(this + 1) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  _Block_object_dispose(&v10, 8);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }
}

void sub_1DE5EB3D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  _Block_object_dispose(&a16, 8);
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__58(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  return result;
}

void __Block_byref_object_dispose__59(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void ___ZNK14HALS_IOEngine222GetDSPForStreamAtIndexEbj_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 808);
  if (v2)
  {
    v3 = *(a1 + 48);
    v5 = (v2 + 24 * *(a1 + 52) + 48);
    v4 = *v5;
    v6 = (v5[1] - *v5) >> 3;
    if (v3 < v6)
    {
      if (v6 <= v3)
      {
        std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
      }

      v7 = *(v4 + 8 * v3);
      if (v7)
      {
        v9 = *(v7 + 184);
        v8 = *(v7 + 192);
        if (v8)
        {
          atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
        }

        v10 = *(*(a1 + 32) + 8);
        v11 = *(v10 + 48);
        *(v10 + 40) = v9;
        *(v10 + 48) = v8;
        if (v11)
        {

          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        }
      }
    }
  }
}

uint64_t HALS_IOEngine2::GetDSPParameterForStreamAtIndex(HALS_IOEngine2 *this, char a2, int a3, uint64_t a4, float *a5)
{
  HALS_IOEngine2::GetDSPForStreamAtIndex(&v10, this, a2, a3);
  v7 = v10;
  if (v10 && *v10 && (*(**v10 + 16))(*v10) && *v7)
  {
    v8 = (*(**v7 + 64))(*v7, a4, a5);
  }

  else
  {
    v8 = 0;
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  return v8;
}

uint64_t HALS_IOEngine2::SetDSPParameterForStreamAtIndex(HALS_IOEngine2 *this, char a2, int a3, uint64_t a4, float a5)
{
  HALS_IOEngine2::GetDSPForStreamAtIndex(&v10, this, a2, a3);
  v7 = v10;
  if (v10 && *v10 && (*(**v10 + 16))(*v10) && *v7)
  {
    v8 = (*(**v7 + 56))(*v7, a4, a5);
  }

  else
  {
    v8 = 0;
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  return v8;
}

uint64_t HALS_IOEngine2::HasDSPPropertyForStreamAtIndex(HALS_IOEngine2 *this, char a2, int a3, uint64_t a4)
{
  HALS_IOEngine2::GetDSPForStreamAtIndex(&v8, this, a2, a3);
  v5 = v8;
  if (v8 && *v8 && (*(**v8 + 16))(*v8) && *v5)
  {
    v6 = (*(**v5 + 48))(*v5, a4);
  }

  else
  {
    v6 = 0;
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  return v6;
}

uint64_t HALS_IOEngine2::GetDSPPropertyForStreamAtIndex(HALS_IOEngine2 *this, char a2, int a3, uint64_t a4, unsigned int *a5, void *a6)
{
  HALS_IOEngine2::GetDSPForStreamAtIndex(&v12, this, a2, a3);
  v9 = v12;
  if (v12 && *v12 && (*(**v12 + 16))(*v12) && *v9)
  {
    v10 = (*(**v9 + 40))(*v9, a4, a5, a6);
  }

  else
  {
    v10 = 0;
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  return v10;
}

uint64_t HALS_IOEngine2::GetDSPPropertyInfoForStreamAtIndex(HALS_IOEngine2 *this, char a2, int a3, uint64_t a4, unsigned int *a5, BOOL *a6)
{
  HALS_IOEngine2::GetDSPForStreamAtIndex(&v12, this, a2, a3);
  v9 = v12;
  if (v12 && *v12 && (*(**v12 + 16))(*v12) && *v9)
  {
    v10 = (*(**v9 + 32))(*v9, a4, a5, a6);
  }

  else
  {
    v10 = 0;
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  return v10;
}

uint64_t HALS_IOEngine2::SetDSPPropertyForStreamAtIndex(HALS_IOEngine2 *this, char a2, int a3, uint64_t a4, uint64_t a5, const void *a6)
{
  HALS_IOEngine2::GetDSPForStreamAtIndex(&v12, this, a2, a3);
  v9 = v12;
  if (v12 && *v12 && (*(**v12 + 16))(*v12) && *v9)
  {
    v10 = (*(**v9 + 24))(*v9, a4, a5, a6);
  }

  else
  {
    v10 = 0;
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  return v10;
}

uint64_t HALS_IOEngine2::GetDSPLatencyForStreamAtIndex(HALS_IOEngine2 *this, char a2, int a3)
{
  HALS_IOEngine2::GetDSPForStreamAtIndex(&v9, this, a2, a3);
  v4 = v9;
  if (v9 && *v9 && (*(**v9 + 16))(*v9) && ((*(*this + 344))(this), *v4))
  {
    v6 = v5;
    v7 = ((*(**v4 + 80))(*v4) * v6);
  }

  else
  {
    v7 = 0;
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  return v7;
}

void sub_1DE5EBA88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_IOEngine2::HasReferenceStreamInScope(HALS_IOEngine2 *this, uint64_t a2)
{
  result = (*(*this + 416))(this);
  if (result)
  {
    v5 = result;
    if ((*(*this + 504))(this, a2, 0))
    {
      return 1;
    }

    else
    {
      v6 = 1;
      while (v5 != v6)
      {
        v7 = (*(*this + 504))(this, a2, v6);
        v6 = (v6 + 1);
        if (v7)
        {
          v8 = v6 - 1;
          return v8 < v5;
        }
      }

      v8 = v5;
      return v8 < v5;
    }
  }

  return result;
}

uint64_t HALS_IOEngine2::HasReferenceStreamAtIndex(HALS_IODevice **this, char a2, int a3)
{
  v3 = HALS_IODevice::CopyStreamByIndex(this[92], a2, a3);
  v5 = v3;
  if (v3)
  {
    if (*(v3 + 14) == 1)
    {
      IsHardwareReferenceStream = 1;
    }

    else
    {
      IsHardwareReferenceStream = HALS_Stream::IsHardwareReferenceStream(v3);
    }
  }

  else
  {
    IsHardwareReferenceStream = 0;
  }

  HALS_ObjectMap::ReleaseObject(v5, v4);
  return IsHardwareReferenceStream;
}

void HALS_IOEngine2::SetDSPForStreamAtIndex(HALS_IOEngine2 *this, BOOL a2, unsigned int a3, const HALS_DSPSettings *a4)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  if ((*(*this + 416))(this, 0))
  {
    (*(*this + 448))(this, 0, 0, v6);
    std::allocator<AudioStreamBasicDescription>::allocate_at_least[abi:ne200100](1uLL);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v9 = "HALS_IOEngine2.cpp";
    v10 = 1024;
    v11 = 1881;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  GetInputStreamChannelCountsForOutputDSP: bad stream index", buf, 0x12u);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  *exception = off_1F5991DD8;
  exception[2] = 1970171760;
}

void sub_1DE5EC18C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  _Block_object_dispose(&a23, 8);
  if (v23)
  {
    operator delete(v23);
  }

  _Unwind_Resume(a1);
}

void *___ZN14HALS_IOEngine222SetDSPForStreamAtIndexEbjRK16HALS_DSPSettings_block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  result = *(a1 + 40);
  v3 = result[101];
  if (v3)
  {
    v4 = *(a1 + 84);
    v5 = *(a1 + 80);
    v12 = a1;
    v6 = *(a1 + 48);
    result = (*(*result + 352))(result);
    v7 = *(v3 + 24 * v4 + 48);
    v8 = (*(v3 + 24 * v4 + 56) - v7) >> 3;
    if (v5 < v8)
    {
      if (v8 > v5)
      {
        v9 = *(v3 + 8);
        v10 = *(v7 + 8 * v5);
        operator new();
      }

      std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
    }

    *(*(*(v12 + 32) + 8) + 24) = v5 < v8;
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE5ED65C(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(v2);
}

void __destroy_helper_block_e8_56c64_ZTSNSt3__16vectorIN2CA17StreamDescriptionENS_9allocatorIS2_EEEE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }
}

uint64_t __copy_helper_block_e8_56c64_ZTSNSt3__16vectorIN2CA17StreamDescriptionENS_9allocatorIS2_EEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v2 = a1 + 56;
  *(v2 + 16) = 0;
  return std::vector<CA::StreamDescription>::__init_with_size[abi:ne200100]<CA::StreamDescription*,CA::StreamDescription*>(v2, *(a2 + 56), *(a2 + 64), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 64) - *(a2 + 56)) >> 3));
}

uint64_t HALS_IOEngine2::GetStartSample(HALS_IOEngine2 *this)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK14HALS_IOEngine214GetStartSampleEv_block_invoke;
  v4[3] = &unk_1E8677A50;
  v4[4] = &v5;
  v4[5] = this;
  v1 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v1, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_1DE5ED990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZNK14HALS_IOEngine214GetStartSampleEv_block_invoke(uint64_t a1)
{
  result = (*(**(a1 + 40) + 1336))(*(a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void HALS_IOEngine2::SetStartSample(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5, char a6)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = ___ZN14HALS_IOEngine214SetStartSampleEjN4AMCP11Index_GroupIxNS0_9DirectionEEEjb_block_invoke;
  v7[3] = &__block_descriptor_tmp_72_13358;
  v7[4] = a1;
  v7[5] = a3;
  v7[6] = a4;
  v8 = a2;
  v9 = a5;
  v10 = a6;
  v6 = (*(*a1 + 64))(a1);
  HALB_CommandGate::ExecuteCommand(v6, v7);
}

uint64_t HALS_IOEngine2::HasAnyNonMixableFormats(HALS_IOEngine2 *this)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK14HALS_IOEngine223HasAnyNonMixableFormatsEv_block_invoke;
  v4[3] = &unk_1E8677970;
  v4[4] = &v5;
  v4[5] = this;
  v1 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v1, v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_1DE5EDBA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZNK14HALS_IOEngine223HasAnyNonMixableFormatsEv_block_invoke(uint64_t result)
{
  v1 = *(*(result + 40) + 808);
  if (v1)
  {
    v2 = 0;
    v3 = 0;
    v4 = v1 + 48;
    do
    {
      v5 = v2;
      v6 = (v4 + 24 * v3);
      v7 = *v6;
      v8 = v6[1];
      for (i = v7; i != v8; i += 8)
      {
        v10 = v7;
        do
        {
          if (*(*v10 + 128) != 1819304813 || (*(*v10 + 132) & 0x40) != 0)
          {
            v12 = 1;
            goto LABEL_14;
          }

          v10 += 8;
        }

        while (v10 != v8);
      }

      v2 = 1;
      v3 = 1;
    }

    while ((v5 & 1) == 0);
    v12 = 0;
LABEL_14:
    *(*(*(result + 32) + 8) + 24) = v12;
  }

  return result;
}

uint64_t HALS_IOEngine2::CalculateBufferByteSizeForStreamAtIndex(HALS_IOEngine2 *this, char a2, int a3, int a4)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = ___ZNK14HALS_IOEngine239CalculateBufferByteSizeForStreamAtIndexEbjj_block_invoke;
  v7[3] = &unk_1E8677920;
  v7[4] = &v11;
  v7[5] = this;
  v10 = a2;
  v8 = a3;
  v9 = a4;
  v4 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v4, v7);
  v5 = *(v12 + 6);
  _Block_object_dispose(&v11, 8);
  return v5;
}

uint64_t ___ZNK14HALS_IOEngine239CalculateBufferByteSizeForStreamAtIndexEbjj_block_invoke(uint64_t result)
{
  v1 = *(*(result + 40) + 808);
  if (v1)
  {
    v2 = *(result + 48);
    v4 = (v1 + 24 * *(result + 56) + 48);
    v3 = *v4;
    v5 = (v4[1] - *v4) >> 3;
    if (v2 >= v5)
    {
      v9 = 0;
    }

    else
    {
      if (v5 <= v2)
      {
        std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
      }

      v6 = *(v3 + 8 * v2);
      v7 = v6[12];
      v8 = v6[14];
      v9 = v6[16] * *(result + 52);
      if (v7 != 1819304813)
      {
        v9 = v8;
      }
    }

    *(*(*(result + 32) + 8) + 24) = v9;
  }

  return result;
}