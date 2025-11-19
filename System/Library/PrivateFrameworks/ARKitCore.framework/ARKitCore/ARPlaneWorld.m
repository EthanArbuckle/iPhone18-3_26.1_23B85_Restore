@interface ARPlaneWorld
- (ARPlaneWorld)initWithTextureSize:(unint64_t)a3;
- (BOOL)isBusy;
- (id).cxx_construct;
- (id)_fullDescription;
- (map<std::array<unsigned)updatePlanes:()ARTexturedPlane withCurrentDetections:(std:()16>> :(std:()16> :(ARTexturedPlane>>> *__return_ptr)retstr allocator<std:(ARPlaneWorld *)self :(SEL)a3 pair<const std:(const void *)a4 :(const void *)a5 array<unsigned)char less<std:(BOOL)a6 :array<unsigned)char synchronous:;
- (vector<ARTexturedPlane,)planes;
- (void)updatePlanes:(simd_float4)a3 withCameraImage:(simd_float4)a4 exposureOffset:(float32x4_t)a5 transform:(simd_float4)a6 intrinsics:(float32x4_t)a7 synchronous:(float32x4_t)a8;
@end

@implementation ARPlaneWorld

- (ARPlaneWorld)initWithTextureSize:(unint64_t)a3
{
  v10.receiver = self;
  v10.super_class = ARPlaneWorld;
  v4 = [(ARPlaneWorld *)&v10 init];
  if (v4)
  {
    v5 = objc_opt_new();
    gpuWarper = v4->_gpuWarper;
    v4->_gpuWarper = v5;

    v4->_textureSize = a3;
    v7 = dispatch_semaphore_create(1);
    semaphore = v4->_semaphore;
    v4->_semaphore = v7;
  }

  return v4;
}

- (BOOL)isBusy
{
  v3 = dispatch_semaphore_wait(self->_semaphore, 0);
  if (!v3)
  {
    dispatch_semaphore_signal(self->_semaphore);
  }

  return v3 != 0;
}

- (map<std::array<unsigned)updatePlanes:()ARTexturedPlane withCurrentDetections:(std:()16>> :(std:()16> :(ARTexturedPlane>>> *__return_ptr)retstr allocator<std:(ARPlaneWorld *)self :(SEL)a3 pair<const std:(const void *)a4 :(const void *)a5 array<unsigned)char less<std:(BOOL)a6 :array<unsigned)char synchronous:
{
  v153 = a6;
  v212 = *MEMORY[0x1E69E9840];
  keys<std::array<unsigned char,16ul>,ARTexturedPlane>(a4, v163);
  keys<std::array<unsigned char,16ul>,ARTexturedPlane>(a5, v162);
  notInLeftButRight<std::array<unsigned char,16ul>>(v163, v162, &v160);
  intersect<std::array<unsigned char,16ul>>(v163, v162, &v158);
  v157[0] = 0;
  v157[1] = 0;
  v156 = v157;
  v6 = *a5;
  if (*a5 != a5 + 8)
  {
    do
    {
      keys<std::array<unsigned char,16ul>,ARTexturedPlane>(a4, &v170);
      intersect<std::array<unsigned char,16ul>>(&v170, (v6 + 240), &v197);
      std::__tree<std::array<unsigned char,16ul>>::destroy(&v170, *(&v170 + 1));
      *&v170 = v6 + 48;
      v7 = std::__tree<std::__value_type<std::array<unsigned char,16ul>,std::set<std::array<unsigned char,16ul>>>,std::__map_value_compare<std::array<unsigned char,16ul>,std::__value_type<std::array<unsigned char,16ul>,std::set<std::array<unsigned char,16ul>>>,std::less<std::array<unsigned char,16ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,16ul>,std::set<std::array<unsigned char,16ul>>>>>::__emplace_unique_key_args<std::array<unsigned char,16ul>,std::piecewise_construct_t const&,std::tuple<std::array<unsigned char,16ul> const&>,std::tuple<>>(&v156, v6 + 48);
      std::set<std::array<unsigned char,16ul>>::insert[abi:ne200100]<std::__tree_const_iterator<std::array<unsigned char,16ul>,std::__tree_node<std::array<unsigned char,16ul>,void *> *,long>>(v7 + 48, v197, &v197 + 8);
      std::__tree<std::array<unsigned char,16ul>>::destroy(&v197, *(&v197 + 1));
      v8 = *(v6 + 1);
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = *(v6 + 2);
          v10 = *v9 == v6;
          v6 = v9;
        }

        while (!v10);
      }

      v6 = v9;
    }

    while (v9 != (a5 + 8));
  }

  retstr->__tree_.__end_node_.__left_ = 0;
  retstr->__tree_.__size_ = 0;
  p_end_node = &retstr->__tree_.__end_node_;
  retstr->__tree_.__begin_node_ = &retstr->__tree_.__end_node_;
  v11 = v160;
  v12 = fminf(sqrtf(16777000.0 / (v161[1] + *(a4 + 2))), 1024.0);
  textureSize = self->_textureSize;
  v145 = v12;
  if (!textureSize)
  {
    textureSize = v12;
  }

  v150 = textureSize;
  if (v160 != v161)
  {
    do
    {
      v14 = std::map<std::array<unsigned char,16ul>,ARTexturedPlane>::at(a5, v11 + 25);
      *&v197 = v11 + 25;
      v15 = std::__tree<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::__map_value_compare<std::array<unsigned char,16ul>,std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::less<std::array<unsigned char,16ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>>>::__emplace_unique_key_args<std::array<unsigned char,16ul>,std::piecewise_construct_t const&,std::tuple<std::array<unsigned char,16ul> const&>,std::tuple<>>(retstr, v11 + 25);
      v16 = v15;
      v17 = *v14;
      v18 = *(v14 + 16);
      v19 = *(v14 + 48);
      *(v15 + 80) = *(v14 + 32);
      *(v15 + 96) = v19;
      *(v15 + 48) = v17;
      *(v15 + 64) = v18;
      v20 = *(v14 + 64);
      v21 = *(v14 + 80);
      v22 = *(v14 + 112);
      *(v15 + 144) = *(v14 + 96);
      *(v15 + 160) = v22;
      *(v15 + 112) = v20;
      *(v15 + 128) = v21;
      v23 = *(v14 + 128);
      v24 = *(v14 + 144);
      v25 = *(v14 + 176);
      *(v15 + 208) = *(v14 + 160);
      *(v15 + 224) = v25;
      *(v15 + 176) = v23;
      *(v15 + 192) = v24;
      if (v15 + 48 != v14)
      {
        std::__tree<std::array<unsigned char,16ul>>::__assign_multi<std::__tree_const_iterator<std::array<unsigned char,16ul>,std::__tree_node<std::array<unsigned char,16ul>,void *> *,long>>((v15 + 240), *(v14 + 192), (v14 + 200));
      }

      objc_storeStrong((v16 + 264), *(v14 + 216));
      v26 = ARCreateTexture(v150);
      *&v197 = v11 + 25;
      v27 = std::__tree<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::__map_value_compare<std::array<unsigned char,16ul>,std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::less<std::array<unsigned char,16ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>>>::__emplace_unique_key_args<std::array<unsigned char,16ul>,std::piecewise_construct_t const&,std::tuple<std::array<unsigned char,16ul> const&>,std::tuple<>>(retstr, v11 + 25);
      v28 = *(v27 + 264);
      *(v27 + 264) = v26;

      v29 = *(v11 + 1);
      if (v29)
      {
        do
        {
          v30 = v29;
          v29 = *v29;
        }

        while (v29);
      }

      else
      {
        do
        {
          v30 = *(v11 + 2);
          v10 = *v30 == v11;
          v11 = v30;
        }

        while (!v10);
      }

      v11 = v30;
    }

    while (v30 != v161);
  }

  v31 = v158;
  if (v158 != v159)
  {
    v147 = vdupq_n_s64(0x3F847AE147AE147BuLL);
    do
    {
      v32 = std::map<std::array<unsigned char,16ul>,ARTexturedPlane>::at(a5, v31 + 25);
      v33 = std::map<std::array<unsigned char,16ul>,ARTexturedPlane>::at(a4, v31 + 25);
      v213 = __invert_f4(*(v33 + 32));
      v35 = 0;
      v36 = *(v32 + 48);
      v37 = *(v32 + 64);
      v38 = *(v32 + 80);
      v170 = *(v32 + 32);
      v171 = v36;
      v172 = v37;
      v173 = v38;
      do
      {
        *(&v197 + v35) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v213.columns[0], COERCE_FLOAT(*(&v170 + v35))), v213.columns[1], *(&v170 + v35), 1), v213.columns[2], *(&v170 + v35), 2), v213.columns[3], *(&v170 + v35), 3);
        v35 += 16;
      }

      while (v35 != 64);
      v148 = v200;
      *v39.i64 = ARMatrix3x3FromMatrix4x4(v34);
      v42 = vabsq_f32(v148);
      v43 = vmovn_s64(vcgtq_f64(vcvtq_f64_f32(*v42.f32), v147));
      if (((v43.i32[0] | v43.i32[1]) & 1) == 0 && (v149 = v42.f32[2], v44 = acosf(COERCE_FLOAT(vmlaq_f32(vaddq_f32(v40, vmulq_f32(v39, 0)), 0, v41).i32[1])), v149 <= 0.01) && v44 >= 0.0 && v44 <= 0.0 && (v45 = vceqq_f32(*(v33 + 96), *(v32 + 96)), v45.i32[3] = v45.i32[2], (vminvq_u32(v45) & 0x80000000) != 0) && (v46 = vceqq_f32(*(v33 + 112), *(v32 + 112)), v46.i32[3] = v46.i32[2], (vminvq_u32(v46) & 0x80000000) != 0))
      {
        v96 = *v33;
        v97 = *(v33 + 16);
        v98 = *(v33 + 32);
        v200 = *(v33 + 48);
        v199 = v98;
        v198 = v97;
        v197 = v96;
        v99 = *(v33 + 64);
        v100 = *(v33 + 80);
        v101 = *(v33 + 96);
        v204 = *(v33 + 112);
        v203 = v101;
        v202 = v100;
        v201 = v99;
        v102 = *(v33 + 128);
        v103 = *(v33 + 144);
        v104 = *(v33 + 160);
        v208 = *(v33 + 176);
        v207 = v104;
        v206 = v103;
        v205 = v102;
        std::set<std::array<unsigned char,16ul>>::set[abi:ne200100](&v209, v33 + 192);
        obj = *(v33 + 216);
        *&v198 = v198 + 1;
        *&v170 = v31 + 25;
        v105 = std::__tree<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::__map_value_compare<std::array<unsigned char,16ul>,std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::less<std::array<unsigned char,16ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>>>::__emplace_unique_key_args<std::array<unsigned char,16ul>,std::piecewise_construct_t const&,std::tuple<std::array<unsigned char,16ul> const&>,std::tuple<>>(retstr, v31 + 25);
        v84 = v105;
        v106 = v206;
        v107 = v208;
        v108 = v207;
        *(v105 + 176) = v205;
        *(v105 + 192) = v106;
        *(v105 + 208) = v108;
        *(v105 + 224) = v107;
        v109 = v202;
        v110 = v204;
        v111 = v203;
        *(v105 + 112) = v201;
        *(v105 + 128) = v109;
        *(v105 + 144) = v111;
        *(v105 + 160) = v110;
        v112 = v198;
        v113 = v200;
        v114 = v199;
        *(v105 + 48) = v197;
        *(v105 + 64) = v112;
        *(v105 + 80) = v114;
        *(v105 + 96) = v113;
        if ((v105 + 48) != &v197)
        {
          std::__tree<std::array<unsigned char,16ul>>::__assign_multi<std::__tree_const_iterator<std::array<unsigned char,16ul>,std::__tree_node<std::array<unsigned char,16ul>,void *> *,long>>((v105 + 240), v209, v210);
        }
      }

      else
      {
        v47 = *v32;
        v48 = *(v32 + 16);
        v49 = *(v32 + 32);
        v200 = *(v32 + 48);
        v199 = v49;
        v198 = v48;
        v197 = v47;
        v50 = *(v32 + 64);
        v51 = *(v32 + 80);
        v52 = *(v32 + 96);
        v204 = *(v32 + 112);
        v203 = v52;
        v202 = v51;
        v201 = v50;
        v53 = *(v32 + 128);
        v54 = *(v32 + 144);
        v55 = *(v32 + 160);
        v208 = *(v32 + 176);
        v207 = v55;
        v206 = v54;
        v205 = v53;
        std::set<std::array<unsigned char,16ul>>::set[abi:ne200100](&v209, v32 + 192);
        obj = *(v32 + 216);
        v56 = ARCreateTexture(v150);
        v57 = obj;
        obj = v56;

        kdebug_trace();
        gpuWarper = self->_gpuWarper;
        v59 = *(v33 + 32);
        v61 = *v33;
        v60 = *(v33 + 16);
        v194[3] = *(v33 + 48);
        v194[2] = v59;
        v194[0] = v61;
        v194[1] = v60;
        v62 = *(v33 + 96);
        v64 = *(v33 + 64);
        v63 = *(v33 + 80);
        v194[7] = *(v33 + 112);
        v194[6] = v62;
        v194[4] = v64;
        v194[5] = v63;
        v65 = *(v33 + 160);
        v67 = *(v33 + 128);
        v66 = *(v33 + 144);
        v194[11] = *(v33 + 176);
        v194[10] = v65;
        v194[8] = v67;
        v194[9] = v66;
        std::set<std::array<unsigned char,16ul>>::set[abi:ne200100](v195, v33 + 192);
        v196 = *(v33 + 216);
        v191[8] = v205;
        v191[9] = v206;
        v191[10] = v207;
        v191[11] = v208;
        v191[4] = v201;
        v191[5] = v202;
        v191[6] = v203;
        v191[7] = v204;
        v191[0] = v197;
        v191[1] = v198;
        v191[2] = v199;
        v191[3] = v200;
        std::set<std::array<unsigned char,16ul>>::set[abi:ne200100](v192, &v209);
        v193 = obj;
        [(ARGPUWarper *)gpuWarper warpPlane:v194 toPlane:v191 withLoadAction:2 synchronous:v153];

        std::__tree<std::array<unsigned char,16ul>>::destroy(v192, v192[1]);
        std::__tree<std::array<unsigned char,16ul>>::destroy(v195, v195[1]);
        kdebug_trace();
        if (v157 != std::__tree<std::__value_type<std::array<unsigned char,16ul>,std::set<std::array<unsigned char,16ul>>>,std::__map_value_compare<std::array<unsigned char,16ul>,std::__value_type<std::array<unsigned char,16ul>,std::set<std::array<unsigned char,16ul>>>,std::less<std::array<unsigned char,16ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,16ul>,std::set<std::array<unsigned char,16ul>>>>>::find<std::array<unsigned char,16ul>>(&v156, v31 + 25))
        {
          v68 = std::map<std::array<unsigned char,16ul>,ARTexturedPlane>::at(&v156, v31 + 25);
          std::set<std::array<unsigned char,16ul>>::set[abi:ne200100](&v170, v68);
          v69 = v170;
          if (v170 != (&v170 + 8))
          {
            do
            {
              v70 = std::map<std::array<unsigned char,16ul>,ARTexturedPlane>::at(a4, v69 + 25);
              v71 = self->_gpuWarper;
              v72 = *(v70 + 32);
              v74 = *v70;
              v73 = *(v70 + 16);
              v188[3] = *(v70 + 48);
              v188[2] = v72;
              v188[0] = v74;
              v188[1] = v73;
              v75 = *(v70 + 96);
              v77 = *(v70 + 64);
              v76 = *(v70 + 80);
              v188[7] = *(v70 + 112);
              v188[6] = v75;
              v188[4] = v77;
              v188[5] = v76;
              v78 = *(v70 + 160);
              v80 = *(v70 + 128);
              v79 = *(v70 + 144);
              v188[11] = *(v70 + 176);
              v188[10] = v78;
              v188[8] = v80;
              v188[9] = v79;
              std::set<std::array<unsigned char,16ul>>::set[abi:ne200100](v189, v70 + 192);
              v190 = *(v70 + 216);
              v185[8] = v205;
              v185[9] = v206;
              v185[10] = v207;
              v185[11] = v208;
              v185[4] = v201;
              v185[5] = v202;
              v185[6] = v203;
              v185[7] = v204;
              v185[0] = v197;
              v185[1] = v198;
              v185[2] = v199;
              v185[3] = v200;
              std::set<std::array<unsigned char,16ul>>::set[abi:ne200100](v186, &v209);
              v187 = obj;
              [(ARGPUWarper *)v71 warpPlane:v188 toPlane:v185 withLoadAction:1 synchronous:v153];

              std::__tree<std::array<unsigned char,16ul>>::destroy(v186, v186[1]);
              std::__tree<std::array<unsigned char,16ul>>::destroy(v189, v189[1]);
              v81 = *(v69 + 1);
              if (v81)
              {
                do
                {
                  v82 = v81;
                  v81 = *v81;
                }

                while (v81);
              }

              else
              {
                do
                {
                  v82 = *(v69 + 2);
                  v10 = *v82 == v69;
                  v69 = v82;
                }

                while (!v10);
              }

              v69 = v82;
            }

            while (v82 != (&v170 + 8));
          }

          std::__tree<std::array<unsigned char,16ul>>::destroy(&v170, *(&v170 + 1));
        }

        *&v170 = v31 + 25;
        v83 = std::__tree<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::__map_value_compare<std::array<unsigned char,16ul>,std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::less<std::array<unsigned char,16ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>>>::__emplace_unique_key_args<std::array<unsigned char,16ul>,std::piecewise_construct_t const&,std::tuple<std::array<unsigned char,16ul> const&>,std::tuple<>>(retstr, v31 + 25);
        v84 = v83;
        v85 = v206;
        v86 = v208;
        v87 = v207;
        *(v83 + 176) = v205;
        *(v83 + 192) = v85;
        *(v83 + 208) = v87;
        *(v83 + 224) = v86;
        v88 = v202;
        v89 = v204;
        v90 = v203;
        *(v83 + 112) = v201;
        *(v83 + 128) = v88;
        *(v83 + 144) = v90;
        *(v83 + 160) = v89;
        v91 = v198;
        v92 = v200;
        v93 = v199;
        *(v83 + 48) = v197;
        *(v83 + 64) = v91;
        *(v83 + 80) = v93;
        *(v83 + 96) = v92;
        if ((v83 + 48) != &v197)
        {
          std::__tree<std::array<unsigned char,16ul>>::__assign_multi<std::__tree_const_iterator<std::array<unsigned char,16ul>,std::__tree_node<std::array<unsigned char,16ul>,void *> *,long>>((v83 + 240), v209, v210);
        }
      }

      objc_storeStrong((v84 + 264), obj);

      std::__tree<std::array<unsigned char,16ul>>::destroy(&v209, v210[0]);
      v94 = *(v31 + 1);
      if (v94)
      {
        do
        {
          v95 = v94;
          v94 = *v94;
        }

        while (v94);
      }

      else
      {
        do
        {
          v95 = *(v31 + 2);
          v10 = *v95 == v31;
          v31 = v95;
        }

        while (!v10);
      }

      v31 = v95;
    }

    while (v95 != v159);
  }

  begin_node = retstr->__tree_.__begin_node_;
  if (retstr->__tree_.__begin_node_ != p_end_node)
  {
    v116 = retstr->__tree_.__begin_node_;
    while (1)
    {
      left = v116[1].__left_;
      v118 = v116;
      if (left)
      {
        do
        {
          v116 = left;
          left = left->__left_;
        }

        while (left);
      }

      else
      {
        do
        {
          v116 = v118[2].__left_;
          v10 = v116->__left_ == v118;
          v118 = v116;
        }

        while (!v10);
      }

      if (v116 == p_end_node)
      {
        break;
      }

      v119 = [begin_node[33].__left_ width];
      if (v119 < [v116[33].__left_ width])
      {
        begin_node = v116;
      }
    }

    if (begin_node != p_end_node && [begin_node[33].__left_ width] > v145)
    {
      v120 = *&begin_node[24].__left_;
      v205 = *&begin_node[22].__left_;
      v206 = v120;
      v121 = *&begin_node[28].__left_;
      v207 = *&begin_node[26].__left_;
      v208 = v121;
      v122 = *&begin_node[16].__left_;
      v201 = *&begin_node[14].__left_;
      v202 = v122;
      v123 = *&begin_node[20].__left_;
      v203 = *&begin_node[18].__left_;
      v204 = v123;
      v124 = *&begin_node[8].__left_;
      v197 = *&begin_node[6].__left_;
      v198 = v124;
      v125 = *&begin_node[12].__left_;
      v199 = *&begin_node[10].__left_;
      v200 = v125;
      std::set<std::array<unsigned char,16ul>>::set[abi:ne200100](&v209, &begin_node[30]);
      obj = begin_node[33].__left_;
      v126 = *&begin_node[24].__left_;
      v178 = *&begin_node[22].__left_;
      v179 = v126;
      v127 = *&begin_node[28].__left_;
      v180 = *&begin_node[26].__left_;
      v181 = v127;
      v128 = *&begin_node[16].__left_;
      v174 = *&begin_node[14].__left_;
      v175 = v128;
      v129 = *&begin_node[20].__left_;
      v176 = *&begin_node[18].__left_;
      v177 = v129;
      v130 = *&begin_node[8].__left_;
      v170 = *&begin_node[6].__left_;
      v171 = v130;
      v131 = *&begin_node[12].__left_;
      v172 = *&begin_node[10].__left_;
      v173 = v131;
      std::set<std::array<unsigned char,16ul>>::set[abi:ne200100](&v182, &begin_node[30]);
      v184 = begin_node[33].__left_;
      v132 = ARCreateTexture(v145);
      v133 = v184;
      v184 = v132;

      v134 = self->_gpuWarper;
      v167[8] = v205;
      v167[9] = v206;
      v167[10] = v207;
      v167[11] = v208;
      v167[4] = v201;
      v167[5] = v202;
      v167[6] = v203;
      v167[7] = v204;
      v167[0] = v197;
      v167[1] = v198;
      v167[2] = v199;
      v167[3] = v200;
      std::set<std::array<unsigned char,16ul>>::set[abi:ne200100](v168, &v209);
      v169 = obj;
      v164[8] = v178;
      v164[9] = v179;
      v164[10] = v180;
      v164[11] = v181;
      v164[4] = v174;
      v164[5] = v175;
      v164[6] = v176;
      v164[7] = v177;
      v164[0] = v170;
      v164[1] = v171;
      v164[2] = v172;
      v164[3] = v173;
      std::set<std::array<unsigned char,16ul>>::set[abi:ne200100](v165, &v182);
      v166 = v184;
      [(ARGPUWarper *)v134 warpPlane:v167 toPlane:v164 withLoadAction:2 synchronous:v153];

      std::__tree<std::array<unsigned char,16ul>>::destroy(v165, v165[1]);
      std::__tree<std::array<unsigned char,16ul>>::destroy(v168, v168[1]);
      v135 = v179;
      v137 = v180;
      v136 = v181;
      *&begin_node[22].__left_ = v178;
      *&begin_node[24].__left_ = v135;
      *&begin_node[26].__left_ = v137;
      *&begin_node[28].__left_ = v136;
      v138 = v175;
      v140 = v176;
      v139 = v177;
      *&begin_node[14].__left_ = v174;
      *&begin_node[16].__left_ = v138;
      *&begin_node[18].__left_ = v140;
      *&begin_node[20].__left_ = v139;
      v141 = v171;
      v143 = v172;
      v142 = v173;
      *&begin_node[6].__left_ = v170;
      *&begin_node[8].__left_ = v141;
      *&begin_node[10].__left_ = v143;
      *&begin_node[12].__left_ = v142;
      if (&begin_node[6] != &v170)
      {
        std::__tree<std::array<unsigned char,16ul>>::__assign_multi<std::__tree_const_iterator<std::array<unsigned char,16ul>,std::__tree_node<std::array<unsigned char,16ul>,void *> *,long>>(&begin_node[30], v182, &v183);
      }

      objc_storeStrong(&begin_node[33].__left_, v184);

      std::__tree<std::array<unsigned char,16ul>>::destroy(&v182, v183);
      std::__tree<std::array<unsigned char,16ul>>::destroy(&v209, v210[0]);
    }
  }

  std::__tree<std::__value_type<std::array<unsigned char,16ul>,std::set<std::array<unsigned char,16ul>>>,std::__map_value_compare<std::array<unsigned char,16ul>,std::__value_type<std::array<unsigned char,16ul>,std::set<std::array<unsigned char,16ul>>>,std::less<std::array<unsigned char,16ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,16ul>,std::set<std::array<unsigned char,16ul>>>>>::destroy(&v156, v157[0]);
  std::__tree<std::array<unsigned char,16ul>>::destroy(&v158, v159[0]);
  std::__tree<std::array<unsigned char,16ul>>::destroy(&v160, v161[0]);
  std::__tree<std::array<unsigned char,16ul>>::destroy(v162, v162[1]);
  std::__tree<std::array<unsigned char,16ul>>::destroy(v163, v163[1]);
  return result;
}

- (void)updatePlanes:(simd_float4)a3 withCameraImage:(simd_float4)a4 exposureOffset:(float32x4_t)a5 transform:(simd_float4)a6 intrinsics:(float32x4_t)a7 synchronous:(float32x4_t)a8
{
  v107 = *MEMORY[0x1E69E9840];
  v16 = (a1 + 112);
  dispatch_semaphore_wait(*(a1 + 112), 0xFFFFFFFFFFFFFFFFLL);
  std::map<std::array<unsigned char,16ul>,ARTexturedPlane>::map[abi:ne200100](v87, (v16 - 13));
  dispatch_semaphore_signal(*v16);
  [a1 updatePlanes:v87 withCurrentDetections:a11 synchronous:a13];
  dispatch_semaphore_wait(*(a1 + 112), 0xFFFFFFFFFFFFFFFFLL);
  if (v16 - 13 != &v85)
  {
    std::__tree<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::__map_value_compare<std::array<unsigned char,16ul>,std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::less<std::array<unsigned char,16ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::__tree_node<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,void *> *,long>>(v16 - 13, v85, &v86);
  }

  dispatch_semaphore_signal(*(a1 + 112));
  keys<std::array<unsigned char,16ul>,ARTexturedPlane>(v87, v84);
  keys<std::array<unsigned char,16ul>,ARTexturedPlane>(&v85, v83);
  notInLeftButRight<std::array<unsigned char,16ul>>(v84, v83, &v81);
  std::map<std::array<unsigned char,16ul>,ARTexturedPlane>::map[abi:ne200100](&v79, &v85);
  *&v92 = 0;
  v91.i64[1] = 0;
  v91.i64[0] = &v91.i64[1];
  v17 = v79.i64[0];
  if (v79.i64[0] != &v79.u32[2])
  {
    v77 = vnegq_f32(a5);
    do
    {
      v18 = vmulq_f32(v17[6], v77);
      if (acosf(vaddv_f32(vadd_f32(*v18.i8, *&vextq_s8(v18, v18, 8uLL)))) > 2.04203522)
      {
        std::__tree<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::__map_value_compare<std::array<unsigned char,16ul>,std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::less<std::array<unsigned char,16ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>>>::__emplace_unique_key_args<std::array<unsigned char,16ul>,std::pair<std::array<unsigned char,16ul> const,ARTexturedPlane> const&>(&v91, &v17[2]);
      }

      v19 = v17->i64[1];
      if (v19)
      {
        do
        {
          v20 = v19;
          v19 = v19->i64[0];
        }

        while (v19);
      }

      else
      {
        do
        {
          v20 = v17[1].i64[0];
          v21 = v20->i64[0] == v17;
          v17 = v20;
        }

        while (!v21);
      }

      v17 = v20;
    }

    while (v20 != &v79.u32[2]);
  }

  std::__tree<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::__map_value_compare<std::array<unsigned char,16ul>,std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::less<std::array<unsigned char,16ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>>>::destroy(&v79, v79.i64[1]);
  v22 = v91.i64[1];
  v79 = v91;
  v80 = v92;
  if (v92)
  {
    *(v91.i64[1] + 16) = &v79.i64[1];
    v91.i64[0] = &v91.i64[1];
    v91.i64[1] = 0;
    *&v92 = 0;
    v22 = 0;
  }

  else
  {
    v79.i64[0] = &v79.i64[1];
  }

  std::__tree<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::__map_value_compare<std::array<unsigned char,16ul>,std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::less<std::array<unsigned char,16ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>>>::destroy(&v91, v22);
  v108.columns[0] = a3;
  v108.columns[1] = a4;
  v108.columns[2] = a5;
  v108.columns[3] = a6;
  v109 = __invert_f4(v108);
  v76 = v109.columns[1];
  v78 = v109.columns[0];
  v74 = v109.columns[3];
  v75 = v109.columns[2];
  Width = CVPixelBufferGetWidth(a12);
  Height = CVPixelBufferGetHeight(a12);
  *&v92 = 0;
  v91.i64[1] = 0;
  v91.i64[0] = &v91.i64[1];
  v25 = v79.i64[0];
  if (v79.i64[0] != &v79.u32[2])
  {
    v26 = Height;
    do
    {
      v27 = 100;
      while (1)
      {
        *v28.i64 = randomPlanePointInWorldCoordinates((v25 + 12));
        v106 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v78, v28.f32[0]), v76, *v28.f32, 1), v75, v28, 2), v74, v28, 3);
        *v29.f32 = dehomogenize(&v106);
        if (v29.f32[2] < 0.0)
        {
          v106 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a7, v29.f32[0]), a8, *v29.f32, 1), a9, v29, 2);
          v30 = dehomogenize(&v106);
          if (v30.f32[0] >= 0.0 && v30.f32[0] < Width && v30.f32[1] >= 0.0 && v30.f32[1] < v26)
          {
            break;
          }
        }

        if (!--v27)
        {
          goto LABEL_34;
        }
      }

      v106.i64[0] = (v25 + 8);
      v33 = std::__tree<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::__map_value_compare<std::array<unsigned char,16ul>,std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::less<std::array<unsigned char,16ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>>>::__emplace_unique_key_args<std::array<unsigned char,16ul>,std::piecewise_construct_t const&,std::tuple<std::array<unsigned char,16ul> const&>,std::tuple<>>(&v91, v25 + 32);
      v34 = v33;
      v35 = *(v25 + 3);
      v36 = *(v25 + 4);
      v37 = *(v25 + 6);
      *(v33 + 80) = *(v25 + 5);
      *(v33 + 96) = v37;
      *(v33 + 48) = v35;
      *(v33 + 64) = v36;
      v38 = *(v25 + 7);
      v39 = *(v25 + 8);
      v40 = *(v25 + 10);
      *(v33 + 144) = *(v25 + 9);
      *(v33 + 160) = v40;
      *(v33 + 112) = v38;
      *(v33 + 128) = v39;
      v41 = *(v25 + 11);
      v42 = *(v25 + 12);
      v43 = *(v25 + 14);
      *(v33 + 208) = *(v25 + 13);
      *(v33 + 224) = v43;
      *(v33 + 176) = v41;
      *(v33 + 192) = v42;
      if (v25 != v33)
      {
        std::__tree<std::array<unsigned char,16ul>>::__assign_multi<std::__tree_const_iterator<std::array<unsigned char,16ul>,std::__tree_node<std::array<unsigned char,16ul>,void *> *,long>>((v33 + 240), *(v25 + 30), v25 + 31);
      }

      objc_storeStrong((v34 + 264), *(v25 + 33));
LABEL_34:
      v44 = *(v25 + 1);
      if (v44)
      {
        do
        {
          v45 = v44;
          v44 = *v44;
        }

        while (v44);
      }

      else
      {
        do
        {
          v45 = *(v25 + 2);
          v21 = *v45 == v25;
          v25 = v45;
        }

        while (!v21);
      }

      v25 = v45;
    }

    while (v45 != &v79.u32[2]);
  }

  std::__tree<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::__map_value_compare<std::array<unsigned char,16ul>,std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::less<std::array<unsigned char,16ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>>>::destroy(&v79, v79.i64[1]);
  v46 = v91.i64[1];
  v79 = v91;
  v80 = v92;
  if (v92)
  {
    *(v91.i64[1] + 16) = &v79.i64[1];
    v91.i64[0] = &v91.i64[1];
    v91.i64[1] = 0;
    *&v92 = 0;
    v46 = 0;
  }

  else
  {
    v79.i64[0] = &v79.i64[1];
  }

  std::__tree<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::__map_value_compare<std::array<unsigned char,16ul>,std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::less<std::array<unsigned char,16ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>>>::destroy(&v91, v46);
  v47 = v79.i64[0];
  if (v79.i64[0] != &v79.u32[2])
  {
    do
    {
      ARPlaneUpdateQueue::insert((a1 + 40), *(v47 + 4), *(v47 + 5), v47 + 6);
      v48 = *(v47 + 1);
      if (v48)
      {
        do
        {
          v49 = v48;
          v48 = *v48;
        }

        while (v48);
      }

      else
      {
        do
        {
          v49 = *(v47 + 2);
          v21 = *v49 == v47;
          v47 = v49;
        }

        while (!v21);
      }

      v47 = v49;
    }

    while (v49 != &v79.u32[2]);
  }

  if (*(a1 + 80))
  {
    v50 = -3;
    do
    {
      if (__CFADD__(v50++, 1))
      {
        break;
      }

      v52 = *(*(a1 + 48) + 8 * (*(a1 + 72) / 0x11uLL)) + 240 * (*(a1 + 72) % 0x11uLL);
      v91 = *v52;
      v54 = *(v52 + 48);
      v53 = *(v52 + 64);
      v55 = *(v52 + 32);
      v92 = *(v52 + 16);
      v93 = v55;
      v94 = v54;
      v95 = v53;
      v56 = *(v52 + 128);
      v58 = *(v52 + 80);
      v57 = *(v52 + 96);
      v98 = *(v52 + 112);
      v99 = v56;
      v96 = v58;
      v97 = v57;
      v59 = *(v52 + 192);
      v61 = *(v52 + 144);
      v60 = *(v52 + 160);
      v102 = *(v52 + 176);
      v103 = v59;
      v100 = v61;
      v101 = v60;
      std::set<std::array<unsigned char,16ul>>::set[abi:ne200100](v104, v52 + 208);
      v105 = *(v52 + 232);
      v106 = v91;
      std::__tree<std::array<unsigned char,16ul>>::__erase_unique<std::array<unsigned char,16ul>>((a1 + 88), (*(*(a1 + 48) + 8 * (*(a1 + 72) / 0x11uLL)) + 240 * (*(a1 + 72) % 0x11uLL)));
      std::deque<std::pair<std::array<unsigned char,16ul>,ARTexturedPlane>>::pop_front((a1 + 40));
      v62 = &v82 == std::__tree<std::array<unsigned char,16ul>>::find<std::array<unsigned char,16ul>>(&v81, &v106) ? 1 : 2;
      kdebug_trace();
      v63 = *(a1 + 32);
      v88[8] = v100;
      v88[9] = v101;
      v88[10] = v102;
      v88[11] = v103;
      v88[4] = v96;
      v88[5] = v97;
      v88[6] = v98;
      v88[7] = v99;
      v88[0] = v92;
      v88[1] = v93;
      v88[2] = v94;
      v88[3] = v95;
      std::set<std::array<unsigned char,16ul>>::set[abi:ne200100](v89, v104);
      v90 = v105;
      *&v64 = a2;
      [v63 warpCameraImage:a12 withExposureOffset:v88 withCameraIntrinsics:v62 withCameraTransform:a13 toPlane:v64 withLoadAction:*a7.i64 synchronous:{*a8.i64, *a9.i64, *a3.i64, *a4.i64, *a5.i64, *a6.i64}];

      std::__tree<std::array<unsigned char,16ul>>::destroy(v89, v89[1]);
      kdebug_trace();

      std::__tree<std::array<unsigned char,16ul>>::destroy(v104, v104[1]);
    }

    while (*(a1 + 80));
  }

  std::__tree<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::__map_value_compare<std::array<unsigned char,16ul>,std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::less<std::array<unsigned char,16ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>>>::destroy(&v79, v79.i64[1]);
  std::__tree<std::array<unsigned char,16ul>>::destroy(&v81, v82);
  std::__tree<std::array<unsigned char,16ul>>::destroy(v83, v83[1]);
  std::__tree<std::array<unsigned char,16ul>>::destroy(v84, v84[1]);
  std::__tree<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::__map_value_compare<std::array<unsigned char,16ul>,std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::less<std::array<unsigned char,16ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>>>::destroy(&v85, v86);
  std::__tree<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::__map_value_compare<std::array<unsigned char,16ul>,std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::less<std::array<unsigned char,16ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>>>::destroy(v87, v87[1]);
}

- (vector<ARTexturedPlane,)planes
{
  dispatch_semaphore_wait(self->_semaphore, 0xFFFFFFFFFFFFFFFFLL);
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  retstr->__begin_ = 0;
  begin_node = self->_planes.__tree_.__begin_node_;
  if (begin_node != &self->_planes.__tree_.__end_node_)
  {
    do
    {
      std::vector<ARTexturedPlane>::push_back[abi:ne200100](retstr, &begin_node->_queue.queue.c.__map_.__begin_);
      isa = begin_node->_planes.__tree_.__begin_node_;
      if (isa)
      {
        do
        {
          left = isa;
          isa = isa->super.isa;
        }

        while (isa);
      }

      else
      {
        do
        {
          left = begin_node->_planes.__tree_.__end_node_.__left_;
          v8 = left->super.isa == begin_node;
          begin_node = left;
        }

        while (!v8);
      }

      begin_node = left;
    }

    while (left != &self->_planes.__tree_.__end_node_);
  }

  semaphore = self->_semaphore;

  return dispatch_semaphore_signal(semaphore);
}

- (id)_fullDescription
{
  v3 = MEMORY[0x1E696AD60];
  v4 = [(ARPlaneWorld *)self description];
  v5 = [v3 stringWithFormat:@"%@\n", v4];

  v6 = [(ARPlaneWorld *)self isBusy];
  v7 = @"NotBusy";
  if (v6)
  {
    v7 = @"Busy";
  }

  [v5 appendFormat:@"State: %@\n", v7];
  [v5 appendFormat:@"Queue Size: %d\n", self->_queue.queue.c.__size_];
  [v5 appendFormat:@"GPU Warper: %@\n", self->_gpuWarper];

  return v5;
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 3) = 0;
  *(self + 1) = self + 16;
  *(self + 40) = 0u;
  *(self + 56) = 0u;
  *(self + 72) = 0u;
  *(self + 13) = 0;
  *(self + 12) = 0;
  *(self + 11) = self + 96;
  return self;
}

@end