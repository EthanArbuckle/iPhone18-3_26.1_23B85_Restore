uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,X::List<void({block_pointer})(CAFenceResolution *)> *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,X::List<void({block_pointer})(CAFenceResolution *)> *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,X::List<void({block_pointer})(CAFenceResolution *)> *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,X::List<void({block_pointer})(CAFenceResolution *)> *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(void *a1, unsigned int a2)
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

double x_strtod(const char *a1, const char **a2, const char *a3)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v24[0] = a1;
  v4 = 0.0;
  if (a1 >= a3)
  {
LABEL_73:
    if (a2)
    {
      *a2 = v24[0];
    }

    return v4;
  }

  v5 = *a1;
  if (v5 == 45)
  {
    v24[0] = ++a1;
    v6 = 1;
  }

  else
  {
    v6 = 0;
    if (v5 == 43)
    {
      v24[0] = ++a1;
    }
  }

  if (a1 >= a3)
  {
    goto LABEL_71;
  }

  v7 = *a1;
  if (a3 - a1 < 3)
  {
LABEL_17:
    v8 = 0;
    if (((v7 - 46) > 0x37 || ((1 << (v7 - 46)) & 0x80000000800001) == 0) && *a1)
    {
      goto LABEL_62;
    }

LABEL_23:
    v10 = a1;
LABEL_24:
    if (v7 == 46)
    {
      v11 = (v10 + 1);
      v10 = v11;
      if (v11 < a3)
      {
        while (*v10 - 48 <= 9)
        {
          if (++v10 == a3)
          {
            v10 = a3;
            break;
          }
        }
      }

      v24[0] = v10;
      v12 = v10 - 1;
      v13 = 0.0;
      if ((v10 - 1) >= v11)
      {
        do
        {
          v14 = *v12--;
          v13 = (v14 - 48) + v13 * 0.1;
        }

        while (v12 >= v11);
        v13 = v13 * 0.1;
      }

      v4 = v13 + v4;
      if (v10 >= a3)
      {
        goto LABEL_71;
      }

      v7 = *v10;
      v8 = 1;
    }

    if (v8)
    {
      if ((v7 & 0xFFFFFFDF) == 0x45)
      {
        v15 = v10 + 1;
        v24[0] = v10 + 1;
        if (v10 + 1 < a3)
        {
          v16 = *v15;
          if (v16 == 45)
          {
            v15 = v10 + 2;
            v24[0] = v10 + 2;
            v17 = 1;
          }

          else
          {
            v17 = 0;
            if (v16 == 43)
            {
              v15 = v10 + 2;
              v24[0] = v10 + 2;
            }
          }

          if (v15 < a3)
          {
            v18 = parse_digit_sequence_integer(v15, v24, a3);
            if (v17)
            {
              v18 = -v18;
            }

            v19 = pow_10(v18);
            if (v6)
            {
              v4 = -(v19 * v4);
            }

            else
            {
              v4 = v19 * v4;
            }

            goto LABEL_73;
          }
        }
      }
    }

LABEL_71:
    if (v6)
    {
      v4 = -v4;
    }

    goto LABEL_73;
  }

  v8 = 0;
  v9 = v7 - 69;
  if ((v7 - 69) > 0x29)
  {
    goto LABEL_21;
  }

  if (((1 << v9) & 0x100000001) != 0)
  {
    goto LABEL_23;
  }

  if (((1 << v9) & 0x1000000010) == 0)
  {
    if (((1 << v9) & 0x20000000200) != 0)
    {
LABEL_12:
      if ((*(a1 + 1) | 0x20) == 0x61 && (*(a1 + 2) | 0x20) == 0x6E)
      {
        if (a2)
        {
          *a2 = a1 + 3;
        }

        return NAN;
      }

      goto LABEL_17;
    }

LABEL_21:
    if (*a1 && v7 != 46)
    {
      goto LABEL_62;
    }

    goto LABEL_23;
  }

  if ((*(a1 + 1) | 0x20) != 0x6E || (*(a1 + 2) | 0x20) != 0x66)
  {
    if (*a1 <= 0x4Du)
    {
      if (!*a1 || v7 == 46 || v7 == 69)
      {
        goto LABEL_71;
      }

      goto LABEL_62;
    }

    if (v7 != 110)
    {
      if (v7 == 101)
      {
        goto LABEL_71;
      }

      if (v7 != 78)
      {
LABEL_62:
        v10 = a1;
        while (*v10 - 48 <= 9)
        {
          if (++v10 == a3)
          {
            v10 = a3;
            break;
          }
        }

        v24[0] = v10;
        v20 = v10 - 1;
        v4 = 0.0;
        if (v10 - 1 >= a1)
        {
          v21 = 1.0;
          do
          {
            v22 = *v20--;
            v4 = v4 + v21 * (v22 - 48);
            v21 = v21 * 10.0;
          }

          while (v20 >= a1);
        }

        if (v10 >= a3)
        {
          goto LABEL_71;
        }

        v7 = *v10;
        v8 = 1;
        goto LABEL_24;
      }
    }

    goto LABEL_12;
  }

  if (a2)
  {
    *a2 = a1 + 3;
  }

  if (v6)
  {
    return -INFINITY;
  }

  else
  {
    return INFINITY;
  }
}

unint64_t CA::OGL::emit_shadow_path(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v9 = v8;
  v10 = v7;
  v11 = v6;
  v12 = v5;
  v13 = v4;
  v14 = v3;
  v16 = v15;
  v17 = v2;
  v19 = v18;
  v20 = v1;
  v365 = *MEMORY[0x1E69E9840];
  if (byte_1ED4E9872 == 1)
  {
    *v3 = 0x3C0000003C003C00;
  }

  memset(v337, 0, sizeof(v337));
  if (*(v8 + 24) == 4 && *(v8 + 20) == 5)
  {
    v21 = *(v8 + 40);
    if (*v21 == 1 && v21[1] == 2 && v21[2] == 2 && v21[3] == 2 && !v21[4])
    {
      if ((v302 = *(v8 + 32), v304 = v302[2], v303 = v302[3], v305 = v302[1], v305 == v303) && (v306 = v302[4], v304 == v306) && (v307 = v302[5], v307 == v302[7]) && (v308 = *v302, v302[6] == *v302) || (v308 = *v302, *v302 == v304) && (v307 = v302[5], v303 == v307) && (v306 = v302[4], v306 == v302[6]) && v302[7] == v305)
      {
        v309 = v307 - v305;
        v310 = -(v306 - v308);
        if (v306 - v308 >= 0.0)
        {
          v311 = v306 - v308;
        }

        else
        {
          v308 = v306;
          v311 = v310;
        }

        if (v309 < 0.0)
        {
          v312 = -v309;
        }

        else
        {
          v307 = v302[1];
          v312 = v309;
        }

        v337[0].f64[0] = v308;
        v337[0].f64[1] = v307;
        v337[1].f64[0] = v311;
        v337[1].f64[1] = v312;
        if (v311 >= v19 * 5.6 && v312 >= v19 * 5.6)
        {
          v353 = v337[0];
          *v354 = v311;
          *&v354[1] = v312;
          v338.f64[0] = *v3;
          return CA::OGL::emit_shadow_rect(v1, &v353, v2, &v338, v4, v5, v6, v7, v19);
        }
      }
    }
  }

  result = CA::OGL::Context::shadow_cache(v1);
  if (result && (*&v19 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v23 = result;
    v335 = v17;
    os_unfair_lock_lock((result + 40));
    v24 = x_hash_table_lookup(*(v23 + 8), v9, 0);
    LODWORD(v336) = v11;
    v333 = v10;
    *&v334.f64[0] = v9;
    if (v24)
    {
      v25 = v24;
      v26 = v12;
      v27 = v20;
      v28 = v14;
      v29 = v13;
      v30 = v16;
      v31 = 1;
      v32 = v24;
      do
      {
        v33 = v32;
        if (*(v32 + 24) == v19 && *(v32 + 32) == v30)
        {
          v35 = v32;
          goto LABEL_27;
        }

        v32 = *v32;
        ++v31;
      }

      while (*v33);
      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      v34 = malloc_type_zone_malloc(malloc_zone, 0xB8uLL, 0x165299FDuLL);
      v35 = v34;
      if (v34)
      {
        *v34 = 0;
        *(v34 + 1) = 0;
        *(v34 + 2) = 0;
        *(v34 + 24) = vdupq_n_s64(0x7FF8000000000000uLL);
        *(v34 + 10) = 0;
        v34[44] = 0;
        *(v34 + 8) = 0u;
        *(v34 + 9) = 0u;
        *(v34 + 10) = 0u;
      }

      *v33 = v34;
LABEL_27:
      v13 = v29;
      if (v31 >= 9)
      {
        v40 = *v25;
        *v25 = **v25;
        *v40 = *(v23 + 32);
        *(v23 + 32) = v40;
      }

      v11 = v336;
      v14 = v28;
      v20 = v27;
      v12 = v26;
    }

    else
    {
      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      v36 = malloc_type_zone_malloc(malloc_zone, 0xB8uLL, 0x165299FDuLL);
      v35 = v36;
      if (v36)
      {
        *v36 = 0;
        *(v36 + 1) = 0;
        *(v36 + 2) = 0;
        *(v36 + 24) = vdupq_n_s64(0x7FF8000000000000uLL);
        *(v36 + 10) = 0;
        v36[44] = 0;
        *(v36 + 8) = 0u;
        *(v36 + 9) = 0u;
        *(v36 + 10) = 0u;
        v37 = *(v23 + 8);
        v38 = v9;
        v39 = v35;
      }

      else
      {
        v37 = *(v23 + 8);
        v38 = v9;
        v39 = 0;
      }

      hash_table_modify(v37, v38, v39, 0);
      v30 = v16;
    }

    *(v35 + 3) = v19;
    *(v35 + 4) = v30;
    os_unfair_lock_unlock((v23 + 40));
    v41 = *(v35 + 1);
    if (v41 && (!v11 || *(v35 + 2)))
    {
      goto LABEL_202;
    }

    v42 = 1.0 / v30;
    v43 = v30 * v19;
    v44 = 8.0;
    if (v30 * v19 <= 8.0)
    {
      v44 = 4.0;
    }

    v45 = 2.0;
    if (v43 > 4.0)
    {
      v45 = v44;
    }

    v46 = v334.f64[0];
    LODWORD(v332) = v12;
    LODWORD(v326) = v13;
    v328 = v14;
    v329.f64[0] = v30;
    if (v43 > v45 && (v11 & 1) == 0)
    {
      do
      {
        v42 = v42 + v42;
        v30 = v30 * 0.5;
        v43 = v43 * 0.5;
      }

      while (v43 > v45);
    }

    *&v327 = v45;
    v47 = v43;
    v48 = vcvtps_s32_f32((v47 * 2.82) + 0.5);
    v325 = v47;
    if (v47 <= 0.6)
    {
      v49 = 0;
    }

    else
    {
      v49 = v48;
    }

    *(v35 + 17) = *(v35 + 16);
    *(v35 + 20) = *(v35 + 19);
    v362 = 0;
    v360 = 0u;
    v361 = 0u;
    v50 = v42 * v49;
    v353.f64[0] = (ceilf(v50) + 1.0);
    *&v353.f64[1] = v35 + 128;
    v354[0] = (v35 + 152);
    memset(&v354[1], 0, 32);
    v355 = 0u;
    v356 = 0u;
    v357 = 0u;
    v358 = 0u;
    v359 = 0;
    v51 = *(*&v46 + 20);
    if (v51)
    {
      v53 = *(*&v46 + 32);
      v52 = *(*&v46 + 40);
      v54 = &v52[v51];
      do
      {
        v56 = *v52++;
        v55 = v56;
        if (v56 <= 1)
        {
          if (v55)
          {
            if (v55 == 1)
            {
              v360 = *v53;
              v61 = *v53++;
              v361 = v61;
            }
          }

          else
          {
          }
        }

        else
        {
          switch(v55)
          {
            case 2:
              v62 = *v53++;
              v360 = v62;
              LOBYTE(v362) = 1;
              break;
            case 3:
              v63 = 0;
              v64 = v360;
              v65 = 1;
              v66 = v360;
              do
              {
                v67 = v65;
                v68 = v53[v63];
                v66 = vbslq_s8(vcgtq_f64(v68, v66), v66, v68);
                v64 = vbslq_s8(vcgtq_f64(v64, v68), v64, v68);
                v63 = 1;
                v65 = 0;
              }

              while ((v67 & 1) != 0);
              v360 = v53[1];
              LOBYTE(v362) = 1;
              v53 += 2;
              break;
            case 4:
              v57 = 0;
              v58 = v360;
              v59 = v360;
              do
              {
                v60 = v53[v57];
                v59 = vbslq_s8(vcgtq_f64(v60, v59), v59, v60);
                v58 = vbslq_s8(vcgtq_f64(v58, v60), v58, v60);
                ++v57;
              }

              while (v57 != 3);
              v360 = v53[2];
              LOBYTE(v362) = 1;
              v53 += 3;
              break;
          }
        }
      }

      while (v52 < v54);
    }

    if (v354[1] <= 1uLL)
    {
      if (v354[3] != v354[2])
      {
        v338 = 0uLL;
        v339.f64[0] = 0.0;
        v363 = 0uLL;
        v364 = 0;
        if (v363.i64[0])
        {
          operator delete(v363.i64[0]);
        }

        if (*&v338.f64[0])
        {
          operator delete(*&v338.f64[0]);
        }
      }

      if (v357 != *(&v356 + 1))
      {
        v338 = 0uLL;
        v339.f64[0] = 0.0;
        v363 = 0uLL;
        v364 = 0;
        if (v363.i64[0])
        {
          operator delete(v363.i64[0]);
        }

        if (*&v338.f64[0])
        {
          operator delete(*&v338.f64[0]);
        }
      }
    }

    if (v358)
    {
      operator delete(v358);
    }

    if (*(&v356 + 1))
    {
      operator delete(*(&v356 + 1));
    }

    if (v355)
    {
      operator delete(v355);
    }

    if (v354[2])
    {
      operator delete(v354[2]);
    }

    v324 = v19;
    v69 = CA::Render::Path::bounding_rect(*&v46);
    v71 = *v69;
    v70 = v69[1];
    v72 = v69[3];
    v73 = v69[2] + *v69;
    v74 = *(v35 + 16);
    v75 = v73;
    do
    {
      v76 = v75;
      if (v74 == *(v35 + 17))
      {
        break;
      }

      v78 = *v74;
      v77 = v74[1];
      v74 += 2;
      if (v77 >= v73)
      {
        v77 = v69[2] + *v69;
      }

      v75 = v78 + v76 - v77;
    }

    while (v78 < v73);
    v323 = v69[2] + *v69;
    v79 = v72 + v70;
    v80 = *(v35 + 19);
    v81 = v72 + v70;
    do
    {
      v82 = v81;
      if (v80 == *(v35 + 20))
      {
        break;
      }

      v84 = *v80;
      v83 = v80[1];
      v80 += 2;
      if (v83 >= v79)
      {
        v83 = v79;
      }

      v81 = v84 + v82 - v83;
    }

    while (v84 < v79);
    v85 = vcvtmd_s64_f64(v71 * v30) - v49;
    v86 = vcvtpd_s64_f64(v76 * v30);
    v87 = vcvtpd_s64_f64(v82 * v30);
    LODWORD(v331) = vcvtmd_s64_f64(v70 * v30) - v49;
    v88 = v87 - v331 + 2 * v49;
    *&v330 = v86 - v85 + 2 * v49;
    v89 = CA::Render::format_rowbytes(9, v86 - v85 + 2 * v49);
    v90 = v89;
    v363.i64[0] = v89;
    result = is_mul_ok(v89, v88) ? v89 * v88 : 0;
    if (result <= 0x1000000)
    {
      v352.i64[0] = 0;
      result = CA::Render::aligned_malloc(result, &v352, 0);
      v322 = result;
      if (result)
      {
        v353.f64[1] = 0.0;
        v354[0] = &v354[3];
        *&v354[1] = xmmword_183E210D0;
        *&v353.f64[0] = &v353.f64[1];
        v344 = 0;
        *&v338.f64[0] = &v353.f64[1];
        v338.f64[1] = 0.0;
        v339 = 0uLL;
        v340 = 0x3FC0000000000000;
        v341 = 0u;
        v342 = 0u;
        memset(v343, 0, sizeof(v343));
        v345 = vdupq_n_s64(0x7FF0000000000000uLL);
        v346 = vdupq_n_s64(0xFFF0000000000000);
        v320 = 2 * v49 + v87;
        v321 = 2 * v49 + v86;
        v318 = v331;
        v319 = v85;
        v347 = v85;
        v348 = v331;
        v349 = v321;
        v350 = v320;
        v98 = *(*&v46 + 20);
        v14 = v328;
        if (v98)
        {
          v101 = *&v46 + 32;
          v100 = *(*&v46 + 32);
          v99 = *(v101 + 8);
          v102 = &v99[v98];
          do
          {
            v104 = *v99++;
            v103 = v104;
            if (v104 <= 1)
            {
              if (v103)
              {
                if (v103 == 1)
                {
                  v143 = *v100;
                  v144 = *(v35 + 16);
                  v145 = *v100;
                  do
                  {
                    v146 = v145;
                    if (v144 == *(v35 + 17))
                    {
                      break;
                    }

                    v148 = *v144;
                    v147 = v144[1];
                    v144 += 2;
                    if (v147 >= v143)
                    {
                      v147 = *v100;
                    }

                    v145 = v148 + v146 - v147;
                  }

                  while (v148 < v143);
                  v149 = v100[1];
                  v150 = *(v35 + 19);
                  v151 = v149;
                  do
                  {
                    v152 = v151;
                    if (v150 == *(v35 + 20))
                    {
                      break;
                    }

                    v154 = *v150;
                    v153 = v150[1];
                    v150 += 2;
                    if (v153 >= v149)
                    {
                      v153 = v100[1];
                    }

                    v151 = v154 + v152 - v153;
                  }

                  while (v154 < v149);
                  v155 = v146 * v30;
                  v156 = v152 * v30;
                  CA::ScanConverter::Path::closepath(v338.f64);
                  *&v341 = v155;
                  *(&v341 + 1) = v156;
                  *(&v342 + 1) = v155;
                  *v343 = v156;
                  *&v342 = 0x3FF0000000000000;
                  v100 += 2;
                  *(&v343[0] + 1) = 0x3FF0000000000000;
                }
              }

              else
              {
                CA::ScanConverter::Path::closepath(v338.f64);
              }
            }

            else
            {
              switch(v103)
              {
                case 2:
                  v157 = *v100;
                  v158 = *(v35 + 16);
                  v159 = *v100;
                  do
                  {
                    v160 = v159;
                    if (v158 == *(v35 + 17))
                    {
                      break;
                    }

                    v162 = *v158;
                    v161 = v158[1];
                    v158 += 2;
                    if (v161 >= v157)
                    {
                      v161 = *v100;
                    }

                    v159 = v162 + v160 - v161;
                  }

                  while (v162 < v157);
                  v163 = v100[1];
                  v164 = *(v35 + 19);
                  v165 = v163;
                  do
                  {
                    v166 = v165;
                    if (v164 == *(v35 + 20))
                    {
                      break;
                    }

                    v168 = *v164;
                    v167 = v164[1];
                    v164 += 2;
                    if (v167 >= v163)
                    {
                      v167 = v100[1];
                    }

                    v165 = v168 + v166 - v167;
                  }

                  while (v168 < v163);
                  CA::ScanConverter::Path::lineto(v338.f64, v160 * v30, v166 * v30);
                  v100 += 2;
                  break;
                case 3:
                  v169 = *v100;
                  v170 = *(v35 + 16);
                  v171 = *(v35 + 17);
                  v172 = v170;
                  v173 = *v100;
                  do
                  {
                    v174 = v173;
                    if (v172 == v171)
                    {
                      break;
                    }

                    v176 = *v172;
                    v175 = v172[1];
                    v172 += 2;
                    if (v175 >= v169)
                    {
                      v175 = *v100;
                    }

                    v173 = v176 + v174 - v175;
                  }

                  while (v176 < v169);
                  v177 = v100[1];
                  v178 = *(v35 + 19);
                  v179 = *(v35 + 20);
                  v180 = v178;
                  v181 = v177;
                  do
                  {
                    v182 = v181;
                    if (v180 == v179)
                    {
                      break;
                    }

                    v184 = *v180;
                    v183 = v180[1];
                    v180 += 2;
                    if (v183 >= v177)
                    {
                      v183 = v100[1];
                    }

                    v181 = v184 + v182 - v183;
                  }

                  while (v184 < v177);
                  v185 = v100[2];
                  v186 = v185;
                  do
                  {
                    v187 = v186;
                    if (v170 == v171)
                    {
                      break;
                    }

                    v189 = *v170;
                    v188 = v170[1];
                    v170 += 2;
                    if (v188 >= v185)
                    {
                      v188 = v100[2];
                    }

                    v186 = v189 + v187 - v188;
                  }

                  while (v189 < v185);
                  v190 = v100[3];
                  v191 = v190;
                  do
                  {
                    v192 = v191;
                    if (v178 == v179)
                    {
                      break;
                    }

                    v194 = *v178;
                    v193 = v178[1];
                    v178 += 2;
                    if (v193 >= v190)
                    {
                      v193 = v100[3];
                    }

                    v191 = v194 + v192 - v193;
                  }

                  while (v194 < v190);
                  CA::ScanConverter::Path::quadto(&v338, v174 * v30, v182 * v30, v187 * v30, v192 * v30, v91, v92, v93, v94, v95, v96, v97);
                  v100 += 4;
                  break;
                case 4:
                  v105 = *v100;
                  v106 = *(v35 + 16);
                  v107 = *(v35 + 17);
                  v108 = v106;
                  v109 = *v100;
                  do
                  {
                    v110 = v109;
                    if (v108 == v107)
                    {
                      break;
                    }

                    v112 = *v108;
                    v111 = v108[1];
                    v108 += 2;
                    if (v111 >= v105)
                    {
                      v111 = *v100;
                    }

                    v109 = v112 + v110 - v111;
                  }

                  while (v112 < v105);
                  v113 = v100[1];
                  v114 = *(v35 + 19);
                  v115 = *(v35 + 20);
                  v116 = v114;
                  v117 = v113;
                  do
                  {
                    v118 = v117;
                    if (v116 == v115)
                    {
                      break;
                    }

                    v120 = *v116;
                    v119 = v116[1];
                    v116 += 2;
                    if (v119 >= v113)
                    {
                      v119 = v100[1];
                    }

                    v117 = v120 + v118 - v119;
                  }

                  while (v120 < v113);
                  v121 = v100[2];
                  v122 = *(v35 + 16);
                  v123 = v121;
                  do
                  {
                    v124 = v123;
                    if (v122 == v107)
                    {
                      break;
                    }

                    v126 = *v122;
                    v125 = v122[1];
                    v122 += 2;
                    if (v125 >= v121)
                    {
                      v125 = v100[2];
                    }

                    v123 = v126 + v124 - v125;
                  }

                  while (v126 < v121);
                  v127 = v100[3];
                  v128 = *(v35 + 19);
                  v129 = v127;
                  do
                  {
                    v130 = v129;
                    if (v128 == v115)
                    {
                      break;
                    }

                    v132 = *v128;
                    v131 = v128[1];
                    v128 += 2;
                    if (v131 >= v127)
                    {
                      v131 = v100[3];
                    }

                    v129 = v132 + v130 - v131;
                  }

                  while (v132 < v127);
                  v133 = v100[4];
                  v134 = v133;
                  do
                  {
                    v135 = v134;
                    if (v106 == v107)
                    {
                      break;
                    }

                    v137 = *v106;
                    v136 = v106[1];
                    v106 += 2;
                    if (v136 >= v133)
                    {
                      v136 = v100[4];
                    }

                    v134 = v137 + v135 - v136;
                  }

                  while (v137 < v133);
                  v138 = v100[5];
                  v139 = v138;
                  do
                  {
                    v140 = v139;
                    if (v114 == v115)
                    {
                      break;
                    }

                    v142 = *v114;
                    v141 = v114[1];
                    v114 += 2;
                    if (v141 >= v138)
                    {
                      v141 = v100[5];
                    }

                    v139 = v142 + v140 - v141;
                  }

                  while (v142 < v138);
                  CA::ScanConverter::Path::cubeto(&v338, v110 * v30, v118 * v30, v124 * v30, v130 * v30, v135 * v30, v140 * v30, v91, v92, v93, v94, v95, v96, v97);
                  v100 += 6;
                  break;
              }
            }
          }

          while (v99 < v102);
        }

        v195 = v330;
        v196 = v88;
        CA::ScanConverter::Path::closepath(v338.f64);
        v197 = v322;
        CA::ScanConverter::render_mask(&v338, 0, v322 + v90 * (v88 - 1), -v90, v85, v331, v321, v320, 1);
        x_heap_free(*&v353.f64[0]);
        if (!v336)
        {
          v209 = CA::Render::Image::new_image(9, v330, v88, 1u, 0, v322, &v363, CA::Render::aligned_free, v352.i64[0], v314);
          v199 = *(v35 + 1);
          v210 = *(v35 + 2);
          *(v35 + 1) = v209;
          *(v35 + 2) = 0;
          v12 = v332;
          if (v210 && atomic_fetch_add(v210 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v210 + 16))(v210);
          }

          v13 = v326;
          if (!v199)
          {
            goto LABEL_200;
          }

LABEL_198:
          if (atomic_fetch_add(v199 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v199 + 16))(v199);
          }

LABEL_200:
          v41 = *(v35 + 1);
          if (!v41)
          {
            return CA::Render::aligned_free(v197, v352.u64[0], 0);
          }

          v211 = v42 * v319;
          v212 = v42 * v318;
          v213 = v323 - v76 + v42 * v195;
          *(v35 + 3) = v324;
          *(v35 + 10) = v211;
          *(v35 + 11) = v212;
          *(v35 + 12) = v213;
          *(v35 + 13) = v79 - v82 + v42 * v196;
          *(v35 + 14) = v42 * v195;
          *(v35 + 15) = v42 * v196;
          v11 = v336;
LABEL_202:
          v214 = *(v35 + 2);
          v337[0].f64[0] = *(v35 + 10);
          *(v337 + 8) = *(v35 + 88);
          v337[1].f64[1] = *(v35 + 13);
          v215 = *(v35 + 7);
          v216 = vcvtq_f64_f32(*v335);
          v334 = v337[0];
          v329 = v337[1];
          v330 = v215;
          v338 = vaddq_f64(v337[0], v216);
          v339 = v337[1];
          v363 = 0uLL;
          v352 = 0uLL;
          v351 = 0uLL;
          result = CA::OGL::Context::bind_image(v20, 0, v41, 63, 1u, 1, 0, 0, 0.0, &v363, 0);
          if (!result)
          {
            return result;
          }

          v218 = *v14;
          if (v13 >= 255)
          {
            v219 = 255;
          }

          else
          {
            v219 = v13;
          }

          v220 = v219 & ~(v219 >> 31);
          if (*&v218 == 0x3C003C003C003C00)
          {
            *_D0.i32 = v220 * 0.0039216;
            __asm { FCVT            H0, S0 }

            v225 = COERCE_DOUBLE(vdup_lane_s16(_D0, 0));
          }

          else
          {
            v225 = COERCE_DOUBLE(vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(v218), v220 * 0.0039216)));
          }

          v226 = COERCE_DOUBLE(vcvt_f16_f32(vmulq_f32(vcvtq_f32_f16(*(v20[82] + 32)), vcvtq_f32_f16(*&v225))));
          if (*(v20[82] + 32) != 0x3C003C003C003C00)
          {
            v225 = v226;
          }

          *(v20[2] + 8) = v225;
          v227 = v20[2];
          v331 = result;
          v327 = v214;
          if (v12)
          {
            *(v227 + 16) = 12;
          }

          else
          {
            v228 = *(v227 + 16) & 0xFFFFFF00FF00FF00;
            if (*(v227 + 8) == 0x3C003C003C003C00)
            {
              v229 = 1;
            }

            else
            {
              v229 = 3;
            }

            *(v227 + 16) = v229 | v228;
            *(v227 + 20) = HIDWORD(v228);
          }

          *&v353.f64[0] = &v338;
          *&v353.f64[1] = v333;
          *(v354 + 4) = 0;
          *(&v354[2] + 4) = 0;
          *(&v354[1] + 4) = 0;
          LODWORD(v354[0]) = 63;
          HIDWORD(v354[3]) = 0;
          v230 = (*(v35 + 17) - *(v35 + 16)) >> 3;
          v231 = (*(v35 + 20) - *(v35 + 19)) >> 3;
          if (!(v230 | v231))
          {
            v232 = v335;
            if (!v11 || *&v327 == 0.0)
            {
              if (v12)
              {
                v241 = 0x40000;
              }

              else
              {
                v241 = 0;
              }

              CA::OGL::emit_one_part_rect(v20, &v353, &v363, 0, v241);
            }

            else
            {
              v233 = CA::OGL::Context::bind_image(v20, 1u, v327, 63, 1u, 1, 0, 0, 0.0, &v352, 0);
              *(v20[2] + 16) = 14;
              v234 = vcvtq_f64_f32(*v232);
              v235 = vcvtq_f64_f32(*v352.f32);
              v236 = vcvtq_f64_f32(vsub_f32(*&v352.u32[2], *v352.f32));
              v351 = vcvt_hight_f32_f64(vcvt_f32_f64(vaddq_f64(vdivq_f64(vmulq_f64(v234, v236), v339), v235)), vaddq_f64(vdivq_f64(vmulq_f64(vaddq_f64(v339, v234), v236), v339), v235));
              CA::OGL::emit_one_part_rect(v20, &v353, &v363, &v351, 0);
              (*(*v20 + 560))(v20, v233, 1);
            }

            v242 = v331;
LABEL_288:
            *(v20[2] + 16) = 0;
            return (*(*v20 + 560))(v20, v242, 0);
          }

          v237 = (v230 + 2);
          v326 = 8 * v237;
          if (v237 > 0x200)
          {
            v240 = malloc_type_malloc(8 * (v230 + 2), 0x100004000313F17uLL);
            v239 = v240;
          }

          else
          {
            MEMORY[0x1EEE9AC00](result);
            v239 = &v318 - ((v238 + 15) & 0xFFFFFFFF0);
            bzero(v239, v238);
          }

          LODWORD(v332) = v12;
          v243 = (v231 + 2);
          if (v243 > 0x200)
          {
            v245 = malloc_type_malloc(8 * (v231 + 2), 0x100004000313F17uLL);
            v244 = v245;
          }

          else
          {
            MEMORY[0x1EEE9AC00](v240);
            v244 = &v318 - ((8 * v243 + 15) & 0xFFFFFFFF0);
            bzero(v244, 8 * (v231 + 2));
          }

          v328 = (8 * (v231 + 2));
          if (v237 > 0x400)
          {
            v248 = malloc_type_malloc(4 * v237, 0x100004052888210uLL);
            v247 = v248;
          }

          else
          {
            MEMORY[0x1EEE9AC00](v245);
            v247 = &v318 - ((v246 + 15) & 0x7FFFFFFF0);
            bzero(v247, v246);
          }

          v333 = (v230 + 2);
          if (v243 > 0x400)
          {
            v250 = malloc_type_malloc(4 * v243, 0x100004052888210uLL);
          }

          else
          {
            MEMORY[0x1EEE9AC00](v248);
            v250 = &v318 - ((v249 + 15) & 0x7FFFFFFF0);
            bzero(v250, v249);
          }

          v251 = v334;
          if ((v244 & v239 & v247 & v250) == 0)
          {
            goto LABEL_280;
          }

          v252 = (v230 + 1);
          v253 = (v231 + 1);
          v254 = v338.f64[0];
          *v239 = v338.f64[0];
          *(v239 + 8 * v252) = v339.f64[0] + v254;
          v255 = v338.f64[1];
          *v244 = v338.f64[1];
          *(v244 + 8 * v253) = v339.f64[1] + v255;
          *v247 = v363.i32[0];
          *(v247 + 4 * v252) = v363.i32[2];
          *v250 = v363.i32[1];
          *(v250 + 4 * v253) = v363.i32[3];
          v256 = *(v35 + 16);
          v257 = *(v35 + 17);
          if (v256 != v257)
          {
            v258 = 1.0 / v329.f64[0];
            v259 = 0.0;
            v260 = 2;
            v261 = 1.0 / *&v330;
            do
            {
              v262 = v260 - 1;
              v263 = *v256;
              v264 = v256[1];
              v256 += 2;
              v265 = *v239;
              *(v239 + 8 * v262) = *v239 + (*(v239 + 8 * v252) - *v239) * (v263 - v251.f64[0]) * v258;
              *(v239 + 8 * v260) = v265 + (*(v239 + 8 * v252) - v265) * (v264 - v251.f64[0]) * v258;
              *&v265 = *v247 + (v263 - (v259 + v251.f64[0])) * (*(v247 + 4 * v252) - *v247) * v261;
              *(v247 + 4 * v262) = LODWORD(v265);
              *(v247 + 4 * v260) = LODWORD(v265);
              v259 = v259 - v263 + v264;
              v260 += 2;
            }

            while (v256 != v257);
          }

          v266 = *(v35 + 19);
          v267 = *(v35 + 20);
          v268 = v327;
          if (v266 != v267)
          {
            v269 = 1.0 / v329.f64[1];
            v270 = 0.0;
            v271 = 2;
            v272 = 1.0 / *(&v330 + 1);
            do
            {
              v273 = v271 - 1;
              v274 = *v266;
              v275 = v266[1];
              v266 += 2;
              v276 = *v244;
              *(v244 + 8 * v273) = *v244 + (*(v244 + 8 * v253) - *v244) * (v274 - v251.f64[1]) * v269;
              *(v244 + 8 * v271) = v276 + (*(v244 + 8 * v253) - v276) * (v275 - v251.f64[1]) * v269;
              *&v276 = *v250 + (v274 - (v270 + v251.f64[1])) * (*(v250 + 4 * v253) - *v250) * v272;
              *(v250 + 4 * v273) = LODWORD(v276);
              *(v250 + 4 * v271) = LODWORD(v276);
              v270 = v270 - v274 + v275;
              v271 += 2;
            }

            while (v266 != v267);
          }

          if (!v336 || !v268)
          {
            if (v332)
            {
              v281 = 0x40000;
            }

            else
            {
              v281 = 0;
            }

            CA::OGL::emit_n_part_rect(v20, &v353, v252, v253, v239, v244, v247, v250, 0, 0, v281);
            goto LABEL_280;
          }

          *&v277 = COERCE_DOUBLE(CA::OGL::Context::bind_image(v20, 1u, v268, 63, 1u, 1, 0, 0, 0.0, &v352, 0));
          *(v20[2] + 16) = 14;
          v278 = v333;
          v327 = v277;
          if (v333 > 0x100)
          {
            v280 = malloc_type_malloc(16 * v333, 0x100004000313F17uLL);
            v336 = v280;
            if (v278 > 0x200)
            {
              v286 = v326;
              *&v334.f64[0] = malloc_type_malloc(v326, 0x100004052888210uLL);
              v285 = malloc_type_malloc(v286, 0x100004052888210uLL);
              v332 = v285;
LABEL_260:
              if (v243 > 0x100)
              {
                v288 = malloc_type_malloc(16 * v243, 0x100004000313F17uLL);
                *&v329.f64[0] = v288;
                if (v243 > 0x200)
                {
                  v293 = v328;
                  *&v330 = malloc_type_malloc(v328, 0x100004052888210uLL);
                  v292 = malloc_type_malloc(v293, 0x100004052888210uLL);
                  goto LABEL_265;
                }
              }

              else
              {
                MEMORY[0x1EEE9AC00](v285);
                *&v329.f64[0] = &v318 - ((v287 + 15) & 0x1FFFFFFFF0);
                bzero(*&v329.f64[0], v287);
              }

              v289 = v328;
              MEMORY[0x1EEE9AC00](v288);
              v290 = (v289 + 15) & 0xFFFFFFFF0;
              *&v330 = &v318 - v290;
              bzero(&v318 - v290, v289);
              MEMORY[0x1EEE9AC00](v291);
              v292 = (&v318 - v290);
              bzero(&v318 - v290, v289);
LABEL_265:
              v294 = v336;
              v295 = *&v329.f64[0];
              if (v336 && *&v329.f64[0] && *&v334.f64[0] && v330 && v332 && v292)
              {
                v296 = v335;
                LODWORD(v328) = CA::OGL::merge_compressed_geometry_clipped(v239, v239, v247, v247, v333, v335->f32[0], v336, *&v334.f64[0], v332, 0, v316);
                v297 = v296->f32[1];
                v295 = *&v329.f64[0];
                v336 = v294;
                v298 = v330;
                v299 = CA::OGL::merge_compressed_geometry_clipped(v244, v244, v250, v250, v243, v297, *&v329.f64[0], v330, v292, 0, v317);
                v300 = v298;
                v294 = v336;
                CA::OGL::emit_n_part_rect(v20, &v353, v328 - 1, v299 - 1, v336, v295, *&v334.f64[0], v300, v332, v292, 0);
                (*(*v20 + 560))(v20, v327, 1);
              }

              if (v243 < 0x201)
              {
                if (v243 < 0x101)
                {
LABEL_276:
                  if (v333 >= 0x201)
                  {
                    free(v332);
                    free(*&v334.f64[0]);
LABEL_279:
                    free(v294);
                    goto LABEL_280;
                  }

                  if (v333 >= 0x101)
                  {
                    goto LABEL_279;
                  }

LABEL_280:
                  if (v243 >= 0x401)
                  {
                    free(v250);
                  }

                  v301 = v333;
                  v242 = v331;
                  if (v333 >= 0x401)
                  {
                    free(v247);
                  }

                  if (v243 >= 0x201)
                  {
                    free(v244);
                  }

                  if (v301 >= 0x201)
                  {
                    free(v239);
                  }

                  goto LABEL_288;
                }
              }

              else
              {
                free(v292);
                free(v330);
              }

              free(v295);
              goto LABEL_276;
            }
          }

          else
          {
            MEMORY[0x1EEE9AC00](v277);
            v336 = (&v318 - ((v279 + 15) & 0x1FFFFFFFF0));
            bzero(v336, v279);
          }

          v282 = v326;
          MEMORY[0x1EEE9AC00](v280);
          v283 = (v282 + 15) & 0xFFFFFFFF0;
          *&v334.f64[0] = &v318 - v283;
          bzero(&v318 - v283, v282);
          MEMORY[0x1EEE9AC00](v284);
          v332 = (&v318 - v283);
          bzero(&v318 - v283, v282);
          goto LABEL_260;
        }

        v198 = CA::Render::Image::new_image(9, v330, v88, 1u, 0, v322, &v363, CA::Render::aligned_free, v352.i64[0], v314);
        v199 = *(v35 + 2);
        *(v35 + 2) = v198;
        for (i = v332; v43 > *&v327; v43 = v43 * 0.5)
        {
          v30 = v30 * 0.5;
        }

        v201 = (v30 / v329.f64[0] * v195);
        v202 = (v30 / v329.f64[0] * v196);
        v203 = CA::Render::format_rowbytes(9, (v30 / v329.f64[0] * v195));
        v204 = v203;
        *&v353.f64[0] = v203;
        if (is_mul_ok(v203, v202))
        {
          result = v203 * v202;
        }

        else
        {
          result = 0;
        }

        if (result <= 0x1000000)
        {
          v338.f64[0] = 0.0;
          result = CA::Render::aligned_malloc(result, &v338, 0);
          if (result)
          {
            v205 = result;
            CA::downsample_image(9, v322, v363.u64[0], v330, v88, result, v204, 4, 0.0, 0.0, v201, v202, LODWORD(v318));
            v206 = v43;
            v207 = CA::Render::Image::new_image(9, v201, v202, 1u, 0, v205, &v353, CA::Render::aligned_free, *&v338.f64[0], v315);
            v208 = *(v35 + 1);
            *(v35 + 1) = v207;
            if (v208 && atomic_fetch_add(v208 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v208 + 16))(v208);
            }

            v12 = i;
            v13 = v326;
            v14 = v328;
            v197 = v322;
            if (!v199)
            {
              goto LABEL_200;
            }

            goto LABEL_198;
          }
        }

        if (v199 && atomic_fetch_add(v199 + 2, 0xFFFFFFFF) == 1)
        {
          return (*(*v199 + 16))(v199);
        }
      }
    }
  }

  return result;
}

dispatch_queue_t ___ZN2CA6Render5FenceL24_observer_callback_queueEv_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  result = dispatch_queue_create("CA::Fence::Observer", v0);
  CA::Render::Fence::_observer_callback_queue(void)::q = result;
  return result;
}

void CA::Render::iosurface_set_colorspace(CA::Render *this, CGColorSpaceRef space, CGColorSpace *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = CGColorSpaceCopyPropertyList(space);
  v6 = *MEMORY[0x1E696CEE0];
  if (v5)
  {
    IOSurfaceSetValue(this, v6, v5);
  }

  else
  {
    IOSurfaceRemoveValue(this, v6);
  }

  *v8 = 0;
  CA::Render::iosurface_color_tags_for_colorspace(space, &v8[1], v8, v7);
  IOSurfaceSetBulkAttachments2();
  if (v5)
  {
    CFRelease(v5);
  }
}

uint64_t CAML::ObjCNSObject::set_property(uint64_t this, CAML::Context *a2, void *a3, unsigned int a4, const void *a5)
{
  if ((*(this + 32) & 8) != 0)
  {
    v7 = *(a2 + 10);
    String = CAAtomGetString(a4);
    this = [a3 CAMLTypeSupportedForKey:String];
    if (this)
    {

      return [a3 CAMLParser:v7 setValue:a5 forKey:String];
    }
  }

  return this;
}

CFStringRef CA::Render::iosurface_color_tags_for_colorspace(CGColorSpaceRef space, CGColorSpace *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  result = 0;
  if (space)
  {
    if (a2)
    {
      if (a3)
      {
        result = CGColorSpaceGetName(space);
        if (result)
        {
          v8 = result;
          if (CFEqual(result, *MEMORY[0x1E695F180]))
          {
            v9 = 1;
            v10 = 1;
LABEL_13:
            *a2 = v9;
            *a3 = v10;
            return 1;
          }

          if (CFEqual(v8, *MEMORY[0x1E695F150]))
          {
            v10 = 1;
LABEL_9:
            v9 = 9;
            goto LABEL_13;
          }

          if (CFEqual(v8, *MEMORY[0x1E695F190]))
          {
            v10 = 16;
LABEL_12:
            v9 = 1;
            goto LABEL_13;
          }

          if (CFEqual(v8, *MEMORY[0x1E695F178]))
          {
            v10 = 16;
            goto LABEL_9;
          }

          if (CFEqual(v8, *MEMORY[0x1E695F1C0]) || CFEqual(v8, *MEMORY[0x1E695F110]))
          {
            v10 = 13;
            goto LABEL_12;
          }

          if (CFEqual(v8, *MEMORY[0x1E695F1B0]) || CFEqual(v8, *MEMORY[0x1E695F108]))
          {
            v10 = 8;
            goto LABEL_12;
          }

          if (CFEqual(v8, *MEMORY[0x1E695F0B8]))
          {
            v10 = 13;
LABEL_31:
            v9 = 12;
            goto LABEL_13;
          }

          if (CFEqual(v8, *MEMORY[0x1E695F0F0]))
          {
            v10 = 8;
            goto LABEL_31;
          }

          if (CFEqual(v8, *MEMORY[0x1E695F0C8]))
          {
            v10 = 16;
            goto LABEL_31;
          }

          if (CFEqual(v8, *MEMORY[0x1E695F0C0]))
          {
            v10 = 18;
            goto LABEL_31;
          }

          if (CFEqual(v8, *MEMORY[0x1E695F100]))
          {
            v10 = 8;
            goto LABEL_9;
          }

          if (CFEqual(v8, *MEMORY[0x1E695F170]))
          {
            v10 = 18;
            goto LABEL_9;
          }

          result = CFEqual(v8, *MEMORY[0x1E695F168]);
          if (result)
          {
            v10 = 13;
            goto LABEL_9;
          }
        }
      }
    }
  }

  return result;
}

uint64_t CAML::anonymous namespace::set_property(CAML::_anonymous_namespace_ *this, CAML::Context *a2, CAML::State *a3)
{
  if (*(a2 + 8))
  {
    v5 = *(**(*(this + 6) + 48) + 48);

    return v5();
  }

  else
  {
    {
    }

    result = *(a2 + 10);
    {
      v8 = [(__CFString *)CAAtomGetString(result) cStringUsingEncoding:4];
    }
  }

  return result;
}

void ___ZN2CA6Render5Fence11Transaction8Observer8activateENSt3__113unordered_setIyNS4_4hashIyEENS4_8equal_toIyEENS4_9allocatorIyEEEEPFvPS3_RKSC_djyEPFvSD_SF_jjEPFvSD_SF_E_block_invoke_9(uint64_t a1)
{
  dispatch_mach_connect();
  v2 = *(*(*(a1 + 40) + 8) + 24);

  dispatch_resume(v2);
}

void CA::OGL::render_border(CA::OGL::Context **a1, uint64_t a2)
{
  v113[1] = *MEMORY[0x1E69E9840];
  v2 = *(*(a2 + 24) + 136);
  if (v2)
  {
    v3 = *(v2 + 240);
    if (v3 > 0.001)
    {
      v6 = *(v2 + 128);
      v7 = *a1;
      v8 = *(*a1 + 82);
      v9 = COERCE_DOUBLE(vcvt_f16_f32(*(v2 + 244)));
      v10 = *(v2 + 260);
      v11 = *(v8 + 32);
      _ZF = *&v11 == 0x3C003C003C003C00;
      v13 = COERCE_DOUBLE(vcvt_f16_f32(vmulq_f32(vcvtq_f32_f16(vcvt_f16_f32(vcvtq_f32_f16(v11))), vcvtq_f32_f16(*&v9))));
      if (*&v11 == 0x3C003C003C003C00)
      {
        v14 = v9;
      }

      else
      {
        v14 = v13;
      }

      v15 = v9;
      if (!_ZF)
      {
        v15 = v13;
      }

      if (v15 == 0.0)
      {
        if (!CA::OGL::Context::need_transparent_source(*a1))
        {
          return;
        }

        v15 = v14;
      }

      v113[0] = 0;
      *v106.i64 = v15;
      CA::OGL::colormatched_layer_color(v113, a1, a2, &v106, v10);
      if (byte_1ED4E9872 == 1)
      {
        v113[0] = 0x3C003C0000000000;
      }

      v17 = *(a2 + 24);
      v18 = *(v17 + 72);
      v19 = *(v17 + 88);
      v111 = v18;
      v112 = v19;
      v20 = *(v17 + 136);
      v21 = v19.f64[1];
      v22 = 0.0;
      if (v20)
      {
        v22 = *(v20 + 232);
      }

      v23 = v3;
      v24 = v22;
      if ((*(a2 + 32) & 1) != 0 || (v25 = *(a2 + 176)) != 0 && (*(v25 + 238) & 0x40) != 0)
      {
        if (v19.f64[0] <= v19.f64[1])
        {
          v26 = v19.f64[1];
        }

        else
        {
          v26 = v19.f64[0];
        }

        if (v26 < 1.79769313e308)
        {
          v27 = v19.f64[0] >= v19.f64[1] ? v19.f64[1] : v19.f64[0];
          if (v27 > 0.0)
          {
            __asm { FMOV            V3.2D, #-1.0 }

            v18 = vaddq_f64(v18, _Q3);
            v111 = v18;
            v19.f64[0] = v19.f64[0] + 2.0;
            v21 = v19.f64[1] + 2.0;
            v112.f64[0] = v19.f64[0];
            v112.f64[1] = v19.f64[1] + 2.0;
            if (v19.f64[0] <= 0.0 || v21 <= 0.0)
            {
              v112 = 0uLL;
              v21 = 0.0;
              v19.f64[0] = 0.0;
            }
          }
        }

        v24 = v24 + 1.0;
        v23 = v23 + 1.0;
      }

      if (v20)
      {
        v32 = *(v20 + 236);
        if (v32 != 0.0)
        {
          v33 = v32;
          v24 = v24 + v33 >= 0.0 ? v24 + v33 : 0.0;
          v34 = v19.f64[0] <= v21 ? v21 : v19.f64[0];
          if (v34 < 1.79769313e308)
          {
            v35 = v19.f64[0] >= v21 ? v21 : v19.f64[0];
            if (v35 > 0.0)
            {
              v18 = vaddq_f64(v18, vdupq_lane_s64(COERCE__INT64(-v33), 0));
              v111 = v18;
              v36 = v33 + v33;
              v112.f64[0] = v36 + v19.f64[0];
              v112.f64[1] = v36 + v21;
              if (v36 + v19.f64[0] <= 0.0 || v36 + v21 <= 0.0)
              {
                v112 = 0uLL;
              }
            }
          }
        }
      }

      v109 = v18;
      v110 = v112;
      CA::Rect::apply_transform(&v109, *(v8 + 24), v16);
      v37 = vceqzq_f64(v110);
      v38 = vorrq_s8(vdupq_laneq_s64(v37, 1), v37).u64[0];
      v104 = v110;
      v103 = v109;
      if ((v38 & 0x8000000000000000) != 0 || (v39 = vceqq_f64(v110, v110), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v39), 1), v39).u64[0] & 0x8000000000000000) != 0))
      {
        v106 = 0uLL;
      }

      else
      {
        v40 = vcvtmq_s64_f64(vmaxnmq_f64(v109, vdupq_n_s64(0xC1BFFFFFFF000000)));
        v106 = vuzp1q_s32(v40, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v109, v110), vdupq_n_s64(0x41C0000000000000uLL))), v40));
      }

      if (CA::Shape::intersects(*(v8 + 8), &v106))
      {
        v45 = *(v8 + 24);
        v42.i64[0] = 1.0;
        v43.i64[0] = 1.0;
        v46 = CA::OGL::transform_filter_bits(v45, v41, v42, v43, v44);
        v47.i64[0] = 1.0;
        v49 = CA::OGL::rect_filter_bits(v45, v46, v48, v111, v112, v47, 1.0);
        v50 = v49;
        if (v6)
        {
          v51 = *(a2 + 24);
          v52 = *(v51 + 40);
          if ((v52 & 0xFu) > 0xAuLL)
          {
            v53 = 1;
          }

          else
          {
            v53 = CA::OGL::texture_filter(CA::Render::ImageFilter)::filters[v52 & 0xF];
          }

          v60 = v52 >> 4;
          if (v60 > 0xA)
          {
            v61 = 1;
          }

          else
          {
            v61 = CA::OGL::texture_filter(CA::Render::ImageFilter)::filters[v60];
          }

          v62 = *(v51 + 136);
          if (v62)
          {
            v63 = *(v62 + 312);
          }

          else
          {
            v63 = 0.0;
          }

          v64 = *(a2 + 16);
          if ((v38 & 0x8000000000000000) != 0 || (v65 = vceqq_f64(v104, v104), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v65), 1), v65).u64[0] & 0x8000000000000000) != 0))
          {
            v105 = 0uLL;
          }

          else
          {
            v66 = vcvtmq_s64_f64(vmaxnmq_f64(v103, vdupq_n_s64(0xC1BFFFFFFF000000)));
            v105 = vuzp1q_s32(v66, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v103, v104), vdupq_n_s64(0x41C0000000000000uLL))), v66));
          }

          v67 = *(v64 + 24);
          v68 = CA::Shape::intersect(*(v8 + 8), &v105);
          CA::Shape::get_bounds(v68, &v105);
          v69 = (*(*v7 + 696))(v7, 1, &v105, 15, @"image-render-border");
          if (!v69)
          {
LABEL_84:
            CA::Shape::unref(v68);
            if (BYTE1(xmmword_1ED4E97DC))
            {
              v87 = *(v8 + 24);
              v106.i64[0] = &v111;
              *&v106.i64[1] = v87;
              v107 = v50;
              memset(v108, 0, sizeof(v108));
              CA::OGL::fill_color_rect(v7, &v106, 0x80800080, v85, v86);
            }

            return;
          }

          v70 = v69;
          v104.f64[0] = v67;
          v71 = v50;
          v72 = *(a2 + 24);
          v102 = v53;
          if (v72)
          {
            v74 = CA::Render::Layer::process_id(*(v72 + 152));
            v75 = *(a2 + 24);
            if (v75)
            {
              layer_resource_text = CA::Render::create_layer_resource_text(v75, v73);
              goto LABEL_77;
            }
          }

          else
          {
            v74 = 0;
          }

          layer_resource_text = 0;
LABEL_77:
          v77 = (*(*v7 + 888))(v7, v70, 0, v74, @"image-render-border", layer_resource_text);
          MEMORY[0x1EEE9AC00](v77);
          v101 = 0;
          v95 = 0x3C003C003C003C00;
          v98 = 0;
          v99 = 0;
          v96 = 0;
          v97 = 0;
          v100 = 0;
          v93 = *(v8 + 8);
          v94 = *(v8 + 24);
          LODWORD(v99) = *(v8 + 64);
          LOWORD(v101) = *(v8 + 80) & 0x500 | 4;
          v92 = 0;
          *&v93 = v68;
          v92 = CA::OGL::Context::set_gstate(v7, &v92);
          CA::OGL::Context::push_surface(v7, v70, 1u, 2, 0);
          *(*(v7 + 16) + 8) = 0x3C003C003C003C00;
          v78 = *(a2 + 24);
          v79 = *(v78 + 136);
          if (v79 && (v80 = *(v79 + 72)) != 0)
          {
            v88 = *(a2 + 41);
            v89 = *(v8 + 24);
            v106.i64[0] = &v111;
            *&v106.i64[1] = v89;
            v50 = v71;
            v107 = v71;
            *v108 = v88;
            memset(&v108[4], 0, 24);
            CA::OGL::stroke_uneven_round_rect(v7, &v106, (v80 + 24), *(v78 + 44) & 3, v23);
          }

          else
          {
            v81 = *(a2 + 41);
            v82 = *(v8 + 24);
            v106.i64[0] = &v111;
            *&v106.i64[1] = v82;
            v50 = v71;
            v107 = v71;
            *v108 = v81;
            memset(&v108[4], 0, 24);
            CA::OGL::stroke_round_rect(v7, &v106, (*(v78 + 42) & 0xF), *(v78 + 44) & 3, v24, v23);
          }

          *(*(v7 + 16) + 497) |= 1u;
          *(*(v7 + 16) + 8) = v113[0];
          v106 = 0uLL;
          CA::OGL::fill_pattern_rect(v7, v6, &v111, &v106, *(*(v7 + 656) + 24), &v109, v102, v61, v63, LOBYTE(v104.f64[0]) & 1, 0);
          *(*(v7 + 16) + 497) &= ~1u;
          CA::OGL::Context::pop_surface(v7);
          CA::OGL::Context::set_gstate(v7, **(v7 + 656));
          v83 = *(v7 + 16);
          if (*(v83 + 496) >= 2u)
          {
            *(v83 + 497) |= 1u;
          }

          v84 = *(v8 + 8);
          v106 = 0uLL;
          CA::OGL::emit_combine(v7, 1u, v70, 0, v84, &v106);
          *(*(v7 + 16) + 497) &= ~1u;
          CA::OGL::Context::release_surface(v7, v70);
          if (layer_resource_text)
          {
            CFRelease(layer_resource_text);
          }

          goto LABEL_84;
        }

        v54 = *(v7 + 16);
        if (v54[62].u8[0] >= 2u)
        {
          v54[62].i8[1] |= 1u;
          v54 = *(v7 + 16);
        }

        v54[1] = v113[0];
        v55 = *(a2 + 24);
        v56 = *(v55 + 136);
        if (v56 && (v57 = *(v56 + 72)) != 0)
        {
          v90 = *(a2 + 41);
          v91 = *(v8 + 24);
          v106.i64[0] = &v111;
          *&v106.i64[1] = v91;
          v107 = v49;
          *v108 = v90;
          memset(&v108[4], 0, 24);
          CA::OGL::stroke_uneven_round_rect(v7, &v106, (v57 + 24), *(v55 + 44) & 3, v23);
        }

        else
        {
          v58 = *(a2 + 41);
          v59 = *(v8 + 24);
          v106.i64[0] = &v111;
          *&v106.i64[1] = v59;
          v107 = v49;
          *v108 = v58;
          memset(&v108[4], 0, 24);
          CA::OGL::stroke_round_rect(v7, &v106, (*(v55 + 42) & 0xF), *(v55 + 44) & 3, v24, v23);
        }

        *(*(v7 + 16) + 497) &= ~1u;
      }
    }
  }
}

uint64_t CA::Context::send_deferrals(int a1, int a2, uint64_t a3, unsigned int a4, double a5)
{
  v78 = *MEMORY[0x1E69E9840];
  v72 = a4;
  pthread_mutex_lock(&CA::Context::_deferred_sending_mutex);
  v70 = 0uLL;
  v71 = 0;
  os_unfair_lock_lock(&CA::Context::_deferred_lock);
  if (!CA::Context::_deferred_by_lid || (v7 = *(CA::Context::_deferred_by_lid + 16)) == 0)
  {
    os_unfair_lock_unlock(&CA::Context::_deferred_lock);
    return pthread_mutex_unlock(&CA::Context::_deferred_sending_mutex);
  }

  v8 = 0;
  if (a1)
  {
    v9 = a2 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9;
  v67 = v10;
  do
  {
    v11 = v7[3];
    v12 = *(v11 + 8);
    v13 = v67;
    if (!v12)
    {
      v13 = 0;
    }

    if (v13 != 1 || *(v12 + 12) == a1 && *(v12 + 4) == a2)
    {
      v14 = v8;
      v15 = 0;
      v16 = 0;
      v17 = v7[3];
      while (1)
      {
        v18 = v17[2];
        if (!v18)
        {
          goto LABEL_26;
        }

        v19 = *(v18 + 16);
        if (v19)
        {
          do
          {
            while (std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>(*a3, *(a3 + 8), *(v19 + 16)))
            {
              v19 = std::__hash_table<std::__hash_value_type<CA::OGL::Context::RenderObjectSlice,CA::OGL::Image *>,std::__unordered_map_hasher<CA::OGL::Context::RenderObjectSlice,std::__hash_value_type<CA::OGL::Context::RenderObjectSlice,CA::OGL::Image *>,CA::OGL::Context::RenderObjectSlice::Hash,std::equal_to<CA::OGL::Context::RenderObjectSlice>,true>,std::__unordered_map_equal<CA::OGL::Context::RenderObjectSlice,std::__hash_value_type<CA::OGL::Context::RenderObjectSlice,CA::OGL::Image *>,std::equal_to<CA::OGL::Context::RenderObjectSlice>,CA::OGL::Context::RenderObjectSlice::Hash,true>,std::allocator<std::__hash_value_type<CA::OGL::Context::RenderObjectSlice,CA::OGL::Image *>>>::erase(v17[2], v19);
              if (!v19)
              {
                goto LABEL_22;
              }
            }

            v19 = *v19;
          }

          while (v19);
LABEL_22:
          v18 = v17[2];
        }

        if (!*(v18 + 24))
        {
          break;
        }

        v16 = 1;
LABEL_31:
        v17 = *v17;
        if (!v17)
        {
          if (v15)
          {
            v22 = v14 >> 4;
            if (((v14 >> 4) + 1) >> 60)
            {
              std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
            }

            if (v14 >> 4 != -1)
            {
              if (!(((v14 >> 4) + 1) >> 60))
              {
                operator new();
              }

              std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
            }

            v23 = (16 * v22);
            *v23 = v11;
            v23[1] = v15;
            memcpy(0, 0, v14);
            *&v70 = 0;
            v71 = 0;
            v8 = 16 * v22 + 16;
            *(&v70 + 1) = v8;
          }

          else
          {
            v8 = v14;
          }

          goto LABEL_39;
        }
      }

      v20 = std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(v18);
      MEMORY[0x1865EA9A0](v20, 0x10A0C408EF24B1CLL);
      v17[2] = 0;
LABEL_26:
      if (v16)
      {
        v21 = v15;
      }

      else
      {
        v21 = v17;
      }

      v16 |= *(v17 + 44) ^ 1;
      if (*(v17 + 44))
      {
        v15 = v21;
      }

      goto LABEL_31;
    }

LABEL_39:
    v7 = *v7;
  }

  while (v7);
  v24 = v70;
  os_unfair_lock_unlock(&CA::Context::_deferred_lock);
  if (v70 != v8)
  {
    v25 = 0;
    do
    {
      v27 = *v24;
      v26 = v24[1];
      v68 = v24;
      v28 = *(*v24 + 8);
      for (i = *v24; ; v28 = i[1])
      {
        pthread_mutex_lock((v28 + 16));
        if (CA::Render::DeferredEncoder::retime(i[3], a5))
        {
          CA::Layer::run_deferred_animation_callbacks(i[3], a5, v30);
        }

        v33 = (i == v27 || i == v26) && v72 - 1 < 0xFFFFFFFE;
        v34 = CA::Render::Encoder::send_message(i[3], *(v28 + 160), 0, &v72, v33);
        if (v34)
        {
          v35 = v34;
          if (v34 == 268435459)
          {
            *(v28 + 257) |= 2u;
          }

          CAVerifyServerReturn(v34);
          if (x_log_get_api::once[0] != -1)
          {
            dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
          }

          v36 = x_log_get_api::log;
          if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
          {
            v42 = *(v28 + 4);
            v43 = mach_error_string(v35);
            *buf = 67109634;
            *&buf[4] = v42;
            v74 = 1024;
            v75 = v35;
            v76 = 2080;
            v77 = v43;
            _os_log_error_impl(&dword_183AA6000, v36, OS_LOG_TYPE_ERROR, "Failed to send deferred commits (client=0x%x) [0x%x %s]", buf, 0x18u);
          }
        }

        if (*(i + 10))
        {
          kdebug_trace();
        }

        pthread_mutex_unlock((v28 + 16));
        v37 = i[3];
        if (v37)
        {
          (*(*v37 + 8))(v37);
        }

        v38 = i[4];
        if (v38)
        {
          do
          {
            if (!v25)
            {
              v25 = [CAFenceResolution _newResolutionWithTime:a5];
            }

            v39 = *v38;
            (*(*v38 + 16))(*v38, v25);
            _Block_release(v39);
            v38 = v38[1];
          }

          while (v38);
          v40 = i[4];
          if (v40)
          {
            do
            {
              v41 = v40[1];
              free(v40);
              v40 = v41;
            }

            while (v41);
          }
        }

        if (i == v26)
        {
          break;
        }

        i = *i;
      }

      v24 = v68 + 2;
    }

    while (v68 + 2 != v8);

    os_unfair_lock_lock(&CA::Context::_deferred_lock);
    v44 = *(&v70 + 1);
    v24 = v70;
    if (v70 != *(&v70 + 1))
    {
      v45 = v70;
      do
      {
        v46 = *(v45 + 8);
        v47 = *v46;
        v48 = *(v46[1] + 8);
        v69 = v48;
        v49 = CA::Context::_deferred_by_lid;
        if (v47)
        {
          *buf = &v69;
          std::__hash_table<std::__hash_value_type<unsigned int,CA::Context::DeferredCommit *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,CA::Context::DeferredCommit *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,CA::Context::DeferredCommit *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,CA::Context::DeferredCommit *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(CA::Context::_deferred_by_lid, v48)[3] = v47;
        }

        else
        {
          v50 = std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>(CA::Context::_deferred_by_lid, v48);
          v51 = v49[1];
          v52 = v50[1];
          v53 = vcnt_s8(v51);
          v53.i16[0] = vaddlv_u8(v53);
          if (v53.u32[0] > 1uLL)
          {
            if (v52 >= *&v51)
            {
              v52 %= *&v51;
            }
          }

          else
          {
            v52 &= *&v51 - 1;
          }

          v54 = *(*v49 + 8 * v52);
          do
          {
            v55 = v54;
            v54 = *v54;
          }

          while (v54 != v50);
          if (v55 == v49 + 2)
          {
            goto LABEL_95;
          }

          v56 = v55[1];
          if (v53.u32[0] > 1uLL)
          {
            if (v56 >= *&v51)
            {
              v56 %= *&v51;
            }
          }

          else
          {
            v56 &= *&v51 - 1;
          }

          if (v56 != v52)
          {
LABEL_95:
            if (!*v50)
            {
              goto LABEL_96;
            }

            v57 = *(*v50 + 8);
            if (v53.u32[0] > 1uLL)
            {
              if (v57 >= *&v51)
              {
                v57 %= *&v51;
              }
            }

            else
            {
              v57 &= *&v51 - 1;
            }

            if (v57 != v52)
            {
LABEL_96:
              *(*v49 + 8 * v52) = 0;
            }
          }

          v58 = *v50;
          if (*v50)
          {
            v59 = *(v58 + 8);
            if (v53.u32[0] > 1uLL)
            {
              if (v59 >= *&v51)
              {
                v59 %= *&v51;
              }
            }

            else
            {
              v59 &= *&v51 - 1;
            }

            if (v59 != v52)
            {
              *(*v49 + 8 * v59) = v55;
              v58 = *v50;
            }
          }

          *v55 = v58;
          *v50 = 0;
          --v49[3];
          operator delete(v50);
          v60 = CA::Context::_deferred_by_lid;
          if (!*(CA::Context::_deferred_by_lid + 24))
          {
            v61 = *(CA::Context::_deferred_by_lid + 16);
            if (v61)
            {
              do
              {
                v62 = *v61;
                operator delete(v61);
                v61 = v62;
              }

              while (v62);
            }

            v63 = *v60;
            *v60 = 0;
            if (v63)
            {
              operator delete(v63);
            }

            MEMORY[0x1865EA9A0](v60, 0x10A0C408EF24B1CLL);
            CA::Context::_deferred_by_lid = 0;
          }
        }

        v45 += 16;
      }

      while (v45 != v44);
    }

    os_unfair_lock_unlock(&CA::Context::_deferred_lock);
    if (!pthread_main_np())
    {
      operator new();
    }

    CA::Context::delete_sent_deferrals(&v70);
  }

  if (v24)
  {
    *(&v70 + 1) = v24;
    operator delete(v24);
  }

  return pthread_mutex_unlock(&CA::Context::_deferred_sending_mutex);
}

void sub_183BE37F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  pthread_mutex_unlock(&CA::Context::_deferred_sending_mutex);
  _Unwind_Resume(a1);
}

unint64_t CA::BoundsImpl::contains(float64x2_t a1, float64x2_t a2, float64x2_t a3, float64x2_t a4)
{
  v4 = vorrq_s8(vcltzq_f64(a4), vclezq_f64(a2));
  if ((vorrq_s8(vdupq_laneq_s64(v4, 1), v4).u64[0] & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v5 = vandq_s8(vcgeq_f64(vaddq_f64(a1, a2), vaddq_f64(a3, a4)), vcgeq_f64(a3, a1));
  return vandq_s8(vdupq_laneq_s64(v5, 1), v5).u64[0] >> 63;
}

void *std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = vcnt_s8(a2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a3;
    if (a3 >= a2)
    {
      v4 = a3 % a2;
    }
  }

  else
  {
    v4 = (a2 - 1) & a3;
  }

  v5 = *(a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  result = *v5;
  if (*v5)
  {
    do
    {
      v7 = result[1];
      if (v7 == a3)
      {
        if (result[2] == a3)
        {
          return result;
        }
      }

      else
      {
        if (v3.u32[0] > 1uLL)
        {
          if (v7 >= a2)
          {
            v7 %= a2;
          }
        }

        else
        {
          v7 &= a2 - 1;
        }

        if (v7 != v4)
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

BOOL CAObject_CAMLTypeSupportedForKey(uint64_t a1, const __CFString *a2)
{
  v2 = CAInternAtom(a2, 1);
  v3 = objc_opt_class();
  return CAObject_typeForAtom(v3, v2, 0) != 0;
}

void CAML::ObjCCGRect::end(CAML::ObjCCGRect *this, CAML::Context *a2, CAML::State *a3, CAML *a4, uint64_t a5)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v18[0] = a4;
  v9 = CAML::parse_length(a4, v18, (a4 + a5), a4);
  v11 = CAML::parse_length(v18[0], v18, (a4 + a5), v10);
  v13 = CAML::parse_length(v18[0], v18, (a4 + a5), v12);
  v15 = CAML::parse_length(v18[0], v18, (a4 + a5), v14);
  CAML::check_trailer(a2, v18[0], (a4 + a5), v16);
  v17 = objc_autoreleasePoolPush();
  CAML::State::set_value(a3, [MEMORY[0x1E696B098] valueWithRect:{v9, v11, v13, v15}]);
  objc_autoreleasePoolPop(v17);
}

uint64_t register_drawable(uint64_t result, _CAImageQueue *a2)
{
  if (result && a2)
  {
    v3 = result;
    if ((*(result + 129) & 4) != 0)
    {
      CAImageQueueUnregisterBuffer(a2, *(result + 24));
      *(v3 + 129) &= ~4u;
    }

    v4 = *(v3 + 120);
    if (*(v3 + 112))
    {
      v5 = v4 == @"ifSupported";
    }

    else
    {
      v5 = 1;
    }

    if (v5 || v4 == @"never")
    {
      v7 = 2;
    }

    else
    {
      v7 = 1;
    }

    result = CAImageQueueRegisterIOSurfaceBuffer(a2, *(v3 + 64), v7);
    if (result)
    {
      *(v3 + 24) = result;
      *(v3 + 129) |= 4u;
    }
  }

  return result;
}

double CAML::parse_length(CAML *this, char *a2, char **a3, const char *a4)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v17[0] = this;
  v7 = x_strtod(this, v17, a3);
  v8 = v7;
  v9 = (v17[0] + 2);
  if (v17[0] + 2 >= a3)
  {
    goto LABEL_11;
  }

  v10 = *v17[0];
  if (v10 <= 0x6C)
  {
    if (v10 != 99)
    {
      if (v10 == 105)
      {
        v11 = v7 * 72.0;
        v12 = v17[0][1] == 110;
        goto LABEL_16;
      }

LABEL_11:
      v9 = v17[0];
      if (!a2)
      {
        return v8;
      }

      goto LABEL_20;
    }

    v14 = *(v17[0] + 1);
    v15 = 28.346456;
LABEL_15:
    v11 = v8 * v15;
    v12 = v14 == 109;
LABEL_16:
    if (v12)
    {
      v8 = v11;
    }

    else
    {
      v9 = v17[0];
    }

    goto LABEL_19;
  }

  if (v10 == 109)
  {
    v14 = *(v17[0] + 1);
    v15 = 2.8346456;
    goto LABEL_15;
  }

  if (v10 != 112)
  {
    goto LABEL_11;
  }

  v13 = *(v17[0] + 1);
  if (v13 == 99)
  {
    v8 = v7 * 12.0;
    if (!a2)
    {
      return v8;
    }

    goto LABEL_20;
  }

  if (v13 != 120 && v13 != 116)
  {
    goto LABEL_11;
  }

LABEL_19:
  if (a2)
  {
LABEL_20:
    *a2 = CAML::skip_whitespace(v9, a3, v6);
  }

  return v8;
}

CAML *CAML::skip_whitespace(CAML *this, CAML *a2, const char *a3)
{
  v3 = this;
  if (this < a2)
  {
    v5 = MEMORY[0x1E69E9830];
    while (1)
    {
      v6 = *v3;
      if (!*v3)
      {
        break;
      }

      if ((v6 & 0x80000000) != 0)
      {
        if (!__maskrune(v6, 0x4000uLL))
        {
          return v3;
        }
      }

      else if ((*(v5 + 4 * v6 + 60) & 0x4000) == 0)
      {
        return v3;
      }

      v3 = (v3 + 1);
      if (v3 == a2)
      {
        return a2;
      }
    }
  }

  return v3;
}

uint64_t CAML::check_trailer(uint64_t this, CAML::Context *a2, CAML::Context *a3, const char *a4)
{
  if (a2 < a3)
  {
    v5 = a2;
    v6 = this;
    v7 = MEMORY[0x1E69E9830];
    do
    {
      this = *v5;
      if (!*v5)
      {
        break;
      }

      if ((this & 0x80000000) != 0)
      {
        this = __maskrune(this, 0x4000uLL);
        if (!this)
        {
LABEL_10:
          if (*v5)
          {
            return CAML::Context::warning(v6, "Ignoring trailing characters: %s", v5);
          }

          return this;
        }
      }

      else
      {
        this = *(v7 + 4 * this + 60) & 0x4000;
        if (!this)
        {
          goto LABEL_10;
        }
      }

      ++v5;
    }

    while (v5 != a3);
  }

  return this;
}

uint64_t default_anim_init(void)
{
  basicAnim = objc_alloc_init(CABasicAnimation);
  transition = objc_alloc_init(CATransition);
  v0 = [CAMediaTimingFunction functionWithName:@"default"];
  [basicAnim setTimingFunction:v0];
  [basicAnim setFillMode:@"backwards"];
  [basicAnim setKeyPath:@"contents"];
  [transition setTimingFunction:v0];
  result = [transition setFillMode:@"backwards"];
  *(basicAnim + 16) |= 1u;
  *(transition + 16) |= 1u;
  return result;
}

uint64_t mark_drawable_finish(CAMetalDrawable *a1, _CAMetalLayerPrivate *a2, int a3, double a4)
{
  [(CAMetalDrawable *)a1 setDidFinish:1];
  result = [(CAMetalDrawable *)a1 targetPresentationTimestamp];
  if (v9 != 0.0)
  {
    v10 = MEMORY[0x1E696AD98];
    [(CAMetalDrawable *)a1 targetTimestamp];
    [v10 numberWithDouble:?];
    v11 = MEMORY[0x1E696AD98];
    [(CAMetalDrawable *)a1 targetSamplingTimestamp];
    [v11 numberWithDouble:?];
    [(CAMetalDrawable *)a1 minimumPresentationDuration];
    v13 = v12;
    v14 = MEMORY[0x1E696AD98];
    [(CAMetalDrawable *)a1 targetPresentationTimestamp];
    v16 = v15;
    if (v13 != 0.0)
    {
      v17 = *(a2 + 38);
      [(CAMetalDrawable *)a1 minimumPresentationDuration];
      if (v16 <= v18 + v17)
      {
        v20 = *(a2 + 38);
        [(CAMetalDrawable *)a1 minimumPresentationDuration];
        v16 = v21 + v20;
      }

      else
      {
        [(CAMetalDrawable *)a1 targetPresentationTimestamp];
        v16 = v19;
      }
    }

    result = [v14 numberWithDouble:v16];
  }

  if (MEMORY[0x1EEE88950])
  {
    [(CAMetalDrawable *)a1 layer];
    [(CAMetalDrawable *)a1 drawableID];
    [(CAMetalDrawable *)a1 hasExplicitDeadlines];
    result = FPDrawableLifetimeMarkFinished();
  }

  if (a3)
  {
    *(a2 + 38) = a4;
  }

  return result;
}

void CAML::ObjCString::end(CAML::ObjCString *this, CAML::Context *a2, CAML::State *a3, UInt8 *bytes, CFIndex numBytes)
{
  v6 = CFStringCreateWithBytes(0, bytes, numBytes, 0x8000100u, 0);
  CAML::State::set_value(a3, v6);

  CFRelease(v6);
}

double CA::OGL::Context::bind_circle(CA::OGL::Context *this, unsigned int a2, int a3, BOOL a4, BOOL a5, double *a6)
{
  v6 = *(this + 2);
  *(v6 + 16 * a2 + 96) = xmmword_183E21110;
  *(v6 + a2 + 17) = 10;
  __asm { FMOV            V0.2S, #-1.0 }

  result = -_D0;
  *a6 = result;
  return result;
}

uint64_t CA::OGL::anonymous namespace::clip_nine_part_rect(CA::OGL::_anonymous_namespace_ *this, double *a2, double *a3, float *a4, float *a5, float *a6, double *a7, const Rect *a8)
{
  v8 = *a7;
  v9 = v8;
  v10 = a7[2] + v9;
  v11 = v10;
  if (*this > v10 || *(this + 3) < v9)
  {
    return 0;
  }

  v12 = a7[1];
  v13 = a7[3];
  v14 = 1;
  while (1)
  {
    v15 = *(this + v14);
    if (v15 > v11)
    {
      break;
    }

    if (++v14 == 4)
    {
      goto LABEL_18;
    }
  }

  v16 = (v14 << 32) - 0x100000000;
  v17 = v16 >> 32;
  v18 = (v11 - *(this + (v16 >> 29))) / (v15 - *(this + (v16 >> 29)));
  if (a3)
  {
    *(a3 + v14) = *(a3 + v17) + ((*(a3 + v14) - *(a3 + v17)) * v18);
  }

  if (a5)
  {
    a5[v14] = a5[v17] + ((a5[v14] - a5[v17]) * v18);
  }

  *(this + v14) = v11;
  if (v14 <= 2)
  {
    v19 = v14 - 1;
    do
    {
      *(this + v19 + 2) = v11;
      if (a3)
      {
        *(a3 + v19 + 2) = *(a3 + v14);
      }

      if (a5)
      {
        a5[v19 + 2] = a5[v14];
      }

      ++v19;
    }

    while (v19 != 2);
  }

LABEL_18:
  v20 = (this + 16);
  v21 = 1;
  while (1)
  {
    v22 = *v20;
    if (*v20 < v9)
    {
      break;
    }

    --v21;
    --v20;
    if (v21 == -2)
    {
      goto LABEL_32;
    }
  }

  v23 = v21 + 1;
  v24 = (v21 + 2);
  v25 = (v9 - v22) / (*(this + v24) - v22);
  if (a3)
  {
    *(a3 + v23) = *(a3 + v23) + ((*(a3 + v24) - *(a3 + v23)) * v25);
  }

  if (a5)
  {
    a5[v23] = a5[v23] + ((a5[v24] - a5[v23]) * v25);
  }

  for (*(this + v23) = v9; v21 != -1; --v21)
  {
    *(this + v21) = v9;
    if (a3)
    {
      *(a3 + v21) = *(a3 + v23);
    }

    if (a5)
    {
      a5[v21] = a5[v23];
    }
  }

LABEL_32:
  v26 = v12;
  v27 = v26;
  v28 = v13 + v27;
  v29 = v28;
  if (*a2 > v29 || a2[3] < v27)
  {
    return 0;
  }

  v31 = 1;
  while (1)
  {
    v32 = a2[v31];
    if (v32 > v29)
    {
      break;
    }

    if (++v31 == 4)
    {
      goto LABEL_50;
    }
  }

  v33 = (v31 << 32) - 0x100000000;
  v34 = v33 >> 32;
  v35 = (v29 - *(a2 + (v33 >> 29))) / (v32 - *(a2 + (v33 >> 29)));
  if (a4)
  {
    a4[v31] = a4[v34] + ((a4[v31] - a4[v34]) * v35);
  }

  if (a6)
  {
    a6[v31] = a6[v34] + ((a6[v31] - a6[v34]) * v35);
  }

  a2[v31] = v29;
  if (v31 <= 2)
  {
    v36 = v31 - 1;
    do
    {
      a2[v36 + 2] = v29;
      if (a4)
      {
        a4[v36 + 2] = a4[v31];
      }

      if (a6)
      {
        a6[v36 + 2] = a6[v31];
      }

      ++v36;
    }

    while (v36 != 2);
  }

LABEL_50:
  v37 = a2 + 2;
  v38 = 1;
  while (1)
  {
    v39 = *v37;
    if (*v37 < v27)
    {
      break;
    }

    --v38;
    --v37;
    if (v38 == -2)
    {
      return 1;
    }
  }

  v40 = v38 + 1;
  v41 = (v38 + 2);
  v42 = (v27 - v39) / (a2[v41] - v39);
  if (a4)
  {
    a4[v40] = a4[v40] + ((a4[v41] - a4[v40]) * v42);
  }

  if (a6)
  {
    a6[v40] = a6[v40] + ((a6[v41] - a6[v40]) * v42);
  }

  a2[v40] = v27;
  if (v38 == -1)
  {
    return 1;
  }

  result = 1;
  do
  {
    a2[v38] = v27;
    if (a4)
    {
      a4[v38] = a4[v40];
    }

    if (a6)
    {
      a6[v38] = a6[v40];
    }

    --v38;
  }

  while (v38 != -1);
  return result;
}

void CAML::ObjCCGPoint::end(CAML::ObjCCGPoint *this, CAML::Context *a2, CAML::State *a3, CAML *a4, uint64_t a5)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v14[0] = a4;
  v9 = CAML::parse_length(a4, v14, (a4 + a5), a4);
  v11 = CAML::parse_length(v14[0], v14, (a4 + a5), v10);
  CAML::check_trailer(a2, v14[0], (a4 + a5), v12);
  v13 = objc_autoreleasePoolPush();
  CAML::State::set_value(a3, [MEMORY[0x1E696B098] valueWithPoint:{v9, v11}]);
  objc_autoreleasePoolPop(v13);
}

void CAML::ObjCCGColor::start(CAML::ObjCCGColor *this, CAML::Context *a2, CAML::State *a3, const char **a4)
{
  v38 = *MEMORY[0x1E69E9840];
  v7 = CAML::Context::parse_src_attribute(a2, a4);
  if (v7)
  {
    v8 = v7;
    v9 = (*(*a2 + 72))(a2, v7);
    if (v9 && (v10 = v9, v11 = CFGetTypeID(v9), v11 == CGImageGetTypeID()))
    {
      v12 = 0;
    }

    else
    {
      image_from_url = CAML::create_image_from_url(v8, 0);
      v14 = *a2;
      if (image_from_url)
      {
        v10 = image_from_url;
        (*(v14 + 80))(a2, v8, image_from_url);
      }

      else
      {
        v26 = (*(v14 + 88))(a2, v8);
        if (!v26 || (v10 = v26, v27 = CFGetTypeID(v26), v27 != CGImageGetTypeID()))
        {
          CAML::Context::error(a2, "Failed to open image");
LABEL_22:
          CFRelease(v8);
          return;
        }
      }

      v12 = 1;
    }

    v36 = 0u;
    v37 = 0u;
    *v35 = 0u;
    v15 = CAML::memq_(a4, "matrix", 1);
    if (v15)
    {
      v16 = v15;
      v17 = strlen(v15);
      CAML::parse_affine_matrix(a2, v16, v35, (v16 + v17), v18);
    }

    else
    {
      v23 = *(MEMORY[0x1E695EFD0] + 16);
      *v35 = *MEMORY[0x1E695EFD0];
      v36 = v23;
      v37 = *(MEMORY[0x1E695EFD0] + 32);
    }

    v24 = CGPatternCreateWithImage2();
    if (v12)
    {
      CGImageRelease(v10);
    }

    if (v24)
    {
      v25 = CA_CGPatternColorCreate(v24);
      CAML::State::set_value(a3, v25);
      CGColorRelease(v25);
      CGPatternRelease(v24);
    }

    else
    {
      CAML::Context::error(a2, "Failed to create pattern from image");
    }

    goto LABEL_22;
  }

  v19 = CAML::memq_(a4, "colorspace", 1);
  v20 = v19;
  if (!v19)
  {
    v28 = CAGetColorSpace(36);
    v22 = CGColorSpaceRetain(v28);
    if (v22)
    {
      goto LABEL_12;
    }

LABEL_24:
    v29 = "sRGB";
    if (v20)
    {
      v29 = v20;
    }

    CAML::Context::error(a2, "Unable to create colorspace: %s", v29);
    goto LABEL_27;
  }

  v21 = CFStringCreateWithFormat(0, 0, @"kCGColorSpace%s", v19);
  v22 = CGColorSpaceCreateWithName(v21);
  CFRelease(v21);
  if (!v22)
  {
    goto LABEL_24;
  }

LABEL_12:
  CAML::State::set_value(a3, v22);
  CGColorSpaceRelease(v22);
LABEL_27:
  v30 = CAML::memq_(a4, "opacity", 1);
  if (v30)
  {
    v31 = v30;
    v32 = strlen(v30);
    v34 = CAML::parse_real(v31, 0, (v31 + v32), v33);
  }

  else
  {
    v34 = 1.0;
  }

  *a3 = v34;
}

const char *CAML::Context::parse_src_attribute(CAML::Context *this, const char **a2)
{
  result = CAML::memq_(a2, "src", 1);
  if (result)
  {
    v4 = result;
    v5 = strlen(result);
    v6 = *(this + 2);

    return CFURLCreateWithBytes(0, v4, v5, 0x8000100u, v6);
  }

  return result;
}

double CAML::parse_real(CAML *this, char *a2, char **a3, const char *a4)
{
  __s1[1] = *MEMORY[0x1E69E9840];
  __s1[0] = this;
  v7 = x_strtod(this, __s1, a3);
  v8 = __s1[0];
  v17 = __s1[0];
  v9 = *__s1[0];
  if (v9 <= 0x67)
  {
    if (*__s1[0] > 0x62u)
    {
      if (v9 == 99)
      {
        if (__s1[0][1] != 109)
        {
          goto LABEL_46;
        }

        v10 = 28.346456;
        goto LABEL_43;
      }

      if (v9 == 100)
      {
        if (__s1[0][1] != 101 || __s1[0][2] != 103)
        {
          goto LABEL_46;
        }

        v17 = (__s1[0] + 3);
        v11 = 0.0174532925;
      }

      else
      {
        if (v9 != 103 || strncmp(__s1[0], "grad", 4uLL))
        {
          goto LABEL_46;
        }

        v17 = (v8 + 4);
        v11 = 0.0157079633;
      }

      v7 = v7 * v11;
      goto LABEL_46;
    }

    if (v9 != 37)
    {
      if (v9 == 58)
      {
        v12 = x_strtod(__s1[0] + 1, &v17, a3);
        if (*(v17 + 1) == 58)
        {
          v7 = x_strtod(v17 + 1, &v17, a3) + (v12 + v7 * 60.0) * 60.0;
        }

        else
        {
          v7 = v12 + v7 * 60.0;
        }
      }

      goto LABEL_46;
    }

    v13 = 0.01;
LABEL_35:
    v7 = v7 * v13;
    goto LABEL_36;
  }

  if (*__s1[0] <= 0x6Fu)
  {
    if (v9 != 104)
    {
      if (v9 == 105)
      {
        if (__s1[0][1] != 110)
        {
          goto LABEL_46;
        }

        v10 = 72.0;
        goto LABEL_43;
      }

      if (v9 == 109 && __s1[0][1] == 109)
      {
        v10 = 2.8346456;
LABEL_43:
        v7 = v7 * v10;
LABEL_44:
        v14 = __s1[0] + 2;
        goto LABEL_45;
      }

      goto LABEL_46;
    }

    v13 = 3600.0;
    goto LABEL_35;
  }

  if (v9 != 112)
  {
    if (v9 == 114)
    {
      if (__s1[0][1] != 97 || __s1[0][2] != 100)
      {
        goto LABEL_46;
      }

      v14 = __s1[0] + 3;
LABEL_45:
      v17 = v14;
      goto LABEL_46;
    }

    if (v9 != 115)
    {
      goto LABEL_46;
    }

LABEL_36:
    v14 = __s1[0] + 1;
    goto LABEL_45;
  }

  v15 = *(__s1[0] + 1);
  if (v15 == 99)
  {
    v10 = 12.0;
    goto LABEL_43;
  }

  if (v15 == 120 || v15 == 116)
  {
    goto LABEL_44;
  }

LABEL_46:
  if (a2)
  {
    *a2 = CAML::skip_whitespace(v17, a3, v6);
  }

  return v7;
}

uint64_t CAML::cgcolor_end(CAML *this, CAML::Context *a2, CAML::State *a3, char *a4)
{
  v101 = *MEMORY[0x1E69E9840];
  v96 = a4;
  v97 = a3;
  *components = 0u;
  v100 = 0u;
  v6 = &a4[a3];
  CAML::trim_whitespace(&v97, &v96, a3);
  v8 = *(a2 + 8);
  if (v8)
  {
    v9 = CFGetTypeID(*(a2 + 8));
    TypeID = CGColorSpaceGetTypeID();
    v11 = v97;
    if (v9 == TypeID)
    {
      if (v96)
      {
        v12 = *v97;
        if (v12 < 0 || (*(MEMORY[0x1E69E9830] + 4 * v12 + 60) & 0x400) == 0)
        {
          if (!strncmp(v97, "rgb(", 4uLL))
          {
            v29 = v11 + 4;
            if (v29 < v6)
            {
              v30 = MEMORY[0x1E69E9830];
              while (1)
              {
                v31 = *v29;
                if (!*v29)
                {
                  break;
                }

                if ((v31 & 0x80000000) != 0)
                {
                  if (!__maskrune(v31, 0x4000uLL))
                  {
                    break;
                  }
                }

                else if ((*(v30 + 4 * v31 + 60) & 0x4000) == 0)
                {
                  break;
                }

                if (++v29 == v6)
                {
                  v29 = v6;
                  break;
                }
              }
            }

            if (v29 >= v6)
            {
              v40 = 0;
LABEL_66:
              v34 = *v29;
            }

            else
            {
              v32 = 0;
              v33 = MEMORY[0x1E69E9830];
              while (1)
              {
                v34 = *v29;
                if (!*v29 || v34 == 41)
                {
                  break;
                }

                v98 = v29;
                v35 = x_strtod(v29, &v98, v6);
                v36 = v98;
                v37 = v98 + 1;
                v38 = *v98;
                components[v32] = dbl_183E21370[v38 == 37] * v35;
                if (v38 == 44)
                {
                  v29 = v37;
                }

                else
                {
                  v29 = v36;
                }

                if (v29 < v6)
                {
                  while (1)
                  {
                    v39 = *v29;
                    if (!*v29)
                    {
                      break;
                    }

                    if ((v39 & 0x80000000) != 0)
                    {
                      if (!__maskrune(v39, 0x4000uLL))
                      {
                        break;
                      }
                    }

                    else if ((*(v33 + 4 * v39 + 60) & 0x4000) == 0)
                    {
                      break;
                    }

                    if (++v29 == v6)
                    {
                      v29 = v6;
                      break;
                    }
                  }
                }

                v40 = v32 + 1;
                if (v29 < v6)
                {
                  v54 = v32++ >= 2;
                  if (!v54)
                  {
                    continue;
                  }
                }

                goto LABEL_66;
              }

              v40 = v32;
            }

            if (v34 == 41)
            {
              v11 = (v29 + 1);
              if (v40 <= 2)
              {
                memset_pattern16(&components[v40], &unk_183E21990, 24 - 8 * v40);
              }

              goto LABEL_143;
            }

            v11 = v97;
          }

          else
          {
            if (v12 != 35)
            {
              v41 = 0;
              v42 = "aqua";
              while (strcmp(v42, v11))
              {
                ++v41;
                v42 += 40;
                if (v41 == 16)
                {
                  goto LABEL_73;
                }
              }

              *components = *(v42 + 1);
              *&v100 = *(v42 + 4);
              v11 += strlen(&CAParseCSSColorDescription::colors[40 * v41]);
              goto LABEL_143;
            }

            v13 = strlen(v11);
            if (v13 == 7)
            {
              v60 = v11[1];
              v61 = v60 - 48;
              v62 = v60 - 97;
              if ((v60 - 65) >= 6)
              {
                v63 = 0;
              }

              else
              {
                v63 = v60 - 55;
              }

              v64 = v60 - 87;
              if (v62 > 5)
              {
                v64 = v63;
              }

              if (v61 < 0xA)
              {
                v64 = v61;
              }

              v65 = 16 * v64;
              v66 = v11[2];
              v67 = v66 - 48;
              v68 = v66 - 97;
              if ((v66 - 65) >= 6)
              {
                v69 = 0;
              }

              else
              {
                v69 = v66 - 55;
              }

              v70 = v66 - 87;
              if (v68 > 5)
              {
                v70 = v69;
              }

              if (v67 < 0xA)
              {
                v70 = v67;
              }

              components[0] = (v70 + v65) * 0.00392156863;
              v71 = v11[3];
              v72 = v71 - 48;
              v73 = v71 - 97;
              if ((v71 - 65) >= 6)
              {
                v74 = 0;
              }

              else
              {
                v74 = v71 - 55;
              }

              v75 = v71 - 87;
              if (v73 > 5)
              {
                v75 = v74;
              }

              if (v72 < 0xA)
              {
                v75 = v72;
              }

              v76 = 16 * v75;
              v77 = v11[4];
              v78 = v77 - 48;
              v79 = v77 - 97;
              if ((v77 - 65) >= 6)
              {
                v80 = 0;
              }

              else
              {
                v80 = v77 - 55;
              }

              v81 = v77 - 87;
              if (v79 > 5)
              {
                v81 = v80;
              }

              if (v78 < 0xA)
              {
                v81 = v78;
              }

              components[1] = (v81 + v76) * 0.00392156863;
              v82 = v11[5];
              v83 = v82 - 48;
              v84 = v82 - 97;
              if ((v82 - 65) >= 6)
              {
                v85 = 0;
              }

              else
              {
                v85 = v82 - 55;
              }

              v86 = v82 - 87;
              if (v84 > 5)
              {
                v86 = v85;
              }

              if (v83 < 0xA)
              {
                v86 = v83;
              }

              v87 = 16 * v86;
              v88 = v11[6];
              v89 = v88 - 48;
              v90 = v88 - 97;
              if ((v88 - 65) >= 6)
              {
                v91 = 0;
              }

              else
              {
                v91 = v88 - 55;
              }

              v92 = v88 - 87;
              if (v90 > 5)
              {
                v92 = v91;
              }

              if (v89 < 0xA)
              {
                v92 = v89;
              }

              *&v100 = (v92 + v87) * 0.00392156863;
              v11 += 7;
              goto LABEL_143;
            }

            if (v13 == 4)
            {
              v14 = v11[1];
              v15 = v14 - 48;
              v16 = v14 - 97;
              if ((v14 - 65) >= 6)
              {
                v17 = 0;
              }

              else
              {
                v17 = v14 - 55;
              }

              v18 = v14 - 87;
              if (v16 > 5)
              {
                v18 = v17;
              }

              if (v15 < 0xA)
              {
                v18 = v15;
              }

              components[0] = v18 * 0.0666666667;
              v19 = v11[2];
              v20 = v19 - 48;
              v21 = v19 - 97;
              if ((v19 - 65) >= 6)
              {
                v22 = 0;
              }

              else
              {
                v22 = v19 - 55;
              }

              v23 = v19 - 87;
              if (v21 > 5)
              {
                v23 = v22;
              }

              if (v20 < 0xA)
              {
                v23 = v20;
              }

              components[1] = v23 * 0.0666666667;
              v24 = v11[3];
              v25 = v24 - 48;
              v26 = v24 - 97;
              if ((v24 - 65) >= 6)
              {
                v27 = 0;
              }

              else
              {
                v27 = v24 - 55;
              }

              v28 = v24 - 87;
              if (v26 > 5)
              {
                v28 = v27;
              }

              if (v25 < 0xA)
              {
                v28 = v25;
              }

              *&v100 = v28 * 0.0666666667;
              v11 += 4;
LABEL_143:
              v97 = v11;
              *(&v100 + 1) = *a2;
              v59 = components;
              v58 = v8;
LABEL_144:
              v93 = CGColorCreate(v58, v59);
              CAML::State::set_value(a2, v93);
              CGColorRelease(v93);
              return CAML::check_trailer(this, v11, v6, v7);
            }
          }
        }
      }

LABEL_73:
      NumberOfComponents = CGColorSpaceGetNumberOfComponents(v8);
      MEMORY[0x1EEE9AC00](NumberOfComponents);
      v45 = (&v95 - v44);
      bzero(&v95 - v44, v46);
      LODWORD(v47) = 0;
      if (!*v11 || (NumberOfComponents & 0x80000000) != 0)
      {
        v48 = 0;
      }

      else
      {
        v47 = 0;
        v48 = 0;
        do
        {
          v49 = v47;
          v98 = v11;
          v50 = x_strtod(v11, &v98, v6);
          v52 = CAML::skip_whitespace(v98, v6, v51);
          v11 = v52;
          v45[v49] = v50;
          v53 = v50 < 0.0;
          if (v50 > 1.0)
          {
            v53 = 1;
          }

          v48 |= v53;
          v47 = v49 + 1;
          if (*v52)
          {
            v54 = v49 >= (NumberOfComponents & 0x7FFFFFFF);
          }

          else
          {
            v54 = 1;
          }
        }

        while (!v54);
        v97 = v52;
      }

      if (v47 == NumberOfComponents)
      {
        v45[NumberOfComponents] = 1.0;
      }

      else if (v47 <= NumberOfComponents)
      {
        CAML::Context::error(this, "Incorrect number of color components (need %d)", NumberOfComponents);
      }

      if ((v48 & (CAML::cgcolor_end(CAML::Context *,CAML::State *,char *,unsigned long)::xr_srgb == 0)) == 1)
      {
        CAML::cgcolor_end(CAML::Context *,CAML::State *,char *,unsigned long)::xr_srgb = CGColorSpaceCreateWithName(*MEMORY[0x1E695F110]);
      }

      v55 = CAML::cgcolor_end(CAML::Context *,CAML::State *,char *,unsigned long)::srgb;
      if (!CAML::cgcolor_end(CAML::Context *,CAML::State *,char *,unsigned long)::srgb)
      {
        v55 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
        CAML::cgcolor_end(CAML::Context *,CAML::State *,char *,unsigned long)::srgb = v55;
      }

      v56 = NumberOfComponents << 32;
      v57 = (v48 & 1) != 0 && CFEqual(v8, v55) != 0;
      *(v45 + (v56 >> 29)) = *(v45 + (v56 >> 29)) * *a2;
      if (v57)
      {
        v58 = CAML::cgcolor_end(CAML::Context *,CAML::State *,char *,unsigned long)::xr_srgb;
      }

      else
      {
        v58 = v8;
      }

      v59 = v45;
      goto LABEL_144;
    }
  }

  else
  {
    v11 = v97;
  }

  return CAML::check_trailer(this, v11, v6, v7);
}

void CAML::ObjCNSArray::start(CAML::ObjCNSArray *this, CAML::Context *a2, CAML::State *a3, const char **a4)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  CAML::State::set_value(a3, Mutable);
  CFRelease(Mutable);
  *(a3 + 4) = 3;
}

void CAML::Context::set_object(CAML::Context *this, const __CFString *key, const CAML::Type *a3, const void *a4)
{
  Mutable = *(this + 8);
  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E490], 0, MEMORY[0x1E695E9D8], 0);
    *(this + 8) = Mutable;
  }

  Value = CFDictionaryGetValue(Mutable, key);
  if (Value)
  {
    v10 = Value;
    *Value = a3;
    v11 = Value[1];
    if (v11 != a4)
    {
      CFRelease(v11);
      v10[1] = CFRetain(a4);
    }
  }

  else
  {
    v12 = *(this + 8);
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v13 = malloc_type_zone_malloc(malloc_zone, 0x10uLL, 0x165299FDuLL);
    v14 = v13;
    if (v13)
    {
      *v13 = a3;
      v13[1] = CFRetain(a4);
    }

    CFDictionarySetValue(v12, key, v14);
  }
}

void CAML::ObjCCATransform3D::end(CAML::ObjCCATransform3D *this, CAML::Context *a2, CAML::State *a3, char *a4, uint64_t a5)
{
  v91 = *MEMORY[0x1E69E9840];
  __src = a4;
  v54 = xmmword_183E20E00;
  v55 = 0u;
  v56 = xmmword_183E20E60;
  v57 = 0u;
  v58 = 0u;
  v59 = xmmword_183E20E00;
  v60 = 0u;
  v61 = xmmword_183E20E60;
  if (a5 >= 1)
  {
    v5 = a4;
    v6 = &a4[a5];
    memset(__dst, 0, sizeof(__dst));
    __x = 0uLL;
    v75 = 0uLL;
    v76 = 0uLL;
    v77 = 0uLL;
    v78 = 0uLL;
    v79 = 0uLL;
    v80 = 0uLL;
    v81 = 0uLL;
    v70 = 0uLL;
    v71 = 0uLL;
    v72 = 0uLL;
    v62 = 0uLL;
    v63 = 0uLL;
    v64 = 0uLL;
    v65 = 0uLL;
    v66 = 0uLL;
    v67 = 0uLL;
    v7.f64[0] = NAN;
    v7.f64[1] = NAN;
    v50 = vnegq_f64(v7);
    v68 = 0uLL;
    v69 = 0uLL;
    v8 = MEMORY[0x1E69E9830];
    while (1)
    {
      if (!*v5)
      {
        goto LABEL_115;
      }

      v9 = CAML::skip_whitespace(v5, v6, a3);
      v10 = 0;
      __src = v9;
      do
      {
        if (__src < v6)
        {
          v11 = *(__src + v10);
          if (!*(__src + v10))
          {
            break;
          }

          if ((v11 & 0x80000000) != 0)
          {
            if (!__maskrune(v11, 0x100uLL))
            {
              break;
            }
          }

          else if ((*(v8 + 4 * v11 + 60) & 0x100) == 0)
          {
            break;
          }
        }

        ++v10;
      }

      while (v10 != 31);
      v12 = __src;
      memcpy(__dst, __src, v10);
      *(__dst + v10) = 0;
      __src = &v12[v10];
      v14 = CAML::skip_whitespace(&v12[v10], v6, v13);
      v5 = v14;
      __src = v14;
      if (v14 < v6 && *v14 == 40)
      {
        v5 = CAML::skip_whitespace((v14 + 1), v6, a3);
        __src = v5;
      }

      if (v5 >= v6)
      {
        v17 = 0;
      }

      else
      {
        v17 = 0;
        do
        {
          v18 = *v5;
          if (!*v5)
          {
            break;
          }

          if (v18 == 41 || v17 > 0xF)
          {
            if (v18 == 41)
            {
              v5 = CAML::skip_whitespace((v5 + 1), v6, a3);
              __src = v5;
            }

            break;
          }

          __x.f64[v17] = CAML::parse_real(v5, &__src, v6, v16);
          v21 = CAML::skip_whitespace(__src, v6, v20);
          v5 = v21;
          __src = v21;
          if (v21 < v6)
          {
            v22 = *v21;
            if (v22 == 59 || v22 == 44)
            {
              v5 = CAML::skip_whitespace((v21 + 1), v6, a3);
              __src = v5;
            }
          }

          ++v17;
        }

        while (v5 < v6);
      }

      if (v5 < v6)
      {
        v23 = *v5;
        if (v23 == 59 || v23 == 44)
        {
          v5 = CAML::skip_whitespace((v5 + 1), v6, a3);
          __src = v5;
        }
      }

      if (LODWORD(__dst[0]) != 1920229741 || *(__dst + 3) != 7891314)
      {
        break;
      }

      if (v17 == 6)
      {
        v70 = __x;
        v71 = v75;
        v72 = v76;
        v34 = vmlaq_n_f64(vmlaq_n_f64(v60, v54, v76.f64[0]), v56, v76.f64[1]);
        v38 = vmlaq_n_f64(vmulq_n_f64(v54, v75.f64[0]), v56, v75.f64[1]);
        v36 = vmlaq_n_f64(vmlaq_n_f64(v61, v55, v76.f64[0]), v57, v76.f64[1]);
        v39 = vmlaq_n_f64(vmulq_n_f64(v55, v75.f64[0]), v57, v75.f64[1]);
        v54 = vmlaq_n_f64(vmulq_n_f64(v54, __x.f64[0]), v56, __x.f64[1]);
        v55 = vmlaq_n_f64(vmulq_n_f64(v55, __x.f64[0]), v57, __x.f64[1]);
        v56 = v38;
        v57 = v39;
LABEL_75:
        v60 = v34;
        v61 = v36;
        goto LABEL_114;
      }

      if (v17 != 16)
      {
        goto LABEL_116;
      }

      v58 = v78;
      v59 = v79;
      v60 = v80;
      v61 = v81;
      v54 = __x;
      v55 = v75;
      v56 = v76;
      v57 = v77;
LABEL_114:
      if (v5 >= v6)
      {
        goto LABEL_115;
      }
    }

    if (*&__dst[0] == 0x74616C736E617274 && WORD4(__dst[0]) == 101 && v17 - 1 <= 2)
    {
      if (v17 <= 1)
      {
        __x.f64[1] = 0.0;
        goto LABEL_79;
      }

      if (v17 == 2)
      {
LABEL_79:
        v75.f64[0] = 0.0;
        v40 = 0.0;
      }

      else
      {
        v40 = v75.f64[0];
      }

      v60 = vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(v60, v54, __x.f64[0]), v56, __x.f64[1]), v58, v40);
      v61 = vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(v61, v55, __x.f64[0]), v57, __x.f64[1]), v59, v40);
      goto LABEL_114;
    }

    if (LODWORD(__dst[0]) == 1818321779 && WORD2(__dst[0]) == 101)
    {
      if (v17 == 1)
      {
        v43 = __x.f64[0];
        __x.f64[1] = __x.f64[0];
        v75.f64[0] = __x.f64[0];
        v41 = __x.f64[0];
        v42 = __x.f64[0];
        goto LABEL_103;
      }

      if (v17 == 3)
      {
        v41 = __x.f64[1];
        v42 = __x.f64[0];
        v43 = v75.f64[0];
LABEL_103:
        v54 = vmulq_n_f64(v54, v42);
        v55 = vmulq_n_f64(v55, v42);
        v56 = vmulq_n_f64(v56, v41);
        v57 = vmulq_n_f64(v57, v41);
        v58 = vmulq_n_f64(v58, v43);
        v59 = vmulq_n_f64(v59, v43);
        goto LABEL_114;
      }
    }

    if (LODWORD(__dst[0]) == 1635020658 && *(__dst + 3) == 6648929)
    {
      if (v17 == 4)
      {
        CA::Mat4Impl::mat4_set_rotation(&v83, v15, __x.f64[0], __x.f64[1], v75.f64[0], v75.f64[1]);
LABEL_110:
        v48 = &v83;
LABEL_113:
        CA::Mat4Impl::mat4_concat(&v54, v48->f64, v54.f64, v16);
        goto LABEL_114;
      }

      if (v17 == 1)
      {
        v86 = 0u;
        v87 = 0u;
        v84 = 0u;
        v88 = xmmword_183E20E00;
        v89 = 0u;
        v90 = xmmword_183E20E60;
        v46 = __sincos_stret(__x.f64[0]);
        *v45.i64 = v46.__cosval;
        *v44.i64 = v46.__sinval;
        if (fabs(v46.__sinval) >= 0.0000001)
        {
          if (fabs(v46.__cosval) < 0.0000001)
          {
            v45.i64[0] = 1.0;
            v44.i64[0] = vbslq_s8(v50, v45, v44).u64[0];
            v45.i64[0] = 0;
          }
        }

        else
        {
          v44.i64[0] = 1.0;
          v45.i64[0] = vbslq_s8(v50, v44, v45).u64[0];
          v44.i64[0] = 0;
        }

        *&v83.f64[0] = v45.i64[0];
        *&v83.f64[1] = v44.i64[0];
        v85.f64[0] = -*v44.i64;
        *&v85.f64[1] = v45.i64[0];
        goto LABEL_110;
      }
    }

    v30 = LODWORD(__dst[0]) == 2003135347 && WORD2(__dst[0]) == 88;
    if (!v30 && (LODWORD(__dst[0]) == 2003135347 ? (v31 = WORD2(__dst[0]) == 89) : (v31 = 0), !v31) || v17 != 1)
    {
      if ((*&__dst[0] == 0x59587261656873 || *&__dst[0] == 0x5A597261656873 || *&__dst[0] == 0x5A587261656873) && v17 == 1)
      {
        v62 = xmmword_183E20E00;
        v63 = 0u;
        v65 = 0u;
        v66 = 0u;
        v64 = xmmword_183E20E60;
        v67 = xmmword_183E20E00;
        v68 = 0u;
        v69 = xmmword_183E20E60;
        if (BYTE5(__dst[0]) == 89)
        {
          *(&v66 + 1) = *&__x.f64[0];
        }

        else if (BYTE6(__dst[0]) == 89)
        {
          *&v64 = __x.f64[0];
        }

        else
        {
          *&v66 = __x.f64[0];
        }
      }

      else
      {
        v47 = *&__dst[0] == 0x7463657073726570 && DWORD2(__dst[0]) == 6649449;
        if (!v47 || v17 != 1)
        {
LABEL_116:
          CAML::Context::error(a2, "Invalid transform: %s (position %ld)", a4, v5 - a4);
          goto LABEL_115;
        }

        v62 = xmmword_183E20E00;
        v63 = 0u;
        v65 = 0u;
        v66 = 0u;
        v64 = xmmword_183E20E60;
        *&v67 = 0x3FF0000000000000;
        v68 = 0u;
        v69 = xmmword_183E20E60;
        *(&v67 + 1) = -1.0 / __x.f64[0];
      }

      v48 = &v62;
      goto LABEL_113;
    }

    v32 = *(MEMORY[0x1E695EFD0] + 16);
    v70 = *MEMORY[0x1E695EFD0];
    v71 = v32;
    v72 = *(MEMORY[0x1E695EFD0] + 32);
    v33 = tan(__x.f64[0]);
    v71.f64[0] = v33;
    if (BYTE4(__dst[0]) == 89)
    {
      v70.f64[1] = v33;
      v71.f64[0] = 0.0;
    }

    v34 = vmlaq_n_f64(vmlaq_n_f64(v60, v54, v72.f64[0]), v56, v72.f64[1]);
    v35 = vmlaq_n_f64(vmulq_n_f64(v54, v71.f64[0]), v56, v71.f64[1]);
    v36 = vmlaq_n_f64(vmlaq_n_f64(v61, v55, v72.f64[0]), v57, v72.f64[1]);
    v37 = vmlaq_n_f64(vmulq_n_f64(v55, v71.f64[0]), v57, v71.f64[1]);
    v54 = vmlaq_n_f64(vmulq_n_f64(v54, v70.f64[0]), v56, v70.f64[1]);
    v55 = vmlaq_n_f64(vmulq_n_f64(v55, v70.f64[0]), v57, v70.f64[1]);
    v56 = v35;
    v57 = v37;
    goto LABEL_75;
  }

LABEL_115:
  v49 = objc_autoreleasePoolPush();
  v87 = v58;
  v88 = v59;
  v89 = v60;
  v90 = v61;
  v83 = v54;
  v84 = v55;
  v85 = v56;
  v86 = v57;
  CAML::State::set_value(a3, [MEMORY[0x1E696B098] valueWithCATransform3D:&v83]);
  objc_autoreleasePoolPop(v49);
}

void *CA::Render::Proxy::encode(CA::Render::Proxy *this, CA::Render::Encoder *a2)
{
  CA::Render::Object::encode(this, a2);
  v4 = *(this + 2);
  v5 = *(a2 + 4);
  if ((v5 + 1) > *(a2 + 5))
  {
    CA::Render::Encoder::grow(a2, 8);
    v5 = *(a2 + 4);
  }

  *v5 = v4;
  *(a2 + 4) += 8;

  return CA::Render::Encoder::encode_sanity_check(a2);
}

uint64_t CAML::ObjCReal::end(CAML::ObjCReal *this, CAML::Context *a2, CAML::State *a3, CAML *a4, uint64_t a5)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v13[0] = a4;
  valuePtr = CAML::parse_real(a4, v13, (a4 + a5), a4);
  v9 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
  CAML::State::set_value(a3, v9);
  CFRelease(v9);
  return CAML::check_trailer(a2, v13[0], (a4 + a5), v10);
}

char *x_stream_vprintf(uint64_t a1, char *__s, int *a3)
{
  v283 = *MEMORY[0x1E69E9840];
  while (1)
  {
    v5 = strchr(__s, 37);
    if (!v5)
    {
      break;
    }

    v6 = v5;
    v7 = v5 - __s;
    if (v5 <= __s)
    {
      goto LABEL_11;
    }

    v8 = *(a1 + 8);
    v9 = *(a1 + 16);
    if (&v8[v7] < v9)
    {
      goto LABEL_10;
    }

    v11 = v9 - *a1;
    v10 = v11 == 0;
    v12 = 2 * v11;
    v13 = 1024;
    if (!v10)
    {
      v13 = v12;
    }

    do
    {
      v14 = v13;
      v15 = *a1 - v8 + v13;
      v13 *= 2;
    }

    while (v15 < v7);
    v16 = malloc_type_realloc(*a1, v14, 0x100004077774924uLL);
    if (v16)
    {
      v17 = v16;
      v8 = &v16[*(a1 + 8) - *a1];
      *a1 = v17;
      *(a1 + 8) = v8;
      *(a1 + 16) = &v17[v14];
LABEL_10:
      memcpy(v8, __s, v7);
      *(a1 + 8) += v7;
    }

LABEL_11:
    v18 = v6 + 1;
    v19 = v6[1];
    if ((v19 - 48) > 9)
    {
      v20 = 0;
    }

    else
    {
      v20 = 0;
      do
      {
        v20 = v19 + 10 * v20 - 48;
        v21 = *++v18;
        v19 = v21;
      }

      while ((v21 - 48) < 0xA);
      v6 = v18 - 1;
    }

    if (v19 == 42)
    {
      v22 = a3;
      a3 += 2;
      v20 = *v22;
      v6 = v18;
    }

    v23 = v6 + 1;
    if (v6[1] == 46)
    {
      v24 = v6[2];
      if ((v24 - 48) <= 9)
      {
        v25 = 0;
        do
        {
          v25 = v24 + 10 * v25 - 48;
          v24 = v23[2];
          ++v23;
        }

        while ((v24 - 48) < 0xA);
      }

      __powidf2();
      if (v27 >= 1.0 || v27 <= 0.0)
      {
        v26 = 0.000001;
      }

      else
      {
        v26 = v27;
      }

      v6 = v23;
    }

    else
    {
      v26 = 0.000001;
    }

    v29 = 0;
    v281 = 0u;
    v282 = 0u;
    v279 = 0u;
    v280 = 0u;
    v277 = 0u;
    v278 = 0u;
    v275 = 0u;
    v276 = 0u;
    v273 = 0u;
    v274 = 0u;
    v271 = 0u;
    v272 = 0u;
    v269 = 0u;
    v270 = 0u;
    *__sa = 0u;
    v268 = 0u;
    v31 = v6 + 1;
    v30 = v6[1];
    if (v30 > 0x65)
    {
      if (v6[1] > 0x72u)
      {
        if (v6[1] > 0x76u)
        {
          if (v30 != 119)
          {
            if (v30 != 120)
            {
              goto LABEL_126;
            }

            v92 = a3;
            a3 += 2;
            snprintf(__sa, 0x100uLL, "%x", *v92);
            v93 = strlen(__sa);
            v38 = v93;
            v39 = v20;
            if (v20 >= v93)
            {
              v40 = v20 - v93;
            }

            else
            {
              v40 = 0;
            }

            v94 = v40 + v93;
            v42 = *(a1 + 8);
            v95 = *(a1 + 16);
            if (&v42[v94] < v95)
            {
              goto LABEL_123;
            }

            v44 = *a1;
            v96 = v95 - *a1;
            v10 = v96 == 0;
            v97 = 2 * v96;
            v98 = 1024;
            if (!v10)
            {
              v98 = v97;
            }

            do
            {
              v48 = v98;
              v99 = v44 - v42 + v98;
              v98 *= 2;
            }

            while (v99 < v94);
            goto LABEL_121;
          }

          v169 = a3;
          a3 += 2;
          v170 = *v169;
          if (v170 >= 1)
          {
            if (v170 >= 0x100)
            {
              v119 = 256;
            }

            else
            {
              v119 = v170;
            }

            memset(__sa, 32, v119);
            if (v20 >= v119)
            {
              v120 = v20 - v119;
            }

            else
            {
              v120 = 0;
            }

            v121 = *(a1 + 8);
            v171 = *(a1 + 16);
            if (&v121[v120 + v119] >= v171)
            {
              v123 = *a1;
              v172 = v171 - *a1;
              v10 = v172 == 0;
              v173 = 2 * v172;
              v174 = 1024;
              if (!v10)
              {
                v174 = v173;
              }

              do
              {
                v127 = v174;
                v175 = v123 - v121 + v174;
                v174 *= 2;
              }

              while (v175 < v120 + v119);
LABEL_200:
              v176 = malloc_type_realloc(v123, v127, 0x100004077774924uLL);
              if (!v176)
              {
                goto LABEL_126;
              }

              v177 = v176;
              v121 = &v176[*(a1 + 8) - *a1];
              *a1 = v177;
              *(a1 + 8) = v121;
              *(a1 + 16) = &v177[v127];
            }

LABEL_202:
            memcpy(v121, __sa, v119);
            v178 = (*(a1 + 8) + v119);
            *(a1 + 8) = v178;
            if (v20 > v119)
            {
              memset(v178, 32, v120);
              v103 = *(a1 + 8) + v120;
              goto LABEL_125;
            }
          }
        }

        else
        {
          if (v30 != 115)
          {
            if (v30 != 117)
            {
              goto LABEL_126;
            }

            v58 = a3;
            a3 += 2;
            snprintf(__sa, 0x100uLL, "%u", *v58);
            v59 = strlen(__sa);
            v38 = v59;
            v39 = v20;
            if (v20 >= v59)
            {
              v40 = v20 - v59;
            }

            else
            {
              v40 = 0;
            }

            v60 = v40 + v59;
            v42 = *(a1 + 8);
            v61 = *(a1 + 16);
            if (&v42[v60] < v61)
            {
              goto LABEL_123;
            }

            v44 = *a1;
            v62 = v61 - *a1;
            v10 = v62 == 0;
            v63 = 2 * v62;
            v64 = 1024;
            if (!v10)
            {
              v64 = v63;
            }

            do
            {
              v48 = v64;
              v65 = v44 - v42 + v64;
              v64 *= 2;
            }

            while (v65 < v60);
            goto LABEL_121;
          }

          v129 = a3;
          a3 += 2;
          v130 = *v129;
          v131 = strlen(*v129);
          v132 = v131;
          if (v20 >= v131)
          {
            v40 = v20 - v131;
          }

          else
          {
            v40 = 0;
          }

          v133 = v40 + v131;
          v134 = *(a1 + 8);
          v135 = *(a1 + 16);
          if (&v134[v133] >= v135)
          {
            v136 = v135 - *a1;
            v10 = v136 == 0;
            v137 = 2 * v136;
            v138 = 1024;
            if (!v10)
            {
              v138 = v137;
            }

            do
            {
              v139 = v138;
              v140 = *a1 - v134 + v138;
              v138 *= 2;
            }

            while (v140 < v133);
            v141 = malloc_type_realloc(*a1, v139, 0x100004077774924uLL);
            if (!v141)
            {
              goto LABEL_126;
            }

            v142 = v141;
            v134 = &v141[*(a1 + 8) - *a1];
            *a1 = v142;
            *(a1 + 8) = v134;
            *(a1 + 16) = &v142[v139];
          }

          memcpy(v134, v130, v132);
          v102 = (*(a1 + 8) + v132);
          *(a1 + 8) = v102;
          if (v132 < v20)
          {
            goto LABEL_124;
          }
        }
      }

      else
      {
        if (v6[1] > 0x6Bu)
        {
          if (v30 != 108)
          {
            if (v30 != 112)
            {
              goto LABEL_126;
            }

            v76 = a3;
            a3 += 2;
            snprintf(__sa, 0x100uLL, "%p", *v76);
            v77 = strlen(__sa);
            v38 = v77;
            v39 = v20;
            if (v20 >= v77)
            {
              v40 = v20 - v77;
            }

            else
            {
              v40 = 0;
            }

            v78 = v40 + v77;
            v42 = *(a1 + 8);
            v79 = *(a1 + 16);
            if (&v42[v78] < v79)
            {
              goto LABEL_123;
            }

            v44 = *a1;
            v80 = v79 - *a1;
            v10 = v80 == 0;
            v81 = 2 * v80;
            v82 = 1024;
            if (!v10)
            {
              v82 = v81;
            }

            do
            {
              v48 = v82;
              v83 = v44 - v42 + v82;
              v82 *= 2;
            }

            while (v83 < v78);
            goto LABEL_121;
          }

          v143 = v6[2];
          if (v143 <= 0x6B)
          {
            if (v143 == 100)
            {
              v226 = a3;
              a3 += 2;
              snprintf(__sa, 0x100uLL, "%ld", *v226);
              v227 = strlen(__sa);
              v181 = v227;
              v182 = v20;
              if (v20 >= v227)
              {
                v183 = v20 - v227;
              }

              else
              {
                v183 = 0;
              }

              v228 = v183 + v227;
              v185 = *(a1 + 8);
              v229 = *(a1 + 16);
              if (&v185[v228] < v229)
              {
                goto LABEL_256;
              }

              v187 = *a1;
              v230 = v229 - *a1;
              v10 = v230 == 0;
              v231 = 2 * v230;
              v232 = 1024;
              if (!v10)
              {
                v232 = v231;
              }

              do
              {
                v191 = v232;
                v233 = v187 - v185 + v232;
                v232 *= 2;
              }

              while (v233 < v228);
LABEL_254:
              v234 = malloc_type_realloc(v187, v191, 0x100004077774924uLL);
              if (v234)
              {
                v235 = v234;
                v185 = &v234[*(a1 + 8) - *a1];
                *a1 = v235;
                *(a1 + 8) = v185;
                *(a1 + 16) = &v235[v191];
                goto LABEL_256;
              }
            }

            else
            {
              if (v143 != 102)
              {
                goto LABEL_126;
              }

              v179 = a3;
              a3 += 2;
              if (x_dtostr_(__sa, 0x100uLL, 0, *v179, v26))
              {
                v180 = strlen(__sa);
                v181 = v180;
                v182 = v20;
                if (v20 >= v180)
                {
                  v183 = v20 - v180;
                }

                else
                {
                  v183 = 0;
                }

                v184 = v183 + v180;
                v185 = *(a1 + 8);
                v186 = *(a1 + 16);
                if (&v185[v184] >= v186)
                {
                  v187 = *a1;
                  v188 = v186 - *a1;
                  v10 = v188 == 0;
                  v189 = 2 * v188;
                  v190 = 1024;
                  if (!v10)
                  {
                    v190 = v189;
                  }

                  do
                  {
                    v191 = v190;
                    v192 = v187 - v185 + v190;
                    v190 *= 2;
                  }

                  while (v192 < v184);
                  goto LABEL_254;
                }

LABEL_256:
                memcpy(v185, __sa, v181);
                v236 = (*(a1 + 8) + v181);
                *(a1 + 8) = v236;
                if (v181 < v182)
                {
                  memset(v236, 32, v183);
                  *(a1 + 8) += v183;
                }
              }
            }

            v6 = v31;
            goto LABEL_126;
          }

          if (v143 == 120)
          {
            v210 = a3;
            a3 += 2;
            snprintf(__sa, 0x100uLL, "%lx", *v210);
            v211 = strlen(__sa);
            v181 = v211;
            v182 = v20;
            if (v20 >= v211)
            {
              v183 = v20 - v211;
            }

            else
            {
              v183 = 0;
            }

            v212 = v183 + v211;
            v185 = *(a1 + 8);
            v213 = *(a1 + 16);
            if (&v185[v212] >= v213)
            {
              v187 = *a1;
              v214 = v213 - *a1;
              v10 = v214 == 0;
              v215 = 2 * v214;
              v216 = 1024;
              if (!v10)
              {
                v216 = v215;
              }

              do
              {
                v191 = v216;
                v217 = v187 - v185 + v216;
                v216 *= 2;
              }

              while (v217 < v212);
              goto LABEL_254;
            }

            goto LABEL_256;
          }

          if (v143 == 117)
          {
            v218 = a3;
            a3 += 2;
            snprintf(__sa, 0x100uLL, "%lu", *v218);
            v219 = strlen(__sa);
            v181 = v219;
            v182 = v20;
            if (v20 >= v219)
            {
              v183 = v20 - v219;
            }

            else
            {
              v183 = 0;
            }

            v220 = v183 + v219;
            v185 = *(a1 + 8);
            v221 = *(a1 + 16);
            if (&v185[v220] >= v221)
            {
              v187 = *a1;
              v222 = v221 - *a1;
              v10 = v222 == 0;
              v223 = 2 * v222;
              v224 = 1024;
              if (!v10)
              {
                v224 = v223;
              }

              do
              {
                v191 = v224;
                v225 = v187 - v185 + v224;
                v224 *= 2;
              }

              while (v225 < v220);
              goto LABEL_254;
            }

            goto LABEL_256;
          }

          if (v143 != 108)
          {
            goto LABEL_126;
          }

          v144 = v6[3];
          switch(v144)
          {
            case 'x':
              v245 = a3;
              a3 += 2;
              snprintf(__sa, 0x100uLL, "%llx", *v245);
              v246 = strlen(__sa);
              v147 = v246;
              v148 = v20;
              if (v20 >= v246)
              {
                v149 = v20 - v246;
              }

              else
              {
                v149 = 0;
              }

              v247 = v149 + v246;
              v151 = *(a1 + 8);
              v248 = *(a1 + 16);
              if (&v151[v247] < v248)
              {
                goto LABEL_276;
              }

              v153 = *a1;
              v249 = v248 - *a1;
              v10 = v249 == 0;
              v250 = 2 * v249;
              v251 = 1024;
              if (!v10)
              {
                v251 = v250;
              }

              do
              {
                v157 = v251;
                v252 = v153 - v151 + v251;
                v251 *= 2;
              }

              while (v252 < v247);
              break;
            case 'u':
              v237 = a3;
              a3 += 2;
              snprintf(__sa, 0x100uLL, "%llu", *v237);
              v238 = strlen(__sa);
              v147 = v238;
              v148 = v20;
              if (v20 >= v238)
              {
                v149 = v20 - v238;
              }

              else
              {
                v149 = 0;
              }

              v239 = v149 + v238;
              v151 = *(a1 + 8);
              v240 = *(a1 + 16);
              if (&v151[v239] < v240)
              {
                goto LABEL_276;
              }

              v153 = *a1;
              v241 = v240 - *a1;
              v10 = v241 == 0;
              v242 = 2 * v241;
              v243 = 1024;
              if (!v10)
              {
                v243 = v242;
              }

              do
              {
                v157 = v243;
                v244 = v153 - v151 + v243;
                v243 *= 2;
              }

              while (v244 < v239);
              break;
            case 'd':
              v145 = a3;
              a3 += 2;
              snprintf(__sa, 0x100uLL, "%lld", *v145);
              v146 = strlen(__sa);
              v147 = v146;
              v148 = v20;
              if (v20 >= v146)
              {
                v149 = v20 - v146;
              }

              else
              {
                v149 = 0;
              }

              v150 = v149 + v146;
              v151 = *(a1 + 8);
              v152 = *(a1 + 16);
              if (&v151[v150] >= v152)
              {
                v153 = *a1;
                v154 = v152 - *a1;
                v10 = v154 == 0;
                v155 = 2 * v154;
                v156 = 1024;
                if (!v10)
                {
                  v156 = v155;
                }

                do
                {
                  v157 = v156;
                  v158 = v153 - v151 + v156;
                  v156 *= 2;
                }

                while (v158 < v150);
                break;
              }

LABEL_276:
              memcpy(v151, __sa, v147);
              v255 = (*(a1 + 8) + v147);
              *(a1 + 8) = v255;
              if (v147 < v148)
              {
                memset(v255, 32, v149);
                *(a1 + 8) += v149;
              }

              goto LABEL_278;
            default:
              goto LABEL_279;
          }

          v253 = malloc_type_realloc(v153, v157, 0x100004077774924uLL);
          if (v253)
          {
            v254 = v253;
            v151 = &v253[*(a1 + 8) - *a1];
            *a1 = v254;
            *(a1 + 8) = v151;
            *(a1 + 16) = &v254[v157];
            goto LABEL_276;
          }

LABEL_278:
          v6 = v31;
LABEL_279:
          ++v6;
          goto LABEL_126;
        }

        if (v30 != 102)
        {
          if (v30 != 103)
          {
            goto LABEL_126;
          }

          v29 = 1;
        }

        v36 = a3;
        a3 += 2;
        if (x_dtostr_(__sa, 0x100uLL, v29, *v36, v26))
        {
          v37 = strlen(__sa);
          v38 = v37;
          v39 = v20;
          if (v20 >= v37)
          {
            v40 = v20 - v37;
          }

          else
          {
            v40 = 0;
          }

          v41 = v40 + v37;
          v42 = *(a1 + 8);
          v43 = *(a1 + 16);
          if (&v42[v41] < v43)
          {
            goto LABEL_123;
          }

          v44 = *a1;
          v45 = v43 - *a1;
          v10 = v45 == 0;
          v46 = 2 * v45;
          v47 = 1024;
          if (!v10)
          {
            v47 = v46;
          }

          do
          {
            v48 = v47;
            v49 = v44 - v42 + v47;
            v47 *= 2;
          }

          while (v49 < v41);
LABEL_121:
          v100 = malloc_type_realloc(v44, v48, 0x100004077774924uLL);
          if (!v100)
          {
            goto LABEL_126;
          }

          v101 = v100;
          v42 = &v100[*(a1 + 8) - *a1];
          *a1 = v101;
          *(a1 + 8) = v42;
          *(a1 + 16) = &v101[v48];
          goto LABEL_123;
        }
      }
    }

    else if (v6[1] > 0x56u)
    {
      if (v6[1] > 0x62u)
      {
        if (v30 != 99)
        {
          if (v30 != 100)
          {
            goto LABEL_126;
          }

          v84 = a3;
          a3 += 2;
          snprintf(__sa, 0x100uLL, "%d", *v84);
          v85 = strlen(__sa);
          v38 = v85;
          v39 = v20;
          if (v20 >= v85)
          {
            v40 = v20 - v85;
          }

          else
          {
            v40 = 0;
          }

          v86 = v40 + v85;
          v42 = *(a1 + 8);
          v87 = *(a1 + 16);
          if (&v42[v86] < v87)
          {
            goto LABEL_123;
          }

          v44 = *a1;
          v88 = v87 - *a1;
          v10 = v88 == 0;
          v89 = 2 * v88;
          v90 = 1024;
          if (!v10)
          {
            v90 = v89;
          }

          do
          {
            v48 = v90;
            v91 = v44 - v42 + v90;
            v90 *= 2;
          }

          while (v91 < v86);
          goto LABEL_121;
        }

        v159 = a3;
        a3 += 2;
        v160 = *v159;
        __sa[0] = *v159;
        if (v20)
        {
          v40 = v20 - 1;
        }

        else
        {
          v40 = 0;
        }

        v161 = *(a1 + 8);
        v162 = *(a1 + 16);
        if (&v161[v40 + 1] >= v162)
        {
          v163 = *a1;
          v164 = 2 * (v162 - *a1);
          if (v162 == *a1)
          {
            v164 = 1024;
          }

          v165 = v163 - v161;
          do
          {
            v166 = v164;
            v167 = v165 + v164;
            v164 *= 2;
          }

          while (v167 <= v40);
          v168 = malloc_type_realloc(v163, v166, 0x100004077774924uLL);
          if (!v168)
          {
            goto LABEL_126;
          }

          v161 = &v168[*(a1 + 8) - *a1];
          *a1 = v168;
          *(a1 + 8) = v161;
          *(a1 + 16) = &v168[v166];
          LOBYTE(v160) = __sa[0];
        }

        *v161 = v160;
        v102 = (*(a1 + 8) + 1);
        *(a1 + 8) = v102;
        if (v20 >= 2)
        {
          goto LABEL_124;
        }
      }

      else
      {
        if (v30 != 87)
        {
          if (v30 != 97)
          {
            goto LABEL_126;
          }

          v50 = a3;
          a3 += 2;
          snprintf(__sa, 0x100uLL, "%a", *v50);
          v51 = strlen(__sa);
          v38 = v51;
          v39 = v20;
          if (v20 >= v51)
          {
            v40 = v20 - v51;
          }

          else
          {
            v40 = 0;
          }

          v52 = v40 + v51;
          v42 = *(a1 + 8);
          v53 = *(a1 + 16);
          if (&v42[v52] < v53)
          {
            goto LABEL_123;
          }

          v44 = *a1;
          v54 = v53 - *a1;
          v10 = v54 == 0;
          v55 = 2 * v54;
          v56 = 1024;
          if (!v10)
          {
            v56 = v55;
          }

          do
          {
            v48 = v56;
            v57 = v44 - v42 + v56;
            v56 *= 2;
          }

          while (v57 < v52);
          goto LABEL_121;
        }

        v115 = a3;
        a3 += 2;
        v116 = *v115;
        if (v116 >= 1)
        {
          v117 = v116 & 7;
          if (v116 >> 3 >= 0xF8)
          {
            v118 = 248;
          }

          else
          {
            v118 = v116 >> 3;
          }

          v119 = (v118 + v117);
          memset(__sa, 9, v118);
          memset(&__sa[v118], 32, v117);
          if (v20 >= v119)
          {
            v120 = v20 - v119;
          }

          else
          {
            v120 = 0;
          }

          v121 = *(a1 + 8);
          v122 = *(a1 + 16);
          if (&v121[v120 + v119] >= v122)
          {
            v123 = *a1;
            v124 = v122 - *a1;
            v10 = v124 == 0;
            v125 = 2 * v124;
            v126 = 1024;
            if (!v10)
            {
              v126 = v125;
            }

            do
            {
              v127 = v126;
              v128 = v123 - v121 + v126;
              v126 *= 2;
            }

            while (v128 < v120 + v119);
            goto LABEL_200;
          }

          goto LABEL_202;
        }
      }
    }

    else if (v6[1] > 0x45u)
    {
      if (v30 != 70)
      {
        if (v30 != 71)
        {
          goto LABEL_126;
        }

        v29 = 1;
      }

      v66 = a3;
      a3 += 2;
      v67 = *v66;
      if ((*v66 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {
        v68 = 0.0;
      }

      else
      {
        v68 = *v66;
      }

      if (v67 != 0.0)
      {
        v67 = v68;
      }

      if (x_dtostr_(__sa, 0x100uLL, v29, v67, v26))
      {
        v69 = strlen(__sa);
        v38 = v69;
        v39 = v20;
        if (v20 >= v69)
        {
          v40 = v20 - v69;
        }

        else
        {
          v40 = 0;
        }

        v70 = v40 + v69;
        v42 = *(a1 + 8);
        v71 = *(a1 + 16);
        if (&v42[v70] >= v71)
        {
          v44 = *a1;
          v72 = v71 - *a1;
          v10 = v72 == 0;
          v73 = 2 * v72;
          v74 = 1024;
          if (!v10)
          {
            v74 = v73;
          }

          do
          {
            v48 = v74;
            v75 = v44 - v42 + v74;
            v74 *= 2;
          }

          while (v75 < v70);
          goto LABEL_121;
        }

LABEL_123:
        memcpy(v42, __sa, v38);
        v102 = (*(a1 + 8) + v38);
        *(a1 + 8) = v102;
        if (v38 >= v39)
        {
          goto LABEL_126;
        }

LABEL_124:
        memset(v102, 32, v40);
        v103 = *(a1 + 8) + v40;
LABEL_125:
        *(a1 + 8) = v103;
      }
    }

    else
    {
      if (v30 != 37)
      {
        if (v30 != 64)
        {
          goto LABEL_126;
        }

        v32 = a3;
        a3 += 2;
        v33 = *v32;
        if (*v32)
        {
          v34 = CFGetTypeID(*v32);
          if (v34 == CFStringGetTypeID())
          {
            v35 = CFRetain(v33);
          }

          else
          {
            v35 = CFCopyDescription(v33);
          }

          v193 = v35;
          CString = CA_CFStringGetCString(v35, __sa, 256);
        }

        else
        {
          v193 = 0;
          CString = "(null)";
        }

        v195 = strlen(CString);
        v196 = v195;
        v197 = v20;
        if (v20 >= v195)
        {
          v198 = v20 - v195;
        }

        else
        {
          v198 = 0;
        }

        v199 = v198 + v195;
        v200 = *(a1 + 8);
        v201 = *(a1 + 16);
        if (&v200[v199] < v201)
        {
LABEL_227:
          memcpy(v200, CString, v196);
          v209 = (*(a1 + 8) + v196);
          *(a1 + 8) = v209;
          if (v196 < v197)
          {
            memset(v209, 32, v198);
            *(a1 + 8) += v198;
          }
        }

        else
        {
          v202 = v201 - *a1;
          v10 = v202 == 0;
          v203 = 2 * v202;
          v204 = 1024;
          if (!v10)
          {
            v204 = v203;
          }

          do
          {
            v205 = v204;
            v206 = *a1 - v200 + v204;
            v204 *= 2;
          }

          while (v206 < v199);
          v207 = malloc_type_realloc(*a1, v205, 0x100004077774924uLL);
          if (v207)
          {
            v208 = v207;
            v200 = &v207[*(a1 + 8) - *a1];
            *a1 = v208;
            *(a1 + 8) = v200;
            *(a1 + 16) = &v208[v205];
            goto LABEL_227;
          }
        }

        if (v193)
        {
          CFRelease(v193);
        }

        goto LABEL_126;
      }

      if (v20)
      {
        v104 = v20 - 1;
      }

      else
      {
        v104 = 0;
      }

      v105 = *(a1 + 8);
      v106 = *(a1 + 16);
      if (&v105[v104 + 1] >= v106)
      {
        v107 = *a1;
        v108 = v106 - *a1;
        v10 = v108 == 0;
        v109 = 2 * v108;
        if (v10)
        {
          v109 = 1024;
        }

        v110 = v107 - v105;
        do
        {
          v111 = v109;
          v112 = v110 + v109;
          v109 *= 2;
        }

        while (v112 <= v104);
        v113 = malloc_type_realloc(v107, v111, 0x100004077774924uLL);
        if (!v113)
        {
          goto LABEL_126;
        }

        v105 = &v113[*(a1 + 8) - *a1];
        *a1 = v113;
        *(a1 + 8) = v105;
        *(a1 + 16) = &v113[v111];
      }

      *v105 = 37;
      v114 = (*(a1 + 8) + 1);
      *(a1 + 8) = v114;
      if (v20 >= 2)
      {
        memset(v114, 32, v104);
        v103 = *(a1 + 8) + v104;
        goto LABEL_125;
      }
    }

LABEL_126:
    __s = v6 + 2;
  }

  v256 = strlen(__s);
  v257 = *(a1 + 8);
  v258 = *(a1 + 16);
  if (&v257[v256] < v258)
  {
    goto LABEL_286;
  }

  v259 = v258 - *a1;
  v10 = v259 == 0;
  v260 = 2 * v259;
  v261 = 1024;
  if (!v10)
  {
    v261 = v260;
  }

  do
  {
    v262 = v261;
    v263 = *a1 - v257 + v261;
    v261 *= 2;
  }

  while (v263 < v256);
  result = malloc_type_realloc(*a1, v262, 0x100004077774924uLL);
  if (result)
  {
    v265 = result;
    v257 = &result[*(a1 + 8) - *a1];
    *a1 = v265;
    *(a1 + 8) = v257;
    *(a1 + 16) = &v265[v262];
LABEL_286:
    result = memcpy(v257, __s, v256);
    *(a1 + 8) += v256;
  }

  return result;
}

char *x_stream_get(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if ((v2 + 1) < v3)
  {
    goto LABEL_8;
  }

  v4 = *a1;
  v6 = v3 - *a1;
  v5 = v6 == 0;
  v7 = 2 * v6;
  if (v5)
  {
    v7 = 1024;
  }

  v8 = v4 - v2;
  do
  {
    v9 = v7;
    v7 *= 2;
  }

  while (!(v8 + v9));
  result = malloc_type_realloc(v4, v9, 0x100004077774924uLL);
  if (result)
  {
    v2 = &result[a1[1] - *a1];
    *a1 = result;
    a1[1] = v2;
    a1[2] = &result[v9];
LABEL_8:
    *v2 = 0;
    return *a1;
  }

  return result;
}

uint64_t CA::Render::Layer::set_shadow_path(uint64_t this, CA::Render::Path *a2)
{
  v2 = a2;
  if (a2 || *(this + 136))
  {
    v3 = CA::Render::Layer::ensure_ext(this);
    this = v3[15];
    if (this != v2)
    {
      if (this && atomic_fetch_add((this + 8), 0xFFFFFFFF) == 1)
      {
        this = (*(*this + 16))(this);
      }

      if (v2)
      {
        v4 = (v2 + 8);
        if (!atomic_fetch_add(v2 + 2, 1u))
        {
          v2 = 0;
          atomic_fetch_add(v4, 0xFFFFFFFF);
        }
      }

      v3[15] = v2;
    }
  }

  return this;
}

void CAML::ObjCCGPath::end(CAML::ObjCCGPath *this, CAML::Context *a2, CAML::State *a3, char *a4, uint64_t a5)
{
  v28 = *MEMORY[0x1E69E9840];
  *v27 = 0u;
  memset(&v26, 0, sizeof(v26));
  v25 = a4;
  Mutable = CGPathCreateMutable();
  if (a5 >= 1)
  {
    v10 = 0;
    v11 = &a4[a5];
    v12 = 0.0;
    v13 = "Invalid number of numeric values in path: %s";
    v14 = a4;
    v15 = 0.0;
    x = 0.0;
    y = 0.0;
    while (1)
    {
      v18 = *v14;
      if (v18 > 0x48)
      {
        break;
      }

      if (v18 > 0x39)
      {
        goto LABEL_54;
      }

      if (((1 << v18) & 0x100003600) == 0)
      {
        if (((1 << v18) & 0x3FF680000000000) == 0)
        {
          if (!*v14)
          {
            goto LABEL_56;
          }

LABEL_54:
          v13 = "Invalid path operator: %s";
LABEL_55:
          CAML::Context::error(a2, v13, a4);
          goto LABEL_56;
        }

LABEL_10:
        if (v10 == 6)
        {
          goto LABEL_55;
        }

        *(&v26.origin.x + v10++) = x_strtod(v14, &v25, v11);
LABEL_52:
        v14 = v25;
        goto LABEL_7;
      }

      v25 = ++v14;
LABEL_7:
      if (v14 >= v11)
      {
        goto LABEL_56;
      }
    }

    if (*v14 <= 0x70u)
    {
      if (*v14 > 0x67u)
      {
        if (v18 != 104)
        {
          if (v18 == 108)
          {
            if (v10 != 2)
            {
              CAML::Context::error(a2, "Invalid number of arguments to 'l' path operator: %s");
              goto LABEL_56;
            }

            y = v26.origin.y;
            x = v26.origin.x;
            CGPathAddLineToPoint(Mutable, 0, v26.origin.x, v26.origin.y);
          }

          else
          {
            if (v18 != 109)
            {
              goto LABEL_54;
            }

            if (v10 != 2)
            {
              CAML::Context::error(a2, "Invalid number of arguments to 'm' path operator: %s");
              goto LABEL_56;
            }

            y = v26.origin.y;
            x = v26.origin.x;
            CGPathMoveToPoint(Mutable, 0, v26.origin.x, v26.origin.y);
          }

          v10 = 0;
          ++v25;
          v15 = y;
          v12 = x;
          goto LABEL_52;
        }

        if (v10)
        {
          CAML::Context::error(a2, "Invalid number of arguments to 'h' path operator: %s");
          goto LABEL_56;
        }

        CGPathCloseSubpath(Mutable);
        goto LABEL_46;
      }

      if (v18 == 73)
      {
        if (v14[1] == 110 && v14[2] == 102)
        {
          goto LABEL_10;
        }

        goto LABEL_52;
      }

      if (v18 != 99)
      {
        goto LABEL_54;
      }

      if (v10 != 6)
      {
        CAML::Context::error(a2, "Invalid number of arguments to 'c' path operator: %s");
        goto LABEL_56;
      }

      v20 = v26.origin.y;
      v19 = v26.origin.x;
      y = v26.size.height;
      x = v26.size.width;
      v15 = v27[1];
      v12 = v27[0];
      v21 = Mutable;
      height = v26.size.height;
      width = v26.size.width;
      goto LABEL_29;
    }

    if (*v14 <= 0x73u)
    {
      if (v18 != 113)
      {
        if (v18 != 114 || v14[1] != 101)
        {
          goto LABEL_54;
        }

        if (v10 != 4)
        {
          CAML::Context::error(a2, "Invalid number of arguments to 're' path operator: %s");
          goto LABEL_56;
        }

        v15 = v26.size.height;
        v12 = v26.size.width;
        CGPathAddRect(Mutable, 0, v26);
        v10 = 0;
        goto LABEL_52;
      }

      if (v10 != 4)
      {
        CAML::Context::error(a2, "Invalid number of arguments to 'q' path operator: %s");
        goto LABEL_56;
      }

      y = v26.origin.y;
      x = v26.origin.x;
    }

    else
    {
      if (v18 != 116)
      {
        if (v18 == 118)
        {
          if (v10 != 4)
          {
            CAML::Context::error(a2, "Invalid number of arguments to 'v' path operator: %s");
            goto LABEL_56;
          }

          y = v26.origin.y;
          x = v26.origin.x;
          size = v26.size;
          CGPathAddCurveToPoint(Mutable, 0, v12, v15, v26.origin.x, v26.origin.y, v26.size.width, v26.size.height);
          v10 = 0;
          ++v25;
          v15 = size.height;
          v12 = size.width;
          goto LABEL_52;
        }

        if (v18 != 121)
        {
          goto LABEL_54;
        }

        if (v10 != 4)
        {
          CAML::Context::error(a2, "Invalid number of arguments to 'y' path operator: %s");
          goto LABEL_56;
        }

        v20 = v26.origin.y;
        v19 = v26.origin.x;
        v15 = v26.size.height;
        v12 = v26.size.width;
        v21 = Mutable;
        height = v26.size.height;
        width = v26.size.width;
LABEL_29:
        CGPathAddCurveToPoint(v21, 0, v19, v20, width, height, v12, v15);
LABEL_45:
        v10 = 0;
LABEL_46:
        ++v25;
        goto LABEL_52;
      }

      if (v10 != 2)
      {
        CAML::Context::error(a2, "Invalid number of arguments to 't' path operator: %s");
        goto LABEL_56;
      }

      x = -(x - v12 * 2.0);
      y = -(y - v15 * 2.0);
    }

    v15 = v26.size.height;
    v12 = v26.size.width;
    CGPathAddQuadCurveToPoint(Mutable, 0, x, y, v26.size.width, v26.size.height);
    goto LABEL_45;
  }

LABEL_56:
  CAML::State::set_value(a3, Mutable);

  CGPathRelease(Mutable);
}

void *std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::clear(void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

void CAML::ObjCNSObject::end(id *this, CAML::Context *a2, CAML::State *a3, char *a4, uint64_t a5)
{
  v8 = *(a2 + 10);
  if ((this[4] & 4) != 0)
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:a4 length:a5 encoding:4];
    *(a2 + 11) = a3;
    [this[3] CAMLParserEndElement:v8 content:v9];
    *(a2 + 11) = 0;
  }

  else if ((this[4] & 2) != 0)
  {
    *(a2 + 11) = a3;
    [this[3] CAMLParserEndElement:{v8, a4}];
    *(a2 + 11) = 0;
  }
}

BOOL CA::Render::ShapeLayer::self_intersects(CA::Render::ShapeLayer *this, const CA::Render::Layer *a2)
{
  if (!*(this + 2) || (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqzq_f32(*(this + 24))))) & 1) == 0 && !*(this + 6) || *(this + 13) == 0.0 || *(this + 12) <= *(this + 11))
  {
    return 0;
  }

  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqzq_f32(*(this + 56))))))
  {
    return 1;
  }

  return *(this + 10) != 0;
}

CA::OGL::Context *CA::OGL::stroke_round_rect(unint64_t a1, float64x2_t **a2, double *a3, uint64_t a4, float64_t a5, double a6)
{
  v8 = a3;
  v140[287] = *MEMORY[0x1E69E9840];
  memset(v130, 0, sizeof(v130));
  v128 = 0u;
  v129 = 0u;
  memset(v127, 0, sizeof(v127));
  memset(v126, 0, sizeof(v126));
  result = a2[1];
  if ((*(result + 144) & 0x10) != 0)
  {
    v14 = vaddvq_f64(vmulq_f64(*result, *result));
    v15 = vaddvq_f64(vmulq_f64(*(result + 2), *(result + 2)));
    v16 = *(result + 15);
    if (v16 != 1.0)
    {
      v17 = 1.0 / (v16 * v16);
      v14 = v17 * v14;
      v15 = v17 * v15;
    }

    v18 = v14 != 1.0;
    if (v15 != 1.0)
    {
      v18 = 1;
    }

    v19 = sqrt(v14);
    v20 = sqrt(v15);
    if (v18)
    {
      v15 = v20;
      v14 = v19;
    }
  }

  else
  {
    v14 = *(result + 16);
    v15 = v14;
  }

  if (a4)
  {
    v21 = a5 * 1.528665;
  }

  else
  {
    v21 = a5;
  }

  if (v14 <= v15)
  {
    v14 = v15;
  }

  LODWORD(v6) = vcvtpd_s64_f64(v14 * v21);
  if (v6 >= 2)
  {
    v22 = v21;
  }

  else
  {
    v22 = a6 * 1.1;
  }

  if (a6 > 0.001)
  {
    v23 = *a2;
    v24 = (*a2)[1].f64[0];
    if (a6 + a6 >= v24 || (v25 = v23[1].f64[1], a6 + a6 >= v25))
    {
      if (v6 > 1)
      {

        return CA::OGL::fill_round_rect(a1, a2, 0xF, 0, a5, a5);
      }

      else
      {

        return CA::OGL::fill_rect(a1, a2, a3);
      }
    }

    else
    {
      if (v24 >= v25)
      {
        v24 = v23[1].f64[1];
      }

      if (v24 > 0.0)
      {
        v133 = 0u;
        v134 = 0u;
        v131 = 0u;
        v132 = 0u;
        v125 = 0;
        v135 = 0u;
        v136 = 0u;
        v137 = 0u;
        v138 = 0u;
        is_isotropic = CA::Transform::is_isotropic(result, 0.0);
        if (v6 > 1)
        {
          if (a4)
          {
            v30 = vaddq_f64(vdivq_f64(vmulq_f64(v23[1], vdupq_n_s64(0xBFF721E8A7A4B61BLL)), vdupq_lane_s64(COERCE__INT64(a5 * 1.528665), 0)), vdupq_n_s64(0x400721E8A7A4B61BuLL));
            __asm { FMOV            V1.2D, #1.0 }

            v36 = vbslq_s8(vcgtq_f64(v30, _Q1), _Q1, v30);
            *&v139.f64[0] = vcvt_f32_f64(vbicq_s8(v36, vcltzq_f64(v36)));
            (*(*a1 + 512))(a1, 0, v6, !is_isotropic, 0, &v125, a4, &v139);
          }

          else
          {
            (*(*a1 + 504))(a1, 0, v6, !is_isotropic, 1, &v125);
          }

          v27 = ~(v8 << 22) & 0x3C00000;
          v29 = v21 - a6;
          v28 = 0.01;
          if (v21 - a6 <= 0.01)
          {
            v99 = *(a1 + 16);
            v100 = *(v99 + 16) & 0xFFFFFF00FF00FF00;
            if (*(v99 + 8) == 0x3C003C003C003C00)
            {
              v101 = 1;
            }

            else
            {
              v101 = 3;
            }

            *(v99 + 16) = v101 | v100;
            *(v99 + 20) = HIDWORD(v100);
            v102 = *a2;
            *&v135 = (*a2)->f64[0];
            *(&v135 + 1) = *&v135 + v21;
            v103 = v102->f64[1];
            if (v29 >= -0.01)
            {
              v109 = v102[1].f64[0] + *&v135;
              *&v136 = v109 - v21;
              *(&v136 + 1) = v109;
              *&v131 = v103;
              *(&v131 + 1) = v103 + v21;
              v110 = v102[1].f64[1] + v103;
              *&v132 = v110 - v21;
              *(&v132 + 1) = v110;
              v111 = v125;
              *&v112 = *&v125 + ((*(&v125 + 1) - *&v125) * 0.5);
              *(v130 | 0xC) = HIDWORD(v125);
              *&v113 = v111;
              *(&v113 + 1) = v111;
              *&v130[0] = __PAIR64__(v112, v111);
              DWORD2(v130[0]) = v112;
              v127[0] = v113;
              CA::OGL::emit_eight_part_rect(a1, a2, &v135, &v131, v130, v130, v127, v127, v27);
            }

            else
            {
              v104 = v102[1].f64[0] + *&v135;
              *&v137 = v104 - v21;
              *(&v137 + 1) = v104;
              *&v136 = *&v135 + a6;
              *(&v136 + 1) = v104 - a6;
              *&v131 = v103;
              *(&v131 + 1) = v103 + v21;
              v105 = v102[1].f64[1] + v103;
              v106 = v103 + a6;
              v107 = v105 - v21;
              *&v133 = v105 - v21;
              *(&v133 + 1) = v105;
              *&v132 = v106;
              *(&v132 + 1) = v105 - a6;
              *&v107 = *&v125 + ((*(&v125 + 1) - *&v125) * 0.5);
              LODWORD(v130[0]) = v125;
              *(v130 + 4) = vdupq_lane_s32(*&v107, 0);
              DWORD1(v130[1]) = HIDWORD(v125);
              LODWORD(v127[0]) = v125;
              *(v127 + 1) = *&v107;
              *(&v127[0] + 1) = __PAIR64__(v125, HIDWORD(v125));
              *&v127[1] = *&v107;
              DWORD1(v127[1]) = HIDWORD(v125);
              CA::OGL::emit_twenty_four_part_rect(a1, a2, &v135, &v131, v130, v130, v127, v127, v27);
            }

            goto LABEL_113;
          }
        }

        else
        {
          (*(*a1 + 496))(a1, 0, !is_isotropic, 1, &v125);
          v27 = ~(v8 << 22) & 0x3C00000;
          v28 = 0.1;
          v29 = a6 * 0.1;
        }

        v37 = CA::Transform::is_isotropic(a2[1], v28);
        *(*(a1 + 16) + 16) = 6;
        if (!a4)
        {
          v87 = *a1;
          if (v8 == 15 && v6 > 1)
          {
            (*(v87 + 504))(a1, 1, v6, !v37, 1, &v125);
            v88 = *a2;
            v89 = (*a2)->f64[1];
            *&v135 = (*a2)->f64[0];
            *(&v135 + 1) = *&v135 + a6;
            v90 = v88[1].f64[1];
            v91 = v88[1].f64[0] + *&v135;
            *&v137 = v91 - a6;
            *(&v137 + 1) = v91;
            *&v136 = *&v135 + a5;
            *(&v136 + 1) = v91 - a5;
            *&v131 = v89;
            *(&v131 + 1) = v89 + a6;
            v92 = v89 + a5;
            v93 = v90 + v89;
            *&v133 = v93 - a6;
            *(&v133 + 1) = v93;
            *&v132 = v92;
            *(&v132 + 1) = v93 - a5;
            v94 = (*(&v125 + 1) - *&v125) * 0.5;
            *&v90 = v94 + *&v125;
            *&v95 = *&v125 + a6 / a5 * v94;
            *&v96 = *(&v125 + 1) + a6 / a5 * (*&v90 - *(&v125 + 1));
            *&v128 = __PAIR64__(v95, v125);
            *&v130[0] = __PAIR64__(v95, v125);
            DWORD2(v128) = LODWORD(v90);
            HIDWORD(v128) = LODWORD(v90);
            DWORD2(v130[0]) = LODWORD(v90);
            HIDWORD(v130[0]) = LODWORD(v90);
            *&v129 = __PAIR64__(HIDWORD(v125), v96);
            *&v130[1] = __PAIR64__(HIDWORD(v125), v96);
            v97 = 0.5 - a5 * 0.5 / v29;
            *v126 = *&v125 + ((*(&v125 + 1) - *&v125) * v97);
            *(v126 + 4) = __PAIR64__(LODWORD(v90), v125);
            *v127 = *v126;
            *(v127 + 4) = __PAIR64__(LODWORD(v90), v125);
            HIDWORD(v126[0]) = LODWORD(v90);
            HIDWORD(v127[0]) = LODWORD(v90);
            LODWORD(v126[1]) = HIDWORD(v125);
            *(&v126[1] + 1) = *(&v125 + 1) + ((*&v125 - *(&v125 + 1)) * v97);
            LODWORD(v127[1]) = HIDWORD(v125);
            *(&v127[1] + 1) = *(&v126[1] + 1);
            CA::OGL::emit_twenty_part_rect(a1, a2, &v135, &v131, v130, &v128, v127, v126, v27 | 0x4000);
          }

          else
          {
            if (v6 > 1)
            {
              (*(v87 + 504))(a1, 1, v6, !v37, 1, &v125);
            }

            else
            {
              (*(v87 + 496))(a1, 1, !v37, 1, &v125);
            }

            v114 = *a2;
            v115 = (*a2)->f64[1];
            *&v135 = (*a2)->f64[0];
            *(&v135 + 1) = *&v135 + v22;
            v116 = v114[1].f64[1];
            v117 = v114[1].f64[0] + *&v135;
            *&v136 = v117 - v22;
            *(&v136 + 1) = v117;
            *&v131 = v115;
            *(&v131 + 1) = v115 + v22;
            *&v132 = v116 + v115 - v22;
            *(&v132 + 1) = v116 + v115;
            LODWORD(v130[0]) = v125;
            *(v130 + 1) = *&v125 + ((*(&v125 + 1) - *&v125) * 0.5);
            *(v130 + 2) = *(v130 + 1);
            HIDWORD(v130[0]) = HIDWORD(v125);
            LODWORD(v128) = v125;
            *(&v128 + 1) = *(v130 + 1);
            *(&v128 + 2) = *(v130 + 1);
            HIDWORD(v128) = HIDWORD(v125);
            v118 = 0.5 - v22 * 0.5 / v29;
            *v127 = *&v125 + ((*(&v125 + 1) - *&v125) * v118);
            *(v127 + 1) = *(v130 + 1);
            *(v127 + 2) = *(v130 + 1);
            *(v127 + 3) = *(&v125 + 1) + ((*&v125 - *(&v125 + 1)) * v118);
            *v126 = *v127;
            *(v126 + 1) = *(v130 + 1);
            *(v126 + 2) = *(v130 + 1);
            *(v126 + 3) = *(v127 + 3);
            CA::OGL::emit_nine_part_rect(a1, a2, &v135, &v131, v130, &v128, v127, v126, v27 | 0x4000);
          }

          goto LABEL_112;
        }

        v38 = a5 - a6;
        if (a5 - a6 < 0.0)
        {
          v38 = 0.0;
        }

        v123 = v38 * 1.528665;
        v39 = vaddq_f64(vdivq_f64(vmulq_f64(vsubq_f64(vdupq_lane_s64(COERCE__INT64(a6 + a6), 0), (*a2)[1]), vdupq_n_s64(0x3FF721E8A7A4B61BuLL)), vdupq_lane_s64(COERCE__INT64(v38 * 1.528665), 0)), vdupq_n_s64(0x400721E8A7A4B61BuLL));
        __asm { FMOV            V1.2D, #1.0 }

        v41 = vbslq_s8(vcgtq_f64(v39, _Q1), _Q1, v39);
        v124 = vcvt_f32_f64(vbicq_s8(v41, vcltzq_f64(v41)));
        v42 = 1;
        (*(*a1 + 512))(a1, 1, v6, !v37, 0, &v125, a4, &v124);
        v43 = *a2;
        v44 = (*a2)->f64[1];
        *&v135 = (*a2)->f64[0];
        *(&v135 + 1) = *&v135 + a6;
        *&v136 = *&v135 + a6 + v123;
        *(&v136 + 1) = *&v135 + v22;
        v45 = v43[1].f64[1];
        v46 = v43[1].f64[0] + *&v135;
        *&v138 = v46 - a6;
        *(&v138 + 1) = v46;
        *&v137 = v46 - v22;
        *(&v137 + 1) = v46 - a6 - v123;
        *&v131 = v44;
        *(&v131 + 1) = v44 + a6;
        *&v132 = v44 + a6 + v123;
        *(&v132 + 1) = v44 + v22;
        *&v134 = v45 + v44 - a6;
        *(&v134 + 1) = v45 + v44;
        *&v133 = v45 + v44 - v22;
        *(&v133 + 1) = *&v134 - v123;
        *&v45 = (*(&v125 + 1) - *&v125) * 0.5;
        *v47.i32 = *&v45 + *&v125;
        v48 = *&v45;
        *&v49 = *&v125 + a6 / v22 * v48;
        v50 = (v123 + a6) / v22;
        *&v48 = *&v125 + v50 * v48;
        v51 = (*v47.i32 - *(&v125 + 1));
        *&v50 = *(&v125 + 1) + v50 * v51;
        *&v52 = *(&v125 + 1) + a6 / v22 * v51;
        *&v130[0] = __PAIR64__(v49, v125);
        *(&v130[0] + 1) = __PAIR64__(v47.u32[0], LODWORD(v48));
        *&v130[1] = __PAIR64__(LODWORD(v50), v47.u32[0]);
        *(&v130[1] + 1) = __PAIR64__(HIDWORD(v125), v52);
        *&v128 = __PAIR64__(v49, v125);
        *(&v128 + 1) = __PAIR64__(v47.u32[0], LODWORD(v48));
        *&v129 = __PAIR64__(LODWORD(v50), v47.u32[0]);
        *(&v129 + 1) = __PAIR64__(HIDWORD(v125), v52);
        v53 = v123;
        if (v123 == 0.0)
        {
          v53 = v29;
        }

        v54 = a6 * -0.5 / v53;
        *v127 = *&v125 + ((*(&v125 + 1) - *&v125) * v54);
        DWORD1(v127[0]) = v125;
        *(v127 + 8) = vdupq_lane_s32(v47, 0);
        DWORD2(v127[1]) = HIDWORD(v125);
        *(&v127[1] + 3) = *(&v125 + 1) + ((*&v125 - *(&v125 + 1)) * v54);
        *v126 = *v127;
        DWORD1(v126[0]) = v125;
        *(v126 + 8) = *(v127 + 8);
        DWORD2(v126[1]) = HIDWORD(v125);
        *(&v126[1] + 3) = *(&v127[1] + 3);
        v55 = 6;
        do
        {
          v56 = *(&v135 + v42);
          v57 = *(&v135 + v55);
          if (v56 > v57)
          {
            v58 = (v57 + v56) * 0.5;
            v59 = v58;
            v60 = (v59 - *&v135) / (v56 - *&v135);
            *(&v135 + v55) = v59;
            *(&v135 + v42) = v59;
            *(v130 + v42) = *v130 + ((*(v130 + v42) - *v130) * v60);
            *(v130 + v55) = *(&v130[1] + 3) + ((*(v130 + v55) - *(&v130[1] + 3)) * v60);
            *(v127 + v42) = *v127 + ((*(v127 + v42) - *v127) * v60);
            *(v127 + v55) = *(&v127[1] + 3) + ((*(v127 + v55) - *(&v127[1] + 3)) * v60);
          }

          ++v42;
          --v55;
        }

        while (v42 != 4);
        v61 = 1;
        v62 = 6;
        do
        {
          v63 = *(&v131 + v61);
          v64 = *(&v131 + v62);
          if (v63 > v64)
          {
            v65 = (v64 + v63) * 0.5;
            v66 = v65;
            v67 = (v66 - *&v131) / (v63 - *&v131);
            *(&v131 + v62) = v66;
            *(&v131 + v61) = v66;
            *(&v128 + v61) = *&v128 + ((*(&v128 + v61) - *&v128) * v67);
            *(&v128 + v62) = *(&v129 + 3) + ((*(&v128 + v62) - *(&v129 + 3)) * v67);
            *(v126 + v61) = *v126 + ((*(v126 + v61) - *v126) * v67);
            *(v126 + v62) = *(&v126[1] + 3) + ((*(v126 + v62) - *(&v126[1] + 3)) * v67);
          }

          ++v61;
          --v62;
        }

        while (v61 != 4);
        bzero(&v139, 0x900uLL);
        v68 = v27 & 0x3C00000;
        if ((v27 & 0x3C00000) != 0)
        {
          v69 = 72;
        }

        else
        {
          v69 = 64;
        }

        if (v69 > *(a1 + 152))
        {
          goto LABEL_112;
        }

        v70 = 0;
        v71 = *(a1 + 136);
        v72 = (v71 + 28);
        v73 = v140;
        v74 = xmmword_183E20E60;
        do
        {
          v75 = 0;
          v76 = *(&v131 + v70);
          v77 = *(&v128 + v70);
          v78 = v73;
          v79 = *(v126 + v70);
          v80 = v72;
          do
          {
            *(v78 - 2) = *(&v135 + v75);
            *(v78 - 1) = v76;
            *v78 = xmmword_183E20E60;
            v78 += 2;
            *(v80 - 3) = *(v130 + v75);
            *(v80 - 2) = v77;
            *(v80 - 1) = *(v127 + v75);
            *v80 = v79;
            ++v75;
            v80 += 12;
          }

          while (v75 != 8);
          ++v70;
          v72 += 96;
          v73 += 32;
        }

        while (v70 != 8);
        if (v68)
        {
          CA::OGL::adjust_skipped_corner_vertices(&v139, v71, 0, 3uLL, 64, 4, v27 | 0x4000);
          v74.n128_f32[0] = CA::OGL::adjust_skipped_corner_vertices(&v139, v71, 1, 1uLL, 68, 4, v27 | 0x4000);
        }

        v81 = *(*(a1 + 16) + 8);
        v82 = 32;
        v83 = v69;
        do
        {
          *(v71 + v82) = v81;
          v82 += 48;
          --v83;
        }

        while (v83);
        v84 = a2[3];
        if (v84)
        {
          (v84)(a2, &v139, v71, v69, v74);
        }

        CA::OGL::transform_vertices(&v139, v71, v69, a2[1]);
        v85 = a2[4];
        if (v85)
        {
          (v85)(a2, v71, v69);
        }

        if ((a2[2] & 9) == 0)
        {
LABEL_108:
          if (v68)
          {
            v119 = &CA::OGL::emit_forty_nine_part_rect(CA::OGL::Context &,CA::OGL::RectState const&,double const*,double const*,float const*,float const*,float const*,float const*,unsigned int,float)::corner_skipped_indices;
            v120 = a1;
            v121 = 144;
            v122 = 72;
          }

          else
          {
            v119 = &CA::OGL::emit_forty_nine_part_rect(CA::OGL::Context &,CA::OGL::RectState const&,double const*,double const*,float const*,float const*,float const*,float const*,unsigned int,float)::indices;
            v120 = a1;
            v121 = 112;
            v122 = 64;
          }

          CA::OGL::emit_quad_indices(v120, a2[5], v119, v121, v122);
LABEL_112:
          (*(*a1 + 560))(a1, 0, 1);
LABEL_113:
          *(*(a1 + 16) + 16) = 0;
          return (*(*a1 + 560))(a1, 0, 0);
        }

        v86 = *(a2 + 5);
        if ((v86 & 0xF) == 0)
        {
          goto LABEL_107;
        }

        if (v68)
        {
          if ((v86 & 4) != 0)
          {
            CA::OGL::aa_adjust_vertices((v71 + 3072), (v71 + 384), 0, 1);
            CA::OGL::aa_adjust_vertices((v71 + 48), (v71 + 3264), 0, 1);
            CA::OGL::aa_adjust_vertices((v71 + 96), (v71 + 480), 48, 4);
            CA::OGL::aa_adjust_vertices((v71 + 336), (v71 + 720), 0, 1);
            CA::OGL::aa_adjust_vertices((v71 + 3072), (v71 + 48), 0, 1);
            if ((v27 & 0x400000) != 0)
            {
              *(v71 + 3088) = *(v71 + 64);
            }
          }

          if (*(a2 + 20))
          {
            CA::OGL::aa_adjust_vertices(v71, (v71 + 384), 0, 1);
            CA::OGL::aa_adjust_vertices(v71, (v71 + 48), 384, 6);
            CA::OGL::aa_adjust_vertices((v71 + 2304), (v71 + 3408), 0, 1);
            CA::OGL::aa_adjust_vertices((v71 + 3216), (v71 + 2736), 0, 1);
            CA::OGL::aa_adjust_vertices((v71 + 3216), (v71 + 2304), 0, 1);
            if ((v27 & 0x400000) != 0)
            {
              *(v71 + 16) = *(v71 + 400);
            }

            if ((v27 & 0x1000000) != 0)
            {
              *(v71 + 3232) = *(v71 + 2320);
            }
          }

          if ((*(a2 + 20) & 8) != 0)
          {
            CA::OGL::aa_adjust_vertices((v71 + 2688), (v71 + 2736), 0, 1);
            CA::OGL::aa_adjust_vertices((v71 + 2688), (v71 + 2304), 48, 6);
            CA::OGL::aa_adjust_vertices((v71 + 2976), (v71 + 3360), 0, 1);
            CA::OGL::aa_adjust_vertices((v71 + 3168), (v71 + 2640), 0, 1);
            CA::OGL::aa_adjust_vertices((v71 + 3168), (v71 + 2976), 0, 1);
            if ((v27 & 0x1000000) != 0)
            {
              *(v71 + 2704) = *(v71 + 2752);
            }

            if ((v27 & 0x2000000) != 0)
            {
              *(v71 + 3184) = *(v71 + 2992);
            }
          }

          if ((*(a2 + 20) & 2) != 0)
          {
            CA::OGL::aa_adjust_vertices((v71 + 3024), (v71 + 2640), 0, 1);
            CA::OGL::aa_adjust_vertices((v71 + 1104), (v71 + 1056), 384, 6);
            CA::OGL::aa_adjust_vertices((v71 + 720), (v71 + 3312), 0, 1);
            CA::OGL::aa_adjust_vertices((v71 + 3120), (v71 + 288), 0, 1);
            CA::OGL::aa_adjust_vertices((v71 + 3120), (v71 + 720), 0, 1);
            if ((v27 & 0x2000000) != 0)
            {
              *(v71 + 3040) = *(v71 + 2656);
            }

            if ((v27 & 0x800000) != 0)
            {
              *(v71 + 3136) = *(v71 + 736);
            }
          }

          if ((*(a2 + 20) & 4) != 0)
          {
            CA::OGL::aa_adjust_vertices((v71 + 288), (v71 + 672), 0, 1);
            CA::OGL::aa_adjust_vertices((v71 + 336), (v71 + 288), 0, 1);
            if ((v27 & 0x800000) != 0)
            {
              *(v71 + 352) = *(v71 + 304);
            }
          }

          goto LABEL_107;
        }

        if ((v86 & 4) != 0)
        {
          CA::OGL::aa_adjust_vertices(v71, (v71 + 384), 48, 8);
          v86 = *(a2 + 5);
          if ((v86 & 8) == 0)
          {
LABEL_104:
            if ((v86 & 1) == 0)
            {
              goto LABEL_105;
            }

            goto LABEL_117;
          }
        }

        else if ((v86 & 8) == 0)
        {
          goto LABEL_104;
        }

        CA::OGL::aa_adjust_vertices((v71 + 2688), (v71 + 2304), 48, 8);
        v86 = *(a2 + 5);
        if ((v86 & 1) == 0)
        {
LABEL_105:
          if ((v86 & 2) != 0)
          {
LABEL_106:
            CA::OGL::aa_adjust_vertices((v71 + 336), (v71 + 288), 384, 8);
          }

LABEL_107:
          CA::OGL::aa_adjust_vertices((v71 + 480), (v71 + 96), 48, 4);
          CA::OGL::aa_adjust_vertices((v71 + 2400), (v71 + 2784), 48, 4);
          CA::OGL::aa_adjust_vertices((v71 + 816), (v71 + 768), 384, 4);
          CA::OGL::aa_adjust_vertices((v71 + 1056), (v71 + 1104), 384, 4);
          goto LABEL_108;
        }

LABEL_117:
        CA::OGL::aa_adjust_vertices(v71, (v71 + 48), 384, 8);
        if ((*(a2 + 5) & 2) == 0)
        {
          goto LABEL_107;
        }

        goto LABEL_106;
      }
    }
  }

  return result;
}

void CAML::anonymous namespace::set_array(CAML::_anonymous_namespace_ *this, CAML::Context *a2, CAML::State *a3)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    CFArrayAppendValue(*(*(this + 6) + 64), v3);
  }
}

double CA::Render::ShapeLayer::stroke_bounds(CA::Render::ShapeLayer *this, uint64_t a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (*(a2 + 16) && *(a2 + 104) != 0.0 && *(a2 + 96) > *(a2 + 88) && ((vmaxv_u16(vmovn_s32(vmvnq_s8(vceqzq_f32(*(a2 + 56))))) & 1) != 0 || *(a2 + 80)) && (v9[0] = 0, CA::Render::ShapeLayer::stroke_path(v9, *(a2 + 160), a2), (v3 = v9[0]) != 0))
  {
    v4 = CA::Render::Path::bounding_rect(v9[0]);
    v5 = *v4;
    v6 = v4[1];
    *this = *v4;
    *(this + 1) = v6;
    if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
    {
      v7 = *(*v3 + 16);

      v7(v3);
    }
  }

  else
  {
    *&v5 = 0;
    *this = 0u;
    *(this + 1) = 0u;
  }

  return *&v5;
}

uint64_t ___ZN4CAML12_GLOBAL__N_112set_propertyEPNS_7ContextEPNS_5StateE_block_invoke()
{
  result = CAInternAtomWithCString("delegate");
  return result;
}

uint16x4_t CA::OGL::prepare_layer_image(CA::OGL::Renderer &,CA::OGL::Layer *,CA::OGL::Gstate const&)::visitor::visit_subclass(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = 1;
  if (*(a2 + 24) == 0.0 && *(a2 + 28) == 0.0 && *(a2 + 32) == 0.0)
  {
    v3 = *(a2 + 36) != 0.0;
  }

  result = vmovn_s32(vmvnq_s8(vceqzq_f32(*(a2 + 56))));
  result.i16[0] = vmaxv_u16(result);
  if ((result.i8[0] & 1) == 0 || (result = *(a2 + 104), *&result == 0.0))
  {
    if (v3)
    {
      *(v2 + 32) |= 0x2000uLL;
    }
  }

  else
  {
    v5 = *(v2 + 32);
    *(v2 + 32) = v5 | 0x2000;
    if (v3)
    {
      *(v2 + 32) = v5 | 0x22000;
      *(v2 + 40) |= 2u;
    }
  }

  if (*(a2 + 48) || (result = *(a2 + 104), *&result != 0.0) && *(a2 + 80))
  {
    *(*(v2 + 176) + 236) |= 0x200000u;
  }

  return result;
}

void CA::Render::KeyframeAnimation::apply(CA::Render::KeyframeAnimation *this, CA::Render::Layer **a2, double a3, int a4, char a5)
{
  v84 = *MEMORY[0x1E69E9840];
  v82 = 0u;
  v83 = 0u;
  v10 = CA::Render::KeyframeAnimation::keyframe_for_time(this, a3, &v82);
  v11 = CA::Render::PropertyAnimation::apply_velocity_state(this, a2);
  v15 = v11;
  v16 = 0.0;
  v17 = 0.0;
  if ((a5 & 1) == 0 && v11)
  {
    v17 = (*(*this + 128))(this, a3) * *(a2 + 2);
  }

  v18 = *(this + 144);
  if (*(this + 144))
  {
    if (v18 == 2 || v18 == 4)
    {
      v21 = 0;
      v20 = 1;
    }

    else
    {
      v20 = 0;
      v21 = *(this + 16);
    }

    v22 = *&v83 - *(&v82 + 1);
    v23 = (a3 - *(&v82 + 1)) / (*&v83 - *(&v82 + 1));
    if (v23 > 1.0)
    {
      v23 = 1.0;
    }

    if (v23 >= 0.0)
    {
      v16 = v23;
    }

    else
    {
      v16 = 0.0;
    }

    v24 = v17 / v22;
    if (v15)
    {
      v25 = v17 / v22;
    }

    else
    {
      v25 = v17;
    }

    if (!v21 || v10 < 0 || v10 >= *(v21 + 16) >> 2)
    {
      v17 = v25;
    }

    else
    {
      v26 = *(this + 5);
      if (v26)
      {
        v27 = *(v26 + 32) * 1000.0;
      }

      else
      {
        v27 = INFINITY;
      }

      v28 = v21 + 32 * v10;
      v29 = 1.0 / v27;
      v16 = CA::Render::TimingFunction::evaluate((v28 + 24), v12, v16, 1.0 / v27);
      if (v15)
      {
        v17 = CA::Render::TimingFunction::evaluate_derivative_inverse(v30, v31, *(v28 + 24), *(v28 + 40), v16, v29) * v24;
      }
    }
  }

  else
  {
    v20 = 0;
  }

  v32 = *(this + 17);
  if (v32)
  {
    v80 = 0uLL;
    v79[0] = 0.0;
    v79[1] = 0.0;
    v78 = 0uLL;
    v77 = 0uLL;
    v76 = 0.0;
    v33 = *(this + 3);
    if ((v33 & 0x6000000) != 0)
    {
      v35 = &v76;
    }

    else
    {
      v35 = 0;
    }

    if (v15)
    {
      v37 = v79;
    }

    else
    {
      v37 = 0;
    }

    v34 = v16;
    v36 = v17;
    if (CA::Render::Path::interpolate(v32, v10, v20, &v80, &v78, &v77, v35, v37, v34, v36))
    {
      LODWORD(v74) = a4;
      CA::Render::PropertyAnimation::set(this, a2[5], 0, 2, 0, v80.f64, 0, 0, v78.f64, v77.f64, 0, v74);
      if (v15)
      {
        CA::Render::VelocityState::set_keypath_velocity(v15, *(this + 12), *(this + 13), (*(this + 3) >> 9) & 1, 2uLL, v79, v80.f64, 0);
      }

      if ((v33 & 0x6000000) != 0)
      {
        v38 = v76;
        if ((v33 & 0x4000000) != 0)
        {
          v38 = v76 + 3.14159265;
          v76 = v76 + 3.14159265;
        }

        *&v81[16] = 0u;
        memset(&v81[48], 0, 32);
        *&v81[80] = xmmword_183E20E00;
        *&v81[96] = 0u;
        *&v81[112] = xmmword_183E20E60;
        v41 = __sincos_stret(v38);
        *v40.i64 = v41.__cosval;
        *v39.i64 = v41.__sinval;
        if (fabs(v41.__sinval) >= 0.0000001)
        {
          if (fabs(v41.__cosval) < 0.0000001)
          {
            v40.i64[0] = 1.0;
            v54.f64[0] = NAN;
            v54.f64[1] = NAN;
            v39.i64[0] = vbslq_s8(vnegq_f64(v54), v40, v39).u64[0];
            v40.i64[0] = 0;
          }
        }

        else
        {
          v39.i64[0] = 1.0;
          v42.f64[0] = NAN;
          v42.f64[1] = NAN;
          v40.i64[0] = vbslq_s8(vnegq_f64(v42), v39, v40).u64[0];
          v39.i64[0] = 0;
        }

        *v81 = v40.i64[0];
        *&v81[8] = v39.i64[0];
        *&v81[32] = -*v39.i64;
        *&v81[40] = v40.i64[0];
        v75 = 1433;
        CA::Render::Layer::set_keypath_value(a2[5], &v75, 1, 0x10, v81);
        CA::Render::key_path_free(0x599, v55);
      }
    }

    return;
  }

  v43 = *(this + 14);
  if (!v43)
  {
    return;
  }

  if (v18 == 3)
  {
    memset(&v81[16], 0, 104);
    *v81 = v16;
    *&v81[8] = v17;
  }

  else
  {
    memset(&v81[16], 0, 104);
    *v81 = v16;
    *&v81[8] = v17;
    if (v18 != 4)
    {
      v56 = 0;
      goto LABEL_69;
    }
  }

  v44 = *(this + 19);
  v14.f64[0] = 0.0;
  v13.f64[0] = 0.0;
  v45 = 0.0;
  if (v44)
  {
    v46 = *(v44 + 16);
    if (v10 < v46)
    {
      v13.f64[0] = *(v44 + 8 * v10 + 24);
    }

    if (v10 + 1 < v46)
    {
      v45 = *(v44 + 8 * (v10 + 1) + 24);
    }
  }

  v47 = *(this + 20);
  v48 = 0.0;
  if (v47)
  {
    v49 = *(v47 + 16);
    if (v10 < v49)
    {
      v14.f64[0] = *(v47 + 8 * v10 + 24);
    }

    if (v10 + 1 < v49)
    {
      v48 = *(v47 + 8 * (v10 + 1) + 24);
    }
  }

  v50 = *(this + 21);
  if (v50)
  {
    v51 = *(v50 + 16);
    v52 = 0.0;
    v53 = 0.0;
    if (v10 < v51)
    {
      v53 = *(v50 + 8 * v10 + 24);
    }

    if (v10 + 1 < v51)
    {
      v52 = *(v50 + 8 * (v10 + 1) + 24);
    }
  }

  else
  {
    v53 = 0.0;
    v52 = 0.0;
  }

  CA::Render::ValueInterpolator::set_hermite(v81, COERCE_UNSIGNED_INT64(*(&v82 + 1) - *&v82), *&v83 - *(&v82 + 1), *(&v83 + 1) - *&v83, v13, v14, v53, v45, v48, v52);
  v56 = 1;
LABEL_69:
  v57 = *(v43 + 16);
  v58 = v57 - 1;
  if (v57 < 1)
  {
    return;
  }

  v59 = v10 >= v58 ? v57 - 1 : v10;
  v60 = v43 + 24;
  v61 = *(v43 + 24 + 8 * v59);
  v62 = v10 + 1 < v58 ? v10 + 1 : v57 - 1;
  v63 = *(v60 + 8 * v62);
  if (!v61 || v63 == 0)
  {
    return;
  }

  v65 = 0;
  if (v56)
  {
    if (v10 >= 1 && v10 <= v57)
    {
      v65 = *(v60 + 8 * (v10 - 1));
    }

    v66 = 0;
    if (v10 >= -2 && v10 + 2 < v57)
    {
      v66 = *(v60 + 8 * (v10 + 2));
    }
  }

  else
  {
    v66 = 0;
  }

  if (*(v61 + 12) == 62 && *(v63 + 12) == 62)
  {
    v67 = *(v61 + 16);
    v68 = *(v63 + 16);
    if (v67 >= v68)
    {
      v69 = v68;
    }

    else
    {
      v69 = v67;
    }

    if (v56)
    {
      if (v65)
      {
        v70 = v65 + 24;
        v71 = *(v65 + 16);
        if (v69 >= v71)
        {
          v69 = v71;
        }

        else
        {
          v69 = v69;
        }
      }

      else
      {
        v70 = 0;
      }

      if (v66)
      {
        v73 = v66 + 24;
        if (v69 >= *(v66 + 16))
        {
          v69 = *(v66 + 16);
        }

        goto LABEL_111;
      }
    }

    else
    {
      v70 = 0;
    }

    v73 = 0;
LABEL_111:
    if (v69)
    {
      LODWORD(v74) = a4;
      CA::Render::PropertyAnimation::set(this, a2[5], v15, v69, v70, (v61 + 24), (v63 + 24), v73, (*v60 + 24), (*(v60 + 8 * v58) + 24), v81, v74);
    }

    return;
  }

  v80.f64[0] = 0.0;
  if (v56)
  {
    CA::Render::mix_objects(&v80, v65, v61, v63, v66, v81);
  }

  else
  {
    CA::Render::mix_objects(&v80, v61, v63, v81);
  }

  CA::Render::Layer::set_keypath_object(a2[5], this + 12, *&v80.f64[0]);
  v72 = v80.f64[0];
  if (*&v80.f64[0] && atomic_fetch_add((*&v80.f64[0] + 8), 0xFFFFFFFF) == 1)
  {
    (*(**&v72 + 16))(COERCE_FLOAT64_T(*&v72));
  }
}

unsigned int CA::Render::KeyframeAnimation::keyframe_for_time(CA::Render::KeyframeAnimation *this, double a2, double *a3)
{
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v4 = *(this + 15);
  if (v4)
  {
    v5 = *(v4 + 16);
    v6 = v5 - 2;
    if (v5 >= 2)
    {
      v7 = 1;
      if ((*(this + 15) & 8) != 0 && v5 >= 6)
      {
        v8 = v5 - 3;
        do
        {
          v9 = v7 + (v8 >> 1);
          if (*(v4 + 24 + 8 * v9) <= a2)
          {
            v7 = v9;
          }

          else
          {
            v6 = v9;
          }

          v8 = v6 - v7;
        }

        while (v6 - v7 > 2);
      }

      v10 = v4 + 24;
      if (v7 < v5 - 1)
      {
        while (*(v10 + 8 * v7) <= a2)
        {
          if (v5 - 1 == ++v7)
          {
            v7 = v5 - 1;
            break;
          }
        }
      }

      result = v7 - 1;
      v11 = *(v10 + 8 * (v7 - 1));
      a3[1] = v11;
      v12 = *(v10 + 8 * v7);
      a3[2] = v12;
      if (v7 < 2)
      {
        v13 = -(v12 + v11 * -2.0);
      }

      else
      {
        v13 = *(v10 + 8 * (v7 - 2));
      }

      *a3 = v13;
      v16 = v7 + 1;
      if (v16 >= v5)
      {
        v17 = -(v11 + v12 * -2.0);
      }

      else
      {
        v17 = *(v10 + 8 * v16);
      }

      goto LABEL_32;
    }

LABEL_33:
    result = 0;
    *a3 = 0.0;
    a3[1] = 0.0;
    a3[3] = 1.0;
    v17 = 1.0;
    v23 = 2;
    goto LABEL_34;
  }

  v14 = *(this + 17);
  if (v14)
  {
    v15 = *(v14 + 16);
  }

  else
  {
    v18 = *(this + 14);
    if (!v18)
    {
      goto LABEL_33;
    }

    v15 = *(v18 + 16) - (*(this + 144) != 0);
  }

  if (v15 <= 0)
  {
    goto LABEL_33;
  }

  v19 = 1.0 / v15;
  if (a2 > 1.0)
  {
    a2 = 1.0;
  }

  if (a2 < 0.0)
  {
    a2 = 0.0;
  }

  v20 = a2 * v15;
  v21 = floor(v20);
  result = vcvtmd_s64_f64(v20);
  *a3 = v19 * v21 - v19;
  a3[1] = v19 * v21;
  v22 = v19 * v21 + v19;
  a3[2] = v22;
  v17 = v22 + v19;
LABEL_32:
  v23 = 3;
LABEL_34:
  a3[v23] = v17;
  return result;
}

void CA::Render::Updater::ShadowOp::map_bounds(CA::Render::Updater::ShadowOp *this, CA::Render::Updater::LayerShapes *a2)
{
  *v5.i64 = CA::Render::Updater::ShadowOp::apply_shadow(this, a2);
  if (*(a2 + 8))
  {
    CA::shape_map(a2 + 8, this, CA::Render::Updater::ShadowOp::map_bounds(CA::Render::Updater::LayerShapes &,BOOL)::$_0::__invoke, v4, v5);
  }

  v6 = *(a2 + 6);
  if (v6)
  {
    *(v6 + 16) = 1;
    v7 = *(v6 + 8);
    if (v7)
    {
      CA::GenericRectTree<CA::Rect>::Pool::delete_node(*v6, v7);
      *(v6 + 8) = 0;
    }
  }
}

void CA::OGL::render_shape(CA::OGL::Context **a1, uint64_t a2, uint64_t a3, float32x4_t a4, float32_t a5, float a6, float a7, float a8, uint64_t a9, float64x2_t *a10, uint64_t a11, char a12)
{
  v96 = *MEMORY[0x1E69E9840];
  if (!a3 || a4.f32[0] == 0.0 && a5 == 0.0 && a6 == 0.0 && a7 == 0.0)
  {
    return;
  }

  v17 = a10[1].f64[0];
  if (v17 >= a10[1].f64[1])
  {
    v17 = a10[1].f64[1];
  }

  if (v17 <= 0.0)
  {
    return;
  }

  v18 = *a1;
  v19 = *(*a1 + 82);
  a4.f32[1] = a5;
  a4.i64[1] = __PAIR64__(LODWORD(a7), LODWORD(a6));
  *a4.f32 = vcvt_f16_f32(a4);
  if (*(v19 + 32) != 0x3C003C003C003C00)
  {
    _Q1 = vcvtq_f32_f16(*(v19 + 32));
    _S2 = _Q1.i32[1];
    _KR00_8 = _Q1.i64[1];
    __asm
    {
      FCVT            H1, S1
      FCVT            H5, S2
      FCVT            H3, S3
      FCVT            H2, S6
    }

    _D1.i16[1] = _H5;
    _D1.i16[2] = _H3;
    _D1.i16[3] = _S2;
    if (a4.i64[0] == 0x3C003C003C003C00)
    {
      *a4.f32 = _D1;
    }

    else
    {
      *a4.f32 = vcvt_f16_f32(vmulq_f32(vcvtq_f32_f16(_D1), vcvtq_f32_f16(*a4.f32)));
    }
  }

  v84 = 0;
  v86 = a4.i64[0];
  CA::OGL::colormatched_layer_color(&v84, a1, a2, &v86, a8);
  v31 = a10[1];
  v82 = *a10;
  v83 = v31;
  CA::Rect::apply_transform(&v82, *(v19 + 24), v32);
  v80 = 0;
  v81 = 0;
  CA::Shape::get_bounds(*(*(v18 + 82) + 8), &v80);
  v33 = *(v18 + 84);
  v34 = v33 ? (v33 + 48) : (v18 + 608);
  v35 = vclez_s32(v81);
  if ((vpmax_u32(v35, v35).u32[0] & 0x80000000) != 0)
  {
    return;
  }

  v36 = v34[1];
  v37 = vclez_s32(v36);
  if ((vpmax_u32(v37, v37).u32[0] & 0x80000000) != 0)
  {
    return;
  }

  v38 = vmax_s32(v80, *v34);
  v39 = vsub_s32(vmin_s32(vadd_s32(v80, v81), vadd_s32(*v34, v36)), v38);
  v40 = vclez_s32(v39);
  if ((vpmax_u32(v40, v40).u32[0] & 0x80000000) != 0)
  {
    return;
  }

  v41 = vceqzq_f64(v83);
  if ((vorrq_s8(vdupq_laneq_s64(v41, 1), v41).u64[0] & 0x8000000000000000) != 0 || (v42 = vceqq_f64(v83, v83), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v42), 1), v42).u64[0] & 0x8000000000000000) != 0))
  {
    v44.i64[0] = 0;
    v45 = 0;
  }

  else
  {
    v43 = vcvtmq_s64_f64(vmaxnmq_f64(v82, vdupq_n_s64(0xC1BFFFFFFF000000)));
    v44 = vuzp1q_s32(v43, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v82, v83), vdupq_n_s64(0x41C0000000000000uLL))), v43));
    v45 = v44.u64[1];
  }

  v46 = vclez_s32(v45);
  if ((vpmax_u32(v46, v46).u32[0] & 0x80000000) != 0)
  {
    return;
  }

  v47 = vclez_s32(v39);
  if ((vpmax_u32(v47, v47).u32[0] & 0x80000000) != 0)
  {
    return;
  }

  v48 = vadd_s32(v38, v39);
  *&v49 = vmax_s32(*v44.i8, v38);
  v50 = vsub_s32(vmin_s32(vadd_s32(*v44.i8, v45), v48), *&v49);
  v51 = vclez_s32(v50);
  if ((vpmax_u32(v51, v51).u32[0] & 0x80000000) != 0)
  {
    return;
  }

  *(&v49 + 1) = v50;
  v79 = v49;
  if (!a11)
  {
    *(*(v18 + 2) + 8) = v84;
    v55 = *(v18 + 2);
    if (*(v55 + 496) >= 2u)
    {
      *(v55 + 497) |= 1u;
    }

    v56 = *(*(v18 + 82) + 24);
    *&v85[0] = a3;
    if (v56 && (*(v56 + 144) & 0x1F) == 0 && *(v56 + 96) == 0.0 && *(v56 + 104) == 0.0)
    {
      v56 = 0;
    }

    *(&v85[0] + 1) = v56;
    if (a12)
    {
      v86 = &unk_1EF204C98;
      *&v87 = v85;
      CA::OGL::Shape::render_path(v18);
    }

    else
    {
      CA::OGL::Shape::fill_path<CA::OGL::RenderPathIterator>(v18);
    }

    *(*(v18 + 2) + 497) &= ~1u;
    return;
  }

  v52 = *(a2 + 24);
  v53 = *(v52 + 40);
  if ((v53 & 0xFu) > 0xAuLL)
  {
    v54 = 1;
  }

  else
  {
    v54 = CA::OGL::texture_filter(CA::Render::ImageFilter)::filters[v53 & 0xF];
  }

  v76 = v54;
  v57 = v53 >> 4;
  if (v57 > 0xA)
  {
    v58 = 1;
  }

  else
  {
    v58 = CA::OGL::texture_filter(CA::Render::ImageFilter)::filters[v57];
  }

  v59 = *(v52 + 136);
  if (v59)
  {
    v60 = *(v59 + 312);
  }

  else
  {
    v60 = 0.0;
  }

  v75 = v58;
  v74 = *(*(a2 + 16) + 24);
  v61 = (*(*v18 + 696))(v18, 1, &v79, 15, @"image-render-shape");
  v62 = *(a2 + 24);
  if (v62)
  {
    v64 = CA::Render::Layer::process_id(*(v62 + 152));
    v65 = *(a2 + 24);
    if (v65)
    {
      layer_resource_text = CA::Render::create_layer_resource_text(v65, v63);
      goto LABEL_50;
    }
  }

  else
  {
    v64 = 0;
  }

  layer_resource_text = 0;
LABEL_50:
  (*(*v18 + 888))(v18, v61, 0, v64, @"image-render-shape", layer_resource_text);
  if (!v61)
  {
    goto LABEL_66;
  }

  v95 = 0;
  v89 = 0x3C003C003C003C00;
  v92 = 0;
  v93 = 0;
  v90 = 0;
  v91 = 0;
  v94 = 0;
  v86 = 0;
  v87 = *(v19 + 8);
  v88 = *(v19 + 24);
  LODWORD(v93) = *(v19 + 64);
  LOWORD(v95) = *(v19 + 80) & 0x500 | 4;
  memset(v85, 0, sizeof(v85));
  CA::Shape::operator=(v85, &v79);
  *&v87 = v85;
  v86 = CA::OGL::Context::set_gstate(v18, &v86);
  CA::OGL::Context::push_surface(v18, v61, 1u, 2, 0);
  *(*(v18 + 2) + 8) = v84;
  v67 = v88;
  v78[0] = a3;
  if (v88)
  {
    v69 = v75;
    v68 = v76;
    if ((*(v88 + 144) & 0x1F) == 0 && *(v88 + 96) == 0.0 && *(v88 + 104) == 0.0)
    {
      v67 = 0;
    }
  }

  else
  {
    v69 = v75;
    v68 = v76;
  }

  v78[1] = v67;
  if (a12)
  {
    *&v77[0].f64[0] = &unk_1EF204C98;
    *&v77[0].f64[1] = v78;
    CA::OGL::Shape::render_path(v18);
  }

  else
  {
    CA::OGL::Shape::fill_path<CA::OGL::RenderPathIterator>(v18);
  }

  *(*(v18 + 2) + 497) |= 1u;
  v77[0] = 0uLL;
  CA::OGL::fill_pattern_rect(v18, a11, a10, v77, v88, &v82, v68, v69, v60, v74 & 1, 0);
  *(*(v18 + 2) + 497) &= ~1u;
  CA::OGL::Context::pop_surface(v18);
  CA::OGL::Context::set_gstate(v18, **(v18 + 82));
  v70 = *(v18 + 2);
  if (*(v70 + 496) >= 2u)
  {
    *(v70 + 497) |= 1u;
  }

  v71 = *(v19 + 8);
  v77[0] = 0uLL;
  CA::OGL::emit_combine(v18, 1u, v61, 0, v71, v77);
  *(*(v18 + 2) + 497) &= ~1u;
  CA::OGL::Context::release_surface(v18, v61);
  if (BYTE1(xmmword_1ED4E97DC) == 1)
  {
    v73 = *(v19 + 24);
    *&v77[0].f64[0] = a10;
    v77[0].f64[1] = v73;
    memset(&v77[1], 0, 32);
    CA::OGL::fill_color_rect(v18, v77, 0x80800080, 0.0, v72);
    if (!layer_resource_text)
    {
      return;
    }
  }

  else
  {
LABEL_66:
    if (!layer_resource_text)
    {
      return;
    }
  }

  CFRelease(layer_resource_text);
}

double CA::Render::Updater::ShadowOp::apply_shadow(CA::Render::Updater::ShadowOp *this, Rect *a2)
{
  result = *&a2[2];
  v4 = *&a2[3];
  if (result >= v4)
  {
    v5 = *&a2[3];
  }

  else
  {
    v5 = *&a2[2];
  }

  if (v5 > 0.0)
  {
    if (result <= v4)
    {
      result = *&a2[3];
    }

    if (result < 1.79769313e308)
    {
      CA::Rect::unapply_transform(a2, *(this + 3));
      v8 = *&a2->top;
      v9 = *&a2[2].top;
      v10 = *&a2[3];
      if (v9.f64[0] <= v10)
      {
        v11 = *&a2[3];
      }

      else
      {
        v11 = *&a2[2];
      }

      v12 = *&a2[2].top;
      v13 = *&a2->top;
      if (v11 < 1.79769313e308)
      {
        v14 = v9.f64[0] >= v10 ? *&a2[3] : *&a2[2];
        v15 = v14 <= 0.0;
        v12 = *&a2[2].top;
        v13 = *&a2->top;
        if (!v15)
        {
          *&v16 = -*(this + 8);
          v17 = vdupq_lane_s64(v16, 0);
          v18 = vaddq_f64(vdupq_lane_s64(COERCE__INT64(*&v16 * -2.0), 0), v9);
          v19 = vmovn_s64(vmvnq_s8(vclezq_f64(v18)));
          v13 = vaddq_f64(v8, v17);
          v20 = vdup_lane_s32(vand_s8(v19, vdup_lane_s32(v19, 1)), 0);
          v21.i64[0] = v20.i32[0];
          v21.i64[1] = v20.i32[1];
          v12 = vandq_s8(v18, v21);
        }
      }

      v22 = vaddq_f64(v13, vcvtq_f64_f32(*(this + 36)));
      v23 = *&a2[2].top;
      v24 = vclezq_f64(v23);
      v25 = vclezq_f64(v12);
      v26 = vmovn_s64(vcltzq_s64(vorrq_s8(vzip1q_s64(v25, v24), vzip2q_s64(v25, v24))));
      if (v26.i8[4])
      {
        if (v26.i8[0])
        {
LABEL_24:
          if (v11 < 1.79769313e308)
          {
            if (v9.f64[0] < v10)
            {
              v10 = v9.f64[0];
            }

            if (v10 > 0.0)
            {
              *&v28 = -*(this + 11);
              v29 = vdupq_lane_s64(v28, 0);
              v30 = vaddq_f64(vdupq_lane_s64(COERCE__INT64(*&v28 * -2.0), 0), v9);
              v31 = vmovn_s64(vmvnq_s8(vclezq_f64(v30)));
              v8 = vaddq_f64(v8, v29);
              v32 = vdup_lane_s32(vand_s8(v31, vdup_lane_s32(v31, 1)), 0);
              v33.i64[0] = v32.i32[0];
              v33.i64[1] = v32.i32[1];
              v9 = vandq_s8(v30, v33);
            }
          }

          v34 = *&a2[2].top;
          v35 = vclezq_f64(v34);
          v36 = vclezq_f64(v9);
          v37 = vmovn_s64(vcltzq_s64(vorrq_s8(vzip1q_s64(v36, v35), vzip2q_s64(v36, v35))));
          if (v37.i8[4])
          {
            if (v37.i8[0])
            {
              goto LABEL_35;
            }
          }

          else
          {
            if (v37.i8[0])
            {
LABEL_35:
              v39 = *(this + 3);

              return CA::Rect::apply_transform(a2, v39);
            }

            v38 = vaddq_f64(v8, v9);
            v8 = vminnmq_f64(*&a2->top, v8);
            v9 = vsubq_f64(vmaxnmq_f64(vaddq_f64(*&a2->top, v34), v38), v8);
          }

          *&a2->top = v8;
          *&a2[2].top = v9;
          goto LABEL_35;
        }
      }

      else
      {
        if (v26.i8[0])
        {
          goto LABEL_24;
        }

        v27 = vaddq_f64(v22, v12);
        v22 = vminnmq_f64(*&a2->top, v22);
        v12 = vsubq_f64(vmaxnmq_f64(vaddq_f64(*&a2->top, v23), v27), v22);
      }

      *&a2->top = v22;
      *&a2[2].top = v12;
      goto LABEL_24;
    }
  }

  return result;
}

uint64_t CA::Render::Layer::set_keypath_object(CA::Render::Layer *this, const CA::Render::Layer **a2, void *const *a3)
{
  v3 = a3;
  v46[1] = *MEMORY[0x1E69E9840];
  v46[0] = this;
  result = CA::Render::skip_sublayers(v46, a2, a3);
  if (result)
  {
    return result;
  }

  v8 = *a2;
  if (!*a2)
  {
    return result;
  }

  v9 = v46[0];
  if (v8)
  {
    v10 = v8 >> 1;
    if (!(v8 >> 32))
    {
      v45 = 17;
      goto LABEL_10;
    }

LABEL_21:
    switch(v10)
    {
      case 64:
        v22 = *(v46[0] + 17);
        if (!v22)
        {
          return result;
        }

        result = *(v22 + 104);
        if (!result)
        {
          return result;
        }

        if (v8)
        {
          v23 = v8 >> 32;
        }

        else
        {
          LODWORD(v23) = *v8 < 2u ? 0 : *(v8 + 2);
        }

        result = CA::Render::TypedArray<CA::Render::Filter>::find_named_object(result, v23);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        LODWORD(v21) = 0;
        v42 = *(*(v9 + 17) + 104);
        break;
      case 124:
        v19 = *(v46[0] + 17);
        if (!v19)
        {
          return result;
        }

        v20 = *(v19 + 88);
        if (!v20)
        {
          return result;
        }

        if (v8)
        {
          v21 = v8 >> 32;
        }

        else if (*v8 < 2u)
        {
          LODWORD(v21) = 0;
        }

        else
        {
          LODWORD(v21) = *(v8 + 2);
        }

        v41 = *(v20 + 40);
        goto LABEL_132;
      case 256:
        v13 = *(v46[0] + 17);
        if (!v13)
        {
          return result;
        }

        result = *(v13 + 96);
        if (!result)
        {
          return result;
        }

        if (v8)
        {
          v14 = v8 >> 32;
        }

        else
        {
          LODWORD(v14) = *v8 < 2u ? 0 : *(v8 + 2);
        }

        result = CA::Render::TypedArray<CA::Render::Filter>::find_named_object(result, v14);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        LODWORD(v21) = 0;
        v42 = *(*(v9 + 17) + 96);
        break;
      default:
        return result;
    }

    v43 = *(v42 + 8 * result + 24);
    v44 = *a2;
    if (*a2 && (v44 & 1) == 0)
    {
      if (*v44 < 3u)
      {
        LODWORD(v21) = 0;
      }

      else
      {
        LODWORD(v21) = *(v44 + 3);
      }
    }

    v41 = *(v43 + 40);
LABEL_132:

    return CA::Render::KeyValueArray::set_key(v41, v21, v3);
  }

  if (*v8 != 1)
  {
    if (*v8 >= 4 || !*v8)
    {
      return result;
    }

    v10 = *(v8 + 1);
    goto LABEL_21;
  }

  v45 = 17;
  if (!*v8)
  {
    goto LABEL_65;
  }

  v10 = *(v8 + 1);
LABEL_10:
  if (v10 > 159)
  {
    if (v10 > 644)
    {
      if (v10 > 693)
      {
        if (v10 == 694)
        {
          return result;
        }

        if (v10 == 716)
        {
          if (v3)
          {
            if (*(v3 + 12) != 62)
            {
              return result;
            }

            v24 = v46[0];
            v25 = v3;
          }

          else
          {
            v24 = v46[0];
            v25 = 0;
          }

          return CA::Render::Layer::set_transform(v24, v25);
        }
      }

      else
      {
        if (v10 == 645)
        {
          if (v3)
          {
            if (*(v3 + 12) != 38)
            {
              return result;
            }

            v29 = v46[0];
            v30 = v3;
          }

          else
          {
            v29 = v46[0];
            v30 = 0;
          }

          return CA::Render::Layer::set_shadow_path(v29, v30);
        }

        if (v10 == 693)
        {
          if (v3)
          {
            if (*(v3 + 12) != 62)
            {
              return result;
            }

            v15 = v46[0];
            v16 = v3;
          }

          else
          {
            v15 = v46[0];
            v16 = 0;
          }

          return CA::Render::Layer::set_sublayer_transform(v15, v16);
        }
      }

      goto LABEL_65;
    }

    if (v10 == 160)
    {
      if (v3)
      {
        if (*(v3 + 12) != 62)
        {
          return result;
        }

        v35 = v46[0];
        v36 = v3;
      }

      else
      {
        v35 = v46[0];
        v36 = 0;
      }

      return CA::Render::Layer::set_corner_contents_center(v35, v36);
    }

    if (v10 == 256)
    {
      if (v3)
      {
        if (*(v3 + 12) != 1)
        {
          return result;
        }

        result = CA::Render::Array::check_types(v3, 1, &v45);
        if (!result)
        {
          return result;
        }

        v39 = v9;
        v40 = v3;
      }

      else
      {
        v39 = v46[0];
        v40 = 0;
      }

      return CA::Render::Layer::set_filters(v39, v40);
    }

    if (v10 != 515)
    {
      goto LABEL_65;
    }

    if (!v3)
    {
      return result;
    }

    v17 = *(v3 + 12);
    if (v17 == 26)
    {
      result = CA::Render::MeshTransform::eval_interpolator(v3, (v46[0] + 72), v7);
      v3 = result;
      if (!result)
      {
        v18 = 0;
LABEL_136:
        result = CA::Render::Layer::set_mesh_transform(v9, v3);
LABEL_137:
        if (v18 && atomic_fetch_add(v18 + 2, 0xFFFFFFFF) == 1)
        {
          return (*(*v18 + 16))(v18);
        }

        return result;
      }

      v17 = *(result + 12);
      v18 = result;
    }

    else
    {
      v18 = 0;
    }

    if (v17 != 35)
    {
      goto LABEL_137;
    }

    goto LABEL_136;
  }

  if (v10 <= 133)
  {
    switch(v10)
    {
      case 64:
        if (v3)
        {
          if (*(v3 + 12) != 1)
          {
            return result;
          }

          result = CA::Render::Array::check_types(v3, 1, &v45);
          if (!result)
          {
            return result;
          }

          v33 = v9;
          v34 = v3;
        }

        else
        {
          v33 = v46[0];
          v34 = 0;
        }

        return CA::Render::Layer::set_background_filters(v33, v34);
      case 124:
        if (v3)
        {
          if (*(v3 + 12) != 17)
          {
            return result;
          }

          v37 = v46[0];
          v38 = v3;
        }

        else
        {
          v37 = v46[0];
          v38 = 0;
        }

        return CA::Render::Layer::set_compositing_filter(v37, v38);
      case 131:
        return CA::Render::Layer::set_contents(v46[0], v3);
    }

    goto LABEL_65;
  }

  if (v10 > 153)
  {
    if (v10 == 154)
    {
      if (v3)
      {
        if (*(v3 + 12) != 62)
        {
          return result;
        }

        v31 = v46[0];
        v32 = v3;
      }

      else
      {
        v31 = v46[0];
        v32 = 0;
      }

      return CA::Render::Layer::set_contents_transform(v31, v32);
    }

    if (v10 == 159)
    {
      return CA::Render::Layer::set_corner_contents(v46[0], v3);
    }

    goto LABEL_65;
  }

  if (v10 == 134)
  {
    if (v3)
    {
      if (*(v3 + 12) != 62)
      {
        return result;
      }

      v27 = v46[0];
      v28 = v3;
    }

    else
    {
      v27 = v46[0];
      v28 = 0;
    }

    return CA::Render::Layer::set_contents_center(v27, v28);
  }

  if (v10 != 150)
  {
LABEL_65:
    v26 = *(this + 17);
    if (v26 && *v26)
    {
      result = *CA::Render::Layer::ensure_ext(this);
      if (result)
      {
        return (*(*result + 128))(result, a2, v3);
      }
    }

    return result;
  }

  if (!v3)
  {
    v11 = v46[0];
    v12 = 0;
    return CA::Render::Layer::set_contents_rect(v11, v12);
  }

  if (*(v3 + 12) == 62)
  {
    v11 = v46[0];
    v12 = v3;
    return CA::Render::Layer::set_contents_rect(v11, v12);
  }

  return result;
}

uint64_t CA::Render::mix_objects(uint64_t this, atomic_uint *a2, atomic_uint *a3, const ValueInterpolator *a4)
{
  v4 = this;
  if (!a2)
  {
    goto LABEL_22;
  }

  v5 = a3;
  if (!a3)
  {
    goto LABEL_22;
  }

  v7 = a2;
  if (fabs(a4->var0) < 0.00001)
  {
    if (!atomic_fetch_add(a2 + 2, 1u))
    {
      v7 = 0;
      atomic_fetch_add(a2 + 2, 0xFFFFFFFF);
    }

    *this = v7;
    return this;
  }

  if (fabs(a4->var0 + -1.0) < 0.00001)
  {
    if (!atomic_fetch_add(a3 + 2, 1u))
    {
      v5 = 0;
      atomic_fetch_add(a3 + 2, 0xFFFFFFFF);
    }

    *this = v5;
    return this;
  }

  v8 = *(a2 + 12);
  v9 = *(a3 + 12);
  if (v8 == 26)
  {
    v7 = *(a2 + 4);
    if (!v7)
    {
      goto LABEL_22;
    }

    v8 = v7[12];
  }

  if (v9 == 26)
  {
    v5 = *(a3 + 4);
    if (v5)
    {
      v9 = *(v5 + 12);
      goto LABEL_17;
    }

LABEL_22:
    *v4 = 0;
    return this;
  }

LABEL_17:
  if (v8 != v9)
  {
    this = (*(*v7 + 48))(v7, v5);
    if ((this & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  v10 = *(*v7 + 56);

  return v10(v7, v5, a4);
}

double *CA::ScanConverter::Path::closepath(double *this)
{
  v1 = this;
  v2 = this[5];
  if (this[8] != v2)
  {
    v3 = this[6];
LABEL_5:
    v4 = this[7];
    if (v4 == 1.0)
    {
      this = CA::ScanConverter::Path::lineto(this, v2, v3);
    }

    else
    {
      this = CA::ScanConverter::Path::lineto(this, v2, v3, v4);
    }

    goto LABEL_8;
  }

  v3 = this[6];
  if (this[9] != v3 || this[10] != this[7])
  {
    goto LABEL_5;
  }

LABEL_8:
  if (*(v1 + 89) == 1 && *(v1 + 88) == 1)
  {
    this = CA::ScanConverter::Path::add_line(v1, v1[12], v1[13], v1[14], v1[15]);
  }

  *(v1 + 44) = 0;
  return this;
}

uint64_t CA::ScanConverter::Path::cubeto(CA::ScanConverter::Path *this, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, double a17)
{
  v25 = *(this + 8);
  v26 = *(this + 9);
  v27 = *(this + 10);
  *(this + 8) = a8;
  *(this + 9) = a9;
  *(this + 10) = a17;
  if (a17 == 1.0 && a7 == 1.0 && a4 == 1.0 && v27 == 1.0)
  {

    return CA::ScanConverter::Path::add_cube(this, v25, v26, a2, a3, a5, a6, a8, a9);
  }

  else
  {
    v32 = (a4 - a7) * a4 + (a7 - v27) * a7 + (v27 - a4) * a17;
    if (v32 < 0.0)
    {
      goto LABEL_16;
    }

    v33 = a17 - v27 + (a4 - a7) * 3.0;
    v34 = a4 + a4;
    v35 = a7 - (a4 + a4) + v27;
    if (v33 == 0.0)
    {
      if (v35 == 0.0)
      {
        v36 = 0.0;
        v37 = 0.0;
      }

      else
      {
        v36 = 2.0;
        v37 = (v27 - a4) * 0.5 / v35;
      }
    }

    else if (v35 != 0.0 || (v36 = 0.0, v37 = 0.0, v32 != 0.0))
    {
      v38 = sqrt(v32);
      if (v35 < 0.0)
      {
        v38 = -v38;
      }

      v39 = v38 + v35;
      v40 = -v39 / v33;
      v41 = (v26 - a3) / v39;
      if (v40 >= v41)
      {
        v37 = v41;
      }

      else
      {
        v37 = v40;
      }

      if (v40 <= v41)
      {
        v36 = v41;
      }

      else
      {
        v36 = v40;
      }
    }

    v42 = 2.0;
    if (v37 < 1.0e-10)
    {
      v37 = v36;
    }

    else
    {
      v42 = v36;
    }

    if (v37 < 1.0e-10 || v37 > 1.0)
    {
LABEL_16:
      v130.f64[1] = a9;
      v130.f64[0] = a8;
      return CA::ScanConverter::Path::add_cube_clip(this, v25, v26, v27, a2, a3, a4, a5, a6, a10, a11, a12, a13, a14, a15, a16, a7, v130, a17);
    }

    else if (1.0 - v42 >= 1.0e-10)
    {
      v80 = 1.0 - v37;
      v81 = (v42 - v37) / (1.0 - v37);
      v82 = a9 - a6;
      v83 = v25 + a2 * -2.0 + a5;
      v84 = v26 + a3 * -2.0 + a6;
      v85 = (a3 - v26) * 3.0 + (v84 * 3.0 + v37 * (a9 + (a6 - a3) * -3.0 - v26)) * v37;
      v86 = v25 + v37 * (a2 - v25);
      v87 = v26 + v37 * (a3 - v26);
      v88 = v27 - v34 + a7;
      v89 = a4 - v27 + a4 - v27 + v37 * v88;
      v90 = v88 * 3.0 + v37 * (a17 + (a7 - a4) * -3.0 - v27);
      v91 = v27 + v37 * (a4 - v27);
      v92 = v25 + (a2 - v25 + a2 - v25 + v37 * v83) * v37;
      v93 = v26 + (a3 - v26 + a3 - v26 + v37 * v84) * v37;
      v94 = v27 + v89 * v37;
      v95 = v25 + ((a2 - v25) * 3.0 + (v83 * 3.0 + v37 * (a8 + (a5 - a2) * -3.0 - v25)) * v37) * v37;
      v96 = v26 + v85 * v37;
      v97 = v27 + ((a4 - v27) * 3.0 + v90 * v37) * v37;
      v98 = a8 - a5 + a8 - a5;
      v149 = -((v98 + v80 * (-(a2 + a5 * -2.0) - a8)) * v80);
      v143 = -((v82 + v82 + v80 * (-(a3 + a6 * -2.0) - a9)) * v80);
      v146 = a8 - (v98 + v80 * (-(a2 + a5 * -2.0) - a8)) * v80;
      v99 = a17 - a7 + a17 - a7;
      v100 = -((v99 + v80 * (-(a4 + a7 * -2.0) - a17)) * v80);
      v140 = a17 - (v99 + v80 * (-(a4 + a7 * -2.0) - a17)) * v80;
      v141 = a9 - (v82 + v82 + v80 * (-(a3 + a6 * -2.0) - a9)) * v80;
      v139 = v80 * (a8 - a5);
      v138 = v80 * (a9 - a6);
      v136 = v80 * (a17 - a7);
      v133.f64[1] = v96;
      v133.f64[0] = v95;
      CA::ScanConverter::Path::add_cube_clip(this, v25, v26, v27, v86, v87, v91, v92, v93, a10, a11, a12, a13, a14, a15, a16, v94, v133, v97);
      v101 = v95 + v146 * -2.0 + a8 - v139;
      v102 = v96 + v141 * -2.0 + a9 - v138;
      v103 = (v146 - v95) * 3.0 + ((a8 - v95 + (v149 + v139) * 3.0) * v81 + v101 * 3.0) * v81;
      v104 = v97 + v140 * -2.0 + a17 - v136;
      v105 = v140 - v97 + v140 - v97 + v104 * v81;
      v106 = (v140 - v97) * 3.0 + ((a17 - v97 + (v100 + v136) * 3.0) * v81 + v104 * 3.0) * v81;
      v107 = v95 + (v146 - v95) * v81;
      v108 = v96 + (v141 - v96) * v81;
      v109 = v97 + (v140 - v97) * v81;
      v110 = v95 + (v146 - v95 + v146 - v95 + v101 * v81) * v81;
      v111 = v96 + (v141 - v96 + v141 - v96 + v102 * v81) * v81;
      v112 = v97 + v105 * v81;
      v113 = v95 + v103 * v81;
      v114 = v96 + ((v141 - v96) * 3.0 + ((a9 - v96 + (v143 + v138) * 3.0) * v81 + v102 * 3.0) * v81) * v81;
      v137 = v97 + v106 * v81;
      v154 = a8 - (v139 + v139 + (-(a8 + (a8 - v139) * -2.0) - v146) * (1.0 - v81)) * (1.0 - v81);
      v152 = a9 - (v138 + v138 + (-(a9 + (a9 - v138) * -2.0) - v141) * (1.0 - v81)) * (1.0 - v81);
      v150 = a17 - (v136 + v136 + (-(a17 + (a17 - v136) * -2.0) - v140) * (1.0 - v81)) * (1.0 - v81);
      v147 = a8 - (1.0 - v81) * v139;
      v142 = a17 - (1.0 - v81) * v136;
      v144 = a9 - (1.0 - v81) * v138;
      v134.f64[1] = v114;
      v115 = v114;
      v134.f64[0] = v113;
      CA::ScanConverter::Path::add_cube_clip(this, v95, v96, v97, v107, v108, v109, v110, v111, v116, v117, v118, v119, v120, v121, v122, v112, v134, v137);
      v135.f64[1] = a9;
      v135.f64[0] = a8;
      return CA::ScanConverter::Path::add_cube_clip(this, v113, v115, v137, v154, v152, v150, v147, v144, v123, v124, v125, v126, v127, v128, v129, v142, v135, a17);
    }

    else
    {
      v43 = a2 - v25;
      v44 = a3 - v26;
      v45 = a4 - v27;
      v46 = v25 + a2 * -2.0 + a5;
      v47 = v43 + v43 + v37 * v46;
      v48 = (a2 - v25) * 3.0 + (v46 * 3.0 + v37 * (a8 + (a5 - a2) * -3.0 - v25)) * v37;
      v49 = v26 + a3 * -2.0 + a6;
      v50 = v44 + v44 + v37 * v49;
      v51 = (a3 - v26) * 3.0 + (v49 * 3.0 + v37 * (a9 + (a6 - a3) * -3.0 - v26)) * v37;
      v52 = v27 - v34 + a7;
      v53 = v45 + v45 + v37 * v52;
      v54 = (a4 - v27) * 3.0 + (v52 * 3.0 + v37 * (a17 + (a7 - a4) * -3.0 - v27)) * v37;
      v55 = -(a2 + a5 * -2.0);
      v56 = -(a3 + a6 * -2.0);
      v57 = -(a4 + a7 * -2.0);
      v58 = a8 - a5;
      v59 = a9 - a6;
      v60 = a17 - a7;
      v61 = v25 + v37 * v43;
      v62 = v26 + v37 * v44;
      v63 = v27 + v37 * v45;
      v64 = v25 + v47 * v37;
      v65 = v26 + v50 * v37;
      v66 = v27 + v53 * v37;
      v67 = v25 + v48 * v37;
      v68 = v26 + v51 * v37;
      v69 = v27 + v54 * v37;
      v70 = 1.0 - v37;
      v151 = a9 - (v59 + v59 + v70 * (v56 - a9)) * v70;
      v153 = a8 - (v58 + v58 + v70 * (v55 - a8)) * v70;
      v71 = a17 - (v60 + v60 + v70 * (v57 - a17)) * v70;
      v145 = a9 - v70 * v59;
      v148 = a8 - v70 * v58;
      v72 = a17 - v70 * v60;
      v131.f64[1] = v68;
      v131.f64[0] = v67;
      CA::ScanConverter::Path::add_cube_clip(this, v25, v26, v27, v61, v62, v63, v64, v65, a10, a11, a12, a13, a14, a15, a16, v66, v131, v69);
      v132.f64[1] = a9;
      v132.f64[0] = a8;
      return CA::ScanConverter::Path::add_cube_clip(this, v67, v68, v69, v153, v151, v71, v148, v145, v73, v74, v75, v76, v77, v78, v79, v72, v132, a17);
    }
  }
}

void CA::Render::KeyframeAnimation::next_time(uint64_t a1, void *a2, int a3, uint64_t a4, int a5, double *a6, CA::Render::Layer *a7, float64x2_t *a8, int8x16_t a9, double a10, int8x16_t a11, _DWORD *a12)
{
  v16 = *&a10;
  v17 = *a9.i64;
  v68[5] = *MEMORY[0x1E69E9840];
  v19 = *(a1 + 144);
  if ((v19 - 2) < 3)
  {
    v20 = *(a1 + 136);
    if (v20 && *(v20 + 16) && !*(v20 + 112))
    {
      CA::Render::Path::keyframe_lengths(v20);
    }

LABEL_16:
    *a9.i64 = v17;
    *&a10 = v16;

    CA::Render::Animation::next_time(a1, a2, a3, a9, a10, a11, a4, a5, a6);
    return;
  }

  v23 = a4;
  if (*(a1 + 144))
  {
    if (v19 != 1)
    {
      goto LABEL_16;
    }

    v24 = *(a1 + 136);
    if (v24 && *(v24 + 16))
    {
      if (!*(v24 + 112))
      {
        CA::Render::Path::keyframe_lengths(*(a1 + 136));
      }

      if (*(v24 + 120) != 0.0)
      {
        goto LABEL_16;
      }
    }
  }

  v25 = *(a1 + 40);
  if (v25)
  {
    if (*(v25 + 16) == 0.0)
    {
      return;
    }

    v26 = *(v25 + 40);
    v27 = CA::Render::Timing::end_time(v25);
  }

  else
  {
    v26 = 0.0;
    v27 = INFINITY;
  }

  if (v16 >= 0.0)
  {
    v28 = v26;
  }

  else
  {
    v28 = v27;
  }

  v29 = v28 > v17;
  if (v16 <= 0.0)
  {
    v29 = v28 < v17;
  }

  if (v29)
  {
    v30 = v28 < *a6;
    if (v16 <= 0.0)
    {
      v30 = v28 > *a6;
    }

    if (v30)
    {
      *a6 = v28;
    }
  }

  else
  {
    if (v16 < 0.0)
    {
      v27 = v26;
    }

    v31 = v27 > v17;
    if (v16 <= 0.0)
    {
      v31 = v27 < v17;
    }

    if (v31)
    {
      v67 = v17;
      v66 = 0;
      if (CA::Render::Animation::map_time(a1, &v67, 0, &v66, 0))
      {
        memset(v68, 0, 32);
        v32 = CA::Render::KeyframeAnimation::keyframe_for_time(a1, v67, v68);
        if (*(a1 + 144) != 1)
        {
          goto LABEL_38;
        }

        if (*(a1 + 136))
        {
          goto LABEL_38;
        }

        v39 = *(a1 + 112);
        if (!v39)
        {
          goto LABEL_38;
        }

        v40 = *(v39 + 16);
        if (v40 < 2)
        {
          goto LABEL_38;
        }

        v41 = v32;
        v42 = v40 - 1;
        if (v32 >= v42)
        {
          v43 = v42;
        }

        else
        {
          v43 = v32;
        }

        v44 = v39 + 24;
        v45 = *(v44 + 8 * v43);
        if (v32 + 1 < v42)
        {
          v42 = v32 + 1;
        }

        v46 = *(v44 + 8 * v42);
        v47 = !v45 || v46 == 0;
        if (v47 || (v60 = *(v44 + 8 * v42), v61 = v45, *(v45 + 12) == 62) && *(v46 + 12) == 62 && (v48 = *(v46 + 16), v48 == *(v45 + 16)) && (v59 = v32, v49 = memcmp((v45 + 24), (v46 + 24), 8 * v48), v41 = v59, !v49))
        {
LABEL_38:
          if (v66)
          {
            *&v68[1] = vextq_s8(*&v68[1], *&v68[1], 8uLL);
          }

          v37 = *(a1 + 40);
          if (v37 && *(v37 + 16) < 0.0)
          {
            v68[2] = v68[1];
          }

          v67 = v68[2];
          CA::Render::Animation::inverse_map_time(a1, &v67, v17);
          v38 = v67 < *a6;
          if (v16 <= 0.0)
          {
            v38 = v67 > *a6;
          }

          if (v38)
          {
            *a6 = v67;
          }
        }

        else
        {
          v50 = v41;
          v51 = *a6;
          *v34.i64 = v17;
          *&v35 = v16;
          CA::Render::Animation::next_time(a1, a2, a3, v34, v35, v36, v33, a5, a6);
          v52 = 0;
          v53 = 0;
          v54 = *(a1 + 128);
          if (v54 && (v50 & 0x80000000) == 0)
          {
            if (v50 >= *(v54 + 16) >> 2)
            {
              v53 = 0;
              v52 = 0;
            }

            else
            {
              v52 = v54 + 8 * (4 * v50) + 24;
              v53 = 1;
            }
          }

          v55 = *(a1 + 40);
          if (v55)
          {
            v56 = *(v55 + 32);
          }

          else
          {
            v56 = 0x7FF0000000000000;
          }

          if (!v52 || (v57 = *(v52 + 8), v57 >= 0.0) && v57 <= 1.0 && (v58 = *(v52 + 24), v58 >= 0.0) && v58 <= 1.0)
          {
            v64[0] = MEMORY[0x1E69E9820];
            v64[1] = 0x40000000;
            v64[2] = ___ZNK2CA6Render17KeyframeAnimation9next_timeEdfPKvNS0_26AnimationFrameRateOverrideEjbRdPKNS0_5LayerEPKNS_4Vec2IdEERj_block_invoke;
            v64[3] = &__block_descriptor_tmp_21026;
            *&v64[4] = v68[1];
            *&v64[5] = v68[2];
            v65 = v53;
            v64[6] = v52;
            v64[7] = v56;
            v62[0] = MEMORY[0x1E69E9820];
            v62[1] = 0x40000000;
            v62[2] = ___ZNK2CA6Render17KeyframeAnimation9next_timeEdfPKvNS0_26AnimationFrameRateOverrideEjbRdPKNS0_5LayerEPKNS_4Vec2IdEERj_block_invoke_2;
            v62[3] = &__block_descriptor_tmp_1_21027;
            v63 = v53;
            v62[4] = v52;
            v62[5] = v56;
            *&v62[6] = v68[2];
            *&v62[7] = v68[1];
            CA::Render::PropertyAnimation::significant_change_next_time(a1, v64, v62, v23, a6, a7, a8, a12, v17, v16, v51, v61, v60, 0);
          }
        }
      }
    }
  }
}

uint64_t CA::ScanConverter::Path::add_cube(uint64_t this, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v11 = this;
  if (vabdd_f64(a5, a7) + vabdd_f64(a4, a6) >= 0.0001)
  {
    goto LABEL_5;
  }

  v12 = vabdd_f64(a3, a5) + vabdd_f64(a2, a4);
  v13 = vabdd_f64(a7, a9) + vabdd_f64(a6, a8);
  if (v13 + v12 < 0.0002)
  {
    return this;
  }

  if (v12 < 0.0001 || v13 < 0.0001)
  {

    return CA::ScanConverter::Path::add_line(this, a2, a3, a8, a9);
  }

  else
  {
LABEL_5:
    v14 = a5 - a7;
    v15 = (a5 - a7) * a5 + (a7 - a3) * a7 + (a3 - a5) * a9;
    if (v15 >= 0.0)
    {
      v16 = a9 - a3 + v14 * 3.0;
      v17 = a3 + a5 * -2.0 + a7;
      if (v16 == 0.0)
      {
        if (v17 == 0.0)
        {
          v18 = 0.0;
          v19 = 0.0;
        }

        else
        {
          v18 = 2.0;
          v19 = (a3 - a5) * 0.5 / v17;
        }
      }

      else if (v17 != 0.0 || (v18 = 0.0, v19 = 0.0, v15 != 0.0))
      {
        v20 = sqrt(v15);
        if (v17 < 0.0)
        {
          v20 = -v20;
        }

        v21 = v20 + v17;
        v22 = -v21 / v16;
        v18 = (a3 - a5) / v21;
        if (v22 >= v18)
        {
          v19 = (a3 - a5) / v21;
        }

        else
        {
          v19 = v22;
        }

        if (v22 > v18)
        {
          v18 = v22;
        }
      }

      v23 = 2.0;
      if (v19 < 1.0e-10)
      {
        v24 = v18;
      }

      else
      {
        v23 = v18;
        v24 = v19;
      }

      if (v24 >= 1.0e-10 && v24 <= 1.0)
      {
        if (1.0 - v23 >= 1.0e-10)
        {
          v32 = 1.0 - v24;
          v33 = (v23 - v24) / (1.0 - v24);
          v34 = a9 - a7;
          v35 = a2 + a4 * -2.0 + a6;
          v36 = a2 + ((a4 - a2) * 3.0 + (v35 * 3.0 + v24 * (a8 - (a2 + (a4 - a6) * -3.0))) * v24) * v24;
          v37 = a3 + ((a5 - a3) * 3.0 + (v17 * 3.0 + v24 * (a9 - (a3 + v14 * -3.0))) * v24) * v24;
          v38 = a8 - a6 + a8 - a6;
          v58 = -((v38 + v32 * (-(a4 + a6 * -2.0) - a8)) * v32);
          v39 = -((v34 + v34 + v32 * (-(a5 + a7 * -2.0) - a9)) * v32);
          v56 = a9 - (v34 + v34 + v32 * (-(a5 + a7 * -2.0) - a9)) * v32;
          v57 = a8 - (v38 + v32 * (-(a4 + a6 * -2.0) - a8)) * v32;
          v40 = (1.0 - v24) * (a8 - a6);
          v41 = (1.0 - v24) * (a9 - a7);
          CA::ScanConverter::Path::add_monotonic_cube(this, a2, a3, a2 + v24 * (a4 - a2), a3 + v24 * (a5 - a3), a2 + (a4 - a2 + a4 - a2 + v24 * v35) * v24, a3 + (a5 - a3 + a5 - a3 + v24 * v17) * v24, v36, v37, 128);
          v42 = v36 + (v57 - v36) * v33;
          v43 = v37 + (v56 - v37) * v33;
          v44 = v36 + v57 * -2.0 + a8 - v40;
          v45 = v36 + (v57 - v36 + v57 - v36 + v44 * v33) * v33;
          v46 = v37 + v56 * -2.0 + a9 - v41;
          v47 = v37 + (v56 - v37 + v56 - v37 + v46 * v33) * v33;
          v48 = v36 + ((v57 - v36) * 3.0 + ((a8 - v36 + (v58 + v40) * 3.0) * v33 + v44 * 3.0) * v33) * v33;
          v49 = v37 + ((v56 - v37) * 3.0 + ((a9 - v37 + (v39 + v41) * 3.0) * v33 + v46 * 3.0) * v33) * v33;
          v50 = 1.0 - v33;
          v59 = a8 - (v40 + v40 + (-(a8 + (a8 - v40) * -2.0) - v57) * (1.0 - v33)) * (1.0 - v33);
          v51 = a9 - (v41 + v41 + (-(a9 + (a9 - v41) * -2.0) - v56) * (1.0 - v33)) * (1.0 - v33);
          v52 = a8 - v50 * v40;
          v53 = a9 - v50 * v41;
          v54 = v36;
          v55 = v48;
          CA::ScanConverter::Path::add_monotonic_cube(v11, v54, v37, v42, v43, v45, v47, v48, v49, 128);
          a2 = v55;
          this = v11;
          a3 = v49;
          a4 = v59;
          a5 = v51;
          a6 = v52;
          a7 = v53;
        }

        else
        {
          v25 = a2 + a4 * -2.0 + a6;
          v26 = a2 + ((a4 - a2) * 3.0 + (v25 * 3.0 + v24 * (a8 - (a2 + (a4 - a6) * -3.0))) * v24) * v24;
          v27 = a3 + ((a5 - a3) * 3.0 + (v17 * 3.0 + v24 * (a9 - (a3 + v14 * -3.0))) * v24) * v24;
          v28 = a8 - (a8 - a6 + a8 - a6 + (1.0 - v24) * (-(a4 + a6 * -2.0) - a8)) * (1.0 - v24);
          v29 = a9 - (a9 - a7 + a9 - a7 + (1.0 - v24) * (-(a5 + a7 * -2.0) - a9)) * (1.0 - v24);
          v30 = a8 - (1.0 - v24) * (a8 - a6);
          v31 = a9 - (1.0 - v24) * (a9 - a7);
          CA::ScanConverter::Path::add_monotonic_cube(this, a2, a3, a2 + v24 * (a4 - a2), a3 + v24 * (a5 - a3), a2 + (a4 - a2 + a4 - a2 + v24 * v25) * v24, a3 + (a5 - a3 + a5 - a3 + v24 * v17) * v24, v26, v27, 128);
          a2 = v26;
          this = v11;
          a3 = v27;
          a4 = v28;
          a5 = v29;
          a6 = v30;
          a7 = v31;
        }
      }
    }

    return CA::ScanConverter::Path::add_monotonic_cube(this, a2, a3, a4, a5, a6, a7, a8, a9, 128);
  }
}

uint64_t CA::ScanConverter::Path::add_monotonic_cube(uint64_t this, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, int a10)
{
  v16 = this;
  v107 = *MEMORY[0x1E69E9840];
  if (a10 >= 2)
  {
    v20 = a8 + a8;
    v21 = a9 * a9;
    v22 = 4.0;
    v83 = a8 * 3.0;
    v84 = a8 * 4.0;
    v78 = a8 * 8.0;
    v79 = a8 * 10.0;
    v76 = a9 * 8.0;
    v77 = a9 * 4.0;
    v74 = a9 * a9 * a9;
    v75 = a9 + a9;
    v23 = a10 + 1;
    v24 = 12.0;
    v25 = 6.0;
    v26 = 2.0;
    v89 = a8 + a8;
    while (1)
    {
      if (vabdd_f64(a9, a3) < 0.0001)
      {
        v17 = a2;
        v18 = a3;
        return CA::ScanConverter::Path::add_line(v16, v17, v18, a8, a9);
      }

      if (a3 >= a9)
      {
        v27 = a9;
      }

      else
      {
        v27 = a3;
      }

      if (a3 <= a9)
      {
        v28 = a9;
      }

      else
      {
        v28 = a3;
      }

      if (v27 > *(v16 + 184) || v28 < *(v16 + 168))
      {
        return this;
      }

      v29 = *(v16 + 32);
      v30 = a4 + a4;
      v31 = a6 + a6;
      if ((a2 - (a4 + a4) + a6) * (a2 - (a4 + a4) + a6) + (a3 - (a5 + a5) + a7) * (a3 - (a5 + a5) + a7) <= v29 * v29 && (a4 - (a6 + a6) + a8) * (a4 - (a6 + a6) + a8) + (a5 - (a7 + a7) + a9) * (a5 - (a7 + a7) + a9) <= v29 * v29)
      {

        return CA::ScanConverter::Path::add_line(v16, a2, a3, a8, a9);
      }

      v82 = v27;
      v33 = 1.0 / (a3 - a9);
      v90 = a4 + a2;
      v34 = v33 * v33 * (0.9 * v33) * (a7 * (a4 + a2 - v20) + (v31 + a4 + a2 * -3.0) * a9 + (v83 - v30 - a6) * a3 + (a2 + a2 - (a6 + a8)) * a5);
      v35 = (a2 - a8 + v34 * (v21 - a3 * a3)) * v33;
      v36 = a2 - (v35 + v34 * a3) * a3;
      v37 = a4 + a2 + a2;
      v87 = a2 * v22;
      v38 = a2 * v22 + a4 * v22 + a6;
      v39 = a8 + a2 * 8.0 + a4 * v24 + a6 * v25;
      v40 = v39 * 0.037037037;
      v85 = a3 * v22;
      v41 = a3 * v22 + a5 * v22 + a7;
      v42 = (a9 + a3 * 8.0 + a5 * v24 + a7 * v25) * 0.037037037;
      v88 = v39 * 0.37037037;
      v43 = -(v37 + a2 + v38 * 0.666666667) - v39 * 0.37037037;
      v44 = v39 * 0.037037037 + a2 * 10.0 + v37 * v26 + v38 * 0.333333333;
      v45 = (v39 * 0.037037037 - (a2 + a2 + v38 * -0.111111111)) * (a5 + a3 + a3);
      v46 = v39 * 0.0740740741;
      v47 = v45 + v41 * 0.333333333 * (v46 - (a2 + v37 * 0.333333333)) + v44 * a3 + v43 * v42;
      v81 = v34;
      v48 = v34 * 0.333333333;
      v86 = v42 * v42 * v42;
      if (fabs(-(v35 * 0.5 * (v42 * v42 - a3 * a3) + v34 * 0.333333333 * (v86 - a3 * a3 * a3) + v36 * (v42 - a3) + v47 * 0.05) / sqrt((v40 - a2) * (v40 - a2) + (v42 - a3) * (v42 - a3))) <= v29)
      {
        v80 = v28;
        v49 = a4 + v84 + a6 * 4.0;
        v50 = a2 + v78 + a4 * 6.0 + a6 * 12.0;
        v51 = v50 * 0.037037037;
        v52 = (a3 + v76 + a5 * 6.0 + a7 * 12.0) * 0.037037037;
        v53 = a2 + a2 + v84 + a4 * 9.0 + a6 * 12.0;
        v54 = a2 - (v35 + v34 * a3) * a3;
        v55 = v87 + v89 + a4 * v24 + a6 * 9.0;
        v56 = (v50 * 0.037037037 + v53 * 0.037037037 - v46) * (v85 + v75 + a5 * v24 + a7 * 9.0) + (v50 * 0.0740740741 - (v40 + v55 * 0.037037037)) * (a3 + a3 + v77 + a5 * 9.0 + a7 * 12.0);
        v57 = (-(v50 * 0.37037037 + v53 * 0.222222222 + v55 * 0.111111111) - v40) * v52 + (v88 + v55 * 0.222222222 + v53 * 0.111111111 + v50 * 0.037037037) * v42;
        v58 = v52 * v52 * v52;
        v59 = -(v35 * 0.5 * (v52 * v52 - v42 * v42) + v48 * (v58 - v86) + v36 * (v52 - v42) + (v57 + v56 * 0.111111111) * 0.05);
        v60 = fabs(-(v35 * 0.5 * (a9 * a9 - v52 * v52) + v48 * (v74 - v58) + v36 * (a9 - v52) + ((v89 - v50 * 0.037037037 + v49 * -0.111111111) * (a7 + v75) + (a6 + v89 + a8 + v49 * 0.666666667 + v50 * 0.37037037) * v52 + (a5 + v77 + a7 * 4.0) * -0.333333333 * (v50 * 0.0740740741 - (a8 - (a6 + v89) * -0.333333333)) + (-(v79 + (a6 + v89) * 2.0 - v49 * -0.333333333) - v51) * a9) * 0.05) / sqrt((a8 - v51) * (a8 - v51) + (a9 - v52) * (a9 - v52)));
        if (fabs(v59 / sqrt((v51 - v40) * (v51 - v40) + (v52 - v42) * (v52 - v42))) <= v29 && v60 <= v29)
        {
          break;
        }
      }

      v62 = (v30 + a2 + a6) * 0.25;
      v17 = (a2 + a8 + (a6 + a4) * 3.0) * 0.125;
      a4 = (v31 + a4 + a8) * 0.25;
      a6 = (a6 + a8) * 0.5;
      v63 = (a5 + a3) * 0.5;
      v64 = (a5 + a5 + a3 + a7) * 0.25;
      v18 = (a3 + a9 + (a7 + a5) * 3.0) * 0.125;
      a5 = (a5 + a9 + a7 + a7) * 0.25;
      a7 = (a7 + a9) * 0.5;
      this = CA::ScanConverter::Path::add_monotonic_cube(v16, a2, a3, v90 * 0.5, v63, v62, v64, v17, v18, v23 - 2);
      --v23;
      a3 = v18;
      a2 = v17;
      v21 = a9 * a9;
      v20 = v89;
      v22 = 4.0;
      v24 = 12.0;
      v25 = 6.0;
      v26 = 2.0;
      if (v23 < 3)
      {
        goto LABEL_3;
      }
    }

    if (a2 >= a8)
    {
      v65 = a8;
    }

    else
    {
      v65 = a2;
    }

    if (a2 <= a8)
    {
      v66 = a8;
    }

    else
    {
      v66 = a2;
    }

    if (v34 == 0.0)
    {
      v70 = v82;
      v67 = v35;
    }

    else
    {
      v67 = v35;
      v68 = v35 * -0.5 / v34;
      v69 = v68 > a3 && v68 < a9;
      v70 = v82;
      if (v69 || (v68 > a9 ? (v71 = v68 < a3) : (v71 = 0), v71))
      {
        v72 = v54 + v35 * 0.5 * v68;
        if (v65 >= v72)
        {
          v65 = v72;
        }

        if (v66 <= v72)
        {
          v66 = v72;
        }
      }
    }

    if (a3 <= a9)
    {
      v73 = 1.0;
    }

    else
    {
      v73 = -1.0;
    }

    return CA::ScanConverter::Path::add_curve(v16, v65, v70, v66, v80, v81, v67, v54, v73);
  }

  else
  {
    v17 = a2;
    v18 = a3;
LABEL_3:
    if ((*(v16 + 90) & 1) == 0)
    {
      if (x_log_get_utilities::once != -1)
      {
        dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
      }

      v19 = x_log_get_utilities::log;
      if (os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_ERROR))
      {
        *buf = 134219776;
        v92 = v17;
        v93 = 2048;
        v94 = v18;
        v95 = 2048;
        v96 = a4;
        v97 = 2048;
        v98 = a5;
        v99 = 2048;
        v100 = a6;
        v101 = 2048;
        v102 = a7;
        v103 = 2048;
        v104 = a8;
        v105 = 2048;
        v106 = a9;
        _os_log_error_impl(&dword_183AA6000, v19, OS_LOG_TYPE_ERROR, "failed to add monotonic cube ((%g, %g) (%g, %g) (%g, %g) (%g, %g))\n", buf, 0x52u);
      }

      *(v16 + 90) = 1;
    }

    return CA::ScanConverter::Path::add_line(v16, v17, v18, a8, a9);
  }
}

uint64_t CA::ScanConverter::Path::add_curve(uint64_t this, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v9 = a3;
  v10 = a5;
  if (v10 <= v9)
  {
    return this;
  }

  v13 = this;
  if (*(this + 184) < a3 || *(this + 168) > a5)
  {
    return this;
  }

  this = *(this + 16);
  if (this)
  {
    v18 = *(this + 16);
    if (v18)
    {
      v19 = *(this + 8);
      v20 = v18 - 1;
LABEL_15:
      v22 = (this + 24 * v19 + 24);
      *(this + 8) = v19 + 1;
      *(this + 16) = v20;
      ++*(v13 + 24);
      goto LABEL_16;
    }
  }

  this = *v13;
  if (*v13)
  {
    v29 = a8;
    v30 = a9;
    this = x_heap_malloc_small_(this, 0x400uLL);
    if (this)
    {
      *this = 0;
      *(this + 8) = 0;
      *(this + 16) = 41;
      v21 = *(v13 + 16);
      a8 = v29;
      a9 = v30;
      v19 = 0;
      if (v21)
      {
        *v21 = this;
      }

      else
      {
        *(v13 + 8) = this;
      }

      *(v13 + 16) = this;
      v20 = 40;
      goto LABEL_15;
    }

    *v13 = 0;
    v22 = &CA::ScanConverter::CurveAccumulator::append(void)::fail;
    a8 = v29;
    a9 = v30;
  }

  else
  {
    v22 = &CA::ScanConverter::CurveAccumulator::append(void)::fail;
  }

LABEL_16:
  v23 = a2;
  v24 = a4;
  *v22 = v9;
  v22[1] = v10;
  v25 = 0.0;
  v26 = v23 == v24;
  v27 = 0.0;
  if (!v26)
  {
    v25 = a6;
    v27 = a7 + a6 * a3 * 2.0;
    v23 = a8 + (a6 * a3 + a7) * a3;
  }

  v22[2] = v25;
  v22[3] = v27;
  v28 = a9;
  v22[4] = v23;
  v22[5] = v28;
  if (*(v13 + 128) > a2)
  {
    *(v13 + 128) = a2;
  }

  if (*(v13 + 136) > a3)
  {
    *(v13 + 136) = a3;
  }

  if (*(v13 + 144) < a4)
  {
    *(v13 + 144) = a4;
  }

  if (*(v13 + 152) < a5)
  {
    *(v13 + 152) = a5;
  }

  return this;
}

void CA::OGL::Shape::fill_sc_path(uint64_t a1, float64x2_t *a2, int a3, char a4, unsigned __int8 a5, int32x2_t a6, int32x2_t a7)
{
  v32 = *MEMORY[0x1E69E9840];
  v9 = a2[8];
  v8 = a2[9];
  v10 = vsubq_f64(v8, v9);
  v11 = vceqzq_f64(v10);
  if ((vorrq_s8(vdupq_laneq_s64(v11, 1), v11).u64[0] & 0x8000000000000000) != 0 || (v12 = vceqq_f64(v10, v10), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v12), 1), v12).u64[0] & 0x8000000000000000) != 0))
  {
    v27 = 0uLL;
    v14.i64[0] = 0;
    v15 = 0;
  }

  else
  {
    v13 = vcvtmq_s64_f64(vmaxnmq_f64(v9, vdupq_n_s64(0xC1BFFFFFFF000000)));
    v14 = vuzp1q_s32(v13, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(v8, vdupq_n_s64(0x41C0000000000000uLL))), v13));
    v27 = v14;
    v15 = v14.u64[1];
  }

  v29 = a2;
  v28 = &unk_1EF204C78;
  v30 = a3;
  v31 = a5;
  v16 = vclez_s32(v15);
  v17 = vpmax_u32(v16, v16).u32[0];
  if (a4)
  {
    if ((v17 & 0x80000000) != 0 || (v18 = vclez_s32(a7), (vpmax_u32(v18, v18).u32[0] & 0x80000000) != 0) || (v19 = vclez_s32(vsub_s32(vmin_s32(vadd_s32(*v14.i8, v15), vadd_s32(a6, a7)), vmax_s32(*v14.i8, a6))), (vpmax_u32(v19, v19).u32[0] & 0x80000000) != 0))
    {
      v26[0] = 0;
      v26[1] = 0;
      v20 = v26;
    }

    else
    {
      CA::OGL::Shape::render_path(a1);
      v20 = &v27;
    }

    CA::OGL::emit_bounds_surround(a1, v20);
  }

  else if ((v17 & 0x80000000) == 0)
  {
    v21 = vclez_s32(a7);
    if ((vpmax_u32(v21, v21).u32[0] & 0x80000000) == 0)
    {
      v22 = vadd_s32(a6, a7);
      *v23.i8 = vmax_s32(*v14.i8, a6);
      v24 = vsub_s32(vmin_s32(vadd_s32(*v14.i8, v15), v22), *v23.i8);
      v25 = vclez_s32(v24);
      if ((vpmax_u32(v25, v25).u32[0] & 0x80000000) == 0)
      {
        v23.u64[1] = v24;
        v27 = v23;
        CA::OGL::Shape::render_path(a1);
      }
    }
  }
}