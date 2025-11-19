uint64_t AG::vector<std::unique_ptr<char const,util::free_deleter>,0ul,unsigned long>::~vector(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  if (v2)
  {
    for (i = 0; i < v2; ++i)
    {
      v5 = v3[i];
      v3[i] = 0;
      if (v5)
      {
        free(v5);
        v2 = *(a1 + 8);
      }
    }

    v3 = *a1;
  }

  if (v3)
  {
    free(v3);
  }

  return a1;
}

void *AG::vector<std::unique_ptr<char const,util::free_deleter>,0ul,unsigned long>::reserve_slow(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) + (*(a1 + 16) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(a1 + 16) + (*(a1 + 16) >> 1);
  }

  result = AG::details::realloc_vector<unsigned long,8ul>(*a1, (a1 + 16), v3);
  *a1 = result;
  return result;
}

void *AG::details::realloc_vector<unsigned long,8ul>(void *a1, size_t *a2, uint64_t a3)
{
  v4 = a1;
  if (a3)
  {
    v5 = malloc_good_size(8 * a3);
    v6 = v5 >> 3;
    if (v5 >> 3 != *a2)
    {
      v7 = malloc_type_realloc(v4, v5, 0x15CB70FBuLL);
      if (!v7)
      {
        AG::precondition_failure("allocation failure", v8);
      }

      v4 = v7;
      *a2 = v6;
    }
  }

  else
  {
    *a2 = 0;
    free(a1);
    return 0;
  }

  return v4;
}

void AG::data::table::print(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 4);
  fprintf(*MEMORY[0x1E69E9848], "data::table %p:\n  %.2fKB allocated, %.2fKB used, %.2fKB reusable.\n", this, vcvtd_n_f64_u32(this[5]._os_unfair_lock_opaque - 512, 0xAuLL), vcvtd_n_f64_u32(this[7]._os_unfair_lock_opaque << 9, 0xAuLL), vcvtd_n_f64_u32(this[8]._os_unfair_lock_opaque, 0xAuLL));

  os_unfair_lock_unlock(this + 4);
}

uint64_t AG::data::zone::print(const void ***this)
{
  v2 = *(this + 4);
  v3 = 0;
  if (v2)
  {
    v4 = 0uLL;
    do
    {
      v5 = AG::data::_shared_table_bytes + v2;
      ++v3;
      v4 = vaddw_u32(v4, *(v5 + 12));
      v2 = *(v5 + 8);
    }

    while (v2);
    v6 = vmulq_f64(vcvtq_f64_u64(v4), vdupq_n_s64(0x3F50000000000000uLL));
  }

  else
  {
    v6 = 0uLL;
  }

  v7 = *(this + 2);
  if (v7)
  {
    v18 = v6;
    v8 = 0;
    v9 = *this;
    v10 = 8 * v7;
    do
    {
      v11 = *v9++;
      v8 += malloc_size(v11);
      v10 -= 8;
    }

    while (v10);
    v12 = vcvtd_n_f64_u64(v8, 0xAuLL);
    v6 = v18;
  }

  else
  {
    v12 = 0.0;
  }

  v13 = *(this + 5);
  if (v13)
  {
    v14 = 0;
    v15 = 0;
    do
    {
      ++v15;
      v16 = AG::data::_shared_table_bytes + v13;
      v13 = *(AG::data::_shared_table_bytes + v13);
      v14 += *(v16 + 4);
    }

    while (v13);
  }

  else
  {
    v15 = 0;
    v14 = 0;
  }

  return fprintf(*MEMORY[0x1E69E9848], "%-16p %6lu %8.2f %8.2f    %6lu %6lu     %6lu %8.2f\n", this, v3, v6.f64[0], v6.f64[1], v15, v14, *(this + 2), v12);
}

uint64_t AG::data::table::malloc_zone_enumerator(AG::data::table *this, uint64_t a2, void *a3, unsigned int a4, uint64_t (*a5)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4), void (*a6)(AG::data::table *, uint64_t, uint64_t, unint64_t *, uint64_t), void (*a7)(unsigned int, void *, unsigned int, vm_range_t *, unsigned int))
{
  v7 = a3;
  v76[1] = *MEMORY[0x1E69E9840];
  if (a5)
  {
    v10 = a5;
  }

  else
  {
    v10 = AG::data::table::malloc_zone_enumerator(unsigned int,void *,unsigned int,unsigned long,int (*)(unsigned int,unsigned long,unsigned long,void **),void (*)(unsigned int,void *,unsigned int,vm_range_t *,unsigned int))::$_1::__invoke;
  }

  v62[1] = v10;
  v62[0] = this;
  v61[0] = AG::data::table::malloc_zone_enumerator(unsigned int,void *,unsigned int,unsigned long,int (*)(unsigned int,unsigned long,unsigned long,void **),void (*)(unsigned int,void *,unsigned int,vm_range_t *,unsigned int))::$_2::__invoke;
  v61[1] = v62;
  util::MemoryReader::read_bytes(v61, __dst);
  if ((v7 & 0x800) != 0)
  {
    util::MemoryReader::read_bytes(v61, __dst);
    v11 = __dst[0];
    util::MemoryReader::read_bytes(v61, __dst);
    v63 = v11;
    v64 = LODWORD(__dst[0]);
    a6(this, a2, 2049, &v63, 1);
    if ((v7 & 1) == 0)
    {
      util::MemoryReader::read_bytes(v61, &v74);
      v72 = 0;
      v73 = 0x800000000;
      if (v75)
      {
        v12 = 0;
        for (i = 0; i < v75; ++i)
        {
          util::MemoryReader::read_bytes(v61, v66);
          v14 = *&v66[0];
          v15 = DWORD2(v66[0]);
          v16 = v73;
          v17 = v73 + 1;
          if (HIDWORD(v73) < (v73 + 1))
          {
            AG::vector<vm_range_t,8ul,unsigned int>::reserve_slow(__dst, v73 + 1);
            v16 = v73;
            v17 = v73 + 1;
          }

          v18 = v72;
          if (v72)
          {
            v19 = v72;
          }

          else
          {
            v19 = __dst;
          }

          v20 = &v19[16 * v16];
          *v20 = v14;
          *(v20 + 1) = v15;
          LODWORD(v73) = v17;
          v12 += 16;
        }

        if (v17)
        {
          (a6)(this, a2, 2048);
          v18 = v72;
        }

        if (v18)
        {
          free(v18);
        }
      }
    }
  }

  result = 0;
  if ((v7 & 3) != 0 && (v7 & 0x100) != 0)
  {
    util::MemoryReader::read_bytes(v61, __dst);
    v22 = __dst[0];
    util::MemoryReader::read_bytes(v61, __dst);
    v23 = LODWORD(__dst[0]);
    util::MemoryReader::read_bytes(v61, &v74);
    v24 = 0uLL;
    memset(v66, 0, sizeof(v66));
    v67 = 1065353216;
    __dst[0] = v61;
    __dst[1] = v22;
    __dst[2] = v23 + v22;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    if (v75)
    {
      for (j = 0; j < v75; ++j)
      {
        util::MemoryReader::read_bytes(v61, &v63);
        v26 = v63;
        if (v63)
        {
          v27 = 0;
          v28 = (j << 15) | 0x200;
          do
          {
            if (v26)
            {
              util::MemoryReader::read_bytes(v61, &v63);
              v29 = v65;
              v30 = DWORD2(v69);
              if (HIDWORD(v69) < DWORD2(v69) + 1)
              {
                AG::vector<std::pair<unsigned int,BOOL>,0ul,unsigned int>::reserve_slow(&v69, DWORD2(v69) + 1);
                v30 = DWORD2(v69);
              }

              v31 = (v69 + 8 * v30);
              *v31 = (v28 + (v27 << 9)) | 0x18;
              v31[1] = v29 - 24;
              ++DWORD2(v69);
              v76[0] = v63;
              std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long>(v66, v76);
              if (v32)
              {
                util::MemoryReader::read_bytes(v61, v76);
                v33 = v76[0];
                if (LODWORD(v76[0]))
                {
                  do
                  {
                    util::MemoryReader::read_bytes(v61, v76);
                    v34 = v76[0];
                    v35 = DWORD2(v70);
                    if (HIDWORD(v70) < DWORD2(v70) + 1)
                    {
                      AG::vector<std::pair<unsigned char *,unsigned int>,0ul,unsigned int>::reserve_slow(&v70, DWORD2(v70) + 1);
                      v35 = DWORD2(v70);
                    }

                    v36 = v70 + 16 * v35;
                    *v36 = v33;
                    *(v36 + 4) = (v34 >> 31) & 0xFFFFFFFE;
                    *(v36 + 8) = 0;
                    ++DWORD2(v70);
                    v33 = v34;
                  }

                  while (v34);
                }
              }
            }

            ++v27;
            v46 = v26 >= 2;
            v26 >>= 1;
          }

          while (v46);
        }
      }

      v37 = v70;
      v38 = (v70 + 16 * DWORD2(v70));
      if (DWORD2(v70))
      {
        v39 = 126 - 2 * __clz(DWORD2(v70));
LABEL_38:
        if (DWORD2(v69))
        {
          v40 = v69;
          v41 = v70;
          v59 = v69 + 8 * DWORD2(v69);
          do
          {
            v42 = *v40;
            v43 = v22 + *v40;
            for (k = v70 + 16 * DWORD2(v70); v41 != k; v41 += 4)
            {
              v45 = *v41;
              v46 = v42 == v45 || v45 + v22 >= v43;
              if (v46)
              {
                break;
              }
            }

            v47 = v43 + HIDWORD(v42);
            if (v41 != k)
            {
              do
              {
                v48 = *v41 + v22;
                if (v48 >= v47)
                {
                  break;
                }

                v49 = v41[1];
                v50 = *(v41 + 1);
                if (v48 > v43 && (v48 - v43) >= 8)
                {
                  v63 = v43;
                  v64 = v48 - v43;
                  a6(this, a2, 259, &v63, 1);
                  range_recorder_swift_type = 0;
                }

                if ((v49 & 1) != 0 && (v50 || v49 >= 0x10))
                {
                  v63 = v48;
                  v64 = v49 >> 1;
                  if (v50)
                  {
                    range_recorder_swift_type = v50;
                    v51 = 1283;
                  }

                  else
                  {
                    v51 = 259;
                  }

                  a6(this, a2, v51, &v63, 1);
                  range_recorder_swift_type = 0;
                }

                v41 += 4;
                v43 = v48 + (v49 >> 1);
              }

              while (v41 != (v70 + 16 * DWORD2(v70)));
            }

            if ((v47 - v43) >= 8)
            {
              v63 = v43;
              v64 = v47 - v43;
              a6(this, a2, 259, &v63, 1);
              range_recorder_swift_type = 0;
            }

            ++v40;
          }

          while (v40 != v59);
        }

        if ((v7 & 0x200) != 0 && DWORD2(v71))
        {
          v52 = v71;
          v53 = v71 + 24 * DWORD2(v71);
          do
          {
            v54 = v52[2];
            v55 = v52[1] - *v52;
            if (v54)
            {
              v56 = 0;
            }

            else
            {
              v56 = v55 < 8;
            }

            if (!v56)
            {
              v63 = *v52;
              v64 = v55;
              if (v54)
              {
                range_recorder_swift_type = v54;
                v57 = 1795;
              }

              else
              {
                v57 = 771;
              }

              a6(this, a2, v57, &v63, 1);
              range_recorder_swift_type = 0;
            }

            v52 += 3;
          }

          while (v52 != v53);
        }

        if (v71)
        {
          free(v71);
        }

        if (v70)
        {
          free(v70);
        }

        if (v69)
        {
          free(v69);
        }

        std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::~__hash_table(v66);
        result = 0;
        goto LABEL_81;
      }
    }

    else
    {
      v38 = 0;
      v37 = 0;
    }

    v39 = 0;
    goto LABEL_38;
  }

LABEL_81:
  v58 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B4925D24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41)
{
  if (a41)
  {
    free(a41);
  }

  if (a2 == 1)
  {
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1B4925CE8);
  }

  _Unwind_Resume(exception_object);
}

util::MemoryReader **AG::data::anonymous namespace::EnumeratorRegions::callback(util::MemoryReader **a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
}

void AG::data::anonymous namespace::EnumeratorRegions::~EnumeratorRegions(AG::data::_anonymous_namespace_::EnumeratorRegions *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    free(v2);
  }

  v3 = *(this + 5);
  if (v3)
  {
    free(v3);
  }

  v4 = *(this + 3);
  if (v4)
  {
    free(v4);
  }
}

BOOL AG::data::table::malloc_zone_enumerator(unsigned int,void *,unsigned int,unsigned long,int (*)(unsigned int,unsigned long,unsigned long,void **),void (*)(unsigned int,void *,unsigned int,vm_range_t *,unsigned int))::$_2::__invoke(unsigned int *a1, void *a2, uint64_t a3, size_t a4)
{
  __src = 0;
  v6 = (*(a1 + 1))(*a1, a3, a4, &__src);
  if (!v6)
  {
    memcpy(a2, __src, a4);
  }

  return v6 == 0;
}

util::MemoryReader **AG::data::anonymous namespace::EnumeratorRegions::push_back(util::MemoryReader **result, unint64_t a2, unint64_t a3)
{
  v18[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v5 = result;
    util::MemoryReader::read_bytes(*result, v18);
    result = util::MemoryReader::read_bytes(*v5, v18);
    if (v18[0])
    {
      v6 = v5[1];
      if (a3 >= v6 && v5[2] >= a3)
      {
        v11 = a3 - v6;
        v12 = (2 * LODWORD(v18[0])) | 1;
        v13 = *(v5 + 12);
        if (*(v5 + 13) < v13 + 1)
        {
          v17 = (2 * LODWORD(v18[0])) | 1;
          result = AG::vector<std::pair<unsigned char *,unsigned int>,0ul,unsigned int>::reserve_slow((v5 + 5), v13 + 1);
          v12 = v17;
          v13 = *(v5 + 12);
        }

        v14 = v5[5] + 16 * v13;
        *v14 = v11;
        *(v14 + 4) = v12;
        *(v14 + 8) = a2;
        ++*(v5 + 12);
      }

      else
      {
        v7 = v18[0] + a3;
        v8 = *(v5 + 16);
        v9 = v8 + 1;
        if (*(v5 + 17) < v8 + 1)
        {
          v16 = v18[0] + a3;
          v7 = v16;
          v8 = *(v5 + 16);
          v9 = v8 + 1;
        }

        v10 = (v5[7] + 24 * v8);
        *v10 = a3;
        v10[1] = v7;
        v10[2] = a2;
        *(v5 + 16) = v9;
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return result;
}

void *AG::vector<AG::data::anonymous namespace::EnumeratorRegions::ExternalValue,0ul,unsigned int>::reserve_slow(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 12) + (*(a1 + 12) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(a1 + 12) + (*(a1 + 12) >> 1);
  }

  result = AG::details::realloc_vector<unsigned int,24ul>(*a1, (a1 + 12), v3);
  *a1 = result;
  return result;
}

void *AG::details::realloc_vector<unsigned int,24ul>(void *a1, _DWORD *a2, unsigned int a3)
{
  v4 = a1;
  if (a3)
  {
    v5 = malloc_good_size(24 * a3);
    v6 = v5 / 0x18;
    if (*a2 != (v5 / 0x18))
    {
      v7 = malloc_type_realloc(v4, v5, 0x15CB70FBuLL);
      if (!v7)
      {
        AG::precondition_failure("allocation failure", v8);
      }

      v4 = v7;
      *a2 = v6;
    }
  }

  else
  {
    *a2 = 0;
    free(a1);
    return 0;
  }

  return v4;
}

void std::__introsort<std::_ClassicAlgPolicy,AG::data::table::malloc_zone_enumerator(unsigned int,void *,unsigned int,unsigned long,int (*)(unsigned int,unsigned long,unsigned long,void **),void (*)(unsigned int,void *,unsigned int,vm_range_t *,unsigned int))::$_0 &,AG::data::anonymous namespace::EnumeratorRegions::Value *,false>(uint64_t a1, __n128 *a2, uint64_t a3, char a4, __n128 a5)
{
  v151 = *MEMORY[0x1E69E9840];
LABEL_2:
  v9 = a2 - 1;
  v10 = a2 - 2;
  v11 = a2 - 3;
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = (a2 - v12) >> 4;
    if (v13 > 2)
    {
      break;
    }

    if (v13 < 2)
    {
      goto LABEL_194;
    }

    if (v13 == 2)
    {
      v58 = a2[-1].n128_u32[0];
      v57 = a2 - 1;
      if (v58 >= *v12)
      {
        goto LABEL_194;
      }

LABEL_108:
      v138 = *v12;
      *v12 = *v57;
      v63 = v138;
LABEL_109:
      *v57 = v63;
      goto LABEL_194;
    }

LABEL_10:
    if (v13 <= 23)
    {
      v68 = (v12 + 16);
      v70 = v12 == a2 || v68 == a2;
      if (a4)
      {
        if (!v70)
        {
          v71 = 0;
          v72 = v12;
          do
          {
            v73 = v68;
            v74 = *(v72 + 16);
            if (v74 < *v72)
            {
              v140 = *(v72 + 20);
              v148 = *(v72 + 28);
              v75 = v71;
              while (1)
              {
                *(v12 + v75 + 16) = *(v12 + v75);
                if (!v75)
                {
                  break;
                }

                v76 = *(v12 + v75 - 16);
                v75 -= 16;
                if (v74 >= v76)
                {
                  v77 = v12 + v75 + 16;
                  goto LABEL_128;
                }
              }

              v77 = v12;
LABEL_128:
              *v77 = v74;
              *(v77 + 12) = v148;
              *(v77 + 4) = v140;
            }

            v68 = v73 + 1;
            v71 += 16;
            v72 = v73;
          }

          while (&v73[1] != a2);
        }
      }

      else if (!v70)
      {
        do
        {
          v107 = v68;
          v108 = *(a1 + 16);
          if (v108 < *a1)
          {
            v144 = *(a1 + 20);
            v150 = *(a1 + 28);
            do
            {
              *v68 = v68[-1];
              v109 = v68[-2].n128_u32[0];
              --v68;
            }

            while (v108 < v109);
            v68->n128_u32[0] = v108;
            v68->n128_u32[3] = v150;
            *(v68->n128_u64 + 4) = v144;
          }

          v68 = (v107 + 16);
          a1 = v107;
        }

        while ((v107 + 16) != a2);
      }

      goto LABEL_194;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v78 = (v13 - 2) >> 1;
        v79 = v78;
        do
        {
          v80 = v79;
          if (v78 >= v79)
          {
            v81 = (2 * v79) | 1;
            v82 = (v12 + 16 * v81);
            if (2 * v80 + 2 >= v13)
            {
              v83 = *v82;
            }

            else
            {
              v83 = v82[4];
              v84 = *v82 >= v83;
              if (*v82 > v83)
              {
                v83 = *v82;
              }

              if (!v84)
              {
                v82 += 4;
                v81 = 2 * v80 + 2;
              }
            }

            v85 = (v12 + 16 * v80);
            v86 = *v85;
            if (v83 >= *v85)
            {
              v149 = v85[3];
              v141 = *(v85 + 1);
              do
              {
                v87 = v85;
                v85 = v82;
                *v87 = *v82;
                if (v78 < v81)
                {
                  break;
                }

                v88 = (2 * v81) | 1;
                v82 = (v12 + 16 * v88);
                v81 = 2 * v81 + 2;
                if (v81 >= v13)
                {
                  v89 = *v82;
                  v81 = v88;
                }

                else
                {
                  v89 = *v82;
                  v90 = v82[4];
                  if (*v82 <= v90)
                  {
                    v89 = v82[4];
                  }

                  if (*v82 >= v90)
                  {
                    v81 = v88;
                  }

                  else
                  {
                    v82 += 4;
                  }
                }
              }

              while (v89 >= v86);
              *v85 = v86;
              v85[3] = v149;
              *(v85 + 1) = v141;
            }
          }

          v79 = v80 - 1;
        }

        while (v80);
        do
        {
          v91 = 0;
          v142 = *v12;
          v92 = v12;
          do
          {
            v93 = &v92[v91];
            v94 = v93 + 1;
            v95 = (2 * v91) | 1;
            v91 = 2 * v91 + 2;
            if (v91 >= v13)
            {
              v91 = v95;
            }

            else
            {
              v97 = v93[2].n128_u32[0];
              v96 = v93 + 2;
              if (v96[-1].n128_u32[0] >= v97)
              {
                v91 = v95;
              }

              else
              {
                v94 = v96;
              }
            }

            *v92 = *v94;
            v92 = v94;
          }

          while (v91 <= ((v13 - 2) >> 1));
          if (v94 == --a2)
          {
            *v94 = v142;
          }

          else
          {
            *v94 = *a2;
            *a2 = v142;
            v98 = (&v94[1] - v12) >> 4;
            v99 = v98 < 2;
            v100 = v98 - 2;
            if (!v99)
            {
              v101 = v100 >> 1;
              v102 = (v12 + 16 * v101);
              v103 = v94->n128_u32[0];
              if (v102->n128_u32[0] < v94->n128_u32[0])
              {
                v118 = v94->n128_i32[3];
                v115 = *(v94->n128_u64 + 4);
                do
                {
                  v104 = v94;
                  v94 = v102;
                  *v104 = *v102;
                  if (!v101)
                  {
                    break;
                  }

                  v101 = (v101 - 1) >> 1;
                  v102 = (v12 + 16 * v101);
                }

                while (v102->n128_u32[0] < v103);
                v94->n128_u32[0] = v103;
                v94->n128_u32[3] = v118;
                *(v94->n128_u64 + 4) = v115;
              }
            }
          }

          v99 = v13-- <= 2;
        }

        while (!v99);
      }

      goto LABEL_194;
    }

    v14 = (v12 + 16 * (v13 >> 1));
    v15 = v14;
    v16 = v9->n128_u32[0];
    if (v13 >= 0x81)
    {
      v17 = v14->n128_u32[0];
      if (v14->n128_u32[0] >= *v12)
      {
        if (v16 < v17)
        {
          v121 = *v14;
          *v14 = *v9;
          *v9 = v121;
          if (v14->n128_u32[0] < *v12)
          {
            v122 = *v12;
            *v12 = *v14;
            *v14 = v122;
          }
        }
      }

      else
      {
        if (v16 < v17)
        {
          v119 = *v12;
          *v12 = *v9;
          goto LABEL_27;
        }

        v125 = *v12;
        *v12 = *v14;
        *v14 = v125;
        if (v9->n128_u32[0] < v14->n128_u32[0])
        {
          v119 = *v14;
          *v14 = *v9;
LABEL_27:
          *v9 = v119;
        }
      }

      v19 = (v12 + 16);
      v20 = v14 - 1;
      v21 = v14[-1].n128_u32[0];
      v22 = v10->n128_u32[0];
      if (v21 >= *(v12 + 16))
      {
        if (v22 < v21)
        {
          v126 = *v20;
          *v20 = *v10;
          *v10 = v126;
          if (v20->n128_u32[0] < v19->n128_u32[0])
          {
            v24 = *v19;
            *v19 = *v20;
            *v20 = v24;
          }
        }
      }

      else
      {
        if (v22 < v21)
        {
          v23 = *v19;
          *v19 = *v10;
          goto LABEL_39;
        }

        v25 = *v19;
        *v19 = *v20;
        *v20 = v25;
        if (v10->n128_u32[0] < v20->n128_u32[0])
        {
          v128 = *v20;
          *v20 = *v10;
          v23 = v128;
LABEL_39:
          *v10 = v23;
        }
      }

      v26 = (v12 + 32);
      v29 = v14[1].n128_u32[0];
      v27 = v14 + 1;
      v28 = v29;
      v30 = v11->n128_u32[0];
      if (v29 >= *(v12 + 32))
      {
        if (v30 < v28)
        {
          v129 = *v27;
          *v27 = *v11;
          *v11 = v129;
          if (v27->n128_u32[0] < v26->n128_u32[0])
          {
            v32 = *v26;
            *v26 = *v27;
            *v27 = v32;
          }
        }
      }

      else
      {
        if (v30 < v28)
        {
          v31 = *v26;
          *v26 = *v11;
          goto LABEL_48;
        }

        v33 = *v26;
        *v26 = *v27;
        *v27 = v33;
        if (v11->n128_u32[0] < v27->n128_u32[0])
        {
          v130 = *v27;
          *v27 = *v11;
          v31 = v130;
LABEL_48:
          *v11 = v31;
        }
      }

      v34 = *v15;
      v35 = v27->n128_u32[0];
      if (*v15 >= v20->n128_u32[0])
      {
        if (v35 < v34)
        {
          v132 = *v15;
          *v15 = *v27;
          *v27 = v132;
          if (*v15 < v20->n128_u32[0])
          {
            v133 = *v20;
            *v20 = *v15;
            *v15 = v133;
          }
        }
      }

      else
      {
        if (v35 < v34)
        {
          v131 = *v20;
          *v20 = *v27;
          goto LABEL_57;
        }

        v134 = *v20;
        *v20 = *v15;
        *v15 = v134;
        if (v27->n128_u32[0] < *v15)
        {
          v131 = *v15;
          *v15 = *v27;
LABEL_57:
          *v27 = v131;
        }
      }

      v135 = *v12;
      *v12 = *v15;
      a5 = v135;
      *v15 = v135;
      goto LABEL_59;
    }

    v18 = *v12;
    if (*v12 >= v14->n128_u32[0])
    {
      if (v16 < v18)
      {
        v123 = *v12;
        *v12 = *v9;
        a5 = v123;
        *v9 = v123;
        if (*v12 < v14->n128_u32[0])
        {
          v124 = *v14;
          *v14 = *v12;
          a5 = v124;
          *v12 = v124;
        }
      }

      goto LABEL_59;
    }

    if (v16 < v18)
    {
      v120 = *v14;
      *v14 = *v9;
LABEL_36:
      a5 = v120;
      *v9 = v120;
      goto LABEL_59;
    }

    v127 = *v14;
    *v14 = *v12;
    a5 = v127;
    *v12 = v127;
    if (v9->n128_u32[0] < *v12)
    {
      v120 = *v12;
      *v12 = *v9;
      goto LABEL_36;
    }

LABEL_59:
    --a3;
    if (a4)
    {
      v36 = *v12;
LABEL_62:
      v37 = 0;
      v116 = *(v12 + 12);
      v113 = *(v12 + 4);
      do
      {
        v38 = *(v12 + v37 + 16);
        v37 += 16;
      }

      while (v38 < v36);
      v39 = v12 + v37;
      v40 = a2;
      if (v37 == 16)
      {
        v40 = a2;
        do
        {
          if (v39 >= v40)
          {
            break;
          }

          v42 = v40[-1].n128_u32[0];
          --v40;
        }

        while (v42 >= v36);
      }

      else
      {
        do
        {
          v41 = v40[-1].n128_u32[0];
          --v40;
        }

        while (v41 >= v36);
      }

      v12 += v37;
      if (v39 < v40)
      {
        v43 = v40;
        do
        {
          v136 = *v12;
          *v12 = *v43;
          a5 = v136;
          *v43 = v136;
          do
          {
            v44 = *(v12 + 16);
            v12 += 16;
          }

          while (v44 < v36);
          do
          {
            v45 = v43[-1].n128_u32[0];
            --v43;
          }

          while (v45 >= v36);
        }

        while (v12 < v43);
      }

      v46 = (v12 - 16);
      if (v12 - 16 != a1)
      {
        a5 = *v46;
        *a1 = *v46;
      }

      *(v12 - 16) = v36;
      *(v12 - 4) = v116;
      *(v12 - 12) = v113;
      if (v39 < v40)
      {
        goto LABEL_81;
      }

      {
        a2 = (v12 - 16);
        if (!v47)
        {
          goto LABEL_2;
        }

        goto LABEL_194;
      }

      if (!v47)
      {
LABEL_81:
        a4 = 0;
      }
    }

    else
    {
      v36 = *v12;
      if (*(v12 - 16) < *v12)
      {
        goto LABEL_62;
      }

      v117 = *(v12 + 12);
      v114 = *(v12 + 4);
      if (v36 >= v9->n128_u32[0])
      {
        v50 = v12 + 16;
        do
        {
          v12 = v50;
          if (v50 >= a2)
          {
            break;
          }

          v50 += 16;
        }

        while (v36 >= *v12);
      }

      else
      {
        do
        {
          v49 = *(v12 + 16);
          v12 += 16;
        }

        while (v36 >= v49);
      }

      v51 = a2;
      if (v12 < a2)
      {
        v51 = a2;
        do
        {
          v52 = v51[-1].n128_u32[0];
          --v51;
        }

        while (v36 < v52);
      }

      while (v12 < v51)
      {
        v137 = *v12;
        *v12 = *v51;
        a5 = v137;
        *v51 = v137;
        do
        {
          v53 = *(v12 + 16);
          v12 += 16;
        }

        while (v36 >= v53);
        do
        {
          v54 = v51[-1].n128_u32[0];
          --v51;
        }

        while (v36 < v54);
      }

      v55 = (v12 - 16);
      if (v12 - 16 != a1)
      {
        a5 = *v55;
        *a1 = *v55;
      }

      a4 = 0;
      *(v12 - 16) = v36;
      *(v12 - 4) = v117;
      *(v12 - 12) = v114;
    }
  }

  if (v13 == 3)
  {
    v59 = (v12 + 16);
    v60 = *(v12 + 16);
    v62 = a2[-1].n128_i32[0];
    v57 = a2 - 1;
    v61 = v62;
    if (v60 < *v12)
    {
      if (v61 < v60)
      {
        goto LABEL_108;
      }

      v145 = *v12;
      *v12 = *v59;
      *v59 = v145;
      if (v57->n128_u32[0] < *(v12 + 16))
      {
        v63 = *v59;
        *v59 = *v57;
        goto LABEL_109;
      }

LABEL_194:
      v112 = *MEMORY[0x1E69E9840];
      return;
    }

    if (v61 >= v60)
    {
      goto LABEL_194;
    }

    v105 = *v59;
    *v59 = *v57;
    *v57 = v105;
LABEL_192:
    if (*(v12 + 16) < *v12)
    {
      v147 = *v12;
      *v12 = *v59;
      *v59 = v147;
    }

    goto LABEL_194;
  }

  if (v13 == 4)
  {
    v59 = (v12 + 16);
    v64 = *(v12 + 16);
    v65 = (v12 + 32);
    v66 = *(v12 + 32);
    if (v64 >= *v12)
    {
      if (v66 < v64)
      {
        v106 = *v59;
        *v59 = *v65;
        *v65 = v106;
        if (*(v12 + 16) < *v12)
        {
          v143 = *v12;
          *v12 = *v59;
          *v59 = v143;
        }
      }

      goto LABEL_189;
    }

    if (v66 >= v64)
    {
      v146 = *v12;
      *v12 = *v59;
      *v59 = v146;
      if (v66 >= *(v12 + 16))
      {
        goto LABEL_189;
      }

      v67 = *v59;
      *v59 = *v65;
    }

    else
    {
      v139 = *v12;
      *v12 = *v65;
      v67 = v139;
    }

    *v65 = v67;
LABEL_189:
    if (v9->n128_u32[0] >= v65->n128_u32[0])
    {
      goto LABEL_194;
    }

    v110 = *v65;
    *v65 = *v9;
    *v9 = v110;
    if (v65->n128_u32[0] >= v59->n128_u32[0])
    {
      goto LABEL_194;
    }

    v111 = *v59;
    *v59 = *v65;
    *v65 = v111;
    goto LABEL_192;
  }

  if (v13 != 5)
  {
    goto LABEL_10;
  }

  v56 = *MEMORY[0x1E69E9840];
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,AG::data::table::malloc_zone_enumerator(unsigned int,void *,unsigned int,unsigned long,int (*)(unsigned int,unsigned long,unsigned long,void **),void (*)(unsigned int,void *,unsigned int,vm_range_t *,unsigned int))::$_0 &,AG::data::anonymous namespace::EnumeratorRegions::Value *,0>(__n128 *a1, __n128 *a2, unsigned int *a3, _OWORD *a4, _OWORD *a5, __n128 result)
{
  v6 = a2->n128_u32[0];
  v7 = *a3;
  if (a2->n128_u32[0] >= a1->n128_u32[0])
  {
    if (v7 < v6)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_u32[0] < a1->n128_u32[0])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      result = *a1;
      *a1 = *a3;
LABEL_9:
      *a3 = result;
      goto LABEL_10;
    }

    result = *a1;
    *a1 = *a2;
    *a2 = result;
    if (*a3 < a2->n128_u32[0])
    {
      result = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*a4 < *a3)
  {
    result = *a3;
    *a3 = *a4;
    *a4 = result;
    if (*a3 < a2->n128_u32[0])
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_u32[0] < a1->n128_u32[0])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  if (*a5 < *a4)
  {
    result = *a4;
    *a4 = *a5;
    *a5 = result;
    if (*a4 < *a3)
    {
      result = *a3;
      *a3 = *a4;
      *a4 = result;
      if (*a3 < a2->n128_u32[0])
      {
        result = *a2;
        *a2 = *a3;
        *a3 = result;
        if (a2->n128_u32[0] < a1->n128_u32[0])
        {
          result = *a1;
          *a1 = *a2;
          *a2 = result;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,AG::data::table::malloc_zone_enumerator(unsigned int,void *,unsigned int,unsigned long,int (*)(unsigned int,unsigned long,unsigned long,void **),void (*)(unsigned int,void *,unsigned int,vm_range_t *,unsigned int))::$_0 &,AG::data::anonymous namespace::EnumeratorRegions::Value *>(uint64_t a1, uint64_t a2, __n128 a3)
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = (a2 - a1) >> 4;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = (a1 + 16);
      v7 = *(a1 + 16);
      v9 = *(a2 - 16);
      v4 = (a2 - 16);
      v8 = v9;
      if (v7 < *a1)
      {
        if (v8 >= v7)
        {
          v28 = *a1;
          *a1 = *v6;
          *v6 = v28;
          if (v4->n128_u32[0] >= *(a1 + 16))
          {
            goto LABEL_52;
          }

          v10 = *v6;
          *v6 = *v4;
          goto LABEL_13;
        }

LABEL_12:
        v10 = *a1;
        *a1 = *v4;
LABEL_13:
        *v4 = v10;
        goto LABEL_52;
      }

      if (v8 >= v7)
      {
        goto LABEL_52;
      }

      v23 = *v6;
      *v6 = *v4;
      *v4 = v23;
LABEL_50:
      if (*(a1 + 16) < *a1)
      {
        v40 = *a1;
        *a1 = *v6;
        *v6 = v40;
      }

      goto LABEL_52;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_14;
      }

LABEL_52:
      result = 1;
      goto LABEL_53;
    }

    v6 = (a1 + 16);
    v17 = *(a1 + 16);
    v18 = (a1 + 32);
    v19 = *(a1 + 32);
    v20 = (a2 - 16);
    v21 = *a1;
    if (v17 >= *a1)
    {
      if (v19 < v17)
      {
        v26 = *v6;
        *v6 = *v18;
        *v18 = v26;
        if (v6->n128_u32[0] < v21)
        {
          v27 = *a1;
          *a1 = *v6;
          *v6 = v27;
        }
      }

      goto LABEL_47;
    }

    if (v19 >= v17)
    {
      v37 = *a1;
      *a1 = *v6;
      *v6 = v37;
      if (v19 >= *(a1 + 16))
      {
        goto LABEL_47;
      }

      v22 = *v6;
      *v6 = *v18;
    }

    else
    {
      v22 = *a1;
      *a1 = *v18;
    }

    *v18 = v22;
LABEL_47:
    if (v20->n128_u32[0] >= v18->n128_u32[0])
    {
      goto LABEL_52;
    }

    v38 = *v18;
    *v18 = *v20;
    *v20 = v38;
    if (v18->n128_u32[0] >= v6->n128_u32[0])
    {
      goto LABEL_52;
    }

    v39 = *v6;
    *v6 = *v18;
    *v18 = v39;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    goto LABEL_52;
  }

  if (v3 == 2)
  {
    v5 = *(a2 - 16);
    v4 = (a2 - 16);
    if (v5 >= *a1)
    {
      goto LABEL_52;
    }

    goto LABEL_12;
  }

LABEL_14:
  v11 = (a1 + 32);
  v12 = *(a1 + 32);
  v13 = (a1 + 16);
  v14 = *(a1 + 16);
  v15 = *a1;
  if (v14 >= *a1)
  {
    if (v12 < v14)
    {
      v24 = *v13;
      *v13 = *v11;
      *v11 = v24;
      if (v13->n128_u32[0] < v15)
      {
        v25 = *a1;
        *a1 = *v13;
        *v13 = v25;
      }
    }
  }

  else
  {
    if (v12 >= v14)
    {
      v29 = *a1;
      *a1 = *v13;
      *v13 = v29;
      if (v12 >= *(a1 + 16))
      {
        goto LABEL_33;
      }

      v16 = *v13;
      *v13 = *v11;
    }

    else
    {
      v16 = *a1;
      *a1 = *v11;
    }

    *v11 = v16;
  }

LABEL_33:
  v30 = a1 + 48;
  if (a1 + 48 == a2)
  {
    goto LABEL_52;
  }

  v31 = 0;
  v32 = 0;
  while (1)
  {
    v33 = *v30;
    if (*v30 < v11->n128_u32[0])
    {
      v43 = *(v30 + 4);
      v44 = *(v30 + 12);
      v34 = v31;
      while (1)
      {
        *(a1 + v34 + 48) = *(a1 + v34 + 32);
        if (v34 == -32)
        {
          break;
        }

        v35 = *(a1 + v34 + 16);
        v34 -= 16;
        if (v33 >= v35)
        {
          v36 = a1 + v34 + 48;
          goto LABEL_41;
        }
      }

      v36 = a1;
LABEL_41:
      *v36 = v33;
      *(v36 + 4) = v43;
      *(v36 + 12) = v44;
      if (++v32 == 8)
      {
        break;
      }
    }

    v11 = v30;
    v31 += 16;
    v30 += 16;
    if (v30 == a2)
    {
      goto LABEL_52;
    }
  }

  result = v30 + 16 == a2;
LABEL_53:
  v42 = *MEMORY[0x1E69E9840];
  return result;
}

void std::default_delete<AG::data::table::malloc_zone>::operator()[abi:ne200100](int a1, malloc_zone_t *zone)
{
  if (zone)
  {
    malloc_zone_unregister(zone);

    JUMPOUT(0x1B8C7ACE0);
  }
}

void *AG::vector<vm_range_t,8ul,unsigned int>::reserve_slow(void *__dst, unsigned int a2)
{
  if (*(__dst + 35) + (*(__dst + 35) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(__dst + 35) + (*(__dst + 35) >> 1);
  }

  result = AG::details::realloc_vector<unsigned int,16ul>(*(__dst + 16), __dst, 8u, __dst + 35, v3);
  *(__dst + 16) = result;
  return result;
}

void *AG::details::realloc_vector<unsigned int,16ul>(void *__src, void *__dst, unsigned int a3, _DWORD *a4, unsigned int a5)
{
  v7 = __src;
  if (a5 <= a3)
  {
    if (__src)
    {
      LODWORD(v9) = a3;
      memcpy(__dst, __src, 16 * a5);
      free(v7);
      v12 = 0;
LABEL_8:
      *a4 = v9;
      return v12;
    }
  }

  else
  {
    v8 = malloc_good_size(16 * a5);
    v9 = v8 >> 4;
    if (*a4 != (v8 >> 4))
    {
      v10 = malloc_type_realloc(v7, v8, 0xC199B67EuLL);
      if (!v10)
      {
        AG::precondition_failure("allocation failure", v11);
      }

      v12 = v10;
      if (!v7)
      {
        memcpy(v10, __dst, 16 * *a4);
      }

      goto LABEL_8;
    }
  }

  return v7;
}

uint64_t std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::~__hash_table(uint64_t a1)
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

void *std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__rehash<true>(uint64_t a1, size_t __n)
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
    goto LABEL_6;
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
LABEL_6:

      std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t AG::swift::context_descriptor::generic_params_info::generic_params_info(uint64_t a1, AG::swift::class_type_descriptor *this, uint64_t a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  if ((*this & 0x80) != 0)
  {
    v4 = *this & 0x1F;
    if ((v4 - 19) >= 0xFFFFFFFE)
    {
      v5 = this + 28;
      *a1 = this + 28;
      v6 = a3 + 16;
      if (!a3)
      {
        v6 = 0;
      }
    }

    else
    {
      if (v4 != 16)
      {
        return a1;
      }

      v5 = this + 44;
      *a1 = this + 44;
      if (a3)
      {
        v6 = a3 + 8 * AG::swift::class_type_descriptor::immediate_members_offset(this);
      }

      else
      {
        v6 = 0;
      }
    }

    *(a1 + 48) = v6;
    v7 = *(v5 + 4);
    if (*(v5 + 4))
    {
      *(a1 + 8) = v5 + 16;
      *(a1 + 16) = v7;
      if (v5[14])
      {
        v8 = ((&v5[v7 + 19] & 0xFFFFFFFFFFFFFFFCLL) + 12 * *(v5 + 5));
        v9 = *v8;
        *(a1 + 24) = *v8;
        *(a1 + 32) = v8 + 1;
        *(a1 + 40) = v9;
      }
    }
  }

  return a1;
}

uint64_t AG::swift::context_descriptor::push_generic_args(AG::swift::class_type_descriptor *this, uint64_t a2, void *a3)
{
  result = AG::swift::context_descriptor::generic_params_info::generic_params_info(v18, this, a2);
  v5 = v20;
  if (v20)
  {
    v6 = 0;
    v7 = v19;
    v8 = v21;
    while (1)
    {
      v9 = *v7;
      if (v9 < 0)
      {
        break;
      }

LABEL_17:
      ++v7;
      if (!--v5)
      {
        return result;
      }
    }

    v10 = v9 & 0x3F;
    if ((v9 & 0x3F) == 1)
    {
      v15 = *(v23 + 8 * v8);
      if (v15)
      {
        v11 = v15 & 0xFFFFFFFFFFFFFFFELL;
        v14 = *(v23 + 8 * *(v22 + 8 * v6 + 4));
      }

      else
      {
        v14 = 0;
        v11 = 0;
      }

      ++v6;
      v12 = a3[25];
      v13 = v12 + 1;
      if (a3[26] >= (v12 + 1))
      {
        v10 = 1;
        goto LABEL_13;
      }
    }

    else
    {
      if ((v9 & 0x3F) != 0)
      {
LABEL_16:
        ++v8;
        goto LABEL_17;
      }

      v11 = v23 + 8 * v8;
      v12 = a3[25];
      v13 = v12 + 1;
      if (a3[26] >= (v12 + 1))
      {
        v10 = 0;
        v14 = 1;
LABEL_13:
        v16 = a3[24];
        if (!v16)
        {
          v16 = a3;
        }

        v17 = &v16[3 * v12];
        *v17 = v11;
        v17[1] = v14;
        *(v17 + 16) = v10;
        ++a3[25];
        goto LABEL_16;
      }

      v14 = 1;
    }

    result = AG::vector<AG::swift::context_descriptor::generic_arg,8ul,unsigned long>::reserve_slow(a3, v13);
    v12 = a3[25];
    goto LABEL_13;
  }

  return result;
}

uint64_t AG::swift::context_descriptor::count_generic_args(AG::swift::context_descriptor *this)
{
  AG::swift::context_descriptor::generic_params_info::generic_params_info(v5, this, 0);
  v1 = v7;
  if (!v7)
  {
    return 0;
  }

  result = 0;
  v3 = v6;
  do
  {
    v4 = *v3++;
    if ((v4 & 0xBE) == 0x80)
    {
      ++result;
    }

    --v1;
  }

  while (v1);
  return result;
}

uint64_t AG::swift::metadata::visit_heap_class(AG::swift::metadata *this, AG::swift::metadata_visitor *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  if (!this)
  {
    goto LABEL_22;
  }

  if ((*(this + 4) & 3) == 0)
  {
    goto LABEL_22;
  }

  v5 = (this + 64);
  v4 = *(this + 8);
  if (!v4)
  {
    goto LABEL_22;
  }

  v6 = *(this + 8);
  if (*(v4 + 20))
  {
    v7 = *(this + 1);
    if (v7)
    {
      if ((*v7 - 2048) >= 0xFFFFFFFFFFFFF801)
      {
        goto LABEL_22;
      }

      if (!AG::swift::metadata::visit_heap_class(v7, a2))
      {
        v21 = 0;
        goto LABEL_26;
      }
    }
  }

  v8 = v6 + 16;
  v9 = *(v6 + 16);
  if (!v9)
  {
    goto LABEL_25;
  }

  if ((v9 & 3) != 1)
  {
    v10 = v9 + v8;
    if (v9 + v8)
    {
      goto LABEL_13;
    }

LABEL_25:
    v21 = 1;
LABEL_26:
    v22 = *MEMORY[0x1E69E9840];
    return v21;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFFFCLL) + v8);
  if (!v10)
  {
    goto LABEL_25;
  }

LABEL_13:
  v11 = *(v10 + 12);
  if (!v11)
  {
    goto LABEL_25;
  }

  if (v11 == *(v6 + 36))
  {
    if ((*(this + 40) & 2) == 0)
    {
      HIDWORD(v34) = 0;
      v12 = class_copyIvarList(this, &v34 + 1);
      v13 = v12;
      if (v12)
      {
        v14 = HIDWORD(v34);
        if (HIDWORD(v34) == *(v10 + 12))
        {
          MEMORY[0x1EEE9AC00](v12);
          v16 = &v34 - ((v15 + 15) & 0xFFFFFFFF0);
          bzero(v16, v15);
          if (v14)
          {
            v17 = 0;
            do
            {
              *&v16[8 * v17] = ivar_getOffset(v13[v17]);
              ++v17;
            }

            while (v17 < HIDWORD(v34));
          }
        }

        else
        {
          v16 = 0;
        }

        free(v13);
      }

      else
      {
        v16 = 0;
      }

LABEL_40:
      if (v16 && *v16)
      {
        v27 = v10 + 16;
        v28 = (v16 + 8);
        v29 = 1;
        do
        {
          v30 = *(v10 + 12);
          v21 = v29 - 1 >= v30;
          if (v29 - 1 >= v30)
          {
            break;
          }

          if (v29 < v30)
          {
            v31 = *v28;
          }

          v32 = *(v28 - 1);
          v33 = (*(*a2 + 16))(a2, this, v27);
          ++v28;
          ++v29;
          v27 += 12;
        }

        while ((v33 & 1) != 0);
        goto LABEL_26;
      }

      goto LABEL_48;
    }

    v23 = *v5;
    if (*v5)
    {
      v24 = *v5;
      v25 = *(v23 + 40);
      if (!v25)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v25 = MEMORY[0x28];
      if (!MEMORY[0x28])
      {
LABEL_48:
        v21 = (**a2)(a2);
        goto LABEL_26;
      }

      v23 = 0;
    }

    if ((*(v23 + 3) & 0x20) != 0)
    {
      v26 = (AG::swift::class_type_descriptor::immediate_members_offset(v23) >> 3) + v25;
    }

    else
    {
      v26 = v25;
    }

    v16 = this + 8 * v26;
    goto LABEL_40;
  }

LABEL_22:
  v18 = **a2;
  v19 = *MEMORY[0x1E69E9840];

  return v18(a2);
}

void AG::swift::metadata::append_description(AG::swift::metadata *this, __CFString *a2)
{
  v54 = *MEMORY[0x1E69E9840];
  while (*this == 770)
  {
    CFStringAppendCString(a2, "(", 0x8000100u);
    if (*(this + 4))
    {
      v4 = 0;
      v5 = 8 * *(this + 4);
      do
      {
        v6 = *(this + v4 + 24);
        if (v4)
        {
          CFStringAppendCString(a2, ", ", 0x8000100u);
        }

        if (v6)
        {
          AG::swift::metadata::append_description(v6, a2);
        }

        else
        {
          CFStringAppendCString(a2, "nil", 0x8000100u);
        }

        v4 += 8;
      }

      while (v5 != v4);
    }

    CFStringAppendCString(a2, ")", 0x8000100u);
    this = *(this + 2);
    CFStringAppendCString(a2, " -> ", 0x8000100u);
    if (!this)
    {
      v7 = *MEMORY[0x1E69E9840];
      v8 = "nil";
LABEL_78:

      CFStringAppendCString(a2, v8, 0x8000100u);
      return;
    }
  }

  if (*this == 769)
  {
    if (*(this + 1))
    {
      CFStringAppendCString(a2, "(", 0x8000100u);
      if (*(this + 1))
      {
        v9 = 0;
        v10 = (this + 24);
        do
        {
          v11 = *v10;
          if (v9)
          {
            CFStringAppendCString(a2, ", ", 0x8000100u);
          }

          if (v11)
          {
            AG::swift::metadata::append_description(v11, a2);
          }

          else
          {
            CFStringAppendCString(a2, "nil", 0x8000100u);
          }

          ++v9;
          v10 += 2;
        }

        while (v9 < *(this + 1));
      }

      v12 = *MEMORY[0x1E69E9840];
      v8 = ")";
    }

    else
    {
      v44 = *MEMORY[0x1E69E9840];
      v8 = "Void";
    }

    goto LABEL_78;
  }

  v51 = 0;
  v52 = 0;
  v53 = 8;
  v13 = AG::swift::metadata::descriptor(this);
  if (!v13)
  {
    goto LABEL_41;
  }

  v14 = v13;
  v15 = 0;
  while (1)
  {
    if ((*v14 & 0x1Fu) - 19 >= 0xFFFFFFFE || (*v14 & 0x1F) == 0x10)
    {
      v16 = v14 + 2;
      v17 = v14[2];
      if (v17)
      {
        v18 = v16 + v17;
        if ((v16 + v17))
        {
          v19 = AG::swift::context_descriptor::count_generic_args(v14);
          v20 = v52;
          v15 = v52 + 1;
          if (v53 < v52 + 1)
          {
            AG::vector<std::pair<char const*,unsigned long>,8ul,unsigned long>::reserve_slow(__dst, v15);
            v20 = v52;
            v15 = v52 + 1;
          }

          v21 = v51;
          if (!v51)
          {
            v21 = __dst;
          }

          v22 = &v21[16 * v20];
          *v22 = v18;
          v22[1] = v19;
          v52 = v15;
        }
      }
    }

    v25 = v14[1];
    v24 = v14 + 1;
    v23 = v25;
    if (!v25)
    {
      break;
    }

    if ((v23 & 3) == 1)
    {
      v26 = v23 & 0xFFFFFFFFFFFFFFFCLL;
      if (!*(v24 + v26))
      {
        break;
      }

      v14 = *(v24 + v26);
    }

    else
    {
      v14 = (v24 + v23);
      if (!v14)
      {
        break;
      }
    }
  }

  if (!v15)
  {
LABEL_41:
    TypeName = swift_getTypeName();
    if (TypeName)
    {
      v28 = v52;
      v29 = v52 + 1;
      if (v53 < v52 + 1)
      {
        AG::vector<std::pair<char const*,unsigned long>,8ul,unsigned long>::reserve_slow(__dst, v29);
        v28 = v52;
        v29 = v52 + 1;
      }

      v30 = v51;
      if (!v51)
      {
        v30 = __dst;
      }

      v31 = &v30[16 * v28];
      *v31 = TypeName;
      v31[1] = 0;
      v52 = v29;
    }
  }

  v47 = 0;
  v48 = 0;
  v49 = 8;
  v32 = AG::swift::metadata::descriptor(this);
  if (v32)
  {
    AG::swift::context_descriptor::push_generic_args(v32, this, v46);
  }

  v33 = v52;
  if (v52)
  {
    v34 = 0;
    v35 = 0;
    while (1)
    {
      --v33;
      v36 = v51;
      if (!v51)
      {
        v36 = __dst;
      }

      v37 = &v36[16 * v33];
      v45 = *(v37 + 1);
      CFStringAppendCString(a2, *v37, 0x8000100u);
      if (v45 != v34)
      {
        CFStringAppendCString(a2, "<", 0x8000100u);
        v38 = 0;
        v39 = v45 - v34;
        do
        {
          if (v38)
          {
            CFStringAppendCString(a2, ", ", 0x8000100u);
          }

          v40 = v47;
          if (!v47)
          {
            v40 = v46;
          }

          v41 = &v40[3 * v35 + 3 * v38];
          if (*(v41 + 16) == 1)
          {
            CFStringAppendCString(a2, "Pack{", 0x8000100u);
          }

          if (*(v41 + 8))
          {
            v42 = 0;
            do
            {
              if (v42)
              {
                CFStringAppendCString(a2, ", ", 0x8000100u);
              }

              AG::swift::metadata::append_description(*(*v41 + 8 * v42++), a2);
            }

            while (v42 < *(v41 + 8));
          }

          if (*(v41 + 16))
          {
            CFStringAppendCString(a2, "}", 0x8000100u);
          }

          ++v38;
        }

        while (v38 != v39);
        CFStringAppendCString(a2, ">", 0x8000100u);
        v35 += v39;
      }

      if (!v33)
      {
        break;
      }

      CFStringAppendCString(a2, ".", 0x8000100u);
      v34 = v45;
    }
  }

  if (v47)
  {
    free(v47);
  }

  if (v51)
  {
    free(v51);
  }

  v43 = *MEMORY[0x1E69E9840];
}

void sub_1B49284E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *a54)
{
  if (a54)
  {
    free(a54);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *AG::swift::metadata::signature(AG::swift::metadata *this)
{
  v48 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  v2 = AG::swift::metadata::signature(void)const::cache;
  os_unfair_lock_lock(AG::swift::metadata::signature(void)const::cache);
  v3 = *(v2 + 8);
  v32[0] = 0;
  v4 = util::UntypedTable::lookup(v3, this, v32);
  v5 = v32[0];
  os_unfair_lock_unlock(v2);
  if (!v5)
  {
    v46 = 0;
    v47 = 8;
    v42 = 0;
    v41 = 0;
    v43 = 8;
    v38 = 0;
    v37 = 0;
    v39 = 8;
    v6 = 1;
    v45 = 0;
    v30 = this;
    __dst[0] = this;
    do
    {
      v7 = v45;
      if (!v45)
      {
        v7 = __dst;
      }

      v8 = v7[--v6];
      v46 = v6;
      v38 = 0;
      v9 = AG::swift::metadata::descriptor(v8);
      if (v9)
      {
        v10 = v9;
        AG::swift::context_descriptor::push_generic_args(v9, v8, v36);
        v11 = v42;
        v12 = v42 + 1;
        if (v43 < v42 + 1)
        {
          AG::vector<AG::swift::metadata const*,8ul,unsigned long>::reserve_slow(v40, v12);
          v11 = v42;
          v12 = v42 + 1;
        }

        v13 = v41;
        if (!v41)
        {
          v13 = v40;
        }

        *&v13[8 * v11] = v10;
        v42 = v12;
        if (v37)
        {
          v14 = v37;
        }

        else
        {
          v14 = v36;
        }

        if (v38)
        {
          v15 = &v14[24 * v38];
          do
          {
            v16 = *(v14 + 1);
            if (v16)
            {
              v17 = *v14;
              v18 = v46;
              v19 = 8 * v16;
              do
              {
                v20 = *v17;
                v21 = v18 + 1;
                if (v47 < v18 + 1)
                {
                  AG::vector<AG::swift::metadata const*,8ul,unsigned long>::reserve_slow(__dst, v21);
                  v18 = v46;
                  v21 = v46 + 1;
                }

                v22 = v45;
                if (!v45)
                {
                  v22 = __dst;
                }

                v22[v18] = v20;
                v46 = v21;
                ++v17;
                v18 = v21;
                v19 -= 8;
              }

              while (v19);
            }

            v14 += 24;
          }

          while (v14 != v15);
        }

        v6 = v46;
      }
    }

    while (v6);
    if (v42)
    {
      CC_SHA1_Init(&c);
      v23 = v30;
      CC_SHA1_Update(&c, "AGTypeSignature", 0xFu);
      v33 = 0;
      v34 = 0;
      v35 = 8;
      v24 = v42;
      if (v42 > 8)
      {
        AG::vector<dyld_image_uuid_offset,8ul,unsigned long>::reserve_slow(v32, v42);
      }

      v34 = v24;
      _dyld_images_for_addresses();
      if (v33)
      {
        v25 = v33;
      }

      else
      {
        v25 = v32;
      }

      if (v34)
      {
        v26 = &v25[32 * v34];
        do
        {
          CC_SHA1_Update(&c, v25, 0x10u);
          v27 = v25 + 16;
          CC_SHA1_Update(&c, v27, 8u);
          v25 = v27 + 16;
        }

        while (v25 != v26);
      }

      v4 = malloc_type_malloc(0x14uLL, 0x100004077774924uLL);
      CC_SHA1_Final(v4, &c);
      if (v33)
      {
        free(v33);
      }
    }

    else
    {
      v4 = 0;
      v23 = v30;
    }

    os_unfair_lock_lock(v2);
    util::UntypedTable::insert(*(v2 + 8), v23, v4);
    os_unfair_lock_unlock(v2);
    if (v37)
    {
      free(v37);
    }

    if (v41)
    {
      free(v41);
    }

    if (v45)
    {
      free(v45);
    }
  }

  v28 = *MEMORY[0x1E69E9840];
  return v4;
}

void sub_1B49288CC(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C7ACE0](v1, 0x1020C40D5A9D86FLL);
  _Unwind_Resume(a1);
}

uint64_t AG::swift::metadata::copy_on_write_heap_object(AG::swift::metadata *this, void **a2)
{
  v4 = *a2;
  result = swift_isUniquelyReferencedNonObjC();
  if ((result & 1) == 0)
  {
    v6 = *a2;
    v7 = (*(*(this - 1) + 80) + 16) & ~*(*(this - 1) + 80);
    v8 = **a2;
    v9 = *(*(this - 1) + 64);
    v10 = swift_allocObject();
    (*(*(this - 1) + 16))(&v10[v7], v6 + v7, this);

    *a2 = v10;
  }

  return result;
}

uint64_t AG::swift::class_type_descriptor::immediate_members_offset(AG::swift::class_type_descriptor *this)
{
  if ((*this & 0x20000000) != 0)
  {
    v4 = *(this + 6);
    v2 = this + 24;
    v3 = v4;
    if ((v4 & 7) == 1)
    {
      v5 = *&v2[v3 & 0xFFFFFFFFFFFFFFF8];
    }

    else
    {
      v5 = &v2[v3];
    }

    return *v5 >> 3;
  }

  else if ((*this & 0x10000000) != 0)
  {
    return -*(this + 6);
  }

  else
  {
    return (*(this + 7) - *(this + 8));
  }
}

uint64_t AG::swift::existential_type_metadata::representation(AG::swift::existential_type_metadata *this)
{
  v1 = *(this + 2);
  if ((v1 & 0x3F000000) != 0)
  {
    return 2;
  }

  else
  {
    return v1 >= 0;
  }
}

uint64_t AG::swift::anonymous namespace::TypeCache::TypeCache(void)::$_2::__invoke(uint64_t result)
{
  if (result)
  {
    JUMPOUT(0x1B8C7ACE0);
  }

  return result;
}

uint64_t AG::swift::anonymous namespace::TypeCache::TypeCache(void)::$_3::__invoke(uint64_t result)
{
  if (result)
  {
    JUMPOUT(0x1B8C7ACE0);
  }

  return result;
}

void *AG::vector<dyld_image_uuid_offset,8ul,unsigned long>::reserve_slow(void *__dst, size_t a2)
{
  if (*(__dst + 34) + (*(__dst + 34) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(__dst + 34) + (*(__dst + 34) >> 1);
  }

  result = AG::details::realloc_vector<unsigned long,32ul>(*(__dst + 32), __dst, 8uLL, __dst + 34, v3);
  *(__dst + 32) = result;
  return result;
}

void *AG::details::realloc_vector<unsigned long,32ul>(void *__src, void *__dst, size_t a3, size_t *a4, size_t a5)
{
  v7 = __src;
  if (a5 <= a3)
  {
    if (__src)
    {
      v9 = a3;
      memcpy(__dst, __src, 32 * a5);
      free(v7);
      v12 = 0;
LABEL_8:
      *a4 = v9;
      return v12;
    }
  }

  else
  {
    v8 = malloc_good_size(32 * a5);
    v9 = v8 >> 5;
    if (v8 >> 5 != *a4)
    {
      v10 = malloc_type_realloc(v7, v8, 0xC199B67EuLL);
      if (!v10)
      {
        AG::precondition_failure("allocation failure", v11);
      }

      v12 = v10;
      if (!v7)
      {
        memcpy(v10, __dst, 32 * *a4);
      }

      goto LABEL_8;
    }
  }

  return v7;
}

void *AG::vector<AG::swift::context_descriptor::generic_arg,8ul,unsigned long>::reserve_slow(void *__dst, unint64_t a2)
{
  if (*(__dst + 26) + (*(__dst + 26) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(__dst + 26) + (*(__dst + 26) >> 1);
  }

  result = AG::details::realloc_vector<unsigned long,24ul>(*(__dst + 24), __dst, 8uLL, __dst + 26, v3);
  *(__dst + 24) = result;
  return result;
}

uint64_t AGNewTupleType(uint64_t a1, uint64_t a2)
{
  if (a1 == 1)
  {
    return *a2;
  }

  result = swift_getTupleTypeMetadata();
  if (v3)
  {
    AGNewTupleType_cold_1(result, v3);
  }

  return result;
}

uint64_t AGTupleCount(void *a1)
{
  if (*a1 == 769)
  {
    return a1[1];
  }

  else
  {
    return 1;
  }
}

uint64_t AGTupleElementSize(void *a1, const char *a2)
{
  if (*a1 != 769)
  {
    if (!a2)
    {
      return *(*(a1 - 1) + 64);
    }

LABEL_6:
    AG::precondition_failure("index out of range: %d", a2, a2);
  }

  if (a1[1] <= a2)
  {
    goto LABEL_6;
  }

  a1 = a1[2 * a2 + 3];
  return *(*(a1 - 1) + 64);
}

uint64_t AGTupleElementOffset(void *a1, const char *a2)
{
  if (*a1 == 769)
  {
    if (a1[1] > a2)
    {
      return a1[2 * a2 + 4];
    }

LABEL_7:
    AG::precondition_failure("index out of range: %d", a2, a2);
  }

  if (a2)
  {
    goto LABEL_7;
  }

  return 0;
}

uint64_t AGTupleElementOffsetChecked(void *a1, const char *a2, void *a3)
{
  if (*a1 == 769)
  {
    if (a1[1] > a2)
    {
      v3 = &a1[2 * a2];
      v5 = v3[3];
      v4 = v3 + 3;
      if (v5 != a3)
      {
        AGTupleElementOffsetChecked_cold_1(a1, a2);
      }

      return v4[1];
    }

LABEL_9:
    AG::precondition_failure("index out of range: %d", a2, a2);
  }

  if (a2)
  {
    goto LABEL_9;
  }

  if (a1 != a3)
  {
    AGTupleElementOffsetChecked_cold_1(a1, 0);
  }

  return 0;
}

uint64_t AGTupleSetElement(const AG::swift::metadata *a1, char *a2, unint64_t a3, const char *a4, const AG::swift::metadata *a5, uint64_t a6)
{
  v6 = a1;
  if (*a1 == 769)
  {
    if (*(a1 + 1) > a3)
    {
      v7 = (a1 + 16 * a3);
      v6 = v7[3];
      a2 += v7[4];
      goto LABEL_5;
    }

LABEL_9:
    AG::precondition_failure("index out of range: %d", a2, a3);
  }

  if (a3)
  {
    goto LABEL_9;
  }

LABEL_5:
  if (v6 != a5)
  {
    AGTupleElementOffsetChecked_cold_1(a1, a2);
  }

  return update(a2, a4, v6, a6);
}

uint64_t update(void *a1, const char *a2, const AG::swift::metadata *a3, uint64_t a4)
{
  v5 = *(a3 - 1);
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      v6 = v5[5];
    }

    else
    {
      if (a4 != 3)
      {
        goto LABEL_18;
      }

      v6 = v5[4];
    }
  }

  else
  {
    if (a4)
    {
      if (a4 == 1)
      {
        v6 = v5[2];

        return v6(a1, a2);
      }

LABEL_18:
      AG::precondition_failure("unknown copy options: %d", a2, a4);
    }

    v6 = v5[3];
  }

  return v6(a1, a2);
}

uint64_t AGTupleGetElement(const AG::swift::metadata *a1, const char *a2, unint64_t a3, void *a4, const AG::swift::metadata *a5, uint64_t a6)
{
  v6 = a1;
  if (*a1 == 769)
  {
    if (*(a1 + 1) > a3)
    {
      v7 = (a1 + 16 * a3);
      v6 = v7[3];
      a2 += v7[4];
      goto LABEL_5;
    }

LABEL_9:
    AG::precondition_failure("index out of range: %d", a2, a3);
  }

  if (a3)
  {
    goto LABEL_9;
  }

LABEL_5:
  if (v6 != a5)
  {
    AGTupleElementOffsetChecked_cold_1(a1, a2);
  }

  return update(a4, a2, v6, a6);
}

uint64_t AGTupleDestroyElement(void *a1, const char *a2, unint64_t a3)
{
  v3 = a1;
  if (*a1 == 769)
  {
    if (a1[1] > a3)
    {
      v4 = &a1[2 * a3];
      v3 = v4[3];
      v5 = *(*(v3 - 1) + 8);
      v6 = &a2[v4[4]];
      goto LABEL_6;
    }

LABEL_9:
    AG::precondition_failure("index out of range: %d", a2, a3);
  }

  if (a3)
  {
    goto LABEL_9;
  }

  v5 = *(*(a1 - 1) + 8);
  v6 = a2;
LABEL_6:

  return v5(v6, v3);
}

uint64_t util::MemoryReader::read_bytes(util::MemoryReader *this, void *a2)
{
  result = (*this)(*(this + 1), a2);
  if ((result & 1) == 0)
  {
    util::MemoryReader::read_bytes();
  }

  return result;
}

unint64_t AG::Graph::UpdateStack::global_top(unint64_t this)
{
  if (this)
  {
    while (1)
    {
      v1 = this & 0xFFFFFFFFFFFFFFFELL;
      v2 = *((this & 0xFFFFFFFFFFFFFFFELL) + 104);
      if (v2)
      {
        break;
      }

      this = *(v1 + 16);
      if (!this)
      {
        return this;
      }
    }

    v3 = v1 + 32;
    v4 = *(v1 + 96);
    if (!v4)
    {
      v4 = v3;
    }

    return v4 + 8 * v2 - 8;
  }

  return this;
}

void AG::Graph::UpdateStack::cancel(AG::Graph::UpdateStack *this)
{
  v1 = AG::Graph::_current_update_key;
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v1);
  if (v2)
  {
    while (1)
    {
      v3 = v2 & 0xFFFFFFFFFFFFFFFELL;
      v4 = *(v3 + 104);
      if (v4)
      {
        break;
      }

LABEL_8:
      if ((*(v3 + 120) & 1) == 0)
      {
        v2 = *(v3 + 16);
        if (v2)
        {
          continue;
        }
      }

      return;
    }

    v5 = v3 + 32;
    if (*(v3 + 96))
    {
      v5 = *(v3 + 96);
    }

    v6 = (v5 + 8 * v4 - 4);
    while ((*v6 & 8) == 0)
    {
      *v6 |= 8u;
      v6 -= 2;
      if (!--v4)
      {
        goto LABEL_8;
      }
    }
  }
}

void AG::Graph::UpdateStack::~UpdateStack(AG::Graph::UpdateStack *this, const char *a2)
{
  v3 = (this + 32);
  v4 = *(this + 13);
  if (*(this + 12))
  {
    v3 = *(this + 12);
  }

  if (v4)
  {
    v5 = AG::data::_shared_table_bytes;
    v6 = 8 * v4;
    do
    {
      v7 = *v3;
      v3 += 2;
      *(v5 + v7) -= 64;
      v6 -= 8;
    }

    while (v6);
  }

  v8 = *this;
  if (*(this + 1) != *(*this + 368))
  {
    AG::non_fatal_precondition_failure("invalid graph update (access from multiple threads?)", a2);
    v8 = *this;
  }

  *(v8 + 368) = *(this + 3);
  v9 = *(this + 2);
  v10 = AG::Graph::_current_update_key;
  *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v10) = v9;
  if ((*(this + 120) & 8) != 0)
  {
    *(*this + 360) = 0;
  }

  v11 = *(this + 12);
  if (v11)
  {
    free(v11);
  }
}

{
  v3 = (this + 32);
  v4 = *(this + 13);
  if (*(this + 12))
  {
    v3 = *(this + 12);
  }

  if (v4)
  {
    v5 = AG::data::_shared_table_bytes;
    v6 = 8 * v4;
    do
    {
      v7 = *v3;
      v3 += 2;
      *(v5 + v7) -= 64;
      v6 -= 8;
    }

    while (v6);
  }

  v8 = *this;
  if (*(this + 1) != *(*this + 368))
  {
    AG::non_fatal_precondition_failure("invalid graph update (access from multiple threads?)", a2);
    v8 = *this;
  }

  *(v8 + 368) = *(this + 3);
  v9 = *(this + 2);
  v10 = AG::Graph::_current_update_key;
  *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v10) = v9;
  if ((*(this + 120) & 8) != 0)
  {
    *(*this + 360) = 0;
  }

  v11 = *(this + 12);
  if (v11)
  {
    free(v11);
  }
}

void *AG::Graph::collect_stack(uint64_t a1, void *a2)
{
  v2 = AG::Graph::_current_update_key;
  for (i = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v2); i; i = *(v5 + 16))
  {
    v5 = i & 0xFFFFFFFFFFFFFFFELL;
    v6 = *((i & 0xFFFFFFFFFFFFFFFELL) + 104);
    if (v6)
    {
      v7 = a2[1];
      v8 = 8 * v6 - 8;
      do
      {
        if (*(v5 + 96))
        {
          v9 = *(v5 + 96);
        }

        else
        {
          v9 = v5 + 32;
        }

        v10 = v7 + 1;
        if (a2[2] < v7 + 1)
        {
          result = AG::vector<AG::data::ptr<AG::Node>,0ul,unsigned long>::reserve_slow(a2, v10);
          v7 = a2[1];
          v10 = v7 + 1;
        }

        *(*a2 + 4 * v7) = *(v9 + v8);
        a2[1] = v10;
        v8 -= 8;
        v7 = v10;
        --v6;
      }

      while (v6);
    }
  }

  return result;
}

uint64_t AG::Graph::UpdateStack::cancelled(uint64_t this)
{
  if (this)
  {
    while (1)
    {
      v1 = this & 0xFFFFFFFFFFFFFFFELL;
      v2 = *((this & 0xFFFFFFFFFFFFFFFELL) + 104);
      if (v2)
      {
        break;
      }

      this = *(v1 + 16);
      if (!this)
      {
        return this;
      }
    }

    v3 = v1 + 32;
    v4 = *(v1 + 96);
    if (!v4)
    {
      v4 = v3;
    }

    v5 = v4 + 8 * v2;
    if (v5 == 8)
    {
      return 0;
    }

    else
    {
      return (*(v5 - 4) >> 3) & 1;
    }
  }

  return this;
}

void AG::Graph::print_stack(AG::Graph *this)
{
  v1 = AG::Graph::_current_update_key;
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v1);
  if (v2)
  {
    v3 = -1;
    v4 = v2;
    do
    {
      ++v3;
      v4 = *((v4 & 0xFFFFFFFFFFFFFFFELL) + 16);
    }

    while (v4);
    v5 = MEMORY[0x1E69E9848];
    do
    {
      v23 = v2 & 0xFFFFFFFFFFFFFFFELL;
      v6 = *((v2 & 0xFFFFFFFFFFFFFFFELL) + 104);
      if (v6)
      {
        v7 = -v6;
        v8 = 8 * v6;
        v9 = v6 - 1;
        do
        {
          v10 = *(v23 + 96);
          if (!v10)
          {
            v10 = v23 + 32;
          }

          v11 = v10 + v8;
          v13 = *(v11 - 8);
          v12 = *(v11 - 4);
          v14 = *v5;
          v15 = *(AG::data::_shared_table_bytes + v13);
          v16 = v15 >> 6;
          v17 = v12 >> 4;
          if (v12)
          {
            v18 = "P";
          }

          else
          {
            v18 = "";
          }

          if ((v12 & 8) != 0)
          {
            v19 = "C";
          }

          else
          {
            v19 = "";
          }

          if (v15)
          {
            v20 = "D";
          }

          else
          {
            v20 = "";
          }

          if ((v15 & 0x10) != 0)
          {
            v21 = "V";
          }

          else
          {
            v21 = "";
          }

          fprintf(v14, "frame %d.%d: attribute %u; count=%d, index=%d/%d %s%s%s%s\n", v3, v9, v13, v16, v17, *(AG::data::_shared_table_bytes + v13 + 12) >> 5, v18, v19, v20, v21);
          v5 = MEMORY[0x1E69E9848];
          v8 -= 8;
          --v9;
        }

        while (!__CFADD__(v7++, 1));
      }

      v2 = *(v23 + 16);
      --v3;
    }

    while (v2);
  }
}

uint64_t AG::Graph::dispatch_main(AG::Graph::UpdateStack &)::$_0::__invoke(uint64_t a1)
{
  v2 = *a1;
  v3 = AG::Graph::_current_update_key;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v5 = *(StatusReg + 8 * v3);
  *(StatusReg + 8 * v3) = v2;
  result = AG::Graph::UpdateStack::update(v2);
  *(a1 + 8) = result;
  *(StatusReg + 8 * AG::Graph::_current_update_key) = v5;
  return result;
}

void *AG::vector<AG::data::ptr<AG::Node>,0ul,unsigned long>::reserve_slow(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) + (*(a1 + 16) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(a1 + 16) + (*(a1 + 16) >> 1);
  }

  result = AG::details::realloc_vector<unsigned long,4ul>(*a1, (a1 + 16), v3);
  *a1 = result;
  return result;
}

void *AG::details::realloc_vector<unsigned long,4ul>(void *a1, size_t *a2, uint64_t a3)
{
  v4 = a1;
  if (a3)
  {
    v5 = malloc_good_size(4 * a3);
    v6 = v5 >> 2;
    if (v5 >> 2 != *a2)
    {
      v7 = malloc_type_realloc(v4, v5, 0x15CB70FBuLL);
      if (!v7)
      {
        AG::precondition_failure("allocation failure", v8);
      }

      v4 = v7;
      *a2 = v6;
    }
  }

  else
  {
    *a2 = 0;
    free(a1);
    return 0;
  }

  return v4;
}

void *AG::Graph::ProfileTrace::begin_update(void *result, unint64_t a2)
{
  if (*(*a2 + 248) == 1)
  {
    v7[7] = v2;
    v7[8] = v3;
    v5 = result;
    v6 = mach_absolute_time();
    v7[0] = a2;
    v7[2] = v7;
    result = std::__hash_table<std::__hash_value_type<unsigned long,AG::Graph::ProfileTrace::UpdateData>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,AG::Graph::ProfileTrace::UpdateData>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,AG::Graph::ProfileTrace::UpdateData>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,AG::Graph::ProfileTrace::UpdateData>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(v5 + 2, v7);
    result[4] = 0;
    result[5] = 0;
    result[3] = v6;
  }

  return result;
}

uint64_t *AG::Graph::ProfileTrace::end_update(uint64_t a1, unint64_t a2)
{
  v8 = a2;
  result = std::__hash_table<std::__hash_value_type<unsigned long,AG::Graph::ProfileTrace::UpdateData>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,AG::Graph::ProfileTrace::UpdateData>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,AG::Graph::ProfileTrace::UpdateData>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,AG::Graph::ProfileTrace::UpdateData>>>::find<unsigned long>((a1 + 16), &v8);
  if (result)
  {
    v5 = result[3];
    result = std::__hash_table<std::__hash_value_type<unsigned long,AG::Graph::ProfileTrace::UpdateData>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,AG::Graph::ProfileTrace::UpdateData>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,AG::Graph::ProfileTrace::UpdateData>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,AG::Graph::ProfileTrace::UpdateData>>>::erase((a1 + 16), result);
    if (v5)
    {
      v6 = *(a2 + 16) & 0xFFFFFFFFFFFFFFFELL;
      if (v6)
      {
        if (*(*v6 + 248) == 1)
        {
          v8 = v6;
          result = std::__hash_table<std::__hash_value_type<unsigned long,AG::Graph::ProfileTrace::UpdateData>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,AG::Graph::ProfileTrace::UpdateData>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,AG::Graph::ProfileTrace::UpdateData>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,AG::Graph::ProfileTrace::UpdateData>>>::find<unsigned long>((a1 + 16), &v8);
          if (result)
          {
            v7 = result;
            if (*(*v6 + 248) == 1)
            {
              result = mach_absolute_time();
            }

            else
            {
              result = 0;
            }

            v7[4] += result - v5;
          }
        }
      }
    }
  }

  return result;
}

uint64_t AG::Graph::ProfileTrace::begin_update(uint64_t a1)
{
  v1 = AG::Graph::_current_update_key;
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v1);
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2 & 0xFFFFFFFFFFFFFFFELL;
  }

  v6 = v3;
  result = std::__hash_table<std::__hash_value_type<unsigned long,AG::Graph::ProfileTrace::UpdateData>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,AG::Graph::ProfileTrace::UpdateData>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,AG::Graph::ProfileTrace::UpdateData>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,AG::Graph::ProfileTrace::UpdateData>>>::find<unsigned long>((a1 + 16), &v6);
  if (result)
  {
    v5 = result;
    if (*(*v3 + 248) == 1)
    {
      result = mach_absolute_time();
    }

    else
    {
      result = 0;
    }

    *(v5 + 40) = result;
  }

  return result;
}

uint64_t *AG::Graph::ProfileTrace::end_update(uint64_t a1, unsigned int a2, int a3)
{
  v5 = AG::Graph::_current_update_key;
  v6 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v5);
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFFELL);
  }

  v18 = v7;
  result = std::__hash_table<std::__hash_value_type<unsigned long,AG::Graph::ProfileTrace::UpdateData>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,AG::Graph::ProfileTrace::UpdateData>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,AG::Graph::ProfileTrace::UpdateData>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,AG::Graph::ProfileTrace::UpdateData>>>::find<unsigned long>((a1 + 16), &v18);
  if (result)
  {
    v9 = result;
    v10 = result[5];
    if (v10)
    {
      v11 = *v7;
      if (*(v11 + 248) == 1)
      {
        v12 = mach_absolute_time();
        v10 = v9[5];
      }

      else
      {
        v12 = 0;
      }

      v13 = v12 - v10;
      v14 = v9[4];
      v15 = v13 >= v14;
      v16 = v13 - v14;
      if (v15)
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }

      v9[4] = 0;
      return AG::Graph::add_profile_update(v11, a2, v17, a3);
    }
  }

  return result;
}

uint64_t *AG::Graph::add_profile_update(uint64_t *result, unsigned int a2, unint64_t a3, int a4)
{
  if (*(result + 248) == 1)
  {
    v4 = result[32];
    if (!v4)
    {
      operator new();
    }

    if (a3 >= *v4)
    {
      v5 = a3 - *v4;
    }

    else
    {
      v5 = 0;
    }

    result = AG::Graph::ProfileData::Category::add_update((v4 + 8), a2, v5, a4);
    *(v4 + 184) = 1;
  }

  return result;
}

int64x2_t *AG::Graph::ProfileData::Item::operator+=(int64x2_t *a1, int64x2_t *a2)
{
  v3 = vaddq_s64(a1[1], a2[1]);
  *a1 = vaddq_s64(*a1, *a2);
  a1[1] = v3;
  v4 = a2[2].i64[1];
  if (v4)
  {
    v5 = a2[2].i64[0];
    v6 = v5 + 48 * v4;
    v8 = a1[2].i64[0];
    v7 = a1[2].u64[1];
    v9 = v8;
    do
    {
      v10 = &v8[3 * v7];
      if (v9 == v10)
      {
        goto LABEL_10;
      }

      v11 = *(v5 + 8);
      while (1)
      {
        v12 = v9->u64[1];
        if (v12 >= v11)
        {
          break;
        }

        v9 += 3;
        if (v9 == v10)
        {
          v9 = &v8[3 * v7];
          goto LABEL_10;
        }
      }

      if (v12 != v11)
      {
LABEL_10:
        v14 = v8;
        if (a1[3].i64[0] < v7 + 1)
        {
          AG::vector<AG::Graph::ProfileData::Mark,0ul,unsigned long>::reserve_slow(a1[2].i64, v7 + 1);
          v14 = a1[2].i64[0];
          v7 = a1[2].u64[1];
        }

        v15 = v9 - v8;
        v16 = 0xAAAAAAAAAAAAAAABLL * (v15 >> 4);
        v17 = v7 > v16;
        v18 = v7 - v16;
        if (v17)
        {
          memmove((v14 + v15 + 48), (v14 + v15), 48 * v18);
        }

        v19 = (v14 + v15);
        v20 = *v5;
        v21 = *(v5 + 32);
        v19[1] = *(v5 + 16);
        v19[2] = v21;
        *v19 = v20;
        v8 = a1[2].i64[0];
        v7 = a1[2].i64[1] + 1;
        a1[2].i64[1] = v7;
        v9 = (v8 + v15 + 48);
      }

      else
      {
        v13 = vaddq_s64(v9[2], *(v5 + 32));
        v9[1] = vaddq_s64(v9[1], *(v5 + 16));
        v9[2] = v13;
      }

      v5 += 48;
    }

    while (v5 != v6);
  }

  return a1;
}

double AG::Graph::ProfileData::Item::mark(AG::Graph::ProfileData::Item *this, int a2, uint64_t a3)
{
  if (*this)
  {
    v6 = *(this + 5);
    if (*(this + 6) < (v6 + 1))
    {
      AG::vector<AG::Graph::ProfileData::Mark,0ul,unsigned long>::reserve_slow(this + 32, v6 + 1);
      v6 = *(this + 5);
    }

    v7 = *(this + 4) + 48 * v6;
    v9 = *this;
    v8 = *(this + 1);
    *v7 = a2;
    *(v7 + 8) = a3;
    *(v7 + 16) = v9;
    *(v7 + 32) = v8;
    ++*(this + 5);
    result = 0.0;
    *this = 0u;
    *(this + 1) = 0u;
  }

  return result;
}

uint64_t *AG::Graph::ProfileData::Category::add_update(void *a1, unsigned int a2, uint64_t a3, int a4)
{
  v7 = a2;
  ++*a1;
  a1[2] += a3;
  if (a4)
  {
    ++a1[1];
    a1[3] += a3;
  }

  v8 = &v7;
  result = std::__hash_table<std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::__unordered_map_hasher<AG::data::ptr<AG::Node>,std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::hash<AG::data::ptr<AG::Node>>,std::equal_to<AG::data::ptr<AG::Node>>,true>,std::__unordered_map_equal<AG::data::ptr<AG::Node>,std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::equal_to<AG::data::ptr<AG::Node>>,std::hash<AG::data::ptr<AG::Node>>,true>,std::allocator<std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>>>::__emplace_unique_key_args<AG::data::ptr<AG::Node>,std::piecewise_construct_t const&,std::tuple<AG::data::ptr<AG::Node> const&>,std::tuple<>>(a1 + 7, &v7);
  ++result[3];
  result[5] += a3;
  if (a4)
  {
    ++result[4];
    result[6] += a3;
  }

  return result;
}

AG::Graph::ProfileData *AG::Graph::ProfileData::ProfileData(AG::Graph::ProfileData *this, const AG::Graph *a2)
{
  *(this + 8) = 0u;
  *(this + 11) = 0;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 24) = 1065353216;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 34) = 1065353216;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 44) = 1065353216;
  *(this + 184) = 0;
  *this = 0;
  v3 = mach_absolute_time();
  v4 = 16;
  do
  {
    v5 = mach_absolute_time();
    v6 = v5 - v3 + *this;
    *this = v6;
    v3 = v5;
    --v4;
  }

  while (v4);
  *this = v6 >> 4;
  return this;
}

void sub_1B4929DC8(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Category>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Category>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Category>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Category>>>::~__hash_table(v2);
  AG::Graph::ProfileData::Category::~Category(v1);
  _Unwind_Resume(a1);
}

void AG::Graph::ProfileData::Category::mark(AG::Graph::ProfileData::Category *this, int a2, uint64_t a3)
{
  AG::Graph::ProfileData::Item::mark(this, a2, a3);
  for (i = *(this + 9); i; i = *i)
  {
    AG::Graph::ProfileData::Item::mark((i + 3), a2, a3);
  }

  for (j = *(this + 14); j; j = *j)
  {
    AG::Graph::ProfileData::Item::mark((j + 3), a2, a3);
  }
}

uint64_t AG::Graph::ProfileData::remove_node(void *a1, unsigned int a2, unsigned int a3)
{
  v10 = a2;
  v11 = a3;
  result = std::__hash_table<std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::__unordered_map_hasher<AG::data::ptr<AG::Node>,std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::hash<AG::data::ptr<AG::Node>>,std::equal_to<AG::data::ptr<AG::Node>>,true>,std::__unordered_map_equal<AG::data::ptr<AG::Node>,std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::equal_to<AG::data::ptr<AG::Node>>,std::hash<AG::data::ptr<AG::Node>>,true>,std::allocator<std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>>>::find<AG::data::ptr<AG::Node>>(a1 + 8, &v10);
  if (result)
  {
    v5 = result;
    v12 = &v11;
    v6 = std::__hash_table<std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Item>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Item>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Item>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Item>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a1 + 13, &v11);
    AG::Graph::ProfileData::Item::operator+=((v6 + 3), (v5 + 24));
    result = std::__hash_table<std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::__unordered_map_hasher<AG::data::ptr<AG::Node>,std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::hash<AG::data::ptr<AG::Node>>,std::equal_to<AG::data::ptr<AG::Node>>,true>,std::__unordered_map_equal<AG::data::ptr<AG::Node>,std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::equal_to<AG::data::ptr<AG::Node>>,std::hash<AG::data::ptr<AG::Node>>,true>,std::allocator<std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>>>::erase(a1 + 8, v5);
  }

  for (i = a1[20]; i; i = *i)
  {
    result = std::__hash_table<std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::__unordered_map_hasher<AG::data::ptr<AG::Node>,std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::hash<AG::data::ptr<AG::Node>>,std::equal_to<AG::data::ptr<AG::Node>>,true>,std::__unordered_map_equal<AG::data::ptr<AG::Node>,std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::equal_to<AG::data::ptr<AG::Node>>,std::hash<AG::data::ptr<AG::Node>>,true>,std::allocator<std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>>>::find<AG::data::ptr<AG::Node>>(i + 10, &v10);
    if (result)
    {
      v8 = result;
      v12 = &v11;
      v9 = std::__hash_table<std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Item>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Item>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Item>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Item>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(i + 15, &v11);
      AG::Graph::ProfileData::Item::operator+=((v9 + 3), (v8 + 24));
      result = std::__hash_table<std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::__unordered_map_hasher<AG::data::ptr<AG::Node>,std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::hash<AG::data::ptr<AG::Node>>,std::equal_to<AG::data::ptr<AG::Node>>,true>,std::__unordered_map_equal<AG::data::ptr<AG::Node>,std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::equal_to<AG::data::ptr<AG::Node>>,std::hash<AG::data::ptr<AG::Node>>,true>,std::allocator<std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>>>::erase(i + 10, v8);
    }
  }

  return result;
}

void AG::Graph::start_profiling(AG::Graph *this, char a2)
{
  *(this + 248) = a2 & 1;
  if ((a2 & 2) != 0)
  {
    if (NSClassFromString(&cfstr_Uiapplication.isa))
    {
      v3 = [MEMORY[0x1E696AD88] defaultCenter];
      v4 = objc_opt_class();
      [v3 addObserver:v4 selector:sel_background_ name:@"UIApplicationDidEnterBackgroundNotification" object:0];
      [v3 addObserver:v4 selector:sel_foreground_ name:@"UIApplicationWillEnterForegroundNotification" object:0];
    }

    Main = CFRunLoopGetMain();
    if (Main)
    {
      v6 = Main;
      v7 = CFRunLoopObserverCreate(0, 0xA0uLL, 1u, 2500000, AG::Graph::start_profiling::$_0::__invoke<__CFRunLoopObserver *,unsigned long,void *>, 0);
      if (v7)
      {
        CFRunLoopAddObserver(v6, v7, *MEMORY[0x1E695E8D0]);
      }
    }
  }

  if (*(this + 248) == 1 && !*(this + 33))
  {
    operator new();
  }
}

_DWORD *AG::Graph::stop_profiling(_DWORD *this)
{
  v1 = this;
  v2 = *(this + 33);
  if (v2)
  {
    this = AG::Graph::remove_trace(this, *(v2 + 8));
    *(v1 + 33) = 0;
  }

  *(v1 + 248) = 0;
  return this;
}

uint64_t *std::unique_ptr<AG::Graph::ProfileData>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::__hash_table<std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Category>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Category>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Category>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Category>>>::~__hash_table(v2 + 144);
    std::__hash_table<std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Item>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Item>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Item>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Item>>>::~__hash_table(v2 + 104);
    std::__hash_table<std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Item>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Item>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Item>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Item>>>::~__hash_table(v2 + 64);
    v3 = *(v2 + 40);
    if (v3)
    {
      free(v3);
    }

    JUMPOUT(0x1B8C7ACE0);
  }

  return result;
}

void AG::Graph::mark_profile(AG::Graph *this, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = *(this + 44);
  if (v6)
  {
    AG::Graph::mark_profile(v6, this + 21, this, a2);
  }

  v7 = *(this + 32);
  if (v7 && *(v7 + 184) == 1)
  {
    if (!a3)
    {
      a3 = mach_absolute_time();
      v7 = *(this + 32);
    }

    AG::Graph::ProfileData::Category::mark((v7 + 8), v4, a3);
    v8 = *(this + 32);
    v9 = *(v8 + 160);
    if (v9)
    {
      do
      {
        AG::Graph::ProfileData::Category::mark((v9 + 3), v4, a3);
        v9 = *v9;
      }

      while (v9);
      v8 = *(this + 32);
    }

    *(v8 + 184) = 0;
  }
}

void AG::Graph::all_start_profiling(AG::Graph *this)
{
  v1 = this;
  os_unfair_lock_lock(&AG::Graph::_all_graphs_lock);
  for (i = &AG::Graph::_all_graphs; ; AG::Graph::start_profiling(i, v1))
  {
    i = *i;
    if (!i)
    {
      break;
    }
  }

  os_unfair_lock_unlock(&AG::Graph::_all_graphs_lock);
}

void AG::Graph::all_stop_profiling(AG::Graph *this)
{
  os_unfair_lock_lock(&AG::Graph::_all_graphs_lock);
  for (i = AG::Graph::_all_graphs; i; i = *i)
  {
    v2 = *(i + 264);
    if (v2)
    {
      AG::Graph::remove_trace(i, *(v2 + 8));
      *(i + 264) = 0;
    }

    *(i + 248) = 0;
  }

  os_unfair_lock_unlock(&AG::Graph::_all_graphs_lock);
}

void AG::Graph::all_reset_profile(AG::Graph *this)
{
  os_unfair_lock_lock(&AG::Graph::_all_graphs_lock);
  v1 = AG::Graph::_all_graphs;
  if (AG::Graph::_all_graphs)
  {
    do
    {
      std::unique_ptr<AG::Graph::ProfileData>::reset[abi:ne200100](v1 + 32, 0);
      v1 = *v1;
    }

    while (v1);
  }

  os_unfair_lock_unlock(&AG::Graph::_all_graphs_lock);
}

void AG::Graph::all_mark_profile(AG::Graph *this, const char *a2)
{
  v3 = mach_absolute_time();
  os_unfair_lock_lock(&AG::Graph::_all_graphs_lock);
  for (i = &AG::Graph::_all_graphs; ; AG::Graph::mark_profile(i, v5, v3))
  {
    i = *i;
    if (!i)
    {
      break;
    }

    v5 = AG::Graph::intern_key(i, this);
  }

  os_unfair_lock_unlock(&AG::Graph::_all_graphs_lock);
}

uint64_t AG::Graph::begin_profile_event(AG::Graph *this, unsigned int a2, char *a3)
{
  v4 = *(this + 44);
  if (v4)
  {
    v7 = a2;
    v8 = 8 * v4 - 8;
    do
    {
      v9 = *(*(this + 21) + v8);
      v10 = AG::Graph::intern_key(this, a3);
      (*(*v9 + 144))(v9, v7, v10);
      v8 -= 8;
    }

    while (v8 != -8);
  }

  if (*(this + 248) != 1)
  {
    return 0;
  }

  return mach_absolute_time();
}

void *AG::Graph::end_profile_event(uint64_t a1, unsigned int a2, char *a3, uint64_t a4, int a5)
{
  result = AG::Graph::intern_key(a1, a3);
  v10 = result;
  if (*(a1 + 248) == 1)
  {
    if (!*(a1 + 256))
    {
      operator new();
    }

    v11 = mach_absolute_time();
    v12 = *(a1 + 256);
    v16 = v10;
    if (v11 - a4 >= *v12)
    {
      v13 = v11 - a4 - *v12;
    }

    else
    {
      v13 = 0;
    }

    v17 = &v16;
    v14 = std::__hash_table<std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Category>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Category>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Category>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Category>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((v12 + 144), &v16);
    result = AG::Graph::ProfileData::Category::add_update(v14 + 3, a2, v13, a5);
    *(v12 + 184) = 1;
  }

  v15 = *(a1 + 176);
  if (v15)
  {
    return AG::Graph::end_profile_event(a2, v15, (a1 + 168), v10);
  }

  return result;
}

void AG::Graph::ProfileTrace::~ProfileTrace(AG::Graph::ProfileTrace *this)
{
  *this = &unk_1F2CB21F8;
  std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::~__hash_table(this + 16);
}

{
  *this = &unk_1F2CB21F8;
  std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::~__hash_table(this + 16);

  JUMPOUT(0x1B8C7ACE0);
}

void AG::Graph::ProfileData::Category::~Category(AG::Graph::ProfileData::Category *this)
{
  std::__hash_table<std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Item>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Item>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Item>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Item>>>::~__hash_table(this + 96);
  std::__hash_table<std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Item>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Item>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Item>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Item>>>::~__hash_table(this + 56);
  v2 = *(this + 4);
  if (v2)
  {
    free(v2);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Item>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Item>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Item>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Item>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Item>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Item>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Item>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Item>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Item>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Item>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Item>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Item>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[7];
      if (v4)
      {
        free(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t *std::__hash_table<std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::__unordered_map_hasher<AG::data::ptr<AG::Node>,std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::hash<AG::data::ptr<AG::Node>>,std::equal_to<AG::data::ptr<AG::Node>>,true>,std::__unordered_map_equal<AG::data::ptr<AG::Node>,std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::equal_to<AG::data::ptr<AG::Node>>,std::hash<AG::data::ptr<AG::Node>>,true>,std::allocator<std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>>>::find<AG::data::ptr<AG::Node>>(void *a1, unsigned int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % v2.i32[0];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 4) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Item>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Item>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Item>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Item>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Item>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[7];
    if (v3)
    {
      free(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t std::__hash_table<std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::__unordered_map_hasher<AG::data::ptr<AG::Node>,std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::hash<AG::data::ptr<AG::Node>>,std::equal_to<AG::data::ptr<AG::Node>>,true>,std::__unordered_map_equal<AG::data::ptr<AG::Node>,std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::equal_to<AG::data::ptr<AG::Node>>,std::hash<AG::data::ptr<AG::Node>>,true>,std::allocator<std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::__unordered_map_hasher<AG::data::ptr<AG::Node>,std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::hash<AG::data::ptr<AG::Node>>,std::equal_to<AG::data::ptr<AG::Node>>,true>,std::__unordered_map_equal<AG::data::ptr<AG::Node>,std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::equal_to<AG::data::ptr<AG::Node>>,std::hash<AG::data::ptr<AG::Node>>,true>,std::allocator<std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Item>,void *>>>::operator()[abi:ne200100](&v6, v3);
  }

  return v2;
}

void *std::__hash_table<std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::__unordered_map_hasher<AG::data::ptr<AG::Node>,std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::hash<AG::data::ptr<AG::Node>>,std::equal_to<AG::data::ptr<AG::Node>>,true>,std::__unordered_map_equal<AG::data::ptr<AG::Node>,std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::equal_to<AG::data::ptr<AG::Node>>,std::hash<AG::data::ptr<AG::Node>>,true>,std::allocator<std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>>>::remove@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Category>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Category>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Category>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Category>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Category>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *a2)
{
  if (*(a1 + 8) == 1)
  {
    std::__hash_table<std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Item>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Item>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Item>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Item>>>::~__hash_table((a2 + 15));
    std::__hash_table<std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Item>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Item>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Item>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Item>>>::~__hash_table((a2 + 10));
    v3 = a2[7];
    if (v3)
    {
      free(v3);
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t std::pair<unsigned int const,AG::Graph::ProfileData::Category>::~pair(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Item>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Item>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Item>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Item>>>::~__hash_table(a1 + 104);
  std::__hash_table<std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Item>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Item>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Item>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Item>>>::~__hash_table(a1 + 64);
  v2 = *(a1 + 40);
  if (v2)
  {
    free(v2);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<unsigned long,AG::Graph::ProfileTrace::UpdateData>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,AG::Graph::ProfileTrace::UpdateData>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,AG::Graph::ProfileTrace::UpdateData>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,AG::Graph::ProfileTrace::UpdateData>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void *std::__hash_table<std::__hash_value_type<unsigned long,AG::Graph::ProfileTrace::UpdateData>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,AG::Graph::ProfileTrace::UpdateData>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,AG::Graph::ProfileTrace::UpdateData>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,AG::Graph::ProfileTrace::UpdateData>>>::find<unsigned long>(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v8 == v3)
      {
        if (result[2] == v3)
        {
          return result;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
        {
          if (v8 >= *&v2)
          {
            v8 %= *&v2;
          }
        }

        else
        {
          v8 &= *&v2 - 1;
        }

        if (v8 != v5)
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

uint64_t std::__hash_table<std::__hash_value_type<unsigned long,AG::Graph::ProfileTrace::UpdateData>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,AG::Graph::ProfileTrace::UpdateData>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,AG::Graph::ProfileTrace::UpdateData>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,AG::Graph::ProfileTrace::UpdateData>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::__unordered_map_hasher<AG::data::ptr<AG::Node>,std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::hash<AG::data::ptr<AG::Node>>,std::equal_to<AG::data::ptr<AG::Node>>,true>,std::__unordered_map_equal<AG::data::ptr<AG::Node>,std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::equal_to<AG::data::ptr<AG::Node>>,std::hash<AG::data::ptr<AG::Node>>,true>,std::allocator<std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v2;
}

void *AG::vector<AG::Graph::ProfileData::Mark,0ul,unsigned long>::reserve_slow(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) + (*(a1 + 16) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(a1 + 16) + (*(a1 + 16) >> 1);
  }

  result = AG::details::realloc_vector<unsigned long,48ul>(*a1, (a1 + 16), v3);
  *a1 = result;
  return result;
}

void *AG::details::realloc_vector<unsigned long,48ul>(void *a1, unint64_t *a2, uint64_t a3)
{
  v4 = a1;
  if (a3)
  {
    v5 = malloc_good_size(48 * a3);
    v6 = v5 / 0x30;
    if (v5 / 0x30 != *a2)
    {
      v7 = malloc_type_realloc(v4, v5, 0x15CB70FBuLL);
      if (!v7)
      {
        AG::precondition_failure("allocation failure", v8);
      }

      v4 = v7;
      *a2 = v6;
    }
  }

  else
  {
    *a2 = 0;
    free(a1);
    return 0;
  }

  return v4;
}

uint64_t *std::__hash_table<std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::__unordered_map_hasher<AG::data::ptr<AG::Node>,std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::hash<AG::data::ptr<AG::Node>>,std::equal_to<AG::data::ptr<AG::Node>>,true>,std::__unordered_map_equal<AG::data::ptr<AG::Node>,std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::equal_to<AG::data::ptr<AG::Node>>,std::hash<AG::data::ptr<AG::Node>>,true>,std::allocator<std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>>>::__emplace_unique_key_args<AG::data::ptr<AG::Node>,std::piecewise_construct_t const&,std::tuple<AG::data::ptr<AG::Node> const&>,std::tuple<>>(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Category>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Category>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Category>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Category>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Category>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Category>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Category>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Category>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Category>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Category>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Category>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Category>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::pair<unsigned int const,AG::Graph::ProfileData::Category>::~pair((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t AGTypeApplyFields(AG::swift::metadata *a1, uint64_t a2, uint64_t a3)
{
  v4[0] = &unk_1F2CB1E88;
  v4[1] = a2;
  v4[2] = a3;
  return AG::swift::metadata::visit(a1, v4);
}

uint64_t AGTypeApplyEnumData(AG::swift::metadata *a1, void *a2, void (*a3)(void, uint64_t, unint64_t))
{
  v4 = *(a1 - 1);
  if ((*(v4 + 82) & 0x20) == 0)
  {
    AGTypeGetEnumTag_cold_1(a1);
  }

  v7 = (*(v4 + 88))(a2, a1);
  result = AG::swift::metadata::nominal_descriptor(a1);
  if (result)
  {
    v9 = result + 16;
    v10 = *(result + 16);
    if (v10 && ((v10 & 3) != 1 ? (v11 = v10 + v9) : (v11 = *((v10 & 0xFFFFFFFFFFFFFFFCLL) + v9)), v7 < (*(result + 20) & 0xFFFFFFu) && (v12 = v11 + 12 * v7, v15 = *(v12 + 20), v14 = v12 + 20, v13 = v15, v15)))
    {
      result = AG::swift::metadata::mangled_type_name_ref_cached(a1, (v13 + v14), 0);
      if (result)
      {
        v16 = result;
        (*(*(a1 - 1) + 96))(a2, a1);
        v17 = a2;
        if (*(v14 - 4))
        {
          v17 = *a2 + ((*(*(v16 - 8) + 80) + 16) & ~*(*(v16 - 8) + 80));
        }

        a3(v7, v16, v17);
        (*(*(a1 - 1) + 104))(a2, v7, a1);
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

__CFString *AGTypeDescription(AG::swift::metadata *a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  AG::swift::metadata::append_description(a1, Mutable);
  return Mutable;
}

unsigned __int8 *AGTypeGetSignature@<X0>(AG::swift::metadata *a1@<X0>, uint64_t a2@<X8>)
{
  result = AG::swift::metadata::signature(a1);
  if (result)
  {
    *a2 = *result;
    *(a2 + 16) = *(result + 4);
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  return result;
}

_DWORD *AGTypeNominalDescriptorName(AG::swift::metadata *a1)
{
  result = AG::swift::metadata::nominal_descriptor(a1);
  if (result)
  {
    v2 = result[2];
    if (v2)
    {
      return (result + v2 + 8);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t AGTypeApplyFields::Visitor::visit_field(uint64_t a1, AG::swift::metadata *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 + 4);
  if (v8)
  {
    v9 = (v8 + a3 + 4);
  }

  else
  {
    v9 = 0;
  }

  v10 = AG::swift::metadata::mangled_type_name_ref(a2, v9, 1, 0);
  if (v10)
  {
    v11 = v10;
    v12 = *(a3 + 8);
    if (v12)
    {
      v13 = (v12 + a3 + 8);
    }

    else
    {
      v13 = "";
    }

    v14 = *(a1 + 8);
    v15 = *(a1 + 16);
    v14(v13, a4, v11);
  }

  return 1;
}

uint64_t util::string_hash(util *this, const void *a2)
{
  v2 = *this;
  if (!*this)
  {
    return 0;
  }

  result = 0;
  v5 = this + 1;
  do
  {
    result = 33 * result + v2;
    v6 = *v5++;
    v2 = v6;
  }

  while (v6);
  return result;
}

uint64_t *AG::Graph::Context::set_deadline(uint64_t *this, uint64_t a2)
{
  if (this[7] != a2)
  {
    v10[5] = v2;
    v10[6] = v3;
    v5 = this;
    this[7] = a2;
    v6 = *this;
    v7 = *(*this + 176);
    if (v7)
    {
      v8 = 8 * v7 - 8;
      do
      {
        (*(**(*(v6 + 168) + v8) + 312))(*(*(v6 + 168) + v8), a2);
        v8 -= 8;
      }

      while (v8 != -8);
      v6 = *v5;
    }

    v9 = v10;
    v10[0] = -1;
    this = util::UntypedTable::for_each(v6 + 104, util::Table<unsigned long,AG::Graph::Context *>::for_each<AG::Graph::update_deadline(void)::$_0>(AG::Graph::update_deadline(void)::$_0 const&)const::{lambda(void const*,void const*,void const*)#1}::__invoke, &v9);
    *(v6 + 384) = v10[0];
  }

  return this;
}

uint64_t std::tuple<unsigned int,unsigned int,AG::vector<char const*,0ul,unsigned long>>::~tuple(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    free(v2);
  }

  return a1;
}

uint64_t *std::unique_ptr<std::unordered_map<AG::Subgraph *,AG::Graph::TreeDataElement>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = std::__hash_table<std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>,std::__unordered_map_hasher<AG::Subgraph *,std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>,std::hash<AG::Subgraph *>,std::equal_to<AG::Subgraph *>,true>,std::__unordered_map_equal<AG::Subgraph *,std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>,std::equal_to<AG::Subgraph *>,std::hash<AG::Subgraph *>,true>,std::allocator<std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>>>::~__hash_table(v2);
    MEMORY[0x1B8C7ACE0](v3, 0x10A0C408EF24B1CLL);
  }

  return a1;
}

uint64_t *std::unique_ptr<AG::Graph::ProfileData>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::__hash_table<std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Category>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Category>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Category>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Category>>>::~__hash_table(v2 + 144);
    std::__hash_table<std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Item>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Item>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Item>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Item>>>::~__hash_table(v2 + 104);
    std::__hash_table<std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Item>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Item>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Item>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,AG::Graph::ProfileData::Item>>>::~__hash_table(v2 + 64);
    v3 = *(v2 + 40);
    if (v3)
    {
      free(v3);
    }

    MEMORY[0x1B8C7ACE0](v2, 0x10A0C40A5AAE56ELL);
  }

  return a1;
}

void AG::Graph::~Graph(AG::Graph *this)
{
  v2 = *(this + 44);
  if (v2)
  {
    v3 = *(this + 21);
    v4 = 8 * v2;
    do
    {
      v5 = *v3;
      (*(**v3 + 24))(*v3, this);
      (**v5)(v5);
      ++v3;
      v4 -= 8;
    }

    while (v4);
  }

  os_unfair_lock_lock(&AG::Graph::_all_graphs_lock);
  v7 = *this;
  v6 = *(this + 1);
  v8 = &AG::Graph::_all_graphs;
  if (v6)
  {
    v8 = *(this + 1);
  }

  *v8 = v7;
  if (v7)
  {
    *(v7 + 8) = v6;
  }

  os_unfair_lock_unlock(&AG::Graph::_all_graphs_lock);
  v9 = *(this + 76);
  if (v9)
  {
    v10 = *(this + 37);
    v11 = 8 * v9;
    do
    {
      AG::Subgraph::graph_destroyed(*v10++);
      v11 -= 8;
    }

    while (v11);
  }

  v12 = *(this + 43);
  if (v12)
  {
    free(v12);
  }

  v13 = *(this + 39);
  if (v13)
  {
    free(v13);
  }

  v14 = *(this + 37);
  if (v14)
  {
    free(v14);
  }

  std::unique_ptr<AG::Graph::KeyTable>::reset[abi:ne200100](this + 36, 0);
  std::unique_ptr<std::unordered_map<AG::Subgraph *,AG::Graph::TreeDataElement>>::~unique_ptr[abi:ne200100](this + 35);
  std::unique_ptr<AG::Graph::ProfileData>::~unique_ptr[abi:ne200100](this + 32);
  v15 = *(this + 21);
  if (v15)
  {
    free(v15);
  }

  util::UntypedTable::~UntypedTable((this + 104));
  v16 = *(this + 11);
  if (*(this + 24))
  {
    v17 = 0;
    do
    {
      std::unique_ptr<AG::AttributeType,AG::AttributeType::deleter>::reset[abi:ne200100](v16, 0);
      ++v17;
      ++v16;
    }

    while (v17 < *(this + 24));
    v16 = *(this + 11);
  }

  if (v16)
  {
    free(v16);
  }

  util::UntypedTable::~UntypedTable((this + 24));
}

uint64_t AG::Graph::main_context(AG::Graph *this)
{
  v4 = 0;
  v2[0] = &v4;
  v2[1] = &v3;
  v3 = -1;
  util::UntypedTable::for_each(this + 104, util::Table<unsigned long,AG::Graph::Context *>::for_each<AG::Graph::main_context(void)::$_0>(AG::Graph::main_context(void)::$_0 const&)const::{lambda(void const*,void const*,void const*)#1}::__invoke, v2);
  return v4;
}

void *AG::Graph::add_trace(void *this, AG::Trace *a2)
{
  if (a2)
  {
    v3 = this;
    this = (*(*a2 + 16))(a2, this);
    v4 = *(v3 + 176);
    v5 = v4 + 1;
    if (*(v3 + 180) < v4 + 1)
    {
      this = AG::vector<std::pair<unsigned int,BOOL>,0ul,unsigned int>::reserve_slow(v3 + 168, v5);
      v4 = *(v3 + 176);
      v5 = v4 + 1;
    }

    *(*(v3 + 168) + 8 * v4) = a2;
    *(v3 + 176) = v5;
  }

  return this;
}

_DWORD *AG::Graph::remove_trace(_DWORD *this, uint64_t a2)
{
  v2 = this[44];
  if (v2)
  {
    v4 = this;
    v5 = 0;
    do
    {
      this = (*(v4 + 21) + 8 * v5);
      v6 = *this;
      if (*(*this + 8) == a2)
      {
        v7 = v2 - 1;
        v4[44] = v7;
        if (v5 != v7)
        {
          memmove(this, this + 2, 8 * (v7 - v5));
        }

        (*(*v6 + 24))(v6, v4);
        this = (*(*v6 + 8))(v6);
        v2 = v4[44];
      }

      else
      {
        ++v5;
      }
    }

    while (v5 < v2);
  }

  return this;
}

__n128 AG::Graph::call_main_handler(AG::Graph *this, const void *a2, void (*a3)(const void *))
{
  v3 = *(this + 46);
  v8 = this;
  v9 = v3;
  v10 = a2;
  v11 = a3;
  *(this + 46) = 0;
  v5 = (this + 184);
  v7 = *(this + 184);
  v4 = *(this + 23);
  *(this + 23) = 0;
  *(this + 24) = 0;
  v4(AG::Graph::call_main_handler(void const*,void (*)(void const*))::MainTrampoline::thunk, &v8);
  result = v7;
  *v5 = v7;
  *(v8 + 46) = v9;
  return result;
}

void sub_1B492C08C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11)
{
  *v11 = a9;
  *(a10 + 368) = a11;
  _Unwind_Resume(a1);
}

uint64_t AG::Graph::intern_type(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 40) & 0x10) != 0)
  {
    v4 = (*(a2 + 8) + 1);
  }

  else
  {
    v4 = *a2;
  }

  v6 = util::UntypedTable::lookup((a1 + 24), v4, 0);
  if (!v6)
  {
    if (*(a1 + 96) >= 0xFFFFFFu)
    {
      AG::precondition_failure("overflowed max type id: %u", v5, *(a1 + 96));
    }

    v7 = (*(*(a2 + 32) + 48))(a2);
    if (!*(v7 + 44))
    {
      AG::Graph::intern_type(v7, v8);
    }

    v9 = v7;
    v6 = *(a1 + 96);
    v10 = v6 + 1;
    if (*(a1 + 100) < (v6 + 1))
    {
      AG::vector<std::pair<unsigned int,BOOL>,0ul,unsigned int>::reserve_slow(a1 + 88, v10);
      v11 = *(a1 + 96);
      v10 = v11 + 1;
    }

    else
    {
      v11 = *(a1 + 96);
    }

    *(*(a1 + 88) + 8 * v11) = v9;
    *(a1 + 96) = v10;
    util::UntypedTable::insert((a1 + 24), v4, v6);
  }

  return v6;
}

uint64_t AG::Graph::indirect_attribute_dependency(uint64_t a1, const char *a2)
{
  v2 = AG::data::_shared_table_bytes + a2;
  if ((*(v2 + 8) & 1) == 0)
  {
    AG::precondition_failure("not an indirect attribute: %u", a2, a2 | 1);
  }

  return *(v2 + 16);
}

uint64_t AG::Graph::value_mark_all(uint64_t this, const char *a2)
{
  v2 = AG::Graph::_current_update_key;
  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v2);
  if (v3 >= 2 && (v3 & 1) == 0)
  {
    AG::Graph::value_mark_all(this, a2);
  }

  v5 = this;
  v6 = *(this + 304);
  if (v6)
  {
    v7 = *(this + 296);
    v8 = &v7[v6];
    do
    {
      v9 = *v7;
      v10 = *(*v7 + 4);
      if (v10)
      {
        v11 = AG::data::_shared_table_bytes;
        do
        {
          v12 = v10;
          v13 = v11 + v10;
          v14 = *(v13 + 20);
          if (*(v13 + 20))
          {
            do
            {
              v15 = (v14 + v12);
              if (((v14 + v12) & 3u) > 1)
              {
                if (((v14 + v12) & 3) != 3)
                {
                  break;
                }
              }

              else if (((v14 + v12) & 3) != 0)
              {
                v14 = *(v11 + (v15 & 0xFFFFFFFC) + 14);
                if ((v15 & 3) == 0)
                {
                  v23 = v11 + v15;
                  v24 = *(v11 + v15);
                  if ((*(*(*(v5 + 88) + ((v24 >> 5) & 0x7FFFFF8)) + 40) & 0x10) == 0)
                  {
                    *v23 = v24 | 3;
                    v25 = *(v23 + 6);
                    v26 = *(v9 + 25);
                    if ((v25 & ~HIWORD(v26)) != 0)
                    {
                      *(v9 + 25) = v26 & 0xFF00FFFF | ((BYTE2(v26) | v25) << 16);
                      this = AG::Subgraph::propagate_dirty_flags(v9);
                      v11 = AG::data::_shared_table_bytes;
                    }
                  }

                  v27 = *(v23 + 12);
                  if (v27 >= 0x20)
                  {
                    v28 = 5 * (v27 >> 5);
                    v29 = *(v23 + 16) + 4;
                    do
                    {
                      *(v11 + v29) |= 0x10u;
                      v29 += 5;
                      v28 -= 5;
                    }

                    while (v28);
                  }
                }
              }

              else
              {
                v16 = (v11 + v15);
                v14 = *(v16 + 2);
                if ((v15 & 3) == 0)
                {
                  v17 = *v16;
                  if ((*(*(*(v5 + 88) + ((v17 >> 5) & 0x7FFFFF8)) + 40) & 0x10) == 0)
                  {
                    *v16 = v17 | 3;
                    v18 = *(v16 + 6);
                    v19 = *(v9 + 25);
                    if ((v18 & ~HIWORD(v19)) != 0)
                    {
                      *(v9 + 25) = v19 & 0xFF00FFFF | ((BYTE2(v19) | v18) << 16);
                      this = AG::Subgraph::propagate_dirty_flags(v9);
                      v11 = AG::data::_shared_table_bytes;
                    }
                  }

                  v20 = v16[3];
                  if (v20 >= 0x20)
                  {
                    v21 = 5 * (v20 >> 5);
                    v22 = v16[4] + 4;
                    do
                    {
                      *(v11 + v22) |= 0x10u;
                      v22 += 5;
                      v21 -= 5;
                    }

                    while (v21);
                  }
                }
              }
            }

            while (v14);
          }

          v10 = *(v11 + v12 + 8);
        }

        while (v10);
      }

      ++v7;
    }

    while (v7 != v8);
  }

  return this;
}

void *AG::Graph::intern_key(AG::Graph *this, char *a2)
{
  v4 = *(this + 36);
  if (!v4)
  {
    operator new();
  }

  v15 = 0;
  v5 = util::UntypedTable::lookup((v4 + 16), a2, &v15);
  if (v15)
  {
    return v5;
  }

  v7 = strdup(a2);
  if (!v7)
  {
    AG::Graph::intern_key(0, v8);
  }

  v9 = v7;
  v10 = *(this + 36);
  v6 = *(v10 + 8);
  v11 = v6 + 1;
  if (*(v10 + 12) < (v6 + 1))
  {
    AG::vector<std::pair<unsigned int,BOOL>,0ul,unsigned int>::reserve_slow(*(this + 36), v11);
    v13 = *(v10 + 8);
    v12 = *(this + 36);
    v11 = v13 + 1;
  }

  else
  {
    v12 = *(this + 36);
    v13 = *(v10 + 8);
  }

  *(*v10 + 8 * v13) = v9;
  *(v10 + 8) = v11;
  util::UntypedTable::insert((v12 + 16), v9, v6);
  return v6;
}

void sub_1B492C520(_Unwind_Exception *a1)
{
  v4 = AG::vector<std::unique_ptr<char const,util::free_deleter>,0ul,unsigned int>::~vector(v2);
  MEMORY[0x1B8C7ACE0](v4, v1);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<AG::Graph::KeyTable>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    util::UntypedTable::~UntypedTable((v2 + 16));
    v3 = *v2;
    v4 = *(v2 + 8);
    if (v4)
    {
      for (i = 0; i < v4; ++i)
      {
        v6 = v3[i];
        v3[i] = 0;
        if (v6)
        {
          free(v6);
          v4 = *(v2 + 8);
        }
      }

      v3 = *v2;
    }

    if (v3)
    {
      free(v3);
    }

    JUMPOUT(0x1B8C7ACE0);
  }

  return result;
}

uint64_t AG::Graph::key_name(AG::Graph *this, const char *a2)
{
  v2 = *(this + 36);
  if (!v2 || *(v2 + 8) <= a2)
  {
    AG::precondition_failure("invalid string key id: %u", a2, a2);
  }

  return *(*v2 + 8 * a2);
}

int *AG::Graph::TreeDataElement::sort_nodes(int *this)
{
  if ((this[6] & 1) == 0)
  {
    v1 = this;
    v2 = *this;
    v3 = *(v1 + 1);
    v4 = 126 - 2 * __clz(v3);
    if (v3)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    this = std::__introsort<std::_ClassicAlgPolicy,AG::Graph::TreeDataElement::sort_nodes(void)::$_0 &,std::pair<AG::data::ptr<AG::Graph::TreeElement>,AG::data::ptr<AG::Node>> *,false>(v2, &v2[2 * v3], v5, 1);
    *(v1 + 24) = 1;
  }

  return this;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,AG::Graph::index_of_input_slow(AG::Node &,AG::InputEdge::Comparator)::$_0 &,AG::InputEdge*,false>(uint64_t result, unint64_t a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = (a2 - 5);
  v9 = (a2 - 10);
  v10 = (a2 - 15);
  v11 = v7;
  while (1)
  {
    v7 = v11;
    v12 = a2 - v11;
    v13 = 0xCCCCCCCCCCCCCCCDLL * (a2 - v11);
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        v89 = *(a2 - 5);
        v88 = a2 - 5;
        if (v89 >= *v11)
        {
          return result;
        }

        goto LABEL_106;
      }

      goto LABEL_10;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {
      v90 = v11 + 5;
      v95 = *(v11 + 5);
      v96 = (v11 + 10);
      v97 = *(v11 + 10);
      if (v95 >= *v11)
      {
        if (v97 < v95)
        {
          v146 = *(v11 + 9);
          v147 = *v90;
          *v90 = *v96;
          *(v11 + 9) = *(v11 + 14);
          *v96 = v147;
          *(v11 + 14) = v146;
          if (*(v11 + 5) < *v11)
          {
            v211 = *(v11 + 4);
            v185 = *v11;
            *v11 = *v90;
            *(v11 + 4) = *(v11 + 9);
            *v90 = v185;
            *(v11 + 9) = v211;
          }
        }
      }

      else
      {
        if (v97 < v95)
        {
          v209 = *(v11 + 4);
          v183 = *v11;
          *v11 = *v96;
          *(v11 + 4) = *(v11 + 14);
          *v96 = v183;
          v98 = v209;
          goto LABEL_187;
        }

        v213 = *(v11 + 4);
        v187 = *v11;
        *v11 = *v90;
        *(v11 + 4) = *(v11 + 9);
        *v90 = v187;
        *(v11 + 9) = v213;
        if (v97 < *(v11 + 5))
        {
          v98 = *(v11 + 9);
          v157 = *v90;
          *v90 = *v96;
          *(v11 + 9) = *(v11 + 14);
          *v96 = v157;
LABEL_187:
          *(v11 + 14) = v98;
        }
      }

      if (*v8 >= *v96)
      {
        return result;
      }

      v158 = *v96;
      v159 = *(v11 + 14);
      v160 = *(a2 - 1);
      *v96 = *v8;
      *(v11 + 14) = v160;
      *(a2 - 1) = v159;
      *v8 = v158;
      if (*v96 >= *v90)
      {
        return result;
      }

      v161 = *(v11 + 9);
      v162 = *v90;
      *v90 = *v96;
      *(v11 + 9) = *(v11 + 14);
      *v96 = v162;
      *(v11 + 14) = v161;
LABEL_191:
      if (*(v11 + 5) < *v11)
      {
        v214 = *(v11 + 4);
        v188 = *v11;
        *v11 = *v90;
        *(v11 + 4) = *(v90 + 4);
        *v90 = v188;
        *(v90 + 4) = v214;
      }

      return result;
    }

    if (v13 == 5)
    {

      return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,AG::Graph::index_of_input_slow(AG::Node &,AG::InputEdge::Comparator)::$_0 &,AG::InputEdge*,0>(v11, (v11 + 5), (v11 + 10), (v11 + 15), (a2 - 5));
    }

LABEL_10:
    if (v12 <= 119)
    {
      v99 = v11 + 5;
      v101 = v11 == a2 || v99 == a2;
      if (a4)
      {
        if (!v101)
        {
          v102 = 0;
          v103 = v11;
          do
          {
            v104 = v99;
            v105 = *(v103 + 5);
            if (v105 < *v103)
            {
              v106 = *(v103 + 9);
              v107 = v102;
              while (1)
              {
                v108 = v11 + v107;
                *(v108 + 5) = *(v11 + v107);
                *(v108 + 9) = *(v11 + v107 + 4);
                if (!v107)
                {
                  break;
                }

                v107 -= 5;
                if (v105 >= *(v108 - 5))
                {
                  v109 = v11 + v107 + 5;
                  goto LABEL_125;
                }
              }

              v109 = v11;
LABEL_125:
              *v109 = v105;
              *(v109 + 4) = v106;
            }

            v99 = v104 + 5;
            v102 += 5;
            v103 = v104;
          }

          while (v104 + 5 != a2);
        }
      }

      else if (!v101)
      {
        do
        {
          v148 = v99;
          v149 = *(v7 + 5);
          if (v149 < *v7)
          {
            v150 = *(v7 + 9);
            v151 = v148;
            do
            {
              v152 = v151;
              v153 = *(v151 - 5);
              v151 -= 5;
              *v152 = v153;
              *(v152 + 4) = *(v152 - 1);
            }

            while (v149 < *(v152 - 10));
            *v151 = v149;
            *(v151 + 4) = v150;
          }

          v99 = v148 + 5;
          v7 = v148;
        }

        while (v148 + 5 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v11 != a2)
      {
        v110 = (v13 - 2) >> 1;
        v111 = v110;
        do
        {
          v112 = v111;
          if (v110 >= v111)
          {
            v113 = (2 * v111) | 1;
            v114 = (v11 + 5 * v113);
            if (2 * v112 + 2 >= v13)
            {
              v115 = *v114;
            }

            else
            {
              v115 = *(v114 + 5);
              v116 = *v114 >= v115;
              if (*v114 > v115)
              {
                v115 = *v114;
              }

              if (!v116)
              {
                v114 = (v114 + 5);
                v113 = 2 * v112 + 2;
              }
            }

            v117 = (v11 + 5 * v112);
            v118 = *v117;
            if (v115 >= *v117)
            {
              v119 = *(v117 + 4);
              do
              {
                v120 = v117;
                v117 = v114;
                v121 = *v114;
                result = *(v117 + 4);
                *(v120 + 4) = result;
                *v120 = v121;
                if (v110 < v113)
                {
                  break;
                }

                v122 = (2 * v113) | 1;
                v114 = (v11 + 5 * v122);
                v113 = 2 * v113 + 2;
                if (v113 >= v13)
                {
                  result = *v114;
                  v113 = v122;
                }

                else
                {
                  LODWORD(result) = *v114;
                  v123 = *(v114 + 5);
                  result = *v114 <= v123 ? v123 : result;
                  if (*v114 >= v123)
                  {
                    v113 = v122;
                  }

                  else
                  {
                    v114 = (v114 + 5);
                  }
                }
              }

              while (result >= v118);
              *v117 = v118;
              *(v117 + 4) = v119;
            }
          }

          v111 = v112 - 1;
        }

        while (v112);
        v124 = 0xCCCCCCCCCCCCCCCDLL * v12;
        do
        {
          v125 = 0;
          v210 = *(v11 + 4);
          v184 = *v11;
          v126 = v11;
          do
          {
            v127 = v126 + 5 * v125;
            v128 = (v127 + 5);
            v129 = (2 * v125) | 1;
            v125 = 2 * v125 + 2;
            if (v125 >= v124)
            {
              v125 = v129;
            }

            else
            {
              v131 = *(v127 + 10);
              v130 = (v127 + 10);
              result = *(v130 - 5);
              if (result >= v131)
              {
                v125 = v129;
              }

              else
              {
                v128 = v130;
              }
            }

            v132 = *v128;
            *(v126 + 4) = *(v128 + 4);
            *v126 = v132;
            v126 = v128;
          }

          while (v125 <= ((v124 - 2) >> 1));
          a2 -= 5;
          if (v128 == a2)
          {
            *(v128 + 4) = v210;
            *v128 = v184;
          }

          else
          {
            v133 = *a2;
            *(v128 + 4) = *(a2 + 4);
            *v128 = v133;
            *(a2 + 4) = v210;
            *a2 = v184;
            v134 = v128 - v11 + 5;
            if (v134 >= 6)
            {
              v135 = (-2 - 0x3333333333333333 * v134) >> 1;
              v136 = (v11 + 5 * v135);
              v137 = *v128;
              if (*v136 < *v128)
              {
                v138 = *(v128 + 4);
                do
                {
                  v139 = v128;
                  v128 = v136;
                  v140 = *v136;
                  *(v139 + 4) = *(v128 + 4);
                  *v139 = v140;
                  if (!v135)
                  {
                    break;
                  }

                  v141 = v135 - 1;
                  v135 = (v135 - 1) >> 1;
                  v136 = (v11 + 4 * v135 + (v141 >> 1));
                }

                while (*v136 < v137);
                *v128 = v137;
                *(v128 + 4) = v138;
              }
            }
          }
        }

        while (v124-- > 2);
      }

      return result;
    }

    v14 = v13 >> 1;
    v15 = v11 + 5 * (v13 >> 1);
    v16 = *v8;
    if (v12 >= 0x281)
    {
      v17 = *v15;
      if (*v15 >= *v11)
      {
        if (v16 < v17)
        {
          v191 = *(v15 + 4);
          v165 = *v15;
          v21 = *v8;
          *(v15 + 4) = *(a2 - 1);
          *v15 = v21;
          *(a2 - 1) = v191;
          *v8 = v165;
          if (*v15 < *v11)
          {
            v192 = *(v11 + 4);
            v166 = *v11;
            v22 = *v15;
            *(v11 + 4) = *(v15 + 4);
            *v11 = v22;
            *(v15 + 4) = v192;
            *v15 = v166;
          }
        }
      }

      else
      {
        if (v16 < v17)
        {
          v189 = *(v11 + 4);
          v163 = *v11;
          v18 = *v8;
          *(v11 + 4) = *(a2 - 1);
          *v11 = v18;
          goto LABEL_27;
        }

        v195 = *(v11 + 4);
        v169 = *v11;
        v25 = *v15;
        *(v11 + 4) = *(v15 + 4);
        *v11 = v25;
        *(v15 + 4) = v195;
        *v15 = v169;
        if (*v8 < *v15)
        {
          v189 = *(v15 + 4);
          v163 = *v15;
          v26 = *v8;
          *(v15 + 4) = *(a2 - 1);
          *v15 = v26;
LABEL_27:
          *(a2 - 1) = v189;
          *v8 = v163;
        }
      }

      v27 = (v11 + 5);
      v28 = 5 * v14;
      v29 = v28 + v11 - 5;
      v30 = *v29;
      v31 = *v9;
      if (*v29 >= *(v11 + 5))
      {
        if (v31 < v30)
        {
          v196 = *(v28 + v11 - 1);
          v170 = *v29;
          v35 = *v9;
          *(v28 + v11 - 1) = *(a2 - 6);
          *v29 = v35;
          *(a2 - 6) = v196;
          *v9 = v170;
          if (*v29 < *v27)
          {
            v36 = *v27;
            v37 = *(v11 + 9);
            v38 = *(v28 + v11 - 1);
            *v27 = *v29;
            *(v11 + 9) = v38;
            *(v28 + v11 - 1) = v37;
            *v29 = v36;
          }
        }
      }

      else if (v31 >= v30)
      {
        v41 = *v27;
        v42 = *(v11 + 9);
        v43 = *(v28 + v11 - 1);
        *v27 = *v29;
        *(v11 + 9) = v43;
        *(v28 + v11 - 1) = v42;
        *v29 = v41;
        if (*v9 < v41)
        {
          v198 = *(v28 + v11 - 1);
          v172 = *v29;
          v44 = *v9;
          *(v28 + v11 - 1) = *(a2 - 6);
          *v29 = v44;
          *(a2 - 6) = v198;
          *v9 = v172;
        }
      }

      else
      {
        v32 = *v27;
        v33 = *(v11 + 9);
        v34 = *(a2 - 6);
        *v27 = *v9;
        *(v11 + 9) = v34;
        *(a2 - 6) = v33;
        *v9 = v32;
      }

      v45 = (v11 + 10);
      v46 = v28 + v11;
      v49 = *(v46 + 5);
      v47 = v46 + 5;
      v48 = v49;
      v50 = *v10;
      if (v49 >= *(v11 + 10))
      {
        if (v50 < v48)
        {
          v199 = *(v47 + 4);
          v173 = *v47;
          v54 = *v10;
          *(v47 + 4) = *(a2 - 11);
          *v47 = v54;
          *(a2 - 11) = v199;
          *v10 = v173;
          if (*v47 < *v45)
          {
            v55 = *v45;
            v56 = *(v11 + 14);
            v57 = *(v47 + 4);
            *v45 = *v47;
            *(v11 + 14) = v57;
            *(v47 + 4) = v56;
            *v47 = v55;
          }
        }
      }

      else if (v50 >= v48)
      {
        v58 = *v45;
        v59 = *(v11 + 14);
        v60 = *(v47 + 4);
        *v45 = *v47;
        *(v11 + 14) = v60;
        *(v47 + 4) = v59;
        *v47 = v58;
        if (*v10 < v58)
        {
          v200 = *(v47 + 4);
          v174 = *v47;
          v61 = *v10;
          *(v47 + 4) = *(a2 - 11);
          *v47 = v61;
          *(a2 - 11) = v200;
          *v10 = v174;
        }
      }

      else
      {
        v51 = *v45;
        v52 = *(v11 + 14);
        v53 = *(a2 - 11);
        *v45 = *v10;
        *(v11 + 14) = v53;
        *(a2 - 11) = v52;
        *v10 = v51;
      }

      v62 = *v15;
      v63 = *v47;
      if (*v15 >= *v29)
      {
        if (v63 < v62)
        {
          v202 = *(v15 + 4);
          v176 = *v15;
          *v15 = *v47;
          *(v15 + 4) = *(v47 + 4);
          *(v47 + 4) = v202;
          *v47 = v176;
          if (*v15 < *v29)
          {
            v203 = *(v29 + 4);
            v177 = *v29;
            *v29 = *v15;
            *(v29 + 4) = *(v15 + 4);
            *(v15 + 4) = v203;
            *v15 = v177;
          }
        }
      }

      else
      {
        if (v63 < v62)
        {
          v201 = *(v29 + 4);
          v175 = *v29;
          *v29 = *v47;
          *(v29 + 4) = *(v47 + 4);
          goto LABEL_55;
        }

        v204 = *(v29 + 4);
        v178 = *v29;
        *v29 = *v15;
        *(v29 + 4) = *(v15 + 4);
        *(v15 + 4) = v204;
        *v15 = v178;
        if (*v47 < *v15)
        {
          v201 = *(v15 + 4);
          v175 = *v15;
          *v15 = *v47;
          *(v15 + 4) = *(v47 + 4);
LABEL_55:
          *(v47 + 4) = v201;
          *v47 = v175;
        }
      }

      v205 = *(v11 + 4);
      v179 = *v11;
      v64 = *v15;
      *(v11 + 4) = *(v15 + 4);
      *v11 = v64;
      *(v15 + 4) = v205;
      *v15 = v179;
      goto LABEL_57;
    }

    v19 = *v11;
    if (*v11 >= *v15)
    {
      if (v16 < v19)
      {
        v193 = *(v11 + 4);
        v167 = *v11;
        v23 = *v8;
        *(v11 + 4) = *(a2 - 1);
        *v11 = v23;
        *(a2 - 1) = v193;
        *v8 = v167;
        if (*v11 < *v15)
        {
          v194 = *(v15 + 4);
          v168 = *v15;
          v24 = *v11;
          *(v15 + 4) = *(v11 + 4);
          *v15 = v24;
          *(v11 + 4) = v194;
          *v11 = v168;
        }
      }

      goto LABEL_57;
    }

    if (v16 >= v19)
    {
      v197 = *(v15 + 4);
      v171 = *v15;
      v39 = *v11;
      *(v15 + 4) = *(v11 + 4);
      *v15 = v39;
      *(v11 + 4) = v197;
      *v11 = v171;
      if (*v8 >= *v11)
      {
        goto LABEL_57;
      }

      v190 = *(v11 + 4);
      v164 = *v11;
      v40 = *v8;
      *(v11 + 4) = *(a2 - 1);
      *v11 = v40;
    }

    else
    {
      v190 = *(v15 + 4);
      v164 = *v15;
      v20 = *v8;
      *(v15 + 4) = *(a2 - 1);
      *v15 = v20;
    }

    *(a2 - 1) = v190;
    *v8 = v164;
LABEL_57:
    --a3;
    v65 = *v11;
    if ((a4 & 1) != 0 || *(v11 - 5) < v65)
    {
      v66 = 0;
      v67 = *(v11 + 4);
      do
      {
        v68 = *(v11 + v66 + 5);
        v66 += 5;
      }

      while (v68 < v65);
      v69 = v11 + v66;
      v70 = a2;
      if (v66 == 5)
      {
        v70 = a2;
        do
        {
          if (v69 >= v70)
          {
            break;
          }

          v72 = *(v70 - 5);
          v70 -= 5;
        }

        while (v72 >= v65);
      }

      else
      {
        do
        {
          v71 = *(v70 - 5);
          v70 -= 5;
        }

        while (v71 >= v65);
      }

      v11 += v66;
      if (v69 < v70)
      {
        v73 = v70;
        do
        {
          v206 = *(v11 + 4);
          v180 = *v11;
          v74 = *v73;
          *(v11 + 4) = *(v73 + 4);
          *v11 = v74;
          *(v73 + 4) = v206;
          *v73 = v180;
          do
          {
            v75 = *(v11 + 5);
            v11 += 5;
          }

          while (v75 < v65);
          do
          {
            v76 = *(v73 - 5);
            v73 -= 5;
          }

          while (v76 >= v65);
        }

        while (v11 < v73);
      }

      if (v11 - 5 != v7)
      {
        v77 = *(v11 - 5);
        *(v7 + 4) = *(v11 - 1);
        *v7 = v77;
      }

      *(v11 - 5) = v65;
      *(v11 - 1) = v67;
      if (v69 < v70)
      {
        goto LABEL_78;
      }

      v78 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,AG::Graph::index_of_input_slow(AG::Node &,AG::InputEdge::Comparator)::$_0 &,AG::InputEdge*>(v7, v11 - 5);
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,AG::Graph::index_of_input_slow(AG::Node &,AG::InputEdge::Comparator)::$_0 &,AG::InputEdge*>(v11, a2);
      if (result)
      {
        a2 = v11 - 5;
        if (!v78)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v78)
      {
LABEL_78:
        result = std::__introsort<std::_ClassicAlgPolicy,AG::Graph::index_of_input_slow(AG::Node &,AG::InputEdge::Comparator)::$_0 &,AG::InputEdge*,false>(v7, v11 - 5, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      if (v65 >= *v8)
      {
        v80 = v11 + 5;
        do
        {
          v11 = v80;
          if (v80 >= a2)
          {
            break;
          }

          v80 += 5;
        }

        while (v65 >= *v11);
      }

      else
      {
        do
        {
          v79 = *(v11 + 5);
          v11 += 5;
        }

        while (v65 >= v79);
      }

      v81 = a2;
      if (v11 < a2)
      {
        v81 = a2;
        do
        {
          v82 = *(v81 - 5);
          v81 -= 5;
        }

        while (v65 < v82);
      }

      v83 = *(v7 + 4);
      while (v11 < v81)
      {
        v207 = *(v11 + 4);
        v181 = *v11;
        v84 = *v81;
        *(v11 + 4) = *(v81 + 4);
        *v11 = v84;
        *(v81 + 4) = v207;
        *v81 = v181;
        do
        {
          v85 = *(v11 + 5);
          v11 += 5;
        }

        while (v65 >= v85);
        do
        {
          v86 = *(v81 - 5);
          v81 -= 5;
        }

        while (v65 < v86);
      }

      if (v11 - 5 != v7)
      {
        v87 = *(v11 - 5);
        *(v7 + 4) = *(v11 - 1);
        *v7 = v87;
      }

      a4 = 0;
      *(v11 - 5) = v65;
      *(v11 - 1) = v83;
    }
  }

  v90 = v11 + 5;
  v91 = *(v11 + 5);
  v93 = *(a2 - 5);
  v88 = a2 - 5;
  v92 = v93;
  if (v91 >= *v11)
  {
    if (v92 >= v91)
    {
      return result;
    }

    v143 = *v90;
    v144 = *(v11 + 9);
    v145 = *(v88 + 4);
    *v90 = *v88;
    *(v11 + 9) = v145;
    *(v88 + 4) = v144;
    *v88 = v143;
    goto LABEL_191;
  }

  if (v92 < v91)
  {
LABEL_106:
    v208 = *(v11 + 4);
    v182 = *v11;
    v94 = *v88;
    *(v11 + 4) = *(v88 + 4);
    *v11 = v94;
    *(v88 + 4) = v208;
    *v88 = v182;
    return result;
  }

  v212 = *(v11 + 4);
  v186 = *v11;
  *v11 = *v90;
  *(v11 + 4) = *(v11 + 9);
  *v90 = v186;
  *(v11 + 9) = v212;
  if (*v88 < *(v11 + 5))
  {
    v154 = *v90;
    v155 = *(v11 + 9);
    v156 = *(v88 + 4);
    *v90 = *v88;
    *(v11 + 9) = v156;
    *(v88 + 4) = v155;
    *v88 = v154;
  }

  return result;
}

unsigned int *std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,AG::Graph::index_of_input_slow(AG::Node &,AG::InputEdge::Comparator)::$_0 &,AG::InputEdge*,0>(unsigned int *result, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5)
{
  v5 = *a2;
  v6 = *a3;
  if (*a2 >= *result)
  {
    if (v6 < v5)
    {
      v10 = *(a2 + 4);
      v11 = *a2;
      v12 = *(a3 + 4);
      *a2 = *a3;
      *(a2 + 4) = v12;
      *a3 = v11;
      *(a3 + 4) = v10;
      if (*a2 < *result)
      {
        v13 = *(result + 4);
        v14 = *result;
        v15 = *(a2 + 4);
        *result = *a2;
        *(result + 4) = v15;
        *a2 = v14;
        *(a2 + 4) = v13;
      }
    }
  }

  else
  {
    if (v6 < v5)
    {
      v7 = *(result + 4);
      v8 = *result;
      v9 = *(a3 + 4);
      *result = *a3;
      *(result + 4) = v9;
LABEL_9:
      *a3 = v8;
      *(a3 + 4) = v7;
      goto LABEL_10;
    }

    v16 = *(result + 4);
    v17 = *result;
    v18 = *(a2 + 4);
    *result = *a2;
    *(result + 4) = v18;
    *a2 = v17;
    *(a2 + 4) = v16;
    if (*a3 < v17)
    {
      v7 = *(a2 + 4);
      v8 = *a2;
      v19 = *(a3 + 4);
      *a2 = *a3;
      *(a2 + 4) = v19;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*a4 < *a3)
  {
    v20 = *(a3 + 4);
    v21 = *a3;
    v22 = *(a4 + 4);
    *a3 = *a4;
    *(a3 + 4) = v22;
    *a4 = v21;
    *(a4 + 4) = v20;
    if (*a3 < *a2)
    {
      v23 = *(a2 + 4);
      v24 = *a2;
      v25 = *(a3 + 4);
      *a2 = *a3;
      *(a2 + 4) = v25;
      *a3 = v24;
      *(a3 + 4) = v23;
      if (*a2 < *result)
      {
        v26 = *(result + 4);
        v27 = *result;
        v28 = *(a2 + 4);
        *result = *a2;
        *(result + 4) = v28;
        *a2 = v27;
        *(a2 + 4) = v26;
      }
    }
  }

  if (*a5 < *a4)
  {
    v29 = *(a4 + 4);
    v30 = *a4;
    v31 = *(a5 + 4);
    *a4 = *a5;
    *(a4 + 4) = v31;
    *a5 = v30;
    *(a5 + 4) = v29;
    if (*a4 < *a3)
    {
      v32 = *(a3 + 4);
      v33 = *a3;
      v34 = *(a4 + 4);
      *a3 = *a4;
      *(a3 + 4) = v34;
      *a4 = v33;
      *(a4 + 4) = v32;
      if (*a3 < *a2)
      {
        v35 = *(a2 + 4);
        v36 = *a2;
        v37 = *(a3 + 4);
        *a2 = *a3;
        *(a2 + 4) = v37;
        *a3 = v36;
        *(a3 + 4) = v35;
        if (*a2 < *result)
        {
          v38 = *(result + 4);
          v39 = *result;
          v40 = *(a2 + 4);
          *result = *a2;
          *(result + 4) = v40;
          *a2 = v39;
          *(a2 + 4) = v38;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,AG::Graph::index_of_input_slow(AG::Node &,AG::InputEdge::Comparator)::$_0 &,AG::InputEdge*>(uint64_t a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * (a2 - a1);
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v5 = a1 + 5;
      v6 = *(a1 + 5);
      v8 = *(a2 - 5);
      v3 = a2 - 5;
      v7 = v8;
      if (v6 < *a1)
      {
        if (v7 >= v6)
        {
          v37 = *(a1 + 4);
          v38 = *a1;
          *a1 = *v5;
          *(a1 + 4) = *(a1 + 9);
          *v5 = v38;
          *(a1 + 9) = v37;
          if (*v3 < *(a1 + 5))
          {
            v39 = *(a1 + 9);
            v40 = *v5;
            v41 = *(v3 + 4);
            *v5 = *v3;
            *(a1 + 9) = v41;
            *v3 = v40;
            *(v3 + 4) = v39;
          }

          return 1;
        }

LABEL_12:
        v9 = *(a1 + 4);
        v10 = *a1;
        v11 = *(v3 + 4);
        *a1 = *v3;
        *(a1 + 4) = v11;
        *v3 = v10;
        *(v3 + 4) = v9;
        return 1;
      }

      if (v7 >= v6)
      {
        return 1;
      }

      v26 = *(a1 + 9);
      v27 = *v5;
      v28 = *(v3 + 4);
      *v5 = *v3;
      *(a1 + 9) = v28;
      *v3 = v27;
      *(v3 + 4) = v26;
LABEL_48:
      if (*(a1 + 5) < *a1)
      {
        v61 = *(a1 + 4);
        v62 = *a1;
        *a1 = *v5;
        *(a1 + 4) = *(v5 + 4);
        *v5 = v62;
        *(v5 + 4) = v61;
      }

      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,AG::Graph::index_of_input_slow(AG::Node &,AG::InputEdge::Comparator)::$_0 &,AG::InputEdge*,0>(a1, (a1 + 5), (a1 + 10), (a1 + 15), (a2 - 5));
      return 1;
    }

    v5 = a1 + 5;
    v19 = *(a1 + 5);
    v20 = (a1 + 10);
    v21 = *(a1 + 10);
    v22 = (a2 - 5);
    v23 = *a1;
    if (v19 >= *a1)
    {
      if (v21 < v19)
      {
        v33 = *(a1 + 9);
        v34 = *v5;
        *v5 = *v20;
        *(a1 + 9) = *(a1 + 14);
        *v20 = v34;
        *(a1 + 14) = v33;
        if (*v5 < v23)
        {
          v35 = *(a1 + 4);
          v36 = *a1;
          *a1 = *v5;
          *(a1 + 4) = *(a1 + 9);
          *v5 = v36;
          *(a1 + 9) = v35;
        }
      }

      goto LABEL_45;
    }

    if (v21 >= v19)
    {
      v54 = *(a1 + 4);
      v55 = *a1;
      *a1 = *v5;
      *(a1 + 4) = *(a1 + 9);
      *v5 = v55;
      *(a1 + 9) = v54;
      if (v21 >= *(a1 + 5))
      {
        goto LABEL_45;
      }

      v24 = *(a1 + 9);
      v25 = *v5;
      *v5 = *v20;
      *(a1 + 9) = *(a1 + 14);
    }

    else
    {
      v24 = *(a1 + 4);
      v25 = *a1;
      *a1 = *v20;
      *(a1 + 4) = *(a1 + 14);
    }

    *v20 = v25;
    *(a1 + 14) = v24;
LABEL_45:
    if (*v22 >= *v20)
    {
      return 1;
    }

    v56 = *(a1 + 14);
    v57 = *v20;
    v58 = *(a2 - 1);
    *v20 = *v22;
    *(a1 + 14) = v58;
    *v22 = v57;
    *(a2 - 1) = v56;
    if (*v20 >= *v5)
    {
      return 1;
    }

    v59 = *(a1 + 9);
    v60 = *v5;
    *v5 = *v20;
    *(a1 + 9) = *(a1 + 14);
    *v20 = v60;
    *(a1 + 14) = v59;
    goto LABEL_48;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v4 = *(a2 - 5);
    v3 = a2 - 5;
    if (v4 >= *a1)
    {
      return 1;
    }

    goto LABEL_12;
  }

LABEL_13:
  v12 = (a1 + 10);
  v13 = *(a1 + 10);
  v14 = (a1 + 5);
  v15 = *(a1 + 5);
  v16 = *a1;
  if (v15 >= *a1)
  {
    if (v13 < v15)
    {
      v29 = *(a1 + 9);
      v30 = *v14;
      *v14 = *v12;
      *(a1 + 9) = *(a1 + 14);
      *v12 = v30;
      *(a1 + 14) = v29;
      if (*v14 < v16)
      {
        v31 = *(a1 + 4);
        v32 = *a1;
        *a1 = *v14;
        *(a1 + 4) = *(a1 + 9);
        *v14 = v32;
        *(a1 + 9) = v31;
      }
    }
  }

  else if (v13 >= v15)
  {
    v42 = *(a1 + 4);
    v43 = *a1;
    *a1 = *v14;
    *(a1 + 4) = *(a1 + 9);
    *v14 = v43;
    *(a1 + 9) = v42;
    if (v13 < *(a1 + 5))
    {
      v44 = *(a1 + 9);
      v45 = *v14;
      *v14 = *v12;
      *(a1 + 9) = *(a1 + 14);
      *v12 = v45;
      *(a1 + 14) = v44;
    }
  }

  else
  {
    v17 = *(a1 + 4);
    v18 = *a1;
    *a1 = *v12;
    *(a1 + 4) = *(a1 + 14);
    *v12 = v18;
    *(a1 + 14) = v17;
  }

  v46 = a1 + 15;
  if (a1 + 15 == a2)
  {
    return 1;
  }

  v47 = 0;
  v48 = 0;
  while (1)
  {
    v49 = *v46;
    if (*v46 < *v12)
    {
      v50 = *(v46 + 4);
      v51 = v47;
      while (1)
      {
        v52 = a1 + v51;
        *(v52 + 15) = *(a1 + v51 + 10);
        *(v52 + 19) = *(a1 + v51 + 14);
        if (v51 == -10)
        {
          break;
        }

        v51 -= 5;
        if (v49 >= *(v52 + 5))
        {
          v53 = a1 + v51 + 15;
          goto LABEL_39;
        }
      }

      v53 = a1;
LABEL_39:
      *v53 = v49;
      *(v53 + 4) = v50;
      if (++v48 == 8)
      {
        return v46 + 5 == a2;
      }
    }

    v12 = v46;
    v47 += 5;
    v46 += 5;
    if (v46 == a2)
    {
      return 1;
    }
  }
}

uint64_t AG::vector<std::unique_ptr<char const,util::free_deleter>,0ul,unsigned int>::~vector(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    for (i = 0; i < v3; ++i)
    {
      v5 = v2[i];
      v2[i] = 0;
      if (v5)
      {
        free(v5);
        v3 = *(a1 + 8);
      }
    }

    v2 = *a1;
  }

  if (v2)
  {
    free(v2);
  }

  return a1;
}

int *std::__introsort<std::_ClassicAlgPolicy,AG::Graph::TreeDataElement::sort_nodes(void)::$_0 &,std::pair<AG::data::ptr<AG::Graph::TreeElement>,AG::data::ptr<AG::Node>> *,false>(int *result, char *a2, uint64_t a3, char a4)
{
  v7 = result;
  while (2)
  {
    v8 = a2 - 4;
    v9 = v7;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v7 = v9;
          v10 = (a2 - v9) >> 3;
          if (v10 > 2)
          {
            switch(v10)
            {
              case 3:
                v95 = v9[2];
                v96 = *v9;
                v97 = *(a2 - 2);
                if (v95 >= *v9)
                {
                  if (v97 >= v95)
                  {
                    return result;
                  }

                  v9[2] = v97;
                  *(a2 - 2) = v95;
                  v8 = (v9 + 3);
                  v149 = v9[3];
                  v9[3] = *(a2 - 1);
                  *(a2 - 1) = v149;
                  v150 = v9[2];
                  v151 = *v9;
                  if (v150 >= *v9)
                  {
                    return result;
                  }

                  *v9 = v150;
                  v9[2] = v151;
                  v98 = (v9 + 1);
                }

                else
                {
                  if (v97 >= v95)
                  {
                    v98 = (v9 + 3);
                    v162 = v9[3];
                    v163 = v9[1];
                    *v9 = v95;
                    v9[1] = v162;
                    v9[2] = v96;
                    v9[3] = v163;
                    v164 = *(a2 - 2);
                    if (v164 >= v96)
                    {
                      return result;
                    }

                    v9[2] = v164;
                  }

                  else
                  {
                    v98 = (v9 + 1);
                    *v9 = v97;
                  }

                  *(a2 - 2) = v96;
                }

                v165 = *v98;
                *v98 = *v8;
                *v8 = v165;
                return result;
              case 4:
                v99 = v9[2];
                v100 = *v9;
                v101 = v9[4];
                if (v99 >= *v9)
                {
                  if (v101 < v99)
                  {
                    v152 = (v9 + 3);
                    v153 = v9[3];
                    v154 = v9[5];
                    v9[2] = v101;
                    v9[3] = v154;
                    v9[4] = v99;
                    v9[5] = v153;
                    if (v101 < v100)
                    {
                      *v9 = v101;
                      v9[2] = v100;
                      v102 = (v9 + 1);
                      goto LABEL_204;
                    }

LABEL_206:
                    v169 = *(a2 - 2);
                    if (v169 < v99)
                    {
                      v9[4] = v169;
                      *(a2 - 2) = v99;
                      v170 = v9[5];
                      v9[5] = *(a2 - 1);
                      *(a2 - 1) = v170;
                      v171 = v9[4];
                      v172 = v9[2];
                      if (v171 < v172)
                      {
                        v173 = v9[3];
                        v174 = v9[5];
                        v9[2] = v171;
                        v9[3] = v174;
                        v9[4] = v172;
                        v9[5] = v173;
                        v175 = *v9;
                        if (v171 < *v9)
                        {
                          v176 = v9[1];
                          *v9 = v171;
                          v9[1] = v174;
                          v9[2] = v175;
                          v9[3] = v176;
                        }
                      }
                    }

                    return result;
                  }
                }

                else
                {
                  if (v101 < v99)
                  {
                    v102 = (v9 + 1);
                    *v9 = v101;
                    goto LABEL_203;
                  }

                  v102 = (v9 + 3);
                  v166 = v9[3];
                  v167 = v9[1];
                  *v9 = v99;
                  v9[1] = v166;
                  v9[2] = v100;
                  v9[3] = v167;
                  if (v101 < v100)
                  {
                    v9[2] = v101;
LABEL_203:
                    v9[4] = v100;
                    v152 = (v9 + 5);
LABEL_204:
                    v168 = *v102;
                    *v102 = *v152;
                    *v152 = v168;
                    v99 = v9[4];
                    goto LABEL_206;
                  }
                }

                v99 = v101;
                goto LABEL_206;
              case 5:

                return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,AG::Graph::TreeDataElement::sort_nodes(void)::$_0 &,std::pair<AG::data::ptr<AG::Graph::TreeElement>,AG::data::ptr<AG::Node>> *,0>(v9, v9 + 2, v9 + 4, v9 + 6, a2 - 2);
            }
          }

          else
          {
            if (v10 < 2)
            {
              return result;
            }

            if (v10 == 2)
            {
              v92 = *(a2 - 2);
              v93 = *v9;
              if (v92 < *v9)
              {
                *v9 = v92;
                *(a2 - 2) = v93;
                v94 = v9[1];
                v9[1] = *(a2 - 1);
                *(a2 - 1) = v94;
              }

              return result;
            }
          }

          if (v10 <= 23)
          {
            v103 = (v9 + 2);
            v105 = v9 == a2 || v103 == a2;
            if (a4)
            {
              if (!v105)
              {
                v106 = 0;
                v107 = v9;
                do
                {
                  v108 = v107[2];
                  v109 = *v107;
                  v107 = v103;
                  if (v108 < v109)
                  {
                    v111 = *v103;
                    v110 = *(v103 + 1);
                    v112 = v106;
                    while (1)
                    {
                      v113 = v9 + v112;
                      v114 = *(v9 + v112 + 4);
                      *(v113 + 2) = v109;
                      *(v113 + 3) = v114;
                      if (!v112)
                      {
                        break;
                      }

                      v109 = *(v113 - 2);
                      v112 -= 8;
                      if (v109 <= v111)
                      {
                        v115 = (v9 + v112 + 8);
                        goto LABEL_137;
                      }
                    }

                    v115 = v9;
LABEL_137:
                    *v115 = v111;
                    v115[1] = v110;
                  }

                  v103 = (v107 + 2);
                  v106 += 8;
                }

                while (v107 + 2 != a2);
              }
            }

            else if (!v105)
            {
              v155 = v9 + 3;
              do
              {
                v156 = v7[2];
                v157 = *v7;
                v7 = v103;
                if (v156 < v157)
                {
                  v158 = *v103;
                  v159 = v155;
                  do
                  {
                    v160 = v159;
                    v161 = *(v159 - 2);
                    v159 -= 2;
                    *(v160 - 1) = v157;
                    *v160 = v161;
                    v157 = *(v160 - 5);
                  }

                  while (v157 > v158);
                  *(v159 - 1) = v158;
                }

                v103 = (v7 + 2);
                v155 += 2;
              }

              while (v7 + 2 != a2);
            }

            return result;
          }

          if (!a3)
          {
            if (v9 != a2)
            {
              v116 = (v10 - 2) >> 1;
              v117 = v116;
              do
              {
                v118 = v117;
                if (v116 >= v117)
                {
                  v119 = (2 * v117) | 1;
                  v120 = &v9[2 * v119];
                  if (2 * v118 + 2 >= v10)
                  {
                    v121 = *v120;
                  }

                  else
                  {
                    v121 = *v120;
                    v122 = v120[2];
                    if (*v120 <= v122)
                    {
                      v121 = v120[2];
                    }

                    if (*v120 < v122)
                    {
                      v120 += 2;
                      v119 = 2 * v118 + 2;
                    }
                  }

                  v123 = &v9[2 * v118];
                  if (v121 >= *v123)
                  {
                    v124 = *v123;
                    v125 = v123[1];
                    do
                    {
                      v126 = v123;
                      v123 = v120;
                      *v126 = v121;
                      v126[1] = v120[1];
                      if (v116 < v119)
                      {
                        break;
                      }

                      v127 = (2 * v119) | 1;
                      v120 = &v9[2 * v127];
                      v119 = 2 * v119 + 2;
                      if (v119 >= v10)
                      {
                        v121 = *v120;
                        v119 = v127;
                      }

                      else
                      {
                        v121 = *v120;
                        result = (v120 + 2);
                        v128 = v120[2];
                        if (*v120 <= v128)
                        {
                          v121 = v120[2];
                        }

                        if (*v120 >= v128)
                        {
                          v119 = v127;
                        }

                        else
                        {
                          v120 += 2;
                        }
                      }
                    }

                    while (v121 >= v124);
                    *v123 = v124;
                    v123[1] = v125;
                  }
                }

                v117 = v118 - 1;
              }

              while (v118);
              do
              {
                v129 = 0;
                v130 = *v9;
                v131 = v9;
                do
                {
                  v132 = &v131[2 * v129];
                  v133 = (v132 + 2);
                  v134 = (2 * v129) | 1;
                  v129 = 2 * v129 + 2;
                  if (v129 >= v10)
                  {
                    v135 = *v133;
                    v129 = v134;
                  }

                  else
                  {
                    v137 = v132[4];
                    v136 = (v132 + 4);
                    v135 = v137;
                    v138 = *(v136 - 2);
                    v139 = v138 >= v137;
                    if (v138 > v137)
                    {
                      v135 = *(v136 - 2);
                    }

                    if (v139)
                    {
                      v129 = v134;
                    }

                    else
                    {
                      v133 = v136;
                    }
                  }

                  *v131 = v135;
                  v131[1] = *(v133 + 1);
                  v131 = v133;
                }

                while (v129 <= ((v10 - 2) >> 1));
                if (v133 == a2 - 8)
                {
                  *v133 = v130;
                }

                else
                {
                  *v133 = *(a2 - 2);
                  *(v133 + 1) = *(a2 - 1);
                  *(a2 - 1) = v130;
                  v140 = (v133 - v9 + 8) >> 3;
                  v141 = v140 < 2;
                  v142 = v140 - 2;
                  if (!v141)
                  {
                    v143 = v142 >> 1;
                    v144 = &v9[2 * v143];
                    v145 = *v144;
                    if (*v144 < *v133)
                    {
                      v146 = *v133;
                      v147 = *(v133 + 1);
                      do
                      {
                        v148 = v133;
                        v133 = v144;
                        *v148 = v145;
                        *(v148 + 1) = *(v144 + 1);
                        if (!v143)
                        {
                          break;
                        }

                        v143 = (v143 - 1) >> 1;
                        v144 = &v9[2 * v143];
                        v145 = *v144;
                      }

                      while (*v144 < v146);
                      *v133 = v146;
                      *(v133 + 1) = v147;
                    }
                  }
                }

                a2 -= 8;
                v141 = v10-- <= 2;
              }

              while (!v141);
            }

            return result;
          }

          v11 = &v9[2 * (v10 >> 1)];
          v12 = v11;
          v13 = *(a2 - 2);
          if (v10 >= 0x81)
          {
            v14 = *v11;
            v15 = *v9;
            if (*v11 >= *v9)
            {
              if (v13 >= v14 || (*v11 = v13, *(a2 - 2) = v14, v21 = (v11 + 1), v20 = v11[1], v11[1] = *(a2 - 1), *(a2 - 1) = v20, v22 = *v9, *v11 >= *v9))
              {
LABEL_29:
                v30 = v11 - 2;
                v31 = *(v11 - 2);
                v32 = v9[2];
                v33 = *(a2 - 4);
                if (v31 >= v32)
                {
                  if (v33 >= v31 || (*v30 = v33, *(a2 - 4) = v31, v36 = (v11 - 1), v35 = *(v11 - 1), *(v11 - 1) = *(a2 - 3), *(a2 - 3) = v35, v37 = v9[2], *v30 >= v37))
                  {
LABEL_42:
                    v47 = v11[2];
                    v45 = v11 + 2;
                    v46 = v47;
                    v48 = v9[4];
                    v49 = *(a2 - 6);
                    if (v47 >= v48)
                    {
                      if (v49 < v46)
                      {
                        *v45 = v49;
                        *(a2 - 6) = v46;
                        v52 = (v45 + 1);
                        v51 = v45[1];
                        v45[1] = *(a2 - 5);
                        *(a2 - 5) = v51;
                        v46 = *v45;
                        v53 = v9[4];
                        if (*v45 < v53)
                        {
                          v9[4] = v46;
                          *v45 = v53;
                          v50 = (v9 + 5);
LABEL_51:
                          v57 = *v50;
                          *v50 = *v52;
                          *v52 = v57;
                          v46 = *v45;
                        }
                      }
                    }

                    else
                    {
                      if (v49 < v46)
                      {
                        v50 = (v9 + 5);
                        v9[4] = v49;
LABEL_50:
                        *(a2 - 6) = v48;
                        v52 = a2 - 20;
                        goto LABEL_51;
                      }

                      v50 = (v45 + 1);
                      v54 = v45[1];
                      v55 = v9[5];
                      v9[4] = v46;
                      v9[5] = v54;
                      *v45 = v48;
                      v45[1] = v55;
                      v56 = *(a2 - 6);
                      if (v56 < v48)
                      {
                        *v45 = v56;
                        goto LABEL_50;
                      }

                      v46 = v48;
                    }

                    v58 = *v12;
                    v59 = *v30;
                    if (*v12 >= *v30)
                    {
                      if (v46 >= v58)
                      {
LABEL_62:
                        v67 = *v9;
                        *v9 = v58;
                        v19 = (v9 + 1);
                        *v12 = v67;
                        v25 = (v12 + 1);
                        goto LABEL_63;
                      }

                      v62 = (v12 + 1);
                      v63 = v12[1];
                      *v12 = v46;
                      v12[1] = v45[1];
                      *v45 = v58;
                      v45[1] = v63;
                      if (v46 >= v59)
                      {
                        v58 = v46;
                        goto LABEL_62;
                      }

                      *v30 = v46;
                      v60 = (v30 + 1);
                      *v12 = v59;
                    }

                    else
                    {
                      if (v46 >= v58)
                      {
                        v64 = v12[1];
                        *v12 = v59;
                        v65 = v30[1];
                        *v30 = v58;
                        v30[1] = v64;
                        v12[1] = v65;
                        if (v46 >= v59)
                        {
                          v58 = v59;
                          goto LABEL_62;
                        }

                        *v12 = v46;
                        *v45 = v59;
                        v61 = (v45 + 1);
                        v60 = (v12 + 1);
                      }

                      else
                      {
                        *v30 = v46;
                        v60 = (v30 + 1);
                        *v45 = v59;
                        v61 = (v45 + 1);
                      }

                      v62 = v61;
                    }

                    v66 = *v60;
                    *v60 = *v62;
                    *v62 = v66;
                    v58 = *v12;
                    goto LABEL_62;
                  }

                  v9[2] = *v30;
                  *v30 = v37;
                  v34 = v9 + 3;
                }

                else
                {
                  if (v33 >= v31)
                  {
                    v34 = v11 - 1;
                    v41 = *(v11 - 1);
                    v42 = v9[3];
                    v9[2] = v31;
                    v9[3] = v41;
                    *v30 = v32;
                    *(v11 - 1) = v42;
                    v43 = *(a2 - 4);
                    if (v43 >= v32)
                    {
                      goto LABEL_42;
                    }

                    *v30 = v43;
                  }

                  else
                  {
                    v34 = v9 + 3;
                    v9[2] = v33;
                  }

                  *(a2 - 4) = v32;
                  v36 = a2 - 12;
                }

                v44 = *v34;
                *v34 = *v36;
                *v36 = v44;
                goto LABEL_42;
              }

              *v9 = *v11;
              v16 = (v9 + 1);
              *v11 = v22;
            }

            else
            {
              if (v13 >= v14)
              {
                v16 = (v11 + 1);
                v26 = v11[1];
                v27 = v9[1];
                *v9 = v14;
                v9[1] = v26;
                *v11 = v15;
                v11[1] = v27;
                v28 = *(a2 - 2);
                if (v28 >= v15)
                {
                  goto LABEL_29;
                }

                *v11 = v28;
              }

              else
              {
                v16 = (v9 + 1);
                *v9 = v13;
              }

              *(a2 - 2) = v15;
              v21 = a2 - 4;
            }

            v29 = *v16;
            *v16 = *v21;
            *v21 = v29;
            goto LABEL_29;
          }

          v17 = *v9;
          v18 = *v11;
          if (*v9 >= *v11)
          {
            if (v13 < v17)
            {
              *v9 = v13;
              *(a2 - 2) = v17;
              v23 = v9[1];
              v9[1] = *(a2 - 1);
              *(a2 - 1) = v23;
              v24 = *v12;
              if (*v9 < *v12)
              {
                *v12 = *v9;
                *v9 = v24;
                v19 = (v12 + 1);
                v25 = (v9 + 1);
LABEL_63:
                v68 = *v19;
                *v19 = *v25;
                *v25 = v68;
              }
            }
          }

          else
          {
            if (v13 < v17)
            {
              v19 = (v11 + 1);
              *v12 = v13;
LABEL_37:
              *(a2 - 2) = v18;
              v25 = a2 - 4;
              goto LABEL_63;
            }

            v19 = (v9 + 1);
            v38 = v9[1];
            v39 = v12[1];
            *v12 = v17;
            v12[1] = v38;
            *v9 = v18;
            v9[1] = v39;
            v40 = *(a2 - 2);
            if (v40 < v18)
            {
              *v9 = v40;
              goto LABEL_37;
            }
          }

          --a3;
          if ((a4 & 1) != 0 || *(v9 - 2) < *v9)
          {
            break;
          }

          v82 = *v9;
          if (*(a2 - 2) <= *v9)
          {
            v84 = v9 + 2;
            do
            {
              v9 = v84;
              if (v84 >= a2)
              {
                break;
              }

              v84 += 2;
            }

            while (*v9 <= v82);
          }

          else
          {
            do
            {
              v83 = v9[2];
              v9 += 2;
            }

            while (v83 <= v82);
          }

          v85 = a2;
          if (v9 < a2)
          {
            v85 = a2;
            do
            {
              v86 = *(v85 - 2);
              v85 -= 2;
            }

            while (v86 > v82);
          }

          if (v9 < v85)
          {
            v87 = *v9;
            v88 = *v85;
            do
            {
              *v9 = v88;
              *v85 = v87;
              v89 = v9[1];
              v9[1] = v85[1];
              v85[1] = v89;
              do
              {
                v90 = v9[2];
                v9 += 2;
                v87 = v90;
              }

              while (v90 <= v82);
              do
              {
                v91 = *(v85 - 2);
                v85 -= 2;
                v88 = v91;
              }

              while (v91 > v82);
            }

            while (v9 < v85);
          }

          if (v9 - 2 != v7)
          {
            *v7 = *(v9 - 2);
            v7[1] = *(v9 - 1);
          }

          a4 = 0;
          *(v9 - 1) = v82;
        }

        v69 = 0;
        v70 = *v9;
        do
        {
          v71 = v9[v69 + 2];
          v69 += 2;
        }

        while (v71 < v70);
        v72 = &v9[v69];
        v73 = a2;
        if (v69 == 2)
        {
          v73 = a2;
          do
          {
            if (v72 >= v73)
            {
              break;
            }

            v75 = *(v73 - 2);
            v73 -= 8;
          }

          while (v75 >= v70);
        }

        else
        {
          do
          {
            v74 = *(v73 - 2);
            v73 -= 8;
          }

          while (v74 >= v70);
        }

        if (v72 >= v73)
        {
          v9 = (v9 + v69 * 4);
        }

        else
        {
          v76 = *v73;
          v9 = (v9 + v69 * 4);
          v77 = v73;
          do
          {
            *v9 = v76;
            *v77 = v71;
            v78 = v9[1];
            v9[1] = v77[1];
            v77[1] = v78;
            do
            {
              v79 = v9[2];
              v9 += 2;
              v71 = v79;
            }

            while (v79 < v70);
            do
            {
              v80 = *(v77 - 2);
              v77 -= 2;
              v76 = v80;
            }

            while (v80 >= v70);
          }

          while (v9 < v77);
        }

        if (v9 - 2 != v7)
        {
          *v7 = *(v9 - 2);
          v7[1] = *(v9 - 1);
        }

        *(v9 - 1) = v70;
        if (v72 >= v73)
        {
          break;
        }

LABEL_87:
        result = std::__introsort<std::_ClassicAlgPolicy,AG::Graph::TreeDataElement::sort_nodes(void)::$_0 &,std::pair<AG::data::ptr<AG::Graph::TreeElement>,AG::data::ptr<AG::Node>> *,false>(v7, v9 - 2, a3, a4 & 1);
        a4 = 0;
      }

      v81 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,AG::Graph::TreeDataElement::sort_nodes(void)::$_0 &,std::pair<AG::data::ptr<AG::Graph::TreeElement>,AG::data::ptr<AG::Node>> *>(v7, v9 - 8);
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,AG::Graph::TreeDataElement::sort_nodes(void)::$_0 &,std::pair<AG::data::ptr<AG::Graph::TreeElement>,AG::data::ptr<AG::Node>> *>(v9, a2);
      if (result)
      {
        break;
      }

      if (!v81)
      {
        goto LABEL_87;
      }
    }

    a2 = (v9 - 2);
    if (!v81)
    {
      continue;
    }

    return result;
  }
}

int *std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,AG::Graph::TreeDataElement::sort_nodes(void)::$_0 &,std::pair<AG::data::ptr<AG::Graph::TreeElement>,AG::data::ptr<AG::Node>> *,0>(int *result, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = *a3;
  if (*a2 >= *result)
  {
    if (v7 < v5)
    {
      *a2 = v7;
      *a3 = v5;
      v10 = (a2 + 1);
      v9 = a2[1];
      a2[1] = a3[1];
      a3[1] = v9;
      v11 = *result;
      if (*a2 < *result)
      {
        *result = *a2;
        v8 = result + 1;
        *a2 = v11;
LABEL_10:
        v13 = *v8;
        *v8 = *v10;
        *v10 = v13;
      }
    }
  }

  else
  {
    if (v7 < v5)
    {
      v8 = result + 1;
      *result = v7;
LABEL_9:
      *a3 = v6;
      v10 = (a3 + 1);
      goto LABEL_10;
    }

    *result = v5;
    *a2 = v6;
    v8 = (a2 + 1);
    v12 = result[1];
    result[1] = a2[1];
    a2[1] = v12;
    v6 = *a2;
    if (*a3 < *a2)
    {
      *a2 = *a3;
      goto LABEL_9;
    }
  }

  v14 = *a3;
  if (*a4 < *a3)
  {
    *a3 = *a4;
    *a4 = v14;
    v15 = a3[1];
    a3[1] = a4[1];
    a4[1] = v15;
    v16 = *a2;
    if (*a3 < *a2)
    {
      *a2 = *a3;
      *a3 = v16;
      v17 = a2[1];
      a2[1] = a3[1];
      a3[1] = v17;
      v18 = *result;
      if (*a2 < *result)
      {
        *result = *a2;
        *a2 = v18;
        v19 = result[1];
        result[1] = a2[1];
        a2[1] = v19;
      }
    }
  }

  v20 = *a4;
  if (*a5 < *a4)
  {
    *a4 = *a5;
    *a5 = v20;
    v21 = a4[1];
    a4[1] = a5[1];
    a5[1] = v21;
    v22 = *a3;
    if (*a4 < *a3)
    {
      *a3 = *a4;
      *a4 = v22;
      v23 = a3[1];
      a3[1] = a4[1];
      a4[1] = v23;
      v24 = *a2;
      if (*a3 < *a2)
      {
        *a2 = *a3;
        *a3 = v24;
        v25 = a2[1];
        a2[1] = a3[1];
        a3[1] = v25;
        v26 = *result;
        if (*a2 < *result)
        {
          *result = *a2;
          *a2 = v26;
          v27 = result[1];
          result[1] = a2[1];
          a2[1] = v27;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,AG::Graph::TreeDataElement::sort_nodes(void)::$_0 &,std::pair<AG::data::ptr<AG::Graph::TreeElement>,AG::data::ptr<AG::Node>> *>(unsigned int *a1, char *a2)
{
  v2 = (a2 - a1) >> 3;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v6 = a1[2];
      v7 = *a1;
      v8 = *(a2 - 2);
      if (v6 >= *a1)
      {
        if (v8 >= v6)
        {
          return 1;
        }

        a1[2] = v8;
        *(a2 - 2) = v6;
        v20 = (a1 + 3);
        v19 = a1[3];
        a1[3] = *(a2 - 1);
        *(a2 - 1) = v19;
        v21 = a1[2];
        v22 = *a1;
        if (v21 >= *a1)
        {
          return 1;
        }

        *a1 = v21;
        a1[2] = v22;
        v9 = (a1 + 1);
      }

      else
      {
        if (v8 >= v6)
        {
          v9 = (a1 + 3);
          v29 = a1[3];
          v30 = a1[1];
          *a1 = v6;
          a1[1] = v29;
          a1[2] = v7;
          a1[3] = v30;
          v31 = *(a2 - 2);
          if (v31 >= v7)
          {
            return 1;
          }

          a1[2] = v31;
        }

        else
        {
          v9 = (a1 + 1);
          *a1 = v8;
        }

        *(a2 - 2) = v7;
        v20 = a2 - 4;
      }

      v32 = *v9;
      *v9 = *v20;
      *v20 = v32;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,AG::Graph::TreeDataElement::sort_nodes(void)::$_0 &,std::pair<AG::data::ptr<AG::Graph::TreeElement>,AG::data::ptr<AG::Node>> *,0>(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2);
      return 1;
    }

    v15 = a1[2];
    v16 = *a1;
    v17 = a1[4];
    if (v15 >= *a1)
    {
      if (v17 < v15)
      {
        v27 = (a1 + 3);
        v26 = a1[3];
        v28 = a1[5];
        a1[2] = v17;
        a1[3] = v28;
        a1[4] = v15;
        a1[5] = v26;
        if (v17 >= v16)
        {
LABEL_51:
          v17 = v15;
          goto LABEL_52;
        }

        *a1 = v17;
        a1[2] = v16;
        v18 = (a1 + 1);
LABEL_50:
        v48 = *v18;
        *v18 = *v27;
        *v27 = v48;
        goto LABEL_51;
      }
    }

    else
    {
      if (v17 < v15)
      {
        v18 = (a1 + 1);
        *a1 = v17;
LABEL_49:
        a1[4] = v16;
        v27 = (a1 + 5);
        v15 = v16;
        goto LABEL_50;
      }

      v18 = (a1 + 3);
      v46 = a1[3];
      v47 = a1[1];
      *a1 = v15;
      a1[1] = v46;
      a1[2] = v16;
      a1[3] = v47;
      if (v17 < v16)
      {
        a1[2] = v17;
        goto LABEL_49;
      }
    }

LABEL_52:
    v49 = *(a2 - 2);
    if (v49 < v17)
    {
      a1[4] = v49;
      *(a2 - 2) = v17;
      v50 = a1[5];
      a1[5] = *(a2 - 1);
      *(a2 - 1) = v50;
      v51 = a1[4];
      v52 = a1[2];
      if (v51 < v52)
      {
        v53 = a1[3];
        v54 = a1[5];
        a1[2] = v51;
        a1[3] = v54;
        a1[4] = v52;
        a1[5] = v53;
        v55 = *a1;
        if (v51 < *a1)
        {
          v56 = a1[1];
          *a1 = v51;
          a1[1] = v54;
          a1[2] = v55;
          a1[3] = v56;
        }
      }
    }

    return 1;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *(a2 - 2);
    v4 = *a1;
    if (v3 < *a1)
    {
      *a1 = v3;
      *(a2 - 2) = v4;
      v5 = a1[1];
      a1[1] = *(a2 - 1);
      *(a2 - 1) = v5;
    }

    return 1;
  }

LABEL_13:
  v10 = (a1 + 4);
  v11 = a1[4];
  v12 = a1[2];
  v13 = *a1;
  if (v12 < *a1)
  {
    if (v11 >= v12)
    {
      v14 = (a1 + 3);
      v33 = a1[3];
      v34 = a1[1];
      *a1 = v12;
      a1[1] = v33;
      a1[2] = v13;
      a1[3] = v34;
      if (v11 >= v13)
      {
        goto LABEL_36;
      }

      a1[2] = v11;
    }

    else
    {
      v14 = (a1 + 1);
      *a1 = v11;
    }

    a1[4] = v13;
    v24 = (a1 + 5);
    goto LABEL_35;
  }

  if (v11 < v12)
  {
    v24 = (a1 + 3);
    v23 = a1[3];
    v25 = a1[5];
    a1[2] = v11;
    a1[3] = v25;
    a1[4] = v12;
    a1[5] = v23;
    if (v11 < v13)
    {
      *a1 = v11;
      a1[2] = v13;
      v14 = (a1 + 1);
LABEL_35:
      v35 = *v14;
      *v14 = *v24;
      *v24 = v35;
    }
  }

LABEL_36:
  v36 = (a1 + 6);
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v37 = 0;
  v38 = 0;
  while (1)
  {
    v39 = *v10;
    if (*v36 < *v10)
    {
      v41 = *v36;
      v40 = *(v36 + 1);
      v42 = v37;
      while (1)
      {
        v43 = (a1 + v42);
        v44 = *(a1 + v42 + 20);
        v43[6] = v39;
        v43[7] = v44;
        if (v42 == -16)
        {
          break;
        }

        v39 = v43[2];
        v42 -= 8;
        if (v39 <= v41)
        {
          v45 = (a1 + v42 + 24);
          goto LABEL_44;
        }
      }

      v45 = a1;
LABEL_44:
      *v45 = v41;
      v45[1] = v40;
      if (++v38 == 8)
      {
        return v36 + 8 == a2;
      }
    }

    v10 = v36;
    v37 += 8;
    v36 += 8;
    if (v36 == a2)
    {
      return 1;
    }
  }
}

uint64_t AG::vector<std::unique_ptr<AG::AttributeType,AG::AttributeType::deleter>,0ul,unsigned int>::~vector(uint64_t a1)
{
  v2 = *a1;
  if (*(a1 + 8))
  {
    v3 = 0;
    do
    {
      std::unique_ptr<AG::AttributeType,AG::AttributeType::deleter>::reset[abi:ne200100](v2, 0);
      ++v3;
      ++v2;
    }

    while (v3 < *(a1 + 8));
    v2 = *a1;
  }

  if (v2)
  {
    free(v2);
  }

  return a1;
}

uint64_t std::unique_ptr<AG::AttributeType,AG::AttributeType::deleter>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    v4 = *(*(result + 32) + 8);
    if (v4)
    {
      return v4();
    }
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>,std::__unordered_map_hasher<AG::Subgraph *,std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>,std::hash<AG::Subgraph *>,std::equal_to<AG::Subgraph *>,true>,std::__unordered_map_equal<AG::Subgraph *,std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>,std::equal_to<AG::Subgraph *>,std::hash<AG::Subgraph *>,true>,std::allocator<std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>,std::__unordered_map_hasher<AG::Subgraph *,std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>,std::hash<AG::Subgraph *>,std::equal_to<AG::Subgraph *>,true>,std::__unordered_map_equal<AG::Subgraph *,std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>,std::equal_to<AG::Subgraph *>,std::hash<AG::Subgraph *>,true>,std::allocator<std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>,std::__unordered_map_hasher<AG::Subgraph *,std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>,std::hash<AG::Subgraph *>,std::equal_to<AG::Subgraph *>,true>,std::__unordered_map_equal<AG::Subgraph *,std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>,std::equal_to<AG::Subgraph *>,std::hash<AG::Subgraph *>,true>,std::allocator<std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[3];
      if (v4)
      {
        free(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

unint64_t util::Table<unsigned long,AG::Graph::Context *>::for_each<AG::Graph::main_context(void)::$_0>(AG::Graph::main_context(void)::$_0 const&)const::{lambda(void const*,void const*,void const*)#1}::__invoke(unint64_t result, uint64_t a2, void **a3)
{
  v3 = a3[1];
  if (*v3 > result)
  {
    *v3 = result;
    **a3 = a2;
  }

  return result;
}

void util::Table<unsigned long,AG::Graph::Context *>::for_each<AG::Graph::update_deadline(void)::$_0>(AG::Graph::update_deadline(void)::$_0 const&)const::{lambda(void const*,void const*,void const*)#1}::__invoke(uint64_t a1, uint64_t a2, unint64_t **a3)
{
  v3 = *(a2 + 56);
  if (v3 >= **a3)
  {
    v3 = **a3;
  }

  **a3 = v3;
}

void *AG::vector<AG::AttributeID,8ul,unsigned long>::reserve_slow(void *__dst, size_t a2)
{
  if (*(__dst + 6) + (*(__dst + 6) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(__dst + 6) + (*(__dst + 6) >> 1);
  }

  result = AG::details::realloc_vector<unsigned long,4ul>(*(__dst + 4), __dst, 8uLL, __dst + 6, v3);
  *(__dst + 4) = result;
  return result;
}

void *AG::details::realloc_vector<unsigned long,4ul>(void *__src, void *__dst, size_t a3, size_t *a4, size_t a5)
{
  v7 = __src;
  if (a5 <= a3)
  {
    if (__src)
    {
      v9 = a3;
      memcpy(__dst, __src, 4 * a5);
      free(v7);
      v12 = 0;
LABEL_8:
      *a4 = v9;
      return v12;
    }
  }

  else
  {
    v8 = malloc_good_size(4 * a5);
    v9 = v8 >> 2;
    if (v8 >> 2 != *a4)
    {
      v10 = malloc_type_realloc(v7, v8, 0xC199B67EuLL);
      if (!v10)
      {
        AG::precondition_failure("allocation failure", v11);
      }

      v12 = v10;
      if (!v7)
      {
        memcpy(v10, __dst, 4 * *a4);
      }

      goto LABEL_8;
    }
  }

  return v7;
}

uint64_t *OUTLINED_FUNCTION_1()
{
  result = *(*v0 + 8 * v1);
  v3 = *result;
  return result;
}

uint64_t *OUTLINED_FUNCTION_2@<X0>(uint64_t a1@<X8>)
{
  result = *(a1 + 8 * v1);
  v3 = *result;
  return result;
}

uint64_t OUTLINED_FUNCTION_5()
{

  return AG::swift::metadata::name(v0, 0);
}

uint64_t AG::DebugServer::start(AG::DebugServer *this)
{
  v1 = AG::DebugServer::_shared_server;
  if ((this & 1) != 0 && !AG::DebugServer::_shared_server)
  {
    if (os_variant_has_internal_diagnostics())
    {
      operator new();
    }

    return AG::DebugServer::_shared_server;
  }

  return v1;
}

uint64_t AG::DebugServer::stop(AG::DebugServer *this)
{
  result = AG::DebugServer::_shared_server;
  if (AG::DebugServer::_shared_server)
  {
    AG::DebugServer::~DebugServer(AG::DebugServer::_shared_server);
    result = MEMORY[0x1B8C7ACE0]();
    AG::DebugServer::_shared_server = 0;
  }

  return result;
}

AG::DebugServer *AG::DebugServer::DebugServer(AG::DebugServer *this, char a2)
{
  v28 = *MEMORY[0x1E69E9840];
  *this = 0xFFFFFFFFLL;
  *(this + 4) = 0;
  v4 = arc4random();
  *(this + 1) = 0u;
  *(this + 3) = v4;
  *(this + 2) = 0u;
  v5 = socket(2, 1, 0);
  *this = v5;
  if (v5 < 0)
  {
    perror("AGDebugServer: socket");
    goto LABEL_25;
  }

  fcntl(v5, 2, 1);
  v19 = 1;
  setsockopt(*this, 0xFFFF, 4130, &v19, 4u);
  v27.sa_family = 2;
  *v27.sa_data = 0;
  if ((a2 & 2) != 0)
  {
    v6 = 0;
  }

  else
  {
    v6 = 16777343;
  }

  *&v27.sa_data[2] = v6;
  if (bind(*this, &v27, 0x10u))
  {
    perror("AGDebugServer: bind");
    AG::DebugServer::shutdown(this);
    goto LABEL_25;
  }

  v18 = 16;
  if (getsockname(*this, &v27, &v18))
  {
    v10 = "AGDebugServer: getsockname";
LABEL_27:
    perror(v10);
    AG::DebugServer::shutdown(this);
    goto LABEL_25;
  }

  *(this + 1) = bswap32(*&v27.sa_data[2]);
  *(this + 4) = bswap32(*v27.sa_data) >> 16;
  if ((a2 & 2) != 0)
  {
    v26[0] = 0;
    if (!getifaddrs(v26))
    {
      if (v26[0])
      {
        v7 = v26[0];
        while (1)
        {
          ifa_addr = v7->ifa_addr;
          if (ifa_addr)
          {
            if (ifa_addr->sa_family == 2)
            {
              v9 = *&ifa_addr->sa_data[2];
              if (v9 != 16777343)
              {
                break;
              }
            }
          }

          v7 = v7->ifa_next;
          if (!v7)
          {
            goto LABEL_20;
          }
        }

        *(this + 1) = bswap32(v9);
      }

LABEL_20:
      MEMORY[0x1B8C7AF90]();
    }
  }

  if (listen(*this, 5))
  {
    v10 = "AGDebugServer: listen";
    goto LABEL_27;
  }

  v11 = dispatch_source_create(MEMORY[0x1E69E96F8], *this, 0, MEMORY[0x1E69E96A0]);

  *(this + 2) = v11;
  dispatch_set_context(v11, this);
  dispatch_source_set_event_handler_f(*(this + 2), AG::DebugServer::accept_handler);
  dispatch_resume(*(this + 2));
  *&v27.sa_data[2] = bswap32(*(this + 1));
  v12 = inet_ntop(2, &v27.sa_data[2], v26, 0x20u);
  v13 = AG::misc_log(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(this + 4);
    v15 = *(this + 3);
    *buf = 136315650;
    v21 = v26;
    v22 = 1024;
    v23 = v14;
    v24 = 1024;
    v25 = v15;
    _os_log_impl(&dword_1B490B000, v13, OS_LOG_TYPE_DEFAULT, "debug server graph://%s:%d/?token=%u", buf, 0x18u);
  }

  fprintf(*MEMORY[0x1E69E9848], "debug server graph://%s:%d/?token=%u\n", v26, *(this + 4), *(this + 3));
LABEL_25:
  v16 = *MEMORY[0x1E69E9840];
  return this;
}

void sub_1B492F518(_Unwind_Exception *a1)
{
  AG::vector<std::unique_ptr<AG::DebugServer::Connection>,0ul,unsigned long>::~vector(v1 + 24);
  util::objc_ptr<NSObject  {objcproto18OS_dispatch_source}*>::~objc_ptr(v2);
  _Unwind_Resume(a1);
}

uint64_t AG::DebugServer::shutdown(AG::DebugServer *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    dispatch_source_set_event_handler_f(v2, 0);
    dispatch_set_context(*(this + 2), 0);

    *(this + 2) = 0;
  }

  result = *this;
  if ((result & 0x80000000) == 0)
  {
    result = close(result);
    *this = -1;
  }

  return result;
}

void AG::DebugServer::accept_handler(AG::DebugServer *this, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = 16;
  if ((accept(*this, &v5, &v4) & 0x80000000) == 0)
  {
    fcntl(*this, 2, 1);
    operator new();
  }

  perror("AGDebugServer: accept");
  v3 = *MEMORY[0x1E69E9840];
}

void AG::DebugServer::~DebugServer(id *this)
{
  AG::DebugServer::shutdown(this);
  v2 = this[3];
  if (this[4])
  {
    v3 = 0;
    do
    {
      ++v3;
      v2 = std::unique_ptr<AG::DebugServer::Connection>::~unique_ptr[abi:ne200100](v2) + 1;
    }

    while (v3 < this[4]);
    v2 = this[3];
  }

  if (v2)
  {
    free(v2);
  }
}

CFURLRef AG::DebugServer::copy_url(AG::DebugServer *this)
{
  v8 = *MEMORY[0x1E69E9840];
  if ((*this & 0x80000000) != 0)
  {
    result = 0;
  }

  else
  {
    v5 = bswap32(*(this + 1));
    inet_ntop(2, &v5, v7, 0x20u);
    snprintf_l(__s, 0x100uLL, 0, "graph://%s:%d/?token=%u", v7, *(this + 4), *(this + 3));
    v2 = strlen(__s);
    result = CFURLCreateWithBytes(0, __s, v2, 0x8000100u, 0);
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void AG::DebugServer::run(AG::DebugServer *this, int a2)
{
  v3 = 0;
  v4 = a2;
LABEL_2:
  while ((v3 & 1) == 0 || *(this + 4))
  {
    memset(&v20, 0, sizeof(v20));
    v5 = *this;
    if (__darwin_check_fd_set_overflow(*this, &v20, 0))
    {
      *(v20.fds_bits + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
    }

    v6 = *this;
    v7 = *(this + 4);
    if (v7)
    {
      v8 = *(this + 3);
      v9 = 8 * v7;
      do
      {
        v10 = *(*v8 + 8);
        if (__darwin_check_fd_set_overflow(v10, &v20, 0))
        {
          *(v20.fds_bits + ((v10 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v10;
        }

        v11 = *v8++;
        v12 = *(v11 + 8);
        if (v6 <= v12)
        {
          v6 = v12;
        }

        v9 -= 8;
      }

      while (v9);
    }

    v19.tv_sec = v4;
    v19.tv_usec = 0;
    if (select(v6 + 1, 0, &v20, 0, &v19) <= 0)
    {
      if (*__error() != 35)
      {
        perror("AGDebugServer: select");
        return;
      }
    }

    else
    {
      v13 = *this;
      if (__darwin_check_fd_set_overflow(*this, &v20, 0) && ((*(v20.fds_bits + ((v13 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) >> v13) & 1) != 0)
      {
        AG::DebugServer::accept_handler(this, v14);
        v3 = 1;
      }

      if (*(this + 4))
      {
        v15 = 0;
        do
        {
          while (1)
          {
            v16 = *(*(*(this + 3) + 8 * v15) + 8);
            if (__darwin_check_fd_set_overflow(v16, &v20, 0))
            {
              if ((*(v20.fds_bits + ((v16 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) >> v16))
              {
                break;
              }
            }

            if (++v15 >= *(this + 4))
            {
              goto LABEL_2;
            }
          }

          v17 = *(*(*(this + 3) + 8 * v15) + 8);
          if (__darwin_check_fd_set_overflow(v17, &v20, 0))
          {
            *(v20.fds_bits + ((v17 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v17);
          }

          AG::DebugServer::Connection::handler(*(*(this + 3) + 8 * v15), v18);
          v15 = 0;
        }

        while (*(this + 4));
      }
    }
  }
}

void AG::DebugServer::Connection::handler(AG::DebugServer::Connection *this, void *a2)
{
  v2 = this;
  {
    goto LABEL_12;
  }

  capacity_4 = 0;
  if (v13 != *(*v2 + 12))
  {
    goto LABEL_12;
  }

  v3 = capacity;
  Mutable = CFDataCreateMutable(0, capacity);
  v5 = Mutable;
  theData[1] = Mutable;
  if (!Mutable)
  {
    goto LABEL_12;
  }

  CFDataSetLength(Mutable, v3);
  v6 = v2[2];
  MutableBytePtr = CFDataGetMutableBytePtr(v5);
  {
    AG::DebugServer::receive(v5, theData);
    v8 = theData[0];
    if (theData[0])
    {
      Length = CFDataGetLength(theData[0]);
      capacity = Length;
      {
        v10 = v2[2];
        BytePtr = CFDataGetBytePtr(v8);
        {
          v2 = 0;
        }
      }

      CFRelease(v8);
    }
  }

  CFRelease(v5);
  if (v2)
  {
LABEL_12:
    AG::DebugServer::close_connection(*v2, v2);
  }
}

void sub_1B492FBAC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  util::cf_ptr<__CFData *>::~cf_ptr(va);
  AG::DebugServer::close_connection(*v2, v2);
  _Unwind_Resume(a1);
}

AG::DebugServer::Connection **AG::DebugServer::close_connection(AG::DebugServer::Connection **this, AG::DebugServer::Connection *a2)
{
  v2 = this[4];
  if (v2)
  {
    v3 = this[4];
    for (i = this[3]; ; ++i)
    {
      v5 = *i;
      if (*i == a2)
      {
        break;
      }

      v3 = (v3 - 1);
      if (!v3)
      {
        return this;
      }
    }

    v6 = this[3] + 8 * v2;
    *i = *(v6 - 8);
    *(v6 - 8) = v5;
    v7 = (v2 - 1);
    this[4] = v7;
    return std::unique_ptr<AG::DebugServer::Connection>::~unique_ptr[abi:ne200100](this[3] + v7);
  }

  return this;
}

void AG::DebugServer::receive(uint64_t a1@<X3>, void *a2@<X8>)
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = objc_autoreleasePoolPush();
  v5 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a1 options:0 error:0];
  if (!v5)
  {
    goto LABEL_14;
  }

  v6 = v5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_14;
  }

  v7 = [v6 objectForKeyedSubscript:@"command"];
  if (![v7 isEqual:@"graph/description"])
  {
    if ([v7 isEqual:@"profiler/start"])
    {
      v13 = [v6 objectForKeyedSubscript:@"flags"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = [v13 unsignedIntValue] | 1;
      }

      else
      {
        v14 = 1;
      }

      AG::Graph::all_start_profiling(v14);
    }

    else
    {
      v15 = [v7 isEqual:@"profiler/stop"];
      if (v15)
      {
        AG::Graph::all_stop_profiling(v15);
      }

      else
      {
        v17 = [v7 isEqual:@"profiler/reset"];
        if (v17)
        {
          AG::Graph::all_reset_profile(v17);
        }

        else if ([v7 isEqual:@"profiler/mark"])
        {
          v18 = [v6 objectForKeyedSubscript:@"name"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v19 = [v18 UTF8String];
            AG::Graph::all_mark_profile(v19, v20);
          }
        }

        else if ([v7 isEqual:@"tracing/start"])
        {
          v21 = [v6 objectForKeyedSubscript:@"flags"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v22 = [v21 unsignedIntValue] | 1;
          }

          else
          {
            v22 = 1;
          }

          v37 = 0;
          v38 = 0;
          v39 = 0;
          v24 = [v6 objectForKeyedSubscript:@"subsystems"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v35 = 0u;
            v36 = 0u;
            v33 = 0u;
            v34 = 0u;
            v25 = [v24 countByEnumeratingWithState:&v33 objects:v40 count:16];
            if (v25)
            {
              v26 = *v34;
              do
              {
                v27 = 0;
                do
                {
                  if (*v34 != v26)
                  {
                    objc_enumerationMutation(v24);
                  }

                  v28 = *(*(&v33 + 1) + 8 * v27);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v29 = [v28 UTF8String];
                    v30 = v38;
                    v31 = v38 + 1;
                    if (v39 < v38 + 1)
                    {
                      AG::vector<std::unique_ptr<char const,util::free_deleter>,0ul,unsigned long>::reserve_slow(&v37, v31);
                      v30 = v38;
                      v31 = v38 + 1;
                    }

                    *(v37 + v30) = v29;
                    v38 = v31;
                  }

                  ++v27;
                }

                while (v25 != v27);
                v25 = [v24 countByEnumeratingWithState:&v33 objects:v40 count:16];
              }

              while (v25);
            }
          }

          AG::Graph::all_start_tracing(v22);
          if (v37)
          {
            free(v37);
          }
        }

        else
        {
          v23 = [v7 isEqual:@"tracing/stop"];
          if (v23)
          {
            AG::Graph::all_stop_tracing(v23);
          }

          else
          {
            v32 = [v7 isEqual:@"tracing/sync"];
            if (v32)
            {
              AG::Graph::all_sync_tracing(v32);
            }
          }
        }
      }
    }

    goto LABEL_14;
  }

  v8 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v6];
  [(NSDictionary *)v8 setObject:@"graph/dict" forKeyedSubscript:@"format"];
  v10 = AG::Graph::description(0, v8, v9);
  if (!v10)
  {
LABEL_14:
    v12 = 0;
    goto LABEL_15;
  }

  v11 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v10 options:0 error:0];
  v12 = v11;
  if (v11)
  {
    CFRetain(v11);
  }

LABEL_15:
  *a2 = v12;
  objc_autoreleasePoolPop(v4);
  v16 = *MEMORY[0x1E69E9840];
}

void sub_1B4930048(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17)
{
  if (a17)
  {
    free(a17);
  }

  _Unwind_Resume(exception_object);
}

AG::DebugServer::Connection *AG::DebugServer::Connection::Connection(AG::DebugServer::Connection *this, AG::DebugServer *a2, int a3)
{
  *this = a2;
  *(this + 2) = a3;
  *(this + 2) = 0;
  v4 = (this + 16);
  v5 = dispatch_source_create(MEMORY[0x1E69E96F8], a3, 0, MEMORY[0x1E69E96A0]);

  *(this + 2) = v5;
  dispatch_set_context(v5, this);
  dispatch_source_set_event_handler_f(*(this + 2), AG::DebugServer::Connection::handler);
  dispatch_resume(*(this + 2));
  return this;
}

void AG::DebugServer::Connection::~Connection(AG::DebugServer::Connection *this)
{
  dispatch_source_set_event_handler_f(*(this + 2), 0);
  dispatch_set_context(*(this + 2), 0);
  close(*(this + 2));
}

BOOL AG::anonymous namespace::blocking_read(AG::_anonymous_namespace_ *this, uint64_t a2, unint64_t a3)
{
  if (!a3)
  {
    return 1;
  }

  v5 = this;
  v6 = 0;
  do
  {
    v7 = read(v5, (a2 + v6), a3 - v6);
    v8 = v7 != 0;
    if (!v7)
    {
      break;
    }

    if (v7 < 1)
    {
      if (*__error() != 4)
      {
        if (*__error() == 35 || *__error() == 35)
        {
        }

        perror("AGDebugServer: read");
        return 0;
      }
    }

    else
    {
      v6 += v7;
    }
  }

  while (v6 < a3);
  return v8;
}

BOOL AG::anonymous namespace::blocking_write(AG::_anonymous_namespace_ *this, uint64_t a2, unint64_t a3)
{
  if (!a3)
  {
    return 1;
  }

  v5 = this;
  v6 = 0;
  do
  {
    v7 = write(v5, (a2 + v6), a3 - v6);
    v8 = v7 != 0;
    if (!v7)
    {
      break;
    }

    if (v7 < 1)
    {
      if (*__error() != 4)
      {
        if (*__error() == 35 || *__error() == 35)
        {
        }

        perror("AGDebugServer: write");
        return 0;
      }
    }

    else
    {
      v6 += v7;
    }
  }

  while (v6 < a3);
  return v8;
}

uint64_t AG::vector<std::unique_ptr<AG::DebugServer::Connection>,0ul,unsigned long>::~vector(uint64_t a1)
{
  v2 = *a1;
  if (*(a1 + 8))
  {
    v3 = 0;
    do
    {
      ++v3;
      v2 = std::unique_ptr<AG::DebugServer::Connection>::~unique_ptr[abi:ne200100](v2) + 1;
    }

    while (v3 < *(a1 + 8));
    v2 = *a1;
  }

  if (v2)
  {
    free(v2);
  }

  return a1;
}

AG::DebugServer::Connection **std::unique_ptr<AG::DebugServer::Connection>::~unique_ptr[abi:ne200100](AG::DebugServer::Connection **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    AG::DebugServer::Connection::~Connection(v2);
    MEMORY[0x1B8C7ACE0]();
  }

  return a1;
}