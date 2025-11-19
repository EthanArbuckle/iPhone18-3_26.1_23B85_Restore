void sub_10034D830(uint64_t a1)
{
  nullsub_1(a1);

  operator delete();
}

_BYTE *sub_10034D868(uint64_t a1, int *a2, float32x4_t a3, float32x4_t a4, float32x4_t a5, double a6, float32x4_t a7)
{
  v8 = a1;
  v9 = *(a1 + 16);
  v10 = *v9;
  v11 = (v10 >> 3) & 0x1FF;
  v12 = v11 + 1;
  v13 = (v11 + 1) * *(*(v9 + 8) + 4);
  v14 = v188;
  if ((2 * v13) >= 0x109)
  {
    operator new[]();
  }

  v15 = *(a1 + 40);
  v16 = *(a1 + 48);
  v17 = *(v16 + 4 * *a2);
  v18 = *(a1 + 24);
  v19 = *(*(a1 + 32) + 12 * v17 + 4);
  v181 = v18;
  v182 = *(v16 + 4 * a2[1]);
  if (v13 >= 1)
  {
    bzero(&v188[4 * v13], 4 * v13);
    v18 = v181;
  }

  v171 = &v188[4 * v13];
  v20 = v13;
  if (v17 < v182)
  {
    v178 = 4 * v13;
    v21 = &v188[4 * ((v10 >> 3) & 0x1FF) + 4];
    v22 = v12 & 0x3F0;
    v172 = v12 & 0xC;
    v186 = v12;
    v170 = &v188[4 * v13 + 4 * v13];
    v24 = v171 < &v188[v178] && v188 < &v188[4 * v13 + 4 * v13];
    v168 = v13 & 0x7FFFFFF0;
    v165 = v13 & 0xC;
    v174 = v13 & 0x7FFFFFF8;
    v169 = v24;
    v173 = v13 < 8 || v24;
    v179 = v12 & 0x3FC;
    v180 = (v18 + 8);
    v25 = ((v10 >> 3) & 0x1FF) + 1;
    v26 = 0uLL;
    v27.i64[0] = 0xFF000000FFLL;
    v27.i64[1] = 0xFF000000FFLL;
    v28 = xmmword_1003E36F0;
    v29 = xmmword_1003E3730;
    v30 = 4 * v13;
    v31 = xmmword_1003E3720;
    v166 = -(v13 & 0x7FFFFFFC);
    v167 = v13 & 0x7FFFFFFC;
    v32 = xmmword_1003E3710;
    v33 = xmmword_1003E3700;
    v177 = (v10 >> 3) & 0x1FF;
    v176 = v15;
    v175 = v8;
    while (1)
    {
      v187 = v19;
      v35 = (v8[4] + 12 * v17);
      LODWORD(v7) = v35[2];
      v34 = v35[1];
      v36 = *v35;
      v37 = v8[1];
      v38 = *(v37 + 16);
      v39 = **(v37 + 72);
      if (v13 >= 1)
      {
        v185 = v17;
        v40 = v20;
        v41 = v14;
        v42 = v13;
        v43 = v14;
        v44 = v21;
        v183 = v34;
        v45 = v22;
        v46 = v25;
        v11 = v30;
        v184 = v7;
        v47 = *(v37 + 16);
        bzero(v41, v178);
        v38 = v47;
        v7 = v184;
        v33 = xmmword_1003E3700;
        v32 = xmmword_1003E3710;
        v31 = xmmword_1003E3720;
        v30 = v11;
        v29 = xmmword_1003E3730;
        v28 = xmmword_1003E36F0;
        v27.i64[0] = 0xFF000000FFLL;
        v27.i64[1] = 0xFF000000FFLL;
        v26 = 0uLL;
        v25 = v46;
        v22 = v45;
        v34 = v183;
        v21 = v44;
        v14 = v43;
        v13 = v42;
        v20 = v40;
        v8 = v175;
        v15 = v176;
        LODWORD(v11) = v177;
        v17 = v185;
      }

      v48 = v39 * v36;
      v49 = v38 + v39 * v36;
      if (v11 > 1)
      {
        v50 = v187;
        if (v11 == 2)
        {
          v96 = v15;
          v97 = v180;
          if (v15 >= 1)
          {
            do
            {
              v98 = *(v97 - 2);
              v99 = *(v97 - 1);
              v100 = *v97;
              v97 += 3;
              v101 = &v14->f32[v99];
              v102 = (v49 + v98);
              a4.i8[0] = *v102;
              v103 = *v101;
              a4.f32[0] = *v101 + (a4.u32[0] * v100);
              LOBYTE(v103) = v102[1];
              v104 = v101[1] + (v103 * v100);
              a7.i8[0] = v102[2];
              a7.f32[0] = a7.u32[0];
              v105 = v101[2] + (a7.f32[0] * v100);
              *v101 = a4.f32[0];
              v101[1] = v104;
              v101[2] = v105;
              --v96;
            }

            while (v96);
          }
        }

        else
        {
          if (v11 != 3)
          {
            if (v15 < 1)
            {
              goto LABEL_53;
            }

            v71 = 0;
            v72 = v38 + v48;
            while (2)
            {
              v73 = (v181 + 12 * v71);
              v75 = *v73;
              v74 = v73[1];
              a3.i32[0] = v73[2];
              v76 = (v49 + v75);
              if (v14->u64 + 4 * v74 < v72 + v186 + v75 && v76 < &v21[4 * v74])
              {
                v79 = 0;
                goto LABEL_37;
              }

              if (v11 >= 0xF)
              {
                a4 = vdupq_lane_s32(*a3.f32, 0);
                v84 = (v14 + 4 * v74);
                v85 = v22;
                do
                {
                  v86 = *v76++;
                  a5 = vcvtq_f32_u32(vqtbl1q_s8(v86, v33));
                  a7 = vcvtq_f32_u32(vqtbl1q_s8(v86, v31));
                  v87 = *v84;
                  v88 = vmlaq_f32(v84[1], a4, vcvtq_f32_u32(vqtbl1q_s8(v86, v29)));
                  v89 = vmlaq_f32(v84[3], a4, vcvtq_f32_u32(vqtbl1q_s8(v86, v32)));
                  v84[2] = vmlaq_f32(v84[2], a4, a5);
                  v84[3] = v89;
                  *v84 = vmlaq_f32(v87, a4, a7);
                  v84[1] = v88;
                  v84 += 4;
                  v85 -= 16;
                }

                while (v85);
                if (v22 != v186)
                {
                  v79 = v22;
                  v78 = v22;
                  if (!v172)
                  {
                    goto LABEL_37;
                  }

                  goto LABEL_44;
                }
              }

              else
              {
                v78 = 0;
LABEL_44:
                a4 = vdupq_lane_s32(*a3.f32, 0);
                v90 = (v72 + v78 + v75);
                v91 = (v14 + 4 * v78 + 4 * v74);
                v92 = v78 - v179;
                do
                {
                  v93 = *v90++;
                  a5.i32[0] = v93;
                  a5 = vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(*a5.f32)));
                  *v91 = vmlaq_f32(*v91, a4, a5);
                  ++v91;
                  v92 += 4;
                }

                while (v92);
                v79 = v179;
                if (v179 != v186)
                {
LABEL_37:
                  v80 = (v72 + v79 + v75);
                  v81 = &v14->f32[v79 + v74];
                  v82 = v25 - v79;
                  do
                  {
                    v83 = *v80++;
                    a4.f32[0] = *v81 + (v83 * a3.f32[0]);
                    *v81++ = a4.f32[0];
                    --v82;
                  }

                  while (v82);
                }
              }

              if (++v71 == v15)
              {
                goto LABEL_53;
              }

              continue;
            }
          }

          v60 = v15;
          v61 = v180;
          if (v15 >= 1)
          {
            do
            {
              v62 = *(v61 - 2);
              v63 = *(v61 - 1);
              v64 = *v61;
              v61 += 3;
              v65 = &v14->f32[v63];
              v66 = (v49 + v62);
              a4.i8[0] = *v66;
              v67 = *v65;
              *&v68 = *v65 + (a4.u32[0] * v64);
              LOBYTE(v67) = v66[1];
              v69 = v65[1] + (LODWORD(v67) * v64);
              *v65 = *&v68;
              v65[1] = v69;
              LOBYTE(v68) = v66[2];
              a7.i8[0] = v66[3];
              a4.f32[0] = v65[2] + (v68 * v64);
              v70 = v65[3] + (a7.u32[0] * v64);
              v65[2] = a4.f32[0];
              v65[3] = v70;
              --v60;
            }

            while (v60);
          }
        }
      }

      else
      {
        v50 = v187;
        if (v11)
        {
          v51 = v15;
          v52 = v180;
          if (v15 >= 1)
          {
            do
            {
              v53 = *(v52 - 2);
              v54 = *(v52 - 1);
              v55 = *v52;
              v52 += 3;
              v56 = &v14->f32[v54];
              v57 = (v49 + v53);
              a4.i8[0] = *v57;
              v58 = *v56;
              a4.f32[0] = *v56 + (a4.u32[0] * v55);
              LOBYTE(v58) = v57[1];
              v59 = v56[1] + (v58 * v55);
              *v56 = a4.f32[0];
              v56[1] = v59;
              --v51;
            }

            while (v51);
          }
        }

        else
        {
          v94 = v15;
          v95 = v180;
          if (v15 >= 1)
          {
            do
            {
              a4.i8[0] = *(v49 + *(v95 - 2));
              a4.f32[0] = a4.u32[0];
              v14->f32[*(v95 - 1)] = v14->f32[*(v95 - 1)] + (a4.f32[0] * *v95);
              v95 += 3;
              --v94;
            }

            while (v94);
          }
        }
      }

LABEL_53:
      if (v34 == v50)
      {
        if (v13 >= 1)
        {
          if (v173)
          {
            v106 = 0;
            goto LABEL_81;
          }

          a3 = vdupq_lane_s32(*&v7, 0);
          v122 = v174;
          v123 = v14;
          do
          {
            a4 = *v123;
            a5 = v123[1];
            v124 = (v123 + v30);
            a7 = vmlaq_f32(*(v123 + v30 + 16), a5, a3);
            *v124 = vmlaq_f32(*(v123 + v30), *v123, a3);
            v124[1] = a7;
            v123 += 2;
            v122 -= 8;
          }

          while (v122);
          v106 = v174;
          if (v174 != v20)
          {
LABEL_81:
            v125 = &v14->u32[v106];
            v126 = v20 - v106;
            do
            {
              a4.i32[0] = *v125;
              *&v125[v13] = *&v125[v13] + (*&v7 * *v125);
              ++v125;
              --v126;
            }

            while (v126);
          }
        }

        v34 = v50;
        goto LABEL_14;
      }

      if (v13 >= 1)
      {
        v107 = v8[2];
        v108 = *(v107 + 16);
        v109 = **(v107 + 72) * v50;
        if (v13 < 4 || ((v110 = (v108 + v109), v111 = v108 + v20 + v109, v108 + v109 < v170) ? (v112 = v171 >= v111) : (v112 = 1), v112 ? (v113 = 0) : (v113 = 1), v110 < &v188[v178] ? (v114 = v14 >= v111) : (v114 = 1), !v114 ? (v115 = 1) : (v115 = v113), ((v115 | v169) & 1) != 0))
        {
          v116 = 0;
LABEL_73:
          v117 = &v14->f32[v116];
          v118 = (v108 + v116 + v109);
          v119 = v20 - v116;
          do
          {
            v120 = rintf(v117[v13]);
            v121 = v120 & ~(v120 >> 31);
            if (v121 >= 255)
            {
              LOBYTE(v121) = -1;
            }

            *v118++ = v121;
            v117[v13] = *&v7 * *v117;
            ++v117;
            --v119;
          }

          while (v119);
          goto LABEL_14;
        }

        if (v13 >= 0x10)
        {
          v128 = v168;
          v129 = v14;
          do
          {
            v130 = (v129 + v30);
            v131 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*(v129[3].f32 + v30)))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(*(&v129[3] + v30), *(&v129[3] + v30), 8uLL))))), v26), v27);
            v132 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*(v129[2].f32 + v30)))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(*(&v129[2] + v30), *(&v129[2] + v30), 8uLL))))), v26), v27);
            v133 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*(v129[1].f32 + v30)))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(*(&v129[1] + v30), *(&v129[1] + v30), 8uLL))))), v26), v27);
            a7 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*(v129->f32 + v30)))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(*(v129 + v30), *(v129 + v30), 8uLL))))), v26), v27);
            *v110++ = vqtbl4q_s8(*a7.f32, v28);
            a5 = v129[2];
            v134 = vmulq_n_f32(v129[3], *&v7);
            a4 = vmulq_n_f32(v129[1], *&v7);
            *v130 = vmulq_n_f32(*v129, *&v7);
            v130[1] = a4;
            a3 = vmulq_n_f32(a5, *&v7);
            v130[2] = a3;
            v130[3] = v134;
            v129 += 4;
            v128 -= 16;
          }

          while (v128);
          v116 = v168;
          if (v168 == v20)
          {
            goto LABEL_14;
          }

          v127 = v168;
          if (!v165)
          {
            goto LABEL_73;
          }
        }

        else
        {
          v127 = 0;
        }

        v135 = (v14 + 4 * v127);
        v136 = (v108 + v127 + v109);
        v137 = v166 + v127;
        do
        {
          v138 = *(v135 + v30);
          a4 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v138.i8)));
          *v138.i8 = vmovn_s32(vminq_s32(vmaxq_s32(vuzp1q_s32(a4, vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v138, v138, 8uLL))))), v26), v27));
          *v136++ = vuzp1_s8(*v138.i8, *v138.i8).u32[0];
          a3 = vmulq_n_f32(*v135, *&v7);
          *(v135++ + v30) = a3;
          v137 += 4;
        }

        while (v137);
        v116 = v167;
        if (v167 != v20)
        {
          goto LABEL_73;
        }
      }

LABEL_14:
      ++v17;
      v19 = v34;
      if (v17 == v182)
      {
        goto LABEL_95;
      }
    }
  }

  LODWORD(v34) = v19;
LABEL_95:
  if (v13 >= 1)
  {
    v139 = v8[2];
    v140 = *(v139 + 16);
    v141 = **(v139 + 72) * v34;
    if (v13 >= 4 && ((v142 = (v140 + v141), v143 = v171, v140 + v141 < v14->u64 + 4 * v13 + 4 * v20) ? (v144 = v171 >= v140 + v141 + v20) : (v144 = 1), v144))
    {
      if (v13 >= 0x10)
      {
        v145 = v20 & 0x7FFFFFF0;
        v153.i64[0] = 0xFF000000FFLL;
        v153.i64[1] = 0xFF000000FFLL;
        v154 = v145;
        do
        {
          v156 = v143[2];
          v155 = v143[3];
          v158 = *v143;
          v157 = v143[1];
          v143 += 4;
          v189.val[3] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v155.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v155, v155, 8uLL))))), 0), v153);
          v189.val[2] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v156.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v156, v156, 8uLL))))), 0), v153);
          v189.val[1] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v157.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v157, v157, 8uLL))))), 0), v153);
          v189.val[0] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v158.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v158, v158, 8uLL))))), 0), v153);
          *v142++ = vqtbl4q_s8(v189, xmmword_1003E36F0);
          v154 -= 16;
        }

        while (v154);
        if (v145 == v20)
        {
          return v188;
        }

        if ((v20 & 0xC) == 0)
        {
          goto LABEL_105;
        }
      }

      else
      {
        v145 = 0;
      }

      v159 = v145;
      v145 = v20 & 0x7FFFFFFC;
      v160 = &v14->f32[v159 + v13];
      v161 = (v140 + v159 + v141);
      v162 = v159 - v145;
      v163.i64[0] = 0xFF000000FFLL;
      v163.i64[1] = 0xFF000000FFLL;
      do
      {
        v164 = *v160++;
        *v161++ = vuzp1_s8(vmovn_s32(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v164.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v164, v164, 8uLL))))), 0), v163)), 0).u32[0];
        v162 += 4;
      }

      while (v162);
      if (v145 == v20)
      {
        return v188;
      }
    }

    else
    {
      v145 = 0;
    }

LABEL_105:
    v146 = (v140 + v145 + v141);
    v147 = &v14->f32[v145 + v13];
    v148 = v20 - v145;
    do
    {
      v149 = *v147++;
      v150 = rintf(v149);
      v151 = v150 & ~(v150 >> 31);
      if (v151 >= 255)
      {
        LOBYTE(v151) = -1;
      }

      *v146++ = v151;
      --v148;
    }

    while (v148);
  }

  return v188;
}

void sub_10034E314(uint64_t a1)
{
  nullsub_1(a1);

  operator delete();
}

void sub_10034E34C(uint64_t a1, int *a2, float32x4_t a3, float32x4_t a4, double a5, double a6, float32x4_t a7)
{
  v8 = *(a1 + 16);
  v9 = *v8;
  v10 = (v9 >> 3) & 0x1FF;
  v11 = v10 + 1;
  v12 = (v10 + 1) * *(*(v8 + 8) + 4);
  v13 = v150;
  if ((2 * v12) >= 0x109)
  {
    operator new[]();
  }

  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  v16 = *(v15 + 4 * *a2);
  v144 = *(v15 + 4 * a2[1]);
  v17 = *(a1 + 24);
  v142 = *(a1 + 32);
  v143 = v17;
  v18 = *(v142 + 12 * v16 + 4);
  if (v12 >= 1)
  {
    bzero(&v150[4 * v12], 4 * v12);
    v17 = v143;
  }

  v131 = &v150[4 * v12];
  if (v16 < v144)
  {
    v19 = *(a1 + 8);
    v20 = *(v19 + 16);
    v21 = v11;
    v141 = **(v19 + 72);
    v138 = 4 * v12;
    v139 = v12;
    v22 = v11 & 0x3F0;
    v134 = v11 & 0xC;
    v23 = v11 & 0x3FC;
    v25 = &v150[4 * v12] < &v150[v138] && v150 < &v150[4 * v12 + 4 * v12];
    v137 = v12 & 0x7FFFFFF8;
    v136 = v12 < 8 || v25;
    v145 = v20;
    v132 = v20 + 16;
    v140 = (v17 + 8);
    v26 = -v23;
    v27 = ((v9 >> 3) & 0x1FF) + 1;
    v28 = 4 * v12;
    v29 = 0uLL;
    v30.i64[0] = 0xFFFF0000FFFFLL;
    v30.i64[1] = 0xFFFF0000FFFFLL;
    v135 = (v9 >> 3) & 0x1FF;
    while (1)
    {
      v149 = v18;
      v32 = (v142 + 12 * v16);
      LODWORD(v7) = v32[2];
      v31 = v32[1];
      v33 = *v32;
      if (v12 >= 1)
      {
        v148 = v16;
        v34 = v14;
        v35 = v22;
        v36 = v13;
        v37 = v21;
        v38 = v26;
        v146 = v32[1];
        v39 = v12;
        v40 = v13;
        v41 = v27;
        v10 = v28;
        v147 = v7;
        bzero(v36, v138);
        v7 = v147;
        v30.i64[0] = 0xFFFF0000FFFFLL;
        v30.i64[1] = 0xFFFF0000FFFFLL;
        v29 = 0uLL;
        v28 = v10;
        v27 = v41;
        v13 = v40;
        v12 = v39;
        v31 = v146;
        v26 = v38;
        v22 = v35;
        v14 = v34;
        v16 = v148;
        LODWORD(v10) = v135;
        v21 = v37;
      }

      v42 = v141 * v33;
      v43 = v145 + v141 * v33;
      if (v10 > 1)
      {
        v44 = v149;
        if (v10 == 2)
        {
          v84 = v14;
          v85 = v140;
          if (v14 >= 1)
          {
            do
            {
              v86 = *(v85 - 2);
              v87 = *(v85 - 1);
              v88 = *v85;
              v85 += 3;
              v89 = &v13->f32[v87];
              v90 = (v43 + 2 * v86);
              a4.i16[0] = *v90;
              v91 = *v89;
              a4.f32[0] = *v89 + (a4.u32[0] * v88);
              LOWORD(v91) = v90[1];
              v92 = v89[1] + (v91 * v88);
              a7.i16[0] = v90[2];
              a7.f32[0] = a7.u32[0];
              v93 = v89[2] + (a7.f32[0] * v88);
              *v89 = a4.f32[0];
              v89[1] = v92;
              v89[2] = v93;
              --v84;
            }

            while (v84);
          }
        }

        else
        {
          if (v10 != 3)
          {
            if (v14 < 1)
            {
              goto LABEL_47;
            }

            v59 = 0;
            v60 = v132 + v42;
            v61 = v145 + v42;
            while (2)
            {
              v62 = (v143 + 12 * v59);
              v64 = *v62;
              v63 = v62[1];
              a3.i32[0] = v62[2];
              if (v10 >= 0xF)
              {
                a4 = vdupq_lane_s32(*a3.f32, 0);
                v66 = (v60 + 2 * v64);
                v67 = v22;
                v68 = &v150[4 * v63 + 32];
                do
                {
                  v69 = *v66[-2].i8;
                  a7 = vcvtq_f32_u32(vmovl_high_u16(v69));
                  v70 = vmlaq_f32(v68[-1], a4, a7);
                  v71 = vmlaq_f32(*v68, a4, vcvtq_f32_u32(vmovl_u16(*v66)));
                  v72 = vmlaq_f32(v68[1], a4, vcvtq_f32_u32(vmovl_high_u16(*v66->i8)));
                  v68[-2] = vmlaq_f32(v68[-2], a4, vcvtq_f32_u32(vmovl_u16(*v69.i8)));
                  v68[-1] = v70;
                  *v68 = v71;
                  v68[1] = v72;
                  v68 += 4;
                  v66 += 4;
                  v67 -= 16;
                }

                while (v67);
                if (v22 != v21)
                {
                  v73 = v22;
                  v65 = v22;
                  if (v134)
                  {
                    goto LABEL_36;
                  }

                  goto LABEL_39;
                }
              }

              else
              {
                v65 = 0;
LABEL_36:
                a4 = vdupq_lane_s32(*a3.f32, 0);
                v74 = (v61 + 2 * v65 + 2 * v64);
                v75 = (v13 + 4 * v65 + 4 * v63);
                v76 = v26 + v65;
                do
                {
                  v77 = *v74++;
                  *v75 = vmlaq_f32(*v75, a4, vcvtq_f32_u32(vmovl_u16(v77)));
                  ++v75;
                  v76 += 4;
                }

                while (v76);
                v73 = v23;
                if (v23 != v21)
                {
LABEL_39:
                  v78 = (v61 + 2 * v73 + 2 * v64);
                  v79 = &v13->f32[v73 + v63];
                  v80 = v27 - v73;
                  do
                  {
                    v81 = *v78++;
                    a4.f32[0] = *v79 + (v81 * a3.f32[0]);
                    *v79++ = a4.f32[0];
                    --v80;
                  }

                  while (v80);
                }
              }

              if (++v59 == v14)
              {
                goto LABEL_47;
              }

              continue;
            }
          }

          v54 = v14;
          v55 = v140;
          if (v14 >= 1)
          {
            do
            {
              v56 = *(v55 - 2);
              v57 = *(v55 - 1);
              v58 = *v55;
              v55 += 3;
              v57 *= 4;
              a4 = vmlaq_n_f32(*(v13 + v57), vcvtq_f32_u32(vmovl_u16(*(v43 + 2 * v56))), v58);
              *(v13 + v57) = a4;
              --v54;
            }

            while (v54);
          }
        }
      }

      else
      {
        v44 = v149;
        if (v10)
        {
          v45 = v14;
          v46 = v140;
          if (v14 >= 1)
          {
            do
            {
              v47 = *(v46 - 2);
              v48 = *(v46 - 1);
              v49 = *v46;
              v46 += 3;
              v50 = &v13->f32[v48];
              v51 = (v43 + 2 * v47);
              a4.i16[0] = *v51;
              v52 = *v50;
              a4.f32[0] = *v50 + (a4.u32[0] * v49);
              LOWORD(v52) = v51[1];
              v53 = v50[1] + (v52 * v49);
              *v50 = a4.f32[0];
              v50[1] = v53;
              --v45;
            }

            while (v45);
          }
        }

        else
        {
          v82 = v14;
          v83 = v140;
          if (v14 >= 1)
          {
            do
            {
              a4.i16[0] = *(v43 + 2 * *(v83 - 2));
              a4.f32[0] = a4.u32[0];
              v13->f32[*(v83 - 1)] = v13->f32[*(v83 - 1)] + (a4.f32[0] * *v83);
              v83 += 3;
              --v82;
            }

            while (v82);
          }
        }
      }

LABEL_47:
      if (v31 == v44)
      {
        if (v12 >= 1)
        {
          if (v136)
          {
            v94 = 0;
            goto LABEL_57;
          }

          a3 = vdupq_lane_s32(*&v7, 0);
          v99 = v137;
          v100 = v13;
          do
          {
            a4 = *v100;
            v101 = (v100 + v28);
            a7 = vmlaq_f32(*(v100 + v28 + 16), v100[1], a3);
            *v101 = vmlaq_f32(*(v100 + v28), *v100, a3);
            v101[1] = a7;
            v100 += 2;
            v99 -= 8;
          }

          while (v99);
          v94 = v137;
          if (v137 != v139)
          {
LABEL_57:
            v102 = &v13->u32[v94];
            v103 = v139 - v94;
            do
            {
              a4.i32[0] = *v102;
              *&v102[v12] = *&v102[v12] + (*&v7 * *v102);
              ++v102;
              --v103;
            }

            while (v103);
          }
        }

        v31 = v44;
        goto LABEL_14;
      }

      if (v12 >= 1)
      {
        v95 = *(a1 + 16);
        v96 = *(v95 + 16);
        v97 = **(v95 + 72) * v44;
        if (v136)
        {
          v98 = 0;
LABEL_63:
          v110 = &v13->f32[v98];
          v111 = (v96 + v97 + 2 * v98);
          v112 = v139 - v98;
          do
          {
            v113 = rintf(v110[v12]);
            v114 = v113 & ~(v113 >> 31);
            if (v114 >= 0xFFFF)
            {
              LOWORD(v114) = -1;
            }

            *v111++ = v114;
            v110[v12] = *&v7 * *v110;
            ++v110;
            --v112;
          }

          while (v112);
          goto LABEL_14;
        }

        v104 = (v96 + v97);
        v105 = v137;
        v106 = v13;
        do
        {
          v107 = (v106 + v28);
          *v104++ = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*(v106->f32 + v28)))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(*(v106 + v28), *(v106 + v28), 8uLL))))), v29), v30), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*(v106[1].f32 + v28)))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(*(&v106[1] + v28), *(&v106[1] + v28), 8uLL))))), v29), v30));
          v108 = *v106;
          v109 = v106[1];
          v106 += 2;
          a4 = vmulq_n_f32(v109, *&v7);
          a3 = vmulq_n_f32(v108, *&v7);
          *v107 = a3;
          v107[1] = a4;
          v105 -= 8;
        }

        while (v105);
        v98 = v137;
        if (v137 != v139)
        {
          goto LABEL_63;
        }
      }

LABEL_14:
      ++v16;
      v18 = v31;
      if (v16 == v144)
      {
        goto LABEL_69;
      }
    }
  }

  LODWORD(v31) = v18;
LABEL_69:
  if (v12 >= 1)
  {
    v115 = *(a1 + 16);
    v116 = *(v115 + 16);
    v117 = **(v115 + 72) * v31;
    if (v12 >= 8)
    {
      v119 = (v116 + v117);
      v118 = v12 & 0x7FFFFFF8;
      v120.i64[0] = 0xFFFF0000FFFFLL;
      v120.i64[1] = 0xFFFF0000FFFFLL;
      v121 = v118;
      v122 = v131;
      do
      {
        v124 = *v122;
        v123 = v122[1];
        v122 += 2;
        *v119++ = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v124.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v124, v124, 8uLL))))), 0), v120), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v123.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v123, v123, 8uLL))))), 0), v120));
        v121 -= 8;
      }

      while (v121);
      if (v118 == v12)
      {
        goto LABEL_79;
      }
    }

    else
    {
      v118 = 0;
    }

    v125 = (v116 + v117 + 2 * v118);
    v126 = &v13->f32[v118 + v12];
    v127 = v12 - v118;
    do
    {
      v128 = *v126++;
      v129 = rintf(v128);
      v130 = v129 & ~(v129 >> 31);
      if (v130 >= 0xFFFF)
      {
        LOWORD(v130) = -1;
      }

      *v125++ = v130;
      --v127;
    }

    while (v127);
  }

LABEL_79:
  if (v13 != v150)
  {
    operator delete[]();
  }
}

void sub_10034EB40(uint64_t a1)
{
  nullsub_1(a1);

  operator delete();
}

void sub_10034EB78(uint64_t a1, int *a2, float32x4_t a3, float32x4_t a4, float32x4_t a5, double a6, float32x4_t a7)
{
  v8 = *(a1 + 16);
  v9 = *v8;
  v10 = (v9 >> 3) & 0x1FF;
  v11 = v10 + 1;
  v12 = (v10 + 1) * *(*(v8 + 8) + 4);
  v13 = v141;
  if ((2 * v12) >= 0x109)
  {
    operator new[]();
  }

  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  v16 = *(v15 + 4 * *a2);
  v135 = *(v15 + 4 * a2[1]);
  v17 = *(a1 + 24);
  v133 = *(a1 + 32);
  v134 = v17;
  v18 = *(v133 + 12 * v16 + 4);
  if (v12 >= 1)
  {
    bzero(&v141[4 * v12], 4 * v12);
    v17 = v134;
  }

  v123 = &v141[4 * v12];
  if (v16 < v135)
  {
    v19 = *(a1 + 8);
    v20 = v11;
    v129 = 4 * v12;
    v130 = v12;
    v132 = **(v19 + 72);
    v21 = v11 & 0x3F0;
    v125 = v11 & 0xC;
    v22 = v11 & 0x3FC;
    v24 = &v141[4 * v12] < &v141[v129] && v141 < &v141[4 * v12 + 4 * v12];
    v128 = v12 & 0x7FFFFFF8;
    v127 = v12 < 8 || v24;
    v136 = *(v19 + 16);
    v131 = (v17 + 8);
    v25 = -v22;
    v26 = ((v9 >> 3) & 0x1FF) + 1;
    v27 = 4 * v12;
    v126 = (v9 >> 3) & 0x1FF;
    while (1)
    {
      v140 = v18;
      v29 = (v133 + 12 * v16);
      LODWORD(v7) = v29[2];
      v28 = v29[1];
      v30 = *v29;
      if (v12 >= 1)
      {
        v139 = v16;
        v31 = v14;
        v32 = v21;
        v33 = v13;
        v137 = v29[1];
        v34 = v20;
        v35 = v25;
        v36 = v12;
        v37 = v13;
        v38 = v26;
        v10 = v27;
        v138 = v7;
        bzero(v33, v129);
        v7 = v138;
        v27 = v10;
        v26 = v38;
        v13 = v37;
        v12 = v36;
        v25 = v35;
        v21 = v32;
        v14 = v31;
        v16 = v139;
        LODWORD(v10) = v126;
        v20 = v34;
        v28 = v137;
      }

      v39 = v132 * v30;
      v40 = v136 + v132 * v30;
      if (v10 > 1)
      {
        v41 = v140;
        if (v10 == 2)
        {
          v80 = v14;
          v81 = v131;
          if (v14 >= 1)
          {
            do
            {
              v82 = *(v81 - 2);
              v83 = *(v81 - 1);
              v84 = *v81;
              v81 += 3;
              v85 = &v13->f32[v83];
              v86 = (v40 + 2 * v82);
              a4.i16[0] = *v86;
              a4.i64[0] = vmovl_s16(*a4.f32).u64[0];
              a5.f32[0] = *v85;
              a4.f32[0] = *v85 + (a4.i32[0] * v84);
              a5.i16[0] = v86[1];
              a5.i64[0] = vmovl_s16(*a5.f32).u64[0];
              a5.f32[0] = v85[1] + (a5.i32[0] * v84);
              a7.i16[0] = v86[2];
              a7.i64[0] = vmovl_s16(*a7.f32).u64[0];
              a7.f32[0] = a7.i32[0];
              v87 = v85[2] + (a7.f32[0] * v84);
              *v85 = a4.f32[0];
              v85[1] = a5.f32[0];
              v85[2] = v87;
              --v80;
            }

            while (v80);
          }
        }

        else
        {
          if (v10 != 3)
          {
            if (v14 < 1)
            {
              goto LABEL_47;
            }

            v55 = 0;
            v56 = v136 + 16 + v39;
            v57 = v136 + v39;
            while (2)
            {
              v58 = (v134 + 12 * v55);
              v60 = *v58;
              v59 = v58[1];
              a3.i32[0] = v58[2];
              if (v10 >= 0xF)
              {
                a4 = vdupq_lane_s32(*a3.f32, 0);
                v62 = (v56 + 2 * v60);
                v63 = v21;
                v64 = &v141[4 * v59 + 32];
                do
                {
                  v65 = *v62[-2].i8;
                  a7 = vcvtq_f32_s32(vmovl_high_s16(v65));
                  a5 = vcvtq_f32_s32(vmovl_s16(*v65.i8));
                  v66 = vmlaq_f32(v64[-1], a4, a7);
                  v67 = vmlaq_f32(*v64, a4, vcvtq_f32_s32(vmovl_s16(*v62)));
                  v68 = vmlaq_f32(v64[1], a4, vcvtq_f32_s32(vmovl_high_s16(*v62->i8)));
                  v64[-2] = vmlaq_f32(v64[-2], a4, a5);
                  v64[-1] = v66;
                  *v64 = v67;
                  v64[1] = v68;
                  v64 += 4;
                  v62 += 4;
                  v63 -= 16;
                }

                while (v63);
                if (v21 != v20)
                {
                  v69 = v21;
                  v61 = v21;
                  if (v125)
                  {
                    goto LABEL_36;
                  }

                  goto LABEL_39;
                }
              }

              else
              {
                v61 = 0;
LABEL_36:
                a4 = vdupq_lane_s32(*a3.f32, 0);
                v70 = (v57 + 2 * v61 + 2 * v60);
                v71 = (v13 + 4 * v61 + 4 * v59);
                v72 = v25 + v61;
                do
                {
                  v73 = *v70++;
                  a5 = vcvtq_f32_s32(vmovl_s16(v73));
                  *v71 = vmlaq_f32(*v71, a4, a5);
                  ++v71;
                  v72 += 4;
                }

                while (v72);
                v69 = v22;
                if (v22 != v20)
                {
LABEL_39:
                  v74 = (v57 + 2 * v69 + 2 * v60);
                  v75 = &v13->f32[v69 + v59];
                  v76 = v26 - v69;
                  do
                  {
                    v77 = *v74++;
                    a4.f32[0] = *v75 + (v77 * a3.f32[0]);
                    *v75++ = a4.f32[0];
                    --v76;
                  }

                  while (v76);
                }
              }

              if (++v55 == v14)
              {
                goto LABEL_47;
              }

              continue;
            }
          }

          v50 = v14;
          v51 = v131;
          if (v14 >= 1)
          {
            do
            {
              v52 = *(v51 - 2);
              v53 = *(v51 - 1);
              v54 = *v51;
              v51 += 3;
              v53 *= 4;
              a5 = vcvtq_f32_s32(vmovl_s16(*(v40 + 2 * v52)));
              a4 = vmlaq_n_f32(*(v13 + v53), a5, v54);
              *(v13 + v53) = a4;
              --v50;
            }

            while (v50);
          }
        }
      }

      else
      {
        v41 = v140;
        if (v10)
        {
          v42 = v14;
          v43 = v131;
          if (v14 >= 1)
          {
            do
            {
              v44 = *(v43 - 2);
              v45 = *(v43 - 1);
              v46 = *v43;
              v43 += 3;
              v47 = &v13->f32[v45];
              v48 = (v40 + 2 * v44);
              a4.i16[0] = *v48;
              a4.i64[0] = vmovl_s16(*a4.f32).u64[0];
              a5.f32[0] = *v47;
              a4.f32[0] = *v47 + (a4.i32[0] * v46);
              a5.i16[0] = v48[1];
              a5.i64[0] = vmovl_s16(*a5.f32).u64[0];
              v49 = v47[1] + (a5.i32[0] * v46);
              *v47 = a4.f32[0];
              v47[1] = v49;
              --v42;
            }

            while (v42);
          }
        }

        else
        {
          v78 = v14;
          v79 = v131;
          if (v14 >= 1)
          {
            do
            {
              a4.i16[0] = *(v40 + 2 * *(v79 - 2));
              a4.i64[0] = vmovl_s16(*a4.f32).u64[0];
              a4.f32[0] = a4.i32[0];
              v13->f32[*(v79 - 1)] = v13->f32[*(v79 - 1)] + (a4.f32[0] * *v79);
              v79 += 3;
              --v78;
            }

            while (v78);
          }
        }
      }

LABEL_47:
      if (v28 == v41)
      {
        if (v12 >= 1)
        {
          if (v127)
          {
            v88 = 0;
            goto LABEL_57;
          }

          a3 = vdupq_lane_s32(*&v7, 0);
          v93 = v128;
          v94 = v13;
          do
          {
            a4 = *v94;
            a5 = v94[1];
            v95 = (v94 + v27);
            a7 = vmlaq_f32(*(v94 + v27 + 16), a5, a3);
            *v95 = vmlaq_f32(*(v94 + v27), *v94, a3);
            v95[1] = a7;
            v94 += 2;
            v93 -= 8;
          }

          while (v93);
          v88 = v128;
          if (v128 != v130)
          {
LABEL_57:
            v96 = &v13->u32[v88];
            v97 = v130 - v88;
            do
            {
              a4.i32[0] = *v96;
              *&v96[v12] = *&v96[v12] + (*&v7 * *v96);
              ++v96;
              --v97;
            }

            while (v97);
          }
        }

        v28 = v41;
        goto LABEL_14;
      }

      if (v12 >= 1)
      {
        v89 = *(a1 + 16);
        v90 = *(v89 + 16);
        v91 = **(v89 + 72) * v41;
        if (v127)
        {
          v92 = 0;
LABEL_63:
          v105 = &v13->f32[v92];
          v106 = (v90 + v91 + 2 * v92);
          v107 = v130 - v92;
          do
          {
            v108 = rintf(v105[v12]);
            if (v108 <= -32768)
            {
              LODWORD(v108) = -32768;
            }

            if (v108 >= 0x7FFF)
            {
              LOWORD(v108) = 0x7FFF;
            }

            *v106++ = v108;
            v105[v12] = *&v7 * *v105;
            ++v105;
            --v107;
          }

          while (v107);
          goto LABEL_14;
        }

        v98 = (v90 + v91);
        v99 = v128;
        v100 = v13;
        do
        {
          v101 = (v100 + v27);
          v102 = *(v100 + v27);
          a5 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v102.i8)));
          *v98++ = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(a5, vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v102, v102, 8uLL)))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*(v100[1].f32 + v27)))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(*(&v100[1] + v27), *(&v100[1] + v27), 8uLL))))));
          v103 = *v100;
          v104 = v100[1];
          v100 += 2;
          a4 = vmulq_n_f32(v104, *&v7);
          a3 = vmulq_n_f32(v103, *&v7);
          *v101 = a3;
          v101[1] = a4;
          v99 -= 8;
        }

        while (v99);
        v92 = v128;
        if (v128 != v130)
        {
          goto LABEL_63;
        }
      }

LABEL_14:
      ++v16;
      v18 = v28;
      if (v16 == v135)
      {
        goto LABEL_71;
      }
    }
  }

  LODWORD(v28) = v18;
LABEL_71:
  if (v12 >= 1)
  {
    v109 = *(a1 + 16);
    v110 = *(v109 + 16);
    v111 = **(v109 + 72) * v28;
    if (v12 >= 8)
    {
      v113 = (v110 + v111);
      v112 = v12 & 0x7FFFFFF8;
      v114 = v112;
      v115 = v123;
      do
      {
        v117 = *v115;
        v116 = v115[1];
        v115 += 2;
        *v113++ = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v117.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v117, v117, 8uLL)))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v116.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v116, v116, 8uLL))))));
        v114 -= 8;
      }

      while (v114);
      if (v112 == v12)
      {
        goto LABEL_83;
      }
    }

    else
    {
      v112 = 0;
    }

    v118 = (v110 + v111 + 2 * v112);
    v119 = &v13->f32[v112 + v12];
    v120 = v12 - v112;
    do
    {
      v121 = *v119++;
      v122 = rintf(v121);
      if (v122 <= -32768)
      {
        LODWORD(v122) = -32768;
      }

      if (v122 >= 0x7FFF)
      {
        LOWORD(v122) = 0x7FFF;
      }

      *v118++ = v122;
      --v120;
    }

    while (v120);
  }

LABEL_83:
  if (v13 != v141)
  {
    operator delete[]();
  }
}

void sub_10034F368(uint64_t a1)
{
  nullsub_1(a1);

  operator delete();
}

void sub_10034F3A0(uint64_t a1, int *a2, float32x4_t a3, double a4, double a5, double a6, double a7, double a8, __n128 a9)
{
  v9 = *(a1 + 16);
  v10 = *v9;
  v11 = (v10 >> 3) & 0x1FF;
  v12 = v11 + 1;
  v13 = (v11 + 1) * *(*(v9 + 8) + 4);
  v131 = v13;
  if ((2 * v13) >= 0x109)
  {
    operator new[]();
  }

  v14 = *(a1 + 40);
  v15 = &v143[4 * v13];
  v16 = *(a1 + 48);
  v17 = *(v16 + 4 * *a2);
  v139 = *(v16 + 4 * a2[1]);
  v18 = *(a1 + 24);
  v138 = *(a1 + 32);
  v19 = *(v138 + 12 * v17 + 4);
  if (v13 >= 1)
  {
    bzero(&v143[4 * v13], 4 * v13);
    v13 = v131;
  }

  if (v17 < v139)
  {
    v20 = *(a1 + 8);
    v21 = *(v20 + 16);
    v132 = v13;
    v133 = 4 * v13;
    v136 = **(v20 + 72);
    v137 = v12;
    v22 = 4 * ((v10 >> 3) & 0x1FF) + 4;
    v23 = &v143[v22];
    v124 = v21 + v22;
    v24 = v12 & 0x3F8;
    v126 = &v143[4 * v13 + 4 * v13];
    v127 = v15;
    v26 = v15 < &v143[v133] && v143 < &v143[4 * v13 + 4 * v13];
    v129 = v13 & 0x7FFFFFF8;
    v125 = v26;
    v128 = v13 < 8 || v26;
    v134 = (v18 + 8);
    v135 = v18;
    v140 = v21;
    v123 = v21 + 16;
    v27 = ((v10 >> 3) & 0x1FF) + 1;
    v28 = v13;
    v122 = &v144[v13];
    while (1)
    {
      v30 = (v138 + 12 * v17);
      a9.n128_u32[0] = v30[2];
      v29 = v30[1];
      v31 = *v30;
      if (v13 >= 1)
      {
        v32 = v23;
        v33 = v24;
        v141 = v17;
        v34 = v19;
        v35 = v11;
        v36 = v14;
        v37 = v27;
        v142 = a9;
        bzero(v143, v133);
        a9 = v142;
        v27 = v37;
        v14 = v36;
        v11 = v35;
        v19 = v34;
        v17 = v141;
        v24 = v33;
        v23 = v32;
        v13 = v131;
      }

      v38 = v136 * v31;
      v39 = v140 + v136 * v31;
      if (v11 > 1)
      {
        if (v11 == 2)
        {
          v76 = v14;
          v77 = v134;
          if (v14 >= 1)
          {
            do
            {
              v78 = *(v77 - 2);
              v79 = *(v77 - 1);
              v80 = *v77;
              v77 += 3;
              v81 = &v143[4 * v79];
              v82 = (v39 + 4 * v78);
              v83 = v81[1].f32[0] + (v82[1].f32[0] * v80);
              *v81 = vmla_n_f32(*v81, *v82, v80);
              v81[1].f32[0] = v83;
              --v76;
            }

            while (v76);
          }
        }

        else
        {
          if (v11 != 3)
          {
            if (v14 < 1)
            {
              goto LABEL_49;
            }

            v53 = 0;
            v54 = v124 + v38;
            v55 = v123 + v38;
            v56 = v140 + v38;
            while (2)
            {
              v57 = (v135 + 12 * v53);
              v59 = *v57;
              v58 = v57[1];
              a3.i32[0] = v57[2];
              if (v11 <= 6 || (&v143[4 * v58] < v54 + 4 * v59 ? (v60 = v39 + 4 * v59 >= &v23[4 * v58]) : (v60 = 1), !v60))
              {
                v66 = 0;
                goto LABEL_41;
              }

              v61 = vdupq_lane_s32(*a3.f32, 0);
              v62 = (v55 + 4 * v59);
              v63 = v24;
              v64 = &v144[v58];
              do
              {
                v65 = vmlaq_f32(*v64, v61, *v62);
                v64[-1] = vmlaq_f32(v64[-1], v61, v62[-1]);
                *v64 = v65;
                v62 += 2;
                v64 += 2;
                v63 -= 8;
              }

              while (v63);
              v66 = v24;
              if (v24 != v137)
              {
LABEL_41:
                v67 = (v56 + 4 * v66 + 4 * v59);
                v68 = &v143[4 * v66 + 4 * v58];
                v69 = v27 - v66;
                do
                {
                  v70 = *v67++;
                  *v68 = *v68 + (v70 * a3.f32[0]);
                  ++v68;
                  --v69;
                }

                while (v69);
              }

              if (++v53 == v14)
              {
                goto LABEL_49;
              }

              continue;
            }
          }

          v45 = v14;
          v46 = v134;
          if (v14 >= 1)
          {
            do
            {
              v47 = *(v46 - 2);
              v48 = *(v46 - 1);
              v49 = *v46;
              v46 += 3;
              v50 = &v143[4 * v48];
              v51 = (v39 + 4 * v47);
              v52 = v50[1];
              *v50 = vmla_n_f32(*v50, *v51, v49);
              v50[1] = vmla_n_f32(v52, v51[1], v49);
              --v45;
            }

            while (v45);
          }
        }
      }

      else if (v11)
      {
        v40 = v14;
        v41 = v134;
        if (v14 >= 1)
        {
          do
          {
            v42 = 4 * *(v41 - 1);
            v43 = *(v39 + 4 * *(v41 - 2));
            v44 = *v41;
            v41 += 3;
            *a3.f32 = vmla_n_f32(*&v143[v42], v43, v44);
            *&v143[v42] = a3.i64[0];
            --v40;
          }

          while (v40);
        }
      }

      else
      {
        v71 = v14;
        v72 = v134;
        if (v14 >= 1)
        {
          do
          {
            v74 = *(v72 - 2);
            v73 = *(v72 - 1);
            v75 = *v72;
            v72 += 3;
            *&v143[4 * v73] = *&v143[4 * v73] + (*(v39 + 4 * v74) * v75);
            --v71;
          }

          while (v71);
        }
      }

LABEL_49:
      if (v29 == v19)
      {
        if (v13 >= 1)
        {
          if (v128)
          {
            v84 = 0;
            goto LABEL_75;
          }

          a3 = vdupq_lane_s32(a9.n128_u64[0], 0);
          v97 = v129;
          v98 = v143;
          do
          {
            v99 = (v98 + v28 * 4);
            v100 = vmlaq_f32(*(v98 + v28 * 4 + 16), v98[1], a3);
            *v99 = vmlaq_f32(*(v98 + v28 * 4), *v98, a3);
            v99[1] = v100;
            v98 += 2;
            v97 -= 8;
          }

          while (v97);
          v84 = v129;
          if (v129 != v132)
          {
LABEL_75:
            v101 = &v143[4 * v84];
            v102 = v132 - v84;
            do
            {
              v101[v28] = v101[v28] + (a9.n128_f32[0] * *v101);
              ++v101;
              --v102;
            }

            while (v102);
          }
        }

        v29 = v19;
        goto LABEL_14;
      }

      if (v13 >= 1)
      {
        v85 = *(a1 + 16);
        v86 = *(v85 + 16);
        v87 = **(v85 + 72) * v19;
        if (v13 < 8 || ((v88 = v86 + v133 + v87, v86 + v87 < v126) ? (v89 = v127 >= v88) : (v89 = 1), v89 ? (v90 = 0) : (v90 = 1), v86 + v87 < &v143[v133] ? (v91 = v143 >= v88) : (v91 = 1), !v91 ? (v92 = 1) : (v92 = v90), ((v92 | v125) & 1) != 0))
        {
          v93 = 0;
        }

        else
        {
          v103 = (v86 + v87 + 16);
          v104 = v144;
          v105 = v122;
          v106 = v129;
          do
          {
            v107 = *v105;
            v103[-1] = v105[-1];
            *v103 = v107;
            a3 = vmulq_n_f32(v104[-1], a9.n128_f32[0]);
            v108 = vmulq_n_f32(*v104, a9.n128_f32[0]);
            v105[-1] = a3;
            *v105 = v108;
            v105 += 2;
            v104 += 2;
            v103 += 2;
            v106 -= 8;
          }

          while (v106);
          v93 = v129;
          if (v129 == v132)
          {
            goto LABEL_14;
          }
        }

        v94 = &v143[4 * v93];
        v95 = (v86 + v87 + 4 * v93);
        v96 = v132 - v93;
        do
        {
          *v95++ = LODWORD(v94[v28]);
          v94[v28] = a9.n128_f32[0] * *v94;
          ++v94;
          --v96;
        }

        while (v96);
      }

LABEL_14:
      ++v17;
      v19 = v29;
      if (v17 == v139)
      {
        goto LABEL_83;
      }
    }
  }

  LODWORD(v29) = v19;
LABEL_83:
  if (v13 >= 1)
  {
    v109 = *(a1 + 16);
    v110 = *(v109 + 16);
    v111 = **(v109 + 72) * v29;
    if (v13 < 0xC || (v112 = &v143[4 * v13], (v111 + v110 - v112) < 0x20))
    {
      v113 = 0;
LABEL_87:
      v114 = (v110 + v111 + 4 * v113);
      v115 = &v143[4 * v113 + 4 * v13];
      v116 = v13 - v113;
      do
      {
        v117 = *v115++;
        *v114++ = v117;
        --v116;
      }

      while (v116);
      return;
    }

    v113 = v13 & 0x7FFFFFF8;
    v118 = (v112 + 16);
    v119 = (v111 + v110 + 16);
    v120 = v113;
    do
    {
      v121 = *v118;
      *(v119 - 1) = *(v118 - 1);
      *v119 = v121;
      v118 += 2;
      v119 += 2;
      v120 -= 8;
    }

    while (v120);
    if (v113 != v13)
    {
      goto LABEL_87;
    }
  }
}

void sub_10034FA74(uint64_t a1)
{
  nullsub_1(a1);

  operator delete();
}

void sub_10034FAAC(uint64_t a1, int *a2)
{
  v2 = *(a1 + 16);
  v3 = *v2;
  v4 = (v3 >> 3) & 0x1FF;
  v5 = (v4 + 1) * *(*(v2 + 8) + 4);
  v123 = v5;
  if ((2 * v5) >= 0x89)
  {
    operator new[]();
  }

  v6 = *(a1 + 40);
  v7 = &v134[8 * v5];
  v8 = *(a1 + 48);
  v9 = *(v8 + 4 * *a2);
  v131 = *(v8 + 4 * a2[1]);
  v10 = *(a1 + 24);
  v130 = *(a1 + 32);
  v11 = *(v130 + 12 * v9 + 4);
  if (v5 >= 1)
  {
    bzero(&v134[8 * v5], 8 * v5);
    v5 = v123;
  }

  if (v9 < v131)
  {
    v12 = *(a1 + 8);
    v13 = *(v12 + 16);
    v124 = v5;
    v125 = 8 * v5;
    v128 = **(v12 + 72);
    v129 = (v4 + 1);
    v14 = (v3 & 0xFF8) + 8;
    v15 = &v134[v14];
    v116 = v13 + v14;
    v16 = (v4 + 1) & 0x3FC;
    v118 = &v134[8 * v5 + 8 * v5];
    v119 = v7;
    v18 = v7 < &v134[v125] && v134 < &v134[8 * v5 + 8 * v5];
    v121 = v5 & 0x7FFFFFFC;
    v117 = v18;
    v120 = v5 < 4 || v18;
    v126 = (v10 + 8);
    v127 = v10;
    v132 = v13;
    v115 = v13 + 16;
    v19 = ((v3 >> 3) & 0x1FF) + 1;
    v20 = v5;
    v114 = &v135[v5];
    while (1)
    {
      v22 = (v130 + 12 * v9);
      v23 = v22[2];
      v21 = *(v22 + 1);
      v24 = *v22;
      if (v5 >= 1)
      {
        v25 = v16;
        v133 = v9;
        v26 = v4;
        v27 = v11;
        v28 = v6;
        v29 = v19;
        bzero(v134, v125);
        v19 = v29;
        v6 = v28;
        v11 = v27;
        v4 = v26;
        v9 = v133;
        v16 = v25;
        v5 = v123;
      }

      v30 = v128 * v24;
      v31 = v132 + v128 * v24;
      if (v4 > 1)
      {
        if (v4 == 2)
        {
          v66 = v6;
          v67 = v126;
          if (v6 >= 1)
          {
            do
            {
              v68 = *(v67 - 2);
              v69 = *(v67 - 1);
              v70 = *v67;
              v67 += 3;
              v71 = &v134[8 * v69];
              v72 = (v31 + 8 * v68);
              v73 = v71[1].f64[0] + v72[1].f64[0] * v70;
              *v71 = vmlaq_n_f64(*v71, *v72, v70);
              v71[1].f64[0] = v73;
              --v66;
            }

            while (v66);
          }
        }

        else
        {
          if (v4 != 3)
          {
            if (v6 < 1)
            {
              goto LABEL_46;
            }

            v45 = 0;
            v46 = v116 + v30;
            v47 = v115 + v30;
            v48 = v132 + v30;
            while (2)
            {
              v49 = (v127 + 12 * v45);
              v51 = *v49;
              v50 = *(v49 + 1);
              *&v52 = v49[2];
              if (&v134[8 * v50] < v46 + 8 * v51 && v31 + 8 * v51 < &v15[8 * v50])
              {
                v59 = 0;
                goto LABEL_38;
              }

              v54 = vdupq_lane_s64(v52, 0);
              v55 = (v47 + 8 * v51);
              v56 = v16;
              v57 = &v135[v50];
              do
              {
                v58 = vmlaq_f64(*v57, v54, *v55);
                v57[-1] = vmlaq_f64(v57[-1], v54, v55[-1]);
                *v57 = v58;
                v55 += 2;
                v57 += 2;
                v56 -= 4;
              }

              while (v56);
              v59 = v16;
              if (v16 != v129)
              {
LABEL_38:
                v60 = (v48 + 8 * v59 + 8 * v51);
                v61 = &v134[8 * v59 + 8 * v50];
                v62 = v19 - v59;
                do
                {
                  v63 = *v60++;
                  *v61 = *v61 + v63 * *&v52;
                  ++v61;
                  --v62;
                }

                while (v62);
              }

              if (++v45 == v6)
              {
                goto LABEL_46;
              }

              continue;
            }
          }

          v37 = v6;
          v38 = v126;
          if (v6 >= 1)
          {
            do
            {
              v39 = *(v38 - 2);
              v40 = *(v38 - 1);
              v41 = *v38;
              v38 += 3;
              v42 = &v134[8 * v40];
              v43 = (v31 + 8 * v39);
              v44 = v42[1];
              *v42 = vmlaq_n_f64(*v42, *v43, v41);
              v42[1] = vmlaq_n_f64(v44, v43[1], v41);
              --v37;
            }

            while (v37);
          }
        }
      }

      else if (v4)
      {
        v32 = v6;
        v33 = v126;
        if (v6 >= 1)
        {
          do
          {
            v34 = *(v33 - 2);
            v35 = *(v33 - 1);
            v36 = *v33;
            v33 += 3;
            *&v134[8 * v35] = vmlaq_n_f64(*&v134[8 * v35], *(v31 + 8 * v34), v36);
            --v32;
          }

          while (v32);
        }
      }

      else
      {
        v64 = v6;
        v65 = v126;
        if (v6 >= 1)
        {
          do
          {
            *&v134[8 * *(v65 - 1)] = *&v134[8 * *(v65 - 1)] + *(v31 + 8 * *(v65 - 2)) * *v65;
            v65 += 3;
            --v64;
          }

          while (v64);
        }
      }

LABEL_46:
      *&v74 = v23;
      if (v21 == v11)
      {
        if (v5 >= 1)
        {
          if (v120)
          {
            v75 = 0;
            goto LABEL_72;
          }

          v88 = vdupq_lane_s64(v74, 0);
          v89 = v121;
          v90 = v134;
          do
          {
            v91 = (v90 + v20 * 8);
            v92 = vmlaq_f64(*(v90 + v20 * 8 + 16), v90[1], v88);
            *v91 = vmlaq_f64(*(v90 + v20 * 8), *v90, v88);
            v91[1] = v92;
            v90 += 2;
            v89 -= 4;
          }

          while (v89);
          v75 = v121;
          if (v121 != v124)
          {
LABEL_72:
            v93 = &v134[8 * v75];
            v94 = v124 - v75;
            do
            {
              v93[v20] = v93[v20] + *&v74 * *v93;
              ++v93;
              --v94;
            }

            while (v94);
          }
        }

        v21 = v11;
        goto LABEL_14;
      }

      if (v5 >= 1)
      {
        v76 = *(a1 + 16);
        v77 = *(v76 + 16);
        v78 = **(v76 + 72) * v11;
        if (v5 < 6 || ((v79 = v77 + v125 + v78, v77 + v78 < v118) ? (v80 = v119 >= v79) : (v80 = 1), v80 ? (v81 = 0) : (v81 = 1), v77 + v78 < &v134[v125] ? (v82 = v134 >= v79) : (v82 = 1), !v82 ? (v83 = 1) : (v83 = v81), ((v83 | v117) & 1) != 0))
        {
          v84 = 0;
        }

        else
        {
          v95 = (v77 + v78 + 16);
          v96 = v135;
          v97 = v114;
          v98 = v121;
          do
          {
            v99 = *v97;
            v95[-1] = v97[-1];
            *v95 = v99;
            v100 = vmulq_n_f64(*v96, *&v74);
            v97[-1] = vmulq_n_f64(v96[-1], *&v74);
            *v97 = v100;
            v97 += 2;
            v96 += 2;
            v95 += 2;
            v98 -= 4;
          }

          while (v98);
          v84 = v121;
          if (v121 == v124)
          {
            goto LABEL_14;
          }
        }

        v85 = &v134[8 * v84];
        v86 = (v77 + v78 + 8 * v84);
        v87 = v124 - v84;
        do
        {
          *v86++ = *&v85[v20];
          v85[v20] = *v85 * *&v74;
          ++v85;
          --v87;
        }

        while (v87);
      }

LABEL_14:
      ++v9;
      v11 = v21;
      if (v9 == v131)
      {
        goto LABEL_80;
      }
    }
  }

  LODWORD(v21) = v11;
LABEL_80:
  if (v5 >= 1)
  {
    v101 = *(a1 + 16);
    v102 = *(v101 + 16);
    v103 = **(v101 + 72) * v21;
    if (v5 < 0xA || (v104 = &v134[8 * v5], (v103 + v102 - v104) < 0x20))
    {
      v105 = 0;
LABEL_84:
      v106 = (v102 + v103 + 8 * v105);
      v107 = &v134[8 * v105 + 8 * v5];
      v108 = v5 - v105;
      do
      {
        v109 = *v107++;
        *v106++ = v109;
        --v108;
      }

      while (v108);
      return;
    }

    v105 = v5 & 0x7FFFFFFC;
    v110 = (v104 + 16);
    v111 = (v103 + v102 + 16);
    v112 = v105;
    do
    {
      v113 = *v110;
      *(v111 - 1) = *(v110 - 1);
      *v111 = v113;
      v110 += 2;
      v111 += 2;
      v112 -= 4;
    }

    while (v112);
    if (v105 != v5)
    {
      goto LABEL_84;
    }
  }
}

unsigned __int8 *sub_10035018C(unsigned __int8 *result, uint64_t a2, uint64_t a3, int16x8_t *a4, int16x8_t *a5, int a6, int a7, int a8)
{
  v8 = *result << 8;
  v9 = vdupq_n_s16(v8);
  if (a6 < 8)
  {
    v11 = 0;
    if (a6 <= 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v10 = 0;
    v11 = a6 & 0x7FFFFFF8;
    do
    {
      *a5++ = v9;
      v10 += 8;
      a4 += 2;
    }

    while (v10 < a6 - 7);
    if (v11 >= a6)
    {
      goto LABEL_16;
    }
  }

  v12 = (~v11 + a6);
  if (v12 > 0xE)
  {
    v14 = v12 + 1;
    v15 = (v12 + 1) & 0x1FFFFFFF0;
    a4 = (a4 + 4 * v15);
    v13 = (a5 + 2 * v15);
    v11 += v15;
    v16 = a5 + 1;
    v17 = v15;
    do
    {
      v16[-1] = v9;
      *v16 = v9;
      v16 += 2;
      v17 -= 16;
    }

    while (v17);
    if (v14 == v15)
    {
      v11 = a6;
      a5 = (a5 + 2 * v15);
      goto LABEL_16;
    }
  }

  else
  {
    v13 = a5;
  }

  v18 = a6 - v11;
  a5 = v13;
  do
  {
    a5->i16[0] = v8;
    a5 = (a5 + 2);
    a4 = (a4 + 4);
    --v18;
  }

  while (v18);
  v11 = a6;
LABEL_16:
  if (v11 < a7 - 7)
  {
    v19 = (a3 + 4 * v11 + 16);
    do
    {
      v20 = v19[3];
      if (v20 + 15 > *(a3 - 4 + 4 * a8))
      {
        break;
      }

      *v21.i8 = vzip1_s32(*&vmovl_u8(*&result[*(v19 - 4)]), *&vmovl_u8(*&result[*(v19 - 2)]));
      v21.u64[1] = vzip1_s32(*&vmovl_u8(*&result[*v19]), *&vmovl_u8(*&result[v19[2]]));
      *v22.i8 = vzip1_s32(*&vmovl_u8(*&result[*(v19 - 3)]), *&vmovl_u8(*&result[*(v19 - 1)]));
      v22.u64[1] = vzip1_s32(*&vmovl_u8(*&result[v19[1]]), *&vmovl_u8(*&result[v20]));
      v23 = vzip1q_s32(v21, v22);
      v24 = vzip2q_s32(v21, v22);
      v25 = *a4;
      v26 = a4[1];
      a4 += 2;
      *a5++ = vqmovn_high_u32(vqmovn_u32(vpaddq_s32(vmull_s16(*v23.i8, *v25.i8), vmull_high_s16(v23, v25))), vpaddq_s32(vmull_s16(*v24.i8, *v26.i8), vmull_high_s16(v24, v26)));
      v11 += 8;
      v19 += 8;
    }

    while (a7 - 7 > v11);
  }

  if (v11 < a7)
  {
    v27 = (a3 + 4 * v11);
    do
    {
      v28 = *v27++;
      a5->i16[0] = a4->i16[0] * result[v28] + a4->i16[1] * result[v28 + 1];
      a5 = (a5 + 2);
      a4 = (a4 + 4);
      ++v11;
    }

    while (v11 < a7);
  }

  v29 = result[*(a3 + 4 * a8 - 4)] << 8;
  for (i = vdupq_n_s16(v29); v11 < a8 - 7; v11 += 8)
  {
    *a5++ = i;
  }

  if (v11 < a8)
  {
    v31 = (~v11 + a8);
    if (v31 < 3)
    {
      v32 = a5;
      goto LABEL_39;
    }

    v33 = v31 + 1;
    if (v31 >= 0xF)
    {
      v34 = v33 & 0x1FFFFFFF0;
      v35 = a5 + 1;
      v36 = v33 & 0x1FFFFFFF0;
      do
      {
        v35[-1] = i;
        *v35 = i;
        v35 += 2;
        v36 -= 16;
      }

      while (v36);
      if (v33 == v34)
      {
        return result;
      }

      if ((v33 & 0xC) == 0)
      {
        v11 += v34;
        v32 = (a5 + 2 * v34);
LABEL_39:
        v40 = a8 - v11;
        do
        {
          v32->i16[0] = v29;
          v32 = (v32 + 2);
          --v40;
        }

        while (v40);
        return result;
      }
    }

    else
    {
      v34 = 0;
    }

    v32 = (a5 + 2 * (v33 & 0x1FFFFFFFCLL));
    v11 += v33 & 0xFFFFFFFC;
    v37 = vdup_n_s16(v29);
    v38 = (a5 + 2 * v34);
    v39 = v34 - (v33 & 0x1FFFFFFFCLL);
    do
    {
      *v38++ = v37;
      v39 += 4;
    }

    while (v39);
    if (v33 != (v33 & 0x1FFFFFFFCLL))
    {
      goto LABEL_39;
    }
  }

  return result;
}

int8x8_t *sub_10035043C(int8x8_t *result, unsigned int a2, uint64_t a3, __int16 *a4, unsigned __int8 *a5, int a6, int a7, int a8)
{
  if (a6 < 1)
  {
    a6 = 0;
    if (a7 <= 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v8 = 4 * (a6 - 1);
    if (a2 > 0)
    {
      if (a2 < 0x20)
      {
        v9 = 0;
        v10 = a5;
        do
        {
          v11 = result;
          v12 = a2;
          do
          {
            v13 = v11->u8[0];
            v11 = (v11 + 1);
            *v10 = v13 << 8;
            v10 += 2;
            --v12;
          }

          while (v12);
          ++v9;
        }

        while (v9 != a6);
LABEL_8:
        a4 = (a4 + v8 + 4);
        a5 = v10;
        if (a6 >= a7)
        {
          goto LABEL_23;
        }

        goto LABEL_13;
      }

      v43 = 0;
      while (1)
      {
        if (a5 >= result + a2 || &a5[2 * a2] <= result)
        {
          v10 = &a5[2 * (a2 & 0x7FFFFFE0)];
          v45 = (a5 + 32);
          v46 = a2 & 0x7FFFFFE0;
          v47 = result + 2;
          do
          {
            _Q0 = *v47[-2].i8;
            _Q1 = *v47->i8;
            v50 = vshll_n_s8(*_Q0.i8, 8uLL);
            __asm { SHLL2           V0.8H, V0.16B, #8 }

            v51 = vshll_n_s8(*v47, 8uLL);
            __asm { SHLL2           V1.8H, V1.16B, #8 }

            v45[-2] = v50;
            v45[-1] = _Q0;
            *v45 = v51;
            v45[1] = _Q1;
            v45 += 4;
            v47 += 4;
            v46 -= 32;
          }

          while (v46);
          v44 = a2 & 0x7FFFFFE0;
          if (v44 == a2)
          {
            goto LABEL_42;
          }
        }

        else
        {
          v44 = 0;
          v10 = a5;
        }

        v52 = a2 - v44;
        v53 = result + v44;
        do
        {
          v54 = *v53++;
          *v10 = v54 << 8;
          v10 += 2;
          --v52;
        }

        while (v52);
LABEL_42:
        ++v43;
        a5 = v10;
        if (v43 == a6)
        {
          goto LABEL_8;
        }
      }
    }

    a4 = (a4 + v8 + 4);
    if (a6 >= a7)
    {
      goto LABEL_23;
    }
  }

LABEL_13:
  if (a2 < 1)
  {
    return result;
  }

  v14 = a6;
  do
  {
    v15 = result + (*(a3 + 4 * v14) * a2);
    v16 = a2;
    do
    {
      v17 = *a4;
      if (*a4)
      {
        v17 *= *v15;
      }

      *a5 = v17;
      v18 = a4[1];
      if (v18)
      {
        v18 *= v15[a2];
      }

      *a5 = v18 + v17;
      a5 += 2;
      ++v15;
      --v16;
    }

    while (v16);
    ++v14;
    a4 += 2;
  }

  while (v14 < a7);
  a6 = a7;
LABEL_23:
  if (a2 < 1 || a6 >= a8)
  {
    return result;
  }

  v19 = (*(a3 + 4 * a8 - 4) * a2);
  v20 = result + v19;
  v21 = a2;
  if (a2 >= 0x20)
  {
    v25 = 2 * a2;
    v26 = &v20[a2];
    v27 = a2 & 0x7FFFFFE0;
    v28 = (result + v19);
    while (1)
    {
      if (a5 >= v26 || v20 >= &a5[v25])
      {
        v29 = &a5[2 * (v21 & 0x7FFFFFE0)];
        v30 = (a5 + 32);
        v31 = v21 & 0x7FFFFFE0;
        v32 = v28 + 2;
        do
        {
          _Q0 = *v32[-2].i8;
          _Q1 = *v32->i8;
          v35 = vshll_n_s8(*_Q0.i8, 8uLL);
          __asm { SHLL2           V0.8H, V0.16B, #8 }

          v40 = vshll_n_s8(*v32, 8uLL);
          __asm { SHLL2           V1.8H, V1.16B, #8 }

          v30[-2] = v35;
          v30[-1] = _Q0;
          *v30 = v40;
          v30[1] = _Q1;
          v30 += 4;
          v32 += 4;
          v31 -= 32;
        }

        while (v31);
        result = (v21 & 0x7FFFFFE0);
        if (v27 == v21)
        {
          goto LABEL_31;
        }
      }

      else
      {
        result = 0;
        v29 = a5;
      }

      v41 = v21 - result;
      result = (result + v28);
      do
      {
        v42 = result->u8[0];
        result = (result + 1);
        *v29 = v42 << 8;
        v29 += 2;
        --v41;
      }

      while (v41);
LABEL_31:
      ++a6;
      a5 = v29;
      if (a6 == a8)
      {
        return result;
      }
    }
  }

  do
  {
    v22 = result + v19;
    v23 = a2;
    do
    {
      v24 = *v22++;
      *a5 = v24 << 8;
      a5 += 2;
      --v23;
    }

    while (v23);
    ++a6;
  }

  while (a6 != a8);
  return result;
}

__int8 *sub_100350700(__int8 *result, int32x2_t a2, __n128 a3, int16x8_t a4, uint64_t a5, uint64_t a6, int32x4_t *a7, __n128 *a8, int a9, int a10, int a11)
{
  a2.i8[0] = *result;
  a2.i8[4] = result[1];
  *v11.i8 = vshl_n_s32(a2, 8uLL);
  if (a9 < 4)
  {
    v14 = 0;
    if (a9 <= 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v12 = 0;
    a4.i64[0] = v11.i64[0];
    a4.i64[1] = v11.i64[0];
    v13.i32[0] = vuzp1_s16(*v11.i8, *v11.i8).u32[0];
    v13.i32[1] = v13.i32[0];
    v13.i16[0] = vuzp1_s16(*v11.i8, *v11.i8).u16[0];
    a3 = vmovn_hight_s32(v13, a4);
    v14 = a9 & 0x7FFFFFFC;
    do
    {
      *a8++ = a3;
      v12 += 4;
      ++a7;
    }

    while (v12 < a9 - 3);
    if (v14 >= a9)
    {
      goto LABEL_16;
    }
  }

  v15 = (~v14 + a9);
  if (v15 > 0xE)
  {
    v17 = v15 + 1;
    v18 = (v15 + 1) & 0x1FFFFFFF0;
    a7 = (a7 + 4 * v18);
    v16 = (a8 + 4 * v18);
    v14 += v18;
    v19 = vdupq_lane_s16(*v11.i8, 0);
    v20 = vdupq_lane_s16(*v11.i8, 2);
    a3 = vzip2q_s16(v19, v20);
    a4 = vzip1q_s16(v19, v20);
    v21 = a8 + 2;
    v22 = v18;
    do
    {
      v21[-2] = a4;
      v21[-1] = a3;
      *v21 = a4;
      v21[1] = a3;
      v21 += 4;
      v22 -= 16;
    }

    while (v22);
    if (v17 == v18)
    {
      v14 = a9;
      a8 = (a8 + 4 * v18);
      goto LABEL_16;
    }
  }

  else
  {
    v16 = a8;
  }

  v23 = a9 - v14;
  a8 = v16;
  do
  {
    a8->n128_u16[0] = v11.i16[0];
    a8->n128_u16[1] = v11.u16[2];
    a8 = (a8 + 4);
    a7 = (a7 + 4);
    --v23;
  }

  while (v23);
  v14 = a9;
LABEL_16:
  if (v14 < a10 - 3)
  {
    v24 = (a6 + 4 * v14 + 12);
    do
    {
      v25 = *v24;
      if (v25 + 7 > *(a6 - 4 + 4 * a11))
      {
        break;
      }

      v26 = vadd_s32(*(v24 - 3), *(v24 - 3));
      v27 = v26.i32[1];
      v28 = vzip1q_s32(vmovl_u8(*&result[v26.i32[0]]), vmovl_u8(*&result[2 * *(v24 - 1)]));
      v29 = vzip2q_s32(vdupq_lane_s64(vmovl_u8(*&result[v27]).i64[0], 0), vdupq_lane_s64(vmovl_u8(*&result[2 * v25]).i64[0], 0));
      v30 = vzip1q_s32(v28, v29);
      v31 = vzip2q_s32(v28, v29);
      v32 = vzip1q_s16(v30, v31);
      v33 = vzip2q_s16(v30, v31);
      v34 = *a7++;
      v35 = v34;
      v36 = vzip1q_s32(v35, v35);
      a4 = vzip2q_s32(v35, v35);
      v11 = vpaddq_s32(vmull_s16(*v33.i8, *a4.i8), vmull_high_s16(v33, a4));
      a3 = vqmovn_high_u32(vqmovn_u32(vpaddq_s32(vmull_s16(*v32.i8, *v36.i8), vmull_high_s16(v32, v36))), v11);
      *a8++ = a3;
      v14 += 4;
      v24 += 4;
    }

    while (a10 - 3 > v14);
  }

  if (v14 < a10)
  {
    v37 = (a6 + 4 * v14);
    do
    {
      v38 = *v37++;
      v39 = &result[2 * v38];
      a8->n128_u16[0] = a7->i16[0] * *v39 + a7->i16[1] * v39[2];
      v40 = a7->i16[0] * v39[1] + a7->i16[1] * v39[3];
      v41 = &a8->n128_u8[4];
      a8->n128_u16[1] = v40;
      a7 = (a7 + 4);
      ++v14;
      a8 = (a8 + 4);
    }

    while (v14 < a10);
    a8 = v41;
  }

  v42 = &result[2 * *(a6 + 4 * a11 - 4)];
  v11.i8[0] = *v42;
  v11.i8[4] = v42[1];
  *v11.i8 = vshl_n_s32(*v11.i8, 8uLL);
  a3.n128_u64[0] = vuzp1_s16(*v11.i8, *v11.i8);
  if (v14 < a11 - 3)
  {
    v43.i64[0] = v11.i64[0];
    v43.i64[1] = v11.i64[0];
    v44.i32[0] = vuzp1_s16(*v11.i8, *v11.i8).u32[0];
    v44.i32[1] = v44.i32[0];
    v44.i16[0] = a3.n128_u16[0];
    v45 = vmovn_hight_s32(v44, v43);
    do
    {
      *a8++ = v45;
      v14 += 4;
    }

    while (v14 < a11 - 3);
  }

  if (v14 < a11)
  {
    v46 = (~v14 + a11);
    if (v46 < 3)
    {
      v47 = a8;
      goto LABEL_41;
    }

    v48 = v46 + 1;
    if (v46 >= 0xF)
    {
      v49 = v48 & 0x1FFFFFFF0;
      v50 = vdupq_lane_s16(*v11.i8, 0);
      v51 = vdupq_lane_s16(*v11.i8, 2);
      v52 = vzip2q_s16(v50, v51);
      v53 = vzip1q_s16(v50, v51);
      n128_u64 = a8[2].n128_u64;
      v55 = v48 & 0x1FFFFFFF0;
      do
      {
        *(n128_u64 - 2) = v53;
        *(n128_u64 - 1) = v52;
        *n128_u64 = v53;
        n128_u64[1] = v52;
        n128_u64 += 4;
        v55 -= 16;
      }

      while (v55);
      if (v48 == v49)
      {
        return result;
      }

      if ((v48 & 0xC) == 0)
      {
        v14 += v49;
        v47 = (a8 + 4 * v49);
LABEL_41:
        v59 = a11 - v14;
        do
        {
          v47->n128_u16[0] = v11.i16[0];
          v47->n128_u16[1] = v11.u16[2];
          v47 = (v47 + 4);
          --v59;
        }

        while (v59);
        return result;
      }
    }

    else
    {
      v49 = 0;
    }

    v47 = (a8 + 4 * (v48 & 0x1FFFFFFFCLL));
    v14 += v48 & 0xFFFFFFFC;
    a4.i32[0] = v11.i32[1];
    v56 = vqtbl2q_s8(*a3.n128_u64, xmmword_1003E9AE0);
    v57 = (a8 + 4 * v49);
    v58 = v49 - (v48 & 0x1FFFFFFFCLL);
    do
    {
      *v57++ = v56;
      v58 += 4;
    }

    while (v58);
    if (v48 != (v48 & 0x1FFFFFFFCLL))
    {
      goto LABEL_41;
    }
  }

  return result;
}

int8x8_t *sub_100350A64(int8x8_t *result, unsigned int a2, uint64_t a3, __int16 *a4, unsigned __int8 *a5, int a6, int a7, int a8)
{
  if (a6 < 1)
  {
    a6 = 0;
    if (a7 <= 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v8 = 4 * (a6 - 1);
    if (a2 > 0)
    {
      if (a2 < 0x20)
      {
        v9 = 0;
        v10 = a5;
        do
        {
          v11 = result;
          v12 = a2;
          do
          {
            v13 = v11->u8[0];
            v11 = (v11 + 1);
            *v10 = v13 << 8;
            v10 += 2;
            --v12;
          }

          while (v12);
          ++v9;
        }

        while (v9 != a6);
LABEL_8:
        a4 = (a4 + v8 + 4);
        a5 = v10;
        if (a6 >= a7)
        {
          goto LABEL_23;
        }

        goto LABEL_13;
      }

      v43 = 0;
      while (1)
      {
        if (a5 >= result + a2 || &a5[2 * a2] <= result)
        {
          v10 = &a5[2 * (a2 & 0x7FFFFFE0)];
          v45 = (a5 + 32);
          v46 = a2 & 0x7FFFFFE0;
          v47 = result + 2;
          do
          {
            _Q0 = *v47[-2].i8;
            _Q1 = *v47->i8;
            v50 = vshll_n_s8(*_Q0.i8, 8uLL);
            __asm { SHLL2           V0.8H, V0.16B, #8 }

            v51 = vshll_n_s8(*v47, 8uLL);
            __asm { SHLL2           V1.8H, V1.16B, #8 }

            v45[-2] = v50;
            v45[-1] = _Q0;
            *v45 = v51;
            v45[1] = _Q1;
            v45 += 4;
            v47 += 4;
            v46 -= 32;
          }

          while (v46);
          v44 = a2 & 0x7FFFFFE0;
          if (v44 == a2)
          {
            goto LABEL_42;
          }
        }

        else
        {
          v44 = 0;
          v10 = a5;
        }

        v52 = a2 - v44;
        v53 = result + v44;
        do
        {
          v54 = *v53++;
          *v10 = v54 << 8;
          v10 += 2;
          --v52;
        }

        while (v52);
LABEL_42:
        ++v43;
        a5 = v10;
        if (v43 == a6)
        {
          goto LABEL_8;
        }
      }
    }

    a4 = (a4 + v8 + 4);
    if (a6 >= a7)
    {
      goto LABEL_23;
    }
  }

LABEL_13:
  if (a2 < 1)
  {
    return result;
  }

  v14 = a6;
  do
  {
    v15 = result + (*(a3 + 4 * v14) * a2);
    v16 = a2;
    do
    {
      v17 = *a4;
      if (*a4)
      {
        v17 *= *v15;
      }

      *a5 = v17;
      v18 = a4[1];
      if (v18)
      {
        v18 *= v15[a2];
      }

      *a5 = v18 + v17;
      a5 += 2;
      ++v15;
      --v16;
    }

    while (v16);
    ++v14;
    a4 += 2;
  }

  while (v14 < a7);
  a6 = a7;
LABEL_23:
  if (a2 < 1 || a6 >= a8)
  {
    return result;
  }

  v19 = (*(a3 + 4 * a8 - 4) * a2);
  v20 = result + v19;
  v21 = a2;
  if (a2 >= 0x20)
  {
    v25 = 2 * a2;
    v26 = &v20[a2];
    v27 = a2 & 0x7FFFFFE0;
    v28 = (result + v19);
    while (1)
    {
      if (a5 >= v26 || v20 >= &a5[v25])
      {
        v29 = &a5[2 * (v21 & 0x7FFFFFE0)];
        v30 = (a5 + 32);
        v31 = v21 & 0x7FFFFFE0;
        v32 = v28 + 2;
        do
        {
          _Q0 = *v32[-2].i8;
          _Q1 = *v32->i8;
          v35 = vshll_n_s8(*_Q0.i8, 8uLL);
          __asm { SHLL2           V0.8H, V0.16B, #8 }

          v40 = vshll_n_s8(*v32, 8uLL);
          __asm { SHLL2           V1.8H, V1.16B, #8 }

          v30[-2] = v35;
          v30[-1] = _Q0;
          *v30 = v40;
          v30[1] = _Q1;
          v30 += 4;
          v32 += 4;
          v31 -= 32;
        }

        while (v31);
        result = (v21 & 0x7FFFFFE0);
        if (v27 == v21)
        {
          goto LABEL_31;
        }
      }

      else
      {
        result = 0;
        v29 = a5;
      }

      v41 = v21 - result;
      result = (result + v28);
      do
      {
        v42 = result->u8[0];
        result = (result + 1);
        *v29 = v42 << 8;
        v29 += 2;
        --v41;
      }

      while (v41);
LABEL_31:
      ++a6;
      a5 = v29;
      if (a6 == a8)
      {
        return result;
      }
    }
  }

  do
  {
    v22 = result + v19;
    v23 = a2;
    do
    {
      v24 = *v22++;
      *a5 = v24 << 8;
      a5 += 2;
      --v23;
    }

    while (v23);
    ++a6;
  }

  while (a6 != a8);
  return result;
}

unint64_t sub_100350D28(unint64_t result, uint64_t a2, uint64_t a3, _WORD *a4, _WORD *a5, int a6, int a7, int a8)
{
  if (a6 >= 1)
  {
    v8 = *result << 8;
    v9 = *(result + 1) << 8;
    v10 = *(result + 2) << 8;
    if (a6 > 0xF)
    {
      LOWORD(v13) = *result << 8;
      WORD1(v13) = *(result + 1) << 8;
      WORD2(v13) = *(result + 2) << 8;
      *(&v13 + 6) = v13;
      WORD5(v13) = WORD2(v13);
      HIDWORD(v13) = v13;
      v11 = a6 & 0x7FFFFFF0;
      LOWORD(v14) = WORD2(v13);
      *(&v14 + 2) = v13;
      WORD3(v14) = WORD2(v13);
      DWORD2(v14) = v13;
      WORD6(v14) = WORD2(v13);
      LOWORD(v15) = WORD1(v13);
      HIWORD(v14) = v13;
      WORD1(v15) = WORD2(v13);
      DWORD1(v15) = v13;
      WORD4(v15) = WORD2(v13);
      WORD5(v15) = v13;
      v12 = &a5[3 * v11];
      WORD6(v15) = WORD1(v13);
      HIWORD(v15) = WORD2(v13);
      v16 = v11;
      do
      {
        *a5 = v13;
        *(a5 + 1) = v14;
        *(a5 + 2) = v15;
        *(a5 + 3) = v13;
        *(a5 + 4) = v14;
        *(a5 + 5) = v15;
        a5 += 48;
        v16 -= 16;
      }

      while (v16);
      if (v11 == a6)
      {
LABEL_12:
        a4 += 2 * (a6 - 1) + 2;
        a5 = v12;
        if (a6 < a7)
        {
          goto LABEL_13;
        }

        goto LABEL_5;
      }
    }

    else
    {
      LODWORD(v11) = 0;
      v12 = a5;
    }

    v17 = a6 - v11;
    v18 = v12;
    do
    {
      *v18 = v8;
      v18[1] = v9;
      v12 = v18 + 3;
      v18[2] = v10;
      v18 += 3;
      --v17;
    }

    while (v17);
    goto LABEL_12;
  }

  a6 = 0;
  if (a7 > 0)
  {
LABEL_13:
    v19 = a7 - a6;
    v20 = (a3 + 4 * a6);
    do
    {
      v21 = *v20++;
      v22 = (result + 3 * v21);
      *a5 = *a4 * *v22 + a4[1] * v22[3];
      a5[1] = *a4 * v22[1] + a4[1] * v22[4];
      v23 = *a4 * v22[2] + a4[1] * v22[5];
      v24 = a5 + 3;
      a5[2] = v23;
      a4 += 2;
      a5 += 3;
      --v19;
    }

    while (v19);
    a5 = v24;
    if (a7 >= a8)
    {
      return result;
    }

    goto LABEL_16;
  }

LABEL_5:
  a7 = a6;
  if (a6 >= a8)
  {
    return result;
  }

LABEL_16:
  v25 = (result + 3 * *(a3 + 4 * a8 - 4));
  v26 = *v25 << 8;
  v27 = v25[1] << 8;
  v28 = v25[2] << 8;
  v29 = (~a7 + a8);
  if (v29 < 3)
  {
    v30 = a5;
    goto LABEL_29;
  }

  v31 = v29 + 1;
  if (v29 >= 0xF)
  {
    result = v27;
    LOWORD(v33) = v26;
    WORD1(v33) = v27;
    WORD2(v33) = v28;
    WORD3(v33) = v26;
    WORD4(v33) = v27;
    WORD5(v33) = v28;
    WORD6(v33) = v26;
    HIWORD(v33) = v27;
    LOWORD(v34) = v28;
    WORD1(v34) = v26;
    WORD2(v34) = v27;
    WORD3(v34) = v28;
    WORD4(v34) = v26;
    WORD5(v34) = v27;
    WORD6(v34) = v28;
    HIWORD(v34) = v26;
    v32 = v31 & 0x1FFFFFFF0;
    LOWORD(v35) = v27;
    WORD1(v35) = v28;
    WORD2(v35) = v26;
    WORD3(v35) = v27;
    WORD4(v35) = v28;
    WORD5(v35) = v26;
    WORD6(v35) = v27;
    HIWORD(v35) = v28;
    v36 = a5;
    v37 = v31 & 0x1FFFFFFF0;
    do
    {
      *v36 = v33;
      v36[1] = v34;
      v36[2] = v35;
      v36[3] = v33;
      v36[4] = v34;
      v36[5] = v35;
      v36 += 6;
      v37 -= 16;
    }

    while (v37);
    if (v31 == v32)
    {
      return result;
    }

    if ((v31 & 0xC) == 0)
    {
      v30 = &a5[3 * v32];
      a7 += v32;
LABEL_29:
      v43 = a8 - a7;
      do
      {
        *v30 = v26;
        v30[1] = v27;
        v30[2] = v28;
        v30 += 3;
        --v43;
      }

      while (v43);
      return result;
    }
  }

  else
  {
    v32 = 0;
  }

  a7 += v31 & 0xFFFFFFFC;
  *v38.i8 = vdup_n_s16(v26);
  v38.u64[1] = vdup_n_s16(v27);
  v30 = &a5[3 * (v31 & 0x1FFFFFFFCLL)];
  v39 = vdupq_n_s16(v28).u64[0];
  v40 = v32 - (v31 & 0x1FFFFFFFCLL);
  v41 = &a5[3 * v32];
  v42 = vextq_s8(v38, v38, 8uLL).u64[0];
  do
  {
    vst3_s16(v41, *v38.i8);
    v41 += 12;
    v40 += 4;
  }

  while (v40);
  if (v31 != (v31 & 0x1FFFFFFFCLL))
  {
    goto LABEL_29;
  }

  return result;
}

int8x8_t *sub_1003511E8(int8x8_t *result, unsigned int a2, uint64_t a3, __int16 *a4, unsigned __int8 *a5, int a6, int a7, int a8)
{
  if (a6 < 1)
  {
    a6 = 0;
    if (a7 <= 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v8 = 4 * (a6 - 1);
    if (a2 > 0)
    {
      if (a2 < 0x20)
      {
        v9 = 0;
        v10 = a5;
        do
        {
          v11 = result;
          v12 = a2;
          do
          {
            v13 = v11->u8[0];
            v11 = (v11 + 1);
            *v10 = v13 << 8;
            v10 += 2;
            --v12;
          }

          while (v12);
          ++v9;
        }

        while (v9 != a6);
LABEL_8:
        a4 = (a4 + v8 + 4);
        a5 = v10;
        if (a6 >= a7)
        {
          goto LABEL_23;
        }

        goto LABEL_13;
      }

      v43 = 0;
      while (1)
      {
        if (a5 >= result + a2 || &a5[2 * a2] <= result)
        {
          v10 = &a5[2 * (a2 & 0x7FFFFFE0)];
          v45 = (a5 + 32);
          v46 = a2 & 0x7FFFFFE0;
          v47 = result + 2;
          do
          {
            _Q0 = *v47[-2].i8;
            _Q1 = *v47->i8;
            v50 = vshll_n_s8(*_Q0.i8, 8uLL);
            __asm { SHLL2           V0.8H, V0.16B, #8 }

            v51 = vshll_n_s8(*v47, 8uLL);
            __asm { SHLL2           V1.8H, V1.16B, #8 }

            v45[-2] = v50;
            v45[-1] = _Q0;
            *v45 = v51;
            v45[1] = _Q1;
            v45 += 4;
            v47 += 4;
            v46 -= 32;
          }

          while (v46);
          v44 = a2 & 0x7FFFFFE0;
          if (v44 == a2)
          {
            goto LABEL_42;
          }
        }

        else
        {
          v44 = 0;
          v10 = a5;
        }

        v52 = a2 - v44;
        v53 = result + v44;
        do
        {
          v54 = *v53++;
          *v10 = v54 << 8;
          v10 += 2;
          --v52;
        }

        while (v52);
LABEL_42:
        ++v43;
        a5 = v10;
        if (v43 == a6)
        {
          goto LABEL_8;
        }
      }
    }

    a4 = (a4 + v8 + 4);
    if (a6 >= a7)
    {
      goto LABEL_23;
    }
  }

LABEL_13:
  if (a2 < 1)
  {
    return result;
  }

  v14 = a6;
  do
  {
    v15 = result + (*(a3 + 4 * v14) * a2);
    v16 = a2;
    do
    {
      v17 = *a4;
      if (*a4)
      {
        v17 *= *v15;
      }

      *a5 = v17;
      v18 = a4[1];
      if (v18)
      {
        v18 *= v15[a2];
      }

      *a5 = v18 + v17;
      a5 += 2;
      ++v15;
      --v16;
    }

    while (v16);
    ++v14;
    a4 += 2;
  }

  while (v14 < a7);
  a6 = a7;
LABEL_23:
  if (a2 < 1 || a6 >= a8)
  {
    return result;
  }

  v19 = (*(a3 + 4 * a8 - 4) * a2);
  v20 = result + v19;
  v21 = a2;
  if (a2 >= 0x20)
  {
    v25 = 2 * a2;
    v26 = &v20[a2];
    v27 = a2 & 0x7FFFFFE0;
    v28 = (result + v19);
    while (1)
    {
      if (a5 >= v26 || v20 >= &a5[v25])
      {
        v29 = &a5[2 * (v21 & 0x7FFFFFE0)];
        v30 = (a5 + 32);
        v31 = v21 & 0x7FFFFFE0;
        v32 = v28 + 2;
        do
        {
          _Q0 = *v32[-2].i8;
          _Q1 = *v32->i8;
          v35 = vshll_n_s8(*_Q0.i8, 8uLL);
          __asm { SHLL2           V0.8H, V0.16B, #8 }

          v40 = vshll_n_s8(*v32, 8uLL);
          __asm { SHLL2           V1.8H, V1.16B, #8 }

          v30[-2] = v35;
          v30[-1] = _Q0;
          *v30 = v40;
          v30[1] = _Q1;
          v30 += 4;
          v32 += 4;
          v31 -= 32;
        }

        while (v31);
        result = (v21 & 0x7FFFFFE0);
        if (v27 == v21)
        {
          goto LABEL_31;
        }
      }

      else
      {
        result = 0;
        v29 = a5;
      }

      v41 = v21 - result;
      result = (result + v28);
      do
      {
        v42 = result->u8[0];
        result = (result + 1);
        *v29 = v42 << 8;
        v29 += 2;
        --v41;
      }

      while (v41);
LABEL_31:
      ++a6;
      a5 = v29;
      if (a6 == a8)
      {
        return result;
      }
    }
  }

  do
  {
    v22 = result + v19;
    v23 = a2;
    do
    {
      v24 = *v22++;
      *a5 = v24 << 8;
      a5 += 2;
      --v23;
    }

    while (v23);
    ++a6;
  }

  while (a6 != a8);
  return result;
}

__int32 *sub_1003514AC(__int32 *result, uint8x8_t a2, uint64_t a3, uint64_t a4, const float *a5, uint64_t a6, int a7, int a8, int a9)
{
  a2.i32[0] = *result;
  *v9.i8 = vshl_n_s16(*&vmovl_u8(a2), 8uLL);
  if (a7 < 2)
  {
    LODWORD(v12) = 0;
    if (a7 > 0)
    {
LABEL_5:
      *a6 = v9.i64[0];
      a6 += 8;
      LODWORD(v12) = v12 | 1;
      ++a5;
    }
  }

  else
  {
    v10 = 0;
    *&v11 = v9.i64[0];
    *(&v11 + 1) = v9.i64[0];
    LODWORD(v12) = a7 & 0x7FFFFFFE;
    do
    {
      *a6 = v11;
      a6 += 16;
      v10 += 2;
      a5 += 2;
    }

    while (v10 < a7 - 1);
    if (v12 < a7)
    {
      goto LABEL_5;
    }
  }

  if (v12 < a8 - 1)
  {
    v12 = v12;
    v13 = a4 + 4 * v12 + 4;
    v14 = v13;
    do
    {
      v16 = *v14;
      v14 += 2;
      v15 = v16;
      if (v16 + 3 > *(a4 - 4 + 4 * a9))
      {
        break;
      }

      v17 = vmovl_u8(*&result[*(v13 - 4)]);
      v18 = vmovl_u8(*&result[v15]);
      v19.i64[0] = vextq_s8(v17, v17, 8uLL).u64[0];
      v17.i64[1] = v18.i64[0];
      v19.i64[1] = vextq_s8(v18, v18, 8uLL).u64[0];
      v20 = vzip1q_s16(v17, v19);
      v21 = vzip2q_s16(v17, v19);
      v22 = a5;
      *v19.i8 = vld1_dup_f32(v22++);
      v23 = vpaddq_s32(vmull_s16(*v20.i8, *v19.i8), vmull_s16(*&vextq_s8(v20, v20, 8uLL), *v19.i8));
      *v19.i8 = vld1_dup_f32(v22);
      v9 = vpaddq_s32(vmull_s16(*v21.i8, *v19.i8), vmull_s16(*&vextq_s8(v21, v21, 8uLL), *v19.i8));
      *a6 = vqmovn_high_u32(vqmovn_u32(v23), v9);
      a6 += 16;
      v12 += 2;
      a5 += 2;
      v13 = v14;
    }

    while (v12 < a8 - 1);
  }

  if (v12 >= a8)
  {
    a8 = v12;
  }

  else
  {
    v24 = (a4 + 4 * v12);
    v25 = a8 - v12;
    do
    {
      v26 = *v24++;
      v27 = &result[v26];
      *a6 = *a5 * *v27 + *(a5 + 1) * v27[4];
      *(a6 + 2) = *a5 * v27[1] + *(a5 + 1) * v27[5];
      *(a6 + 4) = *a5 * v27[2] + *(a5 + 1) * v27[6];
      v28 = *a5 * v27[3] + *(a5 + 1) * v27[7];
      v29 = a6 + 8;
      *(a6 + 6) = v28;
      ++a5;
      a6 += 8;
      --v25;
    }

    while (v25);
    a6 = v29;
  }

  v30 = a9 - 1;
  v9.i32[0] = result[*(a4 + 4 * v30)];
  *v9.i8 = vshl_n_s16(*&vmovl_u8(*v9.i8), 8uLL);
  if (a8 < v30)
  {
    *&v31 = v9.i64[0];
    *(&v31 + 1) = v9.i64[0];
    do
    {
      *a6 = v31;
      a6 += 16;
      a8 += 2;
    }

    while (a8 < v30);
  }

  if (a8 < a9)
  {
    *a6 = v9.i64[0];
  }

  return result;
}

int8x8_t *sub_1003516B8(int8x8_t *result, unsigned int a2, uint64_t a3, __int16 *a4, unsigned __int8 *a5, int a6, int a7, int a8)
{
  if (a6 < 1)
  {
    a6 = 0;
    if (a7 <= 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v8 = 4 * (a6 - 1);
    if (a2 > 0)
    {
      if (a2 < 0x20)
      {
        v9 = 0;
        v10 = a5;
        do
        {
          v11 = result;
          v12 = a2;
          do
          {
            v13 = v11->u8[0];
            v11 = (v11 + 1);
            *v10 = v13 << 8;
            v10 += 2;
            --v12;
          }

          while (v12);
          ++v9;
        }

        while (v9 != a6);
LABEL_8:
        a4 = (a4 + v8 + 4);
        a5 = v10;
        if (a6 >= a7)
        {
          goto LABEL_23;
        }

        goto LABEL_13;
      }

      v43 = 0;
      while (1)
      {
        if (a5 >= result + a2 || &a5[2 * a2] <= result)
        {
          v10 = &a5[2 * (a2 & 0x7FFFFFE0)];
          v45 = (a5 + 32);
          v46 = a2 & 0x7FFFFFE0;
          v47 = result + 2;
          do
          {
            _Q0 = *v47[-2].i8;
            _Q1 = *v47->i8;
            v50 = vshll_n_s8(*_Q0.i8, 8uLL);
            __asm { SHLL2           V0.8H, V0.16B, #8 }

            v51 = vshll_n_s8(*v47, 8uLL);
            __asm { SHLL2           V1.8H, V1.16B, #8 }

            v45[-2] = v50;
            v45[-1] = _Q0;
            *v45 = v51;
            v45[1] = _Q1;
            v45 += 4;
            v47 += 4;
            v46 -= 32;
          }

          while (v46);
          v44 = a2 & 0x7FFFFFE0;
          if (v44 == a2)
          {
            goto LABEL_42;
          }
        }

        else
        {
          v44 = 0;
          v10 = a5;
        }

        v52 = a2 - v44;
        v53 = result + v44;
        do
        {
          v54 = *v53++;
          *v10 = v54 << 8;
          v10 += 2;
          --v52;
        }

        while (v52);
LABEL_42:
        ++v43;
        a5 = v10;
        if (v43 == a6)
        {
          goto LABEL_8;
        }
      }
    }

    a4 = (a4 + v8 + 4);
    if (a6 >= a7)
    {
      goto LABEL_23;
    }
  }

LABEL_13:
  if (a2 < 1)
  {
    return result;
  }

  v14 = a6;
  do
  {
    v15 = result + (*(a3 + 4 * v14) * a2);
    v16 = a2;
    do
    {
      v17 = *a4;
      if (*a4)
      {
        v17 *= *v15;
      }

      *a5 = v17;
      v18 = a4[1];
      if (v18)
      {
        v18 *= v15[a2];
      }

      *a5 = v18 + v17;
      a5 += 2;
      ++v15;
      --v16;
    }

    while (v16);
    ++v14;
    a4 += 2;
  }

  while (v14 < a7);
  a6 = a7;
LABEL_23:
  if (a2 < 1 || a6 >= a8)
  {
    return result;
  }

  v19 = (*(a3 + 4 * a8 - 4) * a2);
  v20 = result + v19;
  v21 = a2;
  if (a2 >= 0x20)
  {
    v25 = 2 * a2;
    v26 = &v20[a2];
    v27 = a2 & 0x7FFFFFE0;
    v28 = (result + v19);
    while (1)
    {
      if (a5 >= v26 || v20 >= &a5[v25])
      {
        v29 = &a5[2 * (v21 & 0x7FFFFFE0)];
        v30 = (a5 + 32);
        v31 = v21 & 0x7FFFFFE0;
        v32 = v28 + 2;
        do
        {
          _Q0 = *v32[-2].i8;
          _Q1 = *v32->i8;
          v35 = vshll_n_s8(*_Q0.i8, 8uLL);
          __asm { SHLL2           V0.8H, V0.16B, #8 }

          v40 = vshll_n_s8(*v32, 8uLL);
          __asm { SHLL2           V1.8H, V1.16B, #8 }

          v30[-2] = v35;
          v30[-1] = _Q0;
          *v30 = v40;
          v30[1] = _Q1;
          v30 += 4;
          v32 += 4;
          v31 -= 32;
        }

        while (v31);
        result = (v21 & 0x7FFFFFE0);
        if (v27 == v21)
        {
          goto LABEL_31;
        }
      }

      else
      {
        result = 0;
        v29 = a5;
      }

      v41 = v21 - result;
      result = (result + v28);
      do
      {
        v42 = result->u8[0];
        result = (result + 1);
        *v29 = v42 << 8;
        v29 += 2;
        --v41;
      }

      while (v41);
LABEL_31:
      ++a6;
      a5 = v29;
      if (a6 == a8)
      {
        return result;
      }
    }
  }

  do
  {
    v22 = result + v19;
    v23 = a2;
    do
    {
      v24 = *v22++;
      *a5 = v24 << 8;
      a5 += 2;
      --v23;
    }

    while (v23);
    ++a6;
  }

  while (a6 != a8);
  return result;
}

int8x8_t *sub_10035197C(int8x8_t *result, unsigned int a2, uint64_t a3, const __int16 *a4, unint64_t a5, int a6, int a7, int a8)
{
  if (a6 < 1)
  {
    a6 = 0;
    if (a7 > 0)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

  v8 = 4 * (a6 - 1);
  if (a2 <= 0)
  {
    a4 = (a4 + v8 + 4);
    if (a6 < a7)
    {
      goto LABEL_9;
    }

LABEL_17:
    LODWORD(v14) = a6;
LABEL_32:
    v15 = a5;
    goto LABEL_33;
  }

  if (a2 >= 0x20)
  {
    v19 = 0;
    while (1)
    {
      if (a5 >= result + a2 || a5 + 2 * a2 <= result)
      {
        v10 = (a5 + 2 * (a2 & 0x7FFFFFE0));
        v21 = (a5 + 32);
        v22 = a2 & 0x7FFFFFE0;
        v23 = result + 2;
        do
        {
          _Q0 = *v23[-2].i8;
          _Q1 = *v23->i8;
          v26 = vshll_n_s8(*_Q0.i8, 8uLL);
          __asm { SHLL2           V0.8H, V0.16B, #8 }

          v30 = vshll_n_s8(*v23, 8uLL);
          __asm { SHLL2           V1.8H, V1.16B, #8 }

          v21[-2] = v26;
          v21[-1] = _Q0;
          *v21 = v30;
          v21[1] = _Q1;
          v21 += 4;
          v23 += 4;
          v22 -= 32;
        }

        while (v22);
        v20 = a2 & 0x7FFFFFE0;
        if (v20 == a2)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v20 = 0;
        v10 = a5;
      }

      v31 = (result + v20);
      v32 = a2 - v20;
      do
      {
        v33 = v31->u8[0];
        v31 = (v31 + 1);
        *v10++ = v33 << 8;
        --v32;
      }

      while (v32);
LABEL_21:
      ++v19;
      a5 = v10;
      if (v19 == a6)
      {
        goto LABEL_8;
      }
    }
  }

  v9 = 0;
  v10 = a5;
  do
  {
    v11 = result;
    v12 = a2;
    do
    {
      v13 = v11->u8[0];
      v11 = (v11 + 1);
      *v10++ = v13 << 8;
      --v12;
    }

    while (v12);
    ++v9;
  }

  while (v9 != a6);
LABEL_8:
  a4 = (a4 + v8 + 4);
  a5 = v10;
  if (a6 >= a7)
  {
    goto LABEL_17;
  }

LABEL_9:
  if (a2 < 1)
  {
    LODWORD(v14) = a7;
    goto LABEL_32;
  }

  v14 = a6;
  if (a2 >= 0x10)
  {
    v55 = 2 * a2;
    v56 = &a4[2 * (~a6 + a7) + 2];
    v57 = a4;
    while (1)
    {
      v58 = 0;
      v59 = *(a3 + 4 * v14);
      v60 = (result + v59 * a2);
      v61 = &v60->i8[a2];
      v62 = a5 + v55;
      v64 = a5 < result + v55 + v59 * a2 && v61 < v62;
      v66 = a5 < v61 && v60 < v62;
      v67 = a4 >= v62 || a5 >= v56;
      if (!v67 || v64 || v66)
      {
        v15 = a5;
      }

      else
      {
        v15 = (a5 + 2 * (a2 & 0x7FFFFFF0));
        v68 = v57;
        v69 = vld1q_dup_s16(v68++);
        v70 = vld1q_dup_s16(v68);
        v71 = a2 & 0x7FFFFFF0;
        do
        {
          v72 = *(v60 + a2);
          v73 = vmlaq_s16(vmulq_s16(v69, vmovl_high_u8(*v60)), v70, vmovl_high_u8(v72));
          *a5 = vmlaq_s16(vmulq_s16(v69, vmovl_u8(*v60->i8)), v70, vmovl_u8(*v72.i8));
          *(a5 + 16) = v73;
          a5 += 32;
          ++v60;
          v71 -= 16;
        }

        while (v71);
        v58 = a2 & 0x7FFFFFF0;
        if (v58 == a2)
        {
          goto LABEL_52;
        }
      }

      v74 = (result + v58 + v59 * a2);
      do
      {
        v75 = *v57 * v74->u8[0];
        *v15 = v75;
        *v15++ = v75 + v57[1] * v74->u8[a2];
        ++v58;
        v74 = (v74 + 1);
      }

      while (a2 != v58);
LABEL_52:
      ++v14;
      v57 += 2;
      a5 = v15;
      if (v14 >= a7)
      {
        goto LABEL_33;
      }
    }
  }

  v15 = a5;
  do
  {
    v16 = (result + *(a3 + 4 * v14) * a2);
    v17 = a2;
    do
    {
      v18 = *a4 * v16->u8[0];
      *v15 = v18;
      *v15++ = v18 + a4[1] * v16->u8[a2];
      v16 = (v16 + 1);
      --v17;
    }

    while (v17);
    ++v14;
    a4 += 2;
  }

  while (v14 < a7);
LABEL_33:
  if (v14 >= a8 || a2 < 1)
  {
    return result;
  }

  v34 = (*(a3 + 4 * a8 - 4) * a2);
  v35 = result + v34;
  v36 = a2;
  if (a2 >= 0x20)
  {
    v40 = a2;
    v41 = &v35[a2];
    v42 = a2 & 0x7FFFFFE0;
    v43 = (result + v34);
    while (1)
    {
      if (v15 >= v41 || v35 >= &v15[v40])
      {
        result = &v15[v36 & 0x7FFFFFE0];
        v45 = (v15 + 16);
        v46 = v36 & 0x7FFFFFE0;
        v47 = v43 + 2;
        do
        {
          _Q0 = *v47[-2].i8;
          _Q1 = *v47->i8;
          v50 = vshll_n_s8(*_Q0.i8, 8uLL);
          __asm { SHLL2           V0.8H, V0.16B, #8 }

          v51 = vshll_n_s8(*v47, 8uLL);
          __asm { SHLL2           V1.8H, V1.16B, #8 }

          v45[-2] = v50;
          v45[-1] = _Q0;
          *v45 = v51;
          v45[1] = _Q1;
          v45 += 4;
          v47 += 4;
          v46 -= 32;
        }

        while (v46);
        v44 = v36 & 0x7FFFFFE0;
        if (v42 == v36)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v44 = 0;
        result = v15;
      }

      v52 = (v43 + v44);
      v53 = v36 - v44;
      do
      {
        v54 = v52->u8[0];
        v52 = (v52 + 1);
        result->i16[0] = v54 << 8;
        result = (result + 2);
        --v53;
      }

      while (v53);
LABEL_41:
      LODWORD(v14) = v14 + 1;
      v15 = result;
      if (v14 == a8)
      {
        return result;
      }
    }
  }

  do
  {
    v37 = (result + v34);
    v38 = a2;
    do
    {
      v39 = v37->u8[0];
      v37 = (v37 + 1);
      *v15++ = v39 << 8;
      --v38;
    }

    while (v38);
    LODWORD(v14) = v14 + 1;
  }

  while (v14 != a8);
  return result;
}

int8x8_t *sub_100351D64(int8x8_t *result, unsigned int a2, uint64_t a3, __int16 *a4, int16x8_t *a5, uint64_t a6, int a7, int a8)
{
  if (a6 < 1)
  {
    LODWORD(a6) = 0;
    if (a7 <= 0)
    {
      goto LABEL_34;
    }

    goto LABEL_13;
  }

  v8 = 4 * (a6 - 1);
  if (a2 <= 0)
  {
    a4 = (a4 + v8 + 4);
    if (a6 >= a7)
    {
      goto LABEL_34;
    }

    goto LABEL_13;
  }

  if (a2 >= 0x20)
  {
    v18 = 0;
    while (1)
    {
      if (a5 >= (result + a2) || a5 + 2 * a2 <= result)
      {
        v10 = (a5 + 2 * (a2 & 0x7FFFFFE0));
        v20 = a5 + 2;
        v21 = a2 & 0x7FFFFFE0;
        v22 = result + 2;
        do
        {
          _Q0 = *v22[-2].i8;
          _Q1 = *v22->i8;
          v25 = vshll_n_s8(*_Q0.i8, 8uLL);
          __asm { SHLL2           V0.8H, V0.16B, #8 }

          v30 = vshll_n_s8(*v22, 8uLL);
          __asm { SHLL2           V1.8H, V1.16B, #8 }

          v20[-2] = v25;
          v20[-1] = _Q0;
          *v20 = v30;
          v20[1] = _Q1;
          v20 += 4;
          v22 += 4;
          v21 -= 32;
        }

        while (v21);
        v19 = a2 & 0x7FFFFFE0;
        if (v19 == a2)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v19 = 0;
        v10 = a5;
      }

      v31 = (result + v19);
      v32 = a2 - v19;
      do
      {
        v33 = v31->u8[0];
        v31 = (v31 + 1);
        v10->i16[0] = v33 << 8;
        v10 = (v10 + 2);
        --v32;
      }

      while (v32);
LABEL_23:
      ++v18;
      a5 = v10;
      if (v18 == a6)
      {
        goto LABEL_8;
      }
    }
  }

  v9 = 0;
  v10 = a5;
  do
  {
    v11 = result;
    v12 = a2;
    do
    {
      v13 = v11->u8[0];
      v11 = (v11 + 1);
      v10->i16[0] = v13 << 8;
      v10 = (v10 + 2);
      --v12;
    }

    while (v12);
    ++v9;
  }

  while (v9 != a6);
LABEL_8:
  a4 = (a4 + v8 + 4);
  a5 = v10;
  if (a6 < a7)
  {
LABEL_13:
    if (a2 < 1)
    {
      LODWORD(a6) = a7;
    }

    else
    {
      a6 = a6;
      do
      {
        v14 = 0;
        v15 = (result + (*(a3 + 4 * a6) * a2));
        do
        {
          v16 = *a4;
          if (*a4)
          {
            v16 *= v15->u8[0];
          }

          a5->i16[0] = v16;
          v17 = a4[1];
          if (v17)
          {
            v17 *= v15->u8[a2];
          }

          a5->i16[0] = v17 + v16;
          a5 = (a5 + 2);
          ++v14;
          v15 = (v15 + 1);
        }

        while (a2 != v14);
        ++a6;
        a4 += 2;
      }

      while (a6 < a7);
    }
  }

LABEL_34:
  if (a6 >= a8 || a2 < 1)
  {
    return result;
  }

  v34 = (*(a3 + 4 * a8 - 4) * a2);
  v35 = result + v34;
  v36 = a2;
  if (a2 >= 0x20)
  {
    v40 = 2 * a2;
    v41 = v35 + a2;
    v42 = a2 & 0x7FFFFFE0;
    v43 = (result + v34);
    while (1)
    {
      if (a5 >= v41 || v35 >= a5->u64 + v40)
      {
        v44 = (a5 + 2 * (v36 & 0x7FFFFFE0));
        v45 = a5 + 2;
        v46 = v36 & 0x7FFFFFE0;
        v47 = v43 + 2;
        do
        {
          _Q0 = *v47[-2].i8;
          _Q1 = *v47->i8;
          v50 = vshll_n_s8(*_Q0.i8, 8uLL);
          __asm { SHLL2           V0.8H, V0.16B, #8 }

          v51 = vshll_n_s8(*v47, 8uLL);
          __asm { SHLL2           V1.8H, V1.16B, #8 }

          v45[-2] = v50;
          v45[-1] = _Q0;
          *v45 = v51;
          v45[1] = _Q1;
          v45 += 4;
          v47 += 4;
          v46 -= 32;
        }

        while (v46);
        result = (v36 & 0x7FFFFFE0);
        if (v42 == v36)
        {
          goto LABEL_42;
        }
      }

      else
      {
        result = 0;
        v44 = a5;
      }

      v52 = (result + v43);
      result = (v36 - result);
      do
      {
        v53 = v52->u8[0];
        v52 = (v52 + 1);
        v44->i16[0] = v53 << 8;
        v44 = (v44 + 2);
        result = (result - 1);
      }

      while (result);
LABEL_42:
      LODWORD(a6) = a6 + 1;
      a5 = v44;
      if (a6 == a8)
      {
        return result;
      }
    }
  }

  do
  {
    v37 = (result + v34);
    v38 = a2;
    do
    {
      v39 = v37->u8[0];
      v37 = (v37 + 1);
      a5->i16[0] = v39 << 8;
      a5 = (a5 + 2);
      --v38;
    }

    while (v38);
    LODWORD(a6) = a6 + 1;
  }

  while (a6 != a8);
  return result;
}

uint64_t sub_10035202C(uint64_t a1, int a2, unsigned int *a3, _WORD *a4)
{
  sub_10029DA40(&v15, a2);
  v14 = 0x3FE0000000000000;
  sub_10029DFB4(&v15, &v14, &v17);
  sub_10029E004(a1, &v17, &v18);
  v13 = 0x3FE0000000000000;
  sub_10029DFDC(&v18, &v13, &v16);
  result = sub_10029DD18(&v16);
  if ((result & 0x80000000) != 0 || (v9 = *(a1 + 8), v9 < 2))
  {
    if (*(a1 + 12) <= a2 + 1)
    {
      v11 = a2 + 1;
    }

    else
    {
      v11 = *(a1 + 12);
    }

    *(a1 + 12) = v11;
  }

  else
  {
    v10 = v9 - 1;
    if (result >= v10)
    {
      *a3 = v10;
      v12 = *(a1 + 16);
      if (v12 >= a2)
      {
        v12 = a2;
      }

      *(a1 + 16) = v12;
    }

    else
    {
      *a3 = result;
      sub_10029DA40(&v14, result);
      sub_10029DFDC(&v16, &v14, &v15);
      if ((v15 & 0x8000000000000000) != 0)
      {
        result = 0;
      }

      else
      {
        sub_10029DA40(&v17, 256);
        sub_10029E004(&v15, &v17, &v18);
        result = sub_10029DC5C(&v18);
      }

      a4[1] = result;
      *a4 = 256 - result;
    }
  }

  return result;
}

void sub_100352198(uint64_t a1)
{
  nullsub_1(a1);

  operator delete();
}

__int8 *sub_1003521D0(uint64_t a1, int *a2)
{
  v3 = 2 * *(a1 + 48) * *(a1 + 56);
  bzero(v188, 0x410uLL);
  v186 = v188;
  v187 = v3;
  if (v3 >= 0x209)
  {
    operator new[]();
  }

  v5 = *a2;
  v6 = *(a1 + 104);
  if (v6 <= *a2)
  {
    v7 = *a2;
  }

  else
  {
    v7 = *(a1 + 104);
  }

  if (a2[1] >= *(a1 + 108))
  {
    v8 = *(a1 + 108);
  }

  else
  {
    v8 = a2[1];
  }

  v183 = v8;
  if (v5 >= v6)
  {
    v9 = 0;
    v10 = 4294967294;
    if (v5 >= v7)
    {
LABEL_11:
      if (v5 < v8)
      {
        goto LABEL_50;
      }

LABEL_12:
      v11 = v186;
      v12 = *(a1 + 28);
      if (v10 + 2 <= v12)
      {
        goto LABEL_128;
      }

      goto LABEL_13;
    }
  }

  else
  {
    (*(a1 + 112))(*(a1 + 8), *(a1 + 56), *(a1 + 64), *(a1 + 80), v188, *(a1 + 96), *(a1 + 100), *(a1 + 48));
    v5 = *a2;
    v9 = 1;
    v10 = 0xFFFFFFFFLL;
    v8 = v183;
    if (*a2 >= v7)
    {
      goto LABEL_11;
    }
  }

  v15 = v5;
  v16 = &qword_1004D4000;
  v17 = 0uLL;
  do
  {
    v18 = v186;
    v19 = *(a1 + 32);
    v20 = *(a1 + 40);
    v21 = *(a1 + 48);
    v22 = *(a1 + 56);
    if (atomic_load_explicit(&qword_1004D48E0, memory_order_acquire))
    {
      v23 = (v19 + v20 * v15);
      v24 = v22 * v21;
      if (v22 * v21 >= 16)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v179 = v10;
      v4 = sub_1003C8F0C();
      v17 = 0uLL;
      v16 = &qword_1004D4000;
      v8 = v183;
      v10 = v179;
      v23 = (v19 + v20 * v15);
      v24 = v22 * v21;
      if (v22 * v21 >= 16)
      {
LABEL_22:
        v25 = 0;
        v4 = *(v16 + 144);
        do
        {
          v26 = *v18;
          v27 = *(v18 + 1);
          v18 += 32;
          *v23++ = vqmovn_high_u16(vqmovn_u16(vshrq_n_u16(vqaddq_u16(v26, v4), 8uLL)), vshrq_n_u16(vqaddq_u16(v27, v4), 8uLL));
          v25 += 16;
        }

        while (v25 < v24 - 15);
        v28 = v24 & 0x7FFFFFF0;
        if ((v24 & 0x7FFFFFF0) >= v24)
        {
          goto LABEL_19;
        }

        goto LABEL_28;
      }
    }

    v28 = 0;
    if (v24 <= 0)
    {
      goto LABEL_19;
    }

LABEL_28:
    v29 = (v24 + ~v28);
    if (v29 < 3 || (v23 < &v18[2 * v29 + 2] ? (v30 = v18 >= &v23->i8[v29 + 1]) : (v30 = 1), !v30))
    {
      v33 = v18;
      v34 = v23;
      goto LABEL_37;
    }

    v31 = v29 + 1;
    if (v29 >= 0x1F)
    {
      v32 = v31 & 0x1FFFFFFE0;
      i8 = v23[1].i8;
      v38 = (v18 + 32);
      v39 = v31 & 0x1FFFFFFE0;
      do
      {
        v41 = v38[-2];
        v40 = v38[-1];
        v43 = *v38;
        v42 = v38[1];
        v38 += 4;
        v44 = vraddhn_high_s16(vraddhn_s16(v41, v17), v40, v17);
        v4 = vraddhn_high_s16(vraddhn_s16(v43, v17), v42, v17);
        *(i8 - 1) = v44;
        *i8 = v4;
        i8 += 2;
        v39 -= 32;
      }

      while (v39);
      if (v31 == v32)
      {
        goto LABEL_19;
      }

      if ((v31 & 0x1C) == 0)
      {
        v34 = (v23 + v32);
        v33 = &v18[2 * v32];
        v28 += v32;
LABEL_37:
        v35 = v24 - v28;
        do
        {
          v36 = *v33;
          v33 += 2;
          v34->i8[0] = (v36 + 128) >> 8;
          v34 = (v34 + 1);
          --v35;
        }

        while (v35);
        goto LABEL_19;
      }
    }

    else
    {
      v32 = 0;
    }

    v28 += v31 & 0xFFFFFFFC;
    v33 = &v18[2 * (v31 & 0x1FFFFFFFCLL)];
    v34 = (v23 + (v31 & 0x1FFFFFFFCLL));
    v45 = (v23->i32 + v32);
    v46 = v32 - (v31 & 0x1FFFFFFFCLL);
    v47 = &v18[2 * v32];
    do
    {
      v48 = *v47++;
      v4.n128_u64[0] = v48;
      *v45++ = vraddhn_s16(v4, v17).u32[0];
      v46 += 4;
    }

    while (v46);
    if (v31 != (v31 & 0x1FFFFFFFCLL))
    {
      goto LABEL_37;
    }

LABEL_19:
    ++v15;
  }

  while (v7 != v15);
  v5 = v7;
  if (v7 >= v8)
  {
    goto LABEL_12;
  }

LABEL_50:
  v49 = v5;
  v50.i64[0] = 0x800000008000;
  v50.i64[1] = 0x800000008000;
  v51.i64[0] = 0xFF000000FFLL;
  v51.i64[1] = 0xFF000000FFLL;
  v52 = xmmword_1003E36F0;
  while (2)
  {
    v53 = v10;
    v54 = *(a1 + 72);
    v55 = v10 + 2;
    LODWORD(v10) = *(v54 + 4 * v49);
    if (v10 <= v55)
    {
      v56 = v55;
    }

    else
    {
      v56 = *(v54 + 4 * v49);
    }

    v57 = v10 + 2;
    v58 = *(a1 + 28);
    if (v58 < v10 + 2)
    {
      v57 = *(a1 + 28);
    }

    if (v56 < v57)
    {
      if (v53 + 2 <= v10)
      {
        v59 = v10;
      }

      else
      {
        v59 = v53 + 2;
      }

      do
      {
        (*(a1 + 112))(*(a1 + 8) + *(a1 + 16) * v59++);
        LODWORD(v10) = *(v54 + 4 * v49);
        v9 = (v9 & 1) == 0;
        v60 = v10 + 2;
        v58 = *(a1 + 28);
        if (v58 < v10 + 2)
        {
          v60 = *(a1 + 28);
        }
      }

      while (v59 < v60);
      v8 = v183;
      v50.i64[0] = 0x800000008000;
      v50.i64[1] = 0x800000008000;
      v51.i64[0] = 0xFF000000FFLL;
      v51.i64[1] = 0xFF000000FFLL;
      v52 = xmmword_1003E36F0;
    }

    v61 = v58 - 2;
    if (v10 <= v61)
    {
      v62 = v61;
    }

    else
    {
      v62 = v10;
    }

    v63 = v62 + v9;
    if (v53 > v61)
    {
      v61 = v53;
    }

    v64 = v63 - v61;
    v185 = 0;
    if (v64 >= 0)
    {
      v9 = v64 & 1;
    }

    else
    {
      v9 = -(v64 & 1);
    }

    v65 = *(a1 + 88);
    if (v9 < 1)
    {
      v66 = 0;
      v68 = 0;
      v67 = &v185;
    }

    else
    {
      v66 = *(v65 + 4 * v49 + 2);
      v67 = (&v185 + 2);
      v68 = 1;
    }

    LOWORD(v185) = v66;
    v69 = v65 + 2 * (2 * v49 - v9);
    *v67 = *(v69 + 2 * v68);
    if (v9 <= 0)
    {
      HIWORD(v185) = *(v69 + 2);
      v70 = v186;
      v71 = *(a1 + 48);
      v72 = *(a1 + 56);
      v73 = *(a1 + 32);
      v74 = *(a1 + 40);
      if ((atomic_load_explicit(&qword_1004D48E8, memory_order_acquire) & 1) == 0)
      {
        goto LABEL_86;
      }

LABEL_78:
      if (atomic_load_explicit(&qword_1004D48F0, memory_order_acquire))
      {
        goto LABEL_79;
      }

LABEL_87:
      v181 = v10;
      v4 = sub_1003C8F8C();
      v52 = xmmword_1003E36F0;
      v51.i64[0] = 0xFF000000FFLL;
      v51.i64[1] = 0xFF000000FFLL;
      v50.i64[0] = 0x800000008000;
      v50.i64[1] = 0x800000008000;
      v8 = v183;
      LODWORD(v10) = v181;
      if ((atomic_load_explicit(&qword_1004D48F8, memory_order_acquire) & 1) == 0)
      {
        goto LABEL_88;
      }

LABEL_80:
      v75 = v72 * v71;
      v76 = (v73 + v74 * v49);
      v77 = &v70[2 * v75];
      if (v75 >= 16)
      {
        goto LABEL_81;
      }

LABEL_89:
      v96 = 0;
      if (v75 <= 0)
      {
        goto LABEL_51;
      }

LABEL_90:
      v97 = HIWORD(v185);
      v98 = (v75 + ~v96);
      if (v98 < 3 || ((v107 = v76->u64 + v98 + 1, v76 < &v70[2 * v98 + 2]) ? (v108 = v70 >= v107) : (v108 = 1), v108 ? (v109 = 0) : (v109 = 1), v76 < (&v185 + 2) ? (v110 = &v185 >= v107) : (v110 = 1), v110 ? (v111 = 0) : (v111 = 1), v77 < v107 ? (v112 = v76 >= &v77[2 * v98 + 2]) : (v112 = 1), !v112 || (v109 & 1) != 0 || (v111 & 1) != 0))
      {
        v99 = v77;
        v100 = v70;
        v101 = v76;
      }

      else
      {
        v113 = v98 + 1;
        if (v98 < 0xF)
        {
          v114 = 0;
LABEL_122:
          v133 = 2 * (v113 & 0x1FFFFFFFCLL);
          v99 = &v77[v133];
          v96 += v113 & 0xFFFFFFFC;
          v100 = &v70[v133];
          v101 = (v76 + (v113 & 0x1FFFFFFFCLL));
          v134 = &v185;
          v135 = vld1_dup_s16(v134);
          v4 = vmovl_u16(v135);
          v136 = (v76->i32 + v114);
          v137 = &v70[2 * v114];
          v138 = &v77[2 * v114];
          v139 = v114 - (v113 & 0x1FFFFFFFCLL);
          v4.n128_u64[0] = vmovn_s32(v4);
          v140 = vdup_n_s16(v97);
          do
          {
            v141 = *v137++;
            v142 = vmull_u16(v4.n128_u64[0], v141);
            v143 = *v138++;
            *v136++ = vuzp1_s8(vmovn_s32(vminq_u32(vshrq_n_u32(vaddq_s32(vmlal_u16(v142, v140, v143), v50), 0x10uLL), v51)), v4.n128_u64[0]).u32[0];
            v139 += 4;
          }

          while (v139);
          if (v113 == (v113 & 0x1FFFFFFFCLL))
          {
            goto LABEL_51;
          }

          goto LABEL_92;
        }

        v114 = v113 & 0x1FFFFFFF0;
        v115 = &v185;
        v4.n128_u64[0] = vld1_dup_s16(v115);
        v116 = vmovl_u16(v4.n128_u64[0]);
        v4 = vuzp1q_s16(v4, v116);
        v117 = vmovn_s32(v116);
        v118 = vuzp1q_s16(v4, v116);
        v119 = vdupq_n_s16(HIWORD(v185));
        v120 = v113 & 0x1FFFFFFF0;
        v121 = v77;
        v122 = v70;
        v123 = v76;
        do
        {
          v124 = *v122;
          v125 = v122[1];
          v122 += 2;
          v126 = vmull_high_u16(v4, v124);
          v127 = vmull_u16(v117, *v125.i8);
          v129 = *v121;
          v128 = v121[1];
          v121 += 2;
          v130 = vshrq_n_u32(vaddq_s32(vmlal_high_u16(vmull_high_u16(v118, v125), v119, v128), v50), 0x10uLL);
          v131 = vshrq_n_u32(vaddq_s32(vmlal_u16(v127, *v119.i8, *v128.i8), v50), 0x10uLL);
          v132 = vshrq_n_u32(vaddq_s32(vmlal_u16(vmull_u16(v117, *v124.i8), *v119.i8, *v129.i8), v50), 0x10uLL);
          v189.val[1] = vminq_u32(vshrq_n_u32(vaddq_s32(vmlal_high_u16(v126, v119, v129), v50), 0x10uLL), v51);
          v189.val[0] = vminq_u32(v132, v51);
          v189.val[2] = vminq_u32(v131, v51);
          v189.val[3] = vminq_u32(v130, v51);
          *v123++ = vqtbl4q_s8(v189, v52);
          v120 -= 16;
        }

        while (v120);
        if (v113 == v114)
        {
          goto LABEL_51;
        }

        if ((v113 & 0xC) != 0)
        {
          goto LABEL_122;
        }

        v101 = (v76 + v114);
        v100 = &v70[2 * v114];
        v96 += v114;
        v99 = &v77[2 * v114];
      }

LABEL_92:
      v102 = v75 - v96;
      do
      {
        v104 = *v100++;
        v103 = v104;
        v105 = *v99++;
        v106 = (v97 * v105 + v185 * v103 + 0x8000) >> 16;
        if (v106 >= 0xFF)
        {
          LOBYTE(v106) = -1;
        }

        v101->i8[0] = v106;
        v101 = (v101 + 1);
        --v102;
      }

      while (v102);
      goto LABEL_51;
    }

    v70 = v186;
    v71 = *(a1 + 48);
    v72 = *(a1 + 56);
    v73 = *(a1 + 32);
    v74 = *(a1 + 40);
    if (atomic_load_explicit(&qword_1004D48E8, memory_order_acquire))
    {
      goto LABEL_78;
    }

LABEL_86:
    v180 = v10;
    v4 = sub_1003C8F4C();
    v52 = xmmword_1003E36F0;
    v51.i64[0] = 0xFF000000FFLL;
    v51.i64[1] = 0xFF000000FFLL;
    v50.i64[0] = 0x800000008000;
    v50.i64[1] = 0x800000008000;
    v8 = v183;
    LODWORD(v10) = v180;
    if ((atomic_load_explicit(&qword_1004D48F0, memory_order_acquire) & 1) == 0)
    {
      goto LABEL_87;
    }

LABEL_79:
    if (atomic_load_explicit(&qword_1004D48F8, memory_order_acquire))
    {
      goto LABEL_80;
    }

LABEL_88:
    v182 = v10;
    v4 = sub_1003C8FCC();
    v52 = xmmword_1003E36F0;
    v51.i64[0] = 0xFF000000FFLL;
    v51.i64[1] = 0xFF000000FFLL;
    v50.i64[0] = 0x800000008000;
    v50.i64[1] = 0x800000008000;
    v8 = v183;
    LODWORD(v10) = v182;
    v75 = v72 * v71;
    v76 = (v73 + v74 * v49);
    v77 = &v70[2 * v75];
    if (v75 < 16)
    {
      goto LABEL_89;
    }

LABEL_81:
    v78 = 0;
    v79 = &v185;
    v4 = vld1q_dup_f32(v79);
    v81 = xmmword_1004D4910;
    v80 = xmmword_1004D4920;
    v82 = xmmword_1004D4930;
    do
    {
      v83 = *v70;
      v84 = *(v70 + 1);
      v70 += 32;
      v85 = vaddq_s16(v80, v83);
      v86 = *v77;
      v87 = *(v77 + 1);
      v77 += 32;
      v88 = vaddq_s16(v80, v86);
      v89 = vzip1q_s16(v85, v88);
      v90 = vzip2q_s16(v85, v88);
      v91 = vpaddq_s32(vmull_s16(*v89.i8, v4.n128_u64[0]), vmull_high_s16(v89, v4));
      v92 = vaddq_s16(v84, v80);
      v93 = vaddq_s16(v87, v80);
      v94 = vzip1q_s16(v92, v93);
      v95 = vzip2q_s16(v92, v93);
      *v76++ = vsubq_s8(vqmovn_high_s16(vqmovn_s16(vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(vaddq_s32(v91, v81), 0x10uLL)), vshrq_n_s32(vaddq_s32(vpaddq_s32(vmull_s16(*v90.i8, v4.n128_u64[0]), vmull_high_s16(v90, v4)), v81), 0x10uLL))), vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(vaddq_s32(vpaddq_s32(vmull_s16(*v94.i8, v4.n128_u64[0]), vmull_high_s16(v94, v4)), v81), 0x10uLL)), vshrq_n_s32(vaddq_s32(vpaddq_s32(vmull_s16(*v95.i8, v4.n128_u64[0]), vmull_high_s16(v95, v4)), v81), 0x10uLL))), v82);
      v78 += 16;
    }

    while (v78 < v75 - 15);
    v96 = v75 & 0x7FFFFFF0;
    if ((v75 & 0x7FFFFFF0) < v75)
    {
      goto LABEL_90;
    }

LABEL_51:
    if (v8 != ++v49)
    {
      continue;
    }

    break;
  }

  v5 = v8;
  v11 = v186;
  v12 = *(a1 + 28);
  if (v10 + 2 <= v12)
  {
LABEL_128:
    (*(a1 + 112))(*(a1 + 8) + *(a1 + 16) * (v12 - 1), *(a1 + 56), *(a1 + 64), *(a1 + 80), v11, *(a1 + 96), *(a1 + 100), *(a1 + 48));
    goto LABEL_129;
  }

LABEL_13:
  v13 = v9 + ~v10 + v12;
  if (v13 >= 0)
  {
    v14 = v13 & 1;
  }

  else
  {
    v14 = -(v13 & 1);
  }

  v11 += 2 * *(a1 + 48) * v14 * *(a1 + 56);
LABEL_129:
  if (v5 < a2[1])
  {
    v144 = v5;
    v145 = 0uLL;
    do
    {
      v146 = *(a1 + 32);
      v147 = *(a1 + 40);
      v148 = *(a1 + 48);
      v149 = *(a1 + 56);
      if (atomic_load_explicit(&qword_1004D48E0, memory_order_acquire))
      {
        v150 = (v146 + v147 * v144);
        v151 = v149 * v148;
        if (v149 * v148 >= 16)
        {
          goto LABEL_134;
        }
      }

      else
      {
        v4 = sub_1003C8F0C();
        v145 = 0uLL;
        v150 = (v146 + v147 * v144);
        v151 = v149 * v148;
        if (v149 * v148 >= 16)
        {
LABEL_134:
          v152 = 0;
          v4 = xmmword_1004D4900;
          v153 = v11;
          do
          {
            v154 = *v153;
            v155 = *(v153 + 1);
            v153 += 32;
            *v150++ = vqmovn_high_u16(vqmovn_u16(vshrq_n_u16(vqaddq_u16(v154, v4), 8uLL)), vshrq_n_u16(vqaddq_u16(v155, v4), 8uLL));
            v152 += 16;
          }

          while (v152 < v151 - 15);
          v156 = v151 & 0x7FFFFFF0;
          if ((v151 & 0x7FFFFFF0) >= v151)
          {
            goto LABEL_131;
          }

LABEL_140:
          v157 = (v151 + ~v156);
          if (v157 < 3 || (v150 < &v153[2 * v157 + 2] ? (v158 = v153 >= &v150->i8[v157 + 1]) : (v158 = 1), !v158))
          {
            v161 = v153;
            v162 = v150;
            goto LABEL_149;
          }

          v159 = v157 + 1;
          if (v157 >= 0x1F)
          {
            v160 = v159 & 0x1FFFFFFE0;
            v165 = v150[1].i8;
            v166 = (v153 + 32);
            v167 = v159 & 0x1FFFFFFE0;
            do
            {
              v169 = v166[-2];
              v168 = v166[-1];
              v171 = *v166;
              v170 = v166[1];
              v166 += 4;
              v172 = vraddhn_high_s16(vraddhn_s16(v169, v145), v168, v145);
              v4 = vraddhn_high_s16(vraddhn_s16(v171, v145), v170, v145);
              *(v165 - 1) = v172;
              *v165 = v4;
              v165 += 2;
              v167 -= 32;
            }

            while (v167);
            if (v159 == v160)
            {
              goto LABEL_131;
            }

            if ((v159 & 0x1C) == 0)
            {
              v162 = (v150 + v160);
              v161 = &v153[2 * v160];
              v156 += v160;
LABEL_149:
              v163 = v151 - v156;
              do
              {
                v164 = *v161;
                v161 += 2;
                v162->i8[0] = (v164 + 128) >> 8;
                v162 = (v162 + 1);
                --v163;
              }

              while (v163);
              goto LABEL_131;
            }
          }

          else
          {
            v160 = 0;
          }

          v156 += v159 & 0xFFFFFFFC;
          v161 = &v153[2 * (v159 & 0x1FFFFFFFCLL)];
          v162 = (v150 + (v159 & 0x1FFFFFFFCLL));
          v173 = (v150->i32 + v160);
          v174 = v160 - (v159 & 0x1FFFFFFFCLL);
          v175 = &v153[2 * v160];
          do
          {
            v176 = *v175++;
            v4.n128_u64[0] = v176;
            *v173++ = vraddhn_s16(v4, v145).u32[0];
            v174 += 4;
          }

          while (v174);
          if (v159 == (v159 & 0x1FFFFFFFCLL))
          {
            goto LABEL_131;
          }

          goto LABEL_149;
        }
      }

      v156 = 0;
      v153 = v11;
      if (v151 > 0)
      {
        goto LABEL_140;
      }

LABEL_131:
      ++v144;
    }

    while (v144 < a2[1]);
  }

  result = v186;
  if (v186 != v188 && v186 != 0)
  {
    operator delete[]();
  }

  return result;
}

void sub_100352CE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (a20 != a11)
  {
    if (a20)
    {
      operator delete[]();
    }
  }

  _Unwind_Resume(a1);
}

char *sub_100352D28(char *result, uint64_t a2, uint64_t a3, int *a4, int32x4_t *a5, int a6, int a7, int a8)
{
  if (a6 < 1)
  {
    a6 = 0;
    if (a7 <= 0)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  v8 = *result << 16;
  if (a6 <= 7)
  {
    LODWORD(v9) = 0;
    v10 = a5;
LABEL_9:
    v14 = a6 - v9;
    do
    {
      *v10++ = v8;
      --v14;
    }

    while (v14);
    goto LABEL_11;
  }

  v9 = a6 & 0x7FFFFFF8;
  v10 = a5 + v9;
  v11 = vdupq_n_s32(v8);
  v12 = a5 + 1;
  v13 = v9;
  do
  {
    v12[-1] = v11;
    *v12 = v11;
    v12 += 2;
    v13 -= 8;
  }

  while (v13);
  if (v9 != a6)
  {
    goto LABEL_9;
  }

LABEL_11:
  a4 += 2 * (a6 - 1) + 2;
  a5 = v10;
  if (a6 >= a7)
  {
    goto LABEL_15;
  }

LABEL_12:
  v15 = a7 - a6;
  v16 = (a3 + 4 * a6);
  do
  {
    v17 = *v16++;
    v18 = *a4;
    v19 = a4[1];
    a4 += 2;
    a5->i32[0] = v18 * result[v17] + v19 * result[v17 + 1];
    a5 = (a5 + 4);
    --v15;
  }

  while (v15);
  a6 = a7;
LABEL_15:
  if (a6 >= a8)
  {
    return result;
  }

  v20 = result[*(a3 + 4 * a8 - 4)] << 16;
  v21 = (~a6 + a8);
  if (v21 < 7)
  {
    v22 = a5;
LABEL_21:
    v28 = a8 - a6;
    do
    {
      *v22++ = v20;
      --v28;
    }

    while (v28);
    return result;
  }

  v23 = v21 + 1;
  v24 = (v21 + 1) & 0x1FFFFFFF8;
  a6 += v24;
  v22 = a5 + v24;
  v25 = vdupq_n_s32(v20);
  v26 = a5 + 1;
  v27 = v24;
  do
  {
    v26[-1] = v25;
    *v26 = v25;
    v26 += 2;
    v27 -= 8;
  }

  while (v27);
  if (v23 != v24)
  {
    goto LABEL_21;
  }

  return result;
}

int8x16_t *sub_100352E60(int8x16_t *result, unsigned int a2, uint64_t a3, int *a4, char *a5, int a6, int a7, int a8)
{
  if (a6 < 1)
  {
    a6 = 0;
    if (a7 <= 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v8 = 8 * (a6 - 1);
    if (a2 > 0)
    {
      if (a2 < 0x20)
      {
        v9 = 0;
        v10 = a5;
        do
        {
          v11 = result;
          v12 = a2;
          do
          {
            v13 = v11->i8[0];
            v11 = (v11 + 1);
            *v10 = v13 << 16;
            v10 += 4;
            --v12;
          }

          while (v12);
          ++v9;
        }

        while (v9 != a6);
LABEL_8:
        a4 = (a4 + v8 + 8);
        a5 = v10;
        if (a6 >= a7)
        {
          goto LABEL_23;
        }

        goto LABEL_13;
      }

      v48 = 0;
      while (1)
      {
        if (a5 >= &result->i8[a2] || &a5[4 * a2] <= result)
        {
          v10 = &a5[4 * (a2 & 0x7FFFFFE0)];
          v50 = (a5 + 64);
          v51 = a2 & 0x7FFFFFE0;
          v52 = result + 1;
          do
          {
            v53 = v52[-1];
            _Q2 = vmovl_high_s8(v53);
            _Q0 = vmovl_s8(*v53.i8);
            _Q3 = vmovl_high_s8(*v52);
            _Q1 = vmovl_s8(*v52->i8);
            v58 = vshll_n_s16(*_Q2.i8, 0x10uLL);
            __asm { SHLL2           V2.4S, V2.8H, #0x10 }

            v50[-2] = v58;
            v50[-1] = _Q2;
            v59 = vshll_n_s16(*_Q0.i8, 0x10uLL);
            __asm { SHLL2           V0.4S, V0.8H, #0x10 }

            v60 = vshll_n_s16(*_Q1.i8, 0x10uLL);
            __asm { SHLL2           V1.4S, V1.8H, #0x10 }

            v50[-4] = v59;
            v50[-3] = _Q0;
            __asm { SHLL2           V0.4S, V3.8H, #0x10 }

            v50[2] = vshll_n_s16(*_Q3.i8, 0x10uLL);
            v50[3] = _Q0;
            *v50 = v60;
            v50[1] = _Q1;
            v50 += 8;
            v52 += 2;
            v51 -= 32;
          }

          while (v51);
          v49 = a2 & 0x7FFFFFE0;
          if (v49 == a2)
          {
            goto LABEL_42;
          }
        }

        else
        {
          v49 = 0;
          v10 = a5;
        }

        v62 = a2 - v49;
        v63 = &result->i8[v49];
        do
        {
          v64 = *v63++;
          *v10 = v64 << 16;
          v10 += 4;
          --v62;
        }

        while (v62);
LABEL_42:
        ++v48;
        a5 = v10;
        if (v48 == a6)
        {
          goto LABEL_8;
        }
      }
    }

    a4 = (a4 + v8 + 8);
    if (a6 >= a7)
    {
      goto LABEL_23;
    }
  }

LABEL_13:
  if (a2 < 1)
  {
    return result;
  }

  v14 = a6;
  do
  {
    v15 = &result->i8[*(a3 + 4 * v14) * a2];
    v16 = a2;
    do
    {
      v17 = *a4;
      if (*a4)
      {
        v17 *= *v15;
      }

      *a5 = v17;
      v18 = a4[1];
      if (v18)
      {
        v18 *= v15[a2];
      }

      *a5 = v18 + v17;
      a5 += 4;
      ++v15;
      --v16;
    }

    while (v16);
    ++v14;
    a4 += 2;
  }

  while (v14 < a7);
  a6 = a7;
LABEL_23:
  if (a2 < 1 || a6 >= a8)
  {
    return result;
  }

  v19 = (*(a3 + 4 * a8 - 4) * a2);
  v20 = &result->i8[v19];
  v21 = a2;
  if (a2 >= 0x20)
  {
    v25 = 4 * a2;
    v26 = &v20[a2];
    v27 = a2 & 0x7FFFFFE0;
    v28 = (result + v19);
    while (1)
    {
      if (a5 >= v26 || v20 >= &a5[v25])
      {
        v29 = &a5[4 * (v21 & 0x7FFFFFE0)];
        v30 = (a5 + 64);
        v31 = v21 & 0x7FFFFFE0;
        v32 = v28 + 1;
        do
        {
          v33 = v32[-1];
          _Q2 = vmovl_high_s8(v33);
          _Q0 = vmovl_s8(*v33.i8);
          _Q3 = vmovl_high_s8(*v32);
          _Q1 = vmovl_s8(*v32->i8);
          v38 = vshll_n_s16(*_Q2.i8, 0x10uLL);
          __asm { SHLL2           V2.4S, V2.8H, #0x10 }

          v30[-2] = v38;
          v30[-1] = _Q2;
          v43 = vshll_n_s16(*_Q0.i8, 0x10uLL);
          __asm { SHLL2           V0.4S, V0.8H, #0x10 }

          v44 = vshll_n_s16(*_Q1.i8, 0x10uLL);
          __asm { SHLL2           V1.4S, V1.8H, #0x10 }

          v30[-4] = v43;
          v30[-3] = _Q0;
          __asm { SHLL2           V0.4S, V3.8H, #0x10 }

          v30[2] = vshll_n_s16(*_Q3.i8, 0x10uLL);
          v30[3] = _Q0;
          *v30 = v44;
          v30[1] = _Q1;
          v30 += 8;
          v32 += 2;
          v31 -= 32;
        }

        while (v31);
        result = (v21 & 0x7FFFFFE0);
        if (v27 == v21)
        {
          goto LABEL_31;
        }
      }

      else
      {
        result = 0;
        v29 = a5;
      }

      v46 = v21 - result;
      result = (result + v28);
      do
      {
        v47 = result->i8[0];
        result = (result + 1);
        *v29 = v47 << 16;
        v29 += 4;
        --v46;
      }

      while (v46);
LABEL_31:
      ++a6;
      a5 = v29;
      if (a6 == a8)
      {
        return result;
      }
    }
  }

  do
  {
    v22 = &result->i8[v19];
    v23 = a2;
    do
    {
      v24 = *v22++;
      *a5 = v24 << 16;
      a5 += 4;
      --v23;
    }

    while (v23);
    ++a6;
  }

  while (a6 != a8);
  return result;
}

char *sub_100353174(char *result, uint64_t a2, uint64_t a3, int *a4, int32x2_t *a5, int a6, int a7, int a8)
{
  if (a6 >= 1)
  {
    v8.i32[0] = *result;
    v8.i32[1] = result[1];
    v9 = vshl_n_s32(v8, 0x10uLL);
    if (a6 > 7)
    {
      v10 = a6 & 0x7FFFFFF8;
      v11 = &a5[v10];
      *&v12 = v9;
      *(&v12 + 1) = v9;
      v13 = a5 + 4;
      v14 = v10;
      do
      {
        *v13[-4].i8 = v12;
        *v13[-2].i8 = v12;
        *v13->i8 = v12;
        *v13[2].i8 = v12;
        v13 += 8;
        v14 -= 8;
      }

      while (v14);
      if (v10 == a6)
      {
LABEL_12:
        a4 += 2 * (a6 - 1) + 2;
        a5 = v11;
        if (a6 < a7)
        {
          goto LABEL_13;
        }

        goto LABEL_5;
      }
    }

    else
    {
      LODWORD(v10) = 0;
      v11 = a5;
    }

    v15 = a6 - v10;
    do
    {
      *v11++ = v9;
      --v15;
    }

    while (v15);
    goto LABEL_12;
  }

  a6 = 0;
  if (a7 > 0)
  {
LABEL_13:
    v16 = a7 - a6;
    v17 = (a3 + 4 * a6);
    do
    {
      v18 = *v17++;
      v19 = &result[2 * v18];
      a5->i32[0] = *a4 * *v19 + a4[1] * v19[2];
      v20 = *a4;
      v21 = a4[1];
      a4 += 2;
      v22 = v20 * v19[1] + v21 * v19[3];
      v23 = a5 + 1;
      a5->i32[1] = v22;
      ++a5;
      --v16;
    }

    while (v16);
    a5 = v23;
    if (a7 >= a8)
    {
      return result;
    }

    goto LABEL_16;
  }

LABEL_5:
  a7 = a6;
  if (a6 >= a8)
  {
    return result;
  }

LABEL_16:
  v24 = &result[2 * *(a3 + 4 * a8 - 4)];
  v25.i32[0] = *v24;
  v25.i32[1] = v24[1];
  v26 = vshl_n_s32(v25, 0x10uLL);
  v27 = (~a7 + a8);
  if (v27 < 7)
  {
    v28 = a5;
LABEL_21:
    v34 = a8 - a7;
    do
    {
      *v28++ = v26;
      --v34;
    }

    while (v34);
    return result;
  }

  v29 = v27 + 1;
  v30 = (v27 + 1) & 0x1FFFFFFF8;
  a7 += v30;
  v28 = &a5[v30];
  *&v31 = v26;
  *(&v31 + 1) = v26;
  v32 = a5 + 4;
  v33 = v30;
  do
  {
    *v32[-4].i8 = v31;
    *v32[-2].i8 = v31;
    *v32->i8 = v31;
    *v32[2].i8 = v31;
    v32 += 8;
    v33 -= 8;
  }

  while (v33);
  if (v29 != v30)
  {
    goto LABEL_21;
  }

  return result;
}

int8x16_t *sub_1003532FC(int8x16_t *result, unsigned int a2, uint64_t a3, int *a4, char *a5, int a6, int a7, int a8)
{
  if (a6 < 1)
  {
    a6 = 0;
    if (a7 <= 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v8 = 8 * (a6 - 1);
    if (a2 > 0)
    {
      if (a2 < 0x20)
      {
        v9 = 0;
        v10 = a5;
        do
        {
          v11 = result;
          v12 = a2;
          do
          {
            v13 = v11->i8[0];
            v11 = (v11 + 1);
            *v10 = v13 << 16;
            v10 += 4;
            --v12;
          }

          while (v12);
          ++v9;
        }

        while (v9 != a6);
LABEL_8:
        a4 = (a4 + v8 + 8);
        a5 = v10;
        if (a6 >= a7)
        {
          goto LABEL_23;
        }

        goto LABEL_13;
      }

      v48 = 0;
      while (1)
      {
        if (a5 >= &result->i8[a2] || &a5[4 * a2] <= result)
        {
          v10 = &a5[4 * (a2 & 0x7FFFFFE0)];
          v50 = (a5 + 64);
          v51 = a2 & 0x7FFFFFE0;
          v52 = result + 1;
          do
          {
            v53 = v52[-1];
            _Q2 = vmovl_high_s8(v53);
            _Q0 = vmovl_s8(*v53.i8);
            _Q3 = vmovl_high_s8(*v52);
            _Q1 = vmovl_s8(*v52->i8);
            v58 = vshll_n_s16(*_Q2.i8, 0x10uLL);
            __asm { SHLL2           V2.4S, V2.8H, #0x10 }

            v50[-2] = v58;
            v50[-1] = _Q2;
            v59 = vshll_n_s16(*_Q0.i8, 0x10uLL);
            __asm { SHLL2           V0.4S, V0.8H, #0x10 }

            v60 = vshll_n_s16(*_Q1.i8, 0x10uLL);
            __asm { SHLL2           V1.4S, V1.8H, #0x10 }

            v50[-4] = v59;
            v50[-3] = _Q0;
            __asm { SHLL2           V0.4S, V3.8H, #0x10 }

            v50[2] = vshll_n_s16(*_Q3.i8, 0x10uLL);
            v50[3] = _Q0;
            *v50 = v60;
            v50[1] = _Q1;
            v50 += 8;
            v52 += 2;
            v51 -= 32;
          }

          while (v51);
          v49 = a2 & 0x7FFFFFE0;
          if (v49 == a2)
          {
            goto LABEL_42;
          }
        }

        else
        {
          v49 = 0;
          v10 = a5;
        }

        v62 = a2 - v49;
        v63 = &result->i8[v49];
        do
        {
          v64 = *v63++;
          *v10 = v64 << 16;
          v10 += 4;
          --v62;
        }

        while (v62);
LABEL_42:
        ++v48;
        a5 = v10;
        if (v48 == a6)
        {
          goto LABEL_8;
        }
      }
    }

    a4 = (a4 + v8 + 8);
    if (a6 >= a7)
    {
      goto LABEL_23;
    }
  }

LABEL_13:
  if (a2 < 1)
  {
    return result;
  }

  v14 = a6;
  do
  {
    v15 = &result->i8[*(a3 + 4 * v14) * a2];
    v16 = a2;
    do
    {
      v17 = *a4;
      if (*a4)
      {
        v17 *= *v15;
      }

      *a5 = v17;
      v18 = a4[1];
      if (v18)
      {
        v18 *= v15[a2];
      }

      *a5 = v18 + v17;
      a5 += 4;
      ++v15;
      --v16;
    }

    while (v16);
    ++v14;
    a4 += 2;
  }

  while (v14 < a7);
  a6 = a7;
LABEL_23:
  if (a2 < 1 || a6 >= a8)
  {
    return result;
  }

  v19 = (*(a3 + 4 * a8 - 4) * a2);
  v20 = &result->i8[v19];
  v21 = a2;
  if (a2 >= 0x20)
  {
    v25 = 4 * a2;
    v26 = &v20[a2];
    v27 = a2 & 0x7FFFFFE0;
    v28 = (result + v19);
    while (1)
    {
      if (a5 >= v26 || v20 >= &a5[v25])
      {
        v29 = &a5[4 * (v21 & 0x7FFFFFE0)];
        v30 = (a5 + 64);
        v31 = v21 & 0x7FFFFFE0;
        v32 = v28 + 1;
        do
        {
          v33 = v32[-1];
          _Q2 = vmovl_high_s8(v33);
          _Q0 = vmovl_s8(*v33.i8);
          _Q3 = vmovl_high_s8(*v32);
          _Q1 = vmovl_s8(*v32->i8);
          v38 = vshll_n_s16(*_Q2.i8, 0x10uLL);
          __asm { SHLL2           V2.4S, V2.8H, #0x10 }

          v30[-2] = v38;
          v30[-1] = _Q2;
          v43 = vshll_n_s16(*_Q0.i8, 0x10uLL);
          __asm { SHLL2           V0.4S, V0.8H, #0x10 }

          v44 = vshll_n_s16(*_Q1.i8, 0x10uLL);
          __asm { SHLL2           V1.4S, V1.8H, #0x10 }

          v30[-4] = v43;
          v30[-3] = _Q0;
          __asm { SHLL2           V0.4S, V3.8H, #0x10 }

          v30[2] = vshll_n_s16(*_Q3.i8, 0x10uLL);
          v30[3] = _Q0;
          *v30 = v44;
          v30[1] = _Q1;
          v30 += 8;
          v32 += 2;
          v31 -= 32;
        }

        while (v31);
        result = (v21 & 0x7FFFFFE0);
        if (v27 == v21)
        {
          goto LABEL_31;
        }
      }

      else
      {
        result = 0;
        v29 = a5;
      }

      v46 = v21 - result;
      result = (result + v28);
      do
      {
        v47 = result->i8[0];
        result = (result + 1);
        *v29 = v47 << 16;
        v29 += 4;
        --v46;
      }

      while (v46);
LABEL_31:
      ++a6;
      a5 = v29;
      if (a6 == a8)
      {
        return result;
      }
    }
  }

  do
  {
    v22 = &result->i8[v19];
    v23 = a2;
    do
    {
      v24 = *v22++;
      *a5 = v24 << 16;
      a5 += 4;
      --v23;
    }

    while (v23);
    ++a6;
  }

  while (a6 != a8);
  return result;
}

char *sub_100353610(char *result, uint64_t a2, uint64_t a3, int *a4, int32x2_t *a5, int a6, int a7, int a8)
{
  if (a6 >= 1)
  {
    v8.i32[0] = *result;
    v8.i32[1] = result[1];
    v9 = vshl_n_s32(v8, 0x10uLL);
    v10 = result[2] << 16;
    if (a6 > 7)
    {
      v11 = a6 & 0x7FFFFFF8;
      *&v13 = v9;
      *(&v13 + 1) = __PAIR64__(v9.u32[0], v10);
      LODWORD(v14) = v9.i32[1];
      DWORD1(v14) = result[2] << 16;
      *(&v14 + 1) = v9;
      v12 = (a5 + 12 * v11);
      *&v15 = __PAIR64__(v9.u32[0], DWORD1(v14));
      *(&v15 + 1) = __PAIR64__(v10, v9.u32[1]);
      v16 = v11;
      do
      {
        *a5->i8 = v13;
        *a5[2].i8 = v14;
        *a5[4].i8 = v15;
        *a5[6].i8 = v13;
        *a5[8].i8 = v14;
        *a5[10].i8 = v15;
        a5 += 12;
        v16 -= 8;
      }

      while (v16);
      if (v11 == a6)
      {
LABEL_12:
        a4 += 2 * (a6 - 1) + 2;
        a5 = v12;
        if (a6 < a7)
        {
          goto LABEL_13;
        }

        goto LABEL_5;
      }
    }

    else
    {
      LODWORD(v11) = 0;
      v12 = a5;
    }

    v17 = a6 - v11;
    v18 = v12;
    do
    {
      *v18 = v9;
      v12 = (v18 + 12);
      v18[1].i32[0] = v10;
      v18 = (v18 + 12);
      --v17;
    }

    while (v17);
    goto LABEL_12;
  }

  a6 = 0;
  if (a7 > 0)
  {
LABEL_13:
    v19 = a7 - a6;
    v20 = (a3 + 4 * a6);
    do
    {
      v21 = *v20++;
      v22 = &result[3 * v21];
      a5->i32[0] = *a4 * *v22 + a4[1] * v22[3];
      a5->i32[1] = *a4 * v22[1] + a4[1] * v22[4];
      v23 = *a4;
      v24 = a4[1];
      a4 += 2;
      v25 = v23 * v22[2] + v24 * v22[5];
      v26 = (a5 + 12);
      a5[1].i32[0] = v25;
      a5 = (a5 + 12);
      --v19;
    }

    while (v19);
    a5 = v26;
    if (a7 >= a8)
    {
      return result;
    }

    goto LABEL_16;
  }

LABEL_5:
  a7 = a6;
  if (a6 >= a8)
  {
    return result;
  }

LABEL_16:
  v27 = &result[3 * *(a3 + 4 * a8 - 4)];
  v28.i32[0] = *v27;
  v28.i32[1] = v27[1];
  v29 = vshl_n_s32(v28, 0x10uLL);
  v30 = v27[2] << 16;
  v31 = (~a7 + a8);
  if (v31 < 7)
  {
    v32 = a5;
LABEL_21:
    v38 = a8 - a7;
    do
    {
      *v32 = v29;
      v32[1].i32[0] = v30;
      v32 = (v32 + 12);
      --v38;
    }

    while (v38);
    return result;
  }

  v33 = v31 + 1;
  a7 += v33 & 0xFFFFFFF8;
  *&v34 = v29;
  *(&v34 + 1) = __PAIR64__(v29.u32[0], v30);
  *&v35 = __PAIR64__(v30, v29.u32[1]);
  *(&v35 + 1) = v29;
  v32 = (a5 + 12 * (v33 & 0x1FFFFFFF8));
  *&v36 = __PAIR64__(v29.u32[0], v30);
  *(&v36 + 1) = __PAIR64__(v30, v29.u32[1]);
  v37 = v33 & 0x1FFFFFFF8;
  do
  {
    *a5->i8 = v34;
    *a5[2].i8 = v35;
    *a5[4].i8 = v36;
    *a5[6].i8 = v34;
    *a5[8].i8 = v35;
    *a5[10].i8 = v36;
    a5 += 12;
    v37 -= 8;
  }

  while (v37);
  if (v33 != (v33 & 0x1FFFFFFF8))
  {
    goto LABEL_21;
  }

  return result;
}

int8x16_t *sub_100353848(int8x16_t *result, unsigned int a2, uint64_t a3, int *a4, char *a5, int a6, int a7, int a8)
{
  if (a6 < 1)
  {
    a6 = 0;
    if (a7 <= 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v8 = 8 * (a6 - 1);
    if (a2 > 0)
    {
      if (a2 < 0x20)
      {
        v9 = 0;
        v10 = a5;
        do
        {
          v11 = result;
          v12 = a2;
          do
          {
            v13 = v11->i8[0];
            v11 = (v11 + 1);
            *v10 = v13 << 16;
            v10 += 4;
            --v12;
          }

          while (v12);
          ++v9;
        }

        while (v9 != a6);
LABEL_8:
        a4 = (a4 + v8 + 8);
        a5 = v10;
        if (a6 >= a7)
        {
          goto LABEL_23;
        }

        goto LABEL_13;
      }

      v48 = 0;
      while (1)
      {
        if (a5 >= &result->i8[a2] || &a5[4 * a2] <= result)
        {
          v10 = &a5[4 * (a2 & 0x7FFFFFE0)];
          v50 = (a5 + 64);
          v51 = a2 & 0x7FFFFFE0;
          v52 = result + 1;
          do
          {
            v53 = v52[-1];
            _Q2 = vmovl_high_s8(v53);
            _Q0 = vmovl_s8(*v53.i8);
            _Q3 = vmovl_high_s8(*v52);
            _Q1 = vmovl_s8(*v52->i8);
            v58 = vshll_n_s16(*_Q2.i8, 0x10uLL);
            __asm { SHLL2           V2.4S, V2.8H, #0x10 }

            v50[-2] = v58;
            v50[-1] = _Q2;
            v59 = vshll_n_s16(*_Q0.i8, 0x10uLL);
            __asm { SHLL2           V0.4S, V0.8H, #0x10 }

            v60 = vshll_n_s16(*_Q1.i8, 0x10uLL);
            __asm { SHLL2           V1.4S, V1.8H, #0x10 }

            v50[-4] = v59;
            v50[-3] = _Q0;
            __asm { SHLL2           V0.4S, V3.8H, #0x10 }

            v50[2] = vshll_n_s16(*_Q3.i8, 0x10uLL);
            v50[3] = _Q0;
            *v50 = v60;
            v50[1] = _Q1;
            v50 += 8;
            v52 += 2;
            v51 -= 32;
          }

          while (v51);
          v49 = a2 & 0x7FFFFFE0;
          if (v49 == a2)
          {
            goto LABEL_42;
          }
        }

        else
        {
          v49 = 0;
          v10 = a5;
        }

        v62 = a2 - v49;
        v63 = &result->i8[v49];
        do
        {
          v64 = *v63++;
          *v10 = v64 << 16;
          v10 += 4;
          --v62;
        }

        while (v62);
LABEL_42:
        ++v48;
        a5 = v10;
        if (v48 == a6)
        {
          goto LABEL_8;
        }
      }
    }

    a4 = (a4 + v8 + 8);
    if (a6 >= a7)
    {
      goto LABEL_23;
    }
  }

LABEL_13:
  if (a2 < 1)
  {
    return result;
  }

  v14 = a6;
  do
  {
    v15 = &result->i8[*(a3 + 4 * v14) * a2];
    v16 = a2;
    do
    {
      v17 = *a4;
      if (*a4)
      {
        v17 *= *v15;
      }

      *a5 = v17;
      v18 = a4[1];
      if (v18)
      {
        v18 *= v15[a2];
      }

      *a5 = v18 + v17;
      a5 += 4;
      ++v15;
      --v16;
    }

    while (v16);
    ++v14;
    a4 += 2;
  }

  while (v14 < a7);
  a6 = a7;
LABEL_23:
  if (a2 < 1 || a6 >= a8)
  {
    return result;
  }

  v19 = (*(a3 + 4 * a8 - 4) * a2);
  v20 = &result->i8[v19];
  v21 = a2;
  if (a2 >= 0x20)
  {
    v25 = 4 * a2;
    v26 = &v20[a2];
    v27 = a2 & 0x7FFFFFE0;
    v28 = (result + v19);
    while (1)
    {
      if (a5 >= v26 || v20 >= &a5[v25])
      {
        v29 = &a5[4 * (v21 & 0x7FFFFFE0)];
        v30 = (a5 + 64);
        v31 = v21 & 0x7FFFFFE0;
        v32 = v28 + 1;
        do
        {
          v33 = v32[-1];
          _Q2 = vmovl_high_s8(v33);
          _Q0 = vmovl_s8(*v33.i8);
          _Q3 = vmovl_high_s8(*v32);
          _Q1 = vmovl_s8(*v32->i8);
          v38 = vshll_n_s16(*_Q2.i8, 0x10uLL);
          __asm { SHLL2           V2.4S, V2.8H, #0x10 }

          v30[-2] = v38;
          v30[-1] = _Q2;
          v43 = vshll_n_s16(*_Q0.i8, 0x10uLL);
          __asm { SHLL2           V0.4S, V0.8H, #0x10 }

          v44 = vshll_n_s16(*_Q1.i8, 0x10uLL);
          __asm { SHLL2           V1.4S, V1.8H, #0x10 }

          v30[-4] = v43;
          v30[-3] = _Q0;
          __asm { SHLL2           V0.4S, V3.8H, #0x10 }

          v30[2] = vshll_n_s16(*_Q3.i8, 0x10uLL);
          v30[3] = _Q0;
          *v30 = v44;
          v30[1] = _Q1;
          v30 += 8;
          v32 += 2;
          v31 -= 32;
        }

        while (v31);
        result = (v21 & 0x7FFFFFE0);
        if (v27 == v21)
        {
          goto LABEL_31;
        }
      }

      else
      {
        result = 0;
        v29 = a5;
      }

      v46 = v21 - result;
      result = (result + v28);
      do
      {
        v47 = result->i8[0];
        result = (result + 1);
        *v29 = v47 << 16;
        v29 += 4;
        --v46;
      }

      while (v46);
LABEL_31:
      ++a6;
      a5 = v29;
      if (a6 == a8)
      {
        return result;
      }
    }
  }

  do
  {
    v22 = &result->i8[v19];
    v23 = a2;
    do
    {
      v24 = *v22++;
      *a5 = v24 << 16;
      a5 += 4;
      --v23;
    }

    while (v23);
    ++a6;
  }

  while (a6 != a8);
  return result;
}

unsigned __int32 *sub_100353B5C(unsigned __int32 *result, __n128 a2, uint64_t a3, uint64_t a4, int *a5, __n128 *a6, int a7, int a8, int a9)
{
  if (a7 >= 1)
  {
    a2.n128_u32[0] = *result;
    a2 = vshll_n_s16(*&vmovl_s8(a2.n128_u64[0]), 0x10uLL);
    if (a7 > 7)
    {
      v9 = a7 & 0x7FFFFFF8;
      v10 = &a6[v9];
      v11 = a6 + 4;
      v12 = v9;
      do
      {
        v11[-4] = a2;
        v11[-3] = a2;
        v11[-2] = a2;
        v11[-1] = a2;
        *v11 = a2;
        v11[1] = a2;
        v11[2] = a2;
        v11[3] = a2;
        v11 += 8;
        v12 -= 8;
      }

      while (v12);
      if (v9 == a7)
      {
LABEL_12:
        a5 += 2 * (a7 - 1) + 2;
        a6 = v10;
        if (a7 < a8)
        {
          goto LABEL_13;
        }

        goto LABEL_5;
      }
    }

    else
    {
      LODWORD(v9) = 0;
      v10 = a6;
    }

    v13 = a7 - v9;
    do
    {
      *v10++ = a2;
      --v13;
    }

    while (v13);
    goto LABEL_12;
  }

  a7 = 0;
  if (a8 > 0)
  {
LABEL_13:
    v14 = a8 - a7;
    v15 = (a4 + 4 * a7);
    do
    {
      v16 = *v15++;
      v17 = &result[v16];
      a6->n128_u32[0] = *a5 * *v17 + a5[1] * v17[4];
      a6->n128_u32[1] = *a5 * v17[1] + a5[1] * v17[5];
      a6->n128_u32[2] = *a5 * v17[2] + a5[1] * v17[6];
      v18 = *a5;
      v19 = a5[1];
      a5 += 2;
      v20 = v18 * v17[3] + v19 * v17[7];
      v21 = a6 + 1;
      a6->n128_u32[3] = v20;
      ++a6;
      --v14;
    }

    while (v14);
    a6 = v21;
    if (a8 >= a9)
    {
      return result;
    }

    goto LABEL_16;
  }

LABEL_5:
  a8 = a7;
  if (a7 >= a9)
  {
    return result;
  }

LABEL_16:
  a2.n128_u32[0] = result[*(a4 + 4 * a9 - 4)];
  v22 = vshll_n_s16(*&vmovl_s8(a2.n128_u64[0]), 0x10uLL);
  v23 = (~a8 + a9);
  if (v23 < 7)
  {
    v24 = a6;
LABEL_21:
    v29 = a9 - a8;
    do
    {
      *v24++ = v22;
      --v29;
    }

    while (v29);
    return result;
  }

  v25 = v23 + 1;
  v26 = (v23 + 1) & 0x1FFFFFFF8;
  a8 += v26;
  v24 = &a6[v26];
  v27 = &a6[4];
  v28 = v26;
  do
  {
    v27[-4] = v22;
    v27[-3] = v22;
    v27[-2] = v22;
    v27[-1] = v22;
    *v27 = v22;
    v27[1] = v22;
    v27[2] = v22;
    v27[3] = v22;
    v27 += 8;
    v28 -= 8;
  }

  while (v28);
  if (v25 != v26)
  {
    goto LABEL_21;
  }

  return result;
}

int8x16_t *sub_100353D08(int8x16_t *result, unsigned int a2, uint64_t a3, int *a4, char *a5, int a6, int a7, int a8)
{
  if (a6 < 1)
  {
    a6 = 0;
    if (a7 <= 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v8 = 8 * (a6 - 1);
    if (a2 > 0)
    {
      if (a2 < 0x20)
      {
        v9 = 0;
        v10 = a5;
        do
        {
          v11 = result;
          v12 = a2;
          do
          {
            v13 = v11->i8[0];
            v11 = (v11 + 1);
            *v10 = v13 << 16;
            v10 += 4;
            --v12;
          }

          while (v12);
          ++v9;
        }

        while (v9 != a6);
LABEL_8:
        a4 = (a4 + v8 + 8);
        a5 = v10;
        if (a6 >= a7)
        {
          goto LABEL_23;
        }

        goto LABEL_13;
      }

      v48 = 0;
      while (1)
      {
        if (a5 >= &result->i8[a2] || &a5[4 * a2] <= result)
        {
          v10 = &a5[4 * (a2 & 0x7FFFFFE0)];
          v50 = (a5 + 64);
          v51 = a2 & 0x7FFFFFE0;
          v52 = result + 1;
          do
          {
            v53 = v52[-1];
            _Q2 = vmovl_high_s8(v53);
            _Q0 = vmovl_s8(*v53.i8);
            _Q3 = vmovl_high_s8(*v52);
            _Q1 = vmovl_s8(*v52->i8);
            v58 = vshll_n_s16(*_Q2.i8, 0x10uLL);
            __asm { SHLL2           V2.4S, V2.8H, #0x10 }

            v50[-2] = v58;
            v50[-1] = _Q2;
            v59 = vshll_n_s16(*_Q0.i8, 0x10uLL);
            __asm { SHLL2           V0.4S, V0.8H, #0x10 }

            v60 = vshll_n_s16(*_Q1.i8, 0x10uLL);
            __asm { SHLL2           V1.4S, V1.8H, #0x10 }

            v50[-4] = v59;
            v50[-3] = _Q0;
            __asm { SHLL2           V0.4S, V3.8H, #0x10 }

            v50[2] = vshll_n_s16(*_Q3.i8, 0x10uLL);
            v50[3] = _Q0;
            *v50 = v60;
            v50[1] = _Q1;
            v50 += 8;
            v52 += 2;
            v51 -= 32;
          }

          while (v51);
          v49 = a2 & 0x7FFFFFE0;
          if (v49 == a2)
          {
            goto LABEL_42;
          }
        }

        else
        {
          v49 = 0;
          v10 = a5;
        }

        v62 = a2 - v49;
        v63 = &result->i8[v49];
        do
        {
          v64 = *v63++;
          *v10 = v64 << 16;
          v10 += 4;
          --v62;
        }

        while (v62);
LABEL_42:
        ++v48;
        a5 = v10;
        if (v48 == a6)
        {
          goto LABEL_8;
        }
      }
    }

    a4 = (a4 + v8 + 8);
    if (a6 >= a7)
    {
      goto LABEL_23;
    }
  }

LABEL_13:
  if (a2 < 1)
  {
    return result;
  }

  v14 = a6;
  do
  {
    v15 = &result->i8[*(a3 + 4 * v14) * a2];
    v16 = a2;
    do
    {
      v17 = *a4;
      if (*a4)
      {
        v17 *= *v15;
      }

      *a5 = v17;
      v18 = a4[1];
      if (v18)
      {
        v18 *= v15[a2];
      }

      *a5 = v18 + v17;
      a5 += 4;
      ++v15;
      --v16;
    }

    while (v16);
    ++v14;
    a4 += 2;
  }

  while (v14 < a7);
  a6 = a7;
LABEL_23:
  if (a2 < 1 || a6 >= a8)
  {
    return result;
  }

  v19 = (*(a3 + 4 * a8 - 4) * a2);
  v20 = &result->i8[v19];
  v21 = a2;
  if (a2 >= 0x20)
  {
    v25 = 4 * a2;
    v26 = &v20[a2];
    v27 = a2 & 0x7FFFFFE0;
    v28 = (result + v19);
    while (1)
    {
      if (a5 >= v26 || v20 >= &a5[v25])
      {
        v29 = &a5[4 * (v21 & 0x7FFFFFE0)];
        v30 = (a5 + 64);
        v31 = v21 & 0x7FFFFFE0;
        v32 = v28 + 1;
        do
        {
          v33 = v32[-1];
          _Q2 = vmovl_high_s8(v33);
          _Q0 = vmovl_s8(*v33.i8);
          _Q3 = vmovl_high_s8(*v32);
          _Q1 = vmovl_s8(*v32->i8);
          v38 = vshll_n_s16(*_Q2.i8, 0x10uLL);
          __asm { SHLL2           V2.4S, V2.8H, #0x10 }

          v30[-2] = v38;
          v30[-1] = _Q2;
          v43 = vshll_n_s16(*_Q0.i8, 0x10uLL);
          __asm { SHLL2           V0.4S, V0.8H, #0x10 }

          v44 = vshll_n_s16(*_Q1.i8, 0x10uLL);
          __asm { SHLL2           V1.4S, V1.8H, #0x10 }

          v30[-4] = v43;
          v30[-3] = _Q0;
          __asm { SHLL2           V0.4S, V3.8H, #0x10 }

          v30[2] = vshll_n_s16(*_Q3.i8, 0x10uLL);
          v30[3] = _Q0;
          *v30 = v44;
          v30[1] = _Q1;
          v30 += 8;
          v32 += 2;
          v31 -= 32;
        }

        while (v31);
        result = (v21 & 0x7FFFFFE0);
        if (v27 == v21)
        {
          goto LABEL_31;
        }
      }

      else
      {
        result = 0;
        v29 = a5;
      }

      v46 = v21 - result;
      result = (result + v28);
      do
      {
        v47 = result->i8[0];
        result = (result + 1);
        *v29 = v47 << 16;
        v29 += 4;
        --v46;
      }

      while (v46);
LABEL_31:
      ++a6;
      a5 = v29;
      if (a6 == a8)
      {
        return result;
      }
    }
  }

  do
  {
    v22 = &result->i8[v19];
    v23 = a2;
    do
    {
      v24 = *v22++;
      *a5 = v24 << 16;
      a5 += 4;
      --v23;
    }

    while (v23);
    ++a6;
  }

  while (a6 != a8);
  return result;
}

int8x16_t *sub_10035401C(int8x16_t *result, unsigned int a2, uint64_t a3, const float *a4, int32x4_t *a5, int a6, int a7, int a8)
{
  if (a6 < 1)
  {
    a6 = 0;
    if (a7 > 0)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

  v8 = 8 * (a6 - 1);
  if (a2 <= 0)
  {
    a4 = (a4 + v8 + 8);
    if (a6 < a7)
    {
      goto LABEL_9;
    }

LABEL_17:
    LODWORD(v14) = a6;
LABEL_32:
    v15 = a5;
    goto LABEL_33;
  }

  if (a2 >= 0x20)
  {
    v19 = 0;
    while (1)
    {
      if (a5 >= &result->i8[a2] || a5 + 4 * a2 <= result)
      {
        v10 = (a5 + 4 * (a2 & 0x7FFFFFE0));
        v21 = a5 + 4;
        v22 = a2 & 0x7FFFFFE0;
        v23 = result + 1;
        do
        {
          v24 = v23[-1];
          _Q2 = vmovl_high_s8(v24);
          _Q0 = vmovl_s8(*v24.i8);
          _Q3 = vmovl_high_s8(*v23);
          _Q1 = vmovl_s8(*v23->i8);
          v29 = vshll_n_s16(*_Q2.i8, 0x10uLL);
          __asm { SHLL2           V2.4S, V2.8H, #0x10 }

          v21[-2] = v29;
          v21[-1] = _Q2;
          v33 = vshll_n_s16(*_Q0.i8, 0x10uLL);
          __asm { SHLL2           V0.4S, V0.8H, #0x10 }

          v34 = vshll_n_s16(*_Q1.i8, 0x10uLL);
          __asm { SHLL2           V1.4S, V1.8H, #0x10 }

          v21[-4] = v33;
          v21[-3] = _Q0;
          __asm { SHLL2           V0.4S, V3.8H, #0x10 }

          v21[2] = vshll_n_s16(*_Q3.i8, 0x10uLL);
          v21[3] = _Q0;
          *v21 = v34;
          v21[1] = _Q1;
          v21 += 8;
          v23 += 2;
          v22 -= 32;
        }

        while (v22);
        v20 = a2 & 0x7FFFFFE0;
        if (v20 == a2)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v20 = 0;
        v10 = a5;
      }

      v36 = &result->i8[v20];
      v37 = a2 - v20;
      do
      {
        v38 = *v36++;
        v10->i32[0] = v38 << 16;
        v10 = (v10 + 4);
        --v37;
      }

      while (v37);
LABEL_21:
      ++v19;
      a5 = v10;
      if (v19 == a6)
      {
        goto LABEL_8;
      }
    }
  }

  v9 = 0;
  v10 = a5;
  do
  {
    v11 = result;
    v12 = a2;
    do
    {
      v13 = v11->i8[0];
      v11 = (v11 + 1);
      v10->i32[0] = v13 << 16;
      v10 = (v10 + 4);
      --v12;
    }

    while (v12);
    ++v9;
  }

  while (v9 != a6);
LABEL_8:
  a4 = (a4 + v8 + 8);
  a5 = v10;
  if (a6 >= a7)
  {
    goto LABEL_17;
  }

LABEL_9:
  if (a2 < 1)
  {
    LODWORD(v14) = a7;
    goto LABEL_32;
  }

  v14 = a6;
  if (a2 >= 0x10)
  {
    v65 = &a4[2 * (~a6 + a7) + 2];
    v66 = a4;
    while (1)
    {
      v67 = 0;
      v68 = *(a3 + 4 * v14);
      v69 = &result->i8[v68 * a2];
      v70 = (v69 + a2);
      v71 = (a5 + 4 * a2);
      v73 = a5 < (result + 2 * a2 + v68 * a2) && v70 < v71;
      v75 = a5 < v70 && v69 < v71;
      v76 = a4 >= v71 || a5 >= v65;
      if (!v76 || v73 || v75)
      {
        v15 = a5;
      }

      else
      {
        v15 = (a5 + 4 * (a2 & 0x7FFFFFF0));
        v77 = v66;
        v78 = vld1q_dup_f32(v77++);
        v79 = vld1q_dup_f32(v77);
        v80 = a2 & 0x7FFFFFF0;
        do
        {
          v81 = vmovl_s8(*v69);
          v82 = vmovl_high_s8(*v69->i8);
          v83 = *&v69->i8[a2];
          v84 = vmovl_s8(*v83.i8);
          v85 = vmovl_high_s8(v83);
          a5[2] = vmlaq_s32(vmulq_s32(v78, vmovl_s16(*v82.i8)), v79, vmovl_s16(*v85.i8));
          a5[3] = vmlaq_s32(vmulq_s32(v78, vmovl_high_s16(v82)), v79, vmovl_high_s16(v85));
          *a5 = vmlaq_s32(vmulq_s32(v78, vmovl_s16(*v81.i8)), v79, vmovl_s16(*v84.i8));
          a5[1] = vmlaq_s32(vmulq_s32(v78, vmovl_high_s16(v81)), v79, vmovl_high_s16(v84));
          a5 += 4;
          v69 += 2;
          v80 -= 16;
        }

        while (v80);
        v67 = a2 & 0x7FFFFFF0;
        if (v67 == a2)
        {
          goto LABEL_52;
        }
      }

      v86 = &result->i8[v67 + v68 * a2];
      do
      {
        v87 = *v66 * *v86;
        v15->i32[0] = v87;
        v15->i32[0] = v87 + *(v66 + 1) * v86[a2];
        v15 = (v15 + 4);
        ++v67;
        ++v86;
      }

      while (a2 != v67);
LABEL_52:
      ++v14;
      v66 += 2;
      a5 = v15;
      if (v14 >= a7)
      {
        goto LABEL_33;
      }
    }
  }

  v15 = a5;
  do
  {
    v16 = &result->i8[*(a3 + 4 * v14) * a2];
    v17 = a2;
    do
    {
      v18 = *a4 * *v16;
      v15->i32[0] = v18;
      v15->i32[0] = v18 + *(a4 + 1) * v16[a2];
      v15 = (v15 + 4);
      ++v16;
      --v17;
    }

    while (v17);
    ++v14;
    a4 += 2;
  }

  while (v14 < a7);
LABEL_33:
  if (v14 >= a8 || a2 < 1)
  {
    return result;
  }

  v39 = (*(a3 + 4 * a8 - 4) * a2);
  v40 = &result->i8[v39];
  v41 = a2;
  if (a2 >= 0x20)
  {
    v45 = 4 * a2;
    v46 = &v40[a2];
    v47 = a2 & 0x7FFFFFE0;
    v48 = (result + v39);
    while (1)
    {
      if (v15 >= v46 || v40 >= &v15->i8[v45])
      {
        result = (v15 + 4 * (v41 & 0x7FFFFFE0));
        v50 = v15 + 4;
        v51 = v41 & 0x7FFFFFE0;
        v52 = v48 + 1;
        do
        {
          v53 = v52[-1];
          _Q2 = vmovl_high_s8(v53);
          _Q0 = vmovl_s8(*v53.i8);
          _Q3 = vmovl_high_s8(*v52);
          _Q1 = vmovl_s8(*v52->i8);
          v58 = vshll_n_s16(*_Q2.i8, 0x10uLL);
          __asm { SHLL2           V2.4S, V2.8H, #0x10 }

          v50[-2] = v58;
          v50[-1] = _Q2;
          v59 = vshll_n_s16(*_Q0.i8, 0x10uLL);
          __asm { SHLL2           V0.4S, V0.8H, #0x10 }

          v60 = vshll_n_s16(*_Q1.i8, 0x10uLL);
          __asm { SHLL2           V1.4S, V1.8H, #0x10 }

          v50[-4] = v59;
          v50[-3] = _Q0;
          __asm { SHLL2           V0.4S, V3.8H, #0x10 }

          v50[2] = vshll_n_s16(*_Q3.i8, 0x10uLL);
          v50[3] = _Q0;
          *v50 = v60;
          v50[1] = _Q1;
          v50 += 8;
          v52 += 2;
          v51 -= 32;
        }

        while (v51);
        v49 = v41 & 0x7FFFFFE0;
        if (v47 == v41)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v49 = 0;
        result = v15;
      }

      v62 = &v48->i8[v49];
      v63 = v41 - v49;
      do
      {
        v64 = *v62++;
        result->i32[0] = v64 << 16;
        result = (result + 4);
        --v63;
      }

      while (v63);
LABEL_41:
      LODWORD(v14) = v14 + 1;
      v15 = result;
      if (v14 == a8)
      {
        return result;
      }
    }
  }

  do
  {
    v42 = &result->i8[v39];
    v43 = a2;
    do
    {
      v44 = *v42++;
      v15->i32[0] = v44 << 16;
      v15 = (v15 + 4);
      --v43;
    }

    while (v43);
    LODWORD(v14) = v14 + 1;
  }

  while (v14 != a8);
  return result;
}

int8x16_t *sub_100354488(int8x16_t *result, unsigned int a2, uint64_t a3, int *a4, int32x4_t *a5, uint64_t a6, int a7, int a8)
{
  if (a6 < 1)
  {
    LODWORD(a6) = 0;
    if (a7 <= 0)
    {
      goto LABEL_34;
    }

    goto LABEL_13;
  }

  v8 = 8 * (a6 - 1);
  if (a2 <= 0)
  {
    a4 = (a4 + v8 + 8);
    if (a6 >= a7)
    {
      goto LABEL_34;
    }

    goto LABEL_13;
  }

  if (a2 >= 0x20)
  {
    v18 = 0;
    while (1)
    {
      if (a5 >= &result->i8[a2] || a5 + 4 * a2 <= result)
      {
        v10 = (a5 + 4 * (a2 & 0x7FFFFFE0));
        v20 = a5 + 4;
        v21 = a2 & 0x7FFFFFE0;
        v22 = result + 1;
        do
        {
          v23 = v22[-1];
          _Q2 = vmovl_high_s8(v23);
          _Q0 = vmovl_s8(*v23.i8);
          _Q3 = vmovl_high_s8(*v22);
          _Q1 = vmovl_s8(*v22->i8);
          v28 = vshll_n_s16(*_Q2.i8, 0x10uLL);
          __asm { SHLL2           V2.4S, V2.8H, #0x10 }

          v20[-2] = v28;
          v20[-1] = _Q2;
          v33 = vshll_n_s16(*_Q0.i8, 0x10uLL);
          __asm { SHLL2           V0.4S, V0.8H, #0x10 }

          v34 = vshll_n_s16(*_Q1.i8, 0x10uLL);
          __asm { SHLL2           V1.4S, V1.8H, #0x10 }

          v20[-4] = v33;
          v20[-3] = _Q0;
          __asm { SHLL2           V0.4S, V3.8H, #0x10 }

          v20[2] = vshll_n_s16(*_Q3.i8, 0x10uLL);
          v20[3] = _Q0;
          *v20 = v34;
          v20[1] = _Q1;
          v20 += 8;
          v22 += 2;
          v21 -= 32;
        }

        while (v21);
        v19 = a2 & 0x7FFFFFE0;
        if (v19 == a2)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v19 = 0;
        v10 = a5;
      }

      v36 = &result->i8[v19];
      v37 = a2 - v19;
      do
      {
        v38 = *v36++;
        v10->i32[0] = v38 << 16;
        v10 = (v10 + 4);
        --v37;
      }

      while (v37);
LABEL_23:
      ++v18;
      a5 = v10;
      if (v18 == a6)
      {
        goto LABEL_8;
      }
    }
  }

  v9 = 0;
  v10 = a5;
  do
  {
    v11 = result;
    v12 = a2;
    do
    {
      v13 = v11->i8[0];
      v11 = (v11 + 1);
      v10->i32[0] = v13 << 16;
      v10 = (v10 + 4);
      --v12;
    }

    while (v12);
    ++v9;
  }

  while (v9 != a6);
LABEL_8:
  a4 = (a4 + v8 + 8);
  a5 = v10;
  if (a6 < a7)
  {
LABEL_13:
    if (a2 < 1)
    {
      LODWORD(a6) = a7;
    }

    else
    {
      a6 = a6;
      do
      {
        v14 = 0;
        v15 = &result->i8[*(a3 + 4 * a6) * a2];
        do
        {
          v16 = *a4;
          if (*a4)
          {
            v16 *= *v15;
          }

          a5->i32[0] = v16;
          v17 = a4[1];
          if (v17)
          {
            v17 *= v15[a2];
          }

          a5->i32[0] = v17 + v16;
          a5 = (a5 + 4);
          ++v14;
          ++v15;
        }

        while (a2 != v14);
        ++a6;
        a4 += 2;
      }

      while (a6 < a7);
    }
  }

LABEL_34:
  if (a6 >= a8 || a2 < 1)
  {
    return result;
  }

  v39 = (*(a3 + 4 * a8 - 4) * a2);
  v40 = result->u64 + v39;
  v41 = a2;
  if (a2 >= 0x20)
  {
    v45 = 4 * a2;
    v46 = v40 + a2;
    v47 = a2 & 0x7FFFFFE0;
    v48 = (result + v39);
    while (1)
    {
      if (a5 >= v46 || v40 >= a5->u64 + v45)
      {
        v49 = (a5 + 4 * (v41 & 0x7FFFFFE0));
        v50 = a5 + 4;
        v51 = v41 & 0x7FFFFFE0;
        v52 = v48 + 1;
        do
        {
          v53 = v52[-1];
          _Q2 = vmovl_high_s8(v53);
          _Q0 = vmovl_s8(*v53.i8);
          _Q3 = vmovl_high_s8(*v52);
          _Q1 = vmovl_s8(*v52->i8);
          v58 = vshll_n_s16(*_Q2.i8, 0x10uLL);
          __asm { SHLL2           V2.4S, V2.8H, #0x10 }

          v50[-2] = v58;
          v50[-1] = _Q2;
          v59 = vshll_n_s16(*_Q0.i8, 0x10uLL);
          __asm { SHLL2           V0.4S, V0.8H, #0x10 }

          v60 = vshll_n_s16(*_Q1.i8, 0x10uLL);
          __asm { SHLL2           V1.4S, V1.8H, #0x10 }

          v50[-4] = v59;
          v50[-3] = _Q0;
          __asm { SHLL2           V0.4S, V3.8H, #0x10 }

          v50[2] = vshll_n_s16(*_Q3.i8, 0x10uLL);
          v50[3] = _Q0;
          *v50 = v60;
          v50[1] = _Q1;
          v50 += 8;
          v52 += 2;
          v51 -= 32;
        }

        while (v51);
        result = (v41 & 0x7FFFFFE0);
        if (v47 == v41)
        {
          goto LABEL_42;
        }
      }

      else
      {
        result = 0;
        v49 = a5;
      }

      v62 = &result->i8[v48];
      result = (v41 - result);
      do
      {
        v63 = *v62++;
        v49->i32[0] = v63 << 16;
        v49 = (v49 + 4);
        result = (result - 1);
      }

      while (result);
LABEL_42:
      LODWORD(a6) = a6 + 1;
      a5 = v49;
      if (a6 == a8)
      {
        return result;
      }
    }
  }

  do
  {
    v42 = &result->i8[v39];
    v43 = a2;
    do
    {
      v44 = *v42++;
      a5->i32[0] = v44 << 16;
      a5 = (a5 + 4);
      --v43;
    }

    while (v43);
    LODWORD(a6) = a6 + 1;
  }

  while (a6 != a8);
  return result;
}

uint64_t sub_1003547A0(uint64_t a1, int a2, unsigned int *a3, _DWORD *a4)
{
  sub_10029DA40(&v15, a2);
  v14 = 0x3FE0000000000000;
  sub_10029DFB4(&v15, &v14, &v17);
  sub_10029E004(a1, &v17, &v18);
  v13 = 0x3FE0000000000000;
  sub_10029DFDC(&v18, &v13, &v16);
  result = sub_10029DD18(&v16);
  if ((result & 0x80000000) != 0 || (v9 = *(a1 + 8), v9 < 2))
  {
    if (*(a1 + 12) <= a2 + 1)
    {
      v11 = a2 + 1;
    }

    else
    {
      v11 = *(a1 + 12);
    }

    *(a1 + 12) = v11;
  }

  else
  {
    v10 = v9 - 1;
    if (result >= v10)
    {
      *a3 = v10;
      v12 = *(a1 + 16);
      if (v12 >= a2)
      {
        v12 = a2;
      }

      *(a1 + 16) = v12;
    }

    else
    {
      *a3 = result;
      sub_10029DA40(&v14, result);
      sub_10029DFDC(&v16, &v14, &v15);
      sub_10029DA40(&v17, 0x10000);
      sub_10029E004(&v15, &v17, &v18);
      result = sub_10029DC5C(&v18);
      *a4 = 0x10000 - result;
      a4[1] = result;
    }
  }

  return result;
}

void sub_1003548F8(uint64_t a1)
{
  nullsub_1(a1);

  operator delete();
}

__int8 *sub_100354930(uint64_t a1, int *a2)
{
  v4 = 2 * *(a1 + 48) * *(a1 + 56);
  bzero(v162, 0x420uLL);
  v160 = v162;
  v161 = v4;
  if (v4 >= 0x109)
  {
    operator new[]();
  }

  v5 = *a2;
  v6 = *(a1 + 104);
  if (v6 <= *a2)
  {
    v7 = *a2;
  }

  else
  {
    v7 = *(a1 + 104);
  }

  if (a2[1] >= *(a1 + 108))
  {
    v8 = *(a1 + 108);
  }

  else
  {
    v8 = a2[1];
  }

  if (v5 >= v6)
  {
    v9 = 0;
    v10 = -2;
    if (v5 >= v7)
    {
LABEL_11:
      if (v5 >= v8)
      {
        goto LABEL_102;
      }

      goto LABEL_12;
    }
  }

  else
  {
    (*(a1 + 112))(*(a1 + 8), *(a1 + 56), *(a1 + 64), *(a1 + 80), v162, *(a1 + 96), *(a1 + 100), *(a1 + 48));
    v5 = *a2;
    v9 = 1;
    v10 = -1;
    if (*a2 >= v7)
    {
      goto LABEL_11;
    }
  }

  v95 = v5;
  v96.i64[0] = 0x800000008000;
  v96.i64[1] = 0x800000008000;
  v97.i64[0] = 0x7F0000007FLL;
  v97.i64[1] = 0x7F0000007FLL;
  v98.i64[0] = 0x7F0000007FLL;
  v98.i64[1] = 0x7F0000007FLL;
  do
  {
    v99 = (*(a1 + 56) * *(a1 + 48));
    if (v99 < 1)
    {
      goto LABEL_75;
    }

    v100 = v160;
    v101 = *(a1 + 32);
    v102 = *(a1 + 40);
    if (v99 >= 4 && ((v103 = (v101 + v102 * v95), v103 < &v160[4 * v99]) ? (v104 = v160 >= &v103->i8[v99]) : (v104 = 1), v104))
    {
      if (v99 < 0x10)
      {
        v105 = 0;
LABEL_97:
        v117 = v105;
        v105 = v99 & 0x7FFFFFFC;
        v118 = &v100[4 * v117];
        v119 = (v101 + v117 + v102 * v95);
        v120 = v117 - v105;
        do
        {
          v121 = *v118++;
          *v119++ = vuzp1_s8(vmovn_s32(vminq_s32(vmaxq_s32(vshrq_n_s32(vaddq_s32(v121, v96), 0x10uLL), v97), v98)), *v96.i8).u32[0];
          v120 += 4;
        }

        while (v120);
        if (v105 == v99)
        {
          goto LABEL_75;
        }

        goto LABEL_86;
      }

      v105 = v99 & 0x7FFFFFF0;
      v111 = v105;
      v112 = v160;
      do
      {
        v114 = v112[2];
        v113 = v112[3];
        v116 = *v112;
        v115 = v112[1];
        v112 += 4;
        v163.val[3] = vminq_s32(vmaxq_s32(vshrq_n_s32(vaddq_s32(v113, v96), 0x10uLL), v97), v98);
        v163.val[2] = vminq_s32(vmaxq_s32(vshrq_n_s32(vaddq_s32(v114, v96), 0x10uLL), v97), v98);
        v163.val[1] = vminq_s32(vmaxq_s32(vshrq_n_s32(vaddq_s32(v115, v96), 0x10uLL), v97), v98);
        v163.val[0] = vminq_s32(vmaxq_s32(vshrq_n_s32(vaddq_s32(v116, v96), 0x10uLL), v97), v98);
        *v103++ = vqtbl4q_s8(v163, xmmword_1003E36F0);
        v111 -= 16;
      }

      while (v111);
      if (v105 == v99)
      {
        goto LABEL_75;
      }

      if ((v99 & 0xC) != 0)
      {
        goto LABEL_97;
      }
    }

    else
    {
      v105 = 0;
    }

LABEL_86:
    v106 = v99 - v105;
    v107 = (v101 + v105 + v102 * v95);
    v108 = &v100[4 * v105];
    do
    {
      v109 = *v108;
      v108 += 4;
      v110 = (v109 + 0x8000) >> 16;
      if (v110 <= -128)
      {
        v110 = -128;
      }

      if (v110 >= 127)
      {
        LOBYTE(v110) = 127;
      }

      *v107++ = v110;
      --v106;
    }

    while (v106);
LABEL_75:
    ++v95;
  }

  while (v95 != v7);
  v5 = v7;
  if (v7 >= v8)
  {
LABEL_102:
    v122 = v160;
    v123 = *(a1 + 28);
    if (v10 + 2 <= v123)
    {
      goto LABEL_108;
    }

    goto LABEL_103;
  }

LABEL_12:
  v11 = v5;
  *&v12.f64[0] = 0x8000000080000000;
  *&v12.f64[1] = 0x8000000080000000;
  v13 = vnegq_f64(v12);
  v14 = vdupq_n_s64(0xFFFFFFFFFFFFFF80);
  v15 = xmmword_1003E9AF0;
  v157 = v8;
  v155 = v14;
  v156 = v13;
  while (2)
  {
    v16 = v10;
    v17 = *(a1 + 72);
    v18 = v10 + 2;
    v10 = *(v17 + 4 * v11);
    if (v10 <= v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = *(v17 + 4 * v11);
    }

    v20 = v10 + 2;
    v21 = *(a1 + 28);
    if (v21 < v10 + 2)
    {
      v20 = *(a1 + 28);
    }

    if (v19 < v20)
    {
      if (v16 + 2 <= v10)
      {
        v22 = v10;
      }

      else
      {
        v22 = v16 + 2;
      }

      do
      {
        (*(a1 + 112))(*(a1 + 8) + *(a1 + 16) * v22++);
        v10 = *(v17 + 4 * v11);
        v9 = (v9 & 1) == 0;
        v23 = v10 + 2;
        v21 = *(a1 + 28);
        if (v21 < v10 + 2)
        {
          v23 = *(a1 + 28);
        }
      }

      while (v22 < v23);
      v8 = v157;
      v14 = v155;
      v13 = v156;
      v15 = xmmword_1003E9AF0;
    }

    v24 = v21 - 2;
    if (v10 <= v24)
    {
      v25 = v24;
    }

    else
    {
      v25 = v10;
    }

    v26 = v25 + v9;
    if (v16 > v24)
    {
      v24 = v16;
    }

    v27 = v26 - v24;
    v158 = 0;
    v159 = 0;
    if (v27 >= 0)
    {
      v9 = v27 & 1;
    }

    else
    {
      v9 = -(v27 & 1);
    }

    v28 = *(a1 + 88);
    if (v9 < 1)
    {
      v29 = 0;
      v31 = 0;
      v30 = &v159;
    }

    else
    {
      v29 = *(v28 + 8 * v11 + 4);
      v30 = &v158;
      v31 = 1;
    }

    v159 = v29;
    v32 = v28 + 4 * (2 * v11 - v9);
    *v30 = *(v32 + 4 * v31);
    if (v9 <= 0)
    {
      v158 = *(v32 + 4);
      v33 = *(a1 + 56) * *(a1 + 48);
      if (v33 < 1)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v33 = *(a1 + 56) * *(a1 + 48);
      if (v33 < 1)
      {
        goto LABEL_13;
      }
    }

    v34 = v160;
    v35 = *(a1 + 32);
    v36 = *(a1 + 40);
    v38 = v158;
    v37 = v159;
    if (v33 >= 4)
    {
      v39 = 0;
      v44 = (v35 + v36 * v11);
      v45 = &v44->i8[v33];
      v46 = &v160[4 * v33];
      v48 = v44 < &v160[4 * v33] && v160 < v45;
      v49 = v46 >= v45 || v44 >= &v46[4 * v33];
      if (!v49 || v48)
      {
        goto LABEL_44;
      }

      v50 = 4 * v33;
      if (v33 >= 0x10)
      {
        v39 = v33 & 0x7FFFFFF0;
        v51 = vdupq_n_s32(v159);
        v52 = vdupq_n_s32(v158);
        v53 = v39;
        v54 = v160;
        do
        {
          v55 = v54[1];
          v56 = v54[2];
          v57 = v54[3];
          v58 = vmull_s32(*v51.i8, *v55.i8);
          v59 = vmull_s32(*v51.i8, *v56.i8);
          v60 = vmull_s32(*v51.i8, *v57.i8);
          v62 = *(&v54[2] + v50);
          v61 = *(&v54[3] + v50);
          v64 = *(v54 + 4 * v33);
          v63 = *(&v54[1] + v50);
          v65 = vshrq_n_s64(vaddq_s64(vmlal_high_s32(vmull_high_s32(v51, v57), v52, v61), v13), 0x20uLL);
          v66 = vshrq_n_s64(vaddq_s64(vmlal_high_s32(vmull_high_s32(v51, v56), v52, v62), v13), 0x20uLL);
          v67 = vshrq_n_s64(vaddq_s64(vmlal_s32(v60, *v52.i8, *v61.i8), v13), 0x20uLL);
          v68 = vshrq_n_s64(vaddq_s64(vmlal_s32(v59, *v52.i8, *v62.i8), v13), 0x20uLL);
          v69 = vshrq_n_s64(vaddq_s64(vmlal_high_s32(vmull_high_s32(v51, v55), v52, v63), v13), 0x20uLL);
          v70 = vshrq_n_s64(vaddq_s64(vmlal_high_s32(vmull_high_s32(v51, *v54), v52, v64), v13), 0x20uLL);
          v71 = vshrq_n_s64(vaddq_s64(vmlal_s32(v58, *v52.i8, *v63.i8), v13), 0x20uLL);
          v72 = vshrq_n_s64(vaddq_s64(vmlal_s32(vmull_s32(*v51.i8, *v54->i8), *v52.i8, *v64.i8), v13), 0x20uLL);
          v73 = vbslq_s8(vcgtq_s64(v72, v14), v72, v14);
          v74 = vbslq_s8(vcgtq_s64(v71, v14), v71, v14);
          v75 = vbslq_s8(vcgtq_s64(v70, v14), v70, v14);
          v76 = vbslq_s8(vcgtq_s64(v69, v14), v69, v14);
          v77 = vbslq_s8(vcgtq_s64(v68, v14), v68, v14);
          v78 = vbslq_s8(vcgtq_s64(v67, v14), v67, v14);
          v79 = vbslq_s8(vcgtq_s64(v66, v14), v66, v14);
          v80 = vdupq_n_s64(0x7FuLL);
          v81 = vbslq_s8(vcgtq_s64(v65, v14), v65, v14);
          v165.val[3] = vbslq_s8(vcgtq_s64(v80, v81), v81, v80);
          v165.val[1] = vbslq_s8(vcgtq_s64(v80, v79), v79, v80);
          v165.val[2] = vbslq_s8(vcgtq_s64(v80, v78), v78, v80);
          v165.val[0] = vbslq_s8(vcgtq_s64(v80, v77), v77, v80);
          v166.val[3] = vbslq_s8(vcgtq_s64(v80, v76), v76, v80);
          v166.val[1] = vbslq_s8(vcgtq_s64(v80, v75), v75, v80);
          v166.val[2] = vbslq_s8(vcgtq_s64(v80, v74), v74, v80);
          v166.val[0] = vbslq_s8(vcgtq_s64(v80, v73), v73, v80);
          v75.i64[0] = vqtbl4q_s8(v166, v15).u64[0];
          v75.i64[1] = vqtbl4q_s8(v165, v15).u64[0];
          *v44++ = v75;
          v54 += 4;
          v53 -= 16;
        }

        while (v53);
        if (v39 == v33)
        {
          goto LABEL_13;
        }

        if ((v33 & 0xC) == 0)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v39 = 0;
      }

      v82 = v39;
      v39 = v33 & 0x7FFFFFFC;
      v83 = &v34[4 * v82];
      v84 = (v35 + v82 + v36 * v11);
      v85 = v82 - v39;
      v86 = vdupq_n_s32(v37);
      v87 = vdupq_n_s32(v38);
      do
      {
        v88 = *&v83->i8[4 * v33];
        v89 = vshrq_n_s64(vaddq_s64(vmlal_s32(vmull_s32(*v86.i8, *v83), *v87.i8, *v88.i8), v13), 0x20uLL);
        v90 = vshrq_n_s64(vaddq_s64(vmlal_high_s32(vmull_high_s32(v86, *v83->i8), v87, v88), v13), 0x20uLL);
        v91 = vbslq_s8(vcgtq_s64(v89, v14), v89, v14);
        v92 = vdupq_n_s64(0x7FuLL);
        v93 = vbslq_s8(vcgtq_s64(v90, v14), v90, v14);
        v94 = vbslq_s8(vcgtq_s64(v92, v91), v91, v92);
        *v94.i8 = vmovn_s64(v94);
        *v93.i8 = vmovn_s64(vbslq_s8(vcgtq_s64(v92, v93), v93, v92));
        v94.i16[1] = v94.i16[2];
        v94.i16[2] = v93.i16[0];
        v94.i16[3] = v93.i16[2];
        *v84++ = vmovn_s16(v94).u32[0];
        v83 += 2;
        v85 += 4;
      }

      while (v85);
      if (v39 != v33)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v39 = 0;
LABEL_44:
      v40 = v33 - v39;
      v41 = (v35 + v39 + v36 * v11);
      v42 = &v34[4 * v39];
      do
      {
        v43 = (v38 * *&v42[4 * v33] + v37 * *v42 + 0x80000000) >> 32;
        if (v43 <= -128)
        {
          v43 = -128;
        }

        if (v43 >= 127)
        {
          LOBYTE(v43) = 127;
        }

        *v41++ = v43;
        v42 += 4;
        --v40;
      }

      while (v40);
    }

LABEL_13:
    if (v8 != ++v11)
    {
      continue;
    }

    break;
  }

  v5 = v8;
  v122 = v160;
  v123 = *(a1 + 28);
  if (v10 + 2 <= v123)
  {
LABEL_108:
    (*(a1 + 112))(*(a1 + 8) + *(a1 + 16) * (v123 - 1), *(a1 + 56), *(a1 + 64), *(a1 + 80), v122, *(a1 + 96), *(a1 + 100), *(a1 + 48));
    goto LABEL_109;
  }

LABEL_103:
  v124 = v9 + ~v10 + v123;
  if (v124 >= 0)
  {
    v125 = v124 & 1;
  }

  else
  {
    v125 = -(v124 & 1);
  }

  v122 = (v122 + 4 * *(a1 + 48) * v125 * *(a1 + 56));
LABEL_109:
  v126 = a2[1];
  if (v5 < v126)
  {
    v127 = v5;
    v128.i64[0] = 0x800000008000;
    v128.i64[1] = 0x800000008000;
    v129.i64[0] = 0x7F0000007FLL;
    v129.i64[1] = 0x7F0000007FLL;
    v130.i64[0] = 0x7F0000007FLL;
    v130.i64[1] = 0x7F0000007FLL;
    while (2)
    {
      v131 = (*(a1 + 56) * *(a1 + 48));
      if (v131 < 1)
      {
        goto LABEL_112;
      }

      v132 = *(a1 + 32);
      v133 = *(a1 + 40);
      if (v131 >= 4 && ((v134 = (v132 + v133 * v127), v134 < (v122 + 4 * v131)) ? (v135 = v122 >= &v134->i8[v131]) : (v135 = 1), v135))
      {
        if (v131 >= 0x10)
        {
          v136 = v131 & 0x7FFFFFF0;
          v142 = v136;
          v143 = v122;
          do
          {
            v145 = v143[2];
            v144 = v143[3];
            v147 = *v143;
            v146 = v143[1];
            v143 += 4;
            v164.val[3] = vminq_s32(vmaxq_s32(vshrq_n_s32(vaddq_s32(v144, v128), 0x10uLL), v129), v130);
            v164.val[2] = vminq_s32(vmaxq_s32(vshrq_n_s32(vaddq_s32(v145, v128), 0x10uLL), v129), v130);
            v164.val[1] = vminq_s32(vmaxq_s32(vshrq_n_s32(vaddq_s32(v146, v128), 0x10uLL), v129), v130);
            v164.val[0] = vminq_s32(vmaxq_s32(vshrq_n_s32(vaddq_s32(v147, v128), 0x10uLL), v129), v130);
            *v134++ = vqtbl4q_s8(v164, xmmword_1003E36F0);
            v142 -= 16;
          }

          while (v142);
          if (v136 == v131)
          {
            goto LABEL_111;
          }

          if ((v131 & 0xC) == 0)
          {
            goto LABEL_123;
          }
        }

        else
        {
          v136 = 0;
        }

        v148 = v136;
        v136 = v131 & 0x7FFFFFFC;
        v149 = (v122 + 4 * v148);
        v150 = (v132 + v148 + v133 * v127);
        v151 = v148 - v136;
        do
        {
          v152 = *v149++;
          *v150++ = vuzp1_s8(vmovn_s32(vminq_s32(vmaxq_s32(vshrq_n_s32(vaddq_s32(v152, v128), 0x10uLL), v129), v130)), *v128.i8).u32[0];
          v151 += 4;
        }

        while (v151);
        if (v136 != v131)
        {
          goto LABEL_123;
        }
      }

      else
      {
        v136 = 0;
LABEL_123:
        v137 = v131 - v136;
        v138 = (v132 + v136 + v133 * v127);
        v139 = &v122->i32[v136];
        do
        {
          v140 = *v139++;
          v141 = (v140 + 0x8000) >> 16;
          if (v141 <= -128)
          {
            v141 = -128;
          }

          if (v141 >= 127)
          {
            LOBYTE(v141) = 127;
          }

          *v138++ = v141;
          --v137;
        }

        while (v137);
      }

LABEL_111:
      v126 = a2[1];
LABEL_112:
      if (++v127 >= v126)
      {
        break;
      }

      continue;
    }
  }

  result = v160;
  if (v160 != v162 && v160 != 0)
  {
    operator delete[]();
  }

  return result;
}

void sub_100355284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (a20 != v20)
  {
    if (a20)
    {
      operator delete[]();
    }
  }

  _Unwind_Resume(a1);
}

unsigned __int16 *sub_1003552C8(unsigned __int16 *result, uint64_t a2, uint64_t a3, int32x4_t *a4, int32x4_t *a5, int a6, int a7, int a8)
{
  v8 = *result << 16;
  v9 = vdupq_n_s32(v8);
  if (a6 < 4)
  {
    v11 = 0;
    if (a6 <= 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v10 = 0;
    v11 = a6 & 0x7FFFFFFC;
    do
    {
      *a5++ = v9;
      v10 += 4;
      a4 += 2;
    }

    while (v10 < a6 - 3);
    if (v11 >= a6)
    {
      goto LABEL_16;
    }
  }

  v12 = (~v11 + a6);
  if (v12 > 6)
  {
    v14 = v12 + 1;
    v15 = (v12 + 1) & 0x1FFFFFFF8;
    a4 = (a4 + 8 * v15);
    v13 = (a5 + 4 * v15);
    v11 += v15;
    v16 = a5 + 1;
    v17 = v15;
    do
    {
      v16[-1] = v9;
      *v16 = v9;
      v16 += 2;
      v17 -= 8;
    }

    while (v17);
    if (v14 == v15)
    {
      v11 = a6;
      a5 = (a5 + 4 * v15);
      goto LABEL_16;
    }
  }

  else
  {
    v13 = a5;
  }

  v18 = a6 - v11;
  a5 = v13;
  do
  {
    a5->i32[0] = v8;
    a5 = (a5 + 4);
    a4 = (a4 + 8);
    --v18;
  }

  while (v18);
  v11 = a6;
LABEL_16:
  if (v11 < a7 - 3)
  {
    v19 = (a3 + 4 * v11 + 8);
    do
    {
      v20 = v19[1];
      if (v20 + 8 > *(a3 - 4 + 4 * a8))
      {
        break;
      }

      v21 = *(v19 - 1);
      v22 = *&result[*(v19 - 2)];
      v23 = *v19;
      v19 += 4;
      v24 = *a4;
      v25 = a4[1];
      a4 += 2;
      v26 = vmulq_s32(vmovl_u16(vzip1_s32(v22, *&result[v21])), v24);
      v27 = vmulq_s32(vmovl_u16(vzip1_s32(*&result[v23], *&result[v20])), v25);
      v28 = vdupq_laneq_s64(v26, 1);
      v26.i64[1] = v27.i64[0];
      v29 = vzip1q_s32(v26, v28);
      v30 = vzip2q_s32(v26, v27);
      v31 = vzip2q_s64(v29, v30);
      v29.i64[1] = v30.i64[0];
      *a5++ = vaddq_s32(v31, v29);
      v11 += 4;
    }

    while (a7 - 3 > v11);
  }

  if (v11 < a7)
  {
    v32 = (a3 + 4 * v11);
    do
    {
      v33 = *v32++;
      v34 = a4->i32[0];
      v35 = a4->i32[1];
      a4 = (a4 + 8);
      a5->i32[0] = v34 * result[v33] + v35 * result[v33 + 1];
      a5 = (a5 + 4);
      ++v11;
    }

    while (v11 < a7);
  }

  v36 = result[*(a3 + 4 * a8 - 4)] << 16;
  for (i = vdupq_n_s32(v36); v11 < a8 - 3; v11 += 4)
  {
    *a5++ = i;
  }

  if (v11 < a8)
  {
    v38 = (~v11 + a8);
    if (v38 <= 6)
    {
      v39 = a5;
LABEL_31:
      v44 = a8 - v11;
      do
      {
        *v39++ = v36;
        --v44;
      }

      while (v44);
      return result;
    }

    v40 = v38 + 1;
    v41 = (v38 + 1) & 0x1FFFFFFF8;
    v39 = a5 + v41;
    v11 += v41;
    v42 = a5 + 1;
    v43 = v41;
    do
    {
      v42[-1] = i;
      *v42 = i;
      v42 += 2;
      v43 -= 8;
    }

    while (v43);
    if (v40 != v41)
    {
      goto LABEL_31;
    }
  }

  return result;
}

int16x4_t *sub_1003554F4(int16x4_t *result, unsigned int a2, uint64_t a3, int *a4, int32x4_t *a5, int a6, int a7, int a8)
{
  if (a6 < 1)
  {
    a6 = 0;
    if (a7 <= 0)
    {
      goto LABEL_34;
    }
  }

  else
  {
    if (a2 > 0)
    {
      if (a2 > 0xF)
      {
        v12 = 4 * (a2 & 0x7FFFFFF0);
        v13 = a2 - (a2 & 0x7FFFFFF0);
        if (a2 == (a2 & 0x7FFFFFF0))
        {
          v14 = a5 + 2;
          do
          {
            a5 = (a5 + v12);
            v15 = v14;
            v16 = result + 2;
            v17 = a2 & 0x7FFFFFF0;
            do
            {
              _Q0 = *v16[-2].i8;
              _Q1 = *v16->i8;
              v20 = vshll_n_s16(*_Q0.i8, 0x10uLL);
              __asm { SHLL2           V0.4S, V0.8H, #0x10 }

              v25 = vshll_n_s16(*v16, 0x10uLL);
              __asm { SHLL2           V1.4S, V1.8H, #0x10 }

              v15[-2] = v20;
              v15[-1] = _Q0;
              *v15 = v25;
              v15[1] = _Q1;
              v15 += 4;
              v16 += 4;
              v17 -= 16;
            }

            while (v17);
            ++v13;
            v14 = (v14 + v12);
          }

          while (v13 != a6);
        }

        else
        {
          for (i = 0; i != a6; ++i)
          {
            v27 = a5 + 2;
            a5 = (a5 + v12);
            v28 = a2 & 0x7FFFFFF0;
            v29 = result + 2;
            do
            {
              _Q0 = *v29[-2].i8;
              _Q1 = *v29->i8;
              v32 = vshll_n_s16(*_Q0.i8, 0x10uLL);
              __asm { SHLL2           V0.4S, V0.8H, #0x10 }

              v33 = vshll_n_s16(*v29, 0x10uLL);
              __asm { SHLL2           V1.4S, V1.8H, #0x10 }

              v27[-2] = v32;
              v27[-1] = _Q0;
              *v27 = v33;
              v27[1] = _Q1;
              v27 += 4;
              v29 += 4;
              v28 -= 16;
            }

            while (v28);
            v34 = &result[4 * ((a2 >> 4) & 0x7FFFFFF)];
            v35 = a2 - (a2 & 0x7FFFFFF0);
            do
            {
              v36 = v34->u16[0];
              v34 = (v34 + 2);
              a5->i32[0] = v36 << 16;
              a5 = (a5 + 4);
              --v35;
            }

            while (v35);
          }
        }
      }

      else
      {
        for (j = 0; j != a6; ++j)
        {
          v9 = result;
          v10 = a2;
          do
          {
            v11 = v9->u16[0];
            v9 = (v9 + 2);
            a5->i32[0] = v11 << 16;
            a5 = (a5 + 4);
            --v10;
          }

          while (v10);
        }
      }
    }

    a4 += 2 * (a6 - 1) + 2;
    if (a6 >= a7)
    {
      goto LABEL_34;
    }
  }

  if (a2 < 1)
  {
    return result;
  }

  v37 = a6;
  do
  {
    v38 = result + (*(a3 + 4 * v37) * a2);
    v39 = a2;
    do
    {
      v40 = *a4;
      if (*a4)
      {
        v40 *= *v38;
      }

      a5->i32[0] = v40;
      v41 = a4[1];
      if (v41)
      {
        v41 *= v38[a2];
      }

      a5->i32[0] = v41 + v40;
      a5 = (a5 + 4);
      ++v38;
      --v39;
    }

    while (v39);
    ++v37;
    a4 += 2;
  }

  while (v37 < a7);
  a6 = a7;
LABEL_34:
  if (a2 >= 1 && a6 < a8)
  {
    v42 = *(a3 + 4 * a8 - 4) * a2;
    if (a2 >= 0x10)
    {
      v47 = (result + 2 * v42);
      v48 = v47 + 2;
      v49 = &v47[4 * ((a2 >> 4) & 0x7FFFFFF)];
      do
      {
        v50 = a5 + 2;
        a5 = (a5 + 4 * (a2 & 0x7FFFFFF0));
        v51 = a2 & 0x7FFFFFF0;
        v52 = v48;
        do
        {
          _Q0 = *v52[-2].i8;
          _Q1 = *v52->i8;
          v55 = vshll_n_s16(*_Q0.i8, 0x10uLL);
          __asm { SHLL2           V0.4S, V0.8H, #0x10 }

          v56 = vshll_n_s16(*v52, 0x10uLL);
          __asm { SHLL2           V1.4S, V1.8H, #0x10 }

          v50[-2] = v55;
          v50[-1] = _Q0;
          *v50 = v56;
          v50[1] = _Q1;
          v50 += 4;
          v52 += 4;
          v51 -= 16;
        }

        while (v51);
        if (a2 != (a2 & 0x7FFFFFF0))
        {
          v57 = v49;
          v58 = a2 - (a2 & 0x7FFFFFF0);
          do
          {
            v59 = v57->u16[0];
            v57 = (v57 + 2);
            a5->i32[0] = v59 << 16;
            a5 = (a5 + 4);
            --v58;
          }

          while (v58);
        }

        ++a6;
      }

      while (a6 != a8);
    }

    else
    {
      v43 = result + v42;
      do
      {
        v44 = v43;
        v45 = a2;
        do
        {
          v46 = *v44++;
          a5->i32[0] = v46 << 16;
          a5 = (a5 + 4);
          --v45;
        }

        while (v45);
        ++a6;
      }

      while (a6 != a8);
    }
  }

  return result;
}

_WORD *sub_100355798(_WORD *result, double a2, uint64_t a3, uint64_t a4, int *a5, double *a6, int a7, int a8, int a9)
{
  if (a7 >= 1)
  {
    LOWORD(a2) = *result;
    WORD2(a2) = result[1];
    a2 = COERCE_DOUBLE(vshl_n_s32(*&a2, 0x10uLL));
    if (a7 > 7)
    {
      v9 = a7 & 0x7FFFFFF8;
      v10 = &a6[v9];
      *&v11 = a2;
      *(&v11 + 1) = a2;
      v12 = a6 + 4;
      v13 = v9;
      do
      {
        *(v12 - 2) = v11;
        *(v12 - 1) = v11;
        *v12 = v11;
        v12[1] = v11;
        v12 += 4;
        v13 -= 8;
      }

      while (v13);
      if (v9 == a7)
      {
LABEL_12:
        a5 += 2 * (a7 - 1) + 2;
        a6 = v10;
        if (a7 < a8)
        {
          goto LABEL_13;
        }

        goto LABEL_5;
      }
    }

    else
    {
      LODWORD(v9) = 0;
      v10 = a6;
    }

    v14 = a7 - v9;
    do
    {
      *v10++ = a2;
      --v14;
    }

    while (v14);
    goto LABEL_12;
  }

  a7 = 0;
  if (a8 > 0)
  {
LABEL_13:
    v15 = a8 - a7;
    v16 = (a4 + 4 * a7);
    do
    {
      v17 = *v16++;
      v18 = &result[2 * v17];
      *a6 = *a5 * *v18 + a5[1] * v18[2];
      v19 = *a5;
      v20 = a5[1];
      a5 += 2;
      v21 = v19 * v18[1] + v20 * v18[3];
      v22 = a6 + 1;
      *(a6++ + 1) = v21;
      --v15;
    }

    while (v15);
    a6 = v22;
    if (a8 >= a9)
    {
      return result;
    }

    goto LABEL_16;
  }

LABEL_5:
  a8 = a7;
  if (a7 >= a9)
  {
    return result;
  }

LABEL_16:
  v23 = &result[2 * *(a4 + 4 * a9 - 4)];
  LOWORD(a2) = *v23;
  WORD2(a2) = v23[1];
  v24 = vshl_n_s32(*&a2, 0x10uLL);
  v25 = (~a8 + a9);
  if (v25 < 7)
  {
    v26 = a6;
LABEL_21:
    v32 = a9 - a8;
    do
    {
      *v26++ = v24;
      --v32;
    }

    while (v32);
    return result;
  }

  v27 = v25 + 1;
  v28 = (v25 + 1) & 0x1FFFFFFF8;
  a8 += v28;
  v26 = &a6[v28];
  *&v29 = v24;
  *(&v29 + 1) = v24;
  v30 = a6 + 4;
  v31 = v28;
  do
  {
    *(v30 - 2) = v29;
    *(v30 - 1) = v29;
    *v30 = v29;
    v30[1] = v29;
    v30 += 4;
    v31 -= 8;
  }

  while (v31);
  if (v27 != v28)
  {
    goto LABEL_21;
  }

  return result;
}

int16x4_t *sub_100355918(int16x4_t *result, unsigned int a2, uint64_t a3, int *a4, int32x4_t *a5, int a6, int a7, int a8)
{
  if (a6 < 1)
  {
    a6 = 0;
    if (a7 <= 0)
    {
      goto LABEL_34;
    }
  }

  else
  {
    if (a2 > 0)
    {
      if (a2 > 0xF)
      {
        v12 = 4 * (a2 & 0x7FFFFFF0);
        v13 = a2 - (a2 & 0x7FFFFFF0);
        if (a2 == (a2 & 0x7FFFFFF0))
        {
          v14 = a5 + 2;
          do
          {
            a5 = (a5 + v12);
            v15 = v14;
            v16 = result + 2;
            v17 = a2 & 0x7FFFFFF0;
            do
            {
              _Q0 = *v16[-2].i8;
              _Q1 = *v16->i8;
              v20 = vshll_n_s16(*_Q0.i8, 0x10uLL);
              __asm { SHLL2           V0.4S, V0.8H, #0x10 }

              v25 = vshll_n_s16(*v16, 0x10uLL);
              __asm { SHLL2           V1.4S, V1.8H, #0x10 }

              v15[-2] = v20;
              v15[-1] = _Q0;
              *v15 = v25;
              v15[1] = _Q1;
              v15 += 4;
              v16 += 4;
              v17 -= 16;
            }

            while (v17);
            ++v13;
            v14 = (v14 + v12);
          }

          while (v13 != a6);
        }

        else
        {
          for (i = 0; i != a6; ++i)
          {
            v27 = a5 + 2;
            a5 = (a5 + v12);
            v28 = a2 & 0x7FFFFFF0;
            v29 = result + 2;
            do
            {
              _Q0 = *v29[-2].i8;
              _Q1 = *v29->i8;
              v32 = vshll_n_s16(*_Q0.i8, 0x10uLL);
              __asm { SHLL2           V0.4S, V0.8H, #0x10 }

              v33 = vshll_n_s16(*v29, 0x10uLL);
              __asm { SHLL2           V1.4S, V1.8H, #0x10 }

              v27[-2] = v32;
              v27[-1] = _Q0;
              *v27 = v33;
              v27[1] = _Q1;
              v27 += 4;
              v29 += 4;
              v28 -= 16;
            }

            while (v28);
            v34 = &result[4 * ((a2 >> 4) & 0x7FFFFFF)];
            v35 = a2 - (a2 & 0x7FFFFFF0);
            do
            {
              v36 = v34->u16[0];
              v34 = (v34 + 2);
              a5->i32[0] = v36 << 16;
              a5 = (a5 + 4);
              --v35;
            }

            while (v35);
          }
        }
      }

      else
      {
        for (j = 0; j != a6; ++j)
        {
          v9 = result;
          v10 = a2;
          do
          {
            v11 = v9->u16[0];
            v9 = (v9 + 2);
            a5->i32[0] = v11 << 16;
            a5 = (a5 + 4);
            --v10;
          }

          while (v10);
        }
      }
    }

    a4 += 2 * (a6 - 1) + 2;
    if (a6 >= a7)
    {
      goto LABEL_34;
    }
  }

  if (a2 < 1)
  {
    return result;
  }

  v37 = a6;
  do
  {
    v38 = result + (*(a3 + 4 * v37) * a2);
    v39 = a2;
    do
    {
      v40 = *a4;
      if (*a4)
      {
        v40 *= *v38;
      }

      a5->i32[0] = v40;
      v41 = a4[1];
      if (v41)
      {
        v41 *= v38[a2];
      }

      a5->i32[0] = v41 + v40;
      a5 = (a5 + 4);
      ++v38;
      --v39;
    }

    while (v39);
    ++v37;
    a4 += 2;
  }

  while (v37 < a7);
  a6 = a7;
LABEL_34:
  if (a2 >= 1 && a6 < a8)
  {
    v42 = *(a3 + 4 * a8 - 4) * a2;
    if (a2 >= 0x10)
    {
      v47 = (result + 2 * v42);
      v48 = v47 + 2;
      v49 = &v47[4 * ((a2 >> 4) & 0x7FFFFFF)];
      do
      {
        v50 = a5 + 2;
        a5 = (a5 + 4 * (a2 & 0x7FFFFFF0));
        v51 = a2 & 0x7FFFFFF0;
        v52 = v48;
        do
        {
          _Q0 = *v52[-2].i8;
          _Q1 = *v52->i8;
          v55 = vshll_n_s16(*_Q0.i8, 0x10uLL);
          __asm { SHLL2           V0.4S, V0.8H, #0x10 }

          v56 = vshll_n_s16(*v52, 0x10uLL);
          __asm { SHLL2           V1.4S, V1.8H, #0x10 }

          v50[-2] = v55;
          v50[-1] = _Q0;
          *v50 = v56;
          v50[1] = _Q1;
          v50 += 4;
          v52 += 4;
          v51 -= 16;
        }

        while (v51);
        if (a2 != (a2 & 0x7FFFFFF0))
        {
          v57 = v49;
          v58 = a2 - (a2 & 0x7FFFFFF0);
          do
          {
            v59 = v57->u16[0];
            v57 = (v57 + 2);
            a5->i32[0] = v59 << 16;
            a5 = (a5 + 4);
            --v58;
          }

          while (v58);
        }

        ++a6;
      }

      while (a6 != a8);
    }

    else
    {
      v43 = result + v42;
      do
      {
        v44 = v43;
        v45 = a2;
        do
        {
          v46 = *v44++;
          a5->i32[0] = v46 << 16;
          a5 = (a5 + 4);
          --v45;
        }

        while (v45);
        ++a6;
      }

      while (a6 != a8);
    }
  }

  return result;
}

__int16 *sub_100355BBC(__int16 *result, int32x2_t a2, uint64_t a3, uint64_t a4, int *a5, int32x2_t *a6, int a7, int a8, int a9)
{
  if (a7 >= 1)
  {
    a2.i16[0] = *result;
    a2.i16[2] = result[1];
    a2 = vshl_n_s32(a2, 0x10uLL);
    v9 = result[2] << 16;
    if (a7 > 7)
    {
      v10 = a7 & 0x7FFFFFF8;
      *&v12 = a2;
      *(&v12 + 1) = __PAIR64__(a2.u32[0], v9);
      LODWORD(v13) = a2.i32[1];
      DWORD1(v13) = result[2] << 16;
      *(&v13 + 1) = a2;
      v11 = (a6 + 12 * v10);
      *&v14 = __PAIR64__(a2.u32[0], DWORD1(v13));
      *(&v14 + 1) = __PAIR64__(v9, a2.u32[1]);
      v15 = v10;
      do
      {
        *a6->i8 = v12;
        *a6[2].i8 = v13;
        *a6[4].i8 = v14;
        *a6[6].i8 = v12;
        *a6[8].i8 = v13;
        *a6[10].i8 = v14;
        a6 += 12;
        v15 -= 8;
      }

      while (v15);
      if (v10 == a7)
      {
LABEL_12:
        a5 += 2 * (a7 - 1) + 2;
        a6 = v11;
        if (a7 < a8)
        {
          goto LABEL_13;
        }

        goto LABEL_5;
      }
    }

    else
    {
      LODWORD(v10) = 0;
      v11 = a6;
    }

    v16 = a7 - v10;
    v17 = v11;
    do
    {
      *v17 = a2;
      v11 = (v17 + 12);
      v17[1].i32[0] = v9;
      v17 = (v17 + 12);
      --v16;
    }

    while (v16);
    goto LABEL_12;
  }

  a7 = 0;
  if (a8 > 0)
  {
LABEL_13:
    v18 = a8 - a7;
    v19 = (a4 + 4 * a7);
    do
    {
      v20 = *v19++;
      v21 = &result[3 * v20];
      a6->i32[0] = *a5 * *v21 + a5[1] * v21[3];
      a6->i32[1] = *a5 * v21[1] + a5[1] * v21[4];
      v22 = *a5;
      v23 = a5[1];
      a5 += 2;
      v24 = v22 * v21[2] + v23 * v21[5];
      v25 = (a6 + 12);
      a6[1].i32[0] = v24;
      a6 = (a6 + 12);
      --v18;
    }

    while (v18);
    a6 = v25;
    if (a8 >= a9)
    {
      return result;
    }

    goto LABEL_16;
  }

LABEL_5:
  a8 = a7;
  if (a7 >= a9)
  {
    return result;
  }

LABEL_16:
  v26 = &result[3 * *(a4 + 4 * a9 - 4)];
  a2.i16[0] = *v26;
  a2.i16[2] = v26[1];
  v27 = vshl_n_s32(a2, 0x10uLL);
  v28 = v26[2] << 16;
  v29 = (~a8 + a9);
  if (v29 < 7)
  {
    v30 = a6;
LABEL_21:
    v36 = a9 - a8;
    do
    {
      *v30 = v27;
      v30[1].i32[0] = v28;
      v30 = (v30 + 12);
      --v36;
    }

    while (v36);
    return result;
  }

  v31 = v29 + 1;
  a8 += v31 & 0xFFFFFFF8;
  *&v32 = v27;
  *(&v32 + 1) = __PAIR64__(v27.u32[0], v28);
  *&v33 = __PAIR64__(v28, v27.u32[1]);
  *(&v33 + 1) = v27;
  v30 = (a6 + 12 * (v31 & 0x1FFFFFFF8));
  *&v34 = __PAIR64__(v27.u32[0], v28);
  *(&v34 + 1) = __PAIR64__(v28, v27.u32[1]);
  v35 = v31 & 0x1FFFFFFF8;
  do
  {
    *a6->i8 = v32;
    *a6[2].i8 = v33;
    *a6[4].i8 = v34;
    *a6[6].i8 = v32;
    *a6[8].i8 = v33;
    *a6[10].i8 = v34;
    a6 += 12;
    v35 -= 8;
  }

  while (v35);
  if (v31 != (v31 & 0x1FFFFFFF8))
  {
    goto LABEL_21;
  }

  return result;
}

int16x4_t *sub_100355DEC(int16x4_t *result, unsigned int a2, uint64_t a3, int *a4, int32x4_t *a5, int a6, int a7, int a8)
{
  if (a6 < 1)
  {
    a6 = 0;
    if (a7 <= 0)
    {
      goto LABEL_34;
    }
  }

  else
  {
    if (a2 > 0)
    {
      if (a2 > 0xF)
      {
        v12 = 4 * (a2 & 0x7FFFFFF0);
        v13 = a2 - (a2 & 0x7FFFFFF0);
        if (a2 == (a2 & 0x7FFFFFF0))
        {
          v14 = a5 + 2;
          do
          {
            a5 = (a5 + v12);
            v15 = v14;
            v16 = result + 2;
            v17 = a2 & 0x7FFFFFF0;
            do
            {
              _Q0 = *v16[-2].i8;
              _Q1 = *v16->i8;
              v20 = vshll_n_s16(*_Q0.i8, 0x10uLL);
              __asm { SHLL2           V0.4S, V0.8H, #0x10 }

              v25 = vshll_n_s16(*v16, 0x10uLL);
              __asm { SHLL2           V1.4S, V1.8H, #0x10 }

              v15[-2] = v20;
              v15[-1] = _Q0;
              *v15 = v25;
              v15[1] = _Q1;
              v15 += 4;
              v16 += 4;
              v17 -= 16;
            }

            while (v17);
            ++v13;
            v14 = (v14 + v12);
          }

          while (v13 != a6);
        }

        else
        {
          for (i = 0; i != a6; ++i)
          {
            v27 = a5 + 2;
            a5 = (a5 + v12);
            v28 = a2 & 0x7FFFFFF0;
            v29 = result + 2;
            do
            {
              _Q0 = *v29[-2].i8;
              _Q1 = *v29->i8;
              v32 = vshll_n_s16(*_Q0.i8, 0x10uLL);
              __asm { SHLL2           V0.4S, V0.8H, #0x10 }

              v33 = vshll_n_s16(*v29, 0x10uLL);
              __asm { SHLL2           V1.4S, V1.8H, #0x10 }

              v27[-2] = v32;
              v27[-1] = _Q0;
              *v27 = v33;
              v27[1] = _Q1;
              v27 += 4;
              v29 += 4;
              v28 -= 16;
            }

            while (v28);
            v34 = &result[4 * ((a2 >> 4) & 0x7FFFFFF)];
            v35 = a2 - (a2 & 0x7FFFFFF0);
            do
            {
              v36 = v34->u16[0];
              v34 = (v34 + 2);
              a5->i32[0] = v36 << 16;
              a5 = (a5 + 4);
              --v35;
            }

            while (v35);
          }
        }
      }

      else
      {
        for (j = 0; j != a6; ++j)
        {
          v9 = result;
          v10 = a2;
          do
          {
            v11 = v9->u16[0];
            v9 = (v9 + 2);
            a5->i32[0] = v11 << 16;
            a5 = (a5 + 4);
            --v10;
          }

          while (v10);
        }
      }
    }

    a4 += 2 * (a6 - 1) + 2;
    if (a6 >= a7)
    {
      goto LABEL_34;
    }
  }

  if (a2 < 1)
  {
    return result;
  }

  v37 = a6;
  do
  {
    v38 = result + (*(a3 + 4 * v37) * a2);
    v39 = a2;
    do
    {
      v40 = *a4;
      if (*a4)
      {
        v40 *= *v38;
      }

      a5->i32[0] = v40;
      v41 = a4[1];
      if (v41)
      {
        v41 *= v38[a2];
      }

      a5->i32[0] = v41 + v40;
      a5 = (a5 + 4);
      ++v38;
      --v39;
    }

    while (v39);
    ++v37;
    a4 += 2;
  }

  while (v37 < a7);
  a6 = a7;
LABEL_34:
  if (a2 >= 1 && a6 < a8)
  {
    v42 = *(a3 + 4 * a8 - 4) * a2;
    if (a2 >= 0x10)
    {
      v47 = (result + 2 * v42);
      v48 = v47 + 2;
      v49 = &v47[4 * ((a2 >> 4) & 0x7FFFFFF)];
      do
      {
        v50 = a5 + 2;
        a5 = (a5 + 4 * (a2 & 0x7FFFFFF0));
        v51 = a2 & 0x7FFFFFF0;
        v52 = v48;
        do
        {
          _Q0 = *v52[-2].i8;
          _Q1 = *v52->i8;
          v55 = vshll_n_s16(*_Q0.i8, 0x10uLL);
          __asm { SHLL2           V0.4S, V0.8H, #0x10 }

          v56 = vshll_n_s16(*v52, 0x10uLL);
          __asm { SHLL2           V1.4S, V1.8H, #0x10 }

          v50[-2] = v55;
          v50[-1] = _Q0;
          *v50 = v56;
          v50[1] = _Q1;
          v50 += 4;
          v52 += 4;
          v51 -= 16;
        }

        while (v51);
        if (a2 != (a2 & 0x7FFFFFF0))
        {
          v57 = v49;
          v58 = a2 - (a2 & 0x7FFFFFF0);
          do
          {
            v59 = v57->u16[0];
            v57 = (v57 + 2);
            a5->i32[0] = v59 << 16;
            a5 = (a5 + 4);
            --v58;
          }

          while (v58);
        }

        ++a6;
      }

      while (a6 != a8);
    }

    else
    {
      v43 = result + v42;
      do
      {
        v44 = v43;
        v45 = a2;
        do
        {
          v46 = *v44++;
          a5->i32[0] = v46 << 16;
          a5 = (a5 + 4);
          --v45;
        }

        while (v45);
        ++a6;
      }

      while (a6 != a8);
    }
  }

  return result;
}