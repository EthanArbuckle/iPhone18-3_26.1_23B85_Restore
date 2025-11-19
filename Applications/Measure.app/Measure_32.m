void sub_10024CDA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12 != v12)
  {
    if (a12)
    {
      operator delete[]();
    }
  }

  _Unwind_Resume(exception_object);
}

char *sub_10024CDD8(char *result, uint64_t a2, uint64_t a3, double a4, float64x2_t a5, float64x2_t a6, float64x2_t a7, double a8, double a9, float64x2_t a10)
{
  v10 = *(result + 2);
  v11 = *(a2 + 16);
  v12 = *(a3 + 16);
  v13 = *(result + 10) >> 1;
  v221 = *(a2 + 80) >> 3;
  if (*(a3 + 8) <= 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *(a3 + 80) >> 3;
  }

  v15 = *(result + 8);
  v16 = *v15;
  v17 = v15[1];
  v18 = v15[1];
  if (v12)
  {
    v19 = *(a3 + 12);
    result = v222;
    if ((8 * v17) >= 0x409)
    {
      operator new[]();
    }

    if (v16 >= 1)
    {
      v20 = 0;
      v21 = 32 * (v19 == v17);
      v22 = 2 * v13;
      v23 = 16 * ((v17 >> 3) & 0xFFFFFFF);
      v24 = &v10->i16[2];
      v25 = *(a3 + 16);
      v220 = v17 & 0x7FFFFFF8;
      do
      {
        if (v19 >= v18)
        {
          if (v18 >= 1)
          {
            v28 = 0;
            if (v18 < 8)
            {
              goto LABEL_91;
            }

            v29 = v17 & 0x7FFFFFF8;
            v30 = v222;
            v31 = v25;
            v32 = v10;
            if (v222 + -8 * v14 * v20 - v12 < 0x40)
            {
              goto LABEL_91;
            }

            do
            {
              v33 = *v32++;
              v34 = vmovl_high_u16(v33);
              v35.i64[0] = v34.u32[2];
              v35.i64[1] = v34.u32[3];
              v36 = vcvtq_f64_u64(v35);
              v35.i64[0] = v34.u32[0];
              v35.i64[1] = v34.u32[1];
              v37 = vcvtq_f64_u64(v35);
              v38 = vmovl_u16(*v33.i8);
              v35.i64[0] = v38.u32[2];
              v35.i64[1] = v38.u32[3];
              v39 = vcvtq_f64_u64(v35);
              v35.i64[0] = v38.u32[0];
              v35.i64[1] = v38.u32[1];
              a10 = v31[2];
              v40 = v31[3];
              v42 = *v31;
              v41 = v31[1];
              v31 += 4;
              a5 = vsubq_f64(vcvtq_f64_u64(v35), v42);
              a7 = vsubq_f64(v36, v40);
              v30[2] = vsubq_f64(v37, a10);
              v30[3] = a7;
              a6 = vsubq_f64(v39, v41);
              *v30 = a5;
              v30[1] = a6;
              v30 += 4;
              v29 -= 8;
            }

            while (v29);
            v28 = v17 & 0x7FFFFFF8;
            if (v220 != v17)
            {
LABEL_91:
              do
              {
                LOWORD(a5.f64[0]) = v10->i16[v28];
                a6.f64[0] = v25->f64[v28];
                a5.f64[0] = *&a5.f64[0] - a6.f64[0];
                v222[v28++] = *&a5.f64[0];
              }

              while (v17 != v28);
            }
          }

          goto LABEL_25;
        }

        if (v17 >= 1)
        {
          v26 = *(v12 + 8 * v14 * v20);
          if (v17 >= 8)
          {
            v43 = 0;
            a6 = vdupq_lane_s64(v26, 0);
            v44 = v222;
            do
            {
              v45 = v10[v43 / 0x10];
              v46 = vmovl_high_u16(v45);
              v47.i64[0] = v46.u32[2];
              v47.i64[1] = v46.u32[3];
              v48 = vcvtq_f64_u64(v47);
              v47.i64[0] = v46.u32[0];
              v47.i64[1] = v46.u32[1];
              v49 = vcvtq_f64_u64(v47);
              v50 = vmovl_u16(*v45.i8);
              v47.i64[0] = v50.u32[2];
              v47.i64[1] = v50.u32[3];
              v51 = vcvtq_f64_u64(v47);
              v47.i64[0] = v50.u32[0];
              v47.i64[1] = v50.u32[1];
              a7 = vsubq_f64(vcvtq_f64_u64(v47), a6);
              a10 = vsubq_f64(v51, a6);
              v44[2] = vsubq_f64(v49, a6);
              v44[3] = vsubq_f64(v48, a6);
              *v44 = a7;
              v44[1] = a10;
              v44 += 4;
              v43 += 16;
            }

            while (v23 != v43);
            v27 = v17 & 0x7FFFFFF8;
            if (v220 == v17)
            {
              goto LABEL_25;
            }
          }

          else
          {
            v27 = 0;
          }

          do
          {
            LOWORD(a6.f64[0]) = v10->i16[v27];
            a6.f64[0] = *&a6.f64[0] - *&v26;
            v222[v27++] = *&a6.f64[0];
          }

          while (v17 != v27);
        }

LABEL_25:
        v52 = v10;
        v53 = v24;
        v54 = v20;
        do
        {
          v55 = (v12 + 8 * v14 * v54);
          if (v19 < v17)
          {
            v225 = v55->f64[0];
            v226 = v225;
            *v224 = v225;
            *&v224[1] = v225;
            v55 = v224;
          }

          if (v18 >= 4)
          {
            v58 = 0;
            f64 = v55[1].f64;
            v57 = 0.0;
            v60 = v53;
            v61 = &v223;
            do
            {
              LOWORD(a6.f64[0]) = *(v60 - 2);
              LOWORD(a10.f64[0]) = *(v60 - 1);
              *&v62 = *(v61 - 1) * (*&a10.f64[0] - *(f64 - 1));
              v63 = *&v62 + *(v61 - 2) * (*&a6.f64[0] - *(f64 - 2));
              LOWORD(v62) = *v60;
              *&v64 = v62 - *f64;
              v65 = *v61;
              a10.f64[0] = v61[1];
              v61 += 4;
              v66 = v63 + v65 * *&v64;
              LOWORD(v64) = v60[1];
              a7.f64[0] = v64 - f64[1];
              a6.f64[0] = v66 + a10.f64[0] * a7.f64[0];
              v58 += 4;
              v57 = v57 + a6.f64[0];
              f64 = (f64 + v21);
              v60 += 4;
            }

            while (v58 <= v17 - 4);
            v55 = (v55 + v21 * (((v17 - 4) >> 2) + 1));
            v56 = ((v17 - 4) & 0xFFFFFFFC) + 4;
            if (v56 >= v18)
            {
              goto LABEL_26;
            }
          }

          else
          {
            v56 = 0;
            v57 = 0.0;
            if (v18 <= 0)
            {
              goto LABEL_26;
            }
          }

          v67 = v56;
          v68 = (v17 + ~v56);
          if (v68 <= 6)
          {
            v69 = v67;
            v70 = v55;
            do
            {
LABEL_40:
              *&a6.f64[0] = v222[v69];
              LOWORD(a7.f64[0]) = v52->i16[v69];
              v88 = *v70++;
              a7.f64[0] = *&a7.f64[0] - v88;
              v57 = v57 + a6.f64[0] * a7.f64[0];
              ++v69;
            }

            while (v18 > v69);
            goto LABEL_26;
          }

          v71 = v68 + 1;
          v72 = (v68 + 1) & 0x1FFFFFFF8;
          v70 = &v55->f64[v72];
          v69 = v72 + v67;
          v73 = &v222[v67];
          v74 = (v52 + 2 * v67);
          v75 = v72;
          do
          {
            v76 = *v74++;
            v77 = vmovl_high_u16(v76);
            v78.i64[0] = v77.u32[2];
            v78.i64[1] = v77.u32[3];
            v79 = vcvtq_f64_u64(v78);
            v78.i64[0] = v77.u32[0];
            v78.i64[1] = v77.u32[1];
            v80 = vcvtq_f64_u64(v78);
            a10 = vmovl_u16(*v76.i8);
            v78.i64[0] = LODWORD(a10.f64[1]);
            v78.i64[1] = HIDWORD(a10.f64[1]);
            v81 = vcvtq_f64_u64(v78);
            v78.i64[0] = LODWORD(a10.f64[0]);
            v78.i64[1] = HIDWORD(a10.f64[0]);
            v83 = v55[2];
            v82 = v55[3];
            v85 = *v55;
            v84 = v55[1];
            v55 += 4;
            v86 = vmulq_f64(v73[3], vsubq_f64(v79, v82));
            v87 = vmulq_f64(v73[2], vsubq_f64(v80, v83));
            a7 = vmulq_f64(v73[1], vsubq_f64(v81, v84));
            a6 = vmulq_f64(*v73, vsubq_f64(vcvtq_f64_u64(v78), v85));
            a10.f64[0] = a6.f64[1];
            v57 = v57 + a6.f64[0] + a6.f64[1] + a7.f64[0] + a7.f64[1] + v87.f64[0] + v87.f64[1] + v86.f64[0] + v86.f64[1];
            v73 += 4;
            v75 -= 8;
          }

          while (v75);
          if (v71 != v72)
          {
            goto LABEL_40;
          }

LABEL_26:
          a5.f64[0] = v57 * a4;
          v11->i64[v54++] = *&a5.f64[0];
          v53 = (v53 + v22);
          v52 = (v52 + v22);
        }

        while (v54 != v16);
        v11 = (v11 + 8 * v221);
        ++v20;
        v10 = (v10 + v22);
        v25 = (v25 + 8 * v14);
        v24 = (v24 + v22);
        v23 = 16 * ((v17 >> 3) & 0xFFFFFFF);
      }

      while (v20 != v16);
    }
  }

  else if (v16 >= 1)
  {
    if (v18 >= 4)
    {
      v97 = (v17 - 4);
      v98 = (v97 & 0xFFFFFFFC) + 4;
      if (v97 >= 0x1C)
      {
        v120 = 0;
        v121 = (v97 >> 2) + 1;
        v122 = 2 * v13;
        do
        {
          v123 = v10;
          result = v120;
          do
          {
            v124 = 0.0;
            v125 = v121 & 0x3FFFFFF8;
            v126 = v123;
            v127 = v10;
            do
            {
              v227 = vld4q_s16(v127);
              v127 += 32;
              v128 = vmovl_u16(*v227.val[0].i8);
              v228 = vld4q_s16(v126);
              v126 += 32;
              v129.i64[0] = v128.u32[0];
              v129.i64[1] = v128.u32[1];
              v130 = vcvtq_f64_u64(v129);
              v129.i64[0] = v128.u32[2];
              v129.i64[1] = v128.u32[3];
              v131 = v129;
              v132 = vmovl_high_u16(v227.val[0]);
              v129.i64[0] = v132.u32[0];
              v129.i64[1] = v132.u32[1];
              v133 = vcvtq_f64_u64(v131);
              v134 = vcvtq_f64_u64(v129);
              v129.i64[0] = v132.u32[2];
              v129.i64[1] = v132.u32[3];
              v135 = vcvtq_f64_u64(v129);
              v136 = vmovl_u16(*v228.val[0].i8);
              v129.i64[0] = v136.u32[0];
              v129.i64[1] = v136.u32[1];
              v137 = vcvtq_f64_u64(v129);
              v129.i64[0] = v136.u32[2];
              v129.i64[1] = v136.u32[3];
              v138 = vcvtq_f64_u64(v129);
              v139 = vmovl_high_u16(v228.val[0]);
              v129.i64[0] = v139.u32[0];
              v129.i64[1] = v139.u32[1];
              v140 = v129;
              v129.i64[0] = v139.u32[2];
              v129.i64[1] = v139.u32[3];
              v141 = vcvtq_f64_u64(v140);
              v142 = vcvtq_f64_u64(v129);
              v143 = vmovl_high_u16(v227.val[1]);
              v129.i64[0] = v143.u32[2];
              v129.i64[1] = v143.u32[3];
              v144 = vcvtq_f64_u64(v129);
              v129.i64[0] = v143.u32[0];
              v129.i64[1] = v143.u32[1];
              v145 = vcvtq_f64_u64(v129);
              v146 = vmovl_u16(*v227.val[1].i8);
              v129.i64[0] = v146.u32[2];
              v129.i64[1] = v146.u32[3];
              v147 = vcvtq_f64_u64(v129);
              v129.i64[0] = v146.u32[0];
              v129.i64[1] = v146.u32[1];
              v148 = vmovl_high_u16(v228.val[1]);
              v149 = vcvtq_f64_u64(v129);
              v129.i64[0] = v148.u32[2];
              v129.i64[1] = v148.u32[3];
              v150 = vcvtq_f64_u64(v129);
              v129.i64[0] = v148.u32[0];
              v129.i64[1] = v148.u32[1];
              v151 = v129;
              v152 = vmovl_u16(*v228.val[1].i8);
              v129.i64[0] = v152.u32[2];
              v129.i64[1] = v152.u32[3];
              v153 = vcvtq_f64_u64(v151);
              v154 = vcvtq_f64_u64(v129);
              v129.i64[0] = v152.u32[0];
              v129.i64[1] = v152.u32[1];
              v155 = vmulq_f64(v149, vcvtq_f64_u64(v129));
              v156 = vmulq_f64(v145, v153);
              v157 = vmulq_f64(v144, v150);
              v158 = vmovl_high_u16(v227.val[2]);
              v129.i64[0] = v158.u32[2];
              v129.i64[1] = v158.u32[3];
              v159 = vcvtq_f64_u64(v129);
              v129.i64[0] = v158.u32[0];
              v129.i64[1] = v158.u32[1];
              v160 = vmlaq_f64(v157, v142, v135);
              v161 = vcvtq_f64_u64(v129);
              v162 = vmovl_u16(*v227.val[2].i8);
              v129.i64[0] = v162.u32[2];
              v129.i64[1] = v162.u32[3];
              v163 = vcvtq_f64_u64(v129);
              v129.i64[0] = v162.u32[0];
              v129.i64[1] = v162.u32[1];
              v164 = vmlaq_f64(v156, v141, v134);
              v165 = vcvtq_f64_u64(v129);
              v166 = vmovl_high_u16(v228.val[2]);
              v129.i64[0] = v166.u32[2];
              v129.i64[1] = v166.u32[3];
              v167 = vcvtq_f64_u64(v129);
              v129.i64[0] = v166.u32[0];
              v129.i64[1] = v166.u32[1];
              v168 = vmlaq_f64(v155, v137, v130);
              v169 = vcvtq_f64_u64(v129);
              v170 = vmovl_u16(*v228.val[2].i8);
              v129.i64[0] = v170.u32[2];
              v129.i64[1] = v170.u32[3];
              v171 = vcvtq_f64_u64(v129);
              v129.i64[0] = v170.u32[0];
              v129.i64[1] = v170.u32[1];
              v172 = vmlaq_f64(vmulq_f64(v147, v154), v138, v133);
              v173 = vcvtq_f64_u64(v129);
              v174 = vmovl_u16(*v227.val[3].i8);
              v129.i64[0] = v174.u32[0];
              v129.i64[1] = v174.u32[1];
              v175 = vcvtq_f64_u64(v129);
              v129.i64[0] = v174.u32[2];
              v129.i64[1] = v174.u32[3];
              v176 = vmlaq_f64(v168, v173, v165);
              v177 = vcvtq_f64_u64(v129);
              v227.val[0] = vmovl_high_u16(v227.val[3]);
              v129.i64[0] = v227.val[0].u32[0];
              v129.i64[1] = v227.val[0].u32[1];
              v227.val[1] = vcvtq_f64_u64(v129);
              v129.i64[0] = v227.val[0].u32[2];
              v129.i64[1] = v227.val[0].u32[3];
              v227.val[0] = vcvtq_f64_u64(v129);
              v227.val[2] = vmovl_u16(*v228.val[3].i8);
              v129.i64[0] = v227.val[2].u32[0];
              v129.i64[1] = v227.val[2].u32[1];
              v178 = vcvtq_f64_u64(v129);
              v129.i64[0] = v227.val[2].u32[2];
              v129.i64[1] = v227.val[2].u32[3];
              v227.val[2] = vcvtq_f64_u64(v129);
              v228.val[0] = vmovl_high_u16(v228.val[3]);
              v129.i64[0] = v228.val[0].u32[0];
              v129.i64[1] = v228.val[0].u32[1];
              v228.val[1] = vcvtq_f64_u64(v129);
              v129.i64[0] = v228.val[0].u32[2];
              v129.i64[1] = v228.val[0].u32[3];
              v179 = vmlaq_f64(vmlaq_f64(v160, v167, v159), vcvtq_f64_u64(v129), v227.val[0]);
              v180 = v179.f64[1];
              v181 = vmlaq_f64(vmlaq_f64(v164, v169, v161), v228.val[1], v227.val[1]);
              v182 = vmlaq_f64(vmlaq_f64(v172, v171, v163), v227.val[2], v177);
              v183 = v182.f64[1];
              v184 = vmlaq_f64(v176, v178, v175);
              v185 = v181.f64[1];
              v124 = v124 + v184.f64[0] + v184.f64[1] + v182.f64[0] + v182.f64[1] + v181.f64[0] + v181.f64[1] + v179.f64[0] + v179.f64[1];
              v125 -= 8;
            }

            while (v125);
            v186 = (((v121 >> 3) & 0x7FFFFFF) << 6) | 4;
            v187 = 4 * (v121 & 0x3FFFFFF8);
            if (v121 != (v121 & 0x3FFFFFF8))
            {
              do
              {
                LOWORD(v180) = *(&v10->i16[-2] + v186);
                LOWORD(v183) = *(v123 + v186 - 4);
                *&v188 = *&v183;
                LOWORD(v185) = *(&v10->i16[-1] + v186);
                LOWORD(v178.f64[0]) = *(v123 + v186 - 2);
                v178.f64[0] = *&v178.f64[0];
                *&v189 = *&v185 * v178.f64[0];
                v190 = *&v189 + *&v180 * *&v188;
                LOWORD(v188) = *(v10->i16 + v186);
                *&v191 = v188;
                LOWORD(v189) = *(v123 + v186);
                *&v192 = v189;
                v193 = v190 + *&v191 * *&v192;
                LOWORD(v191) = *(&v10->i16[1] + v186);
                LOWORD(v192) = *(v123 + v186 + 2);
                v183 = v191;
                v185 = v192;
                v180 = v193 + v183 * v185;
                v124 = v124 + v180;
                v187 += 4;
                v186 += 8;
              }

              while (v187 <= v97);
            }

            v194 = (v97 & 0xFFFFFFFC) + 4;
            v195 = v98;
            if (v98 < v18)
            {
              do
              {
                LOWORD(v180) = v10->i16[v195];
                LOWORD(v183) = v123[v195];
                v180 = *&v180;
                v183 = *&v183;
                v124 = v124 + v180 * v183;
                ++v195;
                ++v194;
              }

              while (v18 > v194);
            }

            *&v11->i64[result++] = v124 * a4;
            v123 = (v123 + v122);
          }

          while (result != v16);
          ++v120;
          v11 = (v11 + 8 * v221);
          v10 = (v10 + v122);
        }

        while (v120 != v16);
      }

      else if (v98 >= v17)
      {
        v205 = 0;
        v206 = &v10->i16[2];
        v207 = 2 * v13;
        do
        {
          v208 = v206;
          v209 = v205;
          do
          {
            v210 = 0;
            v211 = 0.0;
            v212 = v206;
            v213 = v208;
            do
            {
              LOWORD(a6.f64[0]) = *(v212 - 2);
              LOWORD(a7.f64[0]) = *(v213 - 2);
              *&v214 = *&a7.f64[0];
              LOWORD(a8) = *(v212 - 1);
              LOWORD(a9) = *(v213 - 1);
              a9 = *&a9;
              *&v215 = *&a8 * a9;
              v216 = *&v215 + *&a6.f64[0] * *&v214;
              LOWORD(v214) = *v212;
              LOWORD(v215) = *v213;
              *&v217 = v214;
              *&v218 = v215;
              v219 = v216 + *&v217 * *&v218;
              LOWORD(v217) = v212[1];
              a7.f64[0] = v217;
              LOWORD(v218) = v213[1];
              a8 = v218;
              a6.f64[0] = v219 + a7.f64[0] * a8;
              v211 = v211 + a6.f64[0];
              v210 += 4;
              v213 += 4;
              v212 += 4;
            }

            while (v210 <= v97);
            *&v11->i64[v209++] = v211 * a4;
            v208 = (v208 + v207);
          }

          while (v209 != v16);
          ++v205;
          v11 = (v11 + 8 * v221);
          v206 = (v206 + v207);
        }

        while (v205 != v16);
      }

      else
      {
        v99 = 0;
        v100 = &v10->i16[2];
        v101 = 2 * v13;
        v102 = &v10->i8[2 * v98];
        do
        {
          v103 = v102;
          v104 = v100;
          v105 = v99;
          do
          {
            v106 = 0;
            v107 = 0.0;
            v108 = v100;
            v109 = v104;
            do
            {
              LOWORD(a6.f64[0]) = *(v108 - 2);
              LOWORD(a7.f64[0]) = *(v109 - 2);
              *&v110 = *&a7.f64[0];
              LOWORD(a8) = *(v108 - 1);
              LOWORD(a9) = *(v109 - 1);
              a9 = *&a9;
              *&v111 = *&a8 * a9;
              v112 = *&v111 + *&a6.f64[0] * *&v110;
              LOWORD(v110) = *v108;
              LOWORD(v111) = *v109;
              *&v113 = v110;
              *&v114 = v111;
              v115 = v112 + *&v113 * *&v114;
              LOWORD(v113) = v108[1];
              a7.f64[0] = v113;
              LOWORD(v114) = v109[1];
              a8 = v114;
              a6.f64[0] = v115 + a7.f64[0] * a8;
              v107 = v107 + a6.f64[0];
              v106 += 4;
              v109 += 4;
              v108 += 4;
            }

            while (v106 <= v97);
            v116 = v102;
            result = v103;
            v117 = (v97 & 0xFFFFFFFC) + 4;
            do
            {
              v118 = *v116;
              v116 += 2;
              a6.f64[0] = v118;
              v119 = *result;
              result += 2;
              a7.f64[0] = v119;
              v107 = v107 + a6.f64[0] * v119;
              ++v117;
            }

            while (v18 > v117);
            *&v11->i64[v105++] = v107 * a4;
            v104 = (v104 + v101);
            v103 += v101;
          }

          while (v105 != v16);
          ++v99;
          v11 = (v11 + 8 * v221);
          v100 = (v100 + v101);
          v102 += v101;
        }

        while (v99 != v16);
      }
    }

    else if (v17 <= 0)
    {
      v196 = 0;
      v197 = a4 * 0.0;
      v198 = vdupq_lane_s64(*&v197, 0);
      v199 = v11 + 1;
      v200 = v16;
      do
      {
        v201 = v16 - v196;
        v202 = v196;
        if ((v16 - v196) < 4)
        {
          goto LABEL_92;
        }

        v203 = v200 & 0xFFFFFFFFFFFFFFFCLL;
        v202 = &v196[v201 & 0xFFFFFFFFFFFFFFFCLL];
        v204 = v199;
        do
        {
          v204[-1] = v198;
          *v204 = v198;
          v204 += 2;
          v203 -= 4;
        }

        while (v203);
        if (v201 != (v201 & 0xFFFFFFFFFFFFFFFCLL))
        {
LABEL_92:
          do
          {
            *&v11->i64[v202++] = v197;
          }

          while (v16 != v202);
        }

        ++v196;
        --v200;
        v199 = (v199 + 8 * v221 + 8);
        v11 = (v11 + 8 * v221);
      }

      while (v196 != v16);
    }

    else
    {
      v89 = 0;
      v90 = &v10->i16[2];
      v91 = 2 * v13;
      v92 = v16;
      do
      {
        v93 = v10 + v13 * v89;
        LOWORD(a6.f64[0]) = *v93;
        a6.f64[0] = *&a6.f64[0];
        v94 = v92;
        v95 = v11;
        v96 = v90;
        do
        {
          LOWORD(a7.f64[0]) = *(v96 - 2);
          a7.f64[0] = a6.f64[0] * *&a7.f64[0] + 0.0;
          if (v17 != 1)
          {
            LOWORD(a8) = v93[1];
            a8 = *&a8;
            LOWORD(a9) = *(v96 - 1);
            a9 = *&a9;
            a7.f64[0] = a7.f64[0] + a8 * a9;
            if (v18 != 2)
            {
              LOWORD(a8) = v93[2];
              a8 = *&a8;
              LOWORD(a9) = *v96;
              a9 = *&a9;
              a7.f64[0] = a7.f64[0] + a8 * a9;
            }
          }

          a7.f64[0] = a7.f64[0] * a4;
          *v95++ = *&a7.f64[0];
          v96 = (v96 + v91);
          v94 = (v94 - 1);
        }

        while (v94);
        ++v89;
        v90 = (v90 + v91);
        v11 = (v11 + 8 * v221 + 8);
        v92 = (v92 - 1);
      }

      while (v89 != v16);
    }
  }

  return result;
}

_BYTE *sub_10024D91C(void *a1, uint64_t a2, uint64_t a3, double a4, double a5, __n128 a6, float64x2_t a7, __n128 a8)
{
  v8 = a1[2];
  v9 = *(a2 + 16);
  v10 = *(a3 + 16);
  v11 = a1[10];
  if (*(a3 + 8) <= 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(a3 + 80) >> 2;
  }

  v13 = a1[8];
  v14 = v13[1];
  v15 = *v13;
  if (v10)
  {
    v16 = *(a3 + 12) < v14;
  }

  else
  {
    v16 = 0;
  }

  v17 = !v16;
  v18 = 20 * v15;
  if (!v16)
  {
    v18 = 4 * v15;
  }

  result = v127;
  if (v18 >= 0x409)
  {
    operator new[]();
  }

  v20 = v11 >> 1;
  v21 = *(a2 + 80) >> 2;
  if ((v17 & 1) == 0)
  {
    v22 = &v127[4 * v15];
    if (v15 < 1)
    {
      goto LABEL_36;
    }

    v23 = v15 >= 8 && v12 == 1;
    if (v23 && (v22 < (v10 + 4 * v15) ? (v24 = v10 >= &v127[16 * v15 + 4 * v15]) : (v24 = 1), v24))
    {
      v25 = v15 & 0x7FFFFFF8;
      f32 = v22[4].f32;
      v27 = v10 + 1;
      v28 = v25;
      do
      {
        v29 = v27[-1];
        a8 = *v27;
        v30 = v29;
        a6 = v29;
        v31 = v29;
        v32 = *v27;
        v33 = *v27;
        v34 = *v27;
        v35 = f32 - 16;
        vst4q_f32(v35, *(&a6 - 2));
        vst4q_f32(f32, *a8.n128_u64);
        f32 += 32;
        v27 += 2;
        v28 -= 8;
      }

      while (v28);
      if (v25 == v15)
      {
LABEL_36:
        v12 = 4 * (v12 != 0);
        v10 = &v127[4 * v15];
        if (v14 < 1)
        {
          return result;
        }

        goto LABEL_37;
      }
    }

    else
    {
      v25 = 0;
    }

    v36 = &v127[16 * v25 + 4 * v15];
    v37 = v10 + v12 * v25;
    v39 = v15 - v25;
    do
    {
      v40 = vld1q_dup_f32(v37);
      v38 = 4 * v12;
      v37 = (v37 + v38);
      *v36++ = v40;
      --v39;
    }

    while (v39);
    goto LABEL_36;
  }

  if (!v10)
  {
    if (v14 < 1)
    {
      return result;
    }

    v85 = 0;
    v86 = v14 - 4;
    v87 = a4 * 0.0;
    *&v87 = a4 * 0.0;
    v88 = vdupq_lane_s32(*&v87, 0);
    v89 = 2 * v20;
    v90 = 4 * v21;
    for (i = v8; ; ++i)
    {
      if (v15 < 1)
      {
        goto LABEL_81;
      }

      v92 = v15 & 0x7FFFFFFE;
      v93 = &v128;
      v94 = i;
      if (v15 == 1)
      {
        break;
      }

      do
      {
        a6.n128_u16[0] = *v94;
        a6.n128_u64[0] = vmovl_s16(a6.n128_u64[0]).u64[0];
        a6.n128_f32[0] = a6.n128_i32[0];
        LOWORD(a7.f64[0]) = v94[v20];
        *&a7.f64[0] = vmovl_s16(*&a7.f64[0]).u64[0];
        *a7.f64 = SLODWORD(a7.f64[0]);
        *(v93 - 1) = a6.n128_u32[0];
        *v93 = LODWORD(a7.f64[0]);
        v94 += 2 * v20;
        v93 += 2;
        v92 -= 2;
      }

      while (v92);
      v95 = v15 & 0x7FFFFFFE;
      if (v95 != v15)
      {
        goto LABEL_79;
      }

LABEL_81:
      LODWORD(v99) = v85;
      v100 = i;
      v101 = v85;
      if (v85 <= v86)
      {
        do
        {
          a6 = v88;
          if (v15 >= 1)
          {
            v109 = 0uLL;
            v110 = v100;
            v111 = v15;
            v112 = v127;
            v113 = 0uLL;
            do
            {
              v114 = *v112++;
              v115 = vmovl_s16(*v110);
              v116.i64[0] = v115.i32[0];
              v116.i64[1] = v115.i32[1];
              v117 = vcvtq_f64_s64(v116);
              v116.i64[0] = v115.i32[2];
              v116.i64[1] = v115.i32[3];
              v113 = vmlaq_n_f64(v113, vcvtq_f64_s64(v116), v114);
              v109 = vmlaq_n_f64(v109, v117, v114);
              v110 = (v110 + v89);
              --v111;
            }

            while (v111);
            a8.n128_f64[0] = a4;
            a7 = vmulq_n_f64(v113, a4);
            a6 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(v109, a4)), a7);
          }

          *(v9 + 4 * v101) = a6;
          v99 = v101 + 4;
          ++v100;
          v101 = v99;
        }

        while (v86 >= v99);
      }

      if (v99 >= v14)
      {
        goto LABEL_73;
      }

      v102 = v99;
      if (v15 >= 1)
      {
        v103 = &v8[v99];
        do
        {
          v104 = 0.0;
          v105 = v103;
          v106 = v15;
          v107 = v127;
          do
          {
            v108 = *v107++;
            a8.n128_u16[0] = *v105;
            a8.n128_f64[0] = vmovl_s16(a8.n128_u64[0]).i32[0];
            v104 = v104 + v108 * a8.n128_f64[0];
            v105 = (v105 + v89);
            --v106;
          }

          while (v106);
          a7.f64[0] = a4;
          a6.n128_f64[0] = v104 * a4;
          a6.n128_f32[0] = a6.n128_f64[0];
          *(v9 + 4 * v102++) = a6.n128_u32[0];
          ++v103;
        }

        while (v14 > v102);
        goto LABEL_73;
      }

      v118 = (v14 + ~v99);
      if (v118 > 6)
      {
        v120 = v118 + 1;
        v121 = (v118 + 1) & 0x1FFFFFFF8;
        v119 = v121 + v102;
        v122 = 4 * v102;
        v123 = v121;
        do
        {
          v124 = (v9 + v122);
          *v124 = v88;
          v124[1] = v88;
          v122 += 32;
          v123 -= 8;
        }

        while (v123);
        if (v120 == v121)
        {
          goto LABEL_73;
        }
      }

      else
      {
        v119 = v99;
      }

      v125 = 4 * v119;
      do
      {
        *(v9 + v125) = LODWORD(v87);
        v125 += 4;
        LODWORD(v119) = v119 + 1;
      }

      while (v14 > v119);
LABEL_73:
      ++v85;
      v9 += v90;
      if (v85 == v14)
      {
        return result;
      }
    }

    v95 = 0;
LABEL_79:
    v96 = &v127[4 * v95];
    v97 = v89 * v95;
    v98 = v15 - v95;
    do
    {
      a6.n128_u16[0] = *(i + v97);
      a6.n128_u64[0] = vmovl_s16(a6.n128_u64[0]).u64[0];
      a6.n128_f32[0] = a6.n128_i32[0];
      *v96++ = a6.n128_u32[0];
      v97 += v89;
      --v98;
    }

    while (v98);
    goto LABEL_81;
  }

  v22 = 0;
  if (v14 >= 1)
  {
LABEL_37:
    v41 = 0;
    v42 = v14 - 4;
    v43 = a4 * 0.0;
    *&v43 = a4 * 0.0;
    v44 = 4 * v12;
    v45 = vdupq_lane_s32(*&v43, 0);
    v46 = 2 * v20;
    v47 = 4 * v21;
    v48 = v10;
    v49 = v8;
    do
    {
      if (v22)
      {
        v50 = v15;
        v51 = v49;
        v52 = v22;
        v53 = v127;
        if (v15 >= 1)
        {
          do
          {
            a6.n128_u16[0] = *v51;
            a6.n128_u64[0] = vmovl_s16(a6.n128_u64[0]).u64[0];
            a6.n128_f32[0] = a6.n128_i32[0] - *v52;
            *v53++ = a6.n128_u32[0];
            v52 = (v52 + v44);
            v51 = (v51 + v46);
            --v50;
          }

          while (v50);
        }
      }

      else if (v15 >= 1)
      {
        v54 = v15;
        v55 = v49;
        v56 = v48;
        v57 = v127;
        do
        {
          a6.n128_u16[0] = *v55;
          a6.n128_u64[0] = vmovl_s16(a6.n128_u64[0]).u64[0];
          a6.n128_f32[0] = a6.n128_i32[0] - *v56;
          *v57++ = a6.n128_u32[0];
          v56 = (v56 + v44);
          v55 = (v55 + v46);
          --v54;
        }

        while (v54);
      }

      LODWORD(v58) = v41;
      v59 = v49;
      v60 = v41;
      if (v41 <= v42)
      {
        do
        {
          a6 = v45;
          if (v15 >= 1)
          {
            v69 = (v10 + 4 * v60);
            if (v22)
            {
              v69 = v22;
            }

            v70 = 0uLL;
            v71 = v59;
            v72 = v15;
            v73 = v127;
            v74 = 0uLL;
            do
            {
              v75 = *v73++;
              v76 = vsubq_f32(vcvtq_f32_s32(vmovl_s16(*v71)), *v69);
              v74 = vmlaq_n_f64(v74, vcvt_hight_f64_f32(v76), v75);
              v70 = vmlaq_n_f64(v70, vcvtq_f64_f32(*v76.f32), v75);
              v69 = (v69 + v44);
              v71 = (v71 + v46);
              --v72;
            }

            while (v72);
            a8.n128_f64[0] = a4;
            a6 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(v70, a4)), vmulq_n_f64(v74, a4));
          }

          *(v9 + 4 * v60) = a6;
          v58 = v60 + 4;
          ++v59;
          v60 = v58;
        }

        while (v42 >= v58);
      }

      if (v58 >= v14)
      {
        goto LABEL_38;
      }

      v61 = v58;
      if (v15 >= 1)
      {
        v62 = &v8[v58];
        do
        {
          v63 = v10 + v61;
          if (v22)
          {
            v63 = v22;
          }

          v64 = 0.0;
          v65 = v62;
          v66 = v15;
          v67 = v127;
          do
          {
            v68 = *v67++;
            a8.n128_u16[0] = *v65;
            a8.n128_f64[0] = (vmovl_s16(a8.n128_u64[0]).i32[0] - *v63);
            v64 = v64 + v68 * a8.n128_f64[0];
            v63 = (v63 + v44);
            v65 = (v65 + v46);
            --v66;
          }

          while (v66);
          a6.n128_f64[0] = v64 * a4;
          a6.n128_f32[0] = a6.n128_f64[0];
          *(v9 + 4 * v61++) = a6.n128_u32[0];
          ++v62;
        }

        while (v14 > v61);
        goto LABEL_38;
      }

      v77 = (v14 + ~v58);
      if (v77 > 6)
      {
        v79 = v77 + 1;
        v80 = (v77 + 1) & 0x1FFFFFFF8;
        v78 = v80 + v61;
        v81 = 4 * v61;
        v82 = v80;
        do
        {
          v83 = (v9 + v81);
          *v83 = v45;
          v83[1] = v45;
          v81 += 32;
          v82 -= 8;
        }

        while (v82);
        if (v79 == v80)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v78 = v58;
      }

      v84 = 4 * v78;
      do
      {
        *(v9 + v84) = LODWORD(v43);
        v84 += 4;
        LODWORD(v78) = v78 + 1;
      }

      while (v14 > v78);
LABEL_38:
      ++v41;
      v9 += v47;
      ++v49;
      ++v48;
    }

    while (v41 != v14);
  }

  return result;
}

void sub_10024DFEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12 != v12)
  {
    if (a12)
    {
      operator delete[]();
    }
  }

  _Unwind_Resume(exception_object);
}

const __int16 *sub_10024E01C(const __int16 *result, uint64_t a2, uint64_t a3, double a4, __n128 a5, float32x4_t a6, __n128 a7, float32x4_t a8, __n128 a9)
{
  v9 = *(result + 2);
  v10 = *(a2 + 16);
  v11 = *(a3 + 16);
  v12 = *(result + 10) >> 1;
  v251 = *(a2 + 80) >> 2;
  if (*(a3 + 8) <= 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *(a3 + 80) >> 2;
  }

  v14 = *(result + 8);
  v15 = *v14;
  v16 = v14[1];
  v17 = v14[1];
  if (v11)
  {
    v18 = *(a3 + 12);
    result = v255;
    if ((4 * v16) >= 0x409)
    {
      operator new[]();
    }

    if (v15 >= 1)
    {
      v19 = 0;
      v250 = 4 * v13;
      v249 = v16 & 0x7FFFFFF0;
      v20 = (v9 + 8);
      v21 = 2 * v12;
      v254 = v11 + 2;
      v248 = v16 & 0x7FFFFFFC;
      v22 = 32 * ((v16 >> 4) & 0x7FFFFFF);
      v23 = (v9 + 2);
      v24 = *(a3 + 16);
      do
      {
        if (v18 >= v17)
        {
          if (v17 >= 1)
          {
            v26 = 0;
            if (v17 >= 4 && (v255 - v11 + -4 * v13 * v19) >= 0x40)
            {
              if (v17 >= 0x10)
              {
                v38 = v254;
                v39 = v257;
                v40 = v20;
                v41 = v16 & 0x7FFFFFF0;
                do
                {
                  v42 = *v40[-2].i8;
                  v43 = vcvtq_f32_s32(vmovl_high_s16(v42));
                  v44 = v38[-2];
                  a9 = v38[-1];
                  v46 = *v38;
                  v45 = v38[1];
                  v38 += 4;
                  a5 = vsubq_f32(vcvtq_f32_s32(vmovl_s16(*v42.i8)), v44);
                  a7 = vsubq_f32(v43, a9);
                  a6 = vsubq_f32(vcvtq_f32_s32(vmovl_s16(*v40)), v46);
                  a8 = vsubq_f32(vcvtq_f32_s32(vmovl_high_s16(*v40->i8)), v45);
                  v39[-2] = a5;
                  v39[-1] = a7;
                  *v39 = a6;
                  v39[1] = a8;
                  v39 += 4;
                  v40 += 4;
                  v41 -= 16;
                }

                while (v41);
                if (v249 == v16)
                {
                  goto LABEL_38;
                }

                v26 = v16 & 0x7FFFFFF0;
                v27 = v26;
                if ((v16 & 0xC) != 0)
                {
                  goto LABEL_34;
                }
              }

              else
              {
                v27 = 0;
LABEL_34:
                v47 = &v9[v27];
                v48 = (v24 + 4 * v27);
                v49 = &v255[v27];
                v50 = v27 - (v16 & 0x7FFFFFFC);
                do
                {
                  v51 = *v47++;
                  v52 = vcvtq_f32_s32(vmovl_s16(v51));
                  v53 = *v48++;
                  a6.i64[0] = v53.i64[0];
                  a5 = vsubq_f32(v52, v53);
                  *v49++ = a5;
                  v50 += 4;
                }

                while (v50);
                v26 = v16 & 0x7FFFFFFC;
                if (v248 == v16)
                {
                  goto LABEL_38;
                }
              }
            }

            do
            {
              a5.n128_u16[0] = v9[v26];
              a5.n128_u64[0] = vmovl_s16(a5.n128_u64[0]).u64[0];
              a6.i32[0] = *(v24 + 4 * v26);
              a5.n128_f32[0] = a5.n128_i32[0] - a6.f32[0];
              v255[v26++] = a5.n128_u32[0];
            }

            while (v16 != v26);
          }
        }

        else if (v16 >= 1)
        {
          a5.n128_u32[0] = v11->u32[v13 * v19];
          if (v16 < 4)
          {
            v25 = 0;
            do
            {
LABEL_28:
              a6.i16[0] = v9[v25];
              a6.i64[0] = vmovl_s16(*a6.f32).u64[0];
              a6.f32[0] = a6.i32[0] - a5.n128_f32[0];
              v255[v25++] = a6.i32[0];
            }

            while (v16 != v25);
            goto LABEL_38;
          }

          if (v16 >= 0x10)
          {
            v29 = 0;
            a6 = vdupq_lane_s32(a5.n128_u64[0], 0);
            v30 = v257;
            do
            {
              v31 = *&v9[v29 / 2];
              v32 = *v20[v29 / 8].i8;
              v33 = vcvtq_f32_s32(vmovl_high_s16(v31));
              v34 = vcvtq_f32_s32(vmovl_high_s16(v32));
              a7 = vsubq_f32(vcvtq_f32_s32(vmovl_s16(*v31.i8)), a6);
              a9 = vsubq_f32(v33, a6);
              a8 = vsubq_f32(vcvtq_f32_s32(vmovl_s16(*v32.i8)), a6);
              v30[-2] = a7;
              v30[-1] = a9;
              *v30 = a8;
              v30[1] = vsubq_f32(v34, a6);
              v30 += 4;
              v29 += 32;
            }

            while (v22 != v29);
            if (v249 == v16)
            {
              goto LABEL_38;
            }

            v25 = v16 & 0x7FFFFFF0;
            v28 = v25;
            if ((v16 & 0xC) == 0)
            {
              goto LABEL_28;
            }
          }

          else
          {
            v28 = 0;
          }

          a6 = vdupq_lane_s32(a5.n128_u64[0], 0);
          v35 = v28;
          v36 = v28 - (v16 & 0x7FFFFFFC);
          v37 = &v255[v28];
          do
          {
            a7 = vsubq_f32(vcvtq_f32_s32(vmovl_s16(*&v9[v35])), a6);
            *v37++ = a7;
            v35 += 4;
            v36 += 4;
          }

          while (v36);
          v25 = v16 & 0x7FFFFFFC;
          if (v248 == v16)
          {
            goto LABEL_38;
          }

          goto LABEL_28;
        }

LABEL_38:
        v54 = v9;
        v55 = v20;
        v252 = v23;
        v253 = v19;
        v56 = v19;
        do
        {
          v57 = &v11->f32[v13 * v56];
          if (v18 < v16)
          {
            v58 = vld1q_dup_f32(v57);
            v258 = v58;
            v57 = &v258;
          }

          if (v17 >= 4)
          {
            v61 = 0;
            v62 = (v57 + 2);
            v60 = 0.0;
            v63 = v23;
            v64 = &v256;
            do
            {
              a8.i16[0] = *(v63 - 2);
              a9.n128_f32[0] = *(v62 - 2);
              v65 = vmovl_s16(*a8.f32).i32[0] - a9.n128_f32[0];
              a9.n128_u16[0] = *(v63 - 1);
              a9.n128_f64[0] = (vmovl_s16(a9.n128_u64[0]).i32[0] - *(v62 - 1));
              *&v66 = *(v64 - 1) * a9.n128_f64[0];
              v67 = *&v66 + *(v64 - 2) * v65;
              v66.i16[0] = *v63;
              v68 = *v64;
              v69 = v64[1];
              v64 += 4;
              *a8.i64 = v68;
              *&v70 = (vmovl_s16(v66).i32[0] - *v62);
              v71 = v67 + *a8.i64 * *&v70;
              v70.i16[0] = v63[1];
              a7.n128_f64[0] = (vmovl_s16(v70).i32[0] - v62[1]);
              *a6.i64 = v71 + v69 * a7.n128_f64[0];
              v61 += 4;
              v60 = v60 + *a6.i64;
              v62 += 4 * (v18 == v16);
              v63 += 4;
            }

            while (v61 <= v16 - 4);
            v57 = (v57 + 16 * (v18 == v16) * (((v16 - 4) >> 2) + 1));
            v59 = ((v16 - 4) & 0xFFFFFFFC) + 4;
            if (v59 >= v17)
            {
              goto LABEL_39;
            }
          }

          else
          {
            v59 = 0;
            v60 = 0.0;
            if (v17 <= 0)
            {
              goto LABEL_39;
            }
          }

          v72 = v59;
          v73 = (v16 + ~v59);
          if (v73 < 3)
          {
            v74 = v72;
            v75 = v57;
            goto LABEL_61;
          }

          v76 = v73 + 1;
          if (v73 >= 0xF)
          {
            v77 = v76 & 0x1FFFFFFF0;
            v78 = (v55 + 2 * v72);
            v79 = (v57 + 8);
            v80 = &v257[v72];
            v81 = v76 & 0x1FFFFFFF0;
            do
            {
              v83 = v80[-2];
              v82 = v80[-1];
              v85 = *v80;
              v84 = v80[1];
              v80 += 4;
              v86 = vcvtq_f64_f32(*v83.f32);
              v87 = vcvtq_f64_f32(*v82.f32);
              v88 = vcvtq_f64_f32(*v85.f32);
              v89 = vcvtq_f64_f32(*v84.f32);
              v90 = v78[-1];
              v91 = vcvtq_f32_s32(vmovl_s16(*v90.i8));
              v92 = v79[-2];
              v93 = v79[-1];
              v94 = *v79;
              v95 = v79[1];
              v79 += 4;
              v96 = vsubq_f32(vcvtq_f32_s32(vmovl_high_s16(v90)), v93);
              v97 = vsubq_f32(v91, v92);
              v98 = vsubq_f32(vcvtq_f32_s32(vmovl_high_s16(*v78)), v95);
              v99 = vsubq_f32(vcvtq_f32_s32(vmovl_s16(*v78->i8)), v94);
              a6 = vmulq_f64(vcvt_hight_f64_f32(v82), vcvt_hight_f64_f32(v96));
              v100 = vmulq_f64(v87, vcvtq_f64_f32(*v96.f32));
              a7 = vmulq_f64(vcvt_hight_f64_f32(v83), vcvt_hight_f64_f32(v97));
              v101 = vmulq_f64(v86, vcvtq_f64_f32(*v97.f32));
              a8 = vmulq_f64(vcvt_hight_f64_f32(v84), vcvt_hight_f64_f32(v98));
              v102 = vmulq_f64(v89, vcvtq_f64_f32(*v98.f32));
              a9 = vmulq_f64(vcvt_hight_f64_f32(v85), vcvt_hight_f64_f32(v99));
              v103 = vmulq_f64(v88, vcvtq_f64_f32(*v99.f32));
              v60 = v60 + v101.f64[0] + v101.f64[1] + a7.n128_f64[0] + a7.n128_f64[1] + v100.f64[0] + v100.f64[1] + *a6.i64 + *&a6.i64[1] + v103.f64[0] + v103.f64[1] + a9.n128_f64[0] + a9.n128_f64[1] + v102.f64[0] + v102.f64[1] + *a8.i64 + *&a8.i64[1];
              v78 += 2;
              v81 -= 16;
            }

            while (v81);
            if (v76 == v77)
            {
              goto LABEL_39;
            }

            if ((v76 & 0xC) == 0)
            {
              v75 = &v57[v77];
              v74 = v77 + v72;
              do
              {
LABEL_61:
                *a6.i64 = *&v255[v74];
                a7.n128_u16[0] = v54[v74];
                v114 = *v75++;
                a8.i16[1] = HIWORD(v114);
                a7.n128_f64[0] = (vmovl_s16(a7.n128_u64[0]).i32[0] - v114);
                v60 = v60 + *a6.i64 * a7.n128_f64[0];
                ++v74;
              }

              while (v17 > v74);
              goto LABEL_39;
            }
          }

          else
          {
            v77 = 0;
          }

          v75 = &v57[v76 & 0x1FFFFFFFCLL];
          v74 = (v76 & 0x1FFFFFFFCLL) + v72;
          v104 = &v57[v77];
          v105 = v77 - (v76 & 0x1FFFFFFFCLL);
          v106 = v77 + v72;
          v107 = &v255[v106];
          v108 = &v54[v106];
          do
          {
            v109 = *v107++;
            v110 = vcvtq_f64_f32(*v109.f32);
            v111 = vcvt_hight_f64_f32(v109);
            v109.i64[0] = *v108++;
            v112 = vcvtq_f32_s32(vmovl_s16(*v109.f32));
            v113 = *v104++;
            a8 = vsubq_f32(v112, v113);
            a9 = vcvtq_f64_f32(*a8.f32);
            a6 = vmulq_f64(v111, vcvt_hight_f64_f32(a8));
            a8.i64[0] = a6.i64[1];
            a7 = vmulq_f64(v110, a9);
            a9.n128_u32[1] = a7.n128_u32[3];
            v60 = v60 + a7.n128_f64[0] + a7.n128_f64[1] + *a6.i64 + *&a6.i64[1];
            v105 += 4;
          }

          while (v105);
          if (v76 != (v76 & 0x1FFFFFFFCLL))
          {
            goto LABEL_61;
          }

LABEL_39:
          a5.n128_f64[0] = v60 * a4;
          a5.n128_f32[0] = a5.n128_f64[0];
          v10->i32[v56++] = a5.n128_u32[0];
          v23 = (v23 + v21);
          v55 = (v55 + v21);
          v54 = (v54 + v21);
        }

        while (v56 != v15);
        v19 = v253 + 1;
        v10 = (v10 + 4 * v251);
        v20 = (v20 + v21);
        v22 = 32 * ((v16 >> 4) & 0x7FFFFFF);
        v254 = (v254 + v250);
        v9 = (v9 + v21);
        v24 += v250;
        v23 = &v252[v21 / 2];
      }

      while (v253 + 1 != v15);
    }
  }

  else if (v15 >= 1)
  {
    if (v17 >= 4)
    {
      v123 = (v16 - 4);
      v124 = (v123 & 0xFFFFFFFC) + 4;
      if (v123 >= 0x1C)
      {
        v147 = 0;
        v148 = (v123 >> 2) + 1;
        v149 = 2 * v12;
        do
        {
          v150 = v9;
          result = v147;
          do
          {
            v152 = 0.0;
            v153 = v148 & 0x3FFFFFF8;
            v154 = v150;
            v155 = v9;
            do
            {
              v259 = vld4q_s16(v155);
              v155 += 32;
              v156 = vmovl_s16(*v259.val[0].i8);
              v260 = vld4q_s16(v154);
              v154 += 32;
              v157.i64[0] = v156.i32[0];
              v157.i64[1] = v156.i32[1];
              v158 = vcvtq_f64_s64(v157);
              v157.i64[0] = v156.i32[2];
              v157.i64[1] = v156.i32[3];
              v159 = v157;
              v160 = vmovl_high_s16(v259.val[0]);
              v157.i64[0] = v160.i32[0];
              v157.i64[1] = v160.i32[1];
              v161 = vcvtq_f64_s64(v159);
              v162 = vcvtq_f64_s64(v157);
              v157.i64[0] = v160.i32[2];
              v157.i64[1] = v160.i32[3];
              v163 = vcvtq_f64_s64(v157);
              v164 = vmovl_s16(*v260.val[0].i8);
              v157.i64[0] = v164.i32[0];
              v157.i64[1] = v164.i32[1];
              v165 = vcvtq_f64_s64(v157);
              v157.i64[0] = v164.i32[2];
              v157.i64[1] = v164.i32[3];
              v166 = vcvtq_f64_s64(v157);
              v167 = vmovl_high_s16(v260.val[0]);
              v157.i64[0] = v167.i32[0];
              v157.i64[1] = v167.i32[1];
              v168 = v157;
              v157.i64[0] = v167.i32[2];
              v157.i64[1] = v167.i32[3];
              v169 = vcvtq_f64_s64(v168);
              v170 = vcvtq_f64_s64(v157);
              v171 = vmovl_high_s16(v259.val[1]);
              v157.i64[0] = v171.i32[2];
              v157.i64[1] = v171.i32[3];
              v172 = vcvtq_f64_s64(v157);
              v157.i64[0] = v171.i32[0];
              v157.i64[1] = v171.i32[1];
              v173 = vcvtq_f64_s64(v157);
              v174 = vmovl_s16(*v259.val[1].i8);
              v157.i64[0] = v174.i32[2];
              v157.i64[1] = v174.i32[3];
              v175 = vcvtq_f64_s64(v157);
              v157.i64[0] = v174.i32[0];
              v157.i64[1] = v174.i32[1];
              v176 = vmovl_high_s16(v260.val[1]);
              v177 = vcvtq_f64_s64(v157);
              v157.i64[0] = v176.i32[2];
              v157.i64[1] = v176.i32[3];
              v178 = vcvtq_f64_s64(v157);
              v157.i64[0] = v176.i32[0];
              v157.i64[1] = v176.i32[1];
              v179 = v157;
              v180 = vmovl_s16(*v260.val[1].i8);
              v157.i64[0] = v180.i32[2];
              v157.i64[1] = v180.i32[3];
              v181 = vcvtq_f64_s64(v179);
              v182 = vcvtq_f64_s64(v157);
              v157.i64[0] = v180.i32[0];
              v157.i64[1] = v180.i32[1];
              v183 = vmulq_f64(v177, vcvtq_f64_s64(v157));
              v184 = vmulq_f64(v173, v181);
              v185 = vmulq_f64(v172, v178);
              v186 = vmovl_high_s16(v259.val[2]);
              v157.i64[0] = v186.i32[2];
              v157.i64[1] = v186.i32[3];
              v187 = vcvtq_f64_s64(v157);
              v157.i64[0] = v186.i32[0];
              v157.i64[1] = v186.i32[1];
              v188 = vmlaq_f64(v185, v170, v163);
              v189 = vcvtq_f64_s64(v157);
              v190 = vmovl_s16(*v259.val[2].i8);
              v157.i64[0] = v190.i32[2];
              v157.i64[1] = v190.i32[3];
              v191 = vcvtq_f64_s64(v157);
              v157.i64[0] = v190.i32[0];
              v157.i64[1] = v190.i32[1];
              v192 = vmlaq_f64(v184, v169, v162);
              v193 = vcvtq_f64_s64(v157);
              v194 = vmovl_high_s16(v260.val[2]);
              v157.i64[0] = v194.i32[2];
              v157.i64[1] = v194.i32[3];
              v195 = vcvtq_f64_s64(v157);
              v157.i64[0] = v194.i32[0];
              v157.i64[1] = v194.i32[1];
              v196 = vmlaq_f64(v183, v165, v158);
              v197 = vcvtq_f64_s64(v157);
              v198 = vmovl_s16(*v260.val[2].i8);
              v157.i64[0] = v198.i32[2];
              v157.i64[1] = v198.i32[3];
              v199 = vcvtq_f64_s64(v157);
              v157.i64[0] = v198.i32[0];
              v157.i64[1] = v198.i32[1];
              v200 = vmlaq_f64(vmulq_f64(v175, v182), v166, v161);
              v201 = vcvtq_f64_s64(v157);
              v202 = vmovl_s16(*v259.val[3].i8);
              v157.i64[0] = v202.i32[0];
              v157.i64[1] = v202.i32[1];
              v203 = vcvtq_f64_s64(v157);
              v157.i64[0] = v202.i32[2];
              v157.i64[1] = v202.i32[3];
              v204 = vmlaq_f64(v196, v201, v193);
              v205 = vcvtq_f64_s64(v157);
              v259.val[0] = vmovl_high_s16(v259.val[3]);
              v157.i64[0] = v259.val[0].i32[0];
              v157.i64[1] = v259.val[0].i32[1];
              v259.val[1] = vcvtq_f64_s64(v157);
              v157.i64[0] = v259.val[0].i32[2];
              v157.i64[1] = v259.val[0].i32[3];
              v259.val[0] = vcvtq_f64_s64(v157);
              v259.val[2] = vmovl_s16(*v260.val[3].i8);
              v157.i64[0] = v259.val[2].i32[0];
              v157.i64[1] = v259.val[2].i32[1];
              v206 = vcvtq_f64_s64(v157);
              v157.i64[0] = v259.val[2].i32[2];
              v157.i64[1] = v259.val[2].i32[3];
              v259.val[2] = vcvtq_f64_s64(v157);
              v260.val[0] = vmovl_high_s16(v260.val[3]);
              v157.i64[0] = v260.val[0].i32[0];
              v157.i64[1] = v260.val[0].i32[1];
              v260.val[1] = vcvtq_f64_s64(v157);
              v157.i64[0] = v260.val[0].i32[2];
              v157.i64[1] = v260.val[0].i32[3];
              v207 = vmlaq_f64(vmlaq_f64(v188, v195, v187), vcvtq_f64_s64(v157), v259.val[0]);
              v208 = v207.f64[1];
              v209 = vmlaq_f64(vmlaq_f64(v192, v197, v189), v260.val[1], v259.val[1]);
              v210 = vmlaq_f64(vmlaq_f64(v200, v199, v191), v259.val[2], v205);
              v211 = v210.f64[1];
              v212 = vmlaq_f64(v204, v206, v203);
              v213 = v209.f64[1];
              v152 = v152 + v212.f64[0] + v212.f64[1] + v210.f64[0] + v210.f64[1] + v209.f64[0] + v209.f64[1] + v207.f64[0] + v207.f64[1];
              v153 -= 8;
            }

            while (v153);
            v214 = (((v148 >> 3) & 0x7FFFFFF) << 6) | 4;
            v215 = 4 * (v148 & 0x3FFFFFF8);
            if (v148 != (v148 & 0x3FFFFFF8))
            {
              do
              {
                LOWORD(v208) = *(v9 + v214 - 4);
                LOWORD(v211) = *(v150 + v214 - 4);
                LOWORD(v213) = *(v9 + v214 - 2);
                LOWORD(v206.f64[0]) = *(v150 + v214 - 2);
                *&v216 = vmovl_s16(*&v206.f64[0]).i32[0];
                *&v217 = vmovl_s16(*&v211).i32[0];
                *&v218 = vmovl_s16(*&v213).i32[0] * *&v216;
                v216.i16[0] = *(v9 + v214);
                v206.f64[0] = vmovl_s16(v216).i32[0];
                v219 = *&v218 + vmovl_s16(*&v208).i32[0] * *&v217;
                v217.i16[0] = *(v150 + v214);
                v218.i16[0] = *(v9 + v214 + 2);
                v220 = v219 + v206.f64[0] * vmovl_s16(v217).i32[0];
                v217.i32[0] = vmovl_s16(v218).u32[0];
                v218.i16[0] = *(v150 + v214 + 2);
                v211 = v217.i32[0];
                v213 = vmovl_s16(v218).i32[0];
                v208 = v220 + v211 * v213;
                v152 = v152 + v208;
                v215 += 4;
                v214 += 8;
              }

              while (v215 <= v123);
            }

            v221 = (v123 & 0xFFFFFFFC) + 4;
            v222 = v124;
            if (v124 < v17)
            {
              do
              {
                LOWORD(v208) = v9[v222];
                v208 = vmovl_s16(*&v208).i32[0];
                LOWORD(v211) = v150[v222];
                v211 = vmovl_s16(*&v211).i32[0];
                v152 = v152 + v208 * v211;
                ++v222;
                ++v221;
              }

              while (v17 > v221);
            }

            *&v151 = v152 * a4;
            v10->i32[result] = v151;
            result = (result + 1);
            v150 = (v150 + v149);
          }

          while (result != v15);
          ++v147;
          v10 = (v10 + 4 * v251);
          v9 = (v9 + v149);
        }

        while (v147 != v15);
      }

      else if (v124 >= v16)
      {
        v232 = 0;
        v233 = (v9 + 2);
        v234 = 2 * v12;
        do
        {
          v235 = v233;
          v236 = v232;
          do
          {
            v237 = 0;
            v238 = 0.0;
            v239 = v233;
            v240 = v235;
            do
            {
              a6.i16[0] = *(v239 - 2);
              a7.n128_u16[0] = *(v240 - 2);
              a8.i16[0] = *(v239 - 1);
              a9.n128_u16[0] = *(v240 - 1);
              *&v241 = vmovl_s16(a9.n128_u64[0]).i32[0];
              *&v242 = vmovl_s16(*a8.f32).i32[0] * *&v241;
              *&v243 = vmovl_s16(a7.n128_u64[0]).i32[0];
              v244 = *&v242 + vmovl_s16(*a6.f32).i32[0] * *&v243;
              v243.i16[0] = *v239;
              v242.i16[0] = *v240;
              *&v245 = vmovl_s16(v242).i32[0];
              v241.i16[0] = v239[1];
              a9.n128_u64[0] = vmovl_s16(v241).u64[0];
              v246 = v244 + vmovl_s16(v243).i32[0] * *&v245;
              a7.n128_f64[0] = a9.n128_i32[0];
              v245.i16[0] = v240[1];
              *a8.i64 = vmovl_s16(v245).i32[0];
              *a6.i64 = v246 + a7.n128_f64[0] * *a8.i64;
              v238 = v238 + *a6.i64;
              v237 += 4;
              v240 += 4;
              v239 += 4;
            }

            while (v237 <= v123);
            *&v247 = v238 * a4;
            v10->i32[v236++] = v247;
            v235 = (v235 + v234);
          }

          while (v236 != v15);
          ++v232;
          v10 = (v10 + 4 * v251);
          v233 = (v233 + v234);
        }

        while (v232 != v15);
      }

      else
      {
        v125 = 0;
        v126 = (v9 + 2);
        v127 = 2 * v12;
        v128 = &v9[v124];
        do
        {
          v129 = v128;
          v130 = v126;
          v131 = v125;
          do
          {
            v132 = 0;
            v133 = 0.0;
            v134 = v126;
            v135 = v130;
            do
            {
              a6.i16[0] = *(v134 - 2);
              a7.n128_u16[0] = *(v135 - 2);
              a8.i16[0] = *(v134 - 1);
              a9.n128_u16[0] = *(v135 - 1);
              *&v136 = vmovl_s16(a9.n128_u64[0]).i32[0];
              *&v137 = vmovl_s16(*a8.f32).i32[0] * *&v136;
              *&v138 = vmovl_s16(a7.n128_u64[0]).i32[0];
              v139 = *&v137 + vmovl_s16(*a6.f32).i32[0] * *&v138;
              v138.i16[0] = *v134;
              v137.i16[0] = *v135;
              *&v140 = vmovl_s16(v137).i32[0];
              v136.i16[0] = v134[1];
              a9.n128_u64[0] = vmovl_s16(v136).u64[0];
              v141 = v139 + vmovl_s16(v138).i32[0] * *&v140;
              a7.n128_f64[0] = a9.n128_i32[0];
              v140.i16[0] = v135[1];
              *a8.i64 = vmovl_s16(v140).i32[0];
              *a6.i64 = v141 + a7.n128_f64[0] * *a8.i64;
              v133 = v133 + *a6.i64;
              v132 += 4;
              v135 += 4;
              v134 += 4;
            }

            while (v132 <= v123);
            v142 = v128;
            result = v129;
            v143 = (v123 & 0xFFFFFFFC) + 4;
            do
            {
              v144 = *v142++;
              *a6.i64 = v144;
              v145 = *result++;
              a7.n128_f64[0] = v145;
              v133 = v133 + *a6.i64 * v145;
              ++v143;
            }

            while (v17 > v143);
            *&v146 = v133 * a4;
            v10->i32[v131++] = v146;
            v130 = (v130 + v127);
            v129 = (v129 + v127);
          }

          while (v131 != v15);
          ++v125;
          v10 = (v10 + 4 * v251);
          v126 = (v126 + v127);
          v128 = (v128 + v127);
        }

        while (v125 != v15);
      }
    }

    else if (v16 <= 0)
    {
      v223 = 0;
      v224 = a4 * 0.0;
      *&v224 = v224;
      v225 = vdupq_lane_s32(*&v224, 0);
      v226 = v10 + 1;
      v227 = v15;
      do
      {
        v228 = v15 - v223;
        v229 = v223;
        if ((v15 - v223) < 8)
        {
          goto LABEL_112;
        }

        v230 = v227 & 0xFFFFFFFFFFFFFFF8;
        v229 = &v223[v228 & 0xFFFFFFFFFFFFFFF8];
        v231 = v226;
        do
        {
          v231[-1] = v225;
          *v231 = v225;
          v231 += 2;
          v230 -= 8;
        }

        while (v230);
        if (v228 != (v228 & 0xFFFFFFFFFFFFFFF8))
        {
LABEL_112:
          do
          {
            v10->i32[v229++] = LODWORD(v224);
          }

          while (v15 != v229);
        }

        ++v223;
        --v227;
        v226 = (v226 + 4 * v251 + 4);
        v10 = (v10 + 4 * v251);
      }

      while (v223 != v15);
    }

    else
    {
      v115 = 0;
      v116 = (v9 + 2);
      v117 = 2 * v12;
      v118 = v15;
      do
      {
        v119 = &v9[v12 * v115];
        a6.i16[0] = *v119;
        *a6.i64 = vmovl_s16(*a6.f32).i32[0];
        v120 = v118;
        v121 = v10;
        v122 = v116;
        do
        {
          a7.n128_u16[0] = *(v122 - 2);
          a7.n128_f64[0] = *a6.i64 * vmovl_s16(a7.n128_u64[0]).i32[0] + 0.0;
          if (v16 != 1)
          {
            a8.i16[0] = v119[1];
            *a8.i64 = vmovl_s16(*a8.f32).i32[0];
            a9.n128_u16[0] = *(v122 - 1);
            a9.n128_f64[0] = vmovl_s16(a9.n128_u64[0]).i32[0];
            a7.n128_f64[0] = a7.n128_f64[0] + *a8.i64 * a9.n128_f64[0];
            if (v17 != 2)
            {
              a8.i16[0] = v119[2];
              *a8.i64 = vmovl_s16(*a8.f32).i32[0];
              a9.n128_u16[0] = *v122;
              a9.n128_f64[0] = vmovl_s16(a9.n128_u64[0]).i32[0];
              a7.n128_f64[0] = a7.n128_f64[0] + *a8.i64 * a9.n128_f64[0];
            }
          }

          a7.n128_f64[0] = a7.n128_f64[0] * a4;
          a7.n128_f32[0] = a7.n128_f64[0];
          v121->i32[0] = a7.n128_u32[0];
          v121 = (v121 + 4);
          v122 = (v122 + v117);
          v120 = (v120 - 1);
        }

        while (v120);
        ++v115;
        v116 = (v116 + v117);
        v10 = (v10 + 4 * v251 + 4);
        v118 = (v118 - 1);
      }

      while (v115 != v15);
    }
  }

  return result;
}

_BYTE *sub_10024EED0(void *a1, uint64_t a2, uint64_t a3, __n128 a4, float64x2_t a5, __n128 a6, double a7, __n128 a8)
{
  v143 = a4.n128_u64[0];
  v8 = a1[2];
  v9 = *(a2 + 16);
  v10 = *(a3 + 16);
  v11 = a1[10];
  if (*(a3 + 8) <= 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(a3 + 80) >> 3;
  }

  v13 = a1[8];
  v15 = *v13;
  v14 = v13[1];
  if (v10)
  {
    v16 = *(a3 + 12) < v14;
  }

  else
  {
    v16 = 0;
  }

  v17 = !v16;
  v18 = 40 * v15;
  if (!v16)
  {
    v18 = 8 * v15;
  }

  result = v144;
  if (v18 >= 0x409)
  {
    operator new[]();
  }

  v20 = v11 >> 1;
  v21 = *(a2 + 80) >> 3;
  if ((v17 & 1) == 0)
  {
    v22 = &v144[8 * v15];
    if (v15 < 1)
    {
      goto LABEL_54;
    }

    v23 = 0;
    if (v15 >= 6 && v12 == 1)
    {
      if (v22 >= &v10->n128_u64[v15] || v10 >= &v144[32 * v15 + 8 * v15])
      {
        v23 = v15 & 0x7FFFFFFC;
        v25 = &v145[8 * v15 + 56];
        v26 = v10 + 1;
        v27 = v23;
        do
        {
          v28 = v26[-1];
          a8 = *v26;
          v29 = v28;
          a6 = v28;
          v30 = v28;
          v31 = *v26;
          v32 = *v26;
          v33 = *v26;
          v34 = v25 - 8;
          vst4q_f64(v34, *(&a6 - 2));
          vst4q_f64(v25, *a8.n128_u64);
          v25 += 16;
          v26 += 2;
          v27 -= 4;
        }

        while (v27);
        if (v23 == v15)
        {
LABEL_54:
          v12 = 4 * (v12 != 0);
          v10 = &v144[8 * v15];
          if (v14 < 1)
          {
            return result;
          }

          goto LABEL_55;
        }
      }

      else
      {
        v23 = 0;
      }
    }

    v64 = &v144[32 * v23 + 8 * v15];
    v65 = &v10->n128_f64[v12 * v23];
    v67 = v15 - v23;
    do
    {
      v68 = vld1q_dup_f64(v65);
      v66 = 8 * v12;
      v65 = (v65 + v66);
      *v64 = v68;
      v64[1] = v68;
      v64 += 2;
      --v67;
    }

    while (v67);
    goto LABEL_54;
  }

  if (!v10)
  {
    if (v14 < 1)
    {
      return result;
    }

    v35 = v14 - 4;
    if (v15 > 0)
    {
      v36 = 0;
      v37 = 2 * v20;
      for (i = v8; ; ++i)
      {
        v39 = v15 & 0x7FFFFFFE;
        v40 = v145;
        v41 = i;
        if (v15 == 1)
        {
          break;
        }

        do
        {
          a4.n128_u16[0] = *v41;
          a4.n128_f64[0] = vmovl_s16(a4.n128_u64[0]).i32[0];
          LOWORD(a5.f64[0]) = v41[v20];
          a5.f64[0] = vmovl_s16(*&a5.f64[0]).i32[0];
          *(v40 - 1) = a4.n128_f64[0];
          *v40 = a5.f64[0];
          v41 += 2 * v20;
          v40 += 2;
          v39 -= 2;
        }

        while (v39);
        v42 = v15 & 0x7FFFFFFE;
        if (v42 != v15)
        {
          goto LABEL_38;
        }

LABEL_40:
        v46 = i;
        v47 = v36;
        if (v36 <= v35)
        {
          do
          {
            v48 = 0uLL;
            v49 = v46;
            v50 = v15;
            v51 = v144;
            v52 = 0uLL;
            do
            {
              v53 = vmovl_s16(*v49);
              v54.i64[0] = v53.i32[0];
              v54.i64[1] = v53.i32[1];
              v55 = vcvtq_f64_s64(v54);
              v56 = vld1q_dup_f64(v51++);
              v54.i64[0] = v53.i32[2];
              v54.i64[1] = v53.i32[3];
              v52 = vmlaq_f64(v52, vcvtq_f64_s64(v54), v56);
              v48 = vmlaq_f64(v48, v55, v56);
              v49 = (v49 + v37);
              --v50;
            }

            while (v50);
            a6.n128_u64[0] = v143;
            a5 = vmulq_n_f64(v52, *&v143);
            a4 = vmulq_n_f64(v48, *&v143);
            v57 = (v9 + 8 * v47);
            *v57 = a4;
            v57[1] = a5;
            v47 += 4;
            ++v46;
          }

          while (v35 >= v47);
          v47 = v47;
          if (v47 >= v14)
          {
            goto LABEL_33;
          }

LABEL_47:
          v58 = &v8[v47];
          do
          {
            v59 = 0.0;
            v60 = v58;
            v61 = v15;
            v62 = v144;
            do
            {
              v63 = *v62++;
              a6.n128_u16[0] = *v60;
              a6.n128_f64[0] = vmovl_s16(a6.n128_u64[0]).i32[0];
              v59 = v59 + v63 * a6.n128_f64[0];
              v60 = (v60 + v37);
              --v61;
            }

            while (v61);
            *&a5.f64[0] = v143;
            a4.n128_f64[0] = v59 * *&v143;
            v9->i64[v47++] = a4.n128_u64[0];
            ++v58;
          }

          while (v14 > v47);
          goto LABEL_33;
        }

        v47 = v36;
        if (v36 < v14)
        {
          goto LABEL_47;
        }

LABEL_33:
        ++v36;
        v9 = (v9 + 8 * v21);
        if (v36 == v14)
        {
          return result;
        }
      }

      v42 = 0;
LABEL_38:
      v43 = v37 * v42;
      v44 = &v144[8 * v42];
      v45 = v15 - v42;
      do
      {
        a4.n128_u16[0] = *(i + v43);
        a4.n128_f64[0] = vmovl_s16(a4.n128_u64[0]).i32[0];
        *v44++ = a4.n128_f64[0];
        v43 += v37;
        --v45;
      }

      while (v45);
      goto LABEL_40;
    }

    v116 = 0;
    v117 = a4.n128_f64[0] * 0.0;
    v118 = vdupq_lane_s64(COERCE__INT64(*&v143 * 0.0), 0);
    v119 = v14 - 3;
    v120 = v9 + 4;
    v121 = 8 * v21;
    v122 = 4;
    for (j = -1; ; --j)
    {
      if (v122 <= v119)
      {
        v124 = v14 - 3;
      }

      else
      {
        v124 = v122;
      }

      v125 = v116 + 4;
      if (v116 + 4 <= v119)
      {
        v125 = v14 - 3;
      }

      if (v116 <= v35)
      {
        v127 = v125 + ~v116;
        v128 = v116;
        if (v127 <= 0xB)
        {
          goto LABEL_102;
        }

        v129 = (((v124 + j) >> 2) + 1) & 0x7FFFFFFC;
        v130 = (v127 >> 2) + 1;
        v128 = v116 + 4 * (v130 & 0x7FFFFFFC);
        v126 = v116;
        v131 = v120;
        do
        {
          v131[-4] = v118;
          v131[-3] = v118;
          v131[-2] = v118;
          v131[-1] = v118;
          *v131 = v118;
          v131[1] = v118;
          v131[2] = v118;
          v131[3] = v118;
          v131 += 8;
          v126 += 16;
          v129 -= 4;
        }

        while (v129);
        if ((v130 & 0x7FFFFFFC) != v130)
        {
LABEL_102:
          v132 = 8 * v128;
          v126 = v128;
          do
          {
            v133 = (v9 + v132);
            *v133 = v118;
            v133[1] = v118;
            v132 += 32;
            v126 += 4;
          }

          while (v35 >= v126);
        }
      }

      else
      {
        v126 = v116;
      }

      if (v126 >= v14)
      {
        goto LABEL_90;
      }

      v134 = v126;
      v135 = (v14 + ~v126);
      if (v135 > 2)
      {
        v137 = v135 + 1;
        v138 = (v135 + 1) & 0x1FFFFFFFCLL;
        v136 = v138 + v134;
        v139 = 8 * v134;
        v140 = v138;
        do
        {
          v141 = (v9 + v139);
          *v141 = v118;
          v141[1] = v118;
          v139 += 32;
          v140 -= 4;
        }

        while (v140);
        if (v137 == v138)
        {
          goto LABEL_90;
        }
      }

      else
      {
        v136 = v134;
      }

      v142 = v136;
      do
      {
        *&v9->i64[v142++] = v117;
        LODWORD(v136) = v136 + 1;
      }

      while (v14 > v136);
LABEL_90:
      ++v116;
      v120 = (v120 + v121 + 8);
      ++v122;
      v9 = (v9 + v121);
      if (v116 == v14)
      {
        return result;
      }
    }
  }

  v22 = 0;
  if (v14 >= 1)
  {
LABEL_55:
    v69 = 0;
    v70 = v14 - 4;
    v71 = 8 * v12;
    v72 = vdupq_lane_s64(COERCE__INT64(*&v143 * 0.0), 0);
    v73 = 2 * v20;
    v74 = 8 * v21;
    v75 = v10;
    v76 = v8;
    do
    {
      if (v22)
      {
        v77 = v15;
        v78 = v76;
        v79 = v22;
        v80 = v144;
        if (v15 >= 1)
        {
          do
          {
            a6.n128_u16[0] = *v78;
            a6.n128_f64[0] = vmovl_s16(a6.n128_u64[0]).i32[0] - *v79;
            *v80++ = a6.n128_u64[0];
            v79 = (v79 + v71);
            v78 = (v78 + v73);
            --v77;
          }

          while (v77);
        }
      }

      else if (v15 >= 1)
      {
        v81 = v15;
        v82 = v76;
        v83 = v75;
        v84 = v144;
        do
        {
          a6.n128_u16[0] = *v82;
          a6.n128_f64[0] = vmovl_s16(a6.n128_u64[0]).i32[0] - *v83;
          *v84++ = a6.n128_u64[0];
          v83 = (v83 + v71);
          v82 = (v82 + v73);
          --v81;
        }

        while (v81);
      }

      LODWORD(v85) = v69;
      v86 = v76;
      v87 = v69;
      if (v69 <= v70)
      {
        do
        {
          a6 = v72;
          v97 = v72;
          if (v15 >= 1)
          {
            v98 = &v10->n128_u64[v87];
            if (v22)
            {
              v98 = v22;
            }

            v99 = 0uLL;
            v100 = v86;
            v101 = v15;
            v102 = v144;
            v103 = 0uLL;
            do
            {
              v104 = vmovl_s16(*v100);
              v105.i64[0] = v104.i32[2];
              v105.i64[1] = v104.i32[3];
              v106 = vcvtq_f64_s64(v105);
              v105.i64[0] = v104.i32[0];
              v105.i64[1] = v104.i32[1];
              v107 = vld1q_dup_f64(v102++);
              v103 = vmlaq_f64(v103, vsubq_f64(v106, v98[1]), v107);
              v99 = vmlaq_f64(v99, vsubq_f64(vcvtq_f64_s64(v105), *v98), v107);
              v98 = (v98 + v71);
              v100 = (v100 + v73);
              --v101;
            }

            while (v101);
            a8.n128_u64[0] = v143;
            a6 = vmulq_n_f64(v99, *&v143);
            v97 = vmulq_n_f64(v103, *&v143);
          }

          v96 = &v9->i64[v87];
          *v96 = a6;
          *(v96 + 1) = v97;
          v85 = v87 + 4;
          ++v86;
          v87 = v85;
        }

        while (v70 >= v85);
      }

      if (v85 >= v14)
      {
        goto LABEL_56;
      }

      v88 = v85;
      if (v15 >= 1)
      {
        v89 = &v8[v85];
        do
        {
          v90 = &v10->n128_f64[v88];
          if (v22)
          {
            v90 = v22;
          }

          v91 = 0.0;
          v92 = v89;
          v93 = v15;
          v94 = v144;
          do
          {
            v95 = *v94++;
            a8.n128_u16[0] = *v92;
            a8.n128_f64[0] = vmovl_s16(a8.n128_u64[0]).i32[0] - *v90;
            v91 = v91 + v95 * a8.n128_f64[0];
            v90 = (v90 + v71);
            v92 = (v92 + v73);
            --v93;
          }

          while (v93);
          a6.n128_f64[0] = v91 * *&v143;
          v9->i64[v88++] = a6.n128_u64[0];
          ++v89;
        }

        while (v14 > v88);
        goto LABEL_56;
      }

      v108 = (v14 + ~v85);
      if (v108 > 2)
      {
        v110 = v108 + 1;
        v111 = (v108 + 1) & 0x1FFFFFFFCLL;
        v109 = v111 + v88;
        v112 = 8 * v88;
        v113 = v111;
        do
        {
          v114 = (v9 + v112);
          *v114 = v72;
          v114[1] = v72;
          v112 += 32;
          v113 -= 4;
        }

        while (v113);
        if (v110 == v111)
        {
          goto LABEL_56;
        }
      }

      else
      {
        v109 = v85;
      }

      v115 = v109;
      do
      {
        *&v9->i64[v115++] = *&v143 * 0.0;
        LODWORD(v109) = v109 + 1;
      }

      while (v14 > v109);
LABEL_56:
      ++v69;
      v9 = (v9 + v74);
      ++v76;
      ++v75;
    }

    while (v69 != v14);
  }

  return result;
}

void sub_10024F674(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12 != v12)
  {
    if (a12)
    {
      operator delete[]();
    }
  }

  _Unwind_Resume(exception_object);
}

char *sub_10024F6A4(char *result, uint64_t a2, uint64_t a3, double a4, float64x2_t a5, float64x2_t a6, float64x2_t a7, double a8, int16x4_t a9)
{
  v9 = *(result + 2);
  v10 = *(a2 + 16);
  v11 = *(a3 + 16);
  v12 = *(result + 10) >> 1;
  v222 = *(a2 + 80) >> 3;
  if (*(a3 + 8) <= 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *(a3 + 80) >> 3;
  }

  v14 = *(result + 8);
  v15 = *v14;
  v16 = v14[1];
  v17 = v14[1];
  if (v11)
  {
    v18 = *(a3 + 12);
    result = v223;
    if ((8 * v16) >= 0x409)
    {
      operator new[]();
    }

    if (v15 >= 1)
    {
      v19 = 0;
      v20 = 32 * (v18 == v16);
      v21 = 2 * v12;
      v22 = 16 * ((v16 >> 3) & 0xFFFFFFF);
      v23 = &v9->i16[2];
      v24 = *(a3 + 16);
      v221 = v16 & 0x7FFFFFF8;
      do
      {
        if (v18 >= v17)
        {
          if (v17 >= 1)
          {
            v27 = 0;
            if (v17 < 8)
            {
              goto LABEL_91;
            }

            v28 = v16 & 0x7FFFFFF8;
            v29 = v223;
            v30 = v24;
            v31 = v9;
            if (v223 + -8 * v13 * v19 - v11 < 0x40)
            {
              goto LABEL_91;
            }

            do
            {
              v32 = *v31++;
              v33 = vmovl_high_s16(v32);
              v34.i64[0] = v33.i32[2];
              v34.i64[1] = v33.i32[3];
              v35 = vcvtq_f64_s64(v34);
              v34.i64[0] = v33.i32[0];
              v34.i64[1] = v33.i32[1];
              v36 = vcvtq_f64_s64(v34);
              v37 = vmovl_s16(*v32.i8);
              v34.i64[0] = v37.i32[2];
              v34.i64[1] = v37.i32[3];
              v38 = vcvtq_f64_s64(v34);
              v34.i64[0] = v37.i32[0];
              v34.i64[1] = v37.i32[1];
              v40 = v30[2];
              v39 = v30[3];
              v42 = *v30;
              v41 = v30[1];
              v30 += 4;
              a5 = vsubq_f64(vcvtq_f64_s64(v34), v42);
              a7 = vsubq_f64(v35, v39);
              v29[2] = vsubq_f64(v36, v40);
              v29[3] = a7;
              a6 = vsubq_f64(v38, v41);
              *v29 = a5;
              v29[1] = a6;
              v29 += 4;
              v28 -= 8;
            }

            while (v28);
            v27 = v16 & 0x7FFFFFF8;
            if (v221 != v16)
            {
LABEL_91:
              do
              {
                LOWORD(a5.f64[0]) = v9->i16[v27];
                a6.f64[0] = v24->f64[v27];
                a5.f64[0] = vmovl_s16(*&a5.f64[0]).i32[0] - a6.f64[0];
                v223[v27++] = *&a5.f64[0];
              }

              while (v16 != v27);
            }
          }

          goto LABEL_25;
        }

        if (v16 >= 1)
        {
          v25 = *(v11 + 8 * v13 * v19);
          if (v16 >= 8)
          {
            v43 = 0;
            a6 = vdupq_lane_s64(v25, 0);
            v44 = v223;
            do
            {
              v45 = v9[v43 / 0x10];
              v46 = vmovl_high_s16(v45);
              v47.i64[0] = v46.i32[2];
              v47.i64[1] = v46.i32[3];
              v48 = vcvtq_f64_s64(v47);
              v47.i64[0] = v46.i32[0];
              v47.i64[1] = v46.i32[1];
              v49 = vcvtq_f64_s64(v47);
              v50 = vmovl_s16(*v45.i8);
              v47.i64[0] = v50.i32[2];
              v47.i64[1] = v50.i32[3];
              v51 = vcvtq_f64_s64(v47);
              v47.i64[0] = v50.i32[0];
              v47.i64[1] = v50.i32[1];
              a7 = vsubq_f64(vcvtq_f64_s64(v47), a6);
              v44[2] = vsubq_f64(v49, a6);
              v44[3] = vsubq_f64(v48, a6);
              *v44 = a7;
              v44[1] = vsubq_f64(v51, a6);
              v44 += 4;
              v43 += 16;
            }

            while (v22 != v43);
            v26 = v16 & 0x7FFFFFF8;
            if (v221 == v16)
            {
              goto LABEL_25;
            }
          }

          else
          {
            v26 = 0;
          }

          do
          {
            LOWORD(a6.f64[0]) = v9->i16[v26];
            a6.f64[0] = vmovl_s16(*&a6.f64[0]).i32[0] - *&v25;
            v223[v26++] = *&a6.f64[0];
          }

          while (v16 != v26);
        }

LABEL_25:
        v52 = v9;
        v53 = v23;
        v54 = v19;
        do
        {
          v55 = (v11 + 8 * v13 * v54);
          if (v18 < v16)
          {
            v226 = v55->f64[0];
            v227 = v226;
            *v225 = v226;
            *&v225[1] = v226;
            v55 = v225;
          }

          if (v17 >= 4)
          {
            v58 = 0;
            f64 = v55[1].f64;
            v57 = 0.0;
            v60 = v53;
            v61 = &v224;
            do
            {
              LOWORD(a6.f64[0]) = *(v60 - 2);
              LOWORD(a7.f64[0]) = *(v60 - 1);
              *&v62 = *(v61 - 1) * (vmovl_s16(*&a7.f64[0]).i32[0] - *(f64 - 1));
              v63 = *&v62 + *(v61 - 2) * (vmovl_s16(*&a6.f64[0]).i32[0] - *(f64 - 2));
              v62.i16[0] = *v60;
              *&v64 = vmovl_s16(v62).i32[0] - *f64;
              v65 = *v61;
              v66 = v61[1];
              v61 += 4;
              v67 = v63 + v65 * *&v64;
              v64.i16[0] = v60[1];
              a7.f64[0] = vmovl_s16(v64).i32[0] - f64[1];
              a6.f64[0] = v67 + v66 * a7.f64[0];
              v58 += 4;
              v57 = v57 + a6.f64[0];
              f64 = (f64 + v20);
              v60 += 4;
            }

            while (v58 <= v16 - 4);
            v55 = (v55 + v20 * (((v16 - 4) >> 2) + 1));
            v56 = ((v16 - 4) & 0xFFFFFFFC) + 4;
            if (v56 >= v17)
            {
              goto LABEL_26;
            }
          }

          else
          {
            v56 = 0;
            v57 = 0.0;
            if (v17 <= 0)
            {
              goto LABEL_26;
            }
          }

          v68 = v56;
          v69 = (v16 + ~v56);
          if (v69 <= 6)
          {
            v70 = v68;
            v71 = v55;
            do
            {
LABEL_40:
              *&a6.f64[0] = v223[v70];
              LOWORD(a7.f64[0]) = v52->i16[v70];
              v90 = *v71++;
              a7.f64[0] = vmovl_s16(*&a7.f64[0]).i32[0] - v90;
              v57 = v57 + a6.f64[0] * a7.f64[0];
              ++v70;
            }

            while (v17 > v70);
            goto LABEL_26;
          }

          v72 = v69 + 1;
          v73 = (v69 + 1) & 0x1FFFFFFF8;
          v71 = &v55->f64[v73];
          v70 = v73 + v68;
          v74 = &v223[v68];
          v75 = (v52 + 2 * v68);
          v76 = v73;
          do
          {
            v77 = *v75++;
            v78 = vmovl_high_s16(v77);
            v79.i64[0] = v78.i32[2];
            v79.i64[1] = v78.i32[3];
            v80 = vcvtq_f64_s64(v79);
            v79.i64[0] = v78.i32[0];
            v79.i64[1] = v78.i32[1];
            v81 = vcvtq_f64_s64(v79);
            v82 = vmovl_s16(*v77.i8);
            v79.i64[0] = v82.i32[2];
            v79.i64[1] = v82.i32[3];
            v83 = vcvtq_f64_s64(v79);
            v79.i64[0] = v82.i32[0];
            v79.i64[1] = v82.i32[1];
            v85 = v55[2];
            v84 = v55[3];
            v87 = *v55;
            v86 = v55[1];
            v55 += 4;
            v88 = vmulq_f64(v74[3], vsubq_f64(v80, v84));
            v89 = vmulq_f64(v74[2], vsubq_f64(v81, v85));
            a7 = vmulq_f64(v74[1], vsubq_f64(v83, v86));
            a6 = vmulq_f64(*v74, vsubq_f64(vcvtq_f64_s64(v79), v87));
            v57 = v57 + a6.f64[0] + a6.f64[1] + a7.f64[0] + a7.f64[1] + v89.f64[0] + v89.f64[1] + v88.f64[0] + v88.f64[1];
            v74 += 4;
            v76 -= 8;
          }

          while (v76);
          if (v72 != v73)
          {
            goto LABEL_40;
          }

LABEL_26:
          a5.f64[0] = v57 * a4;
          v10->i64[v54++] = *&a5.f64[0];
          v53 = (v53 + v21);
          v52 = (v52 + v21);
        }

        while (v54 != v15);
        v10 = (v10 + 8 * v222);
        ++v19;
        v9 = (v9 + v21);
        v24 = (v24 + 8 * v13);
        v23 = (v23 + v21);
        v22 = 16 * ((v16 >> 3) & 0xFFFFFFF);
      }

      while (v19 != v15);
    }
  }

  else if (v15 >= 1)
  {
    if (v17 >= 4)
    {
      v99 = (v16 - 4);
      v100 = (v99 & 0xFFFFFFFC) + 4;
      if (v99 >= 0x1C)
      {
        v122 = 0;
        v123 = (v99 >> 2) + 1;
        v124 = 2 * v12;
        do
        {
          v125 = v9;
          result = v122;
          do
          {
            v126 = 0.0;
            v127 = v123 & 0x3FFFFFF8;
            v128 = v125;
            v129 = v9;
            do
            {
              v228 = vld4q_s16(v129);
              v129 += 32;
              v130 = vmovl_s16(*v228.val[0].i8);
              v229 = vld4q_s16(v128);
              v128 += 32;
              v131.i64[0] = v130.i32[0];
              v131.i64[1] = v130.i32[1];
              v132 = vcvtq_f64_s64(v131);
              v131.i64[0] = v130.i32[2];
              v131.i64[1] = v130.i32[3];
              v133 = v131;
              v134 = vmovl_high_s16(v228.val[0]);
              v131.i64[0] = v134.i32[0];
              v131.i64[1] = v134.i32[1];
              v135 = vcvtq_f64_s64(v133);
              v136 = vcvtq_f64_s64(v131);
              v131.i64[0] = v134.i32[2];
              v131.i64[1] = v134.i32[3];
              v137 = vcvtq_f64_s64(v131);
              v138 = vmovl_s16(*v229.val[0].i8);
              v131.i64[0] = v138.i32[0];
              v131.i64[1] = v138.i32[1];
              v139 = vcvtq_f64_s64(v131);
              v131.i64[0] = v138.i32[2];
              v131.i64[1] = v138.i32[3];
              v140 = vcvtq_f64_s64(v131);
              v141 = vmovl_high_s16(v229.val[0]);
              v131.i64[0] = v141.i32[0];
              v131.i64[1] = v141.i32[1];
              v142 = v131;
              v131.i64[0] = v141.i32[2];
              v131.i64[1] = v141.i32[3];
              v143 = vcvtq_f64_s64(v142);
              v144 = vcvtq_f64_s64(v131);
              v145 = vmovl_high_s16(v228.val[1]);
              v131.i64[0] = v145.i32[2];
              v131.i64[1] = v145.i32[3];
              v146 = vcvtq_f64_s64(v131);
              v131.i64[0] = v145.i32[0];
              v131.i64[1] = v145.i32[1];
              v147 = vcvtq_f64_s64(v131);
              v148 = vmovl_s16(*v228.val[1].i8);
              v131.i64[0] = v148.i32[2];
              v131.i64[1] = v148.i32[3];
              v149 = vcvtq_f64_s64(v131);
              v131.i64[0] = v148.i32[0];
              v131.i64[1] = v148.i32[1];
              v150 = vmovl_high_s16(v229.val[1]);
              v151 = vcvtq_f64_s64(v131);
              v131.i64[0] = v150.i32[2];
              v131.i64[1] = v150.i32[3];
              v152 = vcvtq_f64_s64(v131);
              v131.i64[0] = v150.i32[0];
              v131.i64[1] = v150.i32[1];
              v153 = v131;
              v154 = vmovl_s16(*v229.val[1].i8);
              v131.i64[0] = v154.i32[2];
              v131.i64[1] = v154.i32[3];
              v155 = vcvtq_f64_s64(v153);
              v156 = vcvtq_f64_s64(v131);
              v131.i64[0] = v154.i32[0];
              v131.i64[1] = v154.i32[1];
              v157 = vmulq_f64(v151, vcvtq_f64_s64(v131));
              v158 = vmulq_f64(v147, v155);
              v159 = vmulq_f64(v146, v152);
              v160 = vmovl_high_s16(v228.val[2]);
              v131.i64[0] = v160.i32[2];
              v131.i64[1] = v160.i32[3];
              v161 = vcvtq_f64_s64(v131);
              v131.i64[0] = v160.i32[0];
              v131.i64[1] = v160.i32[1];
              v162 = vmlaq_f64(v159, v144, v137);
              v163 = vcvtq_f64_s64(v131);
              v164 = vmovl_s16(*v228.val[2].i8);
              v131.i64[0] = v164.i32[2];
              v131.i64[1] = v164.i32[3];
              v165 = vcvtq_f64_s64(v131);
              v131.i64[0] = v164.i32[0];
              v131.i64[1] = v164.i32[1];
              v166 = vmlaq_f64(v158, v143, v136);
              v167 = vcvtq_f64_s64(v131);
              v168 = vmovl_high_s16(v229.val[2]);
              v131.i64[0] = v168.i32[2];
              v131.i64[1] = v168.i32[3];
              v169 = vcvtq_f64_s64(v131);
              v131.i64[0] = v168.i32[0];
              v131.i64[1] = v168.i32[1];
              v170 = vmlaq_f64(v157, v139, v132);
              v171 = vcvtq_f64_s64(v131);
              v172 = vmovl_s16(*v229.val[2].i8);
              v131.i64[0] = v172.i32[2];
              v131.i64[1] = v172.i32[3];
              v173 = vcvtq_f64_s64(v131);
              v131.i64[0] = v172.i32[0];
              v131.i64[1] = v172.i32[1];
              v174 = vmlaq_f64(vmulq_f64(v149, v156), v140, v135);
              v175 = vcvtq_f64_s64(v131);
              v176 = vmovl_s16(*v228.val[3].i8);
              v131.i64[0] = v176.i32[0];
              v131.i64[1] = v176.i32[1];
              v177 = vcvtq_f64_s64(v131);
              v131.i64[0] = v176.i32[2];
              v131.i64[1] = v176.i32[3];
              v178 = vmlaq_f64(v170, v175, v167);
              v179 = vcvtq_f64_s64(v131);
              v228.val[0] = vmovl_high_s16(v228.val[3]);
              v131.i64[0] = v228.val[0].i32[0];
              v131.i64[1] = v228.val[0].i32[1];
              v228.val[1] = vcvtq_f64_s64(v131);
              v131.i64[0] = v228.val[0].i32[2];
              v131.i64[1] = v228.val[0].i32[3];
              v228.val[0] = vcvtq_f64_s64(v131);
              v228.val[2] = vmovl_s16(*v229.val[3].i8);
              v131.i64[0] = v228.val[2].i32[0];
              v131.i64[1] = v228.val[2].i32[1];
              v180 = vcvtq_f64_s64(v131);
              v131.i64[0] = v228.val[2].i32[2];
              v131.i64[1] = v228.val[2].i32[3];
              v228.val[2] = vcvtq_f64_s64(v131);
              v229.val[0] = vmovl_high_s16(v229.val[3]);
              v131.i64[0] = v229.val[0].i32[0];
              v131.i64[1] = v229.val[0].i32[1];
              v229.val[1] = vcvtq_f64_s64(v131);
              v131.i64[0] = v229.val[0].i32[2];
              v131.i64[1] = v229.val[0].i32[3];
              v181 = vmlaq_f64(vmlaq_f64(v162, v169, v161), vcvtq_f64_s64(v131), v228.val[0]);
              v182 = v181.f64[1];
              v183 = vmlaq_f64(vmlaq_f64(v166, v171, v163), v229.val[1], v228.val[1]);
              v184 = vmlaq_f64(vmlaq_f64(v174, v173, v165), v228.val[2], v179);
              v185 = v184.f64[1];
              v186 = vmlaq_f64(v178, v180, v177);
              v187 = v183.f64[1];
              v126 = v126 + v186.f64[0] + v186.f64[1] + v184.f64[0] + v184.f64[1] + v183.f64[0] + v183.f64[1] + v181.f64[0] + v181.f64[1];
              v127 -= 8;
            }

            while (v127);
            v188 = (((v123 >> 3) & 0x7FFFFFF) << 6) | 4;
            v189 = 4 * (v123 & 0x3FFFFFF8);
            if (v123 != (v123 & 0x3FFFFFF8))
            {
              do
              {
                LOWORD(v182) = *(&v9->i16[-2] + v188);
                LOWORD(v185) = *(v125 + v188 - 4);
                LOWORD(v187) = *(&v9->i16[-1] + v188);
                LOWORD(v180.f64[0]) = *(v125 + v188 - 2);
                *&v190 = vmovl_s16(*&v180.f64[0]).i32[0];
                *&v191 = vmovl_s16(*&v185).i32[0];
                *&v192 = vmovl_s16(*&v187).i32[0] * *&v190;
                v190.i16[0] = *(v9->i16 + v188);
                v180.f64[0] = vmovl_s16(v190).i32[0];
                v193 = *&v192 + vmovl_s16(*&v182).i32[0] * *&v191;
                v191.i16[0] = *(v125 + v188);
                v192.i16[0] = *(&v9->i16[1] + v188);
                v194 = v193 + v180.f64[0] * vmovl_s16(v191).i32[0];
                v191.i32[0] = vmovl_s16(v192).u32[0];
                v192.i16[0] = *(v125 + v188 + 2);
                v185 = v191.i32[0];
                v187 = vmovl_s16(v192).i32[0];
                v182 = v194 + v185 * v187;
                v126 = v126 + v182;
                v189 += 4;
                v188 += 8;
              }

              while (v189 <= v99);
            }

            v195 = (v99 & 0xFFFFFFFC) + 4;
            v196 = v100;
            if (v100 < v17)
            {
              do
              {
                LOWORD(v182) = v9->i16[v196];
                v182 = vmovl_s16(*&v182).i32[0];
                LOWORD(v185) = v125[v196];
                v185 = vmovl_s16(*&v185).i32[0];
                v126 = v126 + v182 * v185;
                ++v196;
                ++v195;
              }

              while (v17 > v195);
            }

            *&v10->i64[result++] = v126 * a4;
            v125 = (v125 + v124);
          }

          while (result != v15);
          ++v122;
          v10 = (v10 + 8 * v222);
          v9 = (v9 + v124);
        }

        while (v122 != v15);
      }

      else if (v100 >= v16)
      {
        v206 = 0;
        v207 = &v9->i16[2];
        v208 = 2 * v12;
        do
        {
          v209 = v207;
          v210 = v206;
          do
          {
            v211 = 0;
            v212 = 0.0;
            v213 = v207;
            v214 = v209;
            do
            {
              LOWORD(a6.f64[0]) = *(v213 - 2);
              LOWORD(a7.f64[0]) = *(v214 - 2);
              LOWORD(a8) = *(v213 - 1);
              a9.i16[0] = *(v214 - 1);
              *&v215 = vmovl_s16(a9).i32[0];
              *&v216 = vmovl_s16(*&a8).i32[0] * *&v215;
              *&v217 = vmovl_s16(*&a7.f64[0]).i32[0];
              v218 = *&v216 + vmovl_s16(*&a6.f64[0]).i32[0] * *&v217;
              v217.i16[0] = *v213;
              v216.i16[0] = *v214;
              *&v219 = vmovl_s16(v216).i32[0];
              v215.i16[0] = v213[1];
              a9 = vmovl_s16(v215).u64[0];
              v220 = v218 + vmovl_s16(v217).i32[0] * *&v219;
              a7.f64[0] = a9.i32[0];
              v219.i16[0] = v214[1];
              a8 = vmovl_s16(v219).i32[0];
              a6.f64[0] = v220 + a7.f64[0] * a8;
              v212 = v212 + a6.f64[0];
              v211 += 4;
              v214 += 4;
              v213 += 4;
            }

            while (v211 <= v99);
            *&v10->i64[v210++] = v212 * a4;
            v209 = (v209 + v208);
          }

          while (v210 != v15);
          ++v206;
          v10 = (v10 + 8 * v222);
          v207 = (v207 + v208);
        }

        while (v206 != v15);
      }

      else
      {
        v101 = 0;
        v102 = &v9->i16[2];
        v103 = 2 * v12;
        v104 = &v9->i8[2 * v100];
        do
        {
          v105 = v104;
          v106 = v102;
          v107 = v101;
          do
          {
            v108 = 0;
            v109 = 0.0;
            v110 = v102;
            v111 = v106;
            do
            {
              LOWORD(a6.f64[0]) = *(v110 - 2);
              LOWORD(a7.f64[0]) = *(v111 - 2);
              LOWORD(a8) = *(v110 - 1);
              a9.i16[0] = *(v111 - 1);
              *&v112 = vmovl_s16(a9).i32[0];
              *&v113 = vmovl_s16(*&a8).i32[0] * *&v112;
              *&v114 = vmovl_s16(*&a7.f64[0]).i32[0];
              v115 = *&v113 + vmovl_s16(*&a6.f64[0]).i32[0] * *&v114;
              v114.i16[0] = *v110;
              v113.i16[0] = *v111;
              *&v116 = vmovl_s16(v113).i32[0];
              v112.i16[0] = v110[1];
              a9 = vmovl_s16(v112).u64[0];
              v117 = v115 + vmovl_s16(v114).i32[0] * *&v116;
              a7.f64[0] = a9.i32[0];
              v116.i16[0] = v111[1];
              a8 = vmovl_s16(v116).i32[0];
              a6.f64[0] = v117 + a7.f64[0] * a8;
              v109 = v109 + a6.f64[0];
              v108 += 4;
              v111 += 4;
              v110 += 4;
            }

            while (v108 <= v99);
            v118 = v104;
            result = v105;
            v119 = (v99 & 0xFFFFFFFC) + 4;
            do
            {
              v120 = *v118;
              v118 += 2;
              a6.f64[0] = v120;
              v121 = *result;
              result += 2;
              a7.f64[0] = v121;
              v109 = v109 + a6.f64[0] * v121;
              ++v119;
            }

            while (v17 > v119);
            *&v10->i64[v107++] = v109 * a4;
            v106 = (v106 + v103);
            v105 += v103;
          }

          while (v107 != v15);
          ++v101;
          v10 = (v10 + 8 * v222);
          v102 = (v102 + v103);
          v104 += v103;
        }

        while (v101 != v15);
      }
    }

    else if (v16 <= 0)
    {
      v197 = 0;
      v198 = a4 * 0.0;
      v199 = vdupq_lane_s64(*&v198, 0);
      v200 = v10 + 1;
      v201 = v15;
      do
      {
        v202 = v15 - v197;
        v203 = v197;
        if ((v15 - v197) < 4)
        {
          goto LABEL_92;
        }

        v204 = v201 & 0xFFFFFFFFFFFFFFFCLL;
        v203 = &v197[v202 & 0xFFFFFFFFFFFFFFFCLL];
        v205 = v200;
        do
        {
          v205[-1] = v199;
          *v205 = v199;
          v205 += 2;
          v204 -= 4;
        }

        while (v204);
        if (v202 != (v202 & 0xFFFFFFFFFFFFFFFCLL))
        {
LABEL_92:
          do
          {
            *&v10->i64[v203++] = v198;
          }

          while (v15 != v203);
        }

        ++v197;
        --v201;
        v200 = (v200 + 8 * v222 + 8);
        v10 = (v10 + 8 * v222);
      }

      while (v197 != v15);
    }

    else
    {
      v91 = 0;
      v92 = &v9->i16[2];
      v93 = 2 * v12;
      v94 = v15;
      do
      {
        v95 = v9 + v12 * v91;
        LOWORD(a6.f64[0]) = *v95;
        a6.f64[0] = vmovl_s16(*&a6.f64[0]).i32[0];
        v96 = v94;
        v97 = v10;
        v98 = v92;
        do
        {
          LOWORD(a7.f64[0]) = *(v98 - 2);
          a7.f64[0] = a6.f64[0] * vmovl_s16(*&a7.f64[0]).i32[0] + 0.0;
          if (v16 != 1)
          {
            LOWORD(a8) = v95[1];
            a8 = vmovl_s16(*&a8).i32[0];
            a9.i16[0] = *(v98 - 1);
            *&a9 = vmovl_s16(a9).i32[0];
            a7.f64[0] = a7.f64[0] + a8 * *&a9;
            if (v17 != 2)
            {
              LOWORD(a8) = v95[2];
              a8 = vmovl_s16(*&a8).i32[0];
              a9.i16[0] = *v98;
              *&a9 = vmovl_s16(a9).i32[0];
              a7.f64[0] = a7.f64[0] + a8 * *&a9;
            }
          }

          a7.f64[0] = a7.f64[0] * a4;
          *v97++ = *&a7.f64[0];
          v98 = (v98 + v93);
          v96 = (v96 - 1);
        }

        while (v96);
        ++v91;
        v92 = (v92 + v93);
        v10 = (v10 + 8 * v222 + 8);
        v94 = (v94 - 1);
      }

      while (v91 != v15);
    }
  }

  return result;
}

_BYTE *sub_100250320(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v4 = a1[2];
  v5 = *(a2 + 16);
  v6 = *(a3 + 16);
  v7 = a1[10];
  if (*(a3 + 8) <= 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = *(a3 + 80) >> 2;
  }

  v9 = a1[8];
  v10 = v9[1];
  v11 = *v9;
  if (v6)
  {
    v12 = *(a3 + 12) < v10;
  }

  else
  {
    v12 = 0;
  }

  v13 = !v12;
  v14 = 20 * v11;
  if (!v12)
  {
    v14 = 4 * v11;
  }

  result = v114;
  if (v14 >= 0x409)
  {
    operator new[]();
  }

  v16 = v7 >> 2;
  v17 = *(a2 + 80) >> 2;
  if ((v13 & 1) == 0)
  {
    v18 = &v114[4 * v11];
    if (v11 < 1)
    {
      goto LABEL_36;
    }

    v19 = v11 >= 8 && v8 == 1;
    if (v19 && (v18 < &v6->f32[v11] ? (v20 = v6 >= &v114[16 * v11 + 4 * v11]) : (v20 = 1), v20))
    {
      v21 = v11 & 0x7FFFFFF8;
      f32 = v18[4].f32;
      v23 = v6 + 1;
      v24 = v21;
      do
      {
        v115.val[0] = v23[-1];
        v116.val[0] = *v23;
        v115.val[1] = v115.val[0];
        v115.val[2] = v115.val[0];
        v115.val[3] = v115.val[0];
        v116.val[1] = *v23;
        v116.val[2] = *v23;
        v116.val[3] = *v23;
        v25 = f32 - 16;
        vst4q_f32(v25, v115);
        vst4q_f32(f32, v116);
        f32 += 32;
        v23 += 2;
        v24 -= 8;
      }

      while (v24);
      if (v21 == v11)
      {
LABEL_36:
        v8 = 4 * (v8 != 0);
        v6 = &v114[4 * v11];
        if (v10 < 1)
        {
          return result;
        }

        goto LABEL_37;
      }
    }

    else
    {
      v21 = 0;
    }

    v26 = &v114[16 * v21 + 4 * v11];
    v27 = &v6->f32[v8 * v21];
    v29 = v11 - v21;
    do
    {
      v30 = vld1q_dup_f32(v27);
      v28 = 4 * v8;
      v27 = (v27 + v28);
      *v26++ = v30;
      --v29;
    }

    while (v29);
    goto LABEL_36;
  }

  if (!v6)
  {
    if (v10 < 1)
    {
      return result;
    }

    v77 = 0;
    v78 = v10 - 4;
    v79 = a4 * 0.0;
    *&v79 = a4 * 0.0;
    v80 = vdupq_lane_s32(*&v79, 0);
    v81 = 4 * v16;
    v82 = 4 * v17;
    for (i = v4; ; i = (i + 4))
    {
      v84 = v11;
      v85 = i;
      v86 = v114;
      if (v11 >= 1)
      {
        do
        {
          *v86++ = v85->i32[0];
          v85 = (v85 + v81);
          --v84;
        }

        while (v84);
      }

      LODWORD(v87) = v77;
      v88 = i;
      v89 = v77;
      if (v77 <= v78)
      {
        do
        {
          v98 = v80;
          if (v11 >= 1)
          {
            v99 = 0uLL;
            v100 = v88;
            v101 = v11;
            v102 = v114;
            v103 = 0uLL;
            do
            {
              v104 = *v102++;
              v103 = vmlaq_n_f64(v103, vcvt_hight_f64_f32(*v100), v104);
              v99 = vmlaq_n_f64(v99, vcvtq_f64_f32(*v100->f32), v104);
              v100 = (v100 + v81);
              --v101;
            }

            while (v101);
            v98 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(v99, a4)), vmulq_n_f64(v103, a4));
          }

          *(v5 + 4 * v89) = v98;
          v87 = v89 + 4;
          ++v88;
          v89 = v87;
        }

        while (v78 >= v87);
      }

      if (v87 >= v10)
      {
        goto LABEL_73;
      }

      v90 = v87;
      if (v11 >= 1)
      {
        v91 = &v4->f32[v87];
        do
        {
          v92 = 0.0;
          v93 = v91;
          v94 = v11;
          v95 = v114;
          do
          {
            v96 = *v95++;
            v92 = v92 + v96 * *v93;
            v93 = (v93 + v81);
            --v94;
          }

          while (v94);
          v97 = v92 * a4;
          *(v5 + 4 * v90++) = v97;
          ++v91;
        }

        while (v10 > v90);
        goto LABEL_73;
      }

      v105 = (v10 + ~v87);
      if (v105 > 6)
      {
        v107 = v105 + 1;
        v108 = (v105 + 1) & 0x1FFFFFFF8;
        v106 = v108 + v90;
        v109 = 4 * v90;
        v110 = v108;
        do
        {
          v111 = (v5 + v109);
          *v111 = v80;
          v111[1] = v80;
          v109 += 32;
          v110 -= 8;
        }

        while (v110);
        if (v107 == v108)
        {
          goto LABEL_73;
        }
      }

      else
      {
        v106 = v87;
      }

      v112 = 4 * v106;
      do
      {
        *(v5 + v112) = LODWORD(v79);
        v112 += 4;
        LODWORD(v106) = v106 + 1;
      }

      while (v10 > v106);
LABEL_73:
      ++v77;
      v5 += v82;
      if (v77 == v10)
      {
        return result;
      }
    }
  }

  v18 = 0;
  if (v10 >= 1)
  {
LABEL_37:
    v31 = 0;
    v32 = v10 - 4;
    v33 = a4 * 0.0;
    *&v33 = a4 * 0.0;
    v34 = 4 * v8;
    v35 = vdupq_lane_s32(*&v33, 0);
    v36 = 4 * v16;
    v37 = 4 * v17;
    v38 = v6;
    v39 = v4;
    do
    {
      if (v18)
      {
        v40 = v11;
        v41 = v39;
        v42 = v18;
        v43 = v114;
        if (v11 >= 1)
        {
          do
          {
            *v43++ = *v41 - *v42;
            v42 = (v42 + v34);
            v41 = (v41 + v36);
            --v40;
          }

          while (v40);
        }
      }

      else if (v11 >= 1)
      {
        v44 = v11;
        v45 = v39;
        v46 = v38;
        v47 = v114;
        do
        {
          *v47++ = *v45 - *v46;
          v46 = (v46 + v34);
          v45 = (v45 + v36);
          --v44;
        }

        while (v44);
      }

      LODWORD(v48) = v31;
      v49 = v39;
      v50 = v31;
      if (v31 <= v32)
      {
        do
        {
          v60 = v35;
          if (v11 >= 1)
          {
            v61 = (v6 + 4 * v50);
            if (v18)
            {
              v61 = v18;
            }

            v62 = 0uLL;
            v63 = v49;
            v64 = v11;
            v65 = v114;
            v66 = 0uLL;
            do
            {
              v67 = *v65++;
              v68 = vsubq_f32(*v63, *v61);
              v66 = vmlaq_n_f64(v66, vcvt_hight_f64_f32(v68), v67);
              v62 = vmlaq_n_f64(v62, vcvtq_f64_f32(*v68.f32), v67);
              v61 = (v61 + v34);
              v63 = (v63 + v36);
              --v64;
            }

            while (v64);
            v60 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(v62, a4)), vmulq_n_f64(v66, a4));
          }

          *(v5 + 4 * v50) = v60;
          v48 = v50 + 4;
          ++v49;
          v50 = v48;
        }

        while (v32 >= v48);
      }

      if (v48 >= v10)
      {
        goto LABEL_38;
      }

      v51 = v48;
      if (v11 >= 1)
      {
        v52 = &v4->f32[v48];
        do
        {
          v53 = &v6->f32[v51];
          if (v18)
          {
            v53 = v18;
          }

          v54 = 0.0;
          v55 = v52;
          v56 = v11;
          v57 = v114;
          do
          {
            v58 = *v57++;
            v54 = v54 + v58 * (*v55 - *v53);
            v53 = (v53 + v34);
            v55 = (v55 + v36);
            --v56;
          }

          while (v56);
          v59 = v54 * a4;
          *(v5 + 4 * v51++) = v59;
          ++v52;
        }

        while (v10 > v51);
        goto LABEL_38;
      }

      v69 = (v10 + ~v48);
      if (v69 > 6)
      {
        v71 = v69 + 1;
        v72 = (v69 + 1) & 0x1FFFFFFF8;
        v70 = v72 + v51;
        v73 = 4 * v51;
        v74 = v72;
        do
        {
          v75 = (v5 + v73);
          *v75 = v35;
          v75[1] = v35;
          v73 += 32;
          v74 -= 8;
        }

        while (v74);
        if (v71 == v72)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v70 = v48;
      }

      v76 = 4 * v70;
      do
      {
        *(v5 + v76) = LODWORD(v33);
        v76 += 4;
        LODWORD(v70) = v70 + 1;
      }

      while (v10 > v70);
LABEL_38:
      ++v31;
      v5 += v37;
      ++v39;
      ++v38;
    }

    while (v31 != v10);
  }

  return result;
}

void sub_100250954(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12 != v12)
  {
    if (a12)
    {
      operator delete[]();
    }
  }

  _Unwind_Resume(exception_object);
}

const float *sub_100250984(const float *result, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v5 = *(result + 2);
  v6 = *(a2 + 16);
  v7 = *(a3 + 16);
  v8 = *(result + 10) >> 2;
  v145 = *(a2 + 80) >> 2;
  if (*(a3 + 8) <= 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = *(a3 + 80) >> 2;
  }

  v10 = *(result + 8);
  v11 = *v10;
  v12 = v10[1];
  v13 = v10[1];
  if (!v7)
  {
    if (v11 < 1)
    {
      return result;
    }

    if (v12 < 4)
    {
      if (v13 <= 0)
      {
        v132 = 0;
        v133 = a4 * 0.0;
        *&v133 = v133;
        v134 = vdupq_lane_s32(*&v133, 0);
        v135 = (v6 + 4);
        v136 = v11;
        do
        {
          v137 = v11 - v132;
          v138 = v132;
          if ((v11 - v132) < 8)
          {
            goto LABEL_87;
          }

          v139 = v136 & 0xFFFFFFFFFFFFFFF8;
          v138 = v132 + (v137 & 0xFFFFFFFFFFFFFFF8);
          v140 = v135;
          do
          {
            v140[-1] = v134;
            *v140 = v134;
            v140 += 2;
            v139 -= 8;
          }

          while (v139);
          if (v137 != (v137 & 0xFFFFFFFFFFFFFFF8))
          {
LABEL_87:
            do
            {
              v6[v138++] = *&v133;
            }

            while (v11 != v138);
          }

          ++v132;
          --v136;
          v135 = (v135 + 4 * v145 + 4);
          v6 += v145;
        }

        while (v132 != v11);
      }

      else
      {
        v84 = 0;
        v85 = &v5->f32[2];
        v86 = 4 * v8;
        v87 = v11;
        do
        {
          v88 = &v5->f32[v8 * v84];
          v89 = v87;
          v90 = v6;
          v91 = v85;
          do
          {
            v93 = *v88 * *(v91 - 2) + 0.0;
            if (v12 != 1)
            {
              v93 = v93 + v88[1] * *(v91 - 1);
              if (v13 != 2)
              {
                v93 = v93 + v88[2] * *v91;
              }
            }

            v92 = v93 * a4;
            *v90++ = v92;
            v91 = (v91 + v86);
            --v89;
          }

          while (v89);
          ++v84;
          v85 = (v85 + v86);
          v6 += v145 + 1;
          --v87;
        }

        while (v84 != v11);
      }

      return result;
    }

    v94 = 0;
    v95 = (v13 - 4);
    v96 = (v95 & 0xFFFFFFFC) + 4;
    v97 = v13 - (v95 & 0xFFFFFFFC) - 5;
    v98 = (v95 >> 2) + 1;
    v99 = (v97 + 1) & 0x1FFFFFFF8;
    result = v5[2].f32;
    v100 = 4 * v8;
    v101 = &v5->i64[1];
    v102 = v5[1].i64 + 4 * v96;
LABEL_61:
    v103 = v5;
    v104 = v102;
    v149 = v101;
    v151 = v94;
    v105 = result;
    while (v95 >= 0xC)
    {
      v108 = 0.0;
      v109 = v98 & 0x3FFFFFFC;
      v110 = v105;
      v111 = result;
      do
      {
        v112 = v111 - 8;
        v156 = vld4_f32(v112);
        v157 = vld4_f32(v111);
        v113 = v110 - 8;
        v158 = vld4_f32(v113);
        v159 = vld4_f32(v110);
        v114 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(vcvtq_f64_f32(v156.val[1]), vcvtq_f64_f32(v158.val[1])), vcvtq_f64_f32(v158.val[0]), vcvtq_f64_f32(v156.val[0])), vcvtq_f64_f32(v158.val[2]), vcvtq_f64_f32(v156.val[2])), vcvtq_f64_f32(v158.val[3]), vcvtq_f64_f32(v156.val[3]));
        v115 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(vcvtq_f64_f32(v157.val[1]), vcvtq_f64_f32(v159.val[1])), vcvtq_f64_f32(v159.val[0]), vcvtq_f64_f32(v157.val[0])), vcvtq_f64_f32(v159.val[2]), vcvtq_f64_f32(v157.val[2])), vcvtq_f64_f32(v159.val[3]), vcvtq_f64_f32(v157.val[3]));
        v108 = v108 + v114.f64[0] + v114.f64[1] + v115.f64[0] + v115.f64[1];
        v111 += 16;
        v110 += 16;
        v109 -= 4;
      }

      while (v109);
      v107 = 2 * (v98 & 0x3FFFFFFC);
      if (v98 != (v98 & 0x3FFFFFFC))
      {
        goto LABEL_68;
      }

LABEL_70:
      if (v96 < v13)
      {
        v120 = (v95 & 0xFFFFFFFC) + 4;
        v121 = v102;
        v122 = v104;
        v123 = (v97 + 1) & 0x1FFFFFFF8;
        if (v97 < 7)
        {
          goto LABEL_74;
        }

        do
        {
          v124 = v121[-1];
          v125 = vcvtq_f64_f32(*v124.f32);
          v126 = v122[-1];
          v127 = vmulq_f64(vcvt_hight_f64_f32(v124), vcvt_hight_f64_f32(v126));
          v128 = vmulq_f64(v125, vcvtq_f64_f32(*v126.f32));
          v129 = vmulq_f64(vcvt_hight_f64_f32(*v121), vcvt_hight_f64_f32(*v122));
          v130 = vmulq_f64(vcvtq_f64_f32(*v121->f32), vcvtq_f64_f32(*v122->f32));
          v108 = v108 + v128.f64[0] + v128.f64[1] + v127.f64[0] + v127.f64[1] + v130.f64[0] + v130.f64[1] + v129.f64[0] + v129.f64[1];
          v122 += 2;
          v121 += 2;
          v123 -= 8;
        }

        while (v123);
        v120 = v99 + v96;
        if (v97 + 1 != v99)
        {
LABEL_74:
          v131 = v120;
          do
          {
            v108 = v108 + v5->f32[v131] * v103->f32[v131];
            ++v131;
            LODWORD(v120) = v120 + 1;
          }

          while (v12 > v120);
        }
      }

      v106 = v108 * a4;
      v6[v94++] = v106;
      v105 = (v105 + v100);
      v101 = (v101 + v100);
      v104 = (v104 + v100);
      v103 = (v103 + v100);
      if (v94 == v11)
      {
        v6 += v145;
        v94 = v151 + 1;
        result = (result + v100);
        v5 = (v5 + v100);
        v101 = (v149 + v100);
        v102 += v100;
        if (v151 + 1 == v11)
        {
          return result;
        }

        goto LABEL_61;
      }
    }

    v107 = 0;
    v108 = 0.0;
LABEL_68:
    v117 = v101;
    v118 = v5;
    v119 = v107 * 2;
    do
    {
      v116 = v107 * 2;
      v108 = v108 + v118->f32[v116 + 1] * *(v117 + v116 * 4 - 4) + v118[v107 / 2].f32[0] * *(v117 + v116 * 4 - 8) + v118->f32[v116 + 2] * *&v117[v107] + v118->f32[v116 + 3] * *(v117 + v116 * 4 + 4);
      v119 += 4;
      ++v118;
      v117 += 2;
    }

    while (v119 <= v95);
    goto LABEL_70;
  }

  v14 = *(a3 + 12);
  result = v152;
  if ((4 * v12) >= 0x409)
  {
    operator new[]();
  }

  if (v11 >= 1)
  {
    v15 = 0;
    v144 = (v152 - v5);
    v16 = 4 * v8;
    v143 = -4 * v8;
    v142 = 4 * v9;
    v141 = v13 & 0x7FFFFFF8;
    v17 = v5 + 1;
    v18 = v7 + 1;
    v19 = &v5->f32[2];
    v20 = *(a3 + 16);
    do
    {
      v21 = &v144[v143 * v15];
      if (v14 < v13)
      {
        if (v12 >= 1)
        {
          v22 = 0;
          LODWORD(a5) = v7->i32[v9 * v15];
          if (v12 < 8)
          {
            goto LABEL_88;
          }

          if (v21 < 0x20)
          {
            goto LABEL_88;
          }

          v23 = vdupq_lane_s32(*&a5, 0);
          v24 = v13 & 0x7FFFFFF8;
          v25 = v154;
          v26 = v17;
          do
          {
            v27 = vsubq_f32(*v26, v23);
            v25[-1] = vsubq_f32(v26[-1], v23);
            *v25 = v27;
            v26 += 2;
            v25 += 2;
            v24 -= 8;
          }

          while (v24);
          v22 = v13 & 0x7FFFFFF8;
          if (v141 != v12)
          {
LABEL_88:
            do
            {
              *&v152[v22] = v5->f32[v22] - *&a5;
              ++v22;
            }

            while (v12 != v22);
          }
        }

        goto LABEL_24;
      }

      if (v13 >= 1)
      {
        if (v13 > 7)
        {
          v28 = 0;
          if (v21 >= 0x20 && (v152 - v7 + -4 * v9 * v15) >= 0x20)
          {
            v79 = v18;
            v80 = v154;
            v81 = v17;
            v82 = v13 & 0x7FFFFFF8;
            do
            {
              v83 = vsubq_f32(*v81, *v79);
              v80[-1] = vsubq_f32(v81[-1], v79[-1]);
              *v80 = v83;
              v81 += 2;
              v80 += 2;
              v79 += 2;
              v82 -= 8;
            }

            while (v82);
            v28 = v13 & 0x7FFFFFF8;
            if (v141 == v12)
            {
              goto LABEL_24;
            }
          }
        }

        else
        {
          v28 = 0;
        }

        v29 = &v152[v28];
        v30 = (v20 + 4 * v28);
        v31 = &v5->f32[v28];
        v32 = v12 - v28;
        do
        {
          v33 = *v31++;
          v34 = v33;
          v35 = *v30++;
          *v29++ = v34 - v35;
          --v32;
        }

        while (v32);
      }

LABEL_24:
      v146 = v20;
      v147 = v19;
      v148 = v18;
      v150 = v17;
      v36 = v5;
      v37 = v15;
      do
      {
        v38 = &v7->f32[v9 * v37];
        if (v14 < v12)
        {
          v39 = vld1q_dup_f32(v38);
          v155 = v39;
          v38 = &v155;
        }

        if (v13 >= 4)
        {
          v42 = 0;
          v43 = (v38 + 2);
          v41 = 0.0;
          v44 = v19;
          v45 = &v153;
          do
          {
            v46 = (*(v44 - 2) - *(v43 - 2));
            v47 = *(v45 - 1) * (*(v44 - 1) - *(v43 - 1));
            v48 = *v44;
            v49 = v44[1];
            v44 += 4;
            v50 = v47 + *(v45 - 2) * v46;
            *&v47 = v48 - *v43;
            v51 = *v45;
            v52 = v45[1];
            v45 += 4;
            v42 += 4;
            v41 = v41 + v50 + v51 * *&v47 + v52 * (v49 - v43[1]);
            v43 += 4 * (v14 == v12);
          }

          while (v42 <= v13 - 4);
          v38 = (v38 + 16 * (v14 == v12) * (((v13 - 4) >> 2) + 1));
          v40 = ((v13 - 4) & 0xFFFFFFFC) + 4;
          if (v40 >= v12)
          {
            goto LABEL_25;
          }
        }

        else
        {
          v40 = 0;
          v41 = 0.0;
          if (v12 <= 0)
          {
            goto LABEL_25;
          }
        }

        v53 = v40;
        v54 = v12 + ~v40;
        if (v54 <= 6)
        {
          v55 = v53;
          v56 = v38;
LABEL_39:
          v72 = &v36->f32[v55];
          v73 = &v152[v55];
          do
          {
            v74 = *v73++;
            v75 = v74;
            v76 = *v72++;
            v77 = v76;
            v78 = *v56++;
            v41 = v41 + v75 * (v77 - v78);
            LODWORD(v55) = v55 + 1;
          }

          while (v12 > v55);
          goto LABEL_25;
        }

        v57 = v54 + 1;
        v58 = (v54 + 1) & 0x1FFFFFFF8;
        v55 = v58 + v53;
        v56 = &v38[v58];
        v59 = 4 * v53;
        v60 = (v17 + v59);
        v61 = (v38 + 4);
        v62 = &v154[v59];
        v63 = v58;
        do
        {
          v64 = v62[-1];
          v65 = vcvtq_f64_f32(*v64.f32);
          v66 = vsubq_f32(v60[-1], v61[-1]);
          v67 = vsubq_f32(*v60, *v61);
          v68 = vmulq_f64(vcvt_hight_f64_f32(v64), vcvt_hight_f64_f32(v66));
          v69 = vmulq_f64(v65, vcvtq_f64_f32(*v66.f32));
          v70 = vmulq_f64(vcvt_hight_f64_f32(*v62), vcvt_hight_f64_f32(v67));
          v71 = vmulq_f64(vcvtq_f64_f32(*v62->f32), vcvtq_f64_f32(*v67.f32));
          v41 = v41 + v69.f64[0] + v69.f64[1] + v68.f64[0] + v68.f64[1] + v71.f64[0] + v71.f64[1] + v70.f64[0] + v70.f64[1];
          v60 += 2;
          v61 += 2;
          v62 += 2;
          v63 -= 8;
        }

        while (v63);
        if (v57 != v58)
        {
          goto LABEL_39;
        }

LABEL_25:
        a5 = v41 * a4;
        *&a5 = a5;
        v6[v37++] = *&a5;
        v19 = (v19 + v16);
        v17 = (v17 + v16);
        v36 = (v36 + v16);
      }

      while (v37 != v11);
      ++v15;
      v6 += v145;
      v17 = (v150 + v16);
      v18 = (v148 + v142);
      v20 = v146 + v142;
      v5 = (v5 + v16);
      v19 = &v147[v16 / 4];
    }

    while (v15 != v11);
  }

  return result;
}

_BYTE *sub_1002512D4(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v4 = a1[2];
  v5 = *(a2 + 16);
  v6 = *(a3 + 16);
  v7 = a1[10];
  if (*(a3 + 8) <= 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = *(a3 + 80) >> 3;
  }

  v9 = a1[8];
  v11 = *v9;
  v10 = v9[1];
  if (v6)
  {
    v12 = *(a3 + 12) < v10;
  }

  else
  {
    v12 = 0;
  }

  v13 = !v12;
  v14 = 40 * v11;
  if (!v12)
  {
    v14 = 8 * v11;
  }

  result = v133;
  if (v14 >= 0x409)
  {
    operator new[]();
  }

  v16 = v7 >> 2;
  v17 = *(a2 + 80) >> 3;
  if ((v13 & 1) == 0)
  {
    v18 = &v133[8 * v11];
    if (v11 < 1)
    {
      goto LABEL_54;
    }

    v19 = 0;
    if (v11 >= 6 && v8 == 1)
    {
      if (v18 >= &v6->f64[v11] || v6 >= &v133[32 * v11 + 8 * v11])
      {
        v19 = v11 & 0x7FFFFFFC;
        v21 = &v134[8 * v11 + 56];
        v22 = v6 + 1;
        v23 = v19;
        do
        {
          v135.val[0] = v22[-1];
          v136.val[0] = *v22;
          v135.val[1] = v135.val[0];
          v135.val[2] = v135.val[0];
          v135.val[3] = v135.val[0];
          v136.val[1] = *v22;
          v136.val[2] = *v22;
          v136.val[3] = *v22;
          v24 = v21 - 8;
          vst4q_f64(v24, v135);
          vst4q_f64(v21, v136);
          v21 += 16;
          v22 += 2;
          v23 -= 4;
        }

        while (v23);
        if (v19 == v11)
        {
LABEL_54:
          v8 = 4 * (v8 != 0);
          v6 = &v133[8 * v11];
          if (v10 < 1)
          {
            return result;
          }

          goto LABEL_55;
        }
      }

      else
      {
        v19 = 0;
      }
    }

    v53 = &v133[32 * v19 + 8 * v11];
    v54 = &v6->f64[v8 * v19];
    v56 = v11 - v19;
    do
    {
      v57 = vld1q_dup_f64(v54);
      v55 = 8 * v8;
      v54 = (v54 + v55);
      *v53 = v57;
      v53[1] = v57;
      v53 += 2;
      --v56;
    }

    while (v56);
    goto LABEL_54;
  }

  if (!v6)
  {
    if (v10 < 1)
    {
      return result;
    }

    v25 = v10 - 4;
    if (v11 > 0)
    {
      v26 = 0;
      v27 = 4 * v16;
      v28 = (v4 + 2);
      for (i = v4; ; ++i)
      {
        v30 = v11 & 0x7FFFFFFE;
        v31 = v134;
        v32 = i;
        if (v11 == 1)
        {
          break;
        }

        do
        {
          v34 = v32[v16];
          *(v31 - 1) = *v32;
          *v31 = v34;
          v32 += 2 * v16;
          v31 += 2;
          v30 -= 2;
        }

        while (v30);
        v33 = v11 & 0x7FFFFFFE;
        if (v33 != v11)
        {
          goto LABEL_38;
        }

LABEL_40:
        v38 = v28;
        v39 = v26;
        if (v26 <= v25)
        {
          do
          {
            v40 = 0uLL;
            v41 = v38;
            v42 = v11;
            v43 = v133;
            v44 = 0uLL;
            do
            {
              v45 = vld1q_dup_f64(v43++);
              v40 = vmlaq_f64(v40, vcvtq_f64_f32(v41[-1]), v45);
              v44 = vmlaq_f64(v44, vcvtq_f64_f32(*v41), v45);
              v41 = (v41 + v27);
              --v42;
            }

            while (v42);
            v46 = (v5 + 8 * v39);
            *v46 = vmulq_n_f64(v40, a4);
            v46[1] = vmulq_n_f64(v44, a4);
            v39 += 4;
            v38 += 2;
          }

          while (v25 >= v39);
          v39 = v39;
          if (v39 >= v10)
          {
            goto LABEL_33;
          }

LABEL_47:
          v47 = &v4[v39];
          do
          {
            v48 = 0.0;
            v49 = v47;
            v50 = v11;
            v51 = v133;
            do
            {
              v52 = *v51++;
              v48 = v48 + v52 * *v49;
              v49 = (v49 + v27);
              --v50;
            }

            while (v50);
            *&v5->i64[v39++] = v48 * a4;
            ++v47;
          }

          while (v10 > v39);
          goto LABEL_33;
        }

        v39 = v26;
        if (v26 < v10)
        {
          goto LABEL_47;
        }

LABEL_33:
        ++v26;
        v5 = (v5 + 8 * v17);
        v28 = (v28 + 4);
        if (v26 == v10)
        {
          return result;
        }
      }

      v33 = 0;
LABEL_38:
      v35 = v27 * v33;
      v36 = &v133[8 * v33];
      v37 = v11 - v33;
      do
      {
        *v36++ = *(i + v35);
        v35 += v27;
        --v37;
      }

      while (v37);
      goto LABEL_40;
    }

    v105 = 0;
    v106 = a4 * 0.0;
    v107 = vdupq_lane_s64(COERCE__INT64(a4 * 0.0), 0);
    v108 = v10 - 3;
    v109 = v5 + 4;
    v110 = 8 * v17;
    v111 = 4;
    for (j = -1; ; --j)
    {
      if (v111 <= v108)
      {
        v113 = v10 - 3;
      }

      else
      {
        v113 = v111;
      }

      v114 = v105 + 4;
      if (v105 + 4 <= v108)
      {
        v114 = v10 - 3;
      }

      if (v105 <= v25)
      {
        v116 = v114 + ~v105;
        v117 = v105;
        if (v116 <= 0xB)
        {
          goto LABEL_102;
        }

        v118 = (((v113 + j) >> 2) + 1) & 0x7FFFFFFC;
        v119 = (v116 >> 2) + 1;
        v117 = v105 + 4 * (v119 & 0x7FFFFFFC);
        v115 = v105;
        v120 = v109;
        do
        {
          v120[-4] = v107;
          v120[-3] = v107;
          v120[-2] = v107;
          v120[-1] = v107;
          *v120 = v107;
          v120[1] = v107;
          v120[2] = v107;
          v120[3] = v107;
          v120 += 8;
          v115 += 16;
          v118 -= 4;
        }

        while (v118);
        if ((v119 & 0x7FFFFFFC) != v119)
        {
LABEL_102:
          v121 = 8 * v117;
          v115 = v117;
          do
          {
            v122 = (v5 + v121);
            *v122 = v107;
            v122[1] = v107;
            v121 += 32;
            v115 += 4;
          }

          while (v25 >= v115);
        }
      }

      else
      {
        v115 = v105;
      }

      if (v115 >= v10)
      {
        goto LABEL_90;
      }

      v123 = v115;
      v124 = (v10 + ~v115);
      if (v124 > 2)
      {
        v126 = v124 + 1;
        v127 = (v124 + 1) & 0x1FFFFFFFCLL;
        v125 = v127 + v123;
        v128 = 8 * v123;
        v129 = v127;
        do
        {
          v130 = (v5 + v128);
          *v130 = v107;
          v130[1] = v107;
          v128 += 32;
          v129 -= 4;
        }

        while (v129);
        if (v126 == v127)
        {
          goto LABEL_90;
        }
      }

      else
      {
        v125 = v123;
      }

      v131 = v125;
      do
      {
        *&v5->i64[v131++] = v106;
        LODWORD(v125) = v125 + 1;
      }

      while (v10 > v125);
LABEL_90:
      ++v105;
      v109 = (v109 + v110 + 8);
      ++v111;
      v5 = (v5 + v110);
      if (v105 == v10)
      {
        return result;
      }
    }
  }

  v18 = 0;
  if (v10 >= 1)
  {
LABEL_55:
    v58 = 0;
    v59 = v10 - 4;
    v60 = 8 * v8;
    v61 = 4 * v16;
    v62 = vdupq_lane_s64(COERCE__INT64(a4 * 0.0), 0);
    v63 = (v4 + 2);
    v64 = 8 * v17;
    v65 = v6;
    v66 = v4;
    do
    {
      if (v18)
      {
        v67 = v11;
        v68 = v66;
        v69 = v18;
        v70 = v133;
        if (v11 >= 1)
        {
          do
          {
            *v70++ = *v68 - *v69;
            v69 = (v69 + v60);
            v68 = (v68 + v61);
            --v67;
          }

          while (v67);
        }
      }

      else if (v11 >= 1)
      {
        v71 = v11;
        v72 = v66;
        v73 = v65;
        v74 = v133;
        do
        {
          *v74++ = *v72 - *v73;
          v73 = (v73 + v60);
          v72 = (v72 + v61);
          --v71;
        }

        while (v71);
      }

      LODWORD(v75) = v58;
      v76 = v63;
      v77 = v58;
      if (v58 <= v59)
      {
        do
        {
          v87 = v62;
          v88 = v62;
          if (v11 >= 1)
          {
            v89 = (v6 + 8 * v77);
            if (v18)
            {
              v89 = v18;
            }

            v90 = v89 + 1;
            v91 = 0uLL;
            v92 = v76;
            v93 = v11;
            v94 = v133;
            v95 = 0uLL;
            do
            {
              v96 = vld1q_dup_f64(v94++);
              v91 = vmlaq_f64(v91, vsubq_f64(vcvtq_f64_f32(v92[-1]), v90[-1]), v96);
              v95 = vmlaq_f64(v95, vsubq_f64(vcvtq_f64_f32(*v92), *v90), v96);
              v90 = (v90 + v60);
              v92 = (v92 + v61);
              --v93;
            }

            while (v93);
            v87 = vmulq_n_f64(v91, a4);
            v88 = vmulq_n_f64(v95, a4);
          }

          v86 = (v5 + 8 * v77);
          *v86 = v87;
          v86[1] = v88;
          v75 = v77 + 4;
          v76 += 2;
          v77 = v75;
        }

        while (v59 >= v75);
      }

      if (v75 >= v10)
      {
        goto LABEL_56;
      }

      v78 = v75;
      if (v11 >= 1)
      {
        v79 = &v4[v75];
        do
        {
          v80 = &v6->f64[v78];
          if (v18)
          {
            v80 = v18;
          }

          v81 = 0.0;
          v82 = v79;
          v83 = v11;
          v84 = v133;
          do
          {
            v85 = *v84++;
            v81 = v81 + v85 * (*v82 - *v80);
            v80 = (v80 + v60);
            v82 = (v82 + v61);
            --v83;
          }

          while (v83);
          *&v5->i64[v78++] = v81 * a4;
          ++v79;
        }

        while (v10 > v78);
        goto LABEL_56;
      }

      v97 = (v10 + ~v75);
      if (v97 > 2)
      {
        v99 = v97 + 1;
        v100 = (v97 + 1) & 0x1FFFFFFFCLL;
        v98 = v100 + v78;
        v101 = 8 * v78;
        v102 = v100;
        do
        {
          v103 = (v5 + v101);
          *v103 = v62;
          v103[1] = v62;
          v101 += 32;
          v102 -= 4;
        }

        while (v102);
        if (v99 == v100)
        {
          goto LABEL_56;
        }
      }

      else
      {
        v98 = v75;
      }

      v104 = v98;
      do
      {
        *&v5->i64[v104++] = a4 * 0.0;
        LODWORD(v98) = v98 + 1;
      }

      while (v10 > v98);
LABEL_56:
      ++v58;
      v5 = (v5 + v64);
      ++v66;
      ++v65;
      v63 = (v63 + 4);
    }

    while (v58 != v10);
  }

  return result;
}

void sub_100251A44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12 != v12)
  {
    if (a12)
    {
      operator delete[]();
    }
  }

  _Unwind_Resume(exception_object);
}

const float *sub_100251A74(const float *result, uint64_t a2, uint64_t a3, double a4)
{
  v4 = *(result + 2);
  v5 = *(a2 + 16);
  v6 = *(a3 + 16);
  v7 = *(result + 10) >> 2;
  v148 = *(a2 + 80) >> 3;
  if (*(a3 + 8) <= 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = *(a3 + 80) >> 3;
  }

  v9 = *(result + 8);
  v10 = *v9;
  v11 = v9[1];
  v12 = v9[1];
  if (!v6)
  {
    if (v10 < 1)
    {
      return result;
    }

    if (v11 < 4)
    {
      if (v12 <= 0)
      {
        v137 = 0;
        v138 = a4 * 0.0;
        v139 = vdupq_lane_s64(*&v138, 0);
        v140 = (v5 + 2);
        v141 = v10;
        do
        {
          v142 = v10 - v137;
          v143 = v137;
          if ((v10 - v137) < 4)
          {
            goto LABEL_83;
          }

          v144 = v141 & 0xFFFFFFFFFFFFFFFCLL;
          v143 = v137 + (v142 & 0xFFFFFFFFFFFFFFFCLL);
          v145 = v140;
          do
          {
            v145[-1] = v139;
            *v145 = v139;
            v145 += 2;
            v144 -= 4;
          }

          while (v144);
          if (v142 != (v142 & 0xFFFFFFFFFFFFFFFCLL))
          {
LABEL_83:
            do
            {
              v5[v143++] = v138;
            }

            while (v10 != v143);
          }

          ++v137;
          --v141;
          v140 = (v140 + 8 * v148 + 8);
          v5 += v148;
        }

        while (v137 != v10);
      }

      else
      {
        v90 = 0;
        v91 = &v4[1];
        v92 = 4 * v7;
        v93 = v10;
        do
        {
          v94 = v4 + v7 * v90;
          v95 = *v94;
          v96 = v93;
          v97 = v5;
          v98 = v91;
          do
          {
            v99 = v95 * *(v98 - 2) + 0.0;
            if (v11 != 1)
            {
              v99 = v99 + v94[1] * *(v98 - 1);
              if (v12 != 2)
              {
                v99 = v99 + v94[2] * *v98;
              }
            }

            *v97++ = v99 * a4;
            v98 = (v98 + v92);
            --v96;
          }

          while (v96);
          ++v90;
          v91 = (v91 + v92);
          v5 += v148 + 1;
          --v93;
        }

        while (v90 != v10);
      }

      return result;
    }

    v100 = 0;
    v101 = (v12 - 4);
    v102 = (v101 & 0xFFFFFFFC) + 4;
    v103 = v12 - (v101 & 0xFFFFFFFC) - 5;
    v104 = (v101 >> 2) + 1;
    v105 = (v103 + 1) & 0x1FFFFFFF8;
    result = &v4[4];
    v106 = 4 * v7;
    v107 = v4 + 1;
    v108 = &v4[2] + 4 * v102;
LABEL_57:
    v109 = v4;
    v110 = v108;
    v152 = v107;
    v154 = v100;
    v111 = result;
    while (v101 >= 0xC)
    {
      v113 = 0.0;
      v114 = v104 & 0x3FFFFFFC;
      v115 = v111;
      v116 = result;
      do
      {
        v117 = v116 - 8;
        v161 = vld4_f32(v117);
        v162 = vld4_f32(v116);
        v118 = v115 - 8;
        v163 = vld4_f32(v118);
        v164 = vld4_f32(v115);
        v119 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(vcvtq_f64_f32(v161.val[1]), vcvtq_f64_f32(v163.val[1])), vcvtq_f64_f32(v163.val[0]), vcvtq_f64_f32(v161.val[0])), vcvtq_f64_f32(v163.val[2]), vcvtq_f64_f32(v161.val[2])), vcvtq_f64_f32(v163.val[3]), vcvtq_f64_f32(v161.val[3]));
        v120 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(vcvtq_f64_f32(v162.val[1]), vcvtq_f64_f32(v164.val[1])), vcvtq_f64_f32(v164.val[0]), vcvtq_f64_f32(v162.val[0])), vcvtq_f64_f32(v164.val[2]), vcvtq_f64_f32(v162.val[2])), vcvtq_f64_f32(v164.val[3]), vcvtq_f64_f32(v162.val[3]));
        v113 = v113 + v119.f64[0] + v119.f64[1] + v120.f64[0] + v120.f64[1];
        v116 += 16;
        v115 += 16;
        v114 -= 4;
      }

      while (v114);
      v112 = 2 * (v104 & 0x3FFFFFFC);
      if (v104 != (v104 & 0x3FFFFFFC))
      {
        goto LABEL_64;
      }

LABEL_66:
      if (v102 < v12)
      {
        v125 = (v101 & 0xFFFFFFFC) + 4;
        v126 = v108;
        v127 = v110;
        v128 = (v103 + 1) & 0x1FFFFFFF8;
        if (v103 < 7)
        {
          goto LABEL_70;
        }

        do
        {
          v129 = v126[-1];
          v130 = vcvtq_f64_f32(*v129.f32);
          v131 = v127[-1];
          v132 = vmulq_f64(vcvt_hight_f64_f32(v129), vcvt_hight_f64_f32(v131));
          v133 = vmulq_f64(v130, vcvtq_f64_f32(*v131.f32));
          v134 = vmulq_f64(vcvt_hight_f64_f32(*v126), vcvt_hight_f64_f32(*v127));
          v135 = vmulq_f64(vcvtq_f64_f32(*v126->f32), vcvtq_f64_f32(*v127->f32));
          v113 = v113 + v133.f64[0] + v133.f64[1] + v132.f64[0] + v132.f64[1] + v135.f64[0] + v135.f64[1] + v134.f64[0] + v134.f64[1];
          v127 += 2;
          v126 += 2;
          v128 -= 8;
        }

        while (v128);
        v125 = v105 + v102;
        if (v103 + 1 != v105)
        {
LABEL_70:
          v136 = v125;
          do
          {
            v113 = v113 + v4->f32[v136] * v109->f32[v136];
            ++v136;
            LODWORD(v125) = v125 + 1;
          }

          while (v11 > v125);
        }
      }

      v5[v100++] = v113 * a4;
      v111 = (v111 + v106);
      v107 = (v107 + v106);
      v110 = (v110 + v106);
      v109 = (v109 + v106);
      if (v100 == v10)
      {
        v5 += v148;
        v100 = v154 + 1;
        result = (result + v106);
        v4 = (v4 + v106);
        v107 = (v152 + v106);
        v108 += v106;
        if (v154 + 1 == v10)
        {
          return result;
        }

        goto LABEL_57;
      }
    }

    v112 = 0;
    v113 = 0.0;
LABEL_64:
    v122 = v107;
    v123 = v4;
    v124 = v112 * 2;
    do
    {
      v121 = v112 * 2;
      v113 = v113 + v123->f32[v121 + 1] * v122->f32[v121 - 1] + v123[v112].f32[0] * v122[-1].f32[v121] + v123[1].f32[v121] * v122[v112].f32[0] + v123[1].f32[v121 + 1] * v122->f32[v121 + 1];
      v124 += 4;
      v123 += 2;
      v122 += 2;
    }

    while (v124 <= v101);
    goto LABEL_66;
  }

  v13 = *(a3 + 12);
  result = v155;
  if ((8 * v11) >= 0x409)
  {
    operator new[]();
  }

  if (v10 >= 1)
  {
    v153 = 0;
    v147 = 8 * v8;
    v146 = v11 & 0x7FFFFFF8;
    v14 = v4 + 2;
    v15 = 4 * v7;
    v16 = v6 + 2;
    v17 = 32 * ((v11 >> 3) & 0xFFFFFFF);
    v18 = &v4[1];
    v19 = *(a3 + 16);
    do
    {
      if (v13 >= v12)
      {
        if (v12 >= 1)
        {
          v22 = 0;
          if (v12 < 8)
          {
            goto LABEL_19;
          }

          v23 = v16;
          v24 = v157;
          v25 = v14;
          v26 = v11 & 0x7FFFFFF8;
          if ((v155 - v6 + -8 * v8 * v153) < 0x40)
          {
            goto LABEL_19;
          }

          do
          {
            v27 = *v25[-2].f32;
            v29 = v23[-2];
            v28 = v23[-1];
            v31 = *v23;
            v30 = v23[1];
            v23 += 4;
            v32 = vsubq_f64(vcvtq_f64_f32(*v25), v31);
            v33 = vsubq_f64(vcvt_hight_f64_f32(*v25->f32), v30);
            v24[-2] = vsubq_f64(vcvtq_f64_f32(*v27.f32), v29);
            v24[-1] = vsubq_f64(vcvt_hight_f64_f32(v27), v28);
            *v24 = v32;
            v24[1] = v33;
            v24 += 4;
            v25 += 4;
            v26 -= 8;
          }

          while (v26);
          v22 = v11 & 0x7FFFFFF8;
          if (v146 != v11)
          {
LABEL_19:
            v34 = &v155[v22];
            v35 = (v19 + 8 * v22);
            v36 = v4 + v22;
            v37 = v11 - v22;
            do
            {
              v38 = *v36++;
              v39 = v38;
              v40 = *v35++;
              *v34++ = v39 - v40;
              --v37;
            }

            while (v37);
          }
        }

        goto LABEL_26;
      }

      if (v11 >= 1)
      {
        v20 = *&v6->f64[v8 * v153];
        if (v11 >= 8)
        {
          v41 = 0;
          v42 = vdupq_lane_s64(v20, 0);
          v43 = v157;
          do
          {
            v44 = *v4[v41 / 8].f32;
            v45 = *v14[v41 / 8].f32;
            v43[-2] = vsubq_f64(vcvtq_f64_f32(*v44.f32), v42);
            v43[-1] = vsubq_f64(vcvt_hight_f64_f32(v44), v42);
            *v43 = vsubq_f64(vcvtq_f64_f32(*v45.f32), v42);
            v43[1] = vsubq_f64(vcvt_hight_f64_f32(v45), v42);
            v43 += 4;
            v41 += 32;
          }

          while (v17 != v41);
          v21 = v11 & 0x7FFFFFF8;
          if (v146 == v11)
          {
            goto LABEL_26;
          }
        }

        else
        {
          v21 = 0;
        }

        do
        {
          *&v155[v21] = v4->f32[v21] - *&v20;
          ++v21;
        }

        while (v11 != v21);
      }

LABEL_26:
      v149 = v19;
      v150 = v18;
      v151 = v16;
      v46 = v4;
      v47 = v14;
      v48 = v153;
      do
      {
        v49 = (v6 + 8 * v8 * v48);
        if (v13 < v11)
        {
          v159 = v49->f64[0];
          v160 = v159;
          *v158 = v159;
          *&v158[1] = v159;
          v49 = v158;
        }

        if (v12 >= 4)
        {
          v52 = 0;
          f64 = v49[1].f64;
          v51 = 0.0;
          v54 = v18;
          v55 = &v156;
          do
          {
            v56 = *(v55 - 1) * (*(v54 - 1) - *(f64 - 1)) + *(v55 - 2) * (*(v54 - 2) - *(f64 - 2));
            v57 = *v54;
            v58 = v54[1];
            v54 += 4;
            v59 = *v55;
            v60 = v55[1];
            v55 += 4;
            v52 += 4;
            v51 = v51 + v56 + v59 * (v57 - *f64) + v60 * (v58 - f64[1]);
            f64 += 4 * (v13 == v11);
          }

          while (v52 <= v11 - 4);
          v49 = (v49 + 32 * (v13 == v11) * (((v11 - 4) >> 2) + 1));
          v50 = ((v12 - 4) & 0xFFFFFFFC) + 4;
          if ((((v11 - 4) & 0xFFFFFFFC) + 4) >= v11)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v50 = 0;
          v51 = 0.0;
          if (v11 <= 0)
          {
            goto LABEL_27;
          }
        }

        v61 = v50;
        v62 = v11 + ~v50;
        if (v62 <= 6)
        {
          v63 = v61;
          v64 = v49;
LABEL_41:
          v84 = v46 + v63;
          v85 = &v155[v63];
          do
          {
            v86 = *v85++;
            v87 = v86;
            LODWORD(v86) = *v84++;
            v88 = *&v86;
            v89 = *v64++;
            v51 = v51 + v87 * (v88 - v89);
            LODWORD(v63) = v63 + 1;
          }

          while (v11 > v63);
          goto LABEL_27;
        }

        v65 = v62 + 1;
        v66 = (v62 + 1) & 0x1FFFFFFF8;
        v64 = &v49->f64[v66];
        v63 = v66 + v61;
        v67 = (v47 + 4 * v61);
        v68 = v49 + 2;
        v69 = &v157[v61];
        v70 = v66;
        do
        {
          v71 = v69[-2];
          v72 = v69[-1];
          v73 = *v69;
          v74 = v69[1];
          v69 += 4;
          v75 = v67[-1];
          v77 = v68[-2];
          v76 = v68[-1];
          v79 = *v68;
          v78 = v68[1];
          v68 += 4;
          v80 = vmulq_f64(v72, vsubq_f64(vcvt_hight_f64_f32(v75), v76));
          v81 = vmulq_f64(v71, vsubq_f64(vcvtq_f64_f32(*v75.f32), v77));
          v82 = vmulq_f64(v74, vsubq_f64(vcvt_hight_f64_f32(*v67), v78));
          v83 = vmulq_f64(v73, vsubq_f64(vcvtq_f64_f32(*v67->f32), v79));
          v51 = v51 + v81.f64[0] + v81.f64[1] + v80.f64[0] + v80.f64[1] + v83.f64[0] + v83.f64[1] + v82.f64[0] + v82.f64[1];
          v67 += 2;
          v70 -= 8;
        }

        while (v70);
        if (v65 != v66)
        {
          goto LABEL_41;
        }

LABEL_27:
        v5[v48++] = v51 * a4;
        v18 = (v18 + v15);
        v47 = (v47 + v15);
        v46 = (v46 + v15);
      }

      while (v48 != v10);
      v5 += v148;
      v14 = (v14 + v15);
      v17 = 32 * ((v11 >> 3) & 0xFFFFFFF);
      v16 = (v151 + v147);
      v19 = v149 + v147;
      v4 = (v4 + v15);
      v18 = &v150[v15 / 4];
      ++v153;
    }

    while (v153 != v10);
  }

  return result;
}

_BYTE *sub_1002523BC(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v4 = a1[2];
  v5 = *(a2 + 16);
  v6 = *(a3 + 16);
  v7 = a1[10];
  if (*(a3 + 8) <= 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = *(a3 + 80) >> 3;
  }

  v9 = a1[8];
  v11 = *v9;
  v10 = v9[1];
  if (v6)
  {
    v12 = *(a3 + 12) < v10;
  }

  else
  {
    v12 = 0;
  }

  v13 = !v12;
  v14 = 40 * v11;
  if (!v12)
  {
    v14 = 8 * v11;
  }

  result = v128;
  if (v14 >= 0x409)
  {
    operator new[]();
  }

  v16 = v7 >> 3;
  v17 = *(a2 + 80) >> 3;
  if ((v13 & 1) == 0)
  {
    v18 = &v128[8 * v11];
    if (v11 < 1)
    {
      goto LABEL_50;
    }

    v19 = 0;
    if (v11 >= 6 && v8 == 1)
    {
      if (v18 >= &v6->f64[v11] || v6 >= &v128[32 * v11 + 8 * v11])
      {
        v19 = v11 & 0x7FFFFFFC;
        v21 = &v128[8 * v11 + 64];
        v22 = v6 + 1;
        v23 = v19;
        do
        {
          v129.val[0] = v22[-1];
          v130.val[0] = *v22;
          v129.val[1] = v129.val[0];
          v129.val[2] = v129.val[0];
          v129.val[3] = v129.val[0];
          v130.val[1] = *v22;
          v130.val[2] = *v22;
          v130.val[3] = *v22;
          v24 = v21 - 8;
          vst4q_f64(v24, v129);
          vst4q_f64(v21, v130);
          v21 += 16;
          v22 += 2;
          v23 -= 4;
        }

        while (v23);
        if (v19 == v11)
        {
LABEL_50:
          v8 = 4 * (v8 != 0);
          v6 = &v128[8 * v11];
          if (v10 < 1)
          {
            return result;
          }

          goto LABEL_51;
        }
      }

      else
      {
        v19 = 0;
      }
    }

    v48 = &v128[32 * v19 + 8 * v11];
    v49 = &v6->f64[v8 * v19];
    v51 = v11 - v19;
    do
    {
      v52 = vld1q_dup_f64(v49);
      v50 = 8 * v8;
      v49 = (v49 + v50);
      *v48 = v52;
      v48[1] = v52;
      v48 += 2;
      --v51;
    }

    while (v51);
    goto LABEL_50;
  }

  if (!v6)
  {
    if (v10 < 1)
    {
      return result;
    }

    v25 = v10 - 4;
    if (v11 > 0)
    {
      v26 = 0;
      v27 = 8 * v16;
      v28 = (v4 + 2);
      for (i = v4; ; ++i)
      {
        v30 = v11;
        v31 = v128;
        v32 = i;
        do
        {
          *v31++ = *v32;
          v32 = (v32 + v27);
          --v30;
        }

        while (v30);
        v33 = v28;
        v34 = v26;
        if (v26 <= v25)
        {
          break;
        }

        v34 = v26;
        if (v26 < v10)
        {
          goto LABEL_43;
        }

LABEL_33:
        ++v26;
        v5 = (v5 + 8 * v17);
        v28 = (v28 + 8);
        if (v26 == v10)
        {
          return result;
        }
      }

      do
      {
        v35 = 0uLL;
        v36 = v33;
        v37 = v11;
        v38 = v128;
        v39 = 0uLL;
        do
        {
          v40 = vld1q_dup_f64(v38++);
          v35 = vmlaq_f64(v35, v36[-1], v40);
          v39 = vmlaq_f64(v39, *v36, v40);
          v36 = (v36 + v27);
          --v37;
        }

        while (v37);
        v41 = (v5 + 8 * v34);
        *v41 = vmulq_n_f64(v35, a4);
        v41[1] = vmulq_n_f64(v39, a4);
        v34 += 4;
        v33 += 2;
      }

      while (v25 >= v34);
      v34 = v34;
      if (v34 >= v10)
      {
        goto LABEL_33;
      }

LABEL_43:
      v42 = &v4[v34];
      do
      {
        v43 = 0.0;
        v44 = v42;
        v45 = v11;
        v46 = v128;
        do
        {
          v47 = *v46++;
          v43 = v43 + v47 * *v44;
          v44 = (v44 + v27);
          --v45;
        }

        while (v45);
        *&v5->i64[v34++] = v43 * a4;
        ++v42;
      }

      while (v10 > v34);
      goto LABEL_33;
    }

    v100 = 0;
    v101 = a4 * 0.0;
    v102 = vdupq_lane_s64(COERCE__INT64(a4 * 0.0), 0);
    v103 = v10 - 3;
    v104 = v5 + 4;
    v105 = 8 * v17;
    v106 = 4;
    for (j = -1; ; --j)
    {
      if (v106 <= v103)
      {
        v108 = v10 - 3;
      }

      else
      {
        v108 = v106;
      }

      v109 = v100 + 4;
      if (v100 + 4 <= v103)
      {
        v109 = v10 - 3;
      }

      if (v100 <= v25)
      {
        v111 = v109 + ~v100;
        v112 = v100;
        if (v111 <= 0xB)
        {
          goto LABEL_98;
        }

        v113 = (((v108 + j) >> 2) + 1) & 0x7FFFFFFC;
        v114 = (v111 >> 2) + 1;
        v112 = v100 + 4 * (v114 & 0x7FFFFFFC);
        v110 = v100;
        v115 = v104;
        do
        {
          v115[-4] = v102;
          v115[-3] = v102;
          v115[-2] = v102;
          v115[-1] = v102;
          *v115 = v102;
          v115[1] = v102;
          v115[2] = v102;
          v115[3] = v102;
          v115 += 8;
          v110 += 16;
          v113 -= 4;
        }

        while (v113);
        if ((v114 & 0x7FFFFFFC) != v114)
        {
LABEL_98:
          v116 = 8 * v112;
          v110 = v112;
          do
          {
            v117 = (v5 + v116);
            *v117 = v102;
            v117[1] = v102;
            v116 += 32;
            v110 += 4;
          }

          while (v25 >= v110);
        }
      }

      else
      {
        v110 = v100;
      }

      if (v110 >= v10)
      {
        goto LABEL_86;
      }

      v118 = v110;
      v119 = (v10 + ~v110);
      if (v119 > 2)
      {
        v121 = v119 + 1;
        v122 = (v119 + 1) & 0x1FFFFFFFCLL;
        v120 = v122 + v118;
        v123 = 8 * v118;
        v124 = v122;
        do
        {
          v125 = (v5 + v123);
          *v125 = v102;
          v125[1] = v102;
          v123 += 32;
          v124 -= 4;
        }

        while (v124);
        if (v121 == v122)
        {
          goto LABEL_86;
        }
      }

      else
      {
        v120 = v118;
      }

      v126 = v120;
      do
      {
        *&v5->i64[v126++] = v101;
        LODWORD(v120) = v120 + 1;
      }

      while (v10 > v120);
LABEL_86:
      ++v100;
      v104 = (v104 + v105 + 8);
      ++v106;
      v5 = (v5 + v105);
      if (v100 == v10)
      {
        return result;
      }
    }
  }

  v18 = 0;
  if (v10 >= 1)
  {
LABEL_51:
    v53 = 0;
    v54 = v10 - 4;
    v55 = 8 * v8;
    v56 = 8 * v16;
    v57 = vdupq_lane_s64(COERCE__INT64(a4 * 0.0), 0);
    v58 = (v4 + 2);
    v59 = 8 * v17;
    v60 = v6;
    v61 = v4;
    do
    {
      if (v18)
      {
        v62 = v11;
        v63 = v61;
        v64 = v18;
        v65 = v128;
        if (v11 >= 1)
        {
          do
          {
            *v65++ = *v63 - *v64;
            v64 = (v64 + v55);
            v63 = (v63 + v56);
            --v62;
          }

          while (v62);
        }
      }

      else if (v11 >= 1)
      {
        v66 = v11;
        v67 = v61;
        v68 = v60;
        v69 = v128;
        do
        {
          *v69++ = *v67 - *v68;
          v68 = (v68 + v55);
          v67 = (v67 + v56);
          --v66;
        }

        while (v66);
      }

      LODWORD(v70) = v53;
      v71 = v58;
      v72 = v53;
      if (v53 <= v54)
      {
        do
        {
          v82 = v57;
          v83 = v57;
          if (v11 >= 1)
          {
            v84 = (v6 + 8 * v72);
            if (v18)
            {
              v84 = v18;
            }

            v85 = v84 + 1;
            v86 = 0uLL;
            v87 = v71;
            v88 = v11;
            v89 = v128;
            v90 = 0uLL;
            do
            {
              v91 = vld1q_dup_f64(v89++);
              v86 = vmlaq_f64(v86, vsubq_f64(v87[-1], v85[-1]), v91);
              v90 = vmlaq_f64(v90, vsubq_f64(*v87, *v85), v91);
              v85 = (v85 + v55);
              v87 = (v87 + v56);
              --v88;
            }

            while (v88);
            v82 = vmulq_n_f64(v86, a4);
            v83 = vmulq_n_f64(v90, a4);
          }

          v81 = (v5 + 8 * v72);
          *v81 = v82;
          v81[1] = v83;
          v70 = v72 + 4;
          v71 += 2;
          v72 = v70;
        }

        while (v54 >= v70);
      }

      if (v70 >= v10)
      {
        goto LABEL_52;
      }

      v73 = v70;
      if (v11 >= 1)
      {
        v74 = &v4[v70];
        do
        {
          v75 = &v6->f64[v73];
          if (v18)
          {
            v75 = v18;
          }

          v76 = 0.0;
          v77 = v74;
          v78 = v11;
          v79 = v128;
          do
          {
            v80 = *v79++;
            v76 = v76 + v80 * (*v77 - *v75);
            v75 = (v75 + v55);
            v77 = (v77 + v56);
            --v78;
          }

          while (v78);
          *&v5->i64[v73++] = v76 * a4;
          ++v74;
        }

        while (v10 > v73);
        goto LABEL_52;
      }

      v92 = (v10 + ~v70);
      if (v92 > 2)
      {
        v94 = v92 + 1;
        v95 = (v92 + 1) & 0x1FFFFFFFCLL;
        v93 = v95 + v73;
        v96 = 8 * v73;
        v97 = v95;
        do
        {
          v98 = (v5 + v96);
          *v98 = v57;
          v98[1] = v57;
          v96 += 32;
          v97 -= 4;
        }

        while (v97);
        if (v94 == v95)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v93 = v70;
      }

      v99 = v93;
      do
      {
        *&v5->i64[v99++] = a4 * 0.0;
        LODWORD(v93) = v93 + 1;
      }

      while (v10 > v93);
LABEL_52:
      ++v53;
      v5 = (v5 + v59);
      ++v61;
      ++v60;
      v58 = (v58 + 8);
    }

    while (v53 != v10);
  }

  return result;
}

void sub_100252AAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12 != v12)
  {
    if (a12)
    {
      operator delete[]();
    }
  }

  _Unwind_Resume(exception_object);
}

const double *sub_100252ADC(const double *result, uint64_t a2, uint64_t a3, double a4)
{
  v4 = *(result + 2);
  v5 = *(a2 + 16);
  v6 = *(a3 + 16);
  v7 = *(result + 10) >> 3;
  v127 = *(a2 + 80) >> 3;
  if (*(a3 + 8) <= 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = *(a3 + 80) >> 3;
  }

  v9 = *(result + 8);
  v10 = *v9;
  v11 = v9[1];
  v12 = v9[1];
  if (!v6)
  {
    if (v10 < 1)
    {
      return result;
    }

    if (v11 < 4)
    {
      if (v12 <= 0)
      {
        v114 = 0;
        v115 = a4 * 0.0;
        v116 = vdupq_lane_s64(*&v115, 0);
        v117 = (v5 + 2);
        v118 = v10;
        do
        {
          v119 = v10 - v114;
          v120 = v114;
          if ((v10 - v114) < 4)
          {
            goto LABEL_87;
          }

          v121 = v118 & 0xFFFFFFFFFFFFFFFCLL;
          v120 = v114 + (v119 & 0xFFFFFFFFFFFFFFFCLL);
          v122 = v117;
          do
          {
            v122[-1] = v116;
            *v122 = v116;
            v122 += 2;
            v121 -= 4;
          }

          while (v121);
          if (v119 != (v119 & 0xFFFFFFFFFFFFFFFCLL))
          {
LABEL_87:
            do
            {
              v5[v120++] = v115;
            }

            while (v10 != v120);
          }

          ++v114;
          --v118;
          v117 = (v117 + 8 * v127 + 8);
          v5 += v127;
        }

        while (v114 != v10);
      }

      else
      {
        v75 = 0;
        f64 = v4[1].f64;
        v77 = 8 * v7;
        v78 = v10;
        do
        {
          v79 = &v4->f64[v7 * v75];
          v80 = v78;
          v81 = v5;
          v82 = f64;
          do
          {
            v83 = *v79 * *(v82 - 2) + 0.0;
            if (v11 != 1)
            {
              v83 = v83 + v79[1] * *(v82 - 1);
              if (v12 != 2)
              {
                v83 = v83 + v79[2] * *v82;
              }
            }

            *v81++ = v83 * a4;
            v82 = (v82 + v77);
            --v80;
          }

          while (v80);
          ++v75;
          f64 = (f64 + v77);
          v5 += v127 + 1;
          --v78;
        }

        while (v75 != v10);
      }

      return result;
    }

    v84 = 0;
    v85 = (v12 - 4);
    v86 = (v85 & 0xFFFFFFFC) + 4;
    v87 = v12 - (v85 & 0xFFFFFFFC) - 5;
    v88 = (v85 >> 2) + 1;
    v89 = (v87 + 1) & 0x1FFFFFFFCLL;
    result = v4[4].f64;
    v90 = 8 * v7;
    v91 = v4 + 1;
LABEL_61:
    v92 = v4;
    v129 = v91;
    v93 = result;
    v94 = v84;
    while (v85 >= 0xC)
    {
      v96 = 0.0;
      v97 = v88 & 0x3FFFFFFC;
      v98 = v93;
      v99 = result;
      do
      {
        v100 = v99 - 8;
        v135 = vld4q_f64(v100);
        v136 = vld4q_f64(v99);
        v101 = v98 - 8;
        v137 = vld4q_f64(v101);
        v138 = vld4q_f64(v98);
        v102 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v135.val[1], v137.val[1]), v137.val[0], v135.val[0]), v137.val[2], v135.val[2]), v137.val[3], v135.val[3]);
        v103 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v136.val[1], v138.val[1]), v138.val[0], v136.val[0]), v138.val[2], v136.val[2]), v138.val[3], v136.val[3]);
        v96 = v96 + v102.f64[0] + v102.f64[1] + v103.f64[0] + v103.f64[1];
        v99 += 16;
        v98 += 16;
        v97 -= 4;
      }

      while (v97);
      v95 = 2 * (v88 & 0x3FFFFFFC);
      if (v88 != (v88 & 0x3FFFFFFC))
      {
        goto LABEL_68;
      }

LABEL_70:
      if (v86 < v12)
      {
        v108 = (v85 & 0xFFFFFFFC) + 4;
        v109 = 8 * v108;
        v110 = (v87 + 1) & 0x1FFFFFFFCLL;
        if (v87 < 3)
        {
          goto LABEL_74;
        }

        do
        {
          v111 = vmulq_f64(*(v4 + v109), *(v91 + v109 - 16));
          v112 = vmulq_f64(*(v4 + v109 + 16), *(v91 + v109));
          v96 = v96 + v111.f64[0] + v111.f64[1] + v112.f64[0] + v112.f64[1];
          v109 += 32;
          v110 -= 4;
        }

        while (v110);
        v108 = v89 + v86;
        if (v87 + 1 != v89)
        {
LABEL_74:
          v113 = v108;
          do
          {
            v96 = v96 + v4->f64[v113] * v92->f64[v113];
            ++v113;
            LODWORD(v108) = v108 + 1;
          }

          while (v11 > v108);
        }
      }

      v5[v94++] = v96 * a4;
      v93 = (v93 + v90);
      v91 = (v91 + v90);
      v92 = (v92 + v90);
      if (v94 == v10)
      {
        v5 += v127;
        ++v84;
        result = (result + v90);
        v4 = (v4 + v90);
        v91 = (v129 + v90);
        if (v84 == v10)
        {
          return result;
        }

        goto LABEL_61;
      }
    }

    v95 = 0;
    v96 = 0.0;
LABEL_68:
    v105 = v91;
    v106 = v4;
    v107 = v95 * 2;
    do
    {
      v104 = v95 * 2;
      v96 = v96 + v106->f64[v104 + 1] * v105->f64[v104 - 1] + v106[v95].f64[0] * v105[-1].f64[v104] + v106[1].f64[v104] * v105[v95].f64[0] + v106[1].f64[v104 + 1] * v105->f64[v104 + 1];
      v107 += 4;
      v106 += 2;
      v105 += 2;
    }

    while (v107 <= v85);
    goto LABEL_70;
  }

  v13 = *(a3 + 12);
  result = v130;
  if ((8 * v11) >= 0x409)
  {
    operator new[]();
  }

  if (v10 >= 1)
  {
    v14 = 0;
    v126 = (v130 - v4);
    v15 = 8 * v7;
    v125 = -8 * v7;
    v124 = 8 * v8;
    v123 = v12 & 0x7FFFFFFC;
    v16 = v4 + 1;
    v17 = v6 + 1;
    v18 = *(a3 + 16);
    do
    {
      v19 = &v126[v125 * v14];
      if (v13 < v12)
      {
        if (v11 >= 1)
        {
          v20 = 0;
          v21 = *&v6->f64[v8 * v14];
          if (v11 < 4)
          {
            goto LABEL_88;
          }

          if (v19 < 0x20)
          {
            goto LABEL_88;
          }

          v22 = vdupq_lane_s64(v21, 0);
          v23 = v12 & 0x7FFFFFFC;
          v24 = v131;
          v25 = v16;
          do
          {
            v26 = vsubq_f64(*v25, v22);
            v24[-1] = vsubq_f64(v25[-1], v22);
            *v24 = v26;
            v25 += 2;
            v24 += 2;
            v23 -= 4;
          }

          while (v23);
          v20 = v12 & 0x7FFFFFFC;
          if (v123 != v11)
          {
LABEL_88:
            do
            {
              *&v130[v20] = v4->f64[v20] - *&v21;
              ++v20;
            }

            while (v11 != v20);
          }
        }

        goto LABEL_24;
      }

      if (v12 >= 1)
      {
        if (v12 > 3)
        {
          v27 = 0;
          if (v19 >= 0x20 && (v130 - v6 + -8 * v8 * v14) >= 0x20)
          {
            v70 = v17;
            v71 = v131;
            v72 = v16;
            v73 = v12 & 0x7FFFFFFC;
            do
            {
              v74 = vsubq_f64(*v72, *v70);
              v71[-1] = vsubq_f64(v72[-1], v70[-1]);
              *v71 = v74;
              v72 += 2;
              v71 += 2;
              v70 += 2;
              v73 -= 4;
            }

            while (v73);
            v27 = v12 & 0x7FFFFFFC;
            if (v123 == v11)
            {
              goto LABEL_24;
            }
          }
        }

        else
        {
          v27 = 0;
        }

        v28 = &v130[v27];
        v29 = (v18 + 8 * v27);
        v30 = &v4->f64[v27];
        v31 = v11 - v27;
        do
        {
          v32 = *v30++;
          v33 = v32;
          v34 = *v29++;
          *v28++ = v33 - v34;
          --v31;
        }

        while (v31);
      }

LABEL_24:
      v128 = v17;
      v35 = v4;
      v36 = v16;
      v37 = v14;
      do
      {
        v38 = (v6 + 8 * v8 * v37);
        if (v13 < v11)
        {
          v133 = v38->f64[0];
          v134 = v133;
          *v132 = v133;
          *&v132[1] = v133;
          v38 = v132;
        }

        if (v12 >= 4)
        {
          v41 = 0;
          v42 = v38[1].f64;
          v40 = 0.0;
          v43 = v36;
          v44 = v131;
          do
          {
            v45 = *(v44 - 1) * (*(v43 - 1) - *(v42 - 1)) + *(v44 - 2) * (*(v43 - 2) - *(v42 - 2));
            v46 = *v43;
            v47 = v43[1];
            v43 += 4;
            v48 = *v44;
            v49 = v44[1];
            v44 += 4;
            v41 += 4;
            v40 = v40 + v45 + v48 * (v46 - *v42) + v49 * (v47 - v42[1]);
            v42 += 4 * (v13 == v11);
          }

          while (v41 <= v12 - 4);
          v38 = (v38 + 32 * (v13 == v11) * (((v12 - 4) >> 2) + 1));
          v39 = ((v12 - 4) & 0xFFFFFFFC) + 4;
          if (v39 >= v11)
          {
            goto LABEL_25;
          }
        }

        else
        {
          v39 = 0;
          v40 = 0.0;
          if (v11 <= 0)
          {
            goto LABEL_25;
          }
        }

        v50 = v39;
        v51 = v11 + ~v39;
        if (v51 <= 2)
        {
          v52 = v50;
          v53 = v38;
LABEL_39:
          v63 = &v35->f64[v52];
          v64 = &v130[v52];
          do
          {
            v65 = *v64++;
            v66 = v65;
            v67 = *v63++;
            v68 = v67;
            v69 = *v53++;
            v40 = v40 + v66 * (v68 - v69);
            LODWORD(v52) = v52 + 1;
          }

          while (v11 > v52);
          goto LABEL_25;
        }

        v54 = v51 + 1;
        v55 = (v51 + 1) & 0x1FFFFFFFCLL;
        v52 = v55 + v50;
        v53 = &v38->f64[v55];
        v56 = 8 * v50;
        v57 = &v36[v50];
        v58 = v38 + 1;
        v59 = &v131[v56];
        v60 = v55;
        do
        {
          v61 = vmulq_f64(v59[-1], vsubq_f64(v57[-1], v58[-1]));
          v62 = vmulq_f64(*v59, vsubq_f64(*v57, *v58));
          v40 = v40 + v61.f64[0] + v61.f64[1] + v62.f64[0] + v62.f64[1];
          v57 += 2;
          v58 += 2;
          v59 += 2;
          v60 -= 4;
        }

        while (v60);
        if (v54 != v55)
        {
          goto LABEL_39;
        }

LABEL_25:
        v5[v37++] = v40 * a4;
        v36 = (v36 + v15);
        v35 = (v35 + v15);
      }

      while (v37 != v10);
      v5 += v127;
      ++v14;
      v16 = (v16 + v15);
      v17 = (v128 + v124);
      v18 += v124;
      v4 = (v4 + v15);
    }

    while (v14 != v10);
  }

  return result;
}

void sub_1002532D0(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, double a6, double a7)
{
  sub_1002ACE7C(v400, &off_100473FB8);
  v12 = *(a1 + 8);
  v388 = a1;
  v13 = *a1;
  v14 = v13 & 0xFFF;
  v16 = *v12;
  v15 = v12[1];
  if ((a5 & 3) == 2)
  {
    v17 = *v12;
  }

  else
  {
    v17 = v12[1];
  }

  if ((a5 & 3) != 0)
  {
    v18 = v12[1];
  }

  else
  {
    v18 = *v12;
  }

  if ((a5 & 3u) <= 1)
  {
    v19 = 12;
  }

  else
  {
    v19 = 8;
  }

  if ((a5 & 3u) <= 1)
  {
    v20 = 8;
  }

  else
  {
    v20 = 12;
  }

  if ((a5 & 3u) <= 1)
  {
    v21 = v18;
  }

  else
  {
    v21 = v17;
  }

  v373 = *(a2 + v19);
  v22 = *(a2 + v20);
  v372 = a5;
  v396 = v22;
  if (a5 || (v22 - 2) > 2 || v22 != v373 && v22 != v21)
  {
    goto LABEL_112;
  }

  if (v14 == 6)
  {
    v52 = *(a4 + 16);
    v53 = *(v388 + 2);
    v54 = *(a2 + 16);
    v55 = *(a3 + 16);
    v56 = *(a4 + 80);
    v57 = *(v388 + 10);
    v58 = *(a2 + 80);
    if (v55)
    {
      v59 = *(a3 + 80) >> 3;
      v60 = v56 >> 3;
      v61 = v58 >> 3;
      v62 = v57 >> 3;
      v63 = v396;
      if (v396 != 4)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v59 = 0;
      v55 = &qword_1003E3A30;
      v60 = v56 >> 3;
      v61 = v58 >> 3;
      v62 = v57 >> 3;
      v63 = v396;
      if (v396 != 4)
      {
LABEL_33:
        if (v63 == 3)
        {
          if (v373 == 3 && v54 != v52)
          {
            if (v21 >= 1)
            {
              v64 = &v54[v61];
              v65 = &v54[2 * v61];
              v66 = (v55 + 2);
              v67 = 8 * v59;
              v68 = v53 + 2;
              v69 = 8 * v62;
              v70 = v52 + 2;
              v71 = 8 * v60;
              v72 = (2 * v61) | 1;
              do
              {
                v73 = *(v68 - 2);
                v74 = *(v68 - 1);
                v75 = v74 * *v64 + v73 * *v54 + *v68 * *v65;
                v76 = v74 * v64[1] + v73 * v54[1] + *v68 * v54[v72];
                v77 = v74 * v64[2] + v73 * v54[2] + *v68 * v65[2];
                *(v70 - 2) = *(v66 - 2) * a7 + v75 * a6;
                *(v70 - 1) = *(v66 - 1) * a7 + v76 * a6;
                *v70 = *v66 * a7 + v77 * a6;
                v66 = (v66 + v67);
                v68 = (v68 + v69);
                v70 = (v70 + v71);
                --v21;
              }

              while (v21);
            }

            goto LABEL_147;
          }

          if (v53 != v52)
          {
            if (v55 == &qword_1003E3A30)
            {
              v59 = 1;
            }

            if (v373 >= 1)
            {
              v160 = 0;
              v161 = &v53[v62];
              v162 = &v53[2 * v62];
              v163 = (2 * v62) | 1;
              v164 = &v52[v60];
              v165 = &v52[2 * v60];
              v166 = &v54[v61];
              v167 = 8 * (v55 != &qword_1003E3A30);
              v168 = &v54[2 * v61];
              do
              {
                v169 = v54[v160];
                v170 = v166[v160];
                v171 = v168[v160];
                v172 = v53[1] * v170 + *v53 * v169 + v53[2] * v171;
                v173 = v170 * v161[1] + *v161 * v169 + v161[2] * v171;
                v174 = v170 * v53[v163] + *v162 * v169 + v162[2] * v171;
                v52[v160] = *v55 * a7 + v172 * a6;
                v164[v160] = *&v55[v59] * a7 + v173 * a6;
                v165[v160++] = *&v55[2 * v59] * a7 + v174 * a6;
                v55 = (v55 + v167);
              }

              while (v373 != v160);
            }

            goto LABEL_147;
          }
        }

        else
        {
          if (v373 == 2 && v54 != v52)
          {
            if (v21 >= 1)
            {
              v131 = 8 * v60;
              v132 = v52 + 1;
              v133 = v53 + 1;
              v134 = 8 * v62;
              v135 = (v55 + 1);
              v136 = 8 * v59;
              v137 = &v54[v61];
              do
              {
                v138 = *(v133 - 1);
                v139 = *v133 * *v137 + v138 * *v54;
                v140 = *v133 * v137[1] + v138 * v54[1];
                *(v132 - 1) = *(v135 - 1) * a7 + v139 * a6;
                *v132 = *v135 * a7 + v140 * a6;
                v132 = (v132 + v131);
                v133 = (v133 + v134);
                v135 = (v135 + v136);
                --v21;
              }

              while (v21);
            }

            goto LABEL_147;
          }

          if (v53 != v52)
          {
            if (v55 == &qword_1003E3A30)
            {
              v59 = 1;
            }

            v228 = v373;
            if (v373 >= 1)
            {
              v229 = 8 * (v55 != &qword_1003E3A30);
              v230 = &v53[v62];
              do
              {
                v231 = v54[v61];
                v232 = v231 * v230[1] + *v230 * *v54;
                *v52 = *v55 * a7 + (v53[1] * v231 + *v53 * *v54) * a6;
                v52[v60] = *&v55[v59] * a7 + v232 * a6;
                ++v52;
                ++v54;
                v55 = (v55 + v229);
                --v228;
              }

              while (v228);
            }

            goto LABEL_147;
          }
        }

        goto LABEL_112;
      }
    }

    if (v373 == 4 && v54 != v52)
    {
      if (v21 >= 1)
      {
        v101 = &v54[v61];
        v102 = &v54[3 * v61];
        v103 = 8 * v59;
        v104 = 8 * v62;
        v105 = (v55 + 2);
        v106 = v53 + 2;
        v107 = v52 + 2;
        v108 = &v54[2 * v61];
        v109 = 8 * v60;
        v110 = (2 * v61) | 1;
        do
        {
          v111 = *(v106 - 2);
          v112 = *(v106 - 1);
          v113 = v106[1];
          v114 = v112 * *v101 + v111 * *v54 + *v106 * *v108 + v113 * *v102;
          v115 = v112 * v101[1] + v111 * v54[1] + *v106 * v54[v110] + v113 * v102[1];
          v116 = v112 * v101[2] + v111 * v54[2] + *v106 * v108[2];
          v117 = v112 * v101[3] + v111 * v54[3];
          v118 = v116 + v113 * v102[2];
          v119 = v117 + *v106 * v108[3] + v113 * v102[3];
          *(v107 - 2) = *(v105 - 2) * a7 + v114 * a6;
          *(v107 - 1) = *(v105 - 1) * a7 + v115 * a6;
          *v107 = *v105 * a7 + v118 * a6;
          v107[1] = v105[1] * a7 + v119 * a6;
          v105 = (v105 + v103);
          v106 = (v106 + v104);
          v107 = (v107 + v109);
          --v21;
        }

        while (v21);
      }

      goto LABEL_147;
    }

    if (v373 <= 16 && v53 != v52)
    {
      if (v55 == &qword_1003E3A30)
      {
        v59 = 1;
      }

      if (v373 >= 1)
      {
        v200 = 0;
        v201 = &v53[v62];
        v202 = &v53[2 * v62];
        v203 = (2 * v62) | 1;
        v204 = &v53[3 * v62];
        v205 = &v52[v60];
        v206 = &v52[2 * v60];
        v207 = &v52[3 * v60];
        v208 = &v54[v61];
        v209 = &v54[3 * v61];
        v210 = 8 * (v55 != &qword_1003E3A30);
        v211 = &v54[2 * v61];
        do
        {
          v212 = v54[v200];
          v213 = v208[v200];
          v214 = v211[v200];
          v215 = v209[v200];
          v216 = v53[1] * v213 + *v53 * v212 + v53[2] * v214 + v53[3] * v215;
          v217 = v213 * v201[1] + *v201 * v212 + v201[2] * v214 + v201[3] * v215;
          v218 = v213 * v53[v203] + *v202 * v212 + v202[2] * v214 + v202[3] * v215;
          v219 = v213 * v204[1] + *v204 * v212 + v204[2] * v214 + v204[3] * v215;
          v52[v200] = *v55 * a7 + v216 * a6;
          v205[v200] = *&v55[v59] * a7 + v217 * a6;
          v206[v200] = *&v55[2 * v59] * a7 + v218 * a6;
          v207[v200++] = *&v55[3 * v59] * a7 + v219 * a6;
          v55 = (v55 + v210);
        }

        while (v373 != v200);
      }

      goto LABEL_147;
    }

    goto LABEL_112;
  }

  if (v14 == 5)
  {
    v23 = *(a4 + 16);
    v24 = *(v388 + 2);
    v25 = *(a2 + 16);
    v26 = *(a3 + 16);
    v27 = *(a4 + 80);
    v28 = *(v388 + 10);
    v29 = *(a2 + 80);
    if (v26)
    {
      v30 = *(a3 + 80) >> 2;
      v31 = v27 >> 2;
      v32 = v29 >> 2;
      v33 = v28 >> 2;
      v34 = v396;
      if (v396 != 4)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v30 = 0;
      v26 = &dword_1003E3A50;
      v31 = v27 >> 2;
      v32 = v29 >> 2;
      v33 = v28 >> 2;
      v34 = v396;
      if (v396 != 4)
      {
LABEL_24:
        if (v34 == 3)
        {
          if (v373 == 3 && v25 != v23)
          {
            if (v21 >= 1)
            {
              v35 = &v25[v32];
              v36 = &v25[2 * v32];
              v37 = (v26 + 2);
              v38 = 4 * v30;
              v39 = v24 + 2;
              v40 = 4 * v33;
              v41 = v23 + 2;
              v42 = 4 * v31;
              v43 = (2 * v32) | 1;
              do
              {
                v44 = *(v39 - 2);
                v45 = *(v39 - 1);
                v46 = ((v45 * *v35) + (v44 * *v25)) + (*v39 * *v36);
                v47 = ((v45 * v35[1]) + (v44 * v25[1])) + (*v39 * v25[v43]);
                v48 = ((v45 * v35[2]) + (v44 * v25[2])) + (*v39 * v36[2]);
                v49 = *(v37 - 2) * a7 + v46 * a6;
                *(v41 - 2) = v49;
                v50 = *(v37 - 1) * a7 + v47 * a6;
                *(v41 - 1) = v50;
                v51 = *v37 * a7 + v48 * a6;
                *v41 = v51;
                v37 = (v37 + v38);
                v39 = (v39 + v40);
                v41 = (v41 + v42);
                --v21;
              }

              while (v21);
            }

            goto LABEL_147;
          }

          if (v24 != v23)
          {
            if (v26 == &dword_1003E3A50)
            {
              v141 = 1;
            }

            else
            {
              v141 = v30;
            }

            if (v373 >= 1)
            {
              v142 = 0;
              v143 = &v24[v33];
              v144 = &v24[2 * v33];
              v145 = (2 * v33) | 1;
              v146 = &v23[v31];
              v147 = &v23[2 * v31];
              v148 = &v25[v32];
              v149 = 4 * (v26 != &dword_1003E3A50);
              v150 = &v25[2 * v32];
              do
              {
                v151 = v25[v142];
                v152 = v148[v142];
                v153 = v150[v142];
                v154 = ((v24[1] * v152) + (*v24 * v151)) + (v24[2] * v153);
                v155 = ((v152 * v143[1]) + (*v143 * v151)) + (v143[2] * v153);
                v156 = ((v152 * v24[v145]) + (*v144 * v151)) + (v144[2] * v153);
                v157 = *v26 * a7 + v154 * a6;
                v23[v142] = v157;
                v158 = *&v26[v141] * a7 + v155 * a6;
                v146[v142] = v158;
                v159 = *&v26[2 * v141] * a7 + v156 * a6;
                v147[v142++] = v159;
                v26 = (v26 + v149);
              }

              while (v373 != v142);
            }

            goto LABEL_147;
          }
        }

        else
        {
          if (v373 == 2 && v25 != v23)
          {
            if (v21 >= 1)
            {
              v120 = 4 * v31;
              v121 = v23 + 1;
              v122 = v24 + 1;
              v123 = 4 * v33;
              v124 = (v26 + 1);
              v125 = &v25[v32];
              do
              {
                v126 = *(v122 - 1);
                v127 = (*v122 * *v125) + (v126 * *v25);
                v128 = (*v122 * v125[1]) + (v126 * v25[1]);
                v129 = *(v124 - 1) * a7 + v127 * a6;
                *(v121 - 1) = v129;
                v130 = *v124 * a7 + v128 * a6;
                *v121 = v130;
                v121 = (v121 + v120);
                v122 = (v122 + v123);
                v124 += v30;
                --v21;
              }

              while (v21);
            }

            goto LABEL_147;
          }

          if (v24 != v23)
          {
            if (v26 == &dword_1003E3A50)
            {
              v220 = 1;
            }

            else
            {
              v220 = v30;
            }

            v221 = v373;
            if (v373 >= 1)
            {
              v222 = 4 * (v26 != &dword_1003E3A50);
              v223 = &v24[v33];
              do
              {
                v224 = v25[v32];
                v225 = (v224 * v223[1]) + (*v223 * *v25);
                v226 = *v26 * a7 + ((v24[1] * v224) + (*v24 * *v25)) * a6;
                *v23 = v226;
                v227 = *&v26[v220] * a7 + v225 * a6;
                v23[v31] = v227;
                ++v23;
                ++v25;
                v26 = (v26 + v222);
                --v221;
              }

              while (v221);
            }

            goto LABEL_147;
          }
        }

        goto LABEL_112;
      }
    }

    if (v373 == 4 && v25 != v23)
    {
      if (v21 >= 1)
      {
        v78 = &v25[v32];
        v79 = &v25[3 * v32];
        v80 = 4 * v30;
        v81 = 4 * v33;
        v82 = (v26 + 2);
        v83 = v24 + 2;
        v84 = v23 + 2;
        v85 = &v25[2 * v32];
        v86 = 4 * v31;
        v87 = (2 * v32) | 1;
        do
        {
          v88 = *(v83 - 2);
          v89 = *(v83 - 1);
          v90 = v83[1];
          v91 = (((v89 * *v78) + (v88 * *v25)) + (*v83 * *v85)) + (v90 * *v79);
          v92 = (((v89 * v78[1]) + (v88 * v25[1])) + (*v83 * v25[v87])) + (v90 * v79[1]);
          v93 = ((v89 * v78[2]) + (v88 * v25[2])) + (*v83 * v85[2]);
          v94 = (v89 * v78[3]) + (v88 * v25[3]);
          v95 = v93 + (v90 * v79[2]);
          v96 = (v94 + (*v83 * v85[3])) + (v90 * v79[3]);
          v97 = *(v82 - 2) * a7 + v91 * a6;
          *(v84 - 2) = v97;
          v98 = *(v82 - 1) * a7 + v92 * a6;
          *(v84 - 1) = v98;
          v99 = *v82 * a7 + v95 * a6;
          *v84 = v99;
          v100 = v82[1] * a7 + v96 * a6;
          v84[1] = v100;
          v82 = (v82 + v80);
          v83 = (v83 + v81);
          v84 = (v84 + v86);
          --v21;
        }

        while (v21);
      }

      goto LABEL_147;
    }

    if (v24 != v23)
    {
      if (v26 == &dword_1003E3A50)
      {
        v175 = 1;
      }

      else
      {
        v175 = v30;
      }

      if (v373 >= 1)
      {
        v176 = 0;
        v177 = &v24[v33];
        v178 = &v24[2 * v33];
        v179 = (2 * v33) | 1;
        v180 = &v24[3 * v33];
        v181 = &v23[v31];
        v182 = &v23[2 * v31];
        v183 = &v23[3 * v31];
        v184 = &v25[v32];
        v185 = &v25[3 * v32];
        v186 = 4 * (v26 != &dword_1003E3A50);
        v187 = &v25[2 * v32];
        do
        {
          v188 = v25[v176];
          v189 = v184[v176];
          v190 = v187[v176];
          v191 = v185[v176];
          v192 = (((v24[1] * v189) + (*v24 * v188)) + (v24[2] * v190)) + (v24[3] * v191);
          v193 = (((v189 * v177[1]) + (*v177 * v188)) + (v177[2] * v190)) + (v177[3] * v191);
          v194 = (((v189 * v24[v179]) + (*v178 * v188)) + (v178[2] * v190)) + (v178[3] * v191);
          v195 = (((v189 * v180[1]) + (*v180 * v188)) + (v180[2] * v190)) + (v180[3] * v191);
          v196 = *v26 * a7 + v192 * a6;
          v23[v176] = v196;
          v197 = *&v26[v175] * a7 + v193 * a6;
          v181[v176] = v197;
          v198 = *&v26[2 * v175] * a7 + v194 * a6;
          v182[v176] = v198;
          v199 = *&v26[3 * v175] * a7 + v195 * a6;
          v183[v176++] = v199;
          v26 = (v26 + v186);
        }

        while (v373 != v176);
      }

      goto LABEL_147;
    }
  }

LABEL_112:
  v355 = *(a3 + 16);
  if (v355)
  {
    v377 = *(a3 + 80);
  }

  else
  {
    v377 = 0;
  }

  v233 = *(a2 + 80);
  v402 = v404;
  v403 = 1032;
  v234 = v14 - 5;
  if (v14 - 5 >= 0xA || ((0x303u >> v234) & 1) == 0)
  {
    v399[0] = 0;
    v399[1] = 0;
    qmemcpy(sub_1002A80E0(v399, 49), "type == (((6) & ((1 << 3) - 1)) + (((2)-1) << 3))", 49);
    sub_1002A8980(-215, v399, "gemmImpl", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matmul.cpp", 1218);
  }

  v374 = *(&off_100474028 + v234);
  v375 = off_100473FD8[v234];
  v357 = off_100474078[v234];
  v236 = v373 == 1 || v396 == 1;
  if ((v372 & 2) == 0 && v236 && (*(a2 + 1) & 0x40) != 0)
  {
    if (v373 == 1)
    {
      v233 = 0;
    }

    else
    {
      v233 = (((v13 & 0xFFF) >> 3) + 1) << ((0xFA50u >> (2 * (v13 & 7))) & 3);
    }

    v372 |= 2u;
  }

  v238 = (v373 < 65 || v21 < 65) && v396 < 10001;
  if (v238 || v396 < 11 || v21 <= 128 && v373 <= 128 && v396 <= 0x80)
  {
    v239 = *(v388 + 2);
    v240 = *(v388 + 10);
    v241 = *(a2 + 16);
    v242 = *(a4 + 16);
    v243 = *(a4 + 80);
    v399[0] = __PAIR64__(v16, v15);
    v397 = v373;
    v398 = v21;
    (v375)(v239, v240, v241, v233, v355, v377, v242, v243, a6, a7, v399, &v397, v372);
    goto LABEL_144;
  }

  v244 = ((v14 >> 3) + 1) << ((0xFA50u >> (2 * (v13 & 7))) & 3);
  if (v372)
  {
    v387 = *(v388 + 10);
    v354 = ((v14 >> 3) + 1) << ((0xFA50u >> (2 * (v13 & 7))) & 3);
  }

  else
  {
    v354 = *(v388 + 10);
    v387 = ((v14 >> 3) + 1) << ((0xFA50u >> (2 * (v13 & 7))) & 3);
  }

  v360 = (v244 << ((v13 & 7) == 5));
  if ((v372 & 2) != 0)
  {
    v245 = ((v14 >> 3) + 1) << ((0xFA50u >> (2 * (v13 & 7))) & 3);
  }

  else
  {
    v245 = v233;
  }

  v386 = v245;
  if ((v372 & 2) != 0)
  {
    v246 = v233;
  }

  else
  {
    v246 = ((v14 >> 3) + 1) << ((0xFA50u >> (2 * (v13 & 7))) & 3);
  }

  v359 = v246;
  if (!*(a3 + 16))
  {
    goto LABEL_175;
  }

  v247 = *(a3 + 4);
  if (v247 >= 3)
  {
    v249 = *(a3 + 64);
    v250 = (v249 + 4);
    v251 = 1;
    v252 = v247 & 0x7FFFFFFE;
    v253 = 1;
    do
    {
      v251 *= *(v250 - 1);
      v253 *= *v250;
      v250 += 2;
      v252 -= 2;
    }

    while (v252);
    v248 = v253 * v251;
    v254 = v247 - (v247 & 0x7FFFFFFE);
    if (v254)
    {
      v255 = (v249 + 8 * ((v247 >> 1) & 0x3FFFFFFF));
      do
      {
        v256 = *v255++;
        v248 *= v256;
        --v254;
      }

      while (v254);
    }
  }

  else
  {
    v248 = *(a3 + 12) * *(a3 + 8);
  }

  if (v247 && v248)
  {
    v257 = *(a3 + 80);
    if ((v372 & 4) != 0)
    {
      v258 = ((v14 >> 3) + 1) << ((0xFA50u >> (2 * (v13 & 7))) & 3);
    }

    else
    {
      v258 = *(a3 + 80);
    }

    v353 = v258;
    if ((v372 & 4) == 0)
    {
      v257 = ((v14 >> 3) + 1) << ((0xFA50u >> (2 * (v13 & 7))) & 3);
    }

    v358 = v257;
    v259 = v372;
  }

  else
  {
LABEL_175:
    v353 = 0;
    v358 = 0;
    v259 = v372 & 0xFB;
  }

  if (v21 >= 128)
  {
    v260 = 128;
  }

  else
  {
    v260 = v21;
  }

  if (v373 >= 128)
  {
    v261 = 128;
  }

  else
  {
    v261 = v373;
  }

  v262 = 0x4000 / v261;
  if (0x4000 / v261 >= 0x4000 / v260)
  {
    v262 = 0x4000 / v260;
  }

  v385 = v262;
  if (v396 < v262)
  {
    v262 = v396;
  }

  if (v262 * v260 > 0x4000)
  {
    v263 = 0x4000 / v262;
  }

  else
  {
    v263 = v260;
  }

  if (v262 * v261 > 0x4000)
  {
    v264 = 0x4000 / v262;
  }

  else
  {
    v264 = v261;
  }

  v363 = v264;
  v265 = ((v264 + v264 / 8) & 0xFFFFFFFE) + 2;
  v394 = v262;
  v266 = v262 + v262 / 8;
  v267 = v266 + 1;
  v268 = v265 * (v266 + 1);
  v269 = v268 * v244;
  v270 = v268 * v360;
  v391 = v244;
  v271 = v244 * ((v266 & 0xFFFFFFFE) + 2) * (v263 + v263 / 8 + 1);
  if (v372)
  {
    v259 &= ~1u;
  }

  else
  {
    v271 = 0;
  }

  LOBYTE(v390) = v259;
  v272 = v270 + v269 + v271;
  if (v403 >= v272)
  {
    v403 = v270 + v269 + v271;
    v273 = v402;
  }

  else
  {
    v273 = v402;
    if (v402 != v404)
    {
      if (v402)
      {
        operator delete[]();
      }

      v402 = v404;
      v273 = v404;
    }

    v403 = v270 + v269 + v271;
    if (v272 >= 0x409)
    {
      operator new[]();
    }
  }

  v376 = v273;
  v384 = &v273[v270];
  v383 = &v273[v270 + v269];
  if (v372)
  {
    v274 = &v273[v270 + v269];
  }

  else
  {
    v274 = 0;
  }

  v392 = v274;
  if (v21 >= 1)
  {
    v275 = 0;
    v350 = 8 * v21;
    v370 = v244 >> 2;
    v369 = &v273[v270];
    v368 = &v273[v270 + 16];
    v366 = &v273[(v244 + v360) * v267 * v265 + 8];
    v351 = v263;
    v352 = v21;
LABEL_210:
    if (v275 + v263 >= v21 || (v395 = v263, v263 + 8 * (v275 + v263) > v350))
    {
      v395 = v21 - v275;
    }

    v276 = v373;
    v277 = v372;
    v278 = v396;
    if (v373 < 1)
    {
      goto LABEL_209;
    }

    v279 = 0;
    v356 = v275;
    v362 = v355 + v353 * v275;
    v365 = v275;
    v280 = v354 * v275;
    v361 = v390 & 0xF;
    v390 = v361 | 0x10;
    v371 = v280;
LABEL_216:
    if (v279 + v363 >= v276 || (v283 = v363, v363 + 8 * (v279 + v363) > 8 * v373))
    {
      v283 = v276 - v279;
    }

    v284 = 0;
    v378 = *(a4 + 16) + *(a4 + 80) * v365;
    v379 = *(a4 + 80);
    v382 = v362 + v358 * v279;
    v380 = v279 * v391;
    v381 = v283 * v360;
    v367 = v279;
    v393 = v359 * v279;
    v285 = v361;
    while (1)
    {
      if (v284 + v394 >= v278 || (v286 = v394, v394 + 8 * (v284 + v394) > 8 * v396))
      {
        v286 = v396 - v284;
      }

      v287 = *(v388 + 2);
      v288 = v387 * v284;
      v289 = (v287 + v280 + v288);
      v290 = *(v388 + 10);
      v291 = *(a2 + 16);
      if (v277)
      {
        v292 = v286;
      }

      else
      {
        v292 = v395;
      }

      if (v277)
      {
        v293 = v395;
      }

      else
      {
        v293 = v286;
      }

      if (v392)
      {
        v294 = v286 * v391;
        if (v293 < 1)
        {
          goto LABEL_253;
        }

        if (v391 == 4)
        {
          if (v292 <= 0)
          {
            goto LABEL_253;
          }

          v307 = 0;
          v308 = v383;
          do
          {
            v309 = 0;
            v310 = 0;
            do
            {
              *&v308[v310] = *&v289[v309];
              v310 += 4;
              v309 += v290;
            }

            while (4 * v292 != v310);
            ++v307;
            v308 += v294;
            v289 += 4;
          }

          while (v307 != v293);
        }

        else if (v391 == 8)
        {
          if (v292 < 1)
          {
            goto LABEL_253;
          }

          v302 = 0;
          v303 = v383;
          do
          {
            v304 = 0;
            v305 = 0;
            v306 = 0;
            do
            {
              *&v303[v305] = *&v289[v304];
              v306 += 2;
              v305 += 8;
              v304 += v290;
            }

            while (v306 < (2 * v292));
            ++v302;
            v303 += v294;
            v289 += 8;
          }

          while (v302 != v293);
        }

        else
        {
          if (v391 != 16 || v292 < 1)
          {
LABEL_253:
            v301 = v293;
            v293 = v292;
            v289 = v383;
            goto LABEL_254;
          }

          v295 = 0;
          v296 = v287 + v280 + v288 + 8;
          v297 = v366;
          do
          {
            v298 = 0;
            v299 = v297;
            v300 = v296;
            do
            {
              *(v299 - 1) = *(v300 - 1);
              *v299 = *v300;
              v299 += 2;
              v298 += 4;
              v300 = (v300 + v290);
            }

            while (v298 < (4 * v292));
            ++v295;
            v296 += 16;
            v297 = (v297 + v294);
          }

          while (v295 != v293);
        }

        v301 = v293;
        v293 = v292;
        v289 = v392;
      }

      else
      {
        v301 = v292;
        v294 = *(v388 + 10);
      }

LABEL_254:
      v311 = v386 * v284;
      v312 = (v291 + v393 + v311);
      if (v283 >= v276)
      {
        v315 = v233;
        if (v385 < v396)
        {
          goto LABEL_302;
        }

        goto LABEL_305;
      }

      if ((v277 & 2) != 0)
      {
        v313 = v283;
      }

      else
      {
        v313 = v286;
      }

      if ((v277 & 2) != 0)
      {
        v314 = v286;
      }

      else
      {
        v314 = v283;
      }

      v315 = v314 * v391;
      if (!v313)
      {
        v312 = v384;
        if (v385 >= v396)
        {
          goto LABEL_305;
        }

LABEL_302:
        v399[0] = __PAIR64__(v301, v293);
        v397 = v283;
        v398 = v395;
        v374(v289, v294, v312, v315, v376, v381, v399, &v397, v285);
        v284 += v286;
        v285 = v361 | 0x10;
        v278 = v396;
        if (v284 >= v396)
        {
          v281 = *(a4 + 80);
          v282 = *(a4 + 16) + **(a4 + 72) * v365;
          v399[0] = __PAIR64__(v395, v283);
          (v357)(v382, v377, v376, v381, v282 + v380, v281, v399, v390, a6, a7);
          goto LABEL_215;
        }

        continue;
      }

      v316 = 0;
      v317 = v314 * v370;
      v318 = v317 - 4;
      v319 = v393 + v291 + v311;
      v320 = &v369[-v319];
      v321 = (v313 - 1);
      v322 = 3;
      if (v317 - 4 > 3)
      {
        v322 = v318;
      }

      v323 = (4 * v322) & 0x1FFFFFFF0;
      v324 = v319 + v233 * v321;
      v325 = v368 + v315 * v321 + v323;
      v326 = v324 + v323 + 16;
      v327 = (v322 >> 2) + 1;
      v328 = v384;
      v331 = v384 < v326 && v312 < v325 || v315 < 0;
      v332 = v318 < 0xC || v233 < 0 || v331;
      do
      {
        if (v317 < 4)
        {
          v333 = 0;
          if (v317 <= 0)
          {
            goto LABEL_274;
          }

          goto LABEL_286;
        }

        if (v332)
        {
          v334 = 0;
LABEL_283:
          v341 = 4 * v334;
          do
          {
            v342 = &v328[v341];
            *v342 = *&v312[v341];
            v342[1] = *&v312[v341 + 8];
            v334 += 4;
            v341 += 16;
          }

          while (v334 <= v317 - 4);
          goto LABEL_285;
        }

        v335 = 0;
        v336 = v327 & 0x3FFFFFFC;
        do
        {
          v338 = *&v312[v335];
          v337 = *&v312[v335 + 16];
          v339 = *&v312[v335 + 48];
          v340 = &v328[v335];
          v340[2] = *&v312[v335 + 32];
          v340[3] = v339;
          *v340 = v338;
          v340[1] = v337;
          v335 += 64;
          v336 -= 4;
        }

        while (v336);
        v334 = 4 * (v327 & 0x3FFFFFFC);
        if (v327 != (v327 & 0x3FFFFFFC))
        {
          goto LABEL_283;
        }

LABEL_285:
        v333 = v334;
        if (v334 >= v317)
        {
          goto LABEL_274;
        }

LABEL_286:
        if (v333 + 1 > v317)
        {
          v343 = v333 + 1;
        }

        else
        {
          v343 = v317;
        }

        v344 = v343 - v333;
        if ((v343 - v333) < 8)
        {
          v345 = v333;
          do
          {
LABEL_297:
            *&v328[4 * v345] = *&v312[4 * v345];
            ++v345;
          }

          while (v345 < v317);
          goto LABEL_274;
        }

        if (&v320[(v315 - v233) * v316] < 0x20)
        {
          v345 = v333;
          goto LABEL_297;
        }

        v345 = (v344 & 0xFFFFFFFFFFFFFFF8) + v333;
        v346 = 4 * v333;
        v347 = v344 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v348 = *&v312[v346 + 16];
          v349 = &v328[v346];
          *v349 = *&v312[v346];
          v349[1] = v348;
          v346 += 32;
          v347 -= 8;
        }

        while (v347);
        if (v344 != (v344 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_297;
        }

LABEL_274:
        v312 += v233;
        v328 += v315;
        ++v316;
        --v313;
      }

      while (v313);
      v312 = v384;
      v276 = v373;
      v277 = v372;
      v280 = v371;
      if (v385 < v396)
      {
        goto LABEL_302;
      }

LABEL_305:
      v399[0] = __PAIR64__(v301, v293);
      v397 = v283;
      v398 = v395;
      (v375)(v289, v294, v312, v315, v382, v377, v378 + v380, v379, a6, a7, v399, &v397, v285);
      v284 += v286;
      v285 = v361 | 0x10;
      v278 = v396;
      if (v284 >= v396)
      {
LABEL_215:
        v279 = v283 + v367;
        if (v283 + v367 < v276)
        {
          goto LABEL_216;
        }

        v263 = v351;
        v21 = v352;
        v275 = v356;
LABEL_209:
        v275 += v395;
        if (v275 < v21)
        {
          goto LABEL_210;
        }

        break;
      }
    }
  }

LABEL_144:
  if (v402 != v404 && v402)
  {
    operator delete[]();
  }

LABEL_147:
  if (v401)
  {
    sub_1002ACC1C(v400);
  }
}

void sub_100254B64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a67 != a13 && a67)
  {
    operator delete[]();
  }

  if (a66)
  {
    sub_1002ACC1C(&a64);
  }

  _Unwind_Resume(a1);
}

_BYTE *sub_100254BEC(_BYTE *a1, unint64_t a2, _DWORD *a3, unint64_t a4, float *a5, unint64_t a6, float *a7, unint64_t a8, double a9, double a10, int *a11, int *a12, char a13)
{
  v15 = a10;
  v16 = a9;
  v18 = a12[1];
  v19 = *a12;
  v20 = v19;
  v21 = *a11;
  v22 = a11[1];
  v23 = v284;
  v282 = v284;
  v283 = 264;
  v24 = a2 >> 2;
  v25 = a4 >> 2;
  v26 = a6 >> 2;
  v256 = a8 >> 2;
  v258 = v18;
  if ((a13 & 4) != 0)
  {
    v27 = 1;
  }

  else
  {
    v27 = a6 >> 2;
  }

  if ((a13 & 4) == 0)
  {
    v26 = 1;
  }

  if (a5)
  {
    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  if (a5)
  {
    v29 = v26;
  }

  else
  {
    v29 = 0;
  }

  v259 = v28;
  v278 = v19;
  if (a13)
  {
    v31 = 1;
    if (a2 >= 8 && v22 >= 2)
    {
      v283 = v22;
      if (v22 >= 0x109)
      {
        operator new[]();
      }

      v31 = 1;
      v261 = v284;
      if ((a13 & 2) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_148;
    }

    v21 = v22;
    v30 = a2 >> 2;
    if (v22 == 1)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v30 = 1;
    v31 = a2 >> 2;
    if (v21 == 1)
    {
LABEL_14:
      if (a2 < 8 || v22 < 2)
      {
        v32 = a3;
        if (a4 >= 8)
        {
LABEL_218:
          if (v19 > 0x108)
          {
            operator new[]();
          }

          if (v19 >= 1)
          {
            v221 = 0;
            do
            {
              *&v280[v221] = *v32;
              v221 += 4;
              v32 += v25;
            }

            while (4 * v19 != v221);
          }

          v32 = v280;
        }

LABEL_224:
        if (v18 < 1)
        {
          goto LABEL_240;
        }

        v222 = 0;
        while (1)
        {
          v223 = *&a1[4 * v222] * v16;
          if (v19 >= 2)
          {
            v224 = 0;
            v226 = (v32 + 1);
            v227 = a7;
            v225 = a5;
            do
            {
              v231 = v223 * *(v226 - 1);
              v229 = v223 * *v226;
              if (v225)
              {
                v228 = v231 + *v225 * v15;
                *v227 = v228;
                v229 = v229 + v225[v29] * v15;
              }

              else
              {
                v232 = v231;
                *v227 = v232;
              }

              v224 += 2;
              v230 = v229;
              v227[1] = v230;
              v225 += 2 * v29;
              v227 += 2;
              v226 += 2;
            }

            while (v224 <= (v19 - 2));
            v224 = v224;
            if (v224 < v19)
            {
              do
              {
LABEL_238:
                v234 = v223 * *&v32[v224];
                if (v225)
                {
                  v234 = v234 + *v225 * v15;
                }

                v233 = v234;
                a7[v224++] = v233;
                v225 += v29;
              }

              while (v19 != v224);
            }
          }

          else
          {
            v224 = 0;
            v225 = a5;
            if (v19 > 0)
            {
              goto LABEL_238;
            }
          }

          ++v222;
          a5 += v28;
          a7 += v256;
          if (v222 == v18)
          {
            goto LABEL_240;
          }
        }
      }

      v283 = v18;
      v32 = a3;
      if (v18 >= 0x109)
      {
        operator new[]();
      }

      if (v18 >= 1)
      {
        if (v18 == 1)
        {
          v215 = 0;
LABEL_215:
          v220 = &a1[4 * v215 * v24];
          do
          {
            *&v284[4 * v215++] = *v220;
            v220 += v24;
          }

          while (v18 != v215);
          goto LABEL_217;
        }

        v215 = v18 & 0x1FE;
        v216 = &v285;
        v217 = v18 & 0x7FFFFFFE;
        v218 = a1;
        do
        {
          v219 = v218[v24];
          *(v216 - 1) = *v218;
          *v216 = v219;
          v218 += 2 * v24;
          v216 += 2;
          v217 -= 2;
        }

        while (v217);
        if (v215 != v18)
        {
          goto LABEL_215;
        }
      }

LABEL_217:
      a1 = v284;
      if (a4 >= 8)
      {
        goto LABEL_218;
      }

      goto LABEL_224;
    }
  }

  v23 = 0;
  v24 = v30;
  LODWORD(v22) = v21;
  v261 = 0;
  if ((a13 & 2) == 0)
  {
LABEL_28:
    if (4 * v19 <= 0x640)
    {
      if (v18 < 1)
      {
        goto LABEL_240;
      }

      v33 = 0;
      v34 = a9 * 0.0;
      if (v23)
      {
        v35 = v22 < 1;
      }

      else
      {
        v35 = 1;
      }

      v36 = v35;
      v37 = v22 >= 8 && v24 == 1;
      v38 = 4 * v31;
      v39 = !v37;
      v40 = 4 * v24;
      v41 = 4 * v25;
LABEL_44:
      if (v23)
      {
        v42 = v23;
      }

      else
      {
        v42 = a1;
      }

      if ((v36 & 1) == 0)
      {
        v43 = 0;
        if (v39)
        {
          goto LABEL_51;
        }

        do
        {
          v44 = *&a1[v43 + 16];
          v45 = (v23 + v43);
          *v45 = *&a1[v43];
          v45[1] = v44;
          v43 += 32;
        }

        while (32 * ((v22 >> 3) & 0xFFFFFFF) != v43);
        v43 = v22 & 0x7FFFFFF8;
        v42 = v23;
        if (v43 != v22)
        {
LABEL_51:
          v46 = v40 * v43;
          do
          {
            v23[v43++] = *&a1[v46];
            v46 += v40;
          }

          while (v22 != v43);
          v42 = v23;
        }
      }

      if (v19 < 4)
      {
        v47 = 0;
        v48 = a5;
        if (v19 > 0)
        {
          goto LABEL_67;
        }

        goto LABEL_43;
      }

      v47 = 0;
      v49 = a3;
      v48 = a5;
      while (1)
      {
        v57 = 0uLL;
        v58 = 0.0;
        if (v22 < 1)
        {
          v50 = v16 * 0.0;
          v51 = &a7[v47];
          if (!v48)
          {
            goto LABEL_65;
          }
        }

        else
        {
          v59 = v49;
          v60 = v42;
          v61 = v22;
          v62 = 0.0;
          do
          {
            v63 = *v60++;
            v62 = v62 + v63 * *v59;
            v57 = vmlaq_n_f64(v57, vcvtq_f64_f32(*(v59 + 1)), v63);
            v58 = v58 + v63 * *(v59 + 3);
            v59 = (v59 + v41);
            --v61;
          }

          while (v61);
          v50 = v62 * v16;
          v51 = &a7[v47];
          if (!v48)
          {
LABEL_65:
            v64 = v50;
            *v51 = v64;
            *(v51 + 1) = vcvt_f32_f64(vmulq_n_f64(v57, v16));
            v55 = v58 * v16;
            goto LABEL_60;
          }
        }

        v52 = v50 + *v48 * v15;
        *v51 = v52;
        v53 = v16 * v57.f64[0] + v48[v29] * v15;
        v51[1] = v53;
        v54 = vmuld_lane_f64(v16, v57, 1) + v48[2 * v29] * v15;
        v51[2] = v54;
        v55 = v58 * v16 + v48[3 * v29] * v15;
LABEL_60:
        v56 = v55;
        v51[3] = v56;
        v47 += 4;
        v48 += 4 * v29;
        v49 += 4;
        if (v47 > v19 - 4)
        {
          v47 = v47;
          if (v47 < v19)
          {
LABEL_67:
            if (v22 <= 0)
            {
              do
              {
                v74 = v16 * 0.0;
                if (v48)
                {
                  v74 = v34 + *v48 * v15;
                }

                v73 = v74;
                a7[v47++] = v73;
                v48 += v29;
              }

              while (v19 != v47);
            }

            else
            {
              v65 = &a3[v47];
              do
              {
                v67 = 0.0;
                v68 = v65;
                v69 = v42;
                v70 = v22;
                do
                {
                  v71 = *v69++;
                  v67 = v67 + v71 * *v68;
                  v68 = (v68 + v41);
                  --v70;
                }

                while (v70);
                v72 = v67 * v16;
                if (v48)
                {
                  v72 = v72 + *v48 * v15;
                }

                v66 = v72;
                a7[v47++] = v66;
                v48 += v29;
                ++v65;
              }

              while (v47 != v19);
            }
          }

LABEL_43:
          ++v33;
          a1 += v38;
          v23 = v261;
          a5 += v259;
          a7 += v256;
          if (v33 == v18)
          {
            goto LABEL_240;
          }

          goto LABEL_44;
        }
      }
    }

    if (v19 >= 0x89)
    {
      operator new[]();
    }

    v263 = a5;
    if (v18 < 1)
    {
      goto LABEL_240;
    }

    v75 = 0;
    v254 = 8 * v19;
    v76 = a4 >> 2;
    v77 = v19 - 4;
    if (v23)
    {
      v78 = v22 < 1;
    }

    else
    {
      v78 = 1;
    }

    v79 = v78;
    v272 = v79;
    v80 = 3;
    if (v77 > 3)
    {
      v80 = v19 - 4;
    }

    v81 = (v80 >> 2) + 1;
    v82 = v81 & 0x3FFFFFFE;
    v83 = 4 * v82;
    v270 = 4 * v31;
    v84 = 32 * ((v22 >> 3) & 0xFFFFFFF);
    v85 = 4 * v24;
    v87 = v22 < 8 || v24 != 1;
    v249 = v87;
    v268 = 4 * v76;
    v266 = 4 * v256;
    v260 = 4 * v28;
    v88 = 4 * v29;
    v89 = (a7 + 4);
    v252 = v81;
    v251 = v81 & 0x3FFFFFFE;
    v257 = v88;
    while (1)
    {
      if (v23)
      {
        v90 = v23;
      }

      else
      {
        v90 = a1;
      }

      if ((v272 & 1) == 0)
      {
        if (v249)
        {
          v91 = 0;
LABEL_107:
          v95 = v85 * v91;
          do
          {
            v23[v91++] = *&a1[v95];
            v95 += v85;
          }

          while (v22 != v91);
          v90 = v23;
          goto LABEL_110;
        }

        v92 = 0;
        do
        {
          v93 = *&a1[v92 + 16];
          v94 = &v23[v92 / 4];
          *v94 = *&a1[v92];
          *(v94 + 1) = v93;
          v92 += 32;
        }

        while (v84 != v92);
        v91 = v22 & 0x7FFFFFF8;
        v90 = v23;
        if (v91 != v22)
        {
          goto LABEL_107;
        }
      }

LABEL_110:
      if (v20 >= 1)
      {
        v96 = v75;
        v276 = a1;
        v274 = v89;
        v97 = v83;
        v98 = v85;
        bzero(v280, v254);
        v82 = v251;
        v85 = v98;
        v84 = 32 * ((v22 >> 3) & 0xFFFFFFF);
        v81 = v252;
        v83 = v97;
        v89 = v274;
        a1 = v276;
        v75 = v96;
        v88 = v257;
        LODWORD(v18) = v258;
        v23 = v261;
        v16 = a9;
      }

      if (v22 >= 1)
      {
        v99 = 0;
        v100 = a3;
        while (1)
        {
          *&v101 = v90[v99];
          if (v20 < 4)
          {
            v102 = 0;
            if (v278 <= 0)
            {
              goto LABEL_114;
            }

            goto LABEL_126;
          }

          if (v77 <= 3)
          {
            break;
          }

          v104 = vdupq_lane_s64(v101, 0);
          v105 = v82;
          v106 = v100;
          v107 = v280;
          do
          {
            v287 = vld4q_f64(v107);
            v286 = vld4_f32(v106);
            v106 += 8;
            v287.val[0] = vmlaq_f64(v287.val[0], v104, vcvtq_f64_f32(v286.val[0]));
            v287.val[1] = vmlaq_f64(v287.val[1], v104, vcvtq_f64_f32(v286.val[1]));
            v287.val[2] = vmlaq_f64(v287.val[2], v104, vcvtq_f64_f32(v286.val[2]));
            v287.val[3] = vmlaq_f64(v287.val[3], v104, vcvtq_f64_f32(v286.val[3]));
            vst4q_f64(v107, v287);
            v107 += 8;
            v105 -= 2;
          }

          while (v105);
          v103 = v83;
          if (v81 != v82)
          {
            goto LABEL_123;
          }

LABEL_125:
          v102 = v103;
          if (v103 >= v278)
          {
            goto LABEL_114;
          }

LABEL_126:
          v114 = v20 - v102;
          if ((v20 - v102) > 3)
          {
            v115 = (v114 & 0xFFFFFFFFFFFFFFFCLL) + v102;
            v116 = vdupq_lane_s64(v101, 0);
            v117 = &v280[8 * v102 + 16];
            v118 = &v100[v102];
            v119 = v114 & 0xFFFFFFFFFFFFFFFCLL;
            do
            {
              v120 = *v118;
              v121 = v118[1];
              v118 += 2;
              v122 = vmlaq_f64(*v117, v116, vcvtq_f64_f32(v121));
              v117[-1] = vmlaq_f64(v117[-1], v116, vcvtq_f64_f32(v120));
              *v117 = v122;
              v117 += 2;
              v119 -= 4;
            }

            while (v119);
            if (v114 == (v114 & 0xFFFFFFFFFFFFFFFCLL))
            {
              goto LABEL_114;
            }
          }

          else
          {
            v115 = v102;
          }

          do
          {
            *&v280[8 * v115] = *&v280[8 * v115] + v100[v115] * *&v101;
            ++v115;
          }

          while (v20 != v115);
LABEL_114:
          ++v99;
          v100 = (v100 + v268);
          if (v99 == v22)
          {
            goto LABEL_133;
          }
        }

        v103 = 0;
LABEL_123:
        v108 = vdupq_lane_s64(v101, 0);
        v109 = &v100[v103];
        v110 = &v280[8 * v103 + 16];
        do
        {
          v111 = *v109;
          v112 = v109[1];
          v109 += 2;
          v113 = vmlaq_f64(*v110, v108, vcvtq_f64_f32(v112));
          v110[-1] = vmlaq_f64(v110[-1], v108, vcvtq_f64_f32(v111));
          *v110 = v113;
          v103 += 4;
          v110 += 2;
        }

        while (v103 <= v77);
        goto LABEL_125;
      }

LABEL_133:
      if (v263)
      {
        if (v278 >= 1)
        {
          v123 = 0;
          v124 = v263;
          do
          {
            v125 = *&v280[8 * v123] * v16 + *v124 * v15;
            a7[v123++] = v125;
            v124 = (v124 + v88);
          }

          while (v20 != v123);
        }

        goto LABEL_97;
      }

      if (v20 >= 1)
      {
        if (v278 >= 8)
        {
          v128 = &v281;
          v127 = v20 & 0x7FFFFFF8;
          v129 = v89;
          do
          {
            v130 = v128[-2];
            v131 = v128[-1];
            v132 = *v128;
            v133 = v128[1];
            v128 += 4;
            v129[-1] = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(v130, v16)), vmulq_n_f64(v131, v16));
            *v129 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(v132, v16)), vmulq_n_f64(v133, v16));
            v129 += 2;
            v127 -= 8;
          }

          while (v127);
          v126 = v20 & 0x7FFFFFF8;
          if (v126 == v20)
          {
            goto LABEL_97;
          }
        }

        else
        {
          v126 = 0;
        }

        do
        {
          v134 = *&v280[8 * v126] * v16;
          a7[v126++] = v134;
        }

        while (v20 != v126);
      }

LABEL_97:
      ++v75;
      a1 += v270;
      v263 = (v263 + v260);
      a7 = (a7 + v266);
      v89 = (v89 + v266);
      if (v75 == v18)
      {
        goto LABEL_240;
      }
    }
  }

LABEL_148:
  if (v18 < 1)
  {
    goto LABEL_240;
  }

  if (v19 < 1)
  {
    if (!v23 || v22 < 1)
    {
      goto LABEL_240;
    }

    if (v22 < 8)
    {
      do
      {
        v214 = a1;
        if (v22 != 1)
        {
          v23[1] = *&a1[4 * v24];
          if (v22 != 2)
          {
            v23[2] = *&a1[8 * v24];
            if (v22 != 3)
            {
              v23[3] = *&a1[12 * v24];
              if (v22 != 4)
              {
                v23[4] = *&a1[16 * v24];
                if (v22 != 5)
                {
                  v23[5] = *&a1[20 * v24];
                  if (v22 != 6)
                  {
                    v23[6] = *&a1[24 * v24];
                  }
                }
              }
            }
          }
        }

        a1 += 4 * v31;
        LODWORD(v18) = v18 - 1;
      }

      while (v18);
      *v23 = *v214;
      goto LABEL_240;
    }

    v237 = 0;
    v238 = (a1 + 16);
    v239 = 4 * v31;
    v240 = 4 * v24;
    while (1)
    {
      if (v24 == 1)
      {
        v241 = v22 & 0x7FFFFFF8;
        v242 = v23 + 4;
        v243 = v238;
        do
        {
          v244 = *v243;
          *(v242 - 1) = *(v243 - 1);
          *v242 = v244;
          v243 += 2;
          v242 += 2;
          v241 -= 8;
        }

        while (v241);
        v245 = v22 & 0x7FFFFFF8;
        if (v245 == v22)
        {
          goto LABEL_247;
        }
      }

      else
      {
        v245 = 0;
      }

      v246 = v22 - v245;
      v247 = &v23[v245];
      v248 = v240 * v245;
      do
      {
        *v247++ = *&a1[v248];
        v248 += v240;
        --v246;
      }

      while (v246);
LABEL_247:
      ++v237;
      v238 = (v238 + v239);
      a1 += v239;
      if (v237 == v18)
      {
        goto LABEL_240;
      }
    }
  }

  v135 = 0;
  v136 = v22 - 4;
  if (v23)
  {
    v137 = v22 < 1;
  }

  else
  {
    v137 = 1;
  }

  v138 = v137;
  v255 = v138;
  v139 = 3;
  if (v136 > 3)
  {
    v139 = v22 - 4;
  }

  v140 = (v139 >> 2) + 1;
  v253 = 4 * v31;
  v142 = v22 < 8 || v24 != 1;
  v250 = v142;
  v143 = 4 * v24;
  v144 = 4 * v25;
  while (2)
  {
    if (v23)
    {
      v145 = v23;
    }

    else
    {
      v145 = a1;
    }

    if (v255)
    {
      goto LABEL_178;
    }

    if (v250)
    {
      v146 = 0;
    }

    else
    {
      v147 = 0;
      do
      {
        v148 = *&a1[v147 * 4 + 16];
        v149 = &v23[v147];
        *v149 = *&a1[v147 * 4];
        *(v149 + 1) = v148;
        v147 += 8;
      }

      while (8 * ((v22 >> 3) & 0xFFFFFFF) != v147);
      v146 = v22 & 0x7FFFFFF8;
      v145 = v23;
      if (v146 == v22)
      {
        goto LABEL_178;
      }
    }

    v150 = v143 * v146;
    do
    {
      v23[v146++] = *&a1[v150];
      v150 += v143;
    }

    while (v22 != v146);
    v145 = v23;
LABEL_178:
    v151 = 0;
    v153 = a3 + 4;
    v152 = (a3 + 16);
    v155 = a3;
    v154 = a5;
    do
    {
      if (v22 < 4)
      {
        v157 = 0;
        v158 = 0uLL;
        v159 = 0uLL;
        goto LABEL_190;
      }

      if (v136 < 0x1C)
      {
        v160 = 0;
        v158 = 0uLL;
        v159 = 0uLL;
LABEL_187:
        v192 = v160;
        do
        {
          v193 = *&v145[v192];
          v194 = *&v155[v192];
          v159 = vmlaq_f64(v159, vcvt_hight_f64_f32(v194), vcvt_hight_f64_f32(v193));
          v158 = vmlaq_f64(v158, vcvtq_f64_f32(*v194.f32), vcvtq_f64_f32(*v193.f32));
          v160 += 4;
          v192 += 4;
        }

        while (v160 <= v136);
        v157 = ((v22 - 4) & 0xFFFFFFFC) + 4;
        goto LABEL_190;
      }

      v161 = 0.0;
      v162 = v140 & 0x3FFFFFF8;
      v163 = v152;
      v164 = v145 + 16;
      v159.f64[0] = 0.0;
      v165 = 0.0;
      v158.f64[0] = 0.0;
      do
      {
        v279 = v161;
        v166 = v164 - 16;
        v167 = v163 - 16;
        v291 = vld4q_f32(v166);
        v289 = vld4q_f32(v167);
        v290 = vld4q_f32(v164);
        v288 = vld4q_f32(v163);
        v168 = vcvtq_f64_f32(*v291.val[0].f32);
        v169 = vcvt_hight_f64_f32(v291.val[0]);
        v170 = vcvt_hight_f64_f32(v290.val[0]);
        v275 = vcvtq_f64_f32(*v291.val[1].f32);
        v277 = vcvtq_f64_f32(*v290.val[0].f32);
        v269 = v165;
        v271 = vcvt_hight_f64_f32(v291.val[1]);
        v273 = vcvtq_f64_f32(*v290.val[1].f32);
        v171 = vcvt_hight_f64_f32(v290.val[1]);
        v267 = vcvtq_f64_f32(*v291.val[2].f32);
        v172 = vcvt_hight_f64_f32(v291.val[2]);
        v173 = vcvtq_f64_f32(*v290.val[2].f32);
        v174 = vcvtq_f64_f32(*v291.val[3].f32);
        v291.val[0] = vcvt_hight_f64_f32(v291.val[3]);
        v291.val[1] = vcvt_hight_f64_f32(v290.val[2]);
        v291.val[2] = vcvtq_f64_f32(*v289.val[0].f32);
        v291.val[3] = vcvtq_f64_f32(*v290.val[3].f32);
        v290.val[0] = vcvt_hight_f64_f32(v290.val[3]);
        v290.val[1] = vcvt_hight_f64_f32(v289.val[0]);
        v290.val[2] = vcvtq_f64_f32(*v289.val[1].f32);
        v290.val[3] = vcvt_hight_f64_f32(v289.val[1]);
        v175 = vcvtq_f64_f32(*v289.val[2].f32);
        v176 = vcvt_hight_f64_f32(v289.val[2]);
        v177 = vcvtq_f64_f32(*v289.val[3].f32);
        v289.val[0] = vcvt_hight_f64_f32(v289.val[3]);
        v289.val[1] = vcvtq_f64_f32(*v288.val[0].f32);
        v289.val[2] = vcvt_hight_f64_f32(v288.val[0]);
        v289.val[3] = vcvtq_f64_f32(*v288.val[1].f32);
        v178 = vcvt_hight_f64_f32(v288.val[1]);
        v179 = vcvtq_f64_f32(*v288.val[2].f32);
        v180 = vcvt_hight_f64_f32(v288.val[2]);
        v181 = vcvtq_f64_f32(*v288.val[3].f32);
        v288.val[0] = vcvt_hight_f64_f32(v288.val[3]);
        v182 = vmulq_f64(v169, v290.val[1]);
        v288.val[1] = vmulq_f64(v168, v291.val[2]);
        v183 = vmulq_f64(v170, v289.val[2]);
        v184 = vmulq_f64(v277, v289.val[1]);
        v185 = vmulq_f64(v271, v290.val[3]);
        v186 = vmulq_f64(v171, v178);
        v187 = vmulq_f64(v275, v290.val[2]);
        v188 = vmulq_f64(v273, v289.val[3]);
        v189 = vmulq_f64(v172, v176);
        v190 = vmulq_f64(v267, v175);
        v289.val[2] = vmulq_f64(v291.val[1], v180);
        v289.val[3] = vmulq_f64(v173, v179);
        v289.val[0] = vmulq_f64(v291.val[0], v289.val[0]);
        v191 = vmulq_f64(v174, v177);
        v288.val[0] = vmulq_f64(v290.val[0], v288.val[0]);
        v290.val[0] = vmulq_f64(v291.val[3], v181);
        v161 = v279 + v191.f64[0] + v191.f64[1] + *v289.val[0].i64 + *&v289.val[0].i64[1] + *v290.val[0].i64 + *&v290.val[0].i64[1] + *v288.val[0].i64 + *&v288.val[0].i64[1];
        v159.f64[0] = v159.f64[0] + v190.f64[0] + v190.f64[1] + v189.f64[0] + v189.f64[1] + *v289.val[3].i64 + *&v289.val[3].i64[1] + *v289.val[2].i64 + *&v289.val[2].i64[1];
        v165 = v269 + v187.f64[0] + v187.f64[1] + v185.f64[0] + v185.f64[1] + v188.f64[0] + v188.f64[1] + v186.f64[0] + v186.f64[1];
        v158.f64[0] = v158.f64[0] + *v288.val[1].i64 + *&v288.val[1].i64[1] + v182.f64[0] + v182.f64[1] + v184.f64[0] + v184.f64[1] + v183.f64[0] + v183.f64[1];
        v164 += 32;
        v163 += 32;
        v162 -= 8;
      }

      while (v162);
      v159.f64[1] = v161;
      v158.f64[1] = v269 + v187.f64[0] + v187.f64[1] + v185.f64[0] + v185.f64[1] + v188.f64[0] + v188.f64[1] + v186.f64[0] + v186.f64[1];
      v157 = ((v22 - 4) & 0xFFFFFFFC) + 4;
      v160 = 4 * (v140 & 0x3FFFFFF8);
      v15 = a10;
      v16 = a9;
      if (v140 != (v140 & 0x3FFFFFF8))
      {
        goto LABEL_187;
      }

LABEL_190:
      if (v157 >= v22)
      {
        v198 = v158.f64[0];
        goto LABEL_199;
      }

      v195 = v157;
      v196 = (v22 + ~v157);
      if (v196 <= 6)
      {
        v197 = v195;
        v198 = v158.f64[0];
LABEL_197:
        v212 = v197;
        do
        {
          v198 = v198 + v145[v212] * *&v155[v212];
          LODWORD(v197) = v197 + 1;
          ++v212;
        }

        while (v22 > v197);
        goto LABEL_199;
      }

      v199 = v196 + 1;
      v200 = (v196 + 1) & 0x1FFFFFFF8;
      v197 = v200 + v195;
      v201 = v195;
      v202 = &v153[v195];
      v203 = &v145[v201 + 4];
      v204 = v200;
      v198 = v158.f64[0];
      do
      {
        v205 = v203[-1];
        v206 = vcvtq_f64_f32(*v205.f32);
        v207 = v202[-1];
        v208 = vmulq_f64(vcvt_hight_f64_f32(v205), vcvt_hight_f64_f32(v207));
        v209 = vmulq_f64(v206, vcvtq_f64_f32(*v207.f32));
        v210 = vmulq_f64(vcvt_hight_f64_f32(*v203), vcvt_hight_f64_f32(*v202));
        v211 = vmulq_f64(vcvtq_f64_f32(*v203->f32), vcvtq_f64_f32(*v202->f32));
        v198 = v198 + v209.f64[0] + v209.f64[1] + v208.f64[0] + v208.f64[1] + v211.f64[0] + v211.f64[1] + v210.f64[0] + v210.f64[1];
        v202 += 2;
        v203 += 2;
        v204 -= 8;
      }

      while (v204);
      if (v199 != v200)
      {
        goto LABEL_197;
      }

LABEL_199:
      v213 = (v159.f64[1] + v159.f64[0] + v158.f64[1] + v198) * v16;
      if (v154)
      {
        v213 = v213 + *v154 * v15;
      }

      v156 = v213;
      a7[v151] = v156;
      v154 += v29;
      ++v151;
      v152 = (v152 + v144);
      v155 = (v155 + v144);
      v153 = (v153 + v144);
    }

    while (v151 != v20);
    ++v135;
    a1 += v253;
    v23 = v261;
    a5 += v259;
    a7 += v256;
    if (v135 != v258)
    {
      continue;
    }

    break;
  }

LABEL_240:
  result = v282;
  if (v282 != v284 && v282 != 0)
  {
    operator delete[]();
  }

  return result;
}

void sub_100255E50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (STACK[0x568] != a14)
  {
    if (STACK[0x568])
    {
      operator delete[]();
    }
  }

  _Unwind_Resume(a1);
}

_BYTE *sub_100255EB4(_DWORD *a1, unint64_t a2, float *a3, unint64_t a4, double *a5, unint64_t a6, int *a7, int *a8, char a9)
{
  v11 = *a7;
  v12 = a7[1];
  v13 = a8[1];
  v14 = *a8;
  v15 = a2 >> 2;
  v177 = v13;
  v176 = a3;
  if (a9)
  {
    if (v12 >= 0x109)
    {
      operator new[]();
    }

    v17 = 1;
    v16 = v181;
  }

  else
  {
    v16 = 0;
    v12 = v11;
    v17 = a2 >> 2;
    v15 = 1;
  }

  v18 = v14;
  v19 = a4 >> 2;
  v20 = a6 >> 3;
  v180 = v14;
  v175 = a6 >> 3;
  if ((a9 & 2) == 0)
  {
    if (v13 < 1)
    {
      return v181;
    }

    v21 = 0;
    v22 = v14 - 4;
    if (v16)
    {
      v23 = v12 < 1;
    }

    else
    {
      v23 = 1;
    }

    v24 = v23;
    v25 = 4 * v17;
    v26 = v12 & 0x7FFFFFF8;
    v28 = v12 < 8 || v15 != 1;
    v29 = 4 * v15;
    v30 = (a3 + 2);
    v31 = 4 * v19;
    v173 = v14;
    v171 = v24;
    v169 = v25;
    v167 = v28;
    v165 = a3 + 2;
    while (1)
    {
      if (v16)
      {
        v32 = v16;
      }

      else
      {
        v32 = a1;
      }

      if (v24)
      {
        goto LABEL_34;
      }

      if (v28)
      {
        v33 = 0;
      }

      else
      {
        v34 = 0;
        do
        {
          v35 = *&a1[v34 + 4];
          v36 = &v16[v34];
          *v36 = *&a1[v34];
          v36[1] = v35;
          v34 += 8;
        }

        while (8 * ((v12 >> 3) & 0xFFFFFFF) != v34);
        v33 = v26;
        v32 = v16;
        if (v26 == v12)
        {
          goto LABEL_34;
        }
      }

      v37 = v29 * v33;
      do
      {
        v16[v33++] = *(a1 + v37);
        v37 += v29;
      }

      while (v12 != v33);
      v32 = v16;
LABEL_34:
      if (v14 >= 4)
      {
        v38 = 0;
        v50 = v30;
        do
        {
          v51 = 0uLL;
          v52 = &a5[v38];
          v53 = 0uLL;
          if ((a9 & 0x10) != 0)
          {
            v51 = *v52;
            v53 = v52[1];
          }

          if (v12 >= 1)
          {
            v54 = v50;
            v55 = v32;
            v56 = v12;
            do
            {
              v57 = *v55++;
              v51 = vmlaq_n_f64(v51, vcvtq_f64_f32(v54[-1]), v57);
              v53 = vmlaq_n_f64(v53, vcvtq_f64_f32(*v54), v57);
              v54 = (v54 + v31);
              --v56;
            }

            while (v56);
          }

          *v52 = v51;
          v52[1] = v53;
          v38 += 4;
          v50 += 2;
        }

        while (v38 <= v22);
      }

      else
      {
        LODWORD(v38) = 0;
      }

      if (v38 < v18)
      {
        if (v12 < 1)
        {
          if ((a9 & 0x10) == 0)
          {
            v178 = v21;
            bzero(&a5[v38], 8 * (v14 + ~v38) + 8);
            v30 = v165;
            v28 = v167;
            v26 = v12 & 0x7FFFFFF8;
            v25 = v169;
            v24 = v171;
            v13 = v177;
            v21 = v178;
            LODWORD(v14) = v173;
            v20 = v175;
            a3 = v176;
            v18 = v180;
          }
        }

        else
        {
          v38 = v38;
          v39 = &a3[v38];
          if ((a9 & 0x10) != 0)
          {
            do
            {
              v45 = a5[v38];
              v46 = v39;
              v47 = v32;
              v48 = v12;
              do
              {
                v49 = *v47++;
                v45 = v45 + v49 * *v46;
                v46 = (v46 + v31);
                --v48;
              }

              while (v48);
              a5[v38++] = v45;
              ++v39;
            }

            while (v38 != v18);
          }

          else
          {
            do
            {
              v40 = 0.0;
              v41 = v39;
              v42 = v32;
              v43 = v12;
              do
              {
                v44 = *v42++;
                v40 = v40 + v44 * *v41;
                v41 = (v41 + v31);
                --v43;
              }

              while (v43);
              a5[v38++] = v40;
              ++v39;
            }

            while (v38 != v18);
          }
        }
      }

      ++v21;
      a1 = (a1 + v25);
      a5 += v20;
      if (v21 == v13)
      {
        return v181;
      }
    }
  }

  if (v13 < 1)
  {
    return v181;
  }

  if (v14 < 1)
  {
    if (!v16 || v12 < 1)
    {
      return v181;
    }

    if (v12 < 8)
    {
      do
      {
        v65 = a1;
        if (v12 != 1)
        {
          v16[1] = a1[v15];
          if (v12 != 2)
          {
            v16[2] = a1[2 * v15];
            if (v12 != 3)
            {
              v16[3] = a1[3 * v15];
              if (v12 != 4)
              {
                v16[4] = a1[4 * v15];
                if (v12 != 5)
                {
                  v16[5] = a1[5 * v15];
                  if (v12 != 6)
                  {
                    v16[6] = a1[6 * v15];
                  }
                }
              }
            }
          }
        }

        a1 += v17;
        --v13;
      }

      while (v13);
      *v16 = *v65;
      return v181;
    }

    v136 = 0;
    v137 = (a1 + 4);
    v138 = 4 * v17;
    v139 = 4 * v15;
    while (1)
    {
      if (v15 == 1)
      {
        v140 = v12 & 0x7FFFFFF8;
        v141 = v16 + 4;
        v142 = v137;
        do
        {
          v143 = *v142;
          *(v141 - 1) = *(v142 - 1);
          *v141 = v143;
          v142 += 2;
          v141 += 2;
          v140 -= 8;
        }

        while (v140);
        v144 = v12 & 0x7FFFFFF8;
        if (v144 == v12)
        {
          goto LABEL_140;
        }
      }

      else
      {
        v144 = 0;
      }

      v145 = v12 - v144;
      v146 = &v16[v144];
      v147 = v139 * v144;
      do
      {
        *v146++ = *(a1 + v147);
        v147 += v139;
        --v145;
      }

      while (v145);
LABEL_140:
      ++v136;
      v137 = (v137 + v138);
      a1 = (a1 + v138);
      if (v136 == v13)
      {
        return v181;
      }
    }
  }

  if (v12 <= 1)
  {
    if (v12 >= 1)
    {
      v58 = 0;
      v59 = 8 * v14;
      v60 = 4 * v19;
      do
      {
        v61 = a1;
        if (v16)
        {
          *v16 = *a1;
          v61 = v16;
        }

        v62 = *v61;
        v63 = 0;
        v64 = a3;
        if ((a9 & 0x10) != 0)
        {
          do
          {
            a5[v63 / 8] = a5[v63 / 8] + v62 * *v64 + 0.0;
            v63 += 8;
            v64 = (v64 + v60);
          }

          while (v59 != v63);
        }

        else
        {
          do
          {
            a5[v63 / 8] = v62 * *v64 + 0.0 + 0.0;
            v63 += 8;
            v64 = (v64 + v60);
          }

          while (v59 != v63);
        }

        ++v58;
        a1 += v17;
        a5 += v20;
      }

      while (v58 != v13);
      return v181;
    }

    if ((a9 & 0x10) == 0)
    {
      v132 = 8 * v14;
      v133 = 8 * v20;
      if (v16)
      {
        do
        {
          v134 = v13;
          bzero(a5, v132);
          a5 = (a5 + v133);
          v13 = v134 - 1;
        }

        while (v134 != 1);
      }

      else
      {
        do
        {
          v135 = v13;
          bzero(a5, v132);
          a5 = (a5 + v133);
          v13 = v135 - 1;
        }

        while (v135 != 1);
      }

      return v181;
    }

    v149 = v14 & 0x7FFFFFFC;
    if (v16)
    {
      if (v14 >= 4)
      {
        v158 = 0;
        v159 = (a5 + 2);
        v160 = 8 * v20;
        do
        {
          v161 = v14 & 0x7FFFFFFC;
          v162 = v159;
          do
          {
            v163 = vaddq_f64(*v162, 0);
            v162[-1] = vaddq_f64(v162[-1], 0);
            *v162 = v163;
            v162 += 2;
            v161 -= 4;
          }

          while (v161);
          if (v149 != v14)
          {
            v164 = v14 & 0x7FFFFFFC;
            do
            {
              a5[v164] = a5[v164] + 0.0;
              ++v164;
            }

            while (v14 != v164);
          }

          ++v158;
          v159 = (v159 + v160);
          a5 = (a5 + v160);
        }

        while (v158 != v13);
      }

      else
      {
        v150 = a5 + 2;
        do
        {
          *(v150 - 2) = *(v150 - 2) + 0.0;
          if (v14 != 1)
          {
            *(v150 - 1) = *(v150 - 1) + 0.0;
            if (v14 != 2)
            {
              *v150 = *v150 + 0.0;
            }
          }

          v150 += v20;
          --v13;
        }

        while (v13);
      }

      return v181;
    }

    v151 = 0;
    v152 = (a5 + 2);
    v153 = 8 * v20;
    while (1)
    {
      if (v14 >= 4)
      {
        v155 = v14 & 0x7FFFFFFC;
        v156 = v152;
        do
        {
          v157 = vaddq_f64(*v156, 0);
          v156[-1] = vaddq_f64(v156[-1], 0);
          *v156 = v157;
          v156 += 2;
          v155 -= 4;
        }

        while (v155);
        v154 = v14 & 0x7FFFFFFC;
        if (v149 == v14)
        {
          goto LABEL_160;
        }
      }

      else
      {
        v154 = 0;
      }

      do
      {
        a5[v154] = a5[v154] + 0.0;
        ++v154;
      }

      while (v14 != v154);
LABEL_160:
      ++v151;
      v152 = (v152 + v153);
      a5 = (a5 + v153);
      if (v151 == v13)
      {
        return v181;
      }
    }
  }

  v66 = 0;
  v67 = (v12 - 2);
  v68 = (v67 & 0xFFFFFFFE) + 2;
  v69 = (v67 & 0xFFFFFFFE) + 3;
  if (v12 > v69)
  {
    v69 = v12;
  }

  v70 = v69 - (v67 & 0xFFFFFFFE) - 3;
  v71 = (v67 >> 1) + 1;
  v72 = v71 & 0x7FFFFFF8;
  v73 = (v70 + 1) & 0x1FFFFFFF8;
  v75 = v12 < 8 || v15 != 1;
  v170 = v75;
  v174 = 4 * v17;
  v76 = 4 * v15;
  v172 = a3 + 8;
  v77 = 4 * v19;
  v168 = 4 * ((v67 & 0xFFFFFFFE) + 2) + 16;
  v166 = (a3 + v168);
  while (2)
  {
    v78 = a1;
    if (!v16)
    {
      goto LABEL_101;
    }

    if (v170)
    {
      v79 = 0;
    }

    else
    {
      v80 = 0;
      do
      {
        v81 = *&a1[v80 + 4];
        v82 = &v16[v80];
        *v82 = *&a1[v80];
        v82[1] = v81;
        v80 += 8;
      }

      while (8 * ((v12 >> 3) & 0xFFFFFFF) != v80);
      v79 = v12 & 0x7FFFFFF8;
      v78 = v16;
      if (v79 == v12)
      {
        goto LABEL_101;
      }
    }

    v83 = v76 * v79;
    do
    {
      v16[v79++] = *(a1 + v83);
      v83 += v76;
    }

    while (v12 != v79);
    v78 = v16;
LABEL_101:
    v179 = v66;
    if (v68 < v12)
    {
      v84 = 0;
      v85 = v166;
      v86 = a3;
      v87 = v172;
      while (1)
      {
        v88.f64[0] = 0.0;
        if ((a9 & 0x10) != 0)
        {
          v88.f64[0] = a5[v84];
        }

        if (v67 < 0xE)
        {
          break;
        }

        v90 = 0.0;
        v91 = v71 & 0x7FFFFFF8;
        v92 = v87;
        v93 = (v78 + 8);
        do
        {
          v94 = v93 - 8;
          v182 = vld2q_f32(v94);
          v184 = vld2q_f32(v93);
          v95 = v92 - 8;
          v186 = vld2q_f32(v95);
          v188 = vld2q_f32(v92);
          v96 = vmulq_f64(vcvt_hight_f64_f32(v182.val[0]), vcvt_hight_f64_f32(v186.val[0]));
          v97 = vmulq_f64(vcvtq_f64_f32(*v182.val[0].f32), vcvtq_f64_f32(*v186.val[0].f32));
          v98 = vmulq_f64(vcvt_hight_f64_f32(v184.val[0]), vcvt_hight_f64_f32(v188.val[0]));
          v99 = vmulq_f64(vcvtq_f64_f32(*v184.val[0].f32), vcvtq_f64_f32(*v188.val[0].f32));
          v100 = vcvtq_f64_f32(*v182.val[1].f32);
          v182.val[0] = vcvt_hight_f64_f32(v182.val[1]);
          v182.val[1] = vcvtq_f64_f32(*v184.val[1].f32);
          v184.val[0] = vcvt_hight_f64_f32(v184.val[1]);
          v182.val[0] = vmulq_f64(v182.val[0], vcvt_hight_f64_f32(v186.val[1]));
          v184.val[1] = vmulq_f64(v100, vcvtq_f64_f32(*v186.val[1].f32));
          v184.val[0] = vmulq_f64(v184.val[0], vcvt_hight_f64_f32(v188.val[1]));
          v182.val[1] = vmulq_f64(v182.val[1], vcvtq_f64_f32(*v188.val[1].f32));
          v90 = v90 + *v184.val[1].i64 + *&v184.val[1].i64[1] + *v182.val[0].i64 + *&v182.val[0].i64[1] + *v182.val[1].i64 + *&v182.val[1].i64[1] + *v184.val[0].i64 + *&v184.val[0].i64[1];
          v88.f64[0] = v88.f64[0] + v97.f64[0] + v97.f64[1] + v96.f64[0] + v96.f64[1] + v99.f64[0] + v99.f64[1] + v98.f64[0] + v98.f64[1];
          v93 += 16;
          v92 += 16;
          v91 -= 8;
        }

        while (v91);
        v88.f64[1] = v90;
        v89 = 2 * (v71 & 0x7FFFFFF8);
        if (v71 != v72)
        {
          goto LABEL_111;
        }

LABEL_113:
        if (v70 >= 7)
        {
          v104 = v85;
          v105 = (v78 + v168);
          v106 = (v70 + 1) & 0x1FFFFFFF8;
          v103 = v88.f64[0];
          do
          {
            v107 = v105[-1];
            v108 = vcvtq_f64_f32(*v107.f32);
            v109 = v104[-1];
            v110 = vmulq_f64(vcvt_hight_f64_f32(v107), vcvt_hight_f64_f32(v109));
            v111 = vmulq_f64(v108, vcvtq_f64_f32(*v109.f32));
            v112 = vmulq_f64(vcvt_hight_f64_f32(*v105), vcvt_hight_f64_f32(*v104));
            v113 = vmulq_f64(vcvtq_f64_f32(*v105->f32), vcvtq_f64_f32(*v104->f32));
            v103 = v103 + v111.f64[0] + v111.f64[1] + v110.f64[0] + v110.f64[1] + v113.f64[0] + v113.f64[1] + v112.f64[0] + v112.f64[1];
            v105 += 2;
            v104 += 2;
            v106 -= 8;
          }

          while (v106);
          v102 = v73 + v68;
          if (v70 + 1 == v73)
          {
            goto LABEL_103;
          }
        }

        else
        {
          v102 = (v67 & 0xFFFFFFFE) + 2;
          v103 = v88.f64[0];
        }

        v114 = v102;
        do
        {
          v103 = v103 + *&v78[v114] * v86[v114];
          LODWORD(v102) = v102 + 1;
          ++v114;
        }

        while (v12 > v102);
LABEL_103:
        a5[v84++] = v88.f64[1] + v103;
        v87 = (v87 + v77);
        v86 = (v86 + v77);
        v85 = (v85 + v77);
        if (v84 == v180)
        {
          goto LABEL_91;
        }
      }

      v89 = 0;
      v88 = *&v88.f64[0];
LABEL_111:
      v101 = v89;
      do
      {
        v88 = vmlaq_f64(v88, vcvtq_f64_f32(*&v86[v101]), vcvtq_f64_f32(*&v78[v101]));
        v89 += 2;
        v101 += 2;
      }

      while (v89 <= v67);
      goto LABEL_113;
    }

    v115 = 0;
    v116 = a3;
    v117 = v172;
    do
    {
      v118.f64[0] = 0.0;
      if ((a9 & 0x10) != 0)
      {
        v118.f64[0] = a5[v115];
      }

      if (v67 < 0xE)
      {
        v119 = 0;
        v118 = *&v118.f64[0];
LABEL_130:
        v131 = v119;
        do
        {
          v118 = vmlaq_f64(v118, vcvtq_f64_f32(*&v116[v131]), vcvtq_f64_f32(*&v78[v131]));
          v119 += 2;
          v131 += 2;
        }

        while (v119 <= v67);
        goto LABEL_122;
      }

      v120 = 0.0;
      v121 = v71 & 0x7FFFFFF8;
      v122 = v117;
      v123 = (v78 + 8);
      do
      {
        v124 = v123 - 8;
        v183 = vld2q_f32(v124);
        v185 = vld2q_f32(v123);
        v125 = v122 - 8;
        v187 = vld2q_f32(v125);
        v189 = vld2q_f32(v122);
        v126 = vmulq_f64(vcvt_hight_f64_f32(v183.val[0]), vcvt_hight_f64_f32(v187.val[0]));
        v127 = vmulq_f64(vcvtq_f64_f32(*v183.val[0].f32), vcvtq_f64_f32(*v187.val[0].f32));
        v128 = vmulq_f64(vcvt_hight_f64_f32(v185.val[0]), vcvt_hight_f64_f32(v189.val[0]));
        v129 = vmulq_f64(vcvtq_f64_f32(*v185.val[0].f32), vcvtq_f64_f32(*v189.val[0].f32));
        v130 = vcvtq_f64_f32(*v183.val[1].f32);
        v183.val[0] = vcvt_hight_f64_f32(v183.val[1]);
        v183.val[1] = vcvtq_f64_f32(*v185.val[1].f32);
        v185.val[0] = vcvt_hight_f64_f32(v185.val[1]);
        v183.val[0] = vmulq_f64(v183.val[0], vcvt_hight_f64_f32(v187.val[1]));
        v185.val[1] = vmulq_f64(v130, vcvtq_f64_f32(*v187.val[1].f32));
        v185.val[0] = vmulq_f64(v185.val[0], vcvt_hight_f64_f32(v189.val[1]));
        v183.val[1] = vmulq_f64(v183.val[1], vcvtq_f64_f32(*v189.val[1].f32));
        v120 = v120 + *v185.val[1].i64 + *&v185.val[1].i64[1] + *v183.val[0].i64 + *&v183.val[0].i64[1] + *v183.val[1].i64 + *&v183.val[1].i64[1] + *v185.val[0].i64 + *&v185.val[0].i64[1];
        v118.f64[0] = v118.f64[0] + v127.f64[0] + v127.f64[1] + v126.f64[0] + v126.f64[1] + v129.f64[0] + v129.f64[1] + v128.f64[0] + v128.f64[1];
        v123 += 16;
        v122 += 16;
        v121 -= 8;
      }

      while (v121);
      v118.f64[1] = v120;
      v119 = 2 * (v71 & 0x7FFFFFF8);
      if (v71 != v72)
      {
        goto LABEL_130;
      }

LABEL_122:
      a5[v115++] = vaddvq_f64(v118);
      v117 = (v117 + v77);
      v116 = (v116 + v77);
    }

    while (v115 != v180);
LABEL_91:
    v66 = v179 + 1;
    a1 = (a1 + v174);
    a3 = v176;
    a5 += v175;
    if (v179 + 1 != v13)
    {
      continue;
    }

    return v181;
  }
}