void std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(char *a1)
{
  if (!a1)
  {
    return;
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*a1);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*(a1 + 1));
  if (a1[79] < 0)
  {
    operator delete(*(a1 + 7));
    if ((a1[55] & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_9:
    operator delete(*(a1 + 4));
    goto LABEL_4;
  }

  if (a1[55] < 0)
  {
    goto LABEL_9;
  }

LABEL_4:

  operator delete(a1);
}

void std::vector<unsigned int>::__append(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      v10 = 4 * __n;
      bzero(this->__end_, 4 * __n);
      end = (end + v10);
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v6 = end - this->__begin_;
    v7 = (v6 >> 2) + __n;
    if (v7 >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = value - begin;
    if (v8 >> 1 > v7)
    {
      v7 = v8 >> 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v9 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 62))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v11 = (4 * (v6 >> 2));
    v12 = 4 * __n;
    bzero(v11, 4 * __n);
    memcpy(0, begin, v6);
    this->__begin_ = 0;
    this->__end_ = &v11[v12];
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

void *std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x29ED51EE0](v20, a1);
  if (v20[0] != 1)
  {
    goto LABEL_30;
  }

  v6 = a1 + *(*a1 - 24);
  v7 = *(v6 + 5);
  v8 = a2 + a3;
  if ((*(v6 + 2) & 0xB0) == 0x20)
  {
    v9 = a2 + a3;
  }

  else
  {
    v9 = a2;
  }

  v10 = *(v6 + 36);
  if (v10 == -1)
  {
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v11 = std::locale::use_facet(&__b, MEMORY[0x29EDC93D0]);
    v10 = (v11->__vftable[2].~facet_0)(v11, 32);
    std::locale::~locale(&__b);
    *(v6 + 36) = v10;
    if (!v7)
    {
      goto LABEL_29;
    }
  }

  else if (!v7)
  {
    goto LABEL_29;
  }

  v12 = *(v6 + 3);
  v13 = v12 <= a3;
  v14 = v12 - a3;
  if (v13)
  {
    v15 = 0;
  }

  else
  {
    v15 = v14;
  }

  if (v9 - a2 >= 1 && (*(*v7 + 96))(v7, a2, v9 - a2) != v9 - a2)
  {
    goto LABEL_29;
  }

  if (v15 >= 1)
  {
    if (v15 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    if (v15 >= 0x17)
    {
      operator new();
    }

    v22 = v15;
    memset(&__b, v10, v15);
    *(&__b.__locale_ + v15) = 0;
    if (v22 >= 0)
    {
      p_b = &__b;
    }

    else
    {
      p_b = __b.__locale_;
    }

    v17 = (*(*v7 + 96))(v7, p_b, v15);
    v18 = v17;
    if ((v22 & 0x80000000) == 0)
    {
      if (v17 != v15)
      {
        goto LABEL_29;
      }

      goto LABEL_26;
    }

    operator delete(__b.__locale_);
    if (v18 != v15)
    {
LABEL_29:
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
      goto LABEL_30;
    }
  }

LABEL_26:
  if (v8 - v9 >= 1 && (*(*v7 + 96))(v7, v9, v8 - v9) != v8 - v9)
  {
    goto LABEL_29;
  }

  *(v6 + 3) = 0;
LABEL_30:
  MEMORY[0x29ED51EF0](v20);
  return a1;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(void *a1, uint64_t a2, uint64_t a3, unsigned int a4, double a5, int8x8_t a6)
{
  v10 = 8 * (a3 & 7);
  v11 = a3 & 0xFFFFFFFFFFFFFFF8;
  v12 = v10 + 12;
  v13 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v10;
  if (v10 >= 0x35)
  {
    v13 |= *(v11 + 8) << (-8 * (a3 & 7u));
  }

  v14 = (8 * (a3 & 7)) | 0x100;
  v15 = (a4 >> 5) | (8 * v13);
  v16 = vdupq_n_s8(v15 & 0xF);
  v17.i64[0] = 0x303030303030303;
  v17.i64[1] = 0x303030303030303;
  a6.i32[0] = v15 & 0xF;
  v18 = vand_s8(a6, 0x4000400040004);
  v19 = vandq_s8(v16, v17);
  v20 = vbicq_s8(vdupq_n_s8(((v13 >> 1) & 7) + 1), vceqq_s8(v19, v17));
  v17.i64[0] = 0x202020202020202;
  v17.i64[1] = 0x202020202020202;
  v21 = vandq_s8(vbicq_s8(xmmword_29D2F0D30, vmovl_s16(vceqz_s16(vdup_lane_s16(v18, 0)))), v17);
  if (vmaxvq_s8(v21) < 1)
  {
    v29 = 0;
    v52.i64[0] = -1;
    v52.i64[1] = -1;
    v48 = v20;
    v47 = v20;
    v46 = v20;
    v51.i64[0] = -1;
    v51.i64[1] = -1;
    v45 = v20;
    v50.i64[0] = -1;
    v50.i64[1] = -1;
    v49.i64[0] = -1;
    v49.i64[1] = -1;
  }

  else
  {
    v22 = vmovl_u8(*&vpaddq_s8(v21, v21));
    v23 = vmovl_u16(*&vpaddq_s16(v22, v22));
    v24 = vpaddq_s32(v23, v23).u64[0];
    v25.i64[0] = v24;
    v25.i64[1] = HIDWORD(v24);
    v26 = v25;
    v27 = vaddvq_s64(v25);
    v28 = v27 <= 0x80 && v14 >= v27 + v12;
    v29 = !v28;
    v30 = 0uLL;
    if (v28)
    {
      v31 = vaddq_s64(vzip1q_s64(0, v26), vdupq_n_s64(v12 & 0x3C));
      v32 = (v11 + ((v12 >> 3) & 8));
      v30 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v32, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v31)), vshlq_u64(vdupq_lane_s64(v32->i64[0], 0), vnegq_s64(v31)));
      if (v27 + (v12 & 0x3C) >= 0x81)
      {
        v30 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v32[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v31)), vshlq_u64(vdupq_laneq_s64(v32[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v31))), v30);
      }

      v12 += v27;
    }

    v33 = vzip1_s32(*v23.i8, *&vextq_s8(v23, v23, 8uLL));
    v34.i64[0] = v33.u32[0];
    v34.i64[1] = v33.u32[1];
    v35 = vshlq_u64(v30, vnegq_s64(v34));
    v36 = vuzp1q_s32(vzip1q_s64(v30, v35), vzip2q_s64(v30, v35));
    v37 = vshlq_u32(v36, vnegq_s32((*&v22 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v38 = vuzp1q_s16(vzip1q_s32(v36, v37), vzip2q_s32(v36, v37));
    v39 = vzip1q_s16(v38, vshlq_u16(v38, vnegq_s16(vmovl_u8(vuzp1_s8(*v21.i8, *v16.i8)))));
    *v39.i8 = vmovn_s16(v39);
    v36.i64[0] = 0x101010101010101;
    v36.i64[1] = 0x101010101010101;
    v40 = vshlq_s8(v36, v21);
    v36.i64[0] = -1;
    v36.i64[1] = -1;
    v40.i64[0] = vandq_s8(vaddq_s8(v40, v36), v39).u64[0];
    v41 = vdupq_lane_s8(*v40.i8, 0);
    v42 = vdupq_lane_s8(*v40.i8, 1);
    v43 = vdupq_lane_s8(*v40.i8, 2);
    v44 = vdupq_lane_s8(*v40.i8, 3);
    v45 = vsubq_s8(v20, v41);
    v46 = vsubq_s8(v20, v42);
    v47 = vsubq_s8(v20, v43);
    v48 = vsubq_s8(v20, v44);
    v49 = vceqzq_s8(v41);
    v50 = vceqzq_s8(v42);
    v51 = vceqzq_s8(v43);
    v52 = vceqzq_s8(v44);
  }

  v53.i64[0] = 0x707070707070707;
  v53.i64[1] = 0x707070707070707;
  v54 = 0uLL;
  v55 = vandq_s8(vextq_s8(vcgtq_u8(v16, v53), 0, 0xFuLL), v20);
  v56 = vmovl_u8(*&vpaddq_s8(v55, v55));
  v57 = vmovl_u16(*&vpaddq_s16(v56, v56));
  v58 = vpaddq_s32(v57, v57).u64[0];
  v59.i64[0] = v58;
  v59.i64[1] = HIDWORD(v58);
  v60 = v59;
  v61 = vaddvq_s64(v59);
  v62 = v61 + v12;
  if (v61 <= 0x80 && v14 >= v62)
  {
    v64 = v12 & 0x3F;
    v65 = vaddq_s64(vzip1q_s64(0, v60), vdupq_n_s64(v64));
    v66 = (v11 + 8 * (v12 >> 6));
    v54 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v66, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v65)), vshlq_u64(vdupq_lane_s64(v66->i64[0], 0), vnegq_s64(v65)));
    if (v61 + v64 >= 0x81)
    {
      v54 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v66[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v65)), vshlq_u64(vdupq_laneq_s64(v66[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v65))), v54);
    }

    v12 = v62;
  }

  else
  {
    v29 = 1;
  }

  v67 = vandq_s8(v45, xmmword_29D2F0D40);
  v68 = (a4 >> 5) & 3;
  if (v68 != 2)
  {
    v73 = 0;
    v70 = 0;
    v74 = v12;
    goto LABEL_36;
  }

  v69 = v12 + 4;
  if (v14 < v12 + 4)
  {
    v70 = 0;
    v69 = v12;
LABEL_35:
    v73 = 0;
    v29 = 1;
    v74 = v69;
    goto LABEL_36;
  }

  v75 = (v11 + 8 * (v12 >> 6));
  v76 = *v75 >> v12;
  if ((v12 & 0x3F) >= 0x3D)
  {
    v76 |= v75[1] << -(v12 & 0x3F);
  }

  v70 = (v76 << 28) >> 28;
  v74 = v12 + 8;
  if (v14 < v12 + 8)
  {
    goto LABEL_35;
  }

  v71 = (v11 + 8 * (v69 >> 6));
  v72 = *v71 >> v69;
  if ((v69 & 0x3F) >= 0x3D)
  {
    v72 |= v71[1] << -(v69 & 0x3F);
  }

  v73 = (v72 << 28) >> 28;
LABEL_36:
  v77 = vandq_s8(v46, xmmword_29D2F0D50);
  v67.i8[0] = 0;
  v78 = vmovl_u8(*&vpaddq_s8(v67, v67));
  v79 = vmovl_u16(*&vpaddq_s16(v78, v78));
  v80 = vpaddq_s32(v79, v79).u64[0];
  v81.i64[0] = v80;
  v81.i64[1] = HIDWORD(v80);
  v82 = v81;
  v83 = vaddvq_s64(v81);
  v84 = v83 + v74;
  v85 = 0uLL;
  if (v83 <= 0x80 && v14 >= v84)
  {
    v88 = v74 & 0x3F;
    v89 = vaddq_s64(vzip1q_s64(0, v82), vdupq_n_s64(v88));
    v90 = (v11 + 8 * (v74 >> 6));
    v87 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v90, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v89)), vshlq_u64(vdupq_lane_s64(v90->i64[0], 0), vnegq_s64(v89)));
    if (v83 + v88 >= 0x81)
    {
      v87 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v90[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v89)), vshlq_u64(vdupq_laneq_s64(v90[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v89))), v87);
    }

    v74 = v84;
  }

  else
  {
    v29 = 1;
    v87 = 0uLL;
  }

  v204[1] = v9;
  v204[2] = v8;
  v204[3] = v7;
  v204[4] = v6;
  v91 = vandq_s8(v47, xmmword_29D2F0D50);
  v92 = vmovl_u8(*&vpaddq_s8(v77, v77));
  v93 = vmovl_u16(*&vpaddq_s16(v92, v92));
  v94 = vpaddq_s32(v93, v93).u64[0];
  v95.i64[0] = v94;
  v95.i64[1] = HIDWORD(v94);
  v96 = v95;
  v97 = vaddvq_s64(v95);
  if (v97 >= 0x81)
  {
    v29 = 1;
  }

  else
  {
    v98 = vzip1_s32(*v93.i8, *&vextq_s8(v93, v93, 8uLL));
    v99.i64[0] = v98.u32[0];
    v99.i64[1] = v98.u32[1];
    v100 = v99;
    v101 = *&v92 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL);
    v102 = v97 + v74;
    if (v14 >= v97 + v74)
    {
      v104 = v74 & 0x3F;
      v105 = vaddq_s64(vzip1q_s64(0, v96), vdupq_n_s64(v104));
      v106 = (v11 + 8 * (v74 >> 6));
      v103 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v106, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v105)), vshlq_u64(vdupq_lane_s64(v106->i64[0], 0), vnegq_s64(v105)));
      if (v97 + v104 >= 0x81)
      {
        v103 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v106[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v105)), vshlq_u64(vdupq_laneq_s64(v106[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v105))), v103);
      }

      v74 = v102;
    }

    else
    {
      v103 = 0uLL;
      v29 = 1;
    }

    v107 = vshlq_u64(v103, vnegq_s64(v100));
    v108 = vuzp1q_s32(vzip1q_s64(v103, v107), vzip2q_s64(v103, v107));
    v109 = vshlq_u32(v108, vnegq_s32(v101));
    v110 = vuzp1q_s16(vzip1q_s32(v108, v109), vzip2q_s32(v108, v109));
    v111 = vshlq_u16(v110, vnegq_s16((*&v77 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
    v85 = vuzp1q_s8(vzip1q_s16(v110, v111), vzip2q_s16(v110, v111));
  }

  v112 = vandq_s8(v48, xmmword_29D2F0D50);
  v113 = vmovl_u8(*&vpaddq_s8(v91, v91));
  v114 = vmovl_u16(*&vpaddq_s16(v113, v113));
  v115 = vpaddq_s32(v114, v114).u64[0];
  v116.i64[0] = v115;
  v116.i64[1] = HIDWORD(v115);
  v117 = v116;
  v118 = vaddvq_s64(v116);
  if (v118 >= 0x81)
  {
    v29 = 1;
    v125 = 0uLL;
  }

  else
  {
    v119 = vzip1_s32(*v114.i8, *&vextq_s8(v114, v114, 8uLL));
    v120.i64[0] = v119.u32[0];
    v120.i64[1] = v119.u32[1];
    v121 = v120;
    v122 = *&v113 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL);
    v123 = v118 + v74;
    if (v14 >= v118 + v74)
    {
      v126 = v74 & 0x3F;
      v127 = vaddq_s64(vzip1q_s64(0, v117), vdupq_n_s64(v126));
      v128 = (v11 + 8 * (v74 >> 6));
      v124 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v128, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v127)), vshlq_u64(vdupq_lane_s64(v128->i64[0], 0), vnegq_s64(v127)));
      if (v118 + v126 >= 0x81)
      {
        v124 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v128[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v127)), vshlq_u64(vdupq_laneq_s64(v128[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v127))), v124);
      }

      v74 = v123;
    }

    else
    {
      v124 = 0uLL;
      v29 = 1;
    }

    v129 = vshlq_u64(v124, vnegq_s64(v121));
    v130 = vuzp1q_s32(vzip1q_s64(v124, v129), vzip2q_s64(v124, v129));
    v131 = vshlq_u32(v130, vnegq_s32(v122));
    v132 = vuzp1q_s16(vzip1q_s32(v130, v131), vzip2q_s32(v130, v131));
    v133 = vshlq_u16(v132, vnegq_s16((*&v91 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
    v125 = vuzp1q_s8(vzip1q_s16(v132, v133), vzip2q_s16(v132, v133));
  }

  v134 = vmovl_u8(*&vpaddq_s8(v112, v112));
  v135 = vmovl_u16(*&vpaddq_s16(v134, v134));
  v136 = vpaddq_s32(v135, v135).u64[0];
  v137.i64[0] = v136;
  v137.i64[1] = HIDWORD(v136);
  v138 = v137;
  v139 = vaddvq_s64(v137);
  if (v139 >= 0x81 || v14 < v139 + v74)
  {
    goto LABEL_66;
  }

  v140 = vaddq_s64(vzip1q_s64(0, v138), vdupq_n_s64(v74 & 0x3F));
  v141 = (v11 + 8 * (v74 >> 6));
  v142 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v141, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v140)), vshlq_u64(vdupq_lane_s64(v141->i64[0], 0), vnegq_s64(v140)));
  if (v139 + (v74 & 0x3F) >= 0x81)
  {
    v142 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v141[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v140)), vshlq_u64(vdupq_laneq_s64(v141[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v140))), v142);
  }

  if ((v29 & 1) != 0 || (v143 = (a4 & 0x1F) + 1, 8 * ((a3 & 7) + v143) - (v139 + v74) >= 9))
  {
LABEL_66:
    v143 = 0;
    v204[0] |= 255 << (8 * ((v204 + 7) & 7u));
    *a1 = 0;
    *(a1 + a2) = 0;
    *(a1 + 2 * a2) = 0;
    *(a1 + 3 * a2) = 0;
  }

  else
  {
    v145 = vzip1_s32(*v57.i8, *&vextq_s8(v57, v57, 8uLL));
    v146 = vzip1_s32(*v79.i8, *&vextq_s8(v79, v79, 8uLL));
    v147.i64[0] = v145.u32[0];
    v147.i64[1] = v145.u32[1];
    v148 = v147;
    v147.i64[0] = v146.u32[0];
    v147.i64[1] = v146.u32[1];
    v149 = vshlq_u64(v54, vnegq_s64(v148));
    v150 = vshlq_u64(v87, vnegq_s64(v147));
    v151 = vuzp1q_s32(vzip1q_s64(v54, v149), vzip2q_s64(v54, v149));
    v152 = vuzp1q_s32(vzip1q_s64(v87, v150), vzip2q_s64(v87, v150));
    v153 = vshlq_u32(v151, vnegq_s32((*&v56 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v154 = vshlq_u32(v152, vnegq_s32((*&v78 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v155 = vuzp1q_s16(vzip1q_s32(v151, v153), vzip2q_s32(v151, v153));
    v156 = vuzp1q_s16(vzip1q_s32(v152, v154), vzip2q_s32(v152, v154));
    v157 = vshlq_u16(v155, vnegq_s16((*&v55 & __PAIR128__(0xF0FFF0FFF0FFF0FFLL, 0xF0FFF0FFF0FFF0FFLL))));
    v158 = vshlq_u16(v156, vnegq_s16((*&v67 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF0000))));
    v159 = vzip2q_s16(v155, v157);
    v160 = vzip1q_s16(v155, v157);
    v157.i64[0] = 0x808080808080808;
    v157.i64[1] = 0x808080808080808;
    v161 = vzip2q_s16(v156, v158);
    v162 = vzip1q_s16(v156, v158);
    v158.i64[0] = 0x808080808080808;
    v158.i64[1] = 0x808080808080808;
    v163 = v13 >> 4;
    v164 = vuzp1q_s8(v160, v159);
    v159.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v159.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v165 = vuzp1q_s8(v162, v161);
    v161.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v161.i64[1] = 0xF8F8F8F8F8F8F8F8;
    *v150.i8 = vzip1_s32(*v135.i8, *&vextq_s8(v135, v135, 8uLL));
    v166.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v166.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v167.i64[0] = 0x808080808080808;
    v167.i64[1] = 0x808080808080808;
    v168 = vshlq_s8(v164, vsubq_s8(v157, v55));
    v169 = vaddq_s8(v67, v161);
    v170 = vshlq_s8(v165, vsubq_s8(v158, v67));
    v147.i64[0] = v150.u32[0];
    v147.i64[1] = v150.u32[1];
    v171 = vshlq_s8(v168, vaddq_s8(v55, v159));
    v172 = vshlq_s8(v170, v169);
    v173 = vshlq_s8(vshlq_s8(v85, vsubq_s8(v158, v77)), vaddq_s8(v77, v161));
    v174 = vshlq_s8(vshlq_s8(v125, vsubq_s8(v158, v91)), vaddq_s8(v91, v161));
    v175 = vshlq_u64(v142, vnegq_s64(v147));
    v176 = vuzp1q_s32(vzip1q_s64(v142, v175), vzip2q_s64(v142, v175));
    v177 = vshlq_u32(v176, vnegq_s32((*&v134 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v178 = vuzp1q_s16(vzip1q_s32(v176, v177), vzip2q_s32(v176, v177));
    v179 = vshlq_u16(v178, vnegq_s16((*&v112 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
    v180 = vshlq_s8(vshlq_s8(vuzp1q_s8(vzip1q_s16(v178, v179), vzip2q_s16(v178, v179)), vsubq_s8(v167, v112)), vaddq_s8(v112, v166));
    if (v68 == 2)
    {
      v181.i64[0] = 0xFFFF0000FFFF0000;
      v181.i64[1] = 0xFFFF0000FFFF0000;
      v182 = vmlaq_s8(vandq_s8(vdupq_n_s8(v73), v181), vdupq_n_s8(v70), xmmword_29D2F0D60);
      v172 = vaddq_s8(v172, v182);
      v173 = vaddq_s8(vaddq_s8(vdupq_n_s8(2 * v73), v182), v173);
      v174 = vaddq_s8(vaddq_s8(vdupq_n_s8(4 * v70), v182), v174);
      v180 = vaddq_s8(vaddq_s8(vdupq_n_s8(4 * v70 + 2 * v73), v182), v180);
    }

    v183 = vdupq_n_s8(v163).u64[0];
    v184 = vaddq_s8(vandq_s8(v171, v49), v172);
    v185 = vdupq_lane_s8(*v171.i8, 0);
    v186 = vsubq_s8(v184, vandq_s8(v185, v49));
    v187 = vsubq_s8(v173, vandq_s8(v185, v50));
    v188 = vsubq_s8(v174, vandq_s8(v185, v51));
    v189 = vsubq_s8(v180, vandq_s8(v185, v52));
    v190.i64[0] = 0x101010101010101;
    v190.i64[1] = 0x101010101010101;
    if (vaddlvq_s8(vceqq_s8(v19, v190)))
    {
      v191 = vandq_s8(v16, v190);
      v192 = vnegq_s8(v191);
      v193 = v186;
      v193.i8[0] = v186.i8[7];
      v193.i8[7] = v186.i8[0];
      v194 = vorrq_s8(vandq_s8(v193, v192), vandq_s8(v186, vceqzq_s8(v191)));
      v195 = vaddq_s8(vandq_s8(vqtbl1q_s8(v194, xmmword_29D2F0D70), v192), v194);
      v186.i64[0] = vaddq_s8(vandq_s8(vqtbl1q_s8(v195, xmmword_29D2F0D80), v192), v195).u64[0];
      v196 = vaddq_s8(vandq_s8(vqtbl1q_s8(v187, xmmword_29D2F0D90), v192), v187);
      v187.i64[0] = vaddq_s8(vandq_s8(vqtbl1q_s8(v196, xmmword_29D2F0DA0), v192), v196).u64[0];
      v197 = vaddq_s8(vandq_s8(vqtbl1q_s8(v188, xmmword_29D2F0DB0), v192), v188);
      v188.i64[0] = vaddq_s8(vandq_s8(vqtbl1q_s8(v197, xmmword_29D2F0DC0), v192), v197).u64[0];
      v198 = vaddq_s8(vandq_s8(vqtbl1q_s8(v189, xmmword_29D2F0DD0), v192), v189);
      v189.i64[0] = vaddq_s8(vandq_s8(vqtbl1q_s8(v198, xmmword_29D2F0DE0), v192), v198).u64[0];
    }

    v199 = vadd_s8(v183, *v186.i8);
    v200 = vadd_s8(*v188.i8, v183);
    *a1 = vuzp1_s16(v199, v200);
    *(a1 + a2) = vuzp2_s16(v199, v200);
    v201 = (a1 + 2 * a2);
    v202 = vadd_s8(*v187.i8, v183);
    v203 = vadd_s8(*v189.i8, v183);
    *v201 = vuzp1_s16(v202, v203);
    *(v201 + a2) = vuzp2_s16(v202, v203);
  }

  return v143;
}

int16x4_t *AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(int16x4_t *result, uint64_t a2, int16x4_t *a3, char *a4, unsigned int a5, unsigned int a6)
{
  v6 = 0;
  v7 = 2 * a2;
  if (a5 && a6)
  {
    v8 = *(result + a2);
    v9 = vzip1_s16(*result, v8);
    v10 = vzip2_s16(*result, v8);
    v11 = *(result + 2 * a2);
    v12 = *(result + v7 + a2);
    *a3 = v9;
    a3[1] = vzip1_s16(v11, v12);
    a3[2] = v10;
    a3[3] = vzip2_s16(v11, v12);
    a3 += 4;
    v6 = 31;
  }

  v13 = 0;
  v14 = 4 * a2;
  *a4 = v6;
  if (a5 && a6 >= 5)
  {
    v15 = *(result + 4 * a2);
    v16 = *(result + v14 + a2);
    v17 = vzip1_s16(v15, v16);
    v18 = vzip2_s16(v15, v16);
    v19 = (result + v14 + v7);
    v20 = *(v19 + a2);
    v21 = vzip1_s16(*v19, v20);
    v22 = vzip2_s16(*v19, v20);
    *a3 = v17;
    a3[1] = v21;
    a3[2] = v18;
    a3[3] = v22;
    a3 += 4;
    v13 = 31;
  }

  v23 = 0;
  a4[1] = v13;
  if (a5 >= 9 && a6)
  {
    v24 = result[1];
    v25 = *(result + a2 + 8);
    v26 = vzip1_s16(v24, v25);
    v27 = vzip2_s16(v24, v25);
    v28 = (result + v7 + 8);
    v29 = *(v28 + a2);
    v30 = vzip1_s16(*v28, v29);
    v31 = vzip2_s16(*v28, v29);
    *a3 = v26;
    a3[1] = v30;
    a3[2] = v27;
    a3[3] = v31;
    a3 += 4;
    v23 = 31;
  }

  v32 = 0;
  a4[2] = v23;
  if (a5 >= 9 && a6 >= 5)
  {
    v33 = (result + v14);
    v34 = v33[1];
    v35 = *(++v33 + a2);
    v36 = vzip1_s16(v34, v35);
    v37 = vzip2_s16(v34, v35);
    v38 = (v33 + v7);
    v39 = *(v38 + a2);
    v40 = vzip1_s16(*v38, v39);
    v41 = vzip2_s16(*v38, v39);
    *a3 = v36;
    a3[1] = v40;
    a3[2] = v37;
    a3[3] = v41;
    a3 += 4;
    v32 = 31;
  }

  v42 = 0;
  a4[3] = v32;
  if (a5 && a6 >= 9)
  {
    v43 = &result[a2];
    v44 = *(v43 + a2);
    v45 = vzip1_s16(*v43, v44);
    v46 = vzip2_s16(*v43, v44);
    v47 = (v43 + v7);
    v48 = *(v47 + a2);
    v49 = vzip1_s16(*v47, v48);
    v50 = vzip2_s16(*v47, v48);
    *a3 = v45;
    a3[1] = v49;
    a3[2] = v46;
    a3[3] = v50;
    a3 += 4;
    v42 = 31;
  }

  v51 = 0;
  a4[4] = v42;
  if (a5 && a6 >= 0xD)
  {
    v52 = (result + 12 * a2);
    v53 = *(v52 + a2);
    v54 = vzip1_s16(*v52, v53);
    v55 = vzip2_s16(*v52, v53);
    v56 = (v52 + v7);
    v57 = *(v56 + a2);
    v58 = vzip1_s16(*v56, v57);
    v59 = vzip2_s16(*v56, v57);
    *a3 = v54;
    a3[1] = v58;
    a3[2] = v55;
    a3[3] = v59;
    a3 += 4;
    v51 = 31;
  }

  v60 = 0;
  a4[5] = v51;
  if (a5 >= 9 && a6 >= 9)
  {
    v61 = &result[a2];
    v62 = v61[1];
    v63 = *(++v61 + a2);
    v64 = vzip1_s16(v62, v63);
    v65 = vzip2_s16(v62, v63);
    v66 = (v61 + v7);
    v67 = *(v66 + a2);
    v68 = vzip1_s16(*v66, v67);
    v69 = vzip2_s16(*v66, v67);
    *a3 = v64;
    a3[1] = v68;
    a3[2] = v65;
    a3[3] = v69;
    a3 += 4;
    v60 = 31;
  }

  v70 = 0;
  a4[6] = v60;
  if (a5 >= 9 && a6 >= 0xD)
  {
    v71 = (result + 12 * a2);
    v72 = v71[1];
    v73 = *(++v71 + a2);
    v74 = vzip1_s16(v72, v73);
    v75 = vzip2_s16(v72, v73);
    v76 = (v71 + v7);
    v77 = *(v76 + a2);
    v78 = vzip1_s16(*v76, v77);
    v79 = vzip2_s16(*v76, v77);
    *a3 = v74;
    a3[1] = v78;
    a3[2] = v75;
    a3[3] = v79;
    v70 = 31;
  }

  a4[7] = v70;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(uint64_t a1, uint64_t a2, unsigned __int8 *a3, double a4, int16x4_t a5)
{
  v8 = *a3;
  if (v8 == 96)
  {
    a4 = COERCE_DOUBLE(vdup_lane_s8(*a2, 0));
    *a1 = a4;
    *(a1 + 16) = a4;
    *(a1 + 32) = a4;
    *(a1 + 48) = a4;
    v9 = 1;
  }

  else if (v8 == 31)
  {
    v10 = *a2;
    a5 = *(a2 + 8);
    v11 = *(a2 + 16);
    v12 = *(a2 + 24);
    *a1 = vuzp1_s16(*a2, v11);
    *(a1 + 16) = vuzp2_s16(v10, v11);
    *(a1 + 32) = vuzp1_s16(a5, v12);
    a4 = COERCE_DOUBLE(vuzp2_s16(a5, v12));
    *(a1 + 48) = a4;
    v9 = 32;
  }

  else if (*a3)
  {
    v9 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(a1, 16, a2, v8, a4, a5);
  }

  else
  {
    v9 = 0;
    *a1 = 0;
    *(a1 + 16) = 0;
    *(a1 + 32) = 0;
    *(a1 + 48) = 0;
  }

  v13 = a2 + v9;
  v14 = a3[1];
  if (a3[1])
  {
    if (v14 == 96)
    {
      a4 = COERCE_DOUBLE(vdup_lane_s8(*v13, 0));
      *(a1 + 64) = a4;
      *(a1 + 80) = a4;
      *(a1 + 96) = a4;
      *(a1 + 112) = a4;
      v18 = 1;
    }

    else if (v14 == 31)
    {
      v15 = *v13;
      a5 = *(v13 + 8);
      v16 = *(v13 + 16);
      v17 = *(v13 + 24);
      *(a1 + 64) = vuzp1_s16(*v13, v16);
      *(a1 + 80) = vuzp2_s16(v15, v16);
      *(a1 + 96) = vuzp1_s16(a5, v17);
      a4 = COERCE_DOUBLE(vuzp2_s16(a5, v17));
      *(a1 + 112) = a4;
      v18 = 32;
    }

    else
    {
      v18 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((a1 + 64), 16, v13, v14, a4, a5);
    }
  }

  else
  {
    v18 = 0;
    *(a1 + 64) = 0;
    *(a1 + 80) = 0;
    *(a1 + 96) = 0;
    *(a1 + 112) = 0;
  }

  v19 = v13 + v18;
  v20 = a3[2];
  if (a3[2])
  {
    if (v20 == 96)
    {
      a4 = COERCE_DOUBLE(vdup_lane_s8(*v19, 0));
      *(a1 + 8) = a4;
      *(a1 + 24) = a4;
      *(a1 + 40) = a4;
      *(a1 + 56) = a4;
      v24 = 1;
    }

    else if (v20 == 31)
    {
      v21 = *v19;
      a5 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v19 + 24);
      *(a1 + 8) = vuzp1_s16(*v19, v22);
      *(a1 + 24) = vuzp2_s16(v21, v22);
      *(a1 + 40) = vuzp1_s16(a5, v23);
      a4 = COERCE_DOUBLE(vuzp2_s16(a5, v23));
      *(a1 + 56) = a4;
      v24 = 32;
    }

    else
    {
      v24 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((a1 + 8), 16, v19, v20, a4, a5);
    }
  }

  else
  {
    v24 = 0;
    *(a1 + 8) = 0;
    *(a1 + 24) = 0;
    *(a1 + 40) = 0;
    *(a1 + 56) = 0;
  }

  v25 = v19 + v24;
  v26 = a3[3];
  if (a3[3])
  {
    if (v26 == 96)
    {
      a4 = COERCE_DOUBLE(vdup_lane_s8(*v25, 0));
      *(a1 + 72) = a4;
      *(a1 + 88) = a4;
      *(a1 + 104) = a4;
      *(a1 + 120) = a4;
      v30 = 1;
    }

    else if (v26 == 31)
    {
      v27 = *v25;
      a5 = *(v25 + 8);
      v28 = *(v25 + 16);
      v29 = *(v25 + 24);
      *(a1 + 72) = vuzp1_s16(*v25, v28);
      *(a1 + 88) = vuzp2_s16(v27, v28);
      *(a1 + 104) = vuzp1_s16(a5, v29);
      a4 = COERCE_DOUBLE(vuzp2_s16(a5, v29));
      *(a1 + 120) = a4;
      v30 = 32;
    }

    else
    {
      v30 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((a1 + 72), 16, v25, v26, a4, a5);
    }
  }

  else
  {
    v30 = 0;
    *(a1 + 72) = 0;
    *(a1 + 88) = 0;
    *(a1 + 104) = 0;
    *(a1 + 120) = 0;
  }

  v31 = v25 + v30;
  v32 = a3[4];
  if (a3[4])
  {
    if (v32 == 96)
    {
      a4 = COERCE_DOUBLE(vdup_lane_s8(*v31, 0));
      *(a1 + 128) = a4;
      *(a1 + 144) = a4;
      *(a1 + 160) = a4;
      *(a1 + 176) = a4;
      v36 = 1;
    }

    else if (v32 == 31)
    {
      v33 = *v31;
      a5 = *(v31 + 8);
      v34 = *(v31 + 16);
      v35 = *(v31 + 24);
      *(a1 + 128) = vuzp1_s16(*v31, v34);
      *(a1 + 144) = vuzp2_s16(v33, v34);
      *(a1 + 160) = vuzp1_s16(a5, v35);
      a4 = COERCE_DOUBLE(vuzp2_s16(a5, v35));
      *(a1 + 176) = a4;
      v36 = 32;
    }

    else
    {
      v36 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((a1 + 128), 16, v31, v32, a4, a5);
    }
  }

  else
  {
    v36 = 0;
    *(a1 + 128) = 0;
    *(a1 + 144) = 0;
    *(a1 + 160) = 0;
    *(a1 + 176) = 0;
  }

  v37 = v31 + v36;
  v38 = a3[5];
  if (a3[5])
  {
    if (v38 == 96)
    {
      a4 = COERCE_DOUBLE(vdup_lane_s8(*v37, 0));
      *(a1 + 192) = a4;
      *(a1 + 208) = a4;
      *(a1 + 224) = a4;
      *(a1 + 240) = a4;
      v42 = 1;
    }

    else if (v38 == 31)
    {
      v39 = *v37;
      a5 = *(v37 + 8);
      v40 = *(v37 + 16);
      v41 = *(v37 + 24);
      *(a1 + 192) = vuzp1_s16(*v37, v40);
      *(a1 + 208) = vuzp2_s16(v39, v40);
      *(a1 + 224) = vuzp1_s16(a5, v41);
      a4 = COERCE_DOUBLE(vuzp2_s16(a5, v41));
      *(a1 + 240) = a4;
      v42 = 32;
    }

    else
    {
      v42 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((a1 + 192), 16, v37, v38, a4, a5);
    }
  }

  else
  {
    v42 = 0;
    *(a1 + 192) = 0;
    *(a1 + 208) = 0;
    *(a1 + 224) = 0;
    *(a1 + 240) = 0;
  }

  v43 = v37 + v42;
  v44 = a3[6];
  if (!a3[6])
  {
    result = 0;
    *(a1 + 136) = 0;
    *(a1 + 152) = 0;
    *(a1 + 168) = 0;
    *(a1 + 184) = 0;
    v49 = a3[7];
    if (a3[7])
    {
      goto LABEL_51;
    }

    goto LABEL_57;
  }

  if (v44 == 96)
  {
    a4 = COERCE_DOUBLE(vdup_lane_s8(*v43, 0));
    *(a1 + 136) = a4;
    *(a1 + 152) = a4;
    *(a1 + 168) = a4;
    *(a1 + 184) = a4;
    result = 1;
    v49 = a3[7];
    if (!a3[7])
    {
      goto LABEL_57;
    }

    goto LABEL_51;
  }

  if (v44 != 31)
  {
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((a1 + 136), 16, v43, v44, a4, a5);
    v49 = a3[7];
    if (a3[7])
    {
      goto LABEL_51;
    }

LABEL_57:
    *(a1 + 200) = 0;
    *(a1 + 216) = 0;
    *(a1 + 232) = 0;
    *(a1 + 248) = 0;
    return result;
  }

  v45 = *v43;
  a5 = *(v43 + 8);
  v46 = *(v43 + 16);
  v47 = *(v43 + 24);
  *(a1 + 136) = vuzp1_s16(*v43, v46);
  *(a1 + 152) = vuzp2_s16(v45, v46);
  *(a1 + 168) = vuzp1_s16(a5, v47);
  a4 = COERCE_DOUBLE(vuzp2_s16(a5, v47));
  *(a1 + 184) = a4;
  result = 32;
  v49 = a3[7];
  if (!a3[7])
  {
    goto LABEL_57;
  }

LABEL_51:
  v50 = (v43 + result);
  if (v49 == 96)
  {
    v55 = vdup_lane_s8(*v50, 0);
    *(a1 + 200) = v55;
    *(a1 + 216) = v55;
    *(a1 + 232) = v55;
    goto LABEL_55;
  }

  if (v49 == 31)
  {
    v51 = *v50;
    v52 = v50[1];
    v53 = v50[2];
    v54 = v50[3];
    *(a1 + 200) = vuzp1_s16(*v50, v53);
    *(a1 + 216) = vuzp2_s16(v51, v53);
    *(a1 + 232) = vuzp1_s16(v52, v54);
    v55 = vuzp2_s16(v52, v54);
LABEL_55:
    *(a1 + 248) = v55;
    return result;
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((a1 + 200), 16, v50, v49, a4, a5);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(int16x4_t *a1, char *a2, int16x4_t *a3, uint64_t a4, unsigned int a5, unsigned int a6)
{
  v8 = *a3;
  v9 = *(a3 + a4);
  v10 = vzip1_s16(*a3, v9);
  v11 = vzip2_s16(*a3, v9);
  v12 = (a3 + 2 * a4);
  v13 = *(v12 + a4);
  v14 = vzip1_s16(*v12, v13);
  v15 = vzip2_s16(*v12, v13);
  *v16.i8 = v10;
  v16.u64[1] = v10;
  *v17.i8 = v14;
  v17.u64[1] = v14;
  *v18.i8 = v11;
  v18.u64[1] = v11;
  *v19.i8 = v15;
  v19.u64[1] = v15;
  v20 = vdupq_lane_s8(*a3, 0);
  v21 = vsubq_s8(v16, v20);
  v22 = vsubq_s8(v17, v20);
  v23 = vsubq_s8(v18, v20);
  v8.i8[0] = vmaxvq_s8(v21);
  v13.i8[0] = vminvq_s8(v21);
  v24 = vdupq_lane_s8(v8, 0);
  v25 = vdupq_lane_s8(v13, 0);
  v26 = vsubq_s8(v19, v20);
  v27 = vzip1q_s8(v24, v25);
  v28.i64[0] = 0x808080808080808;
  v28.i64[1] = 0x808080808080808;
  v29 = vsubq_s8(v28, vclsq_s8(v27));
  v30 = vbicq_s8(v29, vceqzq_s8(v27));
  v31 = vpmaxq_s8(v30, v30);
  v29.i8[0] = vmaxvq_s8(v22);
  v6.i8[0] = vminvq_s8(v22);
  v32 = vdupq_lane_s8(*v29.i8, 0);
  v33 = vdupq_lane_s8(v6, 0);
  v34 = vmaxq_s8(v24, v32);
  v35 = vminq_s8(v25, v33);
  v36 = vzip1q_s8(v32, v33);
  v37 = vsubq_s8(v28, vclsq_s8(v36));
  v38 = vbicq_s8(v37, vceqzq_s8(v36));
  v39 = vpmaxq_s8(v38, v38);
  v37.i8[0] = vmaxvq_s8(v23);
  v33.i8[0] = vminvq_s8(v23);
  v40 = vdupq_lane_s8(*v37.i8, 0);
  v41 = vdupq_lane_s8(*v33.i8, 0);
  v42 = vmaxq_s8(v34, v40);
  v43 = vminq_s8(v35, v41);
  v44 = vzip1q_s8(v40, v41);
  v45 = vsubq_s8(v28, vclsq_s8(v44));
  v46 = vbicq_s8(v45, vceqzq_s8(v44));
  v47 = vpmaxq_s8(v46, v46);
  v45.i8[0] = vmaxvq_s8(v26);
  v7.i8[0] = vminvq_s8(v26);
  v48 = vdupq_lane_s8(*v45.i8, 0);
  v49 = vdupq_lane_s8(v7, 0);
  v50 = vmaxq_s8(v42, v48);
  v51 = vminq_s8(v43, v49);
  v52 = vzip1q_s8(v48, v49);
  v53 = vbicq_s8(vsubq_s8(v28, vclsq_s8(v52)), vceqzq_s8(v52));
  v54 = vpmaxq_s8(v53, v53);
  v55 = vmaxq_s8(vmaxq_s8(v31, v39), vmaxq_s8(v47, v54));
  v56 = vclzq_s8(vsubq_s8(v50, v51));
  v57 = vsubq_s8(v28, v56);
  v58 = vminq_s8(v57, v55);
  if (vmaxvq_s8(v58))
  {
    v59 = 0;
    v60 = 0;
    v61.i64[0] = -1;
    v61.i64[1] = -1;
    v62.i64[0] = 0x707070707070707;
    v62.i64[1] = 0x707070707070707;
    v63 = vshlq_s8(v61, vsubq_s8(v62, v56));
    v64 = vcgtq_s8(v55, v57);
    v65 = vandq_s8(vsubq_s8(v63, v51), v64);
    v66 = vandq_s8(v64, v28);
    v64.i64[0] = 0x303030303030303;
    v64.i64[1] = 0x303030303030303;
    v67 = vorrq_s8(vandq_s8(vceqzq_s8(v58), v64), v66);
    v68 = vmaxq_s8(vminq_s8(vsubq_s8(v58, v31), v64), 0);
    v69 = vmaxq_s8(vminq_s8(vsubq_s8(v58, v39), v64), 0);
    v70 = vmaxq_s8(vminq_s8(vsubq_s8(v58, v47), v64), 0);
    v71 = vmaxq_s8(vminq_s8(vsubq_s8(v58, v54), v64), 0);
    v72 = vsubq_s8(v58, v68);
    v73 = vsubq_s8(v58, v69);
    v74 = vsubq_s8(v58, v70);
    v75 = vsubq_s8(v58, v71);
    v76 = vceqq_s8(vaddq_s8(v71, v70), vnegq_s8(vaddq_s8(v68, v69)));
    v69.i64[0] = 0x404040404040404;
    v69.i64[1] = 0x404040404040404;
    v77 = vorrq_s8(vbicq_s8(v69, v76), v67);
    if (a5 >= 4 && a6 >= 2)
    {
      v372 = v14;
      v373 = v10;
      v374 = v15;
      v375 = v11;
      v378 = v65;
      v78 = v10.u8[1] - v10.u8[0];
      v79 = v78 << 28 >> 28;
      v80 = v10.u8[2] - v10.u8[0];
      v81.i64[0] = 0xFFFF0000FFFF0000;
      v81.i64[1] = 0xFFFF0000FFFF0000;
      v82 = vmlaq_s8(vandq_s8(vdupq_n_s8(v80 << 28 >> 28), v81), vdupq_n_s8(v79), xmmword_29D2F0D60);
      v83 = vsubq_s8(v21, v82);
      v84 = v80 << 28 >> 27;
      v371 = v22;
      v379 = v21;
      v85 = vsubq_s8(vaddq_s8(vdupq_n_s8(-v84), v22), v82);
      v86 = v78 << 28 >> 26;
      v87 = vsubq_s8(vaddq_s8(vdupq_n_s8(-v86), v23), v82);
      v88 = vaddq_s8(vdupq_n_s8(-(v84 + v86)), v26);
      v89 = vsubq_s8(v88, v82);
      v88.i8[0] = vmaxvq_s8(v83);
      v82.i8[0] = vminvq_s8(v83);
      v90 = vdupq_lane_s8(*v88.i8, 0);
      v91 = vdupq_lane_s8(*v82.i8, 0);
      v92 = vzip1q_s8(v90, v91);
      v93.i64[0] = 0x808080808080808;
      v93.i64[1] = 0x808080808080808;
      v94 = vsubq_s8(v93, vclsq_s8(v92));
      v95 = vbicq_s8(v94, vceqzq_s8(v92));
      v96 = vpmaxq_s8(v95, v95);
      v94.i8[0] = vmaxvq_s8(v85);
      v57.i8[0] = vminvq_s8(v85);
      v97 = vdupq_lane_s8(*v94.i8, 0);
      v98 = vdupq_lane_s8(*v57.i8, 0);
      v99 = vmaxq_s8(v90, v97);
      v100 = vminq_s8(v91, v98);
      v101 = vzip1q_s8(v97, v98);
      v102 = vsubq_s8(v93, vclsq_s8(v101));
      v103 = vbicq_s8(v102, vceqzq_s8(v101));
      v104 = vpmaxq_s8(v103, v103);
      v102.i8[0] = vmaxvq_s8(v87);
      v63.i8[0] = vminvq_s8(v87);
      v105 = vdupq_lane_s8(*v102.i8, 0);
      v106 = vdupq_lane_s8(*v63.i8, 0);
      v107 = vmaxq_s8(v99, v105);
      v108 = vminq_s8(v100, v106);
      v109 = vzip1q_s8(v105, v106);
      v110 = vsubq_s8(v93, vclsq_s8(v109));
      v111 = vbicq_s8(v110, vceqzq_s8(v109));
      v112 = vpmaxq_s8(v111, v111);
      v110.i8[0] = vmaxvq_s8(v89);
      v62.i8[0] = vminvq_s8(v89);
      v113 = vdupq_lane_s8(*v110.i8, 0);
      v114 = vdupq_lane_s8(*v62.i8, 0);
      v115 = vmaxq_s8(v107, v113);
      v116 = v74;
      v117 = v26;
      v370 = v23;
      v118 = vminq_s8(v108, v114);
      v119 = vzip1q_s8(v113, v114);
      v120 = vbicq_s8(vsubq_s8(v93, vclsq_s8(v119)), vceqzq_s8(v119));
      v121 = vpmaxq_s8(v120, v120);
      v122 = vmaxq_s8(vmaxq_s8(v96, v104), vmaxq_s8(v112, v121));
      v123 = vclzq_s8(vsubq_s8(v115, v118));
      v124 = vsubq_s8(v93, v123);
      v125 = vcgtq_s8(v122, v124);
      v126 = vminq_s8(v124, v122);
      v93.i64[0] = 0x202020202020202;
      v93.i64[1] = 0x202020202020202;
      v122.i64[0] = 0xA0A0A0A0A0A0A0ALL;
      v122.i64[1] = 0xA0A0A0A0A0A0A0ALL;
      v127 = vbslq_s8(v125, v122, v93);
      v122.i64[0] = 0x101010101010101;
      v122.i64[1] = 0x101010101010101;
      v128 = vmaxq_s8(v126, v122);
      v129.i64[0] = 0x303030303030303;
      v129.i64[1] = 0x303030303030303;
      v130 = vmaxq_s8(vminq_s8(vsubq_s8(v128, v96), v129), 0);
      v131 = vmaxq_s8(vminq_s8(vsubq_s8(v128, v104), v129), 0);
      v132 = vmaxq_s8(vminq_s8(vsubq_s8(v128, v112), v129), 0);
      v133 = vmaxq_s8(vminq_s8(vsubq_s8(v128, v121), v129), 0);
      v134 = vsubq_s8(v128, v130);
      v135 = vsubq_s8(v128, v131);
      v136 = vsubq_s8(v128, v132);
      v137 = vsubq_s8(v128, v133);
      v138.i64[0] = 0x404040404040404;
      v138.i64[1] = 0x404040404040404;
      v139 = vorrq_s8(vbicq_s8(v138, vceqq_s8(vaddq_s8(v133, v132), vnegq_s8(vaddq_s8(v130, v131)))), v127);
      v138.i64[0] = 0x8000800080008;
      v138.i64[1] = 0x8000800080008;
      v140 = vshll_n_s8(vadd_s8(vadd_s8(*v74.i8, *v73.i8), *v75.i8), 3uLL);
      v122.i64[0] = 0x2000200020002;
      v122.i64[1] = 0x2000200020002;
      v141 = vdupq_lane_s8(vqmovn_u16(vcgtq_s16(vaddq_s16(vaddq_s16(vaddw_s8(vmlal_s8(v140, *v72.i8, 0x707070707070707), vbic_s8(*v58.i8, vcgt_u8(0x808080808080808, *v77.i8))), (*&vshll_n_u8(*v77.i8, 1uLL) & __PAIR128__(0xFFE9FFE9FFE9FFE9, 0xFFE9FFE9FFE9FFE9))), vandq_s8(vceqq_s16((*&vmovl_u8(*v77.i8) & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3)), v122), v138)), vaddq_s16(vaddw_u8(vaddw_u8(vmlal_s8(vshll_n_s8(vadd_s8(vadd_s8(*v136.i8, *v135.i8), *v137.i8), 3uLL), *v134.i8, 0x707070707070707), vand_s8(vadd_s8(*v139.i8, *v139.i8), 0x808080808080808)), vbic_s8(*v128.i8, vcgt_u8(0x808080808080808, *v139.i8))), v138))), 0);
      v132.i16[0] = vaddlvq_s8(v141);
      v142 = v79 & 0xF | (16 * v80);
      v143 = v132.u16[0];
      if (v132.i16[0])
      {
        v144.i64[0] = 0x707070707070707;
        v144.i64[1] = 0x707070707070707;
        v145.i64[0] = -1;
        v145.i64[1] = -1;
        v146 = vandq_s8(vsubq_s8(vshlq_s8(v145, vsubq_s8(v144, v123)), v118), v125);
        v379 = vbslq_s8(v141, v83, v379);
        v147 = vbslq_s8(v141, v85, v371);
        v23 = vbslq_s8(v141, v87, v370);
        v72 = vbslq_s8(v141, v134, v72);
        v75 = vbslq_s8(v141, v137, v75);
        v65 = vbslq_s8(v141, v146, v378);
        v58 = vbslq_s8(v141, v128, v58);
        v77 = vbslq_s8(v141, v139, v77);
        v148 = vmull_s8(*v72.i8, 0x707070707070707);
        v376 = vbslq_s8(v141, v135, v73);
        v377 = vbslq_s8(v141, v136, v116);
        v149 = vshll_n_s8(vadd_s8(vadd_s8(*v377.i8, *v376.i8), *v75.i8), 3uLL);
        v26 = vbslq_s8(v141, v89, v117);
        v22 = v147;
      }

      else
      {
        v376 = v73;
        v377 = v116;
        v148 = vmull_s8(*v72.i8, 0x707070707070707);
        v26 = v117;
        v23 = v370;
        v22 = v371;
        v65 = v378;
        v149 = v140;
      }

      v60 = v142;
      v152 = vsubq_s8(v16, vqtbl1q_s8(v16, xmmword_29D2F0DF0));
      v153 = v17;
      v153.i8[7] = v16.i8[7];
      v154 = vsubq_s8(v17, vqtbl1q_s8(v153, xmmword_29D2F0E00));
      v155 = v18;
      v155.i8[7] = v16.i8[7];
      v156 = vsubq_s8(v18, vqtbl1q_s8(v155, xmmword_29D2F0E10));
      v157 = v19;
      v157.i8[7] = v16.i8[7];
      v158 = vqtbl1q_s8(v157, xmmword_29D2F0E20);
      v159 = vsubq_s8(v19, v158);
      v160 = v152;
      v160.i8[0] = v152.i8[7];
      v160.i8[7] = v152.i8[0];
      v152.i8[0] = vmaxvq_s8(v160);
      v158.i8[0] = vminvq_s8(v160);
      v161 = vdupq_lane_s8(*v152.i8, 0);
      v162 = vdupq_lane_s8(*v158.i8, 0);
      v163 = vzip1q_s8(v161, v162);
      v164.i64[0] = 0x808080808080808;
      v164.i64[1] = 0x808080808080808;
      v165 = vsubq_s8(v164, vclsq_s8(v163));
      v166 = vbicq_s8(v165, vceqzq_s8(v163));
      v167 = vpmaxq_s8(v166, v166);
      v166.i8[0] = vmaxvq_s8(v154);
      v165.i8[0] = vminvq_s8(v154);
      v168 = vdupq_lane_s8(*v166.i8, 0);
      v169 = vdupq_lane_s8(*v165.i8, 0);
      v170 = vmaxq_s8(v161, v168);
      v171 = vminq_s8(v162, v169);
      v172 = vzip1q_s8(v168, v169);
      v173 = vsubq_s8(v164, vclsq_s8(v172));
      v174 = vbicq_s8(v173, vceqzq_s8(v172));
      v175 = vpmaxq_s8(v174, v174);
      v174.i8[0] = vmaxvq_s8(v156);
      v173.i8[0] = vminvq_s8(v156);
      v176 = vdupq_lane_s8(*v174.i8, 0);
      v177 = vdupq_lane_s8(*v173.i8, 0);
      v178 = vmaxq_s8(v170, v176);
      v179 = vminq_s8(v171, v177);
      v180 = vzip1q_s8(v176, v177);
      v181 = vsubq_s8(v164, vclsq_s8(v180));
      v182 = vbicq_s8(v181, vceqzq_s8(v180));
      v183 = vpmaxq_s8(v182, v182);
      v182.i8[0] = vmaxvq_s8(v159);
      v181.i8[0] = vminvq_s8(v159);
      v184 = vdupq_lane_s8(*v182.i8, 0);
      v185 = vdupq_lane_s8(*v181.i8, 0);
      v186 = vmaxq_s8(v178, v184);
      v187 = vminq_s8(v179, v185);
      v188 = vzip1q_s8(v184, v185);
      v189 = vbicq_s8(vsubq_s8(v164, vclsq_s8(v188)), vceqzq_s8(v188));
      v190 = vpmaxq_s8(v189, v189);
      v191 = vmaxq_s8(vmaxq_s8(v167, v175), vmaxq_s8(v183, v190));
      v192 = vclzq_s8(vsubq_s8(v186, v187));
      v193 = vsubq_s8(v164, v192);
      v194 = vcgtq_s8(v191, v193);
      v195 = vminq_s8(v193, v191);
      v193.i64[0] = 0x909090909090909;
      v193.i64[1] = 0x909090909090909;
      v196.i64[0] = 0x202020202020202;
      v196.i64[1] = 0x202020202020202;
      v197 = vorrq_s8(vandq_s8(vceqzq_s8(v195), v196), vsubq_s8(vandq_s8(v194, v193), vmvnq_s8(v194)));
      v196.i64[0] = 0x303030303030303;
      v196.i64[1] = 0x303030303030303;
      v198 = vmaxq_s8(vminq_s8(vsubq_s8(v195, v167), v196), 0);
      v199 = vmaxq_s8(vminq_s8(vsubq_s8(v195, v175), v196), 0);
      v200 = vmaxq_s8(vminq_s8(vsubq_s8(v195, v183), v196), 0);
      v201 = vmaxq_s8(vminq_s8(vsubq_s8(v195, v190), v196), 0);
      v202 = vsubq_s8(v195, v198);
      v203 = vsubq_s8(v195, v199);
      v204 = vsubq_s8(v195, v200);
      v205 = vsubq_s8(v195, v201);
      v196.i64[0] = 0x404040404040404;
      v196.i64[1] = 0x404040404040404;
      v206 = vorrq_s8(v197, vbicq_s8(v196, vceqq_s8(vaddq_s8(v201, v200), vnegq_s8(vaddq_s8(v198, v199)))));
      v199.i64[0] = 0x3000300030003;
      v199.i64[1] = 0x3000300030003;
      v207 = vmovl_s8(*v77.i8);
      v196.i64[0] = 0x8000800080008;
      v196.i64[1] = 0x8000800080008;
      v164.i64[0] = 0x2000200020002;
      v164.i64[1] = 0x2000200020002;
      v208 = vdupq_lane_s8(vqmovn_u16(vcgtq_s16(vaddq_s16(vaddq_s16(vaddq_s16(vbicq_s8(vmovl_s8(*v58.i8), vceqzq_s16(vandq_s8(v207, v196))), vandq_s8(vshll_n_s8(*v77.i8, 1uLL), v196)), vaddq_s16(vandq_s8(vceqq_s16(vandq_s8(v207, v199), v164), v196), v148)), v149), vaddw_s8(vaddw_u8(vmlal_s8(vshll_n_s8(vadd_s8(vadd_s8(*v204.i8, *v203.i8), *v205.i8), 3uLL), *v202.i8, 0x707070707070707), vand_s8(vadd_s8(*v206.i8, *v206.i8), 0x808080808080808)), vbic_s8(*v195.i8, vcgt_u8(0x808080808080808, *v206.i8))))), 0);
      v197.i16[0] = vaddlvq_s8(v208);
      v209 = v197.u16[0];
      v11 = v375;
      if (v197.i16[0])
      {
        v210.i64[0] = 0x707070707070707;
        v210.i64[1] = 0x707070707070707;
        v211.i64[0] = -1;
        v211.i64[1] = -1;
        v20.i8[0] = vbslq_s8(v208, vextq_s8(v16, v16, 0xFuLL), v20).u8[0];
        v21 = vbslq_s8(v208, v160, v379);
        v22 = vbslq_s8(v208, v154, v22);
        v23 = vbslq_s8(v208, v156, v23);
        v26 = vbslq_s8(v208, v159, v26);
        v72 = vbslq_s8(v208, v202, v72);
        v73 = vbslq_s8(v208, v203, v376);
        v74 = vbslq_s8(v208, v204, v377);
        v75 = vbslq_s8(v208, v205, v75);
        v65 = vbslq_s8(v208, vandq_s8(vsubq_s8(vshlq_s8(v211, vsubq_s8(v210, v192)), v187), v194), v65);
        v58 = vbslq_s8(v208, v195, v58);
        v77 = vbslq_s8(v208, v206, v77);
      }

      else
      {
        v73 = v376;
        v74 = v377;
        v21 = v379;
      }

      v10 = v373;
      v15 = v374;
      v14 = v372;
      if (v143)
      {
        v212 = v209 == 0;
      }

      else
      {
        v212 = 0;
      }

      v59 = v212;
    }

    v213 = vmovl_s8(*v77.i8);
    v214.i64[0] = 0x8000800080008;
    v214.i64[1] = 0x8000800080008;
    v215.i64[0] = 0x3000300030003;
    v215.i64[1] = 0x3000300030003;
    v216.i64[0] = 0x2000200020002;
    v216.i64[1] = 0x2000200020002;
    if (((7 * v72.i8[0] + 8 * vaddq_s8(vaddq_s8(v74, v73), v75).i8[0] + ((2 * v213.i16[0]) & 8) + vbicq_s8(vmovl_s8(*v58.i8), vceqzq_s16(vandq_s8(v213, v214))).u16[0] + vandq_s8(vceqq_s16(vandq_s8(v213, v215), v216), v214).u16[0]) + 19) >= 0x100)
    {
      *a1 = v10;
      a1[1] = v14;
      a1[2] = v11;
      v150 = 31;
      a1[3] = v15;
      result = 32;
    }

    else
    {
      v217 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v218 = 8 * (a1 & 7);
      if (v218)
      {
        v219 = *v217 & ~(-1 << v218);
      }

      else
      {
        v219 = 0;
      }

      v220 = vextq_s8(v72, 0, 8uLL);
      v221 = vextq_s8(v73, 0, 8uLL);
      v222 = vextq_s8(v74, 0, 8uLL);
      v223 = vextq_s8(v75, 0, 8uLL);
      if (v58.i8[0])
      {
        v224 = (16 * v58.i8[0] + 112) & 0x70;
      }

      else
      {
        v224 = 0;
      }

      *a2 = 32 * v77.i8[0];
      v225 = (v77.i8[0] & 8 | v224 & 0xFFFF807F | (v20.u8[0] << 7)) >> 3;
      v226 = (v225 << v218) | v219;
      if (v218 >= 0x34)
      {
        *v217 = v226;
        v226 = v225 >> (-8 * (a1 & 7u));
      }

      v227 = v218 + 12;
      v228.i64[0] = 0x202020202020202;
      v228.i64[1] = 0x202020202020202;
      v229 = vandq_s8(vbicq_s8(xmmword_29D2F0D30, vmovl_s16(vceqz_s16(vand_s8(*&vmovl_u8(*v77.i8), 0x4000400040004)))), v228);
      v228.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v228.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v230.i64[0] = -1;
      v230.i64[1] = -1;
      v231 = vandq_s8(vshlq_u8(v230, vorrq_s8(v229, v228)), vzip1q_s16(vzip1q_s8(vsubq_s8(v58, v220), vsubq_s8(v58, v221)), vzip1q_s8(vsubq_s8(v58, v222), vsubq_s8(v58, v223))).u32[0]);
      v232 = vmovl_u8(*v229.i8);
      v233 = vpaddq_s16(vshlq_u16(vmovl_u8(*v231.i8), vtrn1q_s16(0, v232)), vmovl_high_u8(v231));
      v234 = vpaddq_s16(v232, vmovl_high_u8(v229));
      v235 = vmovl_u16(*v234.i8);
      v236 = vmovl_high_u16(v234);
      v237 = vpaddq_s32(vshlq_u32(vmovl_u16(*v233.i8), vtrn1q_s32(0, v235)), vshlq_u32(vmovl_high_u16(v233), vtrn1q_s32(0, v236)));
      v238 = vpaddq_s32(v235, v236);
      v239.i64[0] = v237.u32[0];
      v239.i64[1] = v237.u32[1];
      v240 = v239;
      v239.i64[0] = v237.u32[2];
      v239.i64[1] = v237.u32[3];
      v241 = v239;
      v239.i64[0] = v238.u32[0];
      v239.i64[1] = v238.u32[1];
      v242 = v239;
      v239.i64[0] = v238.u32[2];
      v239.i64[1] = v238.u32[3];
      v243 = vpaddq_s64(vshlq_u64(v240, vzip1q_s64(0, v242)), vshlq_u64(v241, vzip1q_s64(0, v239)));
      v244 = vpaddq_s64(v242, v239);
      v245 = (v218 + 12) & 0x3C;
      v246 = (v243.i64[0] << v245) | v226;
      if ((v244.i64[0] + v245) >= 0x40)
      {
        *(v217 + ((v227 >> 3) & 8)) = v246;
        v246 = v243.i64[0] >> -v245;
      }

      v247 = v244.i64[0] + v227;
      v248 = (v244.i64[0] + v227) & 0x3F;
      v249 = v246 | (v243.i64[1] << (v244.i8[0] + v227));
      if ((v248 + v244.i64[1]) >= 0x40)
      {
        *(v217 + ((v247 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v249;
        v249 = v243.i64[1] >> -v248;
        if (!v248)
        {
          v249 = 0;
        }
      }

      v250 = vceqq_s8(v58, v72);
      v251 = v247 + v244.i64[1];
      v252.i64[0] = 0x808080808080808;
      v252.i64[1] = 0x808080808080808;
      v253.i64[0] = -1;
      v253.i64[1] = -1;
      v254 = vandq_s8(vextq_s8(vtstq_s8(v77, v252), 0, 0xFuLL), v58);
      v255.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v255.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v256 = vandq_s8(vshlq_u8(v253, vaddq_s8(v254, v255)), v65);
      v257 = vmovl_u8(*v254.i8);
      v258 = vpaddq_s16(vshlq_u16(vmovl_u8(*v256.i8), vtrn1q_s16(0, v257)), vmovl_high_u8(v256));
      v259 = vpaddq_s16(v257, vmovl_high_u8(v254));
      v260 = vmovl_u16(*v259.i8);
      v261 = vmovl_high_u16(v259);
      v262 = vpaddq_s32(vshlq_u32(vmovl_u16(*v258.i8), vtrn1q_s32(0, v260)), vshlq_u32(vmovl_high_u16(v258), vtrn1q_s32(0, v261)));
      v263 = vpaddq_s32(v260, v261);
      v264.i64[0] = v262.u32[0];
      v264.i64[1] = v262.u32[1];
      v265 = v264;
      v264.i64[0] = v262.u32[2];
      v264.i64[1] = v262.u32[3];
      v266 = v264;
      v264.i64[0] = v263.u32[0];
      v264.i64[1] = v263.u32[1];
      v267 = v264;
      v264.i64[0] = v263.u32[2];
      v264.i64[1] = v263.u32[3];
      v268 = vpaddq_s64(vshlq_u64(v265, vzip1q_s64(0, v267)), vshlq_u64(v266, vzip1q_s64(0, v264)));
      v269 = vpaddq_s64(v267, v264);
      v270 = (v268.i64[0] << v251) | v249;
      if (v269.i64[0] + (v251 & 0x3F) >= 0x40)
      {
        *(v217 + ((v251 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v270;
        v270 = v268.i64[0] >> -(v251 & 0x3F);
        if ((v251 & 0x3F) == 0)
        {
          v270 = 0;
        }
      }

      v271 = vandq_s8(v65, v250);
      v272 = v269.i64[0] + v251;
      v273 = v270 | (v268.i64[1] << v272);
      if ((v272 & 0x3F) + v269.i64[1] >= 0x40)
      {
        *(v217 + ((v272 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v273;
        v273 = v268.i64[1] >> -(v272 & 0x3F);
        if ((v272 & 0x3F) == 0)
        {
          v273 = 0;
        }
      }

      v274 = vceqq_s8(v58, v73);
      v275 = vaddq_s8(v271, v21);
      v276 = v272 + v269.i64[1];
      if (v59)
      {
        v273 |= v60 << v276;
        if ((v276 & 0x3F) >= 0x38)
        {
          *(v217 + ((v276 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v273;
          v273 = v60 >> -(v276 & 0x3F);
        }

        v276 += 8;
      }

      v277 = vandq_s8(v65, v274);
      v278 = vmovl_high_u8(v220);
      v220.i8[0] = 0;
      v279.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v279.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v280.i64[0] = -1;
      v280.i64[1] = -1;
      v281 = vandq_s8(vshlq_u8(v280, vaddq_s8(v220, v279)), v275);
      v282 = vmovl_u8(*v220.i8);
      v283 = vpaddq_s16(vshlq_u16(vmovl_u8(*v281.i8), vtrn1q_s16(0, v282)), vshlq_u16(vmovl_high_u8(v281), vtrn1q_s16(0, v278)));
      v284 = vpaddq_s16(v282, v278);
      v285 = vmovl_u16(*v284.i8);
      v286 = vmovl_high_u16(v284);
      v287 = vpaddq_s32(vshlq_u32(vmovl_u16(*v283.i8), vtrn1q_s32(0, v285)), vshlq_u32(vmovl_high_u16(v283), vtrn1q_s32(0, v286)));
      v288 = vpaddq_s32(v285, v286);
      v289.i64[0] = v287.u32[0];
      v289.i64[1] = v287.u32[1];
      v290 = v289;
      v289.i64[0] = v287.u32[2];
      v289.i64[1] = v287.u32[3];
      v291 = v289;
      v289.i64[0] = v288.u32[0];
      v289.i64[1] = v288.u32[1];
      v292 = v289;
      v289.i64[0] = v288.u32[2];
      v289.i64[1] = v288.u32[3];
      v293 = vpaddq_s64(vshlq_u64(v290, vzip1q_s64(0, v292)), vshlq_u64(v291, vzip1q_s64(0, v289)));
      v294 = vpaddq_s64(v292, v289);
      v295 = (v293.i64[0] << v276) | v273;
      if (v294.i64[0] + (v276 & 0x3F) >= 0x40)
      {
        *(v217 + ((v276 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v295;
        v295 = v293.i64[0] >> -(v276 & 0x3F);
        if ((v276 & 0x3F) == 0)
        {
          v295 = 0;
        }
      }

      v296 = vceqq_s8(v58, v74);
      v297 = vaddq_s8(v22, v277);
      v298 = v294.i64[0] + v276;
      v299 = (v294.i64[0] + v276) & 0x3F;
      v300 = v295 | (v293.i64[1] << v298);
      if ((v298 & 0x3F) + v294.i64[1] >= 0x40)
      {
        *(v217 + ((v298 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v300;
        v300 = v293.i64[1] >> -v299;
        if (!v299)
        {
          v300 = 0;
        }
      }

      v301 = vandq_s8(v65, v296);
      v302 = v298 + v294.i64[1];
      v303.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v303.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v304.i64[0] = -1;
      v304.i64[1] = -1;
      v305 = vandq_s8(vshlq_u8(v304, vaddq_s8(v221, v303)), v297);
      v306 = vmovl_u8(*v221.i8);
      v307 = vmovl_high_u8(v221);
      v308 = vpaddq_s16(vshlq_u16(vmovl_u8(*v305.i8), vtrn1q_s16(0, v306)), vshlq_u16(vmovl_high_u8(v305), vtrn1q_s16(0, v307)));
      v309 = vpaddq_s16(v306, v307);
      v310 = vmovl_u16(*v309.i8);
      v311 = vmovl_high_u16(v309);
      v312 = vpaddq_s32(vshlq_u32(vmovl_u16(*v308.i8), vtrn1q_s32(0, v310)), vshlq_u32(vmovl_high_u16(v308), vtrn1q_s32(0, v311)));
      v313 = vpaddq_s32(v310, v311);
      v314.i64[0] = v312.u32[0];
      v314.i64[1] = v312.u32[1];
      v315 = v314;
      v314.i64[0] = v312.u32[2];
      v314.i64[1] = v312.u32[3];
      v316 = v314;
      v314.i64[0] = v313.u32[0];
      v314.i64[1] = v313.u32[1];
      v317 = v314;
      v314.i64[0] = v313.u32[2];
      v314.i64[1] = v313.u32[3];
      v318 = vpaddq_s64(vshlq_u64(v315, vzip1q_s64(0, v317)), vshlq_u64(v316, vzip1q_s64(0, v314)));
      v319 = vpaddq_s64(v317, v314);
      v320 = (v318.i64[0] << v302) | v300;
      if (v319.i64[0] + (v302 & 0x3F) >= 0x40)
      {
        *(v217 + ((v302 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v320;
        v320 = v318.i64[0] >> -(v302 & 0x3F);
        if ((v302 & 0x3F) == 0)
        {
          v320 = 0;
        }
      }

      v321 = vceqq_s8(v58, v75);
      v322 = vaddq_s8(v23, v301);
      v323 = v319.i64[0] + v302;
      v324 = v320 | (v318.i64[1] << v323);
      if ((v323 & 0x3F) + v319.i64[1] >= 0x40)
      {
        *(v217 + ((v323 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v324;
        v324 = v318.i64[1] >> -(v323 & 0x3F);
        if ((v323 & 0x3F) == 0)
        {
          v324 = 0;
        }
      }

      v325 = vandq_s8(v65, v321);
      v326 = v323 + v319.i64[1];
      v327.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v327.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v328.i64[0] = -1;
      v328.i64[1] = -1;
      v329 = vandq_s8(vshlq_u8(v328, vaddq_s8(v222, v327)), v322);
      v330 = vmovl_u8(*v222.i8);
      v331 = vmovl_high_u8(v222);
      v332 = vpaddq_s16(vshlq_u16(vmovl_u8(*v329.i8), vtrn1q_s16(0, v330)), vshlq_u16(vmovl_high_u8(v329), vtrn1q_s16(0, v331)));
      v333 = vpaddq_s16(v330, v331);
      v334 = vmovl_u16(*v333.i8);
      v335 = vmovl_high_u16(v333);
      v336 = vpaddq_s32(vshlq_u32(vmovl_u16(*v332.i8), vtrn1q_s32(0, v334)), vshlq_u32(vmovl_high_u16(v332), vtrn1q_s32(0, v335)));
      v337 = vpaddq_s32(v334, v335);
      v338.i64[0] = v336.u32[0];
      v338.i64[1] = v336.u32[1];
      v339 = v338;
      v338.i64[0] = v336.u32[2];
      v338.i64[1] = v336.u32[3];
      v340 = v338;
      v338.i64[0] = v337.u32[0];
      v338.i64[1] = v337.u32[1];
      v341 = v338;
      v338.i64[0] = v337.u32[2];
      v338.i64[1] = v337.u32[3];
      v342 = vpaddq_s64(vshlq_u64(v339, vzip1q_s64(0, v341)), vshlq_u64(v340, vzip1q_s64(0, v338)));
      v343 = vpaddq_s64(v341, v338);
      v344 = (v342.i64[0] << v326) | v324;
      if (v343.i64[0] + (v326 & 0x3F) >= 0x40)
      {
        *(v217 + ((v326 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v344;
        v344 = v342.i64[0] >> -(v326 & 0x3F);
        if ((v326 & 0x3F) == 0)
        {
          v344 = 0;
        }
      }

      v345 = vaddq_s8(v26, v325);
      v346 = v343.i64[0] + v326;
      v347 = v344 | (v342.i64[1] << v346);
      if ((v346 & 0x3F) + v343.i64[1] >= 0x40)
      {
        *(v217 + ((v346 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v347;
        v347 = v342.i64[1] >> -(v346 & 0x3F);
        if ((v346 & 0x3F) == 0)
        {
          v347 = 0;
        }
      }

      v348 = v346 + v343.i64[1];
      v349.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v349.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v350.i64[0] = -1;
      v350.i64[1] = -1;
      v351 = vandq_s8(vshlq_u8(v350, vaddq_s8(v223, v349)), v345);
      v352 = vmovl_u8(*v223.i8);
      v353 = vmovl_high_u8(v223);
      v354 = vpaddq_s16(vshlq_u16(vmovl_u8(*v351.i8), vtrn1q_s16(0, v352)), vshlq_u16(vmovl_high_u8(v351), vtrn1q_s16(0, v353)));
      v355 = vpaddq_s16(v352, v353);
      v356 = vmovl_u16(*v355.i8);
      v357 = vmovl_high_u16(v355);
      v358 = vpaddq_s32(vshlq_u32(vmovl_u16(*v354.i8), vtrn1q_s32(0, v356)), vshlq_u32(vmovl_high_u16(v354), vtrn1q_s32(0, v357)));
      v359 = vpaddq_s32(v356, v357);
      v360.i64[0] = v358.u32[0];
      v360.i64[1] = v358.u32[1];
      v361 = v360;
      v360.i64[0] = v358.u32[2];
      v360.i64[1] = v358.u32[3];
      v362 = v360;
      v360.i64[0] = v359.u32[0];
      v360.i64[1] = v359.u32[1];
      v363 = v360;
      v360.i64[0] = v359.u32[2];
      v360.i64[1] = v359.u32[3];
      v364 = vpaddq_s64(vshlq_u64(v361, vzip1q_s64(0, v363)), vshlq_u64(v362, vzip1q_s64(0, v360)));
      v365 = vpaddq_s64(v363, v360);
      v366 = (v364.i64[0] << v348) | v347;
      if (v365.i64[0] + (v348 & 0x3F) > 0x3F)
      {
        *(v217 + ((v348 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v366;
        if ((v348 & 0x3F) != 0)
        {
          v366 = v364.i64[0] >> -(v348 & 0x3F);
        }

        else
        {
          v366 = 0;
        }
      }

      v367 = v365.i64[0] + v348;
      v368 = v366 | (v364.i64[1] << v367);
      if ((v367 & 0x3F) + v365.i64[1] >= 0x40)
      {
        *(v217 + ((v367 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v368;
        v368 = v364.i64[1] >> -(v367 & 0x3F);
        if ((v367 & 0x3F) == 0)
        {
          v368 = 0;
        }
      }

      v369 = v367 + v365.i64[1];
      if ((v369 & 0x3F) != 0)
      {
        *(v217 + ((v369 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v368;
      }

      result = (v369 - v218 + 7) >> 3;
      v150 = *a2 | (result - 1);
    }
  }

  else
  {
    a1->i8[0] = a3->i8[0];
    v150 = 96;
    result = 1;
  }

  *a2 = v150;
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(unint64_t result, uint64_t a2, int16x4_t *a3, char *a4, unsigned int a5, unsigned int a6)
{
  v6 = a6;
  v7 = a5;
  v9 = a3;
  v11 = result;
  if (a5 && a6)
  {
    if (a6 >= 4)
    {
      a6 = 4;
    }

    if (a5 >= 8)
    {
      a5 = 8;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(a3, a4, result, a2, a5, a6);
    v9 = (v9 + result);
  }

  else
  {
    *a4 = 0;
  }

  v12 = 4 * a2;
  v13 = v6 - 4;
  if (v7 && v6 >= 5)
  {
    if (v13 >= 4)
    {
      v14 = 4;
    }

    else
    {
      v14 = v6 - 4;
    }

    if (v7 >= 8)
    {
      v15 = 8;
    }

    else
    {
      v15 = v7;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 1, (v11 + v12), a2, v15, v14);
    v9 = (v9 + result);
  }

  else
  {
    a4[1] = 0;
  }

  v16 = v7 - 8;
  if (v7 >= 9 && v6)
  {
    if (v6 >= 4)
    {
      v17 = 4;
    }

    else
    {
      v17 = v6;
    }

    if (v16 >= 8)
    {
      v18 = 8;
    }

    else
    {
      v18 = v7 - 8;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 2, v11 + 1, a2, v18, v17);
    v9 = (v9 + result);
  }

  else
  {
    a4[2] = 0;
    if (v7 < 9)
    {
      goto LABEL_37;
    }
  }

  if (v6 >= 5)
  {
    if (v13 >= 4)
    {
      v19 = 4;
    }

    else
    {
      v19 = v6 - 4;
    }

    if (v16 >= 8)
    {
      v20 = 8;
    }

    else
    {
      v20 = v7 - 8;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 3, (v11 + v12 + 8), a2, v20, v19);
    v9 = (v9 + result);
    v21 = v6 - 8;
    goto LABEL_38;
  }

LABEL_37:
  a4[3] = 0;
  v21 = v6 - 8;
  if (!v7)
  {
    goto LABEL_46;
  }

LABEL_38:
  if (v6 < 9)
  {
LABEL_46:
    a4[4] = 0;
    v24 = v6 - 12;
    if (!v7)
    {
      goto LABEL_56;
    }

    goto LABEL_47;
  }

  if (v21 >= 4)
  {
    v22 = 4;
  }

  else
  {
    v22 = v21;
  }

  if (v7 >= 8)
  {
    v23 = 8;
  }

  else
  {
    v23 = v7;
  }

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 4, &v11[a2], a2, v23, v22);
  v9 = (v9 + result);
  v24 = v6 - 12;
LABEL_47:
  if (v6 >= 0xD)
  {
    if (v24 >= 4)
    {
      v25 = 4;
    }

    else
    {
      v25 = v24;
    }

    if (v7 >= 8)
    {
      v26 = 8;
    }

    else
    {
      v26 = v7;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 5, (v11 + 12 * a2), a2, v26, v25);
    v9 = (v9 + result);
    if (v7 < 9)
    {
      goto LABEL_65;
    }

    goto LABEL_57;
  }

LABEL_56:
  a4[5] = 0;
  if (v7 < 9)
  {
    goto LABEL_65;
  }

LABEL_57:
  if (v6 >= 9)
  {
    if (v21 >= 4)
    {
      v27 = 4;
    }

    else
    {
      v27 = v21;
    }

    if (v16 >= 8)
    {
      v28 = 8;
    }

    else
    {
      v28 = v7 - 8;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 6, &v11[a2 + 1], a2, v28, v27);
    v9 = (v9 + result);
    goto LABEL_66;
  }

LABEL_65:
  a4[6] = 0;
  if (v7 < 9)
  {
LABEL_76:
    a4[7] = 0;
    return result;
  }

LABEL_66:
  if (v6 < 0xD)
  {
    goto LABEL_76;
  }

  if (v24 >= 4)
  {
    v29 = 4;
  }

  else
  {
    v29 = v24;
  }

  if (v16 >= 8)
  {
    v30 = 8;
  }

  else
  {
    v30 = v7 - 8;
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 7, (v11 + 12 * a2 + 8), a2, v30, v29);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(int32x2_t *a1, uint64_t a2, uint64_t a3, unsigned int a4, double a5, int8x8_t a6)
{
  v10 = 8 * (a3 & 7);
  v11 = a3 & 0xFFFFFFFFFFFFFFF8;
  v12 = v10 + 12;
  v13 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v10;
  if (v10 >= 0x35)
  {
    v13 |= *(v11 + 8) << (-8 * (a3 & 7u));
  }

  v14 = (8 * (a3 & 7)) | 0x100;
  v15 = (a4 >> 5) | (8 * v13);
  v16 = vdupq_n_s8(v15 & 0xF);
  v17.i64[0] = 0x303030303030303;
  v17.i64[1] = 0x303030303030303;
  a6.i32[0] = v15 & 0xF;
  v18 = vand_s8(a6, 0x4000400040004);
  v19 = vandq_s8(v16, v17);
  v20 = vbicq_s8(vdupq_n_s8(((v13 >> 1) & 7) + 1), vceqq_s8(v19, v17));
  v17.i64[0] = 0x202020202020202;
  v17.i64[1] = 0x202020202020202;
  v21 = vandq_s8(vbicq_s8(xmmword_29D2F0D30, vmovl_s16(vceqz_s16(vdup_lane_s16(v18, 0)))), v17);
  if (vmaxvq_s8(v21) < 1)
  {
    v29 = 0;
    v52.i64[0] = -1;
    v52.i64[1] = -1;
    v48 = v20;
    v47 = v20;
    v46 = v20;
    v51.i64[0] = -1;
    v51.i64[1] = -1;
    v45 = v20;
    v50.i64[0] = -1;
    v50.i64[1] = -1;
    v49.i64[0] = -1;
    v49.i64[1] = -1;
  }

  else
  {
    v22 = vmovl_u8(*&vpaddq_s8(v21, v21));
    v23 = vmovl_u16(*&vpaddq_s16(v22, v22));
    v24 = vpaddq_s32(v23, v23).u64[0];
    v25.i64[0] = v24;
    v25.i64[1] = HIDWORD(v24);
    v26 = v25;
    v27 = vaddvq_s64(v25);
    v28 = v27 <= 0x80 && v14 >= v27 + v12;
    v29 = !v28;
    v30 = 0uLL;
    if (v28)
    {
      v31 = vaddq_s64(vzip1q_s64(0, v26), vdupq_n_s64(v12 & 0x3C));
      v32 = (v11 + ((v12 >> 3) & 8));
      v30 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v32, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v31)), vshlq_u64(vdupq_lane_s64(v32->i64[0], 0), vnegq_s64(v31)));
      if (v27 + (v12 & 0x3C) >= 0x81)
      {
        v30 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v32[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v31)), vshlq_u64(vdupq_laneq_s64(v32[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v31))), v30);
      }

      v12 += v27;
    }

    v33 = vzip1_s32(*v23.i8, *&vextq_s8(v23, v23, 8uLL));
    v34.i64[0] = v33.u32[0];
    v34.i64[1] = v33.u32[1];
    v35 = vshlq_u64(v30, vnegq_s64(v34));
    v36 = vuzp1q_s32(vzip1q_s64(v30, v35), vzip2q_s64(v30, v35));
    v37 = vshlq_u32(v36, vnegq_s32((*&v22 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v38 = vuzp1q_s16(vzip1q_s32(v36, v37), vzip2q_s32(v36, v37));
    v39 = vzip1q_s16(v38, vshlq_u16(v38, vnegq_s16(vmovl_u8(vuzp1_s8(*v21.i8, *v16.i8)))));
    *v39.i8 = vmovn_s16(v39);
    v36.i64[0] = 0x101010101010101;
    v36.i64[1] = 0x101010101010101;
    v40 = vshlq_s8(v36, v21);
    v36.i64[0] = -1;
    v36.i64[1] = -1;
    v40.i64[0] = vandq_s8(vaddq_s8(v40, v36), v39).u64[0];
    v41 = vdupq_lane_s8(*v40.i8, 0);
    v42 = vdupq_lane_s8(*v40.i8, 1);
    v43 = vdupq_lane_s8(*v40.i8, 2);
    v44 = vdupq_lane_s8(*v40.i8, 3);
    v45 = vsubq_s8(v20, v41);
    v46 = vsubq_s8(v20, v42);
    v47 = vsubq_s8(v20, v43);
    v48 = vsubq_s8(v20, v44);
    v49 = vceqzq_s8(v41);
    v50 = vceqzq_s8(v42);
    v51 = vceqzq_s8(v43);
    v52 = vceqzq_s8(v44);
  }

  v53.i64[0] = 0x707070707070707;
  v53.i64[1] = 0x707070707070707;
  v54 = 0uLL;
  v55 = vandq_s8(vextq_s8(vcgtq_u8(v16, v53), 0, 0xFuLL), v20);
  v56 = vmovl_u8(*&vpaddq_s8(v55, v55));
  v57 = vmovl_u16(*&vpaddq_s16(v56, v56));
  v58 = vpaddq_s32(v57, v57).u64[0];
  v59.i64[0] = v58;
  v59.i64[1] = HIDWORD(v58);
  v60 = v59;
  v61 = vaddvq_s64(v59);
  v62 = v61 + v12;
  if (v61 <= 0x80 && v14 >= v62)
  {
    v64 = v12 & 0x3F;
    v65 = vaddq_s64(vzip1q_s64(0, v60), vdupq_n_s64(v64));
    v66 = (v11 + 8 * (v12 >> 6));
    v54 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v66, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v65)), vshlq_u64(vdupq_lane_s64(v66->i64[0], 0), vnegq_s64(v65)));
    if (v61 + v64 >= 0x81)
    {
      v54 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v66[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v65)), vshlq_u64(vdupq_laneq_s64(v66[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v65))), v54);
    }

    v12 = v62;
  }

  else
  {
    v29 = 1;
  }

  v67 = vandq_s8(v45, xmmword_29D2F0D40);
  v68 = (a4 >> 5) & 3;
  if (v68 != 2)
  {
    v73 = 0;
    v70 = 0;
    v74 = v12;
    goto LABEL_36;
  }

  v69 = v12 + 4;
  if (v14 < v12 + 4)
  {
    v70 = 0;
    v69 = v12;
LABEL_35:
    v73 = 0;
    v29 = 1;
    v74 = v69;
    goto LABEL_36;
  }

  v75 = (v11 + 8 * (v12 >> 6));
  v76 = *v75 >> v12;
  if ((v12 & 0x3F) >= 0x3D)
  {
    v76 |= v75[1] << -(v12 & 0x3F);
  }

  v70 = (v76 << 28) >> 28;
  v74 = v12 + 8;
  if (v14 < v12 + 8)
  {
    goto LABEL_35;
  }

  v71 = (v11 + 8 * (v69 >> 6));
  v72 = *v71 >> v69;
  if ((v69 & 0x3F) >= 0x3D)
  {
    v72 |= v71[1] << -(v69 & 0x3F);
  }

  v73 = (v72 << 28) >> 28;
LABEL_36:
  v77 = vandq_s8(v46, xmmword_29D2F0D50);
  v67.i8[0] = 0;
  v78 = vmovl_u8(*&vpaddq_s8(v67, v67));
  v79 = vmovl_u16(*&vpaddq_s16(v78, v78));
  v80 = vpaddq_s32(v79, v79).u64[0];
  v81.i64[0] = v80;
  v81.i64[1] = HIDWORD(v80);
  v82 = v81;
  v83 = vaddvq_s64(v81);
  v84 = v83 + v74;
  v85 = 0uLL;
  if (v83 <= 0x80 && v14 >= v84)
  {
    v88 = v74 & 0x3F;
    v89 = vaddq_s64(vzip1q_s64(0, v82), vdupq_n_s64(v88));
    v90 = (v11 + 8 * (v74 >> 6));
    v87 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v90, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v89)), vshlq_u64(vdupq_lane_s64(v90->i64[0], 0), vnegq_s64(v89)));
    if (v83 + v88 >= 0x81)
    {
      v87 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v90[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v89)), vshlq_u64(vdupq_laneq_s64(v90[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v89))), v87);
    }

    v74 = v84;
  }

  else
  {
    v29 = 1;
    v87 = 0uLL;
  }

  v204[1] = v9;
  v204[2] = v8;
  v204[3] = v7;
  v204[4] = v6;
  v91 = vandq_s8(v47, xmmword_29D2F0D50);
  v92 = vmovl_u8(*&vpaddq_s8(v77, v77));
  v93 = vmovl_u16(*&vpaddq_s16(v92, v92));
  v94 = vpaddq_s32(v93, v93).u64[0];
  v95.i64[0] = v94;
  v95.i64[1] = HIDWORD(v94);
  v96 = v95;
  v97 = vaddvq_s64(v95);
  if (v97 >= 0x81)
  {
    v29 = 1;
  }

  else
  {
    v98 = vzip1_s32(*v93.i8, *&vextq_s8(v93, v93, 8uLL));
    v99.i64[0] = v98.u32[0];
    v99.i64[1] = v98.u32[1];
    v100 = v99;
    v101 = *&v92 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL);
    v102 = v97 + v74;
    if (v14 >= v97 + v74)
    {
      v104 = v74 & 0x3F;
      v105 = vaddq_s64(vzip1q_s64(0, v96), vdupq_n_s64(v104));
      v106 = (v11 + 8 * (v74 >> 6));
      v103 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v106, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v105)), vshlq_u64(vdupq_lane_s64(v106->i64[0], 0), vnegq_s64(v105)));
      if (v97 + v104 >= 0x81)
      {
        v103 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v106[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v105)), vshlq_u64(vdupq_laneq_s64(v106[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v105))), v103);
      }

      v74 = v102;
    }

    else
    {
      v103 = 0uLL;
      v29 = 1;
    }

    v107 = vshlq_u64(v103, vnegq_s64(v100));
    v108 = vuzp1q_s32(vzip1q_s64(v103, v107), vzip2q_s64(v103, v107));
    v109 = vshlq_u32(v108, vnegq_s32(v101));
    v110 = vuzp1q_s16(vzip1q_s32(v108, v109), vzip2q_s32(v108, v109));
    v111 = vshlq_u16(v110, vnegq_s16((*&v77 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
    v85 = vuzp1q_s8(vzip1q_s16(v110, v111), vzip2q_s16(v110, v111));
  }

  v112 = vandq_s8(v48, xmmword_29D2F0D50);
  v113 = vmovl_u8(*&vpaddq_s8(v91, v91));
  v114 = vmovl_u16(*&vpaddq_s16(v113, v113));
  v115 = vpaddq_s32(v114, v114).u64[0];
  v116.i64[0] = v115;
  v116.i64[1] = HIDWORD(v115);
  v117 = v116;
  v118 = vaddvq_s64(v116);
  if (v118 >= 0x81)
  {
    v29 = 1;
    v125 = 0uLL;
  }

  else
  {
    v119 = vzip1_s32(*v114.i8, *&vextq_s8(v114, v114, 8uLL));
    v120.i64[0] = v119.u32[0];
    v120.i64[1] = v119.u32[1];
    v121 = v120;
    v122 = *&v113 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL);
    v123 = v118 + v74;
    if (v14 >= v118 + v74)
    {
      v126 = v74 & 0x3F;
      v127 = vaddq_s64(vzip1q_s64(0, v117), vdupq_n_s64(v126));
      v128 = (v11 + 8 * (v74 >> 6));
      v124 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v128, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v127)), vshlq_u64(vdupq_lane_s64(v128->i64[0], 0), vnegq_s64(v127)));
      if (v118 + v126 >= 0x81)
      {
        v124 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v128[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v127)), vshlq_u64(vdupq_laneq_s64(v128[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v127))), v124);
      }

      v74 = v123;
    }

    else
    {
      v124 = 0uLL;
      v29 = 1;
    }

    v129 = vshlq_u64(v124, vnegq_s64(v121));
    v130 = vuzp1q_s32(vzip1q_s64(v124, v129), vzip2q_s64(v124, v129));
    v131 = vshlq_u32(v130, vnegq_s32(v122));
    v132 = vuzp1q_s16(vzip1q_s32(v130, v131), vzip2q_s32(v130, v131));
    v133 = vshlq_u16(v132, vnegq_s16((*&v91 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
    v125 = vuzp1q_s8(vzip1q_s16(v132, v133), vzip2q_s16(v132, v133));
  }

  v134 = vmovl_u8(*&vpaddq_s8(v112, v112));
  v135 = vmovl_u16(*&vpaddq_s16(v134, v134));
  v136 = vpaddq_s32(v135, v135).u64[0];
  v137.i64[0] = v136;
  v137.i64[1] = HIDWORD(v136);
  v138 = v137;
  v139 = vaddvq_s64(v137);
  if (v139 >= 0x81 || v14 < v139 + v74)
  {
    goto LABEL_66;
  }

  v140 = vaddq_s64(vzip1q_s64(0, v138), vdupq_n_s64(v74 & 0x3F));
  v141 = (v11 + 8 * (v74 >> 6));
  v142 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v141, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v140)), vshlq_u64(vdupq_lane_s64(v141->i64[0], 0), vnegq_s64(v140)));
  if (v139 + (v74 & 0x3F) >= 0x81)
  {
    v142 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v141[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v140)), vshlq_u64(vdupq_laneq_s64(v141[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v140))), v142);
  }

  if ((v29 & 1) != 0 || (v143 = (a4 & 0x1F) + 1, 8 * ((a3 & 7) + v143) - (v139 + v74) >= 9))
  {
LABEL_66:
    v143 = 0;
    v204[0] |= 255 << (8 * ((v204 + 7) & 7u));
    a1->i32[0] = 0;
    *(a1->i32 + a2) = 0;
    *(a1->i32 + 2 * a2) = 0;
    *(a1->i32 + 3 * a2) = 0;
  }

  else
  {
    v145 = vzip1_s32(*v57.i8, *&vextq_s8(v57, v57, 8uLL));
    v146 = vzip1_s32(*v79.i8, *&vextq_s8(v79, v79, 8uLL));
    v147.i64[0] = v145.u32[0];
    v147.i64[1] = v145.u32[1];
    v148 = v147;
    v147.i64[0] = v146.u32[0];
    v147.i64[1] = v146.u32[1];
    v149 = vshlq_u64(v54, vnegq_s64(v148));
    v150 = vshlq_u64(v87, vnegq_s64(v147));
    v151 = vuzp1q_s32(vzip1q_s64(v54, v149), vzip2q_s64(v54, v149));
    v152 = vuzp1q_s32(vzip1q_s64(v87, v150), vzip2q_s64(v87, v150));
    v153 = vshlq_u32(v151, vnegq_s32((*&v56 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v154 = vshlq_u32(v152, vnegq_s32((*&v78 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v155 = vuzp1q_s16(vzip1q_s32(v151, v153), vzip2q_s32(v151, v153));
    v156 = vuzp1q_s16(vzip1q_s32(v152, v154), vzip2q_s32(v152, v154));
    v157 = vshlq_u16(v155, vnegq_s16((*&v55 & __PAIR128__(0xF0FFF0FFF0FFF0FFLL, 0xF0FFF0FFF0FFF0FFLL))));
    v158 = vshlq_u16(v156, vnegq_s16((*&v67 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF0000))));
    v159 = vzip2q_s16(v155, v157);
    v160 = vzip1q_s16(v155, v157);
    v157.i64[0] = 0x808080808080808;
    v157.i64[1] = 0x808080808080808;
    v161 = vzip2q_s16(v156, v158);
    v162 = vzip1q_s16(v156, v158);
    v158.i64[0] = 0x808080808080808;
    v158.i64[1] = 0x808080808080808;
    v163 = v13 >> 4;
    v164 = vuzp1q_s8(v160, v159);
    v159.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v159.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v165 = vuzp1q_s8(v162, v161);
    v161.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v161.i64[1] = 0xF8F8F8F8F8F8F8F8;
    *v150.i8 = vzip1_s32(*v135.i8, *&vextq_s8(v135, v135, 8uLL));
    v166.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v166.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v167.i64[0] = 0x808080808080808;
    v167.i64[1] = 0x808080808080808;
    v168 = vshlq_s8(v164, vsubq_s8(v157, v55));
    v169 = vaddq_s8(v67, v161);
    v170 = vshlq_s8(v165, vsubq_s8(v158, v67));
    v147.i64[0] = v150.u32[0];
    v147.i64[1] = v150.u32[1];
    v171 = vshlq_s8(v168, vaddq_s8(v55, v159));
    v172 = vshlq_s8(v170, v169);
    v173 = vshlq_s8(vshlq_s8(v85, vsubq_s8(v158, v77)), vaddq_s8(v77, v161));
    v174 = vshlq_s8(vshlq_s8(v125, vsubq_s8(v158, v91)), vaddq_s8(v91, v161));
    v175 = vshlq_u64(v142, vnegq_s64(v147));
    v176 = vuzp1q_s32(vzip1q_s64(v142, v175), vzip2q_s64(v142, v175));
    v177 = vshlq_u32(v176, vnegq_s32((*&v134 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v178 = vuzp1q_s16(vzip1q_s32(v176, v177), vzip2q_s32(v176, v177));
    v179 = vshlq_u16(v178, vnegq_s16((*&v112 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
    v180 = vshlq_s8(vshlq_s8(vuzp1q_s8(vzip1q_s16(v178, v179), vzip2q_s16(v178, v179)), vsubq_s8(v167, v112)), vaddq_s8(v112, v166));
    if (v68 == 2)
    {
      v181.i64[0] = 0xFFFF0000FFFF0000;
      v181.i64[1] = 0xFFFF0000FFFF0000;
      v182 = vmlaq_s8(vandq_s8(vdupq_n_s8(v73), v181), vdupq_n_s8(v70), xmmword_29D2F0D60);
      v172 = vaddq_s8(v172, v182);
      v173 = vaddq_s8(vaddq_s8(vdupq_n_s8(2 * v73), v182), v173);
      v174 = vaddq_s8(vaddq_s8(vdupq_n_s8(4 * v70), v182), v174);
      v180 = vaddq_s8(vaddq_s8(vdupq_n_s8(4 * v70 + 2 * v73), v182), v180);
    }

    v183 = vdupq_n_s8(v163).u64[0];
    v184 = vaddq_s8(vandq_s8(v171, v49), v172);
    v185 = vdupq_lane_s8(*v171.i8, 0);
    v186 = vsubq_s8(v184, vandq_s8(v185, v49));
    v187 = vsubq_s8(v173, vandq_s8(v185, v50));
    v188 = vsubq_s8(v174, vandq_s8(v185, v51));
    v189 = vsubq_s8(v180, vandq_s8(v185, v52));
    v190.i64[0] = 0x101010101010101;
    v190.i64[1] = 0x101010101010101;
    if (vaddlvq_s8(vceqq_s8(v19, v190)))
    {
      v191 = vandq_s8(v16, v190);
      v192 = vnegq_s8(v191);
      v193 = v186;
      v193.i8[0] = v186.i8[7];
      v193.i8[7] = v186.i8[0];
      v194 = vorrq_s8(vandq_s8(v193, v192), vandq_s8(v186, vceqzq_s8(v191)));
      v195 = vaddq_s8(vandq_s8(vqtbl1q_s8(v194, xmmword_29D2F0D70), v192), v194);
      v186.i64[0] = vaddq_s8(vandq_s8(vqtbl1q_s8(v195, xmmword_29D2F0D80), v192), v195).u64[0];
      v196 = vaddq_s8(vandq_s8(vqtbl1q_s8(v187, xmmword_29D2F0D90), v192), v187);
      v187.i64[0] = vaddq_s8(vandq_s8(vqtbl1q_s8(v196, xmmword_29D2F0DA0), v192), v196).u64[0];
      v197 = vaddq_s8(vandq_s8(vqtbl1q_s8(v188, xmmword_29D2F0DB0), v192), v188);
      v188.i64[0] = vaddq_s8(vandq_s8(vqtbl1q_s8(v197, xmmword_29D2F0DC0), v192), v197).u64[0];
      v198 = vaddq_s8(vandq_s8(vqtbl1q_s8(v189, xmmword_29D2F0DD0), v192), v189);
      v189.i64[0] = vaddq_s8(vandq_s8(vqtbl1q_s8(v198, xmmword_29D2F0DE0), v192), v198).u64[0];
    }

    v199 = vadd_s8(v183, *v186.i8);
    v200 = vadd_s8(*v187.i8, v183);
    *a1 = vzip1_s32(v199, v200);
    *(a1 + a2) = vzip2_s32(v199, v200);
    v201 = (a1 + 2 * a2);
    v202 = vadd_s8(*v188.i8, v183);
    v203 = vadd_s8(*v189.i8, v183);
    *v201 = vzip1_s32(v202, v203);
    *(v201 + a2) = vzip2_s32(v202, v203);
  }

  return v143;
}

int32x2_t *AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(int32x2_t *result, uint64_t a2, int32x2_t *a3, char *a4, unsigned int a5, unsigned int a6)
{
  v6 = 0;
  v7 = 2 * a2;
  if (a5 && a6)
  {
    v8 = *(result + a2);
    v9 = vzip1_s32(*result, v8);
    v10 = vzip2_s32(*result, v8);
    v11 = *(result + 2 * a2);
    v12 = *(result + v7 + a2);
    *a3 = v9;
    a3[1] = v10;
    a3[2] = vzip1_s32(v11, v12);
    a3[3] = vzip2_s32(v11, v12);
    a3 += 4;
    v6 = 31;
  }

  v13 = 0;
  *a4 = v6;
  if (a5 >= 5 && a6)
  {
    v14 = result[1];
    v15 = *(result + a2 + 8);
    v16 = vzip1_s32(v14, v15);
    v17 = vzip2_s32(v14, v15);
    v18 = (result + v7 + 8);
    v19 = *(v18 + a2);
    v20 = vzip1_s32(*v18, v19);
    v21 = vzip2_s32(*v18, v19);
    *a3 = v16;
    a3[1] = v17;
    a3[2] = v20;
    a3[3] = v21;
    a3 += 4;
    v13 = 31;
  }

  v22 = 0;
  v23 = 4 * a2;
  a4[1] = v13;
  if (a5 && a6 >= 5)
  {
    v24 = *(result + 4 * a2);
    v25 = *(result + v23 + a2);
    v26 = vzip1_s32(v24, v25);
    v27 = vzip2_s32(v24, v25);
    v28 = (result + v23 + v7);
    v29 = *(v28 + a2);
    v30 = vzip1_s32(*v28, v29);
    v31 = vzip2_s32(*v28, v29);
    *a3 = v26;
    a3[1] = v27;
    a3[2] = v30;
    a3[3] = v31;
    a3 += 4;
    v22 = 31;
  }

  v32 = 0;
  a4[2] = v22;
  if (a5 >= 5 && a6 >= 5)
  {
    v33 = (result + v23 + 8);
    v34 = *(v33 + a2);
    v35 = vzip1_s32(*v33, v34);
    v36 = vzip2_s32(*v33, v34);
    v37 = (v33 + v7);
    v38 = *(v37 + a2);
    v39 = vzip1_s32(*v37, v38);
    v40 = vzip2_s32(*v37, v38);
    *a3 = v35;
    a3[1] = v36;
    a3[2] = v39;
    a3[3] = v40;
    a3 += 4;
    v32 = 31;
  }

  v41 = 0;
  a4[3] = v32;
  if (a5 >= 9 && a6)
  {
    v42 = result[2];
    v43 = *(result + a2 + 16);
    v44 = vzip1_s32(v42, v43);
    v45 = vzip2_s32(v42, v43);
    v46 = (result + v7 + 16);
    v47 = *(v46 + a2);
    v48 = vzip1_s32(*v46, v47);
    v49 = vzip2_s32(*v46, v47);
    *a3 = v44;
    a3[1] = v45;
    a3[2] = v48;
    a3[3] = v49;
    a3 += 4;
    v41 = 31;
  }

  v50 = 0;
  a4[4] = v41;
  if (a5 >= 0xD && a6)
  {
    v51 = result[3];
    v52 = *(result + a2 + 24);
    v53 = vzip1_s32(v51, v52);
    v54 = vzip2_s32(v51, v52);
    v55 = (result + v7 + 24);
    v56 = *(v55 + a2);
    v57 = vzip1_s32(*v55, v56);
    v58 = vzip2_s32(*v55, v56);
    *a3 = v53;
    a3[1] = v54;
    a3[2] = v57;
    a3[3] = v58;
    a3 += 4;
    v50 = 31;
  }

  v59 = 0;
  a4[5] = v50;
  if (a5 >= 9 && a6 >= 5)
  {
    v60 = (result + v23 + 16);
    v61 = *(v60 + a2);
    v62 = vzip1_s32(*v60, v61);
    v63 = vzip2_s32(*v60, v61);
    v64 = (v60 + v7);
    v65 = *(v64 + a2);
    v66 = vzip1_s32(*v64, v65);
    v67 = vzip2_s32(*v64, v65);
    *a3 = v62;
    a3[1] = v63;
    a3[2] = v66;
    a3[3] = v67;
    a3 += 4;
    v59 = 31;
  }

  v68 = 0;
  a4[6] = v59;
  if (a5 >= 0xD && a6 >= 5)
  {
    v69 = (result + v23);
    v70 = v69[3];
    v69 += 3;
    v71 = *(v69 + a2);
    v72 = vzip1_s32(v70, v71);
    v73 = vzip2_s32(v70, v71);
    v74 = (v69 + v7);
    v75 = *(v74 + a2);
    v76 = vzip1_s32(*v74, v75);
    v77 = vzip2_s32(*v74, v75);
    *a3 = v72;
    a3[1] = v73;
    a3[2] = v76;
    a3[3] = v77;
    v68 = 31;
  }

  a4[7] = v68;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(uint64_t a1, uint64_t a2, unsigned __int8 *a3, double a4, int32x2_t a5)
{
  v8 = *a3;
  if (v8 == 96)
  {
    a4 = COERCE_DOUBLE(vdup_lane_s8(*a2, 0));
    *a1 = a4;
    *(a1 + 32) = a4;
    *(a1 + 64) = a4;
    *(a1 + 96) = a4;
    v9 = 1;
  }

  else if (v8 == 31)
  {
    v10 = *a2;
    a5 = *(a2 + 8);
    v11 = (a2 + 16);
    v49 = vld2_f32(v11);
    *a1 = vzip1_s32(*a2, a5);
    a4 = COERCE_DOUBLE(vzip2_s32(v10, a5));
    *(a1 + 32) = a4;
    *(a1 + 64) = v49.val[0];
    *(a1 + 96) = v49.val[1];
    v9 = 32;
  }

  else if (*a3)
  {
    v9 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(a1, 32, a2, v8, a4, a5);
  }

  else
  {
    v9 = 0;
    *a1 = 0;
    *(a1 + 32) = 0;
    *(a1 + 64) = 0;
    *(a1 + 96) = 0;
  }

  v12 = a2 + v9;
  v13 = a3[1];
  if (a3[1])
  {
    if (v13 == 96)
    {
      a4 = COERCE_DOUBLE(vdup_lane_s8(*v12, 0));
      *(a1 + 8) = a4;
      *(a1 + 40) = a4;
      *(a1 + 72) = a4;
      *(a1 + 104) = a4;
      v16 = 1;
    }

    else if (v13 == 31)
    {
      v14 = *v12;
      a5 = *(v12 + 8);
      v15 = (v12 + 16);
      v50 = vld2_f32(v15);
      *(a1 + 8) = vzip1_s32(*v12, a5);
      a4 = COERCE_DOUBLE(vzip2_s32(v14, a5));
      *(a1 + 40) = a4;
      *(a1 + 72) = v50.val[0];
      *(a1 + 104) = v50.val[1];
      v16 = 32;
    }

    else
    {
      v16 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((a1 + 8), 32, v12, v13, a4, a5);
    }
  }

  else
  {
    v16 = 0;
    *(a1 + 8) = 0;
    *(a1 + 40) = 0;
    *(a1 + 72) = 0;
    *(a1 + 104) = 0;
  }

  v17 = v12 + v16;
  v18 = a3[2];
  if (a3[2])
  {
    if (v18 == 96)
    {
      a4 = COERCE_DOUBLE(vdup_lane_s8(*v17, 0));
      *(a1 + 128) = a4;
      *(a1 + 160) = a4;
      *(a1 + 192) = a4;
      *(a1 + 224) = a4;
      v21 = 1;
    }

    else if (v18 == 31)
    {
      v19 = *v17;
      a5 = *(v17 + 8);
      v20 = (v17 + 16);
      v51 = vld2_f32(v20);
      *(a1 + 128) = vzip1_s32(*v17, a5);
      a4 = COERCE_DOUBLE(vzip2_s32(v19, a5));
      *(a1 + 160) = a4;
      *(a1 + 192) = v51.val[0];
      *(a1 + 224) = v51.val[1];
      v21 = 32;
    }

    else
    {
      v21 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((a1 + 128), 32, v17, v18, a4, a5);
    }
  }

  else
  {
    v21 = 0;
    *(a1 + 128) = 0;
    *(a1 + 160) = 0;
    *(a1 + 192) = 0;
    *(a1 + 224) = 0;
  }

  v22 = v17 + v21;
  v23 = a3[3];
  if (a3[3])
  {
    if (v23 == 96)
    {
      a4 = COERCE_DOUBLE(vdup_lane_s8(*v22, 0));
      *(a1 + 136) = a4;
      *(a1 + 168) = a4;
      *(a1 + 200) = a4;
      *(a1 + 232) = a4;
      v26 = 1;
    }

    else if (v23 == 31)
    {
      v24 = *v22;
      a5 = *(v22 + 8);
      v25 = (v22 + 16);
      v52 = vld2_f32(v25);
      *(a1 + 136) = vzip1_s32(*v22, a5);
      a4 = COERCE_DOUBLE(vzip2_s32(v24, a5));
      *(a1 + 168) = a4;
      *(a1 + 200) = v52.val[0];
      *(a1 + 232) = v52.val[1];
      v26 = 32;
    }

    else
    {
      v26 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((a1 + 136), 32, v22, v23, a4, a5);
    }
  }

  else
  {
    v26 = 0;
    *(a1 + 136) = 0;
    *(a1 + 168) = 0;
    *(a1 + 200) = 0;
    *(a1 + 232) = 0;
  }

  v27 = v22 + v26;
  v28 = a3[4];
  if (a3[4])
  {
    if (v28 == 96)
    {
      a4 = COERCE_DOUBLE(vdup_lane_s8(*v27, 0));
      *(a1 + 16) = a4;
      *(a1 + 48) = a4;
      *(a1 + 80) = a4;
      *(a1 + 112) = a4;
      v31 = 1;
    }

    else if (v28 == 31)
    {
      v29 = *v27;
      a5 = *(v27 + 8);
      v30 = (v27 + 16);
      v53 = vld2_f32(v30);
      *(a1 + 16) = vzip1_s32(*v27, a5);
      a4 = COERCE_DOUBLE(vzip2_s32(v29, a5));
      *(a1 + 48) = a4;
      *(a1 + 80) = v53.val[0];
      *(a1 + 112) = v53.val[1];
      v31 = 32;
    }

    else
    {
      v31 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((a1 + 16), 32, v27, v28, a4, a5);
    }
  }

  else
  {
    v31 = 0;
    *(a1 + 16) = 0;
    *(a1 + 48) = 0;
    *(a1 + 80) = 0;
    *(a1 + 112) = 0;
  }

  v32 = v27 + v31;
  v33 = a3[5];
  if (a3[5])
  {
    if (v33 == 96)
    {
      a4 = COERCE_DOUBLE(vdup_lane_s8(*v32, 0));
      *(a1 + 24) = a4;
      *(a1 + 56) = a4;
      *(a1 + 88) = a4;
      *(a1 + 120) = a4;
      v36 = 1;
    }

    else if (v33 == 31)
    {
      v34 = *v32;
      a5 = *(v32 + 8);
      v35 = (v32 + 16);
      v54 = vld2_f32(v35);
      *(a1 + 24) = vzip1_s32(*v32, a5);
      a4 = COERCE_DOUBLE(vzip2_s32(v34, a5));
      *(a1 + 56) = a4;
      *(a1 + 88) = v54.val[0];
      *(a1 + 120) = v54.val[1];
      v36 = 32;
    }

    else
    {
      v36 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((a1 + 24), 32, v32, v33, a4, a5);
    }
  }

  else
  {
    v36 = 0;
    *(a1 + 24) = 0;
    *(a1 + 56) = 0;
    *(a1 + 88) = 0;
    *(a1 + 120) = 0;
  }

  v37 = v32 + v36;
  v38 = a3[6];
  if (!a3[6])
  {
    result = 0;
    *(a1 + 144) = 0;
    *(a1 + 176) = 0;
    *(a1 + 208) = 0;
    *(a1 + 240) = 0;
    v42 = a3[7];
    if (a3[7])
    {
      goto LABEL_51;
    }

    goto LABEL_56;
  }

  if (v38 == 96)
  {
    a4 = COERCE_DOUBLE(vdup_lane_s8(*v37, 0));
    *(a1 + 144) = a4;
    *(a1 + 176) = a4;
    *(a1 + 208) = a4;
    *(a1 + 240) = a4;
    result = 1;
    v42 = a3[7];
    if (!a3[7])
    {
      goto LABEL_56;
    }

    goto LABEL_51;
  }

  if (v38 != 31)
  {
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((a1 + 144), 32, v37, v38, a4, a5);
    v42 = a3[7];
    if (a3[7])
    {
      goto LABEL_51;
    }

LABEL_56:
    *(a1 + 152) = 0;
    *(a1 + 184) = 0;
    *(a1 + 216) = 0;
    *(a1 + 248) = 0;
    return result;
  }

  v39 = *v37;
  a5 = *(v37 + 8);
  v40 = (v37 + 16);
  v55 = vld2_f32(v40);
  *(a1 + 144) = vzip1_s32(*v37, a5);
  a4 = COERCE_DOUBLE(vzip2_s32(v39, a5));
  *(a1 + 176) = a4;
  *(a1 + 208) = v55.val[0];
  *(a1 + 240) = v55.val[1];
  result = 32;
  v42 = a3[7];
  if (!a3[7])
  {
    goto LABEL_56;
  }

LABEL_51:
  v43 = (v37 + result);
  if (v42 == 96)
  {
    v47 = vdup_lane_s8(*v43, 0);
    *(a1 + 152) = v47;
    *(a1 + 184) = v47;
    *(a1 + 216) = v47;
    *(a1 + 248) = v47;
  }

  else if (v42 == 31)
  {
    v44 = *v43;
    v45 = v43[1];
    v46 = &v43[2];
    v56 = vld2_f32(v46);
    *(a1 + 152) = vzip1_s32(*v43, v45);
    *(a1 + 184) = vzip2_s32(v44, v45);
    *(a1 + 216) = v56.val[0];
    *(a1 + 248) = v56.val[1];
  }

  else
  {

    return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((a1 + 152), 32, v43, v42, a4, a5);
  }

  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(int8x16_t *a1, char *a2, int32x2_t *a3, uint64_t a4, unsigned int a5, unsigned int a6, double a7, double a8, int8x8_t a9)
{
  v11 = *(a3 + a4);
  *v12.i8 = vzip1_s32(*a3, v11);
  *v13.i8 = vzip2_s32(*a3, v11);
  v12.i64[1] = v12.i64[0];
  v13.i64[1] = v13.i64[0];
  v14 = (a3 + 2 * a4);
  v15 = *v14;
  v16 = *(v14 + a4);
  *v17.i8 = vzip1_s32(*v14, v16);
  *v18.i8 = vzip2_s32(*v14, v16);
  v17.i64[1] = v17.i64[0];
  v18.i64[1] = v18.i64[0];
  v19 = vdupq_lane_s8(*v12.i8, 0);
  v20 = vsubq_s8(v12, v19);
  v21 = vsubq_s8(v13, v19);
  v22 = vsubq_s8(v17, v19);
  v15.i8[0] = vmaxvq_s8(v20);
  a9.i8[0] = vminvq_s8(v20);
  v23 = vdupq_lane_s8(v15, 0);
  v24 = vdupq_lane_s8(a9, 0);
  v25 = vsubq_s8(v18, v19);
  v26 = vzip1q_s8(v23, v24);
  v27.i64[0] = 0x808080808080808;
  v27.i64[1] = 0x808080808080808;
  v28 = vsubq_s8(v27, vclsq_s8(v26));
  v29 = vbicq_s8(v28, vceqzq_s8(v26));
  v30 = vpmaxq_s8(v29, v29);
  v28.i8[0] = vmaxvq_s8(v21);
  v9.i8[0] = vminvq_s8(v21);
  v31 = vdupq_lane_s8(*v28.i8, 0);
  v32 = vdupq_lane_s8(v9, 0);
  v33 = vmaxq_s8(v23, v31);
  v34 = vminq_s8(v24, v32);
  v35 = vzip1q_s8(v31, v32);
  v36 = vsubq_s8(v27, vclsq_s8(v35));
  v37 = vbicq_s8(v36, vceqzq_s8(v35));
  v38 = vpmaxq_s8(v37, v37);
  v36.i8[0] = vmaxvq_s8(v22);
  v32.i8[0] = vminvq_s8(v22);
  v39 = vdupq_lane_s8(*v36.i8, 0);
  v40 = vdupq_lane_s8(*v32.i8, 0);
  v41 = vmaxq_s8(v33, v39);
  v42 = vminq_s8(v34, v40);
  v43 = vzip1q_s8(v39, v40);
  v44 = vsubq_s8(v27, vclsq_s8(v43));
  v45 = vbicq_s8(v44, vceqzq_s8(v43));
  v46 = vpmaxq_s8(v45, v45);
  v44.i8[0] = vmaxvq_s8(v25);
  v10.i8[0] = vminvq_s8(v25);
  v47 = vdupq_lane_s8(*v44.i8, 0);
  v48 = vdupq_lane_s8(v10, 0);
  v49 = vmaxq_s8(v41, v47);
  v50 = vminq_s8(v42, v48);
  v51 = vzip1q_s8(v47, v48);
  v52 = vbicq_s8(vsubq_s8(v27, vclsq_s8(v51)), vceqzq_s8(v51));
  v53 = vpmaxq_s8(v52, v52);
  v54 = vmaxq_s8(vmaxq_s8(v30, v38), vmaxq_s8(v46, v53));
  v55 = vclzq_s8(vsubq_s8(v49, v50));
  v56 = vsubq_s8(v27, v55);
  v57 = vminq_s8(v56, v54);
  if (vmaxvq_s8(v57))
  {
    v58 = 0;
    v59 = 0;
    v60 = 0;
    v61.i64[0] = -1;
    v61.i64[1] = -1;
    v62.i64[0] = 0x707070707070707;
    v62.i64[1] = 0x707070707070707;
    v63 = vcgtq_s8(v54, v56);
    v64 = vandq_s8(vsubq_s8(vshlq_s8(v61, vsubq_s8(v62, v55)), v50), v63);
    v65 = vandq_s8(v63, v27);
    v63.i64[0] = 0x303030303030303;
    v63.i64[1] = 0x303030303030303;
    v66 = vorrq_s8(vandq_s8(vceqzq_s8(v57), v63), v65);
    v67 = vmaxq_s8(vminq_s8(vsubq_s8(v57, v30), v63), 0);
    v68 = vmaxq_s8(vminq_s8(vsubq_s8(v57, v38), v63), 0);
    v69 = vmaxq_s8(vminq_s8(vsubq_s8(v57, v46), v63), 0);
    v70 = vmaxq_s8(vminq_s8(vsubq_s8(v57, v53), v63), 0);
    v71 = vsubq_s8(v57, v67);
    v72 = vsubq_s8(v57, v68);
    v73 = vsubq_s8(v57, v69);
    v74 = vsubq_s8(v57, v70);
    v75 = vceqq_s8(vaddq_s8(v70, v69), vnegq_s8(vaddq_s8(v67, v68)));
    v68.i64[0] = 0x404040404040404;
    v68.i64[1] = 0x404040404040404;
    v76 = vorrq_s8(vbicq_s8(v68, v75), v66);
    if (a5 >= 2 && a6 >= 2)
    {
      v372 = v64;
      v77 = v12.u8[1] - v12.u8[0];
      v78 = v77 << 28 >> 28;
      v79 = v12.u8[2] - v12.u8[0];
      v80.i64[0] = 0xFFFF0000FFFF0000;
      v80.i64[1] = 0xFFFF0000FFFF0000;
      v81 = vmlaq_s8(vandq_s8(vdupq_n_s8(v79 << 28 >> 28), v80), vdupq_n_s8(v78), xmmword_29D2F0D60);
      v82 = vsubq_s8(v20, v81);
      v83 = v79 << 28 >> 27;
      v84 = v77 << 28 >> 26;
      v85 = vsubq_s8(vaddq_s8(vdupq_n_s8(-v84), v22), v81);
      v86 = vaddq_s8(vdupq_n_s8(-(v83 + v84)), v25);
      v87 = vsubq_s8(v86, v81);
      v86.i8[0] = vmaxvq_s8(v82);
      v368 = vsubq_s8(vaddq_s8(vdupq_n_s8(-v83), v21), v81);
      v370 = v82;
      v81.i8[0] = vminvq_s8(v82);
      v88 = vdupq_lane_s8(*v86.i8, 0);
      v89 = vdupq_lane_s8(*v81.i8, 0);
      v90 = vzip1q_s8(v88, v89);
      v91.i64[0] = 0x808080808080808;
      v91.i64[1] = 0x808080808080808;
      v92 = vsubq_s8(v91, vclsq_s8(v90));
      v93 = vbicq_s8(v92, vceqzq_s8(v90));
      v94 = vpmaxq_s8(v93, v93);
      v92.i8[0] = vmaxvq_s8(v368);
      v60.i8[0] = vminvq_s8(v368);
      v95 = vdupq_lane_s8(*v92.i8, 0);
      v96 = vdupq_lane_s8(v60, 0);
      v97 = vmaxq_s8(v88, v95);
      v98 = vminq_s8(v89, v96);
      v99 = vzip1q_s8(v95, v96);
      v100 = vbicq_s8(vsubq_s8(v91, vclsq_s8(v99)), vceqzq_s8(v99));
      v101 = vpmaxq_s8(v100, v100);
      v100.i8[0] = vmaxvq_s8(v85);
      v365 = v85;
      v61.i8[0] = vminvq_s8(v85);
      v102 = vdupq_lane_s8(*v100.i8, 0);
      v103 = vdupq_lane_s8(*v61.i8, 0);
      v104 = vmaxq_s8(v97, v102);
      v105 = vminq_s8(v98, v103);
      v106 = vzip1q_s8(v102, v103);
      v107 = vsubq_s8(v91, vclsq_s8(v106));
      v108 = vbicq_s8(v107, vceqzq_s8(v106));
      v109 = vpmaxq_s8(v108, v108);
      v108.i8[0] = vmaxvq_s8(v87);
      v107.i8[0] = vminvq_s8(v87);
      v110 = vdupq_lane_s8(*v108.i8, 0);
      v111 = vdupq_lane_s8(*v107.i8, 0);
      v112 = vmaxq_s8(v104, v110);
      v113 = vminq_s8(v105, v111);
      v114 = vzip1q_s8(v110, v111);
      v115 = vbicq_s8(vsubq_s8(v91, vclsq_s8(v114)), vceqzq_s8(v114));
      v116 = vpmaxq_s8(v115, v115);
      v117 = vmaxq_s8(vmaxq_s8(v94, v101), vmaxq_s8(v109, v116));
      v118 = vclzq_s8(vsubq_s8(v112, v113));
      v119 = vsubq_s8(v91, v118);
      v120 = vcgtq_s8(v117, v119);
      v121 = vminq_s8(v119, v117);
      v91.i64[0] = 0x202020202020202;
      v91.i64[1] = 0x202020202020202;
      v117.i64[0] = 0xA0A0A0A0A0A0A0ALL;
      v117.i64[1] = 0xA0A0A0A0A0A0A0ALL;
      v122 = v25;
      v123 = vbslq_s8(v120, v117, v91);
      v117.i64[0] = 0x101010101010101;
      v117.i64[1] = 0x101010101010101;
      v124 = v21;
      v125 = v74;
      v126 = vmaxq_s8(v121, v117);
      v91.i64[0] = 0x303030303030303;
      v91.i64[1] = 0x303030303030303;
      v127 = vmaxq_s8(vminq_s8(vsubq_s8(v126, v94), v91), 0);
      v128 = vmaxq_s8(vminq_s8(vsubq_s8(v126, v101), v91), 0);
      v129 = vmaxq_s8(vminq_s8(vsubq_s8(v126, v109), v91), 0);
      v130 = vmaxq_s8(vminq_s8(vsubq_s8(v126, v116), v91), 0);
      v131 = vsubq_s8(v126, v127);
      v132 = vsubq_s8(v126, v128);
      v133 = vsubq_s8(v126, v129);
      v134 = vsubq_s8(v126, v130);
      v135 = vceqq_s8(vaddq_s8(v130, v129), vnegq_s8(vaddq_s8(v127, v128)));
      v127.i64[0] = 0x404040404040404;
      v127.i64[1] = 0x404040404040404;
      v136 = vorrq_s8(vbicq_s8(v127, v135), v123);
      v91.i64[0] = 0x8000800080008;
      v91.i64[1] = 0x8000800080008;
      v137 = vshll_n_s8(vadd_s8(vadd_s8(*v73.i8, *v72.i8), *v125.i8), 3uLL);
      v129.i64[0] = 0x2000200020002;
      v129.i64[1] = 0x2000200020002;
      v138 = vdupq_lane_s8(vqmovn_u16(vcgtq_s16(vaddq_s16(vaddq_s16(vaddw_s8(vmlal_s8(v137, *v71.i8, 0x707070707070707), vbic_s8(*v57.i8, vcgt_u8(0x808080808080808, *v76.i8))), (*&vshll_n_u8(*v76.i8, 1uLL) & __PAIR128__(0xFFE9FFE9FFE9FFE9, 0xFFE9FFE9FFE9FFE9))), vandq_s8(vceqq_s16((*&vmovl_u8(*v76.i8) & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3)), v129), v91)), vaddq_s16(vaddw_u8(vaddw_u8(vmlal_s8(vshll_n_s8(vadd_s8(vadd_s8(*v133.i8, *v132.i8), *v134.i8), 3uLL), *v131.i8, 0x707070707070707), vand_s8(vadd_s8(*v136.i8, *v136.i8), 0x808080808080808)), vbic_s8(*v126.i8, vcgt_u8(0x808080808080808, *v136.i8))), v91))), 0);
      v135.i16[0] = vaddlvq_s8(v138);
      v139 = v78 & 0xF | (16 * v79);
      v140 = v135.u16[0];
      if (v135.i16[0])
      {
        v141.i64[0] = 0x707070707070707;
        v141.i64[1] = 0x707070707070707;
        v142.i64[0] = -1;
        v142.i64[1] = -1;
        v364 = vbslq_s8(v138, v370, v20);
        v367 = vbslq_s8(v138, v368, v124);
        v369 = vbslq_s8(v138, v365, v22);
        v125 = vbslq_s8(v138, v134, v125);
        v371 = vbslq_s8(v138, v87, v122);
        v372 = vbslq_s8(v138, vandq_s8(vsubq_s8(vshlq_s8(v142, vsubq_s8(v141, v118)), v113), v120), v372);
        v57 = vbslq_s8(v138, v126, v57);
        v76 = vbslq_s8(v138, v136, v76);
        v362 = vbslq_s8(v138, v131, v71);
        v363 = vbslq_s8(v138, v132, v72);
        v143 = vmull_s8(*v362.i8, 0x707070707070707);
        v366 = vbslq_s8(v138, v133, v73);
        v137 = vshll_n_s8(vadd_s8(vadd_s8(*v366.i8, *v363.i8), *v125.i8), 3uLL);
      }

      else
      {
        v363 = v72;
        v364 = v20;
        v366 = v73;
        v367 = v124;
        v369 = v22;
        v371 = v122;
        v362 = v71;
        v143 = vmull_s8(*v71.i8, 0x707070707070707);
      }

      v74 = v125;
      v59 = v139;
      v145 = vsubq_s8(v12, vqtbl1q_s8(v12, xmmword_29D2F0DF0));
      v146 = v13;
      v146.i8[7] = v12.i8[7];
      v147 = vsubq_s8(v13, vqtbl1q_s8(v146, xmmword_29D2F0E00));
      v148 = v17;
      v148.i8[7] = v12.i8[7];
      v149 = vsubq_s8(v17, vqtbl1q_s8(v148, xmmword_29D2F0E10));
      v150 = v18;
      v150.i8[7] = v12.i8[7];
      v151 = vqtbl1q_s8(v150, xmmword_29D2F0E20);
      v152 = vsubq_s8(v18, v151);
      v153 = v145;
      v153.i8[0] = v145.i8[7];
      v153.i8[7] = v145.i8[0];
      v145.i8[0] = vmaxvq_s8(v153);
      v151.i8[0] = vminvq_s8(v153);
      v154 = vdupq_lane_s8(*v145.i8, 0);
      v155 = vdupq_lane_s8(*v151.i8, 0);
      v156 = vzip1q_s8(v154, v155);
      v157.i64[0] = 0x808080808080808;
      v157.i64[1] = 0x808080808080808;
      v158 = vbicq_s8(vsubq_s8(v157, vclsq_s8(v156)), vceqzq_s8(v156));
      v159 = vpmaxq_s8(v158, v158);
      v158.i8[0] = vmaxvq_s8(v147);
      v138.i8[0] = vminvq_s8(v147);
      v160 = vdupq_lane_s8(*v158.i8, 0);
      v161 = vdupq_lane_s8(*v138.i8, 0);
      v162 = vmaxq_s8(v154, v160);
      v163 = vminq_s8(v155, v161);
      v164 = vzip1q_s8(v160, v161);
      v165 = vbicq_s8(vsubq_s8(v157, vclsq_s8(v164)), vceqzq_s8(v164));
      v166 = vpmaxq_s8(v165, v165);
      v165.i8[0] = vmaxvq_s8(v149);
      v120.i8[0] = vminvq_s8(v149);
      v167 = vdupq_lane_s8(*v165.i8, 0);
      v168 = vdupq_lane_s8(*v120.i8, 0);
      v169 = vmaxq_s8(v162, v167);
      v170 = vminq_s8(v163, v168);
      v171 = vzip1q_s8(v167, v168);
      v172 = vsubq_s8(v157, vclsq_s8(v171));
      v173 = vbicq_s8(v172, vceqzq_s8(v171));
      v174 = vpmaxq_s8(v173, v173);
      v173.i8[0] = vmaxvq_s8(v152);
      v172.i8[0] = vminvq_s8(v152);
      v175 = vdupq_lane_s8(*v173.i8, 0);
      v176 = vdupq_lane_s8(*v172.i8, 0);
      v177 = vminq_s8(v170, v176);
      v178 = vzip1q_s8(v175, v176);
      v179 = vbicq_s8(vsubq_s8(v157, vclsq_s8(v178)), vceqzq_s8(v178));
      v180 = vpmaxq_s8(v179, v179);
      v181 = vmaxq_s8(vmaxq_s8(v159, v166), vmaxq_s8(v174, v180));
      v182 = vclzq_s8(vsubq_s8(vmaxq_s8(v169, v175), v177));
      v183 = vsubq_s8(v157, v182);
      v184 = vcgtq_s8(v181, v183);
      v185 = vminq_s8(v183, v181);
      v183.i64[0] = 0x909090909090909;
      v183.i64[1] = 0x909090909090909;
      v157.i64[0] = 0x202020202020202;
      v157.i64[1] = 0x202020202020202;
      v186 = vorrq_s8(vandq_s8(vceqzq_s8(v185), v157), vsubq_s8(vandq_s8(v184, v183), vmvnq_s8(v184)));
      v187.i64[0] = 0x303030303030303;
      v187.i64[1] = 0x303030303030303;
      v188 = vmaxq_s8(vminq_s8(vsubq_s8(v185, v159), v187), 0);
      v189 = vmaxq_s8(vminq_s8(vsubq_s8(v185, v166), v187), 0);
      v190 = vmaxq_s8(vminq_s8(vsubq_s8(v185, v174), v187), 0);
      v191 = vmaxq_s8(vminq_s8(vsubq_s8(v185, v180), v187), 0);
      v192 = vsubq_s8(v185, v188);
      v193 = vsubq_s8(v185, v189);
      v194 = vsubq_s8(v185, v190);
      v195 = vsubq_s8(v185, v191);
      v157.i64[0] = 0x404040404040404;
      v157.i64[1] = 0x404040404040404;
      v196 = vorrq_s8(v186, vbicq_s8(v157, vceqq_s8(vaddq_s8(v191, v190), vnegq_s8(vaddq_s8(v188, v189)))));
      v190.i64[0] = 0x3000300030003;
      v190.i64[1] = 0x3000300030003;
      v197 = vmovl_s8(*v76.i8);
      v157.i64[0] = 0x8000800080008;
      v157.i64[1] = 0x8000800080008;
      v187.i64[0] = 0x2000200020002;
      v187.i64[1] = 0x2000200020002;
      v198 = vdupq_lane_s8(vqmovn_u16(vcgtq_s16(vaddq_s16(vaddq_s16(vaddq_s16(vbicq_s8(vmovl_s8(*v57.i8), vceqzq_s16(vandq_s8(v197, v157))), vandq_s8(vshll_n_s8(*v76.i8, 1uLL), v157)), vaddq_s16(vandq_s8(vceqq_s16(vandq_s8(v197, v190), v187), v157), v143)), v137), vaddw_s8(vaddw_u8(vmlal_s8(vshll_n_s8(vadd_s8(vadd_s8(*v194.i8, *v193.i8), *v195.i8), 3uLL), *v192.i8, 0x707070707070707), vand_s8(vadd_s8(*v196.i8, *v196.i8), 0x808080808080808)), vbic_s8(*v185.i8, vcgt_u8(0x808080808080808, *v196.i8))))), 0);
      v186.i16[0] = vaddlvq_s8(v198);
      v199 = v186.u16[0];
      if (v186.i16[0])
      {
        v200.i64[0] = 0x707070707070707;
        v200.i64[1] = 0x707070707070707;
        v201 = vsubq_s8(v200, v182);
        v202.i64[0] = -1;
        v202.i64[1] = -1;
        v19.i8[0] = vbslq_s8(v198, vextq_s8(v12, v12, 0xFuLL), v19).u8[0];
        v20 = vbslq_s8(v198, v153, v364);
        v21 = vbslq_s8(v198, v147, v367);
        v22 = vbslq_s8(v198, v149, v369);
        v25 = vbslq_s8(v198, v152, v371);
        v71 = vbslq_s8(v198, v192, v362);
        v72 = vbslq_s8(v198, v193, v363);
        v73 = vbslq_s8(v198, v194, v366);
        v74 = vbslq_s8(v198, v195, v74);
        v64 = vbslq_s8(v198, vandq_s8(vsubq_s8(vshlq_s8(v202, v201), v177), v184), v372);
        v57 = vbslq_s8(v198, v185, v57);
        v76 = vbslq_s8(v198, v196, v76);
      }

      else
      {
        v22 = v369;
        v25 = v371;
        v64 = v372;
        v73 = v366;
        v21 = v367;
        v72 = v363;
        v20 = v364;
        v71 = v362;
      }

      if (v140)
      {
        v203 = v199 == 0;
      }

      else
      {
        v203 = 0;
      }

      v58 = v203;
    }

    v204 = vmovl_s8(*v76.i8);
    v205.i64[0] = 0x8000800080008;
    v205.i64[1] = 0x8000800080008;
    v206.i64[0] = 0x3000300030003;
    v206.i64[1] = 0x3000300030003;
    v207.i64[0] = 0x2000200020002;
    v207.i64[1] = 0x2000200020002;
    if (((7 * v71.i8[0] + 8 * vaddq_s8(vaddq_s8(v73, v72), v74).i8[0] + ((2 * v204.i16[0]) & 8) + vbicq_s8(vmovl_s8(*v57.i8), vceqzq_s16(vandq_s8(v204, v205))).u16[0] + vandq_s8(vceqq_s16(vandq_s8(v204, v206), v207), v205).u16[0]) + 19) >= 0x100)
    {
      v12.i64[1] = v13.i64[0];
      v17.i64[1] = v18.i64[0];
      *a1 = v12;
      a1[1] = v17;
      v211 = 31;
      result = 32;
    }

    else
    {
      v208 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v209 = 8 * (a1 & 7);
      if (v209)
      {
        v210 = *v208 & ~(-1 << v209);
      }

      else
      {
        v210 = 0;
      }

      v212 = vextq_s8(v71, 0, 8uLL);
      v213 = vextq_s8(v72, 0, 8uLL);
      v214 = vextq_s8(v73, 0, 8uLL);
      v215 = vextq_s8(v74, 0, 8uLL);
      if (v57.i8[0])
      {
        v216 = (16 * v57.i8[0] + 112) & 0x70;
      }

      else
      {
        v216 = 0;
      }

      *a2 = 32 * v76.i8[0];
      v217 = (v76.i8[0] & 8 | v216 & 0xFFFF807F | (v19.u8[0] << 7)) >> 3;
      v218 = (v217 << v209) | v210;
      if (v209 >= 0x34)
      {
        *v208 = v218;
        v218 = v217 >> (-8 * (a1 & 7u));
      }

      v219 = v209 + 12;
      v220.i64[0] = 0x202020202020202;
      v220.i64[1] = 0x202020202020202;
      v221 = vandq_s8(vbicq_s8(xmmword_29D2F0D30, vmovl_s16(vceqz_s16(vand_s8(*&vmovl_u8(*v76.i8), 0x4000400040004)))), v220);
      v220.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v220.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v222.i64[0] = -1;
      v222.i64[1] = -1;
      v223 = vandq_s8(vshlq_u8(v222, vorrq_s8(v221, v220)), vzip1q_s16(vzip1q_s8(vsubq_s8(v57, v212), vsubq_s8(v57, v213)), vzip1q_s8(vsubq_s8(v57, v214), vsubq_s8(v57, v215))).u32[0]);
      v224 = vmovl_u8(*v221.i8);
      v225 = vpaddq_s16(vshlq_u16(vmovl_u8(*v223.i8), vtrn1q_s16(0, v224)), vmovl_high_u8(v223));
      v226 = vpaddq_s16(v224, vmovl_high_u8(v221));
      v227 = vmovl_u16(*v226.i8);
      v228 = vmovl_high_u16(v226);
      v229 = vpaddq_s32(vshlq_u32(vmovl_u16(*v225.i8), vtrn1q_s32(0, v227)), vshlq_u32(vmovl_high_u16(v225), vtrn1q_s32(0, v228)));
      v230 = vpaddq_s32(v227, v228);
      v231.i64[0] = v229.u32[0];
      v231.i64[1] = v229.u32[1];
      v232 = v231;
      v231.i64[0] = v229.u32[2];
      v231.i64[1] = v229.u32[3];
      v233 = v231;
      v231.i64[0] = v230.u32[0];
      v231.i64[1] = v230.u32[1];
      v234 = v231;
      v231.i64[0] = v230.u32[2];
      v231.i64[1] = v230.u32[3];
      v235 = vpaddq_s64(vshlq_u64(v232, vzip1q_s64(0, v234)), vshlq_u64(v233, vzip1q_s64(0, v231)));
      v236 = vpaddq_s64(v234, v231);
      v237 = (v209 + 12) & 0x3C;
      v238 = (v235.i64[0] << v237) | v218;
      if ((v236.i64[0] + v237) >= 0x40)
      {
        *(v208 + ((v219 >> 3) & 8)) = v238;
        v238 = v235.i64[0] >> -v237;
      }

      v239 = v236.i64[0] + v219;
      v240 = (v236.i64[0] + v219) & 0x3F;
      v241 = v238 | (v235.i64[1] << (v236.i8[0] + v219));
      if ((v240 + v236.i64[1]) >= 0x40)
      {
        *(v208 + ((v239 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v241;
        v241 = v235.i64[1] >> -v240;
        if (!v240)
        {
          v241 = 0;
        }
      }

      v242 = vceqq_s8(v57, v71);
      v243 = v239 + v236.i64[1];
      v244.i64[0] = 0x808080808080808;
      v244.i64[1] = 0x808080808080808;
      v245.i64[0] = -1;
      v245.i64[1] = -1;
      v246 = vandq_s8(vextq_s8(vtstq_s8(v76, v244), 0, 0xFuLL), v57);
      v247.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v247.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v248 = vandq_s8(vshlq_u8(v245, vaddq_s8(v246, v247)), v64);
      v249 = vmovl_u8(*v246.i8);
      v250 = vpaddq_s16(vshlq_u16(vmovl_u8(*v248.i8), vtrn1q_s16(0, v249)), vmovl_high_u8(v248));
      v251 = vpaddq_s16(v249, vmovl_high_u8(v246));
      v252 = vmovl_u16(*v251.i8);
      v253 = vmovl_high_u16(v251);
      v254 = vpaddq_s32(vshlq_u32(vmovl_u16(*v250.i8), vtrn1q_s32(0, v252)), vshlq_u32(vmovl_high_u16(v250), vtrn1q_s32(0, v253)));
      v255 = vpaddq_s32(v252, v253);
      v256.i64[0] = v254.u32[0];
      v256.i64[1] = v254.u32[1];
      v257 = v256;
      v256.i64[0] = v254.u32[2];
      v256.i64[1] = v254.u32[3];
      v258 = v256;
      v256.i64[0] = v255.u32[0];
      v256.i64[1] = v255.u32[1];
      v259 = v256;
      v256.i64[0] = v255.u32[2];
      v256.i64[1] = v255.u32[3];
      v260 = vpaddq_s64(vshlq_u64(v257, vzip1q_s64(0, v259)), vshlq_u64(v258, vzip1q_s64(0, v256)));
      v261 = vpaddq_s64(v259, v256);
      v262 = (v260.i64[0] << v243) | v241;
      if (v261.i64[0] + (v243 & 0x3F) >= 0x40)
      {
        *(v208 + ((v243 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v262;
        v262 = v260.i64[0] >> -(v243 & 0x3F);
        if ((v243 & 0x3F) == 0)
        {
          v262 = 0;
        }
      }

      v263 = vandq_s8(v64, v242);
      v264 = v261.i64[0] + v243;
      v265 = v262 | (v260.i64[1] << v264);
      if ((v264 & 0x3F) + v261.i64[1] >= 0x40)
      {
        *(v208 + ((v264 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v265;
        v265 = v260.i64[1] >> -(v264 & 0x3F);
        if ((v264 & 0x3F) == 0)
        {
          v265 = 0;
        }
      }

      v266 = vceqq_s8(v57, v72);
      v267 = vaddq_s8(v263, v20);
      v268 = v264 + v261.i64[1];
      if (v58)
      {
        v265 |= v59 << v268;
        if ((v268 & 0x3F) >= 0x38)
        {
          *(v208 + ((v268 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v265;
          v265 = v59 >> -(v268 & 0x3F);
        }

        v268 += 8;
      }

      v269 = vandq_s8(v64, v266);
      v270 = vmovl_high_u8(v212);
      v212.i8[0] = 0;
      v271.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v271.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v272.i64[0] = -1;
      v272.i64[1] = -1;
      v273 = vandq_s8(vshlq_u8(v272, vaddq_s8(v212, v271)), v267);
      v274 = vmovl_u8(*v212.i8);
      v275 = vpaddq_s16(vshlq_u16(vmovl_u8(*v273.i8), vtrn1q_s16(0, v274)), vshlq_u16(vmovl_high_u8(v273), vtrn1q_s16(0, v270)));
      v276 = vpaddq_s16(v274, v270);
      v277 = vmovl_u16(*v276.i8);
      v278 = vmovl_high_u16(v276);
      v279 = vpaddq_s32(vshlq_u32(vmovl_u16(*v275.i8), vtrn1q_s32(0, v277)), vshlq_u32(vmovl_high_u16(v275), vtrn1q_s32(0, v278)));
      v280 = vpaddq_s32(v277, v278);
      v281.i64[0] = v279.u32[0];
      v281.i64[1] = v279.u32[1];
      v282 = v281;
      v281.i64[0] = v279.u32[2];
      v281.i64[1] = v279.u32[3];
      v283 = v281;
      v281.i64[0] = v280.u32[0];
      v281.i64[1] = v280.u32[1];
      v284 = v281;
      v281.i64[0] = v280.u32[2];
      v281.i64[1] = v280.u32[3];
      v285 = vpaddq_s64(vshlq_u64(v282, vzip1q_s64(0, v284)), vshlq_u64(v283, vzip1q_s64(0, v281)));
      v286 = vpaddq_s64(v284, v281);
      v287 = (v285.i64[0] << v268) | v265;
      if (v286.i64[0] + (v268 & 0x3F) >= 0x40)
      {
        *(v208 + ((v268 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v287;
        v287 = v285.i64[0] >> -(v268 & 0x3F);
        if ((v268 & 0x3F) == 0)
        {
          v287 = 0;
        }
      }

      v288 = vceqq_s8(v57, v73);
      v289 = vaddq_s8(v21, v269);
      v290 = v286.i64[0] + v268;
      v291 = (v286.i64[0] + v268) & 0x3F;
      v292 = v287 | (v285.i64[1] << v290);
      if ((v290 & 0x3F) + v286.i64[1] >= 0x40)
      {
        *(v208 + ((v290 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v292;
        v292 = v285.i64[1] >> -v291;
        if (!v291)
        {
          v292 = 0;
        }
      }

      v293 = vandq_s8(v64, v288);
      v294 = v290 + v286.i64[1];
      v295.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v295.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v296.i64[0] = -1;
      v296.i64[1] = -1;
      v297 = vandq_s8(vshlq_u8(v296, vaddq_s8(v213, v295)), v289);
      v298 = vmovl_u8(*v213.i8);
      v299 = vmovl_high_u8(v213);
      v300 = vpaddq_s16(vshlq_u16(vmovl_u8(*v297.i8), vtrn1q_s16(0, v298)), vshlq_u16(vmovl_high_u8(v297), vtrn1q_s16(0, v299)));
      v301 = vpaddq_s16(v298, v299);
      v302 = vmovl_u16(*v301.i8);
      v303 = vmovl_high_u16(v301);
      v304 = vpaddq_s32(vshlq_u32(vmovl_u16(*v300.i8), vtrn1q_s32(0, v302)), vshlq_u32(vmovl_high_u16(v300), vtrn1q_s32(0, v303)));
      v305 = vpaddq_s32(v302, v303);
      v306.i64[0] = v304.u32[0];
      v306.i64[1] = v304.u32[1];
      v307 = v306;
      v306.i64[0] = v304.u32[2];
      v306.i64[1] = v304.u32[3];
      v308 = v306;
      v306.i64[0] = v305.u32[0];
      v306.i64[1] = v305.u32[1];
      v309 = v306;
      v306.i64[0] = v305.u32[2];
      v306.i64[1] = v305.u32[3];
      v310 = vpaddq_s64(vshlq_u64(v307, vzip1q_s64(0, v309)), vshlq_u64(v308, vzip1q_s64(0, v306)));
      v311 = vpaddq_s64(v309, v306);
      v312 = (v310.i64[0] << v294) | v292;
      if (v311.i64[0] + (v294 & 0x3F) >= 0x40)
      {
        *(v208 + ((v294 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v312;
        v312 = v310.i64[0] >> -(v294 & 0x3F);
        if ((v294 & 0x3F) == 0)
        {
          v312 = 0;
        }
      }

      v313 = vceqq_s8(v57, v74);
      v314 = vaddq_s8(v22, v293);
      v315 = v311.i64[0] + v294;
      v316 = v312 | (v310.i64[1] << v315);
      if ((v315 & 0x3F) + v311.i64[1] >= 0x40)
      {
        *(v208 + ((v315 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v316;
        v316 = v310.i64[1] >> -(v315 & 0x3F);
        if ((v315 & 0x3F) == 0)
        {
          v316 = 0;
        }
      }

      v317 = vandq_s8(v64, v313);
      v318 = v315 + v311.i64[1];
      v319.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v319.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v320.i64[0] = -1;
      v320.i64[1] = -1;
      v321 = vandq_s8(vshlq_u8(v320, vaddq_s8(v214, v319)), v314);
      v322 = vmovl_u8(*v214.i8);
      v323 = vmovl_high_u8(v214);
      v324 = vpaddq_s16(vshlq_u16(vmovl_u8(*v321.i8), vtrn1q_s16(0, v322)), vshlq_u16(vmovl_high_u8(v321), vtrn1q_s16(0, v323)));
      v325 = vpaddq_s16(v322, v323);
      v326 = vmovl_u16(*v325.i8);
      v327 = vmovl_high_u16(v325);
      v328 = vpaddq_s32(vshlq_u32(vmovl_u16(*v324.i8), vtrn1q_s32(0, v326)), vshlq_u32(vmovl_high_u16(v324), vtrn1q_s32(0, v327)));
      v329 = vpaddq_s32(v326, v327);
      v330.i64[0] = v328.u32[0];
      v330.i64[1] = v328.u32[1];
      v331 = v330;
      v330.i64[0] = v328.u32[2];
      v330.i64[1] = v328.u32[3];
      v332 = v330;
      v330.i64[0] = v329.u32[0];
      v330.i64[1] = v329.u32[1];
      v333 = v330;
      v330.i64[0] = v329.u32[2];
      v330.i64[1] = v329.u32[3];
      v334 = vpaddq_s64(vshlq_u64(v331, vzip1q_s64(0, v333)), vshlq_u64(v332, vzip1q_s64(0, v330)));
      v335 = vpaddq_s64(v333, v330);
      v336 = (v334.i64[0] << v318) | v316;
      if (v335.i64[0] + (v318 & 0x3F) >= 0x40)
      {
        *(v208 + ((v318 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v336;
        v336 = v334.i64[0] >> -(v318 & 0x3F);
        if ((v318 & 0x3F) == 0)
        {
          v336 = 0;
        }
      }

      v337 = vaddq_s8(v25, v317);
      v338 = v335.i64[0] + v318;
      v339 = v336 | (v334.i64[1] << v338);
      if ((v338 & 0x3F) + v335.i64[1] >= 0x40)
      {
        *(v208 + ((v338 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v339;
        v339 = v334.i64[1] >> -(v338 & 0x3F);
        if ((v338 & 0x3F) == 0)
        {
          v339 = 0;
        }
      }

      v340 = v338 + v335.i64[1];
      v341.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v341.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v342.i64[0] = -1;
      v342.i64[1] = -1;
      v343 = vandq_s8(vshlq_u8(v342, vaddq_s8(v215, v341)), v337);
      v344 = vmovl_u8(*v215.i8);
      v345 = vmovl_high_u8(v215);
      v346 = vpaddq_s16(vshlq_u16(vmovl_u8(*v343.i8), vtrn1q_s16(0, v344)), vshlq_u16(vmovl_high_u8(v343), vtrn1q_s16(0, v345)));
      v347 = vpaddq_s16(v344, v345);
      v348 = vmovl_u16(*v347.i8);
      v349 = vmovl_high_u16(v347);
      v350 = vpaddq_s32(vshlq_u32(vmovl_u16(*v346.i8), vtrn1q_s32(0, v348)), vshlq_u32(vmovl_high_u16(v346), vtrn1q_s32(0, v349)));
      v351 = vpaddq_s32(v348, v349);
      v352.i64[0] = v350.u32[0];
      v352.i64[1] = v350.u32[1];
      v353 = v352;
      v352.i64[0] = v350.u32[2];
      v352.i64[1] = v350.u32[3];
      v354 = v352;
      v352.i64[0] = v351.u32[0];
      v352.i64[1] = v351.u32[1];
      v355 = v352;
      v352.i64[0] = v351.u32[2];
      v352.i64[1] = v351.u32[3];
      v356 = vpaddq_s64(vshlq_u64(v353, vzip1q_s64(0, v355)), vshlq_u64(v354, vzip1q_s64(0, v352)));
      v357 = vpaddq_s64(v355, v352);
      v358 = (v356.i64[0] << v340) | v339;
      if (v357.i64[0] + (v340 & 0x3F) > 0x3F)
      {
        *(v208 + ((v340 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v358;
        if ((v340 & 0x3F) != 0)
        {
          v358 = v356.i64[0] >> -(v340 & 0x3F);
        }

        else
        {
          v358 = 0;
        }
      }

      v359 = v357.i64[0] + v340;
      v360 = v358 | (v356.i64[1] << v359);
      if ((v359 & 0x3F) + v357.i64[1] >= 0x40)
      {
        *(v208 + ((v359 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v360;
        v360 = v356.i64[1] >> -(v359 & 0x3F);
        if ((v359 & 0x3F) == 0)
        {
          v360 = 0;
        }
      }

      v361 = v359 + v357.i64[1];
      if ((v361 & 0x3F) != 0)
      {
        *(v208 + ((v361 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v360;
      }

      result = (v361 - v209 + 7) >> 3;
      v211 = *a2 | (result - 1);
    }

    *a2 = v211;
  }

  else
  {
    a1->i8[0] = a3->i8[0];
    result = 1;
    *a2 = 96;
  }

  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(unint64_t result, uint64_t a2, int8x16_t *a3, char *a4, unsigned int a5, unsigned int a6, double a7, double a8, int8x8_t a9)
{
  v9 = a6;
  v10 = a5;
  v12 = a3;
  v14 = result;
  if (a5 && a6)
  {
    if (a6 >= 4)
    {
      a6 = 4;
    }

    if (a5 >= 4)
    {
      a5 = 4;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(a3, a4, result, a2, a5, a6, a7, a8, a9);
    v12 = (v12 + result);
  }

  else
  {
    *a4 = 0;
  }

  v15 = v10 - 4;
  if (v10 >= 5 && v9)
  {
    if (v9 >= 4)
    {
      v16 = 4;
    }

    else
    {
      v16 = v9;
    }

    if (v15 >= 4)
    {
      v17 = 4;
    }

    else
    {
      v17 = v10 - 4;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v12, a4 + 1, v14 + 1, a2, v17, v16, a7, a8, a9);
    v12 = (v12 + result);
  }

  else
  {
    a4[1] = 0;
  }

  v18 = 4 * a2;
  v19 = v9 - 4;
  if (v10 && v9 >= 5)
  {
    if (v19 >= 4)
    {
      v20 = 4;
    }

    else
    {
      v20 = v9 - 4;
    }

    if (v10 >= 4)
    {
      v21 = 4;
    }

    else
    {
      v21 = v10;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v12, a4 + 2, (v14 + v18), a2, v21, v20, a7, a8, a9);
    v12 = (v12 + result);
    if (v10 < 5)
    {
      goto LABEL_38;
    }
  }

  else
  {
    a4[2] = 0;
    if (v10 < 5)
    {
      goto LABEL_38;
    }
  }

  if (v9 >= 5)
  {
    if (v19 >= 4)
    {
      v22 = 4;
    }

    else
    {
      v22 = v9 - 4;
    }

    if (v15 >= 4)
    {
      v23 = 4;
    }

    else
    {
      v23 = v10 - 4;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v12, a4 + 3, (v14 + v18 + 8), a2, v23, v22, a7, a8, a9);
    v12 = (v12 + result);
    goto LABEL_39;
  }

LABEL_38:
  a4[3] = 0;
LABEL_39:
  v24 = v10 - 8;
  if (v10 >= 9 && v9)
  {
    if (v9 >= 4)
    {
      v25 = 4;
    }

    else
    {
      v25 = v9;
    }

    if (v24 >= 4)
    {
      v26 = 4;
    }

    else
    {
      v26 = v10 - 8;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v12, a4 + 4, v14 + 2, a2, v26, v25, a7, a8, a9);
    v12 = (v12 + result);
  }

  else
  {
    a4[4] = 0;
  }

  v27 = v10 - 12;
  if (v10 >= 0xD && v9)
  {
    if (v9 >= 4)
    {
      v28 = 4;
    }

    else
    {
      v28 = v9;
    }

    if (v27 >= 4)
    {
      v29 = 4;
    }

    else
    {
      v29 = v10 - 12;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v12, a4 + 5, v14 + 3, a2, v29, v28, a7, a8, a9);
    v12 = (v12 + result);
  }

  else
  {
    a4[5] = 0;
    if (v10 < 9)
    {
      goto LABEL_68;
    }
  }

  if (v9 >= 5)
  {
    if (v19 >= 4)
    {
      v30 = 4;
    }

    else
    {
      v30 = v9 - 4;
    }

    if (v24 >= 4)
    {
      v31 = 4;
    }

    else
    {
      v31 = v10 - 8;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v12, a4 + 6, (v14 + v18 + 16), a2, v31, v30, a7, a8, a9);
    v12 = (v12 + result);
    if (v10 < 0xD)
    {
      goto LABEL_79;
    }

    goto LABEL_69;
  }

LABEL_68:
  a4[6] = 0;
  if (v10 < 0xD)
  {
LABEL_79:
    a4[7] = 0;
    return result;
  }

LABEL_69:
  if (v9 < 5)
  {
    goto LABEL_79;
  }

  if (v19 >= 4)
  {
    v32 = 4;
  }

  else
  {
    v32 = v9 - 4;
  }

  if (v27 >= 4)
  {
    v33 = 4;
  }

  else
  {
    v33 = v10 - 12;
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v12, a4 + 7, (v14 + v18 + 24), a2, v33, v32, a7, a8, a9);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(int8x16_t *a1, uint64_t a2, uint64_t a3, unsigned int a4, double a5, int8x8_t a6)
{
  v10 = 8 * (a3 & 7);
  v11 = a3 & 0xFFFFFFFFFFFFFFF8;
  v12 = v10 + 12;
  v13 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v10;
  if (v10 >= 0x35)
  {
    v13 |= *(v11 + 8) << (-8 * (a3 & 7u));
  }

  v14 = (8 * (a3 & 7)) | 0x100;
  v15 = (a4 >> 5) | (8 * v13);
  v16 = vdupq_n_s8(v15 & 0xF);
  v17.i64[0] = 0x303030303030303;
  v17.i64[1] = 0x303030303030303;
  a6.i32[0] = v15 & 0xF;
  v18 = vand_s8(a6, 0x4000400040004);
  v19 = vandq_s8(v16, v17);
  v20 = vbicq_s8(vdupq_n_s8(((v13 >> 1) & 7) + 1), vceqq_s8(v19, v17));
  v17.i64[0] = 0x202020202020202;
  v17.i64[1] = 0x202020202020202;
  v21 = vandq_s8(vbicq_s8(xmmword_29D2F0D30, vmovl_s16(vceqz_s16(vdup_lane_s16(v18, 0)))), v17);
  if (vmaxvq_s8(v21) < 1)
  {
    v29 = 0;
    v52.i64[0] = -1;
    v52.i64[1] = -1;
    v48 = v20;
    v47 = v20;
    v46 = v20;
    v51.i64[0] = -1;
    v51.i64[1] = -1;
    v45 = v20;
    v50.i64[0] = -1;
    v50.i64[1] = -1;
    v49.i64[0] = -1;
    v49.i64[1] = -1;
  }

  else
  {
    v22 = vmovl_u8(*&vpaddq_s8(v21, v21));
    v23 = vmovl_u16(*&vpaddq_s16(v22, v22));
    v24 = vpaddq_s32(v23, v23).u64[0];
    v25.i64[0] = v24;
    v25.i64[1] = HIDWORD(v24);
    v26 = v25;
    v27 = vaddvq_s64(v25);
    v28 = v27 <= 0x80 && v14 >= v27 + v12;
    v29 = !v28;
    v30 = 0uLL;
    if (v28)
    {
      v31 = vaddq_s64(vzip1q_s64(0, v26), vdupq_n_s64(v12 & 0x3C));
      v32 = (v11 + ((v12 >> 3) & 8));
      v30 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v32, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v31)), vshlq_u64(vdupq_lane_s64(v32->i64[0], 0), vnegq_s64(v31)));
      if (v27 + (v12 & 0x3C) >= 0x81)
      {
        v30 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v32[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v31)), vshlq_u64(vdupq_laneq_s64(v32[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v31))), v30);
      }

      v12 += v27;
    }

    v33 = vzip1_s32(*v23.i8, *&vextq_s8(v23, v23, 8uLL));
    v34.i64[0] = v33.u32[0];
    v34.i64[1] = v33.u32[1];
    v35 = vshlq_u64(v30, vnegq_s64(v34));
    v36 = vuzp1q_s32(vzip1q_s64(v30, v35), vzip2q_s64(v30, v35));
    v37 = vshlq_u32(v36, vnegq_s32((*&v22 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v38 = vuzp1q_s16(vzip1q_s32(v36, v37), vzip2q_s32(v36, v37));
    v39 = vzip1q_s16(v38, vshlq_u16(v38, vnegq_s16(vmovl_u8(vuzp1_s8(*v21.i8, *v16.i8)))));
    *v39.i8 = vmovn_s16(v39);
    v36.i64[0] = 0x101010101010101;
    v36.i64[1] = 0x101010101010101;
    v40 = vshlq_s8(v36, v21);
    v36.i64[0] = -1;
    v36.i64[1] = -1;
    v40.i64[0] = vandq_s8(vaddq_s8(v40, v36), v39).u64[0];
    v41 = vdupq_lane_s8(*v40.i8, 0);
    v42 = vdupq_lane_s8(*v40.i8, 1);
    v43 = vdupq_lane_s8(*v40.i8, 2);
    v44 = vdupq_lane_s8(*v40.i8, 3);
    v45 = vsubq_s8(v20, v41);
    v46 = vsubq_s8(v20, v42);
    v47 = vsubq_s8(v20, v43);
    v48 = vsubq_s8(v20, v44);
    v49 = vceqzq_s8(v41);
    v50 = vceqzq_s8(v42);
    v51 = vceqzq_s8(v43);
    v52 = vceqzq_s8(v44);
  }

  v53.i64[0] = 0x707070707070707;
  v53.i64[1] = 0x707070707070707;
  v54 = 0uLL;
  v55 = vandq_s8(vextq_s8(vcgtq_u8(v16, v53), 0, 0xFuLL), v20);
  v56 = vmovl_u8(*&vpaddq_s8(v55, v55));
  v57 = vmovl_u16(*&vpaddq_s16(v56, v56));
  v58 = vpaddq_s32(v57, v57).u64[0];
  v59.i64[0] = v58;
  v59.i64[1] = HIDWORD(v58);
  v60 = v59;
  v61 = vaddvq_s64(v59);
  v62 = v61 + v12;
  if (v61 <= 0x80 && v14 >= v62)
  {
    v64 = v12 & 0x3F;
    v65 = vaddq_s64(vzip1q_s64(0, v60), vdupq_n_s64(v64));
    v66 = (v11 + 8 * (v12 >> 6));
    v54 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v66, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v65)), vshlq_u64(vdupq_lane_s64(v66->i64[0], 0), vnegq_s64(v65)));
    if (v61 + v64 >= 0x81)
    {
      v54 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v66[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v65)), vshlq_u64(vdupq_laneq_s64(v66[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v65))), v54);
    }

    v12 = v62;
  }

  else
  {
    v29 = 1;
  }

  v67 = vandq_s8(v45, xmmword_29D2F0D40);
  v68 = (a4 >> 5) & 3;
  if (v68 != 2)
  {
    v73 = 0;
    v70 = 0;
    v74 = v12;
    goto LABEL_36;
  }

  v69 = v12 + 4;
  if (v14 < v12 + 4)
  {
    v70 = 0;
    v69 = v12;
LABEL_35:
    v73 = 0;
    v29 = 1;
    v74 = v69;
    goto LABEL_36;
  }

  v75 = (v11 + 8 * (v12 >> 6));
  v76 = *v75 >> v12;
  if ((v12 & 0x3F) >= 0x3D)
  {
    v76 |= v75[1] << -(v12 & 0x3F);
  }

  v70 = (v76 << 28) >> 28;
  v74 = v12 + 8;
  if (v14 < v12 + 8)
  {
    goto LABEL_35;
  }

  v71 = (v11 + 8 * (v69 >> 6));
  v72 = *v71 >> v69;
  if ((v69 & 0x3F) >= 0x3D)
  {
    v72 |= v71[1] << -(v69 & 0x3F);
  }

  v73 = (v72 << 28) >> 28;
LABEL_36:
  v77 = vandq_s8(v46, xmmword_29D2F0D50);
  v67.i8[0] = 0;
  v78 = vmovl_u8(*&vpaddq_s8(v67, v67));
  v79 = vmovl_u16(*&vpaddq_s16(v78, v78));
  v80 = vpaddq_s32(v79, v79).u64[0];
  v81.i64[0] = v80;
  v81.i64[1] = HIDWORD(v80);
  v82 = v81;
  v83 = vaddvq_s64(v81);
  v84 = v83 + v74;
  v85 = 0uLL;
  if (v83 <= 0x80 && v14 >= v84)
  {
    v88 = v74 & 0x3F;
    v89 = vaddq_s64(vzip1q_s64(0, v82), vdupq_n_s64(v88));
    v90 = (v11 + 8 * (v74 >> 6));
    v87 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v90, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v89)), vshlq_u64(vdupq_lane_s64(v90->i64[0], 0), vnegq_s64(v89)));
    if (v83 + v88 >= 0x81)
    {
      v87 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v90[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v89)), vshlq_u64(vdupq_laneq_s64(v90[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v89))), v87);
    }

    v74 = v84;
  }

  else
  {
    v29 = 1;
    v87 = 0uLL;
  }

  v200[1] = v9;
  v200[2] = v8;
  v200[3] = v7;
  v200[4] = v6;
  v91 = vandq_s8(v47, xmmword_29D2F0D50);
  v92 = vmovl_u8(*&vpaddq_s8(v77, v77));
  v93 = vmovl_u16(*&vpaddq_s16(v92, v92));
  v94 = vpaddq_s32(v93, v93).u64[0];
  v95.i64[0] = v94;
  v95.i64[1] = HIDWORD(v94);
  v96 = v95;
  v97 = vaddvq_s64(v95);
  if (v97 >= 0x81)
  {
    v29 = 1;
  }

  else
  {
    v98 = vzip1_s32(*v93.i8, *&vextq_s8(v93, v93, 8uLL));
    v99.i64[0] = v98.u32[0];
    v99.i64[1] = v98.u32[1];
    v100 = v99;
    v101 = *&v92 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL);
    v102 = v97 + v74;
    if (v14 >= v97 + v74)
    {
      v104 = v74 & 0x3F;
      v105 = vaddq_s64(vzip1q_s64(0, v96), vdupq_n_s64(v104));
      v106 = (v11 + 8 * (v74 >> 6));
      v103 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v106, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v105)), vshlq_u64(vdupq_lane_s64(v106->i64[0], 0), vnegq_s64(v105)));
      if (v97 + v104 >= 0x81)
      {
        v103 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v106[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v105)), vshlq_u64(vdupq_laneq_s64(v106[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v105))), v103);
      }

      v74 = v102;
    }

    else
    {
      v103 = 0uLL;
      v29 = 1;
    }

    v107 = vshlq_u64(v103, vnegq_s64(v100));
    v108 = vuzp1q_s32(vzip1q_s64(v103, v107), vzip2q_s64(v103, v107));
    v109 = vshlq_u32(v108, vnegq_s32(v101));
    v110 = vuzp1q_s16(vzip1q_s32(v108, v109), vzip2q_s32(v108, v109));
    v111 = vshlq_u16(v110, vnegq_s16((*&v77 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
    v85 = vuzp1q_s8(vzip1q_s16(v110, v111), vzip2q_s16(v110, v111));
  }

  v112 = vandq_s8(v48, xmmword_29D2F0D50);
  v113 = vmovl_u8(*&vpaddq_s8(v91, v91));
  v114 = vmovl_u16(*&vpaddq_s16(v113, v113));
  v115 = vpaddq_s32(v114, v114).u64[0];
  v116.i64[0] = v115;
  v116.i64[1] = HIDWORD(v115);
  v117 = v116;
  v118 = vaddvq_s64(v116);
  if (v118 >= 0x81)
  {
    v29 = 1;
    v125 = 0uLL;
  }

  else
  {
    v119 = vzip1_s32(*v114.i8, *&vextq_s8(v114, v114, 8uLL));
    v120.i64[0] = v119.u32[0];
    v120.i64[1] = v119.u32[1];
    v121 = v120;
    v122 = *&v113 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL);
    v123 = v118 + v74;
    if (v14 >= v118 + v74)
    {
      v126 = v74 & 0x3F;
      v127 = vaddq_s64(vzip1q_s64(0, v117), vdupq_n_s64(v126));
      v128 = (v11 + 8 * (v74 >> 6));
      v124 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v128, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v127)), vshlq_u64(vdupq_lane_s64(v128->i64[0], 0), vnegq_s64(v127)));
      if (v118 + v126 >= 0x81)
      {
        v124 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v128[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v127)), vshlq_u64(vdupq_laneq_s64(v128[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v127))), v124);
      }

      v74 = v123;
    }

    else
    {
      v124 = 0uLL;
      v29 = 1;
    }

    v129 = vshlq_u64(v124, vnegq_s64(v121));
    v130 = vuzp1q_s32(vzip1q_s64(v124, v129), vzip2q_s64(v124, v129));
    v131 = vshlq_u32(v130, vnegq_s32(v122));
    v132 = vuzp1q_s16(vzip1q_s32(v130, v131), vzip2q_s32(v130, v131));
    v133 = vshlq_u16(v132, vnegq_s16((*&v91 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
    v125 = vuzp1q_s8(vzip1q_s16(v132, v133), vzip2q_s16(v132, v133));
  }

  v134 = vmovl_u8(*&vpaddq_s8(v112, v112));
  v135 = vmovl_u16(*&vpaddq_s16(v134, v134));
  v136 = vpaddq_s32(v135, v135).u64[0];
  v137.i64[0] = v136;
  v137.i64[1] = HIDWORD(v136);
  v138 = v137;
  v139 = vaddvq_s64(v137);
  if (v139 >= 0x81 || v14 < v139 + v74)
  {
    goto LABEL_66;
  }

  v140 = vaddq_s64(vzip1q_s64(0, v138), vdupq_n_s64(v74 & 0x3F));
  v141 = (v11 + 8 * (v74 >> 6));
  v142 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v141, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v140)), vshlq_u64(vdupq_lane_s64(v141->i64[0], 0), vnegq_s64(v140)));
  if (v139 + (v74 & 0x3F) >= 0x81)
  {
    v142 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v141[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v140)), vshlq_u64(vdupq_laneq_s64(v141[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v140))), v142);
  }

  if ((v29 & 1) != 0 || (v143 = (a4 & 0x1F) + 1, 8 * ((a3 & 7) + v143) - (v139 + v74) >= 9))
  {
LABEL_66:
    v143 = 0;
    v200[0] |= 255 << (8 * ((v200 + 7) & 7u));
    a1->i32[0] = 0;
    *(a1->i32 + a2) = 0;
  }

  else
  {
    v145 = vzip1_s32(*v57.i8, *&vextq_s8(v57, v57, 8uLL));
    v146 = vzip1_s32(*v79.i8, *&vextq_s8(v79, v79, 8uLL));
    v147.i64[0] = v145.u32[0];
    v147.i64[1] = v145.u32[1];
    v148 = v147;
    v147.i64[0] = v146.u32[0];
    v147.i64[1] = v146.u32[1];
    v149 = vshlq_u64(v54, vnegq_s64(v148));
    v150 = vshlq_u64(v87, vnegq_s64(v147));
    v151 = vuzp1q_s32(vzip1q_s64(v54, v149), vzip2q_s64(v54, v149));
    v152 = vuzp1q_s32(vzip1q_s64(v87, v150), vzip2q_s64(v87, v150));
    v153 = vshlq_u32(v151, vnegq_s32((*&v56 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v154 = vshlq_u32(v152, vnegq_s32((*&v78 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v155 = vuzp1q_s16(vzip1q_s32(v151, v153), vzip2q_s32(v151, v153));
    v156 = vuzp1q_s16(vzip1q_s32(v152, v154), vzip2q_s32(v152, v154));
    v157 = vshlq_u16(v155, vnegq_s16((*&v55 & __PAIR128__(0xF0FFF0FFF0FFF0FFLL, 0xF0FFF0FFF0FFF0FFLL))));
    v158 = vshlq_u16(v156, vnegq_s16((*&v67 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF0000))));
    v159 = vzip2q_s16(v155, v157);
    v160 = vzip1q_s16(v155, v157);
    v157.i64[0] = 0x808080808080808;
    v157.i64[1] = 0x808080808080808;
    v161 = vzip2q_s16(v156, v158);
    v162 = vzip1q_s16(v156, v158);
    v158.i64[0] = 0x808080808080808;
    v158.i64[1] = 0x808080808080808;
    v163 = v13 >> 4;
    v164 = vuzp1q_s8(v160, v159);
    v159.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v159.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v165 = vuzp1q_s8(v162, v161);
    v161.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v161.i64[1] = 0xF8F8F8F8F8F8F8F8;
    *v150.i8 = vzip1_s32(*v135.i8, *&vextq_s8(v135, v135, 8uLL));
    v166.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v166.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v167.i64[0] = 0x808080808080808;
    v167.i64[1] = 0x808080808080808;
    v168 = vshlq_s8(v164, vsubq_s8(v157, v55));
    v169 = vaddq_s8(v67, v161);
    v170 = vshlq_s8(v165, vsubq_s8(v158, v67));
    v147.i64[0] = v150.u32[0];
    v147.i64[1] = v150.u32[1];
    v171 = vshlq_s8(v168, vaddq_s8(v55, v159));
    v172 = vshlq_s8(v170, v169);
    v173 = vshlq_s8(vshlq_s8(v85, vsubq_s8(v158, v77)), vaddq_s8(v77, v161));
    v174 = vshlq_s8(vshlq_s8(v125, vsubq_s8(v158, v91)), vaddq_s8(v91, v161));
    v175 = vshlq_u64(v142, vnegq_s64(v147));
    v176 = vuzp1q_s32(vzip1q_s64(v142, v175), vzip2q_s64(v142, v175));
    v177 = vshlq_u32(v176, vnegq_s32((*&v134 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v178 = vuzp1q_s16(vzip1q_s32(v176, v177), vzip2q_s32(v176, v177));
    v179 = vshlq_u16(v178, vnegq_s16((*&v112 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
    v180 = vshlq_s8(vshlq_s8(vuzp1q_s8(vzip1q_s16(v178, v179), vzip2q_s16(v178, v179)), vsubq_s8(v167, v112)), vaddq_s8(v112, v166));
    if (v68 == 2)
    {
      v181.i64[0] = 0xFFFF0000FFFF0000;
      v181.i64[1] = 0xFFFF0000FFFF0000;
      v182 = vmlaq_s8(vandq_s8(vdupq_n_s8(v73), v181), vdupq_n_s8(v70), xmmword_29D2F0D60);
      v172 = vaddq_s8(v172, v182);
      v173 = vaddq_s8(vaddq_s8(vdupq_n_s8(2 * v73), v182), v173);
      v174 = vaddq_s8(vaddq_s8(vdupq_n_s8(4 * v70), v182), v174);
      v180 = vaddq_s8(vaddq_s8(vdupq_n_s8(4 * v70 + 2 * v73), v182), v180);
    }

    v183.i64[0] = vdupq_n_s8(v163).u64[0];
    v184 = vaddq_s8(vandq_s8(v171, v49), v172);
    v185 = vdupq_lane_s8(*v171.i8, 0);
    v186 = vsubq_s8(v184, vandq_s8(v185, v49));
    v187 = vsubq_s8(v173, vandq_s8(v185, v50));
    v188 = vsubq_s8(v174, vandq_s8(v185, v51));
    v189 = vsubq_s8(v180, vandq_s8(v185, v52));
    v190.i64[0] = 0x101010101010101;
    v190.i64[1] = 0x101010101010101;
    if (vaddlvq_s8(vceqq_s8(v19, v190)))
    {
      v191 = vandq_s8(v16, v190);
      v192 = vnegq_s8(v191);
      v193 = v186;
      v193.i8[0] = v186.i8[7];
      v193.i8[7] = v186.i8[0];
      v194 = vorrq_s8(vandq_s8(v193, v192), vandq_s8(v186, vceqzq_s8(v191)));
      v195 = vaddq_s8(vandq_s8(vqtbl1q_s8(v194, xmmword_29D2F0D70), v192), v194);
      v186.i64[0] = vaddq_s8(vandq_s8(vqtbl1q_s8(v195, xmmword_29D2F0D80), v192), v195).u64[0];
      v196 = vaddq_s8(vandq_s8(vqtbl1q_s8(v187, xmmword_29D2F0D90), v192), v187);
      v187.i64[0] = vaddq_s8(vandq_s8(vqtbl1q_s8(v196, xmmword_29D2F0DA0), v192), v196).u64[0];
      v197 = vaddq_s8(vandq_s8(vqtbl1q_s8(v188, xmmword_29D2F0DB0), v192), v188);
      v188.i64[0] = vaddq_s8(vandq_s8(vqtbl1q_s8(v197, xmmword_29D2F0DC0), v192), v197).u64[0];
      v198 = vaddq_s8(vandq_s8(vqtbl1q_s8(v189, xmmword_29D2F0DD0), v192), v189);
      v189.i64[0] = vaddq_s8(vandq_s8(vqtbl1q_s8(v198, xmmword_29D2F0DE0), v192), v198).u64[0];
    }

    v186.i64[1] = v183.i64[0];
    v199.i64[0] = v183.i64[0];
    v199.i64[1] = v188.i64[0];
    v187.i64[1] = v189.i64[0];
    *a1 = vaddq_s8(v199, v186);
    v183.i64[1] = v183.i64[0];
    *(a1 + a2) = vaddq_s8(v187, v183);
  }

  return v143;
}

void *AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(void *result, uint64_t a2, void *a3, char *a4, unsigned int a5, unsigned int a6)
{
  v6 = 0;
  if (a5 && a6)
  {
    v7 = result[1];
    v8 = *(result + a2);
    v9 = *(result + a2 + 8);
    *a3 = *result;
    a3[1] = v8;
    a3[2] = v7;
    a3[3] = v9;
    a3 += 4;
    v6 = 31;
  }

  v10 = 0;
  v11 = 2 * a2;
  *a4 = v6;
  if (a5 && a6 >= 3)
  {
    v12 = *(result + v11 + 8);
    v13 = (result + v11 + a2);
    v14 = *v13;
    v15 = v13[1];
    *a3 = *(result + 2 * a2);
    a3[1] = v14;
    a3[2] = v12;
    a3[3] = v15;
    a3 += 4;
    v10 = 31;
  }

  v16 = 0;
  a4[1] = v10;
  if (a5 >= 5 && a6)
  {
    v17 = result[3];
    v18 = (result + a2 + 16);
    v19 = *v18;
    v20 = v18[1];
    *a3 = result[2];
    a3[1] = v19;
    a3[2] = v17;
    a3[3] = v20;
    a3 += 4;
    v16 = 31;
  }

  v21 = 0;
  a4[2] = v16;
  if (a5 >= 5 && a6 >= 3)
  {
    v22 = result + v11;
    v23 = *(v22 + 2);
    v24 = *(v22 + 3);
    v25 = &v22[a2 + 16];
    v26 = *v25;
    v27 = *(v25 + 1);
    *a3 = v23;
    a3[1] = v26;
    a3[2] = v24;
    a3[3] = v27;
    a3 += 4;
    v21 = 31;
  }

  v28 = 0;
  a4[3] = v21;
  if (a5 && a6 >= 5)
  {
    v29 = (result + 4 * a2);
    v30 = *v29;
    v31 = v29[1];
    v32 = (v29 + a2);
    v33 = *v32;
    v34 = v32[1];
    *a3 = v30;
    a3[1] = v33;
    a3[2] = v31;
    a3[3] = v34;
    a3 += 4;
    v28 = 31;
  }

  v35 = 0;
  a4[4] = v28;
  if (a5 && a6 >= 7)
  {
    v36 = (result + 6 * a2);
    v37 = *v36;
    v38 = v36[1];
    v39 = (v36 + a2);
    v40 = *v39;
    v41 = v39[1];
    *a3 = v37;
    a3[1] = v40;
    a3[2] = v38;
    a3[3] = v41;
    a3 += 4;
    v35 = 31;
  }

  v42 = 0;
  a4[5] = v35;
  if (a5 >= 5 && a6 >= 5)
  {
    v43 = result + 4 * a2;
    v44 = *(v43 + 2);
    v45 = *(v43 + 3);
    v46 = &v43[a2 + 16];
    v47 = *v46;
    v48 = *(v46 + 1);
    *a3 = v44;
    a3[1] = v47;
    a3[2] = v45;
    a3[3] = v48;
    a3 += 4;
    v42 = 31;
  }

  v49 = 0;
  a4[6] = v42;
  if (a5 >= 5 && a6 >= 7)
  {
    v50 = result + 6 * a2;
    v51 = *(v50 + 2);
    v52 = *(v50 + 3);
    v53 = &v50[a2 + 16];
    v54 = *v53;
    v55 = *(v53 + 1);
    *a3 = v51;
    a3[1] = v54;
    a3[2] = v52;
    a3[3] = v55;
    v49 = 31;
  }

  a4[7] = v49;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(uint64_t a1, uint64_t a2, unsigned __int8 *a3, __n128 a4, double a5)
{
  v8 = *a3;
  if (v8 == 96)
  {
    a4 = vld1q_dup_s8(a2);
    *a1 = a4;
    *(a1 + 32) = a4;
    v9 = 1;
  }

  else if (v8 == 31)
  {
    a4.n128_u64[0] = *a2;
    a5 = *(a2 + 8);
    v10 = *(a2 + 16);
    v11 = *(a2 + 24);
    *a1 = *a2;
    *(a1 + 8) = v10;
    *(a1 + 32) = a5;
    *(a1 + 40) = v11;
    v9 = 32;
  }

  else if (*a3)
  {
    v9 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(a1, 32, a2, v8, a4.n128_f64[0], *&a5);
  }

  else
  {
    v9 = 0;
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
  }

  v12 = a2 + v9;
  v13 = a3[1];
  if (a3[1])
  {
    if (v13 == 96)
    {
      a4 = vld1q_dup_s8(v12);
      *(a1 + 64) = a4;
      *(a1 + 96) = a4;
      v16 = 1;
    }

    else if (v13 == 31)
    {
      a4.n128_u64[0] = *v12;
      a5 = *(v12 + 8);
      v14 = *(v12 + 16);
      v15 = *(v12 + 24);
      *(a1 + 64) = *v12;
      *(a1 + 72) = v14;
      *(a1 + 96) = a5;
      *(a1 + 104) = v15;
      v16 = 32;
    }

    else
    {
      v16 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((a1 + 64), 32, v12, v13, a4.n128_f64[0], *&a5);
    }
  }

  else
  {
    v16 = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
  }

  v17 = v12 + v16;
  v18 = a3[2];
  if (a3[2])
  {
    if (v18 == 96)
    {
      a4 = vld1q_dup_s8(v17);
      *(a1 + 16) = a4;
      *(a1 + 48) = a4;
      v21 = 1;
    }

    else if (v18 == 31)
    {
      a4.n128_u64[0] = *v17;
      a5 = *(v17 + 8);
      v19 = *(v17 + 16);
      v20 = *(v17 + 24);
      *(a1 + 16) = *v17;
      *(a1 + 24) = v19;
      *(a1 + 48) = a5;
      *(a1 + 56) = v20;
      v21 = 32;
    }

    else
    {
      v21 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((a1 + 16), 32, v17, v18, a4.n128_f64[0], *&a5);
    }
  }

  else
  {
    v21 = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
  }

  v22 = v17 + v21;
  v23 = a3[3];
  if (a3[3])
  {
    if (v23 == 96)
    {
      a4 = vld1q_dup_s8(v22);
      *(a1 + 80) = a4;
      *(a1 + 112) = a4;
      v26 = 1;
    }

    else if (v23 == 31)
    {
      a4.n128_u64[0] = *v22;
      a5 = *(v22 + 8);
      v24 = *(v22 + 16);
      v25 = *(v22 + 24);
      *(a1 + 80) = *v22;
      *(a1 + 88) = v24;
      *(a1 + 112) = a5;
      *(a1 + 120) = v25;
      v26 = 32;
    }

    else
    {
      v26 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((a1 + 80), 32, v22, v23, a4.n128_f64[0], *&a5);
    }
  }

  else
  {
    v26 = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
  }

  v27 = v22 + v26;
  v28 = a3[4];
  if (a3[4])
  {
    if (v28 == 96)
    {
      a4 = vld1q_dup_s8(v27);
      *(a1 + 128) = a4;
      *(a1 + 160) = a4;
      v31 = 1;
    }

    else if (v28 == 31)
    {
      a4.n128_u64[0] = *v27;
      a5 = *(v27 + 8);
      v29 = *(v27 + 16);
      v30 = *(v27 + 24);
      *(a1 + 128) = *v27;
      *(a1 + 136) = v29;
      *(a1 + 160) = a5;
      *(a1 + 168) = v30;
      v31 = 32;
    }

    else
    {
      v31 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((a1 + 128), 32, v27, v28, a4.n128_f64[0], *&a5);
    }
  }

  else
  {
    v31 = 0;
    *(a1 + 128) = 0;
    *(a1 + 136) = 0;
    *(a1 + 160) = 0;
    *(a1 + 168) = 0;
  }

  v32 = v27 + v31;
  v33 = a3[5];
  if (a3[5])
  {
    if (v33 == 96)
    {
      a4 = vld1q_dup_s8(v32);
      *(a1 + 192) = a4;
      *(a1 + 224) = a4;
      v36 = 1;
    }

    else if (v33 == 31)
    {
      a4.n128_u64[0] = *v32;
      a5 = *(v32 + 8);
      v34 = *(v32 + 16);
      v35 = *(v32 + 24);
      *(a1 + 192) = *v32;
      *(a1 + 200) = v34;
      *(a1 + 224) = a5;
      *(a1 + 232) = v35;
      v36 = 32;
    }

    else
    {
      v36 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((a1 + 192), 32, v32, v33, a4.n128_f64[0], *&a5);
    }
  }

  else
  {
    v36 = 0;
    *(a1 + 192) = 0;
    *(a1 + 200) = 0;
    *(a1 + 224) = 0;
    *(a1 + 232) = 0;
  }

  v37 = v32 + v36;
  v38 = a3[6];
  if (!a3[6])
  {
    result = 0;
    *(a1 + 144) = 0;
    *(a1 + 152) = 0;
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
    v42 = a3[7];
    if (a3[7])
    {
      goto LABEL_51;
    }

    goto LABEL_56;
  }

  if (v38 == 96)
  {
    a4 = vld1q_dup_s8(v37);
    *(a1 + 144) = a4;
    *(a1 + 176) = a4;
    result = 1;
    v42 = a3[7];
    if (!a3[7])
    {
      goto LABEL_56;
    }

    goto LABEL_51;
  }

  if (v38 != 31)
  {
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((a1 + 144), 32, v37, v38, a4.n128_f64[0], *&a5);
    v42 = a3[7];
    if (a3[7])
    {
      goto LABEL_51;
    }

LABEL_56:
    *(a1 + 208) = 0;
    *(a1 + 216) = 0;
    *(a1 + 240) = 0;
    *(a1 + 248) = 0;
    return result;
  }

  a4.n128_u64[0] = *v37;
  a5 = *(v37 + 8);
  v39 = *(v37 + 16);
  v40 = *(v37 + 24);
  *(a1 + 144) = *v37;
  *(a1 + 152) = v39;
  *(a1 + 176) = a5;
  *(a1 + 184) = v40;
  result = 32;
  v42 = a3[7];
  if (!a3[7])
  {
    goto LABEL_56;
  }

LABEL_51:
  v43 = v37 + result;
  if (v42 == 96)
  {
    v47 = vld1q_dup_s8(v43);
    *(a1 + 208) = v47;
    *(a1 + 240) = v47;
  }

  else if (v42 == 31)
  {
    v44 = *(v43 + 8);
    v45 = *(v43 + 16);
    v46 = *(v43 + 24);
    *(a1 + 208) = *v43;
    *(a1 + 216) = v45;
    *(a1 + 240) = v44;
    *(a1 + 248) = v46;
  }

  else
  {

    return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((a1 + 208), 32, v43, v42, a4.n128_f64[0], *&a5);
  }

  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(int8x8_t *a1, char *a2, int8x8_t *a3, uint64_t a4, unsigned int a5, int a6, int8x8_t a7, double a8, int8x8_t a9)
{
  v11 = *a3;
  v12 = a3[1];
  v14 = *(a3 + a4);
  v13 = *(&a3[1] + a4);
  *v15.i8 = *a3;
  v15.u64[1] = *a3;
  v16.i64[0] = v14;
  v16.i64[1] = v14;
  v17.i64[0] = v12;
  v17.i64[1] = v12;
  v18.i64[0] = v13;
  v18.i64[1] = v13;
  v19 = vdupq_lane_s8(*a3, 0);
  v20 = vsubq_s8(v15, v19);
  v21 = vsubq_s8(v16, v19);
  v22 = vsubq_s8(v17, v19);
  a7.i8[0] = vmaxvq_s8(v20);
  a9.i8[0] = vminvq_s8(v20);
  v23 = vdupq_lane_s8(a7, 0);
  v24 = vdupq_lane_s8(a9, 0);
  v25 = vsubq_s8(v18, v19);
  v26 = vzip1q_s8(v23, v24);
  v27.i64[0] = 0x808080808080808;
  v27.i64[1] = 0x808080808080808;
  v28 = vsubq_s8(v27, vclsq_s8(v26));
  v29 = vbicq_s8(v28, vceqzq_s8(v26));
  v30 = vpmaxq_s8(v29, v29);
  v28.i8[0] = vmaxvq_s8(v21);
  v9.i8[0] = vminvq_s8(v21);
  v31 = vdupq_lane_s8(*v28.i8, 0);
  v32 = vdupq_lane_s8(v9, 0);
  v33 = vmaxq_s8(v23, v31);
  v34 = vminq_s8(v24, v32);
  v35 = vzip1q_s8(v31, v32);
  v36 = vsubq_s8(v27, vclsq_s8(v35));
  v37 = vbicq_s8(v36, vceqzq_s8(v35));
  v38 = vpmaxq_s8(v37, v37);
  v36.i8[0] = vmaxvq_s8(v22);
  v32.i8[0] = vminvq_s8(v22);
  v39 = vdupq_lane_s8(*v36.i8, 0);
  v40 = vdupq_lane_s8(*v32.i8, 0);
  v41 = vmaxq_s8(v33, v39);
  v42 = vminq_s8(v34, v40);
  v43 = vzip1q_s8(v39, v40);
  v44 = vsubq_s8(v27, vclsq_s8(v43));
  v45 = vbicq_s8(v44, vceqzq_s8(v43));
  v46 = vpmaxq_s8(v45, v45);
  v44.i8[0] = vmaxvq_s8(v25);
  v10.i8[0] = vminvq_s8(v25);
  v47 = vdupq_lane_s8(*v44.i8, 0);
  v48 = vdupq_lane_s8(v10, 0);
  v49 = vmaxq_s8(v41, v47);
  v50 = vminq_s8(v42, v48);
  v51 = vzip1q_s8(v47, v48);
  v52 = vbicq_s8(vsubq_s8(v27, vclsq_s8(v51)), vceqzq_s8(v51));
  v53 = vpmaxq_s8(v52, v52);
  v54 = vmaxq_s8(vmaxq_s8(v30, v38), vmaxq_s8(v46, v53));
  v55 = vclzq_s8(vsubq_s8(v49, v50));
  v56 = vsubq_s8(v27, v55);
  v57 = vminq_s8(v56, v54);
  if (vmaxvq_s8(v57))
  {
    v58 = 0;
    v59 = 0;
    v60.i64[0] = -1;
    v60.i64[1] = -1;
    v61.i64[0] = 0x707070707070707;
    v61.i64[1] = 0x707070707070707;
    v62 = vshlq_s8(v60, vsubq_s8(v61, v55));
    v63 = vcgtq_s8(v54, v56);
    v64 = vandq_s8(vsubq_s8(v62, v50), v63);
    v65 = vandq_s8(v63, v27);
    v63.i64[0] = 0x303030303030303;
    v63.i64[1] = 0x303030303030303;
    v66 = vorrq_s8(vandq_s8(vceqzq_s8(v57), v63), v65);
    v67 = vmaxq_s8(vminq_s8(vsubq_s8(v57, v30), v63), 0);
    v68 = vmaxq_s8(vminq_s8(vsubq_s8(v57, v38), v63), 0);
    v69 = vmaxq_s8(vminq_s8(vsubq_s8(v57, v46), v63), 0);
    v70 = vmaxq_s8(vminq_s8(vsubq_s8(v57, v53), v63), 0);
    v71 = vsubq_s8(v57, v67);
    v72 = vsubq_s8(v57, v68);
    v73 = vsubq_s8(v57, v69);
    v74 = vsubq_s8(v57, v70);
    v75 = vceqq_s8(vaddq_s8(v70, v69), vnegq_s8(vaddq_s8(v67, v68)));
    v68.i64[0] = 0x404040404040404;
    v68.i64[1] = 0x404040404040404;
    v76 = vorrq_s8(vbicq_s8(v68, v75), v66);
    if (a5 >= 2 && a6)
    {
      v375 = v64;
      v77 = v11.u8[1] - v11.u8[0];
      v78 = v77 << 28 >> 28;
      v79 = v11.u8[2] - v11.u8[0];
      v80.i64[0] = 0xFFFF0000FFFF0000;
      v80.i64[1] = 0xFFFF0000FFFF0000;
      v81 = vmlaq_s8(vandq_s8(vdupq_n_s8(v79 << 28 >> 28), v80), vdupq_n_s8(v78), xmmword_29D2F0D60);
      v82 = vsubq_s8(v20, v81);
      v83 = v79 << 28 >> 27;
      v370 = v21;
      v84 = vsubq_s8(vaddq_s8(vdupq_n_s8(-v83), v21), v81);
      v85 = v77 << 28 >> 26;
      v86 = vsubq_s8(vaddq_s8(vdupq_n_s8(-v85), v22), v81);
      v87 = vaddq_s8(vdupq_n_s8(-(v83 + v85)), v25);
      v88 = vsubq_s8(v87, v81);
      v87.i8[0] = vmaxvq_s8(v82);
      v81.i8[0] = vminvq_s8(v82);
      v89 = vdupq_lane_s8(*v87.i8, 0);
      v90 = vdupq_lane_s8(*v81.i8, 0);
      v91 = vzip1q_s8(v89, v90);
      v92.i64[0] = 0x808080808080808;
      v92.i64[1] = 0x808080808080808;
      v93 = vsubq_s8(v92, vclsq_s8(v91));
      v94 = vbicq_s8(v93, vceqzq_s8(v91));
      v95 = vpmaxq_s8(v94, v94);
      v93.i8[0] = vmaxvq_s8(v84);
      v56.i8[0] = vminvq_s8(v84);
      v96 = vdupq_lane_s8(*v93.i8, 0);
      v97 = vdupq_lane_s8(*v56.i8, 0);
      v98 = vmaxq_s8(v89, v96);
      v99 = vminq_s8(v90, v97);
      v100 = vzip1q_s8(v96, v97);
      v101 = vsubq_s8(v92, vclsq_s8(v100));
      v102 = vbicq_s8(v101, vceqzq_s8(v100));
      v103 = vpmaxq_s8(v102, v102);
      v101.i8[0] = vmaxvq_s8(v86);
      v62.i8[0] = vminvq_s8(v86);
      v104 = vdupq_lane_s8(*v101.i8, 0);
      v105 = vdupq_lane_s8(*v62.i8, 0);
      v106 = vmaxq_s8(v98, v104);
      v107 = vminq_s8(v99, v105);
      v108 = vzip1q_s8(v104, v105);
      v109 = vsubq_s8(v92, vclsq_s8(v108));
      v110 = vbicq_s8(v109, vceqzq_s8(v108));
      v111 = vpmaxq_s8(v110, v110);
      v109.i8[0] = vmaxvq_s8(v88);
      v61.i8[0] = vminvq_s8(v88);
      v112 = vdupq_lane_s8(*v109.i8, 0);
      v113 = vdupq_lane_s8(*v61.i8, 0);
      v114 = vmaxq_s8(v106, v112);
      v115 = v20;
      v116 = v73;
      v368 = v22;
      v369 = v25;
      v117 = vminq_s8(v107, v113);
      v118 = vzip1q_s8(v112, v113);
      v119 = vbicq_s8(vsubq_s8(v92, vclsq_s8(v118)), vceqzq_s8(v118));
      v120 = vpmaxq_s8(v119, v119);
      v121 = vmaxq_s8(vmaxq_s8(v95, v103), vmaxq_s8(v111, v120));
      v122 = vclzq_s8(vsubq_s8(v114, v117));
      v123 = vsubq_s8(v92, v122);
      v124 = vcgtq_s8(v121, v123);
      v125 = vminq_s8(v123, v121);
      v92.i64[0] = 0x202020202020202;
      v92.i64[1] = 0x202020202020202;
      v121.i64[0] = 0xA0A0A0A0A0A0A0ALL;
      v121.i64[1] = 0xA0A0A0A0A0A0A0ALL;
      v126 = vbslq_s8(v124, v121, v92);
      v121.i64[0] = 0x101010101010101;
      v121.i64[1] = 0x101010101010101;
      v127 = vmaxq_s8(v125, v121);
      v128.i64[0] = 0x303030303030303;
      v128.i64[1] = 0x303030303030303;
      v129 = vmaxq_s8(vminq_s8(vsubq_s8(v127, v95), v128), 0);
      v130 = vmaxq_s8(vminq_s8(vsubq_s8(v127, v103), v128), 0);
      v131 = vmaxq_s8(vminq_s8(vsubq_s8(v127, v111), v128), 0);
      v132 = vmaxq_s8(vminq_s8(vsubq_s8(v127, v120), v128), 0);
      v133 = vsubq_s8(v127, v129);
      v134 = vsubq_s8(v127, v130);
      v135 = vsubq_s8(v127, v131);
      v136 = vsubq_s8(v127, v132);
      v137.i64[0] = 0x404040404040404;
      v137.i64[1] = 0x404040404040404;
      v138 = vorrq_s8(vbicq_s8(v137, vceqq_s8(vaddq_s8(v132, v131), vnegq_s8(vaddq_s8(v129, v130)))), v126);
      v137.i64[0] = 0x8000800080008;
      v137.i64[1] = 0x8000800080008;
      v376 = vshll_n_s8(vadd_s8(vadd_s8(*v116.i8, *v72.i8), *v74.i8), 3uLL);
      v121.i64[0] = 0x2000200020002;
      v121.i64[1] = 0x2000200020002;
      v139 = vdupq_lane_s8(vqmovn_u16(vcgtq_s16(vaddq_s16(vaddq_s16(vaddw_s8(vmlal_s8(v376, *v71.i8, 0x707070707070707), vbic_s8(*v57.i8, vcgt_u8(0x808080808080808, *v76.i8))), (*&vshll_n_u8(*v76.i8, 1uLL) & __PAIR128__(0xFFE9FFE9FFE9FFE9, 0xFFE9FFE9FFE9FFE9))), vandq_s8(vceqq_s16((*&vmovl_u8(*v76.i8) & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3)), v121), v137)), vaddq_s16(vaddw_u8(vaddw_u8(vmlal_s8(vshll_n_s8(vadd_s8(vadd_s8(*v135.i8, *v134.i8), *v136.i8), 3uLL), *v133.i8, 0x707070707070707), vand_s8(vadd_s8(*v138.i8, *v138.i8), 0x808080808080808)), vbic_s8(*v127.i8, vcgt_u8(0x808080808080808, *v138.i8))), v137))), 0);
      v131.i16[0] = vaddlvq_s8(v139);
      v140 = v78 & 0xF | (16 * v79);
      v141 = v131.u16[0];
      if (v131.i16[0])
      {
        v142.i64[0] = 0x707070707070707;
        v142.i64[1] = 0x707070707070707;
        v143.i64[0] = -1;
        v143.i64[1] = -1;
        v144 = vandq_s8(vsubq_s8(vshlq_s8(v143, vsubq_s8(v142, v122)), v117), v124);
        v145 = vbslq_s8(v139, v82, v115);
        v146 = vbslq_s8(v139, v84, v370);
        v22 = vbslq_s8(v139, v86, v368);
        v74 = vbslq_s8(v139, v136, v74);
        v64 = vbslq_s8(v139, v144, v375);
        v57 = vbslq_s8(v139, v127, v57);
        v76 = vbslq_s8(v139, v138, v76);
        v371 = vbslq_s8(v139, v133, v71);
        v372 = vbslq_s8(v139, v134, v72);
        v147 = vmull_s8(*v371.i8, 0x707070707070707);
        v373 = v145;
        v374 = vbslq_s8(v139, v135, v116);
        v376 = vshll_n_s8(vadd_s8(vadd_s8(*v374.i8, *v372.i8), *v74.i8), 3uLL);
        v25 = vbslq_s8(v139, v88, v369);
        v21 = v146;
      }

      else
      {
        v372 = v72;
        v373 = v115;
        v374 = v116;
        v371 = v71;
        v147 = vmull_s8(*v71.i8, 0x707070707070707);
        v22 = v368;
        v25 = v369;
        v64 = v375;
        v21 = v370;
      }

      v59 = v140;
      v150 = vsubq_s8(v15, vqtbl1q_s8(v15, xmmword_29D2F0DF0));
      v151 = v16;
      v151.i8[7] = v15.i8[7];
      v152 = vsubq_s8(v16, vqtbl1q_s8(v151, xmmword_29D2F0E00));
      v153 = v17;
      v153.i8[7] = v15.i8[7];
      v154 = vsubq_s8(v17, vqtbl1q_s8(v153, xmmword_29D2F0E10));
      v155 = v18;
      v155.i8[7] = v15.i8[7];
      v156 = vqtbl1q_s8(v155, xmmword_29D2F0E20);
      v157 = vsubq_s8(v18, v156);
      v158 = v150;
      v158.i8[0] = v150.i8[7];
      v158.i8[7] = v150.i8[0];
      v150.i8[0] = vmaxvq_s8(v158);
      v156.i8[0] = vminvq_s8(v158);
      v159 = vdupq_lane_s8(*v150.i8, 0);
      v160 = vdupq_lane_s8(*v156.i8, 0);
      v161 = vzip1q_s8(v159, v160);
      v162.i64[0] = 0x808080808080808;
      v162.i64[1] = 0x808080808080808;
      v163 = vsubq_s8(v162, vclsq_s8(v161));
      v164 = vbicq_s8(v163, vceqzq_s8(v161));
      v165 = vpmaxq_s8(v164, v164);
      v164.i8[0] = vmaxvq_s8(v152);
      v163.i8[0] = vminvq_s8(v152);
      v166 = vdupq_lane_s8(*v164.i8, 0);
      v167 = vdupq_lane_s8(*v163.i8, 0);
      v168 = vmaxq_s8(v159, v166);
      v169 = vminq_s8(v160, v167);
      v170 = vzip1q_s8(v166, v167);
      v171 = vsubq_s8(v162, vclsq_s8(v170));
      v172 = vbicq_s8(v171, vceqzq_s8(v170));
      v173 = vpmaxq_s8(v172, v172);
      v172.i8[0] = vmaxvq_s8(v154);
      v171.i8[0] = vminvq_s8(v154);
      v174 = vdupq_lane_s8(*v172.i8, 0);
      v175 = vdupq_lane_s8(*v171.i8, 0);
      v176 = vmaxq_s8(v168, v174);
      v177 = vminq_s8(v169, v175);
      v178 = vzip1q_s8(v174, v175);
      v179 = vsubq_s8(v162, vclsq_s8(v178));
      v180 = vbicq_s8(v179, vceqzq_s8(v178));
      v181 = vpmaxq_s8(v180, v180);
      v180.i8[0] = vmaxvq_s8(v157);
      v179.i8[0] = vminvq_s8(v157);
      v182 = vdupq_lane_s8(*v180.i8, 0);
      v183 = vdupq_lane_s8(*v179.i8, 0);
      v184 = vmaxq_s8(v176, v182);
      v185 = vminq_s8(v177, v183);
      v186 = vzip1q_s8(v182, v183);
      v187 = vbicq_s8(vsubq_s8(v162, vclsq_s8(v186)), vceqzq_s8(v186));
      v188 = vpmaxq_s8(v187, v187);
      v189 = vmaxq_s8(vmaxq_s8(v165, v173), vmaxq_s8(v181, v188));
      v190 = vclzq_s8(vsubq_s8(v184, v185));
      v191 = vsubq_s8(v162, v190);
      v192 = vcgtq_s8(v189, v191);
      v193 = vminq_s8(v191, v189);
      v191.i64[0] = 0x909090909090909;
      v191.i64[1] = 0x909090909090909;
      v194.i64[0] = 0x202020202020202;
      v194.i64[1] = 0x202020202020202;
      v195 = vorrq_s8(vandq_s8(vceqzq_s8(v193), v194), vsubq_s8(vandq_s8(v192, v191), vmvnq_s8(v192)));
      v194.i64[0] = 0x303030303030303;
      v194.i64[1] = 0x303030303030303;
      v196 = vmaxq_s8(vminq_s8(vsubq_s8(v193, v165), v194), 0);
      v197 = vmaxq_s8(vminq_s8(vsubq_s8(v193, v173), v194), 0);
      v198 = vmaxq_s8(vminq_s8(vsubq_s8(v193, v181), v194), 0);
      v199 = vmaxq_s8(vminq_s8(vsubq_s8(v193, v188), v194), 0);
      v200 = vsubq_s8(v193, v196);
      v201 = vsubq_s8(v193, v197);
      v202 = vsubq_s8(v193, v198);
      v203 = vsubq_s8(v193, v199);
      v194.i64[0] = 0x404040404040404;
      v194.i64[1] = 0x404040404040404;
      v204 = vorrq_s8(v195, vbicq_s8(v194, vceqq_s8(vaddq_s8(v199, v198), vnegq_s8(vaddq_s8(v196, v197)))));
      v197.i64[0] = 0x3000300030003;
      v197.i64[1] = 0x3000300030003;
      v205 = vmovl_s8(*v76.i8);
      v194.i64[0] = 0x8000800080008;
      v194.i64[1] = 0x8000800080008;
      v162.i64[0] = 0x2000200020002;
      v162.i64[1] = 0x2000200020002;
      v206 = vdupq_lane_s8(vqmovn_u16(vcgtq_s16(vaddq_s16(vaddq_s16(vaddq_s16(vbicq_s8(vmovl_s8(*v57.i8), vceqzq_s16(vandq_s8(v205, v194))), vandq_s8(vshll_n_s8(*v76.i8, 1uLL), v194)), vaddq_s16(vandq_s8(vceqq_s16(vandq_s8(v205, v197), v162), v194), v147)), v376), vaddw_s8(vaddw_u8(vmlal_s8(vshll_n_s8(vadd_s8(vadd_s8(*v202.i8, *v201.i8), *v203.i8), 3uLL), *v200.i8, 0x707070707070707), vand_s8(vadd_s8(*v204.i8, *v204.i8), 0x808080808080808)), vbic_s8(*v193.i8, vcgt_u8(0x808080808080808, *v204.i8))))), 0);
      v195.i16[0] = vaddlvq_s8(v206);
      v207 = v195.u16[0];
      if (v195.i16[0])
      {
        v208.i64[0] = 0x707070707070707;
        v208.i64[1] = 0x707070707070707;
        v209.i64[0] = -1;
        v209.i64[1] = -1;
        v19.i8[0] = vbslq_s8(v206, vextq_s8(v15, v15, 0xFuLL), v19).u8[0];
        v20 = vbslq_s8(v206, v158, v373);
        v21 = vbslq_s8(v206, v152, v21);
        v22 = vbslq_s8(v206, v154, v22);
        v25 = vbslq_s8(v206, v157, v25);
        v71 = vbslq_s8(v206, v200, v371);
        v72 = vbslq_s8(v206, v201, v372);
        v73 = vbslq_s8(v206, v202, v374);
        v74 = vbslq_s8(v206, v203, v74);
        v64 = vbslq_s8(v206, vandq_s8(vsubq_s8(vshlq_s8(v209, vsubq_s8(v208, v190)), v185), v192), v64);
        v57 = vbslq_s8(v206, v193, v57);
        v76 = vbslq_s8(v206, v204, v76);
      }

      else
      {
        v20 = v373;
        v73 = v374;
        v71 = v371;
        v72 = v372;
      }

      v13 = *(&a3[1] + a4);
      v12 = a3[1];
      v14 = *(a3 + a4);
      if (v141)
      {
        v210 = v207 == 0;
      }

      else
      {
        v210 = 0;
      }

      v58 = v210;
    }

    v211 = vmovl_s8(*v76.i8);
    v212.i64[0] = 0x8000800080008;
    v212.i64[1] = 0x8000800080008;
    v213.i64[0] = 0x3000300030003;
    v213.i64[1] = 0x3000300030003;
    v214.i64[0] = 0x2000200020002;
    v214.i64[1] = 0x2000200020002;
    if (((7 * v71.i8[0] + 8 * vaddq_s8(vaddq_s8(v73, v72), v74).i8[0] + ((2 * v211.i16[0]) & 8) + vbicq_s8(vmovl_s8(*v57.i8), vceqzq_s16(vandq_s8(v211, v212))).u16[0] + vandq_s8(vceqq_s16(vandq_s8(v211, v213), v214), v212).u16[0]) + 19) >= 0x100)
    {
      *a1 = v11;
      a1[1] = v14;
      v148 = 31;
      a1[2] = v12;
      a1[3] = v13;
      result = 32;
    }

    else
    {
      v215 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v216 = 8 * (a1 & 7);
      if (v216)
      {
        v217 = *v215 & ~(-1 << v216);
      }

      else
      {
        v217 = 0;
      }

      v218 = vextq_s8(v71, 0, 8uLL);
      v219 = vextq_s8(v72, 0, 8uLL);
      v220 = vextq_s8(v73, 0, 8uLL);
      v221 = vextq_s8(v74, 0, 8uLL);
      if (v57.i8[0])
      {
        v222 = (16 * v57.i8[0] + 112) & 0x70;
      }

      else
      {
        v222 = 0;
      }

      *a2 = 32 * v76.i8[0];
      v223 = (v76.i8[0] & 8 | v222 & 0xFFFF807F | (v19.u8[0] << 7)) >> 3;
      v224 = (v223 << v216) | v217;
      if (v216 >= 0x34)
      {
        *v215 = v224;
        v224 = v223 >> (-8 * (a1 & 7u));
      }

      v225 = v216 + 12;
      v226.i64[0] = 0x202020202020202;
      v226.i64[1] = 0x202020202020202;
      v227 = vandq_s8(vbicq_s8(xmmword_29D2F0D30, vmovl_s16(vceqz_s16(vand_s8(*&vmovl_u8(*v76.i8), 0x4000400040004)))), v226);
      v226.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v226.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v228.i64[0] = -1;
      v228.i64[1] = -1;
      v229 = vandq_s8(vshlq_u8(v228, vorrq_s8(v227, v226)), vzip1q_s16(vzip1q_s8(vsubq_s8(v57, v218), vsubq_s8(v57, v219)), vzip1q_s8(vsubq_s8(v57, v220), vsubq_s8(v57, v221))).u32[0]);
      v230 = vmovl_u8(*v227.i8);
      v231 = vpaddq_s16(vshlq_u16(vmovl_u8(*v229.i8), vtrn1q_s16(0, v230)), vmovl_high_u8(v229));
      v232 = vpaddq_s16(v230, vmovl_high_u8(v227));
      v233 = vmovl_u16(*v232.i8);
      v234 = vmovl_high_u16(v232);
      v235 = vpaddq_s32(vshlq_u32(vmovl_u16(*v231.i8), vtrn1q_s32(0, v233)), vshlq_u32(vmovl_high_u16(v231), vtrn1q_s32(0, v234)));
      v236 = vpaddq_s32(v233, v234);
      v237.i64[0] = v235.u32[0];
      v237.i64[1] = v235.u32[1];
      v238 = v237;
      v237.i64[0] = v235.u32[2];
      v237.i64[1] = v235.u32[3];
      v239 = v237;
      v237.i64[0] = v236.u32[0];
      v237.i64[1] = v236.u32[1];
      v240 = v237;
      v237.i64[0] = v236.u32[2];
      v237.i64[1] = v236.u32[3];
      v241 = vpaddq_s64(vshlq_u64(v238, vzip1q_s64(0, v240)), vshlq_u64(v239, vzip1q_s64(0, v237)));
      v242 = vpaddq_s64(v240, v237);
      v243 = (v216 + 12) & 0x3C;
      v244 = (v241.i64[0] << v243) | v224;
      if ((v242.i64[0] + v243) >= 0x40)
      {
        *(v215 + ((v225 >> 3) & 8)) = v244;
        v244 = v241.i64[0] >> -v243;
      }

      v245 = v242.i64[0] + v225;
      v246 = (v242.i64[0] + v225) & 0x3F;
      v247 = v244 | (v241.i64[1] << (v242.i8[0] + v225));
      if ((v246 + v242.i64[1]) >= 0x40)
      {
        *(v215 + ((v245 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v247;
        v247 = v241.i64[1] >> -v246;
        if (!v246)
        {
          v247 = 0;
        }
      }

      v248 = vceqq_s8(v57, v71);
      v249 = v245 + v242.i64[1];
      v250.i64[0] = 0x808080808080808;
      v250.i64[1] = 0x808080808080808;
      v251.i64[0] = -1;
      v251.i64[1] = -1;
      v252 = vandq_s8(vextq_s8(vtstq_s8(v76, v250), 0, 0xFuLL), v57);
      v253.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v253.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v254 = vandq_s8(vshlq_u8(v251, vaddq_s8(v252, v253)), v64);
      v255 = vmovl_u8(*v252.i8);
      v256 = vpaddq_s16(vshlq_u16(vmovl_u8(*v254.i8), vtrn1q_s16(0, v255)), vmovl_high_u8(v254));
      v257 = vpaddq_s16(v255, vmovl_high_u8(v252));
      v258 = vmovl_u16(*v257.i8);
      v259 = vmovl_high_u16(v257);
      v260 = vpaddq_s32(vshlq_u32(vmovl_u16(*v256.i8), vtrn1q_s32(0, v258)), vshlq_u32(vmovl_high_u16(v256), vtrn1q_s32(0, v259)));
      v261 = vpaddq_s32(v258, v259);
      v262.i64[0] = v260.u32[0];
      v262.i64[1] = v260.u32[1];
      v263 = v262;
      v262.i64[0] = v260.u32[2];
      v262.i64[1] = v260.u32[3];
      v264 = v262;
      v262.i64[0] = v261.u32[0];
      v262.i64[1] = v261.u32[1];
      v265 = v262;
      v262.i64[0] = v261.u32[2];
      v262.i64[1] = v261.u32[3];
      v266 = vpaddq_s64(vshlq_u64(v263, vzip1q_s64(0, v265)), vshlq_u64(v264, vzip1q_s64(0, v262)));
      v267 = vpaddq_s64(v265, v262);
      v268 = (v266.i64[0] << v249) | v247;
      if (v267.i64[0] + (v249 & 0x3F) >= 0x40)
      {
        *(v215 + ((v249 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v268;
        v268 = v266.i64[0] >> -(v249 & 0x3F);
        if ((v249 & 0x3F) == 0)
        {
          v268 = 0;
        }
      }

      v269 = vandq_s8(v64, v248);
      v270 = v267.i64[0] + v249;
      v271 = v268 | (v266.i64[1] << v270);
      if ((v270 & 0x3F) + v267.i64[1] >= 0x40)
      {
        *(v215 + ((v270 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v271;
        v271 = v266.i64[1] >> -(v270 & 0x3F);
        if ((v270 & 0x3F) == 0)
        {
          v271 = 0;
        }
      }

      v272 = vceqq_s8(v57, v72);
      v273 = vaddq_s8(v269, v20);
      v274 = v270 + v267.i64[1];
      if (v58)
      {
        v271 |= v59 << v274;
        if ((v274 & 0x3F) >= 0x38)
        {
          *(v215 + ((v274 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v271;
          v271 = v59 >> -(v274 & 0x3F);
        }

        v274 += 8;
      }

      v275 = vandq_s8(v64, v272);
      v276 = vmovl_high_u8(v218);
      v218.i8[0] = 0;
      v277.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v277.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v278.i64[0] = -1;
      v278.i64[1] = -1;
      v279 = vandq_s8(vshlq_u8(v278, vaddq_s8(v218, v277)), v273);
      v280 = vmovl_u8(*v218.i8);
      v281 = vpaddq_s16(vshlq_u16(vmovl_u8(*v279.i8), vtrn1q_s16(0, v280)), vshlq_u16(vmovl_high_u8(v279), vtrn1q_s16(0, v276)));
      v282 = vpaddq_s16(v280, v276);
      v283 = vmovl_u16(*v282.i8);
      v284 = vmovl_high_u16(v282);
      v285 = vpaddq_s32(vshlq_u32(vmovl_u16(*v281.i8), vtrn1q_s32(0, v283)), vshlq_u32(vmovl_high_u16(v281), vtrn1q_s32(0, v284)));
      v286 = vpaddq_s32(v283, v284);
      v287.i64[0] = v285.u32[0];
      v287.i64[1] = v285.u32[1];
      v288 = v287;
      v287.i64[0] = v285.u32[2];
      v287.i64[1] = v285.u32[3];
      v289 = v287;
      v287.i64[0] = v286.u32[0];
      v287.i64[1] = v286.u32[1];
      v290 = v287;
      v287.i64[0] = v286.u32[2];
      v287.i64[1] = v286.u32[3];
      v291 = vpaddq_s64(vshlq_u64(v288, vzip1q_s64(0, v290)), vshlq_u64(v289, vzip1q_s64(0, v287)));
      v292 = vpaddq_s64(v290, v287);
      v293 = (v291.i64[0] << v274) | v271;
      if (v292.i64[0] + (v274 & 0x3F) >= 0x40)
      {
        *(v215 + ((v274 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v293;
        v293 = v291.i64[0] >> -(v274 & 0x3F);
        if ((v274 & 0x3F) == 0)
        {
          v293 = 0;
        }
      }

      v294 = vceqq_s8(v57, v73);
      v295 = vaddq_s8(v21, v275);
      v296 = v292.i64[0] + v274;
      v297 = (v292.i64[0] + v274) & 0x3F;
      v298 = v293 | (v291.i64[1] << v296);
      if ((v296 & 0x3F) + v292.i64[1] >= 0x40)
      {
        *(v215 + ((v296 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v298;
        v298 = v291.i64[1] >> -v297;
        if (!v297)
        {
          v298 = 0;
        }
      }

      v299 = vandq_s8(v64, v294);
      v300 = v296 + v292.i64[1];
      v301.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v301.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v302.i64[0] = -1;
      v302.i64[1] = -1;
      v303 = vandq_s8(vshlq_u8(v302, vaddq_s8(v219, v301)), v295);
      v304 = vmovl_u8(*v219.i8);
      v305 = vmovl_high_u8(v219);
      v306 = vpaddq_s16(vshlq_u16(vmovl_u8(*v303.i8), vtrn1q_s16(0, v304)), vshlq_u16(vmovl_high_u8(v303), vtrn1q_s16(0, v305)));
      v307 = vpaddq_s16(v304, v305);
      v308 = vmovl_u16(*v307.i8);
      v309 = vmovl_high_u16(v307);
      v310 = vpaddq_s32(vshlq_u32(vmovl_u16(*v306.i8), vtrn1q_s32(0, v308)), vshlq_u32(vmovl_high_u16(v306), vtrn1q_s32(0, v309)));
      v311 = vpaddq_s32(v308, v309);
      v312.i64[0] = v310.u32[0];
      v312.i64[1] = v310.u32[1];
      v313 = v312;
      v312.i64[0] = v310.u32[2];
      v312.i64[1] = v310.u32[3];
      v314 = v312;
      v312.i64[0] = v311.u32[0];
      v312.i64[1] = v311.u32[1];
      v315 = v312;
      v312.i64[0] = v311.u32[2];
      v312.i64[1] = v311.u32[3];
      v316 = vpaddq_s64(vshlq_u64(v313, vzip1q_s64(0, v315)), vshlq_u64(v314, vzip1q_s64(0, v312)));
      v317 = vpaddq_s64(v315, v312);
      v318 = (v316.i64[0] << v300) | v298;
      if (v317.i64[0] + (v300 & 0x3F) >= 0x40)
      {
        *(v215 + ((v300 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v318;
        v318 = v316.i64[0] >> -(v300 & 0x3F);
        if ((v300 & 0x3F) == 0)
        {
          v318 = 0;
        }
      }

      v319 = vceqq_s8(v57, v74);
      v320 = vaddq_s8(v22, v299);
      v321 = v317.i64[0] + v300;
      v322 = v318 | (v316.i64[1] << v321);
      if ((v321 & 0x3F) + v317.i64[1] >= 0x40)
      {
        *(v215 + ((v321 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v322;
        v322 = v316.i64[1] >> -(v321 & 0x3F);
        if ((v321 & 0x3F) == 0)
        {
          v322 = 0;
        }
      }

      v323 = vandq_s8(v64, v319);
      v324 = v321 + v317.i64[1];
      v325.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v325.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v326.i64[0] = -1;
      v326.i64[1] = -1;
      v327 = vandq_s8(vshlq_u8(v326, vaddq_s8(v220, v325)), v320);
      v328 = vmovl_u8(*v220.i8);
      v329 = vmovl_high_u8(v220);
      v330 = vpaddq_s16(vshlq_u16(vmovl_u8(*v327.i8), vtrn1q_s16(0, v328)), vshlq_u16(vmovl_high_u8(v327), vtrn1q_s16(0, v329)));
      v331 = vpaddq_s16(v328, v329);
      v332 = vmovl_u16(*v331.i8);
      v333 = vmovl_high_u16(v331);
      v334 = vpaddq_s32(vshlq_u32(vmovl_u16(*v330.i8), vtrn1q_s32(0, v332)), vshlq_u32(vmovl_high_u16(v330), vtrn1q_s32(0, v333)));
      v335 = vpaddq_s32(v332, v333);
      v336.i64[0] = v334.u32[0];
      v336.i64[1] = v334.u32[1];
      v337 = v336;
      v336.i64[0] = v334.u32[2];
      v336.i64[1] = v334.u32[3];
      v338 = v336;
      v336.i64[0] = v335.u32[0];
      v336.i64[1] = v335.u32[1];
      v339 = v336;
      v336.i64[0] = v335.u32[2];
      v336.i64[1] = v335.u32[3];
      v340 = vpaddq_s64(vshlq_u64(v337, vzip1q_s64(0, v339)), vshlq_u64(v338, vzip1q_s64(0, v336)));
      v341 = vpaddq_s64(v339, v336);
      v342 = (v340.i64[0] << v324) | v322;
      if (v341.i64[0] + (v324 & 0x3F) >= 0x40)
      {
        *(v215 + ((v324 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v342;
        v342 = v340.i64[0] >> -(v324 & 0x3F);
        if ((v324 & 0x3F) == 0)
        {
          v342 = 0;
        }
      }

      v343 = vaddq_s8(v25, v323);
      v344 = v341.i64[0] + v324;
      v345 = v342 | (v340.i64[1] << v344);
      if ((v344 & 0x3F) + v341.i64[1] >= 0x40)
      {
        *(v215 + ((v344 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v345;
        v345 = v340.i64[1] >> -(v344 & 0x3F);
        if ((v344 & 0x3F) == 0)
        {
          v345 = 0;
        }
      }

      v346 = v344 + v341.i64[1];
      v347.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v347.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v348.i64[0] = -1;
      v348.i64[1] = -1;
      v349 = vandq_s8(vshlq_u8(v348, vaddq_s8(v221, v347)), v343);
      v350 = vmovl_u8(*v221.i8);
      v351 = vmovl_high_u8(v221);
      v352 = vpaddq_s16(vshlq_u16(vmovl_u8(*v349.i8), vtrn1q_s16(0, v350)), vshlq_u16(vmovl_high_u8(v349), vtrn1q_s16(0, v351)));
      v353 = vpaddq_s16(v350, v351);
      v354 = vmovl_u16(*v353.i8);
      v355 = vmovl_high_u16(v353);
      v356 = vpaddq_s32(vshlq_u32(vmovl_u16(*v352.i8), vtrn1q_s32(0, v354)), vshlq_u32(vmovl_high_u16(v352), vtrn1q_s32(0, v355)));
      v357 = vpaddq_s32(v354, v355);
      v358.i64[0] = v356.u32[0];
      v358.i64[1] = v356.u32[1];
      v359 = v358;
      v358.i64[0] = v356.u32[2];
      v358.i64[1] = v356.u32[3];
      v360 = v358;
      v358.i64[0] = v357.u32[0];
      v358.i64[1] = v357.u32[1];
      v361 = v358;
      v358.i64[0] = v357.u32[2];
      v358.i64[1] = v357.u32[3];
      v362 = vpaddq_s64(vshlq_u64(v359, vzip1q_s64(0, v361)), vshlq_u64(v360, vzip1q_s64(0, v358)));
      v363 = vpaddq_s64(v361, v358);
      v364 = (v362.i64[0] << v346) | v345;
      if (v363.i64[0] + (v346 & 0x3F) > 0x3F)
      {
        *(v215 + ((v346 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v364;
        if ((v346 & 0x3F) != 0)
        {
          v364 = v362.i64[0] >> -(v346 & 0x3F);
        }

        else
        {
          v364 = 0;
        }
      }

      v365 = v363.i64[0] + v346;
      v366 = v364 | (v362.i64[1] << v365);
      if ((v365 & 0x3F) + v363.i64[1] >= 0x40)
      {
        *(v215 + ((v365 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v366;
        v366 = v362.i64[1] >> -(v365 & 0x3F);
        if ((v365 & 0x3F) == 0)
        {
          v366 = 0;
        }
      }

      v367 = v365 + v363.i64[1];
      if ((v367 & 0x3F) != 0)
      {
        *(v215 + ((v367 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v366;
      }

      result = (v367 - v216 + 7) >> 3;
      v148 = *a2 | (result - 1);
    }
  }

  else
  {
    a1->i8[0] = a3->i8[0];
    v148 = 96;
    result = 1;
  }

  *a2 = v148;
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(unint64_t result, uint64_t a2, int8x8_t *a3, char *a4, unsigned int a5, unsigned int a6, int8x8_t a7, double a8, int8x8_t a9)
{
  v9 = a6;
  v10 = a5;
  v12 = a3;
  v14 = result;
  if (a5 && a6)
  {
    if (a6 >= 2)
    {
      a6 = 2;
    }

    if (a5 >= 4)
    {
      a5 = 4;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(a3, a4, result, a2, a5, a6, a7, a8, a9);
    v12 = (v12 + result);
  }

  else
  {
    *a4 = 0;
  }

  v15 = 2 * a2;
  v16 = v9 - 2;
  if (v10 && v9 >= 3)
  {
    if (v16 >= 2)
    {
      v17 = 2;
    }

    else
    {
      v17 = v9 - 2;
    }

    if (v10 >= 4)
    {
      v18 = 4;
    }

    else
    {
      v18 = v10;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v12, a4 + 1, (v14 + v15), a2, v18, v17, a7, a8, a9);
    v12 = (v12 + result);
  }

  else
  {
    a4[1] = 0;
  }

  v19 = v10 - 4;
  if (v10 >= 5 && v9)
  {
    if (v9 >= 2)
    {
      v20 = 2;
    }

    else
    {
      v20 = v9;
    }

    if (v19 >= 4)
    {
      v21 = 4;
    }

    else
    {
      v21 = v10 - 4;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v12, a4 + 2, v14 + 2, a2, v21, v20, a7, a8, a9);
    v12 = (v12 + result);
  }

  else
  {
    a4[2] = 0;
    if (v10 < 5)
    {
      goto LABEL_37;
    }
  }

  if (v9 >= 3)
  {
    if (v16 >= 2)
    {
      v22 = 2;
    }

    else
    {
      v22 = v9 - 2;
    }

    if (v19 >= 4)
    {
      v23 = 4;
    }

    else
    {
      v23 = v10 - 4;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v12, a4 + 3, (v14 + v15 + 16), a2, v23, v22, a7, a8, a9);
    v12 = (v12 + result);
    v24 = v9 - 4;
    goto LABEL_38;
  }

LABEL_37:
  a4[3] = 0;
  v24 = v9 - 4;
  if (!v10)
  {
    goto LABEL_46;
  }

LABEL_38:
  if (v9 < 5)
  {
LABEL_46:
    a4[4] = 0;
    v27 = v9 - 6;
    if (!v10)
    {
      goto LABEL_56;
    }

    goto LABEL_47;
  }

  if (v24 >= 2)
  {
    v25 = 2;
  }

  else
  {
    v25 = v24;
  }

  if (v10 >= 4)
  {
    v26 = 4;
  }

  else
  {
    v26 = v10;
  }

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v12, a4 + 4, (v14 + 4 * a2), a2, v26, v25, a7, a8, a9);
  v12 = (v12 + result);
  v27 = v9 - 6;
LABEL_47:
  if (v9 >= 7)
  {
    if (v27 >= 2)
    {
      v28 = 2;
    }

    else
    {
      v28 = v27;
    }

    if (v10 >= 4)
    {
      v29 = 4;
    }

    else
    {
      v29 = v10;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v12, a4 + 5, (v14 + 6 * a2), a2, v29, v28, a7, a8, a9);
    v12 = (v12 + result);
    if (v10 < 5)
    {
      goto LABEL_65;
    }

    goto LABEL_57;
  }

LABEL_56:
  a4[5] = 0;
  if (v10 < 5)
  {
    goto LABEL_65;
  }

LABEL_57:
  if (v9 >= 5)
  {
    if (v24 >= 2)
    {
      v30 = 2;
    }

    else
    {
      v30 = v24;
    }

    if (v19 >= 4)
    {
      v31 = 4;
    }

    else
    {
      v31 = v10 - 4;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v12, a4 + 6, (v14 + 4 * a2 + 16), a2, v31, v30, a7, a8, a9);
    v12 = (v12 + result);
    goto LABEL_66;
  }

LABEL_65:
  a4[6] = 0;
  if (v10 < 5)
  {
LABEL_76:
    a4[7] = 0;
    return result;
  }

LABEL_66:
  if (v9 < 7)
  {
    goto LABEL_76;
  }

  if (v27 >= 2)
  {
    v32 = 2;
  }

  else
  {
    v32 = v27;
  }

  if (v19 >= 4)
  {
    v33 = 4;
  }

  else
  {
    v33 = v10 - 4;
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v12, a4 + 7, (v14 + 6 * a2 + 16), a2, v33, v32, a7, a8, a9);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(int8x16_t *a1, uint64_t a2, uint64_t a3, unsigned int a4, double a5, int8x8_t a6)
{
  v10 = 8 * (a3 & 7);
  v11 = a3 & 0xFFFFFFFFFFFFFFF8;
  v12 = v10 + 12;
  v13 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v10;
  if (v10 >= 0x35)
  {
    v13 |= *(v11 + 8) << (-8 * (a3 & 7u));
  }

  v14 = (8 * (a3 & 7)) | 0x100;
  v15 = (a4 >> 5) | (8 * v13);
  v16 = vdupq_n_s8(v15 & 0xF);
  v17.i64[0] = 0x303030303030303;
  v17.i64[1] = 0x303030303030303;
  a6.i32[0] = v15 & 0xF;
  v18 = vand_s8(a6, 0x4000400040004);
  v19 = vandq_s8(v16, v17);
  v20 = vbicq_s8(vdupq_n_s8(((v13 >> 1) & 7) + 1), vceqq_s8(v19, v17));
  v17.i64[0] = 0x202020202020202;
  v17.i64[1] = 0x202020202020202;
  v21 = vandq_s8(vbicq_s8(xmmword_29D2F0D30, vmovl_s16(vceqz_s16(vdup_lane_s16(v18, 0)))), v17);
  if (vmaxvq_s8(v21) < 1)
  {
    v29 = 0;
    v52.i64[0] = -1;
    v52.i64[1] = -1;
    v48 = v20;
    v47 = v20;
    v46 = v20;
    v51.i64[0] = -1;
    v51.i64[1] = -1;
    v45 = v20;
    v50.i64[0] = -1;
    v50.i64[1] = -1;
    v49.i64[0] = -1;
    v49.i64[1] = -1;
  }

  else
  {
    v22 = vmovl_u8(*&vpaddq_s8(v21, v21));
    v23 = vmovl_u16(*&vpaddq_s16(v22, v22));
    v24 = vpaddq_s32(v23, v23).u64[0];
    v25.i64[0] = v24;
    v25.i64[1] = HIDWORD(v24);
    v26 = v25;
    v27 = vaddvq_s64(v25);
    v28 = v27 <= 0x80 && v14 >= v27 + v12;
    v29 = !v28;
    v30 = 0uLL;
    if (v28)
    {
      v31 = vaddq_s64(vzip1q_s64(0, v26), vdupq_n_s64(v12 & 0x3C));
      v32 = (v11 + ((v12 >> 3) & 8));
      v30 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v32, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v31)), vshlq_u64(vdupq_lane_s64(v32->i64[0], 0), vnegq_s64(v31)));
      if (v27 + (v12 & 0x3C) >= 0x81)
      {
        v30 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v32[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v31)), vshlq_u64(vdupq_laneq_s64(v32[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v31))), v30);
      }

      v12 += v27;
    }

    v33 = vzip1_s32(*v23.i8, *&vextq_s8(v23, v23, 8uLL));
    v34.i64[0] = v33.u32[0];
    v34.i64[1] = v33.u32[1];
    v35 = vshlq_u64(v30, vnegq_s64(v34));
    v36 = vuzp1q_s32(vzip1q_s64(v30, v35), vzip2q_s64(v30, v35));
    v37 = vshlq_u32(v36, vnegq_s32((*&v22 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v38 = vuzp1q_s16(vzip1q_s32(v36, v37), vzip2q_s32(v36, v37));
    v39 = vzip1q_s16(v38, vshlq_u16(v38, vnegq_s16(vmovl_u8(vuzp1_s8(*v21.i8, *v16.i8)))));
    *v39.i8 = vmovn_s16(v39);
    v36.i64[0] = 0x101010101010101;
    v36.i64[1] = 0x101010101010101;
    v40 = vshlq_s8(v36, v21);
    v36.i64[0] = -1;
    v36.i64[1] = -1;
    v40.i64[0] = vandq_s8(vaddq_s8(v40, v36), v39).u64[0];
    v41 = vdupq_lane_s8(*v40.i8, 0);
    v42 = vdupq_lane_s8(*v40.i8, 1);
    v43 = vdupq_lane_s8(*v40.i8, 2);
    v44 = vdupq_lane_s8(*v40.i8, 3);
    v45 = vsubq_s8(v20, v41);
    v46 = vsubq_s8(v20, v42);
    v47 = vsubq_s8(v20, v43);
    v48 = vsubq_s8(v20, v44);
    v49 = vceqzq_s8(v41);
    v50 = vceqzq_s8(v42);
    v51 = vceqzq_s8(v43);
    v52 = vceqzq_s8(v44);
  }

  v53.i64[0] = 0x707070707070707;
  v53.i64[1] = 0x707070707070707;
  v54 = 0uLL;
  v55 = vandq_s8(vextq_s8(vcgtq_u8(v16, v53), 0, 0xFuLL), v20);
  v56 = vmovl_u8(*&vpaddq_s8(v55, v55));
  v57 = vmovl_u16(*&vpaddq_s16(v56, v56));
  v58 = vpaddq_s32(v57, v57).u64[0];
  v59.i64[0] = v58;
  v59.i64[1] = HIDWORD(v58);
  v60 = v59;
  v61 = vaddvq_s64(v59);
  v62 = v61 + v12;
  if (v61 <= 0x80 && v14 >= v62)
  {
    v64 = v12 & 0x3F;
    v65 = vaddq_s64(vzip1q_s64(0, v60), vdupq_n_s64(v64));
    v66 = (v11 + 8 * (v12 >> 6));
    v54 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v66, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v65)), vshlq_u64(vdupq_lane_s64(v66->i64[0], 0), vnegq_s64(v65)));
    if (v61 + v64 >= 0x81)
    {
      v54 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v66[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v65)), vshlq_u64(vdupq_laneq_s64(v66[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v65))), v54);
    }

    v12 = v62;
  }

  else
  {
    v29 = 1;
  }

  v67 = vandq_s8(v45, xmmword_29D2F0D40);
  v68 = (a4 >> 5) & 3;
  if (v68 != 2)
  {
    v73 = 0;
    v70 = 0;
    v74 = v12;
    goto LABEL_36;
  }

  v69 = v12 + 4;
  if (v14 < v12 + 4)
  {
    v70 = 0;
    v69 = v12;
LABEL_35:
    v73 = 0;
    v29 = 1;
    v74 = v69;
    goto LABEL_36;
  }

  v75 = (v11 + 8 * (v12 >> 6));
  v76 = *v75 >> v12;
  if ((v12 & 0x3F) >= 0x3D)
  {
    v76 |= v75[1] << -(v12 & 0x3F);
  }

  v70 = (v76 << 28) >> 28;
  v74 = v12 + 8;
  if (v14 < v12 + 8)
  {
    goto LABEL_35;
  }

  v71 = (v11 + 8 * (v69 >> 6));
  v72 = *v71 >> v69;
  if ((v69 & 0x3F) >= 0x3D)
  {
    v72 |= v71[1] << -(v69 & 0x3F);
  }

  v73 = (v72 << 28) >> 28;
LABEL_36:
  v77 = vandq_s8(v46, xmmword_29D2F0D50);
  v67.i8[0] = 0;
  v78 = vmovl_u8(*&vpaddq_s8(v67, v67));
  v79 = vmovl_u16(*&vpaddq_s16(v78, v78));
  v80 = vpaddq_s32(v79, v79).u64[0];
  v81.i64[0] = v80;
  v81.i64[1] = HIDWORD(v80);
  v82 = v81;
  v83 = vaddvq_s64(v81);
  v84 = v83 + v74;
  v85 = 0uLL;
  if (v83 <= 0x80 && v14 >= v84)
  {
    v88 = v74 & 0x3F;
    v89 = vaddq_s64(vzip1q_s64(0, v82), vdupq_n_s64(v88));
    v90 = (v11 + 8 * (v74 >> 6));
    v87 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v90, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v89)), vshlq_u64(vdupq_lane_s64(v90->i64[0], 0), vnegq_s64(v89)));
    if (v83 + v88 >= 0x81)
    {
      v87 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v90[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v89)), vshlq_u64(vdupq_laneq_s64(v90[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v89))), v87);
    }

    v74 = v84;
  }

  else
  {
    v29 = 1;
    v87 = 0uLL;
  }

  v200[1] = v9;
  v200[2] = v8;
  v200[3] = v7;
  v200[4] = v6;
  v91 = vandq_s8(v47, xmmword_29D2F0D50);
  v92 = vmovl_u8(*&vpaddq_s8(v77, v77));
  v93 = vmovl_u16(*&vpaddq_s16(v92, v92));
  v94 = vpaddq_s32(v93, v93).u64[0];
  v95.i64[0] = v94;
  v95.i64[1] = HIDWORD(v94);
  v96 = v95;
  v97 = vaddvq_s64(v95);
  if (v97 >= 0x81)
  {
    v29 = 1;
  }

  else
  {
    v98 = vzip1_s32(*v93.i8, *&vextq_s8(v93, v93, 8uLL));
    v99.i64[0] = v98.u32[0];
    v99.i64[1] = v98.u32[1];
    v100 = v99;
    v101 = *&v92 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL);
    v102 = v97 + v74;
    if (v14 >= v97 + v74)
    {
      v104 = v74 & 0x3F;
      v105 = vaddq_s64(vzip1q_s64(0, v96), vdupq_n_s64(v104));
      v106 = (v11 + 8 * (v74 >> 6));
      v103 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v106, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v105)), vshlq_u64(vdupq_lane_s64(v106->i64[0], 0), vnegq_s64(v105)));
      if (v97 + v104 >= 0x81)
      {
        v103 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v106[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v105)), vshlq_u64(vdupq_laneq_s64(v106[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v105))), v103);
      }

      v74 = v102;
    }

    else
    {
      v103 = 0uLL;
      v29 = 1;
    }

    v107 = vshlq_u64(v103, vnegq_s64(v100));
    v108 = vuzp1q_s32(vzip1q_s64(v103, v107), vzip2q_s64(v103, v107));
    v109 = vshlq_u32(v108, vnegq_s32(v101));
    v110 = vuzp1q_s16(vzip1q_s32(v108, v109), vzip2q_s32(v108, v109));
    v111 = vshlq_u16(v110, vnegq_s16((*&v77 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
    v85 = vuzp1q_s8(vzip1q_s16(v110, v111), vzip2q_s16(v110, v111));
  }

  v112 = vandq_s8(v48, xmmword_29D2F0D50);
  v113 = vmovl_u8(*&vpaddq_s8(v91, v91));
  v114 = vmovl_u16(*&vpaddq_s16(v113, v113));
  v115 = vpaddq_s32(v114, v114).u64[0];
  v116.i64[0] = v115;
  v116.i64[1] = HIDWORD(v115);
  v117 = v116;
  v118 = vaddvq_s64(v116);
  if (v118 >= 0x81)
  {
    v29 = 1;
    v125 = 0uLL;
  }

  else
  {
    v119 = vzip1_s32(*v114.i8, *&vextq_s8(v114, v114, 8uLL));
    v120.i64[0] = v119.u32[0];
    v120.i64[1] = v119.u32[1];
    v121 = v120;
    v122 = *&v113 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL);
    v123 = v118 + v74;
    if (v14 >= v118 + v74)
    {
      v126 = v74 & 0x3F;
      v127 = vaddq_s64(vzip1q_s64(0, v117), vdupq_n_s64(v126));
      v128 = (v11 + 8 * (v74 >> 6));
      v124 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v128, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v127)), vshlq_u64(vdupq_lane_s64(v128->i64[0], 0), vnegq_s64(v127)));
      if (v118 + v126 >= 0x81)
      {
        v124 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v128[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v127)), vshlq_u64(vdupq_laneq_s64(v128[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v127))), v124);
      }

      v74 = v123;
    }

    else
    {
      v124 = 0uLL;
      v29 = 1;
    }

    v129 = vshlq_u64(v124, vnegq_s64(v121));
    v130 = vuzp1q_s32(vzip1q_s64(v124, v129), vzip2q_s64(v124, v129));
    v131 = vshlq_u32(v130, vnegq_s32(v122));
    v132 = vuzp1q_s16(vzip1q_s32(v130, v131), vzip2q_s32(v130, v131));
    v133 = vshlq_u16(v132, vnegq_s16((*&v91 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
    v125 = vuzp1q_s8(vzip1q_s16(v132, v133), vzip2q_s16(v132, v133));
  }

  v134 = vmovl_u8(*&vpaddq_s8(v112, v112));
  v135 = vmovl_u16(*&vpaddq_s16(v134, v134));
  v136 = vpaddq_s32(v135, v135).u64[0];
  v137.i64[0] = v136;
  v137.i64[1] = HIDWORD(v136);
  v138 = v137;
  v139 = vaddvq_s64(v137);
  if (v139 >= 0x81 || v14 < v139 + v74)
  {
    goto LABEL_66;
  }

  v140 = vaddq_s64(vzip1q_s64(0, v138), vdupq_n_s64(v74 & 0x3F));
  v141 = (v11 + 8 * (v74 >> 6));
  v142 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v141, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v140)), vshlq_u64(vdupq_lane_s64(v141->i64[0], 0), vnegq_s64(v140)));
  if (v139 + (v74 & 0x3F) >= 0x81)
  {
    v142 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v141[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v140)), vshlq_u64(vdupq_laneq_s64(v141[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v140))), v142);
  }

  if ((v29 & 1) != 0 || (v143 = (a4 & 0x1F) + 1, 8 * ((a3 & 7) + v143) - (v139 + v74) >= 9))
  {
LABEL_66:
    v143 = 0;
    v200[0] |= 255 << (8 * ((v200 + 7) & 7u));
    a1->i16[0] = 0;
    *(a1->i16 + a2) = 0;
  }

  else
  {
    v145 = vzip1_s32(*v57.i8, *&vextq_s8(v57, v57, 8uLL));
    v146 = vzip1_s32(*v79.i8, *&vextq_s8(v79, v79, 8uLL));
    v147.i64[0] = v145.u32[0];
    v147.i64[1] = v145.u32[1];
    v148 = v147;
    v147.i64[0] = v146.u32[0];
    v147.i64[1] = v146.u32[1];
    v149 = vshlq_u64(v54, vnegq_s64(v148));
    v150 = vshlq_u64(v87, vnegq_s64(v147));
    v151 = vuzp1q_s32(vzip1q_s64(v54, v149), vzip2q_s64(v54, v149));
    v152 = vuzp1q_s32(vzip1q_s64(v87, v150), vzip2q_s64(v87, v150));
    v153 = vshlq_u32(v151, vnegq_s32((*&v56 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v154 = vshlq_u32(v152, vnegq_s32((*&v78 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v155 = vuzp1q_s16(vzip1q_s32(v151, v153), vzip2q_s32(v151, v153));
    v156 = vuzp1q_s16(vzip1q_s32(v152, v154), vzip2q_s32(v152, v154));
    v157 = vshlq_u16(v155, vnegq_s16((*&v55 & __PAIR128__(0xF0FFF0FFF0FFF0FFLL, 0xF0FFF0FFF0FFF0FFLL))));
    v158 = vshlq_u16(v156, vnegq_s16((*&v67 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF0000))));
    v159 = vzip2q_s16(v155, v157);
    v160 = vzip1q_s16(v155, v157);
    v157.i64[0] = 0x808080808080808;
    v157.i64[1] = 0x808080808080808;
    v161 = vzip2q_s16(v156, v158);
    v162 = vzip1q_s16(v156, v158);
    v158.i64[0] = 0x808080808080808;
    v158.i64[1] = 0x808080808080808;
    v163 = v13 >> 4;
    v164 = vuzp1q_s8(v160, v159);
    v159.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v159.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v165 = vuzp1q_s8(v162, v161);
    v161.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v161.i64[1] = 0xF8F8F8F8F8F8F8F8;
    *v150.i8 = vzip1_s32(*v135.i8, *&vextq_s8(v135, v135, 8uLL));
    v166.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v166.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v167.i64[0] = 0x808080808080808;
    v167.i64[1] = 0x808080808080808;
    v168 = vshlq_s8(v164, vsubq_s8(v157, v55));
    v169 = vaddq_s8(v67, v161);
    v170 = vshlq_s8(v165, vsubq_s8(v158, v67));
    v147.i64[0] = v150.u32[0];
    v147.i64[1] = v150.u32[1];
    v171 = vshlq_s8(v168, vaddq_s8(v55, v159));
    v172 = vshlq_s8(v170, v169);
    v173 = vshlq_s8(vshlq_s8(v85, vsubq_s8(v158, v77)), vaddq_s8(v77, v161));
    v174 = vshlq_s8(vshlq_s8(v125, vsubq_s8(v158, v91)), vaddq_s8(v91, v161));
    v175 = vshlq_u64(v142, vnegq_s64(v147));
    v176 = vuzp1q_s32(vzip1q_s64(v142, v175), vzip2q_s64(v142, v175));
    v177 = vshlq_u32(v176, vnegq_s32((*&v134 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v178 = vuzp1q_s16(vzip1q_s32(v176, v177), vzip2q_s32(v176, v177));
    v179 = vshlq_u16(v178, vnegq_s16((*&v112 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
    v180 = vshlq_s8(vshlq_s8(vuzp1q_s8(vzip1q_s16(v178, v179), vzip2q_s16(v178, v179)), vsubq_s8(v167, v112)), vaddq_s8(v112, v166));
    if (v68 == 2)
    {
      v181.i64[0] = 0xFFFF0000FFFF0000;
      v181.i64[1] = 0xFFFF0000FFFF0000;
      v182 = vmlaq_s8(vandq_s8(vdupq_n_s8(v73), v181), vdupq_n_s8(v70), xmmword_29D2F0D60);
      v172 = vaddq_s8(v172, v182);
      v173 = vaddq_s8(vaddq_s8(vdupq_n_s8(2 * v73), v182), v173);
      v174 = vaddq_s8(vaddq_s8(vdupq_n_s8(4 * v70), v182), v174);
      v180 = vaddq_s8(vaddq_s8(vdupq_n_s8(4 * v70 + 2 * v73), v182), v180);
    }

    v183.i64[0] = vdupq_n_s8(v163).u64[0];
    v184 = vaddq_s8(vandq_s8(v171, v49), v172);
    v185 = vdupq_lane_s8(*v171.i8, 0);
    v186 = vsubq_s8(v184, vandq_s8(v185, v49));
    v187 = vsubq_s8(v173, vandq_s8(v185, v50));
    v188 = vsubq_s8(v174, vandq_s8(v185, v51));
    v189 = vsubq_s8(v180, vandq_s8(v185, v52));
    v190.i64[0] = 0x101010101010101;
    v190.i64[1] = 0x101010101010101;
    if (vaddlvq_s8(vceqq_s8(v19, v190)))
    {
      v191 = vandq_s8(v16, v190);
      v192 = vnegq_s8(v191);
      v193 = v186;
      v193.i8[0] = v186.i8[7];
      v193.i8[7] = v186.i8[0];
      v194 = vorrq_s8(vandq_s8(v193, v192), vandq_s8(v186, vceqzq_s8(v191)));
      v195 = vaddq_s8(vandq_s8(vqtbl1q_s8(v194, xmmword_29D2F0D70), v192), v194);
      v186.i64[0] = vaddq_s8(vandq_s8(vqtbl1q_s8(v195, xmmword_29D2F0D80), v192), v195).u64[0];
      v196 = vaddq_s8(vandq_s8(vqtbl1q_s8(v187, xmmword_29D2F0D90), v192), v187);
      v187.i64[0] = vaddq_s8(vandq_s8(vqtbl1q_s8(v196, xmmword_29D2F0DA0), v192), v196).u64[0];
      v197 = vaddq_s8(vandq_s8(vqtbl1q_s8(v188, xmmword_29D2F0DB0), v192), v188);
      v188.i64[0] = vaddq_s8(vandq_s8(vqtbl1q_s8(v197, xmmword_29D2F0DC0), v192), v197).u64[0];
      v198 = vaddq_s8(vandq_s8(vqtbl1q_s8(v189, xmmword_29D2F0DD0), v192), v189);
      v189.i64[0] = vaddq_s8(vandq_s8(vqtbl1q_s8(v198, xmmword_29D2F0DE0), v192), v198).u64[0];
    }

    v186.i64[1] = v183.i64[0];
    v199.i64[0] = v183.i64[0];
    v199.i64[1] = v187.i64[0];
    v188.i64[1] = v189.i64[0];
    *a1 = vaddq_s8(v199, v186);
    v183.i64[1] = v183.i64[0];
    *(a1 + a2) = vaddq_s8(v188, v183);
  }

  return v143;
}

void *AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(void *result, uint64_t a2, void *a3, char *a4, unsigned int a5, unsigned int a6)
{
  v6 = 0;
  if (a5 && a6)
  {
    v7 = result[1];
    v8 = *(result + a2);
    v9 = *(result + a2 + 8);
    *a3 = *result;
    a3[1] = v7;
    a3[2] = v8;
    a3[3] = v9;
    a3 += 4;
    v6 = 31;
  }

  v10 = 0;
  *a4 = v6;
  if (a5 >= 3 && a6)
  {
    v11 = result[3];
    v12 = (result + a2 + 16);
    v13 = *v12;
    v14 = v12[1];
    *a3 = result[2];
    a3[1] = v11;
    a3[2] = v13;
    a3[3] = v14;
    a3 += 4;
    v10 = 31;
  }

  v15 = 0;
  v16 = 2 * a2;
  a4[1] = v10;
  if (a5 && a6 >= 3)
  {
    v17 = *(result + v16 + 8);
    v18 = (result + v16 + a2);
    v19 = *v18;
    v20 = v18[1];
    *a3 = *(result + 2 * a2);
    a3[1] = v17;
    a3[2] = v19;
    a3[3] = v20;
    a3 += 4;
    v15 = 31;
  }

  v21 = 0;
  a4[2] = v15;
  if (a5 >= 3 && a6 >= 3)
  {
    v22 = *(result + v16 + 24);
    v23 = (result + v16 + a2 + 16);
    v24 = *v23;
    v25 = v23[1];
    *a3 = *(result + v16 + 16);
    a3[1] = v22;
    a3[2] = v24;
    a3[3] = v25;
    a3 += 4;
    v21 = 31;
  }

  v26 = 0;
  a4[3] = v21;
  if (a5 >= 5 && a6)
  {
    v27 = result[5];
    v28 = (result + a2 + 32);
    v29 = *v28;
    v30 = v28[1];
    *a3 = result[4];
    a3[1] = v27;
    a3[2] = v29;
    a3[3] = v30;
    a3 += 4;
    v26 = 31;
  }

  v31 = 0;
  a4[4] = v26;
  if (a5 >= 7 && a6)
  {
    v32 = result[7];
    v33 = (result + a2 + 48);
    v34 = *v33;
    v35 = v33[1];
    *a3 = result[6];
    a3[1] = v32;
    a3[2] = v34;
    a3[3] = v35;
    a3 += 4;
    v31 = 31;
  }

  v36 = 0;
  a4[5] = v31;
  if (a5 >= 5 && a6 >= 3)
  {
    v37 = *(result + v16 + 40);
    v38 = (result + v16 + a2 + 32);
    v39 = *v38;
    v40 = v38[1];
    *a3 = *(result + v16 + 32);
    a3[1] = v37;
    a3[2] = v39;
    a3[3] = v40;
    a3 += 4;
    v36 = 31;
  }

  v41 = 0;
  a4[6] = v36;
  if (a5 >= 7 && a6 >= 3)
  {
    v42 = result + v16;
    v43 = *(v42 + 6);
    v44 = *(v42 + 7);
    v45 = &v42[a2 + 48];
    v46 = *v45;
    v47 = *(v45 + 1);
    *a3 = v43;
    a3[1] = v44;
    a3[2] = v46;
    a3[3] = v47;
    v41 = 31;
  }

  a4[7] = v41;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(uint64_t a1, uint64_t a2, unsigned __int8 *a3, __n128 a4, double a5)
{
  v8 = *a3;
  if (v8 == 96)
  {
    a4 = vld1q_dup_s8(a2);
    *a1 = a4;
    *(a1 + 64) = a4;
    v9 = 1;
  }

  else if (v8 == 31)
  {
    a4.n128_u64[0] = *a2;
    a5 = *(a2 + 8);
    v10 = *(a2 + 16);
    v11 = *(a2 + 24);
    *a1 = *a2;
    *(a1 + 8) = a5;
    *(a1 + 64) = v10;
    *(a1 + 72) = v11;
    v9 = 32;
  }

  else if (*a3)
  {
    v9 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(a1, 64, a2, v8, a4.n128_f64[0], *&a5);
  }

  else
  {
    v9 = 0;
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
  }

  v12 = a2 + v9;
  v13 = a3[1];
  if (a3[1])
  {
    if (v13 == 96)
    {
      a4 = vld1q_dup_s8(v12);
      *(a1 + 16) = a4;
      *(a1 + 80) = a4;
      v16 = 1;
    }

    else if (v13 == 31)
    {
      a4.n128_u64[0] = *v12;
      a5 = *(v12 + 8);
      v14 = *(v12 + 16);
      v15 = *(v12 + 24);
      *(a1 + 16) = *v12;
      *(a1 + 24) = a5;
      *(a1 + 80) = v14;
      *(a1 + 88) = v15;
      v16 = 32;
    }

    else
    {
      v16 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((a1 + 16), 64, v12, v13, a4.n128_f64[0], *&a5);
    }
  }

  else
  {
    v16 = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
  }

  v17 = v12 + v16;
  v18 = a3[2];
  if (a3[2])
  {
    if (v18 == 96)
    {
      a4 = vld1q_dup_s8(v17);
      *(a1 + 128) = a4;
      *(a1 + 192) = a4;
      v21 = 1;
    }

    else if (v18 == 31)
    {
      a4.n128_u64[0] = *v17;
      a5 = *(v17 + 8);
      v19 = *(v17 + 16);
      v20 = *(v17 + 24);
      *(a1 + 128) = *v17;
      *(a1 + 136) = a5;
      *(a1 + 192) = v19;
      *(a1 + 200) = v20;
      v21 = 32;
    }

    else
    {
      v21 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((a1 + 128), 64, v17, v18, a4.n128_f64[0], *&a5);
    }
  }

  else
  {
    v21 = 0;
    *(a1 + 128) = 0;
    *(a1 + 136) = 0;
    *(a1 + 192) = 0;
    *(a1 + 200) = 0;
  }

  v22 = v17 + v21;
  v23 = a3[3];
  if (a3[3])
  {
    if (v23 == 96)
    {
      a4 = vld1q_dup_s8(v22);
      *(a1 + 144) = a4;
      *(a1 + 208) = a4;
      v26 = 1;
    }

    else if (v23 == 31)
    {
      a4.n128_u64[0] = *v22;
      a5 = *(v22 + 8);
      v24 = *(v22 + 16);
      v25 = *(v22 + 24);
      *(a1 + 144) = *v22;
      *(a1 + 152) = a5;
      *(a1 + 208) = v24;
      *(a1 + 216) = v25;
      v26 = 32;
    }

    else
    {
      v26 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((a1 + 144), 64, v22, v23, a4.n128_f64[0], *&a5);
    }
  }

  else
  {
    v26 = 0;
    *(a1 + 144) = 0;
    *(a1 + 152) = 0;
    *(a1 + 208) = 0;
    *(a1 + 216) = 0;
  }

  v27 = v22 + v26;
  v28 = a3[4];
  if (a3[4])
  {
    if (v28 == 96)
    {
      a4 = vld1q_dup_s8(v27);
      *(a1 + 32) = a4;
      *(a1 + 96) = a4;
      v31 = 1;
    }

    else if (v28 == 31)
    {
      a4.n128_u64[0] = *v27;
      a5 = *(v27 + 8);
      v29 = *(v27 + 16);
      v30 = *(v27 + 24);
      *(a1 + 32) = *v27;
      *(a1 + 40) = a5;
      *(a1 + 96) = v29;
      *(a1 + 104) = v30;
      v31 = 32;
    }

    else
    {
      v31 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((a1 + 32), 64, v27, v28, a4.n128_f64[0], *&a5);
    }
  }

  else
  {
    v31 = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
  }

  v32 = v27 + v31;
  v33 = a3[5];
  if (a3[5])
  {
    if (v33 == 96)
    {
      a4 = vld1q_dup_s8(v32);
      *(a1 + 48) = a4;
      *(a1 + 112) = a4;
      v36 = 1;
    }

    else if (v33 == 31)
    {
      a4.n128_u64[0] = *v32;
      a5 = *(v32 + 8);
      v34 = *(v32 + 16);
      v35 = *(v32 + 24);
      *(a1 + 48) = *v32;
      *(a1 + 56) = a5;
      *(a1 + 112) = v34;
      *(a1 + 120) = v35;
      v36 = 32;
    }

    else
    {
      v36 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((a1 + 48), 64, v32, v33, a4.n128_f64[0], *&a5);
    }
  }

  else
  {
    v36 = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
  }

  v37 = v32 + v36;
  v38 = a3[6];
  if (!a3[6])
  {
    result = 0;
    *(a1 + 160) = 0;
    *(a1 + 168) = 0;
    *(a1 + 224) = 0;
    *(a1 + 232) = 0;
    v42 = a3[7];
    if (a3[7])
    {
      goto LABEL_51;
    }

    goto LABEL_56;
  }

  if (v38 == 96)
  {
    a4 = vld1q_dup_s8(v37);
    *(a1 + 160) = a4;
    *(a1 + 224) = a4;
    result = 1;
    v42 = a3[7];
    if (!a3[7])
    {
      goto LABEL_56;
    }

    goto LABEL_51;
  }

  if (v38 != 31)
  {
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((a1 + 160), 64, v37, v38, a4.n128_f64[0], *&a5);
    v42 = a3[7];
    if (a3[7])
    {
      goto LABEL_51;
    }

LABEL_56:
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
    *(a1 + 240) = 0;
    *(a1 + 248) = 0;
    return result;
  }

  a4.n128_u64[0] = *v37;
  a5 = *(v37 + 8);
  v39 = *(v37 + 16);
  v40 = *(v37 + 24);
  *(a1 + 160) = *v37;
  *(a1 + 168) = a5;
  *(a1 + 224) = v39;
  *(a1 + 232) = v40;
  result = 32;
  v42 = a3[7];
  if (!a3[7])
  {
    goto LABEL_56;
  }

LABEL_51:
  v43 = v37 + result;
  if (v42 == 96)
  {
    v47 = vld1q_dup_s8(v43);
    *(a1 + 176) = v47;
    *(a1 + 240) = v47;
  }

  else if (v42 == 31)
  {
    v44 = *(v43 + 8);
    v45 = *(v43 + 16);
    v46 = *(v43 + 24);
    *(a1 + 176) = *v43;
    *(a1 + 184) = v44;
    *(a1 + 240) = v45;
    *(a1 + 248) = v46;
  }

  else
  {

    return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((a1 + 176), 64, v43, v42, a4.n128_f64[0], *&a5);
  }

  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(int8x8_t *a1, char *a2, int8x8_t *a3, uint64_t a4, int a5, int a6, int8x8_t a7, double a8, int8x8_t a9)
{
  v12 = *a3;
  v11 = a3[1];
  v14 = *(a3 + a4);
  v13 = *(&a3[1] + a4);
  *v15.i8 = *a3;
  v15.u64[1] = *a3;
  v16.i64[0] = v11;
  v16.i64[1] = v11;
  v17.i64[0] = v14;
  v17.i64[1] = v14;
  v18.i64[0] = v13;
  v18.i64[1] = v13;
  v19 = vdupq_lane_s8(*a3, 0);
  v20 = vsubq_s8(v15, v19);
  v21 = vsubq_s8(v16, v19);
  v22 = vsubq_s8(v17, v19);
  a7.i8[0] = vmaxvq_s8(v20);
  a9.i8[0] = vminvq_s8(v20);
  v23 = vdupq_lane_s8(a7, 0);
  v24 = vdupq_lane_s8(a9, 0);
  v25 = vsubq_s8(v18, v19);
  v26 = vzip1q_s8(v23, v24);
  v27.i64[0] = 0x808080808080808;
  v27.i64[1] = 0x808080808080808;
  v28 = vsubq_s8(v27, vclsq_s8(v26));
  v29 = vbicq_s8(v28, vceqzq_s8(v26));
  v30 = vpmaxq_s8(v29, v29);
  v28.i8[0] = vmaxvq_s8(v21);
  v9.i8[0] = vminvq_s8(v21);
  v31 = vdupq_lane_s8(*v28.i8, 0);
  v32 = vdupq_lane_s8(v9, 0);
  v33 = vmaxq_s8(v23, v31);
  v34 = vminq_s8(v24, v32);
  v35 = vzip1q_s8(v31, v32);
  v36 = vsubq_s8(v27, vclsq_s8(v35));
  v37 = vbicq_s8(v36, vceqzq_s8(v35));
  v38 = vpmaxq_s8(v37, v37);
  v36.i8[0] = vmaxvq_s8(v22);
  v32.i8[0] = vminvq_s8(v22);
  v39 = vdupq_lane_s8(*v36.i8, 0);
  v40 = vdupq_lane_s8(*v32.i8, 0);
  v41 = vmaxq_s8(v33, v39);
  v42 = vminq_s8(v34, v40);
  v43 = vzip1q_s8(v39, v40);
  v44 = vsubq_s8(v27, vclsq_s8(v43));
  v45 = vbicq_s8(v44, vceqzq_s8(v43));
  v46 = vpmaxq_s8(v45, v45);
  v44.i8[0] = vmaxvq_s8(v25);
  v10.i8[0] = vminvq_s8(v25);
  v47 = vdupq_lane_s8(*v44.i8, 0);
  v48 = vdupq_lane_s8(v10, 0);
  v49 = vmaxq_s8(v41, v47);
  v50 = vminq_s8(v42, v48);
  v51 = vzip1q_s8(v47, v48);
  v52 = vbicq_s8(vsubq_s8(v27, vclsq_s8(v51)), vceqzq_s8(v51));
  v53 = vpmaxq_s8(v52, v52);
  v54 = vmaxq_s8(vmaxq_s8(v30, v38), vmaxq_s8(v46, v53));
  v55 = vclzq_s8(vsubq_s8(v49, v50));
  v56 = vsubq_s8(v27, v55);
  v57 = vminq_s8(v56, v54);
  if (vmaxvq_s8(v57))
  {
    v58 = 0;
    v59 = 0;
    v60.i64[0] = -1;
    v60.i64[1] = -1;
    v61.i64[0] = 0x707070707070707;
    v61.i64[1] = 0x707070707070707;
    v62 = vshlq_s8(v60, vsubq_s8(v61, v55));
    v63 = vcgtq_s8(v54, v56);
    v64 = vandq_s8(vsubq_s8(v62, v50), v63);
    v65 = vandq_s8(v63, v27);
    v63.i64[0] = 0x303030303030303;
    v63.i64[1] = 0x303030303030303;
    v66 = vorrq_s8(vandq_s8(vceqzq_s8(v57), v63), v65);
    v67 = vmaxq_s8(vminq_s8(vsubq_s8(v57, v30), v63), 0);
    v68 = vmaxq_s8(vminq_s8(vsubq_s8(v57, v38), v63), 0);
    v69 = vmaxq_s8(vminq_s8(vsubq_s8(v57, v46), v63), 0);
    v70 = vmaxq_s8(vminq_s8(vsubq_s8(v57, v53), v63), 0);
    v71 = vsubq_s8(v57, v67);
    v72 = vsubq_s8(v57, v68);
    v73 = vsubq_s8(v57, v69);
    v74 = vsubq_s8(v57, v70);
    v75 = vceqq_s8(vaddq_s8(v70, v69), vnegq_s8(vaddq_s8(v67, v68)));
    v68.i64[0] = 0x404040404040404;
    v68.i64[1] = 0x404040404040404;
    v76 = vorrq_s8(vbicq_s8(v68, v75), v66);
    if (a5 && a6)
    {
      v375 = v64;
      v77 = v12.u8[1] - v12.u8[0];
      v78 = v77 << 28 >> 28;
      v79 = v12.u8[2] - v12.u8[0];
      v80.i64[0] = 0xFFFF0000FFFF0000;
      v80.i64[1] = 0xFFFF0000FFFF0000;
      v81 = vmlaq_s8(vandq_s8(vdupq_n_s8(v79 << 28 >> 28), v80), vdupq_n_s8(v78), xmmword_29D2F0D60);
      v82 = vsubq_s8(v20, v81);
      v83 = v79 << 28 >> 27;
      v370 = v21;
      v84 = vsubq_s8(vaddq_s8(vdupq_n_s8(-v83), v21), v81);
      v85 = v77 << 28 >> 26;
      v86 = vsubq_s8(vaddq_s8(vdupq_n_s8(-v85), v22), v81);
      v87 = vaddq_s8(vdupq_n_s8(-(v83 + v85)), v25);
      v88 = vsubq_s8(v87, v81);
      v87.i8[0] = vmaxvq_s8(v82);
      v81.i8[0] = vminvq_s8(v82);
      v89 = vdupq_lane_s8(*v87.i8, 0);
      v90 = vdupq_lane_s8(*v81.i8, 0);
      v91 = vzip1q_s8(v89, v90);
      v92.i64[0] = 0x808080808080808;
      v92.i64[1] = 0x808080808080808;
      v93 = vsubq_s8(v92, vclsq_s8(v91));
      v94 = vbicq_s8(v93, vceqzq_s8(v91));
      v95 = vpmaxq_s8(v94, v94);
      v93.i8[0] = vmaxvq_s8(v84);
      v56.i8[0] = vminvq_s8(v84);
      v96 = vdupq_lane_s8(*v93.i8, 0);
      v97 = vdupq_lane_s8(*v56.i8, 0);
      v98 = vmaxq_s8(v89, v96);
      v99 = vminq_s8(v90, v97);
      v100 = vzip1q_s8(v96, v97);
      v101 = vsubq_s8(v92, vclsq_s8(v100));
      v102 = vbicq_s8(v101, vceqzq_s8(v100));
      v103 = vpmaxq_s8(v102, v102);
      v101.i8[0] = vmaxvq_s8(v86);
      v62.i8[0] = vminvq_s8(v86);
      v104 = vdupq_lane_s8(*v101.i8, 0);
      v105 = vdupq_lane_s8(*v62.i8, 0);
      v106 = vmaxq_s8(v98, v104);
      v107 = vminq_s8(v99, v105);
      v108 = vzip1q_s8(v104, v105);
      v109 = vsubq_s8(v92, vclsq_s8(v108));
      v110 = vbicq_s8(v109, vceqzq_s8(v108));
      v111 = vpmaxq_s8(v110, v110);
      v109.i8[0] = vmaxvq_s8(v88);
      v61.i8[0] = vminvq_s8(v88);
      v112 = vdupq_lane_s8(*v109.i8, 0);
      v113 = vdupq_lane_s8(*v61.i8, 0);
      v114 = vmaxq_s8(v106, v112);
      v115 = v20;
      v116 = v73;
      v368 = v22;
      v369 = v25;
      v117 = vminq_s8(v107, v113);
      v118 = vzip1q_s8(v112, v113);
      v119 = vbicq_s8(vsubq_s8(v92, vclsq_s8(v118)), vceqzq_s8(v118));
      v120 = vpmaxq_s8(v119, v119);
      v121 = vmaxq_s8(vmaxq_s8(v95, v103), vmaxq_s8(v111, v120));
      v122 = vclzq_s8(vsubq_s8(v114, v117));
      v123 = vsubq_s8(v92, v122);
      v124 = vcgtq_s8(v121, v123);
      v125 = vminq_s8(v123, v121);
      v92.i64[0] = 0x202020202020202;
      v92.i64[1] = 0x202020202020202;
      v121.i64[0] = 0xA0A0A0A0A0A0A0ALL;
      v121.i64[1] = 0xA0A0A0A0A0A0A0ALL;
      v126 = vbslq_s8(v124, v121, v92);
      v121.i64[0] = 0x101010101010101;
      v121.i64[1] = 0x101010101010101;
      v127 = vmaxq_s8(v125, v121);
      v128.i64[0] = 0x303030303030303;
      v128.i64[1] = 0x303030303030303;
      v129 = vmaxq_s8(vminq_s8(vsubq_s8(v127, v95), v128), 0);
      v130 = vmaxq_s8(vminq_s8(vsubq_s8(v127, v103), v128), 0);
      v131 = vmaxq_s8(vminq_s8(vsubq_s8(v127, v111), v128), 0);
      v132 = vmaxq_s8(vminq_s8(vsubq_s8(v127, v120), v128), 0);
      v133 = vsubq_s8(v127, v129);
      v134 = vsubq_s8(v127, v130);
      v135 = vsubq_s8(v127, v131);
      v136 = vsubq_s8(v127, v132);
      v137.i64[0] = 0x404040404040404;
      v137.i64[1] = 0x404040404040404;
      v138 = vorrq_s8(vbicq_s8(v137, vceqq_s8(vaddq_s8(v132, v131), vnegq_s8(vaddq_s8(v129, v130)))), v126);
      v137.i64[0] = 0x8000800080008;
      v137.i64[1] = 0x8000800080008;
      v376 = vshll_n_s8(vadd_s8(vadd_s8(*v116.i8, *v72.i8), *v74.i8), 3uLL);
      v121.i64[0] = 0x2000200020002;
      v121.i64[1] = 0x2000200020002;
      v139 = vdupq_lane_s8(vqmovn_u16(vcgtq_s16(vaddq_s16(vaddq_s16(vaddw_s8(vmlal_s8(v376, *v71.i8, 0x707070707070707), vbic_s8(*v57.i8, vcgt_u8(0x808080808080808, *v76.i8))), (*&vshll_n_u8(*v76.i8, 1uLL) & __PAIR128__(0xFFE9FFE9FFE9FFE9, 0xFFE9FFE9FFE9FFE9))), vandq_s8(vceqq_s16((*&vmovl_u8(*v76.i8) & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3)), v121), v137)), vaddq_s16(vaddw_u8(vaddw_u8(vmlal_s8(vshll_n_s8(vadd_s8(vadd_s8(*v135.i8, *v134.i8), *v136.i8), 3uLL), *v133.i8, 0x707070707070707), vand_s8(vadd_s8(*v138.i8, *v138.i8), 0x808080808080808)), vbic_s8(*v127.i8, vcgt_u8(0x808080808080808, *v138.i8))), v137))), 0);
      v131.i16[0] = vaddlvq_s8(v139);
      v140 = v78 & 0xF | (16 * v79);
      v141 = v131.u16[0];
      if (v131.i16[0])
      {
        v142.i64[0] = 0x707070707070707;
        v142.i64[1] = 0x707070707070707;
        v143.i64[0] = -1;
        v143.i64[1] = -1;
        v144 = vandq_s8(vsubq_s8(vshlq_s8(v143, vsubq_s8(v142, v122)), v117), v124);
        v145 = vbslq_s8(v139, v82, v115);
        v146 = vbslq_s8(v139, v84, v370);
        v22 = vbslq_s8(v139, v86, v368);
        v74 = vbslq_s8(v139, v136, v74);
        v64 = vbslq_s8(v139, v144, v375);
        v57 = vbslq_s8(v139, v127, v57);
        v76 = vbslq_s8(v139, v138, v76);
        v371 = vbslq_s8(v139, v133, v71);
        v372 = vbslq_s8(v139, v134, v72);
        v147 = vmull_s8(*v371.i8, 0x707070707070707);
        v373 = v145;
        v374 = vbslq_s8(v139, v135, v116);
        v376 = vshll_n_s8(vadd_s8(vadd_s8(*v374.i8, *v372.i8), *v74.i8), 3uLL);
        v25 = vbslq_s8(v139, v88, v369);
        v21 = v146;
      }

      else
      {
        v372 = v72;
        v373 = v115;
        v374 = v116;
        v371 = v71;
        v147 = vmull_s8(*v71.i8, 0x707070707070707);
        v22 = v368;
        v25 = v369;
        v64 = v375;
        v21 = v370;
      }

      v59 = v140;
      v150 = vsubq_s8(v15, vqtbl1q_s8(v15, xmmword_29D2F0DF0));
      v151 = v16;
      v151.i8[7] = v15.i8[7];
      v152 = vsubq_s8(v16, vqtbl1q_s8(v151, xmmword_29D2F0E00));
      v153 = v17;
      v153.i8[7] = v15.i8[7];
      v154 = vsubq_s8(v17, vqtbl1q_s8(v153, xmmword_29D2F0E10));
      v155 = v18;
      v155.i8[7] = v15.i8[7];
      v156 = vqtbl1q_s8(v155, xmmword_29D2F0E20);
      v157 = vsubq_s8(v18, v156);
      v158 = v150;
      v158.i8[0] = v150.i8[7];
      v158.i8[7] = v150.i8[0];
      v150.i8[0] = vmaxvq_s8(v158);
      v156.i8[0] = vminvq_s8(v158);
      v159 = vdupq_lane_s8(*v150.i8, 0);
      v160 = vdupq_lane_s8(*v156.i8, 0);
      v161 = vzip1q_s8(v159, v160);
      v162.i64[0] = 0x808080808080808;
      v162.i64[1] = 0x808080808080808;
      v163 = vsubq_s8(v162, vclsq_s8(v161));
      v164 = vbicq_s8(v163, vceqzq_s8(v161));
      v165 = vpmaxq_s8(v164, v164);
      v164.i8[0] = vmaxvq_s8(v152);
      v163.i8[0] = vminvq_s8(v152);
      v166 = vdupq_lane_s8(*v164.i8, 0);
      v167 = vdupq_lane_s8(*v163.i8, 0);
      v168 = vmaxq_s8(v159, v166);
      v169 = vminq_s8(v160, v167);
      v170 = vzip1q_s8(v166, v167);
      v171 = vsubq_s8(v162, vclsq_s8(v170));
      v172 = vbicq_s8(v171, vceqzq_s8(v170));
      v173 = vpmaxq_s8(v172, v172);
      v172.i8[0] = vmaxvq_s8(v154);
      v171.i8[0] = vminvq_s8(v154);
      v174 = vdupq_lane_s8(*v172.i8, 0);
      v175 = vdupq_lane_s8(*v171.i8, 0);
      v176 = vmaxq_s8(v168, v174);
      v177 = vminq_s8(v169, v175);
      v178 = vzip1q_s8(v174, v175);
      v179 = vsubq_s8(v162, vclsq_s8(v178));
      v180 = vbicq_s8(v179, vceqzq_s8(v178));
      v181 = vpmaxq_s8(v180, v180);
      v180.i8[0] = vmaxvq_s8(v157);
      v179.i8[0] = vminvq_s8(v157);
      v182 = vdupq_lane_s8(*v180.i8, 0);
      v183 = vdupq_lane_s8(*v179.i8, 0);
      v184 = vmaxq_s8(v176, v182);
      v185 = vminq_s8(v177, v183);
      v186 = vzip1q_s8(v182, v183);
      v187 = vbicq_s8(vsubq_s8(v162, vclsq_s8(v186)), vceqzq_s8(v186));
      v188 = vpmaxq_s8(v187, v187);
      v189 = vmaxq_s8(vmaxq_s8(v165, v173), vmaxq_s8(v181, v188));
      v190 = vclzq_s8(vsubq_s8(v184, v185));
      v191 = vsubq_s8(v162, v190);
      v192 = vcgtq_s8(v189, v191);
      v193 = vminq_s8(v191, v189);
      v191.i64[0] = 0x909090909090909;
      v191.i64[1] = 0x909090909090909;
      v194.i64[0] = 0x202020202020202;
      v194.i64[1] = 0x202020202020202;
      v195 = vorrq_s8(vandq_s8(vceqzq_s8(v193), v194), vsubq_s8(vandq_s8(v192, v191), vmvnq_s8(v192)));
      v194.i64[0] = 0x303030303030303;
      v194.i64[1] = 0x303030303030303;
      v196 = vmaxq_s8(vminq_s8(vsubq_s8(v193, v165), v194), 0);
      v197 = vmaxq_s8(vminq_s8(vsubq_s8(v193, v173), v194), 0);
      v198 = vmaxq_s8(vminq_s8(vsubq_s8(v193, v181), v194), 0);
      v199 = vmaxq_s8(vminq_s8(vsubq_s8(v193, v188), v194), 0);
      v200 = vsubq_s8(v193, v196);
      v201 = vsubq_s8(v193, v197);
      v202 = vsubq_s8(v193, v198);
      v203 = vsubq_s8(v193, v199);
      v194.i64[0] = 0x404040404040404;
      v194.i64[1] = 0x404040404040404;
      v204 = vorrq_s8(v195, vbicq_s8(v194, vceqq_s8(vaddq_s8(v199, v198), vnegq_s8(vaddq_s8(v196, v197)))));
      v197.i64[0] = 0x3000300030003;
      v197.i64[1] = 0x3000300030003;
      v205 = vmovl_s8(*v76.i8);
      v194.i64[0] = 0x8000800080008;
      v194.i64[1] = 0x8000800080008;
      v162.i64[0] = 0x2000200020002;
      v162.i64[1] = 0x2000200020002;
      v206 = vdupq_lane_s8(vqmovn_u16(vcgtq_s16(vaddq_s16(vaddq_s16(vaddq_s16(vbicq_s8(vmovl_s8(*v57.i8), vceqzq_s16(vandq_s8(v205, v194))), vandq_s8(vshll_n_s8(*v76.i8, 1uLL), v194)), vaddq_s16(vandq_s8(vceqq_s16(vandq_s8(v205, v197), v162), v194), v147)), v376), vaddw_s8(vaddw_u8(vmlal_s8(vshll_n_s8(vadd_s8(vadd_s8(*v202.i8, *v201.i8), *v203.i8), 3uLL), *v200.i8, 0x707070707070707), vand_s8(vadd_s8(*v204.i8, *v204.i8), 0x808080808080808)), vbic_s8(*v193.i8, vcgt_u8(0x808080808080808, *v204.i8))))), 0);
      v195.i16[0] = vaddlvq_s8(v206);
      v207 = v195.u16[0];
      if (v195.i16[0])
      {
        v208.i64[0] = 0x707070707070707;
        v208.i64[1] = 0x707070707070707;
        v209.i64[0] = -1;
        v209.i64[1] = -1;
        v19.i8[0] = vbslq_s8(v206, vextq_s8(v15, v15, 0xFuLL), v19).u8[0];
        v20 = vbslq_s8(v206, v158, v373);
        v21 = vbslq_s8(v206, v152, v21);
        v22 = vbslq_s8(v206, v154, v22);
        v25 = vbslq_s8(v206, v157, v25);
        v71 = vbslq_s8(v206, v200, v371);
        v72 = vbslq_s8(v206, v201, v372);
        v73 = vbslq_s8(v206, v202, v374);
        v74 = vbslq_s8(v206, v203, v74);
        v64 = vbslq_s8(v206, vandq_s8(vsubq_s8(vshlq_s8(v209, vsubq_s8(v208, v190)), v185), v192), v64);
        v57 = vbslq_s8(v206, v193, v57);
        v76 = vbslq_s8(v206, v204, v76);
      }

      else
      {
        v20 = v373;
        v73 = v374;
        v71 = v371;
        v72 = v372;
      }

      v13 = *(&a3[1] + a4);
      v14 = *(a3 + a4);
      v11 = a3[1];
      if (v141)
      {
        v210 = v207 == 0;
      }

      else
      {
        v210 = 0;
      }

      v58 = v210;
    }

    v211 = vmovl_s8(*v76.i8);
    v212.i64[0] = 0x8000800080008;
    v212.i64[1] = 0x8000800080008;
    v213.i64[0] = 0x3000300030003;
    v213.i64[1] = 0x3000300030003;
    v214.i64[0] = 0x2000200020002;
    v214.i64[1] = 0x2000200020002;
    if (((7 * v71.i8[0] + 8 * vaddq_s8(vaddq_s8(v73, v72), v74).i8[0] + ((2 * v211.i16[0]) & 8) + vbicq_s8(vmovl_s8(*v57.i8), vceqzq_s16(vandq_s8(v211, v212))).u16[0] + vandq_s8(vceqq_s16(vandq_s8(v211, v213), v214), v212).u16[0]) + 19) >= 0x100)
    {
      *a1 = v12;
      a1[1] = v11;
      v148 = 31;
      a1[2] = v14;
      a1[3] = v13;
      result = 32;
    }

    else
    {
      v215 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v216 = 8 * (a1 & 7);
      if (v216)
      {
        v217 = *v215 & ~(-1 << v216);
      }

      else
      {
        v217 = 0;
      }

      v218 = vextq_s8(v71, 0, 8uLL);
      v219 = vextq_s8(v72, 0, 8uLL);
      v220 = vextq_s8(v73, 0, 8uLL);
      v221 = vextq_s8(v74, 0, 8uLL);
      if (v57.i8[0])
      {
        v222 = (16 * v57.i8[0] + 112) & 0x70;
      }

      else
      {
        v222 = 0;
      }

      *a2 = 32 * v76.i8[0];
      v223 = (v76.i8[0] & 8 | v222 & 0xFFFF807F | (v19.u8[0] << 7)) >> 3;
      v224 = (v223 << v216) | v217;
      if (v216 >= 0x34)
      {
        *v215 = v224;
        v224 = v223 >> (-8 * (a1 & 7u));
      }

      v225 = v216 + 12;
      v226.i64[0] = 0x202020202020202;
      v226.i64[1] = 0x202020202020202;
      v227 = vandq_s8(vbicq_s8(xmmword_29D2F0D30, vmovl_s16(vceqz_s16(vand_s8(*&vmovl_u8(*v76.i8), 0x4000400040004)))), v226);
      v226.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v226.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v228.i64[0] = -1;
      v228.i64[1] = -1;
      v229 = vandq_s8(vshlq_u8(v228, vorrq_s8(v227, v226)), vzip1q_s16(vzip1q_s8(vsubq_s8(v57, v218), vsubq_s8(v57, v219)), vzip1q_s8(vsubq_s8(v57, v220), vsubq_s8(v57, v221))).u32[0]);
      v230 = vmovl_u8(*v227.i8);
      v231 = vpaddq_s16(vshlq_u16(vmovl_u8(*v229.i8), vtrn1q_s16(0, v230)), vmovl_high_u8(v229));
      v232 = vpaddq_s16(v230, vmovl_high_u8(v227));
      v233 = vmovl_u16(*v232.i8);
      v234 = vmovl_high_u16(v232);
      v235 = vpaddq_s32(vshlq_u32(vmovl_u16(*v231.i8), vtrn1q_s32(0, v233)), vshlq_u32(vmovl_high_u16(v231), vtrn1q_s32(0, v234)));
      v236 = vpaddq_s32(v233, v234);
      v237.i64[0] = v235.u32[0];
      v237.i64[1] = v235.u32[1];
      v238 = v237;
      v237.i64[0] = v235.u32[2];
      v237.i64[1] = v235.u32[3];
      v239 = v237;
      v237.i64[0] = v236.u32[0];
      v237.i64[1] = v236.u32[1];
      v240 = v237;
      v237.i64[0] = v236.u32[2];
      v237.i64[1] = v236.u32[3];
      v241 = vpaddq_s64(vshlq_u64(v238, vzip1q_s64(0, v240)), vshlq_u64(v239, vzip1q_s64(0, v237)));
      v242 = vpaddq_s64(v240, v237);
      v243 = (v216 + 12) & 0x3C;
      v244 = (v241.i64[0] << v243) | v224;
      if ((v242.i64[0] + v243) >= 0x40)
      {
        *(v215 + ((v225 >> 3) & 8)) = v244;
        v244 = v241.i64[0] >> -v243;
      }

      v245 = v242.i64[0] + v225;
      v246 = (v242.i64[0] + v225) & 0x3F;
      v247 = v244 | (v241.i64[1] << (v242.i8[0] + v225));
      if ((v246 + v242.i64[1]) >= 0x40)
      {
        *(v215 + ((v245 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v247;
        v247 = v241.i64[1] >> -v246;
        if (!v246)
        {
          v247 = 0;
        }
      }

      v248 = vceqq_s8(v57, v71);
      v249 = v245 + v242.i64[1];
      v250.i64[0] = 0x808080808080808;
      v250.i64[1] = 0x808080808080808;
      v251.i64[0] = -1;
      v251.i64[1] = -1;
      v252 = vandq_s8(vextq_s8(vtstq_s8(v76, v250), 0, 0xFuLL), v57);
      v253.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v253.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v254 = vandq_s8(vshlq_u8(v251, vaddq_s8(v252, v253)), v64);
      v255 = vmovl_u8(*v252.i8);
      v256 = vpaddq_s16(vshlq_u16(vmovl_u8(*v254.i8), vtrn1q_s16(0, v255)), vmovl_high_u8(v254));
      v257 = vpaddq_s16(v255, vmovl_high_u8(v252));
      v258 = vmovl_u16(*v257.i8);
      v259 = vmovl_high_u16(v257);
      v260 = vpaddq_s32(vshlq_u32(vmovl_u16(*v256.i8), vtrn1q_s32(0, v258)), vshlq_u32(vmovl_high_u16(v256), vtrn1q_s32(0, v259)));
      v261 = vpaddq_s32(v258, v259);
      v262.i64[0] = v260.u32[0];
      v262.i64[1] = v260.u32[1];
      v263 = v262;
      v262.i64[0] = v260.u32[2];
      v262.i64[1] = v260.u32[3];
      v264 = v262;
      v262.i64[0] = v261.u32[0];
      v262.i64[1] = v261.u32[1];
      v265 = v262;
      v262.i64[0] = v261.u32[2];
      v262.i64[1] = v261.u32[3];
      v266 = vpaddq_s64(vshlq_u64(v263, vzip1q_s64(0, v265)), vshlq_u64(v264, vzip1q_s64(0, v262)));
      v267 = vpaddq_s64(v265, v262);
      v268 = (v266.i64[0] << v249) | v247;
      if (v267.i64[0] + (v249 & 0x3F) >= 0x40)
      {
        *(v215 + ((v249 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v268;
        v268 = v266.i64[0] >> -(v249 & 0x3F);
        if ((v249 & 0x3F) == 0)
        {
          v268 = 0;
        }
      }

      v269 = vandq_s8(v64, v248);
      v270 = v267.i64[0] + v249;
      v271 = v268 | (v266.i64[1] << v270);
      if ((v270 & 0x3F) + v267.i64[1] >= 0x40)
      {
        *(v215 + ((v270 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v271;
        v271 = v266.i64[1] >> -(v270 & 0x3F);
        if ((v270 & 0x3F) == 0)
        {
          v271 = 0;
        }
      }

      v272 = vceqq_s8(v57, v72);
      v273 = vaddq_s8(v269, v20);
      v274 = v270 + v267.i64[1];
      if (v58)
      {
        v271 |= v59 << v274;
        if ((v274 & 0x3F) >= 0x38)
        {
          *(v215 + ((v274 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v271;
          v271 = v59 >> -(v274 & 0x3F);
        }

        v274 += 8;
      }

      v275 = vandq_s8(v64, v272);
      v276 = vmovl_high_u8(v218);
      v218.i8[0] = 0;
      v277.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v277.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v278.i64[0] = -1;
      v278.i64[1] = -1;
      v279 = vandq_s8(vshlq_u8(v278, vaddq_s8(v218, v277)), v273);
      v280 = vmovl_u8(*v218.i8);
      v281 = vpaddq_s16(vshlq_u16(vmovl_u8(*v279.i8), vtrn1q_s16(0, v280)), vshlq_u16(vmovl_high_u8(v279), vtrn1q_s16(0, v276)));
      v282 = vpaddq_s16(v280, v276);
      v283 = vmovl_u16(*v282.i8);
      v284 = vmovl_high_u16(v282);
      v285 = vpaddq_s32(vshlq_u32(vmovl_u16(*v281.i8), vtrn1q_s32(0, v283)), vshlq_u32(vmovl_high_u16(v281), vtrn1q_s32(0, v284)));
      v286 = vpaddq_s32(v283, v284);
      v287.i64[0] = v285.u32[0];
      v287.i64[1] = v285.u32[1];
      v288 = v287;
      v287.i64[0] = v285.u32[2];
      v287.i64[1] = v285.u32[3];
      v289 = v287;
      v287.i64[0] = v286.u32[0];
      v287.i64[1] = v286.u32[1];
      v290 = v287;
      v287.i64[0] = v286.u32[2];
      v287.i64[1] = v286.u32[3];
      v291 = vpaddq_s64(vshlq_u64(v288, vzip1q_s64(0, v290)), vshlq_u64(v289, vzip1q_s64(0, v287)));
      v292 = vpaddq_s64(v290, v287);
      v293 = (v291.i64[0] << v274) | v271;
      if (v292.i64[0] + (v274 & 0x3F) >= 0x40)
      {
        *(v215 + ((v274 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v293;
        v293 = v291.i64[0] >> -(v274 & 0x3F);
        if ((v274 & 0x3F) == 0)
        {
          v293 = 0;
        }
      }

      v294 = vceqq_s8(v57, v73);
      v295 = vaddq_s8(v21, v275);
      v296 = v292.i64[0] + v274;
      v297 = (v292.i64[0] + v274) & 0x3F;
      v298 = v293 | (v291.i64[1] << v296);
      if ((v296 & 0x3F) + v292.i64[1] >= 0x40)
      {
        *(v215 + ((v296 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v298;
        v298 = v291.i64[1] >> -v297;
        if (!v297)
        {
          v298 = 0;
        }
      }

      v299 = vandq_s8(v64, v294);
      v300 = v296 + v292.i64[1];
      v301.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v301.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v302.i64[0] = -1;
      v302.i64[1] = -1;
      v303 = vandq_s8(vshlq_u8(v302, vaddq_s8(v219, v301)), v295);
      v304 = vmovl_u8(*v219.i8);
      v305 = vmovl_high_u8(v219);
      v306 = vpaddq_s16(vshlq_u16(vmovl_u8(*v303.i8), vtrn1q_s16(0, v304)), vshlq_u16(vmovl_high_u8(v303), vtrn1q_s16(0, v305)));
      v307 = vpaddq_s16(v304, v305);
      v308 = vmovl_u16(*v307.i8);
      v309 = vmovl_high_u16(v307);
      v310 = vpaddq_s32(vshlq_u32(vmovl_u16(*v306.i8), vtrn1q_s32(0, v308)), vshlq_u32(vmovl_high_u16(v306), vtrn1q_s32(0, v309)));
      v311 = vpaddq_s32(v308, v309);
      v312.i64[0] = v310.u32[0];
      v312.i64[1] = v310.u32[1];
      v313 = v312;
      v312.i64[0] = v310.u32[2];
      v312.i64[1] = v310.u32[3];
      v314 = v312;
      v312.i64[0] = v311.u32[0];
      v312.i64[1] = v311.u32[1];
      v315 = v312;
      v312.i64[0] = v311.u32[2];
      v312.i64[1] = v311.u32[3];
      v316 = vpaddq_s64(vshlq_u64(v313, vzip1q_s64(0, v315)), vshlq_u64(v314, vzip1q_s64(0, v312)));
      v317 = vpaddq_s64(v315, v312);
      v318 = (v316.i64[0] << v300) | v298;
      if (v317.i64[0] + (v300 & 0x3F) >= 0x40)
      {
        *(v215 + ((v300 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v318;
        v318 = v316.i64[0] >> -(v300 & 0x3F);
        if ((v300 & 0x3F) == 0)
        {
          v318 = 0;
        }
      }

      v319 = vceqq_s8(v57, v74);
      v320 = vaddq_s8(v22, v299);
      v321 = v317.i64[0] + v300;
      v322 = v318 | (v316.i64[1] << v321);
      if ((v321 & 0x3F) + v317.i64[1] >= 0x40)
      {
        *(v215 + ((v321 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v322;
        v322 = v316.i64[1] >> -(v321 & 0x3F);
        if ((v321 & 0x3F) == 0)
        {
          v322 = 0;
        }
      }

      v323 = vandq_s8(v64, v319);
      v324 = v321 + v317.i64[1];
      v325.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v325.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v326.i64[0] = -1;
      v326.i64[1] = -1;
      v327 = vandq_s8(vshlq_u8(v326, vaddq_s8(v220, v325)), v320);
      v328 = vmovl_u8(*v220.i8);
      v329 = vmovl_high_u8(v220);
      v330 = vpaddq_s16(vshlq_u16(vmovl_u8(*v327.i8), vtrn1q_s16(0, v328)), vshlq_u16(vmovl_high_u8(v327), vtrn1q_s16(0, v329)));
      v331 = vpaddq_s16(v328, v329);
      v332 = vmovl_u16(*v331.i8);
      v333 = vmovl_high_u16(v331);
      v334 = vpaddq_s32(vshlq_u32(vmovl_u16(*v330.i8), vtrn1q_s32(0, v332)), vshlq_u32(vmovl_high_u16(v330), vtrn1q_s32(0, v333)));
      v335 = vpaddq_s32(v332, v333);
      v336.i64[0] = v334.u32[0];
      v336.i64[1] = v334.u32[1];
      v337 = v336;
      v336.i64[0] = v334.u32[2];
      v336.i64[1] = v334.u32[3];
      v338 = v336;
      v336.i64[0] = v335.u32[0];
      v336.i64[1] = v335.u32[1];
      v339 = v336;
      v336.i64[0] = v335.u32[2];
      v336.i64[1] = v335.u32[3];
      v340 = vpaddq_s64(vshlq_u64(v337, vzip1q_s64(0, v339)), vshlq_u64(v338, vzip1q_s64(0, v336)));
      v341 = vpaddq_s64(v339, v336);
      v342 = (v340.i64[0] << v324) | v322;
      if (v341.i64[0] + (v324 & 0x3F) >= 0x40)
      {
        *(v215 + ((v324 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v342;
        v342 = v340.i64[0] >> -(v324 & 0x3F);
        if ((v324 & 0x3F) == 0)
        {
          v342 = 0;
        }
      }

      v343 = vaddq_s8(v25, v323);
      v344 = v341.i64[0] + v324;
      v345 = v342 | (v340.i64[1] << v344);
      if ((v344 & 0x3F) + v341.i64[1] >= 0x40)
      {
        *(v215 + ((v344 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v345;
        v345 = v340.i64[1] >> -(v344 & 0x3F);
        if ((v344 & 0x3F) == 0)
        {
          v345 = 0;
        }
      }

      v346 = v344 + v341.i64[1];
      v347.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v347.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v348.i64[0] = -1;
      v348.i64[1] = -1;
      v349 = vandq_s8(vshlq_u8(v348, vaddq_s8(v221, v347)), v343);
      v350 = vmovl_u8(*v221.i8);
      v351 = vmovl_high_u8(v221);
      v352 = vpaddq_s16(vshlq_u16(vmovl_u8(*v349.i8), vtrn1q_s16(0, v350)), vshlq_u16(vmovl_high_u8(v349), vtrn1q_s16(0, v351)));
      v353 = vpaddq_s16(v350, v351);
      v354 = vmovl_u16(*v353.i8);
      v355 = vmovl_high_u16(v353);
      v356 = vpaddq_s32(vshlq_u32(vmovl_u16(*v352.i8), vtrn1q_s32(0, v354)), vshlq_u32(vmovl_high_u16(v352), vtrn1q_s32(0, v355)));
      v357 = vpaddq_s32(v354, v355);
      v358.i64[0] = v356.u32[0];
      v358.i64[1] = v356.u32[1];
      v359 = v358;
      v358.i64[0] = v356.u32[2];
      v358.i64[1] = v356.u32[3];
      v360 = v358;
      v358.i64[0] = v357.u32[0];
      v358.i64[1] = v357.u32[1];
      v361 = v358;
      v358.i64[0] = v357.u32[2];
      v358.i64[1] = v357.u32[3];
      v362 = vpaddq_s64(vshlq_u64(v359, vzip1q_s64(0, v361)), vshlq_u64(v360, vzip1q_s64(0, v358)));
      v363 = vpaddq_s64(v361, v358);
      v364 = (v362.i64[0] << v346) | v345;
      if (v363.i64[0] + (v346 & 0x3F) > 0x3F)
      {
        *(v215 + ((v346 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v364;
        if ((v346 & 0x3F) != 0)
        {
          v364 = v362.i64[0] >> -(v346 & 0x3F);
        }

        else
        {
          v364 = 0;
        }
      }

      v365 = v363.i64[0] + v346;
      v366 = v364 | (v362.i64[1] << v365);
      if ((v365 & 0x3F) + v363.i64[1] >= 0x40)
      {
        *(v215 + ((v365 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v366;
        v366 = v362.i64[1] >> -(v365 & 0x3F);
        if ((v365 & 0x3F) == 0)
        {
          v366 = 0;
        }
      }

      v367 = v365 + v363.i64[1];
      if ((v367 & 0x3F) != 0)
      {
        *(v215 + ((v367 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v366;
      }

      result = (v367 - v216 + 7) >> 3;
      v148 = *a2 | (result - 1);
    }
  }

  else
  {
    a1->i8[0] = a3->i8[0];
    v148 = 96;
    result = 1;
  }

  *a2 = v148;
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(unint64_t result, uint64_t a2, int8x8_t *a3, char *a4, unsigned int a5, unsigned int a6, int8x8_t a7, double a8, int8x8_t a9)
{
  v9 = a6;
  v10 = a5;
  v12 = a3;
  v14 = result;
  if (a5 && a6)
  {
    if (a6 >= 2)
    {
      a6 = 2;
    }

    if (a5 >= 2)
    {
      a5 = 2;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(a3, a4, result, a2, a5, a6, a7, a8, a9);
    v12 = (v12 + result);
  }

  else
  {
    *a4 = 0;
  }

  v15 = v10 - 2;
  if (v10 >= 3 && v9)
  {
    if (v9 >= 2)
    {
      v16 = 2;
    }

    else
    {
      v16 = v9;
    }

    if (v15 >= 2)
    {
      v17 = 2;
    }

    else
    {
      v17 = v10 - 2;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v12, a4 + 1, v14 + 2, a2, v17, v16, a7, a8, a9);
    v12 = (v12 + result);
  }

  else
  {
    a4[1] = 0;
  }

  v18 = 2 * a2;
  v19 = v9 - 2;
  if (v10 && v9 >= 3)
  {
    if (v19 >= 2)
    {
      v20 = 2;
    }

    else
    {
      v20 = v9 - 2;
    }

    if (v10 >= 2)
    {
      v21 = 2;
    }

    else
    {
      v21 = v10;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v12, a4 + 2, (v14 + v18), a2, v21, v20, a7, a8, a9);
    v12 = (v12 + result);
    if (v10 < 3)
    {
      goto LABEL_38;
    }
  }

  else
  {
    a4[2] = 0;
    if (v10 < 3)
    {
      goto LABEL_38;
    }
  }

  if (v9 >= 3)
  {
    if (v19 >= 2)
    {
      v22 = 2;
    }

    else
    {
      v22 = v9 - 2;
    }

    if (v15 >= 2)
    {
      v23 = 2;
    }

    else
    {
      v23 = v10 - 2;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v12, a4 + 3, (v14 + v18 + 16), a2, v23, v22, a7, a8, a9);
    v12 = (v12 + result);
    goto LABEL_39;
  }

LABEL_38:
  a4[3] = 0;
LABEL_39:
  v24 = v10 - 4;
  if (v10 >= 5 && v9)
  {
    if (v9 >= 2)
    {
      v25 = 2;
    }

    else
    {
      v25 = v9;
    }

    if (v24 >= 2)
    {
      v26 = 2;
    }

    else
    {
      v26 = v10 - 4;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v12, a4 + 4, v14 + 4, a2, v26, v25, a7, a8, a9);
    v12 = (v12 + result);
  }

  else
  {
    a4[4] = 0;
  }

  v27 = v10 - 6;
  if (v10 >= 7 && v9)
  {
    if (v9 >= 2)
    {
      v28 = 2;
    }

    else
    {
      v28 = v9;
    }

    if (v27 >= 2)
    {
      v29 = 2;
    }

    else
    {
      v29 = v10 - 6;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v12, a4 + 5, v14 + 6, a2, v29, v28, a7, a8, a9);
    v12 = (v12 + result);
  }

  else
  {
    a4[5] = 0;
    if (v10 < 5)
    {
      goto LABEL_68;
    }
  }

  if (v9 >= 3)
  {
    if (v19 >= 2)
    {
      v30 = 2;
    }

    else
    {
      v30 = v9 - 2;
    }

    if (v24 >= 2)
    {
      v31 = 2;
    }

    else
    {
      v31 = v10 - 4;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v12, a4 + 6, (v14 + v18 + 32), a2, v31, v30, a7, a8, a9);
    v12 = (v12 + result);
    if (v10 < 7)
    {
      goto LABEL_79;
    }

    goto LABEL_69;
  }

LABEL_68:
  a4[6] = 0;
  if (v10 < 7)
  {
LABEL_79:
    a4[7] = 0;
    return result;
  }

LABEL_69:
  if (v9 < 3)
  {
    goto LABEL_79;
  }

  if (v19 >= 2)
  {
    v32 = 2;
  }

  else
  {
    v32 = v9 - 2;
  }

  if (v27 >= 2)
  {
    v33 = 2;
  }

  else
  {
    v33 = v10 - 6;
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v12, a4 + 7, (v14 + v18 + 48), a2, v33, v32, a7, a8, a9);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(unint64_t a1, _BYTE *a2, int16x4_t *a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v11 = *(a3 + a4);
  v12 = vzip1_s16(*a3, v11);
  *v18.i8 = vzip2_s16(*a3, v11);
  v13 = (a3 + 2 * a4);
  v14 = *(v13 + a4);
  v15 = *v13;
  *v17.i8 = vzip1_s16(*v13, v14);
  *v19.i8 = vzip2_s16(*v13, v14);
  *v16.i8 = v12;
  v16.u64[1] = v12;
  v17.i64[1] = v17.i64[0];
  v18.i64[1] = v18.i64[0];
  v19.i64[1] = v19.i64[0];
  v20 = vdupq_lane_s8(*a3, 0);
  v21 = vsubq_s8(v16, v20);
  v22 = vsubq_s8(v17, v20);
  v23 = vsubq_s8(v18, v20);
  v14.i8[0] = vmaxvq_s8(v21);
  v15.i8[0] = vminvq_s8(v21);
  v24 = vdupq_lane_s8(v14, 0);
  v25 = vdupq_lane_s8(v15, 0);
  v26 = vsubq_s8(v19, v20);
  v27 = vzip1q_s8(v24, v25);
  v28.i64[0] = 0x808080808080808;
  v28.i64[1] = 0x808080808080808;
  v29 = vbicq_s8(vsubq_s8(v28, vclsq_s8(v27)), vceqzq_s8(v27));
  v30 = vpmaxq_s8(v29, v29);
  v29.i8[0] = vmaxvq_s8(v22);
  v7.i8[0] = vminvq_s8(v22);
  v31 = vdupq_lane_s8(*v29.i8, 0);
  v32 = vdupq_lane_s8(v7, 0);
  v33 = vmaxq_s8(v24, v31);
  v34 = vminq_s8(v25, v32);
  v35 = vzip1q_s8(v31, v32);
  v36 = vbicq_s8(vsubq_s8(v28, vclsq_s8(v35)), vceqzq_s8(v35));
  v37 = vpmaxq_s8(v36, v36);
  v36.i8[0] = vmaxvq_s8(v23);
  v8.i8[0] = vminvq_s8(v23);
  v38 = vdupq_lane_s8(*v36.i8, 0);
  v39 = vdupq_lane_s8(v8, 0);
  v40 = vmaxq_s8(v33, v38);
  v41 = vminq_s8(v34, v39);
  v42 = vzip1q_s8(v38, v39);
  v43 = vbicq_s8(vsubq_s8(v28, vclsq_s8(v42)), vceqzq_s8(v42));
  v44 = vpmaxq_s8(v43, v43);
  v43.i8[0] = vmaxvq_s8(v26);
  v9.i8[0] = vminvq_s8(v26);
  v45 = vdupq_lane_s8(*v43.i8, 0);
  v46 = vdupq_lane_s8(v9, 0);
  v47 = vmaxq_s8(v40, v45);
  v48 = vminq_s8(v41, v46);
  v49 = vzip1q_s8(v45, v46);
  v50 = vbicq_s8(vsubq_s8(v28, vclsq_s8(v49)), vceqzq_s8(v49));
  v51 = vpmaxq_s8(v50, v50);
  v52 = vmaxq_s8(vmaxq_s8(v30, v37), vmaxq_s8(v44, v51));
  v53 = vclzq_s8(vsubq_s8(v47, v48));
  v54 = vsubq_s8(v28, v53);
  v55 = vminq_s8(v54, v52);
  if (vmaxvq_s8(v55))
  {
    v56 = 0;
    v57 = 0;
    v58.i64[0] = -1;
    v58.i64[1] = -1;
    v59.i64[0] = 0x707070707070707;
    v59.i64[1] = 0x707070707070707;
    v60 = vcgtq_s8(v52, v54);
    v61 = vandq_s8(vsubq_s8(vshlq_s8(v58, vsubq_s8(v59, v53)), v48), v60);
    v62.i64[0] = 0x303030303030303;
    v62.i64[1] = 0x303030303030303;
    v63 = vmaxq_s8(vminq_s8(vsubq_s8(v55, v30), v62), 0);
    v64 = vmaxq_s8(vminq_s8(vsubq_s8(v55, v37), v62), 0);
    v65 = vmaxq_s8(vminq_s8(vsubq_s8(v55, v44), v62), 0);
    v66 = vmaxq_s8(vminq_s8(vsubq_s8(v55, v51), v62), 0);
    v67 = vsubq_s8(v55, v63);
    v68 = vsubq_s8(v55, v64);
    v69 = vsubq_s8(v55, v65);
    v70 = vsubq_s8(v55, v66);
    v71 = vceqq_s8(vaddq_s8(v66, v65), vnegq_s8(vaddq_s8(v63, v64)));
    v66.i64[0] = 0x404040404040404;
    v66.i64[1] = 0x404040404040404;
    v72 = vorrq_s8(vbicq_s8(v66, v71), vorrq_s8(vandq_s8(vceqzq_s8(v55), v62), vandq_s8(v60, v28)));
    if (a5 >= 4 && a6 >= 2)
    {
      v366 = v61;
      v73 = v12.u8[1] - v12.u8[0];
      v74 = v73 << 28 >> 28;
      v75 = v12.u8[2] - v12.u8[0];
      v76.i64[0] = 0xFFFF0000FFFF0000;
      v76.i64[1] = 0xFFFF0000FFFF0000;
      v77 = vmlaq_s8(vandq_s8(vdupq_n_s8(v75 << 28 >> 28), v76), vdupq_n_s8(v74), xmmword_29D2F0D60);
      v78 = vsubq_s8(v21, v77);
      v79 = v75 << 28 >> 27;
      v80 = vsubq_s8(vaddq_s8(vdupq_n_s8(-v79), v22), v77);
      v81 = v73 << 28 >> 26;
      v361 = v26;
      v362 = v23;
      v82 = vsubq_s8(vaddq_s8(vdupq_n_s8(-v81), v23), v77);
      v83 = vaddq_s8(vdupq_n_s8(-(v79 + v81)), v26);
      v84 = vsubq_s8(v83, v77);
      v83.i8[0] = vmaxvq_s8(v78);
      v77.i8[0] = vminvq_s8(v78);
      v85 = vdupq_lane_s8(*v83.i8, 0);
      v86 = vdupq_lane_s8(*v77.i8, 0);
      v87 = vzip1q_s8(v85, v86);
      v88.i64[0] = 0x808080808080808;
      v88.i64[1] = 0x808080808080808;
      v89 = v22;
      v90 = v68;
      v91 = v69;
      v92 = vceqzq_s8(v87);
      v93 = vbicq_s8(vsubq_s8(v88, vclsq_s8(v87)), v92);
      v94 = vpmaxq_s8(v93, v93);
      v92.i8[0] = vmaxvq_s8(v80);
      v65.i8[0] = vminvq_s8(v80);
      v95 = vdupq_lane_s8(*v92.i8, 0);
      v96 = vdupq_lane_s8(*v65.i8, 0);
      v97 = vmaxq_s8(v85, v95);
      v98 = vminq_s8(v86, v96);
      v99 = vzip1q_s8(v95, v96);
      v100 = vsubq_s8(v88, vclsq_s8(v99));
      v101 = vbicq_s8(v100, vceqzq_s8(v99));
      v102 = vpmaxq_s8(v101, v101);
      v100.i8[0] = vmaxvq_s8(v82);
      v59.i8[0] = vminvq_s8(v82);
      v103 = vdupq_lane_s8(*v100.i8, 0);
      v104 = vdupq_lane_s8(*v59.i8, 0);
      v105 = vmaxq_s8(v97, v103);
      v106 = vminq_s8(v98, v104);
      v107 = vzip1q_s8(v103, v104);
      v108 = vbicq_s8(vsubq_s8(v88, vclsq_s8(v107)), vceqzq_s8(v107));
      v109 = vpmaxq_s8(v108, v108);
      v108.i8[0] = vmaxvq_s8(v84);
      v10.i8[0] = vminvq_s8(v84);
      v110 = vdupq_lane_s8(*v108.i8, 0);
      v111 = vdupq_lane_s8(v10, 0);
      v112 = vminq_s8(v106, v111);
      v113 = vzip1q_s8(v110, v111);
      v114 = vbicq_s8(vsubq_s8(v88, vclsq_s8(v113)), vceqzq_s8(v113));
      v115 = vpmaxq_s8(v114, v114);
      v116 = vmaxq_s8(vmaxq_s8(v94, v102), vmaxq_s8(v109, v115));
      v117 = vclzq_s8(vsubq_s8(vmaxq_s8(v105, v110), v112));
      v118 = vsubq_s8(v88, v117);
      v119 = vcgtq_s8(v116, v118);
      v120 = vminq_s8(v118, v116);
      v88.i64[0] = 0x202020202020202;
      v88.i64[1] = 0x202020202020202;
      v116.i64[0] = 0xA0A0A0A0A0A0A0ALL;
      v116.i64[1] = 0xA0A0A0A0A0A0A0ALL;
      v121 = vbslq_s8(v119, v116, v88);
      v116.i64[0] = 0x101010101010101;
      v116.i64[1] = 0x101010101010101;
      v122 = v70;
      v123 = vmaxq_s8(v120, v116);
      v124 = vsubq_s8(v123, v94);
      v94.i64[0] = 0x303030303030303;
      v94.i64[1] = 0x303030303030303;
      v125 = vmaxq_s8(vminq_s8(v124, v94), 0);
      v126 = vmaxq_s8(vminq_s8(vsubq_s8(v123, v102), v94), 0);
      v127 = vmaxq_s8(vminq_s8(vsubq_s8(v123, v109), v94), 0);
      v128 = vmaxq_s8(vminq_s8(vsubq_s8(v123, v115), v94), 0);
      v129 = vsubq_s8(v123, v125);
      v130 = vsubq_s8(v123, v126);
      v131 = vsubq_s8(v123, v127);
      v132 = vsubq_s8(v123, v128);
      v133 = vceqq_s8(vaddq_s8(v128, v127), vnegq_s8(vaddq_s8(v125, v126)));
      v127.i64[0] = 0x404040404040404;
      v127.i64[1] = 0x404040404040404;
      v134 = vorrq_s8(vbicq_s8(v127, v133), v121);
      v135.i64[0] = 0x8000800080008;
      v135.i64[1] = 0x8000800080008;
      v367 = vshll_n_s8(vadd_s8(vadd_s8(*v91.i8, *v90.i8), *v122.i8), 3uLL);
      v94.i64[0] = 0x2000200020002;
      v94.i64[1] = 0x2000200020002;
      v136 = vdupq_lane_s8(vqmovn_u16(vcgtq_s16(vaddq_s16(vaddq_s16(vaddw_s8(vmlal_s8(v367, *v67.i8, 0x707070707070707), vbic_s8(*v55.i8, vcgt_u8(0x808080808080808, *v72.i8))), (*&vshll_n_u8(*v72.i8, 1uLL) & __PAIR128__(0xFFE9FFE9FFE9FFE9, 0xFFE9FFE9FFE9FFE9))), vandq_s8(vceqq_s16((*&vmovl_u8(*v72.i8) & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3)), v94), v135)), vaddq_s16(vaddw_u8(vaddw_u8(vmlal_s8(vshll_n_s8(vadd_s8(vadd_s8(*v131.i8, *v130.i8), *v132.i8), 3uLL), *v129.i8, 0x707070707070707), vand_s8(vadd_s8(*v134.i8, *v134.i8), 0x808080808080808)), vbic_s8(*v123.i8, vcgt_u8(0x808080808080808, *v134.i8))), v135))), 0);
      v127.i16[0] = vaddlvq_s8(v136);
      v137 = v74 & 0xF | (16 * v75);
      v138 = v127.u16[0];
      if (v127.i16[0])
      {
        v139.i64[0] = 0x707070707070707;
        v139.i64[1] = 0x707070707070707;
        v140.i64[0] = -1;
        v140.i64[1] = -1;
        v363 = vbslq_s8(v136, v78, v21);
        v364 = vbslq_s8(v136, v80, v89);
        v23 = vbslq_s8(v136, v82, v362);
        v26 = vbslq_s8(v136, v84, v361);
        v67 = vbslq_s8(v136, v129, v67);
        v90 = vbslq_s8(v136, v130, v90);
        v122 = vbslq_s8(v136, v132, v122);
        v61 = vbslq_s8(v136, vandq_s8(vsubq_s8(vshlq_s8(v140, vsubq_s8(v139, v117)), v112), v119), v366);
        v55 = vbslq_s8(v136, v123, v55);
        v72 = vbslq_s8(v136, v134, v72);
        v141 = vmull_s8(*v67.i8, 0x707070707070707);
        v365 = vbslq_s8(v136, v131, v91);
        v367 = vshll_n_s8(vadd_s8(vadd_s8(*v365.i8, *v90.i8), *v122.i8), 3uLL);
      }

      else
      {
        v363 = v21;
        v364 = v89;
        v365 = v91;
        v141 = vmull_s8(*v67.i8, 0x707070707070707);
        v26 = v361;
        v23 = v362;
        v61 = v366;
      }

      v70 = v122;
      v68 = v90;
      v57 = v137;
      v143 = vsubq_s8(v16, vqtbl1q_s8(v16, xmmword_29D2F0DF0));
      v144 = v17;
      v144.i8[7] = v16.i8[7];
      v145 = vsubq_s8(v17, vqtbl1q_s8(v144, xmmword_29D2F0E00));
      v146 = v18;
      v146.i8[7] = v16.i8[7];
      v147 = vsubq_s8(v18, vqtbl1q_s8(v146, xmmword_29D2F0E10));
      v148 = v19;
      v148.i8[7] = v16.i8[7];
      v149 = vqtbl1q_s8(v148, xmmword_29D2F0E20);
      v150 = vsubq_s8(v19, v149);
      v151 = v143;
      v151.i8[0] = v143.i8[7];
      v151.i8[7] = v143.i8[0];
      v143.i8[0] = vmaxvq_s8(v151);
      v149.i8[0] = vminvq_s8(v151);
      v152 = vdupq_lane_s8(*v143.i8, 0);
      v153 = vdupq_lane_s8(*v149.i8, 0);
      v154 = vzip1q_s8(v152, v153);
      v155.i64[0] = 0x808080808080808;
      v155.i64[1] = 0x808080808080808;
      v156 = vbicq_s8(vsubq_s8(v155, vclsq_s8(v154)), vceqzq_s8(v154));
      v157 = vpmaxq_s8(v156, v156);
      v156.i8[0] = vmaxvq_s8(v145);
      v131.i8[0] = vminvq_s8(v145);
      v158 = vdupq_lane_s8(*v156.i8, 0);
      v159 = vdupq_lane_s8(*v131.i8, 0);
      v160 = vmaxq_s8(v152, v158);
      v161 = vminq_s8(v153, v159);
      v162 = vzip1q_s8(v158, v159);
      v163 = vsubq_s8(v155, vclsq_s8(v162));
      v164 = vbicq_s8(v163, vceqzq_s8(v162));
      v165 = vpmaxq_s8(v164, v164);
      v164.i8[0] = vmaxvq_s8(v147);
      v163.i8[0] = vminvq_s8(v147);
      v166 = vdupq_lane_s8(*v164.i8, 0);
      v167 = vdupq_lane_s8(*v163.i8, 0);
      v168 = vmaxq_s8(v160, v166);
      v169 = vminq_s8(v161, v167);
      v170 = vzip1q_s8(v166, v167);
      v171 = vsubq_s8(v155, vclsq_s8(v170));
      v172 = vbicq_s8(v171, vceqzq_s8(v170));
      v173 = vpmaxq_s8(v172, v172);
      v172.i8[0] = vmaxvq_s8(v150);
      v171.i8[0] = vminvq_s8(v150);
      v174 = vdupq_lane_s8(*v172.i8, 0);
      v175 = vdupq_lane_s8(*v171.i8, 0);
      v176 = vminq_s8(v169, v175);
      v177 = vzip1q_s8(v174, v175);
      v178 = vbicq_s8(vsubq_s8(v155, vclsq_s8(v177)), vceqzq_s8(v177));
      v179 = vpmaxq_s8(v178, v178);
      v180 = vmaxq_s8(vmaxq_s8(v157, v165), vmaxq_s8(v173, v179));
      v181 = vclzq_s8(vsubq_s8(vmaxq_s8(v168, v174), v176));
      v182 = vsubq_s8(v155, v181);
      v183 = vcgtq_s8(v180, v182);
      v184 = vminq_s8(v182, v180);
      v182.i64[0] = 0x909090909090909;
      v182.i64[1] = 0x909090909090909;
      v185.i64[0] = 0x202020202020202;
      v185.i64[1] = 0x202020202020202;
      v186 = vorrq_s8(vandq_s8(vceqzq_s8(v184), v185), vsubq_s8(vandq_s8(v183, v182), vmvnq_s8(v183)));
      v185.i64[0] = 0x303030303030303;
      v185.i64[1] = 0x303030303030303;
      v187 = vmaxq_s8(vminq_s8(vsubq_s8(v184, v157), v185), 0);
      v188 = vmaxq_s8(vminq_s8(vsubq_s8(v184, v165), v185), 0);
      v189 = vmaxq_s8(vminq_s8(vsubq_s8(v184, v173), v185), 0);
      v190 = vmaxq_s8(vminq_s8(vsubq_s8(v184, v179), v185), 0);
      v191 = vsubq_s8(v184, v187);
      v192 = vsubq_s8(v184, v188);
      v193 = vsubq_s8(v184, v189);
      v194 = vsubq_s8(v184, v190);
      v185.i64[0] = 0x404040404040404;
      v185.i64[1] = 0x404040404040404;
      v195 = vorrq_s8(v186, vbicq_s8(v185, vceqq_s8(vaddq_s8(v190, v189), vnegq_s8(vaddq_s8(v187, v188)))));
      v189.i64[0] = 0x3000300030003;
      v189.i64[1] = 0x3000300030003;
      v196 = vmovl_s8(*v72.i8);
      v185.i64[0] = 0x8000800080008;
      v185.i64[1] = 0x8000800080008;
      v155.i64[0] = 0x2000200020002;
      v155.i64[1] = 0x2000200020002;
      v197 = vdupq_lane_s8(vqmovn_u16(vcgtq_s16(vaddq_s16(vaddq_s16(vaddq_s16(vbicq_s8(vmovl_s8(*v55.i8), vceqzq_s16(vandq_s8(v196, v185))), vandq_s8(vshll_n_s8(*v72.i8, 1uLL), v185)), vaddq_s16(vandq_s8(vceqq_s16(vandq_s8(v196, v189), v155), v185), v141)), v367), vaddw_s8(vaddw_u8(vmlal_s8(vshll_n_s8(vadd_s8(vadd_s8(*v193.i8, *v192.i8), *v194.i8), 3uLL), *v191.i8, 0x707070707070707), vand_s8(vadd_s8(*v195.i8, *v195.i8), 0x808080808080808)), vbic_s8(*v184.i8, vcgt_u8(0x808080808080808, *v195.i8))))), 0);
      v186.i16[0] = vaddlvq_s8(v197);
      v198 = v186.u16[0];
      if (v186.i16[0])
      {
        v199.i64[0] = 0x707070707070707;
        v199.i64[1] = 0x707070707070707;
        v200.i64[0] = -1;
        v200.i64[1] = -1;
        v201 = vandq_s8(vsubq_s8(vshlq_s8(v200, vsubq_s8(v199, v181)), v176), v183);
        v20.i8[0] = vbslq_s8(v197, vextq_s8(v16, v16, 0xFuLL), v20).u8[0];
        v21 = vbslq_s8(v197, v151, v363);
        v22 = vbslq_s8(v197, v145, v364);
        v23 = vbslq_s8(v197, v147, v23);
        v26 = vbslq_s8(v197, v150, v26);
        v67 = vbslq_s8(v197, v191, v67);
        v68 = vbslq_s8(v197, v192, v68);
        v69 = vbslq_s8(v197, v193, v365);
        v70 = vbslq_s8(v197, v194, v70);
        v61 = vbslq_s8(v197, v201, v61);
        v55 = vbslq_s8(v197, v184, v55);
        v72 = vbslq_s8(v197, v195, v72);
      }

      else
      {
        v22 = v364;
        v69 = v365;
        v21 = v363;
      }

      if (v138)
      {
        v202 = v198 == 0;
      }

      else
      {
        v202 = 0;
      }

      v56 = v202;
    }

    v203 = vmovl_s8(*v72.i8);
    v204.i64[0] = 0x8000800080008;
    v204.i64[1] = 0x8000800080008;
    v205.i64[0] = 0x3000300030003;
    v205.i64[1] = 0x3000300030003;
    v206.i64[0] = 0x2000200020002;
    v206.i64[1] = 0x2000200020002;
    if (((7 * v67.i8[0] + 8 * vaddq_s8(vaddq_s8(v69, v68), v70).i8[0] + ((2 * v203.i16[0]) & 8) + vbicq_s8(vmovl_s8(*v55.i8), vceqzq_s16(vandq_s8(v203, v204))).u16[0] + vandq_s8(vceqq_s16(vandq_s8(v203, v205), v206), v204).u16[0]) - 117) <= 0xFFFFFFFFFFFFFF77)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(a1, a2, a3, a4, a5, a6, a7);
      return 16;
    }

    else
    {
      v207 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v208 = 8 * (a1 & 7);
      if (v208)
      {
        v209 = *v207 & ~(-1 << v208);
      }

      else
      {
        v209 = 0;
      }

      v210 = vextq_s8(v67, 0, 8uLL);
      v211 = vextq_s8(v68, 0, 8uLL);
      v212 = vextq_s8(v69, 0, 8uLL);
      v213 = vextq_s8(v70, 0, 8uLL);
      if (v55.i8[0])
      {
        v214 = (16 * v55.i8[0] + 112) & 0x70;
      }

      else
      {
        v214 = 0;
      }

      *a2 = 32 * v72.i8[0];
      v215 = (v72.i8[0] & 8 | v214 & 0xFFFF807F | (v20.u8[0] << 7)) >> 3;
      v216 = (v215 << v208) | v209;
      if (v208 >= 0x34)
      {
        *v207 = v216;
        v216 = v215 >> (-8 * (a1 & 7u));
      }

      v217 = v208 + 12;
      v218.i64[0] = 0x202020202020202;
      v218.i64[1] = 0x202020202020202;
      v219 = vandq_s8(vbicq_s8(xmmword_29D2F0D30, vmovl_s16(vceqz_s16(vand_s8(*&vmovl_u8(*v72.i8), 0x4000400040004)))), v218);
      v218.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v218.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v220.i64[0] = -1;
      v220.i64[1] = -1;
      v221 = vandq_s8(vshlq_u8(v220, vorrq_s8(v219, v218)), vzip1q_s16(vzip1q_s8(vsubq_s8(v55, v210), vsubq_s8(v55, v211)), vzip1q_s8(vsubq_s8(v55, v212), vsubq_s8(v55, v213))).u32[0]);
      v222 = vmovl_u8(*v219.i8);
      v223 = vpaddq_s16(vshlq_u16(vmovl_u8(*v221.i8), vtrn1q_s16(0, v222)), vmovl_high_u8(v221));
      v224 = vpaddq_s16(v222, vmovl_high_u8(v219));
      v225 = vmovl_u16(*v224.i8);
      v226 = vmovl_high_u16(v224);
      v227 = vpaddq_s32(vshlq_u32(vmovl_u16(*v223.i8), vtrn1q_s32(0, v225)), vshlq_u32(vmovl_high_u16(v223), vtrn1q_s32(0, v226)));
      v228 = vpaddq_s32(v225, v226);
      v229.i64[0] = v227.u32[0];
      v229.i64[1] = v227.u32[1];
      v230 = v229;
      v229.i64[0] = v227.u32[2];
      v229.i64[1] = v227.u32[3];
      v231 = v229;
      v229.i64[0] = v228.u32[0];
      v229.i64[1] = v228.u32[1];
      v232 = v229;
      v229.i64[0] = v228.u32[2];
      v229.i64[1] = v228.u32[3];
      v233 = vpaddq_s64(vshlq_u64(v230, vzip1q_s64(0, v232)), vshlq_u64(v231, vzip1q_s64(0, v229)));
      v234 = vpaddq_s64(v232, v229);
      v235 = (v208 + 12) & 0x3C;
      v236 = (v233.i64[0] << v235) | v216;
      if ((v234.i64[0] + v235) >= 0x40)
      {
        *(v207 + ((v217 >> 3) & 8)) = v236;
        v236 = v233.i64[0] >> -v235;
      }

      v237 = v234.i64[0] + v217;
      v238 = (v234.i64[0] + v217) & 0x3F;
      v239 = v236 | (v233.i64[1] << (v234.i8[0] + v217));
      if ((v238 + v234.i64[1]) >= 0x40)
      {
        *(v207 + ((v237 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v239;
        v239 = v233.i64[1] >> -v238;
        if (!v238)
        {
          v239 = 0;
        }
      }

      v240 = vceqq_s8(v55, v67);
      v241 = v237 + v234.i64[1];
      v242.i64[0] = 0x808080808080808;
      v242.i64[1] = 0x808080808080808;
      v243.i64[0] = -1;
      v243.i64[1] = -1;
      v244 = vandq_s8(vextq_s8(vtstq_s8(v72, v242), 0, 0xFuLL), v55);
      v245.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v245.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v246 = vandq_s8(vshlq_u8(v243, vaddq_s8(v244, v245)), v61);
      v247 = vmovl_u8(*v244.i8);
      v248 = vpaddq_s16(vshlq_u16(vmovl_u8(*v246.i8), vtrn1q_s16(0, v247)), vmovl_high_u8(v246));
      v249 = vpaddq_s16(v247, vmovl_high_u8(v244));
      v250 = vmovl_u16(*v249.i8);
      v251 = vmovl_high_u16(v249);
      v252 = vpaddq_s32(vshlq_u32(vmovl_u16(*v248.i8), vtrn1q_s32(0, v250)), vshlq_u32(vmovl_high_u16(v248), vtrn1q_s32(0, v251)));
      v253 = vpaddq_s32(v250, v251);
      v254.i64[0] = v252.u32[0];
      v254.i64[1] = v252.u32[1];
      v255 = v254;
      v254.i64[0] = v252.u32[2];
      v254.i64[1] = v252.u32[3];
      v256 = v254;
      v254.i64[0] = v253.u32[0];
      v254.i64[1] = v253.u32[1];
      v257 = v254;
      v254.i64[0] = v253.u32[2];
      v254.i64[1] = v253.u32[3];
      v258 = vpaddq_s64(vshlq_u64(v255, vzip1q_s64(0, v257)), vshlq_u64(v256, vzip1q_s64(0, v254)));
      v259 = vpaddq_s64(v257, v254);
      v260 = (v237 + v234.i64[1]) & 0x3F;
      v261 = (v258.i64[0] << (v237 + v234.i8[8])) | v239;
      if ((v259.i64[0] + v260) >= 0x40)
      {
        *(v207 + ((v241 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v261;
        v261 = v258.i64[0] >> -v260;
        if (!v260)
        {
          v261 = 0;
        }
      }

      v262 = vandq_s8(v61, v240);
      v263 = v259.i64[0] + v241;
      v264 = v261 | (v258.i64[1] << v263);
      if ((v263 & 0x3F) + v259.i64[1] >= 0x40)
      {
        *(v207 + ((v263 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v264;
        v264 = v258.i64[1] >> -(v263 & 0x3F);
        if ((v263 & 0x3F) == 0)
        {
          v264 = 0;
        }
      }

      v265 = vceqq_s8(v55, v68);
      v266 = vaddq_s8(v262, v21);
      v267 = v263 + v259.i64[1];
      if (v56)
      {
        v264 |= v57 << v267;
        if ((v267 & 0x3F) >= 0x38)
        {
          *(v207 + ((v267 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v264;
          v264 = v57 >> -(v267 & 0x3F);
        }

        v267 += 8;
      }

      v268 = vandq_s8(v61, v265);
      v269 = vmovl_high_u8(v210);
      v210.i8[0] = 0;
      v270.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v270.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v271.i64[0] = -1;
      v271.i64[1] = -1;
      v272 = vandq_s8(vshlq_u8(v271, vaddq_s8(v210, v270)), v266);
      v273 = vmovl_u8(*v210.i8);
      v274 = vpaddq_s16(vshlq_u16(vmovl_u8(*v272.i8), vtrn1q_s16(0, v273)), vshlq_u16(vmovl_high_u8(v272), vtrn1q_s16(0, v269)));
      v275 = vpaddq_s16(v273, v269);
      v276 = vmovl_u16(*v275.i8);
      v277 = vmovl_high_u16(v275);
      v278 = vpaddq_s32(vshlq_u32(vmovl_u16(*v274.i8), vtrn1q_s32(0, v276)), vshlq_u32(vmovl_high_u16(v274), vtrn1q_s32(0, v277)));
      v279 = vpaddq_s32(v276, v277);
      v280.i64[0] = v278.u32[0];
      v280.i64[1] = v278.u32[1];
      v281 = v280;
      v280.i64[0] = v278.u32[2];
      v280.i64[1] = v278.u32[3];
      v282 = v280;
      v280.i64[0] = v279.u32[0];
      v280.i64[1] = v279.u32[1];
      v283 = v280;
      v280.i64[0] = v279.u32[2];
      v280.i64[1] = v279.u32[3];
      v284 = vpaddq_s64(vshlq_u64(v281, vzip1q_s64(0, v283)), vshlq_u64(v282, vzip1q_s64(0, v280)));
      v285 = vpaddq_s64(v283, v280);
      v286 = (v284.i64[0] << v267) | v264;
      if (v285.i64[0] + (v267 & 0x3F) >= 0x40)
      {
        *(v207 + ((v267 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v286;
        v286 = v284.i64[0] >> -(v267 & 0x3F);
        if ((v267 & 0x3F) == 0)
        {
          v286 = 0;
        }
      }

      v287 = vceqq_s8(v55, v69);
      v288 = vaddq_s8(v22, v268);
      v289 = v285.i64[0] + v267;
      v290 = (v285.i64[0] + v267) & 0x3F;
      v291 = v286 | (v284.i64[1] << v289);
      if ((v289 & 0x3F) + v285.i64[1] >= 0x40)
      {
        *(v207 + ((v289 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v291;
        v291 = v284.i64[1] >> -v290;
        if (!v290)
        {
          v291 = 0;
        }
      }

      v292 = vandq_s8(v61, v287);
      v293 = v289 + v285.i64[1];
      v294.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v294.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v295.i64[0] = -1;
      v295.i64[1] = -1;
      v296 = vandq_s8(vshlq_u8(v295, vaddq_s8(v211, v294)), v288);
      v297 = vmovl_u8(*v211.i8);
      v298 = vmovl_high_u8(v211);
      v299 = vpaddq_s16(vshlq_u16(vmovl_u8(*v296.i8), vtrn1q_s16(0, v297)), vshlq_u16(vmovl_high_u8(v296), vtrn1q_s16(0, v298)));
      v300 = vpaddq_s16(v297, v298);
      v301 = vmovl_u16(*v300.i8);
      v302 = vmovl_high_u16(v300);
      v303 = vpaddq_s32(vshlq_u32(vmovl_u16(*v299.i8), vtrn1q_s32(0, v301)), vshlq_u32(vmovl_high_u16(v299), vtrn1q_s32(0, v302)));
      v304 = vpaddq_s32(v301, v302);
      v305.i64[0] = v303.u32[0];
      v305.i64[1] = v303.u32[1];
      v306 = v305;
      v305.i64[0] = v303.u32[2];
      v305.i64[1] = v303.u32[3];
      v307 = v305;
      v305.i64[0] = v304.u32[0];
      v305.i64[1] = v304.u32[1];
      v308 = v305;
      v305.i64[0] = v304.u32[2];
      v305.i64[1] = v304.u32[3];
      v309 = vpaddq_s64(vshlq_u64(v306, vzip1q_s64(0, v308)), vshlq_u64(v307, vzip1q_s64(0, v305)));
      v310 = vpaddq_s64(v308, v305);
      v311 = (v309.i64[0] << v293) | v291;
      if (v310.i64[0] + (v293 & 0x3F) >= 0x40)
      {
        *(v207 + ((v293 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v311;
        v311 = v309.i64[0] >> -(v293 & 0x3F);
        if ((v293 & 0x3F) == 0)
        {
          v311 = 0;
        }
      }

      v312 = vceqq_s8(v55, v70);
      v313 = vaddq_s8(v23, v292);
      v314 = v310.i64[0] + v293;
      v315 = v311 | (v309.i64[1] << v314);
      if ((v314 & 0x3F) + v310.i64[1] >= 0x40)
      {
        *(v207 + ((v314 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v315;
        v315 = v309.i64[1] >> -(v314 & 0x3F);
        if ((v314 & 0x3F) == 0)
        {
          v315 = 0;
        }
      }

      v316 = vandq_s8(v61, v312);
      v317 = v314 + v310.i64[1];
      v318.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v318.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v319.i64[0] = -1;
      v319.i64[1] = -1;
      v320 = vandq_s8(vshlq_u8(v319, vaddq_s8(v212, v318)), v313);
      v321 = vmovl_u8(*v212.i8);
      v322 = vmovl_high_u8(v212);
      v323 = vpaddq_s16(vshlq_u16(vmovl_u8(*v320.i8), vtrn1q_s16(0, v321)), vshlq_u16(vmovl_high_u8(v320), vtrn1q_s16(0, v322)));
      v324 = vpaddq_s16(v321, v322);
      v325 = vmovl_u16(*v324.i8);
      v326 = vmovl_high_u16(v324);
      v327 = vpaddq_s32(vshlq_u32(vmovl_u16(*v323.i8), vtrn1q_s32(0, v325)), vshlq_u32(vmovl_high_u16(v323), vtrn1q_s32(0, v326)));
      v328 = vpaddq_s32(v325, v326);
      v329.i64[0] = v327.u32[0];
      v329.i64[1] = v327.u32[1];
      v330 = v329;
      v329.i64[0] = v327.u32[2];
      v329.i64[1] = v327.u32[3];
      v331 = v329;
      v329.i64[0] = v328.u32[0];
      v329.i64[1] = v328.u32[1];
      v332 = v329;
      v329.i64[0] = v328.u32[2];
      v329.i64[1] = v328.u32[3];
      v333 = vpaddq_s64(vshlq_u64(v330, vzip1q_s64(0, v332)), vshlq_u64(v331, vzip1q_s64(0, v329)));
      v334 = vpaddq_s64(v332, v329);
      v335 = (v333.i64[0] << v317) | v315;
      if (v334.i64[0] + (v317 & 0x3F) >= 0x40)
      {
        *(v207 + ((v317 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v335;
        v335 = v333.i64[0] >> -(v317 & 0x3F);
        if ((v317 & 0x3F) == 0)
        {
          v335 = 0;
        }
      }

      v336 = vaddq_s8(v26, v316);
      v337 = v334.i64[0] + v317;
      v338 = v335 | (v333.i64[1] << v337);
      if ((v337 & 0x3F) + v334.i64[1] >= 0x40)
      {
        *(v207 + ((v337 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v338;
        v338 = v333.i64[1] >> -(v337 & 0x3F);
        if ((v337 & 0x3F) == 0)
        {
          v338 = 0;
        }
      }

      v339 = v337 + v334.i64[1];
      v340.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v340.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v341.i64[0] = -1;
      v341.i64[1] = -1;
      v342 = vandq_s8(vshlq_u8(v341, vaddq_s8(v213, v340)), v336);
      v343 = vmovl_u8(*v213.i8);
      v344 = vmovl_high_u8(v213);
      v345 = vpaddq_s16(vshlq_u16(vmovl_u8(*v342.i8), vtrn1q_s16(0, v343)), vshlq_u16(vmovl_high_u8(v342), vtrn1q_s16(0, v344)));
      v346 = vpaddq_s16(v343, v344);
      v347 = vmovl_u16(*v346.i8);
      v348 = vmovl_high_u16(v346);
      v349 = vpaddq_s32(vshlq_u32(vmovl_u16(*v345.i8), vtrn1q_s32(0, v347)), vshlq_u32(vmovl_high_u16(v345), vtrn1q_s32(0, v348)));
      v350 = vpaddq_s32(v347, v348);
      v351.i64[0] = v349.u32[0];
      v351.i64[1] = v349.u32[1];
      v352 = v351;
      v351.i64[0] = v349.u32[2];
      v351.i64[1] = v349.u32[3];
      v353 = v351;
      v351.i64[0] = v350.u32[0];
      v351.i64[1] = v350.u32[1];
      v354 = v351;
      v351.i64[0] = v350.u32[2];
      v351.i64[1] = v350.u32[3];
      v355 = vpaddq_s64(vshlq_u64(v352, vzip1q_s64(0, v354)), vshlq_u64(v353, vzip1q_s64(0, v351)));
      v356 = vpaddq_s64(v354, v351);
      v357 = (v355.i64[0] << v339) | v338;
      if (v356.i64[0] + (v339 & 0x3F) > 0x3F)
      {
        *(v207 + ((v339 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v357;
        if ((v339 & 0x3F) != 0)
        {
          v357 = v355.i64[0] >> -(v339 & 0x3F);
        }

        else
        {
          v357 = 0;
        }
      }

      v358 = v356.i64[0] + v339;
      v359 = v357 | (v355.i64[1] << v358);
      if ((v358 & 0x3F) + v356.i64[1] >= 0x40)
      {
        *(v207 + ((v358 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v359;
        v359 = v355.i64[1] >> -(v358 & 0x3F);
        if ((v358 & 0x3F) == 0)
        {
          v359 = 0;
        }
      }

      v360 = v358 + v356.i64[1];
      if ((v360 & 0x3F) != 0)
      {
        *(v207 + ((v360 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v359;
      }

      result = (v360 - v208 + 7) >> 3;
      *a2 |= result - 1;
    }
  }

  else
  {
    *a1 = a3->i8[0];
    *a2 = 96;
    return 1;
  }

  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v67 = *MEMORY[0x29EDCA608];
  v65 = 0u;
  v66 = 0u;
  if (!a6 || !a5)
  {
    goto LABEL_30;
  }

  if (a5 <= 1)
  {
    v10 = 0;
    if (a6 >= 8 && a4 == 1)
    {
      if (a6 < 0x20)
      {
        v10 = 0;
        goto LABEL_25;
      }

      v10 = a6 & 0xE0;
      v33 = (a3 + 16);
      v34 = &v66;
      v35 = v10;
      do
      {
        v36 = *v33;
        *(v34 - 1) = *(v33 - 1);
        *v34 = v36;
        v33 += 2;
        v34 += 2;
        v35 -= 32;
      }

      while (v35);
      if (v10 == a6)
      {
        goto LABEL_30;
      }

      if ((a6 & 0x18) != 0)
      {
LABEL_25:
        v37 = v10;
        v10 = a6 & 0xF8;
        v38 = (a3 + v37);
        v39 = (&v65 + v37);
        v40 = v37 - v10;
        do
        {
          v41 = *v38++;
          *v39++ = v41;
          v40 += 8;
        }

        while (v40);
        if (v10 == a6)
        {
          goto LABEL_30;
        }
      }
    }

    v42 = a6 - v10;
    v43 = &v65 + v10;
    v44 = (a3 + v10 * a4);
    do
    {
      *v43++ = *v44;
      v44 += a4;
      --v42;
    }

    while (v42);
    goto LABEL_30;
  }

  v11 = a5 & 0x7E;
  if (a5 == v11)
  {
    v12 = 0;
    v13 = &v65 + 4;
    v14 = (a3 + 1);
    do
    {
      v15 = v14;
      v16 = v13;
      v17 = a5;
      do
      {
        v18 = *(v15 - 1);
        v19 = *v15;
        v15 += 2;
        *(v16 - 4) = v18;
        *v16 = v19;
        v16 += 8;
        v17 -= 2;
      }

      while (v17);
      ++v12;
      ++v13;
      v14 += a4;
    }

    while (v12 != a6);
  }

  else
  {
    v20 = 0;
    v21 = &v65 + 4;
    v22 = (a3 + 1);
    v23 = &v65 + 8 * ((a5 >> 1) & 0x3F);
    do
    {
      v24 = v22;
      v25 = v21;
      v26 = a5 & 0x7E;
      do
      {
        v27 = *(v24 - 1);
        v28 = *v24;
        v24 += 2;
        *(v25 - 4) = v27;
        *v25 = v28;
        v25 += 8;
        v26 -= 2;
      }

      while (v26);
      v29 = (a3 + v20 * a4 + v11);
      v30 = v23;
      v31 = a5 - v11;
      do
      {
        v32 = *v29++;
        *v30 = v32;
        v30 += 4;
        --v31;
      }

      while (v31);
      ++v20;
      ++v21;
      v22 += a4;
      ++v23;
    }

    while (v20 != a6);
  }

LABEL_30:
  v60.i32[0] = v65;
  v60.i32[1] = BYTE4(v65);
  v60.i32[2] = BYTE1(v65);
  v60.i32[3] = BYTE5(v65);
  v61 = BYTE8(v65);
  v62 = BYTE12(v65);
  if (a5 >= 4)
  {
    v45 = 4;
  }

  else
  {
    v45 = a5;
  }

  if (a5 >= 4)
  {
    v46 = a5 - 4;
  }

  else
  {
    v46 = 0;
  }

  v63 = BYTE9(v65);
  v64 = BYTE13(v65);
  if (a6 >= 2)
  {
    v47 = 2;
  }

  else
  {
    v47 = a6;
  }

  if (a6 >= 2)
  {
    v48 = a6 - 2;
  }

  else
  {
    v48 = 0;
  }

  v50 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1, &v60, a7, v45, v47);
  v60.i32[0] = BYTE2(v65);
  v60.i32[1] = BYTE6(v65);
  v60.i32[2] = BYTE3(v65);
  v60.i32[3] = BYTE7(v65);
  v61 = BYTE10(v65);
  v62 = BYTE14(v65);
  v63 = BYTE11(v65);
  v64 = HIBYTE(v65);
  if (a6 >= 4)
  {
    v51 = 2;
  }

  else
  {
    v51 = v48;
  }

  v52 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 4, &v60, a7, v45, v51);
  v60.i32[0] = v66;
  v60.i32[1] = BYTE4(v66);
  v60.i32[2] = BYTE1(v66);
  v60.i32[3] = BYTE5(v66);
  v61 = BYTE8(v66);
  v62 = BYTE12(v66);
  if (a5 >= 8)
  {
    v53 = 4;
  }

  else
  {
    v53 = v46;
  }

  v63 = BYTE9(v66);
  v64 = BYTE13(v66);
  v54 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 8, &v60, a7, v53, v47);
  v60.i32[0] = BYTE2(v66);
  v60.i32[1] = BYTE6(v66);
  v60.i32[2] = BYTE3(v66);
  v60.i32[3] = BYTE7(v66);
  v61 = BYTE10(v66);
  v62 = BYTE14(v66);
  v63 = BYTE11(v66);
  v64 = HIBYTE(v66);
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 12, &v60, a7, v53, v51);
  if (v54)
  {
    v56 = 4;
  }

  else
  {
    v56 = 0;
  }

  if (v52)
  {
    v57 = 2;
  }

  else
  {
    v57 = 0;
  }

  if (result)
  {
    v58 = -8;
  }

  else
  {
    v58 = -16;
  }

  *a2 = v58 | v56 | v50 | v57;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(unint64_t a1, int8x16_t *a2, int a3, unsigned int a4, unsigned int a5)
{
  v117 = *MEMORY[0x29EDCA608];
  if (a3 == 1)
  {
    v9.i64[0] = 0x8000000080;
    v9.i64[1] = 0x8000000080;
    v10.i64[0] = 0x8100000081;
    v10.i64[1] = 0x8100000081;
    v7 = vbicq_s8(veorq_s8(*a2, v9), vceqq_s32(*a2, v10));
    v8 = vbicq_s8(veorq_s8(a2[1], v9), vceqq_s32(a2[1], v10));
    goto LABEL_5;
  }

  if (a3 == 3)
  {
    v6.i64[0] = 0x8000000080;
    v6.i64[1] = 0x8000000080;
    v7 = veorq_s8(*a2, v6);
    v8 = veorq_s8(a2[1], v6);
LABEL_5:
    v115 = v7;
    v116 = v8;
    v11 = v7.i32[0];
    goto LABEL_7;
  }

  v12 = a2[1];
  v115 = *a2;
  v116 = v12;
  v11 = v115.i32[0];
LABEL_7:
  if (a4)
  {
    v13 = a5 != 0;
  }

  else
  {
    v13 = 0;
  }

  v14 = a4 > 1 && a5 != 0;
  if (v14)
  {
    v15 = v115.u32[1];
    v16 = v115.i32[1] < v11;
    if (v115.i32[1] >= v11)
    {
      v17 = v11;
    }

    else
    {
      v17 = v115.u32[1];
    }

    if (v11 > v115.i32[1])
    {
      v15 = v11;
    }
  }

  else
  {
    v16 = 0;
    v15 = v11;
    v17 = v11;
  }

  v18 = a5 <= 1 || a4 == 0;
  v19 = !v18;
  if (!v18)
  {
    if (v115.i32[2] < v17)
    {
      v16 = 2;
      v17 = v115.u32[2];
    }

    if (v15 <= v115.i32[2])
    {
      v15 = v115.u32[2];
    }
  }

  v21 = a5 > 1 && a4 > 1;
  if (v21)
  {
    if (v115.i32[3] < v17)
    {
      v16 = 3;
      v17 = v115.u32[3];
    }

    if (v15 <= v115.i32[3])
    {
      v15 = v115.u32[3];
    }
  }

  if (a5)
  {
    v22 = a4 > 2;
  }

  else
  {
    v22 = 0;
  }

  v23 = v22;
  if (v23 == 1)
  {
    if (v116.i32[0] < v17)
    {
      v16 = 4;
      v17 = v116.i32[0];
    }

    if (v15 <= v116.i32[0])
    {
      v15 = v116.i32[0];
    }
  }

  if (a5)
  {
    v24 = a4 > 3;
  }

  else
  {
    v24 = 0;
  }

  v25 = v24;
  if (v25 == 1)
  {
    if (v116.i32[1] < v17)
    {
      v16 = 5;
      v17 = v116.u32[1];
    }

    if (v15 <= v116.i32[1])
    {
      v15 = v116.u32[1];
    }
  }

  v27 = a5 > 1 && a4 > 2;
  if (v27)
  {
    if (v116.i32[2] < v17)
    {
      v16 = 6;
      v17 = v116.u32[2];
    }

    if (v15 <= v116.i32[2])
    {
      v15 = v116.u32[2];
    }
  }

  v29 = a5 > 1 && a4 > 3;
  if (v29)
  {
    if (v116.i32[3] < v17)
    {
      v16 = 7;
      v17 = v116.u32[3];
    }

    if (v15 <= v116.i32[3])
    {
      v15 = v116.u32[3];
    }
  }

  v30 = __clz(v15 - v17);
  if (v15)
  {
    v31 = v15 == 255;
  }

  else
  {
    v31 = 1;
  }

  v32 = !v31;
  v33 = v15 - v17;
  if (v15 != v17)
  {
    v32 = 33 - v30;
  }

  if ((a3 | 2) == 3)
  {
    v34 = 0;
    if (v17 <= 0x7F && v15 >= 0x80)
    {
      v34 = kDQuadParamTable[10 * v32 + 8] == 0;
    }

    if (v32 > 5)
    {
      goto LABEL_103;
    }

LABEL_102:
    if (!v34)
    {
      goto LABEL_112;
    }

    goto LABEL_103;
  }

  v34 = 0;
  if (v32 <= 5)
  {
    goto LABEL_102;
  }

LABEL_103:
  v35 = kDQuadParamTable[10 * v32 + 4];
  if (v34)
  {
    v36 = 0;
  }

  else
  {
    v36 = -2;
  }

  if (v35 >= 8)
  {
    v37 = 0;
  }

  else
  {
    v37 = v17 & ~(-1 << (8 - v35));
  }

  v38 = v37 + v36;
  if (v38 >= 1 && __clz(v38 + v33) < v30)
  {
    ++v32;
  }

LABEL_112:
  v39 = v32;
  v40 = &kDQuadParamTable[10 * v32];
  v41 = *(v40 + 1);
  v42 = *(v40 + 5);
  if (a3 == 4)
  {
    result = 1;
  }

  else
  {
    if (a4)
    {
      v44 = a5 == 0;
    }

    else
    {
      v44 = 1;
    }

    result = v44 || v41 >> v42 > 0x10;
  }

  v46 = 0;
  v47 = 0;
  v48 = kDQuadParamTable[10 * v32 + 4];
  if (v48 >= 8)
  {
    v49 = 8;
  }

  else
  {
    v49 = v48;
  }

  if (v42 >= 8)
  {
    v50 = 8;
  }

  else
  {
    v50 = v42;
  }

  v51 = (-1 << (8 - v49)) & v17;
  v52 = v11 - v51;
  if (!v13)
  {
    v52 = 0;
  }

  v18 = !v14;
  v53 = v115.i32[1] - v51;
  if (v18)
  {
    v53 = 0;
  }

  v114[0] = v52;
  v114[1] = v53;
  memset(v112, 0, sizeof(v112));
  v113 = 0;
  v54 = v41 >> v50;
  v55 = v115.i32[2] - v51;
  if (!v19)
  {
    v55 = 0;
  }

  v56 = v115.i32[3] - v51;
  if (!v21)
  {
    v56 = 0;
  }

  v114[2] = v55;
  v114[3] = v56;
  v57 = v116.i32[0] - v51;
  if (!v23)
  {
    v57 = 0;
  }

  v58 = v116.i32[1] - v51;
  if (!v25)
  {
    v58 = 0;
  }

  v114[4] = v57;
  v114[5] = v58;
  v59 = v116.i32[2] - v51;
  if (!v27)
  {
    v59 = 0;
  }

  if (v29)
  {
    v60 = v116.i32[3] - v51;
  }

  else
  {
    v60 = 0;
  }

  if (v54 <= 1)
  {
    v61 = 1;
  }

  else
  {
    v61 = v41 >> v50;
  }

  v114[6] = v59;
  v114[7] = v60;
  v62 = v16;
  v63 = 4 * v16;
  v64 = &byte_29D2F3081;
  do
  {
    if (v63 != v46)
    {
      if (v42)
      {
        v65 = v114[v46 / 4] / v61;
      }

      else
      {
        LODWORD(v65) = 0;
      }

      *(v112 + v47) = v65;
      if (v54 >= 2)
      {
        v66 = v114[v46 / 4];
        if (v66)
        {
          if (v66 / v61 * v61 == v66 && ((v66 / v61) & 1) != 0)
          {
            if (v51 || v65 != 1)
            {
              if ((a3 | 2) != 3 || (v68 = v115.u32[v46 / 4], v68 != 128) && ((a3 | 2) != 3 || v61 + 128 != v68))
              {
                LODWORD(v65) = v65 - 1;
                *(v112 + v47) = v65;
              }
            }

            else
            {
              LODWORD(v65) = 1;
            }
          }
        }
      }

      if (v65 >> v50 || v115.i32[v46 / 4] == 255)
      {
        *(v112 + v47) = ~(-1 << v50);
      }

      if (*v64 >= a5 || *(v64 - 1) >= a4)
      {
        *(v112 + v47) = 0;
      }

      ++v47;
    }

    v46 += 4;
    v64 += 2;
  }

  while (v46 != 32);
  v69 = (a1 & 0xFFFFFFFFFFFFFFF8);
  v70 = 8 * (a1 & 7);
  *a1 = 0;
  if (!result)
  {
    if (v17 | v39)
    {
      v81 = v70 | 3;
      if (v39 < 3)
      {
        v82 = v39 + 1;
      }

      else
      {
        v82 = 0;
      }

      if (v39 >= 3)
      {
        v83 = (v39 + 6) & 7;
      }

      else
      {
        v83 = 0;
      }

      *v69 |= v83 << v70;
      if (v39 >= 3)
      {
        v85 = 0;
        v89 = 3;
        if (!v48)
        {
          goto LABEL_218;
        }

        goto LABEL_213;
      }

      v84 = 2 * (v39 < 3);
    }

    else
    {
      v82 = 0;
      v81 = v70 | 3;
      v84 = 2;
    }

    if (v84 - v70 + v81 <= 0x20)
    {
      v85 = 0;
      v86 = 0;
      do
      {
        v87 = 64 - v81;
        if (64 - v81 >= v84)
        {
          v87 = v84;
        }

        v69[v85] |= ((v82 >> v86) & ~(-1 << v87)) << v81;
        v86 += v87;
        v88 = v87 + v81;
        v85 += v88 >> 6;
        v81 = v88 & 0x3F;
        v84 -= v87;
      }

      while (v84);
    }

    else
    {
      v85 = 0;
    }

    v89 = 5;
    if (!v39)
    {
      goto LABEL_219;
    }

    if (!v48)
    {
LABEL_218:
      v89 += v49;
LABEL_219:
      if (v42)
      {
        if ((v81 - v70 + (v85 << 6) + 3) <= 0x20)
        {
          v95 = 0;
          v96 = 3;
          do
          {
            v97 = 64 - v81;
            if (64 - v81 >= v96)
            {
              v97 = v96;
            }

            v69[v85] |= ((v62 >> v95) & ~(-1 << v97)) << v81;
            v95 += v97;
            v98 = v97 + v81;
            v85 += v98 >> 6;
            v81 = v98 & 0x3F;
            v96 -= v97;
          }

          while (v96);
        }

        v89 += 3;
      }

      v99 = (37 * (32 - v89)) >> 8;
      v100 = -7 * v99 + 32 - v89;
      if ((v100 - 257) >= 0xFFFFFF00 && v81 - v70 + (v85 << 6) + v100 <= 0x20)
      {
        do
        {
          v101 = 64 - v81;
          if (64 - v81 >= v100)
          {
            v101 = v100;
          }

          v102 = v101 + v81;
          v85 += v102 >> 6;
          v81 = v102 & 0x3F;
          v100 -= v101;
        }

        while (v100);
      }

      v103 = 0;
      while (!v42)
      {
        v109 = v99;
        if (v99)
        {
          goto LABEL_242;
        }

LABEL_232:
        if (++v103 == 7)
        {
          return result;
        }
      }

      if ((v50 - v70 + v81 + (v85 << 6)) <= 0x20)
      {
        v104 = 0;
        v105 = *(v112 + v103);
        v106 = v50;
        do
        {
          v107 = 64 - v81;
          if (64 - v81 >= v106)
          {
            v107 = v106;
          }

          v69[v85] |= ((v105 >> v104) & ~(-1 << v107)) << v81;
          v104 += v107;
          v108 = v107 + v81;
          v85 += v108 >> 6;
          v81 = v108 & 0x3F;
          v106 -= v107;
        }

        while (v106);
      }

      v109 = v99 - v50;
      if (v99 == v50)
      {
        goto LABEL_232;
      }

LABEL_242:
      if (v109 <= 0x100 && v81 - v70 + (v85 << 6) + v109 <= 0x20)
      {
        do
        {
          v110 = 64 - v81;
          if (64 - v81 >= v109)
          {
            v110 = v109;
          }

          v111 = v110 + v81;
          v85 += v111 >> 6;
          v81 = v111 & 0x3F;
          v109 -= v110;
        }

        while (v109);
      }

      goto LABEL_232;
    }

LABEL_213:
    if ((v49 - v70 + v81 + (v85 << 6)) <= 0x20)
    {
      v90 = 0;
      v91 = v51 >> (8 - v49);
      v92 = v49;
      do
      {
        v93 = 64 - v81;
        if (64 - v81 >= v92)
        {
          v93 = v92;
        }

        v69[v85] |= ((v91 >> v90) & ~(-1 << v93)) << v81;
        v90 += v93;
        v94 = v93 + v81;
        v85 += v94 >> 6;
        v81 = v94 & 0x3F;
        v92 -= v93;
      }

      while (v92);
    }

    goto LABEL_218;
  }

  v71 = 0;
  v72 = 0;
  v73 = v70;
  do
  {
    v74 = &AGX::AppleCompressionGen2::kSampleOffsets + 2 * v71;
    if (v74[1] >= a5 || *v74 >= a4)
    {
      v76 = 0;
    }

    else
    {
      v76 = v115.u32[v71] >> 4;
    }

    if ((v73 - v70 + (v72 << 6) - 29) >= 0xFFFFFFFFFFFFFFDFLL)
    {
      v77 = 0;
      v78 = 4;
      do
      {
        v79 = 64 - v73;
        if (64 - v73 >= v78)
        {
          v79 = v78;
        }

        v69[v72] |= ((v76 >> v77) & ~(-1 << v79)) << v73;
        v77 += v79;
        v80 = v79 + v73;
        v72 += v80 >> 6;
        v73 = v80 & 0x3F;
        v78 -= v79;
      }

      while (v78);
    }

    ++v71;
  }

  while (v71 != 8);
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(void *a1, uint64_t a2, uint64_t a3, unsigned int a4, double a5, int8x8_t a6)
{
  v10 = 8 * (a3 & 7);
  v11 = a3 & 0xFFFFFFFFFFFFFFF8;
  v12 = v10 + 12;
  v13 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v10;
  if (v10 >= 0x35)
  {
    v13 |= *(v11 + 8) << (-8 * (a3 & 7u));
  }

  v14 = (8 * (a3 & 7)) | 0x80;
  v15 = (a4 >> 5) | (8 * v13);
  v16 = vdupq_n_s8(v15 & 0xF);
  v17.i64[0] = 0x303030303030303;
  v17.i64[1] = 0x303030303030303;
  a6.i32[0] = v15 & 0xF;
  v18 = vand_s8(a6, 0x4000400040004);
  v19 = vandq_s8(v16, v17);
  v20 = vbicq_s8(vdupq_n_s8(((v13 >> 1) & 7) + 1), vceqq_s8(v19, v17));
  v17.i64[0] = 0x202020202020202;
  v17.i64[1] = 0x202020202020202;
  v21 = vandq_s8(vbicq_s8(xmmword_29D2F0D30, vmovl_s16(vceqz_s16(vdup_lane_s16(v18, 0)))), v17);
  if (vmaxvq_s8(v21) < 1)
  {
    v29 = 0;
    v52.i64[0] = -1;
    v52.i64[1] = -1;
    v48 = v20;
    v47 = v20;
    v46 = v20;
    v51.i64[0] = -1;
    v51.i64[1] = -1;
    v45 = v20;
    v50.i64[0] = -1;
    v50.i64[1] = -1;
    v49.i64[0] = -1;
    v49.i64[1] = -1;
  }

  else
  {
    v22 = vmovl_u8(*&vpaddq_s8(v21, v21));
    v23 = vmovl_u16(*&vpaddq_s16(v22, v22));
    v24 = vpaddq_s32(v23, v23).u64[0];
    v25.i64[0] = v24;
    v25.i64[1] = HIDWORD(v24);
    v26 = v25;
    v27 = vaddvq_s64(v25);
    v28 = v27 <= 0x80 && v14 >= v27 + v12;
    v29 = !v28;
    v30 = 0uLL;
    if (v28)
    {
      v31 = vaddq_s64(vzip1q_s64(0, v26), vdupq_n_s64(v12 & 0x3C));
      v32 = (v11 + ((v12 >> 3) & 8));
      v30 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v32, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v31)), vshlq_u64(vdupq_lane_s64(v32->i64[0], 0), vnegq_s64(v31)));
      if (v27 + (v12 & 0x3C) >= 0x81)
      {
        v30 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v32[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v31)), vshlq_u64(vdupq_laneq_s64(v32[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v31))), v30);
      }

      v12 += v27;
    }

    v33 = vzip1_s32(*v23.i8, *&vextq_s8(v23, v23, 8uLL));
    v34.i64[0] = v33.u32[0];
    v34.i64[1] = v33.u32[1];
    v35 = vshlq_u64(v30, vnegq_s64(v34));
    v36 = vuzp1q_s32(vzip1q_s64(v30, v35), vzip2q_s64(v30, v35));
    v37 = vshlq_u32(v36, vnegq_s32((*&v22 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v38 = vuzp1q_s16(vzip1q_s32(v36, v37), vzip2q_s32(v36, v37));
    v39 = vzip1q_s16(v38, vshlq_u16(v38, vnegq_s16(vmovl_u8(vuzp1_s8(*v21.i8, *v16.i8)))));
    *v39.i8 = vmovn_s16(v39);
    v36.i64[0] = 0x101010101010101;
    v36.i64[1] = 0x101010101010101;
    v40 = vshlq_s8(v36, v21);
    v36.i64[0] = -1;
    v36.i64[1] = -1;
    v40.i64[0] = vandq_s8(vaddq_s8(v40, v36), v39).u64[0];
    v41 = vdupq_lane_s8(*v40.i8, 0);
    v42 = vdupq_lane_s8(*v40.i8, 1);
    v43 = vdupq_lane_s8(*v40.i8, 2);
    v44 = vdupq_lane_s8(*v40.i8, 3);
    v45 = vsubq_s8(v20, v41);
    v46 = vsubq_s8(v20, v42);
    v47 = vsubq_s8(v20, v43);
    v48 = vsubq_s8(v20, v44);
    v49 = vceqzq_s8(v41);
    v50 = vceqzq_s8(v42);
    v51 = vceqzq_s8(v43);
    v52 = vceqzq_s8(v44);
  }

  v53.i64[0] = 0x707070707070707;
  v53.i64[1] = 0x707070707070707;
  v54 = 0uLL;
  v55 = vandq_s8(vextq_s8(vcgtq_u8(v16, v53), 0, 0xFuLL), v20);
  v56 = vmovl_u8(*&vpaddq_s8(v55, v55));
  v57 = vmovl_u16(*&vpaddq_s16(v56, v56));
  v58 = vpaddq_s32(v57, v57).u64[0];
  v59.i64[0] = v58;
  v59.i64[1] = HIDWORD(v58);
  v60 = v59;
  v61 = vaddvq_s64(v59);
  v62 = v61 + v12;
  if (v61 <= 0x80 && v14 >= v62)
  {
    v64 = v12 & 0x3F;
    v65 = vaddq_s64(vzip1q_s64(0, v60), vdupq_n_s64(v64));
    v66 = (v11 + 8 * (v12 >> 6));
    v54 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v66, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v65)), vshlq_u64(vdupq_lane_s64(v66->i64[0], 0), vnegq_s64(v65)));
    if (v61 + v64 >= 0x81)
    {
      v54 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v66[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v65)), vshlq_u64(vdupq_laneq_s64(v66[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v65))), v54);
    }

    v12 = v62;
  }

  else
  {
    v29 = 1;
  }

  v67 = vandq_s8(v45, xmmword_29D2F0D40);
  v68 = (a4 >> 5) & 3;
  if (v68 != 2)
  {
    v73 = 0;
    v70 = 0;
    v74 = v12;
    goto LABEL_36;
  }

  v69 = v12 + 4;
  if (v14 < v12 + 4)
  {
    v70 = 0;
    v69 = v12;
LABEL_35:
    v73 = 0;
    v29 = 1;
    v74 = v69;
    goto LABEL_36;
  }

  v75 = (v11 + 8 * (v12 >> 6));
  v76 = *v75 >> v12;
  if ((v12 & 0x3F) >= 0x3D)
  {
    v76 |= v75[1] << -(v12 & 0x3F);
  }

  v70 = (v76 << 28) >> 28;
  v74 = v12 + 8;
  if (v14 < v12 + 8)
  {
    goto LABEL_35;
  }

  v71 = (v11 + 8 * (v69 >> 6));
  v72 = *v71 >> v69;
  if ((v69 & 0x3F) >= 0x3D)
  {
    v72 |= v71[1] << -(v69 & 0x3F);
  }

  v73 = (v72 << 28) >> 28;
LABEL_36:
  v77 = vandq_s8(v46, xmmword_29D2F0D50);
  v67.i8[0] = 0;
  v78 = vmovl_u8(*&vpaddq_s8(v67, v67));
  v79 = vmovl_u16(*&vpaddq_s16(v78, v78));
  v80 = vpaddq_s32(v79, v79).u64[0];
  v81.i64[0] = v80;
  v81.i64[1] = HIDWORD(v80);
  v82 = v81;
  v83 = vaddvq_s64(v81);
  v84 = v83 + v74;
  v85 = 0uLL;
  if (v83 <= 0x80 && v14 >= v84)
  {
    v88 = v74 & 0x3F;
    v89 = vaddq_s64(vzip1q_s64(0, v82), vdupq_n_s64(v88));
    v90 = (v11 + 8 * (v74 >> 6));
    v87 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v90, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v89)), vshlq_u64(vdupq_lane_s64(v90->i64[0], 0), vnegq_s64(v89)));
    if (v83 + v88 >= 0x81)
    {
      v87 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v90[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v89)), vshlq_u64(vdupq_laneq_s64(v90[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v89))), v87);
    }

    v74 = v84;
  }

  else
  {
    v29 = 1;
    v87 = 0uLL;
  }

  v204[1] = v9;
  v204[2] = v8;
  v204[3] = v7;
  v204[4] = v6;
  v91 = vandq_s8(v47, xmmword_29D2F0D50);
  v92 = vmovl_u8(*&vpaddq_s8(v77, v77));
  v93 = vmovl_u16(*&vpaddq_s16(v92, v92));
  v94 = vpaddq_s32(v93, v93).u64[0];
  v95.i64[0] = v94;
  v95.i64[1] = HIDWORD(v94);
  v96 = v95;
  v97 = vaddvq_s64(v95);
  if (v97 >= 0x81)
  {
    v29 = 1;
  }

  else
  {
    v98 = vzip1_s32(*v93.i8, *&vextq_s8(v93, v93, 8uLL));
    v99.i64[0] = v98.u32[0];
    v99.i64[1] = v98.u32[1];
    v100 = v99;
    v101 = *&v92 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL);
    v102 = v97 + v74;
    if (v14 >= v97 + v74)
    {
      v104 = v74 & 0x3F;
      v105 = vaddq_s64(vzip1q_s64(0, v96), vdupq_n_s64(v104));
      v106 = (v11 + 8 * (v74 >> 6));
      v103 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v106, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v105)), vshlq_u64(vdupq_lane_s64(v106->i64[0], 0), vnegq_s64(v105)));
      if (v97 + v104 >= 0x81)
      {
        v103 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v106[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v105)), vshlq_u64(vdupq_laneq_s64(v106[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v105))), v103);
      }

      v74 = v102;
    }

    else
    {
      v103 = 0uLL;
      v29 = 1;
    }

    v107 = vshlq_u64(v103, vnegq_s64(v100));
    v108 = vuzp1q_s32(vzip1q_s64(v103, v107), vzip2q_s64(v103, v107));
    v109 = vshlq_u32(v108, vnegq_s32(v101));
    v110 = vuzp1q_s16(vzip1q_s32(v108, v109), vzip2q_s32(v108, v109));
    v111 = vshlq_u16(v110, vnegq_s16((*&v77 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
    v85 = vuzp1q_s8(vzip1q_s16(v110, v111), vzip2q_s16(v110, v111));
  }

  v112 = vandq_s8(v48, xmmword_29D2F0D50);
  v113 = vmovl_u8(*&vpaddq_s8(v91, v91));
  v114 = vmovl_u16(*&vpaddq_s16(v113, v113));
  v115 = vpaddq_s32(v114, v114).u64[0];
  v116.i64[0] = v115;
  v116.i64[1] = HIDWORD(v115);
  v117 = v116;
  v118 = vaddvq_s64(v116);
  if (v118 >= 0x81)
  {
    v29 = 1;
    v125 = 0uLL;
  }

  else
  {
    v119 = vzip1_s32(*v114.i8, *&vextq_s8(v114, v114, 8uLL));
    v120.i64[0] = v119.u32[0];
    v120.i64[1] = v119.u32[1];
    v121 = v120;
    v122 = *&v113 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL);
    v123 = v118 + v74;
    if (v14 >= v118 + v74)
    {
      v126 = v74 & 0x3F;
      v127 = vaddq_s64(vzip1q_s64(0, v117), vdupq_n_s64(v126));
      v128 = (v11 + 8 * (v74 >> 6));
      v124 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v128, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v127)), vshlq_u64(vdupq_lane_s64(v128->i64[0], 0), vnegq_s64(v127)));
      if (v118 + v126 >= 0x81)
      {
        v124 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v128[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v127)), vshlq_u64(vdupq_laneq_s64(v128[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v127))), v124);
      }

      v74 = v123;
    }

    else
    {
      v124 = 0uLL;
      v29 = 1;
    }

    v129 = vshlq_u64(v124, vnegq_s64(v121));
    v130 = vuzp1q_s32(vzip1q_s64(v124, v129), vzip2q_s64(v124, v129));
    v131 = vshlq_u32(v130, vnegq_s32(v122));
    v132 = vuzp1q_s16(vzip1q_s32(v130, v131), vzip2q_s32(v130, v131));
    v133 = vshlq_u16(v132, vnegq_s16((*&v91 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
    v125 = vuzp1q_s8(vzip1q_s16(v132, v133), vzip2q_s16(v132, v133));
  }

  v134 = vmovl_u8(*&vpaddq_s8(v112, v112));
  v135 = vmovl_u16(*&vpaddq_s16(v134, v134));
  v136 = vpaddq_s32(v135, v135).u64[0];
  v137.i64[0] = v136;
  v137.i64[1] = HIDWORD(v136);
  v138 = v137;
  v139 = vaddvq_s64(v137);
  if (v139 >= 0x81 || v14 < v139 + v74)
  {
    goto LABEL_66;
  }

  v140 = vaddq_s64(vzip1q_s64(0, v138), vdupq_n_s64(v74 & 0x3F));
  v141 = (v11 + 8 * (v74 >> 6));
  v142 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v141, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v140)), vshlq_u64(vdupq_lane_s64(v141->i64[0], 0), vnegq_s64(v140)));
  if (v139 + (v74 & 0x3F) >= 0x81)
  {
    v142 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v141[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v140)), vshlq_u64(vdupq_laneq_s64(v141[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v140))), v142);
  }

  if ((v29 & 1) != 0 || (v143 = (a4 & 0x1F) + 1, 8 * ((a3 & 7) + v143) - (v139 + v74) >= 9))
  {
LABEL_66:
    v143 = 0;
    v204[0] |= 255 << (8 * ((v204 + 7) & 7u));
    *a1 = 0;
    *(a1 + a2) = 0;
    *(a1 + 2 * a2) = 0;
    *(a1 + 3 * a2) = 0;
  }

  else
  {
    v145 = vzip1_s32(*v57.i8, *&vextq_s8(v57, v57, 8uLL));
    v146 = vzip1_s32(*v79.i8, *&vextq_s8(v79, v79, 8uLL));
    v147.i64[0] = v145.u32[0];
    v147.i64[1] = v145.u32[1];
    v148 = v147;
    v147.i64[0] = v146.u32[0];
    v147.i64[1] = v146.u32[1];
    v149 = vshlq_u64(v54, vnegq_s64(v148));
    v150 = vshlq_u64(v87, vnegq_s64(v147));
    v151 = vuzp1q_s32(vzip1q_s64(v54, v149), vzip2q_s64(v54, v149));
    v152 = vuzp1q_s32(vzip1q_s64(v87, v150), vzip2q_s64(v87, v150));
    v153 = vshlq_u32(v151, vnegq_s32((*&v56 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v154 = vshlq_u32(v152, vnegq_s32((*&v78 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v155 = vuzp1q_s16(vzip1q_s32(v151, v153), vzip2q_s32(v151, v153));
    v156 = vuzp1q_s16(vzip1q_s32(v152, v154), vzip2q_s32(v152, v154));
    v157 = vshlq_u16(v155, vnegq_s16((*&v55 & __PAIR128__(0xF0FFF0FFF0FFF0FFLL, 0xF0FFF0FFF0FFF0FFLL))));
    v158 = vshlq_u16(v156, vnegq_s16((*&v67 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF0000))));
    v159 = vzip2q_s16(v155, v157);
    v160 = vzip1q_s16(v155, v157);
    v157.i64[0] = 0x808080808080808;
    v157.i64[1] = 0x808080808080808;
    v161 = vzip2q_s16(v156, v158);
    v162 = vzip1q_s16(v156, v158);
    v158.i64[0] = 0x808080808080808;
    v158.i64[1] = 0x808080808080808;
    v163 = v13 >> 4;
    v164 = vuzp1q_s8(v160, v159);
    v159.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v159.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v165 = vuzp1q_s8(v162, v161);
    v161.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v161.i64[1] = 0xF8F8F8F8F8F8F8F8;
    *v150.i8 = vzip1_s32(*v135.i8, *&vextq_s8(v135, v135, 8uLL));
    v166.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v166.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v167.i64[0] = 0x808080808080808;
    v167.i64[1] = 0x808080808080808;
    v168 = vshlq_s8(v164, vsubq_s8(v157, v55));
    v169 = vaddq_s8(v67, v161);
    v170 = vshlq_s8(v165, vsubq_s8(v158, v67));
    v147.i64[0] = v150.u32[0];
    v147.i64[1] = v150.u32[1];
    v171 = vshlq_s8(v168, vaddq_s8(v55, v159));
    v172 = vshlq_s8(v170, v169);
    v173 = vshlq_s8(vshlq_s8(v85, vsubq_s8(v158, v77)), vaddq_s8(v77, v161));
    v174 = vshlq_s8(vshlq_s8(v125, vsubq_s8(v158, v91)), vaddq_s8(v91, v161));
    v175 = vshlq_u64(v142, vnegq_s64(v147));
    v176 = vuzp1q_s32(vzip1q_s64(v142, v175), vzip2q_s64(v142, v175));
    v177 = vshlq_u32(v176, vnegq_s32((*&v134 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v178 = vuzp1q_s16(vzip1q_s32(v176, v177), vzip2q_s32(v176, v177));
    v179 = vshlq_u16(v178, vnegq_s16((*&v112 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
    v180 = vshlq_s8(vshlq_s8(vuzp1q_s8(vzip1q_s16(v178, v179), vzip2q_s16(v178, v179)), vsubq_s8(v167, v112)), vaddq_s8(v112, v166));
    if (v68 == 2)
    {
      v181.i64[0] = 0xFFFF0000FFFF0000;
      v181.i64[1] = 0xFFFF0000FFFF0000;
      v182 = vmlaq_s8(vandq_s8(vdupq_n_s8(v73), v181), vdupq_n_s8(v70), xmmword_29D2F0D60);
      v172 = vaddq_s8(v172, v182);
      v173 = vaddq_s8(vaddq_s8(vdupq_n_s8(2 * v73), v182), v173);
      v174 = vaddq_s8(vaddq_s8(vdupq_n_s8(4 * v70), v182), v174);
      v180 = vaddq_s8(vaddq_s8(vdupq_n_s8(4 * v70 + 2 * v73), v182), v180);
    }

    v183 = vdupq_n_s8(v163).u64[0];
    v184 = vaddq_s8(vandq_s8(v171, v49), v172);
    v185 = vdupq_lane_s8(*v171.i8, 0);
    v186 = vsubq_s8(v184, vandq_s8(v185, v49));
    v187 = vsubq_s8(v173, vandq_s8(v185, v50));
    v188 = vsubq_s8(v174, vandq_s8(v185, v51));
    v189 = vsubq_s8(v180, vandq_s8(v185, v52));
    v190.i64[0] = 0x101010101010101;
    v190.i64[1] = 0x101010101010101;
    if (vaddlvq_s8(vceqq_s8(v19, v190)))
    {
      v191 = vandq_s8(v16, v190);
      v192 = vnegq_s8(v191);
      v193 = v186;
      v193.i8[0] = v186.i8[7];
      v193.i8[7] = v186.i8[0];
      v194 = vorrq_s8(vandq_s8(v193, v192), vandq_s8(v186, vceqzq_s8(v191)));
      v195 = vaddq_s8(vandq_s8(vqtbl1q_s8(v194, xmmword_29D2F0D70), v192), v194);
      v186.i64[0] = vaddq_s8(vandq_s8(vqtbl1q_s8(v195, xmmword_29D2F0D80), v192), v195).u64[0];
      v196 = vaddq_s8(vandq_s8(vqtbl1q_s8(v187, xmmword_29D2F0D90), v192), v187);
      v187.i64[0] = vaddq_s8(vandq_s8(vqtbl1q_s8(v196, xmmword_29D2F0DA0), v192), v196).u64[0];
      v197 = vaddq_s8(vandq_s8(vqtbl1q_s8(v188, xmmword_29D2F0DB0), v192), v188);
      v188.i64[0] = vaddq_s8(vandq_s8(vqtbl1q_s8(v197, xmmword_29D2F0DC0), v192), v197).u64[0];
      v198 = vaddq_s8(vandq_s8(vqtbl1q_s8(v189, xmmword_29D2F0DD0), v192), v189);
      v189.i64[0] = vaddq_s8(vandq_s8(vqtbl1q_s8(v198, xmmword_29D2F0DE0), v192), v198).u64[0];
    }

    v199 = vadd_s8(v183, *v186.i8);
    v200 = vadd_s8(*v188.i8, v183);
    *a1 = vuzp1_s16(v199, v200);
    *(a1 + a2) = vuzp2_s16(v199, v200);
    v201 = (a1 + 2 * a2);
    v202 = vadd_s8(*v187.i8, v183);
    v203 = vadd_s8(*v189.i8, v183);
    *v201 = vuzp1_s16(v202, v203);
    *(v201 + a2) = vuzp2_s16(v202, v203);
  }

  return v143;
}