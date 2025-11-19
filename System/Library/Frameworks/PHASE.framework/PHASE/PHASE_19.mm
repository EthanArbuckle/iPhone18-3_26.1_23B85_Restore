uint64_t Phase::LambdaFunction<BOOL Phase::Commandable<128,Phase::LockFreeQueueMPSC>::CallAsync<Phase::ActionTreeManager,BOOL,Phase::UniqueObjectId,void (*)(Phase::UniqueObjectId,unsigned long long,BOOL,PHASESoundEventPrepareHandlerReason,void *),void *>(int,BOOL (Phase::ActionTreeManager::*)(Phase::UniqueObjectId,void (*)(Phase::UniqueObjectId,unsigned long long,BOOL,PHASESoundEventPrepareHandlerReason,void *),void *),Phase::UniqueObjectId,void (*)(Phase::UniqueObjectId,unsigned long long,BOOL,PHASESoundEventPrepareHandlerReason,void *),void *)::{lambda(void)#1},void>::operator()(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = (a1[1] + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v3 + v1);
  }

  return v1(v3, a1[4], a1[5], a1[6], a1[7]);
}

uint64_t Phase::LambdaFunction<BOOL Phase::Commandable<128,Phase::LockFreeQueueMPSC>::CallAsync<Phase::ActionTreeManager,BOOL,Phase::UniqueObjectId,double,void (*)(Phase::UniqueObjectId,PHASESoundEventSeekHandlerReason,void *),void *>(int,BOOL (Phase::ActionTreeManager::*)(Phase::UniqueObjectId,double,void (*)(Phase::UniqueObjectId,PHASESoundEventSeekHandlerReason,void *),void *),Phase::UniqueObjectId,double,void (*)(Phase::UniqueObjectId,PHASESoundEventSeekHandlerReason,void *),void *)::{lambda(void)#1},void>::operator()(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  v3 = (*(a1 + 8) + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v3 + v1);
  }

  return v1(v3, *(a1 + 32), *(a1 + 40), *(a1 + 56), *(a1 + 64), *(a1 + 48));
}

void sub_23A4A99AC(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_23A4A9E10(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v3);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v2);
    __cxa_end_catch();
    JUMPOUT(0x23A4A9D1CLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_23A4AA14C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a2)
  {
    __cxa_free_exception(v10);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v11);
    __cxa_end_catch();
    JUMPOUT(0x23A4AA048);
  }

  _Unwind_Resume(exception_object);
}

void sub_23A4AA490(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a2)
  {
    __cxa_free_exception(v10);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v11);
    __cxa_end_catch();
    JUMPOUT(0x23A4AA390);
  }

  _Unwind_Resume(exception_object);
}

void sub_23A4AA828(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (a2)
  {
    __cxa_free_exception(v19);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v18);
    __cxa_end_catch();
    JUMPOUT(0x23A4AA720);
  }

  _Unwind_Resume(exception_object);
}

void sub_23A4AAE00(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_23A4AC7A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = PHASESoundPrototype;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_23A4ACEA8(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

uint64_t Phase::Controller::TaskManager::GetService<Phase::Controller::ClientTapRegistryProxy>(Phase::Logger *a1, int a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 6);
  if (a2 >= ((*(a1 + 7) - v3) >> 5))
  {
    v7 = **(Phase::Logger::GetInstance(a1) + 464);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "TaskManager.hpp";
      v15 = 1024;
      v16 = 112;
      _os_log_impl(&dword_23A302000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: pId < mServiceRegistry.size() is false.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::domain_error::domain_error[abi:ne200100](exception, "PRECONDITION: pId < mServiceRegistry.size() is false.");
  }

  v4 = (v3 + 32 * a2);
  if (!*v4)
  {
    v9 = **(Phase::Logger::GetInstance(v4) + 464);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      Phase::GetBacktraceFrame<1ul>(&__p);
      v10 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 136315906;
      v14 = "TaskManager.hpp";
      v15 = 1024;
      v16 = 121;
      v17 = 1024;
      v18 = a2;
      v19 = 2080;
      v20 = v10;
      _os_log_impl(&dword_23A302000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::domain_error) [not lService.has_value() is true]: No service registered for Id %i, in call \\n%s", buf, 0x22u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v11 = __cxa_allocate_exception(0x10uLL);
    std::domain_error::domain_error[abi:ne200100](v11, "No service registered for Id %i, in call \n%s");
  }

  v5 = std::any_cast[abi:ne200100]<Phase::Controller::ClientTapRegistryProxy * const>(v4);
  if (!v5)
  {
    std::__throw_bad_any_cast[abi:ne200100]();
  }

  return *v5;
}

void sub_23A4AE918(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23A4AF028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = PHASEPreSpatialTapSource;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_23A4AF394(_Unwind_Exception *a1)
{
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(a1);
}

void sub_23A4AF59C(_Unwind_Exception *a1)
{
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(a1);
}

uint64_t (**std::any_cast[abi:ne200100]<Phase::Controller::ClientTapRegistryProxy * const>(uint64_t (**result)(uint64_t, void, void, void, void *)))(uint64_t, void, void, void, void *)
{
  if (result)
  {
    if (*result)
    {
      return (*result)(3, result, 0, 0, &std::__any_imp::__unique_typeinfo<Phase::Controller::ClientTapRegistryProxy *>::__id);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_23A4B06CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(Phase::SpatialModeler::DirectPathTransmissionDebugger::RenderSourceView const*)>::~__value_func[abi:ne200100](va);

  _Unwind_Resume(a1);
}

void sub_23A4B09F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(Phase::SpatialModeler::DirectPathTransmissionDebugger::AudibleTriangleView const*)>::~__value_func[abi:ne200100](va);

  _Unwind_Resume(a1);
}

void sub_23A4B0D10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__function::__value_func<void ()(Phase::Geometry::SystemDebugger *)>::~__value_func[abi:ne200100](&a9);

  _Unwind_Resume(a1);
}

void sub_23A4B0EDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__function::__value_func<void ()(Phase::Geometry::SystemDebugger *)>::~__value_func[abi:ne200100](&a9);

  _Unwind_Resume(a1);
}

void sub_23A4B10A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__function::__value_func<void ()(Phase::Geometry::SystemDebugger *)>::~__value_func[abi:ne200100](&a9);

  _Unwind_Resume(a1);
}

void sub_23A4B1280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__function::__value_func<void ()(Phase::Geometry::SystemDebugger *)>::~__value_func[abi:ne200100](&a9);

  _Unwind_Resume(a1);
}

uint64_t Phase::Controller::DVM23::GetNextPlaystate(int a1, unsigned int a2)
{
  v2 = 8;
  if (a1 > 3)
  {
    if (a1 > 5)
    {
      if (a2 == 2)
      {
        v7 = 6;
      }

      else
      {
        v7 = 8;
      }

      if (a2 == 2)
      {
        v9 = 7;
      }

      else
      {
        v9 = 8;
      }

      if (a1 == 7)
      {
        v2 = v9;
      }

      else
      {
        v2 = 8;
      }

      v8 = a1 == 6;
      goto LABEL_36;
    }

    if (a1 != 4)
    {
      if (a2)
      {
        v7 = 8;
      }

      else
      {
        v7 = 5;
      }

      v8 = a1 == 5;
      goto LABEL_36;
    }

    if (a2 < 3)
    {
      v10 = &unk_23A59757C;
      return v10[a2];
    }

    return 8;
  }

  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a2 == 1)
      {
        v7 = 3;
      }

      else
      {
        v7 = 8;
      }

      v8 = a1 == 3;
LABEL_36:
      if (v8)
      {
        return v7;
      }

      else
      {
        return v2;
      }
    }

    if (a2 < 3)
    {
      v10 = &unk_23A597570;
      return v10[a2];
    }

    return 8;
  }

  if (a2 == 2)
  {
    v3 = 6;
  }

  else
  {
    v3 = 8;
  }

  if (a2)
  {
    v4 = 8;
  }

  else
  {
    v3 = 1;
    v4 = 1;
  }

  if (a1 == 1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 8;
  }

  if (a1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

const char *Phase::Controller::DVM23::PlaystateToString(unsigned int a1)
{
  if (a1 > 8)
  {
    return "Unknown Playstate";
  }

  else
  {
    return off_278B4F9B0[a1];
  }
}

void Phase::SpatialModeler::PresetEarlyReflectionsErrorCategory::message(Phase::SpatialModeler::PresetEarlyReflectionsErrorCategory *this, int a2)
{
  if (a2 < 8)
  {
    operator new();
  }

  std::terminate();
}

void sub_23A4B2764(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Phase::SpatialModeler::PresetEarlyReflectionsErrorCategory::~PresetEarlyReflectionsErrorCategory(std::error_category *this)
{
  std::error_category::~error_category(this);

  JUMPOUT(0x23EE864A0);
}

void Phase::SpatialModeler::PresetEarlyReflections::GetSupportedQueryDescs(void *a1@<X8>)
{
  v23 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(v6, "CULL");
  v7 = 0;
  v8 = 0x100000001;
  v9 = 1;
  v10 = 0u;
  v11 = 0u;
  std::string::basic_string[abi:ne200100]<0>(v12, "CLUSTER");
  v13 = 1;
  v14 = 0x200000003;
  v15 = 1;
  v16 = 0u;
  v17 = 0u;
  std::string::basic_string[abi:ne200100]<0>(v18, "SPATIAL");
  v19 = 2;
  v20 = 0x300000002;
  v21 = 1;
  memset(v22, 0, sizeof(v22));
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  std::vector<Phase::SpatialModeler::QueryDesc>::__init_with_size[abi:ne200100]<Phase::SpatialModeler::QueryDesc const*,Phase::SpatialModeler::QueryDesc const*>(a1, v6, &v23, 3uLL);
  for (i = 0; i != -15; i -= 5)
  {
    v4 = &v6[i * 16];
    v5 = *&v22[i];
    if (v5)
    {
      *(v4 + 27) = v5;
      operator delete(v5);
    }

    if (v4[183] < 0)
    {
      operator delete(*(v4 + 20));
    }
  }
}

void sub_23A4B2914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v31 = &a30;
  v32 = -240;
  do
  {
    Phase::SpatialModeler::QueryDesc::~QueryDesc(v31);
    v31 = (v33 - 80);
    v32 += 80;
  }

  while (v32);
  _Unwind_Resume(a1);
}

void Phase::SpatialModeler::PresetEarlyReflections::RunQuery(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v193 = *MEMORY[0x277D85DE8];
  v5 = a2[10];
  if (v5 == 2)
  {
    v27 = a2[11];
    if (!v27 || *v27 != 2)
    {
      goto LABEL_44;
    }

    v28 = a2[12];
    if (!v28 || *v28 != 3)
    {
      goto LABEL_48;
    }

    v29 = a2[8];
    if (!v29)
    {
      goto LABEL_52;
    }

    v30 = *(v27 + 552);
    v31 = *(v29 + 184);
    if (v31 <= v30 || (v32 = *(v29 + 168), v33 = v32 + 24 * v30, *(v33 + 20) != HIDWORD(v30)) || (v34 = *v33) == 0 || v34->i32[0] != 2)
    {
      if (!a1)
      {
        goto LABEL_134;
      }

      v43 = (**a1)(a1);
      goto LABEL_120;
    }

    v35 = *(v29 + 208);
    memset(v178, 0, 12);
    if (*(a1 + 1068) == 1)
    {
      if (*(v27 + 192) || *(v27 + 200))
      {
        v36 = *(v27 + 508);
        v171 = 0u;
        v172 = 0u;
        v173 = 0u;
        v174 = 0u;
        v175 = 0u;
        v176 = 0u;
        memset(v177, 0, sizeof(v177));
        if (v36)
        {
          v37 = &v171;
          v38 = v27;
          v39 = v36;
          do
          {
            *v37++ = *(v38 + 384) - *(v38 + 64);
            v38 += 4;
            --v39;
          }

          while (v39);
          v183 = 0u;
          memset(v184, 0, 28);
          v181 = 0u;
          v182 = 0u;
          v180 = 0u;
          memset(buf, 0, sizeof(buf));
          v40 = buf;
          v41 = &v171;
          HIDWORD(v184[1]) = v36;
          do
          {
            v42 = *v41++;
            *v40 = fmaxf(v42, 0.0);
            v40 += 4;
            --v36;
          }

          while (v36);
        }

        else
        {
          memset(v184, 0, sizeof(v184));
          v182 = 0uLL;
          v183 = 0uLL;
          v180 = 0uLL;
          v181 = 0uLL;
          memset(buf, 0, sizeof(buf));
        }

        v189 = v182;
        v190 = v183;
        v191 = v184[0];
        v192 = v184[1];
        v185 = *buf;
        v186 = *&buf[16];
        v133 = 0.0;
        v166 = 0.0;
        v187 = v180;
        v188 = v181;
        v134 = 0.0;
LABEL_137:
        v168 = v134;
        v135 = *(v27 + 8);
        if (v135)
        {
          v136 = 0.0;
          v137 = &v185;
          v138 = *(v27 + 8);
          do
          {
            v139 = *v137++;
            v140 = v139;
            if (v139 > v136)
            {
              v136 = v140;
            }

            --v138;
          }

          while (v138);
        }

        else
        {
          v136 = 0.0;
        }

        v141 = -v136;
        if (v35 != *(a1 + 1056))
        {
          v142 = **(a1 + 1024);
          v143 = exp(v141 * 10.0 / 10.0 * 0.115129255);
          Phase::SpatialModeler::ReverbPresetDatabase::Implementation::Query(v142, v35, 0, v135, buf, v143);
          Phase::SpatialModeler::DirectionalMetadataOutput<float>::operator=(a1 + 1072, buf);
          Phase::SpatialModeler::DirectionalMetadataOutput<float>::~DirectionalMetadataOutput(buf);
        }

        v144 = *(a1 + 1120);
        if (v144)
        {
          Phase::SpatialModeler::AllocMetadata<float,Phase::HeapAllocator>(v28, (a1 + 40), v144, *(v27 + 8));
          *buf = xmmword_23A554920;
          if ((*(a1 + 1068) & 1) == 0)
          {
            v145 = v133 < 0.0 ? -v133 : v133;
            if (v145 > 0.0001)
            {
              goto LABEL_158;
            }

            v146 = -v166;
            if (v166 >= 0.0)
            {
              v146 = v166;
            }

            if (v146 > 0.0001)
            {
              goto LABEL_158;
            }

            v147 = v168;
            if (v168 < 0.0)
            {
              v147 = -v168;
            }

            if (v147 > 0.0001)
            {
LABEL_158:
              LODWORD(v169) = asinf(v166 / sqrtf(((v133 * v133) + (v166 * v166)) + (v168 * v168)));
              HIDWORD(v169) = atan2f(-v133, -v168);
              v170 = 0;
              Phase::QuaternionFromEulerAngles<float>(&v171, &v169);
              *buf = v171;
            }
          }

          if (*(a1 + 1120))
          {
            v148 = 0;
            v149 = 0;
            do
            {
              if (*(a1 + 1276) != 1)
              {
                __assert_rtn("RunSpatialQuery", "PresetEarlyReflectionsModeler.cpp", 570, "mLastPresetMetadataEntries.mDirectionType == DirectionalMetadataOutput<float>::DirectionType::CartesianInWorldSpace");
              }

              Phase::operator*<float>(buf, (*(a1 + 1080) + 12 * v149), &v171);
              v150 = *&v171;
              v151 = *(&v171 + 2);
              v152 = sqrtf(((v150 * v150) + (*(&v171 + 1) * *(&v171 + 1))) + (v151 * v151));
              v153 = acosf(*(&v171 + 1) / v152);
              v154 = atan2f(v150, v151);
              v155 = (180.0 - (v154 * 57.296)) - (floorf((180.0 - (v154 * 57.296)) / 360.0) * 360.0);
              if (v155 >= 360.0)
              {
                v156 = nextafterf(360.0, 0.0);
              }

              else
              {
                v156 = v155 + 0.0;
              }

              v157 = (*(v28 + 8) + 12 * v149);
              *v157 = v152;
              v157[1] = v153 * 57.296;
              v157[2] = v156;
              *(*(v28 + 56) + 4 * v149) = *(*(a1 + 1128) + 4 * v149);
              v158 = *(v27 + 8);
              if (v158)
              {
                v159 = (*(v28 + 104) + *(*(v28 + 104) + 8) * v148 + 16);
                v160 = (*(a1 + 1176) + *(*(a1 + 1176) + 8) * v148 + 16);
                do
                {
                  v161 = *v160++;
                  *v159++ = v161;
                  --v158;
                }

                while (v158);
              }

              *(*(v28 + 144) + v149) = *(*(a1 + 1216) + v149);
              ++v149;
              v148 += 4;
            }

            while (v149 < *(a1 + 1120));
          }

          *(v28 + 201) = *(a1 + 1273);
          *(v28 + 204) = 0;
        }

        else
        {
          Phase::SpatialModeler::ClearMetadata<float>(v28);
        }

        v162 = v35 != *(a1 + 1056) || *(a1 + 1064) != v141 || v133 != *(a1 + 1032) || v166 != *(a1 + 1036) || v168 != *(a1 + 1040);
        *(v28 + 4) = v162;
        *(a1 + 1032) = v133;
        *(a1 + 1036) = v166;
        *(a1 + 1040) = v168;
        *(a1 + 1056) = v35;
        v8 = 1;
        *(a1 + 1064) = v141;
        goto LABEL_51;
      }
    }

    else
    {
      v123 = *(v27 + 208);
      if (v31 > v123)
      {
        v124 = v32 + 24 * v123;
        if (*(v124 + 20) == HIDWORD(v123))
        {
          v125 = *v124;
          if (v125)
          {
            if (v125->i32[0] == 3)
            {
              v126 = *(v27 + 508);
              v171 = 0u;
              v172 = 0u;
              v173 = 0u;
              v174 = 0u;
              v175 = 0u;
              v176 = 0u;
              memset(v177, 0, sizeof(v177));
              if (v126)
              {
                v127 = &v171;
                v128 = v27;
                v129 = v126;
                do
                {
                  *v127++ = *(v128 + 384) - *(v128 + 64);
                  v128 += 4;
                  --v129;
                }

                while (v129);
                v183 = 0u;
                memset(v184, 0, 28);
                v181 = 0u;
                v182 = 0u;
                v180 = 0u;
                memset(buf, 0, sizeof(buf));
                v130 = buf;
                v131 = &v171;
                HIDWORD(v184[1]) = v126;
                do
                {
                  v132 = *v131++;
                  *v130 = fmaxf(v132, 0.0);
                  v130 += 4;
                  --v126;
                }

                while (v126);
              }

              else
              {
                memset(v184, 0, sizeof(v184));
                v182 = 0uLL;
                v183 = 0uLL;
                v180 = 0uLL;
                v181 = 0uLL;
                memset(buf, 0, sizeof(buf));
              }

              v189 = v182;
              v190 = v183;
              v191 = v184[0];
              v192 = v184[1];
              v185 = *buf;
              v186 = *&buf[16];
              v187 = v180;
              v188 = v181;
              v178[0] = v125[8];
              v178[1].i32[0] = v125[9].i32[0];
              Phase::TransformPositionByInverse<float>(v34 + 6, v178, buf);
              v133 = *buf;
              v166 = *&buf[4];
              v134 = *&buf[8];
              goto LABEL_137;
            }
          }
        }
      }
    }

    v43 = (**a1)(a1);
LABEL_133:
    v44 = 6;
    goto LABEL_50;
  }

  if (v5 == 1)
  {
    v9 = a2[11];
    if (v9 && *v9 == 3)
    {
      v10 = a2[12];
      if (v10 && *v10 == 2)
      {
        v11 = a2[8];
        if (v11)
        {
          v12 = *(v11 + 208);
          v13 = v12 != *(a1 + 1048);
          *(a1 + 1048) = v12;
          v14 = *(v9 + 40);
          *(a1 + 1068) = v14 == 1.0;
          v167 = v11;
          if (v14 == 1.0)
          {
            if (*(a1 + 48))
            {
              v15 = *(a1 + 48);
            }

            else
            {
              v15 = "<Unnamed>";
            }

            v16 = Phase::HeapAllocator::Allocate((a1 + 40), 0x150uLL, v15, 0, 0x10uLL);
            v17 = v16;
            v18 = 0;
            *v16 = 0u;
            *(v16 + 1) = 0u;
            *(v16 + 8) = 0;
            *(v16 + 36) = 1065353216;
            *(v16 + 44) = 0;
            *(v16 + 13) = 1065353216;
            do
            {
              v19 = v16 + v18;
              *(v19 + 14) = 0;
              *(v19 + 8) = 0;
              v18 += 16;
            }

            while (v18 != 128);
            *(v16 + 23) = 0;
            *buf = 0;
            *&buf[8] = 0;
            Phase::Subbands<float>::Subbands(v16 + 192, buf, 3);
            *(v17 + 320) = 0;
            *buf = &unk_284D367D8;
            *&buf[8] = a1 + 40;
            *&buf[24] = buf;
            *&v185 = v17;
            std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](&v185 + 8, buf);
            std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](buf);
            v20 = v185;
            *&v185 = 0;
            *buf = v20;
            std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](&buf[8], &v185 + 8);
            *(&v180 + 1) = 1;
            std::unique_ptr<Phase::SpatialModeler::RenderGroup [],std::function<void ()(void *)>>::reset[abi:ne200100](&v185);
            std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&v185 + 8);
            std::unique_ptr<Phase::SpatialModeler::RenderGroup [],std::function<void ()(void *)>>::operator=[abi:ne200100]((v10 + 8), buf);
            *(v10 + 48) = *(&v180 + 1);
            std::unique_ptr<Phase::SpatialModeler::RenderGroup [],std::function<void ()(void *)>>::reset[abi:ne200100](buf);
            std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&buf[8]);
            if (*(a1 + 48))
            {
              v21 = *(a1 + 48);
            }

            else
            {
              v21 = "<Unnamed>";
            }

            v22 = Phase::HeapAllocator::Allocate((a1 + 40), 1uLL, v21, 0, 1uLL);
            *buf = &unk_284D368F8;
            *&buf[8] = a1 + 40;
            *&buf[24] = buf;
            *&v185 = v22;
            std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](&v185 + 8, buf);
            std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](buf);
            v23 = v185;
            *&v185 = 0;
            *buf = v23;
            std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](&buf[8], &v185 + 8);
            *(&v180 + 1) = 1;
            std::unique_ptr<BOOL [],std::function<void ()(void *)>>::reset[abi:ne200100](&v185);
            std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&v185 + 8);
            std::unique_ptr<BOOL [],std::function<void ()(void *)>>::operator=[abi:ne200100]((v10 + 56), buf);
            *(v10 + 96) = *(&v180 + 1);
            std::unique_ptr<BOOL [],std::function<void ()(void *)>>::reset[abi:ne200100](buf);
            std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&buf[8]);
            if (*(v9 + 96))
            {
              v24 = *(v9 + 56);
              v25 = *(v10 + 8);
              v26 = *v24;
              *(v25 + 16) = *(v24 + 2);
              *v25 = v26;
              *(v25 + 24) = *(v24 + 6);
              *(v25 + 28) = *(v24 + 7);
              *(v25 + 32) = *(v24 + 8);
              *(v25 + 36) = *(v24 + 9);
              *(v25 + 40) = *(v24 + 10);
              *(v25 + 44) = *(v24 + 11);
              *(v25 + 48) = *(v24 + 12);
              *(v25 + 52) = *(v24 + 13);
              memcpy((v25 + 56), v24 + 56, 0x109uLL);
            }

            else
            {
              MEMORY[0x23EE87040](buf);
              **(v10 + 8) = *buf;
              v13 = 1;
            }

            **(v10 + 56) = v13;
            *(*(v10 + 8) + 320) = 1;
            v74 = *(v9 + 144);
            if (v74)
            {
              v75 = 0;
              v76 = *(v9 + 104);
              v77 = (v76 + 16);
              v78 = -3.4028e38;
              do
              {
                v79 = *(v76 + 304 * v75 + 140);
                v80 = v77;
                if (v79)
                {
                  do
                  {
                    v81 = *v80++;
                    v82 = v81;
                    if (v81 > v78)
                    {
                      v78 = v82;
                    }

                    --v79;
                  }

                  while (v79);
                }

                ++v75;
                v77 += 76;
              }

              while (v75 != v74);
            }

            else
            {
              v78 = -3.4028e38;
            }

            *&v185 = v78;
            *(&v185 + 1) = v78;
            *(&v185 + 2) = v78;
            Phase::Subbands<float>::Subbands(buf, &v185, 3);
            v83 = *(v10 + 8);
            v84 = v183;
            v83[16] = v182;
            v83[17] = v84;
            v85 = v184[1];
            v83[18] = v184[0];
            v83[19] = v85;
            v86 = *&buf[16];
            v83[12] = *buf;
            v83[13] = v86;
            v87 = v181;
            v83[14] = v180;
            v83[15] = v87;
          }

          else
          {
            v46 = *(v9 + 144);
            if (!v46)
            {
              v163 = **(Phase::Logger::GetInstance(a1) + 128);
              if (os_log_type_enabled(v163, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "ManagedPtr.hpp";
                *&buf[12] = 1024;
                *&buf[14] = 229;
                _os_log_impl(&dword_23A302000, v163, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [inCount == 0 is true]: Attempting to allocate an array of 0 elements", buf, 0x12u);
              }

              exception = __cxa_allocate_exception(0x10uLL);
              std::logic_error::logic_error(exception, "Attempting to allocate an array of 0 elements");
            }

            if (*(a1 + 48))
            {
              v47 = *(a1 + 48);
            }

            else
            {
              v47 = "<Unnamed>";
            }

            v48 = Phase::HeapAllocator::Allocate((a1 + 40), 336 * v46, v47, 0, 0x10uLL);
            v49 = v48;
            do
            {
              v50 = 0;
              *(v49 + 8) = 0;
              *v49 = 0u;
              *(v49 + 1) = 0u;
              *(v49 + 36) = 1065353216;
              *(v49 + 44) = 0;
              *(v49 + 13) = 1065353216;
              do
              {
                v51 = v49 + v50;
                *(v51 + 14) = 0;
                *(v51 + 8) = 0;
                v50 += 16;
              }

              while (v50 != 128);
              *(v49 + 23) = 0;
              *buf = 0;
              *&buf[8] = 0;
              Phase::Subbands<float>::Subbands(v49 + 192, buf, 3);
              *(v49 + 320) = 0;
              v49 = (v49 + 336);
            }

            while (v49 != (v48 + 336 * v46));
            *buf = &unk_284D367D8;
            *&buf[8] = a1 + 40;
            *&buf[24] = buf;
            *&v185 = v48;
            std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](&v185 + 8, buf);
            std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](buf);
            v52 = v185;
            *&v185 = 0;
            *buf = v52;
            std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](&buf[8], &v185 + 8);
            *(&v180 + 1) = v46;
            std::unique_ptr<Phase::SpatialModeler::RenderGroup [],std::function<void ()(void *)>>::reset[abi:ne200100](&v185);
            std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&v185 + 8);
            std::unique_ptr<Phase::SpatialModeler::RenderGroup [],std::function<void ()(void *)>>::operator=[abi:ne200100]((v10 + 8), buf);
            *(v10 + 48) = *(&v180 + 1);
            std::unique_ptr<Phase::SpatialModeler::RenderGroup [],std::function<void ()(void *)>>::reset[abi:ne200100](buf);
            std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&buf[8]);
            v53 = *(v9 + 144);
            *&v171 = v53;
            v178[0] = 1;
            *buf = a1 + 40;
            *&buf[8] = &v171;
            *&buf[16] = v178;
            v169 = a1 + 40;
            Phase::details::AllocArray<BOOL,std::unique_ptr<BOOL [],std::function<void ()(void *)>> Phase::details::AllocArray<BOOL,Phase::HeapAllocator>(Phase::HeapAllocator &,unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<BOOL [],std::function<void ()(void *)>> Phase::details::AllocArray<BOOL,Phase::HeapAllocator>(Phase::HeapAllocator &,unsigned long,unsigned long)::{lambda(BOOL*)#1} const&>(v53, buf, &v169, &v185);
            v54 = v185;
            *&v185 = 0;
            *buf = v54;
            std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](&buf[8], &v185 + 8);
            *(&v180 + 1) = v53;
            std::unique_ptr<BOOL [],std::function<void ()(void *)>>::reset[abi:ne200100](&v185);
            std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&v185 + 8);
            std::unique_ptr<BOOL [],std::function<void ()(void *)>>::operator=[abi:ne200100]((v10 + 56), buf);
            *(v10 + 96) = *(&v180 + 1);
            std::unique_ptr<BOOL [],std::function<void ()(void *)>>::reset[abi:ne200100](buf);
            std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&buf[8]);
            if (*(v9 + 144))
            {
              v55 = 0;
              v56 = 0;
              v57 = 0;
              do
              {
                *(*(v10 + 8) + v56) = *(*(v9 + 104) + v55);
                v58 = *(v9 + 104) + v55;
                v59 = *(v10 + 8) + v56;
                *(v59 + 16) = *(v58 + 144);
                v60 = *(v58 + 160);
                v61 = *(v58 + 176);
                v62 = *(v58 + 192);
                *(v59 + 104) = *(v58 + 208);
                *(v59 + 88) = v62;
                *(v59 + 72) = v61;
                *(v59 + 56) = v60;
                v63 = *(v58 + 224);
                v64 = *(v58 + 240);
                v65 = *(v58 + 256);
                *(v59 + 168) = *(v58 + 272);
                *(v59 + 152) = v65;
                *(v59 + 136) = v64;
                *(v59 + 120) = v63;
                v66 = (*(v9 + 104) + v55);
                v67 = (*(v10 + 8) + v56);
                v68 = v66[8];
                v70 = v66[5];
                v69 = v66[6];
                v67[18] = v66[7];
                v67[19] = v68;
                v67[16] = v70;
                v67[17] = v69;
                v71 = v66[1];
                v72 = v66[2];
                v73 = v66[4];
                v67[14] = v66[3];
                v67[15] = v73;
                v67[12] = v71;
                v67[13] = v72;
                *(*(v10 + 56) + v57++) = 1;
                v56 += 336;
                v55 += 304;
              }

              while (*(v9 + 144) > v57);
            }
          }

          v88 = *(v9 + 152);
          if (*(v167 + 184) > v88)
          {
            v89 = *(v167 + 168) + 24 * v88;
            if (*(v89 + 20) == HIDWORD(v88))
            {
              v90 = *v89;
              if (*v89)
              {
                if (*v90 == 2)
                {
                  v91 = *(v9 + 144);
                  *&v171 = v91;
                  v178[0] = 8;
                  *buf = a1 + 40;
                  *&buf[8] = &v171;
                  *&buf[16] = v178;
                  v169 = a1 + 40;
                  Phase::details::AllocArray<Phase::SpatialModeler::SubmixRoutingOutput,std::unique_ptr<Phase::SpatialModeler::SubmixRoutingOutput [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::SubmixRoutingOutput,Phase::HeapAllocator>(Phase::HeapAllocator &,unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::SpatialModeler::SubmixRoutingOutput [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::SubmixRoutingOutput,Phase::HeapAllocator>(Phase::HeapAllocator &,unsigned long,unsigned long)::{lambda(Phase::SpatialModeler::SubmixRoutingOutput*)#1} const&>(v91, buf, &v169, &v185);
                  v92 = v185;
                  *&v185 = 0;
                  *buf = v92;
                  std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](&buf[8], &v185 + 8);
                  *(&v180 + 1) = v91;
                  std::unique_ptr<Phase::SpatialModeler::SubmixRoutingOutput [],std::function<void ()(void *)>>::reset[abi:ne200100](&v185);
                  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&v185 + 8);
                  std::unique_ptr<Phase::SpatialModeler::SubmixRoutingOutput [],std::function<void ()(void *)>>::operator=[abi:ne200100]((v10 + 104), buf);
                  *(v10 + 144) = *(&v180 + 1);
                  std::unique_ptr<Phase::SpatialModeler::SubmixRoutingOutput [],std::function<void ()(void *)>>::reset[abi:ne200100](buf);
                  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&buf[8]);
                  v93 = *(v10 + 144);
                  if (!v93)
                  {
                    goto LABEL_9;
                  }

                  v94 = 0;
                  v95 = 0;
                  v96 = 0;
                  v97 = *(v10 + 104);
                  v98 = v167;
                  while (1)
                  {
                    v99 = *(a1 + 1068);
                    v100 = *(a1 + 1068) ? 0 : v96;
                    *(v97 + v95) = v100;
                    v101 = *(v9 + 104);
                    v102 = *(v101 + v94 + 144);
                    if (*(v98 + 184) <= v102)
                    {
                      break;
                    }

                    v103 = *(v98 + 168) + 24 * v102;
                    if (*(v103 + 20) != HIDWORD(v102))
                    {
                      break;
                    }

                    v104 = *v103;
                    if (!*v103 || *v104 != 3)
                    {
                      break;
                    }

                    v105 = *(v104 + 120);
                    v106 = 0.0;
                    if (v105 != *(v104 + 128))
                    {
                      v107 = *v105;
                      if (*(v98 + 160) > v107)
                      {
                        v108 = *(v98 + 144) + 24 * v107;
                        if (*(v108 + 20) == HIDWORD(v107))
                        {
                          if (*v108)
                          {
                            v109 = *v108;
                            v106 = (*(v104 + 76) * fmaxf(fmaxf(v109[9] - v109[6], v109[10] - v109[7]), v109[11] - v109[8])) * 0.5;
                          }
                        }
                      }
                    }

                    if (v99 && (*(v101 + v94 + 176) != 1 ? (v110 = 0) : (v110 = *(v101 + v94 + 184)), *(v98 + 88) > v110 && (v111 = *(v98 + 72) + 24 * v110, *(v111 + 20) == HIDWORD(v110)) && (v112 = *v111) != 0))
                    {
                      v113 = *(v90 + 64) - *(v104 + 64);
                      v114 = *(v90 + 68) - *(v104 + 68);
                      v115 = sqrtf(((v113 * v113) + (v114 * v114)) + ((*(v90 + 72) - *(v104 + 72)) * (*(v90 + 72) - *(v104 + 72))));
                      v116 = *(v90 + 152);
                      v117 = fmaxf(v116, v106 + (v115 - v106));
                      if (*v112 == 2)
                      {
                        v120 = **(v112 + 40);
                        if (!v120)
                        {
                          goto LABEL_134;
                        }

                        v121 = Phase::Envelope<float>::operator()((v120 + 16), v117);
                        if (v121 <= 0.0)
                        {
                          v121 = COERCE_FLOAT(1);
                        }

                        v118 = ((logf(v121) * 8.6859) / 10.0) * 10.0;
                        v97 = *(v10 + 104);
                        v93 = *(v10 + 144);
                        v98 = v167;
                      }

                      else
                      {
                        v118 = 0.0;
                        if (*v112 == 1)
                        {
                          v165 = v93;
                          v119 = **(v112 + 40);
                          if (!v119)
                          {
                            goto LABEL_134;
                          }

                          v118 = (log2f(v117 / (v106 + 1.0)) * -6.0206) * *(v119 + 16);
                          v93 = v165;
                          v98 = v167;
                        }
                      }

                      v122 = v118;
                      if (v118 > 0.0)
                      {
                        v122 = 0.0;
                      }

                      *(v97 + v95 + 8) = v122;
                    }

                    else
                    {
                      *(v97 + v95 + 8) = 0;
                    }

                    ++v96;
                    v95 += 16;
                    v94 += 304;
                    v8 = 1;
                    if (v96 >= v93)
                    {
                      goto LABEL_51;
                    }
                  }

                  v43 = (**a1)(a1);
                  goto LABEL_133;
                }
              }
            }
          }

          if (!a1)
          {
            goto LABEL_134;
          }

          v43 = (**a1)(a1);
LABEL_120:
          v44 = 7;
          goto LABEL_50;
        }

LABEL_52:
        if (a1)
        {
          v43 = (**a1)(a1);
          v44 = 5;
          goto LABEL_50;
        }

        goto LABEL_134;
      }

LABEL_48:
      if (a1)
      {
        v43 = (**a1)(a1);
        v44 = 4;
        goto LABEL_50;
      }

      goto LABEL_134;
    }

LABEL_44:
    if (a1)
    {
      v43 = (**a1)(a1);
      v44 = 3;
LABEL_50:
      *a3 = v44;
      *(a3 + 8) = v43;
      v8 = 2;
      goto LABEL_51;
    }

LABEL_134:
    std::terminate();
  }

  if (v5)
  {
    if (a1)
    {
      v45 = (**a1)(a1);
      *a3 = 2;
      *(a3 + 8) = v45;
      *(a3 + 24) = 2;
      return;
    }

    goto LABEL_134;
  }

  v6 = a2[11];
  if (!v6 || *v6 != 1)
  {
    goto LABEL_44;
  }

  v7 = a2[12];
  if (!v7 || *v7 != 1)
  {
    goto LABEL_48;
  }

  v7[2] = 0;
LABEL_9:
  v8 = 1;
LABEL_51:
  *(a3 + 24) = v8;
}

std::string *Phase::SpatialModeler::PresetEarlyReflections::GetGraphDescription@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  if (a1 == 2)
  {
    std::string::__assign_external(a2, "PresetEarlyReflectionsSpatialQueryGraph", 0x27uLL);
    std::vector<Phase::SpatialModeler::GraphDescriptionNode>::resize((a2 + 24), 1uLL);
    v4 = *(a2 + 24);
    result = std::string::__assign_external(v4, "FullPresetEarlyReflectionsSpatialGraph", 0x26uLL);
  }

  else if (a1 == 1)
  {
    std::string::__assign_external(a2, "PresetEarlyReflectionsClusterQueryGraph", 0x27uLL);
    std::vector<Phase::SpatialModeler::GraphDescriptionNode>::resize((a2 + 24), 1uLL);
    v4 = *(a2 + 24);
    result = std::string::__assign_external(v4, "FullPresetEarlyReflectionsClusterGraph", 0x26uLL);
  }

  else
  {
    if (a1)
    {
      return result;
    }

    std::string::__assign_external(a2, "PresetEarlyReflectionsCullQueryGraph", 0x24uLL);
    std::vector<Phase::SpatialModeler::GraphDescriptionNode>::resize((a2 + 24), 1uLL);
    v4 = *(a2 + 24);
    result = std::string::__assign_external(v4, "FullPresetEarlyReflectionsCullGraph", 0x23uLL);
  }

  v4[1].__r_.__value_.__r.__words[0] = 0xFFFFFFFFLL;
  return result;
}

uint64_t Phase::SpatialModeler::DirectionalMetadataOutput<float>::operator=(uint64_t a1, int *a2)
{
  v4 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *a1 = v4;
  std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::operator=[abi:ne200100]((a1 + 8), a2 + 1);
  *(a1 + 48) = *(a2 + 6);
  std::unique_ptr<float [],std::function<void ()(void *)>>::operator=[abi:ne200100]((a1 + 56), a2 + 7);
  *(a1 + 96) = *(a2 + 12);
  std::unique_ptr<Phase::PackedSubbandArray<float>,std::function<void ()(void *)>>::operator=[abi:ne200100]((a1 + 104), a2 + 13);
  std::unique_ptr<BOOL [],std::function<void ()(void *)>>::operator=[abi:ne200100]((a1 + 144), a2 + 18);
  *(a1 + 184) = *(a2 + 23);
  *(a1 + 192) = *(a2 + 12);
  return a1;
}

uint64_t Phase::SpatialModeler::AllocMetadata<float,Phase::HeapAllocator>(uint64_t *a1, Phase *a2, uint64_t a3, uint64_t a4)
{
  v20[4] = *MEMORY[0x277D85DE8];
  v13 = 4;
  v14 = a3;
  v15 = a2;
  v16 = &v14;
  v17 = &v13;
  v12 = a2;
  Phase::details::AllocArray<Phase::Vector<float,3ul>,std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Vector<float,3ul>,Phase::HeapAllocator>(Phase::HeapAllocator &,unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Vector<float,3ul>,Phase::HeapAllocator>(Phase::HeapAllocator &,unsigned long,unsigned long)::{lambda(Phase::Vector<float,3ul>*)#1} const&>(a3, &v15, &v12, &v19);
  v8 = v19;
  v19 = 0;
  v15 = v8;
  std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](&v16, v20);
  v18 = a3;
  std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::reset[abi:ne200100](&v19);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v20);
  std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::operator=[abi:ne200100](a1 + 1, &v15);
  a1[6] = v18;
  std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::reset[abi:ne200100](&v15);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&v16);
  v13 = 4;
  v14 = a3;
  v15 = a2;
  v16 = &v14;
  v17 = &v13;
  v12 = a2;
  Phase::details::AllocArray<float,std::unique_ptr<float [],std::function<void ()(void *)>> Phase::details::AllocArray<float,Phase::HeapAllocator>(Phase::HeapAllocator &,unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<float [],std::function<void ()(void *)>> Phase::details::AllocArray<float,Phase::HeapAllocator>(Phase::HeapAllocator &,unsigned long,unsigned long)::{lambda(float*)#1} const&>(a3, &v15, &v12, &v19);
  v9 = v19;
  v19 = 0;
  v15 = v9;
  std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](&v16, v20);
  v18 = a3;
  std::unique_ptr<float [],std::function<void ()(void *)>>::reset[abi:ne200100](&v19);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v20);
  std::unique_ptr<float [],std::function<void ()(void *)>>::operator=[abi:ne200100](a1 + 7, &v15);
  a1[12] = v18;
  std::unique_ptr<float [],std::function<void ()(void *)>>::reset[abi:ne200100](&v15);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&v16);
  Phase::AllocPackedSubbandArray<float,Phase::HeapAllocator>(a2, a3, a4, &v15);
  std::unique_ptr<Phase::PackedSubbandArray<float>,std::function<void ()(void *)>>::operator=[abi:ne200100](a1 + 13, &v15);
  std::unique_ptr<Phase::PackedSubbandArray<float>,std::function<void ()(void *)>>::reset[abi:ne200100](&v15, 0);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&v16);
  v13 = 1;
  v14 = a3;
  v15 = a2;
  v16 = &v14;
  v17 = &v13;
  v12 = a2;
  Phase::details::AllocArray<BOOL,std::unique_ptr<BOOL [],std::function<void ()(void *)>> Phase::details::AllocArray<BOOL,Phase::HeapAllocator>(Phase::HeapAllocator &,unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<BOOL [],std::function<void ()(void *)>> Phase::details::AllocArray<BOOL,Phase::HeapAllocator>(Phase::HeapAllocator &,unsigned long,unsigned long)::{lambda(BOOL*)#1} const&>(a3, &v15, &v12, &v19);
  v10 = v19;
  v19 = 0;
  v15 = v10;
  std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](&v16, v20);
  v18 = a3;
  std::unique_ptr<BOOL [],std::function<void ()(void *)>>::reset[abi:ne200100](&v19);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v20);
  std::unique_ptr<BOOL [],std::function<void ()(void *)>>::operator=[abi:ne200100](a1 + 18, &v15);
  a1[23] = v18;
  std::unique_ptr<BOOL [],std::function<void ()(void *)>>::reset[abi:ne200100](&v15);
  return std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&v16);
}

float Phase::QuaternionFromEulerAngles<float>(float *a1, float *a2)
{
  v3 = a2[1] * 0.5;
  v4 = a2[2] * 0.5;
  v5 = __sincosf_stret(*a2 * 0.5);
  v6 = __sincosf_stret(v3);
  v7 = __sincosf_stret(v4);
  *a1 = (-(v5.__cosval * v6.__sinval) * v7.__sinval) + ((v5.__sinval * v6.__cosval) * v7.__cosval);
  a1[1] = ((v5.__sinval * v6.__cosval) * v7.__sinval) + ((v5.__cosval * v6.__sinval) * v7.__cosval);
  result = ((v5.__sinval * v6.__sinval) * v7.__sinval) + ((v5.__cosval * v6.__cosval) * v7.__cosval);
  a1[2] = (-(v5.__sinval * v6.__sinval) * v7.__cosval) + ((v5.__cosval * v6.__cosval) * v7.__sinval);
  a1[3] = result;
  return result;
}

uint64_t *Phase::SpatialModeler::ClearMetadata<float>(uint64_t *a1)
{
  std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::reset[abi:ne200100](a1 + 1);
  a1[6] = 0;
  std::unique_ptr<float [],std::function<void ()(void *)>>::reset[abi:ne200100](a1 + 7);
  a1[12] = 0;
  std::unique_ptr<Phase::PackedSubbandArray<float>,std::function<void ()(void *)>>::reset[abi:ne200100](a1 + 13, 0);
  result = std::unique_ptr<BOOL [],std::function<void ()(void *)>>::reset[abi:ne200100](a1 + 18);
  a1[23] = 0;
  return result;
}

void Phase::SpatialModeler::PresetEarlyReflections::~PresetEarlyReflections(Phase::SpatialModeler::PresetEarlyReflections *this)
{
  *this = &unk_284D36768;
  v2 = (this + 40);
  std::unique_ptr<BOOL [],std::function<void ()(void *)>>::reset[abi:ne200100](this + 152);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](this + 1224);
  std::unique_ptr<Phase::PackedSubbandArray<float>,std::function<void ()(void *)>>::reset[abi:ne200100](this + 147, 0);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](this + 1184);
  std::unique_ptr<float [],std::function<void ()(void *)>>::reset[abi:ne200100](this + 141);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](this + 1136);
  std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::reset[abi:ne200100](this + 135);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](this + 1088);
  Phase::HeapAllocator::Destroy(v2);
  std::error_category::~error_category(this + 4);
  *this = &unk_284D2F570;
  std::error_category::~error_category(this + 1);
}

{
  *this = &unk_284D36768;
  v2 = (this + 40);
  std::unique_ptr<BOOL [],std::function<void ()(void *)>>::reset[abi:ne200100](this + 152);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](this + 1224);
  std::unique_ptr<Phase::PackedSubbandArray<float>,std::function<void ()(void *)>>::reset[abi:ne200100](this + 147, 0);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](this + 1184);
  std::unique_ptr<float [],std::function<void ()(void *)>>::reset[abi:ne200100](this + 141);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](this + 1136);
  std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::reset[abi:ne200100](this + 135);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](this + 1088);
  Phase::HeapAllocator::Destroy(v2);
  std::error_category::~error_category(this + 4);
  *this = &unk_284D2F570;
  std::error_category::~error_category(this + 1);

  JUMPOUT(0x23EE864A0);
}

uint64_t std::__function::__func<std::unique_ptr<Phase::SpatialModeler::RenderGroup [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::RenderGroup,std::unique_ptr<Phase::SpatialModeler::RenderGroup [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::RenderGroup,Phase::HeapAllocator>(Phase::HeapAllocator &,unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::SpatialModeler::RenderGroup [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::RenderGroup,Phase::HeapAllocator>(Phase::HeapAllocator &,unsigned long,unsigned long)::{lambda(Phase::SpatialModeler::RenderGroup*)#1} const&>(unsigned long,Phase::HeapAllocator&&,std::unique_ptr<Phase::SpatialModeler::RenderGroup [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::RenderGroup,Phase::HeapAllocator>(Phase::HeapAllocator &,unsigned long,unsigned long)::{lambda(Phase::SpatialModeler::RenderGroup*)#1} const&)::{lambda(void *)#1},std::allocator<std::unique_ptr<Phase::SpatialModeler::RenderGroup [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::RenderGroup,std::unique_ptr<Phase::SpatialModeler::RenderGroup [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::RenderGroup,Phase::HeapAllocator>(Phase::HeapAllocator &,unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::SpatialModeler::RenderGroup [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::RenderGroup,Phase::HeapAllocator>(Phase::HeapAllocator &,unsigned long,unsigned long)::{lambda(Phase::SpatialModeler::RenderGroup*)#1} const&>(unsigned long,Phase::HeapAllocator&&,std::unique_ptr<Phase::SpatialModeler::RenderGroup [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::RenderGroup,Phase::HeapAllocator>(Phase::HeapAllocator &,unsigned long,unsigned long)::{lambda(Phase::SpatialModeler::RenderGroup*)#1} const&)::{lambda(void *)#1}>,void ()(void *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284D367D8;
  a2[1] = v2;
  return result;
}

uint64_t Phase::details::AllocArray<BOOL,std::unique_ptr<BOOL [],std::function<void ()(void *)>> Phase::details::AllocArray<BOOL,Phase::HeapAllocator>(Phase::HeapAllocator &,unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<BOOL [],std::function<void ()(void *)>> Phase::details::AllocArray<BOOL,Phase::HeapAllocator>(Phase::HeapAllocator &,unsigned long,unsigned long)::{lambda(BOOL*)#1} const&>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, Phase **a4@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v10 = **(Phase::Logger::GetInstance(0) + 128);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v12 = 136315394;
      *&v12[4] = "ManagedPtr.hpp";
      *&v12[12] = 1024;
      *&v12[14] = 229;
      _os_log_impl(&dword_23A302000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [inCount == 0 is true]: Attempting to allocate an array of 0 elements", v12, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Attempting to allocate an array of 0 elements");
  }

  if (*(*a2 + 8))
  {
    v6 = *(*a2 + 8);
  }

  else
  {
    v6 = "<Unnamed>";
  }

  v7 = Phase::HeapAllocator::Allocate(*a2, **(a2 + 8), v6, 0, **(a2 + 16));
  v8 = *a3;
  *v12 = &unk_284D368F8;
  *&v12[8] = v8;
  v13 = v12;
  *a4 = v7;
  std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100]((a4 + 1), v12);
  return std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v12);
}

uint64_t std::__function::__func<std::unique_ptr<BOOL [],std::function<void ()(void *)>> Phase::details::AllocArray<BOOL,std::unique_ptr<BOOL [],std::function<void ()(void *)>> Phase::details::AllocArray<BOOL,Phase::HeapAllocator>(Phase::HeapAllocator &,unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<BOOL [],std::function<void ()(void *)>> Phase::details::AllocArray<BOOL,Phase::HeapAllocator>(Phase::HeapAllocator &,unsigned long,unsigned long)::{lambda(BOOL*)#1} const&>(unsigned long,Phase::HeapAllocator&&,std::unique_ptr<BOOL [],std::function<void ()(void *)>> Phase::details::AllocArray<BOOL,Phase::HeapAllocator>(Phase::HeapAllocator &,unsigned long,unsigned long)::{lambda(BOOL*)#1} const&)::{lambda(void *)#1},std::allocator<std::unique_ptr<BOOL [],std::function<void ()(void *)>> Phase::details::AllocArray<BOOL,std::unique_ptr<BOOL [],std::function<void ()(void *)>> Phase::details::AllocArray<BOOL,Phase::HeapAllocator>(Phase::HeapAllocator &,unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<BOOL [],std::function<void ()(void *)>> Phase::details::AllocArray<BOOL,Phase::HeapAllocator>(Phase::HeapAllocator &,unsigned long,unsigned long)::{lambda(BOOL*)#1} const&>(unsigned long,Phase::HeapAllocator&&,std::unique_ptr<BOOL [],std::function<void ()(void *)>> Phase::details::AllocArray<BOOL,Phase::HeapAllocator>(Phase::HeapAllocator &,unsigned long,unsigned long)::{lambda(BOOL*)#1} const&)::{lambda(void *)#1}>,void ()(void *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284D368F8;
  a2[1] = v2;
  return result;
}

uint64_t Phase::details::AllocArray<Phase::SpatialModeler::SubmixRoutingOutput,std::unique_ptr<Phase::SpatialModeler::SubmixRoutingOutput [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::SubmixRoutingOutput,Phase::HeapAllocator>(Phase::HeapAllocator &,unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::SpatialModeler::SubmixRoutingOutput [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::SubmixRoutingOutput,Phase::HeapAllocator>(Phase::HeapAllocator &,unsigned long,unsigned long)::{lambda(Phase::SpatialModeler::SubmixRoutingOutput*)#1} const&>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, Phase **a4@<X8>)
{
  v16 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v12 = **(Phase::Logger::GetInstance(0) + 128);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v14 = 136315394;
      *&v14[4] = "ManagedPtr.hpp";
      *&v14[12] = 1024;
      *&v14[14] = 229;
      _os_log_impl(&dword_23A302000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [inCount == 0 is true]: Attempting to allocate an array of 0 elements", v14, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Attempting to allocate an array of 0 elements");
  }

  if (*(*a2 + 8))
  {
    v7 = *(*a2 + 8);
  }

  else
  {
    v7 = "<Unnamed>";
  }

  v8 = Phase::HeapAllocator::Allocate(*a2, 16 * **(a2 + 8), v7, 0, **(a2 + 16));
  v9 = v8;
  do
  {
    *v9 = -1;
    *(v9 + 1) = 0;
    v9 = (v9 + 16);
  }

  while (v9 != (v8 + 16 * a1));
  v10 = *a3;
  *v14 = &unk_284D36820;
  *&v14[8] = v10;
  v15 = v14;
  *a4 = v8;
  std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100]((a4 + 1), v14);
  return std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v14);
}

uint64_t std::__function::__func<std::unique_ptr<Phase::SpatialModeler::SubmixRoutingOutput [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::SubmixRoutingOutput,std::unique_ptr<Phase::SpatialModeler::SubmixRoutingOutput [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::SubmixRoutingOutput,Phase::HeapAllocator>(Phase::HeapAllocator &,unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::SpatialModeler::SubmixRoutingOutput [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::SubmixRoutingOutput,Phase::HeapAllocator>(Phase::HeapAllocator &,unsigned long,unsigned long)::{lambda(Phase::SpatialModeler::SubmixRoutingOutput*)#1} const&>(unsigned long,Phase::HeapAllocator&&,std::unique_ptr<Phase::SpatialModeler::SubmixRoutingOutput [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::SubmixRoutingOutput,Phase::HeapAllocator>(Phase::HeapAllocator &,unsigned long,unsigned long)::{lambda(Phase::SpatialModeler::SubmixRoutingOutput*)#1} const&)::{lambda(void *)#1},std::allocator<std::unique_ptr<Phase::SpatialModeler::SubmixRoutingOutput [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::SubmixRoutingOutput,std::unique_ptr<Phase::SpatialModeler::SubmixRoutingOutput [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::SubmixRoutingOutput,Phase::HeapAllocator>(Phase::HeapAllocator &,unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::SpatialModeler::SubmixRoutingOutput [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::SubmixRoutingOutput,Phase::HeapAllocator>(Phase::HeapAllocator &,unsigned long,unsigned long)::{lambda(Phase::SpatialModeler::SubmixRoutingOutput*)#1} const&>(unsigned long,Phase::HeapAllocator&&,std::unique_ptr<Phase::SpatialModeler::SubmixRoutingOutput [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::SubmixRoutingOutput,Phase::HeapAllocator>(Phase::HeapAllocator &,unsigned long,unsigned long)::{lambda(Phase::SpatialModeler::SubmixRoutingOutput*)#1} const&)::{lambda(void *)#1}>,void ()(void *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284D36820;
  a2[1] = v2;
  return result;
}

uint64_t Phase::AllocPackedSubbandArray<float,Phase::HeapAllocator>@<X0>(Phase::HeapAllocator *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, Phase **a4@<X8>)
{
  v11[4] = *MEMORY[0x277D85DE8];
  v7 = 4 * a2 * a3;
  if (*(a1 + 1))
  {
    v8 = *(a1 + 1);
  }

  else
  {
    v8 = "<Unnamed>";
  }

  v11[0] = &unk_284D36940;
  v11[1] = a1;
  v11[3] = v11;
  *a4 = Phase::HeapAllocator::Allocate(a1, v7 + 16, v8, 0, 8uLL);
  std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100]((a4 + 1), v11);
  result = std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v11);
  v10 = *a4;
  *v10 = a2;
  *(v10 + 1) = a3;
  return result;
}

uint64_t Phase::details::AllocArray<Phase::Vector<float,3ul>,std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Vector<float,3ul>,Phase::HeapAllocator>(Phase::HeapAllocator &,unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Vector<float,3ul>,Phase::HeapAllocator>(Phase::HeapAllocator &,unsigned long,unsigned long)::{lambda(Phase::Vector<float,3ul>*)#1} const&>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, Phase **a4@<X8>)
{
  v15 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v11 = **(Phase::Logger::GetInstance(0) + 128);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v13 = 136315394;
      *&v13[4] = "ManagedPtr.hpp";
      *&v13[12] = 1024;
      *&v13[14] = 229;
      _os_log_impl(&dword_23A302000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [inCount == 0 is true]: Attempting to allocate an array of 0 elements", v13, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Attempting to allocate an array of 0 elements");
  }

  if (*(*a2 + 8))
  {
    v7 = *(*a2 + 8);
  }

  else
  {
    v7 = "<Unnamed>";
  }

  v8 = Phase::HeapAllocator::Allocate(*a2, 12 * **(a2 + 8), v7, 0, **(a2 + 16));
  bzero(v8, 12 * ((12 * a1 - 12) / 0xCuLL) + 12);
  v9 = *a3;
  *v13 = &unk_284D36868;
  *&v13[8] = v9;
  v14 = v13;
  *a4 = v8;
  std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100]((a4 + 1), v13);
  return std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v13);
}

uint64_t std::__function::__func<std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Vector<float,3ul>,std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Vector<float,3ul>,Phase::HeapAllocator>(Phase::HeapAllocator &,unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Vector<float,3ul>,Phase::HeapAllocator>(Phase::HeapAllocator &,unsigned long,unsigned long)::{lambda(Phase::Vector<float,3ul>*)#1} const&>(unsigned long,Phase::HeapAllocator&&,std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Vector<float,3ul>,Phase::HeapAllocator>(Phase::HeapAllocator &,unsigned long,unsigned long)::{lambda(Phase::Vector<float,3ul>*)#1} const&)::{lambda(void *)#1},std::allocator<std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Vector<float,3ul>,std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Vector<float,3ul>,Phase::HeapAllocator>(Phase::HeapAllocator &,unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Vector<float,3ul>,Phase::HeapAllocator>(Phase::HeapAllocator &,unsigned long,unsigned long)::{lambda(Phase::Vector<float,3ul>*)#1} const&>(unsigned long,Phase::HeapAllocator&&,std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Vector<float,3ul>,Phase::HeapAllocator>(Phase::HeapAllocator &,unsigned long,unsigned long)::{lambda(Phase::Vector<float,3ul>*)#1} const&)::{lambda(void *)#1}>,void ()(void *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284D36868;
  a2[1] = v2;
  return result;
}

uint64_t Phase::details::AllocArray<float,std::unique_ptr<float [],std::function<void ()(void *)>> Phase::details::AllocArray<float,Phase::HeapAllocator>(Phase::HeapAllocator &,unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<float [],std::function<void ()(void *)>> Phase::details::AllocArray<float,Phase::HeapAllocator>(Phase::HeapAllocator &,unsigned long,unsigned long)::{lambda(float*)#1} const&>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, Phase **a4@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v10 = **(Phase::Logger::GetInstance(0) + 128);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v12 = 136315394;
      *&v12[4] = "ManagedPtr.hpp";
      *&v12[12] = 1024;
      *&v12[14] = 229;
      _os_log_impl(&dword_23A302000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [inCount == 0 is true]: Attempting to allocate an array of 0 elements", v12, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Attempting to allocate an array of 0 elements");
  }

  if (*(*a2 + 8))
  {
    v6 = *(*a2 + 8);
  }

  else
  {
    v6 = "<Unnamed>";
  }

  v7 = Phase::HeapAllocator::Allocate(*a2, 4 * **(a2 + 8), v6, 0, **(a2 + 16));
  v8 = *a3;
  *v12 = &unk_284D368B0;
  *&v12[8] = v8;
  v13 = v12;
  *a4 = v7;
  std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100]((a4 + 1), v12);
  return std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v12);
}

uint64_t std::__function::__func<std::unique_ptr<float [],std::function<void ()(void *)>> Phase::details::AllocArray<float,std::unique_ptr<float [],std::function<void ()(void *)>> Phase::details::AllocArray<float,Phase::HeapAllocator>(Phase::HeapAllocator &,unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<float [],std::function<void ()(void *)>> Phase::details::AllocArray<float,Phase::HeapAllocator>(Phase::HeapAllocator &,unsigned long,unsigned long)::{lambda(float*)#1} const&>(unsigned long,Phase::HeapAllocator&&,std::unique_ptr<float [],std::function<void ()(void *)>> Phase::details::AllocArray<float,Phase::HeapAllocator>(Phase::HeapAllocator &,unsigned long,unsigned long)::{lambda(float*)#1} const&)::{lambda(void *)#1},std::allocator<std::unique_ptr<float [],std::function<void ()(void *)>> Phase::details::AllocArray<float,std::unique_ptr<float [],std::function<void ()(void *)>> Phase::details::AllocArray<float,Phase::HeapAllocator>(Phase::HeapAllocator &,unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<float [],std::function<void ()(void *)>> Phase::details::AllocArray<float,Phase::HeapAllocator>(Phase::HeapAllocator &,unsigned long,unsigned long)::{lambda(float*)#1} const&>(unsigned long,Phase::HeapAllocator&&,std::unique_ptr<float [],std::function<void ()(void *)>> Phase::details::AllocArray<float,Phase::HeapAllocator>(Phase::HeapAllocator &,unsigned long,unsigned long)::{lambda(float*)#1} const&)::{lambda(void *)#1}>,void ()(void *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284D368B0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<std::unique_ptr<Phase::PackedSubbandArray<float>,std::function<void ()(void *)>> Phase::details::AllocMem<Phase::PackedSubbandArray<float>,Phase::HeapAllocator>(Phase::HeapAllocator &,unsigned long,unsigned long)::{lambda(void *)#1},std::allocator<std::unique_ptr<Phase::PackedSubbandArray<float>,std::function<void ()(void *)>> Phase::details::AllocMem<Phase::PackedSubbandArray<float>,Phase::HeapAllocator>(Phase::HeapAllocator &,unsigned long,unsigned long)::{lambda(void *)#1}>,void ()(void *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284D36940;
  a2[1] = v2;
  return result;
}

void Phase::SpatialModeler::PresetLateReverbErrorCategory::message(int a1@<W1>, uint64_t a2@<X8>)
{
  if (a1 >= 8)
  {
    std::terminate();
  }

  v4 = 19;
  strcpy(__p, "Preset late reverb ");
  Phase::SpatialModeler::ModelerErrorMessage(a1, __p, a2);
  if (v4 < 0)
  {
    operator delete(*__p);
  }
}

void sub_23A4B4F18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Phase::SpatialModeler::PresetLateReverbErrorCategory::~PresetLateReverbErrorCategory(std::error_category *this)
{
  std::error_category::~error_category(this);

  JUMPOUT(0x23EE864A0);
}

void Phase::SpatialModeler::PresetLateReverb::GetSupportedQueryDescs(void *a1@<X8>)
{
  v23 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(v6, "CULL");
  v7 = 0;
  v8 = 0x100000001;
  v9 = 1;
  v10 = 0u;
  v11 = 0u;
  std::string::basic_string[abi:ne200100]<0>(v12, "CLUSTER");
  v13 = 1;
  v14 = 0x200000003;
  v15 = 1;
  v16 = 0u;
  v17 = 0u;
  std::string::basic_string[abi:ne200100]<0>(v18, "SPATIAL");
  v19 = 2;
  v20 = 0x300000002;
  v21 = 1;
  memset(v22, 0, sizeof(v22));
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  std::vector<Phase::SpatialModeler::QueryDesc>::__init_with_size[abi:ne200100]<Phase::SpatialModeler::QueryDesc const*,Phase::SpatialModeler::QueryDesc const*>(a1, v6, &v23, 3uLL);
  for (i = 0; i != -15; i -= 5)
  {
    v4 = &v6[i * 16];
    v5 = *&v22[i];
    if (v5)
    {
      *(v4 + 27) = v5;
      operator delete(v5);
    }

    if (v4[183] < 0)
    {
      operator delete(*(v4 + 20));
    }
  }
}

void sub_23A4B50C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v31 = &a30;
  v32 = -240;
  do
  {
    Phase::SpatialModeler::QueryDesc::~QueryDesc(v31);
    v31 = (v33 - 80);
    v32 += 80;
  }

  while (v32);
  _Unwind_Resume(a1);
}

void Phase::SpatialModeler::PresetLateReverb::RunQuery(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v142 = *MEMORY[0x277D85DE8];
  v5 = a2[10];
  if (v5 == 2)
  {
    v26 = a2[11];
    if (v26 && *v26 == 2)
    {
      v27 = a2[12];
      if (v27 && *v27 == 3)
      {
        if (*(v26 + 208))
        {
          if (!a1)
          {
            goto LABEL_120;
          }

          v28 = (**a1)(a1);
LABEL_32:
          v29 = 6;
          goto LABEL_39;
        }

        v31 = a2[8];
        if (v31)
        {
          v32 = *(v31 + 208);
          v33 = *(v26 + 508);
          v128 = 0u;
          v129 = 0u;
          v130 = 0u;
          v131 = 0u;
          v132 = 0u;
          v133 = 0u;
          memset(v134, 0, 28);
          if (v33)
          {
            v34 = &v128;
            v35 = v26;
            v36 = v33;
            do
            {
              *v34++ = *(v35 + 384) - *(v35 + 64);
              v35 += 4;
              --v36;
            }

            while (v36);
            v140 = 0u;
            memset(v141, 0, 28);
            v138 = 0u;
            v139 = 0u;
            v136 = 0u;
            v137 = 0u;
            v37 = &v135;
            v38 = &v128;
            v135 = 0u;
            do
            {
              v39 = *v38++;
              *v37++ = fmaxf(v39, 0.0);
              --v33;
            }

            while (v33);
          }

          else
          {
            memset(v141, 0, sizeof(v141));
            v139 = 0uLL;
            v140 = 0uLL;
            v137 = 0uLL;
            v138 = 0uLL;
            v135 = 0uLL;
            v136 = 0uLL;
          }

          v88 = *(v26 + 8);
          if (v88)
          {
            v89 = 0.0;
            v90 = &v135;
            v91 = *(v26 + 8);
            do
            {
              v92 = *v90++;
              v93 = v92;
              if (v92 > v89)
              {
                v89 = v93;
              }

              --v91;
            }

            while (v91);
          }

          else
          {
            v89 = 0.0;
          }

          v94 = -v89;
          if (v32 != *(a1 + 1040))
          {
            v95 = **(a1 + 1024);
            v96 = exp(v94 * 10.0 / 10.0 * 0.115129255);
            Phase::SpatialModeler::ReverbPresetDatabase::Implementation::Query(v95, v32, 1, v88, &v128, v96);
            Phase::SpatialModeler::DirectionalMetadataOutput<float>::operator=(a1 + 1056, &v128);
            Phase::SpatialModeler::DirectionalMetadataOutput<float>::~DirectionalMetadataOutput(&v128);
          }

          v97 = *(a1 + 1104);
          if (v97)
          {
            Phase::SpatialModeler::AllocMetadata<float,Phase::HeapAllocator>(v27, (a1 + 40), v97, *(v26 + 8));
            v98 = *(a1 + 1104);
            if (v98)
            {
              v99 = 0;
              v100 = *(a1 + 1064);
              v101 = *(v27 + 8);
              v102 = *(a1 + 1112);
              v103 = *(v27 + 56);
              v104 = *(v27 + 104);
              v105 = (v104 + 16);
              v106 = *(v104 + 8);
              v107 = *(a1 + 1160);
              v108 = (v107 + 16);
              v109 = *(v107 + 8);
              v110 = *(v26 + 8);
              v111 = *(a1 + 1200);
              v112 = *(v27 + 144);
              v113 = 4 * v106;
              v114 = 4 * v109;
              do
              {
                v115 = (v100 + 12 * v99);
                v116 = (v101 + 12 * v99);
                *v116 = *v115;
                v116[1] = v115[1];
                v116[2] = v115[2];
                *(v103 + 4 * v99) = *(v102 + 4 * v99);
                v117 = v108;
                v118 = v105;
                for (i = v110; i; --i)
                {
                  v120 = *v117++;
                  *v118++ = v120;
                }

                *(v112 + v99) = *(v111 + v99);
                ++v99;
                v105 = (v105 + v113);
                v108 = (v108 + v114);
              }

              while (v99 != v98);
            }

            *(v27 + 201) = *(a1 + 1257);
            *(v27 + 204) = 0;
          }

          else
          {
            Phase::SpatialModeler::ClearMetadata<float>(v27);
          }

          v8 = 1;
          v121 = 1;
          if (v32 == *(a1 + 1040))
          {
            v121 = *(a1 + 1048) != v94;
          }

          *(v27 + 4) = v121;
          *(a1 + 1040) = v32;
          *(a1 + 1048) = v94;
          goto LABEL_40;
        }

LABEL_48:
        if (a1)
        {
          v28 = (**a1)(a1);
          v29 = 5;
          goto LABEL_39;
        }

        goto LABEL_120;
      }

LABEL_37:
      if (a1)
      {
        v28 = (**a1)(a1);
        v29 = 4;
        goto LABEL_39;
      }

LABEL_120:
      std::terminate();
    }

LABEL_33:
    if (!a1)
    {
      goto LABEL_120;
    }

    v28 = (**a1)(a1);
    v29 = 3;
LABEL_39:
    *a3 = v29;
    *(a3 + 8) = v28;
    v8 = 2;
    goto LABEL_40;
  }

  if (v5 == 1)
  {
    v9 = a2[11];
    if (v9 && *v9 == 3)
    {
      v10 = a2[12];
      if (v10 && *v10 == 2)
      {
        v11 = a2[8];
        if (v11)
        {
          v124 = a2[8];
          v12 = *(v11 + 208);
          v122 = *(a1 + 1032);
          *(a1 + 1032) = v12;
          if (*(a1 + 48))
          {
            v13 = *(a1 + 48);
          }

          else
          {
            v13 = "<Unnamed>";
          }

          v14 = Phase::HeapAllocator::Allocate((a1 + 40), 0x150uLL, v13, 0, 0x10uLL);
          v15 = v14;
          v16 = 0;
          *v14 = 0u;
          *(v14 + 1) = 0u;
          *(v14 + 8) = 0;
          *(v14 + 36) = 1065353216;
          *(v14 + 44) = 0;
          *(v14 + 13) = 1065353216;
          do
          {
            v17 = v14 + v16;
            *(v17 + 14) = 0;
            *(v17 + 8) = 0;
            v16 += 16;
          }

          while (v16 != 128);
          *(v14 + 23) = 0;
          *&v128 = 0;
          DWORD2(v128) = 0;
          Phase::Subbands<float>::Subbands(v14 + 192, &v128, 3);
          *(v15 + 320) = 0;
          *&v128 = &unk_284D367D8;
          *(&v128 + 1) = a1 + 40;
          *(&v129 + 1) = &v128;
          *&v135 = v15;
          std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](&v135 + 8, &v128);
          std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&v128);
          v18 = v135;
          *&v135 = 0;
          *&v128 = v18;
          std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](&v128 + 8, &v135 + 8);
          *(&v130 + 1) = 1;
          std::unique_ptr<Phase::SpatialModeler::RenderGroup [],std::function<void ()(void *)>>::reset[abi:ne200100](&v135);
          std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&v135 + 8);
          std::unique_ptr<Phase::SpatialModeler::RenderGroup [],std::function<void ()(void *)>>::operator=[abi:ne200100]((v10 + 8), &v128);
          *(v10 + 48) = *(&v130 + 1);
          std::unique_ptr<Phase::SpatialModeler::RenderGroup [],std::function<void ()(void *)>>::reset[abi:ne200100](&v128);
          std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&v128 + 8);
          if (*(a1 + 48))
          {
            v19 = *(a1 + 48);
          }

          else
          {
            v19 = "<Unnamed>";
          }

          v20 = Phase::HeapAllocator::Allocate((a1 + 40), 1uLL, v19, 0, 1uLL);
          *&v128 = &unk_284D368F8;
          *(&v128 + 1) = a1 + 40;
          *(&v129 + 1) = &v128;
          *&v135 = v20;
          std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](&v135 + 8, &v128);
          std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&v128);
          v21 = v135;
          *&v135 = 0;
          *&v128 = v21;
          std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](&v128 + 8, &v135 + 8);
          *(&v130 + 1) = 1;
          std::unique_ptr<BOOL [],std::function<void ()(void *)>>::reset[abi:ne200100](&v135);
          std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&v135 + 8);
          std::unique_ptr<BOOL [],std::function<void ()(void *)>>::operator=[abi:ne200100]((v10 + 56), &v128);
          *(v10 + 96) = *(&v130 + 1);
          std::unique_ptr<BOOL [],std::function<void ()(void *)>>::reset[abi:ne200100](&v128);
          std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&v128 + 8);
          if (*(v9 + 96))
          {
            v22 = v12 != v122;
            v23 = *(v9 + 56);
            v24 = *(v10 + 8);
            v25 = *v23;
            *(v24 + 16) = *(v23 + 2);
            *v24 = v25;
            *(v24 + 24) = *(v23 + 6);
            *(v24 + 28) = *(v23 + 7);
            *(v24 + 32) = *(v23 + 8);
            *(v24 + 36) = *(v23 + 9);
            *(v24 + 40) = *(v23 + 10);
            *(v24 + 44) = *(v23 + 11);
            *(v24 + 48) = *(v23 + 12);
            *(v24 + 52) = *(v23 + 13);
            memcpy((v24 + 56), v23 + 56, 0x109uLL);
          }

          else
          {
            MEMORY[0x23EE87040](&v128);
            **(v10 + 8) = v128;
            v22 = 1;
          }

          **(v10 + 56) = v22;
          *(*(v10 + 8) + 320) = 1;
          v40 = *(v9 + 144);
          if (v40)
          {
            v41 = 0;
            v42 = *(v9 + 104);
            v43 = (v42 + 16);
            v44 = -3.4028e38;
            do
            {
              v45 = *(v42 + 304 * v41 + 140);
              v46 = v43;
              if (v45)
              {
                do
                {
                  v47 = *v46++;
                  v48 = v47;
                  if (v47 > v44)
                  {
                    v44 = v48;
                  }

                  --v45;
                }

                while (v45);
              }

              ++v41;
              v43 += 76;
            }

            while (v41 != v40);
          }

          else
          {
            v44 = -3.4028e38;
          }

          *&v135 = v44;
          *(&v135 + 1) = v44;
          *(&v135 + 2) = v44;
          Phase::Subbands<float>::Subbands(&v128, &v135, 3);
          v49 = *(v10 + 8);
          v50 = v133;
          v49[16] = v132;
          v49[17] = v50;
          v51 = v134[1];
          v49[18] = v134[0];
          v49[19] = v51;
          v52 = v129;
          v49[12] = v128;
          v49[13] = v52;
          v53 = v131;
          v49[14] = v130;
          v49[15] = v53;
          v54 = *(v9 + 152);
          if (*(v124 + 184) <= v54 || (v55 = *(v124 + 168) + 24 * v54, *(v55 + 20) != HIDWORD(v54)) || (v56 = *v55) == 0 || *v56 != 2)
          {
            if (a1)
            {
              v28 = (**a1)(a1);
              v29 = 7;
              goto LABEL_39;
            }

            goto LABEL_120;
          }

          v57 = *(v9 + 144);
          v126 = 8;
          v127 = v57;
          *&v128 = a1 + 40;
          *(&v128 + 1) = &v127;
          *&v129 = &v126;
          v125 = a1 + 40;
          Phase::details::AllocArray<Phase::SpatialModeler::SubmixRoutingOutput,std::unique_ptr<Phase::SpatialModeler::SubmixRoutingOutput [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::SubmixRoutingOutput,Phase::HeapAllocator>(Phase::HeapAllocator &,unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::SpatialModeler::SubmixRoutingOutput [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::SubmixRoutingOutput,Phase::HeapAllocator>(Phase::HeapAllocator &,unsigned long,unsigned long)::{lambda(Phase::SpatialModeler::SubmixRoutingOutput*)#1} const&>(v57, &v128, &v125, &v135);
          v58 = v135;
          *&v135 = 0;
          *&v128 = v58;
          std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](&v128 + 8, &v135 + 8);
          *(&v130 + 1) = v57;
          std::unique_ptr<Phase::SpatialModeler::SubmixRoutingOutput [],std::function<void ()(void *)>>::reset[abi:ne200100](&v135);
          std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&v135 + 8);
          std::unique_ptr<Phase::SpatialModeler::SubmixRoutingOutput [],std::function<void ()(void *)>>::operator=[abi:ne200100]((v10 + 104), &v128);
          *(v10 + 144) = *(&v130 + 1);
          std::unique_ptr<Phase::SpatialModeler::SubmixRoutingOutput [],std::function<void ()(void *)>>::reset[abi:ne200100](&v128);
          std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&v128 + 8);
          v59 = *(v10 + 144);
          if (!v59)
          {
            goto LABEL_9;
          }

          v60 = 0;
          v61 = 0;
          v62 = 0;
          v63 = *(v10 + 104);
          v64 = v124;
          while (1)
          {
            *(v63 + v61) = 0;
            v65 = *(v9 + 104);
            v66 = *(v65 + v60 + 144);
            if (*(v64 + 184) <= v66)
            {
              break;
            }

            v67 = *(v64 + 168) + 24 * v66;
            if (*(v67 + 20) != HIDWORD(v66))
            {
              break;
            }

            v68 = *v67;
            if (!*v67 || *v68 != 3)
            {
              break;
            }

            v69 = *(v68 + 120);
            v70 = 0.0;
            if (v69 != *(v68 + 128))
            {
              v71 = *v69;
              if (*(v64 + 160) > v71)
              {
                v72 = *(v64 + 144) + 24 * v71;
                if (*(v72 + 20) == HIDWORD(v71))
                {
                  if (*v72)
                  {
                    v73 = *v72;
                    v70 = (*(v68 + 76) * fmaxf(fmaxf(v73[9] - v73[6], v73[10] - v73[7]), v73[11] - v73[8])) * 0.5;
                  }
                }
              }
            }

            v74 = v65 + v60;
            if (*(v74 + 176) == 1)
            {
              v75 = *(v74 + 184);
            }

            else
            {
              v75 = 0;
            }

            if (*(v64 + 88) > v75 && (v76 = *(v64 + 72) + 24 * v75, *(v76 + 20) == HIDWORD(v75)) && (v77 = *v76) != 0)
            {
              v78 = *(v56 + 64) - *(v68 + 64);
              v79 = *(v56 + 68) - *(v68 + 68);
              v80 = sqrtf(((v78 * v78) + (v79 * v79)) + ((*(v56 + 72) - *(v68 + 72)) * (*(v56 + 72) - *(v68 + 72))));
              v81 = *(v56 + 152);
              v82 = fmaxf(v81, v70 + (v80 - v70));
              if (*v77 == 2)
              {
                v85 = **(v77 + 40);
                if (!v85)
                {
                  goto LABEL_120;
                }

                v86 = Phase::Envelope<float>::operator()((v85 + 16), v82);
                if (v86 <= 0.0)
                {
                  v86 = COERCE_FLOAT(1);
                }

                v83 = ((logf(v86) * 8.6859) / 10.0) * 10.0;
                v63 = *(v10 + 104);
                v59 = *(v10 + 144);
                v64 = v124;
              }

              else
              {
                v83 = 0.0;
                if (*v77 == 1)
                {
                  v123 = v59;
                  v84 = **(v77 + 40);
                  if (!v84)
                  {
                    goto LABEL_120;
                  }

                  v83 = ((log2f(v82 / (v70 + 1.0)) * 6.0206) * -0.5) * *(v84 + 16);
                  v59 = v123;
                  v64 = v124;
                }
              }

              v87 = v83;
              if (v83 > 0.0)
              {
                v87 = 0.0;
              }

              *(v63 + v61 + 8) = v87;
            }

            else
            {
              *(v63 + v61 + 8) = 0;
            }

            ++v62;
            v61 += 16;
            v60 += 304;
            v8 = 1;
            if (v62 >= v59)
            {
              goto LABEL_40;
            }
          }

          if (!a1)
          {
            goto LABEL_120;
          }

          v28 = (**a1)(a1);
          goto LABEL_32;
        }

        goto LABEL_48;
      }

      goto LABEL_37;
    }

    goto LABEL_33;
  }

  if (v5)
  {
    if (a1)
    {
      v30 = (**a1)(a1);
      *a3 = 2;
      *(a3 + 8) = v30;
      *(a3 + 24) = 2;
      return;
    }

    goto LABEL_120;
  }

  v6 = a2[11];
  if (!v6 || *v6 != 1)
  {
    goto LABEL_33;
  }

  v7 = a2[12];
  if (!v7 || *v7 != 1)
  {
    goto LABEL_37;
  }

  v7[2] = 0;
LABEL_9:
  v8 = 1;
LABEL_40:
  *(a3 + 24) = v8;
}

void sub_23A4B5CFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  Phase::SpatialModeler::DirectionalMetadataOutput<float>::~DirectionalMetadataOutput(va);
  _Unwind_Resume(a1);
}

std::string *Phase::SpatialModeler::PresetLateReverb::GetGraphDescription@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  if (a1 == 2)
  {
    std::string::__assign_external(a2, "PresetLateReverbSpatialQueryGraph", 0x21uLL);
    std::vector<Phase::SpatialModeler::GraphDescriptionNode>::resize((a2 + 24), 1uLL);
    v4 = *(a2 + 24);
    result = std::string::__assign_external(v4, "FullPresetLateReverbSpatialGraph", 0x20uLL);
  }

  else if (a1 == 1)
  {
    std::string::__assign_external(a2, "PresetLateReverbClusterQueryGraph", 0x21uLL);
    std::vector<Phase::SpatialModeler::GraphDescriptionNode>::resize((a2 + 24), 1uLL);
    v4 = *(a2 + 24);
    result = std::string::__assign_external(v4, "FullPresetLateReverbClusterGraph", 0x20uLL);
  }

  else
  {
    if (a1)
    {
      return result;
    }

    std::string::__assign_external(a2, "PresetLateReverbCullQueryGraph", 0x1EuLL);
    std::vector<Phase::SpatialModeler::GraphDescriptionNode>::resize((a2 + 24), 1uLL);
    v4 = *(a2 + 24);
    result = std::string::__assign_external(v4, "FullPresetLateReverbCullGraph", 0x1DuLL);
  }

  v4[1].__r_.__value_.__r.__words[0] = 0xFFFFFFFFLL;
  return result;
}

void Phase::SpatialModeler::PresetLateReverb::~PresetLateReverb(Phase::SpatialModeler::PresetLateReverb *this)
{
  *this = &unk_284D369D0;
  v2 = (this + 40);
  std::unique_ptr<BOOL [],std::function<void ()(void *)>>::reset[abi:ne200100](this + 150);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](this + 1208);
  std::unique_ptr<Phase::PackedSubbandArray<float>,std::function<void ()(void *)>>::reset[abi:ne200100](this + 145, 0);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](this + 1168);
  std::unique_ptr<float [],std::function<void ()(void *)>>::reset[abi:ne200100](this + 139);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](this + 1120);
  std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::reset[abi:ne200100](this + 133);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](this + 1072);
  Phase::HeapAllocator::Destroy(v2);
  std::error_category::~error_category(this + 4);
  *this = &unk_284D2F570;
  std::error_category::~error_category(this + 1);
}

{
  *this = &unk_284D369D0;
  v2 = (this + 40);
  std::unique_ptr<BOOL [],std::function<void ()(void *)>>::reset[abi:ne200100](this + 150);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](this + 1208);
  std::unique_ptr<Phase::PackedSubbandArray<float>,std::function<void ()(void *)>>::reset[abi:ne200100](this + 145, 0);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](this + 1168);
  std::unique_ptr<float [],std::function<void ()(void *)>>::reset[abi:ne200100](this + 139);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](this + 1120);
  std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::reset[abi:ne200100](this + 133);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](this + 1072);
  Phase::HeapAllocator::Destroy(v2);
  std::error_category::~error_category(this + 4);
  *this = &unk_284D2F570;
  std::error_category::~error_category(this + 1);

  JUMPOUT(0x23EE864A0);
}

uint64_t Phase::Controller::PreSpatialTapSourceObject::PreSpatialTapSourceObject(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a1 + 8) = a3;
  *(a1 + 16) = 0;
  *a1 = &unk_284D36A40;
  *(a1 + 40) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = a1 + 40;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = a1 + 64;
  *(a1 + 96) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = a1 + 88;
  MEMORY[0x23EE87040](&v18);
  *(a1 + 104) = v18;
  *(a1 + 120) = a4;
  *(a1 + 128) = a5;
  *(a1 + 136) = a6;
  *(a1 + 144) = a7;
  std::__function::__value_func<void ()(float *,unsigned long)>::__value_func[abi:ne200100](a1 + 152, a8);
  *(a1 + 184) = 0;
  v14 = [objc_alloc(MEMORY[0x277CB8368]) initWithLayoutTag:6553601];
  v15 = [objc_alloc(MEMORY[0x277CB83A8]) initWithCommonFormat:1 sampleRate:0 interleaved:v14 channelLayout:48000.0];
  v16 = *(a1 + 16);
  *(a1 + 16) = v15;

  return a1;
}

void sub_23A4B6114(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(float *,unsigned long)>::~__value_func[abi:ne200100](v1 + 152);
  std::__tree<std::pair<Phase::Controller::DVM23::Voice *,unsigned int>>::destroy(*(v1 + 88));
  std::__tree<std::pair<Phase::Controller::DVM23::Voice *,unsigned int>>::destroy(*(v1 + 64));
  std::__tree<std::pair<Phase::Controller::DVM23::Voice *,unsigned int>>::destroy(*(v1 + 40));

  _Unwind_Resume(a1);
}

void Phase::Controller::PreSpatialTapSourceObject::~PreSpatialTapSourceObject(Phase::Controller::PreSpatialTapSourceObject *this)
{
  v16 = *MEMORY[0x277D85DE8];
  Phase::Controller::PreSpatialTapSourceObject::UnregisterTap(this);
  v3 = **(Phase::Logger::GetInstance(v2) + 960);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(this + 13);
    v5 = GetTapTypeString(*(this + 18));
    v6 = 136316162;
    v7 = "PreSpatialTap.mm";
    v8 = 1024;
    v9 = 44;
    v10 = 2048;
    v11 = this;
    v12 = 2048;
    v13 = v4;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_23A302000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d pre-spatialTap@%p: tapId %llu, type %@ destroyed!", &v6, 0x30u);
  }

  std::__function::__value_func<void ()(float *,unsigned long)>::~__value_func[abi:ne200100](this + 152);
  std::__tree<std::pair<Phase::Controller::DVM23::Voice *,unsigned int>>::destroy(*(this + 11));
  std::__tree<std::pair<Phase::Controller::DVM23::Voice *,unsigned int>>::destroy(*(this + 8));
  std::__tree<std::pair<Phase::Controller::DVM23::Voice *,unsigned int>>::destroy(*(this + 5));
}

{
  Phase::Controller::PreSpatialTapSourceObject::~PreSpatialTapSourceObject(this);

  JUMPOUT(0x23EE864A0);
}

void sub_23A4B6298(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void Phase::Controller::PreSpatialTapSourceObject::UnregisterTap(Phase::Controller::PreSpatialTapSourceObject *this)
{
  v15 = *MEMORY[0x277D85DE8];
  if (*(this + 184))
  {
    if (!Phase::Controller::DVM23::DvmAdapter::RemoveTap(*(this + 16), *(this + 13), *(this + 14)))
    {
      *(this + 184) = 0;
    }
  }

  else
  {
    v2 = **(Phase::Logger::GetInstance(this) + 960);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = *(this + 13);
      v4 = GetTapTypeString(*(this + 18));
      v5 = 136316162;
      v6 = "PreSpatialTap.mm";
      v7 = 1024;
      v8 = 107;
      v9 = 2048;
      v10 = this;
      v11 = 2048;
      v12 = v3;
      v13 = 2112;
      v14 = v4;
      _os_log_impl(&dword_23A302000, v2, OS_LOG_TYPE_ERROR, "%25s:%-5d pre-spatialTap@%p: trying to unregister a not registered tapId %llu, type %@", &v5, 0x30u);
    }
  }
}

void Phase::Controller::PreSpatialTapSourceObject::UnregisterTapsAndReset(Phase::Controller::PreSpatialTapSourceObject *this)
{
  v1 = this;
  Phase::Controller::PreSpatialTapSourceObject::UnregisterTap(this);
  std::__tree<std::pair<Phase::Controller::DVM23::Voice *,unsigned int>>::destroy(*(v1 + 11));
  *(v1 + 10) = v1 + 88;
  *(v1 + 12) = 0;
  *(v1 + 11) = 0;
  v2 = (v1 + 40);
  std::__tree<std::pair<Phase::Controller::DVM23::Voice *,unsigned int>>::destroy(*(v1 + 5));
  v3 = *(v1 + 8);
  v1 = (v1 + 64);
  *(v1 - 4) = v2;
  *v2 = 0;
  *(v1 - 2) = 0;
  std::__tree<std::pair<Phase::Controller::DVM23::Voice *,unsigned int>>::destroy(v3);
  *v1 = 0;
  *(v1 + 1) = 0;
  *(v1 - 1) = v1;
}

void Phase::Controller::PreSpatialTapSourceObject::RegisterTap(Phase::Controller::PreSpatialTapSourceObject *this)
{
  v38 = *MEMORY[0x277D85DE8];
  if (*(this + 184) == 1)
  {
    v2 = **(Phase::Logger::GetInstance(this) + 960);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(this + 13);
      v4 = GetTapTypeString(*(this + 18));
      *buf = 136316162;
      *&buf[4] = "PreSpatialTap.mm";
      *&buf[12] = 1024;
      *&buf[14] = 60;
      v29 = 2048;
      v30 = this;
      v31 = 2048;
      v32 = v3;
      v33 = 2112;
      v34 = v4;
      _os_log_impl(&dword_23A302000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d pre-spatialTap@%p: tapId %llu, type %@ already registered", buf, 0x30u);
    }
  }

  else
  {
    v5 = *(this + 16);
    v6 = *(this + 13);
    v7 = *(this + 14);
    std::__function::__value_func<void ()(float *,unsigned long)>::__value_func[abi:ne200100](v37, this + 152);
    LODWORD(v5) = Phase::Controller::DVM23::DvmAdapter::AddTap(v5, v6, v7);
    std::__function::__value_func<void ()(float *,unsigned long)>::~__value_func[abi:ne200100](v37);
    if (v5 == 5)
    {
      v8 = MEMORY[0x23EE87040](buf);
      v9 = *buf;
      v10 = *&buf[8];
      v11 = **(Phase::Logger::GetInstance(v8) + 960);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(this + 13);
        v13 = GetTapTypeString(*(this + 18));
        *buf = 136316418;
        *&buf[4] = "PreSpatialTap.mm";
        *&buf[12] = 1024;
        *&buf[14] = 70;
        v29 = 2048;
        v30 = this;
        v31 = 2048;
        v32 = v12;
        v33 = 2112;
        v34 = v13;
        v35 = 2048;
        v36 = v9;
        _os_log_impl(&dword_23A302000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d pre-spatialTap@%p: tapId %llu, type %@ already registered, trying with new id %llu", buf, 0x3Au);
      }

      v14 = *(this + 16);
      std::__function::__value_func<void ()(float *,unsigned long)>::__value_func[abi:ne200100](v27, this + 152);
      LODWORD(v14) = Phase::Controller::DVM23::DvmAdapter::AddTap(v14, v9, v10);
      v15 = std::__function::__value_func<void ()(float *,unsigned long)>::~__value_func[abi:ne200100](v27);
      if (v14)
      {
        v16 = **(Phase::Logger::GetInstance(v15) + 960);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = *(this + 13);
          v18 = GetTapTypeString(*(this + 18));
          *buf = 136316162;
          *&buf[4] = "PreSpatialTap.mm";
          *&buf[12] = 1024;
          *&buf[14] = 82;
          v29 = 2048;
          v30 = this;
          v31 = 2048;
          v32 = v17;
          v33 = 2112;
          v34 = v18;
          _os_log_impl(&dword_23A302000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d pre-spatialTap@%p: unable to register tapId %llu, type %@", buf, 0x30u);
        }
      }

      else
      {
        v19 = *(this + 11);
        *(this + 13) = v9;
        *(this + 14) = v10;
        std::__tree<std::pair<Phase::Controller::DVM23::Voice *,unsigned int>>::destroy(v19);
        *(this + 11) = 0;
        *(this + 12) = 0;
        *(this + 10) = this + 88;
        v16 = **(Phase::Logger::GetInstance(v20) + 960);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v21 = *(this + 13);
          v22 = GetTapTypeString(*(this + 18));
          *buf = 136316162;
          *&buf[4] = "PreSpatialTap.mm";
          *&buf[12] = 1024;
          *&buf[14] = 77;
          v29 = 2048;
          v30 = this;
          v31 = 2048;
          v32 = v21;
          v33 = 2112;
          v34 = v22;
          _os_log_impl(&dword_23A302000, v16, OS_LOG_TYPE_DEFAULT, "%25s:%-5d pre-spatialTap@%p: registered tapId %llu, type %@", buf, 0x30u);
        }
      }
    }

    v23 = Phase::Controller::DVM23::DvmAdapter::ConfigureTap(*(this + 16), *(this + 13), *(this + 14), 1u, atomic_fetch_add(*(this + 3), 1uLL), 4096);
    if (v23)
    {
      v24 = **(Phase::Logger::GetInstance(v23) + 960);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = *(this + 13);
        v26 = GetTapTypeString(*(this + 18));
        *buf = 136316162;
        *&buf[4] = "PreSpatialTap.mm";
        *&buf[12] = 1024;
        *&buf[14] = 98;
        v29 = 2048;
        v30 = this;
        v31 = 2048;
        v32 = v25;
        v33 = 2112;
        v34 = v26;
        _os_log_impl(&dword_23A302000, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d pre-spatialTap@%p: unable to configure tapId %llu with type %@", buf, 0x30u);
      }
    }

    else
    {
      *(this + 184) = 1;
    }
  }
}

void *Phase::Controller::PreSpatialTapSourceObject::AddMixer(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v4[0] = a2;
  v4[1] = a3;
  result = std::__tree<Phase::UniqueObjectId>::__find_equal<Phase::UniqueObjectId>(a1 + 56, &v5, v4);
  if (!*result)
  {
    operator new();
  }

  return result;
}

void Phase::Controller::PreSpatialTapSourceObject::RemoveSource(Phase::Controller::PreSpatialTapSourceObject *this, Handle64 a2)
{
  v4 = (this + 40);
  v3 = *(this + 5);
  if (v3)
  {
    v5 = v4;
    v6 = v3;
    do
    {
      v7 = v6[4];
      v8 = v7 >= a2.mData;
      v9 = v7 < a2.mData;
      if (v8)
      {
        v5 = v6;
      }

      v6 = v6[v9];
    }

    while (v6);
    if (v5 != v4 && v5[4] <= a2.mData)
    {
      v10 = v5[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        v12 = v5;
        do
        {
          v11 = v12[2];
          v13 = *v11 == v12;
          v12 = v11;
        }

        while (!v13);
      }

      if (*(this + 4) == v5)
      {
        *(this + 4) = v11;
      }

      --*(this + 6);
      std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v3, v5);

      operator delete(v5);
    }
  }
}

void Phase::Controller::PreSpatialTapSourceObject::Update(Phase::Controller::PreSpatialTapSourceObject *this)
{
  if (*(this + 184) == 1)
  {
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v44 = 0;
    v45 = 0;
    v43 = &v44;
    if (&v43 != (this + 56) && *(this + 7) != (this + 64))
    {
      operator new();
    }

    v2 = 0;
    v3 = *(this + 4);
    v4 = this + 40;
    if (v3 != this + 40)
    {
      do
      {
        Phase::Controller::SubmixSystem::GetSubmixesForSource(*(this + 17), *(v3 + 4), &v43);
        v5 = *(v3 + 1);
        if (v5)
        {
          do
          {
            v6 = v5;
            v5 = *v5;
          }

          while (v5);
        }

        else
        {
          do
          {
            v6 = *(v3 + 2);
            v7 = *v6 == v3;
            v3 = v6;
          }

          while (!v7);
        }

        v3 = v6;
      }

      while (v6 != v4);
      v2 = v45;
    }

    if (v2 <= *(this + 12))
    {
      v8 = *(this + 12);
    }

    else
    {
      v8 = v2;
    }

    std::vector<Phase::UniqueObjectId>::resize(&v49, v8);
    std::vector<Phase::UniqueObjectId>::resize(&v46, v8);
    v9 = *(this + 10);
    v42[0] = v43;
    __p[0] = &v44;
    v39 = v9;
    __src = this + 88;
    v52[0] = v49;
    v10 = std::__set_difference[abi:ne200100]<std::__less<void,void>,std::__tree_const_iterator<Phase::UniqueObjectId,std::__tree_node<Phase::UniqueObjectId,void *> *,long> &,std::__tree_const_iterator<Phase::UniqueObjectId,std::__tree_node<Phase::UniqueObjectId,void *> *,long> &,std::__tree_const_iterator<Phase::UniqueObjectId,std::__tree_node<Phase::UniqueObjectId,void *> *,long> &,std::__tree_const_iterator<Phase::UniqueObjectId,std::__tree_node<Phase::UniqueObjectId,void *> *,long> &,std::__wrap_iter<Phase::UniqueObjectId*> &>(v42, __p, &v39, &__src, v52);
    v42[0] = *(this + 10);
    __p[0] = this + 88;
    v39 = v43;
    __src = &v44;
    v52[0] = v46;
    v11 = std::__set_difference[abi:ne200100]<std::__less<void,void>,std::__tree_const_iterator<Phase::UniqueObjectId,std::__tree_node<Phase::UniqueObjectId,void *> *,long> &,std::__tree_const_iterator<Phase::UniqueObjectId,std::__tree_node<Phase::UniqueObjectId,void *> *,long> &,std::__tree_const_iterator<Phase::UniqueObjectId,std::__tree_node<Phase::UniqueObjectId,void *> *,long> &,std::__tree_const_iterator<Phase::UniqueObjectId,std::__tree_node<Phase::UniqueObjectId,void *> *,long> &,std::__wrap_iter<Phase::UniqueObjectId*> &>(v42, __p, &v39, &__src, v52);
    std::vector<Phase::UniqueObjectId>::resize(&v49, (v10 - v49) >> 4);
    std::vector<Phase::UniqueObjectId>::resize(&v46, (v11 - v46) >> 4);
    for (i = v49; i != v50; i += 2)
    {
      v13 = *(this + 15);
      Submix = Phase::Controller::SubmixSystem::GetSubmix(*(this + 17), *i, i[1]);
      if ((Phase::Controller::Submix::ExcludeFromTapBinding(Submix, v13) & 1) == 0)
      {
        v15 = Phase::Controller::SubmixSystem::GetSubmix(*(this + 17), *i, i[1]);
        (*(*v15 + 272))(v42);
        LOBYTE(v39) = 0;
        std::vector<char>::vector[abi:ne200100](__p, 32);
        v16 = __p[0];
        *__p[0] = 6553601;
        v16[2] = 0;
        Phase::ChannelLayout::GetCrossmixMatrix(v42, __p, &v39);
        __src = 0;
        v37 = 0;
        v38 = 0;
        v17 = v39;
        if (v40 != v39)
        {
          v18 = 0;
          v19 = 0;
          v20 = 0;
          do
          {
            v21 = &v17[v18];
            v22 = *v21;
            if (v21[1] - *v21 != 4)
            {
              std::terminate();
            }

            if (v19 >= v38)
            {
              v23 = __src;
              v24 = v19 - __src;
              v25 = (v19 - __src) >> 2;
              v26 = v25 + 1;
              if ((v25 + 1) >> 62)
              {
                std::vector<float>::__throw_length_error[abi:ne200100]();
              }

              v27 = v38 - __src;
              if ((v38 - __src) >> 1 > v26)
              {
                v26 = v27 >> 1;
              }

              if (v27 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v28 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v28 = v26;
              }

              if (v28)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(&__src, v28);
              }

              v29 = v25;
              v30 = (4 * v25);
              v31 = *v22;
              v32 = &v30[-v29];
              *v30 = v31;
              v19 = (v30 + 1);
              memcpy(v32, v23, v24);
              v33 = __src;
              __src = v32;
              v37 = v19;
              v38 = 0;
              if (v33)
              {
                operator delete(v33);
              }
            }

            else
            {
              *v19 = *v22;
              v19 += 4;
            }

            v37 = v19;
            ++v20;
            v17 = v39;
            v18 += 3;
          }

          while (0xAAAAAAAAAAAAAAABLL * (v40 - v39) > v20);
        }

        v34 = Phase::Controller::DVM23::DvmAdapter::AddSubmixToTap(*(this + 16), *(this + 13), *(this + 14), *i, i[1], &__src);
        if (v34 == 5 || !v34)
        {
          std::__tree<Phase::UniqueObjectId>::__emplace_unique_key_args<Phase::UniqueObjectId,Phase::UniqueObjectId const&>(this + 80, i);
        }

        if (__src)
        {
          v37 = __src;
          operator delete(__src);
        }

        __src = &v39;
        std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&__src);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        if (v42[0])
        {
          v42[1] = v42[0];
          operator delete(v42[0]);
        }
      }
    }

    for (j = v46; j != v47; j += 2)
    {
      std::__tree<Phase::UniqueObjectId>::__erase_unique<Phase::UniqueObjectId>(this + 10, *j, j[1]);
      Phase::Controller::DVM23::DvmAdapter::RemoveSubmixFromTap(*(this + 16), *(this + 13), *(this + 14), *j, j[1]);
    }

    std::__tree<std::pair<Phase::Controller::DVM23::Voice *,unsigned int>>::destroy(v44);
    if (v46)
    {
      v47 = v46;
      operator delete(v46);
    }

    if (v49)
    {
      v50 = v49;
      operator delete(v49);
    }
  }
}

void sub_23A4B70FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, void *__p, uint64_t a26)
{
  std::__tree<std::pair<Phase::Controller::DVM23::Voice *,unsigned int>>::destroy(a23);
  if (__p)
  {
    operator delete(__p);
  }

  v28 = *(v26 - 136);
  if (v28)
  {
    *(v26 - 128) = v28;
    operator delete(v28);
  }

  _Unwind_Resume(a1);
}

_OWORD *std::__set_difference[abi:ne200100]<std::__less<void,void>,std::__tree_const_iterator<Phase::UniqueObjectId,std::__tree_node<Phase::UniqueObjectId,void *> *,long> &,std::__tree_const_iterator<Phase::UniqueObjectId,std::__tree_node<Phase::UniqueObjectId,void *> *,long> &,std::__tree_const_iterator<Phase::UniqueObjectId,std::__tree_node<Phase::UniqueObjectId,void *> *,long> &,std::__tree_const_iterator<Phase::UniqueObjectId,std::__tree_node<Phase::UniqueObjectId,void *> *,long> &,std::__wrap_iter<Phase::UniqueObjectId*> &>(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  while (1)
  {
    v5 = *a1;
    v6 = *a2;
    if (*a1 == *a2)
    {
      return *a5;
    }

    v7 = *a3;
    if (*a3 == *a4)
    {
      break;
    }

    v9 = v5[4];
    v8 = v5[5];
    v11 = v7[4];
    v10 = v7[5];
    v12 = v9 < v11;
    if (v8 != v10)
    {
      v12 = v8 < v10;
    }

    if (v12)
    {
      **a5 = *(v5 + 2);
      v13 = *a1;
      v14 = *(*a1 + 8);
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = v13[2];
          v16 = *v15 == v13;
          v13 = v15;
        }

        while (!v16);
      }

      *a1 = v15;
      *a5 += 16;
    }

    else
    {
      v17 = v11 < v9;
      if (v8 != v10)
      {
        v17 = v10 < v8;
      }

      if (v17)
      {
        v18 = v7[1];
        if (v18)
        {
          do
          {
            v19 = v18;
            v18 = *v18;
          }

          while (v18);
        }

        else
        {
          do
          {
            v19 = v7[2];
            v16 = *v19 == v7;
            v7 = v19;
          }

          while (!v16);
        }

        *a3 = v19;
      }

      else
      {
        v20 = v5[1];
        if (v20)
        {
          do
          {
            v21 = v20;
            v20 = *v20;
          }

          while (v20);
        }

        else
        {
          do
          {
            v21 = v5[2];
            v16 = *v21 == v5;
            v5 = v21;
          }

          while (!v16);
        }

        *a1 = v21;
        v22 = *a3;
        v23 = *(*a3 + 8);
        if (v23)
        {
          do
          {
            v24 = v23;
            v23 = *v23;
          }

          while (v23);
        }

        else
        {
          do
          {
            v24 = v22[2];
            v16 = *v24 == v22;
            v22 = v24;
          }

          while (!v16);
        }

        *a3 = v24;
      }
    }
  }

  result = *a5;
  if (v5 != v6)
  {
    do
    {
      *result = *(v5 + 2);
      v26 = v5[1];
      if (v26)
      {
        do
        {
          v27 = v26;
          v26 = *v26;
        }

        while (v26);
      }

      else
      {
        do
        {
          v27 = v5[2];
          v16 = *v27 == v5;
          v5 = v27;
        }

        while (!v16);
      }

      ++result;
      v5 = v27;
    }

    while (v27 != v6);
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(float *,unsigned long)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t std::__function::__value_func<void ()(float *,unsigned long)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__tree<Phase::UniqueObjectId>::__erase_unique<Phase::UniqueObjectId>(uint64_t **a1, unint64_t a2, unint64_t a3)
{
  v5 = (a1 + 1);
  v4 = a1[1];
  if (v4)
  {
    v6 = v5;
    v7 = v4;
    do
    {
      v8 = v7[5];
      v10 = v8 == a3;
      v9 = v8 < a3;
      if (v10)
      {
        v9 = v7[4] < a2;
      }

      v10 = !v9;
      v11 = v9;
      if (v10)
      {
        v6 = v7;
      }

      v7 = v7[v11];
    }

    while (v7);
    if (v6 != v5)
    {
      v12 = v6[5];
      v10 = v12 == a3;
      v13 = v12 > a3;
      if (v10)
      {
        v13 = v6[4] > a2;
      }

      if (!v13)
      {
        v14 = v6[1];
        if (v14)
        {
          do
          {
            v15 = v14;
            v14 = *v14;
          }

          while (v14);
        }

        else
        {
          v16 = v6;
          do
          {
            v15 = v16[2];
            v10 = *v15 == v16;
            v16 = v15;
          }

          while (!v10);
        }

        if (*a1 == v6)
        {
          *a1 = v15;
        }

        a1[2] = (a1[2] - 1);
        std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v4, v6);

        operator delete(v6);
      }
    }
  }
}

void Phase::Controller::DVM23::PreSpatialTapController::~PreSpatialTapController(Phase::Controller::DVM23::PreSpatialTapController *this)
{
  *this = &unk_284D36AB8;
  v2 = *(this + 15);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__tree<std::shared_ptr<float>>::destroy(*(this + 12));
  std::__function::__value_func<void ()(float *,unsigned long)>::~__value_func[abi:ne200100](this + 40);
}

{
  Phase::Controller::DVM23::PreSpatialTapController::~PreSpatialTapController(this);

  JUMPOUT(0x23EE864A0);
}

uint64_t Phase::Controller::DVM23::PreSpatialTapController::ConfigureTapGraph(Phase::Controller::DVM23::PreSpatialTapController *this, int64x2_t *a2, unint64_t a3, uint64_t a4)
{
  v10[5] = *MEMORY[0x277D85DE8];
  v10[0] = a3;
  v7 = Phase::Controller::DVM23::DspVoiceManager23::AddVoice(a2, v10, 0x1EuLL);
  if (!v7)
  {
    v8 = v10[0];
    *(this + 10) = v10[0];
    v7 = Phase::Controller::DVM23::DspVoiceManager23::AddConnection(a2, *(this + 3), 0, v8, 0);
    if (!v7)
    {
      v7 = 1;
      if (!Phase::Controller::DVM23::DspVoiceManager23::SetVoiceData(a2, *(this + 10), 1uLL, this + 40, 0))
      {
        malloc_type_malloc(4 * a4, 0x100004052888210uLL);
        operator new();
      }
    }
  }

  return v7;
}

void sub_23A4B788C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<void ()(unsigned long long)>::~__value_func[abi:ne200100](va);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  _Unwind_Resume(a1);
}

void Phase::Controller::DVM23::PreSpatialTapController::SetPlaystate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::__value_func[abi:ne200100](v4, a4);
  v4[8] = 0;
  operator new();
}

void sub_23A4B7A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::__function::__value_func<void ()(unsigned long long,Phase::Controller::DVM23::Playstate)>::~__value_func[abi:ne200100](va);
  std::__function::__value_func<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::~__value_func[abi:ne200100](v10 + 16);
  _Unwind_Resume(a1);
}

void std::__tree<std::shared_ptr<float>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::shared_ptr<float>>::destroy(*a1);
    std::__tree<std::shared_ptr<float>>::destroy(a1[1]);
    v2 = a1[5];
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    operator delete(a1);
  }
}

void Phase::Controller::DVM23::PreSpatialTapController::ConfigureTapGraph(Phase::Controller::DVM23::DspVoiceManager23 *,unsigned long long,unsigned long)::$_1::operator()(Phase::Logger *a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = **(Phase::Logger::GetInstance(a1) + 80);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 1);
    v6 = 136315906;
    v7 = "PreSpatialTapController.cpp";
    v8 = 1024;
    v9 = 72;
    v10 = 2048;
    v11 = a2;
    v12 = 2048;
    v13 = v5;
    _os_log_impl(&dword_23A302000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Deleting buffer %p on TapId %llu \n", &v6, 0x26u);
  }

  free(a2);
}

void std::__shared_ptr_pointer<float *,Phase::Controller::DVM23::PreSpatialTapController::ConfigureTapGraph(Phase::Controller::DVM23::DspVoiceManager23 *,unsigned long long,unsigned long)::$_1,std::allocator<float>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EE864A0);
}

void std::__shared_ptr_pointer<float *,Phase::Controller::DVM23::PreSpatialTapController::ConfigureTapGraph(Phase::Controller::DVM23::DspVoiceManager23 *,unsigned long long,unsigned long)::$_1,std::allocator<float>>::__on_zero_shared(Phase::Logger *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 3);
  v2 = *(a1 + 4);
  v3 = **(Phase::Logger::GetInstance(a1) + 80);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(v2 + 8);
    v5 = 136315906;
    v6 = "PreSpatialTapController.cpp";
    v7 = 1024;
    v8 = 72;
    v9 = 2048;
    v10 = v1;
    v11 = 2048;
    v12 = v4;
    _os_log_impl(&dword_23A302000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Deleting buffer %p on TapId %llu \n", &v5, 0x26u);
  }

  free(v1);
}

void sub_23A4B7D48(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__tree<std::shared_ptr<float>>::__emplace_unique_key_args<std::shared_ptr<float>,std::shared_ptr<float> const&>(uint64_t result, unint64_t a2)
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
      v4 = v2[4];
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

void *std::__function::__func<Phase::Controller::DVM23::PreSpatialTapController::ConfigureTapGraph(Phase::Controller::DVM23::DspVoiceManager23 *,unsigned long long,unsigned long)::$_0,std::allocator<Phase::Controller::DVM23::PreSpatialTapController::ConfigureTapGraph(Phase::Controller::DVM23::DspVoiceManager23 *,unsigned long long,unsigned long)::$_0>,void ()(unsigned long long)>::~__func(void *a1)
{
  *a1 = &unk_284D36B58;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__function::__func<Phase::Controller::DVM23::PreSpatialTapController::ConfigureTapGraph(Phase::Controller::DVM23::DspVoiceManager23 *,unsigned long long,unsigned long)::$_0,std::allocator<Phase::Controller::DVM23::PreSpatialTapController::ConfigureTapGraph(Phase::Controller::DVM23::DspVoiceManager23 *,unsigned long long,unsigned long)::$_0>,void ()(unsigned long long)>::~__func(void *a1)
{
  *a1 = &unk_284D36B58;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x23EE864A0);
}

uint64_t std::__function::__func<Phase::Controller::DVM23::PreSpatialTapController::ConfigureTapGraph(Phase::Controller::DVM23::DspVoiceManager23 *,unsigned long long,unsigned long)::$_0,std::allocator<Phase::Controller::DVM23::PreSpatialTapController::ConfigureTapGraph(Phase::Controller::DVM23::DspVoiceManager23 *,unsigned long long,unsigned long)::$_0>,void ()(unsigned long long)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_284D36B58;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<Phase::Controller::DVM23::PreSpatialTapController::ConfigureTapGraph(Phase::Controller::DVM23::DspVoiceManager23 *,unsigned long long,unsigned long)::$_0,std::allocator<Phase::Controller::DVM23::PreSpatialTapController::ConfigureTapGraph(Phase::Controller::DVM23::DspVoiceManager23 *,unsigned long long,unsigned long)::$_0>,void ()(unsigned long long)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__function::__func<Phase::Controller::DVM23::PreSpatialTapController::ConfigureTapGraph(Phase::Controller::DVM23::DspVoiceManager23 *,unsigned long long,unsigned long)::$_0,std::allocator<Phase::Controller::DVM23::PreSpatialTapController::ConfigureTapGraph(Phase::Controller::DVM23::DspVoiceManager23 *,unsigned long long,unsigned long)::$_0>,void ()(unsigned long long)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<Phase::Controller::DVM23::PreSpatialTapController::ConfigureTapGraph(Phase::Controller::DVM23::DspVoiceManager23 *,unsigned long long,unsigned long)::$_0,std::allocator<Phase::Controller::DVM23::PreSpatialTapController::ConfigureTapGraph(Phase::Controller::DVM23::DspVoiceManager23 *,unsigned long long,unsigned long)::$_0>,void ()(unsigned long long)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 8);
  v4 = v2 + 12;
  v3 = v2[12];
  if (v3)
  {
    v5 = *(a1 + 16);
    v6 = v2 + 12;
    v7 = v2[12];
    do
    {
      v8 = v7[4];
      v9 = v8 >= v5;
      v10 = v8 < v5;
      if (v9)
      {
        v6 = v7;
      }

      v7 = v7[v10];
    }

    while (v7);
    if (v6 != v4 && v5 >= v6[4])
    {
      v11 = v2 + 12;
      v12 = v2[12];
      do
      {
        v13 = v12[4];
        v9 = v13 >= v5;
        v14 = v13 < v5;
        if (v9)
        {
          v11 = v12;
        }

        v12 = v12[v14];
      }

      while (v12);
      if (v11 != v4 && v11[4] <= v5)
      {
        v15 = v11[1];
        if (v15)
        {
          do
          {
            v16 = v15;
            v15 = *v15;
          }

          while (v15);
        }

        else
        {
          v17 = v11;
          do
          {
            v16 = v17[2];
            v18 = *v16 == v17;
            v17 = v16;
          }

          while (!v18);
        }

        if (v2[11] == v11)
        {
          v2[11] = v16;
        }

        --v2[13];
        std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v3, v11);
        v19 = v11[5];
        if (v19)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
        }

        operator delete(v11);
      }
    }
  }
}

void *std::__function::__func<Phase::Controller::DVM23::PreSpatialTapController::SetPlaystate(Phase::Controller::DVM23::DspVoiceManager23 *,Phase::Controller::DVM23::PlaystateCommand,std::function<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)> &&)::$_0,std::allocator<std::function<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)> &&>,void ()(unsigned long long,Phase::Controller::DVM23::Playstate)>::~__func(void *a1)
{
  *a1 = &unk_284D36BA0;
  std::__function::__value_func<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::~__value_func[abi:ne200100]((a1 + 3));
  return a1;
}

void std::__function::__func<Phase::Controller::DVM23::PreSpatialTapController::SetPlaystate(Phase::Controller::DVM23::DspVoiceManager23 *,Phase::Controller::DVM23::PlaystateCommand,std::function<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)> &&)::$_0,std::allocator<std::function<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)> &&>,void ()(unsigned long long,Phase::Controller::DVM23::Playstate)>::~__func(void *a1)
{
  *a1 = &unk_284D36BA0;
  std::__function::__value_func<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::~__value_func[abi:ne200100]((a1 + 3));

  JUMPOUT(0x23EE864A0);
}

uint64_t std::__function::__func<Phase::Controller::DVM23::PreSpatialTapController::SetPlaystate(Phase::Controller::DVM23::DspVoiceManager23 *,Phase::Controller::DVM23::PlaystateCommand,std::function<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)> &&)::$_0,std::allocator<std::function<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)> &&>,void ()(unsigned long long,Phase::Controller::DVM23::Playstate)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284D36BA0;
  *(a2 + 8) = *(a1 + 8);
  return std::__function::__value_func<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::__value_func[abi:ne200100](a2 + 24, a1 + 24);
}

void std::__function::__func<Phase::Controller::DVM23::PreSpatialTapController::SetPlaystate(Phase::Controller::DVM23::DspVoiceManager23 *,Phase::Controller::DVM23::PlaystateCommand,std::function<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)> &&)::$_0,std::allocator<std::function<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)> &&>,void ()(unsigned long long,Phase::Controller::DVM23::Playstate)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::~__value_func[abi:ne200100](a1 + 24);

  operator delete(a1);
}

void Phase::Controller::ProcedureRegistry::ProcedureRegistry(Phase::Controller::ProcedureRegistry *this)
{
  v41 = *MEMORY[0x277D85DE8];
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = 1065353216;
  strcpy(&__str, "WaterProcedureForTests");
  *(&__str.__r_.__value_.__s + 23) = 22;
  memset(&v26, 0, sizeof(v26));
  v27 = -1;
  v34 = 0;
  v28 = 0u;
  *v29 = 0u;
  v30 = 0u;
  *__p = 0u;
  memset(v32, 0, sizeof(v32));
  std::string::operator=(&v26, &__str);
  *&v32[1] = xmmword_23A554B70;
  v27 = 32;
  v32[3] = 0;
  *buf = &unk_284D36BE8;
  if (v34 == v33)
  {
    v35 = &unk_284D36BE8;
    *&v40[4] = 0;
    (*(*v34 + 24))(v34, buf);
    (*(*v34 + 32))(v34);
    v34 = 0;
    *&v40[4] = buf;
    v35[3](&v35, v33);
    (v35[4])(&v35);
  }

  else
  {
    *&v40[4] = v34;
    v33[0] = &unk_284D36BE8;
  }

  v34 = v33;
  v2 = std::__function::__value_func<std::unique_ptr<Phase::Controller::DVM::ProcedureBase> ()(Phase::DspLayer23::VoiceEngine &,int,PHASEVoiceStealingType)>::~__value_func[abi:ne200100](buf);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    p_str = __str.__r_.__value_.__r.__words[0];
    if (!__str.__r_.__value_.__r.__words[0])
    {
      goto LABEL_11;
    }
  }

  else
  {
    p_str = &__str;
  }

  v4 = p_str->__r_.__value_.__s.__data_[0];
  if (p_str->__r_.__value_.__s.__data_[0])
  {
    v5 = &p_str->__r_.__value_.__s.__data_[1];
    v6 = 0xCBF29CE484222325;
    do
    {
      v6 = 0x100000001B3 * (v6 ^ v4);
      v7 = *v5++;
      v4 = v7;
    }

    while (v7);
LABEL_12:
    v8 = *(this + 8);
    if (v8)
    {
      v9 = vcnt_s8(v8);
      v9.i16[0] = vaddlv_u8(v9);
      if (v9.u32[0] > 1uLL)
      {
        v10 = v6;
        if (*&v8 <= v6)
        {
          v10 = v6 % *&v8;
        }
      }

      else
      {
        v10 = (*&v8 - 1) & v6;
      }

      v11 = *(*this + 8 * v10);
      if (v11)
      {
        for (i = *v11; i; i = *i)
        {
          v13 = i[1];
          if (v13 == v6)
          {
            if (i[2] == v6)
            {
              v18 = **(Phase::Logger::GetInstance(v2) + 768);
              v19 = v18;
              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315650;
                *&buf[4] = "ProcedureRegistry.mm";
                v37 = 1024;
                v38 = 88;
                v39 = 2048;
                *v40 = v6;
                _os_log_impl(&dword_23A302000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): A registry entry with id %llu already exists!", buf, 0x1Cu);
              }

              exception = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(exception, "A registry entry with id %llu already exists!");
              goto LABEL_51;
            }
          }

          else
          {
            if (v9.u32[0] > 1uLL)
            {
              if (v13 >= *&v8)
              {
                v13 %= *&v8;
              }
            }

            else
            {
              v13 &= *&v8 - 1;
            }

            if (v13 != v10)
            {
              break;
            }
          }
        }
      }

      if (v9.u32[0] > 1uLL)
      {
        v14 = v6;
        if (*&v8 <= v6)
        {
          v14 = v6 % *&v8;
        }
      }

      else
      {
        v14 = (*&v8 - 1) & v6;
      }

      v15 = *(*this + 8 * v14);
      if (v15)
      {
        for (j = *v15; j; j = *j)
        {
          v17 = j[1];
          if (v17 == v6)
          {
            if (j[2] == v6)
            {
              v22 = **(Phase::Logger::GetInstance(v2) + 768);
              v23 = v22;
              if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315650;
                *&buf[4] = "ProcedureRegistry.mm";
                v37 = 1024;
                v38 = 84;
                v39 = 2048;
                *v40 = v6;
                _os_log_impl(&dword_23A302000, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [!pair.second is true]: Failed to register procedure info with id %llu", buf, 0x1Cu);
              }

              exception = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(exception, "Failed to register procedure info with id %llu");
LABEL_51:
            }
          }

          else
          {
            if (v9.u32[0] > 1uLL)
            {
              if (v17 >= *&v8)
              {
                v17 %= *&v8;
              }
            }

            else
            {
              v17 &= *&v8 - 1;
            }

            if (v17 != v14)
            {
              break;
            }
          }
        }
      }
    }

    operator new();
  }

LABEL_11:
  v6 = 0;
  goto LABEL_12;
}

void sub_23A4B8CF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  __cxa_free_exception(v17);
  Phase::Controller::ProcedureInfo::~ProcedureInfo(&a16);
  std::__hash_table<std::__hash_value_type<unsigned long long,Phase::Controller::ProcedureInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::ProcedureInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::ProcedureInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::Controller::ProcedureInfo>>>::~__hash_table(v16);
  _Unwind_Resume(a1);
}

void Phase::Controller::ProcedureInfo::~ProcedureInfo(Phase::Controller::ProcedureInfo *this)
{
  std::__function::__value_func<std::unique_ptr<Phase::Controller::DVM::ProcedureBase> ()(Phase::DspLayer23::VoiceEngine &,int,PHASEVoiceStealingType)>::~__value_func[abi:ne200100](this + 128);
  v2 = *(this + 10);
  if (v2)
  {
    *(this + 11) = v2;
    operator delete(v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    *(this + 8) = v3;
    operator delete(v3);
  }

  v4 = (this + 32);
  std::vector<Phase::Controller::ProcedureParameter>::__destroy_vector::operator()[abi:ne200100](&v4);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t std::__function::__value_func<std::unique_ptr<Phase::Controller::DVM::ProcedureBase> ()(Phase::DspLayer23::VoiceEngine &,int,PHASEVoiceStealingType)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::vector<Phase::Controller::ProcedureParameter>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<Phase::Controller::ProcedureParameter>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<Phase::Controller::ProcedureParameter>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 41);
    v3 -= 8;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,Phase::Controller::ProcedureInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::ProcedureInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::ProcedureInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::Controller::ProcedureInfo>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,Phase::Controller::ProcedureInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::ProcedureInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::ProcedureInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::Controller::ProcedureInfo>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,Phase::Controller::ProcedureInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::ProcedureInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::ProcedureInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::Controller::ProcedureInfo>>>::__deallocate_node(uint64_t a1, char *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__function::__value_func<std::unique_ptr<Phase::Controller::DVM::ProcedureBase> ()(Phase::DspLayer23::VoiceEngine &,int,PHASEVoiceStealingType)>::~__value_func[abi:ne200100]((v2 + 152));
      v4 = *(v2 + 13);
      if (v4)
      {
        *(v2 + 14) = v4;
        operator delete(v4);
      }

      v5 = *(v2 + 10);
      if (v5)
      {
        *(v2 + 11) = v5;
        operator delete(v5);
      }

      v6 = (v2 + 56);
      std::vector<Phase::Controller::ProcedureParameter>::__destroy_vector::operator()[abi:ne200100](&v6);
      if (v2[47] < 0)
      {
        operator delete(*(v2 + 3));
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void Phase::Controller::DVM::WaterProcedureForTests::~WaterProcedureForTests(void **this)
{
  *this = &unk_284D36C30;
  free(this[5]);
}

{
  *this = &unk_284D36C30;
  free(this[5]);

  JUMPOUT(0x23EE864A0);
}

uint64_t Phase::Controller::DVM::WaterProcedureForTests::SetParameter(Phase::Controller::DVM::WaterProcedureForTests *this, int a2, float a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = **(Phase::Logger::GetInstance(this) + 80);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315906;
    v8 = "ProcedureForTests.hpp";
    v9 = 1024;
    v10 = 39;
    v11 = 1024;
    v12 = a2;
    v13 = 2048;
    v14 = a3;
    _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d ParameterId %d set to %f!", &v7, 0x22u);
  }

  return 0;
}

BOOL Phase::Controller::DVM::WaterProcedureForTests::SetOutput(uint64_t a1, int a2, int a3, int a4)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 28);
  if (v5 == a2)
  {
    *(a1 + 32) = a3;
    **(a1 + 40) = a4;
  }

  else
  {
    v6 = **(Phase::Logger::GetInstance(a1) + 80);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315650;
      v9 = "ProcedureForTests.hpp";
      v10 = 1024;
      v11 = 48;
      v12 = 1024;
      v13 = a2;
      _os_log_impl(&dword_23A302000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid output index %d! Only output has index 0", &v8, 0x18u);
    }
  }

  return v5 == a2;
}

void Phase::Controller::DVM::WaterProcedureForTests::UpdateParameters(Phase::Controller::DVM::WaterProcedureForTests *this)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = **(Phase::Logger::GetInstance(this) + 80);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    v2 = 136315394;
    v3 = "ProcedureForTests.hpp";
    v4 = 1024;
    v5 = 60;
    _os_log_impl(&dword_23A302000, v1, OS_LOG_TYPE_ERROR, "%25s:%-5d Updating Parameters WaterProcedureForTests!", &v2, 0x12u);
  }
}

void Phase::Controller::DVM::WaterProcedureForTests::Run(Phase::Controller::DVM::WaterProcedureForTests *this, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = **(Phase::Logger::GetInstance(this) + 80);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315650;
    v5 = "ProcedureForTests.hpp";
    v6 = 1024;
    v7 = 70;
    v8 = 2048;
    v9 = a2;
    _os_log_impl(&dword_23A302000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d Running WaterProcedureForTests, frame %llu!", &v4, 0x1Cu);
  }
}

uint64_t Phase::Controller::DVM::WaterProcedureForTests::GetChannelsForBus(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32) != a2)
  {
    v4 = **(Phase::Logger::GetInstance(a1) + 80);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315650;
      v7 = "ProcedureForTests.hpp";
      v8 = 1024;
      v9 = 84;
      v10 = 1024;
      v11 = a2;
      _os_log_impl(&dword_23A302000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d Channel not found for Channel Type %d!", &v6, 0x18u);
    }
  }

  return *(a1 + 40);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<Phase::Controller::ProcedureParameter>,Phase::Controller::ProcedureParameter*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 8);
    v4 = **(a1 + 16);
    while (v4 != v3)
    {
      v5 = *(v4 - 41);
      v4 -= 8;
      if (v5 < 0)
      {
        operator delete(*v4);
      }
    }
  }

  return a1;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,Phase::Controller::ProcedureInfo>,void *>>>::operator()[abi:ne200100](char a1, uint64_t a2)
{
  if (a1)
  {
    std::__function::__value_func<std::unique_ptr<Phase::Controller::DVM::ProcedureBase> ()(Phase::DspLayer23::VoiceEngine &,int,PHASEVoiceStealingType)>::~__value_func[abi:ne200100](a2 + 152);
    v3 = *(a2 + 104);
    if (v3)
    {
      *(a2 + 112) = v3;
      operator delete(v3);
    }

    v4 = *(a2 + 80);
    if (v4)
    {
      *(a2 + 88) = v4;
      operator delete(v4);
    }

    v5 = (a2 + 56);
    std::vector<Phase::Controller::ProcedureParameter>::__destroy_vector::operator()[abi:ne200100](&v5);
    if (*(a2 + 47) < 0)
    {
      operator delete(*(a2 + 24));
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

double Phase::Controller::DoubleFromDictionary(Phase::Controller *this, NSDictionary *a2, NSString *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = this;
  v5 = a2;
  v6 = [(Phase::Controller *)v4 objectForKeyedSubscript:v5];
  if (!v6)
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = [MEMORY[0x277CCA8D8] mainBundle];
    v12 = [v11 localizedStringForKey:@"[NSDictionary objectForKey] failed for key: %@" value:&stru_284D3D208 table:0];
    v13 = [v10 stringWithFormat:v12, v5];

    v15 = **(Phase::Logger::GetInstance(v14) + 800);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v25 = "ProfileRegistry.mm";
      v26 = 1024;
      v27 = 278;
      v28 = 2080;
      v29 = [v13 UTF8String];
      _os_log_impl(&dword_23A302000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (ProfileRegistryException::MissingRequiredField): %s", buf, 0x1Cu);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "%s");
    exception->__vftable = &unk_284D36D88;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = MEMORY[0x277CCACA8];
    v18 = [MEMORY[0x277CCA8D8] mainBundle];
    v19 = [v18 localizedStringForKey:@"[NSObject isKindOfClass:[[NSNumber class]]] failed for key: %@" value:&stru_284D3D208 table:0];
    v20 = [v17 stringWithFormat:v19, v5];

    v22 = **(Phase::Logger::GetInstance(v21) + 800);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v25 = "ProfileRegistry.mm";
      v26 = 1024;
      v27 = 285;
      v28 = 2080;
      v29 = [v20 UTF8String];
      _os_log_impl(&dword_23A302000, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (ProfileRegistryException::FieldWithWrongType): %s", buf, 0x1Cu);
    }

    v23 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v23, "%s");
    v23->__vftable = &unk_284D36DB0;
  }

  [v6 doubleValue];
  v8 = v7;

  return v8;
}

void Phase::Controller::StringIdFromDictionary(Phase::Controller *this, NSDictionary *a2, NSString *a3)
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [(NSDictionary *)v5 objectForKeyedSubscript:v6];
  v8 = MEMORY[0x277CCACA8];
  if (!v7)
  {
    v15 = [MEMORY[0x277CCA8D8] mainBundle];
    v16 = [v15 localizedStringForKey:@"[NSDictionary objectForKey] failed for key: %@" value:&stru_284D3D208 table:0];
    v17 = [v8 stringWithFormat:v16, v6];

    v19 = **(Phase::Logger::GetInstance(v18) + 800);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v39 = "ProfileRegistry.mm";
      v40 = 1024;
      v41 = 299;
      v42 = 2080;
      v43 = [v17 UTF8String];
      _os_log_impl(&dword_23A302000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (ProfileRegistryException::MissingRequiredField): %s", buf, 0x1Cu);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "%s");
    exception->__vftable = &unk_284D36D88;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v21 = MEMORY[0x277CCACA8];
    v22 = [MEMORY[0x277CCA8D8] mainBundle];
    v23 = [v22 localizedStringForKey:@"[NSObject isKindOfClass:[[NSString class]]] failed for key: %@" value:&stru_284D3D208 table:0];
    v24 = [v21 stringWithFormat:v23, v6];

    v26 = **(Phase::Logger::GetInstance(v25) + 800);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v39 = "ProfileRegistry.mm";
      v40 = 1024;
      v41 = 306;
      v42 = 2080;
      v43 = [v24 UTF8String];
      _os_log_impl(&dword_23A302000, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (ProfileRegistryException::FieldWithWrongType): %s", buf, 0x1Cu);
    }

    v27 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v27, "%s");
    v27->__vftable = &unk_284D36DB0;
  }

  v9 = [v7 UTF8String];
  v10 = [v7 lengthOfBytesUsingEncoding:4];
  v11 = v10;
  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v10 >= 0x17)
  {
    operator new();
  }

  v37 = v10;
  if (v10)
  {
    memmove(__dst, v9, v10);
  }

  *(__dst + v11) = 0;
  v12 = v37;
  v13 = v37;
  if ((v37 & 0x80u) != 0)
  {
    v12 = __dst[1];
  }

  if (!v12)
  {
    v28 = MEMORY[0x277CCACA8];
    v29 = [MEMORY[0x277CCA8D8] mainBundle];
    v30 = [v29 localizedStringForKey:@"String for key: %@ is empty" value:&stru_284D3D208 table:0];
    v31 = [v28 stringWithFormat:v30, v6];

    v33 = **(Phase::Logger::GetInstance(v32) + 800);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = [v31 UTF8String];
      *buf = 136315650;
      v39 = "ProfileRegistry.mm";
      v40 = 1024;
      v41 = 313;
      v42 = 2080;
      v43 = v34;
      _os_log_impl(&dword_23A302000, v33, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (ProfileRegistryException::EmptyString): %s", buf, 0x1Cu);
    }

    v35 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v35, "%s");
    v35->__vftable = &unk_284D36DD8;
  }

  if (v13 >= 0)
  {
    v14 = __dst;
  }

  else
  {
    v14 = __dst[0];
  }

  Phase::StringId::StringId(this, v14);
  if (v37 < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_23A4BA15C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (v14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void Phase::Controller::Vec2FromDictionary(Phase::Controller *this, NSDictionary *a2, NSString *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v19 = a2;
  v5 = a3;
  v6 = [(NSDictionary *)v19 objectForKeyedSubscript:v5];
  v8 = v6;
  if (!v6)
  {
    v12 = MEMORY[0x277CCACA8];
    v13 = [MEMORY[0x277CCA8D8] mainBundle];
    v14 = [v13 localizedStringForKey:@"[NSDictionary objectForKey] failed for key: %@" value:&stru_284D3D208 table:0];
    v15 = [v12 stringWithFormat:v14, v5];

    v17 = **(Phase::Logger::GetInstance(v16) + 800);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v21 = "ProfileRegistry.mm";
      v22 = 1024;
      v23 = 332;
      v24 = 2080;
      v25 = [v15 UTF8String];
      _os_log_impl(&dword_23A302000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (ProfileRegistryException::MissingRequiredField): %s", buf, 0x1Cu);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "%s");
    exception->__vftable = &unk_284D36D88;
  }

  v9 = Phase::Controller::DoubleFromDictionary(v6, @"X", v7);
  v11 = Phase::Controller::DoubleFromDictionary(v8, @"Y", v10);
  *this = v9;
  *(this + 1) = v11;
}

void Phase::Controller::ParameterFromDictionary(Phase::Controller *this, NSDictionary *a2)
{
  v158 = *MEMORY[0x277D85DE8];
  v3 = a2;
  *this = 0;
  *(this + 1) = &str_20;
  *(this + 16) = 1;
  v138 = v3;
  v139 = this;
  Phase::Envelope<double>::Envelope((this + 24));
  Phase::Controller::StringIdFromDictionary(v152, v3, &cfstr_Name_0.isa);
  Phase::StringId::operator=(this, v152);
  if ((v152[16] & 1) == 0)
  {
    free(*&v152[8]);
  }

  if (Phase::Controller::IsSteppedParameter(this))
  {
    v4 = v3;
    v5 = @"Envelope";
    v135 = v4;
    v6 = [(NSDictionary *)v4 objectForKeyedSubscript:@"Envelope"];
    v137 = v6;
    if (!v6)
    {
      v78 = MEMORY[0x277CCACA8];
      v79 = [MEMORY[0x277CCA8D8] mainBundle];
      v80 = [v79 localizedStringForKey:@"[NSDictionary objectForKey] failed for key: %@" value:&stru_284D3D208 table:0];
      v81 = [v78 stringWithFormat:v80, @"Envelope"];

      v83 = **(Phase::Logger::GetInstance(v82) + 800);
      if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
      {
        v84 = v81;
        v85 = [v81 UTF8String];
        *v152 = 136315650;
        *&v152[4] = "ProfileRegistry.mm";
        *&v152[12] = 1024;
        *&v152[14] = 454;
        *&v152[18] = 2080;
        *&v152[20] = v85;
        _os_log_impl(&dword_23A302000, v83, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (ProfileRegistryException::MissingRequiredField): %s", v152, 0x1Cu);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "%s");
      exception->__vftable = &unk_284D36D88;
    }

    Phase::Controller::Vec2FromDictionary(v147, v6, &cfstr_Startpoint.isa);
    v7 = v148;
    v9 = modf(v148, v152);
    if (v9 < 0.0)
    {
      v9 = -v9;
    }

    if (v9 > 2.22044605e-16)
    {
      v96 = **(Phase::Logger::GetInstance(v8) + 800);
      v97 = v96;
      if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
      {
        *v152 = 136315650;
        *&v152[4] = "ProfileRegistry.mm";
        *&v152[12] = 1024;
        *&v152[14] = 459;
        *&v152[18] = 2048;
        *&v152[20] = v7;
        _os_log_impl(&dword_23A302000, v96, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (ProfileRegistryException::InvalidNumber) [!IsInteger(startPoint.y) is true]: StartPoint y value '%f' must be an integer", v152, 0x1Cu);
      }

      v98 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v98, "StartPoint y value '%f' must be an integer");
      v98->__vftable = &unk_284D36E50;
    }

    v144 = 0;
    v145 = 0;
    v146 = 0;
    v10 = [(NSDictionary *)v137 objectForKeyedSubscript:@"Segments"];
    if (!v10)
    {
      v108 = MEMORY[0x277CCACA8];
      v109 = [MEMORY[0x277CCA8D8] mainBundle];
      v110 = [v109 localizedStringForKey:@"NSArray object Segments doesn't exist in envelope %@" value:&stru_284D3D208 table:0];
      v111 = [v108 stringWithFormat:v110, @"Envelope"];

      v113 = **(Phase::Logger::GetInstance(v112) + 800);
      if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
      {
        v114 = v111;
        v115 = [v111 UTF8String];
        *v152 = 136315650;
        *&v152[4] = "ProfileRegistry.mm";
        *&v152[12] = 1024;
        *&v152[14] = 468;
        *&v152[18] = 2080;
        *&v152[20] = v115;
        _os_log_impl(&dword_23A302000, v113, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (ProfileRegistryException::MissingRequiredField): %s", v152, 0x1Cu);
      }

      v116 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v116, "%s");
      v116->__vftable = &unk_284D36D88;
    }

    v156 = 0u;
    v157 = 0u;
    v154 = 0u;
    v155 = 0u;
    obj = v10;
    v11 = [obj countByEnumeratingWithState:&v154 objects:v152 count:16];
    if (v11)
    {
      v12 = *v155;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v155 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v154 + 1) + 8 * i);
          *buf = 0;
          *&buf[8] = 0;
          *&buf[16] = &unk_284D2F2E8;
          v151 = &buf[16];
          Phase::Controller::Vec2FromDictionary(__y, v14, &cfstr_Endpoint.isa);
          *buf = *__y;
          *&buf[8] = *&__y[8];
          v16 = modf(*&__y[8], __y);
          if (v16 < 0.0)
          {
            v16 = -v16;
          }

          if (v16 > 2.22044605e-16)
          {
            v55 = **(Phase::Logger::GetInstance(v15) + 800);
            v56 = v55;
            if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
            {
              *__y = 136315650;
              *&__y[4] = "ProfileRegistry.mm";
              *&__y[12] = 1024;
              *&__y[14] = 477;
              *&__y[18] = 2048;
              *&__y[20] = *&buf[8];
              _os_log_impl(&dword_23A302000, v55, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (ProfileRegistryException::InvalidNumber) [!IsInteger(envelopeSegment.mEndPoint.y) is true]: EndPoint y value '%f' must be an integer", __y, 0x1Cu);
            }

            v57 = __cxa_allocate_exception(0x10uLL);
            std::logic_error::logic_error(v57, "EndPoint y value '%f' must be an integer");
            v57->__vftable = &unk_284D36E50;
          }

          v17 = [(NSDictionary *)v14 objectForKeyedSubscript:@"CurveType"];
          if ([v17 isEqualToString:@"HoldStartValue"])
          {
          }

          else
          {
            v18 = [(NSDictionary *)v14 objectForKeyedSubscript:@"CurveType"];
            v19 = [v18 isEqualToString:@"JumpToEndValue"];

            if ((v19 & 1) == 0)
            {
              v58 = **(Phase::Logger::GetInstance(v20) + 800);
              v59 = v58;
              if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
              {
                *__y = 136315394;
                *&__y[4] = "ProfileRegistry.mm";
                *&__y[12] = 1024;
                *&__y[14] = 484;
                _os_log_impl(&dword_23A302000, v58, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (ProfileRegistryException::InvalidEnvelopeSegmentType): Envelope segments must all have stepped curve types equal to HoldStartValue or JumpToEndValue", __y, 0x12u);
              }

              v60 = __cxa_allocate_exception(0x10uLL);
              std::logic_error::logic_error(v60, "Envelope segments must all have stepped curve types equal to HoldStartValue or JumpToEndValue");
              v60->__vftable = &unk_284D36E78;
            }
          }

          v21 = v145;
          if (v145 >= v146)
          {
            v22 = std::vector<Phase::Envelope<double>::Segment,std::allocator<Phase::Envelope<double>::Segment>>::__emplace_back_slow_path<Phase::Envelope<double>::Segment const&>(&v144, buf);
          }

          else
          {
            *v145 = *buf;
            *(v21 + 1) = *&buf[8];
            std::__function::__value_func<double ()(double)>::__value_func[abi:ne200100]((v21 + 1), &buf[16]);
            v22 = v21 + 3;
          }

          v145 = v22;
          std::__function::__value_func<double ()(double)>::~__value_func[abi:ne200100](&buf[16]);
        }

        v11 = [obj countByEnumeratingWithState:&v154 objects:v152 count:16];
      }

      while (v11);
    }

    Phase::Envelope<double>::Envelope<std::__wrap_iter<Phase::Envelope<double>::Segment *>>(&v142, v147, v144, v145);
    *buf = &v144;
    std::vector<Phase::Envelope<double>::Segment,std::allocator<Phase::Envelope<double>::Segment>>::__destroy_vector::operator()[abi:ne200100](buf);
  }

  else
  {
    v23 = v3;
    v24 = @"Envelope";
    v136 = v23;
    v25 = [(NSDictionary *)v23 objectForKeyedSubscript:@"Envelope"];
    if (!v25)
    {
      v87 = MEMORY[0x277CCACA8];
      v88 = [MEMORY[0x277CCA8D8] mainBundle];
      v89 = [v88 localizedStringForKey:@"[NSDictionary objectForKey] failed for key: %@" value:&stru_284D3D208 table:0];
      v90 = [v87 stringWithFormat:v89, @"Envelope"];

      v92 = **(Phase::Logger::GetInstance(v91) + 800);
      if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
      {
        v93 = v90;
        v94 = [v90 UTF8String];
        *v152 = 136315650;
        *&v152[4] = "ProfileRegistry.mm";
        *&v152[12] = 1024;
        *&v152[14] = 429;
        *&v152[18] = 2080;
        *&v152[20] = v94;
        _os_log_impl(&dword_23A302000, v92, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (ProfileRegistryException::MissingRequiredField): %s", v152, 0x1Cu);
      }

      v95 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v95, "%s");
      v95->__vftable = &unk_284D36D88;
    }

    Phase::Controller::Vec2FromDictionary(&v144, v25, &cfstr_Startpoint.isa);
    v26 = v25;
    v27 = @"Segments";
    v28 = [(NSDictionary *)v26 objectForKeyedSubscript:@"Segments"];
    if (!v28)
    {
      v99 = MEMORY[0x277CCACA8];
      v100 = [MEMORY[0x277CCA8D8] mainBundle];
      v101 = [v100 localizedStringForKey:@"[NSDictionary objectForKey] failed for key: %@" value:&stru_284D3D208 table:0];
      v102 = [v99 stringWithFormat:v101, @"Segments"];

      v104 = **(Phase::Logger::GetInstance(v103) + 800);
      if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
      {
        v105 = v102;
        v106 = [v102 UTF8String];
        *v152 = 136315650;
        *&v152[4] = "ProfileRegistry.mm";
        *&v152[12] = 1024;
        *&v152[14] = 611;
        *&v152[18] = 2080;
        *&v152[20] = v106;
        _os_log_impl(&dword_23A302000, v104, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (ProfileRegistryException::MissingRequiredField): %s", v152, 0x1Cu);
      }

      v107 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v107, "%s");
      v107->__vftable = &unk_284D36D88;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v117 = MEMORY[0x277CCACA8];
      v118 = [MEMORY[0x277CCA8D8] mainBundle];
      v119 = [v118 localizedStringForKey:@"[NSObject isKindOfClass:[[NSArray class]]] failed for key: %@" value:&stru_284D3D208 table:0];
      v120 = [v117 stringWithFormat:v119, @"Segments"];

      v122 = **(Phase::Logger::GetInstance(v121) + 800);
      if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
      {
        v123 = v120;
        v124 = [v120 UTF8String];
        *v152 = 136315650;
        *&v152[4] = "ProfileRegistry.mm";
        *&v152[12] = 1024;
        *&v152[14] = 618;
        *&v152[18] = 2080;
        *&v152[20] = v124;
        _os_log_impl(&dword_23A302000, v122, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (ProfileRegistryException::FieldWithWrongType): %s", v152, 0x1Cu);
      }

      v125 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v125, "%s");
      v125->__vftable = &unk_284D36DB0;
    }

    v29 = 0;
    memset(__y, 0, 24);
    while ([v28 count] > v29)
    {
      v30 = [v28 objectAtIndexedSubscript:v29];
      *v152 = 0;
      *&v152[8] = 0;
      *&v152[16] = &unk_284D2F2E8;
      v153 = &v152[16];
      Phase::Controller::Vec2FromDictionary(&v154, v30, &cfstr_Endpoint.isa);
      *v152 = v154;
      v31 = v30;
      v32 = @"CurveType";
      v33 = [(NSDictionary *)v31 objectForKeyedSubscript:@"CurveType"];
      v34 = MEMORY[0x277CCACA8];
      if (!v33)
      {
        v61 = [MEMORY[0x277CCA8D8] mainBundle];
        v62 = [v61 localizedStringForKey:@"[NSDictionary objectForKey] failed for key: %@" value:&stru_284D3D208 table:0];
        v63 = [v34 stringWithFormat:v62, @"CurveType"];

        v65 = **(Phase::Logger::GetInstance(v64) + 800);
        if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
        {
          v66 = v63;
          v67 = [v63 UTF8String];
          *buf = 136315650;
          *&buf[4] = "ProfileRegistry.mm";
          *&buf[12] = 1024;
          *&buf[14] = 346;
          *&buf[18] = 2080;
          *&buf[20] = v67;
          _os_log_impl(&dword_23A302000, v65, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (ProfileRegistryException::MissingRequiredField): %s", buf, 0x1Cu);
        }

        v68 = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(v68, "%s");
        v68->__vftable = &unk_284D36D88;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v69 = MEMORY[0x277CCACA8];
        v70 = [MEMORY[0x277CCA8D8] mainBundle];
        v71 = [v70 localizedStringForKey:@"[NSObject isKindOfClass:[[NSString class]]] failed for key: %@" value:&stru_284D3D208 table:0];
        v72 = [v69 stringWithFormat:v71, @"CurveType"];

        v74 = **(Phase::Logger::GetInstance(v73) + 800);
        if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
        {
          v75 = v72;
          v76 = [v72 UTF8String];
          *buf = 136315650;
          *&buf[4] = "ProfileRegistry.mm";
          *&buf[12] = 1024;
          *&buf[14] = 353;
          *&buf[18] = 2080;
          *&buf[20] = v76;
          _os_log_impl(&dword_23A302000, v74, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (ProfileRegistryException::FieldWithWrongType): %s", buf, 0x1Cu);
        }

        v77 = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(v77, "%s");
        v77->__vftable = &unk_284D36DB0;
      }

      v35 = [v33 isEqualToString:@"Linear"];
      v36 = Phase::CurveFunction::Linear<double>;
      if ((v35 & 1) == 0)
      {
        v37 = [v33 isEqualToString:@"Squared"];
        v36 = Phase::CurveFunction::Squared<double>;
        if ((v37 & 1) == 0)
        {
          v38 = [v33 isEqualToString:@"InverseSquared"];
          v36 = Phase::CurveFunction::InverseSquared<double>;
          if ((v38 & 1) == 0)
          {
            v39 = [v33 isEqualToString:@"Cubed"];
            v36 = Phase::CurveFunction::Squared<double>;
            if ((v39 & 1) == 0)
            {
              v40 = [v33 isEqualToString:@"InverseCubed"];
              v36 = Phase::CurveFunction::InverseSquared<double>;
              if ((v40 & 1) == 0)
              {
                v41 = [v33 isEqualToString:@"InverseSine"];
                v36 = Phase::CurveFunction::InverseSine<double>;
                if ((v41 & 1) == 0)
                {
                  v42 = [v33 isEqualToString:@"Sine"];
                  v36 = Phase::CurveFunction::Sine<double>;
                  if ((v42 & 1) == 0)
                  {
                    v43 = [v33 isEqualToString:@"Sigmoid"];
                    v36 = Phase::CurveFunction::Sigmoid<double>;
                    if ((v43 & 1) == 0)
                    {
                      v44 = [v33 isEqualToString:@"InverseSigmoid"];
                      v36 = Phase::CurveFunction::InverseSigmoid<double>;
                      if ((v44 & 1) == 0)
                      {
                        v45 = [v33 isEqualToString:@"HoldStartValue"];
                        v36 = Phase::CurveFunction::HoldStartValue<double>;
                        if ((v45 & 1) == 0)
                        {
                          v46 = [v33 isEqualToString:@"JumpToEndValue"];
                          v36 = Phase::CurveFunction::JumpToEndValue<double>;
                          if ((v46 & 1) == 0)
                          {
                            v126 = MEMORY[0x277CCACA8];
                            v127 = [MEMORY[0x277CCA8D8] mainBundle];
                            v128 = [v127 localizedStringForKey:@"String: %@ for key: %@ is unrecognized" value:&stru_284D3D208 table:0];
                            v129 = [v126 stringWithFormat:v128, v33, @"CurveType"];

                            v131 = **(Phase::Logger::GetInstance(v130) + 800);
                            if (os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
                            {
                              v132 = v129;
                              v133 = [v129 UTF8String];
                              *buf = 136315650;
                              *&buf[4] = "ProfileRegistry.mm";
                              *&buf[12] = 1024;
                              *&buf[14] = 404;
                              *&buf[18] = 2080;
                              *&buf[20] = v133;
                              _os_log_impl(&dword_23A302000, v131, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (ProfileRegistryException::InvalidString): %s", buf, 0x1Cu);
                            }

                            v134 = __cxa_allocate_exception(0x10uLL);
                            std::logic_error::logic_error(v134, "%s");
                            v134->__vftable = &unk_284D36E00;
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

      *&v154 = &unk_284D2F458;
      *(&v154 + 1) = v36;
      *(&v155 + 1) = &v154;

      std::__function::__value_func<double ()(double)>::operator=[abi:ne200100](&v152[16], &v154);
      std::__function::__value_func<double ()(double)>::~__value_func[abi:ne200100](&v154);

      v47 = *&__y[8];
      if (*&__y[8] >= *&__y[16])
      {
        v49 = 0xAAAAAAAAAAAAAAABLL * ((*&__y[8] - *__y) >> 4) + 1;
        if (v49 > 0x555555555555555)
        {
          std::vector<Phase::MetaParamValue>::__throw_length_error[abi:ne200100]();
        }

        if (0x5555555555555556 * ((*&__y[16] - *__y) >> 4) > v49)
        {
          v49 = 0x5555555555555556 * ((*&__y[16] - *__y) >> 4);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((*&__y[16] - *__y) >> 4) >= 0x2AAAAAAAAAAAAAALL)
        {
          v50 = 0x555555555555555;
        }

        else
        {
          v50 = v49;
        }

        *&v156 = __y;
        if (v50)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::Envelope<double>::Segment>>(__y, v50);
        }

        v51 = (16 * ((*&__y[8] - *__y) >> 4));
        *&v154 = 0;
        *(&v154 + 1) = v51;
        *(&v155 + 1) = 0;
        *v51 = *v152;
        v51[1] = *&v152[8];
        std::__function::__value_func<double ()(double)>::__value_func[abi:ne200100]((v51 + 2), &v152[16]);
        *&v155 = v51 + 6;
        v52 = v51 + *__y - *&__y[8];
        std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<Phase::Envelope<double>::Segment>,Phase::Envelope<double>::Segment*>(__y, *__y, *&__y[8], v52);
        v53 = *__y;
        v54 = *&__y[16];
        *__y = v52;
        obja = v155;
        *&__y[8] = v155;
        *&v155 = v53;
        *(&v155 + 1) = v54;
        *&v154 = v53;
        *(&v154 + 1) = v53;
        std::__split_buffer<Phase::Envelope<double>::Segment,std::allocator<Phase::Envelope<double>::Segment> &>::~__split_buffer(&v154);
        v48 = obja;
      }

      else
      {
        **&__y[8] = *v152;
        *(v47 + 8) = *&v152[8];
        std::__function::__value_func<double ()(double)>::__value_func[abi:ne200100](v47 + 16, &v152[16]);
        v48 = v47 + 48;
      }

      *&__y[8] = v48;
      std::__function::__value_func<double ()(double)>::~__value_func[abi:ne200100](&v152[16]);

      ++v29;
    }

    Phase::Envelope<double>::Envelope<std::__wrap_iter<Phase::Envelope<double>::Segment *>>(&v142, &v144, *__y, *&__y[8]);
    *v152 = __y;
    std::vector<Phase::Envelope<double>::Segment,std::allocator<Phase::Envelope<double>::Segment>>::__destroy_vector::operator()[abi:ne200100](v152);
  }

  std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__vdeallocate(v139 + 3);
  *(v139 + 24) = v142;
  *(v139 + 5) = v143;
  v143 = 0;
  v142 = 0uLL;
  *v152 = &v142;
  std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](v152);
}

void sub_23A4BB9E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, void *a15, void **a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char *a37)
{
  std::__function::__value_func<double ()(double)>::~__value_func[abi:ne200100](v40);

  a37 = &a27;
  std::vector<Phase::Envelope<double>::Segment,std::allocator<Phase::Envelope<double>::Segment>>::__destroy_vector::operator()[abi:ne200100](&a37);

  Phase::Controller::ProfileRegistry::Parameter::~Parameter(a16);
  _Unwind_Resume(a1);
}

void sub_23A4BBB08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void **a37)
{
  std::__function::__value_func<double ()(double)>::~__value_func[abi:ne200100](v40);

  a37 = &a27;
  std::vector<Phase::Envelope<double>::Segment,std::allocator<Phase::Envelope<double>::Segment>>::__destroy_vector::operator()[abi:ne200100](&a37);

  JUMPOUT(0x23A4BC0B8);
}

void sub_23A4BBBEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t *a31)
{
  a31 = &a22;
  std::vector<Phase::Envelope<double>::Segment,std::allocator<Phase::Envelope<double>::Segment>>::__destroy_vector::operator()[abi:ne200100](&a31);

  JUMPOUT(0x23A4BC0B8);
}

void sub_23A4BBD1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void **a31)
{
  __cxa_end_catch();

  a31 = &a22;
  std::vector<Phase::Envelope<double>::Segment,std::allocator<Phase::Envelope<double>::Segment>>::__destroy_vector::operator()[abi:ne200100](&a31);

  JUMPOUT(0x23A4BC0B8);
}

void sub_23A4BBD3C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23A4BBE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void **a37)
{
  __cxa_end_catch();
  a37 = &a27;
  std::vector<Phase::Envelope<double>::Segment,std::allocator<Phase::Envelope<double>::Segment>>::__destroy_vector::operator()[abi:ne200100](&a37);
  JUMPOUT(0x23A4BC018);
}

void sub_23A4BBE90(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate();
  }

  _Unwind_Resume(a1);
}

void sub_23A4BBED4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void **a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, char a39)
{
  Phase::Controller::ProfileRegistry::Parameter::~Parameter(a16);

  _Unwind_Resume(a1);
}

void sub_23A4BBEF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if ((*(a16 + 16) & 1) == 0)
  {
    free(*(a16 + 8));
  }

  *a16 = 0;
  *(a16 + 8) = v16;
  *(a16 + 16) = 1;
  JUMPOUT(0x23A4BC0C0);
}

void sub_23A4BBF28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void **a37)
{
  std::__function::__value_func<double ()(double)>::~__value_func[abi:ne200100](v40);

  a37 = &a27;
  std::vector<Phase::Envelope<double>::Segment,std::allocator<Phase::Envelope<double>::Segment>>::__destroy_vector::operator()[abi:ne200100](&a37);

  JUMPOUT(0x23A4BC0B8);
}

void sub_23A4BBF90(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x23A4BBF94);
  }

  _Unwind_Resume(a1);
}

void Phase::Controller::ProfileRegistry::Parameter::~Parameter(void **this)
{
  v2 = this + 3;
  std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](&v2);
  if ((this[2] & 1) == 0)
  {
    free(this[1]);
  }

  *this = 0;
  this[1] = &str_20;
  *(this + 16) = 1;
}

void Phase::Controller::CategoryFromDictionary(Phase::Controller *this, NSDictionary *a2)
{
  v159 = *MEMORY[0x277D85DE8];
  v3 = a2;
  *this = 0;
  *(this + 1) = &str_20;
  *(this + 16) = 1;
  *(this + 3) = 0;
  *(this + 4) = &str_20;
  *(this + 40) = 1;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 22) = 1065353216;
  v127 = v3;
  Phase::Controller::StringIdFromDictionary(v146, v3, &cfstr_Name_0.isa);
  Phase::StringId::operator=(this, v146);
  if ((v146[16] & 1) == 0)
  {
    free(*&v146[8]);
  }

  Phase::Controller::StringIdFromDictionary(v146, v3, &cfstr_Modeler.isa);
  Phase::StringId::operator=(this + 24, v146);
  if ((v146[16] & 1) == 0)
  {
    free(*&v146[8]);
  }

  *(this + 6) = Phase::Controller::DoubleFromDictionary(v3, @"ComputeWeight", v4);
  v5 = v3;
  v6 = @"Graphs";
  v129 = v5;
  v7 = [(NSDictionary *)v5 objectForKeyedSubscript:@"Graphs"];
  if (!v7)
  {
    v109 = MEMORY[0x277CCACA8];
    v110 = [MEMORY[0x277CCA8D8] mainBundle];
    v111 = [v110 localizedStringForKey:@"[NSDictionary objectForKey] failed for key: %@" value:&stru_284D3D208 table:0];
    v112 = [v109 stringWithFormat:v111, @"Graphs", v127];

    v114 = **(Phase::Logger::GetInstance(v113) + 800);
    if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
    {
      v115 = v112;
      v116 = [v112 UTF8String];
      *v146 = 136315650;
      *&v146[4] = "ProfileRegistry.mm";
      *&v146[12] = 1024;
      *&v146[14] = 639;
      v147 = 2080;
      *v148 = v116;
      _os_log_impl(&dword_23A302000, v114, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (ProfileRegistryException::MissingRequiredField): %s", v146, 0x1Cu);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "%s");
    exception->__vftable = &unk_284D36D88;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v118 = MEMORY[0x277CCACA8];
    v119 = [MEMORY[0x277CCA8D8] mainBundle];
    v120 = [v119 localizedStringForKey:@"[NSObject isKindOfClass:[[NSArray class]]] failed for key: %@" value:&stru_284D3D208 table:0];
    v121 = [v118 stringWithFormat:v120, @"Graphs", v127];

    v123 = **(Phase::Logger::GetInstance(v122) + 800);
    if (os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
    {
      v124 = v121;
      v125 = [v121 UTF8String];
      *v146 = 136315650;
      *&v146[4] = "ProfileRegistry.mm";
      *&v146[12] = 1024;
      *&v146[14] = 646;
      v147 = 2080;
      *v148 = v125;
      _os_log_impl(&dword_23A302000, v123, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (ProfileRegistryException::FieldWithWrongType): %s", v146, 0x1Cu);
    }

    v126 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v126, "%s");
    v126->__vftable = &unk_284D36DB0;
  }

  v131 = 0u;
  v132 = 0u;
  v133 = 1065353216;
  v128 = (this + 56);
  if ([v7 count])
  {
    v8 = [v7 objectAtIndexedSubscript:0];
    v134 = 0;
    __s2 = &str_20;
    v136 = 1;
    __p = 0u;
    v138 = 0u;
    v139 = 1065353216;
    v130 = v8;
    Phase::Controller::StringIdFromDictionary(v146, v8, &cfstr_Name_0.isa);
    Phase::StringId::operator=(&v134, v146);
    if ((v146[16] & 1) == 0)
    {
      free(*&v146[8]);
    }

    v9 = v130;
    v10 = @"Stages";
    v11 = [(NSDictionary *)v9 objectForKeyedSubscript:@"Stages"];
    if (!v11)
    {
      v91 = MEMORY[0x277CCACA8];
      v92 = [MEMORY[0x277CCA8D8] mainBundle];
      v93 = [v92 localizedStringForKey:@"[NSDictionary objectForKey] failed for key: %@" value:&stru_284D3D208 table:0];
      v94 = [v91 stringWithFormat:v93, @"Stages", v3];

      v96 = **(Phase::Logger::GetInstance(v95) + 800);
      if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
      {
        v97 = v94;
        v98 = [v94 UTF8String];
        *v146 = 136315650;
        *&v146[4] = "ProfileRegistry.mm";
        *&v146[12] = 1024;
        *&v146[14] = 639;
        v147 = 2080;
        *v148 = v98;
        _os_log_impl(&dword_23A302000, v96, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (ProfileRegistryException::MissingRequiredField): %s", v146, 0x1Cu);
      }

      v99 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v99, "%s");
      v99->__vftable = &unk_284D36D88;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v100 = MEMORY[0x277CCACA8];
      v101 = [MEMORY[0x277CCA8D8] mainBundle];
      v102 = [v101 localizedStringForKey:@"[NSObject isKindOfClass:[[NSArray class]]] failed for key: %@" value:&stru_284D3D208 table:0];
      v103 = [v100 stringWithFormat:v102, @"Stages", v3];

      v105 = **(Phase::Logger::GetInstance(v104) + 800);
      if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
      {
        v106 = v103;
        v107 = [v103 UTF8String];
        *v146 = 136315650;
        *&v146[4] = "ProfileRegistry.mm";
        *&v146[12] = 1024;
        *&v146[14] = 646;
        v147 = 2080;
        *v148 = v107;
        _os_log_impl(&dword_23A302000, v105, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (ProfileRegistryException::FieldWithWrongType): %s", v146, 0x1Cu);
      }

      v108 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v108, "%s");
      v108->__vftable = &unk_284D36DB0;
    }

    v140 = 0u;
    v141 = 0u;
    v142 = 1065353216;
    if ([v11 count])
    {
      v12 = [v11 objectAtIndexedSubscript:0];
      *v146 = 0;
      *&v146[8] = &str_20;
      v146[16] = 1;
      *&v148[4] = 0u;
      v149 = 0u;
      v150 = 1065353216;
      Phase::Controller::StringIdFromDictionary(v156, v12, &cfstr_Name_0.isa);
      Phase::StringId::operator=(v146, v156);
      if ((v156[16] & 1) == 0)
      {
        free(*&v156[8]);
      }

      v13 = v12;
      v14 = @"Parameters";
      v15 = [(NSDictionary *)v13 objectForKeyedSubscript:@"Parameters"];
      if (!v15)
      {
        v80 = MEMORY[0x277CCACA8];
        v81 = [MEMORY[0x277CCA8D8] mainBundle];
        v82 = [v81 localizedStringForKey:@"[NSDictionary objectForKey] failed for key: %@" value:&stru_284D3D208 table:0];
        v83 = [v80 stringWithFormat:v82, @"Parameters", v127];

        v85 = **(Phase::Logger::GetInstance(v84) + 800);
        if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
        {
          v86 = v83;
          v87 = [v83 UTF8String];
          *v156 = 136315650;
          *&v156[4] = "ProfileRegistry.mm";
          *&v156[12] = 1024;
          *&v156[14] = 639;
          v157 = 2080;
          v158 = v87;
          _os_log_impl(&dword_23A302000, v85, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (ProfileRegistryException::MissingRequiredField): %s", v156, 0x1Cu);
        }

        v88 = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(v88, "%s");
        v88->__vftable = &unk_284D36D88;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v71 = MEMORY[0x277CCACA8];
        v72 = [MEMORY[0x277CCA8D8] mainBundle];
        v73 = [v72 localizedStringForKey:@"[NSObject isKindOfClass:[[NSArray class]]] failed for key: %@" value:&stru_284D3D208 table:0];
        v74 = [v71 stringWithFormat:v73, @"Parameters", v127];

        v76 = **(Phase::Logger::GetInstance(v75) + 800);
        if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
        {
          v77 = v74;
          v78 = [v74 UTF8String];
          *v156 = 136315650;
          *&v156[4] = "ProfileRegistry.mm";
          *&v156[12] = 1024;
          *&v156[14] = 646;
          v157 = 2080;
          v158 = v78;
          _os_log_impl(&dword_23A302000, v76, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (ProfileRegistryException::FieldWithWrongType): %s", v156, 0x1Cu);
        }

        v79 = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(v79, "%s");
        v79->__vftable = &unk_284D36DB0;
      }

      v143 = 0u;
      v144 = 0u;
      v145 = 1065353216;
      if ([v15 count])
      {
        v16 = [v15 objectAtIndexedSubscript:0];
        Phase::Controller::ParameterFromDictionary(v156, v16);

        v17 = *v156;
        v18 = *(&v143 + 1);
        if (*(&v143 + 1))
        {
          v19 = vcnt_s8(*(&v143 + 8));
          v19.i16[0] = vaddlv_u8(v19);
          v20 = v19.u32[0];
          if (v19.u32[0] > 1uLL)
          {
            v21 = *v156;
            if (*(&v143 + 1) <= *v156)
            {
              v21 = *v156 % *(&v143 + 1);
            }
          }

          else
          {
            v21 = (*(&v143 + 1) - 1) & *v156;
          }

          v22 = *(v143 + 8 * v21);
          if (v22)
          {
            v23 = *v22;
            if (*v22)
            {
              v24 = *&v156[8];
              do
              {
                v25 = v23[1];
                if (v25 == v17)
                {
                  if (v23[2] == v17)
                  {
                    v26 = v23[3];
                    if (v26 == v24 || (v26 = strcmp(v26, v24), !v26))
                    {
                      v67 = **(Phase::Logger::GetInstance(v26) + 800);
                      if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
                      {
                        buf[0] = 136315650;
                        *&buf[1] = "ProfileRegistry.mm";
                        v152 = 1024;
                        v153 = 656;
                        v154 = 2080;
                        v155 = *&v156[8];
                        _os_log_impl(&dword_23A302000, v67, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (ProfileRegistryException::DuplicateEntry) [!pair.second is true]: Entry with name %s already exists", buf, 0x1Cu);
                      }

                      v68 = __cxa_allocate_exception(0x10uLL);
                      std::logic_error::logic_error(v68, "Entry with name %s already exists");
                      v68->__vftable = &unk_284D36FD8;
                    }
                  }
                }

                else
                {
                  if (v20 > 1)
                  {
                    if (v25 >= v18)
                    {
                      v25 %= v18;
                    }
                  }

                  else
                  {
                    v25 &= v18 - 1;
                  }

                  if (v25 != v21)
                  {
                    break;
                  }
                }

                v23 = *v23;
              }

              while (v23);
            }
          }
        }

        operator new();
      }

      if (*(&v149 + 1))
      {
        std::__hash_table<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Parameter>,std::__unordered_map_hasher<Phase::StringId,std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Parameter>,std::hash<Phase::StringId>,std::equal_to<Phase::StringId>,true>,std::__unordered_map_equal<Phase::StringId,std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Parameter>,std::equal_to<Phase::StringId>,std::hash<Phase::StringId>,true>,std::allocator<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Parameter>>>::__deallocate_node(&v148[4], v149);
        *&v149 = 0;
        v27 = *&v148[12];
        if (*&v148[12])
        {
          v28 = 0;
          do
          {
            *(*&v148[4] + 8 * v28++) = 0;
          }

          while (v27 != v28);
        }

        *(&v149 + 1) = 0;
      }

      v29 = v143;
      *&v143 = 0;
      v30 = *&v148[4];
      *&v148[4] = v29;
      if (v30)
      {
        operator delete(v30);
      }

      v31 = *(&v143 + 1);
      *(&v143 + 1) = 0;
      v149 = v144;
      v150 = v145;
      *&v148[12] = v31;
      if (*(&v144 + 1))
      {
        v32 = *(v144 + 8);
        if ((v31 & (v31 - 1)) != 0)
        {
          if (v32 >= v31)
          {
            v32 %= v31;
          }
        }

        else
        {
          v32 &= v31 - 1;
        }

        *(*&v148[4] + 8 * v32) = &v149;
        v144 = 0uLL;
      }

      std::__hash_table<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Parameter>,std::__unordered_map_hasher<Phase::StringId,std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Parameter>,std::hash<Phase::StringId>,std::equal_to<Phase::StringId>,true>,std::__unordered_map_equal<Phase::StringId,std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Parameter>,std::equal_to<Phase::StringId>,std::hash<Phase::StringId>,true>,std::allocator<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Parameter>>>::~__hash_table(&v143);

      v33 = *v146;
      v34 = *(&v140 + 1);
      if (*(&v140 + 1))
      {
        v35 = vcnt_s8(*(&v140 + 8));
        v35.i16[0] = vaddlv_u8(v35);
        v36 = v35.u32[0];
        if (v35.u32[0] > 1uLL)
        {
          v37 = *v146;
          if (*(&v140 + 1) <= *v146)
          {
            v37 = *v146 % *(&v140 + 1);
          }
        }

        else
        {
          v37 = (*(&v140 + 1) - 1) & *v146;
        }

        v38 = *(v140 + 8 * v37);
        if (v38)
        {
          v39 = *v38;
          if (*v38)
          {
            v40 = *&v146[8];
            do
            {
              v41 = v39[1];
              if (v41 == v33)
              {
                if (v39[2] == v33)
                {
                  v42 = v39[3];
                  if (v42 == v40 || (v42 = strcmp(v42, v40), !v42))
                  {
                    v69 = **(Phase::Logger::GetInstance(v42) + 800);
                    if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
                    {
                      *v156 = 136315650;
                      *&v156[4] = "ProfileRegistry.mm";
                      *&v156[12] = 1024;
                      *&v156[14] = 656;
                      v157 = 2080;
                      v158 = *&v146[8];
                      _os_log_impl(&dword_23A302000, v69, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (ProfileRegistryException::DuplicateEntry) [!pair.second is true]: Entry with name %s already exists", v156, 0x1Cu);
                    }

                    v70 = __cxa_allocate_exception(0x10uLL);
                    std::logic_error::logic_error(v70, "Entry with name %s already exists");
                    v70->__vftable = &unk_284D36FD8;
                  }
                }
              }

              else
              {
                if (v36 > 1)
                {
                  if (v41 >= v34)
                  {
                    v41 %= v34;
                  }
                }

                else
                {
                  v41 &= v34 - 1;
                }

                if (v41 != v37)
                {
                  break;
                }
              }

              v39 = *v39;
            }

            while (v39);
          }
        }
      }

      operator new();
    }

    if (*(&v138 + 1))
    {
      std::__hash_table<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Stage>,std::__unordered_map_hasher<Phase::StringId,std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Stage>,std::hash<Phase::StringId>,std::equal_to<Phase::StringId>,true>,std::__unordered_map_equal<Phase::StringId,std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Stage>,std::equal_to<Phase::StringId>,std::hash<Phase::StringId>,true>,std::allocator<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Stage>>>::__deallocate_node(&__p, v138);
      *&v138 = 0;
      v43 = *(&__p + 1);
      if (*(&__p + 1))
      {
        v44 = 0;
        do
        {
          *(__p + 8 * v44++) = 0;
        }

        while (v43 != v44);
      }

      *(&v138 + 1) = 0;
    }

    v45 = v140;
    *&v140 = 0;
    v46 = __p;
    *&__p = v45;
    if (v46)
    {
      operator delete(v46);
    }

    v47 = *(&v140 + 1);
    *(&v140 + 1) = 0;
    v138 = v141;
    v139 = v142;
    *(&__p + 1) = v47;
    if (*(&v141 + 1))
    {
      v48 = *(v141 + 8);
      if ((v47 & (v47 - 1)) != 0)
      {
        if (v48 >= v47)
        {
          v48 %= v47;
        }
      }

      else
      {
        v48 &= v47 - 1;
      }

      *(__p + 8 * v48) = &v138;
      v141 = 0uLL;
    }

    std::__hash_table<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Stage>,std::__unordered_map_hasher<Phase::StringId,std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Stage>,std::hash<Phase::StringId>,std::equal_to<Phase::StringId>,true>,std::__unordered_map_equal<Phase::StringId,std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Stage>,std::equal_to<Phase::StringId>,std::hash<Phase::StringId>,true>,std::allocator<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Stage>>>::~__hash_table(&v140);

    v49 = v134;
    if (*(&v131 + 1))
    {
      v50 = vcnt_s8(*(&v131 + 8));
      v50.i16[0] = vaddlv_u8(v50);
      v51 = v50.u32[0];
      if (v50.u32[0] > 1uLL)
      {
        v52 = v134;
        if (*(&v131 + 1) <= v134)
        {
          v52 = v134 % *(&v131 + 1);
        }
      }

      else
      {
        v52 = (*(&v131 + 1) - 1) & v134;
      }

      v53 = *(v131 + 8 * v52);
      if (v53)
      {
        v54 = *v53;
        if (*v53)
        {
          v55 = __s2;
          do
          {
            v56 = v54[1];
            if (v56 == v49)
            {
              if (v54[2] == v49)
              {
                v57 = v54[3];
                if (v57 == v55 || (v57 = strcmp(v57, v55), !v57))
                {
                  v89 = **(Phase::Logger::GetInstance(v57) + 800);
                  if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
                  {
                    *v146 = 136315650;
                    *&v146[4] = "ProfileRegistry.mm";
                    *&v146[12] = 1024;
                    *&v146[14] = 656;
                    v147 = 2080;
                    *v148 = __s2;
                    _os_log_impl(&dword_23A302000, v89, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (ProfileRegistryException::DuplicateEntry) [!pair.second is true]: Entry with name %s already exists", v146, 0x1Cu);
                  }

                  v90 = __cxa_allocate_exception(0x10uLL);
                  std::logic_error::logic_error(v90, "Entry with name %s already exists");
                  v90->__vftable = &unk_284D36FD8;
                }
              }
            }

            else
            {
              if (v51 > 1)
              {
                if (v56 >= *(&v131 + 1))
                {
                  v56 %= *(&v131 + 1);
                }
              }

              else
              {
                v56 &= *(&v131 + 1) - 1;
              }

              if (v56 != v52)
              {
                break;
              }
            }

            v54 = *v54;
          }

          while (v54);
        }
      }
    }

    operator new();
  }

  if (*(this + 10))
  {
    std::__hash_table<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Graph>,std::__unordered_map_hasher<Phase::StringId,std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Graph>,std::hash<Phase::StringId>,std::equal_to<Phase::StringId>,true>,std::__unordered_map_equal<Phase::StringId,std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Graph>,std::equal_to<Phase::StringId>,std::hash<Phase::StringId>,true>,std::allocator<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Graph>>>::__deallocate_node(v128, *(this + 9));
    *(this + 9) = 0;
    v58 = *(this + 8);
    if (v58)
    {
      for (i = 0; i != v58; ++i)
      {
        *(*v128 + i) = 0;
      }
    }

    *(this + 10) = 0;
  }

  v60 = v131;
  *&v131 = 0;
  v61 = *v128;
  *v128 = v60;
  if (v61)
  {
    operator delete(v61);
  }

  v62 = *(&v131 + 1);
  v63 = v132;
  *(this + 9) = v132;
  v64 = this + 72;
  *(v64 - 1) = v62;
  *(&v131 + 1) = 0;
  v65 = *(&v132 + 1);
  *(v64 + 1) = *(&v132 + 1);
  *(v64 + 4) = v133;
  if (v65)
  {
    v66 = *(v63 + 8);
    if ((v62 & (v62 - 1)) != 0)
    {
      if (v66 >= v62)
      {
        v66 %= v62;
      }
    }

    else
    {
      v66 &= v62 - 1;
    }

    *(*v128 + v66) = v64;
    v132 = 0uLL;
  }

  std::__hash_table<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Graph>,std::__unordered_map_hasher<Phase::StringId,std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Graph>,std::hash<Phase::StringId>,std::equal_to<Phase::StringId>,true>,std::__unordered_map_equal<Phase::StringId,std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Graph>,std::equal_to<Phase::StringId>,std::hash<Phase::StringId>,true>,std::allocator<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Graph>>>::~__hash_table(&v131);
}

void sub_23A4BD8F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void **a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  Phase::Controller::ProfileRegistry::Category::~Category(a26);

  _Unwind_Resume(a1);
}

void Phase::Controller::ProfileRegistry::Category::~Category(void **this)
{
  std::__hash_table<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Graph>,std::__unordered_map_hasher<Phase::StringId,std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Graph>,std::hash<Phase::StringId>,std::equal_to<Phase::StringId>,true>,std::__unordered_map_equal<Phase::StringId,std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Graph>,std::equal_to<Phase::StringId>,std::hash<Phase::StringId>,true>,std::allocator<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Graph>>>::~__hash_table((this + 7));
  if ((this[5] & 1) == 0)
  {
    free(this[4]);
  }

  this[3] = 0;
  this[4] = &str_20;
  *(this + 40) = 1;
  if ((this[2] & 1) == 0)
  {
    free(this[1]);
  }

  *this = 0;
  this[1] = &str_20;
  *(this + 16) = 1;
}

void Phase::Controller::ProfileRegistry::AddFromJSONFile(Phase::Controller::ProfileRegistry *this, NSURL *a2, Phase::Controller::SpatialModelerRegistry *a3)
{
  v322 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v278 = v5;
  if (!v5)
  {
    v217 = MEMORY[0x277CCACA8];
    v218 = [MEMORY[0x277CCA8D8] mainBundle];
    v219 = [v218 localizedStringForKey:@"inFileURL is nil" value:&stru_284D3D208 table:0];
    v220 = [v217 stringWithFormat:v219];

    v222 = **(Phase::Logger::GetInstance(v221) + 800);
    if (os_log_type_enabled(v222, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "ProfileRegistry.mm";
      *&buf[12] = 1024;
      *&buf[14] = 667;
      v304 = 2080;
      v305 = [v220 UTF8String];
      _os_log_impl(&dword_23A302000, v222, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (ProfileRegistryException::NilURL): %s", buf, 0x1Cu);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "%s");
    exception->__vftable = &unk_284D36EA0;
  }

  v281 = this;
  v299 = 0;
  v6 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v5 options:2 error:&v299];
  v7 = v299;
  v277 = v6;
  if (!v6)
  {
    v224 = MEMORY[0x277CCACA8];
    v225 = [MEMORY[0x277CCA8D8] mainBundle];
    v226 = [v225 localizedStringForKey:@"[NSData dataWithContentsOfUrl] failed to read file %@ with error: %@" value:&stru_284D3D208 table:0];
    v227 = [(NSURL *)v278 resourceSpecifier];
    v228 = [v7 localizedDescription];
    v229 = [v224 stringWithFormat:v226, v227, v228];

    v231 = **(Phase::Logger::GetInstance(v230) + 800);
    if (os_log_type_enabled(v231, OS_LOG_TYPE_ERROR))
    {
      v232 = v229;
      v233 = [v229 UTF8String];
      *buf = 136315650;
      *&buf[4] = "ProfileRegistry.mm";
      *&buf[12] = 1024;
      *&buf[14] = 677;
      v304 = 2080;
      v305 = v233;
      _os_log_impl(&dword_23A302000, v231, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (ProfileRegistryException::InvalidURL): %s", buf, 0x1Cu);
    }

    v234 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v234, "%s");
    v234->__vftable = &unk_284D36EC8;
  }

  v298 = v7;
  v282 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v6 options:0 error:&v298];
  v279 = v298;

  if (!v282 || v279)
  {
    v235 = MEMORY[0x277CCACA8];
    v236 = [MEMORY[0x277CCA8D8] mainBundle];
    v237 = [v236 localizedStringForKey:@"[NSJSONSerialization JSONObjectWithData] failed to parse data %@ with error: %@" value:&stru_284D3D208 table:0];
    v238 = [v277 description];
    v239 = [v279 localizedDescription];
    v240 = [v235 stringWithFormat:v237, v238, v239];

    v242 = **(Phase::Logger::GetInstance(v241) + 800);
    if (os_log_type_enabled(v242, OS_LOG_TYPE_ERROR))
    {
      v243 = v240;
      v244 = [v240 UTF8String];
      *buf = 136315650;
      *&buf[4] = "ProfileRegistry.mm";
      *&buf[12] = 1024;
      *&buf[14] = 686;
      v304 = 2080;
      v305 = v244;
      _os_log_impl(&dword_23A302000, v242, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (ProfileRegistryException::InvalidJSON): %s", buf, 0x1Cu);
    }

    v245 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v245, "%s");
    v245->__vftable = &unk_284D36EF0;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v246 = MEMORY[0x277CCACA8];
    v247 = [MEMORY[0x277CCA8D8] mainBundle];
    v248 = [v247 localizedStringForKey:@"[NSObject isKindOfClass:[[NSDictionary class]]] failed for jsonObject: %@" value:&stru_284D3D208 table:0];
    v249 = [v282 description];
    v250 = [v246 stringWithFormat:v248, v249];

    v252 = **(Phase::Logger::GetInstance(v251) + 800);
    if (os_log_type_enabled(v252, OS_LOG_TYPE_ERROR))
    {
      v253 = v250;
      v254 = [v250 UTF8String];
      *buf = 136315650;
      *&buf[4] = "ProfileRegistry.mm";
      *&buf[12] = 1024;
      *&buf[14] = 694;
      v304 = 2080;
      v305 = v254;
      _os_log_impl(&dword_23A302000, v252, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (ProfileRegistryException::FieldWithWrongType): %s", buf, 0x1Cu);
    }

    v255 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v255, "%s");
    v255->__vftable = &unk_284D36DB0;
  }

  v9 = **(Phase::Logger::GetInstance(isKindOfClass) + 800);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(NSURL *)v278 absoluteString];
    v11 = v10;
    v12 = [v10 UTF8String];
    *buf = 136315906;
    *&buf[4] = "ProfileRegistry.mm";
    *&buf[12] = 1024;
    *&buf[14] = 698;
    v304 = 2048;
    v305 = v281;
    v306 = 2080;
    v307 = v12;
    _os_log_impl(&dword_23A302000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d profileregistry@%p: Loading profiles from file '%s'.", buf, 0x26u);
  }

  v13 = v282;
  v14 = @"Profiles";
  v280 = v13;
  v15 = [v13 objectForKeyedSubscript:@"Profiles"];
  if (!v15)
  {
    v256 = MEMORY[0x277CCACA8];
    v257 = [MEMORY[0x277CCA8D8] mainBundle];
    v258 = [v257 localizedStringForKey:@"[NSDictionary objectForKey] failed for key: %@" value:&stru_284D3D208 table:0];
    v259 = [v256 stringWithFormat:v258, @"Profiles"];

    v261 = **(Phase::Logger::GetInstance(v260) + 800);
    if (os_log_type_enabled(v261, OS_LOG_TYPE_ERROR))
    {
      v262 = v259;
      v263 = [v259 UTF8String];
      *buf = 136315650;
      *&buf[4] = "ProfileRegistry.mm";
      *&buf[12] = 1024;
      *&buf[14] = 639;
      v304 = 2080;
      v305 = v263;
      _os_log_impl(&dword_23A302000, v261, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (ProfileRegistryException::MissingRequiredField): %s", buf, 0x1Cu);
    }

    v264 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v264, "%s");
    v264->__vftable = &unk_284D36D88;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v265 = MEMORY[0x277CCACA8];
    v266 = [MEMORY[0x277CCA8D8] mainBundle];
    v267 = [v266 localizedStringForKey:@"[NSObject isKindOfClass:[[NSArray class]]] failed for key: %@" value:&stru_284D3D208 table:0];
    v268 = [v265 stringWithFormat:v267, @"Profiles"];

    v270 = **(Phase::Logger::GetInstance(v269) + 800);
    if (os_log_type_enabled(v270, OS_LOG_TYPE_ERROR))
    {
      v271 = v268;
      v272 = [v268 UTF8String];
      *buf = 136315650;
      *&buf[4] = "ProfileRegistry.mm";
      *&buf[12] = 1024;
      *&buf[14] = 646;
      v304 = 2080;
      v305 = v272;
      _os_log_impl(&dword_23A302000, v270, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (ProfileRegistryException::FieldWithWrongType): %s", buf, 0x1Cu);
    }

    v273 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v273, "%s");
    v273->__vftable = &unk_284D36DB0;
  }

  v295 = 0u;
  v296 = 0u;
  v297 = 1065353216;
  if ([v15 count])
  {
    v16 = [v15 objectAtIndexedSubscript:0];
    v285 = 0;
    __s2 = &str_20;
    v287 = 1;
    v288 = 0.0;
    v289 = 10;
    v290 = 0.2;
    __p = 0u;
    v292 = 0u;
    v293 = 1065353216;
    v283 = v16;
    Phase::Controller::StringIdFromDictionary(buf, v16, &cfstr_Name_0.isa);
    Phase::StringId::operator=(&v285, buf);
    if ((buf[16] & 1) == 0)
    {
      free(*&buf[8]);
    }

    v288 = Phase::Controller::DoubleFromDictionary(v283, @"ComputeTime", v17);
    v18 = v283;
    v19 = @"OverflowDetectionHistoryLength";
    v20 = [(Phase::Controller *)v18 objectForKeyedSubscript:@"OverflowDetectionHistoryLength"];
    if (!v20)
    {
      v162 = MEMORY[0x277CCACA8];
      v163 = [MEMORY[0x277CCA8D8] mainBundle];
      v164 = [v163 localizedStringForKey:@"[NSDictionary objectForKey] failed for key: %@" value:&stru_284D3D208 table:0];
      v165 = [v162 stringWithFormat:v164, @"OverflowDetectionHistoryLength"];

      v167 = **(Phase::Logger::GetInstance(v166) + 800);
      if (os_log_type_enabled(v167, OS_LOG_TYPE_ERROR))
      {
        v168 = v165;
        v169 = [v165 UTF8String];
        *buf = 136315650;
        *&buf[4] = "ProfileRegistry.mm";
        *&buf[12] = 1024;
        *&buf[14] = 257;
        v304 = 2080;
        v305 = v169;
        _os_log_impl(&dword_23A302000, v167, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (ProfileRegistryException::MissingRequiredField): %s", buf, 0x1Cu);
      }

      v170 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v170, "%s");
      v170->__vftable = &unk_284D36D88;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v171 = MEMORY[0x277CCACA8];
      v172 = [MEMORY[0x277CCA8D8] mainBundle];
      v173 = [v172 localizedStringForKey:@"[NSObject isKindOfClass:[[NSNumber class]]] failed for key: %@" value:&stru_284D3D208 table:0];
      v174 = [v171 stringWithFormat:v173, @"OverflowDetectionHistoryLength"];

      v176 = **(Phase::Logger::GetInstance(v175) + 800);
      if (os_log_type_enabled(v176, OS_LOG_TYPE_ERROR))
      {
        v177 = v174;
        v178 = [v174 UTF8String];
        *buf = 136315650;
        *&buf[4] = "ProfileRegistry.mm";
        *&buf[12] = 1024;
        *&buf[14] = 264;
        v304 = 2080;
        v305 = v178;
        _os_log_impl(&dword_23A302000, v176, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (ProfileRegistryException::FieldWithWrongType): %s", buf, 0x1Cu);
      }

      v179 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v179, "%s");
      v179->__vftable = &unk_284D36DB0;
    }

    v21 = [v20 longValue];

    v289 = v21;
    v290 = Phase::Controller::DoubleFromDictionary(v18, @"OverflowDetectionTimingThresholdSeconds", v22);
    v23 = v18;
    v24 = @"Categories";
    v25 = [(Phase::Controller *)v23 objectForKeyedSubscript:@"Categories"];
    if (!v25)
    {
      v180 = MEMORY[0x277CCACA8];
      v181 = [MEMORY[0x277CCA8D8] mainBundle];
      v182 = [v181 localizedStringForKey:@"[NSDictionary objectForKey] failed for key: %@" value:&stru_284D3D208 table:0];
      v183 = [v180 stringWithFormat:v182, @"Categories"];

      v185 = **(Phase::Logger::GetInstance(v184) + 800);
      if (os_log_type_enabled(v185, OS_LOG_TYPE_ERROR))
      {
        v186 = v183;
        v187 = [v183 UTF8String];
        *buf = 136315650;
        *&buf[4] = "ProfileRegistry.mm";
        *&buf[12] = 1024;
        *&buf[14] = 639;
        v304 = 2080;
        v305 = v187;
        _os_log_impl(&dword_23A302000, v185, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (ProfileRegistryException::MissingRequiredField): %s", buf, 0x1Cu);
      }

      v188 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v188, "%s");
      v188->__vftable = &unk_284D36D88;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v189 = MEMORY[0x277CCACA8];
      v190 = [MEMORY[0x277CCA8D8] mainBundle];
      v191 = [v190 localizedStringForKey:@"[NSObject isKindOfClass:[[NSArray class]]] failed for key: %@" value:&stru_284D3D208 table:0];
      v192 = [v189 stringWithFormat:v191, @"Categories"];

      v194 = **(Phase::Logger::GetInstance(v193) + 800);
      if (os_log_type_enabled(v194, OS_LOG_TYPE_ERROR))
      {
        v195 = v192;
        v196 = [v192 UTF8String];
        *buf = 136315650;
        *&buf[4] = "ProfileRegistry.mm";
        *&buf[12] = 1024;
        *&buf[14] = 646;
        v304 = 2080;
        v305 = v196;
        _os_log_impl(&dword_23A302000, v194, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (ProfileRegistryException::FieldWithWrongType): %s", buf, 0x1Cu);
      }

      v197 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v197, "%s");
      v197->__vftable = &unk_284D36DB0;
    }

    *v300 = 0u;
    v301 = 0u;
    v302 = 1065353216;
    if ([v25 count])
    {
      v26 = [v25 objectAtIndexedSubscript:0];
      Phase::Controller::CategoryFromDictionary(buf, v26);

      v27 = *buf;
      v28 = *&v300[8];
      if (*&v300[8])
      {
        v29 = vcnt_s8(*&v300[8]);
        v29.i16[0] = vaddlv_u8(v29);
        v30 = v29.u32[0];
        if (v29.u32[0] > 1uLL)
        {
          v31 = *buf;
          if (*&v300[8] <= *buf)
          {
            v31 = *buf % *&v300[8];
          }
        }

        else
        {
          v31 = (*&v300[8] - 1) & *buf;
        }

        v32 = *(*v300 + 8 * v31);
        if (v32)
        {
          v33 = *v32;
          if (*v32)
          {
            v34 = *&buf[8];
            do
            {
              v35 = v33[1];
              if (v35 == v27)
              {
                if (v33[2] == v27)
                {
                  v36 = v33[3];
                  if (v36 == v34 || (v36 = strcmp(v36, v34), !v36))
                  {
                    v149 = **(Phase::Logger::GetInstance(v36) + 800);
                    if (os_log_type_enabled(v149, OS_LOG_TYPE_ERROR))
                    {
                      *v321 = 136315650;
                      *&v321[4] = "ProfileRegistry.mm";
                      *&v321[12] = 1024;
                      *&v321[14] = 656;
                      *&v321[18] = 2080;
                      *&v321[20] = *&buf[8];
                      _os_log_impl(&dword_23A302000, v149, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (ProfileRegistryException::DuplicateEntry) [!pair.second is true]: Entry with name %s already exists", v321, 0x1Cu);
                    }

                    v150 = __cxa_allocate_exception(0x10uLL);
                    std::logic_error::logic_error(v150, "Entry with name %s already exists");
                    v150->__vftable = &unk_284D36FD8;
                  }
                }
              }

              else
              {
                if (v30 > 1)
                {
                  if (v35 >= v28)
                  {
                    v35 %= v28;
                  }
                }

                else
                {
                  v35 &= v28 - 1;
                }

                if (v35 != v31)
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

      operator new();
    }

    if (*(&v292 + 1))
    {
      std::__hash_table<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Category>,std::__unordered_map_hasher<Phase::StringId,std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Category>,std::hash<Phase::StringId>,std::equal_to<Phase::StringId>,true>,std::__unordered_map_equal<Phase::StringId,std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Category>,std::equal_to<Phase::StringId>,std::hash<Phase::StringId>,true>,std::allocator<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Category>>>::__deallocate_node(&__p, v292);
      *&v292 = 0;
      v37 = *(&__p + 1);
      if (*(&__p + 1))
      {
        v38 = 0;
        do
        {
          *(__p + 8 * v38++) = 0;
        }

        while (v37 != v38);
      }

      *(&v292 + 1) = 0;
    }

    v39 = *v300;
    *v300 = 0;
    v40 = __p;
    *&__p = v39;
    if (v40)
    {
      operator delete(v40);
    }

    v41 = *&v300[8];
    *&v300[8] = 0;
    v292 = v301;
    v293 = v302;
    *(&__p + 1) = v41;
    if (*(&v301 + 1))
    {
      v42 = *(v301 + 8);
      if ((v41 & (v41 - 1)) != 0)
      {
        if (v42 >= v41)
        {
          v42 %= v41;
        }
      }

      else
      {
        v42 &= v41 - 1;
      }

      *(__p + 8 * v42) = &v292;
      v301 = 0uLL;
    }

    std::__hash_table<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Category>,std::__unordered_map_hasher<Phase::StringId,std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Category>,std::hash<Phase::StringId>,std::equal_to<Phase::StringId>,true>,std::__unordered_map_equal<Phase::StringId,std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Category>,std::equal_to<Phase::StringId>,std::hash<Phase::StringId>,true>,std::allocator<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Category>>>::~__hash_table(v300);

    v43 = v285;
    v44 = *(&v295 + 1);
    if (*(&v295 + 1))
    {
      v45 = vcnt_s8(*(&v295 + 8));
      v45.i16[0] = vaddlv_u8(v45);
      v46 = v45.u32[0];
      if (v45.u32[0] > 1uLL)
      {
        v47 = v285;
        if (*(&v295 + 1) <= v285)
        {
          v47 = v285 % *(&v295 + 1);
        }
      }

      else
      {
        v47 = (*(&v295 + 1) - 1) & v285;
      }

      v48 = *(v295 + 8 * v47);
      if (v48)
      {
        v49 = *v48;
        if (*v48)
        {
          v50 = __s2;
          do
          {
            v51 = v49[1];
            if (v51 == v43)
            {
              if (v49[2] == v43)
              {
                v52 = v49[3];
                if (v52 == v50 || (v52 = strcmp(v52, v50), !v52))
                {
                  v160 = **(Phase::Logger::GetInstance(v52) + 800);
                  if (os_log_type_enabled(v160, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136315650;
                    *&buf[4] = "ProfileRegistry.mm";
                    *&buf[12] = 1024;
                    *&buf[14] = 656;
                    v304 = 2080;
                    v305 = __s2;
                    _os_log_impl(&dword_23A302000, v160, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (ProfileRegistryException::DuplicateEntry) [!pair.second is true]: Entry with name %s already exists", buf, 0x1Cu);
                  }

                  v161 = __cxa_allocate_exception(0x10uLL);
                  std::logic_error::logic_error(v161, "Entry with name %s already exists");
                  v161->__vftable = &unk_284D36FD8;
                }
              }
            }

            else
            {
              if (v46 > 1)
              {
                if (v51 >= v44)
                {
                  v51 %= v44;
                }
              }

              else
              {
                v51 &= v44 - 1;
              }

              if (v51 != v47)
              {
                break;
              }
            }

            v49 = *v49;
          }

          while (v49);
        }
      }
    }

    operator new();
  }

  v53 = v296;
  if (v296)
  {
    Phase::StringId::StringId(&v285, v296 + 16);
    Phase::StringId::StringId(&v288, v53 + 40);
    __p = *(v53 + 64);
    *&v292 = *(v53 + 80);
    v54 = std::unordered_map<Phase::StringId,Phase::Controller::ProfileRegistry::Category>::unordered_map(&v292 + 8, v53 + 88);
    if (v288 != 0.0 && v288 != NAN || v289 != &str_20 && *v289)
    {
      if (*&__p <= 0.0)
      {
        v210 = **(Phase::Logger::GetInstance(v54) + 800);
        if (os_log_type_enabled(v210, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          *&buf[4] = "ProfileRegistry.mm";
          *&buf[12] = 1024;
          *&buf[14] = 44;
          v304 = 2080;
          v305 = v289;
          v306 = 2048;
          v307 = __p;
          _os_log_impl(&dword_23A302000, v210, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (Phase::Controller::ProfileRegistryException::InvalidNumber): [%s]: ComputeTime %f must be >= 0", buf, 0x26u);
        }

        v211 = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(v211, "[%s]: ComputeTime %f must be >= 0");
      }

      else if (*(&__p + 1) <= 0)
      {
        v212 = **(Phase::Logger::GetInstance(v54) + 800);
        if (os_log_type_enabled(v212, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          *&buf[4] = "ProfileRegistry.mm";
          *&buf[12] = 1024;
          *&buf[14] = 51;
          v304 = 2080;
          v305 = v289;
          v306 = 2048;
          v307 = *(&__p + 1);
          _os_log_impl(&dword_23A302000, v212, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (Phase::Controller::ProfileRegistryException::InvalidNumber): [%s]: OverflowDetectionHistoryLength %ld must be > 0", buf, 0x26u);
        }

        v211 = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(v211, "[%s]: OverflowDetectionHistoryLength %ld must be > 0");
      }

      else
      {
        if (*&v292 > 0.0)
        {
          memset(v321, 0, 24);
          v56 = v294;
          if (v294)
          {
            do
            {
              SpatialCategoryFromStringId = Phase::Controller::GetSpatialCategoryFromStringId((v56 + 2), v55);
              if (!SpatialCategoryFromStringId)
              {
                v198 = **(Phase::Logger::GetInstance(SpatialCategoryFromStringId) + 800);
                if (os_log_type_enabled(v198, OS_LOG_TYPE_ERROR))
                {
                  v199 = v56[3];
                  *buf = 136315906;
                  *&buf[4] = "ProfileRegistry.mm";
                  *&buf[12] = 1024;
                  *&buf[14] = 232;
                  v304 = 2080;
                  v305 = v289;
                  v306 = 2080;
                  v307 = v199;
                  _os_log_impl(&dword_23A302000, v198, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (Phase::Controller::ProfileRegistryException::InvalidString): [%s]: Category %s isn't recognized.", buf, 0x26u);
                }

                v200 = __cxa_allocate_exception(0x10uLL);
                std::logic_error::logic_error(v200, "[%s]: Category %s isn't recognized.");
                v200->__vftable = &unk_284D36E00;
              }

              if (*&v321[8] >= *&v321[16])
              {
                v59 = 0xAAAAAAAAAAAAAAABLL * ((*&v321[8] - *v321) >> 3) + 1;
                if (v59 > 0xAAAAAAAAAAAAAAALL)
                {
                  std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
                }

                if (0x5555555555555556 * ((*&v321[16] - *v321) >> 3) > v59)
                {
                  v59 = 0x5555555555555556 * ((*&v321[16] - *v321) >> 3);
                }

                if (0xAAAAAAAAAAAAAAABLL * ((*&v321[16] - *v321) >> 3) >= 0x555555555555555)
                {
                  v60 = 0xAAAAAAAAAAAAAAALL;
                }

                else
                {
                  v60 = v59;
                }

                if (v60)
                {
                  if (v60 <= 0xAAAAAAAAAAAAAAALL)
                  {
                    operator new();
                  }

                  std::__throw_bad_array_new_length[abi:ne200100]();
                }

                v61 = 8 * ((*&v321[8] - *v321) >> 3);
                Phase::StringId::StringId(v61, (v56 + 8));
                v63 = *v321;
                v62 = *&v321[8];
                v64 = v61 + *v321 - *&v321[8];
                if (*&v321[8] != *v321)
                {
                  v65 = *v321;
                  v66 = v61 + *v321 - *&v321[8];
                  do
                  {
                    v67 = Phase::StringId::StringId(v66, v65);
                    v65 += 24;
                    v66 = v67 + 24;
                  }

                  while (v65 != v62);
                  do
                  {
                    if ((v63[2] & 1) == 0)
                    {
                      free(v63[1]);
                    }

                    *v63 = 0;
                    v63[1] = &str_20;
                    *(v63 + 16) = 1;
                    v63 += 3;
                  }

                  while (v63 != v62);
                  v63 = *v321;
                }

                v58 = v61 + 24;
                *v321 = v64;
                *&v321[8] = v61 + 24;
                *&v321[16] = 0;
                if (v63)
                {
                  operator delete(v63);
                }
              }

              else
              {
                v58 = Phase::StringId::StringId(*&v321[8], (v56 + 8)) + 24;
              }

              *&v321[8] = v58;
              v68 = v56[14];
              if (v68)
              {
                do
                {
                  SpatialModelerGraphFromStringId = Phase::Controller::GetSpatialModelerGraphFromStringId((v68 + 2), v55);
                  if (!SpatialModelerGraphFromStringId)
                  {
                    v156 = **(Phase::Logger::GetInstance(SpatialModelerGraphFromStringId) + 800);
                    if (os_log_type_enabled(v156, OS_LOG_TYPE_ERROR))
                    {
                      v157 = v56[3];
                      v158 = v68[3];
                      *buf = 136316162;
                      *&buf[4] = "ProfileRegistry.mm";
                      *&buf[12] = 1024;
                      *&buf[14] = 225;
                      v304 = 2080;
                      v305 = v289;
                      v306 = 2080;
                      v307 = v157;
                      v308 = 2080;
                      v309 = v158;
                      _os_log_impl(&dword_23A302000, v156, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (Phase::Controller::ProfileRegistryException::InvalidString): [%s:%s]: Graph %s isn't recognized.", buf, 0x30u);
                    }

                    v159 = __cxa_allocate_exception(0x10uLL);
                    std::logic_error::logic_error(v159, "[%s:%s]: Graph %s isn't recognized.");
                    v159->__vftable = &unk_284D36E00;
                  }

                  v284 = v68;
                  for (i = v68[10]; i; i = *i)
                  {
                    SpatialModelerStageFromStringId = Phase::Controller::GetSpatialModelerStageFromStringId((i + 2), v55);
                    if (!SpatialModelerStageFromStringId)
                    {
                      v151 = **(Phase::Logger::GetInstance(SpatialModelerStageFromStringId) + 800);
                      if (os_log_type_enabled(v151, OS_LOG_TYPE_ERROR))
                      {
                        v152 = v56[3];
                        v153 = v68[3];
                        v154 = i[3];
                        *buf = 136316418;
                        *&buf[4] = "ProfileRegistry.mm";
                        *&buf[12] = 1024;
                        *&buf[14] = 217;
                        v304 = 2080;
                        v305 = v289;
                        v306 = 2080;
                        v307 = v152;
                        v308 = 2080;
                        v309 = v153;
                        v310[0] = 2080;
                        *&v310[1] = v154;
                        _os_log_impl(&dword_23A302000, v151, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (Phase::Controller::ProfileRegistryException::InvalidString): [%s:%s:%s]: Stage %s isn't recognized.", buf, 0x3Au);
                      }

                      v155 = __cxa_allocate_exception(0x10uLL);
                      std::logic_error::logic_error(v155, "[%s:%s:%s]: Stage %s isn't recognized.");
                      v155->__vftable = &unk_284D36E00;
                    }

                    for (j = i[10]; j; j = *j)
                    {
                      SpatialModelerParameterFromStringId = Phase::Controller::GetSpatialModelerParameterFromStringId((j + 2), v55);
                      v74 = SpatialModelerParameterFromStringId;
                      if (!SpatialModelerParameterFromStringId)
                      {
                        v114 = **(Phase::Logger::GetInstance(SpatialModelerParameterFromStringId) + 800);
                        if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
                        {
                          v115 = v56[3];
                          v116 = v68[3];
                          v117 = i[3];
                          v118 = j[3];
                          *buf = 136316674;
                          *&buf[4] = "ProfileRegistry.mm";
                          *&buf[12] = 1024;
                          *&buf[14] = 87;
                          v304 = 2080;
                          v305 = v289;
                          v306 = 2080;
                          v307 = v115;
                          v308 = 2080;
                          v309 = v116;
                          v310[0] = 2080;
                          *&v310[1] = v117;
                          v311 = 2080;
                          v312 = v118;
                          _os_log_impl(&dword_23A302000, v114, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (Phase::Controller::ProfileRegistryException::InvalidString): [%s:%s:%s:%s]: Parameter %s isn't recognized.", buf, 0x44u);
                        }

                        v119 = __cxa_allocate_exception(0x10uLL);
                        std::logic_error::logic_error(v119, "[%s:%s:%s:%s]: Parameter %s isn't recognized.");
                        v119->__vftable = &unk_284D36E00;
                      }

                      v75 = *j[8];
                      v76 = *(j[9] - 48);
                      if (v75 < 0.0 || v76 > 1.0)
                      {
                        v107 = **(Phase::Logger::GetInstance(SpatialModelerParameterFromStringId) + 800);
                        if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
                        {
                          v109 = v56[3];
                          v110 = v68[3];
                          v111 = i[3];
                          v112 = j[3];
                          *buf = 136317698;
                          *&buf[4] = "ProfileRegistry.mm";
                          *&buf[12] = 1024;
                          *&buf[14] = 100;
                          v304 = 2080;
                          v305 = v289;
                          v306 = 2080;
                          v307 = v109;
                          v308 = 2080;
                          v309 = v110;
                          v310[0] = 2080;
                          *&v310[1] = v111;
                          v311 = 2080;
                          v312 = v112;
                          v313 = 2048;
                          v314 = v75;
                          v315 = 2048;
                          v316 = v76;
                          v317 = 2048;
                          v318 = 0;
                          v319 = 2048;
                          v320 = 0x3FF0000000000000;
                          _os_log_impl(&dword_23A302000, v107, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (Phase::Controller::ProfileRegistryException::InvalidEnvelopeDomain): [%s:%s:%s:%s:%s]: Envelope has invalid domain [%f, %f]. Must be within [%f, %f].", buf, 0x6Cu);
                        }

                        v113 = __cxa_allocate_exception(0x10uLL);
                        std::logic_error::logic_error(v113, "[%s:%s:%s:%s:%s]: Envelope has invalid domain [%f, %f]. Must be within [%f, %f].");
                        v113->__vftable = &unk_284D36F60;
                      }

                      *buf = v56[8];
                      v78 = std::__hash_table<std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>>>::find<unsigned long long>(a3, buf);
                      if (!v78)
                      {
                        v103 = **(Phase::Logger::GetInstance(0) + 800);
                        if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
                        {
                          v104 = v56[3];
                          v105 = v56[9];
                          *buf = 136316162;
                          *&buf[4] = "ProfileRegistry.mm";
                          *&buf[12] = 1024;
                          *&buf[14] = 109;
                          v304 = 2080;
                          v305 = v289;
                          v306 = 2080;
                          v307 = v104;
                          v308 = 2080;
                          v309 = v105;
                          _os_log_impl(&dword_23A302000, v103, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (Phase::Controller::ProfileRegistryException::InvalidSpatialModeler): [%s:%s]: Invalid Spatial Modeler: %s", buf, 0x30u);
                        }

                        v106 = __cxa_allocate_exception(0x10uLL);
                        std::logic_error::logic_error(v106, "[%s:%s]: Invalid Spatial Modeler: %s");
                        v106->__vftable = &unk_284D36F88;
                      }

                      v81 = Phase::Envelope<double>::Range(j + 8);
                      v82 = v80;
                      if (v74 <= 2)
                      {
                        if (v74 == 1)
                        {
                          if (v81 < v78[21] || v80 > v78[22])
                          {
                            v135 = **(Phase::Logger::GetInstance(v79) + 800);
                            if (os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
                            {
                              v136 = v56[3];
                              v137 = v68[3];
                              v138 = i[3];
                              v139 = j[3];
                              v140 = *(v78 + 21);
                              v141 = *(v78 + 22);
                              *buf = 136317698;
                              *&buf[4] = "ProfileRegistry.mm";
                              *&buf[12] = 1024;
                              *&buf[14] = 126;
                              v304 = 2080;
                              v305 = v289;
                              v306 = 2080;
                              v307 = v136;
                              v308 = 2080;
                              v309 = v137;
                              v310[0] = 2080;
                              *&v310[1] = v138;
                              v311 = 2080;
                              v312 = v139;
                              v313 = 2048;
                              v314 = v81;
                              v315 = 2048;
                              v316 = v82;
                              v317 = 2048;
                              v318 = v140;
                              v319 = 2048;
                              v320 = v141;
                              _os_log_impl(&dword_23A302000, v135, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (Phase::Controller::ProfileRegistryException::InvalidEnvelopeRange): [%s:%s:%s:%s:%s]: Envelope has invalid UpdateRate range [%f, %f]. Must be within [%f, %f].", buf, 0x6Cu);
                            }

                            v127 = __cxa_allocate_exception(0x10uLL);
                            std::logic_error::logic_error(v127, "[%s:%s:%s:%s:%s]: Envelope has invalid UpdateRate range [%f, %f]. Must be within [%f, %f].");
LABEL_192:
                            v127->__vftable = &unk_284D36FB0;
                          }
                        }

                        else if (v74 == 2)
                        {
                          if (!((((j[9] - j[8]) >> 6) + 1) >> 60))
                          {
                            operator new();
                          }

                          std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
                        }
                      }

                      else if (v74 == 3)
                      {
                        if (v81 < v78[25] || v80 > v78[26])
                        {
                          v120 = **(Phase::Logger::GetInstance(v79) + 800);
                          if (os_log_type_enabled(v120, OS_LOG_TYPE_ERROR))
                          {
                            v121 = v56[3];
                            v122 = v68[3];
                            v123 = i[3];
                            v124 = j[3];
                            v125 = *(v78 + 25);
                            v126 = *(v78 + 26);
                            *buf = 136317698;
                            *&buf[4] = "ProfileRegistry.mm";
                            *&buf[12] = 1024;
                            *&buf[14] = 164;
                            v304 = 2080;
                            v305 = v289;
                            v306 = 2080;
                            v307 = v121;
                            v308 = 2080;
                            v309 = v122;
                            v310[0] = 2080;
                            *&v310[1] = v123;
                            v311 = 2080;
                            v312 = v124;
                            v313 = 2048;
                            v314 = v81;
                            v315 = 2048;
                            v316 = v82;
                            v317 = 2048;
                            v318 = v125;
                            v319 = 2048;
                            v320 = v126;
                            _os_log_impl(&dword_23A302000, v120, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (Phase::Controller::ProfileRegistryException::InvalidEnvelopeRange): [%s:%s:%s:%s:%s]: Envelope has invalid TimeLimit range [%f, %f]. Must be within [%f, %f].", buf, 0x6Cu);
                          }

                          v127 = __cxa_allocate_exception(0x10uLL);
                          std::logic_error::logic_error(v127, "[%s:%s:%s:%s:%s]: Envelope has invalid TimeLimit range [%f, %f]. Must be within [%f, %f].");
                          goto LABEL_192;
                        }
                      }

                      else if (v74 == 4)
                      {
                        if (v81 < v78[23] || v80 > v78[24])
                        {
                          v142 = **(Phase::Logger::GetInstance(v79) + 800);
                          if (os_log_type_enabled(v142, OS_LOG_TYPE_ERROR))
                          {
                            v143 = v56[3];
                            v144 = v68[3];
                            v145 = i[3];
                            v146 = j[3];
                            v147 = *(v78 + 23);
                            v148 = *(v78 + 24);
                            *buf = 136317698;
                            *&buf[4] = "ProfileRegistry.mm";
                            *&buf[12] = 1024;
                            *&buf[14] = 180;
                            v304 = 2080;
                            v305 = v289;
                            v306 = 2080;
                            v307 = v143;
                            v308 = 2080;
                            v309 = v144;
                            v310[0] = 2080;
                            *&v310[1] = v145;
                            v311 = 2080;
                            v312 = v146;
                            v313 = 2048;
                            v314 = v81;
                            v315 = 2048;
                            v316 = v82;
                            v317 = 2048;
                            v318 = v147;
                            v319 = 2048;
                            v320 = v148;
                            _os_log_impl(&dword_23A302000, v142, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (Phase::Controller::ProfileRegistryException::InvalidEnvelopeRange): [%s:%s:%s:%s:%s]: Envelope has invalid CullabilityThreshold range [%f, %f]. Must  be within [%f, %f].", buf, 0x6Cu);
                          }

                          v127 = __cxa_allocate_exception(0x10uLL);
                          std::logic_error::logic_error(v127, "[%s:%s:%s:%s:%s]: Envelope has invalid CullabilityThreshold range [%f, %f]. Must be within [%f, %f].");
                          goto LABEL_192;
                        }
                      }

                      else if (v74 == 5 && (v81 < v78[27] || v80 > v78[28]))
                      {
                        v128 = **(Phase::Logger::GetInstance(v79) + 800);
                        if (os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
                        {
                          v129 = v56[3];
                          v130 = v68[3];
                          v131 = i[3];
                          v132 = j[3];
                          v133 = *(v78 + 27);
                          v134 = *(v78 + 28);
                          *buf = 136317698;
                          *&buf[4] = "ProfileRegistry.mm";
                          *&buf[12] = 1024;
                          *&buf[14] = 195;
                          v304 = 2080;
                          v305 = v289;
                          v306 = 2080;
                          v307 = v129;
                          v308 = 2080;
                          v309 = v130;
                          v310[0] = 2080;
                          *&v310[1] = v131;
                          v311 = 2080;
                          v312 = v132;
                          v313 = 2048;
                          v314 = v81;
                          v315 = 2048;
                          v316 = v82;
                          v317 = 2048;
                          v318 = v133;
                          v319 = 2048;
                          v320 = v134;
                          _os_log_impl(&dword_23A302000, v128, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (Phase::Controller::ProfileRegistryException::InvalidEnvelopeRange): [%s:%s:%s:%s:%s]: Envelope has invalid MaximumClusterCount range [%f, %f]. Must  be within [%f, %f].", buf, 0x6Cu);
                        }

                        v127 = __cxa_allocate_exception(0x10uLL);
                        std::logic_error::logic_error(v127, "[%s:%s:%s:%s:%s]: Envelope has invalid MaximumClusterCount range [%f, %f]. Must be within [%f, %f].");
                        goto LABEL_192;
                      }
                    }
                  }

                  v68 = *v68;
                }

                while (*v284);
              }

              v56 = *v56;
            }

            while (v56);
            v83 = *v321;
            v84 = *&v321[8];
          }

          else
          {
            v84 = 0;
            v83 = 0;
          }

          v85 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * (v84 - v83));
          if (v84 == v83)
          {
            v86 = 0;
          }

          else
          {
            v86 = v85;
          }

          std::__introsort<std::_ClassicAlgPolicy,sValidateProfile(Phase::Controller::ProfileRegistry::Profile const&,Phase::Controller::SpatialModelerRegistry *)::$_0 &,Phase::StringId *,false>(v83, v84, v86, 1);
          v87 = *&v321[8];
          if (*v321 != *&v321[8])
          {
            v88 = (*v321 + 24);
            if (*v321 + 24 != *&v321[8])
            {
              v89 = **v321;
              while (1)
              {
                v90 = *v88;
                if (v89 == *v88)
                {
                  v91 = *(v88 - 2);
                  v92 = v88[1];
                  if (v91 == v92)
                  {
                    break;
                  }

                  v91 = strcmp(v91, v92);
                  if (!v91)
                  {
                    break;
                  }
                }

                v88 += 3;
                v89 = v90;
                if (v88 == v87)
                {
                  goto LABEL_150;
                }
              }

              if (v88 - 3 != v87)
              {
                v274 = **(Phase::Logger::GetInstance(v91) + 800);
                if (os_log_type_enabled(v274, OS_LOG_TYPE_ERROR))
                {
                  v275 = *(v88 - 2);
                  *buf = 136315906;
                  *&buf[4] = "ProfileRegistry.mm";
                  *&buf[12] = 1024;
                  *&buf[14] = 242;
                  v304 = 2080;
                  v305 = v289;
                  v306 = 2080;
                  v307 = v275;
                  _os_log_impl(&dword_23A302000, v274, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (Phase::Controller::ProfileRegistryException::DuplicateEntry): [%s]: Found Modeler %s in more than one Category.", buf, 0x26u);
                }

                v276 = __cxa_allocate_exception(0x10uLL);
                std::logic_error::logic_error(v276, "[%s]: Found Modeler %s in more than one Category.");
                v276->__vftable = &unk_284D36FD8;
              }
            }
          }

LABEL_150:
          *buf = v321;
          std::vector<Phase::StringId>::__destroy_vector::operator()[abi:ne200100](buf);
          v93 = v285;
          v94 = *(v281 + 8);
          if (v94)
          {
            v95 = vcnt_s8(v94);
            v95.i16[0] = vaddlv_u8(v95);
            v96 = v95.u32[0];
            if (v95.u32[0] > 1uLL)
            {
              v97 = v285;
              if (*&v94 <= v285)
              {
                v97 = v285 % *&v94;
              }
            }

            else
            {
              v97 = (*&v94 - 1) & v285;
            }

            v98 = *(*v281 + 8 * v97);
            if (v98)
            {
              v99 = *v98;
              if (*v98)
              {
                v100 = __s2;
                do
                {
                  v101 = v99[1];
                  if (v101 == v93)
                  {
                    if (v99[2] == v93)
                    {
                      v102 = v99[3];
                      if (v102 == v100 || !strcmp(v102, v100))
                      {
                        v204 = Phase::Controller::ProfileRegistry::DumpState(v300, v281);
                        v205 = **(Phase::Logger::GetInstance(v204) + 800);
                        v206 = os_log_type_enabled(v205, OS_LOG_TYPE_ERROR);
                        if (v206)
                        {
                          v207 = v300;
                          if (SBYTE7(v301) < 0)
                          {
                            v207 = *v300;
                          }

                          *buf = 136315650;
                          *&buf[4] = "ProfileRegistry.mm";
                          *&buf[12] = 1024;
                          *&buf[14] = 709;
                          v304 = 2080;
                          v305 = v207;
                          _os_log_impl(&dword_23A302000, v205, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", buf, 0x1Cu);
                        }

                        v208 = **(Phase::Logger::GetInstance(v206) + 800);
                        if (os_log_type_enabled(v208, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 136315650;
                          *&buf[4] = "ProfileRegistry.mm";
                          *&buf[12] = 1024;
                          *&buf[14] = 711;
                          v304 = 2080;
                          v305 = __s2;
                          _os_log_impl(&dword_23A302000, v208, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (ProfileRegistryException::DuplicateEntry): Profile with name %s already exists", buf, 0x1Cu);
                        }

                        v209 = __cxa_allocate_exception(0x10uLL);
                        std::logic_error::logic_error(v209, "Profile with name %s already exists");
                        v209->__vftable = &unk_284D36FD8;
                      }
                    }
                  }

                  else
                  {
                    if (v96 > 1)
                    {
                      if (v101 >= *&v94)
                      {
                        v101 %= *&v94;
                      }
                    }

                    else
                    {
                      v101 &= *&v94 - 1;
                    }

                    if (v101 != v97)
                    {
                      break;
                    }
                  }

                  v99 = *v99;
                }

                while (v99);
              }
            }
          }

          operator new();
        }

        v213 = **(Phase::Logger::GetInstance(v54) + 800);
        if (os_log_type_enabled(v213, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          *&buf[4] = "ProfileRegistry.mm";
          *&buf[12] = 1024;
          *&buf[14] = 58;
          v304 = 2080;
          v305 = v289;
          v306 = 2048;
          v307 = v292;
          _os_log_impl(&dword_23A302000, v213, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (Phase::Controller::ProfileRegistryException::InvalidNumber): [%s]: OverflowDetectionTimingThresholdSeconds %f must be > 0", buf, 0x26u);
        }

        v211 = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(v211, "[%s]: OverflowDetectionTimingThresholdSeconds %f must be > 0");
      }

      v214 = Phase::Controller::ProfileRegistryException::InvalidNumber::~InvalidNumber;
      v216 = &unk_284D36E50;
LABEL_270:
      v211->__vftable = v216;
      __cxa_throw(v211, v215, v214);
    }

    v201 = **(Phase::Logger::GetInstance(v54) + 800);
    if (!os_log_type_enabled(v201, OS_LOG_TYPE_ERROR))
    {
LABEL_269:

      v211 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v211, "Name %s is %s.");
      v214 = Phase::Controller::ProfileRegistryException::InvalidString::~InvalidString;
      v216 = &unk_284D36E00;
      goto LABEL_270;
    }

    v202 = "";
    if (v288 == NAN)
    {
      if (v289 == &str_20)
      {
        v203 = "invalid";
        v202 = "<nullptr>";
LABEL_268:
        *buf = 136315906;
        *&buf[4] = "ProfileRegistry.mm";
        *&buf[12] = 1024;
        *&buf[14] = 38;
        v304 = 2080;
        v305 = v202;
        v306 = 2080;
        v307 = v203;
        _os_log_impl(&dword_23A302000, v201, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (Phase::Controller::ProfileRegistryException::InvalidString): Name %s is %s.", buf, 0x26u);
        goto LABEL_269;
      }

      if (!*v289)
      {
        v202 = "<nullptr>";
        v203 = "invalid";
        goto LABEL_268;
      }
    }

    v203 = "empty";
    goto LABEL_268;
  }

  std::__hash_table<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Profile>,std::__unordered_map_hasher<Phase::StringId,std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Profile>,std::hash<Phase::StringId>,std::equal_to<Phase::StringId>,true>,std::__unordered_map_equal<Phase::StringId,std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Profile>,std::equal_to<Phase::StringId>,std::hash<Phase::StringId>,true>,std::allocator<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Profile>>>::~__hash_table(&v295);
}

uint64_t Phase::Controller::ProfileRegistry::DumpState(Phase::Controller::ProfileRegistry *this, uint64_t a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v21);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, "ProfileRegistry: ", 17);
  v5 = MEMORY[0x23EE86100](v4, a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, " --- State ---", 14);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, "\nProfiles (", 11);
  v7 = MEMORY[0x23EE86160](v6, *(a2 + 24));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ")", 1);
  for (i = (a2 + 16); ; MEMORY[0x23EE86110](v15, i[10]))
  {
    i = *i;
    if (!i)
    {
      break;
    }

    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, "\n\t ", 3);
    v10 = strlen(*(i + 3));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, *(i + 3), v10);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, "\n\t\tName = ", 10);
    v12 = strlen(*(i + 6));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, *(i + 6), v12);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, "\n\t\tComputeTime = ", 17);
    MEMORY[0x23EE86110](v13, i[8]);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, "\n\t\tOverflowDetectionHistoryLength = ", 36);
    MEMORY[0x23EE86150](v14, *(i + 9));
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, "\n\t\tOverflowDetectionTimingThresholdSeconds = ", 45);
  }

  if ((v29 & 0x10) != 0)
  {
    v17 = v28;
    if (v28 < v25)
    {
      v28 = v25;
      v17 = v25;
    }

    locale = v24[4].__locale_;
  }

  else
  {
    if ((v29 & 8) == 0)
    {
      v16 = 0;
      *(this + 23) = 0;
      goto LABEL_17;
    }

    locale = v24[1].__locale_;
    v17 = v24[3].__locale_;
  }

  v16 = v17 - locale;
  if ((v17 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v16 >= 0x17)
  {
    operator new();
  }

  *(this + 23) = v16;
  if (v16)
  {
    memmove(this, locale, v16);
  }

LABEL_17:
  *(this + v16) = 0;
  v21[0] = *MEMORY[0x277D82818];
  v19 = *(MEMORY[0x277D82818] + 72);
  *(v21 + *(v21[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v22 = v19;
  v23 = MEMORY[0x277D82878] + 16;
  if (v27 < 0)
  {
    operator delete(__p);
  }

  v23 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v24);
  std::iostream::~basic_iostream();
  return MEMORY[0x23EE863B0](&v30);
}

void sub_23A4C1E44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a9, MEMORY[0x277D82818]);
  MEMORY[0x23EE863B0](&a25);
  _Unwind_Resume(a1);
}

uint64_t Phase::Controller::ProfileRegistry::FindProfileId@<X0>(uint64_t this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = &str_20;
  *(a3 + 16) = 1;
  v4 = (this + 16);
  while (1)
  {
    v4 = *v4;
    if (!v4)
    {
      break;
    }

    if (v4[2] == a2)
    {
      return Phase::StringId::operator=(a3, (v4 + 2));
    }
  }

  return this;
}

void sub_23A4C1ED4(_Unwind_Exception *exception_object)
{
  if ((*(v1 + 16) & 1) == 0)
  {
    free(*(v1 + 8));
  }

  *v1 = 0;
  *(v1 + 8) = v2;
  *(v1 + 16) = 1;
  _Unwind_Resume(exception_object);
}

void Phase::Controller::ProfileRegistry::GetModelers(Phase::Controller::ProfileRegistry *this@<X0>, const Phase::StringId *a2@<X1>, uint64_t a3@<X8>)
{
  v29 = *MEMORY[0x277D85DE8];
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  v5 = std::__hash_table<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Profile>,std::__unordered_map_hasher<Phase::StringId,std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Profile>,std::hash<Phase::StringId>,std::equal_to<Phase::StringId>,true>,std::__unordered_map_equal<Phase::StringId,std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Profile>,std::equal_to<Phase::StringId>,std::hash<Phase::StringId>,true>,std::allocator<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Profile>>>::find<Phase::StringId>(this, a2);
  if (v5)
  {
    v7 = v5[13];
    if (!v7)
    {
      return;
    }

    while (1)
    {
      SpatialCategoryFromStringId = Phase::Controller::GetSpatialCategoryFromStringId((v7 + 2), v6);
      v9 = *(a3 + 8);
      if (!v9)
      {
        goto LABEL_19;
      }

      v10 = vcnt_s8(v9);
      v10.i16[0] = vaddlv_u8(v10);
      if (v10.u32[0] > 1uLL)
      {
        v11 = SpatialCategoryFromStringId;
        if (v9 <= SpatialCategoryFromStringId)
        {
          v11 = SpatialCategoryFromStringId % v9;
        }
      }

      else
      {
        v11 = (v9 - 1) & SpatialCategoryFromStringId;
      }

      v12 = *(*a3 + 8 * v11);
      if (!v12 || (v13 = *v12) == 0)
      {
LABEL_19:
        operator new();
      }

      while (1)
      {
        v14 = v13[1];
        if (v14 == SpatialCategoryFromStringId)
        {
          break;
        }

        if (v10.u32[0] > 1uLL)
        {
          if (v14 >= v9)
          {
            v14 %= v9;
          }
        }

        else
        {
          v14 &= v9 - 1;
        }

        if (v14 != v11)
        {
          goto LABEL_19;
        }

LABEL_18:
        v13 = *v13;
        if (!v13)
        {
          goto LABEL_19;
        }
      }

      if (*(v13 + 4) != SpatialCategoryFromStringId)
      {
        goto LABEL_18;
      }

      v15 = **(Phase::Logger::GetInstance(SpatialCategoryFromStringId) + 800);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v17 = v7[3];
        v18 = v7[9];
        *buf = 136315906;
        v22 = "ProfileRegistry.mm";
        v23 = 1024;
        v24 = 753;
        v25 = 2080;
        v26 = v17;
        v27 = 2080;
        v28 = v18;
        _os_log_impl(&dword_23A302000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d Error: Failed to insert [%s, %s]!", buf, 0x26u);
      }

      v7 = *v7;
      if (!v7)
      {
        return;
      }
    }
  }

  v19 = **(Phase::Logger::GetInstance(0) + 800);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v20 = *(a2 + 1);
    *buf = 136315650;
    v22 = "ProfileRegistry.mm";
    v23 = 1024;
    v24 = 760;
    v25 = 2080;
    v26 = v20;
    _os_log_impl(&dword_23A302000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d Error: Couldn't find profile %s. Returning an empty map.", buf, 0x1Cu);
  }
}

void Phase::Controller::ProfileRegistry::GetParameters(Phase::Controller::ProfileRegistry *this@<X0>, const Phase::StringId *a2@<X1>, double a3@<D0>, const void **a4@<X8>)
{
  v44 = *MEMORY[0x277D85DE8];
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (a3 >= 0.0 && a3 <= 1.0)
  {
    v9 = std::__hash_table<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Profile>,std::__unordered_map_hasher<Phase::StringId,std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Profile>,std::hash<Phase::StringId>,std::equal_to<Phase::StringId>,true>,std::__unordered_map_equal<Phase::StringId,std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Profile>,std::equal_to<Phase::StringId>,std::hash<Phase::StringId>,true>,std::allocator<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Profile>>>::find<Phase::StringId>(this, a2);
    if (v9)
    {
      v11 = v9[13];
      if (v11)
      {
        while (1)
        {
          v32 = v11;
          SpatialCategoryFromStringId = Phase::Controller::GetSpatialCategoryFromStringId((v11 + 2), v10);
          if (!SpatialCategoryFromStringId)
          {
            goto LABEL_32;
          }

          v13 = v32[14];
          if (v13)
          {
            break;
          }

LABEL_30:
          v11 = *v32;
          if (!*v32)
          {
            return;
          }
        }

        while (1)
        {
          SpatialModelerGraphFromStringId = Phase::Controller::GetSpatialModelerGraphFromStringId((v13 + 2), v10);
          if (!SpatialModelerGraphFromStringId)
          {
            goto LABEL_32;
          }

          v33 = v13;
          v15 = v13[10];
          if (v15)
          {
            break;
          }

LABEL_29:
          v13 = *v33;
          if (!*v33)
          {
            goto LABEL_30;
          }
        }

        while (1)
        {
          SpatialModelerStageFromStringId = Phase::Controller::GetSpatialModelerStageFromStringId((v15 + 2), v10);
          if (!SpatialModelerStageFromStringId)
          {
            goto LABEL_32;
          }

          v17 = v15[10];
          if (v17)
          {
            break;
          }

LABEL_28:
          v15 = *v15;
          if (!v15)
          {
            goto LABEL_29;
          }
        }

        while (1)
        {
          SpatialModelerParameterFromStringId = Phase::Controller::GetSpatialModelerParameterFromStringId((v17 + 2), v10);
          if (!SpatialModelerParameterFromStringId)
          {
            break;
          }

          v19 = Phase::Envelope<double>::operator()(v17 + 8, a3);
          v20 = a4[1];
          v21 = a4[2];
          if (v20 >= v21)
          {
            v23 = *a4;
            v24 = v20 - *a4;
            v25 = 0xAAAAAAAAAAAAAAABLL * (v24 >> 3) + 1;
            if (v25 > 0xAAAAAAAAAAAAAAALL)
            {
              std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
            }

            v26 = 0xAAAAAAAAAAAAAAABLL * ((v21 - v23) >> 3);
            if (2 * v26 > v25)
            {
              v25 = 2 * v26;
            }

            if (v26 >= 0x555555555555555)
            {
              v25 = 0xAAAAAAAAAAAAAAALL;
            }

            if (v25)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::Controller::SpatialModelerParameterAddress>>(a4, v25);
            }

            v27 = 8 * (v24 >> 3);
            *v27 = SpatialCategoryFromStringId;
            *(v27 + 4) = SpatialModelerGraphFromStringId;
            *(v27 + 8) = SpatialModelerStageFromStringId;
            *(v27 + 12) = SpatialModelerParameterFromStringId;
            *(v27 + 16) = v19;
            v22 = v27 + 24;
            v28 = v27 - v24;
            memcpy((v27 - v24), v23, v24);
            v29 = *a4;
            *a4 = v28;
            a4[1] = v22;
            a4[2] = 0;
            if (v29)
            {
              operator delete(v29);
            }
          }

          else
          {
            *v20 = SpatialCategoryFromStringId;
            *(v20 + 1) = SpatialModelerGraphFromStringId;
            *(v20 + 2) = SpatialModelerStageFromStringId;
            *(v20 + 3) = SpatialModelerParameterFromStringId;
            v22 = (v20 + 24);
            *(v20 + 2) = v19;
          }

          a4[1] = v22;
          v17 = *v17;
          if (!v17)
          {
            goto LABEL_28;
          }
        }

LABEL_32:
        std::terminate();
      }
    }

    else
    {
      v30 = **(Phase::Logger::GetInstance(0) + 800);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = *(a2 + 1);
        *buf = 136315650;
        v35 = "ProfileRegistry.mm";
        v36 = 1024;
        v37 = 806;
        v38 = 2080;
        v39 = v31;
        _os_log_impl(&dword_23A302000, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d Error: Couldn't find profile %s. Returning empty parameters.", buf, 0x1Cu);
      }
    }
  }

  else
  {
    v7 = **(Phase::Logger::GetInstance(this) + 800);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v35 = "ProfileRegistry.mm";
      v36 = 1024;
      v37 = 773;
      v38 = 2048;
      v39 = a3;
      v40 = 2048;
      v41 = 0;
      v42 = 2048;
      v43 = 0x3FF0000000000000;
      _os_log_impl(&dword_23A302000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d inBalance %f out-of-range [%f, %f]!", buf, 0x30u);
    }
  }
}

void Phase::Controller::ProfileRegistry::GetComputeWeights(Phase::Controller::ProfileRegistry *this@<X0>, const Phase::StringId *a2@<X1>, uint64_t a3@<X8>)
{
  v34 = *MEMORY[0x277D85DE8];
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  v5 = std::__hash_table<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Profile>,std::__unordered_map_hasher<Phase::StringId,std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Profile>,std::hash<Phase::StringId>,std::equal_to<Phase::StringId>,true>,std::__unordered_map_equal<Phase::StringId,std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Profile>,std::equal_to<Phase::StringId>,std::hash<Phase::StringId>,true>,std::allocator<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Profile>>>::find<Phase::StringId>(this, a2);
  if (v5)
  {
    v7 = v5[13];
    if (!v7)
    {
      return;
    }

    v8 = (a3 + 16);
    SpatialCategoryFromStringId = Phase::Controller::GetSpatialCategoryFromStringId((v7 + 2), v6);
    v10 = *(a3 + 8);
    if (!v10)
    {
      goto LABEL_19;
    }

    v11 = vcnt_s8(v10);
    v11.i16[0] = vaddlv_u8(v11);
    if (v11.u32[0] > 1uLL)
    {
      v12 = SpatialCategoryFromStringId;
      if (v10 <= SpatialCategoryFromStringId)
      {
        v12 = SpatialCategoryFromStringId % v10;
      }
    }

    else
    {
      v12 = (v10 - 1) & SpatialCategoryFromStringId;
    }

    v13 = *(*a3 + 8 * v12);
    if (!v13 || (v14 = *v13) == 0)
    {
LABEL_19:
      operator new();
    }

    while (1)
    {
      v15 = v14[1];
      if (v15 == SpatialCategoryFromStringId)
      {
        if (*(v14 + 4) == SpatialCategoryFromStringId)
        {
          v18 = **(Phase::Logger::GetInstance(SpatialCategoryFromStringId) + 800);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v20 = v7[3];
            v21 = v7[9];
            v26 = 136315906;
            v27 = "ProfileRegistry.mm";
            v28 = 1024;
            v29 = 825;
            v30 = 2080;
            v31 = v20;
            v32 = 2080;
            v33 = v21;
            _os_log_impl(&dword_23A302000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d Error: Failed to insert [%s, %s]!", &v26, 0x26u);
          }

          if (*(a3 + 24))
          {
            v22 = *v8;
            if (*v8)
            {
              do
              {
                v23 = *v22;
                operator delete(v22);
                v22 = v23;
              }

              while (v23);
            }

            *(a3 + 16) = 0;
            v24 = *(a3 + 8);
            if (v24)
            {
              for (i = 0; i != v24; ++i)
              {
                *(*a3 + 8 * i) = 0;
              }
            }

            *(a3 + 24) = 0;
          }

          return;
        }
      }

      else
      {
        if (v11.u32[0] > 1uLL)
        {
          if (v15 >= v10)
          {
            v15 %= v10;
          }
        }

        else
        {
          v15 &= v10 - 1;
        }

        if (v15 != v12)
        {
          goto LABEL_19;
        }
      }

      v14 = *v14;
      if (!v14)
      {
        goto LABEL_19;
      }
    }
  }

  v16 = **(Phase::Logger::GetInstance(0) + 800);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v17 = *(a2 + 1);
    v26 = 136315650;
    v27 = "ProfileRegistry.mm";
    v28 = 1024;
    v29 = 836;
    v30 = 2080;
    v31 = v17;
    _os_log_impl(&dword_23A302000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d Error: Couldn't find profile %s. Returning an empty map.", &v26, 0x1Cu);
  }
}

uint64_t Phase::Controller::ProfileRegistry::GetComputeTime(Phase::Controller::ProfileRegistry *this, const Phase::StringId *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = std::__hash_table<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Profile>,std::__unordered_map_hasher<Phase::StringId,std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Profile>,std::hash<Phase::StringId>,std::equal_to<Phase::StringId>,true>,std::__unordered_map_equal<Phase::StringId,std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Profile>,std::equal_to<Phase::StringId>,std::hash<Phase::StringId>,true>,std::allocator<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Profile>>>::find<Phase::StringId>(this, a2);
  if (v3)
  {
    return v3[8];
  }

  v5 = **(Phase::Logger::GetInstance(0) + 800);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a2 + 1);
    v7 = 136315650;
    v8 = "ProfileRegistry.mm";
    v9 = 1024;
    v10 = 852;
    v11 = 2080;
    v12 = v6;
    _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d Error: Couldn't find profile %s. Returning std::nullopt.", &v7, 0x1Cu);
  }

  return 0;
}

void Phase::Controller::ProfileRegistry::GetOverflowParameters(Phase::Controller::ProfileRegistry *this@<X0>, const Phase::StringId *a2@<X1>, uint64_t a3@<X8>)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = std::__hash_table<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Profile>,std::__unordered_map_hasher<Phase::StringId,std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Profile>,std::hash<Phase::StringId>,std::equal_to<Phase::StringId>,true>,std::__unordered_map_equal<Phase::StringId,std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Profile>,std::equal_to<Phase::StringId>,std::hash<Phase::StringId>,true>,std::allocator<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Profile>>>::find<Phase::StringId>(this, a2);
  if (v5)
  {
    *a3 = *(v5 + 9);
    v6 = 1;
  }

  else
  {
    v7 = **(Phase::Logger::GetInstance(0) + 800);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a2 + 1);
      v9 = 136315650;
      v10 = "ProfileRegistry.mm";
      v11 = 1024;
      v12 = 867;
      v13 = 2080;
      v14 = v8;
      _os_log_impl(&dword_23A302000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Error: Couldn't find profile %s. Returning std::nullopt.", &v9, 0x1Cu);
    }

    v6 = 0;
    *a3 = 0;
  }

  *(a3 + 16) = v6;
}

void Phase::Controller::ProfileRegistryException::MissingRequiredField::~MissingRequiredField(std::logic_error *this)
{
  std::logic_error::~logic_error(this);

  JUMPOUT(0x23EE864A0);
}

void Phase::Controller::ProfileRegistryException::FieldWithWrongType::~FieldWithWrongType(std::logic_error *this)
{
  std::logic_error::~logic_error(this);

  JUMPOUT(0x23EE864A0);
}

void Phase::Controller::ProfileRegistryException::EmptyString::~EmptyString(std::logic_error *this)
{
  std::logic_error::~logic_error(this);

  JUMPOUT(0x23EE864A0);
}

void Phase::Controller::ProfileRegistryException::InvalidString::~InvalidString(std::logic_error *this)
{
  std::logic_error::~logic_error(this);

  JUMPOUT(0x23EE864A0);
}

void Phase::Controller::ProfileRegistryException::InvalidEnvelopeStartPoint::~InvalidEnvelopeStartPoint(std::logic_error *this)
{
  std::logic_error::~logic_error(this);

  JUMPOUT(0x23EE864A0);
}

void Phase::Controller::ProfileRegistryException::InvalidNumber::~InvalidNumber(std::logic_error *this)
{
  std::logic_error::~logic_error(this);

  JUMPOUT(0x23EE864A0);
}

void Phase::Controller::ProfileRegistryException::InvalidEnvelopeSegmentType::~InvalidEnvelopeSegmentType(std::logic_error *this)
{
  std::logic_error::~logic_error(this);

  JUMPOUT(0x23EE864A0);
}

void Phase::Controller::ProfileRegistryException::NilURL::~NilURL(std::logic_error *this)
{
  std::logic_error::~logic_error(this);

  JUMPOUT(0x23EE864A0);
}

void Phase::Controller::ProfileRegistryException::InvalidURL::~InvalidURL(std::logic_error *this)
{
  std::logic_error::~logic_error(this);

  JUMPOUT(0x23EE864A0);
}

void Phase::Controller::ProfileRegistryException::InvalidJSON::~InvalidJSON(std::logic_error *this)
{
  std::logic_error::~logic_error(this);

  JUMPOUT(0x23EE864A0);
}

uint64_t std::unordered_map<Phase::StringId,Phase::Controller::ProfileRegistry::Category>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<unsigned int,Phase::Controller::OptionalProperties::Property>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,Phase::Controller::OptionalProperties::Property>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,Phase::Controller::OptionalProperties::Property>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,Phase::Controller::OptionalProperties::Property>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    v5 = i[2];
    v6 = *(a1 + 8);
    if (!*&v6)
    {
      goto LABEL_21;
    }

    v7 = vcnt_s8(v6);
    v7.i16[0] = vaddlv_u8(v7);
    v8 = v7.u32[0];
    if (v7.u32[0] > 1uLL)
    {
      v9 = i[2];
      if (*&v6 <= v5)
      {
        v9 = v5 % *&v6;
      }
    }

    else
    {
      v9 = (*&v6 - 1) & v5;
    }

    v10 = *(*a1 + 8 * v9);
    if (!v10 || (v11 = *v10) == 0)
    {
LABEL_21:
      operator new();
    }

    v12 = i[3];
    while (1)
    {
      v13 = v11[1];
      if (v13 == v5)
      {
        break;
      }

      if (v8 > 1)
      {
        if (v13 >= *&v6)
        {
          v13 %= *&v6;
        }
      }

      else
      {
        v13 &= *&v6 - 1;
      }

      if (v13 != v9)
      {
        goto LABEL_21;
      }

LABEL_20:
      v11 = *v11;
      if (!v11)
      {
        goto LABEL_21;
      }
    }

    if (v11[2] != v5)
    {
      goto LABEL_20;
    }

    v14 = v11[3];
    if (v14 != v12)
    {
      if (strcmp(v14, v12))
      {
        goto LABEL_20;
      }
    }
  }

  return a1;
}

uint64_t std::unordered_map<Phase::StringId,Phase::Controller::ProfileRegistry::Graph>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<unsigned int,Phase::Controller::OptionalProperties::Property>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,Phase::Controller::OptionalProperties::Property>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,Phase::Controller::OptionalProperties::Property>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,Phase::Controller::OptionalProperties::Property>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    v5 = i[2];
    v6 = *(a1 + 8);
    if (!*&v6)
    {
      goto LABEL_21;
    }

    v7 = vcnt_s8(v6);
    v7.i16[0] = vaddlv_u8(v7);
    v8 = v7.u32[0];
    if (v7.u32[0] > 1uLL)
    {
      v9 = i[2];
      if (*&v6 <= v5)
      {
        v9 = v5 % *&v6;
      }
    }

    else
    {
      v9 = (*&v6 - 1) & v5;
    }

    v10 = *(*a1 + 8 * v9);
    if (!v10 || (v11 = *v10) == 0)
    {
LABEL_21:
      operator new();
    }

    v12 = i[3];
    while (1)
    {
      v13 = v11[1];
      if (v13 == v5)
      {
        break;
      }

      if (v8 > 1)
      {
        if (v13 >= *&v6)
        {
          v13 %= *&v6;
        }
      }

      else
      {
        v13 &= *&v6 - 1;
      }

      if (v13 != v9)
      {
        goto LABEL_21;
      }

LABEL_20:
      v11 = *v11;
      if (!v11)
      {
        goto LABEL_21;
      }
    }

    if (v11[2] != v5)
    {
      goto LABEL_20;
    }

    v14 = v11[3];
    if (v14 != v12)
    {
      if (strcmp(v14, v12))
      {
        goto LABEL_20;
      }
    }
  }

  return a1;
}

uint64_t std::unordered_map<Phase::StringId,Phase::Controller::ProfileRegistry::Stage>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<unsigned int,Phase::Controller::OptionalProperties::Property>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,Phase::Controller::OptionalProperties::Property>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,Phase::Controller::OptionalProperties::Property>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,Phase::Controller::OptionalProperties::Property>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    v5 = i[2];
    v6 = *(a1 + 8);
    if (!*&v6)
    {
      goto LABEL_21;
    }

    v7 = vcnt_s8(v6);
    v7.i16[0] = vaddlv_u8(v7);
    v8 = v7.u32[0];
    if (v7.u32[0] > 1uLL)
    {
      v9 = i[2];
      if (*&v6 <= v5)
      {
        v9 = v5 % *&v6;
      }
    }

    else
    {
      v9 = (*&v6 - 1) & v5;
    }

    v10 = *(*a1 + 8 * v9);
    if (!v10 || (v11 = *v10) == 0)
    {
LABEL_21:
      operator new();
    }

    v12 = i[3];
    while (1)
    {
      v13 = v11[1];
      if (v13 == v5)
      {
        break;
      }

      if (v8 > 1)
      {
        if (v13 >= *&v6)
        {
          v13 %= *&v6;
        }
      }

      else
      {
        v13 &= *&v6 - 1;
      }

      if (v13 != v9)
      {
        goto LABEL_21;
      }

LABEL_20:
      v11 = *v11;
      if (!v11)
      {
        goto LABEL_21;
      }
    }

    if (v11[2] != v5)
    {
      goto LABEL_20;
    }

    v14 = v11[3];
    if (v14 != v12)
    {
      if (strcmp(v14, v12))
      {
        goto LABEL_20;
      }
    }
  }

  return a1;
}

uint64_t std::unordered_map<Phase::StringId,Phase::Controller::ProfileRegistry::Parameter>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<unsigned int,Phase::Controller::OptionalProperties::Property>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,Phase::Controller::OptionalProperties::Property>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,Phase::Controller::OptionalProperties::Property>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,Phase::Controller::OptionalProperties::Property>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    v5 = i[2];
    v6 = *(a1 + 8);
    if (!*&v6)
    {
      goto LABEL_21;
    }

    v7 = vcnt_s8(v6);
    v7.i16[0] = vaddlv_u8(v7);
    v8 = v7.u32[0];
    if (v7.u32[0] > 1uLL)
    {
      v9 = i[2];
      if (*&v6 <= v5)
      {
        v9 = v5 % *&v6;
      }
    }

    else
    {
      v9 = (*&v6 - 1) & v5;
    }

    v10 = *(*a1 + 8 * v9);
    if (!v10 || (v11 = *v10) == 0)
    {
LABEL_21:
      operator new();
    }

    v12 = i[3];
    while (1)
    {
      v13 = v11[1];
      if (v13 == v5)
      {
        break;
      }

      if (v8 > 1)
      {
        if (v13 >= *&v6)
        {
          v13 %= *&v6;
        }
      }

      else
      {
        v13 &= *&v6 - 1;
      }

      if (v13 != v9)
      {
        goto LABEL_21;
      }

LABEL_20:
      v11 = *v11;
      if (!v11)
      {
        goto LABEL_21;
      }
    }

    if (v11[2] != v5)
    {
      goto LABEL_20;
    }

    v14 = v11[3];
    if (v14 != v12)
    {
      if (strcmp(v14, v12))
      {
        goto LABEL_20;
      }
    }
  }

  return a1;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Parameter>,void *>>>::operator()[abi:ne200100](uint64_t a1, char a2, void *__p)
{
  if (a2)
  {
    std::allocator_traits<std::allocator<std::__hash_node<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Parameter>,void *>>>::destroy[abi:ne200100]<std::pair<Phase::StringId const,Phase::Controller::ProfileRegistry::Parameter>,void,0>(a1, __p + 16);
  }

  if (__p)
  {

    operator delete(__p);
  }
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Stage>,void *>>>::operator()[abi:ne200100](char a1, uint64_t a2)
{
  if (a1)
  {
    std::__hash_table<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Parameter>,std::__unordered_map_hasher<Phase::StringId,std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Parameter>,std::hash<Phase::StringId>,std::equal_to<Phase::StringId>,true>,std::__unordered_map_equal<Phase::StringId,std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Parameter>,std::equal_to<Phase::StringId>,std::hash<Phase::StringId>,true>,std::allocator<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Parameter>>>::~__hash_table(a2 + 64);
    if ((*(a2 + 56) & 1) == 0)
    {
      free(*(a2 + 48));
    }

    *(a2 + 40) = 0;
    *(a2 + 48) = &str_20;
    *(a2 + 56) = 1;
    if ((*(a2 + 32) & 1) == 0)
    {
      free(*(a2 + 24));
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Graph>,void *>>>::operator()[abi:ne200100](char a1, uint64_t a2)
{
  if (a1)
  {
    std::__hash_table<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Stage>,std::__unordered_map_hasher<Phase::StringId,std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Stage>,std::hash<Phase::StringId>,std::equal_to<Phase::StringId>,true>,std::__unordered_map_equal<Phase::StringId,std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Stage>,std::equal_to<Phase::StringId>,std::hash<Phase::StringId>,true>,std::allocator<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Stage>>>::~__hash_table(a2 + 64);
    if ((*(a2 + 56) & 1) == 0)
    {
      free(*(a2 + 48));
    }

    *(a2 + 40) = 0;
    *(a2 + 48) = &str_20;
    *(a2 + 56) = 1;
    if ((*(a2 + 32) & 1) == 0)
    {
      free(*(a2 + 24));
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Category>,void *>>>::operator()[abi:ne200100](char a1, uint64_t a2)
{
  if (a1)
  {
    std::__hash_table<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Graph>,std::__unordered_map_hasher<Phase::StringId,std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Graph>,std::hash<Phase::StringId>,std::equal_to<Phase::StringId>,true>,std::__unordered_map_equal<Phase::StringId,std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Graph>,std::equal_to<Phase::StringId>,std::hash<Phase::StringId>,true>,std::allocator<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Graph>>>::~__hash_table(a2 + 96);
    if ((*(a2 + 80) & 1) == 0)
    {
      free(*(a2 + 72));
    }

    *(a2 + 64) = 0;
    *(a2 + 72) = &str_20;
    *(a2 + 80) = 1;
    if ((*(a2 + 56) & 1) == 0)
    {
      free(*(a2 + 48));
    }

    *(a2 + 40) = 0;
    *(a2 + 48) = &str_20;
    *(a2 + 56) = 1;
    if ((*(a2 + 32) & 1) == 0)
    {
      free(*(a2 + 24));
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void Phase::Controller::ProfileRegistryException::InvalidEnvelopeDomain::~InvalidEnvelopeDomain(std::logic_error *this)
{
  std::logic_error::~logic_error(this);

  JUMPOUT(0x23EE864A0);
}

void Phase::Controller::ProfileRegistryException::InvalidSpatialModeler::~InvalidSpatialModeler(std::logic_error *this)
{
  std::logic_error::~logic_error(this);

  JUMPOUT(0x23EE864A0);
}

void Phase::Controller::ProfileRegistryException::InvalidEnvelopeRange::~InvalidEnvelopeRange(std::logic_error *this)
{
  std::logic_error::~logic_error(this);

  JUMPOUT(0x23EE864A0);
}

void std::__introsort<std::_ClassicAlgPolicy,sValidateProfile(Phase::Controller::ProfileRegistry::Profile const&,Phase::Controller::SpatialModelerRegistry *)::$_0 &,Phase::StringId *,false>(unint64_t *a1, unint64_t *a2, uint64_t a3, char a4)
{
LABEL_1:
  v8 = a2 - 3;
  v97 = a2 - 6;
  v98 = a2;
  v9 = a2 - 9;
  v10 = a1;
  while (1)
  {
    a1 = v10;
    v11 = a2 - v10;
    v12 = 0xAAAAAAAAAAAAAAABLL * (a2 - v10);
    v13 = v12 - 2;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return;
      }

      if (v12 == 2)
      {
        v57 = *(a2 - 3);
        v56 = a2 - 3;
        if (v57 >= *a1)
        {
          return;
        }

LABEL_115:
        v55 = a1;
LABEL_116:
        v54 = v56;
LABEL_117:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::StringId *&,Phase::StringId *&>(v55, v54);
        return;
      }

      goto LABEL_9;
    }

    if (v12 == 3)
    {
      v58 = a1[3];
      v60 = *(a2 - 3);
      v56 = a2 - 3;
      v59 = v60;
      if (v58 >= *a1)
      {
        if (v59 < v58)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::StringId *&,Phase::StringId *&>((a1 + 3), v56);
          if (a1[3] < *a1)
          {
            v55 = a1;
            v54 = (a1 + 3);
            goto LABEL_117;
          }
        }
      }

      else
      {
        if (v59 < v58)
        {
          goto LABEL_115;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::StringId *&,Phase::StringId *&>(a1, (a1 + 3));
        if (*v56 < a1[3])
        {
          v55 = (a1 + 3);
          goto LABEL_116;
        }
      }

      return;
    }

    if (v12 == 4)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,sValidateProfile(Phase::Controller::ProfileRegistry::Profile const&,Phase::Controller::SpatialModelerRegistry *)::$_0 &,Phase::StringId *,0>(a1, a1 + 3, a1 + 6, v8);
      return;
    }

    if (v12 == 5)
    {
      break;
    }

LABEL_9:
    if (v11 <= 575)
    {
      v61 = (a1 + 3);
      v63 = a1 == a2 || v61 == a2;
      if (a4)
      {
        if (!v63)
        {
          v64 = 0;
          v65 = a1;
          do
          {
            v66 = v65[3];
            v67 = *v65;
            v65 = v61;
            if (v66 < v67)
            {
              Phase::StringId::StringId(&v102, v61);
              v68 = v64;
              while (1)
              {
                Phase::StringId::operator=(a1 + v68 + 24, a1 + v68);
                if (!v68)
                {
                  break;
                }

                v69 = *(a1 + v68 - 24);
                v68 -= 24;
                if (v102 >= v69)
                {
                  v70 = a1 + v68 + 24;
                  goto LABEL_134;
                }
              }

              v70 = a1;
LABEL_134:
              Phase::StringId::operator=(v70, &v102);
              if ((v104 & 1) == 0)
              {
                free(v103);
              }
            }

            v61 = (v65 + 3);
            v64 += 24;
          }

          while (v65 + 3 != a2);
        }
      }

      else if (!v63)
      {
        do
        {
          v95 = v61;
          if (a1[3] < *a1)
          {
            Phase::StringId::StringId(&v102, v61);
            do
            {
              Phase::StringId::operator=((a1 + 3), a1);
              v96 = *(a1 - 3);
              a1 -= 3;
            }

            while (v102 < v96);
            Phase::StringId::operator=((a1 + 3), &v102);
            if ((v104 & 1) == 0)
            {
              free(v103);
            }
          }

          v61 = (v95 + 3);
          a1 = v95;
        }

        while (v95 + 3 != a2);
      }

      return;
    }

    if (!a3)
    {
      if (a1 != a2)
      {
        v71 = v13 >> 1;
        v72 = v13 >> 1;
        do
        {
          v73 = v72;
          if (v71 >= v72)
          {
            v74 = (2 * v72) | 1;
            v75 = &a1[3 * v74];
            if (2 * v72 + 2 >= v12)
            {
              v76 = *v75;
            }

            else
            {
              v76 = *v75;
              v77 = v75[3];
              if (*v75 <= v77)
              {
                v76 = v75[3];
              }

              if (*v75 < v77)
              {
                v75 += 3;
                v74 = 2 * v73 + 2;
              }
            }

            v78 = &a1[3 * v73];
            if (v76 >= *v78)
            {
              Phase::StringId::StringId(&v102, &a1[3 * v73]);
              do
              {
                v79 = v75;
                Phase::StringId::operator=(v78, v75);
                if (v71 < v74)
                {
                  break;
                }

                v75 = &a1[3 * ((2 * v74) | 1)];
                if (2 * v74 + 2 >= v12)
                {
                  v80 = *v75;
                  v74 = (2 * v74) | 1;
                }

                else
                {
                  v80 = *v75;
                  v81 = v75[3];
                  if (*v75 <= v81)
                  {
                    v80 = v75[3];
                  }

                  if (*v75 >= v81)
                  {
                    v74 = (2 * v74) | 1;
                  }

                  else
                  {
                    v75 += 3;
                    v74 = 2 * v74 + 2;
                  }
                }

                v78 = v79;
              }

              while (v80 >= v102);
              Phase::StringId::operator=(v79, &v102);
              if ((v104 & 1) == 0)
              {
                free(v103);
              }
            }
          }

          v72 = v73 - 1;
        }

        while (v73);
        v82 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 3);
        v83 = v98;
        do
        {
          Phase::StringId::StringId(v99, a1);
          v84 = 0;
          v85 = a1;
          do
          {
            v86 = v85 + 24 * v84;
            v87 = (v86 + 24);
            if (2 * v84 + 2 >= v82)
            {
              v84 = (2 * v84) | 1;
            }

            else
            {
              v89 = *(v86 + 48);
              v88 = (v86 + 48);
              if (*(v88 - 3) >= v89)
              {
                v84 = (2 * v84) | 1;
              }

              else
              {
                v87 = v88;
                v84 = 2 * v84 + 2;
              }
            }

            Phase::StringId::operator=(v85, v87);
            v85 = v87;
          }

          while (v84 <= ((v82 - 2) >> 1));
          v83 -= 24;
          if (v87 == v83)
          {
            Phase::StringId::operator=(v87, v99);
          }

          else
          {
            Phase::StringId::operator=(v87, v83);
            Phase::StringId::operator=(v83, v99);
            v90 = v87 - a1 + 24;
            if (v90 >= 25)
            {
              v91 = (-2 - 0x5555555555555555 * (v90 >> 3)) >> 1;
              v92 = &a1[3 * v91];
              if (*v92 < *v87)
              {
                Phase::StringId::StringId(&v102, v87);
                do
                {
                  v93 = v92;
                  Phase::StringId::operator=(v87, v92);
                  if (!v91)
                  {
                    break;
                  }

                  v91 = (v91 - 1) >> 1;
                  v92 = &a1[3 * v91];
                  v87 = v93;
                }

                while (*v92 < v102);
                Phase::StringId::operator=(v93, &v102);
                if ((v104 & 1) == 0)
                {
                  free(v103);
                }
              }
            }
          }

          if ((v101 & 1) == 0)
          {
            free(v100);
          }
        }

        while (v82-- > 2);
      }

      return;
    }

    v14 = &a1[3 * (v12 >> 1)];
    v15 = *v8;
    if (v11 >= 0xC01)
    {
      v16 = *v14;
      if (*v14 >= *a1)
      {
        if (v15 >= v16 || (std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::StringId *&,Phase::StringId *&>(v14, v8), *v14 >= *a1))
        {
LABEL_26:
          v23 = v14 - 3;
          v22 = *(v14 - 3);
          v24 = *v97;
          if (v22 >= a1[3])
          {
            if (v24 >= v22 || (std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::StringId *&,Phase::StringId *&>((v14 - 3), v97), *v23 >= a1[3]))
            {
LABEL_39:
              v28 = v14 + 3;
              v27 = v14[3];
              v29 = *v9;
              if (v27 >= a1[6])
              {
                if (v29 >= v27 || (std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::StringId *&,Phase::StringId *&>((v14 + 3), v9), *v28 >= a1[6]))
                {
LABEL_48:
                  v32 = *v14;
                  v33 = v14[3];
                  if (*v14 >= *(v14 - 3))
                  {
                    if (v33 >= v32 || (std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::StringId *&,Phase::StringId *&>(v14, (v14 + 3)), *v14 >= *(v14 - 3)))
                    {
LABEL_57:
                      Phase::StringId::StringId(&v102, a1);
                      Phase::StringId::operator=(a1, v14);
                      Phase::StringId::operator=(v14, &v102);
                      a2 = v98;
                      if ((v104 & 1) == 0)
                      {
                        free(v103);
                      }

                      goto LABEL_59;
                    }

                    v34 = (v14 - 3);
                    v35 = v14;
                  }

                  else
                  {
                    v34 = (v14 - 3);
                    if (v33 >= v32)
                    {
                      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::StringId *&,Phase::StringId *&>(v34, v14);
                      if (v14[3] >= *v14)
                      {
                        goto LABEL_57;
                      }

                      v34 = v14;
                    }

                    v35 = (v14 + 3);
                  }

                  std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::StringId *&,Phase::StringId *&>(v34, v35);
                  goto LABEL_57;
                }

                v30 = (a1 + 6);
                v31 = (v14 + 3);
              }

              else
              {
                v30 = (a1 + 6);
                if (v29 >= v27)
                {
                  std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::StringId *&,Phase::StringId *&>(v30, (v14 + 3));
                  if (*v9 >= *v28)
                  {
                    goto LABEL_48;
                  }

                  v30 = (v14 + 3);
                }

                v31 = v9;
              }

              std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::StringId *&,Phase::StringId *&>(v30, v31);
              goto LABEL_48;
            }

            v25 = (a1 + 3);
            v26 = (v14 - 3);
          }

          else
          {
            v25 = (a1 + 3);
            if (v24 >= v22)
            {
              std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::StringId *&,Phase::StringId *&>(v25, (v14 - 3));
              if (*v97 >= *v23)
              {
                goto LABEL_39;
              }

              v25 = (v14 - 3);
            }

            v26 = v97;
          }

          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::StringId *&,Phase::StringId *&>(v25, v26);
          goto LABEL_39;
        }

        v17 = a1;
        v18 = v14;
      }

      else
      {
        v17 = a1;
        if (v15 >= v16)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::StringId *&,Phase::StringId *&>(a1, v14);
          if (*v8 >= *v14)
          {
            goto LABEL_26;
          }

          v17 = v14;
        }

        v18 = v8;
      }

      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::StringId *&,Phase::StringId *&>(v17, v18);
      goto LABEL_26;
    }

    v19 = *a1;
    if (*a1 >= *v14)
    {
      if (v15 >= v19)
      {
        goto LABEL_59;
      }

      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::StringId *&,Phase::StringId *&>(a1, v8);
      if (*a1 >= *v14)
      {
        goto LABEL_59;
      }

      v20 = v14;
      v21 = a1;
    }

    else
    {
      v20 = v14;
      if (v15 >= v19)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::StringId *&,Phase::StringId *&>(v14, a1);
        if (*v8 >= *a1)
        {
          goto LABEL_59;
        }

        v20 = a1;
      }

      v21 = v8;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::StringId *&,Phase::StringId *&>(v20, v21);
LABEL_59:
    --a3;
    if ((a4 & 1) != 0 || *(a1 - 3) < *a1)
    {
      Phase::StringId::StringId(&v102, a1);
      v36 = 0;
      do
      {
        v37 = a1[v36 + 3];
        v36 += 3;
      }

      while (v37 < v102);
      v38 = &a1[v36];
      if (v36 == 3)
      {
        a2 = v98;
        do
        {
          if (v38 >= a2)
          {
            break;
          }

          v40 = *(a2 - 3);
          a2 -= 3;
        }

        while (v40 >= v102);
      }

      else
      {
        do
        {
          v39 = *(a2 - 3);
          a2 -= 3;
        }

        while (v39 >= v102);
      }

      v10 = &a1[v36];
      if (v38 < a2)
      {
        v41 = a2;
        do
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::StringId *&,Phase::StringId *&>(v10, v41);
          do
          {
            v42 = v10[3];
            v10 += 3;
          }

          while (v42 < v102);
          do
          {
            v43 = *(v41 - 24);
            v41 -= 24;
          }

          while (v43 >= v102);
        }

        while (v10 < v41);
      }

      if (v10 - 3 != a1)
      {
        Phase::StringId::operator=(a1, (v10 - 3));
      }

      Phase::StringId::operator=((v10 - 3), &v102);
      if ((v104 & 1) == 0)
      {
        free(v103);
      }

      v44 = v38 >= a2;
      a2 = v98;
      if (!v44)
      {
        goto LABEL_83;
      }

      v45 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,sValidateProfile(Phase::Controller::ProfileRegistry::Profile const&,Phase::Controller::SpatialModelerRegistry *)::$_0 &,Phase::StringId *>(a1, v10 - 3);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,sValidateProfile(Phase::Controller::ProfileRegistry::Profile const&,Phase::Controller::SpatialModelerRegistry *)::$_0 &,Phase::StringId *>(v10, v98))
      {
        a2 = v10 - 3;
        if ((v45 & 1) == 0)
        {
          goto LABEL_1;
        }

        return;
      }

      if ((v45 & 1) == 0)
      {
LABEL_83:
        std::__introsort<std::_ClassicAlgPolicy,sValidateProfile(Phase::Controller::ProfileRegistry::Profile const&,Phase::Controller::SpatialModelerRegistry *)::$_0 &,Phase::StringId *,false>(a1, v10 - 3, a3, a4 & 1);
        goto LABEL_84;
      }
    }

    else
    {
      Phase::StringId::StringId(&v102, a1);
      if (v102 >= *v8)
      {
        v47 = a1 + 3;
        do
        {
          v10 = v47;
          if (v47 >= a2)
          {
            break;
          }

          v47 += 3;
        }

        while (v102 >= *v10);
      }

      else
      {
        v10 = a1;
        do
        {
          v46 = v10[3];
          v10 += 3;
        }

        while (v102 >= v46);
      }

      v48 = a2;
      if (v10 < a2)
      {
        v48 = a2;
        do
        {
          v49 = *(v48 - 24);
          v48 -= 24;
        }

        while (v102 < v49);
      }

      while (v10 < v48)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::StringId *&,Phase::StringId *&>(v10, v48);
        do
        {
          v50 = v10[3];
          v10 += 3;
        }

        while (v102 >= v50);
        do
        {
          v51 = *(v48 - 24);
          v48 -= 24;
        }

        while (v102 < v51);
      }

      if (v10 - 3 != a1)
      {
        Phase::StringId::operator=(a1, (v10 - 3));
      }

      Phase::StringId::operator=((v10 - 3), &v102);
      if ((v104 & 1) == 0)
      {
        free(v103);
      }

LABEL_84:
      a4 = 0;
    }
  }

  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,sValidateProfile(Phase::Controller::ProfileRegistry::Profile const&,Phase::Controller::SpatialModelerRegistry *)::$_0 &,Phase::StringId *,0>(a1, a1 + 3, a1 + 6, a1 + 9);
  v53 = *(a2 - 3);
  v52 = (a2 - 3);
  if (v53 < a1[9])
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::StringId *&,Phase::StringId *&>((a1 + 9), v52);
    if (a1[9] < a1[6])
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::StringId *&,Phase::StringId *&>((a1 + 6), (a1 + 9));
      if (a1[6] < a1[3])
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::StringId *&,Phase::StringId *&>((a1 + 3), (a1 + 6));
        if (a1[3] < *a1)
        {
          v54 = (a1 + 3);
          v55 = a1;
          goto LABEL_117;
        }
      }
    }
  }
}

void sub_23A4C49CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, void *a15, char a16)
{
  if ((a16 & 1) == 0)
  {
    free(a15);
  }

  _Unwind_Resume(exception_object);
}

void std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::StringId *&,Phase::StringId *&>(uint64_t a1, uint64_t a2)
{
  Phase::StringId::StringId(v4, a1);
  Phase::StringId::operator=(a1, a2);
  Phase::StringId::operator=(a2, v4);
  if ((v6 & 1) == 0)
  {
    free(v5);
  }
}

void sub_23A4C4AA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, char a12)
{
  if ((a12 & 1) == 0)
  {
    free(a11);
  }

  _Unwind_Resume(exception_object);
}

void std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,sValidateProfile(Phase::Controller::ProfileRegistry::Profile const&,Phase::Controller::SpatialModelerRegistry *)::$_0 &,Phase::StringId *,0>(unint64_t *a1, unint64_t *a2, unint64_t *a3, unint64_t *a4)
{
  v7 = a1;
  v8 = *a2;
  v9 = *a3;
  if (*a2 >= *a1)
  {
    if (v9 < v8)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::StringId *&,Phase::StringId *&>(a2, a3);
      if (*a2 < *v7)
      {
        a1 = v7;
        v10 = a2;
        goto LABEL_9;
      }
    }
  }

  else
  {
    if (v9 < v8)
    {
LABEL_5:
      v10 = a3;
LABEL_9:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::StringId *&,Phase::StringId *&>(a1, v10);
      goto LABEL_10;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::StringId *&,Phase::StringId *&>(a1, a2);
    if (*a3 < *a2)
    {
      a1 = a2;
      goto LABEL_5;
    }
  }

LABEL_10:
  if (*a4 < *a3)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::StringId *&,Phase::StringId *&>(a3, a4);
    if (*a3 < *a2)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::StringId *&,Phase::StringId *&>(a2, a3);
      if (*a2 < *v7)
      {

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::StringId *&,Phase::StringId *&>(v7, a2);
      }
    }
  }
}

uint64_t std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,sValidateProfile(Phase::Controller::ProfileRegistry::Profile const&,Phase::Controller::SpatialModelerRegistry *)::$_0 &,Phase::StringId *>(unint64_t *a1, unint64_t *a2)
{
  v3 = a1;
  v4 = 0xAAAAAAAAAAAAAAABLL * (a2 - a1);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v9 = a1[3];
        v5 = a2 - 3;
        v10 = *(a2 - 3);
        if (v9 >= *a1)
        {
          if (v10 >= v9)
          {
            return 1;
          }

          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::StringId *&,Phase::StringId *&>((a1 + 3), v5);
          if (v3[3] >= *v3)
          {
            return 1;
          }

          a1 = v3;
          v8 = (v3 + 3);
          goto LABEL_17;
        }

        if (v10 >= v9)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::StringId *&,Phase::StringId *&>(a1, (a1 + 3));
          if (*v5 >= v3[3])
          {
            return 1;
          }

          a1 = v3 + 3;
        }

LABEL_16:
        v8 = v5;
LABEL_17:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::StringId *&,Phase::StringId *&>(a1, v8);
        return 1;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,sValidateProfile(Phase::Controller::ProfileRegistry::Profile const&,Phase::Controller::SpatialModelerRegistry *)::$_0 &,Phase::StringId *,0>(a1, a1 + 3, a1 + 6, a2 - 3);
        return 1;
      case 5:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,sValidateProfile(Phase::Controller::ProfileRegistry::Profile const&,Phase::Controller::SpatialModelerRegistry *)::$_0 &,Phase::StringId *,0>(a1, a1 + 3, a1 + 6, a1 + 9);
        v7 = *(a2 - 3);
        v6 = (a2 - 3);
        if (v7 >= v3[9])
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::StringId *&,Phase::StringId *&>((v3 + 9), v6);
        if (v3[9] >= v3[6])
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::StringId *&,Phase::StringId *&>((v3 + 6), (v3 + 9));
        if (v3[6] >= v3[3])
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::StringId *&,Phase::StringId *&>((v3 + 3), (v3 + 6));
        if (v3[3] >= *v3)
        {
          return 1;
        }

        v8 = (v3 + 3);
        a1 = v3;
        goto LABEL_17;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = a2 - 3;
      if (*(a2 - 3) >= *a1)
      {
        return 1;
      }

      goto LABEL_16;
    }
  }

  v12 = a1 + 6;
  v11 = a1[6];
  v13 = a1[3];
  if (v13 >= *a1)
  {
    if (v11 >= v13)
    {
      goto LABEL_31;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::StringId *&,Phase::StringId *&>((a1 + 3), (a1 + 6));
    if (v3[3] >= *v3)
    {
      goto LABEL_31;
    }

    a1 = v3;
    v14 = (v3 + 3);
    goto LABEL_30;
  }

  if (v11 < v13)
  {
LABEL_22:
    v14 = (v3 + 6);
LABEL_30:
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::StringId *&,Phase::StringId *&>(a1, v14);
    goto LABEL_31;
  }

  std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::StringId *&,Phase::StringId *&>(a1, (a1 + 3));
  if (v3[6] < v3[3])
  {
    a1 = v3 + 3;
    goto LABEL_22;
  }

LABEL_31:
  v15 = v3 + 9;
  if (v3 + 9 == a2)
  {
    return 1;
  }

  v16 = 0;
  v17 = 0;
  while (*v15 >= *v12)
  {
LABEL_42:
    v12 = v15;
    v16 += 24;
    v15 += 3;
    if (v15 == a2)
    {
      return 1;
    }
  }

  Phase::StringId::StringId(&v23, v15);
  v18 = v16;
  while (1)
  {
    Phase::StringId::operator=(v3 + v18 + 72, v3 + v18 + 48);
    if (v18 == -48)
    {
      break;
    }

    v19 = *(v3 + v18 + 24);
    v18 -= 24;
    if (v23 >= v19)
    {
      v20 = v3 + v18 + 72;
      goto LABEL_39;
    }
  }

  v20 = v3;
LABEL_39:
  Phase::StringId::operator=(v20, &v23);
  if (++v17 != 8)
  {
    if ((v25 & 1) == 0)
    {
      free(v24);
    }

    goto LABEL_42;
  }

  v21 = v15 + 3 == a2;
  if ((v25 & 1) == 0)
  {
    free(v24);
  }

  return v21;
}