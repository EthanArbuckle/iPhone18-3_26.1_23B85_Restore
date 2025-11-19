void sub_23A3E34DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  v34 = 0;
  while (1)
  {
    v35 = *(&a33 + v34 + 48);
    if (v35)
    {
      *(&a33 + v34 + 56) = v35;
      operator delete(v35);
    }

    v34 -= 24;
    if (v34 == -72)
    {
      if (__p)
      {
        operator delete(__p);
      }

      if (a29)
      {
        operator delete(a29);
      }

      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t Phase::SpatialModeler::convertRayTracingPlaneWaveListToDirectionalMetadata<Phase::SpatialModeler::PhaseSpatialModelerMetadata_3Band>(uint64_t result, uint64_t *a2, char a3)
{
  if (a2)
  {
    v3 = result;
    result = *result;
    v4 = v3[1];
    if (result != v4)
    {
      v6 = (v4 - result) >> 5;
      v7 = (**result)(result);
      Phase::SpatialModeler::AllocMetadata<float>(a2, v6, v7);
      v8 = 0;
      v9 = *v3;
      v10 = a2[1];
      v11 = a2[7];
      v12 = a2[13];
      v13 = (v12 + 16);
      v14 = *(v12 + 8);
      if (v6 <= 1)
      {
        v15 = 1;
      }

      else
      {
        v15 = v6;
      }

      v16 = v7;
      v17 = 4 * v14;
      v18 = (v9 + 20);
      v31 = a2;
      v32 = a2[1];
      v19 = a2[18];
      result = 1065353216;
      v33 = v7;
      do
      {
        v20 = v9 + 32 * v8;
        v21 = *(v20 + 8);
        v22 = (180.0 - *(v20 + 12)) - (floorf((180.0 - *(v20 + 12)) / 360.0) * 360.0);
        if (v22 >= 360.0)
        {
          v24 = v9;
          v25 = v15;
          v23 = nextafterf(360.0, 0.0);
          result = 1065353216;
          v10 = v32;
          v16 = v33;
          v15 = v25;
          v9 = v24;
        }

        else
        {
          v23 = v22 + 0.0;
        }

        v26 = v10 + 12 * v8;
        *v26 = 1065353216;
        *(v26 + 4) = 90.0 - v21;
        *(v26 + 8) = v23;
        *(v11 + 4 * v8) = *(v20 + 16);
        *(v19 + v8) = 0;
        v27 = v18;
        v28 = v13;
        v29 = v16;
        if (v16 >= 1)
        {
          do
          {
            *v28 = fabsf(*v27);
            if (*v27 < 0.0)
            {
              *(v19 + v8) = 1;
            }

            ++v28;
            ++v27;
            --v29;
          }

          while (v29);
        }

        ++v8;
        v13 = (v13 + v17);
        v18 += 8;
      }

      while (v8 != v15);
      *(v31 + 201) = a3;
      *(v31 + 51) = 0;
    }
  }

  return result;
}

void Phase::SpatialModeler::computePlaneWaveList_RayTracing<Phase::SpatialModeler::PhaseSpatialModelerMetadata_Octave>(uint64_t a1, char a2, unsigned int a3, int a4, void *a5, float a6, float a7, float a8, float a9, float a10, float a11, float a12, float a13)
{
  v127 = *MEMORY[0x277D85DE8];
  v19 = fabsf(a9) / -20.0;
  v21 = *(a1 + 16);
  v20 = *(a1 + 20);
  __p[0] = 0;
  __p[1] = 0;
  v122 = 0;
  v119 = 0;
  v120 = 0;
  v117 = 0;
  v118 = 0;
  if (v20 < a12)
  {
    v22 = v20;
  }

  else
  {
    v22 = a12;
  }

  v124 = 0;
  memset(v123, 0, sizeof(v123));
  v23 = __exp10f(v19);
  v114 = a1;
  v104 = *(a1 + 28);
  if (v104 == 10)
  {
    goto LABEL_23;
  }

  for (i = 0; i != 72; i += 24)
  {
    std::vector<float>::resize((v123 + i), 0xAuLL);
  }

  v26 = *(v114 + 7);
  if (*(v114 + 36) & 1 | (*(v114 + 6) == 0))
  {
    v27 = &Phase::SpatialModeler::EnergyHistogram::s_emptyTS;
  }

  else
  {
    v27 = *(v114 + 1);
  }

  v28 = *&v123[0];
  switch(v26)
  {
    case 3:
      v31 = Phase::sThreeBandFrequencies;
      goto LABEL_16;
    case 0x1F:
      v31 = Phase::sThirdOctaveBandFrequencies;
LABEL_16:
      Phase::GetValuesFromFrequencyResponse<float const*,float const*,float const*,float *,&float Phase::Square<float>,&float Phase::SquareRoot<float>>(v31, &v31[v26], v27, v27 + 4 * v26, Phase::sOctaveBandFrequencies, Phase::sThirdOctaveBandFrequencies, *&v123[0]);
      goto LABEL_23;
    case 0xA:
      v29 = *v27;
      v30 = v27[1];
      *(*&v123[0] + 32) = *(v27 + 4);
      *(v28 + 16) = v30;
      break;
    default:
      if ((Phase::SpatialModeler::convertSubbandCountMagnitudes(unsigned long,unsigned long,float const*,float *)::loggedOnce & 1) == 0)
      {
        v32 = **(Phase::Logger::GetInstance(v25) + 1264);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "GeneratePlaneWaveList.hpp";
          *&buf[12] = 1024;
          *&buf[14] = 177;
          *&buf[18] = 2048;
          *&buf[20] = v26;
          _os_log_impl(&dword_23A302000, v32, OS_LOG_TYPE_ERROR, "%25s:%-5d Unsupported subband count: %zu\n", buf, 0x1Cu);
        }

        Phase::SpatialModeler::convertSubbandCountMagnitudes(unsigned long,unsigned long,float const*,float *)::loggedOnce = 1;
      }

      *(v28 + 32) = 0;
      v29 = 0uLL;
      *(v28 + 16) = 0u;
      break;
  }

  *v28 = v29;
LABEL_23:
  v34 = *a5;
  v33 = a5[1];
  v113 = a5;
  if (v33 != *a5)
  {
    v35 = v33 - 64;
    v36 = (v33 - 64);
    v37 = (v33 - 64);
    do
    {
      v38 = *v37;
      v37 -= 8;
      (*(v38 + 16))(v36);
      v35 -= 64;
      v39 = v36 == v34;
      v36 = v37;
    }

    while (!v39);
  }

  *(v113 + 8) = v34;
  if ((a2 & 1) == 0)
  {
    a3 = time(0);
  }

  srand(a3);
  v40 = vcvtps_u32_f32(a8 * a11);
  v116 = v40;
  v109 = vcvtps_u32_f32(v22 * a8);
  v41 = v104;
  if (v40 < v109)
  {
    v42 = 0;
    v43 = v21 * a8;
    v103 = a7 * 12.5663706 * a7 * a7;
    v110 = 0.0;
    do
    {
      if (v40 % 50 == 1)
      {
        v44 = a10;
        if (a6 >= 0.00000011921)
        {
          v44 = v103 * (v40 / a8) * (v40 / a8) / a6;
          if (v44 > a10)
          {
            v44 = a10;
          }
        }

        v110 = (1.0 / a8) * v44;
      }

      v45 = rand();
      if (vcvts_n_f32_s32(v45, 0x1FuLL) < v110)
      {
        std::vector<int>::push_back[abi:ne200100](&v117, &v116);
      }

      v46 = v40 / v43;
      v47 = v46;
      if (v42 >= v46)
      {
        goto LABEL_142;
      }

      v48 = &Phase::SpatialModeler::EnergyHistogram::s_emptyTS;
      if (v41 == 10)
      {
        v49 = v117;
        v50 = (v118 - v117) >> 2;
        if (v50)
        {
          v51 = *(v114 + 6);
          v52 = *(v114 + 7);
          if (v51 <= v42)
          {
            v53 = 1;
          }

          else
          {
            v53 = *(v114 + 36);
          }

          v54 = *(v114 + 1);
          if (v53)
          {
            v55 = &Phase::SpatialModeler::EnergyHistogram::s_emptyTS;
          }

          else
          {
            v55 = (v54 + 4 * v52 * v42);
          }

          if (v51 <= v47)
          {
            v64 = (v54 + 4 * v52 * (v51 - 1));
            if (*(v114 + 36))
            {
              v65 = &Phase::SpatialModeler::EnergyHistogram::s_emptyTS;
            }

            else
            {
              v65 = v64;
            }

            if (v51)
            {
              v56 = v65;
            }

            else
            {
              v56 = &Phase::SpatialModeler::EnergyHistogram::s_emptyTS;
            }
          }

          else if (v51 <= v47 || (*(v114 + 36) & 1) != 0)
          {
            v56 = &Phase::SpatialModeler::EnergyHistogram::s_emptyTS;
          }

          else
          {
            v56 = (v54 + 4 * v52 * v47);
          }

          goto LABEL_81;
        }

        v42 = v46;
        goto LABEL_142;
      }

      v57 = *(v114 + 7);
      if (*(v114 + 36) & 1 | (*(v114 + 6) <= v47))
      {
        v58 = &Phase::SpatialModeler::EnergyHistogram::s_emptyTS;
      }

      else
      {
        v58 = (*(v114 + 1) + 4 * v57 * v47);
      }

      v59 = v46;
      v60 = v123 + 3 * (v47 % 3);
      v61 = *v60;
      if (v57 == 3)
      {
        v66 = Phase::sThreeBandFrequencies;
      }

      else
      {
        if (v57 != 31)
        {
          if (v57 == 10)
          {
            v62 = *v58;
            v63 = v58[1];
            *(v61 + 32) = *(v58 + 4);
            *(v61 + 16) = v63;
          }

          else
          {
            if ((Phase::SpatialModeler::convertSubbandCountMagnitudes(unsigned long,unsigned long,float const*,float *)::loggedOnce & 1) == 0)
            {
              v67 = **(Phase::Logger::GetInstance(v45) + 1264);
              if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315650;
                *&buf[4] = "GeneratePlaneWaveList.hpp";
                *&buf[12] = 1024;
                *&buf[14] = 177;
                *&buf[18] = 2048;
                *&buf[20] = v57;
                _os_log_impl(&dword_23A302000, v67, OS_LOG_TYPE_ERROR, "%25s:%-5d Unsupported subband count: %zu\n", buf, 0x1Cu);
              }

              Phase::SpatialModeler::convertSubbandCountMagnitudes(unsigned long,unsigned long,float const*,float *)::loggedOnce = 1;
            }

            *(v61 + 32) = 0;
            v62 = 0uLL;
            *(v61 + 16) = 0u;
          }

          *v61 = v62;
          goto LABEL_74;
        }

        v66 = Phase::sThirdOctaveBandFrequencies;
      }

      Phase::GetValuesFromFrequencyResponse<float const*,float const*,float const*,float *,&float Phase::Square<float>,&float Phase::SquareRoot<float>>(v66, &v66[v57], v58, v58 + 4 * v57, Phase::sOctaveBandFrequencies, Phase::sThirdOctaveBandFrequencies, *v60);
LABEL_74:
      v49 = v117;
      v50 = (v118 - v117) >> 2;
      if (v50)
      {
        v55 = *(v123 + 3 * (v42 % 3));
        v51 = *(v114 + 6);
        if (v51 <= v59)
        {
          v56 = *(v123 + 3 * ((v51 - 1) % 3));
        }

        else
        {
          v56 = *v60;
        }

        v47 = v59;
LABEL_81:
        v68 = v42 - 1;
        if (v42 < 1)
        {
          if (v41 == 10)
          {
            if (!((v51 == 0) | *(v114 + 36) & 1))
            {
              v48 = *(v114 + 1);
            }
          }

          else
          {
            v48 = *&v123[0];
          }
        }

        else if (v41 == 10)
        {
          if ((*(v114 + 36) & 1) == 0 && v51 > v68)
          {
            v48 = (*(v114 + 1) + 4 * *(v114 + 7) * v68);
          }
        }

        else
        {
          v48 = *(v123 + 3 * (v68 % 3));
        }

        v69 = 1.0;
        if (v50 != 1)
        {
          v69 = sqrtf(1.0 / v50);
        }

        v70 = 0;
        v71 = v69 * a13;
        v72 = (((*(v114 + 4) * v42) * a8) + 0.5);
        v107 = v47;
        while (*&v48[v70] <= 1.1755e-37 && *&v55[v70] <= 1.1755e-37 && *&v56[v70] <= 1.1755e-37)
        {
          v70 += 4;
          if (v70 == 40)
          {
            goto LABEL_141;
          }
        }

        v73 = 0;
        if (v50 <= 1)
        {
          v74 = 1;
        }

        else
        {
          v74 = v50;
        }

        do
        {
          v75 = rand();
          if (v75 >= 0)
          {
            v76 = v75 & 1;
          }

          else
          {
            v76 = -(v75 & 1);
          }

          v77 = *(v117 + v73);
          v78 = rand();
          v79 = (v77 - v72) / v43;
          if (v79 < 0.0)
          {
            v79 = 0.0;
          }

          if (v79 <= 1.0)
          {
            v80 = v79;
          }

          else
          {
            v80 = 1.0;
          }

          std::vector<float>::vector[abi:ne200100](buf, 0xAuLL);
          v81 = vcvts_n_f32_s32(v78, 0x1FuLL);
          v82 = *buf;
          v83 = 0;
          if (v80 >= 0.5)
          {
            v85 = (v81 * ((v80 + -0.5) + (v80 + -0.5))) * (v81 * ((v80 + -0.5) + (v80 + -0.5)));
            do
            {
              *(v82 + v83) = (v85 * *&v56[v83]) + ((1.0 - v85) * *&v55[v83]);
              v83 += 4;
            }

            while (v83 != 40);
          }

          else
          {
            v84 = (v81 * ((0.5 - v80) + (0.5 - v80))) * (v81 * ((0.5 - v80) + (0.5 - v80)));
            do
            {
              *(v82 + v83) = (v84 * *&v48[v83]) + ((1.0 - v84) * *&v55[v83]);
              v83 += 4;
            }

            while (v83 != 40);
          }

          if (__p[0])
          {
            operator delete(__p[0]);
          }

          v115 = *buf;
          *__p = *buf;
          v122 = *&buf[16];
          v86 = rand();
          v87 = rand();
          if (!Phase::SpatialModeler::DirectivityHistogram::findImpactAngle_TS(v114, v42, &v120 + 1, &v120, vcvts_n_f32_s32(v86, 0x1FuLL), vcvts_n_f32_s32(v87, 0x1FuLL)))
          {
            v88 = 0;
            v89 = *(v117 + v73);
            v90 = v115;
            do
            {
              *(v115 + v88) = v71 * (sqrtf(*(v115 + v88)) * (2 * v76 - 1));
              v88 += 4;
            }

            while (v88 != 40);
            if (v115 != *(&v115 + 1))
            {
              v91 = (v89 - a4) & ~((v89 - a4) >> 31);
              while (fabsf(*v90) <= v23)
              {
                if (++v90 == *(&v115 + 1))
                {
                  goto LABEL_120;
                }
              }

              v92 = v91 / a8;
              v94 = *(v113 + 8);
              v93 = *(v113 + 16);
              if (v94 >= v93)
              {
                v97 = (v94 - *v113) >> 6;
                if ((v97 + 1) >> 58)
                {
                  std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
                }

                v98 = v93 - *v113;
                v99 = v98 >> 5;
                if (v98 >> 5 <= (v97 + 1))
                {
                  v99 = v97 + 1;
                }

                if (v98 >= 0x7FFFFFFFFFFFFFC0)
                {
                  v100 = 0x3FFFFFFFFFFFFFFLL;
                }

                else
                {
                  v100 = v99;
                }

                v126 = v113;
                if (v100)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::SpatialModeler::PhaseSpatialModelerMetadata_Octave>>(v113, v100);
                }

                *buf = 0;
                *&buf[8] = v97 << 6;
                *&buf[16] = v97 << 6;
                *&buf[24] = 0;
                Phase::SpatialModeler::PhaseSpatialModelerMetadata_Octave::PhaseSpatialModelerMetadata_Octave(v97 << 6, __p, *&v120, *(&v120 + 1), v92);
                *&buf[16] += 64;
                std::vector<Phase::SpatialModeler::PhaseSpatialModelerMetadata_Octave>::__swap_out_circular_buffer(v113, buf);
                v96 = v113;
                v95 = *(v113 + 8);
                std::__split_buffer<Phase::SpatialModeler::PhaseSpatialModelerMetadata_Octave>::~__split_buffer(buf);
              }

              else
              {
                Phase::SpatialModeler::PhaseSpatialModelerMetadata_Octave::PhaseSpatialModelerMetadata_Octave(*(v113 + 8), __p, *&v120, *(&v120 + 1), v91 / a8);
                v95 = v94 + 64;
                v96 = v113;
                *(v113 + 8) = v95;
              }

              *(v96 + 8) = v95;
            }
          }

LABEL_120:
          ++v73;
        }

        while (v73 != v74);
        v49 = v117;
        v41 = v104;
LABEL_141:
        v118 = v49;
        v42 = v107;
        goto LABEL_142;
      }

      v42 = v59;
LABEL_142:
      v40 = v116 + 1;
      v116 = v40;
    }

    while (v40 < v109);
  }

  for (j = 0; j != -72; j -= 24)
  {
    v102 = *(&v123[3] + j);
    if (v102)
    {
      *(&v123[3] + j + 8) = v102;
      operator delete(v102);
    }
  }

  if (v117)
  {
    v118 = v117;
    operator delete(v117);
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }
}

void sub_23A3E41F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  v34 = 0;
  while (1)
  {
    v35 = *(&a33 + v34 + 48);
    if (v35)
    {
      *(&a33 + v34 + 56) = v35;
      operator delete(v35);
    }

    v34 -= 24;
    if (v34 == -72)
    {
      if (__p)
      {
        operator delete(__p);
      }

      if (a29)
      {
        operator delete(a29);
      }

      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t Phase::SpatialModeler::convertRayTracingPlaneWaveListToDirectionalMetadata<Phase::SpatialModeler::PhaseSpatialModelerMetadata_Octave>(uint64_t result, uint64_t *a2, char a3)
{
  if (a2)
  {
    v3 = result;
    result = *result;
    v4 = v3[1];
    if (result != v4)
    {
      v6 = (v4 - result) >> 6;
      v7 = (**result)(result);
      Phase::SpatialModeler::AllocMetadata<float>(a2, v6, v7);
      v8 = 0;
      v9 = *v3;
      v10 = a2[1];
      v11 = a2[7];
      v12 = a2[13];
      v13 = (v12 + 16);
      v14 = *(v12 + 8);
      if (v6 <= 1)
      {
        v15 = 1;
      }

      else
      {
        v15 = v6;
      }

      v16 = v7;
      v17 = 4 * v14;
      v18 = (v9 + 20);
      v31 = a2;
      v32 = a2[1];
      v19 = a2[18];
      result = 1065353216;
      v33 = v7;
      do
      {
        v20 = v9 + (v8 << 6);
        v21 = *(v20 + 8);
        v22 = (180.0 - *(v20 + 12)) - (floorf((180.0 - *(v20 + 12)) / 360.0) * 360.0);
        if (v22 >= 360.0)
        {
          v24 = v9;
          v25 = v15;
          v23 = nextafterf(360.0, 0.0);
          result = 1065353216;
          v10 = v32;
          v16 = v33;
          v15 = v25;
          v9 = v24;
        }

        else
        {
          v23 = v22 + 0.0;
        }

        v26 = v10 + 12 * v8;
        *v26 = 1065353216;
        *(v26 + 4) = 90.0 - v21;
        *(v26 + 8) = v23;
        *(v11 + 4 * v8) = *(v20 + 16);
        *(v19 + v8) = 0;
        v27 = v18;
        v28 = v13;
        v29 = v16;
        if (v16 >= 1)
        {
          do
          {
            *v28 = fabsf(*v27);
            if (*v27 < 0.0)
            {
              *(v19 + v8) = 1;
            }

            ++v28;
            ++v27;
            --v29;
          }

          while (v29);
        }

        ++v8;
        v13 = (v13 + v17);
        v18 += 16;
      }

      while (v8 != v15);
      *(v31 + 201) = a3;
      *(v31 + 51) = 0;
    }
  }

  return result;
}

void Phase::SpatialModeler::computePlaneWaveList_RayTracing<Phase::SpatialModeler::PhaseSpatialModelerMetadata_ThirdOctave>(uint64_t a1, char a2, unsigned int a3, int a4, void *a5, float a6, float a7, float a8, float a9, float a10, float a11, float a12, float a13)
{
  v135 = *MEMORY[0x277D85DE8];
  v19 = fabsf(a9) / -20.0;
  v21 = *(a1 + 16);
  v20 = *(a1 + 20);
  __p[0] = 0;
  __p[1] = 0;
  v130 = 0;
  v127 = 0;
  v128 = 0;
  v125 = 0;
  v126 = 0;
  if (v20 < a12)
  {
    v22 = v20;
  }

  else
  {
    v22 = a12;
  }

  v132 = 0;
  memset(v131, 0, sizeof(v131));
  v23 = __exp10f(v19);
  v122 = a1;
  v112 = *(a1 + 28);
  if (v112 == 31)
  {
    goto LABEL_22;
  }

  for (i = 0; i != 72; i += 24)
  {
    std::vector<float>::resize((v131 + i), 0x1FuLL);
  }

  v26 = *(v122 + 7);
  if (*(v122 + 36) & 1 | (*(v122 + 6) == 0))
  {
    v27 = &Phase::SpatialModeler::EnergyHistogram::s_emptyTS;
  }

  else
  {
    v27 = *(v122 + 1);
  }

  v28 = *&v131[0];
  switch(v26)
  {
    case 3:
      v35 = Phase::sThreeBandFrequencies;
      goto LABEL_16;
    case 0xA:
      v35 = Phase::sOctaveBandFrequencies;
LABEL_16:
      Phase::GetValuesFromFrequencyResponse<float const*,float const*,float const*,float *,&float Phase::Square<float>,&float Phase::SquareRoot<float>>(v35, &v35[v26], v27, v27 + 4 * v26, Phase::sThirdOctaveBandFrequencies, &xmmword_23A5557D0, *&v131[0]);
      break;
    case 0x1F:
      v29 = *v27;
      v30 = v27[1];
      v31 = v27[3];
      *(*&v131[0] + 32) = v27[2];
      v28[3] = v31;
      *v28 = v29;
      v28[1] = v30;
      v32 = v27[4];
      v33 = v27[5];
      v34 = v27[6];
      *(v28 + 108) = *(v27 + 108);
      v28[5] = v33;
      v28[6] = v34;
      v28[4] = v32;
      break;
    default:
      if ((Phase::SpatialModeler::convertSubbandCountMagnitudes(unsigned long,unsigned long,float const*,float *)::loggedOnce & 1) == 0)
      {
        v36 = **(Phase::Logger::GetInstance(v25) + 1264);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "GeneratePlaneWaveList.hpp";
          *&buf[12] = 1024;
          *&buf[14] = 177;
          *&buf[18] = 2048;
          *&buf[20] = v26;
          _os_log_impl(&dword_23A302000, v36, OS_LOG_TYPE_ERROR, "%25s:%-5d Unsupported subband count: %zu\n", buf, 0x1Cu);
        }

        Phase::SpatialModeler::convertSubbandCountMagnitudes(unsigned long,unsigned long,float const*,float *)::loggedOnce = 1;
      }

      *(v28 + 108) = 0u;
      v28[5] = 0u;
      v28[6] = 0u;
      v28[3] = 0u;
      v28[4] = 0u;
      v28[1] = 0u;
      v28[2] = 0u;
      *v28 = 0u;
      break;
  }

LABEL_22:
  v38 = *a5;
  v37 = a5[1];
  v121 = a5;
  if (v37 != *a5)
  {
    v39 = v37 - 144;
    v40 = (v37 - 144);
    v41 = (v37 - 144);
    do
    {
      v42 = *v41;
      v41 -= 18;
      (*(v42 + 16))(v40);
      v39 -= 144;
      v43 = v40 == v38;
      v40 = v41;
    }

    while (!v43);
  }

  *(v121 + 8) = v38;
  if ((a2 & 1) == 0)
  {
    a3 = time(0);
  }

  srand(a3);
  v44 = vcvtps_u32_f32(a8 * a11);
  v124 = v44;
  v117 = vcvtps_u32_f32(v22 * a8);
  v45 = v112;
  if (v44 < v117)
  {
    v46 = 0;
    v47 = v21 * a8;
    v111 = a7 * 12.5663706 * a7 * a7;
    v118 = 0.0;
    do
    {
      if (v44 % 50 == 1)
      {
        v48 = a10;
        if (a6 >= 0.00000011921)
        {
          v48 = v111 * (v44 / a8) * (v44 / a8) / a6;
          if (v48 > a10)
          {
            v48 = a10;
          }
        }

        v118 = (1.0 / a8) * v48;
      }

      v49 = rand();
      if (vcvts_n_f32_s32(v49, 0x1FuLL) < v118)
      {
        std::vector<int>::push_back[abi:ne200100](&v125, &v124);
      }

      v50 = v44 / v47;
      v51 = v50;
      if (v46 >= v50)
      {
        goto LABEL_140;
      }

      v52 = &Phase::SpatialModeler::EnergyHistogram::s_emptyTS;
      if (v45 == 31)
      {
        v53 = v125;
        v54 = (v126 - v125) >> 2;
        if (v54)
        {
          v55 = *(v122 + 6);
          v56 = *(v122 + 7);
          if (v55 <= v46)
          {
            v57 = 1;
          }

          else
          {
            v57 = *(v122 + 36);
          }

          v58 = *(v122 + 1);
          if (v57)
          {
            v59 = &Phase::SpatialModeler::EnergyHistogram::s_emptyTS;
          }

          else
          {
            v59 = (v58 + 4 * v56 * v46);
          }

          if (v55 <= v51)
          {
            v72 = (v58 + 4 * v56 * (v55 - 1));
            if (*(v122 + 36))
            {
              v73 = &Phase::SpatialModeler::EnergyHistogram::s_emptyTS;
            }

            else
            {
              v73 = v72;
            }

            if (v55)
            {
              v60 = v73;
            }

            else
            {
              v60 = &Phase::SpatialModeler::EnergyHistogram::s_emptyTS;
            }
          }

          else if (v55 <= v51 || (*(v122 + 36) & 1) != 0)
          {
            v60 = &Phase::SpatialModeler::EnergyHistogram::s_emptyTS;
          }

          else
          {
            v60 = (v58 + 4 * v56 * v51);
          }

          goto LABEL_79;
        }

        v46 = v50;
        goto LABEL_140;
      }

      v61 = *(v122 + 7);
      if (*(v122 + 36) & 1 | (*(v122 + 6) <= v51))
      {
        v62 = &Phase::SpatialModeler::EnergyHistogram::s_emptyTS;
      }

      else
      {
        v62 = (*(v122 + 1) + 4 * v61 * v51);
      }

      v63 = v50;
      v64 = v131 + 3 * (v51 % 3);
      v65 = *v64;
      if (v61 == 3)
      {
        v74 = Phase::sThreeBandFrequencies;
      }

      else
      {
        if (v61 != 10)
        {
          if (v61 == 31)
          {
            v66 = *v62;
            v67 = v62[1];
            v68 = v62[3];
            v65[2] = v62[2];
            v65[3] = v68;
            *v65 = v66;
            v65[1] = v67;
            v69 = v62[4];
            v70 = v62[5];
            v71 = v62[6];
            *(v65 + 108) = *(v62 + 108);
            v65[5] = v70;
            v65[6] = v71;
            v65[4] = v69;
          }

          else
          {
            if ((Phase::SpatialModeler::convertSubbandCountMagnitudes(unsigned long,unsigned long,float const*,float *)::loggedOnce & 1) == 0)
            {
              v75 = **(Phase::Logger::GetInstance(v49) + 1264);
              if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315650;
                *&buf[4] = "GeneratePlaneWaveList.hpp";
                *&buf[12] = 1024;
                *&buf[14] = 177;
                *&buf[18] = 2048;
                *&buf[20] = v61;
                _os_log_impl(&dword_23A302000, v75, OS_LOG_TYPE_ERROR, "%25s:%-5d Unsupported subband count: %zu\n", buf, 0x1Cu);
              }

              Phase::SpatialModeler::convertSubbandCountMagnitudes(unsigned long,unsigned long,float const*,float *)::loggedOnce = 1;
            }

            *(v65 + 108) = 0u;
            v65[5] = 0u;
            v65[6] = 0u;
            v65[3] = 0u;
            v65[4] = 0u;
            v65[1] = 0u;
            v65[2] = 0u;
            *v65 = 0u;
          }

          goto LABEL_72;
        }

        v74 = Phase::sOctaveBandFrequencies;
      }

      Phase::GetValuesFromFrequencyResponse<float const*,float const*,float const*,float *,&float Phase::Square<float>,&float Phase::SquareRoot<float>>(v74, &v74[v61], v62, v62 + 4 * v61, Phase::sThirdOctaveBandFrequencies, &xmmword_23A5557D0, *v64);
LABEL_72:
      v53 = v125;
      v54 = (v126 - v125) >> 2;
      if (v54)
      {
        v59 = *(v131 + 3 * (v46 % 3));
        v55 = *(v122 + 6);
        if (v55 <= v63)
        {
          v60 = *(v131 + 3 * ((v55 - 1) % 3));
        }

        else
        {
          v60 = *v64;
        }

        v51 = v63;
LABEL_79:
        v76 = v46 - 1;
        if (v46 < 1)
        {
          if (v45 == 31)
          {
            if (!((v55 == 0) | *(v122 + 36) & 1))
            {
              v52 = *(v122 + 1);
            }
          }

          else
          {
            v52 = *&v131[0];
          }
        }

        else if (v45 == 31)
        {
          if ((*(v122 + 36) & 1) == 0 && v55 > v76)
          {
            v52 = (*(v122 + 1) + 4 * *(v122 + 7) * v76);
          }
        }

        else
        {
          v52 = *(v131 + 3 * (v76 % 3));
        }

        v77 = 1.0;
        if (v54 != 1)
        {
          v77 = sqrtf(1.0 / v54);
        }

        v78 = 0;
        v79 = v77 * a13;
        v80 = (((*(v122 + 4) * v46) * a8) + 0.5);
        v115 = v51;
        while (*&v52[v78] <= 1.1755e-37 && *&v59[v78] <= 1.1755e-37 && *&v60[v78] <= 1.1755e-37)
        {
          v78 += 4;
          if (v78 == 124)
          {
            goto LABEL_139;
          }
        }

        v81 = 0;
        if (v54 <= 1)
        {
          v82 = 1;
        }

        else
        {
          v82 = v54;
        }

        do
        {
          v83 = rand();
          if (v83 >= 0)
          {
            v84 = v83 & 1;
          }

          else
          {
            v84 = -(v83 & 1);
          }

          v85 = *(v125 + v81);
          v86 = rand();
          v87 = (v85 - v80) / v47;
          if (v87 < 0.0)
          {
            v87 = 0.0;
          }

          if (v87 <= 1.0)
          {
            v88 = v87;
          }

          else
          {
            v88 = 1.0;
          }

          std::vector<float>::vector[abi:ne200100](buf, 0x1FuLL);
          v89 = vcvts_n_f32_s32(v86, 0x1FuLL);
          v90 = *buf;
          v91 = 0;
          if (v88 >= 0.5)
          {
            v93 = (v89 * ((v88 + -0.5) + (v88 + -0.5))) * (v89 * ((v88 + -0.5) + (v88 + -0.5)));
            do
            {
              *(v90 + v91) = (v93 * *&v60[v91]) + ((1.0 - v93) * *&v59[v91]);
              v91 += 4;
            }

            while (v91 != 124);
          }

          else
          {
            v92 = (v89 * ((0.5 - v88) + (0.5 - v88))) * (v89 * ((0.5 - v88) + (0.5 - v88)));
            do
            {
              *(v90 + v91) = (v92 * *&v52[v91]) + ((1.0 - v92) * *&v59[v91]);
              v91 += 4;
            }

            while (v91 != 124);
          }

          if (__p[0])
          {
            operator delete(__p[0]);
          }

          v123 = *buf;
          *__p = *buf;
          v130 = *&buf[16];
          v94 = rand();
          v95 = rand();
          if (!Phase::SpatialModeler::DirectivityHistogram::findImpactAngle_TS(v122, v46, &v128 + 1, &v128, vcvts_n_f32_s32(v94, 0x1FuLL), vcvts_n_f32_s32(v95, 0x1FuLL)))
          {
            v96 = 0;
            v97 = *(v125 + v81);
            v98 = v123;
            do
            {
              *(v123 + v96) = v79 * (sqrtf(*(v123 + v96)) * (2 * v84 - 1));
              v96 += 4;
            }

            while (v96 != 124);
            if (v123 != *(&v123 + 1))
            {
              v99 = (v97 - a4) & ~((v97 - a4) >> 31);
              while (fabsf(*v98) <= v23)
              {
                if (++v98 == *(&v123 + 1))
                {
                  goto LABEL_118;
                }
              }

              v100 = v99 / a8;
              v102 = *(v121 + 8);
              v101 = *(v121 + 16);
              if (v102 >= v101)
              {
                v105 = 0x8E38E38E38E38E39 * ((v102 - *v121) >> 4);
                v106 = v105 + 1;
                if (v105 + 1 > 0x1C71C71C71C71C7)
                {
                  std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
                }

                v107 = 0x8E38E38E38E38E39 * ((v101 - *v121) >> 4);
                if (2 * v107 > v106)
                {
                  v106 = 2 * v107;
                }

                if (v107 >= 0xE38E38E38E38E3)
                {
                  v108 = 0x1C71C71C71C71C7;
                }

                else
                {
                  v108 = v106;
                }

                v134 = v121;
                if (v108)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::SpatialModeler::PhaseSpatialModelerMetadata_ThirdOctave>>(v121, v108);
                }

                *buf = 0;
                *&buf[8] = 144 * v105;
                *&buf[16] = 144 * v105;
                *&buf[24] = 0;
                Phase::SpatialModeler::PhaseSpatialModelerMetadata_ThirdOctave::PhaseSpatialModelerMetadata_ThirdOctave(144 * v105, __p, *&v128, *(&v128 + 1), v100);
                *&buf[16] += 144;
                std::vector<Phase::SpatialModeler::PhaseSpatialModelerMetadata_ThirdOctave>::__swap_out_circular_buffer(v121, buf);
                v104 = v121;
                v103 = *(v121 + 8);
                std::__split_buffer<Phase::SpatialModeler::PhaseSpatialModelerMetadata_ThirdOctave>::~__split_buffer(buf);
              }

              else
              {
                Phase::SpatialModeler::PhaseSpatialModelerMetadata_ThirdOctave::PhaseSpatialModelerMetadata_ThirdOctave(*(v121 + 8), __p, *&v128, *(&v128 + 1), v99 / a8);
                v103 = v102 + 144;
                v104 = v121;
                *(v121 + 8) = v103;
              }

              *(v104 + 8) = v103;
            }
          }

LABEL_118:
          ++v81;
        }

        while (v81 != v82);
        v53 = v125;
        v45 = v112;
LABEL_139:
        v126 = v53;
        v46 = v115;
        goto LABEL_140;
      }

      v46 = v63;
LABEL_140:
      v44 = v124 + 1;
      v124 = v44;
    }

    while (v44 < v117);
  }

  for (j = 0; j != -72; j -= 24)
  {
    v110 = *(&v131[3] + j);
    if (v110)
    {
      *(&v131[3] + j + 8) = v110;
      operator delete(v110);
    }
  }

  if (v125)
  {
    v126 = v125;
    operator delete(v125);
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }
}

void sub_23A3E4F7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  v34 = 0;
  while (1)
  {
    v35 = *(&a33 + v34 + 48);
    if (v35)
    {
      *(&a33 + v34 + 56) = v35;
      operator delete(v35);
    }

    v34 -= 24;
    if (v34 == -72)
    {
      if (__p)
      {
        operator delete(__p);
      }

      if (a29)
      {
        operator delete(a29);
      }

      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t Phase::SpatialModeler::convertRayTracingPlaneWaveListToDirectionalMetadata<Phase::SpatialModeler::PhaseSpatialModelerMetadata_ThirdOctave>(uint64_t result, uint64_t *a2, char a3)
{
  if (a2)
  {
    v3 = result;
    result = *result;
    v4 = v3[1];
    if (result != v4)
    {
      v6 = 0x8E38E38E38E38E39 * ((v4 - result) >> 4);
      v7 = (**result)(result);
      Phase::SpatialModeler::AllocMetadata<float>(a2, v6, v7);
      v8 = 0;
      v9 = *v3;
      v10 = a2[1];
      v11 = a2[7];
      v12 = a2[13];
      v13 = (v12 + 16);
      v14 = *(v12 + 8);
      if (v6 <= 1)
      {
        v15 = 1;
      }

      else
      {
        v15 = v6;
      }

      v16 = v7;
      v17 = 4 * v14;
      v18 = (v9 + 20);
      v31 = a2;
      v32 = a2[1];
      v19 = a2[18];
      result = 12;
      v33 = v7;
      do
      {
        v20 = v9 + 144 * v8;
        v21 = *(v20 + 8);
        v22 = (180.0 - *(v20 + 12)) - (floorf((180.0 - *(v20 + 12)) / 360.0) * 360.0);
        if (v22 >= 360.0)
        {
          v24 = v9;
          v25 = v15;
          v23 = nextafterf(360.0, 0.0);
          result = 12;
          v10 = v32;
          v16 = v33;
          v15 = v25;
          v9 = v24;
        }

        else
        {
          v23 = v22 + 0.0;
        }

        v26 = v10 + 12 * v8;
        *v26 = 1065353216;
        *(v26 + 4) = 90.0 - v21;
        *(v26 + 8) = v23;
        *(v11 + 4 * v8) = *(v20 + 16);
        *(v19 + v8) = 0;
        v27 = v18;
        v28 = v13;
        v29 = v16;
        if (v16 >= 1)
        {
          do
          {
            *v28 = fabsf(*v27);
            if (*v27 < 0.0)
            {
              *(v19 + v8) = 1;
            }

            ++v28;
            ++v27;
            --v29;
          }

          while (v29);
        }

        ++v8;
        v13 = (v13 + v17);
        v18 += 36;
      }

      while (v8 != v15);
      *(v31 + 201) = a3;
      *(v31 + 51) = 0;
    }
  }

  return result;
}

void Phase::GetValuesFromFrequencyResponse<float const*,float const*,float const*,float *,&float Phase::Square<float>,&float Phase::SquareRoot<float>>(float *a1, float *a2, uint64_t a3, uint64_t a4, float *a5, float *a6, uint64_t a7)
{
  v10 = a2 - a1;
  if (a2 != a1)
  {
    for (i = a1 + 1; i != a2; ++i)
    {
      v13 = *(i - 1);
      v12 = *i;
      if (v12 < v13)
      {
        __assert_rtn("GetValuesFromFrequencyResponse", "FrequencyResponse.hpp", 262, "std::is_sorted(inFrequenciesFirst, inFrequenciesLast)");
      }
    }
  }

  if (a5 != a6)
  {
    for (j = a5 + 1; j != a6; ++j)
    {
      v16 = *(j - 1);
      v15 = *j;
      if (v15 < v16)
      {
        __assert_rtn("GetValuesFromFrequencyResponse", "FrequencyResponse.hpp", 263, "std::is_sorted(inOutputFrequenciesFirst, inOutputFrequenciesLast)");
      }
    }
  }

  Phase::GetBandsFromCenterFrequencies<float const*,float>(a1, a2, v88, 22000.0);
  Phase::GetBandsFromCenterFrequencies<float const*,float>(a5, a6, v87, 22000.0);
  __src = 0;
  v85 = 0;
  v86 = 0;
  __p = 0;
  v82 = 0;
  v83 = 0;
  v78 = 0;
  v79 = 0;
  v80 = 0;
  v76 = a6 - a5;
  if (v76 > 0)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    for (k = 0; k != v76; ++k)
    {
      v21 = (v87[0] + 8 * k);
      v22 = *v21;
      v23 = v21[1];
      v85 = __src;
      v82 = v18;
      v79 = v17;
      if (v19 < v10 >> 2)
      {
        v24 = (v88[0] + 8 * v19);
        v25 = *v24;
        v26 = v24[1];
        if (v23 < v26)
        {
          v26 = v23;
        }

        if (v25 >= v22)
        {
          v27 = *v24;
        }

        else
        {
          v27 = v22;
        }

        v28 = fmaxf(v26 - v27, 0.0);
        if (v28 == 0.0)
        {
          v29 = v23;
LABEL_51:
          v19 -= v25 != v29;
        }

        else
        {
          v30 = 8 * v19;
          while (1)
          {
            v31 = v85;
            if (v85 >= v86)
            {
              v33 = __src;
              v34 = v85 - __src;
              v35 = (v85 - __src) >> 2;
              v36 = v35 + 1;
              if ((v35 + 1) >> 62)
              {
                std::vector<float>::__throw_length_error[abi:ne200100]();
              }

              v37 = v86 - __src;
              if ((v86 - __src) >> 1 > v36)
              {
                v36 = v37 >> 1;
              }

              if (v37 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v38 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v38 = v36;
              }

              if (v38)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(&__src, v38);
              }

              *(4 * v35) = v28;
              v32 = 4 * v35 + 4;
              memcpy(0, v33, v34);
              v39 = __src;
              __src = 0;
              v85 = v32;
              v86 = 0;
              if (v39)
              {
                operator delete(v39);
              }
            }

            else
            {
              *v85 = v28;
              v32 = (v31 + 1);
            }

            v85 = v32;
            v40 = v82;
            if (v82 >= v83)
            {
              v41 = __p;
              v42 = v82 - __p;
              v43 = (v82 - __p) >> 3;
              v44 = v43 + 1;
              if ((v43 + 1) >> 61)
              {
                std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
              }

              v45 = v83 - __p;
              if ((v83 - __p) >> 2 > v44)
              {
                v44 = v45 >> 2;
              }

              v46 = v45 >= 0x7FFFFFFFFFFFFFF8;
              v47 = 0x1FFFFFFFFFFFFFFFLL;
              if (!v46)
              {
                v47 = v44;
              }

              if (v47)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(&__p, v47);
              }

              v48 = (8 * v43);
              v49 = &v48[-((v82 - __p) >> 3)];
              *v48 = v19;
              v18 = v48 + 1;
              memcpy(v49, v41, v42);
              v50 = __p;
              __p = v49;
              v82 = v18;
              v83 = 0;
              if (v50)
              {
                operator delete(v50);
              }
            }

            else
            {
              *v82 = v19;
              v18 = v40 + 1;
            }

            v82 = v18;
            if ((v10 >> 2) - 1 == v19)
            {
              break;
            }

            v25 = *(v88[0] + v30 + 8);
            v51 = *(v88[0] + v30 + 12);
            v52 = (v87[0] + 8 * k);
            v53 = *v52;
            v29 = v52[1];
            if (v29 < v51)
            {
              v51 = v52[1];
            }

            if (v25 >= v53)
            {
              v53 = *(v88[0] + v30 + 8);
            }

            v28 = fmaxf(v51 - v53, 0.0);
            v30 += 8;
            ++v19;
            if (v28 == 0.0)
            {
              goto LABEL_51;
            }
          }
        }
      }

      v54 = v18;
      v18 = __p;
      v55 = 0.0;
      v56 = v79;
      if (v54 == __p)
      {
        v59 = 0.0;
      }

      else
      {
        v57 = 0;
        v58 = v23 - v22;
        v59 = 0.0;
        do
        {
          v60 = *(__src + v57) / v58;
          v61 = *(a3 + 4 * v18[v57]);
          v62 = v60 * (v61 * v61);
          if (v56 >= v80)
          {
            v63 = v78;
            v64 = v56 - v78;
            v65 = (v56 - v78) >> 2;
            v66 = v65 + 1;
            if ((v65 + 1) >> 62)
            {
              std::vector<float>::__throw_length_error[abi:ne200100]();
            }

            v67 = v80 - v78;
            if ((v80 - v78) >> 1 > v66)
            {
              v66 = v67 >> 1;
            }

            if (v67 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v68 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v68 = v66;
            }

            if (v68)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(&v78, v68);
            }

            v69 = (v56 - v78) >> 2;
            v70 = (4 * v65);
            v71 = (4 * v65 - 4 * v69);
            *v70 = v62;
            v56 = v70 + 1;
            memcpy(v71, v63, v64);
            v72 = v78;
            v78 = v71;
            v79 = v56;
            v80 = 0;
            if (v72)
            {
              operator delete(v72);
            }
          }

          else
          {
            *v56++ = v62;
          }

          v59 = v59 + v60;
          v79 = v56;
          ++v57;
          v18 = __p;
        }

        while (v57 < (v82 - __p) >> 3);
      }

      v17 = v78;
      if (v78 != v56)
      {
        v73 = 0.0;
        v74 = v78;
        do
        {
          v75 = *v74++;
          v73 = v73 + v75;
        }

        while (v74 != v56);
        v55 = v73;
      }

      *(a7 + 4 * k) = sqrtf(v55 / v59);
    }

    if (v17)
    {
      v79 = v17;
      operator delete(v17);
      v18 = __p;
    }

    if (v18)
    {
      v82 = v18;
      operator delete(v18);
    }
  }

  if (__src)
  {
    v85 = __src;
    operator delete(__src);
  }

  if (v87[0])
  {
    v87[1] = v87[0];
    operator delete(v87[0]);
  }

  if (v88[0])
  {
    v88[1] = v88[0];
    operator delete(v88[0]);
  }
}

void sub_23A3E5754(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

Phase::Logger *Phase::GetBandsFromCenterFrequencies<float const*,float>@<X0>(float *a1@<X0>, float *a2@<X1>, float **a3@<X8>, float a4@<S0>)
{
  v6 = a1;
  v44 = *MEMORY[0x277D85DE8];
  v8 = a2 - a1;
  *v37 = 0;
  result = std::vector<Phase::FrequencyBand<float>>::vector[abi:ne200100](a3, v8);
  v10 = *a3;
  **a3 = 10.0;
  if (v8 == 31)
  {
    if (v6 == a2)
    {
      v14 = 0;
      v16 = 1;
      goto LABEL_25;
    }

    v17 = v6 + 1;
    v18 = &Phase::sThirdOctaveBandFrequencies;
    do
    {
      v19 = *v18++;
      v16 = *(v17 - 1) == v19;
      v20 = *(v17 - 1) != v19 || v17 == a2;
      ++v17;
    }

    while (!v20);
    goto LABEL_20;
  }

  if (v8 != 10)
  {
    v16 = 0;
LABEL_20:
    v14 = 0;
    goto LABEL_21;
  }

  if (v6 == a2)
  {
    v16 = 0;
    v14 = 1;
    goto LABEL_25;
  }

  v11 = v6 + 1;
  v12 = &Phase::sOctaveBandFrequencies;
  do
  {
    v13 = *v12++;
    v14 = *(v11 - 1) == v13;
    v15 = *(v11 - 1) != v13 || v11 == a2;
    ++v11;
  }

  while (!v15);
  v16 = 0;
LABEL_21:
  if (v8 >= 1)
  {
LABEL_25:
    v21 = 0;
    v22 = v10 + 2;
    v23 = v8 - 1;
    do
    {
      v24 = *v6;
      if (v14)
      {
        v25 = v24 + ((v24 / 1.4142) * 0.5);
        if (v25 >= a4)
        {
          v25 = a4;
        }

        v26 = 20.363;
      }

      else if (v16)
      {
        v25 = v24 + ((v24 / 4.2426) * 0.5);
        if (v25 >= a4)
        {
          v25 = a4;
        }

        v26 = 17.643;
      }

      else
      {
        if ((LODWORD(v24) & 0x7FFFFFFFu) >= 0x7F800000)
        {
          v32 = **(Phase::Logger::GetInstance(result) + 1152);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            v33 = *v6;
            *v37 = 136315650;
            *&v37[4] = "FrequencyResponse.hpp";
            v38 = 1024;
            v39 = 99;
            v40 = 2048;
            v41 = v33;
            _os_log_impl(&dword_23A302000, v32, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [!std::isfinite(inFrequenciesFirst[i]) is true]: GetBandsFromCenterFrequencies: bad center frequency: %fHz", v37, 0x1Cu);
          }

          exception = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(exception, "GetBandsFromCenterFrequencies: bad center frequency: %fHz");
LABEL_58:
          exception->__vftable = (MEMORY[0x277D828F8] + 16);
        }

        if (v24 < 10.0)
        {
          v30 = **(Phase::Logger::GetInstance(result) + 1152);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            v31 = *v6;
            *v37 = 136315906;
            *&v37[4] = "FrequencyResponse.hpp";
            v38 = 1024;
            v39 = 103;
            v40 = 2048;
            v41 = v31;
            v42 = 2048;
            v43 = 10.0;
            _os_log_impl(&dword_23A302000, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [inFrequenciesFirst[i] < lowestSupportedFreqInHz is true]: GetBandsFromCenterFrequencies: center frequency: %fHz cannot be below lowest supported frequency: %fHz", v37, 0x26u);
          }

          exception = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(exception, "GetBandsFromCenterFrequencies: center frequency: %fHz cannot be below lowest supported frequency: %fHz");
          goto LABEL_58;
        }

        if (v24 > a4)
        {
          v27 = **(Phase::Logger::GetInstance(result) + 1152);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            v28 = *v6;
            *v37 = 136315906;
            *&v37[4] = "FrequencyResponse.hpp";
            v38 = 1024;
            v39 = 107;
            v40 = 2048;
            v41 = v28;
            v42 = 2048;
            v43 = a4;
            _os_log_impl(&dword_23A302000, v27, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [inFrequenciesFirst[i] > highestSupportedFreqInHz is true]: GetBandsFromCenterFrequencies: center frequency: %fHz cannot be above highest supported frequency: %fHz", v37, 0x26u);
          }

          exception = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(exception, "GetBandsFromCenterFrequencies: center frequency: %fHz cannot be above highest supported frequency: %fHz");
          goto LABEL_58;
        }

        if (v21 && *(v6 - 1) >= v24)
        {
          v34 = **(Phase::Logger::GetInstance(result) + 1152);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            v35 = *(v6 - 1);
            v36 = *v6;
            *v37 = 136315906;
            *&v37[4] = "FrequencyResponse.hpp";
            v38 = 1024;
            v39 = 111;
            v40 = 2048;
            v41 = v35;
            v42 = 2048;
            v43 = v36;
            _os_log_impl(&dword_23A302000, v34, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [i > 0 && inFrequenciesFirst[i - 1] >= inFrequenciesFirst[i] is true]: GetBandsFromCenterFrequencies: center frequencies are not in ascending order. %fHz is before %fHz", v37, 0x26u);
          }

          exception = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(exception, "GetBandsFromCenterFrequencies: center frequencies are not in ascending order. %fHz is before %fHz");
          goto LABEL_58;
        }

        v26 = 10.0;
        if (v23 <= v21)
        {
          v25 = a4;
        }

        else
        {
          v25 = v24 * sqrtf(v6[1] / v24);
        }
      }

      *(v22 - 1) = v25;
      *v10 = v26;
      if (v23 > v21)
      {
        *v22 = v25;
      }

      ++v21;
      v22 += 2;
      ++v6;
    }

    while (v8 != v21);
  }

  return result;
}

void sub_23A3E5CB8(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void std::vector<Phase::SpatialModeler::PhaseSpatialModelerMetadata_3Band>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        (*(v9 + 16))(v7);
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

void std::vector<Phase::SpatialModeler::PhaseSpatialModelerMetadata_Octave>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 64;
      v7 = v4 - 64;
      v8 = v4 - 64;
      do
      {
        v9 = *v8;
        v8 -= 64;
        (*(v9 + 16))(v7);
        v6 -= 64;
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

void std::vector<Phase::SpatialModeler::PhaseSpatialModelerMetadata_ThirdOctave>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 144;
      v7 = v4 - 144;
      v8 = v4 - 144;
      do
      {
        v9 = *v8;
        v8 -= 144;
        (*(v9 + 16))(v7);
        v6 -= 144;
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

void std::vector<int>::push_back[abi:ne200100](const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

uint64_t Phase::SpatialModeler::PhaseSpatialModelerMetadata_3Band::PhaseSpatialModelerMetadata_3Band(uint64_t a1, uint64_t *a2, float a3, float a4, float a5)
{
  v23 = *MEMORY[0x277D85DE8];
  *a1 = &unk_284D33CC8;
  *(a1 + 8) = a3;
  *(a1 + 12) = a4;
  *(a1 + 16) = a5;
  v6 = *a2;
  v7 = (a2[1] - *a2) >> 2;
  switch(v7)
  {
    case 3:
      *(a1 + 20) = *v6;
      *(a1 + 24) = *(v6 + 4);
      v12 = *(v6 + 8);
      goto LABEL_8;
    case 31:
      v10 = *(v6 + 44);
      *(a1 + 20) = sqrtf(((((((((((((*(v6 + 4) * *(v6 + 4)) + (*v6 * *v6)) + (*(v6 + 8) * *(v6 + 8))) + (*(v6 + 12) * *(v6 + 12))) + (*(v6 + 16) * *(v6 + 16))) + (*(v6 + 20) * *(v6 + 20))) + (*(v6 + 24) * *(v6 + 24))) + (*(v6 + 28) * *(v6 + 28))) + (*(v6 + 32) * *(v6 + 32))) + (*(v6 + 36) * *(v6 + 36))) + (*(v6 + 40) * *(v6 + 40))) + (v10 * v10)) / 12.0);
      v11 = *(v6 + 92);
      *(a1 + 24) = sqrtf(((((((((((((*(v6 + 52) * *(v6 + 52)) + (*(v6 + 48) * *(v6 + 48))) + (*(v6 + 56) * *(v6 + 56))) + (*(v6 + 60) * *(v6 + 60))) + (*(v6 + 64) * *(v6 + 64))) + (*(v6 + 68) * *(v6 + 68))) + (*(v6 + 72) * *(v6 + 72))) + (*(v6 + 76) * *(v6 + 76))) + (*(v6 + 80) * *(v6 + 80))) + (*(v6 + 84) * *(v6 + 84))) + (*(v6 + 88) * *(v6 + 88))) + (v11 * v11)) / 12.0);
      v9 = ((((((*(v6 + 100) * *(v6 + 100)) + (*(v6 + 96) * *(v6 + 96))) + (*(v6 + 104) * *(v6 + 104))) + (*(v6 + 108) * *(v6 + 108))) + (*(v6 + 112) * *(v6 + 112))) + (*(v6 + 116) * *(v6 + 116))) + (*(v6 + 120) * *(v6 + 120));
      v8 = 7.0;
      goto LABEL_6;
    case 10:
      *(a1 + 20) = sqrtf(((((*(v6 + 4) * *(v6 + 4)) + (*v6 * *v6)) + (*(v6 + 8) * *(v6 + 8))) + (*(v6 + 12) * *(v6 + 12))) * 0.25);
      v8 = 3.0;
      *(a1 + 24) = sqrtf((((*(v6 + 20) * *(v6 + 20)) + (*(v6 + 16) * *(v6 + 16))) + (*(v6 + 24) * *(v6 + 24))) / 3.0);
      v9 = ((*(v6 + 32) * *(v6 + 32)) + (*(v6 + 28) * *(v6 + 28))) + (*(v6 + 36) * *(v6 + 36));
LABEL_6:
      v12 = sqrtf(v9 / v8);
LABEL_8:
      *(a1 + 28) = v12;
      return a1;
  }

  v14 = **(Phase::Logger::GetInstance(a1) + 1264);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = (a2[1] - *a2) >> 2;
    v17 = 136315650;
    v18 = "RayTracingTypes.hpp";
    v19 = 1024;
    v20 = 422;
    v21 = 2048;
    v22 = v15;
    _os_log_impl(&dword_23A302000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d PhaseSpatialModelerMetadata_3Band invalid number of subbands %zu", &v17, 0x1Cu);
  }

  *(a1 + 28) = 0;
  *(a1 + 20) = 0;
  return a1;
}

char *std::vector<Phase::SpatialModeler::PhaseSpatialModelerMetadata_3Band>::__swap_out_circular_buffer(char **a1, void *a2)
{
  v4 = a2[1];
  result = *a1;
  v6 = a1[1];
  v8 = (v4 - (v6 - result));
  if (v6 != result)
  {
    v9 = v4 - 32 * ((v6 - result) >> 5);
    v10 = result;
    v11 = v8;
    do
    {
      *v11 = &unk_284D33CC8;
      v12 = *(v10 + 8);
      *(v11 + 3) = *(v10 + 3);
      *(v11 + 8) = v12;
      v10 += 32;
      v11 += 32;
      v9 += 32;
    }

    while (v10 != v6);
    v13 = result;
    v14 = result;
    do
    {
      v15 = *v14;
      v14 += 32;
      (*(v15 + 16))();
      v13 += 32;
    }

    while (v14 != v6);
    result = *a1;
  }

  a2[1] = v8;
  *a1 = v8;
  a1[1] = result;
  a2[1] = result;
  v16 = a1[1];
  a1[1] = a2[2];
  a2[2] = v16;
  v17 = a1[2];
  a1[2] = a2[3];
  a2[3] = v17;
  *a2 = a2[1];
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::SpatialModeler::PhaseSpatialModelerMetadata_3Band>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<Phase::SpatialModeler::PhaseSpatialModelerMetadata_3Band>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 32);
    *(a1 + 16) = i - 32;
    (*(v4 + 16))();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t Phase::SpatialModeler::PhaseSpatialModelerMetadata_Octave::PhaseSpatialModelerMetadata_Octave(uint64_t a1, float **a2, float a3, float a4, float a5)
{
  v25 = *MEMORY[0x277D85DE8];
  *a1 = &unk_284D33CF8;
  *(a1 + 8) = a3;
  *(a1 + 12) = a4;
  *(a1 + 16) = a5;
  v7 = *a2;
  v8 = a2[1];
  v10 = v8 - v7;
  switch(v10)
  {
    case 3:
      v12 = *v7;
      *(a1 + 20) = *v7;
      *(a1 + 24) = v12;
      v13 = *v7;
      *(a1 + 28) = *v7;
      *(a1 + 32) = v13;
      v14 = *(v7 + 1);
      *(a1 + 36) = v14;
      *(a1 + 40) = v14;
      *(a1 + 44) = v7[1];
      v15 = *(v7 + 2);
      *(a1 + 48) = v15;
      *(a1 + 52) = v15;
      v11 = v7[2];
      goto LABEL_8;
    case 31:
      *(a1 + 20) = sqrtf(((((v7[1] * v7[1]) + (*v7 * *v7)) + (v7[2] * v7[2])) + (v7[3] * v7[3])) * 0.25);
      *(a1 + 24) = sqrtf((((v7[5] * v7[5]) + (v7[4] * v7[4])) + (v7[6] * v7[6])) / 3.0);
      *(a1 + 28) = sqrtf((((v7[8] * v7[8]) + (v7[7] * v7[7])) + (v7[9] * v7[9])) / 3.0);
      *(a1 + 32) = sqrtf((((v7[11] * v7[11]) + (v7[10] * v7[10])) + (v7[12] * v7[12])) / 3.0);
      *(a1 + 36) = sqrtf((((v7[14] * v7[14]) + (v7[13] * v7[13])) + (v7[15] * v7[15])) / 3.0);
      *(a1 + 40) = sqrtf((((v7[17] * v7[17]) + (v7[16] * v7[16])) + (v7[18] * v7[18])) / 3.0);
      *(a1 + 44) = sqrtf((((v7[20] * v7[20]) + (v7[19] * v7[19])) + (v7[21] * v7[21])) / 3.0);
      *(a1 + 48) = sqrtf((((v7[23] * v7[23]) + (v7[22] * v7[22])) + (v7[24] * v7[24])) / 3.0);
      *(a1 + 52) = sqrtf((((v7[26] * v7[26]) + (v7[25] * v7[25])) + (v7[27] * v7[27])) / 3.0);
      v11 = sqrtf((((v7[29] * v7[29]) + (v7[28] * v7[28])) + (v7[30] * v7[30])) / 3.0);
LABEL_8:
      *(a1 + 56) = v11;
      return a1;
    case 10:
      if (v8 != v7)
      {
        memmove((a1 + 20), v7, v8 - v7);
      }

      break;
    default:
      v16 = **(Phase::Logger::GetInstance(a1) + 1264);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = a2[1] - *a2;
        v19 = 136315650;
        v20 = "RayTracingTypes.hpp";
        v21 = 1024;
        v22 = 514;
        v23 = 2048;
        v24 = v17;
        _os_log_impl(&dword_23A302000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d PhaseSpatialModelerMetadata_Octave invalid number of subbands %zu", &v19, 0x1Cu);
      }

      *(a1 + 52) = 0;
      *(a1 + 36) = 0u;
      *(a1 + 20) = 0u;
      break;
  }

  return a1;
}

char *std::vector<Phase::SpatialModeler::PhaseSpatialModelerMetadata_Octave>::__swap_out_circular_buffer(char **a1, void *a2)
{
  v4 = a2[1];
  result = *a1;
  v6 = a1[1];
  v8 = (v4 - (v6 - result));
  if (v6 != result)
  {
    v9 = v4 - ((v6 - result) >> 6 << 6);
    v10 = result;
    v11 = v8;
    do
    {
      *v11 = &unk_284D33CF8;
      v12 = *(v10 + 8);
      v13 = *(v10 + 24);
      v14 = *(v10 + 40);
      *(v11 + 14) = *(v10 + 14);
      *(v11 + 40) = v14;
      *(v11 + 24) = v13;
      *(v11 + 8) = v12;
      v10 += 64;
      v11 += 64;
      v9 += 64;
    }

    while (v10 != v6);
    v15 = result;
    v16 = result;
    do
    {
      v17 = *v16;
      v16 += 64;
      (*(v17 + 16))();
      v15 += 64;
    }

    while (v16 != v6);
    result = *a1;
  }

  a2[1] = v8;
  *a1 = v8;
  a1[1] = result;
  a2[1] = result;
  v18 = a1[1];
  a1[1] = a2[2];
  a2[2] = v18;
  v19 = a1[2];
  a1[2] = a2[3];
  a2[3] = v19;
  *a2 = a2[1];
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::SpatialModeler::PhaseSpatialModelerMetadata_Octave>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<Phase::SpatialModeler::PhaseSpatialModelerMetadata_Octave>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 64);
    *(a1 + 16) = i - 64;
    (*(v4 + 16))();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t Phase::SpatialModeler::PhaseSpatialModelerMetadata_ThirdOctave::PhaseSpatialModelerMetadata_ThirdOctave(uint64_t a1, char **a2, float a3, float a4, float a5)
{
  v46 = *MEMORY[0x277D85DE8];
  *a1 = &unk_284D33D28;
  *(a1 + 8) = a3;
  *(a1 + 12) = a4;
  *(a1 + 16) = a5;
  v7 = *a2;
  v8 = a2[1];
  v10 = (v8 - v7) >> 2;
  switch(v10)
  {
    case 3:
      v22 = *v7;
      *(a1 + 20) = *v7;
      *(a1 + 24) = v22;
      v23 = *v7;
      *(a1 + 28) = *v7;
      *(a1 + 32) = v23;
      v24 = *v7;
      *(a1 + 36) = *v7;
      *(a1 + 40) = v24;
      v25 = *v7;
      *(a1 + 44) = *v7;
      *(a1 + 48) = v25;
      v26 = *v7;
      *(a1 + 52) = *v7;
      *(a1 + 56) = v26;
      v27 = *v7;
      *(a1 + 60) = *v7;
      *(a1 + 64) = v27;
      v28 = *v7;
      *(a1 + 68) = *v7;
      *(a1 + 72) = v28;
      v29 = *(v7 + 1);
      *(a1 + 76) = v29;
      *(a1 + 80) = v29;
      v30 = *(v7 + 1);
      *(a1 + 84) = v30;
      *(a1 + 88) = v30;
      v31 = *(v7 + 1);
      *(a1 + 92) = v31;
      *(a1 + 96) = v31;
      *(a1 + 100) = *(v7 + 1);
      v32 = *(v7 + 2);
      *(a1 + 104) = v32;
      *(a1 + 108) = v32;
      v33 = *(v7 + 2);
      *(a1 + 112) = v33;
      *(a1 + 116) = v33;
      v34 = *(v7 + 2);
      *(a1 + 120) = v34;
      *(a1 + 124) = v34;
      v35 = *(v7 + 2);
      *(a1 + 128) = v35;
      *(a1 + 132) = v35;
      v36 = *(v7 + 2);
      *(a1 + 136) = v36;
      *(a1 + 140) = v36;
      break;
    case 31:
      if (v8 != v7)
      {
        memmove((a1 + 20), v7, v8 - v7);
      }

      break;
    case 10:
      v11 = *v7;
      *(a1 + 20) = *v7;
      *(a1 + 24) = v11;
      v12 = *v7;
      *(a1 + 28) = *v7;
      *(a1 + 32) = v12;
      v13 = *(v7 + 1);
      *(a1 + 36) = v13;
      *(a1 + 40) = v13;
      *(a1 + 44) = *(v7 + 1);
      v14 = *(v7 + 2);
      *(a1 + 48) = v14;
      *(a1 + 52) = v14;
      *(a1 + 56) = *(v7 + 2);
      v15 = *(v7 + 3);
      *(a1 + 60) = v15;
      *(a1 + 64) = v15;
      *(a1 + 68) = *(v7 + 3);
      v16 = *(v7 + 4);
      *(a1 + 72) = v16;
      *(a1 + 76) = v16;
      *(a1 + 80) = *(v7 + 4);
      v17 = *(v7 + 5);
      *(a1 + 84) = v17;
      *(a1 + 88) = v17;
      *(a1 + 92) = *(v7 + 5);
      v18 = *(v7 + 6);
      *(a1 + 96) = v18;
      *(a1 + 100) = v18;
      *(a1 + 104) = *(v7 + 6);
      v19 = *(v7 + 7);
      *(a1 + 108) = v19;
      *(a1 + 112) = v19;
      *(a1 + 116) = *(v7 + 7);
      v20 = *(v7 + 8);
      *(a1 + 120) = v20;
      *(a1 + 124) = v20;
      *(a1 + 128) = *(v7 + 8);
      v21 = *(v7 + 9);
      *(a1 + 132) = v21;
      *(a1 + 136) = v21;
      *(a1 + 140) = *(v7 + 9);
      break;
    default:
      v37 = **(Phase::Logger::GetInstance(a1) + 1264);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v38 = (a2[1] - *a2) >> 2;
        v40 = 136315650;
        v41 = "RayTracingTypes.hpp";
        v42 = 1024;
        v43 = 639;
        v44 = 2048;
        v45 = v38;
        _os_log_impl(&dword_23A302000, v37, OS_LOG_TYPE_ERROR, "%25s:%-5d PhaseSpatialModelerMetadata_ThirdOctave invalid number of subbands %zu", &v40, 0x1Cu);
      }

      *(a1 + 128) = 0u;
      *(a1 + 116) = 0u;
      *(a1 + 100) = 0u;
      *(a1 + 84) = 0u;
      *(a1 + 68) = 0u;
      *(a1 + 52) = 0u;
      *(a1 + 36) = 0u;
      *(a1 + 20) = 0u;
      break;
  }

  return a1;
}

char *std::vector<Phase::SpatialModeler::PhaseSpatialModelerMetadata_ThirdOctave>::__swap_out_circular_buffer(char **a1, void *a2)
{
  v4 = a2[1];
  result = *a1;
  v6 = a1[1];
  v8 = (v4 - (v6 - result));
  if (v6 != result)
  {
    v9 = v4 - 16 * ((v6 - result) >> 4);
    v10 = result;
    v11 = v8;
    do
    {
      *v11 = &unk_284D33D28;
      *(v11 + 8) = *(v10 + 8);
      v12 = *(v10 + 24);
      v13 = *(v10 + 40);
      v14 = *(v10 + 56);
      *(v11 + 72) = *(v10 + 72);
      *(v11 + 56) = v14;
      *(v11 + 40) = v13;
      *(v11 + 24) = v12;
      v15 = *(v10 + 88);
      v16 = *(v10 + 104);
      v17 = *(v10 + 120);
      *(v11 + 17) = *(v10 + 17);
      *(v11 + 120) = v17;
      *(v11 + 104) = v16;
      *(v11 + 88) = v15;
      v10 += 144;
      v11 += 144;
      v9 += 144;
    }

    while (v10 != v6);
    v18 = result;
    v19 = result;
    do
    {
      v20 = *v19;
      v19 += 144;
      (*(v20 + 16))();
      v18 += 144;
    }

    while (v19 != v6);
    result = *a1;
  }

  a2[1] = v8;
  *a1 = v8;
  a1[1] = result;
  a2[1] = result;
  v21 = a1[1];
  a1[1] = a2[2];
  a2[2] = v21;
  v22 = a1[2];
  a1[2] = a2[3];
  a2[3] = v22;
  *a2 = a2[1];
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::SpatialModeler::PhaseSpatialModelerMetadata_ThirdOctave>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1C71C71C71C71C8)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<Phase::SpatialModeler::PhaseSpatialModelerMetadata_ThirdOctave>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 144);
    *(a1 + 16) = i - 144;
    (*(v4 + 16))();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t Phase::Controller::DVM23::GeneratorController::GeneratorController(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = 0;
  *(a1 + 32) = 9;
  *(a1 + 40) = 0;
  v5 = (a1 + 40);
  *a1 = &unk_284D33D58;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  if (a4 >= 1)
  {
    v6 = a4;
    v7 = 0;
    do
    {
      v9 = -1;
      if (v7 >= *(a1 + 56))
      {
        v7 = std::vector<Phase::Controller::DVM23::SamplerChannelStripController>::__emplace_back_slow_path<unsigned long long>(v5, &v9);
      }

      else
      {
        *(v7 + 8) = -1;
        *(v7 + 16) = 0;
        *(v7 + 24) = 0;
        *v7 = &unk_284D372E0;
        *(v7 + 40) = -1;
        *(v7 + 48) = -1;
        *(v7 + 64) = 0u;
        *(v7 + 80) = 0u;
        *(v7 + 96) = 0;
        *(v7 + 104) = 1;
        *(v7 + 112) = 0;
        *(v7 + 120) = 0;
        *(v7 + 152) = 0;
        *(v7 + 32) = 1;
        v7 += 160;
        *(a1 + 48) = v7;
      }

      *(a1 + 48) = v7;
      --v6;
    }

    while (v6);
  }

  *(a1 + 32) = 0;
  return a1;
}

void sub_23A3E6F64(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(unsigned long long,unsigned long long,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::~__value_func[abi:ne200100](v2 + 64);
  std::vector<Phase::Controller::DVM23::SamplerChannelStripController>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void Phase::Controller::DVM23::GeneratorController::~GeneratorController(Phase::Controller::DVM23::GeneratorController *this)
{
  *this = &unk_284D33D58;
  v1 = (this + 40);
  std::__function::__value_func<void ()(unsigned long long,unsigned long long,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::~__value_func[abi:ne200100](this + 64);
  v2 = v1;
  std::vector<Phase::Controller::DVM23::SamplerChannelStripController>::__destroy_vector::operator()[abi:ne200100](&v2);
}

{
  *this = &unk_284D33D58;
  v2 = (this + 40);
  std::__function::__value_func<void ()(unsigned long long,unsigned long long,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::~__value_func[abi:ne200100](this + 64);
  v3 = v2;
  std::vector<Phase::Controller::DVM23::SamplerChannelStripController>::__destroy_vector::operator()[abi:ne200100](&v3);
  MEMORY[0x23EE864A0](this, 0x10A1C40557E0D51);
}

uint64_t Phase::Controller::DVM23::GeneratorController::InitGraph(Phase::Controller::DVM23::GeneratorController *this, Phase::Controller::DVM23::VoiceGraph **a2, unint64_t a3, const char *a4)
{
  *(this + 3) = -1;
  v7 = (this + 24);
  v8 = -858993459 * ((*(this + 6) - *(this + 5)) >> 5);
  result = Phase::Controller::DVM23::DspVoiceManager23::AddGraph(a2, this + 3, a3, v8, v8, a4);
  if (!result)
  {
    v10 = *(this + 5);
    v11 = *(this + 6);
    if (v10 == v11)
    {
      return 0;
    }

    else
    {
      v12 = 0;
      v13 = v10;
      while (1)
      {
        result = (*(*v13 + 16))(v13, a2, *v7, a4);
        if (result)
        {
          break;
        }

        v14 = (*(*v13 + 80))(v13);
        result = Phase::Controller::DVM23::DspVoiceManager23::AddConnection(a2, v14, 0, *v7, v12);
        if (result)
        {
          break;
        }

        v12 = (v12 + 1);
        v13 += 160;
        v10 += 160;
        if (v13 == v11)
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t Phase::Controller::DVM23::GeneratorController::ConfigureGraphWithCallback(void *a1, int64x2_t *a2, uint64_t *a3, void *a4)
{
  v25[4] = *MEMORY[0x277D85DE8];
  v5 = *a3;
  v4 = a3[1];
  v6 = a1[5];
  v7 = a1[6];
  a1[12] = 0;
  if (v7 == v6)
  {
    return 0;
  }

  v8 = 0;
  v9 = 0;
  v10 = (v4 - v5) >> 4;
  v11 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - v6) >> 5);
  while (1)
  {
    v23 = 0;
    v24 = 0;
    v22 = 0;
    if (v11 <= v10)
    {
      std::vector<std::pair<Phase::DspLayer23::KernelType,unsigned long long>>::__vallocate[abi:ne200100](&v22, v10 / v11);
    }

    __p = 0;
    v20 = 0;
    v21 = 0;
    std::vector<std::pair<Phase::DspLayer23::KernelType,unsigned long long>>::__init_with_size[abi:ne200100]<std::pair<Phase::DspLayer23::KernelType,unsigned long long>*,std::pair<Phase::DspLayer23::KernelType,unsigned long long>*>(&__p, 0, 0, 0);
    v12 = Phase::Controller::DVM23::SamplerChannelStripController::ConfigureGraphWithCallback(v6, a2, &__p, *a4 + (v9 << 6));
    if (__p)
    {
      v20 = __p;
      operator delete(__p);
    }

    if (!v12 || v12 == 13)
    {
      v25[0] = &unk_284D33DC0;
      v25[1] = a1;
      v25[3] = v25;
      (*(*v6 + 72))(v6, 0, v25);
      std::__function::__value_func<void ()(unsigned long long,unsigned long long,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::~__value_func[abi:ne200100](v25);
      ++v9;
      v8 += v10 / v11;
    }

    else
    {
      v15 = v12;
    }

    if (v22)
    {
      v23 = v22;
      operator delete(v22);
    }

    if (v12 != 13 && v12)
    {
      break;
    }

    v6 += 160;
    if (v6 == v7)
    {
      return 0;
    }
  }

  return v15;
}

void sub_23A3E7398(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, char a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Controller::DVM23::GeneratorController::SetPlaystate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(a1 + 40) != *(a1 + 48))
  {
    std::__function::__value_func<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::__value_func[abi:ne200100](v6, a4);
    v7 = *(a1 + 8);
    v8 = 0;
    operator new();
  }

  return 0;
}

void sub_23A3E7548(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t Phase::Controller::DVM23::GeneratorController::SetControllerParameter(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  if (v4 == v5)
  {
    return 0;
  }

  v9 = *(a1 + 40);
  while (1)
  {
    result = (*(*v9 + 64))(v9, a2, a3, a4);
    if (result)
    {
      break;
    }

    v9 += 160;
    v4 += 160;
    if (v9 == v5)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::vector<Phase::Controller::DVM23::SamplerChannelStripController>::__emplace_back_slow_path<unsigned long long>(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v3 - *a1;
  v5 = 0xCCCCCCCCCCCCCCCDLL * (v4 >> 5) + 1;
  if (v5 > 0x199999999999999)
  {
    std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - v2) >> 5) > v5)
  {
    v5 = 0x999999999999999ALL * ((a1[2] - v2) >> 5);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - v2) >> 5) >= 0xCCCCCCCCCCCCCCLL)
  {
    v7 = 0x199999999999999;
  }

  else
  {
    v7 = v5;
  }

  v28 = a1;
  if (v7)
  {
    if (v7 <= 0x199999999999999)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v8 = 32 * (v4 >> 5);
  v24 = 0;
  v25 = v8;
  v9 = 0;
  *(v8 + 8) = *a2;
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *v8 = &unk_284D372E0;
  *(v8 + 40) = -1;
  *(v8 + 48) = -1;
  *(v8 + 64) = 0u;
  *(v8 + 80) = 0u;
  *(v8 + 96) = 0;
  *(v8 + 104) = 1;
  *(v8 + 112) = 0;
  *(v8 + 120) = 0;
  *(v8 + 152) = 0;
  *(v8 + 32) = 1;
  v10 = v8 + 160;
  v11 = v8 - v4;
  v26 = v8 + 160;
  v27 = 0;
  if (v2 != v3)
  {
    v12 = 0;
    do
    {
      v13 = v11 + v12 * 8;
      v14 = *&v2[v12 + 1];
      *(v13 + 20) = *(&v2[v12 + 2] + 4);
      *(v13 + 8) = v14;
      *v13 = &unk_284D372E0;
      v15 = *&v2[v12 + 5];
      *(v13 + 56) = *&v2[v12 + 7];
      *(v13 + 40) = v15;
      v16 = *&v2[v12 + 9];
      v17 = *&v2[v12 + 11];
      v18 = *&v2[v12 + 13];
      *(v13 + 120) = v2[v12 + 15];
      *(v13 + 104) = v18;
      *(v13 + 88) = v17;
      *(v13 + 72) = v16;
      std::__function::__value_func<void ()(unsigned long long,unsigned long long,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::__value_func[abi:ne200100](v11 + v12 * 8 + 128, &v2[v12 + 16]);
      v12 += 20;
    }

    while (&v2[v12] != v3);
    v19 = v2;
    v20 = v2;
    do
    {
      v21 = *v20;
      v20 += 20;
      (*v21)(v2);
      v19 += 20;
      v2 = v20;
    }

    while (v20 != v3);
    v2 = *a1;
    v10 = v26;
    v9 = v27;
  }

  *a1 = v11;
  a1[1] = v10;
  v22 = a1[2];
  a1[2] = v9;
  v26 = v2;
  v27 = v22;
  v24 = v2;
  v25 = v2;
  std::__split_buffer<Phase::Controller::DVM23::SamplerChannelStripController>::~__split_buffer(&v24);
  return v10;
}

uint64_t std::__split_buffer<Phase::Controller::DVM23::SamplerChannelStripController>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 160);
    *(a1 + 16) = i - 160;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<Phase::Controller::DVM23::SamplerChannelStripController>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 160;
      v7 = v4 - 160;
      v8 = v4 - 160;
      do
      {
        v9 = *v8;
        v8 -= 160;
        (*v9)(v7);
        v6 -= 160;
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

uint64_t std::__function::__func<Phase::Controller::DVM23::GeneratorController::ConfigureGraphWithCallback(Phase::Controller::DVM23::DspVoiceManager23 *,std::vector<std::pair<Phase::DspLayer23::KernelType,unsigned long long>>,std::vector<Phase::Controller::SamplerState> &)::$_0,std::allocator<Phase::Controller::DVM23::GeneratorController::ConfigureGraphWithCallback(Phase::Controller::DVM23::DspVoiceManager23 *,std::vector<std::pair<Phase::DspLayer23::KernelType,unsigned long long>>,std::vector<Phase::Controller::SamplerState> &)::$_0>,void ()(unsigned long long,unsigned long long,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284D33DC0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<Phase::Controller::DVM23::GeneratorController::ConfigureGraphWithCallback(Phase::Controller::DVM23::DspVoiceManager23 *,std::vector<std::pair<Phase::DspLayer23::KernelType,unsigned long long>>,std::vector<Phase::Controller::SamplerState> &)::$_0,std::allocator<Phase::Controller::DVM23::GeneratorController::ConfigureGraphWithCallback(Phase::Controller::DVM23::DspVoiceManager23 *,std::vector<std::pair<Phase::DspLayer23::KernelType,unsigned long long>>,std::vector<Phase::Controller::SamplerState> &)::$_0>,void ()(unsigned long long,unsigned long long,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::operator()(uint64_t result, uint64_t *a2, uint64_t *a3, int *a4, int *a5)
{
  v5 = *a2;
  v6 = *a3;
  v7 = *a4;
  v8 = *a5;
  v9 = *(result + 8);
  v10 = v9[12] + 1;
  v9[12] = v10;
  if (v10 == 0xCCCCCCCCCCCCCCCDLL * ((v9[6] - v9[5]) >> 5))
  {
    v15 = v5;
    v14 = v6;
    v12 = v8;
    v13 = v7;
    v11 = v9[11];
    if (!v11)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    return (*(*v11 + 48))(v11, &v15, &v14, &v13, &v12);
  }

  return result;
}

void *std::__function::__func<Phase::Controller::DVM23::GeneratorController::SetPlaystate(Phase::Controller::DVM23::DspVoiceManager23 *,Phase::Controller::DVM23::PlaystateCommand,std::function<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)> &&)::$_0,std::allocator<std::function<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)> &&>,void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::~__func(void *a1)
{
  *a1 = &unk_284D33E08;
  std::__function::__value_func<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<Phase::Controller::DVM23::GeneratorController::SetPlaystate(Phase::Controller::DVM23::DspVoiceManager23 *,Phase::Controller::DVM23::PlaystateCommand,std::function<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)> &&)::$_0,std::allocator<std::function<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)> &&>,void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::~__func(void *a1)
{
  *a1 = &unk_284D33E08;
  std::__function::__value_func<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x23EE864A0);
}

__n128 std::__function::__func<Phase::Controller::DVM23::GeneratorController::SetPlaystate(Phase::Controller::DVM23::DspVoiceManager23 *,Phase::Controller::DVM23::PlaystateCommand,std::function<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)> &&)::$_0,std::allocator<std::function<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)> &&>,void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284D33E08;
  std::__function::__value_func<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::__value_func[abi:ne200100](a2 + 8, a1 + 8);
  result = *(a1 + 40);
  *(a2 + 40) = result;
  return result;
}

void std::__function::__func<Phase::Controller::DVM23::GeneratorController::SetPlaystate(Phase::Controller::DVM23::DspVoiceManager23 *,Phase::Controller::DVM23::PlaystateCommand,std::function<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)> &&)::$_0,std::allocator<std::function<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)> &&>,void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void Phase::Geometry::CreateCardioidDirectivity(uint64_t a1, void *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  *&v3 = "DirectivityDataMapSize";
  *(&v3 + 1) = 22;
  if (a2)
  {
    v2 = Phase::UnorderedStringMap<Phase::OptionsValue>::Find(a2, &v3);
    if (v2)
    {
      if (*(v2 + 24) == 1 && *(v2 + 14) <= 0)
      {
        std::terminate();
      }
    }
  }

  operator new();
}

void *std::vector<std::unique_ptr<Phase::Geometry::DataMap,std::function<void ()(void *)>>>::resize(void *result, unint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((result[1] - *result) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    return std::vector<std::unique_ptr<Phase::Geometry::DataMap,std::function<void ()(void *)>>>::__append(result, v4);
  }

  if (!v3)
  {
    return std::vector<std::unique_ptr<Phase::Geometry::DataMap,std::function<void ()(void *)>>>::__base_destruct_at_end[abi:ne200100](result, *result + 40 * a2);
  }

  return result;
}

uint64_t *std::unique_ptr<Phase::Geometry::DataMap,std::function<void ()(void *)>>::operator=[abi:ne200100](uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  std::unique_ptr<Phase::Geometry::DataMap,std::function<void ()(void *)>>::reset[abi:ne200100](a1, v4);
  std::__function::__value_func<void ()(void *)>::operator=[abi:ne200100]((a1 + 1), (a2 + 1));
  return a1;
}

void Phase::Geometry::CreateCardioidDirectivityFromDirectivity(uint64_t a1, _DWORD *a2)
{
  v2 = *MEMORY[0x277D85DE8];
  if (*a2 == 1)
  {
    operator new();
  }

  std::terminate();
}

uint64_t std::vector<std::unique_ptr<Phase::Geometry::DataMap,std::function<void ()(void *)>>>::__append(uint64_t result, unint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (0xCCCCCCCCCCCCCCCDLL * ((v5 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = &v4[5 * a2];
      do
      {
        *v4 = 0;
        v4[4] = 0;
        v4 += 5;
      }

      while (v4 != v10);
      v4 = v10;
    }

    *(result + 8) = v4;
  }

  else
  {
    v6 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *result) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0x666666666666666)
    {
      std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *result) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x333333333333333)
    {
      v9 = 0x666666666666666;
    }

    else
    {
      v9 = v7;
    }

    v20 = result;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<Phase::Geometry::DataMap,std::function<void ()(void *)>>>>(result, v9);
    }

    v11 = 40 * v6;
    v17 = 0;
    v18 = 40 * v6;
    *(&v19 + 1) = 0;
    v12 = 40 * v6;
    do
    {
      *v12 = 0;
      *(v12 + 32) = 0;
      v12 += 40;
    }

    while (v12 != 40 * v6 + 40 * a2);
    *&v19 = v11 + 40 * a2;
    v13 = *(result + 8);
    v14 = (v11 + *result - v13);
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::unique_ptr<Phase::Geometry::DataMap,std::function<void ()(void *)>>>,std::unique_ptr<Phase::Geometry::DataMap,std::function<void ()(void *)>>*>(result, *result, v13, v14);
    v15 = *v3;
    *v3 = v14;
    v16 = *(v3 + 16);
    *(v3 + 8) = v19;
    *&v19 = v15;
    *(&v19 + 1) = v16;
    v17 = v15;
    v18 = v15;
    return std::__split_buffer<std::unique_ptr<Phase::Geometry::DataMap,std::function<void ()(void *)>>>::~__split_buffer(&v17);
  }

  return result;
}

void sub_23A3E83BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::unique_ptr<Phase::Geometry::DataMap,std::function<void ()(void *)>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<Phase::Geometry::DataMap,std::function<void ()(void *)>>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::unique_ptr<Phase::Geometry::DataMap,std::function<void ()(void *)>>>,std::unique_ptr<Phase::Geometry::DataMap,std::function<void ()(void *)>>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 != a3)
  {
    v7 = a2;
    do
    {
      v8 = (v7 + 1);
      v9 = *v7;
      *v7 = 0;
      v7 += 5;
      *a4 = v9;
      std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100]((a4 + 1), v8);
      a4 = v14 + 5;
      v14 += 5;
    }

    while (v7 != a3);
  }

  v12 = 1;
  std::__allocator_destroy[abi:ne200100]<std::allocator<std::unique_ptr<Phase::Geometry::DataMap,std::function<void ()(void *)>>>,std::unique_ptr<Phase::Geometry::DataMap,std::function<void ()(void *)>>*,std::unique_ptr<Phase::Geometry::DataMap,std::function<void ()(void *)>>*>(a1, a2, a3);
  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::unique_ptr<Phase::Geometry::DataMap,std::function<void ()(void *)>>>,std::unique_ptr<Phase::Geometry::DataMap,std::function<void ()(void *)>>*>>::~__exception_guard_exceptions[abi:ne200100](v11);
}

uint64_t std::__allocator_destroy[abi:ne200100]<std::allocator<std::unique_ptr<Phase::Geometry::DataMap,std::function<void ()(void *)>>>,std::unique_ptr<Phase::Geometry::DataMap,std::function<void ()(void *)>>*,std::unique_ptr<Phase::Geometry::DataMap,std::function<void ()(void *)>>*>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      std::unique_ptr<Phase::Geometry::DataMap,std::function<void ()(void *)>>::reset[abi:ne200100](v4, 0);
      result = std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100]((v4 + 1));
      v4 += 5;
    }

    while (v4 != a3);
  }

  return result;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::unique_ptr<Phase::Geometry::DataMap,std::function<void ()(void *)>>>,std::unique_ptr<Phase::Geometry::DataMap,std::function<void ()(void *)>>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::__allocator_destroy[abi:ne200100]<std::allocator<std::unique_ptr<Phase::Geometry::DataMap,std::function<void ()(void *)>>>,std::reverse_iterator<std::unique_ptr<Phase::Geometry::DataMap,std::function<void ()(void *)>>*>,std::reverse_iterator<std::unique_ptr<Phase::Geometry::DataMap,std::function<void ()(void *)>>*>>(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

uint64_t std::__allocator_destroy[abi:ne200100]<std::allocator<std::unique_ptr<Phase::Geometry::DataMap,std::function<void ()(void *)>>>,std::reverse_iterator<std::unique_ptr<Phase::Geometry::DataMap,std::function<void ()(void *)>>*>,std::reverse_iterator<std::unique_ptr<Phase::Geometry::DataMap,std::function<void ()(void *)>>*>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    v6 = a3;
    do
    {
      std::unique_ptr<Phase::Geometry::DataMap,std::function<void ()(void *)>>::reset[abi:ne200100]((v6 - 40), 0);
      result = std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v6 - 32);
      v6 -= 40;
    }

    while (v6 != a5);
  }

  return result;
}

uint64_t std::__split_buffer<std::unique_ptr<Phase::Geometry::DataMap,std::function<void ()(void *)>>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::unique_ptr<Phase::Geometry::DataMap,std::function<void ()(void *)>>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__split_buffer<std::unique_ptr<Phase::Geometry::DataMap,std::function<void ()(void *)>>>::__destruct_at_end[abi:ne200100](uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      *(v4 + 16) = v2 - 40;
      std::unique_ptr<Phase::Geometry::DataMap,std::function<void ()(void *)>>::reset[abi:ne200100]((v2 - 40), 0);
      result = std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v2 - 32);
      v2 = *(v4 + 16);
    }

    while (v2 != a2);
  }

  return result;
}

uint64_t std::vector<std::unique_ptr<Phase::Geometry::DataMap,std::function<void ()(void *)>>>::__base_destruct_at_end[abi:ne200100](uint64_t result, uint64_t a2)
{
  v3 = result;
  for (i = *(result + 8); i != a2; i -= 40)
  {
    std::unique_ptr<Phase::Geometry::DataMap,std::function<void ()(void *)>>::reset[abi:ne200100]((i - 40), 0);
    result = std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](i - 32);
  }

  *(v3 + 8) = a2;
  return result;
}

uint64_t *std::unique_ptr<Phase::Geometry::DataMap,std::function<void ()(void *)>>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    return std::function<void ()(void *)>::operator()((result + 1), v3);
  }

  return result;
}

void std::__shared_ptr_emplace<Phase::Geometry::Directivity>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284D33E50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EE864A0);
}

void std::__shared_ptr_emplace<Phase::Geometry::Directivity>::__on_zero_shared(uint64_t a1)
{
  v2 = (a1 + 64);
  std::vector<std::unique_ptr<Phase::Geometry::DataMap,std::function<void ()(void *)>>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = (a1 + 40);
  std::vector<std::shared_ptr<Phase::Geometry::MpsCpuScene>>::__destroy_vector::operator()[abi:ne200100](&v2);
}

void std::vector<std::unique_ptr<Phase::Geometry::DataMap,std::function<void ()(void *)>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<Phase::Geometry::DataMap,std::function<void ()(void *)>>>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t std::__function::__func<std::unique_ptr<Phase::Geometry::DataMap,std::function<void ()(void *)>> Phase::Geometry::MakeDataMapPtr<Phase::Geometry::CardioidDirectivity>(Phase::Geometry::CardioidDirectivity *)::{lambda(void *)#1},std::allocator<std::unique_ptr<Phase::Geometry::DataMap,std::function<void ()(void *)>> Phase::Geometry::MakeDataMapPtr<Phase::Geometry::CardioidDirectivity>(Phase::Geometry::CardioidDirectivity *)::{lambda(void *)#1}>,void ()(void *)>::operator()(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (*a2)
  {
    JUMPOUT(0x23EE864A0);
  }

  return result;
}

void Phase::Geometry::CreateConeDirectivity(uint64_t a1, void *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  *&v3 = "DirectivityDataMapSize";
  *(&v3 + 1) = 22;
  if (a2)
  {
    v2 = Phase::UnorderedStringMap<Phase::OptionsValue>::Find(a2, &v3);
    if (v2)
    {
      if (*(v2 + 24) == 1 && *(v2 + 14) <= 0)
      {
        std::terminate();
      }
    }
  }

  operator new();
}

void Phase::Geometry::CreateConeDirectivityFromDirectivity(uint64_t a1, _DWORD *a2)
{
  v2 = *MEMORY[0x277D85DE8];
  if (*a2 == 2)
  {
    operator new();
  }

  std::terminate();
}

uint64_t std::__function::__func<std::unique_ptr<Phase::Geometry::DataMap,std::function<void ()(void *)>> Phase::Geometry::MakeDataMapPtr<Phase::Geometry::ConeDirectivity>(Phase::Geometry::ConeDirectivity *)::{lambda(void *)#1},std::allocator<std::unique_ptr<Phase::Geometry::DataMap,std::function<void ()(void *)>> Phase::Geometry::MakeDataMapPtr<Phase::Geometry::ConeDirectivity>(Phase::Geometry::ConeDirectivity *)::{lambda(void *)#1}>,void ()(void *)>::operator()(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (*a2)
  {
    JUMPOUT(0x23EE864A0);
  }

  return result;
}

uint64_t **Phase::Geometry::ContextFactory::Create@<X0>(void *a1@<X1>, void *a2@<X8>)
{
  v5 = *MEMORY[0x277D85DE8];
  *&v4 = "ContextDataMapSize";
  *(&v4 + 1) = 18;
  if (!a1 || (result = Phase::UnorderedStringMap<Phase::OptionsValue>::Find(a1, &v4)) == 0 || *(result + 24) != 1 || *(result + 14) > 0)
  {
    operator new();
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

void std::__shared_ptr_emplace<Phase::Geometry::Context>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284D33F18;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EE864A0);
}

void std::__shared_ptr_emplace<Phase::Geometry::Context>::__on_zero_shared(uint64_t a1)
{
  v2 = (a1 + 56);
  std::vector<std::unique_ptr<Phase::Geometry::DataMap,std::function<void ()(void *)>>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = (a1 + 32);
  std::vector<std::shared_ptr<Phase::Geometry::MpsCpuScene>>::__destroy_vector::operator()[abi:ne200100](&v2);
}

uint64_t std::__function::__func<std::unique_ptr<Phase::Geometry::DataMap,std::function<void ()(void *)>> Phase::Geometry::MakeDataMapPtr<Phase::Geometry::ContextDataMap>(Phase::Geometry::ContextDataMap *)::{lambda(void *)#1},std::allocator<std::unique_ptr<Phase::Geometry::DataMap,std::function<void ()(void *)>> Phase::Geometry::MakeDataMapPtr<Phase::Geometry::ContextDataMap>(Phase::Geometry::ContextDataMap *)::{lambda(void *)#1}>,void ()(void *)>::operator()(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (*a2)
  {
    JUMPOUT(0x23EE864A0);
  }

  return result;
}

uint64_t Phase::Geometry::DirectivityFactory::Create@<X0>(uint64_t result@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = *result;
  v7 = *(*result + 656);
  if (0xAAAAAAAAAAAAAAABLL * ((*(*result + 664) - v7) >> 5) <= a2)
  {
    __assert_rtn("GetTypeDef", "GeoDirectivityTypeRegistry.cpp", 33, "IsValid(inDirectivityType)");
  }

  v8 = v7 + 96 * a2;
  if (*(v8 + 32))
  {

    return std::function<std::shared_ptr<Phase::Geometry::Directivity> ()(Phase::Geometry::System &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::operator()(v8 + 8, v6, a3);
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
  }

  return result;
}

uint64_t std::function<std::shared_ptr<Phase::Geometry::Directivity> ()(Phase::Geometry::System &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v3 + 48))(v3, a2, &v5);
}

uint64_t std::__function::__value_func<std::shared_ptr<Phase::Geometry::Directivity> ()(Phase::Geometry::System &,Phase::Asset &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *Phase::Geometry::DirectivityTypeRegistry::CustomizeType(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - v4) >> 5) <= a2)
  {
    __assert_rtn("CustomizeType", "GeoDirectivityTypeRegistry.cpp", 43, "IsValid(inDirectivityType)");
  }

  return std::function<std::shared_ptr<Phase::Geometry::Directivity> ()(Phase::Geometry::System &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::operator=((v4 + 96 * a2 + 8), a3);
}

{
  v4 = *(a1 + 8);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - v4) >> 5) <= a2)
  {
    __assert_rtn("CustomizeType", "GeoDirectivityTypeRegistry.cpp", 54, "IsValid(inDirectivityType)");
  }

  return std::function<std::shared_ptr<Phase::Geometry::Directivity> ()(Phase::Geometry::System &,Phase::Geometry::Directivity const&,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::operator=((v4 + 96 * a2 + 40), a3);
}

void *std::function<std::shared_ptr<Phase::Geometry::Directivity> ()(Phase::Geometry::System &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::operator=(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<std::shared_ptr<Phase::Geometry::Directivity> ()(Phase::Geometry::System &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<std::shared_ptr<Phase::Geometry::Directivity> ()(Phase::Geometry::System &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<std::shared_ptr<Phase::Geometry::Directivity> ()(Phase::Geometry::System &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::~__value_func[abi:ne200100](v4);
  return a1;
}

void *std::function<std::shared_ptr<Phase::Geometry::Directivity> ()(Phase::Geometry::System &,Phase::Geometry::Directivity const&,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::operator=(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<std::shared_ptr<Phase::Geometry::Directivity> ()(Phase::Geometry::System &,Phase::Geometry::Directivity const&,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<std::shared_ptr<Phase::Geometry::Directivity> ()(Phase::Geometry::System &,Phase::Geometry::Directivity const&,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<std::shared_ptr<Phase::Geometry::Directivity> ()(Phase::Geometry::System &,Phase::Geometry::Directivity const&,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::~__value_func[abi:ne200100](v4);
  return a1;
}

void std::vector<Phase::Geometry::DirectivityTypeDefinition>::resize(void *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<Phase::Geometry::DirectivityTypeDefinition>::__append(a1, v4);
  }

  else if (!v3)
  {
    std::vector<Phase::Geometry::DirectivityTypeDefinition>::__base_destruct_at_end[abi:ne200100](a1, *a1 + 96 * a2);
  }
}

__n128 std::allocator_traits<std::allocator<Phase::Geometry::DirectivityTypeDefinition>>::construct[abi:ne200100]<Phase::Geometry::DirectivityTypeDefinition,Phase::Geometry::DirectivityTypeDefinition,void,0>(uint64_t a1, void *a2, uint64_t a3)
{
  *a2 = *a3;
  std::__function::__value_func<std::shared_ptr<Phase::Geometry::Directivity> ()(Phase::Geometry::System &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::__value_func[abi:ne200100]((a2 + 1), a3 + 8);
  std::__function::__value_func<std::shared_ptr<Phase::Geometry::Directivity> ()(Phase::Geometry::System &,Phase::Geometry::Directivity const&,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::__value_func[abi:ne200100]((a2 + 5), a3 + 40);
  a2[9] = 0;
  a2[10] = 0;
  a2[11] = 0;
  result = *(a3 + 72);
  *(a2 + 9) = result;
  a2[11] = *(a3 + 88);
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
  return result;
}

uint64_t std::__function::__value_func<std::shared_ptr<Phase::Geometry::Directivity> ()(Phase::Geometry::System &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<std::shared_ptr<Phase::Geometry::Directivity> ()(Phase::Geometry::System &,Phase::Geometry::Directivity const&,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::Geometry::DirectivityTypeDefinition>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<Phase::Geometry::DirectivityTypeDefinition>,Phase::Geometry::DirectivityTypeDefinition*>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      std::allocator_traits<std::allocator<Phase::Geometry::DirectivityTypeDefinition>>::construct[abi:ne200100]<Phase::Geometry::DirectivityTypeDefinition,Phase::Geometry::DirectivityTypeDefinition,void,0>(a1, a4, v7);
      v7 += 96;
      a4 = v12 + 12;
      v12 += 12;
    }

    while (v7 != a3);
    v10 = 1;
    do
    {
      std::allocator_traits<std::allocator<Phase::Geometry::DirectivityTypeDefinition>>::destroy[abi:ne200100]<Phase::Geometry::DirectivityTypeDefinition,void,0>(a1, v5);
      v5 += 96;
    }

    while (v5 != a3);
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<Phase::Geometry::DirectivityTypeDefinition>,Phase::Geometry::DirectivityTypeDefinition*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::allocator_traits<std::allocator<Phase::Geometry::DirectivityTypeDefinition>>::destroy[abi:ne200100]<Phase::Geometry::DirectivityTypeDefinition,void,0>(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 72);
  std::vector<Phase::Geometry::LoadDirectivityFunctionTableEntry>::__destroy_vector::operator()[abi:ne200100](&v4);
  std::__function::__value_func<std::shared_ptr<Phase::Geometry::Directivity> ()(Phase::Geometry::System &,Phase::Geometry::Directivity const&,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::~__value_func[abi:ne200100](a2 + 40);
  return std::__function::__value_func<std::shared_ptr<Phase::Geometry::Directivity> ()(Phase::Geometry::System &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::~__value_func[abi:ne200100](a2 + 8);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<Phase::Geometry::DirectivityTypeDefinition>,Phase::Geometry::DirectivityTypeDefinition*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<Phase::Geometry::DirectivityTypeDefinition>,Phase::Geometry::DirectivityTypeDefinition*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t *std::_AllocatorDestroyRangeReverse<std::allocator<Phase::Geometry::DirectivityTypeDefinition>,Phase::Geometry::DirectivityTypeDefinition*>::operator()[abi:ne200100](uint64_t *result)
{
  v2 = result[1];
  v1 = result[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *result;
    do
    {
      v3 -= 96;
      result = std::allocator_traits<std::allocator<Phase::Geometry::DirectivityTypeDefinition>>::destroy[abi:ne200100]<Phase::Geometry::DirectivityTypeDefinition,void,0>(v5, v3);
    }

    while (v3 != v4);
  }

  return result;
}

uint64_t std::__split_buffer<Phase::Geometry::DirectivityTypeDefinition>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<Phase::Geometry::DirectivityTypeDefinition>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__split_buffer<Phase::Geometry::DirectivityTypeDefinition>::__destruct_at_end[abi:ne200100](uint64_t result, uint64_t a2)
{
  v3 = result;
  while (1)
  {
    v4 = *(v3 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(v3 + 32);
    *(v3 + 16) = v4 - 96;
    result = std::allocator_traits<std::allocator<Phase::Geometry::DirectivityTypeDefinition>>::destroy[abi:ne200100]<Phase::Geometry::DirectivityTypeDefinition,void,0>(v5, v4 - 96);
  }

  return result;
}

void std::vector<Phase::Geometry::LoadDirectivityFunctionTableEntry>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 40;
        std::__function::__value_func<std::shared_ptr<Phase::Geometry::Directivity> ()(Phase::Geometry::System &,Phase::Asset &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::~__value_func[abi:ne200100]((v4 - 32));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__function::__value_func<std::shared_ptr<Phase::Geometry::Directivity> ()(Phase::Geometry::System &,Phase::Geometry::Directivity const&,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<std::shared_ptr<Phase::Geometry::Directivity> ()(Phase::Geometry::System &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::vector<Phase::Geometry::DirectivityTypeDefinition>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 5) >= a2)
  {
    if (a2)
    {
      v10 = 96 * ((96 * a2 - 96) / 0x60) + 96;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 5);
    v7 = v6 + a2;
    if (v6 + a2 > 0x2AAAAAAAAAAAAAALL)
    {
      std::vector<Phase::Geometry::DirectivityTypeDefinition>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 5);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x155555555555555)
    {
      v9 = 0x2AAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v19 = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::Geometry::DirectivityTypeDefinition>>(a1, v9);
    }

    v16 = 0;
    v17 = 96 * v6;
    v11 = 96 * ((96 * a2 - 96) / 0x60) + 96;
    bzero((96 * v6), v11);
    v18 = 96 * v6 + v11;
    v12 = *(a1 + 8);
    v13 = (96 * v6 + *a1 - v12);
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<Phase::Geometry::DirectivityTypeDefinition>,Phase::Geometry::DirectivityTypeDefinition*>(a1, *a1, v12, v13);
    v14 = *a1;
    *a1 = v13;
    v15 = *(a1 + 16);
    *(a1 + 8) = v18;
    *&v18 = v14;
    *(&v18 + 1) = v15;
    v16 = v14;
    v17 = v14;
    std::__split_buffer<Phase::Geometry::DirectivityTypeDefinition>::~__split_buffer(&v16);
  }
}

void sub_23A3E9DA4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<Phase::Geometry::DirectivityTypeDefinition>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<Phase::Geometry::DirectivityTypeDefinition>::__base_destruct_at_end[abi:ne200100](uint64_t result, uint64_t a2)
{
  v3 = result;
  for (i = *(result + 8); i != a2; result = std::allocator_traits<std::allocator<Phase::Geometry::DirectivityTypeDefinition>>::destroy[abi:ne200100]<Phase::Geometry::DirectivityTypeDefinition,void,0>(v3, i))
  {
    i -= 96;
  }

  *(v3 + 8) = a2;
  return result;
}

void *std::__function::__value_func<std::shared_ptr<Phase::Geometry::Directivity> ()(Phase::Geometry::System &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_23A3EA064(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *std::__function::__value_func<std::shared_ptr<Phase::Geometry::Directivity> ()(Phase::Geometry::System &,Phase::Geometry::Directivity const&,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_23A3EA2C8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t Phase::Geometry::DistanceModelFactory::Create@<X0>(uint64_t result@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = *result;
  v7 = *(*result + 904);
  if (0xAAAAAAAAAAAAAAABLL * ((*(*result + 912) - v7) >> 5) <= a2)
  {
    __assert_rtn("GetTypeDef", "GeoDistanceModelTypeRegistry.cpp", 33, "IsValid(inDistanceModelType)");
  }

  v8 = v7 + 96 * a2;
  if (*(v8 + 32))
  {

    return std::function<std::shared_ptr<Phase::Geometry::DistanceModel> ()(Phase::Geometry::System &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::operator()(v8 + 8, v6, a3);
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
  }

  return result;
}

uint64_t std::function<std::shared_ptr<Phase::Geometry::DistanceModel> ()(Phase::Geometry::System &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v3 + 48))(v3, a2, &v5);
}

uint64_t std::__function::__value_func<std::shared_ptr<Phase::Geometry::DistanceModel> ()(Phase::Geometry::System &,Phase::Asset &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *Phase::Geometry::DistanceModelTypeRegistry::CustomizeType(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - v4) >> 5) <= a2)
  {
    __assert_rtn("CustomizeType", "GeoDistanceModelTypeRegistry.cpp", 43, "IsValid(inDistanceModelType)");
  }

  return std::function<std::shared_ptr<Phase::Geometry::DistanceModel> ()(Phase::Geometry::System &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::operator=((v4 + 96 * a2 + 8), a3);
}

{
  v4 = *(a1 + 8);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - v4) >> 5) <= a2)
  {
    __assert_rtn("CustomizeType", "GeoDistanceModelTypeRegistry.cpp", 54, "IsValid(inDistanceModelType)");
  }

  return std::function<std::shared_ptr<Phase::Geometry::DistanceModel> ()(Phase::Geometry::System &,Phase::Geometry::DistanceModel const&,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::operator=((v4 + 96 * a2 + 40), a3);
}

void *std::function<std::shared_ptr<Phase::Geometry::DistanceModel> ()(Phase::Geometry::System &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::operator=(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<std::shared_ptr<Phase::Geometry::DistanceModel> ()(Phase::Geometry::System &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<std::shared_ptr<Phase::Geometry::DistanceModel> ()(Phase::Geometry::System &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<std::shared_ptr<Phase::Geometry::DistanceModel> ()(Phase::Geometry::System &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::~__value_func[abi:ne200100](v4);
  return a1;
}

void *std::function<std::shared_ptr<Phase::Geometry::DistanceModel> ()(Phase::Geometry::System &,Phase::Geometry::DistanceModel const&,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::operator=(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<std::shared_ptr<Phase::Geometry::DistanceModel> ()(Phase::Geometry::System &,Phase::Geometry::DistanceModel const&,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<std::shared_ptr<Phase::Geometry::DistanceModel> ()(Phase::Geometry::System &,Phase::Geometry::DistanceModel const&,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<std::shared_ptr<Phase::Geometry::DistanceModel> ()(Phase::Geometry::System &,Phase::Geometry::DistanceModel const&,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::~__value_func[abi:ne200100](v4);
  return a1;
}

void std::vector<Phase::Geometry::DistanceModelTypeDefinition>::resize(void *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<Phase::Geometry::DistanceModelTypeDefinition>::__append(a1, v4);
  }

  else if (!v3)
  {
    std::vector<Phase::Geometry::DistanceModelTypeDefinition>::__base_destruct_at_end[abi:ne200100](a1, *a1 + 96 * a2);
  }
}

__n128 std::allocator_traits<std::allocator<Phase::Geometry::DistanceModelTypeDefinition>>::construct[abi:ne200100]<Phase::Geometry::DistanceModelTypeDefinition,Phase::Geometry::DistanceModelTypeDefinition,void,0>(uint64_t a1, void *a2, uint64_t a3)
{
  *a2 = *a3;
  std::__function::__value_func<std::shared_ptr<Phase::Geometry::DistanceModel> ()(Phase::Geometry::System &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::__value_func[abi:ne200100]((a2 + 1), a3 + 8);
  std::__function::__value_func<std::shared_ptr<Phase::Geometry::DistanceModel> ()(Phase::Geometry::System &,Phase::Geometry::DistanceModel const&,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::__value_func[abi:ne200100]((a2 + 5), a3 + 40);
  a2[9] = 0;
  a2[10] = 0;
  a2[11] = 0;
  result = *(a3 + 72);
  *(a2 + 9) = result;
  a2[11] = *(a3 + 88);
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
  return result;
}

uint64_t std::__function::__value_func<std::shared_ptr<Phase::Geometry::DistanceModel> ()(Phase::Geometry::System &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<std::shared_ptr<Phase::Geometry::DistanceModel> ()(Phase::Geometry::System &,Phase::Geometry::DistanceModel const&,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<Phase::Geometry::DistanceModelTypeDefinition>,Phase::Geometry::DistanceModelTypeDefinition*>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      std::allocator_traits<std::allocator<Phase::Geometry::DistanceModelTypeDefinition>>::construct[abi:ne200100]<Phase::Geometry::DistanceModelTypeDefinition,Phase::Geometry::DistanceModelTypeDefinition,void,0>(a1, a4, v7);
      v7 += 96;
      a4 = v12 + 12;
      v12 += 12;
    }

    while (v7 != a3);
    v10 = 1;
    do
    {
      std::allocator_traits<std::allocator<Phase::Geometry::DistanceModelTypeDefinition>>::destroy[abi:ne200100]<Phase::Geometry::DistanceModelTypeDefinition,void,0>(a1, v5);
      v5 += 96;
    }

    while (v5 != a3);
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<Phase::Geometry::DistanceModelTypeDefinition>,Phase::Geometry::DistanceModelTypeDefinition*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::allocator_traits<std::allocator<Phase::Geometry::DistanceModelTypeDefinition>>::destroy[abi:ne200100]<Phase::Geometry::DistanceModelTypeDefinition,void,0>(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 72);
  std::vector<Phase::Geometry::LoadDistanceModelFunctionTableEntry>::__destroy_vector::operator()[abi:ne200100](&v4);
  std::__function::__value_func<std::shared_ptr<Phase::Geometry::DistanceModel> ()(Phase::Geometry::System &,Phase::Geometry::DistanceModel const&,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::~__value_func[abi:ne200100](a2 + 40);
  return std::__function::__value_func<std::shared_ptr<Phase::Geometry::DistanceModel> ()(Phase::Geometry::System &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::~__value_func[abi:ne200100](a2 + 8);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<Phase::Geometry::DistanceModelTypeDefinition>,Phase::Geometry::DistanceModelTypeDefinition*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<Phase::Geometry::DistanceModelTypeDefinition>,Phase::Geometry::DistanceModelTypeDefinition*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t *std::_AllocatorDestroyRangeReverse<std::allocator<Phase::Geometry::DistanceModelTypeDefinition>,Phase::Geometry::DistanceModelTypeDefinition*>::operator()[abi:ne200100](uint64_t *result)
{
  v2 = result[1];
  v1 = result[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *result;
    do
    {
      v3 -= 96;
      result = std::allocator_traits<std::allocator<Phase::Geometry::DistanceModelTypeDefinition>>::destroy[abi:ne200100]<Phase::Geometry::DistanceModelTypeDefinition,void,0>(v5, v3);
    }

    while (v3 != v4);
  }

  return result;
}

uint64_t std::__split_buffer<Phase::Geometry::DistanceModelTypeDefinition>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<Phase::Geometry::DistanceModelTypeDefinition>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__split_buffer<Phase::Geometry::DistanceModelTypeDefinition>::__destruct_at_end[abi:ne200100](uint64_t result, uint64_t a2)
{
  v3 = result;
  while (1)
  {
    v4 = *(v3 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(v3 + 32);
    *(v3 + 16) = v4 - 96;
    result = std::allocator_traits<std::allocator<Phase::Geometry::DistanceModelTypeDefinition>>::destroy[abi:ne200100]<Phase::Geometry::DistanceModelTypeDefinition,void,0>(v5, v4 - 96);
  }

  return result;
}

void std::vector<Phase::Geometry::LoadDistanceModelFunctionTableEntry>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 40;
        std::__function::__value_func<std::shared_ptr<Phase::Geometry::DistanceModel> ()(Phase::Geometry::System &,Phase::Asset &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::~__value_func[abi:ne200100]((v4 - 32));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__function::__value_func<std::shared_ptr<Phase::Geometry::DistanceModel> ()(Phase::Geometry::System &,Phase::Geometry::DistanceModel const&,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<std::shared_ptr<Phase::Geometry::DistanceModel> ()(Phase::Geometry::System &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::vector<Phase::Geometry::DistanceModelTypeDefinition>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 5) >= a2)
  {
    if (a2)
    {
      v10 = 96 * ((96 * a2 - 96) / 0x60) + 96;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 5);
    v7 = v6 + a2;
    if (v6 + a2 > 0x2AAAAAAAAAAAAAALL)
    {
      std::vector<Phase::Geometry::DistanceModelTypeDefinition>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 5);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x155555555555555)
    {
      v9 = 0x2AAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v19 = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::Geometry::DirectivityTypeDefinition>>(a1, v9);
    }

    v16 = 0;
    v17 = 96 * v6;
    v11 = 96 * ((96 * a2 - 96) / 0x60) + 96;
    bzero((96 * v6), v11);
    v18 = 96 * v6 + v11;
    v12 = *(a1 + 8);
    v13 = (96 * v6 + *a1 - v12);
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<Phase::Geometry::DistanceModelTypeDefinition>,Phase::Geometry::DistanceModelTypeDefinition*>(a1, *a1, v12, v13);
    v14 = *a1;
    *a1 = v13;
    v15 = *(a1 + 16);
    *(a1 + 8) = v18;
    *&v18 = v14;
    *(&v18 + 1) = v15;
    v16 = v14;
    v17 = v14;
    std::__split_buffer<Phase::Geometry::DistanceModelTypeDefinition>::~__split_buffer(&v16);
  }
}

void sub_23A3EAE04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<Phase::Geometry::DistanceModelTypeDefinition>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<Phase::Geometry::DistanceModelTypeDefinition>::__base_destruct_at_end[abi:ne200100](uint64_t result, uint64_t a2)
{
  v3 = result;
  for (i = *(result + 8); i != a2; result = std::allocator_traits<std::allocator<Phase::Geometry::DistanceModelTypeDefinition>>::destroy[abi:ne200100]<Phase::Geometry::DistanceModelTypeDefinition,void,0>(v3, i))
  {
    i -= 96;
  }

  *(v3 + 8) = a2;
  return result;
}

void *std::__function::__value_func<std::shared_ptr<Phase::Geometry::DistanceModel> ()(Phase::Geometry::System &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_23A3EB0C4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *std::__function::__value_func<std::shared_ptr<Phase::Geometry::DistanceModel> ()(Phase::Geometry::System &,Phase::Geometry::DistanceModel const&,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_23A3EB328(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t Phase::Geometry::Entity::RemoveChild(void *a1, uint64_t a2)
{
  if (a1[1] != *(a2 + 88))
  {
    return 0;
  }

  v3 = a1[12];
  v2 = a1[13];
  v4 = v2 - v3;
  if (v2 == v3)
  {
    return 0;
  }

  if ((v4 >> 3) <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 >> 3;
  }

  for (i = a1[12]; *(a2 + 8) != *i; ++i)
  {
    if (!--v5)
    {
      return 0;
    }
  }

  *i = *(v2 - 8);
  a1[13] = v2 - 8;
  *(a2 + 88) = 0;
  result = 1;
  *(a2 + 80) = 1;
  return result;
}

void Phase::Geometry::EntityFactory::Create(int a1@<W1>, void *a2@<X8>)
{
  if (a1 <= 2)
  {
    if (a1 == 1)
    {
      Phase::Geometry::CreateEntity<Phase::Geometry::Entity>();
    }

    if (a1 == 2)
    {
      Phase::Geometry::CreateEntity<Phase::Geometry::Listener>();
    }
  }

  else
  {
    switch(a1)
    {
      case 3:
        Phase::Geometry::CreateEntity<Phase::Geometry::Source>();
      case 4:
        Phase::Geometry::CreateEntity<Phase::Geometry::Occluder>();
      case 5:
        Phase::Geometry::CreateEntity<Phase::Geometry::Environment>();
    }
  }

  *a2 = 0;
  a2[1] = 0;
}

void sub_23A3EB590(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_23A3EB67C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_23A3EB780(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_23A3EB868(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_23A3EB95C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void Phase::Geometry::EntityFactory::Create(int *a1@<X1>, void *a2@<X8>)
{
  v2 = *a1;
  if (*a1 <= 2)
  {
    if (v2 == 1)
    {
      Phase::Geometry::CreateEntityFromEntity<Phase::Geometry::Entity>();
    }

    if (v2 == 2)
    {
      Phase::Geometry::CreateEntityFromEntity<Phase::Geometry::Listener>();
    }
  }

  else
  {
    switch(v2)
    {
      case 3:
        Phase::Geometry::CreateEntityFromEntity<Phase::Geometry::Source>();
      case 4:
        Phase::Geometry::CreateEntityFromEntity<Phase::Geometry::Occluder>();
      case 5:
        Phase::Geometry::CreateEntityFromEntity<Phase::Geometry::Environment>();
    }
  }

  *a2 = 0;
  a2[1] = 0;
}

void sub_23A3EBB30(void *a1)
{
  __cxa_begin_catch(a1);
  std::shared_ptr<Phase::Geometry::Entity> Phase::Geometry::CreateEntityFromEntity<Phase::Geometry::Entity>(Phase::Geometry::System &,Phase::Geometry::Entity const&,Phase::UnorderedStringMap<Phase::OptionsValue> *)::{lambda(void)#1}::operator() const(void)::{lambda(void *)#1}::operator()(v1);
  __cxa_rethrow();
}

void sub_23A3EBCC0(void *a1)
{
  __cxa_begin_catch(a1);
  std::shared_ptr<Phase::Geometry::Entity> Phase::Geometry::CreateEntityFromEntity<Phase::Geometry::Environment>(Phase::Geometry::System &,Phase::Geometry::Entity const&,Phase::UnorderedStringMap<Phase::OptionsValue> *)::{lambda(void)#1}::operator() const(void)::{lambda(void *)#1}::operator()(v1);
  __cxa_rethrow();
}

void sub_23A3EBFA4(void *a1)
{
  __cxa_begin_catch(a1);
  std::shared_ptr<Phase::Geometry::Entity> Phase::Geometry::CreateEntityFromEntity<Phase::Geometry::Occluder>(Phase::Geometry::System &,Phase::Geometry::Entity const&,Phase::UnorderedStringMap<Phase::OptionsValue> *)::{lambda(void)#1}::operator() const(void)::{lambda(void *)#1}::operator()(v1);
  __cxa_rethrow();
}

void sub_23A3EC160(void *a1)
{
  __cxa_begin_catch(a1);
  std::shared_ptr<Phase::Geometry::Entity> Phase::Geometry::CreateEntityFromEntity<Phase::Geometry::Source>(Phase::Geometry::System &,Phase::Geometry::Entity const&,Phase::UnorderedStringMap<Phase::OptionsValue> *)::{lambda(void)#1}::operator() const(void)::{lambda(void *)#1}::operator()(v1);
  __cxa_rethrow();
}

void sub_23A3EC208(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  __cxa_begin_catch(a1);
  std::shared_ptr<Phase::Geometry::Entity> Phase::Geometry::CreateEntity<Phase::Geometry::Entity>(Phase::Geometry::System &,Phase::Handle64,Phase::UnorderedStringMap<Phase::OptionsValue> *)::{lambda(void)#1}::operator() const(void)::{lambda(void *)#1}::operator()(&a13, v13);
  __cxa_rethrow();
}

void std::shared_ptr<Phase::Geometry::Entity> Phase::Geometry::CreateEntity<Phase::Geometry::Entity>(Phase::Geometry::System &,Phase::Handle64,Phase::UnorderedStringMap<Phase::OptionsValue> *)::{lambda(void)#1}::operator() const(void)::{lambda(void *)#1}::operator()(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2[15];
    if (v3)
    {
      a2[16] = v3;
      operator delete(v3);
    }

    v4 = a2[12];
    if (v4)
    {
      a2[13] = v4;
      operator delete(v4);
    }

    JUMPOUT(0x23EE864A0);
  }
}

void std::__shared_ptr_pointer<Phase::Geometry::Entity *,std::shared_ptr<Phase::Geometry::Entity> Phase::Geometry::CreateEntity<Phase::Geometry::Entity>(Phase::Geometry::System &,Phase::Handle64,Phase::UnorderedStringMap<Phase::OptionsValue> *)::{lambda(void)#1}::operator() const(void)::{lambda(void *)#1},std::allocator<Phase::Geometry::Entity>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EE864A0);
}

uint64_t std::__shared_ptr_pointer<Phase::Geometry::Entity *,std::shared_ptr<Phase::Geometry::Entity> Phase::Geometry::CreateEntity<Phase::Geometry::Entity>(Phase::Geometry::System &,Phase::Handle64,Phase::UnorderedStringMap<Phase::OptionsValue> *)::{lambda(void)#1}::operator() const(void)::{lambda(void *)#1},std::allocator<Phase::Geometry::Entity>>::__on_zero_shared(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = v1[15];
    if (v2)
    {
      v1[16] = v2;
      operator delete(v2);
    }

    v3 = v1[12];
    if (v3)
    {
      v1[13] = v3;
      operator delete(v3);
    }

    JUMPOUT(0x23EE864A0);
  }

  return result;
}

void sub_23A3EC3C4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  __cxa_begin_catch(a1);
  std::shared_ptr<Phase::Geometry::Entity> Phase::Geometry::CreateEntity<Phase::Geometry::Environment>(Phase::Geometry::System &,Phase::Handle64,Phase::UnorderedStringMap<Phase::OptionsValue> *)::{lambda(void)#1}::operator() const(void)::{lambda(void *)#1}::operator()(&a13, v13);
  __cxa_rethrow();
}

void std::shared_ptr<Phase::Geometry::Entity> Phase::Geometry::CreateEntity<Phase::Geometry::Environment>(Phase::Geometry::System &,Phase::Handle64,Phase::UnorderedStringMap<Phase::OptionsValue> *)::{lambda(void)#1}::operator() const(void)::{lambda(void *)#1}::operator()(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2[15];
    if (v3)
    {
      a2[16] = v3;
      operator delete(v3);
    }

    v4 = a2[12];
    if (v4)
    {
      a2[13] = v4;
      operator delete(v4);
    }

    JUMPOUT(0x23EE864A0);
  }
}

void std::__shared_ptr_pointer<Phase::Geometry::Entity *,std::shared_ptr<Phase::Geometry::Entity> Phase::Geometry::CreateEntity<Phase::Geometry::Environment>(Phase::Geometry::System &,Phase::Handle64,Phase::UnorderedStringMap<Phase::OptionsValue> *)::{lambda(void)#1}::operator() const(void)::{lambda(void *)#1},std::allocator<Phase::Geometry::Entity>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EE864A0);
}

uint64_t std::__shared_ptr_pointer<Phase::Geometry::Entity *,std::shared_ptr<Phase::Geometry::Entity> Phase::Geometry::CreateEntity<Phase::Geometry::Environment>(Phase::Geometry::System &,Phase::Handle64,Phase::UnorderedStringMap<Phase::OptionsValue> *)::{lambda(void)#1}::operator() const(void)::{lambda(void *)#1},std::allocator<Phase::Geometry::Entity>>::__on_zero_shared(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = v1[15];
    if (v2)
    {
      v1[16] = v2;
      operator delete(v2);
    }

    v3 = v1[12];
    if (v3)
    {
      v1[13] = v3;
      operator delete(v3);
    }

    JUMPOUT(0x23EE864A0);
  }

  return result;
}

void sub_23A3EC580(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  __cxa_begin_catch(a1);
  std::shared_ptr<Phase::Geometry::Entity> Phase::Geometry::CreateEntity<Phase::Geometry::Listener>(Phase::Geometry::System &,Phase::Handle64,Phase::UnorderedStringMap<Phase::OptionsValue> *)::{lambda(void)#1}::operator() const(void)::{lambda(void *)#1}::operator()(&a13, v13);
  __cxa_rethrow();
}

void std::shared_ptr<Phase::Geometry::Entity> Phase::Geometry::CreateEntity<Phase::Geometry::Listener>(Phase::Geometry::System &,Phase::Handle64,Phase::UnorderedStringMap<Phase::OptionsValue> *)::{lambda(void)#1}::operator() const(void)::{lambda(void *)#1}::operator()(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2[15];
    if (v3)
    {
      a2[16] = v3;
      operator delete(v3);
    }

    v4 = a2[12];
    if (v4)
    {
      a2[13] = v4;
      operator delete(v4);
    }

    JUMPOUT(0x23EE864A0);
  }
}

void std::__shared_ptr_pointer<Phase::Geometry::Entity *,std::shared_ptr<Phase::Geometry::Entity> Phase::Geometry::CreateEntity<Phase::Geometry::Listener>(Phase::Geometry::System &,Phase::Handle64,Phase::UnorderedStringMap<Phase::OptionsValue> *)::{lambda(void)#1}::operator() const(void)::{lambda(void *)#1},std::allocator<Phase::Geometry::Entity>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EE864A0);
}

uint64_t std::__shared_ptr_pointer<Phase::Geometry::Entity *,std::shared_ptr<Phase::Geometry::Entity> Phase::Geometry::CreateEntity<Phase::Geometry::Listener>(Phase::Geometry::System &,Phase::Handle64,Phase::UnorderedStringMap<Phase::OptionsValue> *)::{lambda(void)#1}::operator() const(void)::{lambda(void *)#1},std::allocator<Phase::Geometry::Entity>>::__on_zero_shared(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = v1[15];
    if (v2)
    {
      v1[16] = v2;
      operator delete(v2);
    }

    v3 = v1[12];
    if (v3)
    {
      v1[13] = v3;
      operator delete(v3);
    }

    JUMPOUT(0x23EE864A0);
  }

  return result;
}

void sub_23A3EC73C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  __cxa_begin_catch(a1);
  std::shared_ptr<Phase::Geometry::Entity> Phase::Geometry::CreateEntity<Phase::Geometry::Occluder>(Phase::Geometry::System &,Phase::Handle64,Phase::UnorderedStringMap<Phase::OptionsValue> *)::{lambda(void)#1}::operator() const(void)::{lambda(void *)#1}::operator()(&a13, v13);
  __cxa_rethrow();
}

void std::shared_ptr<Phase::Geometry::Entity> Phase::Geometry::CreateEntity<Phase::Geometry::Occluder>(Phase::Geometry::System &,Phase::Handle64,Phase::UnorderedStringMap<Phase::OptionsValue> *)::{lambda(void)#1}::operator() const(void)::{lambda(void *)#1}::operator()(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2[15];
    if (v3)
    {
      a2[16] = v3;
      operator delete(v3);
    }

    v4 = a2[12];
    if (v4)
    {
      a2[13] = v4;
      operator delete(v4);
    }

    JUMPOUT(0x23EE864A0);
  }
}

void std::__shared_ptr_pointer<Phase::Geometry::Entity *,std::shared_ptr<Phase::Geometry::Entity> Phase::Geometry::CreateEntity<Phase::Geometry::Occluder>(Phase::Geometry::System &,Phase::Handle64,Phase::UnorderedStringMap<Phase::OptionsValue> *)::{lambda(void)#1}::operator() const(void)::{lambda(void *)#1},std::allocator<Phase::Geometry::Entity>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EE864A0);
}

uint64_t std::__shared_ptr_pointer<Phase::Geometry::Entity *,std::shared_ptr<Phase::Geometry::Entity> Phase::Geometry::CreateEntity<Phase::Geometry::Occluder>(Phase::Geometry::System &,Phase::Handle64,Phase::UnorderedStringMap<Phase::OptionsValue> *)::{lambda(void)#1}::operator() const(void)::{lambda(void *)#1},std::allocator<Phase::Geometry::Entity>>::__on_zero_shared(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = v1[15];
    if (v2)
    {
      v1[16] = v2;
      operator delete(v2);
    }

    v3 = v1[12];
    if (v3)
    {
      v1[13] = v3;
      operator delete(v3);
    }

    JUMPOUT(0x23EE864A0);
  }

  return result;
}

void sub_23A3EC8F8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  __cxa_begin_catch(a1);
  std::shared_ptr<Phase::Geometry::Entity> Phase::Geometry::CreateEntity<Phase::Geometry::Source>(Phase::Geometry::System &,Phase::Handle64,Phase::UnorderedStringMap<Phase::OptionsValue> *)::{lambda(void)#1}::operator() const(void)::{lambda(void *)#1}::operator()(&a13, v13);
  __cxa_rethrow();
}

void std::shared_ptr<Phase::Geometry::Entity> Phase::Geometry::CreateEntity<Phase::Geometry::Source>(Phase::Geometry::System &,Phase::Handle64,Phase::UnorderedStringMap<Phase::OptionsValue> *)::{lambda(void)#1}::operator() const(void)::{lambda(void *)#1}::operator()(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2[15];
    if (v3)
    {
      a2[16] = v3;
      operator delete(v3);
    }

    v4 = a2[12];
    if (v4)
    {
      a2[13] = v4;
      operator delete(v4);
    }

    JUMPOUT(0x23EE864A0);
  }
}

void std::__shared_ptr_pointer<Phase::Geometry::Entity *,std::shared_ptr<Phase::Geometry::Entity> Phase::Geometry::CreateEntity<Phase::Geometry::Source>(Phase::Geometry::System &,Phase::Handle64,Phase::UnorderedStringMap<Phase::OptionsValue> *)::{lambda(void)#1}::operator() const(void)::{lambda(void *)#1},std::allocator<Phase::Geometry::Entity>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EE864A0);
}

uint64_t std::__shared_ptr_pointer<Phase::Geometry::Entity *,std::shared_ptr<Phase::Geometry::Entity> Phase::Geometry::CreateEntity<Phase::Geometry::Source>(Phase::Geometry::System &,Phase::Handle64,Phase::UnorderedStringMap<Phase::OptionsValue> *)::{lambda(void)#1}::operator() const(void)::{lambda(void *)#1},std::allocator<Phase::Geometry::Entity>>::__on_zero_shared(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = v1[15];
    if (v2)
    {
      v1[16] = v2;
      operator delete(v2);
    }

    v3 = v1[12];
    if (v3)
    {
      v1[13] = v3;
      operator delete(v3);
    }

    JUMPOUT(0x23EE864A0);
  }

  return result;
}

void *std::shared_ptr<Phase::Geometry::Entity> Phase::Geometry::CreateEntityFromEntity<Phase::Geometry::Entity>(Phase::Geometry::System &,Phase::Geometry::Entity const&,Phase::UnorderedStringMap<Phase::OptionsValue> *)::{lambda(void)#1}::operator() const(void)::{lambda(void *)#1}::operator()(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = result[15];
    if (v2)
    {
      v1[16] = v2;
      operator delete(v2);
    }

    v3 = v1[12];
    if (v3)
    {
      v1[13] = v3;
      operator delete(v3);
    }

    JUMPOUT(0x23EE864A0);
  }

  return result;
}

void std::__shared_ptr_pointer<Phase::Geometry::Entity *,std::shared_ptr<Phase::Geometry::Entity> Phase::Geometry::CreateEntityFromEntity<Phase::Geometry::Entity>(Phase::Geometry::System &,Phase::Geometry::Entity const&,Phase::UnorderedStringMap<Phase::OptionsValue> *)::{lambda(void)#1}::operator() const(void)::{lambda(void *)#1},std::allocator<Phase::Geometry::Entity>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EE864A0);
}

uint64_t std::__shared_ptr_pointer<Phase::Geometry::Entity *,std::shared_ptr<Phase::Geometry::Entity> Phase::Geometry::CreateEntityFromEntity<Phase::Geometry::Entity>(Phase::Geometry::System &,Phase::Geometry::Entity const&,Phase::UnorderedStringMap<Phase::OptionsValue> *)::{lambda(void)#1}::operator() const(void)::{lambda(void *)#1},std::allocator<Phase::Geometry::Entity>>::__on_zero_shared(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = v1[15];
    if (v2)
    {
      v1[16] = v2;
      operator delete(v2);
    }

    v3 = v1[12];
    if (v3)
    {
      v1[13] = v3;
      operator delete(v3);
    }

    JUMPOUT(0x23EE864A0);
  }

  return result;
}

void *std::vector<Phase::Handle64>::__assign_with_size[abi:ne200100]<Phase::Handle64*,Phase::Handle64*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<long long>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void *std::shared_ptr<Phase::Geometry::Entity> Phase::Geometry::CreateEntityFromEntity<Phase::Geometry::Environment>(Phase::Geometry::System &,Phase::Geometry::Entity const&,Phase::UnorderedStringMap<Phase::OptionsValue> *)::{lambda(void)#1}::operator() const(void)::{lambda(void *)#1}::operator()(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = result[15];
    if (v2)
    {
      v1[16] = v2;
      operator delete(v2);
    }

    v3 = v1[12];
    if (v3)
    {
      v1[13] = v3;
      operator delete(v3);
    }

    JUMPOUT(0x23EE864A0);
  }

  return result;
}

void std::__shared_ptr_pointer<Phase::Geometry::Entity *,std::shared_ptr<Phase::Geometry::Entity> Phase::Geometry::CreateEntityFromEntity<Phase::Geometry::Environment>(Phase::Geometry::System &,Phase::Geometry::Entity const&,Phase::UnorderedStringMap<Phase::OptionsValue> *)::{lambda(void)#1}::operator() const(void)::{lambda(void *)#1},std::allocator<Phase::Geometry::Entity>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EE864A0);
}

uint64_t std::__shared_ptr_pointer<Phase::Geometry::Entity *,std::shared_ptr<Phase::Geometry::Entity> Phase::Geometry::CreateEntityFromEntity<Phase::Geometry::Environment>(Phase::Geometry::System &,Phase::Geometry::Entity const&,Phase::UnorderedStringMap<Phase::OptionsValue> *)::{lambda(void)#1}::operator() const(void)::{lambda(void *)#1},std::allocator<Phase::Geometry::Entity>>::__on_zero_shared(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = v1[15];
    if (v2)
    {
      v1[16] = v2;
      operator delete(v2);
    }

    v3 = v1[12];
    if (v3)
    {
      v1[13] = v3;
      operator delete(v3);
    }

    JUMPOUT(0x23EE864A0);
  }

  return result;
}

uint64_t Phase::Geometry::Listener::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);
  if (a1 != a2)
  {
    std::vector<Phase::Handle64>::__assign_with_size[abi:ne200100]<Phase::Handle64*,Phase::Handle64*>((a1 + 96), *(a2 + 96), *(a2 + 104), (*(a2 + 104) - *(a2 + 96)) >> 3);
    std::vector<Phase::Handle64>::__assign_with_size[abi:ne200100]<Phase::Handle64*,Phase::Handle64*>((a1 + 120), *(a2 + 120), *(a2 + 128), (*(a2 + 128) - *(a2 + 120)) >> 3);
  }

  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 164) = *(a2 + 164);
  *(a1 + 168) = *(a2 + 168);
  v4 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 176) = v4;
  return a1;
}

void *std::shared_ptr<Phase::Geometry::Entity> Phase::Geometry::CreateEntityFromEntity<Phase::Geometry::Listener>(Phase::Geometry::System &,Phase::Geometry::Entity const&,Phase::UnorderedStringMap<Phase::OptionsValue> *)::{lambda(void)#1}::operator() const(void)::{lambda(void *)#1}::operator()(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = result[15];
    if (v2)
    {
      v1[16] = v2;
      operator delete(v2);
    }

    v3 = v1[12];
    if (v3)
    {
      v1[13] = v3;
      operator delete(v3);
    }

    JUMPOUT(0x23EE864A0);
  }

  return result;
}

void std::__shared_ptr_pointer<Phase::Geometry::Entity *,std::shared_ptr<Phase::Geometry::Entity> Phase::Geometry::CreateEntityFromEntity<Phase::Geometry::Listener>(Phase::Geometry::System &,Phase::Geometry::Entity const&,Phase::UnorderedStringMap<Phase::OptionsValue> *)::{lambda(void)#1}::operator() const(void)::{lambda(void *)#1},std::allocator<Phase::Geometry::Entity>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EE864A0);
}

uint64_t std::__shared_ptr_pointer<Phase::Geometry::Entity *,std::shared_ptr<Phase::Geometry::Entity> Phase::Geometry::CreateEntityFromEntity<Phase::Geometry::Listener>(Phase::Geometry::System &,Phase::Geometry::Entity const&,Phase::UnorderedStringMap<Phase::OptionsValue> *)::{lambda(void)#1}::operator() const(void)::{lambda(void *)#1},std::allocator<Phase::Geometry::Entity>>::__on_zero_shared(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = v1[15];
    if (v2)
    {
      v1[16] = v2;
      operator delete(v2);
    }

    v3 = v1[12];
    if (v3)
    {
      v1[13] = v3;
      operator delete(v3);
    }

    JUMPOUT(0x23EE864A0);
  }

  return result;
}

void *std::shared_ptr<Phase::Geometry::Entity> Phase::Geometry::CreateEntityFromEntity<Phase::Geometry::Occluder>(Phase::Geometry::System &,Phase::Geometry::Entity const&,Phase::UnorderedStringMap<Phase::OptionsValue> *)::{lambda(void)#1}::operator() const(void)::{lambda(void *)#1}::operator()(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = result[15];
    if (v2)
    {
      v1[16] = v2;
      operator delete(v2);
    }

    v3 = v1[12];
    if (v3)
    {
      v1[13] = v3;
      operator delete(v3);
    }

    JUMPOUT(0x23EE864A0);
  }

  return result;
}

void std::__shared_ptr_pointer<Phase::Geometry::Entity *,std::shared_ptr<Phase::Geometry::Entity> Phase::Geometry::CreateEntityFromEntity<Phase::Geometry::Occluder>(Phase::Geometry::System &,Phase::Geometry::Entity const&,Phase::UnorderedStringMap<Phase::OptionsValue> *)::{lambda(void)#1}::operator() const(void)::{lambda(void *)#1},std::allocator<Phase::Geometry::Entity>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EE864A0);
}

uint64_t std::__shared_ptr_pointer<Phase::Geometry::Entity *,std::shared_ptr<Phase::Geometry::Entity> Phase::Geometry::CreateEntityFromEntity<Phase::Geometry::Occluder>(Phase::Geometry::System &,Phase::Geometry::Entity const&,Phase::UnorderedStringMap<Phase::OptionsValue> *)::{lambda(void)#1}::operator() const(void)::{lambda(void *)#1},std::allocator<Phase::Geometry::Entity>>::__on_zero_shared(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = v1[15];
    if (v2)
    {
      v1[16] = v2;
      operator delete(v2);
    }

    v3 = v1[12];
    if (v3)
    {
      v1[13] = v3;
      operator delete(v3);
    }

    JUMPOUT(0x23EE864A0);
  }

  return result;
}

void *std::shared_ptr<Phase::Geometry::Entity> Phase::Geometry::CreateEntityFromEntity<Phase::Geometry::Source>(Phase::Geometry::System &,Phase::Geometry::Entity const&,Phase::UnorderedStringMap<Phase::OptionsValue> *)::{lambda(void)#1}::operator() const(void)::{lambda(void *)#1}::operator()(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = result[15];
    if (v2)
    {
      v1[16] = v2;
      operator delete(v2);
    }

    v3 = v1[12];
    if (v3)
    {
      v1[13] = v3;
      operator delete(v3);
    }

    JUMPOUT(0x23EE864A0);
  }

  return result;
}

void std::__shared_ptr_pointer<Phase::Geometry::Entity *,std::shared_ptr<Phase::Geometry::Entity> Phase::Geometry::CreateEntityFromEntity<Phase::Geometry::Source>(Phase::Geometry::System &,Phase::Geometry::Entity const&,Phase::UnorderedStringMap<Phase::OptionsValue> *)::{lambda(void)#1}::operator() const(void)::{lambda(void *)#1},std::allocator<Phase::Geometry::Entity>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EE864A0);
}

uint64_t std::__shared_ptr_pointer<Phase::Geometry::Entity *,std::shared_ptr<Phase::Geometry::Entity> Phase::Geometry::CreateEntityFromEntity<Phase::Geometry::Source>(Phase::Geometry::System &,Phase::Geometry::Entity const&,Phase::UnorderedStringMap<Phase::OptionsValue> *)::{lambda(void)#1}::operator() const(void)::{lambda(void *)#1},std::allocator<Phase::Geometry::Entity>>::__on_zero_shared(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = v1[15];
    if (v2)
    {
      v1[16] = v2;
      operator delete(v2);
    }

    v3 = v1[12];
    if (v3)
    {
      v1[13] = v3;
      operator delete(v3);
    }

    JUMPOUT(0x23EE864A0);
  }

  return result;
}

void sub_23A3ED3F4(_Unwind_Exception *a1)
{
  std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v3);
  MEMORY[0x23EE864A0](v2, 0xA0C40987D6AD5);
  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void Phase::Geometry::CreateEnvelopeDistanceModelFromDistanceModel(uint64_t a1, _DWORD *a2)
{
  v2 = *MEMORY[0x277D85DE8];
  if (*a2 == 2)
  {
    operator new();
  }

  __assert_rtn("CreateEnvelopeDistanceModelFromDistanceModel", "GeoEnvelopeDistanceModel.mm", 43, "inDistanceModel.mType == DefaultDistanceModelType::Envelope");
}

void sub_23A3ED674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<Phase::Envelope<float>::SegmentInternal,std::allocator<Phase::Envelope<float>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](va);
  MEMORY[0x23EE864A0](v4, 0xA0C40987D6AD5);
  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<Phase::Geometry::DistanceModel>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284D341C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EE864A0);
}

void std::__shared_ptr_emplace<Phase::Geometry::DistanceModel>::__on_zero_shared(uint64_t a1)
{
  v2 = (a1 + 64);
  std::vector<std::unique_ptr<Phase::Geometry::DataMap,std::function<void ()(void *)>>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = (a1 + 40);
  std::vector<std::shared_ptr<Phase::Geometry::MpsCpuScene>>::__destroy_vector::operator()[abi:ne200100](&v2);
}

uint64_t std::__function::__func<std::unique_ptr<Phase::Geometry::DataMap,std::function<void ()(void *)>> Phase::Geometry::MakeDataMapPtr<Phase::Geometry::EnvelopeDistanceModel>(Phase::Geometry::EnvelopeDistanceModel *)::{lambda(void *)#1},std::allocator<std::unique_ptr<Phase::Geometry::DataMap,std::function<void ()(void *)>> Phase::Geometry::MakeDataMapPtr<Phase::Geometry::EnvelopeDistanceModel>(Phase::Geometry::EnvelopeDistanceModel *)::{lambda(void *)#1}>,void ()(void *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v4 = (v2 + 16);
    std::vector<Phase::Envelope<float>::SegmentInternal,std::allocator<Phase::Envelope<float>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](&v4);
    return MEMORY[0x23EE864A0](v2, 0xA0C40987D6AD5);
  }

  return result;
}

uint64_t **Phase::Geometry::EnvironmentalMetadataStreamFactory::Create@<X0>(void *a1@<X1>, void *a2@<X8>)
{
  v5 = *MEMORY[0x277D85DE8];
  *&v4 = "EnvironmentalMetadataStreamDataMapSize";
  *(&v4 + 1) = 38;
  if (!a1 || (result = Phase::UnorderedStringMap<Phase::OptionsValue>::Find(a1, &v4)) == 0 || *(result + 24) != 1 || *(result + 14) > 0)
  {
    operator new();
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

void std::__shared_ptr_emplace<Phase::Geometry::EnvironmentalMetadataStream>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284D34248;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EE864A0);
}

void std::__shared_ptr_emplace<Phase::Geometry::EnvironmentalMetadataStream>::__on_zero_shared(uint64_t a1)
{
  v2 = (a1 + 56);
  std::vector<std::unique_ptr<Phase::Geometry::DataMap,std::function<void ()(void *)>>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = (a1 + 32);
  std::vector<std::shared_ptr<Phase::Geometry::MpsCpuScene>>::__destroy_vector::operator()[abi:ne200100](&v2);
}

void std::__function::__func<std::unique_ptr<Phase::Geometry::DataMap,std::function<void ()(void *)>> Phase::Geometry::MakeDataMapPtr<Phase::Geometry::EnvironmentalMetadataStreamDataMap>(Phase::Geometry::EnvironmentalMetadataStreamDataMap *)::{lambda(void *)#1},std::allocator<std::unique_ptr<Phase::Geometry::DataMap,std::function<void ()(void *)>> Phase::Geometry::MakeDataMapPtr<Phase::Geometry::EnvironmentalMetadataStreamDataMap>(Phase::Geometry::EnvironmentalMetadataStreamDataMap *)::{lambda(void *)#1}>,void ()(void *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      free(v3);
      *(v2 + 16) = 0;
    }

    JUMPOUT(0x23EE864A0);
  }
}

void Phase::Geometry::CreateGeometricSpreadingDistanceModelFromDistanceModel(uint64_t a1, _DWORD *a2)
{
  v2 = *MEMORY[0x277D85DE8];
  if (*a2 == 1)
  {
    operator new();
  }

  __assert_rtn("CreateGeometricSpreadingDistanceModelFromDistanceModel", "GeoGeometricSpreadingDistanceModel.mm", 43, "inDistanceModel.mType == DefaultDistanceModelType::GeometricSpreading");
}

uint64_t std::__function::__func<std::unique_ptr<Phase::Geometry::DataMap,std::function<void ()(void *)>> Phase::Geometry::MakeDataMapPtr<Phase::Geometry::GeometricSpreadingDistanceModel>(Phase::Geometry::GeometricSpreadingDistanceModel *)::{lambda(void *)#1},std::allocator<std::unique_ptr<Phase::Geometry::DataMap,std::function<void ()(void *)>> Phase::Geometry::MakeDataMapPtr<Phase::Geometry::GeometricSpreadingDistanceModel>(Phase::Geometry::GeometricSpreadingDistanceModel *)::{lambda(void *)#1}>,void ()(void *)>::operator()(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (*a2)
  {
    JUMPOUT(0x23EE864A0);
  }

  return result;
}

uint64_t Phase::Geometry::MaterialFactory::Create@<X0>(uint64_t result@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = *result;
  v7 = *(*result + 1400);
  if (0xAAAAAAAAAAAAAAABLL * ((*(*result + 1408) - v7) >> 5) <= a2)
  {
    __assert_rtn("GetTypeDef", "GeoMaterialTypeRegistry.cpp", 33, "IsValid(inMaterialType)");
  }

  v8 = v7 + 96 * a2;
  if (*(v8 + 32))
  {

    return std::function<std::shared_ptr<Phase::Geometry::Material> ()(Phase::Geometry::System &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::operator()(v8 + 8, v6, a3);
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
  }

  return result;
}

uint64_t std::function<std::shared_ptr<Phase::Geometry::Material> ()(Phase::Geometry::System &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v3 + 48))(v3, a2, &v5);
}

uint64_t Phase::Geometry::MaterialFactory::Create@<X0>(uint64_t result@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = *result;
  v8 = *a2;
  v9 = *(*result + 1400);
  if (0xAAAAAAAAAAAAAAABLL * ((*(*result + 1408) - v9) >> 5) <= v8)
  {
    __assert_rtn("GetTypeDef", "GeoMaterialTypeRegistry.cpp", 33, "IsValid(inMaterialType)");
  }

  v10 = v9 + 96 * v8;
  if (*(v10 + 64))
  {

    return std::function<std::shared_ptr<Phase::Geometry::Material> ()(Phase::Geometry::System &,Phase::Geometry::Material const&,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::operator()(v10 + 40, v7, a2, a3);
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
  }

  return result;
}

uint64_t std::function<std::shared_ptr<Phase::Geometry::Material> ()(Phase::Geometry::System &,Phase::Geometry::Material const&,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a4;
  v4 = *(a1 + 24);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v4 + 48))(v4, a2, a3, &v6);
}

uint64_t std::__function::__value_func<std::shared_ptr<Phase::Geometry::Material> ()(Phase::Geometry::System &,Phase::Asset &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *Phase::Geometry::MaterialTypeRegistry::CustomizeType(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - v4) >> 5) <= a2)
  {
    __assert_rtn("CustomizeType", "GeoMaterialTypeRegistry.cpp", 43, "IsValid(inMaterialType)");
  }

  return std::function<std::shared_ptr<Phase::Geometry::Material> ()(Phase::Geometry::System &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::operator=((v4 + 96 * a2 + 8), a3);
}

{
  v4 = *(a1 + 8);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - v4) >> 5) <= a2)
  {
    __assert_rtn("CustomizeType", "GeoMaterialTypeRegistry.cpp", 54, "IsValid(inMaterialType)");
  }

  return std::function<std::shared_ptr<Phase::Geometry::Material> ()(Phase::Geometry::System &,Phase::Geometry::Material const&,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::operator=((v4 + 96 * a2 + 40), a3);
}

void *std::function<std::shared_ptr<Phase::Geometry::Material> ()(Phase::Geometry::System &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::operator=(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<std::shared_ptr<Phase::Geometry::Material> ()(Phase::Geometry::System &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<std::shared_ptr<Phase::Geometry::Material> ()(Phase::Geometry::System &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<std::shared_ptr<Phase::Geometry::Material> ()(Phase::Geometry::System &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::~__value_func[abi:ne200100](v4);
  return a1;
}

void *std::function<std::shared_ptr<Phase::Geometry::Material> ()(Phase::Geometry::System &,Phase::Geometry::Material const&,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::operator=(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<std::shared_ptr<Phase::Geometry::Material> ()(Phase::Geometry::System &,Phase::Geometry::Material const&,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<std::shared_ptr<Phase::Geometry::Material> ()(Phase::Geometry::System &,Phase::Geometry::Material const&,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<std::shared_ptr<Phase::Geometry::Material> ()(Phase::Geometry::System &,Phase::Geometry::Material const&,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::~__value_func[abi:ne200100](v4);
  return a1;
}

void std::vector<Phase::Geometry::MaterialTypeDefinition>::resize(void *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<Phase::Geometry::MaterialTypeDefinition>::__append(a1, v4);
  }

  else if (!v3)
  {
    std::vector<Phase::Geometry::MaterialTypeDefinition>::__base_destruct_at_end[abi:ne200100](a1, *a1 + 96 * a2);
  }
}

__n128 std::allocator_traits<std::allocator<Phase::Geometry::MaterialTypeDefinition>>::construct[abi:ne200100]<Phase::Geometry::MaterialTypeDefinition,Phase::Geometry::MaterialTypeDefinition,void,0>(uint64_t a1, void *a2, uint64_t a3)
{
  *a2 = *a3;
  std::__function::__value_func<std::shared_ptr<Phase::Geometry::Material> ()(Phase::Geometry::System &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::__value_func[abi:ne200100]((a2 + 1), a3 + 8);
  std::__function::__value_func<std::shared_ptr<Phase::Geometry::Material> ()(Phase::Geometry::System &,Phase::Geometry::Material const&,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::__value_func[abi:ne200100]((a2 + 5), a3 + 40);
  a2[9] = 0;
  a2[10] = 0;
  a2[11] = 0;
  result = *(a3 + 72);
  *(a2 + 9) = result;
  a2[11] = *(a3 + 88);
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
  return result;
}

uint64_t std::__function::__value_func<std::shared_ptr<Phase::Geometry::Material> ()(Phase::Geometry::System &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<std::shared_ptr<Phase::Geometry::Material> ()(Phase::Geometry::System &,Phase::Geometry::Material const&,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<Phase::Geometry::MaterialTypeDefinition>,Phase::Geometry::MaterialTypeDefinition*>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      std::allocator_traits<std::allocator<Phase::Geometry::MaterialTypeDefinition>>::construct[abi:ne200100]<Phase::Geometry::MaterialTypeDefinition,Phase::Geometry::MaterialTypeDefinition,void,0>(a1, a4, v7);
      v7 += 96;
      a4 = v12 + 12;
      v12 += 12;
    }

    while (v7 != a3);
    v10 = 1;
    do
    {
      std::allocator_traits<std::allocator<Phase::Geometry::MaterialTypeDefinition>>::destroy[abi:ne200100]<Phase::Geometry::MaterialTypeDefinition,void,0>(a1, v5);
      v5 += 96;
    }

    while (v5 != a3);
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<Phase::Geometry::MaterialTypeDefinition>,Phase::Geometry::MaterialTypeDefinition*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::allocator_traits<std::allocator<Phase::Geometry::MaterialTypeDefinition>>::destroy[abi:ne200100]<Phase::Geometry::MaterialTypeDefinition,void,0>(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 72);
  std::vector<Phase::Geometry::LoadMaterialFunctionTableEntry>::__destroy_vector::operator()[abi:ne200100](&v4);
  std::__function::__value_func<std::shared_ptr<Phase::Geometry::Material> ()(Phase::Geometry::System &,Phase::Geometry::Material const&,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::~__value_func[abi:ne200100](a2 + 40);
  return std::__function::__value_func<std::shared_ptr<Phase::Geometry::Material> ()(Phase::Geometry::System &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::~__value_func[abi:ne200100](a2 + 8);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<Phase::Geometry::MaterialTypeDefinition>,Phase::Geometry::MaterialTypeDefinition*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<Phase::Geometry::MaterialTypeDefinition>,Phase::Geometry::MaterialTypeDefinition*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t *std::_AllocatorDestroyRangeReverse<std::allocator<Phase::Geometry::MaterialTypeDefinition>,Phase::Geometry::MaterialTypeDefinition*>::operator()[abi:ne200100](uint64_t *result)
{
  v2 = result[1];
  v1 = result[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *result;
    do
    {
      v3 -= 96;
      result = std::allocator_traits<std::allocator<Phase::Geometry::MaterialTypeDefinition>>::destroy[abi:ne200100]<Phase::Geometry::MaterialTypeDefinition,void,0>(v5, v3);
    }

    while (v3 != v4);
  }

  return result;
}

uint64_t std::__split_buffer<Phase::Geometry::MaterialTypeDefinition>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<Phase::Geometry::MaterialTypeDefinition>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__split_buffer<Phase::Geometry::MaterialTypeDefinition>::__destruct_at_end[abi:ne200100](uint64_t result, uint64_t a2)
{
  v3 = result;
  while (1)
  {
    v4 = *(v3 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(v3 + 32);
    *(v3 + 16) = v4 - 96;
    result = std::allocator_traits<std::allocator<Phase::Geometry::MaterialTypeDefinition>>::destroy[abi:ne200100]<Phase::Geometry::MaterialTypeDefinition,void,0>(v5, v4 - 96);
  }

  return result;
}

void std::vector<Phase::Geometry::LoadMaterialFunctionTableEntry>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 40;
        std::__function::__value_func<std::shared_ptr<Phase::Geometry::Material> ()(Phase::Geometry::System &,Phase::Asset &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::~__value_func[abi:ne200100]((v4 - 32));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__function::__value_func<std::shared_ptr<Phase::Geometry::Material> ()(Phase::Geometry::System &,Phase::Geometry::Material const&,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<std::shared_ptr<Phase::Geometry::Material> ()(Phase::Geometry::System &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::vector<Phase::Geometry::MaterialTypeDefinition>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 5) >= a2)
  {
    if (a2)
    {
      v10 = 96 * ((96 * a2 - 96) / 0x60) + 96;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 5);
    v7 = v6 + a2;
    if (v6 + a2 > 0x2AAAAAAAAAAAAAALL)
    {
      std::vector<Phase::Geometry::MaterialTypeDefinition>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 5);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x155555555555555)
    {
      v9 = 0x2AAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v19 = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::Geometry::DirectivityTypeDefinition>>(a1, v9);
    }

    v16 = 0;
    v17 = 96 * v6;
    v11 = 96 * ((96 * a2 - 96) / 0x60) + 96;
    bzero((96 * v6), v11);
    v18 = 96 * v6 + v11;
    v12 = *(a1 + 8);
    v13 = (96 * v6 + *a1 - v12);
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<Phase::Geometry::MaterialTypeDefinition>,Phase::Geometry::MaterialTypeDefinition*>(a1, *a1, v12, v13);
    v14 = *a1;
    *a1 = v13;
    v15 = *(a1 + 16);
    *(a1 + 8) = v18;
    *&v18 = v14;
    *(&v18 + 1) = v15;
    v16 = v14;
    v17 = v14;
    std::__split_buffer<Phase::Geometry::MaterialTypeDefinition>::~__split_buffer(&v16);
  }
}

void sub_23A3EF044(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<Phase::Geometry::MaterialTypeDefinition>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<Phase::Geometry::MaterialTypeDefinition>::__base_destruct_at_end[abi:ne200100](uint64_t result, uint64_t a2)
{
  v3 = result;
  for (i = *(result + 8); i != a2; result = std::allocator_traits<std::allocator<Phase::Geometry::MaterialTypeDefinition>>::destroy[abi:ne200100]<Phase::Geometry::MaterialTypeDefinition,void,0>(v3, i))
  {
    i -= 96;
  }

  *(v3 + 8) = a2;
  return result;
}

void *std::__function::__value_func<std::shared_ptr<Phase::Geometry::Material> ()(Phase::Geometry::System &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_23A3EF304(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *std::__function::__value_func<std::shared_ptr<Phase::Geometry::Material> ()(Phase::Geometry::System &,Phase::Geometry::Material const&,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_23A3EF568(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void Phase::Geometry::MdlMeshReader::SetupVertexDescriptor(Phase::Geometry::MdlMeshReader *this)
{
  *__p = 0u;
  v12 = 0u;
  v10 = 0u;
  std::vector<Phase::MdlMeshAsset::VertexDescriptor::Attribute>::resize(&v10, 2uLL);
  std::vector<Phase::MdlMeshAsset::VertexDescriptor::Layout>::resize(&__p[1], 1uLL);
  v8 = 0uLL;
  v9 = 0;
  Phase::sGetStdStringFromNsString(*MEMORY[0x277CD7AB0], &v8);
  v2 = v10;
  if (*(v10 + 23) < 0)
  {
    operator delete(*v10);
  }

  *v2 = v8;
  *(v2 + 16) = v9;
  v3 = v10;
  *(v10 + 24) = 47;
  v3[5] = 0;
  v3[6] = 0;
  v3[4] = 0;
  for (i = 56; i != 68; i += 4)
  {
    *(v10 + i) = 0;
  }

  v8 = 0uLL;
  v9 = 0;
  Phase::sGetStdStringFromNsString(*MEMORY[0x277CD7AA0], &v8);
  v5 = v10;
  v6 = v10;
  if (*(v10 + 95) < 0)
  {
    operator delete(*(v10 + 72));
    v6 = v10;
  }

  *(v5 + 72) = v8;
  *(v5 + 88) = v9;
  *(v6 + 96) = 47;
  *(v6 + 112) = 0;
  *(v6 + 120) = 0;
  *(v6 + 104) = 12;
  for (j = 128; j != 140; j += 4)
  {
    *(v10 + j) = 0;
  }

  *__p[1] = 24;
  Phase::MdlMeshAsset::SetVertexDescriptor(this, &v10);
  if (__p[1])
  {
    *&v12 = __p[1];
    operator delete(__p[1]);
  }

  *&v8 = &v10;
  std::vector<Phase::MdlMeshAsset::VertexDescriptor::Attribute>::__destroy_vector::operator()[abi:ne200100](&v8);
}

void sub_23A3EF7D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  Phase::MdlMeshAsset::VertexDescriptor::~VertexDescriptor(va);
  _Unwind_Resume(a1);
}

uint64_t Phase::Geometry::MdlMeshReader::CalculateAABB@<X0>(id **this@<X0>, uint64_t a2@<X8>)
{
  result = [*this[1] vertexCount];
  if (result)
  {
    v5 = 0x80000000800000;
    v6 = vneg_f32(0x80000000800000);
    v7 = (this[2] + 1);
    v8 = -3.4028e38;
    v9 = 3.4028e38;
    do
    {
      v10 = *(v7 - 2);
      v6 = vminnm_f32(v6, v10);
      v11 = *v7;
      v7 += 6;
      v9 = fminf(v9, v11);
      v5 = vmaxnm_f32(v5, v10);
      v8 = fmaxf(v8, v11);
      --result;
    }

    while (result);
  }

  else
  {
    v5 = 0x80000000800000;
    v6 = vneg_f32(0x80000000800000);
    v9 = 3.4028e38;
    v8 = -3.4028e38;
  }

  *a2 = v6;
  *(a2 + 8) = v9;
  *(a2 + 12) = v5;
  *(a2 + 20) = v8;
  return result;
}

void std::vector<Phase::MdlMeshAsset::VertexDescriptor::Attribute>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0x8E38E38E38E38E39 * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<Phase::MdlMeshAsset::VertexDescriptor::Attribute>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 72 * a2;
    while (v3 != v7)
    {
      v8 = *(v3 - 49);
      v3 -= 9;
      if (v8 < 0)
      {
        operator delete(*v3);
      }
    }

    a1[1] = v7;
  }
}

void std::vector<Phase::MdlMeshAsset::VertexDescriptor::Layout>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<Phase::MdlMeshAsset::VertexDescriptor::Layout>::__append(a1, a2 - v2);
  }
}

void std::vector<Phase::MdlMeshAsset::VertexDescriptor::Attribute>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0x8E38E38E38E38E39 * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 72 * ((72 * a2 - 72) / 0x48) + 72;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0x8E38E38E38E38E39 * ((v5 - *a1) >> 3);
    if (v6 + a2 > 0x38E38E38E38E38ELL)
    {
      std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
    }

    v7 = 0x8E38E38E38E38E39 * ((v4 - *a1) >> 3);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + a2)
    {
      v8 = v6 + a2;
    }

    if (v7 >= 0x1C71C71C71C71C7)
    {
      v9 = 0x38E38E38E38E38ELL;
    }

    else
    {
      v9 = v8;
    }

    v19 = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::MdlMeshAsset::VertexDescriptor::Attribute>>(a1, v9);
    }

    v16 = 0;
    v17 = 72 * v6;
    v11 = 72 * ((72 * a2 - 72) / 0x48) + 72;
    bzero((72 * v6), v11);
    v18 = 72 * v6 + v11;
    v12 = *(a1 + 8);
    v13 = 72 * v6 + *a1 - v12;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<Phase::MdlMeshAsset::VertexDescriptor::Attribute>,Phase::MdlMeshAsset::VertexDescriptor::Attribute*>(a1, *a1, v12, v13);
    v14 = *a1;
    *a1 = v13;
    v15 = *(a1 + 16);
    *(a1 + 8) = v18;
    *&v18 = v14;
    *(&v18 + 1) = v15;
    v16 = v14;
    v17 = v14;
    std::__split_buffer<Phase::MdlMeshAsset::VertexDescriptor::Attribute>::~__split_buffer(&v16);
  }
}

void sub_23A3EFB0C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<Phase::MdlMeshAsset::VertexDescriptor::Attribute>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::MdlMeshAsset::VertexDescriptor::Attribute>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<Phase::MdlMeshAsset::VertexDescriptor::Attribute>,Phase::MdlMeshAsset::VertexDescriptor::Attribute*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v14 = a4;
  v13 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 2);
      *a4 = v7;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      *v6 = 0;
      v8 = *(v6 + 24);
      v9 = *(v6 + 40);
      *(a4 + 56) = *(v6 + 56);
      *(a4 + 40) = v9;
      *(a4 + 24) = v8;
      v6 = (v6 + 72);
      a4 += 72;
    }

    while (v6 != a3);
    v14 = a4;
    v12 = 1;
    do
    {
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 = (v5 + 72);
    }

    while (v5 != a3);
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<Phase::MdlMeshAsset::VertexDescriptor::Attribute>,Phase::MdlMeshAsset::VertexDescriptor::Attribute*>>::~__exception_guard_exceptions[abi:ne200100](v11);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<Phase::MdlMeshAsset::VertexDescriptor::Attribute>,Phase::MdlMeshAsset::VertexDescriptor::Attribute*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<Phase::MdlMeshAsset::VertexDescriptor::Attribute>,Phase::MdlMeshAsset::VertexDescriptor::Attribute*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<Phase::MdlMeshAsset::VertexDescriptor::Attribute>,Phase::MdlMeshAsset::VertexDescriptor::Attribute*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 49);
    v1 -= 9;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

uint64_t std::__split_buffer<Phase::MdlMeshAsset::VertexDescriptor::Attribute>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<Phase::MdlMeshAsset::VertexDescriptor::Attribute>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<Phase::MdlMeshAsset::VertexDescriptor::Attribute>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 9;
      *(a1 + 16) = v2 - 9;
      if (*(v2 - 49) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void std::vector<Phase::MdlMeshAsset::VertexDescriptor::Layout>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void Phase::MdlMeshAsset::VertexDescriptor::~VertexDescriptor(Phase::MdlMeshAsset::VertexDescriptor *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  v3 = this;
  std::vector<Phase::MdlMeshAsset::VertexDescriptor::Attribute>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void std::vector<Phase::MdlMeshAsset::VertexDescriptor::Attribute>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<Phase::MdlMeshAsset::VertexDescriptor::Attribute>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<Phase::MdlMeshAsset::VertexDescriptor::Attribute>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 49);
    v3 -= 9;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

uint64_t Phase::Geometry::MediumFactory::Create@<X0>(uint64_t result@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = *result;
  v7 = *(*result + 1152);
  if (0xAAAAAAAAAAAAAAABLL * ((*(*result + 1160) - v7) >> 5) <= a2)
  {
    __assert_rtn("GetTypeDef", "GeoMediumTypeRegistry.cpp", 33, "IsValid(inMediumType)");
  }

  v8 = v7 + 96 * a2;
  if (*(v8 + 32))
  {

    return std::function<std::shared_ptr<Phase::Geometry::Medium> ()(Phase::Geometry::System &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::operator()(v8 + 8, v6, a3);
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
  }

  return result;
}

uint64_t std::function<std::shared_ptr<Phase::Geometry::Medium> ()(Phase::Geometry::System &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v3 + 48))(v3, a2, &v5);
}

uint64_t std::__function::__value_func<std::shared_ptr<Phase::Geometry::Medium> ()(Phase::Geometry::System &,Phase::Asset &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *Phase::Geometry::MediumTypeRegistry::CustomizeType(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - v4) >> 5) <= a2)
  {
    __assert_rtn("CustomizeType", "GeoMediumTypeRegistry.cpp", 43, "IsValid(inMediumType)");
  }

  return std::function<std::shared_ptr<Phase::Geometry::Medium> ()(Phase::Geometry::System &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::operator=((v4 + 96 * a2 + 8), a3);
}

{
  v4 = *(a1 + 8);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - v4) >> 5) <= a2)
  {
    __assert_rtn("CustomizeType", "GeoMediumTypeRegistry.cpp", 54, "IsValid(inMediumType)");
  }

  return std::function<std::shared_ptr<Phase::Geometry::Medium> ()(Phase::Geometry::System &,Phase::Geometry::Medium const&,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::operator=((v4 + 96 * a2 + 40), a3);
}

void *std::function<std::shared_ptr<Phase::Geometry::Medium> ()(Phase::Geometry::System &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::operator=(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<std::shared_ptr<Phase::Geometry::Medium> ()(Phase::Geometry::System &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<std::shared_ptr<Phase::Geometry::Medium> ()(Phase::Geometry::System &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<std::shared_ptr<Phase::Geometry::Medium> ()(Phase::Geometry::System &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::~__value_func[abi:ne200100](v4);
  return a1;
}

void *std::function<std::shared_ptr<Phase::Geometry::Medium> ()(Phase::Geometry::System &,Phase::Geometry::Medium const&,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::operator=(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<std::shared_ptr<Phase::Geometry::Medium> ()(Phase::Geometry::System &,Phase::Geometry::Medium const&,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<std::shared_ptr<Phase::Geometry::Medium> ()(Phase::Geometry::System &,Phase::Geometry::Medium const&,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<std::shared_ptr<Phase::Geometry::Medium> ()(Phase::Geometry::System &,Phase::Geometry::Medium const&,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::~__value_func[abi:ne200100](v4);
  return a1;
}

void std::vector<Phase::Geometry::MediumTypeDefinition>::resize(void *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<Phase::Geometry::MediumTypeDefinition>::__append(a1, v4);
  }

  else if (!v3)
  {
    std::vector<Phase::Geometry::MediumTypeDefinition>::__base_destruct_at_end[abi:ne200100](a1, *a1 + 96 * a2);
  }
}

__n128 std::allocator_traits<std::allocator<Phase::Geometry::MediumTypeDefinition>>::construct[abi:ne200100]<Phase::Geometry::MediumTypeDefinition,Phase::Geometry::MediumTypeDefinition,void,0>(uint64_t a1, void *a2, uint64_t a3)
{
  *a2 = *a3;
  std::__function::__value_func<std::shared_ptr<Phase::Geometry::Medium> ()(Phase::Geometry::System &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::__value_func[abi:ne200100]((a2 + 1), a3 + 8);
  std::__function::__value_func<std::shared_ptr<Phase::Geometry::Medium> ()(Phase::Geometry::System &,Phase::Geometry::Medium const&,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::__value_func[abi:ne200100]((a2 + 5), a3 + 40);
  a2[9] = 0;
  a2[10] = 0;
  a2[11] = 0;
  result = *(a3 + 72);
  *(a2 + 9) = result;
  a2[11] = *(a3 + 88);
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
  return result;
}

uint64_t std::__function::__value_func<std::shared_ptr<Phase::Geometry::Medium> ()(Phase::Geometry::System &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<std::shared_ptr<Phase::Geometry::Medium> ()(Phase::Geometry::System &,Phase::Geometry::Medium const&,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<Phase::Geometry::MediumTypeDefinition>,Phase::Geometry::MediumTypeDefinition*>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      std::allocator_traits<std::allocator<Phase::Geometry::MediumTypeDefinition>>::construct[abi:ne200100]<Phase::Geometry::MediumTypeDefinition,Phase::Geometry::MediumTypeDefinition,void,0>(a1, a4, v7);
      v7 += 96;
      a4 = v12 + 12;
      v12 += 12;
    }

    while (v7 != a3);
    v10 = 1;
    do
    {
      std::allocator_traits<std::allocator<Phase::Geometry::MediumTypeDefinition>>::destroy[abi:ne200100]<Phase::Geometry::MediumTypeDefinition,void,0>(a1, v5);
      v5 += 96;
    }

    while (v5 != a3);
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<Phase::Geometry::MediumTypeDefinition>,Phase::Geometry::MediumTypeDefinition*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::allocator_traits<std::allocator<Phase::Geometry::MediumTypeDefinition>>::destroy[abi:ne200100]<Phase::Geometry::MediumTypeDefinition,void,0>(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 72);
  std::vector<Phase::Geometry::LoadMediumFunctionTableEntry>::__destroy_vector::operator()[abi:ne200100](&v4);
  std::__function::__value_func<std::shared_ptr<Phase::Geometry::Medium> ()(Phase::Geometry::System &,Phase::Geometry::Medium const&,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::~__value_func[abi:ne200100](a2 + 40);
  return std::__function::__value_func<std::shared_ptr<Phase::Geometry::Medium> ()(Phase::Geometry::System &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::~__value_func[abi:ne200100](a2 + 8);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<Phase::Geometry::MediumTypeDefinition>,Phase::Geometry::MediumTypeDefinition*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<Phase::Geometry::MediumTypeDefinition>,Phase::Geometry::MediumTypeDefinition*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t *std::_AllocatorDestroyRangeReverse<std::allocator<Phase::Geometry::MediumTypeDefinition>,Phase::Geometry::MediumTypeDefinition*>::operator()[abi:ne200100](uint64_t *result)
{
  v2 = result[1];
  v1 = result[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *result;
    do
    {
      v3 -= 96;
      result = std::allocator_traits<std::allocator<Phase::Geometry::MediumTypeDefinition>>::destroy[abi:ne200100]<Phase::Geometry::MediumTypeDefinition,void,0>(v5, v3);
    }

    while (v3 != v4);
  }

  return result;
}

uint64_t std::__split_buffer<Phase::Geometry::MediumTypeDefinition>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<Phase::Geometry::MediumTypeDefinition>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__split_buffer<Phase::Geometry::MediumTypeDefinition>::__destruct_at_end[abi:ne200100](uint64_t result, uint64_t a2)
{
  v3 = result;
  while (1)
  {
    v4 = *(v3 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(v3 + 32);
    *(v3 + 16) = v4 - 96;
    result = std::allocator_traits<std::allocator<Phase::Geometry::MediumTypeDefinition>>::destroy[abi:ne200100]<Phase::Geometry::MediumTypeDefinition,void,0>(v5, v4 - 96);
  }

  return result;
}

void std::vector<Phase::Geometry::LoadMediumFunctionTableEntry>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 40;
        std::__function::__value_func<std::shared_ptr<Phase::Geometry::Medium> ()(Phase::Geometry::System &,Phase::Asset &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::~__value_func[abi:ne200100]((v4 - 32));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__function::__value_func<std::shared_ptr<Phase::Geometry::Medium> ()(Phase::Geometry::System &,Phase::Geometry::Medium const&,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<std::shared_ptr<Phase::Geometry::Medium> ()(Phase::Geometry::System &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::vector<Phase::Geometry::MediumTypeDefinition>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 5) >= a2)
  {
    if (a2)
    {
      v10 = 96 * ((96 * a2 - 96) / 0x60) + 96;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 5);
    v7 = v6 + a2;
    if (v6 + a2 > 0x2AAAAAAAAAAAAAALL)
    {
      std::vector<Phase::Geometry::MediumTypeDefinition>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 5);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x155555555555555)
    {
      v9 = 0x2AAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v19 = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::Geometry::DirectivityTypeDefinition>>(a1, v9);
    }

    v16 = 0;
    v17 = 96 * v6;
    v11 = 96 * ((96 * a2 - 96) / 0x60) + 96;
    bzero((96 * v6), v11);
    v18 = 96 * v6 + v11;
    v12 = *(a1 + 8);
    v13 = (96 * v6 + *a1 - v12);
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<Phase::Geometry::MediumTypeDefinition>,Phase::Geometry::MediumTypeDefinition*>(a1, *a1, v12, v13);
    v14 = *a1;
    *a1 = v13;
    v15 = *(a1 + 16);
    *(a1 + 8) = v18;
    *&v18 = v14;
    *(&v18 + 1) = v15;
    v16 = v14;
    v17 = v14;
    std::__split_buffer<Phase::Geometry::MediumTypeDefinition>::~__split_buffer(&v16);
  }
}

void sub_23A3F0A10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<Phase::Geometry::MediumTypeDefinition>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<Phase::Geometry::MediumTypeDefinition>::__base_destruct_at_end[abi:ne200100](uint64_t result, uint64_t a2)
{
  v3 = result;
  for (i = *(result + 8); i != a2; result = std::allocator_traits<std::allocator<Phase::Geometry::MediumTypeDefinition>>::destroy[abi:ne200100]<Phase::Geometry::MediumTypeDefinition,void,0>(v3, i))
  {
    i -= 96;
  }

  *(v3 + 8) = a2;
  return result;
}

void *std::__function::__value_func<std::shared_ptr<Phase::Geometry::Medium> ()(Phase::Geometry::System &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_23A3F0CD0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *std::__function::__value_func<std::shared_ptr<Phase::Geometry::Medium> ()(Phase::Geometry::System &,Phase::Geometry::Medium const&,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_23A3F0F34(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void Phase::Geometry::AddMesh(uint64_t a1, uint64_t a2)
{
  v2 = 2 * a2 + 4;
  v3 = (*(a1 + 104) - *(a1 + 96)) >> 4;
  std::vector<std::shared_ptr<Phase::Geometry::SharedDataStream>>::resize(a1 + 96, v2);
  if (v3 < v2)
  {
    operator new();
  }

  operator new();
}

void sub_23A3F14A0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    MEMORY[0x23EE86470](v1, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

void sub_23A3F2330(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30)
{
  if (__p)
  {
    a30 = __p;
    operator delete(__p);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  Phase::MdlMeshAsset::~MdlMeshAsset(&a26);
  _Unwind_Resume(a1);
}

uint64_t Phase::Geometry::DataStreamReference<Phase::Vector<float,3ul>>::Resize(uint64_t result, unint64_t a2)
{
  v3 = result;
  v4 = *(**result + 16 * *(result + 8));
  v5 = *(v4 + 24);
  if (v5 == a2)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(v4 + 8);
    *(v4 + 8) = 0;
    if (a2)
    {
      Phase::Geometry::DataStream::Alloc(*(v4 + 16), *(v4 + 32) * a2, &v18);
      v7 = v18;
      v18 = 0;
      result = *(v4 + 8);
      *(v4 + 8) = v7;
      if (result)
      {
        MEMORY[0x23EE86470](result, 0x1000C8077774924);
        result = v18;
        v18 = 0;
        if (result)
        {
          result = MEMORY[0x23EE86470](result, 0x1000C8077774924);
        }
      }
    }

    *(v4 + 24) = a2;
  }

  if (v5 >= a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = v5;
  }

  if (v8)
  {
    v9 = (*(v4 + 8) + 8);
    v10 = (v6 + 8);
    v11 = v8;
    do
    {
      *(v9 - 2) = *(v10 - 2);
      *(v9 - 1) = *(v10 - 1);
      v12 = *v10;
      v10 += 3;
      *v9 = v12;
      v9 += 3;
      --v11;
    }

    while (v11);
  }

  if (v5 < a2)
  {
    v13 = *(**v3 + 16 * *(v3 + 8));
    v14 = *(v13 + 8);
    v15 = *(v13 + 32);
    v16 = a2 - v8;
    v17 = (v14 + v15 * v8 + 8);
    do
    {
      *(v17 - 1) = 0;
      *v17 = 0;
      v17 = (v17 + v15);
      --v16;
    }

    while (v16);
  }

  if (v6)
  {
    return MEMORY[0x23EE86470](v6, 0x1000C8077774924);
  }

  return result;
}

void sub_23A3F2520(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    MEMORY[0x23EE86470](v1, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<float>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 2)
  {
    if (!(a2 >> 62))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(result, a2);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t Phase::Geometry::DataStreamReference<unsigned int>::Resize(uint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = a3;
  v4 = *(result + 16 * a2);
  v5 = *(v4 + 24);
  if (v5 == a3)
  {
    if (!a3)
    {
      return result;
    }

    v6 = 0;
  }

  else
  {
    v6 = *(v4 + 8);
    *(v4 + 8) = 0;
    if (a3)
    {
      Phase::Geometry::DataStream::Alloc(*(v4 + 16), *(v4 + 32) * a3, &v10);
      v7 = v10;
      v10 = 0;
      result = *(v4 + 8);
      *(v4 + 8) = v7;
      if (result)
      {
        MEMORY[0x23EE86470](result, 0x1000C8077774924);
        result = v10;
        v10 = 0;
        if (result)
        {
          result = MEMORY[0x23EE86470](result, 0x1000C8077774924);
        }
      }
    }

    *(v4 + 24) = v3;
    if (v5 < v3)
    {
      v3 = v5;
    }

    if (!v3)
    {
      if (!v6)
      {
        return result;
      }

      return MEMORY[0x23EE86470](v6, 0x1000C8077774924);
    }
  }

  v8 = 0;
  v9 = *(v4 + 8);
  do
  {
    *(v9 + 4 * v8) = *(v6 + 4 * v8);
    ++v8;
  }

  while (v3 != v8);
  return MEMORY[0x23EE86470](v6, 0x1000C8077774924);
}

void sub_23A3F26EC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    MEMORY[0x23EE86470](v1, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

BOOL Phase::Geometry::MdlMeshReader::GetTriangle<unsigned int>(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, _DWORD *a5, unsigned int *a6, uint64_t a7, float *a8)
{
  *a4 = Phase::Geometry::MdlMeshReader::GetVertexIndex<unsigned int>(a1, a2, a3);
  *a5 = Phase::Geometry::MdlMeshReader::GetVertexIndex<unsigned int>(a1, a2, a3 + 1);
  Vertex = Phase::Geometry::MdlMeshReader::GetVertexIndex<unsigned int>(a1, a2, a3 + 2);
  *a6 = Vertex;
  v17 = *(a1 + 16);
  v18 = (v17 + 24 * *a4);
  *a7 = *v18;
  *(a7 + 4) = v18[1];
  *(a7 + 8) = v18[2];
  v19 = (v17 + 24 * *a5);
  *(a7 + 12) = *v19;
  *(a7 + 16) = v19[1];
  *(a7 + 20) = v19[2];
  v20 = (v17 + 24 * Vertex);
  *(a7 + 24) = *v20;
  *(a7 + 28) = v20[1];
  *(a7 + 32) = v20[2];
  Phase::UnnormalizedNormalCCW<float>(a7, &v24);
  v21 = vmul_f32(v25, v25);
  v22 = sqrtf(((v24 * v24) + v21.f32[0]) + v21.f32[1]) * 0.5;
  *a8 = v22;
  return v22 > 0.00000011921;
}

float Phase::Enclose<float>@<S0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a2 + 8);
  v4 = *(a2 + 20);
  v5 = *(a2 + 32);
  *(a3 + 8) = fminf(*(a1 + 8), fminf(fminf(v3, v4), v5));
  result = fmaxf(*(a1 + 20), fmaxf(fmaxf(v3, v4), v5));
  v7 = *(a2 + 12);
  v8 = *(a2 + 24);
  v9 = vmaxnm_f32(vmaxnm_f32(*a2, v7), v8);
  *a3 = vminnm_f32(*a1, vminnm_f32(vminnm_f32(*a2, v7), v8));
  *(a3 + 12) = vmaxnm_f32(*(a1 + 12), v9);
  *(a3 + 20) = result;
  return result;
}

void Phase::Geometry::CreateMeshFromShape(int a1, _DWORD *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (*a2 == 1)
  {
    Phase::Geometry::ForcedCopyTagsIncludingMaterialListFromOptions(1uLL, a3, &__src);
    end = __src.__end_;
    if (__src.__end_ >= __src.__end_cap_.__value_)
    {
      begin = __src.__begin_;
      v6 = __src.__end_ - __src.__begin_;
      v7 = __src.__end_ - __src.__begin_;
      v8 = v7 + 1;
      if ((v7 + 1) >> 62)
      {
        std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
      }

      v9 = __src.__end_cap_.__value_ - __src.__begin_;
      if ((__src.__end_cap_.__value_ - __src.__begin_) >> 1 > v8)
      {
        v8 = v9 >> 1;
      }

      v10 = v9 >= 0x7FFFFFFFFFFFFFFCLL;
      v11 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v10)
      {
        v11 = v8;
      }

      if (v11)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(&__src, v11);
      }

      *(4 * v7) = 4;
      v4 = (4 * v7 + 4);
      memcpy(0, begin, v6);
      v12 = __src.__begin_;
      __src.__begin_ = 0;
      __src.__end_ = v4;
      __src.__end_cap_.__value_ = 0;
      if (v12)
      {
        operator delete(v12);
      }
    }

    else
    {
      *__src.__end_ = 4;
      v4 = end + 1;
    }

    __src.__end_ = v4;
    std::allocate_shared[abi:ne200100]<Phase::Geometry::Shape,std::allocator<Phase::Geometry::Shape>,Phase::Geometry::Shape&,std::vector<unsigned int> &,0>();
  }

  std::terminate();
}

void sub_23A3F2B64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float Phase::Geometry::GetNormals(uint64_t a1, unsigned int *a2, int a3, uint64_t a4, int a5, uint64_t a6)
{
  v6 = a3 * a6;
  if (v6 >= 1)
  {
    v7 = (a2 + v6);
    v8 = *(**(a1 + 48) + 16 * *(a1 + 56));
    v9 = *(v8 + 8);
    v10 = *(v8 + 32);
    v11 = (a4 + 8);
    do
    {
      v12 = *a2;
      v13 = *(**(v9 + v10 * (v12 >> 24) + 48) + 16 * *(v9 + v10 * (v12 >> 24) + 56));
      v14 = *(v13 + 8) + *(v13 + 32) * (v12 & 0xFFFFFF);
      *(v11 - 2) = *v14;
      *(v11 - 1) = *(v14 + 4);
      result = *(v14 + 8);
      *v11 = result;
      a2 = (a2 + a3);
      v11 = (v11 + a5);
    }

    while (a2 < v7);
  }

  return result;
}

{
  v6 = a3 * a6;
  if (v6 >= 1)
  {
    v7 = (a2 + v6);
    v8 = *(*(**(a1 + 40) + 16 * *(a1 + 48)) + 8);
    v9 = *(**(v8 + 40) + 16 * *(v8 + 48));
    v10 = v9[1] + (v9[3] - 1) * v9[4];
    v11 = *(**(v10 + 40) + 16 * *(v10 + 48));
    v12 = *(v11 + 8);
    v13 = *(v11 + 32);
    v14 = (a4 + 8);
    do
    {
      v15 = (v12 + v13 * *a2);
      *(v14 - 2) = *v15;
      *(v14 - 1) = v15[1];
      result = v15[2];
      *v14 = result;
      a2 = (a2 + a3);
      v14 = (v14 + a5);
    }

    while (a2 < v7);
  }

  return result;
}

float Phase::Geometry::GetNormals(uint64_t a1, float *a2, unsigned int *a3, int a4, uint64_t a5, int a6, uint64_t a7)
{
  v7 = a4;
  v8 = a4 * a7;
  if (v8 >= 1)
  {
    v9 = a3;
    v12 = a6;
    v13 = a3 + v8;
    v14 = (a5 + 8);
    do
    {
      v15 = *v9;
      v16 = *(**(a1 + 48) + 16 * *(a1 + 56));
      v17 = *(**(*(v16 + 8) + *(v16 + 32) * (v15 >> 24) + 48) + 16 * *(*(v16 + 8) + *(v16 + 32) * (v15 >> 24) + 56));
      Phase::operator*<float>(a2, (*(v17 + 8) + *(v17 + 32) * (v15 & 0xFFFFFF)), &v19);
      *(v14 - 1) = v19;
      result = v20;
      *v14 = v20;
      v9 = (v9 + v7);
      v14 = (v14 + v12);
    }

    while (v9 < v13);
  }

  return result;
}

{
  v7 = a4;
  v8 = a4 * a7;
  if (v8 >= 1)
  {
    v9 = a3;
    v11 = a6;
    v12 = a3 + v8;
    v13 = *(*(**(a1 + 40) + 16 * *(a1 + 48)) + 8);
    v14 = *(**(v13 + 40) + 16 * *(v13 + 48));
    v15 = v14[1] + (v14[3] - 1) * v14[4];
    v16 = (a5 + 8);
    do
    {
      v17 = *(**(v15 + 40) + 16 * *(v15 + 48));
      Phase::operator*<float>(a2, (*(v17 + 8) + *(v17 + 32) * *v9), &v19);
      *(v16 - 1) = v19;
      result = v20;
      *v16 = v20;
      v9 = (v9 + v7);
      v16 = (v16 + v11);
    }

    while (v9 < v12);
  }

  return result;
}

void Phase::Geometry::GetMaterials(_BOOL8 a1, unsigned int *a2, int a3, void *a4, int a5, uint64_t a6)
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a3 * a6;
  if (v7 >= 1)
  {
    v9 = a2;
    v10 = a1;
    v20 = a5;
    v11 = a2 + v7;
    while (1)
    {
      v12 = *v9 >> 24;
      v13 = *(**(v10 + 48) + 16 * *(v10 + 56));
      v14 = v13[3];
      if (v14 <= v12)
      {
        break;
      }

      v15 = *(v13[1] + v13[4] * v12 + 28);
      v16 = *(**(*(v10 + 8) + 144) + 16 * *(*(v10 + 8) + 152));
      v17 = *(v16 + 24);
      if (v15 >= v17)
      {
        goto LABEL_7;
      }

      v18 = *(*(v16 + 8) + *(v16 + 32) * v15);
LABEL_10:
      *a4 = v18;
      a4 = (a4 + v20);
      v9 = (v9 + v6);
      if (v9 >= v11)
      {
        return;
      }
    }

    v17 = -1;
    LODWORD(v15) = -1;
LABEL_7:
    v19 = **(Phase::Logger::GetInstance(a1) + 224);
    a1 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (a1)
    {
      *buf = 136316418;
      v22 = "GeoMesh.cpp";
      v23 = 1024;
      v24 = 576;
      v25 = 1024;
      v26 = v12;
      v27 = 1024;
      v28 = v14;
      v29 = 1024;
      v30 = v15;
      v31 = 1024;
      v32 = v17;
      _os_log_impl(&dword_23A302000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d GeoMesh.cpp: GetMaterials: Index out of range. Submesh Index: %i, Count:%i, Material Index: %i, Count:%i.\n", buf, 0x2Au);
    }

    v18 = 0;
    goto LABEL_10;
  }
}

{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a3 * a6;
  if (v7 >= 1)
  {
    v9 = a2;
    v10 = a1;
    v23 = a2 + v7;
    v24 = a5;
    while (1)
    {
      v11 = *v9;
      v12 = *(**(v10 + 64) + 16 * *(v10 + 72));
      if (v12[3] <= v11)
      {
        break;
      }

      v13 = *(v12[1] + v12[4] * v11);
      v14 = *(**(v10 + 80) + 16 * *(v10 + 88));
      v15 = *(v14 + 24);
      if (v13 >= v15)
      {
        v18 = -1;
        LODWORD(v16) = -1;
        goto LABEL_9;
      }

      v16 = *(*(v14 + 8) + *(v14 + 32) * v13 + 56);
      v17 = *(**(*(v10 + 8) + 144) + 16 * *(*(v10 + 8) + 152));
      v18 = *(v17 + 24);
      if (v16 >= v18)
      {
        goto LABEL_9;
      }

      v19 = *(*(v17 + 8) + *(v17 + 32) * v16);
LABEL_12:
      *a4 = v19;
      a4 = (a4 + v24);
      v9 = (v9 + v6);
      if (v9 >= v23)
      {
        return;
      }
    }

    LODWORD(v13) = 0xFFFF;
    v18 = -1;
    LODWORD(v16) = -1;
    v15 = -1;
LABEL_9:
    v20 = **(Phase::Logger::GetInstance(a1) + 224);
    a1 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (a1)
    {
      v21 = *v9;
      v22 = *(*(**(v10 + 64) + 16 * *(v10 + 72)) + 24);
      *buf = 136316930;
      v26 = "GeoMpsMesh.cpp";
      v27 = 1024;
      v28 = 491;
      v29 = 1024;
      v30 = v21;
      v31 = 1024;
      v32 = v22;
      v33 = 1024;
      v34 = v13;
      v35 = 1024;
      v36 = v15;
      v37 = 1024;
      v38 = v16;
      v39 = 1024;
      v40 = v18;
      _os_log_impl(&dword_23A302000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d GeoMpsMesh.cpp: GetMaterials: index out of range. Primitive Index: %i, Count: %i, Submesh Index: %i, Count: %i, Material Index: %i, Count: %i.\n", buf, 0x36u);
    }

    v19 = 0;
    goto LABEL_12;
  }
}

void std::vector<std::shared_ptr<Phase::Geometry::SharedDataStream>>::resize(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = (v3 - *a1) >> 4;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *a1 + 16 * a2;
      while (v3 != v6)
      {
        v7 = *(v3 - 8);
        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        }

        v3 -= 16;
      }

      *(a1 + 8) = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    std::vector<std::shared_ptr<Phase::Geometry::SharedDataStream>>::__append(a1, v5);
  }
}

void std::vector<std::shared_ptr<Phase::Geometry::SharedDataStream>>::__append(const void **a1, unint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      bzero(a1[1], 16 * a2);
      v5 += 16 * a2;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    v16[4] = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<Phase::Geometry::MpsCpuScene>>>(a1, v9);
    }

    v10 = (16 * (v6 >> 4));
    bzero(v10, 16 * a2);
    v11 = &v10[16 * a2];
    v12 = a1[1] - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    a1[1] = v11;
    v15 = a1[2];
    a1[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    std::__split_buffer<std::shared_ptr<Phase::Geometry::SharedDataStream>>::~__split_buffer(v16);
  }
}

void **std::__split_buffer<std::shared_ptr<Phase::Geometry::SharedDataStream>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::shared_ptr<Phase::Geometry::SharedDataStream>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::shared_ptr<Phase::Geometry::SharedDataStream>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

void std::__shared_ptr_emplace<Phase::Geometry::SharedDataStream>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284D34310;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EE864A0);
}

uint64_t std::__shared_ptr_emplace<Phase::Geometry::SharedDataStream>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    JUMPOUT(0x23EE86470);
  }

  return result;
}

uint64_t std::__function::__func<std::unique_ptr<Phase::Geometry::DataMap,std::function<void ()(void *)>> Phase::Geometry::MakeDataMapPtr<Phase::Geometry::Mesh>(Phase::Geometry::Mesh *)::{lambda(void *)#1},std::allocator<std::unique_ptr<Phase::Geometry::DataMap,std::function<void ()(void *)>> Phase::Geometry::MakeDataMapPtr<Phase::Geometry::Mesh>(Phase::Geometry::Mesh *)::{lambda(void *)#1}>,void ()(void *)>::operator()(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (*a2)
  {
    JUMPOUT(0x23EE864A0);
  }

  return result;
}

void *Phase::Geometry::DataStream::Alloc@<X0>(std::align_val_t this@<X0>, size_t __sz@<X1>, void *a3@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  if (__sz)
  {
    if (this)
    {
      if ((this & (this - 1)) != 0)
      {
        v6 = **(Phase::Logger::GetInstance(this) + 432);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          v8 = 136315650;
          v9 = "GeoData.hpp";
          v10 = 1024;
          v11 = 186;
          v12 = 2048;
          v13 = this;
          _os_log_impl(&dword_23A302000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [!Phase::IsPowerOfTwo(inAlignment) is true]: Error allocating memory - alignment must be power of two. Alignment requested %zu", &v8, 0x1Cu);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(exception, "Error allocating memory - alignment must be power of two. Alignment requested %zu");
      }

      result = operator new(__sz, this);
    }

    else
    {
      result = operator new(__sz);
    }
  }

  else
  {
    result = 0;
  }

  *a3 = result;
  return result;
}

void sub_23A3F3478(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZNKSt3__110__function6__funcIZN5Phase7details10AllocArrayINS2_8Geometry18PrimitiveSortEntryERKZNS3_10AllocArrayIS6_EENS_10unique_ptrIA_T_NS_8functionIFvPvEEEEEmmEUlvE_RKZNS7_IS6_EESF_mmEUlPS9_E_EESF_mOT0_OT1_EUlSC_E_NS_9allocatorISR_EESD_E7__cloneEPNS0_6__baseISD_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_284D34390;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t *std::unique_ptr<Phase::Geometry::PrimitiveSortEntry [],std::function<void ()(void *)>>::reset[abi:ne200100](uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    return std::function<void ()(void *)>::operator()((result + 1), v1);
  }

  return result;
}

void std::__introsort<std::_ClassicAlgPolicy,Phase::Geometry::SortPrimitivesByMortonNumber(Phase::Geometry::System &,Phase::Geometry::Mesh *,Phase::Geometry::MeshOptions::PrimitiveSortType)::$_0 &,Phase::Geometry::PrimitiveSortEntry *,false>(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
LABEL_1:
  v8 = a1;
  while (1)
  {
    a1 = v8;
    v9 = (a2 - v8) >> 5;
    if (v9 > 2)
    {
      switch(v9)
      {
        case 3:

          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,Phase::Geometry::SortPrimitivesByMortonNumber(Phase::Geometry::System &,Phase::Geometry::Mesh *,Phase::Geometry::MeshOptions::PrimitiveSortType)::$_0 &,Phase::Geometry::PrimitiveSortEntry *,0>(v8, (v8 + 32), (a2 - 32));
          return;
        case 4:
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,Phase::Geometry::SortPrimitivesByMortonNumber(Phase::Geometry::System &,Phase::Geometry::Mesh *,Phase::Geometry::MeshOptions::PrimitiveSortType)::$_0 &,Phase::Geometry::PrimitiveSortEntry *,0>(v8, (v8 + 32), (v8 + 64));
          v50 = *(v8 + 64);
          if (*(a2 - 32) < v50)
          {
            v51 = (v8 + 84);
            v52 = *(v8 + 80);
            v145 = *(v8 + 84);
            v156 = *(v8 + 92);
            *(v8 + 64) = *(a2 - 32);
            v53 = *(v8 + 72);
            *(v8 + 72) = *(a2 - 24);
            *(v8 + 76) = *(a2 - 20);
            *(v8 + 80) = *(a2 - 16);
            v54 = *(a2 - 12);
            *(v8 + 92) = *(a2 - 4);
            *(v8 + 84) = v54;
            *(a2 - 32) = v50;
            *(a2 - 24) = v53;
            *(a2 - 16) = v52;
            *(a2 - 4) = v156;
            *(a2 - 12) = v145;
            v55 = *(v8 + 64);
            v56 = *(v8 + 32);
            if (v55 < v56)
            {
              v57 = *(v8 + 48);
              v58 = (v8 + 52);
              v146 = *(v8 + 52);
              v157 = *(v8 + 60);
              *(v8 + 32) = v55;
              v59 = *(v8 + 72);
              v60 = *(v8 + 76);
              v61 = *(v8 + 80);
              *(v8 + 52) = *v51;
              *(v8 + 60) = *(v8 + 92);
              *(v8 + 64) = v56;
              v62 = *(v8 + 40);
              *(v8 + 40) = v59;
              *(v8 + 44) = v60;
              *(v8 + 48) = v61;
              *(v8 + 72) = v62;
              *(v8 + 80) = v57;
              *(v8 + 92) = v157;
              *v51 = v146;
              v63 = *v8;
              if (v55 < *v8)
              {
                v64 = *(v8 + 16);
                v65 = *(v8 + 8);
                v158 = *(v8 + 28);
                v147 = *(v8 + 20);
                *v8 = v55;
                *(v8 + 8) = v59;
                *(v8 + 12) = v60;
                *(v8 + 16) = v61;
                *(v8 + 20) = *v58;
                *(v8 + 28) = *(v8 + 60);
                *(v8 + 32) = v63;
                *(v8 + 40) = v65;
                *(v8 + 48) = v64;
                *(v8 + 60) = v158;
                *v58 = v147;
              }
            }
          }

          return;
        case 5:

          std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,Phase::Geometry::SortPrimitivesByMortonNumber(Phase::Geometry::System &,Phase::Geometry::Mesh *,Phase::Geometry::MeshOptions::PrimitiveSortType)::$_0 &,Phase::Geometry::PrimitiveSortEntry *,0>(v8, v8 + 32, v8 + 64, (v8 + 96), (a2 - 32));
          return;
      }
    }

    else
    {
      if (v9 < 2)
      {
        return;
      }

      if (v9 == 2)
      {
        v46 = *v8;
        if (*(a2 - 32) < *v8)
        {
          v47 = *(v8 + 16);
          v48 = *(v8 + 8);
          v144 = *(v8 + 20);
          v155 = *(v8 + 28);
          *v8 = *(a2 - 32);
          *(v8 + 8) = *(a2 - 24);
          *(v8 + 12) = *(a2 - 20);
          *(v8 + 16) = *(a2 - 16);
          v49 = *(a2 - 12);
          *(v8 + 28) = *(a2 - 4);
          *(v8 + 20) = v49;
          *(a2 - 32) = v46;
          *(a2 - 24) = v48;
          *(a2 - 16) = v47;
          *(a2 - 4) = v155;
          *(a2 - 12) = v144;
        }

        return;
      }
    }

    if (v9 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (v8 == a2)
      {
        return;
      }

      v80 = (v9 - 2) >> 1;
      v81 = v80;
      do
      {
        v82 = v81;
        if (v80 >= v81)
        {
          v83 = (2 * v81) | 1;
          v84 = v8 + 32 * v83;
          if (2 * v82 + 2 >= v9)
          {
            v85 = *v84;
          }

          else
          {
            v85 = *(v84 + 32);
            v86 = *v84 >= v85;
            if (*v84 > v85)
            {
              v85 = *v84;
            }

            if (!v86)
            {
              v84 += 32;
              v83 = 2 * v82 + 2;
            }
          }

          v87 = v8 + 32 * v82;
          v88 = *v87;
          if (v85 >= *v87)
          {
            v89 = *(v87 + 8);
            v90 = *(v87 + 16);
            v160 = *(v87 + 28);
            v149 = *(v87 + 20);
            do
            {
              v91 = v87;
              v87 = v84;
              *v91 = v85;
              *(v91 + 8) = *(v84 + 8);
              *(v91 + 12) = *(v84 + 12);
              *(v91 + 16) = *(v84 + 16);
              v93 = v84 + 20;
              v92 = *(v84 + 20);
              *(v91 + 28) = *(v93 + 8);
              *(v91 + 20) = v92;
              if (v80 < v83)
              {
                break;
              }

              v94 = (2 * v83) | 1;
              v84 = v8 + 32 * v94;
              v83 = 2 * v83 + 2;
              if (v83 >= v9)
              {
                v85 = *v84;
                v83 = v94;
              }

              else
              {
                v85 = *v84;
                v95 = *(v84 + 32);
                if (*v84 <= v95)
                {
                  v85 = *(v84 + 32);
                }

                if (*v84 >= v95)
                {
                  v83 = v94;
                }

                else
                {
                  v84 += 32;
                }
              }
            }

            while (v85 >= v88);
            *v87 = v88;
            *(v87 + 8) = v89;
            *(v87 + 16) = v90;
            *v93 = v149;
            *(v93 + 8) = v160;
          }
        }

        v81 = v82 - 1;
      }

      while (v82);
      while (2)
      {
        v96 = 0;
        v97 = *v8;
        v99 = *(v8 + 8);
        v98 = *(v8 + 12);
        v100 = *(v8 + 16);
        v137 = *(v8 + 20);
        v140 = *(v8 + 28);
        v101 = v8;
        do
        {
          v102 = v101 + 32 * v96;
          v103 = v102 + 32;
          v104 = (2 * v96) | 1;
          v96 = 2 * v96 + 2;
          if (v96 >= v9)
          {
            v105 = *v103;
            v96 = v104;
          }

          else
          {
            v107 = *(v102 + 64);
            v106 = v102 + 64;
            v105 = v107;
            v108 = *(v106 - 32);
            v109 = v108 >= v107;
            if (v108 > v107)
            {
              v105 = *(v106 - 32);
            }

            if (v109)
            {
              v96 = v104;
            }

            else
            {
              v103 = v106;
            }
          }

          *v101 = v105;
          *(v101 + 8) = *(v103 + 8);
          *(v101 + 12) = *(v103 + 12);
          *(v101 + 16) = *(v103 + 16);
          v110 = v103 + 20;
          v111 = *(v103 + 20);
          *(v101 + 28) = *(v103 + 28);
          *(v101 + 20) = v111;
          v101 = v103;
        }

        while (v96 <= ((v9 - 2) >> 1));
        if (v103 != a2 - 32)
        {
          *v103 = *(a2 - 32);
          *(v103 + 8) = *(a2 - 24);
          *(v103 + 12) = *(a2 - 20);
          *(v103 + 16) = *(a2 - 16);
          v112 = *(a2 - 12);
          *(v103 + 28) = *(a2 - 4);
          *v110 = v112;
          *(a2 - 32) = v97;
          *(a2 - 24) = v99;
          *(a2 - 20) = v98;
          *(a2 - 16) = v100;
          *(a2 - 4) = v140;
          *(a2 - 12) = v137;
          v113 = (v103 - v8 + 32) >> 5;
          v114 = v113 < 2;
          v115 = v113 - 2;
          if (!v114)
          {
            v116 = v115 >> 1;
            v117 = v8 + 32 * (v115 >> 1);
            v118 = *v117;
            v119 = *v103;
            if (*v117 < *v103)
            {
              v120 = *(v103 + 8);
              v121 = *(v103 + 16);
              v150 = *v110;
              v161 = *(v103 + 28);
              do
              {
                v122 = v103;
                v103 = v117;
                *v122 = v118;
                *(v122 + 8) = *(v117 + 8);
                *(v122 + 12) = *(v117 + 12);
                *(v122 + 16) = *(v117 + 16);
                v110 = v117 + 20;
                v123 = *(v117 + 20);
                *(v122 + 28) = *(v110 + 8);
                *(v122 + 20) = v123;
                if (!v116)
                {
                  break;
                }

                v116 = (v116 - 1) >> 1;
                v117 = v8 + 32 * v116;
                v118 = *v117;
              }

              while (*v117 < v119);
              *v103 = v119;
              *(v103 + 8) = v120;
              *(v103 + 16) = v121;
              *v110 = v150;
              v124 = v161;
LABEL_127:
              *(v110 + 8) = v124;
            }
          }

          a2 -= 32;
          v114 = v9-- <= 2;
          if (v114)
          {
            return;
          }

          continue;
        }

        break;
      }

      *v103 = v97;
      *(v103 + 8) = v99;
      *(v103 + 12) = v98;
      *(v103 + 16) = v100;
      *v110 = v137;
      v124 = v140;
      goto LABEL_127;
    }

    v10 = v9 >> 1;
    v11 = v8 + 32 * (v9 >> 1);
    if (v9 < 0x81)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,Phase::Geometry::SortPrimitivesByMortonNumber(Phase::Geometry::System &,Phase::Geometry::Mesh *,Phase::Geometry::MeshOptions::PrimitiveSortType)::$_0 &,Phase::Geometry::PrimitiveSortEntry *,0>((a1 + 32 * (v9 >> 1)), a1, (a2 - 32));
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,Phase::Geometry::SortPrimitivesByMortonNumber(Phase::Geometry::System &,Phase::Geometry::Mesh *,Phase::Geometry::MeshOptions::PrimitiveSortType)::$_0 &,Phase::Geometry::PrimitiveSortEntry *,0>(a1, (a1 + 32 * (v9 >> 1)), (a2 - 32));
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,Phase::Geometry::SortPrimitivesByMortonNumber(Phase::Geometry::System &,Phase::Geometry::Mesh *,Phase::Geometry::MeshOptions::PrimitiveSortType)::$_0 &,Phase::Geometry::PrimitiveSortEntry *,0>((a1 + 32), (v11 - 32), (a2 - 64));
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,Phase::Geometry::SortPrimitivesByMortonNumber(Phase::Geometry::System &,Phase::Geometry::Mesh *,Phase::Geometry::MeshOptions::PrimitiveSortType)::$_0 &,Phase::Geometry::PrimitiveSortEntry *,0>((a1 + 64), (a1 + 32 + 32 * v10), (a2 - 96));
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,Phase::Geometry::SortPrimitivesByMortonNumber(Phase::Geometry::System &,Phase::Geometry::Mesh *,Phase::Geometry::MeshOptions::PrimitiveSortType)::$_0 &,Phase::Geometry::PrimitiveSortEntry *,0>((v11 - 32), v11, (a1 + 32 + 32 * v10));
      v12 = *a1;
      v13 = *(a1 + 16);
      v14 = *(a1 + 8);
      v141 = *(a1 + 20);
      v152 = *(a1 + 28);
      *a1 = *v11;
      *(a1 + 8) = *(v11 + 8);
      *(a1 + 16) = *(v11 + 16);
      v15 = *(v11 + 28);
      *(a1 + 20) = *(v11 + 20);
      *(a1 + 28) = v15;
      *v11 = v12;
      *(v11 + 8) = v14;
      *(v11 + 16) = v13;
      *(v11 + 28) = v152;
      *(v11 + 20) = v141;
    }

    --a3;
    v16 = *a1;
    if ((a4 & 1) != 0 || *(a1 - 32) < v16)
    {
      v17 = 0;
      v18 = *(a1 + 8);
      v19 = *(a1 + 16);
      v135 = *(a1 + 20);
      v138 = *(a1 + 28);
      do
      {
        v20 = *(a1 + v17 + 32);
        v17 += 32;
      }

      while (v20 < v16);
      v21 = a1 + v17;
      v22 = a2;
      if (v17 == 32)
      {
        v22 = a2;
        do
        {
          if (v21 >= v22)
          {
            break;
          }

          v24 = *(v22 - 32);
          v22 -= 32;
        }

        while (v24 >= v16);
      }

      else
      {
        do
        {
          v23 = *(v22 - 32);
          v22 -= 32;
        }

        while (v23 >= v16);
      }

      v8 = a1 + v17;
      if (v21 < v22)
      {
        v25 = v22;
        do
        {
          v26 = *(v8 + 16);
          v27 = *(v8 + 8);
          v153 = *(v8 + 28);
          v142 = *(v8 + 20);
          *v8 = *v25;
          *(v8 + 8) = *(v25 + 8);
          *(v8 + 12) = *(v25 + 12);
          *(v8 + 16) = *(v25 + 16);
          v28 = *(v25 + 20);
          *(v8 + 28) = *(v25 + 28);
          *(v8 + 20) = v28;
          *v25 = v20;
          *(v25 + 8) = v27;
          *(v25 + 16) = v26;
          *(v25 + 20) = v142;
          *(v25 + 28) = v153;
          do
          {
            v29 = *(v8 + 32);
            v8 += 32;
            v20 = v29;
          }

          while (v29 < v16);
          do
          {
            v30 = *(v25 - 32);
            v25 -= 32;
          }

          while (v30 >= v16);
        }

        while (v8 < v25);
      }

      if (v8 - 32 != a1)
      {
        *a1 = *(v8 - 32);
        *(a1 + 8) = *(v8 - 24);
        *(a1 + 12) = *(v8 - 20);
        *(a1 + 16) = *(v8 - 16);
        v31 = *(v8 - 12);
        *(a1 + 28) = *(v8 - 4);
        *(a1 + 20) = v31;
      }

      *(v8 - 32) = v16;
      *(v8 - 24) = v18;
      *(v8 - 16) = v19;
      *(v8 - 4) = v138;
      *(v8 - 12) = v135;
      if (v21 < v22)
      {
        goto LABEL_35;
      }

      v32 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,Phase::Geometry::SortPrimitivesByMortonNumber(Phase::Geometry::System &,Phase::Geometry::Mesh *,Phase::Geometry::MeshOptions::PrimitiveSortType)::$_0 &,Phase::Geometry::PrimitiveSortEntry *>(a1, v8 - 32);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,Phase::Geometry::SortPrimitivesByMortonNumber(Phase::Geometry::System &,Phase::Geometry::Mesh *,Phase::Geometry::MeshOptions::PrimitiveSortType)::$_0 &,Phase::Geometry::PrimitiveSortEntry *>(v8, a2))
      {
        a2 = v8 - 32;
        if (v32)
        {
          return;
        }

        goto LABEL_1;
      }

      if (!v32)
      {
LABEL_35:
        std::__introsort<std::_ClassicAlgPolicy,Phase::Geometry::SortPrimitivesByMortonNumber(Phase::Geometry::System &,Phase::Geometry::Mesh *,Phase::Geometry::MeshOptions::PrimitiveSortType)::$_0 &,Phase::Geometry::PrimitiveSortEntry *,false>(a1, v8 - 32, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v33 = *(a1 + 8);
      v34 = *(a1 + 16);
      v136 = *(a1 + 20);
      v139 = *(a1 + 28);
      if (v16 >= *(a2 - 32))
      {
        v36 = a1 + 32;
        do
        {
          v8 = v36;
          if (v36 >= a2)
          {
            break;
          }

          v36 += 32;
        }

        while (v16 >= *v8);
      }

      else
      {
        v8 = a1;
        do
        {
          v35 = *(v8 + 32);
          v8 += 32;
        }

        while (v16 >= v35);
      }

      v37 = a2;
      if (v8 < a2)
      {
        v37 = a2;
        do
        {
          v38 = *(v37 - 32);
          v37 -= 32;
        }

        while (v16 < v38);
      }

      if (v8 < v37)
      {
        v39 = *v8;
        do
        {
          v40 = *(v8 + 16);
          v41 = *(v8 + 8);
          v154 = *(v8 + 28);
          v143 = *(v8 + 20);
          *v8 = *v37;
          *(v8 + 8) = *(v37 + 8);
          *(v8 + 12) = *(v37 + 12);
          *(v8 + 16) = *(v37 + 16);
          v42 = *(v37 + 20);
          *(v8 + 28) = *(v37 + 28);
          *(v8 + 20) = v42;
          *v37 = v39;
          *(v37 + 8) = v41;
          *(v37 + 16) = v40;
          *(v37 + 20) = v143;
          *(v37 + 28) = v154;
          do
          {
            v43 = *(v8 + 32);
            v8 += 32;
            v39 = v43;
          }

          while (v16 >= v43);
          do
          {
            v44 = *(v37 - 32);
            v37 -= 32;
          }

          while (v16 < v44);
        }

        while (v8 < v37);
      }

      if (v8 - 32 != a1)
      {
        *a1 = *(v8 - 32);
        *(a1 + 8) = *(v8 - 24);
        *(a1 + 12) = *(v8 - 20);
        *(a1 + 16) = *(v8 - 16);
        v45 = *(v8 - 12);
        *(a1 + 28) = *(v8 - 4);
        *(a1 + 20) = v45;
      }

      a4 = 0;
      *(v8 - 32) = v16;
      *(v8 - 24) = v33;
      *(v8 - 16) = v34;
      *(v8 - 4) = v139;
      *(v8 - 12) = v136;
    }
  }

  v66 = v8 + 32;
  v68 = v8 == a2 || v66 == a2;
  if (a4)
  {
    if (!v68)
    {
      v69 = 0;
      v70 = v8;
      do
      {
        v71 = v66;
        v72 = *(v70 + 32);
        if (v72 < *v70)
        {
          v73 = *(v70 + 40);
          v74 = *(v70 + 48);
          v148 = *(v70 + 52);
          v159 = *(v70 + 60);
          v75 = *v70;
          v76 = v69;
          while (1)
          {
            v77 = v8 + v76;
            v78 = *(v8 + v76 + 8);
            *(v77 + 32) = v75;
            *(v77 + 40) = v78;
            *(v77 + 48) = *(v8 + v76 + 16);
            *(v77 + 52) = *(v8 + v76 + 20);
            *(v77 + 60) = *(v8 + v76 + 28);
            if (!v76)
            {
              break;
            }

            v75 = *(v77 - 32);
            v76 -= 32;
            if (v72 >= v75)
            {
              v79 = v8 + v76 + 32;
              goto LABEL_84;
            }
          }

          v79 = v8;
LABEL_84:
          *v79 = v72;
          *(v79 + 8) = v73;
          *(v79 + 16) = v74;
          *(v77 + 28) = v159;
          *(v77 + 20) = v148;
        }

        v66 = v71 + 32;
        v69 += 32;
        v70 = v71;
      }

      while (v71 + 32 != a2);
    }
  }

  else if (!v68)
  {
    v125 = v8 + 52;
    do
    {
      v126 = v66;
      v127 = *(a1 + 32);
      if (v127 < *a1)
      {
        v128 = *(a1 + 40);
        v129 = *(a1 + 48);
        v151 = *(a1 + 52);
        v162 = *(a1 + 60);
        v130 = *a1;
        v131 = v125;
        do
        {
          v132 = v131;
          *(v131 - 20) = v130;
          *(v131 - 12) = *(v131 - 44);
          v133 = *(v131 - 36);
          v134 = *(v131 - 32);
          v131 -= 32;
          *(v132 - 4) = v133;
          *v132 = v134;
          *(v132 + 8) = *(v132 - 24);
          v130 = *(v132 - 84);
        }

        while (v127 < v130);
        *(v131 - 20) = v127;
        *(v131 - 12) = v128;
        *(v131 - 4) = v129;
        *(v131 + 8) = v162;
        *v131 = v151;
      }

      v66 = v126 + 32;
      v125 += 32;
      a1 = v126;
    }

    while (v126 + 32 != a2);
  }
}

unint64_t *std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,Phase::Geometry::SortPrimitivesByMortonNumber(Phase::Geometry::System &,Phase::Geometry::Mesh *,Phase::Geometry::MeshOptions::PrimitiveSortType)::$_0 &,Phase::Geometry::PrimitiveSortEntry *,0>(unint64_t *result, unint64_t *a2, unint64_t *a3)
{
  v3 = *a2;
  v4 = *result;
  v5 = *a3;
  if (*a2 >= *result)
  {
    if (v5 < v3)
    {
      v9 = *(a2 + 4);
      v10 = (a2 + 20);
      v24 = *(a2 + 20);
      v28 = *(a2 + 7);
      *a2 = v5;
      v11 = a2[1];
      *(a2 + 2) = *(a3 + 2);
      *(a2 + 3) = *(a3 + 3);
      *(a2 + 4) = *(a3 + 4);
      v12 = *(a3 + 7);
      *(a2 + 20) = *(a3 + 20);
      *(a2 + 7) = v12;
      *a3 = v3;
      a3[1] = v11;
      *(a3 + 4) = v9;
      *(a3 + 20) = v24;
      *(a3 + 7) = v28;
      v13 = *result;
      if (*a2 < *result)
      {
        v14 = *(result + 4);
        v25 = *(result + 20);
        v29 = *(result + 7);
        *result = *a2;
        v15 = result[1];
        *(result + 2) = *(a2 + 2);
        *(result + 3) = *(a2 + 3);
        *(result + 4) = *(a2 + 4);
        v16 = *(a2 + 7);
        *(result + 20) = *v10;
        *(result + 7) = v16;
        *a2 = v13;
        a2[1] = v15;
        *(a2 + 4) = v14;
        *v10 = v25;
        *(a2 + 7) = v29;
      }
    }
  }

  else
  {
    if (v5 >= v3)
    {
      v17 = *(result + 2);
      v18 = *(result + 3);
      v19 = *(result + 4);
      v26 = *(result + 20);
      v30 = *(result + 7);
      *result = v3;
      *(result + 2) = *(a2 + 2);
      *(result + 3) = *(a2 + 3);
      *(result + 4) = *(a2 + 4);
      v20 = (a2 + 20);
      v21 = *(a2 + 20);
      *(result + 7) = *(a2 + 7);
      *(result + 20) = v21;
      *a2 = v4;
      *(a2 + 2) = v17;
      *(a2 + 3) = v18;
      *(a2 + 4) = v19;
      *(a2 + 20) = v26;
      *(a2 + 7) = v30;
      if (*a3 >= v4)
      {
        return result;
      }

      v23 = *v20;
      v27 = *(a2 + 7);
      *a2 = *a3;
      *(a2 + 2) = *(a3 + 2);
      *(a2 + 3) = *(a3 + 3);
      *(a2 + 4) = *(a3 + 4);
      v22 = *(a3 + 7);
      *v20 = *(a3 + 20);
      *(a2 + 7) = v22;
      *a3 = v4;
      *(a3 + 2) = v17;
      *(a3 + 3) = v18;
      *(a3 + 4) = v19;
    }

    else
    {
      v6 = *(result + 4);
      v23 = *(result + 20);
      v27 = *(result + 7);
      *result = v5;
      v7 = result[1];
      *(result + 2) = *(a3 + 2);
      *(result + 3) = *(a3 + 3);
      *(result + 4) = *(a3 + 4);
      v8 = *(a3 + 7);
      *(result + 20) = *(a3 + 20);
      *(result + 7) = v8;
      *a3 = v4;
      a3[1] = v7;
      *(a3 + 4) = v6;
    }

    *(a3 + 20) = v23;
    *(a3 + 7) = v27;
  }

  return result;
}

float std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,Phase::Geometry::SortPrimitivesByMortonNumber(Phase::Geometry::System &,Phase::Geometry::Mesh *,Phase::Geometry::MeshOptions::PrimitiveSortType)::$_0 &,Phase::Geometry::PrimitiveSortEntry *,0>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,Phase::Geometry::SortPrimitivesByMortonNumber(Phase::Geometry::System &,Phase::Geometry::Mesh *,Phase::Geometry::MeshOptions::PrimitiveSortType)::$_0 &,Phase::Geometry::PrimitiveSortEntry *,0>(a1, a2, a3);
  v11 = *a3;
  if (*a4 < *a3)
  {
    result = *(a3 + 16);
    v12 = (a3 + 20);
    v37 = *(a3 + 20);
    v44 = *(a3 + 28);
    *a3 = *a4;
    v13 = *(a3 + 8);
    *(a3 + 8) = *(a4 + 2);
    *(a3 + 12) = *(a4 + 3);
    *(a3 + 16) = *(a4 + 4);
    v14 = *(a4 + 7);
    *(a3 + 20) = *(a4 + 20);
    *(a3 + 28) = v14;
    *a4 = v11;
    a4[1] = v13;
    *(a4 + 4) = result;
    *(a4 + 20) = v37;
    *(a4 + 7) = v44;
    v15 = *a2;
    if (*a3 < *a2)
    {
      result = *(a2 + 16);
      v16 = (a2 + 20);
      v38 = *(a2 + 20);
      v45 = *(a2 + 28);
      *a2 = *a3;
      v17 = *(a2 + 8);
      *(a2 + 8) = *(a3 + 8);
      *(a2 + 12) = *(a3 + 12);
      *(a2 + 16) = *(a3 + 16);
      v18 = *(a3 + 28);
      *(a2 + 20) = *v12;
      *(a2 + 28) = v18;
      *a3 = v15;
      *(a3 + 8) = v17;
      *(a3 + 16) = result;
      *v12 = v38;
      *(a3 + 28) = v45;
      v19 = *a1;
      if (*a2 < *a1)
      {
        result = *(a1 + 16);
        v39 = *(a1 + 20);
        v46 = *(a1 + 28);
        *a1 = *a2;
        v20 = *(a1 + 8);
        *(a1 + 8) = *(a2 + 8);
        *(a1 + 12) = *(a2 + 12);
        *(a1 + 16) = *(a2 + 16);
        v21 = *(a2 + 28);
        *(a1 + 20) = *v16;
        *(a1 + 28) = v21;
        *a2 = v19;
        *(a2 + 8) = v20;
        *(a2 + 16) = result;
        *v16 = v39;
        *(a2 + 28) = v46;
      }
    }
  }

  v22 = *a4;
  if (*a5 < *a4)
  {
    result = *(a4 + 4);
    v23 = (a4 + 20);
    v40 = *(a4 + 20);
    v47 = *(a4 + 7);
    *a4 = *a5;
    v24 = a4[1];
    *(a4 + 2) = *(a5 + 2);
    *(a4 + 3) = *(a5 + 3);
    *(a4 + 4) = *(a5 + 4);
    v25 = *(a5 + 7);
    *(a4 + 20) = *(a5 + 20);
    *(a4 + 7) = v25;
    *a5 = v22;
    a5[1] = v24;
    *(a5 + 4) = result;
    *(a5 + 20) = v40;
    *(a5 + 7) = v47;
    v26 = *a3;
    if (*a4 < *a3)
    {
      result = *(a3 + 16);
      v27 = (a3 + 20);
      v41 = *(a3 + 20);
      v48 = *(a3 + 28);
      *a3 = *a4;
      v28 = *(a3 + 8);
      *(a3 + 8) = *(a4 + 2);
      *(a3 + 12) = *(a4 + 3);
      *(a3 + 16) = *(a4 + 4);
      v29 = *(a4 + 7);
      *(a3 + 20) = *v23;
      *(a3 + 28) = v29;
      *a4 = v26;
      a4[1] = v28;
      *(a4 + 4) = result;
      *v23 = v41;
      *(a4 + 7) = v48;
      v30 = *a2;
      if (*a3 < *a2)
      {
        result = *(a2 + 16);
        v31 = (a2 + 20);
        v42 = *(a2 + 20);
        v49 = *(a2 + 28);
        *a2 = *a3;
        v32 = *(a2 + 8);
        *(a2 + 8) = *(a3 + 8);
        *(a2 + 12) = *(a3 + 12);
        *(a2 + 16) = *(a3 + 16);
        v33 = *(a3 + 28);
        *(a2 + 20) = *v27;
        *(a2 + 28) = v33;
        *a3 = v30;
        *(a3 + 8) = v32;
        *(a3 + 16) = result;
        *v27 = v42;
        *(a3 + 28) = v49;
        v34 = *a1;
        if (*a2 < *a1)
        {
          result = *(a1 + 16);
          v43 = *(a1 + 20);
          v50 = *(a1 + 28);
          *a1 = *a2;
          v35 = *(a1 + 8);
          *(a1 + 8) = *(a2 + 8);
          *(a1 + 12) = *(a2 + 12);
          *(a1 + 16) = *(a2 + 16);
          v36 = *(a2 + 28);
          *(a1 + 20) = *v31;
          *(a1 + 28) = v36;
          *a2 = v34;
          *(a2 + 8) = v35;
          *(a2 + 16) = result;
          *v31 = v43;
          *(a2 + 28) = v50;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,Phase::Geometry::SortPrimitivesByMortonNumber(Phase::Geometry::System &,Phase::Geometry::Mesh *,Phase::Geometry::MeshOptions::PrimitiveSortType)::$_0 &,Phase::Geometry::PrimitiveSortEntry *>(uint64_t a1, uint64_t a2)
{
  v4 = (a2 - a1) >> 5;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,Phase::Geometry::SortPrimitivesByMortonNumber(Phase::Geometry::System &,Phase::Geometry::Mesh *,Phase::Geometry::MeshOptions::PrimitiveSortType)::$_0 &,Phase::Geometry::PrimitiveSortEntry *,0>(a1, (a1 + 32), (a2 - 32));
        break;
      case 4:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,Phase::Geometry::SortPrimitivesByMortonNumber(Phase::Geometry::System &,Phase::Geometry::Mesh *,Phase::Geometry::MeshOptions::PrimitiveSortType)::$_0 &,Phase::Geometry::PrimitiveSortEntry *,0>(a1, (a1 + 32), (a1 + 64));
        v22 = *(a2 - 32);
        v23 = *(a1 + 64);
        if (v22 < v23)
        {
          v24 = (a1 + 84);
          v25 = *(a1 + 80);
          v44 = *(a1 + 84);
          v48 = *(a1 + 92);
          *(a1 + 64) = v22;
          v26 = *(a1 + 72);
          *(a1 + 72) = *(a2 - 24);
          *(a1 + 76) = *(a2 - 20);
          *(a1 + 80) = *(a2 - 16);
          v27 = *(a2 - 4);
          *(a1 + 84) = *(a2 - 12);
          *(a1 + 92) = v27;
          *(a2 - 32) = v23;
          *(a2 - 24) = v26;
          *(a2 - 16) = v25;
          *(a2 - 12) = v44;
          *(a2 - 4) = v48;
          v28 = *(a1 + 64);
          v29 = *(a1 + 32);
          if (v28 < v29)
          {
            v30 = *(a1 + 48);
            v31 = (a1 + 52);
            v45 = *(a1 + 52);
            v49 = *(a1 + 60);
            *(a1 + 32) = v28;
            v32 = *(a1 + 72);
            v33 = *(a1 + 76);
            v34 = *(a1 + 80);
            *(a1 + 52) = *v24;
            *(a1 + 60) = *(a1 + 92);
            *(a1 + 64) = v29;
            v35 = *(a1 + 40);
            *(a1 + 40) = v32;
            *(a1 + 44) = v33;
            *(a1 + 48) = v34;
            *(a1 + 72) = v35;
            *(a1 + 80) = v30;
            *(a1 + 92) = v49;
            *v24 = v45;
            v36 = *a1;
            if (v28 < *a1)
            {
              v37 = *(a1 + 16);
              v38 = *(a1 + 20);
              v39 = *(a1 + 28);
              *a1 = v28;
              *(a1 + 16) = v34;
              *(a1 + 20) = *v31;
              *(a1 + 28) = *(a1 + 60);
              *(a1 + 32) = v36;
              v40 = *(a1 + 8);
              *(a1 + 8) = v32;
              *(a1 + 12) = v33;
              *(a1 + 40) = v40;
              *(a1 + 48) = v37;
              *(a1 + 60) = v39;
              result = 1;
              *v31 = v38;
              return result;
            }
          }
        }

        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,Phase::Geometry::SortPrimitivesByMortonNumber(Phase::Geometry::System &,Phase::Geometry::Mesh *,Phase::Geometry::MeshOptions::PrimitiveSortType)::$_0 &,Phase::Geometry::PrimitiveSortEntry *,0>(a1, a1 + 32, a1 + 64, (a1 + 96), (a2 - 32));
        break;
      default:
        goto LABEL_11;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 32);
    v6 = *a1;
    if (v5 < *a1)
    {
      v7 = *(a1 + 16);
      v42 = *(a1 + 20);
      v46 = *(a1 + 28);
      *a1 = v5;
      v8 = *(a1 + 8);
      *(a1 + 8) = *(a2 - 24);
      *(a1 + 12) = *(a2 - 20);
      *(a1 + 16) = *(a2 - 16);
      v9 = *(a2 - 4);
      *(a1 + 20) = *(a2 - 12);
      *(a1 + 28) = v9;
      *(a2 - 32) = v6;
      *(a2 - 24) = v8;
      *(a2 - 16) = v7;
      *(a2 - 12) = v42;
      *(a2 - 4) = v46;
    }

    return 1;
  }

LABEL_11:
  v10 = (a1 + 64);
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,Phase::Geometry::SortPrimitivesByMortonNumber(Phase::Geometry::System &,Phase::Geometry::Mesh *,Phase::Geometry::MeshOptions::PrimitiveSortType)::$_0 &,Phase::Geometry::PrimitiveSortEntry *,0>(a1, (a1 + 32), (a1 + 64));
  v11 = a1 + 96;
  if (a1 + 96 == a2)
  {
    return 1;
  }

  v12 = 0;
  v13 = 0;
  while (1)
  {
    v14 = *v11;
    if (*v11 < *v10)
    {
      v15 = *(v11 + 8);
      v16 = *(v11 + 16);
      v43 = *(v11 + 20);
      v47 = *(v11 + 28);
      v17 = *v10;
      v18 = v12;
      while (1)
      {
        v19 = a1 + v18;
        v20 = *(a1 + v18 + 72);
        *(v19 + 96) = v17;
        *(v19 + 104) = v20;
        *(v19 + 112) = *(a1 + v18 + 80);
        *(v19 + 116) = *(a1 + v18 + 84);
        *(v19 + 124) = *(a1 + v18 + 92);
        if (v18 == -64)
        {
          break;
        }

        v17 = *(v19 + 32);
        v18 -= 32;
        if (v14 >= v17)
        {
          v21 = a1 + v18 + 96;
          goto LABEL_19;
        }
      }

      v21 = a1;
LABEL_19:
      *v21 = v14;
      *(v21 + 8) = v15;
      *(v21 + 16) = v16;
      *(v19 + 84) = v43;
      *(v19 + 92) = v47;
      if (++v13 == 8)
      {
        return v11 + 32 == a2;
      }
    }

    v10 = v11;
    v12 += 32;
    v11 += 32;
    if (v11 == a2)
    {
      return 1;
    }
  }
}

void std::__shared_ptr_emplace<Phase::Geometry::Shape>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284D343D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EE864A0);
}

void std::__shared_ptr_emplace<Phase::Geometry::Shape>::__on_zero_shared(uint64_t a1)
{
  v3 = (a1 + 144);
  std::vector<std::unique_ptr<Phase::Geometry::DataMap,std::function<void ()(void *)>>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (a1 + 120);
  std::vector<std::shared_ptr<Phase::Geometry::MpsCpuScene>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(a1 + 96);
  if (v2)
  {
    *(a1 + 104) = v2;
    operator delete(v2);
  }
}

uint64_t Phase::Geometry::MdlMeshReader::GetVertexIndex<unsigned int>(id **a1, uint64_t a2, uint64_t a3)
{
  Submesh = Phase::MdlMeshAsset::GetSubmesh(a1, a2);
  result = Phase::MdlMeshAsset::Submesh::GetIndexBufferFormat(&Submesh);
  if (result > 1)
  {
    if (result == 2)
    {
      return *(Phase::MdlMeshAsset::Submesh::GetIndexBuffer(&Submesh) + 2 * a3);
    }

    else
    {
      return *(Phase::MdlMeshAsset::Submesh::GetIndexBuffer(&Submesh) + 4 * a3);
    }
  }

  else if (result)
  {
    return *(Phase::MdlMeshAsset::Submesh::GetIndexBuffer(&Submesh) + a3);
  }

  return result;
}

float Phase::UnnormalizedNormalCCW<float>@<S0>(float *a1@<X0>, float *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3] - *a1;
  v5 = a1[6] - *a1;
  v6 = a1[4] - v2;
  v7 = a1[5] - v3;
  v8 = a1[7] - v2;
  v9 = a1[8] - v3;
  v10 = (v6 * v9) - (v7 * v8);
  v11 = (v7 * v5) - (v4 * v9);
  result = (v4 * v8) - (v6 * v5);
  *a2 = v10;
  a2[1] = v11;
  a2[2] = result;
  return result;
}

void *std::__shared_ptr_emplace<Phase::Geometry::Shape>::__shared_ptr_emplace[abi:ne200100]<Phase::Geometry::Shape&,std::vector<unsigned int> &,std::allocator<Phase::Geometry::Shape>,0>(void *a1, uint64_t a2, uint64_t a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284D343D8;
  Phase::Geometry::Shape::Shape((a1 + 3), a2, a3);
  return a1;
}

uint64_t Phase::Geometry::Shape::Shape(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);
  v6 = *(a2 + 60);
  *(a1 + 72) = 0;
  v7 = a1 + 72;
  *(a1 + 60) = v6;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1 + 72, *(a2 + 72), *(a2 + 80), (*(a2 + 80) - *(a2 + 72)) >> 2);
  v8 = Phase::Geometry::DataSet::DataSet((v7 + 24), (a2 + 96), a3);
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = v8;
  *(a1 + 152) = *(a2 + 152);
  return a1;
}

void sub_23A3F4D18(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 80) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *Phase::Geometry::DataSet::DataSet(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v7 = *a2;
  v6 = a2[1];
  v8 = (v6 - *a2) >> 4;
  std::vector<std::shared_ptr<Phase::Geometry::SharedDataStream>>::resize(a1, v8);
  if (v6 != v7)
  {
    v9 = 0;
    if (v8 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v8;
    }

    do
    {
      v11 = *a2 + 16 * v9;
      v12 = *v11;
      v13 = *a3;
      v14 = *(a3 + 8);
      if (*a3 != v14)
      {
        while (*v13 != *v12)
        {
          if (++v13 == v14)
          {
            goto LABEL_11;
          }
        }
      }

      if (v13 != v14)
      {
        operator new();
      }

LABEL_11:
      v15 = *a1;
      v16 = *(v11 + 8);
      if (v16)
      {
        atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
      }

      v17 = (v15 + 16 * v9);
      v18 = v17[1];
      *v17 = v12;
      v17[1] = v16;
      if (v18)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v18);
      }

      ++v9;
    }

    while (v9 != v10);
  }

  return a1;
}