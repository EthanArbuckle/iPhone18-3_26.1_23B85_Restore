uint64_t sub_239EA2C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if (a5 < 1)
  {
    return 0;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = a1;
  v10 = a4;
  v22 = a5;
  do
  {
    v11 = 0;
    v12 = a1 + 88 * v6;
    do
    {
      v13 = *(v12 + 76);
      if ((v13 & 4) == 0)
      {
        v14 = v9 + 8 * v11;
        if (!*(v14 + 16))
        {
          v15 = *(v10 + 4 * v11);
          v16 = a2 + 24 * v7;
          *(v14 + 16) = v16;
          *(v16 + 16) = v15;
          *(v16 + 20) = (v13 >> 3) & 1;
          *v16 = 0;
          *(v16 + 8) = a3 + 4 * v8;
          v17 = *(v14 + 16);
          *(*(v17 + 8) + 4 * (*v17)++) = v6;
          v18 = *(v9 + 4 * v11);
          v19 = v11 - 1;
          if (!v11)
          {
            v19 = 2;
          }

          v20 = *(v12 + 4 * v19);
          if ((v18 & 0x80000000) == 0)
          {
            sub_239EA449C(a4, a1, v18, v17);
            v17 = *(v14 + 16);
          }

          if ((v20 & 0x80000000) == 0)
          {
            sub_239EA449C(a4, a1, v20, v17);
            v17 = *(v14 + 16);
          }

          v7 = (v7 + 1);
          v8 += *v17;
        }
      }

      ++v11;
    }

    while (v11 != 3);
    ++v6;
    v10 += 12;
    v9 += 88;
  }

  while (v6 != v22);
  return v7;
}

uint64_t sub_239EA2D9C(uint64_t a1, uint64_t a2, _DWORD *a3, int a4, uint64_t a5, uint64_t a6, float a7)
{
  v221 = *MEMORY[0x277D85DE8];
  if (a4 < 1)
  {
    goto LABEL_169;
  }

  v8 = a3;
  v10 = 0;
  v11 = a4;
  v194 = a4;
  v12 = a3;
  do
  {
    v14 = *v12;
    v12 += 6;
    v13 = v14;
    if (v10 <= v14)
    {
      v10 = v13;
    }

    --v11;
  }

  while (v11);
  if (v10)
  {
    v15 = malloc_type_malloc(40 * v10, 0x10000400A747E1EuLL);
    v16 = malloc_type_malloc(16 * v10, 0x101004082113244uLL);
    v17 = malloc_type_malloc(4 * v10, 0x100004052888210uLL);
    v18 = v17;
    if (v15)
    {
      v19 = v16 == 0;
    }

    else
    {
      v19 = 1;
    }

    if (!v19 && v17 != 0)
    {
      v22 = 0;
      v192 = v16 + 1;
      v193 = v8;
      v202 = a2;
      v196 = v16;
      v197 = v15;
      while (1)
      {
        v195 = v22;
        v23 = &v8[6 * v22];
        if (*v23 < 1)
        {
          goto LABEL_167;
        }

        v24 = 0;
        v205 = 0;
        v199 = &v8[6 * v22];
        do
        {
          v25 = *(*(v23 + 1) + 4 * v24);
          v26 = a2 + 88 * v25;
          if (*(v26 + 16) == v23)
          {
            v27 = 0;
          }

          else if (*(v26 + 24) == v23)
          {
            v27 = 1;
          }

          else if (*(v26 + 32) == v23)
          {
            v27 = 2;
          }

          else
          {
            v27 = -1;
          }

          v200 = v27;
          v28 = *(a5 + 4 * (v27 + 3 * v25));
          v220 = 0.0;
          v219 = 0;
          (*(*a6 + 24))(a6, &v219, (v28 >> 2), v28 & 3);
          v29 = v219;
          v30 = v220;
          v31 = *(v26 + 40);
          v32 = *(v26 + 44);
          v33 = *(v26 + 48);
          v34 = ((v31 * v219.f32[0]) + (v32 * v219.f32[1])) + (v33 * v220);
          v35 = v31 - (v34 * v219.f32[0]);
          v36 = v32 - (v34 * v219.f32[1]);
          v37 = v33 - (v34 * v220);
          v38 = fabsf(v36);
          v39 = fabsf(v37);
          if (fabsf(v35) > 1.1755e-38 || v38 > 1.1755e-38 || v39 > 1.1755e-38)
          {
            v42 = 1.0 / sqrtf(((v36 * v36) + (v35 * v35)) + (v37 * v37));
            v35 = v42 * v35;
            v36 = v42 * v36;
            v37 = v42 * v37;
          }

          v43 = *(v26 + 52);
          v44 = *(v26 + 56);
          v45 = *(v26 + 60);
          v46 = ((v43 * v219.f32[0]) + (v44 * v219.f32[1])) + (v45 * v220);
          v47 = v43 - (v46 * v219.f32[0]);
          v48 = v44 - (v46 * v219.f32[1]);
          v49 = v45 - (v46 * v220);
          v50 = fabsf(v48);
          v51 = fabsf(v49);
          if (fabsf(v47) > 1.1755e-38 || v50 > 1.1755e-38 || v51 > 1.1755e-38)
          {
            v54 = 1.0 / sqrtf(((v48 * v48) + (v47 * v47)) + (v49 * v49));
            v47 = v54 * v47;
            v48 = v54 * v48;
            v49 = v54 * v49;
          }

          v55 = *v23;
          if (*v23 < 1)
          {
            v57 = 0;
            LODWORD(v88) = v205;
          }

          else
          {
            v56 = 0;
            v57 = 0;
            v58 = *(v26 + 72);
            v59 = *(v23 + 1);
            do
            {
              v60 = *(v59 + 4 * v56);
              v61 = a2 + 88 * v60;
              v62 = *(v61 + 40);
              v63 = *(v61 + 44);
              v64 = *(v61 + 48);
              v65 = ((v62 * v29.f32[0]) + (v63 * v29.f32[1])) + (v64 * v30);
              v66 = v62 - (v65 * v29.f32[0]);
              v67 = v63 - (v65 * v29.f32[1]);
              v68 = v64 - (v65 * v30);
              v69 = fabsf(v67);
              v70 = fabsf(v68);
              if (fabsf(v66) > 1.1755e-38 || v69 > 1.1755e-38 || v70 > 1.1755e-38)
              {
                v73 = 1.0 / sqrtf(((v67 * v67) + (v66 * v66)) + (v68 * v68));
                v66 = v73 * v66;
                v67 = v73 * v67;
                v68 = v73 * v68;
              }

              v74 = *(v61 + 52);
              v75 = *(v61 + 56);
              v76 = *(v61 + 60);
              v77 = ((v74 * v29.f32[0]) + (v75 * v29.f32[1])) + (v76 * v30);
              v78 = v74 - (v77 * v29.f32[0]);
              v79 = v75 - (v77 * v29.f32[1]);
              v80 = v76 - (v77 * v30);
              v81 = fabsf(v79);
              v82 = fabsf(v80);
              if (fabsf(v78) > 1.1755e-38 || v81 > 1.1755e-38 || v82 > 1.1755e-38)
              {
                v85 = 1.0 / sqrtf(((v79 * v79) + (v78 * v78)) + (v80 * v80));
                v78 = v85 * v78;
                v79 = v85 * v79;
                v80 = v85 * v80;
              }

              if (((*(v61 + 76) | *(v26 + 76)) & 4) != 0 || v58 == *(v61 + 72) || ((v86 = ((v78 * v47) + (v79 * v48)) + (v80 * v49), (((v66 * v35) + (v67 * v36)) + (v68 * v37)) > a7) ? (v87 = v86 <= a7) : (v87 = 1), !v87))
              {
                v18[v57] = v60;
                v55 = *v23;
                ++v57;
              }

              ++v56;
            }

            while (v56 < v55);
            LODWORD(v88) = v205;
            if (v57 > 1)
            {
              sub_239EA45D8(v18, 0, v57 - 1, 0x26065CAu);
            }
          }

          v204 = v26;
          v201 = v24;
          if (v88 < 1)
          {
            v95 = 4 * v57;
            v96 = malloc_type_malloc(v95, 0x100004052888210uLL);
            if (!v96)
            {
LABEL_171:
              free(v16);
              free(v18);
              v21 = v15;
              goto LABEL_172;
            }

            v89 = 0;
LABEL_90:
            v97 = &v16[2 * v88];
            *v97 = v57;
            v97[1] = v96;
            memcpy(v96, v18, v95);
            if (v57 < 1)
            {
              *&v98 = 0;
              LODWORD(v99) = 0;
              LODWORD(v100) = 0;
              *&v103 = 0;
              *&v102 = 0;
              *&v101 = 0;
              v26 = v204;
            }

            else
            {
              v104 = v199[4];
              v105 = v57;
              *&v98 = 0;
              *&v103 = 0;
              v106 = v18;
              *&v100 = 0;
              *&v99 = 0;
              *&v102 = 0;
              *&v101 = 0;
              v26 = v204;
              v203 = v104;
              do
              {
                v108 = *v106++;
                v107 = v108;
                v109 = a2 + 88 * v108;
                if ((*(v109 + 76) & 4) == 0)
                {
                  v110 = 3 * v107;
                  v111 = (a5 + 12 * v107);
                  v215 = v99;
                  v216 = v98;
                  v213 = v101;
                  v214 = v100;
                  v211 = v103;
                  v212 = v102;
                  v210 = v106;
                  if (*v111 == v104)
                  {
                    v112 = 0;
                    v113 = 0;
                    v114 = 1;
                  }

                  else if (v111[1] == v104)
                  {
                    v114 = 1;
                    v112 = 1;
                    v113 = 1;
                  }

                  else
                  {
                    v114 = v111[2] != v104;
                    v112 = v111[2] == v104;
                    if (v111[2] == v104)
                    {
                      v113 = 2;
                    }

                    else
                    {
                      v113 = -1;
                    }
                  }

                  v115 = *(a5 + 4 * (v113 + v110));
                  v220 = 0.0;
                  v219 = 0;
                  (*(*a6 + 24))(a6, &v219, (v115 >> 2), v115 & 3);
                  v116 = v220;
                  v117 = v219;
                  v118 = *(v109 + 40);
                  v119 = *(v109 + 48);
                  v120 = vmul_f32(v118, v219);
                  v120.f32[0] = vaddv_f32(v120) + (v119 * v220);
                  v121 = vmls_lane_f32(v118, v219, v120, 0);
                  v122 = v119 - (v120.f32[0] * v220);
                  if (fabsf(v121.f32[0]) > 1.1755e-38 || (v123 = vmvn_s8(vcgt_f32(vabs_f32(__PAIR64__(v121.u32[1], LODWORD(v122))), 0x80000000800000)), (v123.i8[4] & 1) == 0) || (v123.i8[0] & 1) == 0)
                  {
                    v124 = 1.0 / sqrtf(vaddv_f32(vmul_f32(v121, v121)) + (v122 * v122));
                    v121 = vmul_n_f32(v121, v124);
                    v122 = v124 * v122;
                  }

                  v125 = *(v109 + 60);
                  v126 = *(v109 + 52);
                  v127 = vmul_f32(v126, v219);
                  v127.f32[0] = vaddv_f32(v127) + (v125 * v220);
                  v128 = vmls_lane_f32(v126, v219, v127, 0);
                  v129 = v125 - (v127.f32[0] * v220);
                  v208 = v122;
                  v209 = v121;
                  if (fabsf(v128.f32[0]) > 1.1755e-38 || (v130 = vmvn_s8(vcgt_f32(vabs_f32(__PAIR64__(v128.u32[1], LODWORD(v129))), 0x80000000800000)), (v130.i8[4] & 1) == 0) || (v130.i8[0] & 1) == 0)
                  {
                    v131 = 1.0 / sqrtf(vaddv_f32(vmul_f32(v128, v128)) + (v129 * v129));
                    v128 = vmul_n_f32(v128, v131);
                    v129 = v131 * v129;
                  }

                  v206 = v129;
                  v207 = v128;
                  if (v114)
                  {
                    v132 = v113 + 1;
                  }

                  else
                  {
                    v132 = 0;
                  }

                  v133 = *(a5 + 4 * (v132 + v110));
                  v134 = *(a5 + 4 * (v113 + v110));
                  v135 = v113 - 1;
                  if (!v112)
                  {
                    v135 = 2;
                  }

                  v136 = *(a5 + 4 * (v135 + v110));
                  v220 = 0.0;
                  v219 = 0;
                  v137 = a6;
                  (*(*a6 + 16))(a6, &v219, (v136 >> 2), v136 & 3);
                  v138 = v220;
                  v139 = v219;
                  v220 = 0.0;
                  v219 = 0;
                  (*(*v137 + 16))(v137, &v219, (v134 >> 2), v134 & 3);
                  v140 = v219;
                  v141 = v220;
                  v220 = 0.0;
                  v219 = 0;
                  (*(*v137 + 16))(v137, &v219, (v133 >> 2), v133 & 3);
                  v142 = vsub_f32(v139, v140);
                  v143 = vmul_f32(v142, v117);
                  v143.f32[0] = vaddv_f32(v143) + ((v138 - v141) * v116);
                  v144 = vmls_lane_f32(v142, v117, v143, 0);
                  v145 = (v138 - v141) - (v143.f32[0] * v116);
                  if (fabsf(v144.f32[0]) > 1.1755e-38 || (v146 = vmvn_s8(vcgt_f32(vabs_f32(__PAIR64__(v144.u32[1], LODWORD(v145))), 0x80000000800000)), (v146.i8[4] & 1) == 0) || (v146.i8[0] & 1) == 0)
                  {
                    v147 = 1.0 / sqrtf(vaddv_f32(vmul_f32(v144, v144)) + (v145 * v145));
                    v144 = vmul_n_f32(v144, v147);
                    v145 = v147 * v145;
                  }

                  a2 = v202;
                  LODWORD(v88) = v205;
                  v26 = v204;
                  v148 = vsub_f32(v219, v140);
                  v149 = vmul_f32(v148, v117);
                  v149.f32[0] = vaddv_f32(v149) + ((v220 - v141) * v116);
                  v150 = vmls_lane_f32(v148, v117, v149, 0);
                  v151 = (v220 - v141) - (v149.f32[0] * v116);
                  if (fabsf(v150.f32[0]) > 1.1755e-38 || (v152 = vmvn_s8(vcgt_f32(vabs_f32(__PAIR64__(v150.u32[1], LODWORD(v151))), 0x80000000800000)), (v152.i8[4] & 1) == 0) || (v152.i8[0] & 1) == 0)
                  {
                    v153 = 1.0 / sqrtf(vaddv_f32(vmul_f32(v150, v150)) + (v151 * v151));
                    v150 = vmul_n_f32(v150, v153);
                    v151 = v153 * v151;
                  }

                  v154 = vmul_f32(v150, v144);
                  v155 = (v154.f32[1] + (v151 * v145)) + v154.f32[0];
                  v156 = -1.0;
                  if (v155 >= -1.0)
                  {
                    v156 = v155;
                  }

                  if (v155 <= 1.0)
                  {
                    v157 = v156;
                  }

                  else
                  {
                    v157 = 1.0;
                  }

                  v158 = acos(v157);
                  v99 = v215;
                  *(&v98 + 1) = *(&v216 + 1);
                  *&v98 = vmla_n_f32(*&v216, v209, v158);
                  *(&v101 + 1) = *(&v213 + 1);
                  v100 = v214;
                  *&v100 = *&v214 + (v208 * v158);
                  v103 = v211;
                  *(&v102 + 1) = *(&v212 + 1);
                  *&v102 = vmla_n_f32(*&v212, v207, v158);
                  *&v99 = *&v215 + (v206 * v158);
                  *&v101 = vmla_n_f32(*&v213, *(v109 + 64), v158);
                  *&v103 = *&v211 + v158;
                  v104 = v203;
                  v106 = v210;
                }

                --v105;
              }

              while (v105);
            }

            if (fabsf(*&v98) > 1.1755e-38 || (v159 = vmvn_s8(vcgt_f32(vabs_f32(__PAIR64__(DWORD1(v98), v100)), 0x80000000800000)), (v159.i8[4] & 1) == 0) || (v159.i8[0] & 1) == 0)
            {
              v160 = vmul_f32(*&v98, *&v98);
              v160.f32[0] = 1.0 / sqrtf((v160.f32[1] + (*&v100 * *&v100)) + v160.f32[0]);
              *&v98 = vmul_n_f32(*&v98, v160.f32[0]);
              *&v100 = v160.f32[0] * *&v100;
            }

            v15 = v197;
            if (fabsf(*&v102) > 1.1755e-38 || (v161 = vmvn_s8(vcgt_f32(vabs_f32(__PAIR64__(DWORD1(v102), v99)), 0x80000000800000)), (v161.i8[4] & 1) == 0) || (v161.i8[0] & 1) == 0)
            {
              v162 = vmul_f32(*&v102, *&v102);
              v162.f32[0] = 1.0 / sqrtf((v162.f32[1] + (*&v99 * *&v99)) + v162.f32[0]);
              *&v102 = vmul_n_f32(*&v102, v162.f32[0]);
              *&v99 = v162.f32[0] * *&v99;
            }

            v16 = v196;
            if (*&v103 > 0.0)
            {
              *&v101 = vdiv_f32(*&v101, vdup_lane_s32(*&v103, 0));
            }

            v163 = &v197[40 * v88];
            *v163 = v98;
            *(v163 + 2) = v100;
            *(v163 + 3) = v101;
            *(v163 + 2) = v102;
            *(v163 + 6) = v99;
            *(v163 + 7) = DWORD1(v101);
            *(v163 + 4) = 0;
            LODWORD(v88) = v88 + 1;
          }

          else
          {
            v89 = 0;
            while (1)
            {
              v90 = &v16[2 * v89];
              if (v57 == *v90)
              {
                if (v57 < 1)
                {
                  break;
                }

                v91 = 0;
                v92 = v90[1];
                do
                {
                  v93 = v18[v91] == v92[v91];
                }

                while (v18[v91] == v92[v91] && ++v91 < v57);
                if (v93)
                {
                  break;
                }
              }

              if (++v89 >= v88)
              {
                v95 = 4 * v57;
                v96 = malloc_type_malloc(v95, 0x100004052888210uLL);
                if (v96)
                {
                  goto LABEL_90;
                }

                v88 = v88;
                v189 = v16 + 1;
                do
                {
                  v190 = *v189;
                  v189 += 2;
                  free(v190);
                  --v88;
                }

                while (v88);
                goto LABEL_171;
              }
            }
          }

          v205 = v88;
          v164 = a1 + 40 * (*(v26 + 80) + *(v26 + v200 + 84));
          v165 = &v15[40 * v89];
          if (*(v164 + 32) != 1)
          {
            v178 = *v165;
            v179 = *(v165 + 1);
            *(v164 + 32) = *(v165 + 4);
            *v164 = v178;
            *(v164 + 16) = v179;
            *(v164 + 32) = 1;
            v23 = v199;
            v170 = v201;
            goto LABEL_163;
          }

          v166 = *(v164 + 12);
          v167 = *(v165 + 3);
          v168 = *(v164 + 28);
          v169 = *(v165 + 7);
          v23 = v199;
          v170 = v201;
          if (v166 != v167)
          {
            v171 = *v164;
            v172 = *v165;
LABEL_154:
            v171 = v171 + v172;
            v173 = vadd_f32(*(v165 + 4), *(v164 + 4));
            if (fabsf(v171) > 1.1755e-38 || (v180 = vmvn_s8(vcgt_f32(vabs_f32(v173), 0x80000000800000)), (v180.i8[0] & 1) == 0) || (v180.i8[4] & 1) == 0)
            {
              v181 = vmul_f32(v173, v173);
              v181.f32[0] = 1.0 / sqrtf((v181.f32[0] + (v171 * v171)) + v181.f32[1]);
              v171 = v181.f32[0] * v171;
              v173 = vmul_n_f32(v173, v181.f32[0]);
            }

            v166 = (v167 + v166) * 0.5;
            v168 = (v169 + v168) * 0.5;
            v175 = vadd_f32(*(v165 + 16), *(v164 + 16));
            v177 = *(v165 + 6) + *(v164 + 24);
            if (fabsf(v175.f32[0]) > 1.1755e-38 || (v182.i32[1] = v175.i32[1], v182.f32[0] = *(v165 + 6) + *(v164 + 24), v183 = vmvn_s8(vcgt_f32(vabs_f32(v182), 0x80000000800000)), (v183.i8[4] & 1) == 0) || (v183.i8[0] & 1) == 0)
            {
              v184 = 1.0 / sqrtf(vaddv_f32(vmul_f32(v175, v175)) + (v177 * v177));
              v175 = vmul_n_f32(v175, v184);
              v177 = v184 * v177;
            }

            goto LABEL_162;
          }

          v171 = *v164;
          v172 = *v165;
          if (v168 != v169)
          {
            goto LABEL_154;
          }

          if (v171 != v172)
          {
            goto LABEL_154;
          }

          v173 = *(v164 + 4);
          v174 = vmvn_s8(vceq_f32(v173, *(v165 + 4)));
          if (v174.i8[0])
          {
            goto LABEL_154;
          }

          if (v174.i8[4])
          {
            goto LABEL_154;
          }

          v175 = *(v164 + 16);
          v176 = vmvn_s8(vceq_f32(v175, *(v165 + 16)));
          if (v176.i8[0])
          {
            goto LABEL_154;
          }

          if (v176.i8[4])
          {
            goto LABEL_154;
          }

          v177 = *(v164 + 24);
          if (v177 != *(v165 + 6))
          {
            goto LABEL_154;
          }

LABEL_162:
          *v164 = v171;
          *(v164 + 4) = v173;
          *(v164 + 12) = v166;
          *(v164 + 16) = v175;
          *(v164 + 24) = v177;
          *(v164 + 28) = v168;
          *(v164 + 32) = 2;
LABEL_163:
          *(v164 + 36) = v23[5];
          v24 = v170 + 1;
        }

        while (v24 < *v23);
        if (v205 >= 1)
        {
          v185 = v205;
          v186 = v192;
          do
          {
            v187 = *v186;
            v186 += 2;
            free(v187);
            --v185;
          }

          while (v185);
        }

LABEL_167:
        v22 = v195 + 1;
        v8 = v193;
        if (v195 + 1 == v194)
        {
          free(v16);
          free(v18);
          free(v15);
          goto LABEL_169;
        }
      }
    }

    if (v15)
    {
      free(v15);
    }

    if (v16)
    {
      free(v16);
    }

    if (v18)
    {
      v21 = v18;
LABEL_172:
      free(v21);
    }

    result = 0;
  }

  else
  {
LABEL_169:
    result = 1;
  }

  v191 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_239EA3A44(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v8 = result;
  v48 = *MEMORY[0x277D85DE8];
  if (a5 < a6)
  {
    v9 = a5;
    v10 = a6;
    do
    {
      v11 = a2 + 88 * v9;
      if ((*(v11 + 76) & 2) == 0)
      {
        v12 = 0;
        result = a3 + 12 * v9;
        do
        {
          if (a5 >= 1)
          {
            v13 = 0;
            v14 = *(result + 4 * v12);
            do
            {
              v15 = *(a3 + 4 * v13);
            }

            while (v14 != v15 && ++v13 < 3 * a5);
            if (v14 == v15)
            {
              v17 = v8 + 40 * (*(a2 + 88 * (v13 / 3) + 80) + *(a2 + 88 * (v13 / 3) + v13 % 3 + 84));
              v18 = *v17;
              v19 = *(v17 + 16);
              v20 = v8 + 40 * (*(v11 + 80) + *(v11 + 84 + v12));
              *(v20 + 32) = *(v17 + 32);
              *v20 = v18;
              *(v20 + 16) = v19;
            }
          }

          ++v12;
        }

        while (v12 != 3);
      }

      ++v9;
    }

    while (v9 != v10);
  }

  if (a5 >= 1)
  {
    v21 = 0;
    v22 = (a2 + 84);
    v45 = a5;
    do
    {
      v23 = a2 + 88 * v21;
      if ((*(v23 + 76) & 2) != 0)
      {
        v24 = (1 << *(v23 + 85)) | (1 << *(v23 + 84)) | (1 << *(v23 + 86));
        if ((v24 & 8) != 0)
        {
          v25 = 0;
        }

        else
        {
          v25 = 3;
        }

        if ((v24 & 4) == 0)
        {
          v25 = 2;
        }

        if ((v24 & 2) != 0)
        {
          v26 = v25;
        }

        else
        {
          v26 = 1;
        }

        v27 = *(v23 + 72);
        v47 = 0.0;
        v46 = 0;
        v28 = ((4 * v27) >> 2);
        v44 = v26;
        (*(*a4 + 16))(a4, &v46, v28);
        v29 = v46;
        v30 = -1;
        v31 = v22;
        v32 = v47;
        while (1)
        {
          v34 = *v31++;
          v33 = v34;
          v47 = 0.0;
          v46 = 0;
          result = (*(*a4 + 16))(a4, &v46, v28, v34 & 3);
          v35 = *&v46 == *&v29 && *(&v46 + 1) == *(&v29 + 1);
          if (v35 && v47 == v32)
          {
            break;
          }

          if (++v30 >= 2)
          {
            goto LABEL_37;
          }
        }

        v37 = *(v23 + 80);
        v38 = v37 + v44;
        v39 = v8 + 40 * (v37 + v33);
        v40 = *v39;
        v41 = *(v39 + 16);
        v42 = v8 + 40 * v38;
        *(v42 + 32) = *(v39 + 32);
        *v42 = v40;
        *(v42 + 16) = v41;
      }

LABEL_37:
      ++v21;
      v22 += 88;
    }

    while (v21 != v45);
  }

  v43 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_239EA3CD4(float a1, float a2, float a3)
{
  v3 = (((a3 - a1) * 2048.0) / (a2 - a1)) & ~((((a3 - a1) * 2048.0) / (a2 - a1)) >> 31);
  if (v3 >= 2047)
  {
    return 2047;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_239EA3D00(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  while (2)
  {
    v5 = a5;
    v6 = a4;
    v7 = a3;
    v8 = a2;
    v54 = result;
    v66[2] = *MEMORY[0x277D85DE8];
    v9 = a2 + 16 * a4;
    *v65 = *v9;
    v10 = a4;
    *&v65[8] = *(v9 + 8);
    *v64 = *v65;
    *&v64[8] = *&v65[8];
    if (a4 >= a5)
    {
      goto LABEL_10;
    }

    v11 = a2 + 16 * a4 + 16;
    v12 = a4;
    do
    {
      v13 = 0;
      v14 = 0;
      ++v12;
      v15 = v64;
      do
      {
        v16 = *(v11 + v13);
        if (*&v65[v13] <= v16)
        {
          v17 = v15;
          if (*v15 >= v16)
          {
            goto LABEL_8;
          }
        }

        else
        {
          v17 = &v65[4 * v14];
        }

        *v17 = v16;
LABEL_8:
        ++v14;
        ++v15;
        v13 += 4;
      }

      while (v13 != 12);
      v11 += 16;
    }

    while (v12 != a5);
LABEL_10:
    v18 = vsub_f32(*&v64[4], *&v65[4]);
    if (v18.f32[0] <= (*v64 - *v65) || v18.f32[0] <= v18.f32[1])
    {
      if (v18.f32[1] <= (*v64 - *v65))
      {
        v22 = 0;
        v21 = v65;
        v20 = v64;
      }

      else
      {
        v20 = &v64[8];
        v21 = &v65[8];
        v22 = 2;
      }
    }

    else
    {
      v20 = &v64[4];
      v21 = &v65[4];
      v22 = 1;
    }

    v23 = (*v21 + *v20) * 0.5;
    if (v23 < *v20 && v23 > *v21)
    {
      v38 = a4;
      if (a4 < a5)
      {
        v39 = a2 + 4 * v22;
        LODWORD(v38) = a4;
        do
        {
          do
          {
            v40 = *(v39 + 16 * v38);
            if (v40 >= v23)
            {
              v38 = v38;
            }

            else
            {
              v38 = (v38 + 1);
            }
          }

          while (v40 < v23 && v38 < a5);
          if (v38 < a5)
          {
            do
            {
              v42 = *(v39 + 16 * a5);
              LODWORD(a5) = a5 - (v42 >= v23);
            }

            while (v42 >= v23 && v38 < a5);
            if (v40 >= v23 && v42 < v23)
            {
              v45 = *(a2 + 16 * v38);
              *(a2 + 16 * v38) = *(a2 + 16 * a5);
              *(a2 + 16 * a5) = v45;
              v38 = (v38 + 1);
              LODWORD(a5) = a5 - 1;
            }
          }
        }

        while (v38 < a5);
      }

      if (v38 == a5)
      {
        v46 = *(a2 + 16 * v38 + 4 * v22);
        LODWORD(a5) = v38 - (v46 >= v23);
        if (v46 >= v23)
        {
          v47 = v38;
        }

        else
        {
          v47 = (v38 + 1);
        }

        v38 = v47;
      }

      if (a5 > a4)
      {
        result = sub_239EA3D00(result, a2, a3, a4);
      }

      if (v38 < v5)
      {
        v48 = *MEMORY[0x277D85DE8];
        result = v54;
        a2 = v8;
        a3 = v7;
        a4 = v38;
        a5 = v5;

        continue;
      }
    }

    else if (a4 <= a5)
    {
      v25 = a5 + 1;
      v26 = a4;
      v51 = a4;
      v52 = a4;
      v50 = a5 + 1;
      do
      {
        v53 = *(v8 + 16 * v26 + 12);
        v27 = *(v54 + 4 * v53);
        memset(v66, 0, 12);
        (*(*v7 + 16))(v7, v66, (v27 >> 2), v27 & 3);
        v57 = v66[0];
        v61 = v66[1];
        memset(v66, 0, 12);
        (*(*v7 + 24))(v7, v66, (v27 >> 2), v27 & 3);
        v59 = v66[0];
        v55 = *(v66 + 4);
        v66[0] = 0;
        result = (*(*v7 + 32))(v7, v66, (v27 >> 2), v27 & 3);
        if (v26 > v10)
        {
          v28.i64[0] = v57;
          v28.i64[1] = __PAIR64__(v59, v61);
          v29.i64[0] = v55;
          v29.i64[1] = v66[0];
          v30 = v6;
          v56 = v29;
          v58 = v28;
          do
          {
            v31 = *(v8 + 16 * v30 + 12);
            v32 = *(v54 + 4 * v31);
            memset(v66, 0, 12);
            v33 = (*(*v7 + 16))(v7, v66, (v32 >> 2), v32 & 3);
            v33.n128_u64[0] = v66[0];
            v33.n128_u32[2] = v66[1];
            v62 = v33;
            memset(v66, 0, 12);
            (*(*v7 + 24))(v7, v66, (v32 >> 2), v32 & 3);
            v60 = *(v66 + 4);
            v34 = v62;
            v34.n128_u32[3] = v66[0];
            v63 = v34;
            v66[0] = 0;
            result = (*(*v7 + 32))(v7, v66, (v32 >> 2), v32 & 3);
            v35.i64[0] = v60;
            v35.i64[1] = v66[0];
            v36 = vuzp1q_s16(vceqq_f32(v58, v63), vceqq_f32(v56, v35));
            v37 = vaddvq_s16(vandq_s8(v36, xmmword_239F9C040));
            v30 += (vminv_u8(vmovn_s16(v36)) & 1) == 0;
          }

          while (v26 > v30 && v37 != 255);
          v10 = v51;
          v6 = v52;
          v25 = v50;
          if (v37 == 255)
          {
            *(v54 + 4 * v53) = *(v54 + 4 * v31);
          }
        }

        ++v26;
      }

      while (v25 != v26);
    }

    break;
  }

  v49 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_239EA41E8(uint64_t a1, int *a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v9[0] = 0;
  (*(*a1 + 32))(a1, v9, (v4 >> 2), v4 & 3);
  v5 = a2[1];
  v9[0] = 0;
  (*(*a1 + 32))(a1, v9, (v5 >> 2), v5 & 3);
  v6 = a2[2];
  v9[0] = 0;
  result = (*(*a1 + 32))(a1, v9, (v6 >> 2), v6 & 3);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_239EA42E0(uint64_t result, int a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  while (a3 - a2 >= 1)
  {
    v5 = a4;
    v6 = a3;
    v7 = result;
    if (a3 - a2 == 1)
    {
      v8 = result + 12 * a2;
      v9 = result + 12 * a3;
      if (*(v8 + 4 * a4) > *(v9 + 4 * a4))
      {
        v10 = *v8;
        v11 = *(v8 + 8);
        v12 = *(v9 + 8);
        *v8 = *v9;
        *(v8 + 8) = v12;
        *v9 = v10;
        *(v9 + 8) = v11;
      }

      return result;
    }

    v13 = a5 + __ROR4__(a5, -a5) + 3;
    v14 = *(result + 12 * (v13 % (a3 - a2 + 1) + a2) + 4 * a4);
    v15 = a2;
    do
    {
      v16 = v15 - 1;
      v17 = result + 12 * v15;
      do
      {
        v18 = *(v17 + 4 * a4);
        ++v16;
        ++v15;
        v17 += 12;
      }

      while (v18 < v14);
      v19 = v17 - 12;
      v20 = a3 + 1;
      v21 = result + 12 * a3;
      do
      {
        v22 = *(v21 + 4 * a4);
        --v20;
        LODWORD(a3) = a3 - 1;
        v21 -= 12;
      }

      while (v22 > v14);
      if (v16 <= v20)
      {
        v23 = *v19;
        v25 = *(v19 + 8);
        v24 = *(v21 + 20);
        *v19 = *(v21 + 12);
        *(v19 + 8) = v24;
        *(v21 + 12) = v23;
        *(v21 + 20) = v25;
      }

      else
      {
        --v15;
        LODWORD(a3) = a3 + 1;
      }
    }

    while (v15 <= a3);
    if (a3 > a2)
    {
      result = sub_239EA42E0(result);
    }

    if (v15 >= v6)
    {
      return result;
    }

    result = v7;
    a2 = v15;
    a3 = v6;
    a4 = v5;
    a5 = v13;
  }

  return result;
}

uint64_t sub_239EA449C(uint64_t result, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = result;
  do
  {
    v8 = *(a4 + 16);
    v9 = (v7 + 12 * a3);
    if (*v9 == v8)
    {
      v10 = 0;
      v11 = 0;
    }

    else if (v9[1] == v8)
    {
      v10 = 1;
      v11 = 1;
    }

    else
    {
      v14 = v9[2] == v8;
      v10 = v14;
      if (v14)
      {
        v11 = 2;
      }

      else
      {
        v11 = -1;
      }
    }

    v12 = a2 + 88 * a3;
    v13 = (v12 + 16);
    if (*(v12 + 16 + 8 * v11))
    {
      v14 = 1;
    }

    else
    {
      v14 = a4 == 0;
    }

    if (v14)
    {
      break;
    }

    v15 = *(v12 + 76);
    if ((v15 & 4) != 0 && !*v13 && !*(v12 + 24) && !*(v12 + 32))
    {
      v15 = v15 & 0xFFFFFFF7 | (8 * (*(a4 + 20) != 0));
      *(v12 + 76) = v15;
    }

    if (((v15 >> 3) & 1) != *(a4 + 20))
    {
      break;
    }

    *(*(a4 + 8) + 4 * (*a4)++) = a3;
    v13[v11] = a4;
    v16 = *(v12 + 4 * v11);
    v17 = v11 - 1;
    v18 = v10 ? v17 : 2;
    a3 = *(v12 + 4 * v18);
    if ((v16 & 0x80000000) == 0)
    {
      result = sub_239EA449C(v7, a2);
    }
  }

  while ((a3 & 0x80000000) == 0);
  return result;
}

uint64_t sub_239EA45D8(uint64_t result, int a2, int a3, unsigned int a4)
{
  v7 = result;
  v8 = a3 + 1;
  do
  {
    v9 = a2;
    a4 += __ROR4__(a4, -a4) + 3;
    v10 = *(v7 + 4 * (a4 % (v8 - a2) + a2));
    LODWORD(v11) = a3;
    do
    {
      v12 = a2;
      do
      {
        v13 = *(v7 + 4 * v12++);
      }

      while (v13 < v10);
      a2 = v12 - 1;
      v11 = v11;
      do
      {
        v14 = *(v7 + 4 * v11--);
      }

      while (v14 > v10);
      if (v12 - 1 <= v11 + 1)
      {
        *(v7 + 4 * v12 - 4) = v14;
        *(v7 + 4 * v11 + 4) = v13;
        a2 = v12;
      }

      else
      {
        LODWORD(v11) = v11 + 1;
      }
    }

    while (a2 <= v11);
    if (v11 > v9)
    {
      result = sub_239EA45D8(v7);
    }
  }

  while (a2 < a3);
  return result;
}

void sub_239EA4F64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, void *a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, uint64_t a30, void *a31, uint64_t a32)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a31)
  {
    operator delete(a31);
  }

  _Unwind_Resume(a1);
}

id sub_239EA5150()
{
  v0 = objc_opt_new();
  v3 = objc_msgSend_attributes(v0, v1, v2);
  v5 = objc_msgSend_objectAtIndexedSubscript_(v3, v4, 0);
  objc_msgSend_setName_(v5, v6, @"position");

  v9 = objc_msgSend_attributes(v0, v7, v8);
  v11 = objc_msgSend_objectAtIndexedSubscript_(v9, v10, 0);
  objc_msgSend_setFormat_(v11, v12, 786435);

  v15 = objc_msgSend_attributes(v0, v13, v14);
  v17 = objc_msgSend_objectAtIndexedSubscript_(v15, v16, 0);
  objc_msgSend_setBufferIndex_(v17, v18, 0);

  v21 = objc_msgSend_attributes(v0, v19, v20);
  v23 = objc_msgSend_objectAtIndexedSubscript_(v21, v22, 1);
  objc_msgSend_setName_(v23, v24, @"normal");

  v27 = objc_msgSend_attributes(v0, v25, v26);
  v29 = objc_msgSend_objectAtIndexedSubscript_(v27, v28, 1);
  objc_msgSend_setFormat_(v29, v30, 786435);

  v33 = objc_msgSend_attributes(v0, v31, v32);
  v35 = objc_msgSend_objectAtIndexedSubscript_(v33, v34, 1);
  objc_msgSend_setBufferIndex_(v35, v36, 0);

  v39 = objc_msgSend_attributes(v0, v37, v38);
  v41 = objc_msgSend_objectAtIndexedSubscript_(v39, v40, 2);
  objc_msgSend_setName_(v41, v42, @"textureCoordinate");

  v45 = objc_msgSend_attributes(v0, v43, v44);
  v47 = objc_msgSend_objectAtIndexedSubscript_(v45, v46, 2);
  objc_msgSend_setFormat_(v47, v48, 786434);

  v51 = objc_msgSend_attributes(v0, v49, v50);
  v53 = objc_msgSend_objectAtIndexedSubscript_(v51, v52, 2);
  objc_msgSend_setBufferIndex_(v53, v54, 0);

  objc_msgSend_setPackedOffsets(v0, v55, v56);
  objc_msgSend_setPackedStrides(v0, v57, v58);

  return v0;
}

void sub_239EA5378(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

void sub_239EA53E4(const void **a1, unint64_t a2, unint64_t a3, int a4, int32x4_t a5, float32x4_t a6, float a7, float a8, float a9)
{
  v64 = 0;
  v65 = 0;
  v66 = 0;
  v49 = a2 + 1;
  v50 = a3 + 1;
  v13 = (a3 + 1) * (a2 + 1);
  __p = 0;
  v62 = 0;
  v63 = 0;
  sub_239E96128(&v64, v13);
  sub_239EA7E00(&__p, v13);
  v14 = 0;
  v15 = vmlaq_f32(vnegq_f32(vmulq_f32(a6, vextq_s8(vuzp1q_s32(a5, a5), a5, 0xCuLL))), a5, vextq_s8(vuzp1q_s32(a6, a6), a6, 0xCuLL));
  v48 = vextq_s8(vuzp1q_s32(v15, v15), v15, 0xCuLL);
  v16 = vmulq_n_f32(v48, a9 * 0.5);
  v53 = v16;
  v17 = 1.0 / a3;
  v18 = a2 + 1;
  v19 = 1.0 / a2;
  do
  {
    v20 = 0;
    v16.f32[0] = v14 * v17;
    v57 = v16;
    v58 = vmlaq_n_f32(v53, a6, -((a8 * 0.5) - ((v14 * a8) * v17)));
    do
    {
      v21 = vmlaq_n_f32(v58, a5, -((a7 * 0.5) - ((v20 * a7) * v19)));
      v22 = v65;
      if (v65 >= v66)
      {
        v24 = (v65 - v64) >> 4;
        if ((v24 + 1) >> 60)
        {
          sub_239E797B4();
        }

        v25 = (v66 - v64) >> 3;
        if (v25 <= v24 + 1)
        {
          v25 = v24 + 1;
        }

        if (v66 - v64 >= 0x7FFFFFFFFFFFFFF0)
        {
          v26 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v26 = v25;
        }

        if (v26)
        {
          sub_239E91AC8(&v64, v26);
        }

        v27 = (16 * v24);
        *v27 = v21;
        v23 = 16 * v24 + 16;
        v28 = v27 - (v65 - v64);
        memcpy(v28, v64, v65 - v64);
        v29 = v64;
        v64 = v28;
        v65 = v23;
        v66 = 0;
        if (v29)
        {
          operator delete(v29);
        }
      }

      else
      {
        *v65 = v21;
        v23 = (v22 + 16);
      }

      v65 = v23;
      *&v30 = v20 * v19;
      v16 = v57;
      HIDWORD(v30) = v57.i32[0];
      v31 = v62;
      if (v62 >= v63)
      {
        v33 = (v62 - __p) >> 3;
        if ((v33 + 1) >> 61)
        {
          sub_239E797B4();
        }

        v34 = (v63 - __p) >> 2;
        if (v34 <= v33 + 1)
        {
          v34 = v33 + 1;
        }

        if (v63 - __p >= 0x7FFFFFFFFFFFFFF8)
        {
          v35 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v35 = v34;
        }

        if (v35)
        {
          sub_239E95BB4(&__p, v35);
        }

        v36 = (8 * v33);
        *v36 = v30;
        v32 = 8 * v33 + 8;
        v37 = v36 - (v62 - __p);
        memcpy(v37, __p, v62 - __p);
        v38 = __p;
        __p = v37;
        v62 = v32;
        v63 = 0;
        if (v38)
        {
          operator delete(v38);
        }
      }

      else
      {
        *v62 = v30;
        v32 = (v31 + 8);
      }

      v62 = v32;
      ++v20;
    }

    while (v18 != v20);
  }

  while (v14++ != a3);
  if (a4)
  {
    v40 = -1;
  }

  else
  {
    v40 = 0;
  }

  sub_239E95D48(a1, ((a1[1] - *a1) >> 2) + 8 * v49 * v50);
  v41 = v64;
  if (v65 != v64)
  {
    v42 = 0;
    v43 = 0;
    v44 = vbslq_s8(vdupq_n_s32(v40), vnegq_f32(v48), v48);
    v45 = v44.i32[1];
    v59 = v44.i32[0];
    v46 = v44.i32[2];
    v47 = 4;
    do
    {
      v60 = *&v41[v42];
      sub_239E798A4(a1, &v60);
      v60 = *&v64[v42 + 4];
      sub_239E798A4(a1, &v60);
      v60 = *&v64[v42 + 8];
      sub_239E798A4(a1, &v60);
      v60 = v59;
      sub_239E798A4(a1, &v60);
      v60 = v45;
      sub_239E798A4(a1, &v60);
      v60 = v46;
      sub_239E798A4(a1, &v60);
      v60 = *(__p + v43);
      sub_239E798A4(a1, &v60);
      v60 = *(__p + v47);
      sub_239E798A4(a1, &v60);
      ++v43;
      v41 = v64;
      v42 += 16;
      v47 += 8;
    }

    while (v43 < (v65 - v64) >> 4);
  }

  if (__p)
  {
    v62 = __p;
    operator delete(__p);
    v41 = v64;
  }

  if (v41)
  {
    v65 = v41;
    operator delete(v41);
  }
}

void sub_239EA5824(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31)
{
  if (__p)
  {
    operator delete(__p);
  }

  v33 = *(v31 - 176);
  if (v33)
  {
    *(v31 - 168) = v33;
    operator delete(v33);
  }

  _Unwind_Resume(exception_object);
}

void sub_239EA664C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a25)
  {
    operator delete(a25);
  }

  if (a28)
  {
    operator delete(a28);
  }

  if (a31)
  {
    operator delete(a31);
  }

  _Unwind_Resume(a1);
}

void sub_239EA6F44(uint64_t a1, int *a2, int a3, int a4, int a5, int a6, float32x4_t a7)
{
  v11 = 0;
  v12 = a7.f32[1];
  v13 = -1.0;
  if (!a5)
  {
    v13 = 1.0;
  }

  v47 = v13;
  if (a5)
  {
    v14 = -1;
  }

  else
  {
    v14 = 0;
  }

  v51 = vbslq_s8(vdupq_n_s32(v14), xmmword_239F9C0A0, xmmword_239F9C090);
  v15 = *a2;
  v16 = (a6 & a4) + a4;
  v17 = 1.0 / a4;
  v45 = 1.0 / a4;
  __asm { FMOV            V1.4S, #1.0 }

  v46 = vdivq_f32(_Q1, a7);
  v23 = 1.0 / a3;
  v24 = a3 + 1;
  v25 = 0.0;
  v26 = 1.0 / a3;
  do
  {
    v27 = cos(v25 * 3.14159265 * v17);
    if ((a3 & 0x80000000) == 0)
    {
      v28 = v27;
      v50 = v28;
      v29 = sin(v25 * 3.14159265 * v17);
      v30 = 0;
      v31 = 0;
      v32 = (__PAIR64__(v50 > 0.0, LODWORD(v50)) - COERCE_UNSIGNED_INT(0.0)) >> 32;
      v33 = v32;
      if (a5)
      {
        v33 = -v32;
      }

      LODWORD(v34) = 0;
      *(&v34 + 1) = v33;
      v48 = v34;
      do
      {
        v35 = __sincos_stret(v30 * 3.14159265 * v26);
        v37.f32[0] = v35.__cosval * v29;
        v36 = v35.__sinval * v29;
        v37.f32[1] = v50;
        v37.f32[2] = v36;
        if (v12 == 0.0)
        {
          v38 = v48;
          v38.i32[3] = v51.i32[3];
          v39 = v38;
        }

        else
        {
          v40 = vmulq_f32(vmulq_n_f32(v37, v47), v46);
          v41 = vmulq_f32(v40, v40);
          *&v42 = vaddv_f32(*v41.f32) + v41.f32[2];
          *v41.f32 = vrsqrte_f32(v42);
          *v41.f32 = vmul_f32(vrsqrts_f32(v42, vmul_f32(*v41.f32, *v41.f32)), *v41.f32);
          v39 = vmulq_n_f32(v40, vmul_f32(*v41.f32, vrsqrts_f32(v42, vmul_f32(*v41.f32, *v41.f32))).f32[0]);
        }

        v43 = vmulq_f32(v37, a7);
        v44 = (a1 + 32 * (v15 + v31));
        v43.i32[3] = v39.i32[0];
        *v44 = v43;
        v51.i32[3] = v39.i32[3];
        v44[1].i64[0] = vextq_s8(v39, v39, 4uLL).u64[0];
        v44[1].f32[2] = v31 * v23;
        v44[1].f32[3] = v11 * v45;
        ++v31;
        v30 += 2;
      }

      while (v24 != v31);
      v15 += v31;
      *a2 = v15;
    }

    v25 = v25 + 1.0;
  }

  while (v11++ != v16);
}

id sub_239EA71A0(void *a1, void *a2, unint64_t a3, unint64_t a4, uint64_t a5, char a6)
{
  v11 = a1;
  v12 = a2;
  v13 = objc_autoreleasePoolPush();
  if (!v12)
  {
    v12 = sub_239EA7EA0();
  }

  v14 = a4 >> a6;
  v15 = 6 * a3;
  if (a5 != 2)
  {
    v15 = 8 * a3;
  }

  v16 = v14 * v15;
  v17 = 2 * v14 * v15;
  v18 = malloc_type_malloc(v17, 0x1000040BDFB0063uLL);
  if (v14)
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = a3 + 1;
    v23 = 1;
    do
    {
      if (a3)
      {
        v24 = v22 * v23;
        v25 = 1;
        v26 = v19;
        do
        {
          v27 = v20 * v22 + v25;
          v28 = v22 * (v20 + 1) + v25;
          v29 = &v18[2 * v21];
          *v29 = v26;
          if (a5 == 2)
          {
            *(v29 + 1) = v28;
            *(v29 + 2) = v24;
            v30 = 8;
            v31 = 6;
            v32 = 10;
            *(v29 + 3) = v26;
          }

          else
          {
            *(v29 + 1) = v27;
            *(v29 + 2) = v27;
            *(v29 + 3) = v28;
            v30 = 12;
            v27 = v24;
            *(v29 + 4) = v28;
            v31 = 8;
            v32 = 14;
            v28 = v26;
            *(v29 + 5) = v24;
          }

          v33 = v25;
          *&v29[v30] = v27;
          v21 += v31;
          *&v29[v32] = v28;
          ++v24;
          ++v26;
          ++v25;
        }

        while (v33 < a3);
      }

      ++v20;
      ++v23;
      v19 += v22;
    }

    while (v14 > v20);
  }

  v34 = objc_alloc(MEMORY[0x277CBEA90]);
  v36 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v34, v35, v18, v17, 1);
  v38 = objc_msgSend_newBufferWithData_type_(v12, v37, v36, 2);
  if (objc_msgSend_conformsToProtocol_(v38, v39, &unk_284D24D98))
  {
    v40 = v38;
    v42 = objc_msgSend_stringByAppendingString_(v11, v41, @"-Indices");
    objc_msgSend_setName_(v40, v43, v42);
  }

  v44 = [MDLMaterial alloc];
  v45 = objc_opt_new();
  v47 = objc_msgSend_initWithName_scatteringFunction_(v44, v46, @"material", v45);

  v48 = [MDLSubmesh alloc];
  v50 = objc_msgSend_initWithIndexBuffer_indexCount_indexType_geometryType_material_(v48, v49, v38, v16, 16, a5, v47);

  objc_autoreleasePoolPop(v13);

  return v50;
}

id sub_239EA7494(void *a1, void *a2, unint64_t a3, unint64_t a4, uint64_t a5, char a6)
{
  v11 = a1;
  v12 = a2;
  v13 = objc_autoreleasePoolPush();
  if (!v12)
  {
    v12 = sub_239EA7EA0();
  }

  v14 = a4 >> a6;
  v15 = 6 * a3;
  if (a5 != 2)
  {
    v15 = 8 * a3;
  }

  v16 = v14 * v15;
  v17 = 4 * v14 * v15;
  v18 = malloc_type_malloc(v17, 0x100004052888210uLL);
  if (v14)
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = a3 + 1;
    v23 = a3 + 1;
    v24 = a3 + 1;
    do
    {
      if (a3)
      {
        v25 = 1;
        v26 = v19;
        v27 = v24;
        do
        {
          v28 = v20 * v22 + v25;
          v29 = v22 * (v20 + 1) + v25;
          v30 = &v18[4 * v21];
          *v30 = v26;
          if (a5 == 2)
          {
            *(v30 + 1) = v29;
            *(v30 + 2) = v27;
            v31 = 16;
            v32 = 6;
            v33 = 20;
            *(v30 + 3) = v26;
          }

          else
          {
            *(v30 + 1) = v28;
            *(v30 + 2) = v28;
            v31 = 24;
            v28 = v27;
            *(v30 + 3) = v29;
            *(v30 + 4) = v29;
            v32 = 8;
            v33 = 28;
            v29 = v26;
            *(v30 + 5) = v27;
          }

          v34 = v25;
          *&v30[v31] = v28;
          v21 += v32;
          *&v30[v33] = v29;
          ++v27;
          ++v26;
          ++v25;
        }

        while (v34 < a3);
      }

      ++v20;
      v24 += v23;
      v19 += v23;
    }

    while (v14 > v20);
  }

  v35 = objc_alloc(MEMORY[0x277CBEA90]);
  v37 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v35, v36, v18, v17, 1);
  v39 = objc_msgSend_newBufferWithData_type_(v12, v38, v37, 2);
  if (objc_msgSend_conformsToProtocol_(v39, v40, &unk_284D24D98))
  {
    v41 = v39;
    v43 = objc_msgSend_stringByAppendingString_(v11, v42, @"-Indices");
    objc_msgSend_setName_(v41, v44, v43);
  }

  v45 = [MDLMaterial alloc];
  v46 = objc_opt_new();
  v48 = objc_msgSend_initWithName_scatteringFunction_(v45, v47, @"material", v46);

  v49 = [MDLSubmesh alloc];
  v51 = objc_msgSend_initWithIndexBuffer_indexCount_indexType_geometryType_material_(v49, v50, v39, v16, 32, a5, v48);

  objc_autoreleasePoolPop(v13);

  return v51;
}

void *sub_239EA7E00(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      sub_239E95BB4(result, a2);
    }

    sub_239E797B4();
  }

  return result;
}

id sub_239EA7EA0()
{
  v0 = qword_27DF91220;
  if (!qword_27DF91220)
  {
    v1 = objc_opt_new();
    v2 = qword_27DF91220;
    qword_27DF91220 = v1;

    v0 = qword_27DF91220;
  }

  return v0;
}

void sub_239EA83F8(const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      sub_239E797B4();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      sub_239E95BB4(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
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

uint64_t sub_239EA84D8(uint64_t result, _BYTE *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 == v5 << 6)
  {
    if ((v4 + 1) < 0)
    {
      sub_239E797B4();
    }

    v6 = v5 << 7;
    if (v6 <= (v4 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v6 = (v4 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    if (v4 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
    }

    result = sub_239EA9DF8(result, v7);
    v4 = v3[1];
  }

  v3[1] = v4 + 1;
  v8 = *v3;
  v9 = v4 >> 6;
  v10 = 1 << v4;
  if (*a2 == 1)
  {
    v11 = *(v8 + 8 * v9) | v10;
  }

  else
  {
    v11 = *(v8 + 8 * v9) & ~v10;
  }

  *(v8 + 8 * v9) = v11;
  return result;
}

void sub_239EA8614(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MDLBufferViewAllocator;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_239EA8CF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

uint64_t sub_239EA9DF8(uint64_t result, unint64_t a2)
{
  if (a2 > *(result + 16) << 6)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = 0;
      v3 = 0uLL;
      sub_239EA9EB4(&v2, a2);
    }

    sub_239E797B4();
  }

  return result;
}

void sub_239EA9E9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_239EA9EB4(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v2 = ((a2 - 1) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    sub_239E95BB4(a1, v2);
  }

  sub_239E797B4();
}

void sub_239EA9EF8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1[1];
  v7 = v6 + a4;
  a1[1] = v6 + a4;
  if (!v6 || ((v7 - 1) ^ (v6 - 1)) >= 0x40)
  {
    if (v7 >= 0x41)
    {
      v8 = (v7 - 1) >> 6;
    }

    else
    {
      v8 = 0;
    }

    *(*a1 + 8 * v8) = 0;
  }

  v20 = v4;
  v21 = v5;
  v9 = *(a2 + 8);
  v10 = *a3;
  v11 = *(a3 + 8);
  v12 = *a1 + 8 * (v6 >> 6);
  v18 = *a2;
  v19 = v9;
  v16 = v10;
  v17 = v11;
  v14 = v12;
  v15 = v6 & 0x3F;
  sub_239EA9F9C(&v18, &v16, &v14, &v13);
}

void sub_239EA9F9C(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 2);
  v7 = *a2;
  v8 = *(a2 + 2);
  v19 = 0u;
  v20 = 0u;
  v17 = v5;
  v18 = v6;
  v15 = v7;
  v16 = v8;
  v9 = *(a3 + 2);
  v13 = *a3;
  v14 = v9;
  sub_239EAA034(&v17, &v15, &v13, &v19);
  v10 = DWORD2(v19);
  v11 = v20;
  v12 = DWORD2(v20);
  *a4 = v19;
  *(a4 + 8) = v10;
  *(a4 + 16) = v11;
  *(a4 + 24) = v12;
}

void sub_239EAA034(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a3 + 8);
  if (*a1 != *a2 || v5 != *(a2 + 8))
  {
    do
    {
      v8 = *a3;
      v9 = 1 << v6;
      if ((*v4 >> v5))
      {
        v10 = *v8 | v9;
      }

      else
      {
        v10 = *v8 & ~v9;
      }

      *v8 = v10;
      if (v5 == 63)
      {
        v11 = 0;
        *a1 = ++v4;
      }

      else
      {
        v11 = v5 + 1;
      }

      *(a1 + 8) = v11;
      v12 = *(a3 + 8);
      if (v12 == 63)
      {
        v6 = 0;
        *a3 += 8;
        v4 = *a1;
      }

      else
      {
        v6 = v12 + 1;
      }

      *(a3 + 8) = v6;
      v5 = *(a1 + 8);
    }

    while (v4 != *a2 || v5 != *(a2 + 8));
  }

  *a4 = v4;
  *(a4 + 8) = v5;
  *(a4 + 16) = *a3;
  *(a4 + 24) = v6;
}

void sub_239EAB4B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40)
{
  if (__p)
  {
    operator delete(__p);
  }

  v43 = *(v41 - 248);
  if (v43)
  {
    *(v41 - 240) = v43;
    operator delete(v43);
  }

  v44 = *(v41 - 224);
  if (v44)
  {
    *(v41 - 216) = v44;
    operator delete(v44);
  }

  v45 = *(v41 - 200);
  if (v45)
  {
    *(v41 - 192) = v45;
    operator delete(v45);
  }

  _Unwind_Resume(a1);
}

BOOL sub_239EAB7B4(float32x4_t a1, float32x4_t a2, float32x4_t a3)
{
  if (a1.f32[0] <= 0.0)
  {
    LODWORD(v3) = vsubq_f32(a3, a2).u32[0];
    v4 = -vaddq_f32(a3, a2).f32[0];
  }

  else
  {
    v3 = -vaddq_f32(a3, a2).f32[0];
    LODWORD(v4) = vsubq_f32(a3, a2).u32[0];
  }

  *&v5 = v3;
  if (a1.f32[1] <= 0.0)
  {
    *(&v5 + 1) = a3.f32[1] - a2.f32[1];
    v6 = -(a3.f32[1] + a2.f32[1]);
  }

  else
  {
    *(&v5 + 1) = -(a3.f32[1] + a2.f32[1]);
    v6 = a3.f32[1] - a2.f32[1];
  }

  v7.i64[0] = v5;
  if (a1.f32[2] <= 0.0)
  {
    v7.f32[2] = a3.f32[2] - a2.f32[2];
    v7.i32[3] = 0;
    v8 = -(a3.f32[2] + a2.f32[2]);
  }

  else
  {
    v7.f32[2] = -(a3.f32[2] + a2.f32[2]);
    v7.i32[3] = 0;
    v8 = a3.f32[2] - a2.f32[2];
  }

  v9 = vmulq_f32(v7, a1);
  return (vaddv_f32(*v9.f32) + v9.f32[2]) <= 0.0 && (((v6 * a1.f32[1]) + (v4 * a1.f32[0])) + (v8 * a1.f32[2])) >= 0.0;
}

BOOL sub_239EAB8B8(float32x4_t *a1, float32x4_t a2, float32x4_t a3)
{
  _Q2 = a3;
  v4 = vsubq_f32(a1[1], a2);
  v5 = vsubq_f32(a1[2], a2);
  v6 = vsubq_f32(a1[3], a2);
  _Q0 = vsubq_f32(v5, v4);
  v8 = fabsf(_Q0.f32[1]);
  _S21 = fabsf(_Q0.f32[2]);
  _S5 = v4.f32[1];
  v11 = v4.f32[2];
  __asm { FMLA            S7, S5, V0.S[2] }

  _S6 = v6.i32[1];
  __asm { FMLA            S16, S6, V0.S[2] }

  if (_S7 >= _S16)
  {
    v18 = _S16;
  }

  else
  {
    v18 = _S7;
  }

  if (_S7 < _S16)
  {
    _S7 = _S16;
  }

  v19 = -(vmuls_lane_f32(v8, _Q2, 2) + (_S21 * _Q2.f32[1]));
  __asm { FMLA            S24, S21, V2.S[1] }

  if (v18 > _S24 || _S7 < v19)
  {
    return 0;
  }

  v22 = fabsf(_Q0.f32[0]);
  v23 = -((_Q0.f32[2] * v4.f32[0]) - (_Q0.f32[0] * v4.f32[2]));
  v24 = -((_Q0.f32[2] * v6.f32[0]) - (_Q0.f32[0] * v6.f32[2]));
  if (v23 >= v24)
  {
    v25 = -((_Q0.f32[2] * v6.f32[0]) - (_Q0.f32[0] * v6.f32[2]));
  }

  else
  {
    v25 = -((_Q0.f32[2] * v4.f32[0]) - (_Q0.f32[0] * v4.f32[2]));
  }

  if (v23 >= v24)
  {
    v24 = -((_Q0.f32[2] * v4.f32[0]) - (_Q0.f32[0] * v4.f32[2]));
  }

  v26 = (v22 * _Q2.f32[2]) + (_S21 * _Q2.f32[0]);
  if (v25 > v26 || v24 < -v26)
  {
    return 0;
  }

  v28 = -(vmuls_lane_f32(_Q0.f32[0], *v5.f32, 1) - (_Q0.f32[1] * v5.f32[0]));
  v29 = -((_Q0.f32[0] * v6.f32[1]) - (_Q0.f32[1] * v6.f32[0]));
  if (v29 >= v28)
  {
    v30 = v28;
  }

  else
  {
    v30 = -((_Q0.f32[0] * v6.f32[1]) - (_Q0.f32[1] * v6.f32[0]));
  }

  if (v29 < v28)
  {
    v29 = v28;
  }

  v31 = (v22 * _Q2.f32[1]) + (v8 * _Q2.f32[0]);
  if (v30 > v31 || v29 < -v31)
  {
    return 0;
  }

  _Q19 = vsubq_f32(v6, v5);
  v34 = fabsf(_Q19.f32[1]);
  v35 = fabsf(_Q19.f32[2]);
  __asm
  {
    FMLA            S23, S5, V19.S[2]
    FMLA            S25, S6, V19.S[2]
  }

  if (_S23 >= _S25)
  {
    v38 = _S25;
  }

  else
  {
    v38 = _S23;
  }

  if (_S23 < _S25)
  {
    _S23 = _S25;
  }

  v39 = (v34 * _Q2.f32[2]) + (v35 * _Q2.f32[1]);
  if (v38 > v39 || _S23 < -v39)
  {
    return 0;
  }

  v41 = fabsf(_Q19.f32[0]);
  v42 = -((_Q19.f32[2] * v4.f32[0]) - (_Q19.f32[0] * v4.f32[2]));
  v43 = -((_Q19.f32[2] * v6.f32[0]) - (_Q19.f32[0] * v6.f32[2]));
  if (v42 >= v43)
  {
    v44 = -((_Q19.f32[2] * v6.f32[0]) - (_Q19.f32[0] * v6.f32[2]));
  }

  else
  {
    v44 = -((_Q19.f32[2] * v4.f32[0]) - (_Q19.f32[0] * v4.f32[2]));
  }

  if (v42 >= v43)
  {
    v43 = -((_Q19.f32[2] * v4.f32[0]) - (_Q19.f32[0] * v4.f32[2]));
  }

  v45 = (v41 * _Q2.f32[2]) + (v35 * _Q2.f32[0]);
  if (v44 > v45 || v43 < -v45)
  {
    return 0;
  }

  _S20 = v5.i32[1];
  v48 = -((_Q19.f32[0] * v4.f32[1]) - (_Q19.f32[1] * v4.f32[0]));
  v49 = -((_Q19.f32[0] * v5.f32[1]) - (_Q19.f32[1] * v5.f32[0]));
  if (v48 >= v49)
  {
    v50 = -((_Q19.f32[0] * v5.f32[1]) - (_Q19.f32[1] * v5.f32[0]));
  }

  else
  {
    v50 = -((_Q19.f32[0] * v4.f32[1]) - (_Q19.f32[1] * v4.f32[0]));
  }

  if (v48 >= v49)
  {
    v49 = -((_Q19.f32[0] * v4.f32[1]) - (_Q19.f32[1] * v4.f32[0]));
  }

  v51 = (v41 * _Q2.f32[1]) + (v34 * _Q2.f32[0]);
  if (v50 > v51 || v49 < -v51)
  {
    return 0;
  }

  _Q23 = vsubq_f32(v4, v6);
  v55 = fabsf(_Q23.f32[1]);
  v56 = fabsf(_Q23.f32[2]);
  __asm
  {
    FMLA            S27, S5, V23.S[2]
    FMLA            S28, S20, V23.S[2]
  }

  if (_S27 >= _S28)
  {
    v59 = _S28;
  }

  else
  {
    v59 = _S27;
  }

  if (_S27 < _S28)
  {
    _S27 = _S28;
  }

  if (v59 > ((v55 * _Q2.f32[2]) + (v56 * _Q2.f32[1])) || _S27 < -((v55 * _Q2.f32[2]) + (v56 * _Q2.f32[1])))
  {
    return 0;
  }

  v60 = fabsf(_Q23.f32[0]);
  v61 = -((_Q23.f32[2] * v4.f32[0]) - (_Q23.f32[0] * v4.f32[2]));
  v62 = -((_Q23.f32[2] * v5.f32[0]) - (_Q23.f32[0] * v5.f32[2]));
  if (v61 >= v62)
  {
    v63 = -((_Q23.f32[2] * v5.f32[0]) - (_Q23.f32[0] * v5.f32[2]));
  }

  else
  {
    v63 = -((_Q23.f32[2] * v4.f32[0]) - (_Q23.f32[0] * v4.f32[2]));
  }

  if (v61 >= v62)
  {
    v62 = -((_Q23.f32[2] * v4.f32[0]) - (_Q23.f32[0] * v4.f32[2]));
  }

  if (v63 > ((v60 * _Q2.f32[2]) + (v56 * _Q2.f32[0])) || v62 < -((v60 * _Q2.f32[2]) + (v56 * _Q2.f32[0])))
  {
    return 0;
  }

  v64 = -((_Q23.f32[0] * v5.f32[1]) - (_Q23.f32[1] * v5.f32[0]));
  v65 = -((_Q23.f32[0] * v6.f32[1]) - (_Q23.f32[1] * v6.f32[0]));
  if (v65 >= v64)
  {
    v66 = v64;
  }

  else
  {
    v66 = v65;
  }

  if (v65 < v64)
  {
    v65 = v64;
  }

  if (v66 > ((v60 * _Q2.f32[1]) + (v55 * _Q2.f32[0])) || v65 < -((v60 * _Q2.f32[1]) + (v55 * _Q2.f32[0])))
  {
    return 0;
  }

  if (vmovn_s32(vcgtq_f32(v4, v5)).u8[0])
  {
    v67 = v5.f32[0];
  }

  else
  {
    v67 = v4.f32[0];
  }

  if ((vmovn_s32(vcgtq_f32(v5, v4)).u8[0] & 1) == 0)
  {
    v5.f32[0] = v4.f32[0];
  }

  if (v6.f32[0] < v67)
  {
    v67 = v6.f32[0];
  }

  if (v6.f32[0] <= v5.f32[0])
  {
    v6.f32[0] = v5.f32[0];
  }

  if (v67 > _Q2.f32[0] || v6.f32[0] < -_Q2.f32[0])
  {
    return 0;
  }

  if (v5.f32[1] >= v4.f32[1])
  {
    v6.f32[0] = v4.f32[1];
  }

  else
  {
    v6.f32[0] = v5.f32[1];
  }

  if (v5.f32[1] > v4.f32[1])
  {
    _S5 = v5.f32[1];
  }

  if (v6.f32[1] < v6.f32[0])
  {
    v6.f32[0] = v6.f32[1];
  }

  if (v6.f32[1] > _S5)
  {
    _S5 = v6.f32[1];
  }

  if (v6.f32[0] > _Q2.f32[1] || _S5 < -_Q2.f32[1])
  {
    return 0;
  }

  if (v5.f32[2] >= v4.f32[2])
  {
    v68 = v4.f32[2];
  }

  else
  {
    v68 = v5.f32[2];
  }

  if (v5.f32[2] > v4.f32[2])
  {
    v11 = v5.f32[2];
  }

  if (v6.f32[2] < v68)
  {
    v68 = v6.f32[2];
  }

  if (v6.f32[2] > v11)
  {
    v11 = v6.f32[2];
  }

  if (v68 > _Q2.f32[2] || v11 < -_Q2.f32[2])
  {
    return 0;
  }

  v69 = vmlaq_f32(vnegq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(_Q19, _Q19), _Q19, 0xCuLL), _Q0)), _Q19, vextq_s8(vuzp1q_s32(_Q0, _Q0), _Q0, 0xCuLL));
  return sub_239EAB7B4(vextq_s8(vuzp1q_s32(v69, v69), v69, 0xCuLL), v4, _Q2);
}

void sub_239EAC1C8(void *a1@<X0>, uint64_t a2@<X1>, float32x4_t *a3@<X8>)
{
  v54 = *MEMORY[0x277D85DE8];
  v5 = a1;
  a3[1].i64[0] = 0;
  a3[1].i64[1] = 0;
  __asm { FMOV            V0.4S, #-1.0 }

  *a3 = _Q0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v5;
  }

  else
  {
    v11 = 0;
  }

  v39 = v11;
  if (v39)
  {
    objc_msgSend_boundingBox(v39, v12, v13);
    v49 = v14;
    v50 = v15;
    sub_239EB1E70(a3, &v49, a2);
  }

  v16 = objc_msgSend_children(v5, v12, v13);
  if (v16)
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v38 = v16;
    v17 = v16;
    v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v44, v53, 16);
    if (v21)
    {
      v22 = *v45;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v45 != v22)
          {
            objc_enumerationMutation(v17);
          }

          v24 = *(*(&v44 + 1) + 8 * i);
          v25 = objc_msgSend_transform(v24, v19, v20);
          v28 = v25;
          if (v25)
          {
            v42 = 0u;
            v43 = 0u;
            v40 = 0u;
            v41 = 0u;
            objc_msgSend_matrix(v25, v26, v27);
            v33 = 0;
            v34 = *(a2 + 16);
            v35 = *(a2 + 32);
            v36 = *(a2 + 48);
            v48[0] = *a2;
            v48[1] = v34;
            v48[2] = v35;
            v48[3] = v36;
            v49 = 0u;
            v50 = 0u;
            v51 = 0u;
            v52 = 0u;
            do
            {
              *(&v49 + v33 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v29, COERCE_FLOAT(v48[v33])), v30, *&v48[v33], 1), v31, v48[v33], 2), v32, v48[v33], 3);
              ++v33;
            }

            while (v33 != 4);
            v40 = v49;
            v41 = v50;
            v42 = v51;
            v43 = v52;
            sub_239EAC1C8(&v49, v24, &v40);
            sub_239EB1DF0(a3, &v49);
          }

          else
          {
            sub_239EAC1C8(&v49, v24, a2);
            sub_239EB1DF0(a3, &v49);
          }
        }

        v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v19, &v44, v53, 16);
      }

      while (v21);
    }

    v16 = v38;
  }

  v37 = *MEMORY[0x277D85DE8];
}

void sub_239EAC7A0(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (objc_opt_isKindOfClass())
  {
    objc_msgSend_addObject_(v6, v7, v5);
  }

  v9 = objc_msgSend_children(v5, v7, v8);
  v12 = v9;
  if (v9)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v13 = v9;
    v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v21, v25, 16);
    if (v15)
    {
      v16 = *v22;
      do
      {
        v17 = 0;
        do
        {
          if (*v22 != v16)
          {
            objc_enumerationMutation(v13);
          }

          sub_239EAC7A0(a1, *(*(&v21 + 1) + 8 * v17++), v6);
        }

        while (v15 != v17);
        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v18, &v21, v25, 16);
      }

      while (v15);
    }
  }

  v19 = objc_msgSend_instance(v5, v10, v11, v21);
  if (v19)
  {
    sub_239EAC7A0(a1, v19, v6);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void sub_239EACD60(uint64_t a1, void *a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = objc_msgSend_submeshes(a2, a2, a3, 0);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v14, v18, 16);
  if (v8)
  {
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v4);
        }

        v11 = objc_msgSend_material(*(*(&v14 + 1) + 8 * v10), v6, v7);
        objc_msgSend_resolveTexturesWithResolver_(v11, v12, *(*(a1 + 32) + 112));

        ++v10;
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v6, &v14, v18, 16);
    }

    while (v8);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_239EACF88(uint64_t a1, void *a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = objc_msgSend_submeshes(a2, a2, a3, 0);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v14, v18, 16);
  if (v8)
  {
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v4);
        }

        v11 = objc_msgSend_material(*(*(&v14 + 1) + 8 * v10), v6, v7);
        objc_msgSend_loadTexturesUsingResolver_cache_(v11, v12, *(*(a1 + 32) + 112), *(a1 + 40));

        ++v10;
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v6, &v14, v18, 16);
    }

    while (v8);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_239EAD7D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, objc_super a10)
{
  a10.super_class = MDLAsset;
  [(_Unwind_Exception *)&a10 dealloc];
  _Unwind_Resume(a1);
}

id sub_239EADFF4(void *a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = MEMORY[0x277CCA9B8];
  v9 = @"MDLErrorKey";
  v10[0] = v1;
  v4 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v3, v10, &v9, 1);
  v6 = objc_msgSend_errorWithDomain_code_userInfo_(v2, v5, @"MDLErrorDomain", 0, v4);

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

uint64_t sub_239EAE0E8(void *a1, const char *a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = objc_msgSend_layouts(a1, a2, a3, 0);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v12, v16, 16);
  if (v7)
  {
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v3);
        }

        if (objc_msgSend_stride(*(*(&v12 + 1) + 8 * i), v5, v6))
        {
          v7 = 1;
          goto LABEL_11;
        }
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v5, &v12, v16, 16);
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

void sub_239EAE5E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30)
{
  sub_239EAE6A8(&a28);

  _Unwind_Resume(a1);
}

uint64_t sub_239EAE6A8(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  return a1;
}

void sub_239EAF408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_239EE20A4(&a13);
  _Block_object_dispose(&a64, 8);

  _Block_object_dispose(&a68, 8);
  if (*(v72 - 233) < 0)
  {
    operator delete(*(v72 - 256));
  }

  if (*(v72 - 209) < 0)
  {
    operator delete(*(v72 - 232));
  }

  sub_239EAE6A8(v72 - 208);
  _Unwind_Resume(a1);
}

uint64_t sub_239EAF5EC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_239EAF67C(uint64_t a1, void *a2)
{
  v8 = a2;
  NSLog(&cfstr_AssetloaderLoa.isa, v8);
  v5 = objc_msgSend_localizedDescription(v8, v3, v4);
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  *(*(*(a1 + 40) + 8) + 24) = 1;
}

void sub_239EAF710(uint64_t a1, void *a2)
{
  v6 = a2;
  if (objc_msgSend_length(v6, v4, v5))
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

void sub_239EAF8EC(void *a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, std::string *a4@<X8>)
{
  memset(&__str, 0, sizeof(__str));
  v5 = objc_msgSend_path(a1, a2, a3);
  v6 = v5;
  v8 = objc_msgSend_cStringUsingEncoding_(v6, v7, 4);
  sub_239E552A0(&__str, v8);

  v9 = std::string::rfind(&__str, 46, 0xFFFFFFFFFFFFFFFFLL);
  a4->__r_.__value_.__l.__size_ = 0;
  a4->__r_.__value_.__r.__words[2] = 0;
  a4->__r_.__value_.__r.__words[0] = 0;
  if (v9 != -1)
  {
    std::string::basic_string(&v17, &__str, v9 + 1, 0xFFFFFFFFFFFFFFFFLL, &v19);
    *a4 = v17;
    v10 = SHIBYTE(a4->__r_.__value_.__r.__words[2]);
    size = a4->__r_.__value_.__l.__size_;
    if ((v10 & 0x80000000) == 0)
    {
      size = SHIBYTE(a4->__r_.__value_.__r.__words[2]);
    }

    if (size)
    {
      v12 = 0;
      v13 = v10 >> 63;
      do
      {
        if (v13)
        {
          v14 = a4->__r_.__value_.__r.__words[0];
        }

        else
        {
          v14 = a4;
        }

        v14->__r_.__value_.__s.__data_[v12] = __toupper(v14->__r_.__value_.__s.__data_[v12]);
        ++v12;
        v15 = SHIBYTE(a4->__r_.__value_.__r.__words[2]);
        v13 = v15 >> 63;
        v16 = a4->__r_.__value_.__l.__size_;
        if ((v15 & 0x80000000) == 0)
        {
          v16 = SHIBYTE(a4->__r_.__value_.__r.__words[2]);
        }
      }

      while (v12 < v16);
    }
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_239EAFA04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_239EAFB30(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_239EAFC7C(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_239EB0184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);

  sub_239E8ED40(va);
  sub_239EAE6A8(va1);
  if (*(v12 - 137) < 0)
  {
    operator delete(*(v12 - 160));
  }

  if (*(v12 - 97) < 0)
  {
    operator delete(*(v12 - 120));
  }

  _Unwind_Resume(a1);
}

void sub_239EB0680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_239EE20A4(va);

  if (*(v5 - 49) < 0)
  {
    operator delete(*(v5 - 72));
  }

  _Unwind_Resume(a1);
}

void sub_239EB1B54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37)
{
  for (i = 56; i != -8; i -= 8)
  {
  }

  _Unwind_Resume(a1);
}

float32x4_t *sub_239EB1DF0(float32x4_t *result, float32x4_t *a2)
{
  v2 = a2[1];
  v3 = vcgtq_f32(v2, *a2);
  v4 = vtst_s32(*v3.i8, *v3.i8);
  if ((v4.i8[0] & 1) == 0 || (v4.i8[4] & 1) == 0 || !v3.i32[2])
  {
    v5 = *result;
    v6 = result[1];
    v7 = vcgtq_f32(v6, *result);
    v8 = vtst_s32(*v7.i8, *v7.i8);
    if ((v8.i8[0] & 1) != 0 && (v8.i8[4] & 1) != 0 && v7.i32[2])
    {
      result[1] = v2;
      v9 = *a2;
    }

    else
    {
      v6.i32[3] = 0;
      v2.i32[3] = 0;
      result[1] = vminnmq_f32(v6, v2);
      v10 = *a2;
      v5.i32[3] = 0;
      v10.i32[3] = 0;
      v9 = vmaxnmq_f32(v5, v10);
    }

    *result = v9;
  }

  return result;
}

float32x4_t *sub_239EB1E70(float32x4_t *a1, __int128 *a2, float32x4_t *a3)
{
  v3 = 0;
  v26 = *MEMORY[0x277D85DE8];
  v4 = a2[1];
  HIDWORD(v4) = 1.0;
  v5 = *a2;
  HIDWORD(v5) = 1.0;
  v6 = v5;
  DWORD2(v6) = *(a2 + 1);
  v7 = v4;
  DWORD2(v4) = DWORD2(v6);
  v8 = a2[1];
  DWORD1(v8) = HIDWORD(*a2);
  HIDWORD(v8) = 1.0;
  v9 = v8;
  DWORD2(v8) = DWORD2(v6);
  v10 = *a2;
  DWORD1(v10) = HIDWORD(*(a2 + 2));
  HIDWORD(v10) = 1.0;
  v11 = v10;
  DWORD2(v10) = DWORD2(v6);
  DWORD2(v7) = *(a2 + 3);
  v25[0] = v7;
  v25[1] = v4;
  DWORD2(v9) = DWORD2(v7);
  DWORD2(v11) = DWORD2(v7);
  v25[2] = v9;
  v25[3] = v8;
  v25[4] = v11;
  v25[5] = v10;
  DWORD2(v5) = DWORD2(v7);
  v25[6] = v5;
  v25[7] = v6;
  v12 = *a3;
  v13 = a3[1];
  v14 = a3[2];
  v15 = a3[3];
  do
  {
    v25[v3] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v12, COERCE_FLOAT(v25[v3])), v13, *&v25[v3], 1), v14, v25[v3], 2), v15, v25[v3], 3);
    ++v3;
  }

  while (v3 != 8);
  v16 = 0;
  v17 = xmmword_239F9C0E0;
  v18 = xmmword_239F9C0F0;
  do
  {
    v19 = v25[v16];
    v20 = vbslq_s8(vcgtq_f32(v18, v19), v19, v18);
    v18.i64[0] = v20.i64[0];
    v18.i32[2] = v20.i32[2];
    v21 = vbslq_s8(vcgtq_f32(v19, v17), v19, v17);
    v17.i64[0] = v21.i64[0];
    v17.i32[2] = v21.i32[2];
    ++v16;
  }

  while (v16 != 8);
  v24[0] = v17;
  v24[1] = v18;
  result = sub_239EB1DF0(a1, v24);
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_239EB1FB8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  NumElements = pxrInternal__aapl__pxrReserved__::VtValue::_GetNumElements(*(a1 + 8));
  v9 = *(*(a1 + 8) + 88);
  v10 = NumElements / v9;
  sub_239EB2474(a4, NumElements / v9);
  v11 = *(a1 + 152);
  v12 = *a4;
  if (v11)
  {
    v13 = *(a1 + 184);
    v14 = 1;
    do
    {
      v15 = *v13++;
      ++*(v12 + 4 * v15);
    }

    while (v11 > v14++);
  }

  v87 = 0;
  v88 = 0;
  v89 = 0;
  sub_239EB2474(&v87, (a4[1] - v12) >> 2);
  v17 = v87;
  *v87 = 0;
  if (v10 >= 2)
  {
    v18 = 0;
    v19 = *a4;
    for (i = 1; i < v10; i = (v18++ + 2))
    {
      v17[i] = *(v19 + 4 * v18) + v17[v18];
    }
  }

  sub_239EB24A4(a3, *(a1 + 152));
  sub_239EB24E8(a2, *(a1 + 152), 0);
  v21 = *(a1 + 112);
  if (v21)
  {
    v22 = 0;
    v23 = 0;
    v24 = *(a1 + 144);
    v25 = *(a1 + 184);
    v26 = v87;
    v27 = *a3;
    do
    {
      v28 = *(v24 + 4 * v22);
      if (v28)
      {
        v29 = 0;
        v30 = v28 - 1;
        do
        {
          v31 = v23 + v29;
          v32 = (v30 + v29) % v28 + v23;
          if (v30 == v29)
          {
            v33 = 0;
          }

          else
          {
            v33 = v29 + 1;
          }

          v34 = v33 + v23;
          v35 = *(v25 + 4 * v31);
          v36 = *(v25 + 4 * v34);
          v37 = (v27 + 28 * v26[v35]);
          *v37 = *(v25 + 4 * v32);
          v37[1] = v35;
          v37[2] = v36;
          v37[3] = v22;
          v37[4] = v32;
          v37[5] = v31;
          v37[6] = v34;
          ++v26[v35];
          ++v29;
        }

        while (v28 != v29);
      }

      v23 += v28;
      ++v22;
    }

    while (v21 > v22);
  }

  if (NumElements < v9)
  {
    goto LABEL_63;
  }

  v38 = 0;
  v39 = 0;
  v40 = 0;
  do
  {
    v41 = *(*a4 + 4 * v38);
    v42 = *a3 + 28 * v40;
    v85 = 0;
    v86 = 0;
    v84 = 0;
    sub_239EB53D8(&v84, v42, v42 + 28 * v41, v41);
    v81 = 0;
    v82 = 0;
    v83 = 0;
    sub_239EB2654(&v81, v41);
    if (!v41)
    {
      goto LABEL_43;
    }

    v43 = 0;
    v44 = v84;
    v45 = v84 + 8;
    do
    {
      v46 = 0;
      v47 = &v44[7 * v43];
      v48 = *v47;
      v49 = v81 + 8 * v43;
      v50 = v45;
      while (1)
      {
        v51 = *v50;
        v50 += 7;
        if (v51 == v48)
        {
          break;
        }

LABEL_24:
        if (v41 == ++v46)
        {
          goto LABEL_27;
        }
      }

      if (*v49 == -1)
      {
        *v49 = v46;
        goto LABEL_24;
      }

      *v49 = -2;
LABEL_27:
      v52 = 0;
      v53 = v47[2];
      v54 = v81 + 8 * v43;
      v55 = v44;
      while (2)
      {
        v56 = *v55;
        v55 += 7;
        if (v56 != v53)
        {
LABEL_31:
          if (v41 == ++v52)
          {
            goto LABEL_34;
          }

          continue;
        }

        break;
      }

      if (*(v54 + 1) == -1)
      {
        *(v54 + 1) = v52;
        goto LABEL_31;
      }

      *(v54 + 1) = -2;
LABEL_34:
      ++v43;
    }

    while (v43 != v41);
    v57 = v81;
    v58 = v81 + 4;
    v59 = v41;
    do
    {
      v60 = *(v58 - 1);
      if ((v60 & 0x80000000) == 0)
      {
        v61 = v57[2 * v60 + 1];
        if (v61 < 0)
        {
          *(v58 - 1) = v61;
        }
      }

      v62 = *v58;
      if ((v62 & 0x80000000) == 0)
      {
        v63 = v57[2 * v62];
        if (v63 < 0)
        {
          *v58 = v63;
        }
      }

      v58 += 2;
      --v59;
    }

    while (v59);
LABEL_43:
    memset(__p, 0, sizeof(__p));
    sub_239EB24E8(__p, v41, 0);
    v64 = __p[0];
    if (v41)
    {
      v65 = 0;
      v66 = 0;
      v67 = v81;
      v68 = v84;
      do
      {
        if (((*&v64[(v65 >> 3) & 0x1FFFFFF8] >> v65) & 1) == 0)
        {
          v69 = v67[2 * v65];
          for (j = v65; (v69 & 0x80000000) == 0; v69 = v67[2 * v69])
          {
            j = v69;
            if (v65 == v69)
            {
              break;
            }
          }

          v71 = j;
          while (1)
          {
            *&v64[(v71 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v71;
            v72 = v67[2 * v71 + 1];
            v73 = &v68[28 * v71];
            v74 = v40 + v66;
            v75 = (*a3 + 28 * v74);
            v76 = *v73;
            *(v75 + 12) = *(v73 + 12);
            *v75 = v76;
            v77 = *a2;
            v78 = v74 >> 6;
            v79 = 1 << (v40 + v66);
            if ((v72 & 0x80000000) != 0)
            {
              break;
            }

            *(v77 + 8 * v78) |= v79;
            ++v66;
            v71 = v72;
            if (j == v72)
            {
              goto LABEL_54;
            }
          }

          *(v77 + 8 * v78) &= ~v79;
          ++v66;
        }

LABEL_54:
        ++v65;
      }

      while (v65 != v41);
      v40 += v41;
LABEL_57:
      operator delete(v64);
    }

    else if (__p[0])
    {
      goto LABEL_57;
    }

    if (v81)
    {
      v82 = v81;
      operator delete(v81);
    }

    if (v84)
    {
      v85 = v84;
      operator delete(v84);
    }

    v38 = ++v39;
  }

  while (v10 > v39);
LABEL_63:
  if (v87)
  {
    v88 = v87;
    operator delete(v87);
  }
}

void sub_239EB2418(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_239EB2474(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 2;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 4 * a2;
    }
  }

  else
  {
    sub_239EB4E08(a1, a2 - v2);
  }
}

void sub_239EB24A4(void *a1, unint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 2);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_239EB4F38(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 28 * a2;
  }
}

void sub_239EB24E8(uint64_t a1, unint64_t a2, int a3)
{
  v4 = *(a1 + 8);
  v5 = a2 - v4;
  if (a2 <= v4)
  {
    *(a1 + 8) = a2;
    return;
  }

  v7 = *(a1 + 16);
  v8 = v7 << 6;
  if (v7 << 6 < v5 || v4 > (v7 << 6) - v5)
  {
    v20 = 0;
    v21 = 0uLL;
    if ((a2 & 0x8000000000000000) != 0)
    {
      sub_239E797B4();
    }

    v10 = v7 << 7;
    if (v10 <= ((a2 + 63) & 0xFFFFFFFFFFFFFFC0))
    {
      v10 = (a2 + 63) & 0xFFFFFFFFFFFFFFC0;
    }

    if (v8 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    sub_239EA9DF8(&v20, v11);
    v12 = *a1;
    v13 = *(a1 + 8);
    *&v21 = v13 + v5;
    v22 = v20;
    v23 = 0;
    sub_239EB5140(v12, 0, &v12[v13 >> 6], v13 & 0x3F, &v22, &v18);
    v14 = v18;
    LODWORD(v15) = v19;
    v16 = *a1;
    *a1 = v20;
    v20 = v16;
    v17 = *(a1 + 8);
    *(a1 + 8) = v21;
    v21 = v17;
    if (v16)
    {
      operator delete(v16);
    }

    if (!a3)
    {
      goto LABEL_19;
    }

LABEL_16:
    v20 = v14;
    LODWORD(v21) = v15;
    sub_239EB5274(&v20, v5);
    return;
  }

  v14 = *a1 + 8 * (v4 >> 6);
  v15 = *(a1 + 8) & 0x3FLL;
  *(a1 + 8) = a2;
  if (a3)
  {
    goto LABEL_16;
  }

LABEL_19:
  v20 = v14;
  LODWORD(v21) = v15;
  sub_239EB5328(&v20, v5);
}

void sub_239EB2638(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_239EB2654(void *a1, unint64_t a2)
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
    sub_239EB54A4(a1, a2 - v2);
  }
}

void sub_239EB2684(uint64_t a1, void *a2, void *a3, uint64_t *a4, int a5, float a6)
{
  v9 = *a4;
  v8 = a4[1];
  v10 = *(a1 + 8);
  v102 = 0;
  memset(v101, 0, sizeof(v101));
  sub_239E5A31C(v101, *(a1 + 152));
  v100 = 0;
  memset(v99, 0, sizeof(v99));
  v89 = sub_239E6AD14(v10);
  v11 = 1.0;
  if (a5)
  {
    v11 = -1.0;
  }

  v87 = v11;
  if (!atomic_load(MEMORY[0x277D86578]))
  {
    sub_239EB5678(MEMORY[0x277D86578]);
  }

  if (!pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    v78 = *a1 & 0xFFFFFFFFFFFFFFF8;
    if (v78)
    {
      v79 = (v78 + 16);
      if (*(v78 + 39) < 0)
      {
        v79 = *v79;
      }
    }

    else
    {
      v79 = "";
    }

    NSLog(&cfstr_MeshSDoesConta_0.isa, v79);
    goto LABEL_50;
  }

  v13 = v8 - v9;
  if ((v13 & 0x3FFFFFFFCLL) == 0)
  {
LABEL_44:
    sub_239EB2D5C(a1, v99, v101);
    goto LABEL_50;
  }

  v14 = 3.1416;
  if (a6 <= 3.1416)
  {
    v14 = a6;
  }

  if (v14 < 0.0)
  {
    v14 = 0.0;
  }

  v17 = cosf(v14);
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v83 = (v13 >> 2);
  while (1)
  {
    v21 = *(*a4 + 4 * v18);
    v85 = v18;
    if (2 * v21)
    {
      break;
    }

LABEL_43:
    v20 += v21;
    v18 = v85 + 1;
    if (v85 + 1 == v83)
    {
      goto LABEL_44;
    }
  }

  v22 = 0;
  v23 = *(v89 + 32) + 12 * v18;
  v15.i64[0] = *v23;
  v15.i32[2] = *(v23 + 8);
  v96 = v15;
  v24 = 0uLL;
  v15.i64[0] = 0;
  v25 = 1;
  v88 = v20;
  while (1)
  {
    v26 = v25 - 1;
    if (v25 - 1 - v22 >= v21)
    {
      __asm { FMOV            V1.4S, #1.0 }

      v68 = vmulq_f32(v24, vdivq_f32(_Q1, vdupq_lane_s32(*v15.f32, 0)));
      v70 = vmulq_f32(v68, v68);
      v69 = vaddv_f32(*v70.f32) + v70.f32[2];
      v70.i64[0] = 0;
      v70.i32[2] = 0;
      if (v69 > COERCE_FLOAT(512))
      {
        v71 = v69;
        v72 = vrsqrte_f32(LODWORD(v69));
        v73 = vmul_f32(vrsqrts_f32(LODWORD(v71), vmul_f32(v72, v72)), v72);
        v70 = vmulq_n_f32(v68, vmul_f32(v73, vrsqrts_f32(LODWORD(v71), vmul_f32(v73, v73))).f32[0]);
      }

      v97 = v70.i64[0];
      v98 = v70.i32[2];
      sub_239EB56D0(v99, &v97);
      v19 = (v19 + 1);
      goto LABEL_43;
    }

    v90 = v22;
    v93 = v15;
    v94 = v24;
    v27 = v26 % v21 + v20;
    v28 = (*a3 + 28 * v27);
    v29 = *(v89 + 32);
    v30 = v29 + 12 * *v28;
    v15.i64[0] = *v30;
    v15.i32[2] = *(v30 + 8);
    v31 = v29 + 12 * v28[2];
    v16.i64[0] = *v31;
    v16.i32[2] = *(v31 + 8);
    v32 = vsubq_f32(v15, v96);
    v33 = vsubq_f32(v16, v96);
    v34 = vmlaq_f32(vnegq_f32(vmulq_f32(v33, vextq_s8(vuzp1q_s32(v32, v32), v32, 0xCuLL))), v32, vextq_s8(vuzp1q_s32(v33, v33), v33, 0xCuLL));
    v35 = vmulq_f32(v34, v34);
    v35.f32[0] = (v35.f32[2] + v35.f32[0]) + v35.f32[1];
    v36 = 0uLL;
    if (v35.f32[0] > COERCE_FLOAT(512))
    {
      v34 = vextq_s8(vuzp1q_s32(v34, v34), v34, 0xCuLL);
      v37 = v35.i32[0];
      v38 = vrsqrte_f32(v35.u32[0]);
      v39 = vmul_f32(vrsqrts_f32(v37, vmul_f32(v38, v38)), v38);
      v36 = vmulq_n_f32(v34, vmul_f32(v39, vrsqrts_f32(v37, vmul_f32(v39, v39))).f32[0]);
    }

    v40 = vmulq_n_f32(v36, v87);
    v41 = (*a3 + 28 * (v25 % v21 + v20));
    v42 = v29 + 12 * *v41;
    v34.i64[0] = *v42;
    v34.i32[2] = *(v42 + 8);
    v43 = v29 + 12 * v41[2];
    v35.i64[0] = *v43;
    v35.i32[2] = *(v43 + 8);
    v44 = vsubq_f32(v34, v96);
    v45 = vsubq_f32(v35, v96);
    v46 = vmlaq_f32(vnegq_f32(vmulq_f32(v45, vextq_s8(vuzp1q_s32(v44, v44), v44, 0xCuLL))), v44, vextq_s8(vuzp1q_s32(v45, v45), v45, 0xCuLL));
    v47 = vmulq_n_f32(vextq_s8(vuzp1q_s32(v46, v46), v46, 0xCuLL), v87);
    v48 = vmulq_f32(v47, v47);
    v48.f32[0] = sqrtf(vaddv_f32(*v48.f32) + v48.f32[2]);
    v92 = v40;
    if (v48.f32[0] >= 0.0001)
    {
      __asm { FMOV            V2.4S, #1.0 }

      v55 = vmulq_f32(vmulq_f32(v47, v40), vdivq_f32(_Q2, vdupq_lane_s32(*v48.f32, 0)));
      v49 = (vaddv_f32(*v55.f32) + v55.f32[2]) < v17;
    }

    else
    {
      v49 = 1;
    }

    v56 = v19;
    v57 = v19;
    if (v26 >= v21)
    {
      v58 = v28[5];
      sub_239E56C3C(v101);
      v57 = *(v102 + 4 * v58);
    }

    v59 = v28[5];
    sub_239E56C3C(v101);
    v16.i32[3] = v92.i32[3];
    v15 = v93;
    v24 = vaddq_f32(v92, v94);
    v15.f32[0] = v93.f32[0] + 1.0;
    *(v102 + 4 * v59) = v56;
    v19 = v56;
    if (((*(*a2 + ((v27 >> 3) & 0x1FFFFFF8)) >> v27) & 1) == 0 || v49 || *v41 != v28[2])
    {
      break;
    }

    v20 = v88;
    v22 = v90;
LABEL_32:
    if (v22 < v21 && v25++ < 2 * v21)
    {
      continue;
    }

    goto LABEL_43;
  }

  __asm { FMOV            V1.4S, #1.0 }

  v61 = vmulq_f32(v24, vdivq_f32(_Q1, vdupq_lane_s32(*v15.f32, 0)));
  v62 = vmulq_f32(v61, v61);
  v63 = vaddv_f32(*v62.f32) + v62.f32[2];
  v95 = 0u;
  if (v63 > COERCE_FLOAT(512))
  {
    v64 = v63;
    v65 = vrsqrte_f32(LODWORD(v63));
    v66 = vmul_f32(vrsqrts_f32(LODWORD(v64), vmul_f32(v65, v65)), v65);
    v95 = vmulq_n_f32(v61, vmul_f32(v66, vrsqrts_f32(LODWORD(v64), vmul_f32(v66, v66))).f32[0]);
  }

  if (v26 < v21)
  {
    v97 = v95.i64[0];
    v98 = v95.i32[2];
    sub_239EB56D0(v99, &v97);
    v19 = (v56 + 1);
    v15.i64[0] = 0;
    v24 = 0uLL;
    if (v21 == v25)
    {
      v22 = v25;
      v20 = v88;
      if (*v41 != v28[2])
      {
        goto LABEL_43;
      }
    }

    else
    {
      v22 = v25;
      v20 = v88;
    }

    goto LABEL_32;
  }

  v20 = v88;
  v74 = *(*a3 + 28 * v88 + 20);
  sub_239E56C3C(v101);
  v75 = *(v102 + 4 * v74);
  if (v99[0].n128_u64[0] > v75)
  {
    sub_239E56B84(v99);
    v76 = v100 + 12 * v75;
    v15.i32[3] = v95.i32[3];
    *v76 = v95.i64[0];
    *(v76 + 8) = v95.i32[2];
    if ((v26 & 0x80000000) == 0)
    {
      do
      {
        v77 = *(*a3 + 28 * (--v25 % v21 + v88) + 20);
        sub_239E56C3C(v101);
        if (*(v102 + 4 * v77) != v19)
        {
          break;
        }

        sub_239E56C3C(v101);
        *(v102 + 4 * v77) = v57;
      }

      while (v25 > 0);
    }

    goto LABEL_43;
  }

  v80 = *a1 & 0xFFFFFFFFFFFFFFF8;
  if (v80)
  {
    v81 = (v80 + 16);
    if (*(v80 + 39) < 0)
    {
      v81 = *v81;
    }
  }

  else
  {
    v81 = "";
  }

  NSLog(&cfstr_MeshSDoesConta.isa, v81);
LABEL_50:
  sub_239E56C80(v99);
  sub_239E56C80(v101);
}

void sub_239EB2D0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_239E56C80(&a31);
  sub_239E56C80(v31 - 160);
  _Unwind_Resume(a1);
}

uint64_t sub_239EB2D5C(uint64_t a1, __n128 *a2, uint64_t a3)
{
  v33[2] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 8);
  v24 = (a1 + 8);
  if (*(a1 + 16) == v3)
  {
    goto LABEL_9;
  }

  v22 = a2;
  v5 = 0;
  v6 = 0;
  v7 = 1;
  v8 = 1;
  do
  {
    MEMORY[0x23EE7ED20](v25, "normals");
    v9 = *(v3 + 96 * v5 + 56);
    v10 = v25[0];
    if ((v25[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((v25[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v8 &= (v10 ^ v9) > 7;
    if ((v10 ^ v9) <= 7)
    {
      v6 = v7 - 1;
    }

    v5 = v7;
    v3 = *(a1 + 8);
  }

  while (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - v3) >> 5) > v7++);
  a2 = v22;
  if (v8)
  {
LABEL_9:
    v33[0] = 0;
    v33[1] = 0;
    sub_239E6D3C8(v33, a2);
    sub_239E5F7D4(v25, v33);
    v12 = *(a3 + 16);
    v26 = *a3;
    v27 = v12;
    v13 = *(a3 + 32);
    v28 = v13;
    if (v13)
    {
      v14 = (v13 - 16);
      if (*(&v27 + 1))
      {
        v14 = *(&v27 + 1);
      }

      atomic_fetch_add_explicit(v14, 1uLL, memory_order_relaxed);
    }

    MEMORY[0x23EE7ED20](&v29, "normals");
    MEMORY[0x23EE7ED20](v30, "normals");
    v15 = atomic_load(MEMORY[0x277D86578]);
    if (!v15)
    {
      v15 = sub_239EB5678(MEMORY[0x277D86578]);
    }

    v30[1] = *(v15 + 77);
    MEMORY[0x23EE7ED20](&v31, "faceVarying");
    v32 = 1;
    sub_239E5FA58(v24, v25);
    if ((v31 & 7) != 0)
    {
      atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v30[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((v30[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v29 & 7) != 0)
    {
      atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    sub_239E56C80(&v26);
    sub_239E5B240(v25);
    result = sub_239E5B240(v33);
  }

  else
  {
    sub_239E6D3C8((v3 + 96 * v6), v22);
    sub_239EB3650(*v24 + 96 * v6 + 16, a3);
    MEMORY[0x23EE7ED20](v25, "normals");
    v17 = (*v24 + 96 * v6 + 56);
    if (v25 == v17)
    {
      if ((v25[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((v25[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    else
    {
      if ((*v17 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      *v17 = v25[0];
    }

    MEMORY[0x23EE7ED20](v25, "normals");
    v18 = (*v24 + 96 * v6 + 64);
    if (v25 == v18)
    {
      if ((v25[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((v25[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    else
    {
      if ((*v18 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      *v18 = v25[0];
    }

    v19 = atomic_load(MEMORY[0x277D86578]);
    if (!v19)
    {
      v19 = sub_239EB5678(MEMORY[0x277D86578]);
    }

    *(*v24 + 96 * v6 + 72) = *(v19 + 77);
    result = MEMORY[0x23EE7ED20](v25, "faceVarying");
    v20 = (*v24 + 96 * v6 + 80);
    if (v25 == v20)
    {
      if ((v25[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((v25[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    else
    {
      if ((*v20 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      *v20 = v25[0];
    }

    *(*v24 + 96 * v6 + 88) = 1;
  }

  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_239EB3160(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (a2)
  {
    sub_239E797CC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_239EB31FC(uint64_t a1, int a2)
{
  v57 = 0;
  memset(v56, 0, sizeof(v56));
  sub_239E5A31C(v56, *(a1 + 152));
  v55 = 0;
  memset(v54, 0, sizeof(v54));
  v4 = sub_239E6AD14(*(a1 + 8));
  v5 = 1.0;
  if (a2)
  {
    v5 = -1.0;
  }

  v51 = v5;
  if (!atomic_load(MEMORY[0x277D86578]))
  {
    sub_239EB5678(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    if (*(a1 + 112))
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
      do
      {
        v12 = *(*(a1 + 144) + 4 * v9);
        if (v12)
        {
          v13 = v12 - 1;
          v14 = *(a1 + 184);
          v15 = *(v4 + 32);
          v16.i64[0] = 0;
          v16.i32[2] = 0;
          v17 = 1.0;
          v18 = 1;
          v19 = v12;
          v20 = v11;
          do
          {
            if (v19 == 1)
            {
              v21 = 0;
            }

            else
            {
              v21 = v18;
            }

            v22 = v15 + 12 * *(v14 + 4 * v20);
            v8.i64[0] = *v22;
            v8.i32[2] = *(v22 + 8);
            v23 = v15 + 12 * *(v14 + 4 * (v13 % v12 + v11));
            v7.i64[0] = *v23;
            v7.i32[2] = *(v23 + 8);
            v24 = vsubq_f32(v7, v8);
            v25 = vmulq_f32(v24, v24);
            v26 = vaddv_f32(*v25.f32) + v25.f32[2];
            v7 = 0uLL;
            if (v26 > COERCE_FLOAT(512))
            {
              v27 = v26;
              v28 = vrsqrte_f32(LODWORD(v26));
              v29 = vmul_f32(vrsqrts_f32(LODWORD(v27), vmul_f32(v28, v28)), v28);
              v7 = vmulq_n_f32(v24, vmul_f32(v29, vrsqrts_f32(LODWORD(v27), vmul_f32(v29, v29))).f32[0]);
            }

            v30 = v15 + 12 * *(v14 + 4 * (v21 + v11));
            v24.i64[0] = *v30;
            v24.i32[2] = *(v30 + 8);
            v31 = vsubq_f32(v24, v8);
            v32 = vmulq_f32(v31, v31);
            v33 = vaddv_f32(*v32.f32) + v32.f32[2];
            v34 = 0uLL;
            if (v33 > COERCE_FLOAT(512))
            {
              v35 = v33;
              v36 = vrsqrte_f32(LODWORD(v33));
              v37 = vmul_f32(vrsqrts_f32(LODWORD(v35), vmul_f32(v36, v36)), v36);
              v34 = vmulq_n_f32(v31, vmul_f32(v37, vrsqrts_f32(LODWORD(v35), vmul_f32(v37, v37))).f32[0]);
            }

            v8 = vmulq_f32(v7, v7);
            if (sqrtf(vaddv_f32(*v8.f32) + v8.f32[2]) != 0.0)
            {
              v38 = vmulq_f32(v34, v34);
              v39 = sqrtf(vaddv_f32(*v38.f32) + v38.f32[2]) == 0.0;
              v8 = vmulq_f32(v34, v7);
              v8.f32[0] = fabsf(vaddv_f32(*v8.f32) + v8.f32[2]);
              if (!v39 && v8.f32[0] < v17)
              {
                v41 = vmlaq_f32(vnegq_f32(vmulq_f32(v34, vextq_s8(vuzp1q_s32(v7, v7), v7, 0xCuLL))), v7, vextq_s8(vuzp1q_s32(v34, v34), v34, 0xCuLL));
                v42 = vmulq_n_f32(vextq_s8(vuzp1q_s32(v41, v41), v41, 0xCuLL), v51);
                v16 = vmulq_f32(v42, v42);
                v43 = vaddv_f32(*v16.f32) + v16.f32[2];
                v16.i64[0] = 0;
                v16.i32[2] = 0;
                if (v43 > COERCE_FLOAT(512))
                {
                  v44 = v43;
                  v45 = vrsqrte_f32(LODWORD(v43));
                  v46 = vmul_f32(vrsqrts_f32(LODWORD(v44), vmul_f32(v45, v45)), v45);
                  v16 = vmulq_n_f32(v42, vmul_f32(v46, vrsqrts_f32(LODWORD(v44), vmul_f32(v46, v46))).f32[0]);
                }

                v17 = v8.f32[0];
              }
            }

            ++v13;
            ++v20;
            ++v18;
            --v19;
          }

          while (v19);
        }

        else
        {
          v16.i64[0] = 0;
          v16.i32[2] = 0;
        }

        v52 = v16.i64[0];
        v53 = v16.i32[2];
        sub_239EB56D0(v54, &v52);
        v47 = v12;
        v48 = v11;
        if (v12)
        {
          do
          {
            sub_239E56C3C(v56);
            *(v57 + 4 * v48++) = v10;
            --v47;
          }

          while (v47);
        }

        v11 += v12;
        v9 = ++v10;
      }

      while (*(a1 + 112) > v10);
    }

    sub_239EB2D5C(a1, v54, v56);
  }

  else
  {
    v49 = *a1 & 0xFFFFFFFFFFFFFFF8;
    if (v49)
    {
      v50 = (v49 + 16);
      if (*(v49 + 39) < 0)
      {
        v50 = *v50;
      }
    }

    else
    {
      v50 = "";
    }

    NSLog(&cfstr_MeshSDoesConta_0.isa, v50);
  }

  sub_239E56C80(v54);
  sub_239E56C80(v56);
}

void sub_239EB3598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  sub_239E56C80(va);
  sub_239E56C80(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_239EB35C8(void *a1)
{
  v2 = a1[10];
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = a1[8];
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = a1[7];
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_239E56C80((a1 + 2));

  return sub_239E5B240(a1);
}

uint64_t sub_239EB3650(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v3 = a2[1];
    v8 = *a2;
    v9 = v3;
    v4 = *(a2 + 4);
    v10 = v4;
    if (v4)
    {
      v5 = (v4 - 16);
      if (*(&v9 + 1))
      {
        v5 = *(&v9 + 1);
      }

      atomic_fetch_add_explicit(v5, 1uLL, memory_order_relaxed);
    }

    if (&v8 != a1)
    {
      sub_239E56C80(a1);
      v6 = v9;
      *a1 = v8;
      *(a1 + 16) = v6;
      v8 = 0u;
      v9 = 0u;
      *(a1 + 32) = v10;
      v10 = 0;
    }

    sub_239E56C80(&v8);
  }

  return a1;
}

float sub_239EB3728(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v5 = *(*(a1 + 8) + 8);
  v6 = *(sub_239E6AD14(*(v5 + 8)) + 32) + 12 * *(*(v5 + 184) + 4 * (3 * a3 + a4));
  *a2 = *v6;
  *(a2 + 4) = *(v6 + 4);
  result = *(v6 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_239EB379C(uint64_t result, uint64_t a2, int a3, int a4)
{
  v5 = *(result + 8);
  v6 = *(v5 + 4);
  if (v6 == -1)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    return result;
  }

  v9 = *(v5 + 8);
  v10 = 3 * v6;
  v11 = sub_239E6AD14((*(v9 + 8) + 96 * v6));
  v12 = (*(v9 + 8) + 32 * v10);
  v13 = v12[10];
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v13 &= 0xFFFFFFFFFFFFFFF8;
  }

  result = MEMORY[0x23EE7ED20](&v22, "faceVarying");
  v14 = v13 ^ v22;
  if ((v22 & 7) != 0)
  {
    atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v15 = (3 * a3 + a4);
  if (v14 <= 7)
  {
    if (!v12[2])
    {
      v19 = (*(v11 + 32) + 12 * v15);
      goto LABEL_29;
    }

    LODWORD(v16) = *(v12[6] + 4 * v15);
    goto LABEL_21;
  }

  result = MEMORY[0x23EE7ED20](&v22, "vertex");
  v17 = v13 ^ v22;
  if ((v22 & 7) != 0)
  {
    atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v17 <= 7)
  {
    v16 = *(*(v9 + 184) + 4 * v15);
    if (!v12[2])
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  result = MEMORY[0x23EE7ED20](&v22, "uniform");
  v18 = v13 ^ v22;
  if ((v22 & 7) != 0)
  {
    atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v18 <= 7)
  {
    v16 = v15 / 3uLL;
    if (!v12[2])
    {
      v19 = (*(v11 + 32) + 12 * v16);
      goto LABEL_29;
    }

LABEL_20:
    LODWORD(v16) = *(v12[6] + 4 * v16);
LABEL_21:
    v19 = (*(v11 + 32) + 12 * v16);
    goto LABEL_29;
  }

  result = MEMORY[0x23EE7ED20](&v22, "constant");
  v20 = v13 ^ v22;
  if ((v22 & 7) != 0)
  {
    atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v20 > 7)
  {
    *a2 = 0;
    v21 = 0;
    goto LABEL_30;
  }

  v19 = *(v11 + 32);
LABEL_29:
  *a2 = *v19;
  *(a2 + 4) = v19[1];
  v21 = v19[2];
LABEL_30:
  *(a2 + 8) = v21;
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void sub_239EB39CC(_Unwind_Exception *a1)
{
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_239EB39F0(uint64_t result, uint64_t a2, int a3, int a4)
{
  v5 = *(result + 8);
  v6 = *v5;
  if (v6 == -1)
  {
    *a2 = 0;
    return result;
  }

  v9 = *(v5 + 1);
  v10 = 3 * v6;
  v11 = sub_239E6DAB4((*(v9 + 8) + 96 * v6));
  v12 = (*(v9 + 8) + 32 * v10);
  v13 = v12[10];
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v13 &= 0xFFFFFFFFFFFFFFF8;
  }

  result = MEMORY[0x23EE7ED20](&v22, "faceVarying");
  v14 = v13 ^ v22;
  if ((v22 & 7) != 0)
  {
    atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v15 = (3 * a3 + a4);
  if (v14 <= 7)
  {
    if (!v12[2])
    {
      v19 = (*(v11 + 32) + 8 * v15);
      goto LABEL_27;
    }

    v16 = *(v12[6] + 4 * v15);
LABEL_21:
    v19 = (*(v11 + 32) + 8 * v16);
LABEL_27:
    *a2 = *v19;
    v21 = v19[1];
    goto LABEL_28;
  }

  result = MEMORY[0x23EE7ED20](&v22, "vertex");
  v17 = v13 ^ v22;
  if ((v22 & 7) != 0)
  {
    atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v17 <= 7)
  {
    v16 = *(*(v9 + 184) + 4 * v15);
    goto LABEL_19;
  }

  result = MEMORY[0x23EE7ED20](&v22, "uniform");
  v18 = v13 ^ v22;
  if ((v22 & 7) != 0)
  {
    atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v18 <= 7)
  {
    v16 = v15 / 3uLL;
LABEL_19:
    if (v12[2])
    {
      v16 = *(v12[6] + 4 * v16);
    }

    goto LABEL_21;
  }

  result = MEMORY[0x23EE7ED20](&v22, "constant");
  v20 = v13 ^ v22;
  if ((v22 & 7) != 0)
  {
    atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v20 <= 7)
  {
    v19 = *(v11 + 32);
    goto LABEL_27;
  }

  *a2 = 0;
  v21 = 0;
LABEL_28:
  *(a2 + 4) = v21;
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void sub_239EB3BF4(_Unwind_Exception *a1)
{
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void sub_239EB3C18(uint64_t a1, int *a2, int a3, int a4, float a5)
{
  v7 = *(a1 + 8);
  v8 = 3 * a3 + a4;
  v9 = *a2;
  sub_239E86480((v7 + 16));
  *(*(v7 + 48) + 16 * v8) = v9;
  v10 = a2[1];
  sub_239E86480((v7 + 16));
  *(*(v7 + 48) + 16 * v8 + 4) = v10;
  v11 = a2[2];
  sub_239E86480((v7 + 16));
  *(*(v7 + 48) + 16 * v8 + 8) = v11;
  sub_239E86480((v7 + 16));
  *(*(v7 + 48) + 16 * v8 + 12) = a5;
}

void sub_239EB3CB4(uint64_t a1, int *a2, int *a3, int a4, int a5, int a6)
{
  v9 = *(a1 + 8);
  v10 = (3 * a5 + a6);
  v11 = *a2;
  sub_239E86480((v9 + 2));
  *(v9[6] + 16 * v10) = v11;
  v12 = a2[1];
  sub_239E86480((v9 + 2));
  *(v9[6] + 16 * v10 + 4) = v12;
  v13 = a2[2];
  sub_239E86480((v9 + 2));
  *(v9[6] + 16 * v10 + 8) = v13;
  if (a4)
  {
    v14 = 1.0;
  }

  else
  {
    v14 = -1.0;
  }

  sub_239E86480((v9 + 2));
  *(v9[6] + 16 * v10 + 12) = v14;
  v15 = *a3;
  sub_239E56B84((v9 + 7));
  v16 = v10 + 2 * v10;
  *(v9[11] + 4 * v16) = v15;
  v17 = a3[1];
  sub_239E56B84((v9 + 7));
  *(v9[11] + 4 * v16 + 4) = v17;
  v18 = a3[2];
  sub_239E56B84((v9 + 7));
  *(v9[11] + 4 * v16 + 8) = v18;
}

uint64_t sub_239EB3DB4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *a1 = -1;
  v5 = *(a2 + 8);
  if (*(a2 + 16) == v5)
  {
    if (*(a1 + 4) != -1)
    {
LABEL_46:
      v25 = *a2 & 0xFFFFFFFFFFFFFFF8;
      if (v25)
      {
        v26 = (v25 + 16);
        if (*(v25 + 39) < 0)
        {
          v26 = *v26;
        }
      }

      else
      {
        v26 = "";
      }

      NSLog(&cfstr_MeshSDoesNotCo.isa, v26);
      return 0;
    }

LABEL_49:
    v27 = *a2 & 0xFFFFFFFFFFFFFFF8;
    if (v27)
    {
      v28 = (v27 + 16);
      if (*(v27 + 39) < 0)
      {
        v28 = *v28;
      }
    }

    else
    {
      v28 = "";
    }

    NSLog(&cfstr_MeshSDoesConta_1.isa, v28);
    return 0;
  }

  v7 = 0;
  v8 = 0;
  v9 = -1;
  do
  {
    v10 = v5 + 96 * v7;
    MEMORY[0x23EE7ED20](&v29, "normals");
    v11 = *(v10 + 56);
    v12 = v29;
    if ((v29 & 7) != 0)
    {
      atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v12 ^ v11) <= 7)
    {
      *(a1 + 4) = v8;
      goto LABEL_27;
    }

    v13 = *(a2 + 8);
    if (!atomic_load(MEMORY[0x277D86578]))
    {
      sub_239EB5678(MEMORY[0x277D86578]);
    }

    if ((pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==() & 1) == 0)
    {
      v15 = *(a2 + 8);
      if (!atomic_load(MEMORY[0x277D86578]))
      {
        sub_239EB5678(MEMORY[0x277D86578]);
      }

      if (!pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
      {
        goto LABEL_27;
      }
    }

    if (v9 == -1)
    {
      v9 = v8;
    }

    v17 = *(a2 + 8) + 96 * v7;
    MEMORY[0x23EE7ED30](&v29, a3);
    if ((v29 ^ *(v17 + 56)) < 8)
    {
      if ((v29 & 7) != 0)
      {
        atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

LABEL_26:
      *a1 = v8;
      goto LABEL_27;
    }

    if (*(a3 + 23) < 0)
    {
      if (a3[1])
      {
LABEL_20:
        v18 = 0;
        goto LABEL_23;
      }
    }

    else if (*(a3 + 23))
    {
      goto LABEL_20;
    }

    v18 = 1;
LABEL_23:
    if ((v29 & 7) != 0)
    {
      atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (v18)
    {
      goto LABEL_26;
    }

LABEL_27:
    v5 = *(a2 + 8);
    v7 = ++v8;
  }

  while (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 16) - v5) >> 5) > v8);
  v19 = *a1;
  if (*a1 == -1 && v9 != -1)
  {
    v20 = *a2 & 0xFFFFFFFFFFFFFFF8;
    if (v20)
    {
      v21 = (v20 + 16);
      if (*(v20 + 39) < 0)
      {
        v21 = *v21;
      }
    }

    else
    {
      v21 = "";
    }

    if (*(a3 + 23) < 0)
    {
      a3 = *a3;
    }

    NSLog(&cfstr_WarningMeshSUn.isa, v21, a3);
    *a1 = v9;
    v19 = v9;
  }

  if (*(a1 + 4) == -1)
  {
    goto LABEL_49;
  }

  if (v19 == -1)
  {
    goto LABEL_46;
  }

  sub_239E85F74(&v29, *(a2 + 152));
  if ((a1 + 16) != &v29)
  {
    sub_239E56C80(a1 + 16);
    v22 = v30;
    *(a1 + 16) = v29;
    *(a1 + 32) = v22;
    v29 = 0u;
    v30 = 0u;
    *(a1 + 48) = v31;
    v31 = 0;
  }

  sub_239E56C80(&v29);
  sub_239E6D0E8(&v29, *(a2 + 152));
  if ((a1 + 56) != &v29)
  {
    sub_239E56C80(a1 + 56);
    v23 = v30;
    *(a1 + 56) = v29;
    *(a1 + 72) = v23;
    v29 = 0u;
    v30 = 0u;
    *(a1 + 88) = v31;
    v31 = 0;
  }

  sub_239E56C80(&v29);
  *(a1 + 8) = a2;
  return 1;
}

void sub_239EB412C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_239E56C80(va);
  _Unwind_Resume(a1);
}

void sub_239EB4160(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v61 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v50 = a4;
  v10 = *(a2 + 8);
  v9 = (a2 + 8);
  if (*(a2 + 16) == v10)
  {
    v53 = 0;
    v51 = 0u;
    v52 = 0u;
  }

  else
  {
    v11 = 0;
    v12 = -1;
    v13 = 1;
    do
    {
      v14 = v8;
      v17 = objc_msgSend_UTF8String(v8, v15, v16);
      MEMORY[0x23EE7ED20](v54, v17);
      v18 = *(v10 + 96 * v11 + 56);
      v19 = v54[0];
      if ((v54[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((v54[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v19 ^ v18) < 8)
      {
        v12 = v13 - 1;
      }

      v11 = v13;
      v10 = *(a2 + 8);
    }

    while (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 16) - v10) >> 5) > v13++);
    v53 = 0;
    v51 = 0u;
    v52 = 0u;
    if (v12 != -1)
    {
      sub_239EB4640((v10 + 96 * v12), a1);
      sub_239EB3650(*v9 + 96 * v12 + 16, &v51);
      v21 = v8;
      v24 = objc_msgSend_UTF8String(v8, v22, v23);
      MEMORY[0x23EE7ED20](v54, v24);
      v25 = (*v9 + 96 * v12 + 56);
      if (v54 == v25)
      {
        if ((v54[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((v54[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      else
      {
        if ((*v25 & 7) != 0)
        {
          atomic_fetch_add_explicit((*v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        *v25 = v54[0];
      }

      v38 = v8;
      v41 = objc_msgSend_UTF8String(v8, v39, v40);
      MEMORY[0x23EE7ED20](v54, v41);
      v42 = (*v9 + 96 * v12 + 64);
      if (v54 == v42)
      {
        if ((v54[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((v54[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      else
      {
        if ((*v42 & 7) != 0)
        {
          atomic_fetch_add_explicit((*v42 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        *v42 = v54[0];
      }

      *(*v9 + 96 * v12 + 72) = a5;
      v43 = v50;
      v46 = objc_msgSend_UTF8String(v50, v44, v45);
      MEMORY[0x23EE7ED20](v54, v46);
      v47 = (*v9 + 96 * v12 + 80);
      if (v54 == v47)
      {
        if ((v54[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((v54[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      else
      {
        if ((*v47 & 7) != 0)
        {
          atomic_fetch_add_explicit((*v47 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        *v47 = v54[0];
      }

      *(*v9 + 96 * v12 + 88) = 1;
      goto LABEL_36;
    }
  }

  sub_239E5F7D4(v54, a1);
  v55[0] = v51;
  v55[1] = v52;
  v56 = v53;
  v26 = v8;
  v29 = objc_msgSend_UTF8String(v8, v27, v28);
  MEMORY[0x23EE7ED20](&v57, v29);
  v30 = v8;
  v33 = objc_msgSend_UTF8String(v8, v31, v32);
  MEMORY[0x23EE7ED20](v58, v33);
  v58[1] = a5;
  v34 = v50;
  v37 = objc_msgSend_UTF8String(v50, v35, v36);
  MEMORY[0x23EE7ED20](&v59, v37);
  v60 = 1;
  sub_239E5FA58(v9, v54);
  if ((v59 & 7) != 0)
  {
    atomic_fetch_add_explicit((v59 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v58[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v58[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v57 & 7) != 0)
  {
    atomic_fetch_add_explicit((v57 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_239E56C80(v55);
  sub_239E5B240(v54);
LABEL_36:
  sub_239E56C80(&v51);

  v48 = *MEMORY[0x277D85DE8];
}

void sub_239EB457C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, ...)
{
  va_start(va, a5);
  sub_239E56C80(va);

  _Unwind_Resume(a1);
}

void *sub_239EB4640(void *a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    sub_239E5B3EC(&v16, &v14);
    v4 = a1[1];
    v5 = ~*(a1 + 2);
    v15 = v4;
    if ((v5 & 3) != 0)
    {
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 40))(a1, &v14);
    }

    else
    {
      v14 = *a1;
    }

    a1[1] = 0;
    if (v17)
    {
      (*(v17 + 32))(&v16);
    }

    v6 = a2 + 1;
    if (!a2[1])
    {
      v9 = a1[1];
      if (v9 && (a1[1] & 3) != 3)
      {
        (*((v9 & 0xFFFFFFFFFFFFFFF8) + 32))(a1);
      }

      a1[1] = 0;
      goto LABEL_19;
    }
  }

  else
  {
    v6 = a2 + 1;
    if (!a2[1])
    {
      goto LABEL_30;
    }

    v14 = 0;
    v15 = 0;
  }

  v16 = 0;
  v17 = 0;
  sub_239E5B3EC(&v16, a1);
  v7 = *v6;
  v8 = ~*v6;
  a1[1] = *v6;
  if ((v8 & 3) != 0)
  {
    (*((v7 & 0xFFFFFFFFFFFFFFF8) + 40))(a2, a1);
  }

  else
  {
    *a1 = *a2;
  }

  *v6 = 0;
  if (v17)
  {
    (*(v17 + 32))(&v16);
  }

LABEL_19:
  if (v15)
  {
    v16 = 0;
    v17 = 0;
    sub_239E5B3EC(&v16, a2);
    v10 = v15;
    v11 = ~v15;
    *v6 = v15;
    if ((v11 & 3) != 0)
    {
      (*((v10 & 0xFFFFFFFFFFFFFFF8) + 40))(&v14, a2);
    }

    else
    {
      *a2 = v14;
    }

    v15 = 0;
    if (v17)
    {
      (*(v17 + 32))(&v16);
    }
  }

  else
  {
    if (*v6 && (*v6 & 3) != 3)
    {
      (*((*v6 & 0xFFFFFFFFFFFFFFF8) + 32))(a2);
    }

    *v6 = 0;
  }

  sub_239E5B240(&v14);
LABEL_30:
  v12 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_239EB484C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_239E797CC(a1);
  }

  _Unwind_Resume(a1);
}

void sub_239EB4894(void *a1, int a2, uint64_t a3, float a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  v26 = 0u;
  memset(v27, 0, sizeof(v27));
  if (*(a3 + 23) < 0)
  {
    sub_239E5BAE0(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v25 = *(a3 + 16);
  }

  v7 = sub_239EB3DB4(&v26, a1, __p);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p[0]);
  }

  if (v7)
  {
    *&v28 = sub_239EB3704;
    *(&v28 + 1) = sub_239EB3714;
    *&v29 = sub_239EB3728;
    *(&v29 + 1) = sub_239EB379C;
    *&v30 = sub_239EB39F0;
    if (a2)
    {
      v8 = sub_239EB3C18;
    }

    else
    {
      v8 = 0;
    }

    if (a2)
    {
      v9 = 0;
    }

    else
    {
      v9 = sub_239EB3CB4;
    }

    *(&v30 + 1) = v8;
    v31 = v9;
    v23[0] = &v28;
    v23[1] = &v26;
    v10 = 3.1416;
    if (a4 <= 3.1416)
    {
      v10 = a4;
    }

    if (v10 < 0.0)
    {
      v10 = 0.0;
    }

    if (sub_239EA11A8(v23, v10) == 1)
    {
      if (a2)
      {
        v33 = &off_284D15B18;
        sub_239EB5D90();
      }

      v22 = 0;
      memset(v21, 0, sizeof(v21));
      sub_239E6D0E8(v21, *&v27[0]);
      if (*&v27[0])
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        do
        {
          sub_239E86480(v27);
          v16 = *(*&v27[2] + v14);
          sub_239E86480(v27);
          v17 = *(*&v27[2] + v14 + 4);
          sub_239E86480(v27);
          v18 = *(*&v27[2] + v14 + 8);
          sub_239E56B84(v21);
          v19 = (v22 + v13);
          *v19 = v16;
          v19[1] = v17;
          v19[2] = v18;
          ++v15;
          v14 += 16;
          v13 += 12;
        }

        while (*&v27[0] > v15);
      }

      v32 = &off_284D15C88;
      sub_239EB5D90();
    }

    v11 = *a1 & 0xFFFFFFFFFFFFFFF8;
    if (v11)
    {
      v12 = (v11 + 16);
      if (*(v11 + 39) < 0)
      {
        v12 = *v12;
      }
    }

    else
    {
      v12 = "";
    }

    NSLog(&cfstr_FailedToGenera.isa, v12);
  }

  sub_239E56C80(&v27[2] + 8);
  sub_239E56C80(v27);
  v20 = *MEMORY[0x277D85DE8];
}

void sub_239EB4C38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, char a26)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_239E797CC(exception_object);
}

uint64_t sub_239EB4CCC(uint64_t result, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (*(result + 8))
  {
    v3 = result;
    v9 = 0;
    v10 = 0;
    result = sub_239E5B3EC(&v9, a2);
    v4 = v3[1];
    v5 = ~*(v3 + 2);
    a2[1] = v4;
    if ((v5 & 3) != 0)
    {
      result = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 40))(v3, a2);
    }

    else
    {
      *a2 = *v3;
    }

    v3[1] = 0;
    if (v10)
    {
      result = (*(v10 + 32))(&v9);
    }
  }

  else
  {
    v6 = a2[1];
    if (v6)
    {
      v7 = (a2[1] & 3) == 3;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      result = (*((v6 & 0xFFFFFFFFFFFFFFF8) + 32))(a2);
    }

    a2[1] = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_239EB4DB4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_239E797CC(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_239EB4DCC(uint64_t a1)
{
  sub_239E56C80(a1 + 56);
  sub_239E56C80(a1 + 16);
  return a1;
}

void sub_239EB4E08(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 2)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 4 * a2);
      v5 += 4 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 2);
    if (v8 >> 62)
    {
      sub_239E797B4();
    }

    v9 = v4 - v6;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_239E79984(a1, v10);
    }

    v11 = (4 * (v7 >> 2));
    bzero(v11, 4 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[4 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void sub_239EB4F38(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0x6DB6DB6DB6DB6DB7 * ((v4 - v5) >> 2) >= a2)
  {
    if (a2)
    {
      v10 = 28 * ((28 * a2 - 28) / 0x1C) + 28;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0x6DB6DB6DB6DB6DB7 * ((v5 - *a1) >> 2);
    if (v6 + a2 > 0x924924924924924)
    {
      sub_239E797B4();
    }

    v7 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 2);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + a2)
    {
      v8 = v6 + a2;
    }

    if (v7 >= 0x492492492492492)
    {
      v9 = 0x924924924924924;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      sub_239EB50E4(a1, v9);
    }

    v11 = 28 * v6;
    v12 = 28 * ((28 * a2 - 28) / 0x1C) + 28;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v16)
    {

      operator delete(v16);
    }
  }
}

void sub_239EB50E4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x924924924924925)
  {
    operator new();
  }

  sub_239E79870();
}

unint64_t *sub_239EB5140@<X0>(unint64_t *__src@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = a4 - a2 + 8 * (a3 - __src);
  if (v8 <= 0)
  {
    v16 = *a5;
  }

  else
  {
    v9 = __src;
    __src = *a5;
    if (a2)
    {
      if (v8 >= (64 - a2))
      {
        v10 = 64 - a2;
      }

      else
      {
        v10 = v8;
      }

      v8 -= v10;
      v11 = *v9++;
      *__src = *__src & ~((0xFFFFFFFFFFFFFFFFLL >> (64 - a2 - v10)) & (-1 << a2)) | v11 & (0xFFFFFFFFFFFFFFFFLL >> (64 - a2 - v10)) & (-1 << a2);
      v12 = v10 + *(a5 + 8);
      __src = (__src + ((v12 >> 3) & 0x3FFFFFF8));
      *a5 = __src;
      *(a5 + 8) = v12 & 0x3F;
    }

    if (v8 >= 0)
    {
      v13 = v8;
    }

    else
    {
      v13 = v8 + 63;
    }

    v14 = v13 >> 6;
    if ((v8 + 63) >= 0x7F)
    {
      memmove(__src, v9, 8 * v14);
      __src = *a5;
    }

    v15 = v8 - (v14 << 6);
    v16 = &__src[v14];
    *a5 = v16;
    if (v15 >= 1)
    {
      *v16 = *v16 & ~(0xFFFFFFFFFFFFFFFFLL >> ((v14 << 6) - v8)) | v9[v14] & (0xFFFFFFFFFFFFFFFFLL >> ((v14 << 6) - v8));
      *(a5 + 8) = v15;
    }
  }

  *a6 = v16;
  *(a6 + 8) = *(a5 + 8);
  return __src;
}

void *sub_239EB5274(void *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = *(result + 2);
  v5 = *result;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ |= (0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4);
    v2 = a2 - v6;
    *result = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    result = memset(v5, 255, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *v3 = v8;
    *v8 |= 0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F);
  }

  return result;
}

void sub_239EB5328(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4));
    v2 = a2 - v6;
    *a1 = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    bzero(v5, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *a1 = v8;
    *v8 &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F));
  }
}

uint64_t sub_239EB53D8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_239EB5454(result, a4);
  }

  return result;
}

void sub_239EB5438(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_239EB5454(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x924924924924925)
  {
    sub_239EB50E4(a1, a2);
  }

  sub_239E797B4();
}

void sub_239EB54A4(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      memset(*(a1 + 8), 255, 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      sub_239E797B4();
    }

    v8 = v4 - *a1;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_239E95BB4(a1, v9);
    }

    v10 = (8 * (v6 >> 3));
    memset(v10, 255, 8 * a2);
    v11 = &v10[8 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

uint64_t sub_239EB561C(uint64_t result)
{
  if (result)
  {
    sub_239E56C80(result);

    JUMPOUT(0x23EE802C0);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType *sub_239EB5678(atomic_ullong *a1)
{
  result = MEMORY[0x23EE7EAE0]();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::~Sdf_ValueTypeNamesType(result);
      MEMORY[0x23EE802C0]();
    }

    return atomic_load(a1);
  }

  return result;
}

void sub_239EB56D0(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 8))
  {
    v4 = *a1;
    if (!*(a1 + 24))
    {
      v5 = *(a1 + 32);
      if (!v5)
      {
        goto LABEL_10;
      }

      v6 = atomic_load((v5 - 16));
      if (v6 != 1)
      {
        goto LABEL_14;
      }

      v5 = *(a1 + 32);
      if (v5)
      {
        if (*(a1 + 24))
        {
          v7 = a1;
        }

        else
        {
          v7 = (v5 - 8);
        }

        v8 = *v7;
      }

      else
      {
LABEL_10:
        v8 = 0;
      }

      if (v4 != v8)
      {
        v9 = *a2;
        v10 = v5 + 12 * v4;
        *(v10 + 8) = *(a2 + 8);
        *v10 = v9;
LABEL_13:
        ++*a1;
        return;
      }
    }

LABEL_14:
    sub_239F738CC(a1, v4, a2);
    goto LABEL_13;
  }

  sub_239F73850(a1);
}

void sub_239EB5788(uint64_t a1)
{
  v2[2] = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  v2[1] = 0;
  sub_239E5B3EC(v2, a1);
  *(a1 + 8) = &off_284D15C88;
  sub_239EB5D90();
}

void sub_239EB5820(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_239E797CC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_239EB585C(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t *sub_239EB587C(uint64_t *result, uint64_t *a2)
{
  *a2 = *result;
  *result = 0;
  return sub_239EB5A60(result);
}

unint64_t sub_239EB5894(unint64_t **a1)
{
  v1 = **a1;
  if (v1)
  {
    v2 = (*a1)[4];
    v3 = **a1;
    do
    {
      --v3;
      v7[0] = 0;
      v7[1] = 0;
      sub_239EB5AD8(v7, v2, v2 + 1, v2 + 2);
      v4 = bswap64(0x9E3779B97F4A7C55 * v7[0]);
      v1 = v4 + ((v4 + v1 + (v4 + v1) * (v4 + v1)) >> 1);
      v2 += 3;
    }

    while (v3);
    v5 = 0x9E3779B97F4A7C55 * v1;
  }

  else
  {
    v5 = 0;
  }

  return bswap64(v5);
}

uint64_t sub_239EB5954(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 32);
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray();
  return a2;
}

void sub_239EB5A48(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &off_284D15C88;
  sub_239EB5D90();
}

uint64_t *sub_239EB5A60(uint64_t *result)
{
  v1 = *result;
  if (*result && atomic_fetch_add_explicit((v1 + 40), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    sub_239E56C80(v1);

    JUMPOUT(0x23EE802C0);
  }

  return result;
}

uint64_t sub_239EB5AD8(uint64_t a1, unsigned int *a2, unsigned int *a3, unsigned int *a4)
{
  v4 = *a2;
  if (*(a1 + 8))
  {
    v4 += (*a1 + v4 + (*a1 + v4) * (*a1 + v4)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v4;
  return sub_239EB5B10(a1, a3, a4);
}

uint64_t sub_239EB5B10(uint64_t result, unsigned int *a2, unsigned int *a3)
{
  v3 = *a2;
  if (*(result + 8))
  {
    v3 += (*result + v3 + (*result + v3) * (*result + v3)) >> 1;
  }

  else
  {
    *(result + 8) = 1;
  }

  *result = *a3 + ((v3 + *a3 + (v3 + *a3) * (v3 + *a3)) >> 1);
  return result;
}

BOOL sub_239EB5B50(void *a1, uint64_t a2)
{
  if (a1[4] == *(a2 + 32) && sub_239EB5C18(a1, a2) && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  result = sub_239EB5C18(a1, a2);
  if (!result)
  {
    return result;
  }

  if (!*a1)
  {
    return 1;
  }

  v5 = a1[4];
  v6 = &v5[3 * *a1];
  for (i = *(a2 + 32); *v5 == *i && v5[1] == i[1] && v5[2] == i[2]; i += 3)
  {
    v5 += 3;
    if (v5 == v6)
    {
      return 1;
    }
  }

  return 0;
}

BOOL sub_239EB5C18(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v6 = *(a1 + 8);
  v4 = (a1 + 8);
  v5 = v6;
  if (v6)
  {
    if (*(a1 + 12))
    {
      v7 = *(a1 + 16) ? 4 : 3;
    }

    else
    {
      v7 = 2;
    }
  }

  else
  {
    v7 = 1;
  }

  v8 = (a2 + 8);
  if (*(a2 + 8))
  {
    if (*(a2 + 12))
    {
      v9 = *(a2 + 16) ? 4 : 3;
    }

    else
    {
      v9 = 2;
    }
  }

  else
  {
    v9 = 1;
  }

  if (v7 != v9)
  {
    return 0;
  }

  if (v5)
  {
    if (*(a1 + 12))
    {
      v10 = *(a1 + 16) == 0;
      v11 = 3;
      if (!v10)
      {
        v11 = 4;
      }
    }

    else
    {
      v11 = 2;
    }
  }

  else
  {
    v11 = 1;
  }

  return memcmp(v4, v8, 4 * v11 - 4) == 0;
}

uint64_t *sub_239EB5E0C(uint64_t *result)
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
      v3 -= 12;
      result = sub_239E63168(v5, v3);
    }

    while (v3 != v4);
  }

  return result;
}

uint64_t sub_239EB5EC0(uint64_t result)
{
  if (result)
  {
    sub_239E56C80(result);

    JUMPOUT(0x23EE802C0);
  }

  return result;
}

uint64_t *sub_239EB5F1C(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t *sub_239EB5F3C(uint64_t *result, uint64_t *a2)
{
  *a2 = *result;
  *result = 0;
  return sub_239EB6124(result);
}

unint64_t sub_239EB5F54(unint64_t **a1)
{
  v1 = **a1;
  if (v1)
  {
    v2 = (*a1)[4];
    v3 = **a1;
    do
    {
      --v3;
      v7[0] = 0;
      v7[1] = 0;
      sub_239EB619C(v7, v2, v2 + 1, v2 + 2, v2 + 3);
      v4 = bswap64(0x9E3779B97F4A7C55 * v7[0]);
      v1 = v4 + ((v4 + v1 + (v4 + v1) * (v4 + v1)) >> 1);
      v2 += 4;
    }

    while (v3);
    v5 = 0x9E3779B97F4A7C55 * v1;
  }

  else
  {
    v5 = 0;
  }

  return bswap64(v5);
}

uint64_t sub_239EB6018(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 32);
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray();
  return a2;
}

void sub_239EB610C(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &off_284D15B18;
  sub_239EB5D90();
}

uint64_t *sub_239EB6124(uint64_t *result)
{
  v1 = *result;
  if (*result && atomic_fetch_add_explicit((v1 + 40), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    sub_239E56C80(v1);

    JUMPOUT(0x23EE802C0);
  }

  return result;
}

uint64_t sub_239EB619C(uint64_t a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5)
{
  v5 = *a2;
  if (*(a1 + 8))
  {
    v5 += (*a1 + v5 + (*a1 + v5) * (*a1 + v5)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v5;
  return sub_239EB5AD8(a1, a3, a4, a5);
}

BOOL sub_239EB61D8(void *a1, uint64_t a2)
{
  if (a1[4] == *(a2 + 32) && sub_239EB5C18(a1, a2) && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  result = sub_239EB5C18(a1, a2);
  if (!result)
  {
    return result;
  }

  if (!*a1)
  {
    return 1;
  }

  v5 = a1[4];
  v6 = &v5[4 * *a1];
  for (i = *(a2 + 32); *v5 == *i && v5[1] == i[1] && v5[2] == i[2] && v5[3] == i[3]; i += 4)
  {
    v5 += 4;
    if (v5 == v6)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_239EB62AC(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 40));
  if (v1 != 1)
  {
    v2 = *a1;
    sub_239EB5CFC();
  }

  return *a1;
}

void sub_239EB632C()
{
  v2 = *v1;
  *(v0 + 8) = *(v1 + 2);
  *v0 = v2;
}

void sub_239EB6348(const char *a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  if (a2 <= 0x7F)
  {

    sub_239E552A0(a3, "File is too small to be valid STL");
    return;
  }

  if (!strncmp("solid", a1, 5uLL))
  {
    v6 = 0;
    while (strncmp("facet normal", &a1[v6], 0xCuLL))
    {
      if (++v6 == 128)
      {
        goto LABEL_9;
      }
    }

    v69 = 0;
    v70 = 0;
    v71 = 0;
    v68 = a1;
    if (a2 < 1)
    {
      goto LABEL_109;
    }

    v7 = &a1[a2];
    v8 = *MEMORY[0x277D82818];
    v10 = *(MEMORY[0x277D82818] + 64);
    v9 = *(MEMORY[0x277D82818] + 72);
    while (1)
    {
      v67 = 0;
      v65 = 0u;
      memset(v66, 0, sizeof(v66));
      *v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      memset(v62, 0, sizeof(v62));
      v60 = 0u;
      sub_239EB6FD0(&v68, v7, __p);
      sub_239EB71B4(&v60, __p, 24);
      if (SBYTE7(v49) < 0)
      {
        operator delete(__p[0]);
      }

      memset(&__str, 0, sizeof(__str));
      sub_239E88B00(&v60, &__str);
      v11 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        if (__str.__r_.__value_.__l.__size_ != 5)
        {
          goto LABEL_36;
        }

        p_str = __str.__r_.__value_.__r.__words[0];
      }

      else
      {
        if (HIBYTE(__str.__r_.__value_.__r.__words[2]) != 5)
        {
          goto LABEL_26;
        }

        p_str = &__str;
      }

      data = p_str->__r_.__value_.__l.__data_;
      v14 = p_str->__r_.__value_.__s.__data_[4];
      if (data == 1768714099 && v14 == 100)
      {
        sub_239E88B00(&v60, &v69);
        v11 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        if ((*(&__str.__r_.__value_.__s + 23) & 0x80) != 0)
        {
LABEL_29:
          if (__str.__r_.__value_.__l.__size_ != 5)
          {
            goto LABEL_36;
          }

          v16 = __str.__r_.__value_.__r.__words[0];
          goto LABEL_31;
        }
      }

      else if ((*(&__str.__r_.__value_.__s + 23) & 0x80) != 0)
      {
        goto LABEL_29;
      }

LABEL_26:
      if (v11 != 5)
      {
        goto LABEL_37;
      }

      v16 = &__str;
LABEL_31:
      v17 = v16->__r_.__value_.__l.__data_;
      v18 = v16->__r_.__value_.__s.__data_[4];
      if (v17 == 1701011814 && v18 == 116)
      {
        sub_239E88B00(&v60, &__str);
        v58 = 0;
        v57 = 1065353216;
        v56 = 0;
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          if (__str.__r_.__value_.__l.__size_ == 6)
          {
            v20 = __str.__r_.__value_.__r.__words[0];
            goto LABEL_46;
          }
        }

        else if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) == 6)
        {
          v20 = &__str;
LABEL_46:
          v21 = v20->__r_.__value_.__l.__data_;
          v22 = WORD2(v20->__r_.__value_.__r.__words[0]);
          if (v21 == 1836216174 && v22 == 27745)
          {
            MEMORY[0x23EE80090](&v60, &v58);
            MEMORY[0x23EE80090](&v60, &v57);
            MEMORY[0x23EE80090](&v60, &v56);
          }
        }

        v55 = 0;
        v53 = 0u;
        memset(v54, 0, sizeof(v54));
        *v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        memset(v50, 0, sizeof(v50));
        *__p = 0u;
        sub_239EB6FD0(&v68, v7, v40);
        sub_239EB71B4(__p, v40, 24);
        if (SBYTE7(v41) < 0)
        {
          operator delete(v40[0]);
        }

        sub_239E88B00(__p, &__str);
        if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) == 5)
          {
            v24 = &__str;
            goto LABEL_59;
          }

          goto LABEL_97;
        }

        if (__str.__r_.__value_.__l.__size_ != 5)
        {
          goto LABEL_97;
        }

        v24 = __str.__r_.__value_.__r.__words[0];
LABEL_59:
        v25 = v24->__r_.__value_.__l.__data_;
        v26 = v24->__r_.__value_.__s.__data_[4];
        if (v25 != 1702131055 || v26 != 114)
        {
LABEL_97:
          sub_239EB6FD0(&v68, v7, v40);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          *&__str.__r_.__value_.__l.__data_ = *v40;
          __str.__r_.__value_.__r.__words[2] = v41;
          sub_239E91570(&__str);
          std::string::operator=(&__str, &__str);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            if (__str.__r_.__value_.__l.__size_ != 8)
            {
              goto LABEL_113;
            }

            v37 = __str.__r_.__value_.__r.__words[0];
          }

          else
          {
            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) != 8)
            {
              goto LABEL_113;
            }

            v37 = &__str;
          }

          if (v37->__r_.__value_.__r.__words[0] != 0x7465636166646E65)
          {
LABEL_113:
            sub_239E552A0(a3, "endfacet tag missing, couldn't parse STL");
            __p[0] = v8;
            *(__p + *(v8 - 3)) = v10;
            *&v49 = v9;
            *(&v49 + 1) = MEMORY[0x277D82878] + 16;
            if (SHIBYTE(v52) < 0)
            {
              operator delete(v51[1]);
            }

            *(&v49 + 1) = MEMORY[0x277D82868] + 16;
            std::locale::~locale(v50);
            std::iostream::~basic_iostream();
            MEMORY[0x23EE80250](v54);
            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

            *&v60 = v8;
            *(&v60 + *(v8 - 3)) = v10;
            *&v61 = v9;
            *(&v61 + 1) = MEMORY[0x277D82878] + 16;
            if (SHIBYTE(v64) < 0)
            {
              operator delete(v63[1]);
            }

            *(&v61 + 1) = MEMORY[0x277D82868] + 16;
            std::locale::~locale(v62);
            std::iostream::~basic_iostream();
            MEMORY[0x23EE80250](v66);
            goto LABEL_110;
          }

          __p[0] = v8;
          *(__p + *(v8 - 3)) = v10;
          *&v49 = v9;
          *(&v49 + 1) = MEMORY[0x277D82878] + 16;
          if (SHIBYTE(v52) < 0)
          {
            operator delete(v51[1]);
          }

          *(&v49 + 1) = MEMORY[0x277D82868] + 16;
          std::locale::~locale(v50);
          std::iostream::~basic_iostream();
          MEMORY[0x23EE80250](v54);
          if ((*(&__str.__r_.__value_.__s + 23) & 0x80) == 0)
          {
            goto LABEL_37;
          }

LABEL_36:
          operator delete(__str.__r_.__value_.__l.__data_);
          goto LABEL_37;
        }

        while (2)
        {
          v47 = 0;
          v45 = 0u;
          memset(v46, 0, sizeof(v46));
          *v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          memset(v42, 0, sizeof(v42));
          *v40 = 0u;
          sub_239EB6FD0(&v68, v7, &v39);
          sub_239EB71B4(v40, &v39, 24);
          if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v39.__r_.__value_.__l.__data_);
          }

          sub_239E88B00(v40, &__str);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            if (__str.__r_.__value_.__l.__size_ == 7)
            {
              v28 = __str.__r_.__value_.__r.__words[0];
LABEL_71:
              v29 = v28->__r_.__value_.__l.__data_;
              v30 = *(v28->__r_.__value_.__r.__words + 3);
              v31 = v29 == 1818521189 && v30 == 1886351212;
              v32 = 1;
              if (v31 || v68 == v7)
              {
                goto LABEL_94;
              }

              LODWORD(v39.__r_.__value_.__l.__data_) = 0;
              v38 = 0;
              if ((*(&__str.__r_.__value_.__s + 23) & 0x80) == 0)
              {
                goto LABEL_80;
              }
            }

            else
            {
              if (v68 == v7)
              {
                goto LABEL_93;
              }

              LODWORD(v39.__r_.__value_.__l.__data_) = 0;
              v38 = 0;
            }

            if (__str.__r_.__value_.__l.__size_ == 6)
            {
              v33 = __str.__r_.__value_.__r.__words[0];
              goto LABEL_86;
            }

LABEL_92:
            v32 = 0;
          }

          else
          {
            if (HIBYTE(__str.__r_.__value_.__r.__words[2]) == 7)
            {
              v28 = &__str;
              goto LABEL_71;
            }

            if (v68 != v7)
            {
              LODWORD(v39.__r_.__value_.__l.__data_) = 0;
              v38 = 0;
LABEL_80:
              if (HIBYTE(__str.__r_.__value_.__r.__words[2]) == 6)
              {
                v33 = &__str;
LABEL_86:
                v34 = v33->__r_.__value_.__l.__data_;
                v35 = WORD2(v33->__r_.__value_.__r.__words[0]);
                if (v34 == 1953654134 && v35 == 30821)
                {
                  MEMORY[0x23EE80090](v40, &v39);
                  MEMORY[0x23EE80090](v40, &v38 + 4);
                  MEMORY[0x23EE80090](v40, &v38);
                }
              }

              goto LABEL_92;
            }

LABEL_93:
            v32 = 1;
          }

LABEL_94:
          v40[0] = v8;
          *(v40 + *(v8 - 3)) = v10;
          *&v41 = v9;
          *(&v41 + 1) = MEMORY[0x277D82878] + 16;
          if (SHIBYTE(v44) < 0)
          {
            operator delete(v43[1]);
          }

          *(&v41 + 1) = MEMORY[0x277D82868] + 16;
          std::locale::~locale(v42);
          std::iostream::~basic_iostream();
          MEMORY[0x23EE80250](v46);
          if (v32)
          {
            goto LABEL_97;
          }

          continue;
        }
      }

      if ((v11 & 0x80) != 0)
      {
        goto LABEL_36;
      }

LABEL_37:
      *&v60 = v8;
      *(&v60 + *(v8 - 3)) = v10;
      *&v61 = v9;
      *(&v61 + 1) = MEMORY[0x277D82878] + 16;
      if (SHIBYTE(v64) < 0)
      {
        operator delete(v63[1]);
      }

      *(&v61 + 1) = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v62);
      std::iostream::~basic_iostream();
      MEMORY[0x23EE80250](v66);
      if (v68 >= v7)
      {
        goto LABEL_109;
      }
    }
  }

LABEL_9:
  v69 = 0;
  v70 = 0;
  v71 = 0;
  MEMORY[0x23EE7FFB0](&v69, a1, 80);
  if (a2 >= 0x85 && *(a1 + 20) >= 0xE38E38Fu)
  {
    sub_239E552A0(a3, "Bad triangle count, couldn't parse STL");
    goto LABEL_110;
  }

LABEL_109:
  sub_239E552A0(a3, "");
LABEL_110:
  if (SHIBYTE(v71) < 0)
  {
    operator delete(v69);
  }
}

void sub_239EB6F08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53)
{
  sub_239EB746C(&a53);
  if (SLOBYTE(STACK[0x2A7]) < 0)
  {
    operator delete(STACK[0x290]);
  }

  sub_239EB746C(&STACK[0x2B0]);
  if (*(v53 - 89) < 0)
  {
    operator delete(*(v53 - 112));
  }

  _Unwind_Resume(a1);
}

void sub_239EB6FD0(const void **a1@<X0>, _BYTE *a2@<X1>, std::string *a3@<X8>)
{
  v4 = *a1;
  if (*a1 >= a2)
  {
    v5 = 0;
    v6 = *a1;
  }

  else
  {
    v5 = 0;
    v6 = *a1;
    while (*v6 != 10)
    {
      *a1 = ++v6;
      ++v5;
      if (v6 == a2)
      {
        v6 = a2;
        v5 = a2 - v4;
        break;
      }
    }
  }

  if (v6 < a2)
  {
    v7 = a2 - v6;
    v8 = v6 + 1;
    do
    {
      if (*(v8 - 1) != 10)
      {
        break;
      }

      *a1 = v8++;
      --v7;
    }

    while (v7);
  }

  memset(&__dst, 0, sizeof(__dst));
  v9 = v5;
  if (v5 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v5;
  if (v5)
  {
    memmove(&__dst, v4, v5);
  }

  __dst.__r_.__value_.__s.__data_[v9] = 0;
  size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst.__r_.__value_.__r.__words[0];
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __dst.__r_.__value_.__l.__size_;
  }

  v15 = 92;
  v12 = sub_239EB9114(p_dst, p_dst + size, &v15);
  v13 = &__dst + HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &__dst;
  }

  else
  {
    v13 = (__dst.__r_.__value_.__r.__words[0] + __dst.__r_.__value_.__l.__size_);
    v14 = __dst.__r_.__value_.__r.__words[0];
  }

  std::string::erase(&__dst, v12 - v14, v13 - v12);
  sub_239E91570(&__dst);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_239E5BAE0(a3, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *a3 = __dst;
  }
}

void sub_239EB7190(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_239EB71B4(uint64_t *a1, const std::string *a2, int a3)
{
  a1[22] = 0;
  v6 = MEMORY[0x277D82890] + 104;
  a1[16] = MEMORY[0x277D82890] + 104;
  v7 = a1 + 2;
  v8 = MEMORY[0x277D82890] + 64;
  a1[2] = MEMORY[0x277D82890] + 64;
  v9 = MEMORY[0x277D82818];
  v10 = *(MEMORY[0x277D82818] + 24);
  v11 = *(MEMORY[0x277D82818] + 16);
  *a1 = v11;
  *(a1 + *(v11 - 24)) = v10;
  a1[1] = 0;
  v12 = (a1 + *(*a1 - 24));
  std::ios_base::init(v12, a1 + 3);
  v13 = MEMORY[0x277D82890] + 24;
  v12[1].__vftable = 0;
  v12[1].__fmtflags_ = -1;
  v14 = v9[5];
  v15 = v9[4];
  a1[2] = v15;
  *(v7 + *(v15 - 24)) = v14;
  v16 = v9[1];
  *a1 = v16;
  *(a1 + *(v16 - 24)) = v9[6];
  *a1 = v13;
  a1[16] = v6;
  a1[2] = v8;
  sub_239E989B8((a1 + 3), a2, a3);
  return a1;
}

void sub_239EB7444(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x23EE80250](v1);
  _Unwind_Resume(a1);
}

uint64_t sub_239EB746C(uint64_t a1)
{
  v2 = MEMORY[0x277D82818];
  v3 = *MEMORY[0x277D82818];
  *a1 = *MEMORY[0x277D82818];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x23EE80250](a1 + 128);
  return a1;
}

void sub_239EB75C0(uint64_t a1, unint64_t a2, unint64_t a3, void *a4)
{
  v223[1] = *MEMORY[0x277D85DE8];
  v186 = a4;
  if (a3 <= 0x7F)
  {
    NSLog(&cfstr_FileIsTooSmall.isa);
    goto LABEL_176;
  }

  if (!strncmp("solid", a2, 5uLL))
  {
    v6 = 0;
    while (v6 + 12 > a3 || strncmp("facet normal", (a2 + v6), 0xCuLL))
    {
      if (++v6 == 128)
      {
        goto LABEL_8;
      }
    }

    v7 = 1;
  }

  else
  {
LABEL_8:
    v7 = 0;
  }

  memset(&v222, 0, sizeof(v222));
  v8 = (a2 + a3);
  v219 = 0;
  v220 = 0;
  v221 = 0;
  if (v7)
  {
    v187 = 0;
    v218 = a2;
    v9 = *MEMORY[0x277D82818];
    v10 = *(MEMORY[0x277D82818] + 64);
    v11 = *(MEMORY[0x277D82818] + 72);
    while (1)
    {
      if (v218 >= v8)
      {
        v41 = v187;
LABEL_126:
        v50 = sub_239E91570(&v222);
        std::string::operator=(v50, &v222);
        if (v41 >= 0x10000)
        {
          v51 = 32;
        }

        else
        {
          v51 = 16;
        }

        v52 = v41;
        if (HIWORD(v41))
        {
          v210[1] = 0;
          v210[0] = 0;
          *&v211 = 0;
          sub_239EB2474(v210, v41);
          v75 = 0;
          v76 = vdupq_n_s64(v41 - 1);
          v77 = xmmword_239F9AD30;
          v78 = xmmword_239F9AD40;
          v79 = v210[0] + 8;
          v80 = vdupq_n_s64(4uLL);
          do
          {
            v81 = vmovn_s64(vcgeq_u64(v76, v78));
            if (vuzp1_s16(v81, *v76.i8).u8[0])
            {
              *(v79 - 2) = v75;
            }

            if (vuzp1_s16(v81, *&v76).i8[2])
            {
              *(v79 - 1) = v75 + 1;
            }

            if (vuzp1_s16(*&v76, vmovn_s64(vcgeq_u64(v76, *&v77))).i32[1])
            {
              *v79 = v75 + 2;
              v79[1] = v75 + 3;
            }

            v75 += 4;
            v77 = vaddq_s64(v77, v80);
            v78 = vaddq_s64(v78, v80);
            v79 += 4;
          }

          while (((v41 + 3) & 0x1FFFFFFFCLL) != v75);
          v82 = objc_alloc(MEMORY[0x277CBEA90]);
          v62 = objc_msgSend_initWithBytes_length_(v82, v83, v210[0], 4 * v41);
          v86 = objc_msgSend_bufferAllocator(v186, v84, v85);
          v67 = objc_msgSend_newBufferWithData_type_(v86, v87, v62, 2);

          if (objc_msgSend_conformsToProtocol_(v67, v88, &unk_284D24D98))
          {
            if ((v222.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v89, &v222, 4);
            }

            else
            {
              objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v89, v222.__r_.__value_.__l.__data_, 4);
            }
            v90 = ;
            v91 = v67;
            v93 = objc_msgSend_stringByAppendingString_(v90, v92, @"-Indices");
            objc_msgSend_setName_(v91, v94, v93);
          }
        }

        else
        {
          v210[1] = 0;
          v210[0] = 0;
          *&v211 = 0;
          sub_239EB8C58(v210, v41);
          if (v41)
          {
            v53 = 0;
            v54 = v210[0];
            v55 = (v41 - 1);
            v56 = vdupq_n_s32(v55);
            do
            {
              v57 = vdupq_n_s32(v53);
              v58 = vmovn_s32(vcgeq_u32(v56, vorrq_s8(v57, xmmword_239F9C180)));
              if (vuzp1_s8(v58, *v56.i8).u8[0])
              {
                v54[v53 & 0xFFF8] = v53;
              }

              if (vuzp1_s8(v58, *&v56).i8[1])
              {
                v54[v53 | 1] = v53 | 1;
                v54[v53 | 2] = v53 | 2;
                v54[v53 | 3] = v53 | 3;
              }

              v59 = vmovn_s32(vcgeq_u32(v56, vorrq_s8(v57, xmmword_239F9C170)));
              if (vuzp1_s8(*&v56, v59).i32[1])
              {
                v54[v53 | 4] = v53 | 4;
              }

              if (vuzp1_s8(*&v56, v59).i8[5])
              {
                v54[v53 | 5] = v53 | 5;
              }

              if (vuzp1_s8(*&v56, v59).i8[6])
              {
                v54[v53 | 6] = v53 | 6;
                v54[v53 | 7] = v53 | 7;
              }

              v53 += 8;
            }

            while (v55 - ((v41 - 1) & 7) + 8 != v53);
          }

          v60 = objc_alloc(MEMORY[0x277CBEA90]);
          v62 = objc_msgSend_initWithBytes_length_(v60, v61, v210[0], 2 * v41);
          v65 = objc_msgSend_bufferAllocator(v186, v63, v64);
          v67 = objc_msgSend_newBufferWithData_type_(v65, v66, v62, 2);

          if (objc_msgSend_conformsToProtocol_(v67, v68, &unk_284D24D98))
          {
            if ((v222.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v69, &v222, 4);
            }

            else
            {
              objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v69, v222.__r_.__value_.__l.__data_, 4);
            }
            v70 = ;
            v71 = v67;
            v73 = objc_msgSend_stringByAppendingString_(v70, v72, @"-Indices");
            objc_msgSend_setName_(v71, v74, v73);
          }
        }

        if (v210[0])
        {
          v210[1] = v210[0];
          operator delete(v210[0]);
        }

        v95 = [MDLSubmesh alloc];
        v96 = [MDLMaterial alloc];
        v97 = objc_opt_new();
        v99 = objc_msgSend_initWithName_scatteringFunction_(v96, v98, @"STL material", v97);
        v101 = objc_msgSend_initWithIndexBuffer_indexCount_indexType_geometryType_material_(v95, v100, v67, v52, v51, 2, v99);

        v102 = objc_opt_new();
        v105 = objc_msgSend_attributes(v102, v103, v104);
        v107 = objc_msgSend_objectAtIndexedSubscript_(v105, v106, 0);
        objc_msgSend_setName_(v107, v108, @"position");

        v111 = objc_msgSend_attributes(v102, v109, v110);
        v113 = objc_msgSend_objectAtIndexedSubscript_(v111, v112, 0);
        objc_msgSend_setFormat_(v113, v114, 786435);

        v117 = objc_msgSend_attributes(v102, v115, v116);
        v119 = objc_msgSend_objectAtIndexedSubscript_(v117, v118, 0);
        objc_msgSend_setBufferIndex_(v119, v120, 0);

        v123 = objc_msgSend_attributes(v102, v121, v122);
        v125 = objc_msgSend_objectAtIndexedSubscript_(v123, v124, 0);
        objc_msgSend_setOffset_(v125, v126, 0);

        v129 = objc_msgSend_attributes(v102, v127, v128);
        v131 = objc_msgSend_objectAtIndexedSubscript_(v129, v130, 1);
        objc_msgSend_setName_(v131, v132, @"normal");

        v135 = objc_msgSend_attributes(v102, v133, v134);
        v137 = objc_msgSend_objectAtIndexedSubscript_(v135, v136, 1);
        objc_msgSend_setFormat_(v137, v138, 786435);

        v141 = objc_msgSend_attributes(v102, v139, v140);
        v143 = objc_msgSend_objectAtIndexedSubscript_(v141, v142, 1);
        objc_msgSend_setBufferIndex_(v143, v144, 0);

        v147 = objc_msgSend_attributes(v102, v145, v146);
        v149 = objc_msgSend_objectAtIndexedSubscript_(v147, v148, 1);
        objc_msgSend_setOffset_(v149, v150, 12);

        v153 = objc_msgSend_layouts(v102, v151, v152);
        v155 = objc_msgSend_objectAtIndexedSubscript_(v153, v154, 0);
        objc_msgSend_setStride_(v155, v156, 24);

        v159 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v157, v219, v220 - v219);
        if ((v222.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v158, &v222, 4);
        }

        else
        {
          objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v158, v222.__r_.__value_.__l.__data_, 4);
        }
        v160 = ;
        v163 = objc_msgSend_bufferAllocator(v186, v161, v162);
        v165 = objc_msgSend_newBufferWithData_type_(v163, v164, v159, 1);

        if (objc_msgSend_conformsToProtocol_(v165, v166, &unk_284D24D98))
        {
          v167 = v165;
          v169 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v168, @"%@-%@", v160, @"position");
          objc_msgSend_setName_(v167, v170, v169);
        }

        v171 = [MDLMesh alloc];
        v223[0] = v101;
        v173 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v172, v223, 1);
        v175 = objc_msgSend_initWithVertexBuffer_vertexCount_descriptor_submeshes_(v171, v174, v165, v52, v102, v173);

        v178 = objc_msgSend_vertexDescriptor(v186, v176, v177);
        v179 = v178 == 0;

        if (!v179)
        {
          v182 = objc_msgSend_vertexDescriptor(v186, v180, v181);
          objc_msgSend_setVertexDescriptor_(v175, v183, v182);
        }

        objc_msgSend_setName_(v175, v180, v160);
        objc_msgSend_addObject_(v186, v184, v175);

        goto LABEL_172;
      }

      v217 = 0;
      v215 = 0u;
      memset(v216, 0, sizeof(v216));
      *v213 = 0u;
      v214 = 0u;
      v211 = 0u;
      memset(v212, 0, sizeof(v212));
      *v210 = 0u;
      sub_239EB6FD0(&v218, v8, __p);
      sub_239EB71B4(v210, __p, 24);
      if (SBYTE7(v199) < 0)
      {
        operator delete(__p[0]);
      }

      memset(&__str, 0, sizeof(__str));
      sub_239E88B00(v210, &__str);
      v12 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        if (__str.__r_.__value_.__l.__size_ != 5)
        {
          v18 = 1;
LABEL_36:
          operator delete(__str.__r_.__value_.__l.__data_);
          goto LABEL_37;
        }

        p_str = __str.__r_.__value_.__r.__words[0];
      }

      else
      {
        if (HIBYTE(__str.__r_.__value_.__r.__words[2]) != 5)
        {
          goto LABEL_24;
        }

        p_str = &__str;
      }

      data = p_str->__r_.__value_.__l.__data_;
      v15 = p_str->__r_.__value_.__s.__data_[4];
      if (data == 1768714099 && v15 == 100)
      {
        sub_239E88B00(v210, &v222);
        v12 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        if ((*(&__str.__r_.__value_.__s + 23) & 0x80) == 0)
        {
LABEL_24:
          if (v12 != 5)
          {
            goto LABEL_34;
          }

          v17 = &__str;
          goto LABEL_30;
        }
      }

      else if ((*(&__str.__r_.__value_.__s + 23) & 0x80) == 0)
      {
        goto LABEL_24;
      }

      if (__str.__r_.__value_.__l.__size_ != 5)
      {
        goto LABEL_34;
      }

      v17 = __str.__r_.__value_.__r.__words[0];
LABEL_30:
      v19 = v17->__r_.__value_.__l.__data_;
      v20 = v17->__r_.__value_.__s.__data_[4];
      if (v19 != 1701011814 || v20 != 116)
      {
LABEL_34:
        v18 = 1;
        goto LABEL_35;
      }

      sub_239E88B00(v210, &__str);
      v208 = 0;
      v207 = 1065353216;
      v206 = 0;
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        if (__str.__r_.__value_.__l.__size_ != 6)
        {
          goto LABEL_52;
        }

        v22 = __str.__r_.__value_.__r.__words[0];
      }

      else
      {
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) != 6)
        {
          goto LABEL_52;
        }

        v22 = &__str;
      }

      v23 = v22->__r_.__value_.__l.__data_;
      v24 = WORD2(v22->__r_.__value_.__r.__words[0]);
      if (v23 == 1836216174 && v24 == 27745)
      {
        MEMORY[0x23EE80090](v210, &v208);
        MEMORY[0x23EE80090](v210, &v207);
        MEMORY[0x23EE80090](v210, &v206);
      }

LABEL_52:
      v205 = 0;
      v203 = 0u;
      memset(v204, 0, sizeof(v204));
      *v201 = 0u;
      v202 = 0u;
      v199 = 0u;
      memset(v200, 0, sizeof(v200));
      *__p = 0u;
      sub_239EB6FD0(&v218, v8, v190);
      sub_239EB71B4(__p, v190, 24);
      if (SBYTE7(v191) < 0)
      {
        operator delete(v190[0]);
      }

      sub_239E88B00(__p, &__str);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        if (__str.__r_.__value_.__l.__size_ != 5)
        {
          goto LABEL_95;
        }

        v26 = __str.__r_.__value_.__r.__words[0];
      }

      else
      {
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) != 5)
        {
          goto LABEL_95;
        }

        v26 = &__str;
      }

      v27 = v26->__r_.__value_.__l.__data_;
      v28 = v26->__r_.__value_.__s.__data_[4];
      if (v27 == 1702131055 && v28 == 114)
      {
        do
        {
          v197 = 0;
          v195 = 0u;
          memset(v196, 0, sizeof(v196));
          *v193 = 0u;
          v194 = 0u;
          v191 = 0u;
          memset(v192, 0, sizeof(v192));
          *v190 = 0u;
          sub_239EB6FD0(&v218, v8, &v189);
          sub_239EB71B4(v190, &v189, 24);
          if (SHIBYTE(v189.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v189.__r_.__value_.__l.__data_);
          }

          sub_239E88B00(v190, &__str);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            if (__str.__r_.__value_.__l.__size_ != 7)
            {
              LODWORD(v189.__r_.__value_.__l.__data_) = 0;
              v188 = 0;
              goto LABEL_83;
            }

            v31 = __str.__r_.__value_.__r.__words[0];
          }

          else
          {
            if (HIBYTE(__str.__r_.__value_.__r.__words[2]) != 7)
            {
              LODWORD(v189.__r_.__value_.__l.__data_) = 0;
              v188 = 0;
              goto LABEL_80;
            }

            v31 = &__str;
          }

          v32 = v31->__r_.__value_.__l.__data_;
          v33 = *(v31->__r_.__value_.__r.__words + 3);
          if (v32 != 1818521189 || v33 != 1886351212)
          {
            LODWORD(v189.__r_.__value_.__l.__data_) = 0;
            v188 = 0;
            if ((*(&__str.__r_.__value_.__s + 23) & 0x80) != 0)
            {
LABEL_83:
              if (__str.__r_.__value_.__l.__size_ == 6)
              {
                v35 = __str.__r_.__value_.__r.__words[0];
                goto LABEL_85;
              }

              goto LABEL_91;
            }

LABEL_80:
            if (HIBYTE(__str.__r_.__value_.__r.__words[2]) == 6)
            {
              v35 = &__str;
LABEL_85:
              v36 = v35->__r_.__value_.__l.__data_;
              v37 = WORD2(v35->__r_.__value_.__r.__words[0]);
              if (v36 == 1953654134 && v37 == 30821)
              {
                MEMORY[0x23EE80090](v190, &v189);
                MEMORY[0x23EE80090](v190, &v188 + 4);
                MEMORY[0x23EE80090](v190, &v188);
              }
            }

LABEL_91:
            sub_239E798A4(&v219, &v189);
            sub_239E798A4(&v219, &v188 + 1);
            sub_239E798A4(&v219, &v188);
            sub_239E798A4(&v219, &v208);
            sub_239E798A4(&v219, &v207);
            sub_239E798A4(&v219, &v206);
            ++v187;
            v30 = 1;
            goto LABEL_92;
          }

          v30 = 0;
LABEL_92:
          v190[0] = v9;
          *(v190 + *(v9 - 3)) = v10;
          *&v191 = v11;
          *(&v191 + 1) = MEMORY[0x277D82878] + 16;
          if (SHIBYTE(v194) < 0)
          {
            operator delete(v193[1]);
          }

          *(&v191 + 1) = MEMORY[0x277D82868] + 16;
          std::locale::~locale(v192);
          std::iostream::~basic_iostream();
          MEMORY[0x23EE80250](v196);
        }

        while ((v30 & 1) != 0);
      }

LABEL_95:
      sub_239EB6FD0(&v218, v8, v190);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      *&__str.__r_.__value_.__l.__data_ = *v190;
      __str.__r_.__value_.__r.__words[2] = v191;
      sub_239E91570(&__str);
      std::string::operator=(&__str, &__str);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        if (__str.__r_.__value_.__l.__size_ != 8)
        {
          goto LABEL_103;
        }

        v39 = __str.__r_.__value_.__r.__words[0];
      }

      else
      {
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) != 8)
        {
          goto LABEL_103;
        }

        v39 = &__str;
      }

      if (v39->__r_.__value_.__r.__words[0] == 0x7465636166646E65)
      {
        __p[0] = v9;
        *(__p + *(v9 - 3)) = v10;
        *&v199 = v11;
        *(&v199 + 1) = MEMORY[0x277D82878] + 16;
        if (SHIBYTE(v202) < 0)
        {
          operator delete(v201[1]);
        }

        *(&v199 + 1) = MEMORY[0x277D82868] + 16;
        std::locale::~locale(v200);
        std::iostream::~basic_iostream();
        MEMORY[0x23EE80250](v204);
        goto LABEL_34;
      }

LABEL_103:
      NSLog(&cfstr_EndfacetTagMis.isa);
      __p[0] = v9;
      *(__p + *(v9 - 3)) = v10;
      *&v199 = v11;
      *(&v199 + 1) = MEMORY[0x277D82878] + 16;
      if (SHIBYTE(v202) < 0)
      {
        operator delete(v201[1]);
      }

      *(&v199 + 1) = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v200);
      std::iostream::~basic_iostream();
      MEMORY[0x23EE80250](v204);
      v18 = 0;
LABEL_35:
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_36;
      }

LABEL_37:
      v210[0] = v9;
      *(v210 + *(v9 - 3)) = v10;
      *&v211 = v11;
      *(&v211 + 1) = MEMORY[0x277D82878] + 16;
      if (SHIBYTE(v214) < 0)
      {
        operator delete(v213[1]);
      }

      *(&v211 + 1) = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v212);
      std::iostream::~basic_iostream();
      MEMORY[0x23EE80250](v216);
      if ((v18 & 1) == 0)
      {
        goto LABEL_172;
      }
    }
  }

  MEMORY[0x23EE7FFB0](&v222, a2, 80);
  if (a3 < 0x85)
  {
    v40 = 0;
LABEL_114:
    sub_239E95D48(&v219, 18 * v40);
    if (v40)
    {
      v42 = 0;
      v43 = a2 + 84;
      v44 = (a2 + 104);
      while (1)
      {
        v45 = (v43 + 50 * v42);
        if (v45 + 12 > v8)
        {
          v40 = v42;
          goto LABEL_125;
        }

        v46 = v45[1];
        LODWORD(v210[0]) = *v45;
        LODWORD(__p[0]) = v46;
        LODWORD(v190[0]) = v45[2];
        v47 = 3;
        v48 = v44;
        do
        {
          v49 = *(v48 - 1);
          LODWORD(__str.__r_.__value_.__l.__data_) = *(v48 - 2);
          LODWORD(v189.__r_.__value_.__l.__data_) = v49;
          LODWORD(v218) = *v48;
          sub_239E798A4(&v219, &__str);
          sub_239E798A4(&v219, &v189);
          sub_239E798A4(&v219, &v218);
          sub_239E798A4(&v219, v210);
          sub_239E798A4(&v219, __p);
          sub_239E798A4(&v219, v190);
          v48 += 3;
          --v47;
        }

        while (v47);
        if (v45 + 50 > v8)
        {
          break;
        }

        ++v42;
        v44 = (v44 + 50);
        if (v42 == v40)
        {
          goto LABEL_125;
        }
      }

      v40 = v42 + 1;
    }

LABEL_125:
    v41 = 3 * v40;
    goto LABEL_126;
  }

  v40 = *(a2 + 80);
  if (v40 < 0xE38E38F)
  {
    goto LABEL_114;
  }

  NSLog(&cfstr_BadTriangleCou.isa);
LABEL_172:
  if (v219)
  {
    v220 = v219;
    operator delete(v219);
  }

  if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v222.__r_.__value_.__l.__data_);
  }

LABEL_176:

  v185 = *MEMORY[0x277D85DE8];
}

void sub_239EB8938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  v19 = STACK[0x2D0];
  if (STACK[0x2D0])
  {
    STACK[0x2D8] = v19;
    operator delete(v19);
  }

  v20 = *(v17 - 152);
  if (v20)
  {
    *(v17 - 144) = v20;
    operator delete(v20);
  }

  if (*(v17 - 105) < 0)
  {
    operator delete(*(v17 - 128));
  }

  _Unwind_Resume(a1);
}

void sub_239EB8C58(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 1;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 2 * a2;
    }
  }

  else
  {
    sub_239EB917C(a1, a2 - v2);
  }
}

BOOL sub_239EB8C88(char *a1, void *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = fopen(a1, "wb");
  if (v4)
  {
    memset(&__str, 0, sizeof(__str));
    sub_239E552A0(&__str, a1);
    p_str = __str.__r_.__value_.__r.__words[0];
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_str = &__str;
    }

    memset(&__p, 0, sizeof(__p));
    memset(&v32, 0, sizeof(v32));
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    v7 = &p_str[-1].__r_.__value_.__r.__words[2] + 7;
    do
    {
      if (!size)
      {
        goto LABEL_14;
      }

      v8 = v7[size--];
    }

    while (v8 != 46);
    if (size == -1)
    {
LABEL_14:
      v10 = 0;
      v9 = 0;
      std::string::operator=(&__p, &__str);
      goto LABEL_15;
    }

    std::string::basic_string(__ptr, &__str, size + 1, 0xFFFFFFFFFFFFFFFFLL, &v31);
    v9 = *__ptr;
    v10 = __ptr[23];
    std::string::basic_string(__ptr, &__str, 0, size, &v31);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = *__ptr;
LABEL_15:
    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v12 = __p.__r_.__value_.__l.__size_;
    }

    v13 = ~v12;
    v14 = (p_p + v12 - 1);
    do
    {
      if (v13 == -1)
      {
        goto LABEL_27;
      }

      v15 = v14->__r_.__value_.__s.__data_[0];
      v14 = (v14 - 1);
      ++v13;
    }

    while (v15 != 47);
    if (!v13)
    {
LABEL_27:
      std::string::operator=(&v32, &__p);
      goto LABEL_28;
    }

    std::string::basic_string(__ptr, &__p, -v13, 0xFFFFFFFFFFFFFFFFLL, &v31);
    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }

    v32 = *__ptr;
LABEL_28:
    v37 = 0u;
    v38 = 0u;
    v36 = 0u;
    memset(__ptr, 0, sizeof(__ptr));
    v16 = &v32;
    if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v16 = v32.__r_.__value_.__r.__words[0];
    }

    snprintf(__ptr, 0x50uLL, "%s", v16);
    v17 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
    if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v17 = v32.__r_.__value_.__l.__size_;
    }

    if (v17 >= 0x4F)
    {
      v17 = 79;
    }

    memset(&__ptr[v17], 32, 80 - v17);
    fwrite(__ptr, 1uLL, 0x50uLL, v4);
    memset(__ptr, 0, 24);
    sub_239E73820(v3, __ptr);
    v31 = -1227133513 * ((*&__ptr[8] - *__ptr) >> 5);
    fwrite(&v31, 1uLL, 4uLL, v4);
    v18 = v31 < 0x51EB852uLL;
    if (v31 >= 0x51EB852)
    {
      fclose(v4);
      NSLog(&cfstr_TooManyTriangl.isa);
    }

    else
    {
      v19 = malloc_type_malloc(50 * v31, 0x100004077774924uLL);
      if (v31)
      {
        v20 = 0;
        v21 = 0;
        v22 = v19 + 20;
        do
        {
          v23 = &v19[50 * v21];
          *v23 = 0;
          *(v23 + 2) = 0;
          v24 = *__ptr + v20;
          v25 = 16;
          v26 = v22;
          do
          {
            v27 = *(v24 + v25);
            *(v26 - 1) = v27;
            *v26 = DWORD2(v27);
            v26 += 3;
            v25 += 16;
          }

          while (v25 != 64);
          *(v23 + 24) = 0;
          ++v21;
          v22 = (v22 + 50);
          v20 += 224;
        }

        while (v21 < v31);
        v28 = 50 * v31;
      }

      else
      {
        v28 = 0;
      }

      fwrite(v19, 1uLL, v28, v4);
      fclose(v4);
    }

    if (*__ptr)
    {
      *&__ptr[8] = *__ptr;
      operator delete(*__ptr);
    }

    if (v10 < 0)
    {
      operator delete(v9);
    }

    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v18 = 0;
  }

  v29 = *MEMORY[0x277D85DE8];
  return v18;
}

void sub_239EB907C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31)
{
  if (v33 < 0)
  {
    operator delete(v32);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(a1);
}

unsigned __int8 *sub_239EB9114(void *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  result = memchr(a1, *a3, a2 - a1);
  if (!result)
  {
    result = a2;
  }

  v6 = result + 1;
  if (result != a2 && v6 != a2)
  {
    do
    {
      v8 = *v6;
      if (v8 != *a3)
      {
        *result++ = v8;
      }

      ++v6;
    }

    while (v6 != a2);
  }

  return result;
}

void sub_239EB917C(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 1)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 2 * a2);
      v5 += 2 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 1);
    if (v8 < 0)
    {
      sub_239E797B4();
    }

    v9 = v4 - v6;
    if (v9 > v8)
    {
      v8 = v9;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_239EA1164(a1, v10);
    }

    v11 = (2 * (v7 >> 1));
    bzero(v11, 2 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[2 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void sub_239EB92A4(uint64_t a1)
{
  *a1 = 0x3FC90FDB40200000;
  *(a1 + 8) = 1070141403;
  *(a1 + 16) = 1036831949;
  *(a1 + 48) = xmmword_239F9C190;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 84) = xmmword_239F9C1A0;
  operator new();
}

uint64_t sub_239EB9338(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (v2)
  {
    if (*v2)
    {
      MEMORY[0x23EE802C0](*v2, 0x1000C40265AC83CLL);
    }

    MEMORY[0x23EE802C0](v2, 0x20C4093837F09);
  }

  free(*(a1 + 136));
  return a1;
}

void sub_239EB93A4(double a1, double a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, float32x4_t *a8, unsigned int a9, uint64_t a10)
{
  v12 = a8;
  v14 = (a6 * a5);
  if (a7)
  {
    v15 = 0uLL;
    if (v14 >= 1)
    {
      v16 = (a6 * a5);
      v17 = a8;
      do
      {
        v18 = *v17++;
        HIDWORD(a2) = v18.i32[1];
        v15 = vaddq_f32(v18, v15);
        --v16;
      }

      while (v16);
    }

    *&a2 = v14;
    __asm { FMOV            V2.4S, #1.0 }

    v23 = vmulq_f32(v15, vdivq_f32(_Q2, vdupq_lane_s32(*&a2, 0)));
    *(a4 + 68) = v23.i64[0];
    *(a4 + 76) = v23.i32[2];
    v24 = *(a4 + 64) * v23.f32[0];
  }

  else
  {
    v24 = -0.0019;
  }

  v94 = 0;
  v93 = 0u;
  memset(v92, 0, sizeof(v92));
  sub_239EB9D7C(v92, *(a4 + 48), *(a4 + 52), *(a4 + 56), *(a4 + 60), v24, *(a4 + 80), *(a4 + 84));
  if (a9)
  {
    if (a9 > 2)
    {
      if (a9 == 3 && v14 >= 1)
      {
        v73 = (a10 + 12);
        do
        {
          v74 = *v12++;
          v75.f32[0] = sub_239EB99E0(v92, v74.f32[0]);
          v88 = v75;
          v91 = sub_239EB99E0(&v92[1] + 2, v74.f32[1]);
          v76 = sub_239EB99E0(&v93, v74.f32[2]);
          v77 = v88;
          v77.f32[1] = v91;
          v77.f32[2] = v76;
          *v78.i32 = v88.f32[0] * 0.212655 + v91 * 0.715158 + v76 * 0.072187;
          v79 = vdupq_lane_s32(v78, 0);
          v79.i32[3] = 1.0;
          v80 = vmlaq_n_f32(vnegq_f32(v79), v77, COERCE_FLOAT(*(a4 + 88)));
          v77.i64[0] = 0xBF000000BF000000;
          v77.i64[1] = 0xBF000000BF000000;
          v81 = vmlaq_n_f32(vaddq_f32(v79, v77), v80, COERCE_FLOAT(*(a4 + 92)));
          v77.i64[0] = 0x3F0000003F000000;
          v77.i64[1] = 0x3F0000003F000000;
          v82 = vmlaq_n_f32(v77, v81, COERCE_FLOAT(*(a4 + 96)));
          *(v73 - 3) = v82.i64[0];
          *(v73 - 1) = v82.i32[2];
          *v73 = 1065353216;
          v73 += 4;
          --v14;
        }

        while (v14);
      }
    }

    else if (v14 >= 1)
    {
      v26 = (a10 + 4);
      v27 = 0uLL;
      do
      {
        v28 = *v12;
        if (a9 != 2)
        {
          LODWORD(v29) = v12->i64[1];
          LODWORD(v30) = HIDWORD(v12->i64[0]);
          v31.f32[0] = sub_239EB99E0(v92, v28.f32[0]);
          v89 = v31;
          v86 = sub_239EB99E0(&v92[1] + 2, v30);
          v32 = sub_239EB99E0(&v93, v29);
          v33 = v89;
          v33.f32[1] = v86;
          v33.f32[2] = v32;
          v34 = v89.f32[0] * 0.212655 + v86 * 0.715158 + v32 * 0.072187;
          *&v34 = v34;
          v35 = vdupq_lane_s32(*&v34, 0);
          v35.i32[3] = 1.0;
          v36 = vmlaq_n_f32(vnegq_f32(v35), v33, COERCE_FLOAT(*(a4 + 88)));
          v27 = 0uLL;
          v33.i64[0] = 0xBF000000BF000000;
          v33.i64[1] = 0xBF000000BF000000;
          v37 = vmlaq_n_f32(vaddq_f32(v35, v33), v36, COERCE_FLOAT(*(a4 + 92)));
          v35.i64[0] = 0x3F0000003F000000;
          v35.i64[1] = 0x3F0000003F000000;
          v28 = vmlaq_n_f32(v35, v37, COERCE_FLOAT(*(a4 + 96)));
        }

        v28.i32[3] = 0;
        v38 = vmaxnmq_f32(v28, v27);
        v39 = v38.i32[0] & 0x7FFFFFFF;
        v40 = HIWORD(v38.i32[0]) & 0x8000;
        if ((v38.i32[0] & 0x7FFFFFFFu) <= 0x387FFFFF)
        {
          if (v39 >= 0x33000001)
          {
            v42 = 126 - (v39 >> 23);
            v43 = v38.i32[0] & 0x7FFFFF | 0x800000;
            v44 = v43 << ((v39 >> 23) - 94);
            v45 = v43 >> v42;
            LOWORD(v40) = v45 | v38.i16[1] & 0x8000;
            if (v44 > 0x80000000 || (v44 == 0x80000000 ? (_ZF = (v45 & 1) == 0) : (_ZF = 1), !_ZF))
            {
              LOWORD(v40) = v40 + 1;
            }
          }
        }

        else
        {
          v41 = v40 | ((v39 + 134221823 + ((v39 >> 13) & 1)) >> 13);
          v40 |= 0x7C00u;
          if (v39 > 0x477FEFFF)
          {
            LOWORD(v41) = v40;
          }

          if (v39 != 2139095040)
          {
            v40 |= (v39 >> 13) & 0x3FF | (((v39 >> 13) & 0x3FF) == 0);
          }

          if (v39 <= 0x7F7FFFFF)
          {
            LOWORD(v40) = v41;
          }
        }

        *(v26 - 2) = v40;
        v47 = v38.i32[1] & 0x7FFFFFFF;
        v48 = HIWORD(v38.i32[1]) & 0x8000;
        if ((v38.i32[1] & 0x7FFFFFFFu) <= 0x387FFFFF)
        {
          if (v47 >= 0x33000001)
          {
            v50 = 126 - (v47 >> 23);
            v51 = v38.i32[1] & 0x7FFFFF | 0x800000;
            v52 = v51 << ((v47 >> 23) - 94);
            v53 = v51 >> v50;
            LOWORD(v48) = v53 | v38.i16[3] & 0x8000;
            if (v52 > 0x80000000 || (v52 == 0x80000000 ? (v54 = (v53 & 1) == 0) : (v54 = 1), !v54))
            {
              LOWORD(v48) = v48 + 1;
            }
          }
        }

        else
        {
          v49 = v48 | ((v47 + 134221823 + ((v47 >> 13) & 1)) >> 13);
          v48 |= 0x7C00u;
          if (v47 > 0x477FEFFF)
          {
            LOWORD(v49) = v48;
          }

          if (v47 != 2139095040)
          {
            v48 |= (v47 >> 13) & 0x3FF | (((v47 >> 13) & 0x3FF) == 0);
          }

          if (v47 <= 0x7F7FFFFF)
          {
            LOWORD(v48) = v49;
          }
        }

        *(v26 - 1) = v48;
        v55 = v38.i32[2] & 0x7FFFFFFF;
        v56 = HIWORD(v38.i32[2]) & 0x8000;
        if ((v38.i32[2] & 0x7FFFFFFFu) <= 0x387FFFFF)
        {
          if (v55 >= 0x33000001)
          {
            v58 = 126 - (v55 >> 23);
            v59 = v38.i32[2] & 0x7FFFFF | 0x800000;
            v60 = v59 << ((v55 >> 23) - 94);
            v61 = v59 >> v58;
            LOWORD(v56) = v61 | v38.i16[5] & 0x8000;
            if (v60 > 0x80000000 || (v60 == 0x80000000 ? (v62 = (v61 & 1) == 0) : (v62 = 1), !v62))
            {
              LOWORD(v56) = v56 + 1;
            }
          }
        }

        else
        {
          v57 = v56 | ((v55 + 134221823 + ((v55 >> 13) & 1)) >> 13);
          v56 |= 0x7C00u;
          if (v55 > 0x477FEFFF)
          {
            LOWORD(v57) = v56;
          }

          if (v55 != 2139095040)
          {
            v56 |= (v55 >> 13) & 0x3FF | (((v55 >> 13) & 0x3FF) == 0);
          }

          if (v55 <= 0x7F7FFFFF)
          {
            LOWORD(v56) = v57;
          }
        }

        *v26 = v56;
        v26[1] = 15360;
        ++v12;
        v26 += 4;
        --v14;
      }

      while (v14);
    }
  }

  else if (v14 >= 1)
  {
    v63 = (a10 + 3);
    v25.i32[0] = 1132396544;
    v84 = v25;
    v85 = vdupq_n_s32(0x437F0000u);
    v83 = vdupq_n_s32(0x42FF0000u);
    do
    {
      v64 = *v12++;
      v65.f32[0] = sub_239EB99E0(v92, v64.f32[0]);
      v90 = v65;
      v87 = sub_239EB99E0(&v92[1] + 2, v64.f32[1]);
      v66 = sub_239EB99E0(&v93, v64.f32[2]);
      v67 = v90;
      v67.f32[1] = v87;
      v67.f32[2] = v66;
      v68 = vmulq_n_f32(v67, COERCE_FLOAT(*(a4 + 88)));
      v69 = v90.f32[0] * 0.212655 + v87 * 0.715158 + v66 * 0.072187;
      *&v69 = v69;
      v70 = vdupq_lane_s32(*&v69, 0);
      v70.i32[3] = 1.0;
      v68.i32[3] = 1.0;
      v71.i64[0] = 0xBF000000BF000000;
      v71.i64[1] = 0xBF000000BF000000;
      v72 = vminnmq_f32(vmaxnmq_f32(vmlaq_n_f32(v83, vmlaq_n_f32(vaddq_f32(v70, v71), vsubq_f32(v68, v70), COERCE_FLOAT(*(a4 + 92))), vmulq_f32(*(a4 + 96), v84).f32[0]), 0), v85);
      *(v63 - 3) = v72.f32[0];
      *(v63 - 2) = v72.f32[1];
      *(v63 - 1) = v72.f32[2];
      *v63 = -1;
      v63 += 4;
      --v14;
    }

    while (v14);
  }
}

float sub_239EB99E0(float *a1, float a2)
{
  v3 = fmaxf(a2 - a1[2], 0.0) * a1[1];
  v4 = a1[3];
  if (v3 > v4)
  {
    v5 = a1[4];
    v3 = (logf((v5 * (v3 - v4)) + 1.0) / v5) + v4;
  }

  v6 = powf(v3, *a1) * a1[5];
  if (v6 < 0.0)
  {
    v6 = 0.0;
  }

  return fminf(v6, 1.0);
}

void sub_239EB9A6C(uint64_t *a1, float *a2)
{
  if (*a2 >= 1.0)
  {
    v2 = *a2;
  }

  if (a2[1] >= 0.0)
  {
    v3 = *(a2 + 1);
  }

  v4 = *a1;
  if (v4)
  {
    MEMORY[0x23EE802C0](v4, 0x1000C40265AC83CLL);
  }

  operator new();
}

float *sub_239EB9D7C(float *a1, float a2, float a3, float a4, float a5, float a6, float a7, float a8)
{
  v15 = sub_239EB9E1C(a1, a2, a5, a6, a7, a8);
  sub_239EB9E1C(v15 + 6, a3, a5, a6, a7, a8);
  sub_239EB9E1C(a1 + 12, a4, a5, a6, a7, a8);
  return a1;
}

float *sub_239EB9E1C(float *a1, float a2, float a3, float a4, float a5, float a6)
{
  *a1 = a2;
  v11 = exp2(a3 + 2.47393);
  a1[1] = v11;
  a1[2] = a4;
  v12 = exp2(a5);
  a1[3] = v12;
  v13 = exp2(a6) - v12;
  v14 = 11.3137085 - v12;
  v15 = 0.0;
  v16 = 1.0;
  if (logf(v13 + 1.0) > v14)
  {
    do
    {
      v15 = v16;
      v16 = v16 + v16;
    }

    while ((logf((v16 * v13) + 1.0) / v16) > v14);
  }

  v17 = 30;
  do
  {
    if ((logf((((v16 + v15) * 0.5) * v13) + 1.0) / ((v16 + v15) * 0.5)) >= v14)
    {
      v15 = (v16 + v15) * 0.5;
    }

    else
    {
      v16 = (v16 + v15) * 0.5;
    }

    --v17;
  }

  while (v17);
  a1[4] = (v15 + v16) * 0.5;
  v18 = exp2(a2 * -3.5);
  a1[5] = v18;
  return a1;
}

uint64_t sub_239EB9F58(uint64_t a1, double a2, double a3, double a4)
{
  *(a1 + 120) = a2;
  *(a1 + 128) = a3;
  *(a1 + 136) = a4;
  sub_239EBA05C(a2, a3, a4, a1, &unk_27DF898E0, a1);
  sub_239EBA05C(a2, a3, a4, a1, &unk_27DF8BAA0, a1 + 36);
  sub_239EBA05C(a2, a3, a4, a1, &unk_27DF8DC60, a1 + 72);
  sub_239EBA2DC(a2, a3, a4, a1, &unk_27DF8FE20);
  *&v8 = v8;
  *(a1 + 108) = LODWORD(v8);
  sub_239EBA2DC(a2, a3, a4, a1, &unk_27DF901E0);
  *&v9 = v9;
  *(a1 + 112) = LODWORD(v9);
  sub_239EBA2DC(a2, a3, a4, a1, &unk_27DF905A0);
  *&v10 = v10;
  *(a1 + 116) = LODWORD(v10);
  return a1;
}

void sub_239EBA05C(double a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a1;
  v10 = a1 - trunc(a1);
  v11 = pow(a3 * 0.636619772, 0.333333333);
  v12 = 0;
  v13.f64[0] = 1.0 - v11;
  v14 = v13.f64[0] * (v13.f64[0] * v13.f64[0] * (v13.f64[0] * v13.f64[0]));
  v15 = v11 * (v11 * v11 * (v11 * v11));
  v16 = 54 * v9;
  v17.f64[0] = v11;
  v17.f64[1] = 1.0 - v11;
  v18 = vmulq_f64(v17, v17);
  v19 = vmulq_f64(v17, v18);
  v13.f64[1] = v11;
  v20 = vmulq_f64(v13, v13);
  v21 = vmulq_f64(v20, v20);
  __asm { FMOV            V0.2D, #10.0 }

  v27 = vmulq_f64(vmulq_f64(v18, _Q0), vextq_s8(v19, v19, 8uLL));
  __asm { FMOV            V3.2D, #5.0 }

  v29 = vmulq_f64(v21, vmulq_f64(vextq_s8(v13, v13, 8uLL), _Q3));
  v30.f64[0] = v27.f64[0];
  v30.f64[1] = v29.f64[1];
  v31.f64[1] = v27.f64[1];
  v31.f64[0] = v14;
  v32 = (a5 + 8 * (54 * v9 - 54) + 216);
  do
  {
    v33.f64[0] = *(v32 - 27);
    v34.f64[0] = *(v32 - 9);
    v33.f64[1] = *v32;
    v34.f64[1] = v32[9];
    *v33.f64 = (1.0 - v10) * (1.0 - a2) * (vaddvq_f64(vmlaq_f64(vmulq_f64(v34, v30), v31, v33)) + v32[18] * v15 + v29.f64[0] * *(v32 - 18));
    *(a6 + v12) = LODWORD(v33.f64[0]);
    v12 += 4;
    ++v32;
  }

  while (v12 != 36);
  v35 = 0;
  v36 = (a5 + 8 * (v16 + 486) + 216);
  do
  {
    v37.f64[0] = *(v36 - 27);
    v38.f64[0] = *(v36 - 9);
    v37.f64[1] = *v36;
    v38.f64[1] = v36[9];
    *v37.f64 = *(a6 + v35) + (1.0 - v10) * a2 * (vaddvq_f64(vmlaq_f64(vmulq_f64(v38, v30), v31, v37)) + v36[18] * v15 + v29.f64[0] * *(v36 - 18));
    *(a6 + v35) = LODWORD(v37.f64[0]);
    v35 += 4;
    ++v36;
  }

  while (v35 != 36);
  if (v9 != 10)
  {
    v39 = 0;
    v40 = a5 + 8 * v16;
    v41 = (v40 + 144);
    do
    {
      v42.f64[0] = *(v41 - 18);
      v43.f64[0] = *v41;
      v42.f64[1] = v41[9];
      v43.f64[1] = v41[18];
      *v42.f64 = *(a6 + v39) + v10 * (1.0 - a2) * (vaddvq_f64(vmlaq_f64(vmulq_f64(v43, v30), v31, v42)) + v41[27] * v15 + v29.f64[0] * *(v41 - 9));
      *(a6 + v39) = LODWORD(v42.f64[0]);
      v39 += 4;
      ++v41;
    }

    while (v39 != 36);
    v44 = 0;
    v45 = (v40 + 4320);
    do
    {
      v46.f64[0] = v45[9];
      v47.f64[0] = v45[18];
      v47.f64[1] = v45[27];
      v46.f64[1] = v45[36];
      v48 = *(a6 + v44) + v10 * a2 * (vaddvq_f64(vmulq_f64(v27, v47)) + *v45 * v14 + v45[45] * v15 + vaddvq_f64(vmulq_f64(v29, v46)));
      *(a6 + v44) = v48;
      v44 += 4;
      ++v45;
    }

    while (v44 != 36);
  }
}

void sub_239EBA2DC(double a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  v7 = a1;
  v8 = a1 - trunc(a1);
  v9 = pow(a3 * 0.636619772, 0.333333333);
  v10.f64[0] = 1.0 - v9;
  v11 = v10.f64[0] * v10.f64[0] * (v10.f64[0] * v10.f64[0]);
  v26.f64[0] = (1.0 - v9) * v11;
  v12 = v9 * v9 * (v9 * v9);
  v13 = v9 * v12;
  v14 = (a5 + 8 * (6 * v7 - 6));
  v15 = v9 * 5.0 * v11;
  v16 = (1.0 - v9) * 5.0;
  v10.f64[1] = v9;
  v17 = vmulq_f64(v10, v10);
  v18 = vmulq_f64(v10, v17);
  __asm { FMOV            V17.2D, #10.0 }

  v24 = vmulq_f64(v17, _Q17);
  v25 = vmulq_f64(vextq_s8(v24, v24, 8uLL), v18);
  v26.f64[1] = v15;
  v27 = v16 * v12;
  *v24.i64 = (vaddvq_f64(vmlaq_f64(vmulq_f64(v14[1], v25), v26, *v14)) + v14[2].f64[0] * v27 + v14[2].f64[1] * v13) * (1.0 - a2);
  v28 = (a5 + 8 * (6 * v7 + 54));
  v29 = (*v24.i64 + (vaddvq_f64(vmlaq_f64(vmulq_f64(v28[1], v25), v26, *v28)) + v28[2].f64[0] * v27 + v28[2].f64[1] * v13) * a2) * (1.0 - v8);
  if (v7 != 10)
  {
    v30 = (a5 + 48 * v7);
    v31 = v29 + ((vaddvq_f64(vmlaq_f64(vmulq_f64(v30[1], v25), v26, *v30)) + v30[2].f64[0] * v27 + v30[2].f64[1] * v13) * (1.0 - a2) + (vaddvq_f64(vmlaq_f64(vmulq_f64(v30[31], v25), v26, v30[30])) + v30[32].f64[0] * v27 + v30[32].f64[1] * v13) * a2) * v8;
  }
}

void sub_239EBA438(float *a1, float32x4_t *a2, float a3, float a4, float a5, float a6)
{
  v12 = __sincosf_stret(a4);
  v13 = __sincosf_stret(a5);
  v14 = (v13.__cosval * v12.__cosval) + ((v13.__sinval * v12.__sinval) * cosf(a6 - a3));
  v15 = 0.0;
  if (v14 <= 1.0)
  {
    if (v14 >= -1.0)
    {
      v15 = acosf(v14);
    }

    else
    {
      v15 = 3.1416;
    }
  }

  v16 = 1.5698;
  if (a4 <= 1.5698)
  {
    v16 = a4;
  }

  v17 = cosf(v16);
  v20 = a1[27] * sub_239EBA5FC(v17, v15, a1, a1);
  v19 = a1[28] * sub_239EBA5FC(v17, v15, a1, a1 + 9);
  vmulq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(xmmword_239F9C1C0, v20), xmmword_239F9C1D0, v19), xmmword_239F9C1E0, a1[29] * sub_239EBA5FC(v17, v15, a1, a1 + 18)), vdupq_n_s32(0x3C96B90Du));
  if ((a4 + -1.5698) > 0.0 && COERCE_FLOAT(HIDWORD(*a2)) >= 0.0)
  {
    v18 = vmulq_f32(*a2, *a2);
  }
}

float sub_239EBA5FC(float a1, float a2, uint64_t a3, float *a4)
{
  v7 = cosf(a2);
  v8 = expf(a4[4] * a2);
  return ((((a4[2] + (a4[3] * v8)) + (a4[5] * (v7 * v7))) + ((a4[6] * ((v7 * v7) + 1.0)) / (sqrtf(((a4[8] + (v7 * -2.0)) * a4[8]) + 1.0) * (((a4[8] + (v7 * -2.0)) * a4[8]) + 1.0)))) + (a4[7] * sqrtf(a1))) * ((expf(a4[1] / (a1 + 0.01)) * *a4) + 1.0);
}

void sub_239EBA8D4(_Unwind_Exception *a1)
{
  MEMORY[0x23EE802C0](v2, 0x10A1C40D5506429);

  _Unwind_Resume(a1);
}

void sub_239EBA9C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MDLLight;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_239EBAD38(_Unwind_Exception *a1)
{
  MEMORY[0x23EE802C0](v2, 0x10A1C409F50DDA3);

  _Unwind_Resume(a1);
}

void sub_239EBB06C(_Unwind_Exception *a1)
{
  MEMORY[0x23EE802C0](v2, 0x10A1C402B854A62);

  _Unwind_Resume(a1);
}

void sub_239EBB138(const void **a1@<X0>, _BYTE *a2@<X1>, std::string *a3@<X8>)
{
  v6 = *a1;
  if (*a1 >= a2)
  {
    v9 = 0;
    memset(&__dst, 0, sizeof(__dst));
  }

  else
  {
    v7 = 0;
    v8 = a2 - v6;
    while (v6[v7] != 10)
    {
      *a1 = &v6[++v7];
      if (&v6[v7] == a2)
      {
        goto LABEL_8;
      }
    }

    v8 = v7;
LABEL_8:
    memset(&__dst, 0, sizeof(__dst));
    v9 = v8;
    if (v8 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v8;
    if (v8)
    {
      memmove(&__dst, v6, v8);
    }

    else
    {
      v9 = 0;
    }
  }

  __dst.__r_.__value_.__s.__data_[v9] = 0;
  v10 = *a1;
  if (*a1 < a2)
  {
    do
    {
      if (*v10 != 10)
      {
        break;
      }

      *a1 = ++v10;
    }

    while (v10 != a2);
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = (&__dst + HIBYTE(__dst.__r_.__value_.__r.__words[2]));
  }

  else
  {
    v11 = (__dst.__r_.__value_.__r.__words[0] + __dst.__r_.__value_.__l.__size_);
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst.__r_.__value_.__r.__words[0];
  }

  v13 = MEMORY[0x277D85DE0];
  while (v11 != p_dst)
  {
    v15 = SHIBYTE(v11[-1].__r_.__value_.__r.__words[2]);
    v11 = (v11 - 1);
    v14 = v15;
    if ((v15 & 0x80000000) != 0)
    {
      v16 = __maskrune(v14, 0x4000uLL);
    }

    else
    {
      v16 = *(v13 + 4 * v14 + 60) & 0x4000;
    }

    if (!v16)
    {
      p_dst = (&v11->__r_.__value_.__l.__data_ + 1);
      break;
    }
  }

  v17 = &__dst + HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = &__dst;
  }

  else
  {
    v17 = (__dst.__r_.__value_.__r.__words[0] + __dst.__r_.__value_.__l.__size_);
    v18 = __dst.__r_.__value_.__r.__words[0];
  }

  std::string::erase(&__dst, p_dst - v18, v17 - p_dst);
  v19 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  v20 = __dst.__r_.__value_.__r.__words[0];
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &__dst;
  }

  else
  {
    v21 = __dst.__r_.__value_.__r.__words[0];
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __dst.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v23 = (v21 + size);
    v24 = v21;
    while (1)
    {
      v25 = v24->__r_.__value_.__s.__data_[0];
      if (!((v25 & 0x80000000) != 0 ? __maskrune(v25, 0x4000uLL) : *(v13 + 4 * v25 + 60) & 0x4000))
      {
        break;
      }

      v24 = (v24 + 1);
      if (!--size)
      {
        v24 = v23;
        break;
      }
    }

    v19 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    v20 = __dst.__r_.__value_.__r.__words[0];
  }

  else
  {
    v24 = v21;
  }

  if (v19 >= 0)
  {
    v20 = &__dst;
  }

  std::string::erase(&__dst, v21 - v20, v24 - v21);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_239E5BAE0(a3, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *a3 = __dst;
  }
}

void sub_239EBB3C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_239EBB3E8(const char **a1, unint64_t a2, int a3, const void **a4)
{
  v5 = *a1;
  if (a3 < 1)
  {
    goto LABEL_33;
  }

  v7 = a3;
  v9 = 0;
  v10 = MEMORY[0x277D85DE0];
  v11 = "%f";
  do
  {
    v12 = *a1;
    while (v12 < a2)
    {
      v13 = *v5;
      if ((v13 & 0x80000000) != 0)
      {
        if (__maskrune(v13, 0x4000uLL))
        {
LABEL_7:
          v12 = *a1;
          goto LABEL_10;
        }
      }

      else if ((*(v10 + 4 * v13 + 60) & 0x4000) != 0)
      {
        goto LABEL_7;
      }

      v12 = *a1;
      if (*v5 != 44)
      {
        break;
      }

LABEL_10:
      ++v5;
    }

    if (v12 >= a2)
    {
      break;
    }

    v28 = 0;
    sscanf(v5, v11, &v28);
    v15 = a4[1];
    v14 = a4[2];
    if (v15 >= v14)
    {
      v17 = v11;
      v18 = *a4;
      v19 = v15 - *a4;
      v20 = v19 >> 2;
      v21 = (v19 >> 2) + 1;
      if (v21 >> 62)
      {
        sub_239E797B4();
      }

      v22 = v14 - v18;
      if (v22 >> 1 > v21)
      {
        v21 = v22 >> 1;
      }

      v23 = v22 >= 0x7FFFFFFFFFFFFFFCLL;
      v24 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v23)
      {
        v24 = v21;
      }

      if (v24)
      {
        sub_239E79984(a4, v24);
      }

      *(4 * v20) = v28;
      v16 = 4 * v20 + 4;
      memcpy(0, v18, v19);
      v25 = *a4;
      *a4 = 0;
      a4[1] = v16;
      a4[2] = 0;
      if (v25)
      {
        operator delete(v25);
      }

      v11 = v17;
      v7 = a3;
    }

    else
    {
      *v15 = v28;
      v16 = (v15 + 4);
    }

    a4[1] = v16;
    while (*a1 < a2)
    {
      v26 = *v5;
      if ((v26 & 0x80000000) != 0)
      {
        if (__maskrune(v26, 0x4000uLL))
        {
          break;
        }
      }

      else if ((*(v10 + 4 * v26 + 60) & 0x4000) != 0)
      {
        break;
      }

      if (*v5 == 44)
      {
        break;
      }

      ++v5;
    }

    ++v9;
  }

  while (v9 != v7);
LABEL_33:
  *a1 = v5;
}

uint64_t sub_239EBB5EC(const void *a1, _BYTE *a2, uint64_t a3)
{
  memset(v69, 0, 24);
  v66 = 0;
  v67 = 0;
  v68 = 0;
  *(a3 + 88) = -1082130432;
  v55 = a3 + 88;
  v63 = 0;
  v64 = 0;
  v65 = 0;
  v62 = a1;
  memset(&v61, 0, sizeof(v61));
  sub_239EBB138(&v62, a2, &v61);
  if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v61;
  }

  else
  {
    v5 = v61.__r_.__value_.__r.__words[0];
  }

  if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = SHIBYTE(v61.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v61.__r_.__value_.__l.__size_;
  }

  v7 = v5 + size;
  if (size >= 16)
  {
    v8 = size;
    v9 = v5;
    do
    {
      v10 = memchr(v9, 73, v8 - 15);
      if (!v10)
      {
        break;
      }

      if (*v10 == 0x4D4C3A414E534549 && *(v10 + 1) == 0x323030322D33362DLL)
      {
        if (v10 != v7 && v10 - v5 != -1)
        {
          goto LABEL_52;
        }

        break;
      }

      v9 = (v10 + 1);
      v8 = v7 - v9;
    }

    while (v7 - v9 >= 16);
    v12 = size;
    v13 = v5;
    do
    {
      v14 = memchr(v13, 73, v12 - 15);
      if (!v14)
      {
        break;
      }

      if (*v14 == 0x4D4C3A414E534549 && *(v14 + 1) == 0x353939312D33362DLL)
      {
        if (v14 != v7 && v14 - v5 != -1)
        {
          goto LABEL_52;
        }

        break;
      }

      v13 = (v14 + 1);
      v12 = v7 - v13;
    }

    while (v7 - v13 >= 16);
  }

  if (size >= 7)
  {
    v16 = size;
    v17 = v5;
    do
    {
      v18 = memchr(v17, 73, v16 - 6);
      if (!v18)
      {
        break;
      }

      if (*v18 == 1314080073 && *(v18 + 3) == 825835854)
      {
        if (v18 != v7 && v18 - v5 != -1)
        {
          goto LABEL_52;
        }

        break;
      }

      v17 = (v18 + 1);
      v16 = v7 - v17;
    }

    while (v7 - v17 >= 7);
    if (size >= 16)
    {
      v20 = v5;
      do
      {
        v21 = memchr(v20, 73, size - 15);
        if (!v21)
        {
          break;
        }

        if (*v21 == 0x4D4C3A414E534549 && *(v21 + 1) == 0x313939312D33362DLL)
        {
          if (v21 != v7 && v21 - v5 != -1)
          {
            goto LABEL_52;
          }

          break;
        }

        v20 = (v21 + 1);
        size = v7 - v20;
      }

      while (v7 - v20 >= 16);
    }
  }

  if (sub_239EBBD08(&v61, "IESNA:LM-63-1986", 0) == -1)
  {
    v62 = a1;
  }

LABEL_52:
  v23 = 0;
  v24 = 0;
  memset(&__p, 0, sizeof(__p));
LABEL_53:
  while (1)
  {
    v25 = (v24 & 0x80u) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    v26 = (v24 & 0x80u) == 0 ? v24 : v23;
    if (v26 >= 4)
    {
      v27 = v25 + v26;
      v28 = v25;
      while (1)
      {
        v29 = memchr(v28, 84, v26 - 3);
        if (!v29)
        {
          goto LABEL_66;
        }

        if (LODWORD(v29->__r_.__value_.__l.__data_) == 1414285652)
        {
          break;
        }

        v28 = (&v29->__r_.__value_.__l.__data_ + 1);
        v26 = v27 - v28;
        if (v27 - v28 < 4)
        {
          goto LABEL_66;
        }
      }

      if (v29 == v25)
      {
        break;
      }
    }

LABEL_66:
    sub_239EBB138(&v62, a2, &v59);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v59;
    v24 = HIBYTE(v59.__r_.__value_.__r.__words[2]);
    v23 = v59.__r_.__value_.__l.__size_;
    if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = v59.__r_.__value_.__r.__words[0];
    }

    if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v31 = HIBYTE(v59.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v31 = v59.__r_.__value_.__l.__size_;
    }

    if (v31 >= 15)
    {
      v32 = p_p + v31;
      v33 = p_p;
      while (1)
      {
        v34 = memchr(v33, 95, v31 - 14);
        if (!v34)
        {
          break;
        }

        if (*v34 == 0x54554C4F5342415FLL && *(v34 + 7) == 0x534E454D554C4554)
        {
          if (v34 != v32 && v34 - p_p != -1)
          {
            sscanf(p_p, "[_ABSOLUTELUMENS]%f", v55);
            v24 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            v23 = __p.__r_.__value_.__l.__size_;
          }

          goto LABEL_53;
        }

        v33 = (v34 + 1);
        v31 = v32 - v33;
        if (v32 - v33 < 15)
        {
          goto LABEL_53;
        }
      }
    }
  }

  memset(&v59, 0, sizeof(v59));
  sub_239EBB3E8(&v62, a2, 10, &v59.__r_.__value_.__l.__data_);
  v36 = *(v59.__r_.__value_.__r.__words[0] + 8);
  v37 = *(v59.__r_.__value_.__r.__words[0] + 12);
  v38 = *(v59.__r_.__value_.__r.__words[0] + 16);
  v59.__r_.__value_.__l.__size_ = v59.__r_.__value_.__r.__words[0];
  sub_239EBB3E8(&v62, a2, 3, &v59.__r_.__value_.__l.__data_);
  sub_239EBB3E8(&v62, a2, v37, &v63);
  v39 = v38;
  sub_239EBB3E8(&v62, a2, v38, &v66);
  if (*v63 != 0.0)
  {
    goto LABEL_117;
  }

  v40 = *(v64 - 1);
  if (v40 == 90.0)
  {
    v41 = 0;
  }

  else
  {
    if (v40 != 180.0)
    {
      goto LABEL_117;
    }

    v41 = 1;
  }

  *a3 = v41;
  if (v67 - v66 != 4)
  {
    if (*v66 == 0.0)
    {
      v42 = *(v67 - 1);
      if (v42 == 360.0)
      {
        goto LABEL_94;
      }

      if (v42 == 90.0)
      {
        v43 = 0;
        goto LABEL_95;
      }

      if (v42 == 180.0)
      {
        v43 = 1;
        goto LABEL_95;
      }
    }

LABEL_117:
    v52 = 0;
    goto LABEL_118;
  }

LABEL_94:
  v43 = 2;
LABEL_95:
  *(a3 + 4) = v43;
  v56 = 0;
  v57 = 0;
  v58 = 0;
  if (v39 < 1)
  {
    v50 = 0;
    v51 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0.0;
  }

  else
  {
    do
    {
      sub_239EBB3E8(&v62, a2, v37, &v56);
      --v39;
    }

    while (v39);
    v44 = v56;
    v45 = v57;
    v46 = 0.0;
    if (v56 != v57)
    {
      v47 = v56;
      do
      {
        v48 = *v47++;
        v49 = v48;
        if (v46 < v48)
        {
          v46 = v49;
        }
      }

      while (v47 != v57);
    }

    v50 = v57;
    v51 = v56;
  }

  if ((a3 + 56) != &v56)
  {
    sub_239EBD4AC((a3 + 56), v44, v45, (v50 - v51) >> 2);
  }

  if ((a3 + 8) != &v63)
  {
    sub_239EBD4AC((a3 + 8), v63, v64, (v64 - v63) >> 2);
  }

  if ((a3 + 32) != &v66)
  {
    sub_239EBD4AC((a3 + 32), v66, v67, (v67 - v66) >> 2);
  }

  *(a3 + 80) = v36;
  *(a3 + 84) = 1.0 / v46;
  if (v56)
  {
    v57 = v56;
    operator delete(v56);
  }

  v52 = 1;
LABEL_118:
  if (v59.__r_.__value_.__r.__words[0])
  {
    v59.__r_.__value_.__l.__size_ = v59.__r_.__value_.__r.__words[0];
    operator delete(v59.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  if (v63)
  {
    v64 = v63;
    operator delete(v63);
  }

  if (v66)
  {
    v67 = v66;
    operator delete(v66);
  }

  v66 = v69;
  sub_239EBD408(&v66);
  return v52;
}

void sub_239EBBC68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  if (a33)
  {
    operator delete(a33);
  }

  if (a36)
  {
    a37 = a36;
    operator delete(a36);
  }

  a36 = (v37 - 144);
  sub_239EBD408(&a36);
  _Unwind_Resume(a1);
}

unint64_t sub_239EBBD08(uint64_t *a1, char *__s, unint64_t a3)
{
  v5 = a1;
  v6 = *(a1 + 23);
  if ((v6 & 0x8000000000000000) != 0)
  {
    v5 = *a1;
    v6 = a1[1];
  }

  v7 = strlen(__s);
  v8 = v6 - a3;
  if (v6 < a3)
  {
    return -1;
  }

  v9 = v7;
  if (v7)
  {
    v10 = (v5 + v6);
    if (v8 >= v7)
    {
      v13 = (v5 + a3);
      v14 = *__s;
      do
      {
        v15 = v8 - v9;
        if (v15 == -1)
        {
          break;
        }

        v16 = memchr(v13, v14, v15 + 1);
        if (!v16)
        {
          break;
        }

        v11 = v16;
        if (!memcmp(v16, __s, v9))
        {
          goto LABEL_8;
        }

        v13 = v11 + 1;
        v8 = v10 - (v11 + 1);
      }

      while (v8 >= v9);
    }

    v11 = v10;
LABEL_8:
    if (v11 == v10)
    {
      return -1;
    }

    else
    {
      return &v11[-v5];
    }
  }

  return a3;
}

void *sub_239EBC240(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    a1[2] = v4;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_239EBD38C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_239E99FD8(result, a4);
  }

  return result;
}

void sub_239EBD3EC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_239EBD408(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_239EBD45C(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_239EBD45C(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void *sub_239EBD4AC(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
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

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_239E99FD8(v6, v10);
    }

    sub_239E797B4();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
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