uint64_t ERSpatializer::setAttenuationDistanceFactor(uint64_t this, float a2)
{
  *(this + 2472) = a2;
  *(this + 2476) = 1;
  return this;
}

uint64_t ERSpatializer::setAttenuationCurve(uint64_t this, int a2)
{
  v2 = *(this + 2424);
  v3 = *(this + 2432);
  if (v2 != v3)
  {
    v4 = 0;
    v5 = v3 - v2 - 28;
    v6 = vdupq_n_s64(v5 / 0x1C);
    v7 = (v2 + 64);
    do
    {
      v8 = vdupq_n_s64(v4);
      v9 = vmovn_s64(vcgeq_u64(v6, vorrq_s8(v8, xmmword_1DE095160)));
      if (vuzp1_s16(v9, 2).u8[0])
      {
        *(v7 - 14) = a2;
      }

      if (vuzp1_s16(v9, 2).i8[2])
      {
        *(v7 - 7) = a2;
      }

      if (vuzp1_s16(2, vmovn_s64(vcgeq_u64(v6, vorrq_s8(v8, xmmword_1DE095150)))).i32[1])
      {
        *v7 = a2;
        v7[7] = a2;
      }

      v4 += 4;
      v7 += 28;
    }

    while (((v5 / 0x1C + 4) & 0x1FFFFFFFFFFFFFFCLL) != v4);
  }

  *(this + 2476) = 1;
  return this;
}

uint64_t ERSpatializer::setMaxReflections(uint64_t this, int a2)
{
  if (*(this + 1888) != a2)
  {
    *(this + 1888) = a2;
    *(this + 288) = 1;
  }

  return this;
}

uint64_t ERSpatializer::setWallsSpecularAttenuation(uint64_t this, int32x2_t a2)
{
  if (*(this + 1880) == 1)
  {
    *(this + 1416) = vdupq_lane_s32(a2, 0);
    *(this + 1432) = a2.i32[0];
    *(this + 1436) = a2.i32[0];
    *(this + 288) = 1;
  }

  return this;
}

int32x4_t *ERSpatializer::setWallsScatterCutoff(int32x4_t *this, int32x2_t a2)
{
  if (this[117].i8[8] == 1)
  {
    this[87] = vdupq_lane_s32(a2, 0);
    this[88].i32[0] = a2.i32[0];
    this[88].i32[1] = a2.i32[0];
    this[18].i8[0] = 1;
  }

  return this;
}

uint64_t ERSpatializer::setWallsScatter(uint64_t this, int32x2_t a2)
{
  if (*(this + 1880) == 1)
  {
    *(this + 1368) = vdupq_lane_s32(a2, 0);
    *(this + 1384) = a2.i32[0];
    *(this + 1388) = a2.i32[0];
    *(this + 288) = 1;
  }

  return this;
}

uint64_t ERSpatializer::setWallSpecularAttenuation(uint64_t this, unsigned int a2, float a3)
{
  if (*(this + 1880) == 1)
  {
    if (a2 <= 5)
    {
      *(this + 4 * a2 + 1416) = a3;
    }

    *(this + 288) = 1;
  }

  return this;
}

uint64_t ERSpatializer::setWallScatterCutoff(uint64_t this, unsigned int a2, float a3)
{
  if (*(this + 1880) == 1)
  {
    if (a2 <= 5)
    {
      *(this + 4 * a2 + 1392) = a3;
    }

    *(this + 288) = 1;
  }

  return this;
}

uint64_t ERSpatializer::setWallScatter(uint64_t this, unsigned int a2, float a3)
{
  if (*(this + 1880) == 1)
  {
    if (a2 <= 5)
    {
      *(this + 4 * a2 + 1368) = a3;
    }

    *(this + 288) = 1;
  }

  return this;
}

float ERSpatializer::getSpeedOfSound(ERSpatializer *this)
{
  result = 0.0;
  if (*(this + 1880) == 1)
  {
    return *(this + 192);
  }

  return result;
}

double ERSpatializer::getWallSubbandGains(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (*(a1 + 1880) == 1)
  {
    if (a2 <= 5)
    {
      v3 = a1 + 40 * a2;
      v4 = *(v3 + 1104);
      v5 = *(v3 + 1120);
      *(a3 + 32) = *(v3 + 1136);
      *a3 = v4;
      *(a3 + 16) = v5;
    }
  }

  else
  {
    *(a3 + 32) = 0;
    *&v4 = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return *&v4;
}

float ERSpatializer::setWallsSubbandGains(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 1880) == 1)
  {
    v15 = v2;
    v16 = v3;
    v6 = 0;
    v7 = a1 + 1104;
    v8 = a1 + 1344;
    do
    {
      v10 = *(a2 + 16);
      v12[0] = *a2;
      v9 = v12[0];
      v12[1] = v10;
      v13 = *(a2 + 32);
      *(v7 + 32) = v13;
      *v7 = v9;
      *(v7 + 16) = v10;
      __C = 0.0;
      vDSP_meanv(v12, 1, &__C, 0xAuLL);
      result = __C;
      *(v8 + v6) = __C;
      *(a1 + 288) = 1;
      v7 += 40;
      v6 += 4;
    }

    while (v6 != 24);
  }

  return result;
}

uint64_t ERSpatializer::getModelOrder(ERSpatializer *this)
{
  if (*(this + 1880) == 1)
  {
    return *(this + 193);
  }

  else
  {
    return 0;
  }
}

void ERSpatializer::setRoomDimensions(float32x4_t *a1, float32x4_t a2, double a3, double a4, __n128 a5)
{
  if (a1[117].i8[8] == 1)
  {
    v6 = vceqq_f32(a1[24], a2);
    v6.i32[3] = v6.i32[2];
    v6.i32[0] = vminvq_u32(v6);
    if ((v6.i32[0] & 0x80000000) == 0)
    {
      if (a2.f32[0] > 0.0)
      {
        v7 = COERCE_DOUBLE(vcgtz_f32(*&vextq_s8(a2, a2, 4uLL)));
        if ((LOBYTE(v7) & 1) != 0 && (BYTE4(v7) & 1) != 0 && (v6.i32[0] & 0x80000000) == 0)
        {
          a1[24] = a2;
          Shoebox::ShoeboxRoom::refreshRoom(a1 + 20, *a2.i64, *v6.i64, v7, a5);
        }
      }

      a1[18].i8[0] = 1;
    }
  }
}

void ERSpatializer::setRoomPosition(float32x4_t *a1, float32x4_t a2, double a3, double a4, __n128 a5)
{
  if (a1[117].i8[8] == 1)
  {
    v6 = vceqq_f32(a1[22], a2);
    v6.i32[3] = v6.i32[2];
    v6.i32[0] = vminvq_u32(v6);
    if ((v6.i32[0] & 0x80000000) == 0)
    {
      a1[22] = a2;
      Shoebox::ShoeboxRoom::refreshRoom(a1 + 20, *a2.i64, *v6.i64, a4, a5);
      a1[18].i8[0] = 1;
    }
  }
}

uint64_t ERSpatializer::processAccumulating(ERSpatializer *this, const float *a2, const float **a3, int a4, float *const *a5, int a6, int a7, float a8, IR::ComplexDataCircBuffer *a9)
{
  __N[0] = a7;
  v291 = *MEMORY[0x1E69E9840];
  if (a4 != 2 || a6 != 2)
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v69 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
    {
      std::string::basic_string[abi:ne200100]<0>(&__N[1], "ERSpatializer");
      v72 = std::string::append(&__N[1], "::", 2uLL);
      v73 = *&v72->__r_.__value_.__l.__data_;
      *&v266[16] = *(&v72->__r_.__value_.__l + 2);
      *v266 = v73;
      v72->__r_.__value_.__l.__size_ = 0;
      v72->__r_.__value_.__r.__words[2] = 0;
      v72->__r_.__value_.__r.__words[0] = 0;
      v74 = std::string::append(v266, "processAccumulating", 0x13uLL);
      v75 = *&v74->__r_.__value_.__l.__data_;
      *&v281 = *(&v74->__r_.__value_.__l + 2);
      v280 = v75;
      v74->__r_.__value_.__l.__size_ = 0;
      v74->__r_.__value_.__r.__words[2] = 0;
      v74->__r_.__value_.__r.__words[0] = 0;
      v76 = &v280;
      if (SBYTE7(v281) < 0)
      {
        v76 = v280.i64[0];
      }

      *buf = 136315394;
      v277 = v76;
      v278 = 1024;
      v279 = a4;
      _os_log_debug_impl(&dword_1DDB85000, v69, OS_LOG_TYPE_DEBUG, "%s: ERROR: cannot process with %d output channels", buf, 0x12u);
      if (SBYTE7(v281) < 0)
      {
        operator delete(v280.i64[0]);
      }

      if ((v266[23] & 0x80000000) != 0)
      {
        operator delete(*v266);
      }

      if (SHIBYTE(__N[6]) < 0)
      {
        operator delete(*&__N[1]);
      }
    }

    return 4294956445;
  }

  if ((*(this + 16) & 1) == 0)
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v71 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
    {
      std::string::basic_string[abi:ne200100]<0>(&__N[1], "ERSpatializer");
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v266, &__N[1], "::");
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v280, v266, "processAccumulating");
      if ((SBYTE7(v281) & 0x80u) == 0)
      {
        v124 = &v280;
      }

      else
      {
        v124 = v280.i64[0];
      }

      *buf = 136315138;
      v277 = v124;
      _os_log_debug_impl(&dword_1DDB85000, v71, OS_LOG_TYPE_DEBUG, "%s: ERROR: not initialized", buf, 0xCu);
      if (SBYTE7(v281) < 0)
      {
        operator delete(v280.i64[0]);
      }

      if ((v266[23] & 0x80000000) != 0)
      {
        operator delete(*v266);
      }

      if (SHIBYTE(__N[6]) < 0)
      {
        operator delete(*&__N[1]);
      }
    }

    return 4294956429;
  }

  v13 = caulk::pooled_semaphore_mutex::try_lock((this + 2488));
  if ((*(this + 288) & 1) == 0 && *(this + 17) != 1)
  {
    goto LABEL_159;
  }

  if (v13)
  {
    v253 = v13;
    *(this + 288) = 0;
    *(this + 17) = 0;
    *(this + 2476) = 1;
    if (*(this + 1880) == 1)
    {
      v14 = *(this + 6);
      *(this + 37) = *(v14 + 96);
      *(this + 40) = *(v14 + 112);
      v259 = *(v14 + 8);
      v15 = *(v14 + 4) * 0.017453;
      v16 = __sincosf_stret(*v14 * 0.017453);
      v17 = __sincosf_stret(v15);
      *&v18 = vmul_n_f32(vmul_n_f32(__PAIR64__(LODWORD(v16.__sinval), LODWORD(v16.__cosval)), v259), v17.__cosval);
      *(&v18 + 2) = -(v259 * v17.__sinval);
      *(this + 26) = v18;
      *(this + 29) = *(v14 + 32);
      v19 = *(this + 27);
      v280 = *(this + 26);
      v281 = v19;
      v20 = *(this + 29);
      v282 = *(this + 28);
      v283 = v20;
      v21 = *(this + 32);
      v22 = *(this + 33);
      v23 = *(this + 30);
      v285 = *(this + 31);
      v286 = v21;
      v287[0] = v22;
      *(v287 + 14) = *(this + 542);
      v284 = v23;
      v289 = 0;
      v288 = 0;
      v290 = 0;
      std::vector<Shoebox::Walls>::__init_with_size[abi:ne200100]<Shoebox::Walls*,Shoebox::Walls*>(&v288, *(this + 70), *(this + 71), (*(this + 71) - *(this + 70)) >> 2);
      v260 = *(this + 37);
      if (Shoebox::ShoeboxRoom::isObjectInsideRoom(this + 20, v260))
      {
        v256 = *(this + 26);
        if (!Shoebox::ShoeboxRoom::isObjectInsideRoom(this + 20, v256))
        {
          v25 = v256;
          v26 = vsubq_f32(v256, v260);
          v27 = vmulq_f32(v26, v26);
          *&v28 = v27.f32[2] + vaddv_f32(*v27.f32);
          *v27.f32 = vrsqrte_f32(v28);
          *v27.f32 = vmul_f32(*v27.f32, vrsqrts_f32(v28, vmul_f32(*v27.f32, *v27.f32)));
          v29 = vmulq_n_f32(v26, vmul_f32(*v27.f32, vrsqrts_f32(v28, vmul_f32(*v27.f32, *v27.f32))).f32[0]);
          v30 = (this + 912);
          v31 = 3.4028e38;
          v32 = 6;
          v33 = vdup_n_s32(0x358637BDu);
          do
          {
            v34 = v30[6];
            v35 = vmulq_f32(v29, v34);
            v36 = v35.f32[2] + vaddv_f32(*v35.f32);
            if (fabsf(v36) >= 0.000001)
            {
              v37 = vmulq_f32(v34, vsubq_f32(*(this + v30->u32[0] + 49), v260));
              v38 = (v37.f32[2] + vaddv_f32(*v37.f32)) / v36;
              if (v38 > 0.0)
              {
                v39 = vmlaq_n_f32(v260, v29, v38);
                v40 = vsubq_f32(v39, *(this + 22));
                v41 = vmulq_f32(v40, *(this + 67));
                v42 = *(this + 24);
                v43 = fabsf(v41.f32[2] + vaddv_f32(*v41.f32)) <= ((0.5 * *v42.i32) + 0.000001);
                v44 = vmulq_f32(v40, *(this + 63));
                v45 = vmulq_f32(v40, *(this + 66));
                v46 = vmvn_s8(vcgt_f32(vabs_f32(vadd_f32(vzip1_s32(*&vextq_s8(v44, v44, 8uLL), *&vextq_s8(v45, v45, 8uLL)), vadd_f32(vzip1_s32(*v44.i8, *v45.i8), vzip2_s32(*v44.i8, *v45.i8)))), vadd_f32(vmul_f32(vext_s8(*v42.i8, *&vextq_s8(v42, v42, 8uLL), 4uLL), 0x3F0000003F000000), v33)));
                v47 = v43;
                if ((v46.i32[1] & v46.i32[0] & v47 & (v38 < v31)) != 0)
                {
                  v31 = v38;
                  v48 = -1;
                }

                else
                {
                  v48 = 0;
                }

                v25 = vbslq_s8(vdupq_n_s32(v48), v39, v25);
              }
            }

            ++v30;
            --v32;
          }

          while (v32);
          v280 = v25;
        }

        v49 = 0;
        v50 = 0;
        do
        {
          Shoebox::ShoeboxRoom::reflectObject(v266, this + 320, v49, &v280);
          v51 = *(this + 40) + 176 * v50;
          v52 = *v266;
          v53 = *&v266[16];
          v54 = v268;
          *(v51 + 32) = v267;
          *(v51 + 48) = v54;
          *v51 = v52;
          *(v51 + 16) = v53;
          v56 = v271;
          v55 = v272[0];
          v57 = v270;
          *(v51 + 126) = *(v272 + 14);
          *(v51 + 96) = v56;
          *(v51 + 112) = v55;
          *(v51 + 80) = v57;
          *(v51 + 64) = v269;
          v58 = *(v51 + 144);
          if (v58)
          {
            *(v51 + 152) = v58;
            operator delete(v58);
            *(v51 + 144) = 0;
            *(v51 + 152) = 0;
            *(v51 + 160) = 0;
          }

          HIDWORD(v24) = DWORD1(__p);
          *(v51 + 144) = __p;
          *(v51 + 160) = v274;
          __p = 0uLL;
          v274 = 0;
          *(v51 + 168) = v275;
          if (__p)
          {
            *(&__p + 1) = __p;
            operator delete(__p);
          }

          v59 = v50 + 1;
          if (*(this + 193) >= 2u)
          {
            v60 = 0;
            do
            {
              if (v49 != v60)
              {
                Shoebox::ShoeboxRoom::reflectObject(v266, this + 320, v60, (*(this + 40) + 176 * v50));
                v61 = *(this + 40) + 176 * v59;
                v62 = *v266;
                v63 = *&v266[16];
                v64 = v268;
                *(v61 + 32) = v267;
                *(v61 + 48) = v64;
                *v61 = v62;
                *(v61 + 16) = v63;
                v66 = v271;
                v65 = v272[0];
                v67 = v270;
                *(v61 + 126) = *(v272 + 14);
                *(v61 + 96) = v66;
                *(v61 + 112) = v65;
                *(v61 + 80) = v67;
                *(v61 + 64) = v269;
                v68 = *(v61 + 144);
                if (v68)
                {
                  *(v61 + 152) = v68;
                  operator delete(v68);
                  *(v61 + 144) = 0;
                  *(v61 + 152) = 0;
                  *(v61 + 160) = 0;
                }

                HIDWORD(v24) = DWORD1(__p);
                *(v61 + 144) = __p;
                *(v61 + 160) = v274;
                __p = 0uLL;
                v274 = 0;
                *(v61 + 168) = v275;
                if (__p)
                {
                  *(&__p + 1) = __p;
                  operator delete(__p);
                }

                ++v59;
              }

              v60 = (v60 + 1);
            }

            while (v60 != 6);
          }

          v49 = (v49 + 1);
          v50 = v59;
        }

        while (v49 != 6);
      }

      else
      {
        v77 = *(this + 40);
        v78 = *(this + 41);
        if (v77 != v78)
        {
          v79 = 0;
          HIDWORD(v24) = 0;
          v80 = v78 - v77 - 176;
          v81 = vdupq_n_s64(v80 / 0xB0);
          do
          {
            v82 = vdupq_n_s64(v79);
            v83 = vmovn_s64(vcgeq_u64(v81, vorrq_s8(v82, xmmword_1DE095160)));
            if (vuzp1_s8(vuzp1_s16(v83, 14), 14).u8[0])
            {
              v77[112] = 0;
            }

            if (vuzp1_s8(vuzp1_s16(v83, 14), 14).i8[1])
            {
              v77[288] = 0;
            }

            if (vuzp1_s8(vuzp1_s16(14, vmovn_s64(vcgeq_u64(v81, vorrq_s8(v82, xmmword_1DE095150)))), 14).i8[2])
            {
              v77[464] = 0;
              v77[640] = 0;
            }

            v84 = vmovn_s64(vcgeq_u64(v81, vorrq_s8(v82, xmmword_1DE095220)));
            if (vuzp1_s8(14, vuzp1_s16(v84, 14)).i32[1])
            {
              v77[816] = 0;
            }

            if (vuzp1_s8(14, vuzp1_s16(v84, 14)).i8[5])
            {
              v77[992] = 0;
            }

            if (vuzp1_s8(14, vuzp1_s16(14, vmovn_s64(vcgeq_u64(v81, vorrq_s8(v82, xmmword_1DE0952D0))))).i8[6])
            {
              v77[1168] = 0;
              v77[1344] = 0;
            }

            v85 = vmovn_s64(vcgeq_u64(v81, vorrq_s8(v82, xmmword_1DE0952C0)));
            if (vuzp1_s8(vuzp1_s16(v85, 14), 14).u8[0])
            {
              v77[1520] = 0;
            }

            if (vuzp1_s8(vuzp1_s16(v85, 14), 14).i8[1])
            {
              v77[1696] = 0;
            }

            if (vuzp1_s8(vuzp1_s16(14, vmovn_s64(vcgeq_u64(v81, vorrq_s8(v82, xmmword_1DE0952B0)))), 14).i8[2])
            {
              v77[1872] = 0;
              v77[2048] = 0;
            }

            v86 = vmovn_s64(vcgeq_u64(v81, vorrq_s8(v82, xmmword_1DE0952A0)));
            if (vuzp1_s8(14, vuzp1_s16(v86, 14)).i32[1])
            {
              v77[2224] = 0;
            }

            if (vuzp1_s8(14, vuzp1_s16(v86, 14)).i8[5])
            {
              v77[2400] = 0;
            }

            if (vuzp1_s8(14, vuzp1_s16(14, vmovn_s64(vcgeq_u64(v81, vorrq_s8(v82, xmmword_1DE095290))))).i8[6])
            {
              v77[2576] = 0;
              v77[2752] = 0;
            }

            v79 += 16;
            v77 += 2816;
          }

          while (((v80 / 0xB0 + 16) & 0x3FFFFFFFFFFFFF0) != v79);
        }
      }

      if (v288)
      {
        v289 = v288;
        operator delete(v288);
      }

      v87 = *(this + 227);
      v88 = *(this + 226);
      v89 = 0x2E8BA2E8BA2E8BA3 * ((v87 - v88) >> 4);
      LODWORD(v24) = *(this + 193);
      LODWORD(v90) = vcvtad_u64_f64(pow(6.0, v24));
      if (v89 < v90)
      {
        v90 = 0x2E8BA2E8BA2E8BA3 * ((v87 - v88) >> 4);
      }

      if (v90)
      {
        v91 = 0;
        v92 = 176 * v90;
        v93 = vdup_n_s32(0x42652EE1u);
        while (1)
        {
          v94 = *(this + 40);
          v95 = v94 + v91;
          v96 = v88 + v91;
          v97 = *(v94 + v91);
          v98 = *(v94 + v91 + 16);
          v99 = *(v94 + v91 + 48);
          *(v96 + 32) = *(v94 + v91 + 32);
          *(v96 + 48) = v99;
          *v96 = v97;
          *(v96 + 16) = v98;
          v101 = *(v94 + v91 + 96);
          v100 = *(v94 + v91 + 112);
          v102 = *(v94 + v91 + 80);
          *(v96 + 126) = *(v94 + v91 + 126);
          *(v96 + 96) = v101;
          *(v96 + 112) = v100;
          *(v96 + 80) = v102;
          *(v96 + 64) = *(v94 + v91 + 64);
          if (v88 != v94)
          {
            std::vector<Shoebox::Walls>::__assign_with_size[abi:ne200100]<Shoebox::Walls*,Shoebox::Walls*>((v96 + 144), *(v95 + 144), *(v95 + 152), (*(v95 + 152) - *(v95 + 144)) >> 2);
          }

          *(v96 + 168) = *(v95 + 168);
          v103 = *(this + 40);
          v104 = vsubq_f32(*(*(this + 40) + v91), *(this + 37));
          v105 = vmulq_f32(v103, xmmword_1DE09BFF0);
          v106 = vnegq_f32(v105);
          v107 = vrev64q_s32(v105);
          v107.i32[0] = v106.i32[1];
          v107.i32[3] = v106.i32[2];
          v108 = vtrn2q_s32(v105, vtrn1q_s32(v105, v106));
          v109 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v105, v106, 8uLL), *v104.f32, 1), vextq_s8(v108, v108, 8uLL), v104.f32[0]), v107, v104, 2);
          v110 = vnegq_f32(v109);
          v111 = vrev64q_s32(v109);
          v111.i32[0] = v110.i32[1];
          v111.i32[3] = v110.i32[2];
          v112 = vmlaq_laneq_f32(vmulq_laneq_f32(v109, v103, 3), v111, v103, 2);
          v113 = vtrn2q_s32(v109, vtrn1q_s32(v109, v110));
          v114 = vaddq_f32(v112, vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v109, v110, 8uLL), *v103.f32, 1), vextq_s8(v113, v113, 8uLL), v103.f32[0]));
          v115 = v114.f32[1];
          v116 = v114.f32[2];
          v117 = fmaxf(fabsf(v114.f32[0]), fmaxf(fabsf(v114.f32[1]), fabsf(v114.f32[2])));
          if (v117 > 1.8447e19)
          {
            break;
          }

          v119 = 1.0;
          if (v117 < 5.421e-20)
          {
            *&v118 = 1.9343e25;
            goto LABEL_93;
          }

LABEL_94:
          v261 = v114.f32[0];
          v120 = hypotf(v114.f32[0], v114.f32[1]);
          v257 = atan2f(-v116, v120);
          v121.f32[0] = atan2f(v115, v261);
          v121.f32[1] = v257;
          *&v122 = vmul_f32(v121, v93);
          *(&v122 + 2) = sqrtf((((v115 * v119) * (v115 * v119)) + ((v261 * v119) * (v261 * v119))) + ((v116 * v119) * (v116 * v119))) / v119;
          *(*(this + 226) + v91) = v122;
          v88 = *(this + 226);
          v123 = v88 + v91;
          *(v123 + 16) = 1;
          *(v123 + 168) = *(v88 + v91 + 8) / *(this + 192);
          v91 += 176;
          if (v92 == v91)
          {
            v87 = *(this + 227);
            v89 = 0x2E8BA2E8BA2E8BA3 * ((v87 - v88) >> 4);
            goto LABEL_96;
          }
        }

        *&v118 = 5.1699e-26;
LABEL_93:
        v119 = *&v118;
        goto LABEL_94;
      }

LABEL_96:
      v280 = 0uLL;
      *&v281 = 0;
      if (v87 != v88)
      {
        std::vector<double>::__vallocate[abi:ne200100](&v280, v89);
      }

      *v266 = this + 1808;
      std::__stable_sort<std::_ClassicAlgPolicy,Shoebox::ShoeboxRoom::sortReflections(std::vector<Shoebox::Reflection> &)::$_0 &,std::__wrap_iter<unsigned long *>>(0, 0, v266, 0, 0, 0);
      v125 = v280.i64[0];
      if (v280.i64[1] != v280.i64[0])
      {
        v126 = 0;
        v127 = (v280.i64[1] - v280.i64[0]) >> 3;
        v128 = *(this + 226);
        do
        {
          *(v128 + 176 * v125[v126] + 172) = v126;
          ++v126;
        }

        while (v127 > v126);
        goto LABEL_113;
      }

      if (v280.i64[1])
      {
LABEL_113:
        v280.i64[1] = v125;
        operator delete(v125);
      }
    }

    v129 = *(this + 471);
    if (v129)
    {
      v130 = 0;
      v131 = 0;
      v132 = 68;
      v133 = 0.0;
      do
      {
        v134 = (*(this + 226) + 176 * v130);
        if (v134[7].i8[0] == 1 && v134[10].i32[3] < *(this + 472))
        {
          v135 = v134[3];
          v136 = vmulq_f32(v135, xmmword_1DE09BFF0);
          v137 = vmulq_f32(v135, v135);
          *v137.i8 = vadd_f32(*v137.i8, *&vextq_s8(v137, v137, 8uLL));
          v137.i32[0] = vadd_f32(*v137.i8, vdup_lane_s32(*v137.i8, 1)).u32[0];
          v138 = vrecpe_f32(v137.u32[0]);
          v139 = vmul_f32(v138, vrecps_f32(v137.u32[0], v138));
          v255 = *(*(this + 6) + 96);
          v258 = vmulq_n_f32(v136, vmul_f32(v139, vrecps_f32(v137.u32[0], v139)).f32[0]);
          v254 = *v134;
          v140 = COERCE_FLOAT(v134->i64[1]);
          v141 = vmuls_lane_f32(0.017453, *v134->f32, 1);
          v142 = __sincosf_stret(0.017453 * COERCE_FLOAT(*v134));
          v143 = __sincosf_stret(v141);
          *v144.f32 = vmul_n_f32(vmul_laneq_f32(__PAIR64__(LODWORD(v142.__sinval), LODWORD(v142.__cosval)), v254, 2), v143.__cosval);
          v144.f32[2] = -(v140 * v143.__sinval);
          v145 = vsubq_f32(v255, v144);
          v146 = vmulq_f32(v258, xmmword_1DE09BFF0);
          v147 = vnegq_f32(v146);
          v148 = vtrn2q_s32(v146, vtrn1q_s32(v146, v147));
          v149 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v146, v147, 8uLL), *v145.f32, 1), vextq_s8(v148, v148, 8uLL), v145.f32[0]);
          v150 = vrev64q_s32(v146);
          v150.i32[0] = v147.i32[1];
          v150.i32[3] = v147.i32[2];
          v151 = vmlaq_laneq_f32(v149, v150, v145, 2);
          v152 = vnegq_f32(v151);
          v153 = vtrn2q_s32(v151, vtrn1q_s32(v151, v152));
          v154 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v151, v152, 8uLL), *v258.f32, 1), vextq_s8(v153, v153, 8uLL), v258.f32[0]);
          v155 = vrev64q_s32(v151);
          v155.i32[0] = v152.i32[1];
          v155.i32[3] = v152.i32[2];
          v156 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v151, v258, 3), v155, v258, 2), v154);
          v157 = v156.f32[1];
          v158 = -v156.f32[2];
          v258.i32[0] = v156.i32[0];
          v159 = hypotf(v156.f32[0], v156.f32[1]);
          atan2f(v158, v159);
          IR::IRCoordinates::IRCoordinates(&v280);
          atan2f(v157, v258.f32[0]);
          IR::IRCoordinates::set();
          IR::IRCoordinates::set();
          if (*(this + 246))
          {
            IR::IRData::getInterpolatedAuxData();
            MEMORY[0x1E12BE7F0](*(this + 226) + 176 * v130 + 68, 1, this + 2376, 1, this + 2376, 1, 10);
            v160 = 0;
            v161 = *(*(this + 255) + 8 * v130);
            v162 = *(v161 + 112);
            do
            {
              if (v160 < v162)
              {
                *(*(v161 + 120) + 4 * v160) = *(this + v160 + 594);
              }

              ++v160;
            }

            while (v160 != 10);
            v163 = *(this + 226);
          }

          else
          {
            v164 = 0;
            v165 = *(*(this + 255) + 8 * v130);
            v163 = *(this + 226);
            v166 = *(v165 + 112);
            do
            {
              if (v164 < v166)
              {
                *(*(v165 + 120) + 4 * v164) = *(v163 + v132 + 4 * v164);
              }

              ++v164;
            }

            while (v164 != 10);
          }

          v167 = (v163 + 176 * v130);
          if (v133 < v167[42])
          {
            v133 = v167[42];
          }

          v168 = *(*(*(this + 243) + 8 * v130) + 24);
          (*(*v168 + 48))(v168, 0, *v167);
          v169 = *(*(*(this + 243) + 8 * v130) + 24);
          (*(*v169 + 48))(v169, 1, *(*(this + 226) + 176 * v130 + 4));
          _Q0 = *(this + 24);
          v171 = vmulq_f32(_Q0, _Q0);
          if (sqrtf(v171.f32[2] + vaddv_f32(*v171.f32)) == 0.0)
          {
            v179 = 0.0;
          }

          else
          {
            _S3 = *(this + 49);
            v173 = vmuls_lane_f32(vmuls_lane_f32(_Q0.f32[0], *_Q0.f32, 1), _Q0, 2);
            __asm { FMLA            S1, S3, V0.S[1] }

            v179 = (v173 + v173) / _S1;
          }

          v180 = *(*(this + 248) + 8 * v130);
          v181 = *(v180 + 8);
          v182 = *(v181 + 168);
          v183 = fmaxf(v179, 0.0);
          *(v181 + 168) = v183;
          *(v181 + 144) |= v182 != v183;
          v184 = *(this + 226) + 176 * v130;
          if ((*(v184 + 128) & 1) == 0)
          {
            goto LABEL_210;
          }

          ERDiffusionFilter::setDiffusionCutoff(*v180, *(v180 + 48), *(v184 + 124));
          v185 = *(*(this + 248) + 8 * v130);
          v186 = *(v185 + 8);
          v187 = *(v186 + 172);
          v188 = fmaxf(*(this + 192), 0.00000011921);
          *(v186 + 172) = v188;
          v189 = *(v186 + 144) | (v187 != v188);
          *(v186 + 144) = v189;
          v190 = *(this + 226);
          v191 = v190 + 176 * v130;
          if (*(v191 + 120) != 1)
          {
            goto LABEL_210;
          }

          v192 = *(v191 + 116);
          if (v192 <= 1.0)
          {
            v193 = *(v191 + 116);
          }

          else
          {
            v193 = 1.0;
          }

          if (v192 >= 0.0)
          {
            v194 = v193;
          }

          else
          {
            v194 = 0.0;
          }

          v195 = *(v186 + 164);
          if (v194 < 0.0)
          {
            v194 = 0.0;
          }

          *(v186 + 164) = v194;
          *(v186 + 144) = v189 | (v195 != v194);
          v196 = v190 + 176 * v130;
          if (*(v196 + 136) != 1)
          {
LABEL_210:
            std::__throw_bad_optional_access[abi:ne200100]();
          }

          ERDiffusionFilter::setSpecularAttenuation(v185, *(v196 + 132));
          v197 = 0;
          v198 = 0;
          do
          {
            v198 += *(*(*(*(*(this + 248) + 8 * v130) + 8) + v197) + 60);
            v197 += 8;
          }

          while (v197 != 32);
          if (v131 <= v198)
          {
            v131 = v198;
          }

          v129 = *(this + 471);
        }

        ++v130;
        v132 += 176;
      }

      while (v130 < v129);
      v199 = v131;
    }

    else
    {
      v199 = 0.0;
      v133 = 0.0;
    }

    v200 = *(this + 251);
    v201 = *(this + 620) * 12.0;
    ERDiffusionFilter::setSpecularAttenuation(**v200, v201);
    ERDiffusionFilter::setSpecularAttenuation((*v200)[1], v201);
    v202 = *(this + 251);
    v203 = *(this + 621);
    ERDiffusionFilter::setDiffusionCutoff(***v202, *(**v202 + 12), v203);
    ERDiffusionFilter::setDiffusionCutoff(*(*v202)[1], *((*v202)[1] + 12), v203);
    v204 = 0;
    v205 = 0;
    v206 = 1;
    do
    {
      v207 = 0;
      v208 = 0;
      v209 = v206;
      v210 = *(*(**(this + 251) + 8 * v204) + 8);
      do
      {
        v208 += *(*(v210 + v207) + 60);
        v207 += 8;
      }

      while (v207 != 32);
      v206 = 0;
      if (v205 <= v208)
      {
        v205 = v208;
      }

      v204 = 1;
    }

    while ((v209 & 1) != 0);
    *(this + 5) = ((v205 + (v133 * *(this + 2))) + v199);
    *(this + 17) = 0;
    v211 = *(this + 6);
    *(this + 8) = *v211;
    *(this + 18) = *(v211 + 8);
    v13 = v253;
LABEL_159:
    if (v13)
    {
      caulk::pooled_semaphore_mutex::_unlock((this + 2488));
    }
  }

  if (!*(this + 471))
  {
    return 0;
  }

  v212 = 0;
  v213 = 0;
  do
  {
    v214 = *(this + 226) + 176 * v212;
    if (*(v214 + 112) != 1 || (v215 = *(v214 + 172), v216 = *(this + 472), v215 >= v216))
    {
      v217 = *(*(this + 229) + 4 * v212);
      TailLength = IR::IRProcessor::getTailLength(*(*(this + 243) + 8 * v212));
      v219 = 0;
      v220 = 0;
      do
      {
        v220 += *(*(*(*(*(this + 248) + 8 * v212) + 8) + v219) + 60);
        v219 += 8;
      }

      while (v219 != 32);
      if (v217 > v220 + TailLength)
      {
        v221 = *(this + 229);
        v222 = *(v221 + 4 * v212);
        _CF = __CFADD__(v222, __N[0]);
        v223 = v222 + __N[0];
        if (_CF)
        {
          v224 = -1;
        }

        else
        {
          v224 = v223;
        }

        *(v221 + 4 * v212) = v224;
        v225 = IR::IRProcessor::getTailLength(*(*(this + 243) + 8 * v212));
        v226 = 0;
        v227 = 0;
        do
        {
          v227 += *(*(*(*(*(this + 248) + 8 * v212) + 8) + v226) + 60);
          v226 += 8;
        }

        while (v226 != 32);
        if (v224 > v227 + v225)
        {
          v228 = *(this + 232);
          v229 = *(v228 + 8 * (v212 >> 6));
          if ((v229 & (1 << v212)) == 0)
          {
            *(v228 + 8 * (v212 >> 6)) = v229 | (1 << v212);
            IR::IRProcessor::reset(*(*(this + 243) + 8 * v212));
            IR::DelayLine<float>::reset(**(this + 252) + 328 * v212);
            IR::DelayLine<float>::reset(*(*(this + 252) + 24) + 328 * v212);
          }
        }

        goto LABEL_201;
      }

      v214 = *(this + 226) + 176 * v212;
      if ((*(v214 + 112) & 1) == 0)
      {
        v230 = *(this + 232);
        goto LABEL_181;
      }

      v215 = *(v214 + 172);
      v216 = *(this + 472);
    }

    v230 = *(this + 232);
    if (v215 < v216)
    {
      v231 = v212 >> 6;
      v232 = *(v230 + 8 * (v212 >> 6));
      v233 = 1 << v212;
      goto LABEL_182;
    }

LABEL_181:
    v231 = v212 >> 6;
    v233 = 1 << v212;
    v232 = *(v230 + 8 * (v212 >> 6));
    if ((v232 & (1 << v212)) == 0)
    {
      v234 = *(this + 229);
      v235 = *(v234 + 4 * v212);
      _CF = __CFADD__(v235, __N[0]);
      v236 = v235 + __N[0];
      if (_CF)
      {
        v236 = -1;
      }

      *(v234 + 4 * v212) = v236;
      goto LABEL_187;
    }

LABEL_182:
    *(*(this + 229) + 4 * v212) = 0;
LABEL_187:
    v262 = v213;
    *(v230 + 8 * v231) = v232 & ~v233;
    if (*(this + 2476) == 1)
    {
      *(*(this + 306) + 4 * v212) = AUSM::DistanceGain::calculateDistanceGain((*(this + 303) + 28 * v212), (*(v214 + 168) * *(this + 192)) * *(this + 618));
    }

    v237 = *(*(this + 255) + 8 * v212);
    v238 = *(this + 237);
    vDSP_vclr(v238, 1, __N[0]);
    if (*(v237 + 112))
    {
      v239 = 0;
      do
      {
        v240 = *(v237 + 56);
        if (v239 >= (*(v237 + 64) - v240) >> 3)
        {
          __assert_rtn("operator[]", "MultiDimensionalContiguousArrays.h", 57, "inIdx<mPtrs.size()");
        }

        vDSP_biquad(*(*v237 + 8 * v239), *(v240 + 8 * v239), a2, 1, *(v237 + 152), 1, __N[0]);
        v241 = *(v237 + 152);
        v280.i32[0] = *(*(v237 + 120) + 4 * v239);
        MEMORY[0x1E12BE8F0](v241, 1, &v280, v238, 1, v238, 1, __N[0]);
        ++v239;
      }

      while (v239 < *(v237 + 112));
    }

    ERDiffusionFilter::process(*(*(this + 248) + 8 * v212), *(this + 237), *(this + 237), __N[0]);
    v242 = *(*(this + 243) + 8 * v212);
    v243 = *(*(this + 306) + 4 * v212);
    v244 = -(((*(this + 604) * a8) * *(this + 605)) * v243);
    if (!*(*(this + 226) + 176 * v212 + 141))
    {
      v244 = ((*(this + 604) * a8) * *(this + 605)) * v243;
    }

    v280.i64[0] = *(this + 237);
    result = IR::IRProcessor::processMultipleInputs(v242, &v280, a5, 1u, 2u, __N[0], v244, 0);
    if (result)
    {
      return result;
    }

    v245 = 0;
    v246 = 1;
    v247 = 328 * v212;
    do
    {
      v248 = v246;
      v249 = *(*(*(this + 248) + 8 * v212) + 8);
      v250 = 0.0;
      if (v249[11].i32[0] == 1)
      {
        v250 = vaddvq_s32(v249[4]);
      }

      IR::DelayLine<float>::setDelay(*(*(this + 252) + 24 * v245) + v247, fmaxf(-(v250 - (*(*(this + 226) + 176 * v212 + 168) * *(this + 2))), 0.0));
      v251 = *(*(this + 252) + 24 * v245);
      v280.i64[0] = a5[v245];
      IR::DelayLine<float>::process(v251 + v247, v280.i64[0], &v280, __N[0]);
      MEMORY[0x1E12BE5D0](a3[v245], 1, a5[v245], 1, a3[v245], 1, __N[0]);
      v246 = 0;
      v245 = 1;
    }

    while ((v248 & 1) != 0);
    v213 = v262 + 1;
LABEL_201:
    ++v212;
  }

  while (v212 < *(this + 471));
  if (v213 && *(this + 620) > 0.0)
  {
    v252 = *(this + 251);
    if (*(v252 + 32) < __N[0])
    {
      __assert_rtn("process", "ERDiffusionFilter.cpp", 484, "inNumFramesToProcess<=mMaxFrameSize");
    }

    ERDiffusionFilter::process(**v252, *a3, *a3, __N[0]);
    ERDiffusionFilter::process(*(*v252 + 8), a3[1], a3[1], __N[0]);
  }

  return 0;
}

void sub_1DDD216BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  caulk::pooled_semaphore_mutex::_unlock((v55 + 2488));
  _Unwind_Resume(a1);
}

uint64_t ERSpatializer::initialize(ERSpatializer *this, float a2, int a3, unsigned int a4)
{
  v84 = *MEMORY[0x1E69E9840];
  if (a3 != 2 || !a4)
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v17 = getAUSMV2Log(void)::gLog;
    if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      return 4294956421;
    }

    LOWORD(__u[0]) = 0;
    v18 = "ERSpatializer: invalid initialization parameters";
LABEL_109:
    _os_log_error_impl(&dword_1DDB85000, v17, OS_LOG_TYPE_ERROR, v18, __u, 2u);
    return 4294956421;
  }

  if (!*(this + 259))
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v17 = getAUSMV2Log(void)::gLog;
    if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      return 4294956421;
    }

    LOWORD(__u[0]) = 0;
    v18 = "ERSpatializer: missing HRIR definition";
    goto LABEL_109;
  }

  caulk::pooled_semaphore_mutex::_lock((this + 2488));
  *(this + 2) = a2;
  *(this + 3) = a4;
  if (*(this + 1880) == 1)
  {
    LODWORD(v4) = *(this + 193);
    LODWORD(v5) = vcvtad_u64_f64(pow(6.0, v4));
    *(this + 471) = v5;
    std::vector<Shoebox::Reflection>::resize(this + 226, v5);
    v6 = *(this + 471);
    if (!v6)
    {
      __assert_rtn("initialize", "ERSpatializer.cpp", 83, "mNumReflections>0U");
    }

    std::vector<float>::resize(this + 306, v6);
    v7 = *(this + 471);
    v8 = *(this + 304);
    v9 = *(this + 303);
    v10 = 0x6DB6DB6DB6DB6DB7 * ((v8 - v9) >> 2);
    v11 = v7 >= v10;
    v12 = v7 - v10;
    if (v12 != 0 && v11)
    {
      v13 = *(this + 305);
      if (0x6DB6DB6DB6DB6DB7 * ((v13 - v8) >> 2) < v12)
      {
        v14 = 0x6DB6DB6DB6DB6DB7 * ((v13 - v9) >> 2);
        v15 = 2 * v14;
        if (2 * v14 <= v7)
        {
          v15 = *(this + 471);
        }

        if (v14 >= 0x492492492492492)
        {
          v16 = 0x924924924924924;
        }

        else
        {
          v16 = v15;
        }

        if (v16 <= 0x924924924924924)
        {
          operator new();
        }

LABEL_112:
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v21 = v8 + 28 * v12;
      do
      {
        *v8 = 1;
        *(v8 + 4) = 0x23E99999ALL;
        *(v8 + 12) = xmmword_1DE09C2D0;
        *(v8 + 24) = -1082130432;
        v8 += 28;
      }

      while (v8 != v21);
      v20 = this;
      *(this + 304) = v21;
    }

    else
    {
      v20 = this;
      if (!v11)
      {
        *(this + 304) = v9 + 28 * v7;
      }
    }

    __u[0] = 0;
    std::vector<unsigned int>::assign((v20 + 1832), v7, __u);
    v22 = *(v20 + 471);
    LOBYTE(__u[0]) = 1;
    std::vector<BOOL>::assign(v20 + 232, v22, __u);
    std::vector<std::unique_ptr<IR::IRProcessor>>::resize(v20 + 243, *(v20 + 471));
    v24 = *(v20 + 471);
    v25 = *(v20 + 241);
    v26 = *(v20 + 240);
    v27 = (v25 - v26) >> 4;
    if (v24 <= v27)
    {
      if (v24 < v27)
      {
        v32 = v26 + 16 * v24;
        while (v25 != v32)
        {
          v33 = *(v25 - 8);
          if (v33)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v33);
          }

          v25 -= 16;
        }

        *(this + 241) = v32;
      }
    }

    else
    {
      v28 = v24 - v27;
      v29 = *(v20 + 242);
      if (v28 > (v29 - v25) >> 4)
      {
        v30 = v29 - v26;
        if (v30 >> 3 > v24)
        {
          v24 = v30 >> 3;
        }

        if (v30 >= 0x7FFFFFFFFFFFFFF0)
        {
          v31 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v31 = v24;
        }

        if (!(v31 >> 60))
        {
          operator new();
        }

        goto LABEL_112;
      }

      bzero(*(v20 + 241), 16 * v28);
      *(v20 + 241) = v25 + 16 * v28;
    }

    if (*(this + 278))
    {
      operator new();
    }

    if (*(this + 471))
    {
      operator new();
    }

    __u[0] = 0;
    std::vector<float>::assign(this + 237, a4, __u, v23);
    v34 = *(this + 471);
    v35 = *(this + 256);
    v36 = *(this + 255);
    v37 = (v35 - v36) >> 3;
    if (v34 <= v37)
    {
      if (v34 < v37)
      {
        v42 = (v36 + 8 * v34);
        while (v35 != v42)
        {
          std::unique_ptr<ERSpatializerFilterbank>::reset[abi:ne200100](--v35, 0);
        }

        *(this + 256) = v42;
      }
    }

    else
    {
      v38 = v34 - v37;
      v39 = *(this + 257);
      if (v38 > (v39 - v35) >> 3)
      {
        v40 = v39 - v36;
        if (v40 >> 2 > v34)
        {
          v34 = v40 >> 2;
        }

        if (v40 >= 0x7FFFFFFFFFFFFFF8)
        {
          v41 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v41 = v34;
        }

        if (!(v41 >> 61))
        {
          operator new();
        }

        goto LABEL_112;
      }

      bzero(*(this + 256), 8 * v38);
      *(this + 256) = &v35[v38];
    }

    if (*(this + 471))
    {
      operator new();
    }

    std::vector<std::unique_ptr<ERDiffusionFilter>>::resize(this + 248, 0);
    if (*(this + 471))
    {
      operator new();
    }

    v43 = *(this + 2);
    v44 = *(this + 253);
    v45 = *(this + 252);
    v46 = v44 - v45;
    v47 = 0xAAAAAAAAAAAAAAABLL * ((v44 - v45) >> 3);
    if (v47 > 1)
    {
      if (v46 != 48)
      {
        v53 = v45 + 48;
        while (v44 != v53)
        {
          v44 -= 24;
          *__u = v44;
          std::vector<IR::DelayLine<float>>::__destroy_vector::operator()[abi:ne200100](__u);
        }

        *(this + 253) = v53;
      }
    }

    else
    {
      v48 = 2 - v47;
      v49 = *(this + 254);
      if (0xAAAAAAAAAAAAAAABLL * ((v49 - v44) >> 3) < v48)
      {
        v50 = 0xAAAAAAAAAAAAAAABLL * ((v49 - v45) >> 3);
        v51 = 2 * v50;
        if (2 * v50 <= 2)
        {
          v51 = 2;
        }

        if (v50 >= 0x555555555555555)
        {
          v52 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v52 = v51;
        }

        if (v52 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      bzero(*(this + 253), 24 * ((24 - v46) / 0x18uLL) + 24);
      *(this + 253) = v44 + 24 * ((24 - v46) / 0x18uLL) + 24;
    }

    v54 = 0;
    v55 = 1;
    LODWORD(v56) = *(this + 471);
    while (1)
    {
      v57 = v55;
      if (v56)
      {
        v78 = v55;
        v58 = 0;
        v59 = 0;
        v60 = this;
        do
        {
          v61 = (*(v60 + 252) + 24 * v54);
          v63 = v61[1];
          v62 = v61[2];
          if (v63 >= v62)
          {
            v65 = 0x8F9C18F9C18F9C19 * ((v63 - *v61) >> 3);
            v66 = v65 + 1;
            if (v65 + 1 > 0xC7CE0C7CE0C7CELL)
            {
              std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
            }

            v67 = 0x8F9C18F9C18F9C19 * ((v62 - *v61) >> 3);
            if (2 * v67 > v66)
            {
              v66 = 2 * v67;
            }

            if (v67 >= 0x63E7063E7063E7)
            {
              v68 = 0xC7CE0C7CE0C7CELL;
            }

            else
            {
              v68 = v66;
            }

            v83 = v61;
            if (v68)
            {
              std::allocator<IR::DelayLine<float>>::allocate_at_least[abi:ne200100](v68);
            }

            *__u = 0;
            v81 = 328 * v65;
            v82 = 328 * v65;
            IR::DelayLine<float>::DelayLine(328 * v65, (v43 * 0.5), 5, 1uLL, 0, a4);
            *&v82 = v82 + 328;
            v69 = v61[1];
            v70 = v81 + *v61 - v69;
            std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<IR::DelayLine<float>>,IR::DelayLine<float>*>(*v61, v69, v70);
            v71 = *v61;
            *v61 = v70;
            v81 = v71;
            v72 = v61[2];
            __n = v82;
            v73 = v82;
            *&v82 = v71;
            *(v61 + 1) = v73;
            *(&v82 + 1) = v72;
            *__u = v71;
            std::__split_buffer<IR::DelayLine<float>>::~__split_buffer(__u);
            v64 = __n;
          }

          else
          {
            IR::DelayLine<float>::DelayLine(v61[1], (v43 * 0.5), 5, 1uLL, 0, a4);
            v64 = v63 + 328;
            v61[1] = v63 + 328;
          }

          v61[1] = v64;
          v60 = this;
          IR::DelayLine<float>::setDelay(*(*(this + 252) + 24 * v54) + v58, 0.0);
          ++v59;
          v56 = *(this + 471);
          v58 += 328;
        }

        while (v59 < v56);
        v57 = v78;
      }

      v55 = 0;
      v54 = 1;
      if ((v57 & 1) == 0)
      {
        operator new();
      }
    }
  }

  if (getAUSMV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
  }

  v19 = getAUSMV2Log(void)::gLog;
  if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
  {
    LOWORD(__u[0]) = 0;
    _os_log_error_impl(&dword_1DDB85000, v19, OS_LOG_TYPE_ERROR, "Unsupported reflection engine", __u, 2u);
  }

  caulk::pooled_semaphore_mutex::_unlock((this + 2488));
  return 4294956421;
}

void sub_1DDD22FFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, void *__p, uint64_t a47, int a48, __int16 a49, char a50, char a51)
{
  if (a51 < 0)
  {
    operator delete(__p);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  caulk::pooled_semaphore_mutex::_unlock((a23 + 2488));
  _Unwind_Resume(a1);
}

uint64_t IR::IRProcessor::IRProcessor(uint64_t a1, void *a2, int a3)
{
  *a1 = &unk_1F59355D0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  caulk::pooled_semaphore_mutex::pooled_semaphore_mutex((a1 + 20));
  v6 = a2[1];
  *(a1 + 24) = *a2;
  *(a1 + 32) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0x3F800000453B8000;
  *(a1 + 168) = 1;
  *(a1 + 172) = a3;
  *(a1 + 176) = 0;
  return a1;
}

void std::vector<std::unique_ptr<ERDiffusionFilter>>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 3;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      v11 = (v3 + 8 * a2);
      while (v4 != v11)
      {
        std::unique_ptr<ERDiffusionFilter>::reset[abi:ne200100](--v4, 0);
      }

      a1[1] = v11;
    }
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 3)
    {
      if (!(a2 >> 61))
      {
        v8 = v7 - v3;
        v9 = v8 >> 2;
        if (v8 >> 2 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        if (!(v10 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    bzero(a1[1], 8 * v6);
    a1[1] = &v4[v6];
  }
}

void std::__shared_ptr_emplace<IR::DataLoaderSourceWithTruncation>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5920BC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12BD160);
}

void std::__shared_ptr_emplace<IR::IRData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5920B90;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12BD160);
}

double Spatializer::Spatializer(uint64_t a1, void *a2)
{
  *a1 = &unk_1F593A308;
  *(a1 + 8) = 0;
  *(a1 + 16) = 256;
  *(a1 + 20) = 0x400000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v2 = a2[1];
  *(a1 + 48) = *a2;
  *(a1 + 56) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 96) = xmmword_1DE095680;
  *(a1 + 112) = 0;
  *(a1 + 116) = xmmword_1DE09C500;
  *(a1 + 132) = 0x2447A0000;
  *(a1 + 140) = 1065353216;
  *(a1 + 144) = 0;
  *(a1 + 146) = 1;
  result = 0.0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = xmmword_1DE097CE0;
  *(a1 + 192) = 4;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0;
  *(a1 + 288) = 257;
  *(a1 + 290) = 0;
  *(a1 + 292) = 0;
  *(a1 + 296) = 0;
  return result;
}

float **DistanceEstimator::processBufferList(DistanceEstimator *this, const AudioBufferList *a2, const AudioBufferList *a3, AudioBufferList *a4)
{
  if (a4->mNumberBuffers)
  {
    v8 = 0;
    v9 = 16;
    do
    {
      memcpy(*(&a4->mNumberBuffers + v9), *(&a2->mNumberBuffers + v9), 4 * (2 * *(this + 2)));
      ++v8;
      v9 += 16;
    }

    while (v8 < a4->mNumberBuffers);
  }

  mNumberBuffers = a2->mNumberBuffers;
  v11 = *(this + 8) * *(this + 8);
  v45 = *(this + 9) * *(this + 9);
  v46 = v11;
  vDSP_vclr(*(this + 8), 1, (*(this + 12) * mNumberBuffers));
  vDSP_vclr(*(this + 11), 1, (*(this + 12) * mNumberBuffers));
  if (mNumberBuffers)
  {
    v12 = 0;
    p_mData = &a3->mBuffers[0].mData;
    v14 = &a2->mBuffers[0].mData;
    do
    {
      v16 = *v14;
      v14 += 2;
      v15 = v16;
      v17 = *(this + 2);
      v18 = &v16[v17];
      v19 = *p_mData;
      p_mData += 2;
      __A.realp = v15 + 1;
      __A.imagp = v18 + 1;
      v20 = *(this + 12) * v12;
      v21 = *v15 * *v15;
      v22 = &v19[v17];
      v23 = *(this + 8);
      *(v23 + 4 * v20) = v21;
      v24 = *v19;
      v43.realp = v19 + 1;
      v25 = *(this + 11);
      *(v25 + 4 * v20) = v24 * v24;
      v26 = *v18 * *v18;
      LODWORD(v18) = v20 + v17;
      *(v23 + 4 * v18) = v26;
      *&v19 = *v22;
      v43.imagp = v22 + 1;
      v27 = v20 + 1;
      *(v25 + 4 * v18) = *&v19 * *&v19;
      vDSP_zvmags(&__A, 1, (v23 + 4 * (v20 + 1)), 1, (v17 - 1));
      vDSP_zvmags(&v43, 1, (*(this + 11) + 4 * v27), 1, (*(this + 2) - 1));
      ++v12;
    }

    while (mNumberBuffers != v12);
  }

  MEMORY[0x1E12BE940](*(this + 8), 1, &v46, *(this + 8), 1, (*(this + 12) * mNumberBuffers));
  MEMORY[0x1E12BE940](*(this + 11), 1, &v45, *(this + 11), 1, (*(this + 12) * mNumberBuffers));
  v28 = *(this + 14);
  if (*(this + 6) <= 0.0)
  {
    memcpy(v28, *(this + 8), 4 * (*(this + 12) * mNumberBuffers));
    memcpy(*(this + 17), *(this + 11), 4 * (*(this + 12) * mNumberBuffers));
  }

  else
  {
    MEMORY[0x1E12BE930](v28, 1, this + 24, *(this + 8), 1, this + 28, v28, 1, (*(this + 12) * mNumberBuffers));
    MEMORY[0x1E12BE930](*(this + 17), 1, this + 24, *(this + 11), 1, this + 28, *(this + 17), 1, (*(this + 12) * mNumberBuffers));
  }

  vDSP_vclr(*(this + 28), 1, *(this + 62));
  if (mNumberBuffers)
  {
    v29 = 0;
    do
    {
      v30 = *(this + 13);
      v31 = *(this + 12) * v29;
      v32 = v30 * (mNumberBuffers + v29);
      sparse_matrix_vector_product_dense_float(CblasNoTrans, 1.0, *(this + 7), (*(this + 14) + 4 * v31), 1, (*(this + 28) + 4 * (v30 * v29)), 1);
      sparse_matrix_vector_product_dense_float(CblasNoTrans, 1.0, *(this + 7), (*(this + 17) + 4 * v31), 1, (*(this + 28) + 4 * v32), 1);
      ++v29;
    }

    while (mNumberBuffers != v29);
    vDSP_vthr(*(this + 28), 1, this + 10, *(this + 28), 1, *(this + 62));
    v33 = 0;
    LODWORD(__A.realp) = 2 * *(this + 13);
    do
    {
      vvlogf((*(this + 28) + 4 * (LODWORD(__A.realp) * v33)), (*(this + 28) + 4 * (LODWORD(__A.realp) * v33)), &__A);
      ++v33;
    }

    while (mNumberBuffers != v33);
  }

  else
  {
    vDSP_vthr(*(this + 28), 1, this + 10, *(this + 28), 1, *(this + 62));
    LODWORD(__A.realp) = 2 * *(this + 13);
  }

  result = (*(***(this + 32) + 72))(**(this + 32), this + 224);
  v35 = **result;
  *(this + 49) = v35;
  if (*(this + 11) <= 0.0)
  {
    v42 = *(this + 53);
    if (*(this + 216) == 1)
    {
      v42 = v42 + 1.0;
      *(this + 53) = v42;
    }

    if (v42 > *(this + 52))
    {
      *(this + 53) = 0;
      *(this + 108) = 256;
    }
  }

  else
  {
    *(this + 53) = 0;
    *(this + 108) = 1;
    v36 = *(this + 50);
    v37 = *(this + 41);
    v38 = *(this + 40) + *(this + 47);
    *(this + 42) = v38;
    *(this + 43) = v35 - v36;
    v39 = v38 / ((v38 + v37) + *(this + 10));
    *(this + 44) = v38 + v37;
    *(this + 45) = v39;
    v40 = v36 + (v39 * (v35 - v36));
    v41 = (v37 * (v39 * v39)) + (((1.0 - v39) * (1.0 - v39)) * v38);
    *(this + 46) = v40;
    *(this + 47) = v41;
    *(this + 48) = v35 - v40;
    *(this + 50) = v40;
    *(this + 51) = v41;
  }

  return result;
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUADAMSink>::Factory()
{
  result = malloc_type_malloc(0x270uLL, 0x10F3040188F9811uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUADAMSink>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUADAMSink>::Destruct;
  return result;
}

ausdk::AUBase *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUADAMSink>::Construct(ausdk::AUBase *a1, OpaqueAudioComponentInstance *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = ausdk::AUBase::AUBase(a1, a2, 1, 1);
  *v3 = &unk_1F592E790;
  *(v3 + 66) = 561211748;
  *(v3 + 536) = 0;
  *(v3 + 540) = 0;
  *(v3 + 68) = 0;
  *(v3 + 552) = 0;
  {
    AU::ADAMSink::get_log(void)::auadam_os_log = os_log_create("com.apple.coreaudio", "AUADAMSink");
  }

  v4 = AU::ADAMSink::get_log(void)::auadam_os_log;
  if (os_log_type_enabled(AU::ADAMSink::get_log(void)::auadam_os_log, OS_LOG_TYPE_INFO))
  {
    v6 = 136315394;
    v7 = "AUADAMSink.cpp";
    v8 = 1024;
    v9 = 31;
    _os_log_impl(&dword_1DDB85000, v4, OS_LOG_TYPE_INFO, "%s:%-5d created", &v6, 0x12u);
  }

  return a1;
}

void *ausdk::APFactory<ausdk::AUBaseProcessLookup,AUCrossCorrelator>::Factory()
{
  result = malloc_type_malloc(0x3D0uLL, 0x10F304058B0F570uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessLookup,AUCrossCorrelator>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessLookup,AUCrossCorrelator>::Destruct;
  return result;
}

void *ausdk::APFactory<ausdk::AUBaseProcessLookup,AUCrossCorrelator>::Construct(void *a1, OpaqueAudioComponentInstance *a2)
{
  v3 = ausdk::AUBase::AUBase(a1, a2, 1, 1);
  *v3 = &unk_1F5935B70;
  *(v3 + 528) = 0;
  *(v3 + 532) = 0u;
  *(v3 + 548) = 0u;
  *(v3 + 564) = 0u;
  *(v3 + 580) = 0u;
  *(v3 + 600) = 0u;
  *(v3 + 616) = 0u;
  *(v3 + 632) = 0u;
  *(v3 + 648) = 0u;
  *(v3 + 664) = 0u;
  *(v3 + 680) = xmmword_1DE115084;
  *(v3 + 696) = unk_1DE115094;
  *(v3 + 712) = 0u;
  *(v3 + 728) = 0u;
  *(v3 + 744) = 1;
  *(v3 + 748) = 0;
  *(v3 + 210) = 0;
  *(v3 + 824) = 0u;
  *(v3 + 53) = 0u;
  *(v3 + 54) = 0u;
  *(v3 + 220) = 0;
  *(v3 + 113) = 0;
  *(v3 + 888) = 0u;
  *(v3 + 760) = 0u;
  *(v3 + 776) = 0u;
  *(v3 + 792) = 0u;
  *(v3 + 804) = 0u;
  ausdk::AUBase::CreateElements(v3);
  v4 = 0;
  v20 = 0x408F400000000000;
  v21[0] = xmmword_1DE09BD50;
  v21[1] = xmmword_1DE09BD60;
  while (1)
  {
    v5 = a1[15];
    if (v5)
    {
      LODWORD(v6) = (*(*v5 + 24))(v5);
    }

    else
    {
      v6 = (a1[13] - a1[12]) >> 3;
    }

    if (v4 >= v6)
    {
      break;
    }

    Element = ausdk::AUScope::GetElement((a1 + 10), v4);
    if (!Element)
    {
LABEL_26:
      ausdk::Throw(0xFFFFD583);
    }

    (*(*Element + 56))(Element, &v20);
    ++v4;
  }

  for (i = 0; ; ++i)
  {
    v9 = a1[21];
    if (v9)
    {
      LODWORD(v10) = (*(*v9 + 24))(v9);
    }

    else
    {
      v10 = (a1[19] - a1[18]) >> 3;
    }

    if (i >= v10)
    {
      break;
    }

    v11 = ausdk::AUScope::GetElement((a1 + 16), i);
    if (!v11)
    {
      goto LABEL_26;
    }

    (*(*v11 + 56))(v11, &v20);
  }

  getParameterInfo(&v20);
  v12 = v20;
  if (v20 != v21)
  {
    do
    {
      v13 = 0;
      v14 = *(v12 + 8);
      v15 = v12[33];
      while (v13 < AULeanSpatial::GetNumberOfInputChannels(a1))
      {
        (*(*a1 + 152))(a1, v14, 4, v13, 0, v15);
        v13 = (v13 + 1);
      }

      v16 = *(v12 + 1);
      if (v16)
      {
        do
        {
          v17 = v16;
          v16 = *v16;
        }

        while (v16);
      }

      else
      {
        do
        {
          v17 = *(v12 + 2);
          v18 = *v17 == v12;
          v12 = v17;
        }

        while (!v18);
      }

      v12 = v17;
    }

    while (v17 != v21);
  }

  std::__tree<std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>,std::__map_value_compare<VADPostProcessing::SmoothingTypes,std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>,std::less<VADPostProcessing::SmoothingTypes>,true>,std::allocator<std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>>>::destroy(*&v21[0]);
  return a1;
}

void sub_1DDD24088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  v14 = *v12;
  *v12 = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  a9 = (v9 + 848);
  std::vector<std::unique_ptr<ausdk::AUElement>>::__destroy_vector::operator()[abi:ne200100](&a9);
  v15 = *v11;
  *v11 = 0;
  if (v15)
  {
    std::default_delete<CADeprecated::CABufferList>::operator()[abi:ne200100](v15);
  }

  CrossCorrelator::~CrossCorrelator((v9 + 744));
  v16 = *(v9 + 624);
  if (v16)
  {
    *(v9 + 632) = v16;
    operator delete(v16);
  }

  v17 = *v10;
  if (*v10)
  {
    *(v9 + 608) = v17;
    operator delete(v17);
  }

  v18 = *(v9 + 584);
  *(v9 + 584) = 0;
  if (v18)
  {
    std::default_delete<CADeprecated::CABufferList>::operator()[abi:ne200100](v18);
  }

  ausdk::AUBase::~AUBase(v9);
  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessLookup,AUSPLMeter>::Factory()
{
  result = malloc_type_malloc(0x308uLL, 0x10F3040696211E5uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessLookup,AUSPLMeter>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessLookup,AUSPLMeter>::Destruct;
  return result;
}

uint64_t ausdk::APFactory<ausdk::AUBaseProcessLookup,AUSPLMeter>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = ausdk::AUBase::AUBase(a1, a2, 1, 1);
  *v3 = &unk_1F59204E8;
  *(v3 + 528) = 0;
  *(v3 + 532) = 0u;
  *(v3 + 548) = 1;
  *(v3 + 138) = 0;
  *(v3 + 556) = 0;
  *(v3 + 140) = 0;
  *(v3 + 564) = 0;
  *(v3 + 148) = 0;
  *(v3 + 596) = 0;
  v4 = (v3 + 600);
  v5 = (v3 + 624);
  *(v3 + 568) = 0u;
  *(v3 + 581) = 0;
  *(v3 + 600) = 0u;
  *(v3 + 616) = 0u;
  *(v3 + 632) = 0u;
  *(v3 + 648) = 0u;
  *(v3 + 83) = 0;
  std::vector<float *>::vector[abi:ne200100](v3 + 84, 0x20uLL);
  *(a1 + 696) = 0u;
  *inDesc = xmmword_1DE0A9E9C;
  *&inDesc[16] = unk_1DE0A9EAC;
  v27 = xmmword_1DE0A9EBC;
  v28 = unk_1DE0A9ECC;
  v29 = 0;
  std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(v4, inDesc, v30, 0x11uLL);
  *inDesc = xmmword_1DE0A9EE0;
  *&inDesc[16] = unk_1DE0A9EF0;
  v27 = xmmword_1DE0A9F00;
  v28 = unk_1DE0A9F10;
  v29 = 0;
  std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(v5, inDesc, v30, 0x11uLL);
  v6 = *(a1 + 608);
  v7 = *(a1 + 600);
  if (v6 - v7 != *(a1 + 632) - *(a1 + 624))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *inDesc = 136315394;
      *&inDesc[4] = "AUSPLMeter.cpp";
      *&inDesc[12] = 1024;
      *&inDesc[14] = 166;
      _os_log_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Volume curve steps must match", inDesc, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &unk_1F593B0D8;
    exception[2] = 2003329396;
  }

  if (v7 != v6)
  {
    v8 = v7 + 1;
    if (v7 + 1 != v6)
    {
      v9 = *v7;
      v10 = v7 + 1;
      do
      {
        v11 = *v10++;
        v12 = v11;
        if (v11 < v9)
        {
          v9 = v12;
          v7 = v8;
        }

        v8 = v10;
      }

      while (v10 != v6);
    }
  }

  *(a1 + 576) = *v7;
  v13 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v14 & 1) == 0)
  {
    abort();
  }

  (*(*v13 + 40))(v13, 13);
  v15 = 0;
  v16 = &dword_1E866A80C;
  do
  {
    (*(*a1 + 152))(a1, v15++, 0, 0, 0, *v16);
    v16 += 26;
  }

  while (v15 != 13);
  *&inDesc[16] = 0;
  *inDesc = *"xfua2qrvlppa";
  Next = AudioComponentFindNext(0, inDesc);
  if (!Next)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v22 = 136315394;
      v23 = "AUSPLMeter.cpp";
      v24 = 1024;
      v25 = 177;
      _os_log_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Unable to instantiate VarEQ AU", &v22, 0x12u);
    }

    v20 = __cxa_allocate_exception(0x10uLL);
    *v20 = &unk_1F593B0D8;
    v20[2] = 2003329396;
  }

  if (AudioComponentInstanceNew(Next, (a1 + 696)))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v22 = 136315394;
      v23 = "AUSPLMeter.cpp";
      v24 = 1024;
      v25 = 179;
      _os_log_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Unable to instantiate VarEQ AU", &v22, 0x12u);
    }

    v21 = __cxa_allocate_exception(0x10uLL);
    *v21 = &unk_1F593B0D8;
    v21[2] = 2003329396;
  }

  return a1;
}

void sub_1DDD24688(_Unwind_Exception *a1)
{
  std::unique_ptr<CA::AudioBuffersDeprecated>::reset[abi:ne200100](v1 + 88, 0);
  v6 = *v4;
  if (*v4)
  {
    v1[85] = v6;
    operator delete(v6);
  }

  std::unique_ptr<LoudnessMeter>::reset[abi:ne200100](v1 + 83, 0);
  std::unique_ptr<LoudnessMeter>::reset[abi:ne200100](v1 + 82, 0);
  std::unique_ptr<LoudnessMeter>::reset[abi:ne200100](v1 + 81, 0);
  v7 = *v3;
  if (*v3)
  {
    v1[79] = v7;
    operator delete(v7);
  }

  v8 = *v2;
  if (*v2)
  {
    v1[76] = v8;
    operator delete(v8);
  }

  ausdk::AUBase::~AUBase(v1);
  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUECMIMOHelper>::Factory()
{
  result = malloc_type_malloc(0x360uLL, 0x10F304086AD3B9EuLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUECMIMOHelper>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUECMIMOHelper>::Destruct;
  return result;
}

uint64_t ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUECMIMOHelper>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v3 = (a1 + 580);
  v4 = ausdk::AUBase::AUBase(a1, a2, 2, 1);
  *v4 = &unk_1F592CDE0;
  *(v4 + 33) = xmmword_1DE09C510;
  *(v4 + 34) = xmmword_1DE09C520;
  *(v4 + 35) = xmmword_1DE09C530;
  *(v4 + 576) = 0;
  *v3 = xmmword_1DE09C540;
  *(v4 + 596) = 1;
  *(v3 + 20) = xmmword_1DE09C550;
  *(v4 + 154) = 1028443341;
  *(v4 + 620) = 0u;
  *(v4 + 636) = 0u;
  *(v4 + 652) = 0u;
  *(v4 + 668) = 0u;
  *(v4 + 684) = 0u;
  *(v4 + 700) = 0;
  *(v4 + 712) = 0u;
  *(v4 + 728) = 0u;
  *(v4 + 744) = 0u;
  *(v4 + 760) = 0u;
  *(v4 + 776) = 0u;
  *(v4 + 198) = 0;
  ausdk::AUBase::CreateElements(v4);
  v5 = 0;
  v49 = 0x40D7700000000000;
  v50 = xmmword_1DE09BD50;
  v51 = xmmword_1DE09C560;
  v46 = 0x40D7700000000000;
  v47 = xmmword_1DE09BD50;
  v48 = xmmword_1DE09BD60;
  while (1)
  {
    v6 = *(a1 + 120);
    if (v6)
    {
      LODWORD(v7) = (*(*v6 + 24))(v6);
    }

    else
    {
      v7 = (*(a1 + 104) - *(a1 + 96)) >> 3;
    }

    if (v5 >= v7)
    {
      break;
    }

    Element = ausdk::AUScope::GetElement((a1 + 80), v5);
    if (!Element)
    {
LABEL_32:
      ausdk::Throw(0xFFFFD583);
    }

    (*(*Element + 56))(Element, &v49);
    ++v5;
  }

  for (i = 0; ; ++i)
  {
    v10 = *(a1 + 168);
    if (v10)
    {
      LODWORD(v11) = (*(*v10 + 24))(v10);
    }

    else
    {
      v11 = (*(a1 + 152) - *(a1 + 144)) >> 3;
    }

    if (i >= v11)
    {
      break;
    }

    v12 = ausdk::AUScope::GetElement((a1 + 128), i);
    if (!v12)
    {
      goto LABEL_32;
    }

    (*(*v12 + 56))(v12, &v46);
  }

  v13 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v14 & 1) == 0 || ((*(*v13 + 40))(v13, 15), v15 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v16 & 1) == 0) || (ausdk::AUElement::SetParameter(v15, 0, 160.0), v17 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v18 & 1) == 0) || (ausdk::AUElement::SetParameter(v17, 1u, 0.0), v19 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v20 & 1) == 0) || (ausdk::AUElement::SetParameter(v19, 2u, 0.0), v21 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v22 & 1) == 0) || (ausdk::AUElement::SetParameter(v21, 3u, 0.0), v23 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v24 & 1) == 0) || (ausdk::AUElement::SetParameter(v23, 4u, 160.0), v25 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v26 & 1) == 0) || (ausdk::AUElement::SetParameter(v25, 5u, 0.95), v27 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v28 & 1) == 0) || (ausdk::AUElement::SetParameter(v27, 6u, 0.05), v29 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v30 & 1) == 0) || (ausdk::AUElement::SetParameter(v29, 7u, 0.0), v31 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v32 & 1) == 0) || (ausdk::AUElement::SetParameter(v31, 0xAu, 0.95), v33 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v34 & 1) == 0) || (ausdk::AUElement::SetParameter(v33, 0xBu, 0.95), v35 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v36 & 1) == 0) || (ausdk::AUElement::SetParameter(v35, 0xCu, 0.28), v37 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v38 & 1) == 0) || (ausdk::AUElement::SetParameter(v37, 9u, 1.0), v39 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v40 & 1) == 0) || (ausdk::AUElement::SetParameter(v39, 8u, 0.0), v41 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v42 & 1) == 0) || (ausdk::AUElement::SetParameter(v41, 0xDu, 100.0), v43 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v44 & 1) == 0))
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v43, 0xEu, -200.0);
  *(a1 + 376) = 1;
  (*(*a1 + 512))(a1, 512);
  return a1;
}

void sub_1DDD24C30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = (v10 + 760);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&a10);
  v13 = *(v10 + 736);
  if (v13)
  {
    *(v10 + 744) = v13;
    operator delete(v13);
  }

  v14 = *v11;
  if (*v11)
  {
    *(v10 + 720) = v14;
    operator delete(v14);
  }

  v15 = *(v10 + 672);
  if (v15)
  {
    *(v10 + 680) = v15;
    operator delete(v15);
  }

  v16 = *(v10 + 648);
  if (v16)
  {
    *(v10 + 656) = v16;
    operator delete(v16);
  }

  a10 = (v10 + 624);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&a10);
  ausdk::AUBase::~AUBase(v10);
  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUEcConvergenceOversight>::Factory()
{
  result = malloc_type_malloc(0x918uLL, 0x10F30401C28B429uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUEcConvergenceOversight>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUEcConvergenceOversight>::Destruct;
  return result;
}

uint64_t ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUEcConvergenceOversight>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v3 = (a1 + 572);
  v4 = ausdk::AUBase::AUBase(a1, a2, 3, 1);
  *v4 = &unk_1F5932220;
  *(v4 + 66) = 0;
  *(v4 + 533) = 0;
  *(v4 + 68) = 0x6447A0000;
  *(v4 + 69) = 0x600000006;
  *(v4 + 560) = 1;
  *(v4 + 564) = 0x600000001;
  *v3 = xmmword_1DE09C570;
  *(v4 + 147) = 0x40000000;
  *&v5 = 0x100000001;
  *(&v5 + 1) = 0x100000001;
  *(v4 + 37) = v5;
  *(v4 + 152) = 1;
  *(v4 + 306) = 0;
  *(v4 + 77) = 0;
  *(v4 + 180) = 0;
  v6 = (v4 + 728);
  *(v4 + 728) = 0u;
  *(v4 + 186) = 1065353216;
  *(v4 + 100) = 0x43FA000042480000;
  *(v4 + 202) = 1;
  v3[21] = xmmword_1DE09C580;
  v3[22] = xmmword_1DE09C590;
  *(v4 + 352) = 0;
  *(v4 + 918) = 0;
  *(v4 + 1838) = 0;
  *(v4 + 232) = 0;
  *(v4 + 115) = 0u;
  *(v4 + 466) = 507307272;
  *(v4 + 934) = 0;
  *(v4 + 117) = 0u;
  *(v4 + 118) = xmmword_1DE09C5A0;
  *(v4 + 120) = 0u;
  *(v4 + 121) = 0u;
  *(v4 + 122) = xmmword_1DE09C5B0;
  *(v4 + 246) = 0x200000001;
  v7 = (v4 + 1976);
  *(v4 + 1976) = xmmword_1DE09C5C0;
  *(v4 + 501) = 0;
  *(v4 + 249) = 0;
  *(v4 + 2000) = 0;
  *(v4 + 251) = 0x1E0000003C0;
  *(v4 + 504) = 0;
  *(v4 + 271) = 0;
  *(v4 + 544) = 1;
  v8 = (v4 + 2184);
  *(v4 + 2248) = 0u;
  *(v4 + 554) = 0;
  *(v4 + 2184) = 0u;
  *(v4 + 2200) = 0u;
  ausdk::AUBase::CreateElements(v4);
  v9 = 0;
  v106 = 0x408F400000000000;
  v107 = xmmword_1DE09BD50;
  v108 = xmmword_1DE09BD60;
  while (1)
  {
    v10 = *(a1 + 120);
    if (v10)
    {
      LODWORD(v11) = (*(*v10 + 24))(v10);
    }

    else
    {
      v11 = (*(a1 + 104) - *(a1 + 96)) >> 3;
    }

    if (v9 >= v11)
    {
      break;
    }

    Element = ausdk::AUScope::GetElement((a1 + 80), v9);
    if (!Element)
    {
LABEL_60:
      ausdk::Throw(0xFFFFD583);
    }

    (*(*Element + 56))(Element, &v106);
    ++v9;
  }

  for (i = 0; ; ++i)
  {
    v14 = *(a1 + 168);
    if (v14)
    {
      LODWORD(v15) = (*(*v14 + 24))(v14);
    }

    else
    {
      v15 = (*(a1 + 152) - *(a1 + 144)) >> 3;
    }

    if (i >= v15)
    {
      break;
    }

    v16 = ausdk::AUScope::GetElement((a1 + 128), i);
    if (!v16)
    {
      goto LABEL_60;
    }

    (*(*v16 + 56))(v16, &v106);
  }

  v17 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v18 & 1) == 0
    || ((*(*v17 + 40))(v17, 43), v19 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v20 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v19, 0, 0.0), v21 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v22 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v21, 1u, 0.0), v23 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v24 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v23, 2u, 0.0), v25 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v26 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v25, 3u, 0.0), v27 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v28 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v27, 4u, 1.0), v29 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v30 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v29, 5u, 6.0), v31 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v32 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v31, 6u, 4.0), v33 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v34 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v33, 7u, 50.0), v35 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v36 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v35, 8u, 300.0), v37 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v38 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v37, 0xBu, -70.0), v39 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v40 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v39, 0xCu, -65.0), v41 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v42 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v41, 9u, -20.0), v43 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v44 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v43, 0xAu, -12.0), v45 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v46 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v45, 0xDu, 0.2), v47 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v48 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v47, 0xEu, 6.0), v49 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v50 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v49, 0xFu, 4.0), v51 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v52 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v51, 0x10u, 4.0), v53 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v54 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v53, 0x11u, 4.0), v55 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v56 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v55, 0x12u, 90.0), v57 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v58 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v57, 0x13u, 80.0), v59 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v60 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v59, 0x14u, 70.0), v61 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v62 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v61, 0x15u, -65.0), v63 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v64 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v63, 0x16u, 200.0), v65 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v66 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v65, 0x17u, -200.0), v67 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v68 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v67, 0x18u, 35.0), v69 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v70 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v69, 0x19u, 60.0), v71 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v72 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v71, 0x1Au, 2.0), v73 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v74 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v73, 0x1Bu, 4.0), v75 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v76 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v75, 0x1Cu, 0.0), v77 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v78 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v77, 0x1Du, 1024.0), v79 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v80 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v79, 0x1Eu, 80.0), v81 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v82 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v81, 0x1Fu, 200.0), v83 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v84 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v83, 0x20u, 350.0), v85 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v86 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v85, 0x21u, 0.85), v87 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v88 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v87, 0x22u, 7.25), v89 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v90 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v89, 0x23u, 6.75), v91 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v92 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v91, 0x24u, 5.75), v93 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v94 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v93, 0x25u, 0.0), v95 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v96 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v95, 0x26u, 0.0), v97 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v98 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v97, 0x27u, 0.0), v99 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v100 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v99, 0x28u, 0.0), v101 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v102 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v101, 0x29u, 0.0), v103 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v104 & 1) == 0))
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v103, 0x2Au, 0.0);
  *(a1 + 376) = 1;
  (*(*a1 + 512))(a1, 32);
  *(a1 + 540) = 0;
  *(a1 + 616) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 648) = 0u;
  *(a1 + 664) = 0u;
  *(a1 + 680) = 0u;
  *(a1 + 696) = 0u;
  *(a1 + 712) = 0;
  *v6 = 0u;
  *(a1 + 1144) = 0u;
  *(a1 + 1160) = 0u;
  *(a1 + 1176) = 0u;
  *(a1 + 1192) = 0u;
  *(a1 + 1208) = 0u;
  *(a1 + 1224) = 0u;
  *(a1 + 1240) = 0u;
  *(a1 + 1256) = 0u;
  *(a1 + 1272) = 0u;
  *(a1 + 1392) = 0u;
  *(a1 + 1376) = 0u;
  *(a1 + 1360) = 0u;
  *(a1 + 1344) = 0u;
  *(a1 + 1328) = 0u;
  *(a1 + 1312) = 0u;
  *(a1 + 1864) = 507307272;
  *(a1 + 532) = 0;
  *(a1 + 1868) = 0;
  *(a1 + 1888) = 0x20000000400;
  *(a1 + 1896) = 1;
  *(a1 + 1904) = 0u;
  *(a1 + 1920) = 0u;
  *(a1 + 1936) = 0u;
  *(a1 + 1952) = xmmword_1DE09C5B0;
  *(a1 + 1968) = 0x100000001;
  *v7 = xmmword_1DE09C5D0;
  *(a1 + 1992) = 0;
  *(a1 + 2008) = 0x1E0000003C0;
  *(a1 + 2016) = 928;
  *(a1 + 2168) = 0;
  *(a1 + 2176) = 1;
  *(a1 + 2000) = 0;
  *(a1 + 2004) = 0;
  *(a1 + 2236) = 0;
  *(a1 + 2220) = 0u;
  *(a1 + 2024) = 0u;
  *(a1 + 2040) = 0u;
  *(a1 + 2056) = 0u;
  *(a1 + 2072) = 0u;
  *(a1 + 2088) = 0u;
  *(a1 + 2104) = 0u;
  *(a1 + 2120) = 0u;
  *(a1 + 2136) = 0u;
  *(a1 + 2152) = 0u;
  *v8 = 0u;
  v8[1] = 0u;
  return a1;
}

void sub_1DDD256A4(_Unwind_Exception *a1)
{
  v3 = *(v1 + 282);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(v1 + 235);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  ausdk::AUBase::~AUBase(v1);
  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessLookup,AUSilenceNonFiniteAnalyzer>::Factory()
{
  result = malloc_type_malloc(0x2A0uLL, 0x10F3040DACDCF74uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessLookup,AUSilenceNonFiniteAnalyzer>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessLookup,AUSilenceNonFiniteAnalyzer>::Destruct;
  return result;
}

ausdk::AUBase *ausdk::APFactory<ausdk::AUBaseProcessLookup,AUSilenceNonFiniteAnalyzer>::Construct(ausdk::AUBase *a1, OpaqueAudioComponentInstance *a2)
{
  v3 = ausdk::AUBase::AUBase(a1, a2, 1, 1);
  *v3 = &unk_1F5939F28;
  *(v3 + 132) = 0;
  *(v3 + 531) = 0;
  *(v3 + 536) = 0u;
  *(v3 + 69) = 0xBF80000000000000;
  *(v3 + 35) = 0u;
  *(v3 + 36) = 0u;
  *(v3 + 37) = 0u;
  ausdk::AUBase::CreateElements(v3);
  v4 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v5 & 1) == 0 || ((*(*v4 + 40))(v4, 7), v6 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v7 & 1) == 0) || (ausdk::AUElement::SetParameter(v6, 0, 0.0), v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v9 & 1) == 0) || (ausdk::AUElement::SetParameter(v8, 1u, 0.0), v10 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v11 & 1) == 0) || (ausdk::AUElement::SetParameter(v10, 2u, 0.0), v12 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v13 & 1) == 0) || (ausdk::AUElement::SetParameter(v12, 3u, 0.0), v14 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v15 & 1) == 0) || (ausdk::AUElement::SetParameter(v14, 6u, -1.0), v16 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v17 & 1) == 0) || (ausdk::AUElement::SetParameter(v16, 4u, 0.0), v18 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v19 & 1) == 0))
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v18, 5u, 0.0);
  return a1;
}

void *ausdk::APFactory<ausdk::AUBaseProcessLookup,AUMixGainCompensation>::Factory()
{
  result = malloc_type_malloc(0x260uLL, 0x10F304095E42E06uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessLookup,AUMixGainCompensation>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessLookup,AUMixGainCompensation>::Destruct;
  return result;
}

ausdk::AUBase *ausdk::APFactory<ausdk::AUBaseProcessLookup,AUMixGainCompensation>::Construct(ausdk::AUBase *a1, OpaqueAudioComponentInstance *a2)
{
  v3 = ausdk::AUBase::AUBase(a1, a2, 1, 1);
  *v3 = &unk_1F591C2B8;
  *(v3 + 528) = 0;
  *(v3 + 532) = 0;
  ausdk::AUBase::CreateElements(v3);
  v4 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v5 & 1) == 0 || ((*(*v4 + 40))(v4, 2), v6 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v7 & 1) == 0) || (ausdk::AUElement::SetParameter(v6, 0, 0.0), v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v9 & 1) == 0))
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v8, 1u, 0.0);
  return a1;
}

void *ausdk::APFactory<ausdk::AUBaseProcessLookup,AUAmbienceLeveler>::Factory()
{
  result = malloc_type_malloc(0x4B50uLL, 0x10F304051C722A6uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessLookup,AUAmbienceLeveler>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessLookup,AUAmbienceLeveler>::Destruct;
  return result;
}

void *ausdk::APFactory<ausdk::AUBaseProcessLookup,AUVolumeTaper>::Factory()
{
  result = malloc_type_malloc(0x8D0uLL, 0x10F30405467B39EuLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessLookup,AUVolumeTaper>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessLookup,AUVolumeTaper>::Destruct;
  return result;
}

void *ausdk::APFactory<ausdk::AUBaseProcessLookup,AULoudspeakerSystemIDV2>::Factory()
{
  result = malloc_type_malloc(0x8F8uLL, 0x10F304005072149uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessLookup,AULoudspeakerSystemIDV2>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessLookup,AULoudspeakerSystemIDV2>::Destruct;
  return result;
}

uint64_t ausdk::APFactory<ausdk::AUBaseProcessLookup,AULoudspeakerSystemIDV2>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v3 = AUDspLibWithNewParameters::AUDspLibWithNewParameters(a1, a2, &DspLib::kBubbleParameterConverters, &DspLib::LoudspeakerSystemIDV2::Parameters::kSystemDefinition, @"AULoudspeakerSystemIDV2ViewFactory");
  *v3 = &unk_1F5936D88;
  *(v3 + 2176) = 0;
  *(v3 + 2200) = 0;
  *(v3 + 2208) = 0;
  *(v3 + 2224) = 0;
  *(v3 + 2216) = 0;
  ausdk::AUBase::SetParameter(v3, 0x40000000u, 0, 0, 0.0);
  return a1;
}

void sub_1DDD25CD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v12 = v11;
  a10 = v12;
  std::vector<std::unique_ptr<DspLib::Loudspeaker::Calibration::SpTS::SpeakerCalibrationProperties>>::__destroy_vector::operator()[abi:ne200100](&a10);
  if (*(v10 + 2200) == 1)
  {
    v14 = *(v10 + 2176);
    if (v14)
    {
      *(v10 + 2184) = v14;
      operator delete(v14);
    }
  }

  AUDspLib::~AUDspLib(v10);
  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AULoudspeakerManagerV2>::Factory()
{
  result = malloc_type_malloc(0x980uLL, 0x10F30404B95E495uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AULoudspeakerManagerV2>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AULoudspeakerManagerV2>::Destruct;
  return result;
}

ausdk::AUBase *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AULoudspeakerManagerV2>::Construct(ausdk::AUBase *a1, OpaqueAudioComponentInstance *a2)
{
  v3 = AUDspLibWithNewParameters::AUDspLibWithNewParameters(a1, a2, &DspLib::kBubbleParameterConverters, &DspLib::LoudspeakerManagerV2::Parameters::kSystemDefinition, @"AULoudspeakerManagerV2_ViewFactory");
  *v3 = &unk_1F5930EF0;
  *(v3 + 2176) = 0u;
  *(v3 + 2192) = 0u;
  *(v3 + 2208) = vdupq_n_s32(0x42480000u);
  *(v3 + 2224) = 0;
  AULoudspeakerManagerV2::TimeScale<float>::TimeScale(v3 + 2232, "cpms_ts_i");
  AULoudspeakerManagerV2::TimeScale<float>::TimeScale(v7, "cpms_ts_100");
  AULoudspeakerManagerV2::TimeScale<float>::withPowerSmootherTC(a1 + 2264, v7, 0.1);
  AULoudspeakerManagerV2::TimeScale<float>::TimeScale(v6, "cpms_ts_1000");
  AULoudspeakerManagerV2::TimeScale<float>::withPowerSmootherTC(a1 + 2296, v6, 1.0);
  AULoudspeakerManagerV2::TimeScale<float>::TimeScale(cf, "cpms_ts_thermal");
  AULoudspeakerManagerV2::TimeScale<float>::withPowerSmootherTC(a1 + 2328, cf, 60.0);
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v6[0])
  {
    CFRelease(v6[0]);
  }

  if (v7[0])
  {
    CFRelease(v7[0]);
  }

  *(a1 + 1180) = 257;
  ausdk::AUBase::SetParameter(a1, 0x40000000u, 0, 0, 0.0);
  ausdk::AUBase::SetParameter(a1, 0x40000001u, 0, 0, 0.0);
  ausdk::AUBase::SetParameter(a1, 0x40000002u, 0, 0, 0.0);
  return a1;
}

void sub_1DDD25F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17)
{
  AULoudspeakerManagerV2::TimeScale<float>::~TimeScale(&a13);
  AULoudspeakerManagerV2::TimeScale<float>::~TimeScale(&a17);
  v19 = 96;
  v20 = (v17 + 2296);
  do
  {
    v20 = AULoudspeakerManagerV2::TimeScale<float>::~TimeScale(v20) - 4;
    v19 -= 32;
  }

  while (v19);
  a17 = (v17 + 2184);
  std::vector<std::unique_ptr<DspLib::Loudspeaker::Calibration::SpTS::SpeakerCalibrationProperties>>::__destroy_vector::operator()[abi:ne200100](&a17);
  applesauce::CF::DictionaryRef::~DictionaryRef((v17 + 2176));
  AUDspLib::~AUDspLib(v17);
  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AULoudspeakerManager>::Factory()
{
  result = malloc_type_malloc(0x8C8uLL, 0x10F3040227D8F6EuLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AULoudspeakerManager>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AULoudspeakerManager>::Destruct;
  return result;
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AULoudspeakerManager>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  result = AUDspLibWithNewParameters::AUDspLibWithNewParameters(a1, a2, &DspLib::kBubbleParameterConverters, &DspLib::LoudspeakerManagerV1::Parameters::kSystemDefinition, @"AULoudspeakerManager_ViewFactory");
  *result = &unk_1F59358B0;
  result[272] = 0;
  return result;
}

void *ausdk::APFactory<ausdk::AUBaseProcessLookup,AULexiPlate>::Factory()
{
  result = malloc_type_malloc(0x8C0uLL, 0x10F30406F1CA3E8uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessLookup,AULexiPlate>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessLookup,AULexiPlate>::Destruct;
  return result;
}

void *ausdk::APFactory<ausdk::AUBaseProcessLookup,AULexiPlate>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  result = AUDspLibWithNewParameters::AUDspLibWithNewParameters(a1, a2, &DspLib::kBubbleParameterConverters, &DspLib::LexiPlate::Parameters::kSystemDefinition, @"AULexiPlate_ViewFactory");
  *result = &unk_1F5937590;
  return result;
}

void *ausdk::APFactory<ausdk::AUBaseProcessAndMultipleLookup,AULoudnessNormalizer>::Factory()
{
  result = malloc_type_malloc(0x8A0uLL, 0x10F30404E271021uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessAndMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessAndMultipleLookup,AULoudnessNormalizer>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessAndMultipleLookup,AULoudnessNormalizer>::Destruct;
  return result;
}

void *ausdk::APFactory<ausdk::AUBaseProcessLookup,AUXTC>::Factory()
{
  result = malloc_type_malloc(0x13C0uLL, 0x10F304050F74BCEuLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessLookup,AUXTC>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessLookup,AUXTC>::Destruct;
  return result;
}

void ausdk::APFactory<ausdk::AUBaseProcessLookup,AUXTC>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v4 = 0uLL;
  v5 = 0;
  v3 = AUDspLib::AUDspLib(a1, a2, &kParameterList, &v4, @"AUXTC_ViewFactory", 0);
  *v3 = &unk_1F59335C8;
  DspLib::XTC::Algorithm::Algorithm((v3 + 268));
  *(a1 + 2696) = 0;
  *(a1 + 2704) = 850045863;
  *(a1 + 2712) = 0u;
  *(a1 + 2728) = 0u;
  *(a1 + 2744) = 0u;
  *(a1 + 2753) = 0u;
  *(a1 + 2769) = 1;
  dspLibMessenger((a1 + 2776));
  *(a1 + 2816) = &unk_1F5933858;
  *(a1 + 2880) = &unk_1F5933878;
  boost::lockfree::queue<std::vector<std::vector<float>> *,boost::lockfree::capacity<10ul>>::queue((a1 + 2944));
  boost::lockfree::queue<std::vector<std::vector<float>> *,boost::lockfree::capacity<10ul>>::queue((a1 + 3904));
  *(a1 + 4865) = 0;
  operator new();
}

void sub_1DDD264EC(_Unwind_Exception *a1)
{
  *(v1 + 2816) = v2;
  ca::concurrent::deferred_deletion_queue<DspLib::XTC::FIRMatrix,10ul,std::default_delete<DspLib::XTC::FIRMatrix>>::~deferred_deletion_queue(v3);
  v5 = *(v1 + 2784);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  std::mutex::~mutex((v1 + 2704));

  DspLib::XTC::Algorithm::~Algorithm((v1 + 2144));
  AUDspLib::~AUDspLib(v1);
  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessLookup,AUThermalSpeakerProtection>::Factory()
{
  result = malloc_type_malloc(0x8A0uLL, 0x10F30404E271021uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessLookup,AUThermalSpeakerProtection>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessLookup,AUThermalSpeakerProtection>::Destruct;
  return result;
}

void *ausdk::APFactory<ausdk::AUBaseProcessLookup,AUThermalSpeakerProtection>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v3 = 0uLL;
  v4 = 0;
  result = AUDspLib::AUDspLib(a1, a2, &kParameterList, &v3, @"AUThermalSpeakerProtection_ViewFactory", 0);
  *result = &unk_1F592EA80;
  return result;
}

void *ausdk::APFactory<ausdk::AUBaseProcessLookup,AUPeakPowerGuard>::Factory()
{
  result = malloc_type_malloc(0x8A8uLL, 0x10F30402FA8CEE2uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessLookup,AUPeakPowerGuard>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessLookup,AUPeakPowerGuard>::Destruct;
  return result;
}

void *ausdk::APFactory<ausdk::AUBaseProcessLookup,AUPeakPowerGuard>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v5[0] = DspLib::PeakPowerGuard::Parameters::kNames;
  v5[1] = 47;
  v5[2] = &DspLib::PeakPowerGuard::Parameters::kUnits;
  v5[3] = 47;
  v5[4] = &DspLib::PeakPowerGuard::Parameters::kFlags;
  v5[5] = 47;
  v5[6] = &_ZGRN6DspLib14PeakPowerGuard10ParametersL8kMinimumE__0;
  v5[7] = 47;
  v5[8] = &_ZGRN6DspLib14PeakPowerGuard10ParametersL8kMaximumE__0;
  v5[9] = 47;
  v5[10] = &_ZGRN6DspLib14PeakPowerGuard10ParametersL8kDefaultE__0;
  v5[11] = 47;
  v5[12] = &_ZGRN6DspLib14PeakPowerGuard10ParametersL13kAUParametersE_;
  v5[13] = 38;
  v5[14] = &_ZGRN6DspLib14PeakPowerGuard10ParametersL20kDefaultAUParametersE_;
  v5[15] = 38;
  v5[16] = &_ZGRN6DspLib14PeakPowerGuard10ParametersL7kClumpsE_;
  v5[17] = 38;
  v5[18] = DspLib::PeakPowerGuard::Parameters::kClumpNames;
  v5[19] = 5;
  v3 = 0uLL;
  v4 = 0;
  result = AUDspLib::AUDspLib(a1, a2, v5, &v3, @"AUPeakPowerGuard_ViewFactory", 0);
  *result = &unk_1F5933308;
  result[268] = 0;
  return result;
}

void *ausdk::APFactory<ausdk::AUBaseProcessLookup,AULittleLateNightMode>::Factory()
{
  result = malloc_type_malloc(0x2C0uLL, 0x10F3040E053E4BCuLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessLookup,AULittleLateNightMode>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessLookup,AULittleLateNightMode>::Destruct;
  return result;
}

uint64_t ausdk::APFactory<ausdk::AUBaseProcessLookup,AULittleLateNightMode>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = 1;
  v4 = ausdk::AUBase::AUBase(a1, a2, 1, 1);
  v5 = 0;
  *(v4 + 276) = 0;
  *(v4 + 68) = 0;
  *(v4 + 33) = 0u;
  *(v4 + 554) = 1;
  *(v4 + 139) = 0;
  *(v4 + 560) = 0;
  *(v4 + 147) = 0;
  *(v4 + 568) = 0u;
  *(v4 + 584) = 0;
  *v4 = &unk_1F591BDA8;
  v6 = (v4 + 592);
  *(v4 + 628) = 0x3F8000003F800000;
  *(v4 + 74) = 0;
  *(v4 + 600) = 0u;
  *(v4 + 616) = 0;
  *(v4 + 636) = 0;
  *(v4 + 620) = 0;
  do
  {
    v7 = v3;
    ausdk::AUBase::SetParameter(a1, v5, 0, 0, 0.0);
    v3 = 0;
    v5 = *(a1 + 620) + 1;
    *(a1 + 620) = v5;
  }

  while ((v7 & 1) != 0);
  v8 = presetCreateForNumberOfChannels(0, *(a1 + 636));
  if (!CFDictionaryContainsKey(v8, @"DSPchain"))
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_40;
    }

    inDesc.componentType = 136315394;
    *&inDesc.componentSubType = "AULittleLateNightMode.cpp";
    LOWORD(inDesc.componentFlags) = 1024;
    *(&inDesc.componentFlags + 2) = 63;
    v28 = MEMORY[0x1E69E9C10];
    v29 = "%25s:%-5d  key 'DSPchain' not found";
LABEL_39:
    _os_log_impl(&dword_1DDB85000, v28, OS_LOG_TYPE_ERROR, v29, &inDesc, 0x12u);
    goto LABEL_40;
  }

  Value = CFDictionaryGetValue(v8, @"DSPchain");
  if (!Value)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_40;
    }

    inDesc.componentType = 136315394;
    *&inDesc.componentSubType = "AULittleLateNightMode.cpp";
    LOWORD(inDesc.componentFlags) = 1024;
    *(&inDesc.componentFlags + 2) = 66;
    v28 = MEMORY[0x1E69E9C10];
    v29 = "%25s:%-5d  could not load DSPchain";
    goto LABEL_39;
  }

  v10 = CFStringCreateWithFormat(0, 0, @"Processor_%d", 0);
  LODWORD(v11) = 0;
LABEL_6:
  if (!CFDictionaryContainsKey(Value, v10))
  {
    goto LABEL_35;
  }

  v12 = CFDictionaryGetValue(Value, v10);
  if (v12)
  {
    v13 = convertCFStringToOSType(v12);
    if (v13)
    {
      outInstance = 0;
      inDesc.componentType = 1635083896;
      inDesc.componentSubType = v13;
      *&inDesc.componentManufacturer = 1634758764;
      inDesc.componentFlagsMask = 0;
      Next = AudioComponentFindNext(0, &inDesc);
      v15 = AudioComponentInstanceNew(Next, &outInstance);
      if (outInstance)
      {
        if (!v15)
        {
          v16 = v6;
          v17 = *(a1 + 600);
          v18 = *(a1 + 608);
          if (v17 >= v18)
          {
            v20 = *v16;
            v21 = v17 - *v16;
            v22 = v21 >> 3;
            v23 = (v21 >> 3) + 1;
            if (v23 >> 61)
            {
              std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
            }

            v24 = v18 - v20;
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

            *(8 * v22) = outInstance;
            v19 = 8 * v22 + 8;
            memcpy(0, v20, v21);
            *(a1 + 592) = 0;
            *(a1 + 600) = v19;
            *(a1 + 608) = 0;
            if (v20)
            {
              operator delete(v20);
            }
          }

          else
          {
            *v17 = outInstance;
            v19 = (v17 + 8);
          }

          *(a1 + 600) = v19;
          v6 = v16;
        }
      }
    }

    v26 = 0;
    v27 = *(*(a1 + 600) - 8);
    while (1)
    {
      inDesc.componentType = 0;
      AudioUnitGetPropertyInfo(v27, 3u, 0, 0, &inDesc.componentType, 0);
      if (v26 >= inDesc.componentType >> 2)
      {
        CFRelease(v10);
        v11 = (v11 + 1);
        v10 = CFStringCreateWithFormat(0, 0, @"Processor_%d", v11);
        goto LABEL_6;
      }

      LODWORD(outInstance) = 0;
      if (AudioUnitGetParameter(v27, v26, 0, 0, &outInstance))
      {
        break;
      }

      ausdk::AUBase::SetParameter(a1, *(a1 + 620), 0, 0, *&outInstance);
      ++*(a1 + 620);
      ++v26;
    }

    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }

    inDesc.componentType = 136315394;
    *&inDesc.componentSubType = "AULittleLateNightMode.cpp";
    LOWORD(inDesc.componentFlags) = 1024;
    *(&inDesc.componentFlags + 2) = 83;
    v30 = MEMORY[0x1E69E9C10];
    v31 = "%25s:%-5d  could not get parameter value";
    goto LABEL_34;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    inDesc.componentType = 136315394;
    *&inDesc.componentSubType = "AULittleLateNightMode.cpp";
    LOWORD(inDesc.componentFlags) = 1024;
    *(&inDesc.componentFlags + 2) = 73;
    v30 = MEMORY[0x1E69E9C10];
    v31 = "%25s:%-5d  could not get processorSubType string";
LABEL_34:
    _os_log_impl(&dword_1DDB85000, v30, OS_LOG_TYPE_ERROR, v31, &inDesc, 0x12u);
  }

LABEL_35:
  if (v10)
  {
    CFRelease(v10);
  }

LABEL_40:
  if (v8)
  {
    CFRelease(v8);
  }

  return a1;
}

void sub_1DDD26E04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<std::unique_ptr<OpaqueAudioComponentInstance,applesauce::raii::v1::detail::opaque_deletion_functor<OpaqueAudioComponentInstance*,&(AudioComponentInstanceDispose)>>>::__destroy_vector::operator()[abi:ne200100](va);
  ausdk::AUEffectBase::~AUEffectBase(v3);
  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessLookup,AUMozartCompressorSingleBand>::Factory()
{
  result = malloc_type_malloc(0x8A0uLL, 0x10F30404E271021uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessLookup,AUMozartCompressorSingleBand>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessLookup,AUMozartCompressorSingleBand>::Destruct;
  return result;
}

void *ausdk::APFactory<ausdk::AUBaseProcessLookup,AUMozartCompressorSingleBand>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  result = AUDspLib::AUDspLib(a1, a2, &kParameterList, &kPresetList, @"AUMozartCompressorSingleBand_ViewFactory", 0);
  *result = &unk_1F5939528;
  return result;
}

void *ausdk::APFactory<ausdk::AUBaseProcessLookup,AULoudnessMeter>::Factory()
{
  result = malloc_type_malloc(0x8C0uLL, 0x10F30406F1CA3E8uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessLookup,AULoudnessMeter>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessLookup,AULoudnessMeter>::Destruct;
  return result;
}

void *ausdk::APFactory<ausdk::AUBaseProcessLookup,AULoudnessMeter>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  result = AUDspLibWithNewParameters::AUDspLibWithNewParameters(a1, a2, &DspLib::kLegacyConverters, &DspLib::LoudnessMeter::Parameters::kSystemDefinition, @"AULoudnessMeter_ViewFactory");
  *result = &unk_1F5925AE0;
  return result;
}

void *ausdk::APFactory<ausdk::AUBaseProcessLookup,AUToneMeister>::Factory()
{
  result = malloc_type_malloc(0x1180uLL, 0x10F304049EE6BFFuLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessLookup,AUToneMeister>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessLookup,AUToneMeister>::Destruct;
  return result;
}

uint64_t ausdk::APFactory<ausdk::AUBaseProcessLookup,AUToneMeister>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v7 = 0uLL;
  v8 = 0;
  v3 = AUDspLib::AUDspLib(a1, a2, &kParameterList, &v7, @"AUToneMeister_ViewFactory", 0);
  *v3 = &unk_1F592FB98;
  *(v3 + 2144) = 0x447A000000000000;
  *(v3 + 2152) = 0;
  *(v3 + 2160) = 1;
  *(v3 + 2168) = 0;
  *(v3 + 2176) = 1;
  dspLibMessenger((v3 + 2184));
  *(a1 + 2240) = &unk_1F592FE28;
  *(a1 + 2304) = &unk_1F592FE48;
  boost::lockfree::queue<std::vector<std::vector<float>> *,boost::lockfree::capacity<10ul>>::queue((a1 + 2368));
  boost::lockfree::queue<std::vector<std::vector<float>> *,boost::lockfree::capacity<10ul>>::queue((a1 + 3328));
  *(a1 + 4289) = 0;
  *(a1 + 4352) = 0u;
  v4 = [MEMORY[0x1E695DF90] dictionary];
  v5 = *(a1 + 2152);
  *(a1 + 2152) = v4;

  return a1;
}

void sub_1DDD27200(_Unwind_Exception *a1)
{
  v6 = *(v1 + 4360);
  *(v1 + 4360) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(v1 + v4);
  *(v1 + v4) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  *(v1 + 2240) = v2;
  ca::concurrent::deferred_deletion_queue<DspLib::ToneMeister::Algorithm,10ul,std::default_delete<DspLib::ToneMeister::Algorithm>>::~deferred_deletion_queue(v3);
  v8 = *(v1 + 2192);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  std::unique_ptr<DspLib::ToneMeister::CrossFade>::reset[abi:ne200100]((v1 + 2168), 0);

  AUDspLib::~AUDspLib(v1);
  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessLookup,AUMeisterStueck>::Factory()
{
  result = malloc_type_malloc(0x1240uLL, 0x10F30404F0F220CuLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessLookup,AUMeisterStueck>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessLookup,AUMeisterStueck>::Destruct;
  return result;
}

void *ausdk::APFactory<ausdk::AUBaseProcessLookup,AULowFlow>::Factory()
{
  result = malloc_type_malloc(0x8B0uLL, 0x10F3040A3D16584uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessLookup,AULowFlow>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessLookup,AULowFlow>::Destruct;
  return result;
}

uint64_t ausdk::APFactory<ausdk::AUBaseProcessLookup,AULowFlow>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v3 = 0uLL;
  v4 = 0;
  result = AUDspLib::AUDspLib(a1, a2, &kParameterList, &v3, @"AULowFlow_ViewFactory", 0);
  *result = &unk_1F592C900;
  *(result + 2144) = 0;
  *(result + 2152) = 0;
  return result;
}

void *ausdk::APFactory<ausdk::AUBaseProcessLookup,AUBassQueen>::Factory()
{
  result = malloc_type_malloc(0x8A0uLL, 0x10F30404E271021uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessLookup,AUBassQueen>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessLookup,AUBassQueen>::Destruct;
  return result;
}

void *ausdk::APFactory<ausdk::AUBaseProcessLookup,AUBassQueen>::Construct(void *a1, OpaqueAudioComponentInstance *a2)
{
  v14 = 0;
  v15 = 0uLL;
  v3 = AUDspLib::AUDspLib(a1, a2, &kParameterList, &v14, @"AUBassQueenViewFactory", 0);
  v4 = 0;
  *v3 = &unk_1F5934250;
  v5 = (v3 + 10);
  while (1)
  {
    v6 = a1[15];
    if (v6)
    {
      LODWORD(v7) = (*(*v6 + 24))(v6);
    }

    else
    {
      v7 = (a1[13] - a1[12]) >> 3;
    }

    if (v4 >= v7)
    {
      break;
    }

    Element = ausdk::AUScope::GetElement(v5, v4);
    if (!Element)
    {
      ausdk::Throw(0xFFFFD583);
    }

    v14 = 0x40E5888000000000;
    v15 = xmmword_1DE09BD50;
    v16 = xmmword_1DE09BD60;
    (*(*Element + 56))(Element, &v14);
    ++v4;
  }

  for (i = 0; ; ++i)
  {
    v10 = a1[21];
    if (v10)
    {
      LODWORD(v11) = (*(*v10 + 24))(v10);
    }

    else
    {
      v11 = (a1[19] - a1[18]) >> 3;
    }

    if (i >= v11)
    {
      break;
    }

    v12 = ausdk::AUScope::GetElement((a1 + 16), i);
    if (!v12)
    {
      ausdk::Throw(0xFFFFD583);
    }

    v14 = 0x40E5888000000000;
    v15 = xmmword_1DE09BD50;
    v16 = xmmword_1DE09BD60;
    (*(*v12 + 56))(v12, &v14);
  }

  return a1;
}

void *ausdk::APFactory<ausdk::AUBaseProcessLookup,BassKoenig>::Factory()
{
  result = malloc_type_malloc(0x8A8uLL, 0x10F3040A133F89EuLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessLookup,BassKoenig>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessLookup,BassKoenig>::Destruct;
  return result;
}

double ausdk::APFactory<ausdk::AUBaseProcessLookup,BassKoenig>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v8 = 0uLL;
  v9 = 0;
  v2 = AUDspLib::AUDspLib(a1, a2, &kParameterList, &v8, @"BassKoenig_ViewFactory", 0);
  *v2 = &unk_1F591E058;
  __asm { FMOV            V0.2S, #1.0 }

  *(v2 + 2144) = result;
  return result;
}

void *ausdk::APFactory<ausdk::AUBaseProcessLookup,AUVirtualBass>::Factory()
{
  result = malloc_type_malloc(0x8A0uLL, 0x10F30404E271021uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessLookup,AUVirtualBass>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessLookup,AUVirtualBass>::Destruct;
  return result;
}

void *ausdk::APFactory<ausdk::AUBaseProcessLookup,AUVirtualBass>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v3 = 0uLL;
  v4 = 0;
  result = AUDspLib::AUDspLib(a1, a2, &kParameterList, &v3, @"AUVirtualBass_ViewFactory", 0);
  *result = &unk_1F592F438;
  return result;
}

void *ausdk::APFactory<ausdk::AUBaseProcessLookup,AUBuzzKill>::Factory()
{
  result = malloc_type_malloc(0x8A0uLL, 0x10F30404E271021uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessLookup,AUBuzzKill>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessLookup,AUBuzzKill>::Destruct;
  return result;
}

void *ausdk::APFactory<ausdk::AUBaseProcessLookup,AUBuzzKill>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v5[0] = &kDspLibBuzzKillParameterNames;
  v5[1] = 98;
  v5[2] = &_ZGRL29kDspLibBuzzKillParameterUnits_;
  v5[3] = 98;
  v5[4] = &_ZGRL29kDspLibBuzzKillParameterFlags_;
  v5[5] = 98;
  v5[6] = &_ZGRN6DspLib8BuzzKill10ParametersL8kMinimumE_;
  v5[7] = 98;
  v5[8] = &_ZGRN6DspLib8BuzzKill10ParametersL8kMaximumE_;
  v5[9] = 98;
  v5[10] = &_ZGRN6DspLib8BuzzKill10ParametersL8kDefaultE_;
  v5[11] = 98;
  v5[12] = &_ZGRN6DspLib8BuzzKill10ParametersL13kAUParametersE_;
  v5[13] = 45;
  v5[14] = &_ZGRN6DspLib8BuzzKill10ParametersL20kDefaultAUParametersE_;
  v5[15] = 45;
  v6 = 0u;
  v7 = 0u;
  v3 = 0uLL;
  v4 = 0;
  result = AUDspLib::AUDspLib(a1, a2, v5, &v3, @"AUBuzzKill_ViewFactory", 0);
  *result = &unk_1F59350C0;
  return result;
}

void *ausdk::APFactory<ausdk::AUBaseProcessLookup,AUControlFreak>::Factory()
{
  result = malloc_type_malloc(0x8A0uLL, 0x10F30404E271021uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessLookup,AUControlFreak>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessLookup,AUControlFreak>::Destruct;
  return result;
}

void *ausdk::APFactory<ausdk::AUBaseProcessLookup,AUControlFreak>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  result = AUDspLib::AUDspLib(a1, a2, &kParameterList, &kPresetList, @"AUControlFreak_ViewFactory", 1);
  *result = &unk_1F592E4B0;
  return result;
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUSiriECGate>::Factory()
{
  result = malloc_type_malloc(0x3D8uLL, 0x10F30406C680967uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUSiriECGate>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUSiriECGate>::Destruct;
  return result;
}

uint64_t ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUSiriECGate>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v3 = ausdk::AUBase::AUBase(a1, a2, 3, 2);
  *v3 = &unk_1F59293F0;
  *(v3 + 38) = 0u;
  *(v3 + 39) = 0u;
  *(v3 + 40) = 0u;
  *(v3 + 41) = 0u;
  *(v3 + 42) = 0u;
  *(v3 + 43) = 0u;
  *(v3 + 44) = 0u;
  *(v3 + 45) = 0u;
  *(v3 + 46) = 0u;
  *(v3 + 47) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 49) = 0u;
  *(v3 + 50) = 0u;
  *(v3 + 51) = 0u;
  *(v3 + 52) = 0u;
  *(v3 + 53) = 0u;
  *(v3 + 54) = 0u;
  *(v3 + 55) = 0u;
  *(v3 + 56) = 0u;
  *(v3 + 114) = 0;
  if (atomic_load_explicit(&secgSubsystem(void)::onceflag, memory_order_acquire) != -1)
  {
    v34 = &v32;
    v33 = &v34;
    std::__call_once(&secgSubsystem(void)::onceflag, &v33, std::__call_once_proxy[abi:ne200100]<std::tuple<secgSubsystem(void)::$_0 &&>>);
  }

  caulk::deferred_logger::create_v(v37, *secgSubsystem(void)::scope, v4);
  v5 = (a1 + 904);
  v6 = v37[0];
  v37[0] = 0uLL;
  v7 = *(a1 + 912);
  *(a1 + 904) = v6;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    if (*(&v37[0] + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v37[0] + 1));
    }
  }

  v8 = _os_log_pack_size();
  message = caulk::deferred_logger::create_message(*v5, v8 + 88, 2);
  if (message)
  {
    v10 = message;
    *_os_log_pack_fill() = 0;
    caulk::concurrent::messenger::enqueue(*(*v5 + 2), v10);
  }

  ausdk::AUBase::CreateElements(a1);
  *&v37[0] = 0x40CF400000000000;
  *(v37 + 8) = xmmword_1DE09BD50;
  *(&v37[1] + 8) = xmmword_1DE09BD60;
  v34 = 0x40CF400000000000;
  v35 = xmmword_1DE09BD50;
  v36 = xmmword_1DE09BD60;
  Element = ausdk::AUScope::GetElement((a1 + 80), 0);
  if (!Element || ((*(*Element + 56))(Element, v37), (v12 = ausdk::AUScope::GetElement((a1 + 80), 2u)) == 0) || ((*(*v12 + 56))(v12, &v34), (v13 = ausdk::AUScope::GetElement((a1 + 80), 1u)) == 0) || ((*(*v13 + 56))(v13, v37), (v14 = ausdk::AUScope::GetElement((a1 + 128), 0)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  (*(*v14 + 56))(v14, v37);
  v15 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v16 & 1) == 0 || ((*(*v15 + 40))(v15, 7), v17 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v18 & 1) == 0) || (ausdk::AUElement::SetParameter(v17, 0, 512.0), v19 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v20 & 1) == 0) || (ausdk::AUElement::SetParameter(v19, 1u, 25.0), v21 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v22 & 1) == 0) || (ausdk::AUElement::SetParameter(v21, 2u, 0.3), v23 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v24 & 1) == 0) || (ausdk::AUElement::SetParameter(v23, 3u, -25.0), v25 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v26 & 1) == 0) || (ausdk::AUElement::SetParameter(v25, 4u, 50.0), v27 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v28 & 1) == 0) || (ausdk::AUElement::SetParameter(v27, 5u, 64.0), v29 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v30 & 1) == 0))
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v29, 6u, 0.0);
  *(a1 + 536) = 0x100000001;
  *(a1 + 544) = 16000;
  *(a1 + 600) = 0;
  *(a1 + 552) = 0x200000000200;
  *(a1 + 568) = 0x4000000032;
  *(a1 + 528) = 0;
  *(a1 + 576) = xmmword_1DE09C5E0;
  *(a1 + 560) = 0x200000004000;
  *(a1 + 592) = 0xC1C8000038800000;
  *(a1 + 376) = 1;
  (*(*a1 + 512))(a1, 64);
  return a1;
}

void sub_1DDD2805C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  v11 = *(v9 + 912);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  a9 = (v9 + 872);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&a9);
  v12 = *(v9 + 848);
  if (v12)
  {
    *(v9 + 856) = v12;
    operator delete(v12);
  }

  v13 = *(v9 + 824);
  if (v13)
  {
    *(v9 + 832) = v13;
    operator delete(v13);
  }

  v14 = *(v9 + 800);
  if (v14)
  {
    *(v9 + 808) = v14;
    operator delete(v14);
  }

  a9 = (v9 + 776);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&a9);
  a9 = (v9 + 752);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&a9);
  a9 = (v9 + 728);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&a9);
  a9 = (v9 + 704);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&a9);
  a9 = (v9 + 680);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&a9);
  a9 = (v9 + 656);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&a9);
  a9 = (v9 + 632);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&a9);
  a9 = (v9 + 608);
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&a9);
  ausdk::AUBase::~AUBase(v9);
  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUParametricProcessorV2>::Factory()
{
  result = malloc_type_malloc(0x2D8uLL, 0x10F3040741A907BuLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUParametricProcessorV2>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUParametricProcessorV2>::Destruct;
  return result;
}

_BYTE *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUParametricProcessorV2>::Construct(_BYTE *a1, OpaqueAudioComponentInstance *a2)
{
  v3 = ausdk::AUBase::AUBase(a1, a2, 1, 1);
  *v3 = &unk_1F592EF70;
  *(v3 + 33) = 0u;
  *(v3 + 34) = 0u;
  *(v3 + 35) = 0u;
  *(v3 + 36) = 0u;
  *(v3 + 37) = 0u;
  *(v3 + 38) = 0u;
  *(v3 + 39) = 0u;
  *(v3 + 80) = 0;
  *(v3 + 81) = 0x473B800000000200;
  *(v3 + 656) = 0;
  ausdk::AUBase::CreateElements(v3);
  v54 = 0x40E7700000000000;
  v55 = xmmword_1DE09BD50;
  v56 = xmmword_1DE09C560;
  v51 = 0x40E7700000000000;
  v52 = xmmword_1DE09BD50;
  v53 = xmmword_1DE09C560;
  Element = ausdk::AUScope::GetElement((a1 + 80), 0);
  if (!Element || ((*(*Element + 56))(Element, &v54), (v5 = ausdk::AUScope::GetElement((a1 + 128), 0)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  (*(*v5 + 56))(v5, &v51);
  v6 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0);
  if ((v7 & 1) == 0 || ((*(*v6 + 40))(v6, 21), v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v9 & 1) == 0) || (ausdk::AUElement::SetParameter(v8, 0, 1.0), v10 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v11 & 1) == 0) || (ausdk::AUElement::SetParameter(v10, 1u, 0.0), v12 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v13 & 1) == 0) || (ausdk::AUElement::SetParameter(v12, 2u, 0.0), v14 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v15 & 1) == 0) || (ausdk::AUElement::SetParameter(v14, 3u, 0.0), v16 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v17 & 1) == 0) || (ausdk::AUElement::SetParameter(v16, 4u, 16000.0), v18 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v19 & 1) == 0) || (ausdk::AUElement::SetParameter(v18, 5u, 1.0), v20 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v21 & 1) == 0) || (ausdk::AUElement::SetParameter(v20, 6u, 0.0), v22 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v23 & 1) == 0) || (ausdk::AUElement::SetParameter(v22, 7u, 1.0), v24 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v25 & 1) == 0) || (ausdk::AUElement::SetParameter(v24, 8u, 0.0), v26 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v27 & 1) == 0) || (ausdk::AUElement::SetParameter(v26, 9u, 0.0), v28 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v29 & 1) == 0) || (ausdk::AUElement::SetParameter(v28, 0xAu, 0.25), v30 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v31 & 1) == 0) || (ausdk::AUElement::SetParameter(v30, 0xBu, 1.0), v32 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v33 & 1) == 0) || (ausdk::AUElement::SetParameter(v32, 0xCu, 1.0), v34 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v35 & 1) == 0) || (ausdk::AUElement::SetParameter(v34, 0xDu, 0.5), v36 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v37 & 1) == 0) || (ausdk::AUElement::SetParameter(v36, 0xEu, 0.0), v38 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v39 & 1) == 0) || (ausdk::AUElement::SetParameter(v38, 0xFu, 0.0), v40 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v41 & 1) == 0) || (ausdk::AUElement::SetParameter(v40, 0x10u, 0.0), v42 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v43 & 1) == 0) || (ausdk::AUElement::SetParameter(v42, 0x11u, 0.0), v44 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v45 & 1) == 0) || (ausdk::AUElement::SetParameter(v44, 0x12u, 0.0), v46 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v47 & 1) == 0) || (ausdk::AUElement::SetParameter(v46, 0x13u, 0.0), v48 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v49 & 1) == 0))
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v48, 0x14u, 0.0);
  a1[376] = 1;
  return a1;
}

void sub_1DDD285A4(_Unwind_Exception *a1)
{
  PPUtils::ContiguousArray2D<float>::~ContiguousArray2D(v1 + 74);
  PPUtils::ContiguousArray2D<float>::~ContiguousArray2D(v1 + 67);
  std::unique_ptr<ParametricProcessorV2Wrapper>::reset[abi:ne200100](v1 + 66, 0);
  ausdk::AUBase::~AUBase(v1);
  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUSNREstimator>::Factory()
{
  result = malloc_type_malloc(0x2B8uLL, 0x10F3040C68B293CuLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUSNREstimator>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUSNREstimator>::Destruct;
  return result;
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUSNREstimator>::Construct(void *a1, OpaqueAudioComponentInstance *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = ausdk::AUBase::AUBase(a1, a2, 1, 2);
  *v3 = &unk_1F5926BD8;
  *(v3 + 528) = 0;
  *(v3 + 560) = 0;
  *(v3 + 536) = 0u;
  *(v3 + 552) = 0;
  *(v3 + 568) = 0u;
  *(v3 + 584) = 0u;
  *(v3 + 75) = 0x100000000;
  *(v3 + 76) = 0;
  *(v3 + 613) = 0;
  *(v3 + 621) = 1;
  *(v3 + 78) = 0;
  ausdk::AUBase::CreateElements(v3);
  v4 = 0;
  *buf = 0x40D7700000000000;
  *&buf[8] = xmmword_1DE09BD50;
  v17 = xmmword_1DE09BD60;
  while (1)
  {
    v5 = a1[15];
    if (v5)
    {
      LODWORD(v6) = (*(*v5 + 24))(v5);
    }

    else
    {
      v6 = (a1[13] - a1[12]) >> 3;
    }

    if (v4 >= v6)
    {
      break;
    }

    Element = ausdk::AUScope::GetElement((a1 + 10), v4);
    if (!Element)
    {
LABEL_21:
      ausdk::Throw(0xFFFFD583);
    }

    (*(*Element + 56))(Element, buf);
    ++v4;
  }

  for (i = 0; ; ++i)
  {
    v9 = a1[21];
    if (v9)
    {
      LODWORD(v10) = (*(*v9 + 24))(v9);
    }

    else
    {
      v10 = (a1[19] - a1[18]) >> 3;
    }

    if (i >= v10)
    {
      break;
    }

    v11 = ausdk::AUScope::GetElement((a1 + 16), i);
    if (!v11)
    {
      goto LABEL_21;
    }

    (*(*v11 + 56))(v11, buf);
  }

  v12 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 4), 0);
  if ((v13 & 1) == 0)
  {
    abort();
  }

  (*(*v12 + 40))(v12, 12);
  (*(*a1 + 152))(a1, 7, 0, 0, 0, -5.0);
  (*(*a1 + 152))(a1, 2, 0, 0, 0, 0.0);
  (*(*a1 + 152))(a1, 3, 0, 0, 0, 0.0);
  (*(*a1 + 152))(a1, 4, 0, 0, 0, 64.0);
  (*(*a1 + 152))(a1, 0, 0, 0, 0, 0.0);
  (*(*a1 + 152))(a1, 1, 0, 0, 0, 0.98);
  (*(*a1 + 152))(a1, 6, 0, 0, 0, 0.98);
  (*(*a1 + 152))(a1, 5, 0, 0, 0, 120.0);
  (*(*a1 + 152))(a1, 8, 0, 0, 0, 0.0);
  (*(*a1 + 152))(a1, 9, 0, 0, 0, 0.0);
  (*(*a1 + 152))(a1, 10, 0, 0, 0, 1.98);
  (*(*a1 + 152))(a1, 11, 0, 0, 0, 0.3);
  if (AU::SNREstimator::getLog(void)::onceToken != -1)
  {
    dispatch_once(&AU::SNREstimator::getLog(void)::onceToken, &__block_literal_global_12304);
  }

  v14 = AU::SNREstimator::getLog(void)::gLog;
  if (os_log_type_enabled(AU::SNREstimator::getLog(void)::gLog, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    *&buf[4] = a1;
    _os_log_impl(&dword_1DDB85000, v14, OS_LOG_TYPE_INFO, "[%p] created", buf, 0xCu);
  }

  return a1;
}

void sub_1DDD28C28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object)
{
  applesauce::CF::StringRef::~StringRef((v10 + 624));
  v13 = *v12;
  if (*v12)
  {
    *(v10 + 576) = v13;
    operator delete(v13);
  }

  std::optional<CA::AudioBuffersDeprecated>::~optional(v10 + 552);
  applesauce::CF::DictionaryRef::~DictionaryRef((v10 + 544));
  CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(v11);
  ausdk::AUBase::~AUBase(v10);
  _Unwind_Resume(a1);
}

void sub_1DDD28C6C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUMicIssueDetector>::Factory()
{
  result = malloc_type_malloc(0x388uLL, 0x10F304083D8D179uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUMicIssueDetector>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUMicIssueDetector>::Destruct;
  return result;
}

uint64_t ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUMicIssueDetector>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v3 = ausdk::AUBase::AUBase(a1, a2, 2, 5);
  *v3 = &unk_1F592B258;
  v4 = v3 + 528;
  v5 = (v3 + 552);
  *(v3 + 33) = 0u;
  *(v3 + 34) = 0u;
  *(v3 + 35) = 0u;
  *(v3 + 576) = 0;
  *(v3 + 580) = 0u;
  *(v3 + 596) = xmmword_1DE095FA0;
  *(v3 + 153) = 1;
  *(v3 + 616) = 0u;
  *(v3 + 632) = 0u;
  *(v3 + 648) = 0u;
  *(v3 + 664) = 0u;
  *(v3 + 680) = 0u;
  *(v3 + 696) = 0u;
  *(v3 + 712) = 0u;
  *(v3 + 728) = 0u;
  *(v3 + 744) = 0u;
  *(v3 + 760) = 0u;
  *(v3 + 772) = 0u;
  *(v3 + 808) = 0u;
  *(v3 + 824) = 0u;
  *(v3 + 792) = 0u;
  v39 = @"Wind Flag";
  *v40 = 0xA00000000001;
  *&v40[8] = 0;
  *&v40[12] = 1065353216;
  *&v40[20] = 1;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v3 + 528, &v39);
  v39 = @"Blocked Mic Flag";
  *v40 = 0xA00000000001;
  *&v40[8] = 0;
  *&v40[12] = 1065353216;
  *&v40[20] = 1;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v4, &v39);
  v39 = @"Best Mic";
  *v40 = 0xA00000000001;
  *&v40[8] = 0x4120000000000000;
  *&v40[16] = 0x100000000;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v4, &v39);
  v39 = @"Preferred Mic Override";
  *v40 = 0xA00000000001;
  *&v40[8] = 0x41000000BF800000;
  *&v40[16] = 0x1BF800000;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v4, &v39);
  v39 = @"Aggregate Omni Mode";
  *v40 = 0x8000000000000001;
  *&v40[8] = 0;
  *&v40[12] = 1065353216;
  *&v40[20] = 2;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v4, &v39);
  v39 = @"Input Pre-Processing Gain";
  *v40 = 0x800000000000000DLL;
  *&v40[8] = 0x43480000C3480000;
  *&v40[16] = 0x300000000;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v4, &v39);
  v39 = @"Suppression Gain Floor";
  *v40 = 0x800000000000000DLL;
  *&v40[8] = 3276275712;
  *&v40[16] = 0x3C1100000;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v4, &v39);
  v39 = @"Time Constant for PSD Est.";
  *v40 = 0x8000000000000018;
  *&v40[8] = 0x461C400000000000;
  *&v40[16] = 0x442C80000;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v4, &v39);
  v39 = @"Time Constant for Energy Smoothing";
  *v40 = 0x8000000000000018;
  *&v40[8] = 0x461C400000000000;
  *&v40[16] = 0x441A00000;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v4, &v39);
  v39 = @"Time Constant for Raw Ps Energy Smoothing";
  *v40 = 0x8000000000000018;
  *&v40[8] = 0x461C400000000000;
  *&v40[16] = 0x43F800000;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v4, &v39);
  v39 = @"Hysteresis Time for Wind/BlockeMic/BestMic Flags";
  *v40 = 0x8000000000000018;
  *&v40[8] = 0x461C400000000000;
  *&v40[16] = 0x443FA0000;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v4, &v39);
  v39 = @"Hysteresis Time for Wind/BlockeMic Flags offset";
  *v40 = 0x8000000000000018;
  *&v40[8] = 0x461C400000000000;
  *&v40[16] = 0x4447A0000;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v4, &v39);
  v39 = @"Threshold on Wind Probability";
  *v40 = -0.0;
  *&v40[8] = 0;
  *&v40[12] = 0x3F3333333F800000;
  *&v40[20] = 5;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v4, &v39);
  v39 = @"Threshold on Blocked Mic Probability";
  *v40 = -0.0;
  *&v40[8] = 0;
  *&v40[12] = 0x3F3333333F800000;
  *&v40[20] = 5;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v4, &v39);
  v39 = @"ECLee Process";
  *v40 = 0x8000000000000001;
  *&v40[8] = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *&v40[12] = _D0;
  *&v40[20] = 5;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v4, &v39);
  v39 = @"Best Echo Mic Available?";
  *v40 = 0x8000000000000001;
  *&v40[8] = 0;
  *&v40[12] = 1065353216;
  *&v40[20] = 6;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v4, &v39);
  v39 = @"Best Echo Mic Index (e.g., Mic2 for iPhone)";
  *v40 = 0x8000000000000001;
  *&v40[8] = 0x4100000000000000;
  *&v40[16] = 0x640000000;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v4, &v39);
  v39 = @"Primary Mic Blocked or In High Echo Coupling State";
  *v40 = 0xA00000000001;
  *&v40[8] = 0;
  *&v40[12] = 1065353216;
  *&v40[20] = 1;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v4, &v39);
  v39 = @"Time Constant for ECLee Energy Smoothing";
  *v40 = 0x8000000000000018;
  *&v40[8] = 0x461C400000000000;
  *&v40[16] = 0x642C80000;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v4, &v39);
  v39 = @"Hangover Time Onset for Primary Mic Blocked/Coupling Flag";
  *v40 = 0x8000000000000018;
  *&v40[8] = 0x461C400000000000;
  *&v40[16] = 0x641F00000;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v4, &v39);
  v39 = @"Hangover Time Offset for Primary Mic Blocked/Coupling Flag";
  *v40 = 0x8000000000000018;
  *&v40[8] = 0x461C400000000000;
  *&v40[16] = 0x643FA0000;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v4, &v39);
  v39 = @"Low Freq for Blocked Mic Detection Band";
  *v40 = 0x8000000000000008;
  *&v40[8] = 0x469C400000000000;
  *&v40[16] = 0x6457A0000;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v4, &v39);
  v39 = @"High Freq for Blocked Mic Detection Band";
  *v40 = 0x8000000000000008;
  *&v40[8] = 0x469C400000000000;
  *&v40[16] = 0x645FA0000;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v4, &v39);
  v39 = @"Coherence Thr in Blocked Mic Detection Band";
  *v40 = -0.0;
  *&v40[8] = 0;
  *&v40[12] = 0x3F0000003F800000;
  *&v40[20] = 6;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v4, &v39);
  v39 = @"Energy Thr in Blocked Mic Detection Band";
  *v40 = -0.0;
  *&v40[8] = 0x43480000C3480000;
  *&v40[16] = 0x6C2DC0000;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v4, &v39);
  v39 = @"Energy Ration Thr in Blocked Mic Detection Band";
  *v40 = -0.0;
  *&v40[8] = 0x43480000C3480000;
  *&v40[16] = 0x641200000;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v4, &v39);
  v39 = @"Primary Mic";
  *v40 = 0xA00000000001;
  *&v40[8] = 0x4120000000000000;
  *&v40[16] = 0x100000000;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v4, &v39);
  v39 = @"Wind Probability";
  *v40 = 0xA00000000000;
  *&v40[8] = 0;
  *&v40[12] = 1065353216;
  *&v40[20] = -1;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v5, &v39);
  v39 = @"Wind Flag";
  *v40 = 0xA00000000000;
  *&v40[8] = 0;
  *&v40[12] = 1065353216;
  *&v40[20] = -1;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v5, &v39);
  v39 = @"Blocked Mic Probability";
  *v40 = 0xA00000000000;
  *&v40[8] = 0;
  *&v40[12] = 1065353216;
  *&v40[20] = -1;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v5, &v39);
  v39 = @"Blocked Mic Flag";
  *v40 = 0xA00000000001;
  *&v40[8] = 0;
  *&v40[12] = 1065353216;
  *&v40[20] = -1;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v5, &v39);
  v39 = @"Wind Level";
  *v40 = 0xA0000000000DLL;
  *&v40[8] = 0x42700000C30C0000;
  *&v40[16] = 0xFFFFFFFF00000000;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v5, &v39);
  v39 = @"Mic Gain Linear";
  *v40 = 0xA00000000000;
  *&v40[8] = 0x3F80000000000000;
  *&v40[16] = 0xFFFFFFFF00000000;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v5, &v39);
  v39 = @"ECLee Engergy from EC";
  *v40 = 0xA00000000000;
  *&v40[8] = 0x43480000C3480000;
  *&v40[16] = 0xFFFFFFFF00000000;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v5, &v39);
  v39 = @"Echo2Lv from EC";
  *v40 = 0xA00000000000;
  *&v40[8] = 0x43480000C3480000;
  *&v40[16] = 0xFFFFFFFF00000000;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v5, &v39);
  v39 = @"Echo Flag from EC";
  *v40 = 0xA00000000000;
  *&v40[8] = 0x3F80000000000000;
  *&v40[16] = 0xFFFFFFFF00000000;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v5, &v39);
  v39 = @"Echo Leakage from EC";
  *v40 = 0xA00000000000;
  *&v40[8] = 0x43480000C3480000;
  *&v40[16] = 0xFFFFFFFF00000000;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v5, &v39);
  v39 = @"Threshold on ECLee Energy";
  *v40 = -0.0;
  *&v40[8] = 0x43480000C3480000;
  *&v40[16] = -1018691584;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v5, &v39);
  v11 = 8;
  do
  {
    v39 = @"Threshold on ECLee Energy Diff";
    *v40 = -0.0;
    *&v40[8] = 0x43480000C3480000;
    *&v40[16] = -3166175232;
    std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v5, &v39);
    --v11;
  }

  while (v11);
  v39 = @"En Ratio Thr vs Ch0 for Blocked Mic In Echo";
  *v40 = -0.0;
  *&v40[8] = 0x43480000C3480000;
  *&v40[16] = -3202351104;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v5, &v39);
  v39 = @"En Ratio Thr vs Ch1 for Blocked Mic In Echo";
  *v40 = -0.0;
  *&v40[8] = 0x43480000C3480000;
  *&v40[16] = -3191341056;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v5, &v39);
  v39 = @"En Ratio Thr vs Ch2 for Blocked Mic In Echo";
  *v40 = -0.0;
  *&v40[8] = 0x43480000C3480000;
  *&v40[16] = -3202351104;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v5, &v39);
  v39 = @"En Ratio Thr vs Ch3 for Blocked Mic In Echo";
  *v40 = -0.0;
  *&v40[8] = 0x43480000C3480000;
  *&v40[16] = -3191341056;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v5, &v39);
  v12 = 4;
  do
  {
    v39 = @"En Ratio Thr vs ChX for Blocked Mic In Echo";
    *v40 = -0.0;
    *&v40[8] = 0x43480000C3480000;
    *&v40[16] = -3166175232;
    std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v5, &v39);
    --v12;
  }

  while (v12);
  ausdk::AUBase::CreateElements(a1);
  v13 = *(a1 + 528);
  if (*(a1 + 536) != v13)
  {
    v14 = 0;
    v15 = 24;
    do
    {
      ausdk::AUBase::SetParameter(a1, v14++, 0, 0, *(v13 + v15));
      v13 = *(a1 + 528);
      v15 += 32;
    }

    while (v14 < (*(a1 + 536) - v13) >> 5);
  }

  for (i = 0; ; ++i)
  {
    v17 = *(a1 + 816);
    if (v17)
    {
      LODWORD(v18) = (*(*v17 + 24))(v17);
    }

    else
    {
      v18 = (*(a1 + 800) - *(a1 + 792)) >> 3;
    }

    if (i >= v18)
    {
      break;
    }

    if (*(a1 + 560) != *(a1 + 552))
    {
      v19 = 0;
      v20 = 24;
      do
      {
        Element = ausdk::AUScope::GetElement((a1 + 776), i);
        ausdk::AUElement::SetParameter(Element, v19++, *(*v5 + v20));
        v20 += 32;
      }

      while (v19 < (*(a1 + 560) - *(a1 + 552)) >> 5);
    }
  }

  v22 = 0;
  v39 = 0x40D7700000000000;
  *v40 = xmmword_1DE09C190;
  *&v40[16] = xmmword_1DE09C5F0;
  while (1)
  {
    v23 = *(a1 + 120);
    if (v23)
    {
      LODWORD(v24) = (*(*v23 + 24))(v23);
    }

    else
    {
      v24 = (*(a1 + 104) - *(a1 + 96)) >> 3;
    }

    if (v22 >= v24)
    {
      break;
    }

    v25 = ausdk::AUScope::GetElement((a1 + 80), v22);
    if (!v25)
    {
LABEL_44:
      ausdk::Throw(0xFFFFD583);
    }

    (*(*v25 + 56))(v25, &v39);
    ++v22;
  }

  v26 = 0;
  v36 = 0x40D7700000000000;
  v38 = xmmword_1DE09C600;
  v37 = xmmword_1DE09C190;
  v33 = 0x40D7700000000000;
  v34 = xmmword_1DE09BD50;
  v35 = xmmword_1DE09BD60;
  while (1)
  {
    v27 = *(a1 + 168);
    if (v27)
    {
      LODWORD(v28) = (*(*v27 + 24))(v27);
    }

    else
    {
      v28 = (*(a1 + 152) - *(a1 + 144)) >> 3;
    }

    if (v26 >= v28)
    {
      break;
    }

    if (v26 <= 1)
    {
      if (!v26)
      {
        goto LABEL_35;
      }

      goto LABEL_37;
    }

    if (v26 != 2)
    {
      if (v26 != 4)
      {
        if (v26 != 3)
        {
          goto LABEL_42;
        }

LABEL_35:
        v29 = ausdk::AUScope::GetElement((a1 + 128), v26);
        if (!v29)
        {
          goto LABEL_44;
        }

        (*(*v29 + 56))(v29, &v39);
LABEL_37:
        if (v26 != 1)
        {
          goto LABEL_42;
        }
      }

      v30 = ausdk::AUScope::GetElement((a1 + 128), v26);
      if (!v30)
      {
        goto LABEL_44;
      }

      (*(*v30 + 56))(v30, &v36);
      goto LABEL_42;
    }

    v31 = ausdk::AUScope::GetElement((a1 + 128), 2u);
    if (!v31)
    {
      goto LABEL_44;
    }

    (*(*v31 + 56))(v31, &v33);
LABEL_42:
    ++v26;
  }

  *(a1 + 376) = 1;
  return a1;
}

void sub_1DDD298F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11)
{
  v15 = *(v11 + 832);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  std::vector<std::unique_ptr<ausdk::AUElement>>::__destroy_vector::operator()[abi:ne200100](&a11);
  v16 = *(v11 + 752);
  if (v16)
  {
    *(v11 + 760) = v16;
    operator delete(v16);
  }

  a11 = (v11 + 728);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&a11);
  a11 = (v11 + 704);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&a11);
  v17 = *(v11 + 680);
  if (v17)
  {
    *(v11 + 688) = v17;
    operator delete(v17);
  }

  a11 = (v11 + 656);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&a11);
  a11 = (v11 + 632);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&a11);
  v18 = *(v11 + 624);
  *(v11 + 624) = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  v19 = *v13;
  if (*v13)
  {
    *(v11 + 560) = v19;
    operator delete(v19);
  }

  v20 = *v12;
  if (*v12)
  {
    *(v11 + 536) = v20;
    operator delete(v20);
  }

  ausdk::AUBase::~AUBase(v11);
  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUSignalCombiner>::Factory()
{
  result = malloc_type_malloc(0x690uLL, 0x10F30405C2D539AuLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUSignalCombiner>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUSignalCombiner>::Destruct;
  return result;
}

void ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUSignalCombiner>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v3 = ausdk::AUBase::AUBase(a1, a2, 20, 21);
  v4 = 0;
  *v3 = &unk_1F5925DB8;
  *(v3 + 528) = 0;
  *(v3 + 532) = 0u;
  *(v3 + 548) = xmmword_1DE095FA0;
  *(v3 + 564) = 1;
  *(v3 + 584) = 0u;
  *(v3 + 72) = v3 + 584;
  *(v3 + 38) = 0u;
  *(v3 + 75) = v3 + 608;
  *(v3 + 632) = 0u;
  *(v3 + 78) = v3 + 632;
  *(v3 + 41) = 0u;
  *(v3 + 81) = v3 + 656;
  *(v3 + 168) = 0;
  *(v3 + 338) = 0;
  *(v3 + 85) = 0;
  *(v3 + 172) = 0;
  *(v3 + 692) = -1;
  *(v3 + 700) = -1;
  *(v3 + 90) = 0;
  *(v3 + 708) = 0;
  *(v3 + 716) = 0;
  do
  {
    v5 = a1 + v4;
    *(v5 + 728) = 0xFFFFFFFFLL;
    *(v5 + 736) = 0;
    *(a1 + v4 + 740) = 0xFFFFFFFFLL;
    *(v5 + 748) = -1;
    v4 += 24;
  }

  while (v4 != 480);
  *(a1 + 1600) = 0u;
  *(a1 + 1584) = 0u;
  *(a1 + 1576) = 0;
  *(a1 + 1208) = 0u;
  *(a1 + 1224) = 0u;
  *(a1 + 1240) = 0u;
  *(a1 + 1256) = 0u;
  *(a1 + 1272) = 0u;
  *(a1 + 1288) = 0u;
  *(a1 + 1304) = 0u;
  *(a1 + 1320) = 0u;
  *(a1 + 1336) = 0u;
  *(a1 + 1352) = 0u;
  *(a1 + 1368) = 0u;
  *(a1 + 1384) = 0u;
  *(a1 + 1400) = 0u;
  *(a1 + 1416) = 0u;
  *(a1 + 1432) = 0u;
  *(a1 + 1448) = 0u;
  *(a1 + 1464) = 0u;
  *(a1 + 1480) = 0u;
  *(a1 + 1496) = 0u;
  *(a1 + 1512) = 0u;
  *(a1 + 1528) = 0u;
  *(a1 + 1544) = 0u;
  *(a1 + 1560) = 0u;
  operator new();
}

void sub_1DDD2A65C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  a17 = v29 + 1584;
  std::vector<std::unique_ptr<ausdk::AUElement>>::__destroy_vector::operator()[abi:ne200100](&a17);
  v31 = *(v29 + 1544);
  if (v31)
  {
    *(v29 + 1552) = v31;
    operator delete(v31);
  }

  v32 = *(v29 + 1520);
  if (v32)
  {
    *(v29 + 1528) = v32;
    operator delete(v32);
  }

  v33 = *(v29 + 1496);
  if (v33)
  {
    *(v29 + 1504) = v33;
    operator delete(v33);
  }

  v34 = *(v29 + 1472);
  if (v34)
  {
    *(v29 + 1480) = v34;
    operator delete(v34);
  }

  v35 = *(v29 + 1448);
  if (v35)
  {
    *(v29 + 1456) = v35;
    operator delete(v35);
  }

  v36 = *(v29 + 1424);
  if (v36)
  {
    *(v29 + 1432) = v36;
    operator delete(v36);
  }

  v37 = *(v29 + 1400);
  if (v37)
  {
    *(v29 + 1408) = v37;
    operator delete(v37);
  }

  v38 = *(v29 + 1376);
  if (v38)
  {
    *(v29 + 1384) = v38;
    operator delete(v38);
  }

  std::__tree<std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>,std::__map_value_compare<VADPostProcessing::SmoothingTypes,std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>,std::less<VADPostProcessing::SmoothingTypes>,true>,std::allocator<std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>>>::destroy(*(v29 + 656));
  std::__tree<std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>,std::__map_value_compare<VADPostProcessing::SmoothingTypes,std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>,std::less<VADPostProcessing::SmoothingTypes>,true>,std::allocator<std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>>>::destroy(*(v29 + 632));
  std::__tree<std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>,std::__map_value_compare<VADPostProcessing::SmoothingTypes,std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>,std::less<VADPostProcessing::SmoothingTypes>,true>,std::allocator<std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>>>::destroy(*(v29 + 608));
  std::__tree<std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>,std::__map_value_compare<VADPostProcessing::SmoothingTypes,std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>,std::less<VADPostProcessing::SmoothingTypes>,true>,std::allocator<std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>>>::destroy(*(v29 + 584));
  ausdk::AUBase::~AUBase(v29);
  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUExpanseController>::Factory()
{
  result = malloc_type_malloc(0x280uLL, 0x10F3040C7B97B05uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUExpanseController>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUExpanseController>::Destruct;
  return result;
}

uint64_t ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUExpanseController>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = (a1 + 532);
  v4 = ausdk::AUBase::AUBase(a1, a2, 2, 2);
  *v4 = &unk_1F5924C00;
  *(v4 + 264) = 0;
  *v3 = xmmword_1DE09C6C0;
  v3[1] = xmmword_1DE097CE0;
  *(v4 + 141) = 1065353216;
  *(v4 + 71) = 1;
  ausdk::AUBase::CreateElements(v4);
  v5 = 0;
  *v35 = 0x40E7700000000000;
  *&v35[8] = xmmword_1DE09BD50;
  v36 = xmmword_1DE09BD60;
  v6 = 1;
  do
  {
    v7 = v6;
    Element = ausdk::AUScope::GetElement((a1 + 80), v5);
    if (!Element)
    {
LABEL_22:
      ausdk::Throw(0xFFFFD583);
    }

    (*(*Element + 56))(Element, v35);
    v6 = 0;
    v5 = 1;
  }

  while ((v7 & 1) != 0);
  v9 = 0;
  v10 = 1;
  do
  {
    v11 = v10;
    v12 = ausdk::AUScope::GetElement((a1 + 128), v9);
    if (!v12)
    {
      goto LABEL_22;
    }

    (*(*v12 + 56))(v12, v35);
    v10 = 0;
    v9 = 1;
  }

  while ((v11 & 1) != 0);
  v13 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v14 & 1) == 0 || (ausdk::AUElement::SetParameter(v13, 0, -15.0), v15 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v16 & 1) == 0) || (ausdk::AUElement::SetParameter(v15, 1u, -15.0), v17 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v18 & 1) == 0) || (ausdk::AUElement::SetParameter(v17, 2u, 0.0), v19 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v20 & 1) == 0) || (ausdk::AUElement::SetParameter(v19, 3u, 0.0), v21 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v22 & 1) == 0) || (ausdk::AUElement::SetParameter(v21, 4u, 0.0), v23 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v24 & 1) == 0) || (ausdk::AUElement::SetParameter(v23, 5u, 1.0), v25 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v26 & 1) == 0) || (ausdk::AUElement::SetParameter(v25, 6u, 0.0), v27 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v28 & 1) == 0) || (ausdk::AUElement::SetParameter(v27, 7u, 0.0), v29 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v30 & 1) == 0) || (ausdk::AUElement::SetParameter(v29, 8u, 0.0), v31 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v32 & 1) == 0))
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v31, 9u, 0.0);
  if (getAUExpanseControllerLog(void)::onceToken != -1)
  {
    dispatch_once(&getAUExpanseControllerLog(void)::onceToken, &__block_literal_global_10493);
  }

  v33 = getAUExpanseControllerLog(void)::gLog;
  if (os_log_type_enabled(getAUExpanseControllerLog(void)::gLog, OS_LOG_TYPE_INFO))
  {
    *v35 = 134217984;
    *&v35[4] = a1;
    _os_log_impl(&dword_1DDB85000, v33, OS_LOG_TYPE_INFO, "[%p] created", v35, 0xCu);
  }

  return a1;
}

void sub_1DDD2AB30(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUClipDetector>::Factory()
{
  result = malloc_type_malloc(0x288uLL, 0x10F304065FCEF00uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUClipDetector>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUClipDetector>::Destruct;
  return result;
}

uint64_t ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUClipDetector>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = ausdk::AUBase::AUBase(a1, a2, 1, 1);
  *v3 = &unk_1F5928318;
  *(v3 + 66) = 0;
  *(v3 + 134) = 0;
  *(v3 + 34) = 0u;
  *(v3 + 35) = 0u;
  *(v3 + 576) = 0;
  ausdk::AUBase::CreateElements(v3);
  v4 = 0;
  *v14 = 0x40E7700000000000;
  *&v14[8] = xmmword_1DE09BD50;
  v15 = xmmword_1DE09BD60;
  while (1)
  {
    v5 = *(a1 + 120);
    if (v5)
    {
      LODWORD(v6) = (*(*v5 + 24))(v5);
    }

    else
    {
      v6 = (*(a1 + 104) - *(a1 + 96)) >> 3;
    }

    if (v4 >= v6)
    {
      break;
    }

    Element = ausdk::AUScope::GetElement((a1 + 80), v4);
    if (!Element)
    {
LABEL_20:
      ausdk::Throw(0xFFFFD583);
    }

    (*(*Element + 56))(Element, v14);
    ++v4;
  }

  for (i = 0; ; ++i)
  {
    v9 = *(a1 + 168);
    if (v9)
    {
      LODWORD(v10) = (*(*v9 + 24))(v9);
    }

    else
    {
      v10 = (*(a1 + 152) - *(a1 + 144)) >> 3;
    }

    if (i >= v10)
    {
      break;
    }

    v11 = ausdk::AUScope::GetElement((a1 + 128), i);
    if (!v11)
    {
      goto LABEL_20;
    }

    (*(*v11 + 56))(v11, v14);
  }

  AUClipDetector::SetDefaultParameters(a1);
  *(a1 + 376) = 1;
  (*(*a1 + 112))(a1, 8, AUClipDetector::AUClipDetector(OpaqueAudioComponentInstance *)::$_0::__invoke<OpaqueAudioComponentInstance *,unsigned int,unsigned int,unsigned int>, a1);
  if (getAUClipDetectorLog(void)::onceToken != -1)
  {
    dispatch_once(&getAUClipDetectorLog(void)::onceToken, &__block_literal_global_13705);
  }

  v12 = getAUClipDetectorLog(void)::gLog;
  if (os_log_type_enabled(getAUClipDetectorLog(void)::gLog, OS_LOG_TYPE_INFO))
  {
    *v14 = 134217984;
    *&v14[4] = a1;
    _os_log_impl(&dword_1DDB85000, v12, OS_LOG_TYPE_INFO, "[%p] created", v14, 0xCu);
  }

  return a1;
}

void sub_1DDD2AE90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  a9 = v9 + 68;
  std::vector<std::unique_ptr<ausdk::AUElement>>::__destroy_vector::operator()[abi:ne200100](&a9);
  ausdk::AUBase::~AUBase(v9);
  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AULimitWindBoost>::Factory()
{
  result = malloc_type_malloc(0x430uLL, 0x10F3040B5E6C064uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AULimitWindBoost>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AULimitWindBoost>::Destruct;
  return result;
}

uint64_t ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AULimitWindBoost>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v3 = ausdk::AUBase::AUBase(a1, a2, 3, 1);
  *v3 = &unk_1F5937320;
  LimitWindBoost::LimitWindBoost((v3 + 528));
  *(a1 + 928) = 0;
  *(a1 + 932) = 0;
  *(a1 + 936) = 1024;
  *(a1 + 944) = 0;
  *(a1 + 952) = 0;
  *(a1 + 960) = 0u;
  *(a1 + 976) = 0u;
  *(a1 + 992) = 0u;
  ausdk::AUBase::CreateElements(a1);
  *(a1 + 376) = 1;
  (*(*a1 + 512))(a1, 1024);
  v4 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v5 & 1) == 0 || (ausdk::AUElement::SetParameter(v4, 0, 0.0), v6 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v7 & 1) == 0) || (ausdk::AUElement::SetParameter(v6, 1u, 500.0), v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v9 & 1) == 0) || (ausdk::AUElement::SetParameter(v8, 2u, 6.0), v10 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v11 & 1) == 0) || (ausdk::AUElement::SetParameter(v10, 3u, 0.0), v12 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v13 & 1) == 0) || (ausdk::AUElement::SetParameter(v12, 4u, 20.0), v14 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v15 & 1) == 0) || (ausdk::AUElement::SetParameter(v14, 5u, -100.0), v16 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v17 & 1) == 0) || (ausdk::AUElement::SetParameter(v16, 6u, 0.03), v18 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v19 & 1) == 0) || (ausdk::AUElement::SetParameter(v18, 7u, -12.0), v20 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v21 & 1) == 0) || (ausdk::AUElement::SetParameter(v20, 8u, 1250.0), v22 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v23 & 1) == 0) || (ausdk::AUElement::SetParameter(v22, 9u, 0.1), v24 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v25 & 1) == 0) || (ausdk::AUElement::SetParameter(v24, 0xAu, 1.0), v26 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v27 & 1) == 0) || (ausdk::AUElement::SetParameter(v26, 0xBu, 1.5), v28 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v29 & 1) == 0) || (ausdk::AUElement::SetParameter(v28, 0xCu, 0.4), v30 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v31 & 1) == 0) || (ausdk::AUElement::SetParameter(v30, 0xDu, 250.0), v32 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v33 & 1) == 0) || (ausdk::AUElement::SetParameter(v32, 0xEu, -90.0), v34 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v35 & 1) == 0) || (ausdk::AUElement::SetParameter(v34, 0xFu, 0.25), v36 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v37 & 1) == 0) || (ausdk::AUElement::SetParameter(v36, 0x10u, 0.25), v38 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v39 & 1) == 0))
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v38, 0x11u, 0.75);
  atomic_fetch_add((a1 + 928), 1u);
  v50 = 0x40E5888000000000;
  v47 = 0x40E5888000000000;
  v49 = xmmword_1DE09C5F0;
  v51 = xmmword_1DE09C190;
  v52 = xmmword_1DE09C600;
  v48 = xmmword_1DE09C190;
  Element = ausdk::AUScope::GetElement((a1 + 80), 0);
  if (!Element || ((*(*Element + 56))(Element, &v47), (v41 = ausdk::AUScope::GetElement((a1 + 80), 2u)) == 0))
  {
LABEL_29:
    ausdk::Throw(0xFFFFD583);
  }

  (*(*v41 + 56))(v41, &v50);
  for (i = 0; ; ++i)
  {
    v43 = *(a1 + 168);
    if (v43)
    {
      LODWORD(v44) = (*(*v43 + 24))(v43);
    }

    else
    {
      v44 = (*(a1 + 152) - *(a1 + 144)) >> 3;
    }

    if (i >= v44)
    {
      break;
    }

    v45 = ausdk::AUScope::GetElement((a1 + 128), i);
    if (!v45)
    {
      goto LABEL_29;
    }

    (*(*v45 + 56))(v45, &v47);
  }

  atomic_store(1u, (a1 + 928));
  return a1;
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUHearingLossCompensator>::Factory()
{
  result = malloc_type_malloc(0x2E8uLL, 0x10F30404B449821uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUHearingLossCompensator>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUHearingLossCompensator>::Destruct;
  return result;
}

_BYTE *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUHearingLossCompensator>::Construct(_BYTE *a1, OpaqueAudioComponentInstance *a2)
{
  v3 = ausdk::AUBase::AUBase(a1, a2, 1, 1);
  *v3 = &unk_1F59222D8;
  *(v3 + 66) = 0;
  *(v3 + 134) = 1133903872;
  *(v3 + 540) = 0u;
  *(v3 + 555) = 0;
  *(v3 + 568) = 0u;
  *(v3 + 584) = 0u;
  *(v3 + 600) = 0u;
  *(v3 + 616) = 0u;
  *(v3 + 632) = 0u;
  *(v3 + 648) = 0u;
  *(v3 + 664) = 0u;
  v4 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(v3 + 32, 0);
  if ((v5 & 1) == 0)
  {
    abort();
  }

  (*(*v4 + 40))(v4, 40);
  ausdk::AUBase::CreateElements(a1);
  for (i = 0; i != 40; ++i)
  {
    ausdk::AUBase::SetParameter(a1, i, 0, 0, AUHearingLossCompensator::kUserParameterDefault[i]);
  }

  v10 = 0x40E5888000000000;
  v11 = xmmword_1DE09BD50;
  v12 = xmmword_1DE09C4E0;
  Element = ausdk::AUScope::GetElement((a1 + 80), 0);
  if (!Element || ((*(*Element + 56))(Element, &v10), (v8 = ausdk::AUScope::GetElement((a1 + 128), 0)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  (*(*v8 + 56))(v8, &v10);
  a1[376] = 1;
  return a1;
}

void sub_1DDD2B644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v13 = *(v10 + 656);
  if (v13)
  {
    *(v10 + 664) = v13;
    operator delete(v13);
  }

  v14 = *(v10 + 632);
  if (v14)
  {
    *(v10 + 640) = v14;
    operator delete(v14);
  }

  a10 = (v10 + 608);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&a10);
  a10 = (v10 + 584);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&a10);
  std::unique_ptr<HearingLossCompensator_Core>::reset[abi:ne200100]((v10 + 576), 0);
  std::unique_ptr<BlockProcessor>::reset[abi:ne200100](v11, 0);
  ausdk::AUBase::~AUBase(v10);
  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUSpeechEnhancer>::Factory()
{
  result = malloc_type_malloc(0x2E8uLL, 0x10F304065E71971uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUSpeechEnhancer>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUSpeechEnhancer>::Destruct;
  return result;
}

uint64_t ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUSpeechEnhancer>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v3 = ausdk::AUBase::AUBase(a1, a2, 1, 1);
  *v3 = &unk_1F591DE08;
  *(v3 + 69) = 0;
  *(v3 + 140) = 0;
  *(v3 + 33) = 0u;
  *(v3 + 272) = 0;
  *(v3 + 568) = 0u;
  *(v3 + 584) = 0u;
  *(v3 + 600) = 0u;
  *(v3 + 616) = 0u;
  *(v3 + 632) = 0u;
  *(v3 + 162) = 1;
  v4 = v3 + 656;
  *(v3 + 660) = 0;
  *(v3 + 668) = 0;
  *(v3 + 652) = 0;
  *(v3 + 169) = 0;
  *&v17 = @"Bypass Algorithm";
  *(&v17 + 1) = 0x8000000000000002;
  v18 = 0.0078125;
  v19 = -3229614080;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v3 + 656, &v17);
  *&v17 = @"Wind Flag";
  *(&v17 + 1) = 0x800000000000;
  v18 = 0.0078125;
  v19 = 0xFFFFFFFF00000000;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v4, &v17);
  *&v17 = @"Downlink SPP Threshold";
  *(&v17 + 1) = 0x8400000000000000;
  v18 = 0.0078125;
  v19 = -3241358131;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v4, &v17);
  *&v17 = @"Filter Bank Type";
  *(&v17 + 1) = 0x8400000000000001;
  v18 = 0.0078125;
  v19 = 0x100000000;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v4, &v17);
  *&v17 = @"Interpolation Type";
  *(&v17 + 1) = 0x8400000000000001;
  v18 = 0.0078125;
  v19 = 0x100000000;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v4, &v17);
  *&v17 = @"Loud Speaker Calibration";
  *(&v17 + 1) = 0x800000000000000DLL;
  v18 = 1.54811319e15;
  v19 = 0x242B40000;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v4, &v17);
  *&v17 = @"Signal Power Smoothing Time";
  *(&v17 + 1) = 0x8000000000000004;
  v18 = 524288.0;
  v19 = 0x240A00000;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v4, &v17);
  *&v17 = @"Noise Power Attack Time";
  *(&v17 + 1) = 0x8000000000000004;
  v18 = 524288.0;
  v19 = 0x23FC00000;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v4, &v17);
  *&v17 = @"Noise Power Release Time";
  *(&v17 + 1) = 0x8000000000000004;
  v18 = 524288.0;
  v19 = 0x23F000000;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v4, &v17);
  *&v17 = @"Environmental Noise Power (dBA)";
  *(&v17 + 1) = 0x80000000000DLL;
  v18 = 6.33319102e14;
  v19 = 0x241A00000;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v4, &v17);
  *&v17 = @"Auto Volume Low Noise";
  *(&v17 + 1) = 0x800000000000000DLL;
  v18 = 2.81474977e14;
  v19 = 0x342480000;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v4, &v17);
  *&v17 = @"Auto Volume High Noise";
  *(&v17 + 1) = 0x800000000000000DLL;
  v18 = 2.81474977e14;
  v19 = 0x342C80000;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v4, &v17);
  *&v17 = @"Auto Volume Low Slope";
  *(&v17 + 1) = -0.0;
  v18 = 0.0078125;
  v19 = 0x33EA8F5C3;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v4, &v17);
  *&v17 = @"Auto Volume High Slope";
  *(&v17 + 1) = -0.0;
  v18 = 0.0078125;
  v19 = 0x33F4CCCCDLL;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v4, &v17);
  *&v17 = @"Total Volume Max Gain";
  *(&v17 + 1) = 0x800000000000000DLL;
  v18 = 16777228.1;
  v19 = 0x300000000;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v4, &v17);
  *&v17 = @"Pre Auto Volume SNR (dBA)";
  *(&v17 + 1) = 0x80000000000DLL;
  v18 = 2.0615853e11;
  v19 = 0x300000000;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v4, &v17);
  *&v17 = @"Current Auto Volume Gain";
  *(&v17 + 1) = 0x80000000000DLL;
  v18 = 4294970380.0;
  v19 = 0x300000000;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v4, &v17);
  *&v17 = @"Bypass Auto EQ";
  *(&v17 + 1) = 0x8000000000000002;
  v18 = 0.0078125;
  v19 = 0x400000000;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v4, &v17);
  *&v17 = @"EQ Bandwidth";
  *(&v17 + 1) = 0x8000000000000008;
  v18 = 1.43244538e32;
  v19 = 0x445FA0000;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v4, &v17);
  *&v17 = @"Regularization High SNR";
  *(&v17 + 1) = 0x800000000000000DLL;
  v18 = 2.06158463e11;
  v19 = 0x441200000;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v4, &v17);
  *&v17 = @"EQ Min Gain (low freq)";
  *(&v17 + 1) = 0x800000000000000DLL;
  *&v18 = 3248488448;
  v19 = 0x4C0A00000;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v4, &v17);
  *&v17 = @"EQ Max Gain (low freq)";
  *(&v17 + 1) = 0x800000000000000DLL;
  v18 = 134217728.0;
  v19 = 0x441200000;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v4, &v17);
  *&v17 = @"Pre EQ Signal Power (dBA)";
  *(&v17 + 1) = 0x80000000000DLL;
  v18 = 6.33319102e14;
  v19 = 0x441A00000;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v4, &v17);
  *&v17 = @"Num Iterations to Converge EQ";
  *(&v17 + 1) = 0x400800000000000;
  v18 = 1.35107989e16;
  v19 = 0x400000000;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v4, &v17);
  *&v17 = @"Use Tabulated Speech PSD";
  *(&v17 + 1) = 0x8400000000000002;
  v18 = 0.0078125;
  v19 = -3229614080;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v4, &v17);
  *&v17 = @"Enable EQ Display (expert mode)";
  *(&v17 + 1) = 0x8000000000000002;
  v18 = 0.0078125;
  v19 = 0x500000000;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v4, &v17);
  *&v17 = @"Current User Volume Gain";
  *(&v17 + 1) = 0x40080000000000DLL;
  v18 = 16777228.1;
  v19 = 0x300000000;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v4, &v17);
  *&v17 = @"Current Total Volume Gain";
  *(&v17 + 1) = 0x80000000000DLL;
  v18 = 16777228.1;
  v19 = 0x300000000;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v4, &v17);
  *&v17 = @"EQ Min Gain (high freq)";
  *(&v17 + 1) = 0x800000000000000DLL;
  *&v18 = 3248488448;
  v19 = 0x4C0A00000;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v4, &v17);
  *&v17 = @"EQ Max Gain (high freq)";
  *(&v17 + 1) = 0x800000000000000DLL;
  v18 = 134217728.0;
  v19 = 0x441200000;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v4, &v17);
  *&v17 = @"EQ Frequency Boundary";
  *(&v17 + 1) = 0x8000000000000008;
  v18 = 1.43244538e32;
  v19 = 0x444480000;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v4, &v17);
  *&v17 = @"EQ Low Noise";
  *(&v17 + 1) = 0x800000000000000DLL;
  v18 = 2.81474977e14;
  v19 = 0x4425C0000;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v4, &v17);
  *&v17 = @"Change in Environment";
  *(&v17 + 1) = 0x800000000000;
  v18 = 0.0078125;
  v19 = 0xFFFFFFFF00000000;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v4, &v17);
  *&v17 = @"0.20 kHz";
  __asm { FMOV            V0.2S, #-20.0 }

  v10 = -_D0;
  *(&v17 + 1) = 0x40080000000000DLL;
  v18 = -_D0;
  v19 = 0x500000000;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v4, &v17);
  *&v17 = @"0.40 kHz";
  *(&v17 + 1) = 0x40080000000000DLL;
  v18 = v10;
  v19 = 0x500000000;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v4, &v17);
  *&v17 = @"0.80 kHz";
  *(&v17 + 1) = 0x40080000000000DLL;
  v18 = v10;
  v19 = 0x500000000;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v4, &v17);
  *&v17 = @"1.25 kHz";
  *(&v17 + 1) = 0x40080000000000DLL;
  v18 = v10;
  v19 = 0x500000000;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v4, &v17);
  *&v17 = @"1.60 kHz";
  *(&v17 + 1) = 0x40080000000000DLL;
  v18 = v10;
  v19 = 0x500000000;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v4, &v17);
  *&v17 = @"2.00 kHz";
  *(&v17 + 1) = 0x40080000000000DLL;
  v18 = v10;
  v19 = 0x500000000;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v4, &v17);
  *&v17 = @"2.50 kHz";
  *(&v17 + 1) = 0x40080000000000DLL;
  v18 = v10;
  v19 = 0x500000000;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v4, &v17);
  *&v17 = @"3.15 kHz";
  *(&v17 + 1) = 0x40080000000000DLL;
  v18 = v10;
  v19 = 0x500000000;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v4, &v17);
  *&v17 = @"4.00 kHz";
  *(&v17 + 1) = 0x40080000000000DLL;
  v18 = v10;
  v19 = 0x500000000;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v4, &v17);
  *&v17 = @"5.00 kHz";
  *(&v17 + 1) = 0x40080000000000DLL;
  v18 = v10;
  v19 = 0x500000000;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v4, &v17);
  *&v17 = @"6.30 kHz";
  *(&v17 + 1) = 0x40080000000000DLL;
  v18 = v10;
  v19 = 0x500000000;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v4, &v17);
  *&v17 = @"8.00 kHz";
  *(&v17 + 1) = 0x40080000000000DLL;
  v18 = v10;
  v19 = 0x500000000;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v4, &v17);
  *&v17 = @"10.00 kHz";
  *(&v17 + 1) = 0x40080000000000DLL;
  v18 = v10;
  v19 = 0x500000000;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v4, &v17);
  *&v17 = @"12.50 kHz";
  *(&v17 + 1) = 0x40080000000000DLL;
  v18 = v10;
  v19 = 0x500000000;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v4, &v17);
  *&v17 = @"16.00 kHz";
  *(&v17 + 1) = 0x40080000000000DLL;
  v18 = v10;
  v19 = 0x500000000;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v4, &v17);
  *&v17 = @"20.00 kHz";
  *(&v17 + 1) = 0x40080000000000DLL;
  v18 = v10;
  v19 = 0x500000000;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v4, &v17);
  *&v17 = @"EQ Slew Rate (dB/s)";
  *(&v17 + 1) = 0x8400000000000000;
  v18 = 16777216.0;
  v19 = 0x440000000;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v4, &v17);
  *&v17 = @"Noise Slew Rate (dB/s)";
  *(&v17 + 1) = 0x8400000000000000;
  v18 = 16777216.0;
  v19 = 0x240A00000;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v4, &v17);
  *&v17 = @"Auto Volume Slew Rate (dB/s)";
  *(&v17 + 1) = 0x8400000000000000;
  v18 = 16777216.0;
  v19 = 0x340400000;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v4, &v17);
  *&v17 = @"Near-End Speech Presence";
  *(&v17 + 1) = 0x400800000000000;
  v18 = 0.0078125;
  v19 = 0xFFFFFFFF00000000;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v4, &v17);
  *&v17 = @"Near-End SPP Threshold";
  *(&v17 + 1) = 0x8400000000000000;
  v18 = 0.0078125;
  v19 = -3246391296;
  std::vector<std::tuple<__CFString const*,AudioUnitParameterUnit,unsigned int,float,float,float,int>>::push_back[abi:ne200100](v4, &v17);
  if (*(a1 + 664) - *(a1 + 656) != 1728)
  {
    __assert_rtn("populateParameterInfoTable", "SpeechEnhancerParameters.h", 99, "paramInfo.size() == kAUSpeechEnhancerNumberOfParameters");
  }

  v11 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v12 & 1) == 0)
  {
    abort();
  }

  (*(*v11 + 40))(v11, (*(a1 + 664) - *(a1 + 656)) >> 5);
  ausdk::AUBase::CreateElements(a1);
  v13 = *(a1 + 656);
  if (*(a1 + 664) != v13)
  {
    v14 = 0;
    v15 = 24;
    do
    {
      ausdk::AUBase::SetParameter(a1, v14++, 0, 0, *(v13 + v15));
      v13 = *(a1 + 656);
      v15 += 32;
    }

    while (v14 < (*(a1 + 664) - v13) >> 5);
  }

  *(a1 + 376) = 1;
  return a1;
}

void sub_1DDD2C1D8(_Unwind_Exception *a1)
{
  v5 = *v2;
  if (*v2)
  {
    v1[83] = v5;
    operator delete(v5);
  }

  AUSpeechEnhancer::SpeechEnhancer::~SpeechEnhancer((v1 + 74));
  v6 = *v3;
  if (*v3)
  {
    v1[72] = v6;
    operator delete(v6);
  }

  ausdk::AUBase::~AUBase(v1);
  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessLookup,AUMidSide>::Factory()
{
  result = malloc_type_malloc(0x268uLL, 0x10F3040130CCF2CuLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessLookup,AUMidSide>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessLookup,AUMidSide>::Destruct;
  return result;
}

ausdk::AUBase *ausdk::APFactory<ausdk::AUBaseProcessLookup,AUMidSide>::Construct(ausdk::AUBase *a1, OpaqueAudioComponentInstance *a2)
{
  v3 = ausdk::AUBase::AUBase(a1, a2, 1, 1);
  *v3 = &unk_1F5923560;
  __asm { FMOV            V8.2S, #1.0 }

  *(v3 + 66) = _D8;
  *(v3 + 67) = 1;
  *(v3 + 544) = 0;
  v9 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(v3 + 32, 0);
  if ((v10 & 1) == 0 || ((*(*v9 + 40))(v9, 2), v11 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v12 & 1) == 0) || (ausdk::AUElement::SetParameter(v11, 0, 0.0), v13 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v14 & 1) == 0))
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v13, 1u, 0.0);
  *(a1 + 66) = _D8;
  return a1;
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUChannelSelector>::Factory()
{
  result = malloc_type_malloc(0x2E8uLL, 0x10F304040B2FAE7uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUChannelSelector>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUChannelSelector>::Destruct;
  return result;
}

void ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUChannelSelector>::Construct(ausdk::AUBase *a1, OpaqueAudioComponentInstance *a2)
{
  v2 = *MEMORY[0x1E69E9840];
  *ausdk::AUBase::AUBase(a1, a2, 1, 1) = &unk_1F5924868;
  operator new();
}

void *ausdk::APFactory<ausdk::AUBaseProcessLookup,AUMultiChannelAGC>::Factory()
{
  result = malloc_type_malloc(0x318uLL, 0x10F30406EA9A8D8uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessLookup,AUMultiChannelAGC>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessLookup,AUMultiChannelAGC>::Destruct;
  return result;
}

uint64_t ausdk::APFactory<ausdk::AUBaseProcessLookup,AUMultiChannelAGC>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v3 = ausdk::AUBase::AUBase(a1, a2, 1, 1);
  *(v3 + 276) = 0;
  *(v3 + 68) = 0;
  *(v3 + 33) = 0u;
  *(v3 + 554) = 1;
  *(v3 + 139) = 0;
  *(v3 + 560) = 0;
  *(v3 + 147) = 0;
  *(v3 + 568) = 0u;
  *(v3 + 584) = 0;
  *v3 = &unk_1F5927E48;
  *(v3 + 74) = 0;
  *(v3 + 166) = 0;
  *(v3 + 42) = 0u;
  *(v3 + 172) = 1;
  *(v3 + 692) = 0u;
  *(v3 + 708) = 0u;
  ausdk::AUBase::CreateElements(v3);
  v4 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v5 & 1) == 0)
  {
    abort();
  }

  (*(*v4 + 40))(v4, 66);
  BYTE1(inDesc.componentFlags) = 0;
  HIWORD(inDesc.componentFlags) = 0;
  inDesc.componentFlagsMask = 0;
  strcpy(&inDesc, "xfua2cgalppa");
  Next = AudioComponentFindNext(0, &inDesc);
  if (Next)
  {
    AudioComponentInstanceNew(Next, (a1 + 592));
  }

  for (i = 0; i != 65; ++i)
  {
    inDesc.componentType = 0;
    AudioUnitGetParameter(*(a1 + 592), i, 0, 0, &inDesc.componentType);
    ausdk::AUBase::SetParameter(a1, i, 0, 0, *&inDesc.componentType);
  }

  ausdk::AUBase::SetParameter(a1, 0x41u, 0, 0, 0.0);
  *(a1 + 376) = 1;
  return a1;
}

void sub_1DDD2C7E8(_Unwind_Exception *a1)
{
  v3 = (v1 + 672);
  v4 = *(v1 + 696);
  if (v4)
  {
    *(v1 + 704) = v4;
    operator delete(v4);
  }

  if (*v3)
  {
    (*(ausdk::BufferAllocator::instance(void)::global + 3))();
    *v3 = 0;
  }

  *(v1 + 680) = 0;
  *(v1 + 664) = 0;
  ausdk::AUEffectBase::~AUEffectBase(v1);
  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUMicSense>::Factory()
{
  result = malloc_type_malloc(0x318uLL, 0x10F304019F3D28AuLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUMicSense>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUMicSense>::Destruct;
  return result;
}

_BYTE *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUMicSense>::Construct(_BYTE *a1, OpaqueAudioComponentInstance *a2)
{
  v3 = ausdk::AUBase::AUBase(a1, a2, 1, 1);
  *v3 = &unk_1F59290E0;
  *(v3 + 132) = 0;
  *(v3 + 154) = 0;
  *(v3 + 536) = 0u;
  *(v3 + 552) = 0u;
  *(v3 + 142) = 0;
  *(v3 + 36) = 0u;
  *(v3 + 37) = 0u;
  *(v3 + 605) = 0;
  *(v3 + 39) = 0u;
  *(v3 + 160) = 0;
  *(v3 + 648) = 0u;
  *(v3 + 664) = 0u;
  *(v3 + 680) = 0u;
  *(v3 + 696) = 0;
  *(v3 + 700) = 0u;
  *(v3 + 714) = 0;
  v4 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(v3 + 32, 0);
  if ((v5 & 1) == 0)
  {
    abort();
  }

  (*(*v4 + 40))(v4, 14);
  ausdk::AUBase::CreateElements(a1);
  for (i = 0; i != 14; ++i)
  {
    ausdk::AUBase::SetParameter(a1, i, 0, 0, AUMicSense::kUserParameterDefault[i]);
  }

  for (j = 0; j != 8; ++j)
  {
    for (k = 0; k != 14; ++k)
    {
      Element = ausdk::AUScope::GetElement((a1 + 560), j);
      ausdk::AUElement::SetParameter(Element, k, AUMicSense::kUserParameterDefault[k]);
    }
  }

  a1[376] = 1;
  return a1;
}

void sub_1DDD2CA60(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AUMicSenseNoiseProfile::~AUMicSenseNoiseProfile((v2 + 79));
  std::unique_ptr<BlockProcessor>::reset[abi:ne200100](v2 + 78, 0);
  std::vector<std::unique_ptr<ausdk::AUElement>>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<AUMicSense::MicSenseInfo>::__destroy_vector::operator()[abi:ne200100](va);
  ausdk::AUBase::~AUBase(v2);
  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUHOAZoomV2>::Factory()
{
  result = malloc_type_malloc(0x3B0uLL, 0x10F3040CB25327EuLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUHOAZoomV2>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUHOAZoomV2>::Destruct;
  return result;
}

_BYTE *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUHOAZoomV2>::Construct(_BYTE *a1, OpaqueAudioComponentInstance *a2)
{
  v3 = ausdk::AUBase::AUBase(a1, a2, 1, 1);
  *v3 = &unk_1F5936320;
  *(v3 + 552) = 0;
  *(v3 + 624) = 0;
  *(v3 + 632) = 0;
  *(v3 + 696) = 0;
  *(v3 + 44) = 0u;
  *(v3 + 45) = 0u;
  *(v3 + 46) = 0u;
  *(v3 + 47) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 49) = 0u;
  *(v3 + 50) = 0u;
  *(v3 + 51) = 0u;
  *(v3 + 52) = 0u;
  *(v3 + 53) = 0u;
  *(v3 + 857) = 0u;
  ausdk::AUBase::CreateElements(v3);
  v32 = 0x40E7700000000000;
  v33 = xmmword_1DE09BD50;
  v34 = xmmword_1DE09C560;
  v29 = 0x40E7700000000000;
  v30 = xmmword_1DE09BD50;
  v31 = xmmword_1DE09C560;
  Element = ausdk::AUScope::GetElement((a1 + 80), 0);
  if (!Element || ((*(*Element + 56))(Element, &v32), (v5 = ausdk::AUScope::GetElement((a1 + 128), 0)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  (*(*v5 + 56))(v5, &v29);
  v6 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0);
  if ((v7 & 1) == 0 || ((*(*v6 + 40))(v6, 10), v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v9 & 1) == 0) || (ausdk::AUElement::SetParameter(v8, 0, 1.0), v10 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v11 & 1) == 0) || (ausdk::AUElement::SetParameter(v10, 1u, 0.0), v12 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v13 & 1) == 0) || (ausdk::AUElement::SetParameter(v12, 2u, 0.0), v14 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v15 & 1) == 0) || (ausdk::AUElement::SetParameter(v14, 3u, 0.0), v16 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v17 & 1) == 0) || (ausdk::AUElement::SetParameter(v16, 4u, 107.0), v18 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v19 & 1) == 0) || (ausdk::AUElement::SetParameter(v18, 5u, 0.0), v20 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v21 & 1) == 0) || (ausdk::AUElement::SetParameter(v20, 6u, 0.0), v22 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v23 & 1) == 0) || (ausdk::AUElement::SetParameter(v22, 7u, 0.0), v24 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v25 & 1) == 0) || (ausdk::AUElement::SetParameter(v24, 8u, 700.0), v26 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v27 & 1) == 0))
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v26, 9u, 3000.0);
  a1[376] = 0;
  return a1;
}

void sub_1DDD2CDE8(_Unwind_Exception *a1)
{
  SimpleMeters::~SimpleMeters((v1 + 824));
  SimpleMeters::~SimpleMeters((v1 + 776));
  SimpleMeters::~SimpleMeters((v1 + 728));
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 712) = v4;
    operator delete(v4);
  }

  if (*(v1 + 696) == 1)
  {
    applesauce::CF::DictionaryRef_iterator<std::string,std::string>::~DictionaryRef_iterator((v1 + 632));
  }

  std::optional<Crossover2f>::~optional(v1 + 552);
  ausdk::AUBase::~AUBase(v1);
  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUHOAZoom>::Factory()
{
  result = malloc_type_malloc(0x2D0uLL, 0x10F30406C13336CuLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUHOAZoom>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUHOAZoom>::Destruct;
  return result;
}

void ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUHOAZoom>::Construct(ausdk::AUBase *a1, OpaqueAudioComponentInstance *a2)
{
  v6[10] = *MEMORY[0x1E69E9840];
  v2 = ausdk::AUBase::AUBase(a1, a2, 1, 1);
  *v2 = &unk_1F592C440;
  *(v2 + 33) = 0u;
  *(v2 + 136) = 1;
  v4 = xmmword_1DE09C6D0;
  v5 = 1120403456;
  memset(v3, 0, sizeof(v3));
  std::vector<std::pair<float,float>>::__init_with_size[abi:ne200100]<std::pair<float,float> const*,std::pair<float,float> const*>(v3, &v4, v6, 3uLL);
}

void sub_1DDD2D4D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t *a50, uint64_t *a51)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a50)
  {
    a51 = a50;
    operator delete(a50);
  }

  if (a29)
  {
    a30 = a29;
    operator delete(a29);
  }

  ZoomCurveValue::~ZoomCurveValue((v51 + 552));
  a50 = &a9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a50);
  if (a14)
  {
    operator delete(a14);
  }

  if (a17)
  {
    operator delete(a17);
  }

  if (a20)
  {
    operator delete(a20);
  }

  std::unique_ptr<DominanceZoom>::reset[abi:ne200100]((v51 + 536), 0);
  std::unique_ptr<std::map<unsigned int,HOAZoomParameterInfo>>::reset[abi:ne200100]((v51 + 528), 0);
  ausdk::AUBase::~AUBase(v51);
  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUHOARotator>::Factory()
{
  result = malloc_type_malloc(0x2A8uLL, 0x10F3040A2CE14A6uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUHOARotator>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUHOARotator>::Destruct;
  return result;
}

_BYTE *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUHOARotator>::Construct(_BYTE *a1, OpaqueAudioComponentInstance *a2)
{
  v3 = ausdk::AUBase::AUBase(a1, a2, 1, 1);
  *v3 = &unk_1F591EB70;
  v3[66] = 0xCB18968000000000;
  v3[67] = vdup_n_s32(0xCB189680);
  v3[68].i8[0] = 0;
  v3[75].i8[0] = 0;
  v3[76].i8[0] = 0;
  ausdk::AUBase::CreateElements(v3);
  v26 = 0x40E7700000000000;
  v27 = xmmword_1DE09BD50;
  v28 = xmmword_1DE09C560;
  v23 = 0x40E7700000000000;
  v24 = xmmword_1DE09BD50;
  v25 = xmmword_1DE09C560;
  Element = ausdk::AUScope::GetElement((a1 + 80), 0);
  if (!Element || ((*(*Element + 56))(Element, &v26), (v5 = ausdk::AUScope::GetElement((a1 + 128), 0)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  (*(*v5 + 56))(v5, &v23);
  v6 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0);
  if ((v7 & 1) == 0 || ((*(*v6 + 40))(v6, 7), v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v9 & 1) == 0) || (ausdk::AUElement::SetParameter(v8, 0, 1.0), v10 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v11 & 1) == 0) || (ausdk::AUElement::SetParameter(v10, 1u, 0.0), v12 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v13 & 1) == 0) || (ausdk::AUElement::SetParameter(v12, 2u, 1.0), v14 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v15 & 1) == 0) || (ausdk::AUElement::SetParameter(v14, 3u, 3.0), v16 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v17 & 1) == 0) || (ausdk::AUElement::SetParameter(v16, 4u, 0.0), v18 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v19 & 1) == 0) || (ausdk::AUElement::SetParameter(v18, 5u, 0.0), v20 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v21 & 1) == 0))
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v20, 6u, 0.0);
  a1[376] = 0;
  return a1;
}

void sub_1DDD2D9AC(_Unwind_Exception *a1)
{
  std::optional<HOA::RotationMatrix>::~optional(v1 + 544);
  ausdk::AUBase::~AUBase(v1);
  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUSpatialCapture>::Factory()
{
  result = malloc_type_malloc(0x468uLL, 0x10F304032A5150FuLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUSpatialCapture>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUSpatialCapture>::Destruct;
  return result;
}

void ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUSpatialCapture>::Construct(ausdk::AUBase *a1, OpaqueAudioComponentInstance *a2)
{
  v2 = ausdk::AUBase::AUBase(a1, a2, 3, 1);
  *v2 = &unk_1F59216F8;
  *(v2 + 584) = 0u;
  *(v2 + 33) = 0u;
  *(v2 + 34) = 0u;
  *(v2 + 35) = 0u;
  *(v2 + 72) = v2 + 584;
  FillSpatialCaptureParameterMap();
}

void sub_1DDD2DD8C(_Unwind_Exception *a1)
{
  if (*(v1 + 911) < 0)
  {
    operator delete(*v3);
  }

  if (*(v1 + 887) < 0)
  {
    operator delete(*v6);
  }

  if (*(v1 + 863) < 0)
  {
    operator delete(*v2);
  }

  v8 = *v5;
  *v5 = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  SCOrientationManager::~SCOrientationManager((v1 + 616));
  applesauce::CF::DictionaryRef::~DictionaryRef((v1 + 600));
  std::__tree<std::__value_type<AUSpatialCaptureParameterID,SpatialCaptureParameterInfo>,std::__map_value_compare<AUSpatialCaptureParameterID,std::__value_type<AUSpatialCaptureParameterID,SpatialCaptureParameterInfo>,std::less<AUSpatialCaptureParameterID>,true>,std::allocator<std::__value_type<AUSpatialCaptureParameterID,SpatialCaptureParameterInfo>>>::destroy(*v4);
  v9 = (v1 + 528);
  v10 = *(v1 + 552);
  if (v10)
  {
    *(v1 + 560) = v10;
    operator delete(v10);
  }

  v11 = *v9;
  if (*v9)
  {
    *(v1 + 536) = v11;
    operator delete(v11);
  }

  ausdk::AUBase::~AUBase(v1);
  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessLookup,AUChannelSpecificDelay>::Factory()
{
  result = malloc_type_malloc(0x910uLL, 0x10F3040FF0367ABuLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessLookup,AUChannelSpecificDelay>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessLookup,AUChannelSpecificDelay>::Destruct;
  return result;
}

uint64_t ausdk::APFactory<ausdk::AUBaseProcessLookup,AUChannelSpecificDelay>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = ausdk::AUBase::AUBase(a1, a2, 1, 1);
  v4 = 0;
  *v3 = &unk_1F592F928;
  *(v3 + 132) = 0;
  *(v3 + 266) = 0;
  do
  {
    v5 = a1 + v4;
    *(v5 + 560) = 0uLL;
    *(v5 + 552) = 0;
    *(a1 + v4 + 536) = xmmword_1DE09C710;
    v4 += 40;
  }

  while (v4 != 1280);
  *(a1 + 2200) = 0;
  *(a1 + 2208) = 0;
  *(a1 + 2248) = 0;
  *(a1 + 2216) = 0u;
  *(a1 + 2232) = 0u;
  v6 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v7 & 1) == 0)
  {
LABEL_21:
    abort();
  }

  (*(*v6 + 40))(v6, 8);
  ausdk::AUBase::CreateElements(a1);
  for (i = 0; i != 8; ++i)
  {
    v9 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
    if ((v10 & 1) == 0)
    {
      goto LABEL_21;
    }

    ausdk::AUElement::SetParameter(v9, i, 0.0);
  }

  for (j = 0; ; ++j)
  {
    v12 = *(a1 + 2240);
    if (v12)
    {
      LODWORD(v13) = (*(*v12 + 24))(v12);
    }

    else
    {
      v13 = (*(a1 + 2224) - *(a1 + 2216)) >> 3;
    }

    if (j >= v13)
    {
      break;
    }

    Element = ausdk::AUScope::GetElement((a1 + 2200), j);
    ausdk::AUElement::SetParameter(Element, 0, 0.0);
  }

  *(a1 + 2168) = 0u;
  *(a1 + 2184) = 0u;
  *(a1 + 2136) = 0u;
  *(a1 + 2152) = 0u;
  *(a1 + 2104) = 0u;
  *(a1 + 2120) = 0u;
  *(a1 + 2072) = 0u;
  *(a1 + 2088) = 0u;
  *(a1 + 2040) = 0u;
  *(a1 + 2056) = 0u;
  *(a1 + 2008) = 0u;
  *(a1 + 2024) = 0u;
  *(a1 + 1976) = 0u;
  *(a1 + 1992) = 0u;
  *(a1 + 1944) = 0u;
  *(a1 + 1960) = 0u;
  *(a1 + 1912) = 0u;
  *(a1 + 1928) = 0u;
  *(a1 + 1880) = 0u;
  *(a1 + 1896) = 0u;
  *(a1 + 1848) = 0u;
  *(a1 + 1864) = 0u;
  *(a1 + 1816) = 0u;
  *(a1 + 1832) = 0u;
  if (AUChannelSpecificDelayLogScope(void)::once != -1)
  {
    dispatch_once(&AUChannelSpecificDelayLogScope(void)::once, &__block_literal_global_23090);
  }

  if (AUChannelSpecificDelayLogScope(void)::scope)
  {
    if (*(AUChannelSpecificDelayLogScope(void)::scope + 8))
    {
      v15 = *AUChannelSpecificDelayLogScope(void)::scope;
      if (*AUChannelSpecificDelayLogScope(void)::scope)
      {
        if (os_log_type_enabled(*AUChannelSpecificDelayLogScope(void)::scope, OS_LOG_TYPE_DEBUG))
        {
          v17 = 136315394;
          v18 = "AUChannelSpecificDelay.cpp";
          v19 = 1024;
          v20 = 65;
          _os_log_impl(&dword_1DDB85000, v15, OS_LOG_TYPE_DEBUG, "%25s:%-5d AUChannelSpecificDelay instantiated", &v17, 0x12u);
        }
      }
    }
  }

  return a1;
}

void sub_1DDD2E1AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  std::vector<std::unique_ptr<ausdk::AUElement>>::__destroy_vector::operator()[abi:ne200100](&a9);
  v11 = v9 + 1776;
  v12 = -1280;
  do
  {
    v11 = ABLRingBuffer<float>::~ABLRingBuffer(v11) - 40;
    v12 += 40;
  }

  while (v12);
  ausdk::AUBase::~AUBase(v9);
  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessLookup,AUFixedGain>::Factory()
{
  result = malloc_type_malloc(0x270uLL, 0x10F3040E7A44C24uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessLookup,AUFixedGain>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessLookup,AUFixedGain>::Destruct;
  return result;
}

uint64_t ausdk::APFactory<ausdk::AUBaseProcessLookup,AUFixedGain>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v3 = ausdk::AUBase::AUBase(a1, a2, 1, 1);
  *v3 = &unk_1F592AA60;
  *(v3 + 132) = 1;
  v4 = (v3 + 552);
  *(v3 + 540) = 0;
  *(v3 + 548) = 0;
  *(v3 + 532) = 0;
  *(v3 + 139) = 0;
  ausdk::AUBase::CreateElements(v3);
  for (i = 0; i != 16; ++i)
  {
    v6 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
    if ((v7 & 1) == 0)
    {
      abort();
    }

    ausdk::AUElement::SetParameter(v6, i, 0.0);
  }

  v8 = *(a1 + 544);
  if (v8)
  {
    free(v8);
    *(a1 + 544) = 0;
  }

  CADeprecated::CAAutoFree<float>::allocBytes(v4, 0x40uLL);
  memset_pattern16(*(a1 + 552), &unk_1DE095DF0, 0x40uLL);
  v12[0] = xmmword_1DE0E9148;
  v12[1] = unk_1DE0E9158;
  v13 = 32;
  Element = ausdk::AUScope::GetElement((a1 + 80), 0);
  if (!Element || ((*(*Element + 56))(Element, v12), (v10 = ausdk::AUScope::GetElement((a1 + 128), 0)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  (*(*v10 + 56))(v10, v12);
  return a1;
}

void sub_1DDD2E400(_Unwind_Exception *a1)
{
  if (*v2)
  {
    free(*v2);
    *v2 = 0;
  }

  v4 = *(v1 + 68);
  if (v4)
  {
    free(v4);
    *(v1 + 68) = 0;
  }

  ausdk::AUBase::~AUBase(v1);
  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUHapticsProtection>::Factory()
{
  result = malloc_type_malloc(0x320uLL, 0x10F3040A4C0A951uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUHapticsProtection>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUHapticsProtection>::Destruct;
  return result;
}

uint64_t ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUHapticsProtection>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v3 = ausdk::AUBase::AUBase(a1, a2, 1, 1);
  *v3 = &unk_1F5933FE0;
  *(v3 + 33) = 0u;
  *(v3 + 68) = 1;
  *(v3 + 552) = 0;
  *(v3 + 35) = 0u;
  *(v3 + 36) = 0u;
  *(v3 + 37) = 0u;
  *(v3 + 38) = 0u;
  *(v3 + 39) = 0u;
  *(v3 + 40) = 0u;
  *(v3 + 41) = 0u;
  *(v3 + 42) = 0u;
  *(v3 + 43) = 0u;
  *(v3 + 44) = 0u;
  *(v3 + 45) = 0u;
  ausdk::AUBase::CreateElements(v3);
  for (i = 0; i != 47; ++i)
  {
    v5 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
    if ((v6 & 1) == 0)
    {
      abort();
    }

    ausdk::AUElement::SetParameter(v5, i + 4096, htlDefaultCoeffs[i]);
  }

  v13 = 0x40E5888000000000;
  v14 = xmmword_1DE09BD50;
  v15 = xmmword_1DE09C4E0;
  v10 = 0x40E5888000000000;
  v11 = xmmword_1DE09BD50;
  v12 = xmmword_1DE09BD60;
  Element = ausdk::AUScope::GetElement((a1 + 80), 0);
  if (!Element || ((*(*Element + 56))(Element, &v13), (v8 = ausdk::AUScope::GetElement((a1 + 128), 0)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  (*(*v8 + 56))(v8, &v10);
  return a1;
}

void sub_1DDD2E658(_Unwind_Exception *a1)
{
  SimpleMeters::~SimpleMeters((v1 + 75));
  v3 = v1[72];
  if (v3)
  {
    v1[73] = v3;
    operator delete(v3);
  }

  std::unique_ptr<HapticTravelLimiter::HTL>::reset[abi:ne200100](v1 + 66, 0);
  ausdk::AUBase::~AUBase(v1);
  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessLookup,AULoudnessWarrior>::Factory()
{
  result = malloc_type_malloc(0xB40uLL, 0x10F30403C29BEA5uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessLookup,AULoudnessWarrior>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessLookup,AULoudnessWarrior>::Destruct;
  return result;
}

char *ausdk::APFactory<ausdk::AUBaseProcessLookup,AULoudnessWarrior>::Construct(char *a1, OpaqueAudioComponentInstance *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(v21, "AULoudnessWarrior");
  std::string::basic_string[abi:ne200100]<0>(&__p, "loudnesswarrior_verbose");
  AUJBase::AUJBase(a1, a2, v21);
  if (v20 < 0)
  {
    operator delete(__p);
  }

  if (v22 < 0)
  {
    operator delete(v21[0]);
  }

  *a1 = &unk_1F5928A98;
  *(a1 + 80) = &unk_1F5928D38;
  *(a1 + 88) = &unk_1F5928D58;
  boost::lockfree::queue<std::vector<std::vector<float>> *,boost::lockfree::capacity<10ul>>::queue(a1 + 192);
  boost::lockfree::queue<std::vector<std::vector<float>> *,boost::lockfree::capacity<10ul>>::queue(a1 + 432);
  a1[2689] = 0;
  *(a1 + 344) = 0;
  *(a1 + 345) = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  *(a1 + 1384) = 257;
  a1[2776] = 0;
  *(a1 + 348) = 0;
  a1[2792] = 0;
  *(a1 + 350) = 0;
  if (AULoudnessWarriorLogScope(void)::once != -1)
  {
    dispatch_once(&AULoudnessWarriorLogScope(void)::once, &__block_literal_global_14540);
  }

  if (AULoudnessWarriorLogScope(void)::scope)
  {
    v4 = *AULoudnessWarriorLogScope(void)::scope;
    if (!*AULoudnessWarriorLogScope(void)::scope)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    *&buf[4] = "AULoudnessWarrior.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 136;
    _os_log_impl(&dword_1DDB85000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d AULoudnessWarrior construction starting\n", buf, 0x12u);
  }

LABEL_13:
  ausdk::AUBase::CreateElements(a1);
  *buf = 0x40E5888000000000;
  *&buf[8] = xmmword_1DE09BD50;
  v24 = xmmword_1DE09C4E0;
  Element = ausdk::AUScope::GetElement((a1 + 80), 0);
  if (!Element)
  {
    ausdk::Throw(0xFFFFD583);
  }

  (*(*Element + 56))(Element, buf);
  v16 = 0x40E5888000000000;
  v17 = xmmword_1DE09BD50;
  v18 = xmmword_1DE09C4E0;
  v6 = ausdk::AUScope::GetElement((a1 + 128), 0);
  if (!v6)
  {
    ausdk::Throw(0xFFFFD583);
  }

  (*(*v6 + 56))(v6, &v16);
  v7 = 41;
  v8 = &qword_1ECDA6400;
  do
  {
    v9 = *(v8 - 3);
    *v8 |= 0x8000000u;
    CFStringGetCString(v9, v8 - 96, 52, 0x8000100u);
    v10 = *v8;
    v11 = *v8 | 0x40000000;
    *v8 = v11;
    if (*(v8 - 8))
    {
      v11 = v10 | 0x40100000;
      *v8 = v10 | 0x40100000;
    }

    v12 = *(v8 - 26);
    if (v12 > 0x24 || ((1 << v12) & 0x10020040F8) == 0)
    {
      v14 = 0x80000000;
    }

    else
    {
      v14 = 0x8000;
    }

    *v8 = v11 | v14;
    (*(*a1 + 152))(a1, *(v8 - 1));
    v8 += 14;
    --v7;
  }

  while (v7);
  ausdk::AUBase::SetAFactoryPresetAsCurrent(a1, &kAuPresets);
  return a1;
}

void sub_1DDD2EB08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  CACFDictionary::~CACFDictionary((v30 + 2760));
  std::unique_ptr<AULoudnessWarriorKernel>::reset[abi:ne200100]((v30 + 2752), 0);
  *(v30 + 640) = v31;
  ca::concurrent::deferred_deletion_queue<AULoudnessWarriorKernel,10ul,std::default_delete<AULoudnessWarriorKernel>>::~deferred_deletion_queue(v32);
  AUJBase::~AUJBase(v30);
  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUCircArray>::Factory()
{
  result = malloc_type_malloc(0xC00uLL, 0x10F30407A8FB992uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUCircArray>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUCircArray>::Destruct;
  return result;
}

_BYTE *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUCircArray>::Construct(_BYTE *a1, OpaqueAudioComponentInstance *a2)
{
  std::string::basic_string[abi:ne200100]<0>(v12, "CircArray");
  std::string::basic_string[abi:ne200100]<0>(&__p, "circarray_verbose");
  AUJBase::AUJBase(a1, a2, v12);
  if (v11 < 0)
  {
    operator delete(__p);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  *a1 = &unk_1F592A740;
  *(a1 + 316) = 0;
  *(a1 + 80) = &unk_1F592A9E0;
  *(a1 + 88) = &unk_1F592AA00;
  boost::lockfree::queue<std::vector<std::vector<float>> *,boost::lockfree::capacity<10ul>>::queue(a1 + 192);
  boost::lockfree::queue<std::vector<std::vector<float>> *,boost::lockfree::capacity<10ul>>::queue(a1 + 432);
  a1[2689] = 0;
  *(a1 + 172) = 0u;
  *(a1 + 173) = 0u;
  *(a1 + 174) = 0u;
  *(a1 + 350) = 0;
  *(a1 + 351) = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  *(a1 + 1408) = 257;
  *(a1 + 353) = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  *(a1 + 1416) = 257;
  *(a1 + 355) = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  *(a1 + 1424) = 257;
  *(a1 + 357) = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  *(a1 + 1432) = 257;
  *(a1 + 359) = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  *(a1 + 1440) = 257;
  *(a1 + 361) = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  *(a1 + 1448) = 257;
  *(a1 + 363) = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  *(a1 + 1456) = 257;
  *(a1 + 365) = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  *(a1 + 1464) = 257;
  *(a1 + 367) = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  *(a1 + 1472) = 257;
  *(a1 + 369) = 0;
  a1[2960] = 1;
  *(a1 + 371) = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  *(a1 + 1488) = 257;
  *(a1 + 746) = 0;
  *(a1 + 374) = 0;
  *(a1 + 750) = 0;
  a1[3004] = 1;
  ausdk::AUBase::CreateElements(a1);
  v4 = 0;
  do
  {
    (*(*a1 + 152))(a1, v4, 0, 0, 0, 0.0);
    v5 = (v4 + 8);
    (*(*a1 + 152))(a1, v5, 0, 0, 0, 0.0);
    v6 = (v5 + 8);
    (*(*a1 + 152))(a1, v6, 0, 0, 0, 1.0);
    v7 = (v6 + 8);
    (*(*a1 + 152))(a1, v7, 0, 0, 0, 0.0);
    v4 = (v7 - 23);
  }

  while (v4 != 8);
  (*(*a1 + 152))(a1, 32, 0, 0, 0, 40.0);
  v8 = (*(*a1 + 152))(a1, 33, 0, 0, 0, 0.0);
  a1[3004] = AUDebugFeature::IsNonFiniteHandlingEnabled(v8);
  return a1;
}

void sub_1DDD2F024(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  CACFString::~CACFString((v20 + 2952));
  CACFArray::~CACFArray((v20 + 2936));
  CACFArray::~CACFArray((v20 + 2920));
  CACFArray::~CACFArray((v20 + 2904));
  CACFArray::~CACFArray((v20 + 2888));
  CACFArray::~CACFArray((v20 + 2872));
  CACFArray::~CACFArray((v20 + 2856));
  CACFArray::~CACFArray((v20 + 2840));
  CACFArray::~CACFArray((v20 + 2824));
  CACFDictionary::~CACFDictionary((v20 + 2808));
  v24 = *(v20 + 2784);
  if (v24)
  {
    *(v20 + 2792) = v24;
    operator delete(v24);
  }

  v25 = *(v20 + 2760);
  if (v25)
  {
    *(v20 + 2768) = v25;
    operator delete(v25);
  }

  std::unique_ptr<CircArrayKernel>::reset[abi:ne200100]((v20 + 2752), 0);
  *(v20 + 640) = v21;
  ca::concurrent::deferred_deletion_queue<CircArrayKernel,10ul,std::default_delete<CircArrayKernel>>::~deferred_deletion_queue(v22);
  AUJBase::~AUJBase(v20);
  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AULeanSpatial>::Factory()
{
  result = malloc_type_malloc(0x320uLL, 0x10F3040E888EA49uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AULeanSpatial>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AULeanSpatial>::Destruct;
  return result;
}

uint64_t ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AULeanSpatial>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = ausdk::AUBase::AUBase(a1, a2, 1, 1);
  *v4 = &unk_1F591E648;
  *(v4 + 66) = 0;
  *(v4 + 268) = 0;
  v5 = (v4 + 544);
  *(v4 + 656) = 0;
  *(v4 + 34) = 0u;
  *(v4 + 35) = 0u;
  *(v4 + 36) = 0u;
  *(v4 + 37) = 0u;
  *(v4 + 76) = 0;
  caulk::make_string("%p", __p, a2);
  AudioDSP::Core::HeadTracker::HeadTracker();
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  *(a1 + 704) = xmmword_1DE097CE0;
  *(a1 + 720) = 0;
  v6 = getLSLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *__p = 136315650;
    *&__p[4] = "Oct 12 2025";
    *&__p[12] = 2080;
    *&__p[14] = "21:27:36";
    *&__p[22] = 1024;
    LODWORD(v27) = 0x10000;
    _os_log_debug_impl(&dword_1DDB85000, v6, OS_LOG_TYPE_DEBUG, "AULeanSpatial: Built %s %s, version 0x%x", __p, 0x1Cu);
  }

  ausdk::AUBase::CreateElements(a1);
  v7 = 0;
  *__p = 0x40D7700000000000;
  *&__p[8] = xmmword_1DE09BD50;
  v27 = xmmword_1DE09BD60;
  v23 = 0x40D7700000000000;
  v24 = xmmword_1DE09BD50;
  v25 = xmmword_1DE09C4E0;
  while (1)
  {
    v8 = *(a1 + 120);
    if (v8)
    {
      LODWORD(v9) = (*(*v8 + 24))(v8);
    }

    else
    {
      v9 = (*(a1 + 104) - *(a1 + 96)) >> 3;
    }

    if (v7 >= v9)
    {
      break;
    }

    Element = ausdk::AUScope::GetElement((a1 + 80), v7);
    if (!Element)
    {
LABEL_25:
      ausdk::Throw(0xFFFFD583);
    }

    (*(*Element + 56))(Element, __p);
    ++v7;
  }

  for (i = 0; ; ++i)
  {
    v12 = *(a1 + 168);
    if (v12)
    {
      LODWORD(v13) = (*(*v12 + 24))(v12);
    }

    else
    {
      v13 = (*(a1 + 152) - *(a1 + 144)) >> 3;
    }

    if (i >= v13)
    {
      break;
    }

    v14 = ausdk::AUScope::GetElement((a1 + 128), i);
    if (!v14)
    {
      goto LABEL_25;
    }

    (*(*v14 + 56))(v14, &v23);
  }

  (*(*a1 + 512))(a1, 4096);
  v15 = 0;
  v16 = &dword_1E8669F30;
  do
  {
    v17 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
    if ((v18 & 1) == 0)
    {
      abort();
    }

    ausdk::AUElement::SetParameter(v17, v15++, *v16);
    v16 += 8;
  }

  while (v15 != 17);
  *(a1 + 616) = 17;
  AULeanSpatial::AddSourceParameters(a1, 4);
  *(a1 + 624) = xmmword_1E866A0C8;
  *(a1 + 640) = unk_1E866A0D8;
  *__p = -1;
  std::vector<unsigned int>::resize(v5, 4uLL, __p);
  v19 = [MEMORY[0x1E696AAE8] mainBundle];
  v20 = [v19 bundleIdentifier];

  [v20 isEqualToString:@"com.apple.audiomxd"];
  AudioDSP::Core::HeadTracker::SetCanAccessHALAPIs((a1 + 664));
  v21 = getLSLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    *__p = 0;
    _os_log_debug_impl(&dword_1DDB85000, v21, OS_LOG_TYPE_DEBUG, "AULeanSpatial: constructed", __p, 2u);
  }

  return a1;
}

void sub_1DDD2F5F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  MEMORY[0x1E12BC320](v20 + 83);
  v24 = v20[74];
  if (v24)
  {
    v20[75] = v24;
    operator delete(v24);
  }

  v25 = v20[71];
  if (v25)
  {
    v20[72] = v25;
    operator delete(v25);
  }

  v26 = *v21;
  if (*v21)
  {
    v20[69] = v26;
    operator delete(v26);
  }

  _ZNSt3__110unique_ptrIN11LeanSpatial8LSEngineIDF16_EENS_14default_deleteIS3_EEE5resetB8ne200100EPS3_(v20 + 66, 0);
  ausdk::AUBase::~AUBase(v20);
  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUScotty>::Factory()
{
  result = malloc_type_malloc(0x338uLL, 0x10F3040FBA758A3uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUScotty>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUScotty>::Destruct;
  return result;
}

uint64_t ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUScotty>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  *ausdk::AUBase::AUBase(a1, a2, 1, 1) = &unk_1F5920CA8;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](buf);
  MEMORY[0x1E12BCBD0](&buf[16], a2);
  if ((v31 & 0x10) != 0)
  {
    v5 = v30;
    if (v30 < v27)
    {
      v30 = v27;
      v5 = v27;
    }

    v6 = __src;
  }

  else
  {
    if ((v31 & 8) == 0)
    {
      v4 = 0;
      *(a1 + 551) = 0;
      goto LABEL_11;
    }

    v6 = v24;
    v5 = v25;
  }

  v4 = v5 - v6;
  if (v5 - v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 551) = v4;
  v7 = (a1 + 528);
  if (v4)
  {
    memmove(v7, v6, v4);
    goto LABEL_14;
  }

LABEL_11:
  v7 = (a1 + 528);
LABEL_14:
  *(v7 + v4) = 0;
  *buf = *MEMORY[0x1E69E54D8];
  v8 = *(MEMORY[0x1E69E54D8] + 72);
  *&buf[*(*buf - 24)] = *(MEMORY[0x1E69E54D8] + 64);
  *&buf[16] = v8;
  *&v23 = MEMORY[0x1E69E5548] + 16;
  if (v29 < 0)
  {
    operator delete(__p);
  }

  *&v23 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v23 + 1);
  std::iostream::~basic_iostream();
  MEMORY[0x1E12BD050](&v32);
  *(a1 + 552) = -1;
  *(a1 + 560) = 16777217;
  *(a1 + 568) = 1;
  *(a1 + 576) = 0;
  *(a1 + 584) = 0;
  caulk::pooled_semaphore_mutex::pooled_semaphore_mutex((a1 + 588));
  *(a1 + 752) = 0;
  *(a1 + 720) = 0u;
  *(a1 + 736) = 0u;
  *(a1 + 688) = 0u;
  *(a1 + 704) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0u;
  if (getScottyLog(void)::onceToken != -1)
  {
    dispatch_once(&getScottyLog(void)::onceToken, &__block_literal_global_30786);
  }

  v9 = getScottyLog(void)::gLog;
  if (os_log_type_enabled(getScottyLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
  {
    v10 = a1 + 528;
    if (*(a1 + 551) < 0)
    {
      v10 = *(a1 + 528);
    }

    *buf = 136315394;
    *&buf[4] = v10;
    *&buf[12] = 2080;
    *&buf[14] = "AUScotty";
    _os_log_impl(&dword_1DDB85000, v9, OS_LOG_TYPE_DEFAULT, "[%s|%s] Constructing", buf, 0x16u);
  }

  ausdk::AUBase::CreateElements(a1);
  v11 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v12 & 1) == 0)
  {
    abort();
  }

  (*(*v11 + 40))(v11, 34);
  *buf = 0x40E5888000000000;
  *&buf[8] = xmmword_1DE09BD50;
  v23 = xmmword_1DE09C720;
  Element = ausdk::AUScope::GetElement((a1 + 80), 0);
  if (!Element || ((*(*Element + 56))(Element, buf), (v14 = ausdk::AUScope::GetElement((a1 + 128), 0)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  (*(*v14 + 56))(v14, buf);
  for (i = 0; i != 34; ++i)
  {
    *v33 = 0;
    if (ScottyUpmixer::GetParamDefault(i, 0, v33))
    {
      ausdk::AUBase::SetParameter(a1, i, 0, 0, *v33);
    }
  }

  v16 = ausdk::AUBase::SetAFactoryPresetAsCurrent(a1, &kPresets);
  v17 = 0;
  *(a1 + 563) = AUDebugFeature::IsNonFiniteHandlingEnabled(v16);
  do
  {
    *v33 = 0;
    if (ScottyUpmixer::GetParamDefault(v17, 0, v33))
    {
      v18 = *v33;
    }

    else
    {
      for (j = 0; j != 340; j += 10)
      {
        if (kParameterInfo[j] == v17)
        {
          v18 = kParameterInfo[j + 7];
          goto LABEL_41;
        }
      }

      if (getScottyLog(void)::onceToken != -1)
      {
        dispatch_once(&getScottyLog(void)::onceToken, &__block_literal_global_30786);
      }

      v20 = getScottyLog(void)::gLog;
      v18 = 0;
      if (os_log_type_enabled(getScottyLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
      {
        *v33 = 136315394;
        v34 = "GetParamDefault";
        v35 = 1024;
        v36 = v17;
        _os_log_impl(&dword_1DDB85000, v20, OS_LOG_TYPE_DEFAULT, "%s: Invalid Parameter ID: %u", v33, 0x12u);
      }
    }

LABEL_41:
    atomic_store(v18, (a1 + 592 + 4 * v17++));
  }

  while (v17 != 34);
  return a1;
}

void sub_1DDD2FD34(_Unwind_Exception *a1)
{
  if (v1[551] < 0)
  {
    operator delete(*v2);
  }

  ausdk::AUBase::~AUBase(v1);
  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AULando>::Factory()
{
  result = malloc_type_malloc(0x268uLL, 0x10F3040D0FB2EDDuLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AULando>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AULando>::Destruct;
  return result;
}

void ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AULando>::Construct(ausdk::AUBase *a1, OpaqueAudioComponentInstance *a2)
{
  v2 = ausdk::AUBase::AUBase(a1, a2, 1, 1);
  *v2 = &unk_1F591F338;
  *(v2 + 528) = 0;
  *(v2 + 67) = 0x40E5888000000000;
  operator new();
}

void sub_1DDD30670(_Unwind_Exception *a1)
{
  PPUtils::ContiguousArray2D<float>::~ContiguousArray2D((v2 + 136));
  PPUtils::ContiguousArray2D<float>::~ContiguousArray2D((v2 + 80));
  PPUtils::ContiguousArray2D<float>::~ContiguousArray2D((v2 + 24));
  std::unique_ptr<IR::IRProcessor>::reset[abi:ne200100]((v2 + 16), 0);
  std::unique_ptr<IR::IRProcessor>::reset[abi:ne200100](v3, 0);
  std::unique_ptr<Crossover2f>::reset[abi:ne200100](v2, 0);
  MEMORY[0x1E12BD160](v2, 0x10A0C4052BE26CALL);
  ausdk::AUBase::~AUBase(v1);
  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUCarter>::Factory()
{
  result = malloc_type_malloc(0x3B0uLL, 0x10F3040266AC972uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUCarter>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUCarter>::Destruct;
  return result;
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUCarter>::Construct(void *a1, OpaqueAudioComponentInstance *a2)
{
  v3 = ausdk::AUBase::AUBase(a1, a2, 1, 1);
  *v3 = &unk_1F59370D0;
  *(v3 + 528) = 0;
  *(v3 + 67) = 0x40E5888000000000;
  *(v3 + 68) = 0;
  *(v3 + 89) = 0;
  ausdk::AUBase::CreateElements(v3);
  v4 = 0;
  v16 = 0x40E7700000000000;
  v17 = xmmword_1DE09BD50;
  v18 = xmmword_1DE09C720;
  v13 = 0x40E7700000000000;
  v14 = xmmword_1DE09BD50;
  v15 = xmmword_1DE09C4E0;
  while (1)
  {
    v5 = a1[15];
    if (v5)
    {
      LODWORD(v6) = (*(*v5 + 24))(v5);
    }

    else
    {
      v6 = (a1[13] - a1[12]) >> 3;
    }

    if (v4 >= v6)
    {
      break;
    }

    Element = ausdk::AUScope::GetElement((a1 + 10), v4);
    if (!Element)
    {
LABEL_16:
      ausdk::Throw(0xFFFFD583);
    }

    (*(*Element + 56))(Element, &v16);
    ++v4;
  }

  for (i = 0; ; ++i)
  {
    v9 = a1[21];
    if (v9)
    {
      LODWORD(v10) = (*(*v9 + 24))(v9);
    }

    else
    {
      v10 = (a1[19] - a1[18]) >> 3;
    }

    if (i >= v10)
    {
      break;
    }

    v11 = ausdk::AUScope::GetElement((a1 + 16), i);
    if (!v11)
    {
      goto LABEL_16;
    }

    (*(*v11 + 56))(v11, &v13);
  }

  return a1;
}

void sub_1DDD309A0(_Unwind_Exception *a1)
{
  std::unique_ptr<IR::DelayLine<float>>::reset[abi:ne200100](v1 + 89, 0);
  std::unique_ptr<IR::DelayLine<float>>::reset[abi:ne200100](v1 + 68, 0);
  ausdk::AUBase::~AUBase(v1);
  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUFIREngine>::Factory()
{
  result = malloc_type_malloc(0xB80uLL, 0x10F304066A300FBuLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUFIREngine>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUFIREngine>::Destruct;
  return result;
}

AULeanSpatial *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUFIREngine>::Construct(AULeanSpatial *a1, OpaqueAudioComponentInstance *a2)
{
  std::string::basic_string[abi:ne200100]<0>(v12, "AUFIREngine_");
  std::string::basic_string[abi:ne200100]<0>(&__p, "firengine_verbose");
  AUJBase::AUJBase(a1, a2, v12);
  if (v11 < 0)
  {
    operator delete(__p);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  *a1 = &unk_1F5932D78;
  *(a1 + 316) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 41) = 0u;
  *(a1 + 88) = &unk_1F5933018;
  *(a1 + 96) = &unk_1F5933038;
  boost::lockfree::queue<std::vector<std::vector<float>> *,boost::lockfree::capacity<10ul>>::queue(a1 + 208);
  boost::lockfree::queue<std::vector<std::vector<float>> *,boost::lockfree::capacity<10ul>>::queue(a1 + 448);
  *(a1 + 2753) = 0;
  *(a1 + 176) = 0u;
  *(a1 + 177) = 0u;
  *(a1 + 178) = 0u;
  ausdk::AUBase::CreateElements(a1);
  (*(*a1 + 152))(a1, 0, 0, 0, 0, 0.0);
  (*(*a1 + 152))(a1, 1, 0, 0, 0, 20.0);
  (*(*a1 + 152))(a1, 2, 0, 0, 0, 0.0);
  for (i = 0; ; ++i)
  {
    NumberOfInputChannels = AULeanSpatial::GetNumberOfInputChannels(a1);
    if (i >= AUFIREngine::GetNumberOfOutputChannels(a1) * NumberOfInputChannels)
    {
      break;
    }

    AUFIREngine::AddParameter(a1, i + 1000000, v6);
    AUFIREngine::AddParameter(a1, i + 2000000, v7);
    AUFIREngine::AddParameter(a1, i + 3000000, v8);
  }

  return a1;
}

void sub_1DDD30CC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUMatrixPatcher>::Factory()
{
  result = malloc_type_malloc(0x2E8uLL, 0x10F3040A6FD3B1FuLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUMatrixPatcher>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUMatrixPatcher>::Destruct;
  return result;
}

uint64_t ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUMatrixPatcher>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v3 = ausdk::AUBase::AUBase(a1, a2, 1, 1);
  *v3 = &unk_1F5930CA0;
  *(v3 + 528) = 0;
  *(v3 + 616) = 0;
  *(a1 + 624) = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  *(a1 + 632) = 257;
  *(a1 + 640) = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  *(a1 + 648) = 257;
  *(a1 + 656) = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  *(a1 + 664) = 257;
  *(a1 + 672) = 0x100000001;
  ausdk::AUBase::CreateElements(a1);
  v8 = 0x40E5888000000000;
  v9 = xmmword_1DE09BD50;
  v10 = xmmword_1DE09BD60;
  Element = ausdk::AUScope::GetElement((a1 + 80), 0);
  if (!Element || ((*(*Element + 56))(Element, &v8), (v5 = ausdk::AUScope::GetElement((a1 + 128), 0)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  (*(*v5 + 56))(v5, &v8);
  if (*(a1 + 676) * *(a1 + 672))
  {
    v6 = 0;
    do
    {
      (*(*a1 + 152))(a1, v6, 0, 0, 0, 0.0);
      v6 = (v6 + 1);
    }

    while (v6 < *(a1 + 676) * *(a1 + 672));
  }

  return a1;
}

void sub_1DDD30FD4(_Unwind_Exception *a1)
{
  CACFDictionary::~CACFDictionary((v1 + 656));
  CACFArray::~CACFArray((v1 + 640));
  CACFArray::~CACFArray((v1 + 624));
  if (v1[616] == 1)
  {
    MatrixMixerCore::~MatrixMixerCore((v1 + 528));
  }

  ausdk::AUBase::~AUBase(v1);
  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUDecorrelator>::Factory()
{
  result = malloc_type_malloc(0x2C0uLL, 0x10F3040E15F77AFuLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUDecorrelator>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUDecorrelator>::Destruct;
  return result;
}

uint64_t ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUDecorrelator>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v3 = ausdk::AUBase::AUBase(a1, a2, 1, 1);
  *v3 = &unk_1F592A1E8;
  *(v3 + 528) = 0;
  *(v3 + 532) = 0;
  *(v3 + 68) = 0x246BB8000;
  *(v3 + 138) = 1045220557;
  *(v3 + 74) = 0x100000000;
  *(v3 + 75) = 0x3DCCCCCD00000002;
  v4 = (v3 + 608);
  *(v3 + 38) = 0u;
  *(v3 + 39) = 0u;
  ausdk::AUBase::CreateElements(v3);
  v5 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v6 & 1) == 0 || ((*(*v5 + 40))(v5, 3), v7 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v8 & 1) == 0) || (ausdk::AUElement::SetParameter(v7, 0, 0.2), v9 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v10 & 1) == 0) || (ausdk::AUElement::SetParameter(v9, 1u, 0.0), v11 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v12 & 1) == 0))
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v11, 2u, 1.0);
  *(a1 + 552) = 1045220557;
  *(a1 + 592) = 0x100000000;
  v22 = 0x40D7700000000000;
  *__p = xmmword_1DE09BD50;
  v24 = xmmword_1DE09C4E0;
  Element = ausdk::AUScope::GetElement((a1 + 80), 0);
  if (!Element || ((*(*Element + 56))(Element, &v22), (v14 = ausdk::AUScope::GetElement((a1 + 128), 0)) == 0) || ((*(*v14 + 56))(v14, &v22), *(a1 + 540) = 0, (v15 = ausdk::AUScope::GetElement((a1 + 80), 0)) == 0) || (v16 = *(v15 + 80), *(a1 + 544) = v16, (v17 = ausdk::AUScope::GetElement((a1 + 80), 0)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  v18 = *(v17 + 108);
  if (v18 >= 2)
  {
    v18 = 2;
  }

  *(a1 + 548) = v18;
  v19 = *(a1 + 336);
  v22 = __PAIR64__(*(a1 + 552), v18);
  std::vector<float>::vector[abi:ne200100](__p, v19);
  *(&v24 + 1) = *(a1 + 592);
  *(a1 + 600) = v22;
  if ((a1 + 600) != &v22)
  {
    std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v4, __p[0], __p[1], (__p[1] - __p[0]) >> 2);
  }

  v20 = __p[0];
  *(a1 + 632) = *(&v24 + 1);
  if (v20)
  {
    __p[1] = v20;
    operator delete(v20);
  }

  return a1;
}

void sub_1DDD31378(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  v15 = *v13;
  if (*v13)
  {
    *(v12 + 77) = v15;
    operator delete(v15);
  }

  ausdk::AUBase::~AUBase(v12);
  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUTweakaLeakIR>::Factory()
{
  result = malloc_type_malloc(0x4C0uLL, 0x10F3040D77B7336uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUTweakaLeakIR>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUTweakaLeakIR>::Destruct;
  return result;
}

uint64_t ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUTweakaLeakIR>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v3 = (a1 + 540);
  v4 = ausdk::AUBase::AUBase(a1, a2, 2, 1);
  *v4 = &unk_1F5923A30;
  *(v4 + 66) = 0;
  *(v4 + 535) = 0;
  *v3 = xmmword_1DE09C740;
  *(v4 + 556) = 0x3F80000000000100;
  *(v4 + 628) = xmmword_1DE0BB524;
  *(v4 + 644) = unk_1DE0BB534;
  *(v4 + 660) = xmmword_1DE0BB544;
  *(v4 + 564) = xmmword_1DE0BB4E4;
  *(v4 + 580) = unk_1DE0BB4F4;
  *(v4 + 596) = xmmword_1DE0BB504;
  *(v4 + 612) = unk_1DE0BB514;
  *(v4 + 676) = 1;
  *(v3 + 140) = xmmword_1DE09C750;
  *(v4 + 87) = 0x800000004;
  *(v4 + 176) = 5;
  *(v3 + 168) = xmmword_1DE09C760;
  *(v3 + 184) = xmmword_1DE09C770;
  *(v3 + 200) = xmmword_1DE09C780;
  *(v4 + 189) = 1151500288;
  *(v4 + 95) = 0x3F80000044A28000;
  *(v4 + 768) = 0;
  *(v4 + 840) = 0u;
  *(v4 + 887) = 0;
  *(v4 + 772) = 0u;
  *(v4 + 788) = 0u;
  *(v4 + 804) = 0u;
  *(v4 + 205) = 0;
  *(v4 + 888) = xmmword_1DE09C790;
  *(v4 + 904) = 0;
  v5 = (v4 + 912);
  *(v4 + 936) = 0;
  *(v4 + 116) = 0;
  *(v4 + 57) = 0u;
  *(v4 + 59) = 0u;
  *(v4 + 60) = 0u;
  *(v4 + 61) = 0u;
  *(v4 + 62) = 0u;
  *(v4 + 63) = 0u;
  *(v4 + 64) = 0u;
  *(a1 + 1040) = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  *(a1 + 1048) = 257;
  *(a1 + 1064) = 0;
  *(a1 + 1072) = 0;
  *(a1 + 1128) = 0;
  *(a1 + 1080) = 0u;
  *(a1 + 1096) = 0u;
  *(a1 + 1112) = 0u;
  *(a1 + 1148) = 0;
  *(a1 + 1132) = 0u;
  ausdk::AUBase::CreateElements(a1);
  v6 = 0;
  v77 = 0x40CF400000000000;
  v78 = xmmword_1DE09BD50;
  v79 = xmmword_1DE09BD60;
  while (1)
  {
    v7 = *(a1 + 120);
    if (v7)
    {
      LODWORD(v8) = (*(*v7 + 24))(v7);
    }

    else
    {
      v8 = (*(a1 + 104) - *(a1 + 96)) >> 3;
    }

    if (v6 >= v8)
    {
      break;
    }

    Element = ausdk::AUScope::GetElement((a1 + 80), v6);
    if (!Element)
    {
LABEL_47:
      ausdk::Throw(0xFFFFD583);
    }

    (*(*Element + 56))(Element, &v77);
    ++v6;
  }

  for (i = 0; ; ++i)
  {
    v11 = *(a1 + 168);
    if (v11)
    {
      LODWORD(v12) = (*(*v11 + 24))(v11);
    }

    else
    {
      v12 = (*(a1 + 152) - *(a1 + 144)) >> 3;
    }

    if (i >= v12)
    {
      break;
    }

    v13 = ausdk::AUScope::GetElement((a1 + 128), i);
    if (!v13)
    {
      goto LABEL_47;
    }

    (*(*v13 + 56))(v13, &v77);
  }

  v14 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v15 & 1) == 0
    || ((*(*v14 + 40))(v14, 30), v16 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v17 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v16, 0, 0.0), v18 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v19 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v18, 0x15u, 0.0), v20 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v21 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v20, 1u, 0.0), v22 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v23 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v22, 2u, 512.0), v24 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v25 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v24, 3u, 192.0), v26 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v27 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v26, 4u, 500.0), v28 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v29 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v28, 5u, 1000.0), v30 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v31 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v30, 6u, 11.0), v32 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v33 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v32, 7u, 0.0), v34 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v35 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v34, 8u, 6.0), v36 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v37 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v36, 9u, -2.0), v38 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v39 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v38, 0xAu, 9.0), v40 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v41 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v40, 0xBu, -5.0), v42 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v43 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v42, 0xCu, -25.0), v44 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v45 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v44, 0xDu, 0.01), v46 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v47 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v46, 0xEu, 0.01), v48 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v49 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v48, 0xFu, 1.1), v50 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v51 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v50, 0x10u, 1300.0), v52 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v53 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v52, 0x11u, 1300.0), v54 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v55 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v54, 0x16u, 0.0), v56 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v57 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v56, 0x17u, 70.0), v58 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v59 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v58, 0x12u, 90.0), v60 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v61 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v60, 0x13u, 5.0), v62 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v63 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v62, 0x14u, 0.01), v64 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v65 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v64, 0x18u, 0.0), v66 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v67 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v66, 0x19u, 0.0), v68 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v69 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v68, 0x1Au, 0.0), v70 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v71 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v70, 0x1Bu, 2.0), v72 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v73 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v72, 0x1Cu, 1.0), v74 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v75 & 1) == 0))
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v74, 0x1Du, 0.0);
  *(a1 + 376) = 1;
  (*(*a1 + 512))(a1, 192);
  *(a1 + 856) = 0;
  *(a1 + 540) = *(a1 + 336);
  *(a1 + 544) = 16000;
  *(a1 + 857) = 0x101010101010101;
  *(a1 + 865) = 0x101010101010101;
  *(a1 + 873) = 0x101010101010101;
  *(a1 + 879) = 0x101010101010101;
  *(a1 + 536) = 0;
  *(a1 + 538) = 0;
  *(a1 + 808) = 0u;
  *(a1 + 824) = 0u;
  *(a1 + 908) = 1;
  DspLib::Biquad::Filter::uninitialize((a1 + 936));
  std::unique_ptr<BiquadInterpolator>::reset[abi:ne200100]((a1 + 1008), 0);
  *(a1 + 887) = 0;
  std::vector<DspLib::Biquad::Section>::resize(v5, 1uLL);
  return a1;
}

void sub_1DDD31BB8(_Unwind_Exception *a1)
{
  v5 = v1[127];
  if (v5)
  {
    v1[128] = v5;
    operator delete(v5);
  }

  std::unique_ptr<BiquadInterpolator>::reset[abi:ne200100](v1 + 126, 0);
  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((v1 + 123));
  v6 = v1[120];
  if (v6)
  {
    v1[121] = v6;
    operator delete(v6);
  }

  v7 = *v3;
  if (*v3)
  {
    v1[115] = v7;
    operator delete(v7);
  }

  v8 = v1[106];
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v9 = v1[98];
  if (v9)
  {
    v1[99] = v9;
    operator delete(v9);
  }

  std::unique_ptr<AUTweakaLeakIR::AURealTimeDebugLog<AUTweakaLeakIR::TaLIRInternals,256ul>>::reset[abi:ne200100](v2, 0);
  ausdk::AUBase::~AUBase(v1);
  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessLookup,AUDCBlocker>::Factory()
{
  result = malloc_type_malloc(0x298uLL, 0x10F304003C022C6uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessLookup,AUDCBlocker>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessLookup,AUDCBlocker>::Destruct;
  return result;
}

uint64_t ausdk::APFactory<ausdk::AUBaseProcessLookup,AUDCBlocker>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v3 = ausdk::AUBase::AUBase(a1, a2, 1, 1);
  *v3 = &unk_1F5922DB8;
  v4 = (v3 + 544);
  *(v3 + 33) = xmmword_1DE09C7A0;
  *(v3 + 34) = 0u;
  *(v3 + 35) = 0u;
  *(v3 + 72) = 0;
  *(v3 + 73) = 1065353216;
  *(v3 + 74) = 0;
  ausdk::AUBase::CreateElements(v3);
  std::vector<BiquadCoefficients>::resize(v4, 1uLL);
  v5 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v6 & 1) == 0 || (ausdk::AUElement::SetParameter(v5, 0, 30.0), v7 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v8 & 1) == 0) || (ausdk::AUElement::SetParameter(v7, 1u, 35.0), v9 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v10 & 1) == 0))
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v9, 2u, 0.0);
  v14 = 0x40E5888000000000;
  v15 = xmmword_1DE09BD50;
  v16 = xmmword_1DE09C4E0;
  Element = ausdk::AUScope::GetElement((a1 + 80), 0);
  if (!Element || ((*(*Element + 56))(Element, &v14), (v12 = ausdk::AUScope::GetElement((a1 + 128), 0)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  (*(*v12 + 56))(v12, &v14);
  return a1;
}

void sub_1DDD31ED0(_Unwind_Exception *a1)
{
  v4 = *(v1 + 74);
  if (v4)
  {
    free(v4);
    *(v1 + 74) = 0;
  }

  CADeprecated::CAAutoDelete<ausdk::AUBufferList>::set(v1 + 72, 0);
  v5 = *(v1 + 71);
  if (v5)
  {
    (*(*v5 + 8))(v5);
    *(v1 + 71) = 0;
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 69) = v6;
    operator delete(v6);
  }

  ausdk::AUBase::~AUBase(v1);
  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessLookup,AUEarPlug>::Factory()
{
  result = malloc_type_malloc(0x2A0uLL, 0x10F304049C390F8uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessLookup,AUEarPlug>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessLookup,AUEarPlug>::Destruct;
  return result;
}

void *ausdk::APFactory<ausdk::AUBaseProcessLookup,AUEarPlug>::Construct(void *a1, OpaqueAudioComponentInstance *a2)
{
  v3 = ausdk::AUBase::AUBase(a1, a2, 1, 1);
  *v3 = &unk_1F5926E48;
  *(v3 + 66) = 0;
  *(v3 + 536) = 0;
  *(v3 + 36) = 0u;
  *(v3 + 37) = 0u;
  ausdk::AUBase::CreateElements(v3);
  v4 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 4), 0);
  if ((v5 & 1) == 0)
  {
LABEL_12:
    abort();
  }

  ausdk::AUElement::SetParameter(v4, 0, 5.0);
  for (i = 0; i != 4; ++i)
  {
    v7 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 4), 0);
    if ((v8 & 1) == 0)
    {
      goto LABEL_12;
    }

    ausdk::AUElement::SetParameter(v7, i + 1, 0.0);
    v9 = a1 + 4 * i;
    *(v9 + 135) = 0;
    *(v9 + 139) = 1065353216;
  }

  v10 = a1[74];
  if (v10)
  {
    free(v10);
    a1[74] = 0;
  }

  v11 = a1[75];
  if (v11)
  {
    free(v11);
    a1[75] = 0;
  }

  v15[0] = xmmword_1DE0E9148;
  v15[1] = unk_1DE0E9158;
  v16 = 32;
  Element = ausdk::AUScope::GetElement((a1 + 10), 0);
  if (!Element || ((*(*Element + 56))(Element, v15), (v13 = ausdk::AUScope::GetElement((a1 + 16), 0)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  (*(*v13 + 56))(v13, v15);
  return a1;
}

void sub_1DDD3216C(_Unwind_Exception *a1)
{
  v3 = *(v1 + 75);
  if (v3)
  {
    free(v3);
    *(v1 + 75) = 0;
  }

  v4 = *(v1 + 74);
  if (v4)
  {
    free(v4);
    *(v1 + 74) = 0;
  }

  ausdk::AUBase::~AUBase(v1);
  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AURotationShading>::Factory()
{
  result = malloc_type_malloc(0x2C8uLL, 0x10F3040FFBE0D51uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AURotationShading>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AURotationShading>::Destruct;
  return result;
}

uint64_t ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AURotationShading>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v3 = ausdk::AUBase::AUBase(a1, a2, 1, 1);
  *v3 = &unk_1F5923008;
  *(v3 + 132) = 1;
  v4 = (v3 + 544);
  *(v3 + 532) = 0u;
  *(v3 + 548) = 0u;
  *(v3 + 564) = 0u;
  *(v3 + 580) = 0u;
  *(v3 + 596) = 1;
  *(v3 + 302) = 1;
  *(v3 + 606) = 0;
  ausdk::AUBase::CreateElements(v3);
  std::vector<BiquadCoefficients>::resize(v4, 2uLL);
  v5 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v6 & 1) == 0 || (ausdk::AUElement::SetParameter(v5, 0, 1.0), v7 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v8 & 1) == 0) || (ausdk::AUElement::SetParameter(v7, 1u, 1.0), v9 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v10 & 1) == 0) || (ausdk::AUElement::SetParameter(v9, 2u, 4000.0), v11 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v12 & 1) == 0))
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v11, 3u, 4000.0);
  v19 = 0x40E5888000000000;
  v20 = xmmword_1DE09BD50;
  v21 = xmmword_1DE09C4E0;
  Element = ausdk::AUScope::GetElement((a1 + 80), 0);
  if (!Element)
  {
    ausdk::Throw(0xFFFFD583);
  }

  (*(*Element + 56))(Element, &v19);
  v16 = 0x40E5888000000000;
  v17 = xmmword_1DE09BD50;
  v18 = xmmword_1DE09C560;
  v14 = ausdk::AUScope::GetElement((a1 + 128), 0);
  if (!v14)
  {
    ausdk::Throw(0xFFFFD583);
  }

  (*(*v14 + 56))(v14, &v16);
  *(a1 + 640) = 0;
  *(a1 + 608) = 0u;
  *(a1 + 624) = 0u;
  return a1;
}

void sub_1DDD32438(_Unwind_Exception *a1)
{
  v4 = *(v1 + 71);
  if (v4)
  {
    *(v1 + 72) = v4;
    operator delete(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    *(v1 + 69) = v5;
    operator delete(v5);
  }

  ausdk::AUBase::~AUBase(v1);
  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUReferenceSignalMixer>::Factory()
{
  result = malloc_type_malloc(0x2E8uLL, 0x10F3040852208D9uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUReferenceSignalMixer>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUReferenceSignalMixer>::Destruct;
  return result;
}

ausdk::AUBase *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUReferenceSignalMixer>::Construct(ausdk::AUBase *a1, OpaqueAudioComponentInstance *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = ausdk::AUBase::AUBase(a1, a2, 1, 1);
  *v3 = &unk_1F591E898;
  *(v3 + 528) = 0;
  *(v3 + 133) = 2;
  *(v3 + 536) = 0;
  *(v3 + 560) = 0;
  *(v3 + 142) = 2;
  *(v3 + 576) = 0;
  *(v3 + 600) = 0;
  *(v3 + 76) = 1;
  *(v3 + 77) = &unk_1F591EAE8;
  *(v3 + 39) = 0u;
  *(v3 + 40) = 0u;
  *(v3 + 164) = 1065353216;
  *(v3 + 664) = 0u;
  v4 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(v3 + 32, 0);
  if ((v5 & 1) == 0)
  {
    abort();
  }

  (*(*v4 + 40))(v4, 1);
  AUReferenceSignalMixer::SetParameter(a1, 1.0);
  {
    AU::ReferenceSignalMixer::getLog(void)::gLog = os_log_create("com.apple.coreaudio", "AUReferenceSignalMixer");
  }

  v6 = AU::ReferenceSignalMixer::getLog(void)::gLog;
  if (os_log_type_enabled(AU::ReferenceSignalMixer::getLog(void)::gLog, OS_LOG_TYPE_INFO))
  {
    v8 = 134217984;
    v9 = a1;
    _os_log_impl(&dword_1DDB85000, v6, OS_LOG_TYPE_INFO, "[%p] created", &v8, 0xCu);
  }

  return a1;
}

void sub_1DDD326D8(_Unwind_Exception *a1)
{
  applesauce::CF::DictionaryRef::~DictionaryRef((v1 + 672));
  std::__hash_table<std::__hash_value_type<AU::ReferenceSignalMixer::Orientation,std::shared_ptr<AUReferenceSignalMixer::MatrixKernel>>,std::__unordered_map_hasher<AU::ReferenceSignalMixer::Orientation,std::__hash_value_type<AU::ReferenceSignalMixer::Orientation,std::shared_ptr<AUReferenceSignalMixer::MatrixKernel>>,std::hash<AU::ReferenceSignalMixer::Orientation>,std::equal_to<AU::ReferenceSignalMixer::Orientation>,true>,std::__unordered_map_equal<AU::ReferenceSignalMixer::Orientation,std::__hash_value_type<AU::ReferenceSignalMixer::Orientation,std::shared_ptr<AUReferenceSignalMixer::MatrixKernel>>,std::equal_to<AU::ReferenceSignalMixer::Orientation>,std::hash<AU::ReferenceSignalMixer::Orientation>,true>,std::allocator<std::__hash_value_type<AU::ReferenceSignalMixer::Orientation,std::shared_ptr<AUReferenceSignalMixer::MatrixKernel>>>>::~__hash_table(v1 + 624);
  if (*(v1 + 600) == 1)
  {
    v3 = *(v1 + 576);
    if (v3)
    {
      *(v1 + 584) = v3;
      operator delete(v3);
    }
  }

  if (*(v1 + 560) == 1)
  {
    v4 = *(v1 + 536);
    if (v4)
    {
      *(v1 + 544) = v4;
      operator delete(v4);
    }
  }

  ausdk::AUBase::~AUBase(v1);
  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessLookup,AUMNBandEQ>::Factory()
{
  result = malloc_type_malloc(0x348uLL, 0x10F3040F18111AFuLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessLookup,AUMNBandEQ>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessLookup,AUMNBandEQ>::Destruct;
  return result;
}

uint64_t ausdk::APFactory<ausdk::AUBaseProcessLookup,AUMNBandEQ>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v3 = ausdk::AUBase::AUBase(a1, a2, 1, 1);
  *v3 = &unk_1F5930660;
  *(v3 + 132) = 1;
  v4 = (v3 + 536);
  *(v3 + 40) = 0u;
  *(v3 + 41) = 0u;
  *(v3 + 42) = 0u;
  *(v3 + 43) = 0u;
  *(v3 + 44) = 0u;
  *(v3 + 45) = 0u;
  *(v3 + 46) = 0u;
  *(v3 + 47) = 0u;
  *(v3 + 96) = 0;
  *(v3 + 532) = 0u;
  *(v3 + 548) = 0u;
  *(v3 + 564) = 0u;
  *(v3 + 580) = 0u;
  *(v3 + 600) = 0u;
  *(v3 + 616) = 0u;
  *(v3 + 158) = 0;
  ausdk::AUBase::CreateElements(v3);
  std::vector<BiquadCoefficients>::resize(v4, 0x80uLL);
  for (i = 0; i != 8; ++i)
  {
    Element = ausdk::AUScope::GetElement((a1 + 584), i);
    ausdk::AUElement::SetParameter(Element, 0, 0.0);
    for (j = 0; j != 16; j = v11 - 4999)
    {
      SampleRate = AUDspLib::GetSampleRate(a1);
      v9 = pow(fmin(SampleRate * 0.5, 10000.0) / 40.0, j / 15.0);
      v10 = ausdk::AUScope::GetElement((a1 + 584), i);
      v11 = j + 1000;
      ausdk::AUElement::SetParameter(v10, v11, 1.0);
      v12 = ausdk::AUScope::GetElement((a1 + 584), i);
      v11 += 1000;
      ausdk::AUElement::SetParameter(v12, v11, 0.0);
      v13 = ausdk::AUScope::GetElement((a1 + 584), i);
      v14 = v9 * 40.0;
      v11 += 1000;
      ausdk::AUElement::SetParameter(v13, v11, v14);
      v15 = ausdk::AUScope::GetElement((a1 + 584), i);
      v11 += 1000;
      ausdk::AUElement::SetParameter(v15, v11, 0.0);
      v16 = ausdk::AUScope::GetElement((a1 + 584), i);
      v11 += 1000;
      ausdk::AUElement::SetParameter(v16, v11, 0.5);
    }
  }

  v20 = 0x40E5888000000000;
  v21 = xmmword_1DE09BD50;
  v22 = xmmword_1DE09C7B0;
  v17 = ausdk::AUScope::GetElement((a1 + 80), 0);
  if (!v17 || ((*(*v17 + 56))(v17, &v20), (v18 = ausdk::AUScope::GetElement((a1 + 128), 0)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  (*(*v18 + 56))(v18, &v20);
  return a1;
}

void sub_1DDD32A4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  SimpleMeters::~SimpleMeters((v2 + 80));
  std::vector<std::unique_ptr<ausdk::AUElement>>::__destroy_vector::operator()[abi:ne200100](va);
  v5 = v2[70];
  if (v5)
  {
    v2[71] = v5;
    operator delete(v5);
  }

  v6 = *v3;
  if (*v3)
  {
    v2[68] = v6;
    operator delete(v6);
  }

  ausdk::AUBase::~AUBase(v2);
  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessLookup,AUVariableEQV2>::Factory()
{
  result = malloc_type_malloc(0x568uLL, 0x10F3040894C4348uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessLookup,AUVariableEQV2>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessLookup,AUVariableEQV2>::Destruct;
  return result;
}

void *ausdk::APFactory<ausdk::AUBaseProcessLookup,AUVariableEQV2>::Construct(void *a1, OpaqueAudioComponentInstance *a2)
{
  v3 = a1 + 67;
  v4 = ausdk::AUBase::AUBase(a1, a2, 1, 1);
  v5 = 0;
  *v4 = &unk_1F592F6C8;
  *(v4 + 528) = 0;
  *v3 = xmmword_1DE095FA0;
  *(v4 + 138) = 0;
  *(v3 + 20) = xmmword_1DE095F90;
  *(v4 + 286) = 256;
  *(v4 + 574) = 0u;
  *(v4 + 295) = 0;
  *(v4 + 76) = 0;
  *(v4 + 78) = 0;
  *(v4 + 77) = 0;
  *(v4 + 158) = 0;
  *(v4 + 40) = 0u;
  *(v4 + 41) = 0u;
  *(v4 + 672) = 0;
  do
  {
    v6 = &a1[v5];
    *&a1[v5 + 85] = 0uLL;
    v6[87] = 0x3FF0000000000000;
    *(v6 + 44) = 0uLL;
    v5 += 5;
  }

  while (v5 != 40);
  for (i = 0; i != 40; i += 5)
  {
    v8 = &a1[i];
    *&a1[i + 125] = 0uLL;
    v8[127] = 0x3FF0000000000000;
    *(v8 + 64) = 0uLL;
  }

  ausdk::AUBase::CreateElements(a1);
  v9 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 4), 0);
  if ((v10 & 1) == 0 || (ausdk::AUElement::SetParameter(v9, 1u, 0.2), v11 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 4), 0), (v12 & 1) == 0) || (ausdk::AUElement::SetParameter(v11, 2u, 0.5), v13 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 4), 0), (v14 & 1) == 0) || (ausdk::AUElement::SetParameter(v13, 3u, 0.8), v15 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 4), 0), (v16 & 1) == 0) || (ausdk::AUElement::SetParameter(v15, 4u, 0.9), v17 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 4), 0), (v18 & 1) == 0) || (ausdk::AUElement::SetParameter(v17, 5u, 1.0), v19 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 4), 0), (v20 & 1) == 0) || (ausdk::AUElement::SetParameter(v19, 7u, 0.0), v21 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 4), 0), (v22 & 1) == 0))
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v21, 6u, 40.0);
  for (j = 0; ; ++j)
  {
    v24 = a1[83];
    if (v24)
    {
      LODWORD(v25) = (*(*v24 + 24))(v24);
    }

    else
    {
      v25 = (a1[81] - a1[80]) >> 3;
    }

    if (j >= v25)
    {
      break;
    }

    Element = ausdk::AUScope::GetElement((a1 + 78), j);
    ausdk::AUElement::SetParameter(Element, 0, 0.0);
    for (k = 3000; k != 3008; ++k)
    {
      v28 = ausdk::AUScope::GetElement((a1 + 78), j);
      ausdk::AUElement::SetParameter(v28, k - 1000, 0.0);
      v29 = ausdk::AUScope::GetElement((a1 + 78), j);
      ausdk::AUElement::SetParameter(v29, k, 1000.0);
      v30 = ausdk::AUScope::GetElement((a1 + 78), j);
      ausdk::AUElement::SetParameter(v30, k + 1000, 0.0);
      v31 = ausdk::AUScope::GetElement((a1 + 78), j);
      ausdk::AUElement::SetParameter(v31, k + 2000, 0.5);
      v32 = ausdk::AUScope::GetElement((a1 + 78), j);
      ausdk::AUElement::SetParameter(v32, k - 2000, 1.0);
    }
  }

  v36 = 0x40BF400000000000;
  v37 = xmmword_1DE09BD50;
  v38 = xmmword_1DE09BD60;
  v33 = ausdk::AUScope::GetElement((a1 + 10), 0);
  if (!v33 || ((*(*v33 + 56))(v33, &v36), (v34 = ausdk::AUScope::GetElement((a1 + 16), 0)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  (*(*v34 + 56))(v34, &v36);
  return a1;
}

void sub_1DDD32EC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  std::vector<std::unique_ptr<ausdk::AUElement>>::__destroy_vector::operator()[abi:ne200100](&a9);
  CADeprecated::CAAutoDelete<ausdk::AUBufferList>::set(v9 + 77, 0);
  CADeprecated::CAAutoDelete<ausdk::AUBufferList>::set(v9 + 76, 0);
  v11 = *(v9 + 73);
  if (v11)
  {
    (*(*v11 + 8))(v11);
    *(v9 + 73) = 0;
  }

  v12 = *(v9 + 72);
  if (v12)
  {
    (*(*v12 + 8))(v12);
    *(v9 + 72) = 0;
  }

  ausdk::AUBase::~AUBase(v9);
  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUAnomalyDetection>::Factory()
{
  result = malloc_type_malloc(0x2A0uLL, 0x10F304076B9E712uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUAnomalyDetection>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUAnomalyDetection>::Destruct;
  return result;
}

uint64_t ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUAnomalyDetection>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v3 = ausdk::AUBase::AUBase(a1, a2, 3, 1);
  *v3 = &unk_1F5920EF8;
  *(v3 + 528) = 0;
  *(v3 + 532) = xmmword_1DE09C7C0;
  *(v3 + 548) = 0x40C0000000000001;
  *(v3 + 139) = 0;
  *(v3 + 70) = 1065353216;
  *(v3 + 142) = 0;
  *(v3 + 572) = 1056964608;
  *(v3 + 73) = 0;
  *(v3 + 75) = 0;
  *(v3 + 74) = 0;
  ausdk::AUBase::CreateElements(v3);
  v28 = 0x40D7700000000000;
  v29 = xmmword_1DE09BD50;
  v30 = xmmword_1DE09BD60;
  Element = ausdk::AUScope::GetElement((a1 + 80), 0);
  if (!Element || ((*(*Element + 56))(Element, &v28), (v5 = ausdk::AUScope::GetElement((a1 + 80), 1u)) == 0) || ((*(*v5 + 56))(v5, &v28), v25 = 0x40D7700000000000, v26 = xmmword_1DE09BD50, v27 = xmmword_1DE09BD60, (v6 = ausdk::AUScope::GetElement((a1 + 80), 2u)) == 0) || ((*(*v6 + 56))(v6, &v25), (v7 = ausdk::AUScope::GetElement((a1 + 128), 0)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  (*(*v7 + 56))(v7, &v25);
  v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v9 & 1) == 0 || ((*(*v8 + 40))(v8, 7), v10 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v11 & 1) == 0) || (ausdk::AUElement::SetParameter(v10, 0, 6.0), v12 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v13 & 1) == 0) || (ausdk::AUElement::SetParameter(v12, 1u, 0.0), v14 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v15 & 1) == 0) || (ausdk::AUElement::SetParameter(v14, 2u, 1.0), v16 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v17 & 1) == 0) || (ausdk::AUElement::SetParameter(v16, 3u, 1.0), v18 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v19 & 1) == 0) || (ausdk::AUElement::SetParameter(v18, 4u, 0.0), v20 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v21 & 1) == 0) || (ausdk::AUElement::SetParameter(v20, 5u, 0.5), v22 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v23 & 1) == 0))
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v22, 6u, 0.0);
  return a1;
}

void sub_1DDD332EC(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 74) = v4;
    operator delete(v4);
  }

  ausdk::AUBase::~AUBase(v1);
  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUDynamicDuckerV2>::Factory()
{
  result = malloc_type_malloc(0x5B0uLL, 0x10F304014003DE6uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUDynamicDuckerV2>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUDynamicDuckerV2>::Destruct;
  return result;
}

uint64_t ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUDynamicDuckerV2>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v3 = ausdk::AUBase::AUBase(a1, a2, 5, 2);
  *v3 = &unk_1F5928E90;
  *(v3 + 264) = 256;
  *(v3 + 530) = 0;
  *(v3 + 133) = 0;
  *(v3 + 67) = 0x100000001;
  *(v3 + 544) = 0;
  *(v3 + 648) = 0;
  *(v3 + 656) = 0;
  *(v3 + 760) = 0;
  *(v3 + 768) = 0;
  *(v3 + 872) = 0;
  *(v3 + 880) = 0;
  *(v3 + 984) = 0;
  __asm { FMOV            V0.4S, #1.0 }

  *(v3 + 62) = _Q0;
  __asm { FMOV            V0.2S, #1.0 }

  *(v3 + 126) = _Q0;
  *(v3 + 1016) = 0u;
  *(v3 + 258) = 0;
  *(v3 + 1036) = xmmword_1DE09C7D0;
  *(v3 + 263) = 1048576000;
  *(v3 + 132) = 0x3DCCCCCD00000000;
  *(v3 + 135) = 0;
  *(v3 + 133) = 0;
  *(v3 + 1069) = 0;
  *(v3 + 272) = -1018691584;
  *(v3 + 139) = 0;
  *(v3 + 1120) = 0;
  *(v3 + 1144) = 0;
  *(v3 + 144) = 0;
  *(v3 + 1160) = 0;
  *(v3 + 1184) = 0;
  *(v3 + 149) = 0;
  *(v3 + 1200) = 0;
  *(v3 + 1224) = 0;
  *(v3 + 154) = 0;
  *(v3 + 1240) = 0;
  *(v3 + 1264) = 0;
  *(v3 + 159) = 0;
  *(v3 + 1280) = 0;
  *(v3 + 1304) = 0;
  *(v3 + 1312) = 0;
  *(v3 + 1320) = 0;
  *(v3 + 1328) = 0;
  *(v3 + 1352) = 0;
  *(v3 + 1360) = 0;
  *(v3 + 1384) = 0;
  *(v3 + 1108) = 0;
  *(v3 + 1092) = 0u;
  ausdk::AUBase::CreateElements(v3);
  v9 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v10 & 1) == 0)
  {
    abort();
  }

  v11 = v9;
  (*(*v9 + 40))(v9, 26);
  ausdk::AUElement::SetParameter(v11, 0, -18.0);
  ausdk::AUElement::SetParameter(v11, 1u, -18.0);
  ausdk::AUElement::SetParameter(v11, 2u, -18.0);
  ausdk::AUElement::SetParameter(v11, 3u, -40.0);
  ausdk::AUElement::SetParameter(v11, 4u, -40.0);
  ausdk::AUElement::SetParameter(v11, 5u, -40.0);
  ausdk::AUElement::SetParameter(v11, 6u, -45.0);
  ausdk::AUElement::SetParameter(v11, 7u, -50.0);
  ausdk::AUElement::SetParameter(v11, 8u, -18.0);
  ausdk::AUElement::SetParameter(v11, 9u, 0.0);
  ausdk::AUElement::SetParameter(v11, 0xAu, 0.0);
  ausdk::AUElement::SetParameter(v11, 0xBu, 0.0);
  ausdk::AUElement::SetParameter(v11, 0xCu, -96.0);
  ausdk::AUElement::SetParameter(v11, 0xDu, 0.25);
  ausdk::AUElement::SetParameter(v11, 0xEu, 0.1);
  ausdk::AUElement::SetParameter(v11, 0xFu, 0.0);
  ausdk::AUElement::SetParameter(v11, 0x10u, 0.0);
  ausdk::AUElement::SetParameter(v11, 0x13u, 0.5);
  ausdk::AUElement::SetParameter(v11, 0x12u, 0.0);
  ausdk::AUElement::SetParameter(v11, 0x11u, 0.0);
  ausdk::AUElement::SetParameter(v11, 0x14u, -200.0);
  ausdk::AUElement::SetParameter(v11, 0x15u, 0.0);
  ausdk::AUElement::SetParameter(v11, 0x16u, -200.0);
  ausdk::AUElement::SetParameter(v11, 0x17u, 0.0);
  ausdk::AUElement::SetParameter(v11, 0x18u, 0.0);
  ausdk::AUElement::SetParameter(v11, 0x19u, 0.0);
  v12 = 0;
  v17[0] = xmmword_1DE0E9148;
  v17[1] = unk_1DE0E9158;
  v18 = 32;
  do
  {
    Element = ausdk::AUScope::GetElement((a1 + 80), v12);
    if (!Element)
    {
LABEL_10:
      ausdk::Throw(0xFFFFD583);
    }

    (*(*Element + 56))(Element, v17);
    ++v12;
  }

  while (v12 != 5);
  v14 = ausdk::AUScope::GetElement((a1 + 128), 0);
  for (i = 1; ; i = 0)
  {
    if (!v14)
    {
      goto LABEL_10;
    }

    (*(*v14 + 56))(v14, v17);
    if ((i & 1) == 0)
    {
      break;
    }

    v14 = ausdk::AUScope::GetElement((a1 + 128), 1u);
  }

  return a1;
}

void sub_1DDD337A8(_Unwind_Exception *a1)
{
  if (*(v1 + 1384) == 1)
  {
    v3 = *(v1 + 1360);
    if (v3)
    {
      *(v1 + 1368) = v3;
      operator delete(v3);
    }
  }

  if (*(v1 + 1352) == 1)
  {
    v4 = *(v1 + 1328);
    if (v4)
    {
      *(v1 + 1336) = v4;
      operator delete(v4);
    }
  }

  if (*(v1 + 1320) == 1)
  {
    ExtendedAudioBufferList_Destroy();
  }

  if (*(v1 + 1304) == 1)
  {
    v5 = *(v1 + 1280);
    if (v5)
    {
      *(v1 + 1288) = v5;
      operator delete(v5);
    }
  }

  std::unique_ptr<OpaqueAudioConverter,applesauce::raii::v1::detail::opaque_deletion_functor<OpaqueAudioConverter*,&(AudioConverterDispose)>>::reset[abi:ne200100]((v1 + 1272), 0);
  if (*(v1 + 1264) == 1)
  {
    v6 = *(v1 + 1240);
    if (v6)
    {
      *(v1 + 1248) = v6;
      operator delete(v6);
    }
  }

  std::unique_ptr<OpaqueAudioConverter,applesauce::raii::v1::detail::opaque_deletion_functor<OpaqueAudioConverter*,&(AudioConverterDispose)>>::reset[abi:ne200100]((v1 + 1232), 0);
  if (*(v1 + 1224) == 1)
  {
    v7 = *(v1 + 1200);
    if (v7)
    {
      *(v1 + 1208) = v7;
      operator delete(v7);
    }
  }

  std::unique_ptr<OpaqueAudioConverter,applesauce::raii::v1::detail::opaque_deletion_functor<OpaqueAudioConverter*,&(AudioConverterDispose)>>::reset[abi:ne200100]((v1 + 1192), 0);
  if (*(v1 + 1184) == 1)
  {
    v8 = *(v1 + 1160);
    if (v8)
    {
      *(v1 + 1168) = v8;
      operator delete(v8);
    }
  }

  std::unique_ptr<OpaqueAudioConverter,applesauce::raii::v1::detail::opaque_deletion_functor<OpaqueAudioConverter*,&(AudioConverterDispose)>>::reset[abi:ne200100]((v1 + 1152), 0);
  if (*(v1 + 1144) == 1)
  {
    v9 = *(v1 + 1120);
    if (v9)
    {
      *(v1 + 1128) = v9;
      operator delete(v9);
    }
  }

  std::unique_ptr<OpaqueAudioConverter,applesauce::raii::v1::detail::opaque_deletion_functor<OpaqueAudioConverter*,&(AudioConverterDispose)>>::reset[abi:ne200100]((v1 + 1112), 0);
  if (*(v1 + 984) == 1)
  {
    boost::circular_buffer<float,std::allocator<float>>::destroy(v1 + 944);
    if (*(v1 + 896))
    {
      v10 = *(v1 + 880);
      if ((v1 + 904) != v10)
      {
        operator delete(v10);
      }
    }
  }

  if (*(v1 + 872) == 1)
  {
    boost::circular_buffer<float,std::allocator<float>>::destroy(v1 + 832);
    if (*(v1 + 784))
    {
      v11 = *(v1 + 768);
      if ((v1 + 792) != v11)
      {
        operator delete(v11);
      }
    }
  }

  if (*(v1 + 760) == 1)
  {
    boost::circular_buffer<float,std::allocator<float>>::destroy(v1 + 720);
    if (*(v1 + 672))
    {
      v12 = *(v1 + 656);
      if ((v1 + 680) != v12)
      {
        operator delete(v12);
      }
    }
  }

  if (*(v1 + 648) == 1)
  {
    boost::circular_buffer<float,std::allocator<float>>::destroy(v1 + 608);
    if (*(v1 + 560))
    {
      v13 = *(v1 + 544);
      if ((v1 + 568) != v13)
      {
        operator delete(v13);
      }
    }
  }

  ausdk::AUBase::~AUBase(v1);
  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUDynamicDucker>::Factory()
{
  result = malloc_type_malloc(0x368uLL, 0x10F304079F3A0FCuLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUDynamicDucker>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUDynamicDucker>::Destruct;
  return result;
}

uint64_t ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUDynamicDucker>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v3 = ausdk::AUBase::AUBase(a1, a2, 5, 2);
  *v3 = &unk_1F5937C08;
  *(v3 + 132) = 1;
  *(v3 + 532) = 0;
  *(v3 + 540) = 0;
  *(v3 + 70) = 0;
  *(v3 + 142) = 0;
  *(v3 + 42) = 0u;
  *(v3 + 94) = 0;
  *(v3 + 72) = 0;
  *(v3 + 584) = 0u;
  *(v3 + 150) = 0;
  *(v3 + 76) = 0;
  *(v3 + 616) = 0u;
  *(v3 + 158) = 0;
  *(v3 + 82) = 0;
  *(v3 + 166) = 0;
  *(v3 + 40) = 0u;
  *(v3 + 380) = 1;
  *(v3 + 762) = 0;
  *(v3 + 191) = 0;
  *(v3 + 96) = 0x3DCCCCCD3E800000;
  *(v3 + 97) = 0;
  *(v3 + 196) = 0;
  *(v3 + 198) = 0;
  ausdk::AUBase::CreateElements(v3);
  v4 = 0;
  v62 = 0x40E5888000000000;
  v63 = xmmword_1DE09BD50;
  v64 = xmmword_1DE09BD60;
  do
  {
    Element = ausdk::AUScope::GetElement((a1 + 80), v4);
    if (!Element)
    {
      ausdk::Throw(0xFFFFD583);
    }

    (*(*Element + 56))(Element, &v62);
    ++v4;
  }

  while (v4 != 5);
  v6 = 0;
  v7 = 1;
  do
  {
    v8 = v7;
    v9 = ausdk::AUScope::GetElement((a1 + 128), v6);
    if (!v9)
    {
      ausdk::Throw(0xFFFFD583);
    }

    (*(*v9 + 56))(v9, &v62);
    v7 = 0;
    v6 = 1;
  }

  while ((v8 & 1) != 0);
  *(a1 + 552) = 1065353216;
  __asm { FMOV            V0.2S, #1.0 }

  *(a1 + 544) = _D0;
  v15 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v16 & 1) == 0 || (ausdk::AUElement::SetParameter(v15, 0, -18.0), v17 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v18 & 1) == 0) || (ausdk::AUElement::SetParameter(v17, 1u, -18.0), v19 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v20 & 1) == 0) || (ausdk::AUElement::SetParameter(v19, 2u, -18.0), v21 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v22 & 1) == 0) || (ausdk::AUElement::SetParameter(v21, 3u, -40.0), v23 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v24 & 1) == 0) || (ausdk::AUElement::SetParameter(v23, 4u, -40.0), v25 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v26 & 1) == 0) || (ausdk::AUElement::SetParameter(v25, 5u, -40.0), v27 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v28 & 1) == 0) || (ausdk::AUElement::SetParameter(v27, 6u, -45.0), v29 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v30 & 1) == 0) || (ausdk::AUElement::SetParameter(v29, 7u, -50.0), v31 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v32 & 1) == 0) || (ausdk::AUElement::SetParameter(v31, 8u, -18.0), v33 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v34 & 1) == 0) || (ausdk::AUElement::SetParameter(v33, 9u, 0.0), v35 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v36 & 1) == 0) || (ausdk::AUElement::SetParameter(v35, 0xAu, 0.0), v37 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v38 & 1) == 0) || (ausdk::AUElement::SetParameter(v37, 0xBu, 0.0), v39 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v40 & 1) == 0) || (ausdk::AUElement::SetParameter(v39, 0xCu, -96.0), v41 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v42 & 1) == 0) || (ausdk::AUElement::SetParameter(v41, 0xDu, 0.25), v43 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v44 & 1) == 0) || (ausdk::AUElement::SetParameter(v43, 0xEu, 0.1), v45 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v46 & 1) == 0) || (ausdk::AUElement::SetParameter(v45, 0xFu, 0.0), v47 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v48 & 1) == 0) || (ausdk::AUElement::SetParameter(v47, 0x10u, 0.0), v49 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v50 & 1) == 0) || (ausdk::AUElement::SetParameter(v49, 0x13u, 0.5), v51 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v52 & 1) == 0) || (ausdk::AUElement::SetParameter(v51, 0x12u, 0.0), v53 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v54 & 1) == 0) || (ausdk::AUElement::SetParameter(v53, 0x11u, 0.0), v55 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v56 & 1) == 0) || (ausdk::AUElement::SetParameter(v55, 0x14u, -200.0), v57 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v58 & 1) == 0) || (ausdk::AUElement::SetParameter(v57, 0x15u, 0.0), v59 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v60 & 1) == 0))
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v59, 0x16u, -200.0);
  return a1;
}

void sub_1DDD33E98(_Unwind_Exception *a1)
{
  CDSPSplitComplex::~CDSPSplitComplex((v1 + 656));
  CDSPSplitComplex::~CDSPSplitComplex((v1 + 624));
  CDSPSplitComplex::~CDSPSplitComplex((v1 + 592));
  CDSPSplitComplex::~CDSPSplitComplex((v1 + 560));
  ausdk::AUBase::~AUBase(v1);
  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUMultiBandDynamicsProcessorV2>::Factory()
{
  result = malloc_type_malloc(0x620uLL, 0x10F30408A2807BEuLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUMultiBandDynamicsProcessorV2>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUMultiBandDynamicsProcessorV2>::Destruct;
  return result;
}

uint64_t ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUMultiBandDynamicsProcessorV2>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v3 = 1;
  v4 = ausdk::AUBase::AUBase(a1, a2, 2, 1);
  *v4 = &unk_1F59397D8;
  *(v4 + 33) = xmmword_1DE095FA0;
  *(v4 + 68) = 0x100000000;
  *(v4 + 138) = 0;
  *(v4 + 107) = 2;
  *(v4 + 216) = 0;
  v5 = (v4 + 888);
  *(v4 + 74) = 0u;
  *(v4 + 888) = 0u;
  *(v4 + 904) = 0u;
  *(v4 + 920) = 0u;
  *(v4 + 936) = 0u;
  *(v4 + 952) = 0u;
  *(v4 + 968) = 0u;
  *(v4 + 984) = 0u;
  *(v4 + 1000) = 0u;
  *(v4 + 1016) = 0u;
  *(v4 + 1032) = 0u;
  *(v4 + 1048) = 0u;
  *(v4 + 1064) = 0u;
  *(v4 + 1080) = 0u;
  *(v4 + 1096) = 0u;
  *(v4 + 1112) = 0u;
  *(v4 + 1128) = 0u;
  *(v4 + 1144) = 0u;
  *(v4 + 290) = 0;
  *(v4 + 1164) = xmmword_1DE09C160;
  *(v4 + 1224) = 0u;
  *(v4 + 304) = 0;
  *(v4 + 75) = xmmword_1DE09C710;
  *(v4 + 1240) = 0;
  *(v4 + 318) = 4;
  *(v4 + 1276) = 1;
  *(v4 + 656) = 0;
  *(v4 + 165) = 0;
  *(v4 + 332) = 0;
  *(v4 + 1336) = 0u;
  *(v4 + 1352) = 0u;
  *(v4 + 1368) = 0u;
  *(v4 + 1384) = 0u;
  *(v4 + 1400) = 0u;
  *(v4 + 1416) = 0u;
  *(v4 + 1432) = 0u;
  *(v4 + 1448) = 0u;
  *(v4 + 1464) = 0u;
  *(v4 + 1480) = 0u;
  *(v4 + 187) = 0;
  v72[0] = 0;
  v72[1] = 0;
  v73 = 0;
  ausdk::ComponentBase::GetComponentDescription(v72, *(v4 + 1));
  *(a1 + 1314) = HIDWORD(v72[0]) == 1835298866;
  ausdk::AUBase::CreateElements(a1);
  *inDesc = 0x40E5888000000000;
  *&inDesc[8] = xmmword_1DE09BD50;
  v75 = xmmword_1DE09BD60;
  Element = ausdk::AUScope::GetElement((a1 + 80), 0);
  while (1)
  {
    if (!Element)
    {
      goto LABEL_50;
    }

    (*(*Element + 56))(Element, inDesc);
    if ((v3 & 1) == 0)
    {
      break;
    }

    Element = ausdk::AUScope::GetElement((a1 + 80), 1u);
    v3 = 0;
  }

  v7 = ausdk::AUScope::GetElement((a1 + 128), 0);
  if (!v7)
  {
LABEL_50:
    ausdk::Throw(0xFFFFD583);
  }

  (*(*v7 + 56))(v7, inDesc);
  *(a1 + 1244) = 0x400000001;
  *(a1 + 868) = 0;
  *(a1 + 872) = 0x3F80000000000000;
  *(a1 + 880) = 0;
  CADeprecated::CAAutoDelete<ausdk::AUBufferList>::set(v5, 0);
  CADeprecated::CAAutoDelete<ausdk::AUBufferList>::set((a1 + 896), 0);
  *(a1 + 848) = 0;
  *(a1 + 1280) = 0;
  ++*(a1 + 528);
  inDesc[13] = 0;
  *&inDesc[14] = 0;
  *&inDesc[16] = 0;
  strcpy(inDesc, "xfua2clvlppa");
  Next = AudioComponentFindNext(0, inDesc);
  v9 = (a1 + 848);
  inData = AUMultiBandDynamicsProcessorV2::RenderCallbackVolComp;
  v77 = a1;
  *(a1 + 816) = 0u;
  *(a1 + 832) = 0u;
  v10 = 816;
  while (!AudioComponentInstanceNew(Next, (a1 + v10)) && !AudioUnitSetProperty(*(a1 + v10), 0x17u, 1u, 0, &inData, 0x10u))
  {
    AudioUnitSetParameter(*(a1 + v10), 0xDu, 0, 0, 2.0, 0);
    AudioUnitSetParameter(*(a1 + v10), 0xEu, 0, 0, 2.0, 0);
    v10 += 8;
    if (v10 == 848)
    {
      inDesc[13] = 0;
      *&inDesc[14] = 0;
      *&inDesc[16] = 0;
      strcpy(inDesc, "xfuaqebnlppa");
      v11 = AudioComponentFindNext(0, inDesc);
      inData = AUMultiBandDynamicsProcessorV2::RenderCallbackNBandEQ;
      v77 = a1;
      *(a1 + 688) = 0u;
      *(a1 + 704) = 0u;
      *(a1 + 720) = 0u;
      *(a1 + 736) = 0u;
      *(a1 + 752) = 0u;
      *(a1 + 768) = 0u;
      v12 = 688;
      *(a1 + 784) = 0u;
      *(a1 + 800) = 0u;
      while (!AudioComponentInstanceNew(v11, (a1 + v12)) && !AudioUnitSetProperty(*(a1 + v12), 0x17u, 1u, 0, &inData, 0x10u))
      {
        v12 += 8;
        if (v12 == 816)
        {
          inDesc[13] = 0;
          *&inDesc[14] = 0;
          *&inDesc[16] = 0;
          strcpy(inDesc, "xfua2clvlppa");
          v13 = AudioComponentFindNext(0, inDesc);
          if (!AudioComponentInstanceNew(v13, (a1 + 848)))
          {
            AudioUnitSetParameter(*v9, 0xAu, 0, 0, 0.0, 0);
            AudioUnitSetParameter(*v9, 0xBu, 0, 0, 0.0, 0);
            AudioUnitSetParameter(*v9, 0xDu, 0, 0, 2.0, 0);
            AudioUnitSetParameter(*v9, 0xEu, 0, 0, 2.0, 0);
            inData = AUMultiBandDynamicsProcessorV2::RenderCallbackVolComp;
            v77 = a1;
            AudioUnitSetProperty(*(a1 + 848), 0x17u, 1u, 0, &inData, 0x10u);
          }

          goto LABEL_16;
        }
      }

      break;
    }
  }

LABEL_16:
  v14 = *(a1 + 1314);
  v15 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if (v14)
  {
    if (v16)
    {
      ausdk::AUElement::SetParameter(v15, 0, 1.0);
      v17 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
      if (v18)
      {
        ausdk::AUElement::SetParameter(v17, 6u, 0.0);
        v19 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
        if (v20)
        {
          ausdk::AUElement::SetParameter(v19, 7u, 1.0);
          v21 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
          if (v22)
          {
            ausdk::AUElement::SetParameter(v21, 0xCu, 0.0);
            v23 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
            if (v24)
            {
              ausdk::AUElement::SetParameter(v23, 1u, 0.0);
              v25 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
              if (v26)
              {
                ausdk::AUElement::SetParameter(v25, 5u, 0.0);
                v27 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
                if (v28)
                {
                  ausdk::AUElement::SetParameter(v27, 8u, 24000.0);
                  v29 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
                  if (v30)
                  {
                    ausdk::AUElement::SetParameter(v29, 9u, 24000.0);
                    v31 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
                    if (v32)
                    {
                      ausdk::AUElement::SetParameter(v31, 0xAu, 24000.0);
                      v33 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
                      if (v34)
                      {
                        ausdk::AUElement::SetParameter(v33, 2u, 0.0);
                        v35 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
                        if (v36)
                        {
                          ausdk::AUElement::SetParameter(v35, 3u, 0.0);
                          v37 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
                          if (v38)
                          {
                            ausdk::AUElement::SetParameter(v37, 4u, 0.0);
                            v39 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
                            if (v40)
                            {
                              ausdk::AUElement::SetParameter(v39, 0xDu, -18.0);
                              v41 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
                              if (v42)
                              {
                                ausdk::AUElement::SetParameter(v41, 0xEu, -18.0);
                                v43 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
                                if (v44)
                                {
                                  ausdk::AUElement::SetParameter(v43, 0xFu, -18.0);
                                  v45 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
                                  if (v46)
                                  {
                                    ausdk::AUElement::SetParameter(v45, 0x10u, -40.0);
                                    v47 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
                                    if (v48)
                                    {
                                      ausdk::AUElement::SetParameter(v47, 0x11u, -40.0);
                                      v49 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
                                      if (v50)
                                      {
                                        ausdk::AUElement::SetParameter(v49, 0x12u, -30.0);
                                        v51 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
                                        if (v52)
                                        {
                                          ausdk::AUElement::SetParameter(v51, 0x13u, -45.0);
                                          v53 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
                                          if (v54)
                                          {
                                            ausdk::AUElement::SetParameter(v53, 0x14u, -45.0);
                                            v55 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
                                            if (v56)
                                            {
                                              ausdk::AUElement::SetParameter(v55, 0x15u, -18.0);
                                              v57 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
                                              if (v58)
                                              {
                                                ausdk::AUElement::SetParameter(v57, 0x16u, 0.0);
                                                v59 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
                                                if (v60)
                                                {
                                                  ausdk::AUElement::SetParameter(v59, 0x17u, 0.0);
                                                  v61 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
                                                  if (v62)
                                                  {
                                                    ausdk::AUElement::SetParameter(v61, 0x18u, 0.0);
                                                    AUMultiBandDynamicsProcessorV2::UpdateCrossOverEQs(a1);
                                                    AUMultiBandDynamicsProcessorV2::SetVolCompParameters(a1, *(a1 + 848), 0);
                                                    v63 = 100;
                                                    for (i = 816; i != 848; i += 8)
                                                    {
                                                      AUMultiBandDynamicsProcessorV2::SetVolCompParameters(a1, *(a1 + i), v63);
                                                      v63 += 100;
                                                    }

                                                    return a1;
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
      }
    }

LABEL_51:
    abort();
  }

  if ((v16 & 1) == 0)
  {
    goto LABEL_51;
  }

  ausdk::AUElement::SetParameter(v15, 8u, 24000.0);
  v65 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v66 & 1) == 0)
  {
    goto LABEL_51;
  }

  ausdk::AUElement::SetParameter(v65, 9u, 24000.0);
  v67 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v68 & 1) == 0)
  {
    goto LABEL_51;
  }

  ausdk::AUElement::SetParameter(v67, 0xAu, 24000.0);
  AUMultiBandDynamicsProcessorV2::UpdateCrossOverEQs(a1);
  v69 = 0;
  *(a1 + 1284) = 0;
  *(a1 + 1292) = 0;
  v70 = 100;
  do
  {
    AUMultiBandDynamicsProcessorV2::SetVolCompParameters(a1, *(a1 + 8 * v69 + 816), v70);
    *(a1 + v69 + 1285) = 0;
    *(a1 + 1296 + 4 * v69) = 0;
    v70 += 100;
    ++v69;
  }

  while (v69 != 4);
  return a1;
}

void sub_1DDD347A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  SimpleMeters::~SimpleMeters((v9 + 171));
  std::vector<std::unique_ptr<ausdk::AUElement>>::__destroy_vector::operator()[abi:ne200100](&a9);
  ABLRingBuffer<float>::~ABLRingBuffer((v9 + 150));
  ABLRingBuffer<float>::~ABLRingBuffer((v9 + 145));
  v12 = v9 + 144;
  v13 = -128;
  while (1)
  {
    v14 = *(v12 - 1);
    if (v14)
    {
      if (*v12 != v14)
      {
        *v12 = *v12 + ((v14 - *v12 + 3) & 0xFFFFFFFFFFFFFFFCLL);
      }

      operator delete(v14);
      *(v12 - 1) = 0;
      *v12 = 0;
    }

    v12 -= 2;
    v13 += 16;
    if (!v13)
    {
      v15 = v9 + 128;
      v16 = -128;
      while (1)
      {
        v17 = *(v15 - 1);
        if (v17)
        {
          if (*v15 != v17)
          {
            *v15 = *v15 + ((v17 - *v15 + 3) & 0xFFFFFFFFFFFFFFFCLL);
          }

          operator delete(v17);
          *(v15 - 1) = 0;
          *v15 = 0;
        }

        v15 -= 2;
        v16 += 16;
        if (!v16)
        {
          CADeprecated::CAAutoDelete<ausdk::AUBufferList>::set(v9 + 112, 0);
          CADeprecated::CAAutoDelete<ausdk::AUBufferList>::set(v10, 0);
          ausdk::AUBase::~AUBase(v9);
          _Unwind_Resume(a1);
        }
      }
    }
  }
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUReverbSuppressor>::Factory()
{
  result = malloc_type_malloc(0x1308uLL, 0x10F30403D2E006FuLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUReverbSuppressor>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUReverbSuppressor>::Destruct;
  return result;
}

void ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUReverbSuppressor>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = ausdk::AUBase::AUBase(a1, a2, 1, 2);
  *v3 = &unk_1F59380D0;
  *(v3 + 66) = 1;
  *(v3 + 134) = 0;
  *(v3 + 68) = 0;
  *(v3 + 70) = 0;
  *(v3 + 72) = 0;
  *(v3 + 71) = 0;
  *(v3 + 69) = v3 + 560;
  *(v3 + 74) = 0;
  *(v3 + 73) = 0;
  DSPSplitComplexV<float>::DSPSplitComplexV(v3 + 75, 0);
  std::string::basic_string[abi:ne200100]<0>(&__p, "InpFrameNode");
  AutoValue<DSPSplitComplexV<float>,(LogTypes)0>::AutoValue((a1 + 664), &__p);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "OutFrameNode");
  AutoValue<DSPSplitComplexV<float>,(LogTypes)0>::AutoValue((a1 + 1056), &__p);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "pass1GainFloor(dB)");
  AutoValue<float,(LogTypes)0>::AutoValue(a1 + 1448, &__p);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "pass2GainFloor(dB)");
  AutoValue<float,(LogTypes)0>::AutoValue(a1 + 1784, &__p);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "reverbTailGain(dB)");
  AutoValue<float,(LogTypes)0>::AutoValue(a1 + 2120, &__p);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(v8, "pass1GainFloor(dB)_i");
  Trackable::Trackable<AutoValue<float,(LogTypes)0>>(a1 + 2456, v8, a1 + 1448);
  *(a1 + 2456) = &unk_1F5938360;
  *(a1 + 2704) = 0u;
  *(a1 + 2736) = xmmword_1DE095160;
  *(a1 + 2752) = 0;
  *(a1 + 2760) = 0;
  *(a1 + 2768) = xmmword_1DE09C160;
  v4 = operator new(4uLL);
  *(a1 + 2760) = v4;
  *(a1 + 2776) = 1;
  *v4 = 0;
  *(a1 + 2784) = 0;
  *&__p = &unk_1F5938CE8;
  v13 = a1 + 1448;
  *&v14 = &__p;
  std::__function::__value_func<float const& ()(float &)>::swap[abi:ne200100](&__p, (a1 + 2680));
  std::__function::__value_func<float const& ()(float &)>::~__value_func[abi:ne200100](&__p);
  *(a1 + 2464) = 0;
  *(a1 + 2472) = 0;
  *(a1 + 2720) = 0u;
  if (v9 < 0)
  {
    operator delete(v8[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v8, "pass2GainFloor(dB)_i");
  Trackable::Trackable<AutoValue<float,(LogTypes)0>>(a1 + 2792, v8, a1 + 1784);
  *(a1 + 2792) = &unk_1F5938360;
  *(a1 + 3040) = 0u;
  *(a1 + 3072) = xmmword_1DE095160;
  *(a1 + 3088) = 0;
  *(a1 + 3096) = 0;
  *(a1 + 3104) = xmmword_1DE09C160;
  v5 = operator new(4uLL);
  *(a1 + 3096) = v5;
  *(a1 + 3112) = 1;
  *v5 = 0;
  *(a1 + 3120) = 0;
  *&__p = &unk_1F5938D30;
  v13 = a1 + 1784;
  *&v14 = &__p;
  std::__function::__value_func<float const& ()(float &)>::swap[abi:ne200100](&__p, (a1 + 3016));
  std::__function::__value_func<float const& ()(float &)>::~__value_func[abi:ne200100](&__p);
  *(a1 + 2800) = 0;
  *(a1 + 2808) = 0;
  *(a1 + 3056) = 0u;
  if (v9 < 0)
  {
    operator delete(v8[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v8, "reverbTailGain(dB)_i");
  Trackable::Trackable<AutoValue<float,(LogTypes)0>>(a1 + 3128, v8, a1 + 2120);
  *(a1 + 3128) = &unk_1F5938360;
  *(a1 + 3376) = 0u;
  *(a1 + 3408) = xmmword_1DE095160;
  *(a1 + 3424) = 0;
  *(a1 + 3432) = 0;
  *(a1 + 3440) = xmmword_1DE09C160;
  v6 = operator new(4uLL);
  *(a1 + 3432) = v6;
  *(a1 + 3448) = 1;
  *v6 = 0;
  *(a1 + 3456) = 0;
  *&__p = &unk_1F5938D78;
  v13 = a1 + 2120;
  *&v14 = &__p;
  std::__function::__value_func<float const& ()(float &)>::swap[abi:ne200100](&__p, (a1 + 3352));
  std::__function::__value_func<float const& ()(float &)>::~__value_func[abi:ne200100](&__p);
  *(a1 + 3136) = 0;
  *(a1 + 3144) = 0;
  *(a1 + 3392) = 0u;
  if (v9 < 0)
  {
    operator delete(v8[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "internalBypass_pref");
  AutoValue<BOOL,(LogTypes)0>::AutoValue(a1 + 3464, &__p);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "internalBypass_fail");
  AutoValue<BOOL,(LogTypes)0>::AutoValue(a1 + 3800, &__p);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "internalBypass_noTail");
  AutoValue<BOOL,(LogTypes)0>::AutoValue(a1 + 4136, &__p);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(v10, "internalBypass");
  *(a1 + 4472) = &unk_1F5938340;
  *(a1 + 4496) = 0;
  *(a1 + 4504) = 0;
  *(a1 + 4520) = 0;
  *(a1 + 4512) = 0;
  *(a1 + 4536) = 0;
  if (SHIBYTE(v11) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 4544), v10[0], v10[1]);
  }

  else
  {
    *(a1 + 4544) = *v10;
    *(a1 + 4560) = v11;
  }

  *(a1 + 4568) = 0;
  *(a1 + 4576) = 0u;
  *(a1 + 4592) = 0u;
  *(a1 + 4608) = 0u;
  *(a1 + 4624) = 0u;
  *(a1 + 4640) = 0u;
  *(a1 + 4656) = 0u;
  *(a1 + 4672) = 0u;
  *(a1 + 4688) = 0;
  *&__p = a1 + 3464;
  std::vector<Trackable *>::push_back[abi:ne200100](a1 + 4600, &__p);
  *&__p = a1 + 3800;
  std::vector<Trackable *>::push_back[abi:ne200100](a1 + 4600, &__p);
  *&__p = a1 + 4136;
  std::vector<Trackable *>::push_back[abi:ne200100](a1 + 4600, &__p);
  *(a1 + 4528) = 0;
  *(a1 + 4480) = 0;
  *(a1 + 4472) = &unk_1F5938320;
  *(a1 + 4720) = 0u;
  *(a1 + 4752) = xmmword_1DE095160;
  *(a1 + 4768) = 0;
  *(a1 + 4776) = 0;
  *(a1 + 4784) = xmmword_1DE09C160;
  v7 = operator new(1uLL);
  *(a1 + 4776) = v7;
  *v7 = 0;
  *(a1 + 4792) = xmmword_1DE09C160;
  operator new();
}

void sub_1DDD35334(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUNoiseSelector>::Factory()
{
  result = malloc_type_malloc(0x2A0uLL, 0x10F30404384E824uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUNoiseSelector>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUNoiseSelector>::Destruct;
  return result;
}

uint64_t ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUNoiseSelector>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v96 = *MEMORY[0x1E69E9840];
  v3 = ausdk::AUBase::AUBase(a1, a2, 2, 2);
  *v3 = &unk_1F59245F8;
  *(v3 + 66) = 1;
  *(v3 + 67) = 0;
  *(v3 + 552) = 1;
  *(v3 + 35) = 0u;
  *(v3 + 36) = 0u;
  *(v3 + 74) = 0;
  *(v3 + 150) = 1065353216;
  v4 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(v3 + 32, 0);
  if ((v5 & 1) == 0)
  {
LABEL_25:
    abort();
  }

  (*(*v4 + 40))(v4, 15);
  ausdk::AUBase::CreateElements(a1);
  v6 = 0;
  *(a1 + 544) = 44100;
  v23 = 0x40E5888000000000;
  v25 = xmmword_1DE09C180;
  v24 = xmmword_1DE09C190;
  *v20 = 0x40E5888000000000;
  v21 = xmmword_1DE09C190;
  v22 = xmmword_1DE09C600;
  while (1)
  {
    v7 = *(a1 + 120);
    if (v7)
    {
      LODWORD(v8) = (*(*v7 + 24))(v7);
    }

    else
    {
      v8 = (*(a1 + 104) - *(a1 + 96)) >> 3;
    }

    if (v6 >= v8)
    {
      break;
    }

    Element = ausdk::AUScope::GetElement((a1 + 80), v6);
    if (!Element)
    {
LABEL_24:
      ausdk::Throw(0xFFFFD583);
    }

    (*(*Element + 56))(Element, &v23);
    ++v6;
  }

  for (i = 0; ; ++i)
  {
    v11 = *(a1 + 168);
    if (v11)
    {
      LODWORD(v12) = (*(*v11 + 24))(v11);
    }

    else
    {
      v12 = (*(a1 + 152) - *(a1 + 144)) >> 3;
    }

    if (i >= v12)
    {
      break;
    }

    v13 = ausdk::AUScope::GetElement((a1 + 128), i);
    if (!v13)
    {
      goto LABEL_24;
    }

    (*(*v13 + 56))(v13, v20);
  }

  (*(*a1 + 512))(a1, 1156);
  *(a1 + 376) = 1;
  if (AUNoiseSelectorLogScope(void)::once != -1)
  {
    dispatch_once(&AUNoiseSelectorLogScope(void)::once, &__block_literal_global_10203);
  }

  LODWORD(v23) = 0;
  *&v24 = @"Wind Probability";
  *(&v24 + 1) = 0;
  LODWORD(v25) = 1065353216;
  *(&v25 + 4) = 0xC080000000000000;
  v26 = 1;
  v27 = @"Pframe";
  v28 = 0;
  v29 = 1065353216;
  v30 = 0xC080000000000000;
  v31 = 2;
  v32 = @"No Wind Threshold";
  v33 = 0xC1A0000000000000;
  v35 = 0xC08000000000000DLL;
  v34 = 1101004800;
  v36 = 3;
  v37 = @"No Wind Low Frequency";
  v39 = 0x44FA000000000000;
  v40 = 0xC080000000000008;
  v38 = 1120403456;
  v41 = 4;
  v42 = @"No Wind High Frequency";
  v43 = 0x457A000046BB8000;
  v44 = 1186693120;
  v46 = 5;
  v45 = 0xC080000000000008;
  v47 = @"Wind Threshold";
  v49 = 0x41A0000000000000;
  v50 = 0xC08000000000000DLL;
  v48 = 0x40000000;
  v51 = 6;
  v52 = @"Wind Low Frequency";
  v53 = 1157234688;
  v54 = 0x844FA0000;
  v55 = -1065353216;
  v56 = 7;
  v57 = @"Wind High Frequency";
  v58 = 0x44FA000046BB8000;
  v59 = 0x846BB8000;
  v60 = -1065353216;
  v61 = 8;
  v62 = @"Voice Noise Probability Threshold";
  v63 = 1056964608;
  v64 = 1065353216;
  v65 = -1065353216;
  v66 = 9;
  v67 = @"Min Probability In Noise";
  v68 = 1036831949;
  v69 = 1065353216;
  v71 = 10;
  v70 = -1065353216;
  v72 = @"Min Probability In Voice";
  v73 = 1056964608;
  v74 = 1065353216;
  v75 = -1065353216;
  v76 = 11;
  v77 = @"Voice Time Out";
  v78 = 1048576000;
  v79 = 0x441200000;
  v80 = -1065353216;
  v81 = 12;
  v82 = @"Min Between Voice And Noise";
  v83 = 1065353216;
  v84 = 0x13F800000;
  v85 = -1065353216;
  v86 = 13;
  v87 = @"Mic Switch decided in NoiseSelector";
  v88 = 0;
  v89 = 0x23F800000;
  v90 = -1065353216;
  v91 = 14;
  v92 = @"Threshold for MagDiffVAD";
  v93 = 0xC1A00000C1200000;
  v94 = 0xD41A00000;
  v95 = -1065353216;
  std::__hash_table<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>>>::__assign_unique<std::pair<unsigned int const,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>> const*>(a1 + 568, &v23, &v96);
  v14 = 0;
  *v20 = 0;
  do
  {
    v15 = std::__hash_table<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>>>::find<unsigned int>((a1 + 568), v14);
    if (v15)
    {
      v23 = v20;
      v16 = *(std::__hash_table<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((a1 + 568), v14) + 8);
      v17 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
      if ((v18 & 1) == 0)
      {
        goto LABEL_25;
      }

      ausdk::AUElement::SetParameter(v17, *v20, v16);
      v14 = *v20;
    }

    *v20 = ++v14;
  }

  while (v14 < 0xF);
  *(a1 + 552) = AUDebugFeature::IsNonFiniteHandlingEnabled(v15);
  return a1;
}

void sub_1DDD35D2C(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>>>::~__hash_table(v1 + 568);
  std::unique_ptr<NoiseSelectorCore>::reset[abi:ne200100](v1 + 70, 0);
  ausdk::AUBase::~AUBase(v1);
  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUHandsetNoiseEQ>::Factory()
{
  result = malloc_type_malloc(0x2A0uLL, 0x10F3040E28485A3uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUHandsetNoiseEQ>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUHandsetNoiseEQ>::Destruct;
  return result;
}

uint64_t ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUHandsetNoiseEQ>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v66 = *MEMORY[0x1E69E9840];
  v3 = ausdk::AUBase::AUBase(a1, a2, 2, 2);
  *v3 = &unk_1F5923E10;
  *(v3 + 132) = 1;
  *(v3 + 532) = 0u;
  *(v3 + 556) = 1;
  *(v3 + 35) = 0u;
  *(v3 + 36) = 0u;
  *(v3 + 74) = 0;
  *(v3 + 150) = 1065353216;
  v4 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(v3 + 32, 0);
  if ((v5 & 1) == 0)
  {
LABEL_25:
    abort();
  }

  (*(*v4 + 40))(v4, 9);
  ausdk::AUBase::CreateElements(a1);
  v6 = 0;
  *(a1 + 548) = 44100;
  v23 = 0x40E5888000000000;
  v25 = xmmword_1DE09C5F0;
  v24 = xmmword_1DE09C190;
  *v20 = 0x40E5888000000000;
  v21 = xmmword_1DE09C190;
  v22 = xmmword_1DE09C600;
  while (1)
  {
    v7 = *(a1 + 120);
    if (v7)
    {
      LODWORD(v8) = (*(*v7 + 24))(v7);
    }

    else
    {
      v8 = (*(a1 + 104) - *(a1 + 96)) >> 3;
    }

    if (v6 >= v8)
    {
      break;
    }

    Element = ausdk::AUScope::GetElement((a1 + 80), v6);
    if (!Element)
    {
LABEL_24:
      ausdk::Throw(0xFFFFD583);
    }

    (*(*Element + 56))(Element, &v23);
    ++v6;
  }

  for (i = 0; ; ++i)
  {
    v11 = *(a1 + 168);
    if (v11)
    {
      LODWORD(v12) = (*(*v11 + 24))(v11);
    }

    else
    {
      v12 = (*(a1 + 152) - *(a1 + 144)) >> 3;
    }

    if (i >= v12)
    {
      break;
    }

    v13 = ausdk::AUScope::GetElement((a1 + 128), i);
    if (!v13)
    {
      goto LABEL_24;
    }

    (*(*v13 + 56))(v13, v20);
  }

  (*(*a1 + 512))(a1, 1156);
  *(a1 + 376) = 1;
  if (AUHandsetNoiseEQLogScope(void)::once != -1)
  {
    dispatch_once(&AUHandsetNoiseEQLogScope(void)::once, &__block_literal_global_9531);
  }

  LODWORD(v23) = 0;
  *&v24 = @"Pframe";
  *(&v24 + 1) = 0;
  LODWORD(v25) = 1065353216;
  *(&v25 + 4) = 0xC080000000000000;
  v26 = 1;
  v27 = @"Min Gain";
  v28 = 0xC3480000C1A00000;
  v29 = 0;
  v30 = 0xC08000000000000DLL;
  v31 = 2;
  v32 = @"Max Gain";
  v33 = 1109393408;
  v35 = 0xC08000000000000DLL;
  v34 = 1128792064;
  v36 = 3;
  v37 = @"Voice Noise Threshold";
  v38 = 0x3F8000003FA00000;
  v39 = 1101004800;
  v41 = 4;
  v40 = 0xC08000000000000DLL;
  v42 = @"Speech Prob Threshold";
  v43 = 1056964608;
  v45 = 0xC080000000000000;
  v44 = 1065353216;
  v46 = 5;
  v47 = @"Gain TC in Noise";
  v48 = 1048576000;
  v50 = 0xC080000000000004;
  v49 = 1092616192;
  v51 = 6;
  v52 = @"Gain TC in Voice";
  v53 = 1008981770;
  v54 = 0x441200000;
  v55 = -1065353216;
  v56 = 7;
  v57 = @"Power Spectrum TC";
  v58 = 1000593162;
  v59 = 0x441200000;
  v60 = -1065353216;
  v61 = 8;
  v62 = @"Frequency Smooth";
  v63 = 1065353216;
  v64 = 0x13F800000;
  v65 = -1065353216;
  std::__hash_table<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>>>::__assign_unique<std::pair<unsigned int const,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>> const*>(a1 + 568, &v23, &v66);
  v14 = 0;
  *v20 = 0;
  do
  {
    v15 = std::__hash_table<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>>>::find<unsigned int>((a1 + 568), v14);
    if (v15)
    {
      v23 = v20;
      v16 = *(std::__hash_table<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((a1 + 568), v14) + 8);
      v17 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
      if ((v18 & 1) == 0)
      {
        goto LABEL_25;
      }

      ausdk::AUElement::SetParameter(v17, *v20, v16);
      v14 = *v20;
    }

    *v20 = ++v14;
  }

  while (v14 < 9);
  *(a1 + 556) = AUDebugFeature::IsNonFiniteHandlingEnabled(v15);
  return a1;
}

void sub_1DDD362D8(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>>>::~__hash_table(v1 + 568);
  std::unique_ptr<HandsetNoiseEQCore>::reset[abi:ne200100](v1 + 70, 0);
  ausdk::AUBase::~AUBase(v1);
  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUBSS2>::Factory()
{
  result = malloc_type_malloc(0x300uLL, 0x10F30409BB2120BuLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUBSS2>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUBSS2>::Destruct;
  return result;
}

uint64_t ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUBSS2>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v118 = *MEMORY[0x1E69E9840];
  v3 = ausdk::AUBase::AUBase(a1, a2, 8, 8);
  *v3 = &unk_1F591E2E8;
  *(v3 + 33) = xmmword_1DE09C160;
  *(v3 + 69) = 0;
  *(v3 + 140) = 0;
  *(v3 + 568) = 0u;
  *(v3 + 584) = 0u;
  *(v3 + 75) = 0;
  *(v3 + 608) = 1;
  *(v3 + 616) = 0u;
  *(v3 + 632) = 0u;
  *(v3 + 81) = 0;
  *(v3 + 164) = 1065353216;
  v4 = (v3 + 664);
  *(v3 + 664) = 0u;
  *(v3 + 680) = 0u;
  *(v3 + 174) = 1065353216;
  v5 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(v3 + 32, 0);
  if ((v6 & 1) == 0)
  {
LABEL_38:
    abort();
  }

  (*(*v5 + 40))(v5, 18);
  ausdk::AUBase::CreateElements(a1);
  v7 = 0;
  *(a1 + 540) = 44100;
  v30 = 0x40E5888000000000;
  v31 = xmmword_1DE09C190;
  v32 = xmmword_1DE09C7E0;
  *v27 = 0x40E5888000000000;
  v29 = xmmword_1DE09C7E0;
  v28 = xmmword_1DE09C190;
  while (1)
  {
    v8 = *(a1 + 120);
    if (v8)
    {
      LODWORD(v9) = (*(*v8 + 24))(v8);
    }

    else
    {
      v9 = (*(a1 + 104) - *(a1 + 96)) >> 3;
    }

    if (v7 >= v9)
    {
      break;
    }

    Element = ausdk::AUScope::GetElement((a1 + 80), v7);
    if (!Element)
    {
LABEL_37:
      ausdk::Throw(0xFFFFD583);
    }

    (*(*Element + 56))(Element, &v30);
    ++v7;
  }

  for (i = 0; ; ++i)
  {
    v12 = *(a1 + 168);
    if (v12)
    {
      LODWORD(v13) = (*(*v12 + 24))(v12);
    }

    else
    {
      v13 = (*(a1 + 152) - *(a1 + 144)) >> 3;
    }

    if (i >= v13)
    {
      break;
    }

    v14 = ausdk::AUScope::GetElement((a1 + 128), i);
    if (!v14)
    {
      goto LABEL_37;
    }

    (*(*v14 + 56))(v14, v27);
  }

  *(a1 + 376) = 1;
  (*(*a1 + 512))(a1, 1156);
  LODWORD(v30) = 0;
  *&v31 = @"Adapt BSS Filters";
  *(&v31 + 1) = 1065353216;
  LODWORD(v32) = 1065353216;
  *(&v32 + 4) = 0xC080000000000002;
  v33 = 1;
  v34 = @"Covariance Alpha TC";
  v35 = 0x3DCCCCCD3FC00000;
  v36 = 1084227584;
  v37 = 0xC080000000000000;
  v38 = 2;
  v39 = @"Mixture Phase";
  v40 = 0;
  v42 = 0xC080000000000001;
  v41 = 1065353216;
  v43 = 3;
  v44 = @"Energy Regularization";
  v45 = 0xC47A000042200000;
  v47 = 0xC08000000000000DLL;
  v46 = 1148846080;
  v48 = 4;
  v49 = @"Covariance Regularization";
  v50 = 0xC47A0000C3480000;
  v52 = 0xC08000000000000DLL;
  v51 = 1148846080;
  v53 = 5;
  v54 = @"Weighted Covariance Regularization";
  v55 = 0xC47A0000C38C0000;
  v57 = 0xC08000000000000DLL;
  v56 = 1148846080;
  v58 = 6;
  v59 = @"Unmixing Regularization";
  v60 = 0xC47A0000C38C0000;
  v61 = 0xD447A0000;
  v62 = -1065353216;
  v63 = 7;
  v64 = @"Scale Mode";
  v65 = 0;
  v66 = 0x141000000;
  v67 = -1065353216;
  v68 = 8;
  v69 = @"Source Prior Beta";
  v70 = 0x3727C5AC3F800000;
  v71 = 0xE40000000;
  v73 = 9;
  v72 = -1065353216;
  v74 = @"White Noise Gain Max";
  v75 = 0xC348000000000000;
  v76 = 0xD43480000;
  v77 = -1065353216;
  v78 = 10;
  v79 = @"Optimization Mode";
  v80 = 0;
  v81 = 0x141200000;
  v82 = -1065353216;
  v83 = 11;
  v84 = @"Minimum Energy Threshold";
  v85 = 0xC3960000C30C0000;
  v86 = 0xD00000000;
  v87 = -1065353216;
  v88 = 12;
  v89 = @"Start Up Wait";
  v90 = 1036831949;
  v91 = 0x440000000;
  v93 = 13;
  v92 = -1065353216;
  v94 = @"Covariance Diagonal Initialization";
  v95 = 0xC47A0000C3200000;
  v96 = 0xD447A0000;
  v97 = -1065353216;
  v98 = 14;
  v99 = @"Energy Low Frequency";
  v100 = 1133903872;
  v101 = 0x844FA0000;
  v102 = -1065353216;
  v103 = 15;
  v104 = @"Energy High Frequency";
  v105 = 0x44FA000046BB8000;
  v106 = 0x846BB8000;
  v107 = -1065353216;
  v108 = 16;
  v109 = @"Mixing Mode";
  v110 = 0;
  v111 = 0x140000000;
  v112 = -1065353216;
  v113 = 17;
  v114 = @"Num of Echo Chan";
  v115 = 0;
  v116 = 0x40000000;
  v117 = -1065353216;
  std::__hash_table<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>>>::__assign_unique<std::pair<unsigned int const,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>> const*>(a1 + 624, &v30, &v118);
  LODWORD(v30) = 0;
  *&v31 = @"Adaptive Prior Probability";
  *(&v31 + 1) = 1056964608;
  LODWORD(v32) = 1065353216;
  *(&v32 + 4) = 0xC080000000000000;
  v33 = 1;
  v34 = @"Prior Strength";
  v35 = 1092616192;
  v36 = 1112014848;
  v37 = 0xC080000000000000;
  std::__hash_table<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>>>::__assign_unique<std::pair<unsigned int const,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>> const*>(v4, &v30, &v38);
  v15 = 0;
  *v27 = 0;
  do
  {
    if (std::__hash_table<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>>>::find<unsigned int>((a1 + 624), v15))
    {
      v30 = v27;
      v16 = *(std::__hash_table<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((a1 + 624), v15) + 8);
      v17 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
      if ((v18 & 1) == 0)
      {
        goto LABEL_38;
      }

      ausdk::AUElement::SetParameter(v17, *v27, v16);
      v15 = *v27;
    }

    *v27 = ++v15;
  }

  while (v15 < 0x12);
  v19 = 0;
LABEL_22:
  v20 = *(a1 + 592);
  if (v20)
  {
    v21 = (*(*v20 + 24))(v20);
  }

  else
  {
    v21 = ((*(a1 + 576) - *(a1 + 568)) >> 3);
  }

  if (v19 < v21)
  {
    v22 = ausdk::AUScope::GetElement((a1 + 552), v19);
    if (!v22)
    {
      goto LABEL_37;
    }

    v23 = 0;
    *v27 = 0;
    while (1)
    {
      if (*(v22 + 40) == 1)
      {
        if (v23 < ((*(v22 + 56) - *(v22 + 48)) >> 2))
        {
          goto LABEL_32;
        }
      }

      else
      {
        v24 = *(v22 + 24);
        if (v24 != ausdk::flat_map<unsigned int,ausdk::AtomicValue<float>>::find(*(v22 + 16), v24, v23))
        {
LABEL_32:
          if (std::__hash_table<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>>>::find<unsigned int>(v4, v23))
          {
            v30 = v27;
            v25 = std::__hash_table<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v4, v23);
            ausdk::AUElement::SetParameter(v22, *v27, *(v25 + 8));
            v23 = *v27;
          }
        }
      }

      *v27 = ++v23;
      if (v23 >= 2)
      {
        ++v19;
        goto LABEL_22;
      }
    }
  }

  *(a1 + 608) = AUDebugFeature::IsNonFiniteHandlingEnabled(v21);
  return a1;
}