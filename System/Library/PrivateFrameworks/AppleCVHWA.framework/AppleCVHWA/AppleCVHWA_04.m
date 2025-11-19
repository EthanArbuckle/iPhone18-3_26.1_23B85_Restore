void sub_1E5429B50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, char a22)
{
  sub_1E541B3D8(&a19);
  if (__p)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1E5429BEC(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v5 = (a1 + 152);
  v4 = *(a1 + 152);
  v7 = (a1 + 176);
  v6 = *(a1 + 176);
  if (v6 >= v4 && *(a2 + 24) != 0)
  {
    if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwDesgenUtils.h", 56, "(full_desc_max_data.offset < full_desc_min_data.offset || config.maxNumberOfKeypoints == 0) && Full desc maxima offset should be lower than Full desc minima offset.", 166, &unk_1E549A011, 0, sub_1E548FDE0))
    {
      goto LABEL_188;
    }

    v4 = *v5;
    v6 = *v7;
  }

  if (v4 != *(v3 + 180) + v6 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwDesgenUtils.h", 60, "full_desc_min_data.offset == full_desc_max_data.offset + full_desc_max_data.max_size && Full desc maxima and Full desc minima should be contiguous in memory", 158, &unk_1E549A011, 0, sub_1E548FDE0))
  {
LABEL_188:
    abort();
  }

  v164 = 0;
  v165 = 0;
  v166 = 0;
  v9 = *(v3 + 184);
  v10 = *(v3 + 160);
  if (v10 + v9)
  {
    sub_1E5421990(&v164, (v10 + v9));
    v11 = v165;
    if (v164 != v165)
    {
      v12 = v165 - v164 - 8;
      if (v12 >= 0x18)
      {
        v15 = (v12 >> 3) + 1;
        v13 = v15 & 0x3FFFFFFFFFFFFFFCLL;
        v14 = v164 + 8 * (v15 & 0x3FFFFFFFFFFFFFFCLL);
        v16 = xmmword_1E5491CC0;
        v17 = (v164 + 16);
        v18 = vdupq_n_s64(2uLL);
        v19 = vdupq_n_s64(4uLL);
        v20 = v15 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v17[-1] = v16;
          *v17 = vaddq_s64(v16, v18);
          v16 = vaddq_s64(v16, v19);
          v17 += 2;
          v20 -= 4;
        }

        while (v20);
        if (v15 == v13)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v13 = 0;
        v14 = v164;
      }

      do
      {
        *v14++ = v13++;
      }

      while (v14 != v11);
    }
  }

LABEL_17:
  if (*(v3 + 20) != 2 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwIspDataHandler.h", 297, "FlowType::kFlow2 == flow_ && Only valid in flow2", 50, &unk_1E549A011, 0, sub_1E548FDE0) || (*(v3 + 385) & 1) == 0 && (*(v3 + 386) & 1) == 0 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwIspDataHandler.h", 299, "(full_descriptor_output_enabled_ || short_descriptor_output_enabled_) && Only valid when full desc enabled or short desc enabled", 130, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    goto LABEL_188;
  }

  if ((*(v3 + 387) & 1) == 0)
  {
    v21 = *(v3 + 192);
    if (*(v3 + 600))
    {
      *(v3 + 288) = v21;
      *(v3 + 280) = *(v3 + 176);
      *(v3 + 284) = *(v3 + 184);
      *(v7 + 1) = 0;
      *(v7 + 2) = 0;
      *v7 = 0;
    }

    else
    {
      v22 = *(v3 + 168);
      v23 = *(v3 + 184);
      v24 = *(v3 + 160);
      *(v3 + 288) = v21;
      *(v3 + 280) = *(v3 + 176);
      *(v3 + 284) = v24 + v23;
      *(v5 + 1) = 0u;
      *(v5 + 2) = 0u;
      *v5 = 0u;
      if (v24)
      {
        memcpy((v21 + 28 * v23), v22, 28 * v24);
      }
    }
  }

  if (*(a2 + 77) == 1)
  {
    v160 = *(v3 + 288);
    v25 = *(v3 + 284);
    v26 = *(v3 + 168);
    v27 = *(v3 + 160);
    v28 = *(a2 + 32);
    v29 = *(a2 + 34);
    v30 = *(a2 + 24);
    v32 = *a2;
    v31 = *(a2 + 4);
    v33 = *(a2 + 36);
    if ((v28 == 1 && v29 == 1 || !sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/Hardware/include/VIO/Hardware/KeyPointAndDescriptorGeneratorUtils.h", 64, "(num_buckets_x == 1 && num_buckets_y == 1) && num_buckets x and y should be 1, other settings are currently not supported", 123, &unk_1E549A011, 0, sub_1E548FDE0)) && (v33 || !sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/Hardware/include/VIO/Hardware/KeyPointAndDescriptorGeneratorUtils.h", 65, "num_buckets_scale >= 1 && num of buckets scale should be >= 1", 63, &unk_1E549A011, 0, sub_1E548FDE0)))
    {
      v34 = v27 + v25;
      if (v34 == (v165 - v164) >> 3 || !sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/Hardware/include/VIO/Hardware/KeyPointAndDescriptorGeneratorUtils.h", 68, "(kp_desc_size + kp_desc_size_min) == kp_idx.size() && total kp_desc_size and kp_idx size should match", 103, &unk_1E549A011, 0, sub_1E548FDE0))
      {
        v156 = v32;
        v157 = v29;
        v35 = v29 * v28;
        v36 = v33 * (v29 * v28);
        __p = 0;
        v168 = 0;
        v169 = 0;
        p_p = &__p;
        v171 = 0;
        if (v36)
        {
          if ((v36 & 0x80000000) == 0)
          {
            operator new();
          }

          sub_1E5415338();
        }

        v162 = v36;
        v158 = v3;
        if (v34)
        {
          v37 = 0;
          v38 = 8 * v34;
          v39 = v31 / v157;
          do
          {
            v40 = *(v164 + v37);
            v41 = v160;
            if (v40 < v25)
            {
              v42 = 0;
            }

            else
            {
              v41 = v26;
              v42 = v25;
            }

            v43 = v41 + 28 * (v40 - v42);
            v46 = *(v43 + 16);
            v45 = (v43 + 16);
            v44 = v46;
            v47 = vcvtms_s32_f32(((v46 & 0x3FFFF) / (v156 / v28)) * 0.015625) + vcvtms_s32_f32(((HIDWORD(v46) & 0x7FFFF) / v39) * 0.015625) * v28;
            if (v47)
            {
              if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/Hardware/include/VIO/Hardware/KeyPointAndDescriptorGeneratorUtils.h", 97, "bin_index == 0 && bin index should always be 0", 48, &unk_1E549A011, 0, sub_1E548FDE0))
              {
                goto LABEL_188;
              }

              v44 = *v45;
              v40 = *(v164 + v37);
            }

            v48 = vcvts_n_f32_u64((v44 >> 23), 4uLL) * 0.25;
            if (v48 > (v33 - 1))
            {
              v48 = (v33 - 1);
            }

            *&p_p = (v45[1] & 0x7FFF);
            HIDWORD(p_p) = v40;
            sub_1E541AC90(__p + 24 * (v47 + v35 * vcvtms_s32_f32(v48)), &p_p);
            v37 += 8;
          }

          while (v38 != v37);
        }

        v165 = v164;
        v161 = v30 / v162;
        if (v161 * v162 > (v166 - v164) >> 3)
        {
          if (!((v161 * v162) >> 61))
          {
            operator new();
          }

          sub_1E5415338();
        }

        v49 = 0;
LABEL_54:
        v50 = *(__p + 3 * v49);
        v51 = *(__p + 3 * v49 + 1);
        if ((v51 - v50) >> 3 >= v161)
        {
          v52 = v161;
        }

        else
        {
          v52 = (v51 - v50) >> 3;
        }

        v53 = &v50[2 * v52];
        if (v53 == v51)
        {
          goto LABEL_58;
        }

        while (1)
        {
          v66 = (v51 - v50) >> 3;
          if (v66 < 2)
          {
            goto LABEL_58;
          }

          if (v66 == 3)
          {
            v107 = v50[2];
            v108 = *v50;
            v109 = *(v51 - 2);
            if (v107 <= *v50)
            {
              if (v109 > v107)
              {
                v50[2] = v109;
                *(v51 - 2) = v107;
                v122 = *(v50 + 3);
                v50[3] = *(v51 - 1);
                *(v51 - 1) = v122;
                v123 = v50[2];
                v124 = *v50;
                if (v123 > *v50)
                {
                  *v50 = v123;
                  v50[2] = v124;
                  v125 = *(v50 + 1);
                  v50[1] = v50[3];
                  *(v50 + 3) = v125;
                }
              }

              goto LABEL_58;
            }

            if (v109 <= v107)
            {
              *v50 = v107;
              v50[2] = v108;
              v126 = *(v50 + 1);
              v50[1] = v50[3];
              *(v50 + 3) = v126;
              v127 = *(v51 - 2);
              if (v127 > v108)
              {
                v50[2] = v127;
                *(v51 - 2) = v108;
                v50[3] = *(v51 - 1);
                *(v51 - 1) = v126;
              }

              goto LABEL_58;
            }

            *v50 = v109;
            *(v51 - 2) = v108;
LABEL_145:
            v112 = *(v50 + 1);
            v50[1] = *(v51 - 1);
            *(v51 - 1) = v112;
            goto LABEL_58;
          }

          if (v66 == 2)
          {
            v110 = *(v51 - 2);
            v111 = *v50;
            if (v110 <= *v50)
            {
              goto LABEL_58;
            }

            *v50 = v110;
            *(v51 - 2) = v111;
            goto LABEL_145;
          }

          if (v66 <= 7)
          {
            while (v50 != v51 - 2)
            {
              v113 = v50;
              v50 += 2;
              if (v113 != v51 && v50 != v51)
              {
                v114 = *v113;
                v115 = *v113;
                v116 = v50;
                v117 = v113;
                v118 = v50;
                do
                {
                  v119 = *v118;
                  v118 += 2;
                  v120 = v119;
                  if (v119 > v115)
                  {
                    v115 = v120;
                    v117 = v116;
                  }

                  v116 = v118;
                }

                while (v118 != v51);
                if (v117 != v113)
                {
                  *v113 = *v117;
                  *v117 = v114;
                  v121 = *(v113 + 1);
                  v113[1] = v117[1];
                  *(v117 + 1) = v121;
                }
              }
            }

            goto LABEL_58;
          }

          v67 = &v50[2 * ((v51 - v50) >> 4)];
          v68 = v51 - 2;
          v69 = *(v51 - 2);
          v70 = *v67;
          v71 = *v50;
          if (*v67 > *v50)
          {
            break;
          }

          if (v69 > v70)
          {
            *v67 = v69;
            *(v51 - 2) = v70;
            v73 = *(v67 + 1);
            v67[1] = *(v51 - 1);
            *(v51 - 1) = v73;
            v74 = *v50;
            if (*v67 > *v50)
            {
              *v50 = *v67;
              *v67 = v74;
              v75 = *(v50 + 1);
              v50[1] = v67[1];
              *(v67 + 1) = v75;
              v76 = 1;
              v77 = *v50;
              v78 = *v67;
              if (*v50 <= *v67)
              {
                goto LABEL_100;
              }

              goto LABEL_89;
            }

            goto LABEL_88;
          }

          v76 = 0;
          v77 = *v50;
          v78 = *v67;
          if (*v50 <= *v67)
          {
LABEL_100:
            v79 = v51 - 2;
            while (1)
            {
              v79 -= 2;
              if (v79 == v50)
              {
                break;
              }

              if (*v79 > v78)
              {
                *v50 = *v79;
                *v79 = v77;
                v89 = *(v50 + 1);
                v50[1] = v79[1];
                *(v79 + 1) = v89;
                if (v76)
                {
                  v76 = 2;
                }

                else
                {
                  v76 = 1;
                }

                v80 = v50 + 2;
                if (v50 + 2 < v79)
                {
                  goto LABEL_90;
                }

                goto LABEL_107;
              }
            }

            v94 = v50 + 2;
            if (v77 <= *v68)
            {
              if (v94 == v68)
              {
                goto LABEL_58;
              }

              while (1)
              {
                v95 = *v94;
                if (v77 > *v94)
                {
                  break;
                }

                v94 += 2;
                if (v94 == v68)
                {
                  goto LABEL_58;
                }
              }

              *v94 = *v68;
              *(v51 - 2) = v95;
              v99 = *(v94 + 1);
              v94[1] = *(v51 - 1);
              *(v51 - 1) = v99;
              v94 += 2;
            }

            if (v94 == v68)
            {
              goto LABEL_58;
            }

            while (1)
            {
              v100 = *v50;
              do
              {
                v101 = *v94;
                v94 += 2;
                v102 = v101;
              }

              while (v100 <= v101);
              v103 = v94 - 2;
              do
              {
                v104 = *(v68 - 2);
                v68 -= 2;
                v105 = v104;
              }

              while (v100 > v104);
              if (v103 >= v68)
              {
                break;
              }

              *(v94 - 2) = v105;
              *v68 = v102;
              v106 = *(v94 - 1);
              *(v94 - 1) = v68[1];
              *(v68 + 1) = v106;
            }

            v50 = v94 - 2;
            if (v103 > v53)
            {
              goto LABEL_58;
            }

            goto LABEL_138;
          }

LABEL_89:
          v79 = v51 - 2;
          v80 = v50 + 2;
          if (v50 + 2 >= v51 - 2)
          {
LABEL_107:
            v85 = v80;
          }

          else
          {
LABEL_90:
            v81 = v80;
            while (1)
            {
              v82 = *v67;
              do
              {
                v83 = *v81;
                v81 += 2;
                v84 = v83;
              }

              while (v83 > v82);
              v85 = v81 - 2;
              do
              {
                v86 = *(v79 - 2);
                v79 -= 2;
                v87 = v86;
              }

              while (v86 <= v82);
              if (v85 >= v79)
              {
                break;
              }

              *(v81 - 2) = v87;
              *v79 = v84;
              v88 = *(v81 - 1);
              *(v81 - 1) = v79[1];
              *(v79 + 1) = v88;
              ++v76;
              if (v85 == v67)
              {
                v67 = v79;
              }
            }
          }

          if (v85 != v67)
          {
            v90 = *v85;
            if (*v67 > *v85)
            {
              *v85 = *v67;
              *v67 = v90;
              v91 = *(v85 + 1);
              v85[1] = v67[1];
              *(v67 + 1) = v91;
              ++v76;
            }
          }

          if (v85 == v53)
          {
            goto LABEL_58;
          }

          if (!v76)
          {
            if (v85 <= v53)
            {
              v96 = v85 + 2;
              while (v96 != v51)
              {
                v97 = *v96;
                v98 = *(v96 - 2);
                v96 += 2;
                if (v97 > v98)
                {
                  goto LABEL_113;
                }
              }
            }

            else
            {
              while (v80 != v85)
              {
                v92 = *v80;
                v93 = *(v80 - 2);
                v80 += 2;
                if (v92 > v93)
                {
                  goto LABEL_113;
                }
              }
            }

LABEL_58:
            if (v52)
            {
              v54 = v165;
              v55 = 4;
              do
              {
                v56 = *(*(__p + 3 * v49) + v55);
                if (v54 < v166)
                {
                  *v54 = v56;
                  v54 += 8;
                }

                else
                {
                  v57 = v164;
                  v58 = v54 - v164;
                  v59 = (v54 - v164) >> 3;
                  v60 = v59 + 1;
                  if ((v59 + 1) >> 61)
                  {
                    sub_1E5415338();
                  }

                  v61 = v166 - v164;
                  if ((v166 - v164) >> 2 > v60)
                  {
                    v60 = v61 >> 2;
                  }

                  if (v61 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v62 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v62 = v60;
                  }

                  if (v62)
                  {
                    if (!(v62 >> 61))
                    {
                      operator new();
                    }

                    sub_1E53E5340();
                  }

                  v63 = v59;
                  v64 = (8 * v59);
                  v65 = &v64[-v63];
                  *v64 = v56;
                  v54 = (v64 + 1);
                  memcpy(v65, v57, v58);
                  v164 = v65;
                  v165 = v54;
                  v166 = 0;
                  if (v57)
                  {
                    operator delete(v57);
                  }
                }

                v165 = v54;
                v55 += 8;
                --v52;
              }

              while (v52);
            }

            if (++v49 == v162)
            {
              sub_1E541ADA8(&v164);
              v128 = __p;
              v3 = v158;
              if (__p)
              {
                v129 = v168;
                v130 = __p;
                if (v168 != __p)
                {
                  v131 = v168;
                  do
                  {
                    v133 = *(v131 - 3);
                    v131 -= 24;
                    v132 = v133;
                    if (v133)
                    {
                      *(v129 - 2) = v132;
                      operator delete(v132);
                    }

                    v129 = v131;
                  }

                  while (v131 != v128);
                  v130 = __p;
                }

                v168 = v128;
                operator delete(v130);
              }

              goto LABEL_170;
            }

            goto LABEL_54;
          }

LABEL_113:
          if (v85 <= v53)
          {
            v50 = v85 + 2;
          }

          else
          {
            v51 = v85;
          }

LABEL_138:
          if (v51 == v53)
          {
            goto LABEL_58;
          }
        }

        if (v69 <= v70)
        {
          *v50 = v70;
          *v67 = v71;
          v72 = *(v50 + 1);
          v50[1] = v67[1];
          *(v67 + 1) = v72;
          if (*v68 <= v71)
          {
            goto LABEL_88;
          }

          *v67 = *v68;
          *(v51 - 2) = v71;
          v67[1] = *(v51 - 1);
        }

        else
        {
          *v50 = v69;
          *(v51 - 2) = v71;
          v72 = *(v50 + 1);
          v50[1] = *(v51 - 1);
        }

        *(v51 - 1) = v72;
LABEL_88:
        v76 = 1;
        v77 = *v50;
        v78 = *v67;
        if (*v50 <= *v67)
        {
          goto LABEL_100;
        }

        goto LABEL_89;
      }
    }

    goto LABEL_188;
  }

LABEL_170:
  if (*(v3 + 20) != 2 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwIspDataHandler.h", 359, "FlowType::kFlow2 == flow_ && Only valid in flow2", 50, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    goto LABEL_188;
  }

  v163 = *(v3 + 288);
  v134 = *(v3 + 168);
  v135 = (*(v3 + 160) + *(v3 + 284));
  v137 = v164;
  v136 = v165;
  v138 = v165 - v164;
  v139 = (v165 - v164) >> 3;
  if (v139 > v135)
  {
    if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwIspDataHandler.h", 374, "final_num_keypoints <= (full_desc_data_.num_descriptors + full_desc_min_data_.num_descriptors)", 94, &unk_1E549A011, 0, sub_1E548FDE0))
    {
      goto LABEL_188;
    }
  }

  *(v3 + 144) = 0;
  if (v136 != v137)
  {
    if (v139 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1E5415338();
  }

  v144 = v164;
  if (v165 == v164)
  {
    *(*(v3 + 400) + 4) = v138 >> 3;
  }

  else
  {
    v159 = v138;
    v140 = 0;
    v141 = (v135 - 1);
    if (((v165 - v164) >> 3) <= 1)
    {
      v142 = 1;
    }

    else
    {
      v142 = (v165 - v164) >> 3;
    }

    v143 = 12;
    do
    {
      v145 = v144[v140];
      if (v145 > v141)
      {
        if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwIspDataHandler.h", 389, "idx[i] <= max_valid_idx", 23, &unk_1E549A011, 0, sub_1E548FDE0))
        {
          goto LABEL_188;
        }

        v144 = v164;
        v145 = *(v164 + v140);
      }

      v146 = *(v3 + 284);
      v147 = v163 + 28 * v145;
      v148 = v145 >= v146;
      v149 = v134 + 28 * (v145 - v146);
      if (v148)
      {
        v150 = v149;
      }

      else
      {
        v150 = v147;
      }

      v151 = v3;
      v152 = *(v150 + 16);
      *(v143 - 12) = vcvts_n_f32_u64(v152 & 0x3FFFF, 6uLL);
      *(v143 - 8) = vcvts_n_f32_u64(HIDWORD(v152) & 0x7FFFF, 6uLL);
      v153 = pow(1.41421356, vcvts_n_f32_u64((v152 >> 23), 4uLL));
      v154 = (v152 >> 52) * 3.14159265 * 0.0078125;
      *&v153 = v153;
      v155 = v152 >> 63;
      v3 = v151;
      *(v143 + 4) = v155;
      *&v154 = v154;
      *(v143 - 4) = LODWORD(v154);
      *v143 = LODWORD(v153);
      *(v143 + 8) = (*(v150 + 24) & 0x7FFF);
      ++v140;
      v143 += 24;
    }

    while (v142 != v140);
    *(*(v151 + 400) + 4) = v159 >> 3;
    operator delete(0);
  }

  if (v164)
  {
    v165 = v164;
    operator delete(v164);
  }
}

void sub_1E542AB20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, char a22)
{
  sub_1E541B3D8(&a19);
  if (__p)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

_BYTE *sub_1E542ABBC(_BYTE *result)
{
  v1 = result;
  if (result[20] != 2 && (result = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwIspDataHandler.h", 297, "FlowType::kFlow2 == flow_ && Only valid in flow2", 50, &unk_1E549A011, 0, sub_1E548FDE0), result) || (v1[385] & 1) == 0 && (v1[386] & 1) == 0 && (result = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwIspDataHandler.h", 299, "(full_descriptor_output_enabled_ || short_descriptor_output_enabled_) && Only valid when full desc enabled or short desc enabled", 130, &unk_1E549A011, 0, sub_1E548FDE0), result))
  {
    abort();
  }

  v2 = *(v1 + 24);
  if (*(v1 + 75))
  {
    *(v1 + 36) = v2;
    *(v1 + 70) = *(v1 + 44);
    *(v1 + 71) = *(v1 + 46);
    *(v1 + 23) = 0;
    *(v1 + 24) = 0;
    *(v1 + 22) = 0;
  }

  else
  {
    v3 = *(v1 + 21);
    v4 = *(v1 + 46);
    v5 = *(v1 + 40);
    *(v1 + 36) = v2;
    *(v1 + 70) = *(v1 + 44);
    *(v1 + 71) = v5 + v4;
    *(v1 + 168) = 0u;
    *(v1 + 152) = 0u;
    *(v1 + 184) = 0u;
    if (v5)
    {

      return memcpy((v2 + 76 * v4), v3, 76 * v5);
    }
  }

  return result;
}

void sub_1E542ACF8(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 20) != 2 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwIspDataHandler.h", 359, "FlowType::kFlow2 == flow_ && Only valid in flow2", 50, &unk_1E549A011, 0, sub_1E548FDE0) || (v28 = *(a1 + 168), v29 = *(a1 + 288), v4 = (*(a1 + 160) + *(a1 + 284)), v6 = *a2, v5 = a2[1], v7 = v5 - *a2, v7 >> 3 > v4) && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwIspDataHandler.h", 374, "final_num_keypoints <= (full_desc_data_.num_descriptors + full_desc_min_data_.num_descriptors)", 94, &unk_1E549A011, 0, sub_1E548FDE0))
  {
LABEL_28:
    abort();
  }

  v8 = *(a1 + 144);
  if (v5 != v6)
  {
    if ((v7 >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1E5415338();
  }

  v26 = a2[1] - *a2;
  if (v26)
  {
    v27 = v7;
    v9 = 0;
    v10 = (v4 - 1);
    v11 = v26 >> 3;
    if (v11 <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = v11;
    }

    v13 = 12;
    do
    {
      v17 = *(*a2 + 8 * v9);
      if (v17 > v10)
      {
        if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwIspDataHandler.h", 389, "idx[i] <= max_valid_idx", 23, &unk_1E549A011, 0, sub_1E548FDE0))
        {
          goto LABEL_28;
        }

        v17 = *(*a2 + 8 * v9);
      }

      v18 = *(a1 + 284);
      v19 = (v29 + 76 * v17);
      v20 = v17 >= v18;
      v21 = (v28 + 76 * (v17 - v18));
      if (v20)
      {
        v22 = v21;
      }

      else
      {
        v22 = v19;
      }

      v23 = *(v22 + 8);
      *(v13 - 12) = vcvts_n_f32_u64(v23 & 0x3FFFF, 6uLL);
      *(v13 - 8) = vcvts_n_f32_u64(HIDWORD(v23) & 0x7FFFF, 6uLL);
      v24 = pow(1.41421356, vcvts_n_f32_u64((v23 >> 23), 4uLL));
      *(v13 + 4) = (v23 & 0x8000000000000000) != 0;
      v25 = (v23 >> 52) * 3.14159265 * 0.0078125;
      *(v13 - 4) = v25;
      *v13 = v24;
      *(v13 + 8) = (*(v22 + 18) & 0x7FFF);
      if (*(a1 + 388) == 1)
      {
        sub_1E5436DE8(v22, v8);
      }

      else
      {
        v14 = *v22;
        v15 = v22[1];
        v16 = v22[3];
        v8[2] = v22[2];
        v8[3] = v16;
        *v8 = v14;
        v8[1] = v15;
      }

      ++v9;
      v8 += 4;
      v13 += 24;
    }

    while (v12 != v9);
    *(*(a1 + 400) + 4) = v27 >> 3;

    operator delete(0);
  }

  else
  {
    *(*(a1 + 400) + 4) = v7 >> 3;
  }
}

uint64_t sub_1E542B088(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  v3 = *(a2 + 68);
  v4.i64[1] = *(a1 + 56);
  v5.i64[1] = *(a2 + 56);
  v4.i64[0] = *(a1 + 4);
  v5.i64[0] = *(a2 + 4);
  v6 = vmovn_s32(vmvnq_s8(vceqq_s32(v4, v5)));
  v6.i16[0] = vmaxv_u16(v6);
  if (*(a1 + 12) == *(a2 + 12))
  {
    v7 = (*(a1 + 42) == *(a2 + 42)) & ~v6.i32[0];
  }

  else
  {
    v7 = 0;
  }

  if (v3 != 2)
  {
    v7 = 0;
  }

  v9 = *a1 == *a2 && *(a1 + 24) == v2;
  if (*(a1 + 68) == v3 && *(a1 + 78) == *(a2 + 78))
  {
    v11 = v7;
  }

  else
  {
    v11 = 0;
  }

  v13 = *(a1 + 52) == *(a2 + 52) && *(a1 + 38) == *(a2 + 38) && v9;
  if (*(a1 + 40) != *(a2 + 40) || *(a2 + 28) > v2)
  {
    return 0;
  }

  else
  {
    return v11 & v13;
  }
}

void sub_1E542B154(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  JUMPOUT(0x1E6928650);
}

void sub_1E542B250(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1E542B268(va);
  _Unwind_Resume(a1);
}

const void ***sub_1E542B268(const void ***result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    sub_1E53DE9AC(*v1);
    MEMORY[0x1E6928650](v1, 0x20C4093837F09);
    return v2;
  }

  return result;
}

void sub_1E542B2BC(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  *(a1 + 256) = 0;
  *(a1 + 100) = 0u;
  *(a1 + 116) = 0u;
  *(a1 + 132) = 0u;
  *(a1 + 148) = 0;
  *(a1 + 264) = 0xFFFFFFFFLL;
  v3 = *a3;
  *(a1 + 96) = v3;
  v4 = *(a2 + 24);
  v5 = *(a2 + 28);
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 200) = 3;
  *(a1 + 232) = 64;
  *(a1 + 236) = v4;
  *(a1 + 240) = ((v4 + 63) & 0xFFFFFFC0) + 64;
  *(a1 + 244) = v5;
  if (*(a3 + 5))
  {
    if (v3)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      sub_1E53F7C9C(&v7, "Error User Parameters conflict with valid ISP session and use_xpc_service");
      std::runtime_error::runtime_error(exception, &v7);
      exception->__vftable = &unk_1F5F0A608;
      __cxa_throw(exception, &unk_1F5F0AA48, std::runtime_error::~runtime_error);
    }
  }

  kdebug_trace();
  v8 = 0;
  sub_1E5423AE4();
}

void sub_1E542B988(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((v23 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else if (!v23)
  {
LABEL_6:
    sub_1E542BAC4((v21 + 144));
    sub_1E542393C((v21 + 136));
    sub_1E542B268((v21 + 128));
    sub_1E53F7E98(v21 + 104);
    _Unwind_Resume(a1);
  }

  __cxa_free_exception(v22);
  goto LABEL_6;
}

uint64_t **sub_1E542BAC4(uint64_t **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *v1;
    *v1 = 0;
    if (v3)
    {
      (v1[1])();
    }

    MEMORY[0x1E6928650](v1, 0xA0C40AFF93C70);
    return v2;
  }

  return result;
}

void sub_1E542BB24(uint64_t a1, _BYTE *a2)
{
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  *(a1 + 100) = 0u;
  *(a1 + 256) = 0;
  *(a1 + 116) = 0u;
  *(a1 + 132) = 0u;
  *(a1 + 148) = 0;
  *(a1 + 264) = 0xFFFFFFFFLL;
  *(a1 + 96) = *a2;
  kdebug_trace();
  v2 = 0;
  sub_1E5423AE4();
}

void sub_1E542BFE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((v23 & 1) == 0)
    {
LABEL_6:
      sub_1E542BAC4((v21 + 144));
      sub_1E542393C((v21 + 136));
      sub_1E542B268((v21 + 128));
      sub_1E53F7E98(v21 + 104);
      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v22);
  goto LABEL_6;
}

uint64_t sub_1E542C0A0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  if ((*(a1 + 96) & 1) != 0 || *(a1 + 104))
  {
    if (a5)
    {
      LOBYTE(v12) = 0;
      v13 = 0;
      goto LABEL_7;
    }

    *a4 = 0;
    LOBYTE(v12) = 0;
    v13 = 0;
    sub_1E5489954(*(a1 + 144), &v7);
    if (v8)
    {
      v12 = v7;
      v13 = 1;
      *a4 = v7;
LABEL_7:
      v9 = 0;
      v10 = 0;
      v11 = 0;
      operator new();
    }
  }

  return 0;
}

void sub_1E542C30C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_1E542C380(va);
  _Unwind_Resume(a1);
}

void sub_1E542C320(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, char a19)
{
  if (__p)
  {
    operator delete(__p);
    v20 = a16;
    if (!a16)
    {
LABEL_3:
      sub_1E542C380(&a19);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v20 = a16;
    if (!a16)
    {
      goto LABEL_3;
    }
  }

  operator delete(v20);
  sub_1E542C380(&a19);
  _Unwind_Resume(a1);
}

uint64_t sub_1E542C380(uint64_t result)
{
  if (*(result + 16) == 1)
  {
    v1 = *(result + 8);
    if (v1)
    {
      if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v2 = result;
        (v1->__on_zero_shared)(v1);
        std::__shared_weak_count::__release_weak(v1);
        return v2;
      }
    }
  }

  return result;
}

uint64_t sub_1E542C3FC(uint64_t a1, uint64_t a2, uint64_t a3, CVPixelBufferRef *a4, void *a5)
{
  if ((*(a1 + 96) & 1) != 0 || *(a1 + 104))
  {
    *a4 = 0;
    sub_1E5489954(*(a1 + 144), &pixelBuffer);
    if (v11 == 1)
    {
      v8 = pixelBuffer;
      *a4 = pixelBuffer;
      if (!*a5)
      {
        CVPixelBufferLockBaseAddress(v8, 1uLL);
        *(CVPixelBufferGetBaseAddress(*a4) + *(a1 + 232) + *(a1 + 256)) = *(a1 + 264);
        CVPixelBufferUnlockBaseAddress(*a4, 1uLL);
      }

      operator new();
    }
  }

  return 0;
}

void sub_1E542C6F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_1E542C380(va);
  _Unwind_Resume(a1);
}

void sub_1E542C710(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, char a20)
{
  if (__p)
  {
    operator delete(__p);
    v21 = a17;
    if (!a17)
    {
LABEL_3:
      sub_1E542C380(&a20);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v21 = a17;
    if (!a17)
    {
      goto LABEL_3;
    }
  }

  operator delete(v21);
  sub_1E542C380(&a20);
  _Unwind_Resume(a1);
}

uint64_t sub_1E542C770(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 96) != 1)
  {
    return 0;
  }

  v3 = *(a2 + 24);
  v8 = *(a2 + 8);
  v9 = v3;
  *&v9 = **(a1 + 136);
  if (*a1)
  {
    v4 = sub_1E548AD08(a1, &v8);
    *(a1 + 100) = v4;
    if (!v4)
    {
      return 1;
    }

    if (v4 != 33)
    {
      return 0;
    }

    if (*a1 || *(a1 + 8))
    {
      if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwGPWrapper.cpp", 507, "(daemon_client_.conn == nullptr && daemon_client_.client_id == 0) && Client should not try to reconnect when both connection and client ID  are non-zero", 156, &unk_1E549A011, 0, sub_1E548FDE0))
      {
        abort();
      }

      if (*a1)
      {
        return 1;
      }
    }
  }

  v5 = sub_1E548AAD8(a1);
  *(a1 + 100) = v5;
  if (v5)
  {
    return 0;
  }

  v7 = sub_1E548AD08(a1, &v8);
  *(a1 + 100) = v7;
  if (!v7)
  {
    return 1;
  }

  if (*a1)
  {
    xpc_connection_cancel(*a1);
    xpc_release(*a1);
    *a1 = 0;
  }

  result = 0;
  *(a1 + 8) = 0;
  return result;
}

uint64_t sub_1E542C8A4(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t *a5, char a6)
{
  if (*a4)
  {
    v6 = *a5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    return 4;
  }

  v24 = 0;
  v25 = 0;
  v26 = 0;
  v8 = *a2;
  v9 = *(a2 + 8);
  v10 = ((a3[1] - *a3) >> 3) + ((v9 - *a2) >> 3);
  if (v10)
  {
    if (!(v10 >> 61))
    {
      operator new();
    }

    sub_1E5415338();
  }

  if (v8 != v9)
  {
    if (*v8)
    {
      operator new();
    }

    return 4;
  }

  if (*a3 != a3[1])
  {
    if (**a3)
    {
      operator new();
    }

    return 4;
  }

  kdebug_trace();
  kdebug_trace();
  if (*(a1 + 96) != 1)
  {
    v15 = *(a1 + 104);
    if (!v15)
    {
      if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwGPWrapper.cpp", 657, "isp_ && Failed to instantiate an ISP driver plugin", 52, &unk_1E549A011, 0, sub_1E548FDE0))
      {
        abort();
      }

      v15 = *(a1 + 104);
    }

    if (sub_1E53DEE74(v15, *(a1 + 120), *a5, *a4, **(a1 + 136), &v24, 1u))
    {
      v7 = 0;
    }

    else
    {
      v7 = 3;
    }

    goto LABEL_31;
  }

  __p = 0;
  v22 = 0;
  v23 = 0;
  v11 = *a4;
  v20[0] = *a5;
  v20[1] = v11;
  v20[2] = **(a1 + 136);
  sub_1E542CDAC(&__p, 0, 0, 0);
  v12 = sub_1E548B310(a1, v20, a6, 1);
  *(a1 + 100) = v12;
  if (v12 >= 0x23)
  {
    v7 = 3;
    v13 = __p;
    if (!__p)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  v7 = dword_1E549211C[v12];
  v13 = __p;
  if (__p)
  {
LABEL_30:
    v22 = v13;
    operator delete(v13);
  }

LABEL_31:
  kdebug_trace();
  kdebug_trace();
  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }

  return v7;
}

void sub_1E542CD38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

char *sub_1E542CDAC(char **a1, char *__src, char *a3, unint64_t a4)
{
  v7 = a1[2];
  result = *a1;
  if (a4 > (v7 - result) >> 3)
  {
    if (result)
    {
      a1[1] = result;
      v9 = a4;
      operator delete(result);
      a4 = v9;
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v10 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v10 = a4;
      }

      v11 = v7 >= 0x7FFFFFFFFFFFFFF8;
      v12 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v11)
      {
        v12 = v10;
      }

      if (!(v12 >> 61))
      {
        operator new();
      }
    }

    sub_1E5415338();
  }

  v13 = a1[1];
  v14 = v13 - result;
  if (a4 <= (v13 - result) >> 3)
  {
    v17 = a3 - __src;
    if (a3 != __src)
    {
      v18 = result;
      memmove(result, __src, v17);
      result = v18;
    }

    a1[1] = &result[v17];
  }

  else
  {
    if (v13 != result)
    {
      result = memmove(result, __src, v13 - result);
      v13 = a1[1];
    }

    v15 = &__src[v14];
    v16 = a3 - &__src[v14];
    if (v16)
    {
      result = memmove(v13, v15, v16);
    }

    a1[1] = &v13[v16];
  }

  return result;
}

void sub_1E542D064(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1E542393C(va);
  _Unwind_Resume(a1);
}

void sub_1E542D07C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1E542393C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1E542D090(uint64_t a1, int a2)
{
  if (a2)
  {
    if ((atomic_load_explicit(&qword_1ECFDF168, memory_order_acquire) & 1) == 0)
    {
      if (__cxa_guard_acquire(&qword_1ECFDF168))
      {
        operator new();
      }
    }

    v3 = *qword_1ECFDF160;
    v4 = *(qword_1ECFDF160 + 8);
    if (*qword_1ECFDF160 != v4)
    {
      while (*v3 != a1)
      {
        v3 += 16;
        if (v3 == v4)
        {
          return 0;
        }
      }
    }
  }

  else
  {
    if ((atomic_load_explicit(&qword_1ECFDF178, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECFDF178))
    {
      operator new();
    }

    v3 = *qword_1ECFDF170;
    v4 = *(qword_1ECFDF170 + 8);
    if (*qword_1ECFDF170 != v4)
    {
      while (*v3 != a1)
      {
        v3 += 16;
        if (v3 == v4)
        {
          return 0;
        }
      }
    }
  }

  if (v3 == v4)
  {
    return 0;
  }

  else
  {
    return **(v3 + 8);
  }
}

void sub_1E542D308(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_guard_abort(&qword_1ECFDF178);
  sub_1E542D460(va);
  _Unwind_Resume(a1);
}

void sub_1E542D32C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1E542D460(va);
  _Unwind_Resume(a1);
}

void sub_1E542D340(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    v5 = *a2;
    *(a2 + 1) = 0;
    *v4 = v5;
    v6 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v6;
    return;
  }

  v7 = *a1;
  v8 = v4 - *a1;
  v9 = v8 >> 4;
  v10 = (v8 >> 4) + 1;
  if (v10 >> 60)
  {
    sub_1E5415338();
  }

  v11 = v3 - v7;
  if (v11 >> 3 > v10)
  {
    v10 = v11 >> 3;
  }

  if (v11 >= 0x7FFFFFFFFFFFFFF0)
  {
    v12 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    if (!(v12 >> 60))
    {
      operator new();
    }

    sub_1E53E5340();
  }

  v13 = *a2;
  *(a2 + 1) = 0;
  *(16 * v9) = v13;
  v6 = 16 * v9 + 16;
  memcpy(0, v7, v8);
  *a1 = 0;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (!v7)
  {
    goto LABEL_3;
  }

  operator delete(v7);
  *(a1 + 8) = v6;
}

uint64_t sub_1E542D460(uint64_t result)
{
  if (*(result + 16) == 1)
  {
    v1 = *(result + 8);
    *(result + 8) = 0;
    if (v1)
    {
      v2 = result;
      CVPixelBufferUnlockBaseAddress(*v1, 0);
      CVPixelBufferRelease(*v1);
      MEMORY[0x1E6928650](v1, 0x20C4093837F09);
      return v2;
    }
  }

  return result;
}

uint64_t sub_1E542D4CC(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_1ECFDF178, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECFDF178))
  {
    operator new();
  }

  v2 = qword_1ECFDF170;
  v3 = *qword_1ECFDF170;
  v4 = *(qword_1ECFDF170 + 8);
  if (*qword_1ECFDF170 != v4)
  {
    while (*v3 != a1)
    {
      v3 += 2;
      if (v3 == v4)
      {
        goto LABEL_7;
      }
    }
  }

  if (v3 != v4)
  {
    goto LABEL_13;
  }

LABEL_7:
  if ((atomic_load_explicit(&qword_1ECFDF168, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1ECFDF168))
    {
      operator new();
    }
  }

  v2 = qword_1ECFDF160;
  v3 = *qword_1ECFDF160;
  v5 = *(qword_1ECFDF160 + 8);
  if (*qword_1ECFDF160 != v5)
  {
    while (*v3 != a1)
    {
      v3 += 2;
      if (v3 == v5)
      {
        return 0;
      }
    }
  }

  if (v3 != v5)
  {
LABEL_13:
    sub_1E542D64C(v2, v3);
    return 1;
  }

  return 0;
}

uint64_t sub_1E542D64C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (a2 + 16 == v4)
  {
    v6 = a2;
  }

  else
  {
    v5 = a2;
    do
    {
      v8 = *(v5 + 8);
      v9 = *(v5 + 16);
      *(v5 + 24) = 0;
      *v5 = v9;
      if (v8)
      {
        CVPixelBufferUnlockBaseAddress(*v8, 0);
        CVPixelBufferRelease(*v8);
        MEMORY[0x1E6928650](v8, 0x20C4093837F09);
      }

      v6 = v5 + 16;
      v7 = v5 + 32;
      v5 += 16;
    }

    while (v7 != v4);
    v4 = *(a1 + 8);
  }

  while (v4 != v6)
  {
    v10 = *(v4 - 8);
    *(v4 - 8) = 0;
    if (v10)
    {
      CVPixelBufferUnlockBaseAddress(*v10, 0);
      CVPixelBufferRelease(*v10);
      MEMORY[0x1E6928650](v10, 0x20C4093837F09);
    }

    v4 -= 16;
  }

  *(a1 + 8) = v6;
  return a2;
}

void sub_1E542D758(uint64_t a1, char a2)
{
  v28 = *MEMORY[0x1E69E9840];
  *(a1 + 72) = 0u;
  *(a1 + 32) = 0;
  *a1 = 0;
  *(a1 + 8) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 129) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 1612) = 256;
  *(a1 + 1616) = 0;
  *(a1 + 1620) = 0;
  *(a1 + 1628) = 0u;
  *(a1 + 1641) = 0;
  *(a1 + 1649) = 1;
  *(a1 + 1652) = 0;
  *(a1 + 1677) = 0;
  *(a1 + 1672) = 0;
  *(a1 + 1656) = 0u;
  *(a1 + 1685) = 1;
  *(a1 + 1688) = 0;
  *(a1 + 1708) = 0;
  *(a1 + 1713) = 0;
  *(a1 + 1692) = 0u;
  *(a1 + 1721) = 1;
  *(a1 + 1724) = 0;
  *(a1 + 1744) = 0;
  *(a1 + 1752) = 0;
  *(a1 + 1728) = 0u;
  *(a1 + 1760) = 0u;
  *(a1 + 1776) = 0u;
  *(a1 + 1792) = 256;
  *(a1 + 1796) = 0;
  *(a1 + 1816) = 0;
  *(a1 + 1821) = 0;
  *(a1 + 1800) = 0u;
  *(a1 + 1829) = 1;
  *(a1 + 1832) = 0;
  *(a1 + 1852) = 0;
  *(a1 + 1857) = 0;
  *(a1 + 1836) = 0u;
  *(a1 + 1865) = 1;
  *(a1 + 1868) = 0;
  *(a1 + 1888) = 0;
  *(a1 + 1893) = 0;
  *(a1 + 1872) = 0u;
  *(a1 + 1901) = 1;
  *(a1 + 1904) = 0;
  *(a1 + 1924) = 0;
  *(a1 + 1929) = 0;
  *(a1 + 1908) = 0u;
  *(a1 + 1937) = 1;
  *(a1 + 1940) = 0;
  *(a1 + 1944) = 0u;
  *(a1 + 1968) = 0;
  *(a1 + 1960) = 0;
  *(a1 + 1614) = 0;
  *(a1 + 1650) = 13;
  *(a1 + 1686) = 14;
  *(a1 + 1722) = 15;
  *(a1 + 1794) = 12;
  *(a1 + 1830) = 16;
  *(a1 + 1866) = 17;
  *(a1 + 1902) = 18;
  *(a1 + 1938) = 19;
  *(a1 + 2072) = 0;
  *(a1 + 2040) = 0u;
  *(a1 + 2056) = 0u;
  *(a1 + 2008) = 0u;
  *(a1 + 2024) = 0u;
  *(a1 + 1976) = 0u;
  *(a1 + 1992) = 0u;
  *(a1 + 2112) = 0;
  *(a1 + 2096) = 0u;
  *(a1 + 2080) = 0u;
  *(a1 + 2113) = a2;
  *(a1 + 2120) = 0;
  *(a1 + 2151) = 0;
  *(a1 + 2128) = 0;
  v3 = (a1 + 2152);
  v27 = 0;
  *__p = 0u;
  v26 = 0u;
  *(a1 + 2152) = 0u;
  *(a1 + 2168) = 0u;
  *(a1 + 2184) = 1065353216;
  v4 = sub_1E53E68D4(&v24, __p, 0);
  v5 = v4;
  v6 = *(a1 + 2160);
  if (v6)
  {
    v7 = vcnt_s8(v6);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      v8 = v4;
      if (v4 >= *&v6)
      {
        v8 = v4 % *&v6;
      }
    }

    else
    {
      v8 = (*&v6 - 1) & v4;
    }

    v9 = *(*v3 + 8 * v8);
    if (v9)
    {
      v10 = *v9;
      if (*v9)
      {
        v11 = BYTE7(v26);
        if ((SBYTE7(v26) & 0x80u) == 0)
        {
          v12 = BYTE7(v26);
        }

        else
        {
          v12 = __p[1];
        }

        if ((SBYTE7(v26) & 0x80u) == 0)
        {
          v13 = __p;
        }

        else
        {
          v13 = __p[0];
        }

        if (v7.u32[0] < 2uLL)
        {
          while (1)
          {
            v18 = v10[1];
            if (v18 == v5)
            {
              v19 = *(v10 + 39);
              v20 = v19;
              if (v19 < 0)
              {
                v19 = v10[3];
              }

              if (v19 == v12)
              {
                v21 = v20 >= 0 ? (v10 + 2) : v10[2];
                if (!memcmp(v21, v13, v12))
                {
                  goto LABEL_42;
                }
              }
            }

            else if ((v18 & (*&v6 - 1)) != v8)
            {
              goto LABEL_41;
            }

            v10 = *v10;
            if (!v10)
            {
              goto LABEL_41;
            }
          }
        }

        do
        {
          v14 = v10[1];
          if (v14 == v5)
          {
            v15 = *(v10 + 39);
            v16 = v15;
            if (v15 < 0)
            {
              v15 = v10[3];
            }

            if (v15 == v12)
            {
              v17 = v16 >= 0 ? (v10 + 2) : v10[2];
              if (!memcmp(v17, v13, v12))
              {
LABEL_42:
                if (v11 < 0)
                {
                  operator delete(__p[0]);
                }

                *(a1 + 2215) = 1;
                *(a1 + 2192) = 0;
                if (sub_1E544E18C((a1 + 24)))
                {
                  v22 = *(a1 + 24);
                  if (v22 > 8)
                  {
                    if ((v22 - 9) < 2)
                    {
                      operator new();
                    }

                    if (v22 == 11)
                    {
                      operator new();
                    }
                  }

                  else
                  {
                    if ((v22 - 5) < 2)
                    {
                      operator new();
                    }

                    if ((v22 - 7) < 2)
                    {
                      operator new();
                    }
                  }

                  exception = __cxa_allocate_exception(0x10uLL);
                  MEMORY[0x1E6928330](exception, "Non-LACC Platform");
                }

                else
                {
                  exception = __cxa_allocate_exception(0x10uLL);
                  MEMORY[0x1E6928330](exception, "Non-accelerated Platform");
                }

                __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
              }
            }
          }

          else
          {
            if (v14 >= *&v6)
            {
              v14 %= *&v6;
            }

            if (v14 != v8)
            {
              break;
            }
          }

          v10 = *v10;
        }

        while (v10);
      }
    }
  }

LABEL_41:
  operator new();
}

void sub_1E542E9B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CVPixelBufferRef **a10, CVPixelBufferRef **a11, char a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  __cxa_free_exception(v23);
  if (*(v20 + 2215) < 0)
  {
    operator delete(*(v20 + 2192));
  }

  sub_1E54339B0(v21);
  if (*(v20 + 2151) < 0)
  {
    operator delete(*(v20 + 2128));
  }

  sub_1E53F7E98(v20 + 2056);
  sub_1E542393C((v20 + 2008));
  sub_1E542393C((v20 + 2000));
  sub_1E542393C(a11);
  sub_1E542393C(a10);
  sub_1E5433720((v20 + 208));
  sub_1E5427A1C(v20 + 144);
  v25 = *(v20 + 96);
  if (v25)
  {
    *(v20 + 104) = v25;
    operator delete(v25);
    v26 = *v22;
    if (!*v22)
    {
LABEL_7:
      v27 = *(v20 + 32);
      *(v20 + 32) = 0;
      if (!v27)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v26 = *v22;
    if (!*v22)
    {
      goto LABEL_7;
    }
  }

  *(v20 + 80) = v26;
  operator delete(v26);
  v27 = *(v20 + 32);
  *(v20 + 32) = 0;
  if (!v27)
  {
LABEL_9:
    _Unwind_Resume(a1);
  }

LABEL_8:
  (*(*v27 + 8))(v27);
  goto LABEL_9;
}

uint64_t sub_1E542EB48(uint64_t a1)
{
  if (*(a1 + 2215) < 0)
  {
    operator delete(*(a1 + 2192));
  }

  v2 = *(a1 + 2168);
  if (v2)
  {
    do
    {
      v16 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v16;
    }

    while (v16);
  }

  v3 = *(a1 + 2152);
  *(a1 + 2152) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  if (*(a1 + 2151) < 0)
  {
    operator delete(*(a1 + 2128));
  }

  v4 = *(a1 + 2064);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(a1 + 2008);
  *(a1 + 2008) = 0;
  if (v5)
  {
    CVPixelBufferUnlockBaseAddress(*v5, 0);
    CVPixelBufferRelease(*v5);
    MEMORY[0x1E6928650](v5, 0x20C4093837F09);
  }

  v6 = *(a1 + 2000);
  *(a1 + 2000) = 0;
  if (v6)
  {
    CVPixelBufferUnlockBaseAddress(*v6, 0);
    CVPixelBufferRelease(*v6);
    MEMORY[0x1E6928650](v6, 0x20C4093837F09);
  }

  v7 = *(a1 + 1992);
  *(a1 + 1992) = 0;
  if (v7)
  {
    CVPixelBufferUnlockBaseAddress(*v7, 0);
    CVPixelBufferRelease(*v7);
    MEMORY[0x1E6928650](v7, 0x20C4093837F09);
  }

  v8 = *(a1 + 1984);
  *(a1 + 1984) = 0;
  if (v8)
  {
    CVPixelBufferUnlockBaseAddress(*v8, 0);
    CVPixelBufferRelease(*v8);
    MEMORY[0x1E6928650](v8, 0x20C4093837F09);
  }

  v9 = *(a1 + 208);
  *(a1 + 208) = 0;
  if (v9)
  {
    v10 = sub_1E54278C0(v9);
    MEMORY[0x1E6928640](v10, 64);
  }

  v11 = *(a1 + 200);
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  v12 = *(a1 + 96);
  if (v12)
  {
    *(a1 + 104) = v12;
    operator delete(v12);
  }

  v13 = *(a1 + 72);
  if (v13)
  {
    *(a1 + 80) = v13;
    operator delete(v13);
  }

  v14 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  return a1;
}

uint64_t sub_1E542ED9C(uint64_t a1, uint64_t a2)
{
  if (*a2 != 1)
  {
    return 4;
  }

  v3 = a1 + 2120;
  *(a1 + 2120) = 1;
  v4 = (a1 + 2128);
  if (a1 + 2120 != a2)
  {
    v5 = *(a2 + 31);
    if (*(a1 + 2151) < 0)
    {
      v7 = *(a2 + 16);
      if ((v5 & 0x80u) == 0)
      {
        v8 = (a2 + 8);
      }

      else
      {
        v8 = *(a2 + 8);
      }

      if ((v5 & 0x80u) == 0)
      {
        v9 = v5;
      }

      else
      {
        v9 = v7;
      }

      sub_1E53E6DF0(a1 + 2128, v8, v9);
    }

    else if ((v5 & 0x80) != 0)
    {
      sub_1E53E6D20((a1 + 2128), *(a2 + 8), *(a2 + 16));
    }

    else
    {
      v6 = *(a2 + 8);
      *(a1 + 2144) = *(a2 + 24);
      *v4 = v6;
    }
  }

  (*(**(a1 + 32) + 152))(*(a1 + 32), v3, a1 + 40);
  if (!*(a1 + 52))
  {
    return 4;
  }

  v10 = *(a1 + 40);
  *a1 = v10;
  v11 = *(a1 + 64) + v10;
  v12 = *(a1 + 68) + v11;
  *(a1 + 8) = v11;
  *(a1 + 12) = v12;
  LODWORD(v10) = *(a1 + 56) + v10;
  v13 = *(a1 + 60) + v10;
  *(a1 + 16) = v10;
  *(a1 + 20) = v13;
  if ((*(a1 + 2113) & 1) == 0 && !*(a1 + 2000))
  {
    sub_1E5423AE4();
  }

  v14 = (*(**(a1 + 32) + 72))(*(a1 + 32));
  *(a1 + 1936) = 1;
  *(a1 + 1956) = 128;
  *(a1 + 1960) = (v14 + 127) >> 7;
  *(a1 + 1964) = 0x8000000000080;
  if (!*(a1 + 2008))
  {
    sub_1E5423AE4();
  }

  v16 = *(a1 + 2113);
  *(a1 + 144) = v16;
  *(a1 + 2048) = *(a1 + 2040) + 0x80000;
  if (v16)
  {
    *(a1 + 160) = **(a1 + 1984);
    *(a1 + 152) = **(a1 + 1992);
    *(a1 + 168) = 0;
    *(a1 + 176) = **(a1 + 2008);
    if (!*(a1 + 208))
    {
      goto LABEL_40;
    }
  }

  else
  {
    sub_1E53DE2EC(1, &__dst);
    v17 = *&__dst.__pn_.__r_.__value_.__l.__data_;
    *&__dst.__pn_.__r_.__value_.__l.__data_ = 0uLL;
    v18 = *(a1 + 2064);
    *(a1 + 2056) = v17;
    if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v18->__on_zero_shared)(v18);
      std::__shared_weak_count::__release_weak(v18);
    }

    size = __dst.__pn_.__r_.__value_.__l.__size_;
    if (__dst.__pn_.__r_.__value_.__l.__size_ && !atomic_fetch_add((__dst.__pn_.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (size->__on_zero_shared)(size);
      std::__shared_weak_count::__release_weak(size);
    }

    v20 = *(a1 + 2056);
    if (!v20)
    {
      if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwGeneralProcessingAPI.cpp", 275, "isp_dev_.get() != nullptr && Failed to create an ISP device instance", 70, &unk_1E549A011, 0, sub_1E548FDE0))
      {
        abort();
      }

      v20 = *(a1 + 2056);
    }

    v21 = *(a1 + 2064);
    if (v21)
    {
      atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
    }

    v22 = *(a1 + 200);
    *(a1 + 192) = v20;
    *(a1 + 200) = v21;
    if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v22->__on_zero_shared)(v22);
      std::__shared_weak_count::__release_weak(v22);
    }

    *(a1 + 1976) = 0;
    if (!*(a1 + 208))
    {
LABEL_40:
      v23 = operator new(0x140uLL, 0x40uLL);
      sub_1E542BB24(v23, (a1 + 144));
    }
  }

  memset(&v37, 0, sizeof(v37));
  v24 = *(a1 + 2151);
  if (v24 >= 0)
  {
    v25 = v4;
  }

  else
  {
    v25 = *(a1 + 2128);
  }

  if (v24 < 0)
  {
    v24 = *(a1 + 2136);
  }

  sub_1E5433A1C(&v37, v25, &v25[v24]);
  v26 = std::__fs::filesystem::path::__filename(&v37);
  if (v26.__size_ >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1E53DF584();
  }

  if (v26.__size_ >= 0x17)
  {
    operator new();
  }

  *(&__dst.__pn_.__r_.__value_.__s + 23) = v26.__size_;
  if (v26.__size_)
  {
    memmove(&__dst, v26.__data_, v26.__size_);
  }

  __dst.__pn_.__r_.__value_.__s.__data_[v26.__size_] = 0;
  v27 = __dst.__pn_.__r_.__value_.__r.__words[0];
  v34 = __dst.__pn_.__r_.__value_.__r.__words[2];
  HIBYTE(v34) = __dst.__pn_.__r_.__value_.__s.__data_[19];
  v28 = SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_1E53E53CC(&v35, __dst.__pn_.__r_.__value_.__l.__data_, __dst.__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    v35 = *&__dst.__pn_.__r_.__value_.__l.__data_;
    LODWORD(v36) = v34;
    *(&v36 + 3) = *(&__dst.__pn_.__r_.__value_.__r.__words[2] + 3);
    HIBYTE(v36) = *(&__dst.__pn_.__r_.__value_.__s + 23);
  }

  v29 = (a1 + 2192);
  if (*(a1 + 2215) < 0)
  {
    operator delete(*v29);
  }

  *v29 = v35;
  *(a1 + 2208) = v36;
  HIBYTE(v36) = 0;
  LOBYTE(v35) = 0;
  if (v28 < 0)
  {
    operator delete(v27);
    v30 = *(a1 + 208);
    if ((SHIBYTE(v37.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_59;
    }
  }

  else
  {
    v30 = *(a1 + 208);
    if ((SHIBYTE(v37.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_59:
      __dst = v37;
      goto LABEL_62;
    }
  }

  sub_1E53E53CC(&__dst, v37.__pn_.__r_.__value_.__l.__data_, v37.__pn_.__r_.__value_.__l.__size_);
LABEL_62:
  if (*(v30 + 96) == 1)
  {
    v31 = sub_1E548AFB0(v30, &__dst);
    *(v30 + 100) = v31;
    v32 = v31 == 0;
    if (SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_64;
    }
  }

  else
  {
    v32 = 0;
    if (SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_64:
      operator delete(__dst.__pn_.__r_.__value_.__l.__data_);
      if (!v32)
      {
        goto LABEL_65;
      }

      goto LABEL_69;
    }
  }

  if (!v32)
  {
LABEL_65:
    result = 6;
    if (SHIBYTE(v37.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_70;
    }

    return result;
  }

LABEL_69:
  result = 0;
  *(a1 + 2216) = 0;
  if (SHIBYTE(v37.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_70:
    v33 = result;
    operator delete(v37.__pn_.__r_.__value_.__l.__data_);
    return v33;
  }

  return result;
}

void sub_1E542F42C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1E542F494(void *a1, const void *a2, size_t a3, unsigned int a4, unsigned int a5)
{
  if (!a2)
  {
    return 0;
  }

  v5 = *(a1 + 2);
  if (v5 > a4)
  {
    return 0;
  }

  if (v5 > a5 || *(a1 + 3) <= a4)
  {
    return 0;
  }

  if (a3)
  {
    v9 = a1[9];
    v8 = a1[10];
    v10 = a4 != a5;
    v11 = v9;
    if (a4 == a5)
    {
      if (v9 != v8)
      {
        v11 = a1[9];
        while (*v11 != a4)
        {
          v11 += 16;
          if (v11 == v8)
          {
            v11 = a1[10];
            break;
          }
        }
      }

      if (v11 != v8)
      {
        v10 = 1;
      }
    }

    else
    {
      if (v9 != v8)
      {
        v11 = a1[9];
        while (*v11 != a4)
        {
          v11 += 16;
          if (v11 == v8)
          {
            goto LABEL_24;
          }
        }
      }

      if (v11 != v8)
      {
        v11[12] = 1;
      }
    }

LABEL_24:
    v12 = a1[11];
    if (v8 >= v12)
    {
      v14 = v8 - v9;
      v15 = v14 >> 4;
      v16 = (v14 >> 4) + 1;
      if (v16 >> 60)
      {
        sub_1E5415338();
      }

      v17 = v12 - v9;
      if (v17 >> 3 > v16)
      {
        v16 = v17 >> 3;
      }

      if (v17 >= 0x7FFFFFFFFFFFFFF0)
      {
        v18 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v16;
      }

      v19 = a1;
      if (v18)
      {
        if (!(v18 >> 60))
        {
          operator new();
        }

        sub_1E53E5340();
      }

      v20 = a2;
      v21 = 16 * v15;
      *v21 = a4;
      *(v21 + 4) = a5;
      v22 = a5;
      v23 = a3;
      *(v21 + 8) = a3;
      *(v21 + 12) = v10;
      v13 = 16 * v15 + 16;
      v24 = (v21 - 16 * (v14 >> 4));
      memcpy(v24, v9, v14);
      v19[9] = v24;
      v19[10] = v13;
      v19[11] = 0;
      if (v9)
      {
        operator delete(v9);
      }

      a1 = v19;
      a3 = v23;
      a2 = v20;
      a5 = v22;
    }

    else
    {
      *v8 = a4;
      *(v8 + 1) = a5;
      *(v8 + 2) = a3;
      v13 = (v8 + 16);
      v8[12] = v10;
    }

    a1[10] = v13;
    memmove((a1[254] + a5 - *(a1 + 2)), a2, a3);
  }

  return 1;
}

uint64_t sub_1E542F6AC(void *a1, const void *a2, size_t a3, unsigned int a4, int a5)
{
  if (!a2 || *(a1 + 4) > a4 || *(a1 + 5) <= a4)
  {
    return 0;
  }

  if (a3)
  {
    v5 = a4 != a5;
    v6 = a1[13];
    v7 = a1[14];
    if (v6 >= v7)
    {
      v10 = a1[12];
      v11 = v6 - v10;
      v12 = v11 >> 4;
      v13 = (v11 >> 4) + 1;
      if (v13 >> 60)
      {
        sub_1E5415338();
      }

      v14 = v7 - v10;
      if (v14 >> 3 > v13)
      {
        v13 = v14 >> 3;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFF0)
      {
        v15 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v13;
      }

      v16 = a1;
      if (v15)
      {
        if (!(v15 >> 60))
        {
          operator new();
        }

        sub_1E53E5340();
      }

      v17 = a2;
      v18 = 16 * v12;
      v19 = a4;
      *v18 = a4;
      *(v18 + 4) = a5;
      v20 = a3;
      *(v18 + 8) = a3;
      *(v18 + 12) = v5;
      v8 = 16 * v12 + 16;
      v21 = (v18 - 16 * (v11 >> 4));
      memcpy(v21, v10, v11);
      v16[12] = v21;
      v16[13] = v8;
      v16[14] = 0;
      if (v10)
      {
        operator delete(v10);
      }

      a1 = v16;
      a3 = v20;
      a2 = v17;
      a4 = v19;
    }

    else
    {
      *v6 = a4;
      *(v6 + 4) = a5;
      *(v6 + 8) = a3;
      v8 = v6 + 16;
      *(v6 + 12) = v5;
    }

    a1[13] = v8;
    v22 = *(a1 + 32);
    v23 = *(a1 + 33);
    if (v22 >= a4)
    {
      v22 = a4;
    }

    if (v23 <= a3 + a4)
    {
      v23 = a3 + a4;
    }

    *(a1 + 32) = v22;
    *(a1 + 33) = v23;
    memmove((a1[255] + a4 - *(a1 + 4)), a2, a3);
  }

  return 1;
}

uint64_t sub_1E542F868(uint64_t a1, const void *a2, size_t *a3, int a4)
{
  kdebug_trace();
  if (!a2)
  {
    return 0;
  }

  v36 = a3;
  *(a1 + 2112) = 0;
  if ((atomic_load_explicit(&qword_1ECFDF178, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECFDF178))
  {
    operator new();
  }

  v8 = *qword_1ECFDF170;
  v9 = *(qword_1ECFDF170 + 8);
  if (*qword_1ECFDF170 != v9)
  {
    while (*v8 != a2)
    {
      v8 += 16;
      if (v8 == v9)
      {
        goto LABEL_9;
      }
    }
  }

  if (v8 == v9)
  {
LABEL_9:
    v10 = 1;
  }

  else
  {
    v10 = **(v8 + 8) == 0;
  }

  v11 = 2072;
  if (!a4)
  {
    v11 = 2073;
  }

  v35 = v11;
  *(a1 + v11) = v10;
  if (a4)
  {
    v12 = 2080;
  }

  else
  {
    v12 = 2088;
  }

  if (a4)
  {
    v13 = (a1 + 2080);
  }

  else
  {
    v13 = (a1 + 2088);
  }

  if (a4)
  {
    v14 = (a1 + 2088);
  }

  else
  {
    v14 = (a1 + 2080);
  }

  v15 = 2104;
  if (a4)
  {
    v15 = 2096;
  }

  v33 = v15;
  v34 = v13;
  if (a4)
  {
    v16 = (a1 + 2096);
  }

  else
  {
    v16 = (a1 + 2104);
  }

  if (a4)
  {
    v17 = (a1 + 2104);
  }

  else
  {
    v17 = (a1 + 2096);
  }

  if (!v10)
  {
    if ((atomic_load_explicit(&qword_1ECFDF178, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECFDF178))
    {
      operator new();
    }

    v23 = *qword_1ECFDF170;
    v24 = *(qword_1ECFDF170 + 8);
    v22 = v35;
    if (*qword_1ECFDF170 == v24)
    {
      v18 = v36;
    }

    else
    {
      v18 = v36;
      while (*v23 != a2)
      {
        v23 += 16;
        if (v23 == v24)
        {
          goto LABEL_44;
        }
      }
    }

    if (v23 == v24)
    {
LABEL_44:
      v25 = 0;
      v21 = 0;
    }

    else
    {
      v21 = 0;
      v25 = **(v23 + 8);
    }

    goto LABEL_61;
  }

  v18 = v36;
  if (*v13 == a2 && *v16 >= *v36)
  {
    v21 = 0;
    v22 = v35;
  }

  else
  {
    v19 = *v14;
    if (*v14 == a2 && (v20 = *v17, *v17 >= *v36))
    {
      if (*v13 == a2)
      {
        if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwGeneralProcessingAPI.cpp", 450, "(*counterpart_ptr != *dma_ptr) && Shouldn't be in this branch if dma_in_ptr_ == dma_out_ptr_", 94, &unk_1E549A011, 0, sub_1E548FDE0))
        {
          goto LABEL_80;
        }

        v19 = *v14;
        v20 = *v17;
      }

      v21 = 0;
      *(a1 + v12) = v19;
      *(a1 + v33) = v20;
      v26 = 2072;
      if (a4)
      {
        v26 = 2073;
      }

      v22 = v35;
      *(a1 + v35) = *(a1 + v26);
      *(a1 + 2112) = 0;
    }

    else
    {
      v21 = 1;
      v22 = v35;
    }
  }

  if ((atomic_load_explicit(&qword_1ECFDF168, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECFDF168))
  {
    operator new();
  }

  v27 = *qword_1ECFDF160;
  v28 = *(qword_1ECFDF160 + 8);
  if (*qword_1ECFDF160 != v28)
  {
    while (*v27 != a2)
    {
      v27 += 16;
      if (v27 == v28)
      {
        goto LABEL_60;
      }
    }
  }

  if (v27 != v28)
  {
    v25 = **(v27 + 8);
    if (v21)
    {
      goto LABEL_63;
    }

LABEL_61:
    if (!v25 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwGeneralProcessingAPI.cpp", 471, "(needs_alloc || tracked_cvpb != nullptr) && No CVPixelBuffer backing available", 80, &unk_1E549A011, 0, sub_1E548FDE0))
    {
      goto LABEL_80;
    }

    goto LABEL_63;
  }

LABEL_60:
  v25 = 0;
  if ((v21 & 1) == 0)
  {
    goto LABEL_61;
  }

LABEL_63:
  if (v21)
  {
    *(a1 + 2112) = 0;
    if (v25)
    {
      if (*(a1 + 2080) == *(a1 + 2088))
      {
        *v34 = 0;
        if (*(a1 + v22))
        {
LABEL_69:
          sub_1E542CF28();
        }

        goto LABEL_68;
      }

      CVPixelBufferRelease(v25);
    }

    if (*(a1 + v22))
    {
      goto LABEL_69;
    }

LABEL_68:
    if (!sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwGeneralProcessingAPI.cpp", 491, "needs_memcpy && needs_memcpy is false unexpectedly", 52, &unk_1E549A011, 0, sub_1E548FDE0))
    {
      goto LABEL_69;
    }

LABEL_80:
    abort();
  }

  *v34 = a2;
  *(a1 + v33) = *v18;
  if (*(a1 + v22) == 1)
  {
    BaseAddress = CVPixelBufferGetBaseAddress(v25);
    if (BaseAddress == a2)
    {
      v31 = BaseAddress;
      v32 = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwGeneralProcessingAPI.cpp", 523, "(base != buf) && Unnecessary memcpy, source == destination.", 61, &unk_1E549A011, 0, sub_1E548FDE0);
      BaseAddress = v31;
      if (v32)
      {
        goto LABEL_80;
      }
    }

    memcpy(BaseAddress, a2, *v18);
  }

  kdebug_trace();
  return 1;
}

void sub_1E542FE5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  __cxa_guard_abort(&qword_1ECFDF168);
  sub_1E542D460(va);
  _Unwind_Resume(a1);
}

void sub_1E542FEC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1E542D460(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1E542FEE4(uint64_t result, unsigned int a2, unsigned int a3)
{
  v4 = result;
  v5 = a2 - a3;
  if (a2 <= a3 && (result = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwGeneralProcessingAPI.cpp", 531, "(stack_size < stack_top) && Not enough space for accelerator stack frame", 74, &unk_1E549A011, 0, sub_1E548FDE0), result) || (*(v4 + 1776) = **(v4 + 2008), *(v4 + 1712) = 64, *(v4 + 1704) = 64, v6 = v5 & 0xFFFFFFC0, *(v4 + 136) = v6, *(v4 + 140) = a2, (a2 & 0x3F) != 0) && (result = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwGeneralProcessingAPI.cpp", 546, "!(stack_alloc_end_addr_ & 0x3f) && Non-aligned stack end", 58, &unk_1E549A011, 0, sub_1E548FDE0), result) || (v7 = a2 - v6, ((a2 - v6) & 0x3F) != 0) && (result = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwGeneralProcessingAPI.cpp", 547, "!(bufsize & 0x3f) && Non-aligned stack length", 47, &unk_1E549A011, 0, sub_1E548FDE0), result))
  {
    abort();
  }

  *(v4 + 1700) = v7;
  *(v4 + 1708) = (v7 + *(v4 + 1704) - 1) / *(v4 + 1704);
  *(v4 + 1716) = *(v4 + 136);
  *(v4 + 1684) = a2 != v6;
  return result;
}

uint64_t sub_1E5430030(uint64_t a1, void *__src, unsigned int a3, size_t __len)
{
  if (!__src && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwGeneralProcessingAPI.cpp", 561, "arg != nullptr && arg pointer is NULL", 39, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    goto LABEL_11;
  }

  v8 = *(a1 + 136);
  if (v8 > a3 || __len + a3 > *(a1 + 140))
  {
    return 0;
  }

  v10 = *(a1 + 2040);
  if (!v10)
  {
    if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwGeneralProcessingAPI.cpp", 569, "stack_buffer != nullptr && data pointer is NULL", 49, &unk_1E549A011, 0, sub_1E548FDE0))
    {
LABEL_11:
      abort();
    }
  }

  if (__len)
  {
    memmove((v10 + v8 + a3 - *(a1 + 136)), __src, __len);
  }

  return 1;
}

uint64_t sub_1E5430164(uint64_t a1, unsigned int a2, void *__dst, size_t __len)
{
  if (!__dst && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwGeneralProcessingAPI.cpp", 579, "data != nullptr && data pointer is NULL", 41, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  if (*(a1 + 136) > a2)
  {
    return 0;
  }

  if (__len + a2 > *(a1 + 140))
  {
    return 0;
  }

  if (__len)
  {
    memmove(__dst, (*(a1 + 2040) + a2), __len);
  }

  return 1;
}

__n128 sub_1E543023C(uint64_t a1, const void *a2, uint64_t a3)
{
  if (a2)
  {
    memmove((a1 + 228), a2, 0x80uLL);
  }

  else
  {
    if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwGeneralProcessingAPI.cpp", 603, "general_purpose && NULL pointer", 33, &unk_1E549A011, 0, sub_1E548FDE0))
    {
      abort();
    }

    *(a1 + 228) = MEMORY[0];
    v5 = MEMORY[0x50];
    *(a1 + 292) = MEMORY[0x40];
    *(a1 + 308) = v5;
    v6 = MEMORY[0x70];
    *(a1 + 324) = MEMORY[0x60];
    *(a1 + 340) = v6;
    *(a1 + 244) = MEMORY[0x10];
    v7 = MEMORY[0x30];
    *(a1 + 260) = MEMORY[0x20];
    *(a1 + 276) = v7;
  }

  v8 = *(a3 + 16);
  *(a1 + 360) = *a3;
  *(a1 + 376) = v8;
  v9 = *(a3 + 48);
  *(a1 + 392) = *(a3 + 32);
  *(a1 + 408) = v9;
  v10 = *(a3 + 80);
  *(a1 + 424) = *(a3 + 64);
  *(a1 + 440) = v10;
  v11 = *(a3 + 112);
  *(a1 + 456) = *(a3 + 96);
  *(a1 + 472) = v11;
  v12 = *(a3 + 144);
  *(a1 + 488) = *(a3 + 128);
  *(a1 + 504) = v12;
  v13 = *(a3 + 176);
  *(a1 + 520) = *(a3 + 160);
  *(a1 + 536) = v13;
  v14 = *(a3 + 208);
  *(a1 + 552) = *(a3 + 192);
  *(a1 + 568) = v14;
  v15 = *(a3 + 240);
  *(a1 + 584) = *(a3 + 224);
  *(a1 + 600) = v15;
  v16 = *(a3 + 272);
  *(a1 + 616) = *(a3 + 256);
  *(a1 + 632) = v16;
  v17 = *(a3 + 304);
  *(a1 + 648) = *(a3 + 288);
  *(a1 + 664) = v17;
  v18 = *(a3 + 336);
  *(a1 + 680) = *(a3 + 320);
  *(a1 + 696) = v18;
  v19 = *(a3 + 368);
  *(a1 + 712) = *(a3 + 352);
  *(a1 + 728) = v19;
  v20 = *(a3 + 400);
  *(a1 + 744) = *(a3 + 384);
  *(a1 + 760) = v20;
  v21 = *(a3 + 432);
  *(a1 + 776) = *(a3 + 416);
  *(a1 + 792) = v21;
  v22 = *(a3 + 464);
  *(a1 + 808) = *(a3 + 448);
  *(a1 + 824) = v22;
  v23 = *(a3 + 496);
  *(a1 + 840) = *(a3 + 480);
  *(a1 + 856) = v23;
  v24 = *(a3 + 528);
  *(a1 + 872) = *(a3 + 512);
  *(a1 + 888) = v24;
  v25 = *(a3 + 560);
  *(a1 + 904) = *(a3 + 544);
  *(a1 + 920) = v25;
  v26 = *(a3 + 592);
  *(a1 + 936) = *(a3 + 576);
  *(a1 + 952) = v26;
  v27 = *(a3 + 624);
  *(a1 + 968) = *(a3 + 608);
  *(a1 + 984) = v27;
  v28 = *(a3 + 656);
  *(a1 + 1000) = *(a3 + 640);
  *(a1 + 1016) = v28;
  v29 = *(a3 + 688);
  *(a1 + 1032) = *(a3 + 672);
  *(a1 + 1048) = v29;
  v30 = *(a3 + 720);
  *(a1 + 1064) = *(a3 + 704);
  *(a1 + 1080) = v30;
  v31 = *(a3 + 752);
  *(a1 + 1096) = *(a3 + 736);
  *(a1 + 1112) = v31;
  v32 = *(a3 + 784);
  *(a1 + 1128) = *(a3 + 768);
  *(a1 + 1144) = v32;
  v33 = *(a3 + 816);
  *(a1 + 1160) = *(a3 + 800);
  *(a1 + 1176) = v33;
  v34 = *(a3 + 848);
  *(a1 + 1192) = *(a3 + 832);
  *(a1 + 1208) = v34;
  v35 = *(a3 + 880);
  *(a1 + 1224) = *(a3 + 864);
  *(a1 + 1240) = v35;
  v36 = *(a3 + 912);
  *(a1 + 1256) = *(a3 + 896);
  *(a1 + 1272) = v36;
  v37 = *(a3 + 944);
  *(a1 + 1288) = *(a3 + 928);
  *(a1 + 1304) = v37;
  v38 = *(a3 + 976);
  *(a1 + 1320) = *(a3 + 960);
  *(a1 + 1336) = v38;
  result = *(a3 + 992);
  v40 = *(a3 + 1008);
  *(a1 + 1352) = result;
  *(a1 + 1368) = v40;
  return result;
}

uint64_t sub_1E543048C(uint64_t result, unint64_t a2, int a3)
{
  v5 = result;
  if (a2 >= 0x20)
  {
    result = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwGeneralProcessingAPI.cpp", 611, "(reg < lacc_config_.GRF.size()) && register number out of range.", 66, &unk_1E549A011, 0, sub_1E548FDE0);
    if (result)
    {
      abort();
    }
  }

  *(v5 + 4 * a2 + 228) = a3;
  return result;
}

void *sub_1E543050C(uint64_t a1, unint64_t a2, void *__src, unint64_t a4)
{
  if (!__src && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwGeneralProcessingAPI.cpp", 616, "val && NULL pointer", 21, &unk_1E549A011, 0, sub_1E548FDE0) || a2 >= 0x20 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwGeneralProcessingAPI.cpp", 617, "(reg < lacc_config_.VRF.size()) && register number out of range.", 66, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    goto LABEL_12;
  }

  if (!a4)
  {
    result = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwGeneralProcessingAPI.cpp", 618, "(n) && number of vector lanes cannot be 0", 43, &unk_1E549A011, 0, sub_1E548FDE0);
    if (!result)
    {
      return result;
    }

LABEL_12:
    abort();
  }

  if (a4 >= 9 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwGeneralProcessingAPI.cpp", 619, "(n <= 8) && number of vector lanes cannot exceed 8", 52, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    goto LABEL_12;
  }

  return memmove((a1 + 360 + 32 * a2), __src, 4 * a4);
}

void *sub_1E543067C(uint64_t a1, unint64_t a2, void *__src, unint64_t a4)
{
  if (!__src && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwGeneralProcessingAPI.cpp", 624, "val && NULL pointer", 21, &unk_1E549A011, 0, sub_1E548FDE0) || a2 >= 0x20 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwGeneralProcessingAPI.cpp", 625, "(reg < lacc_config_.VRF.size()) && register number out of range.", 66, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    goto LABEL_12;
  }

  if (!a4)
  {
    result = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwGeneralProcessingAPI.cpp", 626, "(n) && number of vector lanes cannot be 0", 43, &unk_1E549A011, 0, sub_1E548FDE0);
    if (!result)
    {
      return result;
    }

LABEL_12:
    abort();
  }

  if (a4 >= 5 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwGeneralProcessingAPI.cpp", 627, "(n <= 4) && number of vector lanes cannot exceed 4", 52, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    goto LABEL_12;
  }

  return memmove((a1 + 360 + 32 * a2), __src, 8 * a4);
}

void sub_1E54307EC(uint64_t a1)
{
  __p[13] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 208);
  v3 = localtime(v2 + 4);
  strftime(__p, 0x64uLL, "%F %T", v3);
  v4 = localtime(v2 + 6);
  strftime(__p, 0x64uLL, "%F %T", v4);
  v5 = localtime(v2 + 8);
  strftime(__p, 0x64uLL, "%F %T", v5);
  v6 = localtime(v2 + 10);
  strftime(__p, 0x64uLL, "%F %T", v6);
  sub_1E544C5E8(a1 + 216);
  if (*(a1 + 2216) == 1)
  {
    (*(**(a1 + 32) + 256))(*(a1 + 32), *(a1 + 2048));
  }

  operator new();
}

void sub_1E54309A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E5430ACC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    v15 = a1;
    operator delete(__p);
    a1 = v15;
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1E5430AEC(uint64_t *a1, int a2, int a3)
{
  if (!a3)
  {
    operator new();
  }

  kdebug_trace();
  if ((*a1 + 1) <= 1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwGeneralProcessingAPI.cpp", 702, "(lacc_phys_base_address > 0ull && lacc_phys_base_address != ~0ull) && Uninitialized platform base address", 107, &unk_1E549A011, 0, sub_1E548FDE0) || ((v6 = *(a1 + 4)) == 0 || *(a1 + 5) <= v6) && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwGeneralProcessingAPI.cpp", 704, "(dtcm_base_addr != 0ul && dtcm_top_addr > dtcm_base_addr) && Uninitialized platform data memory limits", 104, &unk_1E549A011, 0, sub_1E548FDE0) || ((v7 = *(a1 + 2)) == 0 || *(a1 + 3) <= v7) && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwGeneralProcessingAPI.cpp", 706, "(itcm_base_addr != 0ul && itcm_top_addr > itcm_base_addr) && Uninitialized platform instruction memory limits", 111, &unk_1E549A011, 0, sub_1E548FDE0))
  {
LABEL_357:
    abort();
  }

  *(a1 + 2216) = 0;
  v8 = *(a1 + 2113);
  if ((v8 & 1) == 0)
  {
    v10 = a1[9];
    v9 = a1[10];
    if (v10 != v9)
    {
      v11 = v10 + 8;
      v12 = 1;
      do
      {
        v13 = v11 - 8;
        v14 = *(v11 - 8);
        if ((*(v11 + 4) & 1) == 0)
        {
          v15 = *v11 + v14;
          if ((v12 & 1) == 0)
          {
            if (v14 >= *(a1 + 30))
            {
              v14 = *(a1 + 30);
            }

            if (*(a1 + 31) > v15)
            {
              v15 = *(a1 + 31);
            }
          }

          v12 = 0;
          *(a1 + 30) = v14;
          *(a1 + 31) = v15;
        }

        v11 += 16;
      }

      while (v13 + 16 != v9);
    }

    v17 = a1[12];
    v16 = a1[13];
    if (v17 != v16)
    {
      v18 = v17 + 8;
      v19 = 1;
      do
      {
        v20 = v18 - 8;
        v21 = *(v18 - 8);
        if ((*(v18 + 4) & 1) == 0)
        {
          v22 = *v18 + v21;
          if ((v19 & 1) == 0)
          {
            if (v21 >= *(a1 + 32))
            {
              v21 = *(a1 + 32);
            }

            if (*(a1 + 33) > v22)
            {
              v22 = *(a1 + 33);
            }
          }

          v19 = 0;
          *(a1 + 32) = v21;
          *(a1 + 33) = v22;
        }

        v18 += 16;
      }

      while (v20 + 16 != v16);
    }

    v24 = *(a1 + 30);
    v23 = *(a1 + 31);
    if (v24 >= v23)
    {
      *(a1 + 1612) = 0;
      v29 = *(a1 + 32);
      v28 = *(a1 + 33);
      if (v29 >= v28)
      {
        goto LABEL_35;
      }
    }

    else
    {
      a1[220] = *a1[250];
      *(a1 + 410) = 64;
      *(a1 + 408) = 64;
      v25 = v24 & 0xFFFFFFC0;
      v26 = (v23 + 63) & 0xFFFFFFC0;
      *(a1 + 30) = v25;
      *(a1 + 31) = v26;
      v27 = v26 - v25;
      *(a1 + 407) = v27;
      *(a1 + 409) = v27 >> 6;
      *(a1 + 411) = v25 - *(a1 + 2);
      *(a1 + 1612) = 1;
      v29 = *(a1 + 32);
      v28 = *(a1 + 33);
      if (v29 >= v28)
      {
LABEL_35:
        *(a1 + 1648) = 0;
        goto LABEL_36;
      }
    }

    *(a1 + 1648) = 1;
    a1[221] = *a1[251];
    *(a1 + 419) = 64;
    *(a1 + 417) = 64;
    v31 = v29 & 0xFFFFFFC0;
    v32 = (v28 + 63) & 0xFFFFFFC0;
    *(a1 + 32) = v31;
    *(a1 + 33) = v32;
    v33 = v32 - v31;
    *(a1 + 416) = v33;
    *(a1 + 418) = v33 >> 6;
    *(a1 + 420) = v31 - *(a1 + 4);
    if (*(a1 + 34))
    {
      goto LABEL_41;
    }

    goto LABEL_37;
  }

LABEL_36:
  if (*(a1 + 34))
  {
    goto LABEL_41;
  }

LABEL_37:
  if (!*(a1 + 35))
  {
    return 1;
  }

LABEL_41:
  v34 = *a1;
  if ((v8 & 1) == 0)
  {
    v35 = *(a1 + 32);
    v36 = *a1;
    if (*(a1 + 1612) == 1)
    {
      v37 = v34 + *(a1 + 30);
      if ((v37 < v34 + *(a1 + 2) || *(a1 + 31) > *(a1 + 3)) && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwGeneralProcessingAPI.cpp", 741, "(code_address >= (lacc_phys_base_address + itcm_base_addr) && itcm_range_max_ <= itcm_top_addr) && Accelerator code extends outside the ITCM range.", 149, &unk_1E549A011, 0, sub_1E548FDE0))
      {
        goto LABEL_357;
      }

      sub_1E544C548((a1 + 201), 0, v37, 1);
      v36 = *a1;
    }

    if (*(a1 + 1648) != 1)
    {
      v34 = v36;
      if (*(a1 + 1684) != 1)
      {
        goto LABEL_59;
      }

      goto LABEL_53;
    }

    if ((v34 + v35 < v36 + *(a1 + 4) || *(a1 + 33) > *(a1 + 5)) && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwGeneralProcessingAPI.cpp", 749, "(data_address >= (lacc_phys_base_address + dtcm_base_addr) && dtcm_range_max_ <= dtcm_top_addr) && Accelerator data extends outside the DTCM range.", 149, &unk_1E549A011, 0, sub_1E548FDE0))
    {
      goto LABEL_357;
    }

    sub_1E544C548((a1 + 201), 1u, v34 + v35, 1);
    v34 = *a1;
  }

  if (*(a1 + 1684) != 1)
  {
    goto LABEL_59;
  }

LABEL_53:
  v38 = *(a1 + 34);
  v39 = v34 + v38;
  if (v34 + v38 < *(a1 + 4) || (v40 = *(a1 + 35), v40 > *(a1 + 5)))
  {
    if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwGeneralProcessingAPI.cpp", 759, "(stack_address >= (dtcm_base_addr) && stack_alloc_end_addr_ <= dtcm_top_addr) && Accelerator stack extends outside of DTCM range.", 131, &unk_1E549A011, 0, sub_1E548FDE0))
    {
      goto LABEL_357;
    }

    LODWORD(v38) = *(a1 + 34);
    v40 = *(a1 + 35);
  }

  v41 = *(a1 + 429);
  sub_1E544C548((a1 + 201), 2u, v39, 1);
  *(a1 + 896) = 257;
  *(a1 + 450) = HIDWORD(v39);
  v42 = v40 - v38 + 63;
  *(a1 + 451) = v39;
  *(a1 + 454) = v42 >> 6;
  *(a1 + 453) = 64;
  *(a1 + 455) = 64;
  *(a1 + 452) = v42 & 0xFFFFFFC0;
  *(a1 + 456) = v41;
  *(a1 + 898) = 8;
LABEL_59:
  if (*(a1 + 2072) == 1)
  {
    if ((atomic_load_explicit(&qword_1ECFDF168, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECFDF168))
    {
      operator new();
    }

    v43 = *qword_1ECFDF160;
    v44 = *(qword_1ECFDF160 + 8);
    if (*qword_1ECFDF160 != v44)
    {
      while (*v43 != a1[260])
      {
        v43 += 16;
        if (v43 == v44)
        {
          goto LABEL_77;
        }
      }
    }
  }

  else
  {
    if ((atomic_load_explicit(&qword_1ECFDF178, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECFDF178))
    {
      operator new();
    }

    v43 = *qword_1ECFDF170;
    v44 = *(qword_1ECFDF170 + 8);
    if (*qword_1ECFDF170 != v44)
    {
      while (*v43 != a1[260])
      {
        v43 += 16;
        if (v43 == v44)
        {
          goto LABEL_77;
        }
      }
    }
  }

  if (v43 == v44)
  {
LABEL_77:
    v45 = 0;
    if (*(a1 + 2073) != 1)
    {
      goto LABEL_72;
    }

LABEL_78:
    if ((atomic_load_explicit(&qword_1ECFDF168, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECFDF168))
    {
      operator new();
    }

    v46 = *qword_1ECFDF160;
    v47 = *(qword_1ECFDF160 + 8);
    if (*qword_1ECFDF160 != v47)
    {
      while (*v46 != a1[261])
      {
        v46 += 16;
        if (v46 == v47)
        {
          goto LABEL_86;
        }
      }
    }

    goto LABEL_83;
  }

  v45 = **(v43 + 8);
  if (*(a1 + 2073) == 1)
  {
    goto LABEL_78;
  }

LABEL_72:
  if ((atomic_load_explicit(&qword_1ECFDF178, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECFDF178))
  {
    operator new();
  }

  v46 = *qword_1ECFDF170;
  v47 = *(qword_1ECFDF170 + 8);
  if (*qword_1ECFDF170 != v47)
  {
    while (*v46 != a1[261])
    {
      v46 += 16;
      if (v46 == v47)
      {
        goto LABEL_86;
      }
    }
  }

LABEL_83:
  if (v46 == v47)
  {
LABEL_86:
    v48 = 0;
    if (!v45)
    {
      goto LABEL_88;
    }

    goto LABEL_87;
  }

  v48 = **(v46 + 8);
  if (v45)
  {
LABEL_87:
    CVPixelBufferGetDataSize(v45);
    Width = CVPixelBufferGetWidth(v45);
    Height = CVPixelBufferGetHeight(v45);
    a1[223] = v45;
    *(a1 + 438) = 0;
    *(a1 + 435) = Width;
    *(a1 + 436) = Height;
    *(a1 + 437) = Width;
    *(a1 + 434) = Height * Width;
    sub_1E544C548((a1 + 201), 3u, *a1, 0);
  }

LABEL_88:
  if (v48)
  {
    CVPixelBufferGetDataSize(v48);
    v51 = CVPixelBufferGetWidth(v48);
    CVPixelBufferGetHeight(v48);
    v52 = *a1;
    v53 = (v51 + *(a1 + 526) - 1) / v51;
    *(a1 + 914) = 1;
    *(a1 + 459) = HIDWORD(v52);
    *(a1 + 460) = v52;
    *(a1 + 463) = v53;
    *(a1 + 462) = v51;
    *(a1 + 464) = v51;
    *(a1 + 461) = v53 * v51;
    *(a1 + 465) = 0;
    *(a1 + 916) = 8;
  }

  *(a1 + 377) = a2 & 0xFFFFF;
  *(a1 + 346) = a3 & 0xFFFFF;
  v54 = sub_1E542D090(a1[260], *(a1 + 2072));
  v55 = sub_1E542D090(a1[261], *(a1 + 2073));
  if (!(v54 | v55))
  {
    v56 = 0;
    v57 = 0;
    v59 = *(a1 + 1648);
    if (v59 == 1)
    {
      goto LABEL_102;
    }

    goto LABEL_99;
  }

  v56 = 2;
  if (v54 == v55)
  {
    v57 = 2;
    v59 = *(a1 + 1648);
    if (v59 == 1)
    {
      goto LABEL_102;
    }

LABEL_99:
    if (*(a1 + 1684) != 1)
    {
      if (*(a1 + 1720) != 1)
      {
        v63 = a1 + 224;
        if (*(a1 + 1792) != 1)
        {
          if (*(a1 + 1828) != 1)
          {
            if (*(a1 + 1864) != 1)
            {
              if (*(a1 + 1900) == 1)
              {
                v62 = 0;
                if ((*(a1 + 1901) & 1) == 0)
                {
                  v67 = 0;
                  v64 = 0;
                  v66 = 0;
                  goto LABEL_208;
                }

                v68 = 1;
                v66 = 0;
                v64 = 0;
                v67 = 0;
              }

              else
              {
                v62 = 0;
                v68 = 0;
                v66 = 0;
                v64 = 0;
                v67 = 0;
              }

LABEL_169:
              *(a1 + 216) = 1;
              v69 = a1 + 27;
              if (*(a1 + 1612) == 1)
              {
                goto LABEL_170;
              }

LABEL_209:
              *(a1 + 218) = 0;
              *(a1 + 378) = 0;
              *(a1 + 379) = 0;
              *(a1 + 380) = 0;
              if (v64)
              {
                goto LABEL_174;
              }

LABEL_210:
              v78 = (a1 + 1524);
              *(a1 + 222) = 0;
              *(a1 + 390) = 0;
              *(a1 + 391) = 0;
              *(a1 + 392) = 0;
              if (v59)
              {
                goto LABEL_178;
              }

LABEL_211:
              *(a1 + 219) = v59;
              *v78 = vrev64_s32(0);
              *(a1 + 383) = 0;
              if (v66)
              {
                goto LABEL_182;
              }

LABEL_212:
              *(a1 + 223) = 0;
              *(a1 + 393) = v66;
              *(a1 + 394) = 0;
              *(a1 + 395) = 0;
              if (v62)
              {
                goto LABEL_186;
              }

              goto LABEL_213;
            }

            v62 = 0;
            v64 = 0;
            v66 = 0;
            v60 = *(a1 + 1865);
            v61 = v60 ^ 1;
            v67 = 1;
            v68 = *(a1 + 1900);
            if ((v68 & 1) == 0)
            {
              goto LABEL_155;
            }

            goto LABEL_165;
          }

          v62 = 0;
          v64 = 0;
          v60 = *(a1 + 1829);
LABEL_163:
          v61 = v60 ^ 1;
          v66 = 1;
          if ((a1[233] & 1) == 0)
          {
            goto LABEL_164;
          }

          goto LABEL_132;
        }

        v62 = 0;
        v60 = *(a1 + 1793);
        goto LABEL_130;
      }

      v62 = 0;
      v60 = *(a1 + 1721);
      v61 = v60 ^ 1;
      v63 = a1 + 224;
      if ((a1[224] & 1) == 0)
      {
        goto LABEL_146;
      }

      goto LABEL_106;
    }

    v60 = *(a1 + 1685);
    v61 = v60;
LABEL_110:
    v65 = v61;
    v61 = v60 ^ 1;
    v62 = 1;
    v60 = v65;
    if (a1[215])
    {
      goto LABEL_116;
    }

LABEL_105:
    v63 = a1 + 224;
    if (a1[224])
    {
      goto LABEL_106;
    }

    goto LABEL_146;
  }

  v57 = 2 * (v54 != 0);
  if (v54)
  {
    v58 = 3;
  }

  else
  {
    v58 = 2;
  }

  if (v55)
  {
    v56 = v58;
  }

  else
  {
    v56 = 0;
  }

  v59 = *(a1 + 1648);
  if (v59 != 1)
  {
    goto LABEL_99;
  }

LABEL_102:
  v62 = *(a1 + 1684);
  if (v62)
  {
    v61 = 0;
    v60 = *(a1 + 1685);
    if ((*(a1 + 1649) & 1) == 0)
    {
      goto LABEL_110;
    }

    v62 = 1;
    if ((a1[215] & 1) == 0)
    {
      goto LABEL_105;
    }
  }

  else
  {
    v61 = *(a1 + 1649) ^ 1;
    v60 = *(a1 + 1649);
    if ((a1[215] & 1) == 0)
    {
      goto LABEL_105;
    }
  }

LABEL_116:
  if (v60)
  {
    v60 = *(a1 + 1721);
    if (v61)
    {
      v61 = v60 ^ 1;
      v63 = a1 + 224;
      if (a1[224])
      {
        goto LABEL_106;
      }
    }

    else
    {
      v61 = 0;
      v63 = a1 + 224;
      if (a1[224])
      {
        goto LABEL_106;
      }
    }

LABEL_146:
    v64 = 0;
    if ((*(a1 + 1828) & 1) == 0)
    {
      goto LABEL_131;
    }

    goto LABEL_147;
  }

  if ((v61 & 1) == 0)
  {
    v61 = 0;
    v60 = 0;
    v63 = a1 + 224;
    v64 = *(a1 + 1792);
    if (*(a1 + 1828))
    {
      goto LABEL_147;
    }

LABEL_131:
    v66 = 0;
    if (a1[233])
    {
      goto LABEL_132;
    }

LABEL_164:
    v67 = 0;
    v68 = *(a1 + 1900);
    if (v68)
    {
      goto LABEL_165;
    }

    goto LABEL_155;
  }

  v61 = *(a1 + 1721) ^ 1;
  v60 = 0;
  v63 = a1 + 224;
  if ((a1[224] & 1) == 0)
  {
    goto LABEL_146;
  }

LABEL_106:
  if ((v60 & 1) == 0)
  {
    if (v61)
    {
      v61 = *(a1 + 1793) ^ 1;
      v64 = 1;
      v60 = 0;
      if (*(a1 + 1828))
      {
        goto LABEL_147;
      }
    }

    else
    {
      v61 = 0;
      v60 = 0;
      v64 = 1;
      if (*(a1 + 1828))
      {
        goto LABEL_147;
      }
    }

    goto LABEL_131;
  }

  v60 = *(a1 + 1793);
  if (v61)
  {
LABEL_130:
    v61 = v60 ^ 1;
    v64 = 1;
    if ((*(a1 + 1828) & 1) == 0)
    {
      goto LABEL_131;
    }

    goto LABEL_147;
  }

  v61 = 0;
  v64 = 1;
  if ((*(a1 + 1828) & 1) == 0)
  {
    goto LABEL_131;
  }

LABEL_147:
  if ((v60 & 1) == 0)
  {
    if ((v61 & 1) == 0)
    {
      v61 = 0;
      v60 = 0;
      v67 = *(a1 + 1864);
      v66 = 1;
      v68 = *(a1 + 1900);
      if (v68)
      {
        goto LABEL_165;
      }

      goto LABEL_155;
    }

    v61 = *(a1 + 1829) ^ 1;
    v66 = 1;
    v60 = 0;
    if ((a1[233] & 1) == 0)
    {
      goto LABEL_164;
    }

    goto LABEL_132;
  }

  v60 = *(a1 + 1829);
  if (v61)
  {
    goto LABEL_163;
  }

  v61 = 0;
  v66 = 1;
  if ((a1[233] & 1) == 0)
  {
    goto LABEL_164;
  }

LABEL_132:
  if ((v60 & 1) == 0)
  {
    if ((v61 & 1) == 0)
    {
      v61 = 0;
      v60 = 0;
      v67 = 1;
      v68 = *(a1 + 1900);
      if (v68)
      {
        goto LABEL_165;
      }

      goto LABEL_155;
    }

    v61 = *(a1 + 1865) ^ 1;
    v67 = 1;
    v60 = 0;
    v68 = *(a1 + 1900);
    if ((v68 & 1) == 0)
    {
      goto LABEL_155;
    }

LABEL_165:
    if (v60)
    {
      v60 = v61 | *(a1 + 1901);
      if (v61 & 1) == 0 || (*(a1 + 1901))
      {
        goto LABEL_168;
      }
    }

    else if (v61 & 1) == 0 || (*(a1 + 1901))
    {
      v68 = 1;
      *(a1 + 216) = 2;
      v69 = a1 + 27;
      if (*(a1 + 1612) != 1)
      {
        goto LABEL_209;
      }

      goto LABEL_170;
    }

LABEL_208:
    v68 = 1;
    *(a1 + 216) = 3;
    v69 = a1 + 27;
    if (*(a1 + 1612) != 1)
    {
      goto LABEL_209;
    }

    goto LABEL_170;
  }

  v60 = *(a1 + 1865);
  if ((v61 & 1) == 0)
  {
    v61 = 0;
    v67 = 1;
    v68 = *(a1 + 1900);
    if ((v68 & 1) == 0)
    {
      goto LABEL_155;
    }

    goto LABEL_165;
  }

  v61 = v60 ^ 1;
  v67 = 1;
  v68 = *(a1 + 1900);
  if (v68)
  {
    goto LABEL_165;
  }

LABEL_155:
  if (v61)
  {
    v68 = 0;
    if (v60)
    {
      goto LABEL_169;
    }

    *(a1 + 216) = 3;
    v69 = a1 + 27;
    if (*(a1 + 1612) != 1)
    {
      goto LABEL_209;
    }

    goto LABEL_170;
  }

LABEL_168:
  if (v60)
  {
    goto LABEL_169;
  }

  *(a1 + 216) = 2;
  v69 = a1 + 27;
  if (*(a1 + 1612) != 1)
  {
    goto LABEL_209;
  }

LABEL_170:
  if (*(a1 + 1613))
  {
    v70 = 1;
  }

  else
  {
    v70 = 2;
  }

  v71 = *(a1 + 406);
  v72 = *(a1 + 405);
  v73 = *(a1 + 407);
  *(a1 + 218) = v70;
  *(a1 + 378) = v71;
  *(a1 + 379) = v72;
  *(a1 + 380) = v73;
  if ((v64 & 1) == 0)
  {
    goto LABEL_210;
  }

LABEL_174:
  if (*(a1 + 1793))
  {
    v74 = 1;
  }

  else
  {
    v74 = 2;
  }

  v75 = *(a1 + 451);
  v76 = *(a1 + 450);
  v77 = *(a1 + 452);
  v78 = (a1 + 1524);
  *(a1 + 222) = v74;
  *(a1 + 390) = v75;
  *(a1 + 391) = v76;
  *(a1 + 392) = v77;
  if (!v59)
  {
    goto LABEL_211;
  }

LABEL_178:
  if (*(a1 + 1649))
  {
    v79 = 1;
  }

  else
  {
    v79 = 2;
  }

  v80 = a1[207];
  v81 = *(a1 + 416);
  *(a1 + 219) = v79;
  *v78 = vrev64_s32(v80);
  *(a1 + 383) = v81;
  if (!v66)
  {
    goto LABEL_212;
  }

LABEL_182:
  if (*(a1 + 1829))
  {
    v82 = 1;
  }

  else
  {
    v82 = 2;
  }

  v83 = *(a1 + 460);
  v84 = *(a1 + 459);
  v85 = *(a1 + 461);
  *(a1 + 223) = v82;
  *(a1 + 393) = v83;
  *(a1 + 394) = v84;
  *(a1 + 395) = v85;
  if (v62)
  {
LABEL_186:
    if (*(a1 + 1685))
    {
      v86 = 1;
    }

    else
    {
      v86 = 2;
    }

    v87 = *(a1 + 424);
    v88 = *(a1 + 423);
    v89 = *(a1 + 425);
    *(a1 + 220) = v86;
    *(a1 + 384) = v87;
    *(a1 + 385) = v88;
    *(a1 + 386) = v89;
    if (v67)
    {
      goto LABEL_190;
    }

LABEL_214:
    v90 = 0;
    v91 = 0;
    v92 = 0;
    v93 = 0;
    goto LABEL_215;
  }

LABEL_213:
  *(a1 + 220) = 0;
  *(a1 + 384) = v62;
  *(a1 + 385) = 0;
  *(a1 + 386) = 0;
  if ((v67 & 1) == 0)
  {
    goto LABEL_214;
  }

LABEL_190:
  if (*(a1 + 1865))
  {
    v90 = 1;
  }

  else
  {
    v90 = 2;
  }

  v91 = *(a1 + 469);
  v92 = *(a1 + 468);
  v93 = *(a1 + 470);
LABEL_215:
  *(a1 + 224) = v90;
  *(a1 + 396) = v91;
  *(a1 + 397) = v92;
  *(a1 + 398) = v93;
  if (*(a1 + 1720) == 1)
  {
    if (*(a1 + 1721))
    {
      v94 = 1;
    }

    else
    {
      v94 = 2;
    }

    v95 = a1[216];
    v96 = *(a1 + 434);
    *(a1 + 221) = v94;
    v78[3] = vrev64_s32(v95);
    *(a1 + 389) = v96;
    if (!v68)
    {
      goto LABEL_220;
    }
  }

  else
  {
    *(a1 + 221) = 0;
    v78[3] = vrev64_s32(0);
    *(a1 + 389) = 0;
    if (!v68)
    {
LABEL_220:
      v97 = 0;
      v98 = 0;
      v99 = 0;
      v100 = 0;
      goto LABEL_226;
    }
  }

  if (*(a1 + 1901))
  {
    v97 = 1;
  }

  else
  {
    v97 = 2;
  }

  v98 = *(a1 + 478);
  v99 = *(a1 + 477);
  v100 = *(a1 + 479);
LABEL_226:
  *(a1 + 225) = v97;
  *(a1 + 399) = v98;
  *(a1 + 400) = v99;
  *(a1 + 401) = v100;
  *(a1 + 347) = 0x80000000;
  a1[174] = 0;
  v101 = (*(*a1[4] + 160))(a1[4]);
  *(a1 + 351) = v101;
  *(a1 + 352) = v101;
  *(a1 + 374) = 0;
  *(a1 + 750) = 0;
  (*(*a1[4] + 176))(a1[4], a1[253], v69);
  v102 = a1[252] + *(a1[252] + 4);
  if (*(v102 + 144) <= *(a1 + 1614) && (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwPlatformInterface.h", 466, "(info.index < max_index) && Action buffer index out-of-range", 62, &unk_1E549A011, 0, sub_1E548FDE0) & 1) != 0)
  {
    goto LABEL_357;
  }

  if (*(a1 + 1612) == 1)
  {
    v103 = v102 + 84 * *(a1 + 1614);
    *(v103 + 152) &= 0x80000000;
    *(v103 + 166) = *(a1 + 808);
    *(v103 + 164) = *(a1 + 408);
    *(v103 + 162) = *(a1 + 409);
    *(v103 + 160) = *(a1 + 410);
    *(v103 + 156) = *(a1 + 411);
  }

  v104 = a1[252] + *(a1[252] + 4);
  v105 = *(a1 + 1794);
  if (*(v104 + 144) > v105)
  {
    if (*v63 != 1)
    {
      goto LABEL_237;
    }

LABEL_236:
    v106 = v104 + 84 * v105;
    *(v106 + 152) = *(v106 + 152) & 0x80000000 | 1;
    *(v106 + 166) = *(a1 + 898);
    *(v106 + 164) = *(a1 + 453);
    *(v106 + 162) = *(a1 + 454);
    *(v106 + 160) = *(a1 + 455);
    *(v106 + 156) = *(a1 + 456);
    goto LABEL_237;
  }

  if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwPlatformInterface.h", 466, "(info.index < max_index) && Action buffer index out-of-range", 62, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    goto LABEL_357;
  }

  if (*v63)
  {
    v105 = *(a1 + 1794);
    goto LABEL_236;
  }

LABEL_237:
  v107 = a1[252] + *(a1[252] + 4);
  v108 = *(a1 + 1650);
  if (*(v107 + 144) > v108)
  {
    if (*(a1 + 1648) != 1)
    {
      goto LABEL_244;
    }

LABEL_243:
    v109 = v107 + 84 * v108;
    *(v109 + 152) = *(v109 + 152) & 0x80000000 | 1;
    *(v109 + 166) = *(a1 + 826);
    *(v109 + 164) = *(a1 + 417);
    *(v109 + 162) = *(a1 + 418);
    *(v109 + 160) = *(a1 + 419);
    *(v109 + 156) = *(a1 + 420);
    goto LABEL_244;
  }

  if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwPlatformInterface.h", 466, "(info.index < max_index) && Action buffer index out-of-range", 62, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    goto LABEL_357;
  }

  if (a1[206])
  {
    v108 = *(a1 + 1650);
    goto LABEL_243;
  }

LABEL_244:
  if (*(v63 + 36) == 1 && !v56 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwGeneralProcessingAPI.cpp", 1260, "(!info2.enabled || outputBufferIDs[i] != 0) && invalid buffer ID configured", 77, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    goto LABEL_357;
  }

  v110 = a1[252] + *(a1[252] + 4);
  if (*(v110 + 144) <= *(v63 + 38))
  {
    if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwPlatformInterface.h", 466, "(info.index < max_index) && Action buffer index out-of-range", 62, &unk_1E549A011, 0, sub_1E548FDE0))
    {
      goto LABEL_357;
    }
  }

  if (*(v63 + 36) == 1)
  {
    v111 = v110 + 84 * *(v63 + 38);
    *(v111 + 152) = *(v111 + 152) & 0x80000000 | v56;
    *(v111 + 166) = *(v63 + 20);
    *(v111 + 164) = *(v63 + 14);
    *(v111 + 162) = *(v63 + 15);
    *(v111 + 160) = *(v63 + 16);
    *(v111 + 156) = *(v63 + 17);
  }

  v112 = a1[252] + *(a1[252] + 4);
  v113 = *(a1 + 1686);
  if (*(v112 + 144) > v113)
  {
    if (*(a1 + 1684) != 1)
    {
      goto LABEL_258;
    }

    goto LABEL_257;
  }

  if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwPlatformInterface.h", 466, "(info.index < max_index) && Action buffer index out-of-range", 62, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    goto LABEL_357;
  }

  if (*(a1 + 1684))
  {
    v113 = *(a1 + 1686);
LABEL_257:
    v114 = v112 + 84 * v113;
    *(v114 + 152) = *(v114 + 152) & 0x80000000 | 1;
    *(v114 + 166) = *(a1 + 844);
    *(v114 + 164) = *(a1 + 426);
    *(v114 + 162) = *(a1 + 427);
    *(v114 + 160) = *(a1 + 428);
    *(v114 + 156) = *(a1 + 429);
  }

LABEL_258:
  if (*(v63 + 72) == 1 && (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwGeneralProcessingAPI.cpp", 1260, "(!info2.enabled || outputBufferIDs[i] != 0) && invalid buffer ID configured", 77, &unk_1E549A011, 0, sub_1E548FDE0) & 1) != 0)
  {
    goto LABEL_357;
  }

  v115 = a1[252] + *(a1[252] + 4);
  if (*(v115 + 144) <= *(v63 + 74) && (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwPlatformInterface.h", 466, "(info.index < max_index) && Action buffer index out-of-range", 62, &unk_1E549A011, 0, sub_1E548FDE0) & 1) != 0)
  {
    goto LABEL_357;
  }

  if (*(v63 + 72) == 1)
  {
    v116 = v115 + 84 * *(v63 + 74);
    *(v116 + 152) &= 0x80000000;
    *(v116 + 166) = *(v63 + 38);
    *(v116 + 164) = *(v63 + 23);
    *(v116 + 162) = *(v63 + 24);
    *(v116 + 160) = *(v63 + 25);
    *(v116 + 156) = *(v63 + 26);
  }

  if (!v57 && (a1[215] & 1) != 0 && (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwGeneralProcessingAPI.cpp", 1253, "(i == 0 || !info.enabled || inputBufferIDs[i] != 0) && invalid buffer ID configured", 85, &unk_1E549A011, 0, sub_1E548FDE0) & 1) != 0)
  {
    goto LABEL_357;
  }

  v117 = a1[252] + *(a1[252] + 4);
  if (*(v117 + 144) <= *(a1 + 1722) && (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwPlatformInterface.h", 466, "(info.index < max_index) && Action buffer index out-of-range", 62, &unk_1E549A011, 0, sub_1E548FDE0) & 1) != 0)
  {
    goto LABEL_357;
  }

  if (*(a1 + 1720) == 1)
  {
    v118 = v117 + 84 * *(a1 + 1722);
    *(v118 + 152) = *(v118 + 152) & 0x80000000 | v57;
    *(v118 + 166) = *(a1 + 862);
    *(v118 + 164) = *(a1 + 435);
    *(v118 + 162) = *(a1 + 436);
    *(v118 + 160) = *(a1 + 437);
    *(v118 + 156) = *(a1 + 438);
  }

  if (*(v63 + 108) == 1 && (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwGeneralProcessingAPI.cpp", 1260, "(!info2.enabled || outputBufferIDs[i] != 0) && invalid buffer ID configured", 77, &unk_1E549A011, 0, sub_1E548FDE0) & 1) != 0)
  {
    goto LABEL_357;
  }

  v119 = a1[252] + *(a1[252] + 4);
  if (*(v119 + 144) <= *(v63 + 110) && (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwPlatformInterface.h", 466, "(info.index < max_index) && Action buffer index out-of-range", 62, &unk_1E549A011, 0, sub_1E548FDE0) & 1) != 0)
  {
    goto LABEL_357;
  }

  if (*(v63 + 108) == 1)
  {
    v120 = v119 + 84 * *(v63 + 110);
    *(v120 + 152) &= 0x80000000;
    *(v120 + 166) = *(v63 + 56);
    *(v120 + 164) = *(v63 + 32);
    *(v120 + 162) = *(v63 + 33);
    *(v120 + 160) = *(v63 + 34);
    *(v120 + 156) = *(v63 + 35);
  }

  v121 = a1[252] + *(a1[252] + 4);
  if (*(v121 + 144) <= *(a1 + 1938))
  {
    if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwPlatformInterface.h", 466, "(info.index < max_index) && Action buffer index out-of-range", 62, &unk_1E549A011, 0, sub_1E548FDE0))
    {
      goto LABEL_357;
    }
  }

  if (*(a1 + 1936) == 1)
  {
    v122 = v121 + 84 * *(a1 + 1938);
    *(v122 + 152) = *(v122 + 152) & 0x80000000 | 1;
    *(v122 + 166) = *(a1 + 970);
    *(v122 + 164) = *(a1 + 489);
    *(v122 + 162) = *(a1 + 490);
    *(v122 + 160) = *(a1 + 491);
    *(v122 + 156) = *(a1 + 492);
  }

  v151 = 0;
  v152 = 0;
  v153 = 0;
  v148 = 0;
  v149 = 0;
  v150 = 0;
  if ((*(a1 + 2113) & 1) == 0)
  {
    operator new();
  }

  if (v45)
  {
    operator new();
  }

  if (v48 && v45 != v48)
  {
    v123 = v148;
    v124 = v149 - v148;
    v125 = (v149 - v148) >> 3;
    v126 = v125 + 1;
    if ((v125 + 1) >> 61)
    {
      sub_1E5415338();
    }

    v127 = v150 - v148;
    if ((v150 - v148) >> 2 > v126)
    {
      v126 = v127 >> 2;
    }

    if (v127 >= 0x7FFFFFFFFFFFFFF8)
    {
      v128 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v128 = v126;
    }

    if (v128)
    {
      if (!(v128 >> 61))
      {
        operator new();
      }

      sub_1E53E5340();
    }

    *(8 * v125) = v48;
    memcpy(0, v123, v124);
    v148 = 0;
    v150 = 0;
    v149 = (8 * v125 + 8);
  }

  v129 = sub_1E542C8A4(a1[26], &v151, &v148, a1[248], a1[249], *(a1 + 2112));
  if ((v129 - 1) <= 1)
  {
    v130 = 0;
    *(a1 + 2112) = 0;
    if (v129 == 1)
    {
      if (!sub_1E542C770(a1[26], (a1 + 18)))
      {
        operator new();
      }

      if (*(a1 + 2151) < 0)
      {
        sub_1E53E53CC(__p, a1[266], a1[267]);
      }

      else
      {
        *__p = *(a1 + 133);
        v141 = a1[268];
      }

      v131 = a1[26];
      if (*(v131 + 96) != 1 || (v132 = sub_1E548AFB0(a1[26], __p), (*(v131 + 100) = v132) != 0))
      {
        operator new();
      }

      if (SHIBYTE(v141) < 0)
      {
        operator delete(__p[0]);
      }

      v130 = *(a1 + 2112);
    }

    v129 = sub_1E542C8A4(a1[26], &v151, &v148, a1[248], a1[249], v130 & 1);
  }

  if (v129)
  {
    *(a1 + 2112) = 0;
    operator new();
  }

  *(a1 + 2112) = 1;
  *(a1 + 2216) = 1;
  v139 = 0;
  (*(*a1[4] + 248))(a1[4], a1[256], 10052, __p, &v139);
  if (*(a1 + 2216) != 1)
  {
    HIDWORD(__p[0]) = -1;
    goto LABEL_323;
  }

  (*(*a1[4] + 248))(a1[4], a1[256], 10056, __p + 4, &v139);
  if ((a1[277] & 1) == 0)
  {
LABEL_323:
    LODWORD(__p[1]) = -1;
    goto LABEL_324;
  }

  (*(*a1[4] + 248))(a1[4], a1[256], 10000, &__p[1], &v139);
  if ((a1[277] & 1) == 0)
  {
LABEL_324:
    HIDWORD(__p[1]) = -1;
    goto LABEL_325;
  }

  (*(*a1[4] + 248))(a1[4], a1[256], 10060, &__p[1] + 4, &v139);
  if ((a1[277] & 1) == 0)
  {
LABEL_325:
    LODWORD(v141) = -1;
    goto LABEL_326;
  }

  (*(*a1[4] + 248))(a1[4], a1[256], 10004, &v141, &v139);
  if ((a1[277] & 1) == 0)
  {
LABEL_326:
    HIDWORD(v141) = -1;
    goto LABEL_327;
  }

  (*(*a1[4] + 248))(a1[4], a1[256], 10064, &v141 + 4, &v139);
  if ((a1[277] & 1) == 0)
  {
LABEL_327:
    v142 = -1;
    goto LABEL_328;
  }

  (*(*a1[4] + 248))(a1[4], a1[256], 10068, &v142, &v139);
  if ((a1[277] & 1) == 0)
  {
LABEL_328:
    v143 = -1;
    goto LABEL_329;
  }

  (*(*a1[4] + 248))(a1[4], a1[256], 10072, &v143, &v139);
  if ((a1[277] & 1) == 0)
  {
LABEL_329:
    v144 = -1;
    goto LABEL_330;
  }

  (*(*a1[4] + 248))(a1[4], a1[256], 10008, &v144, &v139);
  if ((a1[277] & 1) == 0)
  {
LABEL_330:
    v145 = -1;
    goto LABEL_331;
  }

  (*(*a1[4] + 248))(a1[4], a1[256], 10076, &v145, &v139);
  if ((a1[277] & 1) == 0)
  {
LABEL_331:
    v146 = -1;
    goto LABEL_332;
  }

  (*(*a1[4] + 248))(a1[4], a1[256], 10080, &v146, &v139);
  if (a1[277])
  {
    (*(*a1[4] + 248))(a1[4], a1[256], 10084, &v147, &v139);
    goto LABEL_333;
  }

LABEL_332:
  v147 = -1;
LABEL_333:
  kdebug_trace();
  kdebug_trace();
  kdebug_trace();
  if ((*(a1 + 6) - 7) > 4)
  {
    goto LABEL_340;
  }

  v137 = 0;
  v138 = 0;
  if (*(a1 + 2216) != 1)
  {
    v137 = -1;
    goto LABEL_338;
  }

  (*(*a1[4] + 248))(a1[4], a1[256], 10028, &v137, &v139);
  if ((a1[277] & 1) == 0)
  {
LABEL_338:
    v138 = -1;
    goto LABEL_339;
  }

  (*(*a1[4] + 248))(a1[4], a1[256], 10020, &v138, &v139);
LABEL_339:
  kdebug_trace();
LABEL_340:
  if (*(a1 + 2073) == 1 && v48 && a1[261])
  {
    kdebug_trace();
    BaseAddress = CVPixelBufferGetBaseAddress(v48);
    memcpy(a1[261], BaseAddress, a1[263]);
    kdebug_trace();
  }

  v139 = 0;
  LODWORD(__p[0]) = 0;
  if (*(a1 + 2216) == 1)
  {
    (*(*a1[4] + 248))(a1[4], a1[256], 2000, __p, &v139);
    v134 = __p[0];
  }

  else
  {
    v134 = -1;
    LODWORD(__p[0]) = -1;
  }

  v135 = *(a1 + 346);
  if ((*(a1 + 6) - 7) < 5)
  {
    v135 += 4;
  }

  if (v134 != v135)
  {
    operator new();
  }

  v30 = 0;
  kdebug_trace();
  if (v148)
  {
    v149 = v148;
    operator delete(v148);
  }

  if (v151)
  {
    v152 = v151;
    operator delete(v151);
  }

  return v30;
}

void sub_1E5432CD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, void *a23, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
    v24 = a23;
    if (a23)
    {
LABEL_6:
      operator delete(v24);
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v24 = a23;
    if (a23)
    {
      goto LABEL_6;
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1E5432DCC(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(a1 + 2113) != 1)
  {
    return 5;
  }

  v3 = a2;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (*(a1 + 2215) >= 0)
  {
    v6 = *(a1 + 2215);
  }

  else
  {
    v6 = *(a1 + 2200);
  }

  if (v6 + v5 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_1E53DF584();
  }

  if (v6 + v5 > 0x16)
  {
    operator new();
  }

  v25[1] = 0;
  v26 = 0;
  v25[0] = 0;
  HIBYTE(v26) = v6 + v5;
  if (v5)
  {
    if (*(a2 + 23) < 0)
    {
      a2 = *a2;
    }

    memmove(v25, a2, v5);
  }

  v9 = v25 + v5;
  v10 = *(a1 + 2215);
  if (v6)
  {
    if ((v10 & 0x80u) == 0)
    {
      v11 = (a1 + 2192);
    }

    else
    {
      v11 = *(a1 + 2192);
    }

    memmove(v9, v11, v6);
  }

  v9[v6] = 0;
  if (*(a3 + 23) >= 0)
  {
    v12 = *(a3 + 23);
  }

  else
  {
    v12 = *(a3 + 8);
  }

  if ((v10 & 0x80u) == 0)
  {
    v13 = v10;
  }

  else
  {
    v13 = *(a1 + 2200);
  }

  if (v13 + v12 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_1E53DF584();
  }

  if (v13 + v12 > 0x16)
  {
    operator new();
  }

  __p[1] = 0;
  v24 = 0;
  __p[0] = 0;
  HIBYTE(v24) = v13 + v12;
  if (v12)
  {
    if (*(a3 + 23) >= 0)
    {
      v14 = a3;
    }

    else
    {
      v14 = *a3;
    }

    memmove(__p, v14, v12);
  }

  v15 = __p + v12;
  if (v13)
  {
    if (*(a1 + 2215) >= 0)
    {
      v16 = (a1 + 2192);
    }

    else
    {
      v16 = *(a1 + 2192);
    }

    memmove(v15, v16, v13);
  }

  v15[v13] = 0;
  v22[0] = a1;
  v22[1] = &v30;
  v17 = sub_1E5433C8C((a1 + 2152), v25);
  if (v17)
  {
    v29 = v17[5];
  }

  else if ((sub_1E5433128(v22, v3, v25, &v29, &v28 + 1) & 1) == 0)
  {
    result = v30;
LABEL_49:
    if ((SHIBYTE(v24) & 0x80000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_53;
  }

  v18 = sub_1E5433C8C((a1 + 2152), __p);
  if (v18)
  {
    v19 = *(v18 + 10);
LABEL_47:
    result = sub_1E5430AEC(a1, v29, v19);
    goto LABEL_49;
  }

  if (sub_1E5433128(v22, a3, __p, &v28, &v27))
  {
    v19 = v28;
    goto LABEL_47;
  }

  result = v30;
  if ((SHIBYTE(v24) & 0x80000000) == 0)
  {
LABEL_50:
    if ((SHIBYTE(v26) & 0x80000000) == 0)
    {
      return result;
    }

LABEL_54:
    v21 = result;
    operator delete(v25[0]);
    return v21;
  }

LABEL_53:
  v20 = result;
  operator delete(__p[0]);
  result = v20;
  if (SHIBYTE(v26) < 0)
  {
    goto LABEL_54;
  }

  return result;
}

void sub_1E54330DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);
  _Unwind_Resume(exception_object);
}

uint64_t sub_1E5433128(void *a1, uint64_t a2, uint64_t a3, _DWORD *a4, _DWORD *a5)
{
  v6 = *a1;
  v7 = *(*a1 + 208);
  if (*(v7 + 96) != 1)
  {
    goto LABEL_27;
  }

  v12 = sub_1E548B1D4(*(*a1 + 208), a2, a4, a5);
  *(v7 + 100) = v12;
  if ((v12 - 8) >= 2)
  {
    if (!v12)
    {
      goto LABEL_29;
    }

    if (v12 != 33)
    {
LABEL_27:
      result = 0;
      v18 = a1[1];
      v19 = 8;
      goto LABEL_28;
    }
  }

  result = sub_1E542C770(*(v6 + 208), v6 + 144);
  if (!result)
  {
    v18 = a1[1];
    v19 = 7;
LABEL_28:
    *v18 = v19;
    return result;
  }

  v48[0] = 0;
  v48[1] = 0;
  v49 = 0;
  v14 = *(v6 + 2151);
  if (v14 >= 0)
  {
    v15 = (v6 + 2128);
  }

  else
  {
    v15 = *(v6 + 2128);
  }

  v16 = *(v6 + 2136);
  if (v14 >= 0)
  {
    v16 = *(v6 + 2151);
  }

  sub_1E5433A1C(v48, v15, &v15[v16]);
  v17 = *(v6 + 208);
  if (SHIBYTE(v49) < 0)
  {
    sub_1E53E53CC(__p, v48[0], v48[1]);
  }

  else
  {
    *__p = *v48;
    v47 = v49;
  }

  if (*(v17 + 96) == 1)
  {
    v20 = sub_1E548AFB0(v17, __p);
    *(v17 + 100) = v20;
    v21 = v20 == 0;
    if ((SHIBYTE(v47) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v21 = 0;
    if ((SHIBYTE(v47) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }
  }

  operator delete(__p[0]);
LABEL_20:
  if (v21)
  {
    if (SHIBYTE(v49) < 0)
    {
      operator delete(v48[0]);
    }

    v22 = *(v6 + 208);
    if (*(v22 + 96) != 1)
    {
      goto LABEL_27;
    }

    v23 = sub_1E548B1D4(*(v6 + 208), a2, a4, a5);
    *(v22 + 100) = v23;
    if (v23)
    {
      if ((v23 - 8) < 2 || v23 == 33)
      {
        *a1[1] = 8;
        sub_1E5433768();
      }

      goto LABEL_27;
    }

LABEL_29:
    v24 = *(a3 + 23);
    if (v24 >= 0)
    {
      v25 = a3;
    }

    else
    {
      v25 = *a3;
    }

    if (v24 >= 0)
    {
      v26 = *(a3 + 23);
    }

    else
    {
      v26 = *(a3 + 8);
    }

    v27 = sub_1E53E68D4(v48, v25, v26);
    v28 = v27;
    v29 = *(v6 + 2160);
    if (!*&v29)
    {
      goto LABEL_78;
    }

    v30 = vcnt_s8(v29);
    v30.i16[0] = vaddlv_u8(v30);
    if (v30.u32[0] > 1uLL)
    {
      v31 = v27;
      if (v27 >= *&v29)
      {
        v31 = v27 % *&v29;
      }
    }

    else
    {
      v31 = (*&v29 - 1) & v27;
    }

    v32 = *(*(v6 + 2152) + 8 * v31);
    if (!v32 || (v33 = *v32) == 0)
    {
LABEL_78:
      operator new();
    }

    v34 = *(a3 + 23);
    if (v34 >= 0)
    {
      v35 = *(a3 + 23);
    }

    else
    {
      v35 = *(a3 + 8);
    }

    if (v34 >= 0)
    {
      v36 = a3;
    }

    else
    {
      v36 = *a3;
    }

    __s2 = v36;
    if (v30.u32[0] < 2uLL)
    {
      while (1)
      {
        v41 = v33[1];
        if (v41 == v28)
        {
          v42 = *(v33 + 39);
          v43 = v42;
          if (v42 < 0)
          {
            v42 = v33[3];
          }

          if (v42 == v35)
          {
            v44 = v43 >= 0 ? (v33 + 2) : v33[2];
            if (!memcmp(v44, __s2, v35))
            {
              goto LABEL_79;
            }
          }
        }

        else if ((v41 & (*&v29 - 1)) != v31)
        {
          goto LABEL_78;
        }

        v33 = *v33;
        if (!v33)
        {
          goto LABEL_78;
        }
      }
    }

    while (1)
    {
      v37 = v33[1];
      if (v37 == v28)
      {
        v38 = *(v33 + 39);
        v39 = v38;
        if (v38 < 0)
        {
          v38 = v33[3];
        }

        if (v38 == v35)
        {
          v40 = v39 >= 0 ? (v33 + 2) : v33[2];
          if (!memcmp(v40, __s2, v35))
          {
LABEL_79:
            v33[5] = *a4;
            v33[6] = *a5;
            return 1;
          }
        }
      }

      else
      {
        if (v37 >= *&v29)
        {
          v37 %= *&v29;
        }

        if (v37 != v31)
        {
          goto LABEL_78;
        }
      }

      v33 = *v33;
      if (!v33)
      {
        goto LABEL_78;
      }
    }
  }

  *a1[1] = 6;
  if (SHIBYTE(v49) < 0)
  {
    operator delete(v48[0]);
  }

  return 0;
}

void sub_1E54336BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1E54337B4(va);
  _Unwind_Resume(a1);
}

void sub_1E54336D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1E5433720(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = sub_1E54278C0(v2);
    MEMORY[0x1E6928640](v4, 64);
    return v3;
  }

  return v1;
}

void sub_1E5433768()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E55D8] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E5418], MEMORY[0x1E69E52A0]);
}

void *sub_1E54337B4(void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1 && *(v2 + 39) < 0)
    {
      v4 = v2;
      operator delete(*(v2 + 16));
      v2 = v4;
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

void sub_1E543381C(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_1E53E5340();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t sub_1E54339B0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

unint64_t sub_1E5433A1C(unint64_t a1, _BYTE *a2, _BYTE *a3)
{
  v4 = a3 - a2;
  if ((*(a1 + 23) & 0x8000000000000000) != 0)
  {
    if (a3 == a2)
    {
      return a1;
    }

    v7 = *(a1 + 8);
    v9 = *(a1 + 16);
    v6 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v8 = *a1;
    v5 = v9 >> 63;
    if (*a1 > a2)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (a3 == a2)
    {
      return a1;
    }

    LODWORD(v5) = 0;
    v6 = 22;
    v7 = *(a1 + 23);
    v8 = a1;
    if (a1 > a2)
    {
      goto LABEL_11;
    }
  }

  if (v8 + v7 + 1 > a2)
  {
    if (v4 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_29;
    }

    if (v4 > 0x16)
    {
      operator new();
    }

    v16 = a3 - a2;
    memcpy(__dst, a2, v4);
    *(__dst + v4) = 0;
    if ((v16 & 0x80u) == 0)
    {
      v12 = __dst;
    }

    else
    {
      v12 = __dst[0];
    }

    if ((v16 & 0x80u) == 0)
    {
      v13 = v16;
    }

    else
    {
      v13 = __dst[1];
    }

    std::string::append(a1, v12, v13);
    if (v16 < 0)
    {
      operator delete(__dst[0]);
    }

    return a1;
  }

LABEL_11:
  if (v6 - v7 < v4)
  {
    if (0x7FFFFFFFFFFFFFF7 - v6 >= v7 + v4 - v6)
    {
      operator new();
    }

LABEL_29:
    sub_1E53DF584();
  }

  v10 = a1;
  if (v5)
  {
    v10 = *a1;
  }

  memmove((v10 + v7), a2, v4);
  *(v10 + v7 + v4) = 0;
  v11 = v7 + v4;
  if (*(a1 + 23) < 0)
  {
    *(a1 + 8) = v11;
  }

  else
  {
    *(a1 + 23) = v11 & 0x7F;
  }

  return a1;
}

void sub_1E5433C70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **sub_1E5433C8C(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_1E53E68D4(&v25, a2, v5);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
    v13 = v2[23];
    if (v13 >= 0)
    {
      v14 = v2[23];
    }

    else
    {
      v14 = *(v2 + 1);
    }

    if (v13 < 0)
    {
      v2 = *v2;
    }

    if (v9.u32[0] < 2uLL)
    {
      v15 = *&v7 - 1;
      while (1)
      {
        v20 = v12[1];
        if (v20 == v8)
        {
          v21 = *(v12 + 39);
          v22 = v21;
          if (v21 < 0)
          {
            v21 = v12[3];
          }

          if (v21 == v14)
          {
            v23 = v22 >= 0 ? (v12 + 2) : v12[2];
            if (!memcmp(v23, v2, v14))
            {
              return v12;
            }
          }
        }

        else if ((v20 & v15) != v10)
        {
          return 0;
        }

        v12 = *v12;
        if (!v12)
        {
          return v12;
        }
      }
    }

    do
    {
      v16 = v12[1];
      if (v16 == v8)
      {
        v17 = *(v12 + 39);
        v18 = v17;
        if (v17 < 0)
        {
          v17 = v12[3];
        }

        if (v17 == v14)
        {
          v19 = v18 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v19, v2, v14))
          {
            return v12;
          }
        }
      }

      else
      {
        if (v16 >= *&v7)
        {
          v16 %= *&v7;
        }

        if (v16 != v10)
        {
          return 0;
        }
      }

      v12 = *v12;
    }

    while (v12);
  }

  return v12;
}

void sub_1E5433E44(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 488);
  if (*(v4 + 8) <= 1u && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwIspDataHandler.cpp", 97, "cmd_vio_header->totSections > CVIO_SECTION_OUTPUT && Number of sections is too small to contain output section", 112, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  v5 = *(v4 + 40);
  sub_1E5436998((a1 + 24), (2 * *(a1 + 12)));
  sub_1E5436998((a1 + 48), *(a1 + 12));
  if (*(a1 + 12))
  {
    v6 = v4 + v5;
    v80 = v4 + v5 + 1;
    v7 = 1;
    while (1)
    {
      v9 = v7 - 1;
      v10 = *(a1 + 20);
      if (v10 != 2)
      {
        break;
      }

      v16 = (*(*a2 + 104))(a2, 0, (v7 - 1));
      if (*v16 == 1)
      {
        v17 = v16;
        v18 = sub_1E5478AA8(*a1, v7 - 1);
        v19 = v6 + *(v17 + 4);
        v20 = *(a1 + 512);
        v88 = v19;
        v89 = v20;
        if (v20)
        {
          atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
          v21 = *(v17 + 1);
          atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        else
        {
          v21 = *(v17 + 1);
        }

        v30 = v18;
        v31.i64[0] = v21;
        v31.i64[1] = HIDWORD(v21);
        v81[0] = 0;
        *&v81[8] = xmmword_1E54921C0;
        *&v81[24] = v18;
        v82 = vextq_s8(v31, v31, 8uLL);
        *v83 = vdupq_n_s64(1uLL);
        v83[16] = 0;
        v83[24] = 0;
        v84 = v19;
        v85 = v20;
        v86 = 0;
        v87 = 0;
        v32 = *(a1 + 32);
        if (v32 >= *(a1 + 40))
        {
          v36 = sub_1E5438E20((a1 + 24), v81);
          v37 = v87;
          *(a1 + 32) = v36;
          if (v37 && !atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v37->__on_zero_shared)(v37);
            std::__shared_weak_count::__release_weak(v37);
          }
        }

        else
        {
          *v32 = *v81;
          v33 = *&v81[16];
          v34 = v82;
          v35 = *v83;
          *(v32 + 57) = *&v83[9];
          *(v32 + 32) = v34;
          *(v32 + 48) = v35;
          *(v32 + 16) = v33;
          *(v32 + 80) = v19;
          *(v32 + 88) = v20;
          v84 = 0;
          v85 = 0;
          *(v32 + 96) = 0;
          *(v32 + 104) = 0;
          v86 = 0;
          v87 = 0;
          *(a1 + 32) = v32 + 112;
        }

        v38 = v85;
        if (v85 && !atomic_fetch_add(&v85->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v38->__on_zero_shared)(v38);
          std::__shared_weak_count::__release_weak(v38);
        }

        v53 = *(v17 + 4);
        v54 = *(a1 + 512);
        if (v54)
        {
          atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v55 = v80 + v53;
        v56 = v89;
        v88 = v55;
        v89 = v54;
        if (v56)
        {
          if (!atomic_fetch_add(&v56->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v56->__on_zero_shared)(v56);
            std::__shared_weak_count::__release_weak(v56);
          }

          v55 = v88;
          v54 = v89;
        }

        v58 = *(v17 + 2);
        v57 = *(v17 + 3);
        if (v54)
        {
          atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v81[0] = 0;
        *&v81[8] = xmmword_1E54921C0;
        *&v81[24] = v30;
        v82.i64[0] = v57;
        v82.i64[1] = v58;
        *v83 = vdupq_n_s64(1uLL);
        v83[16] = 0;
        v83[24] = 0;
        v84 = v55;
        v85 = v54;
        v86 = 0;
        v87 = 0;
        v59 = *(a1 + 32);
        if (v59 >= *(a1 + 40))
        {
          v63 = sub_1E5438E20((a1 + 24), v81);
          v64 = v87;
          *(a1 + 32) = v63;
          if (v64 && !atomic_fetch_add(&v64->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v64->__on_zero_shared)(v64);
            std::__shared_weak_count::__release_weak(v64);
          }
        }

        else
        {
          *v59 = *v81;
          v60 = *&v81[16];
          v61 = v82;
          v62 = *v83;
          *(v59 + 57) = *&v83[9];
          *(v59 + 32) = v61;
          *(v59 + 48) = v62;
          *(v59 + 16) = v60;
          *(v59 + 80) = v55;
          *(v59 + 88) = v54;
          v84 = 0;
          v85 = 0;
          *(v59 + 96) = 0;
          *(v59 + 104) = 0;
          v86 = 0;
          v87 = 0;
          *(a1 + 32) = v59 + 112;
        }

        v65 = v85;
        if (!v85 || atomic_fetch_add(&v85->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_81;
        }

        goto LABEL_80;
      }

LABEL_5:
      if (v7++ >= *(a1 + 12))
      {
        return;
      }
    }

    if (v10 != 1)
    {
      goto LABEL_5;
    }

    v11 = (*(*a2 + 104))(a2, 0, (v7 - 1));
    if (*v11 == 1)
    {
      v12 = v6 + *(v11 + 16);
      v13 = *(a1 + 512);
      v88 = v12;
      v89 = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        v14 = *a1;
        v15 = *(v11 + 8);
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      else
      {
        v14 = *a1;
        v15 = *(v11 + 8);
      }

      v22.i64[0] = v15;
      v22.i64[1] = HIDWORD(v15);
      v81[0] = 0;
      *&v81[8] = xmmword_1E54921C0;
      *&v81[24] = v14 >> v9;
      v82 = vextq_s8(v22, v22, 8uLL);
      *v83 = vdupq_n_s64(1uLL);
      v83[16] = 0;
      v83[24] = 0;
      v84 = v12;
      v85 = v13;
      v86 = 0;
      v87 = 0;
      v23 = *(a1 + 32);
      if (v23 >= *(a1 + 40))
      {
        v27 = sub_1E5438E20((a1 + 24), v81);
        v28 = v87;
        *(a1 + 32) = v27;
        if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v28->__on_zero_shared)(v28);
          std::__shared_weak_count::__release_weak(v28);
        }
      }

      else
      {
        *v23 = *v81;
        v24 = *&v81[16];
        v25 = v82;
        v26 = *v83;
        *(v23 + 57) = *&v83[9];
        *(v23 + 32) = v25;
        *(v23 + 48) = v26;
        *(v23 + 16) = v24;
        *(v23 + 80) = v12;
        *(v23 + 88) = v13;
        v84 = 0;
        v85 = 0;
        *(v23 + 96) = 0;
        *(v23 + 104) = 0;
        v86 = 0;
        v87 = 0;
        *(a1 + 32) = v23 + 112;
      }

      v29 = v85;
      if (v85 && !atomic_fetch_add(&v85->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v29->__on_zero_shared)(v29);
        std::__shared_weak_count::__release_weak(v29);
      }

      v39 = v89;
      if (v89 && !atomic_fetch_add(&v89->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v39->__on_zero_shared)(v39);
        std::__shared_weak_count::__release_weak(v39);
      }
    }

    v40 = (*(*a2 + 104))(a2, 1, (v7 - 1));
    if (*v40 == 1)
    {
      v41 = v6 + *(v40 + 16);
      v42 = *(a1 + 512);
      v88 = v41;
      v89 = v42;
      if (v42)
      {
        atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
        v43 = *a1;
        v44 = *(v40 + 8);
        atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      else
      {
        v43 = *a1;
        v44 = *(v40 + 8);
      }

      v45.i64[0] = v44;
      v45.i64[1] = HIDWORD(v44);
      v81[0] = 0;
      *&v81[8] = xmmword_1E54921C0;
      *&v81[24] = v43 >> v9;
      v82 = vextq_s8(v45, v45, 8uLL);
      *v83 = vdupq_n_s64(1uLL);
      v83[16] = 0;
      v83[24] = 0;
      v84 = v41;
      v85 = v42;
      v86 = 0;
      v87 = 0;
      v46 = *(a1 + 32);
      if (v46 >= *(a1 + 40))
      {
        v50 = sub_1E5438E20((a1 + 24), v81);
        v51 = v87;
        *(a1 + 32) = v50;
        if (v51 && !atomic_fetch_add(&v51->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v51->__on_zero_shared)(v51);
          std::__shared_weak_count::__release_weak(v51);
        }
      }

      else
      {
        *v46 = *v81;
        v47 = *&v81[16];
        v48 = v82;
        v49 = *v83;
        *(v46 + 57) = *&v83[9];
        *(v46 + 32) = v48;
        *(v46 + 48) = v49;
        *(v46 + 16) = v47;
        *(v46 + 80) = v41;
        *(v46 + 88) = v42;
        v84 = 0;
        v85 = 0;
        *(v46 + 96) = 0;
        *(v46 + 104) = 0;
        v86 = 0;
        v87 = 0;
        *(a1 + 32) = v46 + 112;
      }

      v52 = v85;
      if (v85 && !atomic_fetch_add(&v85->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v52->__on_zero_shared)(v52);
        std::__shared_weak_count::__release_weak(v52);
      }

      v66 = v89;
      if (v89 && !atomic_fetch_add(&v89->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v66->__on_zero_shared)(v66);
        std::__shared_weak_count::__release_weak(v66);
      }
    }

    v67 = (*(*a2 + 104))(a2, 2, (v7 - 1));
    if (*v67 != 1)
    {
      goto LABEL_5;
    }

    v68 = v6 + *(v67 + 16);
    v69 = *(a1 + 512);
    v88 = v68;
    v89 = v69;
    if (v69)
    {
      atomic_fetch_add_explicit(&v69->__shared_owners_, 1uLL, memory_order_relaxed);
      v70 = *a1 >> v7;
      v71 = *(v67 + 8);
      atomic_fetch_add_explicit(&v69->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v70 = *a1 >> v7;
      v71 = *(v67 + 8);
    }

    v72.i64[0] = v71;
    v72.i64[1] = HIDWORD(v71);
    v81[0] = 0;
    *&v81[8] = xmmword_1E54921C0;
    *&v81[24] = (2 * v70);
    v82 = vextq_s8(v72, v72, 8uLL);
    *v83 = vdupq_n_s64(1uLL);
    v83[16] = 0;
    v83[24] = 0;
    v84 = v68;
    v85 = v69;
    v86 = 0;
    v87 = 0;
    v73 = *(a1 + 56);
    if (v73 >= *(a1 + 64))
    {
      v77 = sub_1E5438E20((a1 + 48), v81);
      v78 = v87;
      *(a1 + 56) = v77;
      if (v78 && !atomic_fetch_add(&v78->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v78->__on_zero_shared)(v78);
        std::__shared_weak_count::__release_weak(v78);
      }
    }

    else
    {
      *v73 = *v81;
      v74 = *&v81[16];
      v75 = v82;
      v76 = *v83;
      *(v73 + 57) = *&v83[9];
      *(v73 + 32) = v75;
      *(v73 + 48) = v76;
      *(v73 + 16) = v74;
      *(v73 + 80) = v68;
      *(v73 + 88) = v69;
      v84 = 0;
      v85 = 0;
      *(v73 + 96) = 0;
      *(v73 + 104) = 0;
      v86 = 0;
      v87 = 0;
      *(a1 + 56) = v73 + 112;
    }

    v65 = v85;
    if (!v85 || atomic_fetch_add(&v85->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_81;
    }

LABEL_80:
    (v65->__on_zero_shared)(v65);
    std::__shared_weak_count::__release_weak(v65);
LABEL_81:
    v79 = v89;
    if (v89)
    {
      if (!atomic_fetch_add(&v89->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v79->__on_zero_shared)(v79);
        std::__shared_weak_count::__release_weak(v79);
      }
    }

    goto LABEL_5;
  }
}

void sub_1E5434978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  sub_1E54368D0(va1);
  sub_1E53F7E98(va);
  sub_1E53F7E98(v6 - 104);
  _Unwind_Resume(a1);
}

void sub_1E543499C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  sub_1E54368D0(va1);
  sub_1E53F7E98(va);
  sub_1E53F7E98(v8 - 104);
  _Unwind_Resume(a1);
}

void sub_1E54349C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  sub_1E54368D0(va1);
  sub_1E53F7E98(va);
  sub_1E53F7E98(v10 - 104);
  _Unwind_Resume(a1);
}

void sub_1E54349E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va1, a12);
  va_start(va, a12);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  sub_1E54368D0(va1);
  sub_1E53F7E98(va);
  sub_1E53F7E98(v12 - 104);
  _Unwind_Resume(a1);
}

void sub_1E5434A08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va1, a14);
  va_start(va, a14);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  sub_1E54368D0(va1);
  sub_1E53F7E98(va);
  sub_1E53F7E98(v14 - 104);
  _Unwind_Resume(a1);
}

void sub_1E5434A2C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 488);
  if (*(v4 + 8) <= 1u && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwIspDataHandler.cpp", 97, "cmd_vio_header->totSections > CVIO_SECTION_OUTPUT && Number of sections is too small to contain output section", 112, &unk_1E549A011, 0, sub_1E548FDE0))
  {
LABEL_51:
    abort();
  }

  v5 = *(v4 + 40);
  v6 = *(a1 + 12);
  v42 = (a1 + 72);
  if (0x6DB6DB6DB6DB6DB7 * ((*(a1 + 88) - *(a1 + 72)) >> 4) < (2 * v6))
  {
    *&v44 = a1 + 72;
    operator new();
  }

  if (v6)
  {
    v7 = 0;
    v41 = v4 + v5;
    v39 = v4 + v5 + 2;
    v40 = vdupq_n_s64(2uLL);
    while (1)
    {
      v8 = (*(*a2 + 104))(a2, 3, v7);
      if (*v8 == 1)
      {
        break;
      }

LABEL_7:
      if (++v7 >= *(a1 + 12))
      {
        return;
      }
    }

    v9 = v8;
    v10 = *a1;
    if (*(a1 + 20) == 1)
    {
      v11 = v10 >> v7;
      v12 = v41 + v9[4];
      v13 = *(a1 + 512);
      v50 = v12;
      v51 = v13;
      if (!v13)
      {
LABEL_14:
        v14 = v9[3];
        if (v14)
        {
          if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwIspDataHandler.cpp", 346, "lp01_info.stride % sizeof(LaplacianDataType) == 0 && Width step is not a multiple of scalar data type", 103, &unk_1E549A011, 0, sub_1E548FDE0))
          {
            goto LABEL_51;
          }

          v14 = v9[3];
        }

        v15 = v9[2];
        if (v13)
        {
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v16 = v11;
        __p[0] = 0;
        *&__p[8] = xmmword_1E54921C0;
        *&__p[24] = v11;
        *&v44 = v14 >> 1;
        *(&v44 + 1) = v15;
        *v45 = v40;
        v45[16] = 0;
        v45[24] = 0;
        v46 = v12;
        v47 = v13;
        v48 = 0;
        v49 = 0;
        v17 = *(a1 + 80);
        if (v17 >= *(a1 + 88))
        {
          v22 = sub_1E543903C(v42, __p);
          v23 = v49;
          *(a1 + 80) = v22;
          if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v23->__on_zero_shared)(v23);
            std::__shared_weak_count::__release_weak(v23);
            v21 = v47;
            if (!v47)
            {
              goto LABEL_27;
            }
          }

          else
          {
            v21 = v47;
            if (!v47)
            {
              goto LABEL_27;
            }
          }
        }

        else
        {
          *v17 = *__p;
          v18 = *&__p[16];
          v19 = v44;
          v20 = *v45;
          *(v17 + 57) = *&v45[9];
          *(v17 + 32) = v19;
          *(v17 + 48) = v20;
          *(v17 + 16) = v18;
          *(v17 + 80) = v12;
          *(v17 + 88) = v13;
          v46 = 0;
          v47 = 0;
          *(v17 + 96) = 0;
          *(v17 + 104) = 0;
          v48 = 0;
          v49 = 0;
          *(a1 + 80) = v17 + 112;
          v21 = v47;
          if (!v47)
          {
            goto LABEL_27;
          }
        }

        if (!atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v21->__on_zero_shared)(v21);
          std::__shared_weak_count::__release_weak(v21);
        }

LABEL_27:
        v24 = v9[4];
        v25 = *(a1 + 512);
        if (v25)
        {
          atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v26 = v51;
        v50 = v39 + v24;
        v51 = v25;
        if (v26 && !atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v26->__on_zero_shared)(v26);
          std::__shared_weak_count::__release_weak(v26);
          v27 = v9[2];
          v28 = v9[3];
          v30 = v50;
          v29 = v51;
          if (!v51)
          {
LABEL_33:
            __p[0] = 0;
            *&__p[8] = xmmword_1E54921C0;
            *&__p[24] = v16;
            *&v44 = v28 >> 1;
            *(&v44 + 1) = v27;
            *v45 = vdupq_n_s64(2uLL);
            v45[16] = 0;
            v45[24] = 0;
            v46 = v30;
            v47 = v29;
            v48 = 0;
            v49 = 0;
            v31 = *(a1 + 80);
            if (v31 >= *(a1 + 88))
            {
              v36 = sub_1E543903C(v42, __p);
              v37 = v49;
              *(a1 + 80) = v36;
              if (v37 && !atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v37->__on_zero_shared)(v37);
                std::__shared_weak_count::__release_weak(v37);
                v35 = v47;
                if (!v47)
                {
LABEL_41:
                  v38 = v51;
                  if (v51)
                  {
                    if (!atomic_fetch_add(&v51->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                    {
                      (v38->__on_zero_shared)(v38);
                      std::__shared_weak_count::__release_weak(v38);
                    }
                  }

                  goto LABEL_7;
                }
              }

              else
              {
                v35 = v47;
                if (!v47)
                {
                  goto LABEL_41;
                }
              }
            }

            else
            {
              *v31 = *__p;
              v32 = *&__p[16];
              v33 = v44;
              v34 = *v45;
              *(v31 + 57) = *&v45[9];
              *(v31 + 32) = v33;
              *(v31 + 48) = v34;
              *(v31 + 16) = v32;
              *(v31 + 80) = v30;
              *(v31 + 88) = v29;
              v46 = 0;
              v47 = 0;
              *(v31 + 96) = 0;
              *(v31 + 104) = 0;
              v48 = 0;
              v49 = 0;
              *(a1 + 80) = v31 + 112;
              v35 = v47;
              if (!v47)
              {
                goto LABEL_41;
              }
            }

            if (!atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v35->__on_zero_shared)(v35);
              std::__shared_weak_count::__release_weak(v35);
            }

            goto LABEL_41;
          }
        }

        else
        {
          v27 = v9[2];
          v28 = v9[3];
          v30 = v50;
          v29 = v51;
          if (!v51)
          {
            goto LABEL_33;
          }
        }

        atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_33;
      }
    }

    else
    {
      v11 = sub_1E5478AA8(v10, v7);
      v12 = v41 + v9[4];
      v13 = *(a1 + 512);
      v50 = v12;
      v51 = v13;
      if (!v13)
      {
        goto LABEL_14;
      }
    }

    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    goto LABEL_14;
  }
}

void sub_1E5435148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_1E5438D20(va);
  _Unwind_Resume(a1);
}

void sub_1E543515C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  sub_1E54368D0(va1);
  sub_1E53F7E98(va);
  sub_1E53F7E98(v10 - 104);
  _Unwind_Resume(a1);
}

void sub_1E54351A8(uint64_t a1, CVPixelBufferRef *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 20) = 1;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 184) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 208) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 232) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 384) = 0;
  *(a1 + 376) = 0;
  *(a1 + 385) = 1;
  *(a1 + 387) = 1;
  *(a1 + 480) = 0;
  *(a1 + 457) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 592) = 0;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 569) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 0u;
  *(a1 + 396) = 0;
  *(a1 + 388) = 0;
  *(a1 + 401) = 0;
  *(a1 + 520) = 0;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  sub_1E5489EBC(*a2, 1, &v2);
}

void sub_1E5436870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  sub_1E54368D0(a10);
  sub_1E54368D0(a11);
  sub_1E5438B30((v12 + 296));
  v14 = *(v12 + 96);
  if (v14)
  {
    *(v12 + 104) = v14;
    operator delete(v14);
  }

  sub_1E5427EA4((v12 + 72));
  sub_1E5427EA4((v12 + 48));
  sub_1E5427EA4(a12);
  _Unwind_Resume(a1);
}

uint64_t sub_1E54368D0(uint64_t result)
{
  v1 = *(result + 104);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = result;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    result = v2;
  }

  v3 = *(result + 88);
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void *sub_1E5436998(void *result, unint64_t a2)
{
  if (0x6DB6DB6DB6DB6DB7 * ((result[2] - *result) >> 4) < a2)
  {
    v2 = result;
    operator new();
  }

  return result;
}

void sub_1E5436B08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1E5438D20(va);
  _Unwind_Resume(a1);
}

__n128 sub_1E5436B1C(uint64_t a1, char a2, uint64_t a3, float a4, float a5, float a6, float a7, float a8)
{
  v16 = *(a1 + 400);
  if (*(v16 + 4) >= *(a1 + 16))
  {
    if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwIspDataHandler.cpp", 515, "extraction_info_->number_of_keypoints < max_keypoints_", 54, &unk_1E549A011, 0, sub_1E548FDE0))
    {
      goto LABEL_11;
    }

    v16 = *(a1 + 400);
  }

  if (*(v16 + 80) && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwIspDataHandler.cpp", 518, "NumberOfKeypointsForRelocalizationOnly() == 0 && makes sure when adding features, no featues are considered as relocalization only", 134, &unk_1E549A011, 0, sub_1E548FDE0))
  {
LABEL_11:
    abort();
  }

  v17 = *(a1 + 128);
  if (!v17 || (v18 = *(a1 + 144)) == 0)
  {
    if ((sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwIspDataHandler.cpp", 527, "output_keypoints_data_.keypoints != nullptr && output_descriptors_data_.descriptors != nullptr", 94, &unk_1E549A011, 0, sub_1E548FDE0) & 1) == 0)
    {
      v17 = *(a1 + 128);
      v18 = *(a1 + 144);
      goto LABEL_10;
    }

    goto LABEL_11;
  }

LABEL_10:
  v19 = *(*(a1 + 400) + 4);
  v20 = v17 + 24 * v19;
  *v20 = a4;
  *(v20 + 4) = a5;
  *(v20 + 8) = a6;
  *(v20 + 12) = a7;
  *(v20 + 16) = a2;
  *(v20 + 20) = a8;
  v21 = v18 + (v19 << 6);
  result = *a3;
  v23 = *(a3 + 16);
  v24 = *(a3 + 48);
  *(v21 + 32) = *(a3 + 32);
  *(v21 + 48) = v24;
  *v21 = result;
  *(v21 + 16) = v23;
  ++*(*(a1 + 400) + 4);
  return result;
}

uint64_t sub_1E5436CAC(uint64_t result, int a2, int a3)
{
  v5 = result;
  v6 = *(result + 400);
  v7 = *(v6 + 88);
  if (v7 >= *(result + 16))
  {
    result = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwIspDataHandler.cpp", 534, "extraction_info_->v1.num_of_matches < max_keypoints_", 52, &unk_1E549A011, 0, sub_1E548FDE0);
    if (result)
    {
      abort();
    }

    v6 = *(v5 + 400);
    v7 = *(v6 + 88);
  }

  v8 = (*(v5 + 360) + 8 * v7);
  *v8 = a2;
  v8[1] = a3;
  ++*(v6 + 88);
  return result;
}

uint64_t sub_1E5436D50(uint64_t result, int a2, unsigned int a3)
{
  v5 = result;
  v6 = *(result + 16);
  if (*(result + 372) >= v6 || v6 <= a3)
  {
    result = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwIspDataHandler.cpp", 544, "tid_data_.num_tids < max_keypoints_ && idx < max_keypoints_", 59, &unk_1E549A011, 0, sub_1E548FDE0);
    if (result)
    {
      abort();
    }
  }

  *(*(v5 + 376) + 4 * a3) = a2;
  ++*(v5 + 372);
  return result;
}

unsigned __int8 *sub_1E5436DE8(unsigned __int8 *result, uint64_t a2)
{
  v2 = result[15] & 4;
  *a2 = v2;
  v3 = v2 | (result[17] << 7);
  *a2 = v3;
  v4 = (result[18] >> 4) & 8 | v3;
  *a2 = v4;
  v5 = (result[18] >> 5) & 2 | v4;
  *a2 = v5;
  v6 = v5 & 0xFFFFFFBF | (((result[26] >> 5) & 1) << 6);
  *a2 = v6;
  LOBYTE(v6) = v6 & 0xEF | (16 * (result[34] & 1));
  *a2 = v6;
  LOBYTE(v6) = v6 & 0xFE | ((result[34] & 2) != 0);
  *a2 = v6;
  *a2 = v6 | result[37] & 0x20;
  LOBYTE(v6) = (4 * result[14]) & 0x40;
  *(a2 + 1) = v6;
  LOBYTE(v6) = v6 & 0xFE | ((result[17] & 2) != 0);
  *(a2 + 1) = v6;
  v7 = v6 & 0x7F | (result[19] >> 6 << 7);
  *(a2 + 1) = v7;
  v8 = v7 | result[19] & 0x20;
  *(a2 + 1) = v8;
  v9 = (result[26] >> 3) & 2 | v8;
  *(a2 + 1) = v9;
  v10 = (result[33] >> 1) & 0x10 | v9;
  *(a2 + 1) = v10;
  *(a2 + 1) = v10 & 0xF3 | (4 * ((result[35] >> 1) & 3));
  v11 = (result[15] >> 3) & 0x18;
  *(a2 + 2) = v11;
  v12 = v11 & 0xFFFFFFDF | (32 * ((result[27] >> 2) & 1));
  *(a2 + 2) = v12;
  v13 = v12 & 0xFFFFFFFB | (4 * ((result[27] >> 1) & 1));
  *(a2 + 2) = v13;
  LOBYTE(v13) = v13 & 0xFE | ((result[33] & 0x10) != 0);
  *(a2 + 2) = v13;
  LOBYTE(v13) = v13 & 0x3F | (result[37] >> 3 << 6);
  *(a2 + 2) = v13;
  *(a2 + 2) = (result[39] >> 3) & 2 | v13;
  v14 = (result[15] >> 3) & 4;
  *(a2 + 3) = v14;
  v15 = result[17] & 0x80 | v14;
  *(a2 + 3) = v15;
  v16 = (result[19] >> 1) & 8 | v15;
  *(a2 + 3) = v16;
  v17 = (result[19] >> 2) & 2 | v16;
  *(a2 + 3) = v17;
  v18 = v17 & 0xFFFFFFBF | (((result[28] >> 5) & 1) << 6);
  *(a2 + 3) = v18;
  v19 = v18 | (result[34] >> 7);
  *(a2 + 3) = v19;
  LOBYTE(v19) = v19 & 0xEF | (16 * (result[35] & 1));
  *(a2 + 3) = v19;
  *(a2 + 3) = (32 * (result[38] & 1)) | v19;
  v20 = result[18] & 1;
  *(a2 + 4) = v20;
  v21 = v20 & 0xFFFFFFBF | (((result[19] >> 2) & 1) << 6);
  *(a2 + 4) = v21;
  v22 = v21 | (result[21] << 7);
  *(a2 + 4) = v22;
  v23 = v22 & 0xFFFFFFDF | (32 * ((result[21] >> 1) & 1));
  *(a2 + 4) = v23;
  v24 = (result[28] >> 1) & 2 | v23;
  *(a2 + 4) = v24;
  v25 = v24 & 0xFFFFFFEF | (16 * ((result[33] >> 2) & 1));
  *(a2 + 4) = v25;
  LOBYTE(v25) = v25 & 0xF7 | (8 * ((result[36] & 2) != 0));
  *(a2 + 4) = v25;
  *(a2 + 4) = v25 | result[36] & 4;
  v26 = result[5] & 0x10;
  *(a2 + 5) = v26;
  v27 = (result[4] >> 1) & 8 | v26;
  *(a2 + 5) = v27;
  LOBYTE(v27) = v27 & 0xFB | (4 * ((result[7] & 2) != 0));
  *(a2 + 5) = v27;
  v28 = v27 & 0x7F | (result[13] >> 3 << 7);
  *(a2 + 5) = v28;
  v29 = v28 & 0xFFFFFFDF | (32 * ((result[24] >> 3) & 1));
  *(a2 + 5) = v29;
  LOBYTE(v29) = v29 & 0xFE | ((result[33] & 8) != 0);
  *(a2 + 5) = v29;
  LOBYTE(v29) = (result[35] >> 5) & 2 | v29;
  *(a2 + 5) = v29;
  *(a2 + 5) = (16 * result[40]) & 0x40 | v29;
  v30 = result[25];
  *(a2 + 6) = (v30 & 2) != 0;
  v31 = (result[39] >> 3) & 8 | (v30 >> 1) & 1;
  *(a2 + 6) = v31;
  LOBYTE(v31) = v31 & 0xBF | (((result[48] & 0x10) != 0) << 6);
  *(a2 + 6) = v31;
  v32 = v31 & 0x7F | (result[51] >> 6 << 7);
  *(a2 + 6) = v32;
  LOBYTE(v30) = v32 | result[51] & 2;
  *(a2 + 6) = v30;
  LOBYTE(v30) = v30 & 0xFB | (4 * (result[52] & 1));
  *(a2 + 6) = v30;
  LOBYTE(v30) = (result[52] >> 1) & 0x10 | v30;
  *(a2 + 6) = v30;
  *(a2 + 6) = (result[55] >> 1) & 0x20 | v30;
  v33 = (result[7] >> 3) & 4;
  *(a2 + 7) = v33;
  v34 = result[8] & 2 | v33;
  *(a2 + 7) = v34;
  v35 = v34 & 0xFFFFFFBF | (((result[25] >> 3) & 1) << 6);
  *(a2 + 7) = v35;
  v36 = (result[25] >> 1) & 8 | v35;
  *(a2 + 7) = v36;
  LOBYTE(v36) = v36 & 0xFE | ((result[40] & 8) != 0);
  *(a2 + 7) = v36;
  LOBYTE(v36) = (result[46] >> 1) & 0x20 | v36;
  *(a2 + 7) = v36;
  LOBYTE(v36) = v36 & 0x7F | (result[47] >> 5 << 7);
  *(a2 + 7) = v36;
  *(a2 + 7) = (result[47] >> 3) & 0x10 | v36;
  v37 = result[24];
  *(a2 + 8) = (4 * v37) & 0x80;
  v38 = result[46] & 4 | (v37 >> 5 << 7);
  *(a2 + 8) = v38;
  v39 = (result[46] >> 2) & 0x20 | v38;
  *(a2 + 8) = v39;
  v40 = v39 | result[47] & 0x40;
  *(a2 + 8) = v40;
  v41 = (result[54] >> 4) & 8 | v40;
  *(a2 + 8) = v41;
  LOBYTE(v41) = v41 & 0xFD | (2 * (result[55] & 1));
  *(a2 + 8) = v41;
  LOBYTE(v41) = v41 & 0xEF | (16 * ((result[56] & 8) != 0));
  *(a2 + 8) = v41;
  *(a2 + 8) = ((result[56] & 0x10) != 0) | v41;
  v42 = *result & 4;
  *(a2 + 9) = v42;
  v43 = (*result >> 2) & 2 | v42;
  *(a2 + 9) = v43;
  v44 = v43 & 0xFFFFFFFE | (result[2] >> 6) & 1;
  *(a2 + 9) = v44;
  v45 = v44 & 0xFFFFFFDF | (32 * ((result[12] >> 1) & 1));
  *(a2 + 9) = v45;
  LOBYTE(v45) = v45 & 0xF7 | (8 * ((result[24] & 2) != 0));
  *(a2 + 9) = v45;
  LOBYTE(v45) = (result[24] >> 1) & 0x40 | v45;
  *(a2 + 9) = v45;
  LOBYTE(v45) = v45 | result[42] & 0x10;
  *(a2 + 9) = v45;
  *(a2 + 9) = result[57] & 0x80 | v45;
  v46 = result[6] << 7;
  *(a2 + 10) = v46;
  v47 = v46 & 0xFFFFFFBF | (((result[42] >> 5) & 1) << 6);
  *(a2 + 10) = v47;
  v48 = (result[42] >> 2) & 2 | v47;
  *(a2 + 10) = v48;
  v49 = v48 & 0xFFFFFFEF | (16 * ((result[54] >> 1) & 1));
  *(a2 + 10) = v49;
  v50 = v49 & 0xFFFFFFDF | (32 * ((result[57] >> 3) & 1));
  *(a2 + 10) = v50;
  LOBYTE(v50) = v50 | result[57] & 4;
  *(a2 + 10) = v50;
  LOBYTE(v50) = v50 & 0xFE | ((result[57] & 0x10) != 0);
  *(a2 + 10) = v50;
  *(a2 + 10) = (result[58] >> 3) & 8 | v50;
  v51 = result[5];
  *(a2 + 11) = (v51 & 0x40) != 0;
  v52 = ((v51 >> 6) | (16 * result[25])) & 0x11;
  *(a2 + 11) = v52;
  LOBYTE(v52) = v52 | result[26] & 2;
  *(a2 + 11) = v52;
  LOBYTE(v52) = v52 & 0xF7 | (8 * ((result[49] & 2) != 0));
  *(a2 + 11) = v52;
  LOBYTE(v52) = (result[49] >> 2) & 4 | v52;
  *(a2 + 11) = v52;
  LOBYTE(v52) = v52 | result[50] & 0x20;
  *(a2 + 11) = v52;
  v53 = v52 & 0x7F | (result[57] >> 6 << 7);
  *(a2 + 11) = v53;
  *(a2 + 11) = v53 & 0xBF | (((result[58] & 0x20) != 0) << 6);
  v54 = (8 * result[3]) & 0xFF80;
  *(a2 + 12) = (8 * result[3]) & 0x80;
  v55 = v54 & 0xFFFFFFBF | (((result[4] >> 3) & 1) << 6);
  *(a2 + 12) = v55;
  v56 = v55 & 0xFFFFFFDF | (32 * (result[26] & 1));
  *(a2 + 12) = v56;
  v57 = v56 & 0xFFFFFFF7 | (8 * (result[49] & 1));
  *(a2 + 12) = v57;
  v58 = (result[49] >> 1) & 0x10 | v57;
  *(a2 + 12) = v58;
  LOBYTE(v58) = v58 & 0xFE | ((result[50] & 4) != 0);
  *(a2 + 12) = v58;
  LOBYTE(v58) = (result[57] >> 4) & 2 | v58;
  *(a2 + 12) = v58;
  *(a2 + 12) = (result[58] >> 2) & 4 | v58;
  v59 = result[4];
  *(a2 + 13) = (v59 & 0x20) != 0;
  v60 = ((v59 >> 5) | (2 * result[14])) & 9;
  *(a2 + 13) = v60;
  v61 = (result[23] >> 3) & 0x12 | v60;
  *(a2 + 13) = v61;
  LOBYTE(v61) = v61 & 0xFB | (4 * ((result[38] & 2) != 0));
  *(a2 + 13) = v61;
  v62 = v61 & 0x7F | (result[39] >> 1 << 7);
  *(a2 + 13) = v62;
  LOBYTE(v62) = v62 & 0xDF | (32 * ((result[52] & 4) != 0));
  *(a2 + 13) = v62;
  *(a2 + 13) = (result[52] >> 1) & 0x40 | v62;
  LOBYTE(v62) = result[10];
  *(a2 + 14) = (8 * v62) & 0x40;
  LOBYTE(v62) = result[12] & 0x20 | (((v62 & 8) != 0) << 6);
  *(a2 + 14) = v62;
  v63 = v62 & 0x7F | (result[23] >> 5 << 7);
  *(a2 + 14) = v63;
  v64 = v63 | result[38] & 0x10;
  *(a2 + 14) = v64;
  v65 = (result[52] >> 4) & 4 | v64;
  *(a2 + 14) = v65;
  LOBYTE(v65) = v65 & 0xF7 | (8 * (result[53] & 1));
  *(a2 + 14) = v65;
  LOBYTE(v65) = v65 & 0xFE | ((result[53] & 2) != 0);
  *(a2 + 14) = v65;
  *(a2 + 14) = (result[53] >> 6) & 2 | v65;
  v66 = result[25] & 4;
  *(a2 + 15) = v66;
  v67 = result[40] & 2 | v66;
  *(a2 + 15) = v67;
  v68 = v67 & 0xFFFFFFBF | (((result[41] >> 4) & 1) << 6);
  *(a2 + 15) = v68;
  v69 = v68 | (result[42] >> 7);
  *(a2 + 15) = v69;
  v70 = (result[43] >> 1) & 8 | v69;
  *(a2 + 15) = v70;
  LOBYTE(v70) = v70 & 0xEF | (16 * ((result[48] & 8) != 0));
  *(a2 + 15) = v70;
  LOBYTE(v70) = v70 | result[48] & 0x80;
  *(a2 + 15) = v70;
  *(a2 + 15) = (result[48] >> 1) & 0x20 | v70;
  LOBYTE(v70) = result[11] & 0x10;
  *(a2 + 16) = v70;
  LOBYTE(v70) = v70 & 0xDF | (32 * ((result[12] & 4) != 0));
  *(a2 + 16) = v70;
  LOBYTE(v70) = v70 | result[12] & 0x40;
  *(a2 + 16) = v70;
  v71 = v70 & 0x7F | (result[24] >> 2 << 7);
  *(a2 + 16) = v71;
  v72 = (result[25] >> 2) & 8 | v71;
  *(a2 + 16) = v72;
  LOBYTE(v72) = v72 & 0xFD | (2 * (result[40] & 1));
  *(a2 + 16) = v72;
  LOBYTE(v72) = (result[42] >> 4) & 4 | v72;
  *(a2 + 16) = v72;
  *(a2 + 16) = ((result[48] & 0x20) != 0) | v72;
  v73 = (result[18] >> 4) & 2;
  *(a2 + 17) = v73;
  v74 = (result[25] >> 5) & 4 | v73;
  *(a2 + 17) = v74;
  v75 = v74 | (result[33] >> 7);
  *(a2 + 17) = v75;
  v76 = v75 & 0xFFFFFFDF | (32 * ((result[34] >> 4) & 1));
  *(a2 + 17) = v76;
  v77 = v76 & 0xFFFFFFF7 | (8 * ((result[41] >> 2) & 1));
  *(a2 + 17) = v77;
  LOBYTE(v77) = (16 * result[42]) & 0x50 | v77;
  *(a2 + 17) = v77;
  *(a2 + 17) = v77 & 0x7F | (((result[43] & 2) != 0) << 7);
  LOBYTE(v77) = (8 * result[4]) & 0x20;
  *(a2 + 18) = v77;
  LOBYTE(v77) = v77 & 0xEF | (16 * (result[5] & 1));
  *(a2 + 18) = v77;
  LOBYTE(v77) = v77 & 0xBF | (((result[12] & 8) != 0) << 6);
  *(a2 + 18) = v77;
  LOBYTE(v77) = (result[13] >> 3) & 8 | v77;
  *(a2 + 18) = v77;
  LOBYTE(v77) = (result[33] >> 4) & 4 | v77;
  *(a2 + 18) = v77;
  LOBYTE(v77) = v77 & 0x7F | (result[37] >> 1 << 7);
  *(a2 + 18) = v77;
  LOBYTE(v77) = v77 | result[42] & 2;
  *(a2 + 18) = v77;
  *(a2 + 18) = ((result[43] & 4) != 0) | v77;
  v78 = (result[12] >> 5) & 4;
  *(a2 + 19) = v78;
  v79 = v78 & 0xFFFFFFF7 | (8 * ((result[16] >> 1) & 1));
  *(a2 + 19) = v79;
  v80 = (result[38] >> 6) & 2 | v79;
  *(a2 + 19) = v80;
  LOBYTE(v80) = v80 & 0xFE | ((result[40] & 0x10) != 0);
  *(a2 + 19) = v80;
  LOBYTE(v80) = (result[41] >> 1) & 0x10 | v80;
  *(a2 + 19) = v80;
  v81 = v80 & 0x7F | (result[44] >> 2 << 7);
  *(a2 + 19) = v81;
  LOBYTE(v81) = v81 & 0xBF | (((result[50] & 0x10) != 0) << 6);
  *(a2 + 19) = v81;
  *(a2 + 19) = (16 * result[52]) & 0x20 | v81;
  v82 = result[13] << 7;
  *(a2 + 20) = v82;
  v83 = v82 & 0xFFFFFFBF | ((result[16] & 1) << 6);
  *(a2 + 20) = v83;
  v84 = v83 | (result[30] >> 7);
  *(a2 + 20) = v84;
  LOBYTE(v84) = v84 & 0xFD | (2 * (result[31] & 1));
  *(a2 + 20) = v84;
  LOBYTE(v84) = v84 & 0xDF | (32 * ((result[41] & 8) != 0));
  *(a2 + 20) = v84;
  LOBYTE(v84) = (result[44] >> 2) & 4 | v84;
  *(a2 + 20) = v84;
  LOBYTE(v84) = (result[54] >> 1) & 0x10 | v84;
  *(a2 + 20) = v84;
  *(a2 + 20) = (result[54] >> 3) & 8 | v84;
  LOBYTE(v84) = (8 * result[4]) & 0x10;
  *(a2 + 21) = v84;
  LOBYTE(v84) = v84 & 0xDF | (32 * ((result[5] & 2) != 0));
  *(a2 + 21) = v84;
  LOBYTE(v84) = (result[12] >> 1) & 8 | v84;
  *(a2 + 21) = v84;
  LOBYTE(v84) = (result[13] >> 1) & 0x40 | v84;
  *(a2 + 21) = v84;
  LOBYTE(v84) = v84 & 0xFE | result[39] & 1;
  *(a2 + 21) = v84;
  LOBYTE(v84) = result[40] & 0x80 | v84;
  *(a2 + 21) = v84;
  LOBYTE(v84) = (result[50] >> 2) & 2 | v84;
  *(a2 + 21) = v84;
  *(a2 + 21) = (result[51] >> 5) & 4 | v84;
  v85 = (result[1] >> 4) & 4;
  *(a2 + 22) = v85;
  v86 = v85 & 0xFFFFFFF7 | (8 * ((result[2] >> 2) & 1));
  *(a2 + 22) = v86;
  v87 = v86 & 0xFFFFFFEF | (16 * (result[9] & 1));
  *(a2 + 22) = v87;
  v88 = v87 | result[9] & 2;
  *(a2 + 22) = v88;
  v89 = result[21] & 0x60 | v88;
  *(a2 + 22) = v89;
  v90 = v89 & 0xFFFFFFFE | (result[37] >> 2) & 1;
  *(a2 + 22) = v90;
  *(a2 + 22) = v90 & 0x7F | (((result[46] & 2) != 0) << 7);
  v91 = (result[6] >> 6) & 2;
  *(a2 + 23) = v91;
  v92 = (result[7] >> 2) & 4 | v91;
  *(a2 + 23) = v92;
  v93 = v92 & 0xFFFFFFFE | (result[8] >> 6) & 1;
  *(a2 + 23) = v93;
  LOBYTE(v93) = v93 | (result[15] << 7);
  *(a2 + 23) = v93;
  LOBYTE(v93) = result[34] & 0x40 | v93;
  *(a2 + 23) = v93;
  LOBYTE(v93) = result[47] & 8 | v93;
  *(a2 + 23) = v93;
  LOBYTE(v93) = v93 & 0xEF | (16 * ((result[49] & 4) != 0));
  *(a2 + 23) = v93;
  *(a2 + 23) = (8 * result[54]) & 0x20 | v93;
  v94 = (result[14] >> 1) & 0x20;
  *(a2 + 24) = v94;
  v95 = v94 & 0xFFFFFFEF | (16 * (result[32] & 1));
  *(a2 + 24) = v95;
  v96 = v95 & 0xFFFFFFFE | (result[32] >> 1) & 1;
  *(a2 + 24) = v96;
  v97 = v96 & 0xFFFFFFBF | (((result[34] >> 5) & 1) << 6);
  *(a2 + 24) = v97;
  LOBYTE(v97) = v97 | (result[54] << 7);
  *(a2 + 24) = v97;
  LOBYTE(v97) = v97 & 0xF7 | (8 * (result[56] & 1));
  *(a2 + 24) = v97;
  LOBYTE(v97) = v97 | result[56] & 2;
  *(a2 + 24) = v97;
  *(a2 + 24) = (2 * result[57]) & 4 | v97;
  LOBYTE(v97) = (result[6] >> 3) & 8;
  *(a2 + 25) = v97;
  LOBYTE(v97) = (result[7] >> 1) & 4 | v97;
  *(a2 + 25) = v97;
  LOBYTE(v97) = (result[8] >> 3) & 0x10 | v97;
  *(a2 + 25) = v97;
  v98 = v97 & 0x7F | (result[20] >> 5 << 7);
  *(a2 + 25) = v98;
  v99 = (result[45] >> 2) & 0x20 | v98;
  *(a2 + 25) = v99;
  v100 = (result[47] >> 3) & 2 | v99;
  *(a2 + 25) = v100;
  LOBYTE(v100) = v100 & 0xBF | (((result[49] & 8) != 0) << 6);
  *(a2 + 25) = v100;
  *(a2 + 25) = v100 | result[57] & 1;
  v101 = *result;
  *(a2 + 26) = (2 * v101) & 0x80;
  v102 = (*result >> 6) & 2 | (v101 >> 6 << 7);
  *(a2 + 26) = v102;
  v103 = v102 & 0xFFFFFFFE | (result[1] >> 4) & 1;
  *(a2 + 26) = v103;
  v104 = v103 & 0xFFFFFFBF | ((result[3] & 1) << 6);
  *(a2 + 26) = v104;
  v105 = v104 & 0xFFFFFFFB | (4 * ((result[3] >> 1) & 1));
  *(a2 + 26) = v105;
  v106 = v105 & 0xFFFFFFDF | (32 * ((result[18] >> 2) & 1));
  *(a2 + 26) = v106;
  LOBYTE(v106) = v106 & 0xF7 | (8 * ((result[18] & 2) != 0));
  *(a2 + 26) = v106;
  *(a2 + 26) = (result[38] >> 2) & 0x10 | v106;
  v107 = *result & 0x20;
  *(a2 + 27) = v107;
  v108 = v107 & 0xFFFFFFFE | (result[1] >> 5) & 1;
  *(a2 + 27) = v108;
  v109 = v108 | result[2] & 0x10;
  *(a2 + 27) = v109;
  v110 = v109 & 0xFFFFFFBF | (((result[9] >> 4) & 1) << 6);
  *(a2 + 27) = v110;
  LOBYTE(v110) = v110 & 0xF7 | (8 * ((result[9] & 4) != 0));
  *(a2 + 27) = v110;
  LOBYTE(v110) = (result[20] >> 2) & 2 | v110;
  *(a2 + 27) = v110;
  LOBYTE(v110) = v110 & 0x7F | (result[36] >> 5 << 7);
  *(a2 + 27) = v110;
  *(a2 + 27) = (result[38] >> 3) & 4 | v110;
  v111 = result[15];
  *(a2 + 28) = (2 * v111) & 4;
  v112 = (result[17] >> 1) & 8 | (4 * ((v111 >> 1) & 1));
  *(a2 + 28) = v112;
  LOBYTE(v112) = v112 & 0xFE | ((result[39] & 8) != 0);
  *(a2 + 28) = v112;
  LOBYTE(v112) = (result[46] >> 1) & 0x10 | v112;
  *(a2 + 28) = v112;
  LOBYTE(v112) = (result[47] >> 1) & 2 | v112;
  *(a2 + 28) = v112;
  v113 = v112 & 0x7F | (result[51] >> 4 << 7);
  *(a2 + 28) = v113;
  LOBYTE(v113) = v113 & 0xBF | (((result[55] & 8) != 0) << 6);
  *(a2 + 28) = v113;
  *(a2 + 28) = (32 * (result[58] & 1)) | v113;
  v114 = result[14] & 0x80;
  *(a2 + 29) = v114;
  v115 = result[16] & 0x40 | v114;
  *(a2 + 29) = v115;
  v116 = (result[36] >> 6) & 2 | v115;
  *(a2 + 29) = v116;
  v117 = v116 & 0xFFFFFFFE | result[37] & 1;
  *(a2 + 29) = v117;
  v118 = v117 & 0xFFFFFFDF | (32 * ((result[46] >> 4) & 1));
  *(a2 + 29) = v118;
  v119 = (result[51] >> 3) & 4 | v118;
  *(a2 + 29) = v119;
  *(a2 + 29) = v119 & 0xE7 | (8 * ((result[58] >> 2) & 3));
  LOBYTE(v119) = *result & 0x10;
  *(a2 + 30) = v119;
  LOBYTE(v119) = result[2] & 0x20 | v119;
  *(a2 + 30) = v119;
  LOBYTE(v119) = v119 & 0xBF | (((result[9] & 8) != 0) << 6);
  *(a2 + 30) = v119;
  LOBYTE(v119) = (result[9] >> 2) & 8 | v119;
  *(a2 + 30) = v119;
  LOBYTE(v119) = v119 & 0x7F | (result[39] >> 2 << 7);
  *(a2 + 30) = v119;
  LOBYTE(v119) = v119 & 0xFE | result[47] & 1;
  *(a2 + 30) = v119;
  LOBYTE(v119) = result[55] & 2 | v119;
  *(a2 + 30) = v119;
  *(a2 + 30) = (2 * result[58]) & 4 | v119;
  LOBYTE(v119) = *result;
  *(a2 + 31) = 4 * (*result & 3);
  v120 = (result[5] >> 3) & 0x10 | (4 * (v119 & 3));
  *(a2 + 31) = v120;
  v121 = (result[5] >> 4) & 2 | v120;
  *(a2 + 31) = v121;
  v122 = v121 & 0xFFFFFFDF | (32 * ((result[16] >> 4) & 1));
  *(a2 + 31) = v122;
  v123 = (result[16] >> 1) & 0x40 | v122;
  *(a2 + 31) = v123;
  v124 = v123 & 0xFFFFFFFE | (result[36] >> 6) & 1;
  *(a2 + 31) = v124;
  *(a2 + 31) = v124 & 0x7F | (((result[43] & 8) != 0) << 7);
  v125 = (result[8] >> 3) & 6;
  *(a2 + 32) = v125;
  LOBYTE(v125) = v125 & 0xFE | ((result[11] & 8) != 0);
  *(a2 + 32) = v125;
  v126 = v125 & 0x7F | (result[20] >> 6 << 7);
  *(a2 + 32) = v126;
  v127 = (result[39] >> 1) & 0x40 | v126;
  *(a2 + 32) = v127;
  v128 = v127 | result[45] & 0x10;
  *(a2 + 32) = v128;
  v129 = (result[45] >> 3) & 8 | v128;
  *(a2 + 32) = v129;
  *(a2 + 32) = v129 & 0xDF | (32 * ((result[54] & 0x10) != 0));
  v130 = result[20];
  *(a2 + 33) = (2 * v130) & 0x20;
  v131 = (result[35] >> 1) & 0x10 | (32 * ((v130 >> 4) & 1));
  *(a2 + 33) = v131;
  v132 = v131 & 0xFFFFFFFE | (result[35] >> 4) & 1;
  *(a2 + 33) = v132;
  LOBYTE(v132) = v132 & 0xBF | (((result[39] & 0x20) != 0) << 6);
  *(a2 + 33) = v132;
  LOBYTE(v132) = v132 & 0x7F | (result[54] >> 3 << 7);
  *(a2 + 33) = v132;
  LOBYTE(v132) = (result[55] >> 2) & 0xC | v132;
  *(a2 + 33) = v132;
  *(a2 + 33) = (result[55] >> 6) & 2 | v132;
  LOBYTE(v132) = result[8] & 0xC;
  *(a2 + 34) = v132;
  LOBYTE(v132) = v132 & 0xEF | (16 * ((result[11] & 4) != 0));
  *(a2 + 34) = v132;
  v133 = v132 & 0x7F | (result[18] >> 4 << 7);
  *(a2 + 34) = v133;
  v134 = v133 & 0xFFFFFFDF | (32 * (result[43] & 1));
  *(a2 + 34) = v134;
  v135 = v134 & 0xFFFFFFBF | (((result[45] >> 1) & 1) << 6);
  *(a2 + 34) = v135;
  v136 = (result[45] >> 4) & 2 | v135;
  *(a2 + 34) = v136;
  *(a2 + 34) = v136 & 0xFE | ((result[55] & 4) != 0);
  v137 = result[1] & 0x80;
  *(a2 + 35) = v137;
  v138 = result[2] & 2 | v137;
  *(a2 + 35) = v138;
  v139 = (result[2] >> 1) & 0x40 | v138;
  *(a2 + 35) = v139;
  v140 = v139 & 0xFFFFFFFE | (result[2] >> 3) & 1;
  *(a2 + 35) = v140;
  LOBYTE(v140) = v140 | result[3] & 4;
  *(a2 + 35) = v140;
  LOBYTE(v140) = v140 & 0xDF | (32 * ((result[15] & 8) != 0));
  *(a2 + 35) = v140;
  LOBYTE(v140) = (result[15] >> 1) & 8 | v140;
  *(a2 + 35) = v140;
  *(a2 + 35) = (result[32] >> 1) & 0x10 | v140;
  v141 = result[2] & 1;
  *(a2 + 36) = v141;
  v142 = v141 & 0xFFFFFFEF | (16 * ((result[6] >> 2) & 1));
  *(a2 + 36) = v142;
  LOBYTE(v142) = v142 | result[6] & 0x20;
  *(a2 + 36) = v142;
  LOBYTE(v142) = result[11] & 0x40 | v142;
  *(a2 + 36) = v142;
  LOBYTE(v142) = v142 & 0xF7 | (8 * (result[14] & 1));
  *(a2 + 36) = v142;
  LOBYTE(v142) = (result[18] >> 2) & 2 | v142;
  *(a2 + 36) = v142;
  LOBYTE(v142) = v142 & 0x7F | (result[31] >> 4 << 7);
  *(a2 + 36) = v142;
  *(a2 + 36) = (result[32] >> 2) & 4 | v142;
  LOBYTE(v142) = result[19];
  *(a2 + 37) = 4 * (v142 & 1);
  LOBYTE(v120) = (2 * result[21]) & 8 | (4 * (v142 & 1));
  *(a2 + 37) = v120;
  LOBYTE(v120) = v120 & 0xFE | ((result[34] & 4) != 0);
  *(a2 + 37) = v120;
  LOBYTE(v142) = v120 | result[41] & 2;
  *(a2 + 37) = v142;
  LOBYTE(v142) = (result[43] >> 1) & 0x10 | v142;
  *(a2 + 37) = v142;
  LOBYTE(v142) = v142 | result[44] & 0x80;
  *(a2 + 37) = v142;
  LOBYTE(v142) = (result[49] >> 1) & 0x20 | v142;
  *(a2 + 37) = v142;
  *(a2 + 37) = ((result[50] & 1) << 6) | v142;
  v143 = result[19];
  *(a2 + 38) = (v143 << 6) & 0x80;
  v144 = (result[20] >> 1) & 0x40 | (v143 >> 1 << 7);
  *(a2 + 38) = v144;
  v145 = (result[36] >> 2) & 2 | v144;
  *(a2 + 38) = v145;
  v146 = v145 & 0xFFFFFFFE | (result[36] >> 4) & 1;
  *(a2 + 38) = v146;
  v147 = (result[43] >> 1) & 0x20 | v146;
  *(a2 + 38) = v147;
  v148 = (result[44] >> 3) & 4 | v147;
  *(a2 + 38) = v148;
  LOBYTE(v148) = v148 & 0xEF | (16 * ((result[52] & 8) != 0));
  *(a2 + 38) = v148;
  *(a2 + 38) = (result[52] >> 1) & 8 | v148;
  LOBYTE(v148) = (16 * result[6]) & 0x20;
  *(a2 + 39) = v148;
  LOBYTE(v148) = v148 & 0xEF | (16 * (result[7] & 1));
  *(a2 + 39) = v148;
  LOBYTE(v148) = v148 & 0xF7 | (8 * (result[12] & 1));
  *(a2 + 39) = v148;
  LOBYTE(v148) = v148 & 0xBF | (((result[14] & 2) != 0) << 6);
  *(a2 + 39) = v148;
  v149 = v148 & 0x7F | (result[34] >> 3 << 7);
  *(a2 + 39) = v149;
  LOBYTE(v149) = v149 & 0xFE | ((result[40] & 0x40) != 0);
  *(a2 + 39) = v149;
  LOBYTE(v149) = (result[49] >> 5) & 4 | v149;
  *(a2 + 39) = v149;
  *(a2 + 39) = v149 | result[50] & 2;
  v150 = (result[4] >> 3) & 8;
  *(a2 + 40) = v150;
  v151 = (result[4] >> 5) & 4 | v150;
  *(a2 + 40) = v151;
  v152 = (result[10] >> 3) & 0x10 | v151;
  *(a2 + 40) = v152;
  v153 = (result[10] >> 5) & 2 | v152;
  *(a2 + 40) = v153;
  v154 = v153 & 0xFFFFFFDF | (32 * ((result[17] >> 2) & 1));
  *(a2 + 40) = v154;
  v155 = v154 & 0xFFFFFFBF | (((result[17] >> 5) & 1) << 6);
  *(a2 + 40) = v155;
  LOBYTE(v155) = v155 & 0xFE | ((result[31] & 0x40) != 0);
  *(a2 + 40) = v155;
  *(a2 + 40) = v155 | result[35] & 0x80;
  v156 = result[13];
  *(a2 + 41) = (2 * v156) & 4;
  v157 = (result[14] >> 2) & 2 | (4 * ((v156 >> 1) & 1));
  *(a2 + 41) = v157;
  LOBYTE(v157) = v157 & 0xFE | ((result[16] & 0x20) != 0);
  *(a2 + 41) = v157;
  v158 = v157 & 0x7F | (result[22] >> 5 << 7);
  *(a2 + 41) = v158;
  v159 = v158 | result[37] & 0x40;
  *(a2 + 41) = v159;
  v160 = v159 & 0xFFFFFFEF | (16 * ((result[38] >> 2) & 1));
  *(a2 + 41) = v160;
  LOBYTE(v160) = v160 & 0xF7 | (8 * (result[41] & 1));
  *(a2 + 41) = v160;
  *(a2 + 41) = (32 * (result[46] & 1)) | v160;
  v161 = result[22];
  *(a2 + 42) = (2 * v161) & 0x20;
  v162 = (result[32] >> 2) & 0x10 | (32 * ((v161 >> 4) & 1));
  *(a2 + 42) = v162;
  v163 = v162 | (result[32] >> 7);
  *(a2 + 42) = v163;
  v164 = (result[37] >> 1) & 0x40 | v163;
  *(a2 + 42) = v164;
  LOBYTE(v164) = v164 & 0xF7 | (8 * ((result[44] & 2) != 0));
  *(a2 + 42) = v164;
  LOBYTE(v164) = (result[44] >> 2) & 2 | v164;
  *(a2 + 42) = v164;
  LOBYTE(v164) = v164 | result[45] & 4;
  *(a2 + 42) = v164;
  *(a2 + 42) = (16 * result[46]) & 0x80 | v164;
  v165 = result[13] & 4;
  *(a2 + 43) = v165;
  v166 = (result[14] >> 2) & 8 | v165;
  *(a2 + 43) = v166;
  LOBYTE(v166) = v166 & 0xEF | (16 * ((result[17] & 8) != 0));
  *(a2 + 43) = v166;
  v167 = v166 & 0x7F | (result[20] >> 2 << 7);
  *(a2 + 43) = v167;
  LOBYTE(v167) = v167 & 0xDF | (32 * (result[36] & 1));
  *(a2 + 43) = v167;
  LOBYTE(v167) = v167 & 0xBF | (((result[38] & 8) != 0) << 6);
  *(a2 + 43) = v167;
  LOBYTE(v167) = (result[40] >> 4) & 2 | v167;
  *(a2 + 43) = v167;
  *(a2 + 43) = ((result[45] & 8) != 0) | v167;
  v168 = result[9] >> 5;
  *(a2 + 44) = v168 & 4;
  LOBYTE(v168) = (v168 | (result[10] << 6)) & 0x7C;
  *(a2 + 44) = v168;
  LOBYTE(v168) = v168 | (result[10] >> 2 << 7);
  *(a2 + 44) = v168;
  LOBYTE(v168) = v168 | result[10] & 2;
  *(a2 + 44) = v168;
  LOBYTE(v168) = ((result[10] & 0x20) != 0) | v168;
  *(a2 + 44) = v168;
  LOBYTE(v168) = (4 * result[16]) & 0x20 | v168;
  *(a2 + 44) = v168;
  LOBYTE(v168) = (2 * result[16]) & 8 | v168;
  *(a2 + 44) = v168;
  *(a2 + 44) = (4 * result[30]) & 0x10 | v168;
  v169 = result[10];
  *(a2 + 45) = (v169 & 0x10) != 0;
  v170 = (result[17] >> 1) & 0x20 | (v169 >> 4) & 1;
  *(a2 + 45) = v170;
  v171 = (result[19] >> 1) & 0x40 | v170;
  *(a2 + 45) = v171;
  LOBYTE(v171) = v171 & 0xEF | (16 * (result[20] & 1));
  *(a2 + 45) = v171;
  LOBYTE(v171) = v171 | result[20] & 2;
  *(a2 + 45) = v171;
  LOBYTE(v171) = v171 & 0xFB | (4 * (result[30] & 1));
  *(a2 + 45) = v171;
  LOBYTE(v171) = v171 & 0x7F | (result[33] >> 1 << 7);
  *(a2 + 45) = v171;
  *(a2 + 45) = (8 * (result[33] & 1)) | v171;
  LOBYTE(v171) = result[1];
  *(a2 + 46) = (v171 & 1) << 6;
  LOBYTE(v170) = (8 * result[5]) & 0x20 | ((v171 & 1) << 6);
  *(a2 + 46) = v170;
  LOBYTE(v171) = (result[5] >> 2) & 2 | v170;
  *(a2 + 46) = v171;
  v172 = v171 & 0x7F | (result[31] >> 5 << 7);
  *(a2 + 46) = v172;
  v173 = v172 & 0xFFFFFFFE | (result[35] >> 3) & 1;
  *(a2 + 46) = v173;
  v174 = (result[50] >> 2) & 0x10 | v173;
  *(a2 + 46) = v174;
  LOBYTE(v174) = v174 & 0xFB | (4 * (result[51] & 1));
  *(a2 + 46) = v174;
  *(a2 + 46) = (2 * result[56]) & 8 | v174;
  LOBYTE(v174) = result[8];
  *(a2 + 47) = 32 * (v174 & 1);
  v175 = (result[21] >> 7) & 0xFFFFFFDF | (32 * (v174 & 1));
  *(a2 + 47) = v175;
  LOBYTE(v175) = v175 & 0xFB | (4 * (result[22] & 1));
  *(a2 + 47) = v175;
  LOBYTE(v174) = v175 | result[22] & 2;
  *(a2 + 47) = v174;
  LOBYTE(v174) = v174 & 0xEF | (16 * ((result[31] & 2) != 0));
  *(a2 + 47) = v174;
  LOBYTE(v174) = (result[31] >> 4) & 8 | v174;
  *(a2 + 47) = v174;
  LOBYTE(v174) = (32 * result[48]) & 0x40 | v174;
  *(a2 + 47) = v174;
  *(a2 + 47) = (8 * result[53]) & 0x80 | v174;
  v176 = result[48] & 1;
  *(a2 + 48) = v176;
  v177 = v176 | (4 * ((result[3] >> 3) & 1));
  *(a2 + 48) = v177;
  v178 = (result[7] >> 6) & 2 | v177;
  *(a2 + 48) = v178;
  v179 = (result[24] >> 2) & 0x10 | v178;
  *(a2 + 48) = v179;
  LOBYTE(v179) = v179 | result[25] & 0x40;
  *(a2 + 48) = v179;
  LOBYTE(v179) = v179 & 0xDF | (32 * ((result[28] & 8) != 0));
  *(a2 + 48) = v179;
  LOBYTE(v179) = v179 & 0x7F | (result[29] >> 6 << 7);
  *(a2 + 48) = v179;
  *(a2 + 48) = (result[29] >> 2) & 8 | v179;
  LOBYTE(v179) = result[9] & 0x40;
  *(a2 + 49) = v179;
  LOBYTE(v179) = result[13] & 0x20 | v179;
  *(a2 + 49) = v179;
  LOBYTE(v179) = (result[13] >> 3) & 2 | v179;
  *(a2 + 49) = v179;
  LOBYTE(v179) = v179 & 0x7F | (result[26] >> 6 << 7);
  *(a2 + 49) = v179;
  LOBYTE(v179) = v179 | (result[26] >> 7);
  *(a2 + 49) = v179;
  LOBYTE(v179) = (result[41] >> 2) & 0x10 | v179;
  *(a2 + 49) = v179;
  LOBYTE(v179) = (result[41] >> 5) & 4 | v179;
  *(a2 + 49) = v179;
  *(a2 + 49) = (4 * result[47]) & 8 | v179;
  v180 = (result[21] >> 3) & 3;
  *(a2 + 50) = v180;
  v181 = v180 & 0xFFFFFFFB | (4 * (result[27] & 1));
  *(a2 + 50) = v181;
  v182 = (result[27] >> 1) & 0x20 | v181;
  *(a2 + 50) = v182;
  LOBYTE(v182) = v182 & 0xEF | (16 * ((result[32] & 4) != 0));
  *(a2 + 50) = v182;
  LOBYTE(v182) = v182 | result[32] & 8;
  *(a2 + 50) = v182;
  LOBYTE(v182) = v182 & 0x7F | (result[56] >> 6 << 7);
  *(a2 + 50) = v182;
  *(a2 + 50) = (result[56] >> 1) & 0x40 | v182;
  v183 = result[1] & 6;
  *(a2 + 51) = v183;
  v184 = v183 & 0xFFFFFFDF | (32 * ((result[26] >> 2) & 1));
  *(a2 + 51) = v184;
  v185 = v184 & 0xFFFFFFEF | (16 * ((result[26] >> 3) & 1));
  *(a2 + 51) = v185;
  v186 = v185 & 0xFFFFFFFE | (result[27] >> 5) & 1;
  *(a2 + 51) = v186;
  v187 = v186 & 0xFFFFFFBF | (((result[28] >> 1) & 1) << 6);
  *(a2 + 51) = v187;
  v188 = (result[28] >> 1) & 8 | v187;
  *(a2 + 51) = v188;
  *(a2 + 51) = v188 & 0x7F | (((result[29] & 4) != 0) << 7);
  LOBYTE(v188) = result[6];
  *(a2 + 52) = (4 * v188) & 0x60;
  LOBYTE(v188) = (result[28] >> 6) & 2 | (4 * v188) & 0x62;
  *(a2 + 52) = v188;
  v189 = v188 & 0x7F | (result[29] >> 3 << 7);
  *(a2 + 52) = v189;
  v190 = v189 & 0xFFFFFFEF | (16 * ((result[29] >> 1) & 1));
  *(a2 + 52) = v190;
  LOBYTE(v190) = v190 & 0xFE | result[29] & 1;
  *(a2 + 52) = v190;
  LOBYTE(v190) = v190 & 0xF7 | (8 * ((result[51] & 4) != 0));
  *(a2 + 52) = v190;
  *(a2 + 52) = (result[51] >> 1) & 4 | v190;
  LOBYTE(v190) = result[53] & 0x40;
  *(a2 + 53) = v190;
  LOBYTE(v190) = result[3] & 0x20 | v190;
  *(a2 + 53) = v190;
  LOBYTE(v190) = (result[23] >> 4) & 4 | v190;
  *(a2 + 53) = v190;
  LOBYTE(v190) = v190 | result[24] & 0x11;
  *(a2 + 53) = v190;
  LOBYTE(v190) = (result[28] >> 5) & 2 | v190;
  *(a2 + 53) = v190;
  LOBYTE(v190) = (result[29] >> 1) & 8 | v190;
  *(a2 + 53) = v190;
  *(a2 + 53) = (4 * result[56]) & 0x80 | v190;
  LOBYTE(v190) = (result[1] >> 1) & 4;
  *(a2 + 54) = v190;
  LOBYTE(v190) = (result[3] >> 6) & 2 | v190;
  *(a2 + 54) = v190;
  v191 = v190 & 0x7F | (result[23] >> 3 << 7);
  *(a2 + 54) = v191;
  v192 = v191 & 0xFFFFFFF7 | (8 * ((result[23] >> 2) & 1));
  *(a2 + 54) = v192;
  v193 = v192 & 0xFFFFFFBF | (((result[30] >> 4) & 1) << 6);
  *(a2 + 54) = v193;
  v194 = v193 & 0xFFFFFFEF | (16 * ((result[30] >> 3) & 1));
  *(a2 + 54) = v194;
  LOBYTE(v194) = v194 & 0xDF | (32 * ((result[31] & 8) != 0));
  *(a2 + 54) = v194;
  *(a2 + 54) = ((result[53] & 0x20) != 0) | v194;
  v195 = result[7];
  *(a2 + 55) = (16 * v195) & 0x40;
  v196 = (result[11] >> 2) & 0x20 | (((v195 >> 2) & 1) << 6);
  *(a2 + 55) = v196;
  v197 = (result[11] >> 4) & 2 | v196;
  *(a2 + 55) = v197;
  v198 = v197 & 0xFFFFFFFE | (result[22] >> 3) & 1;
  *(a2 + 55) = v198;
  v199 = v198 | (result[28] << 7);
  *(a2 + 55) = v199;
  v200 = (result[44] >> 2) & 0x10 | v199;
  *(a2 + 55) = v200;
  LOBYTE(v200) = v200 & 0xFB | (4 * (result[45] & 1));
  *(a2 + 55) = v200;
  *(a2 + 55) = (result[50] >> 4) & 8 | v200;
  v201 = (result[22] >> 2) & 0x10;
  *(a2 + 56) = v201;
  v202 = (result[22] >> 4) & 8 | v201;
  *(a2 + 56) = v202;
  v203 = v202 & 0xFFFFFFDF | (32 * ((result[27] >> 4) & 1));
  *(a2 + 56) = v203;
  v204 = (result[27] >> 5) & 4 | v203;
  *(a2 + 56) = v204;
  v205 = (result[29] >> 6) & 2 | v204;
  *(a2 + 56) = v205;
  LOBYTE(v205) = v205 & 0xFE | ((result[30] & 2) != 0);
  *(a2 + 56) = v205;
  LOBYTE(v205) = v205 & 0x7F | (result[53] >> 2 << 7);
  *(a2 + 56) = v205;
  *(a2 + 56) = (8 * result[53]) & 0x40 | v205;
  v206 = (result[3] >> 4) & 4;
  *(a2 + 57) = v206;
  LOBYTE(v206) = v206 & 0xFD | (2 * (result[4] & 1));
  *(a2 + 57) = v206;
  v207 = v206 & 0x7F | (result[23] >> 1 << 7);
  *(a2 + 57) = v207;
  LOBYTE(v207) = v207 & 0xF7 | (8 * (result[23] & 1));
  *(a2 + 57) = v207;
  LOBYTE(v207) = v207 & 0xFE | ((result[27] & 8) != 0);
  *(a2 + 57) = v207;
  LOBYTE(v207) = v207 | result[30] & 0x40;
  *(a2 + 57) = v207;
  LOBYTE(v207) = (result[30] >> 1) & 0x10 | v207;
  *(a2 + 57) = v207;
  *(a2 + 57) = (8 * result[31]) & 0x20 | v207;
  v208 = result[7] & 0x40;
  *(a2 + 58) = v208;
  v209 = v208 & 0xFFFFFFDF | (32 * ((result[11] >> 1) & 1));
  *(a2 + 58) = v209;
  v210 = v209 & 0xFFFFFFFD | (2 * (result[11] & 1));
  *(a2 + 58) = v210;
  v211 = v210 & 0xFFFFFFFE | (result[22] >> 2) & 1;
  *(a2 + 58) = v211;
  v212 = (result[43] >> 3) & 0x10 | v211;
  *(a2 + 58) = v212;
  LOBYTE(v212) = v212 & 0xFB | (4 * (result[44] & 1));
  *(a2 + 58) = v212;
  *(a2 + 58) = v212 & 0xF7 | (8 * ((result[48] & 4) != 0));
  *(a2 + 59) = 0;
  *(a2 + 63) = 0;
  return result;
}

void **sub_1E5438B30(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = v3 - 552;
        sub_1E5427FA8((v3 - 312));
        v3 = v5;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_1E5438B98(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v5);
    do
    {
      *v8 = *v7;
      v9 = *(v7 + 16);
      v10 = *(v7 + 32);
      v11 = *(v7 + 48);
      *(v8 + 57) = *(v7 + 57);
      v8[2] = v10;
      v8[3] = v11;
      v8[1] = v9;
      v8[5] = *(v7 + 80);
      *(v7 + 80) = 0;
      *(v7 + 88) = 0;
      v8[6] = *(v7 + 96);
      *(v7 + 96) = 0;
      *(v7 + 104) = 0;
      v7 += 112;
      v8 += 7;
    }

    while (v7 != v5);
    while (1)
    {
      v12 = *(v4 + 104);
      if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v12->__on_zero_shared)(v12);
        std::__shared_weak_count::__release_weak(v12);
        v13 = *(v4 + 88);
        if (v13)
        {
LABEL_9:
          if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v13->__on_zero_shared)(v13);
            std::__shared_weak_count::__release_weak(v13);
          }
        }
      }

      else
      {
        v13 = *(v4 + 88);
        if (v13)
        {
          goto LABEL_9;
        }
      }

      v4 += 112;
      if (v4 == v5)
      {
        v4 = *a1;
        break;
      }
    }
  }

  a2[1] = v6;
  *a1 = v6;
  a1[1] = v4;
  a2[1] = v4;
  v14 = a1[1];
  a1[1] = a2[2];
  a2[2] = v14;
  v15 = a1[2];
  a1[2] = a2[3];
  a2[3] = v15;
  *a2 = a2[1];
}

uint64_t sub_1E5438D20(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 112;
    v4 = *(i - 8);
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v5 = *(i - 24);
      if (v5)
      {
LABEL_7:
        if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }
      }
    }

    else
    {
      v5 = *(i - 24);
      if (v5)
      {
        goto LABEL_7;
      }
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1E5438E20(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x249249249249249)
  {
    sub_1E5415338();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 4)) >= 0x124924924924924)
  {
    v5 = 0x249249249249249;
  }

  else
  {
    v5 = v3;
  }

  v21 = a1;
  if (v5)
  {
    if (v5 <= 0x249249249249249)
    {
      operator new();
    }

    sub_1E53E5340();
  }

  v6 = 112 * v2;
  __p = 0;
  v18 = v6;
  v7 = *(a2 + 48);
  *(v6 + 32) = *(a2 + 32);
  *(v6 + 48) = v7;
  *(v6 + 57) = *(a2 + 57);
  v8 = *(a2 + 16);
  *v6 = *a2;
  *(v6 + 16) = v8;
  v9 = *(a2 + 80);
  v10 = *(a2 + 96);
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(v6 + 80) = v9;
  *(v6 + 96) = v10;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  v19 = 112 * v2 + 112;
  v20 = 0;
  sub_1E5438B98(a1, &__p);
  v11 = a1[1];
  v12 = v18;
  v13 = v19;
  while (v19 != v12)
  {
    v19 = v13 - 112;
    v14 = *(v13 - 8);
    if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v14->__on_zero_shared)(v14);
      std::__shared_weak_count::__release_weak(v14);
      v15 = *(v13 - 24);
      if (v15)
      {
LABEL_16:
        if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v15->__on_zero_shared)(v15);
          std::__shared_weak_count::__release_weak(v15);
        }
      }
    }

    else
    {
      v15 = *(v13 - 24);
      if (v15)
      {
        goto LABEL_16;
      }
    }

    v13 = v19;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v11;
}

void sub_1E5439028(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1E5438D20(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1E543903C(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x249249249249249)
  {
    sub_1E5415338();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 4)) >= 0x124924924924924)
  {
    v5 = 0x249249249249249;
  }

  else
  {
    v5 = v3;
  }

  v21 = a1;
  if (v5)
  {
    if (v5 <= 0x249249249249249)
    {
      operator new();
    }

    sub_1E53E5340();
  }

  v6 = 112 * v2;
  __p = 0;
  v18 = v6;
  v7 = *(a2 + 48);
  *(v6 + 32) = *(a2 + 32);
  *(v6 + 48) = v7;
  *(v6 + 57) = *(a2 + 57);
  v8 = *(a2 + 16);
  *v6 = *a2;
  *(v6 + 16) = v8;
  v9 = *(a2 + 80);
  v10 = *(a2 + 96);
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(v6 + 80) = v9;
  *(v6 + 96) = v10;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  v19 = 112 * v2 + 112;
  v20 = 0;
  sub_1E5438B98(a1, &__p);
  v11 = a1[1];
  v12 = v18;
  v13 = v19;
  while (v19 != v12)
  {
    v19 = v13 - 112;
    v14 = *(v13 - 8);
    if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v14->__on_zero_shared)(v14);
      std::__shared_weak_count::__release_weak(v14);
      v15 = *(v13 - 24);
      if (v15)
      {
LABEL_16:
        if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v15->__on_zero_shared)(v15);
          std::__shared_weak_count::__release_weak(v15);
        }
      }
    }

    else
    {
      v15 = *(v13 - 24);
      if (v15)
      {
        goto LABEL_16;
      }
    }

    v13 = v19;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v11;
}

void sub_1E5439244(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1E5438D20(va);
  _Unwind_Resume(a1);
}

void sub_1E5439258(void **a1, unint64_t a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (0xF128CFC4A33F128DLL * (&v3[-v4] >> 3) >= a2)
  {
    if (a2)
    {
      v9 = v4 + 552 * a2;
      v10 = 552 * a2;
      do
      {
        sub_1E54395B8(v4);
        v4 += 552;
        v10 -= 552;
      }

      while (v10);
      v4 = v9;
    }

    a1[1] = v4;
  }

  else
  {
    v5 = 0xF128CFC4A33F128DLL * ((v4 - *a1) >> 3);
    if (v5 + a2 > 0x76B981DAE6076BLL)
    {
      sub_1E5415338();
    }

    v6 = 0xF128CFC4A33F128DLL * ((v3 - *a1) >> 3);
    v7 = 2 * v6;
    if (2 * v6 <= v5 + a2)
    {
      v7 = v5 + a2;
    }

    if (v6 >= 0x3B5CC0ED7303B5)
    {
      v8 = 0x76B981DAE6076BLL;
    }

    else
    {
      v8 = v7;
    }

    if (v8)
    {
      if (v8 <= 0x76B981DAE6076BLL)
      {
        operator new();
      }

      sub_1E53E5340();
    }

    v11 = 552 * v5;
    v36 = v11;
    v12 = 552 * a2;
    v13 = v11 + 552 * a2;
    do
    {
      sub_1E54395B8(v11);
      v11 += 552;
      v12 -= 552;
    }

    while (v12);
    v14 = *a1;
    v15 = a1[1];
    v16 = v36 + *a1 - v15;
    if (v15 != *a1)
    {
      v17 = *a1;
      v18 = v36 + *a1 - v15;
      do
      {
        v19 = *v17;
        v20 = *(v17 + 2);
        *(v18 + 16) = *(v17 + 1);
        *(v18 + 32) = v20;
        *v18 = v19;
        v21 = *(v17 + 3);
        v22 = *(v17 + 4);
        v23 = *(v17 + 6);
        *(v18 + 80) = *(v17 + 5);
        *(v18 + 96) = v23;
        *(v18 + 48) = v21;
        *(v18 + 64) = v22;
        v24 = *(v17 + 7);
        v25 = *(v17 + 8);
        v26 = *(v17 + 10);
        *(v18 + 144) = *(v17 + 9);
        *(v18 + 160) = v26;
        *(v18 + 112) = v24;
        *(v18 + 128) = v25;
        v27 = *(v17 + 11);
        v28 = *(v17 + 12);
        v29 = *(v17 + 14);
        *(v18 + 208) = *(v17 + 13);
        *(v18 + 224) = v29;
        *(v18 + 176) = v27;
        *(v18 + 192) = v28;
        *(v18 + 240) = 0;
        *(v18 + 248) = 0;
        *(v18 + 256) = 0;
        *(v18 + 240) = *(v17 + 15);
        *(v18 + 256) = *(v17 + 32);
        *(v17 + 30) = 0;
        *(v17 + 31) = 0;
        *(v17 + 32) = 0;
        *(v18 + 264) = 0;
        *(v18 + 272) = 0;
        *(v18 + 280) = 0;
        *(v18 + 264) = *(v17 + 33);
        *(v18 + 272) = *(v17 + 17);
        *(v17 + 33) = 0;
        *(v17 + 34) = 0;
        *(v17 + 35) = 0;
        *(v18 + 288) = 0;
        *(v18 + 296) = 0;
        *(v18 + 304) = 0;
        *(v18 + 288) = *(v17 + 18);
        *(v18 + 304) = *(v17 + 38);
        *(v17 + 36) = 0;
        *(v17 + 37) = 0;
        *(v17 + 38) = 0;
        *(v18 + 312) = 0;
        *(v18 + 320) = 0;
        *(v18 + 328) = 0;
        *(v18 + 312) = *(v17 + 39);
        *(v18 + 320) = *(v17 + 20);
        *(v17 + 39) = 0;
        *(v17 + 40) = 0;
        *(v17 + 41) = 0;
        *(v18 + 336) = 0;
        *(v18 + 344) = 0;
        *(v18 + 352) = 0;
        *(v18 + 336) = *(v17 + 21);
        *(v18 + 352) = *(v17 + 44);
        *(v17 + 42) = 0;
        *(v17 + 43) = 0;
        *(v17 + 44) = 0;
        *(v18 + 360) = 0;
        *(v18 + 368) = 0;
        *(v18 + 376) = 0;
        *(v18 + 360) = *(v17 + 45);
        *(v18 + 368) = *(v17 + 23);
        *(v17 + 45) = 0;
        *(v17 + 46) = 0;
        *(v17 + 47) = 0;
        *(v18 + 384) = 0;
        *(v18 + 392) = 0;
        *(v18 + 400) = 0;
        *(v18 + 384) = *(v17 + 24);
        *(v18 + 400) = *(v17 + 50);
        *(v17 + 48) = 0;
        *(v17 + 49) = 0;
        *(v17 + 50) = 0;
        *(v18 + 408) = 0;
        *(v18 + 416) = 0;
        *(v18 + 424) = 0;
        *(v18 + 408) = *(v17 + 51);
        *(v18 + 416) = *(v17 + 26);
        *(v17 + 52) = 0;
        *(v17 + 53) = 0;
        *(v17 + 51) = 0;
        v31 = *(v17 + 32);
        v30 = *(v17 + 33);
        v32 = *(v17 + 31);
        *(v18 + 544) = *(v17 + 68);
        *(v18 + 512) = v31;
        *(v18 + 528) = v30;
        *(v18 + 496) = v32;
        v33 = *(v17 + 27);
        v34 = *(v17 + 28);
        v35 = *(v17 + 30);
        *(v18 + 464) = *(v17 + 29);
        *(v18 + 480) = v35;
        *(v18 + 432) = v33;
        *(v18 + 448) = v34;
        v17 += 552;
        v18 += 552;
      }

      while (v17 != v15);
      do
      {
        sub_1E5427FA8((v14 + 240));
        v14 += 552;
      }

      while (v14 != v15);
      v14 = *a1;
    }

    *a1 = v16;
    a1[1] = v13;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }
}

void sub_1E54395A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1E54397B4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1E54395B8(uint64_t a1)
{
  *(a1 + 240) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 256) = 0u;
  sub_1E54151E4(a1 + 240, 0x40uLL);
  v2 = *(a1 + 264);
  v3 = *(a1 + 272) - v2;
  if ((v3 >> 2) >= 0x40)
  {
    if (v3 != 256)
    {
      *(a1 + 272) = v2 + 256;
    }
  }

  else
  {
    sub_1E54151E4(a1 + 264, 64 - (v3 >> 2));
  }

  v4 = *(a1 + 288);
  v5 = *(a1 + 296) - v4;
  if ((v5 >> 2) >= 0x40)
  {
    if (v5 != 256)
    {
      *(a1 + 296) = v4 + 256;
    }
  }

  else
  {
    sub_1E54151E4(a1 + 288, 64 - (v5 >> 2));
  }

  v6 = *(a1 + 312);
  v7 = *(a1 + 320) - v6;
  if ((v7 >> 2) >= 0x40)
  {
    if (v7 != 256)
    {
      *(a1 + 320) = v6 + 256;
    }
  }

  else
  {
    sub_1E54151E4(a1 + 312, 64 - (v7 >> 2));
  }

  v8 = *(a1 + 336);
  v9 = *(a1 + 344) - v8;
  if ((v9 >> 2) >= 0x40)
  {
    if (v9 != 256)
    {
      *(a1 + 344) = v8 + 256;
    }
  }

  else
  {
    sub_1E54151E4(a1 + 336, 64 - (v9 >> 2));
  }

  v10 = *(a1 + 360);
  v11 = *(a1 + 368) - v10;
  if ((v11 >> 2) >= 0x40)
  {
    if (v11 != 256)
    {
      *(a1 + 368) = v10 + 256;
    }
  }

  else
  {
    sub_1E54151E4(a1 + 360, 64 - (v11 >> 2));
  }

  v12 = *(a1 + 384);
  v13 = *(a1 + 392) - v12;
  if ((v13 >> 2) >= 0x40)
  {
    if (v13 != 256)
    {
      *(a1 + 392) = v12 + 256;
    }
  }

  else
  {
    sub_1E54151E4(a1 + 384, 64 - (v13 >> 2));
  }

  v14 = *(a1 + 408);
  v15 = *(a1 + 416) - v14;
  if ((v15 >> 2) < 0x40)
  {
    sub_1E54151E4(a1 + 408, 64 - (v15 >> 2));
    return a1;
  }

  if (v15 == 256)
  {
    return a1;
  }

  *(a1 + 416) = v14 + 256;
  return a1;
}

uint64_t sub_1E54397B4(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 552;
    sub_1E5427FA8(i - 312);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

BOOL sub_1E543980C(_DWORD *a1, uint64_t a2)
{
  v2 = *(a2 + 50);
  if (v2 <= 6 && a1[5] <= v2)
  {
    v4 = *a2;
    if (*a2 <= *a1)
    {
      v5 = *(a2 + 4);
      if (v5 <= a1[1])
      {
        v6 = 0;
        v7 = *(a2 + 14);
        v8 = *(a2 + 18);
        v9 = *(a2 + 12);
        v10 = *(a2 + 16);
        v12 = v5 >= v10 && v9 <= v10 && v7 <= v8;
        if (!v12 || v9 < 0 || v7 < 0 || v4 < v8)
        {
          return v6;
        }

        if (v4 >> (v2 - 1) >= a1[2] && v5 >> (v2 - 1) >= a1[3] && a1[10] >= *(a2 + 46))
        {
          v13 = *(a2 + 24);
          if (*(a2 + 28) <= v13)
          {
            if (*(a2 + 42) == 1)
            {
              v6 = 0;
              v14 = *(a2 + 40);
              if (v5 < 2 * v14)
              {
                return v6;
              }

              v15 = *(a2 + 38);
              if (2 * v15 > v4 || a1[6] > v15 || a1[8] < v15 || a1[7] > v14 || a1[9] < v14)
              {
                return v6;
              }
            }

            if ((*(a2 + 68) & 0xFD) != 0)
            {
              return v13 <= a1[14];
            }
          }
        }
      }
    }
  }

  return 0;
}

void sub_1E5439938(uint64_t a1, int *a2, int a3, unint64_t *a4)
{
  v8 = *(a2 + 19);
  v9 = *(a1 + 24) <= v8 && *(a1 + 32) >= v8;
  if (!v9 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwKeyConfigurationUtils.cpp", 159, "(input_cfg.numberOfBinsHardwareX >= hal.minNumberOfBinsHardwareX && input_cfg.numberOfBinsHardwareX <= hal.maxNumberOfBinsHardwareX) && numberOfBinsHardwareX has to be between 1 and 64", 186, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    goto LABEL_46;
  }

  v10 = *(a2 + 20);
  v11 = *(a1 + 28) <= v10 && *(a1 + 36) >= v10;
  if (!v11 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwKeyConfigurationUtils.cpp", 162, "(input_cfg.numberOfBinsHardwareY >= hal.minNumberOfBinsHardwareY && input_cfg.numberOfBinsHardwareY <= hal.maxNumberOfBinsHardwareY) && numberOfBinsHardwareY has to be between 1 and 64", 186, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    goto LABEL_46;
  }

  a4[19] = 0;
  *(a4 + 17) = 0u;
  *(a4 + 15) = 0u;
  *(a4 + 13) = 0u;
  *(a4 + 11) = 0u;
  *(a4 + 9) = 0u;
  *(a4 + 7) = 0u;
  *(a4 + 5) = 0u;
  *(a4 + 3) = 0u;
  *(a4 + 1) = 0u;
  *a4 = 626;
  v12 = (*(a2 + 42) << 10) | 0x18272;
  *a4 = v12;
  v13 = 0x300000000;
  if (*(a2 + 25) - 1 == a3)
  {
    v13 = 0x200000000;
  }

  v14 = 0xE2400000000;
  if (!a3)
  {
    v14 = 0xF4000000000;
  }

  v15 = v14 | v12 | v13;
  *a4 = v15;
  v16 = v15 | (*(a2 + 43) << 44);
  *a4 = v16;
  *a4 = v16 | ((*(a2 + 23) & 0x3F) << 45);
  v18 = *a2;
  v17 = a2[1];
  v19 = *(a2 + 7);
  v20 = *(a2 + 9);
  v21 = *(a2 + 6);
  v22 = *(a2 + 8);
  if (*(a1 + 16) != 4)
  {
    if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwKeyConfigurationUtils.cpp", 143, "hal.minBlockSize == feature_detection::kMinBlockSize", 52, &unk_1E549A011, 0, sub_1E548FDE0))
    {
      goto LABEL_46;
    }
  }

  if (*(a1 + 48) != 5 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwKeyConfigurationUtils.cpp", 144, "hal.numberOfGridElements == feature_detection::kNumRegionOfInterestBlocks", 73, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    goto LABEL_46;
  }

  v23 = v17 >> a3;
  if (v22)
  {
    v24 = v22 >> a3;
  }

  else
  {
    v24 = v23;
  }

  v50 = 0;
  v51 = 0;
  if (v20)
  {
    v25 = v20 >> a3;
  }

  else
  {
    v25 = v18 >> a3;
  }

  sub_1E5459ED4(v18 >> a3, &v51 + 1, &v51, v19 >> a3, v25);
  sub_1E5459ED4(v23, &v50 + 1, &v50, v21 >> a3, v24);
  v27 = WORD2(v51);
  *(a4 + 4) = WORD2(v51);
  v28 = v51;
  *(a4 + 6) = v51;
  v29 = WORD2(v50);
  *(a4 + 5) = WORD2(v50);
  v30 = v50;
  *(a4 + 7) = v50;
  *(a4 + 33) = *(a4 + 33) & 0xFC00 | 0x10;
  *(a4 + 17) = *(a4 + 17) & 0xFFFFC000 | 0x20;
  v31 = *a2 >> a3;
  *(a4 + 18) = a2[13];
  *(a4 + 19) = v31;
  *(a4 + 40) = v27;
  *(a4 + 41) = v29;
  v32 = *(a2 + 19);
  *(a4 + 44) = v32;
  v33 = *(a2 + 20);
  *(a4 + 45) = v33;
  v34 = *(a1 + 48);
  v35 = (v32 + v28 * v34 - 1) / v32;
  if (v35 <= 2)
  {
    LOWORD(v35) = 2;
  }

  *(a4 + 42) = v35;
  v36 = (v33 + v30 * v34 - 1) / v33;
  if (v36 <= 2)
  {
    LOWORD(v36) = 2;
  }

  *(a4 + 43) = v36;
  if (v34)
  {
    v37 = 0;
    v38 = (a4 + 2);
    LODWORD(v39) = 1;
    do
    {
      if (v39)
      {
        v40 = 0;
        v41 = *(a2 + 10);
        do
        {
          *(v38 + v40++) = v41;
          v39 = *(a1 + 48);
        }

        while (v40 < v39);
      }

      ++v37;
      v38 = (v38 + 10);
    }

    while (v37 < v39);
  }

  v42 = *a4;
  if ((*a4 & 0x400) != 0)
  {
    v43 = *(a4 + 42);
    v44 = *(a4 + 43);
    LOWORD(v26) = *(a4 + 44);
    v45 = log2f(256.0 / v26);
    v46 = log2f((v44 * v43));
    v47 = log2f(v43) + -1.0;
    v48 = fmin(fmin(fmin((v45 + -1.0), (v46 + -1.0)), (v47 - (v47 == v47))), 4.0);
    if (v48 >= 0)
    {
      v49 = 1 << v48;
    }

    else
    {
      v49 = 0;
    }

    *a4 = v42 & 0xFFFFFFFFFFF1FFFFLL | ((log2(v49) & 7) << 17);
    v31 = *a2 >> a3;
  }

  if (5 * *(a4 + 6) + *(a4 + 4) > v31 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwKeyConfigurationUtils.cpp", 218, "(key_cfg.activeStartX + key_cfg.blockSizeX * 5 <= (input_cfg.inputImageWidth >> octave)) && Active Area X ends outside image", 126, &unk_1E549A011, 0, sub_1E548FDE0) || 5 * *(a4 + 7) + *(a4 + 5) > a2[1] >> a3 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwKeyConfigurationUtils.cpp", 219, "(key_cfg.activeStartY + key_cfg.blockSizeY * 5 <= (input_cfg.inputImageHeight >> octave)) && Active Area Y ends outside image", 127, &unk_1E549A011, 0, sub_1E548FDE0))
  {
LABEL_46:
    abort();
  }
}

void sub_1E5439E3C(uint64_t a1, __int128 *a2)
{
  *a1 = xmmword_1E54921D0;
  *(a1 + 16) = 1000;
  *(a1 + 20) = 0x4100000042340000;
  *(a1 + 28) = xmmword_1E54920B0;
  *(a1 + 44) = 0x3E8000001388;
  *(a1 + 56) = 0u;
  *(a1 + 52) = 16777217;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  *(a1 + 48) = *(a2 + 6);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = v2;
  operator new();
}

void sub_1E5439FA0(_Unwind_Exception *a1)
{
  v4 = v3;
  MEMORY[0x1E6928650](v4, 0x1020C402426789BLL);
  v6 = v1[11];
  if (v6)
  {
    v1[12] = v6;
    operator delete(v6);
    v7 = v1[8];
    if (!v7)
    {
LABEL_3:
      v8 = *v2;
      *v2 = 0;
      if (!v8)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v7 = v1[8];
    if (!v7)
    {
      goto LABEL_3;
    }
  }

  v1[9] = v7;
  operator delete(v7);
  v8 = *v2;
  *v2 = 0;
  if (!v8)
  {
LABEL_4:
    _Unwind_Resume(a1);
  }

LABEL_7:
  sub_1E5427B38(v2, v8);
  _Unwind_Resume(a1);
}

void sub_1E543A020(unsigned int *a1, uint64_t a2)
{
  v186 = *MEMORY[0x1E69E9840];
  if (a1[11])
  {
    v2 = a2;
    v172 = 0u;
    v173 = 0u;
    v171 = 0u;
    v155 = 0x3E4CCCCD3DCCCCCDLL;
    v156 = xmmword_1E54921E0;
    v157 = vdupq_n_s64(3uLL);
    v158 = 1;
    v159 = 0;
    *v160 = 0u;
    *__p = 0u;
    v162 = 0u;
    v163 = 0x404000003F800000;
    v164 = 0;
    v4 = a1[2];
    v3 = a1[3];
    v142 = a1[1];
    v143 = *a1;
    v165 = v143;
    v166 = v142;
    v167 = v4;
    v168 = v3;
    v169 = 1;
    v170 = 0;
    v144 = v3;
    v5 = v3 * v4;
    *(&v171 + 1) = 0;
    v141 = v4;
    if (v5)
    {
      if (v5 <= 0x1C71C71C71C71C7)
      {
        *&v179 = &v171;
        operator new();
      }

      sub_1E5415338();
    }

    if (0x6DB6DB6DB6DB6DB7 * ((*(a2 + 80) - *(a2 + 72)) >> 4) && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/ImageProcessing/include/VIO/ImageProcessing/PyramidScaleSpace.hpp", 113, "data.size() == levels().capacity()", 34, "Input size mismatches the expected size", 39, sub_1E548FDE0))
    {
      goto LABEL_221;
    }

    v6 = v167;
    v154 = v2;
    if (v167)
    {
      v7 = v168;
      if (v168)
      {
        v149 = 0;
        while (!v7)
        {
LABEL_11:
          if (++v149 >= v6)
          {
            goto LABEL_86;
          }
        }

        v8 = 0;
        v147 = v165 >> v149;
        v145 = v166 >> v149;
        while (1)
        {
          v9 = (*(v2 + 72) + 112 * v7 * v149 + 112 * v8);
          if (*(v9 + 3) != v147 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/ImageProcessing/include/VIO/ImageProcessing/PyramidScaleSpace.hpp", 120, "x.width == width", 16, "Width of input data does not match expected width", 49, sub_1E548FDE0) || *(v9 + 5) != v145 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/ImageProcessing/include/VIO/ImageProcessing/PyramidScaleSpace.hpp", 122, "x.height == height", 18, "Height of input data does not match expected height", 51, sub_1E548FDE0))
          {
            goto LABEL_221;
          }

          v152 = v8;
          v176 = &unk_1F5F0A0E0;
          LOBYTE(v177) = 0;
          v181 = 0;
          v178 = 0u;
          v179 = 0u;
          memset(v180, 0, 25);
          v182 = 0u;
          v183 = 0u;
          v184 = 0u;
          v185 = 0;
          v10 = *(v9 + 10);
          v174 = v10;
          v11 = *(v9 + 11);
          v175 = v11;
          if (v11)
          {
            atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v13 = *(v9 + 3);
          v12 = *(v9 + 4);
          v14 = *(v9 + 5);
          v16 = *(v9 + 1);
          v15 = *(v9 + 2);
          v17 = *v9;
          v18 = *v9 ? *(v9 + 3) : 0;
          if (v15 + v16 * v13 + v18 > v12 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/ComputerVisionTypes/include/VIO/ComputerVisionTypes/Image.h", 306, "widthStep >= minimum_width_step", 31, "widthStep must be at least as big as minimum_width_step.", 56, sub_1E548FDE0))
          {
            goto LABEL_221;
          }

          v174 = 0;
          v175 = 0;
          v19 = *(&v182 + 1);
          *&v182 = v10;
          *(&v182 + 1) = v11;
          if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v19->__on_zero_shared)(v19);
            std::__shared_weak_count::__release_weak(v19);
          }

          LOBYTE(v177) = v17;
          *&v179 = v13;
          *(&v179 + 1) = v12;
          *v180 = v14;
          *&v178 = v16;
          *(&v178 + 1) = v15;
          v20 = *(v9 + 8);
          v181 = v9[72];
          *&v180[24] = v20;
          *&v180[8] = (v17 | (2 * v16)) + v15;
          *&v180[16] = v17 | (2 * v16);
          v21 = *(&v184 + 1);
          v22 = v184;
          v23 = (*(&v184 + 1) - v184) >> 3;
          v24 = v14 - v23;
          if (v14 > v23)
          {
            break;
          }

          if (v14 < v23)
          {
            *(&v184 + 1) = v184 + 8 * v14;
          }

          if (v14)
          {
            goto LABEL_44;
          }

LABEL_46:
          v28 = v175;
          if (v175 && !atomic_fetch_add(&v175->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v28->__on_zero_shared)(v28);
            std::__shared_weak_count::__release_weak(v28);
            v29 = *(&v171 + 1);
            if (*(&v171 + 1) < v172)
            {
LABEL_49:
              *v29 = &unk_1F5F0A0E0;
              *(v29 + 8) = 0;
              *(v29 + 80) = 0;
              *(v29 + 88) = 0u;
              *(v29 + 16) = 0u;
              *(v29 + 32) = 0u;
              *(v29 + 48) = 0u;
              *(v29 + 57) = 0u;
              *(v29 + 104) = 0u;
              *(v29 + 120) = 0u;
              *(v29 + 136) = 0;
              v30 = v179;
              v31 = *v180;
              v32 = v178;
              v33 = v177;
              if (v177)
              {
                v34 = v179;
              }

              else
              {
                v34 = 0;
              }

              if ((*(&v178 + 1) + v178 * v179 + v34) > *(&v179 + 1) && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/ComputerVisionTypes/include/VIO/ComputerVisionTypes/Image.h", 306, "widthStep >= minimum_width_step", 31, "widthStep must be at least as big as minimum_width_step.", 56, sub_1E548FDE0))
              {
                goto LABEL_221;
              }

              v35 = v182;
              v182 = 0uLL;
              v36 = *(v29 + 96);
              *(v29 + 88) = v35;
              if (v36 && !atomic_fetch_add(&v36->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v36->__on_zero_shared)(v36);
                std::__shared_weak_count::__release_weak(v36);
              }

              *(v29 + 8) = v33;
              *(v29 + 32) = v30;
              *(v29 + 48) = v31;
              *(v29 + 16) = v32;
              v37 = *&v180[24];
              *(v29 + 80) = v181;
              v38 = v33 | (2 * v32);
              *(v29 + 64) = v38;
              *(v29 + 72) = v37;
              *(v29 + 56) = v38 + *(&v32 + 1);
              v39 = *(v29 + 120);
              v40 = *(v29 + 128);
              v41 = (v40 - v39) >> 3;
              v42 = v31 - v41;
              if (v31 > v41)
              {
                v43 = *(v29 + 136);
                if (v42 > (v43 - v40) >> 3)
                {
                  if (!(v31 >> 61))
                  {
                    v44 = v43 - v39;
                    v45 = v44 >> 2;
                    if (v44 >> 2 <= v31)
                    {
                      v45 = v31;
                    }

                    if (v44 >= 0x7FFFFFFFFFFFFFF8)
                    {
                      v46 = 0x1FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v46 = v45;
                    }

                    if (!(v46 >> 61))
                    {
                      operator new();
                    }

                    sub_1E53E5340();
                  }

                  sub_1E5415338();
                }

                bzero(*(v29 + 128), 8 * v42);
                *(v29 + 128) = v40 + 8 * v42;
                v47 = v152;
                goto LABEL_82;
              }

              if (v31 < v41)
              {
                *(v29 + 128) = &v39[v31];
              }

              v47 = v152;
              if (v31)
              {
LABEL_82:
                v51 = 0;
                do
                {
                  *v39++ = *(v29 + 88) + v51;
                  v51 += 2 * *(&v30 + 1);
                  --v31;
                }

                while (v31);
              }

              v179 = 0uLL;
              *v180 = 0;
              v2 = v154;
              *(&v171 + 1) = v29 + 144;
              v176 = &unk_1F5F0A0E0;
              v48 = v184;
              if (!v184)
              {
                goto LABEL_74;
              }

LABEL_73:
              *(&v184 + 1) = v48;
              operator delete(v48);
              goto LABEL_74;
            }
          }

          else
          {
            v29 = *(&v171 + 1);
            if (*(&v171 + 1) < v172)
            {
              goto LABEL_49;
            }
          }

          v47 = v152;
          v2 = v154;
          *(&v171 + 1) = sub_1E54434D8(&v171, &v176);
          v176 = &unk_1F5F0A0E0;
          v48 = v184;
          if (v184)
          {
            goto LABEL_73;
          }

LABEL_74:
          v49 = *(&v183 + 1);
          if (*(&v183 + 1) && !atomic_fetch_add((*(&v183 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
          {
            (v49->__on_zero_shared)(v49);
            std::__shared_weak_count::__release_weak(v49);
            v50 = *(&v182 + 1);
            if (*(&v182 + 1))
            {
LABEL_77:
              if (!atomic_fetch_add(&v50->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v50->__on_zero_shared)(v50);
                std::__shared_weak_count::__release_weak(v50);
              }
            }
          }

          else
          {
            v50 = *(&v182 + 1);
            if (*(&v182 + 1))
            {
              goto LABEL_77;
            }
          }

          v8 = v47 + 1;
          v7 = v168;
          if (v8 >= v168)
          {
            v6 = v167;
            goto LABEL_11;
          }
        }

        if (v24 > (v185 - *(&v184 + 1)) >> 3)
        {
          if (!(v14 >> 61))
          {
            v25 = (v185 - v184) >> 2;
            if (v25 <= v14)
            {
              v25 = v14;
            }

            if ((v185 - v184) >= 0x7FFFFFFFFFFFFFF8)
            {
              v26 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v26 = v25;
            }

            if (!(v26 >> 61))
            {
              operator new();
            }

            sub_1E53E5340();
          }

          sub_1E5415338();
        }

        bzero(*(&v184 + 1), 8 * v24);
        *(&v184 + 1) = v21 + 8 * v24;
LABEL_44:
        v27 = 0;
        do
        {
          *v22++ = v182 + v27;
          v27 += 2 * v12;
          --v14;
        }

        while (v14);
        goto LABEL_46;
      }
    }

LABEL_86:
    *&v156 = v143;
    *(&v156 + 1) = v142;
    v157.i64[0] = v141;
    v157.i64[1] = v144;
    v158 = 1;
    v159 = 0;
    v52 = v160[1];
    if (v160[1] == v160[0])
    {
      v58 = 0;
    }

    else
    {
      v53 = v160[1] - 144;
      v54 = v160[1] - 144;
      v55 = (v160[1] - 144);
      do
      {
        v56 = *v55;
        v55 -= 18;
        (*v56)(v54);
        v53 -= 144;
        v57 = v54 == v160[0];
        v54 = v55;
      }

      while (!v57);
      v52 = v160[0];
      v58 = v157.i64[1] * v157.i64[0];
    }

    v160[1] = v160[0];
    v59 = 0x8E38E38E38E38E39 * ((__p[0] - v52) >> 4);
    if (v59 < v58)
    {
      if (v58 <= 0x1C71C71C71C71C7)
      {
        *&v179 = v160;
        operator new();
      }

      sub_1E5415338();
    }

    if (0x6DB6DB6DB6DB6DB7 * ((*(v2 + 32) - *(v2 + 24)) >> 4) != v59 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/ImageProcessing/include/VIO/ImageProcessing/PyramidScaleSpace.hpp", 113, "data.size() == levels().capacity()", 34, "Input size mismatches the expected size", 39, sub_1E548FDE0))
    {
LABEL_221:
      abort();
    }

    v60 = v157.i64[0];
    v61 = a1;
    if (v157.i64[0])
    {
      v62 = v157.i64[1];
      if (v157.i64[1])
      {
        v150 = 0;
        while (!v62)
        {
LABEL_101:
          if (++v150 >= v60)
          {
            goto LABEL_176;
          }
        }

        v63 = 0;
        v148 = v156 >> v150;
        v146 = *(&v156 + 1) >> v150;
        while (1)
        {
          v64 = (*(v2 + 24) + 112 * v62 * v150 + 112 * v63);
          if (*(v64 + 3) != v148 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/ImageProcessing/include/VIO/ImageProcessing/PyramidScaleSpace.hpp", 120, "x.width == width", 16, "Width of input data does not match expected width", 49, sub_1E548FDE0) || *(v64 + 5) != v146 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/ImageProcessing/include/VIO/ImageProcessing/PyramidScaleSpace.hpp", 122, "x.height == height", 18, "Height of input data does not match expected height", 51, sub_1E548FDE0))
          {
            goto LABEL_221;
          }

          v153 = v63;
          v176 = &unk_1F5F0A140;
          LOBYTE(v177) = 0;
          v181 = 0;
          v178 = 0u;
          v179 = 0u;
          memset(v180, 0, 25);
          v182 = 0u;
          v183 = 0u;
          v184 = 0u;
          v185 = 0;
          v65 = *(v64 + 10);
          v174 = v65;
          v66 = *(v64 + 11);
          v175 = v66;
          if (v66)
          {
            atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v68 = *(v64 + 3);
          v67 = *(v64 + 4);
          v69 = *(v64 + 5);
          v71 = *(v64 + 1);
          v70 = *(v64 + 2);
          v72 = *v64;
          v73 = *v64 ? *(v64 + 3) : 0;
          if (v70 + v71 * v68 + v73 > v67 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/ComputerVisionTypes/include/VIO/ComputerVisionTypes/Image.h", 306, "widthStep >= minimum_width_step", 31, "widthStep must be at least as big as minimum_width_step.", 56, sub_1E548FDE0))
          {
            goto LABEL_221;
          }

          v174 = 0;
          v175 = 0;
          v74 = *(&v182 + 1);
          *&v182 = v65;
          *(&v182 + 1) = v66;
          if (v74 && !atomic_fetch_add(&v74->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v74->__on_zero_shared)(v74);
            std::__shared_weak_count::__release_weak(v74);
          }

          LOBYTE(v177) = v72;
          *&v179 = v68;
          *(&v179 + 1) = v67;
          *v180 = v69;
          *&v178 = v71;
          *(&v178 + 1) = v70;
          v75 = *(v64 + 8);
          v181 = v64[72];
          *&v180[24] = v75;
          *&v180[8] = v71 + v72 + v70;
          *&v180[16] = v71 + v72;
          v76 = *(&v184 + 1);
          v77 = v184;
          v78 = (*(&v184 + 1) - v184) >> 3;
          v79 = v69 - v78;
          if (v69 > v78)
          {
            break;
          }

          if (v69 < v78)
          {
            *(&v184 + 1) = v184 + 8 * v69;
          }

          if (v69)
          {
            goto LABEL_134;
          }

LABEL_136:
          v83 = v175;
          if (v175 && !atomic_fetch_add(&v175->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v83->__on_zero_shared)(v83);
            std::__shared_weak_count::__release_weak(v83);
            v84 = v160[1];
            if (v160[1] < __p[0])
            {
LABEL_139:
              *v84 = &unk_1F5F0A140;
              v84[8] = 0;
              v84[80] = 0;
              *(v84 + 88) = 0u;
              *(v84 + 1) = 0u;
              *(v84 + 2) = 0u;
              *(v84 + 3) = 0u;
              *(v84 + 57) = 0u;
              *(v84 + 104) = 0u;
              *(v84 + 120) = 0u;
              *(v84 + 17) = 0;
              v85 = v179;
              v86 = *v180;
              v87 = v178;
              v88 = v177;
              if (v177)
              {
                v89 = v179;
              }

              else
              {
                v89 = 0;
              }

              if ((*(&v178 + 1) + v178 * v179 + v89) > *(&v179 + 1) && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/ComputerVisionTypes/include/VIO/ComputerVisionTypes/Image.h", 306, "widthStep >= minimum_width_step", 31, "widthStep must be at least as big as minimum_width_step.", 56, sub_1E548FDE0))
              {
                goto LABEL_221;
              }

              v90 = v182;
              v182 = 0uLL;
              v91 = *(v84 + 12);
              *(v84 + 88) = v90;
              if (v91 && !atomic_fetch_add(&v91->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v91->__on_zero_shared)(v91);
                std::__shared_weak_count::__release_weak(v91);
              }

              v84[8] = v88;
              *(v84 + 2) = v85;
              *(v84 + 6) = v86;
              *(v84 + 1) = v87;
              v92 = *&v180[24];
              v84[80] = v181;
              *(v84 + 8) = v87 + v88;
              *(v84 + 9) = v92;
              *(v84 + 7) = v87 + v88 + *(&v87 + 1);
              v93 = *(v84 + 15);
              v94 = *(v84 + 16);
              v95 = (v94 - v93) >> 3;
              v96 = v86 - v95;
              if (v86 > v95)
              {
                v97 = *(v84 + 17);
                if (v96 > (v97 - v94) >> 3)
                {
                  if (!(v86 >> 61))
                  {
                    v98 = v97 - v93;
                    v99 = v98 >> 2;
                    if (v98 >> 2 <= v86)
                    {
                      v99 = v86;
                    }

                    if (v98 >= 0x7FFFFFFFFFFFFFF8)
                    {
                      v100 = 0x1FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v100 = v99;
                    }

                    if (!(v100 >> 61))
                    {
                      operator new();
                    }

                    sub_1E53E5340();
                  }

                  sub_1E5415338();
                }

                bzero(*(v84 + 16), 8 * v96);
                *(v84 + 16) = v94 + 8 * v96;
                v101 = v153;
                goto LABEL_172;
              }

              if (v86 < v95)
              {
                *(v84 + 16) = &v93[v86];
              }

              v101 = v153;
              if (v86)
              {
LABEL_172:
                v105 = 0;
                do
                {
                  *v93++ = *(v84 + 11) + v105;
                  v105 += *(&v85 + 1);
                  --v86;
                }

                while (v86);
              }

              v179 = 0uLL;
              *v180 = 0;
              v2 = v154;
              v160[1] = v84 + 144;
              v176 = &unk_1F5F0A140;
              v102 = v184;
              if (!v184)
              {
                goto LABEL_164;
              }

LABEL_163:
              *(&v184 + 1) = v102;
              operator delete(v102);
              goto LABEL_164;
            }
          }

          else
          {
            v84 = v160[1];
            if (v160[1] < __p[0])
            {
              goto LABEL_139;
            }
          }

          v101 = v153;
          v2 = v154;
          v160[1] = sub_1E5443DD4(v160, &v176);
          v176 = &unk_1F5F0A140;
          v102 = v184;
          if (v184)
          {
            goto LABEL_163;
          }

LABEL_164:
          v103 = *(&v183 + 1);
          if (*(&v183 + 1) && !atomic_fetch_add((*(&v183 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
          {
            (v103->__on_zero_shared)(v103);
            std::__shared_weak_count::__release_weak(v103);
            v104 = *(&v182 + 1);
            if (*(&v182 + 1))
            {
LABEL_167:
              if (!atomic_fetch_add(&v104->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v104->__on_zero_shared)(v104);
                std::__shared_weak_count::__release_weak(v104);
              }
            }
          }

          else
          {
            v104 = *(&v182 + 1);
            if (*(&v182 + 1))
            {
              goto LABEL_167;
            }
          }

          v63 = v101 + 1;
          v62 = v157.i64[1];
          v61 = a1;
          if (v63 >= v157.i64[1])
          {
            v60 = v157.i64[0];
            goto LABEL_101;
          }
        }

        if (v79 > (v185 - *(&v184 + 1)) >> 3)
        {
          if (!(v69 >> 61))
          {
            v80 = (v185 - v184) >> 2;
            if (v80 <= v69)
            {
              v80 = v69;
            }

            if ((v185 - v184) >= 0x7FFFFFFFFFFFFFF8)
            {
              v81 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v81 = v80;
            }

            if (!(v81 >> 61))
            {
              operator new();
            }

            sub_1E53E5340();
          }

          sub_1E5415338();
        }

        bzero(*(&v184 + 1), 8 * v79);
        *(&v184 + 1) = v76 + 8 * v79;
LABEL_134:
        v82 = 0;
        do
        {
          *v77++ = v182 + v82;
          v82 += v67;
          --v69;
        }

        while (v69);
        goto LABEL_136;
      }
    }

LABEL_176:
    v155 = 0x3F80000000000000;
    *(&v163 + 1) = v144 / 0.69315;
    LODWORD(v163) = exp2f(1.0 / v144);
    v164 = 0;
    kdebug_trace();
    sub_1E5445A50(*(v61 + 7), &v155, &v165, (v2 + 96), v61 + 8, v61 + 11);
    kdebug_trace();
    if (*(a1 + 53) == 1)
    {
      v107 = a1[11];
      v108 = *(a1 + 8);
      v109 = *(a1 + 9);
      v110 = 0xAAAAAAAAAAAAAAABLL * ((v109 - v108) >> 4);
      if (v110 > v107)
      {
        v111 = 126 - 2 * __clz(v110);
        v112 = v109 == v108 ? 0 : v111;
        v106.n128_f64[0] = sub_1E5444198(v108, v109, v112, 1, v106);
        v113 = *(a1 + 8);
        if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 9) - v113) >> 4) > v107)
        {
          *(a1 + 9) = v113 + 48 * v107;
        }
      }
    }

    if (*a1 == 640 && a1[1] == 480)
    {
      v114 = a1[4];
      v115 = *(a1 + 8);
      v116 = *(a1 + 9);
      v117 = 0xAAAAAAAAAAAAAAABLL * ((v116 - v115) >> 4);
      if (v117 > v114)
      {
        v118 = 126 - 2 * __clz(v117);
        v119 = v116 == v115 ? 0 : v118;
        sub_1E5444198(v115, v116, v119, 1, v106);
        v120 = *(a1 + 8);
        if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 9) - v120) >> 4) > v114)
        {
          *(a1 + 9) = v120 + 48 * v114;
        }
      }
    }

    kdebug_trace();
    if (*(a1 + 52) == 1)
    {
      sub_1E543BA0C(*(a1 + 8), *(a1 + 9), &v155);
      sub_1E543BA0C(*(a1 + 11), *(a1 + 12), &v155);
    }

    kdebug_trace();
    kdebug_trace();
    v121 = *(a1 + 8);
    if (*(a1 + 9) != v121)
    {
      v122 = 0;
      v123 = 0;
      do
      {
        v124 = v121 + v122;
        sub_1E543D848(&v176, &v155, *(v121 + v122 + 16), *(v121 + v122 + 20), *(v121 + v122 + 40), *(v121 + v122 + 12));
        sub_1E5436B1C(v2, *(v124 + 28), &v176, *(v124 + 16), *(v124 + 20), *(v124 + 40), *(v124 + 12), *(v124 + 44));
        ++v123;
        v121 = *(a1 + 8);
        v122 += 48;
      }

      while (v123 < 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 9) - v121) >> 4));
    }

    v125 = *(a1 + 11);
    if (*(a1 + 12) == v125)
    {
      LODWORD(v127) = 0;
    }

    else
    {
      v126 = 0;
      v127 = 0;
      do
      {
        if (*(*(v2 + 400) + 4) >= *(v2 + 16))
        {
          break;
        }

        v128 = v125 + v126;
        sub_1E543D848(&v176, &v155, *(v125 + v126 + 16), *(v125 + v126 + 20), *(v125 + v126 + 40), *(v125 + v126 + 12));
        sub_1E5436B1C(v2, *(v128 + 28), &v176, *(v128 + 16), *(v128 + 20), *(v128 + 40), *(v128 + 12), *(v128 + 44));
        ++v127;
        v125 = *(a1 + 11);
        v126 += 48;
      }

      while (v127 < 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 12) - v125) >> 4));
    }

    *(*(v2 + 400) + 80) = v127;
    kdebug_trace();
    if (__p[1])
    {
      *&v162 = __p[1];
      operator delete(__p[1]);
    }

    v129 = v160[0];
    if (v160[0])
    {
      v130 = v160[0];
      if (v160[1] != v160[0])
      {
        v131 = v160[1] - 144;
        v132 = v160[1] - 144;
        v133 = (v160[1] - 144);
        do
        {
          v134 = *v133;
          v133 -= 18;
          (*v134)(v132);
          v131 -= 144;
          v57 = v132 == v129;
          v132 = v133;
        }

        while (!v57);
        v130 = v160[0];
      }

      v160[1] = v129;
      operator delete(v130);
    }

    if (*(&v172 + 1))
    {
      *&v173 = *(&v172 + 1);
      operator delete(*(&v172 + 1));
    }

    v135 = v171;
    if (v171)
    {
      v136 = v171;
      if (*(&v171 + 1) != v171)
      {
        v137 = *(&v171 + 1) - 144;
        v138 = *(&v171 + 1) - 144;
        v139 = (*(&v171 + 1) - 144);
        do
        {
          v140 = *v139;
          v139 -= 18;
          (*v140)(v138);
          v137 -= 144;
          v57 = v138 == v135;
          v138 = v139;
        }

        while (!v57);
        v136 = v171;
      }

      *(&v171 + 1) = v135;
      operator delete(v136);
    }
  }
}