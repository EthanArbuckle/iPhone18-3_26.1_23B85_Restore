uint64_t AGX::ProgramBindingRemap<AGX::HAL300::Encoders,AGX::HAL300::Classes>::ProgramBindingRemap(uint64_t a1, void *a2, const std::vector<unsigned int>::value_type *a3, char a4, char a5, uint64_t a6, uint64_t a7, int a8, int a9, uint64_t *a10)
{
  *(a1 + 48) = 0u;
  v12 = (a1 + 48);
  *(a1 + 96) = 0u;
  v293 = (a1 + 96);
  *(a1 + 112) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *&v13 = 0xFFFFFFFFLL;
  *(&v13 + 1) = 0xFFFFFFFFLL;
  *(a1 + 120) = v13;
  *(a1 + 136) = 0xFFFFFFFFLL;
  *(a1 + 160) = 0u;
  v14 = a1 + 160;
  *(a1 + 216) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 312) = 0;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 416) = 0;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = a7;
  *(a1 + 464) = a4;
  *(a1 + 466) = a9 == 2;
  *(a1 + 467) = 0;
  *(a1 + 468) = 0;
  v292 = a3;
  {
    v288 = a2;
    v289 = a8;
    v290 = a5;
    a3 = v292;
    a5 = v290;
    a8 = v289;
    a2 = v288;
    if (v291)
    {
      AGX::ProgramBindingRemap<AGX::HAL300::Encoders,AGX::HAL300::Classes>::ProgramBindingRemap(AGCDeserializedReply const&,AGX::ProgramType,BOOL,BOOL,AGX::HAL300::IndirectArgumentLayout const* const*,unsigned long long,BOOL,BOOL,AGX::ProgramBindingRemap<AGX::HAL300::Encoders,AGX::HAL300::Classes>::RemapStyle,std::vector<DriverEIOffset> const*)::stress_indirect_gather_ev = 0;
      a3 = v292;
      a5 = v290;
      a8 = v289;
      a2 = v288;
    }
  }

  v15 = (a3 < 9) & (8u >> a3);
  *(a1 + 465) = a5;
  v16 = 0;
  if (a8)
  {
    v17 = a2[144];
    if (v17 && a2[145])
    {
      v16 = (v17 + *v17);
    }

    v18 = (v16 - *v16);
    if (*v18 >= 5u && (v19 = v18[2]) != 0)
    {
      v20 = (v16 + v19 + *(v16 + v19));
    }

    else
    {
      v20 = 0;
    }

    v27 = 0;
    *(a1 + 144) = 0;
    *v14 = 0u;
    *(v14 + 16) = 0u;
    *(v14 + 32) = 0u;
    *(v14 + 48) = 0;
    goto LABEL_111;
  }

  v21 = a2 + 98;
  if (a2[28])
  {
    v22 = a2[29] == 0;
  }

  else
  {
    v22 = 1;
  }

  v23 = 28;
  if (v22)
  {
    v23 = 98;
  }

  else
  {
    v21 = a2 + 28;
  }

  v24 = a2[v23];
  if (v24 && v21[1])
  {
    v16 = (v24 + *v24);
  }

  v25 = (v16 - *v16);
  if (*v25 >= 5u && (v26 = v25[2]) != 0)
  {
    v20 = (v16 + v26 + *(v16 + v26));
  }

  else
  {
    v20 = 0;
  }

  v28 = a2 + 128;
  if (a2[58])
  {
    v29 = a2[59] == 0;
  }

  else
  {
    v29 = 1;
  }

  v30 = 58;
  if (v29)
  {
    v30 = 128;
    v31 = a2 + 128;
  }

  else
  {
    v31 = a2 + 58;
  }

  v32 = a2[v30];
  if (v32)
  {
    v33 = v31[1] == 0;
  }

  else
  {
    v33 = 1;
  }

  v34 = !v33;
  if (v33)
  {
    v35 = 0;
  }

  else
  {
    v35 = (v32 + *v32);
  }

  v36 = (v35 - *v35);
  if (*v36 >= 5u && (v37 = v36[2]) != 0)
  {
    v38 = (v35 + v37 + *(v35 + v37));
  }

  else
  {
    v38 = 0;
  }

  v39 = (v38 - *v38);
  if (*v39 < 0x17u || (v40 = v39[11]) == 0)
  {
    v41 = 0;
    if (!v34)
    {
      goto LABEL_46;
    }

LABEL_48:
    v42 = (v32 + *v32);
    goto LABEL_49;
  }

  v41 = *(v38 + v40);
  if (v34)
  {
    goto LABEL_48;
  }

LABEL_46:
  v42 = 0;
LABEL_49:
  v43 = (v42 - *v42);
  if (*v43 >= 5u && (v44 = v43[2]) != 0)
  {
    v45 = (v42 + v44 + *(v42 + v44));
  }

  else
  {
    v45 = 0;
  }

  v46 = (v45 - *v45);
  if (*v46 < 0x19u || (v47 = v46[12]) == 0)
  {
    v48 = 0;
    if (!v34)
    {
      goto LABEL_56;
    }

LABEL_58:
    v49 = (v32 + *v32);
    goto LABEL_59;
  }

  v48 = *(v45 + v47);
  if (v34)
  {
    goto LABEL_58;
  }

LABEL_56:
  v49 = 0;
LABEL_59:
  v50 = (v49 - *v49);
  if (*v50 >= 5u && (v51 = v50[2]) != 0)
  {
    v52 = (v49 + v51 + *(v49 + v51));
  }

  else
  {
    v52 = 0;
  }

  v53 = (v52 - *v52);
  if (*v53 >= 0x1Bu && (v54 = v53[13]) != 0)
  {
    v55 = *(v52 + v54);
    if (!v34)
    {
LABEL_66:
      v56 = 0;
      goto LABEL_69;
    }
  }

  else
  {
    v55 = 0;
    if (!v34)
    {
      goto LABEL_66;
    }
  }

  v56 = (v32 + *v32);
LABEL_69:
  v57 = (v56 - *v56);
  if (*v57 >= 5u && (v58 = v57[2]) != 0)
  {
    v59 = (v56 + v58 + *(v56 + v58));
  }

  else
  {
    v59 = 0;
  }

  v60 = (v59 - *v59);
  if (*v60 < 0x1Du)
  {
    v61 = 0;
  }

  else
  {
    v61 = v60[14];
    if (v61)
    {
      v61 = *(v59 + v61);
    }
  }

  v62 = 0;
  *(a1 + 176) = v55;
  *(a1 + 184) = v61;
  v63 = (v55 | v41);
  v64 = (v61 | v48);
  *(a1 + 160) = v63;
  *(a1 + 168) = v64;
  v65 = vcnt_s8(v63);
  v65.i16[0] = vaddlv_u8(v65);
  v63.i32[0] = v65.i32[0];
  v66 = vcnt_s8(v64);
  v66.i16[0] = vaddlv_u8(v66);
  *(a1 + 144) = 4 * (v66.i32[0] + v63.i32[0]);
  *(a1 + 208) = (v41 | v48) != 0;
  if (a2[58])
  {
    v67 = a2[59] == 0;
  }

  else
  {
    v67 = 1;
  }

  v68 = 58;
  if (v67)
  {
    v68 = 128;
    v69 = a2 + 128;
  }

  else
  {
    v69 = a2 + 58;
  }

  v70 = a2[v68];
  if (v70 && v69[1])
  {
    v62 = (v70 + *v70);
  }

  v71 = (v62 - *v62);
  if (*v71 < 5u)
  {
    v72 = 0;
  }

  else
  {
    v72 = v71[2];
    if (v72)
    {
      v72 = (v72 + v62 + *(v72 + v62));
    }
  }

  v73 = (v72 - *v72);
  if (*v73 < 0x1Fu)
  {
    v74 = 0;
  }

  else
  {
    v74 = v73[15];
    if (v74)
    {
      v74 = *(v72 + *&v74);
    }
  }

  v75 = 0;
  *(a1 + 192) = v74;
  *(a1 + 200) = 0;
  v76 = vcnt_s8(v74);
  v76.i16[0] = vaddlv_u8(v76);
  *(a1 + 148) = 4 * v76.i32[0];
  if (a2[58])
  {
    v77 = a2[59] == 0;
  }

  else
  {
    v77 = 1;
  }

  v78 = 58;
  if (v77)
  {
    v78 = 128;
  }

  else
  {
    v28 = a2 + 58;
  }

  v79 = a2[v78];
  if (v79 && v28[1])
  {
    v75 = (v79 + *v79);
  }

  v80 = (v75 - *v75);
  if (*v80 < 5u)
  {
    v81 = 0;
  }

  else
  {
    v81 = v80[2];
    if (v81)
    {
      v81 = (v81 + v75 + *(v81 + v75));
    }
  }

  v82 = (v81 - *v81);
  if (*v82 >= 0xBu && (v83 = v82[5]) != 0)
  {
    v27 = 4 * *(v81 + v83 + *(v81 + v83));
  }

  else
  {
    v27 = 0;
  }

LABEL_111:
  *(a1 + 152) = v27;
  if (v15)
  {
    v84 = 44;
  }

  else
  {
    v84 = 49;
  }

  v85 = *v20;
  v86 = *(v20 - v85);
  v87 = *(v20 - v85 + 12);
  v88 = *(v20 + v87);
  v89 = (v20 + v87 + v88);
  v90 = *v89;
  if (v90)
  {
    v91 = 0;
    v92 = 4 * v90;
    v93 = v20 + v87 + v88;
    while (1)
    {
      v94 = v89[v91 / 4 + 1];
      v95 = &v93[v91 + v94 - *(&v89[v91 / 4 + 1] + v94)];
      a3 = *(v95 + 2);
      if (a3 >= 7)
      {
        v96 = *(v95 + 5);
        if (v96)
        {
          if (*&v93[v91 + 4 + v94 + v96] == v84)
          {
            break;
          }
        }
      }

      v91 += 4;
      if (v92 == v91)
      {
        goto LABEL_121;
      }
    }

    *(a1 + 208) = 1;
LABEL_121:
    v97 = 0;
    if (v15)
    {
      v98 = 63;
    }

    else
    {
      v98 = 61;
    }

    v99 = v20 + v87 + v88;
    while (1)
    {
      v100 = v89[v97 / 4 + 1];
      v101 = &v99[v97 + v100 - *(&v89[v97 / 4 + 1] + v100)];
      if (*(v101 + 2) >= 7u)
      {
        v102 = *(v101 + 5);
        if (v102)
        {
          if (*&v99[v97 + 4 + v100 + v102] == v98)
          {
            break;
          }
        }
      }

      v97 += 4;
      if (v92 == v97)
      {
        goto LABEL_130;
      }
    }

    *(a1 + 467) = 1;
  }

LABEL_130:
  if (v86 >= 0xF && *(v20 - v85 + 14))
  {
    v103 = (*(v20 + *(v20 - v85 + 14)) + 7) >> 3;
    v104 = (a1 + 32);
    v105 = *(a1 + 24);
    v106 = (*(a1 + 32) - v105) >> 2;
    if (v103 > v106)
    {
      std::vector<unsigned int>::__append((a1 + 24), v103 - v106, a3);
      v107 = *v20;
      v108 = -v107;
      v86 = *(v20 - v107);
      goto LABEL_137;
    }
  }

  else
  {
    v103 = 0;
    v104 = (a1 + 32);
    v105 = *(a1 + 24);
    v106 = (*(a1 + 32) - v105) >> 2;
  }

  v108 = -v85;
  if (v106 > v103)
  {
    *v104 = v105 + 4 * v103;
  }

LABEL_137:
  v295 = v15;
  if (v86 < 0xF || !*(v20 + v108 + 14))
  {
    v109 = 0;
    v110 = (a1 + 8);
    goto LABEL_152;
  }

  v109 = (*(v20 + *(v20 + v108 + 14)) + 7) >> 3;
  v110 = (a1 + 8);
  v111 = *(a1 + 8);
  v112 = v109 - v111;
  if (v109 <= v111)
  {
LABEL_152:
    *v110 = v109;
    goto LABEL_153;
  }

  v113 = *(a1 + 16);
  if (v113 << 6 >= v112 && v111 <= (v113 << 6) - v112)
  {
    v281 = (*a1 + 8 * (v111 >> 6));
    v282 = *(a1 + 8) & 0x3FLL;
    *(a1 + 8) = v109;
    if (!v112)
    {
      goto LABEL_153;
    }

    goto LABEL_453;
  }

  v296 = 0uLL;
  if ((v113 << 6) > 0x3FFFFFFFFFFFFFFELL)
  {
LABEL_444:
    operator new();
  }

  v115 = v113 << 7;
  v116 = (v109 + 63) & 0x3FFFFFC0;
  if (v115 > v116)
  {
    v116 = v115;
  }

  if (v116)
  {
    if ((v116 & 0x8000000000000000) != 0)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    goto LABEL_444;
  }

  *&v296 = v111 + v112;
  v283 = *a1;
  v281 = 0;
  if (v111 < 1)
  {
    goto LABEL_450;
  }

  v284 = v111 >> 6;
  if (v111 >= 0x40)
  {
    memmove(0, *a1, 8 * v284);
  }

  v281 = (8 * v284);
  v285 = v111 & 0x3F;
  if (v285)
  {
    *(8 * v284) = *(8 * v284) & ~(0xFFFFFFFFFFFFFFFFLL >> -v285) | v283[v284] & (0xFFFFFFFFFFFFFFFFLL >> -v285);
    *a1 = 0;
    *(a1 + 8) = v296;
  }

  else
  {
LABEL_450:
    LODWORD(v285) = 0;
    LODWORD(v282) = 0;
    *a1 = 0;
    *(a1 + 8) = v296;
    if (!v283)
    {
      goto LABEL_452;
    }
  }

  operator delete(v283);
  LODWORD(v282) = v285;
LABEL_452:
  if (!v112)
  {
    goto LABEL_153;
  }

LABEL_453:
  if (v282)
  {
    if ((64 - v282) >= v112)
    {
      v286 = v112;
    }

    else
    {
      v286 = (64 - v282);
    }

    *v281++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v282 - v286)) & (-1 << v282));
    v112 -= v286;
  }

  v287 = v112 >> 6;
  if (v112 >= 0x40)
  {
    bzero(v281, 8 * v287);
  }

  if ((v112 & 0x3F) != 0)
  {
    v281[v287] &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v112 & 0x3F));
  }

LABEL_153:
  v117 = *v20;
  v118 = *(v20 - v117);
  if (v118 <= 0x12)
  {
    begin = v12->__begin_;
    goto LABEL_158;
  }

  begin = v12->__begin_;
  if (!*(v20 - v117 + 18))
  {
LABEL_158:
    v120 = 0;
    v121 = (a1 + 56);
    v122 = (*(a1 + 56) - begin) >> 2;
    goto LABEL_159;
  }

  v120 = (*(v20 + *(v20 - v117 + 18)) + 7) >> 3;
  v121 = (a1 + 56);
  v122 = (*(a1 + 56) - begin) >> 2;
  if (v120 > v122)
  {
    std::vector<unsigned int>::__append(v12, v120 - v122, a3);
    v117 = *v20;
    v123 = -v117;
    v118 = *(v20 - v117);
    goto LABEL_161;
  }

LABEL_159:
  v123 = -v117;
  if (v122 > v120)
  {
    *v121 = &begin[v120];
  }

LABEL_161:
  if (v118 <= 0xA)
  {
    v124 = *(a1 + 72);
    goto LABEL_166;
  }

  v124 = *(a1 + 72);
  if (!*(v20 + v123 + 10))
  {
LABEL_166:
    v125 = 0;
    v126 = (a1 + 80);
    v127 = (*(a1 + 80) - v124) >> 2;
    goto LABEL_167;
  }

  v125 = (*(v20 + *(v20 + v123 + 10)) + 7) >> 3;
  v126 = (a1 + 80);
  v127 = (*(a1 + 80) - v124) >> 2;
  if (v125 > v127)
  {
    std::vector<unsigned int>::__append((a1 + 72), v125 - v127, a3);
    LODWORD(v117) = *v20;
    goto LABEL_169;
  }

LABEL_167:
  if (v127 > v125)
  {
    *v126 = v124 + 4 * v125;
  }

LABEL_169:
  v128 = (v20 - v117);
  v129 = *v128;
  if (a9 != 1)
  {
    if (v129 > 0x16)
    {
      v135 = v128[11];
      v131 = v293->__begin_;
      if (v135)
      {
        v132 = (*(v20 + v135) + 3) >> 2;
        v133 = (a1 + 104);
        v134 = (*(a1 + 104) - v131) >> 2;
        if (v132 > v134)
        {
          std::vector<unsigned int>::__append(v293, v132 - v134);
          goto LABEL_182;
        }

LABEL_180:
        if (v134 > v132)
        {
          *v133 = &v131[v132];
        }

        goto LABEL_182;
      }

LABEL_179:
      v132 = 0;
      v133 = (a1 + 104);
      v134 = (*(a1 + 104) - v131) >> 2;
      goto LABEL_180;
    }

LABEL_178:
    v131 = v293->__begin_;
    goto LABEL_179;
  }

  if (v129 <= 0x16)
  {
    goto LABEL_178;
  }

  v130 = v128[11];
  v131 = v293->__begin_;
  if (!v130)
  {
    goto LABEL_179;
  }

  v132 = (*(v20 + v130) + 3) >> 2;
  v133 = (a1 + 104);
  v134 = (*(a1 + 104) - v131) >> 2;
  if (v132 <= v134)
  {
    goto LABEL_180;
  }

  std::vector<unsigned int>::__append(v293, v132 - v134, a3);
LABEL_182:
  v136 = *v20;
  v137 = (v20 + *(v20 - v136 + 16));
  v138 = (v137 + *v137);
  v139 = *v138;
  if (v139)
  {
    v140 = &v138[v139];
    v141 = *(a1 + 24);
    v142 = *a1;
    while (1)
    {
      v144 = v138[1];
      v145 = (++v138 + v144);
      v146 = *v145;
      v147 = v145 - v146;
      v148 = *(v145 - v146);
      if (v148 < 7)
      {
        v150 = 0;
LABEL_199:
        v154 = *(a1 + 120);
        v155 = *(a1 + 124);
        if (v154 >= v150)
        {
          v154 = v150;
        }

        if (v155 <= v150 + 4)
        {
          v155 = v150 + 4;
        }

        *(a1 + 120) = v154;
        *(a1 + 124) = v155;
        v156 = *v145;
        v157 = -v156;
        v148 = *(v145 - v156);
        v153 = -1;
        v158 = v150;
        goto LABEL_204;
      }

      if (*(v147 + 3))
      {
        v149 = *(v145 + *(v147 + 3));
        if (v148 < 9)
        {
          goto LABEL_194;
        }
      }

      else
      {
        v149 = 0;
        if (v148 < 9)
        {
          goto LABEL_194;
        }
      }

      v151 = *(v147 + 4);
      if (v151)
      {
        v150 = 4 * *(v145 + v151);
        goto LABEL_195;
      }

LABEL_194:
      v150 = 0;
LABEL_195:
      v152 = (v149 >> 20) & 0x7FF;
      if (v149 >= 0)
      {
        v153 = -1;
      }

      else
      {
        v153 = (v149 >> 20) & 0x7FF;
      }

      if ((v149 & 0x80000000) == 0)
      {
        goto LABEL_199;
      }

      v157 = -v146;
      v177 = *(a6 + 8 * v152);
      v178 = v177 + 8;
      if (*v177)
      {
        v179 = 16;
      }

      else
      {
        v179 = *(v177 + 16);
        if (!v179)
        {
          v158 = 0;
          goto LABEL_206;
        }

        v178 = *(v177 + 8);
      }

      v180 = v149 & 0xFFFFF;
      v181 = v179 - 1;
      v182 = v181 & (37 * (v149 & 0xFFFFFu));
      v183 = *(v178 + 16 * v182);
      if (v183 == v180)
      {
LABEL_236:
        v158 = *(v178 + 16 * v182 + 8) >> 3;
      }

      else
      {
        v184 = 1;
        while (v183 != -1)
        {
          v185 = v182 + v184++;
          v182 = v185 & v181;
          v183 = *(v178 + 16 * v182);
          if (v183 == v180)
          {
            goto LABEL_236;
          }
        }

        v158 = 0;
      }

LABEL_204:
      if (v148 >= 5)
      {
        v152 = v153;
LABEL_206:
        if (*(v145 + v157 + 4))
        {
          v159 = *(v145 + *(v145 + v157 + 4)) == 6;
        }

        else
        {
          v159 = 0;
        }

        v153 = v152;
        goto LABEL_211;
      }

      v159 = 0;
LABEL_211:
      v160 = v153 << 20;
      v161 = v150;
      v162 = v158 & 0xFFFFF;
      if (v153 != -1)
      {
        v162 = (v153 << 20) | v158 & 0xFFFFF | 0x80000000;
      }

      *(v141 + 4 * v150) = v162;
      v163 = v150 >> 6;
      v164 = 1 << v161;
      if (v159)
      {
        v165 = v142[v163] | v164;
      }

      else
      {
        v165 = v142[v163] & ~v164;
      }

      v142[v163] = v165;
      v166 = (v158 + 1) & 0xFFFFF;
      if (v153 != -1)
      {
        v166 |= v160 | 0x80000000;
      }

      *(v141 + 4 * (v161 + 1)) = v166;
      v167 = (v161 + 1) >> 6;
      v168 = 1 << (v161 + 1);
      if (v159)
      {
        v169 = v142[v167] | v168;
      }

      else
      {
        v169 = v142[v167] & ~v168;
      }

      v142[v167] = v169;
      v170 = (v158 + 2) & 0xFFFFF;
      if (v153 != -1)
      {
        v170 |= v160 | 0x80000000;
      }

      *(v141 + 4 * (v161 + 2)) = v170;
      v171 = (v161 + 2) >> 6;
      v172 = 1 << (v161 + 2);
      if (v159)
      {
        v173 = v142[v171] | v172;
      }

      else
      {
        v173 = v142[v171] & ~v172;
      }

      v142[v171] = v173;
      if (v153 == -1)
      {
        v174 = (v158 + 3) & 0xFFFFF;
      }

      else
      {
        v174 = (v158 + 3) & 0xFFFFF | v160 | 0x80000000;
      }

      *(v141 + 4 * (v161 + 3)) = v174;
      v175 = (v161 + 3) >> 6;
      v176 = 1 << (v161 + 3);
      if (v159)
      {
        v143 = v142[v175] | v176;
      }

      else
      {
        v143 = v142[v175] & ~v176;
      }

      v142[v175] = v143;
      if (v138 == v140)
      {
        v186 = -*v20;
        goto LABEL_245;
      }
    }
  }

  v186 = -v136;
LABEL_245:
  v187 = *(v20 + v186 + 20);
  v188 = *(v20 + v187);
  v189 = *(v20 + v187 + v188);
  if (!v189)
  {
    goto LABEL_273;
  }

  v190 = 4 * v189;
  v191 = v12->__begin_;
  v192 = v187 + v188;
  do
  {
    v201 = *(v20 + v192 + 4);
    v202 = v201 - *(v20 + v192 + v201 + 4);
    v203 = v20 + v192 + v202;
    v204 = *(v203 + 2);
    if (v204 < 7)
    {
      v193 = 0;
      goto LABEL_248;
    }

    v205 = *(v203 + 5);
    if (v205)
    {
      v206 = *(v20 + v192 + v201 + v205 + 4);
      if (v204 < 9)
      {
        goto LABEL_266;
      }
    }

    else
    {
      v206 = 0;
      if (v204 < 9)
      {
        goto LABEL_266;
      }
    }

    if (!*(v20 + v192 + v202 + 12))
    {
LABEL_266:
      v193 = 0;
      goto LABEL_267;
    }

    v193 = *(v20 + v192 + v201 + *(v20 + v192 + v202 + 12) + 4);
LABEL_267:
    v200 = v206 & 0xFFF00000;
    if ((v206 & 0xFFF00000) == 0x400000 || v206 < 0)
    {
      goto LABEL_258;
    }

    if (v204 >= 9)
    {
      v207 = *(v20 + v192 + v202 + 12);
      if (v207)
      {
        v194 = *(v20 + v192 + v201 + v207 + 4);
        goto LABEL_249;
      }
    }

LABEL_248:
    v194 = 0;
LABEL_249:
    if (*(a1 + 465))
    {
      v195 = 3;
    }

    else
    {
      v195 = 1;
    }

    v196 = v195 * v194;
    v197 = *(a1 + 128);
    if (v197 >= v196)
    {
      v197 = v196;
    }

    v198 = v196 + 2 * *(a1 + 465);
    if (*(a1 + 132) <= v198 + 1)
    {
      v199 = v198 + 1;
    }

    else
    {
      v199 = *(a1 + 132);
    }

    *(a1 + 128) = v197;
    *(a1 + 132) = v199;
    v200 = v193 & 0xFFFFF;
LABEL_258:
    v191[v193] = v200;
    v192 += 4;
    v190 -= 4;
  }

  while (v190);
  v186 = -*v20;
LABEL_273:
  v208 = *(v20 + v186 + 12);
  v209 = *(v20 + v208);
  v210 = (v20 + v208 + v209);
  v211 = *v210;
  if (v211)
  {
    v212 = 0;
    v213 = 4 * v211;
    if (v295)
    {
      v214 = 48;
    }

    else
    {
      v214 = 53;
    }

    v294 = v214;
    v215 = v20 + v208 + v209;
    while (1)
    {
      v217 = v210[v212 / 4 + 1];
      v218 = &v210[v212 / 4] + v217;
      v219 = v217 - *(v218 + 1);
      v220 = &v210[v212 / 4] + v219;
      v221 = *(v220 + 2);
      if (v221 < 7)
      {
        break;
      }

      v222 = *(v220 + 5);
      if (v222)
      {
        LODWORD(v222) = *(&v210[v212 / 4 + 1] + v217 + v222);
      }

      if (v221 >= 9 && *(&v210[v212 / 4 + 3] + v219))
      {
        v223 = (*(&v210[v212 / 4 + 1] + v217 + *(&v210[v212 / 4 + 3] + v219)) >> 1) & 0x1FFFFFFF;
        if ((v222 & 0x80000000) == 0)
        {
          goto LABEL_289;
        }
      }

      else
      {
        v223 = 0;
        if ((v222 & 0x80000000) == 0)
        {
          goto LABEL_289;
        }
      }

      v227 = (v222 >> 20) & 0x7FF;
      v230 = *(&v210[v212 / 4 + 2] + v219);
      if (v230 && v215[v212 + 4 + v217 + v230])
      {
        v231 = 0;
      }

      else
      {
        v231 = v222 & 0xFFFFF;
      }

LABEL_331:
      v236 = v227 + 13;
      v216 = 0x100000;
      switch(v236)
      {
        case 0u:
          v216 = 12582912;
          break;
        case 1u:
          v216 = 11534336;
          break;
        case 2u:
          v216 = 10485760;
          break;
        case 3u:
          v216 = 9437184;
          break;
        case 4u:
          v216 = 0x800000;
          break;
        case 5u:
          v216 = 7340032;
          break;
        case 6u:
          v216 = 6291456;
          break;
        case 7u:
          v216 = 5242880;
          break;
        case 8u:
          v216 = 0x400000;
          break;
        case 9u:
          v216 = 3145728;
          break;
        case 0xAu:
          v216 = 0x200000;
          break;
        case 0xBu:
          break;
        case 0xCu:
          v216 = 0;
          break;
        default:
          v231 |= 0x80000000;
          v216 = 0;
          break;
      }

      *(*(a1 + 72) + 4 * v223) = v216 | v231;
      v212 += 4;
      if (v213 == v212)
      {
        goto LABEL_397;
      }
    }

    v223 = 0;
LABEL_289:
    if (!a9)
    {
      v227 = -1;
      LODWORD(v228) = v223;
LABEL_326:
      v234 = *(a1 + 136);
      v235 = *(a1 + 140);
      if (v234 >= v223)
      {
        v234 = v223;
      }

      if (v235 <= v223 + 1)
      {
        v235 = v223 + 1;
      }

      *(a1 + 136) = v234;
      *(a1 + 140) = v235;
      v231 = v228 & 0xFFFFF;
      goto LABEL_331;
    }

    if (a9 == 2)
    {
      LODWORD(v296) = 0;
      v224 = &v210[v212 / 4] + v217 - *(v218 + 1);
      if (*(v224 + 2) >= 7u && (v225 = *(v224 + 5)) != 0)
      {
        v226 = *(&v210[v212 / 4 + 1] + v217 + v225);
      }

      else
      {
        v226 = 0;
      }

      v232 = AGX::IntersectionArgumentTable<AGX::HAL300::Classes>::remapIntersectionBindPointToScs(v226, &v296);
      v233 = &v215[v212 + v217 - *(v218 + 1)];
      if (*(v233 + 2) >= 7u && (v228 = *(v233 + 5)) != 0)
      {
        LODWORD(v228) = *&v215[v212 + 4 + v217 + v228];
        if ((v228 & 0xFFF00000) == 0x900000)
        {
          v227 = -10;
          goto LABEL_326;
        }

        if (!v232)
        {
          if (v228 <= 0x22)
          {
            v227 = 44;
          }

          else
          {
            LODWORD(v228) = v223;
            v227 = -1;
          }

          goto LABEL_326;
        }
      }

      else if ((v232 & 1) == 0)
      {
        LODWORD(v228) = 0;
        v227 = 44;
        goto LABEL_326;
      }

      v227 = -10;
      LODWORD(v228) = v296;
      goto LABEL_326;
    }

    if (v221 < 7)
    {
      LODWORD(v228) = 0;
      v227 = -3;
      goto LABEL_326;
    }

    v228 = *(&v210[v212 / 4 + 2] + v219 + 2);
    if (!v228)
    {
      v227 = -3;
      goto LABEL_326;
    }

    v229 = *(&v210[v212 / 4 + 1] + v217 + v228);
    LODWORD(v228) = v294;
    if (v229 == v294)
    {
      v227 = -1;
      goto LABEL_326;
    }

    LODWORD(v228) = v229 - 35;
    if (v229 < 0x23)
    {
      v227 = -3;
      LODWORD(v228) = v229;
      goto LABEL_326;
    }

    if (v295)
    {
      if (v229 <= 57)
      {
        if (v229 > 36)
        {
          if (v229 == 37)
          {
            v227 = -7;
            LODWORD(v228) = 2;
            goto LABEL_326;
          }

          if (v229 == 40)
          {
            LODWORD(v228) = 3;
            v227 = -4;
            goto LABEL_326;
          }

          if (v229 != 56)
          {
            goto LABEL_388;
          }

LABEL_383:
          LODWORD(v228) = 0;
          v227 = -6;
          goto LABEL_326;
        }

        if (v229 == 35)
        {
          LODWORD(v228) = 1;
          v227 = -4;
          goto LABEL_326;
        }

        if (v229 == 36)
        {
          LODWORD(v228) = 2;
          v227 = -4;
          goto LABEL_326;
        }

LABEL_388:
        v227 = -7;
        goto LABEL_326;
      }

      if (v229 > 62)
      {
        if (v229 != 63)
        {
          if (v229 == 67)
          {
            LODWORD(v228) = 4;
            v227 = -4;
            goto LABEL_326;
          }

          if (v229 != 68)
          {
            goto LABEL_388;
          }

          goto LABEL_379;
        }

LABEL_375:
        LODWORD(v228) = 0;
        v227 = -13;
        goto LABEL_326;
      }

      if (v229 != 58)
      {
        if (v229 != 62)
        {
          goto LABEL_388;
        }

        goto LABEL_380;
      }

LABEL_382:
      LODWORD(v228) = 1;
      v227 = -6;
      goto LABEL_326;
    }

    if (v292 == 7)
    {
      if (v229 <= 60)
      {
        if (v229 <= 58)
        {
          if (v229 == 35)
          {
            v227 = -4;
            LODWORD(v228) = 9;
            goto LABEL_326;
          }

          if (v229 == 36)
          {
            v227 = -4;
            LODWORD(v228) = 10;
            goto LABEL_326;
          }

          goto LABEL_388;
        }

        if (v229 == 59)
        {
          goto LABEL_383;
        }

        goto LABEL_382;
      }

      if (v229 <= 64)
      {
        if (v229 == 61)
        {
          goto LABEL_375;
        }

        if (v229 != 62)
        {
          goto LABEL_388;
        }

        goto LABEL_384;
      }
    }

    else
    {
      if (v229 <= 58)
      {
        if (v229 <= 43)
        {
          if (v229 == 39)
          {
            v227 = -4;
            LODWORD(v228) = 4;
            goto LABEL_326;
          }

          if (v229 == 41)
          {
            v227 = -4;
            LODWORD(v228) = 5;
            goto LABEL_326;
          }
        }

        else
        {
          switch(v229)
          {
            case ',':
              v227 = -4;
              LODWORD(v228) = 1;
              goto LABEL_326;
            case '-':
              v227 = -4;
              LODWORD(v228) = 2;
              goto LABEL_326;
            case '.':
              v227 = -4;
              LODWORD(v228) = 3;
              goto LABEL_326;
          }
        }

        goto LABEL_388;
      }

      if (v229 <= 61)
      {
        if (v229 == 59)
        {
          goto LABEL_383;
        }

        if (v229 != 60)
        {
          goto LABEL_375;
        }

        goto LABEL_382;
      }

      if (v229 == 62)
      {
LABEL_384:
        v227 = -4;
        LODWORD(v228) = 7;
        goto LABEL_326;
      }
    }

    if (v229 != 65)
    {
      if (v229 != 67)
      {
        goto LABEL_388;
      }

LABEL_379:
      LODWORD(v228) = 0;
      v227 = -4;
      goto LABEL_326;
    }

LABEL_380:
    LODWORD(v228) = 2;
    v227 = -6;
    goto LABEL_326;
  }

LABEL_397:
  v237 = *(a1 + 124);
  if (v237 >= *(a1 + 120))
  {
    v237 = *(a1 + 120);
  }

  *(a1 + 120) = v237;
  v238 = *(a1 + 132);
  if (v238 >= *(a1 + 128))
  {
    v238 = *(a1 + 128);
  }

  *(a1 + 128) = v238;
  v239 = *(a1 + 140);
  if (v239 >= *(a1 + 136))
  {
    v239 = *(a1 + 136);
  }

  *(a1 + 136) = v239;
  v240 = *(a1 + 96);
  v241 = *(a1 + 104);
  v242 = v241 - v240;
  if (a9 != 1)
  {
    if ((v242 & 0x3FFFFFFFCLL) == 0)
    {
      return a1;
    }

    v251 = (v242 >> 2);
    if (v251 >= 8)
    {
      v273 = (v242 >> 2) & 7;
      v252 = v251 - v273;
      v274 = xmmword_29D2F17F0;
      v275 = v240 + 1;
      v276.i64[0] = 0x400000004;
      v276.i64[1] = 0x400000004;
      v277.i64[0] = 0xF0000000FLL;
      v277.i64[1] = 0xF0000000FLL;
      v278.i64[0] = 0x800000008;
      v278.i64[1] = 0x800000008;
      v279 = v251 - v273;
      do
      {
        v275[-1] = vandq_s8(v274, v277);
        *v275 = vandq_s8(vaddq_s32(v274, v276), v277);
        v274 = vaddq_s32(v274, v278);
        v275 += 2;
        v279 -= 8;
      }

      while (v279);
      if (!v273)
      {
        return a1;
      }
    }

    else
    {
      v252 = 0;
    }

    do
    {
      v240->i32[v252] = v252 & 0xFFFFF;
      ++v252;
    }

    while (v251 != v252);
    return a1;
  }

  if (v241 != v240)
  {
    v243 = 0;
    v244 = v242 >> 2;
    v245 = *a10;
    v246 = (a10[1] - *a10) >> 2;
    v247 = 1;
    do
    {
      if (v246 <= v243)
      {
LABEL_463:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v249 = *(v245 + 4 * v243);
      if ((~v249 & 0x3FFFFFFF) != 0)
      {
        if (!(v249 >> 30))
        {
          if (v295)
          {
            v248 = v249 + 68;
          }

          else
          {
            v248 = v249 + 70;
          }

          v249 = v248 & 0x3FFFFFFF;
        }

        v250 = dword_29D2F2770[v249 >> 30] | v249 & 0xFFFFF;
      }

      else
      {
        v250 = 0x400000;
      }

      v240->i32[v243] = v250;
      v243 = v247++;
    }

    while (v244 > v243);
  }

  v253 = *(v20 - *v20 + 24);
  v254 = *(v20 + v253);
  v255 = (v20 + v253 + v254);
  v256 = *v255;
  if (v256)
  {
    v257 = 0;
    v258 = 4 * v256;
    v259 = v20 + v253 + v254;
    do
    {
      v260 = v255[v257 / 4 + 1];
      v261 = &v255[v257 / 4] + v260;
      v262 = *(v261 + 1);
      v263 = v260 - v262;
      v264 = &v255[v257 / 4] + v260 - v262;
      v265 = *(v264 + 2);
      if (v265 < 5)
      {
        goto LABEL_433;
      }

      v266 = -v262;
      v267 = *(v264 + 4);
      if (v267 && *(&v255[v257 / 4 + 1] + v260 + v267) == 64)
      {
        if (v265 >= 9 && *(&v255[v257 / 4 + 3] + v263))
        {
          v268 = *(&v255[v257 / 4 + 1] + v260 + *(&v255[v257 / 4 + 3] + v263));
        }

        else
        {
          v268 = 0;
        }

        if (v268 >= ((a10[1] - *a10) >> 2))
        {
          goto LABEL_463;
        }

        v269 = *(*a10 + 4 * v268) & 0xFFFFF | 0x800000;
        v240->i32[v268] = v269;
        v240->i32[v268 + 1] = v269;
        v270 = *(v261 + 1);
        v266 = -v270;
        v265 = *&v259[v257 + 4 + v260 - v270];
      }

      if (v265 >= 9 && (v271 = *&v259[v257 + 12 + v266 + v260]) != 0)
      {
        v272 = *&v259[v257 + 4 + v260 + v271];
      }

      else
      {
LABEL_433:
        v272 = 0;
      }

      if (v272 >= (a10[1] - *a10) >> 2)
      {
        goto LABEL_463;
      }

      v257 += 4;
    }

    while (v258 != v257);
  }

  return a1;
}

void sub_29CDDBC28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, void **a11, uint64_t a12, void **a13)
{
  v15 = *(v13 + 392);
  if (v15)
  {
    *(v13 + 400) = v15;
    operator delete(v15);
    v16 = *(v13 + 368);
    if (!v16)
    {
LABEL_3:
      v17 = *(v13 + 344);
      if (!v17)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else
  {
    v16 = *(v13 + 368);
    if (!v16)
    {
      goto LABEL_3;
    }
  }

  *(v13 + 376) = v16;
  operator delete(v16);
  v17 = *(v13 + 344);
  if (!v17)
  {
LABEL_4:
    v18 = *(v13 + 320);
    if (!v18)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(v13 + 352) = v17;
  operator delete(v17);
  v18 = *(v13 + 320);
  if (!v18)
  {
LABEL_5:
    v19 = *(v13 + 288);
    if (!v19)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(v13 + 328) = v18;
  operator delete(v18);
  v19 = *(v13 + 288);
  if (!v19)
  {
LABEL_6:
    v20 = *(v13 + 264);
    if (!v20)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(v13 + 296) = v19;
  operator delete(v19);
  v20 = *(v13 + 264);
  if (!v20)
  {
LABEL_7:
    v21 = *(v13 + 240);
    if (!v21)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_24:
  *(v13 + 272) = v20;
  operator delete(v20);
  v21 = *(v13 + 240);
  if (!v21)
  {
LABEL_9:
    v22 = *a10;
    if (*a10)
    {
      *(v13 + 224) = v22;
      operator delete(v22);
    }

    v23 = *a13;
    if (*a13)
    {
      *(v13 + 104) = v23;
      operator delete(v23);
    }

    v24 = *(v13 + 72);
    if (v24)
    {
      *(v13 + 80) = v24;
      operator delete(v24);
    }

    v25 = *a11;
    if (*a11)
    {
      *(v13 + 56) = v25;
      operator delete(v25);
      v26 = *(v13 + 24);
      if (!v26)
      {
LABEL_17:
        v27 = *v13;
        if (!*v13)
        {
          goto LABEL_18;
        }

        goto LABEL_28;
      }
    }

    else
    {
      v26 = *(v13 + 24);
      if (!v26)
      {
        goto LABEL_17;
      }
    }

    *(v13 + 32) = v26;
    operator delete(v26);
    v27 = *v13;
    if (!*v13)
    {
LABEL_18:
      _Unwind_Resume(exception_object);
    }

LABEL_28:
    operator delete(v27);
    _Unwind_Resume(exception_object);
  }

LABEL_8:
  *(v13 + 248) = v21;
  operator delete(v21);
  goto LABEL_9;
}

void std::vector<unsigned int>::__append(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __n, std::vector<unsigned int>::const_reference __x)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (!__n)
    {
LABEL_19:
      this->__end_ = end;
      return;
    }

    v10 = &end[__n];
    v11 = (__n - 1) & 0x3FFFFFFFFFFFFFFFLL;
    if (v11 >= 7)
    {
      v12 = v11 + 1;
      *&v13 = -1;
      *(&v13 + 1) = -1;
      v14 = this->__end_;
      v15 = v12 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        *v14 = v13;
        *(v14 + 1) = v13;
        v14 += 8;
        v15 -= 8;
      }

      while (v15);
      if (v12 == (v12 & 0x7FFFFFFFFFFFFFF8))
      {
        goto LABEL_18;
      }

      end += v12 & 0x7FFFFFFFFFFFFFF8;
    }

    do
    {
      *end++ = -1;
    }

    while (end != v10);
LABEL_18:
    end = v10;
    goto LABEL_19;
  }

  v6 = end - this->__begin_;
  v7 = v6 + __n;
  if ((v6 + __n) >> 62)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v8 = value - this->__begin_;
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

  v16 = 4 * v6;
  v17 = (4 * v6 + 4 * __n);
  v18 = (__n - 1) & 0x3FFFFFFFFFFFFFFFLL;
  if (v18 < 7)
  {
    v19 = (4 * v6);
    goto LABEL_26;
  }

  v20 = v18 + 1;
  *&v21 = -1;
  *(&v21 + 1) = -1;
  v22 = (4 * v6);
  v23 = v20 & 0x7FFFFFFFFFFFFFF8;
  do
  {
    *v22 = v21;
    v22[1] = v21;
    v22 += 2;
    v23 -= 8;
  }

  while (v23);
  if (v20 != (v20 & 0x7FFFFFFFFFFFFFF8))
  {
    v19 = (v16 + 4 * (v20 & 0x7FFFFFFFFFFFFFF8));
    do
    {
LABEL_26:
      *v19++ = -1;
    }

    while (v19 != v17);
  }

  begin = this->__begin_;
  v25 = this->__end_ - this->__begin_;
  v26 = (v16 - v25);
  memcpy((v16 - v25), this->__begin_, v25);
  this->__begin_ = v26;
  this->__end_ = v17;
  this->__end_cap_.__value_ = 0;
  if (begin)
  {

    operator delete(begin);
  }
}

uint64_t AGX::IntersectionArgumentTable<AGX::HAL300::Classes>::remapIntersectionBindPointToScs(unsigned int a1, _DWORD *a2)
{
  *v15 = 0u;
  *__p = 0u;
  v17 = 1065353216;
  std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,unsigned int> const&>(v15, 0x24u);
  std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,unsigned int> const&>(v15, 0x25u);
  std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,unsigned int> const&>(v15, 0x28u);
  std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,unsigned int> const&>(v15, 0x29u);
  std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,unsigned int> const&>(v15, 0x2Bu);
  std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,unsigned int> const&>(v15, 0x2Du);
  std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,unsigned int> const&>(v15, 0x2Fu);
  std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,unsigned int> const&>(v15, 0x30u);
  if (v15[1])
  {
    v4 = vcnt_s8(v15[1]);
    v4.i16[0] = vaddlv_u8(v4);
    if (v4.u32[0] > 1uLL)
    {
      v5 = a1;
      if (v15[1] <= a1)
      {
        v5 = a1 % LODWORD(v15[1]);
      }
    }

    else
    {
      v5 = (LODWORD(v15[1]) - 1) & a1;
    }

    v6 = *(v15[0] + v5);
    if (v6)
    {
      v7 = *v6;
      if (v7)
      {
        if (v4.u32[0] < 2uLL)
        {
          while (1)
          {
            v9 = v7[1];
            if (v9 == a1)
            {
              if (*(v7 + 4) == a1)
              {
                goto LABEL_26;
              }
            }

            else if ((v9 & (v15[1] - 1)) != v5)
            {
              goto LABEL_21;
            }

            v7 = *v7;
            if (!v7)
            {
              goto LABEL_21;
            }
          }
        }

        do
        {
          v8 = v7[1];
          if (v8 == a1)
          {
            if (*(v7 + 4) == a1)
            {
LABEL_26:
              *a2 = *(v7 + 5);
              v10 = 1;
              v11 = __p[0];
              if (!__p[0])
              {
                goto LABEL_23;
              }

              goto LABEL_22;
            }
          }

          else
          {
            if (v8 >= v15[1])
            {
              v8 %= v15[1];
            }

            if (v8 != v5)
            {
              break;
            }
          }

          v7 = *v7;
        }

        while (v7);
      }
    }
  }

LABEL_21:
  v10 = 0;
  v11 = __p[0];
  if (!__p[0])
  {
    goto LABEL_23;
  }

  do
  {
LABEL_22:
    v12 = *v11;
    operator delete(v11);
    v11 = v12;
  }

  while (v12);
LABEL_23:
  v13 = v15[0];
  v15[0] = 0;
  if (v13)
  {
    operator delete(v13);
  }

  return v10;
}

void *std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,unsigned int> const&>(void *result, unsigned int a2)
{
  v2 = result[1];
  if (!v2)
  {
    goto LABEL_22;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*result + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_22:
    operator new();
  }

  if (v3.u32[0] < 2uLL)
  {
    while (1)
    {
      v7 = v6[1];
      if (v7 == a2)
      {
        if (*(v6 + 4) == a2)
        {
          return result;
        }
      }

      else if ((v7 & (v2 - 1)) != v4)
      {
        goto LABEL_22;
      }

      v6 = *v6;
      if (!v6)
      {
        goto LABEL_22;
      }
    }
  }

  while (1)
  {
    v8 = v6[1];
    if (v8 == a2)
    {
      break;
    }

    if (v8 >= v2)
    {
      v8 %= v2;
    }

    if (v8 != v4)
    {
      goto LABEL_22;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_22;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_29CDDCEE8(_Unwind_Exception *a1)
{
  std::mutex::~mutex((v1 + 4328));
  std::unordered_map<std::string,objc_object  {objcproto11MTLFunction}*>::~unordered_map[abi:nn200100](v1 + 4272);
  AGX::FragmentProgramVaryings::~FragmentProgramVaryings((v1 + 4208));
  AGX::HAL300::VertexProgramVariantESLState::~VertexProgramVariantESLState((v1 + 2392));
  AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>>>::~ProgramVariant(v1);
  _Unwind_Resume(a1);
}

void AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>>>::ProgramVariant(unint64_t a1, uint64_t a2, const void **a3, const std::string *a4, uint64_t a5, int a6)
{
  v8 = 0;
  v307 = *MEMORY[0x29EDCA608];
  *(a1 + 8) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 48) = -1;
  *(a1 + 52) = 0u;
  *(a1 + 68) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0xFFFFFFFF00000001;
  *(a1 + 104) = 1610612736;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *&v9 = -1;
  *(&v9 + 1) = -1;
  *(a1 + 144) = 0u;
  *(a1 + 160) = v9;
  *(a1 + 176) = v9;
  *(a1 + 192) = v9;
  *(a1 + 208) = -1;
  *(a1 + 216) = 0;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 224) = 0;
  *(a1 + 272) = 1065353216;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 1065353216;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 1065353216;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 437) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0;
  *(a1 + 528) = 1;
  *(a1 + 612) = 0;
  *(a1 + 580) = 0u;
  *(a1 + 596) = 0u;
  *(a1 + 548) = 0u;
  *(a1 + 564) = 0u;
  *(a1 + 532) = 0u;
  *a1 = &unk_2A23F78D0;
  *(a1 + 616) = a2;
  *(a1 + 968) = 0;
  *(a1 + 1136) = 0;
  *(a1 + 1120) = 0u;
  *(a1 + 1152) = 0u;
  *(a1 + 744) = 0;
  *(a1 + 664) = 0u;
  *(a1 + 680) = 0u;
  *(a1 + 696) = 0u;
  *(a1 + 712) = 0u;
  *(a1 + 728) = 0u;
  *(a1 + 841) = 0u;
  *(a1 + 816) = 0u;
  *(a1 + 832) = 0u;
  *(a1 + 784) = 0u;
  *(a1 + 800) = 0u;
  *(a1 + 752) = 0u;
  *(a1 + 768) = 0u;
  *(a1 + 928) = 0u;
  *(a1 + 944) = 0u;
  *(a1 + 896) = 0u;
  *(a1 + 912) = 0u;
  *(a1 + 864) = 0u;
  *(a1 + 880) = 0u;
  *(a1 + 1097) = 0u;
  *(a1 + 1088) = 0u;
  *(a1 + 1072) = 0u;
  *(a1 + 1056) = 0u;
  *(a1 + 1040) = 0u;
  *(a1 + 1008) = 0u;
  *(a1 + 1024) = 0u;
  *(a1 + 976) = 0u;
  *(a1 + 992) = 0u;
  *(a1 + 1144) = a1 + 1152;
  *(a1 + 1168) = 0xFFFFFFFF00000001;
  *(a1 + 1176) = 1610612736;
  *(a1 + 1216) = 0u;
  *(a1 + 1200) = 0u;
  *(a1 + 1184) = 0u;
  *(a1 + 1280) = -1;
  *(a1 + 1264) = v9;
  *(a1 + 1248) = v9;
  *(a1 + 1232) = v9;
  *(a1 + 1288) = 0;
  *(a1 + 1392) = 0u;
  *(a1 + 1376) = 0u;
  *(a1 + 1360) = 0u;
  *(a1 + 1416) = atomic_fetch_add((a2 + 17008), 1uLL);
  v10 = a1 + 1424;
  *(a1 + 1504) = 0;
  *(a1 + 1512) = 0u;
  *(a1 + 1536) = 0;
  *(a1 + 1544) = 0u;
  *(a1 + 1568) = 0u;
  *(a1 + 1584) = 0u;
  *(a1 + 1600) = 0;
  *(a1 + 1616) = 0u;
  *(a1 + 1632) = 0u;
  *(a1 + 1648) = 0;
  *(a1 + 1664) = 0u;
  *(a1 + 1680) = 0u;
  *(a1 + 1696) = 0;
  *(a1 + 1744) = 0;
  *(a1 + 1728) = 0u;
  *(a1 + 1712) = 0u;
  *(a1 + 1984) = 0;
  *(a1 + 1968) = 0u;
  *(a1 + 1952) = 0u;
  *(a1 + 2000) = 0;
  *(a1 + 2004) = 0;
  *(a1 + 2008) = 0;
  *(a1 + 1424) = 0u;
  *(a1 + 1440) = 0u;
  *(a1 + 1456) = 0u;
  *(a1 + 1472) = 0u;
  *(v10 + 57) = 0u;
  *(a1 + 1760) = 0u;
  *(a1 + 1776) = 0u;
  *(a1 + 1792) = 0u;
  *(a1 + 1808) = 0u;
  *(a1 + 1824) = 0u;
  *(a1 + 1840) = 0u;
  *(a1 + 1856) = 0u;
  *(a1 + 1872) = 0u;
  *(a1 + 1888) = 0u;
  *(a1 + 1904) = 0u;
  *(a1 + 1920) = 0u;
  *(a1 + 1936) = 0;
  *(a1 + 2076) = 0u;
  *(a1 + 2047) = 0u;
  *(a1 + 2063) = 0u;
  *(a1 + 2031) = 0u;
  *(a1 + 2112) = 0;
  *(a1 + 2096) = 0u;
  *(a1 + 2120) = 0u;
  *(a1 + 2136) = 0u;
  *(a1 + 2152) = 0u;
  *(a1 + 2168) = 0u;
  *(a1 + 2184) = 0;
  *(a1 + 2192) = *(a5 + 465);
  *(a1 + 2194) = 0;
  *(a1 + 2208) = 0u;
  *(a1 + 2200) = a1 + 2208;
  *(a1 + 2224) = 0u;
  *(a1 + 2240) = 0u;
  *(a1 + 2256) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2288) = 0u;
  *(a1 + 2304) = 0u;
  *(a1 + 2320) = 0u;
  *(a1 + 2336) = 0u;
  *(a1 + 2352) = 0u;
  *(a1 + 2368) = 0u;
  *(a1 + 2384) = 0;
  if (a3[28])
  {
    v11 = a3[29] == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = 98;
  if (!v11)
  {
    v12 = 28;
  }

  v13 = a3 + 98;
  if (!v11)
  {
    v13 = a3 + 28;
  }

  v14 = a3[v12];
  if (v14 && v13[1])
  {
    v8 = (v14 + *v14);
  }

  v15 = (v8 - *v8);
  if (*v15 >= 5u && (v16 = v15[2]) != 0)
  {
    v299 = (v8 + v16 + *(v8 + v16));
  }

  else
  {
    v299 = 0;
  }

  v17 = 0;
  v18 = a3 + 128;
  if (a3[58])
  {
    v19 = a3[59] == 0;
  }

  else
  {
    v19 = 1;
  }

  v20 = 58;
  if (v19)
  {
    v20 = 128;
  }

  else
  {
    v18 = a3 + 58;
  }

  v21 = a3[v20];
  if (v21 && v18[1])
  {
    v17 = (v21 + *v21);
  }

  v22 = (v17 - *v17);
  if (*v22 >= 5u && (v23 = v22[2]) != 0)
  {
    v24 = (v17 + v23 + *(v17 + v23));
  }

  else
  {
    v24 = 0;
  }

  v25 = *v24;
  v26 = -v25;
  v27 = (v24 - v25);
  v28 = *(v24 - v25);
  if (v28 < 0x25)
  {
    LOBYTE(v29) = 0;
  }

  else
  {
    v29 = v27[18];
    if (v27[18])
    {
      LOBYTE(v29) = *(v24 + v29) != 0;
    }
  }

  *(a1 + 2193) = v29;
  v30 = (v299 - *v299);
  if (*v30 < 0x55u || (v31 = v30[42]) == 0 || !*(v299 + v31))
  {
LABEL_64:
    if (v28 < 7)
    {
      LODWORD(v45) = 0;
    }

    else
    {
      v45 = *(v24 + v26 + 6);
      if (*(v24 + v26 + 6))
      {
        LODWORD(v45) = *(v24 + v45);
      }
    }

    *(a1 + 1408) = v45;
    v46 = (v24 - *v24);
    if (*v46 >= 0x13u && (v47 = v46[9]) != 0)
    {
      v48 = v24 + v47 + *(v24 + v47) + 4;
    }

    else
    {
      v48 = "";
    }

    v297 = (a1 + 1472);
    v298 = (a1 + 1448);
    v49 = (a1 + 2008);
    v294 = (a1 + 1504);
    v295 = v10;
    MEMORY[0x29ED51E00](v10, v48, a3, a4, a5);
    v50 = (v24 - *v24);
    if (*v50 >= 9u && (v51 = v50[4]) != 0)
    {
      v52 = v24 + v51 + *(v24 + v51) + 4;
    }

    else
    {
      v52 = "";
    }

    MEMORY[0x29ED51E00](v298, v52);
    v53 = (v24 - *v24);
    if (*v53 < 0x29u)
    {
      LOBYTE(v54) = 0;
    }

    else
    {
      v54 = v53[20];
      if (v54)
      {
        LOBYTE(v54) = *(v24 + v54) != 0;
      }
    }

    *(a1 + 1496) = v54;
    std::string::operator=(v297, a4);
    v55 = (v24 - *v24);
    if (*v55 >= 0x51u && (v56 = v55[40]) != 0)
    {
      v57 = v24 + v56 + *(v24 + v56) + 4;
    }

    else
    {
      v57 = "";
    }

    MEMORY[0x29ED51E00](a1 + 1504, v57);
    v58 = (v24 - *v24);
    v302 = v24;
    if (*v58 >= 5u && v58[2] && *(a2 + 16608) == 1)
    {
      v59 = a3[1];
      if (v59 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_500;
      }

      v60 = *a3;
      if (v59 >= 0x17)
      {
        operator new();
      }

      __dst[23] = a3[1];
      if (v59)
      {
        memmove(__dst, v60, v59);
      }

      __dst[v59] = 0;
      if (*(a1 + 2031) < 0)
      {
        operator delete(*v49);
      }

      *v49 = *__dst;
      *(a1 + 2024) = *&__dst[16];
      v24 = v302;
      v61 = a3[3];
      if (a3[4])
      {
        v62 = v61 == 0;
      }

      else
      {
        v62 = 1;
      }

      if (v62)
      {
        v61 = a3[73];
      }

      *(a1 + 2032) = v61 - *a3;
    }

    v63 = a3 + 113;
    if (a3[43])
    {
      v64 = a3[44] == 0;
    }

    else
    {
      v64 = 1;
    }

    v65 = 43;
    if (v64)
    {
      v65 = 113;
    }

    else
    {
      v63 = a3 + 43;
    }

    v66 = a3[v65];
    if (!v66 || !v63[1])
    {
LABEL_127:
      v79 = a3;
      v80 = a3 + 138;
      if (a3[68])
      {
        v81 = a3[69] == 0;
      }

      else
      {
        v81 = 1;
      }

      v82 = 68;
      if (v81)
      {
        v82 = 138;
      }

      else
      {
        v80 = a3 + 68;
      }

      v83 = a3[v82];
      v84 = v80[1];
      if (v83)
      {
        v85 = v84 == 0;
      }

      else
      {
        v85 = 1;
      }

      if (v85 || (v86 = (v83 + *v83), v87 = (v86 - *v86), *v87 < 5u) || (v88 = v87[2]) == 0)
      {
        v89 = 0;
      }

      else
      {
        v89 = *(v86 + v88);
      }

      if (getTimebaseInfo(void)::once != -1)
      {
        dispatch_once(&getTimebaseInfo(void)::once, &__block_literal_global_11354);
      }

      *(a1 + 2232) = (v89 * getTimebaseInfo(void)::sTimebaseInfo / unk_2A17A17F0) / 1000000.0;
      v90 = (v299 - *v299);
      if (*v90 < 5u)
      {
        LODWORD(v91) = 0;
      }

      else
      {
        v91 = v90[2];
        if (v91)
        {
          LODWORD(v91) = *(v299 + v91);
        }
      }

      *(a1 + 2224) = v91;
      v92 = (v299 - *v299);
      if (*v92 < 0x2Du)
      {
        LODWORD(v93) = 0;
      }

      else
      {
        v93 = v92[22];
        if (v93)
        {
          LODWORD(v93) = *(v299 + v93);
        }
      }

      *(a1 + 2228) = v93;
      v94 = (v299 - *v299);
      if (*v94 < 0x35u)
      {
        LODWORD(v95) = 0;
      }

      else
      {
        v95 = v94[26];
        if (v95)
        {
          LODWORD(v95) = *(v299 + v95);
        }
      }

      *(a1 + 2268) = v95;
      v96 = (v299 - *v299);
      if (*v96 < 0x43u)
      {
        LODWORD(v97) = 0;
      }

      else
      {
        v97 = v96[33];
        if (v97)
        {
          LODWORD(v97) = *(v299 + v97);
        }
      }

      *(a1 + 2304) = v97;
      v98 = a3 + 108;
      if (a3[38])
      {
        v99 = a3[39] == 0;
      }

      else
      {
        v99 = 1;
      }

      v100 = 38;
      if (v99)
      {
        v100 = 108;
      }

      else
      {
        v98 = a3 + 38;
      }

      v101 = a3[v100];
      if (v101 && v98[1])
      {
        v102 = (v101 + *v101);
        v103 = (v102 - *v102);
        if (*v103 < 0xDu)
        {
          LODWORD(v104) = 0;
        }

        else
        {
          v104 = v103[6];
          if (v104)
          {
            LODWORD(v104) = *(v102 + v104);
          }
        }

        *(a1 + 2228) = v104;
        v105 = (v102 - *v102);
        if (*v105 < 0xBu)
        {
          LODWORD(v106) = 0;
        }

        else
        {
          v106 = v105[5];
          if (v106)
          {
            LODWORD(v106) = *(v102 + v106);
          }
        }

        *(a1 + 2236) = v106;
        v107 = (v102 - *v102);
        if (*v107 < 0x11u)
        {
          LODWORD(v108) = 0;
        }

        else
        {
          v108 = v107[8];
          if (v108)
          {
            LODWORD(v108) = *(v102 + v108);
          }
        }

        *(a1 + 2240) = v108;
        v109 = (v102 - *v102);
        if (*v109 < 0x13u)
        {
          LODWORD(v110) = 0;
        }

        else
        {
          v110 = v109[9];
          if (v110)
          {
            LODWORD(v110) = *(v102 + v110);
          }
        }

        *(a1 + 2244) = v110;
        v111 = (v102 - *v102);
        if (*v111 < 0x17u)
        {
          LODWORD(v112) = 0;
        }

        else
        {
          v112 = v111[11];
          if (v112)
          {
            LODWORD(v112) = *(v102 + v112);
          }
        }

        *(a1 + 2248) = v112;
        v113 = (v102 - *v102);
        if (*v113 < 0x1Bu)
        {
          LODWORD(v114) = 0;
        }

        else
        {
          v114 = v113[13];
          if (v114)
          {
            LODWORD(v114) = *(v102 + v114);
          }
        }

        *(a1 + 2252) = v114;
        v115 = (v102 - *v102);
        if (*v115 < 0x15u)
        {
          LODWORD(v116) = 0;
        }

        else
        {
          v116 = v115[10];
          if (v116)
          {
            LODWORD(v116) = *(v102 + v116);
          }
        }

        *(a1 + 2256) = v116;
        v117 = (v102 - *v102);
        if (*v117 < 0x19u)
        {
          LODWORD(v118) = 0;
        }

        else
        {
          v118 = v117[12];
          if (v118)
          {
            LODWORD(v118) = *(v102 + v118);
          }
        }

        *(a1 + 2260) = v118;
        v119 = (v102 - *v102);
        if (*v119 < 0x1Du)
        {
          LODWORD(v120) = 0;
        }

        else
        {
          v120 = v119[14];
          if (v120)
          {
            LODWORD(v120) = *(v102 + v120);
          }
        }

        *(a1 + 2264) = v120;
        v121 = (v102 - *v102);
        if (*v121 < 0xFu)
        {
          LODWORD(v122) = 0;
        }

        else
        {
          v122 = v121[7];
          if (v122)
          {
            LODWORD(v122) = *(v102 + v122);
          }
        }

        *(a1 + 2268) = v122;
        v123 = (v102 - *v102);
        if (*v123 < 0x1Fu)
        {
          LODWORD(v124) = 0;
        }

        else
        {
          v124 = v123[15];
          if (v124)
          {
            LODWORD(v124) = *(v102 + v124);
          }
        }

        *(a1 + 2272) = v124;
        v125 = (v102 - *v102);
        if (*v125 < 0x21u)
        {
          LODWORD(v126) = 0;
        }

        else
        {
          v126 = v125[16];
          if (v126)
          {
            LODWORD(v126) = *(v102 + v126);
          }
        }

        *(a1 + 2276) = v126;
        v127 = (v102 - *v102);
        if (*v127 < 0x23u)
        {
          LODWORD(v128) = 0;
        }

        else
        {
          v128 = v127[17];
          if (v128)
          {
            LODWORD(v128) = *(v102 + v128);
          }
        }

        *(a1 + 2280) = v128;
        v129 = (v102 - *v102);
        if (*v129 < 0x25u)
        {
          LODWORD(v130) = 0;
        }

        else
        {
          v130 = v129[18];
          if (v130)
          {
            LODWORD(v130) = *(v102 + v130);
          }
        }

        *(a1 + 2284) = v130;
        v131 = (v102 - *v102);
        if (*v131 < 0x27u)
        {
          LODWORD(v132) = 0;
        }

        else
        {
          v132 = v131[19];
          if (v132)
          {
            LODWORD(v132) = *(v102 + v132);
          }
        }

        *(a1 + 2288) = v132;
        v133 = (v102 - *v102);
        if (*v133 < 0x29u)
        {
          LODWORD(v134) = 0;
        }

        else
        {
          v134 = v133[20];
          if (v134)
          {
            LODWORD(v134) = *(v102 + v134);
          }
        }

        *(a1 + 2292) = v134;
        v135 = (v102 - *v102);
        if (*v135 < 0x2Bu)
        {
          LODWORD(v136) = 0;
        }

        else
        {
          v136 = v135[21];
          if (v136)
          {
            LODWORD(v136) = *(v102 + v136);
          }
        }

        *(a1 + 2296) = v136;
        v137 = (v102 - *v102);
        if (*v137 < 7u)
        {
          LODWORD(v138) = 0;
        }

        else
        {
          v138 = v137[3];
          if (v138)
          {
            LODWORD(v138) = *(v102 + v138);
          }
        }

        *(a1 + 2300) = v138;
        v139 = (v102 - *v102);
        if (*v139 >= 5u && (v140 = v139[2]) != 0)
        {
          v141 = *(v102 + v140);
        }

        else
        {
          v141 = 0;
        }

        *(a1 + 2308) = v141;
      }

      if (a3[53])
      {
        v142 = a3[54];
        if (v142)
        {
          v143 = a3[53];
        }

        else
        {
          v143 = a3[123];
        }

        if (v142)
        {
          v144 = a3 + 53;
        }

        else
        {
          v144 = a3 + 123;
        }
      }

      else
      {
        v144 = a3 + 123;
        v143 = a3[123];
      }

      MEMORY[0x29ED51E10](a1 + 2368, v143, v144[1]);
      std::string::push_back((a1 + 2368), 0);
      v145 = *v299;
      v146 = v299 - v145;
      v147 = *(v299 - v145);
      if (v147 < 0x39)
      {
        goto LABEL_270;
      }

      v148 = -v145;
      v149 = *(v146 + 28);
      if (v149)
      {
        v150 = (v299 + v149 + *(v299 + v149));
        if (*v150)
        {
          *(a1 + 2112) = 1;
          v151 = (v150 + v150[1] + 4);
          v152 = (v151 - *v151);
          if (*v152 >= 9u && (v153 = v152[4]) != 0)
          {
            v154 = *(v151 + v153);
          }

          else
          {
            v154 = 0;
          }

          *(a1 + 2312) = v154;
          *(a1 + 2316) = 1;
          v155 = *v299;
          v148 = -v155;
          v147 = *(v299 - v155);
        }
      }

      if (v147 < 0x3B)
      {
        goto LABEL_270;
      }

      v156 = v299 + v148;
      if (*(v156 + 29))
      {
        v157 = (v299 + *(v156 + 29) + *(v299 + *(v156 + 29)));
        v158 = *v157;
        if (v158)
        {
          v159 = v157 + 1;
          do
          {
            v161 = *v159++;
            v160 = v161;
            if (!(v161 >> 20))
            {
              *(a1 + 2096 + 8 * (v160 > 0x3F)) |= 1 << v160;
            }

            --v158;
          }

          while (v158);
        }
      }

      if (v147 < 0x57)
      {
LABEL_270:
        LODWORD(v162) = 0;
      }

      else
      {
        v162 = *(v156 + 43);
        if (*(v156 + 43))
        {
          LODWORD(v162) = *(v299 + v162);
        }
      }

      *(a1 + 1300) = v162;
      v163 = (v299 - *v299);
      if (*v163 >= 0x21u && (v164 = v163[16]) != 0)
      {
        v165 = *(v299 + v164);
      }

      else
      {
        v165 = 0;
      }

      v166 = &qword_2A17A1000;
      {
        getAdditionalSpillBufferBytes(void)::extra = 0;
      }

      *(a1 + 1304) = getAdditionalSpillBufferBytes(void)::extra + v165;
      v167 = v299;
      v168 = (v299 - *v299);
      if (*v168 < 0x59u)
      {
        LODWORD(v169) = 0;
      }

      else
      {
        v169 = v168[44];
        if (v169)
        {
          LODWORD(v169) = *(v299 + v169);
        }
      }

      *(a1 + 1328) = v169;
      v170 = (v299 - *v299);
      if (*v170 < 0x51u)
      {
        LODWORD(v171) = 0;
      }

      else
      {
        v171 = v170[40];
        if (v171)
        {
          LODWORD(v171) = *(v299 + v171);
        }
      }

      *(a1 + 1332) = v171;
      v172 = (v299 - *v299);
      if (*v172 < 0x4Bu)
      {
        LODWORD(v173) = 0;
      }

      else
      {
        v173 = v172[37];
        if (v173)
        {
          LODWORD(v173) = *(v299 + v173);
        }
      }

      *(a1 + 1340) = v173;
      v174 = (v299 - *v299);
      v175 = *v174;
      if (v175 >= 0x25)
      {
        if (v174[18] && *(v299 + v174[18]))
        {
          if (v175 < 0x27)
          {
            LOBYTE(v176) = 0;
            v177 = 1;
            goto LABEL_299;
          }

          v176 = v174[19];
          goto LABEL_293;
        }

        if (v175 >= 0x27)
        {
          v176 = v174[19];
          if (v174[19] && *(v299 + v174[19]))
          {
            v177 = 1;
            LOBYTE(v176) = 1;
            goto LABEL_299;
          }

          if (v175 < 0x29)
          {
            goto LABEL_497;
          }

          if (v174[20] && *(v299 + v174[20]))
          {
LABEL_293:
            v177 = 1;
            goto LABEL_498;
          }

          if (v175 >= 0x71 && (v292 = v174[56]) != 0)
          {
            v177 = *(v299 + v292) != 0;
          }

          else
          {
LABEL_497:
            v177 = 0;
          }

LABEL_498:
          if (v176)
          {
            LOBYTE(v176) = *(v299 + v176) != 0;
          }

LABEL_299:
          *(a1 + 1350) = v176;
          v178 = (v24 - *v24);
          v179 = *v178;
          if (v179 < 0x21)
          {
            v181 = 0;
            LODWORD(v180) = 0;
          }

          else
          {
            v180 = v178[16];
            if (v178[16])
            {
              LODWORD(v180) = *(v24 + v180);
            }

            if (v179 < 0x4D)
            {
              v181 = 0;
            }

            else
            {
              v181 = v178[38];
              if (v178[38])
              {
                v181 = *(v24 + v181);
              }

              if (v179 >= 0x4F)
              {
                v182 = v178[39];
                if (v182)
                {
                  v182 = *(v24 + v182);
                }

LABEL_311:
                *(a1 + 1392) = v180 | (v181 << 32);
                *(a1 + 1400) = v182;
                *(a1 + 1354) = (v177 | v176) & 1;
                v183 = *v299;
                v184 = (v299 - v183);
                v185 = *(v299 - v183);
                if (v185 < 0x37)
                {
                  LOBYTE(v186) = 0;
                }

                else
                {
                  v186 = v184[27];
                  if (v184[27])
                  {
                    LOBYTE(v186) = *(v299 + v186) != 0;
                  }
                }

                *(a1 + 1349) = v186;
                v187 = (v24 - *v24);
                v188 = *v187;
                if (v188 < 0x33)
                {
                  LOBYTE(v189) = 0;
                }

                else
                {
                  v189 = v187[25];
                  if (v187[25])
                  {
                    LOBYTE(v189) = *(v24 + v189) != 0;
                  }
                }

                *(a1 + 1355) = v189;
                if (v185 < 0x3F)
                {
                  LOBYTE(v190) = 0;
                }

                else
                {
                  v190 = v184[31];
                  if (v184[31])
                  {
                    v191 = (v299 + v190 + *(v299 + v190));
                    v190 = *v191;
                    if (v190)
                    {
                      v192 = v191 + 1;
                      while (1)
                      {
                        v194 = *v192++;
                        v193 = v194;
                        if (v194 < 0x36 && ((0x3F000000000777uLL >> v193) & 1) != 0)
                        {
                          break;
                        }

                        if (!--v190)
                        {
                          goto LABEL_328;
                        }
                      }

                      LOBYTE(v190) = 1;
                    }
                  }
                }

LABEL_328:
                *(a1 + 1357) = v190;
                if (v188 <= 0x14)
                {
                  LOBYTE(v196) = 0;
                  *(a1 + 1351) = 0;
                }

                else
                {
                  v195 = v187[10];
                  if (v187[10])
                  {
                    LOBYTE(v195) = *(v24 + v195) != 0;
                  }

                  *(a1 + 1351) = v195;
                  if (v188 < 0x25)
                  {
                    LOBYTE(v196) = 0;
                  }

                  else
                  {
                    v196 = v187[18];
                    if (v187[18])
                    {
                      LOBYTE(v196) = *(v24 + v196) != 0;
                    }
                  }
                }

                v197 = -v183;
                *(a1 + 2193) = v196;
                if (v185 < 0x5D)
                {
                  LOBYTE(v198) = 0;
                }

                else
                {
                  v198 = v184[46];
                  if (v198)
                  {
                    LOBYTE(v198) = *(v299 + v198) != 0;
                  }
                }

                *(a1 + 1356) = v198;
                if (v188 >= 0x23 && (v199 = v187[17]) != 0)
                {
                  *(a1 + 2195) = 1;
                  v200 = (v24 + v199 + *(v24 + v199));
                  v201 = *v200;
                  if (v201)
                  {
                    v202 = &v200[v201];
                    while (1)
                    {
                      v203 = v200[1];
                      v204 = (++v200 + v203);
                      v205 = (v204 - *v204);
                      v206 = *v205;
                      if (v206 < 7)
                      {
                        v207 = 0;
                        v209 = 0;
                        if (v206 < 5)
                        {
                          goto LABEL_352;
                        }

                        v208 = v205[2];
                        if (v208)
                        {
                          goto LABEL_351;
                        }
                      }

                      else if (v205[3])
                      {
                        v207 = *(v204 + v205[3]);
                        v208 = v205[2];
                        if (v208)
                        {
                          goto LABEL_351;
                        }
                      }

                      else
                      {
                        v207 = 0;
                        v208 = v205[2];
                        if (v208)
                        {
LABEL_351:
                          v209 = *(v204 + v208);
                          goto LABEL_352;
                        }
                      }

                      v209 = 0;
LABEL_352:
                      v210 = a1 + 2208;
LABEL_353:
                      v211 = *v210;
                      if (!*v210)
                      {
LABEL_357:
                        operator new();
                      }

                      while (1)
                      {
                        v210 = v211;
                        v212 = *(v211 + 28);
                        if (v209 < v212)
                        {
                          goto LABEL_353;
                        }

                        if (v212 >= v209)
                        {
                          break;
                        }

                        v211 = *(v210 + 8);
                        if (!v211)
                        {
                          goto LABEL_357;
                        }
                      }

                      v79 = a3;
                      *(v210 + 32) = v207;
                      if (v200 == v202)
                      {
                        v167 = v299;
                        v215 = *v299;
                        v197 = -v215;
                        v166 = &qword_2A17A1000;
                        if (*(v299 - v215) < 0x21u)
                        {
LABEL_366:
                          v214 = 0;
                          v213 = v302;
                          goto LABEL_368;
                        }

LABEL_363:
                        v213 = v302;
                        if (*(v167 + v197 + 32))
                        {
                          v214 = *(v167 + *(v167 + v197 + 32));
                        }

                        else
                        {
                          v214 = 0;
                        }

LABEL_368:
                        {
                          *(v166 + 402) = 0;
                        }

                        v216 = *(v166 + 402) + v214;
                        *(a1 + 1296) = v216;
                        v217 = (v299 - *v299);
                        if (*v217 < 0x43u)
                        {
                          LODWORD(v218) = 0;
                        }

                        else
                        {
                          v218 = v217[33];
                          if (v218)
                          {
                            LODWORD(v218) = *(v299 + v218);
                          }
                        }

                        *(a1 + 1308) = v218;
                        v219 = (v299 - *v299);
                        if (*v219 < 5u)
                        {
                          LODWORD(v220) = 0;
                        }

                        else
                        {
                          v220 = v219[2];
                          if (v220)
                          {
                            LODWORD(v220) = *(v299 + v220);
                          }
                        }

                        *(a1 + 1292) = v220;
                        v221 = (v299 - *v299);
                        if (*v221 < 0x51u)
                        {
                          LODWORD(v222) = 0;
                        }

                        else
                        {
                          v222 = v221[40];
                          if (v222)
                          {
                            LODWORD(v222) = *(v299 + v222);
                          }
                        }

                        *(a1 + 1324) = v222;
                        v223 = (v299 - *v299);
                        if (*v223 < 0x4Fu)
                        {
                          LODWORD(v224) = 0;
                        }

                        else
                        {
                          v224 = v223[39];
                          if (v224)
                          {
                            LODWORD(v224) = *(v299 + v224);
                          }
                        }

                        *(a1 + 1336) = v224;
                        *(a1 + 1344) = *(a5 + 468);
                        v225 = (v299 - *v299);
                        if ((*(v299 + v225[6] + *(v299 + v225[6])) | v216) != 0 || v177)
                        {
                          goto LABEL_396;
                        }

                        v226 = *v225;
                        if (v226 < 0x21)
                        {
                          v227 = 0;
                        }

                        else if (v225[16])
                        {
                          v227 = *(v299 + v225[16]);
                          if (v226 >= 0x43)
                          {
LABEL_487:
                            if (v225[33])
                            {
                              v228 = *(v299 + v225[33]);
                              {
                                goto LABEL_489;
                              }

                              goto LABEL_392;
                            }
                          }
                        }

                        else
                        {
                          v227 = 0;
                          if (v226 >= 0x43)
                          {
                            goto LABEL_487;
                          }
                        }

                        v228 = 0;
                        {
LABEL_489:
                          {
                            *(v166 + 402) = 0;
                          }
                        }

LABEL_392:
                        if (v228 + v227 + *(v166 + 402))
                        {
LABEL_396:
                          LOBYTE(v231) = 1;
                          v230 = a6;
                        }

                        else
                        {
                          v229 = (v299 - *v299);
                          v230 = a6;
                          if (*v229 < 0x5Fu)
                          {
                            LOBYTE(v231) = 0;
                          }

                          else
                          {
                            v231 = v229[47];
                            if (v231)
                            {
                              LOBYTE(v231) = *(v299 + v231) != 0;
                            }
                          }
                        }

                        *(a1 + 1348) = v231;
                        v232 = (v213 - *v213);
                        if (*v232 < 0x11u)
                        {
                          LODWORD(v233) = 0;
                        }

                        else
                        {
                          v233 = v232[8];
                          if (v233)
                          {
                            LODWORD(v233) = *(v213 + v233);
                          }
                        }

                        v234 = a2 + 6328;
                        v235 = (a1 + 1808);
                        *(a1 + 2000) = v233;
                        {
                        }

                        v236 = v79 + 3;
                        if (v79[4])
                        {
                          v237 = v79[3] == 0;
                        }

                        else
                        {
                          v237 = 1;
                        }

                        v238 = v79 + 73;
                        if (v237)
                        {
                          v239 = v79 + 73;
                        }

                        else
                        {
                          v239 = v79 + 3;
                        }

                        v240 = v239[1];
                        v241 = v230 == 0;
                        v242 = 168;
                        if (v230)
                        {
                          v242 = 504;
                        }

                        v243 = v234 + v242;
                        if (v241)
                        {
                          v244 = 0;
                        }

                        else
                        {
                          v244 = 0x1000000000;
                        }

                        AGX::Heap<true>::allocateImpl(__dst, v243, v240, (a1 + 2056));
                        *(a1 + 2088) += *&__dst[16];
                        v245 = *&__dst[16];
                        *v235 = *__dst;
                        *(a1 + 1824) = v245;
                        *(a1 + 1833) = *&__dst[25];
                        *(a1 + 1528) = *(a1 + 1808) + v244;
                        *(a1 + 1560) = v243;
                        v246 = *(a1 + 1824);
                        *(a1 + 1568) = *v235;
                        *(a1 + 1584) = v246;
                        *(a1 + 1593) = *(a1 + 1833);
                        if (*v236)
                        {
                          v247 = v79[4];
                          if (v247)
                          {
                            v248 = *v236;
                          }

                          else
                          {
                            v248 = v79[73];
                          }

                          if (v247)
                          {
                            v238 = v79 + 3;
                          }
                        }

                        else
                        {
                          v248 = *v238;
                        }

                        memcpy(*(a1 + 1816), v248, v238[1]);
                        v249 = *(a1 + 1816);
                        v250 = *(a1 + 1824);
                        *(a1 + 1536) = *(a1 + 1528);
                        *(a1 + 1544) = v249;
                        *(a1 + 1552) = v250;
                        v251 = v79 + 8;
                        if (v79[8])
                        {
                          if (v79[9])
                          {
                            v252 = v79 + 8;
                          }

                          else
                          {
                            v252 = v79 + 78;
                          }

                          v253 = v252[1];
                          if (!v253)
                          {
                            goto LABEL_437;
                          }
                        }

                        else
                        {
                          v253 = v79[79];
                          if (!v253)
                          {
                            goto LABEL_437;
                          }
                        }

                        AGX::Heap<true>::allocateImpl(__dst, v234, v253, (a1 + 2064));
                        *(a1 + 2088) += *&__dst[16];
                        v254 = *&__dst[16];
                        *(a1 + 1856) = *__dst;
                        *(a1 + 1872) = v254;
                        *(a1 + 1881) = *&__dst[25];
                        v255 = *(a1 + 1872);
                        *(a1 + 1616) = *(a1 + 1856);
                        *(a1 + 1632) = v255;
                        *(a1 + 1641) = *(a1 + 1881);
                        if (*v251)
                        {
                          v256 = v79[9];
                          if (v256)
                          {
                            v257 = *v251;
                          }

                          else
                          {
                            v257 = v79[78];
                          }

                          if (v256)
                          {
                            v258 = v79 + 8;
                          }

                          else
                          {
                            v258 = v79 + 78;
                          }
                        }

                        else
                        {
                          v258 = v79 + 78;
                          v257 = v79[78];
                        }

                        memcpy(*(a1 + 1864), v257, v258[1]);
LABEL_437:
                        v259 = v79 + 13;
                        if (v79[13])
                        {
                          if (v79[14])
                          {
                            v260 = v79 + 13;
                          }

                          else
                          {
                            v260 = v79 + 83;
                          }

                          v261 = v260[1];
                          if (!v261)
                          {
                            goto LABEL_453;
                          }
                        }

                        else
                        {
                          v261 = v79[84];
                          if (!v261)
                          {
                            goto LABEL_453;
                          }
                        }

                        AGX::Heap<true>::allocateImpl(__dst, v234, v261, (a1 + 2072));
                        *(a1 + 2088) += *&__dst[16];
                        v262 = *&__dst[16];
                        *(a1 + 1904) = *__dst;
                        *(a1 + 1920) = v262;
                        *(a1 + 1929) = *&__dst[25];
                        v263 = *(a1 + 1920);
                        *(a1 + 1664) = *(a1 + 1904);
                        *(a1 + 1680) = v263;
                        *(a1 + 1689) = *(a1 + 1929);
                        if (*v259)
                        {
                          v264 = v79[14];
                          if (v264)
                          {
                            v265 = *v259;
                          }

                          else
                          {
                            v265 = v79[83];
                          }

                          if (v264)
                          {
                            v266 = v79 + 13;
                          }

                          else
                          {
                            v266 = v79 + 83;
                          }
                        }

                        else
                        {
                          v266 = v79 + 83;
                          v265 = v79[83];
                        }

                        memcpy(*(a1 + 1912), v265, v266[1]);
                        v267 = *(a1 + 1920);
                        *(a1 + 1760) = *(a1 + 1904);
                        *(a1 + 1776) = v267;
LABEL_453:
                        v268 = v79 + 23;
                        if (v79[23])
                        {
                          if (!v79[24])
                          {
                            v268 = v79 + 93;
                          }

                          v269 = v268[1];
                          if (v269)
                          {
LABEL_457:
                            AGX::Heap<true>::allocateImpl(__dst, v234, v269, (a1 + 2080));
                            *(a1 + 2088) += *&__dst[16];
                            v270 = *&__dst[16];
                            *(a1 + 1952) = *__dst;
                            *(a1 + 1968) = v270;
                            *(a1 + 1977) = *&__dst[25];
                            v271 = *(a1 + 1968);
                            *(a1 + 1712) = *(a1 + 1952);
                            *(a1 + 1728) = v271;
                            *(a1 + 1737) = *(a1 + 1977);
                            v272 = *(a1 + 1968);
                            *(a1 + 1784) = *(a1 + 1952);
                            *(a1 + 1800) = v272;
                          }
                        }

                        else
                        {
                          v269 = v79[94];
                          if (v269)
                          {
                            goto LABEL_457;
                          }
                        }

                        if ((*(a1 + 1496) & 1) != 0 || *(*(a1 + 616) + 16945) == 1)
                        {
                          {
                            {
                              v274 = v295;
                              if (*(a1 + 1447) < 0)
                              {
                                v274 = *v295;
                              }

                              v275 = a1 + 1472;
                              if (*(a1 + 1495) < 0)
                              {
                                v275 = v297->__r_.__value_.__r.__words[0];
                              }

                              v276 = a1 + 1448;
                              if (*(a1 + 1471) < 0)
                              {
                                v276 = *v298;
                              }

                              v277 = *(a1 + 1408);
                              v278 = *(a1 + 1416);
                              v279 = a1 + 1504;
                              if (*(a1 + 1527) < 0)
                              {
                                v279 = *v294;
                              }

                              v280 = *(a1 + 1528);
                              v281 = *(a1 + 1824);
                              *__dst = 136448002;
                              *&__dst[4] = v274;
                              *&__dst[12] = 2082;
                              *&__dst[14] = v275;
                              *&__dst[22] = 2082;
                              *&__dst[24] = v276;
                              *&__dst[32] = 1026;
                              *&__dst[34] = v277;
                              *&__dst[38] = 2050;
                              *&__dst[40] = v278;
                              *__p = 2082;
                              *&__p[2] = v279;
                              *&__p[10] = 2050;
                              *&__p[12] = v280;
                              v305 = 2050;
                              v306 = v281;
                              _os_signpost_emit_with_name_impl(&dword_29CA13000, v273, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "FunctionCompiled", "Name=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t  Label=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t  Type=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t  ID=%{public,signpost.description:attribute}u \t\t\t\t\t\t\t\t  UniqueID=%{public,signpost.description:attribute}llu \t\t\t\t\t\t\t\t  RequestHash=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t  Addr=%{public,signpost.description:attribute}llu \t\t\t\t\t\t\t\t  Size=%{public,signpost.description:attribute}zu", __dst, 0x4Eu);
                            }
                          }

                          v282 = v295;
                          if (*(a1 + 1447) < 0)
                          {
                            v282 = *v295;
                          }

                          v283 = a1 + 1472;
                          if (*(a1 + 1495) < 0)
                          {
                            v283 = v297->__r_.__value_.__r.__words[0];
                          }

                          v284 = *(a1 + 616);
                          v285 = a1 + 1448;
                          if (*(a1 + 1471) < 0)
                          {
                            v285 = *v298;
                          }

                          v286 = a1 + 1504;
                          if (*(a1 + 1527) < 0)
                          {
                            v286 = *v294;
                          }

                          v287 = *(a1 + 1408);
                          v288 = *(a1 + 1416);
                          v289 = *(a1 + 1528);
                          v290 = *(a1 + 1824);
                          v291 = *(a1 + 1496);
                          *__dst = v282;
                          *&__dst[8] = v283;
                          *&__dst[16] = v285;
                          *&__dst[24] = v286;
                          *&__dst[32] = v287;
                          *&__dst[40] = v288;
                          *__p = v289;
                          *&__p[8] = v290;
                          __p[16] = v291;
                          AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::registerVariantEventInfo(v284, a1, __dst);
                        }

                        operator new();
                      }
                    }
                  }
                }

                else
                {
                  *(a1 + 2195) = 0;
                }

                if (v185 < 0x21)
                {
                  goto LABEL_366;
                }

                goto LABEL_363;
              }
            }
          }

          v182 = 0;
          goto LABEL_311;
        }
      }

      v177 = 0;
      LOBYTE(v176) = 0;
      goto LABEL_299;
    }

    v67 = (v66 + *v66);
    v68 = (v67 - *v67);
    v69 = *v68;
    if (v68[2])
    {
      v70 = (v67 + v68[2] + *(v67 + v68[2]));
      if (v69 < 7)
      {
        goto LABEL_116;
      }
    }

    else
    {
      v70 = 0;
      if (v69 < 7)
      {
        goto LABEL_116;
      }
    }

    v71 = v68[3];
    if (v71)
    {
      v72 = v67 + v71 + *(v67 + v71);
      if (!*v70)
      {
        goto LABEL_127;
      }

      goto LABEL_117;
    }

LABEL_116:
    v72 = 0;
    if (!*v70)
    {
      goto LABEL_127;
    }

LABEL_117:
    v73 = 0;
    v74 = v72 + 4;
    v75 = (v70 + 2);
    while (1)
    {
      v76 = *(v75 - 1);
      v77 = strlen(&v75[v76]);
      if (v77 > 0x7FFFFFFFFFFFFFF7)
      {
        break;
      }

      v78 = v77;
      if (v77 >= 0x17)
      {
        operator new();
      }

      __dst[23] = v77;
      if (v77)
      {
        memmove(__dst, &v75[v76], v77);
      }

      __dst[v78] = 0;
      std::vector<std::string>::push_back[abi:nn200100](a1 + 2320, __dst);
      v24 = v302;
      if ((__dst[23] & 0x80000000) != 0)
      {
        operator delete(*__dst);
      }

      *__dst = *&v74[4 * v73];
      std::vector<unsigned int>::push_back[abi:nn200100](a1 + 2344, __dst);
      ++v73;
      v75 += 4;
      if (v73 >= *v70)
      {
        goto LABEL_127;
      }
    }

LABEL_500:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v28 < 0x45)
  {
    if (v28 < 0x3D)
    {
      LOWORD(v33) = 0;
      if (v28 < 0x3B)
      {
        LODWORD(v35) = 0;
        v36 = 0;
        LOWORD(v32) = 0;
        v34 = 0;
LABEL_57:
        *(a1 + 1168) = v35;
        v37 = v33 + v35 - 1;
        v38 = -v35;
        v39 = *(a1 + 1176);
        v40 = (v32 | ((v38 & v37) << 32) | (v34 << 48)) + v36 + (v39 & 0xFF000000);
        *(a1 + 1176) = v40;
        if (v40 != v39)
        {
          *(a1 + 1200) = 0uLL;
          *(a1 + 1216) = 0uLL;
          *(a1 + 1184) = 0uLL;
          *&v41 = -1;
          *(&v41 + 1) = -1;
          *(a1 + 1232) = v41;
          *(a1 + 1248) = v41;
          *(a1 + 1264) = v41;
          *(a1 + 1280) = -1;
        }

        v42 = (v24 - *v24);
        if (*v42 < 0x57u)
        {
          LODWORD(v43) = 0;
        }

        else
        {
          v43 = v42[43];
          if (v43)
          {
            LODWORD(v43) = *(v24 + v43);
          }
        }

        *(a1 + 1288) = v43;
        v44 = *v24;
        v26 = -v44;
        v28 = *(v24 - v44);
        goto LABEL_64;
      }

      LOWORD(v32) = 0;
      v34 = v27[29];
      if (!v27[29])
      {
LABEL_42:
        if (v28 < 0x3F)
        {
          LODWORD(v35) = 0;
          v36 = 0;
        }

        else
        {
          v35 = v27[31];
          if (v27[31])
          {
            v35 = *(v24 + v35);
          }

          if (v28 < 0x4B)
          {
            v36 = 0;
          }

          else
          {
            v36 = v27[37];
            if (v27[37])
            {
              v36 = *(v24 + v36) << 16;
            }
          }
        }

        goto LABEL_57;
      }

LABEL_41:
      v34 = *(v24 + v34);
      goto LABEL_42;
    }

    LOWORD(v32) = 0;
    v33 = v27[30];
    if (v27[30])
    {
      goto LABEL_39;
    }
  }

  else
  {
    v32 = v27[34];
    if (v27[34])
    {
      LODWORD(v32) = *(v24 + v32);
    }

    v33 = v27[30];
    if (v27[30])
    {
LABEL_39:
      LODWORD(v33) = *(v24 + v33);
    }
  }

  v34 = v27[29];
  if (!v27[29])
  {
    goto LABEL_42;
  }

  goto LABEL_41;
}

void sub_29CDDF044(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void **a9, char *a10, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, void **a15, void **a16, void **a17, void **a18, void **a19, uint64_t a20, void **a21, void **a22, void **a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  CompileStatistics::~CompileStatistics(a18);
  std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*a23);
  std::vector<std::shared_ptr<AGX::HAL300::IntersectionPipelineSet>>::~vector[abi:nn200100]((v45 + 2168));
  v47 = *a17;
  if (*a17)
  {
    *(v45 + 2152) = v47;
    operator delete(v47);
  }

  v48 = *a19;
  if (*a19)
  {
    *(v45 + 2128) = v48;
    operator delete(v48);
  }

  if (*a10 < 0)
  {
    operator delete(*a9);
    if ((*(v45 + 1527) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v45 + 1527) & 0x80000000) == 0)
  {
LABEL_7:
    if (*(v45 + 1495) < 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

  operator delete(*a15);
  if (*(v45 + 1495) < 0)
  {
LABEL_8:
    operator delete(*a21);
    if ((*(v45 + 1471) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  if ((*(v45 + 1471) & 0x80000000) == 0)
  {
LABEL_9:
    if ((*(v45 + 1447) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_27:
  operator delete(*a22);
  if ((*(v45 + 1447) & 0x80000000) == 0)
  {
LABEL_11:
    std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*(v45 + 1152));
    AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>>>::GlobalBindingTableInfo::~GlobalBindingTableInfo((v45 + 1016));
    v49 = *(v45 + 936);
    if (v49)
    {
      *(v45 + 944) = v49;
      operator delete(v49);
    }

    v50 = *(v45 + 912);
    if (v50)
    {
      *(v45 + 920) = v50;
      operator delete(v50);
    }

    v51 = (v45 + 864);
    v52 = *(v45 + 888);
    if (v52)
    {
      *(v45 + 896) = v52;
      operator delete(v52);
    }

    v53 = *v51;
    if (*v51)
    {
      *(v45 + 872) = v53;
      operator delete(v53);
    }

    AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::~SegmentedArgumentGatherer(v45 + 776);
    v54 = *a11;
    if (*a11)
    {
      *(v45 + 760) = v54;
      operator delete(v54);
    }

    AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::~SegmentedArgumentGatherer(a12);
    v55 = *(v45 + 592);
    if (v55)
    {
      *(v45 + 600) = v55;
      operator delete(v55);
    }

    AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::LinkInfo::~LinkInfo(a13);
    _Unwind_Resume(a1);
  }

LABEL_10:
  operator delete(*a16);
  goto LABEL_11;
}

void AGX::VertexProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::finalize(uint64_t a1)
{
  std::mutex::lock((a1 + 4328));
  v2 = *(a1 + 584);
  if (v2)
  {
    v3 = *(a1 + 576);
    v4 = *(v2 + 208);
    v6 = *(v2 + 144);
    v5 = *(v2 + 148);
    if (v4)
    {
      v7 = *(v2 + 144);
    }

    else
    {
      v7 = 0;
    }

    v8 = *(v2 + 176);
    if (*(v2 + 176) == 0)
    {
      v6 = 0;
    }

    v9 = (*(v2 + 132) + *(v2 + 124) + *(v2 + 140) - (*(v2 + 128) + *(v2 + 120) + *(v2 + 136)));
    *(a1 + 656) = v7 + v5 + v6 + *(v2 + 152) + ((v9 + 3) & 0xFFFFFFFC);
    v10 = (a1 + 664);
    v11 = *(a1 + 664);
    v12 = (*(a1 + 672) - v11) >> 2;
    if (v9 <= v12)
    {
      if (v9 < v12)
      {
        *(a1 + 672) = v11 + 4 * v9;
      }
    }

    else
    {
      std::vector<unsigned int>::__append((a1 + 664), v9 - v12);
      v8 = *(v2 + 176);
      v5 = *(v2 + 148);
      v4 = *(v2 + 208);
    }

    if (v4)
    {
      v13 = *(v2 + 144);
    }

    else
    {
      v13 = 0;
    }

    if (v8 | *(v2 + 184))
    {
      v14 = *(v2 + 144);
    }

    else
    {
      v14 = 0;
    }

    v15 = (v5 + v13 + v14);
    v16 = *(a1 + 752);
    v17 = (*(a1 + 760) - v16) >> 2;
    if (v15 <= v17)
    {
      if (v15 < v17)
      {
        *(a1 + 760) = v16 + 4 * v15;
      }
    }

    else
    {
      std::vector<unsigned int>::__append((a1 + 752), v15 - v17);
    }

    v18 = *v3;
    v19 = v3[1];
    if (*v3 != v19)
    {
      do
      {
        v20 = *v18;
        v21 = *(*v18 + 4);
        if ((v21 & 0x80000000) == 0)
        {
          v22 = 4 * *(v20 + 8) - *(v2 + 120);
          v23 = *v20 == 6 ? 32 : 6;
          v24 = (v23 & 0xF800007F | ((v21 & 0xFFFFF) << 7)) >> 3;
          *(*v10 + 4 * v22) = v24 | 0x40000008;
          v24 += 1073741832;
          *(*v10 + 4 * (v22 + 1)) = v24 + 1;
          *(*v10 + 4 * (v22 + 2)) = v24 + 2;
          *(*v10 + 4 * (v22 + 3)) = v24 + 3;
          if (*(v20 + 12) == 1)
          {
            *(a1 + 1376 + 8 * ((*(v20 + 4) & 0xFFFC0) != 0)) |= 1 << *(v20 + 4);
          }
        }

        ++v18;
      }

      while (v18 != v19);
    }

    if (*(a1 + 1350))
    {
      for (i = v3[9]; i != v3[10]; ++i)
      {
        if (**i == 93)
        {
          v26 = *(*i + 4);
          if ((v26 & 0x80000000) == 0 && (v26 & 0xFFF00000) != 0x400000)
          {
            *(a1 + 1376) = vorrq_s8(*(a1 + 1376), *(a1 + 1392));
            break;
          }
        }
      }
    }

    v27 = v3[3];
    for (j = v3[4]; v27 != j; ++v27)
    {
      v29 = *(*v27 + 4);
      if ((v29 & 0x80000000) == 0)
      {
        v30 = *(a1 + 2192) ? 3 : 1;
        v31 = *(v2 + 124) + v30 * *(*v27 + 8) - (*(v2 + 120) + *(v2 + 128));
        v32 = 4 * (v29 & 0xFFFFF);
        *(*(a1 + 664) + 4 * v31) = v32 | 0x60000001;
        if (*(a1 + 2192) == 1)
        {
          v33 = v32 + 1610612737;
          *(*v10 + 4 * (v31 + 1)) = v33 + 1;
          *(*v10 + 4 * (v31 + 2)) = v33 + 2;
        }
      }
    }

    v178 = v3;
    v34 = v3[6];
    v35 = v3[7];
    v179 = v2;
    if (v34 != v35)
    {
      v36 = (a1 + 1152);
      do
      {
        v37 = *v34;
        v38 = *(*v34 + 4);
        if ((v38 & 0x80000000) == 0)
        {
          v39 = ((*(v37 + 8) >> 1) & 0x1FFFFFFF) + *(v2 + 124) + *(v2 + 132) - (*(v2 + 120) + *(v2 + 128) + *(v2 + 136));
          v40 = v38 & 0xFFFFF;
          v41 = v38 & 0xFFFFF | 0x20000000;
          if ((v38 & 0xFFFFFu) >= 0x1F)
          {
            v41 = ((v38 & 0xFFFFF) + 536870886) & 0x1FFFFFFF;
          }

          *(*v10 + 4 * v39) = v41;
          if (*(v37 + 12) == 1)
          {
            *(a1 + 1360 + 8 * (v40 > 0x3F)) |= 1 << v38;
          }

          if (*(a1 + 2195) == 1)
          {
            v42 = *(a1 + 2208);
            if (!v42)
            {
LABEL_259:
              abort();
            }

            v43 = 2 * v39;
            v44 = (2 * v39) | 1;
            while (1)
            {
              while (1)
              {
                v45 = *(v42 + 7);
                if (v40 >= v45)
                {
                  break;
                }

                v42 = *v42;
                if (!v42)
                {
                  goto LABEL_259;
                }
              }

              if (v45 >= v40)
              {
                break;
              }

              v42 = v42[1];
              if (!v42)
              {
                goto LABEL_259;
              }
            }

            v46 = *v36;
            if (!*v36)
            {
LABEL_69:
              operator new();
            }

            while (1)
            {
              while (1)
              {
                v47 = v46;
                v48 = *(v46 + 7);
                if (v44 >= v48)
                {
                  break;
                }

                v46 = *v47;
                if (!*v47)
                {
                  goto LABEL_69;
                }
              }

              if (v48 > v43)
              {
                break;
              }

              v46 = v47[1];
              if (!v46)
              {
                goto LABEL_69;
              }
            }

            v2 = v179;
            *(v47 + 8) = *(v42 + 8);
          }
        }

        ++v34;
      }

      while (v34 != v35);
    }

    *(a1 + 744) = 1;
    v49 = *(a1 + 672) - *(a1 + 664);
    *(a1 + 736) = v49 >> 2;
    if (*(a1 + 728) - *(a1 + 712) < v49)
    {
      if (!((v49 >> 2) >> 62))
      {
        operator new();
      }

      goto LABEL_260;
    }

    v50 = *(a1 + 664);
    v51 = *(a1 + 672);
    if (v50 != v51)
    {
      do
      {
        v52 = *v50;
        if (*v50 >> 29 == 7)
        {
          v53 = 94;
        }

        else
        {
          v53 = dword_29D2F5240[v52 >> 29];
        }

        LODWORD(m) = v53 + (v52 & 0x1FFFFFFF);
        std::vector<unsigned int>::push_back[abi:nn200100](a1 + 712, &m);
        ++v50;
      }

      while (v50 != v51);
      v50 = *(a1 + 664);
      if (*(a1 + 672) != v50)
      {
        operator new();
      }
    }

    *(a1 + 672) = v50;
    v55 = *(v179 + 120);
    v54 = *(v179 + 124);
    v56 = *(v179 + 128);
    v57 = *(v179 + 132);
    v58 = *(v179 + 136);
    v59 = *(v179 + 140);
    v60 = (v54 + v57 + v59 - (v55 + v56 + v58) + 3) & 0xFFFFFFFC;
    v61 = *(v179 + 160);
    v62 = *(v179 + 168);
    if (*(v179 + 160) != 0)
    {
      v63 = 0;
      v64 = *(v179 + 144);
      if (*(v179 + 208) == 1)
      {
        v65 = (a1 + 752);
        if (!v64)
        {
          goto LABEL_92;
        }

        v66 = 0;
        v180 = *(v179 + 168);
        m = v61;
        for (k = v61; ; k = m)
        {
          if (k)
          {
            v68 = __clz(__rbit64(k));
            v69 = &m;
            v70 = v68;
          }

          else
          {
            k = v180;
            if (!v180)
            {
              v58 = *(v179 + 136);
              v59 = *(v179 + 140);
              v56 = *(v179 + 128);
              v57 = *(v179 + 132);
              v55 = *(v179 + 120);
              v54 = *(v179 + 124);
              v64 = *(v179 + 144);
              v63 = v64;
              goto LABEL_92;
            }

            v68 = __clz(__rbit64(v180));
            v70 = v68 | 0x40;
            v69 = &v180;
          }

          *v69 = k & ~(1 << v68);
          *(*(a1 + 752) + 4 * v66) = vorrq_s8(vdupq_n_s32(16 * v70), xmmword_29D2F2010);
          v66 += 4;
        }
      }

      v65 = (a1 + 752);
LABEL_92:
      v71 = *(v179 + 176);
      if (*&v71 != 0 && v64 != 0)
      {
        v172 = v63 - v60 + ((v59 + v57 - (v58 + v56 + v55) + v54 + 3) & 0xFFFFFFFC);
        v180 = v62;
        m = v61;
        while (1)
        {
          if (v61)
          {
            v173 = __clz(__rbit64(v61));
            v174 = &m;
            v175 = v173;
          }

          else
          {
            v61 = v180;
            if (!v180)
            {
              break;
            }

            v173 = __clz(__rbit64(v180));
            v175 = v173 | 0x40;
            v174 = &v180;
          }

          v176 = *v65;
          *(*v65 + 4 * (v172 + 1)) = (16 * (v175 & 0x7F)) | 0xD;
          *(v176 + 4 * v172) = (16 * (v175 & 0x7F)) | 0xC;
          *v174 = v61 & ~(1 << v173);
          *(v176 + 4 * (v172 + 2)) = (16 * (v175 & 0x7F)) | 0xE;
          v177 = v172 + 3;
          v172 += 4;
          v61 = m;
          *(v176 + 4 * v177) = (16 * v175) | 0xF;
        }
      }

      *(a1 + 1376) = vorrq_s8(*(a1 + 1376), v71);
    }

    if (*(v179 + 148))
    {
      v73 = *(v179 + 144);
      if (*(v179 + 208))
      {
        v74 = *(v179 + 144);
      }

      else
      {
        v74 = 0;
      }

      if (*(v179 + 176) == 0)
      {
        v73 = 0;
      }

      v75 = ((*(v179 + 124) + *(v179 + 132) + *(v179 + 140) - (*(v179 + 120) + *(v179 + 128) + *(v179 + 136)) + 3) & 0xFFFFFFFC) - v60 + v74 + v73;
      v76 = *(v179 + 192);
      v180 = *(v179 + 200);
      for (m = v76; ; v76 = m)
      {
        if (v76)
        {
          v77 = __clz(__rbit64(v76));
          p_m = &m;
          v79 = v77;
        }

        else
        {
          v76 = v180;
          if (!v180)
          {
            break;
          }

          v77 = __clz(__rbit64(v180));
          v79 = v77 | 0x40;
          p_m = &v180;
        }

        *p_m = v76 & ~(1 << v77);
        v80 = *(a1 + 752);
        *(v80 + 4 * v75) = (4 * (v79 & 0x7F)) | 1;
        if (*(a1 + 2192) == 1)
        {
          v81 = 4 * v79;
          *(v80 + 4 * (v75 + 1)) = v81 | 2;
          *(v80 + 4 * (v75 + 2)) = v81 | 3;
        }

        v75 += 4;
      }
    }

    v82 = (*(v178 + 24) + 3) >> 2;
    if (*(v179 + 467) == 1)
    {
      *(a1 + 1016) = v82;
    }

    *(a1 + 660) = v82;
    v83 = *(a1 + 776);
    v84 = (*(a1 + 784) - v83) >> 2;
    if (v82 <= v84)
    {
      if (v82 < v84)
      {
        *(a1 + 784) = v83 + 4 * v82;
      }
    }

    else
    {
      std::vector<unsigned int>::__append((a1 + 776), v82 - v84);
    }

    if (a1 + 864 != v179 + 216)
    {
      std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>((a1 + 864), *(v179 + 216), *(v179 + 224), (*(v179 + 224) - *(v179 + 216)) >> 2);
    }

    if (a1 + 912 != v179 + 240)
    {
      std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>((a1 + 912), *(v179 + 240), *(v179 + 248), (*(v179 + 248) - *(v179 + 240)) >> 2);
    }

    if (a1 + 888 != v179 + 320)
    {
      std::vector<unsigned short>::__assign_with_size[abi:nn200100]<unsigned short *,unsigned short *>((a1 + 888), *(v179 + 320), *(v179 + 328), (*(v179 + 328) - *(v179 + 320)) >> 1);
    }

    if (a1 + 936 != v179 + 368)
    {
      std::vector<unsigned short>::__assign_with_size[abi:nn200100]<unsigned short *,unsigned short *>((a1 + 936), *(v179 + 368), *(v179 + 376), (*(v179 + 376) - *(v179 + 368)) >> 1);
    }

    *(a1 + 960) = *(v179 + 416);
    *(a1 + 1352) = *(v179 + 160) != 0;
    *(a1 + 1353) = *(v179 + 148) != 0;
    AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>>>::finalizeGatherSizes(a1, v179);
    if ((*(a1 + 3703) & 1) == 0)
    {
      v85 = *(a1 + 2392);
      v86 = *(a1 + 3012);
      v87 = *(a1 + 3024);
      v88 = ((*(a1 + 3008) + 3) >> 2);
      *(v85 + 140) = *(v85 + 140) & 0xFFFFF00000000000 | (v88 << 16) & 0xFFFFF001FFFFFFFFLL | (((((((*(a1 + 3020) + 3) >> 2) + 1) & 0xFFE) >> 1) & 0x7FF) << 33) | v88;
      *(v85 + 320) = (v86 + 3) >> 2;
      *(v85 + 324) = (((v87 + 3) >> 2) + 1) & 0x7FFFFFFE;
      if (*(v85 + 222) == 1)
      {
        AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::LoadShader::emit((v85 + 48), *(v85 + 312), *v85 + *(v85 + 316));
      }
    }

    v89 = *(a1 + 3704);
    if (v89 != -1)
    {
      AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::setConstantCalculationProgramInfo(*(a1 + 2392), v89, *(a1 + 3708), *(a1 + 3056), *(a1 + 3064), *(a1 + 3072), *(a1 + 3716));
    }

    v90 = *(a1 + 3272);
    if (v90)
    {
      v91 = *(a1 + 3012);
      v92 = *(a1 + 3024);
      v93 = ((*(a1 + 3008) + 3) >> 2);
      *(v90 + 140) = *(v90 + 140) & 0xFFFFF00000000000 | (v93 << 16) & 0xFFFFF001FFFFFFFFLL | (((((((*(a1 + 3020) + 3) >> 2) + 1) & 0xFFE) >> 1) & 0x7FF) << 33) | v93;
      *(v90 + 320) = (v91 + 3) >> 2;
      *(v90 + 324) = (((v92 + 3) >> 2) + 1) & 0x7FFFFFFE;
      if (*(v90 + 222) == 1)
      {
        AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::LoadShader::emit((v90 + 48), *(v90 + 312), *v90 + *(v90 + 316));
      }

      v94 = *(a1 + 3272);
      v95 = *(a1 + 3224);
      memcpy(v95, *v94, *(v94 + 8) - *v94);
      if (*(v94 + 272) == 1)
      {
        *&v95[*(v94 + 276)] = vbslq_s8(xmmword_29D2F17C0, *&v95[*(v94 + 276)], vshlq_u8(vqtbl1q_s8(0, xmmword_29D2F17A0), xmmword_29D2F17B0));
      }

      v96 = *(a1 + 3272);
      v98 = *(v96 + 64);
      v97 = *(v96 + 80);
      *(a1 + 3280) = *(v96 + 48);
      *(a1 + 3296) = v98;
      *(a1 + 3312) = v97;
      v99 = *(v96 + 128);
      v100 = *(v96 + 144);
      v101 = *(v96 + 112);
      *(a1 + 3328) = *(v96 + 96);
      *(a1 + 3376) = v100;
      *(a1 + 3360) = v99;
      *(a1 + 3344) = v101;
      v103 = *(v96 + 176);
      v102 = *(v96 + 192);
      v104 = *(v96 + 208);
      *(a1 + 3392) = *(v96 + 160);
      *(a1 + 3440) = v104;
      *(a1 + 3424) = v102;
      *(a1 + 3408) = v103;
    }

    AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::finish(*(a1 + 2392));
    v105 = *(a1 + 2392);
    v106 = *(a1 + 3720);
    v107 = 8 * (*(v105 + 320) & 0x3FFFF);
    if (*(v106 + 8))
    {
      v108 = 4;
    }

    else
    {
      v108 = 0;
    }

    v109 = *(v106 + 48) & 0x40 | v108 | 0x20;
    v110 = *(v106 + 12) | (*(v106 + 20) << 16);
    v111 = *(v106 + 20) + *(v106 + 12);
    if (*(v106 + 4))
    {
      LOBYTE(v111) = v111 + 1;
    }

    LODWORD(v112) = 1073741870;
    LODWORD(v113) = 1073741870;
    HIDWORD(v113) = (*(v105 + 324) & 0xFFF) << 8;
    *(a1 + 3728) = v113;
    *(a1 + 3736) = v107;
    *(a1 + 3740) = 0;
    *(a1 + 3744) = v110 & 0xFFFF00FF | (v111 << 8);
    *(a1 + 3748) = v109;
    *(a1 + 3752) = 0;
    v114 = 8 * (*(v105 + 320) & 0x3FFFF);
    if (*(v106 + 8))
    {
      v115 = 4;
    }

    else
    {
      v115 = 0;
    }

    v116 = v115 | *(v106 + 48) & 0x40;
    v117 = *(v106 + 12) | (*(v106 + 20) << 16);
    v118 = *(v106 + 20) + *(v106 + 12);
    if (*(v106 + 4))
    {
      LOBYTE(v118) = v118 + 1;
    }

    *(a1 + 3756) = __PAIR64__((*(v105 + 324) & 0xFFFu) << 8, 1073741870);
    *(a1 + 3764) = v114;
    *(a1 + 3768) = 0;
    *(a1 + 3772) = v117 & 0xFFFF00FF | (v118 << 8);
    *(a1 + 3776) = v116;
    *(a1 + 3780) = 0;
    v119 = (*(v105 + 324) & 0xFFF) << 8;
    v120 = 8 * (*(v105 + 320) & 0x3FFFF);
    if (*(v106 + 8))
    {
      v121 = 4;
    }

    else
    {
      v121 = 0;
    }

    v122 = *(v106 + 48) & 0x40 | 0x21 | v121;
    v123 = *(v106 + 12) | (*(v106 + 20) << 16);
    if (*(v106 + 4))
    {
      v124 = *(v106 + 20) + *(v106 + 12) + 1;
    }

    else
    {
      v124 = *(v106 + 20) + *(v106 + 12);
    }

    *(a1 + 3784) = __PAIR64__(v119, 1073741870);
    *(a1 + 3792) = v120;
    *(a1 + 3796) = 0;
    *(a1 + 3800) = v123 & 0xFFFF00FF | (v124 << 8);
    *(a1 + 3804) = v122;
    *(a1 + 3808) = 0;
    v125 = *(a1 + 2392);
    v126 = *(a1 + 3720);
    v127 = 8 * (*(v125 + 320) & 0x3FFFF);
    if (*(v126 + 8))
    {
      v128 = 4;
    }

    else
    {
      v128 = 0;
    }

    v129 = *(v126 + 48) & 0x40 | v128 | 1;
    v130 = *(v126 + 12) | (*(v126 + 20) << 16);
    v131 = *(v126 + 20) + *(v126 + 12);
    if (*(v126 + 4))
    {
      LOBYTE(v131) = v131 + 1;
    }

    *(a1 + 3812) = __PAIR64__((*(v125 + 324) & 0xFFFu) << 8, 1073741870);
    *(a1 + 3820) = v127;
    *(a1 + 3824) = 0;
    *(a1 + 3828) = v130 & 0xFFFF00FF | (v131 << 8);
    *(a1 + 3832) = v129;
    *(a1 + 3836) = 0;
    v132 = 8 * (*(v125 + 320) & 0x3FFFF);
    if (*(v126 + 8))
    {
      v133 = 4;
    }

    else
    {
      v133 = 0;
    }

    v134 = *(v126 + 48) & 0x40 | 0x22 | v133;
    v135 = *(v126 + 12) | (*(v126 + 20) << 16);
    v136 = *(v126 + 20) + *(v126 + 12);
    if (*(v126 + 4))
    {
      LOBYTE(v136) = v136 + 1;
    }

    *(a1 + 3840) = __PAIR64__((*(v125 + 324) & 0xFFFu) << 8, 1073741870);
    *(a1 + 3848) = v132;
    *(a1 + 3852) = 0;
    *(a1 + 3856) = v135 & 0xFFFF00FF | (v136 << 8);
    *(a1 + 3860) = v134;
    *(a1 + 3864) = 0;
    v137 = (*(v125 + 324) & 0xFFF) << 8;
    v138 = 8 * (*(v125 + 320) & 0x3FFFF);
    if (*(v126 + 8))
    {
      v139 = 4;
    }

    else
    {
      v139 = 0;
    }

    v140 = *(v126 + 48) & 0x40 | v139 | 2;
    v141 = *(v126 + 12) | (*(v126 + 20) << 16);
    v142 = *(v126 + 20) + *(v126 + 12);
    if (*(v126 + 4))
    {
      LOBYTE(v142) = v142 + 1;
    }

    HIDWORD(v112) = v137;
    *(a1 + 3868) = v112;
    *(a1 + 3876) = v138;
    *(a1 + 3880) = 0;
    *(a1 + 3884) = v141 & 0xFFFF00FF | (v142 << 8);
    *(a1 + 3888) = v140;
    *(a1 + 3892) = 0;
    MEMORY[0x29ED520D0]();
    *(a1 + 3720) = 0;
    if (*(v179 + 312) == 1)
    {
      *(a1 + 2608) = vorrq_s8(*(a1 + 2608), *(a1 + 2448));
      *(a1 + 2448) = 0u;
    }

    if (*(v179 + 313) == 1)
    {
      *(a1 + 2624) = vorrq_s8(*(a1 + 2624), *(a1 + 2464));
      *(a1 + 2464) = 0u;
    }

    if (*(v179 + 314) == 1)
    {
      *(a1 + 2592) = vorrq_s8(*(a1 + 2592), *(a1 + 2432));
      *(a1 + 2432) = 0u;
    }

    if (*(v179 + 315))
    {
      v143 = vorrq_s8(*(a1 + 2656), *(a1 + 2544));
      *(a1 + 2656) = v143;
      *(a1 + 2672) = vorrq_s8(*(a1 + 2672), *(a1 + 2560));
      v144 = vorrq_s8(*(a1 + 2640), *(a1 + 2528));
      *(a1 + 2640) = v144;
      *(a1 + 2688) = vorrq_s8(*(a1 + 2688), *(a1 + 2576));
      v145 = 0uLL;
      *(a1 + 2560) = 0u;
      *(a1 + 2576) = 0u;
      v146 = 0uLL;
      *(a1 + 2528) = 0u;
      *(a1 + 2544) = 0u;
    }

    else
    {
      v145 = *(a1 + 2528);
      v144 = *(a1 + 2640);
      v146 = *(a1 + 2544);
      v143 = *(a1 + 2656);
    }

    *(a1 + 2400) = vorrq_s8(vorrq_s8(vorrq_s8(*(a1 + 2432), *(a1 + 2480)), vorrq_s8(v145, *(a1 + 2592))), v144);
    *(a1 + 2416) = vorrq_s8(vorrq_s8(vorrq_s8(*(a1 + 2448), *(a1 + 2496)), vorrq_s8(v146, *(a1 + 2608))), v143);
    AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,8ul>::buildUniqueResourceMask(a1 + 2392);
    v147 = *(a1 + 576);
    v148 = *(v147 + 72);
    for (n = *(v147 + 80); v148 != n; ++v148)
    {
      v151 = *v148;
      v152 = **v148;
      v153 = v152 > 0x3E || ((1 << v152) & 0x4000000000033800) == 0;
      if (v153 && ((v152 - 93) <= 0x14 ? (v154 = ((1 << (v152 - 93)) & 0x100031) == 0) : (v154 = 1), v154))
      {
        v155 = v151[1];
      }

      else
      {
        v155 = v151[1];
        if ((v155 & 0x80000000) != 0)
        {
          continue;
        }
      }

      v156 = (*(a1 + 776) + 4 * v151[2]);
      if (v152 > 84)
      {
        if (v152 <= 117)
        {
          if (v152 == 85)
          {
            *v156 = 185;
          }

          else
          {
            if (v152 != 108)
            {
LABEL_216:
              v157 = v155 & 0xFFFFF;
              v158 = (v155 & 0xFFFFF) << 7;
              switch(v152)
              {
                case 11:
                  *v156 = *&vshrq_n_u32(vorrq_s8(vdupq_n_s32(v158), xmmword_29D2F2020), 2uLL) | __PAIR128__(0x4000000040000000, 0x4000000040000000);
                  continue;
                case 12:
                  LODWORD(v159) = (32 * v157) | 0x40000000;
                  DWORD1(v159) = (32 * (v155 & 0xFFFFF)) | 0x40000001;
                  *(&v159 + 1) = *&vshr_n_u32(vorr_s8(vdup_n_s32(v158), 0xC00000008), 2uLL) | 0x4000000040000000;
                  *v156 = v159;
                  continue;
                case 13:
                  v150 = (32 * v157) | 0x40000008;
                  goto LABEL_180;
                case 16:
                  v150 = 32 * v157 + 1073741833;
                  goto LABEL_180;
                case 17:
                  v150 = 32 * v157 + 1073741834;
                  goto LABEL_180;
                case 62:
                  v150 = 32 * v157 + 1073741835;
                  goto LABEL_180;
                case 93:
                  if ((v155 & 0xFFF00000) == 0x400000)
                  {
                    goto LABEL_227;
                  }

                  v150 = 32 * v157 + 1073741836;
                  goto LABEL_180;
                case 97:
                  *v156 = vorr_s8(vdup_n_s32(32 * v157), 0x4000000F4000000ELL);
                  continue;
                case 98:
                  *v156 = vorr_s8(vdup_n_s32(8 * v157), 0x6000000160000000);
                  continue;
                case 109:
                  v150 = (2 * (v155 & 0xFFFFFFF)) | 0xC0000000;
                  goto LABEL_180;
                case 110:
                  v150 = (2 * (v155 & 0xFFFFFFF)) | 0xC0000001;
                  goto LABEL_180;
                case 113:
                  v150 = (8 * v157) | 0x60000000;
                  goto LABEL_180;
                case 131:
                  v150 = v155 & 0x1FFFFFFF | 0x80000000;
                  goto LABEL_180;
                default:
                  continue;
              }
            }

            *v156 = 186;
          }
        }

        else
        {
          switch(v152)
          {
            case 'v':
              *v156 = 0x700000006;
              break;
            case 'w':
              *v156 = 0x900000008;
              break;
            case 'x':
              break;
            default:
              goto LABEL_216;
          }
        }
      }

      else if (v152 <= 63)
      {
        if (v152 == 60)
        {
          if (v155 <= 0x10)
          {
            v150 = dword_29D2F5170[v155];
          }

          else
          {
            v150 = 0;
          }

LABEL_180:
          *v156 = v150;
        }

        else
        {
          if (v152 != 61)
          {
            goto LABEL_216;
          }

          *v156 = 166;
        }
      }

      else
      {
        switch(v152)
        {
          case '@':
            *v156 = 0x500000004;
            break;
          case 'J':
LABEL_227:
            *v156 = 0;
            break;
          case 'T':
            *v156 = 184;
            break;
          default:
            goto LABEL_216;
        }
      }
    }

    *(a1 + 856) = 1;
    v160 = *(a1 + 784) - *(a1 + 776);
    *(a1 + 848) = v160 >> 2;
    if (*(a1 + 840) - *(a1 + 824) < v160)
    {
      if (!((v160 >> 2) >> 62))
      {
        operator new();
      }

LABEL_260:
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v161 = *(a1 + 776);
    v162 = *(a1 + 784);
    if (v161 != v162)
    {
      do
      {
        v163 = *v161;
        if (*v161 >> 29 == 7)
        {
          v164 = 188;
        }

        else
        {
          v164 = dword_29D2F5154[v163 >> 29];
        }

        LODWORD(m) = v164 + (v163 & 0x1FFFFFFF);
        std::vector<unsigned int>::push_back[abi:nn200100](a1 + 824, &m);
        ++v161;
      }

      while (v161 != v162);
      v161 = *(a1 + 776);
      if (*(a1 + 784) != v161)
      {
        operator new();
      }
    }

    *(a1 + 784) = v161;
    if (*(v179 + 467) == 1)
    {
      v165 = *(a1 + 576);
      v166 = *(a1 + 1344);
      v167 = *(v165 + 136);
      if (*(a1 + 968) > v166)
      {
        v166 = *(a1 + 968);
      }

      *(a1 + 968) = v166;
      v168 = vorrq_s8(*(a1 + 992), *(v165 + 120));
      *(a1 + 976) = vorrq_s8(*(a1 + 976), *(v165 + 104));
      *(a1 + 992) = v168;
      *(a1 + 1008) |= v167;
      AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>>>::updateGlobalBindingTableInfo<AGX::VertexProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>>(a1);
    }

    AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>>>::finalizeGatherSizes(a1, v179);
    v169 = *(a1 + 584);
    if (v169)
    {
      v170 = AGX::ProgramBindingRemap<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~ProgramBindingRemap(v169);
      MEMORY[0x29ED520D0](v170, 0x1030C40704B4075);
    }

    *(a1 + 584) = 0;
    v171 = *(a1 + 576);
    if (v171)
    {
      ProgramBindingsAndDMAList::~ProgramBindingsAndDMAList(v171);
      MEMORY[0x29ED520D0]();
    }

    *(a1 + 576) = 0;
  }

  std::mutex::unlock((a1 + 4328));
}

void sub_29CDE0C00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  if (a13)
  {
    operator delete(a13);
  }

  std::mutex::unlock((v13 + 4328));
  _Unwind_Resume(a1);
}

uint64_t AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>>>::finalizeGatherSizes(uint64_t result, uint64_t a2)
{
  v2 = *(result + 660);
  v3 = *(result + 1128);
  v4 = *(result + 1120);
  if (v3 == v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(result + 1016) & 1;
  }

  v6 = (*(result + 872) - *(result + 864)) >> 2;
  *(result + 624) = ((*(result + 920) - *(result + 912) + 4 * (*(result + 1024) + v2 + *(result + 1028) + v5 + (((v3 - v4) >> 1) & 0x3FFFFFFE))) & 0xFFFFFFFC) + 8 * (v6 + *(result + 656));
  v7 = (*(a2 + 124) + *(a2 + 132) + *(a2 + 140) - (*(a2 + 120) + *(a2 + 128) + *(a2 + 136)) + 3) & 0xFFFFFFFC;
  *(result + 628) = 8 * v7;
  v8 = *(a2 + 208);
  v9 = *(a2 + 144);
  if (!*(a2 + 208))
  {
    v9 = 0;
  }

  *(result + 632) = 8 * (v9 + v7);
  v10 = *(result + 736);
  *(result + 636) = 8 * v10;
  v11 = 8 * (v6 + v10);
  *(result + 640) = v11;
  *(result + 644) = v11 + 4 * v2;
  v12 = *(a2 + 144);
  if (v8)
  {
    v13 = *(a2 + 144);
  }

  else
  {
    v13 = 0;
  }

  v14 = *(a2 + 176);
  if (*(a2 + 176) == 0)
  {
    v12 = 0;
  }

  *(result + 648) = 8 * (v13 + v12 + v7);
  if (v14 | *(a2 + 184))
  {
    v15 = *(a2 + 144);
  }

  else
  {
    v15 = 0;
  }

  v16 = v8 == 0;
  if (v8)
  {
    v17 = *(a2 + 144);
  }

  else
  {
    v17 = 0;
  }

  v18 = *(a2 + 148);
  *(result + 652) = 8 * (v17 + v18 + v15 + v7);
  if (v16)
  {
    v19 = 0;
  }

  else
  {
    v19 = *(a2 + 144);
  }

  if (v14 | *(a2 + 184))
  {
    v20 = *(a2 + 144);
  }

  else
  {
    v20 = 0;
  }

  *(result + 1312) = v20 + v19;
  *(result + 1316) = v18;
  return result;
}

uint64_t *AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>>>::updateGlobalBindingTableInfo<AGX::VertexProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>>(uint64_t a1)
{
  v2 = *(a1 + 976);
  v3 = (512 - 8 * __clz(v2)) >> 2;
  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 1024) = v4;
  v5 = vcnt_s8(*(a1 + 984));
  v5.i16[0] = vaddlv_u8(v5);
  v6 = v5.i32[0];
  v7 = vcnt_s8(*(a1 + 992));
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.i32[0] + v6;
  v9 = vcnt_s8(*(a1 + 1000));
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v8 + v9.i32[0];
  v11 = vcnt_s8(*(a1 + 1008));
  v11.i16[0] = vaddlv_u8(v11);
  v12 = (v11.i32[0] + 2 * v10);
  *(a1 + 1028) = v12;
  v13 = *(a1 + 1064);
  v14 = *(a1 + 1056);
  while (v13 != v14)
  {
    v15 = *(v13 - 24);
    if (v15)
    {
      *(v13 - 16) = v15;
      operator delete(v15);
    }

    v13 -= 32;
  }

  *(a1 + 1064) = v14;
  *(a1 + 1088) = *(a1 + 1080);
  *(a1 + 1104) = v12;
  *(a1 + 1112) = 0;
  v16 = *(a1 + 1032);
  v17 = (*(a1 + 1040) - v16) >> 2;
  if (v12 <= v17)
  {
    if (v12 < v17)
    {
      *(a1 + 1040) = v16 + 4 * v12;
    }
  }

  else
  {
    std::vector<unsigned int>::__append((a1 + 1032), v12 - v17);
    v16 = *(a1 + 1032);
  }

  v18 = *(a1 + 984);
  v28 = *(a1 + 992);
  for (i = v18; ; v18 = i)
  {
    if (v18)
    {
      v19 = __clz(__rbit64(v18));
      p_i = &i;
      v21 = v19;
      goto LABEL_15;
    }

    v18 = v28;
    if (!v28)
    {
      break;
    }

    v19 = __clz(__rbit64(v28));
    v21 = v19 | 0x40;
    p_i = &v28;
LABEL_15:
    *p_i = v18 & ~(1 << v19);
    *v16++ = vorr_s8(vdup_n_s32(32 * v21), 0x4000000F4000000ELL);
  }

  for (j = *(a1 + 1000); j; j &= ~(1 << v23))
  {
    v23 = __clz(__rbit64(j));
    *v16++ = vorr_s8(vdup_n_s32(8 * v23), 0x6000000160000000);
  }

  result = AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::finalizeForOptimizedGather((a1 + 1032));
  v25 = *(a1 + 1128);
  v26 = *(a1 + 1120);
  if (v25 == v26)
  {
    v27 = 0;
  }

  else
  {
    v27 = *(a1 + 1016) & 1;
  }

  *(a1 + 624) = ((*(a1 + 920) - *(a1 + 912) + 4 * (*(a1 + 1024) + *(a1 + 660) + *(a1 + 1028) + v27 + (((v25 - v26) >> 1) & 0x3FFFFFFE))) & 0xFFFFFFFC) + 8 * (*(a1 + 656) + ((*(a1 + 872) - *(a1 + 864)) >> 2));
  return result;
}

uint64_t *AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::finalizeForOptimizedGather(uint64_t *result)
{
  *(result + 80) = 1;
  v1 = *result;
  v2 = result[1] - *result;
  result[9] = v2 >> 2;
  if (v2)
  {
    operator new();
  }

  result[1] = v1;
  return result;
}

void sub_29CDE14FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (a9)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<unsigned short>::__assign_with_size[abi:nn200100]<unsigned short *,unsigned short *>(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a4 > (v6 - result) >> 1)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if ((a4 & 0x8000000000000000) == 0)
    {
      if (v6 <= a4)
      {
        v9 = a4;
      }

      else
      {
        v9 = v6;
      }

      v10 = v6 >= 0x7FFFFFFFFFFFFFFELL;
      v11 = 0x7FFFFFFFFFFFFFFFLL;
      if (!v10)
      {
        v11 = v9;
      }

      if ((v11 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (a4 <= (v12 - result) >> 1)
  {
    v17 = a3 - a2;
    if (v17)
    {
      v18 = result;
      memmove(result, a2, v17);
      result = v18;
    }

    v16 = &result[v17];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    v16 = &v12[v15];
  }

  a1[1] = v16;
  return result;
}

void std::vector<std::string>::push_back[abi:nn200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (v10 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v11 = 24 * v7;
    *v11 = *a2;
    *(v11 + 16) = *(a2 + 2);
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v6 = 24 * v7 + 24;
    v12 = *a1;
    v13 = *(a1 + 8) - *a1;
    v14 = v11 - v13;
    memcpy((v11 - v13), *a1, v13);
    *a1 = v14;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    v5 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v6 = v3 + 24;
  }

  *(a1 + 8) = v6;
}

void std::vector<unsigned long long>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 3;
    v9 = (v7 >> 3) + 1;
    if (v9 >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = v3 - v6;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    *(8 * v8) = *a2;
    v5 = 8 * v8 + 8;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void std::__hash_table<std::__hash_value_type<std::string,unsigned long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long long>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,unsigned long long>,void *> *>>(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  if (v4 && (bzero(*a1, 8 * v4), v5 = *(a1 + 16), *(a1 + 16) = 0, *(a1 + 24) = 0, v5))
  {
    while (a2)
    {
      std::string::operator=((v5 + 16), (a2 + 2));
      *(v5 + 5) = a2[5];
      v6 = *v5;
      std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__node_insert_multi(a1, v5);
      a2 = *a2;
      v5 = v6;
      if (!v6)
      {
        goto LABEL_5;
      }
    }

    do
    {
      v7 = *v5;
      if (v5[39] < 0)
      {
        operator delete(*(v5 + 2));
      }

      operator delete(v5);
      v5 = v7;
    }

    while (v7);
  }

  else
  {
LABEL_5:
    if (a2)
    {
      operator new();
    }
  }
}

void sub_29CDE1A08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,unsigned int>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,unsigned int>,void *>>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<unsigned int,unsigned int>,std::__tree_node<std::__value_type<unsigned int,unsigned int>,void *> *,long>>(uint64_t **a1, void *a2, void *a3)
{
  if (a1[2])
  {
    v6 = *a1;
    v8 = a1 + 1;
    v7 = a1[1];
    *a1 = (a1 + 1);
    v7[2] = 0;
    a1[2] = 0;
    a1[1] = 0;
    v9 = v6[1] ? v6[1] : v6;
    if (v9)
    {
      v10 = v9[2];
      if (v10)
      {
        v11 = *v10;
        if (*v10 == v9)
        {
          *v10 = 0;
          while (1)
          {
            v24 = v10[1];
            if (!v24)
            {
              break;
            }

            do
            {
              v10 = v24;
              v24 = *v24;
            }

            while (v24);
          }
        }

        else
        {
          for (v10[1] = 0; v11; v11 = v10[1])
          {
            do
            {
              v10 = v11;
              v11 = *v11;
            }

            while (v11);
          }
        }
      }

      if (a2 == a3)
      {
        v12 = v9;
      }

      else
      {
        v14 = a2;
        do
        {
          v12 = v10;
          v15 = *(v14 + 7);
          *(v9 + 7) = v15;
          *(v9 + 8) = *(v14 + 8);
          v16 = *v8;
          v17 = a1 + 1;
          v18 = a1 + 1;
          if (*v8)
          {
            do
            {
              while (1)
              {
                v17 = v16;
                if (v15 >= *(v16 + 7))
                {
                  break;
                }

                v16 = *v16;
                v18 = v17;
                if (!*v17)
                {
                  goto LABEL_28;
                }
              }

              v16 = v16[1];
            }

            while (v16);
            v18 = (v17 + 1);
          }

LABEL_28:
          *v9 = 0;
          v9[1] = 0;
          v9[2] = v17;
          *v18 = v9;
          v19 = **a1;
          if (v19)
          {
            *a1 = v19;
          }

          std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(a1[1], v9);
          a1[2] = (a1[2] + 1);
          if (v10)
          {
            v10 = v10[2];
            if (v10)
            {
              v22 = *v10;
              if (*v10 == v12)
              {
                *v10 = 0;
                while (1)
                {
                  v23 = v10[1];
                  if (!v23)
                  {
                    break;
                  }

                  do
                  {
                    v10 = v23;
                    v23 = *v23;
                  }

                  while (v23);
                }
              }

              else
              {
                for (v10[1] = 0; v22; v22 = v10[1])
                {
                  do
                  {
                    v10 = v22;
                    v22 = *v22;
                  }

                  while (v22);
                }
              }
            }
          }

          else
          {
            v10 = 0;
          }

          v20 = v14[1];
          if (v20)
          {
            do
            {
              a2 = v20;
              v20 = *v20;
            }

            while (v20);
          }

          else
          {
            do
            {
              a2 = v14[2];
              v21 = *a2 == v14;
              v14 = a2;
            }

            while (!v21);
          }

          if (!v12)
          {
            break;
          }

          v14 = a2;
          v9 = v12;
        }

        while (a2 != a3);
      }

      std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(v12);
      if (v10)
      {
        for (i = v10[2]; i; i = i[2])
        {
          v10 = i;
        }

        std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(v10);
      }
    }
  }

  if (a2 != a3)
  {
    operator new();
  }
}

uint64_t AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::SegmentedArgumentGatherer(uint64_t result, uint64_t a2)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  v2 = *(a2 + 8);
  if (v2 != *a2)
  {
    if (((v2 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  v3 = *(a2 + 24);
  v4 = *(a2 + 32);
  if (v4 != v3)
  {
    if (((v4 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  v6 = *(a2 + 48);
  v5 = *(a2 + 56);
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v7 = *(a2 + 72);
  *(result + 80) = *(a2 + 80);
  *(result + 72) = v7;
  return result;
}

void sub_29CDE1ED8(_Unwind_Exception *a1)
{
  std::vector<AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned long long,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>>>::Segment,std::allocator<AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned long long,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>>>::Segment>>::~vector[abi:nn200100](v2);
  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void *std::map<unsigned int,unsigned int>::map[abi:nn200100](void *result, void *a2)
{
  result[1] = 0;
  result[2] = 0;
  *result = result + 1;
  v2 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      v3 = result[1];
      v4 = result + 1;
      if (*result == result + 1)
      {
        goto LABEL_10;
      }

      v5 = result[1];
      v6 = result + 1;
      if (v3)
      {
        do
        {
          v4 = v5;
          v5 = v5[1];
        }

        while (v5);
      }

      else
      {
        do
        {
          v4 = v6[2];
          v7 = *v4 == v6;
          v6 = v4;
        }

        while (v7);
      }

      v8 = *(v2 + 7);
      if (*(v4 + 7) < v8)
      {
LABEL_10:
        if (v3)
        {
          v9 = v4 + 1;
        }

        else
        {
          v9 = result + 1;
        }
      }

      else
      {
        v9 = result + 1;
        if (v3)
        {
          v9 = result + 1;
          while (1)
          {
            while (1)
            {
              v11 = v3;
              v12 = *(v3 + 28);
              if (v8 >= v12)
              {
                break;
              }

              v3 = *v11;
              v9 = v11;
              if (!*v11)
              {
                goto LABEL_22;
              }
            }

            if (v12 >= v8)
            {
              break;
            }

            v9 = v11 + 1;
            v3 = v11[1];
            if (!v3)
            {
              goto LABEL_22;
            }
          }
        }
      }

      if (!*v9)
      {
LABEL_22:
        operator new();
      }

      v10 = v2[1];
      if (v10)
      {
        do
        {
          v13 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v13 = v2[2];
          v7 = *v13 == v2;
          v2 = v13;
        }

        while (!v7);
      }

      v2 = v13;
    }

    while (v13 != a2 + 1);
  }

  return result;
}

void CompileStatistics::CompileStatistics(CompileStatistics *this, const CompileStatistics *a2)
{
  v2 = *(a2 + 1);
  *this = *a2;
  *(this + 1) = v2;
  v3 = *(a2 + 2);
  v4 = *(a2 + 3);
  v5 = *(a2 + 4);
  *(this + 77) = *(a2 + 77);
  *(this + 3) = v4;
  *(this + 4) = v5;
  *(this + 12) = 0;
  *(this + 2) = v3;
  *(this + 13) = 0;
  *(this + 14) = 0;
  v6 = *(a2 + 12);
  v7 = *(a2 + 13);
  if (v7 != v6)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v7 - v6) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  v9 = *(a2 + 15);
  v8 = *(a2 + 16);
  if (v8 != v9)
  {
    if (((v8 - v9) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (*(a2 + 167) < 0)
  {
    std::string::__init_copy_ctor_external(this + 6, *(a2 + 18), *(a2 + 19));
  }

  else
  {
    v10 = *(a2 + 9);
    *(this + 20) = *(a2 + 20);
    *(this + 9) = v10;
  }
}

void ***std::vector<std::string>::~vector[abi:nn200100](void ***a1)
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
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void **std::vector<AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned long long,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>>>::Segment,std::allocator<AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned long long,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>>>::Segment>>::~vector[abi:nn200100](void **a1)
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
        v5 = *(v3 - 3);
        if (v5)
        {
          *(v3 - 2) = v5;
          operator delete(v5);
        }

        v3 -= 32;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

AGX::VertexProgramVaryings *AGX::VertexProgramVaryings::VertexProgramVaryings(AGX::VertexProgramVaryings *this, const AGCDeserializedReply *a2)
{
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  v3 = a2 + 1024;
  if (*(a2 + 58))
  {
    v4 = *(a2 + 59) == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = 464;
  if (v4)
  {
    v5 = 1024;
  }

  else
  {
    v3 = a2 + 464;
  }

  v6 = *(a2 + v5);
  v7 = *(v3 + 1);
  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = (v6 + *v6);
  }

  v10 = (v9 - *v9);
  if (*v10 >= 0xDu && (v11 = v10[6]) != 0)
  {
    v12 = (v9 + v11 + *(v9 + v11));
  }

  else
  {
    v12 = 0;
  }

  v13 = (v12 - *v12);
  v14 = *v13;
  if (v14 < 0xB)
  {
    return this;
  }

  if (v13[5])
  {
    v15 = (v12 + v13[5] + *(v12 + v13[5]));
    if (v14 < 0xD)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v15 = 0;
    if (v14 < 0xD)
    {
      goto LABEL_25;
    }
  }

  v16 = v13[6];
  if (!v16)
  {
LABEL_25:
    v17 = 0;
    if (!v15)
    {
      return this;
    }

    goto LABEL_26;
  }

  v17 = (v12 + v16 + *(v12 + v16));
  if (!v15)
  {
    return this;
  }

LABEL_26:
  v20 = *v15;
  v18 = v15 + 1;
  v19 = v20;
  if (v20 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v26) = v19;
  if (v19)
  {
    memmove(&__dst, v18, v19);
  }

  *(&__dst + v19) = 0;
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }

  *this = __dst;
  *(this + 2) = v26;
  v23 = *v17;
  v21 = v17 + 1;
  v22 = v23;
  if (v23 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v26) = v22;
  if (v22)
  {
    memmove(&__dst, v21, v22);
  }

  *(&__dst + v22) = 0;
  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }

  *(this + 24) = __dst;
  *(this + 5) = v26;
  return this;
}

void sub_29CDE2584(_Unwind_Exception *a1)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
    if ((*(v1 + 23) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((*(v1 + 23) & 0x80000000) == 0)
  {
LABEL_3:
    _Unwind_Resume(a1);
  }

  operator delete(*v1);
  _Unwind_Resume(a1);
}

void AGX::VertexProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::updateWithRuntimeState(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 4328));
  v4 = *(a1 + 968);
  if (v4 <= *(a2 + 264))
  {
    v4 = *(a2 + 264);
  }

  *(a1 + 968) = v4;
  *(a1 + 976) |= *(a2 + 272);
  *(a1 + 984) = vorrq_s8(*(a1 + 984), *(a2 + 280));
  *(a1 + 1000) |= *(a2 + 296);
  *(a1 + 1008) |= *(a2 + 304);
  AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>>>::updateGlobalBindingTableInfo<AGX::VertexProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>>(a1);
  v5 = *(a1 + 3016);
  v6 = *(a2 + 52);
  if (v5 <= *(a2 + 48))
  {
    v5 = *(a2 + 48);
  }

  *(a1 + 3016) = v5;
  v7 = *(a1 + 3008);
  if (v7 <= *(a2 + 88) + v6)
  {
    v7 = *(a2 + 88) + v6;
  }

  *(a1 + 3008) = v7;
  v8 = *(a2 + 64);
  if (*(a1 + 3020) > v8)
  {
    v8 = *(a1 + 3020);
  }

  *(a1 + 3020) = v8;
  v9 = *(a1 + 2392);
  v10 = *(a1 + 3012);
  v11 = *(a1 + 3024);
  *(v9 + 140) = *(v9 + 140) & 0xFFFFF00000000000 | (((v7 + 3) >> 2) << 16) | (((((((v8 + 3) >> 2) + 1) & 0xFFE) >> 1) & 0x7FF) << 33) | ((v7 + 3) >> 2);
  *(v9 + 320) = (v10 + 3) >> 2;
  *(v9 + 324) = (((v11 + 3) >> 2) + 1) & 0x7FFFFFFE;
  if (*(v9 + 222) == 1)
  {
    AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::LoadShader::emit((v9 + 48), *(v9 + 312), *v9 + *(v9 + 316));
  }

  v12 = *(a1 + 3272);
  if (v12)
  {
    v13 = *(a1 + 3012);
    v14 = *(a1 + 3024);
    v15 = ((*(a1 + 3008) + 3) >> 2);
    *(v12 + 140) = *(v12 + 140) & 0xFFFFF00000000000 | (v15 << 16) & 0xFFFFF001FFFFFFFFLL | (((((((*(a1 + 3020) + 3) >> 2) + 1) & 0xFFE) >> 1) & 0x7FF) << 33) | v15;
    *(v12 + 320) = (v13 + 3) >> 2;
    *(v12 + 324) = (((v14 + 3) >> 2) + 1) & 0x7FFFFFFE;
    if (*(v12 + 222) == 1)
    {
      AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::LoadShader::emit((v12 + 48), *(v12 + 312), *v12 + *(v12 + 316));
    }

    v16 = *(a1 + 3272);
    v17 = *(a1 + 3224);
    memcpy(v17, *v16, *(v16 + 8) - *v16);
    if (*(v16 + 272) == 1)
    {
      *&v17[*(v16 + 276)] = vbslq_s8(xmmword_29D2F17C0, *&v17[*(v16 + 276)], vshlq_u8(vqtbl1q_s8(0, xmmword_29D2F17A0), xmmword_29D2F17B0));
    }

    v18 = *(a1 + 3272);
    v20 = *(v18 + 64);
    v19 = *(v18 + 80);
    *(a1 + 3280) = *(v18 + 48);
    *(a1 + 3296) = v20;
    *(a1 + 3312) = v19;
    v21 = *(v18 + 128);
    v22 = *(v18 + 144);
    v23 = *(v18 + 112);
    *(a1 + 3328) = *(v18 + 96);
    *(a1 + 3376) = v22;
    *(a1 + 3360) = v21;
    *(a1 + 3344) = v23;
    v25 = *(v18 + 176);
    v24 = *(v18 + 192);
    v26 = *(v18 + 208);
    *(a1 + 3392) = *(v18 + 160);
    *(a1 + 3440) = v26;
    *(a1 + 3424) = v24;
    *(a1 + 3408) = v25;
  }

  std::mutex::unlock((a1 + 4328));
}

void AGX::ObjectProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::ObjectProgramVariant(unint64_t a1, uint64_t a2, void *a3, const std::string *a4, uint64_t a5, uint64_t a6, int a7)
{
  v9 = 0;
  v312 = *MEMORY[0x29EDCA608];
  *(a1 + 8) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 48) = -1;
  *(a1 + 52) = 0u;
  *(a1 + 68) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0xFFFFFFFF00000001;
  *(a1 + 104) = 1610612736;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *&v10 = -1;
  *(&v10 + 1) = -1;
  *(a1 + 144) = 0u;
  *(a1 + 160) = v10;
  *(a1 + 176) = v10;
  *(a1 + 192) = v10;
  *(a1 + 208) = -1;
  *(a1 + 216) = 0;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 224) = 0;
  *(a1 + 272) = 1065353216;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 1065353216;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 1065353216;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 437) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0;
  *(a1 + 528) = 1;
  *(a1 + 612) = 0;
  *(a1 + 580) = 0u;
  *(a1 + 596) = 0u;
  *(a1 + 548) = 0u;
  *(a1 + 564) = 0u;
  *(a1 + 532) = 0u;
  *a1 = &unk_2A23F78F0;
  *(a1 + 616) = a2;
  *(a1 + 968) = 0;
  *(a1 + 1136) = 0;
  *(a1 + 1120) = 0u;
  *(a1 + 1152) = 0u;
  *(a1 + 744) = 0;
  *(a1 + 664) = 0u;
  *(a1 + 680) = 0u;
  *(a1 + 696) = 0u;
  *(a1 + 712) = 0u;
  *(a1 + 728) = 0u;
  *(a1 + 841) = 0u;
  *(a1 + 816) = 0u;
  *(a1 + 832) = 0u;
  *(a1 + 784) = 0u;
  *(a1 + 800) = 0u;
  *(a1 + 752) = 0u;
  *(a1 + 768) = 0u;
  *(a1 + 928) = 0u;
  *(a1 + 944) = 0u;
  *(a1 + 896) = 0u;
  *(a1 + 912) = 0u;
  *(a1 + 864) = 0u;
  *(a1 + 880) = 0u;
  *(a1 + 1097) = 0u;
  *(a1 + 1088) = 0u;
  *(a1 + 1072) = 0u;
  *(a1 + 1056) = 0u;
  *(a1 + 1040) = 0u;
  *(a1 + 1008) = 0u;
  *(a1 + 1024) = 0u;
  *(a1 + 976) = 0u;
  *(a1 + 992) = 0u;
  *(a1 + 1144) = a1 + 1152;
  *(a1 + 1168) = 0xFFFFFFFF00000001;
  *(a1 + 1176) = 1610612736;
  *(a1 + 1216) = 0u;
  *(a1 + 1200) = 0u;
  *(a1 + 1184) = 0u;
  *(a1 + 1280) = -1;
  *(a1 + 1264) = v10;
  *(a1 + 1248) = v10;
  *(a1 + 1232) = v10;
  *(a1 + 1288) = 0;
  *(a1 + 1392) = 0u;
  *(a1 + 1376) = 0u;
  *(a1 + 1360) = 0u;
  *(a1 + 1416) = atomic_fetch_add((a2 + 17008), 1uLL);
  *(a1 + 1504) = 0;
  v298 = (a1 + 1504);
  *(a1 + 1512) = 0u;
  *(a1 + 1536) = 0;
  *(a1 + 1544) = 0u;
  *(a1 + 1568) = 0u;
  *(a1 + 1584) = 0u;
  *(a1 + 1600) = 0;
  *(a1 + 1616) = 0u;
  *(a1 + 1632) = 0u;
  *(a1 + 1648) = 0;
  *(a1 + 1664) = 0u;
  *(a1 + 1680) = 0u;
  *(a1 + 1696) = 0;
  *(a1 + 1744) = 0;
  *(a1 + 1728) = 0u;
  *(a1 + 1712) = 0u;
  *(a1 + 1984) = 0;
  *(a1 + 1968) = 0u;
  *(a1 + 1952) = 0u;
  *(a1 + 2000) = 0;
  *(a1 + 2004) = 0;
  *(a1 + 2008) = 0;
  *(a1 + 1424) = 0u;
  *(a1 + 1440) = 0u;
  *(a1 + 1456) = 0u;
  *(a1 + 1472) = 0u;
  v301 = (a1 + 1424);
  *(a1 + 1481) = 0u;
  *(a1 + 1760) = 0u;
  *(a1 + 1776) = 0u;
  *(a1 + 1792) = 0u;
  *(a1 + 1808) = 0u;
  *(a1 + 1824) = 0u;
  *(a1 + 1840) = 0u;
  *(a1 + 1856) = 0u;
  *(a1 + 1872) = 0u;
  *(a1 + 1888) = 0u;
  *(a1 + 1904) = 0u;
  *(a1 + 1920) = 0u;
  *(a1 + 1936) = 0;
  *(a1 + 2076) = 0u;
  *(a1 + 2047) = 0u;
  *(a1 + 2063) = 0u;
  v293 = (a1 + 2031);
  *(a1 + 2031) = 0u;
  *(a1 + 2112) = 0;
  *(a1 + 2096) = 0u;
  *(a1 + 2120) = 0u;
  *(a1 + 2136) = 0u;
  *(a1 + 2152) = 0u;
  *(a1 + 2168) = 0u;
  *(a1 + 2184) = 0;
  *(a1 + 2192) = *(a5 + 465);
  *(a1 + 2194) = 0;
  *(a1 + 2208) = 0u;
  v304 = a1 + 2208;
  *(a1 + 2200) = a1 + 2208;
  *(a1 + 2224) = 0u;
  *(a1 + 2240) = 0u;
  *(a1 + 2256) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2288) = 0u;
  *(a1 + 2304) = 0u;
  *(a1 + 2320) = 0u;
  *(a1 + 2336) = 0u;
  *(a1 + 2352) = 0u;
  *(a1 + 2368) = 0u;
  *(a1 + 2384) = 0;
  if (a3[28])
  {
    v11 = a3[29] == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = 28;
  if (v11)
  {
    v12 = 98;
    v13 = a3 + 98;
  }

  else
  {
    v13 = a3 + 28;
  }

  v14 = a3[v12];
  if (v14 && v13[1])
  {
    v9 = (v14 + *v14);
  }

  v15 = (v9 - *v9);
  if (*v15 >= 5u && (v16 = v15[2]) != 0)
  {
    v305 = (v9 + v16 + *(v9 + v16));
  }

  else
  {
    v305 = 0;
  }

  v17 = 0;
  if (a3[58])
  {
    v18 = a3[59] == 0;
  }

  else
  {
    v18 = 1;
  }

  v19 = 58;
  if (v18)
  {
    v19 = 128;
    v20 = a3 + 128;
  }

  else
  {
    v20 = a3 + 58;
  }

  v21 = a3[v19];
  if (v21 && v20[1])
  {
    v17 = (v21 + *v21);
  }

  v22 = (v17 - *v17);
  if (*v22 >= 5u && (v23 = v22[2]) != 0)
  {
    v24 = (v17 + v23 + *(v17 + v23));
  }

  else
  {
    v24 = 0;
  }

  v25 = *v24;
  v26 = -v25;
  v27 = (v24 - v25);
  v28 = *(v24 - v25);
  if (v28 < 0x25)
  {
    LOBYTE(v29) = 0;
  }

  else
  {
    v29 = v27[18];
    if (v27[18])
    {
      LOBYTE(v29) = *(v24 + v29) != 0;
    }
  }

  *(a1 + 2193) = v29;
  v30 = (v305 - *v305);
  if (*v30 < 0x55u || (v31 = v30[42]) == 0 || !*(v305 + v31))
  {
LABEL_63:
    if (v28 < 7)
    {
      LODWORD(v45) = 0;
    }

    else
    {
      v45 = *(v24 + v26 + 6);
      if (*(v24 + v26 + 6))
      {
        LODWORD(v45) = *(v24 + v45);
      }
    }

    *(a1 + 1408) = v45;
    v46 = (v24 - *v24);
    if (*v46 >= 0x13u && (v47 = v46[9]) != 0)
    {
      v48 = v24 + v47 + *(v24 + v47) + 4;
    }

    else
    {
      v48 = "";
    }

    v299 = (a1 + 1472);
    v300 = (a1 + 1448);
    v294 = a1 + 2008;
    v295 = (a1 + 2224);
    MEMORY[0x29ED51E00](v301, v48);
    v49 = (v24 - *v24);
    if (*v49 >= 9u && (v50 = v49[4]) != 0)
    {
      v51 = v24 + v50 + *(v24 + v50) + 4;
    }

    else
    {
      v51 = "";
    }

    MEMORY[0x29ED51E00](v300, v51);
    v52 = (v24 - *v24);
    if (*v52 < 0x29u)
    {
      LOBYTE(v53) = 0;
    }

    else
    {
      v53 = v52[20];
      if (v53)
      {
        LOBYTE(v53) = *(v24 + v53) != 0;
      }
    }

    *(a1 + 1496) = v53;
    std::string::operator=(v299, a4);
    v54 = (v24 - *v24);
    if (*v54 >= 0x51u && (v55 = v54[40]) != 0)
    {
      v56 = v24 + v55 + *(v24 + v55) + 4;
    }

    else
    {
      v56 = "";
    }

    MEMORY[0x29ED51E00](v298, v56);
    v57 = (v24 - *v24);
    v303 = v24;
    if (*v57 >= 5u && v57[2] && *(a2 + 16608) == 1)
    {
      v58 = a3[1];
      if (v58 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_501;
      }

      v59 = *a3;
      if (v58 >= 0x17)
      {
        operator new();
      }

      __dst[23] = a3[1];
      if (v58)
      {
        memmove(__dst, v59, v58);
      }

      __dst[v58] = 0;
      if (*v293 < 0)
      {
        operator delete(*v294);
      }

      *v294 = *__dst;
      *(v294 + 16) = *&__dst[16];
      v60 = a3[3];
      if (a3[4])
      {
        v61 = v60 == 0;
      }

      else
      {
        v61 = 1;
      }

      if (v61)
      {
        v60 = a3[73];
      }

      *(a1 + 2032) = v60 - *a3;
    }

    v62 = a3 + 113;
    if (a3[43])
    {
      v63 = a3[44] == 0;
    }

    else
    {
      v63 = 1;
    }

    v64 = 43;
    if (v63)
    {
      v64 = 113;
    }

    else
    {
      v62 = a3 + 43;
    }

    v306 = a3;
    v65 = a3[v64];
    if (!v65 || !v62[1])
    {
LABEL_126:
      v78 = v306;
      v79 = v306 + 138;
      if (v306[68])
      {
        v80 = v306[69] == 0;
      }

      else
      {
        v80 = 1;
      }

      v81 = 68;
      if (v80)
      {
        v81 = 138;
      }

      else
      {
        v79 = v306 + 68;
      }

      v82 = v306[v81];
      v83 = v79[1];
      if (v82)
      {
        v84 = v83 == 0;
      }

      else
      {
        v84 = 1;
      }

      if (v84 || (v85 = (v82 + *v82), v86 = (v85 - *v85), *v86 < 5u) || (v87 = v86[2]) == 0)
      {
        v88 = 0;
      }

      else
      {
        v88 = *(v85 + v87);
      }

      if (getTimebaseInfo(void)::once != -1)
      {
        dispatch_once(&getTimebaseInfo(void)::once, &__block_literal_global_11354);
      }

      *(a1 + 2232) = (v88 * getTimebaseInfo(void)::sTimebaseInfo / unk_2A17A17F0) / 1000000.0;
      v89 = (v305 - *v305);
      if (*v89 < 5u)
      {
        LODWORD(v90) = 0;
      }

      else
      {
        v90 = v89[2];
        if (v90)
        {
          LODWORD(v90) = *(v305 + v90);
        }
      }

      *v295 = v90;
      v91 = (v305 - *v305);
      if (*v91 < 0x2Du)
      {
        LODWORD(v92) = 0;
      }

      else
      {
        v92 = v91[22];
        if (v92)
        {
          LODWORD(v92) = *(v305 + v92);
        }
      }

      *(a1 + 2228) = v92;
      v93 = (v305 - *v305);
      if (*v93 < 0x35u)
      {
        LODWORD(v94) = 0;
      }

      else
      {
        v94 = v93[26];
        if (v94)
        {
          LODWORD(v94) = *(v305 + v94);
        }
      }

      *(a1 + 2268) = v94;
      v95 = (v305 - *v305);
      if (*v95 < 0x43u)
      {
        LODWORD(v96) = 0;
      }

      else
      {
        v96 = v95[33];
        if (v96)
        {
          LODWORD(v96) = *(v305 + v96);
        }
      }

      *(a1 + 2304) = v96;
      v97 = v306 + 108;
      if (v306[38])
      {
        v98 = v306[39] == 0;
      }

      else
      {
        v98 = 1;
      }

      v99 = 38;
      if (v98)
      {
        v99 = 108;
      }

      else
      {
        v97 = v306 + 38;
      }

      v100 = v306[v99];
      if (v100 && v97[1])
      {
        v101 = (v100 + *v100);
        v102 = (v101 - *v101);
        if (*v102 < 0xDu)
        {
          LODWORD(v103) = 0;
        }

        else
        {
          v103 = v102[6];
          if (v103)
          {
            LODWORD(v103) = *(v101 + v103);
          }
        }

        *(a1 + 2228) = v103;
        v104 = (v101 - *v101);
        if (*v104 < 0xBu)
        {
          LODWORD(v105) = 0;
        }

        else
        {
          v105 = v104[5];
          if (v105)
          {
            LODWORD(v105) = *(v101 + v105);
          }
        }

        *(a1 + 2236) = v105;
        v106 = (v101 - *v101);
        if (*v106 < 0x11u)
        {
          LODWORD(v107) = 0;
        }

        else
        {
          v107 = v106[8];
          if (v107)
          {
            LODWORD(v107) = *(v101 + v107);
          }
        }

        *(a1 + 2240) = v107;
        v108 = (v101 - *v101);
        if (*v108 < 0x13u)
        {
          LODWORD(v109) = 0;
        }

        else
        {
          v109 = v108[9];
          if (v109)
          {
            LODWORD(v109) = *(v101 + v109);
          }
        }

        *(a1 + 2244) = v109;
        v110 = (v101 - *v101);
        if (*v110 < 0x17u)
        {
          LODWORD(v111) = 0;
        }

        else
        {
          v111 = v110[11];
          if (v111)
          {
            LODWORD(v111) = *(v101 + v111);
          }
        }

        *(a1 + 2248) = v111;
        v112 = (v101 - *v101);
        if (*v112 < 0x1Bu)
        {
          LODWORD(v113) = 0;
        }

        else
        {
          v113 = v112[13];
          if (v113)
          {
            LODWORD(v113) = *(v101 + v113);
          }
        }

        *(a1 + 2252) = v113;
        v114 = (v101 - *v101);
        if (*v114 < 0x15u)
        {
          LODWORD(v115) = 0;
        }

        else
        {
          v115 = v114[10];
          if (v115)
          {
            LODWORD(v115) = *(v101 + v115);
          }
        }

        *(a1 + 2256) = v115;
        v116 = (v101 - *v101);
        if (*v116 < 0x19u)
        {
          LODWORD(v117) = 0;
        }

        else
        {
          v117 = v116[12];
          if (v117)
          {
            LODWORD(v117) = *(v101 + v117);
          }
        }

        *(a1 + 2260) = v117;
        v118 = (v101 - *v101);
        if (*v118 < 0x1Du)
        {
          LODWORD(v119) = 0;
        }

        else
        {
          v119 = v118[14];
          if (v119)
          {
            LODWORD(v119) = *(v101 + v119);
          }
        }

        *(a1 + 2264) = v119;
        v120 = (v101 - *v101);
        if (*v120 < 0xFu)
        {
          LODWORD(v121) = 0;
        }

        else
        {
          v121 = v120[7];
          if (v121)
          {
            LODWORD(v121) = *(v101 + v121);
          }
        }

        *(a1 + 2268) = v121;
        v122 = (v101 - *v101);
        if (*v122 < 0x1Fu)
        {
          LODWORD(v123) = 0;
        }

        else
        {
          v123 = v122[15];
          if (v123)
          {
            LODWORD(v123) = *(v101 + v123);
          }
        }

        *(a1 + 2272) = v123;
        v124 = (v101 - *v101);
        if (*v124 < 0x21u)
        {
          LODWORD(v125) = 0;
        }

        else
        {
          v125 = v124[16];
          if (v125)
          {
            LODWORD(v125) = *(v101 + v125);
          }
        }

        *(a1 + 2276) = v125;
        v126 = (v101 - *v101);
        if (*v126 < 0x23u)
        {
          LODWORD(v127) = 0;
        }

        else
        {
          v127 = v126[17];
          if (v127)
          {
            LODWORD(v127) = *(v101 + v127);
          }
        }

        *(a1 + 2280) = v127;
        v128 = (v101 - *v101);
        if (*v128 < 0x25u)
        {
          LODWORD(v129) = 0;
        }

        else
        {
          v129 = v128[18];
          if (v129)
          {
            LODWORD(v129) = *(v101 + v129);
          }
        }

        *(a1 + 2284) = v129;
        v130 = (v101 - *v101);
        if (*v130 < 0x27u)
        {
          LODWORD(v131) = 0;
        }

        else
        {
          v131 = v130[19];
          if (v131)
          {
            LODWORD(v131) = *(v101 + v131);
          }
        }

        *(a1 + 2288) = v131;
        v132 = (v101 - *v101);
        if (*v132 < 0x29u)
        {
          LODWORD(v133) = 0;
        }

        else
        {
          v133 = v132[20];
          if (v133)
          {
            LODWORD(v133) = *(v101 + v133);
          }
        }

        *(a1 + 2292) = v133;
        v134 = (v101 - *v101);
        if (*v134 < 0x2Bu)
        {
          LODWORD(v135) = 0;
        }

        else
        {
          v135 = v134[21];
          if (v135)
          {
            LODWORD(v135) = *(v101 + v135);
          }
        }

        *(a1 + 2296) = v135;
        v136 = (v101 - *v101);
        if (*v136 < 7u)
        {
          LODWORD(v137) = 0;
        }

        else
        {
          v137 = v136[3];
          if (v137)
          {
            LODWORD(v137) = *(v101 + v137);
          }
        }

        *(a1 + 2300) = v137;
        v138 = (v101 - *v101);
        if (*v138 >= 5u && (v139 = v138[2]) != 0)
        {
          v140 = *(v101 + v139);
        }

        else
        {
          v140 = 0;
        }

        *(a1 + 2308) = v140;
      }

      if (v306[53])
      {
        v141 = v306[54];
        if (v141)
        {
          v142 = v306[53];
        }

        else
        {
          v142 = v306[123];
        }

        if (v141)
        {
          v143 = v306 + 53;
        }

        else
        {
          v143 = v306 + 123;
        }
      }

      else
      {
        v143 = v306 + 123;
        v142 = v306[123];
      }

      MEMORY[0x29ED51E10](a1 + 2368, v142, v143[1]);
      std::string::push_back((a1 + 2368), 0);
      v144 = *v305;
      v145 = v305 - v144;
      v146 = *(v305 - v144);
      if (v146 < 0x39)
      {
        goto LABEL_269;
      }

      v147 = -v144;
      v148 = *(v145 + 28);
      if (v148)
      {
        v149 = (v305 + v148 + *(v305 + v148));
        if (*v149)
        {
          *(a1 + 2112) = 1;
          v150 = (v149 + v149[1] + 4);
          v151 = (v150 - *v150);
          if (*v151 >= 9u && (v152 = v151[4]) != 0)
          {
            v153 = *(v150 + v152);
          }

          else
          {
            v153 = 0;
          }

          *(a1 + 2312) = v153;
          *(a1 + 2316) = 1;
          v154 = *v305;
          v147 = -v154;
          v146 = *(v305 - v154);
        }
      }

      if (v146 < 0x3B)
      {
        goto LABEL_269;
      }

      v155 = v305 + v147;
      if (*(v155 + 29))
      {
        v156 = (v305 + *(v155 + 29) + *(v305 + *(v155 + 29)));
        v157 = *v156;
        if (v157)
        {
          v158 = v156 + 1;
          do
          {
            v160 = *v158++;
            v159 = v160;
            if (!(v160 >> 20))
            {
              *(a1 + 2096 + 8 * (v159 > 0x3F)) |= 1 << v159;
            }

            --v157;
          }

          while (v157);
        }
      }

      if (v146 < 0x57)
      {
LABEL_269:
        LODWORD(v161) = 0;
      }

      else
      {
        v161 = *(v155 + 43);
        if (*(v155 + 43))
        {
          LODWORD(v161) = *(v305 + v161);
        }
      }

      *(a1 + 1300) = v161;
      v162 = (v305 - *v305);
      if (*v162 >= 0x21u && (v163 = v162[16]) != 0)
      {
        v164 = *(v305 + v163);
      }

      else
      {
        v164 = 0;
      }

      v165 = &qword_2A17A1000;
      {
        getAdditionalSpillBufferBytes(void)::extra = 0;
      }

      *(a1 + 1304) = getAdditionalSpillBufferBytes(void)::extra + v164;
      v166 = v305;
      v167 = (v305 - *v305);
      if (*v167 < 0x59u)
      {
        LODWORD(v168) = 0;
      }

      else
      {
        v168 = v167[44];
        if (v168)
        {
          LODWORD(v168) = *(v305 + v168);
        }
      }

      *(a1 + 1328) = v168;
      v169 = (v305 - *v305);
      if (*v169 < 0x51u)
      {
        LODWORD(v170) = 0;
      }

      else
      {
        v170 = v169[40];
        if (v170)
        {
          LODWORD(v170) = *(v305 + v170);
        }
      }

      *(a1 + 1332) = v170;
      v171 = (v305 - *v305);
      if (*v171 < 0x4Bu)
      {
        LODWORD(v172) = 0;
      }

      else
      {
        v172 = v171[37];
        if (v172)
        {
          LODWORD(v172) = *(v305 + v172);
        }
      }

      *(a1 + 1340) = v172;
      v173 = (v305 - *v305);
      v174 = *v173;
      if (v174 >= 0x25)
      {
        if (v173[18] && *(v305 + v173[18]))
        {
          if (v174 < 0x27)
          {
            LOBYTE(v175) = 0;
            v176 = 1;
            goto LABEL_298;
          }

          v175 = v173[19];
          goto LABEL_292;
        }

        if (v174 >= 0x27)
        {
          v175 = v173[19];
          if (v173[19] && *(v305 + v173[19]))
          {
            v176 = 1;
            LOBYTE(v175) = 1;
            goto LABEL_298;
          }

          if (v174 < 0x29)
          {
            goto LABEL_498;
          }

          if (v173[20] && *(v305 + v173[20]))
          {
LABEL_292:
            v176 = 1;
            goto LABEL_499;
          }

          if (v174 >= 0x71 && (v291 = v173[56]) != 0)
          {
            v176 = *(v305 + v291) != 0;
          }

          else
          {
LABEL_498:
            v176 = 0;
          }

LABEL_499:
          if (v175)
          {
            LOBYTE(v175) = *(v305 + v175) != 0;
          }

LABEL_298:
          *(a1 + 1350) = v175;
          v177 = (v303 - *v303);
          v178 = *v177;
          if (v178 < 0x21)
          {
            v180 = 0;
            LODWORD(v179) = 0;
          }

          else
          {
            v179 = v177[16];
            if (v177[16])
            {
              LODWORD(v179) = *(v303 + v179);
            }

            if (v178 < 0x4D)
            {
              v180 = 0;
            }

            else
            {
              v180 = v177[38];
              if (v177[38])
              {
                v180 = *(v303 + v180);
              }

              if (v178 >= 0x4F)
              {
                v181 = v177[39];
                if (v181)
                {
                  v181 = *(v303 + v181);
                }

LABEL_310:
                *(a1 + 1392) = v179 | (v180 << 32);
                *(a1 + 1400) = v181;
                *(a1 + 1354) = (v176 | v175) & 1;
                v182 = *v305;
                v183 = (v305 - v182);
                v184 = *(v305 - v182);
                if (v184 < 0x37)
                {
                  LOBYTE(v185) = 0;
                }

                else
                {
                  v185 = v183[27];
                  if (v183[27])
                  {
                    LOBYTE(v185) = *(v305 + v185) != 0;
                  }
                }

                *(a1 + 1349) = v185;
                v186 = (v303 - *v303);
                v187 = *v186;
                if (v187 < 0x33)
                {
                  LOBYTE(v188) = 0;
                }

                else
                {
                  v188 = v186[25];
                  if (v186[25])
                  {
                    LOBYTE(v188) = *(v303 + v188) != 0;
                  }
                }

                *(a1 + 1355) = v188;
                if (v184 < 0x3F)
                {
                  LOBYTE(v189) = 0;
                }

                else
                {
                  v189 = v183[31];
                  if (v183[31])
                  {
                    v190 = (v305 + v189 + *(v305 + v189));
                    v189 = *v190;
                    if (v189)
                    {
                      v191 = v190 + 1;
                      while (1)
                      {
                        v193 = *v191++;
                        v192 = v193;
                        if (v193 < 0x36 && ((0x3F000000000777uLL >> v192) & 1) != 0)
                        {
                          break;
                        }

                        if (!--v189)
                        {
                          goto LABEL_327;
                        }
                      }

                      LOBYTE(v189) = 1;
                    }
                  }
                }

LABEL_327:
                *(a1 + 1357) = v189;
                if (v187 <= 0x14)
                {
                  LOBYTE(v195) = 0;
                  *(a1 + 1351) = 0;
                }

                else
                {
                  v194 = v186[10];
                  if (v186[10])
                  {
                    LOBYTE(v194) = *(v303 + v194) != 0;
                  }

                  *(a1 + 1351) = v194;
                  if (v187 < 0x25)
                  {
                    LOBYTE(v195) = 0;
                  }

                  else
                  {
                    v195 = v186[18];
                    if (v186[18])
                    {
                      LOBYTE(v195) = *(v303 + v195) != 0;
                    }
                  }
                }

                v196 = -v182;
                *(a1 + 2193) = v195;
                if (v184 < 0x5D)
                {
                  LOBYTE(v197) = 0;
                }

                else
                {
                  v197 = v183[46];
                  if (v197)
                  {
                    LOBYTE(v197) = *(v305 + v197) != 0;
                  }
                }

                *(a1 + 1356) = v197;
                if (v187 >= 0x23 && (v198 = v186[17]) != 0)
                {
                  *(a1 + 2195) = 1;
                  v199 = (v303 + v198 + *(v303 + v198));
                  v200 = *v199;
                  if (v200)
                  {
                    v201 = &v199[v200];
                    while (1)
                    {
                      v202 = v199[1];
                      v203 = (++v199 + v202);
                      v204 = (v203 - *v203);
                      v205 = *v204;
                      if (v205 < 7)
                      {
                        v206 = 0;
                        v208 = 0;
                        if (v205 < 5)
                        {
                          goto LABEL_351;
                        }

                        v207 = v204[2];
                        if (v207)
                        {
                          goto LABEL_350;
                        }
                      }

                      else if (v204[3])
                      {
                        v206 = *(v203 + v204[3]);
                        v207 = v204[2];
                        if (v207)
                        {
                          goto LABEL_350;
                        }
                      }

                      else
                      {
                        v206 = 0;
                        v207 = v204[2];
                        if (v207)
                        {
LABEL_350:
                          v208 = *(v203 + v207);
                          goto LABEL_351;
                        }
                      }

                      v208 = 0;
LABEL_351:
                      v209 = v304;
LABEL_352:
                      v210 = *v209;
                      if (!*v209)
                      {
LABEL_356:
                        operator new();
                      }

                      while (1)
                      {
                        v209 = v210;
                        v211 = *(v210 + 28);
                        if (v208 < v211)
                        {
                          goto LABEL_352;
                        }

                        if (v211 >= v208)
                        {
                          break;
                        }

                        v210 = *(v209 + 8);
                        if (!v210)
                        {
                          goto LABEL_356;
                        }
                      }

                      v78 = v306;
                      *(v209 + 32) = v206;
                      if (v199 == v201)
                      {
                        v166 = v305;
                        v213 = *v305;
                        v196 = -v213;
                        v165 = &qword_2A17A1000;
                        if (*(v305 - v213) < 0x21u)
                        {
LABEL_366:
                          v212 = 0;
                          {
                            goto LABEL_504;
                          }

                          goto LABEL_369;
                        }

LABEL_362:
                        if (*(v166 + v196 + 32))
                        {
                          v212 = *(v166 + *(v166 + v196 + 32));
                          {
                            goto LABEL_369;
                          }
                        }

                        else
                        {
                          v212 = 0;
                          {
                            goto LABEL_369;
                          }
                        }

LABEL_504:
                        {
                          *(v165 + 402) = 0;
                        }

LABEL_369:
                        v214 = *(v165 + 402) + v212;
                        *(a1 + 1296) = v214;
                        v215 = (v305 - *v305);
                        if (*v215 < 0x43u)
                        {
                          LODWORD(v216) = 0;
                        }

                        else
                        {
                          v216 = v215[33];
                          if (v216)
                          {
                            LODWORD(v216) = *(v305 + v216);
                          }
                        }

                        *(a1 + 1308) = v216;
                        v217 = (v305 - *v305);
                        if (*v217 < 5u)
                        {
                          LODWORD(v218) = 0;
                        }

                        else
                        {
                          v218 = v217[2];
                          if (v218)
                          {
                            LODWORD(v218) = *(v305 + v218);
                          }
                        }

                        *(a1 + 1292) = v218;
                        v219 = (v305 - *v305);
                        if (*v219 < 0x51u)
                        {
                          LODWORD(v220) = 0;
                        }

                        else
                        {
                          v220 = v219[40];
                          if (v220)
                          {
                            LODWORD(v220) = *(v305 + v220);
                          }
                        }

                        *(a1 + 1324) = v220;
                        v221 = (v305 - *v305);
                        if (*v221 < 0x4Fu)
                        {
                          LODWORD(v222) = 0;
                        }

                        else
                        {
                          v222 = v221[39];
                          if (v222)
                          {
                            LODWORD(v222) = *(v305 + v222);
                          }
                        }

                        *(a1 + 1336) = v222;
                        *(a1 + 1344) = *(a5 + 468);
                        v223 = (v305 - *v305);
                        if ((*(v305 + v223[6] + *(v305 + v223[6])) | v214) != 0 || v176)
                        {
                          LOBYTE(v224) = 1;
                          v225 = v303;
                          goto LABEL_399;
                        }

                        v226 = *v223;
                        v225 = v303;
                        if (v226 < 0x21)
                        {
                          v227 = 0;
                        }

                        else if (v223[16])
                        {
                          v227 = *(v305 + v223[16]);
                          if (v226 >= 0x43)
                          {
LABEL_488:
                            if (v223[33])
                            {
                              v228 = *(v305 + v223[33]);
                              {
                                goto LABEL_490;
                              }

                              goto LABEL_393;
                            }
                          }
                        }

                        else
                        {
                          v227 = 0;
                          if (v226 >= 0x43)
                          {
                            goto LABEL_488;
                          }
                        }

                        v228 = 0;
                        {
LABEL_490:
                          {
                            *(v165 + 402) = 0;
                          }
                        }

LABEL_393:
                        if (v228 + v227 + *(v165 + 402))
                        {
                          LOBYTE(v224) = 1;
                        }

                        else
                        {
                          v229 = (v305 - *v305);
                          if (*v229 < 0x5Fu)
                          {
                            LOBYTE(v224) = 0;
                          }

                          else
                          {
                            v224 = v229[47];
                            if (v224)
                            {
                              LOBYTE(v224) = *(v305 + v224) != 0;
                            }
                          }
                        }

LABEL_399:
                        *(a1 + 1348) = v224;
                        v230 = (v225 - *v225);
                        if (*v230 < 0x11u)
                        {
                          LODWORD(v231) = 0;
                        }

                        else
                        {
                          v231 = v230[8];
                          if (v231)
                          {
                            LODWORD(v231) = *(v225 + v231);
                          }
                        }

                        v232 = a2 + 6328;
                        v233 = (a1 + 2056);
                        v234 = (a1 + 1808);
                        *(a1 + 2000) = v231;
                        {
                          v233 = (a1 + 2056);
                          if (v292)
                          {
                            v233 = (a1 + 2056);
                          }
                        }

                        v235 = (v78 + 3);
                        if (v78[4])
                        {
                          v236 = v78[3] == 0;
                        }

                        else
                        {
                          v236 = 1;
                        }

                        v237 = (v78 + 73);
                        if (v236)
                        {
                          v238 = v78 + 73;
                        }

                        else
                        {
                          v238 = v78 + 3;
                        }

                        v239 = v238[1];
                        v240 = 168;
                        if (a7)
                        {
                          v240 = 504;
                        }

                        v241 = v232 + v240;
                        v242 = v78;
                        if (a7)
                        {
                          v243 = 0x1000000000;
                        }

                        else
                        {
                          v243 = 0;
                        }

                        AGX::Heap<true>::allocateImpl(__dst, v241, v239, v233);
                        *(a1 + 2088) += *&__dst[16];
                        v244 = *&__dst[16];
                        *v234 = *__dst;
                        *(a1 + 1824) = v244;
                        *(a1 + 1833) = *&__dst[25];
                        *(a1 + 1528) = *(a1 + 1808) + v243;
                        *(a1 + 1560) = v241;
                        v245 = *(a1 + 1824);
                        *(a1 + 1568) = *v234;
                        *(a1 + 1584) = v245;
                        *(a1 + 1593) = *(a1 + 1833);
                        if (*v235)
                        {
                          v246 = v242[4];
                          if (v246)
                          {
                            v247 = *v235;
                          }

                          else
                          {
                            v247 = v242[73];
                          }

                          if (v246)
                          {
                            v237 = v235;
                          }
                        }

                        else
                        {
                          v247 = *v237;
                        }

                        memcpy(*(a1 + 1816), v247, v237[1]);
                        v248 = *(a1 + 1816);
                        v249 = *(a1 + 1824);
                        *(a1 + 1536) = *(a1 + 1528);
                        *(a1 + 1544) = v248;
                        *(a1 + 1552) = v249;
                        v250 = (v242 + 8);
                        if (v242[8])
                        {
                          if (v242[9])
                          {
                            v251 = v242 + 8;
                          }

                          else
                          {
                            v251 = v242 + 78;
                          }

                          v252 = v251[1];
                          if (!v252)
                          {
                            goto LABEL_439;
                          }
                        }

                        else
                        {
                          v252 = v242[79];
                          if (!v252)
                          {
                            goto LABEL_439;
                          }
                        }

                        AGX::Heap<true>::allocateImpl(__dst, v232, v252, (a1 + 2064));
                        *(a1 + 2088) += *&__dst[16];
                        v253 = *&__dst[16];
                        *(a1 + 1856) = *__dst;
                        *(a1 + 1872) = v253;
                        *(a1 + 1881) = *&__dst[25];
                        v254 = *(a1 + 1872);
                        *(a1 + 1616) = *(a1 + 1856);
                        *(a1 + 1632) = v254;
                        *(a1 + 1641) = *(a1 + 1881);
                        if (*v250)
                        {
                          v255 = v242[9];
                          if (v255)
                          {
                            v256 = *v250;
                          }

                          else
                          {
                            v256 = v242[78];
                          }

                          if (v255)
                          {
                            v257 = v242 + 8;
                          }

                          else
                          {
                            v257 = v242 + 78;
                          }
                        }

                        else
                        {
                          v257 = v242 + 78;
                          v256 = v242[78];
                        }

                        memcpy(*(a1 + 1864), v256, v257[1]);
LABEL_439:
                        v258 = (v242 + 13);
                        if (v242[13])
                        {
                          if (v242[14])
                          {
                            v259 = v242 + 13;
                          }

                          else
                          {
                            v259 = v242 + 83;
                          }

                          v260 = v259[1];
                          if (!v260)
                          {
                            goto LABEL_455;
                          }
                        }

                        else
                        {
                          v260 = v242[84];
                          if (!v260)
                          {
                            goto LABEL_455;
                          }
                        }

                        AGX::Heap<true>::allocateImpl(__dst, v232, v260, (a1 + 2072));
                        *(a1 + 2088) += *&__dst[16];
                        v261 = *&__dst[16];
                        *(a1 + 1904) = *__dst;
                        *(a1 + 1920) = v261;
                        *(a1 + 1929) = *&__dst[25];
                        v262 = *(a1 + 1920);
                        *(a1 + 1664) = *(a1 + 1904);
                        *(a1 + 1680) = v262;
                        *(a1 + 1689) = *(a1 + 1929);
                        if (*v258)
                        {
                          v263 = v242[14];
                          if (v263)
                          {
                            v264 = *v258;
                          }

                          else
                          {
                            v264 = v242[83];
                          }

                          if (v263)
                          {
                            v265 = v242 + 13;
                          }

                          else
                          {
                            v265 = v242 + 83;
                          }
                        }

                        else
                        {
                          v265 = v242 + 83;
                          v264 = v242[83];
                        }

                        memcpy(*(a1 + 1912), v264, v265[1]);
                        v266 = *(a1 + 1920);
                        *(a1 + 1760) = *(a1 + 1904);
                        *(a1 + 1776) = v266;
LABEL_455:
                        v267 = v242 + 23;
                        if (v242[23])
                        {
                          if (!v242[24])
                          {
                            v267 = v242 + 93;
                          }

                          v268 = v267[1];
                          if (v268)
                          {
LABEL_459:
                            AGX::Heap<true>::allocateImpl(__dst, v232, v268, (a1 + 2080));
                            *(a1 + 2088) += *&__dst[16];
                            v269 = *&__dst[16];
                            *(a1 + 1952) = *__dst;
                            *(a1 + 1968) = v269;
                            *(a1 + 1977) = *&__dst[25];
                            v270 = *(a1 + 1968);
                            *(a1 + 1712) = *(a1 + 1952);
                            *(a1 + 1728) = v270;
                            *(a1 + 1737) = *(a1 + 1977);
                            v271 = *(a1 + 1968);
                            *(a1 + 1784) = *(a1 + 1952);
                            *(a1 + 1800) = v271;
                          }
                        }

                        else
                        {
                          v268 = v242[94];
                          if (v268)
                          {
                            goto LABEL_459;
                          }
                        }

                        if ((*(a1 + 1496) & 1) != 0 || *(*(a1 + 616) + 16945) == 1)
                        {
                          {
                            {
                              v273 = v301;
                              if (*(a1 + 1447) < 0)
                              {
                                v273 = *v301;
                              }

                              v274 = v299;
                              if (*(a1 + 1495) < 0)
                              {
                                v274 = v299->__r_.__value_.__r.__words[0];
                              }

                              v275 = v300;
                              if (*(a1 + 1471) < 0)
                              {
                                v275 = *v300;
                              }

                              v276 = *(a1 + 1408);
                              v277 = *(a1 + 1416);
                              v278 = v298;
                              if (*(a1 + 1527) < 0)
                              {
                                v278 = *v298;
                              }

                              v279 = *(a1 + 1528);
                              v280 = *(a1 + 1824);
                              *__dst = 136448002;
                              *&__dst[4] = v273;
                              *&__dst[12] = 2082;
                              *&__dst[14] = v274;
                              *&__dst[22] = 2082;
                              *&__dst[24] = v275;
                              *&__dst[32] = 1026;
                              *&__dst[34] = v276;
                              *&__dst[38] = 2050;
                              *&__dst[40] = v277;
                              *v309 = 2082;
                              *&v309[2] = v278;
                              *&v309[10] = 2050;
                              *&v309[12] = v279;
                              v310 = 2050;
                              v311 = v280;
                              _os_signpost_emit_with_name_impl(&dword_29CA13000, v272, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "FunctionCompiled", "Name=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t  Label=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t  Type=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t  ID=%{public,signpost.description:attribute}u \t\t\t\t\t\t\t\t  UniqueID=%{public,signpost.description:attribute}llu \t\t\t\t\t\t\t\t  RequestHash=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t  Addr=%{public,signpost.description:attribute}llu \t\t\t\t\t\t\t\t  Size=%{public,signpost.description:attribute}zu", __dst, 0x4Eu);
                            }
                          }

                          v281 = *(a1 + 616);
                          v282 = v301;
                          if (*(a1 + 1447) < 0)
                          {
                            v282 = *v301;
                          }

                          v283 = v299;
                          if (*(a1 + 1495) < 0)
                          {
                            v283 = v299->__r_.__value_.__r.__words[0];
                          }

                          v284 = v300;
                          if (*(a1 + 1471) < 0)
                          {
                            v284 = *v300;
                          }

                          v285 = v298;
                          if (*(a1 + 1527) < 0)
                          {
                            v285 = *v298;
                          }

                          v286 = *(a1 + 1408);
                          v287 = *(a1 + 1416);
                          v288 = *(a1 + 1528);
                          v289 = *(a1 + 1824);
                          v290 = *(a1 + 1496);
                          *__dst = v282;
                          *&__dst[8] = v283;
                          *&__dst[16] = v284;
                          *&__dst[24] = v285;
                          *&__dst[32] = v286;
                          *&__dst[40] = v287;
                          *v309 = v288;
                          *&v309[8] = v289;
                          v309[16] = v290;
                          AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::registerVariantEventInfo(v281, a1, __dst);
                        }

                        operator new();
                      }
                    }
                  }
                }

                else
                {
                  *(a1 + 2195) = 0;
                }

                if (v184 < 0x21)
                {
                  goto LABEL_366;
                }

                goto LABEL_362;
              }
            }
          }

          v181 = 0;
          goto LABEL_310;
        }
      }

      v176 = 0;
      LOBYTE(v175) = 0;
      goto LABEL_298;
    }

    v66 = (v65 + *v65);
    v67 = (v66 - *v66);
    v68 = *v67;
    if (v67[2])
    {
      v69 = (v66 + v67[2] + *(v66 + v67[2]));
      if (v68 < 7)
      {
        goto LABEL_115;
      }
    }

    else
    {
      v69 = 0;
      if (v68 < 7)
      {
        goto LABEL_115;
      }
    }

    v70 = v67[3];
    if (v70)
    {
      v71 = v66 + v70 + *(v66 + v70);
      if (!*v69)
      {
        goto LABEL_126;
      }

      goto LABEL_116;
    }

LABEL_115:
    v71 = 0;
    if (!*v69)
    {
      goto LABEL_126;
    }

LABEL_116:
    v72 = 0;
    v73 = v71 + 4;
    v74 = (v69 + 2);
    while (1)
    {
      v75 = *(v74 - 1);
      v76 = strlen(&v74[v75]);
      if (v76 > 0x7FFFFFFFFFFFFFF7)
      {
        break;
      }

      v77 = v76;
      if (v76 >= 0x17)
      {
        operator new();
      }

      __dst[23] = v76;
      if (v76)
      {
        memmove(__dst, &v74[v75], v76);
      }

      __dst[v77] = 0;
      std::vector<std::string>::push_back[abi:nn200100](a1 + 2320, __dst);
      if ((__dst[23] & 0x80000000) != 0)
      {
        operator delete(*__dst);
      }

      *__dst = *&v73[4 * v72];
      std::vector<unsigned int>::push_back[abi:nn200100](a1 + 2344, __dst);
      ++v72;
      v74 += 4;
      if (v72 >= *v69)
      {
        goto LABEL_126;
      }
    }

LABEL_501:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v28 < 0x45)
  {
    if (v28 < 0x3D)
    {
      LOWORD(v33) = 0;
      if (v28 < 0x3B)
      {
        LODWORD(v35) = 0;
        v36 = 0;
        LOWORD(v32) = 0;
        v34 = 0;
LABEL_56:
        *(a1 + 1168) = v35;
        v37 = v33 + v35 - 1;
        v38 = -v35;
        v39 = *(a1 + 1176);
        v40 = (v32 | ((v38 & v37) << 32) | (v34 << 48)) + v36 + (v39 & 0xFF000000);
        *(a1 + 1176) = v40;
        if (v40 != v39)
        {
          *(a1 + 1200) = 0uLL;
          *(a1 + 1216) = 0uLL;
          *(a1 + 1184) = 0uLL;
          *&v41 = -1;
          *(&v41 + 1) = -1;
          *(a1 + 1232) = v41;
          *(a1 + 1248) = v41;
          *(a1 + 1264) = v41;
          *(a1 + 1280) = -1;
        }

        v42 = (v24 - *v24);
        if (*v42 < 0x57u)
        {
          LODWORD(v43) = 0;
        }

        else
        {
          v43 = v42[43];
          if (v43)
          {
            LODWORD(v43) = *(v24 + v43);
          }
        }

        *(a1 + 1288) = v43;
        v44 = *v24;
        v26 = -v44;
        v28 = *(v24 - v44);
        goto LABEL_63;
      }

      LOWORD(v32) = 0;
      v34 = v27[29];
      if (!v27[29])
      {
LABEL_41:
        if (v28 < 0x3F)
        {
          LODWORD(v35) = 0;
          v36 = 0;
        }

        else
        {
          v35 = v27[31];
          if (v27[31])
          {
            v35 = *(v24 + v35);
          }

          if (v28 < 0x4B)
          {
            v36 = 0;
          }

          else
          {
            v36 = v27[37];
            if (v27[37])
            {
              v36 = *(v24 + v36) << 16;
            }
          }
        }

        goto LABEL_56;
      }

LABEL_40:
      v34 = *(v24 + v34);
      goto LABEL_41;
    }

    LOWORD(v32) = 0;
    v33 = v27[30];
    if (v27[30])
    {
      goto LABEL_38;
    }
  }

  else
  {
    v32 = v27[34];
    if (v27[34])
    {
      LODWORD(v32) = *(v24 + v32);
    }

    v33 = v27[30];
    if (v27[30])
    {
LABEL_38:
      LODWORD(v33) = *(v24 + v33);
    }
  }

  v34 = v27[29];
  if (!v27[29])
  {
    goto LABEL_41;
  }

  goto LABEL_40;
}

void sub_29CDE4E40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, char *a12, void **a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void **a22, void **a23, uint64_t a24, uint64_t a25, void **a26, void **a27, void **a28, void **a29, uint64_t a30, uint64_t a31, void **a32, void **a33)
{
  CompileStatistics::~CompileStatistics(a23);
  std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*a33);
  std::vector<std::shared_ptr<AGX::HAL300::IntersectionPipelineSet>>::~vector[abi:nn200100]((v33 + 2168));
  v35 = *a22;
  if (*a22)
  {
    *(v33 + 2152) = v35;
    operator delete(v35);
  }

  v36 = *a32;
  if (*a32)
  {
    *(v33 + 2128) = v36;
    operator delete(v36);
  }

  if (*a12 < 0)
  {
    operator delete(*a13);
    if ((*(v33 + 1527) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v33 + 1527) & 0x80000000) == 0)
  {
LABEL_7:
    if (*(v33 + 1495) < 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

  operator delete(*a26);
  if (*(v33 + 1495) < 0)
  {
LABEL_8:
    operator delete(*a27);
    if ((*(v33 + 1471) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  if ((*(v33 + 1471) & 0x80000000) == 0)
  {
LABEL_9:
    if ((*(v33 + 1447) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_27:
  operator delete(*a28);
  if ((*(v33 + 1447) & 0x80000000) == 0)
  {
LABEL_11:
    std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*(v33 + 1152));
    AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>>>::GlobalBindingTableInfo::~GlobalBindingTableInfo((v33 + 1016));
    v37 = *(v33 + 936);
    if (v37)
    {
      *(v33 + 944) = v37;
      operator delete(v37);
    }

    v38 = *(v33 + 912);
    if (v38)
    {
      *(v33 + 920) = v38;
      operator delete(v38);
    }

    v39 = (v33 + 864);
    v40 = *(v33 + 888);
    if (v40)
    {
      *(v33 + 896) = v40;
      operator delete(v40);
    }

    v41 = *v39;
    if (*v39)
    {
      *(v33 + 872) = v41;
      operator delete(v41);
    }

    AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::~SegmentedArgumentGatherer(v33 + 776);
    v42 = *a10;
    if (*a10)
    {
      *(v33 + 760) = v42;
      operator delete(v42);
    }

    AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::~SegmentedArgumentGatherer(a11);
    v43 = *(v33 + 592);
    if (v43)
    {
      *(v33 + 600) = v43;
      operator delete(v43);
    }

    AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::LinkInfo::~LinkInfo(a14);
    _Unwind_Resume(a1);
  }

LABEL_10:
  operator delete(*a29);
  goto LABEL_11;
}

void AGX::ObjectProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::finalize(uint64_t a1)
{
  std::mutex::lock((a1 + 4008));
  v2 = *(a1 + 584);
  if (v2)
  {
    v3 = *(a1 + 576);
    v4 = *(v2 + 208);
    v6 = *(v2 + 144);
    v5 = *(v2 + 148);
    if (v4)
    {
      v7 = *(v2 + 144);
    }

    else
    {
      v7 = 0;
    }

    v8 = *(v2 + 176);
    if (*(v2 + 176) == 0)
    {
      v6 = 0;
    }

    v9 = (*(v2 + 132) + *(v2 + 124) + *(v2 + 140) - (*(v2 + 128) + *(v2 + 120) + *(v2 + 136)));
    *(a1 + 656) = v7 + v5 + v6 + *(v2 + 152) + ((v9 + 3) & 0xFFFFFFFC);
    v10 = (a1 + 664);
    v11 = *(a1 + 664);
    v12 = (*(a1 + 672) - v11) >> 2;
    if (v9 <= v12)
    {
      if (v9 < v12)
      {
        *(a1 + 672) = v11 + 4 * v9;
      }
    }

    else
    {
      std::vector<unsigned int>::__append((a1 + 664), v9 - v12);
      v8 = *(v2 + 176);
      v5 = *(v2 + 148);
      v4 = *(v2 + 208);
    }

    if (v4)
    {
      v13 = *(v2 + 144);
    }

    else
    {
      v13 = 0;
    }

    if (v8 | *(v2 + 184))
    {
      v14 = *(v2 + 144);
    }

    else
    {
      v14 = 0;
    }

    v15 = (v5 + v13 + v14);
    v16 = *(a1 + 752);
    v17 = (*(a1 + 760) - v16) >> 2;
    if (v15 <= v17)
    {
      if (v15 < v17)
      {
        *(a1 + 760) = v16 + 4 * v15;
      }
    }

    else
    {
      std::vector<unsigned int>::__append((a1 + 752), v15 - v17);
    }

    v18 = *v3;
    v19 = v3[1];
    if (*v3 != v19)
    {
      do
      {
        v20 = *v18;
        v21 = *(*v18 + 4);
        if ((v21 & 0x80000000) == 0)
        {
          v22 = 4 * *(v20 + 8) - *(v2 + 120);
          v23 = *v20 == 6 ? 32 : 6;
          v24 = (v23 & 0xF800007F | ((v21 & 0xFFFFF) << 7)) >> 3;
          *(*v10 + 4 * v22) = v24 | 0x40000008;
          v24 += 1073741832;
          *(*v10 + 4 * (v22 + 1)) = v24 + 1;
          *(*v10 + 4 * (v22 + 2)) = v24 + 2;
          *(*v10 + 4 * (v22 + 3)) = v24 + 3;
          if (*(v20 + 12) == 1)
          {
            *(a1 + 1376 + 8 * ((*(v20 + 4) & 0xFFFC0) != 0)) |= 1 << *(v20 + 4);
          }
        }

        ++v18;
      }

      while (v18 != v19);
    }

    if (*(a1 + 1350))
    {
      for (i = v3[9]; i != v3[10]; ++i)
      {
        if (**i == 93)
        {
          v26 = *(*i + 4);
          if ((v26 & 0x80000000) == 0 && (v26 & 0xFFF00000) != 0x400000)
          {
            *(a1 + 1376) = vorrq_s8(*(a1 + 1376), *(a1 + 1392));
            break;
          }
        }
      }
    }

    v27 = v3[3];
    for (j = v3[4]; v27 != j; ++v27)
    {
      v29 = *(*v27 + 4);
      if ((v29 & 0x80000000) == 0)
      {
        v30 = *(a1 + 2192) ? 3 : 1;
        v31 = *(v2 + 124) + v30 * *(*v27 + 8) - (*(v2 + 120) + *(v2 + 128));
        v32 = 4 * (v29 & 0xFFFFF);
        *(*(a1 + 664) + 4 * v31) = v32 | 0x60000001;
        if (*(a1 + 2192) == 1)
        {
          v33 = v32 + 1610612737;
          *(*v10 + 4 * (v31 + 1)) = v33 + 1;
          *(*v10 + 4 * (v31 + 2)) = v33 + 2;
        }
      }
    }

    v146 = v3;
    v34 = v3[6];
    v35 = v3[7];
    v147 = v2;
    if (v34 != v35)
    {
      v36 = (a1 + 1152);
      do
      {
        v37 = *v34;
        v38 = *(*v34 + 4);
        if ((v38 & 0x80000000) == 0)
        {
          v39 = ((*(v37 + 8) >> 1) & 0x1FFFFFFF) + *(v2 + 124) + *(v2 + 132) - (*(v2 + 120) + *(v2 + 128) + *(v2 + 136));
          v40 = v38 & 0xFFFFF;
          v41 = v38 & 0xFFFFF | 0x20000000;
          if ((v38 & 0xFFFFFu) >= 0x1F)
          {
            v41 = ((v38 & 0xFFFFF) + 536870886) & 0x1FFFFFFF;
          }

          *(*v10 + 4 * v39) = v41;
          if (*(v37 + 12) == 1)
          {
            *(a1 + 1360 + 8 * (v40 > 0x3F)) |= 1 << v38;
          }

          if (*(a1 + 2195) == 1)
          {
            v42 = *(a1 + 2208);
            if (!v42)
            {
LABEL_222:
              abort();
            }

            v43 = 2 * v39;
            v44 = (2 * v39) | 1;
            while (1)
            {
              while (1)
              {
                v45 = *(v42 + 7);
                if (v40 >= v45)
                {
                  break;
                }

                v42 = *v42;
                if (!v42)
                {
                  goto LABEL_222;
                }
              }

              if (v45 >= v40)
              {
                break;
              }

              v42 = v42[1];
              if (!v42)
              {
                goto LABEL_222;
              }
            }

            v46 = *v36;
            if (!*v36)
            {
LABEL_69:
              operator new();
            }

            while (1)
            {
              while (1)
              {
                v47 = v46;
                v48 = *(v46 + 28);
                if (v44 >= v48)
                {
                  break;
                }

                v46 = *v47;
                if (!*v47)
                {
                  goto LABEL_69;
                }
              }

              if (v48 > v43)
              {
                break;
              }

              v46 = v47[1];
              if (!v46)
              {
                goto LABEL_69;
              }
            }

            v49 = v47;
            v2 = v147;
            *(v49 + 8) = *(v42 + 8);
          }
        }

        ++v34;
      }

      while (v34 != v35);
    }

    *(a1 + 744) = 1;
    v50 = *(a1 + 672) - *(a1 + 664);
    *(a1 + 736) = v50 >> 2;
    if (*(a1 + 728) - *(a1 + 712) < v50)
    {
      if (!((v50 >> 2) >> 62))
      {
        operator new();
      }

      goto LABEL_223;
    }

    v51 = *(a1 + 664);
    v52 = *(a1 + 672);
    if (v51 != v52)
    {
      do
      {
        v53 = *v51;
        if (*v51 >> 29 == 7)
        {
          v54 = 119;
        }

        else
        {
          v54 = dword_29D2F525C[v53 >> 29];
        }

        LODWORD(m) = v54 + (v53 & 0x1FFFFFFF);
        std::vector<unsigned int>::push_back[abi:nn200100](a1 + 712, &m);
        ++v51;
      }

      while (v51 != v52);
      v51 = *(a1 + 664);
      if (*(a1 + 672) != v51)
      {
        operator new();
      }
    }

    *(a1 + 672) = v51;
    v56 = *(v2 + 120);
    v55 = *(v2 + 124);
    v57 = *(v2 + 128);
    v58 = *(v2 + 132);
    v59 = *(v2 + 136);
    v60 = *(v2 + 140);
    v61 = (v55 + v58 + v60 - (v56 + v57 + v59) + 3) & 0xFFFFFFFC;
    v62 = *(v2 + 160);
    v63 = *(v2 + 168);
    if (*(v2 + 160) != 0)
    {
      v64 = 0;
      v65 = *(v2 + 144);
      if (*(v2 + 208) == 1)
      {
        v66 = (a1 + 752);
        if (!v65)
        {
          goto LABEL_92;
        }

        v67 = 0;
        v148 = *(v2 + 168);
        m = v62;
        for (k = v62; ; k = m)
        {
          if (k)
          {
            v69 = __clz(__rbit64(k));
            v70 = &m;
            v71 = v69;
          }

          else
          {
            k = v148;
            if (!v148)
            {
              v59 = *(v2 + 136);
              v60 = *(v2 + 140);
              v57 = *(v2 + 128);
              v58 = *(v2 + 132);
              v56 = *(v2 + 120);
              v55 = *(v2 + 124);
              v65 = *(v2 + 144);
              v64 = v65;
              goto LABEL_92;
            }

            v69 = __clz(__rbit64(v148));
            v71 = v69 | 0x40;
            v70 = &v148;
          }

          *v70 = k & ~(1 << v69);
          *(*(a1 + 752) + 4 * v67) = vorrq_s8(vdupq_n_s32(16 * v71), xmmword_29D2F2010);
          v67 += 4;
        }
      }

      v66 = (a1 + 752);
LABEL_92:
      v72 = *(v2 + 176);
      if (*&v72 != 0 && v65 != 0)
      {
        v140 = v64 - v61 + ((v60 + v58 - (v59 + v57 + v56) + v55 + 3) & 0xFFFFFFFC);
        v148 = v63;
        m = v62;
        while (1)
        {
          if (v62)
          {
            v141 = __clz(__rbit64(v62));
            v142 = &m;
            v143 = v141;
          }

          else
          {
            v62 = v148;
            if (!v148)
            {
              break;
            }

            v141 = __clz(__rbit64(v148));
            v143 = v141 | 0x40;
            v142 = &v148;
          }

          v144 = *v66;
          *(*v66 + 4 * (v140 + 1)) = (16 * (v143 & 0x7F)) | 0xD;
          *(v144 + 4 * v140) = (16 * (v143 & 0x7F)) | 0xC;
          *v142 = v62 & ~(1 << v141);
          *(v144 + 4 * (v140 + 2)) = (16 * (v143 & 0x7F)) | 0xE;
          v145 = v140 + 3;
          v140 += 4;
          v62 = m;
          *(v144 + 4 * v145) = (16 * v143) | 0xF;
        }
      }

      *(a1 + 1376) = vorrq_s8(*(a1 + 1376), v72);
    }

    if (*(v2 + 148))
    {
      v74 = *(v2 + 144);
      if (*(v2 + 208))
      {
        v75 = *(v2 + 144);
      }

      else
      {
        v75 = 0;
      }

      if (*(v2 + 176) == 0)
      {
        v74 = 0;
      }

      v76 = ((*(v2 + 124) + *(v2 + 132) + *(v2 + 140) - (*(v2 + 120) + *(v2 + 128) + *(v2 + 136)) + 3) & 0xFFFFFFFC) - v61 + v75 + v74;
      v77 = *(v2 + 192);
      v148 = *(v2 + 200);
      for (m = v77; ; v77 = m)
      {
        if (v77)
        {
          v78 = __clz(__rbit64(v77));
          p_m = &m;
          v80 = v78;
        }

        else
        {
          v77 = v148;
          if (!v148)
          {
            break;
          }

          v78 = __clz(__rbit64(v148));
          v80 = v78 | 0x40;
          p_m = &v148;
        }

        *p_m = v77 & ~(1 << v78);
        v81 = *(a1 + 752);
        *(v81 + 4 * v76) = (4 * (v80 & 0x7F)) | 1;
        if (*(a1 + 2192) == 1)
        {
          v82 = 4 * v80;
          *(v81 + 4 * (v76 + 1)) = v82 | 2;
          *(v81 + 4 * (v76 + 2)) = v82 | 3;
        }

        v76 += 4;
      }
    }

    v83 = (*(v146 + 24) + 3) >> 2;
    if (*(v2 + 467) == 1)
    {
      *(a1 + 1016) = v83;
    }

    *(a1 + 660) = v83;
    v84 = *(a1 + 776);
    v85 = (*(a1 + 784) - v84) >> 2;
    if (v83 <= v85)
    {
      if (v83 < v85)
      {
        *(a1 + 784) = v84 + 4 * v83;
      }
    }

    else
    {
      std::vector<unsigned int>::__append((a1 + 776), v83 - v85);
    }

    if (a1 + 864 != v2 + 216)
    {
      std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>((a1 + 864), *(v2 + 216), *(v2 + 224), (*(v2 + 224) - *(v2 + 216)) >> 2);
    }

    if (a1 + 912 != v2 + 240)
    {
      std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>((a1 + 912), *(v2 + 240), *(v2 + 248), (*(v2 + 248) - *(v2 + 240)) >> 2);
    }

    if (a1 + 888 != v2 + 320)
    {
      std::vector<unsigned short>::__assign_with_size[abi:nn200100]<unsigned short *,unsigned short *>((a1 + 888), *(v2 + 320), *(v2 + 328), (*(v2 + 328) - *(v2 + 320)) >> 1);
    }

    if (a1 + 936 != v2 + 368)
    {
      std::vector<unsigned short>::__assign_with_size[abi:nn200100]<unsigned short *,unsigned short *>((a1 + 936), *(v2 + 368), *(v2 + 376), (*(v2 + 376) - *(v2 + 368)) >> 1);
    }

    *(a1 + 960) = *(v2 + 416);
    *(a1 + 1352) = *(v2 + 160) != 0;
    *(a1 + 1353) = *(v2 + 148) != 0;
    AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>>>::finalizeGatherSizes(a1, v2);
    if ((*(a1 + 3703) & 1) == 0)
    {
      v86 = *(a1 + 2392);
      v87 = *(a1 + 3012);
      v88 = *(a1 + 3024);
      v89 = ((*(a1 + 3008) + 3) >> 2);
      *(v86 + 140) = *(v86 + 140) & 0xFFFFF00000000000 | (v89 << 16) & 0xFFFFF001FFFFFFFFLL | (((((((*(a1 + 3020) + 3) >> 2) + 1) & 0xFFE) >> 1) & 0x7FF) << 33) | v89;
      *(v86 + 320) = (v87 + 3) >> 2;
      *(v86 + 324) = (((v88 + 3) >> 2) + 1) & 0x7FFFFFFE;
      if (*(v86 + 222) == 1)
      {
        AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::LoadShader::emit((v86 + 48), *(v86 + 312), *v86 + *(v86 + 316));
      }
    }

    v90 = *(a1 + 3704);
    if (v90 != -1)
    {
      AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::setConstantCalculationProgramInfo(*(a1 + 2392), v90, *(a1 + 3708), *(a1 + 3056), *(a1 + 3064), *(a1 + 3072), *(a1 + 3716));
    }

    v91 = *(a1 + 3272);
    if (v91)
    {
      v92 = *(a1 + 3012);
      v93 = *(a1 + 3024);
      v94 = ((*(a1 + 3008) + 3) >> 2);
      *(v91 + 140) = *(v91 + 140) & 0xFFFFF00000000000 | (v94 << 16) & 0xFFFFF001FFFFFFFFLL | (((((((*(a1 + 3020) + 3) >> 2) + 1) & 0xFFE) >> 1) & 0x7FF) << 33) | v94;
      *(v91 + 320) = (v92 + 3) >> 2;
      *(v91 + 324) = (((v93 + 3) >> 2) + 1) & 0x7FFFFFFE;
      if (*(v91 + 222) == 1)
      {
        AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::LoadShader::emit((v91 + 48), *(v91 + 312), *v91 + *(v91 + 316));
      }

      v95 = *(a1 + 3272);
      v96 = *(a1 + 3224);
      memcpy(v96, *v95, *(v95 + 8) - *v95);
      if (*(v95 + 272) == 1)
      {
        *&v96[*(v95 + 276)] = vbslq_s8(xmmword_29D2F17C0, *&v96[*(v95 + 276)], vshlq_u8(vqtbl1q_s8(0, xmmword_29D2F17A0), xmmword_29D2F17B0));
      }

      v97 = *(a1 + 3272);
      v99 = *(v97 + 64);
      v98 = *(v97 + 80);
      *(a1 + 3280) = *(v97 + 48);
      *(a1 + 3296) = v99;
      *(a1 + 3312) = v98;
      v100 = *(v97 + 128);
      v101 = *(v97 + 144);
      v102 = *(v97 + 112);
      *(a1 + 3328) = *(v97 + 96);
      *(a1 + 3376) = v101;
      *(a1 + 3360) = v100;
      *(a1 + 3344) = v102;
      v104 = *(v97 + 176);
      v103 = *(v97 + 192);
      v105 = *(v97 + 208);
      *(a1 + 3392) = *(v97 + 160);
      *(a1 + 3440) = v105;
      *(a1 + 3424) = v103;
      *(a1 + 3408) = v104;
    }

    AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::finish(*(a1 + 2392));
    v106 = *(a1 + 2392);
    v107 = *(v106 + 324) & 0xFFF;
    v108 = 8 * (*(v106 + 320) & 0x3FFFF);
    if (*(a1 + 3788))
    {
      v109 = 0x10000;
    }

    else
    {
      v109 = 0;
    }

    *(a1 + 3720) = v107;
    *(a1 + 3724) = v108;
    *(a1 + 3728) = 0;
    *(a1 + 3732) = v109;
    if (*(v2 + 312) == 1)
    {
      *(a1 + 2608) = vorrq_s8(*(a1 + 2608), *(a1 + 2448));
      *(a1 + 2448) = 0u;
    }

    if (*(v2 + 313) == 1)
    {
      *(a1 + 2624) = vorrq_s8(*(a1 + 2624), *(a1 + 2464));
      *(a1 + 2464) = 0u;
    }

    if (*(v2 + 314) == 1)
    {
      *(a1 + 2592) = vorrq_s8(*(a1 + 2592), *(a1 + 2432));
      *(a1 + 2432) = 0u;
    }

    if (*(v2 + 315))
    {
      v110 = vorrq_s8(*(a1 + 2656), *(a1 + 2544));
      *(a1 + 2656) = v110;
      *(a1 + 2672) = vorrq_s8(*(a1 + 2672), *(a1 + 2560));
      v111 = vorrq_s8(*(a1 + 2640), *(a1 + 2528));
      *(a1 + 2640) = v111;
      *(a1 + 2688) = vorrq_s8(*(a1 + 2688), *(a1 + 2576));
      v112 = 0uLL;
      *(a1 + 2560) = 0u;
      *(a1 + 2576) = 0u;
      v113 = 0uLL;
      *(a1 + 2528) = 0u;
      *(a1 + 2544) = 0u;
    }

    else
    {
      v112 = *(a1 + 2528);
      v111 = *(a1 + 2640);
      v113 = *(a1 + 2544);
      v110 = *(a1 + 2656);
    }

    *(a1 + 2400) = vorrq_s8(vorrq_s8(vorrq_s8(*(a1 + 2432), *(a1 + 2480)), vorrq_s8(v112, *(a1 + 2592))), v111);
    *(a1 + 2416) = vorrq_s8(vorrq_s8(vorrq_s8(*(a1 + 2448), *(a1 + 2496)), vorrq_s8(v113, *(a1 + 2608))), v110);
    AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,8ul>::buildUniqueResourceMask(a1 + 2392);
    v114 = *(a1 + 576);
    v115 = *(v114 + 72);
    for (n = *(v114 + 80); v115 != n; ++v115)
    {
      v118 = *v115;
      v119 = **v115;
      v120 = v119 > 0x3E || ((1 << v119) & 0x4000000000033800) == 0;
      if (v120 && ((v119 - 93) <= 0x14 ? (v121 = ((1 << (v119 - 93)) & 0x100031) == 0) : (v121 = 1), v121))
      {
        v122 = v118[1];
      }

      else
      {
        v122 = v118[1];
        if (v122 < 0)
        {
          continue;
        }
      }

      v123 = (*(a1 + 776) + 4 * v118[2]);
      if (v119 <= 110)
      {
        switch(v119)
        {
          case '+':
            *v123 = (v122 + 166) & 0x1FFFFFFF;
            v117 = *(a1 + 3796);
            *(a1 + 3800 + 4 * v117) = v122;
            *(a1 + 3796) = v117 + 1;
            break;
          case '@':
            *v123 = 0x500000004;
            break;
          case 'T':
            *v123 = 237;
            break;
          default:
            goto LABEL_174;
        }
      }

      else if (v119 > 118)
      {
        if (v119 == 119)
        {
          *v123 = 0x900000008;
        }

        else if (v119 != 120)
        {
LABEL_174:
          v124 = v122 & 0xFFFFF;
          v125 = (v122 & 0xFFFFF) << 7;
          switch(v119)
          {
            case 11:
              *v123 = *&vshrq_n_u32(vorrq_s8(vdupq_n_s32(v125), xmmword_29D2F2020), 2uLL) | __PAIR128__(0x4000000040000000, 0x4000000040000000);
              continue;
            case 12:
              LODWORD(v127) = (32 * v124) | 0x40000000;
              DWORD1(v127) = (32 * (v122 & 0xFFFFF)) | 0x40000001;
              *(&v127 + 1) = *&vshr_n_u32(vorr_s8(vdup_n_s32(v125), 0xC00000008), 2uLL) | 0x4000000040000000;
              *v123 = v127;
              continue;
            case 13:
              v126 = (32 * v124) | 0x40000008;
              goto LABEL_194;
            case 16:
              v126 = 32 * v124 + 1073741833;
              goto LABEL_194;
            case 17:
              v126 = 32 * v124 + 1073741834;
              goto LABEL_194;
            case 62:
              v126 = 32 * v124 + 1073741835;
              goto LABEL_194;
            case 93:
              if ((v122 & 0xFFF00000) == 0x400000)
              {
                *v123 = 0;
              }

              else
              {
                v126 = 32 * v124 + 1073741836;
LABEL_194:
                *v123 = v126;
              }

              break;
            case 97:
              *v123 = vorr_s8(vdup_n_s32(32 * v124), 0x4000000F4000000ELL);
              continue;
            case 98:
              *v123 = vorr_s8(vdup_n_s32(8 * v124), 0x6000000160000000);
              continue;
            case 109:
              v126 = (2 * (v122 & 0xFFFFFFF)) | 0xC0000000;
              goto LABEL_194;
            case 110:
              v126 = (2 * (v122 & 0xFFFFFFF)) | 0xC0000001;
              goto LABEL_194;
            case 113:
              v126 = (8 * v124) | 0x60000000;
              goto LABEL_194;
            case 131:
              v126 = v122 & 0x1FFFFFFF | 0x80000000;
              goto LABEL_194;
            default:
              continue;
          }
        }
      }

      else if (v119 == 111)
      {
        *v123 = 236;
      }

      else
      {
        if (v119 != 118)
        {
          goto LABEL_174;
        }

        *v123 = 0x700000006;
      }
    }

    *(a1 + 856) = 1;
    v128 = *(a1 + 784) - *(a1 + 776);
    *(a1 + 848) = v128 >> 2;
    if (*(a1 + 840) - *(a1 + 824) < v128)
    {
      if (!((v128 >> 2) >> 62))
      {
        operator new();
      }

LABEL_223:
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v129 = *(a1 + 776);
    v130 = *(a1 + 784);
    if (v129 != v130)
    {
      do
      {
        v131 = *v129;
        if (*v129 >> 29 == 7)
        {
          v132 = 238;
        }

        else
        {
          v132 = dword_29D2F51B4[v131 >> 29];
        }

        LODWORD(m) = v132 + (v131 & 0x1FFFFFFF);
        std::vector<unsigned int>::push_back[abi:nn200100](a1 + 824, &m);
        ++v129;
      }

      while (v129 != v130);
      v129 = *(a1 + 776);
      if (*(a1 + 784) != v129)
      {
        operator new();
      }
    }

    *(a1 + 784) = v129;
    if (*(v2 + 467) == 1)
    {
      v133 = *(a1 + 576);
      v134 = *(a1 + 1344);
      v135 = *(v133 + 136);
      if (*(a1 + 968) > v134)
      {
        v134 = *(a1 + 968);
      }

      *(a1 + 968) = v134;
      v136 = vorrq_s8(*(a1 + 992), *(v133 + 120));
      *(a1 + 976) = vorrq_s8(*(a1 + 976), *(v133 + 104));
      *(a1 + 992) = v136;
      *(a1 + 1008) |= v135;
      AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserObjectArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::ObjectDriverArgumentTable<AGX::HAL300::Classes>>>::updateGlobalBindingTableInfo<AGX::ObjectProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>>(a1);
    }

    AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>>>::finalizeGatherSizes(a1, v2);
    v137 = *(a1 + 584);
    if (v137)
    {
      v138 = AGX::ProgramBindingRemap<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~ProgramBindingRemap(v137);
      MEMORY[0x29ED520D0](v138, 0x1030C40704B4075);
    }

    *(a1 + 584) = 0;
    v139 = *(a1 + 576);
    if (v139)
    {
      ProgramBindingsAndDMAList::~ProgramBindingsAndDMAList(v139);
      MEMORY[0x29ED520D0]();
    }

    *(a1 + 576) = 0;
  }

  std::mutex::unlock((a1 + 4008));
}