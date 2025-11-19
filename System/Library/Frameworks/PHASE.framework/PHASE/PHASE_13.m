void sub_23A3F4EB0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::shared_ptr<Phase::Geometry::MpsCpuScene>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t Phase::Geometry::DataStream::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(a2 + 32);
  *(a1 + 32) = v6;
  v7 = v6 * v5;
  Phase::Geometry::DataStream::Alloc(v4, v6 * v5, &v12);
  v8 = v12;
  v12 = 0;
  v9 = *(a1 + 8);
  *(a1 + 8) = v8;
  if (v9)
  {
    MEMORY[0x23EE86470](v9, 0x1000C8077774924);
    v10 = v12;
    v12 = 0;
    if (v10)
    {
      MEMORY[0x23EE86470](v10, 0x1000C8077774924);
    }
  }

  if (v7)
  {
    memcpy(*(a1 + 8), *(a2 + 8), v7);
  }

  return a1;
}

void Phase::Geometry::GenerateProjectedTriangleWeights(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, Phase::Logger *a7, int a8)
{
  v44 = *MEMORY[0x277D85DE8];
  if (a7)
  {
    v39 = a7;
    *v38 = 4;
    *&v36 = a2;
    *(&v36 + 1) = &v39;
    v37 = v38;
    v35 = a2;
    Phase::details::AllocArray<float,std::unique_ptr<float [],std::function<void ()(void *)>> Phase::details::AllocArray<float,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<float [],std::function<void ()(void *)>> Phase::details::AllocArray<float,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(float*)#1} const&>(a7, &v36, &v35, &v41);
    v15 = v41;
    *&v41 = 0;
    *a1 = v15;
    std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100]((a1 + 1), &v41 + 8);
    a1[5] = a7;
    std::unique_ptr<float [],std::function<void ()(void *)>>::reset[abi:ne200100](&v41);
    std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&v41 + 8);
    v16 = 0;
    v17 = (a4 + 8);
    v18 = (a6 + 8);
    v19 = 0.0;
    do
    {
      v20 = a5 + 12 * *(v18 - 2);
      v21 = a5 + 12 * *(v18 - 1);
      *&v22 = *v20;
      DWORD2(v22) = *(v20 + 8);
      v23 = a5 + 12 * *v18;
      HIDWORD(v22) = *v21;
      *&v24 = *(v21 + 4);
      *(&v24 + 1) = *v23;
      v41 = v22;
      v42 = v24;
      v43 = *(v23 + 8);
      if (!a8 || (v39 = *(v17 - 1), v40 = *v17, Phase::operator*<float>(a3, &v39, v38), Phase::operator*<float>(a3, &v41, &v36), v25 = *(a3 + 28), v26 = (v25 * *&v36) + *(a3 + 16), v27 = vmul_f32(vadd_f32(vmul_n_f32(*(&v36 + 4), v25), *(a3 + 20)), *&v38[4]), (((v26 * *v38) + v27.f32[0]) + v27.f32[1]) <= 0.0))
      {
        Phase::Geometry::sProjectPointOntoSphere(&v36, &v41, a3);
        Phase::Geometry::sProjectPointOntoSphere(&v39, (&v41 | 0xC), a3);
        Phase::Geometry::sProjectPointOntoSphere(v38, &v42 + 2, a3);
        v28 = vsub_f32(v39, *&v36);
        v29 = vsub_f32(*&v38[4], *(&v36 + 4));
        v30 = vmuls_lane_f32(-v28.f32[0], v29, 1) + ((v40 - *(&v36 + 2)) * (*v38 - *&v36));
        v31.i32[0] = vdup_lane_s32(v28, 1).u32[0];
        v31.f32[1] = v40 - *(&v36 + 2);
        v32 = vdup_lane_s32(v29, 0);
        v32.f32[0] = *v38 - *&v36;
        v33 = vmul_f32(vmla_f32(vmul_f32(v32, vneg_f32(v31)), v29, v28), 0x3F0000003F000000);
        v34 = vmul_f32(v33, v33);
        v19 = v19 + sqrtf(v34.f32[0] + (v34.f32[1] + ((v30 * 0.5) * (v30 * 0.5))));
      }

      v18 += 3;
      *(*a1 + 4 * v16) = v19;
      v16 = (v16 + 1);
      v17 += 3;
    }

    while (a7 != v16);
  }

  else
  {
    *a1 = 0;
    a1[4] = 0;
    a1[5] = 0;
  }
}

uint64_t Phase::Geometry::GetTriangles(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v104 = a2;
  v9 = result;
  v112[4] = *MEMORY[0x277D85DE8];
  if (a6 == 1)
  {
    if (!a5)
    {
      goto LABEL_71;
    }

    v10 = 0;
    v11 = 0;
    v12 = 0.0;
    do
    {
      v13 = a4 + 72 * v11;
      v14 = *(v13 + 64);
      if (v14)
      {
        v15 = *(v13 + 8);
        do
        {
          v16 = *v15++;
          v17 = v16;
          if (v16 > v12)
          {
            ++v10;
          }

          v12 = v17;
          --v14;
        }

        while (v14);
      }

      else
      {
        v17 = v12;
      }

      ++v11;
      v12 = v17;
    }

    while (v11 != a5);
    if (v10 >= 1)
    {
      v111 = *(v104 + 1072);
      Phase::details::AllocArray<Phase::ManagedArray<Phase::Triangle<float>>,std::unique_ptr<Phase::ManagedArray<Phase::Triangle<float>> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::ManagedArray<Phase::Triangle<float>>,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::ManagedArray<Phase::Triangle<float>> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::ManagedArray<Phase::Triangle<float>>,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(Phase::ManagedArray<Phase::Triangle<float>>*)#1} const&>(&v108, 1, 1, 8uLL, &v111);
      v19 = (v104 + 1072);
      v20 = v108;
      v108 = 0;
      *v9 = v20;
      std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](v9 + 8, v109);
      *(v9 + 40) = 1;
      std::unique_ptr<Phase::ManagedArray<Phase::Triangle<float>> [],std::function<void ()(void *)>>::reset[abi:ne200100](&v108);
      std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v109);
      v21 = *v19;
      v106 = 4;
      v107 = v10;
      v105 = v21;
      Phase::details::AllocArray<Phase::Triangle<float>,std::unique_ptr<Phase::Triangle<float> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Triangle<float>,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::Triangle<float> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Triangle<float>,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(Phase::Triangle<float>*)#1} const&>(&v111, v10, &v107, &v106, &v105);
      v22 = v111;
      v111 = 0;
      v108 = v22;
      std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](v109, v112);
      v110 = v10;
      std::unique_ptr<Phase::Triangle<float> [],std::function<void ()(void *)>>::reset[abi:ne200100](&v111);
      std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v112);
      v23 = std::unique_ptr<Phase::Triangle<float> [],std::function<void ()(void *)>>::operator=[abi:ne200100](*v9, &v108);
      v23[5] = v110;
      std::unique_ptr<Phase::Triangle<float> [],std::function<void ()(void *)>>::reset[abi:ne200100](&v108);
      result = std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v109);
      v24 = 0;
      v25 = 0;
      v26 = 0.0;
      do
      {
        v27 = (a4 + 72 * v25);
        v28 = v27[8];
        if (v28)
        {
          v29 = 0;
          v30 = v27[1];
          v31 = *v9;
          do
          {
            v32 = v26;
            v26 = *v30;
            if (*v30 > v32)
            {
              v33 = (*v27 + v29);
              v34 = a3 + 12 * *v33;
              v35 = a3 + 12 * v33[1];
              v36 = (a3 + 12 * v33[2]);
              *&v37 = *v34;
              DWORD2(v37) = *(v34 + 8);
              HIDWORD(v37) = *v35;
              *&v38 = *(v35 + 4);
              v39 = *v36;
              v40 = *(v36 + 2);
              result = *v31 + 36 * v24++;
              *(&v38 + 1) = v39;
              *result = v37;
              *(result + 16) = v38;
              *(result + 32) = v40;
            }

            v29 += 12;
            ++v30;
            --v28;
          }

          while (v28);
        }

        ++v25;
      }

      while (v25 != a5);
    }

    else
    {
LABEL_71:
      *result = 0;
      *(result + 32) = 0;
      *(result + 40) = 0;
    }

    return result;
  }

  v42 = *(a4 + 72 * a5 - 12);
  MEMORY[0x28223BE20](result);
  v44 = &v101 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v44, v43);
  v45 = v42 / a6;
  if (a5)
  {
    v46 = 0;
    v47 = 0;
    v48 = 0.0;
    do
    {
      v49 = a4 + 72 * v47;
      v50 = *(v49 + 64);
      if (v50)
      {
        v51 = 0;
        v52 = *(v49 + 8);
        do
        {
          v53 = v48;
          v48 = *(v52 + 4 * v51);
          if (v48 > v53)
          {
            ++*&v44[4 * v46];
            if (v46 + 1 < a6)
            {
              v54 = v45 * (v46 + 1);
              v55 = v45 * (v46 + 2);
              if (v54 <= v48)
              {
                ++v46;
                v54 = v55;
              }

              if (v54 <= v48)
              {
                v56 = v46;
                v57 = v46 + 2;
                while (1)
                {
                  v58 = v56 + 1;
                  if (v56 + 1 >= a6)
                  {
                    break;
                  }

                  ++*&v44[4 * v56];
                  v59 = v45 * v57++;
                  ++v56;
                  if (v59 > v48)
                  {
                    goto LABEL_35;
                  }
                }

                v58 = v56;
LABEL_35:
                v46 = v58;
              }
            }
          }

          ++v51;
        }

        while (v51 != v50);
      }

      ++v47;
    }

    while (v47 != a5);
  }

  v103 = a4;
  v111 = *(v104 + 1072);
  Phase::details::AllocArray<Phase::ManagedArray<Phase::Triangle<float>>,std::unique_ptr<Phase::ManagedArray<Phase::Triangle<float>> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::ManagedArray<Phase::Triangle<float>>,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::ManagedArray<Phase::Triangle<float>> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::ManagedArray<Phase::Triangle<float>>,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(Phase::ManagedArray<Phase::Triangle<float>>*)#1} const&>(&v108, a6, a6, 8uLL, &v111);
  v60 = v108;
  v108 = 0;
  *v9 = v60;
  v101 = v9 + 8;
  v102 = a5;
  std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](v9 + 8, v109);
  v61 = v9;
  *(v9 + 40) = a6;
  std::unique_ptr<Phase::ManagedArray<Phase::Triangle<float>> [],std::function<void ()(void *)>>::reset[abi:ne200100](&v108);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v109);
  v62 = 0;
  v63 = 40;
  do
  {
    v64 = *(v104 + 1072);
    v65 = *&v44[4 * v62];
    v106 = 4;
    v107 = v65;
    v105 = v64;
    Phase::details::AllocArray<Phase::Triangle<float>,std::unique_ptr<Phase::Triangle<float> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Triangle<float>,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::Triangle<float> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Triangle<float>,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(Phase::Triangle<float>*)#1} const&>(&v111, v65, &v107, &v106, &v105);
    v66 = v111;
    v111 = 0;
    v108 = v66;
    std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](v109, v112);
    v110 = v65;
    std::unique_ptr<Phase::Triangle<float> [],std::function<void ()(void *)>>::reset[abi:ne200100](&v111);
    std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v112);
    v67 = (*v61 + v63);
    std::unique_ptr<Phase::Triangle<float> [],std::function<void ()(void *)>>::operator=[abi:ne200100](v67 - 5, &v108);
    *v67 = v110;
    std::unique_ptr<Phase::Triangle<float> [],std::function<void ()(void *)>>::reset[abi:ne200100](&v108);
    result = std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v109);
    ++v62;
    v63 += 48;
  }

  while (a6 != v62);
  v68 = v102;
  v69 = v103;
  if (v102)
  {
    v70 = 0;
    v71 = 0;
    v72 = 0;
    v73 = 0;
    v74 = 0.0;
    while (1)
    {
      v75 = (v69 + 72 * v73);
      v76 = v75[8];
      if (v76)
      {
        break;
      }

      v91 = v72;
LABEL_69:
      ++v73;
      v72 = v91;
      if (v73 == v68)
      {
        return result;
      }
    }

    v77 = 0;
    v78 = v75[1];
    result = *v61;
    while (1)
    {
      v79 = v74;
      v74 = *(v78 + 4 * v77);
      if (v74 > v79)
      {
        v80 = v71 == v72;
        v81 = (*v75 + 12 * v77);
        v82 = v81[1];
        v83 = v81[2];
        v84 = a3 + 12 * *v81;
        v85 = a3 + 12 * v82;
        if (v80)
        {
          v87 = v70;
        }

        else
        {
          v87 = 0;
        }

        v88 = a3 + 12 * v83;
        *&v89 = *(v85 + 4);
        v90 = *(v88 + 8);
        v70 = v87 + 1;
        v91 = *(result + 48 * v72) + 36 * v87;
        *(&v89 + 1) = *v88;
        HIDWORD(v86) = *v85;
        DWORD2(v86) = *(v84 + 8);
        *&v86 = *v84;
        *v91 = v86;
        *(v91 + 16) = v89;
        *(v91 + 32) = v90;
        LODWORD(v91) = v72 + 1;
        if (v72 + 1 < a6)
        {
          v92 = v45 * v91;
          if (v92 <= v74)
          {
            v91 = v91;
          }

          else
          {
            v91 = v72;
          }

          if (v92 <= v74)
          {
            v92 = v45 * (v72 + 2);
          }

          if (v92 <= v74)
          {
            v93 = (result + 48 * v91);
            v94 = v91 + 1;
            while (1)
            {
              v95 = v91;
              if (v94 >= a6)
              {
                break;
              }

              if (v91 == v72)
              {
                v96 = v70;
              }

              else
              {
                v96 = 0;
              }

              *&v97 = *v84;
              DWORD2(v97) = *(v84 + 8);
              HIDWORD(v97) = *v85;
              *&v98 = *(v85 + 4);
              v99 = *(v88 + 8);
              v70 = v96 + 1;
              v100 = *v93;
              v93 += 6;
              *(&v98 + 1) = *v88;
              v72 = v100 + 36 * v96;
              *v72 = v97;
              *(v72 + 16) = v98;
              *(v72 + 32) = v99;
              *&v97 = v45 * (v91 + 2);
              v91 = (v91 + 1);
              ++v94;
              LODWORD(v72) = v95;
              if (*&v97 > v74)
              {
                v71 = v91 - 1;
                goto LABEL_58;
              }
            }

            v71 = v72;
          }

          else
          {
            v71 = v72;
          }

          goto LABEL_58;
        }

        v71 = v72;
      }

      v91 = v72;
LABEL_58:
      ++v77;
      v72 = v91;
      if (v77 == v76)
      {
        goto LABEL_69;
      }
    }
  }

  return result;
}

void sub_23A3F58D0(_Unwind_Exception *a1)
{
  *(v3 - 256) = v1;
  std::unique_ptr<Phase::ManagedArray<Phase::Triangle<float>> [],std::function<void ()(void *)>>::reset[abi:ne200100](v2);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](*(v3 - 256));
  _Unwind_Resume(a1);
}

uint64_t Phase::Geometry::GeneratePoints(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, int *a6, uint64_t *a7)
{
  v12 = result;
  v101[5] = *MEMORY[0x277D85DE8];
  v13 = *(a4 + 72 * a5 - 12);
  v14 = a6[1];
  if (v14 <= 0)
  {
    if (v13 < 0.0001)
    {
      goto LABEL_9;
    }

    if (v13 <= 0.1)
    {
      v82 = a7;
      v101[0] = &unk_284D31618;
      v101[3] = v101;
      __asm { FMOV            V0.2S, #1.0 }

      v100 = _D0;
      v98 = &unk_284D31660;
      v99[0] = Phase::CurveFunction::Squared<float>;
      v99[2] = &v98;
      std::__function::__value_func<float ()(float)>::swap[abi:ne200100](&v98, v101);
      std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](&v98);
      v88 = *a6;
      LODWORD(v93) = 0;
      *(&v93 + 1) = v88;
      Phase::Envelope<float>::Envelope(&v98, &v93, &v100);
      v14 = vcvtas_u32_f32(Phase::Envelope<float>::operator()(&v98, (0.1 - v13) / 0.0999));
      v93 = &v98;
      std::vector<Phase::Envelope<float>::SegmentInternal,std::allocator<Phase::Envelope<float>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](&v93);
      result = std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v101);
      a7 = v82;
    }

    else
    {
      v14 = *a6;
    }
  }

  if (v14 <= 1)
  {
LABEL_9:
    *v12 = 0;
    v12[4] = 0;
    v12[5] = 0;
    return result;
  }

  v90 = a7;
  v91 = a4;
  v15 = *(a6 + 3);
  v16 = *(a2 + 1072);
  v96 = 4;
  v97 = v14;
  v93 = v16;
  v94 = &v97;
  v95 = &v96;
  v92 = v16;
  Phase::details::AllocArray<float,std::unique_ptr<float [],std::function<void ()(void *)>> Phase::details::AllocArray<float,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<float [],std::function<void ()(void *)>> Phase::details::AllocArray<float,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(float*)#1} const&>(v14, &v93, &v92, &v98);
  v17 = 0x7ABA4977B4617663;
  v18 = v98;
  v19 = 0x5BC180D1366118D2;
  v98 = 0;
  v100 = v18;
  std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](v101, v99);
  v101[4] = v14;
  std::unique_ptr<float [],std::function<void ()(void *)>>::reset[abi:ne200100](&v98);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v99);
  v89 = a2;
  if (a6[2])
  {
    v20 = v13 / v14;
    v21 = 0.0;
    if (*(a6 + 9) == 1 && (v22 = a6[3], v22 >= 1))
    {
      v23 = v20 / v22;
      v24 = a6[4];
      if (v24 >= 1)
      {
        v21 = v23 * v24;
      }
    }

    else
    {
      v23 = v13 / v14;
    }

    if (v14 >= 1)
    {
      v32 = 0;
      v33 = v100;
      do
      {
        if (v15)
        {
          v34 = *(v15 + 24);
          v35 = *(v15 + 28) - v34;
          v37 = *v15;
          v36 = *(v15 + 8);
          *v15 = v36;
        }

        else
        {
          v34 = 0.0;
          v35 = 1.0;
          v36 = v17;
          v37 = v19;
          v19 = v17;
        }

        v38 = (v36 >> 26) ^ ((v37 ^ (v37 << 23)) >> 17) ^ v36 ^ v37 ^ (v37 << 23);
        if (v15)
        {
          *(v15 + 8) = v38;
        }

        else
        {
          v17 = v38;
        }

        v39 = (v21 + (v20 * v32)) + (v23 * (v34 + (v35 * vcvts_n_f32_u64(v38 + v36, 0x40uLL))));
        if (v39 >= (v13 * 1.01))
        {
          __assert_rtn("GeneratePoints", "GeoMeshUtility.cpp", 416, "value < totalMeshWeight * 1.01f");
        }

        if (v39 >= v13)
        {
          v39 = nextafterf(v13, v13 + -1.0);
        }

        *(v33 + 4 * v32++) = v39;
      }

      while ((v14 & 0x7FFFFFFF) != v32);
    }
  }

  else
  {
    v25 = 0;
    v26 = v100;
    do
    {
      if (v15)
      {
        v27 = *(v15 + 24);
        v28 = *(v15 + 28) - v27;
        v30 = *v15;
        v29 = *(v15 + 8);
        *v15 = v29;
      }

      else
      {
        v27 = 0.0;
        v28 = 1.0;
        v29 = v17;
        v30 = v19;
        v19 = v17;
      }

      v31 = (v29 >> 26) ^ ((v30 ^ (v30 << 23)) >> 17) ^ v29 ^ v30 ^ (v30 << 23);
      if (v15)
      {
        *(v15 + 8) = v31;
      }

      else
      {
        v17 = v31;
      }

      *(v26 + 4 * v25++) = v13 * (v27 + (v28 * vcvts_n_f32_u64(v31 + v29, 0x40uLL)));
    }

    while (v14 != v25);
    std::__sort<std::__less<float,float> &,float *>();
  }

  if (v90)
  {
    if (*(a6 + 8))
    {
      v40 = v14;
    }

    else
    {
      v40 = 1;
    }

    Phase::Geometry::GetTriangles(&v98, v89, a3, v91, a5, v40);
    v41 = v98;
    v98 = 0;
    v42 = *v90;
    *v90 = v41;
    if (v42)
    {
      std::function<void ()(void *)>::operator()((v90 + 1), v42);
    }

    std::__function::__value_func<void ()(void *)>::operator=[abi:ne200100]((v90 + 1), v99);
    v90[5] = v99[4];
    std::unique_ptr<Phase::ManagedArray<Phase::Triangle<float>> [],std::function<void ()(void *)>>::reset[abi:ne200100](&v98);
    std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v99);
  }

  v43 = *(v89 + 1072);
  v96 = 4;
  v97 = v14;
  v93 = v43;
  v94 = &v97;
  v95 = &v96;
  v92 = v43;
  Phase::details::AllocArray<Phase::Vector<float,3ul>,std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Vector<float,3ul>,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Vector<float,3ul>,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(Phase::Vector<float,3ul>*)#1} const&>(v14, &v93, &v92, &v98);
  v44 = v98;
  v98 = 0;
  *v12 = v44;
  std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100]((v12 + 1), v99);
  v12[5] = v14;
  std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::reset[abi:ne200100](&v98);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v99);
  if (a5)
  {
    v45 = 0;
    v46 = 0;
    v47 = 0.0;
    do
    {
      v48 = (v91 + 72 * v45);
      v49 = v48[8];
      v50 = v46;
      if (v49)
      {
        v51 = v14 > v46;
      }

      else
      {
        v51 = 0;
      }

      if (v51)
      {
        v52 = 0;
        v53 = v48[1];
        v54 = v100;
        v55 = v47;
        do
        {
          v47 = *(v53 + 4 * v52);
          v50 = v46;
          if (v14 > v46)
          {
            v56 = (*v12 + 12 * v46 + 8);
            while (1)
            {
              v57 = *(v54 + 4 * v50);
              if (v57 >= *(v53 + 4 * v52))
              {
                break;
              }

              if (v15)
              {
                v58 = *(v15 + 24);
                v59 = *(v15 + 28) - v58;
                v61 = *v15;
                v60 = *(v15 + 8);
              }

              else
              {
                v59 = 1.0;
                v58 = 0.0;
                v61 = v19;
                v60 = v17;
              }

              v62 = (*v48 + 12 * v52);
              v63 = (a3 + 12 * *v62);
              v64 = (a3 + 12 * v62[1]);
              v65 = (a3 + 12 * v62[2]);
              v66 = v63[1].f32[0];
              v67 = v64[1].f32[0];
              v68 = *v63;
              v69 = *v64;
              v70 = *v65;
              v71 = v65[1].f32[0];
              v72 = ((v61 ^ (v61 << 23)) >> 17) ^ (v60 >> 26) ^ v61 ^ (v61 << 23) ^ v60;
              if (v15)
              {
                *v15 = v72;
              }

              else
              {
                v19 = v72;
              }

              v73 = ((v60 ^ (v60 << 23)) >> 17) ^ (v72 >> 26) ^ v60 ^ (v60 << 23) ^ v72;
              if (v15)
              {
                *(v15 + 8) = v73;
              }

              else
              {
                v17 = ((v60 ^ (v60 << 23)) >> 17) ^ (v72 >> 26) ^ v60 ^ (v60 << 23) ^ v72;
              }

              v74 = ((v57 - v55) / (v47 - v55)) * 1000.0;
              v75 = floorf(v74);
              v76 = floorf((v74 - v75) * 1000.0);
              v77 = v75 + (v58 + (v59 * vcvts_n_f32_u64(v72 + v60, 0x40uLL)));
              v78 = (v76 + (v58 + (v59 * vcvts_n_f32_u64(v73 + v72, 0x40uLL)))) / 1000.0;
              v79 = sqrtf(v77 / 1000.0);
              v80 = v79 * (1.0 - v78);
              v81 = v79 * v78;
              ++v50;
              *(v56 - 1) = vadd_f32(vmul_n_f32(v70, v81), vadd_f32(vmul_n_f32(v68, 1.0 - v79), vmul_n_f32(v69, v80)));
              *v56 = (v71 * v81) + ((v66 * (1.0 - v79)) + (v67 * v80));
              v56 += 3;
              if (v14 == v50)
              {
                LODWORD(v50) = v14;
                break;
              }
            }

            v46 = v50;
            v50 = v50;
          }

          if (++v52 >= v49)
          {
            break;
          }

          v55 = v47;
        }

        while (v14 > v50);
      }

      ++v45;
    }

    while (v45 < a5 && v14 > v50);
  }

  else
  {
    v50 = 0;
  }

  if (v14 != v50)
  {
    __assert_rtn("GeneratePoints", "GeoMeshUtility.cpp", 470, "pointIndex == pointCount");
  }

  std::unique_ptr<float [],std::function<void ()(void *)>>::reset[abi:ne200100](&v100);
  return std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v101);
}

void sub_23A3F605C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::vector<Phase::Envelope<float>::SegmentInternal,std::allocator<Phase::Envelope<float>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](va);
  std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v6);
  _Unwind_Resume(a1);
}

uint64_t Phase::Geometry::CreatePointCloudLoD@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X5>, void *a6@<X8>)
{
  v55 = *MEMORY[0x277D85DE8];
  if (*(a4 + 20) != 1)
  {
    __assert_rtn("CreatePointCloudLoD", "GeoMeshUtility.cpp", 551, "true == inOptions.mProjectIntoListenerSpace");
  }

  v8 = *(**(a2 + 48) + 16 * *(a2 + 56));
  v9 = v8[3];
  if (!v9)
  {
    goto LABEL_9;
  }

  v13 = result;
  v14 = 0;
  v15 = v8[1];
  v16 = v8[4];
  v17 = (v15 + 40);
  v18 = v9;
  do
  {
    v14 += *(*(**(v17 - 1) + 16 * *v17) + 24) / 3uLL;
    v17 = (v17 + v16);
    --v18;
  }

  while (v18);
  if (v14)
  {
    if (v14 < 0x2711)
    {
      v25 = *(*(**(a2 + 16) + 16 * *(a2 + 24)) + 8);
      v26 = *(result + 1072);
      v27 = 72 * v9;
      if (72 * v9)
      {
        v27 = operator new(v27, 8uLL);
      }

      v28 = v27;
      do
      {
        *v28 = 0;
        *(v28 + 8) = 0;
        *(v28 + 40) = 0uLL;
        *(v28 + 56) = 0uLL;
        v28 += 72;
      }

      while (v28 != v27 + 72 * v9);
      v34 = &unk_284D344A0;
      v35 = v9;
      v36[0] = v26;
      v36[1] = &v34;
      *v47 = v27;
      std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](&v47[8], &v34);
      std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&v34);
      v29 = *v47;
      *v47 = 0;
      *&v39[0] = v29;
      std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](v39 + 8, &v47[8]);
      *(&v40 + 1) = v9;
      std::unique_ptr<Phase::Geometry::SubmeshInfo [],std::function<void ()(void *)>>::reset[abi:ne200100](v47);
      std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&v47[8]);
      *v47 = v9;
      *&v47[8] = v39;
      *&v47[16] = v25;
      *&v47[24] = a2;
      *&v47[32] = v13;
      *&v48 = a3;
      if (Phase::Geometry::CreatePointCloudLoD(Phase::Geometry::SystemState &,Phase::Geometry::Mesh const&,Phase::Affine<float> const&,Phase::Affine<float> const&,Phase::Geometry::PointCloudOptions const&,Phase::Geometry::PointCloudDebugOutput)::$_0::operator()(v47, *(a4 + 21)) > 0.0 || *(a4 + 21) == 1 && Phase::Geometry::CreatePointCloudLoD(Phase::Geometry::SystemState &,Phase::Geometry::Mesh const&,Phase::Affine<float> const&,Phase::Affine<float> const&,Phase::Geometry::PointCloudOptions const&,Phase::Geometry::PointCloudDebugOutput)::$_0::operator()(v47, 0) > 0.0)
      {
        Phase::Geometry::GeneratePoints(a6, v13, v25, *&v39[0], *(*(**(a2 + 48) + 16 * *(a2 + 56)) + 24), a4, a5);
      }

      else
      {
        *a6 = 0;
        a6[4] = 0;
        a6[5] = 0;
      }

      std::unique_ptr<Phase::Geometry::SubmeshInfo [],std::function<void ()(void *)>>::reset[abi:ne200100](v39);
      v30 = v39 + 8;
    }

    else
    {
      v19 = *(a2 + 8);
      v20 = *(v19 + 24);
      *&v21 = *(v19 + 28);
      *&v22 = v21;
      DWORD2(v22) = *(v19 + 36);
      HIDWORD(v22) = v21;
      *&v47[4] = v22;
      LODWORD(v22) = vdup_lane_s32(*&v21, 1).u32[0];
      *&v23 = __PAIR64__(DWORD2(v22), v22);
      *v47 = v20;
      *&v47[36] = v20;
      v50 = DWORD2(v22);
      v53 = v20;
      v24 = *(v19 + 40);
      *(&v23 + 1) = __PAIR64__(v22, v24.u32[0]);
      *&v47[20] = v23;
      *&v23 = __PAIR64__(DWORD1(v21), v24.u32[0]);
      *(&v23 + 1) = __PAIR64__(vdup_lane_s32(*&v21, 0).u32[1], v20);
      v49 = v24.i32[1];
      DWORD1(v21) = v24.i32[1];
      v48 = v23;
      *(&v21 + 1) = __PAIR64__(vdup_lane_s32(v24, 0).u32[1], DWORD2(v22));
      v51 = v21;
      v52 = v24.i32[1];
      v54 = v24;
      v43 = unk_23A555884;
      v44 = xmmword_23A555894;
      v45 = unk_23A5558A4;
      v46 = xmmword_23A5558B4;
      v39[1] = unk_23A555844;
      v40 = xmmword_23A555854;
      v41 = unk_23A555864;
      v42 = xmmword_23A555874;
      v34 = 0;
      v35 = 0;
      v37 = 0u;
      v38 = 0u;
      v39[0] = xmmword_23A555834;
      Phase::Geometry::GenerateProjectedTriangleWeights(&v31, *(result + 1072), a3, &unk_23A5558C4, v47, v39, 0xC, *(a4 + 21));
      std::unique_ptr<float [],std::function<void ()(void *)>>::operator=[abi:ne200100](&v35, &v31);
      *(&v37 + 1) = v33;
      std::unique_ptr<float [],std::function<void ()(void *)>>::reset[abi:ne200100](&v31);
      std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v32);
      if (*(&v37 + 1))
      {
        goto LABEL_8;
      }

      if (*(a4 + 21) != 1)
      {
        goto LABEL_23;
      }

      if (*(a4 + 20) != 1)
      {
        __assert_rtn("GenerateTriangleWeights", "GeoMeshUtility.cpp", 164, "false");
      }

      Phase::Geometry::GenerateProjectedTriangleWeights(&v31, *(v13 + 1072), a3, &unk_23A5558C4, v47, v39, 0xC, 0);
      std::unique_ptr<float [],std::function<void ()(void *)>>::operator=[abi:ne200100](&v35, &v31);
      *(&v37 + 1) = v33;
      std::unique_ptr<float [],std::function<void ()(void *)>>::reset[abi:ne200100](&v31);
      std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v32);
      if (*(&v37 + 1))
      {
LABEL_8:
        v34 = v39;
        LODWORD(v38) = 0;
        DWORD1(v38) = *(v35 + 44);
        *(&v38 + 1) = 12;
        Phase::Geometry::GeneratePoints(a6, v13, v47, &v34, 1uLL, a4, a5);
      }

      else
      {
LABEL_23:
        *a6 = 0;
        a6[4] = 0;
        a6[5] = 0;
      }

      std::unique_ptr<float [],std::function<void ()(void *)>>::reset[abi:ne200100](&v35);
      v30 = v36;
    }

    return std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v30);
  }

  else
  {
LABEL_9:
    *a6 = 0;
    a6[4] = 0;
    a6[5] = 0;
  }

  return result;
}

void sub_23A3F6590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  std::unique_ptr<float [],std::function<void ()(void *)>>::reset[abi:ne200100](va);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

float Phase::Geometry::CreatePointCloudLoD(Phase::Geometry::SystemState &,Phase::Geometry::Mesh const&,Phase::Affine<float> const&,Phase::Affine<float> const&,Phase::Geometry::PointCloudOptions const&,Phase::Geometry::PointCloudDebugOutput)::$_0::operator()(uint64_t a1, int a2)
{
  v19[5] = *MEMORY[0x277D85DE8];
  if (!*a1)
  {
    return 0.0;
  }

  v4 = 0;
  v5 = 0;
  v6 = **(a1 + 8);
  v7 = 0.0;
  do
  {
    v8 = *(a1 + 16);
    v9 = *(**(*(a1 + 24) + 48) + 16 * *(*(a1 + 24) + 56));
    v10 = *(v9 + 8) + *(v9 + 32) * v5;
    v11 = *(**(v10 + 32) + 16 * *(v10 + 40));
    v12 = *(v11 + 8);
    v13 = (v6 + v4);
    *v13 = v12;
    v14 = *(v11 + 24) / 3uLL;
    v13[8] = v14;
    Phase::Geometry::GenerateProjectedTriangleWeights(&v18, *(*(a1 + 32) + 1072), *(a1 + 40), *(*(**(v10 + 48) + 16 * *(v10 + 56)) + 8), v8, v12, v14, a2);
    std::unique_ptr<float [],std::function<void ()(void *)>>::operator=[abi:ne200100](v13 + 1, &v18);
    v13[6] = v19[4];
    std::unique_ptr<float [],std::function<void ()(void *)>>::reset[abi:ne200100](&v18);
    std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v19);
    v6 = **(a1 + 8);
    *(v6 + v4 + 56) = v7;
    v15 = v13[6];
    if (v15)
    {
      v16 = *(v13[1] + 4 * v15 - 4);
    }

    else
    {
      v16 = 0.0;
    }

    v7 = v7 + v16;
    *(v6 + v4 + 60) = v7;
    ++v5;
    v4 += 72;
  }

  while (v5 < *a1);
  return v7;
}

void Phase::Geometry::sProjectPointOntoSphere(float32x2_t *a1, float *a2, float32x2_t *a3)
{
  Phase::operator*<float>(a3, a2, &v12);
  v5 = a3[3].f32[1];
  v6 = vadd_f32(vmul_n_f32(v12, v5), a3[2]);
  v7 = (v5 * v13) + a3[3].f32[0];
  if (v6.f32[0] < 0.0)
  {
    v8 = -v6.f32[0];
  }

  else
  {
    v8 = v6.f32[0];
  }

  if (v8 > 0.0001)
  {
    goto LABEL_11;
  }

  v9 = v6.f32[1];
  if (v6.f32[1] < 0.0)
  {
    v9 = -v6.f32[1];
  }

  if (v9 > 0.0001)
  {
    goto LABEL_11;
  }

  v10 = -v7;
  if (v7 >= 0.0)
  {
    v10 = v7;
  }

  if (v10 > 0.0001)
  {
LABEL_11:
    v11 = vmul_f32(v6, v6);
    v11.f32[0] = sqrtf(vaddv_f32(v11) + (v7 * v7));
    v6 = vdiv_f32(v6, vdup_lane_s32(v11, 0));
    v7 = v7 / v11.f32[0];
  }

  *a1 = v6;
  a1[1].f32[0] = v7;
}

uint64_t *std::unique_ptr<Phase::Triangle<float> [],std::function<void ()(void *)>>::reset[abi:ne200100](uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    return std::function<void ()(void *)>::operator()((result + 1), v1);
  }

  return result;
}

uint64_t *std::unique_ptr<Phase::Geometry::SubmeshInfo [],std::function<void ()(void *)>>::reset[abi:ne200100](uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    return std::function<void ()(void *)>::operator()((result + 1), v1);
  }

  return result;
}

uint64_t Phase::details::AllocArray<Phase::ManagedArray<Phase::Triangle<float>>,std::unique_ptr<Phase::ManagedArray<Phase::Triangle<float>> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::ManagedArray<Phase::Triangle<float>>,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::ManagedArray<Phase::Triangle<float>> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::ManagedArray<Phase::Triangle<float>>,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(Phase::ManagedArray<Phase::Triangle<float>>*)#1} const&>(Phase::Logger *a1, uint64_t a2, uint64_t a3, std::align_val_t a4, uint64_t *a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v8 = 48 * a3;
  if (!(48 * a3))
  {
LABEL_8:
    v9 = 0;
    goto LABEL_9;
  }

  if (!a4)
  {
    v9 = operator new(48 * a3);
    goto LABEL_9;
  }

  if ((a4 & (a4 - 1)) != 0)
  {
    v10 = **(Phase::Logger::GetInstance(a1) + 192);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v14 = 136315650;
      *&v14[4] = "SystemAllocator.hpp";
      *&v14[12] = 1024;
      *&v14[14] = 47;
      *&v14[18] = 2048;
      *&v14[20] = v8;
      _os_log_impl(&dword_23A302000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d Error allocating memory - alignment must be power of two. Alignment requested %zu", v14, 0x1Cu);
    }

    goto LABEL_8;
  }

  v9 = operator new(48 * a3, a4);
LABEL_9:
  v11 = v9;
  do
  {
    *v11 = 0;
    v11[4] = 0;
    v11[5] = 0;
    v11 += 6;
  }

  while (v11 != &v9[6 * a2]);
  v12 = *a5;
  *v14 = &unk_284D34410;
  *&v14[8] = a2;
  *&v14[16] = v12;
  *&v14[24] = v14;
  *a1 = v9;
  std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](a1 + 8, v14);
  return std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v14);
}

__n128 std::__function::__func<std::unique_ptr<Phase::ManagedArray<Phase::Triangle<float>> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::ManagedArray<Phase::Triangle<float>>,std::unique_ptr<Phase::ManagedArray<Phase::Triangle<float>> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::ManagedArray<Phase::Triangle<float>>,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::ManagedArray<Phase::Triangle<float>> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::ManagedArray<Phase::Triangle<float>>,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(Phase::ManagedArray<Phase::Triangle<float>>*)#1} const&>(unsigned long,Phase::SystemAllocator&&,std::unique_ptr<Phase::ManagedArray<Phase::Triangle<float>> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::ManagedArray<Phase::Triangle<float>>,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(Phase::ManagedArray<Phase::Triangle<float>>*)#1} const&)::{lambda(void *)#1},std::allocator<std::unique_ptr<Phase::ManagedArray<Phase::Triangle<float>> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::ManagedArray<Phase::Triangle<float>>,std::unique_ptr<Phase::ManagedArray<Phase::Triangle<float>> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::ManagedArray<Phase::Triangle<float>>,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::ManagedArray<Phase::Triangle<float>> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::ManagedArray<Phase::Triangle<float>>,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(Phase::ManagedArray<Phase::Triangle<float>>*)#1} const&>(unsigned long,Phase::SystemAllocator&&,std::unique_ptr<Phase::ManagedArray<Phase::Triangle<float>> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::ManagedArray<Phase::Triangle<float>>,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(Phase::ManagedArray<Phase::Triangle<float>>*)#1} const&)::{lambda(void *)#1}>,void ()(void *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284D34410;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<std::unique_ptr<Phase::ManagedArray<Phase::Triangle<float>> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::ManagedArray<Phase::Triangle<float>>,std::unique_ptr<Phase::ManagedArray<Phase::Triangle<float>> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::ManagedArray<Phase::Triangle<float>>,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::ManagedArray<Phase::Triangle<float>> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::ManagedArray<Phase::Triangle<float>>,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(Phase::ManagedArray<Phase::Triangle<float>>*)#1} const&>(unsigned long,Phase::SystemAllocator&&,std::unique_ptr<Phase::ManagedArray<Phase::Triangle<float>> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::ManagedArray<Phase::Triangle<float>>,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(Phase::ManagedArray<Phase::Triangle<float>>*)#1} const&)::{lambda(void *)#1},std::allocator<std::unique_ptr<Phase::ManagedArray<Phase::Triangle<float>> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::ManagedArray<Phase::Triangle<float>>,std::unique_ptr<Phase::ManagedArray<Phase::Triangle<float>> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::ManagedArray<Phase::Triangle<float>>,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::ManagedArray<Phase::Triangle<float>> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::ManagedArray<Phase::Triangle<float>>,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(Phase::ManagedArray<Phase::Triangle<float>>*)#1} const&>(unsigned long,Phase::SystemAllocator&&,std::unique_ptr<Phase::ManagedArray<Phase::Triangle<float>> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::ManagedArray<Phase::Triangle<float>>,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(Phase::ManagedArray<Phase::Triangle<float>>*)#1} const&)::{lambda(void *)#1}>,void ()(void *)>::operator()(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8))
  {
    v4 = 0;
    v5 = *a2;
    do
    {
      std::unique_ptr<Phase::Triangle<float> [],std::function<void ()(void *)>>::reset[abi:ne200100](v5);
      std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100]((v5 + 1));
      ++v4;
      v5 += 6;
    }

    while (v4 < *(a1 + 8));
  }

  operator delete(v2);
}

uint64_t Phase::details::AllocArray<Phase::Triangle<float>,std::unique_ptr<Phase::Triangle<float> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Triangle<float>,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::Triangle<float> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Triangle<float>,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(Phase::Triangle<float>*)#1} const&>(Phase::Logger *a1, uint64_t a2, void *a3, std::align_val_t *a4, uint64_t *a5)
{
  *&v18[5] = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    v14 = **(Phase::Logger::GetInstance(a1) + 128);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *v16 = 136315394;
      *&v16[4] = "ManagedPtr.hpp";
      *&v16[12] = 1024;
      *&v16[14] = 229;
      _os_log_impl(&dword_23A302000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [inCount == 0 is true]: Attempting to allocate an array of 0 elements", v16, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Attempting to allocate an array of 0 elements");
  }

  v8 = 36 * *a3;
  if (v8)
  {
    v9 = *a4;
    if (!*a4)
    {
      v10 = operator new(36 * *a3);
      goto LABEL_7;
    }

    if ((v9 & (v9 - 1)) == 0)
    {
      v10 = operator new(36 * *a3, v9);
LABEL_7:
      v8 = v10;
      goto LABEL_11;
    }

    v11 = **(Phase::Logger::GetInstance(a1) + 192);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v16 = 136315650;
      *&v16[4] = "SystemAllocator.hpp";
      *&v16[12] = 1024;
      *&v16[14] = 47;
      v17 = 2048;
      *v18 = v8;
      _os_log_impl(&dword_23A302000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d Error allocating memory - alignment must be power of two. Alignment requested %zu", v16, 0x1Cu);
    }

    v8 = 0;
  }

LABEL_11:
  bzero(v8, 36 * ((36 * a2 - 36) / 0x24uLL) + 36);
  v12 = *a5;
  *v16 = &unk_284D34458;
  *&v16[8] = v12;
  *&v18[1] = v16;
  *a1 = v8;
  std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](a1 + 8, v16);
  return std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v16);
}

uint64_t std::__function::__func<std::unique_ptr<Phase::Triangle<float> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Triangle<float>,std::unique_ptr<Phase::Triangle<float> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Triangle<float>,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::Triangle<float> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Triangle<float>,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(Phase::Triangle<float>*)#1} const&>(unsigned long,Phase::SystemAllocator&&,std::unique_ptr<Phase::Triangle<float> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Triangle<float>,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(Phase::Triangle<float>*)#1} const&)::{lambda(void *)#1},std::allocator<std::unique_ptr<Phase::Triangle<float> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Triangle<float>,std::unique_ptr<Phase::Triangle<float> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Triangle<float>,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::Triangle<float> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Triangle<float>,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(Phase::Triangle<float>*)#1} const&>(unsigned long,Phase::SystemAllocator&&,std::unique_ptr<Phase::Triangle<float> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Triangle<float>,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(Phase::Triangle<float>*)#1} const&)::{lambda(void *)#1}>,void ()(void *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284D34458;
  a2[1] = v2;
  return result;
}

uint64_t *std::unique_ptr<Phase::Triangle<float> [],std::function<void ()(void *)>>::operator=[abi:ne200100](uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    std::function<void ()(void *)>::operator()((a1 + 1), v5);
  }

  std::__function::__value_func<void ()(void *)>::operator=[abi:ne200100]((a1 + 1), (a2 + 1));
  return a1;
}

__n128 std::__function::__func<std::unique_ptr<Phase::Geometry::SubmeshInfo [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Geometry::SubmeshInfo,std::unique_ptr<Phase::Geometry::SubmeshInfo [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Geometry::SubmeshInfo,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::Geometry::SubmeshInfo [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Geometry::SubmeshInfo,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(Phase::Geometry::SubmeshInfo*)#1} const&>(unsigned long,Phase::SystemAllocator&&,std::unique_ptr<Phase::Geometry::SubmeshInfo [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Geometry::SubmeshInfo,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(Phase::Geometry::SubmeshInfo*)#1} const&)::{lambda(void *)#1},std::allocator<std::unique_ptr<Phase::Geometry::SubmeshInfo [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Geometry::SubmeshInfo,std::unique_ptr<Phase::Geometry::SubmeshInfo [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Geometry::SubmeshInfo,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::Geometry::SubmeshInfo [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Geometry::SubmeshInfo,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(Phase::Geometry::SubmeshInfo*)#1} const&>(unsigned long,Phase::SystemAllocator&&,std::unique_ptr<Phase::Geometry::SubmeshInfo [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Geometry::SubmeshInfo,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(Phase::Geometry::SubmeshInfo*)#1} const&)::{lambda(void *)#1}>,void ()(void *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284D344A0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<std::unique_ptr<Phase::Geometry::SubmeshInfo [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Geometry::SubmeshInfo,std::unique_ptr<Phase::Geometry::SubmeshInfo [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Geometry::SubmeshInfo,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::Geometry::SubmeshInfo [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Geometry::SubmeshInfo,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(Phase::Geometry::SubmeshInfo*)#1} const&>(unsigned long,Phase::SystemAllocator&&,std::unique_ptr<Phase::Geometry::SubmeshInfo [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Geometry::SubmeshInfo,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(Phase::Geometry::SubmeshInfo*)#1} const&)::{lambda(void *)#1},std::allocator<std::unique_ptr<Phase::Geometry::SubmeshInfo [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Geometry::SubmeshInfo,std::unique_ptr<Phase::Geometry::SubmeshInfo [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Geometry::SubmeshInfo,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::Geometry::SubmeshInfo [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Geometry::SubmeshInfo,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(Phase::Geometry::SubmeshInfo*)#1} const&>(unsigned long,Phase::SystemAllocator&&,std::unique_ptr<Phase::Geometry::SubmeshInfo [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Geometry::SubmeshInfo,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(Phase::Geometry::SubmeshInfo*)#1} const&)::{lambda(void *)#1}>,void ()(void *)>::operator()(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8))
  {
    v4 = 0;
    v5 = v2 + 16;
    do
    {
      std::unique_ptr<float [],std::function<void ()(void *)>>::reset[abi:ne200100]((v5 - 8));
      std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v5);
      ++v4;
      v5 += 72;
    }

    while (v4 < *(a1 + 8));
  }

  operator delete(v2);
}

void Phase::Geometry::MpsCpuSceneBuilder::~MpsCpuSceneBuilder(std::__shared_weak_count **this)
{
  Phase::Geometry::MpsCpuSceneBuilder::TearDown(this);
  v2 = this[17];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = this[14];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v7 = (this + 9);
  std::vector<Phase::Geometry::MpsCpuSceneBuilder::BuildEntry>::__destroy_vector::operator()[abi:ne200100](&v7);
  v4 = this[8];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = this[4];
  if (v5)
  {
    this[5] = v5;
    operator delete(v5);
  }

  v6 = this[1];
  if (v6)
  {
    this[2] = v6;
    operator delete(v6);
  }
}

void Phase::Geometry::MpsCpuSceneBuilder::TearDown(std::__shared_weak_count **this)
{
  Phase::Geometry::MpsCpuSceneBuilder::WaitForCurrentBuild(this);
  Phase::Geometry::MpsCpuSceneBuilder::ResetBuildTask(this);
  v2 = this[14];
  this[13] = 0;
  this[14] = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *(this + 30) = 0;
  v3 = this[17];
  this[16] = 0;
  this[17] = 0;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *(this + 36) = 0;
  this[2] = this[1];
  this[5] = this[4];
}

void Phase::Geometry::MpsCpuSceneBuilder::Update(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  Phase::Geometry::MpsCpuSceneBuilder::CheckForChanges(a1, a2);
  Phase::Geometry::MpsCpuSceneBuilder::UpdateActiveGroupList(a1, a2);
  Phase::Geometry::MpsCpuSceneBuilder::RemoveInactiveScenes(a1, a3);
  v10 = *(a1 + 56);
  Phase::Geometry::MpsCpuSceneBuilder::ProcessFinishedBuild(a1, a3);
  if (*(a1 + 56))
  {
    Phase::Geometry::MpsCpuSceneBuilder::UpdateWaitList(a1, a2);
  }

  else if (Phase::Geometry::MpsCpuSceneBuilder::StartNewBuild(a1, a2))
  {
    Phase::Geometry::MpsCpuSceneBuilder::SaveSceneShapes(a1, v10 != 0, a4, a5);
  }

  else if (v10)
  {
    v11 = *(a1 + 112);
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    *(a1 + 120) = 0;
    v12 = *(a1 + 136);
    *(a1 + 128) = 0;
    *(a1 + 136) = 0;
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    *(a1 + 144) = 0;
  }

  if (!*(a1 + 56))
  {
    *(a1 + 152) = *(*a1 + 2856);
  }
}

uint64_t Phase::Geometry::MpsCpuSceneBuilder::CheckForChanges(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v4 = result;
    do
    {
      if ((*(v2 + 40) & 1) == 0)
      {
        v5 = *(v4 + 8);
        v6 = *(v4 + 16);
        if (v5 != v6)
        {
          v7 = *(v4 + 8);
          while (1)
          {
            result = std::__equal_aligned[abi:ne200100]<std::__bitset<1ul,32ul>,true,true>(v7, 0, v7, 0x20u, (v2 + 24));
            v8 = *(v5 + 8) == *(v2 + 32) ? result : 0;
            if (v8)
            {
              break;
            }

            v5 += 24;
            v7 += 3;
            if (v5 == v6)
            {
              v5 = v6;
              break;
            }
          }

          v6 = *(v4 + 16);
        }

        if (v6 == v5 || 0x6DB6DB6DB6DB6DB7 * ((*(v2 + 8) - *v2) >> 3) != *(v5 + 16))
        {
          *(v2 + 40) = 1;
        }
      }

      v2 += 48;
    }

    while (v2 != v3);
  }

  return result;
}

void Phase::Geometry::MpsCpuSceneBuilder::UpdateActiveGroupList(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  if (*a2 == v5)
  {
    v12 = *a2;
  }

  else
  {
    do
    {
      v6 = *(a1 + 8);
      v7 = *(a1 + 16);
      if (v6 == v7)
      {
LABEL_9:
        v11 = 0;
      }

      else
      {
        v8 = *(a1 + 8);
        while (1)
        {
          v9 = std::__equal_aligned[abi:ne200100]<std::__bitset<1ul,32ul>,true,true>(v6, 0, v6, 0x20u, (v4 + 24));
          v10 = *(v8 + 8) == *(v4 + 32) ? v9 : 0;
          if (v10 == 1)
          {
            break;
          }

          v8 += 24;
          v6 += 3;
          if (v8 == v7)
          {
            goto LABEL_9;
          }
        }

        v11 = *(v8 + 16);
      }

      if (0x6DB6DB6DB6DB6DB7 * ((*(v4 + 8) - *v4) >> 3) != v11)
      {
        *(v4 + 40) = 1;
      }

      v4 += 48;
    }

    while (v4 != v5);
    v4 = *a2;
    v12 = a2[1];
  }

  v13 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v4) >> 4);
  v14 = *(a1 + 8);
  v15 = *(a1 + 16);
  v16 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v14) >> 3);
  v17 = v13 - v16;
  if (v13 <= v16)
  {
    if (v13 >= v16)
    {
      goto LABEL_29;
    }

    v20 = v14 + 24 * v13;
  }

  else
  {
    v18 = *(a1 + 24);
    if (0xAAAAAAAAAAAAAAABLL * ((v18 - v15) >> 3) < v17)
    {
      if (v13 <= 0xAAAAAAAAAAAAAAALL)
      {
        v19 = 0xAAAAAAAAAAAAAAABLL * ((v18 - v14) >> 3);
        if (2 * v19 > v13)
        {
          v13 = 2 * v19;
        }

        if (v19 >= 0x555555555555555)
        {
          v13 = 0xAAAAAAAAAAAAAAALL;
        }

        if (v13 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
    }

    bzero(*(a1 + 16), 24 * ((24 * v17 - 24) / 0x18) + 24);
    v20 = v15 + 24 * ((24 * v17 - 24) / 0x18) + 24;
  }

  *(a1 + 16) = v20;
LABEL_29:
  v21 = *a2;
  if (a2[1] != *a2)
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    do
    {
      v25 = *(a1 + 8) + v22;
      v26 = v21 + v23;
      v27 = *(v26 + 24);
      *(v25 + 8) = *(v26 + 32);
      *v25 = v27;
      *(v25 + 16) = 0x6DB6DB6DB6DB6DB7 * ((*(v26 + 8) - *v26) >> 3);
      ++v24;
      v21 = *a2;
      v23 += 48;
      v22 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 4) > v24);
  }
}

void Phase::Geometry::MpsCpuSceneBuilder::RemoveInactiveScenes(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2 != *a2)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = *(a1 + 8);
      v9 = *(a1 + 16);
      if (v8 == v9)
      {
        goto LABEL_13;
      }

      v10 = *(v3 + 16 * v6);
      v11 = *(a1 + 8);
      while (1)
      {
        v12 = std::__equal_aligned[abi:ne200100]<std::__bitset<1ul,32ul>,true,true>(v8, 0, v8, 0x20u, (v10 + 32));
        v13 = *(v11 + 8) == *(v10 + 40) ? v12 : 0;
        if (v13)
        {
          break;
        }

        v11 += 24;
        v8 += 3;
        if (v11 == v9)
        {
          v2 = a2[1];
          goto LABEL_13;
        }
      }

      v2 = a2[1];
      if (v11 == v9)
      {
LABEL_13:
        if ((v7 & 0x80000000) == 0)
        {
          v14 = *a2;
          v15 = (v2 - *a2) >> 4;
          if (v15 > v7)
          {
            if (v15 - 1 > v7)
            {
              v17 = *(v2 - 16);
              v16 = *(v2 - 8);
              if (v16)
              {
                atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
              }

              v18 = (v14 + 16 * v7);
              v19 = v18[1];
              *v18 = v17;
              v18[1] = v16;
              if (v19)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v19);
              }
            }

            v20 = a2[1];
            v21 = *(v20 - 8);
            if (v21)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v21);
            }

            v2 = v20 - 16;
            a2[1] = v20 - 16;
          }
        }
      }

      else
      {
        ++v7;
      }

      v6 = v7;
      v3 = *a2;
    }

    while (v7 < ((v2 - *a2) >> 4));
  }
}

void Phase::Geometry::MpsCpuSceneBuilder::ProcessFinishedBuild(unsigned __int8 *a1, uint64_t a2)
{
  v41 = *MEMORY[0x277D85DE8];
  if (*(a1 + 7))
  {
    v3 = atomic_load(a1 + 160);
    if (v3)
    {
      v5 = *(*a1 + 2856);
      v6 = **(Phase::Logger::GetInstance(a1) + 432);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 12);
        v33 = 136315906;
        v34 = "GeoMpsCpuSceneBuilder.cpp";
        v35 = 1024;
        v36 = 273;
        v37 = 2048;
        v38 = v7;
        v39 = 2048;
        v40 = v5;
        _os_log_impl(&dword_23A302000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Integrating built MPS Scenes from cycle: %llu, current cycle: %llu", &v33, 0x26u);
      }

      v8 = *(a1 + 9);
      for (i = *(a1 + 10); v8 != i; v8 += 8)
      {
        v10 = *v8;
        if (*v8)
        {
          v11 = *(a1 + 1);
          v12 = *(a1 + 2);
          if (v11 != v12)
          {
            v13 = *(a1 + 1);
            while (1)
            {
              v14 = std::__equal_aligned[abi:ne200100]<std::__bitset<1ul,32ul>,true,true>(v11, 0, v11, 0x20u, (v10 + 32));
              v15 = *(v13 + 8) == *(v10 + 40) ? v14 : 0;
              if (v15)
              {
                break;
              }

              v13 += 24;
              v11 += 3;
              if (v13 == v12)
              {
                goto LABEL_38;
              }
            }

            if (v13 != v12)
            {
              MpsCpuScenePtr = Phase::Geometry::GetMpsCpuScenePtr(a2, *(v10 + 32), *(v10 + 40));
              if (MpsCpuScenePtr)
              {
                v18 = *v8;
                v17 = v8[1];
                if (v17)
                {
                  atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
                }

                v19 = MpsCpuScenePtr[1];
                *MpsCpuScenePtr = v18;
                MpsCpuScenePtr[1] = v17;
                if (v19)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v19);
                }
              }

              else
              {
                v20 = *(a2 + 8);
                v21 = *(a2 + 16);
                if (v20 >= v21)
                {
                  v24 = (v20 - *a2) >> 4;
                  v25 = v24 + 1;
                  if ((v24 + 1) >> 60)
                  {
                    std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
                  }

                  v26 = v21 - *a2;
                  if (v26 >> 3 > v25)
                  {
                    v25 = v26 >> 3;
                  }

                  if (v26 >= 0x7FFFFFFFFFFFFFF0)
                  {
                    v27 = 0xFFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v27 = v25;
                  }

                  if (v27)
                  {
                    std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<Phase::Geometry::MpsCpuScene>>>(a2, v27);
                  }

                  v28 = 16 * v24;
                  v29 = *v8;
                  *(16 * v24) = *v8;
                  if (*(&v29 + 1))
                  {
                    atomic_fetch_add_explicit((*(&v29 + 1) + 8), 1uLL, memory_order_relaxed);
                  }

                  v23 = (v28 + 16);
                  v30 = *(a2 + 8) - *a2;
                  v31 = v28 - v30;
                  memcpy((v28 - v30), *a2, v30);
                  v32 = *a2;
                  *a2 = v31;
                  *(a2 + 8) = v23;
                  *(a2 + 16) = 0;
                  if (v32)
                  {
                    operator delete(v32);
                  }
                }

                else
                {
                  v22 = v8[1];
                  *v20 = *v8;
                  v20[1] = v22;
                  if (v22)
                  {
                    atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
                  }

                  v23 = v20 + 2;
                }

                *(a2 + 8) = v23;
              }
            }
          }
        }

LABEL_38:
        ;
      }

      *(a1 + 19) = *(a1 + 12);
      Phase::Geometry::MpsCpuSceneBuilder::ResetBuildTask(a1);
    }
  }
}

void sub_23A3F7938(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void Phase::Geometry::MpsCpuSceneBuilder::UpdateWaitList(void *a1, uint64_t *a2)
{
  v4 = a1[4];
  v5 = a1[5];
  if (v5 != v4)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = *a2;
      v9 = a2[1];
      if (*a2 == v9)
      {
LABEL_11:
        if ((v7 & 0x80000000) == 0)
        {
          v14 = a1[4];
          v15 = (v5 - v14) >> 4;
          if (v15 > v7)
          {
            if (v15 - 1 > v7)
            {
              v16 = v14 + 16 * v7;
              v17 = *(v5 - 2);
              *(v16 + 8) = *(v5 - 8);
              *v16 = v17;
              v5 = a1[5];
            }

            a1[5] = --v5;
          }
        }
      }

      else
      {
        v10 = &v4[v6];
        v11 = (v8 + 24);
        while (1)
        {
          v12 = std::__equal_aligned[abi:ne200100]<std::__bitset<1ul,32ul>,true,true>(v11, 0, v11, 0x20u, v10);
          v13 = *(v8 + 32) == *(v10 + 8) ? v12 : 0;
          if (v13)
          {
            break;
          }

          v8 += 48;
          v11 += 6;
          if (v8 == v9)
          {
            v5 = a1[5];
            goto LABEL_11;
          }
        }

        *(v8 + 40) = 0;
        ++v7;
        v5 = a1[5];
      }

      v6 = v7;
      v4 = a1[4];
    }

    while (v7 < (v5 - v4));
  }

  v18 = *a2;
  v19 = a2[1];
  if (*a2 != v19)
  {
    do
    {
      if (*(v18 + 40) == 1)
      {
        v20 = a1[6];
        if (v5 >= v20)
        {
          v21 = a1[4];
          v22 = v5 - v21;
          v23 = (v5 - v21) >> 4;
          v24 = v23 + 1;
          if ((v23 + 1) >> 60)
          {
            std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
          }

          v25 = v20 - v21;
          if (v25 >> 3 > v24)
          {
            v24 = v25 >> 3;
          }

          if (v25 >= 0x7FFFFFFFFFFFFFF0)
          {
            v26 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v26 = v24;
          }

          if (v26)
          {
            if (!(v26 >> 60))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          *(16 * v23) = *(v18 + 24);
          v5 = (16 * v23 + 16);
          memcpy(0, v21, v22);
          a1[4] = 0;
          a1[5] = v5;
          a1[6] = 0;
          if (v21)
          {
            operator delete(v21);
          }
        }

        else
        {
          *v5++ = *(v18 + 24);
        }

        a1[5] = v5;
      }

      v18 += 48;
    }

    while (v18 != v19);
  }
}

BOOL Phase::Geometry::MpsCpuSceneBuilder::StartNewBuild(unsigned __int8 *a1, uint64_t *a2)
{
  if (*(a1 + 7) || *(a1 + 10) != *(a1 + 9))
  {
    goto LABEL_53;
  }

  v44 = (a1 + 72);
  v4 = *(a1 + 4);
  v5 = *(a1 + 5);
  if (v4 != v5)
  {
    do
    {
      v6 = *a2;
      v7 = a2[1];
      if (*a2 != v7)
      {
        v8 = (v6 + 24);
        while (1)
        {
          v9 = std::__equal_aligned[abi:ne200100]<std::__bitset<1ul,32ul>,true,true>(v8, 0, v8, 0x20u, v4);
          v10 = *(v6 + 32) == *(v4 + 8) ? v9 : 0;
          if (v10 == 1)
          {
            break;
          }

          v6 += 48;
          v8 += 6;
          if (v6 == v7)
          {
            goto LABEL_13;
          }
        }

        *(v6 + 40) = 1;
      }

LABEL_13:
      v4 += 16;
    }

    while (v4 != v5);
    v4 = *(a1 + 4);
  }

  *(a1 + 5) = v4;
  v11 = *a2;
  v12 = a2[1];
  v13 = v44;
  if (*a2 != v12)
  {
    do
    {
      if (*(v11 + 40) == 1)
      {
        v15 = *(a1 + 10);
        v14 = *(a1 + 11);
        if (v15 >= v14)
        {
          v17 = (v15 - *v13) >> 6;
          if ((v17 + 1) >> 58)
          {
            std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
          }

          v18 = v14 - *v13;
          v19 = v18 >> 5;
          if (v18 >> 5 <= (v17 + 1))
          {
            v19 = v17 + 1;
          }

          if (v18 >= 0x7FFFFFFFFFFFFFC0)
          {
            v20 = 0x3FFFFFFFFFFFFFFLL;
          }

          else
          {
            v20 = v19;
          }

          v48 = v13;
          if (v20)
          {
            if (!(v20 >> 58))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          *__p = 0;
          *&__p[8] = v17 << 6;
          *&__p[16] = v17 << 6;
          v47 = 0;
          Phase::Geometry::MpsCpuSceneBuilder::BuildEntry::BuildEntry(v17 << 6, v11);
          v21 = *(a1 + 9);
          v22 = *(a1 + 10);
          v23 = *&__p[8] - (v22 - v21);
          v16 = *&__p[16] + 64;
          *&__p[16] += 64;
          if (v22 != v21)
          {
            v24 = 0;
            do
            {
              v25 = &v21[v24];
              v26 = (v23 + v24);
              *v26 = *&v21[v24];
              v27 = *&v21[v24 + 8];
              v26[1] = v27;
              if (v27)
              {
                atomic_fetch_add_explicit((v27 + 8), 1uLL, memory_order_relaxed);
              }

              v26[2] = 0;
              v26[3] = 0;
              v28 = (v26 + 2);
              *(v28 + 16) = 0;
              std::vector<std::tuple<Phase::Affine<float>,Phase::Handle64,Phase::Handle64,Phase::Geometry::Shape *>>::__init_with_size[abi:ne200100]<std::tuple<Phase::Affine<float>,Phase::Handle64,Phase::Handle64,Phase::Geometry::Shape *>*,std::tuple<Phase::Affine<float>,Phase::Handle64,Phase::Handle64,Phase::Geometry::Shape *>*>(v28, *(v25 + 2), *(v25 + 3), 0x6DB6DB6DB6DB6DB7 * ((*(v25 + 3) - *(v25 + 2)) >> 3));
              v29 = v23 + v24;
              *(v29 + 40) = *(v25 + 40);
              *(v29 + 56) = v25[56];
              v24 += 64;
            }

            while (v25 + 64 != v22);
            do
            {
              std::__destroy_at[abi:ne200100]<Phase::Controller::SpatialSubmixRouter::StoppingRenderer,0>(v21);
              v21 += 64;
            }

            while (v21 != v22);
            v13 = v44;
            v21 = *v44;
            v16 = *&__p[16];
          }

          *(a1 + 9) = v23;
          *(a1 + 10) = v16;
          v30 = *(a1 + 11);
          *(a1 + 11) = v47;
          *&__p[16] = v21;
          v47 = v30;
          *__p = v21;
          *&__p[8] = v21;
          std::__split_buffer<Phase::Geometry::MpsCpuSceneBuilder::BuildEntry>::~__split_buffer(__p);
        }

        else
        {
          Phase::Geometry::MpsCpuSceneBuilder::BuildEntry::BuildEntry(*(a1 + 10), v11);
          v16 = v15 + 64;
          *(a1 + 10) = v15 + 64;
        }

        *(a1 + 10) = v16;
      }

      v11 += 48;
    }

    while (v11 != v12);
  }

  v31 = v13[1];
  v32 = *v13;
  if (v31 != *v13)
  {
    v33 = *v13;
    do
    {
      if (*(v33 + 24) == *(v33 + 16))
      {
        goto LABEL_53;
      }

      v33 += 64;
    }

    while (v33 != v31);
    v34 = *a1;
    *(a1 + 12) = *(*a1 + 2856);
    v35 = *(v34 + 2848);
    __p[23] = 16;
    strcpy(__p, "BuildMpsCpuScene");
    (*(*v35 + 16))(&v49);
    v36 = v49;
    v49 = 0uLL;
    v37 = *(a1 + 8);
    *(a1 + 56) = v36;
    if (v37)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v37);
      if (*(&v49 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v49 + 1));
      }
    }

    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    v38 = *(a1 + 7);
    *(v38 + 524) = 0;
    atomic_store(1u, (v38 + 40));
    v39 = *(a1 + 7);
    *(v39 + 256) = &unk_284D34520;
    *(v39 + 264) = a1;
    *(v39 + 383) = 1;
    atomic_store(1u, (v39 + 40));
    atomic_store(0, a1 + 160);
    v40 = *(a1 + 7);
    if (v40)
    {
      v41 = *(*a1 + 2848);
      v42 = *(a1 + 8);
      v45[0] = v40;
      v45[1] = v42;
      if (v42)
      {
        atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      Phase::JobManager::RunJobAsync(v41, v45);
      if (v42)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v42);
      }

      return v31 != v32;
    }

LABEL_53:
    std::terminate();
  }

  return v31 != v32;
}

void sub_23A3F7F5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Geometry::MpsCpuSceneBuilder::SaveSceneShapes(uint64_t a1, int a2, uint64_t *a3, uint64_t a4)
{
  v32 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v28 = 0;
    v27 = 0u;
    v29 = 0xFFFFFFFFLL;
    std::__shared_mutex_base::__shared_mutex_base(&v30);
    v31 = 0;
    v7 = *(a1 + 104);
    v8 = *(a1 + 112);
    *&v27 = v7;
    *(&v27 + 1) = v8;
    *(a1 + 104) = 0u;
    v9 = v28;
    v10 = *(a1 + 120);
    v28 = v10;
    *(a1 + 120) = v9;
    v11 = *a4;
    if (*a4 && v7)
    {
      v12 = *(a4 + 16);
      if (v12 >= v10)
      {
        v13 = v10;
      }

      else
      {
        v13 = v12;
      }

      v14 = &v7[3 * v13];
      if (v8 && *(v8 + 8) >= 1 && v13)
      {
        v15 = 0;
        while (1)
        {
          v16 = v7[v15];
          if (v16 && v16 != *v11)
          {
            break;
          }

          v11 += 3;
          v15 += 3;
          if (3 * v13 == v15)
          {
            goto LABEL_33;
          }
        }

        Phase::details::SharedSlotMap<Phase::Geometry::Shape,Phase::Handle64>::Realloc(&v27);
        v7 = v27;
        v26 = (v27 + v15 * 8);
        v14 = (v27 + 24 * v13);
      }

      else
      {
        v26 = v7;
      }

      if (v26 != v14)
      {
        v18 = v11 + 2;
        do
        {
          v19 = *(v18 - 2);
          if (*v26)
          {
            v20 = *v26 == v19;
          }

          else
          {
            v20 = 1;
          }

          if (!v20)
          {
            v21 = *(v18 - 1);
            if (v21)
            {
              atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
            }

            v22 = v26[1];
            *v26 = v19;
            v26[1] = v21;
            if (v22)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v22);
            }

            v26[2] = *v18;
          }

          v26 += 3;
          v18 += 3;
        }

        while (v26 != v14);
        v7 = v27;
      }
    }

LABEL_33:
    v23 = *(&v27 + 1);
    if (*(&v27 + 1))
    {
      atomic_fetch_add_explicit((*(&v27 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v24 = *(a1 + 136);
    *(a1 + 128) = v7;
    *(a1 + 136) = v23;
    if (v24)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v24);
    }

    *(a1 + 144) = v28;
    std::condition_variable::~condition_variable(&v30.__gate2_);
    std::condition_variable::~condition_variable(&v30.__gate1_);
    std::mutex::~mutex(&v30.__mut_);
    if (*(&v27 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v27 + 1));
    }
  }

  else
  {
    Phase::SharedSlotMapState<Phase::Geometry::Context,Phase::Handle64>::operator=(a1 + 128, a4);
  }

  return Phase::SharedSlotMapState<Phase::Geometry::Context,Phase::Handle64>::operator=(a1 + 104, a3);
}

void Phase::Geometry::MpsCpuSceneBuilder::WaitForCurrentBuild(Phase::Geometry::MpsCpuSceneBuilder *this)
{
  v1 = *(this + 7);
  if (v1)
  {
    v3 = *(*this + 2848);
    v4 = *(this + 8);
    v5 = v1;
    v6 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v3 + 96))(v3, &v5, 0.0);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void sub_23A3F82BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void Phase::Geometry::MpsCpuSceneBuilder::ResetBuildTask(Phase::Geometry::MpsCpuSceneBuilder *this)
{
  v2 = *(this + 8);
  *(this + 7) = 0;
  *(this + 8) = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v4 = *(this + 9);
  for (i = *(this + 10); i != v4; std::__destroy_at[abi:ne200100]<Phase::Controller::SpatialSubmixRouter::StoppingRenderer,0>(i))
  {
    i -= 8;
  }

  *(this + 10) = v4;
}

void Phase::details::SharedSlotMap<Phase::Geometry::Shape,Phase::Handle64>::MergeFrom(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *a1;
  if (*a2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v6 = *(a1 + 16);
    v7 = *(a2 + 16);
    if (v7 >= v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = v7;
    }

    v9 = &v3[3 * v8];
    v10 = *(a1 + 8);
    if (v10)
    {
      if (*(v10 + 8) >= 1 && v8 != 0)
      {
        v12 = 0;
        while (*v3 || !*v2)
        {
          v3 += 3;
          v2 += 3;
          v12 -= 24;
          if (-24 * v8 == v12)
          {
            return;
          }
        }

        Phase::details::SharedSlotMap<Phase::Geometry::Shape,Phase::Handle64>::Realloc(a1);
        v3 = (*a1 - v12);
        v9 = *a1 + 24 * v8;
      }
    }

    if (v3 != v9)
    {
      v13 = v2 + 2;
      do
      {
        if (!*v3)
        {
          v14 = *(v13 - 2);
          if (v14)
          {
            v15 = *(v13 - 1);
            if (v15)
            {
              atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
            }

            v16 = v3[1];
            *v3 = v14;
            v3[1] = v15;
            if (v16)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v16);
            }

            v3[2] = *v13;
          }
        }

        v3 += 3;
        v13 += 3;
      }

      while (v3 != v9);
    }
  }
}

void std::vector<Phase::Geometry::MpsCpuSceneBuilder::BuildEntry>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 8;
        std::__destroy_at[abi:ne200100]<Phase::Controller::SpatialSubmixRouter::StoppingRenderer,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__equal_aligned[abi:ne200100]<std::__bitset<1ul,32ul>,true,true>(void *a1, unsigned int a2, uint64_t a3, unsigned int a4, void *a5)
{
  v5 = a4 - a2 + 8 * (a3 - a1);
  if (v5 >= 1)
  {
    if (a2)
    {
      if (v5 >= (64 - a2))
      {
        v6 = 64 - a2;
      }

      else
      {
        v6 = a4 - a2 + 8 * (a3 - a1);
      }

      if (((0xFFFFFFFFFFFFFFFFLL >> (64 - a2 - v6)) & (-1 << a2) & (*a1 ^ *a5)) != 0)
      {
        return 0;
      }

      v5 -= v6;
      ++a5;
      ++a1;
    }

    if (v5 >= 64)
    {
      while (*a5 == *a1)
      {
        v7 = v5 - 64;
        ++a1;
        ++a5;
        v8 = v5 <= 127;
        v5 -= 64;
        if (v8)
        {
          goto LABEL_14;
        }
      }

      return 0;
    }

    v7 = v5;
LABEL_14:
    if (v7 >= 1 && (*a1 ^ *a5) << -v7)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t Phase::Geometry::MpsCpuSceneBuilder::BuildEntry::BuildEntry(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<std::tuple<Phase::Affine<float>,Phase::Handle64,Phase::Handle64,Phase::Geometry::Shape *>>::__init_with_size[abi:ne200100]<std::tuple<Phase::Affine<float>,Phase::Handle64,Phase::Handle64,Phase::Geometry::Shape *>*,std::tuple<Phase::Affine<float>,Phase::Handle64,Phase::Handle64,Phase::Geometry::Shape *>*>(a1 + 16, *a2, *(a2 + 8), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 8) - *a2) >> 3));
  *(a1 + 40) = *(a2 + 24);
  *(a1 + 56) = *(a2 + 40);
  return a1;
}

void sub_23A3F8604(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::tuple<Phase::Affine<float>,Phase::Handle64,Phase::Handle64,Phase::Geometry::Shape *>>::__init_with_size[abi:ne200100]<std::tuple<Phase::Affine<float>,Phase::Handle64,Phase::Handle64,Phase::Geometry::Shape *>*,std::tuple<Phase::Affine<float>,Phase::Handle64,Phase::Handle64,Phase::Geometry::Shape *>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::tuple<Phase::Affine<float>,Phase::Handle64,Phase::Handle64,Phase::Geometry::Shape *>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_23A3F8674(_Unwind_Exception *exception_object)
{
  *(v1 + 8) = v2;
  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::tuple<Phase::Affine<float>,Phase::Handle64,Phase::Handle64,Phase::Geometry::Shape *>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<Phase::Affine<float>,Phase::Handle64,Phase::Handle64,Phase::Geometry::Shape *>>>(a1, a2);
  }

  std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<Phase::Affine<float>,Phase::Handle64,Phase::Handle64,Phase::Geometry::Shape *>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::tuple<Phase::Affine<float>,Phase::Handle64,Phase::Handle64,Phase::Geometry::Shape *>>,std::tuple<Phase::Affine<float>,Phase::Handle64,Phase::Handle64,Phase::Geometry::Shape *>*,std::tuple<Phase::Affine<float>,Phase::Handle64,Phase::Handle64,Phase::Geometry::Shape *>*,std::tuple<Phase::Affine<float>,Phase::Handle64,Phase::Handle64,Phase::Geometry::Shape *>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = a4;
  while (a2 != a3)
  {
    *result = *a2;
    *(result + 4) = *(a2 + 4);
    *(result + 8) = *(a2 + 8);
    *(result + 12) = *(a2 + 12);
    *(result + 16) = *(a2 + 16);
    *(result + 20) = *(a2 + 20);
    *(result + 24) = *(a2 + 24);
    *(result + 28) = *(a2 + 28);
    *(result + 32) = *(a2 + 32);
    *(result + 40) = *(a2 + 40);
    a2 += 56;
    result += 56;
  }

  return result;
}

uint64_t std::__split_buffer<Phase::Geometry::MpsCpuSceneBuilder::BuildEntry>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 64;
    std::__destroy_at[abi:ne200100]<Phase::Controller::SpatialSubmixRouter::StoppingRenderer,0>((i - 64));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t Phase::SharedSlotMap<Phase::Geometry::Shape,Phase::Handle64,Phase::Geometry::ShapeFactory>::~SharedSlotMap(uint64_t a1)
{
  std::condition_variable::~condition_variable((a1 + 144));
  std::condition_variable::~condition_variable((a1 + 96));
  std::mutex::~mutex((a1 + 32));
  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void Phase::details::SharedSlotMap<Phase::Geometry::Shape,Phase::Handle64>::Realloc(uint64_t *a1)
{
  v1 = *(a1 + 4);
  if (v1)
  {
    Phase::details::SharedSlotMap<Phase::Geometry::Shape,Phase::Handle64>::AllocSlots(v1, &v13);
    if (*(a1 + 4))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        v5 = *a1;
        v6 = (*a1 + v3);
        v7 = v13;
        v9 = *v6;
        v8 = v6[1];
        if (v8)
        {
          atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
        }

        v10 = (v7 + v3);
        v11 = *(v7 + v3 + 8);
        *v10 = v9;
        v10[1] = v8;
        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        }

        v10[2] = *(v5 + v3 + 16);
        ++v4;
        v3 += 24;
      }

      while (v4 < *(a1 + 4));
    }

    std::__shared_mutex_base::lock((a1 + 4));
    v12 = *a1;
    *a1 = v13;
    v13 = v12;
    std::__shared_mutex_base::unlock((a1 + 4));
    if (*(&v13 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v13 + 1));
    }
  }
}

void sub_23A3F8928(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void Phase::details::SharedSlotMap<Phase::Geometry::Shape,Phase::Handle64>::AllocSlots(unint64_t a1@<X1>, void *a2@<X8>)
{
  if (a1)
  {
    is_mul_ok(a1, 0x18uLL);
    operator new[]();
  }

  *a2 = 0;
  a2[1] = 0;
}

void sub_23A3F8A5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    std::default_delete<Phase::SharedSlotMapState<Phase::Geometry::Entity,Phase::Handle64>::Slot>::operator()[abi:ne200100](&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<Phase::SharedSlotMapState<Phase::Geometry::Shape,Phase::Handle64>::Slot *,std::shared_ptr<Phase::SharedSlotMapState<Phase::Geometry::Shape,Phase::Handle64>::Slot[]>::__shared_ptr_default_delete<Phase::SharedSlotMapState<Phase::Geometry::Shape,Phase::Handle64>::Slot[],Phase::SharedSlotMapState<Phase::Geometry::Shape,Phase::Handle64>::Slot>,std::allocator<Phase::SharedSlotMapState<Phase::Geometry::Shape,Phase::Handle64>::Slot>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EE864A0);
}

void Phase::Command<128>::Invoker<Phase::Geometry::MpsCpuSceneBuilder::PrepareBuildJob(void)::$_0,void>::Call(Phase::Logger *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 1);
  v2 = **(Phase::Logger::GetInstance(a1) + 432);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(v1 + 96);
    v4 = 136315650;
    v5 = "GeoMpsCpuSceneBuilder.cpp";
    v6 = 1024;
    v7 = 139;
    v8 = 2048;
    v9 = v3;
    _os_log_impl(&dword_23A302000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Starting build of MPS Scenes from cycle: %llu", &v4, 0x1Cu);
  }

  if (*(v1 + 72) != *(v1 + 80))
  {
    operator new();
  }

  atomic_store(1u, (v1 + 160));
}

void sub_23A3F8C44(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<Phase::Geometry::MpsCpuScene>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284D34548;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EE864A0);
}

uint64_t Phase::Geometry::MpsCpuScene::MpsCpuScene(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 8) = *a2;
  *(a1 + 24) = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a1 + 32) = *(a2 + 24);
  *(a1 + 48) = a3;
  *a1 = objc_opt_new();
  return a1;
}

void sub_23A3F8D44(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    *(v1 + 16) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void Phase::Geometry::MpsCpuScene::~MpsCpuScene(Phase::Geometry::MpsCpuScene *this)
{
  v2 = *this;
  *this = 0;

  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }
}

void Phase::Geometry::MpsCpuScene::Build(Phase::Geometry::MpsCpuScene *this)
{
  v29 = *MEMORY[0x277D85DE8];
  Instance = Phase::Logger::GetInstance(this);
  v3 = os_signpost_id_generate(**(Instance + 432));
  v4 = Phase::Logger::GetInstance(v3);
  if (*(v4 + 440) == 1)
  {
    v5 = **(Phase::Logger::GetInstance(v4) + 432);
    v6 = v5;
    if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_23A302000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v3, "Phase_MpsCpuScene_Build", "MpsCpuScene: Build", buf, 2u);
    }
  }

  memset(v21, 0, 24);
  v7 = *(this + 1);
  v8 = *(this + 2);
  if (v8 != v7)
  {
    v9 = 0x6DB6DB6DB6DB6DB7 * ((v8 - v7) >> 3);
    if (!(v9 >> 61))
    {
      *&v28[2] = v21;
      std::__allocate_at_least[abi:ne200100]<std::allocator<double *>>(v9);
    }

    std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
  }

  v10 = **(Phase::Logger::GetInstance(v4) + 432);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 0x6DB6DB6DB6DB6DB7 * ((*(this + 2) - *(this + 1)) >> 3);
    *buf = 136315906;
    *&buf[4] = "GeoMpsImplementation.mm";
    buf_12 = 1024;
    buf_14 = 110;
    v25 = 2048;
    v26 = v11;
    v27 = 2048;
    *v28 = 0;
    _os_log_impl(&dword_23A302000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Rebuild BVH for %lu shapes. Triangles count %lu", buf, 0x26u);
  }

  v12 = objc_opt_new();
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  [v12 setGeometryDescriptors:v13];

  v14 = *this;
  if (objc_opt_respondsToSelector())
  {
    v15 = **(Phase::Logger::GetInstance([v14 rebuildWithDescriptor:v12 queue:0]) + 432);
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (!v16)
    {
      goto LABEL_17;
    }

    *buf = 136315394;
    *&buf[4] = "GeoMpsImplementation.mm";
    buf_12 = 1024;
    buf_14 = 123;
    v17 = "%25s:%-5d Rebuild BVH in thread from selector";
  }

  else
  {
    v15 = **(Phase::Logger::GetInstance([v14 rebuildWithDescriptor:v12]) + 432);
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (!v16)
    {
      goto LABEL_17;
    }

    *buf = 136315394;
    *&buf[4] = "GeoMpsImplementation.mm";
    buf_12 = 1024;
    buf_14 = 130;
    v17 = "%25s:%-5d Rebuild BVH asynchronously from selector";
  }

  _os_log_impl(&dword_23A302000, v15, OS_LOG_TYPE_DEFAULT, v17, buf, 0x12u);
LABEL_17:
  v18 = Phase::Logger::GetInstance(v16);
  if (*(v18 + 440) == 1)
  {
    v19 = **(Phase::Logger::GetInstance(v18) + 432);
    v20 = v19;
    if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_23A302000, v20, OS_SIGNPOST_INTERVAL_END, v3, "Phase_MpsCpuScene_Build", &unk_23A5C28A2, buf, 2u);
    }
  }

  *buf = v21;
  std::vector<MPSCPUAccelerationStructureTriangleGeometryDescriptor * {__strong}>::__destroy_vector::operator()[abi:ne200100](buf);
}

void sub_23A3F93C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void **a14)
{
  a14 = &a11;
  std::vector<MPSCPUAccelerationStructureTriangleGeometryDescriptor * {__strong}>::__destroy_vector::operator()[abi:ne200100](&a14);
  _Unwind_Resume(a1);
}

float32x4_t Phase::Matrix33From<float>@<Q0>(float *a1@<X0>, float32x4_t *a2@<X8>)
{
  Phase::Matrix33From<float>(a1, v8[0].f32);
  v4 = a1[7];
  v5 = v4 * v9;
  v6 = vmulq_n_f32(v8[0], v4);
  result = vmulq_n_f32(v8[1], v4);
  *a2 = v6;
  a2[1] = result;
  a2[2].f32[0] = v5;
  return result;
}

void Phase::Geometry::ConvertValidMpsResult<Phase::Geometry::RaycastHit>(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t a4, int a5, uint64_t a6)
{
  v7 = HIDWORD(a4);
  *a6 = a4;
  *(a6 + 24) = HIDWORD(a4);
  v8 = (a3 + 56 * a5);
  v22 = *v8;
  v9 = *(v8 + 5);
  v23 = v9;
  *(a6 + 16) = v9;
  if (v9 < a2 && (v10 = (a1 + 24 * v9), v10[5] == HIDWORD(v9)) && *v10)
  {
    v11 = **(*v10 + 120);
    v12 = *(**(v11 + 48) + 16 * *(v11 + 56));
    v13 = (*(v12 + 8) + *(v12 + 32) * v7);
    v21[0] = *v13;
    v21[1] = v13[1];
    v21[2] = v13[2];
    Phase::operator*<float>(&v22, v21, &v19);
    *(a6 + 4) = v19;
    v14 = *(**(v11 + 64) + 16 * *(v11 + 72));
    v15 = *(*(v14 + 8) + *(v14 + 32) * v7);
    v16 = *(**(v11 + 80) + 16 * *(v11 + 88));
    *(a6 + 12) = v20;
    v17 = *(v16 + 8) + *(v16 + 32) * v15;
    v18 = *(**(*(v11 + 8) + 144) + 16 * *(*(v11 + 8) + 152));
    *(a6 + 32) = *(*(v18 + 8) + *(v18 + 32) * *(v17 + 56));
  }

  else
  {
    *(a6 + 8) = 0;
    *(a6 + 4) = 0;
    *(a6 + 32) = 0;
  }
}

uint64_t Phase::Geometry::RunSingleHitVsMpsScene(Phase::Geometry *this, Phase::Geometry::SystemState *a2, Phase::Geometry::SceneQueryBatch *a3, int a4)
{
  v4 = a4 - a3;
  if (a4 - a3 >= 1)
  {
    if (*(a2 + 24) <= a3)
    {
      __assert_rtn("Get", "GeoSceneQuery.hpp", 115, "inIndex < inBatch.mCount");
    }

    v7 = *(a2 + 11) + (*(a2 + 25) * a3) + 32;
    MpsIntersections = Phase::Geometry::GetMpsIntersections(this + 1032);
    if (MpsIntersections == 1)
    {
      v10 = v9;
      if (!v9)
      {
        std::terminate();
      }

      v11 = *(a2 + 25);
      if (v11)
      {
        v12 = v7 + v11 * v4;
        do
        {
          if (*v7 >= 0.0)
          {
            Phase::Geometry::ConvertValidMpsResult<Phase::Geometry::RaycastHit>(*(this + 18), *(this + 40), *(v10 + 8), *v7, *(v7 + 8), v7);
          }

          else
          {
            *v7 = 2139095039;
          }

          v7 += v11;
        }

        while (v7 < v12);
      }

      return 1;
    }

    if (MpsIntersections >= 2)
    {
      v13 = *(a2 + 25);
      if (v13)
      {
        v14 = v7 + v13 * v4;
        do
        {
          if (*v7 >= 0.0)
          {
            Phase::Geometry::ConvertValidMpsResult<Phase::Geometry::RaycastHit>(*(this + 18), *(this + 40), *(*(*(this + 129) + 16 * *(v7 + 12)) + 8), *v7, *(v7 + 8), v7);
          }

          else
          {
            *v7 = 2139095039;
          }

          v7 += v13;
        }

        while (v7 < v14);
      }

      return 1;
    }
  }

  return 0;
}

uint64_t Phase::Geometry::RunSingleHitVsMpsSceneV2(Phase::Geometry *this, Phase::Geometry::SystemState *a2, Phase::Geometry::SceneQueryBatch *a3, int a4)
{
  v4 = a4 - a3;
  if (a4 - a3 >= 1)
  {
    if (*(a2 + 24) <= a3)
    {
      __assert_rtn("Get", "GeoSceneQuery.hpp", 115, "inIndex < inBatch.mCount");
    }

    v6 = *(a2 + 11) + (*(a2 + 25) * a3) + 32;
    v7 = (this + 1032);
    MpsIntersections = Phase::Geometry::GetMpsIntersections(this + 1032);
    if (MpsIntersections == 1)
    {
      if (!v9)
      {
        std::terminate();
      }

      v10 = *(a2 + 25);
      if (v10)
      {
        v11 = v6 + v10 * v4;
        v12 = *(v9 + 8);
        do
        {
          LODWORD(v13) = 2139095039;
          if (*v6 >= 0.0)
          {
            v13 = *v6;
            v14 = (v12 + 56 * *(v6 + 8));
            *(v6 + 4) = HIDWORD(*v6);
            *(v6 + 8) = vextq_s8(v14[2], v14[2], 8uLL);
          }

          *v6 = v13;
          v6 += v10;
        }

        while (v6 < v11);
      }

      return 1;
    }

    if (MpsIntersections >= 2)
    {
      v15 = *(a2 + 25);
      if (v15)
      {
        v16 = v6 + v15 * v4;
        v17 = *v7;
        do
        {
          LODWORD(v18) = 2139095039;
          if (*v6 >= 0.0)
          {
            v18 = *v6;
            v19 = (*(*(v17 + 16 * *(v6 + 12)) + 8) + 56 * *(v6 + 8));
            *(v6 + 4) = HIDWORD(*v6);
            *(v6 + 8) = vextq_s8(v19[2], v19[2], 8uLL);
          }

          *v6 = v18;
          v6 += v15;
        }

        while (v6 < v16);
      }

      return 1;
    }
  }

  return 0;
}

uint64_t Phase::Geometry::GetOrAddMpsCpuSceneDescriptor(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  *&v11 = a2;
  *(&v11 + 1) = a3;
  v4 = *a1;
  v5 = a1[1];
  if (*a1 == v5)
  {
LABEL_9:
    if (v5 >= a1[2])
    {
      v9 = std::vector<Phase::Geometry::MpsCpuSceneDescriptor>::__emplace_back_slow_path<Phase::Geometry::MpsCpuGroupParams &>(a1, &v11);
    }

    else
    {
      *v5 = 0;
      *(v5 + 8) = 0;
      *(v5 + 16) = 0;
      *(v5 + 24) = v11;
      *(v5 + 40) = 0;
      v9 = v5 + 48;
    }

    a1[1] = v9;
    return v9 - 48;
  }

  else
  {
    v6 = (v4 + 24);
    while (1)
    {
      v7 = std::__equal_aligned[abi:ne200100]<std::__bitset<1ul,32ul>,true,true>(v6, 0, v6, 0x20u, &v11);
      v8 = *(v4 + 32) == BYTE8(v11) ? v7 : 0;
      if (v8)
      {
        break;
      }

      v4 += 48;
      v6 += 6;
      if (v4 == v5)
      {
        v5 = a1[1];
        goto LABEL_9;
      }
    }
  }

  return v4;
}

uint64_t *Phase::Geometry::GetMpsCpuScenePtr(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v9 = a2;
  v10 = a3;
  v3 = *a1;
  v4 = a1[1];
  while (v3 != v4)
  {
    v5 = *v3;
    v6 = std::__equal_aligned[abi:ne200100]<std::__bitset<1ul,32ul>,true,true>((*v3 + 32), 0, *v3 + 32, 0x20u, &v9);
    if (*(v5 + 40) == v10)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      return v3;
    }

    v3 += 2;
  }

  return 0;
}

void std::vector<MPSCPUAccelerationStructureTriangleGeometryDescriptor * {__strong}>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v5);
    do
    {
      v9 = *v7;
      *v7++ = 0;
      *v8++ = v9;
    }

    while (v7 != v5);
    do
    {
      v10 = *v4++;
    }

    while (v4 != v5);
    v4 = *a1;
  }

  a2[1] = v6;
  *a1 = v6;
  *(a1 + 8) = v4;
  a2[1] = v4;
  v11 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
}

uint64_t std::__split_buffer<MPSCPUAccelerationStructureTriangleGeometryDescriptor * {__strong}>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<MPSCPUAccelerationStructureTriangleGeometryDescriptor * {__strong}>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::vector<Phase::Geometry::MpsCpuSceneDescriptor>::__emplace_back_slow_path<Phase::Geometry::MpsCpuGroupParams &>(uint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = v2 - *a1;
  v5 = 0xAAAAAAAAAAAAAAABLL * (v4 >> 4) + 1;
  if (v5 > 0x555555555555555)
  {
    std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - v3) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - v3) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - v3) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  v20 = a1;
  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v8 = 16 * (v4 >> 4);
  v17 = 0;
  v18 = v8;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  *v8 = 0;
  *(v8 + 24) = *a2;
  *(v8 + 40) = 0;
  v19 = (v8 + 48);
  v9 = v8 - v4;
  v23 = v8 - v4;
  v24 = v8 - v4;
  v21[0] = a1;
  v21[1] = &v23;
  v21[2] = &v24;
  v22 = 0;
  if (v3 == v2)
  {
    v22 = 1;
  }

  else
  {
    v10 = 16 * (v4 >> 4) - v4;
    v11 = v3;
    do
    {
      *v10 = 0;
      *(v10 + 8) = 0;
      *(v10 + 16) = 0;
      std::vector<std::tuple<Phase::Affine<float>,Phase::Handle64,Phase::Handle64,Phase::Geometry::Shape *>>::__init_with_size[abi:ne200100]<std::tuple<Phase::Affine<float>,Phase::Handle64,Phase::Handle64,Phase::Geometry::Shape *>*,std::tuple<Phase::Affine<float>,Phase::Handle64,Phase::Handle64,Phase::Geometry::Shape *>*>(v10, *v11, *(v11 + 8), 0x6DB6DB6DB6DB6DB7 * ((*(v11 + 8) - *v11) >> 3));
      *(v10 + 24) = *(v11 + 24);
      *(v10 + 40) = *(v11 + 40);
      v11 += 48;
      v10 = v24 + 48;
      v24 += 48;
    }

    while (v11 != v2);
    v22 = 1;
    do
    {
      v12 = *v3;
      if (*v3)
      {
        *(v3 + 8) = v12;
        operator delete(v12);
      }

      v3 += 48;
    }

    while (v3 != v2);
  }

  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<Phase::Geometry::MpsCpuSceneDescriptor>,Phase::Geometry::MpsCpuSceneDescriptor*>>::~__exception_guard_exceptions[abi:ne200100](v21);
  v13 = *a1;
  *a1 = v9;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  std::__split_buffer<Phase::Geometry::MpsCpuSceneDescriptor>::~__split_buffer(&v17);
  return v16;
}

void sub_23A3F9D9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<Phase::Geometry::MpsCpuSceneDescriptor>,Phase::Geometry::MpsCpuSceneDescriptor*>>::~__exception_guard_exceptions[abi:ne200100](va1);
  std::__split_buffer<Phase::Geometry::MpsCpuSceneDescriptor>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<Phase::Geometry::MpsCpuSceneDescriptor>,Phase::Geometry::MpsCpuSceneDescriptor*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 8);
    v3 = **(a1 + 16);
    if (v3 != v2)
    {
      v4 = **(a1 + 16);
      do
      {
        v6 = *(v4 - 48);
        v4 -= 48;
        v5 = v6;
        if (v6)
        {
          *(v3 - 40) = v5;
          operator delete(v5);
        }

        v3 = v4;
      }

      while (v4 != v2);
    }
  }

  return a1;
}

uint64_t std::__split_buffer<Phase::Geometry::MpsCpuSceneDescriptor>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v4 = *(v2 - 48);
    *(a1 + 16) = v2 - 48;
    if (v4)
    {
      *(v2 - 40) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 48;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

float Phase::Matrix33From<float>@<S0>(float *a1@<X0>, float *a2@<X8>)
{
  v2 = a1[1];
  v3 = *a1 * *a1;
  v4 = v2 * v2;
  v5 = a1[2];
  v6 = a1[3];
  v7 = v5 * v5;
  v8 = *a1 * v5;
  v9 = *a1 * v2;
  v10 = v2 * v5;
  v11 = *a1 * v6;
  v12 = v2 * v6;
  v13 = v5 * v6;
  *a2 = ((v4 + v7) * -2.0) + 1.0;
  a2[1] = (v9 + v13) + (v9 + v13);
  a2[2] = (v8 - v12) + (v8 - v12);
  a2[3] = (v9 - v13) + (v9 - v13);
  a2[4] = ((v3 + v7) * -2.0) + 1.0;
  a2[5] = (v10 + v11) + (v10 + v11);
  a2[6] = (v8 + v12) + (v8 + v12);
  a2[7] = (v10 - v11) + (v10 - v11);
  result = ((v3 + v4) * -2.0) + 1.0;
  a2[8] = result;
  return result;
}

uint64_t Phase::Geometry::GetMpsIntersections(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v43 = v6;
  v45 = *MEMORY[0x277D85DE8];
  v7 = (v5 - v4);
  if (v7 < 1)
  {
    return 0;
  }

  v8 = v1;
  v9 = *(v1 + 8);
  v10 = *v1;
  if (v9 == *v1)
  {
    return 0;
  }

  v11 = v5;
  v12 = v4;
  v13 = v3;
  v14 = v2;
  v15 = *(v2 + 72);
  if ((v15 & *(*v10 + 32)) == 0)
  {
    v16 = v10 + 2;
    while (v16 != v9)
    {
      v17 = *v16;
      v16 += 2;
      if ((*(v17 + 32) & v15) != 0)
      {
        v10 = v16 - 2;
        goto LABEL_8;
      }
    }

    return 0;
  }

LABEL_8:
  v18 = objc_opt_new();
  [v18 setRayDataType:1];
  [v18 setRayStride:*(v14 + 100)];
  [v18 setIntersectionDataType:5];
  [v18 setIntersectionStride:*(v14 + 100)];
  [v18 getIntersectionsOfType:0 rays:v13 intersections:v43 rayCount:v7 accelerationStructure:**v10];
  v19 = (v10 - *v8) >> 4;
  v20 = v10 + 2;
  do
  {
    if (v20 == v8[1])
    {
      v35 = 1;
      goto LABEL_37;
    }

    v21 = *v20;
    v20 += 2;
  }

  while ((*(v14 + 72) & *(v21 + 32)) == 0);
  [v18 setIntersectionStride:12];
  v42 = (v20 - 2);
  v22 = *(v14 + 100);
  if (v22)
  {
    v23 = v43;
    do
    {
      *(v23 + 12) = v19;
      v23 += v22;
    }

    while (v23 < v43 + v22 * v7);
  }

  v39 = v12;
  v40 = v12;
  v24 = *v42;
  v41 = 1;
LABEL_15:
  v25 = *v24;
  if (v11 > v12)
  {
    v26 = (v42 - *v8) >> 4;
    v27 = v39;
    do
    {
      v28 = v27 + 427;
      if (v27 + 427 >= v11)
      {
        v29 = v11;
      }

      else
      {
        v29 = v27 + 427;
      }

      v30 = v29 - v27;
      [v18 getIntersectionsOfType:0 rays:v13 + 32 * v27 intersections:v44 rayCount:v30 accelerationStructure:{v25, v39}];
      if (v30 >= 1)
      {
        v31 = *(v14 + 100);
        v32 = v43 + 16 * v27;
        v33 = v44;
        do
        {
          if (*v33 >= 0.0 && (*v32 < 0.0 || *v33 < *v32))
          {
            *v32 = *v33;
            *(v32 + 8) = v33[2];
            *(v32 + 12) = v26;
          }

          v32 += v31;
          v33 += 3;
        }

        while (v33 < &v44[3 * v30]);
      }

      v27 += 427;
    }

    while (v28 < v11);
  }

  v35 = (v41 + 1);
  v36 = (v42 + 2);
  v12 = v40;
  while (v36 != v8[1])
  {
    v37 = *v36;
    v36 += 2;
    v24 = v37;
    if ((*(v14 + 72) & *(v37 + 32)) != 0)
    {
      ++v41;
      v42 = (v36 - 2);
      goto LABEL_15;
    }
  }

LABEL_37:

  return v35;
}

void Phase::Geometry::AddMpsMesh(uint64_t a1)
{
  v2 = *MEMORY[0x277D85DE8];
  v1 = (*(a1 + 104) - *(a1 + 96)) >> 4;
  std::vector<std::shared_ptr<Phase::Geometry::SharedDataStream>>::resize(a1 + 96, 7uLL);
  if (v1 <= 6)
  {
    operator new();
  }

  operator new();
}

void sub_23A3FB0DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26)
{
  if (__p)
  {
    a26 = __p;
    operator delete(__p);
  }

  if (*(a11 + 8))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(a11 + 8));
  }

  Phase::MdlMeshAsset::~MdlMeshAsset(&a19);
  _Unwind_Resume(a1);
}

uint64_t _ZN5Phase8Geometry19DataStreamReferenceIDv3_fE6ResizeEm(uint64_t result, uint64_t a2, unint64_t a3)
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
    *(v9 + 16 * v8) = *(v6 + 16 * v8);
    ++v8;
  }

  while (v3 != v8);
  return MEMORY[0x23EE86470](v6, 0x1000C8077774924);
}

void sub_23A3FB280(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    MEMORY[0x23EE86470](v1, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Geometry::DataStreamReference<int>::Resize(uint64_t result, uint64_t a2, unint64_t a3)
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

void sub_23A3FB3AC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    MEMORY[0x23EE86470](v1, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

void Phase::Geometry::CreateMpsMeshFromShape(int a1, _DWORD *a2, void *a3)
{
  v4[9] = *MEMORY[0x277D85DE8];
  if (*a2 == 3)
  {
    Phase::Geometry::ForcedCopyTagsIncludingMaterialListFromOptions(1uLL, a3, &__p);
    LODWORD(v4[0]) = 15;
    std::vector<unsigned int>::push_back[abi:ne200100](&__p.__begin_, v4);
    LODWORD(v4[0]) = 16;
    std::vector<unsigned int>::push_back[abi:ne200100](&__p.__begin_, v4);
    std::allocate_shared[abi:ne200100]<Phase::Geometry::Shape,std::allocator<Phase::Geometry::Shape>,Phase::Geometry::Shape&,std::vector<unsigned int> &,0>();
  }

  std::terminate();
}

void sub_23A3FB5D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Phase::Geometry::GetNormals(_BOOL8 a1, unsigned int *a2, int a3, uint64_t a4, int a5, uint64_t a6)
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a3 * a6;
  if (v7 >= 1)
  {
    v9 = a2;
    v10 = a1;
    v11 = a5;
    v12 = a2 + v7;
    do
    {
      v13 = *(**(v10 + 48) + 16 * *(v10 + 56));
      v14 = v13[3];
      v15 = *v9;
      if (v14 <= v15)
      {
        v18 = **(Phase::Logger::GetInstance(a1) + 224);
        a1 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
        if (a1)
        {
          v19 = *v9;
          *buf = 136315906;
          v21 = "GeoMpsMesh.cpp";
          v22 = 1024;
          v23 = 418;
          v24 = 1024;
          v25 = v19;
          v26 = 1024;
          v27 = v14;
          _os_log_impl(&dword_23A302000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d GeoMpsMesh.cpp: GetNormals: index out of range. Primitive Index: %i, Count: %i.\n", buf, 0x1Eu);
        }

        *a4 = 0x3F80000000000000;
        v17 = 0;
      }

      else
      {
        v16 = (v13[1] + v13[4] * v15);
        *a4 = *v16;
        *(a4 + 4) = v16[1];
        v17 = v16[2];
      }

      *(a4 + 8) = v17;
      a4 += v11;
      v9 = (v9 + v6);
    }

    while (v9 < v12);
  }
}

uint64_t std::__function::__func<std::unique_ptr<Phase::Geometry::DataMap,std::function<void ()(void *)>> Phase::Geometry::MakeDataMapPtr<Phase::Geometry::MpsMesh>(Phase::Geometry::MpsMesh *)::{lambda(void *)#1},std::allocator<std::unique_ptr<Phase::Geometry::DataMap,std::function<void ()(void *)>> Phase::Geometry::MakeDataMapPtr<Phase::Geometry::MpsMesh>(Phase::Geometry::MpsMesh *)::{lambda(void *)#1}>,void ()(void *)>::operator()(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (*a2)
  {
    JUMPOUT(0x23EE864A0);
  }

  return result;
}

void Phase::Geometry::SingleHitRaycastVsMesh(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(a3 + 8);
  v4 = *(a3 + 12);
  v6 = *(a3 + 24);
  v7 = *(a3 + 28);
  *(a3 + 32) = 2139095039;
  *(a3 + 36) = 0;
  v30 = a3 + 36;
  *(a3 + 44) = 0;
  *(a3 + 52) = 0;
  *(a3 + 56) = 0xFFFFFFFFLL;
  *(a3 + 64) = 0;
  v29 = (a3 + 64);
  v28 = a4[1];
  v8 = **(v28 + 120);
  v9 = *(*(**(v8 + 16) + 16 * *(v8 + 24)) + 8);
  v39 = vcvtq_f64_f32(*a3);
  v40 = v5;
  v41 = vcvtq_f64_f32(*(a3 + 16));
  v42 = v6;
  v10 = *(v8 + 56);
  v27 = v8;
  v11 = **(v8 + 48);
  v12 = *(v11 + 16 * v10);
  if (v12[3])
  {
    v15 = 0;
    v16 = v4;
    do
    {
      v17 = v12[1] + v12[4] * v15;
      if (*(v17 + 24) != 1)
      {
        __assert_rtn("RaycastVsMesh", "GeoRaycastUtility.hpp", 533, "MeshTopology::Triangles == submesh.mTopology");
      }

      v18 = *(*(**(v17 + 48) + 16 * *(v17 + 56)) + 24);
      if (v18)
      {
        v19 = 0;
        v20 = v15 << 24;
        v21 = (*(*(**(v17 + 32) + 16 * *(v17 + 40)) + 8) + 8);
        do
        {
          v22 = (v9 + 12 * *(v21 - 2));
          v23 = (v9 + 12 * *(v21 - 1));
          v24 = (v9 + 12 * *v21);
          v31 = vcvtq_f64_f32(*v22);
          v32 = v22[1].f32[0];
          v33 = vcvtq_f64_f32(*v23);
          v34 = v23[1].f32[0];
          v35 = vcvtq_f64_f32(*v24);
          v36 = v24[1].f32[0];
          Phase::Intersection<double>(v31.f64, v39.f64, v37);
          if (v38 == 1 && v37[0] < v7 && v37[0] > v16)
          {
            if (v15 >= 0x100)
            {
              std::terminate();
            }

            v7 = v37[0];
            v25 = *(v28 + 8);
            LODWORD(v31.f64[0]) = v20 | v19;
            *(a3 + 32) = v7;
            *(a3 + 48) = v25;
            *(a3 + 56) = v20 | v19;
            v26 = **(a4[1] + 120);
            Phase::Geometry::GetNormals(v26, (*a4 + 48), &v31, 1, v30, 1, 1);
            Phase::Geometry::GetMaterials(v26, &v31, 1, v29, 1, 1);
          }

          v21 += 3;
          ++v19;
        }

        while (v18 != v19);
        v10 = *(v27 + 56);
        v11 = **(v27 + 48);
      }

      ++v15;
      v12 = *(v11 + 16 * v10);
    }

    while (v15 < v12[3]);
  }
}

double *Phase::Geometry::SingleHitRaycastVsMeshV2(uint64_t a1, uint64_t a2, float32x2_t *a3, float32x2_t **a4)
{
  v5 = a3[1].f32[0];
  v4 = a3[1].f32[1];
  v6 = a3[3].f32[0];
  v7 = a3[3].f32[1];
  a3[5] = 0;
  a3[6] = 0;
  a3[4] = -2155872257;
  v8 = a4[1];
  v9 = (*a4)[1];
  v10 = **&v8[15];
  v11 = *(*(**(v10 + 16) + 16 * *(v10 + 24)) + 8);
  v36 = vcvtq_f64_f32(*a3);
  v37 = v5;
  v38 = vcvtq_f64_f32(a3[2]);
  v39 = v6;
  v12 = *(v10 + 56);
  v27 = v10;
  v13 = **(v10 + 48);
  v14 = *(v13 + 16 * v12);
  if (v14[3])
  {
    v16 = 0;
    v17 = v4;
    do
    {
      v18 = v14[1] + v14[4] * v16;
      if (*(v18 + 24) != 1)
      {
        __assert_rtn("RaycastVsMesh", "GeoRaycastUtility.hpp", 533, "MeshTopology::Triangles == submesh.mTopology");
      }

      v19 = *(*(**(v18 + 48) + 16 * *(v18 + 56)) + 24);
      if (v19)
      {
        v20 = 0;
        v21 = (*(*(**(v18 + 32) + 16 * *(v18 + 40)) + 8) + 8);
        do
        {
          v22 = (v11 + 12 * *(v21 - 2));
          v23 = (v11 + 12 * *(v21 - 1));
          v24 = (v11 + 12 * *v21);
          v28 = vcvtq_f64_f32(*v22);
          v29 = v22[1].f32[0];
          v30 = vcvtq_f64_f32(*v23);
          v31 = v23[1].f32[0];
          v32 = vcvtq_f64_f32(*v24);
          v33 = v24[1].f32[0];
          result = Phase::Intersection<double>(v28.f64, v36.f64, v34);
          if (v35 == 1 && v34[0] < v7 && v34[0] > v17)
          {
            if (v16 >= 0x100)
            {
              std::terminate();
            }

            v26 = v8[1];
            v7 = v34[0];
            a3[4].f32[0] = v7;
            a3[4].i32[1] = (v16 << 24) | v20;
            a3[5] = v26;
            a3[6] = v9;
          }

          v21 += 3;
          ++v20;
        }

        while (v19 != v20);
        v12 = *(v27 + 56);
        v13 = **(v27 + 48);
      }

      ++v16;
      v14 = *(v13 + 16 * v12);
    }

    while (v16 < v14[3]);
  }

  return result;
}

void Phase::Geometry::MultiHitRaycastVsMesh(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  std::unique_ptr<Phase::Geometry::RaycastHit [],std::function<void ()(void *)>>::reset[abi:ne200100]((a3 + 32));
  *(a3 + 72) = 0;
  __p = 0;
  v31 = 0;
  v32 = 0;
  v28 = a4[1];
  v29 = a4;
  v7 = **(v28 + 120);
  v8 = *(*(**(v7 + 16) + 16 * *(v7 + 24)) + 8);
  v9 = *(a3 + 8);
  v10 = *(a3 + 24);
  v41 = vcvtq_f64_f32(*a3);
  v42 = v9;
  v43 = vcvtq_f64_f32(*(a3 + 16));
  v44 = v10;
  v11 = *(v7 + 56);
  v27 = v7;
  v12 = **(v7 + 48);
  v13 = *(v12 + 16 * v11);
  if (v13[3])
  {
    v14 = 0;
    do
    {
      v15 = v13[1] + v13[4] * v14;
      if (*(v15 + 24) != 1)
      {
        __assert_rtn("RaycastVsMesh", "GeoRaycastUtility.hpp", 533, "MeshTopology::Triangles == submesh.mTopology");
      }

      v16 = *(*(**(v15 + 48) + 16 * *(v15 + 56)) + 24);
      if (v16)
      {
        v17 = 0;
        v18 = v14 << 24;
        v19 = (*(*(**(v15 + 32) + 16 * *(v15 + 40)) + 8) + 8);
        do
        {
          v20 = (v8 + 12 * *(v19 - 2));
          v21 = (v8 + 12 * *(v19 - 1));
          v22 = (v8 + 12 * *v19);
          v33 = vcvtq_f64_f32(*v20);
          v34 = v20[1].f32[0];
          v35 = vcvtq_f64_f32(*v21);
          v36 = v21[1].f32[0];
          v37 = vcvtq_f64_f32(*v22);
          v38 = v22[1].f32[0];
          Phase::Intersection<double>(v33.f64, v41.f64, v39);
          if (v40 == 1 && v39[0] < *(a3 + 28) && v39[0] > *(a3 + 12))
          {
            if (v14 >= 0x100)
            {
              std::terminate();
            }

            v23 = v39[0];
            v24 = *(v28 + 8);
            v45[0] = v18 | v17;
            HIDWORD(v33.f64[1]) = 0;
            *(v33.f64 + 4) = 0.0;
            v35.f64[1] = 0.0;
            *v33.f64 = v23;
            v34 = v24;
            LODWORD(v35.f64[0]) = v18 | v17;
            v25 = **(v29[1] + 120);
            Phase::Geometry::GetNormals(v25, (*v29 + 48), v45, 1, v33.f64 + 4, 1, 1);
            Phase::Geometry::GetMaterials(v25, v45, 1, &v35.f64[1], 1, 1);
            std::vector<Phase::Geometry::RaycastHit>::push_back[abi:ne200100](&__p, &v33);
          }

          v19 += 3;
          ++v17;
        }

        while (v16 != v17);
        v11 = *(v27 + 56);
        v12 = **(v27 + 48);
      }

      ++v14;
      v13 = *(v12 + 16 * v11);
    }

    while (v14 < v13[3]);
    v26 = 0xCCCCCCCCCCCCCCCDLL * ((v31 - __p) >> 3);
  }

  else
  {
    v26 = 0;
  }

  Phase::Geometry::MergeRaycastQueryHits<Phase::Geometry::RaycastHit,std::vector<Phase::Geometry::RaycastHit>>(a1, (a3 + 32), &__p, v26);
  if (__p)
  {
    v31 = __p;
    operator delete(__p);
  }
}

void sub_23A3FC240(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Geometry::MergeRaycastQueryHits<Phase::Geometry::RaycastHit,std::vector<Phase::Geometry::RaycastHit>>(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v29 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v4 = a4;
    v7 = a2 + 5;
    v8 = a2[5] + a4;
    v21 = 8;
    v22 = v8;
    v23 = &v22;
    v24[0] = &v21;
    Phase::details::AllocArray<Phase::Geometry::RaycastHit,std::unique_ptr<Phase::Geometry::RaycastHit [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Geometry::RaycastHit>(unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::Geometry::RaycastHit [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Geometry::RaycastHit>(unsigned long,unsigned long)::{lambda(Phase::Geometry::RaycastHit*)#1} const&>(v8, &v23, &v26);
    v9 = v26;
    v26 = 0;
    v23 = v9;
    std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](v24, v27);
    v25 = v8;
    std::unique_ptr<Phase::Geometry::RaycastHit [],std::function<void ()(void *)>>::reset[abi:ne200100](&v26);
    std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v27);
    if (*v7)
    {
      v10 = 0;
      v11 = 0;
      do
      {
        v12 = *a2 + v10 * 8;
        v13 = &v23[v10];
        *v13 = *v12;
        *(v13 + 1) = *(v12 + 4);
        *(v13 + 2) = *(v12 + 8);
        *(v13 + 3) = *(v12 + 12);
        v14 = *(v12 + 16);
        v13[4] = *(v12 + 32);
        *(v13 + 1) = v14;
        ++v11;
        v10 += 5;
      }

      while (a2[5] > v11);
    }

    v15 = 0;
    do
    {
      v16 = *a3 + v15 * 8;
      v17 = &v23[5 * a2[5] + v15];
      *v17 = *v16;
      *(v17 + 1) = *(v16 + 4);
      *(v17 + 2) = *(v16 + 8);
      *(v17 + 3) = *(v16 + 12);
      v18 = *(v16 + 16);
      v17[4] = *(v16 + 32);
      *(v17 + 1) = v18;
      v15 += 5;
      --v4;
    }

    while (v4);
    v19 = *a2;
    *a2 = 0;
    v26 = v19;
    std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](v27, (a2 + 1));
    v28 = a2[5];
    std::unique_ptr<Phase::Geometry::RaycastHit [],std::function<void ()(void *)>>::operator=[abi:ne200100](a2, &v23);
    a2[5] = v25;
    std::unique_ptr<Phase::Geometry::RaycastHit [],std::function<void ()(void *)>>::operator=[abi:ne200100](&v23, &v26);
    v25 = v28;
    std::unique_ptr<Phase::Geometry::RaycastHit [],std::function<void ()(void *)>>::reset[abi:ne200100](&v26);
    std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v27);
    std::unique_ptr<Phase::Geometry::RaycastHit [],std::function<void ()(void *)>>::reset[abi:ne200100](&v23);
    return std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v24);
  }

  return result;
}

void Phase::Geometry::MultiHitRaycastVsMeshV2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  std::unique_ptr<Phase::Geometry::RaycastHitV2 [],std::function<void ()(void *)>>::reset[abi:ne200100]((a3 + 32));
  *(a3 + 72) = 0;
  v40 = 0;
  v41 = 0;
  __src = 0;
  v37 = *(*a4 + 8);
  v38 = a4[1];
  v7 = **(v38 + 120);
  v8 = *(*(**(v7 + 16) + 16 * *(v7 + 24)) + 8);
  v9 = *(a3 + 8);
  v10 = *(a3 + 24);
  v50 = vcvtq_f64_f32(*a3);
  v51 = v9;
  v52 = vcvtq_f64_f32(*(a3 + 16));
  v53 = v10;
  v11 = *(v7 + 56);
  v36 = v7;
  v12 = **(v7 + 48);
  v13 = *(v12 + 16 * v11);
  if (v13[3])
  {
    v35 = a1;
    v14 = 0;
    do
    {
      v15 = v13[1] + v13[4] * v14;
      if (*(v15 + 24) != 1)
      {
        __assert_rtn("RaycastVsMesh", "GeoRaycastUtility.hpp", 533, "MeshTopology::Triangles == submesh.mTopology");
      }

      v16 = *(*(**(v15 + 48) + 16 * *(v15 + 56)) + 24);
      if (v16)
      {
        v17 = 0;
        v18 = (*(*(**(v15 + 32) + 16 * *(v15 + 40)) + 8) + 8);
        do
        {
          v19 = (v8 + 12 * *(v18 - 2));
          v20 = (v8 + 12 * *(v18 - 1));
          v21 = (v8 + 12 * *v18);
          v42 = vcvtq_f64_f32(*v19);
          v43 = v19[1].f32[0];
          v44 = vcvtq_f64_f32(*v20);
          v45 = v20[1].f32[0];
          v46 = vcvtq_f64_f32(*v21);
          v47 = v21[1].f32[0];
          Phase::Intersection<double>(v42.f64, v50.f64, v48);
          if (v49 == 1 && v48[0] < *(a3 + 28) && v48[0] > *(a3 + 12))
          {
            if (v14 >= 0x100)
            {
              std::terminate();
            }

            v22 = (v14 << 24) | v17;
            v23 = v48[0];
            v24 = *(v38 + 8);
            v25 = v40;
            if (v40 >= v41)
            {
              v27 = __src;
              v28 = v40 - __src;
              v29 = 0xAAAAAAAAAAAAAAABLL * ((v40 - __src) >> 3);
              v30 = v29 + 1;
              if (v29 + 1 > 0xAAAAAAAAAAAAAAALL)
              {
                std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
              }

              if (0x5555555555555556 * ((v41 - __src) >> 3) > v30)
              {
                v30 = 0x5555555555555556 * ((v41 - __src) >> 3);
              }

              if (0xAAAAAAAAAAAAAAABLL * ((v41 - __src) >> 3) >= 0x555555555555555)
              {
                v30 = 0xAAAAAAAAAAAAAAALL;
              }

              if (v30)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::Controller::SpatialModelerParameterAddress>>(&__src, v30);
              }

              v31 = 8 * ((v40 - __src) >> 3);
              *v31 = v23;
              *(v31 + 4) = v22;
              *(v31 + 8) = v24;
              *(v31 + 16) = v37;
              v26 = 24 * v29 + 24;
              v32 = (24 * v29 - v28);
              memcpy(v32, v27, v28);
              v33 = __src;
              __src = v32;
              v40 = v26;
              v41 = 0;
              if (v33)
              {
                operator delete(v33);
              }
            }

            else
            {
              *v40 = v23;
              *(v25 + 1) = v22;
              v26 = (v25 + 6);
              *(v25 + 1) = v24;
              *(v25 + 2) = v37;
            }

            v40 = v26;
          }

          v18 += 3;
          ++v17;
        }

        while (v16 != v17);
        v11 = *(v36 + 56);
        v12 = **(v36 + 48);
      }

      ++v14;
      v13 = *(v12 + 16 * v11);
    }

    while (v14 < v13[3]);
    v34 = 0xAAAAAAAAAAAAAAABLL * ((v40 - __src) >> 3);
    a1 = v35;
  }

  else
  {
    v34 = 0;
  }

  Phase::Geometry::MergeRaycastQueryHits<Phase::Geometry::RaycastHitV2,std::vector<Phase::Geometry::RaycastHitV2>>(a1, (a3 + 32), &__src, v34);
  if (__src)
  {
    v40 = __src;
    operator delete(__src);
  }
}

void sub_23A3FC800(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Geometry::MergeRaycastQueryHits<Phase::Geometry::RaycastHitV2,std::vector<Phase::Geometry::RaycastHitV2>>(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v29 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v4 = a4;
    v7 = a2 + 5;
    v8 = a2[5] + a4;
    v21 = 8;
    v22 = v8;
    v23 = &v22;
    v24[0] = &v21;
    Phase::details::AllocArray<Phase::Geometry::RaycastHitV2,std::unique_ptr<Phase::Geometry::RaycastHitV2 [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Geometry::RaycastHitV2>(unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::Geometry::RaycastHitV2 [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Geometry::RaycastHitV2>(unsigned long,unsigned long)::{lambda(Phase::Geometry::RaycastHitV2*)#1} const&>(v8, &v23, &v26);
    v9 = v26;
    v26 = 0;
    v23 = v9;
    std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](v24, v27);
    v25 = v8;
    std::unique_ptr<Phase::Geometry::RaycastHitV2 [],std::function<void ()(void *)>>::reset[abi:ne200100](&v26);
    std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v27);
    if (*v7)
    {
      v10 = 0;
      v11 = 0;
      do
      {
        v12 = *a2 + v10 * 8;
        v13 = &v23[v10];
        v14 = *v12;
        v13[2] = *(v12 + 16);
        *v13 = v14;
        ++v11;
        v10 += 3;
      }

      while (a2[5] > v11);
    }

    v15 = 0;
    do
    {
      v16 = (*a3 + v15 * 8);
      v17 = &v23[3 * a2[5] + v15];
      v18 = *v16;
      v17[2] = *(v16 + 2);
      *v17 = v18;
      v15 += 3;
      --v4;
    }

    while (v4);
    v19 = *a2;
    *a2 = 0;
    v26 = v19;
    std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](v27, (a2 + 1));
    v28 = a2[5];
    std::unique_ptr<Phase::Geometry::RaycastHitV2 [],std::function<void ()(void *)>>::operator=[abi:ne200100](a2, &v23);
    a2[5] = v25;
    std::unique_ptr<Phase::Geometry::RaycastHitV2 [],std::function<void ()(void *)>>::operator=[abi:ne200100](&v23, &v26);
    v25 = v28;
    std::unique_ptr<Phase::Geometry::RaycastHitV2 [],std::function<void ()(void *)>>::reset[abi:ne200100](&v26);
    std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v27);
    std::unique_ptr<Phase::Geometry::RaycastHitV2 [],std::function<void ()(void *)>>::reset[abi:ne200100](&v23);
    return std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v24);
  }

  return result;
}

double *Phase::Intersection<double>@<X0>(double *result@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2[3];
  v4 = a2[4];
  v5 = a2[5];
  v6 = result[1];
  v7 = result[2];
  v8 = result[3] - *result;
  v9 = result[4] - v6;
  v10 = result[5] - v7;
  v11 = result[6] - *result;
  v12 = result[7] - v6;
  v13 = result[8] - v7;
  v14 = v4 * v13 - v5 * v12;
  v15 = v5 * v11 - v3 * v13;
  v16 = v3 * v12 - v4 * v11;
  v17 = v10 * v16 + v8 * v14 + v9 * v15;
  v18 = -v17;
  if (v17 >= 0.0)
  {
    v18 = v10 * v16 + v8 * v14 + v9 * v15;
  }

  if (v18 > 2.22044605e-16 && ((v19 = 1.0 / v17, v20 = *a2 - *result, v21 = a2[1] - v6, v22 = a2[2] - v7, v23 = v19 * (v16 * v22 + v15 * v21 + v14 * v20), v23 >= 0.0) ? (v24 = v23 <= 1.0) : (v24 = 0), v24 && ((v25 = v21 * v10 - v22 * v9, v26 = v22 * v8 - v20 * v10, v27 = v20 * v9 - v21 * v8, v28 = v19 * (v5 * v27 + v3 * v25 + v4 * v26), v28 >= 0.0) ? (v29 = v23 + v28 <= 1.0) : (v29 = 0), v29 && (v30 = v19 * (v13 * v27 + v11 * v25 + v12 * v26), v30 > 0.0))))
  {
    *a3 = v30;
    *(a3 + 8) = v30;
    v31 = 1;
  }

  else
  {
    v31 = 0;
    *a3 = 0;
  }

  *(a3 + 16) = v31;
  return result;
}

uint64_t *std::unique_ptr<Phase::Geometry::RaycastHit [],std::function<void ()(void *)>>::reset[abi:ne200100](uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    return std::function<void ()(void *)>::operator()((result + 1), v1);
  }

  return result;
}

uint64_t std::vector<Phase::Geometry::RaycastHit>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<Phase::Geometry::RaycastHit>::__emplace_back_slow_path<Phase::Geometry::RaycastHit const&>(a1, a2);
  }

  else
  {
    *v3 = *a2;
    *(v3 + 4) = *(a2 + 4);
    *(v3 + 8) = *(a2 + 8);
    *(v3 + 12) = *(a2 + 12);
    v4 = *(a2 + 16);
    *(v3 + 32) = *(a2 + 32);
    *(v3 + 16) = v4;
    result = v3 + 40;
  }

  a1[1] = result;
  return result;
}

uint64_t std::vector<Phase::Geometry::RaycastHit>::__emplace_back_slow_path<Phase::Geometry::RaycastHit const&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v15 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::Geometry::RaycastHit>>(a1, v6);
  }

  v7 = 40 * v2;
  __p = 0;
  v12 = v7;
  v14 = 0;
  *v7 = *a2;
  *(v7 + 4) = *(a2 + 4);
  *(v7 + 8) = *(a2 + 8);
  *(v7 + 12) = *(a2 + 12);
  v8 = *(a2 + 16);
  *(v7 + 32) = *(a2 + 32);
  *(v7 + 16) = v8;
  v13 = 40 * v2 + 40;
  std::vector<Phase::Geometry::RaycastHit>::__swap_out_circular_buffer(a1, &__p);
  v9 = a1[1];
  if (v13 != v12)
  {
    v13 = (v13 - v12 - 40) % 0x28uLL + v12;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v9;
}

void sub_23A3FCD1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<Phase::Geometry::RaycastHit>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = a2[1] + *result - v3;
    do
    {
      *v5 = *v2;
      *(v5 + 4) = *(v2 + 4);
      *(v5 + 8) = *(v2 + 8);
      *(v5 + 12) = *(v2 + 12);
      v6 = *(v2 + 16);
      *(v5 + 32) = *(v2 + 32);
      *(v5 + 16) = v6;
      v2 += 40;
      v5 += 40;
    }

    while (v2 != v3);
    v2 = *result;
  }

  a2[1] = v4;
  *result = v4;
  result[1] = v2;
  a2[1] = v2;
  v7 = result[1];
  result[1] = a2[2];
  a2[2] = v7;
  v8 = result[2];
  result[2] = a2[3];
  a2[3] = v8;
  *a2 = a2[1];
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::Geometry::RaycastHit>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t Phase::details::AllocArray<Phase::Geometry::RaycastHit,std::unique_ptr<Phase::Geometry::RaycastHit [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Geometry::RaycastHit>(unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::Geometry::RaycastHit [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Geometry::RaycastHit>(unsigned long,unsigned long)::{lambda(Phase::Geometry::RaycastHit*)#1} const&>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v8 = **(Phase::Logger::GetInstance(0) + 128);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v10 = 136315394;
      *&v10[4] = "ManagedPtr.hpp";
      v11 = 1024;
      v12 = 229;
      _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [inCount == 0 is true]: Attempting to allocate an array of 0 elements", v10, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Attempting to allocate an array of 0 elements");
  }

  v5 = operator new(40 * **a2, **(a2 + 8));
  v6 = v5;
  do
  {
    *v6 = 2139095039;
    *(v6 + 12) = 0;
    *(v6 + 4) = 0;
    *(v6 + 20) = 0xFFFFFFFF00000000;
    *(v6 + 4) = 0;
    v6 += 40;
  }

  while (v6 != &v5[40 * a1]);
  *v10 = &unk_284D345C8;
  v10[8] = 0;
  v13 = v10;
  *a3 = v5;
  std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100]((a3 + 1), v10);
  return std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v10);
}

uint64_t _ZNKSt3__110__function6__funcIZN5Phase7details10AllocArrayINS2_8Geometry10RaycastHitERKZNS3_10AllocArrayIS6_EENS_10unique_ptrIA_T_NS_8functionIFvPvEEEEEmmEUlvE_RKZNS7_IS6_EESF_mmEUlPS9_E_EESF_mOT0_OT1_EUlSC_E_NS_9allocatorISR_EESD_E7__cloneEPNS0_6__baseISD_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_284D345C8;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t *std::unique_ptr<Phase::Geometry::RaycastHit [],std::function<void ()(void *)>>::operator=[abi:ne200100](uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  std::unique_ptr<Phase::Geometry::RaycastHit [],std::function<void ()(void *)>>::reset[abi:ne200100]<Phase::Geometry::RaycastHit*,0>(a1, v4);
  std::__function::__value_func<void ()(void *)>::operator=[abi:ne200100]((a1 + 1), (a2 + 1));
  return a1;
}

uint64_t *std::unique_ptr<Phase::Geometry::RaycastHit [],std::function<void ()(void *)>>::reset[abi:ne200100]<Phase::Geometry::RaycastHit*,0>(uint64_t *result, uint64_t a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    return std::function<void ()(void *)>::operator()((result + 1), v3);
  }

  return result;
}

uint64_t *std::unique_ptr<Phase::Geometry::RaycastHitV2 [],std::function<void ()(void *)>>::reset[abi:ne200100](uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    return std::function<void ()(void *)>::operator()((result + 1), v1);
  }

  return result;
}

uint64_t Phase::details::AllocArray<Phase::Geometry::RaycastHitV2,std::unique_ptr<Phase::Geometry::RaycastHitV2 [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Geometry::RaycastHitV2>(unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::Geometry::RaycastHitV2 [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Geometry::RaycastHitV2>(unsigned long,unsigned long)::{lambda(Phase::Geometry::RaycastHitV2*)#1} const&>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v8 = **(Phase::Logger::GetInstance(0) + 128);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v10 = 136315394;
      *&v10[4] = "ManagedPtr.hpp";
      v11 = 1024;
      v12 = 229;
      _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [inCount == 0 is true]: Attempting to allocate an array of 0 elements", v10, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Attempting to allocate an array of 0 elements");
  }

  v5 = operator new(24 * **a2, **(a2 + 8));
  v6 = v5;
  do
  {
    v6[1] = 0;
    v6[2] = 0;
    *v6 = -2155872257;
    v6 += 3;
  }

  while (v6 != &v5[3 * a1]);
  *v10 = &unk_284D34610;
  v10[8] = 0;
  v13 = v10;
  *a3 = v5;
  std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100]((a3 + 1), v10);
  return std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v10);
}

uint64_t _ZNKSt3__110__function6__funcIZN5Phase7details10AllocArrayINS2_8Geometry12RaycastHitV2ERKZNS3_10AllocArrayIS6_EENS_10unique_ptrIA_T_NS_8functionIFvPvEEEEEmmEUlvE_RKZNS7_IS6_EESF_mmEUlPS9_E_EESF_mOT0_OT1_EUlSC_E_NS_9allocatorISR_EESD_E7__cloneEPNS0_6__baseISD_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_284D34610;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t *std::unique_ptr<Phase::Geometry::RaycastHitV2 [],std::function<void ()(void *)>>::operator=[abi:ne200100](uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  std::unique_ptr<Phase::Geometry::RaycastHitV2 [],std::function<void ()(void *)>>::reset[abi:ne200100]<Phase::Geometry::RaycastHitV2*,0>(a1, v4);
  std::__function::__value_func<void ()(void *)>::operator=[abi:ne200100]((a1 + 1), (a2 + 1));
  return a1;
}

uint64_t *std::unique_ptr<Phase::Geometry::RaycastHitV2 [],std::function<void ()(void *)>>::reset[abi:ne200100]<Phase::Geometry::RaycastHitV2*,0>(uint64_t *result, uint64_t a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    return std::function<void ()(void *)>::operator()((result + 1), v3);
  }

  return result;
}

uint64_t Phase::Geometry::SingleHitRaycastVsScene(uint64_t result, uint64_t a2, __int128 *a3, void *a4, int a5)
{
  v6 = result;
  if (a5)
  {
    *(a3 + 8) = 2139095039;
    *(a3 + 44) = 0;
    *(a3 + 36) = 0;
    *(a3 + 13) = 0;
    *(a3 + 7) = 0xFFFFFFFFLL;
    *(a3 + 8) = 0;
  }

  v7 = *(result + 168);
  v8 = *(result + 184);
  v9 = &v7[3 * v8];
  if (v8)
  {
    v10 = *v7;
    if (!*v7)
    {
      v11 = v7 + 3;
      while (1)
      {
        v7 = v11;
        if (v11 >= v9)
        {
          break;
        }

        v11 += 3;
        v10 = *v7;
        if (*v7)
        {
          goto LABEL_11;
        }
      }

      v10 = 0;
    }

LABEL_11:
    v12 = v9;
  }

  else
  {
    v10 = 0;
    v12 = *(result + 168);
  }

  if (v7 != v9)
  {
    v30 = v9;
    do
    {
      if (v10 && v10->i32[0] == 4 && (v10[18].i32[0] & *(a2 + 72)) != 0)
      {
        v13 = v10[15];
        v14 = v10[16];
        while (v13 != v14)
        {
          v15 = *v13;
          if (*(v6 + 160) > *v13)
          {
            v16 = *(v6 + 144) + 24 * v15;
            if (*(v16 + 20) == HIDWORD(v15))
            {
              v17 = *v16;
              if (*v16)
              {
                if ((v17[4] & *(a2 + 72)) != 0)
                {
                  v18 = *a4 + 32 * *v17;
                  v20 = *(v18 + 24);
                  v19 = (v18 + 24);
                  if (v20)
                  {
                    v32[0] = v10;
                    v32[1] = v17;
                    v35 = *a3;
                    v36 = *(a3 + 2);
                    v21 = a3[2];
                    v40 = a3[3];
                    v22 = *(a3 + 6);
                    v23 = *(a3 + 7);
                    v39 = v21;
                    v24 = a3;
                    v41 = *(a3 + 8);
                    v37 = v22;
                    v38 = fminf(v23, *&v21);
                    Phase::TransformPositionByInverse<float>(v10 + 6, &v35, &v42);
                    *&v35 = v42;
                    *(&v35 + 2) = v43;
                    v25 = v10[7].i32[1];
                    v26 = -v10[7].f32[0];
                    v42 = vneg_f32(v10[6]);
                    v43 = v26;
                    v44 = v25;
                    Phase::operator*<float>(&v42, &v36, &v33);
                    v36 = v33;
                    v27 = 1.0 / v10[9].f32[1];
                    *(&v35 + 3) = *(&v35 + 3) * v27;
                    v37 = v34;
                    v38 = v27 * v38;
                    if (!*v19)
                    {
                      std::__throw_bad_function_call[abi:ne200100]();
                    }

                    result = (*(**v19 + 48))(*v19, v6, a2, &v35, v32);
                    a3 = v24;
                    if (*&v39 < v38)
                    {
                      v28 = *&v39 * v10[9].f32[1];
                      if (v28 < *(v24 + 8))
                      {
                        *(v24 + 8) = v28;
                        *(v24 + 36) = *(&v39 + 4);
                        *(v24 + 11) = HIDWORD(v39);
                        v24[3] = v40;
                        *(v24 + 8) = v41;
                      }
                    }

                    v9 = v30;
                  }
                }
              }
            }
          }

          ++v13;
        }
      }

      if (v7 < v12)
      {
        v29 = v7 + 3;
        while (1)
        {
          v7 = v29;
          if (v29 >= v12)
          {
            break;
          }

          v29 += 3;
          v10 = *v7;
          if (*v7)
          {
            goto LABEL_36;
          }
        }

        v10 = 0;
      }

LABEL_36:
      ;
    }

    while (v7 != v9);
  }

  return result;
}

uint64_t Phase::Geometry::SingleHitRaycastVsSceneV2(uint64_t result, uint64_t a2, __int128 *a3, void *a4, int a5)
{
  v6 = result;
  if (a5)
  {
    *(a3 + 5) = 0;
    *(a3 + 6) = 0;
    *(a3 + 4) = -2155872257;
  }

  v7 = *(result + 168);
  v8 = *(result + 184);
  v9 = &v7[3 * v8];
  if (v8)
  {
    v10 = *v7;
    if (!*v7)
    {
      v11 = v7 + 3;
      while (1)
      {
        v7 = v11;
        if (v11 >= v9)
        {
          break;
        }

        v11 += 3;
        v10 = *v7;
        if (*v7)
        {
          goto LABEL_11;
        }
      }

      v10 = 0;
    }

LABEL_11:
    v12 = v9;
  }

  else
  {
    v10 = 0;
    v12 = *(result + 168);
  }

  if (v7 != v9)
  {
    v30 = a3 + 2;
    do
    {
      if (v10 && v10->i32[0] == 4 && (v10[18].i32[0] & *(a2 + 72)) != 0)
      {
        v13 = v10[15];
        v14 = v10[16];
        while (v13 != v14)
        {
          v15 = *v13;
          if (*(v6 + 160) > *v13)
          {
            v16 = *(v6 + 144) + 24 * v15;
            if (*(v16 + 20) == HIDWORD(v15))
            {
              v17 = *v16;
              if (*v16)
              {
                if ((v17[4] & *(a2 + 72)) != 0)
                {
                  v18 = *a4 + 32 * *v17;
                  v20 = *(v18 + 24);
                  v19 = (v18 + 24);
                  if (v20)
                  {
                    v34 = *a3;
                    v35 = *(a3 + 2);
                    v21 = *(a3 + 6);
                    v22 = *(a3 + 7);
                    v38 = *v30;
                    v23 = fminf(v22, *(a3 + 8));
                    v31[0] = v10;
                    v31[1] = v17;
                    v39 = *(v30 + 2);
                    v36 = v21;
                    v37 = v23;
                    Phase::TransformPositionByInverse<float>(v10 + 6, &v34, &v40);
                    *&v34 = v40;
                    *(&v34 + 2) = v41;
                    v24 = v10[7].i32[1];
                    v25 = -v10[7].f32[0];
                    v40 = vneg_f32(v10[6]);
                    v41 = v25;
                    v42 = v24;
                    Phase::operator*<float>(&v40, &v35, &v32);
                    v35 = v32;
                    v26 = 1.0 / v10[9].f32[1];
                    *(&v34 + 3) = *(&v34 + 3) * v26;
                    v36 = v33;
                    v37 = v26 * v37;
                    if (!*v19)
                    {
                      std::__throw_bad_function_call[abi:ne200100]();
                    }

                    result = (*(**v19 + 48))(*v19, v6, a2, &v34, v31);
                    if (*&v38 < v37)
                    {
                      *&v38 = *&v38 * v10[9].f32[1];
                      if (*&v38 < *v30)
                      {
                        *v30 = v38;
                        *(v30 + 2) = v39;
                      }
                    }
                  }
                }
              }
            }
          }

          ++v13;
        }
      }

      if (v7 < v12)
      {
        v27 = v7 + 3;
        while (1)
        {
          v7 = v27;
          if (v27 >= v12)
          {
            break;
          }

          v27 += 3;
          v10 = *v7;
          if (*v7)
          {
            goto LABEL_35;
          }
        }

        v10 = 0;
      }

LABEL_35:
      ;
    }

    while (v7 != v9);
  }

  return result;
}

uint64_t Phase::Geometry::MultiHitRaycastVsScene(uint64_t result, uint64_t a2, uint64_t *a3, void *a4, int a5)
{
  v7 = result;
  v62 = *MEMORY[0x277D85DE8];
  if (a5)
  {
    result = std::unique_ptr<Phase::Geometry::RaycastHit [],std::function<void ()(void *)>>::reset[abi:ne200100](a3 + 4);
    a3[9] = 0;
  }

  v8 = *(v7 + 168);
  v9 = *(v7 + 184);
  v10 = &v8[3 * v9];
  if (v9)
  {
    v11 = *v8;
    if (!*v8)
    {
      v12 = v8 + 3;
      while (1)
      {
        v8 = v12;
        if (v12 >= v10)
        {
          break;
        }

        v12 += 3;
        v11 = *v8;
        if (*v8)
        {
          goto LABEL_11;
        }
      }

      v11 = 0;
    }

LABEL_11:
    v13 = v10;
  }

  else
  {
    v11 = 0;
    v13 = *(v7 + 168);
  }

  if (v8 != v10)
  {
    v43 = v10;
    v44 = a2;
    do
    {
      if (v11 && v11->i32[0] == 4 && (v11[18].i32[0] & *(a2 + 72)) != 0)
      {
        v14 = v11[15];
        v15 = v11[16];
        while (v14 != v15)
        {
          v16 = *v14;
          if (*(v7 + 160) > *v14)
          {
            v17 = *(v7 + 144) + 24 * v16;
            if (*(v17 + 20) == HIDWORD(v16))
            {
              v18 = *v17;
              if (*v17)
              {
                if ((v18[4] & *(a2 + 72)) != 0)
                {
                  v19 = *a4 + 32 * *v18;
                  v21 = *(v19 + 24);
                  v20 = (v19 + 24);
                  if (v21)
                  {
                    v46[0] = v11;
                    v46[1] = v18;
                    v52 = 0;
                    v53[3] = 0;
                    v54 = 0;
                    v22 = *(a3 + 1);
                    v50 = *a3;
                    v51 = v22;
                    v55 = *(a3 + 80);
                    Phase::TransformPositionByInverse<float>(v11 + 6, &v50, &v59);
                    *&v50 = v59;
                    DWORD2(v50) = v60[0];
                    v23 = v11[7].i32[1];
                    v24 = -v11[7].f32[0];
                    v59 = vneg_f32(v11[6]);
                    *v60 = v24;
                    v60[1] = v23;
                    Phase::operator*<float>(&v59, &v51, &v56);
                    *&v51 = v56;
                    v25 = 1.0 / v11[9].f32[1];
                    *(&v50 + 3) = *(&v50 + 3) * v25;
                    DWORD2(v51) = v57[0];
                    *(&v51 + 3) = v25 * *(&v51 + 3);
                    if (!*v20)
                    {
                      std::__throw_bad_function_call[abi:ne200100]();
                    }

                    (*(**v20 + 48))(*v20, v7, a2, &v50, v46);
                    v26 = v54;
                    if (v54)
                    {
                      v27 = v52;
                      v28 = *(&v51 + 3);
                      v29 = v54;
                      do
                      {
                        if (*v27 < v28)
                        {
                          *v27 = *v27 * v11[9].f32[1];
                        }

                        v27 += 10;
                        --v29;
                      }

                      while (v29);
                      v30 = a3[9] + v26;
                      v48 = 8;
                      v49 = v30;
                      v47[0] = &v49;
                      v47[1] = &v48;
                      Phase::details::AllocArray<Phase::Geometry::RaycastHit,std::unique_ptr<Phase::Geometry::RaycastHit [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Geometry::RaycastHit>(unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::Geometry::RaycastHit [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Geometry::RaycastHit>(unsigned long,unsigned long)::{lambda(Phase::Geometry::RaycastHit*)#1} const&>(v30, v47, &v59);
                      v31 = v59;
                      v59 = 0;
                      v56 = v31;
                      std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](v57, v60);
                      v58 = v30;
                      std::unique_ptr<Phase::Geometry::RaycastHit [],std::function<void ()(void *)>>::reset[abi:ne200100](&v59);
                      std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v60);
                      if (a3[9])
                      {
                        v32 = 0;
                        v33 = 0;
                        do
                        {
                          v34 = a3[4] + v32;
                          v35 = *&v56 + v32;
                          *v35 = *v34;
                          *(v35 + 4) = *(v34 + 4);
                          *(v35 + 8) = *(v34 + 8);
                          *(v35 + 12) = *(v34 + 12);
                          v36 = *(v34 + 16);
                          *(v35 + 32) = *(v34 + 32);
                          *(v35 + 16) = v36;
                          ++v33;
                          v32 += 40;
                        }

                        while (a3[9] > v33);
                      }

                      v37 = 0;
                      do
                      {
                        v38 = &v52[v37];
                        v39 = *&v56 + 40 * a3[9] + v37 * 4;
                        *v39 = v52[v37];
                        *(v39 + 4) = v38[1];
                        *(v39 + 8) = v38[2];
                        *(v39 + 12) = v38[3];
                        v40 = *(v38 + 1);
                        *(v39 + 32) = *(v38 + 4);
                        *(v39 + 16) = v40;
                        v37 += 10;
                        --v26;
                      }

                      while (v26);
                      v41 = a3[4];
                      a3[4] = 0;
                      v59 = v41;
                      std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](v60, (a3 + 5));
                      v61 = a3[9];
                      std::unique_ptr<Phase::Geometry::RaycastHit [],std::function<void ()(void *)>>::operator=[abi:ne200100](a3 + 4, &v56);
                      a3[9] = v58;
                      std::unique_ptr<Phase::Geometry::RaycastHit [],std::function<void ()(void *)>>::operator=[abi:ne200100](&v56, &v59);
                      v58 = v61;
                      std::unique_ptr<Phase::Geometry::RaycastHit [],std::function<void ()(void *)>>::reset[abi:ne200100](&v59);
                      std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v60);
                      std::unique_ptr<Phase::Geometry::RaycastHit [],std::function<void ()(void *)>>::reset[abi:ne200100](&v56);
                      std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v57);
                    }

                    std::unique_ptr<Phase::Geometry::RaycastHit [],std::function<void ()(void *)>>::reset[abi:ne200100](&v52);
                    result = std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v53);
                    v10 = v43;
                    a2 = v44;
                  }
                }
              }
            }
          }

          ++v14;
        }
      }

      if (v8 < v13)
      {
        v42 = v8 + 3;
        while (1)
        {
          v8 = v42;
          if (v42 >= v13)
          {
            break;
          }

          v42 += 3;
          v11 = *v8;
          if (*v8)
          {
            goto LABEL_44;
          }
        }

        v11 = 0;
      }

LABEL_44:
      ;
    }

    while (v8 != v10);
  }

  return result;
}

void sub_23A3FDE64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, void);
  std::unique_ptr<Phase::Geometry::RaycastHit [],std::function<void ()(void *)>>::reset[abi:ne200100](va);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

uint64_t Phase::Geometry::MultiHitRaycastVsSceneV2(uint64_t result, uint64_t a2, uint64_t *a3, void *a4, int a5)
{
  v7 = result;
  v61 = *MEMORY[0x277D85DE8];
  if (a5)
  {
    result = std::unique_ptr<Phase::Geometry::RaycastHitV2 [],std::function<void ()(void *)>>::reset[abi:ne200100](a3 + 4);
    a3[9] = 0;
  }

  v8 = *(v7 + 168);
  v9 = *(v7 + 184);
  v10 = &v8[3 * v9];
  if (v9)
  {
    v11 = *v8;
    if (!*v8)
    {
      v12 = v8 + 3;
      while (1)
      {
        v8 = v12;
        if (v12 >= v10)
        {
          break;
        }

        v12 += 3;
        v11 = *v8;
        if (*v8)
        {
          goto LABEL_11;
        }
      }

      v11 = 0;
    }

LABEL_11:
    v13 = v10;
  }

  else
  {
    v11 = 0;
    v13 = *(v7 + 168);
  }

  if (v8 != v10)
  {
    v42 = v10;
    v43 = a2;
    do
    {
      if (v11 && v11->i32[0] == 4 && (v11[18].i32[0] & *(a2 + 72)) != 0)
      {
        v15 = v11[15];
        v14 = v11[16];
        while (v15 != v14)
        {
          v16 = *v15;
          if (*(v7 + 160) > *v15)
          {
            v17 = *(v7 + 144) + 24 * v16;
            if (*(v17 + 20) == HIDWORD(v16))
            {
              v18 = *v17;
              if (*v17)
              {
                if ((v18[4] & *(a2 + 72)) != 0)
                {
                  v19 = *a4 + 32 * *v18;
                  v21 = *(v19 + 24);
                  v20 = (v19 + 24);
                  if (v21)
                  {
                    v45[0] = v11;
                    v45[1] = v18;
                    v51 = 0;
                    v52[3] = 0;
                    v53 = 0;
                    v22 = *(a3 + 1);
                    v49 = *a3;
                    v50 = v22;
                    v54 = *(a3 + 80);
                    Phase::TransformPositionByInverse<float>(v11 + 6, &v49, &v58);
                    *&v49 = v58;
                    DWORD2(v49) = v59[0];
                    v23 = v11[7].i32[1];
                    v24 = -v11[7].f32[0];
                    v58 = vneg_f32(v11[6]);
                    *v59 = v24;
                    v59[1] = v23;
                    Phase::operator*<float>(&v58, &v50, &v55);
                    *&v50 = v55;
                    v25 = 1.0 / v11[9].f32[1];
                    *(&v49 + 3) = *(&v49 + 3) * v25;
                    DWORD2(v50) = v56[0];
                    *(&v50 + 3) = v25 * *(&v50 + 3);
                    if (!*v20)
                    {
                      std::__throw_bad_function_call[abi:ne200100]();
                    }

                    (*(**v20 + 48))(*v20, v7, a2, &v49, v45);
                    v26 = v53;
                    if (v53)
                    {
                      v27 = v51;
                      v28 = *(&v50 + 3);
                      v29 = v53;
                      do
                      {
                        if (*v27 < v28)
                        {
                          *v27 = *v27 * v11[9].f32[1];
                        }

                        v27 += 6;
                        --v29;
                      }

                      while (v29);
                      v30 = a3[9] + v26;
                      v47 = 8;
                      v48 = v30;
                      v46[0] = &v48;
                      v46[1] = &v47;
                      Phase::details::AllocArray<Phase::Geometry::RaycastHitV2,std::unique_ptr<Phase::Geometry::RaycastHitV2 [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Geometry::RaycastHitV2>(unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::Geometry::RaycastHitV2 [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Geometry::RaycastHitV2>(unsigned long,unsigned long)::{lambda(Phase::Geometry::RaycastHitV2*)#1} const&>(v30, v46, &v58);
                      v31 = v58;
                      v58 = 0;
                      v55 = v31;
                      std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](v56, v59);
                      v57 = v30;
                      std::unique_ptr<Phase::Geometry::RaycastHitV2 [],std::function<void ()(void *)>>::reset[abi:ne200100](&v58);
                      std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v59);
                      if (a3[9])
                      {
                        v32 = 0;
                        v33 = 0;
                        do
                        {
                          v34 = (a3[4] + v32);
                          v35 = *&v55 + v32;
                          v36 = *v34;
                          *(v35 + 16) = *(v34 + 2);
                          *v35 = v36;
                          ++v33;
                          v32 += 24;
                        }

                        while (a3[9] > v33);
                      }

                      v37 = 0;
                      do
                      {
                        v38 = *&v55 + 24 * a3[9] + v37 * 4;
                        v39 = *&v51[v37];
                        *(v38 + 16) = *&v51[v37 + 4];
                        *v38 = v39;
                        v37 += 6;
                        --v26;
                      }

                      while (v26);
                      v40 = a3[4];
                      a3[4] = 0;
                      v58 = v40;
                      std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](v59, (a3 + 5));
                      v60 = a3[9];
                      std::unique_ptr<Phase::Geometry::RaycastHitV2 [],std::function<void ()(void *)>>::operator=[abi:ne200100](a3 + 4, &v55);
                      a3[9] = v57;
                      std::unique_ptr<Phase::Geometry::RaycastHitV2 [],std::function<void ()(void *)>>::operator=[abi:ne200100](&v55, &v58);
                      v57 = v60;
                      std::unique_ptr<Phase::Geometry::RaycastHitV2 [],std::function<void ()(void *)>>::reset[abi:ne200100](&v58);
                      std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v59);
                      std::unique_ptr<Phase::Geometry::RaycastHitV2 [],std::function<void ()(void *)>>::reset[abi:ne200100](&v55);
                      std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v56);
                    }

                    std::unique_ptr<Phase::Geometry::RaycastHitV2 [],std::function<void ()(void *)>>::reset[abi:ne200100](&v51);
                    result = std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v52);
                    v10 = v42;
                    a2 = v43;
                  }
                }
              }
            }
          }

          ++v15;
        }
      }

      if (v8 < v13)
      {
        v41 = v8 + 3;
        while (1)
        {
          v8 = v41;
          if (v41 >= v13)
          {
            break;
          }

          v41 += 3;
          v11 = *v8;
          if (*v8)
          {
            goto LABEL_44;
          }
        }

        v11 = 0;
      }

LABEL_44:
      ;
    }

    while (v8 != v10);
  }

  return result;
}

void sub_23A3FE2F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, void);
  std::unique_ptr<Phase::Geometry::RaycastHitV2 [],std::function<void ()(void *)>>::reset[abi:ne200100](va);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

void Phase::Geometry::SingleHitRaycastVsVoxelTree(double a1, double a2, double a3, double a4, double a5, float64x2_t a6, uint64_t a7, uint64_t a8, __int128 *a9, uint64_t *a10)
{
  *(a9 + 8) = 2139095039;
  *(a9 + 36) = 0;
  v10 = a9 + 36;
  *(a9 + 44) = 0;
  *(a9 + 13) = 0;
  *(a9 + 7) = 0xFFFFFFFFLL;
  *(a9 + 8) = 0;
  v11 = a9 + 4;
  v12 = a10[1];
  v13 = **(v12 + 120);
  v14 = vdupq_n_s64(0x47EFFFFFE0000000uLL);
  v32 = -1;
  v15 = *a9;
  v16 = a9[1];
  v30[0] = *a9;
  v30[1] = v16;
  v31 = v14;
  v29[0] = &v31;
  v29[1] = v30;
  v17 = *(v13 + 48);
  v18 = **(v13 + 40);
  v19 = *(v18 + 16 * v17);
  if (v19[3])
  {
    v22 = 0;
    do
    {
      v23 = v19[1] + v19[4] * v22;
      if (*(*(**(v23 + 40) + 16 * *(v23 + 48)) + 24))
      {
        _ZN5Phase8Geometry7details21RaycastVsVoxelSubtreeILb1ERKZNS0_18RaycastVsVoxelTreeILb1ERZNS0_27SingleHitRaycastVsVoxelTreeERNS0_11SystemStateERNS0_15SceneQueryBatchERNS0_10SceneQueryERNS0_20SceneQueryShapeStateEE3__0EEvS5_RNS0_12RaycastInputERKNS0_5ShapeEOT0_EUlT_SJ_T1_E_EEvS5_SF_RKNS0_12VoxelSubtreeESK_(v30, v23, v29, *&v15, *&v16, *v14.i64, a4, a5, a6);
        v17 = *(v13 + 48);
        v18 = **(v13 + 40);
      }

      ++v22;
      v19 = *(v18 + 16 * v17);
    }

    while (v19[3] > v22);
    v24 = v32;
    if (v32 != -1)
    {
      v25 = *(v12 + 8);
      v33 = v32;
      v26 = *v31.i64;
      *(a9 + 8) = v26;
      *(a9 + 6) = v25;
      *(a9 + 14) = v24;
      v27 = *a10;
      v28 = **(a10[1] + 120);
      Phase::Geometry::GetNormals(v28, (v27 + 48), &v33, 1, v10, 1, 1);
      Phase::Geometry::GetMaterials(v28, &v33, 1, v11, 1, 1);
    }
  }
}

float Phase::Geometry::SingleHitRaycastVsVoxelTreeV2(double a1, double a2, double a3, double a4, double a5, float64x2_t a6, uint64_t a7, uint64_t a8, __int128 *a9, void *a10)
{
  *(a9 + 5) = 0;
  *(a9 + 6) = 0;
  *(a9 + 4) = -2155872257;
  v10 = a10[1];
  v11 = *(*a10 + 8);
  v12 = **(v10 + 120);
  v13 = vdupq_n_s64(0x47EFFFFFE0000000uLL);
  v28 = -1;
  v14 = *a9;
  v15 = a9[1];
  v26[0] = *a9;
  v26[1] = v15;
  v27 = v13;
  v25[0] = &v27;
  v25[1] = v26;
  v16 = *(v12 + 48);
  v17 = **(v12 + 40);
  v18 = *(v17 + 16 * v16);
  if (v18[3])
  {
    v20 = 0;
    do
    {
      v21 = v18[1] + v18[4] * v20;
      if (*(*(**(v21 + 40) + 16 * *(v21 + 48)) + 24))
      {
        _ZN5Phase8Geometry7details21RaycastVsVoxelSubtreeILb1ERKZNS0_18RaycastVsVoxelTreeILb1ERZNS0_27SingleHitRaycastVsVoxelTreeERNS0_11SystemStateERNS0_15SceneQueryBatchERNS0_10SceneQueryERNS0_20SceneQueryShapeStateEE3__0EEvS5_RNS0_12RaycastInputERKNS0_5ShapeEOT0_EUlT_SJ_T1_E_EEvS5_SF_RKNS0_12VoxelSubtreeESK_(v26, v21, v25, *&v14, *&v15, *v13.i64, a4, a5, a6);
        v16 = *(v12 + 48);
        v17 = **(v12 + 40);
      }

      ++v20;
      v18 = *(v17 + 16 * v16);
    }

    while (v18[3] > v20);
    v22 = v28;
    if (v28 != -1)
    {
      v23 = *(v10 + 8);
      *&v14 = *v27.i64;
      *(a9 + 8) = v14;
      *(a9 + 9) = v22;
      *(a9 + 5) = v23;
      *(a9 + 6) = v11;
    }
  }

  return *&v14;
}

void Phase::Geometry::MultiHitRaycastVsVoxelTree(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  std::unique_ptr<Phase::Geometry::RaycastHit [],std::function<void ()(void *)>>::reset[abi:ne200100]((a3 + 32));
  *(a3 + 72) = 0;
  __p = 0;
  v24 = 0;
  v25 = 0;
  v21[0] = &v22;
  v21[1] = a4;
  v21[2] = &__p;
  v22 = 0xBFF0000000000000;
  v13 = *(a4 + 8);
  v14 = **(v13 + 120);
  v26[0] = v21;
  v26[1] = v13;
  v15 = *(v14 + 48);
  v16 = **(v14 + 40);
  v17 = *(v16 + 16 * v15);
  if (v17[3])
  {
    v18 = 0;
    do
    {
      v19 = v17[1] + v17[4] * v18;
      if (*(*(**(v19 + 40) + 16 * *(v19 + 48)) + 24))
      {
        _ZN5Phase8Geometry7details21RaycastVsVoxelSubtreeILb0ERKZNS0_18RaycastVsVoxelTreeILb0ERZNS0_26MultiHitRaycastVsVoxelTreeERNS0_11SystemStateERNS0_15SceneQueryBatchERNS0_10SceneQueryERNS0_20SceneQueryShapeStateEE3__0EEvS5_RNS0_12RaycastInputERKNS0_5ShapeEOT0_EUlT_SJ_T1_E_EEvS5_SF_RKNS0_12VoxelSubtreeESK_(a3, v19, v26, v7, v8, v9, v10, v11, v12);
        v15 = *(v14 + 48);
        v16 = **(v14 + 40);
      }

      ++v18;
      v17 = *(v16 + 16 * v15);
    }

    while (v17[3] > v18);
    v20 = 0xCCCCCCCCCCCCCCCDLL * ((v24 - __p) >> 3);
  }

  else
  {
    v20 = 0;
  }

  Phase::Geometry::MergeRaycastQueryHits<Phase::Geometry::RaycastHit,std::vector<Phase::Geometry::RaycastHit>>(a1, (a3 + 32), &__p, v20);
  if (__p)
  {
    v24 = __p;
    operator delete(__p);
  }
}

void sub_23A3FE6D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Phase::Geometry::MultiHitRaycastVsVoxelTreeV2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  std::unique_ptr<Phase::Geometry::RaycastHitV2 [],std::function<void ()(void *)>>::reset[abi:ne200100]((a3 + 32));
  *(a3 + 72) = 0;
  __p = 0;
  v26 = 0;
  v27 = 0;
  v13 = a4[1];
  v14 = *(*a4 + 8);
  v23 = 0xBFF0000000000000;
  v24 = v14;
  v22[0] = &v23;
  v22[1] = &v24;
  v22[2] = &__p;
  v15 = **(v13 + 120);
  v28[0] = v22;
  v28[1] = v13;
  v16 = *(v15 + 48);
  v17 = **(v15 + 40);
  v18 = *(v17 + 16 * v16);
  if (v18[3])
  {
    v19 = 0;
    do
    {
      v20 = v18[1] + v18[4] * v19;
      if (*(*(**(v20 + 40) + 16 * *(v20 + 48)) + 24))
      {
        _ZN5Phase8Geometry7details21RaycastVsVoxelSubtreeILb0ERKZNS0_18RaycastVsVoxelTreeILb0ERZNS0_28MultiHitRaycastVsVoxelTreeV2ERNS0_11SystemStateERNS0_15SceneQueryBatchERNS0_10SceneQueryERNS0_20SceneQueryShapeStateEE3__0EEvS5_RNS0_12RaycastInputERKNS0_5ShapeEOT0_EUlT_SJ_T1_E_EEvS5_SF_RKNS0_12VoxelSubtreeESK_(a3, v20, v28, v7, v8, v9, v10, v11, v12);
        v16 = *(v15 + 48);
        v17 = **(v15 + 40);
      }

      ++v19;
      v18 = *(v17 + 16 * v16);
    }

    while (v18[3] > v19);
    v21 = 0xAAAAAAAAAAAAAAABLL * ((v26 - __p) >> 3);
  }

  else
  {
    v21 = 0;
  }

  Phase::Geometry::MergeRaycastQueryHits<Phase::Geometry::RaycastHitV2,std::vector<Phase::Geometry::RaycastHitV2>>(a1, (a3 + 32), &__p, v21);
  if (__p)
  {
    v26 = __p;
    operator delete(__p);
  }
}

void sub_23A3FE828(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void _ZN5Phase8Geometry7details21RaycastVsVoxelSubtreeILb1ERKZNS0_18RaycastVsVoxelTreeILb1ERZNS0_27SingleHitRaycastVsVoxelTreeERNS0_11SystemStateERNS0_15SceneQueryBatchERNS0_10SceneQueryERNS0_20SceneQueryShapeStateEE3__0EEvS5_RNS0_12RaycastInputERKNS0_5ShapeEOT0_EUlT_SJ_T1_E_EEvS5_SF_RKNS0_12VoxelSubtreeESK_(float32x2_t *a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, float64x2_t a9)
{
  v151 = *MEMORY[0x277D85DE8];
  v12 = vcvtq_f64_f32(*a1);
  v10.f64[0] = a1[1].f32[0];
  v13 = vcvtq_f64_f32(a1[2]);
  v9.f64[0] = a1[3].f32[0];
  __asm { FMOV            V16.2D, #1.0 }

  v19 = vminnmq_f64(vmaxnmq_f64(vdivq_f64(_Q16, v13), vdupq_n_s64(0xC1EFFFFFFFE00000)), vdupq_n_s64(0x41EFFFFFFFE00000uLL));
  v20 = vminnmq_f64(*&vmaxnmq_f64(*&vdivq_f64(_Q16, v9), xmmword_23A555970), xmmword_23A555980);
  v11.f64[0] = *(a2 + 8);
  a9.f64[0] = *(a2 + 20);
  v21 = vmulq_f64(v19, vsubq_f64(vcvtq_f64_f32(*a2), v12));
  v22 = *&vmulq_f64(v20, vsubq_f64(v11, v10));
  v23 = vmulq_f64(v19, vsubq_f64(vcvtq_f64_f32(*(a2 + 12)), v12));
  *&v20.f64[0] = *&vmulq_f64(v20, vsubq_f64(a9, v10));
  *&v24.f64[0] = *&vminnmq_f64(v22, *&v20.f64[0]);
  v24.f64[1] = a1[1].f32[1];
  *&v25.f64[0] = *&vmaxnmq_f64(v22, *&v20.f64[0]);
  v25.f64[1] = a1[3].f32[1];
  v26 = vpmaxq_f64(vmaxnmq_f64(vminnmq_f64(v21, v23), v24));
  v27 = vpminq_f64(vminnmq_f64(vmaxnmq_f64(v21, v23), v25));
  if (v26 <= v27)
  {
    if (v26 >= 0.0 || (v26 = 0.0, v27 > 0.0))
    {
      v29 = *(**(a2 + 40) + 16 * *(a2 + 48));
      v30 = v29[3];
      if (v30 == 1)
      {
        v31 = *a3;
        if (**a3 <= v26)
        {
          return;
        }

        *v31 = v26;
        v31[1] = v27;
        *(v31 + 4) = 0;
        v32 = v26;
        goto LABEL_26;
      }

      if (v30 <= 32)
      {
        v140 = vextq_s8(v13, v13, 8uLL);
        MEMORY[0x28223BE20](a1);
        v34 = &v133 - v33;
        v143 = v35;
        v144 = v36;
        v133 = v37;
        v141 = v38;
        v142 = v39;
        v138 = v40;
        v139 = v41;
        v134 = v42;
        v135 = v43;
        v136 = v44;
        v137 = v45;
        bzero(&v133 - v33, v33);
        v46 = v143.f64[0];
        v47 = v144.f64[0];
        v48.i64[0] = 0;
        v49 = v29[1];
        v50.f64[0] = v49[3].f32[0];
        v51 = vdivq_f64(v133, v50);
        v52.f64[0] = v134.f64[0];
        *&v52.f64[1] = v140.i64[0];
        v53 = vdivq_f64(v133, vcvtq_f64_f32(v49[2]));
        v54.f64[0] = 1073741820.0;
        v55 = vdupq_n_s64(0x41CFFFFFFF800000uLL);
        v56 = vcvtq_s64_f64(vmulq_f64(vminnmq_f64(vmaxnmq_f64(vmulq_f64(vsubq_f64(vmlaq_n_f64(v135, v52, v144.f64[0]), v139), v53), 0), v133), v55));
        v57 = vcvtq_s64_f64(vmulq_f64(vminnmq_f64(*&vmaxnmq_f64(*&vmulq_f64(vsubq_f64(vmlaq_f64(v136, v144, v138), v137), v51), 0), xmmword_23A555990), v54));
        v58 = vmlaq_n_f64(v135, v52, v143.f64[0]);
        v59 = vuzp1q_s32(v56, v57);
        *&v52.f64[0] = vmovn_s64(v56);
        *v56.i8 = vmovn_s64(v57);
        v60 = vcvtq_s64_f64(vmulq_f64(vminnmq_f64(vmaxnmq_f64(vmulq_f64(vsubq_f64(v58, v139), v53), 0), v133), v55));
        v61 = vcvtq_s64_f64(vmulq_f64(vminnmq_f64(*&vmaxnmq_f64(*&vmulq_f64(vsubq_f64(vmlaq_f64(v136, v143, v138), v137), v51), 0), xmmword_23A555990), v54));
        v62 = vuzp1q_s32(v60, v61);
        *v61.i8 = vsub_s32(vmovn_s64(v61), *v56.i8);
        v63.i64[0] = v61.i32[0];
        v63.i64[1] = v61.i32[1];
        v64 = vcvtq_f64_s64(v63);
        *&v52.f64[0] = vsub_s32(vmovn_s64(v60), *&v52.f64[0]);
        v63.i64[0] = SLODWORD(v52.f64[0]);
        v63.i64[1] = SHIDWORD(v52.f64[0]);
        v65 = vcvtq_f64_s64(v63);
        v66 = vceqq_s32(v62, v59);
        v63.i64[0] = v66.i32[2];
        v66.i64[1] = v66.i32[1];
        v66.i64[0] = v66.i32[0] & v63.i64[0] & v66.i32[1];
        v67 = vcgtq_s64(v48, v66);
        v68 = vbslq_s8(vdupq_lane_s64(v67.i64[0], 0), vmulq_f64(vmulq_f64(v134, v53), v55), v65);
        v69 = vbslq_s8(v67, vmulq_f64(vmulq_f64(v138, v51), v54), v64);
        v70 = vextq_s8(v68, v68, 8uLL).u64[0];
        v71 = vminnmq_f64(vmaxnmq_f64(vdivq_f64(v133, v68), vdupq_n_s64(0xC1EFFFFFFFE00000)), vdupq_n_s64(0x41EFFFFFFFE00000uLL));
        v72 = vminnmq_f64(*&vmaxnmq_f64(*&vdivq_f64(v133, v69), v141), v142);
        if (v30 >= 1)
        {
          v73 = vcltzq_s32(vsubq_s32(v62, v59));
          v74 = v30 & 0x7FFFFFFF;
          v75 = v29[4];
          v76 = v49 + 8;
          v77 = v34 + 216;
          v78 = 30;
          do
          {
            v79 = vdupq_n_s32(1 << v78);
            *(v77 - 2) = v78;
            *(v77 - 21) = vorrq_s8(v79, v73);
            v80 = vorrq_s8(vandq_s8(vdupq_n_s32(-(1 << v78)), v73), vbicq_s8(v79, v73));
            *(v77 - 13) = v80;
            v81.i64[0] = v80.i32[2];
            v81.i64[1] = v80.i32[3];
            v82 = vcvtq_f64_s64(v81);
            v81.i64[0] = v80.i32[0];
            v81.i64[1] = v80.i32[1];
            *(v77 - 9) = vmulq_f64(v72, v82);
            *(v77 - 11) = vmulq_f64(v71, vcvtq_f64_s64(v81));
            *v77 = *(*(**&v76[-1] + 16 * *v76) + 8);
            v77 += 28;
            v76 = (v76 + v75);
            v78 -= 2;
            --v74;
          }

          while (v74);
        }

        v83 = v46 - v47;
        v84 = *(v34 + 27);
        v86 = *v84;
        v85 = v84[1];
        *(v34 + 28) = v86;
        v87 = v34 + 224;
        v88 = vdupq_n_s32(*(v87 + 52));
        LODWORD(v54.f64[0]) = *(v87 + 52);
        v89 = *&vshlq_s32(v59, vnegq_s32(v88)) & __PAIR128__(0xFFFFFFFCFFFFFFFCLL, 0xFFFFFFFCFFFFFFFCLL);
        v90.i64[0] = 0x400000004;
        v90.i64[1] = 0x400000004;
        *(v87 + 1) = vshlq_u32(v89, v88);
        *(v87 + 2) = vshlq_u32(vaddq_s32(v89, v90), v88);
        v91.i64[0] = -1;
        v91.i64[1] = -1;
        v92 = vaddq_s32(vandq_s8(vdupq_lane_s32(*&vshlq_u32(v91, v54), 0), v59), *(v87 + 3));
        v93 = vsubq_s32(v92, v59);
        v94.i64[0] = v93.i32[2];
        v94.i64[1] = v93.i32[3];
        v95 = vcvtq_f64_s64(v94);
        v94.i64[0] = v93.i32[0];
        v94.i64[1] = v93.i32[1];
        *(v87 + 5) = vmulq_f64(v71, vcvtq_f64_s64(v94));
        *(v87 + 6) = vmulq_f64(v72, v95);
        *(v87 + 4) = v92;
        *(v87 + 2) = v85;
        v96 = 0.0;
        v97 = 1;
        v98.i64[0] = 0x100000001;
        v98.i64[1] = 0x100000001;
        v99.i64[0] = 0x800000008;
        v99.i64[1] = 0x800000008;
        *&v68.f64[1] = v70;
        v100 = v59;
        while (1)
        {
          while (1)
          {
            v101 = (v87 + 208);
            v102 = vld1q_dup_f32(v101);
            v103 = vshlq_s32(v100, vnegq_s32(v102));
            v106 = vshlq_u32(vorrq_s8(vandq_s8(vshlq_n_s32(v103, 2uLL), v99), vandq_s8(v103, v98)), xmmword_23A5559A0);
            LOBYTE(v101) = LOBYTE(v106.f64[0]) | BYTE4(v106.f64[0]);
            v104 = *(v87 + 5);
            v105 = *(v87 + 6);
            v106.f64[0] = fmin(fmin(v104.f64[0], v105.f64[0]), *(v87 + 11));
            v107 = v101 | LOBYTE(v106.f64[1]);
            if ((v86 >> v107))
            {
              break;
            }

            if (v106.f64[0] >= 1.0)
            {
              return;
            }

            v121 = vceqq_f64(v105, v106);
            v122 = vceqq_f64(v104, vdupq_lane_s64(*&v106.f64[0], 0));
            v123 = vuzp1q_s32(v122, v121);
            *(v87 + 10) = v122;
            *(v87 + 11) = v121;
            *(v87 + 12) = v123;
            v124 = *(v87 + 4);
            v100 = vbslq_s8(v123, v124, vaddq_s32(vuzp1q_s32(vcvtq_s64_f64(vmulq_n_f64(v68, v106.f64[0])), vcvtq_s64_f64(vmulq_f64(v69, v106))), v59));
            v125 = vorrq_s8(vcgeq_s32(v100, *(v87 + 2)), vcgtq_s32(*(v87 + 1), v100));
            v125.i32[3] = v125.i32[2];
            if ((vmaxvq_u32(v125) & 0x80000000) != 0)
            {
              while (v97 >= 2)
              {
                --v97;
                v126 = v87 - 224;
                v127 = vorrq_s8(vcgeq_s32(v100, *(v87 - 12)), vcgtq_s32(*(v87 - 13), v100));
                v127.i32[3] = v127.i32[2];
                v87 -= 224;
                if ((vmaxvq_u32(v127) & 0x80000000) == 0)
                {
                  v121 = *(v126 + 11);
                  v123 = *(v126 + 12);
                  v104 = *(v126 + 5);
                  v105 = *(v126 + 6);
                  v124 = *(v126 + 4);
                  v122 = *(v126 + 10);
                  v87 = v126;
                  v86 = *v126;
                  goto LABEL_21;
                }
              }

              return;
            }

            v126 = v87;
LABEL_21:
            v128 = vbslq_s8(vcltzq_s64(v121.u64[0]), vaddq_f64(v105, *(v126 + 9)), v105);
            v129 = vbslq_s8(vcltzq_s64(v122), vaddq_f64(v104, *(v126 + 8)), v104);
            *(v126 + 4) = vbslq_s8(v123, vaddq_s32(*(v126 + 7), v124), v124);
            *(v126 + 5) = v129;
            *(v126 + 6) = v128;
            v96 = v106.f64[0];
          }

          v108 = vcnt_s8((v86 & ~(-1 << v107)));
          v108.i16[0] = vaddlv_u8(v108);
          v109 = *(v87 + 2) + v108.i32[0];
          if (v30 - 1 == v97)
          {
            break;
          }

          v110 = vdupq_lane_s64(*&v106.f64[0], 0);
          v111 = vceqq_f64(v105, v106);
          v112 = vceqq_f64(v104, v110);
          *(v87 + 10) = v112;
          *(v87 + 11) = v111;
          *(v87 + 12) = vuzp1q_s32(v112, v111);
          v113 = (*(v87 + 27) + 16 * v109);
          v86 = *v113;
          v114 = v113[1];
          *(v87 + 28) = v86;
          v87 += 224;
          ++v97;
          v115 = vdupq_n_s32(*(v87 + 52));
          v112.i32[0] = *(v87 + 52);
          v116 = *&vshlq_s32(v100, vnegq_s32(v115)) & __PAIR128__(0xFFFFFFFCFFFFFFFCLL, 0xFFFFFFFCFFFFFFFCLL);
          *(v87 + 1) = vshlq_u32(v116, v115);
          *(v87 + 2) = vshlq_u32(vaddq_s32(v116, v90), v115);
          v117 = vaddq_s32(vandq_s8(vdupq_lane_s32(*&vshlq_u32(v91, v112), 0), v100), *(v87 + 3));
          v118 = vsubq_s32(v117, v59);
          v119.i64[0] = v118.i32[2];
          v119.i64[1] = v118.i32[3];
          v120 = vcvtq_f64_s64(v119);
          v119.i64[0] = v118.i32[0];
          v119.i64[1] = v118.i32[1];
          *(v87 + 5) = vmulq_f64(v71, vcvtq_f64_s64(v119));
          *(v87 + 6) = vmulq_f64(v72, v120);
          *(v87 + 4) = v117;
          *(v87 + 2) = v114;
        }

        v131 = v47 + v83 * v96;
        v132 = *a3;
        if (**a3 <= v131)
        {
          return;
        }

        *v132 = v131;
        v132[1] = v47 + v83 * v106.f64[0];
        *(v132 + 4) = v109;
        v32 = v131;
LABEL_26:
        *(*(a3 + 8) + 28) = v32;
        return;
      }

      v130 = **(Phase::Logger::GetInstance(a1) + 432);
      if (os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v146 = "GeoRaycastUtility.hpp";
        v147 = 1024;
        v148 = 477;
        v149 = 1024;
        v150 = v30;
        _os_log_impl(&dword_23A302000, v130, OS_LOG_TYPE_ERROR, "%25s:%-5d Excessive level count (%d) in voxel tree: resolution has an invalid numerical value.", buf, 0x18u);
      }
    }
  }
}

void _ZN5Phase8Geometry7details21RaycastVsVoxelSubtreeILb0ERKZNS0_18RaycastVsVoxelTreeILb0ERZNS0_26MultiHitRaycastVsVoxelTreeERNS0_11SystemStateERNS0_15SceneQueryBatchERNS0_10SceneQueryERNS0_20SceneQueryShapeStateEE3__0EEvS5_RNS0_12RaycastInputERKNS0_5ShapeEOT0_EUlT_SJ_T1_E_EEvS5_SF_RKNS0_12VoxelSubtreeESK_(float32x2_t *a1, uint64_t a2, uint64_t *a3, double a4, double a5, double a6, double a7, double a8, float64x2_t a9)
{
  v165[1] = *MEMORY[0x277D85DE8];
  v12 = vcvtq_f64_f32(*a1);
  v10.f64[0] = a1[1].f32[0];
  v13 = vcvtq_f64_f32(a1[2]);
  v9.f64[0] = a1[3].f32[0];
  __asm { FMOV            V16.2D, #1.0 }

  v19 = vminnmq_f64(vmaxnmq_f64(vdivq_f64(_Q16, v13), vdupq_n_s64(0xC1EFFFFFFFE00000)), vdupq_n_s64(0x41EFFFFFFFE00000uLL));
  v20 = vminnmq_f64(*&vmaxnmq_f64(*&vdivq_f64(_Q16, v9), xmmword_23A555970), xmmword_23A555980);
  v11.f64[0] = *(a2 + 8);
  a9.f64[0] = *(a2 + 20);
  v21 = vmulq_f64(v19, vsubq_f64(vcvtq_f64_f32(*a2), v12));
  v22 = *&vmulq_f64(v20, vsubq_f64(v11, v10));
  v23 = vmulq_f64(v19, vsubq_f64(vcvtq_f64_f32(*(a2 + 12)), v12));
  *&v20.f64[0] = *&vmulq_f64(v20, vsubq_f64(a9, v10));
  v24 = vminnmq_f64(v21, v23);
  *&v25.f64[0] = *&vminnmq_f64(v22, *&v20.f64[0]);
  v25.f64[1] = a1[1].f32[1];
  *&v26.f64[0] = *&vmaxnmq_f64(v22, *&v20.f64[0]);
  v26.f64[1] = a1[3].f32[1];
  v28 = vmaxnmq_f64(v21, v23);
  v27 = vpmaxq_f64(vmaxnmq_f64(v24, v25));
  v28.f64[0] = vpminq_f64(vminnmq_f64(v28, v26));
  if (v27 > v28.f64[0])
  {
    return;
  }

  if (v27 < 0.0)
  {
    v27 = 0.0;
    if (v28.f64[0] <= 0.0)
    {
      return;
    }
  }

  v30 = *(**(a2 + 40) + 16 * *(a2 + 48));
  v31 = v30[3];
  if (v31 == 1)
  {
    v32 = *a3;
    v33 = *(a3[1] + 8);
    v160 = 0;
    if (**v32 != v27)
    {
      *v163 = 0;
      v162 = 0;
      v165[0] = 0;
      v34 = v27;
      *buf = v34;
      *&v163[4] = v33;
      v164 = 0;
      v35 = *(v32 + 8);
      v36 = **(v35[1] + 120);
      v37 = (*v35 + 48);
      v159 = v28;
      Phase::Geometry::GetNormals(v36, v37, &v160, 1, &v162, 1, 1);
      Phase::Geometry::GetMaterials(v36, &v160, 1, v165, 1, 1);
      std::vector<Phase::Geometry::RaycastHit>::push_back[abi:ne200100](*(v32 + 16), buf);
      **v32 = *&v159.f64[0];
    }

    return;
  }

  if (v31 > 32)
  {
    v147 = **(Phase::Logger::GetInstance(a1) + 432);
    if (os_log_type_enabled(v147, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v162 = "GeoRaycastUtility.hpp";
      *v163 = 1024;
      *&v163[2] = 477;
      *&v163[6] = 1024;
      *&v163[8] = v31;
      _os_log_impl(&dword_23A302000, v147, OS_LOG_TYPE_ERROR, "%25s:%-5d Excessive level count (%d) in voxel tree: resolution has an invalid numerical value.", buf, 0x18u);
    }

    return;
  }

  v157 = vextq_s8(v13, v13, 8uLL);
  MEMORY[0x28223BE20](a1);
  v39 = &v148 - v38;
  v158 = v41;
  v159 = v40;
  v148 = v42;
  v154 = v43;
  v156 = v44;
  v153 = v45;
  v149 = v46;
  v150 = v47;
  v151 = v48;
  v155 = v49;
  v152 = v50;
  bzero(&v148 - v38, v38);
  v52 = v158.f64[0];
  v53 = v159.f64[0];
  v54.i64[0] = 0;
  v55 = v30[1];
  v56.f64[0] = v55[3].f32[0];
  v57 = vdivq_f64(v148, v56);
  v58.f64[0] = v149.f64[0];
  *&v58.f64[1] = v157.i64[0];
  v59 = vdivq_f64(v148, vcvtq_f64_f32(v55[2]));
  v60.f64[0] = 1073741820.0;
  v61 = vdupq_n_s64(0x41CFFFFFFF800000uLL);
  v62 = vcvtq_s64_f64(vmulq_f64(vminnmq_f64(vmaxnmq_f64(vmulq_f64(vsubq_f64(vmlaq_n_f64(v150, v58, v158.f64[0]), v155), v59), 0), v148), v61));
  v63 = vcvtq_s64_f64(vmulq_f64(vminnmq_f64(*&vmaxnmq_f64(*&vmulq_f64(vsubq_f64(vmlaq_f64(v151, v158, v153), v152), v57), 0), xmmword_23A555990), v60));
  v64 = vuzp1q_s32(v62, v63);
  v65 = vcvtq_s64_f64(vmulq_f64(vminnmq_f64(vmaxnmq_f64(vmulq_f64(vsubq_f64(vmlaq_n_f64(v150, v58, v159.f64[0]), v155), v59), 0), v148), v61));
  v66 = vcvtq_s64_f64(vmulq_f64(vminnmq_f64(*&vmaxnmq_f64(*&vmulq_f64(vsubq_f64(vmlaq_f64(v151, v159, v153), v152), v57), 0), xmmword_23A555990), v60));
  v67 = vuzp1q_s32(v65, v66);
  *v63.i8 = vsub_s32(vmovn_s64(v66), vmovn_s64(v63));
  v68.i64[0] = v63.i32[0];
  v68.i64[1] = v63.i32[1];
  v69 = vcvtq_f64_s64(v68);
  *v62.i8 = vsub_s32(vmovn_s64(v65), vmovn_s64(v62));
  v68.i64[0] = v62.i32[0];
  v68.i64[1] = v62.i32[1];
  v70 = vcvtq_f64_s64(v68);
  v71 = vceqq_s32(v67, v64);
  v68.i64[0] = v71.i32[2];
  v71.i64[1] = v71.i32[1];
  v71.i64[0] = v71.i32[0] & v68.i64[0] & v71.i32[1];
  v72 = vcgtq_s64(v54, v71);
  v73 = vbslq_s8(vdupq_lane_s64(v72.i64[0], 0), vmulq_f64(vmulq_f64(v149, v59), v61), v70);
  v74 = vbslq_s8(v72, vmulq_f64(vmulq_f64(v153, v57), v60), v69);
  v75 = vextq_s8(v73, v73, 8uLL).u64[0];
  v76 = *&vmaxnmq_f64(*&vdivq_f64(v148, v74), v154);
  v77 = vminnmq_f64(vmaxnmq_f64(vdivq_f64(v148, v73), vdupq_n_s64(0xC1EFFFFFFFE00000)), vdupq_n_s64(0x41EFFFFFFFE00000uLL));
  v78 = vminnmq_f64(v76.u64[0], v156);
  if (v31 >= 1)
  {
    v79 = vcltzq_s32(vsubq_s32(v67, v64));
    v80 = v31 & 0x7FFFFFFF;
    v81 = v30[4];
    v82 = v55 + 8;
    v83 = v39 + 216;
    v84 = 30;
    do
    {
      v85 = vdupq_n_s32(1 << v84);
      *(v83 - 2) = v84;
      *(v83 - 21) = vorrq_s8(v85, v79);
      v86 = vorrq_s8(vandq_s8(vdupq_n_s32(-(1 << v84)), v79), vbicq_s8(v85, v79));
      *(v83 - 13) = v86;
      v87.i64[0] = v86.i32[2];
      v87.i64[1] = v86.i32[3];
      v88 = vcvtq_f64_s64(v87);
      v87.i64[0] = v86.i32[0];
      v87.i64[1] = v86.i32[1];
      v76 = vmulq_f64(v77, vcvtq_f64_s64(v87));
      *(v83 - 9) = vmulq_f64(v78, v88);
      *(v83 - 11) = v76;
      *v83 = *(*(**&v82[-1] + 16 * *v82) + 8);
      v83 += 28;
      v82 = (v82 + v81);
      v84 -= 2;
      --v80;
    }

    while (v80);
  }

  v89 = *(v39 + 27);
  v90 = *v89;
  v91 = v89[1];
  *(v39 + 28) = v90;
  v92 = v39 + 224;
  v93 = vdupq_n_s32(*(v92 + 52));
  v94 = v53 - v52;
  v76.i32[0] = *(v92 + 52);
  v95 = *&vshlq_s32(v64, vnegq_s32(v93)) & __PAIR128__(0xFFFFFFFCFFFFFFFCLL, 0xFFFFFFFCFFFFFFFCLL);
  v96.i64[0] = 0x400000004;
  v96.i64[1] = 0x400000004;
  *(v92 + 1) = vshlq_u32(v95, v93);
  *(v92 + 2) = vshlq_u32(vaddq_s32(v95, v96), v93);
  v97.i64[0] = -1;
  v97.i64[1] = -1;
  v98 = vaddq_s32(vandq_s8(vdupq_lane_s32(*&vshlq_u32(v97, v76), 0), v64), *(v92 + 3));
  v99 = vsubq_s32(v98, v64);
  v100.i64[0] = v99.i32[2];
  v100.i64[1] = v99.i32[3];
  v101 = vcvtq_f64_s64(v100);
  v100.i64[0] = v99.i32[0];
  v100.i64[1] = v99.i32[1];
  *(v92 + 5) = vmulq_f64(v77, vcvtq_f64_s64(v100));
  *(v92 + 6) = vmulq_f64(v78, v101);
  *(v92 + 4) = v98;
  *(v92 + 2) = v91;
  v102 = 0.0;
  v103 = 1;
  v104.i64[0] = 0x100000001;
  v104.i64[1] = 0x100000001;
  v105.i64[0] = 0x800000008;
  v105.i64[1] = 0x800000008;
  v106 = xmmword_23A5559A0;
  *&v73.f64[1] = v75;
  v107 = v64;
  v156 = v73;
  v157 = v64;
  v155 = v74;
  v154 = v77;
  v153 = v78;
  v152 = xmmword_23A5559A0;
  while (1)
  {
    while (1)
    {
      v108 = (v92 + 208);
      v109 = vld1q_dup_f32(v108);
      v110 = vshlq_s32(v107, vnegq_s32(v109));
      v111 = vshlq_u32(vorrq_s8(vandq_s8(vshlq_n_s32(v110, 2uLL), v105), vandq_s8(v110, v104)), v106);
      v112 = v111.i8[8];
      LOBYTE(v108) = v111.i8[0] | v111.i8[4];
      v113 = *(v92 + 5);
      v114 = *(v92 + 6);
      v51.f64[0] = fmin(fmin(v113.f64[0], v114.f64[0]), *(v92 + 11));
      v115 = v108 | v112;
      if (((v90 >> v115) & 1) == 0)
      {
        goto LABEL_18;
      }

      v116 = vcnt_s8((v90 & ~(-1 << v115)));
      v116.i16[0] = vaddlv_u8(v116);
      v117 = *(v92 + 2) + v116.i32[0];
      if (v31 - 1 == v103)
      {
        break;
      }

      v118 = vceqq_f64(v114, v51);
      v119 = vceqq_f64(v113, vdupq_lane_s64(*&v51.f64[0], 0));
      *(v92 + 10) = v119;
      *(v92 + 11) = v118;
      *(v92 + 12) = vuzp1q_s32(v119, v118);
      v120 = (*(v92 + 27) + 16 * v117);
      v90 = *v120;
      v121 = v120[1];
      *(v92 + 28) = v90;
      v92 += 224;
      ++v103;
      v122 = vdupq_n_s32(*(v92 + 52));
      v118.i32[0] = *(v92 + 52);
      v123 = *&vshlq_s32(v107, vnegq_s32(v122)) & __PAIR128__(0xFFFFFFFCFFFFFFFCLL, 0xFFFFFFFCFFFFFFFCLL);
      *(v92 + 1) = vshlq_u32(v123, v122);
      *(v92 + 2) = vshlq_u32(vaddq_s32(v123, v96), v122);
      v124 = vaddq_s32(vandq_s8(vdupq_lane_s32(*&vshlq_u32(v97, v118), 0), v107), *(v92 + 3));
      v125 = vsubq_s32(v124, v64);
      v126.i64[0] = v125.i32[2];
      v126.i64[1] = v125.i32[3];
      v127 = vcvtq_f64_s64(v126);
      v126.i64[0] = v125.i32[0];
      v126.i64[1] = v125.i32[1];
      *(v92 + 5) = vmulq_f64(v77, vcvtq_f64_s64(v126));
      *(v92 + 6) = vmulq_f64(v78, v127);
      *(v92 + 4) = v124;
      *(v92 + 2) = v121;
    }

    v128 = v52 + v94 * v102;
    v129 = *a3;
    v130 = *(a3[1] + 8);
    v160 = *(v92 + 2) + v116.i32[0];
    if (**v129 != v128)
    {
      v131 = v52 + v94 * v51.f64[0];
      *v163 = 0;
      v162 = 0;
      v165[0] = 0;
      v132 = v128;
      *buf = v132;
      *&v163[4] = v130;
      v164 = v117;
      v133 = *(v129 + 8);
      v134 = **(v133[1] + 120);
      v135 = (*v133 + 48);
      v159 = v51;
      Phase::Geometry::GetNormals(v134, v135, &v160, 1, &v162, 1, 1);
      Phase::Geometry::GetMaterials(v134, &v160, 1, v165, 1, 1);
      std::vector<Phase::Geometry::RaycastHit>::push_back[abi:ne200100](*(v129 + 16), buf);
      v52 = v158.f64[0];
      v51 = v159;
      v106 = v152;
      v105.i64[0] = 0x800000008;
      v105.i64[1] = 0x800000008;
      v104.i64[0] = 0x100000001;
      v104.i64[1] = 0x100000001;
      v97.i64[0] = -1;
      v97.i64[1] = -1;
      v96.i64[0] = 0x400000004;
      v96.i64[1] = 0x400000004;
      v78 = v153;
      v77 = v154;
      v74 = v155;
      v73 = v156;
      v64 = v157;
      **v129 = v131;
    }

LABEL_18:
    if (v51.f64[0] >= 1.0)
    {
      return;
    }

    v137 = *(v92 + 5);
    v136 = *(v92 + 6);
    v138 = vceqq_f64(v136, v51);
    v139 = *(v92 + 4);
    v140 = vceqq_f64(v137, vdupq_lane_s64(*&v51.f64[0], 0));
    v141 = vuzp1q_s32(v140, v138);
    *(v92 + 10) = v140;
    *(v92 + 11) = v138;
    *(v92 + 12) = v141;
    v107 = vbslq_s8(v141, v139, vaddq_s32(vuzp1q_s32(vcvtq_s64_f64(vmulq_n_f64(v73, v51.f64[0])), vcvtq_s64_f64(vmulq_f64(v74, v51))), v64));
    v142 = vorrq_s8(vcgeq_s32(v107, *(v92 + 2)), vcgtq_s32(*(v92 + 1), v107));
    v142.i32[3] = v142.i32[2];
    if ((vmaxvq_u32(v142) & 0x80000000) != 0)
    {
      break;
    }

    v143 = v92;
LABEL_24:
    v145 = vbslq_s8(vcltzq_s64(v138.u64[0]), vaddq_f64(v136, *(v143 + 9)), v136);
    v146 = vbslq_s8(vcltzq_s64(v140), vaddq_f64(v137, *(v143 + 8)), v137);
    *(v143 + 4) = vbslq_s8(v141, vaddq_s32(*(v143 + 7), v139), v139);
    *(v143 + 5) = v146;
    *(v143 + 6) = v145;
    v90 = *v143;
    v102 = v51.f64[0];
  }

  while (v103 >= 2)
  {
    --v103;
    v143 = v92 - 224;
    v144 = vorrq_s8(vcgeq_s32(v107, *(v92 - 12)), vcgtq_s32(*(v92 - 13), v107));
    v144.i32[3] = v144.i32[2];
    v92 -= 224;
    if ((vmaxvq_u32(v144) & 0x80000000) == 0)
    {
      v138 = *(v143 + 11);
      v141 = *(v143 + 12);
      v137 = *(v143 + 5);
      v136 = *(v143 + 6);
      v139 = *(v143 + 4);
      v92 = v143;
      v140 = *(v143 + 10);
      goto LABEL_24;
    }
  }
}

void _ZN5Phase8Geometry7details21RaycastVsVoxelSubtreeILb0ERKZNS0_18RaycastVsVoxelTreeILb0ERZNS0_28MultiHitRaycastVsVoxelTreeV2ERNS0_11SystemStateERNS0_15SceneQueryBatchERNS0_10SceneQueryERNS0_20SceneQueryShapeStateEE3__0EEvS5_RNS0_12RaycastInputERKNS0_5ShapeEOT0_EUlT_SJ_T1_E_EEvS5_SF_RKNS0_12VoxelSubtreeESK_(float32x2_t *a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, float64x2_t a9)
{
  v187 = *MEMORY[0x277D85DE8];
  v12 = vcvtq_f64_f32(*a1);
  v10.f64[0] = a1[1].f32[0];
  v13 = vcvtq_f64_f32(a1[2]);
  v9.f64[0] = a1[3].f32[0];
  __asm { FMOV            V16.2D, #1.0 }

  v19 = vminnmq_f64(vmaxnmq_f64(vdivq_f64(_Q16, v13), vdupq_n_s64(0xC1EFFFFFFFE00000)), vdupq_n_s64(0x41EFFFFFFFE00000uLL));
  v20 = vminnmq_f64(*&vmaxnmq_f64(*&vdivq_f64(_Q16, v9), xmmword_23A555970), xmmword_23A555980);
  v11.f64[0] = *(a2 + 8);
  a9.f64[0] = *(a2 + 20);
  v21 = vmulq_f64(v19, vsubq_f64(vcvtq_f64_f32(*a2), v12));
  v22 = *&vmulq_f64(v20, vsubq_f64(v11, v10));
  v23 = vmulq_f64(v19, vsubq_f64(vcvtq_f64_f32(*(a2 + 12)), v12));
  *&v20.f64[0] = *&vmulq_f64(v20, vsubq_f64(a9, v10));
  v24 = vminnmq_f64(v21, v23);
  *&v25.f64[0] = *&vminnmq_f64(v22, *&v20.f64[0]);
  v25.f64[1] = a1[1].f32[1];
  *&v26.f64[0] = *&vmaxnmq_f64(v22, *&v20.f64[0]);
  v26.f64[1] = a1[3].f32[1];
  v28 = vmaxnmq_f64(v21, v23);
  v27 = vpmaxq_f64(vmaxnmq_f64(v24, v25));
  v28.f64[0] = vpminq_f64(vminnmq_f64(v28, v26));
  if (v27 > v28.f64[0])
  {
    return;
  }

  v29 = a3;
  if (v27 < 0.0)
  {
    v27 = 0.0;
    if (v28.f64[0] <= 0.0)
    {
      return;
    }
  }

  v30 = *(**(a2 + 40) + 16 * *(a2 + 48));
  v31 = v30[3];
  if (v31 != 1)
  {
    if (v31 > 32)
    {
      v158 = **(Phase::Logger::GetInstance(a1) + 432);
      if (os_log_type_enabled(v158, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v182 = "GeoRaycastUtility.hpp";
        v183 = 1024;
        v184 = 477;
        v185 = 1024;
        v186 = v31;
        _os_log_impl(&dword_23A302000, v158, OS_LOG_TYPE_ERROR, "%25s:%-5d Excessive level count (%d) in voxel tree: resolution has an invalid numerical value.", buf, 0x18u);
      }

      return;
    }

    v176 = vextq_s8(v13, v13, 8uLL);
    MEMORY[0x28223BE20](a1);
    v41 = &v167 - v40;
    v179 = v43;
    v180 = v42;
    v169 = v44;
    v177 = v45;
    v178 = v46;
    v174 = v47;
    v170 = v48;
    v171 = v49;
    v172 = v50;
    v175 = v51;
    v173 = v52;
    bzero(&v167 - v40, v40);
    v54 = v179.f64[0];
    v55 = v180.f64[0];
    v56.i64[0] = 0;
    v57 = v30[1];
    v58.f64[0] = v57[3].f32[0];
    v59 = vdivq_f64(v169, v58);
    v60.f64[0] = v170.f64[0];
    *&v60.f64[1] = v176.i64[0];
    v61 = vdivq_f64(v169, vcvtq_f64_f32(v57[2]));
    v62.f64[0] = 1073741820.0;
    v63 = vdupq_n_s64(0x41CFFFFFFF800000uLL);
    v64 = vcvtq_s64_f64(vmulq_f64(vminnmq_f64(vmaxnmq_f64(vmulq_f64(vsubq_f64(vmlaq_n_f64(v171, v60, v179.f64[0]), v175), v61), 0), v169), v63));
    v65 = vcvtq_s64_f64(vmulq_f64(vminnmq_f64(*&vmaxnmq_f64(*&vmulq_f64(vsubq_f64(vmlaq_f64(v172, v179, v174), v173), v59), 0), xmmword_23A555990), v62));
    v66 = vuzp1q_s32(v64, v65);
    v67 = vcvtq_s64_f64(vmulq_f64(vminnmq_f64(vmaxnmq_f64(vmulq_f64(vsubq_f64(vmlaq_n_f64(v171, v60, v180.f64[0]), v175), v61), 0), v169), v63));
    v68 = vcvtq_s64_f64(vmulq_f64(vminnmq_f64(*&vmaxnmq_f64(*&vmulq_f64(vsubq_f64(vmlaq_f64(v172, v180, v174), v173), v59), 0), xmmword_23A555990), v62));
    v69 = vuzp1q_s32(v67, v68);
    *v65.i8 = vsub_s32(vmovn_s64(v68), vmovn_s64(v65));
    v70.i64[0] = v65.i32[0];
    v70.i64[1] = v65.i32[1];
    v71 = vcvtq_f64_s64(v70);
    *v64.i8 = vsub_s32(vmovn_s64(v67), vmovn_s64(v64));
    v70.i64[0] = v64.i32[0];
    v70.i64[1] = v64.i32[1];
    v72 = vcvtq_f64_s64(v70);
    v73 = vceqq_s32(v69, v66);
    v70.i64[0] = v73.i32[2];
    v73.i64[1] = v73.i32[1];
    v73.i64[0] = v73.i32[0] & v70.i64[0] & v73.i32[1];
    v74 = vcgtq_s64(v56, v73);
    v75 = vbslq_s8(vdupq_lane_s64(v74.i64[0], 0), vmulq_f64(vmulq_f64(v170, v61), v63), v72);
    v76 = vbslq_s8(v74, vmulq_f64(vmulq_f64(v174, v59), v62), v71);
    v77 = vextq_s8(v75, v75, 8uLL).u64[0];
    v78 = *&vmaxnmq_f64(*&vdivq_f64(v169, v76), v177);
    v79 = vminnmq_f64(vmaxnmq_f64(vdivq_f64(v169, v75), vdupq_n_s64(0xC1EFFFFFFFE00000)), vdupq_n_s64(0x41EFFFFFFFE00000uLL));
    v80 = vminnmq_f64(v78.u64[0], v178);
    v81 = v31 - 1;
    if (v31 >= 1)
    {
      v82 = vcltzq_s32(vsubq_s32(v69, v66));
      v83 = v31 & 0x7FFFFFFF;
      v84 = v30[4];
      v85 = v57 + 8;
      v86 = v41 + 216;
      v87 = 30;
      do
      {
        v88 = vdupq_n_s32(1 << v87);
        *(v86 - 2) = v87;
        *(v86 - 21) = vorrq_s8(v88, v82);
        v89 = vorrq_s8(vandq_s8(vdupq_n_s32(-(1 << v87)), v82), vbicq_s8(v88, v82));
        *(v86 - 13) = v89;
        v90.i64[0] = v89.i32[2];
        v90.i64[1] = v89.i32[3];
        v91 = vcvtq_f64_s64(v90);
        v90.i64[0] = v89.i32[0];
        v90.i64[1] = v89.i32[1];
        v78 = vmulq_f64(v79, vcvtq_f64_s64(v90));
        *(v86 - 9) = vmulq_f64(v80, v91);
        *(v86 - 11) = v78;
        *v86 = *(*(**&v85[-1] + 16 * *v85) + 8);
        v86 += 28;
        v85 = (v85 + v84);
        v87 -= 2;
        --v83;
      }

      while (v83);
    }

    v92 = v55 - v54;
    v93 = *(v41 + 27);
    v94 = *v93;
    v95 = v93[1];
    *(v41 + 28) = v94;
    v96 = v41 + 224;
    v97 = vdupq_n_s32(*(v96 + 52));
    v78.i32[0] = *(v96 + 52);
    v98 = *&vshlq_s32(v66, vnegq_s32(v97)) & __PAIR128__(0xFFFFFFFCFFFFFFFCLL, 0xFFFFFFFCFFFFFFFCLL);
    v99.i64[0] = 0x400000004;
    v99.i64[1] = 0x400000004;
    v100.i64[0] = -1;
    v100.i64[1] = -1;
    *(v96 + 1) = vshlq_u32(v98, v97);
    *(v96 + 2) = vshlq_u32(vaddq_s32(v98, v99), v97);
    v101 = vaddq_s32(vandq_s8(vdupq_lane_s32(*&vshlq_u32(v100, v78), 0), v66), *(v96 + 3));
    v102 = vsubq_s32(v101, v66);
    v103.i64[0] = v102.i32[2];
    v103.i64[1] = v102.i32[3];
    v104 = vcvtq_f64_s64(v103);
    v103.i64[0] = v102.i32[0];
    v103.i64[1] = v102.i32[1];
    *(v96 + 5) = vmulq_f64(v79, vcvtq_f64_s64(v103));
    *(v96 + 6) = vmulq_f64(v80, v104);
    *(v96 + 4) = v101;
    *(v96 + 2) = v95;
    v105 = 0.0;
    v106 = 1;
    v107.i64[0] = 0x100000001;
    v107.i64[1] = 0x100000001;
    v108.i64[0] = 0x800000008;
    v108.i64[1] = 0x800000008;
    v109 = xmmword_23A5559A0;
    *&v75.f64[1] = v77;
    v110 = v66;
    while (1)
    {
      v111 = (v96 + 208);
      v112 = vld1q_dup_f32(v111);
      v113 = vshlq_s32(v110, vnegq_s32(v112));
      v114 = vshlq_u32(vorrq_s8(vandq_s8(vshlq_n_s32(v113, 2uLL), v108), vandq_s8(v113, v107)), v109);
      v115 = v114.i8[8];
      LOBYTE(v111) = v114.i8[0] | v114.i8[4];
      v116 = *(v96 + 5);
      v117 = *(v96 + 6);
      v53.f64[0] = fmin(fmin(v116.f64[0], v117.f64[0]), *(v96 + 11));
      v118 = v111 | v115;
      if (((v94 >> v118) & 1) == 0)
      {
        goto LABEL_31;
      }

      v119 = vcnt_s8((v94 & ~(-1 << v118)));
      v119.i16[0] = vaddlv_u8(v119);
      v120 = *(v96 + 2) + v119.i32[0];
      if (v81 == v106)
      {
        v131 = v54 + v92 * v105;
        v132 = *v29;
        if (***v29 != v131)
        {
          v133 = *(*(v29 + 8) + 8);
          v134 = v131;
          v135 = v132[2];
          v136 = *v132[1];
          v137 = v135[1];
          v138 = v135[2];
          if (v137 >= v138)
          {
            v140 = *v135;
            v141 = v137 - *v135;
            v142 = 0xAAAAAAAAAAAAAAABLL * (v141 >> 3) + 1;
            if (v142 > 0xAAAAAAAAAAAAAAALL)
            {
              goto LABEL_51;
            }

            v173 = v53;
            v174 = v109;
            v175 = v80;
            v176 = v79;
            v177 = v76;
            v178 = v75;
            v180 = v66;
            v143 = 0xAAAAAAAAAAAAAAABLL * ((v138 - v140) >> 3);
            if (2 * v143 > v142)
            {
              v142 = 2 * v143;
            }

            if (v143 >= 0x555555555555555)
            {
              v142 = 0xAAAAAAAAAAAAAAALL;
            }

            v168 = v29;
            if (v142)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::Controller::SpatialModelerParameterAddress>>(v135, v142);
            }

            v144 = 8 * (v141 >> 3);
            *v144 = v134;
            *(v144 + 4) = v120;
            *(v144 + 8) = v133;
            *(v144 + 16) = v136;
            v139 = v144 + 24;
            v145 = v144 - v141;
            memcpy((v144 - v141), v140, v141);
            v146 = *v135;
            *v135 = v145;
            v135[1] = v139;
            v135[2] = 0;
            if (v146)
            {
              operator delete(v146);
            }

            v29 = v168;
            v54 = v179.f64[0];
            v66 = v180;
            v76 = v177;
            v75 = v178;
            v80 = v175;
            v79 = v176;
            v99.i64[0] = 0x400000004;
            v99.i64[1] = 0x400000004;
            v100.i64[0] = -1;
            v100.i64[1] = -1;
            v107.i64[0] = 0x100000001;
            v107.i64[1] = 0x100000001;
            v108.i64[0] = 0x800000008;
            v108.i64[1] = 0x800000008;
            v109 = v174;
            v53 = v173;
          }

          else
          {
            *v137 = v134;
            *(v137 + 1) = v120;
            v139 = (v137 + 24);
            *(v137 + 1) = v133;
            *(v137 + 2) = v136;
          }

          v135[1] = v139;
          **v132 = v54 + v92 * v53.f64[0];
        }

LABEL_31:
        if (v53.f64[0] >= 1.0)
        {
          return;
        }

        v148 = *(v96 + 5);
        v147 = *(v96 + 6);
        v149 = vceqq_f64(v147, v53);
        v150 = *(v96 + 4);
        v151 = vceqq_f64(v148, vdupq_lane_s64(*&v53.f64[0], 0));
        v152 = vuzp1q_s32(v151, v149);
        *(v96 + 10) = v151;
        *(v96 + 11) = v149;
        *(v96 + 12) = v152;
        v110 = vbslq_s8(v152, v150, vaddq_s32(vuzp1q_s32(vcvtq_s64_f64(vmulq_n_f64(v75, v53.f64[0])), vcvtq_s64_f64(vmulq_f64(v76, v53))), v66));
        v153 = vorrq_s8(vcgeq_s32(v110, *(v96 + 2)), vcgtq_s32(*(v96 + 1), v110));
        v153.i32[3] = v153.i32[2];
        if ((vmaxvq_u32(v153) & 0x80000000) != 0)
        {
          do
          {
            if (v106 < 2)
            {
              return;
            }

            --v106;
            v154 = v96 - 224;
            v155 = vorrq_s8(vcgeq_s32(v110, *(v96 - 12)), vcgtq_s32(*(v96 - 13), v110));
            v155.i32[3] = v155.i32[2];
            v96 -= 224;
          }

          while ((vmaxvq_u32(v155) & 0x80000000) != 0);
          v149 = *(v154 + 11);
          v152 = *(v154 + 12);
          v148 = *(v154 + 5);
          v147 = *(v154 + 6);
          v150 = *(v154 + 4);
          v96 = v154;
          v151 = *(v154 + 10);
        }

        else
        {
          v154 = v96;
        }

        v156 = vbslq_s8(vcltzq_s64(v149.u64[0]), vaddq_f64(v147, *(v154 + 9)), v147);
        v157 = vbslq_s8(vcltzq_s64(v151), vaddq_f64(v148, *(v154 + 8)), v148);
        *(v154 + 4) = vbslq_s8(v152, vaddq_s32(*(v154 + 7), v150), v150);
        *(v154 + 5) = v157;
        *(v154 + 6) = v156;
        v94 = *v154;
        v105 = v53.f64[0];
      }

      else
      {
        v121 = vceqq_f64(v117, v53);
        v122 = vceqq_f64(v116, vdupq_lane_s64(*&v53.f64[0], 0));
        *(v96 + 10) = v122;
        *(v96 + 11) = v121;
        *(v96 + 12) = vuzp1q_s32(v122, v121);
        v123 = (*(v96 + 27) + 16 * v120);
        v94 = *v123;
        v124 = v123[1];
        *(v96 + 28) = v94;
        v96 += 224;
        ++v106;
        v125 = vdupq_n_s32(*(v96 + 52));
        v121.i32[0] = *(v96 + 52);
        v126 = *&vshlq_s32(v110, vnegq_s32(v125)) & __PAIR128__(0xFFFFFFFCFFFFFFFCLL, 0xFFFFFFFCFFFFFFFCLL);
        *(v96 + 1) = vshlq_u32(v126, v125);
        *(v96 + 2) = vshlq_u32(vaddq_s32(v126, v99), v125);
        v127 = vaddq_s32(vandq_s8(vdupq_lane_s32(*&vshlq_u32(v100, v121), 0), v110), *(v96 + 3));
        v128 = vsubq_s32(v127, v66);
        v129.i64[0] = v128.i32[2];
        v129.i64[1] = v128.i32[3];
        v130 = vcvtq_f64_s64(v129);
        v129.i64[0] = v128.i32[0];
        v129.i64[1] = v128.i32[1];
        *(v96 + 5) = vmulq_f64(v79, vcvtq_f64_s64(v129));
        *(v96 + 6) = vmulq_f64(v80, v130);
        *(v96 + 4) = v127;
        *(v96 + 2) = v124;
      }
    }
  }

  v32 = *a3;
  if (***a3 != v27)
  {
    v33 = *(*(a3 + 8) + 8);
    v34 = v27;
    v35 = v32[2];
    v36 = *v32[1];
    v37 = v35[1];
    v38 = v35[2];
    if (v37 >= v38)
    {
      v159 = 0xAAAAAAAAAAAAAAALL;
      v160 = *v35;
      v161 = v37 - *v35;
      v162 = 0xAAAAAAAAAAAAAAABLL * (v161 >> 3) + 1;
      if (v162 > 0xAAAAAAAAAAAAAAALL)
      {
LABEL_51:
        std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
      }

      v180 = v28;
      v163 = 0xAAAAAAAAAAAAAAABLL * ((v38 - v160) >> 3);
      if (2 * v163 > v162)
      {
        v162 = 2 * v163;
      }

      if (v163 < 0x555555555555555)
      {
        v159 = v162;
      }

      if (v159)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::Controller::SpatialModelerParameterAddress>>(v35, v159);
      }

      v164 = 8 * (v161 >> 3);
      *v164 = v34;
      *(v164 + 4) = 0;
      *(v164 + 8) = v33;
      *(v164 + 16) = v36;
      v39 = v164 + 24;
      v165 = v164 - v161;
      memcpy((v164 - v161), v160, v161);
      v166 = *v35;
      *v35 = v165;
      v35[1] = v39;
      v35[2] = 0;
      if (v166)
      {
        operator delete(v166);
      }

      v28.f64[0] = v180.f64[0];
    }

    else
    {
      *v37 = v34;
      *(v37 + 1) = 0;
      v39 = (v37 + 24);
      *(v37 + 1) = v33;
      *(v37 + 2) = v36;
    }

    v35[1] = v39;
    **v32 = v28.f64[0];
  }
}

void Phase::Geometry::IterateSceneQueryBatch(Phase::Logger *a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 88))
  {
    __assert_rtn("IterateSceneQueryBatch", "GeoSceneQueryFunctions.cpp", 22, "inSceneQueryFunctionTable.mTestScene");
  }

  v6 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  Phase::Geometry::RunSceneQueriesOnRange(a1, a2, a3, 0, *(a2 + 96));
  atomic_store(3u, a2);
  atomic_store(2u, (a2 + 4));
  if (*(a2 + 48))
  {

    std::function<void ()(Phase::Geometry::SceneQueryBatch *)>::operator()(a2 + 24, a2);
  }
}

uint64_t std::function<void ()(Phase::Geometry::SceneQueryBatch *)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void Phase::Geometry::IterateSceneQueryBatchAsync(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 88))
  {
    __assert_rtn("IterateBatchAsync", "GeoSceneQueryUtility.hpp", 85, "inSceneQueryFunctionTable.mTestScene");
  }

  v6 = *(a2 + 80);
  if (v6 <= 0xC0)
  {
    v7 = v6 > 0x3F;
  }

  else
  {
    v7 = 2;
  }

  v8 = *(*(a1 + 1064) + 2848);
  std::string::basic_string[abi:ne200100]<0>(__p, "GeoBatch");
  (*(*v8 + 16))(&v29, v8, __p);
  v9 = v29;
  v29 = 0uLL;
  v10 = *(a2 + 16);
  *(a2 + 8) = v9;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    if (*(&v29 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v29 + 1));
    }
  }

  if (v28 < 0)
  {
    operator delete(__p[0]);
  }

  v11 = *(a2 + 8);
  *(v11 + 256) = &unk_284D34658;
  *(v11 + 264) = Phase::Geometry::CompleteSceneQueryBatch;
  *(v11 + 272) = a2;
  *(v11 + 383) = 1;
  atomic_store(1u, (v11 + 40));
  v12 = *(a2 + 8);
  *(v12 + 524) = v7;
  atomic_store(1u, (v12 + 40));
  v13 = *(a2 + 96);
  if (v13)
  {
    v14 = 0;
    v15 = v13 >> 4;
    v16 = *(a2 + 96) & 0xF;
    do
    {
      v17 = v16 <= 0;
      if (v16 <= 0)
      {
        v16 = 0;
      }

      else
      {
        --v16;
      }

      if (v17)
      {
        v18 = v14 + v15;
      }

      else
      {
        v18 = v14 + v15 + 1;
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "GeoTestScene");
      (*(*v8 + 16))(&v29, v8, __p);
      if (v28 < 0)
      {
        operator delete(__p[0]);
      }

      v19 = v29;
      *(v29 + 256) = &unk_284D34680;
      *(v19 + 264) = Phase::Geometry::RunSceneQueriesOnRange;
      *(v19 + 272) = a1;
      *(v19 + 280) = a2;
      *(v19 + 288) = a3;
      *(v19 + 296) = v14;
      *(v19 + 300) = v18;
      *(v19 + 383) = 1;
      atomic_store(1u, (v19 + 40));
      *(v19 + 524) = v7;
      atomic_store(1u, (v19 + 40));
      v20 = *(a2 + 16);
      v25 = *(a2 + 8);
      v26 = v20;
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v23 = v19;
      v24 = *(&v29 + 1);
      if (*(&v29 + 1))
      {
        atomic_fetch_add_explicit((*(&v29 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      (*(*v8 + 24))(v8, &v25, &v23);
      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }

      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }

      if (*(&v29 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v29 + 1));
      }

      v14 = v18;
    }

    while (v18 < *(a2 + 96));
  }

  v21 = *(a2 + 8);
  v22 = *(a2 + 16);
  __p[0] = v21;
  __p[1] = v22;
  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  Phase::JobManager::RunJobAsync(v8, __p);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }
}

void sub_23A40077C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21)
{
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  _Unwind_Resume(exception_object);
}

void Phase::Geometry::CompleteSceneQueryBatch(atomic_uint *this, Phase::Geometry::SceneQueryBatch *a2)
{
  v2 = 1;
  atomic_compare_exchange_strong(this + 1, &v2, 2u);
  if (v2 != 1)
  {
    return;
  }

  v4 = *(this + 2);
  *(this + 1) = 0;
  *(this + 2) = 0;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = atomic_load(this);
  if (v5 == 2)
  {
    v6 = 3;
  }

  else
  {
    if (v5 == 5)
    {
      goto LABEL_9;
    }

    v6 = 5;
  }

  atomic_store(v6, this);
LABEL_9:
  atomic_store(4u, this + 1);
  if (*(this + 6))
  {

    std::function<void ()(Phase::Geometry::SceneQueryBatch *)>::operator()((this + 6), this);
  }
}

uint64_t Phase::Geometry::SceneQueryScheduler::RunQuery(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 64);
  v4 = *(*result + 2728);
  if (0x86BCA1AF286BCA1BLL * ((*(*result + 2736) - v4) >> 3) <= v3)
  {
    __assert_rtn("GetTypeDef", "GeoSceneQueryTypeRegistry.cpp", 33, "IsValid(inQueryType)");
  }

  v5 = v4 + 152 * v3;
  if (*(v5 + 32))
  {
    atomic_store(1u, a3);
    atomic_store(1u, (a3 + 4));
    v6 = *(v5 + 32);
    if (!v6)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v7 = *(*v6 + 48);

    return v7();
  }

  else
  {
    atomic_store(5u, a3);
    atomic_store(4u, (a3 + 4));
    if (*(a3 + 48))
    {

      return std::function<void ()(Phase::Geometry::SceneQueryBatch *)>::operator()(a3 + 24, a3);
    }
  }

  return result;
}

void *Phase::Geometry::SceneQueryTypeRegistry::CustomizeType(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = a1[1];
  if (0x86BCA1AF286BCA1BLL * ((a1[2] - v4) >> 3) <= a2)
  {
    __assert_rtn("CustomizeType", "GeoSceneQueryTypeRegistry.cpp", 44, "IsValid(inQueryType)");
  }

  if (a1[4] <= a3)
  {
    __assert_rtn("CustomizeType", "GeoSceneQueryTypeRegistry.cpp", 45, "inShapeType < mTestShapeTableEntryCount");
  }

  v5 = (*(v4 + 152 * a2 + 104) + 32 * a3);

  return std::function<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &)>::operator=(v5, a4);
}

{
  v4 = a1[1];
  if (0x86BCA1AF286BCA1BLL * ((a1[2] - v4) >> 3) <= a2)
  {
    __assert_rtn("CustomizeType", "GeoSceneQueryTypeRegistry.cpp", 58, "IsValid(inQueryType)");
  }

  if (a1[4] <= a3)
  {
    __assert_rtn("CustomizeType", "GeoSceneQueryTypeRegistry.cpp", 59, "inShapeType < mTestShapeTableEntryCount");
  }

  v5 = (*(v4 + 152 * a2 + 128) + 32 * a3);

  return std::function<BOOL ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,int,int)>::operator=(v5, a4);
}

void *std::function<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &)>::operator=(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &)>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &)>::~__value_func[abi:ne200100](v4);
  return a1;
}

void *std::function<BOOL ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,int,int)>::operator=(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,int,int)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<BOOL ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,int,int)>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<BOOL ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,int,int)>::~__value_func[abi:ne200100](v4);
  return a1;
}

void *Phase::Geometry::SceneQueryTypeRegistry::CustomizeType(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  if (0x86BCA1AF286BCA1BLL * ((*(a1 + 16) - v4) >> 3) <= a2)
  {
    __assert_rtn("CustomizeType", "GeoSceneQueryTypeRegistry.cpp", 70, "IsValid(inQueryType)");
  }

  return std::function<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,std::vector<std::function<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &)>> const&,BOOL)>::operator=((v4 + 152 * a2 + 72), a3);
}

void *std::function<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,std::vector<std::function<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &)>> const&,BOOL)>::operator=(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,std::vector<std::function<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &)>> const&,BOOL)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,std::vector<std::function<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &)>> const&,BOOL)>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,std::vector<std::function<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &)>> const&,BOOL)>::~__value_func[abi:ne200100](v4);
  return a1;
}

void *Phase::Geometry::SceneQueryTypeRegistry::CustomizeType(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  if (0x86BCA1AF286BCA1BLL * ((*(a1 + 16) - v4) >> 3) <= a2)
  {
    __assert_rtn("CustomizeType", "GeoSceneQueryTypeRegistry.cpp", 83, "IsValid(inQueryType)");
  }

  v6 = v4 + 152 * a2;
  std::function<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQueryFunctionTable const&)>::operator=((v6 + 8), a3);

  return std::function<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQueryFunctionTable const&)>::operator=((v6 + 40), a4);
}

void *std::function<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQueryFunctionTable const&)>::operator=(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQueryFunctionTable const&)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQueryFunctionTable const&)>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQueryFunctionTable const&)>::~__value_func[abi:ne200100](v4);
  return a1;
}

uint64_t Phase::Geometry::SceneQueryTypeRegistry::RegisterNewType(void *a1, uint64_t a2, uint64_t a3)
{
  v15[3] = *MEMORY[0x277D85DE8];
  v5 = a1 + 1;
  v6 = (a1[2] - a1[1]) >> 3;
  v7 = (678152731 * v6);
  v10[0] = 678152731 * v6;
  v10[1] = 678152731 * v6;
  std::__function::__value_func<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQueryFunctionTable const&)>::__value_func[abi:ne200100](v11, a2);
  std::__function::__value_func<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQueryFunctionTable const&)>::__value_func[abi:ne200100](v12, a3);
  v13[3] = 0;
  std::vector<std::function<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &)>>::vector[abi:ne200100](v14, a1[4]);
  std::vector<std::function<BOOL ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,int,int)>>::vector[abi:ne200100](v15, a1[4]);
  std::vector<Phase::Geometry::SceneQueryTypeDefinition>::push_back[abi:ne200100](v5, v10);
  v9 = v15;
  std::vector<std::function<BOOL ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,int,int)>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = v14;
  std::vector<std::function<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &)>>::__destroy_vector::operator()[abi:ne200100](&v9);
  std::__function::__value_func<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,std::vector<std::function<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &)>> const&,BOOL)>::~__value_func[abi:ne200100](v13);
  std::__function::__value_func<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQueryFunctionTable const&)>::~__value_func[abi:ne200100](v12);
  std::__function::__value_func<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQueryFunctionTable const&)>::~__value_func[abi:ne200100](v11);
  return v7;
}

void sub_23A400F2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  Phase::Geometry::SceneQueryTypeDefinition::~SceneQueryTypeDefinition(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<Phase::Geometry::SceneQueryTypeDefinition>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<Phase::Geometry::SceneQueryTypeDefinition>::__emplace_back_slow_path<Phase::Geometry::SceneQueryTypeDefinition>(a1, a2);
  }

  else
  {
    std::allocator_traits<std::allocator<Phase::Geometry::SceneQueryTypeDefinition>>::construct[abi:ne200100]<Phase::Geometry::SceneQueryTypeDefinition,Phase::Geometry::SceneQueryTypeDefinition,void,0>(a1, a1[1], a2);
    result = v3 + 152;
    a1[1] = v3 + 152;
  }

  a1[1] = result;
  return result;
}

void Phase::Geometry::SceneQueryTypeDefinition::~SceneQueryTypeDefinition(Phase::Geometry::SceneQueryTypeDefinition *this)
{
  v2 = (this + 128);
  std::vector<std::function<BOOL ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,int,int)>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = (this + 104);
  std::vector<std::function<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &)>>::__destroy_vector::operator()[abi:ne200100](&v2);
  std::__function::__value_func<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,std::vector<std::function<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &)>> const&,BOOL)>::~__value_func[abi:ne200100](this + 72);
  std::__function::__value_func<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQueryFunctionTable const&)>::~__value_func[abi:ne200100](this + 40);
  std::__function::__value_func<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQueryFunctionTable const&)>::~__value_func[abi:ne200100](this + 8);
}

unint64_t Phase::Geometry::SceneQueryTypeRegistry::DeriveNewType(Phase::Geometry::SceneQueryTypeRegistry *this, unsigned int a2)
{
  v12[3] = *MEMORY[0x277D85DE8];
  v2 = *(this + 1);
  v3 = (this + 8);
  v4 = 0x86BCA1AF286BCA1BLL * ((*(this + 2) - v2) >> 3);
  if (v4 <= a2)
  {
    __assert_rtn("DeriveNewType", "GeoSceneQueryTypeRegistry.cpp", 112, "IsValid(inBaseQueryType)");
  }

  v7[0] = a2;
  v7[1] = v4;
  Phase::Geometry::SceneQueryFunctionTable::SceneQueryFunctionTable(v8, (v2 + 152 * a2 + 8));
  std::vector<Phase::Geometry::SceneQueryTypeDefinition>::push_back[abi:ne200100](v3, v7);
  v6 = v12;
  std::vector<std::function<BOOL ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,int,int)>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v6 = &v11;
  std::vector<std::function<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &)>>::__destroy_vector::operator()[abi:ne200100](&v6);
  std::__function::__value_func<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,std::vector<std::function<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &)>> const&,BOOL)>::~__value_func[abi:ne200100](&v10);
  std::__function::__value_func<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQueryFunctionTable const&)>::~__value_func[abi:ne200100](&v9);
  std::__function::__value_func<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQueryFunctionTable const&)>::~__value_func[abi:ne200100](v8);
  return v4;
}

void sub_23A401158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  Phase::Geometry::SceneQueryTypeDefinition::~SceneQueryTypeDefinition(va);
  _Unwind_Resume(a1);
}

void std::vector<Phase::Geometry::SceneQueryTypeDefinition>::resize(void *a1, unint64_t a2)
{
  v2 = 0x86BCA1AF286BCA1BLL * ((a1[1] - *a1) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<Phase::Geometry::SceneQueryTypeDefinition>::__append(a1, v4);
  }

  else if (!v3)
  {
    std::vector<Phase::Geometry::SceneQueryTypeDefinition>::__base_destruct_at_end[abi:ne200100](a1, *a1 + 152 * a2);
  }
}

uint64_t *Phase::Geometry::SceneQueryTypeRegistry::SetTestShapeTableEntryCount(uint64_t *this, unint64_t a2)
{
  this[4] = a2;
  v2 = this[1];
  v3 = this[2];
  if (v2 != v3)
  {
    v5 = (v2 + 104);
    do
    {
      if (a2 != (v5[1] - *v5) >> 5)
      {
        std::vector<std::function<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &)>>::resize(v5, a2);
      }

      this = v5 + 3;
      if (a2 != (v5[4] - v5[3]) >> 5)
      {
        this = std::vector<std::function<BOOL ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,int,int)>>::resize(this, a2);
      }

      v6 = v5 + 6;
      v5 += 19;
    }

    while (v6 != v3);
  }

  return this;
}

uint64_t *std::vector<std::function<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &)>>::resize(uint64_t *a1, unint64_t a2)
{
  result = a1[1];
  v4 = (result - *a1) >> 5;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *a1 + 32 * a2;
      while (result != v6)
      {
        result = std::__function::__value_func<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &)>::~__value_func[abi:ne200100]((result - 4));
      }

      a1[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    return std::vector<std::function<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &)>>::__append(a1, v5);
  }

  return result;
}

uint64_t *std::vector<std::function<BOOL ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,int,int)>>::resize(uint64_t *a1, unint64_t a2)
{
  result = a1[1];
  v4 = (result - *a1) >> 5;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *a1 + 32 * a2;
      while (result != v6)
      {
        result = std::__function::__value_func<BOOL ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,int,int)>::~__value_func[abi:ne200100]((result - 4));
      }

      a1[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    return std::vector<std::function<BOOL ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,int,int)>>::__append(a1, v5);
  }

  return result;
}

uint64_t std::vector<Phase::Geometry::SceneQueryTypeDefinition>::__emplace_back_slow_path<Phase::Geometry::SceneQueryTypeDefinition>(uint64_t *a1, uint64_t a2)
{
  v2 = 0x86BCA1AF286BCA1BLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1AF286BCA1AF286)
  {
    std::vector<Phase::Geometry::SceneQueryTypeDefinition>::__throw_length_error[abi:ne200100]();
  }

  if (0xD79435E50D79436 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xD79435E50D79436 * ((a1[2] - *a1) >> 3);
  }

  if (0x86BCA1AF286BCA1BLL * ((a1[2] - *a1) >> 3) >= 0xD79435E50D7943)
  {
    v6 = 0x1AF286BCA1AF286;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::Geometry::SceneQueryTypeDefinition>>(a1, v6);
  }

  v13 = 0;
  v14 = 152 * v2;
  std::allocator_traits<std::allocator<Phase::Geometry::SceneQueryTypeDefinition>>::construct[abi:ne200100]<Phase::Geometry::SceneQueryTypeDefinition,Phase::Geometry::SceneQueryTypeDefinition,void,0>(a1, (152 * v2), a2);
  v15 = 152 * v2 + 152;
  v7 = a1[1];
  v8 = (152 * v2 + *a1 - v7);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<Phase::Geometry::SceneQueryTypeDefinition>,Phase::Geometry::SceneQueryTypeDefinition*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<Phase::Geometry::SceneQueryTypeDefinition>::~__split_buffer(&v13);
  return v12;
}

void sub_23A401474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<Phase::Geometry::SceneQueryTypeDefinition>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

__n128 std::allocator_traits<std::allocator<Phase::Geometry::SceneQueryTypeDefinition>>::construct[abi:ne200100]<Phase::Geometry::SceneQueryTypeDefinition,Phase::Geometry::SceneQueryTypeDefinition,void,0>(uint64_t a1, void *a2, uint64_t a3)
{
  *a2 = *a3;
  std::__function::__value_func<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQueryFunctionTable const&)>::__value_func[abi:ne200100]((a2 + 1), a3 + 8);
  std::__function::__value_func<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQueryFunctionTable const&)>::__value_func[abi:ne200100]((a2 + 5), a3 + 40);
  std::__function::__value_func<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,std::vector<std::function<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &)>> const&,BOOL)>::__value_func[abi:ne200100]((a2 + 9), a3 + 72);
  a2[13] = 0;
  a2[14] = 0;
  a2[15] = 0;
  *(a2 + 13) = *(a3 + 104);
  a2[15] = *(a3 + 120);
  *(a3 + 104) = 0;
  *(a3 + 112) = 0;
  *(a3 + 120) = 0;
  a2[16] = 0;
  a2[17] = 0;
  a2[18] = 0;
  result = *(a3 + 128);
  *(a2 + 8) = result;
  a2[18] = *(a3 + 144);
  *(a3 + 128) = 0;
  *(a3 + 136) = 0;
  *(a3 + 144) = 0;
  return result;
}

uint64_t std::__function::__value_func<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQueryFunctionTable const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,std::vector<std::function<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &)>> const&,BOOL)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::Geometry::SceneQueryTypeDefinition>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1AF286BCA1AF287)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<Phase::Geometry::SceneQueryTypeDefinition>,Phase::Geometry::SceneQueryTypeDefinition*>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
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
      std::allocator_traits<std::allocator<Phase::Geometry::SceneQueryTypeDefinition>>::construct[abi:ne200100]<Phase::Geometry::SceneQueryTypeDefinition,Phase::Geometry::SceneQueryTypeDefinition,void,0>(a1, a4, v7);
      v7 += 152;
      a4 = v12 + 19;
      v12 += 19;
    }

    while (v7 != a3);
    v10 = 1;
    do
    {
      std::allocator_traits<std::allocator<Phase::Geometry::SceneQueryTypeDefinition>>::destroy[abi:ne200100]<Phase::Geometry::SceneQueryTypeDefinition,void,0>(a1, v5);
      v5 += 152;
    }

    while (v5 != a3);
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<Phase::Geometry::SceneQueryTypeDefinition>,Phase::Geometry::SceneQueryTypeDefinition*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::allocator_traits<std::allocator<Phase::Geometry::SceneQueryTypeDefinition>>::destroy[abi:ne200100]<Phase::Geometry::SceneQueryTypeDefinition,void,0>(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 128);
  std::vector<std::function<BOOL ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,int,int)>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = (a2 + 104);
  std::vector<std::function<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &)>>::__destroy_vector::operator()[abi:ne200100](&v4);
  std::__function::__value_func<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,std::vector<std::function<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &)>> const&,BOOL)>::~__value_func[abi:ne200100](a2 + 72);
  std::__function::__value_func<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQueryFunctionTable const&)>::~__value_func[abi:ne200100](a2 + 40);
  return std::__function::__value_func<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQueryFunctionTable const&)>::~__value_func[abi:ne200100](a2 + 8);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<Phase::Geometry::SceneQueryTypeDefinition>,Phase::Geometry::SceneQueryTypeDefinition*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<Phase::Geometry::SceneQueryTypeDefinition>,Phase::Geometry::SceneQueryTypeDefinition*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t *std::_AllocatorDestroyRangeReverse<std::allocator<Phase::Geometry::SceneQueryTypeDefinition>,Phase::Geometry::SceneQueryTypeDefinition*>::operator()[abi:ne200100](uint64_t *result)
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
      v3 -= 152;
      result = std::allocator_traits<std::allocator<Phase::Geometry::SceneQueryTypeDefinition>>::destroy[abi:ne200100]<Phase::Geometry::SceneQueryTypeDefinition,void,0>(v5, v3);
    }

    while (v3 != v4);
  }

  return result;
}

uint64_t std::__split_buffer<Phase::Geometry::SceneQueryTypeDefinition>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<Phase::Geometry::SceneQueryTypeDefinition>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__split_buffer<Phase::Geometry::SceneQueryTypeDefinition>::__destruct_at_end[abi:ne200100](uint64_t result, uint64_t a2)
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
    *(v3 + 16) = v4 - 152;
    result = std::allocator_traits<std::allocator<Phase::Geometry::SceneQueryTypeDefinition>>::destroy[abi:ne200100]<Phase::Geometry::SceneQueryTypeDefinition,void,0>(v5, v4 - 152);
  }

  return result;
}

void *std::vector<std::function<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &)>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::function<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &)>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<std::function<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &)>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::function<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &)>>>(a1, a2);
  }

  std::vector<Phase::Geometry::SceneQueryTypeDefinition>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::function<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &)>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<std::function<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &)>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 = std::__function::__value_func<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &)>::~__value_func[abi:ne200100](v4 - 32);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__function::__value_func<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *std::vector<std::function<BOOL ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,int,int)>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::function<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &)>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<std::function<BOOL ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,int,int)>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 = std::__function::__value_func<BOOL ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,int,int)>::~__value_func[abi:ne200100](v4 - 32);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__function::__value_func<BOOL ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,int,int)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *Phase::Geometry::SceneQueryFunctionTable::SceneQueryFunctionTable(void *a1, uint64_t *a2)
{
  v4 = std::__function::__value_func<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQueryFunctionTable const&)>::__value_func[abi:ne200100](a1, a2);
  std::__function::__value_func<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQueryFunctionTable const&)>::__value_func[abi:ne200100](v4 + 32, (a2 + 4));
  std::__function::__value_func<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,std::vector<std::function<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &)>> const&,BOOL)>::__value_func[abi:ne200100]((a1 + 8), (a2 + 8));
  a1[12] = 0;
  a1[13] = 0;
  a1[14] = 0;
  std::vector<std::function<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &)>>::__init_with_size[abi:ne200100]<std::function<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &)>*,std::function<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &)>*>((a1 + 12), a2[12], a2[13], (a2[13] - a2[12]) >> 5);
  a1[15] = 0;
  a1[16] = 0;
  a1[17] = 0;
  std::vector<std::function<BOOL ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,int,int)>>::__init_with_size[abi:ne200100]<std::function<BOOL ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,int,int)>*,std::function<BOOL ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,int,int)>*>((a1 + 15), a2[15], a2[16], (a2[16] - a2[15]) >> 5);
  return a1;
}

void sub_23A401D84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::function<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &)>>::__destroy_vector::operator()[abi:ne200100](va);
  std::__function::__value_func<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,std::vector<std::function<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &)>> const&,BOOL)>::~__value_func[abi:ne200100](v2 + 64);
  std::__function::__value_func<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQueryFunctionTable const&)>::~__value_func[abi:ne200100](v2 + 32);
  std::__function::__value_func<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQueryFunctionTable const&)>::~__value_func[abi:ne200100](v2);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::function<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &)>>::__init_with_size[abi:ne200100]<std::function<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &)>*,std::function<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &)>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::function<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &)>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_23A401ECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::function<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &)>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::function<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &)>>,std::function<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &)>*,std::function<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &)>*,std::function<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &)>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      std::__function::__value_func<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &)>::__value_func[abi:ne200100](a4, v6);
      v6 += 32;
      a4 += 32;
      v7 -= 32;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_23A401F4C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 32;
    do
    {
      v4 = std::__function::__value_func<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &)>::~__value_func[abi:ne200100](v4) - 32;
      v2 += 32;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::vector<std::function<BOOL ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,int,int)>>::__init_with_size[abi:ne200100]<std::function<BOOL ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,int,int)>*,std::function<BOOL ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,int,int)>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::function<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &)>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_23A402070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::function<BOOL ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,int,int)>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::function<BOOL ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,int,int)>>,std::function<BOOL ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,int,int)>*,std::function<BOOL ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,int,int)>*,std::function<BOOL ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,int,int)>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      std::__function::__value_func<BOOL ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,int,int)>::__value_func[abi:ne200100](a4, v6);
      v6 += 32;
      a4 += 32;
      v7 -= 32;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_23A4020F0(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 32;
    do
    {
      v4 = std::__function::__value_func<BOOL ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,int,int)>::~__value_func[abi:ne200100](v4) - 32;
      v2 += 32;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<BOOL ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,int,int)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void std::vector<Phase::Geometry::SceneQueryTypeDefinition>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0x86BCA1AF286BCA1BLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 152 * ((152 * a2 - 152) / 0x98) + 152;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0x86BCA1AF286BCA1BLL * ((v5 - *a1) >> 3);
    if (v6 + a2 > 0x1AF286BCA1AF286)
    {
      std::vector<Phase::Geometry::SceneQueryTypeDefinition>::__throw_length_error[abi:ne200100]();
    }

    v7 = 0x86BCA1AF286BCA1BLL * ((v4 - *a1) >> 3);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + a2)
    {
      v8 = v6 + a2;
    }

    if (v7 >= 0xD79435E50D7943)
    {
      v9 = 0x1AF286BCA1AF286;
    }

    else
    {
      v9 = v8;
    }

    v19 = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::Geometry::SceneQueryTypeDefinition>>(a1, v9);
    }

    v16 = 0;
    v17 = 152 * v6;
    v11 = 152 * ((152 * a2 - 152) / 0x98) + 152;
    bzero((152 * v6), v11);
    v18 = 152 * v6 + v11;
    v12 = *(a1 + 8);
    v13 = (152 * v6 + *a1 - v12);
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<Phase::Geometry::SceneQueryTypeDefinition>,Phase::Geometry::SceneQueryTypeDefinition*>(a1, *a1, v12, v13);
    v14 = *a1;
    *a1 = v13;
    v15 = *(a1 + 16);
    *(a1 + 8) = v18;
    *&v18 = v14;
    *(&v18 + 1) = v15;
    v16 = v14;
    v17 = v14;
    std::__split_buffer<Phase::Geometry::SceneQueryTypeDefinition>::~__split_buffer(&v16);
  }
}

void sub_23A402354(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<Phase::Geometry::SceneQueryTypeDefinition>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<Phase::Geometry::SceneQueryTypeDefinition>::__base_destruct_at_end[abi:ne200100](uint64_t result, uint64_t a2)
{
  v3 = result;
  for (i = *(result + 8); i != a2; result = std::allocator_traits<std::allocator<Phase::Geometry::SceneQueryTypeDefinition>>::destroy[abi:ne200100]<Phase::Geometry::SceneQueryTypeDefinition,void,0>(v3, i))
  {
    i -= 152;
  }

  *(v3 + 8) = a2;
  return result;
}

uint64_t *std::vector<std::function<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &)>>::__append(uint64_t *result, unint64_t a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (a2 <= (v4 - v5) >> 5)
  {
    if (a2)
    {
      v11 = 0;
      v12 = v5 + 32 * a2;
      v13 = (a2 + 0x7FFFFFFFFFFFFFFLL) & 0x7FFFFFFFFFFFFFFLL;
      v14 = vdupq_n_s64(v13);
      v15 = (v5 + 56);
      do
      {
        v16 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(vdupq_n_s64(v11), xmmword_23A554B70)));
        if (v16.i8[0])
        {
          *(v15 - 4) = 0;
        }

        if (v16.i8[4])
        {
          *v15 = 0;
        }

        v11 += 2;
        v15 += 8;
      }

      while (v13 - ((a2 + 0x7FFFFFFFFFFFFFFLL) & 1) + 2 != v11);
    }

    else
    {
      v12 = result[1];
    }

    result[1] = v12;
  }

  else
  {
    v6 = v5 - *result;
    v7 = a2 + (v6 >> 5);
    if (v7 >> 59)
    {
      std::vector<Phase::Geometry::SceneQueryTypeDefinition>::__throw_length_error[abi:ne200100]();
    }

    v8 = v6 >> 5;
    v9 = v4 - *result;
    if (v9 >> 4 > v7)
    {
      v7 = v9 >> 4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v10 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v38 = result;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::function<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &)>>>(result, v10);
    }

    v17 = 0;
    v18 = 32 * v8;
    v34 = 0;
    v35 = 32 * v8;
    v37 = 0;
    v19 = 32 * v8 + 32 * a2;
    v20 = (a2 + 0x7FFFFFFFFFFFFFFLL) & 0x7FFFFFFFFFFFFFFLL;
    v21 = v20 - ((a2 + 0x7FFFFFFFFFFFFFFLL) & 1) + 2;
    v22 = vdupq_n_s64(v20);
    v23 = (32 * v8 + 56);
    do
    {
      v24 = vmovn_s64(vcgeq_u64(v22, vorrq_s8(vdupq_n_s64(v17), xmmword_23A554B70)));
      if (v24.i8[0])
      {
        *(v23 - 4) = 0;
      }

      if (v24.i8[4])
      {
        *v23 = 0;
      }

      v17 += 2;
      v23 += 8;
    }

    while (v21 != v17);
    v36 = v18 + 32 * a2;
    v25 = *result;
    v26 = result[1];
    v27 = v18 + *result - v26;
    if (*result != v26)
    {
      v28 = (v25 + 24);
      v29 = v18 + *result - v26;
      while (1)
      {
        v30 = *v28;
        if (*v28)
        {
          if (v28 - 3 == v30)
          {
            *(v29 + 24) = v29;
            (*(**v28 + 24))(*v28, v29);
            goto LABEL_34;
          }

          *(v29 + 24) = v30;
          v31 = v28;
        }

        else
        {
          v31 = (v29 + 24);
        }

        *v31 = 0;
LABEL_34:
        v29 += 32;
        v32 = v28 + 1;
        v28 += 4;
        if (v32 == v26)
        {
          do
          {
            std::__function::__value_func<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &)>::~__value_func[abi:ne200100](v25);
            v25 += 32;
          }

          while (v25 != v26);
          v25 = *v3;
          v19 = v36;
          break;
        }
      }
    }

    *v3 = v27;
    v3[1] = v19;
    v33 = v3[2];
    v3[2] = v37;
    v36 = v25;
    v37 = v33;
    v34 = v25;
    v35 = v25;
    return std::__split_buffer<std::function<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &)>>::~__split_buffer(&v34);
  }

  return result;
}

uint64_t std::__split_buffer<std::function<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &)>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    std::__function::__value_func<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &)>::~__value_func[abi:ne200100](i - 32);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *std::vector<std::function<BOOL ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,int,int)>>::__append(uint64_t *result, unint64_t a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (a2 <= (v4 - v5) >> 5)
  {
    if (a2)
    {
      v11 = 0;
      v12 = v5 + 32 * a2;
      v13 = (a2 + 0x7FFFFFFFFFFFFFFLL) & 0x7FFFFFFFFFFFFFFLL;
      v14 = vdupq_n_s64(v13);
      v15 = (v5 + 56);
      do
      {
        v16 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(vdupq_n_s64(v11), xmmword_23A554B70)));
        if (v16.i8[0])
        {
          *(v15 - 4) = 0;
        }

        if (v16.i8[4])
        {
          *v15 = 0;
        }

        v11 += 2;
        v15 += 8;
      }

      while (v13 - ((a2 + 0x7FFFFFFFFFFFFFFLL) & 1) + 2 != v11);
    }

    else
    {
      v12 = result[1];
    }

    result[1] = v12;
  }

  else
  {
    v6 = v5 - *result;
    v7 = a2 + (v6 >> 5);
    if (v7 >> 59)
    {
      std::vector<Phase::Geometry::SceneQueryTypeDefinition>::__throw_length_error[abi:ne200100]();
    }

    v8 = v6 >> 5;
    v9 = v4 - *result;
    if (v9 >> 4 > v7)
    {
      v7 = v9 >> 4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v10 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v38 = result;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::function<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &)>>>(result, v10);
    }

    v17 = 0;
    v18 = 32 * v8;
    v34 = 0;
    v35 = 32 * v8;
    v37 = 0;
    v19 = 32 * v8 + 32 * a2;
    v20 = (a2 + 0x7FFFFFFFFFFFFFFLL) & 0x7FFFFFFFFFFFFFFLL;
    v21 = v20 - ((a2 + 0x7FFFFFFFFFFFFFFLL) & 1) + 2;
    v22 = vdupq_n_s64(v20);
    v23 = (32 * v8 + 56);
    do
    {
      v24 = vmovn_s64(vcgeq_u64(v22, vorrq_s8(vdupq_n_s64(v17), xmmword_23A554B70)));
      if (v24.i8[0])
      {
        *(v23 - 4) = 0;
      }

      if (v24.i8[4])
      {
        *v23 = 0;
      }

      v17 += 2;
      v23 += 8;
    }

    while (v21 != v17);
    v36 = v18 + 32 * a2;
    v25 = *result;
    v26 = result[1];
    v27 = v18 + *result - v26;
    if (*result != v26)
    {
      v28 = (v25 + 24);
      v29 = v18 + *result - v26;
      while (1)
      {
        v30 = *v28;
        if (*v28)
        {
          if (v28 - 3 == v30)
          {
            *(v29 + 24) = v29;
            (*(**v28 + 24))(*v28, v29);
            goto LABEL_34;
          }

          *(v29 + 24) = v30;
          v31 = v28;
        }

        else
        {
          v31 = (v29 + 24);
        }

        *v31 = 0;
LABEL_34:
        v29 += 32;
        v32 = v28 + 1;
        v28 += 4;
        if (v32 == v26)
        {
          do
          {
            std::__function::__value_func<BOOL ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,int,int)>::~__value_func[abi:ne200100](v25);
            v25 += 32;
          }

          while (v25 != v26);
          v25 = *v3;
          v19 = v36;
          break;
        }
      }
    }

    *v3 = v27;
    v3[1] = v19;
    v33 = v3[2];
    v3[2] = v37;
    v36 = v25;
    v37 = v33;
    v34 = v25;
    v35 = v25;
    return std::__split_buffer<std::function<BOOL ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,int,int)>>::~__split_buffer(&v34);
  }

  return result;
}

uint64_t std::__split_buffer<std::function<BOOL ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,int,int)>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    std::__function::__value_func<BOOL ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,int,int)>::~__value_func[abi:ne200100](i - 32);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQueryFunctionTable const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,std::vector<std::function<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &)>> const&,BOOL)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *std::__function::__value_func<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &)>::swap[abi:ne200100](void *result, void *a2)
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

void sub_23A402C6C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *std::__function::__value_func<BOOL ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,int,int)>::swap[abi:ne200100](void *result, void *a2)
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

void sub_23A402ED0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *std::__function::__value_func<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,std::vector<std::function<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &)>> const&,BOOL)>::swap[abi:ne200100](void *result, void *a2)
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

void sub_23A403134(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *std::__function::__value_func<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQueryFunctionTable const&)>::swap[abi:ne200100](void *result, void *a2)
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

void sub_23A403398(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void Phase::Geometry::RunSceneQueriesOnRange(Phase::Logger *a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5)
{
  v30 = *MEMORY[0x277D85DE8];
  Instance = Phase::Logger::GetInstance(a1);
  v11 = os_signpost_id_generate(**(Instance + 432));
  v12 = Phase::Logger::GetInstance(v11);
  if (*(v12 + 440) == 1)
  {
    v13 = Phase::Logger::GetInstance(v12);
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v14 = **(v13 + 432);
      if (os_signpost_enabled(v14))
      {
        *buf = 67109632;
        v25 = a5 - a4;
        v26 = 1024;
        v27 = a4;
        v28 = 1024;
        v29 = a5;
        _os_signpost_emit_with_name_impl(&dword_23A302000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v11, "Phase_Scene_Queries_Range", "%d rays, Run Scene Queries on Range: %d -> %d", buf, 0x14u);
      }
    }
  }

  atomic_store(2u, a2);
  v15 = *(*(a3 + 120) + 120);
  if (v15)
  {
    v23 = a5;
    *buf = a4;
    v15 = (*(*v15 + 48))(v15, a1, a2, buf, &v23);
    v16 = v15 ^ 1;
  }

  else
  {
    v16 = 1;
  }

  if (a5 > a4 && (*(a1 + 254) & *(a2 + 72)) != 0)
  {
    do
    {
      if (*(a2 + 96) <= a4)
      {
        __assert_rtn("Get", "GeoSceneQuery.hpp", 115, "inIndex < inBatch.mCount");
      }

      v17 = *(a2 + 88);
      v18 = *(a2 + 100);
      v19 = *(a3 + 88);
      buf[0] = v16;
      if (!v19)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      v15 = (*(*v19 + 48))(v19, a1, a2, v17 + v18 * a4++, a3 + 96, buf);
    }

    while (a5 != a4);
  }

  v20 = Phase::Logger::GetInstance(v15);
  if (*(v20 + 440) == 1)
  {
    v21 = Phase::Logger::GetInstance(v20);
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v22 = **(v21 + 432);
      if (os_signpost_enabled(v22))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_23A302000, v22, OS_SIGNPOST_INTERVAL_END, v11, "Phase_Scene_Queries_Range", &unk_23A5C28A2, buf, 2u);
      }
    }
  }
}

void Phase::Geometry::SceneState::Update(std::__shared_weak_count **this)
{
  v81 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = (*this)[119].__vftable;
  if ((*this)[112].__vftable == -1)
  {
    v2[112].__vftable = v3;
  }

  if (v2[112].__shared_owners_ == -1)
  {
    v2[112].__shared_owners_ = v3;
  }

  if (v2[112].__shared_weak_owners_ == -1)
  {
    v2[112].__shared_weak_owners_ = v3;
  }

  v4 = this[26];
  this[25] = 0;
  this[26] = 0;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  *(this + 54) = 0;
  v72 = 0;
  v71 = 0u;
  v73 = 0xFFFFFFFFLL;
  std::__shared_mutex_base::__shared_mutex_base(&v74);
  v5 = *this;
  shared_weak_owners = (*this)[67].__shared_weak_owners_;
  Phase::details::SharedSlotMap<Phase::Geometry::Shape,Phase::Handle64>::Resize(&v71, v5[60].__vftable);
  v77 = 0;
  v76 = 0u;
  v78 = 0xFFFFFFFFLL;
  std::__shared_mutex_base::__shared_mutex_base(&v79);
  v6 = *this;
  v80 = (*this)[78].__vftable;
  Phase::details::SharedSlotMap<Phase::Geometry::Entity,Phase::Handle64>::Resize(&v76, v6[70].__shared_owners_);
  std::vector<Phase::Geometry::MpsCpuSceneDescriptor>::clear[abi:ne200100](this + 33);
  this[31] = 0;
  v61 = this + 31;
  this[32] = 0;
  v7 = *this;
  v64 = this;
  std::vector<Phase::Geometry::MpsCpuSceneDescriptor>::clear[abi:ne200100](this + 33);
  v66 = 0;
  v67 = 0;
  v68 = 0;
  v8 = v7[78].__shared_weak_owners_;
  if (LODWORD(v7[70].__shared_owners_) <= v8 || (p_shared_weak_owners = &v7[69].__shared_weak_owners_, v10 = (v7[69].__shared_weak_owners_ + 24 * v8), *(v10 + 5) != HIDWORD(v8)) || !*v10)
  {
    __assert_rtn("UpdateAndCopyScene", "GeoSceneState.cpp", 36, "nullptr != pRootPtr && nullptr != pRootPtr->get()");
  }

  v69 = *v10;
  LOBYTE(v70) = 0;
  std::vector<std::tuple<Phase::Geometry::Entity const&,unsigned long,BOOL>>::push_back[abi:ne200100](&v66, v69.i8);
  Phase::SharedSlotMapState<Phase::Geometry::Entity,Phase::Handle64>::ForceSet(v76, v77, v7[78].__shared_weak_owners_, *v10, v10[1]);
  v7[111].__shared_weak_owners_ = 0;
  v14 = v7[70].__vftable;
  if (v14)
  {
    v15 = v14->~__shared_weak_count_0 < 1;
  }

  else
  {
    v15 = 1;
  }

  v16 = v66;
  v17 = v67;
  if (v66 != v67)
  {
    v62 = v15;
    do
    {
      v19 = *(v17 - 3);
      v18 = *(v17 - 2);
      v20 = v19[12];
      if (v18 >= (*&v19[13] - *&v20) >> 3)
      {
        v17 -= 24;
        v67 = v17;
      }

      else
      {
        v21 = *(v17 - 8);
        v22 = *(*&v20 + 8 * v18);
        *(v17 - 2) = v18 + 1;
        if (LODWORD(v7[70].__shared_owners_) > v22)
        {
          v23 = *p_shared_weak_owners + 24 * v22;
          if (*(v23 + 20) == HIDWORD(v22))
          {
            v24 = *v23;
            v65 = *(*v23 + 80) | v21;
            if (v65)
            {
              if ((v62 & 1) == 0 || (v25 = *(v23 + 8)) != 0 && *(v25 + 8) >= 1)
              {
                UniqueSlot = Phase::details::SharedSlotMap<Phase::Geometry::Entity,Phase::Handle64>::GetUniqueSlot(p_shared_weak_owners, v22);
                v23 = UniqueSlot;
                if (UniqueSlot)
                {
                  v27 = *(UniqueSlot + 8);
                  if (v27)
                  {
                    if (*(v27 + 8) >= 1)
                    {
                      if (!v7[78].__vftable)
                      {
                        std::terminate();
                      }

                      Phase::Geometry::EntityFactory::Create(*UniqueSlot, &v69);
                      v11 = v69;
                      v69 = 0uLL;
                      v28 = *(v23 + 8);
                      *v23 = v11;
                      if (v28)
                      {
                        std::__shared_weak_count::__release_shared[abi:ne200100](v28);
                        if (v69.i64[1])
                        {
                          std::__shared_weak_count::__release_shared[abi:ne200100](v69.i64[1]);
                        }
                      }
                    }
                  }
                }

                v24 = *v23;
              }

              Phase::operator*<float>(v19 + 6, v24 + 16, &v69, v11, v12, v13);
              v29 = v70;
              *(v24 + 48) = v69;
              *(v24 + 64) = v29;
              *(v24 + 80) = 0;
              v30 = *v23;
              v62 = 1;
            }

            else
            {
              v30 = *v23;
            }

            Phase::SharedSlotMapState<Phase::Geometry::Entity,Phase::Handle64>::ForceSet(v76, v77, v22, v30, *(v23 + 8));
            v31 = *(v24 + 120);
            v32 = *(v24 + 128);
            while (v31 != v32)
            {
              v33 = *v31;
              if (LODWORD(v7[60].__vftable) > *v31)
              {
                v34 = *v31;
                v35 = v7[59].__shared_owners_ + 24 * v33;
                v36 = *(v35 + 20);
                if (v36 == HIDWORD(v33))
                {
                  v37 = *v35;
                  if (*v35)
                  {
                    if (v72 > v33)
                    {
                      v38 = *(v35 + 8);
                      v39 = v71;
                      if (v38)
                      {
                        atomic_fetch_add_explicit((v38 + 8), 1uLL, memory_order_relaxed);
                      }

                      v40 = v39 + 24 * v34;
                      v41 = *(v40 + 8);
                      *v40 = v37;
                      *(v40 + 8) = v38;
                      if (v41)
                      {
                        std::__shared_weak_count::__release_shared[abi:ne200100](v41);
                      }

                      *(v40 + 20) = v36;
                      v37 = *v35;
                    }

                    if (*v24 == 4)
                    {
                      v42 = *(v37 + 16) & *(v24 + 144);
                      if (*v37 == 3)
                      {
                        v63 = v63 & 0xFFFFFFFFFFFFFF00 | *(v24 + 156);
                        v43 = Phase::Geometry::GetOrAddMpsCpuSceneDescriptor(v64 + 33, *(v37 + 16) & *(v24 + 144), v63);
                        v44 = v43;
                        *(v43 + 40) |= v65;
                        *(v64 + 32) |= v42;
                        v45 = *v23;
                        v47 = *(v43 + 8);
                        v46 = *(v43 + 16);
                        if (v47 >= v46)
                        {
                          v49 = *v43;
                          v50 = v47 - *v44;
                          v51 = 0x6DB6DB6DB6DB6DB7 * (v50 >> 3) + 1;
                          if (v51 > 0x492492492492492)
                          {
                            std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
                          }

                          v52 = 0x6DB6DB6DB6DB6DB7 * ((v46 - v49) >> 3);
                          if (2 * v52 > v51)
                          {
                            v51 = 2 * v52;
                          }

                          if (v52 >= 0x249249249249249)
                          {
                            v53 = 0x492492492492492;
                          }

                          else
                          {
                            v53 = v51;
                          }

                          if (v53)
                          {
                            std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<Phase::Affine<float>,Phase::Handle64,Phase::Handle64,Phase::Geometry::Shape *>>>(v44, v53);
                          }

                          v54 = 8 * (v50 >> 3);
                          *v54 = v45[12];
                          *(v54 + 4) = v45[13];
                          *(v54 + 8) = v45[14];
                          *(v54 + 12) = v45[15];
                          *(v54 + 16) = v45[16];
                          *(v54 + 20) = v45[17];
                          *(v54 + 24) = v45[18];
                          v11.i32[0] = v45[19];
                          *(v54 + 28) = v11.i32[0];
                          *(v54 + 32) = v22;
                          *(v54 + 40) = *v31;
                          *(v54 + 48) = v37;
                          v55 = v54 - v50;
                          if (v49 != v47)
                          {
                            v56 = v55;
                            do
                            {
                              *v56 = *v49;
                              *(v56 + 4) = *(v49 + 1);
                              *(v56 + 8) = *(v49 + 2);
                              *(v56 + 12) = *(v49 + 3);
                              *(v56 + 16) = *(v49 + 4);
                              *(v56 + 20) = *(v49 + 5);
                              *(v56 + 24) = *(v49 + 6);
                              *(v56 + 28) = *(v49 + 7);
                              *(v56 + 32) = *(v49 + 4);
                              v11 = *(v49 + 40);
                              *(v56 + 40) = v11;
                              v49 += 56;
                              v56 += 56;
                            }

                            while (v49 != v47);
                            v49 = *v44;
                          }

                          v48 = v54 + 56;
                          *v44 = v55;
                          v44[1] = (v54 + 56);
                          v44[2] = 0;
                          if (v49)
                          {
                            operator delete(v49);
                          }
                        }

                        else
                        {
                          *v47 = v45[12];
                          *(v47 + 1) = v45[13];
                          *(v47 + 2) = v45[14];
                          *(v47 + 3) = v45[15];
                          *(v47 + 4) = v45[16];
                          *(v47 + 5) = v45[17];
                          *(v47 + 6) = v45[18];
                          v11.i32[0] = v45[19];
                          *(v47 + 7) = v11.i32[0];
                          *(v47 + 4) = v22;
                          *(v47 + 5) = *v31;
                          *(v47 + 6) = v37;
                          v48 = (v47 + 56);
                        }

                        v44[1] = v48;
                      }

                      else
                      {
                        *v61 |= v42;
                      }
                    }

                    v7[111].__shared_weak_owners_ += *(v37 + 160);
                  }
                }
              }

              ++v31;
            }

            if (*(v24 + 104) != *(v24 + 96))
            {
              v69 = v24;
              LOBYTE(v70) = v65;
              std::vector<std::tuple<Phase::Geometry::Entity const&,unsigned long,BOOL>>::push_back[abi:ne200100](&v66, v69.i8);
            }

            p_shared_weak_owners = &v7[69].__shared_weak_owners_;
          }
        }

        v16 = v66;
        v17 = v67;
      }
    }

    while (v16 != v17);
  }

  if (v16)
  {
    v67 = v16;
    operator delete(v16);
  }

  v57 = v76;
  if (*(&v76 + 1))
  {
    atomic_fetch_add_explicit((*(&v76 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v58 = *(v64 + 26);
  *(v64 + 200) = v57;
  if (v58)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v58);
  }

  *(v64 + 54) = v77;
  std::condition_variable::~condition_variable(&v79.__gate2_);
  std::condition_variable::~condition_variable(&v79.__gate1_);
  std::mutex::~mutex(&v79.__mut_);
  if (*(&v76 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v76 + 1));
  }

  Phase::Geometry::MpsCpuSceneBuilder::Update(v64 + 32, v64 + 33, v64 + 1, &v71, v64 + 224);
  std::vector<Phase::Geometry::MpsCpuSceneDescriptor>::clear[abi:ne200100](v64 + 33);
  if (*(v64 + 11))
  {
    Phase::details::SharedSlotMap<Phase::Geometry::Shape,Phase::Handle64>::MergeFrom(&v71, v64 + 160);
  }

  v59 = v71;
  if (*(&v71 + 1))
  {
    atomic_fetch_add_explicit((*(&v71 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v60 = *(v64 + 29);
  *(v64 + 14) = v59;
  if (v60)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v60);
  }

  *(v64 + 60) = v72;
  std::condition_variable::~condition_variable(&v74.__gate2_);
  std::condition_variable::~condition_variable(&v74.__gate1_);
  std::mutex::~mutex(&v74.__mut_);
  if (*(&v71 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v71 + 1));
  }
}

void sub_23A403E58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50)
{
  if (__p)
  {
    operator delete(__p);
  }

  Phase::SharedSlotMap<Phase::Geometry::Shape,Phase::Handle64,Phase::Geometry::ShapeFactory>::~SharedSlotMap(&a49);
  Phase::SharedSlotMap<Phase::Geometry::Shape,Phase::Handle64,Phase::Geometry::ShapeFactory>::~SharedSlotMap(&a23);
  _Unwind_Resume(a1);
}

void Phase::details::SharedSlotMap<Phase::Geometry::Shape,Phase::Handle64>::Resize(uint64_t *a1, unsigned int a2)
{
  v2 = *(a1 + 4);
  if (a2 > v2)
  {
    Phase::details::SharedSlotMap<Phase::Geometry::Shape,Phase::Handle64>::AllocSlots(a2, &v19);
    if (v2)
    {
      v5 = 0;
      do
      {
        v6 = *a1;
        v7 = (*a1 + v5);
        v8 = v19;
        v10 = *v7;
        v9 = v7[1];
        if (v9)
        {
          atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
        }

        v11 = (v8 + v5);
        v12 = *(v8 + v5 + 8);
        *v11 = v10;
        v11[1] = v9;
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        }

        v11[2] = *(v6 + v5 + 16);
        v5 += 24;
      }

      while (24 * v2 != v5);
      v13 = v2;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v2;
    v15 = 24 * v13;
    do
    {
      v16 = (v19 + v15);
      v17 = *(v19 + v15 + 8);
      *v16 = 0;
      v16[1] = 0;
      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v17);
      }

      v16[2] = 0x1FFFFFFFFLL;
      v15 += 24;
      --v14;
    }

    while (v14);
    std::__shared_mutex_base::lock((a1 + 4));
    v18 = *a1;
    *a1 = v19;
    v19 = v18;
    std::__shared_mutex_base::unlock((a1 + 4));
    *(a1 + 4) = a2;
    if (*(&v19 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v19 + 1));
    }
  }
}

void sub_23A404008(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<Phase::Geometry::MpsCpuSceneDescriptor>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 48);
      v4 -= 48;
      v5 = v6;
      if (v6)
      {
        *(v2 - 40) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

void Phase::details::SharedSlotMap<Phase::Geometry::Entity,Phase::Handle64>::Resize(uint64_t *a1, unsigned int a2)
{
  v2 = *(a1 + 4);
  if (a2 > v2)
  {
    Phase::details::SharedSlotMap<Phase::Geometry::Entity,Phase::Handle64>::AllocSlots(a2, &v19);
    if (v2)
    {
      v5 = 0;
      do
      {
        v6 = *a1;
        v7 = (*a1 + v5);
        v8 = v19;
        v10 = *v7;
        v9 = v7[1];
        if (v9)
        {
          atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
        }

        v11 = (v8 + v5);
        v12 = *(v8 + v5 + 8);
        *v11 = v10;
        v11[1] = v9;
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        }

        v11[2] = *(v6 + v5 + 16);
        v5 += 24;
      }

      while (24 * v2 != v5);
      v13 = v2;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v2;
    v15 = 24 * v13;
    do
    {
      v16 = (v19 + v15);
      v17 = *(v19 + v15 + 8);
      *v16 = 0;
      v16[1] = 0;
      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v17);
      }

      v16[2] = 0x1FFFFFFFFLL;
      v15 += 24;
      --v14;
    }

    while (v14);
    std::__shared_mutex_base::lock((a1 + 4));
    v18 = *a1;
    *a1 = v19;
    v19 = v18;
    std::__shared_mutex_base::unlock((a1 + 4));
    *(a1 + 4) = a2;
    if (*(&v19 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v19 + 1));
    }
  }
}