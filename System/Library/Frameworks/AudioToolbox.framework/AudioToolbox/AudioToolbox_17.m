uint64_t AUSoundIsolation_v2::CreateProcessingGraphs(AUSoundIsolation_v2 *this)
{
  v175 = *MEMORY[0x1E69E9840];
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v3 = *(Element + 96);
  v143[0] = *(Element + 80);
  v143[1] = v3;
  v144 = *(Element + 112);
  v4 = HIDWORD(v3);
  if (HIDWORD(v3) <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = HIDWORD(v3);
  }

  v6 = *(this + 133) != 0;
  AUSoundIsolation_v2::GetTuningDictionaryRef(&v142, this, 3);
  if (v142 == 0 && v6)
  {
    if (getAUSoundIsolationLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_3653);
    }

    v7 = getAUSoundIsolationLog(void)::gLog;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v156 = 136315394;
      *&v156[4] = "AUSoundIsolation_v2.mm";
      *&v156[12] = 1024;
      *&v156[14] = 1346;
      _os_log_error_impl(&dword_1DDB85000, v7, OS_LOG_TYPE_ERROR, "%s:%i failed to load 'AUDereverb' preset", v156, 0x12u);
    }

    v6 = 0;
  }

  AUSoundIsolation_v2::GetTuningDictionaryRef(&cf, this, 0);
  if (cf)
  {
    AUSoundIsolation_v2::GetTuningDictionaryRef(&v140, this, 1);
    if (!v140)
    {
      if (getAUSoundIsolationLog(void)::onceToken != -1)
      {
        dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_3653);
      }

      v27 = getAUSoundIsolationLog(void)::gLog;
      if (os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_ERROR))
      {
        *v156 = 136315394;
        *&v156[4] = "AUSoundIsolation_v2.mm";
        *&v156[12] = 1024;
        *&v156[14] = 1357;
        _os_log_error_impl(&dword_1DDB85000, v27, OS_LOG_TYPE_ERROR, "%s:%i failed to load 'AUNeuralNet' preset", v156, 0x12u);
      }

      v24 = 4294956421;
      goto LABEL_193;
    }

    v8 = *(this + 134);
    v9 = *(this + 145);
    AUSoundIsolation_v2::GetTuningDictionaryRef(&v139, this, 4);
    if (v8)
    {
      v10 = v4 > 1;
    }

    else
    {
      v10 = 0;
    }

    v12 = v10 && v9 == 1;
    if (!v139 && v12)
    {
      if (getAUSoundIsolationLog(void)::onceToken != -1)
      {
        dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_3653);
      }

      v13 = getAUSoundIsolationLog(void)::gLog;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *v156 = 136315394;
        *&v156[4] = "AUSoundIsolation_v2.mm";
        *&v156[12] = 1024;
        *&v156[14] = 1365;
        _os_log_error_impl(&dword_1DDB85000, v13, OS_LOG_TYPE_ERROR, "%s:%i failed to load 'AUDenoise' preset", v156, 0x12u);
      }

      v12 = 0;
    }

    if (!cf)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    v14 = applesauce::CF::details::at_key<__CFString const*>(cf, @"SampleRate");
    if (!v14)
    {
      v109 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v109, "Could not find item");
    }

    v15 = applesauce::CF::convert_to<float,0>(v14);
    if (!cf)
    {
      v110 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v110, "Could not construct");
    }

    v16 = v15;
    v17 = applesauce::CF::details::find_at_key<unsigned int,__CFString const*>(cf, @"BlockSize");
    if (!cf)
    {
      v111 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v111, "Could not construct");
    }

    v18 = applesauce::CF::details::find_at_key<unsigned int,__CFString const*>(cf, @"NumberOfInputChannels");
    if (!cf)
    {
      v112 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v112, "Could not construct");
    }

    v19 = applesauce::CF::details::find_at_key<unsigned int,__CFString const*>(cf, @"NumberOfOutputChannels");
    if (!cf)
    {
      v113 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v113, "Could not construct");
    }

    v20 = applesauce::CF::details::at_key<__CFString const*>(cf, @"DynamicBatchSize");
    if (v20 && (v21 = applesauce::CF::convert_as<BOOL,0>(v20), v21 >= 0x100u) && (v21 & 1) != 0)
    {
      v22 = 1;
    }

    else
    {
      if (!cf)
      {
        v116 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v116, "Could not construct");
      }

      v25 = applesauce::CF::details::at_key<__CFString const*>(cf, @"BatchSize");
      if (v25)
      {
        v25 = applesauce::CF::convert_as<unsigned int,0>(v25);
      }

      v22 = 0;
      if ((v25 & 0x100000000) != 0)
      {
        v5 = v25;
      }

      else
      {
        v5 = 1;
      }
    }

    if (!cf)
    {
      v114 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v114, "Could not construct");
    }

    v26 = applesauce::CF::details::at_key<__CFString const*>(cf, @"LookaheadSize");
    if (v26)
    {
      v117 = applesauce::CF::convert_as<unsigned int,0>(v26);
    }

    else
    {
      v117 = 0;
    }

    if (v18 != v19)
    {
      if (getAUSoundIsolationLog(void)::onceToken != -1)
      {
        dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_3653);
      }

      v34 = getAUSoundIsolationLog(void)::gLog;
      if (os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_ERROR))
      {
        *v156 = 136315906;
        *&v156[4] = "AUSoundIsolation_v2.mm";
        *&v156[12] = 1024;
        *&v156[14] = 1380;
        *&v156[18] = 1024;
        v157 = v18;
        *v158 = 1024;
        *&v158[2] = v19;
        _os_log_error_impl(&dword_1DDB85000, v34, OS_LOG_TYPE_ERROR, "%s:%i Number of input channels in the plist (%u) is different from the number of output channels in the plist (%u)", v156, 0x1Eu);
      }

      v24 = 4294956421;
      goto LABEL_191;
    }

    if (v22)
    {
      v28 = cf;
      v29 = [v28 mutableCopy];

      v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v5];
      [v29 setObject:v30 forKeyedSubscript:@"BatchSize"];

      v31 = [v29 copy];
      applesauce::CF::DictionaryRef::from_get(v156, v31);
      v32 = cf;
      cf = *v156;
      *v156 = v32;
      if (v32)
      {
        CFRelease(v32);
      }
    }

    if (getAUSoundIsolationLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_3653);
    }

    v33 = getAUSoundIsolationLog(void)::gLog;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      *v156 = 136315394;
      *&v156[4] = "AUSoundIsolation_v2.mm";
      *&v156[12] = 1024;
      *&v156[14] = 1388;
      _os_log_debug_impl(&dword_1DDB85000, v33, OS_LOG_TYPE_DEBUG, "%s:%i create processing graph", v156, 0x12u);
    }

    *v156 = v18;
    *&v156[8] = v16;
    *&v156[16] = v17;
    v157 = v5;
    *v158 = 1852731506;
    v158[4] = 1;
    v159 = 1852731500;
    v160 = 1;
    v161 = 1852731490;
    v162 = 1;
    v163 = 1852730465;
    v164 = 1;
    v165 = v6;
    v166 = 1685221490;
    v167 = 1;
    v168 = v12;
    v169 = 1684959346;
    v170 = 1;
    v171 = 1684958305;
    v172 = 1;
    v173 = 1684956268;
    v174 = 1;
    AU::SoundIsolation::CreateGraphModel(&v138, v143, v156);
    if (!v138)
    {
      v24 = 4294956421;
LABEL_190:
      CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v138);
LABEL_191:
      if (v139)
      {
        CFRelease(v139);
      }

LABEL_193:
      if (v140)
      {
        CFRelease(v140);
      }

      goto LABEL_195;
    }

    AUSoundIsolation_v2::UpdateSliceDuration(this, &v138);
    v137 = v138;
    if (v138)
    {
      CFRetain(v138);
    }

    CADSPGraphModelSetOptions();
    CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v137);
    v134 = v138;
    if (v138)
    {
      CFRetain(v138);
    }

    CA::DSP::Graph::Create(&v135);
    CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(&v134);
    if ((v136 & 1) == 0)
    {
      if (getAUSoundIsolationLog(void)::onceToken != -1)
      {
        dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_3653);
      }

      v41 = getAUSoundIsolationLog(void)::gLog;
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v51 = AU::SoundIsolation::CopyError<CA::DSP::Reference<CA::DSP::Graph>>(v135, v136);
        *buf = 136315650;
        *&buf[4] = "AUSoundIsolation_v2.mm";
        v146 = 1024;
        v147 = 1412;
        v148 = 2112;
        v149 = v51;
        _os_log_error_impl(&dword_1DDB85000, v41, OS_LOG_TYPE_ERROR, "%s:%i failed to create processing graph - %@", buf, 0x1Cu);
      }

      v24 = 4294956421;
      goto LABEL_187;
    }

    v133 = v135;
    if (v135)
    {
      CFRetain(v135);
    }

    if (v142 != 0 && v6 && (v118 = v142, CA::DSP::Graph::SetProperty(&v128, v133, 0x64727072), (v128.__r_.__value_.__s.__data_[8] & 1) == 0))
    {
      v42 = getAUSoundIsolationLog();
      if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_108;
      }

      caulk::string_from_4cc(&__p, 0x64726576u);
      v56 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      v57 = __p.__r_.__value_.__r.__words[0];
      v58 = AU::SoundIsolation::CopyError<void>(v128.__r_.__value_.__l.__data_, v128.__r_.__value_.__s.__data_[8]);
      v59 = v58;
      *buf = 136315906;
      if (v56 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = v57;
      }

      *&buf[4] = "AUSoundIsolation_v2.mm";
      v146 = 1024;
      v147 = 1423;
      v148 = 2080;
      v149 = p_p;
      v150 = 2112;
      v151 = v58;
      _os_log_error_impl(&dword_1DDB85000, v42, OS_LOG_TYPE_ERROR, "%s:%i failed to set processing graph %s preset property - %@", buf, 0x26u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      if (!cf || (v118 = cf, CA::DSP::Graph::SetProperty(&v128, v133, 0x6E6E706C), (v128.__r_.__value_.__s.__data_[8] & 1) != 0))
      {
        LODWORD(__p.__r_.__value_.__l.__data_) = 2;
        *buf = &__p;
        if (std::__tree<std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>,std::__map_value_compare<AUSoundIsolation_v2::BoxTuningType,std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>,std::less<AUSoundIsolation_v2::BoxTuningType>,true>,std::allocator<std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>>>::__emplace_unique_key_args<AUSoundIsolation_v2::BoxTuningType,std::piecewise_construct_t const&,std::tuple<AUSoundIsolation_v2::BoxTuningType&&>,std::tuple<>>(this + 648, 2)[5])
        {
          LODWORD(__p.__r_.__value_.__l.__data_) = 2;
          *buf = &__p;
          v35 = std::__tree<std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>,std::__map_value_compare<AUSoundIsolation_v2::BoxTuningType,std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>,std::less<AUSoundIsolation_v2::BoxTuningType>,true>,std::allocator<std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>>>::__emplace_unique_key_args<AUSoundIsolation_v2::BoxTuningType,std::piecewise_construct_t const&,std::tuple<AUSoundIsolation_v2::BoxTuningType&&>,std::tuple<>>(this + 648, 2);
          v36 = v35[5];
          if (v36)
          {
            CFRetain(v35[5]);
          }

          v131 = v36;
          if (!v36)
          {
            goto LABEL_116;
          }
        }

        else
        {
          v43 = getenv("SIMULATOR_ROOT");
          if (!v43 || !*v43)
          {
            v131 = 0;
            goto LABEL_116;
          }

          applesauce::CF::make_StringRef(@"%s%s", &v131, v43, "/System/Library/Audio/Tunings");
          if (!v131)
          {
            goto LABEL_116;
          }
        }

        v37 = getAUSoundIsolationLog();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          caulk::string_from_4cc(&__p, 0x6E6E6574u);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v38 = &__p;
          }

          else
          {
            v38 = __p.__r_.__value_.__r.__words[0];
          }

          v39 = applesauce::CF::StringRef::get_ns(v131);
          *buf = 136315906;
          *&buf[4] = "AUSoundIsolation_v2.mm";
          v146 = 1024;
          v147 = 1454;
          v148 = 2080;
          v149 = v38;
          v150 = 2112;
          v151 = v39;
          _os_log_impl(&dword_1DDB85000, v37, OS_LOG_TYPE_DEFAULT, "%s:%i set processing graph %s base path override to %@", buf, 0x26u);

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        v118 = v131;
        CA::DSP::Graph::SetProperty(&v128, v133, 0x6E6E7062);
        if ((v128.__r_.__value_.__s.__data_[8] & 1) == 0)
        {
          v40 = getAUSoundIsolationLog();
          if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_145;
          }

          caulk::string_from_4cc(&__p, 0x6E6E6574u);
          v67 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
          v68 = __p.__r_.__value_.__r.__words[0];
          v69 = AU::SoundIsolation::CopyError<void>(v128.__r_.__value_.__l.__data_, v128.__r_.__value_.__s.__data_[8]);
          v70 = v69;
          *buf = 136315906;
          if (v67 >= 0)
          {
            v71 = &__p;
          }

          else
          {
            v71 = v68;
          }

          *&buf[4] = "AUSoundIsolation_v2.mm";
          v146 = 1024;
          v147 = 1461;
          v148 = 2080;
          v149 = v71;
          v150 = 2112;
          v151 = v69;
          _os_log_error_impl(&dword_1DDB85000, v40, OS_LOG_TYPE_ERROR, "%s:%i failed to set processing graph %s base path override - %@", buf, 0x26u);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          goto LABEL_227;
        }

LABEL_116:
        if (v140)
        {
          v118 = v140;
          CA::DSP::Graph::SetProperty(&v128, v133, 0x6E6E7072);
          if ((v128.__r_.__value_.__s.__data_[8] & 1) == 0)
          {
            v44 = getAUSoundIsolationLog();
            if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
            {
              v72 = &__p;
              caulk::string_from_4cc(&__p, 0x6E6E6574u);
              v73 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
              v74 = __p.__r_.__value_.__r.__words[0];
              v75 = AU::SoundIsolation::CopyError<void>(v128.__r_.__value_.__l.__data_, v128.__r_.__value_.__s.__data_[8]);
              if (v73 < 0)
              {
                v72 = v74;
              }

              v76 = v75;
              *buf = 136315906;
              *&buf[4] = "AUSoundIsolation_v2.mm";
              v146 = 1024;
              v147 = 1472;
              v148 = 2080;
              v149 = v72;
              v150 = 2112;
              v151 = v76;
              _os_log_error_impl(&dword_1DDB85000, v44, OS_LOG_TYPE_ERROR, "%s:%i failed to set processing graph %s preset property - %@", buf, 0x26u);

              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }
            }

            if ((v128.__r_.__value_.__s.__data_[8] & 1) == 0)
            {
              CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v128.__r_.__value_.__l.__data_);
            }
          }
        }

        if (v12)
        {
          v118 = v139;
          CA::DSP::Graph::SetProperty(&v128, v133, 0x646E7072);
          if (v128.__r_.__value_.__s.__data_[8])
          {
            v45 = v117;
            if ((v117 & 0x100000000) == 0)
            {
              v45 = 0.0;
            }

            CA::DSP::Graph::SetParameter(&v128, v45);
            if (v128.__r_.__value_.__s.__data_[8])
            {
              goto LABEL_126;
            }

            v40 = getAUSoundIsolationLog();
            if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
LABEL_145:

              goto LABEL_181;
            }

            caulk::string_from_4cc(&__p, 0x646E6F73u);
            v83 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
            v84 = __p.__r_.__value_.__r.__words[0];
            v85 = AU::SoundIsolation::CopyError<void>(v128.__r_.__value_.__l.__data_, v128.__r_.__value_.__s.__data_[8]);
            v70 = v85;
            *buf = 136315906;
            if (v83 >= 0)
            {
              v86 = &__p;
            }

            else
            {
              v86 = v84;
            }

            *&buf[4] = "AUSoundIsolation_v2.mm";
            v146 = 1024;
            v147 = 1489;
            v148 = 2080;
            v149 = v86;
            v150 = 2112;
            v151 = v85;
            _os_log_error_impl(&dword_1DDB85000, v40, OS_LOG_TYPE_ERROR, "%s:%i failed to set processing graph %s input delay parameter - %@", buf, 0x26u);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }

          else
          {
            v40 = getAUSoundIsolationLog();
            if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_145;
            }

            caulk::string_from_4cc(&__p, 0x646E6F73u);
            v77 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
            v78 = __p.__r_.__value_.__r.__words[0];
            v79 = AU::SoundIsolation::CopyError<void>(v128.__r_.__value_.__l.__data_, v128.__r_.__value_.__s.__data_[8]);
            v70 = v79;
            *buf = 136315906;
            if (v77 >= 0)
            {
              v80 = &__p;
            }

            else
            {
              v80 = v78;
            }

            *&buf[4] = "AUSoundIsolation_v2.mm";
            v146 = 1024;
            v147 = 1482;
            v148 = 2080;
            v149 = v80;
            v150 = 2112;
            v151 = v79;
            _os_log_error_impl(&dword_1DDB85000, v40, OS_LOG_TYPE_ERROR, "%s:%i failed to set processing graph %s preset property - %@", buf, 0x26u);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }

LABEL_227:

          goto LABEL_145;
        }

LABEL_126:
        if (!v133)
        {
LABEL_183:
          v24 = 4294956421;
          goto LABEL_184;
        }

        CA::DSP::Graph::Initialize(&__p);
        if ((__p.__r_.__value_.__s.__data_[8] & 1) == 0)
        {
          v50 = getAUSoundIsolationLog();
          if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
          {
            v81 = AU::SoundIsolation::CopyError<CA::DSP::Reference<CA::DSP::Graph>>(__p.__r_.__value_.__l.__data_, __p.__r_.__value_.__s.__data_[8]);
            *buf = 136315650;
            *&buf[4] = "AUSoundIsolation_v2.mm";
            v146 = 1024;
            v147 = 1496;
            v148 = 2112;
            v149 = v81;
            _os_log_error_impl(&dword_1DDB85000, v50, OS_LOG_TYPE_ERROR, "%s:%i failed to initialize processing graph - %@", buf, 0x1Cu);
          }

          if ((__p.__r_.__value_.__s.__data_[8] & 1) == 0)
          {
            CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&__p.__r_.__value_.__l.__data_);
          }

          goto LABEL_183;
        }

        CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(this + 75);
        CA::DSP::ReferenceCounted<__CADSPGraph *>::ReferenceCounted(this + 75, v133);
        CA::DSP::Graph::GetLatency(buf);
        v46 = buf[8];
        v47 = *buf;
        CA::DSP::Graph::GetModel(&v130);
        v48 = MEMORY[0x1E12BB230](v130) >> 32;
        if (!v46)
        {
          v47 = 0.0;
        }

        CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(&v130);
        if ((buf[8] & 1) == 0)
        {
          CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(buf);
        }

        if (!v12)
        {
LABEL_146:
          v52 = getAUSoundIsolationLog();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            *&buf[4] = "AUSoundIsolation_v2.mm";
            v146 = 1024;
            v147 = 1547;
            _os_log_debug_impl(&dword_1DDB85000, v52, OS_LOG_TYPE_DEBUG, "%s:%i create blending graph", buf, 0x12u);
          }

          AU::SoundIsolation::CreateGraphModel(&v129, v143, dword_1DE0A1B64);
          if (!v129)
          {
            v24 = 4294956421;
LABEL_235:
            CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v129);
LABEL_184:
            if (v131)
            {
              CFRelease(v131);
            }

LABEL_186:
            CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(&v133);
LABEL_187:
            if (v136 == 1)
            {
              CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(&v135);
            }

            else
            {
              CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&v135);
            }

            goto LABEL_190;
          }

          AUSoundIsolation_v2::UpdateSliceDuration(this, &v129);
          CA::DSP::ReferenceCounted<__CADSPGraphModel *>::ReferenceCounted(&v127, v129);
          CADSPGraphModelSetOptions();
          CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v127);
          CA::DSP::Reference<CA::DSP::GraphModel>::Reference<CA::DSP::MutableGraphModel>(&v126, v129);
          CA::DSP::Graph::Create(&__p);
          CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(&v126);
          if ((__p.__r_.__value_.__s.__data_[8] & 1) == 0)
          {
            v65 = getAUSoundIsolationLog();
            if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
            {
              v93 = AU::SoundIsolation::CopyError<CA::DSP::Reference<CA::DSP::Graph>>(__p.__r_.__value_.__l.__data_, __p.__r_.__value_.__s.__data_[8]);
              *buf = 136315650;
              *&buf[4] = "AUSoundIsolation_v2.mm";
              v146 = 1024;
              v147 = 1559;
              v148 = 2112;
              v149 = v93;
              _os_log_error_impl(&dword_1DDB85000, v65, OS_LOG_TYPE_ERROR, "%s:%i failed to create blending graph - %@", buf, 0x1Cu);
            }

            v24 = 4294956421;
            goto LABEL_234;
          }

          CA::DSP::ReferenceCounted<__CADSPGraph *>::ReferenceCounted(&v125, __p.__r_.__value_.__l.__data_);
          if (v125)
          {
            v53 = v47 * v48;
            CA::DSP::Graph::SetParameter(&v128, v53);
            if (v128.__r_.__value_.__s.__data_[8])
            {
              CA::DSP::Graph::Initialize(&v128);
              if (v128.__r_.__value_.__s.__data_[8])
              {
                AUSoundIsolation_v2::UpdateBleningGraphWeights(*(this + 142));
                CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(this + 76);
                CA::DSP::ReferenceCounted<__CADSPGraph *>::ReferenceCounted(this + 76, v125);
                v54 = getAUSoundIsolationLog();
                if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 136315394;
                  *&buf[4] = "AUSoundIsolation_v2.mm";
                  v146 = 1024;
                  v147 = 1576;
                  _os_log_debug_impl(&dword_1DDB85000, v54, OS_LOG_TYPE_DEBUG, "%s:%i create bypass graph", buf, 0x12u);
                }

                v124 = 1684368481;
                AU::SoundIsolation::CreateGraphModel(&v123, v143, &v124);
                if (!v123)
                {
                  v24 = 4294956421;
LABEL_272:
                  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v123);
                  goto LABEL_233;
                }

                AUSoundIsolation_v2::UpdateSliceDuration(this, &v123);
                CA::DSP::ReferenceCounted<__CADSPGraphModel *>::ReferenceCounted(&v122, v123);
                CADSPGraphModelSetOptions();
                CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v122);
                CA::DSP::Reference<CA::DSP::GraphModel>::Reference<CA::DSP::MutableGraphModel>(&v121, v123);
                CA::DSP::Graph::Create(&v128);
                CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(&v121);
                if ((v128.__r_.__value_.__s.__data_[8] & 1) == 0)
                {
                  v94 = getAUSoundIsolationLog();
                  if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
                  {
                    v106 = AU::SoundIsolation::CopyError<CA::DSP::Reference<CA::DSP::Graph>>(v128.__r_.__value_.__l.__data_, v128.__r_.__value_.__s.__data_[8]);
                    *buf = 136315650;
                    *&buf[4] = "AUSoundIsolation_v2.mm";
                    v146 = 1024;
                    v147 = 1586;
                    v148 = 2112;
                    v149 = v106;
                    _os_log_error_impl(&dword_1DDB85000, v94, OS_LOG_TYPE_ERROR, "%s:%i failed to create bypass graph - %@", buf, 0x1Cu);
                  }

                  v24 = 4294956421;
                  goto LABEL_271;
                }

                CA::DSP::ReferenceCounted<__CADSPGraph *>::ReferenceCounted(&v120, v128.__r_.__value_.__l.__data_);
                if (v120)
                {
                  CA::DSP::Graph::SetParameter(&v118, v53);
                  if (v119)
                  {
                    CA::DSP::Graph::Initialize(&v118);
                    if (v119)
                    {
                      CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(this + 77);
                      CA::DSP::ReferenceCounted<__CADSPGraph *>::ReferenceCounted(this + 77, v120);
                      v24 = 0;
LABEL_270:
                      CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(&v120);
LABEL_271:
                      std::expected<CA::DSP::Reference<CA::DSP::Graph>,CA::DSP::Reference<CA::DSP::Error>>::~expected[abi:ne200100](&v128);
                      goto LABEL_272;
                    }

                    v105 = getAUSoundIsolationLog();
                    if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
                    {
                      v115 = AU::SoundIsolation::CopyError<CA::DSP::Reference<CA::DSP::Graph>>(v118, v119);
                      *buf = 136315650;
                      *&buf[4] = "AUSoundIsolation_v2.mm";
                      v146 = 1024;
                      v147 = 1598;
                      v148 = 2112;
                      v149 = v115;
                      _os_log_error_impl(&dword_1DDB85000, v105, OS_LOG_TYPE_ERROR, "%s:%i failed to initialize bypass graph - %@", buf, 0x1Cu);
                    }

                    if ((v119 & 1) == 0)
                    {
                      CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&v118);
                    }
                  }

                  else
                  {
                    v103 = getAUSoundIsolationLog();
                    if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
                    {
                      v107 = AU::SoundIsolation::CopyError<void>(v118, v119);
                      *buf = 136315650;
                      *&buf[4] = "AUSoundIsolation_v2.mm";
                      v146 = 1024;
                      v147 = 1594;
                      v148 = 2112;
                      v149 = v107;
                      _os_log_error_impl(&dword_1DDB85000, v103, OS_LOG_TYPE_ERROR, "%s:%i failed to set bypass graph delay parameter - %@", buf, 0x1Cu);
                    }

                    if ((v119 & 1) == 0)
                    {
                      CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v118);
                    }
                  }
                }

                v24 = 4294956421;
                goto LABEL_270;
              }

              v87 = getAUSoundIsolationLog();
              if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
              {
                v104 = AU::SoundIsolation::CopyError<CA::DSP::Reference<CA::DSP::Graph>>(v128.__r_.__value_.__l.__data_, v128.__r_.__value_.__s.__data_[8]);
                *buf = 136315650;
                *&buf[4] = "AUSoundIsolation_v2.mm";
                v146 = 1024;
                v147 = 1570;
                v148 = 2112;
                v149 = v104;
                _os_log_error_impl(&dword_1DDB85000, v87, OS_LOG_TYPE_ERROR, "%s:%i failed to initialize blending graph - %@", buf, 0x1Cu);
              }

              if ((v128.__r_.__value_.__s.__data_[8] & 1) == 0)
              {
                CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&v128.__r_.__value_.__l.__data_);
              }
            }

            else
            {
              v82 = getAUSoundIsolationLog();
              if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
              {
                v102 = AU::SoundIsolation::CopyError<void>(v128.__r_.__value_.__l.__data_, v128.__r_.__value_.__s.__data_[8]);
                *buf = 136315650;
                *&buf[4] = "AUSoundIsolation_v2.mm";
                v146 = 1024;
                v147 = 1566;
                v148 = 2112;
                v149 = v102;
                _os_log_error_impl(&dword_1DDB85000, v82, OS_LOG_TYPE_ERROR, "%s:%i failed to set blending graph delay parameter - %@", buf, 0x1Cu);
              }

              if ((v128.__r_.__value_.__s.__data_[8] & 1) == 0)
              {
                CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v128.__r_.__value_.__l.__data_);
              }
            }
          }

          v24 = 4294956421;
LABEL_233:
          CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(&v125);
LABEL_234:
          std::expected<CA::DSP::Reference<CA::DSP::Graph>,CA::DSP::Reference<CA::DSP::Error>>::~expected[abi:ne200100](&__p);
          goto LABEL_235;
        }

        v118 = 0xBFF0000000000000;
        LODWORD(v125) = 8;
        CA::DSP::Graph::GetProperty(&v128, v133, &v118, &v125);
        if (v128.__r_.__value_.__s.__data_[8])
        {
          v129 = 0xBFF0000000000000;
          LODWORD(v123) = 8;
          CA::DSP::Graph::GetProperty(&v128, v133, &v129, &v123);
          if (v128.__r_.__value_.__s.__data_[8])
          {
            if (vabdd_f64(*&v118, *&v129) > 1.0 / *v143)
            {
              v49 = getAUSoundIsolationLog();
              if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
              {
                v99 = &__p;
                caulk::string_from_4cc(&__p, 0x6E6E6574u);
                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v99 = __p.__r_.__value_.__r.__words[0];
                }

                v100 = v118;
                caulk::string_from_4cc(&v128, 0x646E6F73u);
                if ((v128.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v101 = &v128;
                }

                else
                {
                  v101 = v128.__r_.__value_.__r.__words[0];
                }

                *buf = 136316418;
                *&buf[4] = "AUSoundIsolation_v2.mm";
                v146 = 1024;
                v147 = 1535;
                v148 = 2080;
                v149 = v99;
                v150 = 2048;
                v151 = v100;
                v152 = 2080;
                v153 = v101;
                v154 = 2048;
                v155 = v129;
                _os_log_error_impl(&dword_1DDB85000, v49, OS_LOG_TYPE_ERROR, "%s:%i %s latency %f does not match %s delay latency %f", buf, 0x3Au);
                if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v128.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }
              }

              goto LABEL_183;
            }

            goto LABEL_146;
          }

          v55 = getAUSoundIsolationLog();
          if (!os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
LABEL_180:

LABEL_181:
            if ((v128.__r_.__value_.__s.__data_[8] & 1) == 0)
            {
              CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v128.__r_.__value_.__l.__data_);
            }

            goto LABEL_183;
          }

          caulk::string_from_4cc(&__p, 0x646E6F73u);
          v95 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
          v96 = __p.__r_.__value_.__r.__words[0];
          v97 = AU::SoundIsolation::CopyError<void>(v128.__r_.__value_.__l.__data_, v128.__r_.__value_.__s.__data_[8]);
          if (v95 >= 0)
          {
            v98 = &__p;
          }

          else
          {
            v98 = v96;
          }

          v92 = v97;
          *buf = 136315906;
          *&buf[4] = "AUSoundIsolation_v2.mm";
          v146 = 1024;
          v147 = 1529;
          v148 = 2080;
          v149 = v98;
          v150 = 2112;
          v151 = v92;
          _os_log_error_impl(&dword_1DDB85000, v55, OS_LOG_TYPE_ERROR, "%s:%i failed to get processing graph %s delay latency property - %@", buf, 0x26u);

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v55 = getAUSoundIsolationLog();
          if (!os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_180;
          }

          caulk::string_from_4cc(&__p, 0x6E6E6574u);
          v88 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
          v89 = __p.__r_.__value_.__r.__words[0];
          v90 = AU::SoundIsolation::CopyError<void>(v128.__r_.__value_.__l.__data_, v128.__r_.__value_.__s.__data_[8]);
          if (v88 >= 0)
          {
            v91 = &__p;
          }

          else
          {
            v91 = v89;
          }

          v92 = v90;
          *buf = 136315906;
          *&buf[4] = "AUSoundIsolation_v2.mm";
          v146 = 1024;
          v147 = 1519;
          v148 = 2080;
          v149 = v91;
          v150 = 2112;
          v151 = v92;
          _os_log_error_impl(&dword_1DDB85000, v55, OS_LOG_TYPE_ERROR, "%s:%i failed to get processing graph %s latency property - %@", buf, 0x26u);

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        goto LABEL_180;
      }

      v42 = getAUSoundIsolationLog();
      if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
LABEL_108:

        if ((v128.__r_.__value_.__s.__data_[8] & 1) == 0)
        {
          CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v128.__r_.__value_.__l.__data_);
        }

        v24 = 4294956421;
        goto LABEL_186;
      }

      caulk::string_from_4cc(&__p, 0x6E6E6574u);
      v61 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      v62 = __p.__r_.__value_.__r.__words[0];
      v63 = AU::SoundIsolation::CopyError<void>(v128.__r_.__value_.__l.__data_, v128.__r_.__value_.__s.__data_[8]);
      v59 = v63;
      *buf = 136315906;
      if (v61 >= 0)
      {
        v64 = &__p;
      }

      else
      {
        v64 = v62;
      }

      *&buf[4] = "AUSoundIsolation_v2.mm";
      v146 = 1024;
      v147 = 1434;
      v148 = 2080;
      v149 = v64;
      v150 = 2112;
      v151 = v63;
      _os_log_error_impl(&dword_1DDB85000, v42, OS_LOG_TYPE_ERROR, "%s:%i failed to set processing graph %s property list property - %@", buf, 0x26u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    goto LABEL_108;
  }

  if (getAUSoundIsolationLog(void)::onceToken != -1)
  {
    dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_3653);
  }

  v23 = getAUSoundIsolationLog(void)::gLog;
  if (os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_ERROR))
  {
    *v156 = 136315394;
    *&v156[4] = "AUSoundIsolation_v2.mm";
    *&v156[12] = 1024;
    *&v156[14] = 1352;
    _os_log_error_impl(&dword_1DDB85000, v23, OS_LOG_TYPE_ERROR, "%s:%i failed to load 'AUNeuralNet' property list", v156, 0x12u);
  }

  v24 = 4294956421;
LABEL_195:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v142)
  {
    CFRelease(v142);
  }

  return v24;
}

void sub_1DDCA2EF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12, __int16 a13, const void *a14, uint64_t a15, uint64_t a16, const void *a17, uint64_t a18, const void *a19, uint64_t a20, uint64_t a21, __int16 a22, uint64_t a23, uint64_t a24, const void *a25, uint64_t a26, const void *a27, void *__p, uint64_t a29, uint64_t a30, const void *a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, const void *a36, const void *a37, const void *a38, const void *a39, const void *a40)
{
  if ((a13 & 1) == 0)
  {
    CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&a12);
  }

  CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(&a14);
  std::expected<CA::DSP::Reference<CA::DSP::Graph>,CA::DSP::Reference<CA::DSP::Error>>::~expected[abi:ne200100](&a22);
  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&a17);
  CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(&a19);
  std::expected<CA::DSP::Reference<CA::DSP::Graph>,CA::DSP::Reference<CA::DSP::Error>>::~expected[abi:ne200100](&__p);
  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&a25);
  applesauce::CF::StringRef::~StringRef(&a27);
  CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(&a31);
  std::expected<CA::DSP::Reference<CA::DSP::Graph>,CA::DSP::Reference<CA::DSP::Error>>::~expected[abi:ne200100](&a33);
  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&a36);
  applesauce::CF::DictionaryRef::~DictionaryRef(&a37);
  applesauce::CF::DictionaryRef::~DictionaryRef(&a38);
  applesauce::CF::DictionaryRef::~DictionaryRef(&a39);
  applesauce::CF::DictionaryRef::~DictionaryRef(&a40);
  _Unwind_Resume(a1);
}

void AUSoundIsolation_v2::GetTuningDictionaryRef(void *a1, uint64_t a2, int a3)
{
  v56 = *MEMORY[0x1E69E9840];
  if (a3 != 4)
  {
    if (a3 != 3 || *(a2 + 532))
    {
      goto LABEL_4;
    }

LABEL_24:
    *a1 = 0;
    return;
  }

  if (!*(a2 + 536))
  {
    goto LABEL_24;
  }

LABEL_4:
  v6 = *(a2 + 656);
  if (v6)
  {
    v7 = a2 + 656;
    v8 = *(a2 + 656);
    do
    {
      if (*(v8 + 32) >= a3)
      {
        v7 = v8;
      }

      v8 = *(v8 + 8 * (*(v8 + 32) < a3));
    }

    while (v8);
    if (v7 != a2 + 656 && *(v7 + 32) <= a3 && *(v7 + 40))
    {
      while (1)
      {
        while (1)
        {
          v9 = *(v6 + 8);
          if (v9 <= a3)
          {
            break;
          }

          v6 = *v6;
          if (!v6)
          {
            goto LABEL_17;
          }
        }

        if (v9 >= a3)
        {
          break;
        }

        v6 = v6[1];
        if (!v6)
        {
LABEL_17:
          std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
        }
      }

      v25 = v6[5];
      if (!v25)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        applesauce::CF::construct_error(exception);
      }

      applesauce::CF::convert_to<std::string,0>(buf, v25);
      if ((buf[23] & 0x80000000) != 0)
      {
        if (*&buf[8])
        {
          std::string::__init_copy_ctor_external(&v42, *buf, *&buf[8]);
LABEL_132:
          if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v42.__r_.__value_.__l.__data_);
          }

          goto LABEL_135;
        }
      }

      else if (buf[23])
      {
        v42 = *buf;
        goto LABEL_132;
      }

      *a1 = 0;
LABEL_135:
      if ((buf[23] & 0x80000000) == 0)
      {
        return;
      }

      v32 = *buf;
      goto LABEL_179;
    }
  }

  v10 = *(a2 + 580);
  v41 = *(a2 + 572);
  v11 = getenv("SIMULATOR_ROOT");
  if (v11)
  {
    v12 = v11;
    v13 = a1;
    if (getAUSoundIsolationLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_3653);
    }

    v14 = getAUSoundIsolationLog(void)::gLog;
    if (os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "AUSoundIsolation_v2.mm";
      *&buf[12] = 1024;
      *&buf[14] = 1623;
      *&buf[18] = 2080;
      *&buf[20] = v12;
      _os_log_impl(&dword_1DDB85000, v14, OS_LOG_TYPE_DEFAULT, "%s:%i simulator root is %s", buf, 0x1Cu);
    }

    v51 = 396;
    v48 = 396;
    v49[0] = v12;
    v50 = "/System/Library/Audio/Tunings/Generic/AU/SoundIsolation";
    *buf = v54;
    *&buf[8] = xmmword_1DE09C120;
    *&buf[24] = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
    v53 = 0;
    __src = v54;
    v46 = 2;
    v47 = v49;
    std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(buf, "{}{}", 4, &v46);
    v16 = *&buf[16];
    if (*&buf[16] > 0x7FFFFFFFFFFFFFF7uLL)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v17 = __src;
    if (*&buf[16] >= 0x17uLL)
    {
      operator new();
    }
  }

  else
  {
    if (getAUSoundIsolationLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_3653);
    }

    v15 = getAUSoundIsolationLog(void)::gLog;
    if (os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "AUSoundIsolation_v2.mm";
      *&buf[12] = 1024;
      *&buf[14] = 1626;
      _os_log_impl(&dword_1DDB85000, v15, OS_LOG_TYPE_DEFAULT, "%s:%i simulator root is unknown", buf, 0x12u);
    }

    v50 = 12;
    v48 = 12;
    v49[0] = "/System/Library/Audio/Tunings/Generic/AU/SoundIsolation";
    *buf = v54;
    *&buf[8] = xmmword_1DE09C120;
    *&buf[24] = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
    v53 = 0;
    __src = v54;
    v46 = 1;
    v47 = v49;
    std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(buf, "{}", 2, &v46);
    v16 = *&buf[16];
    if (*&buf[16] > 0x7FFFFFFFFFFFFFF7uLL)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v13 = a1;
    v17 = __src;
    if (*&buf[16] >= 0x17uLL)
    {
      operator new();
    }
  }

  v45 = v16;
  if (v16)
  {
    memmove(&__dst, v17, v16);
  }

  *(&__dst + v16) = 0;
  if (__src != v54)
  {
    operator delete(__src);
  }

  if (getAUSoundIsolationLog(void)::onceToken != -1)
  {
    dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_3653);
  }

  v18 = getAUSoundIsolationLog(void)::gLog;
  if (os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_DEBUG))
  {
    p_dst = &__dst;
    if ((v45 & 0x80u) != 0)
    {
      p_dst = __dst;
    }

    *buf = 136315650;
    *&buf[4] = "AUSoundIsolation_v2.mm";
    *&buf[12] = 1024;
    *&buf[14] = 1634;
    *&buf[18] = 2080;
    *&buf[20] = p_dst;
    _os_log_debug_impl(&dword_1DDB85000, v18, OS_LOG_TYPE_DEBUG, "%s:%i tuning dir path: %s", buf, 0x1Cu);
  }

  if (v10 == 1)
  {
    if (a3 <= 2)
    {
      if (!a3)
      {
        if (_os_feature_enabled_impl())
        {
          if ((*(a2 + 560) & 1) == 0)
          {
            goto LABEL_52;
          }

          if (v41)
          {
            if (v41 == 1)
            {
              goto LABEL_52;
            }

            goto LABEL_114;
          }

          goto LABEL_174;
        }

        if ((v45 & 0x80u) == 0)
        {
          v33 = v45;
        }

        else
        {
          v33 = v44;
        }

        std::string::basic_string[abi:ne200100](buf, v33 + 32);
        if (buf[23] >= 0)
        {
          v34 = buf;
        }

        else
        {
          v34 = *buf;
        }

        if (v33)
        {
          if ((v45 & 0x80u) == 0)
          {
            v36 = &__dst;
          }

          else
          {
            v36 = __dst;
          }

          memmove(v34, v36, v33);
        }

LABEL_148:
        strcpy(&v34[v33], "/aufx-vois-appl-nnet-vi-v0.plist");
        goto LABEL_175;
      }

      if (a3 != 1)
      {
        goto LABEL_114;
      }

      if ((v45 & 0x80u) == 0)
      {
        v19 = v45;
      }

      else
      {
        v19 = v44;
      }

      std::string::basic_string[abi:ne200100](buf, v19 + 29);
      if (buf[23] >= 0)
      {
        v20 = buf;
      }

      else
      {
        v20 = *buf;
      }

      if (v19)
      {
        if ((v45 & 0x80u) == 0)
        {
          v21 = &__dst;
        }

        else
        {
          v21 = __dst;
        }

        memmove(v20, v21, v19);
      }

LABEL_67:
      strcpy(&v20[v19], "/aufx-vois-appl-nnet.aupreset");
      goto LABEL_175;
    }

    if (a3 != 3)
    {
      if (a3 == 4)
      {
        if ((v45 & 0x80u) == 0)
        {
          v22 = v45;
        }

        else
        {
          v22 = v44;
        }

        std::string::basic_string[abi:ne200100](buf, v22 + 29);
        if (buf[23] >= 0)
        {
          v23 = buf;
        }

        else
        {
          v23 = *buf;
        }

        if (v22)
        {
          if ((v45 & 0x80u) == 0)
          {
            v24 = &__dst;
          }

          else
          {
            v24 = __dst;
          }

          memmove(v23, v24, v22);
        }

        strcpy(&v23[v22], "/aufx-vois-appl-dnos.aupreset");
        goto LABEL_175;
      }

      goto LABEL_114;
    }

    if ((v45 & 0x80u) == 0)
    {
      v27 = v45;
    }

    else
    {
      v27 = v44;
    }

    std::string::basic_string[abi:ne200100](buf, v27 + 29);
    if (buf[23] >= 0)
    {
      v28 = buf;
    }

    else
    {
      v28 = *buf;
    }

    if (v27)
    {
      if ((v45 & 0x80u) == 0)
      {
        v30 = &__dst;
      }

      else
      {
        v30 = __dst;
      }

      memmove(v28, v30, v27);
    }

LABEL_109:
    strcpy(&v28[v27], "/aufx-vois-appl-drev.aupreset");
    goto LABEL_175;
  }

  if (v10)
  {
    goto LABEL_114;
  }

  if (a3 == 3)
  {
    if ((v45 & 0x80u) == 0)
    {
      v27 = v45;
    }

    else
    {
      v27 = v44;
    }

    std::string::basic_string[abi:ne200100](buf, v27 + 29);
    if (buf[23] >= 0)
    {
      v28 = buf;
    }

    else
    {
      v28 = *buf;
    }

    if (v27)
    {
      if ((v45 & 0x80u) == 0)
      {
        v29 = &__dst;
      }

      else
      {
        v29 = __dst;
      }

      memmove(v28, v29, v27);
    }

    goto LABEL_109;
  }

  if (a3 == 1)
  {
    if ((v45 & 0x80u) == 0)
    {
      v19 = v45;
    }

    else
    {
      v19 = v44;
    }

    std::string::basic_string[abi:ne200100](buf, v19 + 29);
    if (buf[23] >= 0)
    {
      v20 = buf;
    }

    else
    {
      v20 = *buf;
    }

    if (v19)
    {
      if ((v45 & 0x80u) == 0)
      {
        v26 = &__dst;
      }

      else
      {
        v26 = __dst;
      }

      memmove(v20, v26, v19);
    }

    goto LABEL_67;
  }

  if (a3)
  {
    goto LABEL_114;
  }

  if (!_os_feature_enabled_impl())
  {
    if ((v45 & 0x80u) == 0)
    {
      v33 = v45;
    }

    else
    {
      v33 = v44;
    }

    std::string::basic_string[abi:ne200100](buf, v33 + 32);
    if (buf[23] >= 0)
    {
      v34 = buf;
    }

    else
    {
      v34 = *buf;
    }

    if (v33)
    {
      if ((v45 & 0x80u) == 0)
      {
        v35 = &__dst;
      }

      else
      {
        v35 = __dst;
      }

      memmove(v34, v35, v33);
    }

    goto LABEL_148;
  }

  if ((*(a2 + 560) & 1) == 0)
  {
    if ((v45 & 0x80u) == 0)
    {
      v37 = v45;
    }

    else
    {
      v37 = v44;
    }

    std::string::basic_string[abi:ne200100](buf, v37 + 35);
    if (buf[23] >= 0)
    {
      v38 = buf;
    }

    else
    {
      v38 = *buf;
    }

    if (v37)
    {
      if ((v45 & 0x80u) == 0)
      {
        v39 = &__dst;
      }

      else
      {
        v39 = __dst;
      }

      memmove(v38, v39, v37);
    }

    strcpy(&v38[v37], "/aufx-vois-appl-nnet-vi-voice.plist");
    goto LABEL_175;
  }

  if (!v41)
  {
LABEL_174:
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(buf, &__dst, "/aufx-vois-appl-nnet-vi-high-quality-voice.plist");
LABEL_175:
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    goto LABEL_177;
  }

  if (v41 == 1)
  {
LABEL_52:
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(buf, &__dst, "/aufx-vois-appl-nnet-vi-voice.plist");
    goto LABEL_175;
  }

LABEL_114:
  *v13 = 0;
LABEL_177:
  if ((v45 & 0x80000000) == 0)
  {
    return;
  }

  v32 = __dst;
LABEL_179:
  operator delete(v32);
}

void sub_1DDCA3D98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(a1);
}

uint64_t applesauce::CF::details::find_at_key<unsigned int,__CFString const*>(const __CFDictionary *a1, const void *a2)
{
  v2 = applesauce::CF::details::at_key<__CFString const*>(a1, a2);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::not_found(exception);
  }

  return applesauce::CF::convert_to<unsigned int,0>(v2);
}

const void **AUSoundIsolation_v2::UpdateSliceDuration(uint64_t a1, CFTypeRef *a2)
{
  if (!ausdk::AUScope::GetElement((a1 + 80), 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::ReferenceCounted(&v5, *a2);
  CADSPGraphModelSetSliceDuration();
  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v5);
  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::ReferenceCounted(&v4, *a2);
  CADSPGraphModelSetSliceDurationCanVary();
  return CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v4);
}

const void **CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **CA::DSP::Graph::Create(uint64_t a1)
{
  v5 = 0;
  v2 = CADSPGraphCreateWithModel();
  if (v2)
  {
    v4 = 0;
    v6 = 0;
    *a1 = v2;
    CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(&v6);
    *(a1 + 8) = 1;
    return CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(&v4);
  }

  else
  {
    v5 = CADSPErrorCreate();
    v4 = 0;
    v6 = 0;
    *a1 = v5;
    CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&v6);
    *(a1 + 8) = 0;
    return CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&v4);
  }
}

const void **CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

id AU::SoundIsolation::CopyError<CA::DSP::Reference<CA::DSP::Graph>>(void *a1, char a2)
{
  if (a2)
  {
    v2 = [objc_alloc(MEMORY[0x1E698D490]) initWithCode:1970170734];
  }

  else
  {
    v2 = a1;
  }

  return v2;
}

void *CA::DSP::ReferenceCounted<__CADSPGraph *>::ReferenceCounted(void *a1, CFTypeRef cf)
{
  *a1 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  return a1;
}

const void **CA::DSP::Graph::SetProperty(CA::DSP::Graph *this, unsigned int a2, const void *a3)
{
  v9 = 0;
  v4 = 0;
  if (!CADSPGraphSetProperty())
  {
    v4 = CADSPRealTimeErrorCreateWithRealTimeSafeAllocator();
    v9 = v4;
  }

  v8 = v4;
  if (v4)
  {
    v8 = 0;
    v7 = 0;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v8);
    v6 = 0;
    v9 = 0;
    *this = v4;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v9);
    *(this + 8) = 0;
    return CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v6);
  }

  else
  {
    v7 = 1;
    result = CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v8);
    *(this + 8) = 1;
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>,std::__map_value_compare<AUSoundIsolation_v2::BoxTuningType,std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>,std::less<AUSoundIsolation_v2::BoxTuningType>,true>,std::allocator<std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>>>::__emplace_unique_key_args<AUSoundIsolation_v2::BoxTuningType,std::piecewise_construct_t const&,std::tuple<AUSoundIsolation_v2::BoxTuningType&&>,std::tuple<>>(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 32);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

CFTypeID applesauce::CF::make_StringRef@<X0>(CFStringRef format@<X0>, CFStringRef *a2@<X8>, ...)
{
  va_start(va, a2);
  v4 = CFStringCreateWithFormatAndArguments(0, 0, format, va);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  *a2 = v4;
  v5 = CFGetTypeID(v4);
  result = CFStringGetTypeID();
  if (v5 != result)
  {
    v8 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v8, "Could not construct");
  }

  return result;
}

void sub_1DDCA43A4(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

const void **CA::DSP::Graph::Initialize(CA::DSP::Graph *this)
{
  v7 = 0;
  v2 = 0;
  if (!CADSPGraphInitialize())
  {
    v2 = CADSPErrorCreate();
    v7 = v2;
  }

  v6 = v2;
  if (v2)
  {
    v6 = 0;
    v5 = 0;
    CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&v6);
    v4 = 0;
    v7 = 0;
    *this = v2;
    CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&v7);
    *(this + 8) = 0;
    return CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&v4);
  }

  else
  {
    v5 = 1;
    result = CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&v6);
    *(this + 8) = 1;
  }

  return result;
}

const void **CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **CA::DSP::Graph::GetModel(CA::DSP::Graph *this)
{
  Model = CADSPGraphGetModel();
  v3 = Model;
  if (Model)
  {
    CFRetain(Model);
  }

  v5 = 0;
  *this = v3;
  return CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(&v5);
}

const void **CA::DSP::Graph::GetProperty(CA::DSP::Graph *this, unsigned int a2, void *a3, unsigned int *a4)
{
  v10 = 0;
  v5 = 0;
  if (!CADSPGraphGetProperty())
  {
    v5 = CADSPRealTimeErrorCreateWithRealTimeSafeAllocator();
    v10 = v5;
  }

  v9 = v5;
  if (v5)
  {
    v9 = 0;
    v8 = 0;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v9);
    v7 = 0;
    v10 = 0;
    *this = v5;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v10);
    *(this + 8) = 0;
    return CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v7);
  }

  else
  {
    v8 = 1;
    result = CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v9);
    *(this + 8) = 1;
  }

  return result;
}

void *CA::DSP::ReferenceCounted<__CADSPGraphModel *>::ReferenceCounted(void *a1, CFTypeRef cf)
{
  *a1 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  return a1;
}

void *CA::DSP::Reference<CA::DSP::GraphModel>::Reference<CA::DSP::MutableGraphModel>(void *a1, CFTypeRef cf)
{
  *a1 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  return a1;
}

const void **std::expected<CA::DSP::Reference<CA::DSP::Graph>,CA::DSP::Reference<CA::DSP::Error>>::~expected[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    return CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(a1);
  }

  else
  {
    return CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(a1);
  }
}

uint64_t *std::__tree<std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>,std::__map_value_compare<AUSoundIsolation_v2::BoxTuningType,std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>,std::less<AUSoundIsolation_v2::BoxTuningType>,true>,std::allocator<std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<AUSoundIsolation_v2::BoxTuningType const,applesauce::CF::StringRef>,0>(v2[5]);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<AUSoundIsolation_v2::BoxTuningType const,applesauce::CF::StringRef>,0>(const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

const void *applesauce::CF::details::at_key<__CFString const*>(CFDictionaryRef theDict, const void *a2)
{
  result = 0;
  if (theDict)
  {
    if (a2)
    {
      return CFDictionaryGetValue(theDict, a2);
    }
  }

  return result;
}

uint64_t applesauce::CF::convert_as<BOOL,0>(const __CFBoolean *a1)
{
  TypeID = CFBooleanGetTypeID();
  if (TypeID == CFGetTypeID(a1))
  {
    LOBYTE(v3) = CFBooleanGetValue(a1) != 0;
    v4 = 1;
  }

  else
  {
    v5 = CFNumberGetTypeID();
    if (v5 == CFGetTypeID(a1))
    {
      v3 = applesauce::CF::details::number_convert_as<BOOL>(a1);
      v4 = HIBYTE(v3);
    }

    else
    {
      LOBYTE(v3) = 0;
      v4 = 0;
    }
  }

  return v3 | (v4 << 8);
}

uint64_t applesauce::CF::convert_to<unsigned int,0>(const __CFNumber *a1)
{
  result = applesauce::CF::convert_as<unsigned int,0>(a1);
  if ((result & 0x100000000) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::convert_error(exception);
  }

  return result;
}

float applesauce::CF::convert_to<float,0>(uint64_t a1)
{
  v1 = applesauce::CF::convert_as<float,0>(a1);
  if (!HIDWORD(v1))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::convert_error(exception);
  }

  return *&v1;
}

void anonymous namespace::loadDictionaryRef(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (getAUSoundIsolationLog(void)::onceToken != -1)
  {
    dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_3653);
  }

  v4 = getAUSoundIsolationLog(void)::gLog;
  if (os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_DEBUG))
  {
    v9 = a2;
    if (*(a2 + 23) < 0)
    {
      v9 = *a2;
    }

    *buf = 136315650;
    v12 = "AUSoundIsolation_v2.mm";
    v13 = 1024;
    v14 = 145;
    v15 = 2080;
    v16 = v9;
    _os_log_debug_impl(&dword_1DDB85000, v4, OS_LOG_TYPE_DEBUG, "%s:%i load dictionary from %s", buf, 0x1Cu);
  }

  CFTypeRef = applesauce::CF::details::make_CFTypeRef(a2);
  v6 = CFTypeRef;
  if (CFTypeRef)
  {
    v7 = CFGetTypeID(CFTypeRef);
    if (v7 != CFDictionaryGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  else
  {
    if (getAUSoundIsolationLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_3653);
    }

    v10 = getAUSoundIsolationLog(void)::gLog;
    if (os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      if (*(a2 + 23) < 0)
      {
        a2 = *a2;
      }

      *buf = 136315650;
      v12 = "AUSoundIsolation_v2.mm";
      v13 = 1024;
      v14 = 158;
      v15 = 2080;
      v16 = a2;
      _os_log_error_impl(&dword_1DDB85000, v10, OS_LOG_TYPE_ERROR, "%s:%i loading from %s failed", buf, 0x1Cu);
    }
  }

  applesauce::CF::DictionaryRef::from_get(a1, v6);
  if (v6)
  {
    CFRelease(v6);
  }
}

{
  v15 = *MEMORY[0x1E69E9840];
  if (getAUSoundIsolationLog(void)::onceToken != -1)
  {
    dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_48);
  }

  v4 = getAUSoundIsolationLog(void)::gLog;
  if (os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_DEBUG))
  {
    v7 = a2;
    if (*(a2 + 23) < 0)
    {
      v7 = *a2;
    }

    *buf = 136315650;
    v10 = "AUSoundIsolation_v1.mm";
    v11 = 1024;
    v12 = 185;
    v13 = 2080;
    v14 = v7;
    _os_log_debug_impl(&dword_1DDB85000, v4, OS_LOG_TYPE_DEBUG, "%s:%i load dictionary from %s", buf, 0x1Cu);
  }

  CFTypeRef = applesauce::CF::details::make_CFTypeRef(a2);
  v8 = CFTypeRef;
  if (!CFTypeRef)
  {
    if (getAUSoundIsolationLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_48);
    }

    v6 = getAUSoundIsolationLog(void)::gLog;
    if (os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      if (*(a2 + 23) < 0)
      {
        a2 = *a2;
      }

      *buf = 136315650;
      v10 = "AUSoundIsolation_v1.mm";
      v11 = 1024;
      v12 = 198;
      v13 = 2080;
      v14 = a2;
      _os_log_error_impl(&dword_1DDB85000, v6, OS_LOG_TYPE_ERROR, "%s:%i loading from %s failed", buf, 0x1Cu);
    }
  }

  applesauce::CF::TypeRef::operator applesauce::CF::DictionaryRef(a1, &v8);
  if (CFTypeRef)
  {
    CFRelease(CFTypeRef);
  }
}

CFPropertyListRef applesauce::CF::details::make_CFTypeRef(uint64_t a1)
{
  applesauce::CF::make_DataRef(&data, a1);
  if (!data)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v1 = CFPropertyListCreateWithData(0, data, 0, 0, 0);
  if (!v1)
  {
    v4 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v4, "Could not construct");
  }

  if (data)
  {
    CFRelease(data);
  }

  return v1;
}

void sub_1DDCA4ED0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  applesauce::CF::DataRef::~DataRef(&a10);
  _Unwind_Resume(a1);
}

uint64_t applesauce::CF::make_DataRef(CFDataRef *a1, uint64_t a2)
{
  v12[4] = *MEMORY[0x1E69E9840];
  if (*(a2 + 23) >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  v4 = fopen(v3, "rb");
  v10[0] = &unk_1F5937898;
  v10[1] = MEMORY[0x1E69E9868];
  v10[3] = v10;
  __stream = v4;
  v12[3] = v12;
  std::__function::__func<int (*)(__sFILE *),std::allocator<int (*)(__sFILE *)>,int ()(__sFILE *)>::__clone(v10, v12);
  std::__function::__value_func<int ()(__sFILE *)>::~__value_func[abi:ne200100](v10);
  if (!__stream)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  fseek(__stream, 0, 2);
  v5 = MEMORY[0x1E12BD9A0](__stream);
  if (v5)
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
  }

  fseek(__stream, 0, 0);
  fread(0, 1uLL, 0, __stream);
  v6 = CFDataCreate(0, 0, 0);
  *a1 = v6;
  if (!v6)
  {
    v9 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v9, "Could not construct");
  }

  std::unique_ptr<__sFILE,std::function<int ()(__sFILE*)>>::reset[abi:ne200100](&__stream);
  return std::__function::__value_func<int ()(__sFILE *)>::~__value_func[abi:ne200100](v12);
}

void sub_1DDCA510C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  applesauce::CF::ObjectRef<__CFData const*>::~ObjectRef(v6);
  if (v7)
  {
    operator delete(v7);
  }

  std::unique_ptr<__sFILE,std::function<int ()(__sFILE*)>>::reset[abi:ne200100](va);
  std::__function::__value_func<int ()(__sFILE *)>::~__value_func[abi:ne200100](v5);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<int ()(__sFILE *)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t *std::unique_ptr<__sFILE,std::function<int ()(__sFILE*)>>::reset[abi:ne200100](uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v3 = v1;
    v2 = result[4];
    if (!v2)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    return (*(*v2 + 48))(v2, &v3);
  }

  return result;
}

uint64_t std::__function::__func<int (*)(__sFILE *),std::allocator<int (*)(__sFILE *)>,int ()(__sFILE *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5937898;
  a2[1] = v2;
  return result;
}

void std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(void *a1, unsigned __int8 *a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a4;
  v5 = &a2[a3];
  v17[0] = a2;
  v17[1] = &a2[a3];
  v18 = 0;
  v19 = 0;
  v20 = v4;
  v13 = *a4;
  v14 = a4[2];
  LOBYTE(v10.__locale_) = 0;
  v11 = 0;
  v12 = a1;
  LOBYTE(v15.__locale_) = 0;
  v16 = 0;
  if (!a3)
  {
    goto LABEL_14;
  }

  v6 = a2;
  v7 = "The format string terminates at a '{'";
  do
  {
    v8 = v12;
    while (1)
    {
      v9 = *v6;
      if (v9 == 125)
      {
        if (++v6 == v5 || *v6 != 125)
        {
          v7 = "The format string contains an invalid escape sequence";
LABEL_18:
          std::__throw_format_error[abi:ne200100](v7);
        }

        goto LABEL_11;
      }

      if (v9 == 123)
      {
        if (++v6 == v5)
        {
          goto LABEL_18;
        }

        if (*v6 != 123)
        {
          break;
        }
      }

LABEL_11:
      std::__format::__output_buffer<char>::push_back[abi:ne200100](v8, v9);
      if (++v6 == v5)
      {
        goto LABEL_14;
      }
    }

    v12 = v8;
    v6 = std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v6, v5, v17, &v12);
  }

  while (v6 != v5);
LABEL_14:
  if (v16 == 1)
  {
    std::locale::~locale(&v15);
  }
}

void sub_1DDCA5448(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a17 == 1)
  {
    std::locale::~locale(v17 + 4);
    if (a11)
    {
      std::locale::~locale(&a10);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void **a1, const void **a2, char *__s)
{
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  v7 = strlen(__s);
  result = std::string::basic_string[abi:ne200100](a1, v6 + v7);
  if (*(a1 + 23) < 0)
  {
    a1 = *a1;
  }

  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    result = memmove(a1, v9, v6);
  }

  v10 = a1 + v6;
  if (v7)
  {
    result = memmove(v10, __s, v7);
  }

  v10[v7] = 0;
  return result;
}

void std::__throw_format_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::format_error::format_error[abi:ne200100](exception, a1);
}

unsigned __int8 *std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 **a3, void **a4)
{
  *&v291[1023] = *MEMORY[0x1E69E9840];
  v7 = std::__format::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(a1, a2, a3);
  if (v7 == a2)
  {
    goto LABEL_523;
  }

  v9 = *v7;
  if (v9 != 125)
  {
    if (v9 == 58)
    {
      ++v7;
      goto LABEL_5;
    }

LABEL_523:
    std::__throw_format_error[abi:ne200100]("The argument index should end with a ':' or a '}'");
  }

LABEL_5:
  *a3 = v7;
  v10 = a4[1];
  if (v10 <= v8)
  {
LABEL_524:
    std::__throw_format_error[abi:ne200100]("The argument index value is too large for the number of arguments supplied");
  }

  if (v10 > 0xC)
  {
    v11 = &a4[2][4 * v8];
    v13 = *v11;
    v14 = *(v11 + 4);
    v15 = *(v11 + 8);
    v16 = *v11 >> 8;
    LODWORD(v11) = *(v11 + 16);
  }

  else
  {
    v11 = (a4[3] >> (5 * v8)) & 0x1F;
    v12 = &a4[2][2 * v8];
    v13 = *v12;
    v14 = *(v12 + 4);
    v15 = *(v12 + 8);
    v16 = *v12 >> 8;
  }

  switch(v11)
  {
    case 1:
      v285 = 0;
      v286 = 0x20FFFFFFFFLL;
      if (v9 != 58)
      {
        goto LABEL_225;
      }

      v17 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v285, a3, 55);
      v18 = v17;
      if (BYTE1(v285) - 2 < 6)
      {
        *a3 = v17;
        v19 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v285, a4);
        v21 = std::__formatter::__format_integer[abi:ne200100]<unsigned int,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v13, a4, v19, v20, 0);
        goto LABEL_13;
      }

      if (BYTE1(v285) > 1u)
      {
        std::__format_spec::__throw_invalid_type_format_error[abi:ne200100]("a BOOL");
      }

      std::__format_spec::__parser<char>::__validate[abi:ne200100](&v285, "a BOOL");
      if ((v285 & 7) == 0)
      {
        LOBYTE(v285) = v285 | 1;
      }

      *a3 = v18;
LABEL_225:
      v125 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v285, a4);
      v127 = v126;
      if ((v125 & 0x40) != 0)
      {
        std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](&v289, a4);
        v130 = std::locale::use_facet(&v289, MEMORY[0x1E69E5368]);
        std::locale::~locale(&v289);
        v131 = v130->__vftable;
        if (v13)
        {
          (v131[2].~facet)(&v289, v130);
        }

        else
        {
          (v131[2].~facet_0)(&v289, v130);
        }

        if ((v289.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v132 = &v289;
        }

        else
        {
          v132 = v289.__r_.__value_.__r.__words[0];
        }

        if ((v289.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v289.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v289.__r_.__value_.__l.__size_;
        }

        v22 = std::__formatter::__write_string_no_precision[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v132, size, *a4, v125, v127);
        if (SHIBYTE(v289.__r_.__value_.__r.__words[2]) < 0)
        {
          v134 = v289.__r_.__value_.__r.__words[0];
          goto LABEL_466;
        }
      }

      else
      {
        if (v13)
        {
          v128 = 4;
        }

        else
        {
          v128 = 5;
        }

        v22 = *a4;
        if (v13)
        {
          v129 = "true";
        }

        else
        {
          v129 = "false";
        }

        std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v129, v128, *a4, v125, v127, v128);
      }

      goto LABEL_467;
    case 2:
      v285 = 0;
      v286 = 0x20FFFFFFFFLL;
      if (v9 != 58)
      {
        goto LABEL_51;
      }

      v44 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v285, a3, 55);
      v45 = BYTE1(v285);
      if (BYTE1(v285) - 2 >= 6)
      {
        if (BYTE1(v285) > 0x13u || ((1 << SBYTE1(v285)) & 0x80401) == 0)
        {
          std::__format_spec::__throw_invalid_type_format_error[abi:ne200100]("a character");
        }

        std::__format_spec::__parser<char>::__validate[abi:ne200100](&v285, "a character");
        if ((v285 & 7) == 0)
        {
          LOBYTE(v285) = v285 | 1;
        }
      }

      *a3 = v44;
      switch(v45)
      {
        case 0:
          goto LABEL_51;
        case 19:
          v35 = *a4;
          v135 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v285, a4);
          v137 = v136;
          __p.__r_.__value_.__s.__data_[0] = v13;
          memset(&v289, 0, sizeof(v289));
          std::string::push_back(&v289, 39);
          std::__formatter::__escape[abi:ne200100]<char>(&v289, &__p, 1, 0);
          std::string::push_back(&v289, 39);
          if ((v289.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v138 = &v289 + HIBYTE(v289.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v138 = (v289.__r_.__value_.__r.__words[0] + v289.__r_.__value_.__l.__size_);
          }

          if ((v289.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v139 = &v289;
          }

          else
          {
            v139 = v289.__r_.__value_.__r.__words[0];
          }

          if ((v289.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v140 = HIBYTE(v289.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v140 = v289.__r_.__value_.__l.__size_;
          }

          std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v139, v138 - v139, v35, v135, v137, v140);
          if (SHIBYTE(v289.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v289.__r_.__value_.__l.__data_);
          }

          goto LABEL_113;
        case 10:
LABEL_51:
          v35 = *a4;
          v46 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v285, a4);
          v289.__r_.__value_.__s.__data_[0] = v13;
          std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v289, 1uLL, v35, v46, v47, 1);
          goto LABEL_113;
      }

      v75 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v285, a4);
      v76 = v141;
      v53 = v13;
      v74 = a4;
      goto LABEL_106;
    case 3:
      v289.__r_.__value_.__r.__words[0] = 0;
      v289.__r_.__value_.__l.__size_ = 0x20FFFFFFFFLL;
      if (v9 == 58)
      {
        v48 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v289, a3, 55);
        std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(&v289);
        *a3 = v48;
      }

      v31 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v289, a4);
      v33 = v49;
      v50 = v13 | (v16 << 8);
      if ((v31 & 0xFF00) == 0xA00)
      {
        if ((v13 | (v16 << 8)) == v13)
        {
          goto LABEL_27;
        }

LABEL_525:
        std::__throw_format_error[abi:ne200100]("Integral value outside the range of the char type");
      }

      if (v50 >= 0)
      {
        v53 = v13 | (v16 << 8);
      }

      else
      {
        v53 = -v50;
      }

      v73 = v16 << 8 >> 31;
      v74 = a4;
      v75 = v31;
      v76 = v33;
      goto LABEL_107;
    case 4:
      v289.__r_.__value_.__r.__words[0] = 0;
      v289.__r_.__value_.__l.__size_ = 0x20FFFFFFFFLL;
      if (v9 == 58)
      {
        v30 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v289, a3, 55);
        std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(&v289);
        *a3 = v30;
      }

      v31 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v289, a4);
      v33 = v32;
      v34 = v13 | (v16 << 8) | (v14 << 32);
      if ((v31 & 0xFF00) != 0xA00)
      {
        if (v34 >= 0)
        {
          v62 = v13 | (v16 << 8) | (v14 << 32);
        }

        else
        {
          v62 = -v34;
        }

        v42 = v14 >> 31;
        v67 = a4;
        v68 = v31;
        v69 = v33;
        goto LABEL_111;
      }

      if (v34 != v34)
      {
        goto LABEL_525;
      }

LABEL_27:
      v35 = *a4;
      LOBYTE(v285) = v13;
      std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v285, 1uLL, v35, v31, v33, 1);
LABEL_113:
      *a4 = v35;
LABEL_468:
      v245 = *a3;
      if (*a3 == a2 || *v245 != 125)
      {
        std::__throw_format_error[abi:ne200100]("The replacement field misses a terminating '}'");
      }

      return v245 + 1;
    case 5:
      v289.__r_.__value_.__r.__words[0] = 0;
      v289.__r_.__value_.__l.__size_ = 0x20FFFFFFFFLL;
      if (v9 == 58)
      {
        v54 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v289, a3, 55);
        std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(&v289);
        *a3 = v54;
      }

      v40 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v289, a4);
      v42 = v55;
      v56 = (v14 << 32) | (v16 << 8) | v13;
      if ((v40 & 0xFF00) == 0xA00)
      {
        if (__PAIR128__(-1, -257) >= __PAIR128__((v56 >= 0x80) + v15 - 1, v56 - 128))
        {
          goto LABEL_525;
        }

LABEL_80:
        v35 = *a4;
        LOBYTE(v285) = v13;
        std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v285, 1uLL, v35, v40, v42, 1);
        goto LABEL_113;
      }

      v70 = (__PAIR128__(v15 ^ (v15 >> 63), v56 ^ (v15 >> 63)) - __PAIR128__(v15 >> 63, v15 >> 63)) >> 64;
      v43 = (v56 ^ (v15 >> 63)) - (v15 >> 63);
      v72 = v15 >> 63;
      v71 = a4;
LABEL_109:
      v77 = std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v43, v70, v71, v40, v42, v72);
      goto LABEL_112;
    case 6:
      v289.__r_.__value_.__r.__words[0] = 0;
      v289.__r_.__value_.__l.__size_ = 0x20FFFFFFFFLL;
      if (v9 == 58)
      {
        v51 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v289, a3, 55);
        std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(&v289);
        *a3 = v51;
      }

      v40 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v289, a4);
      v42 = v52;
      v53 = v13 | (v16 << 8);
      if ((v40 & 0xFF00) == 0xA00)
      {
        if (v53 >= 0x80)
        {
          goto LABEL_525;
        }

        goto LABEL_80;
      }

      v74 = a4;
      v75 = v40;
      v76 = v42;
LABEL_106:
      LOBYTE(v73) = 0;
LABEL_107:
      v77 = std::__formatter::__format_integer[abi:ne200100]<unsigned int,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v53, v74, v75, v76, v73);
LABEL_112:
      v35 = v77;
      goto LABEL_113;
    case 7:
      v289.__r_.__value_.__r.__words[0] = 0;
      v289.__r_.__value_.__l.__size_ = 0x20FFFFFFFFLL;
      if (v9 == 58)
      {
        v60 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v289, a3, 55);
        std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(&v289);
        *a3 = v60;
      }

      v40 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v289, a4);
      v42 = v61;
      v62 = (v14 << 32) | (v16 << 8) | v13;
      if ((v40 & 0xFF00) != 0xA00)
      {
        v67 = a4;
        v68 = v40;
        v69 = v42;
        LOBYTE(v42) = 0;
LABEL_111:
        v77 = std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v62, v67, v68, v69, v42);
        goto LABEL_112;
      }

      if (v62 >= 0x80)
      {
        goto LABEL_525;
      }

      goto LABEL_80;
    case 8:
      v289.__r_.__value_.__r.__words[0] = 0;
      v289.__r_.__value_.__l.__size_ = 0x20FFFFFFFFLL;
      if (v9 == 58)
      {
        v39 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v289, a3, 55);
        std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(&v289);
        *a3 = v39;
      }

      v40 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v289, a4);
      v42 = v41;
      v43 = (v14 << 32) | (v16 << 8) | v13;
      if ((v40 & 0xFF00) == 0xA00)
      {
        if (__PAIR128__(v15, v43) >= 0x80)
        {
          goto LABEL_525;
        }

        goto LABEL_80;
      }

      v70 = v15;
      v71 = a4;
      LOBYTE(v72) = 0;
      goto LABEL_109;
    case 9:
      v277 = 0;
      v278 = -1;
      v279 = 32;
      v280 = 0;
      v281 = 0;
      if (v9 != 58)
      {
        goto LABEL_117;
      }

      v36 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v277, a3, 63);
      if (BYTE1(v277) - 13 < 6)
      {
        if (v278 != -1 || SWORD1(v277) <= -1)
        {
          v38 = v278;
        }

        else
        {
          v38 = 6;
        }

        v278 = v38;
LABEL_116:
        *a3 = v36;
LABEL_117:
        v79 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v277, a4);
        v80 = v78;
        v81 = v16 << 8;
        v82 = v13 | (v16 << 8);
        if ((v13 | (v16 << 8) & 0x7FFFFFFF) < 0x7F800000)
        {
          if (v78 == -1)
          {
            v83 = 149;
          }

          else
          {
            v83 = v78;
          }

          v289.__r_.__value_.__r.__words[0] = v83;
          if (v83 < 150)
          {
            v84 = v83 + 45;
            v289.__r_.__value_.__l.__size_ = v84;
            if ((v83 + 45) >= 0x101)
            {
              operator new();
            }
          }

          else
          {
            LODWORD(v289.__r_.__value_.__l.__data_) = 149;
            HIDWORD(v289.__r_.__value_.__r.__words[0]) = v83 - 149;
            v84 = 194;
            v289.__r_.__value_.__l.__size_ = 194;
            v83 = 149;
          }

          *v273 = v79;
          v85 = BYTE1(v79);
          v289.__r_.__value_.__r.__words[2] = &v290;
          v275 = v79;
          if ((v81 & 0x80000000) != 0)
          {
            v88 = 45;
          }

          else
          {
            v86 = (v79 >> 3) & 3;
            if (v86 == 2)
            {
              v88 = 43;
            }

            else
            {
              v87 = &v290;
              if (v86 != 3)
              {
                goto LABEL_132;
              }

              v88 = 32;
            }
          }

          v290 = v88;
          v87 = v291;
LABEL_132:
          v89 = fabsf(*&v82);
          if (BYTE1(v79) > 0xEu)
          {
            if (BYTE1(v79) - 15 < 2)
            {
              v285 = v87;
              v90 = MEMORY[0x1E12BD040](v87, &v291[v84 - 1], 2, v83, v89);
              __src = v90;
              *v288 = v90;
              if (v83)
              {
                v91 = v83 + 1;
              }

              else
              {
                v91 = 0;
              }

              v92 = &v90[-v91];
              goto LABEL_142;
            }

            if (BYTE1(v79) == 17)
            {
LABEL_148:
              std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<float,float>(&v285, &v289, v83, v87);
              goto LABEL_300;
            }

            std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<float,float>(&v285, &v289, v83, v87);
            v93 = __src;
            if (__src != *v288)
            {
              goto LABEL_265;
            }
          }

          else
          {
            if (BYTE1(v79) > 0xBu)
            {
              if (BYTE1(v79) == 12)
              {
                if ((v78 & 0x80000000) != 0)
                {
                  v142 = -1;
                }

                else
                {
                  v142 = v83;
                }

                std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<float,float>(&v285, v84, &v290, v142, v87);
                v143 = v285;
                v93 = __src;
                while (v143 != v93)
                {
                  v144 = *v143;
                  if ((v144 - 97) < 6)
                  {
                    LOBYTE(v144) = v144 - 32;
                  }

                  *v143++ = v144;
                }

                v145 = 80;
                goto LABEL_299;
              }

              if (BYTE1(v79) == 13)
              {
                std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<float,float>(&v285, v84, &v290, v83, v87);
                goto LABEL_300;
              }

              std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<float,float>(&v285, v84, &v290, v83, v87);
              v93 = __src;
LABEL_265:
              v145 = 69;
LABEL_299:
              *v93 = v145;
              goto LABEL_300;
            }

            if (!BYTE1(v79))
            {
              if ((v78 & 0x80000000) == 0)
              {
                goto LABEL_148;
              }

              v285 = v87;
              v247 = std::to_chars(v87, &v291[v84 - 1], &v290, v89);
              v248 = v247;
              *v288 = v247;
              v249 = v247 - v87;
              if (v247 - v87 < 4)
              {
LABEL_483:
                v251 = v247;
              }

              else
              {
                if (v249 >= 6)
                {
                  v249 = 6;
                }

                v250 = -v249;
                while (*(v247 + v250) != 101)
                {
                  if (++v250 == -3)
                  {
                    goto LABEL_483;
                  }
                }

                v251 = (v247 + v250);
              }

              __src = v251;
              v262 = memchr(v87 + 1, 46, v251 - (v87 + 1));
              if (v262)
              {
                v92 = v262;
              }

              else
              {
                v92 = v251;
              }

              if (v92 == v251)
              {
                v92 = v248;
              }

LABEL_142:
              v286 = v92;
              goto LABEL_300;
            }

            if ((v78 & 0x80000000) != 0)
            {
              v146 = -1;
            }

            else
            {
              v146 = v83;
            }

            std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<float,float>(&v285, v84, &v290, v146, v87);
          }

LABEL_300:
          if ((v275 & 0x20) != 0)
          {
            v157 = v286;
            v158 = *v288;
            if (v286 == *v288)
            {
              **v288 = 46;
              *v288 = ++v158;
              v159 = __src;
              if (__src != v157)
              {
                if (__src + 1 == v157)
                {
                  v166 = *__src;
                  *__src = *(__src + 1);
                  *(v159 + 1) = v166;
                }

                else
                {
                  memmove(&v158[-(v157 - __src)], __src, v157 - __src);
                  *v159 = 46;
                }
              }

              v286 = v159;
              __src = (v159 + 1);
            }

            else
            {
              v159 = v286;
            }

            if ((v85 - 17) <= 1)
            {
              if (v80 <= 1)
              {
                v167 = 1;
              }

              else
              {
                v167 = v80;
              }

              if ((v80 & 0x80000000) != 0)
              {
                v167 = 6;
              }

              v168 = v285 - v159;
              if (__src != v158)
              {
                v168 = -1;
              }

              v169 = v168 + v167;
              v170 = __src + ~v159;
              if (v170 < v169)
              {
                HIDWORD(v289.__r_.__value_.__r.__words[0]) += v169 - v170;
              }
            }
          }

          if ((v275 & 0x40) == 0)
          {
            v171 = *v288;
            v172 = v289.__r_.__value_.__r.__words[2];
            v173 = *v288 - v289.__r_.__value_.__r.__words[2];
            v174 = SHIDWORD(v289.__r_.__value_.__r.__words[0]);
            if ((*v288 - v289.__r_.__value_.__r.__words[2] + SHIDWORD(v289.__r_.__value_.__r.__words[0])) >= *v273 >> 32)
            {
              if (!HIDWORD(v289.__r_.__value_.__r.__words[0]) || (v187 = __src, __src == *v288))
              {
                v22 = *a4;
                std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a4, v289.__r_.__value_.__r.__words[2], *v288 - v289.__r_.__value_.__r.__words[2]);
                std::__format::__output_buffer<char>::__fill[abi:ne200100](v22, v174, 48);
              }

              else
              {
                v22 = *a4;
                std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a4, v289.__r_.__value_.__r.__words[2], __src - v289.__r_.__value_.__r.__words[2]);
                std::__format::__output_buffer<char>::__fill[abi:ne200100](v22, v174, 48);
                std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v22, v187, v171 - v187);
              }
            }

            else
            {
              v22 = *a4;
              if ((v275 & 7) == 4)
              {
                if (v289.__r_.__value_.__r.__words[2] != v285)
                {
                  std::__format::__output_buffer<char>::push_back[abi:ne200100](*a4, *v289.__r_.__value_.__r.__words[2]);
                  ++v172;
                }

                v175 = *v273;
                v176 = v273[0] & 0xB8 | 3;
                v177 = 48;
              }

              else
              {
                v175 = *v273;
                v176 = v273[0];
                v177 = BYTE4(v80);
              }

              v196 = v175 & 0xFFFFFFFFFFFFFF00 | v176;
              v197 = v80 & 0xFFFFFF00FFFFFFFFLL | (v177 << 32);
              if (v174)
              {
                std::__formatter::__write_using_trailing_zeros[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v172, v171, v22, v196, v197, v173, __src, v174);
              }

              else
              {
                std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v172, v171 - v172, v22, v196, v197, v173);
              }
            }

            goto LABEL_416;
          }

          v22 = *a4;
          std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](&v282, a4);
          v178 = std::locale::use_facet(&v282, MEMORY[0x1E69E5368]);
          (v178->__vftable[1].__on_zero_shared)(&__p);
          v179 = v286;
          v180 = __src;
          v181 = v285;
          v270 = v286;
          v271 = v178;
          if (__src < v286)
          {
            v179 = __src;
          }

          v272 = v179 - v285;
          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
          {
            v182 = __p.__r_.__value_.__l.__size_;
            if (!__p.__r_.__value_.__l.__size_)
            {
              goto LABEL_377;
            }

            p_p = __p.__r_.__value_.__r.__words[0];
            v184 = *__p.__r_.__value_.__l.__data_;
            if (v272 <= v184)
            {
              *__p.__r_.__value_.__l.__data_ = 0;
              __p.__r_.__value_.__l.__size_ = 0;
              goto LABEL_377;
            }

            v186 = *__p.__r_.__value_.__l.__data_;
            v183 = __p.__r_.__value_.__r.__words[0];
          }

          else
          {
            if (!*(&__p.__r_.__value_.__s + 23))
            {
              goto LABEL_377;
            }

            if (v272 <= __p.__r_.__value_.__s.__data_[0])
            {
              __p.__r_.__value_.__s.__data_[0] = 0;
              *(&__p.__r_.__value_.__s + 23) = 0;
              goto LABEL_377;
            }

            v182 = __p.__r_.__value_.__l.__size_;
            v183 = __p.__r_.__value_.__r.__words[0];
            v184 = __p.__r_.__value_.__s.__data_[0];
            p_p = &__p;
            v186 = __p.__r_.__value_.__s.__data_[0];
          }

          memset(&v283, 0, sizeof(v283));
          v188 = (v183 + v182);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v189 = &__p + SHIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v189 = v188;
          }

          v190 = v272 - v184;
          if (v272 - v184 >= 1)
          {
            v191 = (v189 - 1);
            do
            {
              std::string::push_back(&v283, v186);
              if (p_p == v191)
              {
                v186 = p_p->__r_.__value_.__s.__data_[0];
              }

              else
              {
                v192 = (&p_p->__r_.__value_.__l.__data_ + 1);
                v193 = &p_p->__r_.__value_.__s.__data_[1];
                do
                {
                  v194 = *v193++;
                  v186 = v194;
                  if (v194)
                  {
                    v195 = 1;
                  }

                  else
                  {
                    v195 = v192 == v191;
                  }

                  v192 = v193;
                }

                while (!v195);
                p_p = (v193 - 1);
              }

              v190 -= v186;
            }

            while (v190 > 0);
          }

          std::string::push_back(&v283, v186 + v190);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          __p = v283;
LABEL_377:
          v198 = HIDWORD(v80);
          v269 = *v288;
          v199 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v199 = __p.__r_.__value_.__l.__size_;
          }

          v200 = *v288 - v289.__r_.__value_.__r.__words[2] + SHIDWORD(v289.__r_.__value_.__r.__words[0]) + v199 - (v199 != 0);
          v201 = v275 & 7;
          v202 = (*v273 >> 32) - v200;
          if (*v273 >> 32 > v200)
          {
            if (v201 == 4)
            {
              v203 = 48;
            }

            else
            {
              v203 = v198;
            }

            if (v201 == 4)
            {
              v204 = 3;
            }

            else
            {
              v204 = v275 & 7;
            }

            if (v204 > 1)
            {
              if (v204 != 3)
              {
                *v274 = v202 - (v202 >> 1);
                v202 >>= 1;
                goto LABEL_393;
              }
            }

            else if (v204)
            {
              *v274 = v202;
              v202 = 0;
LABEL_393:
              if (v201 == 4 && v181 != v289.__r_.__value_.__r.__words[2])
              {
                std::__format::__output_buffer<char>::push_back[abi:ne200100](v22, *v289.__r_.__value_.__r.__words[2]);
              }

              v205 = v198 & 0xFFFFFF00 | v203;
              std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v22, v202, v205);
              if (v201 != 4 && v181 != v289.__r_.__value_.__r.__words[2])
              {
                std::__format::__output_buffer<char>::push_back[abi:ne200100](v22, *v289.__r_.__value_.__r.__words[2]);
              }

              v276 = v180;
              v206 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
              if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
              {
                v206 = __p.__r_.__value_.__l.__size_;
                if (__p.__r_.__value_.__l.__size_)
                {
                  v207 = __p.__r_.__value_.__r.__words[0];
LABEL_404:
                  v208 = v207 + v206;
                  v209 = (v271->__vftable[1].~facet_0)(v271);
                  v210 = &v207->__r_.__value_.__s.__data_[1];
                  for (i = v208; ; v208 = i)
                  {
                    v212 = *--i;
                    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v22, v181, v212);
                    if (v208 == v210)
                    {
                      break;
                    }

                    v181 += *i;
                    std::__format::__output_buffer<char>::push_back[abi:ne200100](v22, v209);
                  }

LABEL_408:
                  v213 = v269;
                  if (v270 == v269)
                  {
                    v213 = v270;
                    v215 = v276;
                  }

                  else
                  {
                    v214 = (v271->__vftable[1].~facet)(v271);
                    v215 = v276;
                    std::__format::__output_buffer<char>::push_back[abi:ne200100](v22, v214);
                    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v22, (v270 + 1), &v276[-v270 - 1]);
                    std::__format::__output_buffer<char>::__fill[abi:ne200100](v22, SHIDWORD(v289.__r_.__value_.__r.__words[0]), 48);
                  }

                  if (v215 != v213)
                  {
                    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v22, v215, v213 - v215);
                  }

                  std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v22, *v274, v205);
                  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__p.__r_.__value_.__l.__data_);
                  }

                  std::locale::~locale(&v282);
LABEL_416:
                  if (v289.__r_.__value_.__l.__size_ < 0x101)
                  {
                    goto LABEL_467;
                  }

                  goto LABEL_465;
                }
              }

              else if (*(&__p.__r_.__value_.__s + 23))
              {
                v207 = &__p;
                goto LABEL_404;
              }

              std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v22, v181, v272);
              goto LABEL_408;
            }

            *v274 = 0;
            goto LABEL_393;
          }

          *v274 = 0;
          v202 = 0;
          v203 = v198;
          goto LABEL_393;
        }

        v265 = *a4;
        LODWORD(v266) = v81 >> 31;
        v267 = v79;
        v268 = v80;
LABEL_521:
        v21 = std::__formatter::__format_floating_point_non_finite[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>(v265, v267, v268, v266, 0);
LABEL_13:
        v22 = v21;
        goto LABEL_467;
      }

      if (BYTE1(v277) <= 0xCu && ((1 << SBYTE1(v277)) & 0x1801) != 0)
      {
        goto LABEL_116;
      }

      goto LABEL_527;
    case 10:
      __p.__r_.__value_.__r.__words[0] = 0;
      __p.__r_.__value_.__l.__size_ = 0x20FFFFFFFFLL;
      if (v9 != 58)
      {
        goto LABEL_188;
      }

      v63 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&__p, a3, 63);
      if (__p.__r_.__value_.__s.__data_[1] - 13 < 6)
      {
        if (LODWORD(__p.__r_.__value_.__r.__words[1]) != -1 || *&__p.__r_.__value_.__s.__data_[2] <= -1)
        {
          v65 = __p.__r_.__value_.__r.__words[1];
        }

        else
        {
          v65 = 6;
        }

        LODWORD(__p.__r_.__value_.__r.__words[1]) = v65;
        goto LABEL_187;
      }

      if (__p.__r_.__value_.__s.__data_[1] <= 0xCu && ((1 << __p.__r_.__value_.__s.__data_[1]) & 0x1801) != 0)
      {
LABEL_187:
        *a3 = v63;
LABEL_188:
        v95 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&__p, a4);
        v96 = v111;
        v112 = v13 | (v16 << 8);
        v98 = v14 << 32;
        *&v113 = v112 | (v14 << 32);
        if ((v112 | (v14 << 32) & 0x7FFFFFFFFFFFFFFFLL) < 0x7FF0000000000000)
        {
          if (v111 == -1)
          {
            v114 = 1074;
          }

          else
          {
            v114 = v111;
          }

          v289.__r_.__value_.__r.__words[0] = v114;
          if (v114 >= 1075)
          {
            LODWORD(v289.__r_.__value_.__l.__data_) = 1074;
            HIDWORD(v289.__r_.__value_.__r.__words[0]) = v114 - 1074;
            v289.__r_.__value_.__l.__size_ = 1390;
            goto LABEL_195;
          }

          v115 = v114 + 316;
          v289.__r_.__value_.__l.__size_ = v115;
          if ((v114 + 316) >= 0x401)
          {
LABEL_195:
            operator new();
          }

          v116 = v95;
          v289.__r_.__value_.__r.__words[2] = &v290;
          if ((v98 & 0x8000000000000000) != 0)
          {
            v119 = 45;
          }

          else
          {
            v117 = (v95 >> 3) & 3;
            if (v117 == 2)
            {
              v119 = 43;
            }

            else
            {
              v118 = &v290;
              if (v117 != 3)
              {
                goto LABEL_203;
              }

              v119 = 32;
            }
          }

          v290 = v119;
          v118 = v291;
LABEL_203:
          v120 = fabs(v113);
          if (BYTE1(v95) > 0xEu)
          {
            if (BYTE1(v95) - 15 < 2)
            {
              v285 = v118;
              v121 = MEMORY[0x1E12BCFE0](v118, &v291[v115 - 1], 2, v114, v120);
              __src = v121;
              *v288 = v121;
              if (v114)
              {
                v122 = v114 + 1;
              }

              else
              {
                v122 = 0;
              }

              v123 = &v121[-v122];
              goto LABEL_213;
            }

            if (BYTE1(v95) == 17)
            {
LABEL_220:
              std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<double,double>(&v285, &v289, v114, v118);
              goto LABEL_316;
            }

            std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<double,double>(&v285, &v289, v114, v118);
            v124 = __src;
            if (__src != *v288)
            {
              goto LABEL_289;
            }
          }

          else
          {
            if (BYTE1(v95) > 0xBu)
            {
              if (BYTE1(v95) == 12)
              {
                if ((v111 & 0x80000000) != 0)
                {
                  v150 = -1;
                }

                else
                {
                  v150 = v114;
                }

                std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<double,double>(&v285, v115, &v290, v150, v118);
                v151 = v285;
                v124 = __src;
                while (v151 != v124)
                {
                  v152 = *v151;
                  if ((v152 - 97) < 6)
                  {
                    LOBYTE(v152) = v152 - 32;
                  }

                  *v151++ = v152;
                }

                v154 = 80;
                goto LABEL_315;
              }

              if (BYTE1(v95) == 13)
              {
                std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<double,double>(&v285, v115, &v290, v114, v118);
                goto LABEL_316;
              }

              std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<double,double>(&v285, v115, &v290, v114, v118);
              v124 = __src;
LABEL_289:
              v154 = 69;
LABEL_315:
              *v124 = v154;
              goto LABEL_316;
            }

            if (!BYTE1(v95))
            {
              if ((v111 & 0x80000000) == 0)
              {
                goto LABEL_220;
              }

              v285 = v118;
              v257 = std::to_chars(v118, &v291[v115 - 1], &v290, v120);
              v258 = v257;
              *v288 = v257;
              v259 = v257 - v118;
              if (v257 - v118 < 4)
              {
LABEL_497:
                v261 = v257;
              }

              else
              {
                if (v259 >= 6)
                {
                  v259 = 6;
                }

                v260 = -v259;
                while (*(v257 + v260) != 101)
                {
                  if (++v260 == -3)
                  {
                    goto LABEL_497;
                  }
                }

                v261 = (v257 + v260);
              }

              __src = v261;
              v264 = memchr(v118 + 1, 46, v261 - (v118 + 1));
              if (v264)
              {
                v123 = v264;
              }

              else
              {
                v123 = v261;
              }

              if (v123 == v261)
              {
                v123 = v258;
              }

LABEL_213:
              v286 = v123;
              if ((v95 & 0x20) == 0)
              {
                goto LABEL_457;
              }

              goto LABEL_317;
            }

            if ((v111 & 0x80000000) != 0)
            {
              v156 = -1;
            }

            else
            {
              v156 = v114;
            }

            std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<double,double>(&v285, v115, &v290, v156, v118);
          }

LABEL_316:
          if ((v95 & 0x20) == 0)
          {
            goto LABEL_457;
          }

LABEL_317:
          v163 = v286;
          v164 = *v288;
          if (v286 == *v288)
          {
            **v288 = 46;
            *v288 = ++v164;
            v165 = __src;
            if (__src != v163)
            {
              if (__src + 1 == v163)
              {
                v234 = *__src;
                *__src = *(__src + 1);
                *(v165 + 1) = v234;
              }

              else
              {
                memmove(&v164[-(v163 - __src)], __src, v163 - __src);
                *v165 = 46;
              }
            }

            v286 = v165;
            __src = (v165 + 1);
          }

          else
          {
            v165 = v286;
          }

          if (BYTE1(v95) - 17 <= 1)
          {
            if (v96 <= 1)
            {
              v235 = 1;
            }

            else
            {
              v235 = v96;
            }

            if ((v96 & 0x80000000) != 0)
            {
              v235 = 6;
            }

            v236 = v285 - v165;
            if (__src != v164)
            {
              v236 = -1;
            }

            v237 = v236 + v235;
            v238 = __src + ~v165;
            if (v238 < v237)
            {
              HIDWORD(v289.__r_.__value_.__r.__words[0]) += v237 - v238;
            }
          }

LABEL_457:
          if ((v95 & 0x40) == 0)
          {
            v221 = *v288;
            v239 = v95;
            v223 = v289.__r_.__value_.__r.__words[2];
            v224 = *v288 - v289.__r_.__value_.__r.__words[2];
            v225 = SHIDWORD(v289.__r_.__value_.__r.__words[0]);
            if ((*v288 - v289.__r_.__value_.__r.__words[2] + SHIDWORD(v289.__r_.__value_.__r.__words[0])) < v239 >> 32)
            {
              v240 = v116;
              v241 = v96;
              v242 = v239;
              v22 = *a4;
              if ((v240 & 7) == 4)
              {
                if (v289.__r_.__value_.__r.__words[2] != v285)
                {
                  std::__format::__output_buffer<char>::push_back[abi:ne200100](*a4, *v289.__r_.__value_.__r.__words[2]);
                  ++v223;
                }

                v243 = v242 & 0xB8 | 3;
                v244 = 48;
              }

              else
              {
                v243 = v239;
                v244 = BYTE4(v241);
              }

              v232 = v242 & 0xFFFFFFFFFFFFFF00 | v243;
              v233 = v241 & 0xFFFFFF00FFFFFFFFLL | (v244 << 32);
              if (!v225)
              {
LABEL_476:
                std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v223, v221 - v223, v22, v232, v233, v224);
LABEL_464:
                if (v289.__r_.__value_.__l.__size_ < 0x401)
                {
LABEL_467:
                  *a4 = v22;
                  goto LABEL_468;
                }

LABEL_465:
                v134 = v289.__r_.__value_.__r.__words[2];
LABEL_466:
                operator delete(v134);
                goto LABEL_467;
              }

LABEL_443:
              std::__formatter::__write_using_trailing_zeros[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v223, v221, v22, v232, v233, v224, __src, v225);
              goto LABEL_464;
            }

            if (!HIDWORD(v289.__r_.__value_.__r.__words[0]))
            {
              goto LABEL_473;
            }

            v231 = __src;
            if (__src == *v288)
            {
              goto LABEL_473;
            }

            goto LABEL_439;
          }

          goto LABEL_463;
        }

LABEL_519:
        v265 = *a4;
        v266 = v98 >> 63;
        v267 = v95;
        v268 = v96;
        goto LABEL_521;
      }

      goto LABEL_527;
    case 11:
      __p.__r_.__value_.__r.__words[0] = 0;
      __p.__r_.__value_.__l.__size_ = 0x20FFFFFFFFLL;
      if (v9 != 58)
      {
        goto LABEL_152;
      }

      v57 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&__p, a3, 63);
      if (__p.__r_.__value_.__s.__data_[1] - 13 >= 6)
      {
        if (__p.__r_.__value_.__s.__data_[1] > 0xCu || ((1 << __p.__r_.__value_.__s.__data_[1]) & 0x1801) == 0)
        {
LABEL_527:
          std::__format_spec::__throw_invalid_type_format_error[abi:ne200100]("a floating-point");
        }
      }

      else
      {
        if (LODWORD(__p.__r_.__value_.__r.__words[1]) != -1 || *&__p.__r_.__value_.__s.__data_[2] <= -1)
        {
          v59 = __p.__r_.__value_.__r.__words[1];
        }

        else
        {
          v59 = 6;
        }

        LODWORD(__p.__r_.__value_.__r.__words[1]) = v59;
      }

      *a3 = v57;
LABEL_152:
      v95 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&__p, a4);
      v96 = v94;
      v97 = v13 | (v16 << 8);
      v98 = v14 << 32;
      *&v99 = v97 | (v14 << 32);
      if ((v97 | (v14 << 32) & 0x7FFFFFFFFFFFFFFFLL) >= 0x7FF0000000000000)
      {
        goto LABEL_519;
      }

      if (v94 == -1)
      {
        v100 = 1074;
      }

      else
      {
        v100 = v94;
      }

      v289.__r_.__value_.__r.__words[0] = v100;
      if (v100 >= 1075)
      {
        LODWORD(v289.__r_.__value_.__l.__data_) = 1074;
        HIDWORD(v289.__r_.__value_.__r.__words[0]) = v100 - 1074;
        v289.__r_.__value_.__l.__size_ = 1390;
        goto LABEL_159;
      }

      v101 = v100 + 316;
      v289.__r_.__value_.__l.__size_ = v101;
      if ((v100 + 316) >= 0x401)
      {
LABEL_159:
        operator new();
      }

      v102 = v95;
      v289.__r_.__value_.__r.__words[2] = &v290;
      if ((v98 & 0x8000000000000000) != 0)
      {
        v105 = 45;
      }

      else
      {
        v103 = (v95 >> 3) & 3;
        if (v103 == 2)
        {
          v105 = 43;
        }

        else
        {
          v104 = &v290;
          if (v103 != 3)
          {
            goto LABEL_167;
          }

          v105 = 32;
        }
      }

      v290 = v105;
      v104 = v291;
LABEL_167:
      v106 = fabs(v99);
      if (BYTE1(v95) > 0xEu)
      {
        if (BYTE1(v95) - 15 < 2)
        {
          v285 = v104;
          v107 = MEMORY[0x1E12BD010](v104, &v291[v101 - 1], 2, v100, v106);
          __src = v107;
          *v288 = v107;
          if (v100)
          {
            v108 = v100 + 1;
          }

          else
          {
            v108 = 0;
          }

          v109 = &v107[-v108];
          goto LABEL_177;
        }

        if (BYTE1(v95) == 17)
        {
LABEL_184:
          std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<double,long double>(&v285, &v289, v100, v104);
          goto LABEL_308;
        }

        std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<double,long double>(&v285, &v289, v100, v104);
        v110 = __src;
        if (__src != *v288)
        {
          goto LABEL_287;
        }
      }

      else
      {
        if (BYTE1(v95) > 0xBu)
        {
          if (BYTE1(v95) == 12)
          {
            if ((v94 & 0x80000000) != 0)
            {
              v147 = -1;
            }

            else
            {
              v147 = v100;
            }

            std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<double,long double>(&v285, v101, &v290, v147, v104);
            v148 = v285;
            v110 = __src;
            while (v148 != v110)
            {
              v149 = *v148;
              if ((v149 - 97) < 6)
              {
                LOBYTE(v149) = v149 - 32;
              }

              *v148++ = v149;
            }

            v153 = 80;
            goto LABEL_307;
          }

          if (BYTE1(v95) == 13)
          {
            std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<double,long double>(&v285, v101, &v290, v100, v104);
            goto LABEL_308;
          }

          std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<double,long double>(&v285, v101, &v290, v100, v104);
          v110 = __src;
LABEL_287:
          v153 = 69;
LABEL_307:
          *v110 = v153;
          goto LABEL_308;
        }

        if (!BYTE1(v95))
        {
          if ((v94 & 0x80000000) == 0)
          {
            goto LABEL_184;
          }

          v285 = v104;
          v252 = std::to_chars(v104, &v291[v101 - 1], &v290, v106);
          v253 = v252;
          *v288 = v252;
          v254 = v252 - v104;
          if (v252 - v104 < 4)
          {
LABEL_490:
            v256 = v252;
          }

          else
          {
            if (v254 >= 6)
            {
              v254 = 6;
            }

            v255 = -v254;
            while (*(v252 + v255) != 101)
            {
              if (++v255 == -3)
              {
                goto LABEL_490;
              }
            }

            v256 = (v252 + v255);
          }

          __src = v256;
          v263 = memchr(v104 + 1, 46, v256 - (v104 + 1));
          if (v263)
          {
            v109 = v263;
          }

          else
          {
            v109 = v256;
          }

          if (v109 == v256)
          {
            v109 = v253;
          }

LABEL_177:
          v286 = v109;
          if ((v95 & 0x20) == 0)
          {
            goto LABEL_430;
          }

          goto LABEL_309;
        }

        if ((v94 & 0x80000000) != 0)
        {
          v155 = -1;
        }

        else
        {
          v155 = v100;
        }

        std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<double,long double>(&v285, v101, &v290, v155, v104);
      }

LABEL_308:
      if ((v95 & 0x20) == 0)
      {
        goto LABEL_430;
      }

LABEL_309:
      v160 = v286;
      v161 = *v288;
      if (v286 == *v288)
      {
        **v288 = 46;
        *v288 = ++v161;
        v162 = __src;
        if (__src != v160)
        {
          if (__src + 1 == v160)
          {
            v216 = *__src;
            *__src = *(__src + 1);
            *(v162 + 1) = v216;
          }

          else
          {
            memmove(&v161[-(v160 - __src)], __src, v160 - __src);
            *v162 = 46;
          }
        }

        v286 = v162;
        __src = (v162 + 1);
      }

      else
      {
        v162 = v286;
      }

      if (BYTE1(v95) - 17 <= 1)
      {
        if (v96 <= 1)
        {
          v217 = 1;
        }

        else
        {
          v217 = v96;
        }

        if ((v96 & 0x80000000) != 0)
        {
          v217 = 6;
        }

        v218 = v285 - v162;
        if (__src != v161)
        {
          v218 = -1;
        }

        v219 = v218 + v217;
        v220 = __src + ~v162;
        if (v220 < v219)
        {
          HIDWORD(v289.__r_.__value_.__r.__words[0]) += v219 - v220;
        }
      }

LABEL_430:
      if ((v95 & 0x40) == 0)
      {
        v221 = *v288;
        v222 = v95;
        v223 = v289.__r_.__value_.__r.__words[2];
        v224 = *v288 - v289.__r_.__value_.__r.__words[2];
        v225 = SHIDWORD(v289.__r_.__value_.__r.__words[0]);
        if ((*v288 - v289.__r_.__value_.__r.__words[2] + SHIDWORD(v289.__r_.__value_.__r.__words[0])) < v222 >> 32)
        {
          v226 = v102;
          v227 = v96;
          v228 = v222;
          v22 = *a4;
          if ((v226 & 7) == 4)
          {
            if (v289.__r_.__value_.__r.__words[2] != v285)
            {
              std::__format::__output_buffer<char>::push_back[abi:ne200100](*a4, *v289.__r_.__value_.__r.__words[2]);
              ++v223;
            }

            v229 = v228 & 0xB8 | 3;
            v230 = 48;
          }

          else
          {
            v229 = v222;
            v230 = BYTE4(v227);
          }

          v232 = v228 & 0xFFFFFFFFFFFFFF00 | v229;
          v233 = v227 & 0xFFFFFF00FFFFFFFFLL | (v230 << 32);
          if (!v225)
          {
            goto LABEL_476;
          }

          goto LABEL_443;
        }

        if (!HIDWORD(v289.__r_.__value_.__r.__words[0]) || (v231 = __src, __src == *v288))
        {
LABEL_473:
          v22 = *a4;
          std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a4, v289.__r_.__value_.__r.__words[2], *v288 - v289.__r_.__value_.__r.__words[2]);
          std::__format::__output_buffer<char>::__fill[abi:ne200100](v22, v225, 48);
          goto LABEL_464;
        }

LABEL_439:
        v22 = *a4;
        std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a4, v289.__r_.__value_.__r.__words[2], __src - v289.__r_.__value_.__r.__words[2]);
        std::__format::__output_buffer<char>::__fill[abi:ne200100](v22, v225, 48);
        std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v22, v231, v221 - v231);
        goto LABEL_464;
      }

LABEL_463:
      v22 = *a4;
      std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](&v283, a4);
      std::__formatter::__format_locale_specific_form[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,double,char>(v22, &v289, &v285, &v283, v95, v96);
      std::locale::~locale(&v283);
      goto LABEL_464;
    case 12:
      LODWORD(v289.__r_.__value_.__l.__data_) = 1;
      *(v289.__r_.__value_.__r.__words + 4) = 0xFFFFFFFF00000000;
      v289.__r_.__value_.__s.__data_[12] = 32;
      *(&v289.__r_.__value_.__r.__words[1] + 5) = 0;
      v289.__r_.__value_.__s.__data_[15] = 0;
      if (v9 == 58)
      {
        *a3 = std::__formatter_string<char>::parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v289, a3);
      }

      v66 = strlen((v13 | (v16 << 8) | (v14 << 32)));
      v29 = std::__formatter_string<char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v289, (v13 | (v16 << 8) | (v14 << 32)), v66, a4);
      goto LABEL_95;
    case 13:
      LODWORD(v289.__r_.__value_.__l.__data_) = 1;
      *(v289.__r_.__value_.__r.__words + 4) = 0xFFFFFFFF00000000;
      v289.__r_.__value_.__s.__data_[12] = 32;
      *(&v289.__r_.__value_.__r.__words[1] + 5) = 0;
      v289.__r_.__value_.__s.__data_[15] = 0;
      if (v9 == 58)
      {
        *a3 = std::__formatter_string<char>::parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v289, a3);
      }

      v29 = std::__formatter_string<char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v289, (v13 | (v16 << 8) | (v14 << 32)), v15, a4);
      goto LABEL_95;
    case 14:
      v285 = 0;
      v286 = 0x20FFFFFFFFLL;
      if (v9 == 58)
      {
        v23 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v285, a3, 36);
        if (BYTE1(v285) - 8 >= 2 && BYTE1(v285))
        {
          std::__format_spec::__throw_invalid_type_format_error[abi:ne200100]("a pointer");
        }

        *a3 = v23;
      }

      v25 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v285, a4);
      v26 = v13 | (v16 << 8) | (v14 << 32);
      v27 = v25 & 0xFF00;
      v28 = v25 & 0xFFFFFFFFFFFF00DFLL;
      if (v27 == 2304)
      {
        v29 = std::__formatter::__format_integer[abi:ne200100]<unsigned long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v26, a4, v28 | 0x720, v24, &v289, &v289.__r_.__value_.__r.__words[2] + 3, "0X", 0x10u);
      }

      else
      {
        v29 = std::__formatter::__format_integer[abi:ne200100]<unsigned long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v26, a4, v28 | 0x620, v24, &v289, &v289.__r_.__value_.__r.__words[2] + 3, "0x", 0x10u);
      }

LABEL_95:
      *a4 = v29;
      goto LABEL_468;
    case 15:
      (v15)(a3, a4, v13 | (v16 << 8) | (v14 << 32));
      goto LABEL_468;
    default:
      goto LABEL_524;
  }
}

void sub_1DDCA7540(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::locale a17, std::locale a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, std::locale a34, unint64_t a35, void *__p)
{
  if (a35 >= 0x401)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__format::__output_buffer<char>::push_back[abi:ne200100](uint64_t result, char a2)
{
  v2 = *(result + 32);
  if (!v2 || (v4 = *v2, v3 = v2[1], v2[1] = v3 + 1, v3 < v4))
  {
    v5 = *result;
    v6 = *(result + 16);
    *(result + 16) = v6 + 1;
    *(v5 + v6) = a2;
    if (*(result + 16) == *(result + 8))
    {
      return (*(result + 24))(result, 2);
    }
  }

  return result;
}

unsigned __int8 *std::__format::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(unsigned __int8 *result, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *result;
  if (v4 == 125 || v4 == 58)
  {
    v6 = *(a3 + 16);
    if (v6)
    {
      if (v6 == 1)
      {
        std::__throw_format_error[abi:ne200100]("Using automatic argument numbering in manual argument numbering mode");
      }
    }

    else
    {
      *(a3 + 16) = 2;
    }

    ++*(a3 + 24);
  }

  else if (v4 == 48)
  {
    v5 = *(a3 + 16);
    if (v5)
    {
      if (v5 == 2)
      {
LABEL_13:
        std::__throw_format_error[abi:ne200100]("Using manual argument numbering in automatic argument numbering mode");
      }
    }

    else
    {
      *(a3 + 16) = 1;
    }

    ++result;
  }

  else
  {
    if ((v4 - 58) <= 0xFFFFFFF5)
    {
      std::__throw_format_error[abi:ne200100]("The argument index starts with an invalid character");
    }

    result = std::__format::__parse_number[abi:ne200100]<char const*>(result, a2);
    v7 = *(a3 + 16);
    if (v7)
    {
      if (v7 == 2)
      {
        goto LABEL_13;
      }
    }

    else
    {
      *(a3 + 16) = 1;
    }
  }

  return result;
}

unsigned __int8 *std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(uint64_t a1, unsigned __int8 **a2, char a3)
{
  v4 = *a2;
  v3 = a2[1];
  if (*a2 == v3)
  {
    return v4;
  }

  v5 = *v4;
  if (v5 == 125)
  {
    return v4;
  }

  v25[0] = *a2;
  v25[1] = v3;
  if ((std::__unicode::__code_point_view<char>::__consume[abi:ne200100](v25) & 0x80000000) != 0)
  {
    std::__throw_format_error[abi:ne200100]("The format specifier contains malformed Unicode characters");
  }

  v9 = v25[0];
  if (v25[0] >= v3)
  {
    goto LABEL_9;
  }

  v10 = *v25[0];
  switch(v10)
  {
    case '<':
      v11 = 1;
LABEL_18:
      *a1 = *a1 & 0xF8 | v11;
      v13 = v9 - v4;
      if (v9 - v4 == 1)
      {
        if (*v4 == 123)
        {
          std::__throw_format_error[abi:ne200100]("The fill option contains an invalid value");
        }
      }

      else if (v9 == v4)
      {
LABEL_23:
        v4 += v13;
        goto LABEL_24;
      }

      memmove((a1 + 12), v4, v13);
      goto LABEL_23;
    case '>':
      v11 = 3;
      goto LABEL_18;
    case '^':
      v11 = 2;
      goto LABEL_18;
  }

LABEL_9:
  switch(v5)
  {
    case '<':
      v12 = 1;
      break;
    case '>':
      v12 = 3;
      break;
    case '^':
      v12 = 2;
      break;
    default:
      goto LABEL_25;
  }

  *a1 = *a1 & 0xF8 | v12;
LABEL_24:
  if (++v4 == v3)
  {
    return v4;
  }

LABEL_25:
  if (a3)
  {
    v14 = *v4;
    switch(v14)
    {
      case ' ':
        v15 = *a1 | 0x18;
        break;
      case '+':
        v15 = *a1 & 0xE7 | 0x10;
        break;
      case '-':
        v15 = *a1 & 0xE7 | 8;
        break;
      default:
        goto LABEL_33;
    }

    *a1 = v15;
    if (++v4 == v3)
    {
      return v4;
    }
  }

LABEL_33:
  if ((a3 & 2) != 0 && *v4 == 35)
  {
    *a1 |= 0x20u;
    if (++v4 == v3)
    {
      return v4;
    }
  }

  if ((a3 & 4) != 0)
  {
    v16 = *v4;
    if (v16 != 48)
    {
      goto LABEL_42;
    }

    if ((*a1 & 7) == 0)
    {
      *a1 |= 4u;
    }

    if (++v4 == v3)
    {
      return v4;
    }
  }

  v16 = *v4;
LABEL_42:
  if (v16 == 123)
  {
    v4 = std::__format_spec::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(v4 + 1, v3, a2);
    *(a1 + 2) |= 0x4000u;
  }

  else
  {
    if (v16 == 48)
    {
      std::__throw_format_error[abi:ne200100]("The width option should not have a leading zero");
    }

    if ((v16 - 58) < 0xFFFFFFF6)
    {
      goto LABEL_48;
    }

    v4 = std::__format::__parse_number[abi:ne200100]<char const*>(v4, v3);
  }

  *(a1 + 4) = v17;
  if (v3 == v4)
  {
    return v4;
  }

LABEL_48:
  if ((a3 & 8) == 0 || *v4 != 46)
  {
    goto LABEL_56;
  }

  v18 = v4 + 1;
  if (v4 + 1 == v3)
  {
    std::__throw_format_error[abi:ne200100]("End of input while parsing format specifier precision");
  }

  v19 = *v18;
  if (v19 == 123)
  {
    v4 = std::__format_spec::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(v4 + 2, v3, a2);
    *(a1 + 2) |= 0x8000u;
    *(a1 + 8) = v20;
  }

  else
  {
    if ((v19 - 58) <= 0xFFFFFFF5)
    {
      std::__throw_format_error[abi:ne200100]("The precision option does not contain a value or an argument index");
    }

    v4 = std::__format::__parse_number[abi:ne200100]<char const*>(v18, v3);
    *(a1 + 8) = v21;
    *(a1 + 2) &= ~0x8000u;
  }

  if (v3 != v4)
  {
LABEL_56:
    if ((a3 & 0x10) != 0)
    {
      v22 = *v4;
      if (v22 != 76)
      {
        goto LABEL_60;
      }

      *a1 |= 0x40u;
      if (++v4 == v3)
      {
        return v4;
      }
    }

    v22 = *v4;
LABEL_60:
    if (v22 <= 97)
    {
      if (v22 <= 69)
      {
        if (v22 > 65)
        {
          if (v22 == 66)
          {
            v23 = 3;
            goto LABEL_103;
          }

          if (v22 == 69)
          {
            v23 = 14;
            goto LABEL_103;
          }
        }

        else
        {
          if (v22 == 63)
          {
            v23 = 19;
            goto LABEL_103;
          }

          if (v22 == 65)
          {
            v23 = 12;
            goto LABEL_103;
          }
        }
      }

      else if (v22 <= 79)
      {
        if (v22 == 70)
        {
          v23 = 16;
          goto LABEL_103;
        }

        if (v22 == 71)
        {
          v23 = 18;
          goto LABEL_103;
        }
      }

      else
      {
        switch(v22)
        {
          case 'P':
            v23 = 9;
            goto LABEL_103;
          case 'X':
            v23 = 7;
            goto LABEL_103;
          case 'a':
            v23 = 11;
LABEL_103:
            *(a1 + 1) = v23;
            ++v4;
            break;
        }
      }
    }

    else
    {
      if (v22 <= 102)
      {
        if (v22 <= 99)
        {
          if (v22 == 98)
          {
            v23 = 2;
          }

          else
          {
            v23 = 10;
          }
        }

        else if (v22 == 100)
        {
          v23 = 5;
        }

        else if (v22 == 101)
        {
          v23 = 13;
        }

        else
        {
          v23 = 15;
        }

        goto LABEL_103;
      }

      if (v22 <= 111)
      {
        if (v22 == 103)
        {
          v23 = 17;
          goto LABEL_103;
        }

        if (v22 == 111)
        {
          v23 = 4;
          goto LABEL_103;
        }
      }

      else
      {
        switch(v22)
        {
          case 'p':
            v23 = 8;
            goto LABEL_103;
          case 's':
            v23 = 1;
            goto LABEL_103;
          case 'x':
            v23 = 6;
            goto LABEL_103;
        }
      }
    }

    if (v4 != v3 && *v4 != 125)
    {
      std::__throw_format_error[abi:ne200100]("The format specifier should consume the input or end with a '}'");
    }
  }

  return v4;
}

uint64_t std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(uint64_t result)
{
  v1 = *(result + 1);
  if ((v1 - 2) >= 6 && v1 != 0)
  {
    if (v1 != 10)
    {
      std::__format_spec::__throw_invalid_type_format_error[abi:ne200100]("an integer");
    }

    v3 = result;
    result = std::__format_spec::__parser<char>::__validate[abi:ne200100](result, "an integer");
    if ((*v3 & 7) == 0)
    {
      *v3 |= 1u;
    }
  }

  return result;
}

void std::__format_spec::__throw_invalid_type_format_error[abi:ne200100](const char *a1)
{
  std::string::basic_string[abi:ne200100]<0>(&v8, "The type option contains an invalid value for ");
  v2 = strlen(a1);
  v3 = std::string::append(&v8, a1, v2);
  v4 = *&v3->__r_.__value_.__l.__data_;
  v9.__r_.__value_.__r.__words[2] = v3->__r_.__value_.__r.__words[2];
  *&v9.__r_.__value_.__l.__data_ = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  v5 = std::string::append(&v9, " formatting argument", 0x14uLL);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v11 = v5->__r_.__value_.__r.__words[2];
  v10 = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  if (v11 >= 0)
  {
    v7 = &v10;
  }

  else
  {
    v7 = v10;
  }

  std::__throw_format_error[abi:ne200100](v7);
}

void sub_1DDCA7D44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 - 25) < 0)
  {
    operator delete(*(v21 - 48));
  }

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

unint64_t std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char *a1, void *a2)
{
  *&v23[23] = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v6 = a1[1];
  if ((*(a1 + 1) & 0x4000) == 0)
  {
    v7 = *(a1 + 1);
    if ((*(a1 + 1) & 0x8000) == 0)
    {
      return (v6 << 8) | (v7 << 32) | v5 & 0x7F;
    }

    goto LABEL_10;
  }

  v8 = *(a1 + 1);
  v9 = a2[1];
  if (v9 <= v8)
  {
    LOBYTE(v11) = 0;
  }

  else if (v9 > 0xC)
  {
    v12 = a2[2] + 32 * v8;
    v2 = *v12;
    v8 = *(v12 + 8);
    LOBYTE(v11) = *(v12 + 16);
    *v19 = *(v12 + 17);
    *&v19[7] = *(v12 + 24);
  }

  else
  {
    v10 = a2[2];
    v11 = (a2[3] >> (5 * v8)) & 0x1FLL;
    v2 = *(v10 + 16 * v8);
    v8 = *(v10 + 16 * v8 + 8);
  }

  v20 = v2;
  v21 = v8;
  v22 = v11;
  *v23 = *v19;
  *&v23[7] = *&v19[7];
  v7 = std::__visit_format_arg[abi:ne200100]<unsigned int std::__format_spec::__substitute_arg_id[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(std::basic_format_arg<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>)::{lambda(std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>)#1},std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v20);
  if ((*(a1 + 1) & 0x8000) != 0)
  {
LABEL_10:
    v13 = *(a1 + 2);
    v14 = a2[1];
    if (v14 <= v13)
    {
      LOBYTE(v16) = 0;
    }

    else if (v14 > 0xC)
    {
      v17 = a2[2] + 32 * v13;
      v2 = *v17;
      v13 = *(v17 + 8);
      LOBYTE(v16) = *(v17 + 16);
      *v19 = *(v17 + 17);
      *&v19[7] = *(v17 + 24);
    }

    else
    {
      v15 = a2[2];
      v16 = (a2[3] >> (5 * v13)) & 0x1FLL;
      v2 = *(v15 + 16 * v13);
      v13 = *(v15 + 16 * v13 + 8);
    }

    v20 = v2;
    v21 = v13;
    v22 = v16;
    *v23 = *v19;
    *&v23[7] = *&v19[7];
    std::__visit_format_arg[abi:ne200100]<unsigned int std::__format_spec::__substitute_arg_id[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(std::basic_format_arg<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>)::{lambda(std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>)#1},std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v20);
  }

  return (v6 << 8) | (v7 << 32) | v5 & 0x7F;
}

unsigned __int8 *std::__formatter_string<char>::parse[abi:ne200100]<std::basic_format_parse_context<char>>(uint64_t a1, unsigned __int8 **a2)
{
  result = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(a1, a2, 40);
  v4 = *(a1 + 1);
  if (v4 >= 2 && v4 != 19)
  {
    std::__throw_format_error[abi:ne200100]("The type option contains an invalid value for a string formatting argument");
  }

  return result;
}

void *std::__formatter_string<char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, unsigned __int8 *a2, size_t a3, void *a4)
{
  v6 = *(a1 + 1);
  v7 = *a4;
  v9 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a4);
  v10 = v8;
  if (v6 == 19)
  {
    memset(&v15, 0, sizeof(v15));
    std::string::push_back(&v15, 34);
    std::__formatter::__escape[abi:ne200100]<char>(&v15, a2, a3, 1);
    std::string::push_back(&v15, 34);
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &v15;
    }

    else
    {
      v11 = v15.__r_.__value_.__r.__words[0];
    }

    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v15.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v15.__r_.__value_.__l.__size_;
    }

    v13 = std::__formatter::__write_string[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v11, size, v7, v9, v10);
    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }

    return v13;
  }

  else
  {

    return std::__formatter::__write_string[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a2, a3, v7, v9, v8);
  }
}

void sub_1DDCA8090(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__formatter::__format_integer[abi:ne200100]<unsigned long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, void **a2, unint64_t a3, unint64_t a4, char *a5, uint64_t a6, _BYTE *a7, unsigned int a8)
{
  v8 = a5;
  v12 = (a3 >> 3) & 3;
  if (v12 == 2)
  {
    v14 = 43;
    goto LABEL_5;
  }

  v13 = a5;
  if (v12 == 3)
  {
    v14 = 32;
LABEL_5:
    *a5 = v14;
    v13 = a5 + 1;
  }

  if ((a3 & 0x20) != 0)
  {
    if (a7)
    {
      v15 = *a7;
      if (*a7)
      {
        v16 = a7 + 1;
        do
        {
          *v13++ = v15;
          v17 = *v16++;
          v15 = v17;
        }

        while (v17);
      }
    }
  }

  v18 = std::__to_chars_integral[abi:ne200100]<unsigned long long>(v13, a6, a1, a8);
  if ((a3 & 0x40) == 0)
  {
    goto LABEL_38;
  }

  std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](&v41, a2);
  v19 = std::locale::use_facet(&v41, MEMORY[0x1E69E5368]);
  v20 = v18 - v13;
  std::locale::~locale(&v41);
  (v19->__vftable[1].__on_zero_shared)(&v41, v19);
  if ((v43 & 0x8000000000000000) != 0)
  {
    locale = v41.__locale_;
    v22 = v42;
    if (v42 && v20 > *v41.__locale_)
    {
      v23 = v41.__locale_;
      goto LABEL_19;
    }

    operator delete(v41.__locale_);
LABEL_38:
    v35 = HIDWORD(a3);
    if ((a3 & 7) == 4)
    {
      std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a2, v8, v13 - v8);
      v36 = a3 & 0xF8 | 3;
      if (SHIDWORD(a3) >= v13 - v8)
      {
        LODWORD(v37) = v13 - v8;
      }

      else
      {
        LODWORD(v37) = HIDWORD(a3);
      }

      v35 = (HIDWORD(a3) - v37);
      LOBYTE(v37) = 48;
      v8 = v13;
    }

    else
    {
      v37 = HIDWORD(a4);
      v36 = a3;
    }

    v34 = *a2;
    v38 = v35 << 32;
    if ((a3 & 0xFF00) == 0x700)
    {
      std::__formatter::__write_transformed[abi:ne200100]<char *,char,char,char (*)(char),std::back_insert_iterator<std::__format::__output_buffer<char>>>(v8, v18, *a2, v38 | a3 & 0xFFFF0000 | v36 | 0x700, a4 & 0xFFFFFF00FFFFFFFFLL | (v37 << 32));
    }

    else
    {
      std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v8, v18 - v8, *a2, v38 | a3 & 0xFFFFFF00 | v36, a4 & 0xFFFFFF00FFFFFFFFLL | (v37 << 32), v18 - v8);
    }

    return v34;
  }

  if (!v43 || v20 <= SLOBYTE(v41.__locale_))
  {
    goto LABEL_38;
  }

  locale = &v41;
  v23 = v41.__locale_;
  v22 = v42;
LABEL_19:
  v24 = *a2;
  memset(&__p, 0, sizeof(__p));
  v25 = v23 + v22;
  if (v43 >= 0)
  {
    v25 = &v41 + v43;
  }

  v26 = *locale;
  v27 = v20 - *locale;
  if (v27 >= 1)
  {
    v28 = v25 - 1;
    do
    {
      std::string::push_back(&__p, v26);
      if (locale == v28)
      {
        v26 = *locale;
      }

      else
      {
        v29 = locale + 1;
        v30 = locale + 1;
        do
        {
          v31 = *v30++;
          v26 = v31;
          if (v31)
          {
            v32 = 1;
          }

          else
          {
            v32 = v29 == v28;
          }

          v29 = v30;
        }

        while (!v32);
        locale = v30 - 1;
      }

      v27 -= v26;
    }

    while (v27 > 0);
  }

  std::string::push_back(&__p, v26 + v27);
  v33 = (v19->__vftable[1].~facet_0)(v19);
  v34 = std::__formatter::__write_using_decimal_separators[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char *,char>(v24, v8, v13, v18, &__p, v33, a3, a4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v43 < 0)
  {
    operator delete(v41.__locale_);
  }

  return v34;
}

void sub_1DDCA83D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15.__locale_);
  }

  _Unwind_Resume(exception_object);
}

char *std::__to_chars_integral[abi:ne200100]<unsigned long long>(char *a1, uint64_t a2, unint64_t a3, unsigned int a4)
{
  v4 = a3;
  HIDWORD(v6) = a4 - 2;
  LODWORD(v6) = a4 - 2;
  v5 = v6 >> 1;
  if (v5 != 4)
  {
    if (!v5)
    {
      return std::__itoa::__integral<2u>::__to_chars[abi:ne200100]<unsigned long long>(a1, a2, a3);
    }

    if (v5 == 3)
    {
      return std::__itoa::__integral<8u>::__to_chars[abi:ne200100]<unsigned long long>(a1, a2, a3);
    }

    if (v5 != 7)
    {
      v16 = a1;
      v10 = a2 - a1;
      v11 = a2;
      v12 = std::__to_chars_integral_width[abi:ne200100]<unsigned long long>(a3, a4);
      a2 = v11;
      if (v10 >= v12)
      {
        a2 = &v16[v12];
        v13 = (a2 - 1);
        do
        {
          *v13-- = a0123456789abcd[v4 % a4];
          v14 = v4 >= a4;
          v4 /= a4;
        }

        while (v14);
      }

      return a2;
    }

    return std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned long long>(a1, a2, a3);
  }

  if (a2 - a1 > 19 || (v7 = (1233 * (64 - __clz(a3 | 1))) >> 12, a2 - a1 >= v7 - (std::__itoa::__pow10_64[v7] > a3) + 1))
  {
    if (!HIDWORD(a3))
    {
      return std::__itoa::__base_10_u32[abi:ne200100](a1, a3);
    }

    if (a3 >= 0x2540BE400)
    {
      a1 = std::__itoa::__base_10_u32[abi:ne200100](a1, a3 / 0x2540BE400);
      v4 %= 0x2540BE400uLL;
    }

    return std::__itoa::__append10[abi:ne200100]<unsigned long long>(a1, v4);
  }

  return a2;
}

std::locale *std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](std::locale *this, uint64_t a2)
{
  if ((*(a2 + 40) & 1) == 0)
  {
    MEMORY[0x1E12BCF50](&v6);
    v4 = (a2 + 32);
    if (*(a2 + 40) == 1)
    {
      std::locale::operator=(v4, &v6);
    }

    else
    {
      std::locale::locale(v4, &v6);
      *(a2 + 40) = 1;
    }

    std::locale::~locale(&v6);
  }

  return std::locale::locale(this, (a2 + 32));
}

void *std::__formatter::__write_using_decimal_separators[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char *,char>(void *a1, char *__src, unsigned __int8 *a3, int a4, uint64_t *a5, char a6, uint64_t a7, unint64_t a8)
{
  v8 = a7;
  v11 = a3;
  v14 = HIDWORD(a7);
  v15 = HIDWORD(a8);
  v16 = a3 - __src;
  LODWORD(v17) = *(a5 + 23);
  if ((v17 & 0x80u) != 0)
  {
    v17 = a5[1];
  }

  v18 = a4 - __src - 1 + v17;
  if ((a7 & 7) != 4)
  {
    if (SHIDWORD(a7) <= v18)
    {
      v19 = 0;
LABEL_16:
      std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(a1, __src, v16);
      goto LABEL_17;
    }

    v19 = (a7 >> 32) - v18;
    if ((a7 & 7u) > 1)
    {
      if ((a7 & 7) != 3)
      {
        v20 = v19 >> 1;
        v19 -= v19 >> 1;
        goto LABEL_15;
      }
    }

    else if ((a7 & 7) != 0)
    {
      v20 = 0;
LABEL_15:
      std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a1, v20, SHIDWORD(a8));
      goto LABEL_16;
    }

    v20 = (a7 >> 32) - v18;
    v19 = 0;
    goto LABEL_15;
  }

  std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(a1, __src, a3 - __src);
  if (v14 > v18)
  {
    std::__format::__output_buffer<char>::__fill[abi:ne200100](a1, v14 - v18, 48);
  }

  v19 = 0;
LABEL_17:
  v21 = *(a5 + 23);
  v22 = v21;
  v23 = a5 + v21;
  if (v22 >= 0)
  {
    v24 = v23;
  }

  else
  {
    v24 = (*a5 + a5[1]);
  }

  if (v22 >= 0)
  {
    v25 = a5;
  }

  else
  {
    v25 = *a5;
  }

  v26 = v25 + 1;
  v27 = v8 & 0xFF00;
  for (i = v24; ; v24 = i)
  {
    v30 = *--i;
    v29 = v30;
    if (v27 == 1792)
    {
      v31 = &v11[v29];
      std::__format::__output_buffer<char>::__transform[abi:ne200100]<char *,char (*)(char),char>(a1, v11, &v11[v29]);
      v11 = v31;
    }

    else
    {
      std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(a1, v11, v29);
      v11 += *i;
    }

    if (v24 == v26)
    {
      break;
    }

    std::__format::__output_buffer<char>::push_back[abi:ne200100](a1, a6);
  }

  return std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a1, v19, v15);
}

void *std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(void *result, char *__src, size_t a3)
{
  v4 = result;
  v5 = result[4];
  if (v5)
  {
    v7 = *v5;
    v6 = v5[1];
    if (*v5 - v6 >= a3)
    {
      v8 = a3;
    }

    else
    {
      v8 = *v5 - v6;
    }

    v5[1] = v6 + a3;
    if (v7 <= v6 || v8 == 0)
    {
      return result;
    }
  }

  else
  {
    v8 = a3;
  }

  v10 = result[2];
  do
  {
    v11 = *(v4 + 8) - v10;
    if (v11 < v8 + 1)
    {
      result = (*(v4 + 24))(v4, v8 + 2);
      v10 = *(v4 + 16);
      v11 = *(v4 + 8) - v10;
    }

    if (v11 >= v8)
    {
      v12 = v8;
    }

    else
    {
      v12 = v11;
    }

    if (v12)
    {
      result = memmove((*v4 + v10), __src, v12);
      v10 = *(v4 + 16);
    }

    v10 += v12;
    *(v4 + 16) = v10;
    __src += v12;
    v13 = v8 > v11;
    v8 -= v12;
  }

  while (v13);
  return result;
}

void *std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(char *__src, size_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v9 = (a4 >> 32) - a6;
  if (a4 >> 32 > a6)
  {
    v10 = HIDWORD(a5);
    if ((a4 & 7u) > 1)
    {
      if ((a4 & 7) != 3)
      {
        v11 = v9 >> 1;
        v9 -= v9 >> 1;
        goto LABEL_9;
      }
    }

    else if ((a4 & 7) != 0)
    {
      v11 = 0;
LABEL_9:
      v12 = std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, v11, SHIDWORD(a5));
      std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v12, __src, a2);
      std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, v9, v10);
      return a3;
    }

    v11 = (a4 >> 32) - a6;
    v9 = 0;
    goto LABEL_9;
  }

  std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(a3, __src, a2);
  return a3;
}

void *std::__formatter::__write_transformed[abi:ne200100]<char *,char,char,char (*)(char),std::back_insert_iterator<std::__format::__output_buffer<char>>>(unsigned __int8 *a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  v8 = (a4 >> 32) - (a2 - a1);
  if (a4 >> 32 > a2 - a1)
  {
    v9 = HIDWORD(a5);
    if ((a4 & 7u) > 1)
    {
      if ((a4 & 7) != 3)
      {
        v10 = v8 >> 1;
        v8 -= v8 >> 1;
        goto LABEL_9;
      }
    }

    else if ((a4 & 7) != 0)
    {
      v10 = 0;
LABEL_9:
      v11 = std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, v10, SHIDWORD(a5));
      std::__format::__output_buffer<char>::__transform[abi:ne200100]<char *,char (*)(char),char>(v11, a1, a2);
      std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, v8, v9);
      return a3;
    }

    v10 = (a4 >> 32) - (a2 - a1);
    v8 = 0;
    goto LABEL_9;
  }

  std::__format::__output_buffer<char>::__transform[abi:ne200100]<char *,char (*)(char),char>(a3, a1, a2);
  return a3;
}

uint64_t std::__format::__output_buffer<char>::__transform[abi:ne200100]<char *,char (*)(char),char>(uint64_t result, unsigned __int8 *a2, uint64_t a3)
{
  v3 = a2;
  v4 = result;
  v5 = a3 - a2;
  v6 = *(result + 32);
  if (v6)
  {
    v8 = *v6;
    v7 = v6[1];
    if (*v6 - v7 >= v5)
    {
      v9 = a3 - a2;
    }

    else
    {
      v9 = *v6 - v7;
    }

    v6[1] = v7 + v5;
    if (v8 <= v7 || v9 == 0)
    {
      return result;
    }
  }

  else
  {
    v9 = a3 - a2;
  }

  v11 = *(result + 16);
  do
  {
    v12 = *(v4 + 8) - v11;
    if (v12 < v9 + 1)
    {
      result = (*(v4 + 24))(v4, v9 + 2);
      v11 = *(v4 + 16);
      v12 = *(v4 + 8) - v11;
    }

    if (v12 >= v9)
    {
      v13 = v9;
    }

    else
    {
      v13 = v12;
    }

    if (v13)
    {
      v14 = (*v4 + v11);
      v15 = v13;
      v16 = v3;
      do
      {
        v18 = *v16++;
        v17 = v18;
        v19 = v18 - 32;
        if ((v18 - 97) < 6)
        {
          v17 = v19;
        }

        *v14++ = v17;
        --v15;
      }

      while (v15);
      v11 = *(v4 + 16);
    }

    v3 += v13;
    v11 += v13;
    *(v4 + 16) = v11;
    v20 = v9 > v12;
    v9 -= v13;
  }

  while (v20);
  return result;
}

void *std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(void *a1, size_t a2, int a3)
{
  v3 = a2;
  __src = a3;
  v5 = __clz(~a3);
  v6 = v5 - 24;
  if (v5 == 24)
  {
    std::__format::__output_buffer<char>::__fill[abi:ne200100](a1, a2, a3);
  }

  else if (a2)
  {
    do
    {
      std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(a1, &__src, v6);
      --v3;
    }

    while (v3);
  }

  return a1;
}

void *std::__format::__output_buffer<char>::__fill[abi:ne200100](void *result, size_t a2, int __c)
{
  v4 = a2;
  v5 = result;
  v6 = result[4];
  if (!v6)
  {
    goto LABEL_8;
  }

  v8 = *v6;
  v7 = v6[1];
  if (*v6 - v7 < a2)
  {
    v4 = *v6 - v7;
  }

  v6[1] = v7 + a2;
  if (v8 > v7 && v4 != 0)
  {
LABEL_8:
    v10 = result[2];
    do
    {
      v11 = *(v5 + 8) - v10;
      if (v11 < v4 + 1)
      {
        result = (*(v5 + 24))(v5, v4 + 2);
        v10 = *(v5 + 16);
        v11 = *(v5 + 8) - v10;
      }

      if (v11 >= v4)
      {
        v12 = v4;
      }

      else
      {
        v12 = v11;
      }

      if (v12)
      {
        result = memset((*v5 + v10), __c, v12);
        v10 = *(v5 + 16);
      }

      v10 += v12;
      *(v5 + 16) = v10;
      v13 = v4 > v11;
      v4 -= v12;
    }

    while (v13);
  }

  return result;
}

char *std::__itoa::__base_10_u32[abi:ne200100](_WORD *a1, unsigned int a2)
{
  if (a2 >= 0xF4240)
  {
    if (a2 >= 0x5F5E100)
    {
      v7 = a2 / 0x5F5E100;
      if (a2 > 0x3B9AC9FF)
      {
        *a1 = std::__itoa::__digits_base_10[v7];
        a1[1] = std::__itoa::__digits_base_10[a2 % 0x5F5E100 / 0xF4240uLL];
        a1[2] = std::__itoa::__digits_base_10[a2 % 0x5F5E100 % 0xF4240 / 0x2710uLL];
        v12 = a2 % 0x5F5E100 % 0xF4240 % 0x2710;
        a1[3] = std::__itoa::__digits_base_10[v12 / 0x64u];
        a1[4] = std::__itoa::__digits_base_10[v12 % 0x64u];
        v2 = 10;
      }

      else
      {
        *a1 = v7 | 0x30;
        *(a1 + 1) = std::__itoa::__digits_base_10[a2 % 0x5F5E100 / 0xF4240uLL];
        *(a1 + 3) = std::__itoa::__digits_base_10[a2 % 0x5F5E100 % 0xF4240 / 0x2710uLL];
        v8 = a2 % 0x5F5E100 % 0xF4240 % 0x2710;
        *(a1 + 5) = std::__itoa::__digits_base_10[v8 / 0x64u];
        *(a1 + 7) = std::__itoa::__digits_base_10[v8 % 0x64u];
        v2 = 9;
      }
    }

    else
    {
      v3 = a2 / 0xF4240;
      if (a2 > 0x98967F)
      {
        *a1 = std::__itoa::__digits_base_10[v3];
        a1[1] = std::__itoa::__digits_base_10[a2 % 0xF4240 / 0x2710uLL];
        v10 = a2 % 0xF4240 % 0x2710;
        a1[2] = std::__itoa::__digits_base_10[v10 / 0x64u];
        a1[3] = std::__itoa::__digits_base_10[v10 % 0x64u];
        v2 = 8;
      }

      else
      {
        *a1 = v3 + 48;
        *(a1 + 1) = std::__itoa::__digits_base_10[a2 % 0xF4240 / 0x2710uLL];
        v4 = a2 % 0xF4240 % 0x2710;
        *(a1 + 3) = std::__itoa::__digits_base_10[v4 / 0x64u];
        *(a1 + 5) = std::__itoa::__digits_base_10[v4 % 0x64u];
        v2 = 7;
      }
    }
  }

  else if (a2 >> 4 > 0x270)
  {
    v5 = a2 / 0x2710;
    if (a2 >> 5 > 0xC34)
    {
      *a1 = std::__itoa::__digits_base_10[v5];
      v11 = a2 % 0x2710;
      a1[1] = std::__itoa::__digits_base_10[v11 / 0x64u];
      a1[2] = std::__itoa::__digits_base_10[v11 % 0x64u];
      v2 = 6;
    }

    else
    {
      *a1 = v5 | 0x30;
      v6 = a2 % 0x2710;
      *(a1 + 1) = std::__itoa::__digits_base_10[v6 / 0x64u];
      *(a1 + 3) = std::__itoa::__digits_base_10[v6 % 0x64u];
      v2 = 5;
    }
  }

  else if (a2 > 0x63)
  {
    v9 = a2 / 0x64u;
    if (a2 > 0x3E7)
    {
      *a1 = std::__itoa::__digits_base_10[v9];
      a1[1] = std::__itoa::__digits_base_10[a2 % 0x64u];
      v2 = 4;
    }

    else
    {
      *a1 = v9 | 0x30;
      *(a1 + 1) = std::__itoa::__digits_base_10[a2 % 0x64u];
      v2 = 3;
    }
  }

  else if (a2 > 9)
  {
    *a1 = std::__itoa::__digits_base_10[a2];
    v2 = 2;
  }

  else
  {
    *a1 = a2 | 0x30;
    v2 = 1;
  }

  return a1 + v2;
}

_WORD *std::__itoa::__append10[abi:ne200100]<unsigned long long>(_WORD *a1, unint64_t a2)
{
  *a1 = *(std::__itoa::__digits_base_10 + ((a2 / 0x2FAF080) & 0xFFFFFFFE));
  v2 = a2 % 0x5F5E100;
  a1[1] = std::__itoa::__digits_base_10[v2 / 0xF4240uLL];
  v2 %= 0xF4240u;
  a1[2] = std::__itoa::__digits_base_10[v2 / 0x2710uLL];
  LOWORD(v2) = v2 % 0x2710;
  a1[3] = std::__itoa::__digits_base_10[v2 / 0x64u];
  a1[4] = std::__itoa::__digits_base_10[v2 % 0x64u];
  return a1 + 5;
}

uint64_t std::__itoa::__integral<2u>::__to_chars[abi:ne200100]<unsigned long long>(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = 64 - __clz(a3 | 1);
  if (a2 - a1 < v3)
  {
    return a2;
  }

  v4 = a1 + v3;
  if (a3 < 0x11)
  {
    v6 = a3;
    v5 = v4;
  }

  else
  {
    v5 = a1 + v3;
    do
    {
      v6 = a3 >> 4;
      *(v5 - 4) = std::__itoa::__base_2_lut[a3 & 0xF];
      v5 -= 4;
      v7 = a3 > 0x10F;
      a3 >>= 4;
    }

    while (v7);
  }

  v8 = (v5 - 1);
  do
  {
    *v8-- = a01[v6 & 1];
    v7 = v6 > 1;
    v6 >>= 1;
  }

  while (v7);
  return v4;
}

uint64_t std::__itoa::__integral<8u>::__to_chars[abi:ne200100]<unsigned long long>(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = (86 * (66 - __clz(a3 | 1))) >> 8;
  if (a2 - a1 < v3)
  {
    return a2;
  }

  v4 = a1 + v3;
  if (a3 < 0x41)
  {
    v6 = a3;
    v5 = v4;
  }

  else
  {
    v5 = a1 + v3;
    do
    {
      v6 = a3 >> 6;
      *(v5 - 2) = std::__itoa::__base_8_lut[a3 & 0x3F];
      v5 -= 2;
      a3 = v6;
    }

    while (v6 > 0x40);
  }

  v7 = (v5 - 1);
  do
  {
    *v7-- = a01234567[v6 & 7];
    v8 = v6 > 7;
    v6 >>= 3;
  }

  while (v8);
  return v4;
}

uint64_t std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned long long>(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = 67 - __clz(a3 | 1);
  if (a2 - a1 < (v3 >> 2))
  {
    return a2;
  }

  v4 = a1 + (v3 >> 2);
  if (a3 < 0x101)
  {
    v6 = a3;
    v5 = v4;
  }

  else
  {
    v5 = a1 + (v3 >> 2);
    do
    {
      v6 = a3 >> 8;
      *(v5 - 2) = std::__itoa::__base_16_lut[a3];
      v5 -= 2;
      a3 = v6;
    }

    while (v6 > 0x100);
  }

  v7 = (v5 - 1);
  do
  {
    *v7-- = a0123456789abcd_0[v6 & 0xF];
    v8 = v6 > 0xF;
    v6 >>= 4;
  }

  while (v8);
  return v4;
}

uint64_t std::__to_chars_integral_width[abi:ne200100]<unsigned long long>(unint64_t a1, unsigned int a2)
{
  if (a2 > a1)
  {
    return 1;
  }

  v3 = 0;
  v4 = a2 * a2;
  v5 = (v4 * v4);
  while (1)
  {
    if (a1 < v4)
    {
      return v3 | 2u;
    }

    if (a1 < v4 * a2)
    {
      return v3 | 3u;
    }

    if (a1 < v5)
    {
      break;
    }

    a1 /= v5;
    v3 += 4;
    if (a1 < a2)
    {
      return v3 | 1u;
    }
  }

  return (v3 + 4);
}

void *std::__formatter::__write_string[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(char *__src, size_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  if ((a5 & 0x80000000) != 0)
  {

    return std::__formatter::__write_string_no_precision[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(__src, a2, a3, a4, a5);
  }

  else
  {
    v9 = std::__format_spec::__estimate_column_width[abi:ne200100]<char,char const*>(__src, a2, a5 & 0x7FFFFFFF, 0);
    v11 = v10 - __src;

    return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(__src, v11, a3, a4, a5, v9);
  }
}

void *std::__formatter::__write_string_no_precision[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(char *__src, size_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  if (a4 <= 0)
  {
    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(a3, __src, a2);
  }

  else
  {
    v10 = std::__format_spec::__estimate_column_width[abi:ne200100]<char,char const*>(__src, a2, HIDWORD(a4), 1);
    std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(__src, a2, a3, a4, a5, v10);
  }

  return a3;
}

unint64_t std::__format_spec::__estimate_column_width[abi:ne200100]<char,char const*>(unsigned __int8 *a1, uint64_t a2, unint64_t a3, int a4)
{
  result = 0;
  if (!a2)
  {
    return result;
  }

  v6 = a3;
  if (!a3)
  {
    return result;
  }

  if (*a1 < 0)
  {
    v8 = a1;
  }

  else
  {
    v7 = 0;
    v8 = &a1[a3 - 1];
    while (1)
    {
      if (a2 - 1 == v7)
      {
        return a2;
      }

      if (a3 - 1 == v7)
      {
        break;
      }

      v9 = a1[++v7];
      if (v9 < 0)
      {
        v6 = a3 - v7 + 1;
        v8 = &a1[v7 - 1];
        goto LABEL_10;
      }
    }

    if ((a1[a3] & 0x80000000) == 0)
    {
      return a3;
    }

    v6 = 1;
  }

LABEL_10:
  v10 = &a1[a2];
  v33 = v8;
  v34 = &a1[a2];
  v11 = std::__unicode::__code_point_view<char>::__consume[abi:ne200100](&v33) & 0x7FFFFFFF;
  v35 = v11;
  v12 = std::__extended_grapheme_custer_property_boundary::__get_property[abi:ne200100](v11);
  v36 = v12;
  v37 = 0;
  v38 = 0;
  if (v12 == 3)
  {
    v13 = 2;
    goto LABEL_16;
  }

  if (v12 == 9)
  {
    v13 = 3;
LABEL_16:
    LODWORD(v37) = v13;
    goto LABEL_17;
  }

  if (!std::__indic_conjunct_break::__get_property[abi:ne200100](v11))
  {
    v13 = 1;
    goto LABEL_16;
  }

LABEL_17:
  v31 = v8 - a1;
  if (v8 != v10)
  {
    v14 = 0;
    while (1)
    {
      v15 = v11;
      while (1)
      {
        v16 = v33;
        if (v33 == v34)
        {
          break;
        }

        v11 = std::__unicode::__code_point_view<char>::__consume[abi:ne200100](&v33) & 0x7FFFFFFF;
        v17 = std::__extended_grapheme_custer_property_boundary::__get_property[abi:ne200100](v11);
        v18 = v17;
        if (v37 > 1)
        {
          if (v37 == 2)
          {
            if (HIDWORD(v37) == 2)
            {
              if (v17 == 3)
              {
                HIDWORD(v37) = 0;
                goto LABEL_44;
              }
            }

            else if (HIDWORD(v37) == 1)
            {
              if (v17 == 2)
              {
                goto LABEL_44;
              }

              if (v17 == 13)
              {
LABEL_40:
                HIDWORD(v37) = 2;
                goto LABEL_44;
              }
            }

            else
            {
              if (v17 == 13)
              {
                goto LABEL_40;
              }

              if (v17 == 2)
              {
                HIDWORD(v37) = 1;
                goto LABEL_44;
              }
            }

LABEL_45:
            LODWORD(v37) = 0;
            goto LABEL_46;
          }

          LODWORD(v37) = 0;
          if (v17 == 9)
          {
            goto LABEL_44;
          }

LABEL_46:
          v20 = std::__unicode::__extended_grapheme_cluster_break::__evaluate_none[abi:ne200100](&v35, v11, v18);
          v35 = v11;
          v36 = v18;
          if (v20)
          {
            break;
          }
        }

        else
        {
          if (!v37)
          {
            goto LABEL_46;
          }

          v19 = std::__indic_conjunct_break::__get_property[abi:ne200100](v11);
          if (v19 == 3)
          {
            goto LABEL_45;
          }

          if (!v38)
          {
            if (v19 == 1)
            {
              goto LABEL_44;
            }

            if (v19 == 2)
            {
              v38 = 1;
              goto LABEL_44;
            }

            goto LABEL_45;
          }

          if ((v19 - 1) >= 2)
          {
            v38 = 0;
          }

LABEL_44:
          v35 = v11;
          v36 = v18;
        }
      }

      if (v15 - 262142 < 0xFFFC1102)
      {
        goto LABEL_57;
      }

      v21 = &std::__width_estimation_table::__entries[abi:ne200100];
      v22 = 107;
      do
      {
        v23 = v22 >> 1;
        v24 = &v21[v22 >> 1];
        v26 = *v24;
        v25 = v24 + 1;
        v22 += ~(v22 >> 1);
        if (((v15 << 14) | 0x3FFF) >= v26)
        {
          v21 = v25;
        }

        else
        {
          v22 = v23;
        }
      }

      while (v22);
      if (v21 == &std::__width_estimation_table::__entries[abi:ne200100])
      {
LABEL_57:
        v28 = 1;
      }

      else
      {
        v27 = (*(v21 - 1) & 0x3FFF) + (*(v21 - 1) >> 14) >= v15;
        v28 = 1;
        if (v27)
        {
          v28 = 2;
        }
      }

      v29 = v14 + v28;
      if (a4 || v29 <= v6)
      {
        v30 = v16 == v10 || v29 > v6;
        v14 = v29;
        if (!v30)
        {
          continue;
        }
      }

      return v31 + v14;
    }
  }

  v14 = 0;
  return v31 + v14;
}

uint64_t std::__unicode::__code_point_view<char>::__consume[abi:ne200100](unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = (__clz(**a1 ^ 0xFF) - 24);
  if (v2 <= 2)
  {
    if (!v2)
    {
      *a1 = v1 + 1;
      return *v1;
    }

    if (v2 == 2 && a1[1] - v1 >= 2)
    {
      v3 = v1 + 1;
      if ((v1[1] & 0xC0) == 0x80)
      {
        *a1 = v3;
        v4 = *v1 & 0x1F;
        *a1 = v1 + 2;
        if (v4 < 2)
        {
          return 2147549181;
        }

        else
        {
          return *v3 & 0x3F | (v4 << 6);
        }
      }
    }

LABEL_35:
    v5 = 2147549181;
    *a1 = v1 + 1;
    return v5;
  }

  if (v2 == 3)
  {
    if (a1[1] - v1 < 3)
    {
      goto LABEL_35;
    }

    v13 = 1;
    do
    {
      v14 = v1[v13] & 0xC0;
    }

    while (v14 == 128 && v13++ != 2);
    if (v14 != 128)
    {
      goto LABEL_35;
    }

    v5 = 2147549181;
    *a1 = v1 + 1;
    v16 = *v1 & 0xF;
    *a1 = v1 + 2;
    v17 = (v16 << 12) | ((v1[1] & 0x3F) << 6);
    *a1 = v1 + 3;
    if (v17 >= 0x800)
    {
      v18 = v17 | v1[2] & 0x3F;
      if ((v17 & 0xF800) == 0xD800)
      {
        return 2147549181;
      }

      else
      {
        return v18;
      }
    }
  }

  else
  {
    if (v2 != 4 || a1[1] - v1 < 4)
    {
      goto LABEL_35;
    }

    v6 = 1;
    do
    {
      v7 = v1[v6] & 0xC0;
    }

    while (v7 == 128 && v6++ != 3);
    if (v7 != 128)
    {
      goto LABEL_35;
    }

    v5 = 2147549181;
    *a1 = v1 + 1;
    v9 = *v1 & 7;
    *a1 = v1 + 2;
    v10 = (v9 << 12) | ((v1[1] & 0x3F) << 6);
    *a1 = v1 + 3;
    v11 = v1[2];
    *a1 = v1 + 4;
    if (v10 >= 0x400)
    {
      v12 = v1[3] & 0x3F | ((v10 | v11 & 0x3F) << 6);
      if (v10 >> 10 >= 0x11)
      {
        return 2147549181;
      }

      else
      {
        return v12;
      }
    }
  }

  return v5;
}

uint64_t std::__extended_grapheme_custer_property_boundary::__get_property[abi:ne200100](unsigned int a1)
{
  v1 = 1496;
  v2 = &std::__extended_grapheme_custer_property_boundary::__entries[abi:ne200100];
  do
  {
    v3 = v1 >> 1;
    v4 = &v2[v1 >> 1];
    v6 = *v4;
    v5 = v4 + 1;
    v1 += ~(v1 >> 1);
    if (((a1 << 11) | 0x7FF) >= v6)
    {
      v2 = v5;
    }

    else
    {
      v1 = v3;
    }
  }

  while (v1);
  v7 = 16;
  if (v2 != &std::__extended_grapheme_custer_property_boundary::__entries[abi:ne200100])
  {
    v8 = *(v2 - 1);
    v9 = ((v8 >> 4) & 0x7F) + (v8 >> 11);
    v10 = v8 & 0xF;
    if (v9 >= a1)
    {
      return v10;
    }

    else
    {
      return 16;
    }
  }

  return v7;
}

uint64_t std::__unicode::__extended_grapheme_cluster_break::__evaluate_none[abi:ne200100](uint64_t a1, unsigned int a2, unsigned int a3)
{
  v5 = *(a1 + 4);
  if (a3 == 5 && !*(a1 + 4))
  {
    return 0;
  }

  result = 1;
  v7 = v5 > 5 || ((1 << v5) & 0x23) == 0;
  if (v7 && (a3 > 5 || ((1 << a3) & 0x23) == 0))
  {
    if (v5 > 6)
    {
      if (v5 != 7)
      {
        if (v5 != 12)
        {
          goto LABEL_21;
        }

        goto LABEL_17;
      }

      v8 = a3 - 2;
      if (a3 - 2 >= 0xC)
      {
        goto LABEL_30;
      }

      v9 = 2817;
    }

    else
    {
      if (v5 != 4)
      {
        if (v5 != 6)
        {
          goto LABEL_21;
        }

LABEL_17:
        if ((a3 - 11) >= 2u)
        {
LABEL_21:
          if (a3 == 11 && v5 == 11 || a3 <= 0xD && ((1 << a3) & 0x2404) != 0 || v5 == 8)
          {
            return 0;
          }

LABEL_30:
          if (std::__indic_conjunct_break::__get_property[abi:ne200100](a2))
          {
            if (a3 == 9)
            {
              v12 = 3;
              v11 = 8;
              goto LABEL_37;
            }

            if (a3 != 3)
            {
              return 1;
            }

            v10 = 2;
            v11 = 12;
          }

          else
          {
            v10 = 1;
            v11 = 16;
          }

          v12 = 0;
          *(a1 + 8) = v10;
LABEL_37:
          *(a1 + v11) = v12;
          return 1;
        }

        return 0;
      }

      v8 = a3 - 2;
      if (a3 - 2 >= 0xC)
      {
        goto LABEL_30;
      }

      v9 = 3381;
    }

    if (((v9 >> v8) & 1) == 0)
    {
      goto LABEL_30;
    }

    return 0;
  }

  return result;
}

uint64_t std::__indic_conjunct_break::__get_property[abi:ne200100](unsigned int a1)
{
  v1 = 201;
  v2 = &std::__indic_conjunct_break::__entries[abi:ne200100];
  do
  {
    v3 = v1 >> 1;
    v4 = &v2[v1 >> 1];
    v6 = *v4;
    v5 = v4 + 1;
    v1 += ~(v1 >> 1);
    if (((a1 << 11) | 0x7FF) >= v6)
    {
      v2 = v5;
    }

    else
    {
      v1 = v3;
    }
  }

  while (v1);
  v7 = 3;
  if (v2 != &std::__indic_conjunct_break::__entries[abi:ne200100])
  {
    v8 = *(v2 - 1);
    v9 = ((v8 >> 2) & 0x1FF) + (v8 >> 11);
    v10 = v8 & 3;
    if (v9 >= a1)
    {
      return v10;
    }

    else
    {
      return 3;
    }
  }

  return v7;
}

void std::__formatter::__escape[abi:ne200100]<char>(std::string *a1, unsigned __int8 *a2, uint64_t a3, int a4)
{
  v23 = a2;
  v24 = &a2[a3];
  if (a3)
  {
    v5 = a2;
    v7 = 1;
    do
    {
      v8 = std::__unicode::__code_point_view<char>::__consume[abi:ne200100](&v23);
      if (v8 < 0)
      {
        v12 = v23;
        while (v5 != v12)
        {
          v13 = *v5++;
          std::__formatter::__write_escaped_code_unit[abi:ne200100]<char>(a1, v13, "\\x{");
        }

        goto LABEL_45;
      }

      v9 = v8;
      if (v8 <= 31)
      {
        switch(v8)
        {
          case 9:
            v10 = a1;
            v11 = "\\t";
            goto LABEL_43;
          case 10:
            v10 = a1;
            v11 = "\\n";
            goto LABEL_43;
          case 13:
            v10 = a1;
            v11 = "\\r";
            goto LABEL_43;
        }
      }

      else if (v8 > 38)
      {
        if (v8 == 39)
        {
          v10 = a1;
          if (!a4)
          {
            v11 = "\\'";
            goto LABEL_43;
          }

          v16 = 39;
          goto LABEL_41;
        }

        if (v8 == 92)
        {
          v10 = a1;
          v11 = "\\\";
          goto LABEL_43;
        }
      }

      else
      {
        if (v8 == 32)
        {
          v10 = a1;
          v16 = 32;
LABEL_41:
          std::string::push_back(v10, v16);
          goto LABEL_44;
        }

        if (v8 == 34)
        {
          v10 = a1;
          if (a4 == 1)
          {
            v11 = "\\"";
LABEL_43:
            std::string::append(v10, v11, 2uLL);
            goto LABEL_44;
          }

          v16 = 34;
          goto LABEL_41;
        }
      }

      if ((v8 - 917760) < 0xF0)
      {
        goto LABEL_23;
      }

      if (v8 <= 0x323AF)
      {
        v17 = &std::__escaped_output_table::__entries[abi:ne200100];
        v18 = 711;
        do
        {
          v19 = v18 >> 1;
          v20 = &v17[v18 >> 1];
          v22 = *v20;
          v21 = v20 + 1;
          v18 += ~(v18 >> 1);
          if (((v8 << 14) | 0x3FFFu) >= v22)
          {
            v17 = v21;
          }

          else
          {
            v18 = v19;
          }
        }

        while (v18);
        if (v17 == &std::__escaped_output_table::__entries[abi:ne200100] || (*(v17 - 1) & 0x3FFF) + (*(v17 - 1) >> 14) < v8)
        {
LABEL_23:
          if ((v7 & 1) == 0 || std::__extended_grapheme_custer_property_boundary::__get_property[abi:ne200100](v8) != 2)
          {
            v14 = v23;
            if (v5 == v23)
            {
              v7 = 0;
            }

            else
            {
              do
              {
                v15 = *v5++;
                std::string::push_back(a1, v15);
                v7 = 0;
              }

              while (v5 != v14);
            }

            goto LABEL_45;
          }
        }
      }

      std::__formatter::__write_escaped_code_unit[abi:ne200100]<char>(a1, v9, "\\u{");
LABEL_44:
      v7 = 1;
LABEL_45:
      v5 = v23;
    }

    while (v23 != v24);
  }
}

void std::__formatter::__write_escaped_code_unit[abi:ne200100]<char>(std::string *this, unsigned int a2, std::string::value_type *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = *a3;
  if (*a3)
  {
    v6 = (a3 + 1);
    do
    {
      std::string::push_back(this, v5);
      v7 = *v6++;
      v5 = v7;
    }

    while (v7);
  }

  v8 = std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned int>(&v11, &v12, a2);
  if (&v11 != v8)
  {
    v9 = v8;
    v10 = &v11;
    do
    {
      std::string::push_back(this, *v10++);
    }

    while (v10 != v9);
  }

  std::string::push_back(this, 125);
}

uint64_t std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned int>(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = (35 - __clz(a3 | 1)) >> 2;
  if (a2 - a1 < v3)
  {
    return a2;
  }

  v4 = a1 + v3;
  if (a3 < 0x101)
  {
    v6 = a3;
    v5 = v4;
  }

  else
  {
    v5 = a1 + v3;
    do
    {
      v6 = a3 >> 8;
      *(v5 - 2) = std::__itoa::__base_16_lut[a3];
      v5 -= 2;
      a3 = v6;
    }

    while (v6 > 0x100);
  }

  v7 = (v5 - 1);
  do
  {
    *v7-- = a0123456789abcd_0[v6 & 0xF];
    v8 = v6 > 0xF;
    v6 >>= 4;
  }

  while (v8);
  return v4;
}

void *std::__formatter::__format_floating_point_non_finite[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>(void *a1, uint64_t a2, unint64_t a3, char a4, int a5)
{
  if (a4)
  {
    v6 = 45;
  }

  else
  {
    v7 = (a2 >> 3) & 3;
    if (v7 == 2)
    {
      v6 = 43;
    }

    else
    {
      if (v7 != 3)
      {
        p_src = &__src;
        goto LABEL_8;
      }

      v6 = 32;
    }
  }

  p_src = v15;
  __src = v6;
LABEL_8:
  if (BYTE1(a2) <= 0x10u && ((1 << SBYTE1(a2)) & 0x15000) != 0)
  {
    v9 = 6;
  }

  else
  {
    v9 = 6;
    if (BYTE1(a2) != 18)
    {
      v9 = 0;
    }
  }

  v10 = 3;
  if (!a5)
  {
    v10 = 0;
  }

  v11 = &aInfnaninfnan[v9 + v10];
  *p_src = *v11;
  p_src[2] = v11[2];
  if ((a2 & 7) == 4)
  {
    v12 = a2 & 0xF8 | 3;
  }

  else
  {
    v12 = a2;
  }

  std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&__src, p_src - &__src + 3, a1, a2 & 0xFFFFFFFFFFFFFF00 | v12, a3, p_src - &__src + 3);
  return a1;
}

void *std::__formatter::__format_locale_specific_form[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,double,char>(void *a1, uint64_t a2, char **a3, std::locale *this, uint64_t a5, unint64_t a6)
{
  v11 = std::locale::use_facet(this, MEMORY[0x1E69E5368]);
  (v11->__vftable[1].__on_zero_shared)(&__p);
  v12 = a3[2];
  v13 = *a3;
  if (v12 >= a3[1])
  {
    v12 = a3[1];
  }

  v49 = v12 - v13;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
    if (!__p.__r_.__value_.__l.__size_)
    {
      goto LABEL_30;
    }

    p_p = __p.__r_.__value_.__r.__words[0];
    v16 = *__p.__r_.__value_.__l.__data_;
    if (v49 <= v16)
    {
      *__p.__r_.__value_.__l.__data_ = 0;
      __p.__r_.__value_.__l.__size_ = 0;
      goto LABEL_30;
    }

    v18 = *__p.__r_.__value_.__l.__data_;
    v15 = __p.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&__p.__r_.__value_.__s + 23))
    {
      goto LABEL_30;
    }

    if (v49 <= __p.__r_.__value_.__s.__data_[0])
    {
      __p.__r_.__value_.__s.__data_[0] = 0;
      *(&__p.__r_.__value_.__s + 23) = 0;
      goto LABEL_30;
    }

    size = __p.__r_.__value_.__l.__size_;
    v15 = __p.__r_.__value_.__r.__words[0];
    v16 = __p.__r_.__value_.__s.__data_[0];
    p_p = &__p;
    v18 = __p.__r_.__value_.__s.__data_[0];
  }

  memset(&v50, 0, sizeof(v50));
  v19 = (v15 + size);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &__p + SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v20 = v19;
  }

  v21 = v49 - v16;
  if (v49 - v16 >= 1)
  {
    v22 = (v20 - 1);
    do
    {
      std::string::push_back(&v50, v18);
      if (p_p == v22)
      {
        v18 = p_p->__r_.__value_.__s.__data_[0];
      }

      else
      {
        v23 = (&p_p->__r_.__value_.__l.__data_ + 1);
        v24 = &p_p->__r_.__value_.__s.__data_[1];
        do
        {
          v25 = *v24++;
          v18 = v25;
          if (v25)
          {
            v26 = 1;
          }

          else
          {
            v26 = v23 == v22;
          }

          v23 = v24;
        }

        while (!v26);
        p_p = (v24 - 1);
      }

      v21 -= v18;
    }

    while (v21 > 0);
  }

  std::string::push_back(&v50, v18 + v21);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = v50;
LABEL_30:
  v27 = HIDWORD(a6);
  v28 = *(a2 + 16);
  v29 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v29 = __p.__r_.__value_.__l.__size_;
  }

  v30 = a3[3] - v28 + *(a2 + 4) + v29 - (v29 != 0);
  v31 = a5 & 7;
  v32 = (a5 >> 32) - v30;
  if (a5 >> 32 <= v30)
  {
    *v48 = 0;
    v32 = 0;
    v33 = v27;
    goto LABEL_46;
  }

  if (v31 == 4)
  {
    v33 = 48;
  }

  else
  {
    v33 = v27;
  }

  if (v31 == 4)
  {
    v34 = 3;
  }

  else
  {
    v34 = a5 & 7;
  }

  if (v34 > 1)
  {
    if (v34 != 3)
    {
      *v48 = v32 - (v32 >> 1);
      v32 >>= 1;
      goto LABEL_46;
    }

    goto LABEL_44;
  }

  if (!v34)
  {
LABEL_44:
    *v48 = 0;
    goto LABEL_46;
  }

  *v48 = (a5 >> 32) - v30;
  v32 = 0;
LABEL_46:
  if (v31 == 4 && v13 != v28)
  {
    std::__format::__output_buffer<char>::push_back[abi:ne200100](a1, *v28);
  }

  v35 = v27 & 0xFFFFFF00 | v33;
  std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a1, v32, v35);
  if (v31 != 4)
  {
    v36 = *(a2 + 16);
    if (v13 != v36)
    {
      std::__format::__output_buffer<char>::push_back[abi:ne200100](a1, *v36);
    }
  }

  v37 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if (*(&__p.__r_.__value_.__s + 23))
    {
      v38 = &__p;
      goto LABEL_57;
    }

LABEL_60:
    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(a1, v13, v49);
    goto LABEL_61;
  }

  v37 = __p.__r_.__value_.__l.__size_;
  if (!__p.__r_.__value_.__l.__size_)
  {
    goto LABEL_60;
  }

  v38 = __p.__r_.__value_.__r.__words[0];
LABEL_57:
  v39 = v38 + v37;
  v40 = (v11->__vftable[1].~facet_0)(v11);
  v41 = &v38->__r_.__value_.__s.__data_[1];
  for (i = v39; ; v39 = i)
  {
    v43 = *--i;
    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(a1, v13, v43);
    if (v39 == v41)
    {
      break;
    }

    v13 += *i;
    std::__format::__output_buffer<char>::push_back[abi:ne200100](a1, v40);
  }

LABEL_61:
  v44 = a3[1];
  if (v44 != a3[3])
  {
    v45 = (v11->__vftable[1].~facet)(v11);
    std::__format::__output_buffer<char>::push_back[abi:ne200100](a1, v45);
    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(a1, a3[1] + 1, a3[2] - (a3[1] + 1));
    std::__format::__output_buffer<char>::__fill[abi:ne200100](a1, *(a2 + 4), 48);
    v44 = a3[3];
  }

  v46 = a3[2];
  if (v46 != v44)
  {
    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(a1, v46, v44 - v46);
  }

  std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a1, *v48, v35);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_1DDCAA4D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void *std::__formatter::__write_using_trailing_zeros[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(char *a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6, char *a7, size_t a8)
{
  v13 = (a4 >> 32) - (a6 + a8);
  if ((a4 & 7u) <= 1)
  {
    if ((a4 & 7) != 0)
    {
      v14 = 0;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if ((a4 & 7) == 3)
  {
LABEL_5:
    v14 = (a4 >> 32) - (a6 + a8);
    v13 = 0;
    goto LABEL_7;
  }

  v14 = v13 >> 1;
  v13 -= v13 >> 1;
LABEL_7:
  v15 = HIDWORD(a5);
  v16 = std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, v14, SHIDWORD(a5));
  std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v16, a1, a7 - a1);
  std::__format::__output_buffer<char>::__fill[abi:ne200100](a3, a8, 48);
  std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(a3, a7, a2 - a7);

  return std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, v13, v15);
}

_BYTE *std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<double,long double>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a2 + 4) = 0;
  *a1 = a4;
  v6 = MEMORY[0x1E12BD010](a4, *(a2 + 16) + *(a2 + 8), 3, a3);
  a1[3] = v6;
  result = (a4 + 1);
  if (a4 + 1 == v6)
  {
    a1[1] = v6;
    v11 = 2;
  }

  else
  {
    v8 = v6 - result;
    if (v6 - result < 4)
    {
LABEL_8:
      a1[2] = v6;
      result = memchr(result, 46, v8);
      if (result)
      {
        v6 = result;
      }
    }

    else
    {
      v9 = 6;
      if (v8 < 6)
      {
        v9 = v6 - result;
      }

      v10 = -v9;
      while (*(v6 + v10) != 101)
      {
        if (++v10 == -3)
        {
          goto LABEL_8;
        }
      }

      a1[2] = v6 + v10;
      if (*result == 46)
      {
        v6 = a4 + 1;
      }
    }

    v11 = 1;
  }

  a1[v11] = v6;
  return result;
}

uint64_t std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<double,long double>(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  *a1 = a5;
  v7 = a3 + a2;
  if (a4 == -1)
  {
    result = std::to_chars();
  }

  else
  {
    result = MEMORY[0x1E12BD010](a5, v7, 4);
  }

  a1[3] = result;
  v10 = *(a5 + 1);
  v9 = a5 + 1;
  if (v10 == 46)
  {
    v11 = result - 2;
    v12 = memchr((result - 6), 112, 4uLL);
    result = v9;
    if (v12)
    {
      v9 = v12;
    }

    else
    {
      v9 = v11;
    }
  }

  a1[1] = result;
  a1[2] = v9;
  return result;
}

uint64_t std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<double,long double>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a5;
  result = MEMORY[0x1E12BD010](a5, a3 + a2, 1);
  a1[3] = result;
  v8 = a5 + 1;
  if (*(a5 + 1) == 46)
  {
    a1[1] = v8;
    v9 = result - a5 - 2;
    if (v9 < 4)
    {
LABEL_8:
      v8 = result;
    }

    else
    {
      if (v9 >= 6)
      {
        v9 = 6;
      }

      v10 = -v9;
      while (*(result + v10) != 101)
      {
        if (++v10 == -3)
        {
          goto LABEL_8;
        }
      }

      v8 = result + v10;
    }
  }

  else
  {
    a1[1] = result;
  }

  a1[2] = v8;
  return result;
}

_BYTE *std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<double,double>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a2 + 4) = 0;
  *a1 = a4;
  v6 = MEMORY[0x1E12BCFE0](a4, *(a2 + 16) + *(a2 + 8), 3, a3);
  a1[3] = v6;
  result = (a4 + 1);
  if (a4 + 1 == v6)
  {
    a1[1] = v6;
    v11 = 2;
  }

  else
  {
    v8 = v6 - result;
    if (v6 - result < 4)
    {
LABEL_8:
      a1[2] = v6;
      result = memchr(result, 46, v8);
      if (result)
      {
        v6 = result;
      }
    }

    else
    {
      v9 = 6;
      if (v8 < 6)
      {
        v9 = v6 - result;
      }

      v10 = -v9;
      while (*(v6 + v10) != 101)
      {
        if (++v10 == -3)
        {
          goto LABEL_8;
        }
      }

      a1[2] = v6 + v10;
      if (*result == 46)
      {
        v6 = a4 + 1;
      }
    }

    v11 = 1;
  }

  a1[v11] = v6;
  return result;
}

uint64_t std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<double,double>(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  *a1 = a5;
  v7 = a3 + a2;
  if (a4 == -1)
  {
    result = std::to_chars();
  }

  else
  {
    result = MEMORY[0x1E12BCFE0](a5, v7, 4);
  }

  a1[3] = result;
  v10 = *(a5 + 1);
  v9 = a5 + 1;
  if (v10 == 46)
  {
    v11 = result - 2;
    v12 = memchr((result - 6), 112, 4uLL);
    result = v9;
    if (v12)
    {
      v9 = v12;
    }

    else
    {
      v9 = v11;
    }
  }

  a1[1] = result;
  a1[2] = v9;
  return result;
}

uint64_t std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<double,double>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a5;
  result = MEMORY[0x1E12BCFE0](a5, a3 + a2, 1);
  a1[3] = result;
  v8 = a5 + 1;
  if (*(a5 + 1) == 46)
  {
    a1[1] = v8;
    v9 = result - a5 - 2;
    if (v9 < 4)
    {
LABEL_8:
      v8 = result;
    }

    else
    {
      if (v9 >= 6)
      {
        v9 = 6;
      }

      v10 = -v9;
      while (*(result + v10) != 101)
      {
        if (++v10 == -3)
        {
          goto LABEL_8;
        }
      }

      v8 = result + v10;
    }
  }

  else
  {
    a1[1] = result;
  }

  a1[2] = v8;
  return result;
}

_BYTE *std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<float,float>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a2 + 4) = 0;
  *a1 = a4;
  v6 = MEMORY[0x1E12BD040](a4, *(a2 + 16) + *(a2 + 8), 3, a3);
  a1[3] = v6;
  result = (a4 + 1);
  if (a4 + 1 == v6)
  {
    a1[1] = v6;
    v11 = 2;
  }

  else
  {
    v8 = v6 - result;
    if (v6 - result < 4)
    {
LABEL_8:
      a1[2] = v6;
      result = memchr(result, 46, v8);
      if (result)
      {
        v6 = result;
      }
    }

    else
    {
      v9 = 6;
      if (v8 < 6)
      {
        v9 = v6 - result;
      }

      v10 = -v9;
      while (*(v6 + v10) != 101)
      {
        if (++v10 == -3)
        {
          goto LABEL_8;
        }
      }

      a1[2] = v6 + v10;
      if (*result == 46)
      {
        v6 = a4 + 1;
      }
    }

    v11 = 1;
  }

  a1[v11] = v6;
  return result;
}

uint64_t std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<float,float>(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  *a1 = a5;
  v7 = a3 + a2;
  if (a4 == -1)
  {
    result = std::to_chars();
  }

  else
  {
    result = MEMORY[0x1E12BD040](a5, v7, 4);
  }

  a1[3] = result;
  v10 = *(a5 + 1);
  v9 = a5 + 1;
  if (v10 == 46)
  {
    v11 = result - 2;
    v12 = memchr((result - 5), 112, 3uLL);
    result = v9;
    if (v12)
    {
      v9 = v12;
    }

    else
    {
      v9 = v11;
    }
  }

  a1[1] = result;
  a1[2] = v9;
  return result;
}

uint64_t std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<float,float>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a5;
  result = MEMORY[0x1E12BD040](a5, a3 + a2, 1);
  a1[3] = result;
  v8 = a5 + 1;
  if (*(a5 + 1) == 46)
  {
    a1[1] = v8;
    v9 = result - a5 - 2;
    if (v9 < 4)
    {
LABEL_8:
      v8 = result;
    }

    else
    {
      if (v9 >= 6)
      {
        v9 = 6;
      }

      v10 = -v9;
      while (*(result + v10) != 101)
      {
        if (++v10 == -3)
        {
          goto LABEL_8;
        }
      }

      v8 = result + v10;
    }
  }

  else
  {
    a1[1] = result;
  }

  a1[2] = v8;
  return result;
}

unint64_t std::__visit_format_arg[abi:ne200100]<unsigned int std::__format_spec::__substitute_arg_id[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(std::basic_format_arg<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>)::{lambda(std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>)#1},std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unsigned int *a1)
{
  switch(*(a1 + 16))
  {
    case 1:
    case 2:
    case 5:
    case 8:
    case 9:
    case 0xA:
    case 0xB:
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
      std::__throw_format_error[abi:ne200100]("Replacement argument isn't a standard signed or unsigned integer type");
    case 3:
      result = *a1;
      if ((result & 0x80000000) != 0)
      {
        goto LABEL_12;
      }

      return result;
    case 4:
      result = *a1;
      if ((result & 0x8000000000000000) != 0)
      {
LABEL_12:
        std::__throw_format_error[abi:ne200100]("An argument index may not have a negative value");
      }

      if (result >> 31)
      {
        goto LABEL_10;
      }

      return result;
    case 6:
      result = *a1;
      if ((result & 0x80000000) == 0)
      {
        return result;
      }

      goto LABEL_10;
    case 7:
      result = *a1;
      if (result >> 31)
      {
LABEL_10:
        std::__throw_format_error[abi:ne200100]("The value of the argument index exceeds its maximum value");
      }

      return result;
    default:
      std::__throw_format_error[abi:ne200100]("The argument index value is too large for the number of arguments supplied");
  }
}

void *std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, unint64_t a2, void **a3, unint64_t a4, unint64_t a5, char a6)
{
  v15 = *MEMORY[0x1E69E9840];
  if (BYTE1(a4) <= 3u)
  {
    if (!BYTE1(a4))
    {
      return std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4, a5, a6, __src, &v13 + 5, 0, 0xAu);
    }

    v11 = 2;
    if (BYTE1(a4) == 2)
    {
      v10 = "0b";
      v8 = a4 & 0xFFFFFFFFFFFF00FFLL | 0x200;
    }

    else
    {
      v10 = "0B";
      v8 = a4 & 0xFFFFFFFFFFFF00FFLL | 0x300;
    }

    v9 = &v15;
    return std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, v8, a5, a6, __src, v9, v10, v11);
  }

  if (BYTE1(a4) > 5u)
  {
    v11 = 16;
    if (BYTE1(a4) == 6)
    {
      v10 = "0x";
      v8 = a4 & 0xFFFFFFFFFFFF00FFLL | 0x600;
    }

    else
    {
      v10 = "0X";
      v8 = a4 & 0xFFFFFFFFFFFF00FFLL | 0x700;
    }

    v9 = &v13;
    return std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, v8, a5, a6, __src, v9, v10, v11);
  }

  if (BYTE1(a4) != 4)
  {
    return std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4, a5, a6, __src, &v13 + 5, 0, 0xAu);
  }

  if (a1 | a2)
  {
    v6 = "0";
  }

  else
  {
    v6 = 0;
  }

  return std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4 & 0xFFFFFFFFFFFF00FFLL | 0x400, a5, a6, __src, v14, v6, 8u);
}

void *std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, unint64_t a2, void **a3, unint64_t a4, unint64_t a5, char a6, char *__src, uint64_t a8, _BYTE *a9, unsigned int a10)
{
  v10 = a8;
  v11 = __src;
  v12 = a5;
  v14 = a2;
  v15 = a1;
  v16 = a4;
  if (a6)
  {
    v17 = 45;
LABEL_7:
    *__src = v17;
    v19 = __src + 1;
    goto LABEL_8;
  }

  v18 = (a4 >> 3) & 3;
  if (v18 == 2)
  {
    v17 = 43;
    goto LABEL_7;
  }

  v19 = __src;
  if (v18 == 3)
  {
    v17 = 32;
    goto LABEL_7;
  }

LABEL_8:
  if ((a4 & 0x20) != 0)
  {
    if (a9)
    {
      v20 = *a9;
      if (*a9)
      {
        v21 = a9 + 1;
        do
        {
          *v19++ = v20;
          v22 = *v21++;
          v20 = v22;
        }

        while (v22);
      }
    }
  }

  HIDWORD(v24) = a10 - 2;
  LODWORD(v24) = a10 - 2;
  v23 = v24 >> 1;
  if (v23 != 4)
  {
    if (v23)
    {
      if (v23 == 3)
      {
        v61 = std::__itoa::__integral<8u>::__to_chars[abi:ne200100]<unsigned __int128>(v19, a8, a1, a2);
      }

      else
      {
        if (v23 != 7)
        {
          v62 = a8 - v19;
          v63 = std::__to_chars_integral_width[abi:ne200100]<unsigned __int128>(a1, a2, a10);
          if (v62 >= v63)
          {
            v10 = &v19[v63];
            v64 = v10 - 1;
            do
            {
              v65 = __udivti3();
              v66 = __PAIR128__(v14, v15) >= a10;
              *v64-- = a0123456789abcd[v15 - v65 * a10];
              v15 = v65;
              v14 = v67;
            }

            while (v66);
          }

LABEL_17:
          v27 = a3;
          if ((v16 & 0x40) == 0)
          {
            goto LABEL_64;
          }

          goto LABEL_38;
        }

        v61 = std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned __int128>(v19, a8, a1, a2);
      }
    }

    else
    {
      v61 = std::__itoa::__integral<2u>::__to_chars[abi:ne200100]<unsigned __int128>(v19, a8, a1, a2);
    }

    v10 = v61;
    goto LABEL_17;
  }

  v25 = a8 - v19;
  if (!a2)
  {
    v27 = a3;
    if (v25 > 19 || (v28 = (1233 * (64 - __clz(a1 | 1))) >> 12, v25 >= v28 - (std::__itoa::__pow10_64[v28] > a1) + 1))
    {
      if (HIDWORD(a1))
      {
        v32 = v19;
        if (v15 > 0x2540BE3FFLL)
        {
          v32 = std::__itoa::__base_10_u32[abi:ne200100](v19, v15 / 0x2540BE400);
          v15 %= 0x2540BE400uLL;
        }

        v29 = std::__itoa::__append10[abi:ne200100]<unsigned long long>(v32, v15);
      }

      else
      {
        v29 = std::__itoa::__base_10_u32[abi:ne200100](v19, a1);
      }

      v10 = v29;
    }

    if ((v16 & 0x40) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_38;
  }

  if (v25 <= 38)
  {
    v26 = (1233 * (128 - __clz(a2))) >> 12;
    if (v25 < v26 - (__PAIR128__(a2, a1) < std::__itoa::__pow10_128[v26]) + 1)
    {
      goto LABEL_17;
    }
  }

  if (__PAIR128__(a2, a1) >= __PAIR128__(0x4B3B4CA85A86C47ALL, 0x98A224000000000))
  {
    *v19 = __udivti3() | 0x30;
    v33 = __udivti3();
    v19[1] = ((1441151881 * v33) >> 57) + 48;
    *(v19 + 1) = std::__itoa::__digits_base_10[v33 % 0x5F5E100 / 0xF4240uLL];
    v34 = v33 % 0x5F5E100 % 0xF4240;
    *(v19 + 2) = std::__itoa::__digits_base_10[v34 / 0x2710uLL];
    LOWORD(v34) = v34 % 0x2710;
    *(v19 + 3) = std::__itoa::__digits_base_10[v34 / 0x64u];
    *(v19 + 4) = std::__itoa::__digits_base_10[v34 % 0x64u];
    v35 = __udivti3();
    v31 = std::__itoa::__append10[abi:ne200100]<unsigned long long>(v19 + 5, v35);
    goto LABEL_33;
  }

  v30 = __udivti3();
  if (!HIDWORD(v30))
  {
    v31 = std::__itoa::__base_10_u32[abi:ne200100](v19, v30);
LABEL_33:
    v36 = v31;
    goto LABEL_37;
  }

  v37 = v19;
  if (v30 > 0x2540BE3FFLL)
  {
    v37 = std::__itoa::__base_10_u32[abi:ne200100](v19, v30 / 0x2540BE400);
    v30 %= 0x2540BE400uLL;
  }

  v36 = std::__itoa::__append10[abi:ne200100]<unsigned long long>(v37, v30);
LABEL_37:
  v38 = __umodti3();
  *v36 = v38 / 0x2540BE400 / 0x5F5E100 + 48;
  v39 = v38 / 0x2540BE400 % 0x5F5E100;
  *(v36 + 1) = std::__itoa::__digits_base_10[v39 / 0xF4240uLL];
  v39 %= 0xF4240u;
  *(v36 + 3) = std::__itoa::__digits_base_10[v39 / 0x2710uLL];
  LOWORD(v39) = v39 % 0x2710;
  *(v36 + 5) = std::__itoa::__digits_base_10[v39 / 0x64u];
  *(v36 + 7) = std::__itoa::__digits_base_10[v39 % 0x64u];
  v10 = std::__itoa::__append10[abi:ne200100]<unsigned long long>((v36 + 9), v38 % 0x2540BE400);
  v12 = a5;
  v27 = a3;
  if ((v16 & 0x40) == 0)
  {
    goto LABEL_64;
  }

LABEL_38:
  std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](&v71, v27);
  v40 = std::locale::use_facet(&v71, MEMORY[0x1E69E5368]);
  v41 = v10 - v19;
  std::locale::~locale(&v71);
  (v40->__vftable[1].__on_zero_shared)(&v71, v40);
  if ((v73 & 0x8000000000000000) != 0)
  {
    locale = v71.__locale_;
    v43 = v72;
    if (v72 && v41 > *v71.__locale_)
    {
      v44 = v71.__locale_;
      goto LABEL_45;
    }

    operator delete(v71.__locale_);
    v27 = a3;
LABEL_64:
    v56 = HIDWORD(a4);
    if ((v16 & 7) == 4)
    {
      std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*v27, v11, v19 - v11);
      v57 = a4 & 0xF8 | 3;
      if (SHIDWORD(a4) >= v19 - v11)
      {
        LODWORD(v58) = v19 - v11;
      }

      else
      {
        LODWORD(v58) = HIDWORD(a4);
      }

      v56 = (HIDWORD(a4) - v58);
      LOBYTE(v58) = 48;
      v11 = v19;
    }

    else
    {
      v58 = HIDWORD(v12);
      v57 = a4;
    }

    v55 = *v27;
    v59 = v56 << 32;
    if ((a4 & 0xFF00) == 0x700)
    {
      std::__formatter::__write_transformed[abi:ne200100]<char *,char,char,char (*)(char),std::back_insert_iterator<std::__format::__output_buffer<char>>>(v11, v10, *v27, v59 | a4 & 0xFFFF0000 | v57 | 0x700, v12 & 0xFFFFFF00FFFFFFFFLL | (v58 << 32));
    }

    else
    {
      std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v11, v10 - v11, *v27, v59 | a4 & 0xFFFFFF00 | v57, v12 & 0xFFFFFF00FFFFFFFFLL | (v58 << 32), v10 - v11);
    }

    return v55;
  }

  if (!v73 || v41 <= SLOBYTE(v71.__locale_))
  {
    goto LABEL_64;
  }

  locale = &v71;
  v44 = v71.__locale_;
  v43 = v72;
LABEL_45:
  v45 = *a3;
  memset(&v70, 0, sizeof(v70));
  v46 = v44 + v43;
  if (v73 >= 0)
  {
    v46 = &v71 + v73;
  }

  v47 = *locale;
  v48 = v41 - *locale;
  if (v48 >= 1)
  {
    v49 = v46 - 1;
    do
    {
      std::string::push_back(&v70, v47);
      if (locale == v49)
      {
        v47 = *locale;
      }

      else
      {
        v50 = locale + 1;
        v51 = locale + 1;
        do
        {
          v52 = *v51++;
          v47 = v52;
          if (v52)
          {
            v53 = 1;
          }

          else
          {
            v53 = v50 == v49;
          }

          v50 = v51;
        }

        while (!v53);
        locale = v51 - 1;
      }

      v48 -= v47;
    }

    while (v48 > 0);
  }

  std::string::push_back(&v70, v47 + v48);
  v54 = (v40->__vftable[1].~facet_0)(v40);
  v55 = std::__formatter::__write_using_decimal_separators[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char *,char>(v45, v11, v19, v10, &v70, v54, a4, v12);
  if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v70.__r_.__value_.__l.__data_);
  }

  if (v73 < 0)
  {
    operator delete(v71.__locale_);
  }

  return v55;
}

void sub_1DDCAB658(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, std::locale a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17.__locale_);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__itoa::__integral<2u>::__to_chars[abi:ne200100]<unsigned __int128>(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = __clz(a4);
  v5 = __clz(a3 | 1) | 0x40;
  if (a4)
  {
    v5 = v4;
  }

  v6 = 128 - v5;
  if (a2 - a1 < v6)
  {
    return a2;
  }

  v7 = a1 + v6;
  if (__PAIR128__(a4, a3) < 0x11)
  {
    v9 = a3;
    v11 = a4;
    v8 = v7;
  }

  else
  {
    v8 = a1 + v6;
    do
    {
      *(&v10 + 1) = a4;
      *&v10 = a3;
      v9 = v10 >> 4;
      v11 = a4 >> 4;
      *(v8 - 4) = std::__itoa::__base_2_lut[a3 & 0xF];
      v8 -= 4;
      v12 = a3 <= 0x10F;
      a3 = v9;
      a4 >>= 4;
    }

    while (!v12);
  }

  v13 = (v8 - 1);
  do
  {
    v14 = v9 & 1;
    v12 = v9 <= 1;
    *(&v15 + 1) = v11;
    *&v15 = v9;
    v9 = v15 >> 1;
    v11 >>= 1;
    *v13-- = a01[v14];
  }

  while (!v12);
  return v7;
}

uint64_t std::__itoa::__integral<8u>::__to_chars[abi:ne200100]<unsigned __int128>(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = __clz(a4);
  v5 = __clz(a3 | 1) | 0x40;
  if (a4)
  {
    v5 = v4;
  }

  v6 = (-126 - v5) / 3u;
  if (a2 - a1 < v6)
  {
    return a2;
  }

  v7 = a1 + v6;
  if (__PAIR128__(a4, a3) < 0x41)
  {
    v9 = a3;
    v8 = v7;
  }

  else
  {
    v8 = a1 + v6;
    do
    {
      *(&v10 + 1) = a4;
      *&v10 = a3;
      v9 = v10 >> 6;
      a4 >>= 6;
      *(v8 - 2) = std::__itoa::__base_8_lut[a3 & 0x3F];
      v8 -= 2;
      a3 = v9;
    }

    while (v9 > 0x40);
  }

  v11 = (v8 - 1);
  do
  {
    v12 = v9 & 7;
    v13 = v9 <= 7;
    *(&v14 + 1) = a4;
    *&v14 = v9;
    v9 = v14 >> 3;
    a4 >>= 3;
    *v11-- = a01234567[v12];
  }

  while (!v13);
  return v7;
}

uint64_t std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned __int128>(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = __clz(a4);
  v5 = __clz(a3 | 1) | 0x40;
  if (a4)
  {
    v5 = v4;
  }

  v6 = 131 - v5;
  if (a2 - a1 < (v6 >> 2))
  {
    return a2;
  }

  v7 = a1 + (v6 >> 2);
  if (__PAIR128__(a4, a3) < 0x101)
  {
    v9 = a3;
    v8 = v7;
  }

  else
  {
    v8 = a1 + (v6 >> 2);
    do
    {
      *(&v10 + 1) = a4;
      *&v10 = a3;
      v9 = v10 >> 8;
      a4 >>= 8;
      *(v8 - 2) = std::__itoa::__base_16_lut[a3];
      v8 -= 2;
      a3 = v9;
    }

    while (v9 > 0x100);
  }

  v11 = (v8 - 1);
  do
  {
    v12 = v9 & 0xF;
    v13 = v9 <= 0xF;
    *(&v14 + 1) = a4;
    *&v14 = v9;
    v9 = v14 >> 4;
    a4 >>= 4;
    *v11-- = a0123456789abcd_0[v12];
  }

  while (!v13);
  return v7;
}

uint64_t std::__to_chars_integral_width[abi:ne200100]<unsigned __int128>(uint64_t a1, unint64_t a2, unsigned int a3)
{
  if (__PAIR128__(a2, a1) < a3)
  {
    return 1;
  }

  v5 = 0;
  v6 = a3 * a3;
  v7 = a3 * a3 * a3;
  while (1)
  {
    if (__PAIR128__(a2, a1) < v6)
    {
      return v5 | 2u;
    }

    if (__PAIR128__(a2, a1) < v7)
    {
      return v5 | 3u;
    }

    if (__PAIR128__(a2, a1) < v6 * v6)
    {
      break;
    }

    a1 = __udivti3();
    v5 += 4;
    if (__PAIR128__(a2, a1) < a3)
    {
      return v5 | 1u;
    }
  }

  return (v5 + 4);
}

void *std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, void **a2, unint64_t a3, unint64_t a4, char a5)
{
  v13 = *MEMORY[0x1E69E9840];
  if (BYTE1(a3) <= 3u)
  {
    if (!BYTE1(a3))
    {
      return std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4, a5, v11, &v12 + 2, 0, 0xAu);
    }

    v10 = 2;
    if (BYTE1(a3) == 2)
    {
      v7 = "0b";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x200;
    }

    else
    {
      v7 = "0B";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x300;
    }

    v9 = &v13;
    return std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, v8, a4, a5, v11, v9, v7, v10);
  }

  if (BYTE1(a3) > 5u)
  {
    v10 = 16;
    if (BYTE1(a3) == 6)
    {
      v7 = "0x";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x600;
    }

    else
    {
      v7 = "0X";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x700;
    }

    v9 = &v12;
    return std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, v8, a4, a5, v11, v9, v7, v10);
  }

  if (BYTE1(a3) != 4)
  {
    return std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4, a5, v11, &v12 + 2, 0, 0xAu);
  }

  if (a1)
  {
    v5 = "0";
  }

  else
  {
    v5 = 0;
  }

  return std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3 & 0xFFFFFFFFFFFF00FFLL | 0x400, a4, a5, v11, &v12 + 5, v5, 8u);
}

void *std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, void **a2, unint64_t a3, unint64_t a4, char a5, char *a6, uint64_t a7, _BYTE *a8, unsigned int a9)
{
  v9 = a6;
  v13 = a3;
  if (a5)
  {
    v14 = 45;
LABEL_7:
    *a6 = v14;
    v16 = a6 + 1;
    goto LABEL_8;
  }

  v15 = (a3 >> 3) & 3;
  if (v15 == 2)
  {
    v14 = 43;
    goto LABEL_7;
  }

  v16 = a6;
  if (v15 == 3)
  {
    v14 = 32;
    goto LABEL_7;
  }

LABEL_8:
  if ((a3 & 0x20) != 0)
  {
    if (a8)
    {
      v17 = *a8;
      if (*a8)
      {
        v18 = a8 + 1;
        do
        {
          *v16++ = v17;
          v19 = *v18++;
          v17 = v19;
        }

        while (v19);
      }
    }
  }

  v20 = std::__to_chars_integral[abi:ne200100]<unsigned long long>(v16, a7, a1, a9);
  if ((v13 & 0x40) == 0)
  {
    goto LABEL_40;
  }

  std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](&v43, a2);
  v21 = std::locale::use_facet(&v43, MEMORY[0x1E69E5368]);
  v22 = v20 - v16;
  std::locale::~locale(&v43);
  (v21->__vftable[1].__on_zero_shared)(&v43, v21);
  if ((v45 & 0x8000000000000000) != 0)
  {
    locale = v43.__locale_;
    v24 = v44;
    if (v44 && v22 > *v43.__locale_)
    {
      v25 = v43.__locale_;
      goto LABEL_21;
    }

    operator delete(v43.__locale_);
LABEL_40:
    v37 = HIDWORD(a3);
    if ((v13 & 7) == 4)
    {
      std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a2, v9, v16 - v9);
      v38 = a3 & 0xF8 | 3;
      if (SHIDWORD(a3) >= v16 - v9)
      {
        LODWORD(v39) = v16 - v9;
      }

      else
      {
        LODWORD(v39) = HIDWORD(a3);
      }

      v37 = (HIDWORD(a3) - v39);
      LOBYTE(v39) = 48;
      v9 = v16;
    }

    else
    {
      v39 = HIDWORD(a4);
      v38 = a3;
    }

    v36 = *a2;
    v40 = v37 << 32;
    if ((a3 & 0xFF00) == 0x700)
    {
      std::__formatter::__write_transformed[abi:ne200100]<char *,char,char,char (*)(char),std::back_insert_iterator<std::__format::__output_buffer<char>>>(v9, v20, *a2, v40 | a3 & 0xFFFF0000 | v38 | 0x700, a4 & 0xFFFFFF00FFFFFFFFLL | (v39 << 32));
    }

    else
    {
      std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v9, v20 - v9, *a2, v40 | a3 & 0xFFFFFF00 | v38, a4 & 0xFFFFFF00FFFFFFFFLL | (v39 << 32), v20 - v9);
    }

    return v36;
  }

  if (!v45 || v22 <= SLOBYTE(v43.__locale_))
  {
    goto LABEL_40;
  }

  locale = &v43;
  v25 = v43.__locale_;
  v24 = v44;
LABEL_21:
  v26 = *a2;
  memset(&__p, 0, sizeof(__p));
  v27 = v25 + v24;
  if (v45 >= 0)
  {
    v27 = &v43 + v45;
  }

  v28 = *locale;
  v29 = v22 - *locale;
  if (v29 >= 1)
  {
    v30 = v27 - 1;
    do
    {
      std::string::push_back(&__p, v28);
      if (locale == v30)
      {
        v28 = *locale;
      }

      else
      {
        v31 = locale + 1;
        v32 = locale + 1;
        do
        {
          v33 = *v32++;
          v28 = v33;
          if (v33)
          {
            v34 = 1;
          }

          else
          {
            v34 = v31 == v30;
          }

          v31 = v32;
        }

        while (!v34);
        locale = v32 - 1;
      }

      v29 -= v28;
    }

    while (v29 > 0);
  }

  std::string::push_back(&__p, v28 + v29);
  v35 = (v21->__vftable[1].~facet_0)(v21);
  v36 = std::__formatter::__write_using_decimal_separators[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char *,char>(v26, v9, v16, v20, &__p, v35, a3, a4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v45 < 0)
  {
    operator delete(v43.__locale_);
  }

  return v36;
}

void sub_1DDCABE3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15.__locale_);
  }

  _Unwind_Resume(exception_object);
}

void *std::__formatter::__format_integer[abi:ne200100]<unsigned int,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unsigned int a1, void **a2, unint64_t a3, unint64_t a4, char a5)
{
  v14 = *MEMORY[0x1E69E9840];
  if (BYTE1(a3) <= 3u)
  {
    if (!BYTE1(a3))
    {
      return std::__formatter::__format_integer[abi:ne200100]<unsigned int,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4, a5, __src, v12, 0, 0xAu);
    }

    v10 = 2;
    if (BYTE1(a3) == 2)
    {
      v7 = "0b";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x200;
    }

    else
    {
      v7 = "0B";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x300;
    }

    v9 = &v14;
    return std::__formatter::__format_integer[abi:ne200100]<unsigned int,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, v8, a4, a5, __src, v9, v7, v10);
  }

  if (BYTE1(a3) > 5u)
  {
    v10 = 16;
    if (BYTE1(a3) == 6)
    {
      v7 = "0x";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x600;
    }

    else
    {
      v7 = "0X";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x700;
    }

    v9 = v12;
    return std::__formatter::__format_integer[abi:ne200100]<unsigned int,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, v8, a4, a5, __src, v9, v7, v10);
  }

  if (BYTE1(a3) != 4)
  {
    return std::__formatter::__format_integer[abi:ne200100]<unsigned int,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4, a5, __src, v12, 0, 0xAu);
  }

  if (a1)
  {
    v5 = "0";
  }

  else
  {
    v5 = 0;
  }

  return std::__formatter::__format_integer[abi:ne200100]<unsigned int,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3 & 0xFFFFFFFFFFFF00FFLL | 0x400, a4, a5, __src, v13, v5, 8u);
}

void *std::__formatter::__format_integer[abi:ne200100]<unsigned int,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unsigned int a1, void **a2, unint64_t a3, unint64_t a4, char a5, char *__src, uint64_t a7, _BYTE *a8, unsigned int a9)
{
  v9 = a7;
  v10 = __src;
  v14 = a1;
  v15 = a3;
  if (a5)
  {
    v16 = 45;
LABEL_7:
    *__src = v16;
    v18 = __src + 1;
    goto LABEL_8;
  }

  v17 = (a3 >> 3) & 3;
  if (v17 == 2)
  {
    v16 = 43;
    goto LABEL_7;
  }

  v18 = __src;
  if (v17 == 3)
  {
    v16 = 32;
    goto LABEL_7;
  }

LABEL_8:
  if ((a3 & 0x20) != 0)
  {
    if (a8)
    {
      v19 = *a8;
      if (*a8)
      {
        v20 = a8 + 1;
        do
        {
          *v18++ = v19;
          v21 = *v20++;
          v19 = v21;
        }

        while (v21);
      }
    }
  }

  HIDWORD(v23) = a9 - 2;
  LODWORD(v23) = a9 - 2;
  v22 = v23 >> 1;
  switch(v22)
  {
    case 4:
      if (a7 - v18 > 9 || (v24 = (1233 * (32 - __clz(a1 | 1))) >> 12, a7 - v18 >= (((__PAIR64__(v24, a1) - std::__itoa::__pow10_32[v24]) >> 32) + 1)))
      {
        v25 = std::__itoa::__base_10_u32[abi:ne200100](v18, a1);
LABEL_17:
        v9 = v25;
      }

      break;
    case 0:
      v25 = std::__itoa::__integral<2u>::__to_chars[abi:ne200100]<unsigned int>(v18, a7, a1);
      goto LABEL_17;
    case 3:
      v25 = std::__itoa::__integral<8u>::__to_chars[abi:ne200100]<unsigned int>(v18, a7, a1);
      goto LABEL_17;
    case 7:
      v25 = std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned int>(v18, a7, a1);
      goto LABEL_17;
    default:
      v47 = a7 - v18;
      v48 = std::__to_chars_integral_width[abi:ne200100]<unsigned int>(a1, a9);
      if (v47 >= v48)
      {
        v9 = &v18[v48];
        v49 = (v9 - 1);
        do
        {
          *v49-- = a0123456789abcd[v14 - v14 / a9 * a9];
          v50 = v14 >= a9;
          v14 /= a9;
        }

        while (v50);
      }

      break;
  }

  if ((v15 & 0x40) == 0)
  {
    goto LABEL_45;
  }

  std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](&v52, a2);
  v26 = std::locale::use_facet(&v52, MEMORY[0x1E69E5368]);
  v27 = v9 - v18;
  std::locale::~locale(&v52);
  (v26->__vftable[1].__on_zero_shared)(&v52, v26);
  if ((v54 & 0x8000000000000000) != 0)
  {
    locale = v52.__locale_;
    v29 = v53;
    if (v53 && v27 > *v52.__locale_)
    {
      v30 = v52.__locale_;
      goto LABEL_26;
    }

    operator delete(v52.__locale_);
LABEL_45:
    v42 = HIDWORD(a3);
    if ((v15 & 7) == 4)
    {
      std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a2, v10, v18 - v10);
      v43 = a3 & 0xF8 | 3;
      if (SHIDWORD(a3) >= v18 - v10)
      {
        LODWORD(v44) = v18 - v10;
      }

      else
      {
        LODWORD(v44) = HIDWORD(a3);
      }

      v42 = (HIDWORD(a3) - v44);
      LOBYTE(v44) = 48;
      v10 = v18;
    }

    else
    {
      v44 = HIDWORD(a4);
      v43 = a3;
    }

    v41 = *a2;
    v45 = v42 << 32;
    if ((a3 & 0xFF00) == 0x700)
    {
      std::__formatter::__write_transformed[abi:ne200100]<char *,char,char,char (*)(char),std::back_insert_iterator<std::__format::__output_buffer<char>>>(v10, v9, *a2, v45 | a3 & 0xFFFF0000 | v43 | 0x700, a4 & 0xFFFFFF00FFFFFFFFLL | (v44 << 32));
    }

    else
    {
      std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v10, v9 - v10, *a2, v45 | a3 & 0xFFFFFF00 | v43, a4 & 0xFFFFFF00FFFFFFFFLL | (v44 << 32), v9 - v10);
    }

    return v41;
  }

  if (!v54 || v27 <= SLOBYTE(v52.__locale_))
  {
    goto LABEL_45;
  }

  locale = &v52;
  v30 = v52.__locale_;
  v29 = v53;
LABEL_26:
  v31 = *a2;
  memset(&__p, 0, sizeof(__p));
  v32 = v30 + v29;
  if (v54 >= 0)
  {
    v32 = &v52 + v54;
  }

  v33 = *locale;
  v34 = v27 - *locale;
  if (v34 >= 1)
  {
    v35 = v32 - 1;
    do
    {
      std::string::push_back(&__p, v33);
      if (locale == v35)
      {
        v33 = *locale;
      }

      else
      {
        v36 = locale + 1;
        v37 = locale + 1;
        do
        {
          v38 = *v37++;
          v33 = v38;
          if (v38)
          {
            v39 = 1;
          }

          else
          {
            v39 = v36 == v35;
          }

          v36 = v37;
        }

        while (!v39);
        locale = v37 - 1;
      }

      v34 -= v33;
    }

    while (v34 > 0);
  }

  std::string::push_back(&__p, v33 + v34);
  v40 = (v26->__vftable[1].~facet_0)(v26);
  v41 = std::__formatter::__write_using_decimal_separators[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char *,char>(v31, v10, v18, v9, &__p, v40, a3, a4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v54 < 0)
  {
    operator delete(v52.__locale_);
  }

  return v41;
}

void sub_1DDCAC404(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15.__locale_);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__itoa::__integral<2u>::__to_chars[abi:ne200100]<unsigned int>(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = 32 - __clz(a3 | 1);
  if (a2 - a1 < v3)
  {
    return a2;
  }

  v4 = a1 + v3;
  if (a3 < 0x11)
  {
    v6 = a3;
    v5 = v4;
  }

  else
  {
    v5 = a1 + v3;
    do
    {
      v6 = a3 >> 4;
      *(v5 - 4) = std::__itoa::__base_2_lut[a3 & 0xF];
      v5 -= 4;
      v7 = a3 > 0x10F;
      a3 >>= 4;
    }

    while (v7);
  }

  v8 = (v5 - 1);
  do
  {
    *v8-- = a01[v6 & 1];
    v7 = v6 > 1;
    v6 >>= 1;
  }

  while (v7);
  return v4;
}

uint64_t std::__itoa::__integral<8u>::__to_chars[abi:ne200100]<unsigned int>(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = (86 * (34 - __clz(a3 | 1))) >> 8;
  if (a2 - a1 < v3)
  {
    return a2;
  }

  v4 = a1 + v3;
  if (a3 < 0x41)
  {
    v6 = a3;
    v5 = v4;
  }

  else
  {
    v5 = a1 + v3;
    do
    {
      v6 = a3 >> 6;
      *(v5 - 2) = std::__itoa::__base_8_lut[a3 & 0x3F];
      v5 -= 2;
      a3 = v6;
    }

    while (v6 > 0x40);
  }

  v7 = (v5 - 1);
  do
  {
    *v7-- = a01234567[v6 & 7];
    v8 = v6 > 7;
    v6 >>= 3;
  }

  while (v8);
  return v4;
}

uint64_t std::__to_chars_integral_width[abi:ne200100]<unsigned int>(unsigned int a1, unsigned int a2)
{
  if (a1 < a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = a2 * a2;
  v5 = v4 * v4;
  while (1)
  {
    if (a1 < v4)
    {
      return v3 | 2u;
    }

    if (a1 < a2 * a2 * a2)
    {
      return v3 | 3u;
    }

    if (a1 < v5)
    {
      break;
    }

    a1 /= v5;
    v3 += 4;
    if (a1 < a2)
    {
      return v3 | 1u;
    }
  }

  return (v3 + 4);
}

uint64_t std::__format_spec::__parser<char>::__validate[abi:ne200100](uint64_t result, const char *a2)
{
  if ((*result & 0x18) != 0)
  {
    v2 = "sign";
    goto LABEL_11;
  }

  if ((*result & 0x20) != 0)
  {
    v2 = "alternate form";
    goto LABEL_11;
  }

  if ((*result & 7) == 4)
  {
    v2 = "zero-padding";
    goto LABEL_11;
  }

  if (*(result + 8) != -1)
  {
    v2 = "precision";
LABEL_11:
    std::__format_spec::__throw_invalid_option_format_error[abi:ne200100](a2, v2);
  }

  if (*(result + 1) >= 0x20u)
  {
    std::__throw_format_error[abi:ne200100]("The type does not fit in the mask");
  }

  return result;
}

void std::__format_spec::__throw_invalid_option_format_error[abi:ne200100](const char *a1, const char *a2)
{
  std::string::basic_string[abi:ne200100]<0>(&v15, "The format specifier for ");
  v4 = strlen(a1);
  v5 = std::string::append(&v15, a1, v4);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v16.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v16.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v16, " does not allow the ", 0x14uLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v17.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v17.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  v9 = strlen(a2);
  v10 = std::string::append(&v17, a2, v9);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v18.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v18.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&v18, " option", 7uLL);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v20 = v12->__r_.__value_.__r.__words[2];
  v19 = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (v20 >= 0)
  {
    v14 = &v19;
  }

  else
  {
    v14 = v19;
  }

  std::__throw_format_error[abi:ne200100](v14);
}

void sub_1DDCAC780(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v28 - 25) < 0)
  {
    operator delete(*(v28 - 48));
  }

  if (*(v28 - 57) < 0)
  {
    operator delete(*(v28 - 80));
  }

  if (a28 < 0)
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
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *std::__format_spec::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    std::__throw_format_error[abi:ne200100]("End of input while parsing an argument index");
  }

  v4 = std::__format::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(a1, a2, a3);
  if (v4 == a2 || *v4 != 125)
  {
    std::__throw_format_error[abi:ne200100]("The argument index is invalid");
  }

  return v4 + 1;
}

unsigned __int8 *std::__format::__parse_number[abi:ne200100]<char const*>(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a1;
  v3 = a1 + 9;
  if (a2 - a1 <= 9)
  {
    v3 = a2;
  }

  v5 = *a1;
  result = a1 + 1;
  v6 = v5 - 48;
  if (result == v3)
  {
    v3 = result;
LABEL_9:
    if (v3 == a2)
    {
      return a2;
    }

    else
    {
      v8 = *v3;
      if ((v8 - 48) > 9)
      {
        return v3;
      }

      else if ((v8 + 10 * v6 - 48) >> 31 || (result = v2 + 2, v2 + 2 != a2) && *result - 48 <= 9)
      {
        std::__throw_format_error[abi:ne200100]("The numeric value of the format specifier is too large");
      }
    }
  }

  else
  {
    v2 = v3 - 1;
    while (1)
    {
      v7 = *result;
      if ((v7 - 58) < 0xFFFFFFF6)
      {
        break;
      }

      v6 = v7 + 10 * v6 - 48;
      if (++result == v3)
      {
        goto LABEL_9;
      }
    }
  }

  return result;
}

std::runtime_error *std::format_error::format_error[abi:ne200100](std::runtime_error *a1, const char *a2)
{
  result = std::runtime_error::runtime_error(a1, a2);
  result->__vftable = &unk_1F592DC88;
  return result;
}

void std::format_error::~format_error(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x1E12BD160);
}

uint64_t std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100](uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  v3 = v2 * 1.6;
  if (v2 + a2 <= v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2 + a2;
  }

  if (v4 >= 0x100)
  {
    operator new();
  }

  return result;
}

uint64_t AUSoundIsolation_v2::SetParameter(AUSoundIsolation_v2 *this, unsigned int a2, int a3, float a4)
{
  if (a3)
  {
    return 4294956430;
  }

  v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v9 & 1) == 0)
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v8, a2, a4);
  result = 0;
  ++*(this + 73);
  return result;
}

uint64_t AUSoundIsolation_v2::GetParameter(AUSoundIsolation_v2 *this, unsigned int a2, unsigned int a3, unsigned int a4, float *a5)
{
  Parameter = ausdk::AUBase::GetParameter(this, a2, a3, a4, a5);
  if (!a3)
  {
    v10 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v11 & 1) == 0)
    {
      abort();
    }

    *a5 = ausdk::AUElement::GetParameter(v10, a2);
  }

  return Parameter;
}

uint64_t AUSoundIsolation_v2::SetProperty(AUSoundIsolation_v2 *this, int a2, int a3, unsigned int a4, CFTypeRef *a5, unsigned int a6)
{
  v82 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    return 4294956417;
  }

  result = 4294956417;
  if (a2 <= 30000)
  {
    if (a2 <= 3699)
    {
      switch(a2)
      {
        case 21:
          if (a6 != 4)
          {
            return 4294956445;
          }

          v55 = *a5 != 0;
          if (*(this + 528) != v55)
          {
            *(this + 528) = v55;
            *(this + 138) = *(this + 137);
            v59 = *(this + 142);
            if (*(this + 529) == 1)
            {
              *(this + 139) = v59;
              v60 = 0.0;
            }

            else
            {
              v60 = *(this + 139);
              if (v59 != 0.0 && v59 != v60)
              {
                *(this + 139) = v59;
                v60 = v59;
              }
            }

            *(this + 142) = v60;
            v15 = getAUSoundIsolationLog();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
            {
              v62 = *(this + 528);
              *buf = 136315650;
              *&buf[4] = "AUSoundIsolation_v2.mm";
              *&buf[12] = 1024;
              *&buf[14] = 629;
              *&buf[18] = 1024;
              *&buf[20] = v62;
              _os_log_impl(&dword_1DDB85000, v15, OS_LOG_TYPE_INFO, "%s:%i BypassEffect state changed to: %d", buf, 0x18u);
            }

            goto LABEL_134;
          }

          v19 = getAUSoundIsolationLog();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            *buf = 136315650;
            *&buf[4] = "AUSoundIsolation_v2.mm";
            *&buf[12] = 1024;
            *&buf[14] = 631;
            *&buf[18] = 1024;
            *&buf[20] = v55;
            _os_log_impl(&dword_1DDB85000, v19, OS_LOG_TYPE_INFO, "%s:%i BypassEffect state unchanged: %d", buf, 0x18u);
          }

          break;
        case 56:
          v39 = *(this + 1);
          __p[0] = 0;
          __p[1] = __p;
          v78 = 0x2020000000;
          v40 = getCAUI_createCustomViewForAudioUnitSymbolLoc(void)::ptr;
          v79 = getCAUI_createCustomViewForAudioUnitSymbolLoc(void)::ptr;
          if (!getCAUI_createCustomViewForAudioUnitSymbolLoc(void)::ptr)
          {
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 3221225472;
            *&buf[16] = ___ZL45getCAUI_createCustomViewForAudioUnitSymbolLocv_block_invoke;
            *&buf[24] = &unk_1E866BE18;
            v81 = __p;
            ___ZL45getCAUI_createCustomViewForAudioUnitSymbolLocv_block_invoke(buf);
            v40 = *(__p[1] + 3);
          }

          _Block_object_dispose(__p, 8);
          if (v40)
          {
            return v40(v39, a5);
          }

          dlerror();
          abort_report_np();
          __break(1u);
          dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_3653);
          v14 = getAUSoundIsolationLog(void)::gLog;
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::dump(v74);
          }

          AUSoundIsolation_v2::TearDownInternalReporterID(v39);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v75);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v76, 2);
          return 0;
        case 2121:
          v17 = *a5;
          v18 = *a5 != 0;
          if (*(this + 529) != v18)
          {
            *(this + 529) = v18;
            *(this + 138) = *(this + 137);
            v57 = *(this + 142);
            if (v17 == 0.0)
            {
              v58 = *(this + 139);
              if (v57 != 0.0 && v57 != v58)
              {
                *(this + 139) = v57;
                v58 = v57;
              }
            }

            else
            {
              *(this + 139) = v57;
              v58 = 0.0;
            }

            *(this + 142) = v58;
            v15 = getAUSoundIsolationLog();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
            {
              v61 = *(this + 529);
              *buf = 136315650;
              *&buf[4] = "AUSoundIsolation_v2.mm";
              *&buf[12] = 1024;
              *&buf[14] = 653;
              *&buf[18] = 1024;
              *&buf[20] = v61;
              _os_log_impl(&dword_1DDB85000, v15, OS_LOG_TYPE_INFO, "%s:%i BypassEffectWithLatency state changed to: %d", buf, 0x18u);
            }

            goto LABEL_134;
          }

          v19 = getAUSoundIsolationLog();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            *buf = 136315650;
            *&buf[4] = "AUSoundIsolation_v2.mm";
            *&buf[12] = 1024;
            *&buf[14] = 655;
            *&buf[18] = 1024;
            *&buf[20] = v18;
            _os_log_impl(&dword_1DDB85000, v19, OS_LOG_TYPE_INFO, "%s:%i BypassEffectWithLatency state unchanged: %d", buf, 0x18u);
          }

          break;
        default:
          return result;
      }
    }

    else
    {
      if (a2 <= 6999)
      {
        if (a2 == 3700)
        {
          if (a6 == 4)
          {
            if ((*(this + 17) & 1) == 0)
            {
              result = 0;
              *(this + 376) = *a5 != 0;
              return result;
            }

            return 4294956447;
          }

          return 4294956445;
        }

        if (a2 == 6000)
        {
          __p[0] = 0;
          __p[1] = 0;
          v78 = 0;
          std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>(__p, a5, &a5[a6 >> 3], a6 >> 3);
          LOBYTE(v75) = 2;
          *buf = __p[0];
          v74[0] = __p[1];
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::create<std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__wrap_iter<long long const*>,std::__wrap_iter<long long const*>>();
        }

        return result;
      }

      if (a2 != 7000)
      {
        if (a2 == 30000)
        {
          if (a6 == 8)
          {
            if ((*(this + 17) & 1) == 0)
            {
              if (a5)
              {
                applesauce::CF::StringRef::from_get(__p, *a5);
                LODWORD(v74[0]) = 0;
                *buf = v74;
                v20 = std::__tree<std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>,std::__map_value_compare<AUSoundIsolation_v2::BoxTuningType,std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>,std::less<AUSoundIsolation_v2::BoxTuningType>,true>,std::allocator<std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>>>::__emplace_unique_key_args<AUSoundIsolation_v2::BoxTuningType,std::piecewise_construct_t const&,std::tuple<AUSoundIsolation_v2::BoxTuningType&&>,std::tuple<>>(this + 648, 0);
                v21 = v20[5];
                v20[5] = __p[0];
                __p[0] = v21;
                applesauce::CF::StringRef::~StringRef(__p);
                v11 = getAUSoundIsolationLog();
                if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
                {
                  v75 = 0;
                  v74[0] = &v75;
                  v22 = std::__tree<std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>,std::__map_value_compare<AUSoundIsolation_v2::BoxTuningType,std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>,std::less<AUSoundIsolation_v2::BoxTuningType>,true>,std::allocator<std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>>>::__emplace_unique_key_args<AUSoundIsolation_v2::BoxTuningType,std::piecewise_construct_t const&,std::tuple<AUSoundIsolation_v2::BoxTuningType&&>,std::tuple<>>(this + 648, 0);
                  applesauce::CF::convert_to<std::string,0>(__p, v22[5]);
                  v23 = v78 >= 0 ? __p : __p[0];
                  *buf = 136315650;
                  *&buf[4] = "AUSoundIsolation_v2.mm";
                  *&buf[12] = 1024;
                  *&buf[14] = 696;
                  *&buf[18] = 2080;
                  *&buf[20] = v23;
                  _os_log_impl(&dword_1DDB85000, v11, OS_LOG_TYPE_INFO, "%s:%i NeuralNetPlistPath is overriden to %s", buf, 0x1Cu);
                  if (SHIBYTE(v78) < 0)
                  {
                    operator delete(__p[0]);
                  }
                }

                goto LABEL_92;
              }

              __p[0] = 0;
              LODWORD(v74[0]) = 0;
              *buf = v74;
              v63 = std::__tree<std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>,std::__map_value_compare<AUSoundIsolation_v2::BoxTuningType,std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>,std::less<AUSoundIsolation_v2::BoxTuningType>,true>,std::allocator<std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>>>::__emplace_unique_key_args<AUSoundIsolation_v2::BoxTuningType,std::piecewise_construct_t const&,std::tuple<AUSoundIsolation_v2::BoxTuningType&&>,std::tuple<>>(this + 648, 0);
              v64 = v63[5];
              v63[5] = 0;
              __p[0] = v64;
              applesauce::CF::StringRef::~StringRef(__p);
              v65 = getAUSoundIsolationLog();
              if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
              {
                *buf = 136315394;
                *&buf[4] = "AUSoundIsolation_v2.mm";
                *&buf[12] = 1024;
                *&buf[14] = 699;
                _os_log_impl(&dword_1DDB85000, v65, OS_LOG_TYPE_INFO, "%s:%i NeuralNetPlistPathOverride is set to null and thus removed", buf, 0x12u);
              }

              goto LABEL_149;
            }

            return 4294956447;
          }

          return 4294956445;
        }

        return result;
      }

      v36 = *a5;
      v37 = *(this + 88);
      std::mutex::lock((v37 + 64));
      *(v37 + 152) = v36;
      std::mutex::unlock((v37 + 64));
      if (getAUSoundIsolationLog(void)::onceToken != -1)
      {
        dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_3653);
      }

      v38 = getAUSoundIsolationLog(void)::gLog;
      result = os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_INFO);
      if (!result)
      {
        return result;
      }

      *buf = 136315650;
      *&buf[4] = "AUSoundIsolation_v2.mm";
      *&buf[12] = 1024;
      *&buf[14] = 675;
      *&buf[18] = 2048;
      *&buf[20] = v36;
      _os_log_impl(&dword_1DDB85000, v38, OS_LOG_TYPE_INFO, "%s:%i set CoreAudio reporter time period - %f", buf, 0x1Cu);
    }

    return 0;
  }

  if (a2 > 69999)
  {
    if (a2 > 89999)
    {
      if (a2 == 90000)
      {
        if (*(this + 17))
        {
          return 4294956447;
        }

        *(this + 135) = *a5;
        v15 = getAUSoundIsolationLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v56 = *(this + 135);
          *buf = 136315650;
          *&buf[4] = "AUSoundIsolation_v2.mm";
          *&buf[12] = 1024;
          *&buf[14] = 820;
          *&buf[18] = 2048;
          *&buf[20] = v56;
          _os_log_impl(&dword_1DDB85000, v15, OS_LOG_TYPE_INFO, "%s:%i Time Constant (seconds) set to: %f", buf, 0x1Cu);
        }
      }

      else
      {
        if (a2 != 90001)
        {
          return result;
        }

        if (*(this + 17))
        {
          return 4294956447;
        }

        v34 = *a5;
        *(this + 138) = *a5;
        *(this + 137) = v34;
        v15 = getAUSoundIsolationLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v35 = *(this + 137);
          *buf = 136315650;
          *&buf[4] = "AUSoundIsolation_v2.mm";
          *&buf[12] = 1024;
          *&buf[14] = 832;
          *&buf[18] = 1024;
          *&buf[20] = v35;
          _os_log_impl(&dword_1DDB85000, v15, OS_LOG_TYPE_INFO, "%s:%i Transition Wait Time (frames) set to: %u", buf, 0x18u);
        }
      }
    }

    else if (a2 == 70000)
    {
      if (*(this + 17))
      {
        return 4294956447;
      }

      *(this + 133) = *a5;
      v15 = getAUSoundIsolationLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v45 = *(this + 133);
        *buf = 136315650;
        *&buf[4] = "AUSoundIsolation_v2.mm";
        *&buf[12] = 1024;
        *&buf[14] = 809;
        *&buf[18] = 1024;
        *&buf[20] = v45;
        _os_log_impl(&dword_1DDB85000, v15, OS_LOG_TYPE_INFO, "%s:%i DereverbEnable set to: %u", buf, 0x18u);
      }
    }

    else
    {
      if (a2 != 80000)
      {
        return result;
      }

      if (*(this + 17))
      {
        return 4294956447;
      }

      *(this + 134) = *a5;
      v15 = getAUSoundIsolationLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = *(this + 134);
        *buf = 136315650;
        *&buf[4] = "AUSoundIsolation_v2.mm";
        *&buf[12] = 1024;
        *&buf[14] = 799;
        *&buf[18] = 1024;
        *&buf[20] = v16;
        _os_log_impl(&dword_1DDB85000, v15, OS_LOG_TYPE_INFO, "%s:%i DenoiseEnable set to: %u", buf, 0x18u);
      }
    }

LABEL_134:

    return 0;
  }

  if (a2 > 49999)
  {
    if (a2 == 50000)
    {
      if (a6 != 8)
      {
        return 4294956445;
      }

      if (*(this + 17))
      {
        return 4294956447;
      }

      if (!a5)
      {
        __p[0] = 0;
        LODWORD(v74[0]) = 3;
        *buf = v74;
        v72 = std::__tree<std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>,std::__map_value_compare<AUSoundIsolation_v2::BoxTuningType,std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>,std::less<AUSoundIsolation_v2::BoxTuningType>,true>,std::allocator<std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>>>::__emplace_unique_key_args<AUSoundIsolation_v2::BoxTuningType,std::piecewise_construct_t const&,std::tuple<AUSoundIsolation_v2::BoxTuningType&&>,std::tuple<>>(this + 648, 3);
        v73 = v72[5];
        v72[5] = 0;
        __p[0] = v73;
        applesauce::CF::StringRef::~StringRef(__p);
        v65 = getAUSoundIsolationLog();
        if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          *&buf[4] = "AUSoundIsolation_v2.mm";
          *&buf[12] = 1024;
          *&buf[14] = 764;
          _os_log_impl(&dword_1DDB85000, v65, OS_LOG_TYPE_INFO, "%s:%i DereverbPresetPathOverride is set to null and thus removed", buf, 0x12u);
        }

        goto LABEL_149;
      }

      applesauce::CF::StringRef::from_get(__p, *a5);
      LODWORD(v74[0]) = 3;
      *buf = v74;
      v46 = std::__tree<std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>,std::__map_value_compare<AUSoundIsolation_v2::BoxTuningType,std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>,std::less<AUSoundIsolation_v2::BoxTuningType>,true>,std::allocator<std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>>>::__emplace_unique_key_args<AUSoundIsolation_v2::BoxTuningType,std::piecewise_construct_t const&,std::tuple<AUSoundIsolation_v2::BoxTuningType&&>,std::tuple<>>(this + 648, 3);
      v47 = v46[5];
      v46[5] = __p[0];
      __p[0] = v47;
      applesauce::CF::StringRef::~StringRef(__p);
      LODWORD(v74[0]) = 3;
      *buf = v74;
      v48 = std::__tree<std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>,std::__map_value_compare<AUSoundIsolation_v2::BoxTuningType,std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>,std::less<AUSoundIsolation_v2::BoxTuningType>,true>,std::allocator<std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>>>::__emplace_unique_key_args<AUSoundIsolation_v2::BoxTuningType,std::piecewise_construct_t const&,std::tuple<AUSoundIsolation_v2::BoxTuningType&&>,std::tuple<>>(this + 648, 3);
      applesauce::CF::convert_to<std::string,0>(__p, v48[5]);
      if (v78 >= 0)
      {
        v49 = HIBYTE(v78);
      }

      else
      {
        v49 = __p[1];
      }

      v28 = getAUSoundIsolationLog();
      v50 = os_log_type_enabled(v28, OS_LOG_TYPE_INFO);
      if (v49)
      {
        if (!v50)
        {
          goto LABEL_157;
        }

        v51 = __p;
        if (v78 < 0)
        {
          v51 = __p[0];
        }

        *buf = 136315650;
        *&buf[4] = "AUSoundIsolation_v2.mm";
        *&buf[12] = 1024;
        *&buf[14] = 760;
        *&buf[18] = 2080;
        *&buf[20] = v51;
        v52 = "%s:%i DereverbPresetPath is overriden to %s";
        v53 = v28;
        v54 = 28;
      }

      else
      {
        if (!v50)
        {
          goto LABEL_157;
        }

        *buf = 136315394;
        *&buf[4] = "AUSoundIsolation_v2.mm";
        *&buf[12] = 1024;
        *&buf[14] = 758;
        v52 = "%s:%i DereverbPresetPath is overriden with an empty string.";
        v53 = v28;
        v54 = 18;
      }

      _os_log_impl(&dword_1DDB85000, v53, OS_LOG_TYPE_INFO, v52, buf, v54);
    }

    else
    {
      if (a2 != 60000)
      {
        return result;
      }

      if (a6 != 8)
      {
        return 4294956445;
      }

      if (*(this + 17))
      {
        return 4294956447;
      }

      if (!a5)
      {
        __p[0] = 0;
        LODWORD(v74[0]) = 4;
        *buf = v74;
        v68 = std::__tree<std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>,std::__map_value_compare<AUSoundIsolation_v2::BoxTuningType,std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>,std::less<AUSoundIsolation_v2::BoxTuningType>,true>,std::allocator<std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>>>::__emplace_unique_key_args<AUSoundIsolation_v2::BoxTuningType,std::piecewise_construct_t const&,std::tuple<AUSoundIsolation_v2::BoxTuningType&&>,std::tuple<>>(this + 648, 4);
        v69 = v68[5];
        v68[5] = 0;
        __p[0] = v69;
        applesauce::CF::StringRef::~StringRef(__p);
        v65 = getAUSoundIsolationLog();
        if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          *&buf[4] = "AUSoundIsolation_v2.mm";
          *&buf[12] = 1024;
          *&buf[14] = 789;
          _os_log_impl(&dword_1DDB85000, v65, OS_LOG_TYPE_INFO, "%s:%i DenoisePresetPathOverride is set to null and thus removed", buf, 0x12u);
        }

        goto LABEL_149;
      }

      applesauce::CF::StringRef::from_get(__p, *a5);
      LODWORD(v74[0]) = 4;
      *buf = v74;
      v24 = std::__tree<std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>,std::__map_value_compare<AUSoundIsolation_v2::BoxTuningType,std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>,std::less<AUSoundIsolation_v2::BoxTuningType>,true>,std::allocator<std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>>>::__emplace_unique_key_args<AUSoundIsolation_v2::BoxTuningType,std::piecewise_construct_t const&,std::tuple<AUSoundIsolation_v2::BoxTuningType&&>,std::tuple<>>(this + 648, 4);
      v25 = v24[5];
      v24[5] = __p[0];
      __p[0] = v25;
      applesauce::CF::StringRef::~StringRef(__p);
      LODWORD(v74[0]) = 4;
      *buf = v74;
      v26 = std::__tree<std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>,std::__map_value_compare<AUSoundIsolation_v2::BoxTuningType,std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>,std::less<AUSoundIsolation_v2::BoxTuningType>,true>,std::allocator<std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>>>::__emplace_unique_key_args<AUSoundIsolation_v2::BoxTuningType,std::piecewise_construct_t const&,std::tuple<AUSoundIsolation_v2::BoxTuningType&&>,std::tuple<>>(this + 648, 4);
      applesauce::CF::convert_to<std::string,0>(__p, v26[5]);
      if (v78 >= 0)
      {
        v27 = HIBYTE(v78);
      }

      else
      {
        v27 = __p[1];
      }

      v28 = getAUSoundIsolationLog();
      v29 = os_log_type_enabled(v28, OS_LOG_TYPE_INFO);
      if (v27)
      {
        if (!v29)
        {
          goto LABEL_157;
        }

        v30 = __p;
        if (v78 < 0)
        {
          v30 = __p[0];
        }

        *buf = 136315650;
        *&buf[4] = "AUSoundIsolation_v2.mm";
        *&buf[12] = 1024;
        *&buf[14] = 785;
        *&buf[18] = 2080;
        *&buf[20] = v30;
        v31 = "%s:%i DenoisePresetPath is overridden to %s";
        v32 = v28;
        v33 = 28;
      }

      else
      {
        if (!v29)
        {
          goto LABEL_157;
        }

        *buf = 136315394;
        *&buf[4] = "AUSoundIsolation_v2.mm";
        *&buf[12] = 1024;
        *&buf[14] = 783;
        v31 = "%s:%i DenoisePresetPath is overridden with an empty string.";
        v32 = v28;
        v33 = 18;
      }

      _os_log_impl(&dword_1DDB85000, v32, OS_LOG_TYPE_INFO, v31, buf, v33);
    }

LABEL_157:

    if (SHIBYTE(v78) < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }

  if (a2 == 30001)
  {
    if (a6 == 8)
    {
      if ((*(this + 17) & 1) == 0)
      {
        if (a5)
        {
          applesauce::CF::StringRef::from_get(__p, *a5);
          LODWORD(v74[0]) = 1;
          *buf = v74;
          v41 = std::__tree<std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>,std::__map_value_compare<AUSoundIsolation_v2::BoxTuningType,std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>,std::less<AUSoundIsolation_v2::BoxTuningType>,true>,std::allocator<std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>>>::__emplace_unique_key_args<AUSoundIsolation_v2::BoxTuningType,std::piecewise_construct_t const&,std::tuple<AUSoundIsolation_v2::BoxTuningType&&>,std::tuple<>>(this + 648, 1);
          v42 = v41[5];
          v41[5] = __p[0];
          __p[0] = v42;
          applesauce::CF::StringRef::~StringRef(__p);
          v11 = getAUSoundIsolationLog();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            v75 = 1;
            v74[0] = &v75;
            v43 = std::__tree<std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>,std::__map_value_compare<AUSoundIsolation_v2::BoxTuningType,std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>,std::less<AUSoundIsolation_v2::BoxTuningType>,true>,std::allocator<std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>>>::__emplace_unique_key_args<AUSoundIsolation_v2::BoxTuningType,std::piecewise_construct_t const&,std::tuple<AUSoundIsolation_v2::BoxTuningType&&>,std::tuple<>>(this + 648, 1);
            applesauce::CF::convert_to<std::string,0>(__p, v43[5]);
            v44 = v78 >= 0 ? __p : __p[0];
            *buf = 136315650;
            *&buf[4] = "AUSoundIsolation_v2.mm";
            *&buf[12] = 1024;
            *&buf[14] = 716;
            *&buf[18] = 2080;
            *&buf[20] = v44;
            _os_log_impl(&dword_1DDB85000, v11, OS_LOG_TYPE_INFO, "%s:%i NeuralNetPresetPath is overriden to %s", buf, 0x1Cu);
            if (SHIBYTE(v78) < 0)
            {
              operator delete(__p[0]);
            }
          }

          goto LABEL_92;
        }

        __p[0] = 0;
        LODWORD(v74[0]) = 1;
        *buf = v74;
        v70 = std::__tree<std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>,std::__map_value_compare<AUSoundIsolation_v2::BoxTuningType,std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>,std::less<AUSoundIsolation_v2::BoxTuningType>,true>,std::allocator<std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>>>::__emplace_unique_key_args<AUSoundIsolation_v2::BoxTuningType,std::piecewise_construct_t const&,std::tuple<AUSoundIsolation_v2::BoxTuningType&&>,std::tuple<>>(this + 648, 1);
        v71 = v70[5];
        v70[5] = 0;
        __p[0] = v71;
        applesauce::CF::StringRef::~StringRef(__p);
        v65 = getAUSoundIsolationLog();
        if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          *&buf[4] = "AUSoundIsolation_v2.mm";
          *&buf[12] = 1024;
          *&buf[14] = 719;
          _os_log_impl(&dword_1DDB85000, v65, OS_LOG_TYPE_INFO, "%s:%i NeuralNetPresetPathOverride is set to null and thus removed", buf, 0x12u);
        }

LABEL_149:

        return 0;
      }

      return 4294956447;
    }

    return 4294956445;
  }

  if (a2 == 40000)
  {
    if (a6 == 8)
    {
      if ((*(this + 17) & 1) == 0)
      {
        if (a5)
        {
          applesauce::CF::StringRef::from_get(__p, *a5);
          LODWORD(v74[0]) = 2;
          *buf = v74;
          v9 = std::__tree<std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>,std::__map_value_compare<AUSoundIsolation_v2::BoxTuningType,std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>,std::less<AUSoundIsolation_v2::BoxTuningType>,true>,std::allocator<std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>>>::__emplace_unique_key_args<AUSoundIsolation_v2::BoxTuningType,std::piecewise_construct_t const&,std::tuple<AUSoundIsolation_v2::BoxTuningType&&>,std::tuple<>>(this + 648, 2);
          v10 = v9[5];
          v9[5] = __p[0];
          __p[0] = v10;
          applesauce::CF::StringRef::~StringRef(__p);
          v11 = getAUSoundIsolationLog();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            v75 = 2;
            v74[0] = &v75;
            v12 = std::__tree<std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>,std::__map_value_compare<AUSoundIsolation_v2::BoxTuningType,std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>,std::less<AUSoundIsolation_v2::BoxTuningType>,true>,std::allocator<std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>>>::__emplace_unique_key_args<AUSoundIsolation_v2::BoxTuningType,std::piecewise_construct_t const&,std::tuple<AUSoundIsolation_v2::BoxTuningType&&>,std::tuple<>>(this + 648, 2);
            applesauce::CF::convert_to<std::string,0>(__p, v12[5]);
            if (v78 >= 0)
            {
              v13 = __p;
            }

            else
            {
              v13 = __p[0];
            }

            *buf = 136315650;
            *&buf[4] = "AUSoundIsolation_v2.mm";
            *&buf[12] = 1024;
            *&buf[14] = 736;
            *&buf[18] = 2080;
            *&buf[20] = v13;
            _os_log_impl(&dword_1DDB85000, v11, OS_LOG_TYPE_INFO, "%s:%i NeuralNetModelNetPathBase is overriden to %s", buf, 0x1Cu);
            if (SHIBYTE(v78) < 0)
            {
              operator delete(__p[0]);
            }
          }

LABEL_92:

          return 0;
        }

        __p[0] = 0;
        LODWORD(v74[0]) = 2;
        *buf = v74;
        v66 = std::__tree<std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>,std::__map_value_compare<AUSoundIsolation_v2::BoxTuningType,std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>,std::less<AUSoundIsolation_v2::BoxTuningType>,true>,std::allocator<std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>>>::__emplace_unique_key_args<AUSoundIsolation_v2::BoxTuningType,std::piecewise_construct_t const&,std::tuple<AUSoundIsolation_v2::BoxTuningType&&>,std::tuple<>>(this + 648, 2);
        v67 = v66[5];
        v66[5] = 0;
        __p[0] = v67;
        applesauce::CF::StringRef::~StringRef(__p);
        v65 = getAUSoundIsolationLog();
        if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          *&buf[4] = "AUSoundIsolation_v2.mm";
          *&buf[12] = 1024;
          *&buf[14] = 739;
          _os_log_impl(&dword_1DDB85000, v65, OS_LOG_TYPE_INFO, "%s:%i NeuralNetModelNetPathBaseOverride is set to null and thus removed", buf, 0x12u);
        }

        goto LABEL_149;
      }

      return 4294956447;
    }

    return 4294956445;
  }

  return result;
}