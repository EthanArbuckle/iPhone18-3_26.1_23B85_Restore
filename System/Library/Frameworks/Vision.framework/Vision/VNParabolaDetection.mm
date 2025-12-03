@interface VNParabolaDetection
+ (BOOL)updateMinMaxXYOfParabola:(double *)parabola withPoint:;
- (BOOL)isValidRadius:(float)radius withPrecedingRadius:;
- (VNParabolaDetection)init;
- (float)getRsquareOfEquation:(const double *)equation yValues:(__n128)values equationConstants:;
- (id).cxx_construct;
- (uint64_t)processContoursForParabolas:(uint64_t)parabolas withPTS:(uint64_t)s objectMinimumPixelSize:(uint64_t)size bufferWidth:(uint64_t)width bufferHeight:;
@end

@implementation VNParabolaDetection

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 2) = self + 24;
  *(self + 5) = 0x50000000ELL;
  *(self + 12) = 5;
  *(self + 56) = 0u;
  *(self + 72) = 0u;
  *(self + 88) = 0u;
  *(self + 13) = 0x300000003;
  *(self + 14) = 0x41A0000041200000;
  *(self + 30) = 1125515264;
  *(self + 124) = 0x43800000780;
  __asm { FMOV            V0.2S, #1.0 }

  *(self + 132) = _D0;
  *(self + 35) = 10;
  *(self + 9) = xmmword_1A6038CE0;
  *(self + 10) = xmmword_1A6038CF0;
  *(self + 44) = 0x40000000;
  *(self + 24) = 0;
  *(self + 25) = 0;
  *(self + 23) = self + 192;
  *(self + 52) = 1114636288;
  *(self + 212) = xmmword_1A6038D00;
  *(self + 228) = 0xE00000064;
  *(self + 59) = 5;
  return self;
}

- (VNParabolaDetection)init
{
  v7.receiver = self;
  v7.super_class = VNParabolaDetection;
  v2 = [(VNParabolaDetection *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->UID_counter = 0;
    p_end_node = &v2->internalParabolas.__tree_.__end_node_;
    std::__tree<std::__value_type<int,InternalObservedParabola>,std::__map_value_compare<int,std::__value_type<int,InternalObservedParabola>,std::less<int>,true>,std::allocator<std::__value_type<int,InternalObservedParabola>>>::destroy(v2->internalParabolas.__tree_.__end_node_.__left_);
    v3->internalParabolas.__tree_.__begin_node_ = p_end_node;
    v3->internalParabolas.__tree_.__size_ = 0;
    p_end_node->__left_ = 0;
    std::__tree<std::__value_type<int,ObservedParabola>,std::__map_value_compare<int,std::__value_type<int,ObservedParabola>,std::less<int>,true>,std::allocator<std::__value_type<int,ObservedParabola>>>::destroy(v3->_observedParabolas.__tree_.__end_node_.__left_);
    v3->_observedParabolas.__tree_.__begin_node_ = &v3->_observedParabolas.__tree_.__end_node_;
    v3->_observedParabolas.__tree_.__size_ = 0;
    v3->_observedParabolas.__tree_.__end_node_.__left_ = 0;
    v5 = v3;
  }

  return v3;
}

- (uint64_t)processContoursForParabolas:(uint64_t)parabolas withPTS:(uint64_t)s objectMinimumPixelSize:(uint64_t)size bufferWidth:(uint64_t)width bufferHeight:
{
  v312 = *MEMORY[0x1E69E9840];
  v7 = *a2;
  v8 = a2->i64[1];
  v9 = a2->i64[0];
  if (v8 == a2->i64[0])
  {
    return self + 184;
  }

  if (s)
  {
    *(self + 236) = s;
  }

  if (*(self + 124) != size || *(self + 128) != width)
  {
    *(self + 124) = size;
    *(self + 128) = width;
    *v7.i8 = vcvt_f32_s32(__PAIR64__(width, size));
    v10 = 152;
    if (size <= width)
    {
      v11 = 152;
    }

    else
    {
      v11 = 148;
    }

    if (size <= width)
    {
      v10 = 148;
    }

    v12.i32[0] = *(self + v11);
    v12.i32[1] = *(self + v10);
    *v7.i8 = vdiv_f32(*v7.i8, v12);
    *(self + 132) = v7.i64[0];
    *(self + 216) = vcvtq_s32_f32(vmulq_f32(vzip1q_s32(v7, v7), vcvtq_f32_s32(*(self + 216))));
    v13 = *(self + 104);
    v14 = vmul_lane_f32(*(self + 112), *v7.i8, 1);
    *(self + 120) = vmuls_lane_f32(*(self + 120), *v7.i8, 1);
    v15 = vcvt_s32_f32(vmul_f32(*v7.i8, vcvt_f32_s32(v13)));
    *(self + 104) = v15;
    *(self + 112) = v14;
    *(self + 44) = v15;
    *(self + 164) = fmaxf(*v7.i32, *&v7.i32[1]) * *(self + 164);
  }

  v16 = 0;
  v310 = 0uLL;
  *v311 = 0;
  do
  {
    v17 = *v9;
    v18 = *(v9 + 8);
    v19 = *(v9 + 16);
    *v268 = *parabolas;
    *&v268[16] = *(parabolas + 16);
    CMTimeMake(&v281[16], 0, 30);
    *v281 = v17;
    *&v281[8] = v18;
    *&v281[16] = *v268;
    *&v281[32] = *&v268[16];
    *&v281[40] = v19;
    if (v16 >= *v311)
    {
      v22 = v310.f64[0];
      v23 = v16 - *&v310.f64[0];
      v24 = 0xAAAAAAAAAAAAAAABLL * ((v16 - *&v310.f64[0]) >> 4) + 1;
      if (v24 > 0x555555555555555)
      {
        std::vector<float>::__throw_length_error[abi:ne200100]();
      }

      if (0x5555555555555556 * ((*v311 - *&v310.f64[0]) >> 4) > v24)
      {
        v24 = 0x5555555555555556 * ((*v311 - *&v310.f64[0]) >> 4);
      }

      if (0xAAAAAAAAAAAAAAABLL * ((*v311 - *&v310.f64[0]) >> 4) >= 0x2AAAAAAAAAAAAAALL)
      {
        v25 = 0x555555555555555;
      }

      else
      {
        v25 = v24;
      }

      if (v25)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<CGPointWithPts>>(v25);
      }

      v26 = (16 * ((v16 - *&v310.f64[0]) >> 4));
      v27 = *v281;
      v28 = *&v281[32];
      v26[1] = *&v281[16];
      v26[2] = v28;
      *v26 = v27;
      v16 = v26 + 3;
      v29 = v26 - v23;
      memcpy(v26 - v23, *&v22, v23);
      *&v310.f64[0] = v29;
      *&v310.f64[1] = v16;
      *v311 = 0;
      if (v22 != 0.0)
      {
        operator delete(*&v22);
      }
    }

    else
    {
      v20 = *v281;
      v21 = *&v281[32];
      v16[1] = *&v281[16];
      v16[2] = v21;
      *v16 = v20;
      v16 += 3;
    }

    *&v310.f64[1] = v16;
    v9 += 24;
  }

  while (v9 != v8);
  v30 = *(self + 96);
  if (v30)
  {
    v31 = *(self + 88);
    v32 = *(self + 64);
    v33 = *(v32[(v30 + v31 - 1) / 0xAA] + 3 * v30 + 3 * v31 + -510 * ((v30 + v31 - 1) / 0xAA) - 3);
    v34 = MEMORY[0x1E695EFF8];
    if ((*parabolas / *(parabolas + 8)) - (*(v33 + 16) / *(v33 + 24)) > *(self + 40))
    {
      v35 = *(self + 72);
      if (v35 == v32)
      {
        v35 = *(self + 64);
      }

      else
      {
        v36 = &v32[v31 / 0xAA];
        v37 = *v36;
        v38 = *v36 + 24 * v31 + -4080 * (v31 / 0xAA);
        v39 = v32[(v31 + v30) / 0xAA] + 24 * v31 + 24 * v30 + -4080 * ((v31 + v30) / 0xAA);
        if (v38 != v39)
        {
          do
          {
            v40 = *v38;
            if (*v38)
            {
              *(v38 + 8) = v40;
              operator delete(v40);
              v37 = *v36;
            }

            v38 += 24;
            if (v38 - v37 == 4080)
            {
              v41 = v36[1];
              ++v36;
              v37 = v41;
              v38 = v41;
            }
          }

          while (v38 != v39);
          v32 = *(self + 64);
          v35 = *(self + 72);
        }
      }

      *(self + 96) = 0;
      v48 = v35 - v32;
      if (v48 >= 3)
      {
        do
        {
          operator delete(*v32);
          v49 = *(self + 72);
          v32 = (*(self + 64) + 8);
          *(self + 64) = v32;
          v48 = (v49 - v32) >> 3;
        }

        while (v48 > 2);
      }

      if (v48 == 1)
      {
        v50 = 85;
      }

      else
      {
        if (v48 != 2)
        {
          goto LABEL_60;
        }

        v50 = 170;
      }

      *(self + 88) = v50;
LABEL_60:
      sanitize(v281, &v310, *(self + 44), *(self + 48));
      v42 = *v281;
      if (*&v281[8] == *v281)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if (v30 == 5)
    {
      v43 = v32[v31 / 0xAA] + 24 * v31 + -4080 * (v31 / 0xAA);
      v44 = *v43;
      if (*v43)
      {
        *(v43 + 8) = v44;
        operator delete(v44);
        v31 = *(self + 88);
        v30 = *(self + 96);
      }

      *(self + 88) = v31 + 1;
      *(self + 96) = v30 - 1;
      if (v31 + 1 >= 0x154)
      {
        operator delete(**(self + 64));
        *(self + 64) += 8;
        *(self + 88) -= 170;
      }

      memset(v281, 0, 24);
      sanitize(v268, &v310, *(self + 44), *(self + 48));
      v45 = *v268;
      sanitizeAllFrames(v268, (self + 56), *v268, *&v268[8], *(self + 44), *(self + 48));
      v46 = *v268;
      *v281 = *v268;
      *&v281[8] = *&v268[8];
      if (*&v268[8] == *v268)
      {
        goto LABEL_48;
      }
    }

    else
    {
      if (v30 > 4)
      {
        goto LABEL_65;
      }

      memset(v281, 0, 24);
      sanitize(v268, &v310, *(self + 44), *(self + 48));
      v45 = *v268;
      sanitizeAllFrames(v268, (self + 56), *v268, *&v268[8], *(self + 44), *(self + 48));
      v46 = *v268;
      *v281 = *v268;
      *&v281[8] = *&v268[8];
      if (*&v268[8] == *v268)
      {
LABEL_48:
        if (v45)
        {
          operator delete(v45);
          v46 = *v281;
        }

        if (!v46)
        {
          goto LABEL_65;
        }

        v47 = v46;
        goto LABEL_64;
      }
    }

    std::deque<std::vector<CGPointWithPts>>::push_back((self + 56), v281);
    goto LABEL_48;
  }

  sanitize(v281, &v310, *(self + 44), *(self + 48));
  v34 = MEMORY[0x1E695EFF8];
  v42 = *v281;
  if (*&v281[8] == *v281)
  {
    goto LABEL_62;
  }

LABEL_61:
  std::deque<std::vector<CGPointWithPts>>::push_back((self + 56), v281);
LABEL_62:
  if (v42)
  {
    v47 = v42;
LABEL_64:
    operator delete(v47);
  }

LABEL_65:
  if (*&v310.f64[0])
  {
    operator delete(*&v310.f64[0]);
  }

  if (!*(self + 32))
  {
    goto LABEL_320;
  }

  v51 = *parabolas;
  v52 = *(parabolas + 8);
  v279 = *(parabolas + 12);
  v280 = *(parabolas + 20);
  v273 = 0;
  v274 = 0;
  v275 = 0;
  v54 = (self + 16);
  v53 = *(self + 16);
  v55 = (self + 24);
  if (v53 == (self + 24))
  {
    goto LABEL_262;
  }

  v56 = v51 / v52;
  v57 = v56;
  v250 = v51;
  v251 = v52;
  v248 = v56;
  v247 = v56;
  do
  {
    v58 = v53[7][20] / *(v53[7] + 42);
    if (v56 <= v58)
    {
      goto LABEL_180;
    }

    v259 = v53 + 7;
    v59 = (v57 - v58) * *(self + 208);
    if (v59 > *(self + 232))
    {
      std::vector<int>::push_back[abi:ne200100](&v273, v53 + 8);
      goto LABEL_180;
    }

    v60 = *(self + 144);
    v256 = *(v53 + 5);
    *v281 = *v34;
    CMTimeMake(&v281[16], 0, 30);
    *&v281[16] = v51;
    *&v281[40] = 0;
    *&v281[24] = v52;
    *&v281[28] = v279;
    *&v281[36] = v280;
    v310 = *v34;
    CMTimeMake(v311, 0, 30);
    v61 = fmin(v59, v60);
    v257 = v61;
    *v311 = v51;
    *&v311[24] = 0;
    *&v311[8] = v52;
    *&v311[12] = v279;
    *&v311[20] = v280;
    v63 = *(v53 + 34);
    v64 = (v53 + 91);
    v53[92] = v53[91];
    v66 = 20;
    do
    {
      v62 = (v53 + 28);
      v313 = vld4q_f32(v62);
      v65 = (v53 + 36);
      v314 = vld4q_f32(v65);
      *__srcb = vaddq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v313.val[0], v63.f32[0]), v313.val[1], *v63.f32, 1), v313.val[2], v63, 2), v313.val[3], v63, 3), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v314.val[0], COERCE_FLOAT(*(v53 + 43))), v314.val[1], v53[86], 1), v314.val[2], *(v53 + 43), 2), v314.val[3], *(v53 + 43), 3));
      *v268 = vcvtq_f64_f32(__srcb[0]);
      std::vector<CGPoint>::push_back[abi:ne200100]((v53 + 91), v268);
      --v66;
      v63 = *__srcb;
    }

    while (v66);
    v67 = v53[7];
    v68 = v53[91];
    v69 = v53[92];
    if (v68 == v69)
    {
      v72 = 0;
      v75 = 0;
      __srca = 1;
      goto LABEL_90;
    }

    v70 = 0;
    v71 = 0;
    v72 = 0;
    v73 = *(v67 + 18);
    while (1)
    {
      v74 = v68[1];
      v75 = *v68 > v73;
      if (*v68 <= v73)
      {
        if (v71)
        {
          __srca = 0;
          v75 = 1;
          goto LABEL_90;
        }
      }

      else if (v70 != 0 && !v71)
      {
        __srca = 0;
        v75 = 0;
        goto LABEL_90;
      }

      v76 = *(v67 + 19);
      if (v74 > v76)
      {
        if (v70 != 0 && !v72)
        {
          v72 = 0;
          __srca = 0;
          goto LABEL_90;
        }

        goto LABEL_85;
      }

      if (v72)
      {
        break;
      }

LABEL_85:
      v68 += 2;
      --v70;
      v71 = v75;
      v72 = v74 > v76;
      if (v68 == v69)
      {
        __srca = 1;
        v72 = v74 > v76;
        goto LABEL_90;
      }
    }

    __srca = 0;
    v72 = 1;
LABEL_90:
    v78 = a2->i64[0];
    v77 = a2->i64[1];
    if (a2->i64[0] == v77)
    {
      v82 = 3.4028e38;
      v81 = 3.4028e38;
      v80 = 3.4028e38;
      v98 = 3.4028e38;
    }

    else
    {
      v79 = 3.4028e38;
      v80 = 3.4028e38;
      v81 = 3.4028e38;
      v82 = 3.4028e38;
      do
      {
        v83 = *v78;
        v84 = vabdd_f64(*v78, *(v67 + 18));
        if (v84 >= *(self + 220))
        {
          goto LABEL_133;
        }

        v85 = *(v78 + 8);
        v86 = vabdd_f64(v85, *(v67 + 19));
        if (v86 >= *(self + 228) || v84 <= *(self + 216) && v86 <= *(self + 224))
        {
          goto LABEL_133;
        }

        v87 = *(v78 + 16);
        if (![(VNParabolaDetection *)self isValidRadius:v87 withPrecedingRadius:*(v53 + 200)])
        {
          goto LABEL_133;
        }

        if (!__srca || (!v75 || v83 <= *(*v259 + 18) || (v88 = *v64, v83 < **v64)) && (!v72 || v85 <= *(*v259 + 19) || (v88 = *v64, v85 < (*v64)[1])) && (v75 || v83 >= *(*v259 + 18) || (v88 = *v64, v83 > **v64)) && (v72 || v85 >= *(*v259 + 19) || (v88 = *v64, v85 > (*v64)[1])) || (v89 = v53[92], v90 = v89 - v88, v89 == v88))
        {
          v92 = 0;
        }

        else
        {
          v91 = 0;
          v92 = 0;
          v93 = v90 >> 4;
          do
          {
            v94 = vsubq_f64(*&v88[2 * v91], *v78);
            v95 = sqrt(vaddvq_f64(vmulq_f64(v94, v94)));
            if (v95 < v80 && v95 < (2 * *(self + 236)))
            {
              v310 = *v78;
              *&v311[24] = v87;
              v80 = v95;
              v92 = 1;
            }

            ++v91;
          }

          while (v93 > v91);
        }

        if ((*(v53 + 772) & 1) == 0 || (v96 = *v78, *v78 <= *(*v259 + 18)))
        {
          if ((*(v53 + 772) & 2) == 0)
          {
            goto LABEL_133;
          }

          v96 = *v78;
          if (*v78 >= *(*v259 + 18))
          {
            goto LABEL_133;
          }
        }

        v97 = *(v78 + 8) - (v96 * *(&v256 + 1) + v96 * *&v256 * v96 + *(&v256 + 2));
        v98 = fabsf(v97);
        if (v98 > ceilf(*(v53 + 52) * v257))
        {
          goto LABEL_133;
        }

        objc_opt_self();
        if (*v78 >= *(v53 + 44))
        {
          v99 = *(v78 + 8);
          if (v99 >= *(v53 + 46) && *v78 <= *(v53 + 45) && v99 <= *(v53 + 47))
          {
            goto LABEL_133;
          }
        }

        if (v92)
        {
          v81 = v98;
        }

        if (v79 > v98)
        {
          *v281 = *v78;
          *&v281[40] = *(v78 + 16);
          if (v92)
          {
            v82 = v80;
          }
        }

        else
        {
LABEL_133:
          v98 = v79;
        }

        v78 += 24;
        v79 = v98;
      }

      while (v78 != v77);
    }

    v100 = *(self + 120);
    v55 = (self + 24);
    v34 = MEMORY[0x1E695EFF8];
    v54 = (self + 16);
    v51 = v250;
    v52 = v251;
    v101 = v53 + 4;
    if (v98 < v100)
    {
      if (v310.f64[0] != *v281)
      {
        v102 = v310.f64[1] == *&v281[8] || v82 <= v100;
        if (!v102)
        {
          if (v81 >= v100)
          {
            v80 = 3.4028e38;
          }

          else
          {
            *v281 = v310;
            *&v281[16] = *v311;
            *&v281[28] = *&v311[12];
            v98 = v81;
          }
        }
      }

      v103 = *(v53 + 200) * 0.5;
      v104 = fminf(v257, *(self + 168));
      if (fmax((*(v53 + 192) + (v103 * v104)), *(self + 140)) >= v98 && v98 <= fmaxf(*(v53 + 201) * 4.0, v103 * v104))
      {
        *(v53 + 192) = v98;
        if (v80 >= v100 || v80 >= v98)
        {
          goto LABEL_159;
        }

        v107 = v53[13];
        v106 = v53[14];
        v108 = v80 + fmaxf(v103, 4.0);
        if (0xAAAAAAAAAAAAAAABLL * ((v106 - v107) >> 4) > 9 || v98 <= v108)
        {
          goto LABEL_158;
        }

        v125 = v106 - (v107 + 6);
        if (v106 != v107 + 6)
        {
          memmove(v53[13], v107 + 6, v125 - 4);
        }

        v53[14] = (v107 + v125);
        v127 = v53[16];
        v126 = v53[17];
        v128 = v126 - (v127 + 1);
        if (v126 != v127 + 1)
        {
          memmove(v53[16], v127 + 1, v126 - (v127 + 1));
        }

        v53[17] = (v127 + v128);
        v130 = v53[19];
        v129 = v53[20];
        v131 = v129 - (v130 + 1);
        v52 = v251;
        if (v129 != v130 + 1)
        {
          memmove(v53[19], v130 + 1, v129 - (v130 + 1));
        }

        v53[20] = (v130 + v131);
        v132 = v53[13];
        if (0xAAAAAAAAAAAAAAABLL * ((v53[14] - v132) >> 4) < 4)
        {
          goto LABEL_158;
        }

        v133 = v132[6];
        v134 = v132[12];
        v135 = v132[18];
        if (*v132 <= v133 || v133 <= v134 || v134 <= v135)
        {
          v136 = *v132 < v133;
          if (v133 >= v134)
          {
            v136 = 0;
          }

          if (v134 >= v135)
          {
            v136 = 0;
          }
        }

        else
        {
          v136 = 2;
        }

        v151 = v132[1];
        v152 = v132[7];
        v153 = v132[13];
        v154 = v132[19];
        if (v151 <= v152 || v152 <= v153 || v153 <= v154)
        {
          v156 = v153 < v154 && v152 < v153;
          v157 = v156 && v151 < v152;
          v155 = v157 ? v136 | 4 : v136;
        }

        else
        {
          v155 = v136 | 8;
        }

        v158 = 1 << v155;
        _ZF = v155 > 8 || ((1 << v155) & 0x111) == 0;
        if (_ZF)
        {
          *(v53 + 772) = v155;
          v160 = 1;
        }

        else
        {
          std::vector<int>::push_back[abi:ne200100](&v273, v53 + 8);
          v160 = 0;
        }

        v102 = v155 > 8;
        v52 = v251;
        if (v102 || (v158 & 0x111) == 0)
        {
LABEL_158:
          *v281 = v310;
          *&v281[16] = *v311;
          *&v281[28] = *&v311[12];
          v101 = v53 + 4;
          goto LABEL_159;
        }

        v101 = v53 + 4;
        if (v160)
        {
LABEL_159:
          v110 = -1431655765 * ((v53[14] - v53[13]) >> 4);
          v111 = *(v53 + 52);
          *(v53 + 201) = (v98 + (*(v53 + 201) * 3.0)) * 0.25;
          if (v111 >= *(self + 236))
          {
            v114 = (v98 + (v111 * v110)) / (v110 + 1);
          }

          else
          {
            v112 = (v98 + (v111 * v110)) / (v110 + 1);
            v113 = v112 + v112 * 0.5;
            v114 = v113;
          }

          *(v53 + 52) = v114;
          v115 = *(v53 + 772);
          if (v115)
          {
            if (*v281 >= *(*v259 + 18))
            {
              goto LABEL_169;
            }

            v116 = 254;
          }

          else
          {
            if ((v115 & 2) == 0 || *v281 <= *(*v259 + 18))
            {
LABEL_169:
              if ((v115 & 4) != 0)
              {
                if (*&v281[8] >= *(*v259 + 19))
                {
                  goto LABEL_176;
                }

                v117 = 251;
              }

              else
              {
                if ((v115 & 8) == 0 || *&v281[8] <= *(*v259 + 19))
                {
                  goto LABEL_176;
                }

                v117 = 247;
              }

              v115 &= v117;
              *(v53 + 772) = v115;
LABEL_176:
              if (v115 > 8 || ((1 << v115) & 0x111) == 0)
              {
                std::vector<CGPointWithPts>::push_back[abi:ne200100]((v53 + 13), v281);
                v120 = v53[14];
                v121 = (v120 - 24);
                v122 = v53[9];
                v123 = v53[7];
                if (0xAAAAAAAAAAAAAAABLL * ((v122 - v123) >> 4) < 4)
                {
                  if (v123)
                  {
                    v53[8] = v123;
                    operator delete(v123);
                    v122 = 0;
                    v124 = (v53 + 7);
                    *v259 = 0;
                    v53[8] = 0;
                    v53[9] = 0;
                  }

                  else
                  {
                    v124 = (v53 + 7);
                  }

                  v141 = 0xAAAAAAAAAAAAAAABLL * (v122 >> 4);
                  v142 = 2 * v141;
                  if (2 * v141 <= 4)
                  {
                    v142 = 4;
                  }

                  if (v141 >= 0x2AAAAAAAAAAAAAALL)
                  {
                    v143 = 0x555555555555555;
                  }

                  else
                  {
                    v143 = v142;
                  }

                  std::vector<CGPointWithPts>::__vallocate[abi:ne200100](v124, v143);
                }

                v137 = v53[8];
                v138 = v137 - v123;
                if (0xAAAAAAAAAAAAAAABLL * ((v137 - v123) >> 4) > 3)
                {
                  memmove(v53[7], v121, 0xBCuLL);
                  v53[8] = v123 + 24;
                }

                else
                {
                  if (v137 != v123)
                  {
                    memmove(v53[7], v121, v138 - 4);
                    v121 = (v120 - 24);
                    v137 = v53[8];
                  }

                  v139 = &v121[v138];
                  v140 = v120 - v139;
                  if (v140)
                  {
                    memmove(v137, v139, v140 - 4);
                  }

                  v53[8] = (v137 + v140);
                }

                std::vector<double>::push_back[abi:ne200100]((v53 + 16), v281);
                std::vector<double>::push_back[abi:ne200100]((v53 + 19), &v281[8]);
                v144 = v53[97];
                *(v53 + 200) = (((*(v144 + 1) + *(v144 + 2)) + *(v144 + 3)) + *&v281[40]) * 0.25;
                *v144 = *(v144 + 4);
                *(v144 + 2) = *(v144 + 3);
                *(v144 + 3) = *&v281[40];
                v145 = *(v53 + 200);
                if (v145 < *(self + 164))
                {
                  v145 = v145 * 2.5;
                }

                *(v53 + 52) = v145;
                [VNParabolaDetection updateMinMaxXYOfParabola:v281 withPoint:?];
                [(VNParabolaDetection *)(v53 + 16) computeEquationCoefficients:v146 yValues:v147, v148, v149, v150];
              }

              std::vector<int>::push_back[abi:ne200100](&v273, v101);
              goto LABEL_179;
            }

            v116 = 253;
          }

          v115 &= v116;
          *(v53 + 772) = v115;
          goto LABEL_169;
        }
      }
    }

LABEL_179:
    v56 = v248;
    v57 = v247;
LABEL_180:
    v118 = v53[1];
    if (v118)
    {
      do
      {
        v119 = v118;
        v118 = *v118;
      }

      while (v118);
    }

    else
    {
      do
      {
        v119 = v53[2];
        _ZF = *v119 == v53;
        v53 = v119;
      }

      while (!_ZF);
    }

    v53 = v119;
  }

  while (v119 != v55);
  v161 = v273;
  v162 = v274;
  if (v274 != v273)
  {
    do
    {
      v163 = *v55;
      if (!*v55)
      {
        goto LABEL_253;
      }

      v164 = *v161;
      v165 = v55;
      v166 = *v55;
      do
      {
        if (*(v166 + 8) >= v164)
        {
          v165 = v166;
        }

        v166 = v166[*(v166 + 8) < v164];
      }

      while (v166);
      if (v165 == v55 || v164 < *(v165 + 8))
      {
LABEL_253:
        v165 = v55;
      }

      v167 = v165[1];
      v168 = v165;
      if (v167)
      {
        do
        {
          v169 = v167;
          v167 = *v167;
        }

        while (v167);
      }

      else
      {
        do
        {
          v169 = v168[2];
          _ZF = *v169 == v168;
          v168 = v169;
        }

        while (!_ZF);
      }

      if (*v54 == v165)
      {
        *v54 = v169;
      }

      --*(self + 32);
      std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v163, v165);
      InternalObservedParabola::~InternalObservedParabola((v165 + 6));
      operator delete(v165);
      ++v161;
    }

    while (v161 != v162);
  }

LABEL_262:
  std::__tree<std::__value_type<int,ObservedParabola>,std::__map_value_compare<int,std::__value_type<int,ObservedParabola>,std::less<int>,true>,std::allocator<std::__value_type<int,ObservedParabola>>>::destroy(*(self + 192));
  *(self + 184) = self + 192;
  v255 = (self + 192);
  *(self + 192) = 0;
  *(self + 200) = 0;
  v170 = *(self + 16);
  if (v170 != v55)
  {
    __asm { FMOV            V0.4S, #1.0 }

    __src_8 = *(&_Q0 + 1);
    do
    {
      *v281 = *(v170 + 8);
      *&v281[16] = v170[6];
      memset(&v281[24], 0, 24);
      std::vector<CGPointWithPts>::__init_with_size[abi:ne200100]<CGPointWithPts*,CGPointWithPts*>(&v281[24], v170[7], v170[8], 0xAAAAAAAAAAAAAAABLL * ((v170[8] - v170[7]) >> 4));
      v282 = *(v170 + 5);
      LODWORD(v283) = *(v170 + 24);
      v285 = 0;
      v286 = 0;
      v284 = 0;
      std::vector<CGPointWithPts>::__init_with_size[abi:ne200100]<CGPointWithPts*,CGPointWithPts*>(&v284, v170[13], v170[14], 0xAAAAAAAAAAAAAAABLL * ((v170[14] - v170[13]) >> 4));
      v287 = 0;
      v288 = 0;
      v289 = 0;
      std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v287, v170[16], v170[17], v170[17] - v170[16]);
      v290 = 0;
      v291 = 0;
      v292 = 0;
      std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v290, v170[19], v170[20], v170[20] - v170[19]);
      v174 = *(v170 + 12);
      v293 = *(v170 + 11);
      v294 = v174;
      v295 = *(v170 + 52);
      memcpy(v296, v170 + 28, sizeof(v296));
      v298 = 0;
      v299 = 0;
      v297 = 0;
      std::vector<CGPoint>::__init_with_size[abi:ne200100]<CGPoint*,CGPoint*>(&v297, v170[88], v170[89], (v170[89] - v170[88]) >> 4);
      v300 = 0;
      v301 = 0;
      v302 = 0;
      std::vector<CGPoint>::__init_with_size[abi:ne200100]<CGPoint*,CGPoint*>(&v300, v170[91], v170[92], (v170[92] - v170[91]) >> 4);
      v303 = *(v170 + 47);
      v304 = *(v170 + 192);
      v305 = *(v170 + 772);
      v307 = 0;
      v308 = 0;
      v306 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v306, v170[97], v170[98], (v170[98] - v170[97]) >> 2);
      v309 = v170[100];
      if (0xAAAAAAAAAAAAAAABLL * ((v285 - v284) >> 4) >= *(self + 212))
      {
        v175 = *v255;
        if (!*v255)
        {
LABEL_271:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v176 = v175;
            v177 = *(v175 + 8);
            if (*v281 >= v177)
            {
              break;
            }

            v175 = *v176;
            if (!*v176)
            {
              goto LABEL_271;
            }
          }

          if (v177 >= *v281)
          {
            break;
          }

          v175 = v176[1];
          if (!v175)
          {
            goto LABEL_271;
          }
        }

        objc_storeStrong(v176 + 6, *&v281[16]);
        v270 = 0;
        v271 = 0;
        v272 = 0;
        if (v285 == v284)
        {
          v185 = 0;
          v184 = 0;
        }

        else
        {
          v178 = 0xAAAAAAAAAAAAAAABLL * ((v285 - v284) >> 4);
          if (v178 >= 5)
          {
            v178 = 5;
          }

          v179 = v178 + 1;
          v180 = -v178;
          do
          {
            v181 = *(v284 + 6 * (v180 - 0x5555555555555555 * ((v285 - v284) >> 4)));
            v182.i64[1] = __src_8;
            v182.f32[0] = v181 * v181;
            v182.f32[1] = v181;
            v183 = vmulq_f32(v182, v282);
            v310.f64[0] = v181;
            v310.f64[1] = (v183.f32[2] + vaddv_f32(*v183.f32));
            std::vector<CGPoint>::push_back[abi:ne200100](&v270, &v310);
            --v179;
            ++v180;
          }

          while (v179 > 1);
          v184 = v270;
          v185 = v271;
        }

        std::vector<CGPoint>::__assign_with_size[abi:ne200100]<CGPoint*,CGPoint*>(v176 + 7, v184, v185, (v185 - v184) >> 4);
        if (*(self + 124) && *(self + 128))
        {
          v310.f64[0] = 0.0;
          std::vector<double>::vector[abi:ne200100](v268, (v288 - v287) >> 3);
          v310.f64[0] = 0.0;
          std::vector<double>::vector[abi:ne200100](__p, (v291 - v290) >> 3);
          v189 = v287;
          v190 = v288;
          v191 = *v268;
          if (v287 != v288)
          {
            v192 = *v268;
            v193 = 1.0 / *(self + 124);
            do
            {
              v194 = *v189++;
              v195 = v194;
              *v192++ = (v193 * v195);
            }

            while (v189 != v190);
          }

          v196 = v290;
          v197 = v291;
          v198 = __p[0];
          if (v290 != v291)
          {
            v199 = __p[0];
            v200 = 1.0 / *(self + 128);
            do
            {
              v201 = *v196++;
              v202 = v201;
              *v199++ = (v200 * v202);
            }

            while (v196 != v197);
          }

          polynomialFit(v310.f64, v191, v198, (*&v268[8] - v191) >> 3, v186, v187, v188);
        }

        *(v176 + 7) = 0uLL;
        if (0xAAAAAAAAAAAAAAABLL * ((v285 - v284) >> 4) >= *(self + 212))
        {
          v203 = *(self + 212);
        }

        else
        {
          v203 = 0xAAAAAAAAAAAAAAABLL * ((v285 - v284) >> 4);
        }

        if (v203)
        {
          if (!(v203 >> 60))
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<vision::mod::DescriptorItemSideInfo>>(v203);
          }

          std::vector<float>::__throw_length_error[abi:ne200100]();
        }

        v204 = 0.0;
        v205 = 16 * ((v285 - v284) >> 4);
        v206 = 0;
        v207 = 0;
        do
        {
          v208 = (v284 + v205);
          *v207++ = *(v284 + v205);
          v204 = v204 + v208[10];
          v205 += 48;
          --v206;
        }

        while (v206);
        *(v176 + 32) = fmaxf(*&v283, 0.0);
        std::vector<CGPoint>::__assign_with_size[abi:ne200100]<CGPoint*,CGPoint*>(v176 + 10, 0, 0, 0);
        *(v176 + 13) = v204 / 0;
        v209 = v285;
        v210 = *(v284 + 4);
        *(v176 + 132) = *(v284 + 1);
        *(v176 + 148) = v210;
        v211 = *(v209 - 2);
        *(v176 + 156) = *(v209 - 2);
        *(v176 + 172) = v211;
        v55 = (self + 24);
        if (v270)
        {
          operator delete(v270);
        }
      }

      if (v306)
      {
        v307 = v306;
        operator delete(v306);
      }

      if (v300)
      {
        v301 = v300;
        operator delete(v300);
      }

      if (v297)
      {
        v298 = v297;
        operator delete(v297);
      }

      if (v290)
      {
        v291 = v290;
        operator delete(v290);
      }

      if (v287)
      {
        v288 = v287;
        operator delete(v287);
      }

      if (v284)
      {
        v285 = v284;
        operator delete(v284);
      }

      if (*&v281[24])
      {
        *&v281[32] = *&v281[24];
        operator delete(*&v281[24]);
      }

      v212 = v170[1];
      if (v212)
      {
        do
        {
          v213 = v212;
          v212 = *v212;
        }

        while (v212);
      }

      else
      {
        do
        {
          v213 = v170[2];
          _ZF = *v213 == v170;
          v170 = v213;
        }

        while (!_ZF);
      }

      v170 = v213;
    }

    while (v213 != v55);
  }

  if (v273)
  {
    v274 = v273;
    operator delete(v273);
  }

LABEL_320:
  if (*(self + 96) >= 5uLL)
  {
    v276 = 0;
    v277 = 0;
    v278 = 0;
    v242 = 0;
    v273 = 0;
    v274 = 0;
    v275 = 0;
    v270 = 0;
    v271 = 0;
    v272 = 0;
    v214 = 1;
    v215 = 2;
    do
    {
      v239 = v215;
      v240 = v214;
      v216 = v214;
      do
      {
        v241 = v215;
        if (v216 <= 2)
        {
          v217 = v215;
          v243 = v216;
          do
          {
            v218 = *(*(self + 64) + 8 * ((*(self + 88) + v242) / 0xAAuLL)) - 4080 * ((*(self + 88) + v242) / 0xAAuLL) + 24 * (*(self + 88) + v242);
            v219 = *v218;
            v244 = *(v218 + 8);
            v249 = v217;
            if (*v218 != v244)
            {
              do
              {
                v310 = *v219;
                *v311 = v219[1];
                v245 = v219;
                *&v311[16] = v219[2];
                v220 = *(*(self + 64) + 8 * ((*(self + 88) + v216) / 0xAA)) - 4080 * ((*(self + 88) + v216) / 0xAA) + 24 * (*(self + 88) + v216);
                v221 = *v220;
                v246 = *(v220 + 8);
                if (*v220 != v246)
                {
                  do
                  {
                    *v268 = *v221;
                    *&v268[16] = v221[1];
                    v253 = v221;
                    v269 = v221[2];
                    v222 = *(*(self + 64) + 8 * ((*(self + 88) + v217) / 0xAA)) - 4080 * ((*(self + 88) + v217) / 0xAA) + 24 * (*(self + 88) + v217);
                    v224 = *v222;
                    v223 = *(v222 + 8);
                    if (*v222 != v223)
                    {
                      v225 = v310.f64[0];
                      v226 = vabdd_f64(v310.f64[0], *v268);
                      v258 = *v268;
                      v252 = *(v222 + 8);
                      do
                      {
                        *__p = *v224;
                        v266 = v224[1];
                        v267 = v224[2];
                        v227 = *(self + 220);
                        if (v226 < v227)
                        {
                          v228 = *(self + 228);
                          if (vabdd_f64(v310.f64[1], *&v268[8]) < v228 && vabdd_f64(v258, *__p) < v227 && vabdd_f64(*&v268[8], *&__p[1]) < v228)
                          {
                            v229 = v225 < v258;
                            v230 = v225 > v258;
                            if (v258 <= *__p)
                            {
                              v230 = 0;
                            }

                            if (v258 >= *__p)
                            {
                              v229 = 0;
                            }

                            if (v230 || v229 || (v310.f64[1] > *&v268[8] ? (v231 = *&v268[8] <= *&__p[1]) : (v231 = 1), !v231 || v310.f64[1] < *&v268[8] && *&v268[8] < *&__p[1]))
                            {
                              v232 = *(&v269 + 2);
                              if ([(VNParabolaDetection *)self isValidRadius:*&v311[24] withPrecedingRadius:?])
                              {
                                if ([(VNParabolaDetection *)self isValidRadius:v232 withPrecedingRadius:?])
                                {
                                  v274 = v273;
                                  v271 = 0;
                                  std::vector<double>::push_back[abi:ne200100](&v273, &v310);
                                  std::vector<double>::push_back[abi:ne200100](&v270, &v310.f64[1]);
                                  std::vector<double>::push_back[abi:ne200100](&v273, v268);
                                  std::vector<double>::push_back[abi:ne200100](&v270, &v268[8]);
                                  std::vector<double>::push_back[abi:ne200100](&v273, __p);
                                  std::vector<double>::push_back[abi:ne200100](&v270, &__p[1]);
                                  v277 = 0;
                                  std::vector<CGPointWithPts>::push_back[abi:ne200100](&v276, &v310);
                                  std::vector<CGPointWithPts>::push_back[abi:ne200100](&v276, v268);
                                  std::vector<CGPointWithPts>::push_back[abi:ne200100](&v276, __p);
                                  memset(v264, 0, sizeof(v264));
                                  std::vector<CGPointWithPts>::__assign_with_size[abi:ne200100]<CGPointWithPts*,CGPointWithPts*>(v264, v276, v277, 0xAAAAAAAAAAAAAAABLL * ((v277 - v276) >> 4));
                                  [(VNParabolaDetection *)&v273 computeEquationCoefficients:v270 yValues:v233, v234, v235, v236, v237];
                                }

                                v223 = v252;
                              }

                              else
                              {
                                v223 = v252;
                              }
                            }
                          }
                        }

                        v224 += 3;
                      }

                      while (v224 != v223);
                    }

                    v221 = v253 + 3;
                    v217 = v249;
                  }

                  while (v253 + 3 != v246);
                }

                v219 = v245 + 3;
                v216 = v243;
              }

              while (v245 + 3 != v244);
            }
          }

          while (v217++ < 3);
        }

        ++v216;
        v215 = v241 + 1;
      }

      while (v216 != 3);
      v215 = v239 + 1;
      v214 = v240 + 1;
      v242 = 1;
    }

    while (v240 != 2);
    if (v273)
    {
      operator delete(v273);
    }

    if (v276)
    {
      operator delete(v276);
    }
  }

  return self + 184;
}

- (BOOL)isValidRadius:(float)radius withPrecedingRadius:
{
  v3 = self[41];
  v4 = fminf(radius, a2) > v3;
  v5 = self[39];
  if (v3 >= radius)
  {
    return fmaxf((v5 * 1.25) * radius, v3) >= a2 && a2 > 0.0;
  }

  else if ((v5 * radius) >= a2)
  {
    v8 = 0.75;
    if (v4)
    {
      v8 = 1.0;
    }

    return ((v8 * self[40]) * radius) <= a2;
  }

  else
  {
    return 0;
  }
}

+ (BOOL)updateMinMaxXYOfParabola:(double *)parabola withPoint:
{
  objc_opt_self();
  v5 = a2[32];
  v6 = *parabola;
  result = *parabola < v5;
  v8 = *parabola;
  if (*parabola < v5)
  {
    a2[32] = v8;
  }

  v9 = parabola[1];
  v10 = v9;
  if (v9 < a2[34])
  {
    a2[34] = v10;
    result = 1;
  }

  if (v6 > a2[33])
  {
    a2[33] = v8;
    result = 1;
  }

  if (v9 > a2[35])
  {
    a2[35] = v10;
    return 1;
  }

  return result;
}

- (float)getRsquareOfEquation:(const double *)equation yValues:(__n128)values equationConstants:
{
  v4 = equation - a2;
  if (equation == a2)
  {
    v18 = NAN;
  }

  else
  {
    v5 = v4 >> 3;
    if ((v4 >> 3) <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = v4 >> 3;
    }

    v7 = 0.0;
    v8 = a2;
    v9 = v6;
    do
    {
      v10 = *v8++;
      v7 = v10 + v7;
      --v9;
    }

    while (v9);
    v11 = (v7 / v5);
    v12 = 0;
    do
    {
      v13 = *self++;
      v14 = v13 * values.n128_f32[1] + values.n128_f32[0] * (v13 * v13) + values.n128_f32[2];
      v15 = vld1q_dup_f64(a2++);
      v16.f64[0] = v11;
      v16.f64[1] = v14;
      v17 = vsubq_f64(v15, v16);
      v12 = vcvt_f32_f64(vaddq_f64(vmulq_f64(v17, v17), vcvtq_f64_f32(v12)));
      --v6;
    }

    while (v6);
    LODWORD(v18) = vdiv_f32(vdup_lane_s32(v12, 1), v12).u32[0];
  }

  return 1.0 - v18;
}

@end