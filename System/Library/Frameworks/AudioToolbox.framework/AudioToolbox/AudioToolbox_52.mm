uint64_t AUSpeakerProtectionV3::AttenuateInputToOutput(AUSpeakerProtectionV3 *this, uint64_t a2, const AudioBufferList **a3, AudioBufferList **a4, float a5)
{
  v15 = 1036831949;
  result = ausdk::AUScope::GetElement((this + 128), 0);
  if (!result)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v9 = *a4;
  if ((*a4)->mNumberBuffers)
  {
    v10 = result;
    v11 = 0;
    v12 = 16;
    do
    {
      v13 = *(v9 + v12);
      if ((*(v10 + 92) & 0x20) != 0)
      {
        v14 = 1;
      }

      else
      {
        v14 = *(v10 + 108);
      }

      result = MEMORY[0x1E12BE940](*(&(*a3)->mNumberBuffers + v12), 1, &v15, v13, 1, v14 * a2);
      ++v11;
      v9 = *a4;
      v12 += 16;
    }

    while (v11 < (*a4)->mNumberBuffers);
  }

  return result;
}

void AUSpeakerProtectionV3::ApplyParameters(AUSpeakerProtectionV3 *this)
{
  v366 = *MEMORY[0x1E69E9840];
  shouldTraceRender();
  v2 = *(this + 159);
  if (shouldTraceRender())
  {
    v3 = spp3SubsystemAsync();
    if (v3)
    {
      if (*(v3 + 8))
      {
        v4 = *v3;
        if (*v3)
        {
          if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEBUG))
          {
            v5 = *(this + 160);
            *buf = 136315906;
            *&buf[4] = "AUSpeakerProtectionV3.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 2530;
            *&buf[18] = 1024;
            *&buf[20] = v2;
            *v363 = 1024;
            *&v363[2] = v5;
            _os_log_impl(&dword_1DDB85000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d AUSpeakerProtectionV3::ApplyParameters(): Params up to date. paramSeed=%d; mParamsUpdated=%d", buf, 0x1Eu);
          }
        }
      }
    }
  }

  if (v2 != *(this + 160))
  {
    v355 = v2;
    v6 = *(this + 106);
    v7 = *(this + 105);
    if (v6 != v7)
    {
      v8 = 0;
      v9 = 0;
      do
      {
        Element = ausdk::AUScope::GetElement((this + 792), v9);
        Parameter = ausdk::AUElement::GetParameter(Element, 0x14u);
        if (*(this + 163) != Parameter)
        {
          v12 = ausdk::AUScope::GetElement((this + 792), v9);
          ausdk::AUElement::GetParameter(v12, 0x21u);
          v13 = ausdk::AUScope::GetElement((this + 792), v9);
          ausdk::AUElement::GetParameter(v13, 0x22u);
          v14 = ausdk::AUScope::GetElement((this + 792), v9);
          ausdk::AUElement::GetParameter(v14, 0x23u);
          v15 = ausdk::AUScope::GetElement((this + 792), v9);
          ausdk::AUElement::GetParameter(v15, 0x20u);
          v16 = ausdk::AUScope::GetElement((this + 792), v9);
          v17 = ausdk::AUElement::GetParameter(v16, 0x20u);
          v18 = ausdk::AUScope::GetElement((this + 792), v9);
          v19 = ausdk::AUElement::GetParameter(v18, 0x19u);
          v20 = ausdk::AUScope::GetElement((this + 792), v9);
          v21 = ausdk::AUElement::GetParameter(v20, 9u);
          v22 = *(this + 84);
          *buf = 0x3FC70A3D80000000;
          *&buf[8] = v17;
          *&buf[16] = v19;
          *v363 = v21;
          *&v363[8] = xmmword_1DE09E120;
          *&v363[24] = 925353388;
          v364 = v22;
          v365 = xmmword_1DE09E130;
          v23 = *(this + 88) - *(this + 87);
          v24 = *(this + 105);
          if (v23 >> 3 == (*(this + 106) - v24) >> 4 && *(this + 85) - *(this + 84) == v23)
          {
            v25 = ausdk::AUScope::GetElement((this + 792), v9);
            v26 = ausdk::AUElement::GetParameter(v25, 0x18u);
            v27 = ausdk::AUScope::GetElement((this + 792), v9);
            v28 = ausdk::AUElement::GetParameter(v27, 0x20u);
            v29 = ausdk::AUScope::GetElement((this + 792), v9);
            v30 = ausdk::AUElement::GetParameter(v29, 0x19u);
            v31 = *(*(this + 84) + 8 * v9);
            v32 = **(*(this + 87) + 8 * v9);
            v359 = *(v31 + 20);
            v356 = *(v31 + 8);
            v33 = *(v31 + 44);
            v357 = *(v31 + 40);
            v34 = *(this + 84);
            v35 = ausdk::AUScope::GetElement((this + 792), v9);
            v36 = ausdk::AUElement::GetParameter(v35, 0x23u);
            *buf = v26;
            *&buf[8] = v28;
            *&v37 = v359;
            *(&v37 + 1) = __PAIR64__(v357, v356);
            *&buf[16] = v30;
            *v363 = v32;
            *&v363[8] = v37;
            *&v363[24] = v33;
            v364 = v34;
            *(&v365 + 1) = v36;
            v24 = *(this + 105);
          }

          clsp::ClosedLoopThermalModule::setPilotGenType(*(v24 + v8) + 152, Parameter);
        }

        ++v9;
        v6 = *(this + 106);
        v7 = *(this + 105);
        v8 += 16;
      }

      while (v9 < (v6 - v7) >> 4);
    }

    v38 = (this + 840);
    if (v6 != v7)
    {
      v39 = 0;
      while (1)
      {
        v40 = *(v7 + 16 * v39);
        v41 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
        if ((v42 & 1) == 0 || (*(v40 + 440) = ausdk::AUElement::GetParameter(v41, 4u), v43 = *(*v38 + 16 * v39), v44 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v45 & 1) == 0) || (*(v43 + 456) = ausdk::AUElement::GetParameter(v44, 5u), v46 = *(*v38 + 16 * v39), v47 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v48 & 1) == 0) || (*(v46 + 464) = ausdk::AUElement::GetParameter(v47, 6u), v49 = *(*v38 + 16 * v39), v50 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v51 & 1) == 0) || (*(v49 + 472) = ausdk::AUElement::GetParameter(v50, 7u), v52 = *(*v38 + 16 * v39), v53 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v54 & 1) == 0) || (*(v52 + 640) = ausdk::AUElement::GetParameter(v53, 2u), v55 = *(*v38 + 16 * v39), v56 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v57 & 1) == 0) || (*(v55 + 632) = ausdk::AUElement::GetParameter(v56, 3u), v58 = *(*v38 + 16 * v39), v59 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v60 & 1) == 0) || (v61 = ausdk::AUElement::GetParameter(v59, 9u), (*(**(v58 + 424) + 80))(*(v58 + 424), v61), v62 = *(*v38 + 16 * v39), v63 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v64 & 1) == 0) || (v65 = ausdk::AUElement::GetParameter(v63, 0xAu), (*(**(v62 + 424) + 96))(*(v62 + 424), v65), v66 = *(*v38 + 16 * v39), v67 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v68 & 1) == 0) || (v69 = ausdk::AUElement::GetParameter(v67, 0xBu), (*(**(v66 + 424) + 112))(*(v66 + 424), v69), v70 = *(*v38 + 16 * v39), v71 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v72 & 1) == 0) || (**(v70 + 776) = ausdk::AUElement::GetParameter(v71, 8u), v73 = *(*v38 + 16 * v39), v74 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v75 & 1) == 0))
        {
          abort();
        }

        v76 = ausdk::AUElement::GetParameter(v74, 0xEu);
        **(v73 + 784) = v76;
        **(v73 + 792) = v76;
        v77 = *(*(this + 105) + 16 * v39);
        v78 = ausdk::AUScope::GetElement((this + 792), v39);
        *(v77 + 432) = ausdk::AUElement::GetParameter(v78, 0);
        v79 = *(*(this + 105) + 16 * v39);
        v80 = ausdk::AUScope::GetElement((this + 792), v39);
        *(v79 + 436) = ausdk::AUElement::GetParameter(v80, 1u);
        v81 = *(*(this + 105) + 16 * v39);
        v82 = ausdk::AUScope::GetElement((this + 792), v39);
        *(v81 + 64) = ausdk::AUElement::GetParameter(v82, 0xAu);
        v83 = *(*(this + 105) + 16 * v39);
        v84 = ausdk::AUScope::GetElement((this + 792), v39);
        *(v83 + 72) = ausdk::AUElement::GetParameter(v84, 0xBu);
        v85 = *(*(this + 105) + 16 * v39);
        v86 = ausdk::AUScope::GetElement((this + 792), v39);
        *(v85 + 128) = ausdk::AUElement::GetParameter(v86, 0xCu);
        v87 = *(*(this + 105) + 16 * v39);
        v88 = ausdk::AUScope::GetElement((this + 792), v39);
        *(v87 + 136) = ausdk::AUElement::GetParameter(v88, 0xDu);
        v89 = *(*(this + 105) + 16 * v39);
        v90 = ausdk::AUScope::GetElement((this + 792), v39);
        *(v89 + 144) = ausdk::AUElement::GetParameter(v90, 0xEu);
        v91 = *(*(this + 105) + 16 * v39);
        v92 = ausdk::AUScope::GetElement((this + 792), v39);
        *(v91 + 56) = ausdk::AUElement::GetParameter(v92, 0xFu);
        v93 = *(*(this + 105) + 16 * v39);
        v94 = ausdk::AUScope::GetElement((this + 792), v39);
        v95 = ausdk::AUElement::GetParameter(v94, 0x10u);
        (*(**(v93 + 424) + 32))(*(v93 + 424), v95);
        v96 = *(*(this + 105) + 16 * v39);
        v97 = ausdk::AUScope::GetElement((this + 792), v39);
        v98 = ausdk::AUElement::GetParameter(v97, 0x11u);
        (*(**(v96 + 424) + 64))(*(v96 + 424), v98);
        v99 = *(*(this + 105) + 16 * v39);
        v100 = ausdk::AUScope::GetElement((this + 792), v39);
        *(v99 + 120) = ausdk::AUElement::GetParameter(v100, 0x12u);
        v101 = *(*(this + 105) + 16 * v39);
        v102 = ausdk::AUScope::GetElement((this + 792), v39);
        v103 = ausdk::AUElement::GetParameter(v102, 0x13u);
        (*(**(v101 + 424) + 48))(*(v101 + 424), v103);
        v104 = *(*(this + 105) + 16 * v39);
        v105 = ausdk::AUScope::GetElement((this + 792), v39);
        v106 = ausdk::AUElement::GetParameter(v105, 2u);
        *(v104 + 488) = v106;
        *(v104 + 520) = v106;
        v107 = *(*(this + 105) + 16 * v39);
        v108 = ausdk::AUScope::GetElement((this + 792), v39);
        *(v107 + 504) = ausdk::AUElement::GetParameter(v108, 3u);
        v109 = *(*(this + 105) + 16 * v39);
        v110 = ausdk::AUScope::GetElement((this + 792), v39);
        v111 = ausdk::AUElement::GetParameter(v110, 4u);
        v109[62] = v111;
        v109[66] = v109[56] * v111;
        v112 = *(*(this + 105) + 16 * v39);
        v113 = ausdk::AUScope::GetElement((this + 792), v39);
        *(v112 + 512) = ausdk::AUElement::GetParameter(v113, 5u);
        v114 = *(*(this + 105) + 16 * v39);
        v115 = ausdk::AUScope::GetElement((this + 792), v39);
        *(v114 + 112) = ausdk::AUElement::GetParameter(v115, 9u);
        v116 = *(*(this + 105) + 16 * v39);
        v117 = ausdk::AUScope::GetElement((this + 792), v39);
        v118 = ausdk::AUElement::GetParameter(v117, 6u);
        v116[56] = v118;
        v116[66] = v116[62] * v118;
        v119 = *(*(this + 105) + 16 * v39);
        v120 = ausdk::AUScope::GetElement((this + 792), v39);
        *(v119 + 160) = ausdk::AUElement::GetParameter(v120, 0x17u);
        v121 = *(*(this + 105) + 16 * v39);
        v122 = ausdk::AUScope::GetElement((this + 792), v39);
        *(v121 + 152) = ausdk::AUElement::GetParameter(v122, 0x1Au);
        v123 = ausdk::AUScope::GetElement((this + 792), v39);
        v124 = ausdk::AUElement::GetParameter(v123, 0x1Bu);
        v125 = ausdk::AUScope::GetElement((this + 792), v39);
        v126 = ausdk::AUElement::GetParameter(v125, 0x1Cu);
        v127 = *(*(this + 105) + 16 * v39);
        v128 = __exp10(v124 / 20.0);
        v127[43] = v128;
        v129 = __exp10(v126 / 20.0);
        v127[44] = v129;
        v130 = ausdk::AUScope::GetElement((this + 792), v39);
        v127[45] = ausdk::AUElement::GetParameter(v130, 0x1Du);
        v131 = *(*(this + 105) + 16 * v39);
        v132 = ausdk::AUScope::GetElement((this + 792), v39);
        *(v131 + 184) = ausdk::AUElement::GetParameter(v132, 0x1Eu);
        v133 = *(*(this + 105) + 16 * v39);
        v134 = ausdk::AUScope::GetElement((this + 792), v39);
        *(v133 + 192) = ausdk::AUElement::GetParameter(v134, 0x1Fu);
        v135 = *(*(this + 105) + 16 * v39);
        v136 = ausdk::AUScope::GetElement((this + 792), v39);
        *(v135 + 200) = ausdk::AUElement::GetParameter(v136, 0x43u);
        v137 = *(*(this + 105) + 16 * v39);
        v138 = ausdk::AUScope::GetElement((this + 792), v39);
        *(v137 + 208) = ausdk::AUElement::GetParameter(v138, 0x44u);
        v139 = *(this + 84);
        v140 = ausdk::AUScope::GetElement((this + 792), v39);
        v141 = ausdk::AUElement::GetParameter(v140, 0x21u);
        v142 = ausdk::AUScope::GetElement((this + 792), v39);
        v143 = ausdk::AUElement::GetParameter(v142, 0x22u);
        v144 = ausdk::AUScope::GetElement((this + 792), v39);
        v145 = ausdk::AUElement::GetParameter(v144, 0x23u);
        v146 = ausdk::AUScope::GetElement((this + 792), v39);
        v147 = ausdk::AUElement::GetParameter(v146, 0x20u);
        *buf = 1;
        *&buf[8] = v147;
        *&buf[16] = 0x4059000000000000;
        *v363 = v139;
        *&v363[8] = v141;
        *&v363[16] = v143;
        *&v363[24] = v145;
        v148 = *(this + 105);
        v149 = *(*(v148 + 16 * v39) + 256);
        if (v149)
        {
          (*(*v149 + 64))(v149, buf);
          v148 = *v38;
        }

        v150 = *(this + 88) - *(this + 87);
        if (v150 >> 3 == (*(this + 106) - v148) >> 4 && *(this + 85) - *(this + 84) == v150)
        {
          v151 = ausdk::AUScope::GetElement((this + 792), v39);
          v152 = ausdk::AUElement::GetParameter(v151, 0x18u);
          v153 = ausdk::AUScope::GetElement((this + 792), v39);
          v154 = ausdk::AUElement::GetParameter(v153, 0x20u);
          v155 = ausdk::AUScope::GetElement((this + 792), v39);
          v156 = ausdk::AUElement::GetParameter(v155, 0x19u);
          v157 = *(*(this + 84) + 8 * v39);
          v158 = **(*(this + 87) + 8 * v39);
          v361 = *(v157 + 20);
          v358 = *(v157 + 8);
          v159 = *(v157 + 44);
          v360 = *(v157 + 40);
          v160 = *(this + 84);
          v161 = ausdk::AUScope::GetElement((this + 792), v39);
          v162 = ausdk::AUElement::GetParameter(v161, 0x23u);
          v148 = *(this + 105);
          v163 = *(*(v148 + 16 * v39) + 248);
          if (v163)
          {
            *(v163 + 8) = v152;
            *(v163 + 16) = v154;
            *(v163 + 24) = v156;
            *(v163 + 32) = v158;
            *&v164 = v361;
            *(&v164 + 1) = __PAIR64__(v360, v358);
            *(v163 + 40) = v164;
            *(v163 + 56) = v159;
            *(v163 + 64) = v160;
            *(v163 + 72) = 0x4059000000000000;
            *(v163 + 80) = v162;
            v148 = *v38;
          }
        }

        v165 = *(v148 + 16 * v39);
        v166 = ausdk::AUScope::GetElement((this + 792), v39);
        v167 = ausdk::AUElement::GetParameter(v166, 0x25u);
        v168 = *(v165 + 368);
        if (v168)
        {
          *(v168 + 720) = v167;
        }

        v169 = *(*v38 + 16 * v39);
        v170 = ausdk::AUScope::GetElement((this + 792), v39);
        v171 = ausdk::AUElement::GetParameter(v170, 0x26u);
        v172 = *(v169 + 368);
        if (v172)
        {
          v173 = (8 * *(v172 + 200) + 8) >> 3;
          v174 = v173 - 1;
          if (v173)
          {
            v175 = v171;
            v176 = (v173 + 1) & 0x3FFFFFFFELL;
            v177 = vdupq_n_s64(v174);
            v178 = (v172 + 736);
            v179 = 92;
            do
            {
              v180 = vmovn_s64(vcgeq_u64(v177, vorrq_s8(vdupq_n_s64(v179 - 92), xmmword_1DE095160)));
              if (v180.i8[0])
              {
                *(v178 - 1) = v175;
              }

              if (v180.i8[4])
              {
                *v178 = v175;
              }

              v179 += 2;
              v178 += 2;
              v176 -= 2;
            }

            while (v176);
          }
        }

        v181 = *(*v38 + 16 * v39);
        v182 = ausdk::AUScope::GetElement((this + 792), v39);
        v183 = ausdk::AUElement::GetParameter(v182, 0x27u);
        v184 = *(v181 + 368);
        if (v184)
        {
          v185 = v183;
          v186 = (8 * v184[51] + 8) >> 3;
          v187 = v186 - 1;
          if (v186)
          {
            v188 = (v186 + 1) & 0x3FFFFFFFELL;
            v189 = vdupq_n_s64(v187);
            v190 = (v184 + 194);
            v191 = 97;
            do
            {
              v192 = vmovn_s64(vcgeq_u64(v189, vorrq_s8(vdupq_n_s64(v191 - 97), xmmword_1DE095160)));
              if (v192.i8[0])
              {
                *(v190 - 1) = v185;
              }

              if (v192.i8[4])
              {
                *v190 = v185;
              }

              v191 += 2;
              v190 += 2;
              v188 -= 2;
            }

            while (v188);
          }

          v193 = (8 * v184[52] + 8) >> 3;
          v194 = v193 - 1;
          if (v193)
          {
            v195 = (v193 + 1) & 0x3FFFFFFFELL;
            v196 = vdupq_n_s64(v194);
            v197 = (v184 + 204);
            v198 = 102;
            do
            {
              v199 = vmovn_s64(vcgeq_u64(v196, vorrq_s8(vdupq_n_s64(v198 - 102), xmmword_1DE095160)));
              if (v199.i8[0])
              {
                *(v197 - 1) = v185;
              }

              if (v199.i8[4])
              {
                *v197 = v185;
              }

              v198 += 2;
              v197 += 2;
              v195 -= 2;
            }

            while (v195);
          }

          v200 = (8 * v184[53] + 8) >> 3;
          v201 = v200 - 1;
          if (v200)
          {
            v202 = (v200 + 1) & 0x3FFFFFFFELL;
            v203 = vdupq_n_s64(v201);
            v204 = (v184 + 214);
            v205 = 107;
            do
            {
              v206 = vmovn_s64(vcgeq_u64(v203, vorrq_s8(vdupq_n_s64(v205 - 107), xmmword_1DE095160)));
              if (v206.i8[0])
              {
                *(v204 - 1) = v185;
              }

              if (v206.i8[4])
              {
                *v204 = v185;
              }

              v205 += 2;
              v204 += 2;
              v202 -= 2;
            }

            while (v202);
          }
        }

        v207 = *(*v38 + 16 * v39);
        v208 = ausdk::AUScope::GetElement((this + 792), v39);
        v209 = ausdk::AUElement::GetParameter(v208, 0x2Fu);
        v210 = *(v207 + 424);
        if (v210)
        {
          v211 = *(v210 + 8);
          if (v211 == 1)
          {
            v212 = 352;
          }

          else
          {
            if (v211 != 4)
            {
              goto LABEL_73;
            }

            v212 = 384;
          }

          *(v210 + v212) = v209;
        }

LABEL_73:
        v213 = *(*v38 + 16 * v39);
        v214 = ausdk::AUScope::GetElement((this + 792), v39);
        v215 = ausdk::AUElement::GetParameter(v214, 0x30u);
        v216 = *(v213 + 424);
        if (!v216)
        {
          goto LABEL_79;
        }

        v217 = *(v216 + 8);
        if (v217 == 1)
        {
          v218 = 356;
        }

        else
        {
          if (v217 != 4)
          {
            goto LABEL_79;
          }

          v218 = 388;
        }

        *(v216 + v218) = v215;
LABEL_79:
        v219 = *(*v38 + 16 * v39);
        v220 = ausdk::AUScope::GetElement((this + 792), v39);
        v221 = ausdk::AUElement::GetParameter(v220, 0x31u);
        v222 = *(v219 + 424);
        if (!v222)
        {
          goto LABEL_85;
        }

        v223 = *(v222 + 8);
        if (v223 == 1)
        {
          v224 = 624;
          v225 = 664;
        }

        else
        {
          if (v223 != 4)
          {
            goto LABEL_85;
          }

          v224 = 712;
          v225 = 752;
        }

        v226 = v221;
        *(v222 + v224) = v226;
        *(v222 + v225) = v226;
LABEL_85:
        v227 = *(*v38 + 16 * v39);
        v228 = ausdk::AUScope::GetElement((this + 792), v39);
        v229 = ausdk::AUElement::GetParameter(v228, 0x32u);
        v230 = *(v227 + 424);
        if (!v230)
        {
          goto LABEL_91;
        }

        v231 = *(v230 + 8);
        if (v231 == 1)
        {
          v232 = 632;
          v233 = 672;
        }

        else
        {
          if (v231 != 4)
          {
            goto LABEL_91;
          }

          v232 = 720;
          v233 = 760;
        }

        v234 = v229;
        *(v230 + v232) = v234;
        *(v230 + v233) = v234;
LABEL_91:
        v235 = *(*v38 + 16 * v39);
        v236 = ausdk::AUScope::GetElement((this + 792), v39);
        v237 = ausdk::AUElement::GetParameter(v236, 0x33u);
        v238 = *(v235 + 424);
        if (!v238)
        {
          goto LABEL_97;
        }

        v239 = *(v238 + 8);
        if (v239 == 1)
        {
          v240 = 460;
        }

        else
        {
          if (v239 != 4)
          {
            goto LABEL_97;
          }

          v240 = 484;
        }

        *(v238 + v240) = v237;
LABEL_97:
        v241 = *(*v38 + 16 * v39);
        v242 = ausdk::AUScope::GetElement((this + 792), v39);
        v243 = ausdk::AUElement::GetParameter(v242, 0x34u);
        v244 = *(v241 + 424);
        if (!v244)
        {
          goto LABEL_103;
        }

        v245 = *(v244 + 8);
        if (v245 == 1)
        {
          v246 = 464;
        }

        else
        {
          if (v245 != 4)
          {
            goto LABEL_103;
          }

          v246 = 488;
        }

        *(v244 + v246) = v243;
LABEL_103:
        v247 = *(*v38 + 16 * v39);
        v248 = ausdk::AUScope::GetElement((this + 792), v39);
        v249 = ausdk::AUElement::GetParameter(v248, 0x35u);
        v250 = *(v247 + 424);
        if (!v250)
        {
          goto LABEL_109;
        }

        v251 = *(v250 + 8);
        if (v251 == 1)
        {
          v252 = 704;
        }

        else
        {
          if (v251 != 4)
          {
            goto LABEL_109;
          }

          v252 = 792;
        }

        *(v250 + v252) = v249;
LABEL_109:
        v253 = *(*v38 + 16 * v39);
        v254 = ausdk::AUScope::GetElement((this + 792), v39);
        v255 = ausdk::AUElement::GetParameter(v254, 0x36u);
        v256 = *(v253 + 424);
        if (!v256)
        {
          goto LABEL_115;
        }

        v257 = *(v256 + 8);
        if (v257 == 1)
        {
          v258 = 712;
        }

        else
        {
          if (v257 != 4)
          {
            goto LABEL_115;
          }

          v258 = 800;
        }

        *(v256 + v258) = v255;
LABEL_115:
        v259 = *(*v38 + 16 * v39);
        v260 = ausdk::AUScope::GetElement((this + 792), v39);
        v261 = ausdk::AUElement::GetParameter(v260, 0x37u);
        v262 = *(v259 + 424);
        if (!v262)
        {
          goto LABEL_121;
        }

        v263 = *(v262 + 8);
        if (v263 == 1)
        {
          v264 = 468;
        }

        else
        {
          if (v263 != 4)
          {
            goto LABEL_121;
          }

          v264 = 492;
        }

        *(v262 + v264) = v261;
LABEL_121:
        v265 = *(*v38 + 16 * v39);
        v266 = ausdk::AUScope::GetElement((this + 792), v39);
        v267 = ausdk::AUElement::GetParameter(v266, 0x38u);
        v268 = *(v265 + 424);
        if (!v268)
        {
          goto LABEL_127;
        }

        v269 = *(v268 + 8);
        if (v269 == 1)
        {
          v270 = 472;
        }

        else
        {
          if (v269 != 4)
          {
            goto LABEL_127;
          }

          v270 = 496;
        }

        *(v268 + v270) = v267;
LABEL_127:
        v271 = *(*v38 + 16 * v39);
        v272 = ausdk::AUScope::GetElement((this + 792), v39);
        v273 = ausdk::AUElement::GetParameter(v272, 0x39u);
        v274 = *(v271 + 424);
        if (v274)
        {
          v275 = *(v274 + 8);
          if (v275 == 4)
          {
            *(v274 + 376) = v273;
          }

          else if (v275 == 1)
          {
            *(v274 + 380) = v273;
          }
        }

        v276 = *(*v38 + 16 * v39);
        v277 = ausdk::AUScope::GetElement((this + 792), v39);
        v278 = ausdk::AUElement::GetParameter(v277, 0x3Au);
        v279 = *(v276 + 424);
        if (v279)
        {
          v280 = *(v279 + 8);
          if (v280 == 4)
          {
            *(v279 + 380) = v278;
          }

          else if (v280 == 1)
          {
            *(v279 + 384) = v278;
          }
        }

        v281 = *(*v38 + 16 * v39);
        v282 = ausdk::AUScope::GetElement((this + 792), v39);
        v283 = ausdk::AUElement::GetParameter(v282, 0x3Bu);
        v284 = *(v281 + 424);
        if (v284)
        {
          v285 = *(v284 + 8);
          if (v285 == 1)
          {
            v286 = 388;
          }

          else
          {
            if (v285 != 4)
            {
              goto LABEL_143;
            }

            v286 = 412;
          }

          *(v284 + v286) = v283;
        }

LABEL_143:
        v287 = *(*v38 + 16 * v39);
        v288 = ausdk::AUScope::GetElement((this + 792), v39);
        v289 = ausdk::AUElement::GetParameter(v288, 0x3Cu);
        v290 = *(v287 + 424);
        if (!v290)
        {
          goto LABEL_149;
        }

        v291 = *(v290 + 8);
        if (v291 == 1)
        {
          v292 = 396;
        }

        else
        {
          if (v291 != 4)
          {
            goto LABEL_149;
          }

          v292 = 420;
        }

        *(v290 + v292) = v289;
LABEL_149:
        v293 = *(*v38 + 16 * v39);
        v294 = ausdk::AUScope::GetElement((this + 792), v39);
        v295 = ausdk::AUElement::GetParameter(v294, 0x3Du);
        v296 = *(v293 + 424);
        if (!v296)
        {
          goto LABEL_155;
        }

        v297 = *(v296 + 8);
        if (v297 == 1)
        {
          v298 = 480;
        }

        else
        {
          if (v297 != 4)
          {
            goto LABEL_155;
          }

          v298 = 528;
        }

        *(v296 + v298) = v295;
LABEL_155:
        v299 = *(*v38 + 16 * v39);
        v300 = ausdk::AUScope::GetElement((this + 792), v39);
        v301 = ausdk::AUElement::GetParameter(v300, 0x3Eu);
        v302 = *(v299 + 424);
        if (!v302)
        {
          goto LABEL_161;
        }

        v303 = *(v302 + 8);
        if (v303 == 1)
        {
          v304 = 488;
        }

        else
        {
          if (v303 != 4)
          {
            goto LABEL_161;
          }

          v304 = 536;
        }

        *(v302 + v304) = v301;
LABEL_161:
        v305 = *(*v38 + 16 * v39);
        v306 = ausdk::AUScope::GetElement((this + 792), v39);
        v307 = ausdk::AUElement::GetParameter(v306, 0x3Fu);
        v308 = *(v305 + 424);
        if (v308)
        {
          v309 = *(v308 + 8);
          if (v309 == 1)
          {
            v310 = 492;
            goto LABEL_166;
          }

          if (v309 == 4)
          {
            v310 = 540;
LABEL_166:
            *(v308 + v310) = v307;
          }
        }

        ++v39;
        v311 = *(this + 106);
        v7 = *(this + 105);
        if (v39 >= (v311 - v7) >> 4)
        {
          goto LABEL_170;
        }
      }
    }

    v311 = v7;
LABEL_170:
    if (*(this + 533) == 1 && v311 != v7 && (*(this + 529) & 1) != 0)
    {
      v312 = 0;
      v313 = 0;
      while (1)
      {
        v314 = ausdk::AUScope::GetElement((this + 792), v313);
        LODWORD(v315) = ausdk::AUElement::GetParameter(v314, 0x2Au);
        v316 = *(*(this + 105) + v312);
        v317 = *(this + 84);
        if (v315 <= 2)
        {
          break;
        }

        if (v315 == 3)
        {
          v332 = spp3Subsystem();
          if (v332)
          {
            v333 = *v332;
            if (!*v332)
            {
              goto LABEL_225;
            }
          }

          else
          {
            v333 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v333, OS_LOG_TYPE_ERROR))
          {
            v345 = *(v316 + 16);
            *buf = 136315650;
            *&buf[4] = "CLSPKernel_v5.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 467;
            *&buf[18] = 1024;
            *&buf[20] = v345;
            v335 = v333;
            v336 = "%25s:%-5d Ch %d, IV only AdaptiveDisplacement not supported, defaulting to Open Loop";
            goto LABEL_223;
          }

LABEL_225:
          LODWORD(v315) = 0;
          goto LABEL_226;
        }

        if (v315 == 4)
        {
          goto LABEL_182;
        }

LABEL_226:
        if (v315 != *(v316 + 1024))
        {
          (*(**(v316 + 424) + 40))(*(v316 + 424));
          (*(**(v316 + 424) + 56))(*(v316 + 424));
          (*(**(v316 + 424) + 72))(*(v316 + 424));
          (*(**(v316 + 424) + 88))(*(v316 + 424));
          (*(**(v316 + 424) + 104))(*(v316 + 424));
          (*(**(v316 + 424) + 120))(*(v316 + 424));
          if (v315 == 4)
          {
            v347 = *(v317 + 8 * v313);
            if (v347)
            {
              if (*(v347 + 48))
              {
                v348 = *(v316 + 48);
                if (v348)
                {
                  if (*(v348 + 40))
                  {
                    operator new();
                  }
                }
              }
            }
          }

          else if (v315 == 1)
          {
            v346 = *(v317 + 8 * v313);
            if (v346)
            {
              if (*(v346 + 48))
              {
                operator new();
              }
            }
          }

          operator new();
        }

        ++v313;
        v312 += 16;
        if (v313 >= (*(this + 106) - *(this + 105)) >> 4)
        {
          goto LABEL_249;
        }
      }

      if (v315 != 1)
      {
        if (v315 != 2)
        {
          goto LABEL_226;
        }

        v318 = *(v317 + 8 * v313);
        if (v318 && *(v318 + 48))
        {
          std::allocate_shared[abi:ne200100]<clsp::ParameterUpdater,std::allocator<clsp::ParameterUpdater>,CACFDictionary &,0>();
        }

        v337 = spp3Subsystem();
        if (v337)
        {
          v338 = *v337;
          if (!*v337)
          {
            goto LABEL_182;
          }
        }

        else
        {
          v338 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v338, OS_LOG_TYPE_ERROR))
        {
          v349 = *(v316 + 16);
          *buf = 136315650;
          *&buf[4] = "CLSPKernel_v5.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 461;
          *&buf[18] = 1024;
          *&buf[20] = v349;
          _os_log_impl(&dword_1DDB85000, v338, OS_LOG_TYPE_ERROR, "%25s:%-5d Ch %d, ConvoyAdaptiveDisplacement requested but configuration missing, defaulting to Open Loop", buf, 0x18u);
        }
      }

LABEL_182:
      v319 = *(v316 + 48);
      if (!v319 || (v320 = *(v319 + 40)) == 0)
      {
        v330 = spp3Subsystem();
        if (v330)
        {
          v331 = *v330;
          if (!*v330)
          {
            goto LABEL_225;
          }
        }

        else
        {
          v331 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v331, OS_LOG_TYPE_ERROR))
        {
          v334 = *(v316 + 16);
          *buf = 136315650;
          *&buf[4] = "CLSPKernel_v5.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 489;
          *&buf[18] = 1024;
          *&buf[20] = v334;
          v335 = v331;
          v336 = "%25s:%-5d Ch %d, Convoy calibration parameters not present";
LABEL_223:
          v344 = 24;
LABEL_224:
          _os_log_impl(&dword_1DDB85000, v335, OS_LOG_TYPE_ERROR, v336, buf, v344);
        }

        goto LABEL_225;
      }

      v321 = v320[3];
      v322 = v321 < 0.001 || v321 > 1000.0;
      if (v322 || ((v323 = v320[2], v323 >= 0.001) ? (v324 = v323 > 1000.0) : (v324 = 1), v324 || ((v325 = v320[1], v325 >= 0.001) ? (v326 = v325 > 1000.0) : (v326 = 1), !v326 ? (v327 = v325 < v323) : (v327 = 0), v327 ? (v328 = v323 < v321) : (v328 = 0), !v328)))
      {
        v329 = spp3Subsystem();
        if (v329)
        {
          v315 = *v329;
          if (!*v329)
          {
            goto LABEL_226;
          }
        }

        else
        {
          v315 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v315, OS_LOG_TYPE_ERROR))
        {
          v339 = *(v316 + 16);
          v340 = *(*(v316 + 48) + 40);
          v341 = v340[3];
          v342 = v340[2];
          v343 = v340[1];
          *buf = 136316418;
          *&buf[4] = "CLSPKernel_v5.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 485;
          *&buf[18] = 1024;
          *&buf[20] = v339;
          *v363 = 2048;
          *&v363[2] = v341;
          *&v363[10] = 2048;
          *&v363[12] = v342;
          *&v363[20] = 2048;
          *&v363[22] = v343;
          v335 = v315;
          v336 = "%25s:%-5d Ch %d, Convoy calibration parameters out of range or not Coff < CMin < CMax. Defaulting to Open loop displacement. CMax=%f, CMin=%f, Coff=%f";
          v344 = 54;
          goto LABEL_224;
        }

        goto LABEL_225;
      }

      v350 = spp3Subsystem();
      if (!v350)
      {
        v351 = MEMORY[0x1E69E9C10];
LABEL_247:
        if (os_log_type_enabled(v351, OS_LOG_TYPE_DEBUG))
        {
          v352 = *(v316 + 16);
          *buf = 136315650;
          *&buf[4] = "CLSPKernel_v5.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 482;
          *&buf[18] = 1024;
          *&buf[20] = v352;
          _os_log_impl(&dword_1DDB85000, v351, OS_LOG_TYPE_DEBUG, "%25s:%-5d Ch %d, Convoy calibration parameters within range", buf, 0x18u);
        }

        goto LABEL_226;
      }

      v351 = *v350;
      if (*v350)
      {
        goto LABEL_247;
      }

      goto LABEL_226;
    }

LABEL_249:
    clsp::CLSPKernel_v5::CalcCoeffs(this + 105, *(this + 532), *(this + 78));
    v353 = *(this + 105);
    v354 = *(this + 106);
    while (v353 != v354)
    {
      clsp::CLSPKernel_v5::Reset(*v353);
      v353 += 2;
    }

    *(this + 160) = v355;
    shouldTraceRender();
  }
}

void sub_1DDF1E87C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::exception a24)
{
  std::exception::~exception(&a24);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

void sub_1DDF1E890(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t AUSpeakerProtectionV3::ClosedLoopInputsOK(AUSpeakerProtectionV3 *this, int a2, unsigned int a3, const AudioBufferList **a4)
{
  v51 = *MEMORY[0x1E69E9840];
  if (a3 >= 2)
  {
    v6 = a4[1];
    if (v6)
    {
      v9 = *(this + 15);
      if (v9)
      {
        LODWORD(v10) = (*(*v9 + 24))(v9);
      }

      else
      {
        v10 = (*(this + 13) - *(this + 12)) >> 3;
      }

      if (v10 <= 1)
      {
        if (!*(this + 295))
        {
          v14 = _os_log_pack_size();
          result = caulk::deferred_logger::create_message(*(this + 170), v14 + 88, 16);
          if (!result)
          {
            return result;
          }

          v15 = result;
          *_os_log_pack_fill() = 0;
          v16 = *(*(this + 170) + 16);
          v17 = v15;
          goto LABEL_57;
        }

        return 0;
      }

      Element = ausdk::AUScope::GetElement((this + 80), 1u);
      if (Element)
      {
        v19 = *(Element + 96);
        *buf = *(Element + 80);
        *&buf[16] = v19;
        *&buf[32] = *(Element + 112);
        LODWORD(v47[0]) = 0;
        if (!CAStreamBasicDescription::IdentifyCommonPCMFormat(buf, v47, 0) || LODWORD(v47[0]) != 2)
        {
          LODWORD(v47[0]) = 0;
          if (!CAStreamBasicDescription::IdentifyCommonPCMFormat(buf, v47, 0) || LODWORD(v47[0]) != 1)
          {
            if (*(this + 295))
            {
              return 0;
            }

            v46 = _os_log_pack_size();
            result = caulk::deferred_logger::create_message(*(this + 170), v46 + 88, 16);
            if (!result)
            {
              return result;
            }

            v40 = result;
            v41 = this + 1360;
            *_os_log_pack_fill() = 0;
LABEL_56:
            v16 = *(*v41 + 16);
            v17 = v40;
LABEL_57:
            caulk::concurrent::messenger::enqueue(v16, v17);
            return 0;
          }
        }

        v20 = ausdk::AUScope::GetElement((this + 80), 1u);
        if (v20)
        {
          v21 = *(v20 + 96);
          v47[0] = *(v20 + 80);
          v47[1] = v21;
          v48 = *(v20 + 112);
          v22 = (*(this + 92) - *(this + 91)) >> 3;
          v23 = a4[1];
          v24 = BYTE12(v47[0]);
          if ((BYTE12(v47[0]) & 0x20) != 0)
          {
            v25 = (*(this + 92) - *(this + 91)) >> 3;
          }

          else
          {
            v25 = 1;
          }

          v49 = 0;
          if (!CAStreamBasicDescription::IdentifyCommonPCMFormat(v47, &v49, 0) || (v26 = v49, v49 != 2))
          {
            v49 = 0;
            v27 = CAStreamBasicDescription::IdentifyCommonPCMFormat(v47, &v49, 0);
            if ((v27 & (v49 == 1)) != 0)
            {
              v26 = 4;
            }

            else
            {
              v26 = 0;
            }
          }

          if (v23->mNumberBuffers >= v25)
          {
            v28 = (v24 & 0x20) != 0 ? 1 : v22;
            if (!v25)
            {
              return 1;
            }

            v29 = v28 * v26 * a2;
            v30 = 16 * v25 - 16;
            p_mDataByteSize = &v23->mBuffers[0].mDataByteSize;
            do
            {
              v33 = *p_mDataByteSize;
              p_mDataByteSize += 4;
              v32 = v33;
              v34 = v33 < v29 || v30 == 0;
              v30 -= 16;
            }

            while (!v34);
            if (v32 >= v29)
            {
              return 1;
            }
          }

          for (i = 0; ; ++i)
          {
            v36 = *(this + 104);
            if (v36)
            {
              LODWORD(v37) = (*(*v36 + 24))(v36);
            }

            else
            {
              v37 = (*(this + 102) - *(this + 101)) >> 3;
            }

            if (i >= v37)
            {
              break;
            }

            v38 = ausdk::AUScope::GetElement((this + 792), i);
            ausdk::AUElement::SetParameter(v38, 0x16u, 0.0);
          }

          if (*(this + 295))
          {
            return 0;
          }

          v39 = _os_log_pack_size();
          result = caulk::deferred_logger::create_message(*(this + 170), v39 + 88, 16);
          if (!result)
          {
            return result;
          }

          v40 = result;
          v41 = this + 1360;
          v42 = _os_log_pack_fill();
          mNumberBuffers = v6->mNumberBuffers;
          mNumberChannels = v6->mBuffers[0].mNumberChannels;
          mDataByteSize = v6->mBuffers[0].mDataByteSize;
          *v42 = 67109888;
          *(v42 + 4) = mNumberBuffers;
          *(v42 + 8) = 1024;
          *(v42 + 10) = mNumberChannels;
          *(v42 + 14) = 1024;
          *(v42 + 16) = mDataByteSize;
          *(v42 + 20) = 1024;
          *(v42 + 22) = a2;
          goto LABEL_56;
        }
      }

      ausdk::Throw(0xFFFFD583);
    }
  }

  result = shouldTraceRender();
  if (result)
  {
    result = spp3SubsystemAsync();
    if (result)
    {
      if (*(result + 8))
      {
        v12 = *result;
        if (*result)
        {
          result = os_log_type_enabled(*result, OS_LOG_TYPE_DEBUG);
          if (!result)
          {
            return result;
          }

          if (a3 < 2)
          {
            v13 = 0;
          }

          else
          {
            v13 = a4[1];
          }

          *buf = 136315906;
          *&buf[4] = "AUSpeakerProtectionV3.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 4205;
          *&buf[18] = 1024;
          *&buf[20] = a3;
          *&buf[24] = 2048;
          *&buf[26] = v13;
          _os_log_impl(&dword_1DDB85000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d No Closed Loop inputs: numberInputBufferLists=%u, inputBufferList[1]=%p", buf, 0x22u);
        }
      }

      return 0;
    }
  }

  return result;
}

void AUSpeakerProtectionV3::ParseSpeakerTelemetryBuffer(AUSpeakerProtectionV3 *this, const telemetry::Item *a2, unsigned int a3, uint64_t a4, const float *a5, uint64_t a6, vDSP_Length a7)
{
  v43 = *MEMORY[0x1E69E9840];
  switch(a2)
  {
    case 2:
      v14 = *(*(this + 105) + 16 * a3);
      *(v14 + 994) = 1;
      v15 = *(v14 + 40);
      if (v15 && (v16 = *(v15 + 48)) != 0 && (v17 = *(v14 + 48)) != 0 && *(v17 + 40))
      {
        *buf = *v16;
        MEMORY[0x1E12BE940](a6 + 4 * a4, a5, buf, *(v14 + 896), 1, a7);
        __C = 0.0;
        vDSP_minv(*(v14 + 896), 1, &__C, a7);
        v29 = 0.0;
        vDSP_maxv(*(v14 + 896), 1, &v29, a7);
        v18 = *(*(v14 + 1080) + 160);
        if (v18)
        {
          clsp::CLSP_Log::LogCLSPData(v18, *(v14 + 896), a7);
        }

        v19 = *(*(v14 + 48) + 40);
        v20 = *(v19 + 4);
        v21 = __C > v20;
        v22 = __C <= v20 || *(v19 + 12) * 1.2 <= v29;
        *(v14 + 994) = v22;
        *(v14 + 995) = v21;
      }

      else if (shouldTraceRender())
      {
        v23 = spp3SubsystemAsync();
        if (v23)
        {
          if (*(v23 + 8))
          {
            v24 = *v23;
            if (*v23)
            {
              if (os_log_type_enabled(*v23, OS_LOG_TYPE_DEBUG))
              {
                v25 = *(v14 + 40);
                if (v25)
                {
                  v26 = *(v25 + 48);
                }

                else
                {
                  v26 = 0;
                }

                v27 = *(v14 + 48);
                if (v27)
                {
                  v28 = *(v27 + 40);
                }

                else
                {
                  v28 = 0;
                }

                *buf = 136316418;
                v32 = "CLSPKernel_v5.cpp";
                v33 = 1024;
                v34 = 1577;
                v35 = 2048;
                v36 = v25;
                v37 = 2048;
                v38 = v26;
                v39 = 2048;
                v40 = v27;
                v41 = 2048;
                v42 = v28;
                _os_log_impl(&dword_1DDB85000, v24, OS_LOG_TYPE_DEBUG, "%25s:%-5d System not configured properly for Convoy input stream, clParams=%p, convoyParams=%p, cal=%p, ConvoyCal=%p", buf, 0x3Au);
              }
            }
          }
        }
      }

      break;
    case 1:
      v12 = *(*(this + 105) + 16 * a3);
      *(v12 + 993) = 1;
      v13 = *(v12 + 40);
      if (v13)
      {
        *buf = *(v13 + 4);
        MEMORY[0x1E12BE940](a6 + 4 * a4, a5, buf, *(v12 + 872), 1, a7);
        *(v12 + 993) = 0;
        v10 = *(*(v12 + 1080) + 112);
        if (v10)
        {
          v11 = *(v12 + 872);
          goto LABEL_10;
        }
      }

      break;
    case 0:
      v8 = *(*(this + 105) + 16 * a3);
      *(v8 + 992) = 1;
      v9 = *(v8 + 40);
      if (v9)
      {
        *buf = *v9;
        MEMORY[0x1E12BE940](a6 + 4 * a4, a5, buf, *(v8 + 848), 1, a7);
        *(v8 + 992) = 0;
        v10 = *(*(v8 + 1080) + 128);
        if (v10)
        {
          v11 = *(v8 + 848);
LABEL_10:
          clsp::CLSP_Log::LogCLSPData(v10, v11, a7);
        }
      }

      break;
  }
}

void clsp::ClosedLoopThermalModule::pilotTempSense(clsp::ClosedLoopThermalModule *this, const float *a2, const float *a3, uint64_t a4)
{
  shouldTraceRender();
  v8 = *(this + 12);
  if (v8)
  {
    *(this + 20) = (*(*v8 + 32))(v8, a2, a3, a4);
  }
}

float clsp::SpeakerPowerMeasurement::accumulateAvgSpkPwr(uint64_t a1, const float *__A, const float *a3, vDSP_Length __N)
{
  v4 = __N;
  __C = 0.0;
  vDSP_dotpr(__A, 1, a3, 1, &__C, __N);
  v6 = *(a1 + 16) + v4;
  *(a1 + 16) = v6;
  result = __C + *(a1 + 8);
  *(a1 + 8) = result;
  if (v6 > *(a1 + 4))
  {
    result = result / v6;
    *(a1 + 12) = result;
    *(a1 + 16) = 0;
    *(a1 + 8) = 0;
  }

  return result;
}

void clsp::ThermalStateVector_v3_separate<clsp::CL>::TheInstance()
{
  {
    {
      clsp::ThermalStateVector_v3_separate<clsp::CL>::ThermalStateVector_v3_separate();
    }
  }
}

void clsp::ThermalStateVector_v3_separate<clsp::OL>::TheInstance()
{
  {
    {
      clsp::ThermalStateVector_v3_separate<clsp::OL>::ThermalStateVector_v3_separate();
    }
  }
}

void sub_1DDF1F484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](va);
  if (clsp::ThermalStateVector_v3_separate<clsp::OL>::TheInstance(void)::inst)
  {
    qword_1ECDA9B98 = clsp::ThermalStateVector_v3_separate<clsp::OL>::TheInstance(void)::inst;
    operator delete(clsp::ThermalStateVector_v3_separate<clsp::OL>::TheInstance(void)::inst);
  }

  _Unwind_Resume(a1);
}

uint64_t clsp::ThermalStateVector_v3_separate<clsp::OL>::~ThermalStateVector_v3_separate(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

void std::vector<clsp::ThermalState_v3>::vector[abi:ne200100](void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

void sub_1DDF1F570(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN4clsp30ThermalStateVector_v3_separateINS_2OLEEC2Ev_block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = *(result + 32);
    v3 = *v2;
    for (i = v2[1]; v3 != i; v3 += 24)
    {
      *(v3 + 4) = xmmword_1DE097CE0;
      *(v3 + 20) = 1065353216;
      *v3 = 1;
    }
  }

  return result;
}

void CASmartPreferences::AddHandler<BOOL>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8[8] = *MEMORY[0x1E69E9840];
  {
    if (v6)
    {
      CASmartPreferences::CASmartPreferences(v6);
    }
  }

  v7 = a3;
  std::__function::__value_func<void ()(BOOL)>::__value_func[abi:ne200100](v8, a4);
  v8[7] = 0;
  operator new();
}

uint64_t std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(BOOL)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<BOOL ()(void const*)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__func<void CASmartPreferences::AddHandler<BOOL>(__CFString const*,__CFString const*,BOOL (*)(void const*,BOOL &),std::function<void ()(BOOL)>)::{lambda(void const*)#1},std::allocator<void CASmartPreferences::AddHandler<BOOL>(__CFString const*,__CFString const*,BOOL (*)(void const*,BOOL &),std::function<void ()(BOOL)>)::{lambda(void const*)#1}>,BOOL ()(void const*)>::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v8 = 0;
  v4 = (*(a1 + 8))(v3, &v8);
  v5 = 0;
  if (v8 == 1)
  {
    v9 = v4;
    v6 = *(a1 + 40);
    if (!v6)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v6 + 48))(v6, &v9);
    v5 = v8;
  }

  return v5 & 1;
}

void std::__function::__func<void CASmartPreferences::AddHandler<BOOL>(__CFString const*,__CFString const*,BOOL (*)(void const*,BOOL &),std::function<void ()(BOOL)>)::{lambda(void const*)#1},std::allocator<void CASmartPreferences::AddHandler<BOOL>(__CFString const*,__CFString const*,BOOL (*)(void const*,BOOL &),std::function<void ()(BOOL)>)::{lambda(void const*)#1}>,BOOL ()(void const*)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](a1 + 16);

  operator delete(a1);
}

uint64_t std::__function::__func<void CASmartPreferences::AddHandler<BOOL>(__CFString const*,__CFString const*,BOOL (*)(void const*,BOOL &),std::function<void ()(BOOL)>)::{lambda(void const*)#1},std::allocator<void CASmartPreferences::AddHandler<BOOL>(__CFString const*,__CFString const*,BOOL (*)(void const*,BOOL &),std::function<void ()(BOOL)>)::{lambda(void const*)#1}>,BOOL ()(void const*)>::__clone(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5933958;
  a2[1] = v2;
  return std::__function::__value_func<void ()(BOOL)>::__value_func[abi:ne200100]((a2 + 2), a1 + 16);
}

void std::__function::__func<void CASmartPreferences::AddHandler<BOOL>(__CFString const*,__CFString const*,BOOL (*)(void const*,BOOL &),std::function<void ()(BOOL)>)::{lambda(void const*)#1},std::allocator<void CASmartPreferences::AddHandler<BOOL>(__CFString const*,__CFString const*,BOOL (*)(void const*,BOOL &),std::function<void ()(BOOL)>)::{lambda(void const*)#1}>,BOOL ()(void const*)>::~__func(void *a1)
{
  *a1 = &unk_1F5933958;
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100]((a1 + 2));

  JUMPOUT(0x1E12BD160);
}

void *std::__function::__func<void CASmartPreferences::AddHandler<BOOL>(__CFString const*,__CFString const*,BOOL (*)(void const*,BOOL &),std::function<void ()(BOOL)>)::{lambda(void const*)#1},std::allocator<void CASmartPreferences::AddHandler<BOOL>(__CFString const*,__CFString const*,BOOL (*)(void const*,BOOL &),std::function<void ()(BOOL)>)::{lambda(void const*)#1}>,BOOL ()(void const*)>::~__func(void *a1)
{
  *a1 = &unk_1F5933958;
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100]((a1 + 2));
  return a1;
}

void std::__function::__func<void({block_pointer})(BOOL),std::allocator<void({block_pointer})(BOOL)>,void ()(BOOL)>::destroy(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    _Block_release(v2);
  }

  *(a1 + 8) = 0;
}

void *std::__function::__func<void({block_pointer})(BOOL),std::allocator<void({block_pointer})(BOOL)>,void ()(BOOL)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F592E378;
  result = *(a1 + 8);
  if (result)
  {
    result = _Block_copy(result);
  }

  a2[1] = result;
  return result;
}

void sub_1DDF1FFF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](va);
  if (clsp::ThermalStateVector_v3_separate<clsp::CL>::TheInstance(void)::inst)
  {
    qword_1ECDA9B68 = clsp::ThermalStateVector_v3_separate<clsp::CL>::TheInstance(void)::inst;
    operator delete(clsp::ThermalStateVector_v3_separate<clsp::CL>::TheInstance(void)::inst);
  }

  _Unwind_Resume(a1);
}

uint64_t clsp::ThermalStateVector_v3_separate<clsp::CL>::~ThermalStateVector_v3_separate(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t ___ZN4clsp30ThermalStateVector_v3_separateINS_2CLEEC2Ev_block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = *(result + 32);
    v3 = *v2;
    for (i = v2[1]; v3 != i; v3 += 24)
    {
      *(v3 + 4) = xmmword_1DE097CE0;
      *(v3 + 20) = 1065353216;
      *v3 = 1;
    }
  }

  return result;
}

char *clsp::ThermalStateVector_v3_separate<clsp::CL>::ThermalState(unsigned int a1)
{
  clsp::ThermalStateVector_v3_separate<clsp::CL>::TheInstance();
  if (0xAAAAAAAAAAAAAAABLL * ((qword_1ECDA9B68 - clsp::ThermalStateVector_v3_separate<clsp::CL>::TheInstance(void)::inst) >> 3) <= a1)
  {
    result = &clsp::ThermalStateVector_v3_separate<clsp::CL>::ThermalState::unInitState;
    {
      result = &clsp::ThermalStateVector_v3_separate<clsp::CL>::ThermalState::unInitState;
      if (v3)
      {
        clsp::ThermalStateVector_v3_separate<clsp::CL>::ThermalState::unInitState = 0;
        unk_1ECDA9BFC = 0;
        unk_1ECDA9BF4 = 0;
        dword_1ECDA9C04 = 0;
        result = &clsp::ThermalStateVector_v3_separate<clsp::CL>::ThermalState::unInitState;
      }
    }

    clsp::ThermalStateVector_v3_separate<clsp::CL>::ThermalState::unInitState = 0;
  }

  else
  {
    clsp::ThermalStateVector_v3_separate<clsp::CL>::TheInstance();
    if (0xAAAAAAAAAAAAAAABLL * ((qword_1ECDA9B68 - clsp::ThermalStateVector_v3_separate<clsp::CL>::TheInstance(void)::inst) >> 3) <= a1)
    {
      std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
    }

    return (clsp::ThermalStateVector_v3_separate<clsp::CL>::TheInstance(void)::inst + 24 * a1);
  }

  return result;
}

char *clsp::ThermalStateVector_v3_separate<clsp::OL>::ThermalState(unsigned int a1)
{
  clsp::ThermalStateVector_v3_separate<clsp::OL>::TheInstance();
  if (0xAAAAAAAAAAAAAAABLL * ((qword_1ECDA9B98 - clsp::ThermalStateVector_v3_separate<clsp::OL>::TheInstance(void)::inst) >> 3) <= a1)
  {
    result = &clsp::ThermalStateVector_v3_separate<clsp::OL>::ThermalState::unInitState;
    {
      result = &clsp::ThermalStateVector_v3_separate<clsp::OL>::ThermalState::unInitState;
      if (v3)
      {
        clsp::ThermalStateVector_v3_separate<clsp::OL>::ThermalState::unInitState = 0;
        unk_1ECDA9C1C = 0;
        unk_1ECDA9C14 = 0;
        dword_1ECDA9C24 = 0;
        result = &clsp::ThermalStateVector_v3_separate<clsp::OL>::ThermalState::unInitState;
      }
    }

    clsp::ThermalStateVector_v3_separate<clsp::OL>::ThermalState::unInitState = 0;
  }

  else
  {
    clsp::ThermalStateVector_v3_separate<clsp::OL>::TheInstance();
    if (0xAAAAAAAAAAAAAAABLL * ((qword_1ECDA9B98 - clsp::ThermalStateVector_v3_separate<clsp::OL>::TheInstance(void)::inst) >> 3) <= a1)
    {
      std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
    }

    return (clsp::ThermalStateVector_v3_separate<clsp::OL>::TheInstance(void)::inst + 24 * a1);
  }

  return result;
}

float clsp::ThermalController::restoreThermalState(uint64_t a1, uint64_t a2)
{
  shouldTraceRender();
  if (*a2 == 1)
  {
    v4 = *(a2 + 4);
    *(a1 + 152) = *(a2 + 8);
    v5 = *(a2 + 16);
    *(a1 + 172) = *(a2 + 12);
    *(a1 + 192) = v4;
    *(a1 + 232) = v5;
    *(a1 + 260) = v5;
    *(a1 + 276) = v5;
    result = *(a2 + 20);
    *(a1 + 124) = result;
  }

  else
  {

    return clsp::ThermalController::resetThermalState(a1);
  }

  return result;
}

void clsp::ThermalController::updateThermalState(clsp::ThermalController *this, float a2)
{
  v2 = *(this + 40);
  if (!v2)
  {
    __assert_rtn("updateThermalState", "CLSPBlocks.h", 1590, "mr_CLTModule");
  }

  if (a2 >= 0.5)
  {
    v4 = a2;
    v5 = *(this + 8);
    v6 = *(this + 38);
    v7 = -a2;
    *(this + 38) = v6 * expf(-a2 / v5);
    v8 = *(this + 10);
    v9 = *(this + 43);
    *(this + 43) = v9 * expf(v7 / v8);
    v10 = *(this + 12);
    v11 = *(this + 48);
    *(this + 48) = v11 * expf(v7 / v10);
    v12 = *(this + 58);
    v13 = -v4;
    v14 = (v12 + -1.0) * exp(v13 / (*(this + (v12 >= 1.0) + 25) / 4.60517019)) + 1.0;
    *(this + 58) = v14;
    v15 = *this;
    v16 = (*(v2 + 140) - *this);
    v17 = v15 + v16 * exp(v13 / (*(v2 + 128) / 4.60517019));
    *(v2 + 140) = v17;
  }
}

uint64_t AUSpeakerProtectionV3::SetParameter(AUSpeakerProtectionV3 *this, unsigned int a2, int a3, unsigned int a4, float a5)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a3 != 4)
  {
    if (a3)
    {
      return 4294956430;
    }

    v8 = spp3Subsystem();
    if (v8)
    {
      v9 = *v8;
      if (!*v8)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v14 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v15 & 1) == 0)
      {
        goto LABEL_28;
      }

      v21 = 136316162;
      v22 = "AUSpeakerProtectionV3.cpp";
      v23 = 1024;
      v24 = 2382;
      v25 = 1024;
      v26 = a2;
      v27 = 2048;
      Parameter = ausdk::AUElement::GetParameter(v14, a2);
      v29 = 2048;
      v30 = a5;
      _os_log_impl(&dword_1DDB85000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d AUSpeakerProtectionV3::SetParameter(%d): %f -> %f\n", &v21, 0x2Cu);
    }

LABEL_14:
    v16 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if (v17)
    {
      goto LABEL_20;
    }

LABEL_28:
    abort();
  }

  v11 = spp3Subsystem();
  if (v11)
  {
    v12 = *v11;
    if (!*v11)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v12 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    Element = ausdk::AUScope::GetElement((this + 792), a4);
    v21 = 136316162;
    v22 = "AUSpeakerProtectionV3.cpp";
    v23 = 1024;
    v24 = 2387;
    v25 = 1024;
    v26 = a2;
    v27 = 2048;
    Parameter = ausdk::AUElement::GetParameter(Element, a2);
    v29 = 2048;
    v30 = a5;
    _os_log_impl(&dword_1DDB85000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d Part AUSpeakerProtectionV3::SetParameter(%d): %f -> %f\n", &v21, 0x2Cu);
  }

LABEL_19:
  v16 = ausdk::AUScope::GetElement((this + 792), a4);
  if (!v16)
  {
    v19 = spp3Subsystem();
    if (v19)
    {
      v20 = *v19;
      if (!*v19)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v20 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = 136315650;
      v22 = "AUSpeakerProtectionV3.cpp";
      v23 = 1024;
      v24 = 2392;
      v25 = 1024;
      v26 = a2;
      _os_log_impl(&dword_1DDB85000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d Part AUSpeakerProtectionV3::SetParameter(%d): partElement is null\n", &v21, 0x18u);
    }

    goto LABEL_21;
  }

LABEL_20:
  ausdk::AUElement::SetParameter(v16, a2, a5);
LABEL_21:
  result = 0;
  ++*(this + 159);
  return result;
}

uint64_t AUSpeakerProtectionV3::SetProperty(AUSpeakerProtectionV3 *this, int a2, int a3, unsigned int a4, int *a5, void *a6, int *a7)
{
  v7 = a6;
  v62 = *MEMORY[0x1E69E9840];
  v54 = 0;
  if (SimpleMeters::HandleSetProperty((this + 1192), a2, a3, a5, a6, &v54, a7))
  {
    return v54;
  }

  if (a3)
  {
    return 4294956417;
  }

  v12 = 4294956417;
  if (a2 > 64004)
  {
    if (a2 <= 64007)
    {
      if (a2 == 64005)
      {
        if (a5 && v7 >= 4)
        {
          v52[0] = 0;
          v52[1] = 0;
          v53 = 0;
          std::vector<clsp::telemetry::Item>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(v52, a5, &a5[v7 >> 2], v7 >> 2);
        }

        if (*(this + 776) == 1)
        {
          v31 = *(this + 94);
          if (v31)
          {
            *(this + 95) = v31;
            operator delete(v31);
          }

          v12 = 0;
          *(this + 776) = 0;
          return v12;
        }

        return 0;
      }

      if (a2 == 64006)
      {
        if (a5 && v7 >= 4)
        {
          v52[0] = 0;
          v52[1] = 0;
          v53 = 0;
          std::vector<BOOL>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(v52, a5, &a5[v7 >> 2], v7 >> 2);
        }

        if (*(this + 584) == 1)
        {
          v30 = *(this + 70);
          if (v30)
          {
            operator delete(v30);
          }

          v12 = 0;
          *(this + 584) = 0;
          return v12;
        }

        return 0;
      }

      if (v7 >= 4)
      {
        v14 = *a5;
        if (v14 != *(this + 196))
        {
          v15 = spp3Subsystem();
          if (v15)
          {
            v16 = *v15;
            if (!*v15)
            {
LABEL_121:
              v12 = 0;
              *(this + 196) = v14;
              return v12;
            }
          }

          else
          {
            v16 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            v45 = *(this + 196);
            __p = 136315906;
            __p_4 = "AUSpeakerProtectionV3.cpp";
            __p_12 = 1024;
            __p_14 = 3084;
            v59 = 1024;
            *v60 = v45;
            *&v60[4] = 1024;
            *&v60[6] = v14;
            _os_log_impl(&dword_1DDB85000, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d AUSpeakerProtectionV3::SetProperty - Thermal State Override %u->%u\n", &__p, 0x1Eu);
          }

          goto LABEL_121;
        }

        return 0;
      }

      return 4294956445;
    }

    if (a2 == 64008)
    {
      v12 = 4294956445;
      if (!a5 || v7 != 8)
      {
        return v12;
      }

      v29 = *a5;
      applesauce::CF::details::Retain<__CFDictionary const*>(*a5);
      applesauce::CF::DictionaryRef::DictionaryRef(&v51, v29);
      AUSpeakerProtectionV3::SetPowerBudgetProperty(this, &v51);
      applesauce::CF::DictionaryRef::~DictionaryRef(&v51);
      return 0;
    }

    if (a2 != 64009)
    {
      if (a2 != 64010)
      {
        return v12;
      }

      if (a5)
      {
        std::vector<long long>::__assign_with_size[abi:ne200100]<long long const*,long long const*>(this + 167, a5, &a5[2 * (v7 >> 3)], v7 >> 3);
        return 0;
      }

      return 4294956445;
    }

    if (*(this + 1328) == 1)
    {
      v24 = spp3Subsystem();
      if (v24)
      {
        v25 = *v24;
        if (!*v24)
        {
          goto LABEL_83;
        }
      }

      else
      {
        v25 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        __p = 136315394;
        __p_4 = "AUSpeakerProtectionV3.cpp";
        __p_12 = 1024;
        __p_14 = 2976;
        _os_log_impl(&dword_1DDB85000, v25, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Set SpeakerCalibration property: Applying calibration data on top of SpTS. Not as intended.", &__p, 0x12u);
      }
    }

LABEL_83:
    if (v7 < 8)
    {
      return 4294956445;
    }

    v12 = AUSpeakerProtectionV3::InterpretSpeakerCalibration(this, *a5);
    v36 = spp3Subsystem();
    if (v36)
    {
      v34 = *v36;
      if (!*v36)
      {
        return v12;
      }
    }

    else
    {
      v34 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      __p = 136315394;
      __p_4 = "AUSpeakerProtectionV3.cpp";
      __p_12 = 1024;
      __p_14 = 2982;
      v35 = "%25s:%-5d Set TransducerCalibrationCF property";
      goto LABEL_91;
    }

    return v12;
  }

  if (a2 <= 64001)
  {
    if (a2 != 21)
    {
      if (a2 != 64001)
      {
        return v12;
      }

      if (*(this + 1328) == 1)
      {
        v19 = spp3Subsystem();
        if (v19)
        {
          v20 = *v19;
          if (!*v19)
          {
            goto LABEL_74;
          }
        }

        else
        {
          v20 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          __p = 136315394;
          __p_4 = "AUSpeakerProtectionV3.cpp";
          __p_12 = 1024;
          __p_14 = 2967;
          _os_log_impl(&dword_1DDB85000, v20, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Set SpeakerCalibration property: Applying calibration data on top of SpTS. Not as intended.", &__p, 0x12u);
        }
      }

LABEL_74:
      v12 = AUSpeakerProtectionV3::InterpretSpeakerCalibration(this, a5, v7);
      v33 = spp3Subsystem();
      if (v33)
      {
        v34 = *v33;
        if (!*v33)
        {
          return v12;
        }
      }

      else
      {
        v34 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        __p = 136315394;
        __p_4 = "AUSpeakerProtectionV3.cpp";
        __p_12 = 1024;
        __p_14 = 2970;
        v35 = "%25s:%-5d Set TransducerCalibration property";
LABEL_91:
        _os_log_impl(&dword_1DDB85000, v34, OS_LOG_TYPE_DEBUG, v35, &__p, 0x12u);
      }

      return v12;
    }

    if (v7 < 4)
    {
      return 4294956445;
    }

    v21 = *a5;
    if ((v21 != 0) == (*(*this + 576))(this))
    {
      return 0;
    }

    v22 = spp3Subsystem();
    if (v22)
    {
      v23 = *v22;
      if (!*v22)
      {
LABEL_107:
        (*(*this + 584))(this, v21 != 0);
        return 0;
      }
    }

    else
    {
      v23 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v39 = (*(*this + 576))(this);
      v40 = "off";
      __p_4 = "AUSpeakerProtectionV3.cpp";
      __p_12 = 1024;
      __p_14 = 2959;
      if (v39)
      {
        v41 = "on";
      }

      else
      {
        v41 = "off";
      }

      __p = 136315906;
      *v60 = v41;
      v59 = 2080;
      if (v21)
      {
        v40 = "on";
      }

      *&v60[8] = 2080;
      v61 = v40;
      _os_log_impl(&dword_1DDB85000, v23, OS_LOG_TYPE_DEBUG, "%25s:%-5d AUSpeakerProtectionV3::SetProperty - Bypass %s->%s\n", &__p, 0x26u);
    }

    goto LABEL_107;
  }

  if (a2 == 64002)
  {
    if (v7 < 4)
    {
      return 4294956445;
    }

    v26 = *a5;
    if ((v26 != 0) == *(this + 532))
    {
      return 0;
    }

    v27 = spp3Subsystem();
    if (v27)
    {
      v28 = *v27;
      if (!*v27)
      {
LABEL_117:
        v12 = 0;
        *(this + 532) = v26 != 0;
        return v12;
      }
    }

    else
    {
      v28 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      v42 = "off";
      v43 = *(this + 532);
      __p_4 = "AUSpeakerProtectionV3.cpp";
      __p_12 = 1024;
      __p_14 = 2993;
      if (v43)
      {
        v44 = "on";
      }

      else
      {
        v44 = "off";
      }

      __p = 136315906;
      if (v26)
      {
        v42 = "on";
      }

      v59 = 2080;
      *v60 = v44;
      *&v60[8] = 2080;
      v61 = v42;
      _os_log_impl(&dword_1DDB85000, v28, OS_LOG_TYPE_DEBUG, "%25s:%-5d AUSpeakerProtectionV3::SetProperty - VP Mode %s->%s\n", &__p, 0x26u);
    }

    goto LABEL_117;
  }

  if (a2 != 64003)
  {
    LOBYTE(v52[0]) = 0;
    CACFPreferencesGetAppBooleanValue(@"clsp_enable_closed_loop", @"com.apple.coreaudio", v52);
    if (LOBYTE(v52[0]) == 1)
    {
      v17 = spp3Subsystem();
      if (v17)
      {
        v18 = *v17;
        if (!*v17)
        {
          return 0;
        }
      }

      else
      {
        v18 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        __p = 136315394;
        __p_4 = "AUSpeakerProtectionV3.cpp";
        __p_12 = 1024;
        __p_14 = 3011;
        _os_log_impl(&dword_1DDB85000, v18, OS_LOG_TYPE_DEBUG, "%25s:%-5d clsp_enable_closed_loop default exists. Ignoring set property for EnableClosedLoop", &__p, 0x12u);
      }

      return 0;
    }

    if (v7 < 4)
    {
      return 4294956445;
    }

    v32 = *a5;
    *(this + 1329) = v32 != 0;
    if (*(this + 533))
    {
      if ((v32 != 0) == *(this + 529))
      {
        return 0;
      }
    }

    else if (!v32)
    {
      return 0;
    }

    v37 = spp3Subsystem();
    if (v37)
    {
      v38 = *v37;
      if (!*v37)
      {
LABEL_131:
        for (i = 0; ; ++i)
        {
          v49 = *(this + 104);
          if (v49)
          {
            LODWORD(v50) = (*(*v49 + 24))(v49);
          }

          else
          {
            v50 = (*(this + 102) - *(this + 101)) >> 3;
          }

          if (i >= v50)
          {
            break;
          }

          AUSpeakerProtectionV3::SetClosedLoopEnabled(this, i, v32 != 0);
        }

        return 0;
      }
    }

    else
    {
      v38 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      v46 = "off";
      v47 = "off";
      if (*(this + 533) == 1)
      {
        if (*(this + 529))
        {
          v47 = "on";
        }

        else
        {
          v47 = "off";
        }
      }

      if (v32)
      {
        v46 = "on";
      }

      __p = 136315906;
      __p_4 = "AUSpeakerProtectionV3.cpp";
      __p_12 = 1024;
      __p_14 = 3026;
      v59 = 2080;
      *v60 = v47;
      *&v60[8] = 2080;
      v61 = v46;
      _os_log_impl(&dword_1DDB85000, v38, OS_LOG_TYPE_DEBUG, "%25s:%-5d AUSpeakerProtectionV3::SetProperty - EnableClosedLoop %s->%s\n", &__p, 0x26u);
    }

    goto LABEL_131;
  }

  CACFDictionary::operator=(this + 656, *a5);

  return AUSpeakerProtectionV3::InitParamsFromPlist(this, (this + 656));
}

void sub_1DDF21298(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 buf)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __cxa_begin_catch(exception_object);
  v17 = spp3Subsystem();
  if (v17)
  {
    v18 = *v17;
    if (!*v17)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v18 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 136315394;
    *(&buf + 4) = "AUSpeakerProtectionV3.cpp";
    WORD6(buf) = 1024;
    *(&buf + 14) = 3045;
    _os_log_impl(&dword_1DDB85000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d AUSpeakerProtectionV3::SetProperty - Telemetry data order. Could not be fully parsed (invalid data?).\n", &buf, 0x12u);
  }

LABEL_8:
  __cxa_end_catch();
  JUMPOUT(0x1DDF20CF8);
}

uint64_t AUSpeakerProtectionV3::InterpretSpeakerCalibration(AUSpeakerProtectionV3 *this, unsigned __int16 *a2, unsigned int a3)
{
  v42 = *MEMORY[0x1E69E9840];
  if (a3 <= 3)
  {
    v4 = spp3Subsystem();
    if (v4)
    {
      v5 = *v4;
      if (!*v4)
      {
        return 4294956445;
      }
    }

    else
    {
      v5 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      buf[0] = 136315906;
      *&buf[1] = "AUSpeakerProtectionV3.cpp";
      v36 = 1024;
      v37 = 3115;
      v38 = 1024;
      v39 = a3;
      v40 = 1024;
      v41 = 4;
      v10 = "%25s:%-5d SpCl property size %d less than expected SpCl header size %d";
LABEL_16:
      v11 = v5;
      v12 = 30;
LABEL_55:
      _os_log_impl(&dword_1DDB85000, v11, OS_LOG_TYPE_ERROR, v10, buf, v12);
      return 4294956445;
    }

    return 4294956445;
  }

  if (!a2)
  {
    v13 = spp3Subsystem();
    if (v13)
    {
      v14 = *v13;
      if (!*v13)
      {
        return 4294956445;
      }
    }

    else
    {
      v14 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      buf[0] = 136315394;
      *&buf[1] = "AUSpeakerProtectionV3.cpp";
      v36 = 1024;
      v37 = 3120;
      v10 = "%25s:%-5d SpCl property data is null";
      v11 = v14;
      v12 = 18;
      goto LABEL_55;
    }

    return 4294956445;
  }

  v7 = a2[1];
  if (v7 == 3)
  {
    v15 = *a2;
    v16 = (8 * v15) | 4;
    if (v16 > a3)
    {
      v17 = spp3Subsystem();
      if (v17)
      {
        v5 = *v17;
        if (!*v17)
        {
          return 4294956445;
        }
      }

      else
      {
        v5 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        buf[0] = 136315906;
        *&buf[1] = "AUSpeakerProtectionV3.cpp";
        v36 = 1024;
        v37 = 3156;
        v38 = 1024;
        v39 = a3;
        v40 = 1024;
        v41 = (8 * v15) | 4;
        v10 = "%25s:%-5d inDataSize %d < expected size %d";
        goto LABEL_16;
      }

      return 4294956445;
    }

    if (v16 == a3)
    {
      goto LABEL_64;
    }

    v21 = spp3Subsystem();
    if (v21)
    {
      v22 = *v21;
      if (!*v21)
      {
LABEL_64:
        v29 = *(this + 88);
        v30 = *(this + 87);
        while (v29 != v30)
        {
          v29 = std::unique_ptr<clsp::SpeakerCalibrationProperties>::~unique_ptr[abi:ne200100](v29 - 1);
        }

        *(this + 88) = v30;
        if (v15)
        {
          operator new();
        }

        return 0;
      }
    }

    else
    {
      v22 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      buf[0] = 136315906;
      *&buf[1] = "AUSpeakerProtectionV3.cpp";
      v36 = 1024;
      v37 = 3160;
      v38 = 1024;
      v39 = a3;
      v40 = 1024;
      v41 = (8 * v15) | 4;
      _os_log_impl(&dword_1DDB85000, v22, OS_LOG_TYPE_DEFAULT, "%25s:%-5d inDataSize %d does not match expected size %d", buf, 0x1Eu);
    }

    goto LABEL_64;
  }

  if (v7 == 2)
  {
    if (a3 <= 0xB)
    {
      v20 = spp3Subsystem();
      if (v20)
      {
        v5 = *v20;
        if (!*v20)
        {
          return 4294956445;
        }
      }

      else
      {
        v5 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        buf[0] = 136315906;
        *&buf[1] = "AUSpeakerProtectionV3.cpp";
        v36 = 1024;
        v37 = 3132;
        v38 = 1024;
        v39 = a3;
        v40 = 1024;
        v41 = 12;
        v10 = "%25s:%-5d inDataSize %d < expected size %d";
        goto LABEL_16;
      }

      return 4294956445;
    }

    if (a3 != 12)
    {
      v8 = spp3Subsystem();
      if (v8)
      {
        v9 = *v8;
        if (!*v8)
        {
          goto LABEL_60;
        }
      }

      else
      {
        v9 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        buf[0] = 136315906;
        *&buf[1] = "AUSpeakerProtectionV3.cpp";
        v36 = 1024;
        v37 = 3136;
        v38 = 1024;
        v39 = a3;
        v40 = 1024;
        v41 = 12;
        _os_log_impl(&dword_1DDB85000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d inDataSize %d does not match expected size %d", buf, 0x1Eu);
      }
    }

LABEL_60:
    operator new();
  }

  if ((v7 & 0xFFFE) != 6)
  {
    v23 = spp3Subsystem();
    if (v23)
    {
      v24 = *v23;
      if (!*v23)
      {
        return 4294956445;
      }
    }

    else
    {
      v24 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v27 = *a2;
      buf[0] = 136315650;
      *&buf[1] = "AUSpeakerProtectionV3.cpp";
      v36 = 1024;
      v37 = 3213;
      v38 = 1024;
      v39 = v27;
      v10 = "%25s:%-5d SpCl version not recognized in SpCl header: 0x%x";
      v11 = v24;
      v12 = 24;
      goto LABEL_55;
    }

    return 4294956445;
  }

  v33 = *a2;
  v18 = 28 * *a2 + 4;
  if (v18 > a3)
  {
    v19 = spp3Subsystem();
    if (v19)
    {
      v5 = *v19;
      if (!*v19)
      {
        return 4294956445;
      }
    }

    else
    {
      v5 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      buf[0] = 136315906;
      *&buf[1] = "AUSpeakerProtectionV3.cpp";
      v36 = 1024;
      v37 = 3186;
      v38 = 1024;
      v39 = a3;
      v40 = 1024;
      v41 = v18;
      v10 = "%25s:%-5d inDataSize %d < expected size %d";
      goto LABEL_16;
    }

    return 4294956445;
  }

  if (v18 == a3)
  {
    goto LABEL_75;
  }

  v25 = spp3Subsystem();
  if (!v25)
  {
    v26 = MEMORY[0x1E69E9C10];
LABEL_73:
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      buf[0] = 136315906;
      *&buf[1] = "AUSpeakerProtectionV3.cpp";
      v36 = 1024;
      v37 = 3190;
      v38 = 1024;
      v39 = a3;
      v40 = 1024;
      v41 = v18;
      _os_log_impl(&dword_1DDB85000, v26, OS_LOG_TYPE_DEFAULT, "%25s:%-5d inDataSize %d does not match expected size %d", buf, 0x1Eu);
    }

    goto LABEL_75;
  }

  v26 = *v25;
  if (*v25)
  {
    goto LABEL_73;
  }

LABEL_75:
  v31 = *(this + 88);
  v32 = *(this + 87);
  while (v31 != v32)
  {
    v31 = std::unique_ptr<clsp::SpeakerCalibrationProperties>::~unique_ptr[abi:ne200100](v31 - 1);
  }

  *(this + 88) = v32;
  if (v33)
  {
    operator new();
  }

  return 0;
}

void sub_1DDF2243C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::locale a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  std::ostringstream::~ostringstream(&a31);
  std::unique_ptr<clsp::SpeakerCalibrationProperties>::~unique_ptr[abi:ne200100](&a26);
  _Unwind_Resume(a1);
}

uint64_t AUSpeakerProtectionV3::InterpretSpeakerCalibration(AUSpeakerProtectionV3 *this, const void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  applesauce::CF::ArrayRef::from_get(&theArray, a2);
  v2 = theArray;
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    v3 = theArray;
    if (theArray)
    {
      v18 = CFArrayGetCount(theArray);
    }

    else
    {
      v18 = 0;
    }

    if (Count && (v2 != v3 || v18))
    {
      applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(&cf, v2, 0);
      v4 = cf;
      if (cf)
      {
        CFRetain(cf);
        v5 = applesauce::CF::details::at_key<char const*&>(v4, "thiele_small_data_source_id");
        if (v5 && (applesauce::CF::convert_as<unsigned int,0>(v5) & 0x100000000) != 0)
        {
          if (SpTS::v2::Speaker::has<float>(v4, "thiele_small_fs"))
          {
            if (SpTS::v2::Speaker::has<float>(v4, "thiele_small_qts"))
            {
              if (SpTS::v2::Speaker::has<float>(v4, "thiele_small_re"))
              {
                if (SpTS::v2::Speaker::has<float>(v4, "thiele_small_t"))
                {
                  if (SpTS::v2::Speaker::has<float>(v4, "thiele_small_le"))
                  {
                    if (SpTS::v2::Speaker::has<float>(v4, "thiele_small_kms"))
                    {
                      if (SpTS::v2::Speaker::has<float>(v4, "thiele_small_mms"))
                      {
                        if (SpTS::v2::Speaker::has<float>(v4, "thiele_small_bi"))
                        {
                          if (SpTS::v2::Speaker::has<float>(v4, "thiele_small_rms"))
                          {
                            operator new();
                          }

                          exception = __cxa_allocate_exception(0x10uLL);
                          std::string::basic_string[abi:ne200100]<0>(&__p, "thiele_small_rms");
                          std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "Speaker calibration data is missing '", &__p);
                          std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v24, &buf, "' key");
                          std::runtime_error::runtime_error(exception, &v24);
                        }

                        v17 = __cxa_allocate_exception(0x10uLL);
                        std::string::basic_string[abi:ne200100]<0>(&__p, "thiele_small_bi");
                        std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "Speaker calibration data is missing '", &__p);
                        std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v24, &buf, "' key");
                        std::runtime_error::runtime_error(v17, &v24);
                      }

                      v15 = __cxa_allocate_exception(0x10uLL);
                      std::string::basic_string[abi:ne200100]<0>(&__p, "thiele_small_mms");
                      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "Speaker calibration data is missing '", &__p);
                      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v24, &buf, "' key");
                      std::runtime_error::runtime_error(v15, &v24);
                    }

                    v8 = __cxa_allocate_exception(0x10uLL);
                    std::string::basic_string[abi:ne200100]<0>(&__p, "thiele_small_kms");
                    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "Speaker calibration data is missing '", &__p);
                    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v24, &buf, "' key");
                    std::runtime_error::runtime_error(v8, &v24);
                  }

                  v11 = __cxa_allocate_exception(0x10uLL);
                  std::string::basic_string[abi:ne200100]<0>(&__p, "thiele_small_le");
                  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "Speaker calibration data is missing '", &__p);
                  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v24, &buf, "' key");
                  std::runtime_error::runtime_error(v11, &v24);
                }

                v9 = __cxa_allocate_exception(0x10uLL);
                std::string::basic_string[abi:ne200100]<0>(&__p, "thiele_small_t");
                std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "Speaker calibration data is missing '", &__p);
                std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v24, &buf, "' key");
                std::runtime_error::runtime_error(v9, &v24);
              }

              v12 = __cxa_allocate_exception(0x10uLL);
              std::string::basic_string[abi:ne200100]<0>(&__p, "thiele_small_re");
              std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "Speaker calibration data is missing '", &__p);
              std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v24, &buf, "' key");
              std::runtime_error::runtime_error(v12, &v24);
            }

            v10 = __cxa_allocate_exception(0x10uLL);
            std::string::basic_string[abi:ne200100]<0>(&__p, "thiele_small_qts");
            std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "Speaker calibration data is missing '", &__p);
            std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v24, &buf, "' key");
            std::runtime_error::runtime_error(v10, &v24);
          }

          v13 = __cxa_allocate_exception(0x10uLL);
          std::string::basic_string[abi:ne200100]<0>(&__p, "thiele_small_fs");
          std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "Speaker calibration data is missing '", &__p);
          std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v24, &buf, "' key");
          std::runtime_error::runtime_error(v13, &v24);
        }

        v7 = __cxa_allocate_exception(0x10uLL);
        std::string::basic_string[abi:ne200100]<0>(&__p, "thiele_small_data_source_id");
        std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "Speaker calibration data is missing '", &__p);
        std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v24, &buf, "' key");
        std::runtime_error::runtime_error(v7, &v24);
      }

      v14 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v14, "Could not construct");
    }

    if (theArray)
    {
      CFRelease(theArray);
    }
  }

  return 0;
}

void sub_1DDF230FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, int a21, __int16 a22, char a23, char a24, int a25, __int16 a26, char a27, char a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, void *__p, int a47, __int16 a48, int a49, int a50, char a51, char a52)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1DDF232C8(uint64_t a1, int a2)
{
  if (a2)
  {
    MEMORY[0x1E12BD160](v2, 0x1020C4058DE0928);
    JUMPOUT(0x1DDF232E8);
  }

  JUMPOUT(0x1DDF23294);
}

void sub_1DDF232F8(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x1DDF23300);
  }

  JUMPOUT(0x1DDF23294);
}

void sub_1DDF23320(uint64_t a1, int a2)
{
  if (a2)
  {
    std::__shared_weak_count::~__shared_weak_count(v2);
    operator delete(v3);
    JUMPOUT(0x1DDF23334);
  }

  JUMPOUT(0x1DDF23294);
}

uint64_t AUSpeakerProtectionV3::InitParamsFromPlist(AUSpeakerProtectionV3 *this, CACFDictionary *a2)
{
  v128[19] = *MEMORY[0x1E69E9840];
  v97 = 0;
  if (!CACFDictionary::GetSInt32(*a2, @"Version", &v97))
  {
    v5 = spp3Subsystem();
    if (v5)
    {
      v6 = *v5;
      if (!*v5)
      {
        return -203;
      }
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf[0].__locale_) = 136315394;
      *(&buf[0].__locale_ + 4) = "AUSpeakerProtectionV3.cpp";
      WORD2(buf[1].__locale_) = 1024;
      *(&buf[1].__locale_ + 6) = 3550;
      _os_log_impl(&dword_1DDB85000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to get Version key.", buf, 0x12u);
    }

    return -203;
  }

  if (v97 == 9)
  {
    AUSpeakerProtectionV3::InitParamsFromPlistV9(this, *a2);
  }

  if (v97 == 8)
  {
    v111 = -1;
    if (CACFDictionary::GetSInt32(*a2, @"NumChannels", &v111))
    {
      v9 = 0;
      v96 = 0;
      *(this + 158) = v111;
LABEL_36:
      v110 = 0;
      SInt32 = CACFDictionary::GetSInt32(*a2, @"ConvoyDataSourceOverride", &v110);
      v17 = v110;
      if (!SInt32)
      {
        v17 = 0;
      }

      *(this + 180) = v17;
      v107 = 0;
      v108 = 0;
      v109 = 0;
      buf[0].__locale_ = @"AmbientTemp";
      LODWORD(buf[1].__locale_) = 4;
      std::vector<std::pair<__CFString const*,AUSPV3GlobalParams>>::push_back[abi:ne200100](&v107, buf);
      buf[0].__locale_ = @"ThermalGainAttackTime";
      LODWORD(buf[1].__locale_) = 2;
      std::vector<std::pair<__CFString const*,AUSPV3GlobalParams>>::push_back[abi:ne200100](&v107, buf);
      buf[0].__locale_ = @"ThermalGainReleaseTime";
      LODWORD(buf[1].__locale_) = 3;
      std::vector<std::pair<__CFString const*,AUSPV3GlobalParams>>::push_back[abi:ne200100](&v107, buf);
      buf[0].__locale_ = @"PeakDispAttackTime";
      LODWORD(buf[1].__locale_) = 9;
      std::vector<std::pair<__CFString const*,AUSPV3GlobalParams>>::push_back[abi:ne200100](&v107, buf);
      buf[0].__locale_ = @"PeakDispDecayTime";
      LODWORD(buf[1].__locale_) = 10;
      std::vector<std::pair<__CFString const*,AUSPV3GlobalParams>>::push_back[abi:ne200100](&v107, buf);
      buf[0].__locale_ = @"DispFBIntegrationTime";
      LODWORD(buf[1].__locale_) = 11;
      std::vector<std::pair<__CFString const*,AUSPV3GlobalParams>>::push_back[abi:ne200100](&v107, buf);
      buf[0].__locale_ = @"LookaheadDelay_ms";
      LODWORD(buf[1].__locale_) = 8;
      std::vector<std::pair<__CFString const*,AUSPV3GlobalParams>>::push_back[abi:ne200100](&v107, buf);
      buf[0].__locale_ = @"SafeTlim";
      LODWORD(buf[1].__locale_) = 5;
      std::vector<std::pair<__CFString const*,AUSPV3GlobalParams>>::push_back[abi:ne200100](&v107, buf);
      buf[0].__locale_ = @"SafeTlimTimeMin";
      LODWORD(buf[1].__locale_) = 6;
      std::vector<std::pair<__CFString const*,AUSPV3GlobalParams>>::push_back[abi:ne200100](&v107, buf);
      buf[0].__locale_ = @"SafeTlimOffset";
      LODWORD(buf[1].__locale_) = 7;
      std::vector<std::pair<__CFString const*,AUSPV3GlobalParams>>::push_back[abi:ne200100](&v107, buf);
      v104 = 0;
      v105 = 0;
      v106 = 0;
      buf[0].__locale_ = @"TemperatureLimit";
      LODWORD(buf[1].__locale_) = 0;
      std::vector<std::pair<__CFString const*,AUSPV3PartParams>>::push_back[abi:ne200100](&v104, buf);
      buf[0].__locale_ = @"HardTempLimitHeadroom";
      LODWORD(buf[1].__locale_) = 1;
      std::vector<std::pair<__CFString const*,AUSPV3PartParams>>::push_back[abi:ne200100](&v104, buf);
      buf[0].__locale_ = @"ThermalFFSpeedupFactor";
      LODWORD(buf[1].__locale_) = 6;
      std::vector<std::pair<__CFString const*,AUSPV3PartParams>>::push_back[abi:ne200100](&v104, buf);
      buf[0].__locale_ = @"Rshunt";
      LODWORD(buf[1].__locale_) = 10;
      std::vector<std::pair<__CFString const*,AUSPV3PartParams>>::push_back[abi:ne200100](&v104, buf);
      buf[0].__locale_ = @"Rampout";
      LODWORD(buf[1].__locale_) = 11;
      std::vector<std::pair<__CFString const*,AUSPV3PartParams>>::push_back[abi:ne200100](&v104, buf);
      buf[0].__locale_ = @"mt";
      LODWORD(buf[1].__locale_) = 12;
      std::vector<std::pair<__CFString const*,AUSPV3PartParams>>::push_back[abi:ne200100](&v104, buf);
      buf[0].__locale_ = @"ct";
      LODWORD(buf[1].__locale_) = 13;
      std::vector<std::pair<__CFString const*,AUSPV3PartParams>>::push_back[abi:ne200100](&v104, buf);
      buf[0].__locale_ = @"kt";
      LODWORD(buf[1].__locale_) = 14;
      std::vector<std::pair<__CFString const*,AUSPV3PartParams>>::push_back[abi:ne200100](&v104, buf);
      buf[0].__locale_ = @"ag";
      LODWORD(buf[1].__locale_) = 15;
      std::vector<std::pair<__CFString const*,AUSPV3PartParams>>::push_back[abi:ne200100](&v104, buf);
      buf[0].__locale_ = @"g_bw";
      LODWORD(buf[1].__locale_) = 16;
      std::vector<std::pair<__CFString const*,AUSPV3PartParams>>::push_back[abi:ne200100](&v104, buf);
      buf[0].__locale_ = @"Q_d";
      LODWORD(buf[1].__locale_) = 17;
      std::vector<std::pair<__CFString const*,AUSPV3PartParams>>::push_back[abi:ne200100](&v104, buf);
      buf[0].__locale_ = @"phi";
      LODWORD(buf[1].__locale_) = 18;
      std::vector<std::pair<__CFString const*,AUSPV3PartParams>>::push_back[abi:ne200100](&v104, buf);
      buf[0].__locale_ = @"x_lim";
      LODWORD(buf[1].__locale_) = 19;
      std::vector<std::pair<__CFString const*,AUSPV3PartParams>>::push_back[abi:ne200100](&v104, buf);
      buf[0].__locale_ = @"Reb_ref";
      LODWORD(buf[1].__locale_) = 9;
      std::vector<std::pair<__CFString const*,AUSPV3PartParams>>::push_back[abi:ne200100](&v104, buf);
      buf[0].__locale_ = @"T_sett_vc";
      LODWORD(buf[1].__locale_) = 2;
      std::vector<std::pair<__CFString const*,AUSPV3PartParams>>::push_back[abi:ne200100](&v104, buf);
      buf[0].__locale_ = @"T_sett_mg";
      LODWORD(buf[1].__locale_) = 3;
      std::vector<std::pair<__CFString const*,AUSPV3PartParams>>::push_back[abi:ne200100](&v104, buf);
      buf[0].__locale_ = @"tau_Tvc";
      LODWORD(buf[1].__locale_) = 4;
      std::vector<std::pair<__CFString const*,AUSPV3PartParams>>::push_back[abi:ne200100](&v104, buf);
      buf[0].__locale_ = @"tau_Tmg";
      LODWORD(buf[1].__locale_) = 5;
      std::vector<std::pair<__CFString const*,AUSPV3PartParams>>::push_back[abi:ne200100](&v104, buf);
      if (v108 != v107)
      {
        if (((v108 - v107) >> 4) <= 1)
        {
          v18 = 1;
        }

        else
        {
          v18 = (v108 - v107) >> 4;
        }

        v19 = v107 + 2;
        while (1)
        {
          v20 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
          if ((v21 & 1) == 0)
          {
            break;
          }

          v9 += AUSpeakerProtectionV3::SetParamFromPair(this, v20, *(v19 - 1), *v19, *a2);
          v19 += 4;
          if (!--v18)
          {
            goto LABEL_45;
          }
        }

LABEL_187:
        abort();
      }

LABEL_45:
      __p = 0;
      v102 = 0;
      v103 = 0;
      std::vector<std::pair<__CFString const*,AUSPV3PartParams>>::__init_with_size[abi:ne200100]<std::pair<__CFString const*,AUSPV3PartParams>*,std::pair<__CFString const*,AUSPV3PartParams>*>(&__p, v104, v105, (v105 - v104) >> 4);
      v91 = AUSpeakerProtectionV3::SetChannelParamsFromPlist(this, &__p, a2);
      if (__p)
      {
        v102 = __p;
        operator delete(__p);
      }

      v22 = spp3Subsystem();
      if (v22)
      {
        if (*(v22 + 8))
        {
          v23 = *v22;
          if (*v22)
          {
            if (os_log_type_enabled(*v22, OS_LOG_TYPE_DEBUG))
            {
              LODWORD(buf[0].__locale_) = 136315394;
              *(&buf[0].__locale_ + 4) = "AUSpeakerProtectionV3.cpp";
              WORD2(buf[1].__locale_) = 1024;
              *(&buf[1].__locale_ + 6) = 3443;
              _os_log_impl(&dword_1DDB85000, v23, OS_LOG_TYPE_DEBUG, "%25s:%-5d InitCLParamsFromPlistV8", buf, 0x12u);
            }
          }
        }
      }

      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      LOWORD(v99) = 257;
      CACFDictionary::GetCACFDictionary(a2, @"CLParams", &Mutable);
      if (!Mutable)
      {
        v43 = spp3Subsystem();
        if (v43)
        {
          v44 = *v43;
          if (!*v43)
          {
LABEL_159:
            CACFDictionary::~CACFDictionary(&Mutable);
            v51 = *(this + 158);
            if (v51)
            {
              v85 = 0;
              do
              {
                AUSpeakerProtectionV3::SetClosedLoopEnabled(this, v85++, 0);
              }

              while (v85 < *(this + 158));
              LOBYTE(v51) = 0;
            }

LABEL_163:
            *(this + 529) = v51;
            if (v9 + v91)
            {
              v96 = -50;
            }

            else
            {
              *(this + 528) = 1;
              ausdk::AUScope::SetNumberOfElements((this + 792), *(this + 158));
            }

            if (v104)
            {
              operator delete(v104);
            }

            v86 = v107;
            if (v107)
            {
              goto LABEL_184;
            }

            return v96;
          }
        }

        else
        {
          v44 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf[0].__locale_) = 136315394;
          *(&buf[0].__locale_ + 4) = "AUSpeakerProtectionV3.cpp";
          WORD2(buf[1].__locale_) = 1024;
          *(&buf[1].__locale_ + 6) = 3450;
          _os_log_impl(&dword_1DDB85000, v44, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Cannot get CLParams Key", buf, 0x12u);
        }

        goto LABEL_159;
      }

      v24 = AUSpeakerProtectionV3::SetCLChannelParamsFromPlist(this, &Mutable);
      v25 = *(this + 85);
      v26 = *(this + 84);
      if (v25 != v26)
      {
        v27 = 0;
        do
        {
          v28 = *(v26 + 8 * v27);
          if (*(v28 + 56))
          {
            memset(buf, 0, 24);
            *v118 = @"mu_Re";
            *&v118[8] = 37;
            std::vector<std::pair<__CFString const*,AUSPV3PartParams>>::push_back[abi:ne200100](buf, v118);
            *v118 = @"mu_LeUni";
            *&v118[8] = 38;
            std::vector<std::pair<__CFString const*,AUSPV3PartParams>>::push_back[abi:ne200100](buf, v118);
            *v118 = @"mu_Mechanical";
            *&v118[8] = 39;
            std::vector<std::pair<__CFString const*,AUSPV3PartParams>>::push_back[abi:ne200100](buf, v118);
            locale = buf[0].__locale_;
            v30 = buf[1].__locale_;
            if (buf[0].__locale_ != buf[1].__locale_)
            {
              v31 = buf[0].__locale_;
              do
              {
                Element = ausdk::AUScope::GetElement((this + 792), v27);
                v24 += AUSpeakerProtectionV3::SetParamFromPair(this, Element, *v31, *(v31 + 2), **(v28 + 56));
                v31 = (v31 + 16);
              }

              while (v31 != v30);
            }

            if (locale)
            {
              operator delete(locale);
            }

            v25 = *(this + 85);
            v26 = *(this + 84);
          }

          ++v27;
        }

        while (v27 < (v25 - v26) >> 3);
      }

      v116 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
      v117 = 257;
      CACFDictionary::GetCACFArray(&Mutable, @"ChannelSpecificParams", &v116);
      Count = v116;
      if (v116)
      {
        Count = CFArrayGetCount(v116);
      }

      if (Count == *(this + 158))
      {
        *v118 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        *&v118[8] = 257;
        if (*(this + 158))
        {
          v34 = 0;
          v35 = @"DisplacementProtectionType";
          do
          {
            CACFArray::GetCACFDictionary(&v116, v34, v118);
            v115 = -1;
            CACFDictionary::GetSInt32(*v118, @"ChannelID", &v115);
            if (v34 == v115)
            {
              v36 = ausdk::AUScope::GetElement((this + 792), v34);
              inited = AUSpeakerProtectionV3::InitCLParamsFromPlist(this, v36, v118);
              memset(buf, 0, 24);
              v114 = 0;
              v24 += inited;
              if (CACFDictionary::GetSInt32(*v118, v35, &v114))
              {
                v112[0] = v35;
                LODWORD(v112[1]) = 42;
                std::vector<std::pair<__CFString const*,AUSPV3PartParams>>::push_back[abi:ne200100](buf, v112);
                if (v114 == 4 || v114 == 1)
                {
                  v112[0] = @"ConvoyPeakFinderThresholdUpper";
                  LODWORD(v112[1]) = 47;
                  std::vector<std::pair<__CFString const*,AUSPV3PartParams>>::push_back[abi:ne200100](buf, v112);
                  v112[0] = @"ConvoyPeakFinderThresholdLower";
                  LODWORD(v112[1]) = 48;
                  std::vector<std::pair<__CFString const*,AUSPV3PartParams>>::push_back[abi:ne200100](buf, v112);
                  v112[0] = @"ConvoyPeakDetectorAtkTime";
                  LODWORD(v112[1]) = 49;
                  std::vector<std::pair<__CFString const*,AUSPV3PartParams>>::push_back[abi:ne200100](buf, v112);
                  v112[0] = @"ConvoyPeakDetectorRelTime";
                  LODWORD(v112[1]) = 50;
                  std::vector<std::pair<__CFString const*,AUSPV3PartParams>>::push_back[abi:ne200100](buf, v112);
                  v112[0] = @"ConvoyNormFactorCapUpper";
                  LODWORD(v112[1]) = 51;
                  std::vector<std::pair<__CFString const*,AUSPV3PartParams>>::push_back[abi:ne200100](buf, v112);
                  v112[0] = @"ConvoyNormFactorCapLower";
                  LODWORD(v112[1]) = 52;
                  std::vector<std::pair<__CFString const*,AUSPV3PartParams>>::push_back[abi:ne200100](buf, v112);
                  v112[0] = @"ConvoyNormFactorAttack";
                  LODWORD(v112[1]) = 53;
                  std::vector<std::pair<__CFString const*,AUSPV3PartParams>>::push_back[abi:ne200100](buf, v112);
                  v112[0] = @"ConvoyNormFactorRelease";
                  LODWORD(v112[1]) = 54;
                  std::vector<std::pair<__CFString const*,AUSPV3PartParams>>::push_back[abi:ne200100](buf, v112);
                  v112[0] = @"ConvoyPeakRatioPosBlockThreshold";
                  LODWORD(v112[1]) = 55;
                  std::vector<std::pair<__CFString const*,AUSPV3PartParams>>::push_back[abi:ne200100](buf, v112);
                  v112[0] = @"ConvoyPeakRatioNegBlockThreshold";
                  LODWORD(v112[1]) = 56;
                  std::vector<std::pair<__CFString const*,AUSPV3PartParams>>::push_back[abi:ne200100](buf, v112);
                  v112[0] = @"ConvoyMinExcursion";
                  LODWORD(v112[1]) = 57;
                  std::vector<std::pair<__CFString const*,AUSPV3PartParams>>::push_back[abi:ne200100](buf, v112);
                  v112[0] = @"ConvoyMaxExcursion";
                  LODWORD(v112[1]) = 58;
                  std::vector<std::pair<__CFString const*,AUSPV3PartParams>>::push_back[abi:ne200100](buf, v112);
                  v112[0] = @"ConvoyRelXLimUpper";
                  LODWORD(v112[1]) = 59;
                  std::vector<std::pair<__CFString const*,AUSPV3PartParams>>::push_back[abi:ne200100](buf, v112);
                  v112[0] = @"ConvoyRelXLimLower";
                  LODWORD(v112[1]) = 60;
                  std::vector<std::pair<__CFString const*,AUSPV3PartParams>>::push_back[abi:ne200100](buf, v112);
                  v112[0] = @"ConvoyPeakRatiosInWindowCountThreshold";
                  LODWORD(v112[1]) = 61;
                  std::vector<std::pair<__CFString const*,AUSPV3PartParams>>::push_back[abi:ne200100](buf, v112);
                  v112[0] = @"ConvoyNormFactorThreshold";
                  LODWORD(v112[1]) = 62;
                  std::vector<std::pair<__CFString const*,AUSPV3PartParams>>::push_back[abi:ne200100](buf, v112);
                  v112[0] = @"ConvoyBufferDirtyCountThreshold_ms";
                  LODWORD(v112[1]) = 63;
                  std::vector<std::pair<__CFString const*,AUSPV3PartParams>>::push_back[abi:ne200100](buf, v112);
                }

                v38 = v35;
                v40 = buf[0].__locale_;
                v39 = buf[1].__locale_;
                if (buf[0].__locale_ != buf[1].__locale_)
                {
                  v41 = buf[0].__locale_;
                  do
                  {
                    v42 = ausdk::AUScope::GetElement((this + 792), v34);
                    v24 += AUSpeakerProtectionV3::SetParamFromPair(this, v42, *v41, *(v41 + 2), *v118);
                    v41 = (v41 + 16);
                  }

                  while (v41 != v39);
                }

                if (v40)
                {
                  buf[1].__locale_ = v40;
                  operator delete(v40);
                }

                v35 = v38;
              }
            }

            else
            {
              ++v24;
            }

            ++v34;
          }

          while (v34 < *(this + 158));
        }

        CACFDictionary::~CACFDictionary(v118);
      }

      if (v24)
      {
        CACFArray::~CACFArray(&v116);
        goto LABEL_159;
      }

      v45 = *(this + 84);
      v94 = *(this + 85);
      if (v45 == v94)
      {
LABEL_101:
        CACFArray::~CACFArray(&v116);
        CACFDictionary::~CACFDictionary(&Mutable);
        LOBYTE(v51) = 1;
        goto LABEL_163;
      }

      v46 = 0;
      v92 = *MEMORY[0x1E69E54E8];
      v47 = *(MEMORY[0x1E69E54E8] + 24);
      while (1)
      {
        std::ostringstream::basic_ostringstream[abi:ne200100](buf);
        clsp::ClosedLoopParameters::dump(*v45, buf);
        v48 = spp3Subsystem();
        if (!v48)
        {
          break;
        }

        v49 = *v48;
        if (*v48)
        {
          goto LABEL_93;
        }

LABEL_98:
        buf[0].__locale_ = v92;
        *(&buf[0].__locale_ + *(v92 - 3)) = v47;
        buf[1].__locale_ = (MEMORY[0x1E69E5548] + 16);
        if (v127 < 0)
        {
          operator delete(v126);
        }

        buf[1].__locale_ = (MEMORY[0x1E69E5538] + 16);
        std::locale::~locale(&buf[2]);
        std::ostream::~ostream();
        MEMORY[0x1E12BD050](v128);
        ++v45;
        ++v46;
        if (v45 == v94)
        {
          goto LABEL_101;
        }
      }

      v49 = MEMORY[0x1E69E9C10];
LABEL_93:
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
      {
        std::stringbuf::str[abi:ne200100](v112, &buf[1]);
        v50 = v112;
        if (v113 < 0)
        {
          v50 = v112[0];
        }

        *v118 = 136315906;
        *&v118[4] = "AUSpeakerProtectionV3.cpp";
        v119 = 1024;
        v120 = 3525;
        v121 = 1024;
        v122 = v46;
        v123 = 2080;
        v124 = v50;
        _os_log_impl(&dword_1DDB85000, v49, OS_LOG_TYPE_DEBUG, "%25s:%-5d Ch %d, CLParams:\n%s", v118, 0x22u);
        if (v113 < 0)
        {
          operator delete(v112[0]);
        }
      }

      goto LABEL_98;
    }

    v12 = spp3Subsystem();
    if (v12)
    {
      v13 = *v12;
      if (!*v12)
      {
LABEL_35:
        v96 = -203;
        v9 = 1;
        goto LABEL_36;
      }
    }

    else
    {
      v13 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf[0].__locale_) = 136315394;
      *(&buf[0].__locale_ + 4) = "AUSpeakerProtectionV3.cpp";
      WORD2(buf[1].__locale_) = 1024;
      *(&buf[1].__locale_ + 6) = 3675;
      _os_log_impl(&dword_1DDB85000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d Cannot get NumChannels Key", buf, 0x12u);
    }

    goto LABEL_35;
  }

  if (v97 != 7)
  {
    v10 = spp3Subsystem();
    if (v10)
    {
      v11 = *v10;
      if (!*v10)
      {
        return -205;
      }
    }

    else
    {
      v11 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf[0].__locale_) = 136315650;
      *(&buf[0].__locale_ + 4) = "AUSpeakerProtectionV3.cpp";
      WORD2(buf[1].__locale_) = 1024;
      *(&buf[1].__locale_ + 6) = 3546;
      WORD1(buf[2].__locale_) = 1024;
      HIDWORD(buf[2].__locale_) = v97;
      _os_log_impl(&dword_1DDB85000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d SPP plist version %d is not supported.", buf, 0x18u);
    }

    return -205;
  }

  v115 = -1;
  if (CACFDictionary::GetSInt32(*a2, @"NumChannels", &v115))
  {
    v4 = 0;
    v96 = 0;
    *(this + 158) = v115;
    goto LABEL_106;
  }

  v14 = spp3Subsystem();
  if (!v14)
  {
    v15 = MEMORY[0x1E69E9C10];
LABEL_103:
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf[0].__locale_) = 136315394;
      *(&buf[0].__locale_ + 4) = "AUSpeakerProtectionV3.cpp";
      WORD2(buf[1].__locale_) = 1024;
      *(&buf[1].__locale_ + 6) = 3568;
      _os_log_impl(&dword_1DDB85000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d Cannot get NumChannels Key", buf, 0x12u);
    }

    goto LABEL_105;
  }

  v15 = *v14;
  if (*v14)
  {
    goto LABEL_103;
  }

LABEL_105:
  v96 = -203;
  v4 = 1;
LABEL_106:
  v114 = 0;
  v52 = CACFDictionary::GetSInt32(*a2, @"ConvoyDataSourceOverride", &v114);
  v53 = v114;
  if (!v52)
  {
    v53 = 0;
  }

  *(this + 180) = v53;
  v107 = 0;
  v108 = 0;
  v109 = 0;
  buf[0].__locale_ = @"AmbientTemp";
  LODWORD(buf[1].__locale_) = 4;
  std::vector<std::pair<__CFString const*,AUSPV3GlobalParams>>::push_back[abi:ne200100](&v107, buf);
  buf[0].__locale_ = @"ThermalGainAttackTime";
  LODWORD(buf[1].__locale_) = 2;
  std::vector<std::pair<__CFString const*,AUSPV3GlobalParams>>::push_back[abi:ne200100](&v107, buf);
  buf[0].__locale_ = @"ThermalGainReleaseTime";
  LODWORD(buf[1].__locale_) = 3;
  std::vector<std::pair<__CFString const*,AUSPV3GlobalParams>>::push_back[abi:ne200100](&v107, buf);
  buf[0].__locale_ = @"PeakDispAttackTime";
  LODWORD(buf[1].__locale_) = 9;
  std::vector<std::pair<__CFString const*,AUSPV3GlobalParams>>::push_back[abi:ne200100](&v107, buf);
  buf[0].__locale_ = @"PeakDispDecayTime";
  LODWORD(buf[1].__locale_) = 10;
  std::vector<std::pair<__CFString const*,AUSPV3GlobalParams>>::push_back[abi:ne200100](&v107, buf);
  buf[0].__locale_ = @"DispFBIntegrationTime";
  LODWORD(buf[1].__locale_) = 11;
  std::vector<std::pair<__CFString const*,AUSPV3GlobalParams>>::push_back[abi:ne200100](&v107, buf);
  buf[0].__locale_ = @"LookaheadDelay_ms";
  LODWORD(buf[1].__locale_) = 8;
  std::vector<std::pair<__CFString const*,AUSPV3GlobalParams>>::push_back[abi:ne200100](&v107, buf);
  buf[0].__locale_ = @"SafeTlim";
  LODWORD(buf[1].__locale_) = 5;
  std::vector<std::pair<__CFString const*,AUSPV3GlobalParams>>::push_back[abi:ne200100](&v107, buf);
  buf[0].__locale_ = @"SafeTlimTimeMin";
  LODWORD(buf[1].__locale_) = 6;
  std::vector<std::pair<__CFString const*,AUSPV3GlobalParams>>::push_back[abi:ne200100](&v107, buf);
  buf[0].__locale_ = @"SafeTlimOffset";
  LODWORD(buf[1].__locale_) = 7;
  std::vector<std::pair<__CFString const*,AUSPV3GlobalParams>>::push_back[abi:ne200100](&v107, buf);
  v104 = 0;
  v105 = 0;
  v106 = 0;
  buf[0].__locale_ = @"TemperatureLimit";
  LODWORD(buf[1].__locale_) = 0;
  std::vector<std::pair<__CFString const*,AUSPV3PartParams>>::push_back[abi:ne200100](&v104, buf);
  buf[0].__locale_ = @"HardTempLimitHeadroom";
  LODWORD(buf[1].__locale_) = 1;
  std::vector<std::pair<__CFString const*,AUSPV3PartParams>>::push_back[abi:ne200100](&v104, buf);
  buf[0].__locale_ = @"ThermalFFSpeedupFactor";
  LODWORD(buf[1].__locale_) = 6;
  std::vector<std::pair<__CFString const*,AUSPV3PartParams>>::push_back[abi:ne200100](&v104, buf);
  __p = 0;
  v102 = 0;
  v103 = 0;
  buf[0].__locale_ = @"Rshunt";
  LODWORD(buf[1].__locale_) = 10;
  std::vector<std::pair<__CFString const*,AUSPV3PartParams>>::push_back[abi:ne200100](&__p, buf);
  buf[0].__locale_ = @"Rampout";
  LODWORD(buf[1].__locale_) = 11;
  std::vector<std::pair<__CFString const*,AUSPV3PartParams>>::push_back[abi:ne200100](&__p, buf);
  buf[0].__locale_ = @"mt";
  LODWORD(buf[1].__locale_) = 12;
  std::vector<std::pair<__CFString const*,AUSPV3PartParams>>::push_back[abi:ne200100](&__p, buf);
  buf[0].__locale_ = @"ct";
  LODWORD(buf[1].__locale_) = 13;
  std::vector<std::pair<__CFString const*,AUSPV3PartParams>>::push_back[abi:ne200100](&__p, buf);
  buf[0].__locale_ = @"kt";
  LODWORD(buf[1].__locale_) = 14;
  std::vector<std::pair<__CFString const*,AUSPV3PartParams>>::push_back[abi:ne200100](&__p, buf);
  buf[0].__locale_ = @"ag";
  LODWORD(buf[1].__locale_) = 15;
  std::vector<std::pair<__CFString const*,AUSPV3PartParams>>::push_back[abi:ne200100](&__p, buf);
  buf[0].__locale_ = @"g_bw";
  LODWORD(buf[1].__locale_) = 16;
  std::vector<std::pair<__CFString const*,AUSPV3PartParams>>::push_back[abi:ne200100](&__p, buf);
  buf[0].__locale_ = @"Q_d";
  LODWORD(buf[1].__locale_) = 17;
  std::vector<std::pair<__CFString const*,AUSPV3PartParams>>::push_back[abi:ne200100](&__p, buf);
  buf[0].__locale_ = @"phi";
  LODWORD(buf[1].__locale_) = 18;
  std::vector<std::pair<__CFString const*,AUSPV3PartParams>>::push_back[abi:ne200100](&__p, buf);
  buf[0].__locale_ = @"x_lim";
  LODWORD(buf[1].__locale_) = 19;
  std::vector<std::pair<__CFString const*,AUSPV3PartParams>>::push_back[abi:ne200100](&__p, buf);
  buf[0].__locale_ = @"Reb_ref";
  LODWORD(buf[1].__locale_) = 9;
  std::vector<std::pair<__CFString const*,AUSPV3PartParams>>::push_back[abi:ne200100](&__p, buf);
  buf[0].__locale_ = @"T_sett_vc";
  LODWORD(buf[1].__locale_) = 2;
  std::vector<std::pair<__CFString const*,AUSPV3PartParams>>::push_back[abi:ne200100](&__p, buf);
  buf[0].__locale_ = @"T_sett_mg";
  LODWORD(buf[1].__locale_) = 3;
  std::vector<std::pair<__CFString const*,AUSPV3PartParams>>::push_back[abi:ne200100](&__p, buf);
  buf[0].__locale_ = @"tau_Tvc";
  LODWORD(buf[1].__locale_) = 4;
  std::vector<std::pair<__CFString const*,AUSPV3PartParams>>::push_back[abi:ne200100](&__p, buf);
  buf[0].__locale_ = @"tau_Tmg";
  LODWORD(buf[1].__locale_) = 5;
  std::vector<std::pair<__CFString const*,AUSPV3PartParams>>::push_back[abi:ne200100](&__p, buf);
  v54 = v107;
  if (v108 != v107)
  {
    if (((v108 - v107) >> 4) <= 1)
    {
      v55 = 1;
    }

    else
    {
      v55 = (v108 - v107) >> 4;
    }

    v56 = v107 + 2;
    do
    {
      v57 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v58 & 1) == 0)
      {
        goto LABEL_187;
      }

      v4 += AUSpeakerProtectionV3::SetParamFromPair(this, v57, *(v56 - 1), *v56, *a2);
      v56 += 4;
    }

    while (--v55);
  }

  v90 = v54;
  v59 = *(this + 158);
  if (v59)
  {
    v60 = 0;
    v62 = v104;
    v61 = v105;
    if (((v105 - v104) >> 4) <= 1)
    {
      v63 = 1;
    }

    else
    {
      v63 = (v105 - v104) >> 4;
    }

    v64 = v105;
    do
    {
      v65 = (v62 + 8);
      v66 = v63;
      v67 = v64 == v62;
      v64 = v62;
      if (!v67)
      {
        do
        {
          v68 = ausdk::AUScope::GetElement((this + 792), v60);
          v4 += AUSpeakerProtectionV3::SetParamFromPair(this, v68, *(v65 - 1), *v65, *a2);
          v65 += 4;
          --v66;
        }

        while (v66);
        v59 = *(this + 158);
        v64 = v61;
      }

      ++v60;
    }

    while (v60 < v59);
  }

  Mutable = 0;
  v99 = 0;
  v100 = 0;
  v69 = __p;
  std::vector<std::pair<__CFString const*,AUSPV3PartParams>>::__init_with_size[abi:ne200100]<std::pair<__CFString const*,AUSPV3PartParams>*,std::pair<__CFString const*,AUSPV3PartParams>*>(&Mutable, __p, v102, (v102 - __p) >> 4);
  v89 = AUSpeakerProtectionV3::SetChannelParamsFromPlist(this, &Mutable, a2);
  v70 = v90;
  if (Mutable)
  {
    operator delete(Mutable);
  }

  v71 = spp3Subsystem();
  if (v71)
  {
    if (*(v71 + 8))
    {
      v72 = *v71;
      if (*v71)
      {
        if (os_log_type_enabled(*v71, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(buf[0].__locale_) = 136315394;
          *(&buf[0].__locale_ + 4) = "AUSpeakerProtectionV3.cpp";
          WORD2(buf[1].__locale_) = 1024;
          *(&buf[1].__locale_ + 6) = 3409;
          _os_log_impl(&dword_1DDB85000, v72, OS_LOG_TYPE_DEBUG, "%25s:%-5d InitCLParamsFromPlistV7", buf, 0x12u);
        }
      }
    }
  }

  v116 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v117 = 257;
  CACFDictionary::GetCACFDictionary(a2, @"CLParams", &v116);
  if (!v116)
  {
    v76 = spp3Subsystem();
    if (v76)
    {
      v77 = *v76;
      if (!*v76)
      {
        goto LABEL_173;
      }
    }

    else
    {
      v77 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf[0].__locale_) = 136315394;
      *(&buf[0].__locale_ + 4) = "AUSpeakerProtectionV3.cpp";
      WORD2(buf[1].__locale_) = 1024;
      *(&buf[1].__locale_ + 6) = 3416;
      _os_log_impl(&dword_1DDB85000, v77, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Cannot get CLParams Key", buf, 0x12u);
    }

    goto LABEL_173;
  }

  if (*(this + 158))
  {
    v73 = 0;
    v74 = 0;
    do
    {
      v75 = ausdk::AUScope::GetElement((this + 792), v74);
      v73 += AUSpeakerProtectionV3::InitCLParamsFromPlist(this, v75, &v116);
      ++v74;
    }

    while (v74 < *(this + 158));
  }

  else
  {
    v73 = 0;
  }

  if (AUSpeakerProtectionV3::SetCLChannelParamsFromPlist(this, &v116) + v73)
  {
LABEL_173:
    CACFDictionary::~CACFDictionary(&v116);
    v84 = *(this + 158);
    if (v84)
    {
      v87 = 0;
      do
      {
        AUSpeakerProtectionV3::SetClosedLoopEnabled(this, v87++, 0);
      }

      while (v87 < *(this + 158));
      LOBYTE(v84) = 0;
    }

    goto LABEL_177;
  }

  v88 = v69;
  v78 = *(this + 84);
  v95 = *(this + 85);
  if (v78 != v95)
  {
    v79 = 0;
    v93 = *MEMORY[0x1E69E54E8];
    v80 = *(MEMORY[0x1E69E54E8] + 24);
    while (1)
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](buf);
      clsp::ClosedLoopParameters::dump(*v78, buf);
      v81 = spp3Subsystem();
      if (!v81)
      {
        break;
      }

      v82 = *v81;
      if (*v81)
      {
        goto LABEL_147;
      }

LABEL_152:
      buf[0].__locale_ = v93;
      *(&buf[0].__locale_ + *(v93 - 3)) = v80;
      buf[1].__locale_ = (MEMORY[0x1E69E5548] + 16);
      if (v127 < 0)
      {
        operator delete(v126);
      }

      buf[1].__locale_ = (MEMORY[0x1E69E5538] + 16);
      std::locale::~locale(&buf[2]);
      std::ostream::~ostream();
      MEMORY[0x1E12BD050](v128);
      ++v78;
      ++v79;
      if (v78 == v95)
      {
        goto LABEL_155;
      }
    }

    v82 = MEMORY[0x1E69E9C10];
LABEL_147:
    if (os_log_type_enabled(v82, OS_LOG_TYPE_DEBUG))
    {
      std::stringbuf::str[abi:ne200100](v112, &buf[1]);
      v83 = v112;
      if (v113 < 0)
      {
        v83 = v112[0];
      }

      *v118 = 136315906;
      *&v118[4] = "AUSpeakerProtectionV3.cpp";
      v119 = 1024;
      v120 = 3432;
      v121 = 1024;
      v122 = v79;
      v123 = 2080;
      v124 = v83;
      _os_log_impl(&dword_1DDB85000, v82, OS_LOG_TYPE_DEBUG, "%25s:%-5d Ch %d, CLParams:\n%s", v118, 0x22u);
      if (v113 < 0)
      {
        operator delete(v112[0]);
      }
    }

    goto LABEL_152;
  }

LABEL_155:
  CACFDictionary::~CACFDictionary(&v116);
  LOBYTE(v84) = 1;
  v70 = v90;
  v69 = v88;
LABEL_177:
  *(this + 529) = v84;
  if (!(v4 + v89))
  {
    *(this + 528) = 1;
    ausdk::AUScope::SetNumberOfElements((this + 792), *(this + 158));
    if (!v69)
    {
      goto LABEL_180;
    }

    goto LABEL_179;
  }

  v96 = -50;
  if (v69)
  {
LABEL_179:
    operator delete(v69);
  }

LABEL_180:
  if (v104)
  {
    operator delete(v104);
  }

  if (v70)
  {
    v86 = v70;
LABEL_184:
    operator delete(v86);
  }

  return v96;
}

void sub_1DDF24DBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  CACFArray::~CACFArray(&a35);
  CACFDictionary::~CACFDictionary(&a18);
  if (__p)
  {
    operator delete(__p);
  }

  if (a27)
  {
    operator delete(a27);
  }

  _Unwind_Resume(a1);
}

void AUSpeakerProtectionV3::SetClosedLoopEnabled(AUSpeakerProtectionV3 *this, unsigned int a2, int a3)
{
  v16 = *MEMORY[0x1E69E9840];
  *(this + 533) = a3;
  Element = ausdk::AUScope::GetElement((this + 792), a2);
  if (!Element)
  {
    __assert_rtn("SetClosedLoopEnabled", "AUSpeakerProtectionV3.cpp", 1150, "part");
  }

  v5 = Element;
  if (a3)
  {
    v6 = 1.0;
  }

  else
  {
    v6 = 0.0;
  }

  ausdk::AUElement::SetParameter(Element, 0x16u, v6);
  ausdk::AUElement::SetParameter(v5, 0x15u, v6);
  v7 = spp3Subsystem();
  if (v7)
  {
    v8 = *v7;
    if (!*v7)
    {
      return;
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = "false";
    v11 = "AUSpeakerProtectionV3.cpp";
    v10 = 136315650;
    if (a3)
    {
      v9 = "true";
    }

    v12 = 1024;
    v13 = 1153;
    v14 = 2080;
    v15 = v9;
    _os_log_impl(&dword_1DDB85000, v8, OS_LOG_TYPE_INFO, "%25s:%-5d Enable CL -> CLThermalEnabled, PilotToneEnabled: %s", &v10, 0x1Cu);
  }
}

void sub_1DDF254A8(_Unwind_Exception *exception_object)
{
  *(v1 + 8) = v2;
  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__optional_storage_base<std::vector<clsp::telemetry::Item>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<clsp::telemetry::Item>,false>>(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == a2[1].n128_u8[8])
  {
    if (*(a1 + 24))
    {
      v4 = *a1;
      if (*a1)
      {
        *(a1 + 8) = v4;
        operator delete(v4);
        *a1 = 0;
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
      }

      result = *a2;
      *a1 = *a2;
      *(a1 + 16) = a2[1].n128_u64[0];
      a2->n128_u64[0] = 0;
      a2->n128_u64[1] = 0;
      a2[1].n128_u64[0] = 0;
    }
  }

  else if (*(a1 + 24))
  {
    v6 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v6;
      operator delete(v6);
    }

    *(a1 + 24) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    result = *a2;
    *a1 = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    a2->n128_u64[0] = 0;
    a2->n128_u64[1] = 0;
    a2[1].n128_u64[0] = 0;
    *(a1 + 24) = 1;
  }

  return result;
}

void clsp::telemetry::utils::PrintTelemetryVector_impl<std::__wrap_iter<clsp::telemetry::Item const*>,std::__wrap_iter<clsp::telemetry::Item const*>>(std::string *a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a2;
  if (v5 == (*a3 - 8))
  {

    clsp::telemetry::Item::operator std::string(a1, v5);
  }

  else
  {
    clsp::telemetry::Item::operator std::string(&v14, v5);
    v7 = std::string::append(&v14, ", ", 2uLL);
    v8 = *&v7->__r_.__value_.__l.__data_;
    v15.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v15.__r_.__value_.__l.__data_ = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    v12 = (*a2 + 8);
    clsp::telemetry::utils::PrintTelemetryVector_impl<std::__wrap_iter<clsp::telemetry::Item const*>,std::__wrap_iter<clsp::telemetry::Item const*>&>(&__p, &v12, *a3);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v11 = std::string::append(&v15, p_p, size);
    *a1 = *v11;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1DDF256B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DDF257D4(_Unwind_Exception *exception_object)
{
  if (*v1)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__optional_storage_base<std::vector<BOOL>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<BOOL>,false>>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == *(a2 + 24))
  {
    if (*(a1 + 24))
    {
      v4 = *a1;
      if (*a1)
      {
        operator delete(v4);
        *a1 = 0;
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
      }

      *a1 = *a2;
      result = *(a2 + 8);
      *(a1 + 8) = result;
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
    }
  }

  else if (*(a1 + 24))
  {
    v6 = *a1;
    if (*a1)
    {
      operator delete(v6);
    }

    *(a1 + 24) = 0;
  }

  else
  {
    *a1 = *a2;
    result = *(a2 + 8);
    *(a1 + 8) = result;
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a1 + 24) = 1;
  }

  return result;
}

void clsp::telemetry::utils::PrintBoolVector(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  v5 = a2;
  v6 = 0;
  v3 = &a2[a3 >> 6];
  v4 = a3 & 0x3F;
  clsp::telemetry::utils::PrintBoolVector_impl<std::__bit_iterator<std::vector<BOOL>,true,0ul>,std::__bit_iterator<std::vector<BOOL>,true,0ul>>(a1, &v5, &v3);
}

void AUSpeakerProtectionV3::SetPowerBudgetProperty(uint64_t a1, CFDictionaryRef *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 992);
  if (*(a1 + 1000) == v2)
  {
    return;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  do
  {
    while (1)
    {
      if (!*a2)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        applesauce::CF::construct_error(exception);
      }

      cpms::TimeScale<float>::getKey(buf, *(v2 + 32 * v5));
      v8 = *buf;
      v9 = applesauce::CF::details::at_key<applesauce::CF::StringRef>(*a2, *buf);
      if (v9)
      {
        v10 = applesauce::CF::convert_as<float,0>(v9);
        if (!v8)
        {
          goto LABEL_9;
        }

LABEL_8:
        CFRelease(v8);
        goto LABEL_9;
      }

      v10 = 0;
      if (v8)
      {
        goto LABEL_8;
      }

LABEL_9:
      if (!HIDWORD(v10))
      {
        break;
      }

      v11 = *&v10 / *(a1 + 960);
      v12 = *(a1 + 968);
      if (*(v12 + 4 * v5) == v11)
      {
        break;
      }

      *(v12 + 4 * v5) = v11;
      v13 = *(a1 + 1000);
      v2 = *(a1 + 992);
      v6 = 1;
      v5 = ++v7;
      if (v7 >= ((v13 - v2) >> 5))
      {
        goto LABEL_16;
      }
    }

    v13 = *(a1 + 1000);
    v2 = *(a1 + 992);
    v5 = ++v7;
  }

  while (v7 < ((v13 - v2) >> 5));
  if (v6)
  {
LABEL_16:
    if (v13 != v2)
    {
      v14 = 0;
      v15 = 1;
      while (1)
      {
        v16 = spp3Subsystem();
        if (!v16)
        {
          break;
        }

        v17 = *v16;
        if (*v16)
        {
          goto LABEL_22;
        }

LABEL_29:
        v14 = v15++;
        if (v14 >= (*(a1 + 1000) - *(a1 + 992)) >> 5)
        {
          goto LABEL_30;
        }
      }

      v17 = MEMORY[0x1E69E9C10];
LABEL_22:
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        cpms::TimeScale<float>::getKey(&v24, *(*(a1 + 992) + 32 * v14));
        v18 = v24;
        if (!v24)
        {
          v23 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v23, "Could not construct");
        }

        applesauce::CF::convert_to<std::string,0>(__p, v24);
        v19 = __p;
        if (v26 < 0)
        {
          v19 = __p[0];
        }

        v20 = *(*(a1 + 968) + 4 * v14);
        *buf = 136315906;
        *&buf[4] = "AUSpeakerProtectionV3.cpp";
        v28 = 1024;
        v29 = 2845;
        v30 = 2080;
        v31 = v19;
        v32 = 2048;
        v33 = v20;
        _os_log_impl(&dword_1DDB85000, v17, OS_LOG_TYPE_DEBUG, "%25s:%-5d CPMS power budget '%s' is %f", buf, 0x26u);
        if (v26 < 0)
        {
          operator delete(__p[0]);
        }

        CFRelease(v18);
      }

      goto LABEL_29;
    }

LABEL_30:
    v21 = *(a1 + 888);
    if (v21)
    {
      cpms::controllers::Power<float,cpms::smoothers::Exponential,clsp::AttackRelease>::SetPowerBudgets(v21, *(a1 + 968), (*(a1 + 976) - *(a1 + 968)) >> 2);
    }
  }
}

void sub_1DDF25BD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::StringRef::~StringRef(va);
  _Unwind_Resume(a1);
}

void *std::vector<long long>::__assign_with_size[abi:ne200100]<long long const*,long long const*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 > (v8 - *result) >> 3)
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    v10 = v8 >> 2;
    if (v8 >> 2 <= a4)
    {
      v10 = a4;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    std::vector<long long>::__vallocate[abi:ne200100](v7, v11);
  }

  v12 = result[1];
  v13 = v12 - v9;
  if (a4 <= (v12 - v9) >> 3)
  {
    v18 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v9[v18];
  }

  else
  {
    if (v12 != v9)
    {
      result = memmove(*result, __src, v12 - v9);
      v12 = v7[1];
    }

    v14 = &__src[v13];
    v15 = v12;
    if (&__src[v13] != a3)
    {
      v15 = v12;
      do
      {
        v16 = *v14;
        v14 += 8;
        *v15 = v16;
        v15 += 8;
      }

      while (v14 != a3);
    }

    v17 = v15;
  }

  v7[1] = v17;
  return result;
}

void *cpms::TimeScale<float>::getKey(void *result, CFTypeRef cf)
{
  v3 = result;
  if (cf)
  {
    result = CFRetain(cf);
  }

  *v3 = cf;
  return result;
}

void *cpms::controllers::Power<float,cpms::smoothers::Exponential,clsp::AttackRelease>::SetPowerBudgets(void *result, uint64_t a2, unsigned int a3)
{
  v3 = result[4];
  if (v3)
  {
    v4 = 0;
    v5 = 1;
    do
    {
      if (v5 - 1 < a3)
      {
        if (result[23] <= v4)
        {
          __assert_rtn("operator[]", "vector.hpp", 1655, "this->m_holder.m_size > n");
        }

        *(result[22] + 4 * v4) = *(a2 + 4 * v4);
      }

      v4 = v5;
    }

    while (v3 > v5++);
  }

  return result;
}

void clsp::telemetry::utils::PrintBoolVector_impl<std::__bit_iterator<std::vector<BOOL>,true,0ul>,std::__bit_iterator<std::vector<BOOL>,true,0ul>>(uint64_t a1, uint64_t **a2, void *a3)
{
  v4 = a3[1];
  v5 = v4 - 1;
  if (v4 >= 0x40uLL)
  {
    v5 = v4 - 64;
  }

  v6 = *a3 + 8 * (v5 >> 6);
  v7 = (v4 - 1) & 0x3F;
  v8 = *(a2 + 2);
  v9 = **a2;
  if (*a2 == v6 && v8 == v7)
  {
    if ((v9 >> v7))
    {
      v17 = "Yes";
    }

    else
    {
      v17 = "No";
    }

    std::string::basic_string[abi:ne200100]<0>(a1, v17);
  }

  else
  {
    v11 = 1 << v8;
    v12 = a2[1];
    v18 = (*a2 + (((v12 + 1) >> 3) & 0x3FFFFFF8));
    v19 = (v12 + 1) & 0x3F;
    clsp::telemetry::utils::PrintBoolVector_impl<std::__bit_iterator<std::vector<BOOL>,true,0ul>,std::__bit_iterator<std::vector<BOOL>,true,0ul>&>(&v20, &v18, a3);
    if ((v9 & v11) != 0)
    {
      v13 = "Yes, ";
    }

    else
    {
      v13 = "No, ";
    }

    if ((v9 & v11) != 0)
    {
      v14 = 5;
    }

    else
    {
      v14 = 4;
    }

    v15 = std::string::insert(&v20, 0, v13, v14);
    v16 = *&v15->__r_.__value_.__l.__data_;
    *(a1 + 16) = *(&v15->__r_.__value_.__l + 2);
    *a1 = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1DDF25F54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void clsp::telemetry::utils::PrintBoolVector_impl<std::__bit_iterator<std::vector<BOOL>,true,0ul>,std::__bit_iterator<std::vector<BOOL>,true,0ul>&>(uint64_t a1, uint64_t **a2, void *a3)
{
  v4 = a3[1];
  v5 = v4 - 1;
  if (v4 >= 0x40uLL)
  {
    v5 = v4 - 64;
  }

  v6 = *a3 + 8 * (v5 >> 6);
  v7 = (v4 - 1) & 0x3F;
  v8 = *(a2 + 2);
  v9 = **a2;
  if (*a2 == v6 && v8 == v7)
  {
    if ((v9 >> v7))
    {
      v17 = "Yes";
    }

    else
    {
      v17 = "No";
    }

    std::string::basic_string[abi:ne200100]<0>(a1, v17);
  }

  else
  {
    v11 = 1 << v8;
    v12 = a2[1];
    v18 = *a2 + (((v12 + 1) >> 3) & 0x3FFFFFF8);
    v19 = (v12 + 1) & 0x3F;
    clsp::telemetry::utils::PrintBoolVector_impl<std::__bit_iterator<std::vector<BOOL>,true,0ul>,std::__bit_iterator<std::vector<BOOL>,true,0ul>&>(&v20, &v18);
    if ((v9 & v11) != 0)
    {
      v13 = "Yes, ";
    }

    else
    {
      v13 = "No, ";
    }

    if ((v9 & v11) != 0)
    {
      v14 = 5;
    }

    else
    {
      v14 = 4;
    }

    v15 = std::string::insert(&v20, 0, v13, v14);
    v16 = *&v15->__r_.__value_.__l.__data_;
    *(a1 + 16) = *(&v15->__r_.__value_.__l + 2);
    *a1 = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1DDF260BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void clsp::telemetry::Item::operator std::string(uint64_t a1, _DWORD *a2)
{
  if (*a2 == 2)
  {
    std::to_string(&v10, a2[1]);
    v6 = std::string::insert(&v10, 0, "Ch", 2uLL);
    v7 = *&v6->__r_.__value_.__l.__data_;
    v11.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v11.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    v5 = std::string::append(&v11, " PDM", 4uLL);
  }

  else if (*a2 == 1)
  {
    std::to_string(&v10, a2[1]);
    v3 = std::string::insert(&v10, 0, "Ch", 2uLL);
    v4 = *&v3->__r_.__value_.__l.__data_;
    v11.__r_.__value_.__r.__words[2] = v3->__r_.__value_.__r.__words[2];
    *&v11.__r_.__value_.__l.__data_ = v4;
    v3->__r_.__value_.__l.__size_ = 0;
    v3->__r_.__value_.__r.__words[2] = 0;
    v3->__r_.__value_.__r.__words[0] = 0;
    v5 = std::string::append(&v11, " current", 8uLL);
  }

  else
  {
    std::to_string(&v10, a2[1]);
    v8 = std::string::insert(&v10, 0, "Ch", 2uLL);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v11.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
    *&v11.__r_.__value_.__l.__data_ = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    v5 = std::string::append(&v11, " voltage", 8uLL);
  }

  *a1 = *&v5->__r_.__value_.__l.__data_;
  *(a1 + 16) = *(&v5->__r_.__value_.__l + 2);
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }
}

void sub_1DDF26244(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void clsp::telemetry::utils::PrintTelemetryVector_impl<std::__wrap_iter<clsp::telemetry::Item const*>,std::__wrap_iter<clsp::telemetry::Item const*>&>(std::string *a1, _DWORD **a2, uint64_t a3)
{
  v5 = *a2;
  if (v5 == (a3 - 8))
  {

    clsp::telemetry::Item::operator std::string(a1, v5);
  }

  else
  {
    clsp::telemetry::Item::operator std::string(&v15, v5);
    v7 = std::string::append(&v15, ", ", 2uLL);
    v8 = *&v7->__r_.__value_.__l.__data_;
    v16.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v16.__r_.__value_.__l.__data_ = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    v12 = (*a2 + 2);
    clsp::telemetry::utils::PrintTelemetryVector_impl<std::__wrap_iter<clsp::telemetry::Item const*>,std::__wrap_iter<clsp::telemetry::Item const*>&>(__p, &v12, a3);
    if ((v14 & 0x80u) == 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    if ((v14 & 0x80u) == 0)
    {
      v10 = v14;
    }

    else
    {
      v10 = __p[1];
    }

    v11 = std::string::append(&v16, v9, v10);
    *a1 = *v11;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1DDF263B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void AUSpeakerProtectionV3::InitParamsFromPlistV9(AUSpeakerProtectionV3 *this, CFTypeRef cf)
{
  v982 = *MEMORY[0x1E69E9840];
  if (!cf)
  {
    v936 = 0;
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  CFRetain(cf);
  v936 = cf;
  v3 = CFGetTypeID(cf);
  if (v3 != CFDictionaryGetTypeID())
  {
    v860 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v860, "Could not construct");
  }

  *(this + 158) = applesauce::CF::details::find_at_key<unsigned int,__CFString const* const&>(v936, @"NumChannels");
  if (!v936)
  {
    v861 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v861, "Could not construct");
  }

  v4 = applesauce::CF::details::at_key<__CFString const* const&>(v936, @"ConvoyDataSourceOverride");
  if (v4)
  {
    v4 = applesauce::CF::convert_as<unsigned int,0>(v4);
  }

  if ((v4 & 0x100000000) != 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  *(this + 180) = v5;
  clsp::ThermalStateVector_v3_separate<clsp::EL>::SetNumChannels(*(this + 158), *(this + 196));
  if (!v936)
  {
    v862 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v862, "Could not construct");
  }

  __val = applesauce::CF::details::find_at_key<float,char const* const&>(v936, "Thermal_LookaheadDelay_ms");
  v915 = applesauce::CF::details::find_at_key<float,char const* const&>(v936, "Thermal_SafeTlim");
  v912 = applesauce::CF::details::find_at_key<float,char const* const&>(v936, "Thermal_SafeTlimTimeMin");
  v910 = applesauce::CF::details::find_at_key<float,char const* const&>(v936, "Thermal_SafeTlimOffset");
  v907 = applesauce::CF::details::find_at_key<float,char const* const&>(v936, "Thermal_AmbientTemp");
  v905 = applesauce::CF::details::find_at_key<float,char const* const&>(v936, "Thermal_GainAttackTime_s");
  v902 = applesauce::CF::details::find_at_key<float,char const* const&>(v936, "Thermal_GainReleaseTime_s");
  v899 = applesauce::CF::details::find_at_key<float,char const* const&>(v936, "Disp_PeakAttackTime_s");
  v896 = applesauce::CF::details::find_at_key<float,char const* const&>(v936, "Disp_PeakDecayTime_s");
  v894 = applesauce::CF::details::find_at_key<float,char const* const&>(v936, "Disp_FBIntegrationTime_s");
  v6 = spp3Subsystem();
  if (v6)
  {
    v7 = *v6;
    if (!*v6)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "AUSpeakerProtectionV3.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 3835;
    _os_log_impl(&dword_1DDB85000, v7, OS_LOG_TYPE_INFO, "%25s:%-5d Successfully parsed the system plist params.", buf, 0x12u);
  }

LABEL_16:
  applesauce::CF::details::find_at_key<applesauce::CF::DictionaryRef,char const(&)[22]>(&v974, v936);
  v8 = *(this + 158);
  if (v8)
  {
    v9 = 0;
    __src = 0;
    v10 = 0;
    while (1)
    {
      if (!v974.__r_.__value_.__r.__words[0])
      {
        v840 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v840, "Could not construct");
      }

      std::to_string(&v981, v10);
      v11 = std::string::insert(&v981, 0, "Channel", 7uLL);
      v12 = *&v11->__r_.__value_.__l.__data_;
      *&buf[16] = *(&v11->__r_.__value_.__l + 2);
      *buf = v12;
      v11->__r_.__value_.__l.__size_ = 0;
      v11->__r_.__value_.__r.__words[2] = 0;
      v11->__r_.__value_.__r.__words[0] = 0;
      applesauce::CF::details::find_at_key<applesauce::CF::DictionaryRef,std::string>(&cfa, v974.__r_.__value_.__l.__data_, buf);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      if (SHIBYTE(v981.__end_) < 0)
      {
        operator delete(v981.__first_);
      }

      if (!cfa.__r_.__value_.__r.__words[0])
      {
        v841 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v841, "Could not construct");
      }

      applesauce::CF::details::find_at_key<applesauce::CF::DictionaryRef,char const* const&>(&v981, cfa.__r_.__value_.__l.__data_, "OL_thermal");
      v13 = spp3Subsystem();
      if (v13)
      {
        v14 = *v13;
        if (!*v13)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v14 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315906;
        *&buf[4] = "AUSpeakerProtectionV3.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 3784;
        *&buf[18] = 2080;
        *&buf[20] = "OL_thermal";
        *&buf[28] = 1024;
        *&buf[30] = v10;
        _os_log_impl(&dword_1DDB85000, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d Found the %s plist entry for channel %i.", buf, 0x22u);
      }

LABEL_30:
      if (!v981.__first_ || (v929 = applesauce::CF::details::find_at_key<float,char const* const&>(v981.__first_, "Rshunt"), !v981.__first_) || (v925 = applesauce::CF::details::find_at_key<float,char const* const&>(v981.__first_, "Reb_ref"), !v981.__first_) || (v15 = applesauce::CF::details::find_at_key<float,char const* const&>(v981.__first_, "Rampout"), !v981.__first_) || (v16 = v15, v17 = applesauce::CF::details::find_at_key<float,char const* const&>(v981.__first_, "T_sett_vc"), !v981.__first_) || (v18 = v17, v19 = applesauce::CF::details::find_at_key<float,char const* const&>(v981.__first_, "tau_Tvc"), !v981.__first_) || (v20 = v19, v21 = applesauce::CF::details::find_at_key<float,char const* const&>(v981.__first_, "T_sett_mg"), !v981.__first_) || (v22 = v21, v23 = applesauce::CF::details::find_at_key<float,char const* const&>(v981.__first_, "tau_Tmg"), !v981.__first_) || (v24 = v23, v25 = applesauce::CF::details::find_at_key<float,char const* const&>(v981.__first_, "ThermalFFSpeedupFactor"), !v981.__first_) || (v26 = v25, v27 = applesauce::CF::details::find_at_key<float,char const* const&>(v981.__first_, "HardTempLimitHeadroom"), !v981.__first_))
      {
        v842 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v842, "Could not construct");
      }

      v28 = v27;
      v29 = applesauce::CF::details::find_at_key<float,char const* const&>(v981.__first_, "TemperatureLimit");
      v30 = v9 - __src;
      v31 = 0x2E8BA2E8BA2E8BA3 * ((v9 - __src) >> 2);
      v32 = v31 + 1;
      if ((v31 + 1) > 0x5D1745D1745D174)
      {
        std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
      }

      if (0x5D1745D1745D1746 * (-__src >> 2) > v32)
      {
        v32 = 0x5D1745D1745D1746 * (-__src >> 2);
      }

      if ((0x2E8BA2E8BA2E8BA3 * (-__src >> 2)) >= 0x2E8BA2E8BA2E8BALL)
      {
        v33 = 0x5D1745D1745D174;
      }

      else
      {
        v33 = v32;
      }

      if (v33)
      {
        if (v33 <= 0x5D1745D1745D174)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v34 = 44 * v31;
      *v34 = v10;
      *(v34 + 4) = v929;
      *(v34 + 8) = v925;
      *(v34 + 12) = v16;
      *(v34 + 16) = v18;
      *(v34 + 20) = v20;
      *(v34 + 24) = v22;
      *(v34 + 28) = v24;
      *(v34 + 32) = v26;
      *(v34 + 36) = v28;
      *(v34 + 40) = v29;
      v9 = 44 * v31 + 44;
      v35 = (v34 + 44 * (v30 / -44));
      memcpy(v35, __src, v30);
      if (__src)
      {
        operator delete(__src);
      }

      __src = v35;
      v36 = spp3Subsystem();
      if (!v36)
      {
        v37 = MEMORY[0x1E69E9C10];
LABEL_55:
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315906;
          *&buf[4] = "AUSpeakerProtectionV3.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 3789;
          *&buf[18] = 2080;
          *&buf[20] = "OL_thermal";
          *&buf[28] = 1024;
          *&buf[30] = v10;
          _os_log_impl(&dword_1DDB85000, v37, OS_LOG_TYPE_DEBUG, "%25s:%-5d Successfully parsed the %s plist entry for channel %i.", buf, 0x22u);
        }

        goto LABEL_57;
      }

      v37 = *v36;
      if (*v36)
      {
        goto LABEL_55;
      }

LABEL_57:
      if (v981.__first_)
      {
        CFRelease(v981.__first_);
      }

      if (cfa.__r_.__value_.__r.__words[0])
      {
        CFRelease(cfa.__r_.__value_.__l.__data_);
      }

      if (v8 == ++v10)
      {
        goto LABEL_64;
      }
    }
  }

  v9 = 0;
  __src = 0;
LABEL_64:
  if (v974.__r_.__value_.__r.__words[0])
  {
    CFRelease(v974.__r_.__value_.__l.__data_);
  }

  v38 = spp3Subsystem();
  if (v38)
  {
    v39 = *v38;
    if (!*v38)
    {
      goto LABEL_72;
    }
  }

  else
  {
    v39 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "AUSpeakerProtectionV3.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 3840;
    _os_log_impl(&dword_1DDB85000, v39, OS_LOG_TYPE_INFO, "%25s:%-5d Successfully parsed all the per-speaker OL thermal params.", buf, 0x12u);
  }

LABEL_72:
  if (!v936)
  {
    v863 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v863, "Could not construct");
  }

  applesauce::CF::details::find_at_key<applesauce::CF::DictionaryRef,char const(&)[22]>(&v974, v936);
  v40 = *(this + 158);
  if (v40)
  {
    v41 = 0;
    v920 = 0;
    v42 = 0;
    while (1)
    {
      if (!v974.__r_.__value_.__r.__words[0])
      {
        v843 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v843, "Could not construct");
      }

      std::to_string(&v981, v42);
      v43 = std::string::insert(&v981, 0, "Channel", 7uLL);
      v44 = *&v43->__r_.__value_.__l.__data_;
      *&buf[16] = *(&v43->__r_.__value_.__l + 2);
      *buf = v44;
      v43->__r_.__value_.__l.__size_ = 0;
      v43->__r_.__value_.__r.__words[2] = 0;
      v43->__r_.__value_.__r.__words[0] = 0;
      applesauce::CF::details::find_at_key<applesauce::CF::DictionaryRef,std::string>(&cfa, v974.__r_.__value_.__l.__data_, buf);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      if (SHIBYTE(v981.__end_) < 0)
      {
        operator delete(v981.__first_);
      }

      if (!cfa.__r_.__value_.__r.__words[0])
      {
        v844 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v844, "Could not construct");
      }

      applesauce::CF::details::find_at_key<applesauce::CF::DictionaryRef,char const* const&>(&v981, cfa.__r_.__value_.__l.__data_, "OL_disp");
      v45 = spp3Subsystem();
      if (v45)
      {
        v46 = *v45;
        if (!*v45)
        {
          goto LABEL_87;
        }
      }

      else
      {
        v46 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315906;
        *&buf[4] = "AUSpeakerProtectionV3.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 3784;
        *&buf[18] = 2080;
        *&buf[20] = "OL_disp";
        *&buf[28] = 1024;
        *&buf[30] = v42;
        _os_log_impl(&dword_1DDB85000, v46, OS_LOG_TYPE_DEBUG, "%25s:%-5d Found the %s plist entry for channel %i.", buf, 0x22u);
      }

LABEL_87:
      if (!v981.__first_ || (v47 = applesauce::CF::details::find_at_key<float,char const* const&>(v981.__first_, "Q_d"), !v981.__first_) || (v48 = v47, v49 = applesauce::CF::details::find_at_key<float,char const* const&>(v981.__first_, "kt"), !v981.__first_) || (v50 = v49, v51 = applesauce::CF::details::find_at_key<float,char const* const&>(v981.__first_, "ct"), !v981.__first_) || (v52 = v51, v53 = applesauce::CF::details::find_at_key<float,char const* const&>(v981.__first_, "phi"), !v981.__first_) || (v54 = v53, v55 = applesauce::CF::details::find_at_key<float,char const* const&>(v981.__first_, "x_lim"), !v981.__first_) || (v56 = v55, v57 = applesauce::CF::details::find_at_key<float,char const* const&>(v981.__first_, "ag"), !v981.__first_) || (v58 = v57, v59 = applesauce::CF::details::find_at_key<float,char const* const&>(v981.__first_, "mt"), !v981.__first_))
      {
        v845 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v845, "Could not construct");
      }

      v60 = v59;
      v61 = applesauce::CF::details::find_at_key<float,char const* const&>(v981.__first_, "g_bw");
      v62 = v41 - v920;
      v63 = 0x8E38E38E38E38E39 * ((v41 - v920) >> 2);
      v64 = v63 + 1;
      if (v63 + 1 > 0x71C71C71C71C71CLL)
      {
        std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
      }

      if (0x1C71C71C71C71C72 * (-v920 >> 2) > v64)
      {
        v64 = 0x1C71C71C71C71C72 * (-v920 >> 2);
      }

      if (0x8E38E38E38E38E39 * (-v920 >> 2) >= 0x38E38E38E38E38ELL)
      {
        v65 = 0x71C71C71C71C71CLL;
      }

      else
      {
        v65 = v64;
      }

      if (v65)
      {
        if (v65 <= 0x71C71C71C71C71CLL)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v66 = 36 * v63;
      *v66 = v42;
      *(v66 + 4) = v48;
      *(v66 + 8) = v50;
      *(v66 + 12) = v52;
      *(v66 + 16) = v54;
      *(v66 + 20) = v56;
      *(v66 + 24) = v58;
      *(v66 + 28) = v60;
      *(v66 + 32) = v61;
      v67 = 36 * v63 + 36;
      v68 = 36 * v63 + 36 * (v62 / -36);
      memcpy((v66 + 36 * (v62 / -36)), v920, v62);
      if (v920)
      {
        operator delete(v920);
      }

      v920 = v68;
      v41 = v67;
      v69 = spp3Subsystem();
      if (!v69)
      {
        v70 = MEMORY[0x1E69E9C10];
LABEL_110:
        if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315906;
          *&buf[4] = "AUSpeakerProtectionV3.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 3789;
          *&buf[18] = 2080;
          *&buf[20] = "OL_disp";
          *&buf[28] = 1024;
          *&buf[30] = v42;
          _os_log_impl(&dword_1DDB85000, v70, OS_LOG_TYPE_DEBUG, "%25s:%-5d Successfully parsed the %s plist entry for channel %i.", buf, 0x22u);
        }

        goto LABEL_112;
      }

      v70 = *v69;
      if (*v69)
      {
        goto LABEL_110;
      }

LABEL_112:
      if (v981.__first_)
      {
        CFRelease(v981.__first_);
      }

      if (cfa.__r_.__value_.__r.__words[0])
      {
        CFRelease(cfa.__r_.__value_.__l.__data_);
      }

      if (v40 == ++v42)
      {
        goto LABEL_119;
      }
    }
  }

  v41 = 0;
  v920 = 0;
LABEL_119:
  if (v974.__r_.__value_.__r.__words[0])
  {
    CFRelease(v974.__r_.__value_.__l.__data_);
  }

  v71 = spp3Subsystem();
  if (v71)
  {
    v72 = *v71;
    if (!*v71)
    {
      goto LABEL_127;
    }
  }

  else
  {
    v72 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "AUSpeakerProtectionV3.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 3845;
    _os_log_impl(&dword_1DDB85000, v72, OS_LOG_TYPE_INFO, "%25s:%-5d Successfully parsed all the per-speaker OL displacement params.", buf, 0x12u);
  }

LABEL_127:
  v73 = spp3Subsystem();
  if (v73)
  {
    v74 = *v73;
    if (!*v73)
    {
      goto LABEL_527;
    }
  }

  else
  {
    v74 = MEMORY[0x1E69E9C10];
  }

  if (!os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_527;
  }

  std::string::basic_string[abi:ne200100]<0>(&v973, "Thermal_LookaheadDelay_ms");
  v75 = std::string::append(&v973, ": ", 2uLL);
  v76 = *&v75->__r_.__value_.__l.__data_;
  v974.__r_.__value_.__r.__words[2] = v75->__r_.__value_.__r.__words[2];
  *&v974.__r_.__value_.__l.__data_ = v76;
  v75->__r_.__value_.__l.__size_ = 0;
  v75->__r_.__value_.__r.__words[2] = 0;
  v75->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&cfa, __val);
  while ((SHIBYTE(cfa.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if (*(&v936 + SHIBYTE(cfa.__r_.__value_.__r.__words[2]) + 7) != 48)
    {
      goto LABEL_139;
    }

    v77 = SHIBYTE(cfa.__r_.__value_.__r.__words[2]) - 1;
    *(&cfa.__r_.__value_.__s + 23) = (*(&cfa.__r_.__value_.__s + 23) - 1) & 0x7F;
    p_cfa = &cfa;
LABEL_138:
    p_cfa->__r_.__value_.__s.__data_[v77] = 0;
  }

  p_cfa = cfa.__r_.__value_.__r.__words[0];
  if (*(cfa.__r_.__value_.__r.__words[0] + cfa.__r_.__value_.__l.__size_ - 1) == 48)
  {
    v77 = --cfa.__r_.__value_.__l.__size_;
    goto LABEL_138;
  }

LABEL_139:
  *&v981.__first_ = *&cfa.__r_.__value_.__l.__data_;
  v981.__end_ = cfa.__r_.__value_.__r.__words[2];
  memset(&cfa, 0, sizeof(cfa));
  while ((SHIBYTE(v981.__end_) & 0x8000000000000000) == 0)
  {
    if (*(&v980 + SHIBYTE(v981.__end_)) != 46)
    {
      goto LABEL_146;
    }

    v79 = (SHIBYTE(v981.__end_) - 1);
    HIBYTE(v981.__end_) = (HIBYTE(v981.__end_) - 1) & 0x7F;
    first = &v981;
LABEL_145:
    v79->__r_.__value_.__s.__data_[first] = 0;
  }

  first = v981.__first_;
  if (v981.__first_->__r_.__value_.__s.__data_[v981.__begin_ - 1] == 46)
  {
    v79 = --v981.__begin_;
    goto LABEL_145;
  }

LABEL_146:
  __p = *&v981.__first_;
  end = v981.__end_;
  if (SHIBYTE(cfa.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(cfa.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(end) >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (SHIBYTE(end) >= 0)
  {
    v82 = HIBYTE(end);
  }

  else
  {
    v82 = *(&__p + 1);
  }

  v83 = std::string::append(&v974, p_p, v82);
  v84 = *&v83->__r_.__value_.__l.__data_;
  v942.__r_.__value_.__r.__words[2] = v83->__r_.__value_.__r.__words[2];
  *&v942.__r_.__value_.__l.__data_ = v84;
  v83->__r_.__value_.__l.__size_ = 0;
  v83->__r_.__value_.__r.__words[2] = 0;
  v83->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(end) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v974.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v974.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v973.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v973.__r_.__value_.__l.__data_);
  }

  v85 = std::string::append(&v942, ",\n", 2uLL);
  v86 = *&v85->__r_.__value_.__l.__data_;
  v943.__r_.__value_.__r.__words[2] = v85->__r_.__value_.__r.__words[2];
  *&v943.__r_.__value_.__l.__data_ = v86;
  v85->__r_.__value_.__l.__size_ = 0;
  v85->__r_.__value_.__r.__words[2] = 0;
  v85->__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&v973, "Thermal_SafeTlim");
  v87 = std::string::append(&v973, ": ", 2uLL);
  v88 = *&v87->__r_.__value_.__l.__data_;
  v974.__r_.__value_.__r.__words[2] = v87->__r_.__value_.__r.__words[2];
  *&v974.__r_.__value_.__l.__data_ = v88;
  v87->__r_.__value_.__l.__size_ = 0;
  v87->__r_.__value_.__r.__words[2] = 0;
  v87->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&cfa, v915);
  while (2)
  {
    if ((SHIBYTE(cfa.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
    {
      if (*(&v936 + SHIBYTE(cfa.__r_.__value_.__r.__words[2]) + 7) != 48)
      {
        break;
      }

      v89 = SHIBYTE(cfa.__r_.__value_.__r.__words[2]) - 1;
      *(&cfa.__r_.__value_.__s + 23) = (*(&cfa.__r_.__value_.__s + 23) - 1) & 0x7F;
      v90 = &cfa;
      goto LABEL_166;
    }

    v90 = cfa.__r_.__value_.__r.__words[0];
    if (*(cfa.__r_.__value_.__r.__words[0] + cfa.__r_.__value_.__l.__size_ - 1) == 48)
    {
      v89 = --cfa.__r_.__value_.__l.__size_;
LABEL_166:
      v90->__r_.__value_.__s.__data_[v89] = 0;
      continue;
    }

    break;
  }

  *&v981.__first_ = *&cfa.__r_.__value_.__l.__data_;
  v981.__end_ = cfa.__r_.__value_.__r.__words[2];
  memset(&cfa, 0, sizeof(cfa));
  while (2)
  {
    if ((SHIBYTE(v981.__end_) & 0x8000000000000000) == 0)
    {
      if (*(&v980 + SHIBYTE(v981.__end_)) != 46)
      {
        break;
      }

      v91 = (SHIBYTE(v981.__end_) - 1);
      HIBYTE(v981.__end_) = (HIBYTE(v981.__end_) - 1) & 0x7F;
      v92 = &v981;
      goto LABEL_173;
    }

    v92 = v981.__first_;
    if (v981.__first_->__r_.__value_.__s.__data_[v981.__begin_ - 1] == 46)
    {
      v91 = --v981.__begin_;
LABEL_173:
      v91->__r_.__value_.__s.__data_[v92] = 0;
      continue;
    }

    break;
  }

  __p = *&v981.__first_;
  end = v981.__end_;
  if (SHIBYTE(cfa.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(cfa.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(end) >= 0)
  {
    v93 = &__p;
  }

  else
  {
    v93 = __p;
  }

  if (SHIBYTE(end) >= 0)
  {
    v94 = HIBYTE(end);
  }

  else
  {
    v94 = *(&__p + 1);
  }

  v95 = std::string::append(&v974, v93, v94);
  v96 = *&v95->__r_.__value_.__l.__data_;
  v946.__r_.__value_.__r.__words[2] = v95->__r_.__value_.__r.__words[2];
  *&v946.__r_.__value_.__l.__data_ = v96;
  v95->__r_.__value_.__l.__size_ = 0;
  v95->__r_.__value_.__r.__words[2] = 0;
  v95->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(end) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v974.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v974.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v973.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v973.__r_.__value_.__l.__data_);
  }

  v97 = std::string::append(&v946, ",\n", 2uLL);
  v98 = *&v97->__r_.__value_.__l.__data_;
  v947.__r_.__value_.__r.__words[2] = v97->__r_.__value_.__r.__words[2];
  *&v947.__r_.__value_.__l.__data_ = v98;
  v97->__r_.__value_.__l.__size_ = 0;
  v97->__r_.__value_.__r.__words[2] = 0;
  v97->__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&v973, "Thermal_SafeTlimTimeMin");
  v99 = std::string::append(&v973, ": ", 2uLL);
  v100 = *&v99->__r_.__value_.__l.__data_;
  v974.__r_.__value_.__r.__words[2] = v99->__r_.__value_.__r.__words[2];
  *&v974.__r_.__value_.__l.__data_ = v100;
  v99->__r_.__value_.__l.__size_ = 0;
  v99->__r_.__value_.__r.__words[2] = 0;
  v99->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&cfa, v912);
  while (2)
  {
    if ((SHIBYTE(cfa.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
    {
      if (*(&v936 + SHIBYTE(cfa.__r_.__value_.__r.__words[2]) + 7) != 48)
      {
        break;
      }

      v101 = SHIBYTE(cfa.__r_.__value_.__r.__words[2]) - 1;
      *(&cfa.__r_.__value_.__s + 23) = (*(&cfa.__r_.__value_.__s + 23) - 1) & 0x7F;
      v102 = &cfa;
      goto LABEL_194;
    }

    v102 = cfa.__r_.__value_.__r.__words[0];
    if (*(cfa.__r_.__value_.__r.__words[0] + cfa.__r_.__value_.__l.__size_ - 1) == 48)
    {
      v101 = --cfa.__r_.__value_.__l.__size_;
LABEL_194:
      v102->__r_.__value_.__s.__data_[v101] = 0;
      continue;
    }

    break;
  }

  *&v981.__first_ = *&cfa.__r_.__value_.__l.__data_;
  v981.__end_ = cfa.__r_.__value_.__r.__words[2];
  memset(&cfa, 0, sizeof(cfa));
  while (2)
  {
    if ((SHIBYTE(v981.__end_) & 0x8000000000000000) == 0)
    {
      if (*(&v980 + SHIBYTE(v981.__end_)) != 46)
      {
        break;
      }

      v103 = (SHIBYTE(v981.__end_) - 1);
      HIBYTE(v981.__end_) = (HIBYTE(v981.__end_) - 1) & 0x7F;
      v104 = &v981;
      goto LABEL_201;
    }

    v104 = v981.__first_;
    if (v981.__first_->__r_.__value_.__s.__data_[v981.__begin_ - 1] == 46)
    {
      v103 = --v981.__begin_;
LABEL_201:
      v103->__r_.__value_.__s.__data_[v104] = 0;
      continue;
    }

    break;
  }

  __p = *&v981.__first_;
  end = v981.__end_;
  if (SHIBYTE(cfa.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(cfa.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(end) >= 0)
  {
    v105 = &__p;
  }

  else
  {
    v105 = __p;
  }

  if (SHIBYTE(end) >= 0)
  {
    v106 = HIBYTE(end);
  }

  else
  {
    v106 = *(&__p + 1);
  }

  v107 = std::string::append(&v974, v105, v106);
  v108 = *&v107->__r_.__value_.__l.__data_;
  v949.__r_.__value_.__r.__words[2] = v107->__r_.__value_.__r.__words[2];
  *&v949.__r_.__value_.__l.__data_ = v108;
  v107->__r_.__value_.__l.__size_ = 0;
  v107->__r_.__value_.__r.__words[2] = 0;
  v107->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(end) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v974.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v974.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v973.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v973.__r_.__value_.__l.__data_);
  }

  v109 = std::string::append(&v949, ",\n", 2uLL);
  v110 = *&v109->__r_.__value_.__l.__data_;
  v950.__r_.__value_.__r.__words[2] = v109->__r_.__value_.__r.__words[2];
  *&v950.__r_.__value_.__l.__data_ = v110;
  v109->__r_.__value_.__l.__size_ = 0;
  v109->__r_.__value_.__r.__words[2] = 0;
  v109->__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&v973, "Thermal_SafeTlimOffset");
  v111 = std::string::append(&v973, ": ", 2uLL);
  v112 = *&v111->__r_.__value_.__l.__data_;
  v974.__r_.__value_.__r.__words[2] = v111->__r_.__value_.__r.__words[2];
  *&v974.__r_.__value_.__l.__data_ = v112;
  v111->__r_.__value_.__l.__size_ = 0;
  v111->__r_.__value_.__r.__words[2] = 0;
  v111->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&cfa, v910);
  while (2)
  {
    if ((SHIBYTE(cfa.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
    {
      if (*(&v936 + SHIBYTE(cfa.__r_.__value_.__r.__words[2]) + 7) != 48)
      {
        break;
      }

      v113 = SHIBYTE(cfa.__r_.__value_.__r.__words[2]) - 1;
      *(&cfa.__r_.__value_.__s + 23) = (*(&cfa.__r_.__value_.__s + 23) - 1) & 0x7F;
      v114 = &cfa;
      goto LABEL_222;
    }

    v114 = cfa.__r_.__value_.__r.__words[0];
    if (*(cfa.__r_.__value_.__r.__words[0] + cfa.__r_.__value_.__l.__size_ - 1) == 48)
    {
      v113 = --cfa.__r_.__value_.__l.__size_;
LABEL_222:
      v114->__r_.__value_.__s.__data_[v113] = 0;
      continue;
    }

    break;
  }

  *&v981.__first_ = *&cfa.__r_.__value_.__l.__data_;
  v981.__end_ = cfa.__r_.__value_.__r.__words[2];
  memset(&cfa, 0, sizeof(cfa));
  while (2)
  {
    if ((SHIBYTE(v981.__end_) & 0x8000000000000000) == 0)
    {
      if (*(&v980 + SHIBYTE(v981.__end_)) != 46)
      {
        break;
      }

      v115 = (SHIBYTE(v981.__end_) - 1);
      HIBYTE(v981.__end_) = (HIBYTE(v981.__end_) - 1) & 0x7F;
      v116 = &v981;
      goto LABEL_229;
    }

    v116 = v981.__first_;
    if (v981.__first_->__r_.__value_.__s.__data_[v981.__begin_ - 1] == 46)
    {
      v115 = --v981.__begin_;
LABEL_229:
      v115->__r_.__value_.__s.__data_[v116] = 0;
      continue;
    }

    break;
  }

  __p = *&v981.__first_;
  end = v981.__end_;
  if (SHIBYTE(cfa.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(cfa.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(end) >= 0)
  {
    v117 = &__p;
  }

  else
  {
    v117 = __p;
  }

  if (SHIBYTE(end) >= 0)
  {
    v118 = HIBYTE(end);
  }

  else
  {
    v118 = *(&__p + 1);
  }

  v119 = std::string::append(&v974, v117, v118);
  v120 = *&v119->__r_.__value_.__l.__data_;
  v952.__r_.__value_.__r.__words[2] = v119->__r_.__value_.__r.__words[2];
  *&v952.__r_.__value_.__l.__data_ = v120;
  v119->__r_.__value_.__l.__size_ = 0;
  v119->__r_.__value_.__r.__words[2] = 0;
  v119->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(end) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v974.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v974.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v973.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v973.__r_.__value_.__l.__data_);
  }

  v121 = std::string::append(&v952, ",\n", 2uLL);
  v122 = *&v121->__r_.__value_.__l.__data_;
  v953.__r_.__value_.__r.__words[2] = v121->__r_.__value_.__r.__words[2];
  *&v953.__r_.__value_.__l.__data_ = v122;
  v121->__r_.__value_.__l.__size_ = 0;
  v121->__r_.__value_.__r.__words[2] = 0;
  v121->__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&v973, "Thermal_AmbientTemp");
  v123 = std::string::append(&v973, ": ", 2uLL);
  v124 = *&v123->__r_.__value_.__l.__data_;
  v974.__r_.__value_.__r.__words[2] = v123->__r_.__value_.__r.__words[2];
  *&v974.__r_.__value_.__l.__data_ = v124;
  v123->__r_.__value_.__l.__size_ = 0;
  v123->__r_.__value_.__r.__words[2] = 0;
  v123->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&cfa, v907);
  while (2)
  {
    if ((SHIBYTE(cfa.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
    {
      if (*(&v936 + SHIBYTE(cfa.__r_.__value_.__r.__words[2]) + 7) != 48)
      {
        break;
      }

      v125 = SHIBYTE(cfa.__r_.__value_.__r.__words[2]) - 1;
      *(&cfa.__r_.__value_.__s + 23) = (*(&cfa.__r_.__value_.__s + 23) - 1) & 0x7F;
      v126 = &cfa;
      goto LABEL_250;
    }

    v126 = cfa.__r_.__value_.__r.__words[0];
    if (*(cfa.__r_.__value_.__r.__words[0] + cfa.__r_.__value_.__l.__size_ - 1) == 48)
    {
      v125 = --cfa.__r_.__value_.__l.__size_;
LABEL_250:
      v126->__r_.__value_.__s.__data_[v125] = 0;
      continue;
    }

    break;
  }

  *&v981.__first_ = *&cfa.__r_.__value_.__l.__data_;
  v981.__end_ = cfa.__r_.__value_.__r.__words[2];
  memset(&cfa, 0, sizeof(cfa));
  while (2)
  {
    if ((SHIBYTE(v981.__end_) & 0x8000000000000000) == 0)
    {
      if (*(&v980 + SHIBYTE(v981.__end_)) != 46)
      {
        break;
      }

      v127 = (SHIBYTE(v981.__end_) - 1);
      HIBYTE(v981.__end_) = (HIBYTE(v981.__end_) - 1) & 0x7F;
      v128 = &v981;
      goto LABEL_257;
    }

    v128 = v981.__first_;
    if (v981.__first_->__r_.__value_.__s.__data_[v981.__begin_ - 1] == 46)
    {
      v127 = --v981.__begin_;
LABEL_257:
      v127->__r_.__value_.__s.__data_[v128] = 0;
      continue;
    }

    break;
  }

  __p = *&v981.__first_;
  end = v981.__end_;
  if (SHIBYTE(cfa.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(cfa.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(end) >= 0)
  {
    v129 = &__p;
  }

  else
  {
    v129 = __p;
  }

  if (SHIBYTE(end) >= 0)
  {
    v130 = HIBYTE(end);
  }

  else
  {
    v130 = *(&__p + 1);
  }

  v131 = std::string::append(&v974, v129, v130);
  v132 = *&v131->__r_.__value_.__l.__data_;
  v955.__r_.__value_.__r.__words[2] = v131->__r_.__value_.__r.__words[2];
  *&v955.__r_.__value_.__l.__data_ = v132;
  v131->__r_.__value_.__l.__size_ = 0;
  v131->__r_.__value_.__r.__words[2] = 0;
  v131->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(end) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v974.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v974.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v973.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v973.__r_.__value_.__l.__data_);
  }

  v133 = std::string::append(&v955, ",\n", 2uLL);
  v134 = *&v133->__r_.__value_.__l.__data_;
  v956.__r_.__value_.__r.__words[2] = v133->__r_.__value_.__r.__words[2];
  *&v956.__r_.__value_.__l.__data_ = v134;
  v133->__r_.__value_.__l.__size_ = 0;
  v133->__r_.__value_.__r.__words[2] = 0;
  v133->__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&v973, "Thermal_GainAttackTime_s");
  v135 = std::string::append(&v973, ": ", 2uLL);
  v136 = *&v135->__r_.__value_.__l.__data_;
  v974.__r_.__value_.__r.__words[2] = v135->__r_.__value_.__r.__words[2];
  *&v974.__r_.__value_.__l.__data_ = v136;
  v135->__r_.__value_.__l.__size_ = 0;
  v135->__r_.__value_.__r.__words[2] = 0;
  v135->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&cfa, v905);
  while (2)
  {
    if ((SHIBYTE(cfa.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
    {
      if (*(&v936 + SHIBYTE(cfa.__r_.__value_.__r.__words[2]) + 7) != 48)
      {
        break;
      }

      v137 = SHIBYTE(cfa.__r_.__value_.__r.__words[2]) - 1;
      *(&cfa.__r_.__value_.__s + 23) = (*(&cfa.__r_.__value_.__s + 23) - 1) & 0x7F;
      v138 = &cfa;
      goto LABEL_278;
    }

    v138 = cfa.__r_.__value_.__r.__words[0];
    if (*(cfa.__r_.__value_.__r.__words[0] + cfa.__r_.__value_.__l.__size_ - 1) == 48)
    {
      v137 = --cfa.__r_.__value_.__l.__size_;
LABEL_278:
      v138->__r_.__value_.__s.__data_[v137] = 0;
      continue;
    }

    break;
  }

  *&v981.__first_ = *&cfa.__r_.__value_.__l.__data_;
  v981.__end_ = cfa.__r_.__value_.__r.__words[2];
  memset(&cfa, 0, sizeof(cfa));
  while (2)
  {
    if ((SHIBYTE(v981.__end_) & 0x8000000000000000) == 0)
    {
      if (*(&v980 + SHIBYTE(v981.__end_)) != 46)
      {
        break;
      }

      v139 = (SHIBYTE(v981.__end_) - 1);
      HIBYTE(v981.__end_) = (HIBYTE(v981.__end_) - 1) & 0x7F;
      v140 = &v981;
      goto LABEL_285;
    }

    v140 = v981.__first_;
    if (v981.__first_->__r_.__value_.__s.__data_[v981.__begin_ - 1] == 46)
    {
      v139 = --v981.__begin_;
LABEL_285:
      v139->__r_.__value_.__s.__data_[v140] = 0;
      continue;
    }

    break;
  }

  __p = *&v981.__first_;
  end = v981.__end_;
  if (SHIBYTE(cfa.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(cfa.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(end) >= 0)
  {
    v141 = &__p;
  }

  else
  {
    v141 = __p;
  }

  if (SHIBYTE(end) >= 0)
  {
    v142 = HIBYTE(end);
  }

  else
  {
    v142 = *(&__p + 1);
  }

  v143 = std::string::append(&v974, v141, v142);
  v144 = *&v143->__r_.__value_.__l.__data_;
  v958.__r_.__value_.__r.__words[2] = v143->__r_.__value_.__r.__words[2];
  *&v958.__r_.__value_.__l.__data_ = v144;
  v143->__r_.__value_.__l.__size_ = 0;
  v143->__r_.__value_.__r.__words[2] = 0;
  v143->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(end) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v974.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v974.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v973.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v973.__r_.__value_.__l.__data_);
  }

  v145 = std::string::append(&v958, ",\n", 2uLL);
  v146 = *&v145->__r_.__value_.__l.__data_;
  v959.__r_.__value_.__r.__words[2] = v145->__r_.__value_.__r.__words[2];
  *&v959.__r_.__value_.__l.__data_ = v146;
  v145->__r_.__value_.__l.__size_ = 0;
  v145->__r_.__value_.__r.__words[2] = 0;
  v145->__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&v973, "Thermal_GainReleaseTime_s");
  v147 = std::string::append(&v973, ": ", 2uLL);
  v148 = *&v147->__r_.__value_.__l.__data_;
  v974.__r_.__value_.__r.__words[2] = v147->__r_.__value_.__r.__words[2];
  *&v974.__r_.__value_.__l.__data_ = v148;
  v147->__r_.__value_.__l.__size_ = 0;
  v147->__r_.__value_.__r.__words[2] = 0;
  v147->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&cfa, v902);
  while (2)
  {
    if ((SHIBYTE(cfa.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
    {
      if (*(&v936 + SHIBYTE(cfa.__r_.__value_.__r.__words[2]) + 7) != 48)
      {
        break;
      }

      v149 = SHIBYTE(cfa.__r_.__value_.__r.__words[2]) - 1;
      *(&cfa.__r_.__value_.__s + 23) = (*(&cfa.__r_.__value_.__s + 23) - 1) & 0x7F;
      v150 = &cfa;
      goto LABEL_306;
    }

    v150 = cfa.__r_.__value_.__r.__words[0];
    if (*(cfa.__r_.__value_.__r.__words[0] + cfa.__r_.__value_.__l.__size_ - 1) == 48)
    {
      v149 = --cfa.__r_.__value_.__l.__size_;
LABEL_306:
      v150->__r_.__value_.__s.__data_[v149] = 0;
      continue;
    }

    break;
  }

  *&v981.__first_ = *&cfa.__r_.__value_.__l.__data_;
  v981.__end_ = cfa.__r_.__value_.__r.__words[2];
  memset(&cfa, 0, sizeof(cfa));
  while (2)
  {
    if ((SHIBYTE(v981.__end_) & 0x8000000000000000) == 0)
    {
      if (*(&v980 + SHIBYTE(v981.__end_)) != 46)
      {
        break;
      }

      v151 = (SHIBYTE(v981.__end_) - 1);
      HIBYTE(v981.__end_) = (HIBYTE(v981.__end_) - 1) & 0x7F;
      v152 = &v981;
      goto LABEL_313;
    }

    v152 = v981.__first_;
    if (v981.__first_->__r_.__value_.__s.__data_[v981.__begin_ - 1] == 46)
    {
      v151 = --v981.__begin_;
LABEL_313:
      v151->__r_.__value_.__s.__data_[v152] = 0;
      continue;
    }

    break;
  }

  __p = *&v981.__first_;
  end = v981.__end_;
  if (SHIBYTE(cfa.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(cfa.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(end) >= 0)
  {
    v153 = &__p;
  }

  else
  {
    v153 = __p;
  }

  if (SHIBYTE(end) >= 0)
  {
    v154 = HIBYTE(end);
  }

  else
  {
    v154 = *(&__p + 1);
  }

  v155 = std::string::append(&v974, v153, v154);
  v156 = *&v155->__r_.__value_.__l.__data_;
  v961.__r_.__value_.__r.__words[2] = v155->__r_.__value_.__r.__words[2];
  *&v961.__r_.__value_.__l.__data_ = v156;
  v155->__r_.__value_.__l.__size_ = 0;
  v155->__r_.__value_.__r.__words[2] = 0;
  v155->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(end) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v974.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v974.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v973.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v973.__r_.__value_.__l.__data_);
  }

  v157 = std::string::append(&v961, ",\n", 2uLL);
  v158 = *&v157->__r_.__value_.__l.__data_;
  v963.__r_.__value_.__r.__words[2] = v157->__r_.__value_.__r.__words[2];
  *&v963.__r_.__value_.__l.__data_ = v158;
  v157->__r_.__value_.__l.__size_ = 0;
  v157->__r_.__value_.__r.__words[2] = 0;
  v157->__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&v973, "Disp_PeakAttackTime_s");
  v159 = std::string::append(&v973, ": ", 2uLL);
  v160 = *&v159->__r_.__value_.__l.__data_;
  v974.__r_.__value_.__r.__words[2] = v159->__r_.__value_.__r.__words[2];
  *&v974.__r_.__value_.__l.__data_ = v160;
  v159->__r_.__value_.__l.__size_ = 0;
  v159->__r_.__value_.__r.__words[2] = 0;
  v159->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&cfa, v899);
  while (2)
  {
    if ((SHIBYTE(cfa.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
    {
      if (*(&v936 + SHIBYTE(cfa.__r_.__value_.__r.__words[2]) + 7) != 48)
      {
        break;
      }

      v161 = SHIBYTE(cfa.__r_.__value_.__r.__words[2]) - 1;
      *(&cfa.__r_.__value_.__s + 23) = (*(&cfa.__r_.__value_.__s + 23) - 1) & 0x7F;
      v162 = &cfa;
      goto LABEL_334;
    }

    v162 = cfa.__r_.__value_.__r.__words[0];
    if (*(cfa.__r_.__value_.__r.__words[0] + cfa.__r_.__value_.__l.__size_ - 1) == 48)
    {
      v161 = --cfa.__r_.__value_.__l.__size_;
LABEL_334:
      v162->__r_.__value_.__s.__data_[v161] = 0;
      continue;
    }

    break;
  }

  *&v981.__first_ = *&cfa.__r_.__value_.__l.__data_;
  v981.__end_ = cfa.__r_.__value_.__r.__words[2];
  memset(&cfa, 0, sizeof(cfa));
  while (2)
  {
    if ((SHIBYTE(v981.__end_) & 0x8000000000000000) == 0)
    {
      if (*(&v980 + SHIBYTE(v981.__end_)) != 46)
      {
        break;
      }

      v163 = (SHIBYTE(v981.__end_) - 1);
      HIBYTE(v981.__end_) = (HIBYTE(v981.__end_) - 1) & 0x7F;
      v164 = &v981;
      goto LABEL_341;
    }

    v164 = v981.__first_;
    if (v981.__first_->__r_.__value_.__s.__data_[v981.__begin_ - 1] == 46)
    {
      v163 = --v981.__begin_;
LABEL_341:
      v163->__r_.__value_.__s.__data_[v164] = 0;
      continue;
    }

    break;
  }

  __p = *&v981.__first_;
  end = v981.__end_;
  if (SHIBYTE(cfa.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(cfa.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(end) >= 0)
  {
    v165 = &__p;
  }

  else
  {
    v165 = __p;
  }

  if (SHIBYTE(end) >= 0)
  {
    v166 = HIBYTE(end);
  }

  else
  {
    v166 = *(&__p + 1);
  }

  v167 = std::string::append(&v974, v165, v166);
  v168 = *&v167->__r_.__value_.__l.__data_;
  v965.__r_.__value_.__r.__words[2] = v167->__r_.__value_.__r.__words[2];
  *&v965.__r_.__value_.__l.__data_ = v168;
  v167->__r_.__value_.__l.__size_ = 0;
  v167->__r_.__value_.__r.__words[2] = 0;
  v167->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(end) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v974.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v974.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v973.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v973.__r_.__value_.__l.__data_);
  }

  v169 = std::string::append(&v965, ",\n", 2uLL);
  v170 = *&v169->__r_.__value_.__l.__data_;
  v966.__r_.__value_.__r.__words[2] = v169->__r_.__value_.__r.__words[2];
  *&v966.__r_.__value_.__l.__data_ = v170;
  v169->__r_.__value_.__l.__size_ = 0;
  v169->__r_.__value_.__r.__words[2] = 0;
  v169->__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&v973, "Disp_PeakDecayTime_s");
  v171 = std::string::append(&v973, ": ", 2uLL);
  v172 = *&v171->__r_.__value_.__l.__data_;
  v974.__r_.__value_.__r.__words[2] = v171->__r_.__value_.__r.__words[2];
  *&v974.__r_.__value_.__l.__data_ = v172;
  v171->__r_.__value_.__l.__size_ = 0;
  v171->__r_.__value_.__r.__words[2] = 0;
  v171->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&cfa, v896);
  while (2)
  {
    if ((SHIBYTE(cfa.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
    {
      if (*(&v936 + SHIBYTE(cfa.__r_.__value_.__r.__words[2]) + 7) != 48)
      {
        break;
      }

      v173 = SHIBYTE(cfa.__r_.__value_.__r.__words[2]) - 1;
      *(&cfa.__r_.__value_.__s + 23) = (*(&cfa.__r_.__value_.__s + 23) - 1) & 0x7F;
      v174 = &cfa;
      goto LABEL_362;
    }

    v174 = cfa.__r_.__value_.__r.__words[0];
    if (*(cfa.__r_.__value_.__r.__words[0] + cfa.__r_.__value_.__l.__size_ - 1) == 48)
    {
      v173 = --cfa.__r_.__value_.__l.__size_;
LABEL_362:
      v174->__r_.__value_.__s.__data_[v173] = 0;
      continue;
    }

    break;
  }

  *&v981.__first_ = *&cfa.__r_.__value_.__l.__data_;
  v981.__end_ = cfa.__r_.__value_.__r.__words[2];
  memset(&cfa, 0, sizeof(cfa));
  while (2)
  {
    if ((SHIBYTE(v981.__end_) & 0x8000000000000000) == 0)
    {
      if (*(&v980 + SHIBYTE(v981.__end_)) != 46)
      {
        break;
      }

      v175 = (SHIBYTE(v981.__end_) - 1);
      HIBYTE(v981.__end_) = (HIBYTE(v981.__end_) - 1) & 0x7F;
      v176 = &v981;
      goto LABEL_369;
    }

    v176 = v981.__first_;
    if (v981.__first_->__r_.__value_.__s.__data_[v981.__begin_ - 1] == 46)
    {
      v175 = --v981.__begin_;
LABEL_369:
      v175->__r_.__value_.__s.__data_[v176] = 0;
      continue;
    }

    break;
  }

  __p = *&v981.__first_;
  end = v981.__end_;
  if (SHIBYTE(cfa.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(cfa.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(end) >= 0)
  {
    v177 = &__p;
  }

  else
  {
    v177 = __p;
  }

  if (SHIBYTE(end) >= 0)
  {
    v178 = HIBYTE(end);
  }

  else
  {
    v178 = *(&__p + 1);
  }

  v179 = std::string::append(&v974, v177, v178);
  v180 = *&v179->__r_.__value_.__l.__data_;
  v969.__r_.__value_.__r.__words[2] = v179->__r_.__value_.__r.__words[2];
  *&v969.__r_.__value_.__l.__data_ = v180;
  v179->__r_.__value_.__l.__size_ = 0;
  v179->__r_.__value_.__r.__words[2] = 0;
  v179->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(end) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v974.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v974.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v973.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v973.__r_.__value_.__l.__data_);
  }

  v181 = std::string::append(&v969, ",\n", 2uLL);
  v182 = *&v181->__r_.__value_.__l.__data_;
  v970.__r_.__value_.__r.__words[2] = v181->__r_.__value_.__r.__words[2];
  *&v970.__r_.__value_.__l.__data_ = v182;
  v181->__r_.__value_.__l.__size_ = 0;
  v181->__r_.__value_.__r.__words[2] = 0;
  v181->__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&v973, "Disp_FBIntegrationTime_s");
  v183 = std::string::append(&v973, ": ", 2uLL);
  v184 = *&v183->__r_.__value_.__l.__data_;
  v974.__r_.__value_.__r.__words[2] = v183->__r_.__value_.__r.__words[2];
  *&v974.__r_.__value_.__l.__data_ = v184;
  v183->__r_.__value_.__l.__size_ = 0;
  v183->__r_.__value_.__r.__words[2] = 0;
  v183->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&cfa, v894);
  while (2)
  {
    if ((SHIBYTE(cfa.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
    {
      if (*(&v936 + SHIBYTE(cfa.__r_.__value_.__r.__words[2]) + 7) != 48)
      {
        break;
      }

      v185 = SHIBYTE(cfa.__r_.__value_.__r.__words[2]) - 1;
      *(&cfa.__r_.__value_.__s + 23) = (*(&cfa.__r_.__value_.__s + 23) - 1) & 0x7F;
      v186 = &cfa;
      goto LABEL_390;
    }

    v186 = cfa.__r_.__value_.__r.__words[0];
    if (*(cfa.__r_.__value_.__r.__words[0] + cfa.__r_.__value_.__l.__size_ - 1) == 48)
    {
      v185 = --cfa.__r_.__value_.__l.__size_;
LABEL_390:
      v186->__r_.__value_.__s.__data_[v185] = 0;
      continue;
    }

    break;
  }

  *&v981.__first_ = *&cfa.__r_.__value_.__l.__data_;
  v981.__end_ = cfa.__r_.__value_.__r.__words[2];
  memset(&cfa, 0, sizeof(cfa));
  while (2)
  {
    if ((SHIBYTE(v981.__end_) & 0x8000000000000000) == 0)
    {
      if (*(&v980 + SHIBYTE(v981.__end_)) != 46)
      {
        break;
      }

      v187 = (SHIBYTE(v981.__end_) - 1);
      HIBYTE(v981.__end_) = (HIBYTE(v981.__end_) - 1) & 0x7F;
      v188 = &v981;
      goto LABEL_397;
    }

    v188 = v981.__first_;
    if (v981.__first_->__r_.__value_.__s.__data_[v981.__begin_ - 1] == 46)
    {
      v187 = --v981.__begin_;
LABEL_397:
      v187->__r_.__value_.__s.__data_[v188] = 0;
      continue;
    }

    break;
  }

  __p = *&v981.__first_;
  end = v981.__end_;
  if (SHIBYTE(cfa.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(cfa.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(end) >= 0)
  {
    v189 = &__p;
  }

  else
  {
    v189 = __p;
  }

  if (SHIBYTE(end) >= 0)
  {
    v190 = HIBYTE(end);
  }

  else
  {
    v190 = *(&__p + 1);
  }

  v191 = std::string::append(&v974, v189, v190);
  v192 = *&v191->__r_.__value_.__l.__data_;
  v968 = v191->__r_.__value_.__r.__words[2];
  v967 = v192;
  v191->__r_.__value_.__l.__size_ = 0;
  v191->__r_.__value_.__r.__words[2] = 0;
  v191->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(end) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v974.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v974.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v973.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v973.__r_.__value_.__l.__data_);
  }

  if (v968 >= 0)
  {
    v193 = &v967;
  }

  else
  {
    v193 = v967;
  }

  if (v968 >= 0)
  {
    v194 = HIBYTE(v968);
  }

  else
  {
    v194 = *(&v967 + 1);
  }

  v195 = std::string::append(&v970, v193, v194);
  v196 = *&v195->__r_.__value_.__l.__data_;
  v964.__r_.__value_.__r.__words[2] = v195->__r_.__value_.__r.__words[2];
  *&v964.__r_.__value_.__l.__data_ = v196;
  v195->__r_.__value_.__l.__size_ = 0;
  v195->__r_.__value_.__r.__words[2] = 0;
  v195->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v968) < 0)
  {
    operator delete(v967);
  }

  if (SHIBYTE(v970.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v970.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v969.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v969.__r_.__value_.__l.__data_);
  }

  if ((v964.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v197 = &v964;
  }

  else
  {
    v197 = v964.__r_.__value_.__r.__words[0];
  }

  if ((v964.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v964.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v964.__r_.__value_.__l.__size_;
  }

  v199 = std::string::append(&v966, v197, size);
  v200 = *&v199->__r_.__value_.__l.__data_;
  v960.__r_.__value_.__r.__words[2] = v199->__r_.__value_.__r.__words[2];
  *&v960.__r_.__value_.__l.__data_ = v200;
  v199->__r_.__value_.__l.__size_ = 0;
  v199->__r_.__value_.__r.__words[2] = 0;
  v199->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v964.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v964.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v966.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v966.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v965.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v965.__r_.__value_.__l.__data_);
  }

  if ((v960.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v201 = &v960;
  }

  else
  {
    v201 = v960.__r_.__value_.__r.__words[0];
  }

  if ((v960.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v202 = HIBYTE(v960.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v202 = v960.__r_.__value_.__l.__size_;
  }

  v203 = std::string::append(&v963, v201, v202);
  v204 = *&v203->__r_.__value_.__l.__data_;
  v957.__r_.__value_.__r.__words[2] = v203->__r_.__value_.__r.__words[2];
  *&v957.__r_.__value_.__l.__data_ = v204;
  v203->__r_.__value_.__l.__size_ = 0;
  v203->__r_.__value_.__r.__words[2] = 0;
  v203->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v960.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v960.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v963.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v963.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v961.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v961.__r_.__value_.__l.__data_);
  }

  if ((v957.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v205 = &v957;
  }

  else
  {
    v205 = v957.__r_.__value_.__r.__words[0];
  }

  if ((v957.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v206 = HIBYTE(v957.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v206 = v957.__r_.__value_.__l.__size_;
  }

  v207 = std::string::append(&v959, v205, v206);
  v208 = *&v207->__r_.__value_.__l.__data_;
  v954.__r_.__value_.__r.__words[2] = v207->__r_.__value_.__r.__words[2];
  *&v954.__r_.__value_.__l.__data_ = v208;
  v207->__r_.__value_.__l.__size_ = 0;
  v207->__r_.__value_.__r.__words[2] = 0;
  v207->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v957.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v957.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v959.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v959.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v958.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v958.__r_.__value_.__l.__data_);
  }

  if ((v954.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v209 = &v954;
  }

  else
  {
    v209 = v954.__r_.__value_.__r.__words[0];
  }

  if ((v954.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v210 = HIBYTE(v954.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v210 = v954.__r_.__value_.__l.__size_;
  }

  v211 = std::string::append(&v956, v209, v210);
  v212 = *&v211->__r_.__value_.__l.__data_;
  v951.__r_.__value_.__r.__words[2] = v211->__r_.__value_.__r.__words[2];
  *&v951.__r_.__value_.__l.__data_ = v212;
  v211->__r_.__value_.__l.__size_ = 0;
  v211->__r_.__value_.__r.__words[2] = 0;
  v211->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v954.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v954.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v956.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v956.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v955.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v955.__r_.__value_.__l.__data_);
  }

  if ((v951.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v213 = &v951;
  }

  else
  {
    v213 = v951.__r_.__value_.__r.__words[0];
  }

  if ((v951.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v214 = HIBYTE(v951.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v214 = v951.__r_.__value_.__l.__size_;
  }

  v215 = std::string::append(&v953, v213, v214);
  v216 = *&v215->__r_.__value_.__l.__data_;
  v948.__r_.__value_.__r.__words[2] = v215->__r_.__value_.__r.__words[2];
  *&v948.__r_.__value_.__l.__data_ = v216;
  v215->__r_.__value_.__l.__size_ = 0;
  v215->__r_.__value_.__r.__words[2] = 0;
  v215->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v951.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v951.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v953.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v953.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v952.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v952.__r_.__value_.__l.__data_);
  }

  if ((v948.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v217 = &v948;
  }

  else
  {
    v217 = v948.__r_.__value_.__r.__words[0];
  }

  if ((v948.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v218 = HIBYTE(v948.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v218 = v948.__r_.__value_.__l.__size_;
  }

  v219 = std::string::append(&v950, v217, v218);
  v220 = *&v219->__r_.__value_.__l.__data_;
  v945 = v219->__r_.__value_.__r.__words[2];
  v944 = v220;
  v219->__r_.__value_.__l.__size_ = 0;
  v219->__r_.__value_.__r.__words[2] = 0;
  v219->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v948.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v948.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v950.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v950.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v949.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v949.__r_.__value_.__l.__data_);
  }

  if (v945 >= 0)
  {
    v221 = &v944;
  }

  else
  {
    v221 = v944;
  }

  if (v945 >= 0)
  {
    v222 = HIBYTE(v945);
  }

  else
  {
    v222 = *(&v944 + 1);
  }

  v223 = std::string::append(&v947, v221, v222);
  v224 = *&v223->__r_.__value_.__l.__data_;
  v941 = v223->__r_.__value_.__r.__words[2];
  *v940 = v224;
  v223->__r_.__value_.__l.__size_ = 0;
  v223->__r_.__value_.__r.__words[2] = 0;
  v223->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v945) < 0)
  {
    operator delete(v944);
  }

  if (SHIBYTE(v947.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v947.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v946.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v946.__r_.__value_.__l.__data_);
  }

  if (v941 >= 0)
  {
    v225 = v940;
  }

  else
  {
    v225 = v940[0];
  }

  if (v941 >= 0)
  {
    v226 = HIBYTE(v941);
  }

  else
  {
    v226 = v940[1];
  }

  v227 = std::string::append(&v943, v225, v226);
  v934 = *v227;
  v227->__r_.__value_.__l.__size_ = 0;
  v227->__r_.__value_.__r.__words[2] = 0;
  v227->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v941) < 0)
  {
    operator delete(v940[0]);
  }

  if (SHIBYTE(v943.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v943.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v942.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v942.__r_.__value_.__l.__data_);
  }

  AUT::GroupLines(&v935, &v934);
  if ((v935.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v228 = &v935;
  }

  else
  {
    v228 = v935.__r_.__value_.__r.__words[0];
  }

  *buf = 136315650;
  *&buf[4] = "AUSpeakerProtectionV3.cpp";
  *&buf[12] = 1024;
  *&buf[14] = 3852;
  *&buf[18] = 2080;
  *&buf[20] = v228;
  _os_log_impl(&dword_1DDB85000, v74, OS_LOG_TYPE_DEBUG, "%25s:%-5d Applying system params:%s", buf, 0x1Cu);
  if (SHIBYTE(v935.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v935.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v934.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v934.__r_.__value_.__l.__data_);
  }

LABEL_527:
  v229 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v230 & 1) == 0)
  {
    abort();
  }

  v231 = v229;
  ausdk::AUElement::SetParameter(v229, 8u, __val);
  ausdk::AUElement::SetParameter(v231, 5u, v915);
  ausdk::AUElement::SetParameter(v231, 6u, v912);
  ausdk::AUElement::SetParameter(v231, 7u, v910);
  ausdk::AUElement::SetParameter(v231, 4u, v907);
  ausdk::AUElement::SetParameter(v231, 2u, v905);
  ausdk::AUElement::SetParameter(v231, 3u, v902);
  ausdk::AUElement::SetParameter(v231, 9u, v899);
  ausdk::AUElement::SetParameter(v231, 0xAu, v896);
  ausdk::AUElement::SetParameter(v231, 0xBu, v894);
  v232 = v41;
  if (__src == v9)
  {
    goto LABEL_930;
  }

  v233 = __src;
  while (2)
  {
    v234 = spp3Subsystem();
    if (v234)
    {
      v235 = *v234;
      if (!*v234)
      {
        goto LABEL_929;
      }
    }

    else
    {
      v235 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v235, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_929;
    }

    v236 = *v233;
    v238 = *(v233 + 1);
    v237 = *(v233 + 2);
    v240 = *(v233 + 3);
    v239 = *(v233 + 4);
    v242 = *(v233 + 5);
    v241 = *(v233 + 6);
    v244 = *(v233 + 7);
    v243 = *(v233 + 8);
    v930 = *(v233 + 9);
    v926 = *(v233 + 10);
    std::string::basic_string[abi:ne200100]<0>(&v973, "Rshunt");
    v245 = std::string::append(&v973, ": ", 2uLL);
    v246 = *&v245->__r_.__value_.__l.__data_;
    v974.__r_.__value_.__r.__words[2] = v245->__r_.__value_.__r.__words[2];
    *&v974.__r_.__value_.__l.__data_ = v246;
    v245->__r_.__value_.__l.__size_ = 0;
    v245->__r_.__value_.__r.__words[2] = 0;
    v245->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&cfa, v238);
    while (2)
    {
      if ((SHIBYTE(cfa.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
      {
        if (*(&v936 + SHIBYTE(cfa.__r_.__value_.__r.__words[2]) + 7) != 48)
        {
          break;
        }

        v247 = SHIBYTE(cfa.__r_.__value_.__r.__words[2]) - 1;
        *(&cfa.__r_.__value_.__s + 23) = (*(&cfa.__r_.__value_.__s + 23) - 1) & 0x7F;
        v248 = &cfa;
        goto LABEL_541;
      }

      v248 = cfa.__r_.__value_.__r.__words[0];
      if (*(cfa.__r_.__value_.__r.__words[0] + cfa.__r_.__value_.__l.__size_ - 1) == 48)
      {
        v247 = --cfa.__r_.__value_.__l.__size_;
LABEL_541:
        v248->__r_.__value_.__s.__data_[v247] = 0;
        continue;
      }

      break;
    }

    *&v981.__first_ = *&cfa.__r_.__value_.__l.__data_;
    v981.__end_ = cfa.__r_.__value_.__r.__words[2];
    memset(&cfa, 0, sizeof(cfa));
    while (2)
    {
      if ((SHIBYTE(v981.__end_) & 0x8000000000000000) == 0)
      {
        if (*(&v980 + SHIBYTE(v981.__end_)) != 46)
        {
          break;
        }

        v249 = (SHIBYTE(v981.__end_) - 1);
        HIBYTE(v981.__end_) = (HIBYTE(v981.__end_) - 1) & 0x7F;
        v250 = &v981;
        goto LABEL_548;
      }

      v250 = v981.__first_;
      if (v981.__first_->__r_.__value_.__s.__data_[v981.__begin_ - 1] == 46)
      {
        v249 = --v981.__begin_;
LABEL_548:
        v249->__r_.__value_.__s.__data_[v250] = 0;
        continue;
      }

      break;
    }

    __p = *&v981.__first_;
    end = v981.__end_;
    if (SHIBYTE(cfa.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(cfa.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(end) >= 0)
    {
      v251 = &__p;
    }

    else
    {
      v251 = __p;
    }

    if (SHIBYTE(end) >= 0)
    {
      v252 = HIBYTE(end);
    }

    else
    {
      v252 = *(&__p + 1);
    }

    v253 = std::string::append(&v974, v251, v252);
    v254 = *&v253->__r_.__value_.__l.__data_;
    v942.__r_.__value_.__r.__words[2] = v253->__r_.__value_.__r.__words[2];
    *&v942.__r_.__value_.__l.__data_ = v254;
    v253->__r_.__value_.__l.__size_ = 0;
    v253->__r_.__value_.__r.__words[2] = 0;
    v253->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(end) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v974.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v974.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v973.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v973.__r_.__value_.__l.__data_);
    }

    v255 = std::string::append(&v942, ",\n", 2uLL);
    v256 = *&v255->__r_.__value_.__l.__data_;
    v943.__r_.__value_.__r.__words[2] = v255->__r_.__value_.__r.__words[2];
    *&v943.__r_.__value_.__l.__data_ = v256;
    v255->__r_.__value_.__l.__size_ = 0;
    v255->__r_.__value_.__r.__words[2] = 0;
    v255->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&v973, "Reb_ref");
    v257 = std::string::append(&v973, ": ", 2uLL);
    v258 = *&v257->__r_.__value_.__l.__data_;
    v974.__r_.__value_.__r.__words[2] = v257->__r_.__value_.__r.__words[2];
    *&v974.__r_.__value_.__l.__data_ = v258;
    v257->__r_.__value_.__l.__size_ = 0;
    v257->__r_.__value_.__r.__words[2] = 0;
    v257->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&cfa, v237);
    while (2)
    {
      if ((SHIBYTE(cfa.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
      {
        if (*(&v936 + SHIBYTE(cfa.__r_.__value_.__r.__words[2]) + 7) != 48)
        {
          break;
        }

        v259 = SHIBYTE(cfa.__r_.__value_.__r.__words[2]) - 1;
        *(&cfa.__r_.__value_.__s + 23) = (*(&cfa.__r_.__value_.__s + 23) - 1) & 0x7F;
        v260 = &cfa;
        goto LABEL_569;
      }

      v260 = cfa.__r_.__value_.__r.__words[0];
      if (*(cfa.__r_.__value_.__r.__words[0] + cfa.__r_.__value_.__l.__size_ - 1) == 48)
      {
        v259 = --cfa.__r_.__value_.__l.__size_;
LABEL_569:
        v260->__r_.__value_.__s.__data_[v259] = 0;
        continue;
      }

      break;
    }

    *&v981.__first_ = *&cfa.__r_.__value_.__l.__data_;
    v981.__end_ = cfa.__r_.__value_.__r.__words[2];
    memset(&cfa, 0, sizeof(cfa));
    while (2)
    {
      if ((SHIBYTE(v981.__end_) & 0x8000000000000000) == 0)
      {
        if (*(&v980 + SHIBYTE(v981.__end_)) != 46)
        {
          break;
        }

        v261 = (SHIBYTE(v981.__end_) - 1);
        HIBYTE(v981.__end_) = (HIBYTE(v981.__end_) - 1) & 0x7F;
        v262 = &v981;
        goto LABEL_576;
      }

      v262 = v981.__first_;
      if (v981.__first_->__r_.__value_.__s.__data_[v981.__begin_ - 1] == 46)
      {
        v261 = --v981.__begin_;
LABEL_576:
        v261->__r_.__value_.__s.__data_[v262] = 0;
        continue;
      }

      break;
    }

    __p = *&v981.__first_;
    end = v981.__end_;
    if (SHIBYTE(cfa.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(cfa.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(end) >= 0)
    {
      v263 = &__p;
    }

    else
    {
      v263 = __p;
    }

    if (SHIBYTE(end) >= 0)
    {
      v264 = HIBYTE(end);
    }

    else
    {
      v264 = *(&__p + 1);
    }

    v265 = std::string::append(&v974, v263, v264);
    v266 = *&v265->__r_.__value_.__l.__data_;
    v946.__r_.__value_.__r.__words[2] = v265->__r_.__value_.__r.__words[2];
    *&v946.__r_.__value_.__l.__data_ = v266;
    v265->__r_.__value_.__l.__size_ = 0;
    v265->__r_.__value_.__r.__words[2] = 0;
    v265->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(end) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v974.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v974.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v973.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v973.__r_.__value_.__l.__data_);
    }

    v267 = std::string::append(&v946, ",\n", 2uLL);
    v268 = *&v267->__r_.__value_.__l.__data_;
    v947.__r_.__value_.__r.__words[2] = v267->__r_.__value_.__r.__words[2];
    *&v947.__r_.__value_.__l.__data_ = v268;
    v267->__r_.__value_.__l.__size_ = 0;
    v267->__r_.__value_.__r.__words[2] = 0;
    v267->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&v973, "Rampout");
    v269 = std::string::append(&v973, ": ", 2uLL);
    v270 = *&v269->__r_.__value_.__l.__data_;
    v974.__r_.__value_.__r.__words[2] = v269->__r_.__value_.__r.__words[2];
    *&v974.__r_.__value_.__l.__data_ = v270;
    v269->__r_.__value_.__l.__size_ = 0;
    v269->__r_.__value_.__r.__words[2] = 0;
    v269->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&cfa, v240);
    while (2)
    {
      if ((SHIBYTE(cfa.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
      {
        if (*(&v936 + SHIBYTE(cfa.__r_.__value_.__r.__words[2]) + 7) != 48)
        {
          break;
        }

        v271 = SHIBYTE(cfa.__r_.__value_.__r.__words[2]) - 1;
        *(&cfa.__r_.__value_.__s + 23) = (*(&cfa.__r_.__value_.__s + 23) - 1) & 0x7F;
        v272 = &cfa;
        goto LABEL_597;
      }

      v272 = cfa.__r_.__value_.__r.__words[0];
      if (*(cfa.__r_.__value_.__r.__words[0] + cfa.__r_.__value_.__l.__size_ - 1) == 48)
      {
        v271 = --cfa.__r_.__value_.__l.__size_;
LABEL_597:
        v272->__r_.__value_.__s.__data_[v271] = 0;
        continue;
      }

      break;
    }

    *&v981.__first_ = *&cfa.__r_.__value_.__l.__data_;
    v981.__end_ = cfa.__r_.__value_.__r.__words[2];
    memset(&cfa, 0, sizeof(cfa));
    while (2)
    {
      if ((SHIBYTE(v981.__end_) & 0x8000000000000000) == 0)
      {
        if (*(&v980 + SHIBYTE(v981.__end_)) != 46)
        {
          break;
        }

        v273 = (SHIBYTE(v981.__end_) - 1);
        HIBYTE(v981.__end_) = (HIBYTE(v981.__end_) - 1) & 0x7F;
        v274 = &v981;
        goto LABEL_604;
      }

      v274 = v981.__first_;
      if (v981.__first_->__r_.__value_.__s.__data_[v981.__begin_ - 1] == 46)
      {
        v273 = --v981.__begin_;
LABEL_604:
        v273->__r_.__value_.__s.__data_[v274] = 0;
        continue;
      }

      break;
    }

    __p = *&v981.__first_;
    end = v981.__end_;
    if (SHIBYTE(cfa.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(cfa.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(end) >= 0)
    {
      v275 = &__p;
    }

    else
    {
      v275 = __p;
    }

    if (SHIBYTE(end) >= 0)
    {
      v276 = HIBYTE(end);
    }

    else
    {
      v276 = *(&__p + 1);
    }

    v277 = std::string::append(&v974, v275, v276);
    v278 = *&v277->__r_.__value_.__l.__data_;
    v949.__r_.__value_.__r.__words[2] = v277->__r_.__value_.__r.__words[2];
    *&v949.__r_.__value_.__l.__data_ = v278;
    v277->__r_.__value_.__l.__size_ = 0;
    v277->__r_.__value_.__r.__words[2] = 0;
    v277->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(end) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v974.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v974.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v973.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v973.__r_.__value_.__l.__data_);
    }

    v279 = std::string::append(&v949, ",\n", 2uLL);
    v280 = *&v279->__r_.__value_.__l.__data_;
    v950.__r_.__value_.__r.__words[2] = v279->__r_.__value_.__r.__words[2];
    *&v950.__r_.__value_.__l.__data_ = v280;
    v279->__r_.__value_.__l.__size_ = 0;
    v279->__r_.__value_.__r.__words[2] = 0;
    v279->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&v973, "T_sett_vc");
    v281 = std::string::append(&v973, ": ", 2uLL);
    v282 = *&v281->__r_.__value_.__l.__data_;
    v974.__r_.__value_.__r.__words[2] = v281->__r_.__value_.__r.__words[2];
    *&v974.__r_.__value_.__l.__data_ = v282;
    v281->__r_.__value_.__l.__size_ = 0;
    v281->__r_.__value_.__r.__words[2] = 0;
    v281->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&cfa, v239);
    while (2)
    {
      if ((SHIBYTE(cfa.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
      {
        if (*(&v936 + SHIBYTE(cfa.__r_.__value_.__r.__words[2]) + 7) != 48)
        {
          break;
        }

        v283 = SHIBYTE(cfa.__r_.__value_.__r.__words[2]) - 1;
        *(&cfa.__r_.__value_.__s + 23) = (*(&cfa.__r_.__value_.__s + 23) - 1) & 0x7F;
        v284 = &cfa;
        goto LABEL_625;
      }

      v284 = cfa.__r_.__value_.__r.__words[0];
      if (*(cfa.__r_.__value_.__r.__words[0] + cfa.__r_.__value_.__l.__size_ - 1) == 48)
      {
        v283 = --cfa.__r_.__value_.__l.__size_;
LABEL_625:
        v284->__r_.__value_.__s.__data_[v283] = 0;
        continue;
      }

      break;
    }

    *&v981.__first_ = *&cfa.__r_.__value_.__l.__data_;
    v981.__end_ = cfa.__r_.__value_.__r.__words[2];
    memset(&cfa, 0, sizeof(cfa));
    while (2)
    {
      if ((SHIBYTE(v981.__end_) & 0x8000000000000000) == 0)
      {
        if (*(&v980 + SHIBYTE(v981.__end_)) != 46)
        {
          break;
        }

        v285 = (SHIBYTE(v981.__end_) - 1);
        HIBYTE(v981.__end_) = (HIBYTE(v981.__end_) - 1) & 0x7F;
        v286 = &v981;
        goto LABEL_632;
      }

      v286 = v981.__first_;
      if (v981.__first_->__r_.__value_.__s.__data_[v981.__begin_ - 1] == 46)
      {
        v285 = --v981.__begin_;
LABEL_632:
        v285->__r_.__value_.__s.__data_[v286] = 0;
        continue;
      }

      break;
    }

    __p = *&v981.__first_;
    end = v981.__end_;
    if (SHIBYTE(cfa.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(cfa.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(end) >= 0)
    {
      v287 = &__p;
    }

    else
    {
      v287 = __p;
    }

    if (SHIBYTE(end) >= 0)
    {
      v288 = HIBYTE(end);
    }

    else
    {
      v288 = *(&__p + 1);
    }

    v289 = std::string::append(&v974, v287, v288);
    v290 = *&v289->__r_.__value_.__l.__data_;
    v952.__r_.__value_.__r.__words[2] = v289->__r_.__value_.__r.__words[2];
    *&v952.__r_.__value_.__l.__data_ = v290;
    v289->__r_.__value_.__l.__size_ = 0;
    v289->__r_.__value_.__r.__words[2] = 0;
    v289->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(end) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v974.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v974.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v973.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v973.__r_.__value_.__l.__data_);
    }

    v291 = std::string::append(&v952, ",\n", 2uLL);
    v292 = *&v291->__r_.__value_.__l.__data_;
    v953.__r_.__value_.__r.__words[2] = v291->__r_.__value_.__r.__words[2];
    *&v953.__r_.__value_.__l.__data_ = v292;
    v291->__r_.__value_.__l.__size_ = 0;
    v291->__r_.__value_.__r.__words[2] = 0;
    v291->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&v973, "tau_Tvc");
    v293 = std::string::append(&v973, ": ", 2uLL);
    v294 = *&v293->__r_.__value_.__l.__data_;
    v974.__r_.__value_.__r.__words[2] = v293->__r_.__value_.__r.__words[2];
    *&v974.__r_.__value_.__l.__data_ = v294;
    v293->__r_.__value_.__l.__size_ = 0;
    v293->__r_.__value_.__r.__words[2] = 0;
    v293->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&cfa, v242);
    while (2)
    {
      if ((SHIBYTE(cfa.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
      {
        if (*(&v936 + SHIBYTE(cfa.__r_.__value_.__r.__words[2]) + 7) != 48)
        {
          break;
        }

        v295 = SHIBYTE(cfa.__r_.__value_.__r.__words[2]) - 1;
        *(&cfa.__r_.__value_.__s + 23) = (*(&cfa.__r_.__value_.__s + 23) - 1) & 0x7F;
        v296 = &cfa;
        goto LABEL_653;
      }

      v296 = cfa.__r_.__value_.__r.__words[0];
      if (*(cfa.__r_.__value_.__r.__words[0] + cfa.__r_.__value_.__l.__size_ - 1) == 48)
      {
        v295 = --cfa.__r_.__value_.__l.__size_;
LABEL_653:
        v296->__r_.__value_.__s.__data_[v295] = 0;
        continue;
      }

      break;
    }

    *&v981.__first_ = *&cfa.__r_.__value_.__l.__data_;
    v981.__end_ = cfa.__r_.__value_.__r.__words[2];
    memset(&cfa, 0, sizeof(cfa));
    while (2)
    {
      if ((SHIBYTE(v981.__end_) & 0x8000000000000000) == 0)
      {
        if (*(&v980 + SHIBYTE(v981.__end_)) != 46)
        {
          break;
        }

        v297 = (SHIBYTE(v981.__end_) - 1);
        HIBYTE(v981.__end_) = (HIBYTE(v981.__end_) - 1) & 0x7F;
        v298 = &v981;
        goto LABEL_660;
      }

      v298 = v981.__first_;
      if (v981.__first_->__r_.__value_.__s.__data_[v981.__begin_ - 1] == 46)
      {
        v297 = --v981.__begin_;
LABEL_660:
        v297->__r_.__value_.__s.__data_[v298] = 0;
        continue;
      }

      break;
    }

    __p = *&v981.__first_;
    end = v981.__end_;
    if (SHIBYTE(cfa.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(cfa.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(end) >= 0)
    {
      v299 = &__p;
    }

    else
    {
      v299 = __p;
    }

    if (SHIBYTE(end) >= 0)
    {
      v300 = HIBYTE(end);
    }

    else
    {
      v300 = *(&__p + 1);
    }

    v301 = std::string::append(&v974, v299, v300);
    v302 = *&v301->__r_.__value_.__l.__data_;
    v955.__r_.__value_.__r.__words[2] = v301->__r_.__value_.__r.__words[2];
    *&v955.__r_.__value_.__l.__data_ = v302;
    v301->__r_.__value_.__l.__size_ = 0;
    v301->__r_.__value_.__r.__words[2] = 0;
    v301->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(end) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v974.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v974.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v973.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v973.__r_.__value_.__l.__data_);
    }

    v303 = std::string::append(&v955, ",\n", 2uLL);
    v304 = *&v303->__r_.__value_.__l.__data_;
    v956.__r_.__value_.__r.__words[2] = v303->__r_.__value_.__r.__words[2];
    *&v956.__r_.__value_.__l.__data_ = v304;
    v303->__r_.__value_.__l.__size_ = 0;
    v303->__r_.__value_.__r.__words[2] = 0;
    v303->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&v973, "T_sett_mg");
    v305 = std::string::append(&v973, ": ", 2uLL);
    v306 = *&v305->__r_.__value_.__l.__data_;
    v974.__r_.__value_.__r.__words[2] = v305->__r_.__value_.__r.__words[2];
    *&v974.__r_.__value_.__l.__data_ = v306;
    v305->__r_.__value_.__l.__size_ = 0;
    v305->__r_.__value_.__r.__words[2] = 0;
    v305->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&cfa, v241);
    while (2)
    {
      if ((SHIBYTE(cfa.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
      {
        if (*(&v936 + SHIBYTE(cfa.__r_.__value_.__r.__words[2]) + 7) != 48)
        {
          break;
        }

        v307 = SHIBYTE(cfa.__r_.__value_.__r.__words[2]) - 1;
        *(&cfa.__r_.__value_.__s + 23) = (*(&cfa.__r_.__value_.__s + 23) - 1) & 0x7F;
        v308 = &cfa;
        goto LABEL_681;
      }

      v308 = cfa.__r_.__value_.__r.__words[0];
      if (*(cfa.__r_.__value_.__r.__words[0] + cfa.__r_.__value_.__l.__size_ - 1) == 48)
      {
        v307 = --cfa.__r_.__value_.__l.__size_;
LABEL_681:
        v308->__r_.__value_.__s.__data_[v307] = 0;
        continue;
      }

      break;
    }

    *&v981.__first_ = *&cfa.__r_.__value_.__l.__data_;
    v981.__end_ = cfa.__r_.__value_.__r.__words[2];
    memset(&cfa, 0, sizeof(cfa));
    while (2)
    {
      if ((SHIBYTE(v981.__end_) & 0x8000000000000000) == 0)
      {
        if (*(&v980 + SHIBYTE(v981.__end_)) != 46)
        {
          break;
        }

        v309 = (SHIBYTE(v981.__end_) - 1);
        HIBYTE(v981.__end_) = (HIBYTE(v981.__end_) - 1) & 0x7F;
        v310 = &v981;
        goto LABEL_688;
      }

      v310 = v981.__first_;
      if (v981.__first_->__r_.__value_.__s.__data_[v981.__begin_ - 1] == 46)
      {
        v309 = --v981.__begin_;
LABEL_688:
        v309->__r_.__value_.__s.__data_[v310] = 0;
        continue;
      }

      break;
    }

    __p = *&v981.__first_;
    end = v981.__end_;
    if (SHIBYTE(cfa.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(cfa.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(end) >= 0)
    {
      v311 = &__p;
    }

    else
    {
      v311 = __p;
    }

    if (SHIBYTE(end) >= 0)
    {
      v312 = HIBYTE(end);
    }

    else
    {
      v312 = *(&__p + 1);
    }

    v313 = std::string::append(&v974, v311, v312);
    v314 = *&v313->__r_.__value_.__l.__data_;
    v958.__r_.__value_.__r.__words[2] = v313->__r_.__value_.__r.__words[2];
    *&v958.__r_.__value_.__l.__data_ = v314;
    v313->__r_.__value_.__l.__size_ = 0;
    v313->__r_.__value_.__r.__words[2] = 0;
    v313->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(end) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v974.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v974.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v973.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v973.__r_.__value_.__l.__data_);
    }

    v315 = std::string::append(&v958, ",\n", 2uLL);
    v316 = *&v315->__r_.__value_.__l.__data_;
    v959.__r_.__value_.__r.__words[2] = v315->__r_.__value_.__r.__words[2];
    *&v959.__r_.__value_.__l.__data_ = v316;
    v315->__r_.__value_.__l.__size_ = 0;
    v315->__r_.__value_.__r.__words[2] = 0;
    v315->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&v973, "tau_Tmg");
    v317 = std::string::append(&v973, ": ", 2uLL);
    v318 = *&v317->__r_.__value_.__l.__data_;
    v974.__r_.__value_.__r.__words[2] = v317->__r_.__value_.__r.__words[2];
    *&v974.__r_.__value_.__l.__data_ = v318;
    v317->__r_.__value_.__l.__size_ = 0;
    v317->__r_.__value_.__r.__words[2] = 0;
    v317->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&cfa, v244);
    while (2)
    {
      if ((SHIBYTE(cfa.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
      {
        if (*(&v936 + SHIBYTE(cfa.__r_.__value_.__r.__words[2]) + 7) != 48)
        {
          break;
        }

        v319 = SHIBYTE(cfa.__r_.__value_.__r.__words[2]) - 1;
        *(&cfa.__r_.__value_.__s + 23) = (*(&cfa.__r_.__value_.__s + 23) - 1) & 0x7F;
        v320 = &cfa;
        goto LABEL_709;
      }

      v320 = cfa.__r_.__value_.__r.__words[0];
      if (*(cfa.__r_.__value_.__r.__words[0] + cfa.__r_.__value_.__l.__size_ - 1) == 48)
      {
        v319 = --cfa.__r_.__value_.__l.__size_;
LABEL_709:
        v320->__r_.__value_.__s.__data_[v319] = 0;
        continue;
      }

      break;
    }

    *&v981.__first_ = *&cfa.__r_.__value_.__l.__data_;
    v981.__end_ = cfa.__r_.__value_.__r.__words[2];
    memset(&cfa, 0, sizeof(cfa));
    while (2)
    {
      if ((SHIBYTE(v981.__end_) & 0x8000000000000000) == 0)
      {
        if (*(&v980 + SHIBYTE(v981.__end_)) != 46)
        {
          break;
        }

        v321 = (SHIBYTE(v981.__end_) - 1);
        HIBYTE(v981.__end_) = (HIBYTE(v981.__end_) - 1) & 0x7F;
        v322 = &v981;
        goto LABEL_716;
      }

      v322 = v981.__first_;
      if (v981.__first_->__r_.__value_.__s.__data_[v981.__begin_ - 1] == 46)
      {
        v321 = --v981.__begin_;
LABEL_716:
        v321->__r_.__value_.__s.__data_[v322] = 0;
        continue;
      }

      break;
    }

    __p = *&v981.__first_;
    end = v981.__end_;
    if (SHIBYTE(cfa.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(cfa.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(end) >= 0)
    {
      v323 = &__p;
    }

    else
    {
      v323 = __p;
    }

    if (SHIBYTE(end) >= 0)
    {
      v324 = HIBYTE(end);
    }

    else
    {
      v324 = *(&__p + 1);
    }

    v325 = std::string::append(&v974, v323, v324);
    v326 = *&v325->__r_.__value_.__l.__data_;
    v961.__r_.__value_.__r.__words[2] = v325->__r_.__value_.__r.__words[2];
    *&v961.__r_.__value_.__l.__data_ = v326;
    v325->__r_.__value_.__l.__size_ = 0;
    v325->__r_.__value_.__r.__words[2] = 0;
    v325->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(end) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v974.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v974.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v973.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v973.__r_.__value_.__l.__data_);
    }

    v327 = std::string::append(&v961, ",\n", 2uLL);
    v328 = *&v327->__r_.__value_.__l.__data_;
    v963.__r_.__value_.__r.__words[2] = v327->__r_.__value_.__r.__words[2];
    *&v963.__r_.__value_.__l.__data_ = v328;
    v327->__r_.__value_.__l.__size_ = 0;
    v327->__r_.__value_.__r.__words[2] = 0;
    v327->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&v973, "ThermalFFSpeedupFactor");
    v329 = std::string::append(&v973, ": ", 2uLL);
    v330 = *&v329->__r_.__value_.__l.__data_;
    v974.__r_.__value_.__r.__words[2] = v329->__r_.__value_.__r.__words[2];
    *&v974.__r_.__value_.__l.__data_ = v330;
    v329->__r_.__value_.__l.__size_ = 0;
    v329->__r_.__value_.__r.__words[2] = 0;
    v329->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&cfa, v243);
    while (2)
    {
      if ((SHIBYTE(cfa.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
      {
        if (*(&v936 + SHIBYTE(cfa.__r_.__value_.__r.__words[2]) + 7) != 48)
        {
          break;
        }

        v331 = SHIBYTE(cfa.__r_.__value_.__r.__words[2]) - 1;
        *(&cfa.__r_.__value_.__s + 23) = (*(&cfa.__r_.__value_.__s + 23) - 1) & 0x7F;
        v332 = &cfa;
        goto LABEL_737;
      }

      v332 = cfa.__r_.__value_.__r.__words[0];
      if (*(cfa.__r_.__value_.__r.__words[0] + cfa.__r_.__value_.__l.__size_ - 1) == 48)
      {
        v331 = --cfa.__r_.__value_.__l.__size_;
LABEL_737:
        v332->__r_.__value_.__s.__data_[v331] = 0;
        continue;
      }

      break;
    }

    *&v981.__first_ = *&cfa.__r_.__value_.__l.__data_;
    v981.__end_ = cfa.__r_.__value_.__r.__words[2];
    memset(&cfa, 0, sizeof(cfa));
    while (2)
    {
      if ((SHIBYTE(v981.__end_) & 0x8000000000000000) == 0)
      {
        if (*(&v980 + SHIBYTE(v981.__end_)) != 46)
        {
          break;
        }

        v333 = (SHIBYTE(v981.__end_) - 1);
        HIBYTE(v981.__end_) = (HIBYTE(v981.__end_) - 1) & 0x7F;
        v334 = &v981;
        goto LABEL_744;
      }

      v334 = v981.__first_;
      if (v981.__first_->__r_.__value_.__s.__data_[v981.__begin_ - 1] == 46)
      {
        v333 = --v981.__begin_;
LABEL_744:
        v333->__r_.__value_.__s.__data_[v334] = 0;
        continue;
      }

      break;
    }

    __p = *&v981.__first_;
    end = v981.__end_;
    if (SHIBYTE(cfa.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(cfa.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(end) >= 0)
    {
      v335 = &__p;
    }

    else
    {
      v335 = __p;
    }

    if (SHIBYTE(end) >= 0)
    {
      v336 = HIBYTE(end);
    }

    else
    {
      v336 = *(&__p + 1);
    }

    v337 = std::string::append(&v974, v335, v336);
    v338 = *&v337->__r_.__value_.__l.__data_;
    v965.__r_.__value_.__r.__words[2] = v337->__r_.__value_.__r.__words[2];
    *&v965.__r_.__value_.__l.__data_ = v338;
    v337->__r_.__value_.__l.__size_ = 0;
    v337->__r_.__value_.__r.__words[2] = 0;
    v337->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(end) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v974.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v974.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v973.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v973.__r_.__value_.__l.__data_);
    }

    v339 = std::string::append(&v965, ",\n", 2uLL);
    v340 = *&v339->__r_.__value_.__l.__data_;
    v966.__r_.__value_.__r.__words[2] = v339->__r_.__value_.__r.__words[2];
    *&v966.__r_.__value_.__l.__data_ = v340;
    v339->__r_.__value_.__l.__size_ = 0;
    v339->__r_.__value_.__r.__words[2] = 0;
    v339->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&v973, "HardTempLimitHeadroom");
    v341 = std::string::append(&v973, ": ", 2uLL);
    v342 = *&v341->__r_.__value_.__l.__data_;
    v974.__r_.__value_.__r.__words[2] = v341->__r_.__value_.__r.__words[2];
    *&v974.__r_.__value_.__l.__data_ = v342;
    v341->__r_.__value_.__l.__size_ = 0;
    v341->__r_.__value_.__r.__words[2] = 0;
    v341->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&cfa, v930);
    while (2)
    {
      if ((SHIBYTE(cfa.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
      {
        if (*(&v936 + SHIBYTE(cfa.__r_.__value_.__r.__words[2]) + 7) != 48)
        {
          break;
        }

        v343 = SHIBYTE(cfa.__r_.__value_.__r.__words[2]) - 1;
        *(&cfa.__r_.__value_.__s + 23) = (*(&cfa.__r_.__value_.__s + 23) - 1) & 0x7F;
        v344 = &cfa;
        goto LABEL_765;
      }

      v344 = cfa.__r_.__value_.__r.__words[0];
      if (*(cfa.__r_.__value_.__r.__words[0] + cfa.__r_.__value_.__l.__size_ - 1) == 48)
      {
        v343 = --cfa.__r_.__value_.__l.__size_;
LABEL_765:
        v344->__r_.__value_.__s.__data_[v343] = 0;
        continue;
      }

      break;
    }

    *&v981.__first_ = *&cfa.__r_.__value_.__l.__data_;
    v981.__end_ = cfa.__r_.__value_.__r.__words[2];
    memset(&cfa, 0, sizeof(cfa));
    while (2)
    {
      if ((SHIBYTE(v981.__end_) & 0x8000000000000000) == 0)
      {
        if (*(&v980 + SHIBYTE(v981.__end_)) != 46)
        {
          break;
        }

        v345 = (SHIBYTE(v981.__end_) - 1);
        HIBYTE(v981.__end_) = (HIBYTE(v981.__end_) - 1) & 0x7F;
        v346 = &v981;
        goto LABEL_772;
      }

      v346 = v981.__first_;
      if (v981.__first_->__r_.__value_.__s.__data_[v981.__begin_ - 1] == 46)
      {
        v345 = --v981.__begin_;
LABEL_772:
        v345->__r_.__value_.__s.__data_[v346] = 0;
        continue;
      }

      break;
    }

    __p = *&v981.__first_;
    end = v981.__end_;
    if (SHIBYTE(cfa.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(cfa.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(end) >= 0)
    {
      v347 = &__p;
    }

    else
    {
      v347 = __p;
    }

    if (SHIBYTE(end) >= 0)
    {
      v348 = HIBYTE(end);
    }

    else
    {
      v348 = *(&__p + 1);
    }

    v349 = std::string::append(&v974, v347, v348);
    v350 = *&v349->__r_.__value_.__l.__data_;
    v969.__r_.__value_.__r.__words[2] = v349->__r_.__value_.__r.__words[2];
    *&v969.__r_.__value_.__l.__data_ = v350;
    v349->__r_.__value_.__l.__size_ = 0;
    v349->__r_.__value_.__r.__words[2] = 0;
    v349->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(end) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v974.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v974.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v973.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v973.__r_.__value_.__l.__data_);
    }

    v351 = std::string::append(&v969, ",\n", 2uLL);
    v352 = *&v351->__r_.__value_.__l.__data_;
    v970.__r_.__value_.__r.__words[2] = v351->__r_.__value_.__r.__words[2];
    *&v970.__r_.__value_.__l.__data_ = v352;
    v351->__r_.__value_.__l.__size_ = 0;
    v351->__r_.__value_.__r.__words[2] = 0;
    v351->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&v973, "TemperatureLimit");
    v353 = std::string::append(&v973, ": ", 2uLL);
    v354 = *&v353->__r_.__value_.__l.__data_;
    v974.__r_.__value_.__r.__words[2] = v353->__r_.__value_.__r.__words[2];
    *&v974.__r_.__value_.__l.__data_ = v354;
    v353->__r_.__value_.__l.__size_ = 0;
    v353->__r_.__value_.__r.__words[2] = 0;
    v353->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&cfa, v926);
    while (2)
    {
      if ((SHIBYTE(cfa.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
      {
        if (*(&v936 + SHIBYTE(cfa.__r_.__value_.__r.__words[2]) + 7) != 48)
        {
          break;
        }

        v355 = SHIBYTE(cfa.__r_.__value_.__r.__words[2]) - 1;
        *(&cfa.__r_.__value_.__s + 23) = (*(&cfa.__r_.__value_.__s + 23) - 1) & 0x7F;
        v356 = &cfa;
        goto LABEL_793;
      }

      v356 = cfa.__r_.__value_.__r.__words[0];
      if (*(cfa.__r_.__value_.__r.__words[0] + cfa.__r_.__value_.__l.__size_ - 1) == 48)
      {
        v355 = --cfa.__r_.__value_.__l.__size_;
LABEL_793:
        v356->__r_.__value_.__s.__data_[v355] = 0;
        continue;
      }

      break;
    }

    *&v981.__first_ = *&cfa.__r_.__value_.__l.__data_;
    v981.__end_ = cfa.__r_.__value_.__r.__words[2];
    memset(&cfa, 0, sizeof(cfa));
    while (2)
    {
      if ((SHIBYTE(v981.__end_) & 0x8000000000000000) == 0)
      {
        if (*(&v980 + SHIBYTE(v981.__end_)) != 46)
        {
          break;
        }

        v357 = (SHIBYTE(v981.__end_) - 1);
        HIBYTE(v981.__end_) = (HIBYTE(v981.__end_) - 1) & 0x7F;
        v358 = &v981;
        goto LABEL_800;
      }

      v358 = v981.__first_;
      if (v981.__first_->__r_.__value_.__s.__data_[v981.__begin_ - 1] == 46)
      {
        v357 = --v981.__begin_;
LABEL_800:
        v357->__r_.__value_.__s.__data_[v358] = 0;
        continue;
      }

      break;
    }

    __p = *&v981.__first_;
    end = v981.__end_;
    if (SHIBYTE(cfa.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(cfa.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(end) >= 0)
    {
      v359 = &__p;
    }

    else
    {
      v359 = __p;
    }

    if (SHIBYTE(end) >= 0)
    {
      v360 = HIBYTE(end);
    }

    else
    {
      v360 = *(&__p + 1);
    }

    v361 = std::string::append(&v974, v359, v360);
    v362 = *&v361->__r_.__value_.__l.__data_;
    v968 = v361->__r_.__value_.__r.__words[2];
    v967 = v362;
    v361->__r_.__value_.__l.__size_ = 0;
    v361->__r_.__value_.__r.__words[2] = 0;
    v361->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(end) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v974.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v974.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v973.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v973.__r_.__value_.__l.__data_);
    }

    if (v968 >= 0)
    {
      v363 = &v967;
    }

    else
    {
      v363 = v967;
    }

    if (v968 >= 0)
    {
      v364 = HIBYTE(v968);
    }

    else
    {
      v364 = *(&v967 + 1);
    }

    v365 = std::string::append(&v970, v363, v364);
    v366 = *&v365->__r_.__value_.__l.__data_;
    v964.__r_.__value_.__r.__words[2] = v365->__r_.__value_.__r.__words[2];
    *&v964.__r_.__value_.__l.__data_ = v366;
    v365->__r_.__value_.__l.__size_ = 0;
    v365->__r_.__value_.__r.__words[2] = 0;
    v365->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v968) < 0)
    {
      operator delete(v967);
    }

    if (SHIBYTE(v970.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v970.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v969.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v969.__r_.__value_.__l.__data_);
    }

    if ((v964.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v367 = &v964;
    }

    else
    {
      v367 = v964.__r_.__value_.__r.__words[0];
    }

    if ((v964.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v368 = HIBYTE(v964.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v368 = v964.__r_.__value_.__l.__size_;
    }

    v369 = std::string::append(&v966, v367, v368);
    v370 = *&v369->__r_.__value_.__l.__data_;
    v960.__r_.__value_.__r.__words[2] = v369->__r_.__value_.__r.__words[2];
    *&v960.__r_.__value_.__l.__data_ = v370;
    v369->__r_.__value_.__l.__size_ = 0;
    v369->__r_.__value_.__r.__words[2] = 0;
    v369->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v964.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v964.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v966.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v966.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v965.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v965.__r_.__value_.__l.__data_);
    }

    if ((v960.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v371 = &v960;
    }

    else
    {
      v371 = v960.__r_.__value_.__r.__words[0];
    }

    if ((v960.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v372 = HIBYTE(v960.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v372 = v960.__r_.__value_.__l.__size_;
    }

    v373 = std::string::append(&v963, v371, v372);
    v374 = *&v373->__r_.__value_.__l.__data_;
    v957.__r_.__value_.__r.__words[2] = v373->__r_.__value_.__r.__words[2];
    *&v957.__r_.__value_.__l.__data_ = v374;
    v373->__r_.__value_.__l.__size_ = 0;
    v373->__r_.__value_.__r.__words[2] = 0;
    v373->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v960.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v960.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v963.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v963.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v961.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v961.__r_.__value_.__l.__data_);
    }

    if ((v957.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v375 = &v957;
    }

    else
    {
      v375 = v957.__r_.__value_.__r.__words[0];
    }

    if ((v957.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v376 = HIBYTE(v957.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v376 = v957.__r_.__value_.__l.__size_;
    }

    v377 = std::string::append(&v959, v375, v376);
    v378 = *&v377->__r_.__value_.__l.__data_;
    v954.__r_.__value_.__r.__words[2] = v377->__r_.__value_.__r.__words[2];
    *&v954.__r_.__value_.__l.__data_ = v378;
    v377->__r_.__value_.__l.__size_ = 0;
    v377->__r_.__value_.__r.__words[2] = 0;
    v377->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v957.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v957.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v959.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v959.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v958.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v958.__r_.__value_.__l.__data_);
    }

    if ((v954.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v379 = &v954;
    }

    else
    {
      v379 = v954.__r_.__value_.__r.__words[0];
    }

    if ((v954.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v380 = HIBYTE(v954.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v380 = v954.__r_.__value_.__l.__size_;
    }

    v381 = std::string::append(&v956, v379, v380);
    v382 = *&v381->__r_.__value_.__l.__data_;
    v951.__r_.__value_.__r.__words[2] = v381->__r_.__value_.__r.__words[2];
    *&v951.__r_.__value_.__l.__data_ = v382;
    v381->__r_.__value_.__l.__size_ = 0;
    v381->__r_.__value_.__r.__words[2] = 0;
    v381->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v954.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v954.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v956.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v956.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v955.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v955.__r_.__value_.__l.__data_);
    }

    if ((v951.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v383 = &v951;
    }

    else
    {
      v383 = v951.__r_.__value_.__r.__words[0];
    }

    if ((v951.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v384 = HIBYTE(v951.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v384 = v951.__r_.__value_.__l.__size_;
    }

    v385 = std::string::append(&v953, v383, v384);
    v386 = *&v385->__r_.__value_.__l.__data_;
    v948.__r_.__value_.__r.__words[2] = v385->__r_.__value_.__r.__words[2];
    *&v948.__r_.__value_.__l.__data_ = v386;
    v385->__r_.__value_.__l.__size_ = 0;
    v385->__r_.__value_.__r.__words[2] = 0;
    v385->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v951.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v951.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v953.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v953.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v952.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v952.__r_.__value_.__l.__data_);
    }

    if ((v948.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v387 = &v948;
    }

    else
    {
      v387 = v948.__r_.__value_.__r.__words[0];
    }

    if ((v948.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v388 = HIBYTE(v948.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v388 = v948.__r_.__value_.__l.__size_;
    }

    v389 = std::string::append(&v950, v387, v388);
    v390 = *&v389->__r_.__value_.__l.__data_;
    v945 = v389->__r_.__value_.__r.__words[2];
    v944 = v390;
    v389->__r_.__value_.__l.__size_ = 0;
    v389->__r_.__value_.__r.__words[2] = 0;
    v389->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v948.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v948.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v950.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v950.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v949.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v949.__r_.__value_.__l.__data_);
    }

    if (v945 >= 0)
    {
      v391 = &v944;
    }

    else
    {
      v391 = v944;
    }

    if (v945 >= 0)
    {
      v392 = HIBYTE(v945);
    }

    else
    {
      v392 = *(&v944 + 1);
    }

    v393 = std::string::append(&v947, v391, v392);
    v394 = *&v393->__r_.__value_.__l.__data_;
    v941 = v393->__r_.__value_.__r.__words[2];
    *v940 = v394;
    v393->__r_.__value_.__l.__size_ = 0;
    v393->__r_.__value_.__r.__words[2] = 0;
    v393->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v945) < 0)
    {
      operator delete(v944);
    }

    if (SHIBYTE(v947.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v947.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v946.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v946.__r_.__value_.__l.__data_);
    }

    if (v941 >= 0)
    {
      v395 = v940;
    }

    else
    {
      v395 = v940[0];
    }

    if (v941 >= 0)
    {
      v396 = HIBYTE(v941);
    }

    else
    {
      v396 = v940[1];
    }

    v397 = std::string::append(&v943, v395, v396);
    v934 = *v397;
    v397->__r_.__value_.__l.__size_ = 0;
    v397->__r_.__value_.__r.__words[2] = 0;
    v397->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v941) < 0)
    {
      operator delete(v940[0]);
    }

    if (SHIBYTE(v943.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v943.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v942.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v942.__r_.__value_.__l.__data_);
    }

    AUT::GroupLines(&v935, &v934);
    v398 = &v935;
    if ((v935.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v398 = v935.__r_.__value_.__r.__words[0];
    }

    *buf = 136315906;
    *&buf[4] = "AUSpeakerProtectionV3.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 3857;
    *&buf[18] = 1024;
    *&buf[20] = v236;
    *&buf[24] = 2080;
    *&buf[26] = v398;
    _os_log_impl(&dword_1DDB85000, v235, OS_LOG_TYPE_DEBUG, "%25s:%-5d Applying OL thermal params to channel %i:%s", buf, 0x22u);
    if (SHIBYTE(v935.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v935.__r_.__value_.__l.__data_);
    }

    v41 = v232;
    if (SHIBYTE(v934.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v934.__r_.__value_.__l.__data_);
    }

LABEL_929:
    v400 = *(v233 + 1);
    v399 = *(v233 + 2);
    v402 = *(v233 + 3);
    v401 = *(v233 + 4);
    v404 = *(v233 + 5);
    v403 = *(v233 + 6);
    v406 = *(v233 + 7);
    v405 = *(v233 + 8);
    v931 = *(v233 + 9);
    v927 = *(v233 + 10);
    Element = ausdk::AUScope::GetElement((this + 792), *v233);
    ausdk::AUElement::SetParameter(Element, 0xAu, v400);
    ausdk::AUElement::SetParameter(Element, 9u, v399);
    ausdk::AUElement::SetParameter(Element, 0xBu, v402);
    ausdk::AUElement::SetParameter(Element, 2u, v401);
    ausdk::AUElement::SetParameter(Element, 4u, v404);
    ausdk::AUElement::SetParameter(Element, 3u, v403);
    ausdk::AUElement::SetParameter(Element, 5u, v406);
    ausdk::AUElement::SetParameter(Element, 6u, v405);
    ausdk::AUElement::SetParameter(Element, 1u, v931);
    ausdk::AUElement::SetParameter(Element, 0, v927);
    v233 += 11;
    if (v233 != v9)
    {
      continue;
    }

    break;
  }

LABEL_930:
  if (v920 == v41)
  {
    goto LABEL_1252;
  }

  v408 = v920;
  while (2)
  {
    v409 = spp3Subsystem();
    if (v409)
    {
      v410 = *v409;
      if (!*v409)
      {
        goto LABEL_1251;
      }
    }

    else
    {
      v410 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v410, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_1251;
    }

    v411 = *v408;
    v413 = *(v408 + 1);
    v412 = *(v408 + 2);
    v415 = *(v408 + 3);
    v414 = *(v408 + 4);
    v417 = *(v408 + 5);
    v416 = *(v408 + 6);
    v419 = *(v408 + 7);
    v418 = *(v408 + 8);
    std::string::basic_string[abi:ne200100]<0>(&v973, "Q_d");
    v420 = std::string::append(&v973, ": ", 2uLL);
    v421 = *&v420->__r_.__value_.__l.__data_;
    v974.__r_.__value_.__r.__words[2] = v420->__r_.__value_.__r.__words[2];
    *&v974.__r_.__value_.__l.__data_ = v421;
    v420->__r_.__value_.__l.__size_ = 0;
    v420->__r_.__value_.__r.__words[2] = 0;
    v420->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&cfa, v413);
    while (2)
    {
      if ((SHIBYTE(cfa.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
      {
        if (*(&v936 + SHIBYTE(cfa.__r_.__value_.__r.__words[2]) + 7) != 48)
        {
          break;
        }

        v422 = SHIBYTE(cfa.__r_.__value_.__r.__words[2]) - 1;
        *(&cfa.__r_.__value_.__s + 23) = (*(&cfa.__r_.__value_.__s + 23) - 1) & 0x7F;
        v423 = &cfa;
        goto LABEL_943;
      }

      v423 = cfa.__r_.__value_.__r.__words[0];
      if (*(cfa.__r_.__value_.__r.__words[0] + cfa.__r_.__value_.__l.__size_ - 1) == 48)
      {
        v422 = --cfa.__r_.__value_.__l.__size_;
LABEL_943:
        v423->__r_.__value_.__s.__data_[v422] = 0;
        continue;
      }

      break;
    }

    *&v981.__first_ = *&cfa.__r_.__value_.__l.__data_;
    v981.__end_ = cfa.__r_.__value_.__r.__words[2];
    memset(&cfa, 0, sizeof(cfa));
    while (2)
    {
      if ((SHIBYTE(v981.__end_) & 0x8000000000000000) == 0)
      {
        if (*(&v980 + SHIBYTE(v981.__end_)) != 46)
        {
          break;
        }

        v424 = (SHIBYTE(v981.__end_) - 1);
        HIBYTE(v981.__end_) = (HIBYTE(v981.__end_) - 1) & 0x7F;
        v425 = &v981;
        goto LABEL_950;
      }

      v425 = v981.__first_;
      if (v981.__first_->__r_.__value_.__s.__data_[v981.__begin_ - 1] == 46)
      {
        v424 = --v981.__begin_;
LABEL_950:
        v424->__r_.__value_.__s.__data_[v425] = 0;
        continue;
      }

      break;
    }

    __p = *&v981.__first_;
    end = v981.__end_;
    if (SHIBYTE(cfa.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(cfa.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(end) >= 0)
    {
      v426 = &__p;
    }

    else
    {
      v426 = __p;
    }

    if (SHIBYTE(end) >= 0)
    {
      v427 = HIBYTE(end);
    }

    else
    {
      v427 = *(&__p + 1);
    }

    v428 = std::string::append(&v974, v426, v427);
    v429 = *&v428->__r_.__value_.__l.__data_;
    v949.__r_.__value_.__r.__words[2] = v428->__r_.__value_.__r.__words[2];
    *&v949.__r_.__value_.__l.__data_ = v429;
    v428->__r_.__value_.__l.__size_ = 0;
    v428->__r_.__value_.__r.__words[2] = 0;
    v428->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(end) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v974.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v974.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v973.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v973.__r_.__value_.__l.__data_);
    }

    v430 = std::string::append(&v949, ",\n", 2uLL);
    v431 = *&v430->__r_.__value_.__l.__data_;
    v950.__r_.__value_.__r.__words[2] = v430->__r_.__value_.__r.__words[2];
    *&v950.__r_.__value_.__l.__data_ = v431;
    v430->__r_.__value_.__l.__size_ = 0;
    v430->__r_.__value_.__r.__words[2] = 0;
    v430->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&v973, "kt");
    v432 = std::string::append(&v973, ": ", 2uLL);
    v433 = *&v432->__r_.__value_.__l.__data_;
    v974.__r_.__value_.__r.__words[2] = v432->__r_.__value_.__r.__words[2];
    *&v974.__r_.__value_.__l.__data_ = v433;
    v432->__r_.__value_.__l.__size_ = 0;
    v432->__r_.__value_.__r.__words[2] = 0;
    v432->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&cfa, v412);
    while (2)
    {
      if ((SHIBYTE(cfa.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
      {
        if (*(&v936 + SHIBYTE(cfa.__r_.__value_.__r.__words[2]) + 7) != 48)
        {
          break;
        }

        v434 = SHIBYTE(cfa.__r_.__value_.__r.__words[2]) - 1;
        *(&cfa.__r_.__value_.__s + 23) = (*(&cfa.__r_.__value_.__s + 23) - 1) & 0x7F;
        v435 = &cfa;
        goto LABEL_971;
      }

      v435 = cfa.__r_.__value_.__r.__words[0];
      if (*(cfa.__r_.__value_.__r.__words[0] + cfa.__r_.__value_.__l.__size_ - 1) == 48)
      {
        v434 = --cfa.__r_.__value_.__l.__size_;
LABEL_971:
        v435->__r_.__value_.__s.__data_[v434] = 0;
        continue;
      }

      break;
    }

    *&v981.__first_ = *&cfa.__r_.__value_.__l.__data_;
    v981.__end_ = cfa.__r_.__value_.__r.__words[2];
    memset(&cfa, 0, sizeof(cfa));
    while (2)
    {
      if ((SHIBYTE(v981.__end_) & 0x8000000000000000) == 0)
      {
        if (*(&v980 + SHIBYTE(v981.__end_)) != 46)
        {
          break;
        }

        v436 = (SHIBYTE(v981.__end_) - 1);
        HIBYTE(v981.__end_) = (HIBYTE(v981.__end_) - 1) & 0x7F;
        v437 = &v981;
        goto LABEL_978;
      }

      v437 = v981.__first_;
      if (v981.__first_->__r_.__value_.__s.__data_[v981.__begin_ - 1] == 46)
      {
        v436 = --v981.__begin_;
LABEL_978:
        v436->__r_.__value_.__s.__data_[v437] = 0;
        continue;
      }

      break;
    }

    __p = *&v981.__first_;
    end = v981.__end_;
    if (SHIBYTE(cfa.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(cfa.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(end) >= 0)
    {
      v438 = &__p;
    }

    else
    {
      v438 = __p;
    }

    if (SHIBYTE(end) >= 0)
    {
      v439 = HIBYTE(end);
    }

    else
    {
      v439 = *(&__p + 1);
    }

    v440 = std::string::append(&v974, v438, v439);
    v441 = *&v440->__r_.__value_.__l.__data_;
    v952.__r_.__value_.__r.__words[2] = v440->__r_.__value_.__r.__words[2];
    *&v952.__r_.__value_.__l.__data_ = v441;
    v440->__r_.__value_.__l.__size_ = 0;
    v440->__r_.__value_.__r.__words[2] = 0;
    v440->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(end) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v974.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v974.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v973.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v973.__r_.__value_.__l.__data_);
    }

    v442 = std::string::append(&v952, ",\n", 2uLL);
    v443 = *&v442->__r_.__value_.__l.__data_;
    v953.__r_.__value_.__r.__words[2] = v442->__r_.__value_.__r.__words[2];
    *&v953.__r_.__value_.__l.__data_ = v443;
    v442->__r_.__value_.__l.__size_ = 0;
    v442->__r_.__value_.__r.__words[2] = 0;
    v442->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&v973, "ct");
    v444 = std::string::append(&v973, ": ", 2uLL);
    v445 = *&v444->__r_.__value_.__l.__data_;
    v974.__r_.__value_.__r.__words[2] = v444->__r_.__value_.__r.__words[2];
    *&v974.__r_.__value_.__l.__data_ = v445;
    v444->__r_.__value_.__l.__size_ = 0;
    v444->__r_.__value_.__r.__words[2] = 0;
    v444->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&cfa, v415);
    while (2)
    {
      if ((SHIBYTE(cfa.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
      {
        if (*(&v936 + SHIBYTE(cfa.__r_.__value_.__r.__words[2]) + 7) != 48)
        {
          break;
        }

        v446 = SHIBYTE(cfa.__r_.__value_.__r.__words[2]) - 1;
        *(&cfa.__r_.__value_.__s + 23) = (*(&cfa.__r_.__value_.__s + 23) - 1) & 0x7F;
        v447 = &cfa;
        goto LABEL_999;
      }

      v447 = cfa.__r_.__value_.__r.__words[0];
      if (*(cfa.__r_.__value_.__r.__words[0] + cfa.__r_.__value_.__l.__size_ - 1) == 48)
      {
        v446 = --cfa.__r_.__value_.__l.__size_;
LABEL_999:
        v447->__r_.__value_.__s.__data_[v446] = 0;
        continue;
      }

      break;
    }

    *&v981.__first_ = *&cfa.__r_.__value_.__l.__data_;
    v981.__end_ = cfa.__r_.__value_.__r.__words[2];
    memset(&cfa, 0, sizeof(cfa));
    while (2)
    {
      if ((SHIBYTE(v981.__end_) & 0x8000000000000000) == 0)
      {
        if (*(&v980 + SHIBYTE(v981.__end_)) != 46)
        {
          break;
        }

        v448 = (SHIBYTE(v981.__end_) - 1);
        HIBYTE(v981.__end_) = (HIBYTE(v981.__end_) - 1) & 0x7F;
        v449 = &v981;
        goto LABEL_1006;
      }

      v449 = v981.__first_;
      if (v981.__first_->__r_.__value_.__s.__data_[v981.__begin_ - 1] == 46)
      {
        v448 = --v981.__begin_;
LABEL_1006:
        v448->__r_.__value_.__s.__data_[v449] = 0;
        continue;
      }

      break;
    }

    __p = *&v981.__first_;
    end = v981.__end_;
    if (SHIBYTE(cfa.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(cfa.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(end) >= 0)
    {
      v450 = &__p;
    }

    else
    {
      v450 = __p;
    }

    if (SHIBYTE(end) >= 0)
    {
      v451 = HIBYTE(end);
    }

    else
    {
      v451 = *(&__p + 1);
    }

    v452 = std::string::append(&v974, v450, v451);
    v453 = *&v452->__r_.__value_.__l.__data_;
    v955.__r_.__value_.__r.__words[2] = v452->__r_.__value_.__r.__words[2];
    *&v955.__r_.__value_.__l.__data_ = v453;
    v452->__r_.__value_.__l.__size_ = 0;
    v452->__r_.__value_.__r.__words[2] = 0;
    v452->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(end) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v974.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v974.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v973.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v973.__r_.__value_.__l.__data_);
    }

    v454 = std::string::append(&v955, ",\n", 2uLL);
    v455 = *&v454->__r_.__value_.__l.__data_;
    v956.__r_.__value_.__r.__words[2] = v454->__r_.__value_.__r.__words[2];
    *&v956.__r_.__value_.__l.__data_ = v455;
    v454->__r_.__value_.__l.__size_ = 0;
    v454->__r_.__value_.__r.__words[2] = 0;
    v454->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&v973, "phi");
    v456 = std::string::append(&v973, ": ", 2uLL);
    v457 = *&v456->__r_.__value_.__l.__data_;
    v974.__r_.__value_.__r.__words[2] = v456->__r_.__value_.__r.__words[2];
    *&v974.__r_.__value_.__l.__data_ = v457;
    v456->__r_.__value_.__l.__size_ = 0;
    v456->__r_.__value_.__r.__words[2] = 0;
    v456->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&cfa, v414);
    while (2)
    {
      if ((SHIBYTE(cfa.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
      {
        if (*(&v936 + SHIBYTE(cfa.__r_.__value_.__r.__words[2]) + 7) != 48)
        {
          break;
        }

        v458 = SHIBYTE(cfa.__r_.__value_.__r.__words[2]) - 1;
        *(&cfa.__r_.__value_.__s + 23) = (*(&cfa.__r_.__value_.__s + 23) - 1) & 0x7F;
        v459 = &cfa;
        goto LABEL_1027;
      }

      v459 = cfa.__r_.__value_.__r.__words[0];
      if (*(cfa.__r_.__value_.__r.__words[0] + cfa.__r_.__value_.__l.__size_ - 1) == 48)
      {
        v458 = --cfa.__r_.__value_.__l.__size_;
LABEL_1027:
        v459->__r_.__value_.__s.__data_[v458] = 0;
        continue;
      }

      break;
    }

    *&v981.__first_ = *&cfa.__r_.__value_.__l.__data_;
    v981.__end_ = cfa.__r_.__value_.__r.__words[2];
    memset(&cfa, 0, sizeof(cfa));
    while (2)
    {
      if ((SHIBYTE(v981.__end_) & 0x8000000000000000) == 0)
      {
        if (*(&v980 + SHIBYTE(v981.__end_)) != 46)
        {
          break;
        }

        v460 = (SHIBYTE(v981.__end_) - 1);
        HIBYTE(v981.__end_) = (HIBYTE(v981.__end_) - 1) & 0x7F;
        v461 = &v981;
        goto LABEL_1034;
      }

      v461 = v981.__first_;
      if (v981.__first_->__r_.__value_.__s.__data_[v981.__begin_ - 1] == 46)
      {
        v460 = --v981.__begin_;
LABEL_1034:
        v460->__r_.__value_.__s.__data_[v461] = 0;
        continue;
      }

      break;
    }

    __p = *&v981.__first_;
    end = v981.__end_;
    if (SHIBYTE(cfa.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(cfa.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(end) >= 0)
    {
      v462 = &__p;
    }

    else
    {
      v462 = __p;
    }

    if (SHIBYTE(end) >= 0)
    {
      v463 = HIBYTE(end);
    }

    else
    {
      v463 = *(&__p + 1);
    }

    v464 = std::string::append(&v974, v462, v463);
    v465 = *&v464->__r_.__value_.__l.__data_;
    v958.__r_.__value_.__r.__words[2] = v464->__r_.__value_.__r.__words[2];
    *&v958.__r_.__value_.__l.__data_ = v465;
    v464->__r_.__value_.__l.__size_ = 0;
    v464->__r_.__value_.__r.__words[2] = 0;
    v464->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(end) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v974.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v974.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v973.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v973.__r_.__value_.__l.__data_);
    }

    v466 = std::string::append(&v958, ",\n", 2uLL);
    v467 = *&v466->__r_.__value_.__l.__data_;
    v959.__r_.__value_.__r.__words[2] = v466->__r_.__value_.__r.__words[2];
    *&v959.__r_.__value_.__l.__data_ = v467;
    v466->__r_.__value_.__l.__size_ = 0;
    v466->__r_.__value_.__r.__words[2] = 0;
    v466->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&v973, "x_lim");
    v468 = std::string::append(&v973, ": ", 2uLL);
    v469 = *&v468->__r_.__value_.__l.__data_;
    v974.__r_.__value_.__r.__words[2] = v468->__r_.__value_.__r.__words[2];
    *&v974.__r_.__value_.__l.__data_ = v469;
    v468->__r_.__value_.__l.__size_ = 0;
    v468->__r_.__value_.__r.__words[2] = 0;
    v468->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&cfa, v417);
    while (2)
    {
      if ((SHIBYTE(cfa.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
      {
        if (*(&v936 + SHIBYTE(cfa.__r_.__value_.__r.__words[2]) + 7) != 48)
        {
          break;
        }

        v470 = SHIBYTE(cfa.__r_.__value_.__r.__words[2]) - 1;
        *(&cfa.__r_.__value_.__s + 23) = (*(&cfa.__r_.__value_.__s + 23) - 1) & 0x7F;
        v471 = &cfa;
        goto LABEL_1055;
      }

      v471 = cfa.__r_.__value_.__r.__words[0];
      if (*(cfa.__r_.__value_.__r.__words[0] + cfa.__r_.__value_.__l.__size_ - 1) == 48)
      {
        v470 = --cfa.__r_.__value_.__l.__size_;
LABEL_1055:
        v471->__r_.__value_.__s.__data_[v470] = 0;
        continue;
      }

      break;
    }

    *&v981.__first_ = *&cfa.__r_.__value_.__l.__data_;
    v981.__end_ = cfa.__r_.__value_.__r.__words[2];
    memset(&cfa, 0, sizeof(cfa));
    while (2)
    {
      if ((SHIBYTE(v981.__end_) & 0x8000000000000000) == 0)
      {
        if (*(&v980 + SHIBYTE(v981.__end_)) != 46)
        {
          break;
        }

        v472 = (SHIBYTE(v981.__end_) - 1);
        HIBYTE(v981.__end_) = (HIBYTE(v981.__end_) - 1) & 0x7F;
        v473 = &v981;
        goto LABEL_1062;
      }

      v473 = v981.__first_;
      if (v981.__first_->__r_.__value_.__s.__data_[v981.__begin_ - 1] == 46)
      {
        v472 = --v981.__begin_;
LABEL_1062:
        v472->__r_.__value_.__s.__data_[v473] = 0;
        continue;
      }

      break;
    }

    __p = *&v981.__first_;
    end = v981.__end_;
    if (SHIBYTE(cfa.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(cfa.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(end) >= 0)
    {
      v474 = &__p;
    }

    else
    {
      v474 = __p;
    }

    if (SHIBYTE(end) >= 0)
    {
      v475 = HIBYTE(end);
    }

    else
    {
      v475 = *(&__p + 1);
    }

    v476 = std::string::append(&v974, v474, v475);
    v477 = *&v476->__r_.__value_.__l.__data_;
    v961.__r_.__value_.__r.__words[2] = v476->__r_.__value_.__r.__words[2];
    *&v961.__r_.__value_.__l.__data_ = v477;
    v476->__r_.__value_.__l.__size_ = 0;
    v476->__r_.__value_.__r.__words[2] = 0;
    v476->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(end) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v974.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v974.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v973.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v973.__r_.__value_.__l.__data_);
    }

    v478 = std::string::append(&v961, ",\n", 2uLL);
    v479 = *&v478->__r_.__value_.__l.__data_;
    v963.__r_.__value_.__r.__words[2] = v478->__r_.__value_.__r.__words[2];
    *&v963.__r_.__value_.__l.__data_ = v479;
    v478->__r_.__value_.__l.__size_ = 0;
    v478->__r_.__value_.__r.__words[2] = 0;
    v478->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&v973, "ag");
    v480 = std::string::append(&v973, ": ", 2uLL);
    v481 = *&v480->__r_.__value_.__l.__data_;
    v974.__r_.__value_.__r.__words[2] = v480->__r_.__value_.__r.__words[2];
    *&v974.__r_.__value_.__l.__data_ = v481;
    v480->__r_.__value_.__l.__size_ = 0;
    v480->__r_.__value_.__r.__words[2] = 0;
    v480->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&cfa, v416);
    while (2)
    {
      if ((SHIBYTE(cfa.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
      {
        if (*(&v936 + SHIBYTE(cfa.__r_.__value_.__r.__words[2]) + 7) != 48)
        {
          break;
        }

        v482 = SHIBYTE(cfa.__r_.__value_.__r.__words[2]) - 1;
        *(&cfa.__r_.__value_.__s + 23) = (*(&cfa.__r_.__value_.__s + 23) - 1) & 0x7F;
        v483 = &cfa;
        goto LABEL_1083;
      }

      v483 = cfa.__r_.__value_.__r.__words[0];
      if (*(cfa.__r_.__value_.__r.__words[0] + cfa.__r_.__value_.__l.__size_ - 1) == 48)
      {
        v482 = --cfa.__r_.__value_.__l.__size_;
LABEL_1083:
        v483->__r_.__value_.__s.__data_[v482] = 0;
        continue;
      }

      break;
    }

    *&v981.__first_ = *&cfa.__r_.__value_.__l.__data_;
    v981.__end_ = cfa.__r_.__value_.__r.__words[2];
    memset(&cfa, 0, sizeof(cfa));
    while (2)
    {
      if ((SHIBYTE(v981.__end_) & 0x8000000000000000) == 0)
      {
        if (*(&v980 + SHIBYTE(v981.__end_)) != 46)
        {
          break;
        }

        v484 = (SHIBYTE(v981.__end_) - 1);
        HIBYTE(v981.__end_) = (HIBYTE(v981.__end_) - 1) & 0x7F;
        v485 = &v981;
        goto LABEL_1090;
      }

      v485 = v981.__first_;
      if (v981.__first_->__r_.__value_.__s.__data_[v981.__begin_ - 1] == 46)
      {
        v484 = --v981.__begin_;
LABEL_1090:
        v484->__r_.__value_.__s.__data_[v485] = 0;
        continue;
      }

      break;
    }

    __p = *&v981.__first_;
    end = v981.__end_;
    if (SHIBYTE(cfa.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(cfa.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(end) >= 0)
    {
      v486 = &__p;
    }

    else
    {
      v486 = __p;
    }

    if (SHIBYTE(end) >= 0)
    {
      v487 = HIBYTE(end);
    }

    else
    {
      v487 = *(&__p + 1);
    }

    v488 = std::string::append(&v974, v486, v487);
    v489 = *&v488->__r_.__value_.__l.__data_;
    v965.__r_.__value_.__r.__words[2] = v488->__r_.__value_.__r.__words[2];
    *&v965.__r_.__value_.__l.__data_ = v489;
    v488->__r_.__value_.__l.__size_ = 0;
    v488->__r_.__value_.__r.__words[2] = 0;
    v488->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(end) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v974.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v974.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v973.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v973.__r_.__value_.__l.__data_);
    }

    v490 = std::string::append(&v965, ",\n", 2uLL);
    v491 = *&v490->__r_.__value_.__l.__data_;
    v966.__r_.__value_.__r.__words[2] = v490->__r_.__value_.__r.__words[2];
    *&v966.__r_.__value_.__l.__data_ = v491;
    v490->__r_.__value_.__l.__size_ = 0;
    v490->__r_.__value_.__r.__words[2] = 0;
    v490->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&v973, "mt");
    v492 = std::string::append(&v973, ": ", 2uLL);
    v493 = *&v492->__r_.__value_.__l.__data_;
    v974.__r_.__value_.__r.__words[2] = v492->__r_.__value_.__r.__words[2];
    *&v974.__r_.__value_.__l.__data_ = v493;
    v492->__r_.__value_.__l.__size_ = 0;
    v492->__r_.__value_.__r.__words[2] = 0;
    v492->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&cfa, v419);
    while (2)
    {
      if ((SHIBYTE(cfa.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
      {
        if (*(&v936 + SHIBYTE(cfa.__r_.__value_.__r.__words[2]) + 7) != 48)
        {
          break;
        }

        v494 = SHIBYTE(cfa.__r_.__value_.__r.__words[2]) - 1;
        *(&cfa.__r_.__value_.__s + 23) = (*(&cfa.__r_.__value_.__s + 23) - 1) & 0x7F;
        v495 = &cfa;
        goto LABEL_1111;
      }

      v495 = cfa.__r_.__value_.__r.__words[0];
      if (*(cfa.__r_.__value_.__r.__words[0] + cfa.__r_.__value_.__l.__size_ - 1) == 48)
      {
        v494 = --cfa.__r_.__value_.__l.__size_;
LABEL_1111:
        v495->__r_.__value_.__s.__data_[v494] = 0;
        continue;
      }

      break;
    }

    *&v981.__first_ = *&cfa.__r_.__value_.__l.__data_;
    v981.__end_ = cfa.__r_.__value_.__r.__words[2];
    memset(&cfa, 0, sizeof(cfa));
    while (2)
    {
      if ((SHIBYTE(v981.__end_) & 0x8000000000000000) == 0)
      {
        if (*(&v980 + SHIBYTE(v981.__end_)) != 46)
        {
          break;
        }

        v496 = (SHIBYTE(v981.__end_) - 1);
        HIBYTE(v981.__end_) = (HIBYTE(v981.__end_) - 1) & 0x7F;
        v497 = &v981;
        goto LABEL_1118;
      }

      v497 = v981.__first_;
      if (v981.__first_->__r_.__value_.__s.__data_[v981.__begin_ - 1] == 46)
      {
        v496 = --v981.__begin_;
LABEL_1118:
        v496->__r_.__value_.__s.__data_[v497] = 0;
        continue;
      }

      break;
    }

    __p = *&v981.__first_;
    end = v981.__end_;
    if (SHIBYTE(cfa.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(cfa.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(end) >= 0)
    {
      v498 = &__p;
    }

    else
    {
      v498 = __p;
    }

    if (SHIBYTE(end) >= 0)
    {
      v499 = HIBYTE(end);
    }

    else
    {
      v499 = *(&__p + 1);
    }

    v500 = std::string::append(&v974, v498, v499);
    v501 = *&v500->__r_.__value_.__l.__data_;
    v969.__r_.__value_.__r.__words[2] = v500->__r_.__value_.__r.__words[2];
    *&v969.__r_.__value_.__l.__data_ = v501;
    v500->__r_.__value_.__l.__size_ = 0;
    v500->__r_.__value_.__r.__words[2] = 0;
    v500->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(end) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v974.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v974.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v973.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v973.__r_.__value_.__l.__data_);
    }

    v502 = std::string::append(&v969, ",\n", 2uLL);
    v503 = *&v502->__r_.__value_.__l.__data_;
    v970.__r_.__value_.__r.__words[2] = v502->__r_.__value_.__r.__words[2];
    *&v970.__r_.__value_.__l.__data_ = v503;
    v502->__r_.__value_.__l.__size_ = 0;
    v502->__r_.__value_.__r.__words[2] = 0;
    v502->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&v973, "g_bw");
    v504 = std::string::append(&v973, ": ", 2uLL);
    v505 = *&v504->__r_.__value_.__l.__data_;
    v974.__r_.__value_.__r.__words[2] = v504->__r_.__value_.__r.__words[2];
    *&v974.__r_.__value_.__l.__data_ = v505;
    v504->__r_.__value_.__l.__size_ = 0;
    v504->__r_.__value_.__r.__words[2] = 0;
    v504->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&cfa, v418);
    while (2)
    {
      if ((SHIBYTE(cfa.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
      {
        if (*(&v936 + SHIBYTE(cfa.__r_.__value_.__r.__words[2]) + 7) != 48)
        {
          break;
        }

        v506 = SHIBYTE(cfa.__r_.__value_.__r.__words[2]) - 1;
        *(&cfa.__r_.__value_.__s + 23) = (*(&cfa.__r_.__value_.__s + 23) - 1) & 0x7F;
        v507 = &cfa;
        goto LABEL_1139;
      }

      v507 = cfa.__r_.__value_.__r.__words[0];
      if (*(cfa.__r_.__value_.__r.__words[0] + cfa.__r_.__value_.__l.__size_ - 1) == 48)
      {
        v506 = --cfa.__r_.__value_.__l.__size_;
LABEL_1139:
        v507->__r_.__value_.__s.__data_[v506] = 0;
        continue;
      }

      break;
    }

    *&v981.__first_ = *&cfa.__r_.__value_.__l.__data_;
    v981.__end_ = cfa.__r_.__value_.__r.__words[2];
    memset(&cfa, 0, sizeof(cfa));
    while (2)
    {
      if ((SHIBYTE(v981.__end_) & 0x8000000000000000) == 0)
      {
        if (*(&v980 + SHIBYTE(v981.__end_)) != 46)
        {
          break;
        }

        v508 = (SHIBYTE(v981.__end_) - 1);
        HIBYTE(v981.__end_) = (HIBYTE(v981.__end_) - 1) & 0x7F;
        v509 = &v981;
        goto LABEL_1146;
      }

      v509 = v981.__first_;
      if (v981.__first_->__r_.__value_.__s.__data_[v981.__begin_ - 1] == 46)
      {
        v508 = --v981.__begin_;
LABEL_1146:
        v508->__r_.__value_.__s.__data_[v509] = 0;
        continue;
      }

      break;
    }

    __p = *&v981.__first_;
    end = v981.__end_;
    if (SHIBYTE(cfa.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(cfa.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(end) >= 0)
    {
      v510 = &__p;
    }

    else
    {
      v510 = __p;
    }

    if (SHIBYTE(end) >= 0)
    {
      v511 = HIBYTE(end);
    }

    else
    {
      v511 = *(&__p + 1);
    }

    v512 = std::string::append(&v974, v510, v511);
    v513 = *&v512->__r_.__value_.__l.__data_;
    v968 = v512->__r_.__value_.__r.__words[2];
    v967 = v513;
    v512->__r_.__value_.__l.__size_ = 0;
    v512->__r_.__value_.__r.__words[2] = 0;
    v512->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(end) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v974.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v974.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v973.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v973.__r_.__value_.__l.__data_);
    }

    if (v968 >= 0)
    {
      v514 = &v967;
    }

    else
    {
      v514 = v967;
    }

    if (v968 >= 0)
    {
      v515 = HIBYTE(v968);
    }

    else
    {
      v515 = *(&v967 + 1);
    }

    v516 = std::string::append(&v970, v514, v515);
    v517 = *&v516->__r_.__value_.__l.__data_;
    v964.__r_.__value_.__r.__words[2] = v516->__r_.__value_.__r.__words[2];
    *&v964.__r_.__value_.__l.__data_ = v517;
    v516->__r_.__value_.__l.__size_ = 0;
    v516->__r_.__value_.__r.__words[2] = 0;
    v516->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v968) < 0)
    {
      operator delete(v967);
    }

    if (SHIBYTE(v970.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v970.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v969.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v969.__r_.__value_.__l.__data_);
    }

    if ((v964.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v518 = &v964;
    }

    else
    {
      v518 = v964.__r_.__value_.__r.__words[0];
    }

    if ((v964.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v519 = HIBYTE(v964.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v519 = v964.__r_.__value_.__l.__size_;
    }

    v520 = std::string::append(&v966, v518, v519);
    v521 = *&v520->__r_.__value_.__l.__data_;
    v960.__r_.__value_.__r.__words[2] = v520->__r_.__value_.__r.__words[2];
    *&v960.__r_.__value_.__l.__data_ = v521;
    v520->__r_.__value_.__l.__size_ = 0;
    v520->__r_.__value_.__r.__words[2] = 0;
    v520->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v964.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v964.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v966.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v966.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v965.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v965.__r_.__value_.__l.__data_);
    }

    if ((v960.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v522 = &v960;
    }

    else
    {
      v522 = v960.__r_.__value_.__r.__words[0];
    }

    if ((v960.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v523 = HIBYTE(v960.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v523 = v960.__r_.__value_.__l.__size_;
    }

    v524 = std::string::append(&v963, v522, v523);
    v525 = *&v524->__r_.__value_.__l.__data_;
    v957.__r_.__value_.__r.__words[2] = v524->__r_.__value_.__r.__words[2];
    *&v957.__r_.__value_.__l.__data_ = v525;
    v524->__r_.__value_.__l.__size_ = 0;
    v524->__r_.__value_.__r.__words[2] = 0;
    v524->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v960.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v960.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v963.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v963.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v961.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v961.__r_.__value_.__l.__data_);
    }

    if ((v957.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v526 = &v957;
    }

    else
    {
      v526 = v957.__r_.__value_.__r.__words[0];
    }

    if ((v957.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v527 = HIBYTE(v957.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v527 = v957.__r_.__value_.__l.__size_;
    }

    v528 = std::string::append(&v959, v526, v527);
    v529 = *&v528->__r_.__value_.__l.__data_;
    v954.__r_.__value_.__r.__words[2] = v528->__r_.__value_.__r.__words[2];
    *&v954.__r_.__value_.__l.__data_ = v529;
    v528->__r_.__value_.__l.__size_ = 0;
    v528->__r_.__value_.__r.__words[2] = 0;
    v528->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v957.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v957.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v959.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v959.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v958.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v958.__r_.__value_.__l.__data_);
    }

    if ((v954.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v530 = &v954;
    }

    else
    {
      v530 = v954.__r_.__value_.__r.__words[0];
    }

    if ((v954.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v531 = HIBYTE(v954.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v531 = v954.__r_.__value_.__l.__size_;
    }

    v532 = std::string::append(&v956, v530, v531);
    v533 = *&v532->__r_.__value_.__l.__data_;
    v951.__r_.__value_.__r.__words[2] = v532->__r_.__value_.__r.__words[2];
    *&v951.__r_.__value_.__l.__data_ = v533;
    v532->__r_.__value_.__l.__size_ = 0;
    v532->__r_.__value_.__r.__words[2] = 0;
    v532->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v954.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v954.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v956.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v956.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v955.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v955.__r_.__value_.__l.__data_);
    }

    if ((v951.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v534 = &v951;
    }

    else
    {
      v534 = v951.__r_.__value_.__r.__words[0];
    }

    if ((v951.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v535 = HIBYTE(v951.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v535 = v951.__r_.__value_.__l.__size_;
    }

    v536 = std::string::append(&v953, v534, v535);
    v537 = *&v536->__r_.__value_.__l.__data_;
    v948.__r_.__value_.__r.__words[2] = v536->__r_.__value_.__r.__words[2];
    *&v948.__r_.__value_.__l.__data_ = v537;
    v536->__r_.__value_.__l.__size_ = 0;
    v536->__r_.__value_.__r.__words[2] = 0;
    v536->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v951.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v951.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v953.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v953.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v952.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v952.__r_.__value_.__l.__data_);
    }

    if ((v948.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v538 = &v948;
    }

    else
    {
      v538 = v948.__r_.__value_.__r.__words[0];
    }

    if ((v948.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v539 = HIBYTE(v948.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v539 = v948.__r_.__value_.__l.__size_;
    }

    v540 = std::string::append(&v950, v538, v539);
    v946 = *v540;
    v540->__r_.__value_.__l.__size_ = 0;
    v540->__r_.__value_.__r.__words[2] = 0;
    v540->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v948.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v948.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v950.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v950.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v949.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v949.__r_.__value_.__l.__data_);
    }

    AUT::GroupLines(&v947, &v946);
    v541 = &v947;
    if ((v947.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v541 = v947.__r_.__value_.__r.__words[0];
    }

    *buf = 136315906;
    *&buf[4] = "AUSpeakerProtectionV3.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 3863;
    *&buf[18] = 1024;
    *&buf[20] = v411;
    *&buf[24] = 2080;
    *&buf[26] = v541;
    _os_log_impl(&dword_1DDB85000, v410, OS_LOG_TYPE_DEBUG, "%25s:%-5d Applying OL displacement params to channel %i:%s", buf, 0x22u);
    if (SHIBYTE(v947.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v947.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v946.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v946.__r_.__value_.__l.__data_);
    }

LABEL_1251:
    v543 = *(v408 + 1);
    v542 = *(v408 + 2);
    v545 = *(v408 + 3);
    v544 = *(v408 + 4);
    v547 = *(v408 + 5);
    v546 = *(v408 + 6);
    v549 = *(v408 + 7);
    v548 = *(v408 + 8);
    v550 = ausdk::AUScope::GetElement((this + 792), *v408);
    ausdk::AUElement::SetParameter(v550, 0x11u, v543);
    ausdk::AUElement::SetParameter(v550, 0xEu, v542);
    ausdk::AUElement::SetParameter(v550, 0xDu, v545);
    ausdk::AUElement::SetParameter(v550, 0x12u, v544);
    ausdk::AUElement::SetParameter(v550, 0x13u, v547);
    ausdk::AUElement::SetParameter(v550, 0xFu, v546);
    ausdk::AUElement::SetParameter(v550, 0xCu, v549);
    ausdk::AUElement::SetParameter(v550, 0x10u, v548);
    v408 += 9;
    if (v408 != v232)
    {
      continue;
    }

    break;
  }

LABEL_1252:
  *(this + 528) = 1;
  ausdk::AUScope::SetNumberOfElements((this + 792), *(this + 158));
  if (v920)
  {
    operator delete(v920);
  }

  if (__src)
  {
    operator delete(__src);
  }

  if (!v936)
  {
    v864 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v864, "Could not construct");
  }

  applesauce::CF::details::find_at_key<applesauce::CF::DictionaryRef,char const(&)[22]>(&v974, v936);
  v551 = *(this + 158);
  if (v551)
  {
    v552 = 0;
    v870 = 0;
    v553 = 0;
    while (1)
    {
      if (!v974.__r_.__value_.__r.__words[0])
      {
        v856 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v856, "Could not construct");
      }

      std::to_string(&v981, v553);
      v554 = std::string::insert(&v981, 0, "Channel", 7uLL);
      v555 = *&v554->__r_.__value_.__l.__data_;
      *&buf[16] = *(&v554->__r_.__value_.__l + 2);
      *buf = v555;
      v554->__r_.__value_.__l.__size_ = 0;
      v554->__r_.__value_.__r.__words[2] = 0;
      v554->__r_.__value_.__r.__words[0] = 0;
      applesauce::CF::details::find_at_key<applesauce::CF::DictionaryRef,std::string>(&cfa, v974.__r_.__value_.__l.__data_, buf);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      if (SHIBYTE(v981.__end_) < 0)
      {
        operator delete(v981.__first_);
      }

      if (!cfa.__r_.__value_.__r.__words[0])
      {
        v857 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v857, "Could not construct");
      }

      applesauce::CF::details::find_at_key<applesauce::CF::DictionaryRef,char const* const&>(&v981, cfa.__r_.__value_.__l.__data_, "CL");
      v556 = spp3Subsystem();
      if (v556)
      {
        v557 = *v556;
        if (!*v556)
        {
          goto LABEL_1271;
        }
      }

      else
      {
        v557 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v557, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315906;
        *&buf[4] = "AUSpeakerProtectionV3.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 3784;
        *&buf[18] = 2080;
        *&buf[20] = "CL";
        *&buf[28] = 1024;
        *&buf[30] = v553;
        _os_log_impl(&dword_1DDB85000, v557, OS_LOG_TYPE_DEBUG, "%25s:%-5d Found the %s plist entry for channel %i.", buf, 0x22u);
      }

LABEL_1271:
      if (!v981.__first_ || (v558 = applesauce::CF::details::find_at_key<float,char const* const&>(v981.__first_, "TempSenseWindowTime"), !v981.__first_) || (v559 = v558, v560 = applesauce::CF::details::find_at_key<float,char const* const&>(v981.__first_, "TempSenseSmoothingTau"), !v981.__first_) || (v561 = v560, v562 = applesauce::CF::details::find_at_key<float,char const* const&>(v981.__first_, "TlimErrDecayTime"), !v981.__first_) || (v563 = v562, v880 = applesauce::CF::details::find_at_key<float,char const* const&>(v981.__first_, "PilotAmplHi_dB"), !v981.__first_) || (v879 = applesauce::CF::details::find_at_key<float,char const* const&>(v981.__first_, "PilotAmplLo_dB"), !v981.__first_) || (v878 = applesauce::CF::details::find_at_key<float,char const* const&>(v981.__first_, "PilotUpperThres"), !v981.__first_) || (v877 = applesauce::CF::details::find_at_key<float,char const* const&>(v981.__first_, "PilotLowerThres"), !v981.__first_) || (v876 = applesauce::CF::details::find_at_key<float,char const* const&>(v981.__first_, "PilotDecayTime"), !v981.__first_) || (v875 = applesauce::CF::details::find_at_key<float,char const* const&>(v981.__first_, "PilotFreq"), !v981.__first_) || (v874 = applesauce::CF::details::find_at_key<float,char const* const&>(v981.__first_, "LPMLSPreGain"), !v981.__first_) || (v873 = applesauce::CF::details::find_at_key<float,char const* const&>(v981.__first_, "LPMLSPostGain"), !v981.__first_) || (v872 = applesauce::CF::details::find_at_key<float,char const* const&>(v981.__first_, "LPMLSLowerCorner"), !v981.__first_) || (v564 = applesauce::CF::details::find_at_key<int,char const* const&>(v981.__first_, "ThermalMeasurementMethod"), !v981.__first_))
      {
        v858 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v858, "Could not construct");
      }

      v565 = applesauce::CF::details::find_at_key<int,char const* const&>(v981.__first_, "DisplacementProtectionType");
      if (!v981.__first_ || (v566 = applesauce::CF::details::find_at_key<float,char const* const&>(v981.__first_, "PilotDecayTimeStage2"), !v981.__first_))
      {
        v583 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v583, "Could not construct");
      }

      v567 = LODWORD(v566) | (COERCE_UNSIGNED_INT(applesauce::CF::details::find_at_key<float,char const* const&>(v981.__first_, "PilotEnableThres")) << 32);
      if (!v981.__first_)
      {
        v582 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v582, "Could not construct");
      }

      v932 = applesauce::CF::details::find_at_key<float,char const* const&>(v981.__first_, "ConvoyMinExcursion");
      if (!v981.__first_)
      {
        v584 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v584, "Could not construct");
      }

      v568 = applesauce::CF::details::find_at_key<float,char const* const&>(v981.__first_, "ConvoyMaxExcursion");
      if (!v981.__first_)
      {
        v585 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v585, "Could not construct");
      }

      v569 = applesauce::CF::details::find_at_key<float,char const* const&>(v981.__first_, "ConvoyPeakFinderThresholdUpper");
      if (!v981.__first_)
      {
        v586 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v586, "Could not construct");
      }

      __srca = applesauce::CF::details::find_at_key<float,char const* const&>(v981.__first_, "ConvoyPeakFinderThresholdLower");
      if (!v981.__first_)
      {
        v587 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v587, "Could not construct");
      }

      __vala = applesauce::CF::details::find_at_key<float,char const* const&>(v981.__first_, "ConvoyNormFactorCapUpper");
      if (!v981.__first_)
      {
        v588 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v588, "Could not construct");
      }

      v913 = applesauce::CF::details::find_at_key<float,char const* const&>(v981.__first_, "ConvoyNormFactorCapLower");
      if (!v981.__first_)
      {
        v589 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v589, "Could not construct");
      }

      v908 = applesauce::CF::details::find_at_key<float,char const* const&>(v981.__first_, "ConvoyPeakRatioPosBlockThreshold");
      if (!v981.__first_)
      {
        v590 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v590, "Could not construct");
      }

      v903 = applesauce::CF::details::find_at_key<float,char const* const&>(v981.__first_, "ConvoyPeakRatioNegBlockThreshold");
      if (!v981.__first_)
      {
        v591 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v591, "Could not construct");
      }

      v897 = applesauce::CF::details::find_at_key<float,char const* const&>(v981.__first_, "ConvoyRelXLimUpper");
      if (!v981.__first_)
      {
        v592 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v592, "Could not construct");
      }

      v892 = applesauce::CF::details::find_at_key<float,char const* const&>(v981.__first_, "ConvoyRelXLimLower");
      if (!v981.__first_)
      {
        v593 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v593, "Could not construct");
      }

      v889 = applesauce::CF::details::find_at_key<float,char const* const&>(v981.__first_, "ConvoyNormFactorAttack");
      if (!v981.__first_)
      {
        v594 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v594, "Could not construct");
      }

      v887 = applesauce::CF::details::find_at_key<float,char const* const&>(v981.__first_, "ConvoyNormFactorRelease");
      if (!v981.__first_)
      {
        v595 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v595, "Could not construct");
      }

      v884 = applesauce::CF::details::find_at_key<float,char const* const&>(v981.__first_, "ConvoyPeakDetectorAtkTime");
      if (!v981.__first_)
      {
        v596 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v596, "Could not construct");
      }

      v570 = applesauce::CF::details::find_at_key<float,char const* const&>(v981.__first_, "ConvoyPeakDetectorRelTime");
      if (!v981.__first_)
      {
        v597 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v597, "Could not construct");
      }

      v571 = applesauce::CF::details::find_at_key<float,char const* const&>(v981.__first_, "ConvoyPeakRatiosInWindowCountThreshold");
      if (!v981.__first_)
      {
        v598 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v598, "Could not construct");
      }

      v572 = applesauce::CF::details::find_at_key<float,char const* const&>(v981.__first_, "ConvoyNormFactorThreshold");
      if (!v981.__first_)
      {
        v599 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v599, "Could not construct");
      }

      v871 = applesauce::CF::details::find_at_key<float,char const* const&>(v981.__first_, "ConvoyBufferDirtyCountThreshold_ms");
      v573 = v552 - v870;
      v574 = 0x8E38E38E38E38E39 * ((v552 - v870) >> 4);
      v575 = v574 + 1;
      if (v574 + 1 > 0x1C71C71C71C71C7)
      {
        std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
      }

      if (0x1C71C71C71C71C72 * (-v870 >> 4) > v575)
      {
        v575 = 0x1C71C71C71C71C72 * (-v870 >> 4);
      }

      if (0x8E38E38E38E38E39 * (-v870 >> 4) >= 0xE38E38E38E38E3)
      {
        v576 = 0x1C71C71C71C71C7;
      }

      else
      {
        v576 = v575;
      }

      if (v576)
      {
        if (v576 <= 0x1C71C71C71C71C7)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v577 = 144 * v574;
      *v577 = v553;
      *(v577 + 4) = v559;
      *(v577 + 8) = v561;
      *(v577 + 12) = v563;
      *(v577 + 16) = v880;
      *(v577 + 20) = v879;
      *(v577 + 24) = v878;
      *(v577 + 28) = v877;
      *(v577 + 32) = v876;
      *(v577 + 36) = v875;
      *(v577 + 40) = v874;
      *(v577 + 44) = v873;
      *(v577 + 48) = v872;
      *(v577 + 52) = v564;
      *(v577 + 56) = v565;
      *(v577 + 60) = v567;
      *(v577 + 68) = 1;
      v578 = *buf;
      *(v577 + 71) = buf[2];
      *(v577 + 69) = v578;
      *(v577 + 72) = v932;
      *(v577 + 76) = v568;
      *(v577 + 80) = v569;
      *(v577 + 84) = __srca;
      *(v577 + 88) = __vala;
      *(v577 + 92) = v913;
      *(v577 + 96) = v908;
      *(v577 + 100) = v903;
      *(v577 + 104) = v897;
      *(v577 + 108) = v892;
      *(v577 + 112) = v889;
      *(v577 + 116) = v887;
      *(v577 + 120) = v884;
      *(v577 + 124) = v570;
      *(v577 + 128) = v571;
      *(v577 + 132) = v572;
      *(v577 + 136) = v871;
      v552 = 144 * v574 + 144;
      *(v577 + 140) = 1;
      *(v577 + 143) = v973.__r_.__value_.__s.__data_[2];
      v579 = (v577 + 144 * (v573 / -144));
      *(v577 + 141) = v973.__r_.__value_.__l.__data_;
      memcpy(v579, v870, v573);
      if (v870)
      {
        operator delete(v870);
      }

      v870 = v579;
      v580 = spp3Subsystem();
      if (!v580)
      {
        v581 = MEMORY[0x1E69E9C10];
LABEL_1319:
        if (os_log_type_enabled(v581, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315906;
          *&buf[4] = "AUSpeakerProtectionV3.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 3789;
          *&buf[18] = 2080;
          *&buf[20] = "CL";
          *&buf[28] = 1024;
          *&buf[30] = v553;
          _os_log_impl(&dword_1DDB85000, v581, OS_LOG_TYPE_DEBUG, "%25s:%-5d Successfully parsed the %s plist entry for channel %i.", buf, 0x22u);
        }

        goto LABEL_1321;
      }

      v581 = *v580;
      if (*v580)
      {
        goto LABEL_1319;
      }

LABEL_1321:
      if (v981.__first_)
      {
        CFRelease(v981.__first_);
      }

      if (cfa.__r_.__value_.__r.__words[0])
      {
        CFRelease(cfa.__r_.__value_.__l.__data_);
      }

      if (v551 == ++v553)
      {
        goto LABEL_1347;
      }
    }
  }

  v552 = 0;
  v870 = 0;
LABEL_1347:
  if (v974.__r_.__value_.__r.__words[0])
  {
    CFRelease(v974.__r_.__value_.__l.__data_);
  }

  v600 = spp3Subsystem();
  if (v600)
  {
    v601 = *v600;
    if (!*v600)
    {
      goto LABEL_1355;
    }
  }

  else
  {
    v601 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v601, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    *&buf[4] = "AUSpeakerProtectionV3.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 3888;
    *&buf[18] = 2048;
    *&buf[20] = 0x8E38E38E38E38E39 * ((v552 - v870) >> 4);
    _os_log_impl(&dword_1DDB85000, v601, OS_LOG_TYPE_INFO, "%25s:%-5d Successfully parsed all %lu the per-speaker CL params.", buf, 0x1Cu);
  }

LABEL_1355:
  if (!v936)
  {
    v868 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v868, "Could not construct");
  }

  applesauce::CF::details::find_at_key<applesauce::CF::DictionaryRef,char const(&)[22]>(&v973, v936);
  v602 = *(this + 158);
  memset(&v966, 0, sizeof(v966));
  if (v602)
  {
    if (!v973.__r_.__value_.__r.__words[0])
    {
      v854 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v854, "Could not construct");
    }

    std::to_string(&v981, 0);
    v603 = std::string::insert(&v981, 0, "Channel", 7uLL);
    v604 = *&v603->__r_.__value_.__l.__data_;
    *&buf[16] = *(&v603->__r_.__value_.__l + 2);
    *buf = v604;
    v603->__r_.__value_.__l.__size_ = 0;
    v603->__r_.__value_.__r.__words[2] = 0;
    v603->__r_.__value_.__r.__words[0] = 0;
    applesauce::CF::details::find_at_key<applesauce::CF::DictionaryRef,std::string>(&cfa, v973.__r_.__value_.__l.__data_, buf);
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if (SHIBYTE(v981.__end_) < 0)
    {
      operator delete(v981.__first_);
    }

    if (!cfa.__r_.__value_.__r.__words[0])
    {
      v855 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v855, "Could not construct");
    }

    applesauce::CF::details::find_at_key<applesauce::CF::DictionaryRef,char const* const&>(&v981, cfa.__r_.__value_.__l.__data_, "CL");
    v605 = spp3Subsystem();
    if (v605)
    {
      v606 = *v605;
      if (!*v605)
      {
        goto LABEL_1369;
      }
    }

    else
    {
      v606 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v606, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      *&buf[4] = "AUSpeakerProtectionV3.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 3784;
      *&buf[18] = 2080;
      *&buf[20] = "CL";
      *&buf[28] = 1024;
      *&buf[30] = 0;
      _os_log_impl(&dword_1DDB85000, v606, OS_LOG_TYPE_DEBUG, "%25s:%-5d Found the %s plist entry for channel %i.", buf, 0x22u);
    }

LABEL_1369:
    *buf = v981.__first_;
    *&buf[8] = 0;
    clsp::ClosedLoopParameters::Create(&v974, buf);
  }

  if (v973.__r_.__value_.__r.__words[0])
  {
    CFRelease(v973.__r_.__value_.__l.__data_);
  }

  v607 = spp3Subsystem();
  if (v607)
  {
    v608 = *v607;
    if (!*v607)
    {
LABEL_1378:
      if (v870 == v552)
      {
        goto LABEL_1730;
      }

      v609 = v870;
      do
      {
        v610 = spp3Subsystem();
        if (v610)
        {
          v611 = *v610;
          if (!*v610)
          {
            goto LABEL_1648;
          }
        }

        else
        {
          v611 = MEMORY[0x1E69E9C10];
        }

        if (!os_log_type_enabled(v611, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_1648;
        }

        v612 = *v609;
        *buf = *(v609 + 4);
        v613 = *(v609 + 20);
        v614 = *(v609 + 36);
        v615 = *(v609 + 68);
        v976 = *(v609 + 52);
        v977 = v615;
        *&buf[16] = v613;
        *&buf[32] = v614;
        v616 = *(v609 + 84);
        v617 = *(v609 + 100);
        v618 = *(v609 + 116);
        *&v979[12] = *(v609 + 8);
        v978[1] = v617;
        *v979 = v618;
        v978[0] = v616;
        std::string::basic_string[abi:ne200100]<0>(&v960, "TempSenseWindowTime");
        v619 = std::string::append(&v960, ": ", 2uLL);
        v620 = *&v619->__r_.__value_.__l.__data_;
        v961.__r_.__value_.__r.__words[2] = v619->__r_.__value_.__r.__words[2];
        *&v961.__r_.__value_.__l.__data_ = v620;
        v619->__r_.__value_.__l.__size_ = 0;
        v619->__r_.__value_.__r.__words[2] = 0;
        v619->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v963, *buf);
        while ((SHIBYTE(v963.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
        {
          if (*(&v962 + SHIBYTE(v963.__r_.__value_.__r.__words[2])) != 48)
          {
            goto LABEL_1392;
          }

          v621 = SHIBYTE(v963.__r_.__value_.__r.__words[2]) - 1;
          *(&v963.__r_.__value_.__s + 23) = (*(&v963.__r_.__value_.__s + 23) - 1) & 0x7F;
          v622 = &v963;
LABEL_1391:
          v622->__r_.__value_.__s.__data_[v621] = 0;
        }

        v622 = v963.__r_.__value_.__r.__words[0];
        if (*(v963.__r_.__value_.__r.__words[0] + v963.__r_.__value_.__l.__size_ - 1) == 48)
        {
          v621 = --v963.__r_.__value_.__l.__size_;
          goto LABEL_1391;
        }

LABEL_1392:
        cfa = v963;
        memset(&v963, 0, sizeof(v963));
        while ((SHIBYTE(cfa.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
        {
          if (*(&v936 + SHIBYTE(cfa.__r_.__value_.__r.__words[2]) + 7) != 46)
          {
            goto LABEL_1399;
          }

          v623 = SHIBYTE(cfa.__r_.__value_.__r.__words[2]) - 1;
          *(&cfa.__r_.__value_.__s + 23) = (*(&cfa.__r_.__value_.__s + 23) - 1) & 0x7F;
          v624 = &cfa;
LABEL_1398:
          v624->__r_.__value_.__s.__data_[v623] = 0;
        }

        v624 = cfa.__r_.__value_.__r.__words[0];
        if (*(cfa.__r_.__value_.__r.__words[0] + cfa.__r_.__value_.__l.__size_ - 1) == 46)
        {
          v623 = --cfa.__r_.__value_.__l.__size_;
          goto LABEL_1398;
        }

LABEL_1399:
        v974 = cfa;
        if (SHIBYTE(v963.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v963.__r_.__value_.__l.__data_);
        }

        if ((v974.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v625 = &v974;
        }

        else
        {
          v625 = v974.__r_.__value_.__r.__words[0];
        }

        if ((v974.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v626 = HIBYTE(v974.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v626 = v974.__r_.__value_.__l.__size_;
        }

        v627 = std::string::append(&v961, v625, v626);
        v628 = *&v627->__r_.__value_.__l.__data_;
        v958.__r_.__value_.__r.__words[2] = v627->__r_.__value_.__r.__words[2];
        *&v958.__r_.__value_.__l.__data_ = v628;
        v627->__r_.__value_.__l.__size_ = 0;
        v627->__r_.__value_.__r.__words[2] = 0;
        v627->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v974.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v974.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v961.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v961.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v960.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v960.__r_.__value_.__l.__data_);
        }

        v629 = std::string::append(&v958, ",\n", 2uLL);
        v630 = *&v629->__r_.__value_.__l.__data_;
        v959.__r_.__value_.__r.__words[2] = v629->__r_.__value_.__r.__words[2];
        *&v959.__r_.__value_.__l.__data_ = v630;
        v629->__r_.__value_.__l.__size_ = 0;
        v629->__r_.__value_.__r.__words[2] = 0;
        v629->__r_.__value_.__r.__words[0] = 0;
        clsp::ScopedParamStruct<clsp::plistV9::TempSenseSmoothingTau,clsp::plistV9::TlimErrDecayTime,clsp::plistV9::PilotAmplHi_dB,clsp::plistV9::PilotAmplLo_dB,clsp::plistV9::PilotUpperThres,clsp::plistV9::PilotLowerThres,clsp::plistV9::PilotDecayTime,clsp::plistV9::PilotFreq,clsp::plistV9::LPMLSPreGain,clsp::plistV9::LPMLSPostGain,clsp::plistV9::LPMLSLowerCorner,clsp::plistV9::ThermalMeasurementMethod,clsp::plistV9::DisplacementProtectionType>::toString(&cfa, &buf[4]);
        if ((cfa.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v631 = &cfa;
        }

        else
        {
          v631 = cfa.__r_.__value_.__r.__words[0];
        }

        if ((cfa.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v632 = HIBYTE(cfa.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v632 = cfa.__r_.__value_.__l.__size_;
        }

        v633 = std::string::append(&v959, v631, v632);
        v634 = *&v633->__r_.__value_.__l.__data_;
        v949.__r_.__value_.__r.__words[2] = v633->__r_.__value_.__r.__words[2];
        *&v949.__r_.__value_.__l.__data_ = v634;
        v633->__r_.__value_.__l.__size_ = 0;
        v633->__r_.__value_.__r.__words[2] = 0;
        v633->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(cfa.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(cfa.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v959.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v959.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v958.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v958.__r_.__value_.__l.__data_);
        }

        v635 = v979[24];
        if (v979[24] != 1)
        {
          std::string::basic_string[abi:ne200100]<0>(&v967, "");
          goto LABEL_1628;
        }

        std::string::basic_string[abi:ne200100]<0>(&v960, "ConvoyMinExcursion");
        v636 = std::string::append(&v960, ": ", 2uLL);
        v637 = *&v636->__r_.__value_.__l.__data_;
        v961.__r_.__value_.__r.__words[2] = v636->__r_.__value_.__r.__words[2];
        *&v961.__r_.__value_.__l.__data_ = v637;
        v636->__r_.__value_.__l.__size_ = 0;
        v636->__r_.__value_.__r.__words[2] = 0;
        v636->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v963, *(&v977 + 1));
        while (2)
        {
          if ((SHIBYTE(v963.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
          {
            if (*(&v962 + SHIBYTE(v963.__r_.__value_.__r.__words[2])) != 48)
            {
              break;
            }

            v638 = SHIBYTE(v963.__r_.__value_.__r.__words[2]) - 1;
            *(&v963.__r_.__value_.__s + 23) = (*(&v963.__r_.__value_.__s + 23) - 1) & 0x7F;
            v639 = &v963;
            goto LABEL_1432;
          }

          v639 = v963.__r_.__value_.__r.__words[0];
          if (*(v963.__r_.__value_.__r.__words[0] + v963.__r_.__value_.__l.__size_ - 1) == 48)
          {
            v638 = --v963.__r_.__value_.__l.__size_;
LABEL_1432:
            v639->__r_.__value_.__s.__data_[v638] = 0;
            continue;
          }

          break;
        }

        cfa = v963;
        memset(&v963, 0, sizeof(v963));
        while (2)
        {
          if ((SHIBYTE(cfa.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
          {
            if (*(&v936 + SHIBYTE(cfa.__r_.__value_.__r.__words[2]) + 7) != 46)
            {
              break;
            }

            v640 = SHIBYTE(cfa.__r_.__value_.__r.__words[2]) - 1;
            *(&cfa.__r_.__value_.__s + 23) = (*(&cfa.__r_.__value_.__s + 23) - 1) & 0x7F;
            v641 = &cfa;
            goto LABEL_1440;
          }

          v641 = cfa.__r_.__value_.__r.__words[0];
          if (*(cfa.__r_.__value_.__r.__words[0] + cfa.__r_.__value_.__l.__size_ - 1) == 46)
          {
            v640 = --cfa.__r_.__value_.__l.__size_;
LABEL_1440:
            v641->__r_.__value_.__s.__data_[v640] = 0;
            continue;
          }

          break;
        }

        v974 = cfa;
        if (SHIBYTE(v963.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v963.__r_.__value_.__l.__data_);
        }

        if ((v974.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v642 = &v974;
        }

        else
        {
          v642 = v974.__r_.__value_.__r.__words[0];
        }

        if ((v974.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v643 = HIBYTE(v974.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v643 = v974.__r_.__value_.__l.__size_;
        }

        v644 = std::string::append(&v961, v642, v643);
        v645 = *&v644->__r_.__value_.__l.__data_;
        v950.__r_.__value_.__r.__words[2] = v644->__r_.__value_.__r.__words[2];
        *&v950.__r_.__value_.__l.__data_ = v645;
        v644->__r_.__value_.__l.__size_ = 0;
        v644->__r_.__value_.__r.__words[2] = 0;
        v644->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v974.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v974.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v961.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v961.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v960.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v960.__r_.__value_.__l.__data_);
        }

        v646 = std::string::append(&v950, ",\n", 2uLL);
        v647 = *&v646->__r_.__value_.__l.__data_;
        v951.__r_.__value_.__r.__words[2] = v646->__r_.__value_.__r.__words[2];
        *&v951.__r_.__value_.__l.__data_ = v647;
        v646->__r_.__value_.__l.__size_ = 0;
        v646->__r_.__value_.__r.__words[2] = 0;
        v646->__r_.__value_.__r.__words[0] = 0;
        std::string::basic_string[abi:ne200100]<0>(&v960, "ConvoyMaxExcursion");
        v648 = std::string::append(&v960, ": ", 2uLL);
        v649 = *&v648->__r_.__value_.__l.__data_;
        v961.__r_.__value_.__r.__words[2] = v648->__r_.__value_.__r.__words[2];
        *&v961.__r_.__value_.__l.__data_ = v649;
        v648->__r_.__value_.__l.__size_ = 0;
        v648->__r_.__value_.__r.__words[2] = 0;
        v648->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v963, *(&v977 + 2));
        while (2)
        {
          if ((SHIBYTE(v963.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
          {
            if (*(&v962 + SHIBYTE(v963.__r_.__value_.__r.__words[2])) != 48)
            {
              break;
            }

            v650 = SHIBYTE(v963.__r_.__value_.__r.__words[2]) - 1;
            *(&v963.__r_.__value_.__s + 23) = (*(&v963.__r_.__value_.__s + 23) - 1) & 0x7F;
            v651 = &v963;
            goto LABEL_1461;
          }

          v651 = v963.__r_.__value_.__r.__words[0];
          if (*(v963.__r_.__value_.__r.__words[0] + v963.__r_.__value_.__l.__size_ - 1) == 48)
          {
            v650 = --v963.__r_.__value_.__l.__size_;
LABEL_1461:
            v651->__r_.__value_.__s.__data_[v650] = 0;
            continue;
          }

          break;
        }

        cfa = v963;
        memset(&v963, 0, sizeof(v963));
        while (2)
        {
          if ((SHIBYTE(cfa.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
          {
            if (*(&v936 + SHIBYTE(cfa.__r_.__value_.__r.__words[2]) + 7) != 46)
            {
              break;
            }

            v652 = SHIBYTE(cfa.__r_.__value_.__r.__words[2]) - 1;
            *(&cfa.__r_.__value_.__s + 23) = (*(&cfa.__r_.__value_.__s + 23) - 1) & 0x7F;
            v653 = &cfa;
            goto LABEL_1468;
          }

          v653 = cfa.__r_.__value_.__r.__words[0];
          if (*(cfa.__r_.__value_.__r.__words[0] + cfa.__r_.__value_.__l.__size_ - 1) == 46)
          {
            v652 = --cfa.__r_.__value_.__l.__size_;
LABEL_1468:
            v653->__r_.__value_.__s.__data_[v652] = 0;
            continue;
          }

          break;
        }

        v974 = cfa;
        if (SHIBYTE(v963.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v963.__r_.__value_.__l.__data_);
        }

        if ((v974.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v654 = &v974;
        }

        else
        {
          v654 = v974.__r_.__value_.__r.__words[0];
        }

        if ((v974.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v655 = HIBYTE(v974.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v655 = v974.__r_.__value_.__l.__size_;
        }

        v656 = std::string::append(&v961, v654, v655);
        v657 = *&v656->__r_.__value_.__l.__data_;
        v952.__r_.__value_.__r.__words[2] = v656->__r_.__value_.__r.__words[2];
        *&v952.__r_.__value_.__l.__data_ = v657;
        v656->__r_.__value_.__l.__size_ = 0;
        v656->__r_.__value_.__r.__words[2] = 0;
        v656->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v974.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v974.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v961.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v961.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v960.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v960.__r_.__value_.__l.__data_);
        }

        v658 = std::string::append(&v952, ",\n", 2uLL);
        v659 = *&v658->__r_.__value_.__l.__data_;
        v953.__r_.__value_.__r.__words[2] = v658->__r_.__value_.__r.__words[2];
        *&v953.__r_.__value_.__l.__data_ = v659;
        v658->__r_.__value_.__l.__size_ = 0;
        v658->__r_.__value_.__r.__words[2] = 0;
        v658->__r_.__value_.__r.__words[0] = 0;
        std::string::basic_string[abi:ne200100]<0>(&v960, "ConvoyPeakFinderThresholdUpper");
        v660 = std::string::append(&v960, ": ", 2uLL);
        v661 = *&v660->__r_.__value_.__l.__data_;
        v961.__r_.__value_.__r.__words[2] = v660->__r_.__value_.__r.__words[2];
        *&v961.__r_.__value_.__l.__data_ = v661;
        v660->__r_.__value_.__l.__size_ = 0;
        v660->__r_.__value_.__r.__words[2] = 0;
        v660->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v963, *(&v977 + 3));
        while (2)
        {
          if ((SHIBYTE(v963.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
          {
            if (*(&v962 + SHIBYTE(v963.__r_.__value_.__r.__words[2])) != 48)
            {
              break;
            }

            v662 = SHIBYTE(v963.__r_.__value_.__r.__words[2]) - 1;
            *(&v963.__r_.__value_.__s + 23) = (*(&v963.__r_.__value_.__s + 23) - 1) & 0x7F;
            v663 = &v963;
            goto LABEL_1489;
          }

          v663 = v963.__r_.__value_.__r.__words[0];
          if (*(v963.__r_.__value_.__r.__words[0] + v963.__r_.__value_.__l.__size_ - 1) == 48)
          {
            v662 = --v963.__r_.__value_.__l.__size_;
LABEL_1489:
            v663->__r_.__value_.__s.__data_[v662] = 0;
            continue;
          }

          break;
        }

        cfa = v963;
        memset(&v963, 0, sizeof(v963));
        while (2)
        {
          if ((SHIBYTE(cfa.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
          {
            if (*(&v936 + SHIBYTE(cfa.__r_.__value_.__r.__words[2]) + 7) != 46)
            {
              break;
            }

            v664 = SHIBYTE(cfa.__r_.__value_.__r.__words[2]) - 1;
            *(&cfa.__r_.__value_.__s + 23) = (*(&cfa.__r_.__value_.__s + 23) - 1) & 0x7F;
            v665 = &cfa;
            goto LABEL_1496;
          }

          v665 = cfa.__r_.__value_.__r.__words[0];
          if (*(cfa.__r_.__value_.__r.__words[0] + cfa.__r_.__value_.__l.__size_ - 1) == 46)
          {
            v664 = --cfa.__r_.__value_.__l.__size_;
LABEL_1496:
            v665->__r_.__value_.__s.__data_[v664] = 0;
            continue;
          }

          break;
        }

        v974 = cfa;
        if (SHIBYTE(v963.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v963.__r_.__value_.__l.__data_);
        }

        if ((v974.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v666 = &v974;
        }

        else
        {
          v666 = v974.__r_.__value_.__r.__words[0];
        }

        if ((v974.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v667 = HIBYTE(v974.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v667 = v974.__r_.__value_.__l.__size_;
        }

        v668 = std::string::append(&v961, v666, v667);
        v669 = *&v668->__r_.__value_.__l.__data_;
        v954.__r_.__value_.__r.__words[2] = v668->__r_.__value_.__r.__words[2];
        *&v954.__r_.__value_.__l.__data_ = v669;
        v668->__r_.__value_.__l.__size_ = 0;
        v668->__r_.__value_.__r.__words[2] = 0;
        v668->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v974.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v974.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v961.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v961.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v960.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v960.__r_.__value_.__l.__data_);
        }

        v670 = std::string::append(&v954, ",\n", 2uLL);
        v671 = *&v670->__r_.__value_.__l.__data_;
        v955.__r_.__value_.__r.__words[2] = v670->__r_.__value_.__r.__words[2];
        *&v955.__r_.__value_.__l.__data_ = v671;
        v670->__r_.__value_.__l.__size_ = 0;
        v670->__r_.__value_.__r.__words[2] = 0;
        v670->__r_.__value_.__r.__words[0] = 0;
        std::string::basic_string[abi:ne200100]<0>(&v960, "ConvoyPeakFinderThresholdLower");
        v672 = std::string::append(&v960, ": ", 2uLL);
        v673 = *&v672->__r_.__value_.__l.__data_;
        v961.__r_.__value_.__r.__words[2] = v672->__r_.__value_.__r.__words[2];
        *&v961.__r_.__value_.__l.__data_ = v673;
        v672->__r_.__value_.__l.__size_ = 0;
        v672->__r_.__value_.__r.__words[2] = 0;
        v672->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v963, *v978);
        while (2)
        {
          if ((SHIBYTE(v963.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
          {
            if (*(&v962 + SHIBYTE(v963.__r_.__value_.__r.__words[2])) != 48)
            {
              break;
            }

            v674 = SHIBYTE(v963.__r_.__value_.__r.__words[2]) - 1;
            *(&v963.__r_.__value_.__s + 23) = (*(&v963.__r_.__value_.__s + 23) - 1) & 0x7F;
            v675 = &v963;
            goto LABEL_1517;
          }

          v675 = v963.__r_.__value_.__r.__words[0];
          if (*(v963.__r_.__value_.__r.__words[0] + v963.__r_.__value_.__l.__size_ - 1) == 48)
          {
            v674 = --v963.__r_.__value_.__l.__size_;
LABEL_1517:
            v675->__r_.__value_.__s.__data_[v674] = 0;
            continue;
          }

          break;
        }

        cfa = v963;
        memset(&v963, 0, sizeof(v963));
        while (2)
        {
          if ((SHIBYTE(cfa.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
          {
            if (*(&v936 + SHIBYTE(cfa.__r_.__value_.__r.__words[2]) + 7) != 46)
            {
              break;
            }

            v676 = SHIBYTE(cfa.__r_.__value_.__r.__words[2]) - 1;
            *(&cfa.__r_.__value_.__s + 23) = (*(&cfa.__r_.__value_.__s + 23) - 1) & 0x7F;
            v677 = &cfa;
            goto LABEL_1524;
          }

          v677 = cfa.__r_.__value_.__r.__words[0];
          if (*(cfa.__r_.__value_.__r.__words[0] + cfa.__r_.__value_.__l.__size_ - 1) == 46)
          {
            v676 = --cfa.__r_.__value_.__l.__size_;
LABEL_1524:
            v677->__r_.__value_.__s.__data_[v676] = 0;
            continue;
          }

          break;
        }

        v974 = cfa;
        if (SHIBYTE(v963.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v963.__r_.__value_.__l.__data_);
        }

        if ((v974.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v678 = &v974;
        }

        else
        {
          v678 = v974.__r_.__value_.__r.__words[0];
        }

        if ((v974.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v679 = HIBYTE(v974.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v679 = v974.__r_.__value_.__l.__size_;
        }

        v680 = std::string::append(&v961, v678, v679);
        v681 = *&v680->__r_.__value_.__l.__data_;
        v956.__r_.__value_.__r.__words[2] = v680->__r_.__value_.__r.__words[2];
        *&v956.__r_.__value_.__l.__data_ = v681;
        v680->__r_.__value_.__l.__size_ = 0;
        v680->__r_.__value_.__r.__words[2] = 0;
        v680->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v974.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v974.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v961.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v961.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v960.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v960.__r_.__value_.__l.__data_);
        }

        v682 = std::string::append(&v956, ",\n", 2uLL);
        v683 = *&v682->__r_.__value_.__l.__data_;
        v957.__r_.__value_.__r.__words[2] = v682->__r_.__value_.__r.__words[2];
        *&v957.__r_.__value_.__l.__data_ = v683;
        v682->__r_.__value_.__l.__size_ = 0;
        v682->__r_.__value_.__r.__words[2] = 0;
        v682->__r_.__value_.__r.__words[0] = 0;
        std::string::basic_string[abi:ne200100]<0>(&v960, "ConvoyNormFactorCapUpper");
        v684 = std::string::append(&v960, ": ", 2uLL);
        v685 = *&v684->__r_.__value_.__l.__data_;
        v961.__r_.__value_.__r.__words[2] = v684->__r_.__value_.__r.__words[2];
        *&v961.__r_.__value_.__l.__data_ = v685;
        v684->__r_.__value_.__l.__size_ = 0;
        v684->__r_.__value_.__r.__words[2] = 0;
        v684->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v963, *(v978 + 1));
        while (2)
        {
          if ((SHIBYTE(v963.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
          {
            if (*(&v962 + SHIBYTE(v963.__r_.__value_.__r.__words[2])) != 48)
            {
              break;
            }

            v686 = SHIBYTE(v963.__r_.__value_.__r.__words[2]) - 1;
            *(&v963.__r_.__value_.__s + 23) = (*(&v963.__r_.__value_.__s + 23) - 1) & 0x7F;
            v687 = &v963;
            goto LABEL_1545;
          }

          v687 = v963.__r_.__value_.__r.__words[0];
          if (*(v963.__r_.__value_.__r.__words[0] + v963.__r_.__value_.__l.__size_ - 1) == 48)
          {
            v686 = --v963.__r_.__value_.__l.__size_;
LABEL_1545:
            v687->__r_.__value_.__s.__data_[v686] = 0;
            continue;
          }

          break;
        }

        cfa = v963;
        memset(&v963, 0, sizeof(v963));
        while (2)
        {
          if ((SHIBYTE(cfa.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
          {
            if (*(&v936 + SHIBYTE(cfa.__r_.__value_.__r.__words[2]) + 7) != 46)
            {
              break;
            }

            v688 = SHIBYTE(cfa.__r_.__value_.__r.__words[2]) - 1;
            *(&cfa.__r_.__value_.__s + 23) = (*(&cfa.__r_.__value_.__s + 23) - 1) & 0x7F;
            v689 = &cfa;
            goto LABEL_1552;
          }

          v689 = cfa.__r_.__value_.__r.__words[0];
          if (*(cfa.__r_.__value_.__r.__words[0] + cfa.__r_.__value_.__l.__size_ - 1) == 46)
          {
            v688 = --cfa.__r_.__value_.__l.__size_;
LABEL_1552:
            v689->__r_.__value_.__s.__data_[v688] = 0;
            continue;
          }

          break;
        }

        v974 = cfa;
        if (SHIBYTE(v963.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v963.__r_.__value_.__l.__data_);
        }

        if ((v974.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v690 = &v974;
        }

        else
        {
          v690 = v974.__r_.__value_.__r.__words[0];
        }

        if ((v974.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v691 = HIBYTE(v974.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v691 = v974.__r_.__value_.__l.__size_;
        }

        v692 = std::string::append(&v961, v690, v691);
        v693 = *&v692->__r_.__value_.__l.__data_;
        v958.__r_.__value_.__r.__words[2] = v692->__r_.__value_.__r.__words[2];
        *&v958.__r_.__value_.__l.__data_ = v693;
        v692->__r_.__value_.__l.__size_ = 0;
        v692->__r_.__value_.__r.__words[2] = 0;
        v692->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v974.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v974.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v961.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v961.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v960.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v960.__r_.__value_.__l.__data_);
        }

        v694 = std::string::append(&v958, ",\n", 2uLL);
        v695 = *&v694->__r_.__value_.__l.__data_;
        v959.__r_.__value_.__r.__words[2] = v694->__r_.__value_.__r.__words[2];
        *&v959.__r_.__value_.__l.__data_ = v695;
        v694->__r_.__value_.__l.__size_ = 0;
        v694->__r_.__value_.__r.__words[2] = 0;
        v694->__r_.__value_.__r.__words[0] = 0;
        clsp::ScopedParamStruct<clsp::plistV9::ConvoyNormFactorCapLower,clsp::plistV9::ConvoyPeakRatioPosBlockThreshold,clsp::plistV9::ConvoyPeakRatioNegBlockThreshold,clsp::plistV9::ConvoyRelXLimUpper,clsp::plistV9::ConvoyRelXLimLower,clsp::plistV9::ConvoyNormFactorAttack,clsp::plistV9::ConvoyNormFactorRelease,clsp::plistV9::ConvoyPeakDetectorAtkTime,clsp::plistV9::ConvoyPeakDetectorRelTime,clsp::plistV9::ConvoyPeakRatiosInWindowCountThreshold,clsp::plistV9::ConvoyNormFactorThreshold,clsp::plistV9::ConvoyBufferDirtyCountThreshold_ms>::toString(&cfa, v978 + 2);
        if ((cfa.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v696 = &cfa;
        }

        else
        {
          v696 = cfa.__r_.__value_.__r.__words[0];
        }

        if ((cfa.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v697 = HIBYTE(cfa.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v697 = cfa.__r_.__value_.__l.__size_;
        }

        v698 = std::string::append(&v959, v696, v697);
        v699 = *&v698->__r_.__value_.__l.__data_;
        v973.__r_.__value_.__r.__words[2] = v698->__r_.__value_.__r.__words[2];
        *&v973.__r_.__value_.__l.__data_ = v699;
        v698->__r_.__value_.__l.__size_ = 0;
        v698->__r_.__value_.__r.__words[2] = 0;
        v698->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(cfa.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(cfa.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v959.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v959.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v958.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v958.__r_.__value_.__l.__data_);
        }

        if ((v973.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v700 = &v973;
        }

        else
        {
          v700 = v973.__r_.__value_.__r.__words[0];
        }

        if ((v973.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v701 = HIBYTE(v973.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v701 = v973.__r_.__value_.__l.__size_;
        }

        v702 = std::string::append(&v957, v700, v701);
        v703 = *&v702->__r_.__value_.__l.__data_;
        end = v702->__r_.__value_.__r.__words[2];
        __p = v703;
        v702->__r_.__value_.__l.__size_ = 0;
        v702->__r_.__value_.__r.__words[2] = 0;
        v702->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v973.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v973.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v957.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v957.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v956.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v956.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(end) >= 0)
        {
          v704 = &__p;
        }

        else
        {
          v704 = __p;
        }

        if (SHIBYTE(end) >= 0)
        {
          v705 = HIBYTE(end);
        }

        else
        {
          v705 = *(&__p + 1);
        }

        v706 = std::string::append(&v955, v704, v705);
        v707 = *&v706->__r_.__value_.__l.__data_;
        v970.__r_.__value_.__r.__words[2] = v706->__r_.__value_.__r.__words[2];
        *&v970.__r_.__value_.__l.__data_ = v707;
        v706->__r_.__value_.__l.__size_ = 0;
        v706->__r_.__value_.__r.__words[2] = 0;
        v706->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(end) < 0)
        {
          operator delete(__p);
        }

        if (SHIBYTE(v955.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v955.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v954.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v954.__r_.__value_.__l.__data_);
        }

        if ((v970.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v708 = &v970;
        }

        else
        {
          v708 = v970.__r_.__value_.__r.__words[0];
        }

        if ((v970.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v709 = HIBYTE(v970.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v709 = v970.__r_.__value_.__l.__size_;
        }

        v710 = std::string::append(&v953, v708, v709);
        v711 = *&v710->__r_.__value_.__l.__data_;
        v969.__r_.__value_.__r.__words[2] = v710->__r_.__value_.__r.__words[2];
        *&v969.__r_.__value_.__l.__data_ = v711;
        v710->__r_.__value_.__l.__size_ = 0;
        v710->__r_.__value_.__r.__words[2] = 0;
        v710->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v970.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v970.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v953.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v953.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v952.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v952.__r_.__value_.__l.__data_);
        }

        if ((v969.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v712 = &v969;
        }

        else
        {
          v712 = v969.__r_.__value_.__r.__words[0];
        }

        if ((v969.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v713 = HIBYTE(v969.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v713 = v969.__r_.__value_.__l.__size_;
        }

        v714 = std::string::append(&v951, v712, v713);
        v715 = *&v714->__r_.__value_.__l.__data_;
        v948.__r_.__value_.__r.__words[2] = v714->__r_.__value_.__r.__words[2];
        *&v948.__r_.__value_.__l.__data_ = v715;
        v714->__r_.__value_.__l.__size_ = 0;
        v714->__r_.__value_.__r.__words[2] = 0;
        v714->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v969.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v969.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v951.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v951.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v950.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v950.__r_.__value_.__l.__data_);
        }

        v716 = std::string::insert(&v948, 0, "\n", 1uLL);
        v717 = *&v716->__r_.__value_.__l.__data_;
        v968 = v716->__r_.__value_.__r.__words[2];
        v967 = v717;
        v716->__r_.__value_.__l.__size_ = 0;
        v716->__r_.__value_.__r.__words[2] = 0;
        v716->__r_.__value_.__r.__words[0] = 0;
LABEL_1628:
        if (v968 >= 0)
        {
          v718 = &v967;
        }

        else
        {
          v718 = v967;
        }

        if (v968 >= 0)
        {
          v719 = HIBYTE(v968);
        }

        else
        {
          v719 = *(&v967 + 1);
        }

        v720 = std::string::append(&v949, v718, v719);
        v964 = *v720;
        v720->__r_.__value_.__l.__size_ = 0;
        v720->__r_.__value_.__r.__words[2] = 0;
        v720->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v968) < 0)
        {
          operator delete(v967);
          if (!v635)
          {
            goto LABEL_1640;
          }
        }

        else if (!v635)
        {
          goto LABEL_1640;
        }

        if (SHIBYTE(v948.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v948.__r_.__value_.__l.__data_);
        }

LABEL_1640:
        if (SHIBYTE(v949.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v949.__r_.__value_.__l.__data_);
        }

        AUT::GroupLines(&v965, &v964);
        v721 = &v965;
        if ((v965.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v721 = v965.__r_.__value_.__r.__words[0];
        }

        LODWORD(v981.__first_) = 136315906;
        *(&v981.__first_ + 4) = "AUSpeakerProtectionV3.cpp";
        WORD2(v981.__begin_) = 1024;
        *(&v981.__begin_ + 6) = 3906;
        WORD1(v981.__end_) = 1024;
        HIDWORD(v981.__end_) = v612;
        LOWORD(v981.__end_cap_.__value_) = 2080;
        *(&v981.__end_cap_.__value_ + 2) = v721;
        _os_log_impl(&dword_1DDB85000, v611, OS_LOG_TYPE_DEBUG, "%25s:%-5d Applying CL params to channel %i:%s", &v981, 0x22u);
        if (SHIBYTE(v965.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v965.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v964.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v964.__r_.__value_.__l.__data_);
        }

LABEL_1648:
        v723 = *(v609 + 1);
        v722 = *(v609 + 2);
        v725 = *(v609 + 3);
        v724 = *(v609 + 4);
        v727 = *(v609 + 5);
        v726 = *(v609 + 6);
        v728 = *(v609 + 7);
        v729 = *(v609 + 8);
        v933 = *(v609 + 9);
        v928 = *(v609 + 10);
        __srcb = *(v609 + 11);
        v921 = *(v609 + 12);
        v730 = *(v609 + 13);
        v731 = *(v609 + 14);
        v916 = *(v609 + 16);
        __valb = *(v609 + 15);
        v732 = v609[68];
        v911 = *(v609 + 19);
        v914 = *(v609 + 18);
        v906 = *(v609 + 21);
        v909 = *(v609 + 20);
        v904 = *(v609 + 22);
        v898 = *(v609 + 24);
        v900 = *(v609 + 23);
        v893 = *(v609 + 26);
        v895 = *(v609 + 25);
        v890 = *(v609 + 28);
        v891 = *(v609 + 27);
        v886 = *(v609 + 30);
        v888 = *(v609 + 29);
        v883 = *(v609 + 32);
        v885 = *(v609 + 31);
        v881 = *(v609 + 34);
        v882 = *(v609 + 33);
        v733 = v609[140];
        v734 = ausdk::AUScope::GetElement((this + 792), *v609);
        ausdk::AUElement::SetParameter(v734, 0x18u, v723);
        ausdk::AUElement::SetParameter(v734, 0x19u, v722);
        ausdk::AUElement::SetParameter(v734, 0x17u, v725);
        ausdk::AUElement::SetParameter(v734, 0x1Bu, v724);
        ausdk::AUElement::SetParameter(v734, 0x1Cu, v727);
        ausdk::AUElement::SetParameter(v734, 0x1Du, v726);
        ausdk::AUElement::SetParameter(v734, 0x1Eu, v728);
        ausdk::AUElement::SetParameter(v734, 0x1Fu, v729);
        ausdk::AUElement::SetParameter(v734, 0x20u, v933);
        ausdk::AUElement::SetParameter(v734, 0x21u, v928);
        ausdk::AUElement::SetParameter(v734, 0x22u, __srcb);
        ausdk::AUElement::SetParameter(v734, 0x23u, v921);
        ausdk::AUElement::SetParameter(v734, 0x14u, v730);
        ausdk::AUElement::SetParameter(v734, 0x2Au, v731);
        if (v733)
        {
          ausdk::AUElement::SetParameter(v734, 0x39u, v914);
          ausdk::AUElement::SetParameter(v734, 0x3Au, v911);
          ausdk::AUElement::SetParameter(v734, 0x2Fu, v909);
          ausdk::AUElement::SetParameter(v734, 0x30u, v906);
          ausdk::AUElement::SetParameter(v734, 0x33u, v904);
          ausdk::AUElement::SetParameter(v734, 0x34u, v900);
          ausdk::AUElement::SetParameter(v734, 0x37u, v898);
          ausdk::AUElement::SetParameter(v734, 0x38u, v895);
          ausdk::AUElement::SetParameter(v734, 0x3Bu, v893);
          ausdk::AUElement::SetParameter(v734, 0x3Cu, v891);
          ausdk::AUElement::SetParameter(v734, 0x35u, v890);
          ausdk::AUElement::SetParameter(v734, 0x36u, v888);
          ausdk::AUElement::SetParameter(v734, 0x31u, v886);
          ausdk::AUElement::SetParameter(v734, 0x32u, v885);
          ausdk::AUElement::SetParameter(v734, 0x3Du, v883);
          ausdk::AUElement::SetParameter(v734, 0x3Eu, v882);
          ausdk::AUElement::SetParameter(v734, 0x3Fu, v881);
        }

        if ((v732 & 1) == 0)
        {
          goto LABEL_1729;
        }

        v735 = spp3Subsystem();
        if (v735)
        {
          v736 = *v735;
          if (!*v735)
          {
            goto LABEL_1728;
          }
        }

        else
        {
          v736 = MEMORY[0x1E69E9C10];
        }

        if (!os_log_type_enabled(v736, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_1728;
        }

        std::string::basic_string[abi:ne200100]<0>(&v960, "PilotDecayTimeStage2");
        v737 = std::string::append(&v960, ": ", 2uLL);
        v738 = *&v737->__r_.__value_.__l.__data_;
        v961.__r_.__value_.__r.__words[2] = v737->__r_.__value_.__r.__words[2];
        *&v961.__r_.__value_.__l.__data_ = v738;
        v737->__r_.__value_.__l.__size_ = 0;
        v737->__r_.__value_.__r.__words[2] = 0;
        v737->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v963, __valb);
        while (2)
        {
          if ((SHIBYTE(v963.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
          {
            if (*(&v962 + SHIBYTE(v963.__r_.__value_.__r.__words[2])) != 48)
            {
              break;
            }

            v739 = SHIBYTE(v963.__r_.__value_.__r.__words[2]) - 1;
            *(&v963.__r_.__value_.__s + 23) = (*(&v963.__r_.__value_.__s + 23) - 1) & 0x7F;
            v740 = &v963;
            goto LABEL_1662;
          }

          v740 = v963.__r_.__value_.__r.__words[0];
          if (*(v963.__r_.__value_.__r.__words[0] + v963.__r_.__value_.__l.__size_ - 1) == 48)
          {
            v739 = --v963.__r_.__value_.__l.__size_;
LABEL_1662:
            v740->__r_.__value_.__s.__data_[v739] = 0;
            continue;
          }

          break;
        }

        cfa = v963;
        memset(&v963, 0, sizeof(v963));
        while (2)
        {
          if ((SHIBYTE(cfa.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
          {
            if (*(&v936 + SHIBYTE(cfa.__r_.__value_.__r.__words[2]) + 7) != 46)
            {
              break;
            }

            v741 = SHIBYTE(cfa.__r_.__value_.__r.__words[2]) - 1;
            *(&cfa.__r_.__value_.__s + 23) = (*(&cfa.__r_.__value_.__s + 23) - 1) & 0x7F;
            v742 = &cfa;
            goto LABEL_1669;
          }

          v742 = cfa.__r_.__value_.__r.__words[0];
          if (*(cfa.__r_.__value_.__r.__words[0] + cfa.__r_.__value_.__l.__size_ - 1) == 46)
          {
            v741 = --cfa.__r_.__value_.__l.__size_;
LABEL_1669:
            v742->__r_.__value_.__s.__data_[v741] = 0;
            continue;
          }

          break;
        }

        *buf = cfa;
        if (SHIBYTE(v963.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v963.__r_.__value_.__l.__data_);
        }

        if (buf[23] >= 0)
        {
          v743 = buf;
        }

        else
        {
          v743 = *buf;
        }

        if (buf[23] >= 0)
        {
          v744 = buf[23];
        }

        else
        {
          v744 = *&buf[8];
        }

        v745 = std::string::append(&v961, v743, v744);
        v746 = *&v745->__r_.__value_.__l.__data_;
        v958.__r_.__value_.__r.__words[2] = v745->__r_.__value_.__r.__words[2];
        *&v958.__r_.__value_.__l.__data_ = v746;
        v745->__r_.__value_.__l.__size_ = 0;
        v745->__r_.__value_.__r.__words[2] = 0;
        v745->__r_.__value_.__r.__words[0] = 0;
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        if (SHIBYTE(v961.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v961.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v960.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v960.__r_.__value_.__l.__data_);
        }

        v747 = std::string::append(&v958, ",\n", 2uLL);
        v748 = *&v747->__r_.__value_.__l.__data_;
        v959.__r_.__value_.__r.__words[2] = v747->__r_.__value_.__r.__words[2];
        *&v959.__r_.__value_.__l.__data_ = v748;
        v747->__r_.__value_.__l.__size_ = 0;
        v747->__r_.__value_.__r.__words[2] = 0;
        v747->__r_.__value_.__r.__words[0] = 0;
        std::string::basic_string[abi:ne200100]<0>(&v960, "PilotEnableThres");
        v749 = std::string::append(&v960, ": ", 2uLL);
        v750 = *&v749->__r_.__value_.__l.__data_;
        v961.__r_.__value_.__r.__words[2] = v749->__r_.__value_.__r.__words[2];
        *&v961.__r_.__value_.__l.__data_ = v750;
        v749->__r_.__value_.__l.__size_ = 0;
        v749->__r_.__value_.__r.__words[2] = 0;
        v749->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v963, v916);
        while (2)
        {
          if ((SHIBYTE(v963.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
          {
            if (*(&v962 + SHIBYTE(v963.__r_.__value_.__r.__words[2])) != 48)
            {
              break;
            }

            v751 = SHIBYTE(v963.__r_.__value_.__r.__words[2]) - 1;
            *(&v963.__r_.__value_.__s + 23) = (*(&v963.__r_.__value_.__s + 23) - 1) & 0x7F;
            v752 = &v963;
            goto LABEL_1690;
          }

          v752 = v963.__r_.__value_.__r.__words[0];
          if (*(v963.__r_.__value_.__r.__words[0] + v963.__r_.__value_.__l.__size_ - 1) == 48)
          {
            v751 = --v963.__r_.__value_.__l.__size_;
LABEL_1690:
            v752->__r_.__value_.__s.__data_[v751] = 0;
            continue;
          }

          break;
        }

        cfa = v963;
        memset(&v963, 0, sizeof(v963));
        while (2)
        {
          if ((SHIBYTE(cfa.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
          {
            if (*(&v936 + SHIBYTE(cfa.__r_.__value_.__r.__words[2]) + 7) != 46)
            {
              break;
            }

            v753 = SHIBYTE(cfa.__r_.__value_.__r.__words[2]) - 1;
            *(&cfa.__r_.__value_.__s + 23) = (*(&cfa.__r_.__value_.__s + 23) - 1) & 0x7F;
            v754 = &cfa;
            goto LABEL_1697;
          }

          v754 = cfa.__r_.__value_.__r.__words[0];
          if (*(cfa.__r_.__value_.__r.__words[0] + cfa.__r_.__value_.__l.__size_ - 1) == 46)
          {
            v753 = --cfa.__r_.__value_.__l.__size_;
LABEL_1697:
            v754->__r_.__value_.__s.__data_[v753] = 0;
            continue;
          }

          break;
        }

        *buf = cfa;
        if (SHIBYTE(v963.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v963.__r_.__value_.__l.__data_);
        }

        if (buf[23] >= 0)
        {
          v755 = buf;
        }

        else
        {
          v755 = *buf;
        }

        if (buf[23] >= 0)
        {
          v756 = buf[23];
        }

        else
        {
          v756 = *&buf[8];
        }

        v757 = std::string::append(&v961, v755, v756);
        v758 = *&v757->__r_.__value_.__l.__data_;
        v981.__end_ = v757->__r_.__value_.__r.__words[2];
        *&v981.__first_ = v758;
        v757->__r_.__value_.__l.__size_ = 0;
        v757->__r_.__value_.__r.__words[2] = 0;
        v757->__r_.__value_.__r.__words[0] = 0;
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        if (SHIBYTE(v961.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v961.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v960.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v960.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v981.__end_) >= 0)
        {
          v759 = &v981;
        }

        else
        {
          v759 = v981.__first_;
        }

        if (SHIBYTE(v981.__end_) >= 0)
        {
          end_high = HIBYTE(v981.__end_);
        }

        else
        {
          end_high = v981.__begin_;
        }

        v761 = std::string::append(&v959, v759, end_high);
        v762 = *&v761->__r_.__value_.__l.__data_;
        cfa.__r_.__value_.__r.__words[2] = v761->__r_.__value_.__r.__words[2];
        *&cfa.__r_.__value_.__l.__data_ = v762;
        v761->__r_.__value_.__l.__size_ = 0;
        v761->__r_.__value_.__r.__words[2] = 0;
        v761->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v981.__end_) < 0)
        {
          operator delete(v981.__first_);
        }

        if (SHIBYTE(v959.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v959.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v958.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v958.__r_.__value_.__l.__data_);
        }

        v763 = &cfa;
        if ((cfa.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v763 = cfa.__r_.__value_.__r.__words[0];
        }

        *buf = 136315650;
        *&buf[4] = "ParamStructWrappers.h";
        *&buf[12] = 1024;
        *&buf[14] = 372;
        *&buf[18] = 2080;
        *&buf[20] = v763;
        _os_log_impl(&dword_1DDB85000, v736, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AUSpeakerProtectionV3:: Found additional pilot tone params %s, applying to scope", buf, 0x1Cu);
        if (SHIBYTE(cfa.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(cfa.__r_.__value_.__l.__data_);
        }

LABEL_1728:
        ausdk::AUElement::SetParameter(v734, 0x43u, __valb);
        ausdk::AUElement::SetParameter(v734, 0x44u, v916);
LABEL_1729:
        v609 += 144;
      }

      while (v609 != v552);
LABEL_1730:
      v764 = *(this + 85);
      v765 = *(this + 84);
      while (v764 != v765)
      {
        v764 = std::unique_ptr<clsp::ClosedLoopParameters>::~unique_ptr[abi:ne200100](v764 - 1);
      }

      *(this + 85) = v765;
      v767 = v966.__r_.__value_.__l.__size_;
      v766 = v966.__r_.__value_.__r.__words[0];
      if (v966.__r_.__value_.__r.__words[0] != v966.__r_.__value_.__l.__size_)
      {
        v768 = (this + 672);
        do
        {
          v769 = *(v766 + 8);
          if (v769)
          {
            *(v766 + 8) = 0;
          }

          v770 = *(this + 86);
          if (v765 >= v770)
          {
            v772 = *v768;
            v773 = v765 - *v768;
            v774 = v773 >> 3;
            v775 = (v773 >> 3) + 1;
            if (v775 >> 61)
            {
              std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
            }

            v776 = v770 - v772;
            if (v776 >> 2 > v775)
            {
              v775 = v776 >> 2;
            }

            if (v776 >= 0x7FFFFFFFFFFFFFF8)
            {
              v777 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v777 = v775;
            }

            v939 = this + 672;
            if (v777)
            {
              std::allocator<std::complex<float> *>::allocate_at_least[abi:ne200100](v777);
            }

            v771 = this;
            *(8 * v774) = v769;
            v765 = (8 * v774 + 8);
            memcpy(0, v772, v773);
            v778 = *(this + 84);
            *(this + 84) = 0;
            *(this + 85) = v765;
            v779 = *(this + 86);
            *(this + 86) = 0;
            cfa.__r_.__value_.__r.__words[2] = v778;
            v938 = v779;
            cfa.__r_.__value_.__r.__words[0] = v778;
            cfa.__r_.__value_.__l.__size_ = v778;
            std::__split_buffer<std::unique_ptr<clsp::ClosedLoopParameters>>::~__split_buffer(&cfa);
          }

          else
          {
            *v765++ = v769;
            v771 = this;
          }

          *(v771 + 85) = v765;
          v766 += 16;
        }

        while (v766 != v767);
      }

      *(this + 529) = 1;
      *buf = &v966;
      std::vector<clsp::plistV9::PerSpeakerParamMapper<clsp::plistV9::ClosedLoopParametersStruct>>::__destroy_vector::operator()[abi:ne200100](buf);
      if (v870)
      {
        operator delete(v870);
      }

      if (!v936)
      {
        v865 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v865, "Could not construct");
      }

      applesauce::CF::details::find_at_key<applesauce::CF::DictionaryRef,char const(&)[22]>(&__p, v936);
      v780 = *(this + 158);
      memset(&v974, 0, sizeof(v974));
      if (v780)
      {
        for (i = 0; i != v780; ++i)
        {
          if (!__p)
          {
            v846 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v846, "Could not construct");
          }

          std::to_string(&v981, i);
          v782 = std::string::insert(&v981, 0, "Channel", 7uLL);
          v783 = *&v782->__r_.__value_.__l.__data_;
          *&buf[16] = *(&v782->__r_.__value_.__l + 2);
          *buf = v783;
          v782->__r_.__value_.__l.__size_ = 0;
          v782->__r_.__value_.__r.__words[2] = 0;
          v782->__r_.__value_.__r.__words[0] = 0;
          applesauce::CF::details::find_at_key<applesauce::CF::DictionaryRef,std::string>(&v973, __p, buf);
          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }

          if (SHIBYTE(v981.__end_) < 0)
          {
            operator delete(v981.__first_);
          }

          if (!v973.__r_.__value_.__r.__words[0])
          {
            v847 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v847, "Could not construct");
          }

          v784 = applesauce::CF::details::at_key<char const* const&>(v973.__r_.__value_.__l.__data_, "SpeakerName");
          if (!v784)
          {
            v848 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v848, "Could not find item");
          }

          applesauce::CF::convert_to<std::string,0>(&v981, v784);
          v785 = spp3Subsystem();
          if (v785)
          {
            v786 = *v785;
            if (!*v785)
            {
              goto LABEL_1767;
            }
          }

          else
          {
            v786 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v786, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315906;
            *&buf[4] = "AUSpeakerProtectionV3.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 3784;
            *&buf[18] = 2080;
            *&buf[20] = "SpeakerName";
            *&buf[28] = 1024;
            *&buf[30] = i;
            _os_log_impl(&dword_1DDB85000, v786, OS_LOG_TYPE_DEBUG, "%25s:%-5d Found the %s plist entry for channel %i.", buf, 0x22u);
          }

LABEL_1767:
          if (SHIBYTE(v981.__end_) < 0)
          {
            std::string::__init_copy_ctor_external(buf, v981.__first_, v981.__begin_);
          }

          else
          {
            *buf = *&v981.__first_;
            *&buf[16] = v981.__end_;
          }

          v787 = v974.__r_.__value_.__l.__size_;
          if (v974.__r_.__value_.__l.__size_ >= v974.__r_.__value_.__r.__words[2])
          {
            v789 = v974.__r_.__value_.__r.__words[0];
            v790 = (v974.__r_.__value_.__l.__size_ - v974.__r_.__value_.__r.__words[0]) >> 5;
            v791 = v790 + 1;
            if ((v790 + 1) >> 59)
            {
              std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
            }

            v792 = v974.__r_.__value_.__r.__words[2] - v974.__r_.__value_.__r.__words[0];
            if ((v974.__r_.__value_.__r.__words[2] - v974.__r_.__value_.__r.__words[0]) >> 4 > v791)
            {
              v791 = v792 >> 4;
            }

            if (v792 >= 0x7FFFFFFFFFFFFFE0)
            {
              v793 = 0x7FFFFFFFFFFFFFFLL;
            }

            else
            {
              v793 = v791;
            }

            if (v793)
            {
              if (!(v793 >> 59))
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v794 = (v974.__r_.__value_.__l.__size_ - v974.__r_.__value_.__r.__words[0]) >> 5;
            v795 = 32 * v790;
            *v795 = i;
            *(v795 + 8) = *buf;
            *(v795 + 24) = *&buf[16];
            memset(buf, 0, 24);
            v796 = v795 - 32 * v794;
            if (v789 != v787)
            {
              v797 = v789;
              v798 = v796;
              do
              {
                *v798 = *v797;
                v799 = *(v797 + 8);
                *(v798 + 24) = *(v797 + 24);
                *(v798 + 8) = v799;
                *(v797 + 16) = 0;
                *(v797 + 24) = 0;
                *(v797 + 8) = 0;
                v797 += 32;
                v798 += 32;
              }

              while (v797 != v787);
              do
              {
                if (*(v789 + 31) < 0)
                {
                  operator delete(*(v789 + 8));
                }

                v789 += 32;
              }

              while (v789 != v787);
            }

            v800 = v795 + 32;
            v801 = v974.__r_.__value_.__r.__words[0];
            v974.__r_.__value_.__r.__words[0] = v796;
            *&v974.__r_.__value_.__r.__words[1] = v800;
            if (v801)
            {
              operator delete(v801);
            }

            v974.__r_.__value_.__l.__size_ = v800;
            if ((buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }
          }

          else
          {
            *v974.__r_.__value_.__l.__size_ = i;
            v788 = *buf;
            *(v787 + 24) = *&buf[16];
            *(v787 + 8) = v788;
            v974.__r_.__value_.__l.__size_ = v787 + 32;
          }

          v802 = spp3Subsystem();
          if (!v802)
          {
            v803 = MEMORY[0x1E69E9C10];
LABEL_1795:
            if (os_log_type_enabled(v803, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315906;
              *&buf[4] = "AUSpeakerProtectionV3.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 3789;
              *&buf[18] = 2080;
              *&buf[20] = "SpeakerName";
              *&buf[28] = 1024;
              *&buf[30] = i;
              _os_log_impl(&dword_1DDB85000, v803, OS_LOG_TYPE_DEBUG, "%25s:%-5d Successfully parsed the %s plist entry for channel %i.", buf, 0x22u);
            }

            goto LABEL_1797;
          }

          v803 = *v802;
          if (*v802)
          {
            goto LABEL_1795;
          }

LABEL_1797:
          if (SHIBYTE(v981.__end_) < 0)
          {
            operator delete(v981.__first_);
          }

          if (v973.__r_.__value_.__r.__words[0])
          {
            CFRelease(v973.__r_.__value_.__l.__data_);
          }
        }
      }

      if (__p)
      {
        CFRelease(__p);
      }

      v804 = spp3Subsystem();
      if (v804)
      {
        v805 = *v804;
        if (!*v804)
        {
          goto LABEL_1810;
        }
      }

      else
      {
        v805 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v805, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        *&buf[4] = "AUSpeakerProtectionV3.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 3931;
        *&buf[18] = 2048;
        *&buf[20] = (v974.__r_.__value_.__l.__size_ - v974.__r_.__value_.__r.__words[0]) >> 5;
        _os_log_impl(&dword_1DDB85000, v805, OS_LOG_TYPE_INFO, "%25s:%-5d Successfully parsed all %lu speaker name params.", buf, 0x1Cu);
      }

LABEL_1810:
      v806 = (this + 1064);
      std::vector<std::string>::clear[abi:ne200100](this + 133);
      v808 = v974.__r_.__value_.__l.__size_;
      for (j = v974.__r_.__value_.__r.__words[0]; j != v808; j += 32)
      {
        if (*(j + 31) < 0)
        {
          std::string::__init_copy_ctor_external(&v973, *(j + 8), *(j + 16));
        }

        else
        {
          v809 = *(j + 8);
          v973.__r_.__value_.__r.__words[2] = *(j + 24);
          *&v973.__r_.__value_.__l.__data_ = v809;
        }

        if (SHIBYTE(v973.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(buf, v973.__r_.__value_.__l.__data_, v973.__r_.__value_.__l.__size_);
        }

        else
        {
          *buf = v973;
        }

        v810 = *(this + 134);
        v811 = *(this + 135);
        if (v810 >= v811)
        {
          v813 = 0xAAAAAAAAAAAAAAABLL * ((v810 - *v806) >> 3);
          v814 = v813 + 1;
          if (v813 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
          }

          v815 = 0xAAAAAAAAAAAAAAABLL * ((v811 - *v806) >> 3);
          if (2 * v815 > v814)
          {
            v814 = 2 * v815;
          }

          if (v815 >= 0x555555555555555)
          {
            v816 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v816 = v814;
          }

          v981.__end_cap_.__value_ = (this + 1064);
          if (v816)
          {
            std::allocator<std::string>::allocate_at_least[abi:ne200100](v816);
          }

          v817 = 24 * v813;
          v818 = *buf;
          *(v817 + 16) = *&buf[16];
          *v817 = v818;
          memset(buf, 0, 24);
          v819 = 24 * v813 + 24;
          v820 = *(this + 133);
          v821 = *(this + 134) - v820;
          v822 = 24 * v813 - v821;
          memcpy((v817 - v821), v820, v821);
          v823 = *(this + 133);
          *(this + 133) = v822;
          *(this + 134) = v819;
          v824 = *(this + 135);
          *(this + 135) = 0;
          v981.__end_ = v823;
          v981.__end_cap_.__value_ = v824;
          v981.__first_ = v823;
          v981.__begin_ = v823;
          std::__split_buffer<std::string>::~__split_buffer(&v981);
          v825 = buf[23];
          *(this + 134) = v819;
          if (v825 < 0)
          {
            operator delete(*buf);
          }
        }

        else
        {
          v812 = *buf;
          *(v810 + 16) = *&buf[16];
          *v810 = v812;
          memset(buf, 0, 24);
          *(this + 134) = v810 + 24;
        }

        if (SHIBYTE(v973.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v973.__r_.__value_.__l.__data_);
        }
      }

      *buf = &v974;
      std::vector<clsp::plistV9::PerSpeakerParamMapper<clsp::plistV9::SpeakerNameStruct>>::__destroy_vector::operator()[abi:ne200100](buf);
      if (!v936)
      {
        v866 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v866, "Could not construct");
      }

      applesauce::CF::details::find_at_key<applesauce::CF::DictionaryRef,char const(&)[22]>(&__p, v936);
      if (*(this + 158))
      {
        if (!__p)
        {
          v849 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v849, "Could not construct");
        }

        std::to_string(&v974, 0);
        v826 = std::string::insert(&v974, 0, "Channel", 7uLL);
        v827 = *&v826->__r_.__value_.__l.__data_;
        *&buf[16] = *(&v826->__r_.__value_.__l + 2);
        *buf = v827;
        v826->__r_.__value_.__l.__size_ = 0;
        v826->__r_.__value_.__r.__words[2] = 0;
        v826->__r_.__value_.__r.__words[0] = 0;
        applesauce::CF::details::find_at_key<applesauce::CF::DictionaryRef,std::string>(&v973, __p, buf);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        if (SHIBYTE(v974.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v974.__r_.__value_.__l.__data_);
        }

        if (!v973.__r_.__value_.__r.__words[0])
        {
          v850 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v850, "Could not construct");
        }

        v828 = applesauce::CF::details::at_key<char const* const&>(v973.__r_.__value_.__l.__data_, "SpeakerGroup");
        if (!v828)
        {
          v851 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v851, "Could not find item");
        }

        applesauce::CF::convert_to<unsigned int,0>(v828);
        v829 = spp3Subsystem();
        if (v829)
        {
          v830 = *v829;
          if (!*v829)
          {
            goto LABEL_1847;
          }
        }

        else
        {
          v830 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v830, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315906;
          *&buf[4] = "AUSpeakerProtectionV3.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 3784;
          *&buf[18] = 2080;
          *&buf[20] = "SpeakerGroup";
          *&buf[28] = 1024;
          *&buf[30] = 0;
          _os_log_impl(&dword_1DDB85000, v830, OS_LOG_TYPE_DEBUG, "%25s:%-5d Found the %s plist entry for channel %i.", buf, 0x22u);
        }

LABEL_1847:
        operator new();
      }

      if (__p)
      {
        CFRelease(__p);
      }

      v831 = spp3Subsystem();
      if (v831)
      {
        v832 = *v831;
        if (!*v831)
        {
          goto LABEL_1856;
        }
      }

      else
      {
        v832 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v832, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        *&buf[4] = "AUSpeakerProtectionV3.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 3950;
        *&buf[18] = 2048;
        *&buf[20] = 0;
        _os_log_impl(&dword_1DDB85000, v832, OS_LOG_TYPE_INFO, "%25s:%-5d Successfully parsed all %lu gain-link group params.", buf, 0x1Cu);
      }

LABEL_1856:
      *(this + 131) = *(this + 130);
      if (!v936)
      {
        v867 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v867, "Could not construct");
      }

      applesauce::CF::details::find_at_key<applesauce::CF::DictionaryRef,char const(&)[22]>(&__p, v936);
      if (*(this + 158))
      {
        if (!__p)
        {
          v852 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v852, "Could not construct");
        }

        std::to_string(&v974, 0);
        v833 = std::string::insert(&v974, 0, "Channel", 7uLL);
        v834 = *&v833->__r_.__value_.__l.__data_;
        *&buf[16] = *(&v833->__r_.__value_.__l + 2);
        *buf = v834;
        v833->__r_.__value_.__l.__size_ = 0;
        v833->__r_.__value_.__r.__words[2] = 0;
        v833->__r_.__value_.__r.__words[0] = 0;
        applesauce::CF::details::find_at_key<applesauce::CF::DictionaryRef,std::string>(&v973, __p, buf);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        if (SHIBYTE(v974.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v974.__r_.__value_.__l.__data_);
        }

        if (!v973.__r_.__value_.__r.__words[0])
        {
          v853 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v853, "Could not construct");
        }

        applesauce::CF::details::find_at_key<BOOL,char const* const&>(v973.__r_.__value_.__l.__data_, "IgnoreTelemetry");
        v835 = spp3Subsystem();
        if (v835)
        {
          v836 = *v835;
          if (!*v835)
          {
            goto LABEL_1870;
          }
        }

        else
        {
          v836 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v836, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315906;
          *&buf[4] = "AUSpeakerProtectionV3.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 3784;
          *&buf[18] = 2080;
          *&buf[20] = "IgnoreTelemetry";
          *&buf[28] = 1024;
          *&buf[30] = 0;
          _os_log_impl(&dword_1DDB85000, v836, OS_LOG_TYPE_DEBUG, "%25s:%-5d Found the %s plist entry for channel %i.", buf, 0x22u);
        }

LABEL_1870:
        operator new();
      }

      if (__p)
      {
        CFRelease(__p);
      }

      v837 = spp3Subsystem();
      if (v837)
      {
        v838 = *v837;
        if (!*v837)
        {
          goto LABEL_1879;
        }
      }

      else
      {
        v838 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v838, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        *&buf[4] = "AUSpeakerProtectionV3.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 3969;
        *&buf[18] = 2048;
        *&buf[20] = 0;
        _os_log_impl(&dword_1DDB85000, v838, OS_LOG_TYPE_INFO, "%25s:%-5d Successfully parsed all %lu ignore-telemetry params.", buf, 0x1Cu);
      }

LABEL_1879:
      v839 = (this + 592);
      if (*(this + 616) == 1)
      {
        if (*v839)
        {
          operator delete(*v839);
        }

        *(this + 616) = 0;
      }

      memset(buf, 0, 24);
      memset(&v974, 0, sizeof(v974));
      buf[24] = 1;
      std::__optional_storage_base<std::vector<BOOL>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<BOOL>,false>>(v839, buf);
      if (buf[24] == 1 && *buf)
      {
        operator delete(*buf);
      }

      if (v974.__r_.__value_.__r.__words[0])
      {
        operator delete(v974.__r_.__value_.__l.__data_);
      }

      if (v936)
      {
        applesauce::CF::details::find_at_key<applesauce::CF::DictionaryRef,char const(&)[19]>(&v974, v936, "AmpEfficiencyCoefs");
        cpms::efficiency::AmpModelFactory(buf, &v974);
      }

      v869 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v869, "Could not construct");
    }
  }

  else
  {
    v608 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v608, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    *&buf[4] = "AUSpeakerProtectionV3.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 3895;
    *&buf[18] = 2048;
    *&buf[20] = (v966.__r_.__value_.__l.__size_ - v966.__r_.__value_.__r.__words[0]) >> 4;
    _os_log_impl(&dword_1DDB85000, v608, OS_LOG_TYPE_INFO, "%25s:%-5d Successfully parsed all %lu ClosedLoopParameters structures.", buf, 0x1Cu);
  }

  goto LABEL_1378;
}