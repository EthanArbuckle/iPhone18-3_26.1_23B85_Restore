uint64_t PixarLogDecode(uint64_t a1, char *a2, size_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a1 + 1096);
  v12 = *(v11 + 264);
  if (v12 - 2 < 3)
  {
    v13 = a3 >> 1;
  }

  else
  {
    v13 = a3;
    if (v12 >= 2)
    {
      if (v12 != 5)
      {
        TIFFErrorExtR(a1, "PixarLogDecode", "%hu bit input not supported in PixarLog", a4, a5, a6, a7, a8, *(a1 + 116));
        goto LABEL_153;
      }

      v13 = a3 >> 2;
    }
  }

  *(v11 + 128) = *(a1 + 1152);
  v14 = *(v11 + 256);
  v15 = *(a1 + 88);
  *(v11 + 136) = *(a1 + 1160);
  *(v11 + 152) = *(v11 + 248);
  *(v11 + 160) = 2 * v13;
  if ((v13 >> 31))
  {
    v16 = "ZLib cannot deal with buffers this size";
    goto LABEL_152;
  }

  if (2 * v13 > *(v11 + 240))
  {
    v16 = "sp->stream.avail_out > sp->tbuf_size";
LABEL_152:
    TIFFErrorExtR(a1, "PixarLogDecode", v16, a4, a5, a6, a7, a8, v174);
    goto LABEL_153;
  }

  v17 = v15 * v14;
  while (1)
  {
    v18 = inflate((v11 + 128), 1);
    if (v18)
    {
      break;
    }

    if (!*(v11 + 160))
    {
      goto LABEL_20;
    }
  }

  if (v18 != 1)
  {
    if (v18 == -3)
    {
      TIFFErrorExtR(a1, "PixarLogDecode", "Decoding error at scanline %u, %s", a4, a5, a6, a7, a8, *(a1 + 876));
      goto LABEL_153;
    }

    v173 = *(v11 + 176);
    if (!v173)
    {
      v173 = "(null)";
    }

    v174 = v173;
    v16 = "ZLib error: %s";
    goto LABEL_152;
  }

  if (*(v11 + 160))
  {
    TIFFErrorExtR(a1, "PixarLogDecode", "Not enough data at scanline %u (short %u bytes)", a4, a5, a6, a7, a8, *(a1 + 876));
    goto LABEL_153;
  }

LABEL_20:
  *(a1 + 1152) = *(v11 + 128);
  *(a1 + 1160) = *(v11 + 136);
  v19 = *(v11 + 248);
  if ((*(a1 + 16) & 0x80) != 0)
  {
    TIFFSwabArrayOfShort(*(v11 + 248), v13);
  }

  v20 = v13 % v17;
  if (v20)
  {
    TIFFWarningExtR(a1, "PixarLogDecode", "stride %d is not a multiple of sample count, %lld, data truncated.", a4, a5, a6, a7, a8, v17);
    v13 -= v20;
  }

  if (v13 < 1)
  {
    return 1;
  }

  v21 = 0;
  v22 = 2 * v17;
  v23 = v19 + 5;
  v24 = v19 + 7;
  v25.i64[0] = 0x4500000045000000;
  v25.i64[1] = 0x4500000045000000;
  v26 = vdupq_n_s32(0x453FF000u);
  while (1)
  {
    v27 = *(v11 + 264);
    if (v27 <= 2)
    {
      if (v27)
      {
        if (v27 == 1)
        {
          v72 = *(v11 + 256);
          v29 = v17;
          v73 = v17 - v72;
          if (v17 >= v72)
          {
            v74 = *(v11 + 304);
            if (v72 == 3)
            {
              *a2 = 0;
              v127 = v19[2] & 0x7FF;
              v128 = v19[1] & 0x7FF;
              v129 = *(v74 + v128);
              a4 = *v19 & 0x7FF;
              v130 = *(v74 + a4);
              a2[1] = *(v74 + v127);
              a2[2] = v129;
              a2[3] = v130;
              v29 = v17;
              if (v17 >= 4)
              {
                v131 = a2 + 7;
                v132 = v23;
                v133 = v17 + 3;
                do
                {
                  *(v131 - 3) = 0;
                  LODWORD(v127) = v127 + *v132;
                  a5 = *(v74 + (v127 & 0x7FF));
                  LODWORD(v128) = v128 + *(v132 - 1);
                  a6 = *(v74 + (v128 & 0x7FF));
                  a4 = a4 + *(v132 - 2);
                  a7 = *(v74 + (a4 & 0x7FF));
                  *(v131 - 2) = a5;
                  *(v131 - 1) = a6;
                  *v131 = a7;
                  v131 += 4;
                  v133 -= 3;
                  v132 += 3;
                }

                while (v133 > 6);
                goto LABEL_138;
              }
            }

            else
            {
              if (v72 != 4)
              {
                v162 = v72 + 1;
                v163 = a2;
                a4 = v19;
                do
                {
                  v164 = *a4;
                  a4 += 2;
                  a5 = *(v74 + (v164 & 0x7FF));
                  *v163++ = a5;
                  --v162;
                }

                while (v162 > 1);
                v29 = v17;
                if (v73 < 1)
                {
                  goto LABEL_147;
                }

                do
                {
                  v165 = v72 + 1;
                  do
                  {
                    a6 = *(a4 + 2 * v72);
                    *(a4 + 2 * v72) = a6 + *a4;
                    v166 = *a4;
                    a4 += 2;
                    a5 = *(v74 + (v166 & 0x7FF));
                    *v163++ = a5;
                    --v165;
                  }

                  while (v165 > 1);
                  v146 = __OFSUB__(v73, v72);
                  v73 -= v72;
                }

                while (!((v73 < 0) ^ v146 | (v73 == 0)));
                goto LABEL_138;
              }

              v75.i32[0] = *v19 & 0x7FF07FF;
              v75.i16[2] = HIDWORD(*v19) & 0x7FF;
              v75.i16[3] = v75.i16[2];
              v76 = *(v74 + v75.u16[2]);
              v77 = *(v74 + v75.u16[1]);
              v78 = *(v74 + (*v19 & 0x7FFLL));
              *a2 = v76;
              a2[1] = v76;
              a2[2] = v77;
              a2[3] = v78;
              v29 = v17;
              if (v17 >= 5)
              {
                v79 = vmovl_u16(v75);
                v80 = a2 + 7;
                v81 = v17 + 4;
                v82 = 4;
                do
                {
                  v79 = vaddw_u16(v79, *&v19[v82]);
                  v83 = vmovn_s32(v79);
                  v83.i32[0] &= 0x7FF07FFu;
                  v84 = *(v74 + (v83.i16[2] & 0x7FF));
                  a4 = *(v74 + v83.u16[1]);
                  a5 = *(v74 + v83.u16[0]);
                  *(v80 - 3) = *(v74 + (v83.i16[3] & 0x7FF));
                  *(v80 - 2) = v84;
                  *(v80 - 1) = a4;
                  *v80 = a5;
                  v80 += 4;
                  v82 += 4;
                  v81 -= 4;
                }

                while (v81 > 8);
LABEL_138:
                v29 = v17;
                goto LABEL_147;
              }
            }
          }
        }

        else
        {
          if (v27 != 2)
          {
            break;
          }

          v28 = *(v11 + 256);
          v29 = 2 * v17;
          v30 = v17 - v28;
          if (v17 >= v28)
          {
            if (v28 == 3)
            {
              *a2 = *v19;
              *(a2 + 1) = v19[1];
              v94 = v19[2];
              *(a2 + 2) = v94;
              v29 = 2 * v17;
              if (v17 >= 4)
              {
                v95 = v19[1];
                v96 = *v19;
                v97 = a2 + 10;
                v98 = v23;
                v99 = v17 + 3;
                do
                {
                  v96 += *(v98 - 2);
                  *(v97 - 2) = v96 & 0x7FF;
                  v95 += *(v98 - 1);
                  *(v97 - 1) = v95 & 0x7FF;
                  v100 = *v98;
                  v98 += 3;
                  v94 += v100;
                  a4 = v94 & 0x7FF;
                  *v97 = v94 & 0x7FF;
                  v97 += 3;
                  v99 -= 3;
                }

                while (v99 > 6);
                goto LABEL_146;
              }
            }

            else
            {
              if (v28 != 4)
              {
                v140 = v28 + 1;
                v141 = v19;
                v142 = a2;
                do
                {
                  v143 = *v141++;
                  a4 = v143 & 0x7FF;
                  *v142++ = a4;
                  --v140;
                }

                while (v140 > 1);
                v29 = 2 * v17;
                if (v30 < 1)
                {
                  goto LABEL_147;
                }

                do
                {
                  v144 = v28 + 1;
                  do
                  {
                    a5 = v141[v28];
                    v141[v28] = a5 + *v141;
                    v145 = *v141++;
                    a4 = v145 & 0x7FF;
                    *v142++ = a4;
                    --v144;
                  }

                  while (v144 > 1);
                  v146 = __OFSUB__(v30, v28);
                  v30 -= v28;
                }

                while (!((v30 < 0) ^ v146 | (v30 == 0)));
                goto LABEL_146;
              }

              *a2 = *v19;
              *(a2 + 1) = v19[1];
              *(a2 + 2) = v19[2];
              v31 = v19[3];
              *(a2 + 3) = v31;
              v29 = 2 * v17;
              if (v17 >= 5)
              {
                v32 = v19[2];
                v33 = v19[1];
                v34 = a2 + 14;
                v35 = v24;
                v36 = v17 + 4;
                LODWORD(a4) = *v19;
                do
                {
                  a4 = a4 + *(v35 - 3);
                  *(v34 - 3) = a4 & 0x7FF;
                  v33 += *(v35 - 2);
                  *(v34 - 2) = v33 & 0x7FF;
                  v32 += *(v35 - 1);
                  *(v34 - 1) = v32 & 0x7FF;
                  v37 = *v35;
                  v35 += 4;
                  v31 += v37;
                  a5 = v31 & 0x7FF;
                  *v34 = v31 & 0x7FF;
                  v34 += 4;
                  v36 -= 4;
                }

                while (v36 > 8);
LABEL_146:
                v29 = 2 * v17;
                goto LABEL_147;
              }
            }
          }
        }
      }

      else
      {
        v52 = *(v11 + 256);
        v29 = v17;
        v53 = v17 - v52;
        if (v17 >= v52)
        {
          v54 = *(v11 + 304);
          if (v52 == 3)
          {
            a4 = *v19 & 0x7FF;
            *a2 = *(v54 + a4);
            v111 = v19[1] & 0x7FF;
            a2[1] = *(v54 + v111);
            v112 = v19[2] & 0x7FF;
            a2[2] = *(v54 + v112);
            v29 = v17;
            if (v17 >= 4)
            {
              v113 = a2 + 5;
              v114 = v23;
              v115 = v17 + 3;
              do
              {
                a4 = a4 + *(v114 - 2);
                *(v113 - 2) = *(v54 + (a4 & 0x7FF));
                LODWORD(v111) = v111 + *(v114 - 1);
                *(v113 - 1) = *(v54 + (v111 & 0x7FF));
                v116 = *v114;
                v114 += 3;
                LODWORD(v112) = v112 + v116;
                a5 = *(v54 + (v112 & 0x7FF));
                *v113 = a5;
                v113 += 3;
                v115 -= 3;
              }

              while (v115 > 6);
              goto LABEL_138;
            }
          }

          else
          {
            if (v52 != 4)
            {
              v152 = v52 + 1;
              v153 = a2;
              a4 = v19;
              do
              {
                v154 = *a4;
                a4 += 2;
                a5 = *(v54 + (v154 & 0x7FF));
                *v153++ = a5;
                --v152;
              }

              while (v152 > 1);
              v29 = v17;
              if (v53 < 1)
              {
                goto LABEL_147;
              }

              do
              {
                v155 = v52 + 1;
                do
                {
                  a6 = *(a4 + 2 * v52);
                  *(a4 + 2 * v52) = a6 + *a4;
                  v156 = *a4;
                  a4 += 2;
                  a5 = *(v54 + (v156 & 0x7FF));
                  *v153++ = a5;
                  --v155;
                }

                while (v155 > 1);
                v146 = __OFSUB__(v53, v52);
                v53 -= v52;
              }

              while (!((v53 < 0) ^ v146 | (v53 == 0)));
              goto LABEL_138;
            }

            a5 = *v19 & 0x7FF;
            *a2 = *(v54 + a5);
            a4 = v19[1] & 0x7FF;
            a2[1] = *(v54 + a4);
            v55 = v19[2] & 0x7FF;
            a2[2] = *(v54 + v55);
            v56 = v19[3] & 0x7FF;
            a2[3] = *(v54 + v56);
            v29 = v17;
            if (v17 >= 5)
            {
              v57 = a2 + 7;
              v58 = v24;
              v59 = v17 + 4;
              do
              {
                a5 = a5 + *(v58 - 3);
                *(v57 - 3) = *(v54 + (a5 & 0x7FF));
                a4 = a4 + *(v58 - 2);
                *(v57 - 2) = *(v54 + (a4 & 0x7FF));
                LODWORD(v55) = v55 + *(v58 - 1);
                *(v57 - 1) = *(v54 + (v55 & 0x7FF));
                v60 = *v58;
                v58 += 4;
                LODWORD(v56) = v56 + v60;
                a6 = *(v54 + (v56 & 0x7FF));
                *v57 = a6;
                v57 += 4;
                v59 -= 4;
              }

              while (v59 > 8);
              goto LABEL_138;
            }
          }
        }
      }

      goto LABEL_147;
    }

    if (v27 == 3)
    {
      v61 = *(v11 + 256);
      v29 = 2 * v17;
      v62 = v17 - v61;
      if (v17 >= v61)
      {
        v63 = *(v11 + 288);
        if (v61 == 3)
        {
          v117 = *v19 & 0x7FF;
          v118 = v19[1] & 0x7FF;
          v119 = *(v63 + 4 * v118) * 2048.0;
          v120 = v19[2] & 0x7FF;
          v121 = *(v63 + 4 * v120);
          *a2 = fminf(*(v63 + 4 * v117) * 2048.0, 3071.0);
          *(a2 + 1) = fminf(v119, 3071.0);
          *(a2 + 2) = fminf(v121 * 2048.0, 3071.0);
          v29 = 2 * v17;
          if (v17 >= 4)
          {
            v122 = a2 + 10;
            v123 = v23;
            LODWORD(a4) = v17 + 3;
            do
            {
              LODWORD(v117) = v117 + *(v123 - 2);
              LODWORD(v118) = v118 + *(v123 - 1);
              v124 = *v123;
              v123 += 3;
              LODWORD(v120) = v120 + v124;
              v125 = *(v63 + 4 * (v118 & 0x7FF)) * 2048.0;
              v126 = *(v63 + 4 * (v120 & 0x7FF)) * 2048.0;
              *(v122 - 2) = fminf(*(v63 + 4 * (v117 & 0x7FF)) * 2048.0, 3071.0);
              a5 = fminf(v125, 3071.0);
              a6 = fminf(v126, 3071.0);
              *(v122 - 1) = a5;
              *v122 = a6;
              v122 += 3;
              a4 = (a4 - 3);
            }

            while (a4 > 6);
            goto LABEL_146;
          }
        }

        else
        {
          if (v61 != 4)
          {
            v157 = v61 + 1;
            v158 = a2;
            a4 = v19;
            do
            {
              v159 = *a4;
              a4 += 2;
              a5 = fminf(*(v63 + 4 * (v159 & 0x7FF)) * 2048.0, 3071.0);
              *v158++ = a5;
              --v157;
            }

            while (v157 > 1);
            v29 = 2 * v17;
            if (v62 < 1)
            {
              goto LABEL_147;
            }

            do
            {
              v160 = v61 + 1;
              do
              {
                a6 = *(a4 + 2 * v61);
                v161 = a6 + *a4;
                *(a4 + 2 * v61) = v161;
                a5 = fminf(*(v63 + 4 * (v161 & 0x7FF)) * 2048.0, 3071.0);
                *v158++ = a5;
                a4 += 2;
                --v160;
              }

              while (v160 > 1);
              v146 = __OFSUB__(v62, v61);
              v62 -= v61;
            }

            while (!((v62 < 0) ^ v146 | (v62 == 0)));
            goto LABEL_146;
          }

          v64.i32[0] = *v19 & 0x7FF07FF;
          v64.i16[2] = HIDWORD(*v19) & 0x7FF;
          v64.i16[3] = v64.i16[2];
          v65.i32[0] = *(v63 + 4 * (*v19 & 0x7FFLL));
          v65.i32[1] = *(v63 + 4 * v64.u16[1]);
          v65.i32[2] = *(v63 + 4 * v64.u16[2]);
          v65.i32[3] = v65.i32[2];
          *a2 = vmovn_s32(vcvtq_u32_f32(vminnmq_f32(vmulq_f32(v65, v25), v26)));
          v29 = 2 * v17;
          if (v17 >= 5)
          {
            v66 = vmovl_u16(v64);
            v67 = v17 + 4;
            v68 = 4;
            do
            {
              v66 = vaddw_u16(v66, *&v19[v68]);
              *v69.f32 = vmovn_s32(v66);
              v70 = (v63 + 4 * (v69.i16[1] & 0x7FF));
              v71 = (v63 + 4 * (v69.i16[2] & 0x7FF));
              a4 = v69.i16[3] & 0x7FF;
              v69.i32[0] = *(v63 + 4 * (v69.i16[0] & 0x7FF));
              v69.i32[1] = *v70;
              v69.i32[2] = *v71;
              v69.i32[3] = *(v63 + 4 * a4);
              *&a2[v68 * 2] = vmovn_s32(vcvtq_u32_f32(vminnmq_f32(vmulq_f32(v69, v25), v26)));
              v68 += 4;
              v67 -= 4;
            }

            while (v67 > 8);
            goto LABEL_146;
          }
        }
      }

      goto LABEL_147;
    }

    if (v27 == 4)
    {
      v85 = *(v11 + 256);
      v29 = 2 * v17;
      v86 = v17 - v85;
      if (v17 >= v85)
      {
        v87 = *(v11 + 296);
        if (v85 == 3)
        {
          v134 = *v19 & 0x7FF;
          *a2 = *(v87 + 2 * v134);
          v135 = v19[1] & 0x7FF;
          *(a2 + 1) = *(v87 + 2 * v135);
          v136 = v19[2] & 0x7FF;
          *(a2 + 2) = *(v87 + 2 * v136);
          v29 = 2 * v17;
          if (v17 >= 4)
          {
            v137 = a2 + 10;
            v138 = v23;
            LODWORD(a4) = v17 + 3;
            do
            {
              LODWORD(v134) = v134 + *(v138 - 2);
              *(v137 - 2) = *(v87 + 2 * (v134 & 0x7FF));
              LODWORD(v135) = v135 + *(v138 - 1);
              *(v137 - 1) = *(v87 + 2 * (v135 & 0x7FF));
              v139 = *v138;
              v138 += 3;
              LODWORD(v136) = v136 + v139;
              a5 = *(v87 + 2 * (v136 & 0x7FF));
              *v137 = a5;
              v137 += 3;
              a4 = (a4 - 3);
            }

            while (a4 > 6);
            goto LABEL_146;
          }
        }

        else
        {
          if (v85 != 4)
          {
            v167 = v85 + 1;
            v168 = a2;
            a4 = v19;
            do
            {
              v169 = *a4;
              a4 += 2;
              a5 = *(v87 + 2 * (v169 & 0x7FF));
              *v168++ = a5;
              --v167;
            }

            while (v167 > 1);
            v29 = 2 * v17;
            if (v86 < 1)
            {
              goto LABEL_147;
            }

            do
            {
              v170 = v85 + 1;
              do
              {
                a6 = *(a4 + 2 * v85);
                *(a4 + 2 * v85) = a6 + *a4;
                v171 = *a4;
                a4 += 2;
                a5 = *(v87 + 2 * (v171 & 0x7FF));
                *v168++ = a5;
                --v170;
              }

              while (v170 > 1);
              v146 = __OFSUB__(v86, v85);
              v86 -= v85;
            }

            while (!((v86 < 0) ^ v146 | (v86 == 0)));
            goto LABEL_146;
          }

          v88 = *v19 & 0x7FF;
          *a2 = *(v87 + 2 * v88);
          v89 = v19[1] & 0x7FF;
          *(a2 + 1) = *(v87 + 2 * v89);
          v90 = v19[2] & 0x7FF;
          *(a2 + 2) = *(v87 + 2 * v90);
          v91 = v19[3] & 0x7FF;
          *(a2 + 3) = *(v87 + 2 * v91);
          v29 = 2 * v17;
          if (v17 >= 5)
          {
            v92 = a2 + 14;
            a4 = v24;
            LODWORD(a5) = v17 + 4;
            do
            {
              LODWORD(v88) = v88 + *(a4 - 6);
              *(v92 - 3) = *(v87 + 2 * (v88 & 0x7FF));
              LODWORD(v89) = v89 + *(a4 - 4);
              *(v92 - 2) = *(v87 + 2 * (v89 & 0x7FF));
              LODWORD(v90) = v90 + *(a4 - 2);
              *(v92 - 1) = *(v87 + 2 * (v90 & 0x7FF));
              v93 = *a4;
              a4 += 8;
              LODWORD(v91) = v91 + v93;
              a6 = *(v87 + 2 * (v91 & 0x7FF));
              *v92 = a6;
              v92 += 4;
              a5 = (a5 - 4);
            }

            while (a5 > 8);
            goto LABEL_146;
          }
        }
      }

      goto LABEL_147;
    }

    if (v27 != 5)
    {
      break;
    }

    v38 = *(v11 + 256);
    v29 = 4 * v17;
    v39 = v17 - v38;
    if (v17 >= v38)
    {
      v40 = *(v11 + 288);
      if (v38 == 3)
      {
        v101 = *v19 & 0x7FF;
        v102 = v19[1] & 0x7FF;
        v103 = *(v40 + 4 * v102);
        v104 = v19[2] & 0x7FF;
        v105 = *(v40 + 4 * v104);
        *a2 = *(v40 + 4 * v101);
        *(a2 + 1) = v103;
        *(a2 + 2) = v105;
        v29 = 4 * v17;
        if (v17 >= 4)
        {
          v106 = a2 + 20;
          v107 = v23;
          LODWORD(a4) = v17 + 3;
          do
          {
            LODWORD(v101) = v101 + *(v107 - 2);
            LODWORD(v102) = v102 + *(v107 - 1);
            v108 = *(v40 + 4 * (v102 & 0x7FF));
            v109 = *v107;
            v107 += 3;
            LODWORD(v104) = v104 + v109;
            a5 = v104 & 0x7FF;
            v110 = *(v40 + 4 * a5);
            *(v106 - 2) = *(v40 + 4 * (v101 & 0x7FF));
            *(v106 - 1) = v108;
            *v106 = v110;
            v106 += 3;
            a4 = (a4 - 3);
          }

          while (a4 > 6);
          goto LABEL_114;
        }
      }

      else
      {
        if (v38 != 4)
        {
          v147 = v38 + 1;
          v148 = a2;
          a4 = v19;
          do
          {
            v149 = *a4;
            a4 += 2;
            a5 = v149 & 0x7FF;
            *v148++ = *(v40 + 4 * a5);
            --v147;
          }

          while (v147 > 1);
          v29 = 4 * v17;
          if (v39 < 1)
          {
            goto LABEL_147;
          }

          do
          {
            v150 = v38 + 1;
            do
            {
              a6 = *(a4 + 2 * v38);
              *(a4 + 2 * v38) = a6 + *a4;
              v151 = *a4;
              a4 += 2;
              a5 = v151 & 0x7FF;
              *v148++ = *(v40 + 4 * a5);
              --v150;
            }

            while (v150 > 1);
            v146 = __OFSUB__(v39, v38);
            v39 -= v38;
          }

          while (!((v39 < 0) ^ v146 | (v39 == 0)));
          goto LABEL_114;
        }

        v41.i32[0] = *v19 & 0x7FF07FF;
        v41.i16[2] = HIDWORD(*v19) & 0x7FF;
        v41.i16[3] = v41.i16[2];
        v42 = *(v40 + 4 * v41.u16[1]);
        v43 = *(v40 + 4 * v41.u16[2]);
        *a2 = *(v40 + 4 * (*v19 & 0x7FFLL));
        *(a2 + 1) = v42;
        *(a2 + 2) = v43;
        *(a2 + 3) = v43;
        v29 = 4 * v17;
        if (v17 >= 5)
        {
          v44 = vmovl_u16(v41);
          v45 = a2 + 28;
          v46 = v17 + 4;
          v47 = 4;
          do
          {
            v44 = vaddw_u16(v44, *&v19[v47]);
            v48 = vmovn_s32(v44);
            v49 = *(v40 + 4 * (v48.i16[0] & 0x7FF));
            v50 = *(v40 + 4 * (v48.i16[1] & 0x7FF));
            v51 = *(v40 + 4 * (v48.i16[2] & 0x7FF));
            v48.i32[0] = *(v40 + 4 * (v48.i16[3] & 0x7FF));
            *(v45 - 3) = v49;
            *(v45 - 2) = v50;
            *(v45 - 1) = v51;
            *v45 = v48.i32[0];
            v47 += 4;
            v45 += 4;
            v46 -= 4;
          }

          while (v46 > 8);
LABEL_114:
          v29 = 4 * v17;
        }
      }
    }

LABEL_147:
    a2 += v29;
    v21 += v17;
    v19 = (v19 + v22);
    v23 = (v23 + v22);
    v24 = (v24 + v22);
    if (v21 >= v13)
    {
      return 1;
    }
  }

  TIFFErrorExtR(a1, "PixarLogDecode", "Unsupported bits/sample: %hu", a4, a5, a6, a7, a8, *(a1 + 116));
LABEL_153:
  bzero(a2, a3);
  return 0;
}

size_t PixarLogSetupEncode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 1096);
  if (!v8)
  {
    PixarLogSetupEncode_cold_1();
  }

  if (*(a1 + 170) == 1)
  {
    v10 = *(a1 + 130);
  }

  else
  {
    v10 = 1;
  }

  *(v8 + 256) = v10;
  v11 = _TIFFMultiplySSize(0, v10, *(a1 + 88), 0, a5, a6, a7, a8);
  v16 = _TIFFMultiplySSize(0, v11, *(a1 + 132), 0, v12, v13, v14, v15);
  result = _TIFFMultiplySSize(0, v16, 2, 0, v17, v18, v19, v20);
  if (result)
  {
    result = malloc_type_malloc(result, 0x1000040BDFB0063uLL);
    *(v8 + 248) = result;
    if (result)
    {
      if (*(v8 + 264) == -1 && (v22 = PixarLogGuessDataFmt(a1 + 72), *(v8 + 264) = v22, v22 == -1))
      {
        TIFFErrorExtR(a1, "PixarLogSetupEncode", "PixarLog compression can't handle %hu bit linear encodings", v23, v24, v25, v26, v27, *(a1 + 116));
      }

      else
      {
        if (!deflateInit_((v8 + 128), *(v8 + 268), "1.2.12", 112))
        {
          *(v8 + 260) |= 1u;
          return 1;
        }

        v33 = *(v8 + 176);
        if (!v33)
        {
          v33 = "(null)";
        }

        TIFFErrorExtR(a1, "PixarLogSetupEncode", "%s", v28, v29, v30, v31, v32, v33);
      }

      return 0;
    }
  }

  return result;
}

BOOL PixarLogPreEncode(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1[137];
  if (!v8)
  {
    PixarLogPreEncode_cold_1();
  }

  *(v8 + 152) = a1[140];
  v9 = a1[141];
  *(v8 + 160) = v9;
  if (!HIDWORD(v9))
  {
    return deflateReset((v8 + 128)) == 0;
  }

  TIFFErrorExtR(a1, "PixarLogPreEncode", "ZLib cannot deal with buffers this size", a4, a5, a6, a7, a8, vars0);
  return 0;
}

uint64_t PixarLogPostEncode(void *a1)
{
  v2 = a1[137];
  *(v2 + 136) = 0;
  while (1)
  {
    v3 = deflate((v2 + 128), 4);
    if (v3 > 1)
    {
      break;
    }

    v11 = v3;
    v12 = a1[141] - *(v2 + 160);
    if (v12)
    {
      a1[145] = v12;
      result = TIFFFlushData1(a1, v4, v5, v6, v7, v8, v9, v10);
      if (!result)
      {
        return result;
      }

      *(v2 + 152) = a1[140];
      *(v2 + 160) = a1[141];
    }

    if (v11 == 1)
    {
      return 1;
    }
  }

  v14 = *(v2 + 176);
  if (!v14)
  {
    v14 = "(null)";
  }

  TIFFErrorExtR(a1, "PixarLogPostEncode", "ZLib error: %s", v6, v7, v8, v9, v10, v14);
  return 0;
}

uint64_t PixarLogEncode(uint64_t a1, unsigned __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 1096);
  v9 = *(v8 + 66);
  if (v9 - 2 < 3)
  {
    a3 = a3 >> 1;
  }

  else if (v9 >= 2)
  {
    if (v9 != 5)
    {
      goto LABEL_183;
    }

    a3 = a3 >> 2;
  }

  v10 = *(a1 + 88) * *(v8 + 128);
  if (a3 > *(a1 + 132) * v10)
  {
    v11 = "Too many input bytes provided";
LABEL_184:
    TIFFErrorExtR(a1, "PixarLogEncode", v11, a4, a5, a6, a7, a8, v133);
    return 0;
  }

  v138 = a1;
  v139 = v8[31];
  if (a3 >= 1)
  {
    if (v9 <= 5 && ((1 << v9) & 0x31) != 0)
    {
      v13 = 0;
      v14 = *&Fltsize;
      v15 = *&LogK1;
      v135 = *&LogK2;
      v140 = 4 * v10;
      v137 = v10 + 4;
      v16 = v8[31];
      v147 = (v139 + 14);
      v136 = v10 + 3;
      v145 = 2 * v10;
      v146 = (v139 + 10);
      HIDWORD(v17) = 1084226560;
      v143 = a3;
      v144 = *(a1 + 1096);
      v142 = *(v8 + 66);
      v141 = *(a1 + 88) * *(v8 + 128);
      v134 = *&LogK1;
      while (1)
      {
        v18 = *(v8 + 128);
        v148 = v13;
        if (v9 == 4)
        {
          v19 = v145;
          v20 = v10;
          if (v10 >= v18)
          {
            v24 = v144[40];
            if (v18 == 3)
            {
              v52 = *(v24 + ((*a2 >> 1) & 0x7FFE));
              *v16 = v52;
              v53 = *(v24 + ((a2[1] >> 1) & 0x7FFE));
              v16[1] = v53;
              v54 = *(v24 + ((a2[2] >> 1) & 0x7FFE));
              v16[2] = v54;
              v19 = v145;
              v20 = v141;
              if (v141 >= 4)
              {
                v55 = a2 + 5;
                v56 = v146;
                v57 = v136;
                do
                {
                  v58 = *(v24 + ((*(v55 - 2) >> 1) & 0x7FFE));
                  *(v56 - 2) = (v58 - v52) & 0x7FF;
                  v59 = *(v24 + ((*(v55 - 1) >> 1) & 0x7FFE));
                  *(v56 - 1) = (v59 - v53) & 0x7FF;
                  v60 = *v55;
                  v55 += 3;
                  v61 = *(v24 + ((v60 >> 1) & 0x7FFE));
                  *v56 = (v61 - v54) & 0x7FF;
                  v56 += 3;
                  v57 -= 3;
                  v54 = v61;
                  v53 = v59;
                  v52 = v58;
                }

                while (v57 > 6);
                goto LABEL_76;
              }
            }

            else
            {
              v20 = v141;
              if (v18 != 4)
              {
                v73 = v18 + 1;
                v74 = v16;
                v75 = a2;
                do
                {
                  v76 = *v75++;
                  *v74++ = *(v24 + ((v76 >> 1) & 0x7FFE));
                  --v73;
                }

                while (v73 > 1);
                v77 = v141 - v18;
                v19 = v145;
                if (v141 - v18 < 1)
                {
                  goto LABEL_171;
                }

                do
                {
                  v78 = v18 + 1;
                  do
                  {
                    *v74++ = (*(v24 + ((*v75 >> 1) & 0x7FFE)) - *(v24 + ((v75[-v18] >> 1) & 0x7FFE))) & 0x7FF;
                    ++v75;
                    --v78;
                  }

                  while (v78 > 1);
                  v72 = __OFSUB__(v77, v18);
                  v77 -= v18;
                }

                while (!((v77 < 0) ^ v72 | (v77 == 0)));
LABEL_76:
                v19 = v145;
LABEL_169:
                v20 = v141;
                goto LABEL_170;
              }

              v25 = *(v24 + ((*a2 >> 1) & 0x7FFE));
              *v16 = v25;
              v26 = *(v24 + ((a2[1] >> 1) & 0x7FFE));
              v16[1] = v26;
              v27 = *(v24 + ((a2[2] >> 1) & 0x7FFE));
              v16[2] = v27;
              v28 = *(v24 + ((a2[3] >> 1) & 0x7FFE));
              v16[3] = v28;
              v19 = v145;
              if (v141 >= 5)
              {
                v29 = a2 + 7;
                v30 = v147;
                v31 = v137;
                do
                {
                  v32 = *(v24 + ((*(v29 - 3) >> 1) & 0x7FFE));
                  *(v30 - 3) = (v32 - v25) & 0x7FF;
                  v33 = *(v24 + ((*(v29 - 2) >> 1) & 0x7FFE));
                  *(v30 - 2) = (v33 - v26) & 0x7FF;
                  v34 = *(v24 + ((*(v29 - 1) >> 1) & 0x7FFE));
                  *(v30 - 1) = (v34 - v27) & 0x7FF;
                  v35 = *v29;
                  v29 += 4;
                  v36 = *(v24 + ((v35 >> 1) & 0x7FFE));
                  *v30 = (v36 - v28) & 0x7FF;
                  v30 += 4;
                  v31 -= 4;
                  v28 = v36;
                  v27 = v34;
                  v26 = v33;
                  v25 = v32;
                }

                while (v31 > 8);
                goto LABEL_76;
              }
            }
          }
        }

        else if (v9 == 5)
        {
          v19 = v140;
          v20 = v10;
          if (v10 >= v18)
          {
            v21 = v144[39];
            if (v18 == 3)
            {
              LODWORD(v17) = *a2;
              v50 = 0.0;
              v51 = 0.0;
              if (*a2 >= 0.0)
              {
                if (*&v17 >= 2.0)
                {
                  v51 = 2047.0;
                  if (*&v17 <= 24.2)
                  {
                    v17 = log((*&v17 * v135));
                    v51 = v15 * v17 + 0.5;
                  }
                }

                else
                {
                  *&v17 = v14 * *&v17;
                  LOWORD(v17) = *(v21 + 2 * *&v17);
                  v51 = *&v17;
                }
              }

              v95 = v51;
              *v16 = v51;
              LODWORD(v17) = *(a2 + 1);
              if (*&v17 >= 0.0)
              {
                if (*&v17 >= 2.0)
                {
                  v50 = 2047.0;
                  if (*&v17 <= 24.2)
                  {
                    v17 = log((*&v17 * v135));
                    v50 = v15 * v17 + 0.5;
                  }
                }

                else
                {
                  *&v17 = v14 * *&v17;
                  LOWORD(v17) = *(v21 + 2 * *&v17);
                  v50 = *&v17;
                }
              }

              v96 = v50;
              v16[1] = v50;
              LODWORD(v17) = *(a2 + 2);
              v97 = 0.0;
              if (*&v17 >= 0.0)
              {
                if (*&v17 >= 2.0)
                {
                  v97 = 2047.0;
                  if (*&v17 <= 24.2)
                  {
                    v17 = log((*&v17 * v135));
                    v97 = v15 * v17 + 0.5;
                  }
                }

                else
                {
                  *&v17 = v14 * *&v17;
                  LOWORD(v17) = *(v21 + 2 * *&v17);
                  v97 = *&v17;
                }
              }

              v98 = v97;
              v16[2] = v97;
              v19 = v140;
              v20 = v141;
              v13 = v148;
              if (v141 < 4)
              {
                goto LABEL_171;
              }

              v99 = *&LogK1;
              v100 = *&LogK2;
              v101 = a2 + 10;
              v102 = v146;
              v103 = v136;
              do
              {
                LODWORD(v17) = *(v101 - 2);
                v104 = 0.0;
                v105 = 0.0;
                if (*&v17 >= 0.0)
                {
                  if (*&v17 >= 2.0)
                  {
                    v105 = 2047.0;
                    if (*&v17 <= 24.2)
                    {
                      v17 = log((v100 * *&v17));
                      v105 = v99 * v17 + 0.5;
                    }
                  }

                  else
                  {
                    *&v17 = v14 * *&v17;
                    LOWORD(v17) = *(v21 + 2 * *&v17);
                    v105 = *&v17;
                  }
                }

                v106 = v105;
                *(v102 - 2) = (v105 - v95) & 0x7FF;
                LODWORD(v17) = *(v101 - 1);
                if (*&v17 >= 0.0)
                {
                  if (*&v17 >= 2.0)
                  {
                    v104 = 2047.0;
                    if (*&v17 <= 24.2)
                    {
                      v17 = log((v100 * *&v17));
                      v104 = v99 * v17 + 0.5;
                    }
                  }

                  else
                  {
                    *&v17 = v14 * *&v17;
                    LOWORD(v17) = *(v21 + 2 * *&v17);
                    v104 = *&v17;
                  }
                }

                *(v102 - 1) = (v104 - v96) & 0x7FF;
                LODWORD(v17) = *v101;
                v107 = 0.0;
                if (*v101 >= 0.0)
                {
                  if (*&v17 >= 2.0)
                  {
                    v107 = 2047.0;
                    if (*&v17 <= 24.2)
                    {
                      v17 = log((v100 * *&v17));
                      v107 = v99 * v17 + 0.5;
                    }
                  }

                  else
                  {
                    *&v17 = v14 * *&v17;
                    LOWORD(v17) = *(v21 + 2 * *&v17);
                    v107 = *&v17;
                  }
                }

                *v102 = (v107 - v98) & 0x7FF;
                v102 += 3;
                v103 -= 3;
                v101 += 3;
                v98 = v107;
                v96 = v104;
                LOWORD(v95) = v106;
              }

              while (v103 > 6);
LABEL_168:
              v19 = v140;
              goto LABEL_169;
            }

            if (v18 != 4)
            {
              v62 = *&LogK1;
              v63 = *&LogK2;
              v64 = v18 + 1;
              v65 = v16;
              v66 = a2;
              do
              {
                LODWORD(v17) = *v66;
                v67 = 0.0;
                if (*v66 >= 0.0)
                {
                  if (*&v17 >= 2.0)
                  {
                    if (*&v17 <= 24.2)
                    {
                      v17 = log((v63 * *&v17));
                      v67 = v62 * v17 + 0.5;
                    }

                    else
                    {
                      v67 = 2047.0;
                    }
                  }

                  else
                  {
                    *&v17 = v14 * *&v17;
                    LOWORD(v17) = *(v21 + 2 * *&v17);
                    v67 = *&v17;
                  }
                }

                *v65++ = v67;
                ++v66;
                --v64;
              }

              while (v64 > 1);
              v20 = v141;
              v68 = v141 - v18;
              v19 = v140;
              v13 = v148;
              if (v141 - v18 >= 1)
              {
                do
                {
                  v69 = v18 + 1;
                  do
                  {
                    LODWORD(v17) = *v66;
                    v70 = 0.0;
                    v71 = 0.0;
                    if (*v66 >= 0.0)
                    {
                      if (*&v17 >= 2.0)
                      {
                        if (*&v17 <= 24.2)
                        {
                          v17 = log((v63 * *&v17));
                          v71 = v62 * v17 + 0.5;
                        }

                        else
                        {
                          v71 = 2047.0;
                        }
                      }

                      else
                      {
                        *&v17 = v14 * *&v17;
                        LOWORD(v17) = *(v21 + 2 * *&v17);
                        v71 = *&v17;
                      }
                    }

                    LODWORD(v17) = v66[-v18];
                    if (*&v17 >= 0.0)
                    {
                      if (*&v17 >= 2.0)
                      {
                        if (*&v17 <= 24.2)
                        {
                          v17 = log((v63 * *&v17));
                          v70 = v62 * v17 + 0.5;
                        }

                        else
                        {
                          v70 = 2047.0;
                        }
                      }

                      else
                      {
                        *&v17 = v14 * *&v17;
                        LOWORD(v17) = *(v21 + 2 * *&v17);
                        v70 = *&v17;
                      }
                    }

                    *v65++ = (v71 - v70) & 0x7FF;
                    ++v66;
                    --v69;
                  }

                  while (v69 > 1);
                  v72 = __OFSUB__(v68, v18);
                  v68 -= v18;
                }

                while (!((v68 < 0) ^ v72 | (v68 == 0)));
                v19 = v140;
                v20 = v141;
                v13 = v148;
                v15 = v134;
              }

              goto LABEL_171;
            }

            LODWORD(v17) = *a2;
            v22 = 0.0;
            v23 = 0.0;
            if (*a2 >= 0.0)
            {
              if (*&v17 >= 2.0)
              {
                if (*&v17 <= 24.2)
                {
                  v17 = log((*&v17 * v135));
                  v23 = v15 * v17 + 0.5;
                }

                else
                {
                  v23 = 2047.0;
                }
              }

              else
              {
                *&v17 = v14 * *&v17;
                LOWORD(v17) = *(v21 + 2 * *&v17);
                v23 = *&v17;
              }
            }

            v108 = v23;
            *v16 = v23;
            LODWORD(v17) = *(a2 + 1);
            if (*&v17 >= 0.0)
            {
              if (*&v17 >= 2.0)
              {
                if (*&v17 <= 24.2)
                {
                  v17 = log((*&v17 * v135));
                  v22 = v15 * v17 + 0.5;
                }

                else
                {
                  v22 = 2047.0;
                }
              }

              else
              {
                *&v17 = v14 * *&v17;
                LOWORD(v17) = *(v21 + 2 * *&v17);
                v22 = *&v17;
              }
            }

            v109 = v22;
            v16[1] = v22;
            LODWORD(v17) = *(a2 + 2);
            v110 = 0.0;
            v111 = 0.0;
            if (*&v17 >= 0.0)
            {
              if (*&v17 >= 2.0)
              {
                if (*&v17 <= 24.2)
                {
                  v17 = log((*&v17 * v135));
                  v111 = v15 * v17 + 0.5;
                }

                else
                {
                  v111 = 2047.0;
                }
              }

              else
              {
                *&v17 = v14 * *&v17;
                LOWORD(v17) = *(v21 + 2 * *&v17);
                v111 = *&v17;
              }
            }

            v112 = v111;
            v16[2] = v111;
            LODWORD(v17) = *(a2 + 3);
            if (*&v17 >= 0.0)
            {
              if (*&v17 >= 2.0)
              {
                if (*&v17 <= 24.2)
                {
                  v17 = log((*&v17 * v135));
                  v110 = v15 * v17 + 0.5;
                }

                else
                {
                  v110 = 2047.0;
                }
              }

              else
              {
                *&v17 = v14 * *&v17;
                LOWORD(v17) = *(v21 + 2 * *&v17);
                v110 = *&v17;
              }
            }

            v113 = v110;
            v16[3] = v110;
            v19 = v140;
            v20 = v141;
            v13 = v148;
            if (v141 >= 5)
            {
              v114 = *&LogK1;
              v115 = *&LogK2;
              v116 = a2 + 14;
              v117 = v147;
              v118 = v137;
              do
              {
                LODWORD(v17) = *(v116 - 3);
                v119 = 0.0;
                v120 = 0.0;
                if (*&v17 >= 0.0)
                {
                  if (*&v17 >= 2.0)
                  {
                    if (*&v17 <= 24.2)
                    {
                      v17 = log((v115 * *&v17));
                      v120 = v114 * v17 + 0.5;
                    }

                    else
                    {
                      v120 = 2047.0;
                    }
                  }

                  else
                  {
                    *&v17 = v14 * *&v17;
                    LOWORD(v17) = *(v21 + 2 * *&v17);
                    v120 = *&v17;
                  }
                }

                v121 = v120;
                *(v117 - 3) = (v120 - v108) & 0x7FF;
                LODWORD(v17) = *(v116 - 2);
                if (*&v17 >= 0.0)
                {
                  if (*&v17 >= 2.0)
                  {
                    if (*&v17 <= 24.2)
                    {
                      v17 = log((v115 * *&v17));
                      v119 = v114 * v17 + 0.5;
                    }

                    else
                    {
                      v119 = 2047.0;
                    }
                  }

                  else
                  {
                    *&v17 = v14 * *&v17;
                    LOWORD(v17) = *(v21 + 2 * *&v17);
                    v119 = *&v17;
                  }
                }

                v108 = v119;
                *(v117 - 2) = (v119 - v109) & 0x7FF;
                LODWORD(v17) = *(v116 - 1);
                v122 = 0.0;
                v123 = 0.0;
                if (*&v17 >= 0.0)
                {
                  if (*&v17 >= 2.0)
                  {
                    if (*&v17 <= 24.2)
                    {
                      v17 = log((v115 * *&v17));
                      v123 = v114 * v17 + 0.5;
                    }

                    else
                    {
                      v123 = 2047.0;
                    }
                  }

                  else
                  {
                    *&v17 = v14 * *&v17;
                    LOWORD(v17) = *(v21 + 2 * *&v17);
                    v123 = *&v17;
                  }
                }

                v109 = v123;
                *(v117 - 1) = (v123 - v112) & 0x7FF;
                LODWORD(v17) = *v116;
                if (*v116 >= 0.0)
                {
                  if (*&v17 >= 2.0)
                  {
                    if (*&v17 <= 24.2)
                    {
                      v17 = log((v115 * *&v17));
                      v122 = v114 * v17 + 0.5;
                    }

                    else
                    {
                      v122 = 2047.0;
                    }
                  }

                  else
                  {
                    *&v17 = v14 * *&v17;
                    LOWORD(v17) = *(v21 + 2 * *&v17);
                    v122 = *&v17;
                  }
                }

                *v117 = (v122 - v113) & 0x7FF;
                v117 += 4;
                v118 -= 4;
                v116 += 4;
                v113 = v122;
                LOWORD(v112) = v109;
                LOWORD(v109) = v108;
                LOWORD(v108) = v121;
              }

              while (v118 > 8);
              goto LABEL_168;
            }
          }
        }

        else
        {
          v19 = v10;
          v20 = v10;
          if (v10 >= v18)
          {
            v37 = v144[41];
            if (v18 == 3)
            {
              v79 = *(v37 + 2 * *a2);
              *v16 = v79;
              v80 = *(v37 + 2 * *(a2 + 1));
              v16[1] = v80;
              v81 = *(v37 + 2 * *(a2 + 2));
              v16[2] = v81;
              v20 = v141;
              v19 = v141;
              if (v141 >= 4)
              {
                v82 = a2 + 5;
                v83 = v146;
                v84 = v136;
                do
                {
                  v85 = *(v37 + 2 * *(v82 - 2));
                  *(v83 - 2) = (v85 - v79) & 0x7FF;
                  v86 = *(v37 + 2 * *(v82 - 1));
                  *(v83 - 1) = (v86 - v80) & 0x7FF;
                  v87 = *v82;
                  v82 += 3;
                  v88 = *(v37 + 2 * v87);
                  *v83 = (v88 - v81) & 0x7FF;
                  v83 += 3;
                  v84 -= 3;
                  v81 = v88;
                  v80 = v86;
                  v79 = v85;
                }

                while (v84 > 6);
LABEL_80:
                v20 = v141;
                v19 = v141;
LABEL_170:
                v13 = v148;
              }
            }

            else
            {
              v20 = v141;
              if (v18 != 4)
              {
                v89 = v18 + 1;
                v90 = v16;
                v91 = a2;
                do
                {
                  v92 = *v91++;
                  *v90++ = *(v37 + 2 * v92);
                  --v89;
                }

                while (v89 > 1);
                v93 = v141 - v18;
                v19 = v141;
                if (v141 - v18 < 1)
                {
                  goto LABEL_171;
                }

                do
                {
                  v94 = v18 + 1;
                  do
                  {
                    *v90++ = (*(v37 + 2 * *v91) - *(v37 + 2 * v91[-v18])) & 0x7FF;
                    ++v91;
                    --v94;
                  }

                  while (v94 > 1);
                  v72 = __OFSUB__(v93, v18);
                  v93 -= v18;
                }

                while (!((v93 < 0) ^ v72 | (v93 == 0)));
                v19 = v141;
                goto LABEL_170;
              }

              v38 = *(v37 + 2 * *a2);
              *v16 = v38;
              v39 = *(v37 + 2 * *(a2 + 1));
              v16[1] = v39;
              v40 = *(v37 + 2 * *(a2 + 2));
              v16[2] = v40;
              v41 = *(v37 + 2 * *(a2 + 3));
              v16[3] = v41;
              v19 = v141;
              if (v141 >= 5)
              {
                v42 = a2 + 7;
                v43 = v147;
                v44 = v137;
                do
                {
                  v45 = *(v37 + 2 * *(v42 - 3));
                  *(v43 - 3) = (v45 - v38) & 0x7FF;
                  v46 = *(v37 + 2 * *(v42 - 2));
                  *(v43 - 2) = (v46 - v39) & 0x7FF;
                  v47 = *(v37 + 2 * *(v42 - 1));
                  *(v43 - 1) = (v47 - v40) & 0x7FF;
                  v48 = *v42;
                  v42 += 4;
                  v49 = *(v37 + 2 * v48);
                  *v43 = (v49 - v41) & 0x7FF;
                  v43 += 4;
                  v44 -= 4;
                  v41 = v49;
                  v40 = v47;
                  v39 = v46;
                  v38 = v45;
                }

                while (v44 > 8);
                goto LABEL_80;
              }
            }
          }
        }

LABEL_171:
        a2 = (a2 + v19);
        v13 += v20;
        v16 += v20;
        v8 = v144;
        v147 = (v147 + v145);
        v146 = (v146 + v145);
        LODWORD(a3) = v143;
        v9 = v142;
        v10 = v20;
        if (v13 >= v143)
        {
          goto LABEL_172;
        }
      }
    }

LABEL_183:
    v133 = *(a1 + 116);
    v11 = "%hu bit input not supported in PixarLog";
    goto LABEL_184;
  }

LABEL_172:
  v8[16] = v139;
  *(v8 + 34) = 2 * a3;
  if ((a3 & 0x80000000) != 0)
  {
    v11 = "ZLib cannot deal with buffers this size";
    a1 = v138;
    goto LABEL_184;
  }

  while (!deflate((v8 + 16), 0))
  {
    if (!*(v8 + 40))
    {
      v138[145] = v138[141];
      result = TIFFFlushData1(v138, v124, v125, v126, v127, v128, v129, v130);
      if (!result)
      {
        return result;
      }

      v8[19] = v138[140];
      *(v8 + 40) = v138[141];
    }

    if (!*(v8 + 34))
    {
      return 1;
    }
  }

  v132 = v8[22];
  if (!v132)
  {
    v132 = "(null)";
  }

  TIFFErrorExtR(v138, "PixarLogEncode", "Encoder error: %s", v126, v127, v128, v129, v130, v132);
  return 0;
}

uint64_t PixarLogClose(uint64_t result)
{
  v1 = *(result + 1096);
  if (!v1)
  {
    PixarLogClose_cold_1();
  }

  if (*(v1 + 260))
  {
    *(result + 116) = 65544;
  }

  return result;
}

uint64_t PixarLogCleanup(uint64_t a1)
{
  v1 = *(a1 + 1096);
  if (!v1)
  {
    PixarLogCleanup_cold_1();
  }

  TIFFPredictorCleanup(a1);
  v3 = *(v1 + 280);
  *(a1 + 1288) = *(v1 + 272);
  *(a1 + 1280) = v3;
  v4 = *(v1 + 312);
  if (v4)
  {
    free(v4);
  }

  v5 = *(v1 + 320);
  if (v5)
  {
    free(v5);
  }

  v6 = *(v1 + 328);
  if (v6)
  {
    free(v6);
  }

  v7 = *(v1 + 288);
  if (v7)
  {
    free(v7);
  }

  v8 = *(v1 + 296);
  if (v8)
  {
    free(v8);
  }

  v9 = *(v1 + 304);
  if (v9)
  {
    free(v9);
  }

  if (*(v1 + 260))
  {
    if (*(a1 + 12))
    {
      deflateEnd((v1 + 128));
    }

    else
    {
      inflateEnd((v1 + 128));
    }
  }

  v10 = *(v1 + 248);
  if (v10)
  {
    free(v10);
  }

  free(v1);
  *(a1 + 1096) = 0;

  return _TIFFSetDefaultCompressionState(a1);
}

uint64_t PixarLogVGetField(uint64_t a1, int a2, _DWORD **a3)
{
  v3 = *(a1 + 1096);
  if (a2 == 65549)
  {
    v4 = *(v3 + 264);
    goto LABEL_5;
  }

  if (a2 == 65558)
  {
    v4 = *(v3 + 268);
LABEL_5:
    **a3 = v4;
    return 1;
  }

  return (*(v3 + 272))();
}

uint64_t PixarLogVSetField(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 1096);
  if (a2 == 65549)
  {
    v18 = *a3;
    *(v9 + 264) = *a3;
    if (v18 <= 5)
    {
      _cg_TIFFSetField(a1, 258, a3, a4, a5, a6, a7, a8, *&asc_186224498[4 * v18]);
      _cg_TIFFSetField(a1, 339, v19, v20, v21, v22, v23, v24, dword_1862244B0[v18]);
    }

    if ((*(a1 + 17) & 4) != 0)
    {
      v25 = _cg_TIFFTileSize(a1, a2, a3, a4, a5, a6, a7, a8);
    }

    else
    {
      v25 = -1;
    }

    *(a1 + 936) = v25;
    *(a1 + 1104) = _cg_TIFFScanlineSize(a1, a2, a3, a4, a5, a6, a7, a8);
    return 1;
  }

  if (a2 == 65558)
  {
    v10 = *a3;
    *(v9 + 268) = *a3;
    if (*(a1 + 12) && (*(v9 + 260) & 1) != 0 && deflateParams((v9 + 128), v10, 0))
    {
      v16 = *(v9 + 176);
      if (!v16)
      {
        v16 = "(null)";
      }

      TIFFErrorExtR(a1, "PixarLogVSetField", "ZLib error: %s", v11, v12, v13, v14, v15, v16);
      return 0;
    }

    return 1;
  }

  v26 = *(v9 + 280);

  return v26();
}

uint64_t PixarLogGuessDataFmt(uint64_t a1)
{
  v1 = *(a1 + 46);
  v2 = *(a1 + 44);
  if (((v1 - 2) & 0xFFFD) != 0)
  {
    v3 = -1;
  }

  else
  {
    v3 = 3;
  }

  if (v1 == 1 || v1 == 4)
  {
    v5 = 4;
  }

  else
  {
    v5 = -1;
  }

  if (v1 == 3)
  {
    v6 = 5;
  }

  else
  {
    v6 = -1;
  }

  if (v2 != 32)
  {
    v6 = -1;
  }

  if (v2 != 16)
  {
    v5 = v6;
  }

  if (v2 != 12)
  {
    v3 = v5;
  }

  v8 = v1 != 4 && v1 != 1;
  v9 = v8 << 31 >> 31;
  if (v1 == 1 || v1 == 4)
  {
    v11 = 2;
  }

  else
  {
    v11 = -1;
  }

  if (v2 != 11)
  {
    v11 = -1;
  }

  if (v2 == 8)
  {
    v11 = v9;
  }

  if (*(a1 + 44) <= 0xBu)
  {
    return v11;
  }

  else
  {
    return v3;
  }
}

void IIO_Reader_TIFF::~IIO_Reader_TIFF(IIO_Reader_TIFF *this, uint64_t a2, const char *a3)
{
  _cg_jpeg_mem_term(this, a2, a3);

  JUMPOUT(0x186602850);
}

void IIO_Reader_TIFF::createReadPlugin()
{
  operator new();
}

{
  operator new();
}

IIOImageRead *IIO_Reader_TIFF::createGlobalInfoData(IIO_Reader_TIFF *this, IIOImageReadSession *a2)
{
  result = IIOImageReadSession::globalInfoForType(a2, *(this + 6));
  if (result)
  {

    return GlobalTIFFInfo::createDataRepresentation(result);
  }

  return result;
}

uint64_t IIO_Reader_TIFF::getImageCount(IIO_Reader_TIFF *this, IIOImageReadSession *a2, IIODictionary *a3, CGImageSourceStatus *a4, unsigned int *a5)
{
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v15 = 0;
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  IIOScanner::IIOScanner(&v10, a2);
  SetupTIFFErrorHandler();
  if (v11 >= 9)
  {
    v6 = IIOScanner::getVal16(&v10) != 19789;
    IIOScanner::setEndianness(&v10, v6);
    Val16 = IIOScanner::getVal16(&v10);
    if ((Val16 & 0xFFFE) == 0x2A)
    {
      if (Val16 == 43)
      {
        v8 = IIOScanner::getVal16(&v10);
        IIOScanner::skip(&v10, 2uLL);
      }

      else
      {
        v8 = 4;
      }

      LODWORD(v12) = v8;
      operator new();
    }
  }

  if (a5)
  {
    *a5 = 0;
  }

  IIOScanner::~IIOScanner(&v10);
  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  if (v22)
  {
    v23 = v22;
    operator delete(v22);
  }

  return 4294967246;
}

void sub_18605EE20(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  __cxa_begin_catch(a1);
  *(v13 - 128) = *(v13 - 136);
  __cxa_end_catch();
  JUMPOUT(0x18605EE10);
}

void sub_18605EE90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  IIOScanner::~IIOScanner(&a29);
  v31 = *(v29 - 160);
  if (v31)
  {
    *(v29 - 152) = v31;
    operator delete(v31);
  }

  v32 = *(v29 - 136);
  if (v32)
  {
    *(v29 - 128) = v32;
    operator delete(v32);
  }

  v33 = *(v29 - 112);
  if (v33)
  {
    *(v29 - 104) = v33;
    operator delete(v33);
  }

  _Unwind_Resume(a1);
}

void std::vector<unsigned long long>::push_back[abi:fe200100](const void **a1, void *a2)
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
      std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
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
      std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned long long>>(a1, v12);
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

void sub_18605F09C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18605F080);
}

uint64_t IIO_Reader_TIFF::compareOptions(IIO_Reader_TIFF *this, const __CFDictionary *a2, const __CFDictionary *a3)
{
  memset(v19, 0, sizeof(v19));
  IIODictionary::IIODictionary(v19, a2);
  memset(v18, 0, sizeof(v18));
  IIODictionary::IIODictionary(v18, a3);
  BoolForKey = IIODictionary::getBoolForKey(v19, @"kCGImageSourceShouldAllowFloat");
  if (BoolForKey == IIODictionary::getBoolForKey(v18, @"kCGImageSourceShouldAllowFloat") && ((Uint32ForKey = IIODictionary::getUint32ForKey(v19, @"kCGImageSourceSubsampleFactor"), v7 = IIODictionary::getUint32ForKey(v18, @"kCGImageSourceSubsampleFactor"), Uint32ForKey <= 1) ? (v8 = 1) : (v8 = Uint32ForKey), v7 <= 1 ? (v9 = 1) : (v9 = v7), v8 == v9 && (ObjectForKey = IIODictionary::getObjectForKey(v19, @"kCGImageSourceXMPSidecar"), v11 = IIODictionary::getObjectForKey(v18, @"kCGImageSourceXMPSidecar"), (ObjectForKey != 0) == (v11 != 0)) && (!ObjectForKey || !v11 || CFEqual(ObjectForKey, v11)) && (v12 = IIOSkipMetadata(v19), IIOSkipMetadata(v18) & 1 | ((v12 & 1) == 0))))
  {
    Value = CFDictionaryGetValue(a2, @"kCGImageSourceDecodeRequest");
    v14 = CFDictionaryGetValue(a3, @"kCGImageSourceDecodeRequest");
    if (Value && v14)
    {
      v15 = CFStringCompare(Value, v14, 0) == kCFCompareEqualTo;
    }

    else
    {
      v15 = (Value | v14) == 0;
    }

    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  IIODictionary::~IIODictionary(v18);
  IIODictionary::~IIODictionary(v19);
  return v16;
}

void sub_18605F284(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  IIODictionary::~IIODictionary(&a9);
  IIODictionary::~IIODictionary(&a12);
  _Unwind_Resume(a1);
}

void *std::vector<unsigned long long>::__assign_with_size[abi:fe200100]<unsigned long long *,unsigned long long *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
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

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<unsigned long long>::__vallocate[abi:fe200100](v6, v10);
    }

    std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
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

void std::vector<unsigned long long>::__vallocate[abi:fe200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned long long>>(a1, a2);
  }

  std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
}

void std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned long long>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:fe200100]();
}

uint64_t std::vector<unsigned long long>::__init_with_size[abi:fe200100]<unsigned long long *,unsigned long long *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned long long>::__vallocate[abi:fe200100](result, a4);
  }

  return result;
}

void sub_18605F4F4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AppleJPEGWritePlugin::get_encoding_format(AppleJPEGWritePlugin *this, IIODictionary *a2)
{
  EncodingHorizontalSubsamplingFactor = JPEGWritePlugin::getEncodingHorizontalSubsamplingFactor(this, a2);
  result = JPEGWritePlugin::getEncodingVerticalSubsamplingFactor(this, a2);
  if (EncodingHorizontalSubsamplingFactor == 2 && result == 2)
  {
    return 3;
  }

  if (EncodingHorizontalSubsamplingFactor == 1 && result == 1)
  {
    return 0;
  }

  if ((EncodingHorizontalSubsamplingFactor != 2 || result != 1) && (EncodingHorizontalSubsamplingFactor != 1 || result != 2))
  {
    _cg_jpeg_mem_term("get_encoding_format", 133, "Unsupported chroma subsampling combination: H=%d,V=%d - using 4:2:0\n", EncodingHorizontalSubsamplingFactor, result);
    return 3;
  }

  return result;
}

void AppleJPEGWritePlugin::~AppleJPEGWritePlugin(AppleJPEGWritePlugin *this)
{
  JPEGWritePlugin::~JPEGWritePlugin(this);

  JUMPOUT(0x186602850);
}

__IOSurface *AppleJPEGWritePlugin::createJpegDataFromIOSurface(AppleJPEGWritePlugin *this, __IOSurface *a2, IIODictionary *a3)
{
  v16 = 0;
  IIO_LoadCMPhotoSymbols();
  if (a2)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    IIODictionary::IIODictionary(&v13);
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    DoubleForKey = 0.75;
    if (IIODictionary::containsKey(a3, @"kCGImageDestinationLossyCompressionQuality"))
    {
      DoubleForKey = IIODictionary::getDoubleForKey(a3, @"kCGImageDestinationLossyCompressionQuality");
    }

    LumaQuantizationTableFromImageIOQuality = JPEGWritePlugin::createLumaQuantizationTableFromImageIOQuality(this, DoubleForKey, 0);
    ChromaQuantizationTableFromImageIOQuality = JPEGWritePlugin::createChromaQuantizationTableFromImageIOQuality(this, DoubleForKey, 0);
    CFArrayAppendValue(Mutable, LumaQuantizationTableFromImageIOQuality);
    CFArrayAppendValue(Mutable, ChromaQuantizationTableFromImageIOQuality);
    CFRelease(LumaQuantizationTableFromImageIOQuality);
    CFRelease(ChromaQuantizationTableFromImageIOQuality);
    IIONumber::IIONumber(v12, 2);
    IIODictionary::setObjectForKey(&v13, v12, *gIIO_kCMPhotoCompressionOption_QualityControllerType);
    IIONumber::~IIONumber(v12);
    IIODictionary::setObjectForKey(&v13, Mutable, *gIIO_kCMPhotoCompressionOption_QualityControllerParameters);
    CFRelease(Mutable);
    v10 = gFunc_CMPhotoCompressionCreateDataContainerFromImage(v14, a2, 0, 0, 1, &v16);
    if (v10 && (gIIODebugFlags & 0x1000000000) != 0)
    {
      ImageIOLog("H   ERROR: Hardware encode failed: err=%d\n", v10);
    }

    a2 = v16;
    IIODictionary::~IIODictionary(&v13);
  }

  return a2;
}

void sub_18605F7BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  IIONumber::~IIONumber(va);
  IIODictionary::~IIODictionary(va1);
  _Unwind_Resume(a1);
}

uint64_t AppleJPEGWritePlugin::copyIOSurfaceFromPixelProvider(AppleJPEGWritePlugin *this, IIOImagePixelDataProvider *a2)
{
  Ref = IIOImageSource::imageReadRef(a2);
  if (_ImageHasMask())
  {
    goto LABEL_2;
  }

  Property = CGImageGetProperty();
  if (Property)
  {
    v6 = Property;
    IIOFrameBufferRetain(Property);
    return v6;
  }

  CGImageGetImageProvider();
  if (!Ref || (memset(&dest, 0, 24), IIODictionary::IIODictionary(&dest), IIONumber::IIONumber(permuteMap, 875704422), IIODictionary::setObjectForKey(&dest, value, @"kCGImageSurfaceFormatRequest"), IIONumber::~IIONumber(permuteMap), v6 = CGImageProviderCopyIOSurface(), IIODictionary::~IIODictionary(&dest), !v6))
  {
LABEL_2:
    BitmapInfo = IIOImagePixelDataProvider::getBitmapInfo(a2);
    if (BitmapInfo == 8198 || BitmapInfo == 5)
    {
      IIOImageSource::count(a2);
      IIO_Reader::testHeaderSize(a2);
      IIOImagePixelDataProvider::getBytesPerRow(a2);
      IIO_CreateOutputSurfaceWithFormat();
    }

    return 0;
  }

  return v6;
}

void sub_18605FA34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

uint64_t AppleJPEGWritePlugin::writeOne(IIOImageWriteSession **this, IIOImagePixelDataProvider *a2, IIODictionary *a3, IIODictionary *a4)
{
  v65 = *MEMORY[0x1E69E9840];
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v57 = 0u;
  v56 = 0;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  *v47 = 0u;
  v45 = 0;
  v46 = 0;
  v43 = 0u;
  v44 = 0u;
  v42 = 0u;
  AlphaInfo = IIOImagePixelDataProvider::getAlphaInfo(a2);
  SourceGeomColorSpace = IIOImagePlus::getSourceGeomColorSpace(a2);
  Model = CGColorSpaceGetModel(SourceGeomColorSpace);
  __ptr = -9985;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  applejpeg_get_api_number();
  if (!applejpeg_encode_create())
  {
    AppleJPEGWritePlugin::writeOne();
LABEL_75:
    v23 = 4294967246;
    goto LABEL_62;
  }

  applejpeg_encode_options_init();
  if (!IIODictionary::getObjectForKeyGroup(a3, @"Quantization", @"{JPEG}"))
  {
    LODWORD(v58) = 0;
    ImageIOCompressionQuality = JPEGWritePlugin::GetImageIOCompressionQuality(a3, v10);
    LumaQuantizationTableFromImageIOQuality = JPEGWritePlugin::createLumaQuantizationTableFromImageIOQuality(this, ImageIOCompressionQuality, 0);
    BytePtr = CFDataGetBytePtr(LumaQuantizationTableFromImageIOQuality);
    *(&v58 + 1) = BytePtr;
    if (Model == kCGColorSpaceModelRGB)
    {
      ChromaQuantizationTableFromImageIOQuality = JPEGWritePlugin::createChromaQuantizationTableFromImageIOQuality(this, ImageIOCompressionQuality, 0);
      BytePtr = CFDataGetBytePtr(ChromaQuantizationTableFromImageIOQuality);
LABEL_14:
      theData = 0;
      goto LABEL_15;
    }

LABEL_13:
    ChromaQuantizationTableFromImageIOQuality = 0;
    goto LABEL_14;
  }

  QuantizationTableFromPropertiesForComponentIndex = createQuantizationTableFromPropertiesForComponentIndex(a3, 0);
  LumaQuantizationTableFromImageIOQuality = QuantizationTableFromPropertiesForComponentIndex;
  if (QuantizationTableFromPropertiesForComponentIndex)
  {
    LODWORD(v58) = 0;
    BytePtr = CFDataGetBytePtr(QuantizationTableFromPropertiesForComponentIndex);
    *(&v58 + 1) = BytePtr;
    if (Model == kCGColorSpaceModelRGB)
    {
      ChromaQuantizationTableFromImageIOQuality = createQuantizationTableFromPropertiesForComponentIndex(a3, 1u);
      theData = createQuantizationTableFromPropertiesForComponentIndex(a3, 2u);
      if (ChromaQuantizationTableFromImageIOQuality && !theData)
      {
        theData = CFRetain(ChromaQuantizationTableFromImageIOQuality);
      }

      if (ChromaQuantizationTableFromImageIOQuality && theData)
      {
        *&v59 = CFDataGetBytePtr(ChromaQuantizationTableFromImageIOQuality);
        BytePtr = CFDataGetBytePtr(theData);
LABEL_16:
        *(&v59 + 1) = BytePtr;
        goto LABEL_18;
      }

      BytePtr = *(&v58 + 1);
LABEL_15:
      *&v59 = BytePtr;
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  ChromaQuantizationTableFromImageIOQuality = 0;
  theData = 0;
LABEL_18:
  if (IIODictionary::getBoolForKeyGroup(a3, @"IsProgressive", @"{JFIF}"))
  {
    HIDWORD(v60) = 1;
  }

  LODWORD(v57) = 1;
  DWORD2(v60) = AppleJPEGWritePlugin::get_encoding_format(this, a3);
  LODWORD(v62) = 1;
  v16 = IIO_Reader::testHeaderSize(a2);
  DWORD2(v49) = IIOImageSource::count(a2);
  HIDWORD(v49) = v16;
  switch(Model)
  {
    case kCGColorSpaceModelCMYK:
      if (!AlphaInfo)
      {
        LODWORD(v50) = 15;
      }

      v18 = JPEGWritePlugin::GetImageIOCompressionQuality(a3, v17);
      LODWORD(v58) = JPEGWritePlugin::JPEGQualityFromLossyCompressionQuality(v19, v18);
      break;
    case kCGColorSpaceModelRGB:
      if (AlphaInfo)
      {
        LODWORD(v50) = 3;
      }

      else
      {
        LODWORD(v50) = 0;
      }

      break;
    case kCGColorSpaceModelMonochrome:
      if (!AlphaInfo)
      {
        LODWORD(v50) = 5;
      }

      DWORD2(v60) = 4;
      break;
  }

  BytesPerRow = IIOImagePixelDataProvider::getBytesPerRow(a2);
  v21 = BytesPerRow;
  if (!BytesPerRow)
  {
    AppleJPEGWritePlugin::writeOne();
LABEL_69:
    if (LumaQuantizationTableFromImageIOQuality)
    {
      CFRelease(LumaQuantizationTableFromImageIOQuality);
    }

    if (ChromaQuantizationTableFromImageIOQuality)
    {
      CFRelease(ChromaQuantizationTableFromImageIOQuality);
    }

    if (theData)
    {
      CFRelease(theData);
    }

    goto LABEL_75;
  }

  LODWORD(v49) = 1;
  v47[0] = malloc_type_malloc(BytesPerRow, 0x100004077774924uLL);
  if (!v47[0])
  {
    _cg_jpeg_mem_term("writeOne", 472, "*** ERROR: malloc(%d) failed\n", v21);
    goto LABEL_69;
  }

  v22 = this[2];
  *(&v42 + 1) = iioWriteCallback;
  *&v44 = v22;
  v23 = applejpeg_encode_set_options_file();
  if (LumaQuantizationTableFromImageIOQuality)
  {
    CFRelease(LumaQuantizationTableFromImageIOQuality);
  }

  if (ChromaQuantizationTableFromImageIOQuality)
  {
    CFRelease(ChromaQuantizationTableFromImageIOQuality);
  }

  if (theData)
  {
    CFRelease(theData);
  }

  if (v23)
  {
    _cg_jpeg_mem_term("writeOne", 493, "*** ERROR applejpeg_encode_set_options_file returned: %d\n", v23);
  }

  else
  {
    iioWriteCallback(&__ptr, 2, this[2]);
    v38 = 0x4649464A1000E0FFLL;
    *(&v39 + 1) = 257;
    if (a3 && IIODictionary::containsKey(a3, @"DPIHeight") && IIODictionary::containsKey(a3, @"DPIWidth"))
    {
      FloatForKey = IIODictionary::getFloatForKey(a3, @"DPIWidth");
      v25 = IIODictionary::getFloatForKey(a3, @"DPIHeight");
      v26 = vcvtmd_s64_f64(FloatForKey + 0.5);
      v27 = vcvtmd_s64_f64(v25 + 0.5);
    }

    else
    {
      v27 = 72;
      v26 = 72;
    }

    WORD2(v39) = __rev16(v26);
    HIWORD(v39) = __rev16(v27);
    v40 = 0;
    iioWriteCallback(&v38, 18, this[2]);
    AppleJPEGWritePlugin::WriteExifData(this[2], a2, a3, v28);
    if (!IIODictionary::getBoolForKey(a3, @"kCGImageMetadataShouldExcludeXMP"))
    {
      IIODictionary::removeObjectForKeyGroup(a3, @"Software", @"{TIFF}");
      JPEGWritePlugin::WriteExtendedXMPData(this[2], a3, v30);
    }

    JPEGWritePlugin::WriteIPTCData(this[2], a2, a3, v29);
    JPEGWritePlugin::WriteICCData(this[2], a2, 0, v31);
    HIDWORD(v49) = 1;
    if (Model == kCGColorSpaceModelCMYK)
    {
      v64 = xmmword_1862244E0;
      iioWriteCallback(&v64, 16, this[2]);
    }

    if (v16)
    {
      v32 = 0;
      while (1)
      {
        Bytes = IIOImagePixelDataProvider::getBytes(a2, v47[0]);
        if (Bytes != v21)
        {
          _cg_jpeg_mem_term("writeOne", 557, "*** ERROR: CGImagePixelDataProviderGetBytes failed (%d/%d) - expected: %ld  got: %ld\n", v32, v16, v21, Bytes);
          goto LABEL_61;
        }

        if (Model == kCGColorSpaceModelCMYK)
        {
          v34 = v47[0];
          v35 = v21;
          do
          {
            *v34 = ~*v34;
            ++v34;
            --v35;
          }

          while (v35);
        }

        v23 = applejpeg_encode_image_row();
        if (v23)
        {
          break;
        }

        if (++v32 == v16)
        {
          goto LABEL_61;
        }
      }

      _cg_jpeg_mem_term("writeOne", 568, "*** ERROR: applejpeg_encode_image_row  err = %d\n", v23);
    }

    else
    {
LABEL_61:
      v23 = 0;
    }
  }

LABEL_62:
  applejpeg_encode_destroy();
  if (v47[0])
  {
    free(v47[0]);
  }

  return v23;
}

void sub_1860600BC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x18605FFC4);
  }

  _Unwind_Resume(a1);
}

void AppleJPEGWritePlugin::WriteExifData(AppleJPEGWritePlugin *this, IIOImageWriteSession *SourceGeomColorSpace, IIOImagePixelDataProvider *a3, IIODictionary *a4)
{
  v16 = 0;
  __ptr = 57855;
  if (!this || !a3)
  {
    AppleJPEGWritePlugin::WriteExifData();
    return;
  }

  if (IIODictionary::getBoolForKey(a3, @"kCGImageDestinationEmbedThumbnail"))
  {
    Ref = IIOImageSource::imageReadRef(SourceGeomColorSpace);
    Thumb = CGImageCreateThumb(Ref, 0xA0uLL);
    JPEGDataFromImage = AppleJPEGReadPlugin::CreateJPEGDataFromImage(SourceGeomColorSpace, a3, Thumb, v9);
    if (SourceGeomColorSpace)
    {
LABEL_5:
      v11 = IIOImageSource::count(SourceGeomColorSpace);
      v12 = IIO_Reader::testHeaderSize(SourceGeomColorSpace);
      SourceGeomColorSpace = IIOImagePlus::getSourceGeomColorSpace(SourceGeomColorSpace);
      goto LABEL_8;
    }
  }

  else
  {
    Thumb = 0;
    JPEGDataFromImage = 0;
    if (SourceGeomColorSpace)
    {
      goto LABEL_5;
    }
  }

  v11 = 0;
  v12 = 0;
LABEL_8:
  IIODebugOrientation("WriteExifData", 858, a3);
  v13 = CreateExifBufferFromPropertiesJPEG(a3, v11, v12, SourceGeomColorSpace, JPEGDataFromImage, @"public.jpeg", &v16);
  if (v13)
  {
    v14 = v16 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    AppleJPEGWritePlugin::WriteExifData();
    if (!JPEGDataFromImage)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  HIWORD(__ptr) = bswap32(v16 + 2) >> 16;
  iioWriteCallback(&__ptr, 4, this);
  iioWriteCallback(v13, v16, this);
  if (JPEGDataFromImage)
  {
LABEL_13:
    CFRelease(JPEGDataFromImage);
  }

LABEL_14:
  if (Thumb)
  {
    CGImageRelease(Thumb);
  }

  if (v13)
  {
    free(v13);
  }
}

uint64_t AppleJPEGWritePlugin::writeAll(IIOImageDestination **this)
{
  if (!IIOWritePlugin::getImageCount(this))
  {
    return 4294967246;
  }

  PixelDataProviderAtIndex = IIOWritePlugin::getPixelDataProviderAtIndex(this, 0);
  PropertiesAtIndex = IIOWritePlugin::getPropertiesAtIndex(this, 0);
  ContainerProperties = IIOWritePlugin::getContainerProperties(this);
  if (!PixelDataProviderAtIndex)
  {
    AppleJPEGWritePlugin::writeAll();
    return 4294967246;
  }

  v5 = ContainerProperties;
  v6 = IIO_HardwareEncoderDefaultValue();
  BoolForKey = IIODictionary::containsKey(PropertiesAtIndex, @"kCGImageDestinationUseHardwareAcceleration");
  if (BoolForKey)
  {
    BoolForKey = IIODictionary::getBoolForKey(PropertiesAtIndex, @"kCGImageDestinationUseHardwareAcceleration");
  }

  if (!v6 || v6 != 1 && !BoolForKey)
  {
    return (*(*this + 3))(this, PixelDataProviderAtIndex, PropertiesAtIndex, v5, 0);
  }

  if (IIODictionary::getBoolForKey(PropertiesAtIndex, @"kCGImageDestinationEmbedThumbnail"))
  {
    Ref = IIOImageSource::imageReadRef(PixelDataProviderAtIndex);
    Thumb = CGImageCreateThumb(Ref, 0xA0uLL);
    JPEGDataFromImage = AppleJPEGReadPlugin::CreateJPEGDataFromImage(PixelDataProviderAtIndex, PropertiesAtIndex, Thumb, v10);
  }

  else
  {
    Thumb = 0;
    JPEGDataFromImage = 0;
  }

  if ((gIIODebugFlags & 0x1000000000) != 0)
  {
    ImageIOLog("H   writeJpegWithHardwareEncoding\n");
  }

  v12 = AppleJPEGWritePlugin::writeJpegWithHardwareEncoding(this, this[2], PixelDataProviderAtIndex, JPEGDataFromImage, PropertiesAtIndex[1]);
  if (v12 && (gIIODebugFlags & 0x1000000000) != 0)
  {
    ImageIOLog("H   writeJpegWithHardwareEncoding failed. Trying SW encode...\n");
  }

  if (JPEGDataFromImage)
  {
    CFRelease(JPEGDataFromImage);
  }

  if (Thumb)
  {
    CFRelease(Thumb);
  }

  if (!v12)
  {
    return 0;
  }

  else
  {
    return (*(*this + 3))(this, PixelDataProviderAtIndex, PropertiesAtIndex, v5, 0);
  }
}

void sub_18606041C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x186060400);
}

uint64_t AppleJPEGWritePlugin::writeJpegWithHardwareEncoding(AppleJPEGWritePlugin *this, IIOImageWriteSession *a2, IIOImagePixelDataProvider *a3, const __CFData *a4, const __CFDictionary *a5)
{
  v10 = AppleJPEGWritePlugin::copyIOSurfaceFromPixelProvider(this, a3);
  if (v10)
  {
    v11 = v10;
    PixelFormat = IOSurfaceGetPixelFormat(v10);
    if ((gIIODebugFlags & 0x1000000000) != 0)
    {
      v13 = PixelFormat;
      v14 = PixelFormat >> 24;
      v15 = MEMORY[0x1E69E9830];
      if ((PixelFormat >> 24) <= 0x7F)
      {
        v16 = *(MEMORY[0x1E69E9830] + 4 * v14 + 60) & 0x40000;
      }

      else
      {
        v16 = __maskrune(PixelFormat >> 24, 0x40000uLL);
        v15 = MEMORY[0x1E69E9830];
      }

      v18 = a4;
      if (v16)
      {
        v19 = v14;
      }

      else
      {
        v19 = 46;
      }

      v20 = (v13 << 8) >> 24;
      v21 = a2;
      if (v20 <= 0x7F)
      {
        v22 = *(v15 + 4 * v20 + 60) & 0x40000;
      }

      else
      {
        v22 = __maskrune((v13 << 8) >> 24, 0x40000uLL);
        v15 = MEMORY[0x1E69E9830];
      }

      if (v22)
      {
        v23 = v20;
      }

      else
      {
        v23 = 46;
      }

      LODWORD(v24) = v13 >> 8;
      if (v24 <= 0x7F)
      {
        v25 = *(v15 + 4 * v24 + 60) & 0x40000;
      }

      else
      {
        v25 = __maskrune(v13 >> 8, 0x40000uLL);
        v15 = MEMORY[0x1E69E9830];
      }

      if (v25)
      {
        v24 = v24;
      }

      else
      {
        v24 = 46;
      }

      v13 = v13;
      if (v13 <= 0x7F)
      {
        v26 = *(v15 + 4 * v13 + 60) & 0x40000;
      }

      else
      {
        v26 = __maskrune(v13, 0x40000uLL);
      }

      if (v26)
      {
        v27 = v13;
      }

      else
      {
        v27 = 46;
      }

      ImageIOLog("H   copyIOSurfaceFromPixelProvider - <IOSurface:%p> '%c%c%c%c'\n", v11, v19, v23, v24, v27);
      a2 = v21;
      a4 = v18;
    }

    memset(v42, 0, sizeof(v42));
    IIODictionary::IIODictionary(v42, a5);
    JpegDataFromIOSurface = AppleJPEGWritePlugin::createJpegDataFromIOSurface(this, v11, v42);
    if (!JpegDataFromIOSurface)
    {
      v17 = 0;
LABEL_66:
      IIO_IOSurfaceRelease(v11);
      IIODictionary::~IIODictionary(v42);
      return v17;
    }

    v29 = *MEMORY[0x1E695E480];
    v30 = CFWriteStreamCreateWithAllocatedBuffers(*MEMORY[0x1E695E480], *MEMORY[0x1E695E480]);
    v31 = v30;
    if (!v30)
    {
      v17 = 0;
LABEL_65:
      CFRelease(JpegDataFromIOSurface);
      goto LABEL_66;
    }

    if (!CFWriteStreamOpen(v30))
    {
      v17 = 0;
LABEL_64:
      CFRelease(v31);
      goto LABEL_65;
    }

    value = 0;
    if (a5 && CFDictionaryGetValueIfPresent(a5, @"{MetaData}", &value))
    {
      MutableCopy = CFDictionaryCreateMutableCopy(v29, 0, a5);
      if (MutableCopy)
      {
        CFRetain(value);
        CFDictionaryRemoveValue(MutableCopy, @"{MetaData}");
        a5 = MutableCopy;
      }
    }

    else
    {
      MutableCopy = 0;
    }

    SourceGeomColorSpace = IIOImagePlus::getSourceGeomColorSpace(a3);
    if (CGColorSpaceGetType() != 6 && CGColorSpaceGetType() != 10 || IIO_CGColorSpaceNameMatchesName(SourceGeomColorSpace, *MEMORY[0x1E695F1C0]) || (v34 = CGColorSpaceCopyICCData(SourceGeomColorSpace)) == 0)
    {
LABEL_53:
      if (CGImageWriteEXIFJPEGWithMetadata(v31, JpegDataFromIOSurface, a4, a5, value, 0) && (v36 = CFWriteStreamCopyProperty(v31, *MEMORY[0x1E695E900]), (v37 = v36) != 0))
      {
        BytePtr = CFDataGetBytePtr(v36);
        Length = CFDataGetLength(v37);
        if (IIOImageWriteSession::putBytes(a2, BytePtr, Length) == Length)
        {
          v17 = 0;
        }

        else
        {
          _cg_jpeg_mem_term("writeJpegWithHardwareEncoding", 790, "*** ERROR: failed to write %ld bytes\n", Length);
          v17 = 4294967246;
        }

        CFRelease(v37);
      }

      else
      {
        v17 = 0;
      }

      if (MutableCopy)
      {
        CFRelease(MutableCopy);
      }

      if (value)
      {
        CFRelease(value);
      }

      goto LABEL_64;
    }

    if (!a5 || MutableCopy)
    {
      if (a5 | MutableCopy)
      {
LABEL_50:
        if (MutableCopy)
        {
          CFDictionarySetValue(MutableCopy, @"kCGImageDestinationICCProfile", v34);
        }

        CFRelease(v34);
        goto LABEL_53;
      }

      Mutable = CFDictionaryCreateMutable(v29, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    else
    {
      Mutable = CFDictionaryCreateMutableCopy(v29, 0, a5);
    }

    MutableCopy = Mutable;
    a5 = Mutable;
    goto LABEL_50;
  }

  return 0;
}

void sub_186060834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

const __CFDictionary *createQuantizationTableFromPropertiesForComponentIndex(IIODictionary *a1, unsigned int a2)
{
  v22 = *MEMORY[0x1E69E9840];
  result = IIODictionary::getObjectForKeyGroup(a1, @"Quantization", @"{JPEG}");
  if (result)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(result, a2);
    if (ValueAtIndex)
    {
      v5 = ValueAtIndex == *MEMORY[0x1E695E738];
    }

    else
    {
      v5 = 1;
    }

    if (!v5 && (v6 = ValueAtIndex, v7 = CFGetTypeID(ValueAtIndex), v7 == CFDataGetTypeID()) && CFDataGetLength(v6) == 128)
    {
      v20 = 0u;
      v21 = 0u;
      *bytes = 0u;
      v19 = 0u;
      BytePtr = CFDataGetBytePtr(v6);
      v9 = 0;
      v10 = *(BytePtr + 5);
      v17[4] = *(BytePtr + 4);
      v17[5] = v10;
      v11 = *(BytePtr + 7);
      v17[6] = *(BytePtr + 6);
      v17[7] = v11;
      v12 = *(BytePtr + 1);
      v17[0] = *BytePtr;
      v17[1] = v12;
      v13 = *(BytePtr + 3);
      v14 = v17;
      v17[2] = *(BytePtr + 2);
      v17[3] = v13;
      do
      {
        v16 = *v14;
        v15 = v14[1];
        v14 += 2;
        *&bytes[v9] = vuzp1q_s8(v16, v15);
        v9 += 16;
      }

      while (v9 != 64);
      return CFDataCreate(*MEMORY[0x1E695E480], bytes, 64);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void IIO_Writer_AppleJPEG::~IIO_Writer_AppleJPEG(IIO_Writer_AppleJPEG *this, uint64_t a2, const char *a3)
{
  _cg_jpeg_mem_term(this, a2, a3);

  JUMPOUT(0x186602850);
}

uint64_t IIO_Writer_AppleJPEG::write(IIO_Writer_AppleJPEG *this, IIOImageWriteSession *a2, IIOImageDestination *a3)
{
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "IIO_Writer_AppleJPEG::write", 0, 0, -1, 0);
  }

  v8 = 0;
  memset(v7, 0, sizeof(v7));
  JPEGWritePlugin::JPEGWritePlugin(v7, a2, a3, 71);
  *&v7[0] = &unk_1EF4DA7D0;
  v5 = AppleJPEGWritePlugin::writeAll(v7);
  JPEGWritePlugin::~JPEGWritePlugin(v7);
  return v5;
}

void sub_186060A9C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  JPEGWritePlugin::~JPEGWritePlugin(&a9);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x186060A84);
}

void *pvrtcCompress(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned int a4, uint64_t a5, _DWORD *a6)
{
  v6 = *(a1 + 8) & 7;
  if (v6 == 4 || v6 == 2)
  {
    v81 = 0;
    v82 = 0;
    v79 = 0;
    v80 = 0;
    v65 = v6;
    v59 = a3 >> 2;
    v60 = a3 >> 3;
    if (v6 == 2)
    {
      v12 = a3 >> 3;
    }

    else
    {
      v12 = a3 >> 2;
    }

    v71 = v12;
    v61 = a4 >> 2;
    v13 = 8 * (a4 >> 2) * v12;
    *a6 = v13;
    v68 = malloc_type_malloc(v13, 0x100004000313F17uLL);
    pvrtcCompressUnpacked(a1, a2, a3, a4, v14, &v82, &v81, &v80, &v79);
    v66 = v82;
    v67 = v81;
    v15 = v80;
    v73 = v79;
    if (a4 < 4)
    {
LABEL_79:
      free(v66);
      free(v67);
      free(v15);
      free(v73);
      return v68;
    }

    v62 = 0;
    v72 = 0;
    v70 = v71 - 1;
    v64 = 31 - __clz(v71);
LABEL_11:
    if (!v71)
    {
      goto LABEL_78;
    }

    v16 = 0;
    v77 = 0;
    v17 = (v72 & v70 | ((v72 & v70) << 8)) & 0xFF00FF;
    v18 = (v17 | (16 * v17)) & 0x3030303 | (4 * ((v17 | (16 * v17)) & 0xF0F0F0F)) & 0x33333333;
    v69 = (v18 | (2 * v18)) & 0x55555555;
    v19 = 4 * v72;
    v63 = v72 * v60;
    v76 = v62;
LABEL_13:
    v75 = v16;
    if (v65 == 2)
    {
      v20 = *(v73 + (v63 + v16));
      if (!v20)
      {
        v30 = 0;
        v29 = 0;
        v31 = 8 * v16;
        do
        {
          if (v15[4 * (v30 & 7 | v31) + 4 * (v19 + (v30 >> 3)) * a3] != 255)
          {
            if (v15[4 * (v30 & 7 | v31) + 4 * (v19 + (v30 >> 3)) * a3])
            {
              printf("Bad threshold mod value %d (this isn't supposed to happen!)\n", v15[4 * (v30 & 7 | v31) + 4 * (v19 + (v30 >> 3)) * a3]);
            }

            else
            {
              v29 |= 1 << v30;
            }
          }

          ++v30;
        }

        while (v30 != 32);
        goto LABEL_71;
      }

      if (v19 == 2147483644)
      {
        v21 = 0;
        if ((*(v73 + (v63 + v16)) & 2) == 0)
        {
          goto LABEL_69;
        }

LABEL_17:
        v22 = v21 & 0xFFFFFFFFFFEFFFFFLL | ((v20 & 1) << 20) | 1;
        goto LABEL_70;
      }

      v74 = v63 + v16;
      v21 = 0;
      v35 = 0;
      v78 = 8 * v16;
      v36 = 8 * v16 + 8;
      v37 = v76;
      v38 = 4 * v72;
      while (1)
      {
        v39 = v38 & 1;
        if ((v39 | v78) < v36)
        {
          break;
        }

LABEL_67:
        ++v38;
        v37 += a3;
        if (v38 >= v19 + 4)
        {
          v20 = *(v73 + v74);
          LODWORD(v16) = v75;
          if ((v20 & 2) != 0)
          {
            goto LABEL_17;
          }

LABEL_69:
          v22 = v21 & 0xFFFFFFFFFFFFFFFELL;
LABEL_70:
          v29 = v22 | 0x100000000;
LABEL_71:
          v45 = (4 * (v72 * v71 + v16));
          v46 = v67[v45];
          v47 = v67[v45 | 1];
          v48 = v67[v45 | 2];
          v49 = v67[v45 | 3];
          if (v49 == 255)
          {
            checkBitReplication(v46, 5, 0);
            checkBitReplication(v47, 5, 0);
            checkBitReplication(v48, 4, 1);
            v50 = (v47 << 34) & 0x3E000000000 | ((v46 >> 3) << 42) | ((v48 >> 4) << 33) | v29 | 0x800000000000;
          }

          else
          {
            checkBitReplication(v46, 4, 1);
            checkBitReplication(v47, 4, 1);
            checkBitReplication(v48, 3, 2);
            v50 = (v46 << 36) & 0xF0000000000 | ((v47 >> 4) << 36) & 0xFFFF8FFFFFFFFFFFLL | ((v48 >> 5) << 33) & 0xFFFF8FFFFFFFFFFFLL | ((v49 >> 5) << 44) | v29;
          }

          v51 = v66[v45];
          v52 = v66[v45 | 1];
          v53 = v66[v45 | 2];
          v54 = v66[v45 | 3];
          if (v54 == 255)
          {
            checkBitReplication(v51, 5, 0);
            checkBitReplication(v52, 5, 0);
            checkBitReplication(v53, 5, 0);
            v55 = (v52 << 50) & 0x3E0000000000000 | ((v51 >> 3) << 58) | ((v53 >> 3) << 48) | v50 | 0x8000000000000000;
          }

          else
          {
            checkBitReplication(v51, 4, 1);
            checkBitReplication(v52, 4, 1);
            checkBitReplication(v53, 4, 1);
            v55 = (v51 << 52) & 0xF00000000000000 | ((v52 >> 4) << 52) & 0x8FFFFFFFFFFFFFFFLL | ((v53 >> 4) << 48) & 0x8FFFFFFFFFFFFFFFLL | ((v54 >> 5) << 60) | v50;
          }

          v56 = (v70 & v75 | ((v70 & v75) << 8)) & 0xFF00FF;
          v57 = (v56 | (16 * v56)) & 0x3030303 | (4 * ((v56 | (16 * v56)) & 0xF0F0F0F)) & 0x33333333;
          v68[(((v72 | v75) & -v71) << v64) | v69 | ((4 * v57) | (2 * v57)) & 0xAAAAAAAA] = v55;
          v16 = v75 + 1;
          v76 += 8;
          v77 += 8;
          if (v75 + 1 == v71)
          {
LABEL_78:
            v62 += 4 * a3;
            if (++v72 == v61)
            {
              goto LABEL_79;
            }

            goto LABEL_11;
          }

          goto LABEL_13;
        }
      }

      v40 = 4 * (v37 + v39);
      v41 = v77 + v39;
      while (1)
      {
        v42 = v15[v40];
        if (v42 <= 0x9E)
        {
          break;
        }

        if (v42 == 159)
        {
          v43 = 2 * v35++;
          v44 = 1;
          goto LABEL_65;
        }

        if (v42 != 255)
        {
          goto LABEL_62;
        }

        ++v35;
LABEL_66:
        v40 += 8;
        v41 += 2;
        if (v36 <= v41)
        {
          goto LABEL_67;
        }
      }

      if (!v15[v40])
      {
        v43 = 2 * v35++;
        v44 = 3;
        goto LABEL_65;
      }

      if (v42 == 95)
      {
        v43 = 2 * v35++;
        v44 = 2;
LABEL_65:
        v21 |= v44 << v43;
        goto LABEL_66;
      }

LABEL_62:
      printf("Bad checkerboard mod value %d (this isn't supposed to happen!)\n", v15[v40]);
      goto LABEL_66;
    }

    v23 = 4 * v16;
    v24 = 0;
    if (*(v73 + v72 * v59 + v16))
    {
      v25 = 0;
      v26 = 0;
      while (1)
      {
        v27 = v15[4 * (v25 & 3 | v23) + 4 * (v19 + (v25 >> 2)) * a3];
        if (v27 <= 0x7F)
        {
          break;
        }

        if (v27 == 128)
        {
          v28 = 2;
          goto LABEL_29;
        }

        if (v27 != 255)
        {
          goto LABEL_26;
        }

LABEL_30:
        ++v25;
        v24 += 2;
        if (v25 == 16)
        {
          v29 = v26 | 0x100000000;
          goto LABEL_71;
        }
      }

      if (!v15[4 * (v25 & 3 | v23) + 4 * (v19 + (v25 >> 2)) * a3])
      {
        v28 = 3;
        goto LABEL_29;
      }

      if (v27 == 127)
      {
        v28 = 1;
LABEL_29:
        v26 |= v28 << v24;
        goto LABEL_30;
      }

LABEL_26:
      printf("Bad mod value %d (this isn't supposed to happen!)\n", v15[4 * (v25 & 3 | v23) + 4 * (v19 + (v25 >> 2)) * a3]);
      goto LABEL_30;
    }

    v32 = 0;
    v29 = 0;
    while (1)
    {
      v33 = v15[4 * (v32 & 3 | v23) + 4 * (v19 + (v32 >> 2)) * a3];
      if (v33 <= 0x9E)
      {
        break;
      }

      if (v33 == 159)
      {
        v34 = 1;
        goto LABEL_49;
      }

      if (v33 != 255)
      {
        goto LABEL_46;
      }

LABEL_50:
      ++v32;
      v24 += 2;
      if (v32 == 16)
      {
        goto LABEL_71;
      }
    }

    if (!v15[4 * (v32 & 3 | v23) + 4 * (v19 + (v32 >> 2)) * a3])
    {
      v34 = 3;
      goto LABEL_49;
    }

    if (v33 == 95)
    {
      v34 = 2;
LABEL_49:
      v29 |= v34 << v24;
      goto LABEL_50;
    }

LABEL_46:
    printf("Bad mod value %d (this isn't supposed to happen!)\n", v15[4 * (v32 & 3 | v23) + 4 * (v19 + (v32 >> 2)) * a3]);
    goto LABEL_50;
  }

  return 0;
}

void pvrtcCompressUnpacked(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned int a4, uint64_t a5, void *a6, void *a7, uint64_t *a8, uint64_t *a9)
{
  v247 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 8) & 7;
  if (v9 != 4 && v9 != 2)
  {
    return;
  }

  if (v9 == 2)
  {
    v11 = 3;
  }

  else
  {
    v11 = 2;
  }

  v210 = v11;
  if ((a3 & (a3 - 1)) != 0 || (a4 & (a4 - 1)) != 0)
  {
    *a6 = 0;
    *a7 = 0;
    *a8 = 0;
    *a9 = 0;
    return;
  }

  *v207 = *a1;
  v14 = (a3 >> v11);
  v15 = a4 >> 2;
  v194 = *(a1 + 8) & 7;
  if (v9 == 2)
  {
    v16 = lanczosDownsample84;
  }

  else
  {
    v16 = lanczosDownsample4;
  }

  v17 = bilinearUpsample4f;
  if (v9 == 2)
  {
    v17 = bilinearUpsample84f;
  }

  v216 = v17;
  if (v9 == 2)
  {
    v18 = bilinearUpsample84fq;
  }

  else
  {
    v18 = bilinearUpsample4fq;
  }

  if (v9 == 2)
  {
    v19 = errorAccumulateBilinear84;
  }

  else
  {
    v19 = errorAccumulateBilinear4;
  }

  v229 = a3;
  v20 = (v16)(a2, a3);
  v215 = v14;
  v199 = v15;
  size = v14 * v15;
  v227 = malloc_type_calloc((4 * size), 4uLL, 0x100004052888210uLL);
  v195 = (4 * size);
  if (v195)
  {
    v21 = v20;
    v22 = v227;
    v23 = (4 * size);
    do
    {
      v24 = *v21++;
      *v22++ = v24;
      --v23;
    }

    while (v23);
  }

  free(v20);
  v25 = a4 * v229;
  v26 = (4 * v25);
  v27 = malloc_type_calloc(v26, 4uLL, 0x100004052888210uLL);
  v28 = v27;
  if (v26)
  {
    v29 = a2;
    v30 = v27;
    v31 = (4 * v25);
    do
    {
      v32 = *v29++;
      *v30++ = v32;
      --v31;
    }

    while (v31);
  }

  if (v25)
  {
    for (i = 0; i != v25; ++i)
    {
      for (j = 0; j != 4; ++j)
      {
        v27[4 * (i & 0x3FFFFFFF) + j] = *(*v207 + j * 4) * v27[4 * (i & 0x3FFFFFFF) + j];
      }
    }
  }

  v196 = v19;
  v198 = a1;
  if (size)
  {
    for (k = 0; k != size; ++k)
    {
      for (m = 0; m != 4; ++m)
      {
        v227[4 * (k & 0x3FFFFFFF) + m] = *(*v207 + m * 4) * v227[4 * (k & 0x3FFFFFFF) + m];
      }
    }
  }

  count = (4 * v25);
  v197 = v18;
  v37 = malloc_type_malloc(4 * v26, 0x100004052888210uLL);
  v38 = v229;
  if (a4)
  {
    v39 = 0;
    v40 = 0;
    do
    {
      if (v38)
      {
        v41 = 0;
        v42 = v39;
        do
        {
          __A[0] = 0uLL;
          (v216)(__A, v227);
          for (n = 0; n != 4; ++n)
          {
            v37->f32[v42 + n] = v28[v42 + n] - *(__A + n * 4);
          }

          ++v41;
          v42 += 4;
          v38 = v229;
        }

        while (v41 != v229);
      }

      ++v40;
      v39 += 4 * v229;
    }

    while (v40 != a4);
  }

  free(v28);
  v209 = malloc_type_malloc(4 * v195, 0x100004052888210uLL);
  v44 = malloc_type_malloc(4 * v195, 0x100004052888210uLL);
  v45 = malloc_type_malloc(4 * v195, 0x100004052888210uLL);
  if (a4 >= 4)
  {
    v202 = 0;
    v46 = a4 + 0x3FFFFFFF;
    if (v194 == 2)
    {
      v47 = 8;
    }

    else
    {
      v47 = 4;
    }

    if (v194 == 2)
    {
      v48 = 0.03125;
    }

    else
    {
      v48 = 0.0625;
    }

    if (v194 == 2)
    {
      v49 = 105;
    }

    else
    {
      v49 = 49;
    }

    v204 = 16 * v49;
    __K = v49;
    v203 = 4 * v49;
    while (!v215)
    {
LABEL_125:
      LODWORD(v202) = v202 + 4 * v215;
      if (++HIDWORD(v202) == v199)
      {
        goto LABEL_126;
      }
    }

    v50 = 0;
    v212 = HIDWORD(v202) * v215;
    v51 = (HIDWORD(v202) + 0x3FFFFFFF) * v215;
    v200 = v51 + 1;
    v201 = v51 + 0x3FFFFFFF;
    v52 = v202;
    while (1)
    {
      v230 = v50;
      v221 = &v227[v52];
      v53 = &v44[v52];
      v223 = v52;
      v54 = &v45[v52];
      bzero(__A, 0x690uLL);
      LODWORD(v55) = 0;
      v245 = 0uLL;
      memset(__C, 0, sizeof(__C));
      v243 = 0;
      *__w = 0;
      v241 = 0;
      memset(__Y, 0, sizeof(__Y));
      v239 = 0;
      memset(v238, 0, sizeof(v238));
      __n = 4;
      __lda = 4;
      __lwork = 11;
      __info = 0;
      v56 = 0uLL;
      v57 = -3;
      v58 = 0;
      *__work = 0u;
      memset(v237, 0, sizeof(v237));
      do
      {
        if (v57 >= 0)
        {
          v59 = v57;
        }

        else
        {
          v59 = -v57;
        }

        v60 = 4 - v59;
        v55 = v55;
        v61 = 2 * v47 - 1;
        v62 = 1 - v47;
        do
        {
          if (v62 >= 0)
          {
            v63 = v62;
          }

          else
          {
            v63 = -v62;
          }

          v64 = v48 * ((v47 - v63) * v60);
          *(v238 + v55) = v64;
          *v58.i32 = *v58.i32 + v64;
          v65 = vmulq_n_f32(v37[(((v47 >> 1) + (v230 << v210) + v62) & (v229 + 0x3FFFFFFF)) + ((((4 * HIDWORD(v202)) | 2) + v57) & v46) * v229], v64);
          __A[v55++] = v65;
          v56 = vaddq_f32(v65, v56);
          ++v62;
          --v61;
        }

        while (v61);
        ++v57;
      }

      while (v57 != 4);
      v66 = 0;
      v219 = *v58.i32;
      v67 = vdivq_f32(v56, vdupq_lane_s32(v58, 0));
      v245 = v67;
      do
      {
        __A[v66 / 0x10] = vsubq_f32(__A[v66 / 0x10], v67);
        v66 += 16;
      }

      while (v204 != v66);
      v68 = 0.0;
      cblas_ssyrk(CblasColMajor, CblasUpper, CblasNoTrans, 4, __K, 1.0, __A, 4, 0.0, __C, 4);
      ssyev_("V", "U", &__n, __C, &__lda, __w, __work, &__lwork, &__info);
      v69 = 0;
      v70 = 0;
      do
      {
        if (__w[v69] > v68)
        {
          v68 = __w[v69];
          v70 = v69;
        }

        ++v69;
      }

      while (v69 != 4);
      v71 = (__C + 4 * (4 * v70));
      v72 = v71->f32[0];
      v73 = v71->f32[1];
      v74 = v71->f32[2];
      v75 = ((v71->f32[0] + v73) + v74);
      if (v75 > 0.15)
      {
        goto LABEL_109;
      }

      if (v75 >= -0.15)
      {
        if (HIDWORD(v202) | v230)
        {
          if (v230)
          {
            v76 = &v209[(4 * (HIDWORD(v202) * v215 + 0x3FFFFFFF + v230))];
            v77 = (((v73 * v76[1]) + (v72 * *v76)) + (v74 * v76[2])) + (v71->f32[3] * v76[3]);
            v78 = 0.0;
            if (v77 <= 0.2)
            {
              v79 = 0.0;
            }

            else
            {
              v79 = v77 + 0.0;
            }

            if (v77 < 0.2)
            {
              v78 = 0.0 - v77;
            }
          }

          else
          {
            v79 = 0.0;
            v78 = 0.0;
          }

          if (HIDWORD(v202))
          {
            v82 = &v209[(4 * ((HIDWORD(v202) + 0x3FFFFFFF) * v215 + v230))];
            v83 = v71->f32[3];
            v84 = (((v73 * v82[1]) + (v72 * *v82)) + (v74 * v82[2])) + (v83 * v82[3]);
            _NF = v84 < 0.2;
            if (v84 > 0.2)
            {
              v79 = v79 + v84;
            }

            v86 = v78 - v84;
            if (_NF)
            {
              v78 = v86;
            }

            if (v230)
            {
              v87 = &v209[(4 * (v201 + v230))];
              v88 = (((v73 * v87[1]) + (v72 * *v87)) + (v74 * v87[2])) + (v83 * v87[3]);
              v89 = v88 < 0.2;
              if (v88 > 0.2)
              {
                v79 = v79 + v88;
              }

              v90 = v78 - v88;
              if (v89)
              {
                v78 = v90;
              }
            }

            if (v230 < (v215 - 1))
            {
              v91 = &v209[(4 * (v200 + v230))];
              v92 = (((v73 * v91[1]) + (v72 * *v91)) + (v74 * v91[2])) + (v83 * v91[3]);
              if (v92 > 0.2)
              {
                v79 = v79 + v92;
              }

              if (v92 < 0.2)
              {
                v78 = v78 - v92;
              }
            }
          }

          if (v79 + 0.3 >= v78)
          {
            goto LABEL_109;
          }
        }

        else
        {
          v80 = 0;
          v81 = 0.0;
          do
          {
            if (fabsf(v71->f32[v80]) > fabsf(v81))
            {
              v81 = v71->f32[v80];
            }

            ++v80;
          }

          while (v80 != 4);
          if (v81 >= 0.0)
          {
            goto LABEL_109;
          }
        }
      }

      *v71 = vnegq_f32(*v71);
      v72 = v71->f32[0];
LABEL_109:
      v93 = v212 + v230;
      v209[(4 * (v212 + v230))] = v72;
      v209[(4 * v93) | 1] = v71->f32[1];
      v209[(4 * v93) | 2] = v71->f32[2];
      v209[(4 * v93) | 3] = v71->f32[3];
      v94 = 0.0;
      cblas_sgemv(CblasRowMajor, CblasNoTrans, __K, 4, 1.0, __A, 4, v71->f32, 1, 0.0, __Y, 1);
      v95 = 0;
      v96 = 0.0;
      do
      {
        v97 = *(__Y + v95);
        v98 = *(v238 + v95);
        v96 = v96 + (v97 * v98);
        v94 = v94 + ((v97 * v97) * v98);
        v95 += 4;
      }

      while (v203 != v95);
      v99 = 0;
      v100 = v96 / v219;
      v101 = sqrtf((v94 / v219) - (v100 * v100)) * 1.312;
      v102 = (v96 / v219) - v101;
      v103 = v100 + v101;
      do
      {
        v104 = v221[v99] + v245.f32[v99];
        v105 = v71->f32[v99];
        v106 = v104 + (v102 * v105);
        v107 = *(*v207 + v99 * 4);
        v108 = v104 + (v103 * v105);
        v109 = v106 / v107;
        v110 = v108 / v107;
        v111 = 255.0;
        if (v109 <= 255.0)
        {
          v112 = v109;
        }

        else
        {
          v112 = 255.0;
        }

        if (v109 >= 0.0)
        {
          v113 = v112;
        }

        else
        {
          v113 = 0.0;
        }

        if (v110 <= 255.0)
        {
          v111 = v110;
        }

        if (v110 >= 0.0)
        {
          v114 = v111;
        }

        else
        {
          v114 = 0.0;
        }

        v53[v99] = v113;
        v54[v99++] = v114;
      }

      while (v99 != 4);
      v50 = (v230 + 1);
      v52 = v223 + 4;
      v46 = a4 + 0x3FFFFFFF;
      if ((v230 + 1) == v215)
      {
        goto LABEL_125;
      }
    }
  }

LABEL_126:
  free(v227);
  free(v37);
  free(v209);
  v115 = malloc_type_calloc(count, 4uLL, 0x100004052888210uLL);
  v116 = a2;
  if (count)
  {
    v117 = v115;
    v118 = count;
    do
    {
      v119 = *v116++;
      *v117++ = v119;
      --v118;
    }

    while (v118);
  }

  v208 = v115;
  v120 = malloc_type_malloc(count, 0x100004077774924uLL);
  v121 = malloc_type_malloc(size, 0x100004077774924uLL);
  v122 = malloc_type_malloc(4 * a4 * v229, 0x100004052888210uLL);
  v123 = malloc_type_malloc(20 * a4 * v229, 0x100004052888210uLL);
  v124 = malloc_type_malloc(count, 0x100004077774924uLL);
  v125 = malloc_type_malloc(count, 0x100004077774924uLL);
  v231 = malloc_type_malloc(116 * size, 0x1000040DB6AEB77uLL);
  v213 = v124;
  v214 = v121;
  v222 = v120;
  v224 = v123;
  v211 = v125;
  v220 = v122;
  updateModulationError(v198, v229, a4, v208, v44, v45, v122, v123, v124, v125, v120, v121, v231, v197, v196);
  if (size)
  {
    v133 = 0;
    v134 = v231;
    do
    {
      errorApply(v198, v134, (v44 + ((4 * v133) & 0x3FFFFFFF0)), (v45 + ((4 * v133) & 0x3FFFFFFF0)), v126, v127, v128, v129, v130, v131, v132);
      v133 += 4;
      v134 += 116;
    }

    while (4 * size != v133);
  }

  v206 = malloc_type_malloc(v195, 0x100004077774924uLL);
  v205 = malloc_type_malloc(v195, 0x100004077774924uLL);
  if (size)
  {
    v135 = 0;
    v136 = 0;
    do
    {
      v137 = (4 * v136) | 3;
      v138 = v44[v137];
      v139 = v45[v137];
      v140 = (4 * v136);
      __A[0] = *&v44[v140];
      __Y[0] = *&v45[v140];
      _Q2 = vsubq_f32(*&v45[v140], *&v44[v140]);
      _S4 = _Q2.i32[2];
      __asm { FMLA            S3, S4, V2.S[2] }

      _S4 = _Q2.i32[3];
      __asm { FMLA            S3, S4, V2.S[3] }

      v148 = 0.0;
      v149 = 0.0;
      if (_S3 < 64.0)
      {
        v148 = flt_1862245A0[64 * (v194 == 2) + 8 * ((v136 % v215) & 7) + ((v136 / v215) & 7)] + -32.5;
        v149 = -v148;
      }

      *__Ka = v136;
      v150 = 0;
      v151 = &v44[v135];
      v228 = v135;
      v152 = &v45[v135];
      v153 = &unk_186224548 + 4 * (v138 < 236.785714);
      v154 = &unk_186224550 + 4 * (v139 < 236.785714);
      do
      {
        v155 = v154[v150];
        v151[v150] = quantize(*(__A + v150) + (v148 * flt_1862247A0[v153[v150]]), v153[v150], v150 == 3);
        v152[v150] = quantize(*(__Y + v150) + (v149 * flt_1862247A0[v155]), v155, v150 == 3);
        ++v150;
      }

      while (v150 != 4);
      v136 = *__Ka + 1;
      v135 = v228 + 4;
    }

    while (*__Ka + 1 != size);
  }

  v156 = v196;
  v157 = v198;
  v158 = v208;
  updateModulationError(v198, v229, a4, v208, v44, v45, v220, v224, v213, v211, v120, v214, v231, v216, v196);
  v166 = 0;
  v167 = v197;
  do
  {
    while (!size)
    {
      updateModulationError(v157, v229, a4, v158, v44, v45, v220, v224, v213, v211, v222, v214, v231, v167, v156);
      if (++v166 == 4)
      {
        goto LABEL_167;
      }
    }

    v168 = 0;
    v169 = v231;
    do
    {
      errorApply(v157, v169, (v44 + ((4 * v168) & 0x3FFFFFFF0)), (v45 + ((4 * v168) & 0x3FFFFFFF0)), v159, v160, v161, v162, v163, v164, v165);
      v168 += 4;
      v169 += 116;
    }

    while (4 * size != v168);
    v170 = 0;
    for (ii = 0; ii != size; ++ii)
    {
      v172 = (4 * ii) | 3;
      v173 = v170;
      v174 = &unk_186224548 + 4 * (v44[v172] < 236.785714);
      v175 = &unk_186224550 + 4 * (v45[v172] < 236.785714);
      v176 = 4;
      do
      {
        v177 = v45[v173];
        v178 = *v174++;
        v44[v173] = quantize(v44[v173], v178, --v176 == 0);
        v179 = *v175++;
        v45[v173++] = quantize(v177, v179, v176 == 0);
      }

      while (v176);
      v170 += 4;
    }

    v156 = v196;
    v167 = v197;
    v157 = v198;
    v158 = v208;
    updateModulationError(v198, v229, a4, v208, v44, v45, v220, v224, v213, v211, v222, v214, v231, v197, v196);
    ++v166;
  }

  while (v166 != 4);
  for (jj = 0; jj != size; ++jj)
  {
    v181 = 0;
    v183 = &v45[4 * (jj & 0x3FFFFFFF)];
    do
    {
      v182 = &v44[4 * (jj & 0x3FFFFFFF)];
      v184 = v182[v181];
      v185 = v183[v181];
      if (v184 <= 255.0)
      {
        v186 = v182[v181];
      }

      else
      {
        v186 = 255.0;
      }

      if (v184 >= 0.0)
      {
        v187 = v186;
      }

      else
      {
        v187 = 0.0;
      }

      if (v185 <= 255.0)
      {
        v188 = v183[v181];
      }

      else
      {
        v188 = 255.0;
      }

      if (v185 >= 0.0)
      {
        v189 = v188;
      }

      else
      {
        v189 = 0.0;
      }

      v206[4 * (jj & 0x3FFFFFFF) + v181] = rintf(v187);
      v205[4 * (jj & 0x3FFFFFFF) + v181++] = rintf(v189);
    }

    while (v181 != 4);
  }

LABEL_167:
  *a6 = v206;
  *a7 = v205;
  *a8 = v222;
  *a9 = v214;
  free(v158);
  free(v44);
  free(v45);
  free(v220);
  free(v213);
  free(v211);
  free(v231);
  free(v224);
}

uint64_t checkBitReplication(uint64_t result, int a2, int a3)
{
  v5 = result;
  v6 = 8 - (a3 + a2);
  v7 = MEMORY[0x1E69E9848];
  if (result >> (a3 + a2) != (result & ~(-1 << v6)))
  {
    result = fprintf(*MEMORY[0x1E69E9848], "Bit replication is wrong! (%d, %d)\n", result, a2);
  }

  if (v5 >> v6 >> a2 != ((v5 >> v6) & ~(-1 << a3)))
  {
    return fprintf(*v7, "Bit extra replication is wrong! (%d, %d, %d, %d)\n", v5, v5 >> v6, a2, a3);
  }

  return result;
}

uint64_t bilinearUpsample84f(uint64_t result, float *a2, unsigned int a3, unsigned int a4, int a5, int a6)
{
  v6 = 0;
  v7 = 0;
  v10 = ((a5 - 4) & (a3 - 1)) >> 3;
  v11 = ((a6 - 2) & (a4 - 1)) >> 2;
  v12 = v11 % (a4 >> 2) * (a3 >> 3);
  v13 = v10 % (a3 >> 3);
  v14 = (v10 + 1) % (a3 >> 3);
  v15 = (v11 + 1) % (a4 >> 2) * (a3 >> 3);
  v16 = 4 * (v12 + v13);
  v17 = 4 * (v14 + v12);
  do
  {
    v8 = (a5 - 4) & 7;
    v9 = (a6 - 2) & 3;
    *(result + v6) = ((((a2[v17 + v7] * ((4 - v9) * v8)) + (((4 - v9) * (8 - v8)) * a2[v16 + v7])) + (((8 - v8) * v9) * a2[4 * v15 + 4 * v13 + v7])) + ((v9 * v8) * a2[4 * v15 + 4 * v14 + v7])) * 0.03125;
    ++v7;
    v6 += 4;
  }

  while (v6 != 16);
  return result;
}

float bilinearUpsample84fq(float *a1, float *a2, unsigned int a3, unsigned int a4, int a5, int a6)
{
  v6 = 0;
  v18[1] = *MEMORY[0x1E69E9840];
  v7 = ((a5 - 4) & (a3 - 1)) >> 3;
  v8 = ((a6 - 2) & (a4 - 1)) >> 2;
  v9 = v8 % (a4 >> 2) * (a3 >> 3);
  v10 = v7 % (a3 >> 3);
  v11 = (v7 + 1) % (a3 >> 3);
  v12 = (v8 + 1) % (a4 >> 2) * (a3 >> 3);
  v13 = vdupq_n_s32((a5 - 4) & 7);
  v14 = vshlq_u32(vmovl_u16(vmovn_s32(vcvtq_s32_f32(*&a2[4 * (v9 + v10)]))), xmmword_186224570);
  v15 = vshlq_u32(vmovl_u16(vmovn_s32(vcvtq_s32_f32(*&a2[4 * v12 + 4 * v10]))), xmmword_186224570);
  v16 = vmlaq_s32(vshlq_n_s32(v14, 3uLL), vshrq_n_s32(vshlq_n_s32(vsubq_s32(vshlq_u32(vmovl_u16(vmovn_s32(vcvtq_s32_f32(*&a2[4 * v11 + 4 * v9]))), xmmword_186224570), v14), 0x18uLL), 0x18uLL), v13);
  v18[0] = vmovn_s32(vmlaq_s32(vshlq_n_s32(v16, 2uLL), vmlaq_s32(vsubq_s32(vshlq_n_s32(v15, 3uLL), v16), vshrq_n_s32(vshlq_n_s32(vsubq_s32(vshlq_u32(vmovl_u16(vmovn_s32(vcvtq_s32_f32(*&a2[4 * v12 + 4 * v11]))), xmmword_186224570), v15), 0x18uLL), 0x18uLL), v13), vdupq_n_s32((a6 - 2) & 3)));
  do
  {
    a1[v6] = ((*(v18 + v6) >> 7) + (*(v18 + v6) >> 2));
    ++v6;
  }

  while (v6 != 3);
  result = ((SHIWORD(v18[0]) >> 5) + (SHIWORD(v18[0]) >> 1));
  a1[3] = result;
  return result;
}

uint64_t errorAccumulateBilinear84(uint64_t result, uint64_t a2, unsigned int a3, unsigned int a4, int a5, int a6, float a7, double a8, double a9, int32x4_t a10)
{
  v10 = 0;
  v34 = *MEMORY[0x1E69E9840];
  v11 = ((a5 - 4) & (a3 - 1)) >> 3;
  v12 = ((a6 - 2) & (a4 - 1)) >> 2;
  v13 = v12 % (a4 >> 2) * (a3 >> 3);
  v14 = v11 % (a3 >> 3);
  v15 = (v11 + 1) % (a3 >> 3);
  v32[0] = v13 + v14;
  v32[1] = v15 + v13;
  v16 = (v12 + 1) % (a4 >> 2) * (a3 >> 3);
  a10.i32[0] = 4 - ((a6 - 2) & 3);
  a10.i32[1] = (a5 - 4) & 7;
  a10.i32[2] = (a6 - 2) & 3;
  v17 = vrev64q_s32(a10);
  a10.i32[3] = a10.i32[1];
  v17.i32[0] = 8 - a10.i32[1];
  v32[2] = v16 + v14;
  v32[3] = v16 + v15;
  v17.i32[2] = 8 - a10.i32[1];
  v18 = vcvtq_f32_u32(vmulq_s32(a10, v17));
  v17.i64[0] = 0x3D0000003D000000;
  v17.i64[1] = 0x3D0000003D000000;
  v33 = vmulq_f32(v18, v17);
  do
  {
    v19 = 0;
    v20 = v32[v10];
    v21 = (result + 116 * v20);
    v22 = v21 + 1;
    *v21 = *v21 + 1.0;
    v23 = v21 + 3;
    v24 = v33.f32[v10];
    v25 = result + 84 + 116 * v20;
    v26 = 1;
    v27 = 1.0 - a7;
    do
    {
      v28 = 0;
      v29 = v26;
      v30 = v24 * v27;
      v22[v19] = v22[v19] + v30;
      v23[v19] = v23[v19] + (v30 * v30);
      v31 = (v25 + 16 * v19);
      do
      {
        *(v31 - 16) = *(a2 + 4 * v28) + *(v31 - 16);
        *(v31 - 8) = *(v31 - 8) + (*(a2 + 4 * v28) * *(a2 + 4 * v28));
        *v31 = *v31 + (v30 * *(a2 + 4 * v28));
        ++v31;
        ++v28;
      }

      while (v28 != 4);
      v26 = 0;
      v27 = a7;
      v19 = 1;
    }

    while ((v29 & 1) != 0);
    ++v10;
  }

  while (v10 != 4);
  return result;
}

uint64_t bilinearUpsample4f(uint64_t result, float *a2, unsigned int a3, unsigned int a4, int a5, int a6)
{
  v6 = 0;
  v7 = 0;
  v10 = ((a5 - 2) & (a3 - 1)) >> 2;
  v11 = ((a6 - 2) & (a4 - 1)) >> 2;
  v12 = v11 % (a4 >> 2) * (a3 >> 2);
  v13 = v10 % (a3 >> 2);
  v14 = (v11 + 1) % (a4 >> 2);
  v15 = v12 + v13;
  v16 = (v10 + 1) % (a3 >> 2);
  v17 = 4 * (v16 + v12);
  do
  {
    v8 = (a5 - 2) & 3;
    v9 = (a6 - 2) & 3;
    *(result + v6) = ((((a2[v17 + v7] * ((4 - v9) * v8)) + (((4 - v9) * (4 - v8)) * a2[(4 * v15) + v7])) + (((4 - v8) * v9) * a2[4 * v14 * (a3 >> 2) + 4 * v13 + v7])) + ((v9 * v8) * a2[4 * v14 * (a3 >> 2) + 4 * v16 + v7])) * 0.0625;
    ++v7;
    v6 += 4;
  }

  while (v6 != 16);
  return result;
}

float bilinearUpsample4fq(float *a1, float *a2, unsigned int a3, unsigned int a4, int a5, int a6)
{
  v6 = 0;
  v18[1] = *MEMORY[0x1E69E9840];
  v7 = ((a5 - 2) & (a3 - 1)) >> 2;
  v8 = ((a6 - 2) & (a4 - 1)) >> 2;
  v9 = v8 % (a4 >> 2) * (a3 >> 2);
  v10 = v7 % (a3 >> 2);
  v11 = (v7 + 1) % (a3 >> 2);
  v12 = (v8 + 1) % (a4 >> 2) * (a3 >> 2);
  v13 = vdupq_n_s32((a5 - 2) & 3);
  v14 = vshlq_u32(vmovl_u16(vmovn_s32(vcvtq_s32_f32(*&a2[4 * (v9 + v10)]))), xmmword_186224570);
  v15 = vshlq_u32(vmovl_u16(vmovn_s32(vcvtq_s32_f32(*&a2[4 * v12 + 4 * v10]))), xmmword_186224570);
  v16 = vmlaq_s32(vshlq_n_s32(v14, 2uLL), vshrq_n_s32(vshlq_n_s32(vsubq_s32(vshlq_u32(vmovl_u16(vmovn_s32(vcvtq_s32_f32(*&a2[4 * v11 + 4 * v9]))), xmmword_186224570), v14), 0x18uLL), 0x18uLL), v13);
  v18[0] = vmovn_s32(vmlaq_s32(vshlq_n_s32(v16, 2uLL), vmlaq_s32(vsubq_s32(vshlq_n_s32(v15, 2uLL), v16), vshrq_n_s32(vshlq_n_s32(vsubq_s32(vshlq_u32(vmovl_u16(vmovn_s32(vcvtq_s32_f32(*&a2[4 * v12 + 4 * v11]))), xmmword_186224570), v15), 0x18uLL), 0x18uLL), v13), vdupq_n_s32((a6 - 2) & 3)));
  do
  {
    a1[v6] = ((*(v18 + v6) >> 6) + (*(v18 + v6) >> 1));
    ++v6;
  }

  while (v6 != 3);
  result = (SHIWORD(v18[0]) + (SHIWORD(v18[0]) >> 4));
  a1[3] = result;
  return result;
}

uint64_t errorAccumulateBilinear4(uint64_t result, uint64_t a2, unsigned int a3, unsigned int a4, int a5, int a6, float a7, double a8, double a9, int32x4_t a10)
{
  v10 = 0;
  v33 = *MEMORY[0x1E69E9840];
  v11 = ((a5 - 2) & (a3 - 1)) >> 2;
  v12 = ((a6 - 2) & (a4 - 1)) >> 2;
  v13 = v12 % (a4 >> 2) * (a3 >> 2);
  v14 = v11 % (a3 >> 2);
  v15 = (v11 + 1) % (a3 >> 2);
  v31[0] = v13 + v14;
  v31[1] = v15 + v13;
  v16 = (v12 + 1) % (a4 >> 2) * (a3 >> 2);
  a10.i32[0] = 4 - ((a6 - 2) & 3);
  a10.i32[1] = (a5 - 2) & 3;
  a10.i32[2] = (a6 - 2) & 3;
  v17 = vrev64q_s32(a10);
  a10.i32[3] = a10.i32[1];
  v17.i32[0] = 4 - a10.i32[1];
  v17.i32[2] = 4 - a10.i32[1];
  v31[2] = v16 + v14;
  v31[3] = v16 + v15;
  v32 = vmulq_f32(vcvtq_f32_u32(vmulq_s32(a10, v17)), vdupq_n_s32(0x3D800000u));
  do
  {
    v18 = 0;
    v19 = v31[v10];
    v20 = (result + 116 * v19);
    v21 = v20 + 1;
    *v20 = *v20 + 1.0;
    v22 = v20 + 3;
    v23 = v32.f32[v10];
    v24 = result + 84 + 116 * v19;
    v25 = 1;
    v26 = 1.0 - a7;
    do
    {
      v27 = 0;
      v28 = v25;
      v29 = v23 * v26;
      v21[v18] = v21[v18] + v29;
      v22[v18] = v22[v18] + (v29 * v29);
      v30 = (v24 + 16 * v18);
      do
      {
        *(v30 - 16) = *(a2 + 4 * v27) + *(v30 - 16);
        *(v30 - 8) = *(v30 - 8) + (*(a2 + 4 * v27) * *(a2 + 4 * v27));
        *v30 = *v30 + (v29 * *(a2 + 4 * v27));
        ++v30;
        ++v27;
      }

      while (v27 != 4);
      v25 = 0;
      v26 = a7;
      v18 = 1;
    }

    while ((v28 & 1) != 0);
    ++v10;
  }

  while (v10 != 4);
  return result;
}

void updateModulationError(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void (*a14)(float32x4_t *, uint64_t, uint64_t, uint64_t), void (*a15)(void *, float32x4_t *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v266 = *MEMORY[0x1E69E9840];
  v20 = *a1;
  LODWORD(v21) = a2 >> 3;
  v229 = *(a1 + 8) & 7;
  if (v229 == 2)
  {
    v21 = v21;
  }

  else
  {
    v21 = a2 >> 2;
  }

  v224 = v21;
  v220 = a3 >> 2;
  v221 = a2 >> 2;
  bzero(a13, 116 * v21 * (a3 >> 2));
  if (a3)
  {
    v238 = a1;
    v237 = a7;
    v223 = 0;
    v232 = 0;
    v28 = a8 + 4 * (a3 * a2);
    v225 = a8 + 4 * (2 * a3 * a2);
    v29 = a9;
    v30 = a10;
    v226 = a8 + 4 * (3 * a3 * a2);
    v31 = a8 + 4 * (4 * a3 * a2);
    v222 = 4 * a2;
    do
    {
      if (a2)
      {
        v32 = 0;
        v33 = v223;
        do
        {
          v233 = v32;
          v246 = 0uLL;
          v34 = v29 + v33;
          v244 = 0uLL;
          v35 = v30 + v33;
          v242 = 0uLL;
          v230 = v33;
          v36 = a4 + 4 * v33;
          v239 = 0;
          v240 = 0;
          a14(&v246, a5, a2, a3);
          (a14)(&v244, a6, a2, a3, v233, v232);
          v37 = 0;
          v38 = v232 * a2 + v233;
          do
          {
            v39 = v246.f32[v37];
            *(v34 + v37) = v39;
            v40 = v244.f32[v37];
            *(v35 + v37) = v40;
            v41 = *(v20 + 4 * v37);
            v242.f32[v37] = (v40 - v39) * v41;
            *(&v239 + v37) = v41 * (*(v36 + 4 * v37) - v39);
            ++v37;
          }

          while (v37 != 4);
          v26.i32[0] = v242.i32[3];
          v25.i32[0] = v242.i32[2];
          *&v24 = (((v242.f32[1] * v242.f32[1]) + (v242.f32[0] * v242.f32[0])) + (v242.f32[2] * v242.f32[2])) + (v242.f32[3] * v242.f32[3]);
          v23 = *&v240;
          *&v22 = ((((v242.f32[1] * *(&v239 + 1)) + (*&v239 * v242.f32[0])) + (*&v240 * v242.f32[2])) + (*(&v240 + 1) * v242.f32[3])) / *&v24;
          *(a8 + 4 * v38) = LODWORD(v22);
          *(v31 + 4 * v38) = LODWORD(v24);
          v32 = v233 + 1;
          v33 = v230 + 4;
          v30 = a10;
          v29 = a9;
        }

        while (v233 + 1 != a2);
      }

      v223 += v222;
      ++v232;
    }

    while (v232 != a3);
    if (v229 == 2)
    {
      v42 = 0;
      v43 = a2 - 1;
      v25.i32[1] = 0;
      do
      {
        v44 = v42 & 1;
        if (v44 >= a2)
        {
          v47 = v42 + 1;
        }

        else
        {
          v45 = v42 * a2;
          v46 = (v42 - 1) % a3 * a2;
          v47 = v42 + 1;
          if (v42 + 1 == a3)
          {
            v48 = 0;
          }

          else
          {
            v48 = v42 + 1;
          }

          v49 = v48 * a2;
          v50 = v42 & 3;
          do
          {
            v51 = (v45 + v44);
            v52 = (v44 - 1) % a2 + v45;
            v53 = (v46 + v44);
            if (v43 == v44)
            {
              v54 = 0;
            }

            else
            {
              v54 = v44 + 1;
            }

            v55 = (v45 + v54);
            v56 = (v49 + v44);
            v57 = ((((*(a8 + 4 * v52) + *(a8 + 4 * v53)) + *(a8 + 4 * v55)) + *(a8 + 4 * v56)) * 0.125) + (*(a8 + 4 * v51) * 0.5);
            v58 = v44 & 7 | v50;
            if (v58)
            {
              v59 = 0.0;
              if (v57 >= 0.1875)
              {
                v59 = 0.375;
                if (v57 >= 0.5)
                {
                  if (v57 >= 0.8125)
                  {
                    v59 = 1.0;
                  }

                  else
                  {
                    v59 = 0.625;
                  }
                }
              }
            }

            else if (v57 >= 0.5)
            {
              v59 = 1.0;
            }

            else
            {
              v59 = 0.0;
            }

            *(v28 + 4 * v51) = v59;
            v60 = ((*(a8 + 4 * v52) + *(a8 + 4 * v55)) * 0.25) + (*(a8 + 4 * v51) * 0.5);
            v62 = v50 == 2 && (v44 & 7) == 4 || v58 == 0;
            v63 = v62;
            if (v62)
            {
              if (v60 >= 0.5)
              {
                v64 = 1.0;
              }

              else
              {
                v64 = 0.0;
              }
            }

            else
            {
              v64 = 0.0;
              if (v60 >= 0.1875)
              {
                v64 = 0.375;
                if (v60 >= 0.5)
                {
                  if (v60 >= 0.8125)
                  {
                    v64 = 1.0;
                  }

                  else
                  {
                    v64 = 0.625;
                  }
                }
              }
            }

            *(v225 + 4 * v51) = v64;
            v65 = ((*(a8 + 4 * v53) + *(a8 + 4 * v56)) * 0.25) + (*(a8 + 4 * v51) * 0.5);
            if (v63)
            {
              if (v65 >= 0.5)
              {
                v66 = 1.0;
              }

              else
              {
                v66 = 0.0;
              }
            }

            else
            {
              v66 = 0.0;
              if (v65 >= 0.1875)
              {
                v66 = 0.375;
                if (v65 >= 0.5)
                {
                  if (v65 >= 0.8125)
                  {
                    v66 = 1.0;
                  }

                  else
                  {
                    v66 = 0.625;
                  }
                }
              }
            }

            *(v226 + 4 * v51) = v66;
            v44 += 2;
          }

          while (v44 < a2);
        }

        v42 = v47;
      }

      while (v47 != a3);
      v67 = 0;
      v68 = 1;
      v69 = a8 + 4 * (2 * a3 * a2);
      do
      {
        if (((v67 & 1) == 0) >= a2)
        {
          v73 = v67 + 1;
        }

        else
        {
          v70 = v68 & 1;
          v71 = v67 * a2;
          v72 = (v67 - 1) % a3 * a2;
          v73 = v67 + 1;
          if (v67 + 1 == a3)
          {
            v74 = 0;
          }

          else
          {
            v74 = v67 + 1;
          }

          v75 = v74 * a2;
          do
          {
            v76 = v71 + (v70 - 1) % a2;
            if (v43 == v70)
            {
              v77 = 0;
            }

            else
            {
              v77 = v70 + 1;
            }

            v78 = (v71 + v77);
            v79 = (v75 + v70);
            v80 = (((*(v28 + 4 * v76) + *(v28 + 4 * (v72 + v70))) + *(v28 + 4 * v78)) + *(v28 + 4 * v79)) * 0.25;
            v81 = 0.0;
            v82 = 0.0;
            if (v80 >= 0.0)
            {
              v82 = 1.0;
              if (v80 < 1.0)
              {
                v82 = roundf(v80 * 8.0) * 0.125;
              }
            }

            v83 = (v71 + v70);
            *(v28 + 4 * v83) = v82;
            v84 = (*(v225 + 4 * v76) + *(v225 + 4 * v78)) * 0.5;
            if (v84 >= 0.0)
            {
              v81 = 1.0;
              if (v84 < 1.0)
              {
                v81 = roundf(v84 * 8.0) * 0.125;
              }
            }

            *(v225 + 4 * v83) = v81;
            v85 = (*(v226 + 4 * v79) + *(v226 + 4 * v79)) * 0.5;
            v86 = 0.0;
            if (v85 >= 0.0)
            {
              v86 = 1.0;
              if (v85 < 1.0)
              {
                v86 = roundf(v85 * 8.0) * 0.125;
              }
            }

            *(v226 + 4 * v83) = v86;
            v70 += 2;
          }

          while (v70 < a2);
        }

        v68 ^= 1u;
        v67 = v73;
      }

      while (v73 != a3);
      v87 = 0;
      do
      {
        v88 = v87 & 1;
        if (v88 < a2)
        {
          v89 = v87 & 3;
          do
          {
            v90 = 0;
            v265 = 0;
            v264 = xmmword_1862247C4;
            v262 = xmmword_1862247D8;
            v263 = 1;
            v260 = xmmword_1862247EC;
            v261 = 1048576000;
            v259 = 1;
            v258 = 0xFFFFFFFF00000000;
            v257 = 0;
            v256 = 0;
            v255 = 1056964608;
            v254 = 0x3F0000003F800000;
            v253 = 0;
            v252 = 0;
            v251 = 1;
            v250 = 0xFFFFFFFF00000000;
            v249 = 1056964608;
            v248 = 0x3F0000003F800000;
            v246.i64[0] = a8 + 4 * (a3 * a2);
            v246.i64[1] = v69;
            v247 = a8 + 4 * (3 * a3 * a2);
            v244.i64[0] = &v264;
            v244.i64[1] = &v258;
            v245 = &v252;
            v242.i64[0] = &v262;
            v242.i64[1] = &v256;
            v243 = &v250;
            v239 = &v260;
            v240 = &v254;
            v91 = v88 + v87 * a2;
            v241 = &v248;
            do
            {
              v92 = v246.i64[v90];
              v93 = v244.i64[v90];
              v94 = v242.i64[v90];
              v95 = *(&v239 + v90);
              LODWORD(v96) = dword_18622480C[v90];
              if (v96 <= 1)
              {
                v96 = 1;
              }

              else
              {
                v96 = v96;
              }

              v97 = 0.0;
              v98 = 0.0;
              v99 = 0.0;
              v100 = 0.0;
              v101 = 0.0;
              do
              {
                v102 = *v94++;
                v103 = (v102 + v87) % a3;
                v104 = *v93++;
                v105 = (v104 + v88) % a2 + v103 * a2;
                v106 = *(v31 + 4 * v105);
                v107 = *(a8 + 4 * v105) - *(v92 + 4 * v105);
                v108 = *v95++;
                v97 = v97 + v106;
                v98 = v98 + (v106 * v108);
                v99 = v99 + (v106 * (v108 * v108));
                v100 = v100 + (v106 * v107);
                v101 = v101 + ((v106 * v108) * v107);
                --v96;
              }

              while (v96);
              v109 = (((v97 * v101) - (v98 * v100)) * (1.0 / ((v97 * v99) - (v98 * v98)))) + ((((v99 * v100) - (v98 * v101)) * (1.0 / ((v97 * v99) - (v98 * v98)))) + *(v92 + 4 * v91));
              if (!(v88 & 7 | v89) || v89 == 2 && (v88 & 7) == 4 && v90)
              {
                if (v109 >= 0.5)
                {
                  v110 = 1.0;
                }

                else
                {
                  v110 = 0.0;
                }
              }

              else
              {
                if (v109 >= 0.8125)
                {
                  v111 = 1.0;
                }

                else
                {
                  v111 = 0.625;
                }

                if (v109 < 0.5)
                {
                  v111 = 0.375;
                }

                if (v109 >= 0.1875)
                {
                  v110 = v111;
                }

                else
                {
                  v110 = 0.0;
                }
              }

              *(v92 + 4 * v91) = v110;
              ++v90;
            }

            while (v90 != 3);
            v88 += 2;
            v69 = a8 + 4 * (2 * a3 * a2);
          }

          while (v88 < a2);
        }

        ++v87;
      }

      while (v87 != a3);
      v112 = 0;
      LODWORD(v24) = 8.0;
      v113 = 1;
      v25.i32[0] = 0.125;
      v114 = v237;
      v29 = a9;
      v115 = v238;
      v30 = a10;
      v116 = a8 + 4 * (3 * a3 * a2);
      do
      {
        if (((v112 & 1) == 0) >= a2)
        {
          v120 = v112 + 1;
        }

        else
        {
          v117 = v113 & 1;
          v118 = v112 * a2;
          v119 = (v112 - 1) % a3 * a2;
          v120 = v112 + 1;
          if (v112 + 1 == a3)
          {
            v121 = 0;
          }

          else
          {
            v121 = v112 + 1;
          }

          v122 = v121 * a2;
          do
          {
            v123 = v118 + (v117 - 1) % a2;
            if (v43 == v117)
            {
              v124 = 0;
            }

            else
            {
              v124 = v117 + 1;
            }

            v125 = (v118 + v124);
            v126 = (v122 + v117);
            v127 = (((*(v28 + 4 * v123) + *(v28 + 4 * (v119 + v117))) + *(v28 + 4 * v125)) + *(v28 + 4 * v126)) * 0.25;
            v128 = 0.0;
            v129 = 0.0;
            if (v127 >= 0.0)
            {
              v129 = 1.0;
              if (v127 < 1.0)
              {
                v129 = roundf(v127 * 8.0) * 0.125;
              }
            }

            v130 = (v118 + v117);
            *(v28 + 4 * v130) = v129;
            v131 = (*(v69 + 4 * v123) + *(v69 + 4 * v125)) * 0.5;
            if (v131 >= 0.0)
            {
              v128 = 1.0;
              if (v131 < 1.0)
              {
                v128 = roundf(v131 * 8.0) * 0.125;
              }
            }

            *(v69 + 4 * v130) = v128;
            v132 = (*(v226 + 4 * v126) + *(v226 + 4 * v126)) * 0.5;
            v133 = 0.0;
            if (v132 >= 0.0)
            {
              v133 = 1.0;
              if (v132 < 1.0)
              {
                v133 = roundf(v132 * 8.0) * 0.125;
              }
            }

            *(v226 + 4 * v130) = v133;
            v117 += 2;
          }

          while (v117 < a2);
        }

        v113 ^= 1u;
        v112 = v120;
      }

      while (v120 != a3);
      v231 = 0;
      v134 = 0;
      while (1)
      {
        v135 = v134 + 4;
        if (a2)
        {
          break;
        }

LABEL_194:
        v231 += v222;
        v134 += 4;
        if (v135 >= a3)
        {
          goto LABEL_237;
        }
      }

      v136 = 0;
      v137 = (v134 >> 2) * v224;
      v138 = v231;
      while (1)
      {
        v139 = v136;
        v246.i32[3] = 0;
        *(v246.i64 + 4) = 0;
        v140 = 0.0;
        if (v134 != -4)
        {
          v24 = 0.0;
          v141 = 0.0;
          v142 = v138;
          v143 = v134;
          do
          {
            if (v136 != -8)
            {
              v144 = v142;
              v145 = v136;
              do
              {
                v25.i32[0] = *(a8 + 4 * v144);
                v146 = *(v31 + 4 * v144);
                if (v25.f32[0] >= 0.5)
                {
                  v147 = 1.0;
                }

                else
                {
                  v147 = 0.0;
                }

                v148 = *(v116 + 4 * v144) - v25.f32[0];
                v149.i32[0] = *(v28 + 4 * v144);
                v149.i32[1] = *(v69 + 4 * v144);
                v140 = v140 + (((v147 - v25.f32[0]) * (v147 - v25.f32[0])) * v146);
                v150 = vsub_f32(v149, vdup_lane_s32(v25, 0));
                v25 = vmul_f32(v150, v150);
                v24 = COERCE_DOUBLE(vmla_n_f32(*&v24, v25, v146));
                v25.f32[0] = v148 * v148;
                v141 = v141 + ((v148 * v148) * v146);
                ++v145;
                ++v144;
              }

              while (v145 < v136 + 8);
            }

            ++v143;
            v142 += a2;
          }

          while (v143 < v135);
          *(v246.i64 + 4) = v24;
          v246.f32[3] = v141;
        }

        v151 = 0;
        for (i = 1; i != 4; ++i)
        {
          if (v246.f32[i] <= v140)
          {
            v151 = i;
            v140 = v246.f32[i];
          }
        }

        *(a12 + v137 + (v139 >> 3)) = v151;
        if (v151 > 1u)
        {
          if (v151 == 2)
          {
            if (v134 != -4)
            {
              v168 = v138;
              v169 = v134;
              do
              {
                if (v139 != -8)
                {
                  v170 = v168;
                  v171 = v139;
                  do
                  {
                    v172 = -2.0;
                    if (((v169 ^ v171) & 1) == 0)
                    {
                      v172 = *(v69 + 4 * v170);
                    }

                    *(v114 + 4 * v170) = v172;
                    ++v171;
                    ++v170;
                  }

                  while (v171 < (v139 + 8));
                }

                ++v169;
                v168 += a2;
              }

              while (v169 < v135);
            }

            goto LABEL_193;
          }

          if (v151 == 3)
          {
            if (v134 != -4)
            {
              v158 = v138;
              v159 = v134;
              do
              {
                if (v139 != -8)
                {
                  v160 = v158;
                  v161 = v139;
                  do
                  {
                    v162 = -3.0;
                    if (((v159 ^ v161) & 1) == 0)
                    {
                      v162 = *(v116 + 4 * v160);
                    }

                    *(v114 + 4 * v160) = v162;
                    ++v161;
                    ++v160;
                  }

                  while (v161 < (v139 + 8));
                }

                ++v159;
                v158 += a2;
              }

              while (v159 < v135);
            }

            goto LABEL_193;
          }
        }

        else
        {
          if (!v151)
          {
            if (v134 != -4)
            {
              v163 = v138;
              v164 = v134;
              do
              {
                if (v139 != -8)
                {
                  v165 = v163;
                  v166 = v139;
                  do
                  {
                    if (*(a8 + 4 * v165) >= 0.5)
                    {
                      v167 = 1.0;
                    }

                    else
                    {
                      v167 = 0.0;
                    }

                    *(v114 + 4 * v165) = v167;
                    ++v166;
                    ++v165;
                  }

                  while (v166 < (v139 + 8));
                }

                ++v164;
                v163 += a2;
              }

              while (v164 < v135);
            }

            goto LABEL_193;
          }

          if (v151 == 1)
          {
            if (v134 != -4)
            {
              v153 = v138;
              v154 = v134;
              do
              {
                if (v139 != -8)
                {
                  v155 = v153;
                  v156 = v139;
                  do
                  {
                    v157 = -1.0;
                    if (((v154 ^ v156) & 1) == 0)
                    {
                      v157 = *(v28 + 4 * v155);
                    }

                    *(v114 + 4 * v155) = v157;
                    ++v156;
                    ++v155;
                  }

                  while (v156 < (v139 + 8));
                }

                ++v154;
                v153 += a2;
              }

              while (v154 < v135);
            }

            goto LABEL_193;
          }
        }

        v234 = v138;
        printf("Bad block mode %d (this isn't supposed to happen!)\n", v151);
        v137 = (v134 >> 2) * v224;
        v138 = v234;
        v116 = a8 + 4 * (3 * a3 * a2);
        v29 = a9;
        v115 = v238;
        v30 = a10;
        v114 = v237;
LABEL_193:
        v136 = v139 + 8;
        v138 += 8;
        if (v139 + 8 >= a2)
        {
          goto LABEL_194;
        }
      }
    }

    v114 = v237;
    v115 = v238;
    if (a3 >= 4)
    {
      v235 = 0;
      v173 = 0.1875;
      v174 = 0.375;
      v175 = 0.5;
      v176 = 0.8125;
      v177 = 0.625;
      while (a2 < 4)
      {
LABEL_236:
        if (++v235 == v220)
        {
          goto LABEL_237;
        }
      }

      v178 = 0;
      v179 = v235 * v224;
      v180 = 4 * v235;
      while (1)
      {
        v181 = (*(v115 + 8) >> 4) & 3;
        v182 = 4 * v178;
        if (v181 == 2)
        {
          *(a12 + (v179 + v178)) = 1;
        }

        else
        {
          if (v181 != 1)
          {
            *(a12 + (v179 + v178)) = 0;
LABEL_226:
            for (j = 0; j != 16; ++j)
            {
              v202 = (j & 3 | v182) + (v180 + (j >> 2)) * a2;
              if ((*(v115 + 8) & 8) != 0)
              {
                findBestQuantizer(v115, 0xFu, (a4 + 4 * (4 * v202)), (v29 + (4 * v202)), (a10 + (4 * v202)), v22, v23, v24, v25.f32[0], *v26.i32);
                v29 = a9;
                v115 = v238;
                v30 = a10;
                v114 = v237;
              }

              else
              {
                v23 = *(a8 + 4 * v202);
                v22 = 0.0;
                if (v23 >= v173)
                {
                  LODWORD(v22) = 0.375;
                  if (v23 >= v175)
                  {
                    if (v23 >= v176)
                    {
                      *&v22 = 1.0;
                    }

                    else
                    {
                      *&v22 = v177;
                    }
                  }
                }
              }

              *(v114 + 4 * v202) = LODWORD(v22);
            }

            goto LABEL_235;
          }

          v183 = 0;
          v184 = 0.0;
          v185 = 0.0;
          do
          {
            v246 = 0uLL;
            v244 = 0uLL;
            v186 = (v183 & 3 | v182) + (v180 + (v183 >> 2)) * a2;
            v187 = *(a8 + 4 * v186);
            v242 = 0uLL;
            if (v187 >= 0.8125)
            {
              v188 = 1.0;
            }

            else
            {
              v188 = 0.625;
            }

            if (v187 < 0.5)
            {
              v188 = v174;
            }

            if (v187 < 0.1875)
            {
              v188 = 0.0;
            }

            v189 = 4 * v186;
            if (v187 >= 0.75)
            {
              v190 = 1.0;
            }

            else
            {
              v190 = 0.5;
            }

            if (v187 <= 0.25)
            {
              v191 = 0.0;
            }

            else
            {
              v191 = v190;
            }

            v26.i32[0] = *(v29 + v189);
            v192 = vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(v26)));
            v27.i32[0] = *(v30 + v189);
            v193 = vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(v27)));
            v246 = vmlaq_n_f32(vmulq_n_f32(v192, 1.0 - v188), v193, v188);
            v244 = vmlaq_n_f32(vmulq_n_f32(v192, 1.0 - v191), v193, v191);
            v194.i64[0] = 0x3F0000003F000000;
            v194.i64[1] = 0x3F0000003F000000;
            v195 = vmulq_f32(vaddq_f32(v192, v193), v194);
            v195.i32[3] = 0;
            v242 = v195;
            v196 = (a4 + 4 * v189);
            v185 = v185 + errorSquared(v115, v196, &v246);
            v197 = errorSquared(v238, v196, &v244);
            *&v22 = errorSquared(v238, v196, &v242);
            v29 = a9;
            v115 = v238;
            v30 = a10;
            if (*&v22 >= v197)
            {
              *&v22 = v197;
            }

            v174 = 0.375;
            v184 = v184 + *&v22;
            ++v183;
          }

          while (v183 != 16);
          v198 = v184 < v185;
          *(a12 + (v179 + v178)) = v184 < v185;
          v114 = v237;
          v176 = 0.8125;
          v177 = 0.625;
          v173 = 0.1875;
          v175 = 0.5;
          if (!v198)
          {
            goto LABEL_226;
          }
        }

        for (k = 0; k != 16; ++k)
        {
          v200 = (k & 3 | v182) + (v180 + (k >> 2)) * a2;
          findBestQuantizer(v115, 0x33u, (a4 + 16 * v200), (v29 + 4 * v200), (a10 + 4 * v200), v22, v23, v24, v25.f32[0], *v26.i32);
          v29 = a9;
          v115 = v238;
          v30 = a10;
          v114 = v237;
          *(v237 + 4 * v200) = LODWORD(v22);
        }

LABEL_235:
        if (++v178 == v224)
        {
          goto LABEL_236;
        }
      }
    }

LABEL_237:
    v203 = 0;
    while (!a2)
    {
      v219 = (v203 + 1);
LABEL_273:
      v203 = v219;
      if (v219 == a3)
      {
        return;
      }
    }

    v204 = 0;
    v205 = v203 * a2;
    if (v203 + 1 == a3)
    {
      v206 = 0;
    }

    else
    {
      v206 = v203 + 1;
    }

    v207 = v206 * a2;
    v208 = v222 * v203;
    v209 = (v203 - 1) % a3;
    while (1)
    {
      v246 = 0uLL;
      v210 = v229 == 4 && *(a12 + (v203 >> 2) * v221 + (v204 >> 2)) != 0;
      v211 = *(v114 + 4 * (v205 + v204));
      if (v211 == -1.0)
      {
        break;
      }

      if (v211 == -2.0)
      {
        v214 = *(v114 + 4 * (v205 + (v204 - 1) % a2));
        v215 = v204 + 1;
        if (v204 + 1 == a2)
        {
          v215 = 0;
        }

        v216 = v215 + v205;
LABEL_256:
        v213 = (v214 + *(v114 + 4 * v216)) * 0.5;
LABEL_257:
        v211 = 0.0;
        if (v213 >= 0.0)
        {
          v211 = 1.0;
          if (v213 < 1.0)
          {
            v211 = roundf(v213 * 8.0) * 0.125;
          }
        }

        goto LABEL_260;
      }

      if (v211 == -3.0)
      {
        v214 = *(v114 + 4 * (v204 + v209 * a2));
        v216 = v207 + v204;
        goto LABEL_256;
      }

LABEL_260:
      v217 = 0;
      v218 = (4 * (v205 + v204));
      do
      {
        LOBYTE(v24) = *(v29 + v208 + v217);
        v25.i8[0] = *(v30 + v208 + v217);
        *(a11 + v208 + v217) = (v211 * 255.0);
        *&v24 = ((1.0 - v211) * LODWORD(v24)) + (v211 * v25.u32[0]);
        v25.i32[0] = 0;
        if (*&v24 >= 0.0)
        {
          v25.i32[0] = 1132396544;
          if (*&v24 <= 255.0)
          {
            v25.i32[0] = LODWORD(v24);
          }
        }

        *&v24 = *(a4 + 4 * v208 + 4 * v217) - v25.f32[0];
        v246.i32[v217++] = LODWORD(v24);
      }

      while (v217 != 4);
      if (!v210 || *(a11 + v218) != 128 || *(a4 + 4 * (v218 | 3)) >= 0.033333 || (*(v115 + 8) & 8) == 0)
      {
        a15(a13, &v246, a2, a3, v204, v203);
        v29 = a9;
        v115 = v238;
        v30 = a10;
        v114 = v237;
      }

      ++v204;
      v208 += 4;
      if (v204 == a2)
      {
        v219 = (v203 + 1);
        goto LABEL_273;
      }
    }

    v212 = v204 + 1;
    if (v204 + 1 == a2)
    {
      v212 = 0;
    }

    v213 = (((*(v114 + 4 * (v205 + (v204 - 1) % a2)) + *(v114 + 4 * (v204 + v209 * a2))) + *(v114 + 4 * (v212 + v205))) + *(v114 + 4 * (v207 + v204))) * 0.25;
    goto LABEL_257;
  }
}

uint64_t errorApply(uint64_t result, uint64_t a2, float32x4_t *a3, float32x4_t *a4, int32x4_t a5, int32x4_t a6, double a7, double a8, double a9, double a10, float32x4_t a11)
{
  v12 = 0;
  a5.i32[0] = 4;
  v13 = 1;
  a6.i32[0] = *(result + 8) & 7;
  v14 = vdupq_lane_s32(*&vceqq_s32(a6, a5), 0);
  __asm { FMOV            V1.4S, #1.0 }

  v20 = vdupq_n_s64(0x4000ECF52B90A783uLL);
  v21 = vdupq_n_s32(0x437F0000u);
  do
  {
    v22 = v13;
    v23 = *(a2 + 4 + 4 * v12);
    if (v23 != 0.0)
    {
      v24 = *(a2 + 12 + 4 * v12);
      a11.i32[0] = *a2;
      v25 = vdupq_lane_s32(*a11.f32, 0);
      v26 = *(a2 + 20 + 16 * v12);
      v27 = *(a2 + 84 + 16 * v12);
      v28 = vmulq_n_f32(v26, v23);
      v29 = vdivq_f32(vmulq_f32(v26, v26), v25);
      v30 = vsubq_f32(v27, vdivq_f32(v28, v25));
      v31 = vmulq_n_f32(vsubq_f32(*(a2 + 52 + 16 * v12), v29), v24 - ((v23 * v23) / *a2));
      v32 = vbslq_s8(v14, _Q1, vbslq_s8(vandq_s8(vceqzq_f32(v30), vceqzq_f32(v31)), _Q1, vdivq_f32(vmulq_f32(v30, v30), v31)));
      if (v13)
      {
        v33 = a3;
      }

      else
      {
        v33 = a4;
      }

      v11.f32[0] = *(a2 + 4) + *(a2 + 8);
      v34 = 1.0 / -((v23 * v23) - (a11.f32[0] * v24));
      v35 = 0.05 / (v34 + 0.05);
      v11 = vdupq_lane_s32(*v11.f32, 0);
      v36 = vmulq_n_f32(vmlaq_n_f32(vmulq_n_f32(v27, -v23), v26, v24), v34);
      v37 = vmulq_n_f32(vmlaq_n_f32(vnegq_f32(v28), v27, a11.f32[0]), v34);
      v38 = vdivq_f32(v27, v11);
      v39 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_f64(vcvtq_f64_f32(*v38.f32), v20)), vmulq_f64(vcvt_hight_f64_f32(v38), v20));
      v40 = vaddq_f32(*v33, vmlaq_f32(v39, vsubq_f32(vaddq_f32(v37, v36), v39), vmulq_n_f32(v32, v35)));
      a11 = vbicq_s8(vbslq_s8(vcgtq_f32(v40, v21), v21, v40), vcltzq_f32(v40));
      *v33 = a11;
    }

    v13 = 0;
    v12 = 1;
  }

  while ((v22 & 1) != 0);
  return result;
}

float quantize(float a1, int a2, int a3)
{
  if (!a2)
  {
    return 255.0;
  }

  v3 = 255.0;
  if (a1 <= 255.0)
  {
    v3 = a1;
  }

  v4 = a1 < 0.0;
  v5 = 0.0;
  if (!v4)
  {
    v5 = v3;
  }

  v6 = rintf(((v5 * 15.0) / 255.0) * 0.5);
  v7 = v6 | (32 * v6);
  v8 = rintf((v5 * ~(-1 << a2)) / 255.0);
  v9 = (v8 << (5 - a2)) | (v8 >> (a2 - (5 - a2)));
  v10 = (8 * v9) | (v9 >> 2);
  if (!a3)
  {
    LOBYTE(v7) = v10;
  }

  return v7;
}

char *pvrtcDecompress(const unsigned __int8 *a1, unint64_t a2, unsigned int a3, unsigned int a4, int a5, unsigned __int8 **a6, unsigned __int8 **a7, signed __int8 **a8)
{
  if (a5 != 4 && a5 != 2)
  {
    return 0;
  }

  if (a5 == 2)
  {
    v13 = 3;
  }

  else
  {
    v13 = 2;
  }

  v14 = a3 >> v13;
  v15 = (a4 & 0xFFFFFFFC) * v14;
  v16 = malloc_type_malloc(v15, 0x100004077774924uLL);
  v17 = malloc_type_malloc(v15, 0x100004077774924uLL);
  v18 = malloc_type_malloc(a4 * a3, 0x100004077774924uLL);
  if (a4 >= 4)
  {
    v70 = 0;
    v35 = 0;
    v36 = v14 - 1;
    v37 = 31 - __clz(v14);
    while (!v14)
    {
LABEL_67:
      ++v35;
      v70 += 4 * a3;
      if (v35 == a4 >> 2)
      {
        goto LABEL_7;
      }
    }

    v38 = 0;
    v39 = (v36 & v35 | ((v36 & v35) << 8)) & 0xFF00FF;
    v40 = (v39 | (16 * v39)) & 0x3030303 | (4 * ((v39 | (16 * v39)) & 0xF0F0F0F)) & 0x33333333;
    v41 = (v40 | (2 * v40)) & 0x55555555;
    v42 = v14 * v35;
    v43 = 4 * v35;
    v44 = v70;
    while (1)
    {
      v45 = (v36 & v38 | ((v36 & v38) << 8)) & 0xFF00FF;
      v46 = (v45 | (16 * v45)) & 0x3030303 | (4 * ((v45 | (16 * v45)) & 0xF0F0F0F)) & 0x33333333;
      v47 = (((v38 | v35) & -v14) << v37) | v41 | ((4 * v46) | (2 * v46)) & 0xAAAAAAAA;
      if (a2 < 8 * (v47 + 1))
      {
        break;
      }

      v48 = *&a1[8 * v47];
      if (a5 == 2)
      {
        v49 = 8 * v38;
        if ((v48 & 0x100000000) != 0)
        {
          if ((v48 & 0x100000) != 0)
          {
            v54 = 17;
          }

          else
          {
            v54 = 16;
          }

          if (v48)
          {
            v48 = v48 & 0xFFFFFFFFFFEFFFFFLL | (((v48 >> 21) & 1) << 20);
          }

          else
          {
            v54 = 18;
          }

          v55 = 0x101010101010101 * v54;
          v56 = 4;
          v57 = v44;
          do
          {
            *&v18[v57] = v55;
            v57 += a3;
            --v56;
          }

          while (v56);
          v58 = 0;
          v48 = (v48 >> 1) & 1 | v48 & 0xFFFFFFFFFFFFFFFELL;
          do
          {
            v18[(v58 & 6 | (v56 >> 2) & 1 | v49) + (v43 + (v56 >> 2)) * a3] = standardMod[(v48 >> v58) & 3];
            ++v56;
            v58 += 2;
          }

          while (v56 != 16);
        }

        else
        {
          for (i = 0; i != 32; ++i)
          {
            v18[(i & 7 | v49) + (v43 + (i >> 3)) * a3] = binaryMod[(v48 >> i) & 1];
          }
        }
      }

      else
      {
        v51 = 0;
        v52 = 0;
        if ((v48 & 0x100000000) != 0)
        {
          v53 = &punchthroughMod;
        }

        else
        {
          v53 = standardMod;
        }

        do
        {
          v18[(v52 & 3 | (4 * v38)) + (v43 + (v52 >> 2)) * a3] = v53[(v48 >> v51) & 3];
          ++v52;
          v51 += 2;
        }

        while (v52 != 16);
      }

      v59 = (4 * (v42 + v38));
      if ((v48 & 0x800000000000) != 0)
      {
        v62 = &v16[v59];
        *v62 = (v48 >> 42) & 0x1F;
        v62[1] = (v48 >> 37) & 0x1F;
        v62[2] = BYTE4(v48) & 0x1E | ((v48 & 0x1000000000) != 0);
        LOBYTE(v61) = 15;
      }

      else
      {
        v60 = &v16[v59];
        *v60 = (v48 >> 39) & 0x1E | ((v48 & 0x80000000000) != 0);
        v60[1] = (v48 >> 35) & 0x1E | ((v48 & 0x8000000000) != 0);
        v60[2] = (v48 >> 31) & 0x1C | (v48 >> 34) & 3;
        v61 = (v48 >> 43) & 0xE;
      }

      v16[v59 + 3] = v61;
      v63 = (4 * (v42 + v38));
      if ((v48 & 0x8000000000000000) != 0)
      {
        v66 = &v17[v63];
        *v66 = (v48 >> 58) & 0x1F;
        v66[1] = (v48 >> 53) & 0x1F;
        v66[2] = BYTE6(v48) & 0x1F;
        LOBYTE(v65) = 15;
      }

      else
      {
        v64 = &v17[v63];
        *v64 = (v48 >> 55) & 0x1E | ((v48 & 0x800000000000000) != 0);
        v64[1] = (v48 >> 51) & 0x1E | ((v48 & 0x80000000000000) != 0);
        v64[2] = (v48 >> 47) & 0x1E | ((v48 & 0x8000000000000) != 0);
        v65 = (v48 >> 59) & 0xE;
      }

      v17[v63 + 3] = v65;
      ++v38;
      v44 += 8;
      if (v38 == v14)
      {
        goto LABEL_67;
      }
    }

    free(v16);
    free(v17);
    free(v18);
    return 0;
  }

LABEL_7:
  if (a5 == 2 && a4)
  {
    v19 = 0;
    while (!a3)
    {
      v23 = v19 + 1;
LABEL_32:
      v19 = v23;
      if (v23 == a4)
      {
        goto LABEL_33;
      }
    }

    v20 = 0;
    v21 = v19 * a3;
    v22 = v19 - 1;
    v23 = v19 + 1;
    if (v19 + 1 == a4)
    {
      v24 = 0;
    }

    else
    {
      v24 = v19 + 1;
    }

    v25 = v24 * a3;
    v26 = v22 % a4;
    v27 = 1 - a3;
    while (1)
    {
      v28 = v18[v21 + v20];
      if (v28 == 16)
      {
        break;
      }

      if (v28 == 17)
      {
        v31 = v18[v20 + v26 * a3];
        v32 = v25 + v20;
LABEL_27:
        v30 = (v31 + v18[v32] + 1) >> 1;
LABEL_28:
        v18[v21 + v20] = v30;
        goto LABEL_29;
      }

      if (v28 == 18)
      {
        if (v27)
        {
          v29 = v20 + 1;
        }

        else
        {
          v29 = 0;
        }

        v30 = (v18[v21 + (v20 - 1) % a3] + v18[v29 + v21] + v18[v25 + v20] + v18[v20 + v26 * a3] + 2) >> 2;
        goto LABEL_28;
      }

LABEL_29:
      ++v20;
      if (++v27 == 1)
      {
        goto LABEL_32;
      }
    }

    v31 = v18[v21 + (v20 - 1) % a3];
    if (v27)
    {
      v33 = v20 + 1;
    }

    else
    {
      v33 = 0;
    }

    v32 = v33 + v21;
    goto LABEL_27;
  }

LABEL_33:
  *a6 = v16;
  *a7 = v17;
  *a8 = v18;

  return pvrtcDecompressUnpacked(v16, v17, v18, a3, a4, a5);
}

char *pvrtcDecompressUnpacked(const unsigned __int8 *a1, const unsigned __int8 *a2, const signed __int8 *a3, unsigned int a4, unsigned int a5, int a6)
{
  v7 = bilinearUpsample4u;
  if (a6 == 2)
  {
    v7 = bilinearUpsample84u;
  }

  v18 = v7;
  result = malloc_type_malloc(4 * a4 * a5, 0x100004077774924uLL);
  if (a5)
  {
    v16 = 0;
    v23 = 0;
    v17 = result;
    do
    {
      if (a4)
      {
        v9 = 0;
        v21 = v23 * a4;
        v10 = v16;
        do
        {
          v11 = &result[v10];
          v25 = 0;
          v24 = 0;
          (v18)(&v25, a1, a4, a5, v9, v23);
          (v18)(&v24, a2, a4, a5, v9, v23);
          v12 = 0;
          v13 = a3[(v21 + v9)] & 0xF;
          do
          {
            v11[v12] = *(&v25 + v12) + (((*(&v24 + v12) - *(&v25 + v12)) * v13) >> 3);
            ++v12;
          }

          while (v12 != 3);
          v14 = HIBYTE(v25) + (((HIBYTE(v24) - HIBYTE(v25)) * v13) >> 3);
          if (a3[(v21 + v9)] < 0)
          {
            LOBYTE(v14) = 0;
          }

          result = v17;
          v17[(4 * (v21 + v9++)) + 3] = v14;
          v10 += 4;
        }

        while (v9 != a4);
      }

      v16 += 4 * a4;
      ++v23;
    }

    while (v23 != a5);
  }

  return result;
}

uint64_t bilinearUpsample84u(uint64_t result, const unsigned __int8 *a2, unsigned int a3, unsigned int a4, int a5, int a6, double a7, double a8, uint8x8_t a9, uint8x8_t a10, double a11, uint8x8_t a12, double a13, uint8x8_t a14)
{
  v14 = 0;
  v23[1] = *MEMORY[0x1E69E9840];
  v15 = ((a5 - 4) & (a3 - 1)) >> 3;
  v16 = ((a6 - 2) & (a4 - 1)) >> 2;
  v17 = v16 % (a4 >> 2) * (a3 >> 3);
  v18 = v15 % (a3 >> 3);
  v19 = (v15 + 1) % (a3 >> 3);
  v20 = (v16 + 1) % (a4 >> 2) * (a3 >> 3);
  v21 = vdupq_n_s32((a5 - 4) & 7);
  a9.i32[0] = *&a2[4 * (v17 + v18)];
  a10.i32[0] = *&a2[4 * v19 + 4 * v17];
  a12.i32[0] = *&a2[4 * v20 + 4 * v18];
  a14.i32[0] = *&a2[4 * v20 + 4 * v19];
  v22 = vmlaq_s32(vshll_n_u16(*&vmovl_u8(a9), 3uLL), v21, vshrq_n_s32(vshlq_n_s32(vmovl_u16(*&vsubl_u8(a10, a9)), 0x18uLL), 0x18uLL));
  v23[0] = vmovn_s32(vmlaq_s32(vshlq_n_s32(v22, 2uLL), vmlaq_s32(vsubq_s32(vshll_n_u16(*&vmovl_u8(a12), 3uLL), v22), v21, vshrq_n_s32(vshlq_n_s32(vmovl_u16(*&vsubl_u8(a14, a12)), 0x18uLL), 0x18uLL)), vdupq_n_s32((a6 - 2) & 3)));
  do
  {
    *(result + v14) = (*(v23 + v14) >> 7) + (*(v23 + v14) >> 2);
    ++v14;
  }

  while (v14 != 3);
  *(result + 3) = (HIWORD(v23[0]) >> 5) + (HIWORD(v23[0]) >> 1);
  return result;
}

uint64_t bilinearUpsample4u(uint64_t result, const unsigned __int8 *a2, unsigned int a3, unsigned int a4, int a5, int a6, double a7, double a8, uint8x8_t a9, uint8x8_t a10, double a11, uint8x8_t a12, double a13, uint8x8_t a14)
{
  v14 = 0;
  v23[1] = *MEMORY[0x1E69E9840];
  v15 = ((a5 - 2) & (a3 - 1)) >> 2;
  v16 = ((a6 - 2) & (a4 - 1)) >> 2;
  v17 = v16 % (a4 >> 2) * (a3 >> 2);
  v18 = v15 % (a3 >> 2);
  v19 = (v15 + 1) % (a3 >> 2);
  v20 = (v16 + 1) % (a4 >> 2) * (a3 >> 2);
  v21 = vdupq_n_s32((a5 - 2) & 3);
  a9.i32[0] = *&a2[4 * (v17 + v18)];
  a10.i32[0] = *&a2[4 * v19 + 4 * v17];
  a12.i32[0] = *&a2[4 * v20 + 4 * v18];
  a14.i32[0] = *&a2[4 * v20 + 4 * v19];
  v22 = vmlaq_s32(vshll_n_u16(*&vmovl_u8(a9), 2uLL), v21, vshrq_n_s32(vshlq_n_s32(vmovl_u16(*&vsubl_u8(a10, a9)), 0x18uLL), 0x18uLL));
  v23[0] = vmovn_s32(vmlaq_s32(vshlq_n_s32(v22, 2uLL), vmlaq_s32(vsubq_s32(vshll_n_u16(*&vmovl_u8(a12), 2uLL), v22), v21, vshrq_n_s32(vshlq_n_s32(vmovl_u16(*&vsubl_u8(a14, a12)), 0x18uLL), 0x18uLL)), vdupq_n_s32((a6 - 2) & 3)));
  do
  {
    *(result + v14) = (*(v23 + v14) >> 6) + (*(v23 + v14) >> 1);
    ++v14;
  }

  while (v14 != 3);
  *(result + 3) = BYTE6(v23[0]) + (HIWORD(v23[0]) >> 4);
  return result;
}

uint64_t encodePVRTC(void *a1, int8x8_t *a2, unsigned int a3, uint64_t a4, int a5, char a6, char a7)
{
  v61 = *MEMORY[0x1E69E9840];
  v58 = 0;
  v59 = xmmword_186224590;
  v60 = xmmword_186224580;
  v8 = a2[2];
  if (*&v8 != *&a2[1])
  {
    return 0;
  }

  v11 = *a2;
  if (a3 == 2 && *&v8 < 0x10uLL)
  {
    return 0;
  }

  v12 = *&v8 < 8uLL && a3 == 4;
  v13 = vcnt_s8(v8);
  v13.i16[0] = vaddlv_u8(v13);
  v14 = v12 || v13.u32[0] > 1uLL;
  if (v14 || v11 == 0)
  {
    return 0;
  }

  v17 = &v59;
  if (!a5)
  {
    v17 = &v60;
  }

  v57[0] = v17;
  v57[1] = a3 & 7 | (8 * (a6 & 1)) & 0xCF | (16 * (a7 & 3));
  v18 = 0x10u >> (a3 >> 1);
  if (*&v8 / v18 <= 1)
  {
    v19 = 1;
  }

  else
  {
    v19 = *&v8 / v18;
  }

  if (*&v8 <= 7uLL)
  {
    v20 = 1;
  }

  else
  {
    v20 = *&v8 >> 2;
  }

  v21 = v19 * v18;
  v22 = 4 * v20;
  if (v19 * v18 == *&v8 && v22 == *&v8)
  {
    v40 = pvrtcCompress(v57, v11, *&v8, v8.u32[0], 0, &v58);
  }

  else
  {
    v56 = v19;
    v24 = malloc_type_malloc(16 * v20 * v21, 0x100004077774924uLL);
    bzero(v24, 16 * v20 * v21);
    v26 = 4 * v21;
    if (a2[1])
    {
      v27 = 0;
      v28 = a2[2];
      do
      {
        v29 = &v24[v26 * v27];
        memcpy(v29, &v11[4 * v27 * *&v28], 4 * *&v28);
        v28 = a2[2];
        v31 = v21 - *&v28;
        if (v21 != *&v28)
        {
          v32 = 0;
          do
          {
            v33 = 0;
            v34 = (v31 + 1);
            v35 = (v32 + 1.0) / v34;
            v36 = 4;
            do
            {
              v37 = a2[2];
              LOBYTE(v34) = v29[4 * *&v37 - 4 + v33];
              v38 = LODWORD(v34);
              LOBYTE(v30) = v29[v33];
              v30 = LODWORD(v30) - v38;
              v34 = (v38 + (v30 * v35)) + 0.5;
              v29[4 * *&v37 + 4 * v32 + v33++] = v34;
              --v36;
            }

            while (v36);
            ++v32;
            v28 = a2[2];
            v31 = v21 - *&v28;
          }

          while (v32 < v21 - *&v28);
        }

        ++v27;
        v39 = a2[1];
      }

      while (v27 < *&v39);
    }

    else
    {
      v39 = 0;
    }

    v41 = v22 - *&v39;
    v19 = v56;
    if (v22 != *&v39)
    {
      v42 = 0;
      do
      {
        if (v21)
        {
          v43 = 0;
          v44 = &v24[v26 * (*&v39 + v42)];
          v45 = &v24[v26 * (*&v39 + 0x3FFFFFFFFFFFFFFFLL)];
          v46 = (v41 + 1);
          v47 = (v42 + 1.0) / v46;
          v48 = v24;
          do
          {
            v49 = 0;
            v50 = 4 * v43;
            do
            {
              LOBYTE(v46) = v45[v49 + v50];
              v51 = LODWORD(v46);
              LOBYTE(v25) = v48[v49];
              v25 = LODWORD(v25) - v51;
              v46 = (v51 + (v25 * v47)) + 0.5;
              v44[v49 + v50] = v46;
              ++v49;
            }

            while (v49 != 4);
            ++v43;
            v48 += 4;
          }

          while (v43 < v21);
          v39 = a2[1];
        }

        ++v42;
        v41 = v22 - *&v39;
      }

      while (v42 < v22 - *&v39);
    }

    v40 = pvrtcCompress(v57, v24, v21, 4 * v20, 0, &v58);
    if (v24)
    {
      free(v24);
    }
  }

  if (v40 && (v52 = v58, v58 - 1 <= 0x1E))
  {
    v53 = malloc_type_malloc(0x20uLL, 0x100004077774924uLL);
    v54 = v53;
    if (v19 <= v20)
    {
      for (i = 0; i < 0x20; i += v52)
      {
        memcpy(v54 + i, v40, v52);
      }
    }

    else
    {
      *v53 = *v40;
      v53[1] = *v40;
      v53[2] = v40[8];
      v53[3] = v40[8];
    }

    free(v40);
  }

  else
  {
    v54 = v40;
  }

  *a1 = v54;
  a1[1] = v22;
  result = 1;
  a1[2] = v21;
  a1[3] = 0;
  return result;
}

uint64_t decodePVRTC(vImage_Buffer *a1, const unsigned __int8 *a2, unint64_t a3, int a4, int a5, unsigned int a6, unsigned int a7)
{
  v16 = 0;
  v17 = 0;
  v15 = 0;
  if (a5)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (a4 == 4)
  {
    v8 = 2;
  }

  else
  {
    v8 = 3;
  }

  if (a4 == 2)
  {
    v8 = 1;
  }

  v9 = a6 >> v8;
  if (a6 >> v8 <= v7)
  {
    v9 = v7;
  }

  if (a7 >> 2 > v7)
  {
    v7 = a7 >> 2;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = v9 << v8;
  v11 = 4 * v7;
  if ((v11 * a4 * v10) >> 3 > a3)
  {
    return 0;
  }

  v14 = pvrtcDecompress(a2, a3, v10, 4 * v7, a4, &v17, &v16, &v15);
  a1->width = v10;
  a1->rowBytes = (4 * v10);
  a1->data = v14;
  a1->height = v11;
  if (v17)
  {
    free(v17);
  }

  if (v16)
  {
    free(v16);
  }

  if (v15)
  {
    free(v15);
  }

  return 1;
}

float errorSquared(uint64_t a1, float32x4_t *a2, float32x4_t *a3)
{
  v3 = *a1;
  if ((*(a1 + 8) & 8) != 0)
  {
    v7 = 0;
    v8 = a3->f32[3];
    v9 = a2->f32[3];
    v10 = v8 - v9;
    v11 = -v8;
    result = 0.0;
    do
    {
      v12 = ((a3->f32[v7] * v11) + (v9 * a2->f32[v7])) * 0.0039216;
      v13 = v12 * v12;
      v14 = (v10 + v12) * (v10 + v12);
      if (v13 > v14)
      {
        v14 = v13;
      }

      result = result + ((v3->f32[v7] * v3->f32[v7]) * v14);
      ++v7;
    }

    while (v7 != 3);
  }

  else
  {
    v4 = vmulq_f32(vsubq_f32(*a2, *a3), *v3);
    v5 = vmulq_f32(v4, v4);
    return (((v5.f32[0] + 0.0) + v5.f32[1]) + v5.f32[2]) + v5.f32[3];
  }

  return result;
}

void findBestQuantizer(uint64_t a1, unsigned int a2, float32x4_t *a3, _BYTE *a4, _BYTE *a5, double a6, float a7, double a8, float a9, float a10)
{
  v15 = 0;
  v25 = *MEMORY[0x1E69E9840];
  v16 = 3.4028e38;
  do
  {
    if ((a2 >> v15))
    {
      v17 = findBestQuantizer(pvrtc_ctx_t *,unsigned int,float *,unsigned char *,unsigned char *)::quants[v15];
      LOBYTE(a7) = *a5;
      LOBYTE(a9) = *a4;
      *&v18 = (1.0 - v17) * LODWORD(a9);
      *&v19 = *&v18 + (v17 * LODWORD(a7));
      LOBYTE(v18) = a5[1];
      LOBYTE(a10) = a4[1];
      *&v20 = ((1.0 - v17) * LODWORD(a10)) + (v17 * v18);
      v24.i64[0] = __PAIR64__(v20, v19);
      LOBYTE(v19) = a5[2];
      LOBYTE(v20) = a4[2];
      v21 = (1.0 - v17) * v20;
      v24.f32[2] = v21 + (v17 * v19);
      v22 = 0.0;
      if (v15 != 5)
      {
        LOBYTE(v22) = a5[3];
        LOBYTE(v21) = a4[3];
        v22 = ((1.0 - v17) * LODWORD(v21)) + (v17 * LODWORD(v22));
      }

      v24.f32[3] = v22;
      v23 = errorSquared(a1, a3, &v24);
      if (v23 < v16)
      {
        v16 = v23;
      }
    }

    ++v15;
  }

  while (v15 != 6);
}

uint64_t IIOGetIndexForType(const __CFString *a1)
{
  if (CFStringCompare(a1, @"com.adobe.illustrator.ai-image", 0) == kCFCompareEqualTo)
  {
    return 1;
  }

  v2 = &unk_1E6F0ABA4;
  v3 = 78;
  while (--v3)
  {
    v4 = v2 + 24;
    v5 = CFStringCompare(a1, **(v2 + 12), 0);
    v2 = v4;
    if (v5 == kCFCompareEqualTo)
    {
      return *v4;
    }
  }

  return 0;
}

uint64_t IIOGetIndexForOSType(int a1)
{
  if (a1 == 1095311392)
  {
    return 1;
  }

  v2 = &unk_1E6F0ABA4;
  v3 = 78;
  while (--v3)
  {
    v4 = (v2 + 24);
    v5 = *(v2 + 5);
    v2 += 24;
    if (v5 == a1)
    {
      return *v4;
    }
  }

  return 0;
}

uint64_t IIOFlagsSupportType(unint64_t *a1, int a2)
{
  v3 = 78;
  for (i = &dword_1E6F0ABA0; *i != a2; i += 6)
  {
    if (!--v3)
    {
      return 0;
    }
  }

  v5 = *(i - 2);
  v6 = strlen(v5);
  v7 = 0;
  v9 = *a1;
  v8 = a1[1];
  v10 = 1;
  while (1)
  {
    v11 = (&gUtiInfo)[v7];
    if (strncmp(v5, v11, v6) || v6 != strlen(v11) || (v10 & 0x80) != 0)
    {
      goto LABEL_13;
    }

    if (v10 > 0x3F)
    {
      break;
    }

    if ((v9 >> v10))
    {
      return 1;
    }

LABEL_13:
    v10 = *(&gUtiInfo + 8 * v7 + 44);
    v7 += 3;
    if (v7 == 234)
    {
      return 0;
    }
  }

  if (((v8 >> v10) & 1) == 0)
  {
    goto LABEL_13;
  }

  return 1;
}

_OWORD *jinit_arith_encoder(uint64_t a1)
{
  v2 = (**(a1 + 8))();
  *(a1 + 560) = v2;
  *v2 = start_pass_1;
  *(v2 + 16) = finish_pass_0;
  *(v2 + 248) = 0u;
  *(v2 + 232) = 0u;
  *(v2 + 216) = 0u;
  *(v2 + 200) = 0u;
  *(v2 + 184) = 0u;
  *(v2 + 168) = 0u;
  *(v2 + 152) = 0u;
  *(v2 + 136) = 0u;
  *(v2 + 120) = 0u;
  *(v2 + 360) = 113;
  *(v2 + 104) = 0u;
  result = (v2 + 104);
  result[14] = 0u;
  result[15] = 0u;
  result[12] = 0u;
  result[13] = 0u;
  result[10] = 0u;
  result[11] = 0u;
  return result;
}

double start_pass_1(uint64_t a1, int a2)
{
  v3 = *(a1 + 560);
  if (a2)
  {
    v4 = *a1;
    *(v4 + 10) = 49;
    (*v4)(a1);
  }

  if (*(a1 + 348))
  {
    v5 = *(a1 + 460);
    if (*(a1 + 468))
    {
      if (v5)
      {
        v6 = encode_mcu_AC_refine_0;
      }

      else
      {
        v6 = encode_mcu_DC_refine_0;
      }
    }

    else if (v5)
    {
      v6 = encode_mcu_AC_first_0;
    }

    else
    {
      v6 = encode_mcu_DC_first_0;
    }
  }

  else
  {
    v6 = encode_mcu;
  }

  *(v3 + 8) = v6;
  if (*(a1 + 372) >= 1)
  {
    v7 = v3 + 104;
    v8 = (v3 + 80);
    v9 = v3 + 232;
    v10 = 47;
    do
    {
      v11 = *(a1 + 8 * v10);
      if (!*(a1 + 460) && !*(a1 + 468))
      {
        v12 = *(v11 + 20);
        if (v12 >= 0x10)
        {
          v13 = *a1;
          *(v13 + 10) = 50;
          *(v13 + 12) = v12;
          (**a1)(a1);
        }

        v14 = *(v7 + 8 * v12);
        if (!v14)
        {
          v14 = (**(a1 + 8))(a1, 1, 64);
          *(v7 + 8 * v12) = v14;
        }

        v14[2] = 0u;
        v14[3] = 0u;
        *v14 = 0u;
        v14[1] = 0u;
        *(v8 - 4) = 0;
        *v8 = 0;
      }

      if (*(a1 + 464))
      {
        v15 = *(v11 + 24);
        if (v15 >= 0x10)
        {
          v16 = *a1;
          *(v16 + 10) = 50;
          *(v16 + 12) = v15;
          (**a1)(a1);
        }

        v17 = *(v9 + 8 * v15);
        if (!v17)
        {
          v17 = (**(a1 + 8))(a1, 1, 256);
          *(v9 + 8 * v15) = v17;
        }

        v17[14] = 0u;
        v17[15] = 0u;
        v17[12] = 0u;
        v17[13] = 0u;
        v17[10] = 0u;
        v17[11] = 0u;
        v17[8] = 0u;
        v17[9] = 0u;
        v17[6] = 0u;
        v17[7] = 0u;
        v17[4] = 0u;
        v17[5] = 0u;
        v17[2] = 0u;
        v17[3] = 0u;
        *v17 = 0u;
        v17[1] = 0u;
      }

      ++v8;
      v18 = v10 - 46;
      ++v10;
    }

    while (v18 < *(a1 + 372));
  }

  *(v3 + 24) = xmmword_186224830;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  result = NAN;
  *(v3 + 56) = -4294967285;
  *(v3 + 96) = *(a1 + 316);
  return result;
}

uint64_t finish_pass_0(uint64_t *a1)
{
  v2 = a1[70];
  v3 = *(v2 + 24);
  v4 = (*(v2 + 32) + v3 - 1) & 0xFFFF0000;
  if (v4 < v3)
  {
    v4 |= 0x8000uLL;
  }

  result = *(v2 + 60);
  v6 = v4 << *(v2 + 56);
  *(v2 + 24) = v6;
  if ((v6 & 0xF8000000) != 0)
  {
    if ((result & 0x80000000) == 0)
    {
      if (*(v2 + 48))
      {
        do
        {
          emit_byte_0(0, a1);
          v7 = *(v2 + 48) - 1;
          *(v2 + 48) = v7;
        }

        while (v7);
        LODWORD(result) = *(v2 + 60);
      }

      result = emit_byte_0((result + 1), a1);
      if (*(v2 + 60) == 254)
      {
        result = emit_byte_0(0, a1);
      }
    }

    v8 = *(v2 + 48) + *(v2 + 40);
    *(v2 + 40) = 0;
    *(v2 + 48) = v8;
  }

  else
  {
    if (result)
    {
      if ((result & 0x80000000) == 0)
      {
        if (*(v2 + 48))
        {
          do
          {
            emit_byte_0(0, a1);
            v9 = *(v2 + 48) - 1;
            *(v2 + 48) = v9;
          }

          while (v9);
          result = *(v2 + 60);
        }

        result = emit_byte_0(result, a1);
      }
    }

    else
    {
      ++*(v2 + 48);
    }

    if (*(v2 + 40))
    {
      if (*(v2 + 48))
      {
        do
        {
          emit_byte_0(0, a1);
          v10 = *(v2 + 48) - 1;
          *(v2 + 48) = v10;
        }

        while (v10);
      }

      do
      {
        emit_byte_0(255, a1);
        result = emit_byte_0(0, a1);
        v11 = *(v2 + 40) - 1;
        *(v2 + 40) = v11;
      }

      while (v11);
    }
  }

  v12 = *(v2 + 24);
  if ((v12 & 0x7FFF800) != 0)
  {
    if (*(v2 + 48))
    {
      do
      {
        emit_byte_0(0, a1);
        v13 = *(v2 + 48) - 1;
        *(v2 + 48) = v13;
      }

      while (v13);
      v12 = *(v2 + 24);
    }

    result = emit_byte_0((v12 >> 19), a1);
    v14 = *(v2 + 24);
    if ((~*(v2 + 24) & 0x7F80000) == 0)
    {
      result = emit_byte_0(0, a1);
      v14 = *(v2 + 24);
    }

    if ((v14 & 0x7F800) != 0)
    {
      result = emit_byte_0((v14 >> 11), a1);
      if ((~*(v2 + 24) & 0x7F800) == 0)
      {

        return emit_byte_0(0, a1);
      }
    }
  }

  return result;
}

uint64_t encode_mcu_DC_first_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 560);
  if (*(a1 + 316))
  {
    v4 = *(v3 + 96);
    if (!v4)
    {
      emit_restart(a1, *(v3 + 100));
      v4 = *(a1 + 316);
      *(v3 + 100) = (*(v3 + 100) + 1) & 7;
    }

    *(v3 + 96) = v4 - 1;
  }

  if (*(a1 + 416) >= 1)
  {
    v5 = 0;
    v6 = v3 + 104;
    v7 = v3 + 80;
    v8 = v3 + 64;
    v25 = v3 + 104;
    v26 = v3 + 64;
    while (1)
    {
      v9 = *(a1 + 420 + 4 * v5);
      v10 = *(*(a1 + 376 + 8 * v9) + 20);
      v11 = **(a2 + 8 * v5) >> *(a1 + 472);
      v12 = (*(v6 + 8 * v10) + *(v7 + 4 * v9));
      v13 = *(v8 + 4 * v9);
      v14 = v11 - v13;
      if (v11 != v13)
      {
        break;
      }

      arith_encode(a1, (*(v6 + 8 * v10) + *(v7 + 4 * v9)), 0);
      *(v7 + 4 * v9) = 0;
LABEL_29:
      ++v5;
      v8 = v26;
      if (v5 >= *(a1 + 416))
      {
        return 1;
      }
    }

    *(v8 + 4 * v9) = v11;
    arith_encode(a1, v12, 1);
    v15 = v14 <= 0;
    if (v14 <= 0)
    {
      v16 = 3;
    }

    else
    {
      v16 = 2;
    }

    if (v14 <= 0)
    {
      v17 = 8;
    }

    else
    {
      v17 = 4;
    }

    if (v14 <= 0)
    {
      v14 = -v14;
    }

    arith_encode(a1, v12 + 1, v15);
    v18 = &v12[v16];
    *(v7 + 4 * v9) = v17;
    v19 = v14 - 1;
    if (v14 == 1)
    {
      v20 = 0;
    }

    else
    {
      v20 = 1;
      arith_encode(a1, v18, 1);
      v18 = (*(v6 + 8 * v10) + 20);
      if (v14 != 2)
      {
        v21 = v14 - 1;
        do
        {
          arith_encode(a1, v18, 1);
          v20 *= 2;
          ++v18;
          v22 = v21 > 3;
          v21 >>= 1;
        }

        while (v22);
      }
    }

    arith_encode(a1, v18, 0);
    v23 = 0;
    if (v20 >= ((1 << *(a1 + 224 + v10)) >> 1))
    {
      if (v20 <= ((1 << *(a1 + 240 + v10)) >> 1))
      {
        goto LABEL_27;
      }

      v23 = *(v7 + 4 * v9) + 8;
    }

    *(v7 + 4 * v9) = v23;
LABEL_27:
    v6 = v25;
    if (v20 >= 2)
    {
      do
      {
        arith_encode(a1, v18 + 14, (v19 & (v20 >> 1)) != 0);
        v20 >>= 1;
      }

      while (v20 > 1);
    }

    goto LABEL_29;
  }

  return 1;
}

uint64_t encode_mcu_AC_first_0(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 560);
  if (*(a1 + 316))
  {
    v5 = *(v4 + 96);
    if (!v5)
    {
      emit_restart(a1, *(v4 + 100));
      v5 = *(a1 + 316);
      *(v4 + 100) = (*(v4 + 100) + 1) & 7;
    }

    *(v4 + 96) = v5 - 1;
  }

  v6 = *(a1 + 480);
  v7 = *a2;
  v8 = *(*(a1 + 376) + 24);
  v9 = *(a1 + 464);
  v10 = v9;
  do
  {
    v11 = *(v7 + 2 * *(v6 + 4 * v10));
    if ((v11 & 0x80000000) != 0)
    {
      v11 = -v11;
    }

    if (v11 >> *(a1 + 472))
    {
      break;
    }

    --v10;
  }

  while (v10);
  v12 = *(a1 + 460);
  v13 = v12 - 1;
  if (v12 <= v10)
  {
    v32 = v4;
    v33 = v4 + 232;
    v31 = v6 + 4;
    while (1)
    {
      v14 = (*(v33 + 8 * v8) + 3 * v13);
      arith_encode(a1, v14, 0);
      v15 = (v31 + 4 * v13);
      v16 = v14 + 1;
      for (i = v13; ; ++i)
      {
        v18 = *v15++;
        v19 = *(v7 + 2 * v18);
        if ((v19 & 0x80000000) != 0)
        {
          break;
        }

        v20 = v19 >> *(a1 + 472);
        if (v20)
        {
          v21 = 0;
          goto LABEL_19;
        }

LABEL_17:
        arith_encode(a1, v16, 0);
        v16 += 3;
      }

      v20 = -v19 >> *(a1 + 472);
      if (!v20)
      {
        goto LABEL_17;
      }

      v21 = 1;
LABEL_19:
      arith_encode(a1, v16, 1);
      arith_encode(a1, (v4 + 360), v21);
      v22 = v20 - 1;
      if (v20 == 1 || (arith_encode(a1, v16 + 1, 1), v20 == 2))
      {
        arith_encode(a1, v16 + 1, 0);
        goto LABEL_31;
      }

      arith_encode(a1, v16 + 1, 1);
      v23 = *(v33 + 8 * v8);
      v24 = 217;
      if (i < *(a1 + 256 + v8))
      {
        v24 = 189;
      }

      v25 = (v23 + v24);
      if (v20 >= 5)
      {
        j = 2;
        v28 = v22;
        do
        {
          arith_encode(a1, v25, 1);
          j *= 2;
          ++v25;
          v29 = v28 >= 8;
          v28 >>= 1;
        }

        while (v29);
        arith_encode(a1, v25, 0);
        if (j)
        {
          v26 = v25 + 14;
          goto LABEL_30;
        }
      }

      else
      {
        arith_encode(a1, (v23 + v24), 0);
        v26 = v25 + 14;
        for (j = 2; j >= 2; j >>= 1)
        {
LABEL_30:
          arith_encode(a1, v26, (v22 & (j >> 1)) != 0);
        }
      }

LABEL_31:
      v13 = i + 1;
      v4 = v32;
      if (v10 <= i + 1)
      {
        v9 = *(a1 + 464);
        v13 = i + 1;
        break;
      }
    }
  }

  if (v13 < v9)
  {
    arith_encode(a1, (*(v4 + 8 * v8 + 232) + 3 * v13), 1);
  }

  return 1;
}

uint64_t encode_mcu_DC_refine_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 560);
  if (*(a1 + 316))
  {
    v5 = *(v4 + 96);
    if (!v5)
    {
      emit_restart(a1, *(v4 + 100));
      v5 = *(a1 + 316);
      *(v4 + 100) = (*(v4 + 100) + 1) & 7;
    }

    *(v4 + 96) = v5 - 1;
  }

  if (*(a1 + 416) >= 1)
  {
    v6 = 0;
    v7 = *(a1 + 472);
    do
    {
      arith_encode(a1, (v4 + 360), (**(a2 + 8 * v6++) >> v7) & 1);
    }

    while (v6 < *(a1 + 416));
  }

  return 1;
}

uint64_t encode_mcu_AC_refine_0(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 560);
  if (*(a1 + 316))
  {
    v5 = *(v4 + 96);
    if (!v5)
    {
      emit_restart(a1, *(v4 + 100));
      v5 = *(a1 + 316);
      *(v4 + 100) = (*(v4 + 100) + 1) & 7;
    }

    *(v4 + 96) = v5 - 1;
  }

  v6 = *(a1 + 480);
  v7 = *a2;
  v8 = *(*(a1 + 376) + 24);
  v9 = *(a1 + 464);
  v10 = v9;
  while (1)
  {
    v11 = *(v7 + 2 * *(v6 + 4 * v10));
    if ((v11 & 0x80000000) != 0)
    {
      v11 = -v11;
    }

    if (v11 >> *(a1 + 472))
    {
      break;
    }

    if (!--v10)
    {
LABEL_17:
      v14 = 0;
      goto LABEL_19;
    }
  }

  if (v10 < 1)
  {
    v14 = v10;
  }

  else
  {
    v12 = v10 + 1;
    v13 = (v6 + 4 * v10);
    v14 = v10;
    while (1)
    {
      v15 = *v13--;
      v16 = *(v7 + 2 * v15);
      if ((v16 & 0x80000000) != 0)
      {
        v16 = -v16;
      }

      if (v16 >> *(a1 + 468))
      {
        break;
      }

      --v14;
      if (--v12 <= 1)
      {
        goto LABEL_17;
      }
    }
  }

LABEL_19:
  v17 = *(a1 + 460);
  v18 = v17 - 1;
  if (v17 > v10)
  {
    goto LABEL_36;
  }

  v33 = v4;
  v19 = v4 + 232;
  v20 = v6 + 4;
  do
  {
    v21 = *(v19 + 8 * v8);
    v22 = 3 * v18;
    if (v18 >= v14)
    {
      arith_encode(a1, (v21 + v22), 0);
    }

    v23 = v22;
    v24 = (v20 + 4 * v18++);
    for (i = (v21 + v23 + 1); ; i += 3)
    {
      v26 = *v24++;
      v27 = *(v7 + 2 * v26);
      if ((v27 & 0x80000000) != 0)
      {
        break;
      }

      v28 = v27 >> *(a1 + 472);
      if (v28)
      {
        if (v28 == 1)
        {
          arith_encode(a1, i, 1);
          v29 = (v33 + 360);
          v30 = a1;
          v31 = 0;
          goto LABEL_34;
        }

        goto LABEL_33;
      }

LABEL_28:
      arith_encode(a1, i, 0);
      ++v18;
    }

    v28 = -v27 >> *(a1 + 472);
    if (!v28)
    {
      goto LABEL_28;
    }

    if (v28 == 1)
    {
      arith_encode(a1, i, 1);
      v29 = (v33 + 360);
      v30 = a1;
      v31 = 1;
      goto LABEL_34;
    }

LABEL_33:
    v29 = i + 1;
    v31 = v28 & 1;
    v30 = a1;
LABEL_34:
    arith_encode(v30, v29, v31);
  }

  while (v10 > v18);
  v9 = *(a1 + 464);
  v4 = v33;
LABEL_36:
  if (v18 < v9)
  {
    arith_encode(a1, (*(v4 + 8 * v8 + 232) + 3 * v18), 1);
  }

  return 1;
}

uint64_t encode_mcu(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 560);
  if (*(a1 + 316))
  {
    v4 = *(v3 + 96);
    if (!v4)
    {
      emit_restart(a1, *(v3 + 100));
      v4 = *(a1 + 316);
      *(v3 + 100) = (*(v3 + 100) + 1) & 7;
    }

    *(v3 + 96) = v4 - 1;
  }

  v51 = v3;
  if (*(a1 + 416) < 1)
  {
    return 1;
  }

  v5 = 0;
  v6 = *(a1 + 480);
  v45 = a1 + 376;
  v48 = v3 + 104;
  v7 = v3 + 80;
  v8 = v3 + 64;
  v52 = v3 + 232;
  v49 = v3 + 80;
  v44 = v3 + 64;
  do
  {
    v9 = *(a2 + 8 * v5);
    v50 = v5;
    v10 = *(a1 + 420 + 4 * v5);
    v11 = *(v45 + 8 * v10);
    v12 = *(v11 + 20);
    v13 = (*(v48 + 8 * v12) + *(v7 + 4 * v10));
    v14 = *v9;
    v15 = *(v8 + 4 * v10);
    v16 = v14 - v15;
    if (v14 == v15)
    {
      arith_encode(a1, (*(v48 + 8 * v12) + *(v7 + 4 * v10)), 0);
      *(v7 + 4 * v10) = 0;
      goto LABEL_29;
    }

    v47 = *(v45 + 8 * v10);
    *(v8 + 4 * v10) = v14;
    arith_encode(a1, v13, 1);
    v17 = v16 <= 0;
    if (v16 <= 0)
    {
      v18 = 3;
    }

    else
    {
      v18 = 2;
    }

    if (v16 <= 0)
    {
      v19 = 8;
    }

    else
    {
      v19 = 4;
    }

    if (v16 <= 0)
    {
      v16 = -v16;
    }

    arith_encode(a1, v13 + 1, v17);
    v20 = &v13[v18];
    *(v7 + 4 * v10) = v19;
    v21 = v16 - 1;
    if (v16 == 1)
    {
      v22 = 0;
    }

    else
    {
      v22 = 1;
      arith_encode(a1, v20, 1);
      v20 = (*(v48 + 8 * v12) + 20);
      if (v16 != 2)
      {
        v23 = v16 - 1;
        do
        {
          arith_encode(a1, v20, 1);
          v22 *= 2;
          ++v20;
          v24 = v23 > 3;
          v23 >>= 1;
        }

        while (v24);
      }
    }

    arith_encode(a1, v20, 0);
    v25 = 0;
    v11 = v47;
    if (v22 >= ((1 << *(a1 + 224 + v12)) >> 1))
    {
      if (v22 <= ((1 << *(a1 + 240 + v12)) >> 1))
      {
        goto LABEL_27;
      }

      v25 = *(v49 + 4 * v10) + 8;
    }

    *(v49 + 4 * v10) = v25;
LABEL_27:
    if (v22 >= 2)
    {
      do
      {
        arith_encode(a1, v20 + 14, (v21 & (v22 >> 1)) != 0);
        v22 >>= 1;
      }

      while (v22 > 1);
    }

LABEL_29:
    v26 = *(a1 + 488);
    if (!v26)
    {
      goto LABEL_61;
    }

    v27 = v26;
    v28 = *(v11 + 24);
    while (!v9[*(v6 + 4 * v27)])
    {
      if (!--v27)
      {
        goto LABEL_58;
      }
    }

    if (v27 < 1)
    {
LABEL_58:
      v29 = 0;
      goto LABEL_59;
    }

    v29 = 0;
    do
    {
      v30 = (*(v52 + 8 * v28) + 3 * v29);
      arith_encode(a1, v30, 0);
      LOWORD(v31) = v9[*(v6 + 4 * (v29 + 1))];
      if (v31)
      {
        v32 = v29++;
      }

      else
      {
        v33 = (v6 + 4 + 4 * (v29 + 1));
        do
        {
          arith_encode(a1, v30 + 1, 0);
          v30 += 3;
          v34 = *v33++;
          LOWORD(v31) = v9[v34];
          ++v29;
        }

        while (!v31);
        v32 = v29++;
      }

      arith_encode(a1, v30 + 1, 1);
      v35 = v31 < 1;
      if ((v31 & 0x8000u) == 0)
      {
        v31 = v31;
      }

      else
      {
        v31 = -v31;
      }

      arith_encode(a1, (v51 + 360), v35);
      v36 = v31 - 1;
      if (!v36 || (arith_encode(a1, v30 + 2, 1), v36 == 1))
      {
        arith_encode(a1, v30 + 2, 0);
        continue;
      }

      arith_encode(a1, v30 + 2, 1);
      v37 = *(v52 + 8 * v28);
      v38 = 217;
      if (v32 < *(a1 + 256 + v28))
      {
        v38 = 189;
      }

      v39 = (v37 + v38);
      v40 = v36 >> 1;
      if ((v36 >> 1) < 2)
      {
        arith_encode(a1, (v37 + v38), 0);
        v41 = v39 + 14;
        v42 = 2;
        goto LABEL_55;
      }

      v42 = 2;
      do
      {
        arith_encode(a1, v39, 1);
        v42 *= 2;
        ++v39;
        v40 >>= 1;
      }

      while (v40 >= 2);
      arith_encode(a1, v39, 0);
      if (v42)
      {
        v41 = v39 + 14;
        do
        {
LABEL_55:
          arith_encode(a1, v41, (v36 & (v42 >> 1)) != 0);
          v42 >>= 1;
        }

        while (v42 >= 2);
      }
    }

    while (v29 < v27);
    v26 = *(a1 + 488);
LABEL_59:
    if (v29 < v26)
    {
      arith_encode(a1, (*(v52 + 8 * v28) + 3 * v29), 1);
    }

LABEL_61:
    v7 = v49;
    v5 = v50 + 1;
    v8 = v44;
  }

  while (v50 + 1 < *(a1 + 416));
  return 1;
}

double emit_restart(uint64_t a1, int a2)
{
  v4 = *(a1 + 560);
  finish_pass_0(a1);
  emit_byte_0(255, a1);
  emit_byte_0((a2 + 208), a1);
  if (*(a1 + 372) >= 1)
  {
    v5 = 0;
    v6 = (v4 + 80);
    do
    {
      v7 = *(a1 + 376 + 8 * v5);
      if (!*(a1 + 460) && !*(a1 + 468))
      {
        v8 = *(v4 + 104 + 8 * *(v7 + 20));
        v8[2] = 0uLL;
        v8[3] = 0uLL;
        *v8 = 0uLL;
        v8[1] = 0uLL;
        *(v6 - 4) = 0;
        *v6 = 0;
      }

      if (*(a1 + 464))
      {
        v9 = *(v4 + 232 + 8 * *(v7 + 24));
        v9[14] = 0uLL;
        v9[15] = 0uLL;
        v9[12] = 0uLL;
        v9[13] = 0uLL;
        v9[10] = 0uLL;
        v9[11] = 0uLL;
        v9[8] = 0uLL;
        v9[9] = 0uLL;
        v9[6] = 0uLL;
        v9[7] = 0uLL;
        v9[4] = 0uLL;
        v9[5] = 0uLL;
        v9[2] = 0uLL;
        v9[3] = 0uLL;
        *v9 = 0uLL;
        v9[1] = 0uLL;
      }

      ++v5;
      ++v6;
    }

    while (v5 < *(a1 + 372));
  }

  *(v4 + 24) = xmmword_186224830;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  result = NAN;
  *(v4 + 56) = -4294967285;
  return result;
}

uint64_t arith_encode(uint64_t result, _BYTE *a2, int a3)
{
  v3 = result;
  v4 = *a2;
  v5 = jpeg_aritab[v4 & 0x7F];
  v6 = *(result + 560);
  v7 = v5 >> 16;
  v8 = *(v6 + 32) - (v5 >> 16);
  *(v6 + 32) = v8;
  if (a3 != v4 >> 7)
  {
    if (v8 >= v7)
    {
      *(v6 + 24) += v8;
      *(v6 + 32) = v7;
    }

    v10 = v4 & 0x80 ^ v5;
    goto LABEL_9;
  }

  if (v8 < 0x8000)
  {
    v9 = v5 >> 8;
    if (v8 < v7)
    {
      *(v6 + 24) += v8;
      *(v6 + 32) = v7;
    }

    v10 = v9 ^ v4 & 0x80;
LABEL_9:
    *a2 = v10;
    v12 = *(v6 + 24);
    v11 = *(v6 + 32);
    v13 = *(v6 + 56);
    while (1)
    {
      v11 *= 2;
      v12 *= 2;
      *(v6 + 24) = v12;
      *(v6 + 32) = v11;
      *(v6 + 56) = --v13;
      if (!v13)
      {
        break;
      }

LABEL_34:
      if (v11 >= 0x8000)
      {
        return result;
      }
    }

    if (v12 >> 19 < 256)
    {
      if (v12 >> 19 == 255)
      {
        ++*(v6 + 40);
LABEL_33:
        v11 = *(v6 + 32);
        v12 = *(v6 + 24) & 0x7FFFFLL;
        *(v6 + 24) = v12;
        v13 = *(v6 + 56) + 8;
        *(v6 + 56) = v13;
        goto LABEL_34;
      }

      result = *(v6 + 60);
      if (result)
      {
        if ((result & 0x80000000) == 0)
        {
          if (*(v6 + 48))
          {
            do
            {
              emit_byte_0(0, v3);
              v17 = *(v6 + 48) - 1;
              *(v6 + 48) = v17;
            }

            while (v17);
            result = *(v6 + 60);
          }

          result = emit_byte_0(result, v3);
        }
      }

      else
      {
        ++*(v6 + 48);
      }

      if (*(v6 + 40))
      {
        if (*(v6 + 48))
        {
          do
          {
            emit_byte_0(0, v3);
            v18 = *(v6 + 48) - 1;
            *(v6 + 48) = v18;
          }

          while (v18);
        }

        do
        {
          emit_byte_0(255, v3);
          result = emit_byte_0(0, v3);
          v19 = *(v6 + 40) - 1;
          *(v6 + 40) = v19;
        }

        while (v19);
      }
    }

    else
    {
      v14 = *(v6 + 60);
      if ((v14 & 0x80000000) == 0)
      {
        if (*(v6 + 48))
        {
          do
          {
            emit_byte_0(0, v3);
            v15 = *(v6 + 48) - 1;
            *(v6 + 48) = v15;
          }

          while (v15);
          v14 = *(v6 + 60);
        }

        result = emit_byte_0((v14 + 1), v3);
        if (*(v6 + 60) == 254)
        {
          result = emit_byte_0(0, v3);
        }
      }

      v16 = *(v6 + 48) + *(v6 + 40);
      *(v6 + 40) = 0;
      *(v6 + 48) = v16;
    }

    *(v6 + 60) = (v12 >> 19);
    goto LABEL_33;
  }

  return result;
}

uint64_t emit_byte_0(uint64_t result, uint64_t *a2)
{
  v2 = a2[5];
  v3 = (*v2)++;
  *v3 = result;
  v4 = *(v2 + 8) - 1;
  *(v2 + 8) = v4;
  if (!v4)
  {
    result = (*(v2 + 24))(a2);
    if (!result)
    {
      v6 = *a2;
      *(v6 + 40) = 25;
      v7 = *v6;

      return v7(a2);
    }
  }

  return result;
}

void ETCTextureImp::~ETCTextureImp(ETCTextureImp *this, uint64_t a2, const char *a3)
{
  *this = &unk_1EF4DA8B8;
  if (*(this + 3))
  {
    Source = CGImageSourceGetSource(*(this + 4));
    if (Source)
    {
      IIOImageReadSession::releaseBytePointer(Source, *(this + 3));
    }
  }

  v5 = *(this + 4);
  if (v5)
  {
    CFRelease(v5);
  }

  *(this + 4) = 0;

  _cg_jpeg_mem_term(this, a2, a3);
}

{
  ETCTextureImp::~ETCTextureImp(this, a2, a3);

  JUMPOUT(0x186602850);
}

uint64_t ETCTextureImp::loadDataFromXPCObject(ETCTextureImp *this, xpc_object_t xdict)
{
  length = 0;
  data = xpc_dictionary_get_data(xdict, "iio_xpc_plugin_data_etc_imp", &length);
  if (length == 544)
  {
    memcpy(this + 16, data, 0x220uLL);
    *(this + 3) = 0;
    *(this + 4) = 0;
    *(this + 2) = 0;
  }

  return 0;
}

uint64_t ETCTextureImp::textureDataLockData(ETCTextureImp *this, IIOImageReadSession *a2, unint64_t a3, unint64_t a4, IIOImageRead **a5, unint64_t *a6, unint64_t *a7)
{
  if (!*(this + 2))
  {
    *(this + 2) = IIOImageReadSession::retainBytePointer(a2, this + 3, 1);
    v13 = IIOImageSource::cf(a2);
    *(this + 4) = v13;
    CFRetain(v13);
    if (!*(this + 2))
    {
      _cg_jpeg_mem_term("textureDataLockData", 168, "*** Can't access image data\n");
    }
  }

  if (a3 >= 0x1F)
  {
    a3 = 31;
  }

  *a5 = IIOImageReadSession::getSize(a2);
  v14 = this + 8 * a3;
  *a6 = *(v14 + 6);
  *a7 = *(v14 + 38);
  return *(this + 2);
}

void ETCReadPlugin::ETCReadPlugin(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  v5 = IIOReadPlugin::IIOReadPlugin(a1, a2, a3, a4, a5);
  *v5 = &unk_1EF4DA900;
  *(v5 + 520) = 0u;
  operator new();
}

void sub_186066C28(_Unwind_Exception *a1)
{
  v3 = *(v1 + 66);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v3);
  }

  IIOReadPlugin::~IIOReadPlugin(v1);
  _Unwind_Resume(a1);
}

void sub_186066D38(_Unwind_Exception *a1)
{
  v3 = *(v1 + 66);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v3);
  }

  IIOReadPlugin::~IIOReadPlugin(v1);
  _Unwind_Resume(a1);
}

void ETCReadPlugin::~ETCReadPlugin(ETCReadPlugin *this)
{
  *this = &unk_1EF4DA900;
  v2 = *(this + 64);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 66);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v3);
  }

  IIOReadPlugin::~IIOReadPlugin(this);
}

{
  ETCReadPlugin::~ETCReadPlugin(this);

  JUMPOUT(0x186602850);
}

uint64_t ETCReadPlugin::setupCallback(uint64_t a1, CFDictionaryRef *a2)
{
  v2 = *(a1 + 408);
  if (v2 == 13)
  {
    return IIOReadPlugin::setupImageProviderCallbackV3(a1, a2);
  }

  if (v2 == 1)
  {
    return IIOReadPlugin::setupCallback(a1, a2);
  }

  return 4294967246;
}

uint64_t ETCReadPlugin::loadDataFromXPCObject(ETCReadPlugin *this, void *a2)
{
  result = IIOReadPlugin::loadDataFromXPCObject(this, a2);
  if (!result)
  {
    length = 0;
    data = xpc_dictionary_get_data(a2, "iio_xpc_plugin_data_etc", &length);
    if (length == 48)
    {
      v6 = *data;
      v7 = data[2];
      *(this + 30) = data[1];
      *(this + 31) = v7;
      *(this + 29) = v6;
      *(this + 62) = 0;
      return (*(**(this + 65) + 16))(*(this + 65), a2);
    }

    else
    {
      return 4294967246;
    }
  }

  return result;
}

uint64_t ETCReadPlugin::saveDataToXPCObject(ETCReadPlugin *this, void *a2)
{
  result = IIOReadPlugin::saveDataToXPCObject(this, a2);
  if (!result)
  {
    iio_xpc_dictionary_add_databuffer(a2, "iio_xpc_plugin_data_etc", this + 464, 0x30uLL);
    v5 = *(**(this + 65) + 24);

    return v5();
  }

  return result;
}

uint64_t ETCReadPlugin::initialize(ETCReadPlugin *this, IIODictionary *a2)
{
  v57 = *MEMORY[0x1E69E9840];
  __dst = 0;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  v43 = 0u;
  v42 = 0u;
  IIOScanner::IIOScanner(&v42, *(this + 3));
  if (*(this + 369) != 1)
  {
    goto LABEL_4;
  }

  v3 = *(this + 65);
  if (IIOScanner::getBytesAtOffset(&v42, &__dst, *(this + 26), 4uLL) != 4)
  {
    goto LABEL_4;
  }

  Size = IIOImageReadSession::getSize(*(this + 3));
  if (__dst == 542327876)
  {
    goto LABEL_4;
  }

  v7 = *(this + 55);
  if (v7 != 1261585748)
  {
    if (v7 != 1262834755)
    {
      v10 = 0;
      *(this + 61) = 0;
      *(this + 62) = 0;
      goto LABEL_50;
    }

    v8 = Size;
    if (IIOScanner::getBytesAtOffset(&v42, &v53, *(this + 26), 0x40uLL) == 64)
    {
      SwapKTXHeader(&v53);
      v9 = v53.i32[3];
      *(this + 119) = HIDWORD(v54);
      *(this + 372) = v9 == 67305985;
      v10 = DWORD1(v55);
      if (v8 <= DWORD1(v55))
      {
        v37 = 349;
      }

      else
      {
        v11 = DWORD2(v55);
        if (v8 > DWORD2(v55))
        {
          *(this + 60) = vshr_n_u32(vadd_s32(*(&v55 + 4), 0x300000003), 2uLL);
          v12 = DWORD2(v56);
          v13 = HIDWORD(v56) + 64;
          *(this + 26) = v13;
          if (v12 >= 0x1F)
          {
            v14 = 31;
          }

          else
          {
            v14 = v12;
          }

          *(this + 118) = v14;
          if (v12)
          {
            v15 = 0;
            v16 = v43;
            v17 = v13;
            while (1)
            {
              *&v40[0] = 0;
              if (IIOScanner::getBytesAtOffset(&v42, v40, v17, 8uLL) != 8)
              {
                break;
              }

              v18 = v17 + 4;
              v19 = v16 - (v17 + 4);
              if (v16 <= v17 + 4)
              {
                *(this + 118) = v15;
                goto LABEL_40;
              }

              if (*&v40[0] < v19)
              {
                v19 = *&v40[0];
              }

              if (v15 <= 0x1F)
              {
                v20 = v3 + 8 * v15;
                *(v20 + 48) = v18;
                *(v20 + 304) = v19;
              }

              v13 = v19 + v18;
              v17 = ((v19 + 3) & 0xFFFFFFFFFFFFFFFCLL) + v18;
              if (++v15 >= *(this + 118))
              {
                goto LABEL_40;
              }
            }

            _cg_jpeg_mem_term("initialize", 368, "*** ETC - failed to read %d bytes\n", 8);
            goto LABEL_4;
          }

LABEL_40:
          v25 = *(this + 121) * *(this + 120);
          v26 = *(this + 119) - 37490;
          if (v26 >= 8)
          {
            v27 = 8;
          }

          else
          {
            v27 = qword_1862248B0[v26];
          }

          if (!is_mul_ok(v25, v27))
          {
            _cg_jpeg_mem_term("initialize", 398, "*** ERROR: ETC-image too big\n");
            goto LABEL_4;
          }

          if (*(v3 + 304) < v25 * v27)
          {
            _cg_jpeg_mem_term("initialize", 400, "*** ERROR: ETC-levelSize too small\n");
            goto LABEL_4;
          }

          if (v13 > IIOImageReadSession::getSize(*(this + 3)))
          {
            v38 = IIOImageReadSession::getSize(*(this + 3));
            _cg_jpeg_mem_term("initialize", 401, "***ERROR: ETC (KTX) file truncated. File Size: %lu, expected %lu\n", v38, v13);
            goto LABEL_4;
          }

          *(this + 58) = *(v3 + 304);
          *(this + 26) += 4;
          goto LABEL_47;
        }

        v37 = 350;
      }

      _cg_jpeg_mem_term("initialize", v37, "*** bad dimension: %d x %d  (fileSize: %d)\n", DWORD1(v55), DWORD2(v55), v8);
    }

LABEL_4:
    kdebug_trace();
    v5 = 4294967246;
    goto LABEL_5;
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v48 = 0u;
  if (IIOScanner::getBytesAtOffset(&v42, &v48, *(this + 26), 0x50uLL) != 80 || !IsKTX2Header(&v48))
  {
    goto LABEL_4;
  }

  if (v43 <= v50)
  {
    _cg_jpeg_mem_term("initialize", 421, "*** ERROR: Invalid numberOfArrayElements (%d).");
    goto LABEL_4;
  }

  if (v43 <= v51)
  {
    _cg_jpeg_mem_term("initialize", 422, "*** ERROR: Invalid dfdOffset (%d).");
    goto LABEL_4;
  }

  if (v43 <= DWORD1(v51))
  {
    _cg_jpeg_mem_term("initialize", 423, "*** ERROR: Invalid dfdLength (%d).");
    goto LABEL_4;
  }

  if (v43 <= DWORD2(v51))
  {
    _cg_jpeg_mem_term("initialize", 424, "*** ERROR: Invalid kvdOffset (%d).");
    goto LABEL_4;
  }

  if (v43 <= HIDWORD(v51))
  {
    _cg_jpeg_mem_term("initialize", 425, "*** ERROR: Invalid kvdLength (%d).");
    goto LABEL_4;
  }

  if (v52 >= v43)
  {
    _cg_jpeg_mem_term("initialize", 426, "*** ERROR: Invalid scgdOffset (%d).");
    goto LABEL_4;
  }

  if (*(&v52 + 1) >= v43)
  {
    _cg_jpeg_mem_term("initialize", 427, "*** ERROR: Invalid scgdLength (%d).");
    goto LABEL_4;
  }

  v41 = 0;
  memset(v40, 0, sizeof(v40));
  v39 = 0;
  if (CreateKtxStream(v40, *(this + 3)))
  {
    goto LABEL_4;
  }

  v21 = ktxTexture2_CreateFromStream(v40, 0, &v39);
  if (v21)
  {
    _cg_jpeg_mem_term("initialize", 436, "*** ERROR: ktxTexture2_CreateFromStream failed [%d]\n", v21);
    goto LABEL_4;
  }

  *(this + 62) = v39;
  v22 = HIDWORD(v48);
  *(this + 126) = HIDWORD(v48);
  *(this + 119) = GLFormatForVulkanFormat(v22);
  *(this + 372) = 0;
  v23 = *(&v49 + 4);
  *(this + 60) = vshr_n_u32(vadd_s32(*(&v49 + 4), 0x300000003), 2uLL);
  v24 = DWORD2(v50);
  if (DWORD2(v50) >= 0x1F)
  {
    v24 = 31;
  }

  *(this + 118) = v24;
  v11 = HIDWORD(v23);
  v10 = v23;
LABEL_47:
  *(this + 61) = v10;
  *(this + 62) = v11;
  if (!v11 && v10)
  {
    *(this + 62) = 1;
  }

LABEL_50:
  v28 = *(this + 120);
  *(this + 77) = 4 * v28;
  if (v28 >> 30)
  {
    v36 = 467;
LABEL_68:
    _cg_jpeg_mem_term("initialize", v36, "*** ERROR: ETC-image too big\n");
    goto LABEL_4;
  }

  v29 = *(this + 121);
  *(this + 78) = 4 * v29;
  if (v29 >> 30)
  {
    v36 = 469;
    goto LABEL_68;
  }

  *(this + 373) = 1;
  *(this + 85) = 1380401696;
  *(this + 130) = 4;
  *(this + 263) = 2;
  *(this + 63) = 16 * v10;
  *(this + 64) = 8388640;
  v30 = *(this + 119);
  if ((v30 - 37494) >= 4)
  {
    v31 = 5;
  }

  else
  {
    v31 = 3;
  }

  *(this + 262) = v31;
  v32 = v30 - 37493;
  if (v32 > 4)
  {
    v33 = MEMORY[0x1E695F140];
  }

  else
  {
    v33 = qword_1E6F0B2F8[v32];
  }

  *(this + 20) = CGColorSpaceCreateWithName(*v33);
  v34 = getenv("IIO_useV3");
  if (v34 && !atoi(v34))
  {
    v35 = 1;
  }

  else
  {
    v35 = 13;
  }

  *(this + 204) = v35;
  if (*(this + 194) == 1)
  {
    ImageIOLog("    ETC:\n");
  }

  v5 = 0;
LABEL_5:
  IIOScanner::~IIOScanner(&v42);
  return v5;
}

uint64_t ETCReadPlugin::decodeETCtoRGBX(ETCReadPlugin *this, unint64_t *a2, uint64_t a3, vImage_Buffer *a4)
{
  v4 = *(this + 119) - 37488;
  if (v4 >= 0xA)
  {
    _cg_jpeg_mem_term("decodeETCtoRGBX", 565, "*** ETC - unknown GL pixel format\n", a4);
    return 4294967246;
  }

  else if (nv::DecompressETC_EAC(dword_186224918[v4], a4->width, a4->height, a2, a3, a4->data))
  {
    return 0;
  }

  else
  {
    return 4294967246;
  }
}

uint64_t ETCReadPlugin::decodeETCtoRGBX(ETCReadPlugin *this, IIOImageReadSession *a2, vImage_Buffer *a3)
{
  v6 = *(this + 65);
  v22 = 0;
  v7 = IIOImageReadSession::retainBytePointer(a2, &v22, 0);
  v8 = *(this + 56);
  if (v8 > 0x1F)
  {
    if (!v7)
    {
      goto LABEL_8;
    }

    v10 = 0;
    v11 = 0;
  }

  else
  {
    if (!v7)
    {
      goto LABEL_8;
    }

    v9 = v6 + 8 * v8;
    v10 = *(v9 + 304);
    v11 = *(v9 + 48);
  }

  v12 = (v7 + v11);
  if (((v7 + v11) & 0xF) == 0)
  {
    v16 = 0;
    goto LABEL_19;
  }

  IIOImageReadSession::releaseBytePointer(a2, v22);
  v22 = 0;
LABEL_8:
  Size = IIOImageReadSession::getSize(a2);
  v14 = *(this + 56);
  if (v14 > 0x1F)
  {
    v15 = 0;
  }

  else
  {
    v15 = *(v6 + 8 * v14 + 48);
  }

  v10 = Size - v15;
  if (Size == v15)
  {
    goto LABEL_17;
  }

  v16 = malloc_type_malloc(Size - v15, 0x100004077774924uLL);
  v17 = *(this + 56);
  if (v17 > 0x1F)
  {
    v18 = 0;
  }

  else
  {
    v18 = *(v6 + 8 * v17 + 48);
  }

  BytesAtOffset = IIOImageReadSession::getBytesAtOffset(a2, v16, v18, v10);
  if (v10 == BytesAtOffset)
  {
    v12 = v16;
    if (!v16)
    {
LABEL_17:
      ETCReadPlugin::decodeETCtoRGBX();
      v20 = 0;
      goto LABEL_21;
    }

LABEL_19:
    v20 = ETCReadPlugin::decodeETCtoRGBX(this, v12, v10, a3);
    if (!v16)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  _cg_jpeg_mem_term("decodeETCtoRGBX", 609, "got: %ld expected: %ld\n", BytesAtOffset, v10);
  v20 = 0;
  if (v16)
  {
LABEL_20:
    free(v16);
  }

LABEL_21:
  if (v22)
  {
    IIOImageReadSession::releaseBytePointer(a2, v22);
  }

  return v20;
}

uint64_t ETCReadPlugin::decodeImageImp(IIOReadPlugin *this, IIODecodeParameter *a2, int a3, IOSurfaceRef *a4)
{
  v60[0] = 0;
  seed = 0;
  if (*(this + 442) == 1 && *(this + 53) != 16)
  {
    return 4294967246;
  }

  *(this + 53) = 16;
  if ((gIIODebugFlags & 0x20000) != 0)
  {
    v8 = *(this + 55);
    v9 = v8 >> 24;
    v10 = MEMORY[0x1E69E9830];
    if ((v8 >> 24) <= 0x7F)
    {
      v11 = *(MEMORY[0x1E69E9830] + 4 * v9 + 60) & 0x40000;
    }

    else
    {
      v11 = __maskrune(v9, 0x40000uLL);
      v8 = *(this + 55);
    }

    if (v11)
    {
      v13 = (v8 >> 24);
    }

    else
    {
      v13 = 46;
    }

    v14 = v8 << 8 >> 24;
    if (v14 <= 0x7F)
    {
      v15 = *(v10 + 4 * v14 + 60) & 0x40000;
    }

    else
    {
      v15 = __maskrune(v14, 0x40000uLL);
      v8 = *(this + 55);
    }

    if (v15)
    {
      v16 = (v8 << 8 >> 24);
    }

    else
    {
      v16 = 46;
    }

    v17 = v8 >> 8;
    if (v17 <= 0x7F)
    {
      v18 = *(v10 + 4 * v17 + 60) & 0x40000;
    }

    else
    {
      v18 = __maskrune(v17, 0x40000uLL);
      v8 = *(this + 55);
    }

    if (v18)
    {
      v19 = (v8 >> 8);
    }

    else
    {
      v19 = 46;
    }

    if (v8 <= 0x7F)
    {
      if ((*(v10 + 4 * v8 + 60) & 0x40000) != 0)
      {
        goto LABEL_25;
      }
    }

    else if (__maskrune(v8, 0x40000uLL))
    {
LABEL_25:
      v20 = *(this + 220);
LABEL_28:
      ImageIOLog("♦️  '%c%c%c%c' [%s] %s\n", v13, v16, v19, v20, iioTypeStr[a3], "virtual OSStatus ETCReadPlugin::decodeImageImp(IIODecodeParameter *, IIOImageType, IOSurfaceRef *, CVPixelBufferRef *, CGImageBlockSetRef *)");
      goto LABEL_29;
    }

    v20 = 46;
    goto LABEL_28;
  }

LABEL_29:
  IIOReadPlugin::debugDecodeImage(this, a2);
  v21 = *(this + 3);
  if (v21)
  {
    v22 = IIOImageReadSession::mapData(v21);
  }

  else
  {
    v22 = 0;
  }

  v23 = *(this + 77);
  v24 = *(this + 78);
  v25 = *(this + 79);
  if (a3 == 3)
  {
    v52 = a4;
    BlockArray = IIOReadPlugin::allocateBlockArray(this, *(this + 26));
    v33 = *(this + 78);
    LODWORD(v34) = *(this + 77);
    v32 = v34;
    v30 = v33;
    v51 = *(this + 79) * v33;
    BaseAddress = _ImageIO_Malloc(v51, *(this + 52), v60, kImageMalloc_ETC_Data[0], 0, 0);
    v31 = 0;
LABEL_39:
    v53 = a3;
    if (!BaseAddress)
    {
      v39 = 0;
      goto LABEL_64;
    }

    if (*(this + 55) == 1261585748)
    {
      DataSize = Ktx2GetDataSize(*(this + 126), v23, v24);
      if (DataSize)
      {
        v36 = v31;
        v31 = v22;
        v37 = DataSize;
        v38 = malloc_type_calloc(DataSize, 1uLL, 0x100004077774924uLL);
        if (v38)
        {
          v39 = v38;
          v55 = *(this + 56);
          v56 = v38;
          v57 = v37;
          v58 = 0;
          KTXTexture = *(this + 62);
          if (!KTXTexture)
          {
            KTXTexture = CreateKTXTexture(*(this + 3));
            *(this + 62) = KTXTexture;
          }

          v22 = v31;
          if ((*(*(KTXTexture + 8) + 40))())
          {
            BlockArray = 4294967246;
            if ((v36 & 1) == 0)
            {
              goto LABEL_70;
            }

            goto LABEL_69;
          }

          dest.data = BaseAddress;
          dest.height = v24;
          dest.width = v23;
          dest.rowBytes = v25;
          v31 = v36;
          if (*(this + 3))
          {
            BlockArray = ETCReadPlugin::decodeETCtoRGBX(this, v56, v58, &dest);
          }

          goto LABEL_51;
        }

        BlockArray = 4294967188;
        v22 = v31;
        LOBYTE(v31) = v36;
      }

      else
      {
        BlockArray = 4294967229;
      }

      v39 = 0;
      if ((v31 & 1) == 0)
      {
        goto LABEL_70;
      }

      goto LABEL_69;
    }

    dest.data = BaseAddress;
    dest.height = v24;
    dest.width = v23;
    dest.rowBytes = v25;
    v41 = *(this + 3);
    if (v41)
    {
      BlockArray = ETCReadPlugin::decodeETCtoRGBX(this, v41, &dest);
    }

    v39 = 0;
LABEL_51:
    if (BlockArray)
    {
      *(this + 26) = 0;
      if ((v31 & 1) == 0)
      {
        goto LABEL_70;
      }

      goto LABEL_69;
    }

    if (*(this + 161) == 32 && *(this + 160) == 8 && *(this + 438) == 1)
    {
      dest.data = BaseAddress;
      v42 = *(this + 308);
      v43.i64[0] = v42;
      v43.i64[1] = HIDWORD(v42);
      *&dest.height = vextq_s8(v43, v43, 8uLL);
      dest.rowBytes = *(this + 79);
      vImagePremultiplyData_RGBA8888(&dest, &dest, 0x10u);
    }

    if (v53 == 3)
    {
      v44 = 0;
      v61.origin.x = 0.0;
      v61.origin.y = 0.0;
      v61.size.width = v32;
      v61.size.height = v30;
      **(this + 12) = IIOReadPlugin::createImageBlock(this, BaseAddress, v51, v61, *(this + 79), *(this + 371));
      if (CGRectEqualToRect(*(this + 120), *MEMORY[0x1E695F050]))
      {
        v45 = 0;
      }

      else
      {
        v62.origin.x = 0.0;
        v62.origin.y = 0.0;
        v62.size.width = v32;
        v62.size.height = v30;
        *(&v45 - 1) = CGRectUnion(*(this + 120), v62);
        v44 = v46;
        v32 = v47;
        v30 = v48;
      }

      BlockArray = 0;
      *(this + 15) = v44;
      *(this + 16) = v45;
      *(this + 17) = v32;
      *(this + 18) = v30;
      if ((v31 & 1) == 0)
      {
LABEL_73:
        if (v39)
        {
          free(v39);
        }

        goto LABEL_75;
      }

      BaseAddress = 0;
LABEL_69:
      IOSurfaceUnlock(*v52, 0, &seed);
LABEL_70:
      if (v53 == 3 && BaseAddress)
      {
        _ImageIO_Free(BaseAddress, v60[0]);
      }

      goto LABEL_73;
    }

    BlockArray = 0;
LABEL_64:
    if (!v31)
    {
      goto LABEL_70;
    }

    goto LABEL_69;
  }

  if (a3 == 1 && a4 && *a4)
  {
    IOSurfaceLock(*a4, 0, &seed);
    BaseAddress = IOSurfaceGetBaseAddress(*a4);
    v27 = v22;
    Height = IOSurfaceGetHeight(*a4);
    v52 = a4;
    BlockArray = 0;
    v29 = IOSurfaceGetBytesPerRow(*a4) * Height;
    v22 = v27;
    v51 = v29;
    v60[0] = v29;
    v30 = 0.0;
    v31 = 1;
    v32 = 0.0;
    goto LABEL_39;
  }

  BlockArray = 0;
LABEL_75:
  if (v22)
  {
    v49 = *(this + 3);
    if (v49)
    {
      IIOImageReadSession::unmapData(v49);
    }
  }

  return BlockArray;
}

uint64_t ETCReadPlugin::copyImageTextureData(uint64_t a1)
{
  v2 = *(a1 + 512);
  if (!v2)
  {
    v12 = xmmword_1EF4DAA20;
    v13 = *off_1EF4DAA30;
    v3 = IIOImageRead::imageCount(*(a1 + 32));
    memset(v11, 0, sizeof(v11));
    IIODictionary::IIODictionary(v11);
    IIONumber::IIONumber(v10, *(a1 + 244));
    IIODictionary::setObjectForKey(v11, v10, @"width");
    IIONumber::~IIONumber(v10);
    IIONumber::IIONumber(v10, *(a1 + 248));
    IIODictionary::setObjectForKey(v11, v10, @"height");
    IIONumber::~IIONumber(v10);
    v4 = *(a1 + 476) - 37488;
    if (v4 > 9)
    {
      v5 = 0;
    }

    else
    {
      v5 = dword_186224940[v4];
    }

    IIONumber::IIONumber(v10, v5 * *(a1 + 480));
    IIODictionary::setObjectForKey(v11, v10, @"rowBytes");
    IIONumber::~IIONumber(v10);
    IIONumber::IIONumber(v10, *(a1 + 476));
    IIODictionary::setObjectForKey(v11, v10, @"glInternalFormat");
    IIONumber::~IIONumber(v10);
    IIONumber::IIONumber(v10, v3);
    IIODictionary::setObjectForKey(v11, v10, @"mipmapLevelCount");
    IIONumber::~IIONumber(v10);
    IIONumber::IIONumber(v10, 1);
    IIODictionary::setObjectForKey(v11, v10, @"faceCount");
    IIONumber::~IIONumber(v10);
    ColorSpace = CGImageProviderGetColorSpace();
    IIODictionary::setObjectForKey(v11, ColorSpace, @"colorSpace");
    IIODictionary::setObjectForKey(v11, *MEMORY[0x1E695E4C0], @"supportsTiledLayout");
    IIONumber::IIONumber(v10, *(a1 + 476));
    IIODictionary::setObjectForKey(v11, v10, @"pixelFormatGL");
    IIONumber::~IIONumber(v10);
    v7 = *(a1 + 476) - 37488;
    if (v7 > 9)
    {
      v8 = 0;
    }

    else
    {
      v8 = dword_186224968[v7];
    }

    IIONumber::IIONumber(v10, v8);
    IIODictionary::setObjectForKey(v11, v10, @"pixelFormatMetal");
    IIONumber::~IIONumber(v10);
    IIOImageSource::cf(*(a1 + 32));
    operator new();
  }

  CFRetain(v2);
  return *(a1 + 512);
}

void sub_18606808C(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a3);
  }

  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<ETCTextureImp>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1EF4DAA80;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x186602850);
}

__CFString *CGImageMetadataDefaultPrefixForSchema(const __CFString *a1)
{
  if (CFStringCompare(a1, @"http://ns.adobe.com/exif/1.0/aux/", 0) == kCFCompareEqualTo)
  {
    v2 = &kCGImageMetadataPrefixExifAux;
    goto LABEL_23;
  }

  if (CFStringCompare(a1, @"http://ns.adobe.com/camera-raw-settings/1.0/", 0) == kCFCompareEqualTo)
  {
    v2 = xmpCRSPrefix;
    goto LABEL_23;
  }

  if (CFStringCompare(a1, @"http://ns.adobe.com/DICOM/", 0) == kCFCompareEqualTo)
  {
    v2 = kCGImageMetadataPrefixDICOM;
    goto LABEL_23;
  }

  if (CFStringCompare(a1, @"http://purl.org/dc/elements/1.1/", 0) == kCFCompareEqualTo)
  {
    v2 = &kCGImageMetadataPrefixDublinCore;
    goto LABEL_23;
  }

  if (CFStringCompare(a1, @"http://ns.adobe.com/exif/1.0/", 0) == kCFCompareEqualTo)
  {
    v2 = &kCGImageMetadataPrefixExif;
    goto LABEL_23;
  }

  if (CFStringCompare(a1, @"http://ns.adobe.com/photoshop/1.0/", 0) == kCFCompareEqualTo)
  {
    v2 = &kCGImageMetadataPrefixPhotoshop;
    goto LABEL_23;
  }

  if (CFStringCompare(a1, @"http://ns.adobe.com/tiff/1.0/", 0) == kCFCompareEqualTo)
  {
    v2 = &kCGImageMetadataPrefixTIFF;
    goto LABEL_23;
  }

  if (CFStringCompare(a1, @"http://iptc.org/std/Iptc4xmpCore/1.0/xmlns/", 0) == kCFCompareEqualTo)
  {
    v2 = &kCGImageMetadataPrefixIPTCCore;
    goto LABEL_23;
  }

  if (CFStringCompare(a1, @"http://iptc.org/std/Iptc4xmpExt/2008-02-29/", 0) == kCFCompareEqualTo)
  {
    v2 = &kCGImageMetadataPrefixIPTCExtension;
    goto LABEL_23;
  }

  if (CFStringCompare(a1, @"http://ns.adobe.com/xap/1.0/", 0) == kCFCompareEqualTo)
  {
    v2 = &kCGImageMetadataPrefixXMPBasic;
LABEL_23:
    result = *v2;
    if (*v2)
    {
      return result;
    }

    goto LABEL_24;
  }

  if (CFStringCompare(a1, @"http://www.metadataworkinggroup.com/schemas/regions/", 0) == kCFCompareEqualTo)
  {
    v2 = xmpMWGRegionsPrefix;
    goto LABEL_23;
  }

LABEL_24:
  IIOString::IIOString(v5, a1);
  v4 = IIOString::utf8String(v5);
  _cg_jpeg_mem_term("CGImageMetadataDefaultPrefixForSchema", 54, "*** unknown schema '%s'\n", v4);
  IIOString::~IIOString(v5);
  return 0;
}

void sub_1860683E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIOString::~IIOString(va);
  _Unwind_Resume(a1);
}

CGImageMetadata *CGImageMetadataCreateSerializedData(const __CFArray *a1)
{
  IIOInitDebugFlags();
  if ((~gIIODebugFlags & 0xC000) == 0)
  {
    ImageIODebugOptions(3, "S", "CGImageMetadataCreateSerializedData", 0, 0, -1, 0);
  }

  result = CGImageMetadataCreateFromMetadataProperties(a1);
  if (result)
  {
    v3 = result;
    XMPData = CGImageMetadataCreateXMPData(result, 0);
    CFRelease(v3);
    return XMPData;
  }

  return result;
}

CGImageMetadata *CGImageMetadataCreateFromMetadataProperties(const __CFArray *a1)
{
  metadata = CGImageMetadataCreateMutable();
  Count = CFArrayGetCount(a1);
  if (Count == 1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, 0);
    v4 = CFGetTypeID(ValueAtIndex);
    if (v4 != CGImageMetadataGetTypeID())
    {
      MetadataProperties = 0;
      v6 = 1;
      goto LABEL_10;
    }

    _cg_jpeg_mem_term("CGImageMetadataCreateFromMetadataProperties", 406, "*** expected 'CGImageMetadataPropertyRef' but got 'CGImageMetadataRef'");
    MetadataProperties = CGImageMetadataCreateMetadataProperties(ValueAtIndex);
    v6 = CFArrayGetCount(MetadataProperties);
    a1 = MetadataProperties;
  }

  else
  {
    v6 = Count;
    MetadataProperties = 0;
  }

  if (v6 >= 1)
  {
LABEL_10:
    v23 = MetadataProperties;
    for (i = 0; i != v6; ++i)
    {
      v9 = CFArrayGetValueAtIndex(a1, i);
      if (v9)
      {
        v10 = v9;
        v11 = CFGetTypeID(v9);
        if (v11 == CGImageMetadataPropertyGetTypeID())
        {
          Value = CGImageMetadataPropertyGetValue(v10);
          if (Value)
          {
            v13 = Value;
            v14 = CFGetTypeID(Value);
            if (v14 == CGImageMetadataValueGetTypeID())
            {
              Schema = CGImageMetadataPropertyGetSchema(v10);
              SuggestedPrefix = CGImageMetadataPropertyGetSuggestedPrefix(v10);
              CGImageMetadataRegisterNamespaceForPrefix(metadata, Schema, SuggestedPrefix, 0);
              PropertyName = CGImageMetadataPropertyGetPropertyName(v10);
              TagTypeForMetadataValue = GetTagTypeForMetadataValue(v13);
              TagValueFromMetadataValue = CreateTagValueFromMetadataValue(Schema, SuggestedPrefix, v13);
              if (TagValueFromMetadataValue)
              {
                v20 = TagValueFromMetadataValue;
                v21 = CGImageMetadataTagCreate(Schema, SuggestedPrefix, PropertyName, TagTypeForMetadataValue, TagValueFromMetadataValue);
                if (v21)
                {
                  v22 = v21;
                  SyncMetadataValueQualifiersToTag(v13, v21);
                  CGImageMetadataAddTag(metadata, v22);
                  CFRelease(v22);
                }

                CFRelease(v20);
              }
            }
          }
        }

        else
        {
          _cg_jpeg_mem_term("CGImageMetadataCreateFromMetadataProperties", 444, "*** expected 'CGImageMetadataPropertyRef' but got unknown type...\n");
        }
      }
    }

    MetadataProperties = v23;
    if (v23)
    {
      goto LABEL_7;
    }

    return metadata;
  }

  if (MetadataProperties)
  {
LABEL_7:
    CFRelease(MetadataProperties);
  }

  return metadata;
}

CGImageMetadata *CGImageMetadataSerialize(const __CFArray *a1)
{
  IIOInitDebugFlags();
  if ((~gIIODebugFlags & 0xC000) == 0)
  {
    ImageIODebugOptions(3, "S", "CGImageMetadataSerialize", 0, 0, -1, 0);
  }

  return CGImageMetadataCreateSerializedData(a1);
}

__CFArray *CGImageMetadataCreateFromData(const __CFData *a1)
{
  kdebug_trace();
  IIOInitDebugFlags();
  if ((~gIIODebugFlags & 0xC000) == 0)
  {
    ImageIODebugOptions(3, "S", "CGImageMetadataCreateFromData", 0, 0, -1, 0);
  }

  v2 = CGImageMetadataCreateFromXMPData(a1);
  if (v2)
  {
    v3 = v2;
    MetadataProperties = CGImageMetadataCreateMetadataProperties(v2);
    CFRelease(v3);
  }

  else
  {
    MetadataProperties = 0;
  }

  kdebug_trace();
  return MetadataProperties;
}

__CFArray *CGImageMetadataCreateMetadataProperties(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  Count = CFDictionaryGetCount(*(a1 + 24));
  Mutable = CFArrayCreateMutable(v2, Count, MEMORY[0x1E695E9C0]);
  v5 = CFDictionaryGetCount(*(a1 + 24));
  v6 = malloc_type_calloc(8uLL, v5, 0x2004093837F09uLL);
  v7 = malloc_type_calloc(8uLL, v5, 0xC0040B8AA526DuLL);
  CFDictionaryGetKeysAndValues(*(a1 + 24), v6, v7);
  if (v5 >= 1)
  {
    v8 = v7;
    do
    {
      v9 = *v8;
      Source = CGImageSourceGetSource(*v8);
      v11 = CGImageMetadataPropertyCreate(*(Source + 16), *(Source + 24), *(Source + 32));
      if (v11)
      {
        v12 = v11;
        PropertyValueFromTag = CreatePropertyValueFromTag(v9);
        if (PropertyValueFromTag)
        {
          v14 = PropertyValueFromTag;
          v15 = CGImageMetadataValueCreate(PropertyValueFromTag);
          if (v15)
          {
            v16 = v15;
            SyncTagQualifiersToMetadataValue(v9, v15);
            v17 = *(Source + 40);
            if (v17 == 4)
            {
              CGImageMetadataValueSetIsAlternate(v16, 1);
            }

            else if (v17 == 5)
            {
              CGImageMetadataValueSetIsAlternateText(v16, 1);
            }

            CGImageMetadataPropertySetValue(v12, v16);
            CFArrayAppendValue(Mutable, v12);
            CFRelease(v16);
          }

          CFRelease(v14);
        }

        CFRelease(v12);
      }

      ++v8;
      --v5;
    }

    while (v5);
  }

  if (v6)
  {
    free(v6);
  }

  if (v7)
  {
    free(v7);
  }

  return Mutable;
}

uint64_t GetTagTypeForMetadataValue(uint64_t a1)
{
  Value = CGImageMetadataValueGetValue(a1);
  v3 = CFGetTypeID(Value);
  if (v3 == CFStringGetTypeID())
  {
    return 1;
  }

  v5 = CFGetTypeID(Value);
  if (v5 == CFArrayGetTypeID())
  {
    if (CGImageMetadataValueIsAlternateText(a1))
    {
      return 5;
    }

    else if (CGImageMetadataValueIsAlternate(a1))
    {
      return 4;
    }

    else
    {
      return 3;
    }
  }

  else
  {
    v6 = CFGetTypeID(Value);
    if (v6 == CFBagGetTypeID())
    {
      return 2;
    }

    else
    {
      v7 = CFGetTypeID(Value);
      if (v7 == CFDictionaryGetTypeID())
      {
        return 6;
      }

      else
      {
        return 0xFFFFFFFFLL;
      }
    }
  }
}

CFStringRef CreateTagValueFromMetadataValue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  TagTypeForMetadataValue = GetTagTypeForMetadataValue(a3);
  Value = CGImageMetadataValueGetValue(a3);
  result = 0;
  if (TagTypeForMetadataValue > 2)
  {
    if ((TagTypeForMetadataValue - 3) < 3)
    {
      Count = CFArrayGetCount(Value);
      v8 = CFGetAllocator(Value);
      result = CFArrayCreateMutable(v8, Count, MEMORY[0x1E695E9C0]);
      if (Count < 1)
      {
        return result;
      }

      theArray = result;
      v9 = 0;
      v10 = *MEMORY[0x1E695E480];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(Value, v9);
        if (ValueAtIndex)
        {
          v12 = ValueAtIndex;
          v13 = CFGetTypeID(ValueAtIndex);
          if (v13 == CGImageMetadataValueGetTypeID())
          {
            v14 = GetTagTypeForMetadataValue(v12);
            NamespaceURI = CGImageMetadataValueGetNamespaceURI(v12);
            v16 = (NamespaceURI ? NamespaceURI : a1);
            SuggestedNamespacePrefix = CGImageMetadataValueGetSuggestedNamespacePrefix(v12);
            v18 = (SuggestedNamespacePrefix ? SuggestedNamespacePrefix : a2);
            v19 = CFStringCreateWithFormat(v10, 0, @"[%ld]", v9);
            if (v19)
            {
              v20 = v19;
              TagValueFromMetadataValue = CreateTagValueFromMetadataValue(v16, v18, v12);
              if (TagValueFromMetadataValue)
              {
                v22 = TagValueFromMetadataValue;
                v23 = CGImageMetadataTagCreate(v16, v18, v20, v14, TagValueFromMetadataValue);
                if (v23)
                {
                  v24 = v23;
                  SyncMetadataValueQualifiersToTag(v12, v23);
                  CFArrayAppendValue(theArray, v24);
                  CFRelease(v24);
                }

                CFRelease(v22);
              }

              CFRelease(v20);
            }
          }
        }

        ++v9;
      }

      while (Count != v9);
      return theArray;
    }

    if (TagTypeForMetadataValue != 6)
    {
      return result;
    }

    v44 = CFDictionaryGetCount(Value);
    theArray = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v45 = malloc_type_calloc(8uLL, v44, 0x6004044C4A2DFuLL);
    v46 = malloc_type_calloc(8uLL, v44, 0x2004093837F09uLL);
    v26 = v46;
    v62 = v45;
    if (v45 && v46)
    {
      CFDictionaryGetKeysAndValues(Value, v45, v46);
      if (v44 >= 1)
      {
        v47 = v45;
        v48 = v26;
        do
        {
          v49 = *v48;
          if (*v48)
          {
            v50 = *v47;
            v51 = CFGetTypeID(*v48);
            if (v51 == CGImageMetadataValueGetTypeID())
            {
              v52 = GetTagTypeForMetadataValue(v49);
              v53 = CGImageMetadataValueGetNamespaceURI(v49);
              v54 = (v53 ? v53 : a1);
              v55 = CGImageMetadataValueGetSuggestedNamespacePrefix(v49);
              v56 = (v55 ? v55 : a2);
              v57 = CreateTagValueFromMetadataValue(v54, v56, v49);
              if (v57)
              {
                v58 = v57;
                v59 = CGImageMetadataTagCreate(v54, v56, v50, v52, v57);
                if (v59)
                {
                  v60 = v59;
                  SyncMetadataValueQualifiersToTag(v49, v59);
                  CFDictionarySetValue(theArray, v50, v60);
                  CFRelease(v60);
                }

                CFRelease(v58);
              }
            }
          }

          ++v48;
          ++v47;
          --v44;
        }

        while (v44);
      }
    }

    else if (!v45)
    {
      goto LABEL_66;
    }

    free(v62);
LABEL_66:
    if (!v26)
    {
      return theArray;
    }

LABEL_67:
    free(v26);
    return theArray;
  }

  if (TagTypeForMetadataValue != 1)
  {
    if (TagTypeForMetadataValue != 2)
    {
      return result;
    }

    v25 = MEMORY[0x186600600](Value);
    v26 = malloc_type_calloc(8uLL, v25, 0x2004093837F09uLL);
    v27 = CFGetAllocator(Value);
    Mutable = CFArrayCreateMutable(v27, v25, MEMORY[0x1E695E9C0]);
    if (!v26)
    {
      return 0;
    }

    theArray = Mutable;
    CFBagGetValues(Value, v26);
    if (v25 >= 1)
    {
      v29 = 0;
      v30 = *MEMORY[0x1E695E480];
      do
      {
        v31 = v26[v29];
        if (v31)
        {
          v32 = CFGetTypeID(v26[v29]);
          if (v32 == CGImageMetadataValueGetTypeID())
          {
            v33 = GetTagTypeForMetadataValue(v31);
            v34 = CGImageMetadataValueGetNamespaceURI(v31);
            v35 = (v34 ? v34 : a1);
            v36 = CGImageMetadataValueGetSuggestedNamespacePrefix(v31);
            v37 = (v36 ? v36 : a2);
            v38 = CFStringCreateWithFormat(v30, 0, @"[%ld]", v29);
            if (v38)
            {
              v39 = v38;
              v40 = CreateTagValueFromMetadataValue(v35, v37, v31);
              if (v40)
              {
                v41 = v40;
                v42 = CGImageMetadataTagCreate(v35, v37, v39, v33, v40);
                if (v42)
                {
                  v43 = v42;
                  SyncMetadataValueQualifiersToTag(v31, v42);
                  CFArrayAppendValue(theArray, v43);
                  CFRelease(v43);
                }

                CFRelease(v41);
              }

              CFRelease(v39);
            }
          }
        }

        ++v29;
      }

      while (v25 != v29);
    }

    goto LABEL_67;
  }

  v61 = CFGetAllocator(Value);

  return CFStringCreateCopy(v61, Value);
}