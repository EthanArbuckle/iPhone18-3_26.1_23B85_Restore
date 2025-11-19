unint64_t HUF_decompress4X1_usingDTable_internal(uint64_t a1, uint64_t a2, unsigned __int16 *a3, unint64_t a4, uint64_t a5)
{
  v287 = 0;
  memset(v286, 0, sizeof(v286));
  v10 = a5 + 4;
  v284 = 0u;
  v285 = 0u;
  v282 = 0u;
  v283 = 0u;
  v280 = 0u;
  v281 = 0u;
  v279 = 0u;
  result = HUF_DecompressFastArgs_init(&v279, a1, a2, a3, a4, a5);
  if (result - 1 <= 0xFFFFFFFFFFFFFF87)
  {
    v13 = *(&v285 + 1);
    v12 = *&v286[0];
    v15 = *(&v284 + 1);
    v14 = v285;
    v16 = *(&v283 + 1);
    v17 = v283;
    v18 = v284;
    v20 = *(&v279 + 1);
    v19 = v279;
    v22 = *(&v280 + 1);
    v21 = v280;
    v24 = *(&v281 + 1);
    v23 = v281;
    v25 = *(&v282 + 1);
    v26 = v282;
    while (1)
    {
      v27 = (v12 - v25) / 5uLL;
      v28 = ((v19 - v13) * 0x2492492492492493uLL) >> 64;
      if (v27 >= (v28 + ((v19 - v13 - v28) >> 1)) >> 2)
      {
        v27 = (v28 + ((v19 - v13 - v28) >> 1)) >> 2;
      }

      v29 = v27 && v20 >= v19;
      v30 = v29 && v21 >= v20;
      if (!v30 || v22 < v21)
      {
        break;
      }

      v32 = &v25[5 * v27];
      do
      {
        v33 = *(v14 + ((v17 >> 52) & 0xFFE));
        v34 = v17 << v33;
        *v23 = HIBYTE(v33);
        v35 = *(v14 + ((v16 >> 52) & 0xFFE));
        *v24 = HIBYTE(v35);
        v36 = *(v14 + ((v18 >> 52) & 0xFFE));
        v37 = v16 << v35;
        v38 = v18 << v36;
        *v26 = HIBYTE(v36);
        v39 = *(v14 + ((v15 >> 52) & 0xFFE));
        v40 = v15 << v39;
        *v25 = HIBYTE(v39);
        v41 = *(v14 + ((v34 >> 52) & 0xFFE));
        v42 = v34 << v41;
        v23[1] = HIBYTE(v41);
        v43 = *(v14 + ((v37 >> 52) & 0xFFE));
        v44 = v37 << v43;
        v24[1] = HIBYTE(v43);
        v45 = *(v14 + ((v38 >> 52) & 0xFFE));
        v46 = v38 << v45;
        v26[1] = HIBYTE(v45);
        v47 = *(v14 + ((v40 >> 52) & 0xFFE));
        v25[1] = HIBYTE(v47);
        v48 = *(v14 + ((v42 >> 52) & 0xFFE));
        v49 = v40 << v47;
        v50 = v42 << v48;
        v23[2] = HIBYTE(v48);
        v51 = *(v14 + ((v44 >> 52) & 0xFFE));
        v52 = v44 << v51;
        v24[2] = HIBYTE(v51);
        v53 = *(v14 + ((v46 >> 52) & 0xFFE));
        v54 = v46 << v53;
        v26[2] = HIBYTE(v53);
        v55 = *(v14 + ((v49 >> 52) & 0xFFE));
        v56 = v49 << v55;
        v25[2] = HIBYTE(v55);
        v57 = *(v14 + ((v50 >> 52) & 0xFFE));
        v58 = v50 << v57;
        v23[3] = HIBYTE(v57);
        v59 = *(v14 + ((v52 >> 52) & 0xFFE));
        v24[3] = HIBYTE(v59);
        v60 = *(v14 + ((v54 >> 52) & 0xFFE));
        v61 = v52 << v59;
        v62 = v54 << v60;
        v26[3] = HIBYTE(v60);
        v63 = *(v14 + ((v56 >> 52) & 0xFFE));
        v64 = v56 << v63;
        v25[3] = HIBYTE(v63);
        v65 = *(v14 + ((v58 >> 52) & 0xFFE));
        v66 = v58 << v65;
        v23[4] = HIBYTE(v65);
        v67 = *(v14 + ((v61 >> 52) & 0xFFE));
        v68 = v61 << v67;
        v24[4] = HIBYTE(v67);
        v69 = *(v14 + ((v62 >> 52) & 0xFFE));
        v70 = v62 << v69;
        v26[4] = HIBYTE(v69);
        v71 = *(v14 + ((v64 >> 52) & 0xFFE));
        v25[4] = HIBYTE(v71);
        v72 = __clz(__rbit64(v66));
        v23 += 5;
        v19 = (v19 - (v72 >> 3));
        v17 = (*v19 | 1) << (v72 & 7);
        v73 = __clz(__rbit64(v68));
        v24 += 5;
        v20 = (v20 - (v73 >> 3));
        v16 = (*v20 | 1) << (v73 & 7);
        v74 = __clz(__rbit64(v70));
        v26 += 5;
        v21 = (v21 - (v74 >> 3));
        v18 = (*v21 | 1) << (v74 & 7);
        v75 = __clz(__rbit64(v64 << v71));
        v25 += 5;
        v22 = (v22 - (v75 >> 3));
        v15 = (*v22 | 1) << (v75 & 7);
      }

      while (v25 < v32);
    }

    v76 = 0;
    *&v283 = v17;
    *(&v283 + 1) = v16;
    *&v284 = v18;
    *(&v284 + 1) = v15;
    *&v279 = v19;
    *(&v279 + 1) = v20;
    *&v280 = v21;
    *(&v280 + 1) = v22;
    *&v281 = v23;
    *(&v281 + 1) = v24;
    v77 = (a2 + 3) >> 2;
    v78 = a1;
    *&v282 = v26;
    *(&v282 + 1) = v25;
    while (1)
    {
      v79 = a1 + (a2 & ~(a2 >> 63)) - v78;
      v78 += v77;
      if (v77 > v79)
      {
        v78 = a1 + (a2 & ~(a2 >> 63));
      }

      v80 = *(&v281 + v76);
      if (v80 > v78)
      {
        return -20;
      }

      v81 = *(&v279 + v76);
      if (v81 < *(v286 + v76 + 1) - 8)
      {
        return -20;
      }

      v82 = *v81;
      v83 = __clz(__rbit64(*(&v283 + v76)));
      v84 = *(&v285 + 1);
      v85 = *(&v285 + 1) + 8;
      v86 = v78 - v80;
      if ((v78 - v80) < 4)
      {
        break;
      }

      v87 = *(&v281 + v76);
      while (1)
      {
        if (v81 >= v85)
        {
          LODWORD(v88) = v83 >> 3;
          LODWORD(v83) = v83 & 7;
          v89 = 1;
        }

        else
        {
          if (v81 == v84)
          {
            break;
          }

          v88 = v83 >> 3;
          v89 = (v81 - v88) >= v84;
          if ((v81 - v88) < v84)
          {
            LODWORD(v88) = v81 - v84;
          }

          LODWORD(v83) = v83 - 8 * v88;
        }

        v81 = (v81 - v88);
        v82 = *v81;
        if (v87 >= v78 - 3 || !v89)
        {
          break;
        }

        v90 = (v10 + 2 * ((v82 << v83) >> 53));
        v91 = v83 + *v90;
        *v87 = v90[1];
        v92 = (v10 + 2 * ((v82 << v91) >> 53));
        v93 = v91 + *v92;
        v87[1] = v92[1];
        v94 = (v10 + 2 * ((v82 << v93) >> 53));
        v95 = v93 + *v94;
        v87[2] = v94[1];
        v96 = (v10 + 2 * ((v82 << v95) >> 53));
        v97 = v96[1];
        LODWORD(v83) = v95 + *v96;
        v98 = v87 + 4;
        v87[3] = v97;
        v87 += 4;
        if (v83 > 0x40)
        {
          goto LABEL_46;
        }
      }

      v98 = v87;
      if (v87 >= v78)
      {
        goto LABEL_50;
      }

LABEL_47:
      v100 = v78 - v98;
      do
      {
        v101 = (v10 + 2 * ((v82 << v83) >> 53));
        LODWORD(v83) = v83 + *v101;
        *v98++ = v101[1];
        --v100;
      }

      while (v100);
      v80 = *(&v281 + v76);
LABEL_50:
      v102 = v80 + v86;
      *(&v281 + v76) = v102;
      if (v102 != v78)
      {
        return -20;
      }

      if (++v76 == 4)
      {
        result = a2;
        goto LABEL_53;
      }
    }

    if (v81 >= v85)
    {
      v99 = v83 >> 3;
      LODWORD(v83) = v83 & 7;
    }

    else
    {
      if (v81 == *(&v285 + 1))
      {
LABEL_45:
        v98 = *(&v281 + v76);
LABEL_46:
        if (v98 >= v78)
        {
          goto LABEL_50;
        }

        goto LABEL_47;
      }

      v99 = v83 >> 3;
      if (v81 - v99 >= *(&v285 + 1))
      {
        v99 = v99;
      }

      else
      {
        v99 = (v81 - DWORD2(v285));
      }

      LODWORD(v83) = v83 - 8 * v99;
    }

    v82 = *(v81 - v99);
    goto LABEL_45;
  }

LABEL_53:
  if (result)
  {
    return result;
  }

  result = -20;
  if (a2 < 6)
  {
    return result;
  }

  if (a4 < 0xA)
  {
    return result;
  }

  *&v281 = 0;
  v279 = 0u;
  v280 = 0u;
  v103 = *a3;
  v104 = a3[1];
  v105 = a3[2];
  v106 = v103 + v104 + v105 + 6;
  v107 = a4 - v106;
  if (a4 < v106)
  {
    return result;
  }

  v108 = (a2 + 3) >> 2;
  v109 = a1 + v108 + v108;
  if (v109 + v108 > a1 + a2)
  {
    return result;
  }

  if (!*a3)
  {
    return -72;
  }

  v110 = a3 + v103 + 6;
  v111 = *(a5 + 2);
  if (v103 < 8)
  {
    v113 = *(a3 + 6);
    if (*a3 > 4u)
    {
      if (v103 != 5)
      {
        if (v103 != 6)
        {
          v113 |= *(a3 + 12) << 48;
        }

        v113 += *(a3 + 11) << 40;
      }

      v113 += *(a3 + 10) << 32;
    }

    else
    {
      if (v103 == 2)
      {
LABEL_76:
        v113 += *(a3 + 7) << 8;
LABEL_77:
        if (!*(v110 - 1))
        {
          return result;
        }

        v114 = __clz(*(v110 - 1)) - 8 * v103 + 41;
        v112 = a3 + 3;
        goto LABEL_79;
      }

      if (v103 == 3)
      {
LABEL_75:
        v113 += *(a3 + 8) << 16;
        goto LABEL_76;
      }

      if (v103 != 4)
      {
        goto LABEL_77;
      }
    }

    v113 += *(a3 + 9) << 24;
    goto LABEL_75;
  }

  if (!*(v110 - 1))
  {
    return -1;
  }

  v112 = (v110 - 8);
  v113 = *(v110 - 1);
  v114 = 8 - (__clz(*(v110 - 1)) ^ 0x1F);
LABEL_79:
  if (!a3[1])
  {
    return -72;
  }

  v115 = &v110[v104];
  if (v104 >= 8)
  {
    if (*(v115 - 1))
    {
      v116 = *(v115 - 1);
      v277 = v115 - 8;
      v278 = v112;
      v117 = 8 - (__clz(*(v115 - 1)) ^ 0x1F);
      goto LABEL_98;
    }

    return -1;
  }

  v116 = *v110;
  if (a3[1] > 4u)
  {
    if (v104 != 5)
    {
      if (v104 != 6)
      {
        v116 |= v110[6] << 48;
      }

      v116 += v110[5] << 40;
    }

    v116 += v110[4] << 32;
    goto LABEL_93;
  }

  if (v104 != 2)
  {
    if (v104 == 3)
    {
LABEL_94:
      v116 += v110[2] << 16;
      goto LABEL_95;
    }

    if (v104 != 4)
    {
      goto LABEL_96;
    }

LABEL_93:
    v116 += v110[3] << 24;
    goto LABEL_94;
  }

LABEL_95:
  v116 += v110[1] << 8;
LABEL_96:
  if (!*(v115 - 1))
  {
    return result;
  }

  v277 = a3 + v103 + 6;
  v278 = v112;
  v117 = __clz(*(v115 - 1)) - 8 * v104 + 41;
LABEL_98:
  if (!a3[2])
  {
    return -72;
  }

  v118 = &v115[v105];
  v275 = a1 + v108 + v108;
  v272 = a3 + v103 + 6;
  if (v105 < 8)
  {
    v120 = *v115;
    if (a3[2] > 4u)
    {
      if (v105 != 5)
      {
        if (v105 != 6)
        {
          v120 |= v115[6] << 48;
        }

        v120 += v115[5] << 40;
      }

      v120 += v115[4] << 32;
    }

    else
    {
      if (v105 == 2)
      {
LABEL_116:
        v120 += v115[1] << 8;
LABEL_117:
        if (!*(v118 - 1))
        {
          return result;
        }

        v270 = (a1 + v108);
        v271 = a1 + a2;
        v276 = v120;
        v273 = (v109 + v108);
        v267 = v111;
        v266 = a3 + 3;
        v119 = __clz(*(v118 - 1)) - 8 * v105 + 41;
        v268 = &v110[v104];
        v269 = &v110[v104];
        goto LABEL_119;
      }

      if (v105 == 3)
      {
LABEL_115:
        v120 += v115[2] << 16;
        goto LABEL_116;
      }

      if (v105 != 4)
      {
        goto LABEL_117;
      }
    }

    v120 += v115[3] << 24;
    goto LABEL_115;
  }

  if (!*(v118 - 1))
  {
    return -1;
  }

  v269 = &v110[v104];
  v270 = (a1 + v108);
  v273 = (v109 + v108);
  v267 = v111;
  v271 = a1 + a2;
  v266 = a3 + 3;
  v276 = *(v118 - 1);
  v268 = v118 - 8;
  v119 = 8 - (__clz(*(v118 - 1)) ^ 0x1F);
LABEL_119:
  result = BIT_initDStream_36203(&v279, v118, v107);
  v121 = v271;
  v122 = v273;
  v123 = a1 + v108 + v108;
  v124 = v270;
  if (result > 0xFFFFFFFFFFFFFF88)
  {
    return result;
  }

  v125 = v271 - 3;
  v126 = a3 + 7;
  v127 = (v272 + 8);
  v128 = (v269 + 8);
  if ((v271 - v273) < 8)
  {
    v177 = v114;
    v178 = v117;
    v179 = v119;
    v180 = v273;
    v181 = (a1 + v108 + v108);
    v182 = v270;
    v183 = a1;
    v130 = v268;
  }

  else
  {
    v129 = v279;
    v130 = v268;
    if (v273 >= v125)
    {
      v180 = v273;
      v181 = (a1 + v108 + v108);
      v182 = v270;
      v183 = a1;
    }

    else
    {
      v131 = -v267 & 0x3F;
      v132 = DWORD2(v279);
      v133 = v281;
      v134 = v280;
      v135 = 2 * v108;
      v136 = 3 * v108;
      v137 = a1;
      do
      {
        v138 = v137;
        v139 = &v137[v108];
        v140 = &v137[v135];
        v141 = &v137[v136];
        v142 = (v10 + 2 * ((v113 << v114) >> v131));
        v143 = v142[1];
        LODWORD(v142) = v114 + *v142;
        *v138 = v143;
        v144 = (v10 + 2 * ((v116 << v117) >> v131));
        v145 = v144[1];
        LODWORD(v144) = v117 + *v144;
        *v139 = v145;
        v146 = (v10 + 2 * ((v276 << v119) >> v131));
        v147 = v146[1];
        LODWORD(v146) = v119 + *v146;
        *v140 = v147;
        v148 = (v10 + 2 * ((v129 << v132) >> v131));
        v149 = v132 + *v148;
        *v141 = v148[1];
        v150 = (v10 + 2 * ((v113 << v142) >> v131));
        LODWORD(v142) = v142 + *v150;
        v138[1] = v150[1];
        v151 = (v10 + 2 * ((v116 << v144) >> v131));
        LODWORD(v144) = v144 + *v151;
        v139[1] = v151[1];
        v152 = (v10 + 2 * ((v276 << v146) >> v131));
        LODWORD(v146) = v146 + *v152;
        v140[1] = v152[1];
        v153 = (v10 + 2 * ((v129 << v149) >> v131));
        v154 = v149 + *v153;
        v141[1] = v153[1];
        v155 = (v10 + 2 * ((v113 << v142) >> v131));
        v156 = v155[1];
        LODWORD(v155) = v142 + *v155;
        v138[2] = v156;
        v157 = (v10 + 2 * ((v116 << v144) >> v131));
        v158 = v144 + *v157;
        v139[2] = v157[1];
        v159 = (v10 + 2 * ((v276 << v146) >> v131));
        v160 = v159[1];
        v161 = v146 + *v159;
        v140[2] = v160;
        v162 = (v10 + 2 * ((v129 << v154) >> v131));
        v163 = v154 + *v162;
        v141[2] = v162[1];
        v164 = (v10 + 2 * ((v113 << v155) >> v131));
        v114 = v155 + *v164;
        v138[3] = v164[1];
        v165 = (v10 + 2 * ((v116 << v158) >> v131));
        v166 = *v165;
        v139[3] = v165[1];
        v167 = (v10 + 2 * ((v276 << v161) >> v131));
        v168 = *v167;
        v140[3] = v167[1];
        v169 = (v10 + 2 * ((v129 << v163) >> v131));
        v170 = *v169;
        v141[3] = v169[1];
        if (v278 < v126)
        {
          v171 = 3;
        }

        else
        {
          v171 = 0;
          v172 = (v278 - (v114 >> 3));
          v114 &= 7u;
          v278 = v172;
          v113 = *v172;
        }

        v117 = v158 + v166;
        if (v277 < v127)
        {
          v173 = 3;
        }

        else
        {
          v173 = 0;
          v174 = &v277[-(v117 >> 3)];
          v117 &= 7u;
          v277 = v174;
          v116 = *v174;
        }

        v119 = v161 + v168;
        if (v130 < v128)
        {
          v175 = 3;
        }

        else
        {
          v175 = 0;
          v130 -= v119 >> 3;
          v119 &= 7u;
          v276 = *v130;
        }

        v132 = v163 + v170;
        if (v134 < v133)
        {
          v176 = 3;
        }

        else
        {
          v176 = 0;
          v134 = (v134 - (v132 >> 3));
          v132 &= 7u;
          v129 = *v134;
        }

        if ((v141 + 4) >= v125)
        {
          break;
        }

        v137 = v138 + 4;
      }

      while (!(v173 | v171 | v175 | v176));
      v183 = v138 + 4;
      v182 = &v138[v108 + 4];
      v181 = &v138[v135 + 4];
      v180 = &v138[v136 + 4];
      DWORD2(v279) = v132;
      *&v280 = v134;
      v124 = v270;
      v121 = v271;
      v122 = v273;
      v123 = a1 + v108 + v108;
    }

    *&v279 = v129;
    v177 = v114;
    v178 = v117;
    v179 = v119;
  }

  result = -20;
  if (v183 > v124 || v182 > v123 || v181 > v122)
  {
    return result;
  }

  v274 = v122;
  if ((v124 - v183) < 4)
  {
    v185 = v266;
    if (v177 > 0x40)
    {
      v187 = v124;
      v186 = &BIT_reloadDStream_zeroFilled_36196;
      v200 = v183;
      v201 = v130;
      v202 = v267;
    }

    else
    {
      v201 = v130;
      v187 = v124;
      if (v278 >= v126)
      {
        v186 = (v278 - (v177 >> 3));
        v177 &= 7u;
        v113 = *v186;
        v200 = v183;
        v202 = v267;
      }

      else
      {
        v202 = v267;
        if (v278 == v266)
        {
          v200 = v183;
          v186 = v266;
        }

        else
        {
          v203 = v177 >> 3;
          if ((v278 - v203) >= v266)
          {
            v203 = v203;
          }

          else
          {
            v203 = (v278 - v266);
          }

          v186 = (v278 - v203);
          v177 -= 8 * v203;
          v113 = *(v278 - v203);
          v200 = v183;
        }
      }
    }

    goto LABEL_170;
  }

  v184 = v121;
  v185 = v266;
  v186 = v278;
  if (v177 > 0x40)
  {
    v187 = v124;
    v186 = &BIT_reloadDStream_zeroFilled_36196;
    v200 = v183;
    v201 = v130;
    v202 = v267;
    goto LABEL_170;
  }

  v187 = v124;
  v188 = v124 - 3;
  v189 = -v267 & 0x3F;
  while (1)
  {
    if (v186 >= v126)
    {
      LODWORD(v190) = v177 >> 3;
      v177 &= 7u;
      v191 = 1;
      goto LABEL_154;
    }

    if (v186 == v266)
    {
      break;
    }

    v190 = v177 >> 3;
    v191 = (v186 - v190) >= v266;
    if ((v186 - v190) < v266)
    {
      LODWORD(v190) = v186 - v266;
    }

    v123 = a1 + v108 + v108;
    v177 -= 8 * v190;
LABEL_154:
    v186 = (v186 - v190);
    v113 = *v186;
    if (v183 >= v188 || !v191)
    {
      goto LABEL_168;
    }

    v192 = (v10 + 2 * ((v113 << v177) >> v189));
    v193 = v177 + *v192;
    *v183 = v192[1];
    v194 = (v10 + 2 * ((v113 << v193) >> v189));
    v195 = v193 + *v194;
    v183[1] = v194[1];
    v196 = (v10 + 2 * ((v113 << v195) >> v189));
    v197 = v195 + *v196;
    v183[2] = v196[1];
    v198 = (v10 + 2 * ((v113 << v197) >> v189));
    v199 = v198[1];
    v177 = v197 + *v198;
    v200 = v183 + 4;
    v183[3] = v199;
    v183 += 4;
    if (v177 > 0x40)
    {
      v186 = &BIT_reloadDStream_zeroFilled_36196;
      goto LABEL_169;
    }
  }

  v186 = v266;
LABEL_168:
  v200 = v183;
LABEL_169:
  v183 = v200;
  v121 = v184;
  v201 = v130;
  v202 = v267;
LABEL_170:
  if (v183 < v187)
  {
    v204 = v108 + a1 - v200;
    do
    {
      v205 = (v10 + 2 * ((v113 << v177) >> (-v202 & 0x3F)));
      v177 += *v205;
      *v183++ = v205[1];
      --v204;
    }

    while (v204);
  }

  if ((v123 - v182) < 4)
  {
    v207 = v272;
    if (v178 > 0x40)
    {
      goto LABEL_278;
    }

    v220 = v121;
    if (v277 >= v127)
    {
      LODWORD(v223) = v178 >> 3;
      v178 &= 7u;
      v221 = v269;
      v222 = v276;
    }

    else
    {
      v221 = v269;
      v222 = v276;
      if (v277 == v272)
      {
        v206 = v272;
        goto LABEL_197;
      }

      v223 = v178 >> 3;
      if (&v277[-v223] < v272)
      {
        LODWORD(v223) = v277 - v272;
      }

      v178 -= 8 * v223;
    }

    v206 = &v277[-v223];
    v116 = *v206;
    goto LABEL_197;
  }

  v206 = v277;
  v207 = v272;
  if (v178 <= 0x40)
  {
    v208 = -v202 & 0x3F;
    while (1)
    {
      if (v206 >= v127)
      {
        LODWORD(v209) = v178 >> 3;
        v178 &= 7u;
        v210 = 1;
      }

      else
      {
        if (v206 == v272)
        {
          v206 = v272;
          goto LABEL_196;
        }

        v209 = v178 >> 3;
        v210 = &v206[-v209] >= v272;
        if (&v206[-v209] < v272)
        {
          LODWORD(v209) = v206 - v272;
        }

        v178 -= 8 * v209;
      }

      v206 -= v209;
      v116 = *v206;
      if (v182 >= v275 - 3 || !v210)
      {
        goto LABEL_196;
      }

      v211 = (v10 + 2 * ((v116 << v178) >> v208));
      v212 = v178 + *v211;
      *v182 = v211[1];
      v213 = (v10 + 2 * ((v116 << v212) >> v208));
      v214 = v212 + *v213;
      v182[1] = v213[1];
      v215 = (v10 + 2 * ((v116 << v214) >> v208));
      v216 = v214 + *v215;
      v182[2] = v215[1];
      v217 = (v10 + 2 * ((v116 << v216) >> v208));
      v218 = v217[1];
      v178 = v216 + *v217;
      v219 = v182 + 4;
      v182[3] = v218;
      v182 += 4;
      if (v178 > 0x40)
      {
        v206 = &BIT_reloadDStream_zeroFilled_36196;
        v182 = v219;
        goto LABEL_196;
      }
    }
  }

LABEL_278:
  v206 = &BIT_reloadDStream_zeroFilled_36196;
LABEL_196:
  v220 = v121;
  v221 = v269;
  v222 = v276;
LABEL_197:
  while (v182 < v275)
  {
    v224 = (v10 + 2 * ((v116 << v178) >> (-v202 & 0x3F)));
    v178 += *v224;
    *v182++ = v224[1];
  }

  if ((v274 - v181) >= 4)
  {
    if (v179 <= 0x40)
    {
      v225 = -v202 & 0x3F;
      while (1)
      {
        if (v201 >= v128)
        {
          LODWORD(v226) = v179 >> 3;
          v179 &= 7u;
          v227 = 1;
        }

        else
        {
          if (v201 == v221)
          {
            goto LABEL_219;
          }

          v226 = v179 >> 3;
          v227 = &v201[-v226] >= v221;
          if (&v201[-v226] < v221)
          {
            LODWORD(v226) = v201 - v221;
          }

          v179 -= 8 * v226;
        }

        v201 -= v226;
        v222 = *v201;
        if (v181 >= v274 - 3 || !v227)
        {
          goto LABEL_222;
        }

        v228 = (v10 + 2 * ((v222 << v179) >> v225));
        v229 = v179 + *v228;
        *v181 = v228[1];
        v230 = (v10 + 2 * ((v222 << v229) >> v225));
        v231 = v229 + *v230;
        v181[1] = v230[1];
        v232 = (v10 + 2 * ((v222 << v231) >> v225));
        v233 = v231 + *v232;
        v181[2] = v232[1];
        v234 = (v10 + 2 * ((v222 << v233) >> v225));
        v235 = v234[1];
        v179 = v233 + *v234;
        v236 = v181 + 4;
        v181[3] = v235;
        v181 += 4;
        if (v179 > 0x40)
        {
          v201 = &BIT_reloadDStream_zeroFilled_36196;
          v181 = v236;
          goto LABEL_222;
        }
      }
    }

LABEL_279:
    v201 = &BIT_reloadDStream_zeroFilled_36196;
    goto LABEL_222;
  }

  if (v179 > 0x40)
  {
    goto LABEL_279;
  }

  if (v201 >= v128)
  {
    LODWORD(v237) = v179 >> 3;
    v179 &= 7u;
  }

  else
  {
    if (v201 == v221)
    {
LABEL_219:
      v201 = v221;
      goto LABEL_222;
    }

    v237 = v179 >> 3;
    if (&v201[-v237] < v221)
    {
      LODWORD(v237) = v201 - v221;
    }

    v179 -= 8 * v237;
  }

  v201 -= v237;
  v222 = *v201;
LABEL_222:
  while (v181 < v274)
  {
    v238 = (v10 + 2 * ((v222 << v179) >> (-v202 & 0x3F)));
    v179 += *v238;
    *v181++ = v238[1];
  }

  v239 = DWORD2(v279);
  if ((v220 - v180) < 4)
  {
    if (DWORD2(v279) >= 0x41)
    {
      v241 = &BIT_reloadDStream_zeroFilled_36196;
      *&v280 = &BIT_reloadDStream_zeroFilled_36196;
    }

    else
    {
      v241 = v280;
      if (v280 >= v281)
      {
        v241 = (v280 - (DWORD2(v279) >> 3));
        *&v280 = v241;
        v239 = BYTE8(v279) & 7;
      }

      else
      {
        if (v280 == *(&v280 + 1))
        {
          goto LABEL_248;
        }

        v254 = DWORD2(v279) >> 3;
        if (v280 - v254 >= *(&v280 + 1))
        {
          v255 = v254;
        }

        else
        {
          v255 = (v280 - DWORD2(v280));
        }

        v241 = (v280 - v255);
        *&v280 = v280 - v255;
        v239 = DWORD2(v279) - 8 * v255;
      }

      DWORD2(v279) = v239;
      *&v279 = *v241;
    }
  }

  else if (DWORD2(v279) > 0x40)
  {
    v253 = v180;
LABEL_282:
    v241 = &BIT_reloadDStream_zeroFilled_36196;
    *&v280 = &BIT_reloadDStream_zeroFilled_36196;
    v180 = v253;
  }

  else
  {
    v240 = -v202 & 0x3F;
    while (1)
    {
      v241 = v280;
      if (v280 >= v281)
      {
        v241 = (v280 - (v239 >> 3));
        *&v280 = v241;
        v239 &= 7u;
        v243 = 1;
      }

      else
      {
        if (v280 == *(&v280 + 1))
        {
          break;
        }

        v242 = v239 >> 3;
        v243 = (v280 - v242) >= *(&v280 + 1);
        v242 = (v280 - v242) < *(&v280 + 1) ? (v280 - DWORD2(v280)) : v242;
        v241 = (v280 - v242);
        *&v280 = v280 - v242;
        v239 -= 8 * v242;
      }

      DWORD2(v279) = v239;
      v244 = *v241;
      *&v279 = *v241;
      if (v180 >= v125 || !v243)
      {
        break;
      }

      v245 = (v10 + 2 * ((v244 << v239) >> v240));
      v246 = v245[1];
      DWORD2(v279) = v239 + *v245;
      *v180 = v246;
      v247 = (v10 + 2 * (v279 << SBYTE8(v279) >> v240));
      v248 = v247[1];
      DWORD2(v279) += *v247;
      v180[1] = v248;
      v249 = (v10 + 2 * (v279 << SBYTE8(v279) >> v240));
      v250 = v249[1];
      DWORD2(v279) += *v249;
      v180[2] = v250;
      v251 = (v10 + 2 * (v279 << SBYTE8(v279) >> v240));
      v252 = v251[1];
      DWORD2(v279) += *v251;
      v253 = v180 + 4;
      v180[3] = v252;
      v239 = DWORD2(v279);
      v180 += 4;
      if (DWORD2(v279) > 0x40)
      {
        goto LABEL_282;
      }
    }
  }

LABEL_248:
  if (v180 < v220)
  {
    v256 = a1 + a2 - v180;
    do
    {
      v257 = (v10 + 2 * (v279 << SBYTE8(v279) >> (-v202 & 0x3F)));
      v258 = v257[1];
      DWORD2(v279) += *v257;
      *v180++ = v258;
      --v256;
    }

    while (v256);
    v241 = v280;
    v239 = DWORD2(v279);
  }

  if (v239 == 64 && v241 == *(&v280 + 1) && v179 == 64 && v201 == v221 && v178 == 64 && v206 == v207 && v177 == 64 && v186 == v185)
  {
    return a2;
  }

  else
  {
    return -20;
  }
}

uint64_t HUF_DecompressFastArgs_init(void *a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, unint64_t a5, int *a6)
{
  if (a3)
  {
    if (a5 < 0xA)
    {
      return -20;
    }

    v8 = *a6;
    v7 = a6 + 1;
    if ((v8 & 0xFF0000) == 0xB0000)
    {
      v9 = 0;
      v10 = *a4;
      v11 = a4[1];
      v12 = a4[2];
      v13 = a4 + v10 + 6;
      a1[15] = a4 + 3;
      a1[16] = v13;
      v14 = &v13[v11];
      v15 = &v13[v11 + v12];
      a1[17] = &v13[v11];
      a1[18] = v15;
      if (v10 < 8)
      {
        return v9;
      }

      if (v11 < 8)
      {
        return v9;
      }

      if (v12 < 8)
      {
        return v9;
      }

      v16 = v10 + v11 + v12 + 6;
      if (a5 - v16 < 8)
      {
        return v9;
      }

      if (a5 < v16)
      {
        return -20;
      }

      v17 = a2 + (a3 & ~(a3 >> 63));
      *a1 = v13 - 8;
      a1[1] = v14 - 8;
      v18 = a4 + a5;
      a1[2] = v15 - 8;
      a1[3] = a4 + a5 - 8;
      v19 = (a3 + 3) >> 2;
      a1[4] = a2;
      a1[5] = a2 + v19;
      v20 = a2 + v19 + v19;
      v21 = v20 + v19;
      a1[6] = v20;
      a1[7] = v21;
      if (v21 < v17)
      {
        v22 = 8 - (__clz(*(v13 - 1)) ^ 0x1F);
        if (*(v13 - 1))
        {
          v23 = v22;
        }

        else
        {
          v23 = 0;
        }

        a1[8] = (*(v13 - 1) | 1) << v23;
        v24 = 8 - (__clz(*(v14 - 1)) ^ 0x1F);
        if (*(v14 - 1))
        {
          v25 = v24;
        }

        else
        {
          v25 = 0;
        }

        a1[9] = (*(v14 - 1) | 1) << v25;
        v26 = 8 - (__clz(*(v15 - 1)) ^ 0x1F);
        if (*(v15 - 1))
        {
          v27 = v26;
        }

        else
        {
          v27 = 0;
        }

        a1[10] = (*(v15 - 1) | 1) << v27;
        v28 = 8 - (__clz(*(v18 - 1)) ^ 0x1F);
        if (*(v18 - 1))
        {
          v29 = v28;
        }

        else
        {
          v29 = 0;
        }

        v30 = *(v18 - 1) | 1;
        a1[13] = a4;
        a1[14] = v17;
        a1[11] = v30 << v29;
        a1[12] = v7;
        return 1;
      }
    }
  }

  return 0;
}

uint64_t BIT_initDStream_36203(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  if (!a3)
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return -72;
  }

  *(a1 + 24) = a2;
  *(a1 + 32) = a2 + 8;
  if (a3 >= 8)
  {
    v3 = *&a2[a3 - 8];
    *(a1 + 16) = &a2[a3 - 8];
    *a1 = v3;
    if (a2[a3 - 1])
    {
      v4 = 8 - (__clz(a2[a3 - 1]) ^ 0x1F);
LABEL_21:
      *(a1 + 8) = v4;
      return a3;
    }

    *(a1 + 8) = 0;
    return -1;
  }

  *(a1 + 16) = a2;
  v6 = *a2;
  *a1 = v6;
  if (a3 > 4)
  {
    if (a3 != 5)
    {
      if (a3 != 6)
      {
        v6 |= a2[6] << 48;
        *a1 = v6;
      }

      v6 += a2[5] << 40;
      *a1 = v6;
    }

    v6 += a2[4] << 32;
    *a1 = v6;
    goto LABEL_16;
  }

  if (a3 != 2)
  {
    if (a3 == 3)
    {
LABEL_17:
      v6 += a2[2] << 16;
      *a1 = v6;
      goto LABEL_18;
    }

    if (a3 != 4)
    {
      goto LABEL_19;
    }

LABEL_16:
    v6 += a2[3] << 24;
    *a1 = v6;
    goto LABEL_17;
  }

LABEL_18:
  *a1 = v6 + (a2[1] << 8);
LABEL_19:
  if (a2[a3 - 1])
  {
    v4 = __clz(a2[a3 - 1]) - 8 * a3 + 41;
    goto LABEL_21;
  }

  *(a1 + 8) = 0;
  return -20;
}

unint64_t HUF_decompress4X_hufOnly_wksp(int *a1, uint64_t a2, unint64_t a3, char *a4, unint64_t a5, uint64_t a6)
{
  if (!a3)
  {
    return -70;
  }

  if (!a5)
  {
    return -20;
  }

  if (a5 >= a3)
  {
    v6 = 15;
  }

  else
  {
    v6 = (16 * a5 / a3);
  }

  v10 = (&algoTime + 16 * v6);
  v11 = *v10 + v10[1] * (a3 >> 8);
  LODWORD(v10) = v10[2] + v10[3] * (a3 >> 8);
  if (v10 + (v10 >> 5) < v11)
  {
    result = HUF_readDTableX2_wksp(a1, a4, a5, a6);
    if (result > 0xFFFFFFFFFFFFFF88)
    {
      return result;
    }

    if (a5 > result)
    {

      return HUF_decompress4X2_usingDTable_internal(a2, a3, &a4[result], a5 - result, a1);
    }

    return -72;
  }

  result = HUF_readDTableX1_wksp(a1, a4, a5, a6);
  if (result > 0xFFFFFFFFFFFFFF88)
  {
    return result;
  }

  if (a5 <= result)
  {
    return -72;
  }

  return HUF_decompress4X1_usingDTable_internal(a2, a3, &a4[result], a5 - result, a1);
}

uint64_t ZSTD_selectEncodingType(_DWORD *a1, unsigned int *a2, unsigned int a3, unint64_t a4, unint64_t a5, unsigned int a6, unsigned __int16 *a7, uint64_t a8, char a9, int a10, unsigned int a11)
{
  v79 = *MEMORY[0x1E69E9840];
  if (a4 != a5)
  {
    if (a11 <= 3)
    {
      if (a10)
      {
        if (a5 > 0x3E7 || *a1 != 2)
        {
          if (a5 >= (10 - a11) << a9 >> 3 && a5 >> (a9 - 1) <= a4)
          {
            goto LABEL_83;
          }

LABEL_81:
          *a1 = 0;
          return 0;
        }

        return 3;
      }

      goto LABEL_83;
    }

    if (!a10)
    {
      v19 = -1;
      if (!*a1)
      {
        goto LABEL_39;
      }

LABEL_35:
      v34 = *a7;
      if (*a7)
      {
        v35 = 1 << (v34 - 1);
      }

      else
      {
        v35 = 1;
      }

      if (a7[1] >= a3)
      {
        v68 = 0;
        v69 = a3 + 1;
        v70 = &a7[2 * v35 + 4];
        v71 = a2;
        do
        {
          v73 = *v70;
          v70 += 4;
          v72 = v73;
          v75 = *v71++;
          v74 = v75;
          if (v75)
          {
            v76 = ((HIWORD(v72) + 1) << 8) - ((((HIWORD(v72) + 1) << 24) - ((v72 + (1 << v34)) << 8)) >> v34);
            if (v76 >= (v34 << 8) + 256)
            {
              goto LABEL_39;
            }

            v68 += v74 * v76;
          }

          --v69;
        }

        while (v69);
        v36 = a1;
        v37 = v68 >> 8;
LABEL_40:
        v38 = 29 - __clz(a5 - 1);
        v39 = 32 - __clz(a5);
        v40 = 33 - __clz(a3);
        if (v39 >= v40)
        {
          v39 = v40;
        }

        if (v38 >= a6)
        {
          v38 = a6;
        }

        if (v39 > v38)
        {
          v38 = v39;
        }

        if (v38 <= 5)
        {
          v38 = 5;
        }

        if (v38 >= 0xC)
        {
          v41 = 12;
        }

        else
        {
          v41 = v38;
        }

        v43 = FSE_normalizeCount(v77, v41, a2, a5, a3, a5 > 0x7FF);
        if (v43 <= 0xFFFFFFFFFFFFFF88)
        {
          v43 = FSE_writeNCount(v78, 0x200uLL, v77, a3, v41);
        }

        if (a3 + 1 > 1)
        {
          v44 = a3 + 1;
        }

        else
        {
          v44 = 1;
        }

        a1 = v36;
        if (a3 + 1 >= 2)
        {
          v48 = 0;
          v49 = 0;
          v45 = v44 & 0xFFFFFFFE;
          v50 = (a2 + 1);
          v51 = v45;
          v47 = a5;
          do
          {
            v52 = *(v50 - 1);
            v53 = *v50;
            v54 = (v52 << 8);
            v55 = (*v50 << 8);
            v56 = v54 / a5;
            v57 = v54 >= a5 || v52 == 0;
            v58 = v55 / a5;
            if (!v57)
            {
              v56 = 1;
            }

            if (v55 < a5 && v53 != 0)
            {
              v58 = 1;
            }

            v48 += kInverseProbabilityLog256[v56] * v52;
            v49 += kInverseProbabilityLog256[v58] * v53;
            v50 += 2;
            v51 -= 2;
          }

          while (v51);
          v46 = v49 + v48;
          if (v45 == v44)
          {
LABEL_79:
            v67 = (v46 >> 8) + 8 * v43;
            if (v19 <= v37 && v19 <= v67)
            {
              goto LABEL_81;
            }

            if (v37 <= v67)
            {
              return 3;
            }

LABEL_83:
            *a1 = 1;
            return 2;
          }
        }

        else
        {
          v45 = 0;
          v46 = 0;
          v47 = a5;
        }

        v60 = v44 - v45;
        v61 = &a2[v45];
        do
        {
          v63 = *v61++;
          v62 = v63;
          v64 = (v63 << 8);
          if (v64 >= v47 || v62 == 0)
          {
            v66 = v64 / v47;
          }

          else
          {
            v66 = 1;
          }

          v46 += kInverseProbabilityLog256[v66] * v62;
          --v60;
        }

        while (v60);
        goto LABEL_79;
      }

LABEL_39:
      v36 = a1;
      v37 = -1;
      goto LABEL_40;
    }

    v15 = 8 - a9;
    if (a3 + 1 > 1)
    {
      v16 = a3 + 1;
    }

    else
    {
      v16 = 1;
    }

    if (a3 + 1 >= 2)
    {
      v20 = 0;
      v21 = 0;
      v17 = v16 & 0xFFFFFFFE;
      v22 = a2 + 1;
      v23 = (a8 + 2);
      v24 = v17;
      do
      {
        v25 = *(v23 - 1);
        v27 = *v23;
        v23 += 2;
        v26 = v27;
        if (v25 == 0xFFFF)
        {
          LOWORD(v25) = 1;
        }

        if (v26 == 0xFFFF)
        {
          LOWORD(v26) = 1;
        }

        v20 += (kInverseProbabilityLog256[v25 << v15] * *(v22 - 1));
        v21 += (kInverseProbabilityLog256[v26 << v15] * *v22);
        v22 += 2;
        v24 -= 2;
      }

      while (v24);
      v18 = v21 + v20;
      if (v17 == v16)
      {
LABEL_34:
        v19 = v18 >> 8;
        if (!*a1)
        {
          goto LABEL_39;
        }

        goto LABEL_35;
      }
    }

    else
    {
      v17 = 0;
      v18 = 0;
    }

    v28 = v16 - v17;
    v29 = &a2[v17];
    v30 = (a8 + 2 * v17);
    do
    {
      v32 = *v30++;
      v31 = v32;
      if (v32 == 0xFFFF)
      {
        v31 = 1;
      }

      v33 = *v29++;
      v18 += (kInverseProbabilityLog256[v31 << v15] * v33);
      --v28;
    }

    while (v28);
    goto LABEL_34;
  }

  *a1 = 0;
  return a4 > 2 || a10 == 0;
}

unint64_t ZSTD_buildCTable(_WORD *a1, unint64_t a2, _WORD *__dst, unsigned int a4, int a5, unsigned int *a6, unsigned int a7, _BYTE *a8, uint64_t a9, unsigned __int16 *a10, int a11, int a12, const void *a13, size_t a14, __int16 *a15)
{
  if (a5 > 1)
  {
    if (a5 == 2)
    {
      v20 = a9;
      v21 = 29 - __clz(a9 - 1);
      v22 = 32 - __clz(a9);
      v23 = 33 - __clz(a7);
      if (v22 >= v23)
      {
        v22 = v23;
      }

      if (v21 < a4)
      {
        a4 = v21;
      }

      if (v22 > a4)
      {
        a4 = v22;
      }

      if (a4 <= 5)
      {
        a4 = 5;
      }

      if (a4 >= 0xC)
      {
        v24 = 12;
      }

      else
      {
        v24 = a4;
      }

      v25 = a8[a9 - 1];
      v26 = a6[v25];
      if (v26 >= 2)
      {
        a6[v25] = v26 - 1;
        v20 = a9 - 1;
      }

      result = FSE_normalizeCount(a15, v24, a6, v20, a7, v20 > 0x7FF);
      if (result <= 0xFFFFFFFFFFFFFF88)
      {
        result = FSE_writeNCount(a1, a2, a15, a7, v24);
        if (result <= 0xFFFFFFFFFFFFFF88)
        {
          v28 = result;
          result = FSE_buildCTable_wksp(__dst, a15, a7, v24, a15 + 54, 0x474uLL);
          if (result < 0xFFFFFFFFFFFFFF89)
          {
            return v28;
          }
        }
      }
    }

    else
    {
      memcpy(__dst, a13, a14);
      return 0;
    }
  }

  else if (a5)
  {
    *__dst = 0;
    __dst[1] = a7;
    *(__dst + 1) = 0;
    *&__dst[4 * a7 + 4] = 0;
    if (a2)
    {
      *a1 = *a8;
      return 1;
    }

    else
    {
      return -70;
    }
  }

  else
  {
    result = FSE_buildCTable_wksp(__dst, a10, a12, a11, a15, 0x2204uLL);
    if (result < 0xFFFFFFFFFFFFFF89)
    {
      return 0;
    }
  }

  return result;
}

uint64_t ZSTD_encodeSequences(unint64_t *a1, unint64_t a2, unsigned __int16 *a3, uint64_t a4, unsigned __int16 *a5, uint64_t a6, unsigned __int16 *a7, uint64_t a8, uint64_t a9, unint64_t a10, int a11)
{
  if (a2 < 9)
  {
    return -70;
  }

  v12 = a10 - 1;
  v13 = *(a4 + a10 - 1);
  v15 = *a3;
  v14 = a3 + 2;
  v16 = 1 << (v15 - 1);
  v105 = v15;
  if (!v15)
  {
    v16 = 1;
  }

  v106 = &v14[2 * v16];
  v17 = v14[((((*&v106[4 * v13 + 2] + 0x8000) & 0xFFFF0000) - *&v106[4 * v13 + 2]) >> ((*&v106[4 * v13 + 2] + 0x8000) >> 16)) + *&v106[4 * v13]];
  v18 = a1 + a2;
  v19 = *(a6 + v12);
  v21 = *a5;
  v20 = a5 + 2;
  v22 = 1 << (v21 - 1);
  v104 = v21;
  if (!v21)
  {
    v22 = 1;
  }

  v23 = &v20[2 * v22];
  v24 = &v23[4 * *(a6 + v12)];
  v25 = v20[((((*(v24 + 1) + 0x8000) & 0xFFFF0000) - *(v24 + 1)) >> ((*(v24 + 1) + 0x8000) >> 16)) + *v24];
  v26 = *(a8 + v12);
  v27 = (v18 - 8);
  v29 = *a7;
  v28 = a7 + 2;
  v30 = 1 << (v29 - 1);
  v103 = v29;
  if (!v29)
  {
    v30 = 1;
  }

  v31 = &v28[2 * v30];
  v32 = v28[((((*&v31[4 * v26 + 2] + 0x8000) & 0xFFFF0000) - *&v31[4 * v26 + 2]) >> ((*&v31[4 * v26 + 2] + 0x8000) >> 16)) + *&v31[4 * v26]];
  v33 = (a9 + 8 * v12);
  v34 = LL_bits_36216[v26];
  v35 = ML_bits_36218[v13];
  v36 = ((BIT_mask_36272[v35] & *(v33 + 3)) << v34) | BIT_mask_36272[v34] & v33[1];
  v37 = v35 + v34;
  if (a11)
  {
    if (v19 > 0x37)
    {
      v39 = *v33;
      v38 = v19 - 56;
      if (v19 == 56)
      {
        v40 = a1;
      }

      else
      {
        v44 = ((BIT_mask_36272[v38] & v39) << v37) | v36;
        v45 = v37 + v38;
        v46 = v45 >> 3;
        *a1 = v44;
        if ((a1 + v46) <= v27)
        {
          v40 = (a1 + v46);
        }

        else
        {
          v40 = v27;
        }

        v37 = v45 & 7;
        v36 = v44 >> (8 * v46);
        v19 = 56;
      }
    }

    else
    {
      LOBYTE(v38) = 0;
      v39 = *v33;
      v40 = a1;
    }

    v42 = ((BIT_mask_36272[v19] & (v39 >> v38)) << v37) | v36;
    v43 = v37 + v19;
  }

  else
  {
    v42 = ((BIT_mask_36272[v19] & *v33) << v37) | v36;
    v43 = v37 + v19;
    v40 = a1;
  }

  v47 = v43 >> 3;
  *v40 = v42;
  v48 = (v40 + v47);
  if ((v40 + v47) > v27)
  {
    v48 = v27;
  }

  v49 = v42 >> (8 * v47);
  v50 = v43 & 7;
  v51 = a10 - 2;
  v102 = a1;
  if (a10 >= 2)
  {
    v52 = a9 + 8 * a10 - 16;
    do
    {
      v56 = *(a8 + v51);
      v57 = *(a6 + v51);
      v58 = *(a4 + v51);
      v59 = LL_bits_36216[v56];
      v60 = ML_bits_36218[v58];
      v61 = (v25 + *&v23[4 * *(a6 + v51) + 2]) >> 16;
      v62 = (v25 & BIT_mask_36272[v61]) << v50;
      v63 = v50 + v61;
      v25 = v20[(v25 >> ((v25 + *&v23[4 * *(a6 + v51) + 2]) >> 16)) + *&v23[4 * *(a6 + v51)]];
      v64 = &v106[4 * v58];
      v65 = *v64;
      v66 = (v17 + *(v64 + 1)) >> 16;
      v67 = (v17 & BIT_mask_36272[v66]) << v63;
      v68 = v63 + v66;
      v17 = v14[(v17 >> v66) + v65];
      v69 = &v31[4 * v56];
      LODWORD(v66) = *v69;
      v70 = (v32 + *(v69 + 1)) >> 16;
      v71 = v62 | v49 | v67 | ((v32 & BIT_mask_36272[v70]) << v68);
      v72 = v68 + v70;
      v32 = v28[(v32 >> v70) + v66];
      v73 = v59 + v57 + v60;
      if (v73 >= 0x1F)
      {
        v74 = v72 >> 3;
        *v48 = v71;
        if ((v48 + v74) <= v27)
        {
          v48 = (v48 + v74);
        }

        else
        {
          v48 = v27;
        }

        v72 &= 7u;
        v71 >>= 8 * v74;
      }

      v75 = v72 + v59;
      v76 = ((BIT_mask_36272[v59] & *(v52 + 4)) << v72) | ((BIT_mask_36272[v60] & *(v52 + 6)) << (v72 + v59)) | v71;
      v77 = v75 + v60;
      if (v73 >= 0x39)
      {
        v78 = v77 >> 3;
        *v48 = v76;
        if ((v48 + v78) <= v27)
        {
          v48 = (v48 + v78);
        }

        else
        {
          v48 = v27;
        }

        v77 &= 7u;
        v76 >>= 8 * v78;
      }

      if (a11)
      {
        if (v57 > 0x37)
        {
          v79 = *v52;
          v80 = v57 - 56;
          if (v57 != 56)
          {
            v81 = ((BIT_mask_36272[v80] & v79) << v77) | v76;
            v82 = (v77 + v80) >> 3;
            *v48 = v81;
            if ((v48 + v82) <= v27)
            {
              v48 = (v48 + v82);
            }

            else
            {
              v48 = v27;
            }

            v77 = (v77 + v80) & 7;
            v76 = v81 >> (8 * v82);
            v57 = 56;
          }

          v53 = v79 >> v80;
        }

        else
        {
          v53 = *v52;
        }
      }

      else
      {
        v53 = *v52;
      }

      v54 = ((BIT_mask_36272[v57] & v53) << v77) | v76;
      v55 = (v77 + v57) >> 3;
      *v48 = v54;
      if ((v48 + v55) <= v27)
      {
        v48 = (v48 + v55);
      }

      else
      {
        v48 = v27;
      }

      v49 = v54 >> (8 * v55);
      --v51;
      v50 = (v77 + v57) & 7;
      v52 -= 8;
    }

    while (v51 < a10);
  }

  v83 = ((v17 & BIT_mask_36272[v105]) << v50) | v49;
  v84 = v50 + v105;
  v85 = v84 >> 3;
  *v48 = v83;
  v86 = (v48 + v85);
  if ((v48 + v85) > v27)
  {
    v86 = v27;
  }

  v87 = v84 & 7;
  v88 = ((v25 & BIT_mask_36272[v104]) << v87) | (v83 >> (8 * v85));
  v89 = v87 + v104;
  v90 = v89 >> 3;
  *v86 = v88;
  v91 = (v86 + v90);
  if (v91 > v27)
  {
    v91 = v27;
  }

  v92 = v89 & 7;
  v93 = ((v32 & BIT_mask_36272[v103]) << v92) | (v88 >> (8 * v90));
  v94 = v92 + v103;
  v95 = v94 >> 3;
  *v91 = v93;
  v96 = (v91 + v95);
  if (v96 > v27)
  {
    v96 = v27;
  }

  v97 = v94 & 7;
  v98 = (v93 >> (8 * v95)) | (1 << v97);
  v99 = v97 + 1;
  *v96 = v98;
  v100 = v96 + (v99 >> 3);
  if (v100 > v27)
  {
    v100 = v27;
  }

  if (v100 >= v27)
  {
    return -70;
  }

  v101 = ((v99 & 7) != 0 ? v100 + 1 : v100);
  result = v101 - v102;
  if (v101 == v102)
  {
    return -70;
  }

  return result;
}

unint64_t ZSTD_XXH64(uint64_t *a1, unint64_t a2)
{
  if (a1)
  {
    if (a2 < 0x20)
    {
      v11 = 0x27D4EB2F165667C5;
    }

    else
    {
      v2 = 0;
      v3 = a1 + a2 - 31;
      v4 = 0x61C8864E7A143579;
      v5 = 0x60EA27EEADC0B5D6;
      v6 = 0xC2B2AE3D27D4EB4FLL;
      do
      {
        v7 = __ROR8__(v5 - 0x3D4D51C2D82B14B1 * *a1, 33);
        v5 = 0x9E3779B185EBCA87 * v7;
        v8 = __ROR8__(v6 - 0x3D4D51C2D82B14B1 * a1[1], 33);
        v6 = 0x9E3779B185EBCA87 * v8;
        v9 = __ROR8__(v2 - 0x3D4D51C2D82B14B1 * a1[2], 33);
        v2 = 0x9E3779B185EBCA87 * v9;
        v10 = __ROR8__(v4 - 0x3D4D51C2D82B14B1 * a1[3], 33);
        v4 = 0x9E3779B185EBCA87 * v10;
        a1 += 4;
      }

      while (a1 < v3);
      v11 = 0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((__ROR8__(v6, 57) + __ROR8__(v5, 63) + __ROR8__(v2, 52) + __ROR8__(v4, 46)) ^ (0x9E3779B185EBCA87 * __ROR8__(0xDEF35B010F796CA9 * v7, 33))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * __ROR8__(0xDEF35B010F796CA9 * v8, 33))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * __ROR8__(0xDEF35B010F796CA9 * v9, 33))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * __ROR8__(0xDEF35B010F796CA9 * v10, 33))) - 0x7A1435883D4D519DLL;
    }

    v12 = v11 + a2;
    v13 = a2 & 0x1F;
    if (v13 >= 8)
    {
      do
      {
        v14 = *a1++;
        v12 = 0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * __ROR8__((0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * v14, 33)) ^ v12, 37);
        v13 -= 8;
      }

      while (v13 > 7);
    }

    if (v13 >= 4)
    {
      v15 = *a1;
      a1 = (a1 + 4);
      v12 = 0x165667B19E3779F9 - 0x3D4D51C2D82B14B1 * __ROR8__((0x9E3779B185EBCA87 * v15) ^ v12, 41);
      v13 -= 4;
    }

    for (; v13; --v13)
    {
      v16 = *a1;
      a1 = (a1 + 1);
      v12 = 0x9E3779B185EBCA87 * __ROR8__((0x27D4EB2F165667C5 * v16) ^ v12, 53);
    }
  }

  else
  {
    v12 = 0x27D4EB2F165667C5;
  }

  v17 = 0x165667B19E3779F9 * ((0xC2B2AE3D27D4EB4FLL * (v12 ^ (v12 >> 33))) ^ ((0xC2B2AE3D27D4EB4FLL * (v12 ^ (v12 >> 33))) >> 29));
  return v17 ^ HIDWORD(v17);
}

unsigned int *ZSTD_XXH64_update(unsigned int *result, void *a2, size_t a3)
{
  if (a2)
  {
    v3 = result;
    *result += a3;
    v4 = result[18];
    if (v4 + a3 > 0x1F)
    {
      v6 = a2 + a3;
      if (v4)
      {
        v7 = a2;
        result = memcpy(result + v4 + 40, a2, (32 - v4));
        v8 = __ROR8__(*(v3 + 2) - 0x3D4D51C2D82B14B1 * *(v3 + 6), 33);
        *(v3 + 1) = 0x9E3779B185EBCA87 * __ROR8__(*(v3 + 1) - 0x3D4D51C2D82B14B1 * *(v3 + 5), 33);
        *(v3 + 2) = 0x9E3779B185EBCA87 * v8;
        v9 = 0x9E3779B185EBCA87 * __ROR8__(*(v3 + 4) - 0x3D4D51C2D82B14B1 * *(v3 + 8), 33);
        *(v3 + 3) = 0x9E3779B185EBCA87 * __ROR8__(*(v3 + 3) - 0x3D4D51C2D82B14B1 * *(v3 + 7), 33);
        *(v3 + 4) = v9;
        a2 = (v7 + 32 - v3[18]);
        v3[18] = 0;
      }

      if ((a2 + 4) <= v6)
      {
        v10 = *(v3 + 1);
        v11 = *(v3 + 2);
        v12 = *(v3 + 3);
        v13 = *(v3 + 4);
        do
        {
          v10 = 0x9E3779B185EBCA87 * __ROR8__(v10 - 0x3D4D51C2D82B14B1 * *a2, 33);
          *(v3 + 1) = v10;
          v11 = 0x9E3779B185EBCA87 * __ROR8__(v11 - 0x3D4D51C2D82B14B1 * a2[1], 33);
          *(v3 + 2) = v11;
          v12 = 0x9E3779B185EBCA87 * __ROR8__(v12 - 0x3D4D51C2D82B14B1 * a2[2], 33);
          *(v3 + 3) = v12;
          v13 = 0x9E3779B185EBCA87 * __ROR8__(v13 - 0x3D4D51C2D82B14B1 * a2[3], 33);
          *(v3 + 4) = v13;
          a2 += 4;
        }

        while (a2 <= v6 - 32);
      }

      if (a2 < v6)
      {
        v14 = v6 - a2;
        result = memcpy(v3 + 10, a2, v6 - a2);
        v3[18] = v14;
      }
    }

    else
    {
      v5 = a3;
      result = memcpy(result + v4 + 40, a2, a3);
      v3[18] += v5;
    }
  }

  return result;
}

unint64_t ZSTD_XXH64_digest(void *a1)
{
  if (*a1 < 0x20uLL)
  {
    v1 = a1[3] + 0x27D4EB2F165667C5;
  }

  else
  {
    v1 = 0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((__ROR8__(a1[2], 57) + __ROR8__(a1[1], 63) + __ROR8__(a1[3], 52) + __ROR8__(a1[4], 46)) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * a1[1], 33))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * a1[2], 33))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * a1[3], 33))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * a1[4], 33))) - 0x7A1435883D4D519DLL;
  }

  v2 = v1 + *a1;
  v3 = a1 + 5;
  v4 = *a1 & 0x1FLL;
  if (v4 >= 8)
  {
    do
    {
      v5 = *v3++;
      v2 = 0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * __ROR8__((0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * v5, 33)) ^ v2, 37);
      v4 -= 8;
    }

    while (v4 > 7);
  }

  if (v4 >= 4)
  {
    v6 = *v3;
    v3 = (v3 + 4);
    v2 = 0x165667B19E3779F9 - 0x3D4D51C2D82B14B1 * __ROR8__((0x9E3779B185EBCA87 * v6) ^ v2, 41);
    v4 -= 4;
  }

  for (; v4; --v4)
  {
    v7 = *v3;
    v3 = (v3 + 1);
    v2 = 0x9E3779B185EBCA87 * __ROR8__((0x27D4EB2F165667C5 * v7) ^ v2, 53);
  }

  v8 = 0x165667B19E3779F9 * ((0xC2B2AE3D27D4EB4FLL * (v2 ^ (v2 >> 33))) ^ ((0xC2B2AE3D27D4EB4FLL * (v2 ^ (v2 >> 33))) >> 29));
  return v8 ^ HIDWORD(v8);
}

void ZSTD_freeDDict(void **a1)
{
  if (!a1)
  {
    return;
  }

  v2 = a1[3417];
  v3 = a1[3418];
  if (*a1)
  {
    if (v2)
    {
      v4 = a1[3417];
      v2(a1[3418]);
      v2 = v4;
LABEL_7:

      (v2)(v3, a1);
      return;
    }

    free(*a1);
  }

  else if (v2)
  {
    goto LABEL_7;
  }

  free(a1);
}

unint64_t ZSTD_ldm_gear_feed(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, _DWORD *a5)
{
  v5 = *a1;
  v6 = a1[1];
  if (a3 < 4)
  {
    v9 = 0;
LABEL_18:
    if (v9 < a3)
    {
      while (1)
      {
        v5 = ZSTD_ldm_gearTab[*(a2 + v9)] + 2 * v5;
        v14 = v9 + 1;
        if ((v5 & v6) != 0)
        {
          if (v14 >= a3)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v15 = *a5;
          *(a4 + 8 * v15) = v14;
          LODWORD(v15) = v15 + 1;
          *a5 = v15;
          if (v15 == 64 || v14 >= a3)
          {
LABEL_27:
            ++v9;
            break;
          }
        }

        ++v9;
      }
    }
  }

  else
  {
    v7 = 0;
    v8 = a2 + 1;
    while (1)
    {
      v5 = ZSTD_ldm_gearTab[*(a2 + v7)] + 2 * v5;
      if ((v5 & v6) == 0)
      {
        v10 = *a5;
        *(a4 + 8 * v10) = v7 + 1;
        *a5 = v10 + 1;
        if (v10 == 63)
        {
          v9 = v7 + 1;
          goto LABEL_28;
        }
      }

      v5 = ZSTD_ldm_gearTab[*(v8 + v7)] + 2 * v5;
      if ((v5 & v6) == 0)
      {
        v11 = *a5;
        *(a4 + 8 * v11) = v7 + 2;
        *a5 = v11 + 1;
        if (v11 == 63)
        {
          v9 = v7 + 2;
          goto LABEL_28;
        }
      }

      v5 = ZSTD_ldm_gearTab[*(v8 + v7 + 1)] + 2 * v5;
      if ((v5 & v6) == 0)
      {
        v12 = *a5;
        *(a4 + 8 * v12) = v7 + 3;
        *a5 = v12 + 1;
        if (v12 == 63)
        {
          v9 = v7 + 3;
          goto LABEL_28;
        }
      }

      v5 = ZSTD_ldm_gearTab[*(v8 + v7 + 2)] + 2 * v5;
      v9 = v7 + 4;
      if ((v5 & v6) == 0)
      {
        v13 = *a5;
        *(a4 + 8 * v13) = v9;
        LODWORD(v13) = v13 + 1;
        *a5 = v13;
        if (v13 == 64)
        {
          break;
        }
      }

      v7 += 4;
      if (v9 + 3 >= a3)
      {
        goto LABEL_18;
      }
    }

    v9 = v7 + 4;
  }

LABEL_28:
  *a1 = v5;
  return v9;
}

uint64_t ZSTD_ldm_blockCompress(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, int a5, unint64_t a6, uint64_t a7)
{
  v12 = *(a2 + 280);
  if (*(a2 + 28) >= *(a2 + 24))
  {
    v13 = *(a2 + 248);
    if (v13)
    {
      v14 = *(v13 + 140) == 0;
      v13 = 2;
      if (!v14)
      {
        v13 = 3;
      }
    }
  }

  else
  {
    v13 = 1;
  }

  v15 = v12 - 3;
  v16 = a5 != 1 || v15 > 2;
  v17 = &ZSTD_selectBlockCompressor_rowBasedBlockCompressors[3 * v13] + v15;
  v18 = &ZSTD_selectBlockCompressor_blockCompressor[10 * v13] + v12;
  if (!v16)
  {
    v18 = v17;
  }

  v19 = *v18;
  if (v12 <= 6)
  {
    v84 = *v18;
    v30 = a6 + a7;
    v31 = *(a1 + 8);
    v32 = *(a1 + 24);
    if (v31 >= v32 || a7 < 1)
    {
LABEL_89:
      v79 = a6 - *(a2 + 8);
      v80 = *(a2 + 44);
      if (v80 + 1024 < v79)
      {
        v81 = v79 - v80 - 1024;
        if (v81 >= 0x200)
        {
          v81 = 512;
        }

        *(a2 + 44) = v79 - v81;
      }

      v82 = *(a2 + 280);
      if (v82 == 2)
      {
        ZSTD_fillDoubleHashTable(a2, a6, 0, 0);
      }

      else if (v82 == 1)
      {
        ZSTD_fillHashTable(a2, a6, 0, 0);
      }

      return (v84)(a2, a3, a4, a6, v30 - a6);
    }

    v33 = v30 - 32;
    v83 = *(a2 + 272);
    while (1)
    {
      LODWORD(v34) = v30 - a6;
      v35 = *a1 + 12 * v31;
      v36 = *v35;
      v37 = HIDWORD(*v35);
      v38 = *(v35 + 8);
      if (v38 + v37 <= v30 - a6)
      {
        v44 = v31 + 1;
LABEL_40:
        *(a1 + 8) = v44;
      }

      else
      {
        if (v34 - v37 >= v83)
        {
          v39 = *v35;
        }

        else
        {
          v39 = 0;
        }

        if (v34 <= v37)
        {
          LODWORD(v36) = 0;
        }

        else
        {
          v38 = v34 - v37;
          LODWORD(v36) = v39;
        }

        if (v34)
        {
          v34 = v34;
          v40 = (*a1 + 12 * v31);
          while (v32 != v31)
          {
            v41 = v40[1];
            v42 = v34 - v41;
            if (v34 <= v41)
            {
              v40[1] = v41 - v34;
              break;
            }

            v40[1] = 0;
            v43 = v40[2];
            v34 = v42 - v43;
            if (v42 < v43)
            {
              v40[2] = v43 - v42;
              if (v43 - v42 >= v83)
              {
                break;
              }

              v44 = v31 + 1;
              if (v44 < v32)
              {
                v40[4] += v43 - v42;
              }

              goto LABEL_40;
            }

            v40[2] = 0;
            *(a1 + 8) = ++v31;
            v40 += 3;
            if (v42 == v43)
            {
              break;
            }
          }
        }
      }

      if (!v36)
      {
        goto LABEL_89;
      }

      v45 = a6 - *(a2 + 8);
      v46 = *(a2 + 44);
      if (v46 + 1024 < v45)
      {
        v47 = v45 - v46 - 1024;
        if (v47 >= 0x200)
        {
          v47 = 512;
        }

        *(a2 + 44) = v45 - v47;
      }

      v48 = *(a2 + 280);
      if (v48 == 2)
      {
        ZSTD_fillDoubleHashTable(a2, a6, 0, 0);
      }

      else if (v48 == 1)
      {
        ZSTD_fillHashTable(a2, a6, 0, 0);
      }

      v49 = (v84)(a2, a3, a4, a6, v37);
      *(a4 + 4) = *a4;
      v50 = (a6 + v37);
      *a4 = v36;
      v51 = (a6 + v37 - v49);
      v52 = *(a3 + 24);
      if (a6 + v37 > v33)
      {
        break;
      }

      *v52 = *v51;
      v59 = *(a3 + 24);
      if (v49 > 0x10)
      {
        *(v59 + 16) = *(v51 + 1);
        if (v49 >= 33)
        {
          v60 = v59 + v49;
          v61 = (v59 + 32);
          v62 = (a6 + v37 - v49 + 48);
          do
          {
            *v61 = *(v62 - 1);
            v63 = *v62;
            v62 += 2;
            v61[1] = v63;
            v61 += 2;
          }

          while (v61 < v60);
        }

        goto LABEL_83;
      }

      *(a3 + 24) = v59 + v49;
      v64 = *(a3 + 8);
LABEL_85:
      *(v64 + 4) = v49;
      *v64 = v36 + 3;
      v77 = v38 - 3;
      if (v77 >= 0x10000)
      {
        v78 = (v64 - *a3) >> 3;
        *(a3 + 72) = 2;
        *(a3 + 76) = v78;
      }

      *(v64 + 6) = v77;
      *(a3 + 8) = v64 + 8;
      a6 = &v50[v38];
      v31 = *(a1 + 8);
      v32 = *(a1 + 24);
      if (v31 >= v32 || a6 >= v30)
      {
        goto LABEL_89;
      }
    }

    if (v51 <= v33)
    {
      v53 = (v52 + v33 - v51);
      *v52 = *v51;
      if ((v33 - v51) >= 17)
      {
        v54 = v52 + 1;
        v55 = (a6 + v37 - v49 + 32);
        do
        {
          *v54 = *(v55 - 1);
          v56 = *v55;
          v55 += 2;
          v54[1] = v56;
          v54 += 2;
        }

        while (v54 < v53);
      }

      v51 = (v30 - 32);
      v52 = v53;
    }

    if (v51 < v50)
    {
      v57 = v50 - v51;
      if ((v50 - v51) < 8)
      {
        v65 = v52;
        goto LABEL_82;
      }

      if ((v52 - v51) < 0x20)
      {
        v65 = v52;
        goto LABEL_82;
      }

      if (v57 >= 0x20)
      {
        v58 = v57 & 0xFFFFFFFFFFFFFFE0;
        v66 = (v51 + 16);
        v67 = v52 + 1;
        v68 = v57 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v69 = *v66;
          *(v67 - 1) = *(v66 - 1);
          *v67 = v69;
          v66 += 2;
          v67 += 2;
          v68 -= 32;
        }

        while (v68);
        if (v57 == v58)
        {
          goto LABEL_83;
        }

        if ((v57 & 0x18) == 0)
        {
          v51 += v58;
          v65 = v52 + v58;
          do
          {
LABEL_82:
            v75 = *v51++;
            *v65++ = v75;
          }

          while (v51 != v50);
          goto LABEL_83;
        }
      }

      else
      {
        v58 = 0;
      }

      v70 = v57 & 0xFFFFFFFFFFFFFFF8;
      v65 = v52 + (v57 & 0xFFFFFFFFFFFFFFF8);
      v71 = v58 - (v57 & 0xFFFFFFFFFFFFFFF8);
      v72 = &v51[v58];
      v73 = (v52 + v58);
      do
      {
        v74 = *v72++;
        *v73++ = v74;
        v71 += 8;
      }

      while (v71);
      if (v57 != v70)
      {
        v51 += v70;
        goto LABEL_82;
      }
    }

LABEL_83:
    *(a3 + 24) += v49;
    v64 = *(a3 + 8);
    if (v49 >= 0x10000)
    {
      v76 = (v64 - *a3) >> 3;
      *(a3 + 72) = 1;
      *(a3 + 76) = v76;
    }

    goto LABEL_85;
  }

  *(a2 + 288) = a1;
  v20 = a7;
  result = (v19)(a2, a3, a4, a6, a7);
  v22 = *(a1 + 16) + v20;
  if (v22)
  {
    v23 = *(a1 + 24);
    v24 = *(a1 + 8);
    if (v24 <= v23)
    {
      v25 = *(a1 + 24);
    }

    else
    {
      v25 = *(a1 + 8);
    }

    v26 = 12 * v24;
    while (1)
    {
      if (v25 == v24)
      {
        if (v25 != v23)
        {
          return result;
        }

        goto LABEL_101;
      }

      v27 = *(*a1 + v26 + 8) + *(*a1 + v26 + 4);
      v28 = v22 >= v27;
      v29 = v22 - v27;
      if (!v28)
      {
        break;
      }

      *(a1 + 8) = ++v24;
      v26 += 12;
      v22 = v29;
      if (!v29)
      {
        goto LABEL_101;
      }
    }

    *(a1 + 16) = v22;
    if (v24 == v23)
    {
      goto LABEL_101;
    }
  }

  else
  {
LABEL_101:
    *(a1 + 16) = 0;
  }

  return result;
}

uint64_t FSE_buildCTable_wksp(_WORD *a1, unsigned __int16 *a2, int a3, int a4, _WORD *a5, unint64_t a6)
{
  v6 = (1 << a4);
  v7 = v6 >> 1;
  if (a4)
  {
    v8 = v7;
  }

  else
  {
    v8 = 1;
  }

  v9 = (a3 + 2);
  if (((2 * ((1 << a4) + v9)) & 0x7FFFFFFFFFFFFFFCuLL) + 8 > a6)
  {
    return -44;
  }

  v11 = (v6 - 1);
  v12 = v7 + (v6 >> 3) + 3;
  *a1 = a4;
  v13 = &a5[v9];
  a1[1] = a3;
  *a5 = 0;
  v14 = (a3 + 1);
  if (a3 == -1)
  {
    *a5 = v6 + 1;
    v25 = &v13[v6];
LABEL_32:
    v36 = 0;
    v37 = 0;
    do
    {
      v13[v37 & v11] = v25[v36];
      v13[(v37 + v12) & v11] = v25[v36 + 1];
      v37 = (v37 + 2 * v12) & v11;
      v36 += 2;
    }

    while (v36 < v6);
  }

  else
  {
    v15 = 0;
    if (v9 <= 2)
    {
      v16 = 2;
    }

    else
    {
      v16 = v9;
    }

    v17 = v16 - 1;
    v18 = a5 + 1;
    v19 = v6 - 1;
    do
    {
      v20 = a2[v15];
      v21 = *(v18 - 1);
      if (v20 == 0xFFFF)
      {
        *v18 = v21 + 1;
        v13[v19--] = v15;
      }

      else
      {
        *v18 = v21 + v20;
      }

      ++v18;
      ++v15;
      --v17;
    }

    while (v17);
    a5[v14] = v6 + 1;
    if (v19 == v11)
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = &v13[v6];
      v26 = &a5[v9] + v6;
      while (1)
      {
        v27 = a2[v22];
        *&v25[v23] = v24;
        if (v27 >= 9)
        {
          if (v27 <= 0x10)
          {
            v28 = 16;
          }

          else
          {
            v28 = v27;
          }

          v29 = v28 - 9;
          if (v29 >= 0x18)
          {
            v31 = (v29 >> 3) + 1;
            v32 = vdupq_n_s64(v24);
            v33 = &v26[v23 + 24];
            v34 = v31 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              v33[-1] = v32;
              *v33 = v32;
              v33 += 2;
              v34 -= 4;
            }

            while (v34);
            if (v31 == (v31 & 0x3FFFFFFFFFFFFFFCLL))
            {
              goto LABEL_17;
            }

            v30 = (8 * (v31 & 0x3FFFFFFFFFFFFFFCLL)) | 8;
          }

          else
          {
            v30 = 8;
          }

          v35 = &v26[v23 + v30];
          do
          {
            *v35++ = v24;
            v30 += 8;
          }

          while (v30 < v27);
        }

LABEL_17:
        v23 += v27;
        ++v22;
        v24 += 0x101010101010101;
        if (v22 == v14)
        {
          goto LABEL_32;
        }
      }
    }

    v49 = 0;
    v50 = 0;
    do
    {
      v51 = a2[v49];
      if (v51 >= 1)
      {
        for (i = 0; i != v51; ++i)
        {
          v13[v50] = v49;
          do
          {
            v50 = (v50 + v12) & v11;
          }

          while (v50 > v19);
        }
      }

      ++v49;
    }

    while (v49 != v14);
  }

  v38 = 1 << a4;
  v39 = (1 << a4);
  do
  {
    v40 = *v13++;
    v41 = a5[v40];
    a5[v40] = v41 + 1;
    a1[v41 + 2] = v38++;
    --v39;
  }

  while (v39);
  v42 = 0;
  v43 = (a4 << 16) - v6;
  if (v14 <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = v14;
  }

  v44 = &a1[2 * v8 + 4];
  do
  {
    v46 = *a2++;
    v45 = v46;
    if (v46 == 0xFFFF || v45 == 1)
    {
      *(v44 - 1) = v42 - 1;
      *v44 = v43;
      ++v42;
    }

    else if (v45)
    {
      v48 = __clz(v45 - 1);
      *(v44 - 1) = v42 - v45;
      *v44 = ((a4 - 31 + v48) << 16) - (v45 << (a4 - 31 + v48));
      v42 += v45;
    }

    else
    {
      *v44 = v43 + 0x10000;
    }

    v44 += 2;
    --v14;
  }

  while (v14);
  return 0;
}

uint64_t FSE_writeNCount(_WORD *a1, unint64_t a2, uint64_t a3, int a4, int a5)
{
  v5 = (a4 + 1);
  if (a4 == -1)
  {
    return -1;
  }

  v7 = 0;
  v8 = 0;
  LODWORD(v9) = ((v5 * a5 + 6) >> 3) + 3;
  if (a4)
  {
    v9 = v9;
  }

  else
  {
    v9 = 512;
  }

  v10 = a5 - 5;
  v11 = 1 << a5;
  v12 = (1 << a5) + 1;
  v13 = (a5 + 1);
  v14 = a1 + a2 - 2;
  v15 = 4;
  v16 = a1;
  while (1)
  {
    if (!v7)
    {
      LODWORD(v17) = v8;
      goto LABEL_30;
    }

    LODWORD(v17) = v8;
    if (v8 < v5)
    {
      v17 = v8;
      while (!*(a3 + 2 * v17))
      {
        if (v5 == ++v17)
        {
          goto LABEL_45;
        }
      }
    }

    if (v17 == v5)
    {
      break;
    }

    if (v17 >= v8 + 24)
    {
      v20 = 0xFFFF << v15;
      if (v9 > a2)
      {
        while (v16 <= v14)
        {
          v21 = v10 + v20;
          *v16++ = v21;
          v10 = HIWORD(v21);
          v18 = v8 + 24;
          v22 = v8 + 48;
          v8 += 24;
          if (v17 < v22)
          {
            goto LABEL_22;
          }
        }

        return -70;
      }

      do
      {
        v23 = v10 + v20;
        *v16++ = v23;
        v10 = HIWORD(v23);
        v18 = v8 + 24;
        v24 = v8 + 48;
        v8 += 24;
      }

      while (v17 >= v24);
LABEL_22:
      v19 = v18 + 3;
    }

    else
    {
      v18 = v8;
      v19 = v8 + 3;
    }

    while (v17 >= v19)
    {
      v10 += 3 << v15;
      v15 += 2;
      v19 = v18 + 6;
      v18 += 3;
    }

    v10 += (v17 - v18) << v15;
    if (v15 < 15)
    {
      v15 += 2;
    }

    else
    {
      if (v9 > a2 && v16 > v14)
      {
        return -70;
      }

      *v16++ = v10;
      v10 >>= 16;
      v15 -= 14;
    }

LABEL_30:
    v25 = *(a3 + 2 * v17);
    v26 = ~v12 + 2 * v11;
    if (v25 >= 0)
    {
      v27 = *(a3 + 2 * v17);
    }

    else
    {
      v27 = -v25;
    }

    v12 -= v27;
    v28 = v25 + 1;
    if (v28 >= v11)
    {
      v29 = v26;
    }

    else
    {
      v29 = 0;
    }

    v30 = v29 + v28;
    v31 = v29 + v28 < v26;
    v7 = v30 == 1;
    if (v12 < 1)
    {
      return -1;
    }

    for (i = v13; v12 < v11; v11 >>= 1)
    {
      i = (i - 1);
    }

    v10 += v30 << v15;
    v15 = v15 + v13 - v31;
    if (v15 >= 17)
    {
      if (v9 > a2 && v16 > v14)
      {
        return -70;
      }

      *v16++ = v10;
      v10 >>= 16;
      v15 -= 16;
    }

    v8 = v17 + 1;
    if (v17 + 1 < v5)
    {
      v13 = i;
      if (v12 != 1)
      {
        continue;
      }
    }

    break;
  }

LABEL_45:
  v34 = v15 + 7;
  v33 = v15 < -7;
  v35 = v15 + 14;
  if (v33)
  {
    v34 = v35;
  }

  if (v12 != 1)
  {
    return -1;
  }

  if (v9 > a2 && v16 > v14)
  {
    return -70;
  }

  *v16 = v10;
  return v16 + (v34 >> 3) - a1;
}

uint64_t FSE_normalizeCount(__int16 *a1, unsigned int a2, unsigned int *a3, unint64_t a4, unsigned int a5, int a6)
{
  if (a2 > 0xC)
  {
    return -44;
  }

  v7 = 32 - __clz(a4);
  v8 = 33 - __clz(a5);
  if (v7 >= v8)
  {
    v7 = v8;
  }

  if (v7 > a2)
  {
    return -1;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  if (a6)
  {
    v13 = -1;
  }

  else
  {
    v13 = 1;
  }

  v14 = 62 - a2;
  v15 = 1 << a2;
  v16 = a4 >> a2;
  result = a2;
  v17 = 0x4000000000000000uLL / a4;
  LODWORD(v18) = 1 << a2;
  do
  {
    v19 = a3[v12];
    if (v19 == a4)
    {
      return 0;
    }

    if (v19)
    {
      if (v19 <= v16)
      {
        a1[v12] = v13;
        LODWORD(v18) = v18 - 1;
      }

      else
      {
        v20 = v17 * v19;
        v21 = (v17 * v19) >> v14;
        if ((v21 & 0xFFF8) == 0 && v20 - (v21 << v14) > FSE_normalizeCount_rtbTable[v21] << (42 - a2))
        {
          LOWORD(v21) = v21 + 1;
        }

        if (v21 > v10)
        {
          v11 = v12;
          v10 = v21;
        }

        a1[v12] = v21;
        LODWORD(v18) = v18 - v21;
      }
    }

    else
    {
      a1[v12] = 0;
    }

    ++v12;
  }

  while (v12 <= a5);
  v22 = &a1[v11];
  v23 = *v22;
  if (-v18 < *v22 >> 1)
  {
LABEL_49:
    *v22 = v23 + v18;
    return result;
  }

  v24 = 0;
  v25 = (3 * a4) >> (a2 + 1);
  v26 = a5 + 1;
  v27 = a3;
  v28 = a1;
  v29 = v26;
  do
  {
    v31 = *v27++;
    v30 = v31;
    if (!v31)
    {
      *v28 = 0;
      goto LABEL_27;
    }

    if (v30 <= v16)
    {
      *v28 = v13;
    }

    else
    {
      if (v30 > v25)
      {
        *v28 = -2;
        goto LABEL_27;
      }

      *v28 = 1;
    }

    ++v24;
    a4 -= v30;
LABEL_27:
    ++v28;
    --v29;
  }

  while (v29);
  v18 = (v15 - v24);
  if (v15 != v24)
  {
    if (a4 / v18 > v25)
    {
      v32 = a1;
      v33 = a3;
      v34 = a5 + 1;
      v35 = 3 * a4 / (2 * v18);
      do
      {
        if (*v32 == -2)
        {
          v36 = *v33;
          if (v36 <= v35)
          {
            *v32 = 1;
            ++v24;
            a4 -= v36;
          }
        }

        ++v33;
        ++v32;
        --v34;
      }

      while (v34);
      LODWORD(v18) = v15 - v24;
    }

    if (v24 == v26)
    {
      v37 = 0;
      v38 = 0;
      v39 = 0;
      do
      {
        if (a3[v37] > v38)
        {
          v39 = v37;
          v38 = a3[v37];
        }

        ++v37;
      }

      while (v26 != v37);
      v22 = &a1[v39];
      v23 = *v22;
      goto LABEL_49;
    }

    if (a4)
    {
      v40 = 0;
      v41 = ~(-1 << (v14 - 1));
      v42 = ((v18 << v14) + v41) / a4;
      while (1)
      {
        v43 = v40;
        if (a1[v40] == -2)
        {
          v44 = v41 + v42 * a3[v40];
          v45 = v41 >> v14;
          if (v44 >> v14 == v45)
          {
            return -1;
          }

          a1[v43] = (v44 >> v14) - v45;
          v41 = v44;
        }

        v40 = v43 + 1;
        if (v43 + 1 > a5)
        {
          return result;
        }
      }
    }

    if (v18)
    {
      v46 = 0;
      do
      {
        v47 = v46;
        v48 = a1[v46];
        if (v48 >= 1)
        {
          LODWORD(v18) = v18 - 1;
          a1[v47] = v48 + 1;
        }

        if (v47 == a5)
        {
          v46 = 0;
        }

        else
        {
          v46 = v47 + 1;
        }
      }

      while (v18);
    }
  }

  return result;
}

uint64_t FSE_compress_usingCTable(unint64_t *a1, unint64_t a2, unint64_t a3, unint64_t a4, unsigned __int16 *a5)
{
  if (a4 < 3 || a2 < 9)
  {
    return 0;
  }

  v5 = a4 + (a4 >> 7) + 12;
  v6 = a3 + a4;
  v7 = a1 + a2 - 8;
  v10 = *a5;
  v8 = a5 + 2;
  v9 = v10;
  v11 = 1 << (v10 - 1);
  if (!v10)
  {
    v11 = 1;
  }

  v12 = &v8[2 * v11];
  v13 = &v12[4 * *(a3 + a4 - 1)];
  v14 = v8[((((*(v13 + 1) + 0x8000) & 0xFFFF0000) - *(v13 + 1)) >> ((*(v13 + 1) + 0x8000) >> 16)) + *v13];
  if (a4)
  {
    v23 = *(v6 - 3);
    v17 = (v6 - 3);
    v24 = &v12[4 * v17[1]];
    LODWORD(v22) = v8[((((*(v24 + 1) + 0x8000) & 0xFFFF0000) - *(v24 + 1)) >> ((*(v24 + 1) + 0x8000) >> 16)) + *v24];
    v25 = &v12[4 * v23];
    v26 = *v25;
    v27 = *(v25 + 1) + v14;
    v28 = v27 >> 16;
    v29 = BIT_mask_36272[v27 >> 16] & v14;
    v20 = v8[(v14 >> SBYTE2(v27)) + v26];
    v30 = v27 >> 19;
    *a1 = v29;
    v21 = (a1 + (v27 >> 19));
    if (v5 > a2 && v21 > v7)
    {
      v21 = (a1 + a2 - 8);
    }

    v15 = v28 & 7;
    v16 = v29 >> (8 * v30);
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v18 = *(v6 - 2);
    v17 = (v6 - 2);
    v19 = &v12[4 * v18];
    v20 = v8[((((*(v19 + 1) + 0x8000) & 0xFFFF0000) - *(v19 + 1)) >> ((*(v19 + 1) + 0x8000) >> 16)) + *v19];
    v21 = a1;
    LODWORD(v22) = v8[((((*(v13 + 1) + 0x8000) & 0xFFFF0000) - *(v13 + 1)) >> ((*(v13 + 1) + 0x8000) >> 16)) + *v13];
  }

  v22 = v22;
  v31 = v20;
  if ((a4 & 2) != 0)
  {
    v43 = v15;
    if (v17 <= a3)
    {
LABEL_26:
      v61 = v21;
      goto LABEL_27;
    }
  }

  else
  {
    v32 = *(v17 - 2);
    v17 -= 2;
    v33 = &v12[4 * v17[1]];
    v34 = *v33;
    v35 = (*(v33 + 1) + v22) >> 16;
    v36 = (BIT_mask_36272[v35] & v22) << v15;
    v37 = v15 + v35;
    v22 = v8[(v22 >> v35) + v34];
    v38 = &v12[4 * v32];
    LODWORD(v35) = *v38;
    v39 = (*(v38 + 1) + v31) >> 16;
    v40 = v36 | ((BIT_mask_36272[v39] & v31) << v37) | v16;
    v41 = v37 + ((*(v38 + 1) + v31) >> 16);
    v31 = v8[(v31 >> v39) + v35];
    v42 = (v37 + v39) >> 3;
    *v21 = v40;
    v21 = (v21 + v42);
    if (v5 > a2 && v21 > v7)
    {
      v21 = (a1 + a2 - 8);
    }

    v43 = v41 & 7;
    v16 = v40 >> (8 * v42);
    if (v17 <= a3)
    {
      goto LABEL_26;
    }
  }

  do
  {
    v44 = *(v17 - 4);
    v17 -= 4;
    v45 = &v12[4 * v17[3]];
    v46 = (v22 + *(v45 + 1)) >> 16;
    v47 = v43 + ((v22 + *(v45 + 1)) >> 16);
    v48 = v8[(v22 >> ((v22 + *(v45 + 1)) >> 16)) + *v45];
    v49 = &v12[4 * v17[2]];
    v50 = (v31 + *(v49 + 1)) >> 16;
    v51 = v43 + v46 + v50;
    v52 = v8[(v31 >> ((v31 + *(v49 + 1)) >> 16)) + *v49];
    v53 = (*&v12[4 * v17[1] + 2] + v48) >> 16;
    v54 = *&v12[4 * v44];
    v55 = (*&v12[4 * v44 + 2] + v52) >> 16;
    v56 = v51 + v53 + v55;
    v57 = v56 >> 3;
    v58 = v21 + v57 > v7 && v5 > a2;
    v59 = (v22 & BIT_mask_36272[v46]) << v43;
    v22 = v8[(v48 >> ((*&v12[4 * v17[1] + 2] + v48) >> 16)) + *&v12[4 * v17[1]]];
    v60 = v59 | v16 | ((v31 & BIT_mask_36272[v50]) << v47) | ((BIT_mask_36272[v53] & v48) << v51) | ((BIT_mask_36272[v55] & v52) << (v51 + ((*&v12[4 * v17[1] + 2] + v48) >> 16)));
    v31 = v8[(v52 >> v55) + v54];
    if (v58)
    {
      v61 = (a1 + a2 - 8);
    }

    else
    {
      v61 = (v21 + v57);
    }

    *v21 = v60;
    v16 = v60 >> (8 * v57);
    v43 = v56 & 7;
    v21 = v61;
  }

  while (v17 > a3);
LABEL_27:
  v62 = BIT_mask_36272[v9];
  v63 = ((v22 & v62) << v43) | v16;
  v64 = (v43 + v9) >> 3;
  *v61 = v63;
  v65 = (v61 + v64);
  if (v61 + v64 > v7)
  {
    v65 = (a1 + a2 - 8);
  }

  v66 = (v43 + v9) & 7;
  v67 = ((v31 & v62) << v66) | (v63 >> (8 * v64));
  v68 = v66 + v9;
  v69 = v68 >> 3;
  *v65 = v67;
  v70 = (v65 + v69);
  if (v65 + v69 > v7)
  {
    v70 = (a1 + a2 - 8);
  }

  v71 = v68 & 7;
  v72 = (v67 >> (8 * v69)) | (1 << v71);
  v73 = v71 + 1;
  *v70 = v72;
  v74 = v70 + (v73 >> 3);
  if (v74 > v7)
  {
    v74 = a1 + a2 - 8;
  }

  if (v74 >= v7)
  {
    return 0;
  }

  if ((v73 & 7) != 0)
  {
    return v74 - a1 + 1;
  }

  else
  {
    return v74 - a1;
  }
}

uint64_t ZSTD_fillHashTable(uint64_t result, uint64_t a2, int a3, int a4)
{
  v4 = *(result + 112);
  v5 = *(result + 272);
  v6 = *(result + 8);
  v7 = *(result + 44);
  v8 = (v6 + v7);
  v9 = a2 - 6;
  v10 = v6 + v7 + 3;
  if (a4 != 1)
  {
    if (v10 >= v9)
    {
      return result;
    }

    v18 = *(result + 264);
    v19 = 64 - v18;
    v20 = 32 - v18;
    if (!a3)
    {
      if (v5 > 6)
      {
        if (v5 == 7)
        {
          v96 = v6 + v7 + 6;
          if (v96 <= v9)
          {
            v96 = a2 - 6;
          }

          v97 = v96 - v6 - 6;
          if (v97 == v7)
          {
            v98 = *(result + 44);
          }

          else
          {
            v98 = v7 + 1;
          }

          v99 = (v97 - v98) / 3uLL;
          if (v97 != v7)
          {
            ++v99;
          }

          if (v99)
          {
            v100 = v99 + 1;
            result = v100 & 0x7FFFFFFFFFFFFFFELL;
            v101 = 3 * (v100 & 0x7FFFFFFFFFFFFFFELL);
            v10 += v101;
            v102 = (v6 + v7);
            v103 = v100 & 0x7FFFFFFFFFFFFFFELL;
            do
            {
              v104 = 0xCF1BBCDCBFA56300 * *(v102 + 3);
              *(v4 + 4 * ((0xCF1BBCDCBFA56300 * *v102) >> v19)) = v7;
              *(v4 + 4 * (v104 >> v19)) = v7 + 3;
              v102 = (v102 + 6);
              LODWORD(v7) = v7 + 6;
              v103 -= 2;
            }

            while (v103);
            if (v100 == result)
            {
              return result;
            }

            v8 = (v8 + v101);
          }

          do
          {
            *(v4 + 4 * ((0xCF1BBCDCBFA56300 * *v8) >> v19)) = v8 - v6;
            v8 = v10;
            v10 += 3;
          }

          while (v10 < v9);
          return result;
        }

        if (v5 == 8)
        {
          v57 = v6 + v7 + 6;
          if (v57 <= v9)
          {
            v57 = a2 - 6;
          }

          v58 = v57 - v6 - 6;
          if (v58 == v7)
          {
            v59 = *(result + 44);
          }

          else
          {
            v59 = v7 + 1;
          }

          v60 = (v58 - v59) / 3uLL;
          if (v58 != v7)
          {
            ++v60;
          }

          if (v60)
          {
            v61 = v60 + 1;
            result = v61 & 0x7FFFFFFFFFFFFFFELL;
            v62 = 3 * (v61 & 0x7FFFFFFFFFFFFFFELL);
            v10 += v62;
            v63 = (v6 + v7);
            v64 = v61 & 0x7FFFFFFFFFFFFFFELL;
            do
            {
              v65 = 0xCF1BBCDCB7A56463 * *(v63 + 3);
              *(v4 + 4 * ((0xCF1BBCDCB7A56463 * *v63) >> v19)) = v7;
              *(v4 + 4 * (v65 >> v19)) = v7 + 3;
              v63 = (v63 + 6);
              LODWORD(v7) = v7 + 6;
              v64 -= 2;
            }

            while (v64);
            if (v61 == result)
            {
              return result;
            }

            v8 = (v8 + v62);
          }

          do
          {
            *(v4 + 4 * ((0xCF1BBCDCB7A56463 * *v8) >> v19)) = v8 - v6;
            v8 = v10;
            v10 += 3;
          }

          while (v10 < v9);
          return result;
        }
      }

      else
      {
        if (v5 == 5)
        {
          v77 = v6 + v7 + 6;
          if (v77 <= v9)
          {
            v77 = a2 - 6;
          }

          v78 = v77 - v6 - 6;
          if (v78 == v7)
          {
            v79 = *(result + 44);
          }

          else
          {
            v79 = v7 + 1;
          }

          v80 = (v78 - v79) / 3uLL;
          if (v78 != v7)
          {
            ++v80;
          }

          if (v80)
          {
            v81 = v80 + 1;
            result = v81 & 0x7FFFFFFFFFFFFFFELL;
            v82 = 3 * (v81 & 0x7FFFFFFFFFFFFFFELL);
            v10 += v82;
            v83 = (v6 + v7);
            v84 = v81 & 0x7FFFFFFFFFFFFFFELL;
            do
            {
              v85 = 0xCF1BBCDCBB000000 * *(v83 + 3);
              *(v4 + 4 * ((0xCF1BBCDCBB000000 * *v83) >> v19)) = v7;
              *(v4 + 4 * (v85 >> v19)) = v7 + 3;
              v83 = (v83 + 6);
              LODWORD(v7) = v7 + 6;
              v84 -= 2;
            }

            while (v84);
            if (v81 == result)
            {
              return result;
            }

            v8 = (v8 + v82);
          }

          do
          {
            *(v4 + 4 * ((0xCF1BBCDCBB000000 * *v8) >> v19)) = v8 - v6;
            v8 = v10;
            v10 += 3;
          }

          while (v10 < v9);
          return result;
        }

        if (v5 == 6)
        {
          v38 = v6 + v7 + 6;
          if (v38 <= v9)
          {
            v38 = a2 - 6;
          }

          v39 = v38 - v6 - 6;
          if (v39 == v7)
          {
            v40 = *(result + 44);
          }

          else
          {
            v40 = v7 + 1;
          }

          v41 = (v39 - v40) / 3uLL;
          if (v39 != v7)
          {
            ++v41;
          }

          if (v41)
          {
            v42 = v41 + 1;
            result = v42 & 0x7FFFFFFFFFFFFFFELL;
            v43 = 3 * (v42 & 0x7FFFFFFFFFFFFFFELL);
            v10 += v43;
            v44 = (v6 + v7);
            v45 = v42 & 0x7FFFFFFFFFFFFFFELL;
            do
            {
              v46 = 0xCF1BBCDCBF9B0000 * *(v44 + 3);
              *(v4 + 4 * ((0xCF1BBCDCBF9B0000 * *v44) >> v19)) = v7;
              *(v4 + 4 * (v46 >> v19)) = v7 + 3;
              v44 = (v44 + 6);
              LODWORD(v7) = v7 + 6;
              v45 -= 2;
            }

            while (v45);
            if (v42 == result)
            {
              return result;
            }

            v8 = (v8 + v43);
          }

          do
          {
            *(v4 + 4 * ((0xCF1BBCDCBF9B0000 * *v8) >> v19)) = v8 - v6;
            v8 = v10;
            v10 += 3;
          }

          while (v10 < v9);
          return result;
        }
      }

      do
      {
        *(v4 + 4 * ((-1640531535 * *(v10 - 3)) >> v20)) = v7;
        v10 += 3;
        LODWORD(v7) = v7 + 3;
      }

      while (v10 < v9);
      return result;
    }

    result = 0xCF1BBCDCB7A56463;
    while (1)
    {
      if (v5 > 6)
      {
        if (v5 == 7)
        {
          *(v4 + 4 * ((0xCF1BBCDCBFA56300 * *(v10 - 3)) >> v19)) = v7;
          v27 = (0xCF1BBCDCBFA56300 * *(v10 - 2)) >> v19;
          if (!*(v4 + 4 * v27))
          {
            *(v4 + 4 * v27) = v7 + 1;
          }

          v22 = 0xCF1BBCDCBFA56300 * *(v10 - 1);
LABEL_57:
          v25 = (v4 + 4 * (v22 >> v19));
          if (*v25)
          {
            goto LABEL_35;
          }

          goto LABEL_34;
        }

        if (v5 == 8)
        {
          *(v4 + 4 * ((0xCF1BBCDCB7A56463 * *(v10 - 3)) >> v19)) = v7;
          v23 = (0xCF1BBCDCB7A56463 * *(v10 - 2)) >> v19;
          if (!*(v4 + 4 * v23))
          {
            *(v4 + 4 * v23) = v7 + 1;
          }

          v22 = 0xCF1BBCDCB7A56463 * *(v10 - 1);
          goto LABEL_57;
        }
      }

      else
      {
        if (v5 == 5)
        {
          *(v4 + 4 * ((0xCF1BBCDCBB000000 * *(v10 - 3)) >> v19)) = v7;
          v26 = (0xCF1BBCDCBB000000 * *(v10 - 2)) >> v19;
          if (!*(v4 + 4 * v26))
          {
            *(v4 + 4 * v26) = v7 + 1;
          }

          v22 = 0xCF1BBCDCBB000000 * *(v10 - 1);
          goto LABEL_57;
        }

        if (v5 == 6)
        {
          *(v4 + 4 * ((0xCF1BBCDCBF9B0000 * *(v10 - 3)) >> v19)) = v7;
          v21 = (0xCF1BBCDCBF9B0000 * *(v10 - 2)) >> v19;
          if (!*(v4 + 4 * v21))
          {
            *(v4 + 4 * v21) = v7 + 1;
          }

          v22 = 0xCF1BBCDCBF9B0000 * *(v10 - 1);
          goto LABEL_57;
        }
      }

      *(v4 + 4 * ((-1640531535 * *(v10 - 3)) >> v20)) = v7;
      v24 = (-1640531535 * *(v10 - 2)) >> v20;
      if (!*(v4 + 4 * v24))
      {
        *(v4 + 4 * v24) = v7 + 1;
      }

      v25 = (v4 + 4 * ((-1640531535 * *(v10 - 1)) >> v20));
      if (*v25)
      {
        goto LABEL_35;
      }

LABEL_34:
      *v25 = v7 + 2;
LABEL_35:
      v10 += 3;
      LODWORD(v7) = v7 + 3;
      if (v10 >= v9)
      {
        return result;
      }
    }
  }

  if (v10 >= v9)
  {
    return result;
  }

  v11 = *(result + 264);
  v12 = 56 - v11;
  v13 = 24 - v11;
  if (a3)
  {
    result = 0xCF1BBCDCB7A56463;
    for (i = (v7 << 8) + 512; ; i += 768)
    {
      if (v5 > 6)
      {
        if (v5 == 7)
        {
          *(v4 + (((0xCF1BBCDCBFA56300 * *(v10 - 3)) >> v12 >> 6) & 0x3FFFFFFFFFFFFFCLL)) = i + ((0xCF1BBCDCBFA56300 * *(v10 - 3)) >> v12) - 512;
          v16 = 0xCF1BBCDCBFA56300 * *(v10 - 2);
        }

        else
        {
          if (v5 != 8)
          {
LABEL_16:
            *(v4 + 4 * ((-1640531535 * *(v10 - 3)) >> v13 >> 8)) = i + ((-1640531535 * *(v10 - 3)) >> v13) - 512;
            v17 = (-1640531535 * *(v10 - 2)) >> v13;
            goto LABEL_20;
          }

          *(v4 + (((0xCF1BBCDCB7A56463 * *(v10 - 3)) >> v12 >> 6) & 0x3FFFFFFFFFFFFFCLL)) = i + ((0xCF1BBCDCB7A56463 * *(v10 - 3)) >> v12) - 512;
          v16 = 0xCF1BBCDCB7A56463 * *(v10 - 2);
        }
      }

      else if (v5 == 5)
      {
        *(v4 + (((0xCF1BBCDCBB000000 * *(v10 - 3)) >> v12 >> 6) & 0x3FFFFFFFFFFFFFCLL)) = i + ((0xCF1BBCDCBB000000 * *(v10 - 3)) >> v12) - 512;
        v16 = 0xCF1BBCDCBB000000 * *(v10 - 2);
      }

      else
      {
        if (v5 != 6)
        {
          goto LABEL_16;
        }

        *(v4 + (((0xCF1BBCDCBF9B0000 * *(v10 - 3)) >> v12 >> 6) & 0x3FFFFFFFFFFFFFCLL)) = i + ((0xCF1BBCDCBF9B0000 * *(v10 - 3)) >> v12) - 512;
        v16 = 0xCF1BBCDCBF9B0000 * *(v10 - 2);
      }

      v17 = v16 >> v12;
LABEL_20:
      if (*(v4 + 4 * (v17 >> 8)))
      {
        if (v5 > 6)
        {
          goto LABEL_26;
        }
      }

      else
      {
        *(v4 + 4 * (v17 >> 8)) = i + v17 - 256;
        if (v5 > 6)
        {
LABEL_26:
          if (v5 == 8)
          {
            v15 = (0xCF1BBCDCB7A56463 * *(v10 - 1)) >> v12;
            goto LABEL_6;
          }

          if (v5 == 7)
          {
            v15 = (0xCF1BBCDCBFA56300 * *(v10 - 1)) >> v12;
            goto LABEL_6;
          }

          goto LABEL_5;
        }
      }

      if (v5 == 5)
      {
        v15 = (0xCF1BBCDCBB000000 * *(v10 - 1)) >> v12;
        goto LABEL_6;
      }

      if (v5 == 6)
      {
        v15 = (0xCF1BBCDCBF9B0000 * *(v10 - 1)) >> v12;
        goto LABEL_6;
      }

LABEL_5:
      v15 = (-1640531535 * *(v10 - 1)) >> v13;
LABEL_6:
      if (!*(v4 + 4 * (v15 >> 8)))
      {
        *(v4 + 4 * (v15 >> 8)) = i + v15;
      }

      v10 += 3;
      if (v10 >= v9)
      {
        return result;
      }
    }
  }

  if (v5 > 6)
  {
    if (v5 == 7)
    {
      v86 = v6 + v7 + 6;
      if (v86 <= v9)
      {
        v86 = a2 - 6;
      }

      v87 = v86 - v6 - 6;
      if (v87 == v7)
      {
        v88 = *(result + 44);
      }

      else
      {
        v88 = v7 + 1;
      }

      v89 = (v87 - v88) / 3uLL;
      if (v87 != v7)
      {
        ++v89;
      }

      if (v89)
      {
        v90 = v89 + 1;
        result = v90 & 0x7FFFFFFFFFFFFFFELL;
        v91 = 3 * (v90 & 0x7FFFFFFFFFFFFFFELL);
        v10 += v91;
        v92 = v7 << 8;
        v93 = v8;
        v94 = v90 & 0x7FFFFFFFFFFFFFFELL;
        do
        {
          v95 = (0xCF1BBCDCBFA56300 * *(v93 + 3)) >> v12;
          *(v4 + (((0xCF1BBCDCBFA56300 * *v93) >> v12 >> 6) & 0x3FFFFFFFFFFFFFCLL)) = v92 + ((0xCF1BBCDCBFA56300 * *v93) >> v12);
          *(v4 + ((v95 >> 6) & 0x3FFFFFFFFFFFFFCLL)) = v92 + v95 + 768;
          v93 = (v93 + 6);
          v92 += 1536;
          v94 -= 2;
        }

        while (v94);
        if (v90 == result)
        {
          return result;
        }

        v8 = (v8 + v91);
      }

      do
      {
        *(v4 + (((0xCF1BBCDCBFA56300 * *v8) >> v12 >> 6) & 0x3FFFFFFFFFFFFFCLL)) = ((0xCF1BBCDCBFA56300 * *v8) >> v12) | ((v8 - v6) << 8);
        v8 = v10;
        v10 += 3;
      }

      while (v10 < v9);
      return result;
    }

    if (v5 == 8)
    {
      v47 = v6 + v7 + 6;
      if (v47 <= v9)
      {
        v47 = a2 - 6;
      }

      v48 = v47 - v6 - 6;
      if (v48 == v7)
      {
        v49 = *(result + 44);
      }

      else
      {
        v49 = v7 + 1;
      }

      v50 = (v48 - v49) / 3uLL;
      if (v48 != v7)
      {
        ++v50;
      }

      if (v50)
      {
        v51 = v50 + 1;
        result = v51 & 0x7FFFFFFFFFFFFFFELL;
        v52 = 3 * (v51 & 0x7FFFFFFFFFFFFFFELL);
        v10 += v52;
        v53 = v7 << 8;
        v54 = v8;
        v55 = v51 & 0x7FFFFFFFFFFFFFFELL;
        do
        {
          v56 = (0xCF1BBCDCB7A56463 * *(v54 + 3)) >> v12;
          *(v4 + (((0xCF1BBCDCB7A56463 * *v54) >> v12 >> 6) & 0x3FFFFFFFFFFFFFCLL)) = v53 + ((0xCF1BBCDCB7A56463 * *v54) >> v12);
          *(v4 + ((v56 >> 6) & 0x3FFFFFFFFFFFFFCLL)) = v53 + v56 + 768;
          v54 = (v54 + 6);
          v53 += 1536;
          v55 -= 2;
        }

        while (v55);
        if (v51 == result)
        {
          return result;
        }

        v8 = (v8 + v52);
      }

      do
      {
        *(v4 + (((0xCF1BBCDCB7A56463 * *v8) >> v12 >> 6) & 0x3FFFFFFFFFFFFFCLL)) = ((0xCF1BBCDCB7A56463 * *v8) >> v12) | ((v8 - v6) << 8);
        v8 = v10;
        v10 += 3;
      }

      while (v10 < v9);
      return result;
    }

LABEL_125:
    v66 = v7 << 8;
    do
    {
      *(v4 + 4 * ((-1640531535 * *(v10 - 3)) >> v13 >> 8)) = v66 + ((-1640531535 * *(v10 - 3)) >> v13);
      v10 += 3;
      v66 += 768;
    }

    while (v10 < v9);
    return result;
  }

  if (v5 == 5)
  {
    v67 = v6 + v7 + 6;
    if (v67 <= v9)
    {
      v67 = a2 - 6;
    }

    v68 = v67 - v6 - 6;
    if (v68 == v7)
    {
      v69 = *(result + 44);
    }

    else
    {
      v69 = v7 + 1;
    }

    v70 = (v68 - v69) / 3uLL;
    if (v68 != v7)
    {
      ++v70;
    }

    if (v70)
    {
      v71 = v70 + 1;
      result = v71 & 0x7FFFFFFFFFFFFFFELL;
      v72 = 3 * (v71 & 0x7FFFFFFFFFFFFFFELL);
      v10 += v72;
      v73 = v7 << 8;
      v74 = v8;
      v75 = v71 & 0x7FFFFFFFFFFFFFFELL;
      do
      {
        v76 = (0xCF1BBCDCBB000000 * *(v74 + 3)) >> v12;
        *(v4 + (((0xCF1BBCDCBB000000 * *v74) >> v12 >> 6) & 0x3FFFFFFFFFFFFFCLL)) = v73 + ((0xCF1BBCDCBB000000 * *v74) >> v12);
        *(v4 + ((v76 >> 6) & 0x3FFFFFFFFFFFFFCLL)) = v73 + v76 + 768;
        v74 = (v74 + 6);
        v73 += 1536;
        v75 -= 2;
      }

      while (v75);
      if (v71 == result)
      {
        return result;
      }

      v8 = (v8 + v72);
    }

    do
    {
      *(v4 + (((0xCF1BBCDCBB000000 * *v8) >> v12 >> 6) & 0x3FFFFFFFFFFFFFCLL)) = ((0xCF1BBCDCBB000000 * *v8) >> v12) | ((v8 - v6) << 8);
      v8 = v10;
      v10 += 3;
    }

    while (v10 < v9);
    return result;
  }

  if (v5 != 6)
  {
    goto LABEL_125;
  }

  v28 = v6 + v7 + 6;
  if (v28 <= v9)
  {
    v28 = a2 - 6;
  }

  v29 = v28 - v6 - 6;
  if (v29 == v7)
  {
    v30 = *(result + 44);
  }

  else
  {
    v30 = v7 + 1;
  }

  v31 = (v29 - v30) / 3uLL;
  if (v29 != v7)
  {
    ++v31;
  }

  if (!v31)
  {
    goto LABEL_74;
  }

  v32 = v31 + 1;
  result = v32 & 0x7FFFFFFFFFFFFFFELL;
  v33 = 3 * (v32 & 0x7FFFFFFFFFFFFFFELL);
  v10 += v33;
  v34 = v7 << 8;
  v35 = v8;
  v36 = v32 & 0x7FFFFFFFFFFFFFFELL;
  do
  {
    v37 = (0xCF1BBCDCBF9B0000 * *(v35 + 3)) >> v12;
    *(v4 + (((0xCF1BBCDCBF9B0000 * *v35) >> v12 >> 6) & 0x3FFFFFFFFFFFFFCLL)) = v34 + ((0xCF1BBCDCBF9B0000 * *v35) >> v12);
    *(v4 + ((v37 >> 6) & 0x3FFFFFFFFFFFFFCLL)) = v34 + v37 + 768;
    v35 = (v35 + 6);
    v34 += 1536;
    v36 -= 2;
  }

  while (v36);
  if (v32 != result)
  {
    v8 = (v8 + v33);
    do
    {
LABEL_74:
      *(v4 + (((0xCF1BBCDCBF9B0000 * *v8) >> v12 >> 6) & 0x3FFFFFFFFFFFFFCLL)) = ((0xCF1BBCDCBF9B0000 * *v8) >> v12) | ((v8 - v6) << 8);
      v8 = v10;
      v10 += 3;
    }

    while (v10 < v9);
  }

  return result;
}

uint64_t ZSTD_compressBlock_fast(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned __int8 *a4, uint64_t a5)
{
  v6 = *(a1 + 272);
  v7 = *(a1 + 276);
  v8 = *(a1 + 112);
  if (v7 >= 2)
  {
    v9 = v7 + 1;
    v10 = *(a1 + 8);
    v11 = &a4[a5];
    v12 = a4 + a5 - v10;
    v13 = *(a1 + 24);
    v14 = 1 << *(a1 + 256);
    v15 = v12 - v13 > v14;
    v16 = v12 - v14;
    v17 = *(a1 + 40) == 0;
    if (v17 && v15)
    {
      v18 = v16;
    }

    else
    {
      v18 = v13;
    }

    v19 = (v11 - 8);
    v20 = *a3;
    v21 = a3[1];
    if ((v10 + v18) == a4)
    {
      v22 = a4 + 1;
    }

    else
    {
      v22 = a4;
    }

    v23 = v22 - v10 - v13 > v14;
    v24 = v22 - v10 - v14;
    if (!v17 || !v23)
    {
      v24 = *(a1 + 24);
    }

    v25 = v22 - v10 - v24;
    if (v21 <= v25)
    {
      v26 = v21;
    }

    else
    {
      v26 = 0;
    }

    if (v20 <= v25)
    {
      v27 = v20;
    }

    else
    {
      v27 = 0;
    }

    v730 = v9;
    v28 = &v22[v9];
    v29 = (v28 + 1);
    if (v6 != 5)
    {
      if (v6 != 6)
      {
        if (v6 == 7)
        {
          if (v29 >= v19)
          {
            goto LABEL_1055;
          }

          v30 = 64 - *(a1 + 264);
          v31 = (v11 - 7);
          v32 = (v11 - 1);
          v33 = v11 - 32;
          v712 = v11 - 3;
          while (1)
          {
            v34 = v11;
            v35 = v22 + 1;
            v36 = *(v22 + 1);
            v37 = v22 + 128;
            v38 = v27;
            v39 = (0xCF1BBCDCBFA56300 * *v22) >> v30;
            v40 = *(v8 + 4 * v39);
            v41 = -v27;
            if (v27)
            {
              v42 = v730;
              while (1)
              {
                v50 = v28;
                v51 = *&v28[v41];
                v52 = (0xCF1BBCDCBFA56300 * v36) >> v30;
                v53 = v22 - v10;
                *(v8 + 4 * v39) = v22 - v10;
                if (*v50 == v51)
                {
                  break;
                }

                _X10 = v29;
                if (v40 >= v18 && *v22 == *(v10 + v40))
                {
                  v55 = v10 + v18;
                  goto LABEL_46;
                }

                v40 = *(v8 + 4 * v52);
                v39 = (0xCF1BBCDCBFA56300 * *v50) >> v30;
                v53 = v35 - v10;
                *(v8 + 4 * v52) = v35 - v10;
                if (v40 >= v18 && *v35 == *(v10 + v40))
                {
                  v55 = v10 + v18;
                  goto LABEL_48;
                }

                v40 = *(v8 + 4 * v39);
                v36 = *v29;
                v28 = &v50[v42];
                if (&v50[v42] >= v37)
                {
                  v43 = v42 + 1;
                  __asm
                  {
                    PRFM            #0, [X10,#0x40]
                    PRFM            #0, [X10,#0x80]
                  }

                  v37 += 128;
                }

                else
                {
                  v43 = v42;
                }

                v29 += v42;
                v42 = v43;
                v35 = _X10;
                v22 = v50;
                if (v29 >= v19)
                {
                  goto LABEL_1050;
                }
              }

              v60 = *(v50 - 1) == v50[v41 - 1];
              v61 = *(v50 - 1) == v50[v41 - 1] ? 5 : 4;
              v22 = &v50[-v60];
              v62 = &v50[v41 - v60];
              *(v8 + 4 * v52) = v35 - v10;
              v63 = 1;
              v27 = v38;
              v38 = v26;
              v64 = v712;
            }

            else
            {
              v42 = v730;
              v55 = v10 + v18;
              while (1)
              {
                v50 = v28;
                _X10 = v29;
                v52 = (0xCF1BBCDCBFA56300 * v36) >> v30;
                v53 = v22 - v10;
                *(v8 + 4 * v39) = v22 - v10;
                if (v40 >= v18 && *v22 == *(v10 + v40))
                {
LABEL_46:
                  v64 = v712;
                  goto LABEL_49;
                }

                v40 = *(v8 + 4 * v52);
                v39 = (0xCF1BBCDCBFA56300 * *v50) >> v30;
                v53 = v35 - v10;
                *(v8 + 4 * v52) = v35 - v10;
                if (v40 >= v18 && *v35 == *(v10 + v40))
                {
                  break;
                }

                v40 = *(v8 + 4 * v39);
                v36 = *v29;
                v28 = &v50[v42];
                if (&v50[v42] >= v37)
                {
                  v56 = v42 + 1;
                  __asm
                  {
                    PRFM            #0, [X10,#0x40]
                    PRFM            #0, [X10,#0x80]
                  }

                  v37 += 128;
                }

                else
                {
                  v56 = v42;
                }

                v29 += v42;
                v42 = v56;
                v35 = _X10;
                v22 = v50;
                if (v29 >= v19)
                {
                  goto LABEL_1052;
                }
              }

LABEL_48:
              v22 = v35;
              LODWORD(v35) = v50;
              v52 = v39;
              v64 = v712;
              if (v42 < 5)
              {
LABEL_49:
                *(v8 + 4 * v52) = v35 - v10;
              }

              v62 = (v10 + v40);
              v27 = (v22 - v62);
              v63 = v27 + 3;
              if (v40 <= v18 || v22 <= a4)
              {
                v61 = 4;
              }

              else
              {
                v65 = v22 - 1;
                v66 = (v10 - 1 + v40);
                v61 = 4;
                while (*v65 == *v66)
                {
                  ++v61;
                  v67 = v65 - 1;
                  v68 = v66 - 1;
                  if (v65 > a4)
                  {
                    --v65;
                    v706 = v66-- > v55;
                    if (v706)
                    {
                      continue;
                    }
                  }

                  v22 = v67 + 1;
                  v62 = v68 + 1;
                  goto LABEL_59;
                }

                v22 = v65 + 1;
                v62 = v66 + 1;
              }
            }

LABEL_59:
            v69 = &v22[v61];
            v70 = &v62[v61];
            if (v31 <= &v22[v61])
            {
              break;
            }

            if (*v70 == *v69)
            {
              v70 = &v62[v61 + 8];
              v71 = &v22[v61 + 8];
              do
              {
                v72 = v71;
                if (v71 >= v31)
                {
                  goto LABEL_66;
                }

                v74 = *v70;
                v70 += 8;
                v73 = v74;
                v71 += 8;
              }

              while (v74 == *v72);
              v75 = &v72[__clz(__rbit64(*v72 ^ v73)) >> 3] - v69;
            }

            else
            {
              v75 = __clz(__rbit64(*v69 ^ *v70)) >> 3;
            }

LABEL_80:
            v76 = v22 - a4;
            v77 = *(a2 + 24);
            if (v22 > v33)
            {
              if (a4 <= v33)
              {
                v78 = (v77 + v33 - a4);
                *v77 = *a4;
                if (v33 - a4 >= 17)
                {
                  v79 = v77 + 1;
                  v80 = (a4 + 32);
                  do
                  {
                    *v79 = *(v80 - 1);
                    v81 = *v80;
                    v80 += 2;
                    v79[1] = v81;
                    v79 += 2;
                  }

                  while (v79 < v78);
                }

                a4 = v33;
                v77 = v78;
              }

              if (a4 >= v22)
              {
                goto LABEL_109;
              }

              v82 = v22 - a4;
              if ((v22 - a4) < 8)
              {
                v90 = v77;
              }

              else if ((v77 - a4) < 0x20)
              {
                v90 = v77;
              }

              else
              {
                if (v82 < 0x20)
                {
                  v83 = 0;
LABEL_103:
                  v95 = v82 & 0xFFFFFFFFFFFFFFF8;
                  v90 = v77 + (v82 & 0xFFFFFFFFFFFFFFF8);
                  v96 = v83 - (v82 & 0xFFFFFFFFFFFFFFF8);
                  v97 = &a4[v83];
                  v98 = (v77 + v83);
                  do
                  {
                    v99 = *v97++;
                    *v98++ = v99;
                    v96 += 8;
                  }

                  while (v96);
                  v64 = v712;
                  if (v82 != v95)
                  {
                    a4 += v95;
                    goto LABEL_108;
                  }

LABEL_109:
                  *(a2 + 24) += v76;
                  v89 = *(a2 + 8);
                  if (v76 >= 0x10000)
                  {
                    v101 = (v89 - *a2) >> 3;
                    *(a2 + 72) = 1;
                    *(a2 + 76) = v101;
                  }

                  goto LABEL_111;
                }

                v83 = v82 & 0xFFFFFFFFFFFFFFE0;
                v91 = (a4 + 16);
                v92 = v77 + 1;
                v93 = v82 & 0xFFFFFFFFFFFFFFE0;
                do
                {
                  v94 = *v91;
                  *(v92 - 1) = *(v91 - 1);
                  *v92 = v94;
                  v91 += 2;
                  v92 += 2;
                  v93 -= 32;
                }

                while (v93);
                if (v82 == v83)
                {
                  goto LABEL_109;
                }

                if ((v82 & 0x18) != 0)
                {
                  goto LABEL_103;
                }

                a4 += v83;
                v90 = v77 + v83;
              }

              do
              {
LABEL_108:
                v100 = *a4++;
                *v90++ = v100;
              }

              while (a4 != v22);
              goto LABEL_109;
            }

            *v77 = *a4;
            v84 = *(a2 + 24);
            if (v76 > 0x10)
            {
              *(v84 + 16) = *(a4 + 1);
              if (v76 >= 33)
              {
                v85 = v84 + v76;
                v86 = (v84 + 32);
                v87 = (a4 + 48);
                do
                {
                  *v86 = *(v87 - 1);
                  v88 = *v87;
                  v87 += 2;
                  v86[1] = v88;
                  v86 += 2;
                }

                while (v86 < v85);
              }

              goto LABEL_109;
            }

            *(a2 + 24) = v84 + v76;
            v89 = *(a2 + 8);
LABEL_111:
            v102 = v75 + v61;
            *(v89 + 4) = v76;
            *v89 = v63;
            v103 = v75 + v61 - 3;
            if (v103 >= 0x10000)
            {
              v104 = (v89 - *a2) >> 3;
              *(a2 + 72) = 2;
              *(a2 + 76) = v104;
            }

            *(v89 + 6) = v103;
            v105 = v89 + 8;
            *(a2 + 8) = v89 + 8;
            a4 = &v22[v102];
            if (&v22[v102] > v19)
            {
              v26 = v38;
              v11 = v34;
              goto LABEL_146;
            }

            *(v8 + 4 * ((0xCF1BBCDCBFA56300 * *(v10 + 2 + v53)) >> v30)) = v53 + 2;
            *(v8 + 4 * ((0xCF1BBCDCBFA56300 * *(a4 - 2)) >> v30)) = a4 - 2 - v10;
            if (!v38)
            {
              v26 = 0;
              v11 = v34;
              goto LABEL_146;
            }

            v106 = v27;
            v11 = v34;
            while (1)
            {
              v26 = v106;
              v106 = v38;
              if (*a4 != *&a4[-v38])
              {
                break;
              }

              v107 = (a4 + 4);
              v108 = &a4[-v38 + 4];
              if (v31 <= (a4 + 4))
              {
                v111 = a4 + 4;
              }

              else
              {
                v109 = *v108;
                if (v109 != *v107)
                {
                  v114 = __clz(__rbit64(*v107 ^ v109)) >> 3;
                  goto LABEL_140;
                }

                v110 = a4 + 12;
                v108 = &a4[-v38 + 12];
                while (1)
                {
                  v111 = v110;
                  if (v110 >= v31)
                  {
                    break;
                  }

                  v113 = *v108;
                  v108 += 8;
                  v112 = v113;
                  ++v110;
                  if (v113 != *v111)
                  {
                    v114 = v111 + (__clz(__rbit64(*v111 ^ v112)) >> 3) - v107;
                    goto LABEL_140;
                  }
                }
              }

              if (v111 >= v64)
              {
                if (v111 < v32)
                {
                  goto LABEL_135;
                }
              }

              else
              {
                if (*v108 == *v111)
                {
                  v108 += 4;
                  v111 = (v111 + 4);
                }

                if (v111 < v32)
                {
LABEL_135:
                  if (*v108 == *v111)
                  {
                    v108 += 2;
                    v111 = (v111 + 2);
                  }

                  if (v111 >= v34)
                  {
                    goto LABEL_133;
                  }

LABEL_131:
                  if (*v108 == *v111)
                  {
                    v111 = (v111 + 1);
                  }

                  goto LABEL_133;
                }
              }

              if (v111 < v34)
              {
                goto LABEL_131;
              }

LABEL_133:
              v114 = v111 - v107;
LABEL_140:
              *(v8 + 4 * ((0xCF1BBCDCBFA56300 * *a4) >> v30)) = a4 - v10;
              if (a4 <= v33)
              {
                **(a2 + 24) = *a4;
                v105 = *(a2 + 8);
              }

              *(v105 + 4) = 0;
              *v105 = 1;
              if (v114 + 1 >= 0x10000)
              {
                v115 = (v105 - *a2) >> 3;
                *(a2 + 72) = 2;
                *(a2 + 76) = v115;
              }

              a4 += v114 + 4;
              *(v105 + 6) = v114 + 1;
              v105 += 8;
              *(a2 + 8) = v105;
              v38 = v26;
              v27 = v106;
              if (a4 > v19)
              {
                goto LABEL_146;
              }
            }

            v27 = v26;
            v26 = v38;
LABEL_146:
            v28 = &a4[v730];
            v29 = &a4[v730 + 1];
            v22 = a4;
            if (v29 >= v19)
            {
LABEL_1055:
              if (v20 <= v25)
              {
                v704 = 0;
              }

              else
              {
                v704 = v20;
              }

              v705 = v21;
              if (v21 <= v25)
              {
                v705 = 0;
              }

              if (v27)
              {
                v704 = v27;
                v706 = v20 > v25;
              }

              else
              {
                v706 = 0;
              }

              if (v706)
              {
                v705 = v20;
              }

              if (v26)
              {
                v705 = v26;
              }

              *a3 = v704;
              a3[1] = v705;
              return v11 - a4;
            }
          }

          v72 = &v22[v61];
LABEL_66:
          if (v72 >= v64)
          {
            if (v72 >= v32)
            {
              goto LABEL_70;
            }
          }

          else
          {
            if (*v70 == *v72)
            {
              v70 += 4;
              v72 += 4;
            }

            if (v72 >= v32)
            {
LABEL_70:
              if (v72 >= v34)
              {
LABEL_73:
                v75 = v72 - v69;
                goto LABEL_80;
              }

LABEL_71:
              if (*v70 == *v72)
              {
                ++v72;
              }

              goto LABEL_73;
            }
          }

          if (*v70 == *v72)
          {
            v70 += 2;
            v72 += 2;
          }

          if (v72 >= v34)
          {
            goto LABEL_73;
          }

          goto LABEL_71;
        }

        if (v29 >= v19)
        {
          goto LABEL_1055;
        }

        v543 = 0;
        v544 = 32 - *(a1 + 264);
        v545 = (v11 - 7);
        v546 = v11 - 32;
        v717 = (v11 - 1);
        v720 = (v11 - 3);
        while (1)
        {
          v383 = v11;
          v548 = v22 + 1;
          v547 = *(v22 + 1);
          v549 = v22 + 128;
          v387 = v27;
          v550 = (-1640531535 * *v22) >> v544;
          v551 = *(v8 + 4 * v550);
          v552 = v543;
          v553 = v543 - v27;
          if (v27)
          {
            v554 = v730;
            while (1)
            {
              v558 = v28;
              _X4 = v29;
              v560 = *&v28[v553];
              v561 = (-1640531535 * v547) >> v544;
              v562 = v22 - v10;
              *(v8 + 4 * v550) = v22 - v10;
              if (*v558 == v560)
              {
                break;
              }

              if (v551 >= v18 && *v22 == *(v10 + v551))
              {
                v571 = v10 + v18;
                v543 = v552;
                goto LABEL_827;
              }

              v551 = *(v8 + 4 * v561);
              v550 = (-1640531535 * *v558) >> v544;
              v562 = v548 - v10;
              *(v8 + 4 * v561) = v548 - v10;
              if (v551 >= v18 && *v548 == *(v10 + v551))
              {
                v571 = v10 + v18;
                v543 = v552;
                goto LABEL_826;
              }

              v551 = *(v8 + 4 * v550);
              v547 = *_X4;
              v28 = &v558[v554];
              if (&v558[v554] >= v549)
              {
                v555 = v554 + 1;
                __asm
                {
                  PRFM            #0, [X4,#0x40]
                  PRFM            #0, [X4,#0x80]
                }

                v549 += 128;
              }

              else
              {
                v555 = v554;
              }

              v29 = &_X4[v554];
              v554 = v555;
              v548 = _X4;
              v22 = v558;
              if (v29 >= v19)
              {
                goto LABEL_1051;
              }
            }

            v567 = *(v558 - 1) == v558[v553 - 1];
            if (*(v558 - 1) == v558[v553 - 1])
            {
              v568 = 5;
            }

            else
            {
              v568 = 4;
            }

            v22 = &v558[-v567];
            v569 = &v558[v553 - v567];
            *(v8 + 4 * v561) = v548 - v10;
            v570 = 1;
            v27 = v387;
            v387 = v26;
            v11 = v383;
            v543 = v552;
          }

          else
          {
            v554 = v730;
            v543 = v552;
            while (1)
            {
              v558 = v28;
              _X10 = v29;
              v561 = (-1640531535 * v547) >> v544;
              v562 = v22 - v10;
              *(v8 + 4 * v550) = v22 - v10;
              if (v551 >= v18)
              {
                v543 = v552;
                if (*v22 == *(v10 + v551))
                {
                  v571 = v10 + v18;
                  goto LABEL_827;
                }
              }

              v551 = *(v8 + 4 * v561);
              v550 = (-1640531535 * *v558) >> v544;
              v562 = v548 - v10;
              *(v8 + 4 * v561) = v548 - v10;
              if (v551 >= v18 && *v548 == *(v10 + v551))
              {
                break;
              }

              v551 = *(v8 + 4 * v550);
              v547 = *v29;
              v28 = &v558[v554];
              if (&v558[v554] >= v549)
              {
                v563 = v554 + 1;
                __asm
                {
                  PRFM            #0, [X10,#0x40]
                  PRFM            #0, [X10,#0x80]
                }

                v549 += 128;
              }

              else
              {
                v563 = v554;
              }

              v29 += v554;
              v554 = v563;
              v548 = _X10;
              v22 = v558;
              if (v29 >= v19)
              {
                goto LABEL_1053;
              }
            }

            v571 = v10 + v18;
LABEL_826:
            v22 = v548;
            LODWORD(v548) = v558;
            v561 = v550;
            if (v554 < 5)
            {
LABEL_827:
              *(v8 + 4 * v561) = v548 - v10;
            }

            v569 = (v10 + v551);
            v27 = (v22 - v569);
            v570 = v27 + 3;
            v11 = v383;
            if (v551 <= v18 || v22 <= a4)
            {
              v568 = 4;
            }

            else
            {
              v572 = v22 - 1;
              v573 = (v10 - 1 + v551);
              v568 = 4;
              while (*v572 == *v573)
              {
                ++v568;
                v574 = v572 - 1;
                v575 = v573 - 1;
                if (v572 > a4)
                {
                  --v572;
                  v706 = v573-- > v571;
                  if (v706)
                  {
                    continue;
                  }
                }

                v22 = v574 + 1;
                v569 = v575 + 1;
                goto LABEL_837;
              }

              v22 = v572 + 1;
              v569 = v573 + 1;
            }
          }

LABEL_837:
          v576 = &v22[v568];
          v577 = &v569[v568];
          if (v545 <= &v22[v568])
          {
            v579 = &v22[v568];
LABEL_844:
            if (v579 < v720 && *v577 == *v579)
            {
              v577 += 4;
              v579 += 4;
            }

            if (v579 < v717 && *v577 == *v579)
            {
              v577 += 2;
              v579 += 2;
            }

            if (v579 < v11 && *v577 == *v579)
            {
              ++v579;
            }

            v582 = v579 - v576;
          }

          else if (*v577 == *v576)
          {
            v577 = &v569[v568 + 8];
            v578 = &v22[v568 + 8];
            do
            {
              v579 = v578;
              if (v578 >= v545)
              {
                goto LABEL_844;
              }

              v581 = *v577;
              v577 += 8;
              v580 = v581;
              v578 += 8;
            }

            while (v581 == *v579);
            v582 = &v579[__clz(__rbit64(*v579 ^ v580)) >> 3] - v576;
          }

          else
          {
            v582 = __clz(__rbit64(*v576 ^ *v577)) >> 3;
          }

          v583 = v22 - a4;
          v584 = *(a2 + 24);
          if (v22 <= v546)
          {
            *v584 = *a4;
            v591 = *(a2 + 24);
            if (v583 <= 0x10)
            {
              *(a2 + 24) = v591 + v583;
              v596 = *(a2 + 8);
              goto LABEL_886;
            }

            *(v591 + 16) = *(a4 + 1);
            if (v583 >= 33)
            {
              v592 = v591 + v583;
              v593 = (v591 + 32);
              v594 = (a4 + 48);
              do
              {
                *v593 = *(v594 - 1);
                v595 = *v594;
                v594 += 2;
                v593[1] = v595;
                v593 += 2;
              }

              while (v593 < v592);
            }
          }

          else
          {
            if (a4 <= v546)
            {
              v585 = (v584 + v546 - a4);
              *v584 = *a4;
              if (v546 - a4 >= 17)
              {
                v586 = v584 + 1;
                v587 = (a4 + 32);
                do
                {
                  *v586 = *(v587 - 1);
                  v588 = *v587;
                  v587 += 2;
                  v586[1] = v588;
                  v586 += 2;
                }

                while (v586 < v585);
              }

              a4 = v546;
              v584 = v585;
            }

            if (a4 >= v22)
            {
              goto LABEL_884;
            }

            v589 = v22 - a4;
            if ((v22 - a4) < 8)
            {
              v597 = v584;
              goto LABEL_883;
            }

            if ((v584 - a4) < 0x20)
            {
              v597 = v584;
              goto LABEL_883;
            }

            if (v589 >= 0x20)
            {
              v590 = v589 & 0xFFFFFFFFFFFFFFE0;
              v598 = (a4 + 16);
              v599 = v584 + 1;
              v600 = v589 & 0xFFFFFFFFFFFFFFE0;
              do
              {
                v601 = *v598;
                *(v599 - 1) = *(v598 - 1);
                *v599 = v601;
                v598 += 2;
                v599 += 2;
                v600 -= 32;
              }

              while (v600);
              v543 = v552;
              if (v589 == v590)
              {
                goto LABEL_884;
              }

              if ((v589 & 0x18) == 0)
              {
                a4 += v590;
                v597 = v584 + v590;
                v543 = v552;
                do
                {
LABEL_883:
                  v607 = *a4++;
                  *v597++ = v607;
                }

                while (a4 != v22);
                goto LABEL_884;
              }
            }

            else
            {
              v590 = 0;
            }

            v602 = v589 & 0xFFFFFFFFFFFFFFF8;
            v597 = v584 + (v589 & 0xFFFFFFFFFFFFFFF8);
            v603 = v590 - (v589 & 0xFFFFFFFFFFFFFFF8);
            v604 = &a4[v590];
            v605 = (v584 + v590);
            do
            {
              v606 = *v604++;
              *v605++ = v606;
              v603 += 8;
            }

            while (v603);
            v11 = v383;
            v543 = v552;
            if (v589 != v602)
            {
              a4 += v602;
              goto LABEL_883;
            }
          }

LABEL_884:
          *(a2 + 24) += v583;
          v596 = *(a2 + 8);
          if (v583 >= 0x10000)
          {
            v608 = (v596 - *a2) >> 3;
            *(a2 + 72) = 1;
            *(a2 + 76) = v608;
          }

LABEL_886:
          v609 = v582 + v568;
          *(v596 + 4) = v583;
          *v596 = v570;
          v610 = v582 + v568 - 3;
          if (v610 >= 0x10000)
          {
            v611 = (v596 - *a2) >> 3;
            *(a2 + 72) = 2;
            *(a2 + 76) = v611;
          }

          *(v596 + 6) = v610;
          v612 = v596 + 8;
          *(a2 + 8) = v596 + 8;
          a4 = &v22[v609];
          if (&v22[v609] <= v19)
          {
            *(v8 + 4 * ((-1640531535 * *(v10 + 2 + v562)) >> v544)) = v562 + 2;
            *(v8 + 4 * ((-1640531535 * *(a4 - 2)) >> v544)) = a4 - 2 - v10;
            if (!v387)
            {
              v26 = 0;
              goto LABEL_921;
            }

            v613 = v27;
            while (2)
            {
              v26 = v613;
              v613 = v387;
              if (*a4 != *&a4[-v387])
              {
                v27 = v26;
                v26 = v387;
                goto LABEL_921;
              }

              v614 = (a4 + 4);
              v615 = &a4[-v387 + 4];
              if (v545 > (a4 + 4))
              {
                v616 = *v615;
                if (v616 == *v614)
                {
                  v617 = a4 + 12;
                  v615 = &a4[-v387 + 12];
                  do
                  {
                    v618 = v617;
                    if (v617 >= v545)
                    {
                      goto LABEL_901;
                    }

                    v620 = *v615;
                    v615 += 8;
                    v619 = v620;
                    v617 += 8;
                  }

                  while (v620 == *v618);
                  v621 = &v618[__clz(__rbit64(*v618 ^ v619)) >> 3] - v614;
                }

                else
                {
                  v621 = __clz(__rbit64(*v614 ^ v616)) >> 3;
                }

LABEL_915:
                *(v8 + 4 * ((-1640531535 * *a4) >> v544)) = a4 - v10;
                if (a4 <= v546)
                {
                  **(a2 + 24) = *a4;
                  v612 = *(a2 + 8);
                }

                *(v612 + 4) = 0;
                *v612 = 1;
                if (v621 + 1 >= 0x10000)
                {
                  v622 = (v612 - *a2) >> 3;
                  *(a2 + 72) = 2;
                  *(a2 + 76) = v622;
                }

                a4 += v621 + 4;
                *(v612 + 6) = v621 + 1;
                v612 += 8;
                *(a2 + 8) = v612;
                v387 = v26;
                v27 = v613;
                if (a4 > v19)
                {
                  goto LABEL_921;
                }

                continue;
              }

              break;
            }

            v618 = a4 + 4;
LABEL_901:
            if (v618 >= v720)
            {
              if (v618 >= v717)
              {
                goto LABEL_905;
              }
            }

            else
            {
              if (*v615 == *v618)
              {
                v615 += 4;
                v618 += 4;
              }

              if (v618 >= v717)
              {
LABEL_905:
                if (v618 < v11)
                {
                  goto LABEL_906;
                }

                goto LABEL_908;
              }
            }

            if (*v615 == *v618)
            {
              v615 += 2;
              v618 += 2;
            }

            if (v618 < v11)
            {
LABEL_906:
              if (*v615 == *v618)
              {
                ++v618;
              }
            }

LABEL_908:
            v621 = v618 - v614;
            goto LABEL_915;
          }

          v26 = v387;
LABEL_921:
          v28 = &a4[v730];
          v29 = &a4[v730 + 1];
          v22 = a4;
          if (v29 >= v19)
          {
            goto LABEL_1055;
          }
        }
      }

      if (v29 >= v19)
      {
        goto LABEL_1055;
      }

      v218 = 0;
      v219 = 64 - *(a1 + 264);
      v220 = (v11 - 7);
      v221 = v11 - 32;
      v714 = v11 - 3;
      v718 = (v11 - 1);
      while (1)
      {
        v34 = v11;
        v222 = v22 + 1;
        v223 = *(v22 + 1);
        v224 = v22 + 128;
        v38 = v27;
        v225 = (0xCF1BBCDCBF9B0000 * *v22) >> v219;
        v226 = *(v8 + 4 * v225);
        v227 = v218;
        v228 = v218 - v27;
        if (!v27)
        {
          v229 = v730;
          v218 = v227;
          while (1)
          {
            v233 = v28;
            _X10 = v29;
            v235 = (0xCF1BBCDCBF9B0000 * v223) >> v219;
            v236 = v22 - v10;
            *(v8 + 4 * v225) = v22 - v10;
            if (v226 >= v18 && *v22 == *(v10 + v226))
            {
              break;
            }

            v226 = *(v8 + 4 * v235);
            v225 = (0xCF1BBCDCBF9B0000 * *v233) >> v219;
            v236 = v222 - v10;
            *(v8 + 4 * v235) = v222 - v10;
            if (v226 >= v18 && *v222 == *(v10 + v226))
            {
LABEL_318:
              v22 = v222;
              LODWORD(v222) = v233;
              v235 = v225;
              v247 = v10 + v18;
              v246 = v714;
              if (v229 >= 5)
              {
LABEL_323:
                v244 = (v10 + v226);
                v27 = (v22 - v244);
                v245 = v27 + 3;
                if (v226 <= v18 || v22 <= a4)
                {
                  v243 = 4;
                }

                else
                {
                  v248 = v22 - 1;
                  v249 = (v10 - 1 + v226);
                  v243 = 4;
                  while (*v248 == *v249)
                  {
                    ++v243;
                    v250 = v248 - 1;
                    v251 = v249 - 1;
                    if (v248 > a4)
                    {
                      --v248;
                      v706 = v249-- > v247;
                      if (v706)
                      {
                        continue;
                      }
                    }

                    v22 = v250 + 1;
                    v244 = v251 + 1;
                    goto LABEL_332;
                  }

                  v22 = v248 + 1;
                  v244 = v249 + 1;
                }

                goto LABEL_332;
              }

LABEL_322:
              *(v8 + 4 * v235) = v222 - v10;
              goto LABEL_323;
            }

            v226 = *(v8 + 4 * v225);
            v223 = *v29;
            v28 = &v233[v229];
            if (&v233[v229] >= v224)
            {
              v238 = v229 + 1;
              __asm
              {
                PRFM            #0, [X10,#0x40]
                PRFM            #0, [X10,#0x80]
              }

              v224 += 128;
            }

            else
            {
              v238 = v229;
            }

            v29 += v229;
            v229 = v238;
            v222 = _X10;
            v22 = v233;
            if (v29 >= v19)
            {
LABEL_1052:
              LODWORD(v27) = 0;
              v11 = v34;
              goto LABEL_1055;
            }
          }

          v247 = v10 + v18;
LABEL_321:
          v246 = v714;
          goto LABEL_322;
        }

        v229 = v730;
        while (1)
        {
          v233 = v28;
          v234 = *&v28[v228];
          v235 = (0xCF1BBCDCBF9B0000 * v223) >> v219;
          v236 = v22 - v10;
          *(v8 + 4 * v225) = v22 - v10;
          if (*v233 == v234)
          {
            break;
          }

          _X10 = v29;
          if (v226 >= v18 && *v22 == *(v10 + v226))
          {
            v247 = v10 + v18;
            v218 = v227;
            goto LABEL_321;
          }

          v226 = *(v8 + 4 * v235);
          v225 = (0xCF1BBCDCBF9B0000 * *v233) >> v219;
          v236 = v222 - v10;
          *(v8 + 4 * v235) = v222 - v10;
          if (v226 >= v18 && *v222 == *(v10 + v226))
          {
            v218 = v227;
            goto LABEL_318;
          }

          v226 = *(v8 + 4 * v225);
          v223 = *v29;
          v28 = &v233[v229];
          if (&v233[v229] >= v224)
          {
            v230 = v229 + 1;
            __asm
            {
              PRFM            #0, [X10,#0x40]
              PRFM            #0, [X10,#0x80]
            }

            v224 += 128;
          }

          else
          {
            v230 = v229;
          }

          v29 += v229;
          v229 = v230;
          v222 = _X10;
          v22 = v233;
          if (v29 >= v19)
          {
LABEL_1050:
            LODWORD(v27) = v38;
            v11 = v34;
            goto LABEL_1055;
          }
        }

        v242 = *(v233 - 1) == v233[v228 - 1];
        if (*(v233 - 1) == v233[v228 - 1])
        {
          v243 = 5;
        }

        else
        {
          v243 = 4;
        }

        v22 = &v233[-v242];
        v244 = &v233[v228 - v242];
        *(v8 + 4 * v235) = v222 - v10;
        v245 = 1;
        v27 = v38;
        v38 = v26;
        v218 = v227;
        v246 = v714;
LABEL_332:
        v252 = &v22[v243];
        v253 = &v244[v243];
        if (v220 <= &v22[v243])
        {
          v255 = &v22[v243];
LABEL_339:
          if (v255 < v246 && *v253 == *v255)
          {
            v253 += 4;
            v255 += 4;
          }

          if (v255 < v718 && *v253 == *v255)
          {
            v253 += 2;
            v255 += 2;
          }

          if (v255 < v34 && *v253 == *v255)
          {
            ++v255;
          }

          v258 = v255 - v252;
        }

        else if (*v253 == *v252)
        {
          v253 = &v244[v243 + 8];
          v254 = &v22[v243 + 8];
          do
          {
            v255 = v254;
            if (v254 >= v220)
            {
              goto LABEL_339;
            }

            v257 = *v253;
            v253 += 8;
            v256 = v257;
            v254 += 8;
          }

          while (v257 == *v255);
          v258 = &v255[__clz(__rbit64(*v255 ^ v256)) >> 3] - v252;
        }

        else
        {
          v258 = __clz(__rbit64(*v252 ^ *v253)) >> 3;
        }

        v259 = v22 - a4;
        v260 = *(a2 + 24);
        if (v22 <= v221)
        {
          *v260 = *a4;
          v267 = *(a2 + 24);
          if (v259 <= 0x10)
          {
            *(a2 + 24) = v267 + v259;
            v272 = *(a2 + 8);
            goto LABEL_381;
          }

          *(v267 + 16) = *(a4 + 1);
          if (v259 >= 33)
          {
            v268 = v267 + v259;
            v269 = (v267 + 32);
            v270 = (a4 + 48);
            do
            {
              *v269 = *(v270 - 1);
              v271 = *v270;
              v270 += 2;
              v269[1] = v271;
              v269 += 2;
            }

            while (v269 < v268);
          }
        }

        else
        {
          if (a4 <= v221)
          {
            v261 = (v260 + v221 - a4);
            *v260 = *a4;
            if (v221 - a4 >= 17)
            {
              v262 = v260 + 1;
              v263 = (a4 + 32);
              do
              {
                *v262 = *(v263 - 1);
                v264 = *v263;
                v263 += 2;
                v262[1] = v264;
                v262 += 2;
              }

              while (v262 < v261);
            }

            a4 = v221;
            v260 = v261;
          }

          if (a4 >= v22)
          {
            goto LABEL_379;
          }

          v265 = v22 - a4;
          if ((v22 - a4) < 8)
          {
            v273 = v260;
            goto LABEL_378;
          }

          if ((v260 - a4) < 0x20)
          {
            v273 = v260;
            goto LABEL_378;
          }

          if (v265 >= 0x20)
          {
            v266 = v265 & 0xFFFFFFFFFFFFFFE0;
            v274 = (a4 + 16);
            v275 = v260 + 1;
            v276 = v265 & 0xFFFFFFFFFFFFFFE0;
            do
            {
              v277 = *v274;
              *(v275 - 1) = *(v274 - 1);
              *v275 = v277;
              v274 += 2;
              v275 += 2;
              v276 -= 32;
            }

            while (v276);
            v246 = v714;
            if (v265 == v266)
            {
              goto LABEL_379;
            }

            if ((v265 & 0x18) == 0)
            {
              a4 += v266;
              v273 = v260 + v266;
              v246 = v714;
              do
              {
LABEL_378:
                v283 = *a4++;
                *v273++ = v283;
              }

              while (a4 != v22);
              goto LABEL_379;
            }
          }

          else
          {
            v266 = 0;
          }

          v278 = v265 & 0xFFFFFFFFFFFFFFF8;
          v273 = v260 + (v265 & 0xFFFFFFFFFFFFFFF8);
          v279 = v266 - (v265 & 0xFFFFFFFFFFFFFFF8);
          v280 = &a4[v266];
          v281 = (v260 + v266);
          do
          {
            v282 = *v280++;
            *v281++ = v282;
            v279 += 8;
          }

          while (v279);
          v218 = v227;
          v246 = v714;
          if (v265 != v278)
          {
            a4 += v278;
            goto LABEL_378;
          }
        }

LABEL_379:
        *(a2 + 24) += v259;
        v272 = *(a2 + 8);
        if (v259 >= 0x10000)
        {
          v284 = (v272 - *a2) >> 3;
          *(a2 + 72) = 1;
          *(a2 + 76) = v284;
        }

LABEL_381:
        v285 = v258 + v243;
        *(v272 + 4) = v259;
        *v272 = v245;
        v286 = v258 + v243 - 3;
        if (v286 >= 0x10000)
        {
          v287 = (v272 - *a2) >> 3;
          *(a2 + 72) = 2;
          *(a2 + 76) = v287;
        }

        *(v272 + 6) = v286;
        v288 = v272 + 8;
        *(a2 + 8) = v272 + 8;
        a4 = &v22[v285];
        if (&v22[v285] <= v19)
        {
          *(v8 + 4 * ((0xCF1BBCDCBF9B0000 * *(v10 + 2 + v236)) >> v219)) = v236 + 2;
          *(v8 + 4 * ((0xCF1BBCDCBF9B0000 * *(a4 - 2)) >> v219)) = a4 - 2 - v10;
          if (!v38)
          {
            v26 = 0;
            v11 = v34;
            goto LABEL_416;
          }

          v289 = v27;
          v11 = v34;
          while (2)
          {
            v26 = v289;
            v289 = v38;
            if (*a4 != *&a4[-v38])
            {
              v27 = v26;
              v26 = v38;
              goto LABEL_416;
            }

            v290 = (a4 + 4);
            v291 = &a4[-v38 + 4];
            if (v220 > (a4 + 4))
            {
              v292 = *v291;
              if (v292 == *v290)
              {
                v293 = a4 + 12;
                v291 = &a4[-v38 + 12];
                do
                {
                  v294 = v293;
                  if (v293 >= v220)
                  {
                    goto LABEL_396;
                  }

                  v296 = *v291;
                  v291 += 8;
                  v295 = v296;
                  ++v293;
                }

                while (v296 == *v294);
                v297 = v294 + (__clz(__rbit64(*v294 ^ v295)) >> 3) - v290;
              }

              else
              {
                v297 = __clz(__rbit64(*v290 ^ v292)) >> 3;
              }

LABEL_410:
              *(v8 + 4 * ((0xCF1BBCDCBF9B0000 * *a4) >> v219)) = a4 - v10;
              if (a4 <= v221)
              {
                **(a2 + 24) = *a4;
                v288 = *(a2 + 8);
              }

              *(v288 + 4) = 0;
              *v288 = 1;
              if (v297 + 1 >= 0x10000)
              {
                v298 = (v288 - *a2) >> 3;
                *(a2 + 72) = 2;
                *(a2 + 76) = v298;
              }

              a4 += v297 + 4;
              *(v288 + 6) = v297 + 1;
              v288 += 8;
              *(a2 + 8) = v288;
              v38 = v26;
              v27 = v289;
              if (a4 > v19)
              {
                goto LABEL_416;
              }

              continue;
            }

            break;
          }

          v294 = a4 + 4;
LABEL_396:
          if (v294 >= v246)
          {
            if (v294 >= v718)
            {
              goto LABEL_400;
            }
          }

          else
          {
            if (*v291 == *v294)
            {
              v291 += 4;
              v294 = (v294 + 4);
            }

            if (v294 >= v718)
            {
LABEL_400:
              if (v294 < v34)
              {
                goto LABEL_401;
              }

              goto LABEL_403;
            }
          }

          if (*v291 == *v294)
          {
            v291 += 2;
            v294 = (v294 + 2);
          }

          if (v294 < v34)
          {
LABEL_401:
            if (*v291 == *v294)
            {
              v294 = (v294 + 1);
            }
          }

LABEL_403:
          v297 = v294 - v290;
          goto LABEL_410;
        }

        v26 = v38;
        v11 = v34;
LABEL_416:
        v28 = &a4[v730];
        v29 = &a4[v730 + 1];
        v22 = a4;
        if (v29 >= v19)
        {
          goto LABEL_1055;
        }
      }
    }

    if (v29 >= v19)
    {
      goto LABEL_1055;
    }

    v379 = 0;
    v380 = 64 - *(a1 + 264);
    v381 = (v11 - 7);
    v382 = v11 - 32;
    v716 = (v11 - 1);
    v719 = v11 - 3;
    while (1)
    {
      v383 = v11;
      v384 = v22 + 1;
      v385 = *(v22 + 1);
      v386 = v22 + 128;
      v387 = v27;
      v388 = (0xCF1BBCDCBB000000 * *v22) >> v380;
      v389 = *(v8 + 4 * v388);
      v390 = v379;
      v391 = v379 - v27;
      if (v27)
      {
        v392 = v730;
        while (1)
        {
          v396 = v28;
          _X10 = v29;
          v398 = *&v28[v391];
          v399 = (0xCF1BBCDCBB000000 * v385) >> v380;
          v400 = v22 - v10;
          *(v8 + 4 * v388) = v22 - v10;
          if (*v396 == v398)
          {
            break;
          }

          if (v389 >= v18 && *v22 == *(v10 + v389))
          {
            v410 = v10 + v18;
            v379 = v390;
            goto LABEL_574;
          }

          v389 = *(v8 + 4 * v399);
          v388 = (0xCF1BBCDCBB000000 * *v396) >> v380;
          v400 = v384 - v10;
          *(v8 + 4 * v399) = v384 - v10;
          if (v389 >= v18 && *v384 == *(v10 + v389))
          {
            v410 = v10 + v18;
            v379 = v390;
            goto LABEL_573;
          }

          v389 = *(v8 + 4 * v388);
          v385 = *v29;
          v28 = &v396[v392];
          if (&v396[v392] >= v386)
          {
            v393 = v392 + 1;
            __asm
            {
              PRFM            #0, [X10,#0x40]
              PRFM            #0, [X10,#0x80]
            }

            v386 += 128;
          }

          else
          {
            v393 = v392;
          }

          v29 += v392;
          v392 = v393;
          v384 = _X10;
          v22 = v396;
          if (v29 >= v19)
          {
LABEL_1051:
            LODWORD(v27) = v387;
LABEL_1054:
            v11 = v383;
            goto LABEL_1055;
          }
        }

        v405 = *(v396 - 1) == v396[v391 - 1];
        if (*(v396 - 1) == v396[v391 - 1])
        {
          v406 = 5;
        }

        else
        {
          v406 = 4;
        }

        v22 = &v396[-v405];
        v407 = &v396[v391 - v405];
        *(v8 + 4 * v399) = v384 - v10;
        v408 = 1;
        v27 = v387;
        v387 = v26;
        v379 = v390;
        v409 = v719;
      }

      else
      {
        v392 = v730;
        v379 = v390;
        while (1)
        {
          v396 = v28;
          _X10 = v29;
          v399 = (0xCF1BBCDCBB000000 * v385) >> v380;
          v400 = v22 - v10;
          *(v8 + 4 * v388) = v22 - v10;
          if (v389 >= v18)
          {
            v379 = v390;
            if (*v22 == *(v10 + v389))
            {
              v410 = v10 + v18;
              goto LABEL_574;
            }
          }

          v389 = *(v8 + 4 * v399);
          v388 = (0xCF1BBCDCBB000000 * *v396) >> v380;
          v400 = v384 - v10;
          *(v8 + 4 * v399) = v384 - v10;
          if (v389 >= v18 && *v384 == *(v10 + v389))
          {
            break;
          }

          v389 = *(v8 + 4 * v388);
          v385 = *v29;
          v28 = &v396[v392];
          if (&v396[v392] >= v386)
          {
            v401 = v392 + 1;
            __asm
            {
              PRFM            #0, [X10,#0x40]
              PRFM            #0, [X10,#0x80]
            }

            v386 += 128;
          }

          else
          {
            v401 = v392;
          }

          v29 += v392;
          v392 = v401;
          v384 = _X10;
          v22 = v396;
          if (v29 >= v19)
          {
LABEL_1053:
            LODWORD(v27) = 0;
            goto LABEL_1054;
          }
        }

        v410 = v10 + v18;
LABEL_573:
        v22 = v384;
        LODWORD(v384) = v396;
        v399 = v388;
        if (v392 < 5)
        {
LABEL_574:
          *(v8 + 4 * v399) = v384 - v10;
        }

        v407 = (v10 + v389);
        v27 = (v22 - v407);
        v408 = v27 + 3;
        v409 = v719;
        if (v389 <= v18 || v22 <= a4)
        {
          v406 = 4;
        }

        else
        {
          v411 = v22 - 1;
          v412 = (v10 - 1 + v389);
          v406 = 4;
          while (*v411 == *v412)
          {
            ++v406;
            v413 = v411 - 1;
            v414 = v412 - 1;
            if (v411 > a4)
            {
              --v411;
              v706 = v412-- > v410;
              if (v706)
              {
                continue;
              }
            }

            v22 = v413 + 1;
            v407 = v414 + 1;
            goto LABEL_584;
          }

          v22 = v411 + 1;
          v407 = v412 + 1;
        }
      }

LABEL_584:
      v415 = &v22[v406];
      v416 = &v407[v406];
      if (v381 <= &v22[v406])
      {
        v418 = &v22[v406];
LABEL_591:
        if (v418 < v409 && *v416 == *v418)
        {
          v416 += 4;
          v418 += 4;
        }

        if (v418 < v716 && *v416 == *v418)
        {
          v416 += 2;
          v418 += 2;
        }

        if (v418 < v383 && *v416 == *v418)
        {
          ++v418;
        }

        v421 = v418 - v415;
      }

      else if (*v416 == *v415)
      {
        v416 = &v407[v406 + 8];
        v417 = &v22[v406 + 8];
        do
        {
          v418 = v417;
          if (v417 >= v381)
          {
            goto LABEL_591;
          }

          v420 = *v416;
          v416 += 8;
          v419 = v420;
          v417 += 8;
        }

        while (v420 == *v418);
        v421 = &v418[__clz(__rbit64(*v418 ^ v419)) >> 3] - v415;
      }

      else
      {
        v421 = __clz(__rbit64(*v415 ^ *v416)) >> 3;
      }

      v422 = v22 - a4;
      v423 = *(a2 + 24);
      if (v22 <= v382)
      {
        *v423 = *a4;
        v430 = *(a2 + 24);
        if (v422 <= 0x10)
        {
          *(a2 + 24) = v430 + v422;
          v435 = *(a2 + 8);
          goto LABEL_633;
        }

        *(v430 + 16) = *(a4 + 1);
        if (v422 >= 33)
        {
          v431 = v430 + v422;
          v432 = (v430 + 32);
          v433 = (a4 + 48);
          do
          {
            *v432 = *(v433 - 1);
            v434 = *v433;
            v433 += 2;
            v432[1] = v434;
            v432 += 2;
          }

          while (v432 < v431);
        }
      }

      else
      {
        if (a4 <= v382)
        {
          v424 = (v423 + v382 - a4);
          *v423 = *a4;
          if (v382 - a4 >= 17)
          {
            v425 = v423 + 1;
            v426 = (a4 + 32);
            do
            {
              *v425 = *(v426 - 1);
              v427 = *v426;
              v426 += 2;
              v425[1] = v427;
              v425 += 2;
            }

            while (v425 < v424);
          }

          a4 = v382;
          v423 = v424;
        }

        if (a4 >= v22)
        {
          goto LABEL_631;
        }

        v428 = v22 - a4;
        if ((v22 - a4) < 8)
        {
          v436 = v423;
          goto LABEL_630;
        }

        if ((v423 - a4) < 0x20)
        {
          v436 = v423;
          goto LABEL_630;
        }

        if (v428 >= 0x20)
        {
          v429 = v428 & 0xFFFFFFFFFFFFFFE0;
          v437 = (a4 + 16);
          v438 = v423 + 1;
          v439 = v428 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v440 = *v437;
            *(v438 - 1) = *(v437 - 1);
            *v438 = v440;
            v437 += 2;
            v438 += 2;
            v439 -= 32;
          }

          while (v439);
          v379 = v390;
          if (v428 == v429)
          {
            goto LABEL_631;
          }

          if ((v428 & 0x18) == 0)
          {
            a4 += v429;
            v436 = v423 + v429;
            v379 = v390;
            do
            {
LABEL_630:
              v446 = *a4++;
              *v436++ = v446;
            }

            while (a4 != v22);
            goto LABEL_631;
          }
        }

        else
        {
          v429 = 0;
        }

        v441 = v428 & 0xFFFFFFFFFFFFFFF8;
        v436 = v423 + (v428 & 0xFFFFFFFFFFFFFFF8);
        v442 = v429 - (v428 & 0xFFFFFFFFFFFFFFF8);
        v443 = &a4[v429];
        v444 = (v423 + v429);
        do
        {
          v445 = *v443++;
          *v444++ = v445;
          v442 += 8;
        }

        while (v442);
        v379 = v390;
        v409 = v719;
        if (v428 != v441)
        {
          a4 += v441;
          goto LABEL_630;
        }
      }

LABEL_631:
      *(a2 + 24) += v422;
      v435 = *(a2 + 8);
      if (v422 >= 0x10000)
      {
        v447 = (v435 - *a2) >> 3;
        *(a2 + 72) = 1;
        *(a2 + 76) = v447;
      }

LABEL_633:
      v448 = v421 + v406;
      *(v435 + 4) = v422;
      *v435 = v408;
      v449 = v421 + v406 - 3;
      if (v449 >= 0x10000)
      {
        v450 = (v435 - *a2) >> 3;
        *(a2 + 72) = 2;
        *(a2 + 76) = v450;
      }

      *(v435 + 6) = v449;
      v451 = v435 + 8;
      *(a2 + 8) = v435 + 8;
      a4 = &v22[v448];
      if (&v22[v448] <= v19)
      {
        *(v8 + 4 * ((0xCF1BBCDCBB000000 * *(v10 + 2 + v400)) >> v380)) = v400 + 2;
        *(v8 + 4 * ((0xCF1BBCDCBB000000 * *(a4 - 2)) >> v380)) = a4 - 2 - v10;
        if (!v387)
        {
          v26 = 0;
          v11 = v383;
          goto LABEL_668;
        }

        v452 = v27;
        v11 = v383;
        while (2)
        {
          v26 = v452;
          v452 = v387;
          if (*a4 != *&a4[-v387])
          {
            v27 = v26;
            v26 = v387;
            goto LABEL_668;
          }

          v453 = (a4 + 4);
          v454 = &a4[-v387 + 4];
          if (v381 > (a4 + 4))
          {
            v455 = *v454;
            if (v455 == *v453)
            {
              v456 = a4 + 12;
              v454 = &a4[-v387 + 12];
              do
              {
                v457 = v456;
                if (v456 >= v381)
                {
                  goto LABEL_648;
                }

                v459 = *v454;
                v454 += 8;
                v458 = v459;
                ++v456;
              }

              while (v459 == *v457);
              v460 = v457 + (__clz(__rbit64(*v457 ^ v458)) >> 3) - v453;
            }

            else
            {
              v460 = __clz(__rbit64(*v453 ^ v455)) >> 3;
            }

LABEL_662:
            *(v8 + 4 * ((0xCF1BBCDCBB000000 * *a4) >> v380)) = a4 - v10;
            if (a4 <= v382)
            {
              **(a2 + 24) = *a4;
              v451 = *(a2 + 8);
            }

            *(v451 + 4) = 0;
            *v451 = 1;
            if (v460 + 1 >= 0x10000)
            {
              v461 = (v451 - *a2) >> 3;
              *(a2 + 72) = 2;
              *(a2 + 76) = v461;
            }

            a4 += v460 + 4;
            *(v451 + 6) = v460 + 1;
            v451 += 8;
            *(a2 + 8) = v451;
            v387 = v26;
            v27 = v452;
            if (a4 > v19)
            {
              goto LABEL_668;
            }

            continue;
          }

          break;
        }

        v457 = a4 + 4;
LABEL_648:
        if (v457 >= v409)
        {
          if (v457 >= v716)
          {
            goto LABEL_652;
          }
        }

        else
        {
          if (*v454 == *v457)
          {
            v454 += 4;
            v457 = (v457 + 4);
          }

          if (v457 >= v716)
          {
LABEL_652:
            if (v457 < v383)
            {
              goto LABEL_653;
            }

            goto LABEL_655;
          }
        }

        if (*v454 == *v457)
        {
          v454 += 2;
          v457 = (v457 + 2);
        }

        if (v457 < v383)
        {
LABEL_653:
          if (*v454 == *v457)
          {
            v457 = (v457 + 1);
          }
        }

LABEL_655:
        v460 = v457 - v453;
        goto LABEL_662;
      }

      v26 = v387;
      v11 = v383;
LABEL_668:
      v28 = &a4[v730];
      v29 = &a4[v730 + 1];
      v22 = a4;
      if (v29 >= v19)
      {
        goto LABEL_1055;
      }
    }
  }

  v116 = *(a1 + 8);
  v11 = &a4[a5];
  v117 = a4 + a5 - v116;
  v118 = *(a1 + 24);
  v119 = 1 << *(a1 + 256);
  v120 = v117 - v118 > v119;
  v121 = v117 - v119;
  v122 = *(a1 + 40) == 0;
  if (v122 && v120)
  {
    v123 = v121;
  }

  else
  {
    v123 = v118;
  }

  v124 = v116 + v123;
  v125 = (v11 - 8);
  v126 = *a3;
  v127 = a3[1];
  if ((v116 + v123) == a4)
  {
    v128 = a4 + 1;
  }

  else
  {
    v128 = a4;
  }

  v129 = v128 - v116;
  v130 = v128 - v116 - v118 > v119;
  v131 = v128 - v116 - v119;
  if (!v122 || !v130)
  {
    v131 = *(a1 + 24);
  }

  v132 = v129 - v131;
  if (v127 <= v129 - v131)
  {
    v133 = v127;
  }

  else
  {
    v133 = 0;
  }

  if (v126 <= v132)
  {
    v134 = v126;
  }

  else
  {
    v134 = 0;
  }

  v135 = v128 + 3;
  if (v6 == 5)
  {
    if (v135 >= v125)
    {
      goto LABEL_1047;
    }

    v462 = 64 - *(a1 + 264);
    v463 = (v11 - 7);
    v464 = v11 - 32;
    v724 = v11 - 3;
    v727 = (v11 - 1);
    v711 = a3[1];
    while (1)
    {
      v139 = v11;
      v465 = v128 + 2;
      v467 = v128 + 1;
      v466 = *(v128 + 1);
      v468 = v128 + 128;
      v469 = (0xCF1BBCDCBB000000 * *v128) >> v462;
      v470 = *(v8 + 4 * v469);
      if (v134)
      {
        v471 = 2;
        while (1)
        {
          v475 = v465;
          _X11 = v135;
          v477 = *&v465[-v134];
          v478 = (0xCF1BBCDCBB000000 * v466) >> v462;
          v479 = v128 - v116;
          *(v8 + 4 * v469) = v128 - v116;
          if (*v475 == v477)
          {
            break;
          }

          if (v470 >= v123 && *v128 == *(v116 + v470))
          {
            goto LABEL_696;
          }

          v470 = *(v8 + 4 * v478);
          v469 = (0xCF1BBCDCBB000000 * *v475) >> v462;
          v479 = v467 - v116;
          *(v8 + 4 * v478) = v467 - v116;
          if (v470 >= v123 && *v467 == *(v116 + v470))
          {
            goto LABEL_697;
          }

          v470 = *(v8 + 4 * v469);
          v466 = *_X11;
          v465 = &v475[v471];
          if (&v475[v471] >= v468)
          {
            v472 = v471 + 1;
            __asm
            {
              PRFM            #0, [X11,#0x40]
              PRFM            #0, [X11,#0x80]
            }

            v468 += 128;
          }

          else
          {
            v472 = v471;
          }

          v135 = &_X11[v471];
          v471 = v472;
          v467 = _X11;
          v128 = v475;
          if (v135 >= v125)
          {
LABEL_1048:
            LODWORD(v163) = v134;
            v11 = v139;
            goto LABEL_1071;
          }
        }

        v484 = *(v475 - 1) == v475[-v134 - 1];
        v485 = *(v475 - 1) == v475[-v134 - 1] ? 5 : 4;
        v128 = &v475[-v484];
        v486 = &v475[-v134 - v484];
        *(v8 + 4 * v478) = v467 - v116;
        v487 = 1;
        v163 = v134;
        v134 = v133;
        v11 = v139;
        v488 = v724;
      }

      else
      {
        v471 = 2;
        while (1)
        {
          v475 = v465;
          _X11 = v135;
          v478 = (0xCF1BBCDCBB000000 * v466) >> v462;
          v479 = v128 - v116;
          *(v8 + 4 * v469) = v128 - v116;
          if (v470 >= v123 && *v128 == *(v116 + v470))
          {
LABEL_696:
            v11 = v139;
            goto LABEL_698;
          }

          v470 = *(v8 + 4 * v478);
          v469 = (0xCF1BBCDCBB000000 * *v465) >> v462;
          v479 = v467 - v116;
          *(v8 + 4 * v478) = v467 - v116;
          if (v470 >= v123 && *v467 == *(v116 + v470))
          {
            break;
          }

          v470 = *(v8 + 4 * v469);
          v466 = *_X11;
          v465 += v471;
          if (&v475[v471] >= v468)
          {
            v480 = v471 + 1;
            __asm
            {
              PRFM            #0, [X11,#0x40]
              PRFM            #0, [X11,#0x80]
            }

            v468 += 128;
          }

          else
          {
            v480 = v471;
          }

          v135 = &_X11[v471];
          v471 = v480;
          v467 = _X11;
          v128 = v475;
          if (v135 >= v125)
          {
LABEL_1049:
            LODWORD(v163) = 0;
            v11 = v139;
            goto LABEL_1071;
          }
        }

LABEL_697:
        v128 = v467;
        LODWORD(v467) = v475;
        v478 = v469;
        v11 = v139;
        if (v471 < 5)
        {
LABEL_698:
          *(v8 + 4 * v478) = v467 - v116;
        }

        v486 = (v116 + v470);
        v163 = (v128 - v486);
        v487 = v163 + 3;
        v488 = v724;
        if (v470 <= v123 || v128 <= a4)
        {
          v485 = 4;
        }

        else
        {
          v489 = v128 - 1;
          v490 = (v116 - 1 + v470);
          v485 = 4;
          while (*v489 == *v490)
          {
            ++v485;
            v491 = v489 - 1;
            v492 = v490 - 1;
            if (v489 > a4)
            {
              --v489;
              v706 = v490-- > v124;
              if (v706)
              {
                continue;
              }
            }

            v128 = v491 + 1;
            v486 = v492 + 1;
            goto LABEL_708;
          }

          v128 = v489 + 1;
          v486 = v490 + 1;
        }
      }

LABEL_708:
      v493 = &v128[v485];
      v494 = &v486[v485];
      if (v463 <= &v128[v485])
      {
        v496 = &v128[v485];
LABEL_715:
        if (v496 < v488 && *v494 == *v496)
        {
          v494 += 4;
          v496 += 4;
        }

        if (v496 < v727 && *v494 == *v496)
        {
          v494 += 2;
          v496 += 2;
        }

        if (v496 < v11 && *v494 == *v496)
        {
          ++v496;
        }

        v499 = v496 - v493;
      }

      else if (*v494 == *v493)
      {
        v494 = &v486[v485 + 8];
        v495 = &v128[v485 + 8];
        do
        {
          v496 = v495;
          if (v495 >= v463)
          {
            goto LABEL_715;
          }

          v498 = *v494;
          v494 += 8;
          v497 = v498;
          v495 += 8;
        }

        while (v498 == *v496);
        v499 = &v496[__clz(__rbit64(*v496 ^ v497)) >> 3] - v493;
      }

      else
      {
        v499 = __clz(__rbit64(*v493 ^ *v494)) >> 3;
      }

      v500 = v128 - a4;
      v501 = *(a2 + 24);
      if (v128 > v464)
      {
        break;
      }

      *v501 = *a4;
      v503 = *(a2 + 24);
      if (v500 <= 0x10)
      {
        *(a2 + 24) = v503 + v500;
        v514 = *(a2 + 8);
        v515 = v727;
        goto LABEL_759;
      }

      v502 = v487;
      *(v503 + 16) = *(a4 + 1);
      if (v500 >= 33)
      {
        v504 = v503 + v500;
        v505 = (v503 + 32);
        v506 = (a4 + 48);
        do
        {
          *v505 = *(v506 - 1);
          v507 = *v506;
          v506 += 2;
          v505[1] = v507;
          v505 += 2;
        }

        while (v505 < v504);
      }

LABEL_756:
      *(a2 + 24) += v500;
      v514 = *(a2 + 8);
      if (v500 >= 0x10000)
      {
        v527 = (v514 - *a2) >> 3;
        *(a2 + 72) = 1;
        *(a2 + 76) = v527;
      }

      v515 = v727;
      v487 = v502;
      v127 = v711;
LABEL_759:
      v528 = v499 + v485;
      *(v514 + 4) = v500;
      *v514 = v487;
      v529 = v499 + v485 - 3;
      if (v529 >= 0x10000)
      {
        v530 = (v514 - *a2) >> 3;
        *(a2 + 72) = 2;
        *(a2 + 76) = v530;
      }

      *(v514 + 6) = v529;
      v531 = v514 + 8;
      *(a2 + 8) = v514 + 8;
      a4 = &v128[v528];
      if (&v128[v528] <= v125)
      {
        *(v8 + 4 * ((0xCF1BBCDCBB000000 * *(v116 + 2 + v479)) >> v462)) = v479 + 2;
        *(v8 + 4 * ((0xCF1BBCDCBB000000 * *(a4 - 2)) >> v462)) = a4 - 2 - v116;
        if (!v134)
        {
          v133 = 0;
          goto LABEL_794;
        }

        v532 = v163;
        while (2)
        {
          v133 = v532;
          v532 = v134;
          if (*a4 != *&a4[-v134])
          {
            v163 = v133;
            v133 = v134;
            goto LABEL_794;
          }

          v533 = -v134;
          v534 = (a4 + 4);
          v535 = &a4[-v134 + 4];
          if (v463 > (a4 + 4))
          {
            v536 = *v535;
            if (v536 == *v534)
            {
              v537 = a4 + 12;
              v535 = &a4[v533 + 12];
              do
              {
                v538 = v537;
                if (v537 >= v463)
                {
                  goto LABEL_774;
                }

                v540 = *v535;
                v535 += 8;
                v539 = v540;
                v537 += 8;
              }

              while (v540 == *v538);
              v541 = &v538[__clz(__rbit64(*v538 ^ v539)) >> 3] - v534;
            }

            else
            {
              v541 = __clz(__rbit64(*v534 ^ v536)) >> 3;
            }

LABEL_788:
            *(v8 + 4 * ((0xCF1BBCDCBB000000 * *a4) >> v462)) = a4 - v116;
            if (a4 <= v464)
            {
              **(a2 + 24) = *a4;
              v531 = *(a2 + 8);
            }

            *(v531 + 4) = 0;
            *v531 = 1;
            if (v541 + 1 >= 0x10000)
            {
              v542 = (v531 - *a2) >> 3;
              *(a2 + 72) = 2;
              *(a2 + 76) = v542;
            }

            a4 += v541 + 4;
            *(v531 + 6) = v541 + 1;
            v531 += 8;
            *(a2 + 8) = v531;
            v134 = v133;
            v163 = v532;
            if (a4 > v125)
            {
              goto LABEL_794;
            }

            continue;
          }

          break;
        }

        v538 = a4 + 4;
LABEL_774:
        if (v538 >= v488)
        {
          if (v538 >= v515)
          {
            goto LABEL_778;
          }
        }

        else
        {
          if (*v535 == *v538)
          {
            v535 += 4;
            v538 += 4;
          }

          if (v538 >= v515)
          {
LABEL_778:
            if (v538 < v11)
            {
              goto LABEL_779;
            }

            goto LABEL_781;
          }
        }

        if (*v535 == *v538)
        {
          v535 += 2;
          v538 += 2;
        }

        if (v538 < v11)
        {
LABEL_779:
          if (*v535 == *v538)
          {
            ++v538;
          }
        }

LABEL_781:
        v541 = v538 - v534;
        goto LABEL_788;
      }

      v133 = v134;
LABEL_794:
      v135 = a4 + 3;
      v128 = a4;
      v134 = v163;
      if ((a4 + 3) >= v125)
      {
        goto LABEL_1071;
      }
    }

    if (a4 <= v464)
    {
      v508 = (v501 + v464 - a4);
      *v501 = *a4;
      v502 = v487;
      if (v464 - a4 >= 17)
      {
        v509 = v501 + 1;
        v510 = (a4 + 32);
        do
        {
          *v509 = *(v510 - 1);
          v511 = *v510;
          v510 += 2;
          v509[1] = v511;
          v509 += 2;
        }

        while (v509 < v508);
      }

      a4 = v464;
      v501 = v508;
    }

    else
    {
      v502 = v487;
    }

    if (a4 >= v128)
    {
      goto LABEL_756;
    }

    v512 = v128 - a4;
    if ((v128 - a4) < 8)
    {
      v516 = v501;
    }

    else if ((v501 - a4) < 0x20)
    {
      v516 = v501;
    }

    else
    {
      if (v512 < 0x20)
      {
        v513 = 0;
LABEL_750:
        v521 = v512 & 0xFFFFFFFFFFFFFFF8;
        v516 = v501 + (v512 & 0xFFFFFFFFFFFFFFF8);
        v522 = v513 - (v512 & 0xFFFFFFFFFFFFFFF8);
        v523 = &a4[v513];
        v524 = (v501 + v513);
        do
        {
          v525 = *v523++;
          *v524++ = v525;
          v522 += 8;
        }

        while (v522);
        v11 = v139;
        v488 = v724;
        if (v512 == v521)
        {
          goto LABEL_756;
        }

        a4 += v521;
        goto LABEL_755;
      }

      v513 = v512 & 0xFFFFFFFFFFFFFFE0;
      v517 = (a4 + 16);
      v518 = v501 + 1;
      v519 = v512 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v520 = *v517;
        *(v518 - 1) = *(v517 - 1);
        *v518 = v520;
        v517 += 2;
        v518 += 2;
        v519 -= 32;
      }

      while (v519);
      v488 = v724;
      if (v512 == v513)
      {
        goto LABEL_756;
      }

      if ((v512 & 0x18) != 0)
      {
        goto LABEL_750;
      }

      a4 += v513;
      v516 = v501 + v513;
      v488 = v724;
    }

    do
    {
LABEL_755:
      v526 = *a4++;
      *v516++ = v526;
    }

    while (a4 != v128);
    goto LABEL_756;
  }

  if (v6 == 6)
  {
    if (v135 >= v125)
    {
      goto LABEL_1047;
    }

    v299 = 64 - *(a1 + 264);
    v300 = (v11 - 7);
    v301 = v11 - 32;
    v723 = v11 - 3;
    v726 = (v11 - 1);
    while (1)
    {
      v139 = v11;
      v302 = v128 + 2;
      v304 = v128 + 1;
      v303 = *(v128 + 1);
      v305 = v128 + 128;
      v306 = (0xCF1BBCDCBF9B0000 * *v128) >> v299;
      v307 = *(v8 + 4 * v306);
      if (v134)
      {
        v308 = 2;
        while (1)
        {
          v312 = v302;
          _X11 = v135;
          v314 = *&v302[-v134];
          v315 = (0xCF1BBCDCBF9B0000 * v303) >> v299;
          v316 = v128 - v116;
          *(v8 + 4 * v306) = v128 - v116;
          if (*v312 == v314)
          {
            break;
          }

          if (v307 >= v123 && *v128 == *(v116 + v307))
          {
            goto LABEL_444;
          }

          v307 = *(v8 + 4 * v315);
          v306 = (0xCF1BBCDCBF9B0000 * *v312) >> v299;
          v316 = v304 - v116;
          *(v8 + 4 * v315) = v304 - v116;
          if (v307 >= v123 && *v304 == *(v116 + v307))
          {
            goto LABEL_445;
          }

          v307 = *(v8 + 4 * v306);
          v303 = *_X11;
          v302 = &v312[v308];
          if (&v312[v308] >= v305)
          {
            v309 = v308 + 1;
            __asm
            {
              PRFM            #0, [X11,#0x40]
              PRFM            #0, [X11,#0x80]
            }

            v305 += 128;
          }

          else
          {
            v309 = v308;
          }

          v135 = &_X11[v308];
          v308 = v309;
          v304 = _X11;
          v128 = v312;
          if (v135 >= v125)
          {
            goto LABEL_1048;
          }
        }

        v321 = *(v312 - 1) == v312[-v134 - 1];
        v322 = *(v312 - 1) == v312[-v134 - 1] ? 5 : 4;
        v128 = &v312[-v321];
        v323 = &v312[-v134 - v321];
        *(v8 + 4 * v315) = v304 - v116;
        v324 = 1;
        v163 = v134;
        v134 = v133;
        v11 = v139;
        v325 = v723;
      }

      else
      {
        v308 = 2;
        while (1)
        {
          v312 = v302;
          _X11 = v135;
          v315 = (0xCF1BBCDCBF9B0000 * v303) >> v299;
          v316 = v128 - v116;
          *(v8 + 4 * v306) = v128 - v116;
          if (v307 >= v123 && *v128 == *(v116 + v307))
          {
LABEL_444:
            v11 = v139;
            goto LABEL_446;
          }

          v307 = *(v8 + 4 * v315);
          v306 = (0xCF1BBCDCBF9B0000 * *v302) >> v299;
          v316 = v304 - v116;
          *(v8 + 4 * v315) = v304 - v116;
          if (v307 >= v123 && *v304 == *(v116 + v307))
          {
            break;
          }

          v307 = *(v8 + 4 * v306);
          v303 = *_X11;
          v302 += v308;
          if (&v312[v308] >= v305)
          {
            v317 = v308 + 1;
            __asm
            {
              PRFM            #0, [X11,#0x40]
              PRFM            #0, [X11,#0x80]
            }

            v305 += 128;
          }

          else
          {
            v317 = v308;
          }

          v135 = &_X11[v308];
          v308 = v317;
          v304 = _X11;
          v128 = v312;
          if (v135 >= v125)
          {
            goto LABEL_1049;
          }
        }

LABEL_445:
        v128 = v304;
        LODWORD(v304) = v312;
        v315 = v306;
        v11 = v139;
        if (v308 < 5)
        {
LABEL_446:
          *(v8 + 4 * v315) = v304 - v116;
        }

        v323 = (v116 + v307);
        v163 = (v128 - v323);
        v324 = v163 + 3;
        v325 = v723;
        if (v307 <= v123 || v128 <= a4)
        {
          v322 = 4;
        }

        else
        {
          v326 = v128 - 1;
          v327 = (v116 - 1 + v307);
          v322 = 4;
          while (*v326 == *v327)
          {
            ++v322;
            v328 = v326 - 1;
            v329 = v327 - 1;
            if (v326 > a4)
            {
              --v326;
              v706 = v327-- > v124;
              if (v706)
              {
                continue;
              }
            }

            v128 = v328 + 1;
            v323 = v329 + 1;
            goto LABEL_456;
          }

          v128 = v326 + 1;
          v323 = v327 + 1;
        }
      }

LABEL_456:
      v330 = &v128[v322];
      v331 = &v323[v322];
      if (v300 <= &v128[v322])
      {
        v333 = &v128[v322];
LABEL_463:
        if (v333 < v325 && *v331 == *v333)
        {
          v331 += 4;
          v333 += 4;
        }

        if (v333 < v726 && *v331 == *v333)
        {
          v331 += 2;
          v333 += 2;
        }

        if (v333 < v11 && *v331 == *v333)
        {
          ++v333;
        }

        v336 = v333 - v330;
      }

      else if (*v331 == *v330)
      {
        v331 = &v323[v322 + 8];
        v332 = &v128[v322 + 8];
        do
        {
          v333 = v332;
          if (v332 >= v300)
          {
            goto LABEL_463;
          }

          v335 = *v331;
          v331 += 8;
          v334 = v335;
          v332 += 8;
        }

        while (v335 == *v333);
        v336 = &v333[__clz(__rbit64(*v333 ^ v334)) >> 3] - v330;
      }

      else
      {
        v336 = __clz(__rbit64(*v330 ^ *v331)) >> 3;
      }

      v337 = v128 - a4;
      v338 = *(a2 + 24);
      if (v128 > v301)
      {
        break;
      }

      *v338 = *a4;
      v345 = *(a2 + 24);
      if (v337 <= 0x10)
      {
        *(a2 + 24) = v345 + v337;
        v350 = *(a2 + 8);
        v351 = v726;
        goto LABEL_506;
      }

      v715 = v324;
      *(v345 + 16) = *(a4 + 1);
      if (v337 >= 33)
      {
        v346 = v345 + v337;
        v347 = (v345 + 32);
        v348 = (a4 + 48);
        do
        {
          *v347 = *(v348 - 1);
          v349 = *v348;
          v348 += 2;
          v347[1] = v349;
          v347 += 2;
        }

        while (v347 < v346);
      }

LABEL_503:
      *(a2 + 24) += v337;
      v350 = *(a2 + 8);
      if (v337 >= 0x10000)
      {
        v363 = (v350 - *a2) >> 3;
        *(a2 + 72) = 1;
        *(a2 + 76) = v363;
      }

      v351 = v726;
      v324 = v715;
LABEL_506:
      v364 = v336 + v322;
      *(v350 + 4) = v337;
      *v350 = v324;
      v365 = v336 + v322 - 3;
      if (v365 >= 0x10000)
      {
        v366 = (v350 - *a2) >> 3;
        *(a2 + 72) = 2;
        *(a2 + 76) = v366;
      }

      *(v350 + 6) = v365;
      v367 = v350 + 8;
      *(a2 + 8) = v350 + 8;
      a4 = &v128[v364];
      if (&v128[v364] <= v125)
      {
        *(v8 + 4 * ((0xCF1BBCDCBF9B0000 * *(v116 + 2 + v316)) >> v299)) = v316 + 2;
        *(v8 + 4 * ((0xCF1BBCDCBF9B0000 * *(a4 - 2)) >> v299)) = a4 - 2 - v116;
        if (!v134)
        {
          v133 = 0;
          goto LABEL_541;
        }

        v368 = v163;
        while (2)
        {
          v133 = v368;
          v368 = v134;
          if (*a4 != *&a4[-v134])
          {
            v163 = v133;
            v133 = v134;
            goto LABEL_541;
          }

          v369 = -v134;
          v370 = (a4 + 4);
          v371 = &a4[-v134 + 4];
          if (v300 > (a4 + 4))
          {
            v372 = *v371;
            if (v372 == *v370)
            {
              v373 = a4 + 12;
              v371 = &a4[v369 + 12];
              do
              {
                v374 = v373;
                if (v373 >= v300)
                {
                  goto LABEL_521;
                }

                v376 = *v371;
                v371 += 8;
                v375 = v376;
                v373 += 8;
              }

              while (v376 == *v374);
              v377 = &v374[__clz(__rbit64(*v374 ^ v375)) >> 3] - v370;
            }

            else
            {
              v377 = __clz(__rbit64(*v370 ^ v372)) >> 3;
            }

LABEL_535:
            *(v8 + 4 * ((0xCF1BBCDCBF9B0000 * *a4) >> v299)) = a4 - v116;
            if (a4 <= v301)
            {
              **(a2 + 24) = *a4;
              v367 = *(a2 + 8);
            }

            *(v367 + 4) = 0;
            *v367 = 1;
            if (v377 + 1 >= 0x10000)
            {
              v378 = (v367 - *a2) >> 3;
              *(a2 + 72) = 2;
              *(a2 + 76) = v378;
            }

            a4 += v377 + 4;
            *(v367 + 6) = v377 + 1;
            v367 += 8;
            *(a2 + 8) = v367;
            v134 = v133;
            v163 = v368;
            if (a4 > v125)
            {
              goto LABEL_541;
            }

            continue;
          }

          break;
        }

        v374 = a4 + 4;
LABEL_521:
        if (v374 >= v325)
        {
          if (v374 >= v351)
          {
            goto LABEL_525;
          }
        }

        else
        {
          if (*v371 == *v374)
          {
            v371 += 4;
            v374 += 4;
          }

          if (v374 >= v351)
          {
LABEL_525:
            if (v374 < v11)
            {
              goto LABEL_526;
            }

            goto LABEL_528;
          }
        }

        if (*v371 == *v374)
        {
          v371 += 2;
          v374 += 2;
        }

        if (v374 < v11)
        {
LABEL_526:
          if (*v371 == *v374)
          {
            ++v374;
          }
        }

LABEL_528:
        v377 = v374 - v370;
        goto LABEL_535;
      }

      v133 = v134;
LABEL_541:
      v135 = a4 + 3;
      v128 = a4;
      v134 = v163;
      if ((a4 + 3) >= v125)
      {
        goto LABEL_1071;
      }
    }

    v715 = v324;
    if (a4 <= v301)
    {
      v339 = (v338 + v301 - a4);
      *v338 = *a4;
      if (v301 - a4 >= 17)
      {
        v340 = v338 + 1;
        v341 = (a4 + 32);
        do
        {
          *v340 = *(v341 - 1);
          v342 = *v341;
          v341 += 2;
          v340[1] = v342;
          v340 += 2;
        }

        while (v340 < v339);
      }

      a4 = v301;
      v338 = v339;
    }

    if (a4 >= v128)
    {
      goto LABEL_503;
    }

    v343 = v128 - a4;
    if ((v128 - a4) < 8)
    {
      v352 = v338;
    }

    else if ((v338 - a4) < 0x20)
    {
      v352 = v338;
    }

    else
    {
      if (v343 < 0x20)
      {
        v344 = 0;
LABEL_497:
        v357 = v343 & 0xFFFFFFFFFFFFFFF8;
        v352 = v338 + (v343 & 0xFFFFFFFFFFFFFFF8);
        v358 = v344 - (v343 & 0xFFFFFFFFFFFFFFF8);
        v359 = &a4[v344];
        v360 = (v338 + v344);
        do
        {
          v361 = *v359++;
          *v360++ = v361;
          v358 += 8;
        }

        while (v358);
        v11 = v139;
        v325 = v723;
        if (v343 == v357)
        {
          goto LABEL_503;
        }

        a4 += v357;
        goto LABEL_502;
      }

      v344 = v343 & 0xFFFFFFFFFFFFFFE0;
      v353 = (a4 + 16);
      v354 = v338 + 1;
      v355 = v343 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v356 = *v353;
        *(v354 - 1) = *(v353 - 1);
        *v354 = v356;
        v353 += 2;
        v354 += 2;
        v355 -= 32;
      }

      while (v355);
      v325 = v723;
      if (v343 == v344)
      {
        goto LABEL_503;
      }

      if ((v343 & 0x18) != 0)
      {
        goto LABEL_497;
      }

      a4 += v344;
      v352 = v338 + v344;
      v325 = v723;
    }

    do
    {
LABEL_502:
      v362 = *a4++;
      *v352++ = v362;
    }

    while (a4 != v128);
    goto LABEL_503;
  }

  if (v6 != 7)
  {
    if (v135 >= v125)
    {
      goto LABEL_1047;
    }

    v729 = v11;
    v623 = 32 - *(a1 + 264);
    v624 = (v11 - 7);
    v721 = (v11 - 1);
    v625 = v11 - 32;
    v728 = v11 - 3;
    while (1)
    {
      v626 = v128 + 2;
      v628 = v128 + 1;
      v627 = *(v128 + 1);
      v629 = v128 + 128;
      v630 = (-1640531535 * *v128) >> v623;
      v631 = *(v8 + 4 * v630);
      if (v134)
      {
        v632 = 2;
        while (1)
        {
          v636 = v626;
          _X7 = v135;
          v638 = *&v626[-v134];
          v639 = (-1640531535 * v627) >> v623;
          v640 = v128 - v116;
          *(v8 + 4 * v630) = v128 - v116;
          v641 = *v626;
          if (v641 == v638)
          {
            break;
          }

          if (v631 >= v123 && *v128 == *(v116 + v631))
          {
            goto LABEL_949;
          }

          v631 = *(v8 + 4 * v639);
          v630 = (-1640531535 * v641) >> v623;
          v640 = v628 - v116;
          *(v8 + 4 * v639) = v628 - v116;
          if (v631 >= v123 && *v628 == *(v116 + v631))
          {
            goto LABEL_950;
          }

          v631 = *(v8 + 4 * v630);
          v627 = *_X7;
          v626 = &v636[v632];
          if (&v636[v632] >= v629)
          {
            v633 = v632 + 1;
            __asm
            {
              PRFM            #0, [X7,#0x40]
              PRFM            #0, [X7,#0x80]
            }

            v629 += 128;
          }

          else
          {
            v633 = v632;
          }

          v135 = &_X7[v632];
          v632 = v633;
          v628 = _X7;
          v128 = v636;
          if (v135 >= v125)
          {
            LODWORD(v163) = v134;
LABEL_1070:
            v11 = v729;
            goto LABEL_1071;
          }
        }

        v646 = *(v636 - 1) == v636[-v134 - 1];
        if (*(v636 - 1) == v636[-v134 - 1])
        {
          v647 = 5;
        }

        else
        {
          v647 = 4;
        }

        v128 = &v636[-v646];
        v648 = &v636[-v134 - v646];
        *(v8 + 4 * v639) = v628 - v116;
        v649 = 1;
        v163 = v134;
        v134 = v133;
        v650 = v728;
        v11 = v729;
      }

      else
      {
        v632 = 2;
        while (1)
        {
          v636 = v626;
          _X7 = v135;
          v639 = (-1640531535 * v627) >> v623;
          v640 = v128 - v116;
          *(v8 + 4 * v630) = v128 - v116;
          if (v631 >= v123 && *v128 == *(v116 + v631))
          {
LABEL_949:
            v11 = v729;
            goto LABEL_951;
          }

          v631 = *(v8 + 4 * v639);
          v630 = (-1640531535 * *v626) >> v623;
          v640 = v628 - v116;
          *(v8 + 4 * v639) = v628 - v116;
          if (v631 >= v123 && *v628 == *(v116 + v631))
          {
            break;
          }

          v631 = *(v8 + 4 * v630);
          v627 = *_X7;
          v626 += v632;
          if (&v636[v632] >= v629)
          {
            v642 = v632 + 1;
            __asm
            {
              PRFM            #0, [X7,#0x40]
              PRFM            #0, [X7,#0x80]
            }

            v629 += 128;
          }

          else
          {
            v642 = v632;
          }

          v135 = &_X7[v632];
          v632 = v642;
          v628 = _X7;
          v128 = v636;
          if (v135 >= v125)
          {
            LODWORD(v163) = 0;
            goto LABEL_1070;
          }
        }

LABEL_950:
        v128 = v628;
        LODWORD(v628) = v636;
        v639 = v630;
        v11 = v729;
        if (v632 < 5)
        {
LABEL_951:
          *(v8 + 4 * v639) = v628 - v116;
        }

        v648 = (v116 + v631);
        v163 = (v128 - v648);
        v649 = v163 + 3;
        v650 = v728;
        if (v631 <= v123 || v128 <= a4)
        {
          v647 = 4;
        }

        else
        {
          v651 = v128 - 1;
          v652 = (v116 - 1 + v631);
          v647 = 4;
          while (*v651 == *v652)
          {
            ++v647;
            v653 = v651 - 1;
            v654 = v652 - 1;
            if (v651 > a4)
            {
              --v651;
              v706 = v652-- > v124;
              if (v706)
              {
                continue;
              }
            }

            v128 = v653 + 1;
            v648 = v654 + 1;
            goto LABEL_961;
          }

          v128 = v651 + 1;
          v648 = v652 + 1;
        }
      }

LABEL_961:
      v655 = &v128[v647];
      v656 = &v648[v647];
      if (v624 <= &v128[v647])
      {
        v658 = &v128[v647];
LABEL_968:
        if (v658 < v650 && *v656 == *v658)
        {
          v656 += 4;
          v658 += 4;
        }

        if (v658 < v721 && *v656 == *v658)
        {
          v656 += 2;
          v658 += 2;
        }

        if (v658 < v11 && *v656 == *v658)
        {
          ++v658;
        }

        v661 = v658 - v655;
      }

      else if (*v656 == *v655)
      {
        v656 = &v648[v647 + 8];
        v657 = &v128[v647 + 8];
        do
        {
          v658 = v657;
          if (v657 >= v624)
          {
            goto LABEL_968;
          }

          v660 = *v656;
          v656 += 8;
          v659 = v660;
          v657 += 8;
        }

        while (v660 == *v658);
        v661 = &v658[__clz(__rbit64(*v658 ^ v659)) >> 3] - v655;
      }

      else
      {
        v661 = __clz(__rbit64(*v655 ^ *v656)) >> 3;
      }

      v662 = v128 - a4;
      v663 = *(a2 + 24);
      if (v128 <= v625)
      {
        *v663 = *a4;
        v670 = *(a2 + 24);
        if (v662 <= 0x10)
        {
          *(a2 + 24) = v670 + v662;
          v675 = *(a2 + 8);
          goto LABEL_1010;
        }

        *(v670 + 16) = *(a4 + 1);
        if (v662 >= 33)
        {
          v671 = v670 + v662;
          v672 = (v670 + 32);
          v673 = (a4 + 48);
          do
          {
            *v672 = *(v673 - 1);
            v674 = *v673;
            v673 += 2;
            v672[1] = v674;
            v672 += 2;
          }

          while (v672 < v671);
        }
      }

      else
      {
        if (a4 <= v625)
        {
          v664 = (v663 + v625 - a4);
          *v663 = *a4;
          if (v625 - a4 >= 17)
          {
            v665 = v663 + 1;
            v666 = (a4 + 32);
            do
            {
              *v665 = *(v666 - 1);
              v667 = *v666;
              v666 += 2;
              v665[1] = v667;
              v665 += 2;
            }

            while (v665 < v664);
          }

          a4 = v625;
          v663 = v664;
        }

        if (a4 >= v128)
        {
          goto LABEL_1008;
        }

        v668 = v128 - a4;
        if ((v128 - a4) < 8)
        {
          v676 = v663;
          goto LABEL_1007;
        }

        if ((v663 - a4) < 0x20)
        {
          v676 = v663;
          goto LABEL_1007;
        }

        if (v668 >= 0x20)
        {
          v669 = v668 & 0xFFFFFFFFFFFFFFE0;
          v677 = (a4 + 16);
          v678 = v663 + 1;
          v679 = v668 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v680 = *v677;
            *(v678 - 1) = *(v677 - 1);
            *v678 = v680;
            v677 += 2;
            v678 += 2;
            v679 -= 32;
          }

          while (v679);
          v650 = v728;
          if (v668 == v669)
          {
            goto LABEL_1008;
          }

          if ((v668 & 0x18) == 0)
          {
            a4 += v669;
            v676 = v663 + v669;
            v650 = v728;
            do
            {
LABEL_1007:
              v686 = *a4++;
              *v676++ = v686;
            }

            while (a4 != v128);
            goto LABEL_1008;
          }
        }

        else
        {
          v669 = 0;
        }

        v681 = v668 & 0xFFFFFFFFFFFFFFF8;
        v676 = v663 + (v668 & 0xFFFFFFFFFFFFFFF8);
        v682 = v669 - (v668 & 0xFFFFFFFFFFFFFFF8);
        v683 = &a4[v669];
        v684 = (v663 + v669);
        do
        {
          v685 = *v683++;
          *v684++ = v685;
          v682 += 8;
        }

        while (v682);
        v650 = v728;
        v11 = v729;
        if (v668 != v681)
        {
          a4 += v681;
          goto LABEL_1007;
        }
      }

LABEL_1008:
      *(a2 + 24) += v662;
      v675 = *(a2 + 8);
      if (v662 >= 0x10000)
      {
        v687 = (v675 - *a2) >> 3;
        *(a2 + 72) = 1;
        *(a2 + 76) = v687;
      }

LABEL_1010:
      v688 = v661 + v647;
      *(v675 + 4) = v662;
      *v675 = v649;
      v689 = v661 + v647 - 3;
      if (v689 >= 0x10000)
      {
        v690 = (v675 - *a2) >> 3;
        *(a2 + 72) = 2;
        *(a2 + 76) = v690;
      }

      *(v675 + 6) = v689;
      v691 = v675 + 8;
      *(a2 + 8) = v675 + 8;
      a4 = &v128[v688];
      if (&v128[v688] <= v125)
      {
        *(v8 + 4 * ((-1640531535 * *(v116 + 2 + v640)) >> v623)) = v640 + 2;
        *(v8 + 4 * ((-1640531535 * *(a4 - 2)) >> v623)) = a4 - 2 - v116;
        if (!v134)
        {
          v133 = 0;
          goto LABEL_1045;
        }

        v692 = v163;
        while (2)
        {
          v133 = v692;
          v692 = v134;
          v693 = v134;
          if (*a4 != *&a4[-v134])
          {
            v163 = v133;
            v133 = v134;
            goto LABEL_1045;
          }

          v694 = -v134;
          v695 = (a4 + 4);
          v696 = &a4[-v693 + 4];
          if (v624 > (a4 + 4))
          {
            v697 = *v696;
            if (v697 == *v695)
            {
              v698 = a4 + 12;
              v696 = &a4[v694 + 12];
              do
              {
                v699 = v698;
                if (v698 >= v624)
                {
                  goto LABEL_1025;
                }

                v701 = *v696;
                v696 += 8;
                v700 = v701;
                v698 += 8;
              }

              while (v701 == *v699);
              v702 = &v699[__clz(__rbit64(*v699 ^ v700)) >> 3] - v695;
            }

            else
            {
              v702 = __clz(__rbit64(*v695 ^ v697)) >> 3;
            }

LABEL_1039:
            *(v8 + 4 * ((-1640531535 * *a4) >> v623)) = a4 - v116;
            if (a4 <= v625)
            {
              **(a2 + 24) = *a4;
              v691 = *(a2 + 8);
            }

            *(v691 + 4) = 0;
            *v691 = 1;
            if (v702 + 1 >= 0x10000)
            {
              v703 = (v691 - *a2) >> 3;
              *(a2 + 72) = 2;
              *(a2 + 76) = v703;
            }

            a4 += v702 + 4;
            *(v691 + 6) = v702 + 1;
            v691 += 8;
            *(a2 + 8) = v691;
            v134 = v133;
            v163 = v692;
            if (a4 > v125)
            {
              goto LABEL_1045;
            }

            continue;
          }

          break;
        }

        v699 = a4 + 4;
LABEL_1025:
        if (v699 >= v650)
        {
          if (v699 >= v721)
          {
            goto LABEL_1029;
          }
        }

        else
        {
          if (*v696 == *v699)
          {
            v696 += 4;
            v699 += 4;
          }

          if (v699 >= v721)
          {
LABEL_1029:
            if (v699 < v11)
            {
              goto LABEL_1030;
            }

            goto LABEL_1032;
          }
        }

        if (*v696 == *v699)
        {
          v696 += 2;
          v699 += 2;
        }

        if (v699 < v11)
        {
LABEL_1030:
          if (*v696 == *v699)
          {
            ++v699;
          }
        }

LABEL_1032:
        v702 = v699 - v695;
        goto LABEL_1039;
      }

      v133 = v134;
LABEL_1045:
      v135 = a4 + 3;
      v128 = a4;
      v134 = v163;
      if ((a4 + 3) >= v125)
      {
        goto LABEL_1071;
      }
    }
  }

  if (v135 >= v125)
  {
LABEL_1047:
    LODWORD(v163) = v134;
    goto LABEL_1071;
  }

  v136 = 64 - *(a1 + 264);
  v137 = (v11 - 7);
  v138 = v11 - 32;
  v722 = v11 - 3;
  v725 = (v11 - 1);
  do
  {
    v139 = v11;
    v140 = v128 + 2;
    v142 = v128 + 1;
    v141 = *(v128 + 1);
    v143 = v128 + 128;
    v144 = (0xCF1BBCDCBFA56300 * *v128) >> v136;
    v145 = *(v8 + 4 * v144);
    if (v134)
    {
      v146 = 2;
      while (1)
      {
        v150 = v140;
        _X11 = v135;
        v152 = *&v140[-v134];
        v153 = (0xCF1BBCDCBFA56300 * v141) >> v136;
        v154 = v128 - v116;
        *(v8 + 4 * v144) = v128 - v116;
        if (*v150 == v152)
        {
          break;
        }

        if (v145 >= v123 && *v128 == *(v116 + v145))
        {
          goto LABEL_191;
        }

        v145 = *(v8 + 4 * v153);
        v144 = (0xCF1BBCDCBFA56300 * *v150) >> v136;
        v154 = v142 - v116;
        *(v8 + 4 * v153) = v142 - v116;
        if (v145 >= v123 && *v142 == *(v116 + v145))
        {
          goto LABEL_192;
        }

        v145 = *(v8 + 4 * v144);
        v141 = *_X11;
        v140 = &v150[v146];
        if (&v150[v146] >= v143)
        {
          v147 = v146 + 1;
          __asm
          {
            PRFM            #0, [X11,#0x40]
            PRFM            #0, [X11,#0x80]
          }

          v143 += 128;
        }

        else
        {
          v147 = v146;
        }

        v135 = &_X11[v146];
        v146 = v147;
        v142 = _X11;
        v128 = v150;
        if (v135 >= v125)
        {
          goto LABEL_1048;
        }
      }

      v159 = *(v150 - 1) == v150[-v134 - 1];
      if (*(v150 - 1) == v150[-v134 - 1])
      {
        v160 = 5;
      }

      else
      {
        v160 = 4;
      }

      v128 = &v150[-v159];
      v161 = &v150[-v134 - v159];
      *(v8 + 4 * v153) = v142 - v116;
      v162 = 1;
      v163 = v134;
      v134 = v133;
      v11 = v139;
      v164 = v722;
    }

    else
    {
      v146 = 2;
      while (1)
      {
        v150 = v140;
        _X11 = v135;
        v153 = (0xCF1BBCDCBFA56300 * v141) >> v136;
        v154 = v128 - v116;
        *(v8 + 4 * v144) = v128 - v116;
        if (v145 >= v123 && *v128 == *(v116 + v145))
        {
LABEL_191:
          v11 = v139;
          goto LABEL_193;
        }

        v145 = *(v8 + 4 * v153);
        v144 = (0xCF1BBCDCBFA56300 * *v140) >> v136;
        v154 = v142 - v116;
        *(v8 + 4 * v153) = v142 - v116;
        if (v145 >= v123 && *v142 == *(v116 + v145))
        {
          break;
        }

        v145 = *(v8 + 4 * v144);
        v141 = *_X11;
        v140 += v146;
        if (&v150[v146] >= v143)
        {
          v155 = v146 + 1;
          __asm
          {
            PRFM            #0, [X11,#0x40]
            PRFM            #0, [X11,#0x80]
          }

          v143 += 128;
        }

        else
        {
          v155 = v146;
        }

        v135 = &_X11[v146];
        v146 = v155;
        v142 = _X11;
        v128 = v150;
        if (v135 >= v125)
        {
          goto LABEL_1049;
        }
      }

LABEL_192:
      v128 = v142;
      LODWORD(v142) = v150;
      v153 = v144;
      v11 = v139;
      if (v146 >= 5)
      {
        goto LABEL_194;
      }

LABEL_193:
      *(v8 + 4 * v153) = v142 - v116;
LABEL_194:
      v161 = (v116 + v145);
      v163 = (v128 - v161);
      v162 = v163 + 3;
      v164 = v722;
      if (v145 <= v123 || v128 <= a4)
      {
        v160 = 4;
      }

      else
      {
        v165 = v128 - 1;
        v166 = (v116 - 1 + v145);
        v160 = 4;
        while (*v165 == *v166)
        {
          ++v160;
          v167 = v165 - 1;
          v168 = v166 - 1;
          if (v165 > a4)
          {
            --v165;
            v706 = v166-- > v124;
            if (v706)
            {
              continue;
            }
          }

          v128 = v167 + 1;
          v161 = v168 + 1;
          goto LABEL_203;
        }

        v128 = v165 + 1;
        v161 = v166 + 1;
      }
    }

LABEL_203:
    v169 = &v128[v160];
    v170 = &v161[v160];
    if (v137 <= &v128[v160])
    {
      v172 = &v128[v160];
    }

    else
    {
      if (*v170 != *v169)
      {
        v175 = __clz(__rbit64(*v169 ^ *v170)) >> 3;
        goto LABEL_221;
      }

      v170 = &v161[v160 + 8];
      v171 = &v128[v160 + 8];
      while (1)
      {
        v172 = v171;
        if (v171 >= v137)
        {
          break;
        }

        v174 = *v170;
        v170 += 8;
        v173 = v174;
        v171 += 8;
        if (v174 != *v172)
        {
          v175 = &v172[__clz(__rbit64(*v172 ^ v173)) >> 3] - v169;
          goto LABEL_221;
        }
      }
    }

    if (v172 < v164 && *v170 == *v172)
    {
      v170 += 4;
      v172 += 4;
    }

    if (v172 < v725 && *v170 == *v172)
    {
      v170 += 2;
      v172 += 2;
    }

    if (v172 < v11 && *v170 == *v172)
    {
      ++v172;
    }

    v175 = v172 - v169;
LABEL_221:
    v176 = v128 - a4;
    v177 = *(a2 + 24);
    if (v128 > v138)
    {
      v713 = v162;
      if (a4 <= v138)
      {
        v178 = (v177 + v138 - a4);
        *v177 = *a4;
        if (v138 - a4 >= 17)
        {
          v179 = v177 + 1;
          v180 = (a4 + 32);
          do
          {
            *v179 = *(v180 - 1);
            v181 = *v180;
            v180 += 2;
            v179[1] = v181;
            v179 += 2;
          }

          while (v179 < v178);
        }

        a4 = v138;
        v177 = v178;
      }

      if (a4 >= v128)
      {
        goto LABEL_250;
      }

      v182 = v128 - a4;
      if ((v128 - a4) < 8)
      {
        v191 = v177;
        goto LABEL_249;
      }

      if ((v177 - a4) < 0x20)
      {
        v191 = v177;
        goto LABEL_249;
      }

      if (v182 >= 0x20)
      {
        v183 = v182 & 0xFFFFFFFFFFFFFFE0;
        v192 = (a4 + 16);
        v193 = v177 + 1;
        v194 = v182 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v195 = *v192;
          *(v193 - 1) = *(v192 - 1);
          *v193 = v195;
          v192 += 2;
          v193 += 2;
          v194 -= 32;
        }

        while (v194);
        v164 = v722;
        if (v182 == v183)
        {
          goto LABEL_250;
        }

        if ((v182 & 0x18) == 0)
        {
          a4 += v183;
          v191 = v177 + v183;
          v164 = v722;
          goto LABEL_249;
        }
      }

      else
      {
        v183 = 0;
      }

      v196 = v182 & 0xFFFFFFFFFFFFFFF8;
      v191 = v177 + (v182 & 0xFFFFFFFFFFFFFFF8);
      v197 = v183 - (v182 & 0xFFFFFFFFFFFFFFF8);
      v198 = &a4[v183];
      v199 = (v177 + v183);
      do
      {
        v200 = *v198++;
        *v199++ = v200;
        v197 += 8;
      }

      while (v197);
      v11 = v139;
      v164 = v722;
      if (v182 == v196)
      {
        goto LABEL_250;
      }

      a4 += v196;
      do
      {
LABEL_249:
        v201 = *a4++;
        *v191++ = v201;
      }

      while (a4 != v128);
LABEL_250:
      *(a2 + 24) += v176;
      v189 = *(a2 + 8);
      if (v176 >= 0x10000)
      {
        v202 = (v189 - *a2) >> 3;
        *(a2 + 72) = 1;
        *(a2 + 76) = v202;
      }

      v190 = v725;
      v162 = v713;
      goto LABEL_253;
    }

    *v177 = *a4;
    v184 = *(a2 + 24);
    if (v176 > 0x10)
    {
      v713 = v162;
      *(v184 + 16) = *(a4 + 1);
      if (v176 >= 33)
      {
        v185 = v184 + v176;
        v186 = (v184 + 32);
        v187 = (a4 + 48);
        do
        {
          *v186 = *(v187 - 1);
          v188 = *v187;
          v187 += 2;
          v186[1] = v188;
          v186 += 2;
        }

        while (v186 < v185);
      }

      goto LABEL_250;
    }

    *(a2 + 24) = v184 + v176;
    v189 = *(a2 + 8);
    v190 = v725;
LABEL_253:
    v203 = v175 + v160;
    *(v189 + 4) = v176;
    *v189 = v162;
    v204 = v175 + v160 - 3;
    if (v204 >= 0x10000)
    {
      v205 = (v189 - *a2) >> 3;
      *(a2 + 72) = 2;
      *(a2 + 76) = v205;
    }

    *(v189 + 6) = v204;
    v206 = v189 + 8;
    *(a2 + 8) = v189 + 8;
    a4 = &v128[v203];
    if (&v128[v203] > v125)
    {
      v133 = v134;
      goto LABEL_288;
    }

    *(v8 + 4 * ((0xCF1BBCDCBFA56300 * *(v116 + 2 + v154)) >> v136)) = v154 + 2;
    *(v8 + 4 * ((0xCF1BBCDCBFA56300 * *(a4 - 2)) >> v136)) = a4 - 2 - v116;
    if (!v134)
    {
      v133 = 0;
      goto LABEL_288;
    }

    v207 = v163;
    while (1)
    {
      v133 = v207;
      v207 = v134;
      if (*a4 != *&a4[-v134])
      {
        break;
      }

      v208 = -v134;
      v209 = (a4 + 4);
      v210 = &a4[-v134 + 4];
      if (v137 <= (a4 + 4))
      {
        v213 = a4 + 4;
      }

      else
      {
        v211 = *v210;
        if (v211 != *v209)
        {
          v216 = __clz(__rbit64(*v209 ^ v211)) >> 3;
          goto LABEL_282;
        }

        v212 = a4 + 12;
        v210 = &a4[v208 + 12];
        while (1)
        {
          v213 = v212;
          if (v212 >= v137)
          {
            break;
          }

          v215 = *v210;
          v210 += 8;
          v214 = v215;
          v212 += 8;
          if (v215 != *v213)
          {
            v216 = &v213[__clz(__rbit64(*v213 ^ v214)) >> 3] - v209;
            goto LABEL_282;
          }
        }
      }

      if (v213 >= v164)
      {
        if (v213 < v190)
        {
          goto LABEL_277;
        }
      }

      else
      {
        if (*v210 == *v213)
        {
          v210 += 4;
          v213 += 4;
        }

        if (v213 < v190)
        {
LABEL_277:
          if (*v210 == *v213)
          {
            v210 += 2;
            v213 += 2;
          }

          if (v213 >= v11)
          {
            goto LABEL_275;
          }

LABEL_273:
          if (*v210 == *v213)
          {
            ++v213;
          }

          goto LABEL_275;
        }
      }

      if (v213 < v11)
      {
        goto LABEL_273;
      }

LABEL_275:
      v216 = v213 - v209;
LABEL_282:
      *(v8 + 4 * ((0xCF1BBCDCBFA56300 * *a4) >> v136)) = a4 - v116;
      if (a4 <= v138)
      {
        **(a2 + 24) = *a4;
        v206 = *(a2 + 8);
      }

      *(v206 + 4) = 0;
      *v206 = 1;
      if (v216 + 1 >= 0x10000)
      {
        v217 = (v206 - *a2) >> 3;
        *(a2 + 72) = 2;
        *(a2 + 76) = v217;
      }

      a4 += v216 + 4;
      *(v206 + 6) = v216 + 1;
      v206 += 8;
      *(a2 + 8) = v206;
      v134 = v133;
      v163 = v207;
      if (a4 > v125)
      {
        goto LABEL_288;
      }
    }

    v163 = v133;
    v133 = v134;
LABEL_288:
    v135 = a4 + 3;
    v128 = a4;
    v134 = v163;
  }

  while ((a4 + 3) < v125);
LABEL_1071:
  if (v126 <= v132)
  {
    v707 = 0;
  }

  else
  {
    v707 = v126;
  }

  if (v127 <= v132)
  {
    v708 = 0;
  }

  else
  {
    v708 = v127;
  }

  if (v163)
  {
    v707 = v163;
    v709 = v126 > v132;
  }

  else
  {
    v709 = 0;
  }

  if (v709)
  {
    v708 = v126;
  }

  if (v133)
  {
    v708 = v133;
  }

  *a3 = v707;
  a3[1] = v708;
  return v11 - a4;
}

uint64_t ZSTD_compressBlock_fast_dictMatchState(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned __int8 *a4, uint64_t a5)
{
  v5 = *(a1 + 272);
  v6 = *(a1 + 112);
  v7 = *(a1 + 264);
  v8 = *(a1 + 276);
  if (v8 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(a1 + 8);
  v11 = *(a1 + 24);
  v12 = &a4[a5];
  v13 = &a4[a5 - 8];
  v14 = *a3;
  v15 = a3[1];
  v16 = *(a1 + 248);
  v17 = *(v16 + 112);
  v18 = *(v16 + 24);
  v19 = *(v16 + 8);
  v762 = *v16;
  v763 = *(v16 + 24);
  v20 = v11 + v19 - *v16;
  v761 = (v10 + v11);
  v21 = &a4[-v10 - v11 + *v16 - v19 - v18];
  v22 = *(v16 + 264);
  v23 = *(a1 + 296);
  if (v5 == 5)
  {
    if (v23 && v22 <= 0x3D)
    {
      v383 = 0;
      do
      {
        _X16 = v17 + v383;
        __asm { PRFM            #2, [X16] }

        v383 += 64;
      }

      while (v383 < 4 << v22);
    }

    v386 = &a4[v9];
    if (&a4[v9] > v13)
    {
      goto LABEL_963;
    }

    v746 = v19 + v18;
    v387 = v9;
    if (v21)
    {
      v33 = a4;
    }

    else
    {
      v33 = a4 + 1;
    }

    v388 = 64 - v7;
    v389 = 56 - v22;
    v390 = v11 - 1;
    v750 = (v12 - 7);
    v742 = (v12 - 3);
    v738 = (v12 - 1);
    v754 = (v12 - 32);
    v758 = v11 + v10 + 8;
LABEL_650:
    v391 = 0xCF1BBCDCBB000000 * *v33;
    v392 = (v391 >> v389) ^ *(v17 + ((v391 >> v389 >> 6) & 0x3FFFFFFFFFFFFFCLL));
    v393 = (v33 + 256);
    v394 = *(v17 + ((v391 >> v389 >> 6) & 0x3FFFFFFFFFFFFFCLL));
    while (1)
    {
      v395 = v386;
      v396 = v391 >> v388;
      v397 = *(v6 + 4 * (v391 >> v388));
      v398 = v33 - v10;
      v399 = v33 - v10 - v14 + 1;
      v400 = *v395;
      *(v6 + 4 * v396) = v33 - v10;
      if (v390 - v399 >= 3)
      {
        v401 = (v19 + v399 - v20);
        if (v399 >= v11)
        {
          v401 = (v10 + v399);
        }

        if (*v401 == *(v33 + 1))
        {
          break;
        }
      }

      if (!v392)
      {
        v402 = v394 >> 8;
        if (v402 > v763 && *(v19 + v402) == *v33 && v397 <= v11)
        {
          v424 = (v33 + 4);
          v425 = (v19 + v402 + 4);
          v426 = &v762[-v19 - v402 + v33];
          if (v426 >= v12)
          {
            v426 = v12;
          }

          if (v426 - 7 <= v424)
          {
            v427 = (v19 + v402 + 4);
            v429 = v33 + 4;
LABEL_746:
            v417 = (v12 - 7);
            if (v429 < v426 - 3 && *v427 == *v429)
            {
              ++v427;
              ++v429;
            }

            if (v429 < v426 - 1 && *v427 == *v429)
            {
              v427 = (v427 + 2);
              v429 = (v429 + 2);
            }

            if (v429 < v426 && *v427 == *v429)
            {
              v429 = (v429 + 1);
            }

            v454 = v746;
            v432 = v429 - v424;
          }

          else
          {
            if (*v425 == *v424)
            {
              v427 = (v19 + 12 + v402);
              v428 = (v33 + 12);
              do
              {
                v429 = v428;
                if (v428 >= v426 - 7)
                {
                  goto LABEL_746;
                }

                v431 = *v427;
                v427 += 2;
                v430 = v431;
                v428 += 8;
              }

              while (v431 == *v429);
              v432 = v429 + (__clz(__rbit64(*v429 ^ v430)) >> 3) - v424;
            }

            else
            {
              v432 = __clz(__rbit64(*v424 ^ *v425)) >> 3;
            }

            v454 = v746;
            v417 = (v12 - 7);
          }

          if ((v425 + v432) == v762)
          {
            v461 = &v424[v432];
            if (v417 <= v461)
            {
              v467 = (v10 + v11);
              v466 = v461;
              goto LABEL_829;
            }

            if (*v761 == *v461)
            {
              v462 = 0;
              v463 = &v33[v432];
              while (1)
              {
                v464 = &v463[v462 + 12];
                if (v464 >= v417)
                {
                  break;
                }

                v465 = *(v758 + v462);
                v462 += 8;
                if (v465 != *v464)
                {
                  v466 = &v463[v462 + 4 + (__clz(__rbit64(*v464 ^ v465)) >> 3)];
                  goto LABEL_838;
                }
              }

              v467 = (v758 + v462);
              v466 = &v33[v432 + 12 + v462];
LABEL_829:
              if (v466 < v742 && *v467 == *v466)
              {
                ++v467;
                v466 += 4;
              }

              if (v466 < v738 && *v467 == *v466)
              {
                v467 = (v467 + 2);
                v466 += 2;
              }

              if (v466 < v12 && *v467 == *v466)
              {
                ++v466;
              }

LABEL_838:
              v501 = v466 - v461;
            }

            else
            {
              v501 = __clz(__rbit64(*v461 ^ *v761)) >> 3;
            }

            v432 += v501;
          }

          v439 = v432 + 4;
          if (v33 <= a4)
          {
            goto LABEL_847;
          }

          v502 = v33 - 1;
          v503 = (v19 - 1 + v402);
          while (*v502 == *v503)
          {
            ++v439;
            v504 = v502 - 1;
            if (v502 > a4)
            {
              --v502;
              v49 = v503-- > v454;
              if (v49)
              {
                continue;
              }
            }

            v33 = v504 + 1;
            goto LABEL_847;
          }

          v33 = v502 + 1;
LABEL_847:
          v443 = v33;
          v444 = v33 - a4;
          v505 = *(a2 + 24);
          if (v33 > v754)
          {
            if (a4 <= v754)
            {
              v506 = (v505 + v754 - a4);
              *v505 = *a4;
              if ((v754 - a4) >= 17)
              {
                v512 = v505 + 1;
                v513 = (a4 + 32);
                do
                {
                  *v512 = *(v513 - 1);
                  v514 = *v513;
                  v513 += 2;
                  v512[1] = v514;
                  v512 += 2;
                }

                while (v512 < v506);
                a4 = v12 - 32;
              }

              else
              {
                a4 = v12 - 32;
              }

              v505 = v506;
            }

            if (a4 >= v33)
            {
              goto LABEL_892;
            }

            v515 = v33 - a4;
            if ((v33 - a4) < 8)
            {
              v517 = v505;
            }

            else if ((v505 - a4) < 0x20)
            {
              v517 = v505;
            }

            else
            {
              if (v515 < 0x20)
              {
                v516 = 0;
LABEL_872:
                v522 = v515 & 0xFFFFFFFFFFFFFFF8;
                v517 = v505 + (v515 & 0xFFFFFFFFFFFFFFF8);
                v523 = v516 - (v515 & 0xFFFFFFFFFFFFFFF8);
                v524 = &a4[v516];
                v525 = (v505 + v516);
                do
                {
                  v526 = *v524;
                  v524 += 8;
                  *v525++ = v526;
                  v523 += 8;
                }

                while (v523);
                if (v515 != v522)
                {
                  a4 += v522;
                  goto LABEL_891;
                }

LABEL_892:
                *(a2 + 24) += v444;
                v452 = *(a2 + 8);
                if (v444 >= 0x10000)
                {
                  v534 = (v452 - *a2) >> 3;
                  *(a2 + 72) = 1;
                  *(a2 + 76) = v534;
                }

                v417 = (v12 - 7);
                goto LABEL_895;
              }

              v516 = v515 & 0xFFFFFFFFFFFFFFE0;
              v518 = (a4 + 16);
              v519 = v505 + 1;
              v520 = v515 & 0xFFFFFFFFFFFFFFE0;
              do
              {
                v521 = *v518;
                *(v519 - 1) = *(v518 - 1);
                *v519 = v521;
                v518 += 2;
                v519 += 2;
                v520 -= 32;
              }

              while (v520);
              if (v515 == v516)
              {
                goto LABEL_892;
              }

              if ((v515 & 0x18) != 0)
              {
                goto LABEL_872;
              }

              a4 += v516;
              v517 = v505 + v516;
            }

            do
            {
LABEL_891:
              v533 = *a4++;
              *v517++ = v533;
            }

            while (a4 != v33);
            goto LABEL_892;
          }

          *v505 = *a4;
          v507 = *(a2 + 24);
          if (v444 > 0x10)
          {
            *(v507 + 16) = *(a4 + 1);
            if (v444 >= 33)
            {
              v508 = v507 + v444;
              v509 = (v507 + 32);
              v510 = (a4 + 48);
              do
              {
                *v509 = *(v510 - 1);
                v511 = *v510;
                v510 += 2;
                v509[1] = v511;
                v509 += 2;
              }

              while (v509 < v508);
            }

            goto LABEL_892;
          }

          *(a2 + 24) = v507 + v444;
          v452 = *(a2 + 8);
LABEL_895:
          v530 = v398 - v20 - v402;
LABEL_896:
          *(v452 + 4) = v444;
          *v452 = v530 + 3;
          LOWORD(v529) = v439 - 3;
          v15 = v14;
          v14 = v530;
          if ((v439 - 3) >> 16)
          {
LABEL_897:
            v535 = (v452 - *a2) >> 3;
            *(a2 + 72) = 2;
            *(a2 + 76) = v535;
            v14 = v530;
          }

LABEL_898:
          *(v452 + 6) = v529;
          v536 = v452 + 8;
          *(a2 + 8) = v452 + 8;
          v33 = &v443[v439];
          if (&v443[v439] > v13)
          {
            v183 = v15;
            v184 = v14;
LABEL_956:
            v387 = v9;
            v386 = &v33[v9];
            a4 = v33;
            v14 = v184;
            v15 = v183;
            if (&v33[v9] > v13)
            {
              goto LABEL_964;
            }

            goto LABEL_650;
          }

          *(v6 + 4 * ((0xCF1BBCDCBB000000 * *(v10 + 2 + v398)) >> v388)) = v398 + 2;
          *(v6 + 4 * ((0xCF1BBCDCBB000000 * *(v33 - 2)) >> v388)) = v33 - 2 - v10;
          while (2)
          {
            v184 = v15;
            v15 = v14;
            v537 = (v33 - v10 - v184);
            if (v537 >= v11)
            {
              v538 = v10;
            }

            else
            {
              v538 = v19 - v20;
            }

            if ((v390 - v537) < 3 || (v539 = v538 + v537, *(v538 + v537) != *v33))
            {
              v183 = v184;
              v184 = v14;
              goto LABEL_956;
            }

            if (v537 >= v11)
            {
              v540 = v12;
            }

            else
            {
              v540 = v762;
            }

            v541 = (v33 + 4);
            v542 = (v539 + 4);
            v543 = &v540[v33 - v539];
            if (v543 >= v12)
            {
              v543 = v12;
            }

            if (v543 - 7 <= v541)
            {
              v544 = v542;
              v546 = v33 + 4;
LABEL_919:
              if (v546 < v543 - 3 && *v544 == *v546)
              {
                ++v544;
                ++v546;
              }

              if (v546 < v543 - 1 && *v544 == *v546)
              {
                v544 = (v544 + 2);
                v546 = (v546 + 2);
              }

              if (v546 < v543 && *v544 == *v546)
              {
                v546 = (v546 + 1);
              }

              v417 = (v12 - 7);
              v549 = v546 - v541;
            }

            else if (*v542 == *v541)
            {
              v544 = (v538 + v537 + 12);
              v545 = (v33 + 12);
              do
              {
                v546 = v545;
                if (v545 >= v543 - 7)
                {
                  goto LABEL_919;
                }

                v548 = *v544;
                v544 += 2;
                v547 = v548;
                v545 += 8;
              }

              while (v548 == *v546);
              v549 = v546 + (__clz(__rbit64(*v546 ^ v547)) >> 3) - v541;
              v417 = (v12 - 7);
            }

            else
            {
              v549 = __clz(__rbit64(*v541 ^ *v542)) >> 3;
            }

            if ((v542 + v549) == v540)
            {
              v550 = &v541[v549];
              if (v417 <= v550)
              {
                v556 = (v10 + v11);
                v555 = v550;
                goto LABEL_940;
              }

              if (*v761 == *v550)
              {
                v551 = 0;
                v552 = &v33[v549];
                while (1)
                {
                  v553 = &v552[v551 + 12];
                  if (v553 >= v417)
                  {
                    break;
                  }

                  v554 = *(v758 + v551);
                  v551 += 8;
                  if (v554 != *v553)
                  {
                    v555 = &v552[v551 + 4 + (__clz(__rbit64(*v553 ^ v554)) >> 3)];
                    goto LABEL_949;
                  }
                }

                v556 = (v758 + v551);
                v555 = &v33[v549 + 12 + v551];
LABEL_940:
                if (v555 < v742 && *v556 == *v555)
                {
                  ++v556;
                  v555 += 4;
                }

                if (v555 < v738 && *v556 == *v555)
                {
                  v556 = (v556 + 2);
                  v555 += 2;
                }

                if (v555 < v12 && *v556 == *v555)
                {
                  ++v555;
                }

LABEL_949:
                v557 = v555 - v550;
              }

              else
              {
                v557 = __clz(__rbit64(*v550 ^ *v761)) >> 3;
              }

              v549 += v557;
            }

            if (v33 <= v754)
            {
              **(a2 + 24) = *v33;
              v536 = *(a2 + 8);
            }

            *(v536 + 4) = 0;
            *v536 = 1;
            if (v549 + 1 >= 0x10000)
            {
              v558 = (v536 - *a2) >> 3;
              *(a2 + 72) = 2;
              *(a2 + 76) = v558;
            }

            *(v536 + 6) = v549 + 1;
            v536 += 8;
            *(a2 + 8) = v536;
            *(v6 + 4 * ((0xCF1BBCDCBB000000 * *v33) >> v388)) = v33 - v10;
            v33 += v549 + 4;
            v14 = v184;
            v183 = v15;
            if (v33 > v13)
            {
              goto LABEL_956;
            }

            continue;
          }
        }
      }

      if (v397 > v11)
      {
        v404 = v10 + v397;
        if (*(v10 + v397) == *v33)
        {
          v415 = (v33 + 4);
          v416 = (v404 + 4);
          v417 = (v12 - 7);
          if (v750 <= (v33 + 4))
          {
            v419 = v33 + 4;
LABEL_697:
            if (v419 < v742 && *v416 == *v419)
            {
              ++v416;
              v419 += 4;
            }

            if (v419 < v738 && *v416 == *v419)
            {
              v416 = (v416 + 2);
              v419 += 2;
            }

            if (v419 < v12 && *v416 == *v419)
            {
              ++v419;
            }

            v423 = v10 + v11;
            v422 = v419 - v415;
          }

          else
          {
            if (*v416 == *v415)
            {
              v416 = (v10 + 12 + v397);
              v418 = v33 + 12;
              do
              {
                v419 = v418;
                if (v418 >= v750)
                {
                  goto LABEL_697;
                }

                v421 = *v416;
                v416 += 2;
                v420 = v421;
                v418 += 8;
              }

              while (v421 == *v419);
              v422 = &v419[__clz(__rbit64(*v419 ^ v420)) >> 3] - v415;
            }

            else
            {
              v422 = __clz(__rbit64(*v415 ^ *v416)) >> 3;
            }

            v423 = v10 + v11;
          }

          v439 = v422 + 4;
          if (v33 <= a4)
          {
            v443 = v33;
          }

          else
          {
            v440 = v33 - 1;
            v441 = (v10 - 1 + v397);
            while (*v440 == *v441)
            {
              ++v439;
              v442 = v440 - 1;
              if (v440 > a4)
              {
                --v440;
                v49 = v441-- > v423;
                if (v49)
                {
                  continue;
                }
              }

              v443 = v442 + 1;
              goto LABEL_734;
            }

            v443 = v440 + 1;
          }

LABEL_734:
          v444 = v443 - a4;
          v445 = *(a2 + 24);
          if (v443 > v754)
          {
            if (a4 <= v754)
            {
              v446 = (v445 + v754 - a4);
              *v445 = *a4;
              if ((v754 - a4) >= 17)
              {
                v455 = v445 + 1;
                v456 = (a4 + 32);
                do
                {
                  *v455 = *(v456 - 1);
                  v457 = *v456;
                  v456 += 2;
                  v455[1] = v457;
                  v455 += 2;
                }

                while (v455 < v446);
                a4 = v12 - 32;
              }

              else
              {
                a4 = v12 - 32;
              }

              v445 = v446;
            }

            if (a4 >= v443)
            {
              goto LABEL_886;
            }

            v458 = v443 - a4;
            if ((v443 - a4) < 8)
            {
              v468 = v445;
            }

            else if ((v445 - a4) < 0x20)
            {
              v468 = v445;
            }

            else
            {
              if (v458 < 0x20)
              {
                v459 = 0;
LABEL_782:
                v473 = v458 & 0xFFFFFFFFFFFFFFF8;
                v468 = v445 + (v458 & 0xFFFFFFFFFFFFFFF8);
                v474 = v459 - (v458 & 0xFFFFFFFFFFFFFFF8);
                v475 = &a4[v459];
                v476 = (v445 + v459);
                do
                {
                  v477 = *v475;
                  v475 += 8;
                  *v476++ = v477;
                  v474 += 8;
                }

                while (v474);
                if (v458 != v473)
                {
                  a4 += v473;
                  goto LABEL_885;
                }

LABEL_886:
                *(a2 + 24) += v444;
                v452 = *(a2 + 8);
                if (v444 >= 0x10000)
                {
                  v532 = (v452 - *a2) >> 3;
                  *(a2 + 72) = 1;
                  *(a2 + 76) = v532;
                }

                v417 = (v12 - 7);
                goto LABEL_889;
              }

              v459 = v458 & 0xFFFFFFFFFFFFFFE0;
              v469 = (a4 + 16);
              v470 = v445 + 1;
              v471 = v458 & 0xFFFFFFFFFFFFFFE0;
              do
              {
                v472 = *v469;
                *(v470 - 1) = *(v469 - 1);
                *v470 = v472;
                v469 += 2;
                v470 += 2;
                v471 -= 32;
              }

              while (v471);
              if (v458 == v459)
              {
                goto LABEL_886;
              }

              if ((v458 & 0x18) != 0)
              {
                goto LABEL_782;
              }

              a4 += v459;
              v468 = v445 + v459;
            }

            do
            {
LABEL_885:
              v531 = *a4++;
              *v468++ = v531;
            }

            while (a4 != v443);
            goto LABEL_886;
          }

          *v445 = *a4;
          v447 = *(a2 + 24);
          if (v444 > 0x10)
          {
            *(v447 + 16) = *(a4 + 1);
            if (v444 >= 33)
            {
              v448 = v447 + v444;
              v449 = (v447 + 32);
              v450 = (a4 + 48);
              do
              {
                *v449 = *(v450 - 1);
                v451 = *v450;
                v450 += 2;
                v449[1] = v451;
                v449 += 2;
              }

              while (v449 < v448);
            }

            goto LABEL_886;
          }

          *(a2 + 24) = v447 + v444;
          v452 = *(a2 + 8);
LABEL_889:
          v530 = (v33 - v404);
          goto LABEL_896;
        }
      }

      if (v395 >= v393)
      {
        ++v387;
      }

      v386 = &v395[v387];
      if (&v395[v387] > v13)
      {
        goto LABEL_963;
      }

      v391 = 0xCF1BBCDCBB000000 * v400;
      v393 += (v395 >= v393) << 8;
      v394 = *(v17 + ((v391 >> v389 >> 6) & 0x3FFFFFFFFFFFFFCLL));
      LOBYTE(v392) = (v391 >> v389) ^ v394;
      v33 = v395;
    }

    if (v399 >= v11)
    {
      v405 = v12;
    }

    else
    {
      v405 = v762;
    }

    v406 = (v33 + 5);
    v407 = v401 + 1;
    v408 = &v33[v405 - (v401 + 1) + 5];
    if (v408 >= v12)
    {
      v408 = v12;
    }

    if (v408 - 7 <= v406)
    {
      v409 = v401 + 1;
      v411 = v33 + 5;
LABEL_686:
      if (v411 < v408 - 3 && *v409 == *v411)
      {
        ++v409;
        ++v411;
      }

      if (v411 < v408 - 1 && *v409 == *v411)
      {
        v409 = (v409 + 2);
        v411 = (v411 + 2);
      }

      if (v411 < v408 && *v409 == *v411)
      {
        v411 = (v411 + 1);
      }

      v417 = (v12 - 7);
      v414 = v411 - v406;
    }

    else
    {
      if (*v407 == *v406)
      {
        v409 = v401 + 3;
        v410 = (v33 + 13);
        do
        {
          v411 = v410;
          if (v410 >= v408 - 7)
          {
            goto LABEL_686;
          }

          v413 = *v409;
          v409 += 2;
          v412 = v413;
          v410 += 8;
        }

        while (v413 == *v411);
        v414 = v411 + (__clz(__rbit64(*v411 ^ v412)) >> 3) - v406;
      }

      else
      {
        v414 = __clz(__rbit64(*v406 ^ *v407)) >> 3;
      }

      v417 = (v12 - 7);
    }

    if (v407 + v414 != v405)
    {
LABEL_798:
      v443 = v33 + 1;
      v478 = v33 + 1 - a4;
      v479 = *(a2 + 24);
      if (v443 <= v754)
      {
        *v479 = *a4;
        v481 = *(a2 + 24);
        if (v478 <= 0x10)
        {
          *(a2 + 24) = v481 + v478;
          v452 = *(a2 + 8);
          goto LABEL_882;
        }

        *(v481 + 16) = *(a4 + 1);
        if (v478 >= 33)
        {
          v482 = v481 + v478;
          v483 = (v481 + 32);
          v484 = (a4 + 48);
          do
          {
            *v483 = *(v484 - 1);
            v485 = *v484;
            v484 += 2;
            v483[1] = v485;
            v483 += 2;
          }

          while (v483 < v482);
        }

LABEL_878:
        *(a2 + 24) += v478;
        v452 = *(a2 + 8);
        if (v478 >= 0x10000)
        {
          v528 = (v452 - *a2) >> 3;
          *(a2 + 72) = 1;
          *(a2 + 76) = v528;
        }

        v417 = (v12 - 7);
LABEL_882:
        v439 = v414 + 4;
        *(v452 + 4) = v478;
        *v452 = 1;
        v529 = v414 + 1;
        v530 = v14;
        if (v529 >> 16)
        {
          goto LABEL_897;
        }

        goto LABEL_898;
      }

      if (a4 <= v754)
      {
        v480 = (v479 + v754 - a4);
        *v479 = *a4;
        if ((v754 - a4) >= 17)
        {
          v486 = v479 + 1;
          v487 = (a4 + 32);
          do
          {
            *v486 = *(v487 - 1);
            v488 = *v487;
            v487 += 2;
            v486[1] = v488;
            v486 += 2;
          }

          while (v486 < v480);
          a4 = v12 - 32;
        }

        else
        {
          a4 = v12 - 32;
        }

        v479 = v480;
      }

      if (a4 >= v443)
      {
        goto LABEL_878;
      }

      v489 = v443 - a4;
      if ((v443 - a4) < 8)
      {
        v491 = v479;
      }

      else if ((v479 - a4) < 0x20)
      {
        v491 = v479;
      }

      else
      {
        if (v489 < 0x20)
        {
          v490 = 0;
LABEL_823:
          v496 = v489 & 0xFFFFFFFFFFFFFFF8;
          v491 = v479 + (v489 & 0xFFFFFFFFFFFFFFF8);
          v497 = v490 - (v489 & 0xFFFFFFFFFFFFFFF8);
          v498 = &a4[v490];
          v499 = (v479 + v490);
          do
          {
            v500 = *v498;
            v498 += 8;
            *v499++ = v500;
            v497 += 8;
          }

          while (v497);
          if (v489 == v496)
          {
            goto LABEL_878;
          }

          a4 += v496;
          goto LABEL_877;
        }

        v490 = v489 & 0xFFFFFFFFFFFFFFE0;
        v492 = (a4 + 16);
        v493 = v479 + 1;
        v494 = v489 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v495 = *v492;
          *(v493 - 1) = *(v492 - 1);
          *v493 = v495;
          v492 += 2;
          v493 += 2;
          v494 -= 32;
        }

        while (v494);
        if (v489 == v490)
        {
          goto LABEL_878;
        }

        if ((v489 & 0x18) != 0)
        {
          goto LABEL_823;
        }

        a4 += v490;
        v491 = v479 + v490;
      }

      do
      {
LABEL_877:
        v527 = *a4++;
        *v491++ = v527;
      }

      while (a4 != v443);
      goto LABEL_878;
    }

    v433 = &v406[v414];
    if (v417 <= v433)
    {
      v453 = (v10 + v11);
      v438 = v433;
    }

    else
    {
      if (*v761 != *v433)
      {
        v460 = __clz(__rbit64(*v433 ^ *v761)) >> 3;
LABEL_797:
        v414 += v460;
        goto LABEL_798;
      }

      v434 = 0;
      v435 = &v33[v414];
      while (1)
      {
        v436 = &v435[v434 + 13];
        if (v436 >= v417)
        {
          break;
        }

        v437 = *(v758 + v434);
        v434 += 8;
        if (v437 != *v436)
        {
          v438 = &v435[v434 + 5 + (__clz(__rbit64(*v436 ^ v437)) >> 3)];
          goto LABEL_796;
        }
      }

      v453 = (v758 + v434);
      v438 = &v33[v414 + 13 + v434];
    }

    if (v438 < v742 && *v453 == *v438)
    {
      ++v453;
      v438 += 4;
    }

    if (v438 < v738 && *v453 == *v438)
    {
      v453 = (v453 + 2);
      v438 += 2;
    }

    if (v438 < v12 && *v453 == *v438)
    {
      ++v438;
    }

LABEL_796:
    v460 = v438 - v433;
    goto LABEL_797;
  }

  if (v5 == 6)
  {
    v745 = v19 + v18;
    if (v23 && v22 <= 0x3D)
    {
      v207 = 0;
      do
      {
        _X16 = v17 + v207;
        __asm { PRFM            #2, [X16] }

        v207 += 64;
      }

      while (v207 < 4 << v22);
    }

    v210 = &a4[v9];
    if (&a4[v9] > v13)
    {
      goto LABEL_963;
    }

    v211 = v9;
    if (v21)
    {
      v33 = a4;
    }

    else
    {
      v33 = a4 + 1;
    }

    v212 = 64 - v7;
    v213 = 56 - v22;
    v214 = v11 - 1;
    v749 = (v12 - 7);
    v741 = (v12 - 3);
    v737 = (v12 - 1);
    v753 = (v12 - 32);
    v757 = v11 + v10 + 8;
LABEL_333:
    v215 = 0xCF1BBCDCBF9B0000 * *v33;
    v216 = (v215 >> v213) ^ *(v17 + ((v215 >> v213 >> 6) & 0x3FFFFFFFFFFFFFCLL));
    v217 = (v33 + 256);
    v218 = *(v17 + ((v215 >> v213 >> 6) & 0x3FFFFFFFFFFFFFCLL));
    while (1)
    {
      v219 = v210;
      v220 = v215 >> v212;
      v221 = *(v6 + 4 * (v215 >> v212));
      v222 = v33 - v10;
      v223 = v33 - v10 - v14 + 1;
      v224 = *v219;
      *(v6 + 4 * v220) = v33 - v10;
      if (v214 - v223 >= 3)
      {
        v225 = (v10 + v223);
        if (v223 < v11)
        {
          v225 = (v19 + v223 - v20);
        }

        if (*v225 == *(v33 + 1))
        {
          break;
        }
      }

      if (!v216)
      {
        v226 = v218 >> 8;
        if (v226 > v763 && *(v19 + v226) == *v33 && v221 <= v11)
        {
          v248 = (v33 + 4);
          v249 = (v19 + v226 + 4);
          v250 = &v762[-v19 - v226 + v33];
          if (v250 >= v12)
          {
            v250 = v12;
          }

          if (v250 - 7 <= v248)
          {
            v251 = (v19 + v226 + 4);
            v253 = v33 + 4;
LABEL_429:
            v241 = (v12 - 7);
            if (v253 < v250 - 3 && *v251 == *v253)
            {
              ++v251;
              ++v253;
            }

            if (v253 < v250 - 1 && *v251 == *v253)
            {
              v251 = (v251 + 2);
              v253 = (v253 + 2);
            }

            if (v253 < v250 && *v251 == *v253)
            {
              v253 = (v253 + 1);
            }

            v278 = v745;
            v256 = v253 - v248;
          }

          else
          {
            if (*v249 == *v248)
            {
              v251 = (v19 + 12 + v226);
              v252 = (v33 + 12);
              do
              {
                v253 = v252;
                if (v252 >= v250 - 7)
                {
                  goto LABEL_429;
                }

                v255 = *v251;
                v251 += 2;
                v254 = v255;
                v252 += 8;
              }

              while (v255 == *v253);
              v256 = v253 + (__clz(__rbit64(*v253 ^ v254)) >> 3) - v248;
            }

            else
            {
              v256 = __clz(__rbit64(*v248 ^ *v249)) >> 3;
            }

            v278 = v745;
            v241 = (v12 - 7);
          }

          if ((v249 + v256) == v762)
          {
            v285 = &v248[v256];
            if (v241 <= v285)
            {
              v291 = (v10 + v11);
              v290 = v285;
              goto LABEL_512;
            }

            if (*v761 == *v285)
            {
              v286 = 0;
              v287 = &v33[v256];
              while (1)
              {
                v288 = &v287[v286 + 12];
                if (v288 >= v241)
                {
                  break;
                }

                v289 = *(v757 + v286);
                v286 += 8;
                if (v289 != *v288)
                {
                  v290 = &v287[v286 + 4 + (__clz(__rbit64(*v288 ^ v289)) >> 3)];
                  goto LABEL_521;
                }
              }

              v291 = (v757 + v286);
              v290 = &v33[v256 + 12 + v286];
LABEL_512:
              if (v290 < v741 && *v291 == *v290)
              {
                ++v291;
                v290 += 4;
              }

              if (v290 < v737 && *v291 == *v290)
              {
                v291 = (v291 + 2);
                v290 += 2;
              }

              if (v290 < v12 && *v291 == *v290)
              {
                ++v290;
              }

LABEL_521:
              v325 = v290 - v285;
            }

            else
            {
              v325 = __clz(__rbit64(*v285 ^ *v761)) >> 3;
            }

            v256 += v325;
          }

          v263 = v256 + 4;
          if (v33 <= a4)
          {
            goto LABEL_530;
          }

          v326 = v33 - 1;
          v327 = (v19 - 1 + v226);
          while (*v326 == *v327)
          {
            ++v263;
            v328 = v326 - 1;
            if (v326 > a4)
            {
              --v326;
              v49 = v327-- > v278;
              if (v49)
              {
                continue;
              }
            }

            v33 = v328 + 1;
            goto LABEL_530;
          }

          v33 = v326 + 1;
LABEL_530:
          v267 = v33;
          v268 = v33 - a4;
          v329 = *(a2 + 24);
          if (v33 > v753)
          {
            if (a4 <= v753)
            {
              v330 = (v329 + v753 - a4);
              *v329 = *a4;
              if ((v753 - a4) >= 17)
              {
                v336 = v329 + 1;
                v337 = (a4 + 32);
                do
                {
                  *v336 = *(v337 - 1);
                  v338 = *v337;
                  v337 += 2;
                  v336[1] = v338;
                  v336 += 2;
                }

                while (v336 < v330);
                a4 = v12 - 32;
              }

              else
              {
                a4 = v12 - 32;
              }

              v329 = v330;
            }

            if (a4 >= v33)
            {
              goto LABEL_575;
            }

            v339 = v33 - a4;
            if ((v33 - a4) < 8)
            {
              v341 = v329;
            }

            else if ((v329 - a4) < 0x20)
            {
              v341 = v329;
            }

            else
            {
              if (v339 < 0x20)
              {
                v340 = 0;
LABEL_555:
                v346 = v339 & 0xFFFFFFFFFFFFFFF8;
                v341 = v329 + (v339 & 0xFFFFFFFFFFFFFFF8);
                v347 = v340 - (v339 & 0xFFFFFFFFFFFFFFF8);
                v348 = &a4[v340];
                v349 = (v329 + v340);
                do
                {
                  v350 = *v348;
                  v348 += 8;
                  *v349++ = v350;
                  v347 += 8;
                }

                while (v347);
                if (v339 != v346)
                {
                  a4 += v346;
                  goto LABEL_574;
                }

LABEL_575:
                *(a2 + 24) += v268;
                v276 = *(a2 + 8);
                if (v268 >= 0x10000)
                {
                  v358 = (v276 - *a2) >> 3;
                  *(a2 + 72) = 1;
                  *(a2 + 76) = v358;
                }

                v241 = (v12 - 7);
                goto LABEL_578;
              }

              v340 = v339 & 0xFFFFFFFFFFFFFFE0;
              v342 = (a4 + 16);
              v343 = v329 + 1;
              v344 = v339 & 0xFFFFFFFFFFFFFFE0;
              do
              {
                v345 = *v342;
                *(v343 - 1) = *(v342 - 1);
                *v343 = v345;
                v342 += 2;
                v343 += 2;
                v344 -= 32;
              }

              while (v344);
              if (v339 == v340)
              {
                goto LABEL_575;
              }

              if ((v339 & 0x18) != 0)
              {
                goto LABEL_555;
              }

              a4 += v340;
              v341 = v329 + v340;
            }

            do
            {
LABEL_574:
              v357 = *a4++;
              *v341++ = v357;
            }

            while (a4 != v33);
            goto LABEL_575;
          }

          *v329 = *a4;
          v331 = *(a2 + 24);
          if (v268 > 0x10)
          {
            *(v331 + 16) = *(a4 + 1);
            if (v268 >= 33)
            {
              v332 = v331 + v268;
              v333 = (v331 + 32);
              v334 = (a4 + 48);
              do
              {
                *v333 = *(v334 - 1);
                v335 = *v334;
                v334 += 2;
                v333[1] = v335;
                v333 += 2;
              }

              while (v333 < v332);
            }

            goto LABEL_575;
          }

          *(a2 + 24) = v331 + v268;
          v276 = *(a2 + 8);
LABEL_578:
          v354 = v222 - v20 - v226;
LABEL_579:
          *(v276 + 4) = v268;
          *v276 = v354 + 3;
          LOWORD(v353) = v263 - 3;
          v15 = v14;
          v14 = v354;
          if ((v263 - 3) >> 16)
          {
LABEL_580:
            v359 = (v276 - *a2) >> 3;
            *(a2 + 72) = 2;
            *(a2 + 76) = v359;
            v14 = v354;
          }

LABEL_581:
          *(v276 + 6) = v353;
          v360 = v276 + 8;
          *(a2 + 8) = v276 + 8;
          v33 = &v267[v263];
          if (&v267[v263] > v13)
          {
            v183 = v15;
            v184 = v14;
LABEL_639:
            v211 = v9;
            v210 = &v33[v9];
            a4 = v33;
            v14 = v184;
            v15 = v183;
            if (&v33[v9] > v13)
            {
              goto LABEL_964;
            }

            goto LABEL_333;
          }

          *(v6 + 4 * ((0xCF1BBCDCBF9B0000 * *(v10 + 2 + v222)) >> v212)) = v222 + 2;
          *(v6 + 4 * ((0xCF1BBCDCBF9B0000 * *(v33 - 2)) >> v212)) = v33 - 2 - v10;
          while (2)
          {
            v184 = v15;
            v15 = v14;
            v361 = (v33 - v10 - v184);
            if (v361 >= v11)
            {
              v362 = v10;
            }

            else
            {
              v362 = v19 - v20;
            }

            if ((v214 - v361) < 3 || (v363 = v362 + v361, *(v362 + v361) != *v33))
            {
              v183 = v184;
              v184 = v14;
              goto LABEL_639;
            }

            if (v361 >= v11)
            {
              v364 = v12;
            }

            else
            {
              v364 = v762;
            }

            v365 = (v33 + 4);
            v366 = (v363 + 4);
            v367 = &v364[v33 - v363];
            if (v367 >= v12)
            {
              v367 = v12;
            }

            if (v367 - 7 <= v365)
            {
              v368 = v366;
              v370 = v33 + 4;
LABEL_602:
              if (v370 < v367 - 3 && *v368 == *v370)
              {
                ++v368;
                ++v370;
              }

              if (v370 < v367 - 1 && *v368 == *v370)
              {
                v368 = (v368 + 2);
                v370 = (v370 + 2);
              }

              if (v370 < v367 && *v368 == *v370)
              {
                v370 = (v370 + 1);
              }

              v241 = (v12 - 7);
              v373 = v370 - v365;
            }

            else if (*v366 == *v365)
            {
              v368 = (v362 + v361 + 12);
              v369 = (v33 + 12);
              do
              {
                v370 = v369;
                if (v369 >= v367 - 7)
                {
                  goto LABEL_602;
                }

                v372 = *v368;
                v368 += 2;
                v371 = v372;
                v369 += 8;
              }

              while (v372 == *v370);
              v373 = v370 + (__clz(__rbit64(*v370 ^ v371)) >> 3) - v365;
              v241 = (v12 - 7);
            }

            else
            {
              v373 = __clz(__rbit64(*v365 ^ *v366)) >> 3;
            }

            if ((v366 + v373) == v364)
            {
              v374 = &v365[v373];
              if (v241 <= v374)
              {
                v380 = (v10 + v11);
                v379 = v374;
                goto LABEL_623;
              }

              if (*v761 == *v374)
              {
                v375 = 0;
                v376 = &v33[v373];
                while (1)
                {
                  v377 = &v376[v375 + 12];
                  if (v377 >= v241)
                  {
                    break;
                  }

                  v378 = *(v757 + v375);
                  v375 += 8;
                  if (v378 != *v377)
                  {
                    v379 = &v376[v375 + 4 + (__clz(__rbit64(*v377 ^ v378)) >> 3)];
                    goto LABEL_632;
                  }
                }

                v380 = (v757 + v375);
                v379 = &v33[v373 + 12 + v375];
LABEL_623:
                if (v379 < v741 && *v380 == *v379)
                {
                  ++v380;
                  v379 += 4;
                }

                if (v379 < v737 && *v380 == *v379)
                {
                  v380 = (v380 + 2);
                  v379 += 2;
                }

                if (v379 < v12 && *v380 == *v379)
                {
                  ++v379;
                }

LABEL_632:
                v381 = v379 - v374;
              }

              else
              {
                v381 = __clz(__rbit64(*v374 ^ *v761)) >> 3;
              }

              v373 += v381;
            }

            if (v33 <= v753)
            {
              **(a2 + 24) = *v33;
              v360 = *(a2 + 8);
            }

            *(v360 + 4) = 0;
            *v360 = 1;
            if (v373 + 1 >= 0x10000)
            {
              v382 = (v360 - *a2) >> 3;
              *(a2 + 72) = 2;
              *(a2 + 76) = v382;
            }

            *(v360 + 6) = v373 + 1;
            v360 += 8;
            *(a2 + 8) = v360;
            *(v6 + 4 * ((0xCF1BBCDCBF9B0000 * *v33) >> v212)) = v33 - v10;
            v33 += v373 + 4;
            v14 = v184;
            v183 = v15;
            if (v33 > v13)
            {
              goto LABEL_639;
            }

            continue;
          }
        }
      }

      if (v221 > v11)
      {
        v228 = v10 + v221;
        if (*(v10 + v221) == *v33)
        {
          v239 = (v33 + 4);
          v240 = (v228 + 4);
          v241 = (v12 - 7);
          if (v749 <= (v33 + 4))
          {
            v243 = v33 + 4;
LABEL_380:
            if (v243 < v741 && *v240 == *v243)
            {
              ++v240;
              v243 += 4;
            }

            if (v243 < v737 && *v240 == *v243)
            {
              v240 = (v240 + 2);
              v243 += 2;
            }

            if (v243 < v12 && *v240 == *v243)
            {
              ++v243;
            }

            v247 = v10 + v11;
            v246 = v243 - v239;
          }

          else
          {
            if (*v240 == *v239)
            {
              v240 = (v10 + 12 + v221);
              v242 = v33 + 12;
              do
              {
                v243 = v242;
                if (v242 >= v749)
                {
                  goto LABEL_380;
                }

                v245 = *v240;
                v240 += 2;
                v244 = v245;
                v242 += 8;
              }

              while (v245 == *v243);
              v246 = &v243[__clz(__rbit64(*v243 ^ v244)) >> 3] - v239;
            }

            else
            {
              v246 = __clz(__rbit64(*v239 ^ *v240)) >> 3;
            }

            v247 = v10 + v11;
          }

          v263 = v246 + 4;
          if (v33 <= a4)
          {
            v267 = v33;
          }

          else
          {
            v264 = v33 - 1;
            v265 = (v10 - 1 + v221);
            while (*v264 == *v265)
            {
              ++v263;
              v266 = v264 - 1;
              if (v264 > a4)
              {
                --v264;
                v49 = v265-- > v247;
                if (v49)
                {
                  continue;
                }
              }

              v267 = v266 + 1;
              goto LABEL_417;
            }

            v267 = v264 + 1;
          }

LABEL_417:
          v268 = v267 - a4;
          v269 = *(a2 + 24);
          if (v267 > v753)
          {
            if (a4 <= v753)
            {
              v270 = (v269 + v753 - a4);
              *v269 = *a4;
              if ((v753 - a4) >= 17)
              {
                v279 = v269 + 1;
                v280 = (a4 + 32);
                do
                {
                  *v279 = *(v280 - 1);
                  v281 = *v280;
                  v280 += 2;
                  v279[1] = v281;
                  v279 += 2;
                }

                while (v279 < v270);
                a4 = v12 - 32;
              }

              else
              {
                a4 = v12 - 32;
              }

              v269 = v270;
            }

            if (a4 >= v267)
            {
              goto LABEL_569;
            }

            v282 = v267 - a4;
            if ((v267 - a4) < 8)
            {
              v292 = v269;
            }

            else if ((v269 - a4) < 0x20)
            {
              v292 = v269;
            }

            else
            {
              if (v282 < 0x20)
              {
                v283 = 0;
LABEL_465:
                v297 = v282 & 0xFFFFFFFFFFFFFFF8;
                v292 = v269 + (v282 & 0xFFFFFFFFFFFFFFF8);
                v298 = v283 - (v282 & 0xFFFFFFFFFFFFFFF8);
                v299 = &a4[v283];
                v300 = (v269 + v283);
                do
                {
                  v301 = *v299;
                  v299 += 8;
                  *v300++ = v301;
                  v298 += 8;
                }

                while (v298);
                if (v282 != v297)
                {
                  a4 += v297;
                  goto LABEL_568;
                }

LABEL_569:
                *(a2 + 24) += v268;
                v276 = *(a2 + 8);
                if (v268 >= 0x10000)
                {
                  v356 = (v276 - *a2) >> 3;
                  *(a2 + 72) = 1;
                  *(a2 + 76) = v356;
                }

                v241 = (v12 - 7);
                goto LABEL_572;
              }

              v283 = v282 & 0xFFFFFFFFFFFFFFE0;
              v293 = (a4 + 16);
              v294 = v269 + 1;
              v295 = v282 & 0xFFFFFFFFFFFFFFE0;
              do
              {
                v296 = *v293;
                *(v294 - 1) = *(v293 - 1);
                *v294 = v296;
                v293 += 2;
                v294 += 2;
                v295 -= 32;
              }

              while (v295);
              if (v282 == v283)
              {
                goto LABEL_569;
              }

              if ((v282 & 0x18) != 0)
              {
                goto LABEL_465;
              }

              a4 += v283;
              v292 = v269 + v283;
            }

            do
            {
LABEL_568:
              v355 = *a4++;
              *v292++ = v355;
            }

            while (a4 != v267);
            goto LABEL_569;
          }

          *v269 = *a4;
          v271 = *(a2 + 24);
          if (v268 > 0x10)
          {
            *(v271 + 16) = *(a4 + 1);
            if (v268 >= 33)
            {
              v272 = v271 + v268;
              v273 = (v271 + 32);
              v274 = (a4 + 48);
              do
              {
                *v273 = *(v274 - 1);
                v275 = *v274;
                v274 += 2;
                v273[1] = v275;
                v273 += 2;
              }

              while (v273 < v272);
            }

            goto LABEL_569;
          }

          *(a2 + 24) = v271 + v268;
          v276 = *(a2 + 8);
LABEL_572:
          v354 = (v33 - v228);
          goto LABEL_579;
        }
      }

      if (v219 >= v217)
      {
        ++v211;
      }

      v210 = &v219[v211];
      if (&v219[v211] > v13)
      {
        goto LABEL_963;
      }

      v215 = 0xCF1BBCDCBF9B0000 * v224;
      v217 += (v219 >= v217) << 8;
      v218 = *(v17 + ((v215 >> v213 >> 6) & 0x3FFFFFFFFFFFFFCLL));
      LOBYTE(v216) = (v215 >> v213) ^ v218;
      v33 = v219;
    }

    if (v223 >= v11)
    {
      v229 = v12;
    }

    else
    {
      v229 = v762;
    }

    v230 = (v33 + 5);
    v231 = v225 + 1;
    v232 = &v33[v229 - (v225 + 1) + 5];
    if (v232 >= v12)
    {
      v232 = v12;
    }

    if (v232 - 7 <= v230)
    {
      v233 = v225 + 1;
      v235 = v33 + 5;
LABEL_369:
      if (v235 < v232 - 3 && *v233 == *v235)
      {
        ++v233;
        ++v235;
      }

      if (v235 < v232 - 1 && *v233 == *v235)
      {
        v233 = (v233 + 2);
        v235 = (v235 + 2);
      }

      if (v235 < v232 && *v233 == *v235)
      {
        v235 = (v235 + 1);
      }

      v241 = (v12 - 7);
      v238 = v235 - v230;
    }

    else
    {
      if (*v231 == *v230)
      {
        v233 = v225 + 3;
        v234 = (v33 + 13);
        do
        {
          v235 = v234;
          if (v234 >= v232 - 7)
          {
            goto LABEL_369;
          }

          v237 = *v233;
          v233 += 2;
          v236 = v237;
          v234 += 8;
        }

        while (v237 == *v235);
        v238 = v235 + (__clz(__rbit64(*v235 ^ v236)) >> 3) - v230;
      }

      else
      {
        v238 = __clz(__rbit64(*v230 ^ *v231)) >> 3;
      }

      v241 = (v12 - 7);
    }

    if (v231 + v238 != v229)
    {
LABEL_481:
      v267 = v33 + 1;
      v302 = v33 + 1 - a4;
      v303 = *(a2 + 24);
      if (v267 <= v753)
      {
        *v303 = *a4;
        v305 = *(a2 + 24);
        if (v302 <= 0x10)
        {
          *(a2 + 24) = v305 + v302;
          v276 = *(a2 + 8);
          goto LABEL_565;
        }

        *(v305 + 16) = *(a4 + 1);
        if (v302 >= 33)
        {
          v306 = v305 + v302;
          v307 = (v305 + 32);
          v308 = (a4 + 48);
          do
          {
            *v307 = *(v308 - 1);
            v309 = *v308;
            v308 += 2;
            v307[1] = v309;
            v307 += 2;
          }

          while (v307 < v306);
        }

LABEL_561:
        *(a2 + 24) += v302;
        v276 = *(a2 + 8);
        if (v302 >= 0x10000)
        {
          v352 = (v276 - *a2) >> 3;
          *(a2 + 72) = 1;
          *(a2 + 76) = v352;
        }

        v241 = (v12 - 7);
LABEL_565:
        v263 = v238 + 4;
        *(v276 + 4) = v302;
        *v276 = 1;
        v353 = v238 + 1;
        v354 = v14;
        if (v353 >> 16)
        {
          goto LABEL_580;
        }

        goto LABEL_581;
      }

      if (a4 <= v753)
      {
        v304 = (v303 + v753 - a4);
        *v303 = *a4;
        if ((v753 - a4) >= 17)
        {
          v310 = v303 + 1;
          v311 = (a4 + 32);
          do
          {
            *v310 = *(v311 - 1);
            v312 = *v311;
            v311 += 2;
            v310[1] = v312;
            v310 += 2;
          }

          while (v310 < v304);
          a4 = v12 - 32;
        }

        else
        {
          a4 = v12 - 32;
        }

        v303 = v304;
      }

      if (a4 >= v267)
      {
        goto LABEL_561;
      }

      v313 = v267 - a4;
      if ((v267 - a4) < 8)
      {
        v315 = v303;
      }

      else if ((v303 - a4) < 0x20)
      {
        v315 = v303;
      }

      else
      {
        if (v313 < 0x20)
        {
          v314 = 0;
LABEL_506:
          v320 = v313 & 0xFFFFFFFFFFFFFFF8;
          v315 = v303 + (v313 & 0xFFFFFFFFFFFFFFF8);
          v321 = v314 - (v313 & 0xFFFFFFFFFFFFFFF8);
          v322 = &a4[v314];
          v323 = (v303 + v314);
          do
          {
            v324 = *v322;
            v322 += 8;
            *v323++ = v324;
            v321 += 8;
          }

          while (v321);
          if (v313 == v320)
          {
            goto LABEL_561;
          }

          a4 += v320;
          goto LABEL_560;
        }

        v314 = v313 & 0xFFFFFFFFFFFFFFE0;
        v316 = (a4 + 16);
        v317 = v303 + 1;
        v318 = v313 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v319 = *v316;
          *(v317 - 1) = *(v316 - 1);
          *v317 = v319;
          v316 += 2;
          v317 += 2;
          v318 -= 32;
        }

        while (v318);
        if (v313 == v314)
        {
          goto LABEL_561;
        }

        if ((v313 & 0x18) != 0)
        {
          goto LABEL_506;
        }

        a4 += v314;
        v315 = v303 + v314;
      }

      do
      {
LABEL_560:
        v351 = *a4++;
        *v315++ = v351;
      }

      while (a4 != v267);
      goto LABEL_561;
    }

    v257 = &v230[v238];
    if (v241 <= v257)
    {
      v277 = (v10 + v11);
      v262 = v257;
    }

    else
    {
      if (*v761 != *v257)
      {
        v284 = __clz(__rbit64(*v257 ^ *v761)) >> 3;
LABEL_480:
        v238 += v284;
        goto LABEL_481;
      }

      v258 = 0;
      v259 = &v33[v238];
      while (1)
      {
        v260 = &v259[v258 + 13];
        if (v260 >= v241)
        {
          break;
        }

        v261 = *(v757 + v258);
        v258 += 8;
        if (v261 != *v260)
        {
          v262 = &v259[v258 + 5 + (__clz(__rbit64(*v260 ^ v261)) >> 3)];
          goto LABEL_479;
        }
      }

      v277 = (v757 + v258);
      v262 = &v33[v238 + 13 + v258];
    }

    if (v262 < v741 && *v277 == *v262)
    {
      ++v277;
      v262 += 4;
    }

    if (v262 < v737 && *v277 == *v262)
    {
      v277 = (v277 + 2);
      v262 += 2;
    }

    if (v262 < v12 && *v277 == *v262)
    {
      ++v262;
    }

LABEL_479:
    v284 = v262 - v257;
    goto LABEL_480;
  }

  if (v5 != 7)
  {
    if (v23 && v22 <= 0x3D)
    {
      v559 = 0;
      do
      {
        _X16 = v17 + v559;
        __asm { PRFM            #2, [X16] }

        v559 += 64;
      }

      while (v559 < 4 << v22);
    }

    v562 = &a4[v9];
    if (&a4[v9] > v13)
    {
      goto LABEL_963;
    }

    v747 = v19 + v18;
    v564 = v9;
    if (v21)
    {
      v33 = a4;
    }

    else
    {
      v33 = a4 + 1;
    }

    v565 = 32 - v7;
    v566 = 24 - v22;
    v567 = v11 - 1;
    v751 = (v12 - 7);
    v743 = (v12 - 3);
    v739 = (v12 - 1);
    v755 = (v12 - 32);
    v759 = v11 + v10 + 8;
LABEL_969:
    v568 = -1640531535 * *v33;
    v569 = *(v17 + 4 * (v568 >> v566 >> 8));
    v570 = (v568 >> v566) ^ v569;
    v571 = (v33 + 256);
    while (1)
    {
      v572 = v562;
      v573 = v568 >> v565;
      v574 = *(v6 + 4 * (v568 >> v565));
      v575 = v33 - v10;
      v576 = v33 - v10 - v14 + 1;
      v577 = *v572;
      *(v6 + 4 * v573) = v33 - v10;
      if (v567 - v576 >= 3)
      {
        v578 = (v10 + v576);
        if (v576 < v11)
        {
          v578 = (v19 + v576 - v20);
        }

        if (*v578 == *(v33 + 1))
        {
          break;
        }
      }

      if (!v570)
      {
        v579 = v569 >> 8;
        if (v579 > v763 && *(v19 + v579) == *v33 && v574 <= v11)
        {
          v601 = (v33 + 4);
          v602 = (v19 + v579 + 4);
          v603 = &v762[-v19 - v579 + v33];
          if (v603 >= v12)
          {
            v603 = v12;
          }

          if (v603 - 7 <= v601)
          {
            v604 = (v19 + v579 + 4);
            v606 = v33 + 4;
LABEL_1065:
            v594 = (v12 - 7);
            if (v606 < v603 - 3 && *v604 == *v606)
            {
              ++v604;
              ++v606;
            }

            if (v606 < v603 - 1 && *v604 == *v606)
            {
              v604 = (v604 + 2);
              v606 = (v606 + 2);
            }

            if (v606 < v603 && *v604 == *v606)
            {
              v606 = (v606 + 1);
            }

            v631 = v747;
            v609 = v606 - v601;
          }

          else
          {
            if (*v602 == *v601)
            {
              v604 = (v19 + 12 + v579);
              v605 = (v33 + 12);
              do
              {
                v606 = v605;
                if (v605 >= v603 - 7)
                {
                  goto LABEL_1065;
                }

                v608 = *v604;
                v604 += 2;
                v607 = v608;
                v605 += 8;
              }

              while (v608 == *v606);
              v609 = v606 + (__clz(__rbit64(*v606 ^ v607)) >> 3) - v601;
            }

            else
            {
              v609 = __clz(__rbit64(*v601 ^ *v602)) >> 3;
            }

            v631 = v747;
            v594 = (v12 - 7);
          }

          if ((v602 + v609) == v762)
          {
            v638 = &v601[v609];
            if (v594 <= v638)
            {
              v644 = (v10 + v11);
              v643 = v638;
              goto LABEL_1148;
            }

            if (*v761 == *v638)
            {
              v639 = 0;
              v640 = &v33[v609];
              while (1)
              {
                v641 = &v640[v639 + 12];
                if (v641 >= v594)
                {
                  break;
                }

                v642 = *(v759 + v639);
                v639 += 8;
                if (v642 != *v641)
                {
                  v643 = &v640[v639 + 4 + (__clz(__rbit64(*v641 ^ v642)) >> 3)];
                  goto LABEL_1157;
                }
              }

              v644 = (v759 + v639);
              v643 = &v33[v609 + 12 + v639];
LABEL_1148:
              if (v643 < v743 && *v644 == *v643)
              {
                ++v644;
                v643 += 4;
              }

              if (v643 < v739 && *v644 == *v643)
              {
                v644 = (v644 + 2);
                v643 += 2;
              }

              if (v643 < v12 && *v644 == *v643)
              {
                ++v643;
              }

LABEL_1157:
              v678 = v643 - v638;
            }

            else
            {
              v678 = __clz(__rbit64(*v638 ^ *v761)) >> 3;
            }

            v609 += v678;
          }

          v616 = v609 + 4;
          if (v33 <= a4)
          {
            goto LABEL_1166;
          }

          v679 = v33 - 1;
          v680 = (v19 - 1 + v579);
          while (*v679 == *v680)
          {
            ++v616;
            v681 = v679 - 1;
            if (v679 > a4)
            {
              --v679;
              v49 = v680-- > v631;
              if (v49)
              {
                continue;
              }
            }

            v33 = v681 + 1;
            goto LABEL_1166;
          }

          v33 = v679 + 1;
LABEL_1166:
          v620 = v33;
          v621 = v33 - a4;
          v682 = *(a2 + 24);
          if (v33 > v755)
          {
            if (a4 <= v755)
            {
              v683 = (v682 + v755 - a4);
              *v682 = *a4;
              if ((v755 - a4) >= 17)
              {
                v689 = v682 + 1;
                v690 = (a4 + 32);
                do
                {
                  *v689 = *(v690 - 1);
                  v691 = *v690;
                  v690 += 2;
                  v689[1] = v691;
                  v689 += 2;
                }

                while (v689 < v683);
                a4 = v12 - 32;
              }

              else
              {
                a4 = v12 - 32;
              }

              v682 = v683;
            }

            if (a4 >= v33)
            {
              goto LABEL_1211;
            }

            v692 = v33 - a4;
            if ((v33 - a4) < 8)
            {
              v694 = v682;
            }

            else if ((v682 - a4) < 0x20)
            {
              v694 = v682;
            }

            else
            {
              if (v692 < 0x20)
              {
                v693 = 0;
LABEL_1191:
                v699 = v692 & 0xFFFFFFFFFFFFFFF8;
                v694 = v682 + (v692 & 0xFFFFFFFFFFFFFFF8);
                v700 = v693 - (v692 & 0xFFFFFFFFFFFFFFF8);
                v701 = &a4[v693];
                v702 = (v682 + v693);
                do
                {
                  v703 = *v701;
                  v701 += 8;
                  *v702++ = v703;
                  v700 += 8;
                }

                while (v700);
                if (v692 != v699)
                {
                  a4 += v699;
                  goto LABEL_1210;
                }

LABEL_1211:
                *(a2 + 24) += v621;
                v629 = *(a2 + 8);
                if (v621 >= 0x10000)
                {
                  v711 = (v629 - *a2) >> 3;
                  *(a2 + 72) = 1;
                  *(a2 + 76) = v711;
                }

                v594 = (v12 - 7);
                goto LABEL_1214;
              }

              v693 = v692 & 0xFFFFFFFFFFFFFFE0;
              v695 = (a4 + 16);
              v696 = v682 + 1;
              v697 = v692 & 0xFFFFFFFFFFFFFFE0;
              do
              {
                v698 = *v695;
                *(v696 - 1) = *(v695 - 1);
                *v696 = v698;
                v695 += 2;
                v696 += 2;
                v697 -= 32;
              }

              while (v697);
              if (v692 == v693)
              {
                goto LABEL_1211;
              }

              if ((v692 & 0x18) != 0)
              {
                goto LABEL_1191;
              }

              a4 += v693;
              v694 = v682 + v693;
            }

            do
            {
LABEL_1210:
              v710 = *a4++;
              *v694++ = v710;
            }

            while (a4 != v33);
            goto LABEL_1211;
          }

          *v682 = *a4;
          v684 = *(a2 + 24);
          if (v621 > 0x10)
          {
            *(v684 + 16) = *(a4 + 1);
            if (v621 >= 33)
            {
              v685 = v684 + v621;
              v686 = (v684 + 32);
              v687 = (a4 + 48);
              do
              {
                *v686 = *(v687 - 1);
                v688 = *v687;
                v687 += 2;
                v686[1] = v688;
                v686 += 2;
              }

              while (v686 < v685);
            }

            goto LABEL_1211;
          }

          *(a2 + 24) = v684 + v621;
          v629 = *(a2 + 8);
LABEL_1214:
          v707 = v575 - v20 - v579;
LABEL_1215:
          *(v629 + 4) = v621;
          *v629 = v707 + 3;
          LOWORD(v706) = v616 - 3;
          v15 = v14;
          v14 = v707;
          if ((v616 - 3) >> 16)
          {
LABEL_1216:
            v712 = (v629 - *a2) >> 3;
            *(a2 + 72) = 2;
            *(a2 + 76) = v712;
            v14 = v707;
          }

LABEL_1217:
          *(v629 + 6) = v706;
          v713 = v629 + 8;
          *(a2 + 8) = v629 + 8;
          v33 = &v620[v616];
          if (&v620[v616] > v13)
          {
            v183 = v15;
            v184 = v14;
LABEL_1275:
            v564 = v9;
            v562 = &v33[v9];
            a4 = v33;
            v14 = v184;
            v15 = v183;
            if (&v33[v9] > v13)
            {
              goto LABEL_964;
            }

            goto LABEL_969;
          }

          *(v6 + 4 * ((-1640531535 * *(v10 + 2 + v575)) >> v565)) = v575 + 2;
          *(v6 + 4 * ((-1640531535 * *(v33 - 2)) >> v565)) = v33 - 2 - v10;
          while (2)
          {
            v184 = v15;
            v15 = v14;
            v714 = (v33 - v10 - v184);
            if (v714 >= v11)
            {
              v715 = v10;
            }

            else
            {
              v715 = v19 - v20;
            }

            if ((v567 - v714) < 3 || (v716 = v715 + v714, *(v715 + v714) != *v33))
            {
              v183 = v184;
              v184 = v14;
              goto LABEL_1275;
            }

            if (v714 >= v11)
            {
              v717 = v12;
            }

            else
            {
              v717 = v762;
            }

            v718 = (v33 + 4);
            v719 = (v716 + 4);
            v720 = &v717[v33 - v716];
            if (v720 >= v12)
            {
              v720 = v12;
            }

            if (v720 - 7 <= v718)
            {
              v721 = v719;
              v723 = v33 + 4;
LABEL_1238:
              if (v723 < v720 - 3 && *v721 == *v723)
              {
                ++v721;
                ++v723;
              }

              if (v723 < v720 - 1 && *v721 == *v723)
              {
                v721 = (v721 + 2);
                v723 = (v723 + 2);
              }

              if (v723 < v720 && *v721 == *v723)
              {
                v723 = (v723 + 1);
              }

              v594 = (v12 - 7);
              v726 = v723 - v718;
            }

            else if (*v719 == *v718)
            {
              v721 = (v715 + v714 + 12);
              v722 = (v33 + 12);
              do
              {
                v723 = v722;
                if (v722 >= v720 - 7)
                {
                  goto LABEL_1238;
                }

                v725 = *v721;
                v721 += 2;
                v724 = v725;
                v722 += 8;
              }

              while (v725 == *v723);
              v726 = v723 + (__clz(__rbit64(*v723 ^ v724)) >> 3) - v718;
              v594 = (v12 - 7);
            }

            else
            {
              v726 = __clz(__rbit64(*v718 ^ *v719)) >> 3;
            }

            if ((v719 + v726) == v717)
            {
              v727 = &v718[v726];
              if (v594 <= v727)
              {
                v733 = (v10 + v11);
                v732 = v727;
                goto LABEL_1259;
              }

              if (*v761 == *v727)
              {
                v728 = 0;
                v729 = &v33[v726];
                while (1)
                {
                  v730 = &v729[v728 + 12];
                  if (v730 >= v594)
                  {
                    break;
                  }

                  v731 = *(v759 + v728);
                  v728 += 8;
                  if (v731 != *v730)
                  {
                    v732 = &v729[v728 + 4 + (__clz(__rbit64(*v730 ^ v731)) >> 3)];
                    goto LABEL_1268;
                  }
                }

                v733 = (v759 + v728);
                v732 = &v33[v726 + 12 + v728];
LABEL_1259:
                if (v732 < v743 && *v733 == *v732)
                {
                  ++v733;
                  v732 += 4;
                }

                if (v732 < v739 && *v733 == *v732)
                {
                  v733 = (v733 + 2);
                  v732 += 2;
                }

                if (v732 < v12 && *v733 == *v732)
                {
                  ++v732;
                }

LABEL_1268:
                v734 = v732 - v727;
              }

              else
              {
                v734 = __clz(__rbit64(*v727 ^ *v761)) >> 3;
              }

              v726 += v734;
            }

            if (v33 <= v755)
            {
              **(a2 + 24) = *v33;
              v713 = *(a2 + 8);
            }

            *(v713 + 4) = 0;
            *v713 = 1;
            if (v726 + 1 >= 0x10000)
            {
              v735 = (v713 - *a2) >> 3;
              *(a2 + 72) = 2;
              *(a2 + 76) = v735;
            }

            *(v713 + 6) = v726 + 1;
            v713 += 8;
            *(a2 + 8) = v713;
            *(v6 + 4 * ((-1640531535 * *v33) >> v565)) = v33 - v10;
            v33 += v726 + 4;
            v14 = v184;
            v183 = v15;
            if (v33 > v13)
            {
              goto LABEL_1275;
            }

            continue;
          }
        }
      }

      if (v574 > v11)
      {
        v581 = v10 + v574;
        if (*(v10 + v574) == *v33)
        {
          v592 = (v33 + 4);
          v593 = (v581 + 4);
          v594 = (v12 - 7);
          if (v751 <= (v33 + 4))
          {
            v596 = v33 + 4;
LABEL_1016:
            if (v596 < v743 && *v593 == *v596)
            {
              ++v593;
              v596 += 4;
            }

            if (v596 < v739 && *v593 == *v596)
            {
              v593 = (v593 + 2);
              v596 += 2;
            }

            if (v596 < v12 && *v593 == *v596)
            {
              ++v596;
            }

            v600 = v10 + v11;
            v599 = v596 - v592;
          }

          else
          {
            if (*v593 == *v592)
            {
              v593 = (v10 + 12 + v574);
              v595 = v33 + 12;
              do
              {
                v596 = v595;
                if (v595 >= v751)
                {
                  goto LABEL_1016;
                }

                v598 = *v593;
                v593 += 2;
                v597 = v598;
                v595 += 8;
              }

              while (v598 == *v596);
              v599 = &v596[__clz(__rbit64(*v596 ^ v597)) >> 3] - v592;
            }

            else
            {
              v599 = __clz(__rbit64(*v592 ^ *v593)) >> 3;
            }

            v600 = v10 + v11;
          }

          v616 = v599 + 4;
          if (v33 <= a4)
          {
            v620 = v33;
          }

          else
          {
            v617 = v33 - 1;
            v618 = (v10 - 1 + v574);
            while (*v617 == *v618)
            {
              ++v616;
              v619 = v617 - 1;
              if (v617 > a4)
              {
                --v617;
                v49 = v618-- > v600;
                if (v49)
                {
                  continue;
                }
              }

              v620 = v619 + 1;
              goto LABEL_1053;
            }

            v620 = v617 + 1;
          }

LABEL_1053:
          v621 = v620 - a4;
          v622 = *(a2 + 24);
          if (v620 > v755)
          {
            if (a4 <= v755)
            {
              v623 = (v622 + v755 - a4);
              *v622 = *a4;
              if ((v755 - a4) >= 17)
              {
                v632 = v622 + 1;
                v633 = (a4 + 32);
                do
                {
                  *v632 = *(v633 - 1);
                  v634 = *v633;
                  v633 += 2;
                  v632[1] = v634;
                  v632 += 2;
                }

                while (v632 < v623);
                a4 = v12 - 32;
              }

              else
              {
                a4 = v12 - 32;
              }

              v622 = v623;
            }

            if (a4 >= v620)
            {
              goto LABEL_1205;
            }

            v635 = v620 - a4;
            if ((v620 - a4) < 8)
            {
              v645 = v622;
            }

            else if ((v622 - a4) < 0x20)
            {
              v645 = v622;
            }

            else
            {
              if (v635 < 0x20)
              {
                v636 = 0;
LABEL_1101:
                v650 = v635 & 0xFFFFFFFFFFFFFFF8;
                v645 = v622 + (v635 & 0xFFFFFFFFFFFFFFF8);
                v651 = v636 - (v635 & 0xFFFFFFFFFFFFFFF8);
                v652 = &a4[v636];
                v653 = (v622 + v636);
                do
                {
                  v654 = *v652;
                  v652 += 8;
                  *v653++ = v654;
                  v651 += 8;
                }

                while (v651);
                if (v635 != v650)
                {
                  a4 += v650;
                  goto LABEL_1204;
                }

LABEL_1205:
                *(a2 + 24) += v621;
                v629 = *(a2 + 8);
                if (v621 >= 0x10000)
                {
                  v709 = (v629 - *a2) >> 3;
                  *(a2 + 72) = 1;
                  *(a2 + 76) = v709;
                }

                v594 = (v12 - 7);
                goto LABEL_1208;
              }

              v636 = v635 & 0xFFFFFFFFFFFFFFE0;
              v646 = (a4 + 16);
              v647 = v622 + 1;
              v648 = v635 & 0xFFFFFFFFFFFFFFE0;
              do
              {
                v649 = *v646;
                *(v647 - 1) = *(v646 - 1);
                *v647 = v649;
                v646 += 2;
                v647 += 2;
                v648 -= 32;
              }

              while (v648);
              if (v635 == v636)
              {
                goto LABEL_1205;
              }

              if ((v635 & 0x18) != 0)
              {
                goto LABEL_1101;
              }

              a4 += v636;
              v645 = v622 + v636;
            }

            do
            {
LABEL_1204:
              v708 = *a4++;
              *v645++ = v708;
            }

            while (a4 != v620);
            goto LABEL_1205;
          }

          *v622 = *a4;
          v624 = *(a2 + 24);
          if (v621 > 0x10)
          {
            *(v624 + 16) = *(a4 + 1);
            if (v621 >= 33)
            {
              v625 = v624 + v621;
              v626 = (v624 + 32);
              v627 = (a4 + 48);
              do
              {
                *v626 = *(v627 - 1);
                v628 = *v627;
                v627 += 2;
                v626[1] = v628;
                v626 += 2;
              }

              while (v626 < v625);
            }

            goto LABEL_1205;
          }

          *(a2 + 24) = v624 + v621;
          v629 = *(a2 + 8);
LABEL_1208:
          v707 = (v33 - v581);
          goto LABEL_1215;
        }
      }

      if (v572 >= v571)
      {
        ++v564;
      }

      v562 = &v572[v564];
      if (&v572[v564] > v13)
      {
        goto LABEL_963;
      }

      v568 = -1640531535 * v577;
      v571 += (v572 >= v571) << 8;
      v569 = *(v17 + 4 * (v568 >> v566 >> 8));
      v570 = v569 ^ (v568 >> v566);
      v33 = v572;
    }

    if (v576 >= v11)
    {
      v582 = v12;
    }

    else
    {
      v582 = v762;
    }

    v583 = (v33 + 5);
    v584 = v578 + 1;
    v585 = &v33[v582 - (v578 + 1) + 5];
    if (v585 >= v12)
    {
      v585 = v12;
    }

    if (v585 - 7 <= v583)
    {
      v586 = v578 + 1;
      v588 = v33 + 5;
LABEL_1005:
      if (v588 < v585 - 3 && *v586 == *v588)
      {
        ++v586;
        ++v588;
      }

      if (v588 < v585 - 1 && *v586 == *v588)
      {
        v586 = (v586 + 2);
        v588 = (v588 + 2);
      }

      if (v588 < v585 && *v586 == *v588)
      {
        v588 = (v588 + 1);
      }

      v594 = (v12 - 7);
      v591 = v588 - v583;
    }

    else
    {
      if (*v584 == *v583)
      {
        v586 = v578 + 3;
        v587 = (v33 + 13);
        do
        {
          v588 = v587;
          if (v587 >= v585 - 7)
          {
            goto LABEL_1005;
          }

          v590 = *v586;
          v586 += 2;
          v589 = v590;
          v587 += 8;
        }

        while (v590 == *v588);
        v591 = v588 + (__clz(__rbit64(*v588 ^ v589)) >> 3) - v583;
      }

      else
      {
        v591 = __clz(__rbit64(*v583 ^ *v584)) >> 3;
      }

      v594 = (v12 - 7);
    }

    if (v584 + v591 != v582)
    {
LABEL_1117:
      v620 = v33 + 1;
      v655 = v33 + 1 - a4;
      v656 = *(a2 + 24);
      if (v620 <= v755)
      {
        *v656 = *a4;
        v658 = *(a2 + 24);
        if (v655 <= 0x10)
        {
          *(a2 + 24) = v658 + v655;
          v629 = *(a2 + 8);
          goto LABEL_1201;
        }

        *(v658 + 16) = *(a4 + 1);
        if (v655 >= 33)
        {
          v659 = v658 + v655;
          v660 = (v658 + 32);
          v661 = (a4 + 48);
          do
          {
            *v660 = *(v661 - 1);
            v662 = *v661;
            v661 += 2;
            v660[1] = v662;
            v660 += 2;
          }

          while (v660 < v659);
        }

LABEL_1197:
        *(a2 + 24) += v655;
        v629 = *(a2 + 8);
        if (v655 >= 0x10000)
        {
          v705 = (v629 - *a2) >> 3;
          *(a2 + 72) = 1;
          *(a2 + 76) = v705;
        }

        v594 = (v12 - 7);
LABEL_1201:
        v616 = v591 + 4;
        *(v629 + 4) = v655;
        *v629 = 1;
        v706 = v591 + 1;
        v707 = v14;
        if (v706 >> 16)
        {
          goto LABEL_1216;
        }

        goto LABEL_1217;
      }

      if (a4 <= v755)
      {
        v657 = (v656 + v755 - a4);
        *v656 = *a4;
        if ((v755 - a4) >= 17)
        {
          v663 = v656 + 1;
          v664 = (a4 + 32);
          do
          {
            *v663 = *(v664 - 1);
            v665 = *v664;
            v664 += 2;
            v663[1] = v665;
            v663 += 2;
          }

          while (v663 < v657);
          a4 = v12 - 32;
        }

        else
        {
          a4 = v12 - 32;
        }

        v656 = v657;
      }

      if (a4 >= v620)
      {
        goto LABEL_1197;
      }

      v666 = v620 - a4;
      if ((v620 - a4) < 8)
      {
        v668 = v656;
      }

      else if ((v656 - a4) < 0x20)
      {
        v668 = v656;
      }

      else
      {
        if (v666 < 0x20)
        {
          v667 = 0;
LABEL_1142:
          v673 = v666 & 0xFFFFFFFFFFFFFFF8;
          v668 = v656 + (v666 & 0xFFFFFFFFFFFFFFF8);
          v674 = v667 - (v666 & 0xFFFFFFFFFFFFFFF8);
          v675 = &a4[v667];
          v676 = (v656 + v667);
          do
          {
            v677 = *v675;
            v675 += 8;
            *v676++ = v677;
            v674 += 8;
          }

          while (v674);
          if (v666 == v673)
          {
            goto LABEL_1197;
          }

          a4 += v673;
          goto LABEL_1196;
        }

        v667 = v666 & 0xFFFFFFFFFFFFFFE0;
        v669 = (a4 + 16);
        v670 = v656 + 1;
        v671 = v666 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v672 = *v669;
          *(v670 - 1) = *(v669 - 1);
          *v670 = v672;
          v669 += 2;
          v670 += 2;
          v671 -= 32;
        }

        while (v671);
        if (v666 == v667)
        {
          goto LABEL_1197;
        }

        if ((v666 & 0x18) != 0)
        {
          goto LABEL_1142;
        }

        a4 += v667;
        v668 = v656 + v667;
      }

      do
      {
LABEL_1196:
        v704 = *a4++;
        *v668++ = v704;
      }

      while (a4 != v620);
      goto LABEL_1197;
    }

    v610 = &v583[v591];
    if (v594 <= v610)
    {
      v630 = (v10 + v11);
      v615 = v610;
    }

    else
    {
      if (*v761 != *v610)
      {
        v637 = __clz(__rbit64(*v610 ^ *v761)) >> 3;
LABEL_1116:
        v591 += v637;
        goto LABEL_1117;
      }

      v611 = 0;
      v612 = &v33[v591];
      while (1)
      {
        v613 = &v612[v611 + 13];
        if (v613 >= v594)
        {
          break;
        }

        v614 = *(v759 + v611);
        v611 += 8;
        if (v614 != *v613)
        {
          v615 = &v612[v611 + 5 + (__clz(__rbit64(*v613 ^ v614)) >> 3)];
          goto LABEL_1115;
        }
      }

      v630 = (v759 + v611);
      v615 = &v33[v591 + 13 + v611];
    }

    if (v615 < v743 && *v630 == *v615)
    {
      ++v630;
      v615 += 4;
    }

    if (v615 < v739 && *v630 == *v615)
    {
      v630 = (v630 + 2);
      v615 += 2;
    }

    if (v615 < v12 && *v630 == *v615)
    {
      ++v615;
    }

LABEL_1115:
    v637 = v615 - v610;
    goto LABEL_1116;
  }

  v744 = v19 + v18;
  if (v23 && v22 <= 0x3D)
  {
    v24 = 0;
    do
    {
      _X16 = v17 + v24;
      __asm { PRFM            #2, [X16] }

      v24 += 64;
    }

    while (v24 < 4 << v22);
  }

  v31 = &a4[v9];
  if (&a4[v9] > v13)
  {
LABEL_963:
    LODWORD(v184) = v14;
    LODWORD(v183) = v15;
    v33 = a4;
    goto LABEL_964;
  }

  v32 = v9;
  if (v21)
  {
    v33 = a4;
  }

  else
  {
    v33 = a4 + 1;
  }

  v34 = 64 - v7;
  v35 = 56 - v22;
  v36 = v11 - 1;
  v748 = (v12 - 7);
  v740 = (v12 - 3);
  v736 = (v12 - 1);
  v752 = (v12 - 32);
  v756 = v11 + v10 + 8;
  do
  {
    v37 = 0xCF1BBCDCBFA56300 * *v33;
    v38 = (v37 >> v35) ^ *(v17 + ((v37 >> v35 >> 6) & 0x3FFFFFFFFFFFFFCLL));
    v39 = (v33 + 256);
    v40 = *(v17 + ((v37 >> v35 >> 6) & 0x3FFFFFFFFFFFFFCLL));
    while (1)
    {
      v41 = v31;
      v42 = v37 >> v34;
      v43 = *(v6 + 4 * (v37 >> v34));
      v44 = v33 - v10;
      v45 = v33 - v10 - v14 + 1;
      v46 = *v41;
      *(v6 + 4 * v42) = v33 - v10;
      if (v36 - v45 >= 3)
      {
        v47 = (v10 + v45);
        if (v45 < v11)
        {
          v47 = (v19 + v45 - v20);
        }

        if (*v47 == *(v33 + 1))
        {
          if (v45 >= v11)
          {
            v51 = v12;
          }

          else
          {
            v51 = v762;
          }

          v52 = (v33 + 5);
          v53 = v47 + 1;
          v54 = &v33[v51 - (v47 + 1) + 5];
          if (v54 >= v12)
          {
            v54 = v12;
          }

          if (v54 - 7 <= v52)
          {
            v55 = (v47 + 1);
            v57 = v33 + 5;
          }

          else
          {
            if (*v53 != *v52)
            {
              v60 = __clz(__rbit64(*v52 ^ *v53)) >> 3;
LABEL_82:
              v63 = (v12 - 7);
LABEL_83:
              if (v53 + v60 != v51)
              {
                goto LABEL_164;
              }

              v79 = &v52[v60];
              if (v63 <= v79)
              {
                v99 = (v10 + v11);
                v84 = v79;
              }

              else
              {
                if (*v761 != *v79)
                {
                  v106 = __clz(__rbit64(*v79 ^ *v761)) >> 3;
LABEL_163:
                  v60 += v106;
LABEL_164:
                  v89 = v33 + 1;
                  v124 = v33 + 1 - a4;
                  v125 = *(a2 + 24);
                  if (v89 <= v752)
                  {
                    *v125 = *a4;
                    v127 = *(a2 + 24);
                    if (v124 <= 0x10)
                    {
                      *(a2 + 24) = v127 + v124;
                      v98 = *(a2 + 8);
                      goto LABEL_248;
                    }

                    *(v127 + 16) = *(a4 + 1);
                    if (v124 >= 33)
                    {
                      v128 = v127 + v124;
                      v129 = (v127 + 32);
                      v130 = (a4 + 48);
                      do
                      {
                        *v129 = *(v130 - 1);
                        v131 = *v130;
                        v130 += 2;
                        v129[1] = v131;
                        v129 += 2;
                      }

                      while (v129 < v128);
                    }

LABEL_244:
                    *(a2 + 24) += v124;
                    v98 = *(a2 + 8);
                    if (v124 >= 0x10000)
                    {
                      v174 = (v98 - *a2) >> 3;
                      *(a2 + 72) = 1;
                      *(a2 + 76) = v174;
                    }

                    v63 = (v12 - 7);
LABEL_248:
                    v85 = v60 + 4;
                    *(v98 + 4) = v124;
                    *v98 = 1;
                    v175 = v60 + 1;
                    v176 = v14;
                    if (!(v175 >> 16))
                    {
                      goto LABEL_264;
                    }

                    goto LABEL_263;
                  }

                  if (a4 <= v752)
                  {
                    v126 = (v125 + v752 - a4);
                    *v125 = *a4;
                    if ((v752 - a4) >= 17)
                    {
                      v132 = v125 + 1;
                      v133 = (a4 + 32);
                      do
                      {
                        *v132 = *(v133 - 1);
                        v134 = *v133;
                        v133 += 2;
                        v132[1] = v134;
                        v132 += 2;
                      }

                      while (v132 < v126);
                      a4 = v12 - 32;
                    }

                    else
                    {
                      a4 = v12 - 32;
                    }

                    v125 = v126;
                  }

                  if (a4 >= v89)
                  {
                    goto LABEL_244;
                  }

                  v135 = v89 - a4;
                  if ((v89 - a4) < 8)
                  {
                    v137 = v125;
                  }

                  else if ((v125 - a4) < 0x20)
                  {
                    v137 = v125;
                  }

                  else
                  {
                    if (v135 < 0x20)
                    {
                      v136 = 0;
LABEL_189:
                      v142 = v135 & 0xFFFFFFFFFFFFFFF8;
                      v137 = v125 + (v135 & 0xFFFFFFFFFFFFFFF8);
                      v143 = v136 - (v135 & 0xFFFFFFFFFFFFFFF8);
                      v144 = &a4[v136];
                      v145 = (v125 + v136);
                      do
                      {
                        v146 = *v144;
                        v144 += 8;
                        *v145++ = v146;
                        v143 += 8;
                      }

                      while (v143);
                      if (v135 == v142)
                      {
                        goto LABEL_244;
                      }

                      a4 += v142;
                      goto LABEL_243;
                    }

                    v136 = v135 & 0xFFFFFFFFFFFFFFE0;
                    v138 = (a4 + 16);
                    v139 = v125 + 1;
                    v140 = v135 & 0xFFFFFFFFFFFFFFE0;
                    do
                    {
                      v141 = *v138;
                      *(v139 - 1) = *(v138 - 1);
                      *v139 = v141;
                      v138 += 2;
                      v139 += 2;
                      v140 -= 32;
                    }

                    while (v140);
                    if (v135 == v136)
                    {
                      goto LABEL_244;
                    }

                    if ((v135 & 0x18) != 0)
                    {
                      goto LABEL_189;
                    }

                    a4 += v136;
                    v137 = v125 + v136;
                  }

                  do
                  {
LABEL_243:
                    v173 = *a4++;
                    *v137++ = v173;
                  }

                  while (a4 != v89);
                  goto LABEL_244;
                }

                v80 = 0;
                v81 = &v33[v60];
                while (1)
                {
                  v82 = &v81[v80 + 13];
                  if (v82 >= v63)
                  {
                    break;
                  }

                  v83 = *(v756 + v80);
                  v80 += 8;
                  if (v83 != *v82)
                  {
                    v84 = &v81[v80 + 5 + (__clz(__rbit64(*v82 ^ v83)) >> 3)];
                    goto LABEL_162;
                  }
                }

                v99 = (v756 + v80);
                v84 = &v33[v60 + 13 + v80];
              }

              if (v84 < v740 && *v99 == *v84)
              {
                ++v99;
                v84 += 4;
              }

              if (v84 < v736 && *v99 == *v84)
              {
                v99 = (v99 + 2);
                v84 += 2;
              }

              if (v84 < v12 && *v99 == *v84)
              {
                ++v84;
              }

LABEL_162:
              v106 = v84 - v79;
              goto LABEL_163;
            }

            v55 = (v47 + 3);
            v56 = (v33 + 13);
            while (1)
            {
              v57 = v56;
              if (v56 >= v54 - 7)
              {
                break;
              }

              v59 = *v55;
              v55 += 4;
              v58 = v59;
              v56 += 8;
              if (v59 != *v57)
              {
                v60 = v57 + (__clz(__rbit64(*v57 ^ v58)) >> 3) - v52;
                goto LABEL_82;
              }
            }
          }

          if (v57 < v54 - 3 && *v55 == *v57)
          {
            v55 += 2;
            v57 = (v57 + 4);
          }

          if (v57 < v54 - 1 && *v55 == *v57)
          {
            ++v55;
            v57 = (v57 + 2);
          }

          if (v57 < v54 && *v55 == *v57)
          {
            v57 = (v57 + 1);
          }

          v63 = (v12 - 7);
          v60 = v57 - v52;
          goto LABEL_83;
        }
      }

      if (!v38)
      {
        v48 = v40 >> 8;
        if (v48 > v763)
        {
          v49 = *(v19 + v48) != *v33 || v43 > v11;
          if (!v49)
          {
            break;
          }
        }
      }

      if (v43 > v11)
      {
        v50 = v10 + v43;
        if (*(v10 + v43) == *v33)
        {
          v61 = (v33 + 4);
          v62 = (v50 + 4);
          v63 = (v12 - 7);
          if (v748 <= (v33 + 4))
          {
            v65 = v33 + 4;
          }

          else
          {
            if (*v62 != *v61)
            {
              v68 = __clz(__rbit64(*v61 ^ *v62)) >> 3;
LABEL_91:
              v69 = v10 + v11;
LABEL_92:
              v85 = v68 + 4;
              if (v33 <= a4)
              {
                v89 = v33;
              }

              else
              {
                v86 = v33 - 1;
                v87 = (v10 - 1 + v43);
                while (*v86 == *v87)
                {
                  ++v85;
                  v88 = v86 - 1;
                  if (v86 > a4)
                  {
                    --v86;
                    v49 = v87-- > v69;
                    if (v49)
                    {
                      continue;
                    }
                  }

                  v89 = v88 + 1;
                  goto LABEL_100;
                }

                v89 = v86 + 1;
              }

LABEL_100:
              v90 = v89 - a4;
              v91 = *(a2 + 24);
              if (v89 <= v752)
              {
                *v91 = *a4;
                v93 = *(a2 + 24);
                if (v90 <= 0x10)
                {
                  *(a2 + 24) = v93 + v90;
                  v98 = *(a2 + 8);
LABEL_255:
                  v176 = (v33 - v50);
                  goto LABEL_262;
                }

                *(v93 + 16) = *(a4 + 1);
                if (v90 >= 33)
                {
                  v94 = v93 + v90;
                  v95 = (v93 + 32);
                  v96 = (a4 + 48);
                  do
                  {
                    *v95 = *(v96 - 1);
                    v97 = *v96;
                    v96 += 2;
                    v95[1] = v97;
                    v95 += 2;
                  }

                  while (v95 < v94);
                }

LABEL_252:
                *(a2 + 24) += v90;
                v98 = *(a2 + 8);
                if (v90 >= 0x10000)
                {
                  v178 = (v98 - *a2) >> 3;
                  *(a2 + 72) = 1;
                  *(a2 + 76) = v178;
                }

                v63 = (v12 - 7);
                goto LABEL_255;
              }

              if (a4 <= v752)
              {
                v92 = (v91 + v752 - a4);
                *v91 = *a4;
                if ((v752 - a4) >= 17)
                {
                  v101 = v91 + 1;
                  v102 = (a4 + 32);
                  do
                  {
                    *v101 = *(v102 - 1);
                    v103 = *v102;
                    v102 += 2;
                    v101[1] = v103;
                    v101 += 2;
                  }

                  while (v101 < v92);
                  a4 = v12 - 32;
                }

                else
                {
                  a4 = v12 - 32;
                }

                v91 = v92;
              }

              if (a4 >= v89)
              {
                goto LABEL_252;
              }

              v104 = v89 - a4;
              if ((v89 - a4) < 8)
              {
                v114 = v91;
              }

              else if ((v91 - a4) < 0x20)
              {
                v114 = v91;
              }

              else
              {
                if (v104 < 0x20)
                {
                  v105 = 0;
LABEL_148:
                  v119 = v104 & 0xFFFFFFFFFFFFFFF8;
                  v114 = v91 + (v104 & 0xFFFFFFFFFFFFFFF8);
                  v120 = v105 - (v104 & 0xFFFFFFFFFFFFFFF8);
                  v121 = &a4[v105];
                  v122 = (v91 + v105);
                  do
                  {
                    v123 = *v121;
                    v121 += 8;
                    *v122++ = v123;
                    v120 += 8;
                  }

                  while (v120);
                  if (v104 == v119)
                  {
                    goto LABEL_252;
                  }

                  a4 += v119;
                  goto LABEL_251;
                }

                v105 = v104 & 0xFFFFFFFFFFFFFFE0;
                v115 = (a4 + 16);
                v116 = v91 + 1;
                v117 = v104 & 0xFFFFFFFFFFFFFFE0;
                do
                {
                  v118 = *v115;
                  *(v116 - 1) = *(v115 - 1);
                  *v116 = v118;
                  v115 += 2;
                  v116 += 2;
                  v117 -= 32;
                }

                while (v117);
                if (v104 == v105)
                {
                  goto LABEL_252;
                }

                if ((v104 & 0x18) != 0)
                {
                  goto LABEL_148;
                }

                a4 += v105;
                v114 = v91 + v105;
              }

              do
              {
LABEL_251:
                v177 = *a4++;
                *v114++ = v177;
              }

              while (a4 != v89);
              goto LABEL_252;
            }

            v62 = (v10 + 12 + v43);
            v64 = v33 + 12;
            while (1)
            {
              v65 = v64;
              if (v64 >= v748)
              {
                break;
              }

              v67 = *v62++;
              v66 = v67;
              v64 += 8;
              if (v67 != *v65)
              {
                v68 = &v65[__clz(__rbit64(*v65 ^ v66)) >> 3] - v61;
                goto LABEL_91;
              }
            }
          }

          if (v65 < v740 && *v62 == *v65)
          {
            v62 = (v62 + 4);
            v65 += 4;
          }

          if (v65 < v736 && *v62 == *v65)
          {
            v62 = (v62 + 2);
            v65 += 2;
          }

          if (v65 < v12 && *v62 == *v65)
          {
            ++v65;
          }

          v69 = v10 + v11;
          v68 = v65 - v61;
          goto LABEL_92;
        }
      }

      if (v41 >= v39)
      {
        ++v32;
      }

      v31 = &v41[v32];
      if (&v41[v32] > v13)
      {
        goto LABEL_963;
      }

      v37 = 0xCF1BBCDCBFA56300 * v46;
      v39 += (v41 >= v39) << 8;
      v40 = *(v17 + ((v37 >> v35 >> 6) & 0x3FFFFFFFFFFFFFCLL));
      LOBYTE(v38) = (v37 >> v35) ^ v40;
      v33 = v41;
    }

    v70 = (v33 + 4);
    v71 = (v19 + v48 + 4);
    v72 = &v762[-v19 - v48 + v33];
    if (v72 >= v12)
    {
      v72 = v12;
    }

    if (v72 - 7 <= v70)
    {
      v73 = (v19 + v48 + 4);
      v75 = v33 + 4;
      goto LABEL_112;
    }

    if (*v71 == *v70)
    {
      v73 = (v19 + 12 + v48);
      v74 = (v33 + 12);
      while (1)
      {
        v75 = v74;
        if (v74 >= v72 - 7)
        {
          break;
        }

        v77 = *v73;
        v73 += 4;
        v76 = v77;
        v74 += 8;
        if (v77 != *v75)
        {
          v78 = v75 + (__clz(__rbit64(*v75 ^ v76)) >> 3) - v70;
          goto LABEL_133;
        }
      }

LABEL_112:
      v63 = (v12 - 7);
      if (v75 < v72 - 3 && *v73 == *v75)
      {
        v73 += 2;
        v75 = (v75 + 4);
      }

      if (v75 < v72 - 1 && *v73 == *v75)
      {
        ++v73;
        v75 = (v75 + 2);
      }

      if (v75 < v72 && *v73 == *v75)
      {
        v75 = (v75 + 1);
      }

      v100 = v744;
      v78 = v75 - v70;
    }

    else
    {
      v78 = __clz(__rbit64(*v70 ^ *v71)) >> 3;
LABEL_133:
      v100 = v744;
      v63 = (v12 - 7);
    }

    if ((v71 + v78) == v762)
    {
      v107 = &v70[v78];
      if (v63 <= v107)
      {
        v113 = (v10 + v11);
        v112 = v107;
        goto LABEL_195;
      }

      if (*v761 == *v107)
      {
        v108 = 0;
        v109 = &v33[v78];
        while (1)
        {
          v110 = &v109[v108 + 12];
          if (v110 >= v63)
          {
            break;
          }

          v111 = *(v756 + v108);
          v108 += 8;
          if (v111 != *v110)
          {
            v112 = &v109[v108 + 4 + (__clz(__rbit64(*v110 ^ v111)) >> 3)];
            goto LABEL_204;
          }
        }

        v113 = (v756 + v108);
        v112 = &v33[v78 + 12 + v108];
LABEL_195:
        if (v112 < v740 && *v113 == *v112)
        {
          ++v113;
          v112 += 4;
        }

        if (v112 < v736 && *v113 == *v112)
        {
          v113 = (v113 + 2);
          v112 += 2;
        }

        if (v112 < v12 && *v113 == *v112)
        {
          ++v112;
        }

LABEL_204:
        v147 = v112 - v107;
      }

      else
      {
        v147 = __clz(__rbit64(*v107 ^ *v761)) >> 3;
      }

      v78 += v147;
    }

    v85 = v78 + 4;
    if (v33 > a4)
    {
      v148 = v33 - 1;
      v149 = (v19 - 1 + v48);
      while (*v148 == *v149)
      {
        ++v85;
        v150 = v148 - 1;
        if (v148 > a4)
        {
          --v148;
          v49 = v149-- > v100;
          if (v49)
          {
            continue;
          }
        }

        v33 = v150 + 1;
        goto LABEL_213;
      }

      v33 = v148 + 1;
    }

LABEL_213:
    v89 = v33;
    v90 = v33 - a4;
    v151 = *(a2 + 24);
    if (v33 > v752)
    {
      if (a4 <= v752)
      {
        v152 = (v151 + v752 - a4);
        *v151 = *a4;
        if ((v752 - a4) >= 17)
        {
          v158 = v151 + 1;
          v159 = (a4 + 32);
          do
          {
            *v158 = *(v159 - 1);
            v160 = *v159;
            v159 += 2;
            v158[1] = v160;
            v158 += 2;
          }

          while (v158 < v152);
          a4 = v12 - 32;
        }

        else
        {
          a4 = v12 - 32;
        }

        v151 = v152;
      }

      if (a4 >= v33)
      {
        goto LABEL_258;
      }

      v161 = v33 - a4;
      if ((v33 - a4) < 8)
      {
        v163 = v151;
      }

      else if ((v151 - a4) < 0x20)
      {
        v163 = v151;
      }

      else
      {
        if (v161 < 0x20)
        {
          v162 = 0;
LABEL_238:
          v168 = v161 & 0xFFFFFFFFFFFFFFF8;
          v163 = v151 + (v161 & 0xFFFFFFFFFFFFFFF8);
          v169 = v162 - (v161 & 0xFFFFFFFFFFFFFFF8);
          v170 = &a4[v162];
          v171 = (v151 + v162);
          do
          {
            v172 = *v170;
            v170 += 8;
            *v171++ = v172;
            v169 += 8;
          }

          while (v169);
          if (v161 != v168)
          {
            a4 += v168;
            goto LABEL_257;
          }

LABEL_258:
          *(a2 + 24) += v90;
          v98 = *(a2 + 8);
          if (v90 >= 0x10000)
          {
            v180 = (v98 - *a2) >> 3;
            *(a2 + 72) = 1;
            *(a2 + 76) = v180;
          }

          v63 = (v12 - 7);
          goto LABEL_261;
        }

        v162 = v161 & 0xFFFFFFFFFFFFFFE0;
        v164 = (a4 + 16);
        v165 = v151 + 1;
        v166 = v161 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v167 = *v164;
          *(v165 - 1) = *(v164 - 1);
          *v165 = v167;
          v164 += 2;
          v165 += 2;
          v166 -= 32;
        }

        while (v166);
        if (v161 == v162)
        {
          goto LABEL_258;
        }

        if ((v161 & 0x18) != 0)
        {
          goto LABEL_238;
        }

        a4 += v162;
        v163 = v151 + v162;
      }

      do
      {
LABEL_257:
        v179 = *a4++;
        *v163++ = v179;
      }

      while (a4 != v33);
      goto LABEL_258;
    }

    *v151 = *a4;
    v153 = *(a2 + 24);
    if (v90 > 0x10)
    {
      *(v153 + 16) = *(a4 + 1);
      if (v90 >= 33)
      {
        v154 = v153 + v90;
        v155 = (v153 + 32);
        v156 = (a4 + 48);
        do
        {
          *v155 = *(v156 - 1);
          v157 = *v156;
          v156 += 2;
          v155[1] = v157;
          v155 += 2;
        }

        while (v155 < v154);
      }

      goto LABEL_258;
    }

    *(a2 + 24) = v153 + v90;
    v98 = *(a2 + 8);
LABEL_261:
    v176 = v44 - v20 - v48;
LABEL_262:
    *(v98 + 4) = v90;
    *v98 = v176 + 3;
    LOWORD(v175) = v85 - 3;
    v15 = v14;
    v14 = v176;
    if (!((v85 - 3) >> 16))
    {
      goto LABEL_264;
    }

LABEL_263:
    v181 = (v98 - *a2) >> 3;
    *(a2 + 72) = 2;
    *(a2 + 76) = v181;
    v14 = v176;
LABEL_264:
    *(v98 + 6) = v175;
    v182 = v98 + 8;
    *(a2 + 8) = v98 + 8;
    v33 = &v89[v85];
    if (&v89[v85] > v13)
    {
      v183 = v15;
      v184 = v14;
      goto LABEL_322;
    }

    *(v6 + 4 * ((0xCF1BBCDCBFA56300 * *(v10 + 2 + v44)) >> v34)) = v44 + 2;
    *(v6 + 4 * ((0xCF1BBCDCBFA56300 * *(v33 - 2)) >> v34)) = v33 - 2 - v10;
    while (2)
    {
      v184 = v15;
      v15 = v14;
      v185 = (v33 - v10 - v184);
      if (v185 >= v11)
      {
        v186 = v10;
      }

      else
      {
        v186 = v19 - v20;
      }

      if ((v36 - v185) >= 3)
      {
        v187 = v186 + v185;
        if (*(v186 + v185) == *v33)
        {
          if (v185 >= v11)
          {
            v188 = v12;
          }

          else
          {
            v188 = v762;
          }

          v189 = (v33 + 4);
          v190 = (v187 + 4);
          v191 = &v188[v33 - v187];
          if (v191 >= v12)
          {
            v191 = v12;
          }

          if (v191 - 7 <= v189)
          {
            v192 = v190;
            v194 = v33 + 4;
            goto LABEL_285;
          }

          if (*v190 == *v189)
          {
            v192 = (v186 + v185 + 12);
            v193 = (v33 + 12);
            while (1)
            {
              v194 = v193;
              if (v193 >= v191 - 7)
              {
                break;
              }

              v196 = *v192;
              v192 += 4;
              v195 = v196;
              v193 += 8;
              if (v196 != *v194)
              {
                v197 = v194 + (__clz(__rbit64(*v194 ^ v195)) >> 3) - v189;
                v63 = (v12 - 7);
                goto LABEL_296;
              }
            }

LABEL_285:
            if (v194 < v191 - 3 && *v192 == *v194)
            {
              v192 += 2;
              v194 = (v194 + 4);
            }

            if (v194 < v191 - 1 && *v192 == *v194)
            {
              ++v192;
              v194 = (v194 + 2);
            }

            if (v194 < v191 && *v192 == *v194)
            {
              v194 = (v194 + 1);
            }

            v63 = (v12 - 7);
            v197 = v194 - v189;
          }

          else
          {
            v197 = __clz(__rbit64(*v189 ^ *v190)) >> 3;
          }

LABEL_296:
          if ((v190 + v197) == v188)
          {
            v198 = &v189[v197];
            if (v63 <= v198)
            {
              v204 = (v10 + v11);
              v203 = v198;
              goto LABEL_306;
            }

            if (*v761 == *v198)
            {
              v199 = 0;
              v200 = &v33[v197];
              while (1)
              {
                v201 = &v200[v199 + 12];
                if (v201 >= v63)
                {
                  break;
                }

                v202 = *(v756 + v199);
                v199 += 8;
                if (v202 != *v201)
                {
                  v203 = &v200[v199 + 4 + (__clz(__rbit64(*v201 ^ v202)) >> 3)];
                  goto LABEL_315;
                }
              }

              v204 = (v756 + v199);
              v203 = &v33[v197 + 12 + v199];
LABEL_306:
              if (v203 < v740 && *v204 == *v203)
              {
                ++v204;
                v203 += 4;
              }

              if (v203 < v736 && *v204 == *v203)
              {
                v204 = (v204 + 2);
                v203 += 2;
              }

              if (v203 < v12 && *v204 == *v203)
              {
                ++v203;
              }

LABEL_315:
              v205 = v203 - v198;
            }

            else
            {
              v205 = __clz(__rbit64(*v198 ^ *v761)) >> 3;
            }

            v197 += v205;
          }

          if (v33 <= v752)
          {
            **(a2 + 24) = *v33;
            v182 = *(a2 + 8);
          }

          *(v182 + 4) = 0;
          *v182 = 1;
          if (v197 + 1 >= 0x10000)
          {
            v206 = (v182 - *a2) >> 3;
            *(a2 + 72) = 2;
            *(a2 + 76) = v206;
          }

          *(v182 + 6) = v197 + 1;
          v182 += 8;
          *(a2 + 8) = v182;
          *(v6 + 4 * ((0xCF1BBCDCBFA56300 * *v33) >> v34)) = v33 - v10;
          v33 += v197 + 4;
          v14 = v184;
          v183 = v15;
          if (v33 > v13)
          {
            goto LABEL_322;
          }

          continue;
        }
      }

      break;
    }

    v183 = v184;
    v184 = v14;
LABEL_322:
    v32 = v9;
    v31 = &v33[v9];
    a4 = v33;
    v14 = v184;
    v15 = v183;
  }

  while (&v33[v9] <= v13);
LABEL_964:
  *a3 = v184;
  a3[1] = v183;
  return v12 - v33;
}