uint64_t _TAG::priority(_TAG *this)
{
  v1 = *(this + 20);
  result = 2;
  if (v1 <= 37384)
  {
    if (v1 == 33434)
    {
      return 1;
    }

    if (v1 != 36864 && v1 != 37121)
    {
      return 0;
    }
  }

  else if ((v1 - 40960) >= 4)
  {
    return (v1 - 41986) <= 4 && ((1 << (v1 - 2)) & 0x13) != 0 || v1 == 37385;
  }

  return result;
}

unint64_t _APP1::pruneContent(_APP1 *this, uint64_t a2)
{
  v3 = *(this + 12);
  if (v3)
  {
    v4 = *(v3 + 16);
    v5 = *(v3 + 24);
    v6 = 126 - 2 * __clz((v5 - v4) >> 3);
    if (v5 == v4)
    {
      v7 = 0;
    }

    else
    {
      v7 = v6;
    }

    std::__introsort<std::_ClassicAlgPolicy,_TAGList::sortPriority(void)::$_0 &,_TAG **,false>(v4, v5, v7, 1);
    if (a2 < 0xFFF8)
    {
LABEL_12:
      result = *(v3 + 16);
      v9 = *(v3 + 24);
    }

    else
    {
      while (1)
      {
        result = *(v3 + 16);
        v9 = *(v3 + 24);
        v10 = v9 - result;
        if (((v9 - result) & 0x7FFF8) == 0)
        {
          break;
        }

        v11 = ((v10 >> 3) - 1);
        if (v11 >= v10 >> 3)
        {
          __break(1u);
          return result;
        }

        v12 = *(result + 8 * v11);
        v13 = *(v12 + 68);
        if (v13 <= 4)
        {
          v14 = 0;
        }

        else
        {
          v14 = (v13 + 1) & 0xFFFFFFFE;
        }

        a2 = a2 - v14;
        _TAGList::removeTag(v3, v12);
        if (a2 <= 0xFFF7)
        {
          goto LABEL_12;
        }
      }
    }

    v15 = 126 - 2 * __clz((v9 - result) >> 3);
    if (v9 == result)
    {
      v16 = 0;
    }

    else
    {
      v16 = v15;
    }

    std::__introsort<std::_ClassicAlgPolicy,_TAGList::sortTagID(void)::$_0 &,_TAG **,false>(result, v9, v16, 1);
  }

  return a2;
}

void _APP1::writeToStream(_APP1 *this, __CFWriteStream *a2)
{
  v3 = *(this + 10);
  if (v3)
  {
    v4 = *(v3 + 16);
    v5 = *(v3 + 24);
    v6 = v4;
    v7 = 12 * ((v5 - v4) >> 3) + 6;
    if (v5 == v4)
    {
      v8 = 0;
    }

    else
    {
      v8 = 0;
      do
      {
        v9 = *v6++;
        v10 = *(v9 + 68);
        if (v10 <= 4)
        {
          v11 = 0;
        }

        else
        {
          v11 = (v10 + 1) & 0xFFFFFFFE;
        }

        v8 += v11;
      }

      while (v6 != v5);
    }
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  v12 = *(this + 11);
  if (!v12)
  {
    v21 = 0;
LABEL_22:
    v22 = 0;
LABEL_23:
    v23 = 0;
    goto LABEL_31;
  }

  v13 = *(this + 15);
  if (!v13)
  {
    v21 = 0;
    LODWORD(v12) = 0;
    goto LABEL_22;
  }

  v14 = *(v12 + 24);
  v15 = *(v12 + 16);
  v16 = ((v14 - v15) >> 3);
  if (v14 == v15)
  {
    v17 = 0;
  }

  else
  {
    v17 = 0;
    do
    {
      v18 = *v15++;
      v19 = *(v18 + 68);
      if (v19 <= 4)
      {
        v20 = 0;
      }

      else
      {
        v20 = (v19 + 1) & 0xFFFFFFFE;
      }

      v17 += v20;
    }

    while (v15 != v14);
  }

  v21 = 12 * v16 + 6;
  v24 = *(this + 32);
  LODWORD(v12) = v24 + v17;
  if (__PAIR64__(v13[1], *v13) == 0xD8000000FFLL)
  {
    v22 = 0;
  }

  else
  {
    LODWORD(v12) = v12 + 2;
    v22 = 1;
  }

  if (v13[v24 - 2] == 255 && v13[v24 - 1] == 217)
  {
    goto LABEL_23;
  }

  LODWORD(v12) = v12 + 2;
  v23 = 1;
LABEL_31:
  v25 = *(this + 12);
  if (v25)
  {
    v26 = *(v25 + 24);
    v27 = *(v25 + 16);
    v28 = 12 * ((v26 - v27) >> 3) + 6;
    if (v26 == v27)
    {
      LODWORD(v25) = 0;
    }

    else
    {
      LODWORD(v25) = 0;
      do
      {
        v29 = *v27++;
        v30 = *(v29 + 68);
        if (v30 <= 4)
        {
          v31 = 0;
        }

        else
        {
          v31 = (v30 + 1) & 0xFFFFFFFE;
        }

        LODWORD(v25) = v31 + v25;
      }

      while (v27 != v26);
    }
  }

  else
  {
    v28 = 0;
  }

  v32 = *(this + 13);
  if (!v32)
  {
    v36 = 0;
    goto LABEL_50;
  }

  v33 = *(v32 + 16);
  v34 = *(v32 + 24);
  v35 = v33;
  v36 = 12 * ((v34 - v33) >> 3) + 6;
  if (v34 == v33)
  {
LABEL_50:
    v37 = 0;
    goto LABEL_51;
  }

  v37 = 0;
  do
  {
    v38 = *v35++;
    v39 = *(v38 + 68);
    if (v39 <= 4)
    {
      v40 = 0;
    }

    else
    {
      v40 = (v39 + 1) & 0xFFFFFFFE;
    }

    v37 += v40;
  }

  while (v35 != v34);
LABEL_51:
  v41 = *(this + 14);
  if (v41)
  {
    v42 = *(v41 + 16);
    v43 = *(v41 + 24);
    v44 = v42;
    v45 = 12 * ((v43 - v42) >> 3) + 6;
    if (v43 != v42)
    {
      v46 = 0;
      do
      {
        v47 = *v44++;
        v48 = *(v47 + 68);
        if (v48 <= 4)
        {
          v49 = 0;
        }

        else
        {
          v49 = (v48 + 1) & 0xFFFFFFFE;
        }

        v46 += v49;
      }

      while (v44 != v43);
      if (v8)
      {
        goto LABEL_66;
      }

      goto LABEL_62;
    }
  }

  else
  {
    v45 = 0;
  }

  v46 = 0;
  if (v8)
  {
    goto LABEL_66;
  }

LABEL_62:
  if (!v12 && !v25 && !v37 && !v46)
  {
    return;
  }

LABEL_66:
  v145 = v23;
  v146 = v22;
  v144 = v21;
  v147 = v36;
  v148 = v45;
  v50 = v8 + v7 + v21 + v12 + v28 + v25 + v36 + v37 + v45 + v46;
  v51 = v50 + 16;
  v52 = ((v50 + 4111) & 0xFFFFF000) - 4;
  if (*(this + 74))
  {
    v53 = v52;
  }

  else
  {
    v53 = v51;
  }

  v54 = malloc_type_calloc((v53 + 8), 1uLL, 0x100004077774924uLL);
  if ((v53 + 8) < 0x10000)
  {
LABEL_75:
    v56 = *(this + 28);
    *v54 = HIBYTE(v56);
    v54[1] = v56;
    strcpy(v54 + 4, "Exif");
    v150 = 0;
    if (*(this + 32))
    {
      v57 = 18761;
    }

    else
    {
      v57 = 19789;
    }

    *(v54 + 5) = __rev16(v57);
    v58 = v54 + 10;
    if (*(this + 32))
    {
      v59 = 42;
    }

    else
    {
      v59 = 0;
    }

    if (*(this + 32))
    {
      v60 = 0;
    }

    else
    {
      v60 = 42;
    }

    v54[12] = v59;
    v54[13] = v60;
    if (*(this + 32))
    {
      v61 = 0;
    }

    else
    {
      v61 = 8;
    }

    if (*(this + 32))
    {
      v62 = 8;
    }

    else
    {
      v62 = 0;
    }

    v54[14] = v62;
    *(v54 + 15) = 0;
    v54[17] = v61;
    v63 = *(this + 10);
    v64 = &v54[v7 + 18];
    if (v63 && (v65 = *(v63 + 24) - *(v63 + 16), (v65 >> 3)))
    {
      v66 = v65 >> 3;
      if (*(this + 32))
      {
        v67 = v66;
      }

      else
      {
        v67 = BYTE1(v66);
      }

      if (*(this + 32))
      {
        LOBYTE(v66) = BYTE1(v66);
      }

      v54[18] = v67;
      v54[19] = v66;
      (*(**(this + 10) + 16))(*(this + 10), v54 + 10, v54 + 20, v64, &v150 + 4, &v150, *(this + 32));
      v68 = &v54[HIDWORD(v150) + 20];
    }

    else
    {
      v68 = 0;
    }

    v69 = (v64 + v8);
    v70 = *(this + 12);
    if (!v70 || (v71 = *(this + 10)) == 0)
    {
LABEL_119:
      v84 = *(this + 13);
      if (!v84)
      {
        goto LABEL_139;
      }

      v85 = *(this + 10);
      if (!v85)
      {
        goto LABEL_139;
      }

      v86 = *(v85 + 16);
      v87 = *(v85 + 24);
      if (v86 != v87)
      {
        while (*(*v86 + 40) != 34853)
        {
          if (++v86 == v87)
          {
            goto LABEL_133;
          }
        }
      }

      if (v86 != v87)
      {
        v88 = *v86;
        if (v88)
        {
          v89 = v69 - v58;
          v90 = *(v88 + 48);
          v91 = *(v90 + 8);
          if (*(this + 32) == 1)
          {
            if (v91 != v89)
            {
              v92 = HIWORD(v89);
              v93 = v89 >> 8;
              LOBYTE(v94) = v69 - v58;
              v89 >>= 24;
LABEL_132:
              *(v90 + 8) = v94;
              *(v90 + 9) = v93;
              *(v90 + 10) = v92;
              *(v90 + 11) = v89;
              v84 = *(this + 13);
            }
          }

          else if (bswap32(v91) != v89)
          {
            v93 = HIWORD(v89);
            v94 = HIBYTE(v89);
            v92 = v89 >> 8;
            goto LABEL_132;
          }
        }
      }

LABEL_133:
      v95 = (*(v84 + 24) - *(v84 + 16)) >> 3;
      v96 = &v69[v147];
      if (*(this + 32))
      {
        v97 = v95;
      }

      else
      {
        v97 = BYTE1(v95);
      }

      if (*(this + 32))
      {
        LOBYTE(v95) = BYTE1(v95);
      }

      *v69 = v97;
      v69[1] = v95;
      (*(**(this + 13) + 16))(*(this + 13), v54 + 10, v69 + 2, v96, &v150 + 4, &v150, *(this + 32));
      v69 = &v96[v37];
LABEL_139:
      v98 = *(this + 14);
      if (!v98)
      {
        goto LABEL_159;
      }

      v99 = *(this + 12);
      if (!v99)
      {
        goto LABEL_159;
      }

      v100 = *(v99 + 16);
      v101 = *(v99 + 24);
      if (v100 != v101)
      {
        while (*(*v100 + 40) != 40965)
        {
          if (++v100 == v101)
          {
            goto LABEL_153;
          }
        }
      }

      if (v100 != v101)
      {
        v102 = *v100;
        if (v102)
        {
          v103 = v69 - v58;
          v104 = *(v102 + 48);
          v105 = *(v104 + 8);
          if (*(this + 32) == 1)
          {
            if (v105 != v103)
            {
              v106 = HIWORD(v103);
              v107 = v103 >> 8;
              LOBYTE(v108) = v69 - v58;
              v103 >>= 24;
LABEL_152:
              *(v104 + 8) = v108;
              *(v104 + 9) = v107;
              *(v104 + 10) = v106;
              *(v104 + 11) = v103;
              v98 = *(this + 14);
            }
          }

          else if (bswap32(v105) != v103)
          {
            v107 = HIWORD(v103);
            v108 = HIBYTE(v103);
            v106 = v103 >> 8;
            goto LABEL_152;
          }
        }
      }

LABEL_153:
      v109 = (*(v98 + 24) - *(v98 + 16)) >> 3;
      v110 = &v69[v148];
      if (*(this + 32))
      {
        v111 = v109;
      }

      else
      {
        v111 = BYTE1(v109);
      }

      if (*(this + 32))
      {
        LOBYTE(v109) = BYTE1(v109);
      }

      *v69 = v111;
      v69[1] = v109;
      (*(**(this + 14) + 16))(*(this + 14), v54 + 10, v69 + 2, v110, &v150 + 4, &v150, *(this + 32));
      v69 = &v110[v46];
LABEL_159:
      if (!*(this + 11) || !*(this + 15) || !v68)
      {
LABEL_209:
        *(v54 + 1) = bswap32(v53 + 2) >> 16;
        CFWriteStreamWrite(a2, v54, (v53 + 4));
        free(v54);
        return;
      }

      v112 = v69 - v58;
      v113 = (v69 - v58) >> 16;
      if (*(this + 32) == 1)
      {
        v114 = v112 >> 8;
        LOBYTE(v115) = v69 - v58;
        v112 >>= 24;
      }

      else
      {
        v115 = HIBYTE(v112);
        v114 = HIWORD(v112);
        v113 = v112 >> 8;
      }

      *v68 = v115;
      v68[1] = v114;
      v68[2] = v113;
      v68[3] = v112;
      v116 = (*(*(this + 11) + 24) - *(*(this + 11) + 16)) >> 3;
      v117 = &v69[v144];
      if (*(this + 32))
      {
        v118 = (*(*(this + 11) + 24) - *(*(this + 11) + 16)) >> 3;
      }

      else
      {
        v118 = (*(*(this + 11) + 24) - *(*(this + 11) + 16)) >> 11;
      }

      if (*(this + 32))
      {
        LOBYTE(v116) = (*(*(this + 11) + 24) - *(*(this + 11) + 16)) >> 11;
      }

      *v69 = v118;
      v69[1] = v116;
      (*(**(this + 11) + 16))(*(this + 11), v54 + 10, v69 + 2, v117, &v150 + 4, &v150, *(this + 32));
      v119 = &v117[v150];
      v120 = *(this + 11);
      v121 = *(v120 + 16);
      v122 = *(v120 + 24);
      v123 = v121;
      if (v121 != v122)
      {
        v123 = v121;
        while (*(*v123 + 40) != 513)
        {
          if (++v123 == v122)
          {
            goto LABEL_180;
          }
        }
      }

      if (v123 == v122 || (v124 = *v123) == 0)
      {
LABEL_180:
        v129 = v145;
        v128 = v146;
        goto LABEL_181;
      }

      v125 = v119 - v58;
      v126 = *(v124 + 48);
      v127 = *(v126 + 8);
      if (*(this + 32) == 1)
      {
        v129 = v145;
        v128 = v146;
        if (v127 == v125)
        {
          goto LABEL_181;
        }

        v130 = HIWORD(v125);
        v131 = v125 >> 8;
        LOBYTE(v132) = v119 - v58;
        v125 >>= 24;
      }

      else
      {
        v129 = v145;
        v128 = v146;
        if (bswap32(v127) == v125)
        {
          goto LABEL_181;
        }

        v131 = HIWORD(v125);
        v132 = HIBYTE(v125);
        v130 = v125 >> 8;
      }

      *(v126 + 8) = v132;
      *(v126 + 9) = v131;
      *(v126 + 10) = v130;
      *(v126 + 11) = v125;
      v140 = *(this + 11);
      v121 = *(v140 + 16);
      v122 = *(v140 + 24);
LABEL_181:
      if (v121 != v122)
      {
        while (*(*v121 + 40) != 514)
        {
          if (++v121 == v122)
          {
            goto LABEL_198;
          }
        }
      }

      if (v121 == v122)
      {
        goto LABEL_198;
      }

      v133 = *v121;
      if (!v133)
      {
        goto LABEL_198;
      }

      v134 = *(this + 32);
      if (v128)
      {
        v134 += 2;
      }

      v135 = *(v133 + 48);
      v136 = *(v135 + 8);
      if (*(this + 32) == 1)
      {
        if (v136 != v134)
        {
          v137 = HIWORD(v134);
          v138 = v134 >> 8;
          LOBYTE(v139) = v134;
          v134 >>= 24;
LABEL_197:
          *(v135 + 8) = v139;
          *(v135 + 9) = v138;
          *(v135 + 10) = v137;
          *(v135 + 11) = v134;
        }
      }

      else if (bswap32(v136) != v134)
      {
        v138 = HIWORD(v134);
        v139 = HIBYTE(v134);
        v137 = v134 >> 8;
        goto LABEL_197;
      }

LABEL_198:
      if (v128)
      {
        *v119++ = -9985;
      }

      memcpy(v119, *(this + 15), *(this + 32));
      v141 = v119 + *(this + 32);
      if (v129)
      {
        if (*(this + 32))
        {
          v142 = -39;
        }

        else
        {
          v142 = -1;
        }

        if (*(this + 32))
        {
          v143 = -1;
        }

        else
        {
          v143 = -39;
        }

        *v141 = v142;
        v141[1] = v143;
        v141 += 2;
      }

      *v141 = 0;
      goto LABEL_209;
    }

    v72 = *(v71 + 16);
    v73 = *(v71 + 24);
    if (v72 != v73)
    {
      while (*(*v72 + 40) != 34665)
      {
        if (++v72 == v73)
        {
          goto LABEL_113;
        }
      }
    }

    if (v72 != v73)
    {
      v74 = *v72;
      if (v74)
      {
        v75 = v69 - v58;
        v76 = *(v74 + 48);
        v77 = *(v76 + 8);
        if (*(this + 32) == 1)
        {
          if (v77 != v75)
          {
            v78 = HIWORD(v75);
            v79 = v75 >> 8;
            LOBYTE(v80) = v69 - v58;
            v75 >>= 24;
LABEL_112:
            *(v76 + 8) = v80;
            *(v76 + 9) = v79;
            *(v76 + 10) = v78;
            *(v76 + 11) = v75;
            v70 = *(this + 12);
          }
        }

        else if (bswap32(v77) != v75)
        {
          v79 = HIWORD(v75);
          v80 = HIBYTE(v75);
          v78 = v75 >> 8;
          goto LABEL_112;
        }
      }
    }

LABEL_113:
    v81 = (*(v70 + 24) - *(v70 + 16)) >> 3;
    v82 = &v69[v28];
    if (*(this + 32))
    {
      v83 = v81;
    }

    else
    {
      v83 = BYTE1(v81);
    }

    if (*(this + 32))
    {
      LOBYTE(v81) = BYTE1(v81);
    }

    *v69 = v83;
    v69[1] = v81;
    (*(**(this + 12) + 16))(*(this + 12), v54 + 10, v69 + 2, &v69[v28], &v150 + 4, &v150, *(this + 32));
    v69 = &v82[v150];
    goto LABEL_119;
  }

  v55 = _APP1::pruneContent(this, v53);
  if (v55 < 0xFFF8)
  {
    LODWORD(v53) = v55;
    v28 = 12 * ((*(*(this + 12) + 24) - *(*(this + 12) + 16)) >> 3) + 6;
    goto LABEL_75;
  }

  LogError("writeToStream", 2076, "*** ERROR: EXIF Data exceeds 64K limit, too big after truncation. Dropping 'APP1' marker.\n");

  free(v54);
}

void *_APP1::addMissingIFDTags(void *this)
{
  v1 = this[10];
  if (v1)
  {
    v2 = *(v1 + 16);
    v3 = *(v1 + 24);
    v4 = v2;
    if (v2 != v3)
    {
      v4 = v2;
      while (*(*v4 + 40) != 282)
      {
        v4 += 8;
        if (v4 == v3)
        {
          goto LABEL_9;
        }
      }
    }

    if (v4 == v3 || !*v4)
    {
LABEL_9:
      newRationalTag();
    }

    v5 = v2;
    if (v2 != v3)
    {
      v5 = v2;
      while (*(*v5 + 40) != 283)
      {
        v5 += 8;
        if (v5 == v3)
        {
          goto LABEL_17;
        }
      }
    }

    if (v5 == v3 || !*v5)
    {
LABEL_17:
      newRationalTag();
    }

    v6 = v2;
    if (v2 != v3)
    {
      v6 = v2;
      while (*(*v6 + 40) != 296)
      {
        v6 += 8;
        if (v6 == v3)
        {
          goto LABEL_25;
        }
      }
    }

    if (v6 == v3 || !*v6)
    {
LABEL_25:
      operator new();
    }

    if (v2 != v3)
    {
      while (*(*v2 + 40) != 531)
      {
        v2 += 8;
        if (v2 == v3)
        {
          goto LABEL_32;
        }
      }
    }

    if (v2 == v3 || !*v2)
    {
LABEL_32:
      operator new();
    }
  }

  v7 = this[12];
  if (!v7)
  {
    operator new();
  }

  v8 = this[10];
  if (v8)
  {
    v9 = *(v8 + 16);
    v10 = *(v8 + 24);
    if (v9 != v10)
    {
      while (*(*v9 + 40) != 34665)
      {
        v9 += 8;
        if (v9 == v10)
        {
          goto LABEL_42;
        }
      }
    }

    if (v9 == v10 || !*v9)
    {
LABEL_42:
      operator new();
    }

    v12 = *(v7 + 16);
    v11 = *(v7 + 24);
    v13 = v12;
    if (v12 != v11)
    {
      while (*(*v13 + 40) != -28672)
      {
        v13 += 8;
        if (v13 == v11)
        {
          goto LABEL_50;
        }
      }
    }

    if (v13 == v11 || !*v13)
    {
LABEL_50:
      operator new();
    }

    v14 = v11;
    v15 = v12;
    if (v12 != v14)
    {
      while (*(*v15 + 40) != 37121)
      {
        v15 += 8;
        if (v15 == v14)
        {
          goto LABEL_57;
        }
      }
    }

    if (v15 == v14 || !*v15)
    {
LABEL_57:
      operator new();
    }

    v16 = v12;
    if (v12 != v14)
    {
      while (*(*v16 + 40) != -24576)
      {
        v16 += 8;
        if (v16 == v14)
        {
          goto LABEL_64;
        }
      }
    }

    if (v16 == v14 || !*v16)
    {
LABEL_64:
      operator new();
    }

    v17 = v12;
    if (v12 != v14)
    {
      while (*(*v17 + 40) != 40961)
      {
        v17 += 8;
        if (v17 == v14)
        {
          goto LABEL_71;
        }
      }
    }

    if (v17 == v14 || !*v17)
    {
LABEL_71:
      operator new();
    }

    v18 = v12;
    if (v12 != v14)
    {
      while (*(*v18 + 40) != 40962)
      {
        v18 += 8;
        if (v18 == v14)
        {
          goto LABEL_78;
        }
      }
    }

    if (v18 == v14 || !*v18)
    {
LABEL_78:
      operator new();
    }

    v19 = v12;
    if (v12 != v14)
    {
      while (*(*v19 + 40) != 40963)
      {
        v19 += 8;
        if (v19 == v14)
        {
          goto LABEL_85;
        }
      }
    }

    if (v19 == v14 || !*v19)
    {
LABEL_85:
      operator new();
    }

    v20 = this[10];
    if (v20 && this[13])
    {
      v21 = *(v20 + 16);
      v22 = *(v20 + 24);
      if (v21 != v22)
      {
        while (*(*v21 + 40) != 34853)
        {
          v21 += 8;
          if (v21 == v22)
          {
            goto LABEL_94;
          }
        }
      }

      if (v21 == v22 || !*v21)
      {
LABEL_94:
        operator new();
      }
    }
  }

  if (this[14])
  {
    v23 = this[12];
    v24 = *(v23 + 16);
    v25 = *(v23 + 24);
    if (v24 != v25)
    {
      while (*(*v24 + 40) != 40965)
      {
        v24 += 8;
        if (v24 == v25)
        {
          goto LABEL_102;
        }
      }
    }

    if (v24 == v25 || !*v24)
    {
LABEL_102:
      operator new();
    }
  }

  return this;
}

BOOL _APP1::updateDateTime(_APP1 *this, char *__s)
{
  if (strlen(__s) != 19)
  {
    return 0;
  }

  v5 = *(this + 10);
  v6 = v5 != 0;
  if (v5)
  {
    v7 = *(v5 + 16);
    v8 = *(v5 + 24);
    if (v7 != v8)
    {
      while (*(*v7 + 40) != 306)
      {
        if (++v7 == v8)
        {
          goto LABEL_11;
        }
      }
    }

    if (v7 == v8 || !*v7)
    {
LABEL_11:
      operator new();
    }

    (*(**v7 + 88))(*v7, __s);
  }

  v9 = *(this + 12);
  if (v9)
  {
    v10 = *(v9 + 16);
    v11 = *(v9 + 24);
    if (v10 != v11)
    {
      while (*(*v10 + 40) != 36867)
      {
        if (++v10 == v11)
        {
          goto LABEL_20;
        }
      }
    }

    if (v10 == v11 || !*v10)
    {
LABEL_20:
      operator new();
    }

    (*(**v10 + 88))(*v10, __s, v4);
    v13 = *(this + 12);
    v14 = *(v13 + 16);
    v15 = *(v13 + 24);
    if (v14 != v15)
    {
      while (*(*v14 + 40) != 36868)
      {
        if (++v14 == v15)
        {
          goto LABEL_28;
        }
      }
    }

    if (v14 == v15 || !*v14)
    {
LABEL_28:
      operator new();
    }

    (*(**v14 + 88))(*v14, __s, v12);
    return 1;
  }

  return v6;
}

uint64_t _APP1::updateSubSecTime(_APP1 *this, char *__s)
{
  v4 = strlen(__s);
  __dst = 0;
  if ((v4 + 1) <= 4)
  {
    memcpy(&__dst, __s, v4);
  }

  result = *(this + 12);
  if (result)
  {
    v6 = *(result + 16);
    v7 = *(result + 24);
    if (v6 != v7)
    {
      while ((*v6)[20] != 37520)
      {
        if (++v6 == v7)
        {
          goto LABEL_11;
        }
      }
    }

    if (v6 != v7)
    {
      if (*v6)
      {
        _TAGList::removeTag(result, *v6);
      }
    }

LABEL_11:
    operator new();
  }

  return result;
}

uint64_t _APP1::updateOrientation(uint64_t this)
{
  v1 = *(this + 80);
  if (v1)
  {
    v2 = *(v1 + 16);
    v3 = *(v1 + 24);
    if (v2 != v3)
    {
      while (*(*v2 + 40) != 274)
      {
        v2 += 8;
        if (v2 == v3)
        {
          goto LABEL_11;
        }
      }
    }

    if (v2 == v3 || !*v2)
    {
LABEL_11:
      operator new();
    }

    v4 = *(**v2 + 72);

    return v4();
  }

  return this;
}

void _APP1::updateTagWithString(_APP1 *this, int a2, CFTypeRef cf)
{
  v5 = *(this + 10);
  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  if (v6 != v7)
  {
    while ((*v6)[20] != a2)
    {
      if (++v6 == v7)
      {
        return;
      }
    }
  }

  if (v6 != v7)
  {
    if (cf)
    {
      v8 = *v6;
      if (*v6)
      {
        v9 = CFGetTypeID(cf);
        if (v9 == CFStringGetTypeID())
        {
          IIOString::IIOString(__dst, cf);
          UTF8String = IIOString::createUTF8String(__dst);
          IIOString::~IIOString(__dst);
          if (UTF8String)
          {
            _TAGList::removeTag(*(this + 10), v8);
            if (strlen(UTF8String) + 1 >= 5)
            {
              operator new();
            }

            *__dst = 0;
            strlcpy(__dst, UTF8String, 4uLL);
            operator new();
          }
        }
      }
    }
  }
}

void _APP1::mergeWithIPTCProps(_APP1 *this, IIODictionary *a2)
{
  if (*(this + 10))
  {
    ObjectForKey = IIODictionary::getObjectForKey(a2, @"Caption/Abstract");
    if (ObjectForKey)
    {
      _APP1::updateTagWithString(this, 270, ObjectForKey);
    }

    v5 = IIODictionary::getObjectForKey(a2, @"Byline");
    if (v5)
    {
      _APP1::updateTagWithString(this, 315, v5);
    }

    v6 = IIODictionary::getObjectForKey(a2, @"CopyrightNotice");
    if (v6)
    {

      _APP1::updateTagWithString(this, 33432, v6);
    }
  }
}

void _APP1Exif::_APP1Exif (_APP1Exif *this, unsigned __int8 *a2, uint64_t a3)
{
  *(this + 73) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 32) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 19) = 0;
  *(this + 8) = 0;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 32) = 0;
  *this = &unk_1EF4DB668;
  *(this + 148) = 1;
  *(this + 7) = 236060641;
  *(this + 8) = 0x100000000;
  if (a3)
  {
    operator new[]();
  }

  *(this + 19) = 0;
  *(this + 20) = 0;
}

CFIndex _APP1Exif::writeToStream(CFIndex this, CFWriteStreamRef stream)
{
  if (*(this + 148) == 1)
  {
    v9 = v2;
    v10 = v3;
    v4 = this;
    if (*(this + 152))
    {
      v5 = *(this + 160);
      if (v5)
      {
        *buffer = -7681;
        v7 = v5 + 2;
        buffer[2] = HIBYTE(v7);
        buffer[3] = v7;
        CFWriteStreamWrite(stream, buffer, 4);
        return CFWriteStreamWrite(stream, *(v4 + 152), *(v4 + 160));
      }
    }
  }

  return this;
}

void _APP1Exif::~_APP1Exif (_APP1Exif *this)
{
  *this = &unk_1EF4DB668;
  v2 = *(this + 19);
  if (v2)
  {
    MEMORY[0x186602850](v2, 0x1000C4077774924);
    *(this + 19) = 0;
  }

  _APP1::~_APP1(this);
}

{
  _APP1Exif::~_APP1Exif (this);

  JUMPOUT(0x186602850);
}

void _APP13::_APP13(_APP13 *this, unsigned __int8 *a2, uint64_t a3, uint64_t a4, int a5, unsigned int a6, char a7)
{
  _APPx::_APPx(this, a2, a3, a4, a5, a6, a7);
  *v8 = &unk_1EF4DB720;
  *(v8 + 152) = 0;
  *(v8 + 80) = 0;
  *(v8 + 88) = 0;
  *(v8 + 96) = 0;
  *(v8 + 104) = 0;
  *(v8 + 112) = 0;
  *(v8 + 120) = a6;
  *(v8 + 144) = 0;
}

void _APP13::_APP13(_APP13 *this, CFTypeRef cf)
{
  *(this + 73) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 32) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 7) = 248578029;
  *(this + 8) = 0;
  *(this + 19) = 0;
  *(this + 8) = 0;
  *this = &unk_1EF4DB720;
  v3 = CFRetain(cf);
  *(this + 10) = v3;
  *(this + 11) = 0;
  *(this + 19) = 0;
  Length = CFDataGetLength(v3);
  v5 = Length + (Length & 1) + 28;
  *(this + 15) = v5;
  *(this + 96) = 1;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 15) = v5;
  *(this + 72) = 257;
}

void _APP13::_APP13(_APP13 *this, unsigned __int8 *a2, unsigned int a3)
{
  *(this + 73) = 0;
  *(this + 8) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 32) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 14) = 248578029;
  *(this + 15) = a3;
  *(this + 19) = 0;
  *(this + 8) = 0;
  *this = &unk_1EF4DB720;
  *(this + 10) = 0;
  *(this + 11) = a2;
  *(this + 96) = 1;
  *(this + 19) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 15) = a3;
  *(this + 72) = 257;
}

void _APP13::~_APP13(_APP13 *this)
{
  *this = &unk_1EF4DB720;
  v2 = *(this + 10);
  if (v2)
  {
    CFRelease(v2);
  }

  *(this + 10) = 0;
  v3 = *(this + 11);
  if (v3)
  {
    free(v3);
  }

  *(this + 11) = 0;
  v4 = *(this + 19);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  *(this + 19) = 0;
  *this = &unk_1EF4DB368;
}

{
  _APP13::~_APP13(this);

  JUMPOUT(0x186602850);
}

void _APP13::processData(_APP13 *this)
{
  v1 = (*(this + 5) + *(this + 2));
  if (*v1 == 255)
  {
    v3 = *(this + 15);
    if (v1[1] == 237 && v3 >= 0xF)
    {
      v5 = *(v1 + 4) == 0x6F68736F746F6850 && *(v1 + 6) == 8304;
      v6 = !v5;
      if (!v6 && v3 >= 0x1F)
      {
        v8 = 18;
        do
        {
          v9 = &v1[v8];
          if (v1[v8] != 56)
          {
            break;
          }

          if (v9[1] != 66)
          {
            break;
          }

          if (v9[2] != 73)
          {
            break;
          }

          if (v9[3] != 77)
          {
            break;
          }

          v10 = ((v1[v8 + 6] + 2) & 0x1FE) + v8 + 6;
          if (v10 + 12 >= v3)
          {
            break;
          }

          v11 = *&v1[v10];
          v8 = v10 + 4;
          if (v11)
          {
            v12 = bswap32(v11);
            if (v3 - v8 < v12)
            {
              return;
            }

            v13 = __rev16(*(v9 + 2));
            if (v13 == 1061)
            {
              *(this + 16) = v8;
              *(this + 17) = v12;
            }

            else if (v13 == 1028)
            {
              v14 = *(this + 19);
              if (!v14)
              {
                operator new();
              }

              ReadIPTCProps(v14, &v1[v8], v12);
              *(this + 13) = v8;
              *(this + 14) = (v12 & 1) + v12;
              *(this + 96) = 1;
            }

            v8 += (v12 + 1) & 0xFFFFFFFE;
          }
        }

        while (v8 + 12 < v3);
      }
    }
  }
}

void *_APP13::setIPTCData(void *this, CFDataRef theData)
{
  v2 = this;
  this[10] = theData;
  *(this + 145) = 1;
  if (theData)
  {
    Length = CFDataGetLength(theData);
    v4 = (Length & 1) + Length;
    v5 = v2[14];
    v6 = v4 + 12;
    v7 = v4 - v5;
    if (!v5)
    {
      v7 = v6;
    }

    *(v2 + 15) += v7;
    v8 = v2[10];

    return CFRetain(v8);
  }

  else
  {
    v9 = this[14];
    if (v9)
    {
      *(this + 15) = *(this + 30) - v9;
    }
  }

  return this;
}

const __CFData *_APP13::writeToStream(_APP13 *this, CFWriteStreamRef stream)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = (*(this + 5) + *(this + 2));
  *buffer = xmmword_1862251D6;
  *&buffer[14] = *(&xmmword_1862251D6 + 14);
  result = *(this + 10);
  if (result)
  {
    if (!*(this + 13))
    {
      v8 = *(this + 144);
      BytePtr = CFDataGetBytePtr(result);
      Length = CFDataGetLength(*(this + 10));
      v11 = Length;
      v12 = Length & 1;
      v13 = (Length & 1) + Length;
      if (v8 != 1)
      {
        v15 = *(this + 15) - 2;
        *v18 = -4609;
        v18[2] = BYTE1(v15);
        v18[3] = v15;
        CFWriteStreamWrite(stream, v18, 4);
        CFWriteStreamWrite(stream, v4 + 4, *(this + 15) - 4);
        *&v19[8] = 0;
        *v19 = 0x4044D494238;
        v19[10] = HIBYTE(v13);
        v19[11] = v13;
        CFWriteStreamWrite(stream, v19, 12);
        result = CFWriteStreamWrite(stream, BytePtr, v11);
        if (!v12)
        {
          return result;
        }

        v17 = 0;
        v14 = &v17;
        return CFWriteStreamWrite(stream, v14, 1);
      }

      buffer[2] = (v13 + 28) >> 8;
      buffer[3] = v13 + 28;
      buffer[28] = ((Length & 1) + Length) >> 8;
      buffer[29] = (Length & 1) + Length;
      CFWriteStreamWrite(stream, buffer, 30);
      result = CFWriteStreamWrite(stream, BytePtr, v11);
      if (!v12)
      {
        return result;
      }

LABEL_12:
      v19[0] = 0;
      v14 = v19;
      return CFWriteStreamWrite(stream, v14, 1);
    }

    if (*(this + 14) >= 3uLL)
    {
      CFDataGetBytePtr(result);
      CFDataGetLength(*(this + 10));
      operator new[]();
    }

LABEL_6:
    if (*(this + 144) != 1)
    {
      return result;
    }

    v6 = *(this + 11);
    if (!v6)
    {
      return result;
    }

    v7 = *(this + 15);
    *&buffer[2] = bswap32(v7 + (v7 & 1) + 2) >> 16;
    CFWriteStreamWrite(stream, buffer, 4);
    result = CFWriteStreamWrite(stream, v6, *(this + 15));
    if ((v7 & 1) == 0)
    {
      return result;
    }

    goto LABEL_12;
  }

  if (*(this + 11))
  {
    goto LABEL_6;
  }

  if (*(this + 145))
  {
    if (*(this + 13) >= 5uLL)
    {
      operator new[]();
    }
  }

  else
  {
    v16 = *(this + 15);

    return CFWriteStreamWrite(stream, v4, v16);
  }

  return result;
}

void _APP1XMP::_APP1XMP(_APP1XMP *this, unsigned __int8 *a2, uint64_t a3, uint64_t a4, int a5, int a6, char a7)
{
  _APPx::_APPx(this, a2, a3, a4, a5, a6, a7);
  *v7 = &unk_1EF4DB7B0;
  *(v7 + 68) = 256;
  *(v7 + 70) = 0;
  *(v7 + 58) |= 2u;
  *(v7 + 80) = 0;
  *(v7 + 88) = 0;
  *(v7 + 96) = 0;
}

void _APP1XMP::_APP1XMP(_APP1XMP *this, const __CFData *a2)
{
  *(this + 73) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 32) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 19) = 0;
  *(this + 8) = 0;
  *this = &unk_1EF4DB7B0;
  *(this + 96) = 1;
  *(this + 7) = 236126177;
  *(this + 8) = 0x10000000000;
  *(this + 10) = 0;
  *(this + 11) = 0;
  _APP1XMP::setXMPData(this, a2);
}

void *_APP1XMP::setXMPData(void *this, CFDataRef theData)
{
  if (theData)
  {
    v3 = this;
    *(this + 15) = CFDataGetLength(theData) + 33;
    v3[10] = theData;
    this = CFRetain(theData);
    *(v3 + 96) = 1;
  }

  return this;
}

CFDataRef _APP1XMP::processData(CFDataRef this)
{
  v1 = *(this + 15);
  if (v1 >= 4)
  {
    v2 = this;
    v3 = (*(this + 5) + *(this + 2));
    if (__PAIR64__(v3[1], *v3) == 0xE1000000FFLL && v1 >= 0x21 && *(v3 + 4) == 0x6E2F2F3A70747468 && *(v3 + 12) == 0x2E65626F64612E73 && *(v3 + 20) == 0x2F7061782F6D6F63 && *(v3 + 25) == 0x2F302E312F7061)
    {
      v7 = __rev16(*(v3 + 1)) - 31;
      *(this + 11) = CreateMetadataFromXMPBuffer(v3 + 33, v7);
      this = CFDataCreate(*MEMORY[0x1E695E480], v3 + 33, v7);
      *(v2 + 10) = this;
    }
  }

  return this;
}

void _APP1XMP::~_APP1XMP(_APP1XMP *this)
{
  *this = &unk_1EF4DB7B0;
  v2 = *(this + 10);
  if (v2)
  {
    CFRelease(v2);
  }

  *(this + 10) = 0;
  v3 = *(this + 11);
  if (v3)
  {
    CFRelease(v3);
  }

  *(this + 11) = 0;
  *this = &unk_1EF4DB368;
}

{
  _APP1XMP::~_APP1XMP(this);

  JUMPOUT(0x186602850);
}

CFIndex _APP1XMP::writeToStream(CFDataRef *this, __CFWriteStream *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*(this + 96) == 1 && (v4 = this[10]) != 0)
  {
    v8 = xmmword_1862251F4;
    strcpy(v9, "obe.com/xap/1.0/");
    BytePtr = CFDataGetBytePtr(v4);
    Length = CFDataGetLength(this[10]);
    WORD1(v8) = bswap32(Length + 31) >> 16;
    CFWriteStreamWrite(a2, &v8, 33);
  }

  else
  {
    BytePtr = this[2] + this[5];
    Length = *(this + 15);
  }

  return CFWriteStreamWrite(a2, BytePtr, Length);
}

void _APP1ExtendedXMP::_APP1ExtendedXMP(_APP1ExtendedXMP *this, unsigned __int8 *a2, uint64_t a3, uint64_t a4, int a5, int a6, char a7)
{
  _APPx::_APPx(this, a2, a3, a4, a5, a6, a7);
  *v7 = &unk_1EF4DB840;
  *(v7 + 68) = 0;
  *(v7 + 70) = 1;
  *(v7 + 58) |= 3u;
  *(v7 + 112) = 0;
  *(v7 + 80) = 0;
  *(v7 + 88) = 0;
}

void _APP1ExtendedXMP::_APP1ExtendedXMP(_APP1ExtendedXMP *this, CFDataRef theData, int a3, int a4, CFTypeRef cf)
{
  *(this + 73) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 32) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 19) = 0;
  *(this + 8) = 0;
  *this = &unk_1EF4DB840;
  *(this + 112) = 1;
  *(this + 7) = 236191713;
  *(this + 8) = 0x1000000000000;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 12) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  *(this + 26) = a3;
  *(this + 27) = a4;
  _APP1ExtendedXMP::setXMPData(this, theData);
}

void *_APP1ExtendedXMP::setXMPData(void *this, CFDataRef theData)
{
  if (theData)
  {
    v3 = this;
    *(this + 15) = CFDataGetLength(theData) + 79;
    v3[10] = theData;
    this = CFRetain(theData);
    *(v3 + 112) = 1;
  }

  return this;
}

CFDataRef _APP1ExtendedXMP::processData(CFDataRef this)
{
  v1 = *(this + 15);
  if (v1 >= 4)
  {
    v2 = this;
    v3 = (*(this + 5) + *(this + 2));
    if (*v3 == 255 && v1 >= 0x27 && v3[1] == 225)
    {
      this = strcmp(v3 + 4, "http://ns.adobe.com/xmp/extension/");
      if (v1 >= 0x47 && !this)
      {
        v4 = *MEMORY[0x1E695E480];
        this = CFDataCreate(*MEMORY[0x1E695E480], v3 + 39, 32);
        *(v2 + 12) = this;
        v5 = *(v2 + 15);
        if (v5 >= 0x4F)
        {
          *(v2 + 27) = bswap32(*(v3 + 71));
          *(v2 + 26) = bswap32(*(v3 + 75));
          this = CFDataCreate(v4, v3 + 79, v5 - 79);
          *(v2 + 10) = this;
        }
      }
    }
  }

  return this;
}

void _APP1ExtendedXMP::~_APP1ExtendedXMP(_APP1ExtendedXMP *this)
{
  *this = &unk_1EF4DB840;
  v2 = *(this + 10);
  if (v2)
  {
    CFRelease(v2);
  }

  *(this + 10) = 0;
  v3 = *(this + 11);
  if (v3)
  {
    CFRelease(v3);
  }

  *(this + 11) = 0;
  v4 = *(this + 12);
  if (v4)
  {
    CFRelease(v4);
  }

  *(this + 12) = 0;
  *this = &unk_1EF4DB368;
}

{
  _APP1ExtendedXMP::~_APP1ExtendedXMP(this);

  JUMPOUT(0x186602850);
}

CFIndex _APP1ExtendedXMP::writeToStream(_APP1ExtendedXMP *this, __CFWriteStream *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*(this + 112) == 1 && (v4 = *(this + 10)) != 0)
  {
    v10 = xmmword_186225239;
    strcpy(v11, "obe.com/xmp/extension/");
    BytePtr = CFDataGetBytePtr(v4);
    Length = CFDataGetLength(*(this + 10));
    WORD1(v10) = bswap32(Length + 77) >> 16;
    v7 = CFDataGetBytePtr(*(this + 12));
    v8 = *(v7 + 1);
    *&v11[23] = *v7;
    *&v11[39] = v8;
    v12 = vrev64_s32(vrev32_s8(*(this + 104)));
    CFWriteStreamWrite(a2, &v10, 79);
  }

  else
  {
    BytePtr = (*(this + 5) + *(this + 2));
    Length = *(this + 15);
  }

  return CFWriteStreamWrite(a2, BytePtr, Length);
}

void _APP2ICC::_APP2ICC(_APP2ICC *this, unsigned __int8 *a2, uint64_t a3, uint64_t a4, int a5, int a6, char a7)
{
  _APPx::_APPx(this, a2, a3, a4, a5, a6, a7);
  *v7 = &unk_1EF4DB8D0;
  *(v7 + 90) = 0;
  *(v7 + 80) = 0;
  *(v7 + 71) = 1;
  *(v7 + 88) = 0;
}

void _APP2ICC::_APP2ICC(_APP2ICC *this, CFDataRef theData, char a3, char a4)
{
  *(this + 73) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 32) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 7) = 237043682;
  *(this + 8) = 0;
  *(this + 19) = 0;
  *(this + 8) = 0;
  *this = &unk_1EF4DB8D0;
  Length = CFDataGetLength(theData);
  *(this + 10) = CFRetain(theData);
  *(this + 71) = 1;
  *(this + 88) = a3;
  *(this + 89) = a4;
  *(this + 15) = Length + 18;
  *(this + 90) = 1;
}

void _APP2ICC::~_APP2ICC(_APP2ICC *this)
{
  *this = &unk_1EF4DB8D0;
  v2 = *(this + 10);
  if (v2)
  {
    CFRelease(v2);
  }

  *this = &unk_1EF4DB368;
}

{
  _APP2ICC::~_APP2ICC(this);

  JUMPOUT(0x186602850);
}

uint64_t _APP2ICC::writeToStream(uint64_t this, CFWriteStreamRef stream)
{
  v3 = this;
  v11 = *MEMORY[0x1E69E9840];
  if (*(this + 90) == 1 && *(this + 80))
  {
    v9 = xmmword_186225288;
    WORD1(v9) = bswap32(*(this + 60) - 2) >> 16;
    v10 = *(this + 88);
    CFWriteStreamWrite(stream, &v9, 18);
    BytePtr = CFDataGetBytePtr(*(v3 + 80));
    Length = CFDataGetLength(*(v3 + 80));
    return CFWriteStreamWrite(stream, BytePtr, Length);
  }

  else
  {
    v6 = *(this + 40);
    if (v6)
    {
      v7 = *(this + 60);
      v8 = (v6 + *(this + 16));

      return CFWriteStreamWrite(stream, v8, v7);
    }
  }

  return this;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,_TAGList::sortPriority(void)::$_0 &,_TAG **,false>(uint64_t result, _TAG **a2, uint64_t a3, int a4)
{
  v7 = result;
  while (2)
  {
    v8 = a2 - 1;
    v9 = v7;
LABEL_3:
    v211 = a4;
    while (1)
    {
      v7 = v9;
      v10 = a2 - v9;
      if (v10 > 2)
      {
        switch(v10)
        {
          case 3:

            return std::__sort3[abi:fe200100]<std::_ClassicAlgPolicy,_TAGList::sortPriority(void)::$_0 &,_TAG **,0>(v9, v9 + 1, v8);
          case 4:

            return std::__sort4[abi:fe200100]<std::_ClassicAlgPolicy,_TAGList::sortPriority(void)::$_0 &,_TAG **,0>(v9, v9 + 1, v9 + 2, v8);
          case 5:

            return std::__sort5[abi:fe200100]<std::_ClassicAlgPolicy,_TAGList::sortPriority(void)::$_0 &,_TAG **,0>(v9, v9 + 1, v9 + 2, v9 + 3, v8);
        }
      }

      else
      {
        if (v10 < 2)
        {
          return result;
        }

        if (v10 == 2)
        {
          v88 = *(a2 - 1);
          v89 = *v9;
          v90 = _TAG::priority(v88);
          result = _TAG::priority(v89);
          if (v90 > result || v90 >= result && ((v185 = *(v88 + 17), v185 <= 4) ? (v186 = 0) : (v186 = (v185 + 1) & 0xFFFFFFFE), (v187 = *(v89 + 17), v187 >= 5) ? (v188 = ((v187 + 1) & 0xFFFFFFFE) > v186) : (v188 = 0), v188))
          {
            *v9 = v88;
            *(a2 - 1) = v89;
          }

          return result;
        }
      }

      v210 = v9;
      if (v10 <= 23)
      {
        v91 = v9 + 1;
        v92 = v7 == a2 || v91 == a2;
        v93 = v92;
        if (a4)
        {
          if ((v93 & 1) == 0)
          {
            v94 = 0;
            v95 = v7;
            do
            {
              v96 = v95;
              v95 = v91;
              v98 = *v96;
              v97 = v96[1];
              v99 = _TAG::priority(v97);
              result = _TAG::priority(v98);
              if (v99 > result || v99 >= result && ((v108 = *(v97 + 17), v108 <= 4) ? (v109 = 0) : (v109 = (v108 + 1) & 0xFFFFFFFE), (v110 = *(v98 + 17), v110 >= 5) ? (v111 = ((v110 + 1) & 0xFFFFFFFE) > v109) : (v111 = 0), v111))
              {
                v96[1] = v98;
                v100 = v7;
                if (v96 != v7)
                {
                  v101 = v94;
                  do
                  {
                    v102 = *(v210 + v101 - 8);
                    v103 = _TAG::priority(v97);
                    result = _TAG::priority(v102);
                    if (v103 <= result)
                    {
                      if (v103 < result)
                      {
                        v100 = (v210 + v101);
                        v7 = v210;
                        goto LABEL_238;
                      }

                      v104 = *(v97 + 17);
                      v105 = v104 <= 4 ? 0 : (v104 + 1) & 0xFFFFFFFE;
                      v106 = *(v102 + 17);
                      if (v106 < 5 || ((v106 + 1) & 0xFFFFFFFE) <= v105)
                      {
                        v100 = v96;
                        v7 = v210;
                        goto LABEL_238;
                      }
                    }

                    --v96;
                    *(v210 + v101) = v102;
                    v101 -= 8;
                  }

                  while (v101);
                  v7 = v210;
                  v100 = v210;
                }

LABEL_238:
                *v100 = v97;
              }

              ++v91;
              v94 += 8;
            }

            while (v95 + 1 != a2);
          }
        }

        else if ((v93 & 1) == 0)
        {
          v189 = 0;
          v190 = -8;
          v191 = 8;
          v192 = v7;
          do
          {
            v193 = *(v7 + v189);
            v189 = v191;
            v194 = *v91;
            v195 = _TAG::priority(*v91);
            result = _TAG::priority(v193);
            if (v195 > result || v195 >= result && ((v204 = *(v194 + 17), v204 <= 4) ? (v205 = 0) : (v205 = (v204 + 1) & 0xFFFFFFFE), (v206 = *(v193 + 17), v206 >= 5) ? (v207 = ((v206 + 1) & 0xFFFFFFFE) > v205) : (v207 = 0), v207))
            {
              *v91 = v193;
              v196 = v190;
              v197 = v192;
              while (1)
              {
                v198 = *(v197 - 1);
                v199 = _TAG::priority(v194);
                result = _TAG::priority(v198);
                if (v199 <= result)
                {
                  if (v199 < result)
                  {
                    break;
                  }

                  v200 = *(v194 + 17);
                  v201 = v200 <= 4 ? 0 : (v200 + 1) & 0xFFFFFFFE;
                  v202 = *(v198 + 17);
                  if (v202 < 5 || ((v202 + 1) & 0xFFFFFFFE) <= v201)
                  {
                    break;
                  }
                }

                *v197-- = v198;
                v196 += 8;
                if (!v196)
                {
                  goto LABEL_368;
                }
              }

              *v197 = v194;
              v7 = v210;
            }

            v191 = v189 + 8;
            v91 = (v7 + v189 + 8);
            ++v192;
            v190 -= 8;
          }

          while (v91 != a2);
        }

        return result;
      }

      if (!a3)
      {
        if (v9 != a2)
        {
          v112 = (v10 - 2) >> 1;
          v113 = v112;
          v212 = v112;
          v215 = a2 - v9;
          do
          {
            v114 = v113;
            if (v112 >= v113)
            {
              v115 = (2 * v113) | 1;
              v116 = &v7[v115];
              if (2 * v113 + 2 < v10)
              {
                v117 = *v116;
                v118 = v116[1];
                v119 = _TAG::priority(*v116);
                v120 = _TAG::priority(v118);
                if (v119 > v120 || v119 >= v120 && ((v121 = *(v117 + 17), v121 <= 4) ? (v122 = 0) : (v122 = (v121 + 1) & 0xFFFFFFFE), (v123 = *(v118 + 17), v123 >= 5) ? (v124 = ((v123 + 1) & 0xFFFFFFFE) > v122) : (v124 = 0), v124))
                {
                  ++v116;
                  v115 = 2 * v114 + 2;
                }
              }

              v125 = *v116;
              v7 = v210;
              v126 = v210[v114];
              v127 = _TAG::priority(*v116);
              result = _TAG::priority(v126);
              v112 = v212;
              v10 = v215;
              if (v127 <= result)
              {
                if (v127 < result || ((v128 = *(v125 + 17), v128 <= 4) ? (v129 = 0) : (v129 = (v128 + 1) & 0xFFFFFFFE), (v130 = *(v126 + 17), v130 >= 5) ? (v131 = ((v130 + 1) & 0xFFFFFFFE) > v129) : (v131 = 0), !v131))
                {
                  v208 = v114;
                  v210[v114] = v125;
                  while (v112 >= v115)
                  {
                    v132 = v116;
                    v133 = 2 * v115;
                    v115 = (2 * v115) | 1;
                    v116 = &v7[v115];
                    v134 = v133 + 2;
                    if (v133 + 2 < v10)
                    {
                      v135 = *v116;
                      v136 = v116[1];
                      v137 = _TAG::priority(*v116);
                      v138 = _TAG::priority(v136);
                      v139 = v137 >= v138;
                      v27 = v137 > v138;
                      v112 = v212;
                      if (v27 || v139 && ((v140 = *(v135 + 17), v140 <= 4) ? (v141 = 0) : (v141 = (v140 + 1) & 0xFFFFFFFE), (v142 = *(v136 + 17), v142 >= 5) ? (v143 = ((v142 + 1) & 0xFFFFFFFE) > v141) : (v143 = 0), v143))
                      {
                        ++v116;
                        v115 = v134;
                      }
                    }

                    v144 = *v116;
                    v145 = _TAG::priority(*v116);
                    result = _TAG::priority(v126);
                    if (v145 > result)
                    {
                      v116 = v132;
                      v7 = v210;
                      v10 = v215;
                      break;
                    }

                    v7 = v210;
                    v10 = v215;
                    if (v145 >= result)
                    {
                      v146 = *(v144 + 17);
                      v147 = v146 <= 4 ? 0 : (v146 + 1) & 0xFFFFFFFE;
                      v148 = *(v126 + 17);
                      if (v148 >= 5 && ((v148 + 1) & 0xFFFFFFFE) > v147)
                      {
                        v116 = v132;
                        break;
                      }
                    }

                    *v132 = v144;
                  }

                  *v116 = v126;
                  v114 = v208;
                }
              }
            }

            v113 = v114 - 1;
          }

          while (v114);
          do
          {
            v153 = 0;
            v209 = *v7;
            v154 = (v10 - 2) >> 1;
            v155 = v7;
            do
            {
              v156 = v155;
              v157 = &v155[v153];
              v155 = v157 + 1;
              v158 = 2 * v153;
              v153 = (2 * v153) | 1;
              v159 = v158 + 2;
              if (v158 + 2 < v10)
              {
                v160 = v157 + 1;
                v162 = v157[2];
                v161 = v157 + 2;
                v213 = *(v161 - 1);
                v163 = a2;
                v164 = v10;
                v165 = _TAG::priority(v213);
                v216 = v162;
                v155 = v160;
                result = _TAG::priority(v162);
                v10 = v164;
                a2 = v163;
                if (v165 > result || v165 >= result && ((v166 = *(v213 + 17), v166 <= 4) ? (v167 = 0) : (v167 = (v166 + 1) & 0xFFFFFFFE), (v168 = *(v216 + 17), v168 >= 5) ? (v169 = ((v168 + 1) & 0xFFFFFFFE) > v167) : (v169 = 0), v169))
                {
                  v155 = v161;
                  v153 = v159;
                }
              }

              *v156 = *v155;
            }

            while (v153 <= v154);
            if (v155 == --a2)
            {
              *v155 = v209;
            }

            else
            {
              *v155 = *a2;
              *a2 = v209;
              v170 = (v155 - v210 + 8) >> 3;
              v171 = v170 - 2;
              if (v170 >= 2)
              {
                v172 = v171 >> 1;
                v173 = &v210[v171 >> 1];
                v174 = *v173;
                v175 = *v155;
                v176 = v10;
                v177 = _TAG::priority(*v173);
                result = _TAG::priority(v175);
                if (v177 > result || (v10 = v176, v177 >= result) && ((v149 = *(v174 + 17), v149 <= 4) ? (v150 = 0) : (v150 = (v149 + 1) & 0xFFFFFFFE), (v151 = *(v175 + 17), v151 >= 5) ? (v152 = ((v151 + 1) & 0xFFFFFFFE) > v150) : (v152 = 0), v152))
                {
                  *v155 = v174;
                  if (v171 >= 2)
                  {
                    while (1)
                    {
                      v179 = v172 - 1;
                      v172 = (v172 - 1) >> 1;
                      v178 = &v210[v172];
                      v180 = *v178;
                      v181 = _TAG::priority(*v178);
                      result = _TAG::priority(v175);
                      if (v181 <= result)
                      {
                        if (v181 < result)
                        {
                          break;
                        }

                        v182 = *(v180 + 17);
                        v183 = v182 <= 4 ? 0 : (v182 + 1) & 0xFFFFFFFE;
                        v184 = *(v175 + 17);
                        if (v184 < 5 || ((v184 + 1) & 0xFFFFFFFE) <= v183)
                        {
                          break;
                        }
                      }

                      *v173 = v180;
                      v173 = &v210[v172];
                      if (v179 <= 1)
                      {
                        goto LABEL_327;
                      }
                    }
                  }

                  v178 = v173;
LABEL_327:
                  *v178 = v175;
                  v10 = v176;
                }
              }
            }

            v27 = v10-- <= 2;
            v7 = v210;
          }

          while (!v27);
        }

        return result;
      }

      v11 = v10 >> 1;
      v12 = &v9[v10 >> 1];
      if (v10 < 0x81)
      {
        result = std::__sort3[abi:fe200100]<std::_ClassicAlgPolicy,_TAGList::sortPriority(void)::$_0 &,_TAG **,0>(&v9[v10 >> 1], v9, v8);
      }

      else
      {
        std::__sort3[abi:fe200100]<std::_ClassicAlgPolicy,_TAGList::sortPriority(void)::$_0 &,_TAG **,0>(v9, &v9[v10 >> 1], v8);
        std::__sort3[abi:fe200100]<std::_ClassicAlgPolicy,_TAGList::sortPriority(void)::$_0 &,_TAG **,0>(v9 + 1, v12 - 1, a2 - 2);
        std::__sort3[abi:fe200100]<std::_ClassicAlgPolicy,_TAGList::sortPriority(void)::$_0 &,_TAG **,0>(v9 + 2, &v9[v11 + 1], a2 - 3);
        result = std::__sort3[abi:fe200100]<std::_ClassicAlgPolicy,_TAGList::sortPriority(void)::$_0 &,_TAG **,0>(v12 - 1, v12, &v9[v11 + 1]);
        v13 = *v9;
        *v9 = *v12;
        *v12 = v13;
      }

      --a3;
      v14 = *v9;
      if ((a4 & 1) == 0)
      {
        v15 = *(v9 - 1);
        v16 = _TAG::priority(v15);
        result = _TAG::priority(v14);
        if (v16 <= result)
        {
          v17 = result;
          if (v16 < result || ((v18 = *(v15 + 17), v18 <= 4) ? (v19 = 0) : (v19 = (v18 + 1) & 0xFFFFFFFE), (v20 = *(v14 + 17), v20 < 5) || ((v20 + 1) & 0xFFFFFFFE) <= v19))
          {
            v56 = *v8;
            result = _TAG::priority(*v8);
            if (v17 > result || v17 >= result && ((v85 = *(v14 + 17), v85 <= 4) ? (v86 = 0) : (v86 = (v85 + 1) & 0xFFFFFFFE), (v87 = *(v56 + 17), v87 >= 5) && ((v87 + 1) & 0xFFFFFFFE) > v86))
            {
              for (++v9; v9 != a2; ++v9)
              {
                v57 = *v9;
                result = _TAG::priority(*v9);
                if (v17 > result)
                {
                  goto LABEL_136;
                }

                if (v17 >= result)
                {
                  v58 = *(v14 + 17);
                  v59 = v58 <= 4 ? 0 : (v58 + 1) & 0xFFFFFFFE;
                  v60 = *(v57 + 17);
                  if (v60 >= 5 && ((v60 + 1) & 0xFFFFFFFE) > v59)
                  {
                    goto LABEL_136;
                  }
                }
              }

              goto LABEL_368;
            }

            for (++v9; v9 < a2; ++v9)
            {
              v62 = *v9;
              result = _TAG::priority(*v9);
              if (v17 > result)
              {
                break;
              }

              if (v17 >= result)
              {
                v63 = *(v14 + 17);
                v64 = v63 <= 4 ? 0 : (v63 + 1) & 0xFFFFFFFE;
                v65 = *(v62 + 17);
                if (v65 >= 5 && ((v65 + 1) & 0xFFFFFFFE) > v64)
                {
                  break;
                }
              }
            }

LABEL_136:
            v67 = a2;
            if (v9 < a2)
            {
              v67 = a2 - 1;
              if (a2 != v7)
              {
                do
                {
                  v68 = *v67;
                  result = _TAG::priority(*v67);
                  if (v17 <= result)
                  {
                    if (v17 < result)
                    {
                      goto LABEL_151;
                    }

                    v69 = *(v14 + 17);
                    v70 = v69 <= 4 ? 0 : (v69 + 1) & 0xFFFFFFFE;
                    v71 = *(v68 + 17);
                    if (v71 < 5 || ((v71 + 1) & 0xFFFFFFFE) <= v70)
                    {
                      goto LABEL_151;
                    }
                  }

                  v92 = v67-- == v7;
                }

                while (!v92);
              }

LABEL_368:
              __break(1u);
              return result;
            }

LABEL_151:
            if (v9 < v67)
            {
              v73 = *v9;
              v74 = *v67;
              do
              {
                *v9++ = v74;
                *v67 = v73;
                if (v9 == a2)
                {
                  goto LABEL_368;
                }

                v75 = _TAG::priority(v14);
                while (1)
                {
                  v73 = *v9;
                  result = _TAG::priority(*v9);
                  if (v75 > result)
                  {
                    break;
                  }

                  if (v75 >= result)
                  {
                    v76 = *(v14 + 17);
                    v77 = v76 <= 4 ? 0 : (v76 + 1) & 0xFFFFFFFE;
                    v78 = *(v73 + 17);
                    if (v78 >= 5 && ((v78 + 1) & 0xFFFFFFFE) > v77)
                    {
                      break;
                    }
                  }

                  if (++v9 == a2)
                  {
                    goto LABEL_368;
                  }
                }

                if (v67 == v7)
                {
                  goto LABEL_368;
                }

                --v67;
                while (1)
                {
                  v74 = *v67;
                  result = _TAG::priority(*v67);
                  if (v75 <= result)
                  {
                    if (v75 < result)
                    {
                      break;
                    }

                    v80 = *(v14 + 17);
                    v81 = v80 <= 4 ? 0 : (v80 + 1) & 0xFFFFFFFE;
                    v82 = *(v74 + 17);
                    if (v82 < 5 || ((v82 + 1) & 0xFFFFFFFE) <= v81)
                    {
                      break;
                    }
                  }

                  v92 = v67-- == v7;
                  if (v92)
                  {
                    goto LABEL_368;
                  }
                }
              }

              while (v9 < v67);
            }

            v84 = v9 - 1;
            if (v9 - 1 != v7)
            {
              *v7 = *v84;
            }

            a4 = 0;
            *v84 = v14;
            v8 = a2 - 1;
            goto LABEL_3;
          }
        }
      }

      if (v9 + 1 == a2)
      {
        goto LABEL_368;
      }

      v21 = _TAG::priority(v14);
      v22 = 1;
      while (1)
      {
        v23 = v7[v22];
        result = _TAG::priority(v23);
        if (result <= v21)
        {
          if (result < v21)
          {
            break;
          }

          v24 = *(v23 + 17);
          v25 = v24 <= 4 ? 0 : (v24 + 1) & 0xFFFFFFFE;
          v26 = *(v14 + 17);
          v27 = v26 >= 5 && ((v26 + 1) & 0xFFFFFFFE) > v25;
          if (!v27)
          {
            break;
          }
        }

        if (&v7[++v22] == a2)
        {
          goto LABEL_368;
        }
      }

      v214 = a3;
      v28 = &v7[v22];
      if (v22 == 1)
      {
        v29 = a2;
        if (v28 < a2)
        {
          v35 = *v8;
          result = _TAG::priority(*v8);
          v29 = v8;
          if (result <= v21)
          {
            v29 = v8;
            do
            {
              if (result >= v21)
              {
                v36 = *(v35 + 17);
                if (v36 <= 4)
                {
                  v37 = 0;
                }

                else
                {
                  v37 = (v36 + 1) & 0xFFFFFFFE;
                }

                v38 = *(v14 + 17);
                v139 = v38 >= 5;
                v39 = (v38 + 1) & 0xFFFFFFFE;
                v41 = !v139 || v39 <= v37;
                if (v28 >= v29 || (v41 & 1) == 0)
                {
                  break;
                }
              }

              else if (v28 >= v29)
              {
                break;
              }

              v42 = *--v29;
              v35 = v42;
              result = _TAG::priority(v42);
            }

            while (result <= v21);
          }
        }
      }

      else
      {
        v29 = v8;
        if (a2 == v7)
        {
          goto LABEL_368;
        }

        while (1)
        {
          v30 = *v29;
          result = _TAG::priority(*v29);
          if (result > v21)
          {
            break;
          }

          if (result >= v21)
          {
            v31 = *(v30 + 17);
            v32 = v31 <= 4 ? 0 : (v31 + 1) & 0xFFFFFFFE;
            v33 = *(v14 + 17);
            if (v33 >= 5 && ((v33 + 1) & 0xFFFFFFFE) > v32)
            {
              break;
            }
          }

          v92 = v29-- == v7;
          if (v92)
          {
            goto LABEL_368;
          }
        }
      }

      if (v28 < v29)
      {
        v43 = *v29;
        v9 = v28;
        v44 = v29;
        while (1)
        {
          *v9++ = v43;
          *v44 = v23;
          if (v9 == a2)
          {
            goto LABEL_368;
          }

          v45 = _TAG::priority(v14);
          while (1)
          {
            v23 = *v9;
            result = _TAG::priority(*v9);
            if (result <= v45)
            {
              if (result < v45)
              {
                break;
              }

              v46 = *(v23 + 17);
              v47 = v46 <= 4 ? 0 : (v46 + 1) & 0xFFFFFFFE;
              v48 = *(v14 + 17);
              if (v48 < 5 || ((v48 + 1) & 0xFFFFFFFE) <= v47)
              {
                break;
              }
            }

            if (++v9 == a2)
            {
              goto LABEL_368;
            }
          }

          if (v44 == v7)
          {
            goto LABEL_368;
          }

          --v44;
          while (1)
          {
            v43 = *v44;
            result = _TAG::priority(*v44);
            if (result > v45)
            {
              break;
            }

            if (result >= v45)
            {
              v50 = *(v43 + 17);
              v51 = v50 <= 4 ? 0 : (v50 + 1) & 0xFFFFFFFE;
              v52 = *(v14 + 17);
              if (v52 >= 5 && ((v52 + 1) & 0xFFFFFFFE) > v51)
              {
                break;
              }
            }

            v92 = v44-- == v7;
            if (v92)
            {
              goto LABEL_368;
            }
          }

          if (v9 >= v44)
          {
            goto LABEL_103;
          }
        }
      }

      v9 = v28;
LABEL_103:
      v54 = v9 - 1;
      if (v9 - 1 != v7)
      {
        *v7 = *v54;
      }

      *v54 = v14;
      v139 = v28 >= v29;
      a3 = v214;
      v8 = a2 - 1;
      a4 = v211;
      if (!v139)
      {
LABEL_109:
        result = std::__introsort<std::_ClassicAlgPolicy,_TAGList::sortPriority(void)::$_0 &,_TAG **,false>(v7, v9 - 1, v214, v211 & 1);
        a4 = 0;
        goto LABEL_3;
      }

      v55 = std::__insertion_sort_incomplete[abi:fe200100]<std::_ClassicAlgPolicy,_TAGList::sortPriority(void)::$_0 &,_TAG **>(v7, v9 - 1);
      result = std::__insertion_sort_incomplete[abi:fe200100]<std::_ClassicAlgPolicy,_TAGList::sortPriority(void)::$_0 &,_TAG **>(v9, a2);
      if (result)
      {
        break;
      }

      if (!v55)
      {
        goto LABEL_109;
      }
    }

    a2 = v9 - 1;
    if (!v55)
    {
      continue;
    }

    return result;
  }
}

uint64_t std::__sort3[abi:fe200100]<std::_ClassicAlgPolicy,_TAGList::sortPriority(void)::$_0 &,_TAG **,0>(_TAG **a1, _TAG **a2, _TAG **a3)
{
  v6 = *a2;
  v7 = *a1;
  v8 = _TAG::priority(*a2);
  v9 = _TAG::priority(v7);
  if (v8 > v9 || v8 >= v9 && ((v12 = *(v6 + 17), v12 <= 4) ? (v13 = 0) : (v13 = (v12 + 1) & 0xFFFFFFFE), (v14 = *(v7 + 17), v14 >= 5) ? (v15 = ((v14 + 1) & 0xFFFFFFFE) > v13) : (v15 = 0), v15))
  {
    v10 = *a3;
    result = _TAG::priority(*a3);
    if (result > v8 || result >= v8 && ((v20 = *(v10 + 17), v20 <= 4) ? (v21 = 0) : (v21 = (v20 + 1) & 0xFFFFFFFE), (v22 = *(v6 + 17), v22 >= 5) ? (v23 = ((v22 + 1) & 0xFFFFFFFE) > v21) : (v23 = 0), v23))
    {
      *a1 = v10;
    }

    else
    {
      *a1 = v6;
      *a2 = v7;
      v24 = *a3;
      v25 = _TAG::priority(*a3);
      result = _TAG::priority(v7);
      if (v25 <= result)
      {
        if (v25 < result)
        {
          return result;
        }

        v33 = *(v24 + 17);
        v34 = v33 <= 4 ? 0 : (v33 + 1) & 0xFFFFFFFE;
        v35 = *(v7 + 17);
        if (v35 < 5 || ((v35 + 1) & 0xFFFFFFFE) <= v34)
        {
          return result;
        }
      }

      *a2 = v24;
    }

    *a3 = v7;
    return result;
  }

  v16 = *a3;
  result = _TAG::priority(*a3);
  if (result > v8 || result >= v8 && ((v26 = *(v16 + 17), v26 <= 4) ? (v27 = 0) : (v27 = (v26 + 1) & 0xFFFFFFFE), (v28 = *(v6 + 17), v28 >= 5) ? (v29 = ((v28 + 1) & 0xFFFFFFFE) > v27) : (v29 = 0), v29))
  {
    *a2 = v16;
    *a3 = v6;
    v17 = *a2;
    v18 = *a1;
    v19 = _TAG::priority(*a2);
    result = _TAG::priority(v18);
    if (v19 > result || v19 >= result && ((v30 = *(v17 + 17), v30 <= 4) ? (v31 = 0) : (v31 = (v30 + 1) & 0xFFFFFFFE), (v32 = *(v18 + 17), v32 >= 5) && ((v32 + 1) & 0xFFFFFFFE) > v31))
    {
      *a1 = v17;
      *a2 = v18;
    }
  }

  return result;
}

uint64_t std::__sort4[abi:fe200100]<std::_ClassicAlgPolicy,_TAGList::sortPriority(void)::$_0 &,_TAG **,0>(_TAG **a1, _TAG **a2, _TAG **a3, _TAG **a4)
{
  std::__sort3[abi:fe200100]<std::_ClassicAlgPolicy,_TAGList::sortPriority(void)::$_0 &,_TAG **,0>(a1, a2, a3);
  v8 = *a4;
  v9 = *a3;
  v10 = _TAG::priority(*a4);
  result = _TAG::priority(v9);
  if (v10 > result || v10 >= result && ((v18 = *(v8 + 17), v18 <= 4) ? (v19 = 0) : (v19 = (v18 + 1) & 0xFFFFFFFE), (v20 = *(v9 + 17), v20 >= 5) ? (v21 = ((v20 + 1) & 0xFFFFFFFE) > v19) : (v21 = 0), v21))
  {
    *a3 = v8;
    *a4 = v9;
    v12 = *a3;
    v13 = *a2;
    v14 = _TAG::priority(*a3);
    result = _TAG::priority(v13);
    if (v14 > result || v14 >= result && ((v22 = *(v12 + 17), v22 <= 4) ? (v23 = 0) : (v23 = (v22 + 1) & 0xFFFFFFFE), (v24 = *(v13 + 17), v24 >= 5) ? (v25 = ((v24 + 1) & 0xFFFFFFFE) > v23) : (v25 = 0), v25))
    {
      *a2 = v12;
      *a3 = v13;
      v15 = *a2;
      v16 = *a1;
      v17 = _TAG::priority(*a2);
      result = _TAG::priority(v16);
      if (v17 > result || v17 >= result && ((v26 = *(v15 + 17), v26 <= 4) ? (v27 = 0) : (v27 = (v26 + 1) & 0xFFFFFFFE), (v28 = *(v16 + 17), v28 >= 5) && ((v28 + 1) & 0xFFFFFFFE) > v27))
      {
        *a1 = v15;
        *a2 = v16;
      }
    }
  }

  return result;
}

uint64_t std::__sort5[abi:fe200100]<std::_ClassicAlgPolicy,_TAGList::sortPriority(void)::$_0 &,_TAG **,0>(_TAG **a1, _TAG **a2, _TAG **a3, _TAG **a4, _TAG **a5)
{
  std::__sort4[abi:fe200100]<std::_ClassicAlgPolicy,_TAGList::sortPriority(void)::$_0 &,_TAG **,0>(a1, a2, a3, a4);
  v10 = *a5;
  v11 = *a4;
  v12 = _TAG::priority(*a5);
  result = _TAG::priority(v11);
  if (v12 > result || v12 >= result && ((v23 = *(v10 + 17), v23 <= 4) ? (v24 = 0) : (v24 = (v23 + 1) & 0xFFFFFFFE), (v25 = *(v11 + 17), v25 >= 5) ? (v26 = ((v25 + 1) & 0xFFFFFFFE) > v24) : (v26 = 0), v26))
  {
    *a4 = v10;
    *a5 = v11;
    v14 = *a4;
    v15 = *a3;
    v16 = _TAG::priority(*a4);
    result = _TAG::priority(v15);
    if (v16 > result || v16 >= result && ((v27 = *(v14 + 17), v27 <= 4) ? (v28 = 0) : (v28 = (v27 + 1) & 0xFFFFFFFE), (v29 = *(v15 + 17), v29 >= 5) ? (v30 = ((v29 + 1) & 0xFFFFFFFE) > v28) : (v30 = 0), v30))
    {
      *a3 = v14;
      *a4 = v15;
      v17 = *a3;
      v18 = *a2;
      v19 = _TAG::priority(*a3);
      result = _TAG::priority(v18);
      if (v19 > result || v19 >= result && ((v31 = *(v17 + 17), v31 <= 4) ? (v32 = 0) : (v32 = (v31 + 1) & 0xFFFFFFFE), (v33 = *(v18 + 17), v33 >= 5) && ((v33 + 1) & 0xFFFFFFFE) > v32))
      {
        *a2 = v17;
        *a3 = v18;
        v20 = *a2;
        v21 = *a1;
        v22 = _TAG::priority(*a2);
        result = _TAG::priority(v21);
        if (v22 > result || v22 >= result && ((v34 = *(v20 + 17), v34 <= 4) ? (v35 = 0) : (v35 = (v34 + 1) & 0xFFFFFFFE), (v36 = *(v21 + 17), v36 >= 5) && ((v36 + 1) & 0xFFFFFFFE) > v35))
        {
          *a1 = v20;
          *a2 = v21;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:fe200100]<std::_ClassicAlgPolicy,_TAGList::sortPriority(void)::$_0 &,_TAG **>(_TAG **a1, _TAG **a2)
{
  v4 = a2 - a1;
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v5 = *(a2 - 1);
        v6 = *a1;
        v7 = _TAG::priority(v5);
        v8 = _TAG::priority(v6);
        if (v7 > v8 || v7 >= v8 && ((v31 = *(v5 + 17), v31 <= 4) ? (v32 = 0) : (v32 = (v31 + 1) & 0xFFFFFFFE), (v33 = *(v6 + 17), v33 >= 5) ? (v34 = ((v33 + 1) & 0xFFFFFFFE) > v32) : (v34 = 0), v34))
        {
          *a1 = v5;
          *(a2 - 1) = v6;
        }

        return 1;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      std::__sort3[abi:fe200100]<std::_ClassicAlgPolicy,_TAGList::sortPriority(void)::$_0 &,_TAG **,0>(a1, a1 + 1, a2 - 1);
      return 1;
    case 4:
      std::__sort4[abi:fe200100]<std::_ClassicAlgPolicy,_TAGList::sortPriority(void)::$_0 &,_TAG **,0>(a1, a1 + 1, a1 + 2, a2 - 1);
      return 1;
    case 5:
      std::__sort5[abi:fe200100]<std::_ClassicAlgPolicy,_TAGList::sortPriority(void)::$_0 &,_TAG **,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
      return 1;
  }

LABEL_11:
  v9 = a1 + 2;
  std::__sort3[abi:fe200100]<std::_ClassicAlgPolicy,_TAGList::sortPriority(void)::$_0 &,_TAG **,0>(a1, a1 + 1, a1 + 2);
  v10 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v11 = 0;
  v12 = 0;
  while (1)
  {
    v13 = *v10;
    v14 = *v9;
    v15 = _TAG::priority(*v10);
    v16 = _TAG::priority(v14);
    if (v15 > v16 || v15 >= v16 && ((v26 = *(v13 + 17), v26 <= 4) ? (v27 = 0) : (v27 = (v26 + 1) & 0xFFFFFFFE), (v28 = *(v14 + 17), v28 >= 5) ? (v29 = ((v28 + 1) & 0xFFFFFFFE) > v27) : (v29 = 0), v29))
    {
      *v10 = v14;
      v17 = v11;
      while (1)
      {
        v18 = *(a1 + v17 + 8);
        v19 = _TAG::priority(v13);
        v20 = _TAG::priority(v18);
        if (v19 <= v20)
        {
          if (v19 < v20)
          {
            break;
          }

          v21 = *(v13 + 17);
          v22 = v21 <= 4 ? 0 : (v21 + 1) & 0xFFFFFFFE;
          v23 = *(v18 + 17);
          if (v23 < 5 || ((v23 + 1) & 0xFFFFFFFE) <= v22)
          {
            break;
          }
        }

        *(a1 + v17 + 16) = v18;
        v17 -= 8;
        if (v17 == -16)
        {
          v25 = a1;
          goto LABEL_37;
        }
      }

      v25 = (a1 + v17 + 16);
LABEL_37:
      *v25 = v13;
      if (++v12 == 8)
      {
        return v10 + 1 == a2;
      }
    }

    v9 = v10;
    v11 += 8;
    if (++v10 == a2)
    {
      return 1;
    }
  }
}

unint64_t std::__introsort<std::_ClassicAlgPolicy,_TAGList::sortTagID(void)::$_0 &,_TAG **,false>(unint64_t result, uint64_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = a2 - v8;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        v82 = *(a2 - 1);
        v83 = *v8;
        if (*(v82 + 40) < *(*v8 + 40))
        {
          *v8 = v82;
          *(a2 - 1) = v83;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      v51 = (v8 + 1);
      v84 = v8[1];
      v52 = (v8 + 2);
      v12 = v8[2];
      v85 = *v8;
      v86 = *(v84 + 20);
      v87 = *(*v8 + 40);
      v88 = *(v12 + 40);
      if (v86 >= v87)
      {
        if (v88 >= v86)
        {
          goto LABEL_190;
        }

        *v51 = v12;
        *v52 = v84;
        v89 = v8;
        v90 = (v8 + 1);
        result = v84;
        if (v88 >= v87)
        {
          goto LABEL_191;
        }
      }

      else
      {
        v89 = v8;
        v90 = (v8 + 2);
        result = *v8;
        if (v88 >= v86)
        {
          *v8 = v84;
          v8[1] = v85;
          v89 = v8 + 1;
          v90 = (v8 + 2);
          result = v85;
          if (v88 >= v87)
          {
            goto LABEL_190;
          }
        }
      }

      *v89 = v12;
      *v90 = v85;
      v84 = result;
      goto LABEL_191;
    }

    if (v9 == 5)
    {

      return std::__sort5[abi:fe200100]<std::_ClassicAlgPolicy,_TAGList::sortTagID(void)::$_0 &,_TAG **,0>(v8, v8 + 1, v8 + 2, v8 + 3, a2 - 1);
    }

LABEL_10:
    if (v9 <= 23)
    {
      v51 = (v8 + 1);
      v92 = v8 == a2 || v51 == a2;
      if (a4)
      {
        if (!v92)
        {
          v93 = 0;
          v94 = v8;
          do
          {
            v95 = *v94;
            v94 = v51;
            v96 = *v51;
            v97 = *(v96 + 40);
            if (v97 < *(v95 + 40))
            {
              v98 = v93;
              while (1)
              {
                *(v8 + v98 + 8) = v95;
                if (!v98)
                {
                  break;
                }

                v95 = *(v8 + v98 - 8);
                v98 -= 8;
                if (v97 >= *(v95 + 40))
                {
                  v99 = (v8 + v98 + 8);
                  goto LABEL_140;
                }
              }

              v99 = v8;
LABEL_140:
              *v99 = v96;
            }

            v51 = (v94 + 1);
            v93 += 8;
          }

          while (v94 + 1 != a2);
        }

        return result;
      }

      if (v92)
      {
        return result;
      }

      v52 = 0;
      v132 = 8;
      while (1)
      {
        v133 = *(v8 + v52);
        v52 = v132;
        v134 = *v51;
        v12 = *(*v51 + 40);
        if (v12 < *(v133 + 40))
        {
          break;
        }

LABEL_187:
        v132 = v52 + 8;
        v51 += 4;
        if (v51 == a2)
        {
          return result;
        }
      }

      v135 = 0;
      while (1)
      {
        *&v51[v135] = v133;
        if (!(v52 + v135 * 2))
        {
          break;
        }

        v133 = *&v51[v135 - 8];
        v135 -= 4;
        if (v12 >= *(v133 + 40))
        {
          *&v51[v135] = v134;
          goto LABEL_187;
        }
      }

LABEL_189:
      __break(1u);
LABEL_190:
      v84 = v12;
LABEL_191:
      v136 = *(a2 - 1);
      if (*(v136 + 40) < *(v84 + 20))
      {
        *v52 = v136;
        *(a2 - 1) = v84;
        v137 = *v52;
        v138 = *v51;
        v139 = *(v137 + 40);
        if (v139 < *(v138 + 40))
        {
          v7[1] = v137;
          v7[2] = v138;
          v140 = *v7;
          if (v139 < *(*v7 + 40))
          {
            *v7 = v137;
            v7[1] = v140;
          }
        }
      }

      return result;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v100 = (v9 - 2) >> 1;
        v101 = v100;
        do
        {
          v102 = v101;
          if (v100 >= v101)
          {
            v103 = (2 * v101) | 1;
            v104 = &v8[v103];
            v105 = *v104;
            if (2 * v102 + 2 < v9 && *(v105 + 40) < *(v104[1] + 40))
            {
              v105 = v104[1];
              ++v104;
              v103 = 2 * v102 + 2;
            }

            result = &v8[v102];
            v106 = *result;
            v107 = *(*result + 40);
            if (*(v105 + 40) >= v107)
            {
              do
              {
                v108 = v104;
                *result = v105;
                if (v100 < v103)
                {
                  break;
                }

                v109 = (2 * v103) | 1;
                v104 = &v8[v109];
                v110 = 2 * v103 + 2;
                v105 = *v104;
                if (v110 < v9 && *(v105 + 40) < *(v104[1] + 40))
                {
                  v105 = v104[1];
                  ++v104;
                  v109 = v110;
                }

                result = v108;
                v103 = v109;
              }

              while (*(v105 + 40) >= v107);
              *v108 = v106;
            }
          }

          v101 = v102 - 1;
        }

        while (v102);
        do
        {
          v111 = 0;
          v112 = *v8;
          v113 = v8;
          do
          {
            v114 = &v113[v111];
            v115 = v114 + 1;
            v116 = v114[1];
            v117 = (2 * v111) | 1;
            v111 = 2 * v111 + 2;
            if (v111 >= v9)
            {
              v111 = v117;
            }

            else
            {
              v120 = v114[2];
              v118 = v114 + 2;
              v119 = v120;
              result = *(v116 + 40);
              if (result >= *(v120 + 40))
              {
                v111 = v117;
              }

              else
              {
                v116 = v119;
                v115 = v118;
              }
            }

            *v113 = v116;
            v113 = v115;
          }

          while (v111 <= ((v9 - 2) >> 1));
          if (v115 == --a2)
          {
            *v115 = v112;
          }

          else
          {
            *v115 = *a2;
            *a2 = v112;
            v121 = (v115 - v8 + 8) >> 3;
            v122 = v121 < 2;
            v123 = v121 - 2;
            if (!v122)
            {
              v124 = v123 >> 1;
              v125 = &v8[v124];
              v126 = *v125;
              v127 = *v115;
              v128 = *(*v115 + 40);
              if (*(*v125 + 40) < v128)
              {
                do
                {
                  v129 = v125;
                  *v115 = v126;
                  if (!v124)
                  {
                    break;
                  }

                  v124 = (v124 - 1) >> 1;
                  v125 = &v8[v124];
                  v126 = *v125;
                  v115 = v129;
                }

                while (*(*v125 + 40) < v128);
                *v129 = v127;
              }
            }
          }

          v122 = v9-- <= 2;
        }

        while (!v122);
      }

      return result;
    }

    v10 = &v8[v9 >> 1];
    v11 = v10;
    v12 = *(a2 - 1);
    v13 = *(v12 + 40);
    if (v9 >= 0x81)
    {
      v14 = *v10;
      v15 = *v8;
      v16 = *(*v10 + 40);
      v17 = *(*v8 + 40);
      if (v16 >= v17)
      {
        if (v13 < v16)
        {
          *v10 = v12;
          *(a2 - 1) = v14;
          v22 = *v8;
          if (*(*v10 + 40) < *(*v8 + 40))
          {
            *v8 = *v10;
            *v10 = v22;
          }
        }
      }

      else
      {
        if (v13 < v16)
        {
          *v8 = v12;
          goto LABEL_27;
        }

        *v8 = v14;
        *v10 = v15;
        v24 = *(a2 - 1);
        if (*(v24 + 40) < v17)
        {
          *v10 = v24;
LABEL_27:
          *(a2 - 1) = v15;
        }
      }

      v25 = v10 - 1;
      v26 = *(v10 - 1);
      v27 = v8[1];
      v28 = *(v26 + 40);
      v29 = *(v27 + 40);
      v30 = *(a2 - 2);
      v31 = *(v30 + 40);
      if (v28 >= v29)
      {
        if (v31 < v28)
        {
          *v25 = v30;
          *(a2 - 2) = v26;
          v32 = v8[1];
          if (*(*v25 + 40) < *(v32 + 40))
          {
            v8[1] = *v25;
            *v25 = v32;
          }
        }
      }

      else
      {
        if (v31 < v28)
        {
          v8[1] = v30;
          goto LABEL_39;
        }

        v8[1] = v26;
        *v25 = v27;
        v34 = *(a2 - 2);
        if (*(v34 + 40) < v29)
        {
          *v25 = v34;
LABEL_39:
          *(a2 - 2) = v27;
        }
      }

      v37 = v10[1];
      v35 = v10 + 1;
      v36 = v37;
      v38 = v8[2];
      v39 = *(v37 + 40);
      v40 = *(v38 + 40);
      v41 = *(a2 - 3);
      v42 = *(v41 + 40);
      if (v39 >= v40)
      {
        if (v42 < v39)
        {
          *v35 = v41;
          *(a2 - 3) = v36;
          v43 = v8[2];
          if (*(*v35 + 40) < *(v43 + 40))
          {
            v8[2] = *v35;
            *v35 = v43;
          }
        }
      }

      else
      {
        if (v42 < v39)
        {
          v8[2] = v41;
          goto LABEL_48;
        }

        v8[2] = v36;
        *v35 = v38;
        v44 = *(a2 - 3);
        if (*(v44 + 40) < v40)
        {
          *v35 = v44;
LABEL_48:
          *(a2 - 3) = v38;
        }
      }

      v12 = *v11;
      v45 = *v25;
      v46 = *(*v11 + 40);
      v47 = *(*v25 + 40);
      v48 = *v35;
      v49 = *(*v35 + 40);
      if (v46 >= v47)
      {
        if (v49 >= v46)
        {
          goto LABEL_56;
        }

        *v11 = v48;
        *v35 = v12;
        v35 = v11;
        v12 = v45;
        if (v49 >= v47)
        {
          v12 = v48;
          goto LABEL_56;
        }
      }

      else if (v49 >= v46)
      {
        *v25 = v12;
        *v11 = v45;
        v25 = v11;
        v12 = v48;
        if (v49 >= v47)
        {
          v12 = v45;
LABEL_56:
          v50 = *v8;
          *v8 = v12;
          *v11 = v50;
          goto LABEL_57;
        }
      }

      *v25 = v48;
      *v35 = v45;
      goto LABEL_56;
    }

    v18 = *v8;
    v19 = *v11;
    v20 = *(*v8 + 40);
    v21 = *(*v11 + 40);
    if (v20 >= v21)
    {
      if (v13 < v20)
      {
        *v8 = v12;
        *(a2 - 1) = v18;
        v23 = *v11;
        v12 = *(*v8 + 40);
        if (v12 < *(*v11 + 40))
        {
          *v11 = *v8;
          *v8 = v23;
        }
      }
    }

    else
    {
      if (v13 < v20)
      {
        *v11 = v12;
LABEL_36:
        *(a2 - 1) = v19;
        goto LABEL_57;
      }

      *v11 = v18;
      *v8 = v19;
      v33 = *(a2 - 1);
      if (*(v33 + 40) < v21)
      {
        *v8 = v33;
        goto LABEL_36;
      }
    }

LABEL_57:
    --a3;
    v51 = *v8;
    if ((a4 & 1) != 0 || (v52 = v51[20], *(*(v8 - 1) + 40) < v52))
    {
      v53 = 0;
      do
      {
        v52 = &v8[v53 + 1];
        if (v52 == a2)
        {
          goto LABEL_189;
        }

        v54 = *v52;
        v12 = v51[20];
        ++v53;
      }

      while (*(*v52 + 40) < v12);
      v52 = &v8[v53];
      v55 = a2;
      if (v53 != 1)
      {
        while (v55 != v8)
        {
          v56 = *--v55;
          if (*(v56 + 40) < v12)
          {
            goto LABEL_69;
          }
        }

        goto LABEL_189;
      }

      v55 = a2;
      do
      {
        if (v52 >= v55)
        {
          break;
        }

        v57 = *--v55;
      }

      while (*(v57 + 40) >= v12);
LABEL_69:
      if (v52 < v55)
      {
        v58 = *v55;
        v59 = &v8[v53];
        v60 = v55;
LABEL_71:
        *v59 = v58;
        *v60 = v54;
        v61 = v59 + 1;
        while (v61 != a2)
        {
          v62 = *v61++;
          v54 = v62;
          if (*(v62 + 40) >= v12)
          {
            v59 = v61 - 1;
            while (v60 != v8)
            {
              v63 = *--v60;
              v58 = v63;
              if (*(v63 + 40) < v12)
              {
                if (v59 < v60)
                {
                  goto LABEL_71;
                }

                v64 = v61 - 2;
                goto LABEL_80;
              }
            }

            goto LABEL_189;
          }
        }

        goto LABEL_189;
      }

      v64 = (v52 - 8);
LABEL_80:
      if (v64 != v8)
      {
        *v8 = *v64;
      }

      *v64 = v51;
      if (v52 < v55)
      {
LABEL_85:
        result = std::__introsort<std::_ClassicAlgPolicy,_TAGList::sortTagID(void)::$_0 &,_TAG **,false>(v7, v64, a3, a4 & 1);
        a4 = 0;
        v8 = v64 + 1;
        continue;
      }

      v65 = std::__insertion_sort_incomplete[abi:fe200100]<std::_ClassicAlgPolicy,_TAGList::sortTagID(void)::$_0 &,_TAG **>(v8, v64);
      v8 = v64 + 1;
      result = std::__insertion_sort_incomplete[abi:fe200100]<std::_ClassicAlgPolicy,_TAGList::sortTagID(void)::$_0 &,_TAG **>(v64 + 1, a2);
      if (!result)
      {
        if (v65)
        {
          continue;
        }

        goto LABEL_85;
      }

      a2 = v64;
      if (v65)
      {
        return result;
      }

      goto LABEL_2;
    }

    if (v52 >= *(*(a2 - 1) + 40))
    {
      v68 = v8 + 1;
      do
      {
        v8 = v68;
        if (v68 >= a2)
        {
          break;
        }

        ++v68;
        v12 = *(*v8 + 40);
      }

      while (v52 >= v12);
    }

    else
    {
      v66 = v8 + 1;
      do
      {
        if (v66 == a2)
        {
          goto LABEL_189;
        }

        v67 = *v66++;
        v12 = *(v67 + 40);
      }

      while (v52 >= v12);
      v8 = v66 - 1;
    }

    v69 = a2;
    if (v8 < a2)
    {
      v69 = a2;
      while (v69 != v7)
      {
        v70 = *--v69;
        v12 = *(v70 + 40);
        if (v52 >= v12)
        {
          goto LABEL_99;
        }
      }

      goto LABEL_189;
    }

LABEL_99:
    if (v8 < v69)
    {
      v12 = *v8;
      v71 = *v69;
      do
      {
        *v8 = v71;
        v72 = v8 + 1;
        *v69 = v12;
        do
        {
          if (v72 == a2)
          {
            goto LABEL_189;
          }

          v73 = *v72++;
          v12 = v73;
        }

        while (v52 >= *(v73 + 40));
        v8 = v72 - 1;
        do
        {
          if (v69 == v7)
          {
            goto LABEL_189;
          }

          v74 = *--v69;
          v71 = v74;
        }

        while (v52 < *(v74 + 40));
      }

      while (v8 < v69);
    }

    v75 = (v8 - 1);
    if (v8 - 1 != v7)
    {
      *v7 = *v75;
    }

    a4 = 0;
    *v75 = v51;
  }

  v76 = *v8;
  v77 = v8[1];
  v78 = *(v77 + 40);
  v79 = *(*v8 + 40);
  v80 = *(a2 - 1);
  v81 = *(v80 + 40);
  if (v78 >= v79)
  {
    if (v81 < v78)
    {
      v8[1] = v80;
      *(a2 - 1) = v77;
      v131 = *v8;
      v130 = v8[1];
      if (*(v130 + 40) < *(*v8 + 40))
      {
        *v8 = v130;
        v8[1] = v131;
      }
    }
  }

  else
  {
    if (v81 >= v78)
    {
      *v8 = v77;
      v8[1] = v76;
      v141 = *(a2 - 1);
      if (*(v141 + 40) >= v79)
      {
        return result;
      }

      v8[1] = v141;
    }

    else
    {
      *v8 = v80;
    }

    *(a2 - 1) = v76;
  }

  return result;
}

uint64_t *std::__sort5[abi:fe200100]<std::_ClassicAlgPolicy,_TAGList::sortTagID(void)::$_0 &,_TAG **,0>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = *(*a2 + 40);
  v8 = *(*result + 40);
  v9 = *a3;
  v10 = *(*a3 + 40);
  if (v7 >= v8)
  {
    if (v10 >= v7)
    {
      v5 = *a3;
    }

    else
    {
      *a2 = v9;
      *a3 = v5;
      v11 = *result;
      if (*(*a2 + 40) < *(*result + 40))
      {
        *result = *a2;
        *a2 = v11;
        v5 = *a3;
      }
    }
  }

  else
  {
    if (v10 < v7)
    {
      *result = v9;
LABEL_9:
      *a3 = v6;
      v5 = v6;
      goto LABEL_11;
    }

    *result = v5;
    *a2 = v6;
    v5 = *a3;
    if (*(*a3 + 40) < v8)
    {
      *a2 = v5;
      goto LABEL_9;
    }
  }

LABEL_11:
  if (*(*a4 + 40) < *(v5 + 40))
  {
    *a3 = *a4;
    *a4 = v5;
    v12 = *a2;
    if (*(*a3 + 40) < *(*a2 + 40))
    {
      *a2 = *a3;
      *a3 = v12;
      v13 = *result;
      if (*(*a2 + 40) < *(*result + 40))
      {
        *result = *a2;
        *a2 = v13;
      }
    }
  }

  v14 = *a4;
  if (*(*a5 + 40) < *(*a4 + 40))
  {
    *a4 = *a5;
    *a5 = v14;
    v15 = *a3;
    if (*(*a4 + 40) < *(*a3 + 40))
    {
      *a3 = *a4;
      *a4 = v15;
      v16 = *a2;
      if (*(*a3 + 40) < *(*a2 + 40))
      {
        *a2 = *a3;
        *a3 = v16;
        v17 = *result;
        if (*(*a2 + 40) < *(*result + 40))
        {
          *result = *a2;
          *a2 = v17;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:fe200100]<std::_ClassicAlgPolicy,_TAGList::sortTagID(void)::$_0 &,_TAG **>(uint64_t *a1, uint64_t *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v5 = *a1;
      v6 = a1[1];
      v7 = *(v6 + 40);
      v8 = *(*a1 + 40);
      v9 = *(a2 - 1);
      v10 = *(v9 + 40);
      if (v7 >= v8)
      {
        if (v10 < v7)
        {
          a1[1] = v9;
          *(a2 - 1) = v6;
          v32 = *a1;
          v31 = a1[1];
          if (*(v31 + 40) < *(*a1 + 40))
          {
            *a1 = v31;
            a1[1] = v32;
          }
        }

        return 1;
      }

      if (v10 >= v7)
      {
        *a1 = v6;
        a1[1] = v5;
        v47 = *(a2 - 1);
        if (*(v47 + 40) >= v8)
        {
          return 1;
        }

        a1[1] = v47;
      }

      else
      {
        *a1 = v9;
      }

      *(a2 - 1) = v5;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:fe200100]<std::_ClassicAlgPolicy,_TAGList::sortTagID(void)::$_0 &,_TAG **,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
      return 1;
    }

    v20 = a1 + 1;
    v21 = a1[1];
    v22 = a1 + 2;
    v23 = a1[2];
    v24 = *a1;
    v25 = *(v21 + 40);
    v26 = *(*a1 + 40);
    v27 = *(v23 + 40);
    if (v25 >= v26)
    {
      if (v27 >= v25)
      {
LABEL_41:
        v21 = v23;
        goto LABEL_42;
      }

      *v20 = v23;
      *v22 = v21;
      v28 = a1;
      v29 = a1 + 1;
      v30 = v21;
      if (v27 >= v26)
      {
LABEL_42:
        v42 = *(a2 - 1);
        if (*(v42 + 40) < *(v21 + 40))
        {
          *v22 = v42;
          *(a2 - 1) = v21;
          v43 = *v22;
          v44 = *v20;
          v45 = *(v43 + 40);
          if (v45 < *(v44 + 40))
          {
            a1[1] = v43;
            a1[2] = v44;
            v46 = *a1;
            if (v45 < *(*a1 + 40))
            {
              *a1 = v43;
              a1[1] = v46;
            }
          }
        }

        return 1;
      }
    }

    else
    {
      v28 = a1;
      v29 = a1 + 2;
      v30 = *a1;
      if (v27 >= v25)
      {
        *a1 = v21;
        a1[1] = v24;
        v28 = a1 + 1;
        v29 = a1 + 2;
        v30 = v24;
        if (v27 >= v26)
        {
          goto LABEL_41;
        }
      }
    }

    *v28 = v23;
    *v29 = v24;
    v21 = v30;
    goto LABEL_42;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *(a2 - 1);
    v4 = *a1;
    if (*(v3 + 40) < *(*a1 + 40))
    {
      *a1 = v3;
      *(a2 - 1) = v4;
    }

    return 1;
  }

LABEL_13:
  v12 = a1 + 2;
  v11 = a1[2];
  v13 = a1[1];
  v14 = *a1;
  v15 = *(v13 + 40);
  v16 = *(*a1 + 40);
  v17 = *(v11 + 40);
  if (v15 >= v16)
  {
    if (v17 >= v15)
    {
      goto LABEL_27;
    }

    a1[1] = v11;
    *v12 = v13;
    v18 = a1;
    v19 = a1 + 1;
LABEL_25:
    if (v17 >= v16)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v18 = a1;
  v19 = a1 + 2;
  if (v17 >= v15)
  {
    *a1 = v13;
    a1[1] = v14;
    v18 = a1 + 1;
    v19 = a1 + 2;
    goto LABEL_25;
  }

LABEL_26:
  *v18 = v11;
  *v19 = v14;
LABEL_27:
  v33 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v34 = 0;
  for (i = 24; ; i += 8)
  {
    v36 = *v33;
    v37 = *v12;
    v38 = *(*v33 + 40);
    if (v38 < *(v37 + 40))
    {
      v39 = i;
      while (1)
      {
        *(a1 + v39) = v37;
        v40 = v39 - 8;
        if (v39 == 8)
        {
          break;
        }

        v37 = *(a1 + v39 - 16);
        v39 -= 8;
        if (v38 >= *(v37 + 40))
        {
          v41 = (a1 + v40);
          goto LABEL_35;
        }
      }

      v41 = a1;
LABEL_35:
      *v41 = v36;
      if (++v34 == 8)
      {
        break;
      }
    }

    v12 = v33++;
    if (v33 == a2)
    {
      return 1;
    }
  }

  return v33 + 1 == a2;
}

void IIOMemoryHash::~IIOMemoryHash(IIOMemoryHash *this)
{
  *this = &unk_1EF4DBA68;
  std::__tree<unsigned long long>::destroy(this + 8, *(this + 2));
}

{
  *this = &unk_1EF4DBA68;
  std::__tree<unsigned long long>::destroy(this + 8, *(this + 2));

  JUMPOUT(0x186602850);
}

uint64_t _ImageIO_AccreditMemory(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock(&gImageIOMemoryHashLock);
  if (gMemoryHashCreateOnce != -1)
  {
    _ImageIO_AccreditMemory_cold_1();
  }

  v5[0] = ~a1;
  v5[2] = v5;
  std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(gIIOMemoryHash + 8, v5)[5] = a2;
  ImageIORecordMemory(a1, a2);
  return pthread_mutex_unlock(&gImageIOMemoryHashLock);
}

uint64_t IOMemorySizeLookup(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    pthread_mutex_lock(&gImageIOMemoryHashLock);
    if (gMemoryHashCreateOnce != -1)
    {
      _ImageIO_AccreditMemory_cold_1();
    }

    v3[0] = ~v1;
    v3[2] = v3;
    v1 = std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(gIIOMemoryHash + 8, v3)[5];
    pthread_mutex_unlock(&gImageIOMemoryHashLock);
  }

  return v1;
}

uint64_t IIO_ImageBlockSetRelease(const void *a1)
{
  if ((gIIODebugFlags & 0xC00) != 0)
  {
    ImageIOLog("    CGImageBlockSetRelease:   %14p [%ld]\n", a1, gBlockSetCount);
    if ((gIIODebugFlags & 0x800) != 0)
    {
      IIODebug_ShowBacktrace(2);
    }
  }

  return CGImageBlockSetRelease();
}

const char *IIO_ImageBlockSetReleased(const char *result)
{
  if ((gIIODebugFlags & 0xC00) != 0)
  {
    atomic_fetch_add_explicit(&gBlockSetCount, 0xFFFFFFFF, memory_order_relaxed);
    result = ImageIOLog("    CGImageBlockSetReleaseCB:                  info: %14p                        S-[%2ld]\n", result, gBlockSetCount);
    if ((gIIODebugFlags & 0x800) != 0)
    {

      return IIODebug_ShowBacktrace(2);
    }
  }

  return result;
}

const char *IIO_ImageBlockReleased(const char *result, const void *a2)
{
  if ((gIIODebugFlags & 0xC00) != 0)
  {
    atomic_fetch_add_explicit(&gBlockCount, 0xFFFFFFFF, memory_order_relaxed);
    result = ImageIOLog("    CGImageBlockReleaseCB:    %14p - info: %14p                        B-[%2ld]\n", a2, result, gBlockCount);
    if ((gIIODebugFlags & 0x800) != 0)
    {

      return IIODebug_ShowBacktrace(2);
    }
  }

  return result;
}

void IIOImageRead::IIOImageRead(IIOImageRead *this, CGDataProvider *a2, char a3)
{
  *this = &unk_1EF4DBAF8;
  *(this + 19) = 0;
  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 31) = 0;
  *(this + 30) = this + 248;
  *(this + 32) = 0;
  *(this + 37) = 0;
  *(this + 38) = 0;
  *(this + 36) = 0;
  IIOImageRead::setup(this, 3);
  *(this + 5) = CFRetain(a2);
  *(this + 64) = a3;
  *(this + 65) = a3 ^ 1;
  *(this + 10) = CGDataProviderGetSizeOfData();
}

void sub_18607FBF4(_Unwind_Exception *a1)
{
  v6 = v1[36];
  if (v6)
  {
    v1[37] = v6;
    operator delete(v6);
  }

  std::__tree<std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>>>::destroy(v2, *v4);
  v7 = *v3;
  if (*v3)
  {
    v1[20] = v7;
    operator delete(v7);
  }

  _Unwind_Resume(a1);
}

void IIOImageRead::IIOImageRead(IIOImageRead *this, IIOImageRead *a2)
{
  *this = &unk_1EF4DBAF8;
  *(this + 19) = 0;
  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 31) = 0;
  *(this + 30) = this + 248;
  *(this + 32) = 0;
  *(this + 37) = 0;
  *(this + 38) = 0;
  *(this + 36) = 0;
  IIOImageRead::setup(this, 9);
  if (MEMORY[0x186604600](a2) == MEMORY[0x1E69E9E80])
  {
    DataFromXPCDict = IIOImageRead::CreateDataFromXPCDict(a2, v4);
    *(this + 4) = DataFromXPCDict;
    if ((gIIODebugFlags & 0x80000000000) != 0)
    {
      ImageIOLog("D   %s:%d CreateDataFromXPCDict %p\n", "IIOImageRead", 628, DataFromXPCDict);
      DataFromXPCDict = *(this + 4);
    }

    *(this + 32) = 1;
    if (DataFromXPCDict)
    {
      DataFromXPCDict = CFDataGetLength(DataFromXPCDict);
    }

    *(this + 10) = DataFromXPCDict;
  }
}

void sub_18607FD24(_Unwind_Exception *a1)
{
  v6 = v1[36];
  if (v6)
  {
    v1[37] = v6;
    operator delete(v6);
  }

  std::__tree<std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>>>::destroy(v2, *v4);
  v7 = *v3;
  if (*v3)
  {
    v1[20] = v7;
    operator delete(v7);
  }

  _Unwind_Resume(a1);
}

uint64_t IIOImageRead::releaseGlobalInfoPtr(IIOImageRead *this)
{
  pthread_mutex_lock((this + 88));
  v2 = *(this + 19);
  v4 = *(this + 20);
  v3 = (this + 152);
  if (v2 != v4)
  {
    do
    {
      v5 = v2[1];
      if (v5 && *v2)
      {
        v5();
      }

      v2 += 3;
    }

    while (v2 != v4);
    v2 = *v3;
  }

  *v3 = 0;
  *(this + 20) = 0;
  *(this + 21) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  pthread_mutex_unlock((this + 88));
  return 0;
}

uint64_t IIOImageRead::getClientValueForKey@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  pthread_mutex_lock((a1 + 176));
  v6 = std::__tree<std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>>>::find<std::string>(a1 + 240, a2);
  if (a1 + 248 != v6)
  {
    v7 = *(v6 + 56);
    v8 = *(v6 + 64);
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    *a3 = v7;
    a3[1] = v8;
  }

  return pthread_mutex_unlock((a1 + 176));
}

void sub_18607FE64(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IIOImageRead::setClientValueForKey(uint64_t a1, const void **a2, uint64_t *a3)
{
  pthread_mutex_lock((a1 + 176));
  v6 = std::__tree<std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 240, a2);
  v8 = *a3;
  v7 = a3[1];
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(v6 + 64);
  *(v6 + 56) = v8;
  *(v6 + 64) = v7;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v9);
  }

  return pthread_mutex_unlock((a1 + 176));
}

uint64_t IIOImageRead::getBytesAtOffset(IIOImageRead *this, unsigned __int8 *a2, off_t a3, uint64_t a4, char a5)
{
  v5 = 0;
  if (!a2)
  {
    return v5;
  }

  if (a3 < 0)
  {
    return v5;
  }

  v7 = a4;
  v8 = (a4 - 1);
  if (a4 < 1)
  {
    return v5;
  }

  if ((a5 & 1) == 0)
  {
    pthread_mutex_lock((this + 376));
  }

  v12 = *(this + 10);
  v16 = 0;
  ERROR_ImageIO_DestinationBufferIsNotWritable(a2);
  if (v7 >= 2)
  {
    ERROR_ImageIO_DestinationBufferIsNotBigEnough(a2, v8);
  }

  if ((*(this + 6) & 0x80000000) != 0 && !*(this + 4) && !*(this + 5) && *(this + 67) == 1)
  {
    if ((gIIODebugFlags & 0x100000000000) == 0 || (ImageIOLog("    %s:   <IIOImageRead: %p> mmapping data   count: %d\n", "getBytesAtOffset", this, *(this + 110) + 1), !*(this + 4)))
    {
      IIOImageRead::getBytesAtOffset(this, &v16, this + 4);
    }

    ++*(this + 110);
  }

  if (v12 != -1)
  {
    if (v12 < a3)
    {
      _cg_jpeg_mem_term("getBytesAtOffset", 1623, "*** ERROR: offset > _length (%ld > %ld)\n", a3, *(this + 10));
    }

    v13 = v12 - a3;
    if (v12 <= a3)
    {
      goto LABEL_32;
    }

    if (v13 >= v7)
    {
      v13 = v7;
    }

    if (v13 <= 0)
    {
      _cg_jpeg_mem_term("getBytesAtOffset", 1635, " inCount = %ld   count = %ld   _length = %ld   offset = %ld \n", v7, v13, v12, a3);
      goto LABEL_32;
    }

    v7 = v13;
  }

  if (*(this + 5))
  {
    CGDataProviderBytesAtOffset = IIOImageRead::getCGDataProviderBytesAtOffset(this, a2);
    goto LABEL_28;
  }

  if (!*(this + 4))
  {
    if ((*(this + 6) & 0x80000000) == 0)
    {
      CGDataProviderBytesAtOffset = IIOImageRead::getFileBytesAtOffset(this, a2, a3, v7);
      goto LABEL_28;
    }

LABEL_32:
    v5 = 0;
    if (a5)
    {
      return v5;
    }

    goto LABEL_29;
  }

  CGDataProviderBytesAtOffset = IIOImageRead::getCFDataBytesAtOffset(this, a2, a3, v7);
LABEL_28:
  v5 = CGDataProviderBytesAtOffset;
  if ((a5 & 1) == 0)
  {
LABEL_29:
    pthread_mutex_unlock((this + 376));
  }

  return v5;
}

char *IIOImageRead::copySourceInfo(IIOImageRead *this)
{
  v10 = *MEMORY[0x1E69E9840];
  v8 = 0;
  bzero(__str, 0x400uLL);
  pthread_mutex_lock((this + 376));
  if (*(this + 7))
  {
    _CFStringGetFileSystemRepresentation();
  }

  else
  {
    v2 = *(this + 4);
    if (v2)
    {
      Length = CFDataGetLength(*(this + 4));
      snprintf(__str, 0x400uLL, "(CFDataRef) %p @%ld bytes", v2, Length);
    }

    else
    {
      __str[0] = 0;
    }
  }

  pthread_mutex_unlock((this + 376));
  v4 = *(this + 19) - 1;
  if (v4 > 9)
  {
    v5 = "[unknown]      %s";
  }

  else
  {
    v5 = off_1E6F0B580[v4];
  }

  v6 = __str;
  if (!__str[0])
  {
    v6 = "";
  }

  asprintf(&v8, v5, v6);
  return v8;
}

uint64_t IIOImageRead::getCGDataProviderBytesAtOffset(IIOImageRead *this, void *a2)
{
  v2 = MEMORY[0x1EEE9AC00](this, a2);
  v4 = v3;
  v6 = v5;
  v7 = v2;
  v16 = *MEMORY[0x1E69E9840];
  v8 = *(v2 + 80);
  v9 = CGAccessSessionCreate();
  if (v6 >= 1)
  {
    if ((gIIODebugFlags & 0x800000) != 0)
    {
      ImageIOLog("    %s:%d:  dataProvider %p skip offset: 0x%08lX\n", "getCGDataProviderBytesAtOffset", 1392, *(v7 + 40), v6);
    }

    if (v8 == -1)
    {
      bzero(v15, 0x2000uLL);
      v12 = v6;
      do
      {
        Bytes = CGAccessSessionGetBytes();
        v12 -= Bytes;
        if (Bytes)
        {
          v14 = v12 <= 0;
        }

        else
        {
          v14 = 1;
        }
      }

      while (!v14);
      if (v12)
      {
        v10 = 0;
        if (!v9)
        {
          return v10;
        }

        goto LABEL_9;
      }
    }

    else
    {
      CGAccessSessionSkipForward();
    }
  }

  if ((gIIODebugFlags & 0x800000) != 0)
  {
    ImageIOLog("    %s:%d:  dataProvider %p read offset: 0x%08lX   size: %8ld\n", "getCGDataProviderBytesAtOffset", 1417, *(v7 + 40), v6, v4);
  }

  v10 = CGAccessSessionGetBytes();
  if (v9)
  {
LABEL_9:
    CGAccessSessionRelease();
  }

  return v10;
}

void IIOImageRead::removeCacheKey(IIOImageRead *this, uint64_t a2)
{
  if (*(this + 37) != *(this + 36))
  {
    pthread_mutex_lock((this + 312));
    v5 = *(this + 36);
    v4 = *(this + 37);
    if (v5 != v4)
    {
      v6 = 0uLL;
      do
      {
        *&v14[12] = v6;
        key = v6;
        *v14 = v6;
        v7 = *v5;
        v8 = *(v5 + 1);
        *&v14[12] = *(v5 + 28);
        key = v7;
        *v14 = v8;
        if (WORD6(v8) == a2)
        {
          cache_remove(gImageBlockCache, &key);
          if ((gIIODebugFlags & 0x200) != 0)
          {
            DebugStringFromKey = createDebugStringFromKey(&key);
            if (DebugStringFromKey)
            {
              v10 = DebugStringFromKey;
              ImageIOLog("    cache_remove:            %p key: %s\n", gImageBlockCache, DebugStringFromKey);
              free(v10);
            }
          }

          v11 = *(this + 37);
          if (v11 == v5)
          {
            __break(1u);
            return;
          }

          v12 = v11 - (v5 + 44);
          if (v11 != v5 + 44)
          {
            memmove(v5, v5 + 44, v11 - (v5 + 44));
          }

          v4 = &v5[v12];
          *(this + 37) = &v5[v12];
          v6 = 0uLL;
        }

        else
        {
          v5 += 44;
        }
      }

      while (v5 != v4);
    }

    pthread_mutex_unlock((this + 312));
  }
}

uint64_t IIOImageRead::updateDataProvider(IIOImageRead *this, CGDataProvider *a2, int a3)
{
  pthread_mutex_lock((this + 376));
  v6 = *(this + 4);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(this + 5);
  if (a2)
  {
    v8 = CFRetain(a2);
    *(this + 4) = 0;
    *(this + 5) = v8;
    SizeOfData = CGDataProviderGetSizeOfData();
  }

  else
  {
    SizeOfData = 0;
    *(this + 4) = 0;
    *(this + 5) = 0;
  }

  *(this + 10) = SizeOfData;
  *(this + 64) = a3;
  if (a3)
  {
    *(this + 65) = 0;
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return pthread_mutex_unlock((this + 376));
}

uint64_t IIOImageRead::updateData(IIOImageRead *this, const __CFData *a2, int a3)
{
  pthread_mutex_lock((this + 376));
  v6 = *(this + 5);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(this + 4);
  *(this + 5) = 0;
  if (a2)
  {
    *(this + 4) = CFRetain(a2);
    Length = CFDataGetLength(a2);
  }

  else
  {
    Length = 0;
    *(this + 4) = 0;
  }

  *(this + 10) = Length;
  *(this + 64) = a3;
  if (a3)
  {
    *(this + 65) = 0;
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return pthread_mutex_unlock((this + 376));
}

uint64_t IIOImageRead::length(IIOImageRead *this)
{
  pthread_mutex_lock((this + 376));
  v2 = *(this + 10);
  pthread_mutex_unlock((this + 376));
  return v2;
}

void ___ZN12IIOImageRead16addDataToXPCDictEPvPS0__block_invoke(IIOImageRead *a1)
{
  v1 = *(a1 + 5);
  if (v1)
  {
    IIOImageRead::releaseBytePointer(a1, v1);
  }
}

CFTypeRef IIOImageRead::getCFData(IIOImageRead *this)
{
  pthread_mutex_lock((this + 376));
  v2 = *(this + 4);
  if (v2)
  {
    CFRetain(*(this + 4));
    pthread_mutex_unlock((this + 376));

    return CFAutorelease(v2);
  }

  else
  {
    pthread_mutex_unlock((this + 376));
    return 0;
  }
}

uint64_t IIOImageRead::shouldExposeMultiFrameContents(IIOImageRead *this)
{
  Source = CGImageSourceGetSource(~*(this + 2));
  if (Source)
  {

    return IIOImageSource::shouldExposeMultiFrameContents(Source);
  }

  else
  {
    _cg_jpeg_mem_term("shouldExposeMultiFrameContents", 2216, "*** could not get 'shouldExposeMultiFrameContents' -- nil iSource\n");
    return 0;
  }
}

uint64_t IIOImageRead::useImageSequence(IIOImageRead *this)
{
  Source = CGImageSourceGetSource(~*(this + 2));
  if (Source)
  {

    return IIOImageSource::useImageSequence(Source);
  }

  else
  {
    _cg_jpeg_mem_term("useImageSequence", 2231, "*** could not get 'useSequence' -- nil iSource\n");
    return 0;
  }
}

uint64_t CGImageReadGetTypeID()
{
  if (CGImageReadGetTypeID::once != -1)
  {
    CGImageReadGetTypeID_cold_1();
  }

  return CGImageReadGetTypeID::id;
}

CFStringRef _CGImageReadCopyDebugDesc(void *a1)
{
  if (a1)
  {
    v1 = a1[3];
  }

  else
  {
    v1 = 0;
  }

  v2 = CFGetAllocator(a1);
  return CFStringCreateWithFormat(v2, 0, @"<CGImageReadRef %p>%s", v1, "");
}

void _providerRelease(CGDataProvider *a1)
{
  CGDataProviderReleaseBytePtr();

  CGDataProviderRelease(a1);
}

void std::__destroy_at[abi:fe200100]<std::pair<std::string const,std::shared_ptr<IIOBaseObject>>,0>(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

void std::__allocate_at_least[abi:fe200100]<std::allocator<IIO_GlobalInfo>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:fe200100]();
}

uint64_t std::__tree<std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v7 = 0;
  v2 = *std::__tree<std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>>>::__find_equal<std::string>(a1, &v7, a2);
  if (!v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    std::__tree<std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v2;
}

void *std::__tree<std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>>>::__find_equal<std::string>(uint64_t a1, void *a2, const void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *(a3 + 23);
    if (v6 >= 0)
    {
      v7 = *(a3 + 23);
    }

    else
    {
      v7 = a3[1];
    }

    if (v6 >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    do
    {
      while (1)
      {
        v9 = v4;
        v12 = v4[4];
        v10 = v4 + 4;
        v11 = v12;
        v13 = *(v10 + 23);
        if (v13 >= 0)
        {
          v14 = *(v10 + 23);
        }

        else
        {
          v14 = v10[1];
        }

        if (v13 >= 0)
        {
          v15 = v10;
        }

        else
        {
          v15 = v11;
        }

        if (v14 >= v7)
        {
          v16 = v7;
        }

        else
        {
          v16 = v14;
        }

        v17 = memcmp(v8, v15, v16);
        v18 = v7 < v14;
        if (v17)
        {
          v18 = v17 < 0;
        }

        if (!v18)
        {
          break;
        }

        v4 = *v9;
        v5 = v9;
        if (!*v9)
        {
          goto LABEL_28;
        }
      }

      v19 = memcmp(v15, v8, v16);
      v20 = v14 < v7;
      if (v19)
      {
        v20 = v19 < 0;
      }

      if (!v20)
      {
        break;
      }

      v5 = v9 + 1;
      v4 = v9[1];
    }

    while (v4);
  }

  else
  {
    v9 = (a1 + 8);
  }

LABEL_28:
  *a2 = v9;
  return v5;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>,void *>>>>::~unique_ptr[abi:fe200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:fe200100]<std::pair<std::string const,std::shared_ptr<IIOBaseObject>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__allocate_at_least[abi:fe200100]<std::allocator<imageio_key>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x5D1745D1745D175)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:fe200100]();
}

void lexerror(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  __s1[0] = 0;
  __s1[1] = &a9;
  vasprintf(__s1, a2, &a9);
  v10 = __s1[0];
  if (__s1[0])
  {
    if (a1)
    {
      if (!*(a1 + 16))
      {
        *(a1 + 16) = strdup(__s1[0]);
      }
    }

    free(v10);
  }
}

uint64_t yy_create_buffer(uint64_t a1, int a2, uint64_t a3)
{
  v6 = malloc_type_malloc(0x40uLL, 0x2DE7D2C5uLL);
  if (!v6 || (v7 = v6, v6[3] = a2, v8 = malloc_type_malloc(a2 + 2, 0x2DE7D2C5uLL), (*(v7 + 8) = v8) == 0))
  {
    fprintf(*MEMORY[0x1E69E9848], "%s\n", "out of dynamic memory in yy_create_buffer()");
    exit(2);
  }

  *(v7 + 36) = 1;
  yy_init_buffer(v7, a1, a3);
  return v7;
}

int *yyrestart(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if (v4 && (v5 = *(a2 + 24), *(v4 + 8 * v5)) || (yyensure_buffer_stack(a2), buffer = yy_create_buffer(*(a2 + 8), 0x4000, a2), v5 = *(a2 + 24), *(*(a2 + 40) + 8 * v5) = buffer, (v4 = *(a2 + 40)) != 0))
  {
    v7 = *(v4 + 8 * v5);
  }

  else
  {
    v7 = 0;
  }

  result = yy_init_buffer(v7, a1, a2);
  v9 = *(a2 + 40);
  v10 = *(a2 + 24);
  v11 = *(v9 + 8 * v10);
  *(a2 + 52) = *(v11 + 32);
  v12 = *(v11 + 16);
  *(a2 + 64) = v12;
  *(a2 + 128) = v12;
  *(a2 + 8) = **(v9 + 8 * v10);
  *(a2 + 48) = *v12;
  return result;
}

int *yy_init_buffer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *__error();
  yy_flush_buffer(a1, a3);
  *a1 = a2;
  *(a1 + 56) = 1;
  v7 = *(a3 + 40);
  if (v7)
  {
    v7 = *(v7 + 8 * *(a3 + 24));
  }

  if (v7 != a1)
  {
    *(a1 + 48) = 1;
  }

  *(a1 + 40) = 0;
  result = __error();
  *result = v6;
  return result;
}

uint64_t yy_flush_buffer(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 32) = 0;
    **(result + 8) = 0;
    *(*(result + 8) + 1) = 0;
    *(result + 16) = *(result + 8);
    *(result + 44) = 1;
    *(result + 60) = 0;
    v2 = *(a2 + 40);
    if (v2)
    {
      v3 = *(v2 + 8 * *(a2 + 24));
    }

    else
    {
      v3 = 0;
    }

    if (v3 == result)
    {
      v4 = *(a2 + 24);
      v5 = *(v2 + 8 * v4);
      *(a2 + 52) = *(v5 + 32);
      v6 = *(v5 + 16);
      *(a2 + 64) = v6;
      *(a2 + 128) = v6;
      *(a2 + 8) = **(v2 + 8 * v4);
      *(a2 + 48) = *v6;
    }
  }

  return result;
}

void yypop_buffer_state(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = *(v1 + 8 * *(a1 + 24));
    if (v3)
    {
      yy_delete_buffer(v3, a1);
      v4 = *(a1 + 24);
      *(*(a1 + 40) + 8 * v4) = 0;
      if (v4)
      {
        *(a1 + 24) = --v4;
      }

      v5 = *(a1 + 40);
      if (v5)
      {
        v6 = *(v5 + 8 * v4);
        if (v6)
        {
          *(a1 + 52) = *(v6 + 32);
          v7 = *(v6 + 16);
          *(a1 + 64) = v7;
          *(a1 + 128) = v7;
          *(a1 + 8) = **(v5 + 8 * v4);
          *(a1 + 48) = *v7;
          *(a1 + 80) = 1;
        }
      }
    }
  }
}

void GIFWritePlugin::GIFWritePlugin(GIFWritePlugin *this, IIOImageWriteSession *a2, IIOImageDestination *a3)
{
  IIOWritePlugin::IIOWritePlugin(this, a2, a3, 1195984416);
  *v3 = &unk_1EF4DBC10;
  *(v3 + 40) = 0u;
  *(v3 + 56) = 0u;
  *(v3 + 72) = 0u;
  *(v3 + 83) = 0u;
  *(v3 + 112) = 0;
  *(v3 + 120) = 0;
  *(v3 + 104) = 0;
  *(v3 + 128) = 0;
}

void GIFWritePlugin::~GIFWritePlugin(GIFWritePlugin *this, uint64_t a2, const char *a3)
{
  _cg_jpeg_mem_term(this, a2, a3);

  JUMPOUT(0x186602850);
}

IIOImageWriteSession *GIFWritePlugin::gifWriteFunc(uint64_t a1, const void *a2, int a3)
{
  result = *(a1 + 88);
  if (result)
  {
    return IIOImageWriteSession::putBytes(result, a2, a3);
  }

  return result;
}

BOOL GIFWritePlugin::colorMapEntriesAreEqual(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v6 = *(a1 + 120);
  if (v6)
  {
    v7 = *(v6 + 16);
    v8 = 2 * a2;
LABEL_5:
    v10 = (v7 + v8 + a2);
    v18 = v4;
    v19 = v5;
    v11 = *v10;
    v17 = *(v10 + 2);
    v16 = v11;
    v12 = *(a3 + 16) + 3 * a4;
    LOBYTE(v11) = *(v12 + 2);
    v14 = *v12;
    v15 = v11;
    return RGBColorType::isCloseTo(&v16, &v14);
  }

  v9 = *(*(a1 + 40) + 16);
  if (v9)
  {
    v7 = *(v9 + 16);
    v8 = 2 * a2;
    goto LABEL_5;
  }

  return 0;
}

const char *GIFWritePlugin::reduceFrame(const char *result, unsigned int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, unint64_t *a7, unint64_t *a8, unint64_t *a9, uint64_t *a10)
{
  v10 = *a9;
  v11 = *a10;
  if (*a9 >= 2)
  {
    v12 = 2;
  }

  else
  {
    v12 = *a9;
  }

  if (v11 >= 2)
  {
    v13 = 2;
  }

  else
  {
    v13 = *a10;
  }

  if (result[97] != 1)
  {
    return result;
  }

  v14 = a8;
  v18 = result;
  v45 = v12;
  v46 = v13;
  v19 = *(result + 96);
  v48 = *a10;
  v20 = *a7;
  v21 = v11;
  v22 = *a8;
  v54.origin.x = v20;
  v54.origin.y = v22;
  v54.size.width = v10;
  v54.size.height = v11;
  result = CGRectEqualToRect(v54, **(result + 14));
  v23 = a9;
  if ((result & 1) == 0 && v18[97] != 1)
  {
    goto LABEL_42;
  }

  if ((gIIODebugFlags & 0x30000) != 0)
  {
    result = ImageIOLog("                    newRect: (%.0f, %.0f, %.0f, %.0f)\n", v20, v22, v10, v21);
    v23 = a9;
  }

  v24 = v19 ? a2 : *(*(v18 + 5) + 6);
  if (v18[97] == 1)
  {
    v25 = *(v18 + 7);
    v26 = *(v18 + 11) * v10;
    v27 = a3 + v26 * (v25 - 1);
    a3 += v26 * v25;
  }

  else
  {
    v27 = **(v18 + 13);
  }

  v28 = *a10;
  if (!*a10)
  {
    goto LABEL_42;
  }

  v50 = v18;
  v44 = v14;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = v10 - 1;
  v34 = *v23;
  v35 = v48 - 1;
  v36 = a4;
  v49 = v10;
  do
  {
    if (!v34)
    {
      goto LABEL_39;
    }

    v37 = 0;
    do
    {
      v38 = *(a3 + v37);
      if (a6)
      {
        v39 = *(v27 + v37);
        if (v36)
        {
          v53 = v35;
          v40 = a6;
          v41 = v24;
          v42 = v27;
          result = GIFWritePlugin::colorMapEntriesAreEqual(v50, v39, a5, v38);
          v23 = a9;
          v35 = v53;
          v27 = v42;
          v24 = v41;
          a6 = v40;
          v36 = a4;
          if (result)
          {
            goto LABEL_35;
          }
        }

        else if (v38 == v39)
        {
          goto LABEL_35;
        }
      }

      else if (v24 == v38)
      {
        goto LABEL_35;
      }

      ++v32;
      if (v37 < v33)
      {
        v33 = v37;
      }

      if (v37 > v30)
      {
        v30 = v37;
      }

      if (v29 < v35)
      {
        v35 = v29;
      }

      if (v29 > v31)
      {
        v31 = v29;
      }

LABEL_35:
      ++v37;
      v34 = *v23;
    }

    while (v37 < *v23);
    v10 = v49;
    v28 = *a10;
LABEL_39:
    ++v29;
    a3 += v10;
    v27 += v10;
  }

  while (v29 < v28);
  v14 = v44;
  if (v32)
  {
    *a7 = v33;
    *v44 = v35;
    *v23 = v30 - v33 + 1;
    v43 = v31 - v35 + 1;
    goto LABEL_43;
  }

LABEL_42:
  v43 = v46;
  *a7 = v10 >> 1;
  *v14 = v48 >> 1;
  *v23 = v45;
LABEL_43:
  *a10 = v43;
  return result;
}

uint64_t GIFWritePlugin::getDelayTime(GIFWritePlugin *this, const __CFDictionary *a2)
{
  if (!a2)
  {
    return 0;
  }

  memset(v8, 0, sizeof(v8));
  IIODictionary::IIODictionary(v8, a2);
  v2 = @"UnclampedDelayTime";
  if ((IIODictionary::containsKey(v8, @"UnclampedDelayTime") & 1) != 0 || (v2 = @"DelayTime", v3 = IIODictionary::containsKey(v8, @"DelayTime"), DoubleForKey = 0.0, v3))
  {
    DoubleForKey = IIODictionary::getDoubleForKey(v8, v2);
  }

  v5 = vcvtmd_u64_f64(DoubleForKey * 100.0 + 0.5);
  if (DoubleForKey <= 0.0)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  IIODictionary::~IIODictionary(v8);
  return v6;
}

void sub_186081420(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

uint64_t GIFWritePlugin::writeSingleFrame(GIFWritePlugin *this)
{
  v100 = *MEMORY[0x1E69E9840];
  v82 = *(this + 98);
  v97 = 0;
  v98 = 0;
  v96 = 0;
  bzero(v99, 0x300uLL);
  v92[0] = 0;
  v92[1] = 0;
  buffer = v99;
  PixelDataProviderAtIndex = IIOWritePlugin::getPixelDataProviderAtIndex(this, *(this + 7));
  PropertiesAtIndex = IIOWritePlugin::getPropertiesAtIndex(this, *(this + 7));
  ContainerProperties = IIOWritePlugin::getContainerProperties(this);
  *(this + 96) = IIOImagePixelDataProvider::getAlphaInfo(PixelDataProviderAtIndex) - 3 < 2;
  v4 = IIOImageSource::count(PixelDataProviderAtIndex);
  v95 = v4;
  v5 = IIO_Reader::testHeaderSize(PixelDataProviderAtIndex);
  v6 = 0;
  v94 = v5;
  v7 = 4294967246;
  *(this + 8) = v4;
  *(this + 9) = v5;
  v8 = "no";
  if (v5)
  {
    if (v4)
    {
      SourceGeomColorSpace = IIOImagePlus::getSourceGeomColorSpace(PixelDataProviderAtIndex);
      Type = CGColorSpaceGetType();
      Model = CGColorSpaceGetModel(SourceGeomColorSpace);
      v11 = Model;
      v6 = 0;
      if (Model <= kCGColorSpaceModelIndexed && ((1 << Model) & 0x23) != 0)
      {
        if (_cg_GifLastError(PixelDataProviderAtIndex) - 9 < 0xFFFFFFF8)
        {
          v6 = 0;
          goto LABEL_113;
        }

        theDict = IIODictionary::getObjectForKey(PropertiesAtIndex, @"{GIF}");
        if (!theDict || (Value = CFDictionaryGetValue(theDict, @"ImageColorMap"), (v13 = Value) == 0) || (v14 = CFGetTypeID(Value), v14 != CFDataGetTypeID()))
        {
LABEL_26:
          v6 = malloc_type_malloc(v5 * v4, 0x100004077774924uLL);
          if (!v6)
          {
            goto LABEL_112;
          }

          v91 = 0;
          ColorQuantization::ColorQuantization(&v91);
          BytesPerRow = IIOImagePixelDataProvider::getBytesPerRow(PixelDataProviderAtIndex);
          Error = _cg_GifLastError(PixelDataProviderAtIndex);
          v89 = 0;
          v90 = 0;
          IIOColorSpace::IIOColorSpace(&v89, *MEMORY[0x1E695F1C0]);
          v83 = v6;
          v87 = 0;
          v88 = 0;
          IIOColorSpace::IIOColorSpace(&v87, *MEMORY[0x1E695F128]);
          v26 = IIOImagePixelDataProvider::getBitmapInfo(PixelDataProviderAtIndex) & 0x1F;
          if (v26 == 3)
          {
            v27 = 1;
          }

          else if (v26 == 4)
          {
            v27 = 2;
          }

          else if (v26)
          {
            v27 = v26;
          }

          else
          {
            v27 = 5;
          }

          if (v11 == kCGColorSpaceModelRGB)
          {
            v28 = v90;
            if (BytesPerRow <= 3 * v4)
            {
              BytesPerRow = 4 * v4;
            }
          }

          else if (v11)
          {
            v28 = 0;
          }

          else
          {
            v28 = v88;
            BytesPerRow = 2 * v4;
          }

          v29 = malloc_type_calloc(v5, BytesPerRow, 0x100004077774924uLL);
          v30 = v29;
          if (!v29)
          {
            IIOColorSpace::~IIOColorSpace(&v87);
            IIOColorSpace::~IIOColorSpace(&v89);
            ColorQuantization::~ColorQuantization(&v91);
            v7 = 4294967246;
            v8 = "no";
            v6 = v83;
            goto LABEL_113;
          }

          if (Type != 7)
          {
            v31 = CGBitmapContextCreate(v29, v4, v5, Error, BytesPerRow, v28, v27);
            v32 = v31;
            if (v31)
            {
              v102.origin.x = 0.0;
              v102.origin.y = 0.0;
              v102.size.width = v4;
              v102.size.height = v5;
              CGContextClearRect(v31, v102);
              v33 = IIOWritePlugin::getPixelDataProviderAtIndex(this, *(this + 7));
              Ref = IIOImageSource::imageReadRef(v33);
              v103.origin.x = 0.0;
              v103.origin.y = 0.0;
              v103.size.width = v4;
              v103.size.height = v5;
              CGContextDrawImage(v32, v103, Ref);
              v104.origin.x = 0.0;
              v104.origin.y = 0.0;
              v104.size.width = v4;
              v104.size.height = v5;
              CGRectOffset(v104, 0.0, v5);
              CGContextRelease(v32);
LABEL_47:
              dest.data = v30;
              dest.height = v5;
              dest.width = v4;
              dest.rowBytes = BytesPerRow;
              v35 = v27;
              v6 = v83;
              if (v11 == kCGColorSpaceModelRGB)
              {
                if (v35 == 2)
                {
                  vImageUnpremultiplyData_ARGB8888(&dest, &dest, 0x10u);
                }

                else if (v35 == 1)
                {
                  vImageUnpremultiplyData_RGBA8888(&dest, &dest, 0x10u);
                }
              }

              if (Type == 7)
              {
                if (!Ref)
                {
                  Ref = IIOImageSource::imageReadRef(PixelDataProviderAtIndex);
                }

                v36 = _cg_GifLastError(PixelDataProviderAtIndex);
                v37 = *(this + 96);
                v38 = IIOImagePlus::getSourceGeomColorSpace(PixelDataProviderAtIndex);
                v39 = ColorQuantization::generateFromIndexedImage(&v91, &dest, Ref, v36, v35, v37, v38, v92, v83, &v96);
              }

              else if (v11)
              {
                if (v11 != kCGColorSpaceModelRGB)
                {
                  free(v30);
                  IIOColorSpace::~IIOColorSpace(&v87);
                  IIOColorSpace::~IIOColorSpace(&v89);
                  ColorQuantization::~ColorQuantization(&v91);
                  goto LABEL_112;
                }

                if (LODWORD(v92[0]))
                {
                  v40 = _cg_GifLastError(PixelDataProviderAtIndex);
                  v41 = *(this + 96);
                  v42 = IIOImagePlus::getSourceGeomColorSpace(PixelDataProviderAtIndex);
                  v39 = ColorQuantization::generateFromRGBImage(&v91, &dest, v40, v35, v41, v42, v92, v83, &v96);
                }

                else
                {
                  v46 = _cg_GifLastError(PixelDataProviderAtIndex);
                  v47 = *(this + 96);
                  v48 = IIOImagePlus::getSourceGeomColorSpace(PixelDataProviderAtIndex);
                  v39 = ColorQuantization::generateFromRGBImageWu(&v91, &dest, v46, v35, v47, v48, v92, v83, &v96);
                }
              }

              else
              {
                v43 = _cg_GifLastError(PixelDataProviderAtIndex);
                v44 = *(this + 96);
                v45 = IIOImagePlus::getSourceGeomColorSpace(PixelDataProviderAtIndex);
                v39 = ColorQuantization::generateFromGrayImage(&v91, &dest, v43, v35, v44, v45, v92, v83, &v96);
              }

              v49 = v39;
              free(v30);
              IIOColorSpace::~IIOColorSpace(&v87);
              IIOColorSpace::~IIOColorSpace(&v89);
              ColorQuantization::~ColorQuantization(&v91);
              if (v49)
              {
                DelayTime = GIFWritePlugin::getDelayTime(v50, theDict);
                if (*(this + 7))
                {
                  goto LABEL_73;
                }

                if (_cg_EGifPutScreenDesc(*(this + 5), v95, v94, SHIDWORD(v92[0]), 0, v92) == 1)
                {
                  if (!*(this + 7) && IIODictionary::containsKeyGroup(ContainerProperties, @"LoopCount", @"{GIF}"))
                  {
                    Uint32ForKeyGroup = IIODictionary::getUint32ForKeyGroup(ContainerProperties, @"LoopCount", @"{GIF}");
                    v53 = Uint32ForKeyGroup;
                    v82 = 0;
                    if (Uint32ForKeyGroup << 16 == 0x10000 || (v54 = Uint32ForKeyGroup, Uint32ForKeyGroup < 0))
                    {
LABEL_73:
                      v57 = *(this + 96);
                      *(&dest.data + 1) = DelayTime;
                      v58 = v96;
                      if (!v57)
                      {
                        v58 = 0;
                      }

                      BYTE3(dest.data) = v58;
                      if (v57)
                      {
                        v59 = 8;
                      }

                      else
                      {
                        v59 = 4;
                      }

                      LOBYTE(dest.data) = v59 | v57;
                      v8 = "no";
                      if (_cg_EGifPutExtension(*(this + 5), 249, 4u, &dest) != 1)
                      {
LABEL_107:
                        v7 = 4294967246;
                        goto LABEL_113;
                      }

                      v60 = *(this + 7);
                      if (v82)
                      {
                        v61 = *(this + 5);
                        if (!v60)
                        {
                          v65 = v97;
                          v64 = v98;
                          v67 = v94;
                          v66 = v95;
                          v63 = 1;
                          goto LABEL_92;
                        }

                        v62 = *(v61 + 16);
                        if (v62)
                        {
                          v63 = !RGBColorMap::equalTo(v92, v62);
                          if (!*(this + 7))
                          {
                            goto LABEL_91;
                          }
                        }

                        else
                        {
                          v63 = 1;
                        }
                      }

                      else
                      {
                        v63 = 0;
                        if (!v60)
                        {
                          goto LABEL_91;
                        }
                      }

                      *(this + 97) = 0;
                      if (*(this + 96) == 1)
                      {
                        GIFWritePlugin::reduceFrame(this, v96, v83, v63, v92, 0, &v98, &v97, &v95, &v94);
                      }

                      else
                      {
                        GIFWritePlugin::reduceFrame(this, v96, v83, v63, v92, 1, &v98, &v97, &v95, &v94);
                      }

LABEL_91:
                      v61 = *(this + 5);
                      v65 = v97;
                      v64 = v98;
                      v67 = v94;
                      v66 = v95;
                      if (!v63)
                      {
                        v68 = 0;
                        goto LABEL_94;
                      }

LABEL_92:
                      v68 = v92;
LABEL_94:
                      v69 = _cg_EGifPutImageDesc(v61, v64, v65, v66, v67, 0, v68);
                      if ((gIIODebugFlags & 0x30000) != 0)
                      {
                        ImageIOLog("      optimized image frame: (%d, %d, %d, %d)\n", v64, v65, v66, v67);
                        if ((gIIODebugFlags & 0x30000) != 0)
                        {
                          v70 = "yes";
                          if (!v63)
                          {
                            v70 = "no";
                          }

                          ImageIOLog("         writeImageColorMap: %s\n", v70);
                        }
                      }

                      if (v69 == 1)
                      {
                        if (v65 >= v67 + v65)
                        {
                          v7 = 0;
                          v8 = "yes";
                          goto LABEL_113;
                        }

                        v71 = *(this + 8);
                        v72 = **(this + 13);
                        v73 = v64 + v71 * v65;
                        while (_cg_EGifPutLine(*(this + 5), &v83[v73], v66) == 1)
                        {
                          if (**(this + 13))
                          {
                            bzero((v72 + v73), v66);
                          }

                          v73 += v71;
                          if (!--v67)
                          {
                            v7 = 0;
                            v8 = "yes";
                            goto LABEL_113;
                          }
                        }
                      }

                      goto LABEL_107;
                    }

                    _cg_EGifPutExtensionLeader(*(this + 5), 255);
                    _cg_EGifPutExtensionBlock(*(this + 5), 0xBu, "NETSCAPE2.0");
                    v55 = v53 - (v54 > 1);
                    LOBYTE(dest.data) = 1;
                    BYTE1(dest.data) = v53 - (v54 > 1);
                    v56 = v55;
                    BYTE2(dest.data) = (v55 + (v55 >> 23)) >> 8;
                    _cg_EGifPutExtensionBlock(*(this + 5), 3u, &dest);
                    _cg_EGifPutExtensionTrailer(*(this + 5));
                    if ((gIIODebugFlags & 0x30000) != 0)
                    {
                      ImageIOLog("                 loop count: %d\n", v56);
                    }
                  }

                  v82 = 0;
                  goto LABEL_73;
                }

                GIFWritePlugin::writeSingleFrame();
              }

LABEL_112:
              v7 = 4294967246;
              v8 = "no";
              goto LABEL_113;
            }

            _cg_jpeg_mem_term("writeSingleFrame", 708, "*** ERROR: CGBitmapContextCreate returned NULL\n");
          }

          Ref = 0;
          goto LABEL_47;
        }

        Length = CFDataGetLength(v13);
        if (Length <= 770)
        {
          v16 = Length / 3;
        }

        else
        {
          v16 = 256;
        }

        v17 = *(this + 96);
        if (v16 >= 255)
        {
          v18 = 255;
        }

        else
        {
          v18 = v16;
        }

        if (*(this + 96))
        {
          v16 = v18;
        }

        LODWORD(v92[0]) = v16;
        if (v16 < 1)
        {
          if (v17)
          {
            goto LABEL_19;
          }
        }

        else
        {
          v101.length = 3 * v16;
          v101.location = 0;
          CFDataGetBytes(v13, v101, buffer);
          if (*(this + 96))
          {
LABEL_19:
            v19 = v92[0];
            v20 = &buffer[3 * SLODWORD(v92[0])];
            *v20 = 0;
            v20[2] = 0;
            v21 = v19 + 1;
            LODWORD(v92[0]) = v19 + 1;
LABEL_22:
            v22 = v21 - 1;
            if (v21 != 1)
            {
              v21 = 0;
              do
              {
                ++v21;
                v23 = v22 > 1;
                v22 >>= 1;
              }

              while (v23);
            }

            HIDWORD(v92[0]) = v21;
            goto LABEL_26;
          }
        }

        v21 = v92[0];
        goto LABEL_22;
      }
    }
  }

LABEL_113:
  if ((gIIODebugFlags & 0x30000) != 0)
  {
    ImageIOLog("           gifWrite-success: %s\n", v8);
    if ((gIIODebugFlags & 0x30000) != 0)
    {
      v74 = _cg_GifLastError(*(this + 5));
      ImageIOLog("               GifLastError: %d\n\n", v74);
    }
  }

  if (v6)
  {
    v75 = *(this + 15);
    if (v75)
    {
      _cg_GifFreeMapObject(v75);
      *(this + 15) = _cg_GifMakeMapObject(v92[0], buffer);
    }

    v76 = *(this + 13);
    if (*v76)
    {
      free(v6);
    }

    else
    {
      *v76 = v6;
      v77 = v95;
      v78 = v94;
      v79 = *(this + 14);
      *v79 = 0;
      *(v79 + 8) = 0;
      *(v79 + 16) = v77;
      *(v79 + 24) = v78;
    }
  }

  return v7;
}

void sub_186081EB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, CGColorSpaceRef a24, uint64_t a25, CGColorSpaceRef a26, uint64_t a27, char a28)
{
  IIOColorSpace::~IIOColorSpace(&a24);
  IIOColorSpace::~IIOColorSpace(&a26);
  ColorQuantization::~ColorQuantization(&a28);
  _Unwind_Resume(a1);
}

uint64_t GIFWritePlugin::writeAllFramesWithGlobalColorMap(GIFWritePlugin *this)
{
  v77 = *MEMORY[0x1E69E9840];
  v75 = 0;
  bzero(v76, 0x300uLL);
  v74[0] = 0;
  v74[1] = 0;
  v74[2] = v76;
  v72 = 0;
  space = 0;
  IIOColorSpace::IIOColorSpace(&v72, *MEMORY[0x1E695F1C0]);
  PixelDataProviderAtIndex = IIOWritePlugin::getPixelDataProviderAtIndex(this, 0);
  ContainerProperties = IIOWritePlugin::getContainerProperties(this);
  Ref = IIOImageSource::imageReadRef(PixelDataProviderAtIndex);
  v63 = *(this + 11);
  v4 = *(this + 6) * v63;
  width = *(this + 10);
  data = malloc_type_calloc(v4 * 4 * width, 1uLL, 0x100004077774924uLL);
  if (!data)
  {
    v26 = 0;
    v25 = 0;
    goto LABEL_102;
  }

  AlphaInfo = CGImageGetAlphaInfo(Ref);
  if (*(this + 6) != 1)
  {
    if (AlphaInfo <= kCGImageAlphaNoneSkipFirst)
    {
      v6 = 1;
      if (((1 << AlphaInfo) & 0x54) != 0)
      {
        v8 = 0;
        v7 = 2;
        goto LABEL_15;
      }
    }

    goto LABEL_14;
  }

  v6 = 0;
  v7 = 5;
  if (AlphaInfo <= kCGImageAlphaPremultipliedFirst)
  {
    if (AlphaInfo != kCGImageAlphaPremultipliedLast)
    {
      v8 = 0;
      if (AlphaInfo != kCGImageAlphaPremultipliedFirst)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    }

LABEL_14:
    v6 = 1;
    v8 = 1;
    v7 = 1;
    goto LABEL_15;
  }

  if (AlphaInfo == kCGImageAlphaLast)
  {
    goto LABEL_14;
  }

  if (AlphaInfo == kCGImageAlphaFirst)
  {
LABEL_13:
    v8 = 0;
    v7 = 2;
    v6 = 1;
    goto LABEL_15;
  }

  v8 = 0;
  if (AlphaInfo == kCGImageAlphaNoneSkipFirst)
  {
    v6 = 0;
    v8 = 0;
    v7 = 6;
  }

LABEL_15:
  *(this + 96) = v6;
  v9 = CGBitmapContextCreate(data, width, v4, 8uLL, 4 * width, space, v7);
  v10 = v9;
  if (v9)
  {
    v11 = width;
    v78.size.height = v4;
    v78.origin.x = 0.0;
    v78.origin.y = 0.0;
    v78.size.width = width;
    CGContextClearRect(v9, v78);
    v12 = *(this + 6);
    if (v12)
    {
      v13 = 0;
      x = 0.0;
      v15 = -1;
      y = 0.0;
      height = v63;
      do
      {
        v18 = IIOWritePlugin::getPixelDataProviderAtIndex(this, v12 + v15);
        v19 = IIOImageSource::imageReadRef(v18);
        if ((gIIODebugFlags & 0x30000) != 0)
        {
          ImageIOLog("drawing image %d\n", v13);
        }

        v79.origin.x = x;
        v79.origin.y = y;
        v79.size.width = v11;
        v79.size.height = height;
        CGContextDrawImage(v10, v79, v19);
        v80.origin.x = x;
        v80.origin.y = y;
        v80.size.width = v11;
        v80.size.height = height;
        v81 = CGRectOffset(v80, 0.0, v63);
        x = v81.origin.x;
        y = v81.origin.y;
        v11 = v81.size.width;
        height = v81.size.height;
        ++v13;
        v12 = *(this + 6);
        --v15;
      }

      while (v13 < v12);
    }

    CGContextRelease(v10);
  }

  else
  {
    _cg_jpeg_mem_term("writeAllFramesWithGlobalColorMap", 1148, "*** ERROR: CGBitmapContextCreate returned NULL\n");
  }

  v71 = 0;
  ColorQuantization::ColorQuantization(&v71);
  dest.data = data;
  dest.height = v4;
  dest.width = width;
  dest.rowBytes = 4 * width;
  if (*(this + 96) == 1 && (!v8 ? (vImageUnpremultiplyData_ARGB8888(&dest, &dest, 0), v20 = 0) : (vImageUnpremultiplyData_RGBA8888(&dest, &dest, 0), v20 = 3), dest.height))
  {
    v21 = 0;
    v22 = dest.data + v20;
    v66 = 1;
    do
    {
      if (dest.width)
      {
        v23 = &v22[dest.rowBytes * v21];
        v24 = dest.width;
        while (*v23 == 255)
        {
          v23 += 4;
          if (!--v24)
          {
            goto LABEL_35;
          }
        }

        v66 = 0;
      }

LABEL_35:
      ++v21;
    }

    while (v21 != dest.height);
  }

  else
  {
    v66 = 1;
  }

  *(this + 8) = width;
  *(this + 9) = v4;
  v25 = malloc_type_malloc(width + width * v4, 0x100004077774924uLL);
  if (!v25 || (ColorQuantization::generateFromRGBImageWu(&v71, &dest, 8, v7, *(this + 96), space, v74, v25, &v75) & 1) == 0)
  {
    ColorQuantization::~ColorQuantization(&v71);
    v26 = 0;
LABEL_102:
    v57 = 4294967246;
    v58 = "no";
    goto LABEL_87;
  }

  ColorQuantization::~ColorQuantization(&v71);
  v26 = malloc_type_malloc(width, 0x100004077774924uLL);
  *(this + 9) = v63;
  *(this + 7) = 0;
  if (!*(this + 6))
  {
LABEL_86:
    v57 = 0;
    v58 = "yes";
LABEL_87:
    v61 = v58;
    goto LABEL_90;
  }

  v27 = 0;
  v65 = v25;
  v61 = "no";
  while (1)
  {
    if ((gIIODebugFlags & 0x30000) != 0)
    {
      ImageIOLog("####################################################################\n", v27);
      v27 = *(this + 7);
    }

    PropertiesAtIndex = IIOWritePlugin::getPropertiesAtIndex(this, v27);
    ObjectForKey = IIODictionary::getObjectForKey(PropertiesAtIndex, @"{GIF}");
    DelayTime = GIFWritePlugin::getDelayTime(ObjectForKey, ObjectForKey);
    if (!*(this + 7))
    {
      if (_cg_EGifPutScreenDesc(*(this + 5), width, v63, SHIDWORD(v74[0]), 0, v74) != 1)
      {
        goto LABEL_88;
      }

      if (IIODictionary::containsKeyGroup(ContainerProperties, @"LoopCount", @"{GIF}"))
      {
        Uint32ForKeyGroup = IIODictionary::getUint32ForKeyGroup(ContainerProperties, @"LoopCount", @"{GIF}");
        v32 = Uint32ForKeyGroup;
        if (Uint32ForKeyGroup << 16 != 0x10000)
        {
          v33 = Uint32ForKeyGroup;
          if ((Uint32ForKeyGroup & 0x80000000) == 0)
          {
            _cg_EGifPutExtensionLeader(*(this + 5), 255);
            _cg_EGifPutExtensionBlock(*(this + 5), 0xBu, "NETSCAPE2.0");
            v34 = v32 - (v33 > 1);
            LOBYTE(dest.data) = 1;
            v35 = v34;
            BYTE1(dest.data) = v34;
            BYTE2(dest.data) = (v34 + (v34 >> 23)) >> 8;
            _cg_EGifPutExtensionBlock(*(this + 5), 3u, &dest);
            _cg_EGifPutExtensionTrailer(*(this + 5));
            if ((gIIODebugFlags & 0x30000) != 0)
            {
              ImageIOLog("                 loop count: %d\n", v35);
            }
          }
        }
      }
    }

    v36 = *(this + 96);
    *(&dest.data + 1) = DelayTime;
    v37 = v75;
    if (!v36)
    {
      v37 = 0;
    }

    BYTE3(dest.data) = v37;
    v38 = v36 ^ 1 | v66;
    if (v38)
    {
      v39 = 4;
    }

    else
    {
      v39 = 8;
    }

    LOBYTE(dest.data) = v39 | v36;
    if (_cg_EGifPutExtension(*(this + 5), 249, 4u, &dest) != 1)
    {
LABEL_88:
      v57 = 4294967246;
      goto LABEL_90;
    }

    v71 = 0;
    v69 = width;
    dest.data = 0;
    v68 = *(this + 11);
    *(this + 97) = 1;
    if (*(this + 7))
    {
      GIFWritePlugin::reduceFrame(this, v75, v25, 0, v74, v66 & 1u | ((*(this + 96) & 1) == 0), &v71, &dest, &v69, &v68);
    }

    v40 = v71;
    v42 = v69;
    v41 = dest.data;
    v43 = v68;
    v44 = _cg_EGifPutImageDesc(*(this + 5), v71, dest.data, v69, v68, 0, 0);
    if ((gIIODebugFlags & 0x30000) != 0)
    {
      ImageIOLog("      optimized image frame: (%d, %d, %d, %d)\n", v40, v41, v42, v43);
    }

    if (v44 != 1)
    {
      break;
    }

    if (v42 + v40 > width)
    {
      v42 = width - v40;
      v69 = width - v40;
    }

    v45 = (v43 + v41);
    v46 = *(this + 11);
    if (v43 + v41 > v46)
    {
      v42 = v46 - v41;
      v69 = v46 - v41;
    }

    if (v41 < v45)
    {
      v47 = *(this + 7);
      v48 = *(this + 8);
      v49 = v40 + v48 * v41;
      v50 = (**(this + 13) + v49);
      v51 = v48 * v46;
      if ((*(this + 97) & (v47 != 0)) != 0)
      {
        v52 = &v65[(v47 - 1) * v51 + v49];
      }

      else
      {
        v52 = 0;
      }

      v53 = &v65[v47 * v51 + v49];
      do
      {
        v54 = v53;
        if (((v52 != 0) & v38) == 1)
        {
          memcpy(v26, v53, v42);
          v54 = v26;
          if (v42)
          {
            v55 = 0;
            do
            {
              if (v53[v55] == v52[v55])
              {
                *(v26 + v55) = v75;
              }

              ++v55;
            }

            while (v42 > v55);
            v54 = v26;
          }
        }

        if (_cg_EGifPutLine(*(this + 5), v54, v42) != 1)
        {
          goto LABEL_89;
        }

        if (**(this + 13))
        {
          bzero(v50, v42);
        }

        if (v52)
        {
          v52 += v48;
        }

        else
        {
          v52 = 0;
        }

        ++v41;
        v53 += v48;
        v50 += v48;
      }

      while (v41 != v45);
    }

    v56 = *(this + 6);
    v27 = *(this + 7) + 1;
    *(this + 7) = v27;
    v25 = v65;
    if (v27 >= v56)
    {
      goto LABEL_86;
    }
  }

LABEL_89:
  v57 = 4294967246;
  v61 = "no";
  v25 = v65;
LABEL_90:
  if ((gIIODebugFlags & 0x30000) != 0)
  {
    ImageIOLog("           gifWrite-success: %s\n", v61);
    if ((gIIODebugFlags & 0x30000) != 0)
    {
      Error = _cg_GifLastError(*(this + 5));
      ImageIOLog("               GifLastError: %d\n\n", Error);
    }
  }

  if (data)
  {
    free(data);
  }

  if (v25)
  {
    free(v25);
  }

  if (v26)
  {
    free(v26);
  }

  IIOColorSpace::~IIOColorSpace(&v72);
  return v57;
}

void sub_1860827EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, CGColorSpaceRef a29)
{
  ColorQuantization::~ColorQuantization(&a28);
  IIOColorSpace::~IIOColorSpace(&a29);
  _Unwind_Resume(a1);
}

uint64_t HEIFReadPlugin::loadDataFromXPCObject(HEIFReadPlugin *this, void *a2)
{
  result = IIOReadPlugin::loadDataFromXPCObject(this, a2);
  if (!result)
  {
    length = 0;
    data = xpc_dictionary_get_data(a2, "iio_xpc_plugin_data_heif", &length);
    if (length == 88)
    {
      v6 = data[1];
      *(this + 29) = *data;
      *(this + 30) = v6;
      v7 = data[2];
      v8 = data[3];
      v9 = data[4];
      *(this + 68) = *(data + 10);
      *(this + 32) = v8;
      *(this + 33) = v9;
      *(this + 31) = v7;
      string = xpc_dictionary_get_string(a2, "iio_xpc_plugin_data_heif_req_cs");
      if (string && *string)
      {
        v11 = CFStringCreateWithCString(*MEMORY[0x1E695E480], string, 0x8000100u);
      }

      else
      {
        v11 = 0;
      }

      result = 0;
      *(this + 68) = v11;
    }

    else
    {
      return 4294967246;
    }
  }

  return result;
}

uint64_t HEIFReadPlugin::saveDataToXPCObject(const void **this, void *a2)
{
  v4 = IIOReadPlugin::saveDataToXPCObject(this, a2);
  if (!v4)
  {
    iio_xpc_dictionary_add_databuffer(a2, "iio_xpc_plugin_data_heif", this + 58, 0x58uLL);
    memset(v7, 0, sizeof(v7));
    IIOString::IIOString(v7, this[68]);
    v5 = IIOString::utf8String(v7);
    xpc_dictionary_set_string(a2, "iio_xpc_plugin_data_heif_req_cs", v5);
    IIOString::~IIOString(v7);
  }

  return v4;
}

void sub_186082A68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIOString::~IIOString(va);
  _Unwind_Resume(a1);
}

uint64_t HEIFReadPlugin::getExpectedWidthAndHeightForSubsampling(HEIFReadPlugin *this, const __CFData *a2, uint64_t a3, unint64_t a4, unsigned int *a5, unsigned int *a6)
{
  v30 = 0;
  v31 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  IIODictionary::IIODictionary(&v27);
  cf = 0;
  v26 = 0;
  if (!a2)
  {
    _cg_jpeg_mem_term("getExpectedWidthAndHeightForSubsampling", 212, "*** ERROR: getExpectedWidthAndHeightForSubsampling called with NULL-data\n");
LABEL_19:
    ImageGeometryForIndexWithOptions = 0;
    goto LABEL_20;
  }

  ImageGeometryForIndexWithOptions = IIOCreateCMPhotoDecompressionSession(&v31);
  if (ImageGeometryForIndexWithOptions)
  {
    LogError("getExpectedWidthAndHeightForSubsampling", 217, "*** ERROR: CMPhotoDecompressionSessionCreate failed\n");
    goto LABEL_20;
  }

  ImageGeometryForIndexWithOptions = gFunc_CMPhotoDecompressionSessionCreateContainer(v31, 0, a2, 0, &v30);
  if (ImageGeometryForIndexWithOptions)
  {
    LogError("getExpectedWidthAndHeightForSubsampling", 224, "*** ERROR: CMPhotoDecompressionSessionCreateContainer failed\n");
    goto LABEL_20;
  }

  v23 = 0;
  v24 = 0;
  ImageGeometryForIndexWithOptions = gFunc_CMPhotoDecompressionContainerGetImageGeometryForIndexWithOptions(v30, a3, 0, &v24, &v23, 0);
  if (ImageGeometryForIndexWithOptions)
  {
    LogError("getExpectedWidthAndHeightForSubsampling", 235, "*** ERROR: CMPhotoDecompressionContainerGetImageGeometryForIndexWithOptions failed\n");
  }

  else
  {
    if (v24 / a4 <= v23 / a4)
    {
      v13 = v23 / a4;
    }

    else
    {
      v13 = v24 / a4;
    }

    if (IIODictionary::containsKey(*(this + 6), @"kCGImageDestinationImageMaxPixelSize"))
    {
      Uint32ForKey = IIODictionary::getUint32ForKey(*(this + 6), @"kCGImageDestinationImageMaxPixelSize");
      if (v13 > Uint32ForKey)
      {
        LODWORD(v13) = (Uint32ForKey & 0xFFFFFFF0) + 64;
        *(this + 368) = 1;
      }
    }

    ImageGeometryForIndexWithOptions = gFunc_CMPhotoDecompressionContainerCopyImageBitDepthForIndexWithOptions(v30, a3, 0, &cf);
    if (!ImageGeometryForIndexWithOptions)
    {
      if (cf)
      {
        v20 = 0;
        v21 = 0;
        v22 = 0;
        IIOArray::IIOArray(&v20, cf);
        Uint32AtIndex = IIOArray::getUint32AtIndex(&v20, 0);
        PixelFormatForBitDepth = HEIFReadPlugin::getPixelFormatForBitDepth(this, Uint32AtIndex, v16);
        IIONumber::IIONumber(v19, PixelFormatForBitDepth);
        IIODictionary::setObjectForKey(&v27, v19, *gIIO_kCMPhotoDecompressionOption_OutputPixelFormat);
        IIONumber::~IIONumber(v19);
        CFRelease(cf);
        IIOArray::~IIOArray(&v20);
      }

      IIONumber::IIONumber(&v20, v13);
      IIODictionary::setObjectForKey(&v27, &v20, *gIIO_kCMPhotoDecompressionOption_MaxPixelSize);
      IIONumber::~IIONumber(&v20);
      IIONumber::IIONumber(&v20, *(this + 127));
      IIODictionary::setObjectForKey(&v27, &v20, *gIIO_kCMPhotoDecompressionOption_TiledDownsampling);
      IIONumber::~IIONumber(&v20);
      ImageGeometryForIndexWithOptions = gFunc_CMPhotoDecompressionContainerCreateOutputBufferAttributesForImageIndex(v30, a3, v28, &v26);
      if (ImageGeometryForIndexWithOptions)
      {
        LogError("getExpectedWidthAndHeightForSubsampling", 277, "*** ERROR: CMPhotoDecompressionContainerCreateOutputBufferAttributesForImageIndex failed\n");
        goto LABEL_20;
      }

      v20 = 0;
      v21 = 0;
      v22 = 0;
      IIODictionary::IIODictionary(&v20, v26);
      *a5 = IIODictionary::getUint32ForKey(&v20, *gIIO_kCVPixelBufferWidthKey);
      *a6 = IIODictionary::getUint32ForKey(&v20, *gIIO_kCVPixelBufferHeightKey);
      IIODictionary::~IIODictionary(&v20);
      goto LABEL_19;
    }

    LogError("getExpectedWidthAndHeightForSubsampling", 253, "*** ERROR: CMPhotoDecompressionContainerCopyImageBitDepthForIndexWithOptions failed\n");
  }

LABEL_20:
  if (v30)
  {
    CFRelease(v30);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  IIODictionary::~IIODictionary(&v27);
  return ImageGeometryForIndexWithOptions;
}

void sub_186082E08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

uint64_t HEIFReadPlugin::getPixelFormatForBitDepth(HEIFReadPlugin *this, unsigned int a2, IIODictionary *a3)
{
  v4 = *(this + 85);
  if (v4 == 1196573017)
  {
    if (*(this + 528))
    {
      v7 = 843264056;
    }

    else
    {
      v7 = 1278226488;
    }

    if (a2 <= 8)
    {
      return v7;
    }

    else
    {
      return v7 + 254;
    }
  }

  else if (v4 == 1380401696)
  {
    if (a2 == 10)
    {
      v5 = 1815162994;
    }

    else
    {
      v5 = 1815491698;
    }

    if (a2 >= 9)
    {
      return v5;
    }

    else
    {
      return 1111970369;
    }
  }

  else
  {
    v8 = v4 >> 24;
    v9 = MEMORY[0x1E69E9830];
    if ((v4 >> 24) <= 0x7F)
    {
      v10 = *(MEMORY[0x1E69E9830] + 4 * v8 + 60) & 0x40000;
    }

    else
    {
      v10 = __maskrune(v8, 0x40000uLL);
      v4 = *(this + 85);
    }

    if (v10)
    {
      v11 = (v4 >> 24);
    }

    else
    {
      v11 = 46;
    }

    v12 = v4 << 8 >> 24;
    if (v12 <= 0x7F)
    {
      v13 = *(v9 + 4 * v12 + 60) & 0x40000;
    }

    else
    {
      v13 = __maskrune(v12, 0x40000uLL);
      v4 = *(this + 85);
    }

    if (v13)
    {
      v14 = (v4 << 8 >> 24);
    }

    else
    {
      v14 = 46;
    }

    v15 = v4 >> 8;
    if (v15 <= 0x7F)
    {
      v16 = *(v9 + 4 * v15 + 60) & 0x40000;
    }

    else
    {
      v16 = __maskrune(v15, 0x40000uLL);
      v4 = *(this + 85);
    }

    if (v16)
    {
      v17 = (v4 >> 8);
    }

    else
    {
      v17 = 46;
    }

    if (v4 <= 0x7F)
    {
      v18 = *(v9 + 4 * v4 + 60) & 0x40000;
    }

    else
    {
      v18 = __maskrune(v4, 0x40000uLL);
      v4 = *(this + 85);
    }

    v6 = 1111970369;
    if (v18)
    {
      v19 = v4;
    }

    else
    {
      v19 = 46;
    }

    _cg_jpeg_mem_term("getPixelFormatForBitDepth", 1378, "*** getPixelFormatForBitDepth - unexpected colorModel: '%c%c%c%c' [0x%08x]- using icSigRgbData with 'BGRA'\n", v11, v14, v17, v19, v4);
    *(this + 85) = 1380401696;
  }

  return v6;
}

uint64_t HEIFReadPlugin::handleDecodeRequest(HEIFReadPlugin *this, IIODictionary *a2, void **a3)
{
  if ((*(this + 382) & 1) != 0 || *(this + 383) == 1)
  {
    ObjectForKey = IIODictionary::getObjectForKey(a2, @"kCGImageSourceDecodeRequestOptions");
    v58 = 0;
    v59 = 0;
    v60 = 0;
    IIODictionary::IIODictionary(&v58, ObjectForKey, 1);
    if (*(this + 383) != 1)
    {
      if (*(this + 382) != 1)
      {
        goto LABEL_114;
      }

      v9 = *(this + 20);
      if (!v9 || !CGColorSpaceUsesITUR_2100TF(v9) && !CGColorSpaceUsesExtendedRange(*(this + 20)))
      {
        goto LABEL_114;
      }

      if ((gIIODebugFlags & 0x300000) != 0)
      {
        ImageIOLog("☀️  decodeRequest: 'kCGImageSourceDecodeToSDR'\n");
      }

      *(this + 260) = 256;
      *(this + 524) = 0;
      *(this + 192) = 0;
      v10 = 1;
LABEL_38:
      cf = 0;
      v18 = *(this + 20);
      if (v18)
      {
        IIODictionary::setObjectForKey(a3, v18, *gIIO_kCVImageBufferCGColorSpaceKey);
      }

      v19 = IIOImageReadSession::globalInfoForType(*(this + 3), 1212500294);
      HEIFMainImageAtIndex = GlobalHEIFInfo::getHEIFMainImageAtIndex(v19, *(this + 133));
      HEIFAlternateImageAtIndex = HEIFMainImage::getHEIFAlternateImageAtIndex(HEIFMainImageAtIndex, *(this + 133));
      if (HEIFAlternateImageAtIndex)
      {
        Metadata = IIOImagePlus::getMetadata(HEIFAlternateImageAtIndex);
        if (Metadata)
        {
          IIODictionary::setObjectForKey(&v58, Metadata, @"kCGFlexRangeAlternateColorSpace");
        }
      }

      if ((gIIODebugFlags & 0x300000) != 0)
      {
        ImageIOLog("☀️  'IIOCallCreatePixelBufferAttributesForHDRType'\n");
      }

      if (*(this + 528) == 1)
      {
        if ((gIIODebugFlags & 0x300000) != 0)
        {
          ImageIOLog("☀️  image has alpha plane --> pixelformat 'l64r'\n");
        }

        IIONumber::IIONumber(&v55, 1815491698);
        IIODictionary::setObjectForKey(&v58, value, @"kCGTargetPixelFormat");
        IIONumber::~IIONumber(&v55);
      }

      v23 = IIOCallCreatePixelBufferAttributesForHDRType(v10, a3[1], v59, &cf);
      v24 = v23;
      if (v23)
      {
        v25 = IIOCMErrorString(v23);
        LogError("handleDecodeRequest", 412, "*** ERROR: Cannot decode to SDR: err = %s [%d]\n", v25, v24);
      }

      if (!cf)
      {
        goto LABEL_114;
      }

      v55 = 0;
      v56 = 0;
      value = 0;
      IIODictionary::IIODictionary(&v55, cf);
      Uint32ForKey = IIODictionary::getUint32ForKey(&v55, *gIIO_kCVPixelBufferPixelFormatTypeKey);
      v27 = Uint32ForKey;
      if ((gIIODebugFlags & 0x300000) != 0)
      {
        v28 = Uint32ForKey >> 24;
        if ((Uint32ForKey >> 24) <= 0x7F)
        {
          v29 = *(MEMORY[0x1E69E9830] + 4 * v28 + 60) & 0x40000;
        }

        else
        {
          v29 = __maskrune(Uint32ForKey >> 24, 0x40000uLL);
        }

        if (v29)
        {
          v30 = v28;
        }

        else
        {
          v30 = 46;
        }

        v31 = v27 << 8 >> 24;
        if (v31 <= 0x7F)
        {
          v32 = *(MEMORY[0x1E69E9830] + 4 * v31 + 60) & 0x40000;
        }

        else
        {
          v32 = __maskrune(v27 << 8 >> 24, 0x40000uLL);
        }

        if (v32)
        {
          v33 = v31;
        }

        else
        {
          v33 = 46;
        }

        v34 = v27 >> 8;
        if (v34 <= 0x7F)
        {
          v35 = *(MEMORY[0x1E69E9830] + 4 * v34 + 60) & 0x40000;
        }

        else
        {
          v35 = __maskrune(v27 >> 8, 0x40000uLL);
        }

        if (v27 <= 0x7F)
        {
          v36 = *(MEMORY[0x1E69E9830] + 4 * v27 + 60) & 0x40000;
        }

        else
        {
          v36 = __maskrune(v27, 0x40000uLL);
        }

        if (v35)
        {
          v37 = v34;
        }

        else
        {
          v37 = 46;
        }

        if (v36)
        {
          v38 = v27;
        }

        else
        {
          v38 = 46;
        }

        ImageIOLog("☀️  requestedPixelFormat: '%c%c%c%c'   %s:%d\n", v30, v33, v37, v38, "handleDecodeRequest", 418);
      }

      v39 = IIODictionary::getUint32ForKey(&v55, *gIIO_kCVPixelBufferWidthKey);
      v40 = IIODictionary::getUint32ForKey(&v55, *gIIO_kCVPixelBufferHeightKey);
      v41 = IIODictionary::getObjectForKey(&v55, *gIIO_kCVImageBufferCGColorSpaceKey);
      v42 = IIODictionary::getObjectForKey(&v55, *gIIO_kCVImageBufferYCbCrMatrixKey);
      FloatForKey = IIODictionary::getFloatForKey(&v55, @"IOSurfaceContentHeadroom");
      *(this + 116) = v27;
      v44 = CGColorSpaceCopyName(v41);
      *(this + 68) = v44;
      if ((gIIODebugFlags & 0x300000) != 0)
      {
        IIOString::IIOString(v53, v44);
        v45 = IIOString::utf8String(v53);
        ImageIOLog("☀️  requestedColorSpace: '%s'\n", v45);
        IIOString::~IIOString(v53);
      }

      if (v41)
      {
        CGColorSpaceRelease(*(this + 20));
        *(this + 20) = CFRetain(v41);
      }

      if (FloatForKey > 0.0)
      {
        *(this + 46) = FloatForKey;
        *(this + 118) = FloatForKey;
      }

      *(this + 525) = IIODictionary::getBoolForKey(&v58, @"kCGDisableMetal");
      if (v42)
      {
        if ((gIIODebugFlags & 0x300000) != 0)
        {
          IIOString::IIOString(v53, v42);
          v46 = IIOString::utf8String(v53);
          ImageIOLog("☀️  requestedYCCMatrix: '%s'\n", v46);
          IIOString::~IIOString(v53);
        }

        if (CFStringCompare(v42, *gIIO_kCVImageBufferYCbCrMatrix_ITU_R_601_4, 0))
        {
          if (CFStringCompare(v42, *gIIO_kCVImageBufferYCbCrMatrix_ITU_R_709_2, 0))
          {
            if (CFStringCompare(v42, *gIIO_kCVImageBufferYCbCrMatrix_ITU_R_2020, 0))
            {
              goto LABEL_94;
            }

            v47 = 3;
          }

          else
          {
            v47 = 2;
          }
        }

        else
        {
          v47 = 1;
        }

        *(this + 117) = v47;
      }

LABEL_94:
      v48 = (this + 294);
      *(this + 69) = v39;
      *(this + 70) = v40;
      if (v27 > 2019963439)
      {
        if (v27 != 2019963440 && v27 != 2019963442 && v27 != 2019963956)
        {
          goto LABEL_106;
        }
      }

      else
      {
        if (v27 == 1380411457)
        {
          *(this + 72) = 4194320;
          *(this + 146) = 4;
          if (*(this + 528) == 1)
          {
            v49 = 16777475;
          }

          else
          {
            v49 = 16777477;
          }

          goto LABEL_112;
        }

        if (v27 != 1815162994)
        {
          if (v27 == 1815491698)
          {
            *(this + 72) = 4194320;
            *(this + 146) = 4;
            if (*(this + 528) == 1)
            {
              v49 = 259;
            }

            else
            {
              v49 = 261;
            }

LABEL_112:
            *v48 = v49;
            v50 = 8;
            goto LABEL_113;
          }

LABEL_106:
          *(this + 72) = 2097160;
          *(this + 146) = 4;
          if (*(this + 528) == 1)
          {
            v51 = 3;
          }

          else
          {
            v51 = 5;
          }

          *v48 = v51;
          v50 = 4;
          goto LABEL_113;
        }
      }

      *(this + 72) = 2097162;
      v50 = 4;
      *(this + 146) = 4;
      *v48 = 197126;
      *(this + 80) = 2097162;
      *(this + 162) = 4;
      *(this + 326) = 197126;
LABEL_113:
      *(this + 71) = (v39 * v50 + 15) & 0xFFFFFFF0;
      *(this + 378) = 1;
      CFRelease(cf);
      IIODictionary::~IIODictionary(&v55);
LABEL_114:
      IIODictionary::~IIODictionary(&v58);
      return 0;
    }

    if ((*(this + 523) & 1) == 0 && *(this + 522) != 1)
    {
      v10 = 0;
      v14 = 1;
      goto LABEL_33;
    }

    if ((gIIODebugFlags & 0x300000) != 0)
    {
      ImageIOLog("☀️  decodeRequest: 'kCGImageSourceDecodeToHDR'\n");
    }

    *(this + 260) = 1;
    if (IIODictionary::containsKey(&v58, @"kCGTargetHeadroom"))
    {
      v7 = IIODictionary::getFloatForKey(&v58, @"kCGTargetHeadroom");
      *(this + 119) = v7;
      v8 = v7;
    }

    else
    {
      *(this + 119) = 0;
      v8 = 0.0;
    }

    if ((gIIODebugFlags & 0x300000) != 0)
    {
      ImageIOLog("☀️  %s - _gainMapHeadroom: %g\n", "handleDecodeRequest", v8);
    }

    v11 = IIODictionary::containsKey(&v58, @"kCGFallbackHDRGain");
    v12 = 0.0;
    if (v11)
    {
      v12 = IIODictionary::getFloatForKey(&v58, @"kCGFallbackHDRGain");
    }

    *(this + 120) = v12;
    if (IIODictionary::containsKey(&v58, @"kCGGenerateFlexGTC"))
    {
      BoolForKey = IIODictionary::getBoolForKey(&v58, @"kCGGenerateFlexGTC");
    }

    else
    {
      if (!IIODictionary::containsKey(&v58, @"kCGImageSourceGenerateImageSpecificLumaScaling"))
      {
        *(this + 524) = 1;
        goto LABEL_29;
      }

      BoolForKey = IIODictionary::getBoolForKey(&v58, @"kCGImageSourceGenerateImageSpecificLumaScaling");
    }

    *(this + 524) = BoolForKey;
LABEL_29:
    if (IIODictionary::getBoolForKey(a2, @"kCGImageSourceCreateThumbnailWithTransform"))
    {
      Position = IIOImageWriteSession::getPosition(this);
      TagWithPath = CGImageMetadataGetTagWithPath(Position, 0, @"tiff:Orientation");
      v17 = CGImageMetadataTagGetValue(TagWithPath);
      v55 = 0;
      v56 = 0;
      value = 0;
      IIONumber::IIONumber(&v55, v17);
      *(this + 126) = IIONumber::uint32Num(&v55);
      IIONumber::~IIONumber(&v55);
      v14 = 0;
    }

    else
    {
      v14 = 0;
      *(this + 126) = 1;
    }

    v10 = 2;
LABEL_33:
    if (IIODictionary::containsKey(&v58, @"kCGComputeHDRStats"))
    {
      *(this + 192) = IIODictionary::getBoolForKey(&v58, @"kCGComputeHDRStats");
      *(this + 525) = IIODictionary::getBoolForKey(&v58, @"kCGDisableMetal");
    }

    else
    {
      *(this + 192) = 1;
      if ((gIIODebugFlags & 0x300000) != 0)
      {
        ImageIOLog("☀️  kCGComputeHDRStats was not specified - temporary setting _computeHDRStats to true\n");
      }
    }

    if (v14)
    {
      goto LABEL_114;
    }

    goto LABEL_38;
  }

  return 0;
}

void sub_18608393C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  IIODictionary::~IIODictionary(va);
  IIODictionary::~IIODictionary(va1);
  _Unwind_Resume(a1);
}

uint64_t HEIFReadPlugin::getDecodePixelFormatForBitDepth(HEIFReadPlugin *this, int a2)
{
  v2 = *(this + 85);
  if (v2 == 1196573017)
  {
    if (*(this + 528))
    {
      v3 = 843264056;
    }

    else
    {
      v3 = 1278226488;
    }

    v4 = v3 + 254;
  }

  else
  {
    if (v2 != 1380401696)
    {
      LODWORD(v6) = 0;
      v5 = 0;
      goto LABEL_18;
    }

    if (*(this + 528))
    {
      v3 = 1111970369;
    }

    else
    {
      v3 = 875704422;
    }

    if (*(this + 528))
    {
      v4 = 1815491698;
    }

    else
    {
      v4 = 2019963440;
    }
  }

  if (a2 == 10)
  {
    v5 = v4;
  }

  else
  {
    v5 = v3;
  }

  LODWORD(v6) = BYTE3(v5);
LABEL_18:
  v7 = MEMORY[0x1E69E9830] + 60;
  if ((*(MEMORY[0x1E69E9830] + 60 + 4 * v6) & 0x40000) != 0)
  {
    v6 = v6;
  }

  else
  {
    v6 = 46;
  }

  LODWORD(v8) = WORD1(v5) & 0x77;
  if ((*(v7 + 4 * v8) & 0x40000) != 0)
  {
    v8 = v8;
  }

  else
  {
    v8 = 46;
  }

  LODWORD(v9) = (v5 >> 8) & 0x77;
  if ((*(v7 + 4 * v9) & 0x40000) != 0)
  {
    v9 = v9;
  }

  else
  {
    v9 = 46;
  }

  if ((*(v7 + 4 * (v5 & 0x7F)) & 0x40000) != 0)
  {
    v10 = v5 & 0x7F;
  }

  else
  {
    v10 = 46;
  }

  _cg_jpeg_mem_term("getDecodePixelFormatForBitDepth", 1428, "*** getDecodePixelFormatForBitDepth[%d] --> '%c%c%c%c'\n", a2, v6, v8, v9, v10);
  return v5;
}

void HEIFReadPlugin::updateCreateImageOptions(HEIFReadPlugin *this, IIODictionary *a2, IIODictionary *a3)
{
  v6 = *(this + 57);
  if (*(this + 232) <= 1u && v6 == 0)
  {
    if (!*(this + 166))
    {
      goto LABEL_19;
    }

    v8 = IIOImageReadSession::globalInfoForType(*(this + 3), 1212500294);
    HEIFMainImageAtIndex = GlobalHEIFInfo::getHEIFMainImageAtIndex(v8, *(this + 133));
    if (*(this + 368) == 1)
    {
      v10 = *(this + 77);
      if (v10)
      {
        v11 = *(this + 78);
      }

      else
      {
        v10 = *(this + 61);
        v11 = *(this + 62);
      }

      if (v10 <= v11)
      {
        v6 = v11;
      }

      else
      {
        v6 = v10;
      }
    }

    else
    {
      v12 = HEIFMainImageAtIndex;
      v13 = HEIFMainImage::width(HEIFMainImageAtIndex) / *(this + 166);
      if (v13 <= HEIFMainImage::height(v12) / *(this + 166))
      {
        v14 = HEIFMainImage::height(v12);
      }

      else
      {
        v14 = HEIFMainImage::width(v12);
      }

      v6 = v14 / *(this + 166);
    }
  }

  IIONumber::IIONumber(v17, v6);
  IIODictionary::setObjectForKey(a2, v17, *gIIO_kCMPhotoDecompressionOption_MaxPixelSize);
  IIONumber::~IIONumber(v17);
  IIONumber::IIONumber(v17, *(this + 127));
  IIODictionary::setObjectForKey(a2, v17, *gIIO_kCMPhotoDecompressionOption_TiledDownsampling);
  IIONumber::~IIONumber(v17);
LABEL_19:
  BoolForKey = IIODictionary::getBoolForKey(a3, @"kCGImageSourceCreateThumbnailWithTransform");
  v16 = MEMORY[0x1E695E4D0];
  if (!BoolForKey)
  {
    v16 = MEMORY[0x1E695E4C0];
  }

  IIODictionary::setObjectForKey(a2, *v16, *gIIO_kCMPhotoDecompressionOption_ApplyTransform);
}

void sub_186083CD4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

void HEIFReadPlugin::updateHardwareDecodeOptions(IIODictionary **this, IIODictionary *a2, const __CFDictionary **a3)
{
  v6 = IIO_HardwareDecoderDefaultValue();
  if (HEIFReadPlugin::getEnableRestrictedDecodingFlag(this, a3))
  {
    if (!gFunc_VTAreVideoDecodersRunningInProcess())
    {
      LogError("updateHardwareDecodeOptions", 1470, "*** ERROR: kCGImageSourceEnableRestrictedDecoding was requested, but VTRestrictVideoDecoders() was not called.\n");
    }

    IIODictionary::setObjectForKey(a2, *MEMORY[0x1E695E4D0], *gIIO_kCMPhotoDecompressionOption_RestrictedDecoding);
    if ((gIIODebugFlags & 0x30000) != 0)
    {
      ImageIOLog("***************************************************************\n");
      if ((gIIODebugFlags & 0x30000) != 0)
      {
        ImageIOLog("*** kCMPhotoDecompressionOption_RestrictedDecoding enabled ***\n");
        if ((gIIODebugFlags & 0x30000) != 0)
        {
          ImageIOLog("***************************************************************\n");
        }
      }
    }

    goto LABEL_26;
  }

  if (!v6)
  {
    goto LABEL_21;
  }

  if (v6 == 255)
  {
    if (IIODictionary::containsKey(a3, @"kCGImageSourceUseHardwareAcceleration"))
    {
      if (!IIODictionary::getBoolForKey(a3, @"kCGImageSourceUseHardwareAcceleration"))
      {
LABEL_21:
        if ((gIIODebugFlags & 0x4000000000000) != 0 && IIO_OSAppleInternalBuild())
        {
          ImageIOLog("••• UseHardwareAcceleration: ❌  | %s:%d\n", "updateHardwareDecodeOptions", 1517);
        }

        IIONumber::IIONumber(v20, 1);
        IIODictionary::setObjectForKey(a2, v20, *gIIO_kCMPhotoDecompressionOption_AccelerationMode);
        goto LABEL_25;
      }

      LOBYTE(v6) = 1;
    }

    else
    {
      LOBYTE(v6) = -1;
    }
  }

  if (!IIOHardwareDecodingEnabledFlag() || !v6)
  {
    goto LABEL_21;
  }

  if (v6 == 1)
  {
    v7 = *(this + 55);
    if (v7 == 1096173907 || v7 == 1096173894)
    {
      if ((gIIODebugFlags & 0x4000000000000) != 0 && IIO_OSAppleInternalBuild())
      {
        v8 = *(this + 55);
        v9 = v8 >> 24;
        if ((v8 >> 24) <= 0x7F)
        {
          v10 = *(MEMORY[0x1E69E9830] + 4 * v9 + 60) & 0x40000;
        }

        else
        {
          v10 = __maskrune(v9, 0x40000uLL);
          v8 = *(this + 55);
        }

        if (v10)
        {
          v11 = (v8 >> 24);
        }

        else
        {
          v11 = 46;
        }

        v12 = v8 << 8 >> 24;
        if (v12 <= 0x7F)
        {
          v13 = *(MEMORY[0x1E69E9830] + 4 * v12 + 60) & 0x40000;
        }

        else
        {
          v13 = __maskrune(v12, 0x40000uLL);
          v8 = *(this + 55);
        }

        if (v13)
        {
          v14 = (v8 << 8 >> 24);
        }

        else
        {
          v14 = 46;
        }

        v15 = v8 >> 8;
        if (v15 <= 0x7F)
        {
          v16 = *(MEMORY[0x1E69E9830] + 4 * v15 + 60) & 0x40000;
        }

        else
        {
          v16 = __maskrune(v15, 0x40000uLL);
          v8 = *(this + 55);
        }

        if (v16)
        {
          v17 = (v8 >> 8);
        }

        else
        {
          v17 = 46;
        }

        if (v8 <= 0x7F)
        {
          v18 = *(MEMORY[0x1E69E9830] + 4 * v8 + 60) & 0x40000;
        }

        else
        {
          v18 = __maskrune(v8, 0x40000uLL);
        }

        if (v18)
        {
          v19 = *(this + 220);
        }

        else
        {
          v19 = 46;
        }

        ImageIOLog("••• UseHardwareAcceleration: not set (%c%c%c%c)  | %s:%d\n", v11, v14, v17, v19, "updateHardwareDecodeOptions", 1507);
      }
    }

    else if ((gIIODebugFlags & 0x4000000000000) != 0 && IIO_OSAppleInternalBuild())
    {
      ImageIOLog("••• UseHardwareAcceleration: ✅  | %s:%d\n", "updateHardwareDecodeOptions", 1511);
    }

    IIONumber::IIONumber(v20, 0);
    IIODictionary::setObjectForKey(a2, v20, *gIIO_kCMPhotoDecompressionOption_AccelerationMode);
LABEL_25:
    IIONumber::~IIONumber(v20);
    goto LABEL_26;
  }

  if (v6 == 255)
  {
    IIONumber::IIONumber(v20, 0);
    IIODictionary::setObjectForKey(a2, v20, *gIIO_kCMPhotoDecompressionOption_AccelerationMode);
    IIONumber::~IIONumber(v20);
    if ((gIIODebugFlags & 0x4000000000000) != 0)
    {
      if (IIO_OSAppleInternalBuild())
      {
        ImageIOLog("••• UseHardwareAcceleration: not set  | %s:%d\n");
      }
    }
  }

LABEL_26:
  BREAK_ON_RESTRICTED_CHECK(*(this[6] + 1), a3[1]);
}

void sub_18608411C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

CFTypeRef HEIFReadPlugin::copyAuxiliaryDataInfo(HEIFReadPlugin *this, unsigned int a2, const __CFString *a3, IIODictionary *a4)
{
  v75 = 0;
  v76 = 0;
  v74 = 0;
  EnableRestrictedDecodingFlag = HEIFReadPlugin::getEnableRestrictedDecodingFlag(this, a4);
  IIO_LoadHEIFSymbols();
  v9 = IIOImageReadSession::globalInfoForType(*(this + 3), 1212500294);
  HEIFMainImageAtIndex = GlobalHEIFInfo::getHEIFMainImageAtIndex(v9, *(this + 133));
  if (!HEIFMainImageAtIndex)
  {
    goto LABEL_20;
  }

  v11 = HEIFMainImageAtIndex;
  v73 = 0;
  Options = IIOImagePlus::getOptions(*(this + 2));
  v12 = IIOCreateCMPhotoDecompressionSession(&v75);
  v13 = v12;
  if (v12)
  {
    v14 = IIOCMErrorString(v12);
    LogError("copyAuxiliaryDataInfo", 1602, "*** ERROR: IIOCreateCMPhotoDecompressionSession err: %s [%d]\n", v14, v13);
  }

  if (!v75)
  {
LABEL_20:
    v26 = 0;
    v19 = 0;
    goto LABEL_62;
  }

  Size = IIOImageReadSession::getSize(*(this + 3));
  v16 = IIOImageReadSession::retainBytePointer(*(this + 3), &v76, 1);
  if (!v16)
  {
    HEIFReadPlugin::copyAuxiliaryDataInfo();
    v19 = 0;
    goto LABEL_47;
  }

  v17 = v16;
  v18 = *(this + 61);
  if (v18)
  {
    if (*(this + 62))
    {
      Size = *(this + 62);
    }

    else
    {
      v18 = 0;
    }

    v17 = v16 + v18;
  }

  v19 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v17, Size, *MEMORY[0x1E695E498]);
  if (v19)
  {
    v20 = gFunc_CMPhotoDecompressionSessionCreateContainer(v75, 0, v19, &v73, &v74);
    v13 = v20;
    if (v20)
    {
      v21 = IIOCMErrorString(v20);
      LogError("copyAuxiliaryDataInfo", 1628, "*** ERROR: CMPhotoDecompressionSessionCreateContainer err: %s [%d]\n", v21, v13);
    }
  }

  if (a2 == 98)
  {
    if (!HEIFGroupItem::getStereoAggressorCount(v11))
    {
      goto LABEL_47;
    }

    v70 = 0;
    v71 = 0;
    v72 = 0;
    IIODictionary::IIODictionary(&v70);
    v67 = 0;
    v68 = 0;
    v69 = 0;
    IIODictionary::IIODictionary(&v67);
    IIONumber::IIONumber(theDict, 6);
    IIODictionary::setObjectForKey(&v67, value, *gIIO_kCMPhotoDecompressionOption_DecodeToHDROutputMode);
    IIONumber::~IIONumber(theDict);
    v22 = *MEMORY[0x1E695E4D0];
    IIODictionary::setObjectForKey(&v67, *MEMORY[0x1E695E4D0], *gIIO_kCMPhotoDecompressionOption_DecodeToHDROutputDoNotDecodeBaselayer);
    IIODictionary::setObjectForKey(&v70, v68, *gIIO_kCMPhotoDecompressionOption_DecodeToHDROutputOptions);
    if (EnableRestrictedDecodingFlag)
    {
      IIODictionary::setObjectForKey(&v70, v22, *gIIO_kCMPhotoDecompressionOption_RestrictedDecoding);
    }

    v64 = 0;
    v23 = gFunc_CMPhotoDecompressionContainerCreateImageForIndex(v74, *(this + 133), v71, 5, &v64);
    v24 = v23;
    if (v23)
    {
      v25 = IIOCMErrorString(v23);
      LogError("copyAuxiliaryDataInfo", 1651, "*** ERROR: CMPhotoDecompressionContainerCreateImageForIndex err: %s [%d]\n", v25, v24);
      v26 = 0;
    }

    else
    {
      theDict[0] = 0;
      theDict[1] = 0;
      value = 0;
      IIODictionary::IIODictionary(theDict, v64);
      ObjectForKey = IIODictionary::getObjectForKey(theDict, *gIIO_kCMPhotoDecompressionContainerConstituent_FlexRangeGainMap);
      v45 = IIODictionary::getObjectForKey(theDict, *gIIO_kCMPhotoDecompressionContainerConstituent_FlexRangeMetadata);
      v63 = 0;
      CGImageCreateFlexRangeMetadata(v45, &v63);
      cf = 0;
      v61 = 0;
      v62 = 0;
      IIODictionary::IIODictionary(&cf);
      HEIFReadPlugin::updateAuxiliaryDataInfoFromPixelBuffer(v46, ObjectForKey, v63, a4, &cf);
      v26 = CFRetain(v61);
      v47 = IIODictionary::getObjectForKey(theDict, *gIIO_kCMPhotoDecompressionContainerConstituent_FlexRangeColorSpace);
      if (v47)
      {
        IIODictionary::setObjectForKey(&cf, v47, @"kCGImageAuxiliaryDataInfoColorSpace");
      }

      if (IIODictionary::getBoolForKey(a4, @"kCGImageAuxiliaryDataIncludeMeteorPlusMetadata"))
      {
        v59 = 0;
        v58 = -1;
        gFunc_CMPhotoDecompressionContainerFindFirstAuxiliaryOfTypeForIndexWithOptions(v74, *(this + 133), 0, 4, *gIIO_kCMPhotoAuxiliaryImageTypeURN_HDRGainMap, &v59, &v58);
        if (v59)
        {
          v57 = 0;
          gFunc_CMPhotoDecompressionContainerCopyAuxiliaryImageMetadataForIndexWithOptions(v74, *(this + 133), v58, 0, &v57);
          IIODictionary::setObjectForKey(&cf, v57, @"kCGImageAuxiliaryDataInfoMeteorPlusMetadata");
          if (v57)
          {
            CFRelease(v57);
          }
        }
      }

      if (v63)
      {
        CFRelease(v63);
      }

      IIODictionary::~IIODictionary(&cf);
      IIODictionary::~IIODictionary(theDict);
    }

    if (v64)
    {
      CFRelease(v64);
    }

    IIODictionary::~IIODictionary(&v67);
    IIODictionary::~IIODictionary(&v70);
    goto LABEL_60;
  }

  NumberOfAuxImages = HEIFMainImage::getNumberOfAuxImages(v11);
  v67 = 0;
  if (!NumberOfAuxImages)
  {
    goto LABEL_47;
  }

  v55 = a4;
  v28 = 0;
  v29 = NumberOfAuxImages;
  v30 = Options;
  do
  {
    HEIFAuxImageAtIndex = HEIFMainImage::getHEIFAuxImageAtIndex(v11, v28);
    if (HEIFAuxImage::auxiliaryType(HEIFAuxImageAtIndex) != a2)
    {
      goto LABEL_38;
    }

    if (a2 < 4)
    {
      v37 = gFunc_CMPhotoDecompressionContainerCreateAuxiliaryImageDictionaryRepresentation(v74, *(this + 133), v28, *(v30 + 8), &v67);
LABEL_35:
      v13 = v37;
      goto LABEL_36;
    }

    v32 = IIOImageWriteSession::getSize(HEIFAuxImageAtIndex);
    if (!a3 || !v32)
    {
      goto LABEL_36;
    }

    if (CFStringCompare(a3, v32, 0))
    {
      goto LABEL_38;
    }

    if (a2 != 99)
    {
      theDict[0] = 0;
      v50 = v74;
      v53 = gFunc_CMPhotoDecompressionContainerCreateAuxiliaryImageForIndex;
      v39 = *(this + 133);
      v40 = HEIFAuxImage::payloadIndex(HEIFAuxImageAtIndex);
      v30 = Options;
      v37 = (v53)(v50, v39, v40, *(Options + 8), 2, theDict);
      if (theDict[0])
      {
        cf = 0;
        v51 = v74;
        v54 = gFunc_CMPhotoDecompressionContainerCopyAuxiliaryImageMetadataForIndexWithOptions;
        v41 = *(this + 133);
        v42 = HEIFAuxImage::payloadIndex(HEIFAuxImageAtIndex);
        v54(v51, v41, v42, *(Options + 8), &cf);
        v70 = 0;
        v71 = 0;
        v72 = 0;
        IIODictionary::IIODictionary(&v70);
        HEIFReadPlugin::updateAuxiliaryDataInfoFromPixelBuffer(v43, theDict[0], cf, v55, &v70);
        v67 = CFRetain(v71);
        if (cf)
        {
          CFRelease(cf);
        }

        CFRelease(theDict[0]);
        IIODictionary::~IIODictionary(&v70);
LABEL_44:
        v26 = v67;
        goto LABEL_60;
      }

      goto LABEL_35;
    }

    theDict[0] = 0;
    v52 = gFunc_CMPhotoDecompressionContainerCopyCustomMetadataForIndexWithOptions;
    v33 = v74;
    v34 = *(this + 133);
    v35 = HEIFAuxImage::payloadIndex(HEIFAuxImageAtIndex);
    v13 = (v52)(v33, v34, v35, 0, theDict);
    v30 = Options;
    if (theDict[0])
    {
      v70 = 0;
      v71 = 0;
      v72 = 0;
      IIODictionary::IIODictionary(&v70);
      if (CFDictionaryContainsKey(theDict[0], @"Data"))
      {
        v36 = CFDictionaryGetValue(theDict[0], @"Data");
        IIODictionary::setObjectForKey(&v70, v36, @"kCGImageAuxiliaryDataInfoData");
      }

      v67 = CFRetain(v71);
      CFRelease(theDict[0]);
      IIODictionary::~IIODictionary(&v70);
      if (!v13)
      {
        goto LABEL_44;
      }

      goto LABEL_37;
    }

LABEL_36:
    if (!v13)
    {
      goto LABEL_44;
    }

LABEL_37:
    v38 = IIOCMErrorString(v13);
    _cg_jpeg_mem_term("copyAuxiliaryDataInfo", 1777, "*** CMPhotoDecompressionContainerCreateAuxiliaryImageDictionaryRepresentation[%d]  err = %s [%d]\n", v28, v38, v13);
LABEL_38:
    ++v28;
  }

  while (v29 != v28);
  if (v67)
  {
    CFRelease(v67);
  }

LABEL_47:
  v26 = 0;
LABEL_60:
  if (v75)
  {
    CFRelease(v75);
  }

LABEL_62:
  if (v74)
  {
    CFRelease(v74);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v76)
  {
    v48 = *(this + 3);
    if (v48)
    {
      IIOImageReadSession::releaseBytePointer(v48, v76);
    }
  }

  return v26;
}

void sub_1860848B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, char a28)
{
  IIODictionary::~IIODictionary(&a20);
  IIODictionary::~IIODictionary(&a25);
  IIODictionary::~IIODictionary(&a28);
  IIODictionary::~IIODictionary((v28 - 144));
  _Unwind_Resume(a1);
}

uint64_t HEIFReadPlugin::updateAuxiliaryDataInfoFromPixelBuffer(HEIFReadPlugin *this, __CVBuffer *a2, const CGImageMetadata *a3, IIODictionary *a4, IIODictionary *a5)
{
  ObjectForKey = IIODictionary::getObjectForKey(a4, @"kCGImageAuxiliaryDataRepresentation");
  if (!ObjectForKey)
  {
    goto LABEL_9;
  }

  v9 = ObjectForKey;
  if (CFEqual(ObjectForKey, @"kCGImageAuxiliaryDataRepresentationPixelBuffer"))
  {
    v10 = @"kCGImageAuxiliaryDataInfoPixelBuffer";
    v11 = a5;
    v12 = a2;
LABEL_6:
    IIODictionary::setObjectForKey(v11, v12, v10);
    goto LABEL_39;
  }

  if (CFEqual(v9, @"kCGImageAuxiliaryDataRepresentationIOSurface"))
  {
    IOSurface = gFunc_CVPixelBufferGetIOSurface(a2);
    IOSurfaceIncrementUseCount(IOSurface);
    v10 = @"kCGImageAuxiliaryDataInfoIOSurface";
    v11 = a5;
    v12 = IOSurface;
    goto LABEL_6;
  }

  if (CFEqual(v9, @"kCGImageAuxiliaryDataRepresentationImage"))
  {
    v14 = gFunc_CVPixelBufferGetIOSurface(a2);
    v15 = CGImageCreateFromIOSurface(v14, 0);
    IIODictionary::setObjectForKey(a5, v15, @"kCGImageAuxiliaryDataInfoImage");
    CGImageRelease(v15);
  }

  else
  {
LABEL_9:
    PixelFormatType = gFunc_CVPixelBufferGetPixelFormatType(a2);
    Width = gFunc_CVPixelBufferGetWidth(a2);
    Height = gFunc_CVPixelBufferGetHeight(a2);
    BytesPerRow = gFunc_CVPixelBufferGetBytesPerRow(a2);
    if (gFunc_CVPixelBufferIsPlanar(a2))
    {
      v20 = PixelFormatType >> 24;
      v21 = MEMORY[0x1E69E9830];
      if ((PixelFormatType >> 24) <= 0x7F)
      {
        v22 = *(MEMORY[0x1E69E9830] + 4 * v20 + 60) & 0x40000;
      }

      else
      {
        v22 = __maskrune(PixelFormatType >> 24, 0x40000uLL);
      }

      v26 = Height;
      if (v22)
      {
        v27 = v20;
      }

      else
      {
        v27 = 46;
      }

      v40 = v27;
      v28 = PixelFormatType << 8 >> 24;
      v29 = v21;
      if (v28 <= 0x7F)
      {
        v30 = *(v21 + 4 * v28 + 60) & 0x40000;
      }

      else
      {
        v30 = __maskrune(PixelFormatType << 8 >> 24, 0x40000uLL);
      }

      v31 = BytesPerRow;
      if (v30)
      {
        v32 = v28;
      }

      else
      {
        v32 = 46;
      }

      v33 = PixelFormatType >> 8;
      v34 = Width;
      if (v33 <= 0x7F)
      {
        v35 = *(v29 + 4 * v33 + 60) & 0x40000;
      }

      else
      {
        v35 = __maskrune(PixelFormatType >> 8, 0x40000uLL);
      }

      if (v35)
      {
        v36 = v33;
      }

      else
      {
        v36 = 46;
      }

      if (PixelFormatType <= 0x7F)
      {
        v37 = *(v29 + 4 * PixelFormatType + 60) & 0x40000;
      }

      else
      {
        v37 = __maskrune(PixelFormatType, 0x40000uLL);
      }

      Height = v26;
      if (v37)
      {
        v38 = PixelFormatType;
      }

      else
      {
        v38 = 46;
      }

      LogError("updateAuxiliaryDataInfoFromPixelBuffer", 1857, "*** ERROR: Unsupported AuxiliaryData format '%c%c%c%c'\n", v40, v32, v36, v38);
      Width = v34;
      BytesPerRow = v31;
    }

    else
    {
      gFunc_CVPixelBufferLockBaseAddress(a2, 1);
      BaseAddress = gFunc_CVPixelBufferGetBaseAddress(a2);
      v24 = CFDataCreate(*MEMORY[0x1E695E480], BaseAddress, BytesPerRow * Height);
      if (v24)
      {
        v25 = v24;
        IIODictionary::setObjectForKey(a5, v24, @"kCGImageAuxiliaryDataInfoData");
        CFRelease(v25);
      }

      gFunc_CVPixelBufferUnlockBaseAddress(a2, 1);
    }

    v43 = 0;
    value = 0;
    v45 = 0;
    IIODictionary::IIODictionary(&v43);
    IIODictionary::setObjectForKey(a5, value, @"kCGImageAuxiliaryDataInfoDataDescription");
    IIONumber::IIONumber(v41, Width);
    IIODictionary::setObjectForKey(&v43, v42, @"Width");
    IIONumber::~IIONumber(v41);
    IIONumber::IIONumber(v41, Height);
    IIODictionary::setObjectForKey(&v43, v42, @"Height");
    IIONumber::~IIONumber(v41);
    IIONumber::IIONumber(v41, BytesPerRow);
    IIODictionary::setObjectForKey(&v43, v42, @"BytesPerRow");
    IIONumber::~IIONumber(v41);
    IIONumber::IIONumber(v41, PixelFormatType);
    IIODictionary::setObjectForKey(&v43, v42, @"PixelFormat");
    IIONumber::~IIONumber(v41);
    IIODictionary::~IIODictionary(&v43);
  }

LABEL_39:
  if (a3)
  {
    IIODictionary::setObjectForKey(a5, a3, @"kCGImageAuxiliaryDataInfoMetadata");
  }

  return 0;
}

void sub_186084DA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  IIONumber::~IIONumber(va);
  IIODictionary::~IIODictionary(va1);
  _Unwind_Resume(a1);
}

uint64_t HEIFReadPlugin::copyISOGainMapDictionary(uint64_t a1, uint64_t a2, uint64_t a3, const __CFDictionary **a4)
{
  v20 = 0;
  if ((gIIODebugFlags & 0x300000) != 0)
  {
    ImageIOLog("☀️  %s\n", "copyISOGainMapDictionary");
  }

  v17 = 0;
  v18 = 0;
  v19 = 0;
  IIODictionary::IIODictionary(&v17);
  v14 = 0;
  v15 = 0;
  v16 = 0;
  IIODictionary::IIODictionary(&v14);
  IIONumber::IIONumber(v12, 6);
  IIODictionary::setObjectForKey(&v14, value, *gIIO_kCMPhotoDecompressionOption_DecodeToHDROutputMode);
  IIONumber::~IIONumber(v12);
  IIODictionary::setObjectForKey(&v14, *MEMORY[0x1E695E4D0], *gIIO_kCMPhotoDecompressionOption_DecodeToHDROutputDoNotDecodeBaselayer);
  IIODictionary::setObjectForKey(&v17, v15, *gIIO_kCMPhotoDecompressionOption_DecodeToHDROutputOptions);
  HEIFReadPlugin::updateHardwareDecodeOptions(a1, &v17, a4);
  v7 = gFunc_CMPhotoDecompressionContainerCreateImageForIndex(a2, *(a1 + 532), v18, 5, &v20);
  v8 = v7;
  if (v7)
  {
    v9 = IIOCMErrorString(v7);
    LogError("copyISOGainMapDictionary", 1973, "*** CMPhotoDecompressionContainerCreateImageForIndex  err = %s [%d]\n", v9, v8);
    ImageIODebugOptionsDictionary(v18);
  }

  v10 = v20;
  IIODictionary::~IIODictionary(&v14);
  IIODictionary::~IIODictionary(&v17);
  return v10;
}

void sub_186084F5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  IIONumber::~IIONumber(va);
  IIODictionary::~IIODictionary(va1);
  IIODictionary::~IIODictionary(va2);
  _Unwind_Resume(a1);
}

__CFDictionary *HEIFReadPlugin::copyHDRGainMapDictionary(uint64_t a1, uint64_t a2, GlobalHEIFInfo *this, uint64_t a4)
{
  HEIFMainImageAtIndex = GlobalHEIFInfo::getHEIFMainImageAtIndex(this, *(a1 + 532));
  NumberOfAuxImages = HEIFMainImage::getNumberOfAuxImages(HEIFMainImageAtIndex);
  v9 = *gIIO_kCMPhotoAuxiliaryImageTypeURN_HDRGainMap;
  cf = 0uLL;
  if ((gIIODebugFlags & 0x300000) != 0)
  {
    ImageIOLog("☀️  %s\n", "copyHDRGainMapDictionary");
  }

  if (NumberOfAuxImages)
  {
    v10 = 0;
    v11 = NumberOfAuxImages;
    while (1)
    {
      HEIFAuxImageAtIndex = HEIFMainImage::getHEIFAuxImageAtIndex(HEIFMainImageAtIndex, v10);
      if (HEIFAuxImage::auxiliaryType(HEIFAuxImageAtIndex) == 4)
      {
        Size = IIOImageWriteSession::getSize(HEIFAuxImageAtIndex);
        if (!v9 || !Size)
        {
          goto LABEL_13;
        }

        if (CFStringCompare(v9, Size, 0) == kCFCompareEqualTo)
        {
          break;
        }
      }

      if (v11 == ++v10)
      {
        goto LABEL_15;
      }
    }

    AuxiliaryImageForIndex = gFunc_CMPhotoDecompressionContainerCreateAuxiliaryImageForIndex(a2, *(a1 + 532), v10, *(a4 + 8), 2, &cf + 8);
    if (AuxiliaryImageForIndex)
    {
      IIOCMErrorString(AuxiliaryImageForIndex);
      _cg_jpeg_mem_term("copyHDRGainMapDictionary", 2016, "*** CMPhotoDecompressionContainerCreateAuxiliaryImageForIndex[%d]  err = %s [%d]\n");
      goto LABEL_15;
    }

LABEL_13:
    v15 = gFunc_CMPhotoDecompressionContainerCopyAuxiliaryImageMetadataForIndexWithOptions(a2, *(a1 + 532), v10, 0, &cf);
    if (v15)
    {
      IIOCMErrorString(v15);
      _cg_jpeg_mem_term("copyHDRGainMapDictionary", 2025, "*** CMPhotoDecompressionContainerCopyAuxiliaryImageMetadataForIndexWithOptions[%d]  err = %s [%d]\n");
    }
  }

LABEL_15:
  if (cf == 0)
  {
    return 0;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v17 = Mutable;
  if (*(&cf + 1))
  {
    CFDictionarySetValue(Mutable, *gIIO_kCMPhotoDecompressionContainerConstituent_FlexRangeGainMap, *(&cf + 1));
    gFunc_CVPixelBufferRelease(*(&cf + 1));
  }

  if (cf)
  {
    CFDictionarySetValue(v17, *gIIO_kCMPhotoDecompressionContainerConstituent_FlexRangeMetadata, cf);
    CFRelease(cf);
  }

  return v17;
}

uint64_t HEIFReadPlugin::createFlexGTCInfo(HEIFReadPlugin *this, IIODictionary *a2, const __CFDictionary **a3, const __CFDictionary **a4)
{
  IIO_LoadHEIFSymbols();
  v39 = 0;
  if ((gIIODebugFlags & 0x300000) != 0)
  {
    ImageIOLog("☀️  %s\n", "createFlexGTCInfo");
    v8 = gIIODebugFlags;
    v10 = this + 192;
    v9 = *(this + 192);
    v11 = this + 520;
    v12 = *(this + 520);
    *(this + 520) = 1;
    *(this + 192) = 0;
    if ((*&v8 & 0x300000) != 0)
    {
      ImageIOLog("☀️  temp setting: _computeHDRStats to false   [%p]\n", this);
    }
  }

  else
  {
    v10 = this + 192;
    v9 = *(this + 192);
    v11 = this + 520;
    v12 = *(this + 520);
    *(this + 520) = 1;
    *(this + 192) = 0;
  }

  v38 = 0;
  if (IIORestrictedDecodingEnabledFlag())
  {
    goto LABEL_36;
  }

  FlexGTCInfo = (*(*this + 224))(this, 0, *(a2 + 1), &v38, &v39);
  if (!v38)
  {
    goto LABEL_36;
  }

  if ((gIIODebugFlags & 0x2000000) != 0)
  {
    LogSurfaceFormat(v38, "inputSurface", "createFlexGTCInfo", 2080);
  }

  if (v39)
  {
    cf = 0;
    value = 0;
    v35 = 0;
    CFDictionaryGetValueIfPresent(v39, *gIIO_kCMPhotoDecompressionContainerConstituent_FlexRangeGainMap, &value);
    CFDictionaryGetValueIfPresent(v39, *gIIO_kCMPhotoDecompressionContainerConstituent_FlexRangeMetadata, &cf);
    if (cf)
    {
      v14 = CFGetTypeID(cf);
      if (v14 == CFDictionaryGetTypeID())
      {
        CGImageCreateFlexRangeMetadata(cf, &v35);
        v15 = v35;
      }

      else
      {
        v15 = CFRetain(cf);
        v35 = v15;
      }

      IIODictionary::setObjectForKey(a2, v15, @"kCGImageAuxiliaryDataInfoMetadata");
      CFRelease(v35);
    }

    v16 = *(this + 7);
    if (v16 && (ObjectForKey = IIODictionary::getObjectForKey(v16, @"{MakerApple}")) != 0)
    {
      IIODictionary::setObjectForKey(a2, ObjectForKey, @"{MakerApple}");
    }

    else
    {
      v32 = 0;
      v33 = 0;
      v34 = 0;
      IIODictionary::IIODictionary(&v32);
      IIONumber::IIONumber(v31, *(this + 134));
      IIODictionary::setObjectForKey(&v32, v31, @"33");
      IIONumber::~IIONumber(v31);
      IIONumber::IIONumber(v31, *(this + 135));
      IIODictionary::setObjectForKey(&v32, v31, @"48");
      IIONumber::~IIONumber(v31);
      IIODictionary::setObjectForKey(a2, v33, @"{MakerApple}");
      IIODictionary::~IIODictionary(&v32);
    }

    if ((gIIODebugFlags & 0x300000) != 0)
    {
      ImageIOLog("☀️  'IIOCallCreateFlexGTCInfo (didCalculateFlexGTC: %d)'\n", *(this + 379));
    }

    FlexGTCInfo = IIOCallCreateFlexGTCInfo(v38, 0, value, a3, *(a2 + 1));
    if (!FlexGTCInfo)
    {
      *(this + 379) = 1;
    }

    if (a4)
    {
      if ((gIIODebugFlags & 0x300000) != 0)
      {
        ImageIOLog("☀️  'IIOCallComputeHDRStats'   (didComputeHDRStats: %d)\n", *(this + 360));
      }

      v19 = value;
      v18 = v38;
      v20 = *(a2 + 1);
LABEL_29:
      FlexGTCInfo = IIOCallComputeHDRStats(v18, 0, v19, a4, v20);
      if (!FlexGTCInfo)
      {
        *(this + 360) = 1;
      }
    }
  }

  else
  {
    if (a3)
    {
      _cg_jpeg_mem_term("createFlexGTCInfo", 2136, "*** ERROR: createFlexGTCInfo - failed to extract gainMap\n");
      FlexGTCInfo = 4294967246;
      goto LABEL_35;
    }

    if (a4)
    {
      if ((gIIODebugFlags & 0x300000) != 0)
      {
        ImageIOLog("☀️  'IIOCallComputeHDRStats'   (didComputeHDRStats: %d)\n", *(this + 360));
      }

      v18 = v38;
      v20 = *(a2 + 1);
      v19 = 0;
      goto LABEL_29;
    }
  }

LABEL_35:
  CFRelease(v38);
  if (v38)
  {
    goto LABEL_64;
  }

LABEL_36:
  value = 0;
  FlexGTCInfo = (*(*this + 232))(this, 0, *(a2 + 1), &value, &v39);
  v21 = value;
  if (!value)
  {
    goto LABEL_64;
  }

  if (v39)
  {
    v35 = 0;
    cf = 0;
    v30 = 0;
    CFDictionaryGetValueIfPresent(v39, *gIIO_kCMPhotoDecompressionContainerConstituent_FlexRangeGainMap, &cf);
    CFDictionaryGetValueIfPresent(v39, *gIIO_kCMPhotoDecompressionContainerConstituent_FlexRangeMetadata, &v35);
    if (v35)
    {
      v22 = CFGetTypeID(v35);
      if (v22 == CFDictionaryGetTypeID())
      {
        CGImageCreateFlexRangeMetadata(v35, &v30);
        v23 = v30;
      }

      else
      {
        v23 = CFRetain(v35);
        v30 = v23;
      }

      IIODictionary::setObjectForKey(a2, v23, @"kCGImageAuxiliaryDataInfoMetadata");
      CFRelease(v30);
    }

    v24 = *(this + 7);
    if (v24 && (v25 = IIODictionary::getObjectForKey(v24, @"{MakerApple}")) != 0)
    {
      IIODictionary::setObjectForKey(a2, v25, @"{MakerApple}");
    }

    else
    {
      v32 = 0;
      v33 = 0;
      v34 = 0;
      IIODictionary::IIODictionary(&v32);
      IIONumber::IIONumber(v31, *(this + 134));
      IIODictionary::setObjectForKey(&v32, v31, @"33");
      IIONumber::~IIONumber(v31);
      IIONumber::IIONumber(v31, *(this + 135));
      IIODictionary::setObjectForKey(&v32, v31, @"48");
      IIONumber::~IIONumber(v31);
      IIODictionary::setObjectForKey(a2, v33, @"{MakerApple}");
      IIODictionary::~IIODictionary(&v32);
    }

    if ((gIIODebugFlags & 0x300000) != 0)
    {
      ImageIOLog("☀️  'IIOCallCreateFlexGTCInfo (didCalculateFlexGTC: %d)'\n", *(this + 379));
    }

    FlexGTCInfo = IIOCallCreateFlexGTCInfo(0, value, cf, a3, *(a2 + 1));
    if (!FlexGTCInfo)
    {
      *(this + 379) = 1;
    }

    if (!a4)
    {
      goto LABEL_63;
    }

    if ((gIIODebugFlags & 0x300000) != 0)
    {
      ImageIOLog("☀️  'IIOCallComputeHDRStats'   (didComputeHDRStats: %d)\n", *(this + 360));
    }

    v26 = cf;
    v21 = value;
    v27 = *(a2 + 1);
    goto LABEL_57;
  }

  if (a3)
  {
    _cg_jpeg_mem_term("createFlexGTCInfo", 2211, "*** ERROR: createFlexGTCInfo - failed to extract gainMap\n");
    FlexGTCInfo = 4294967246;
  }

  else if (a4)
  {
    if ((gIIODebugFlags & 0x300000) != 0)
    {
      ImageIOLog("☀️  'IIOCallComputeHDRStats'   (didComputeHDRStats: %d)\n", *(this + 360));
      v21 = value;
    }

    v27 = *(a2 + 1);
    v26 = 0;
LABEL_57:
    FlexGTCInfo = IIOCallComputeHDRStats(0, v21, v26, a4, v27);
    if (!FlexGTCInfo)
    {
      *(this + 360) = 1;
    }
  }

LABEL_63:
  gFunc_CVPixelBufferRelease(value);
LABEL_64:
  if (v39)
  {
    CFRelease(v39);
  }

  *v11 = v12;
  *v10 = v9;
  if ((gIIODebugFlags & 0x300000) != 0)
  {
    v28 = "false";
    if (v9)
    {
      v28 = "true";
    }

    ImageIOLog("☀️  re-setting: _computeHDRStats to %s   [%p]\n", v28, this);
  }

  return FlexGTCInfo;
}

void sub_186085874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

uint64_t HEIFReadPlugin::copyImageBlockSetImp(uint64_t a1, const void *a2, const void *a3, __CFDictionary *a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v156[0] = 0;
  memset(v155, 0, sizeof(v155));
  IIODictionary::IIODictionary(v155, a4);
  v19 = IIORestrictedDecodingEnabledFlag();
  if (!*(a1 + 24))
  {
    v29 = 0;
    goto LABEL_203;
  }

  v20 = v19;
  IIO_LoadHEIFSymbols();
  v141 = IIOImageReadSession::globalInfoForType(*(a1 + 24), 1212500294);
  if (GlobalHEIFInfo::hasHEIFSequence(v141))
  {
    v140 = GlobalHEIFInfo::useHEIFSequence(v141);
  }

  else
  {
    v140 = 0;
  }

  IIOReadPlugin::debugCopyBlockSet(a1, a3, a5, a6, a7, a8, a9, a10);
  v21 = MEMORY[0x1E695F2A0];
  if ((*(a1 + 520) & 1) != 0 || *(a1 + 521) == 1)
  {
    *(a1 + 371) = 1;
    v22 = *v21;
  }

  else
  {
    v37 = *(a1 + 440);
    v39 = v37 != 1 && a8 == a10 && a7 == a9;
    v22 = *MEMORY[0x1E695F2A0];
    if (!v39 && v37 != 1 && (IIODictionary::containsKey(v155, *MEMORY[0x1E695F2A0]) & 1) == 0 && (*(a1 + 527) & 1) == 0)
    {
      HEIFMainImageAtIndex = GlobalHEIFInfo::getHEIFMainImageAtIndex(v141, *(a1 + 532));
      if ((*(a1 + 526) & 1) == 0 && *(a1 + 332) <= 1u)
      {
        v42 = HEIFMainImageAtIndex;
        TileWidth = HEIFMainImage::getTileWidth(HEIFMainImageAtIndex);
        TileLength = HEIFMainImage::getTileLength(v42);
        if (TileWidth)
        {
          if (TileLength)
          {
            if (TileWidth != *(a1 + 308))
            {
              v46 = *(a1 + 312);
              if (TileLength != v46 && *(a1 + 316) * v46 >= 0x1000001)
              {
                LODWORD(v146) = 0;
                v47 = *(a1 + 316);
                *&dest.data = *(a1 + 300);
                *&dest.width = v47;
                if ((gIIODebugFlags & 0x30000) != 0)
                {
                  ImageIOLog("    decoding multi tiles: {%g,%g,%g,%g} {%g,%g} - subsample: %d\n", a5, a6, a7, a8, a9, a10, *(a1 + 332));
                }

                v29 = HEIFReadPlugin::copyImageBlockSetTiles(a1, a2, a3, v155, TileWidth, a5, a6, a7, a8, v45, &v146);
                v48 = *&dest.width;
                *(a1 + 300) = *&dest.data;
                *(a1 + 316) = v48;
                if (v29 || v146 == 1)
                {
                  goto LABEL_203;
                }

                _cg_jpeg_mem_term("copyImageBlockSetImp", 2313, "*** ERROR: tiled decoding failed - falling back to standard decode\n");
              }
            }
          }
        }
      }
    }
  }

  if (!IIODictionary::containsKey(v155, v22) || (*(a1 + 520) & 1) != 0)
  {
LABEL_24:
    if ((gIIODebugFlags & 0x30000) != 0)
    {
      ImageIOLog("    _blockCount = %d\n", *(a1 + 104));
    }

    v142 = *(a1 + 112);
    IIOReadPlugin::debugCopyBlockSet(a1, a3, a5, a6, a7, a8, a9, a10);
    BlockArray = IIOReadPlugin::allocateBlockArray(a1, *(a1 + 104));
    if (IIOReadPlugin::getCachedBlocks(a1))
    {
      v33 = *(a1 + 24);
      v137 = a3;
      v135 = v20;
      if (v33)
      {
        v34 = IIOImageReadSession::mapData(v33);
      }

      else
      {
        v34 = 0;
      }

      v49 = *(a1 + 112);
      if (v49 < *(a1 + 116))
      {
        __dst = 0;
        v35 = 0;
        v133 = (a1 + 308);
        v134 = 1;
        v138 = *MEMORY[0x1E695E498];
        v139 = *MEMORY[0x1E695E480];
        value = *MEMORY[0x1E695E4C0];
        while (1)
        {
          if (*(*(a1 + 96) + 8 * (v49 - v142)))
          {
            _cg_jpeg_mem_term("copyImageBlockSetImp", 2371, "*** _blockArray[%d] was cached - and already allocated\n", v49 - v142);
          }

          v50 = *(a1 + 312);
          v51 = (v50 * v49);
          LODWORD(a8) = *(a1 + 308);
          LODWORD(v32) = *(a1 + 280);
          v52 = *&v32;
          v53 = v50 + v51 <= v52 ? v50 : v52 - (v50 * v49);
          v54 = *(a1 + 316);
          v153 = 0;
          v55 = IIOCreateCMPhotoDecompressionSession(&v153);
          v56 = v55;
          if (!v55)
          {
            break;
          }

          v57 = IIOCMErrorString(v55);
          _cg_jpeg_mem_term("copyImageBlockSetImp", 2400, "*** CMPhotoDecompressionSessionCreate  err = %s [%d]\n", v57, v56);
LABEL_65:
          a8 = *&a8;
          v157.origin.x = 0.0;
          v157.origin.y = v51;
          v157.size.width = a8;
          v157.size.height = v53;
          *(*(a1 + 96) + 8 * (v49 - v142)) = IIOReadPlugin::createImageBlock(a1, __dst, v156[0], v157, *(a1 + 316), *(a1 + 371));
          v58 = CGRectEqualToRect(*(a1 + 120), *MEMORY[0x1E695F050]);
          v59 = 0;
          if (!v58)
          {
            v158.origin.x = 0.0;
            v158.origin.y = v51;
            v158.size.width = a8;
            v158.size.height = v53;
            *(&v32 - 2) = CGRectUnion(*(a1 + 120), v158);
            v51 = v60;
            a8 = v32;
            v53 = v61;
          }

          *(a1 + 120) = v59;
          *(a1 + 128) = v51;
          *(a1 + 136) = a8;
          *(a1 + 144) = v53;
          if (++v49 >= *(a1 + 116))
          {
            a3 = v137;
            v36 = v134;
            if (v56)
            {
              goto LABEL_190;
            }

LABEL_184:
            v29 = 0;
            v126 = *(a1 + 104);
            if (v126 && ((a3 != 0) & v36) != 0)
            {
              v29 = IIOReadPlugin::imageBlockSetCreate(a1, a3, v126, *(a1 + 136), *(a1 + 144), *(a1 + 120), *(a1 + 128), *(a1 + 136), *(a1 + 144), *(a1 + 96), a2);
            }

            if (!v35)
            {
LABEL_192:
              if (a3)
              {
                goto LABEL_193;
              }

              goto LABEL_194;
            }

LABEL_191:
            CFRelease(v35);
            goto LABEL_192;
          }
        }

        cf = 0;
        v152 = 0;
        v150 = 0;
        v149 = 0;
        Size = IIOImageReadSession::getSize(*(a1 + 24));
        v63 = IIOImageReadSession::retainBytePointer(*(a1 + 24), &v149, 1);
        v64 = v63;
        if (!v63)
        {
          LogError("copyImageBlockSetImp", 2416, "*** ERROR: retainBytePointer failed\n");
          a3 = v137;
          goto LABEL_190;
        }

        v65 = *(a1 + 488);
        if (v65)
        {
          if (*(a1 + 496))
          {
            Size = *(a1 + 496);
          }

          else
          {
            v65 = 0;
          }

          v64 = v63 + v65;
        }

        if (!v35)
        {
          v35 = CFDataCreateWithBytesNoCopy(v139, v64, Size, v138);
          if (!v35)
          {
            v56 = 0;
            goto LABEL_178;
          }
        }

        v66 = gFunc_CMPhotoDecompressionSessionCreateContainer(v153, 0, v35, &v150, &v152);
        v56 = v66;
        if (v66)
        {
          v67 = IIOCMErrorString(v66);
          _cg_jpeg_mem_term("copyImageBlockSetImp", 2436, "*** CMPhotoDecompressionSessionCreateContainer  err = %s [%d]\n", v67, v56);
LABEL_178:
          CFRelease(v153);
          if (v149)
          {
            v125 = *(a1 + 24);
            if (v125)
            {
              IIOImageReadSession::releaseBytePointer(v125, v149);
            }
          }

          goto LABEL_65;
        }

        *(a1 + 516) = v150;
        v146 = 0;
        v147 = 0;
        v148 = 0;
        IIODictionary::IIODictionary(&v146);
        HEIFReadPlugin::updateHardwareDecodeOptions(a1, &v146, v155);
        data = 0;
        if (*(a1 + 521) == 1)
        {
          v69 = GlobalHEIFInfo::getHEIFMainImageAtIndex(v141, *(a1 + 532));
          v70 = HEIFMainImage::bitDepth(v69);
          DecodePixelFormatForBitDepth = HEIFReadPlugin::getDecodePixelFormatForBitDepth(a1, v70);
        }

        else if (*(a1 + 520) == 1)
        {
          DecodePixelFormatForBitDepth = HEIFReadPlugin::getDecodePixelFormatForBitDepth(a1, 10);
        }

        else
        {
          DecodePixelFormatForBitDepth = HEIFReadPlugin::getPixelFormatForBitDepth(a1, *(a1 + 320), v68);
        }

        IIONumber::IIONumber(&dest, DecodePixelFormatForBitDepth);
        IIODictionary::setObjectForKey(&v146, &dest.data, *gIIO_kCMPhotoDecompressionOption_OutputPixelFormat);
        IIONumber::~IIONumber(&dest);
        IIODictionary::setObjectForKey(&v146, value, *gIIO_kCMPhotoDecompressionOption_ApplyTransform);
        HEIFReadPlugin::updateCreateImageOptions(a1, &v146, *(a1 + 48));
        if (v140)
        {
          v72 = gFunc_CMPhotoDecompressionContainerCreateSequenceContainer(v152, 0, 0, &cf);
          v73 = v72;
          if (v72)
          {
            v74 = IIOCMErrorString(v72);
            _cg_jpeg_mem_term("copyImageBlockSetImp", 2479, "*** CMPhotoDecompressionSessionCreateContainer[sequence] err = %s [%d]\n", v74, v73);
          }

          if (*(a1 + 232) < 2u || (*(a1 + 526) & 1) != 0)
          {
            v75 = gFunc_CMPhotoDecompressionContainerCreateImageForIndex(cf, *(a1 + 532), v147, 2, &data);
            v56 = v75;
            if (v75)
            {
              *&v77 = _cg_jpeg_mem_term("copyImageBlockSetImp", 2496, "CMPhotoDecompressionContainerCreateImageForIndex(%d)  err=%d\n", *(a1 + 532), v75).n128_u64[0];
              goto LABEL_92;
            }

            goto LABEL_101;
          }

          p_cf = &cf;
        }

        else
        {
          if (*(a1 + 232) < 2u || *(a1 + 526) == 1)
          {
            v78 = gFunc_CMPhotoDecompressionContainerCreateImageForIndex(v152, *(a1 + 532), v147, 2, &data);
            goto LABEL_100;
          }

          p_cf = &v152;
        }

        v78 = gFunc_CMPhotoDecompressionContainerCreateThumbnailImageForIndex(*p_cf, *(a1 + 532), 0, v147, 2, &data);
LABEL_100:
        v56 = v78;
        if (v78)
        {
LABEL_92:
          if (v56 == -15470)
          {
            LogError("copyImageBlockSetImp", 2548, "*** ERROR: CMPhotoDecompressionContainerCreateImageForIndex failed (kCMPhotoError_XPCError) - mediaserverd is not running? - no way to decode a HEIC\n", v77);
            v134 = 0;
            v56 = -15470;
          }

LABEL_175:
          if (cf)
          {
            CFRelease(cf);
          }

          CFRelease(v152);
          IIODictionary::~IIODictionary(&v146);
          goto LABEL_178;
        }

LABEL_101:
        if (*(a1 + 520) == 1)
        {
          if ((gIIODebugFlags & 0x300000) != 0)
          {
            ImageIOLog("☀️  _requestedApplyGainMap --> createSurfaceWithGainMapApplied\n");
          }

          IOSurface = gFunc_CVPixelBufferGetIOSurface(data);
          v82 = IOSurface;
          if ((gIIODebugFlags & 0x2000000) != 0)
          {
            LogSurfaceFormat(IOSurface, "surface", "copyImageBlockSetImp", 2570);
          }

          PixelFormatForBitDepth = HEIFReadPlugin::getPixelFormatForBitDepth(a1, *(a1 + 320), v81);
          if (PixelFormatForBitDepth == 1815491698)
          {
            if (*(a1 + 329))
            {
              PixelFormatForBitDepth = 1380411457;
            }

            else
            {
              PixelFormatForBitDepth = 1815491698;
            }
          }

          *(a1 + 464) = PixelFormatForBitDepth;
          if (v135)
          {
            PixelBufferWithGainMapApplied = HEIFReadPlugin::createPixelBufferWithGainMapApplied(a1, v152, v84, v141, data);
            if (PixelBufferWithGainMapApplied)
            {
              goto LABEL_116;
            }

            goto LABEL_129;
          }

          SurfaceWithGainMapApplied = HEIFReadPlugin::createSurfaceWithGainMapApplied(a1, v152, v84, v141, v82);
          v91 = SurfaceWithGainMapApplied;
          if (!SurfaceWithGainMapApplied)
          {
            goto LABEL_129;
          }

          if ((gIIODebugFlags & 0x2000000) != 0)
          {
            LogSurfaceFormat(SurfaceWithGainMapApplied, "outputSurface", "copyImageBlockSetImp", 2594);
          }
        }

        else
        {
          if (*(a1 + 521) != 1)
          {
            goto LABEL_129;
          }

          if (v135)
          {
            v86 = HEIFReadPlugin::getPixelFormatForBitDepth(a1, *(a1 + 320), v76);
            PixelBufferWithGainMapApplied = HEIFReadPlugin::createPixelBufferWithToneMapApplied(v86, v87, v88, v89, data, v86, *(a1 + 544), *(a1 + 525));
            if (PixelBufferWithGainMapApplied)
            {
LABEL_116:
              gFunc_CVPixelBufferRelease(data);
              data = PixelBufferWithGainMapApplied;
            }

LABEL_129:
            __dst = _ImageIO_Malloc(v54 * v50, *(a1 + 416), v156, kImageMalloc_HEIF_Data[0], 0, 0);
            if (!__dst)
            {
              _cg_jpeg_mem_term("copyImageBlockSetImp", 2643, "failed to alloc imageData (%ld bytes)\n", v54 * v50);
              IIODictionary::~IIODictionary(&v146);
              a3 = v137;
              goto LABEL_190;
            }

            gFunc_CVPixelBufferLockBaseAddress(data, 0);
            IsPlanar = gFunc_CVPixelBufferIsPlanar(data);
            PixelFormatType = gFunc_CVPixelBufferGetPixelFormatType(data);
            v102 = PixelFormatType;
            if (IsPlanar)
            {
              v103 = PixelFormatType >> 24;
              if ((PixelFormatType >> 24) <= 0x7F)
              {
                v104 = *(MEMORY[0x1E69E9830] + 4 * v103 + 60) & 0x40000;
              }

              else
              {
                v104 = __maskrune(PixelFormatType >> 24, 0x40000uLL);
              }

              if (v104)
              {
                v116 = v103;
              }

              else
              {
                v116 = 46;
              }

              v117 = (v102 << 8) >> 24;
              if (v117 <= 0x7F)
              {
                v118 = *(MEMORY[0x1E69E9830] + 4 * v117 + 60) & 0x40000;
              }

              else
              {
                v118 = __maskrune((v102 << 8) >> 24, 0x40000uLL);
              }

              if (v118)
              {
                v119 = v117;
              }

              else
              {
                v119 = 46;
              }

              v120 = v102 >> 8;
              if (v120 <= 0x7F)
              {
                v121 = *(MEMORY[0x1E69E9830] + 4 * v120 + 60) & 0x40000;
              }

              else
              {
                v121 = __maskrune(v102 >> 8, 0x40000uLL);
              }

              v102 = v102;
              if (v102 <= 0x7F)
              {
                v122 = *(MEMORY[0x1E69E9830] + 4 * v102 + 60) & 0x40000;
              }

              else
              {
                v122 = __maskrune(v102, 0x40000uLL);
              }

              if (v121)
              {
                v123 = v120;
              }

              else
              {
                v123 = 46;
              }

              if (v122)
              {
                v124 = v102;
              }

              else
              {
                v124 = 46;
              }

              LogError("copyImageBlockSetImp", 2654, "*** 'BGRA' request returned planar data - not handled '%c%c%c%c'\n", v116, v119, v123, v124);
            }

            else
            {
              BaseAddress = gFunc_CVPixelBufferGetBaseAddress(data);
              v132 = v102;
              BytesPerRow = gFunc_CVPixelBufferGetBytesPerRow(data);
              v130 = v35;
              v131 = v34;
              Height = gFunc_CVPixelBufferGetHeight(data);
              v108 = *(a1 + 312);
              v109 = *(a1 + 316);
              if (BytesPerRow >= v109)
              {
                v110 = *(a1 + 316);
              }

              else
              {
                v110 = BytesPerRow;
              }

              if (v108 && Height)
              {
                v111 = 0;
                if (v108 >= Height)
                {
                  v112 = Height;
                }

                else
                {
                  v112 = *(a1 + 312);
                }

                v113 = __dst;
                do
                {
                  memcpy(v113, BaseAddress, v110);
                  v113 += v109;
                  BaseAddress += BytesPerRow;
                  ++v111;
                }

                while (v111 < v112);
              }

              v34 = v131;
              v35 = v130;
              if (v132 == 1111970369)
              {
                if (!*(a1 + 437))
                {
                  goto LABEL_149;
                }

                if ((gIIODebugFlags & 0x30000) != 0)
                {
                  ImageIOLog("    vImagePermuteChannels_ARGB8888:   BGRX -> RGBX\n");
                }

                dest.data = __dst;
                v114.i64[0] = *v133;
                v114.i64[1] = HIDWORD(*v133);
                *&dest.height = vextq_s8(v114, v114, 8uLL);
                dest.rowBytes = *(a1 + 316);
                *permuteMap = 50331906;
                vImagePermuteChannels_ARGB8888(&dest, &dest, permuteMap, 0x10u);
                if (!*(a1 + 437))
                {
LABEL_149:
                  if (*(a1 + 528) == 1 && (*(a1 + 529) & 1) == 0)
                  {
                    dest.data = __dst;
                    v115.i64[0] = *v133;
                    v115.i64[1] = HIDWORD(*v133);
                    *&dest.height = vextq_s8(v115, v115, 8uLL);
                    dest.rowBytes = *(a1 + 316);
                    vImagePremultiplyData_RGBA8888(&dest, &dest, 0x10u);
                  }
                }
              }
            }

            gFunc_CVPixelBufferUnlockBaseAddress(data, 0);
            gFunc_CVPixelBufferRelease(data);
            v56 = 0;
            goto LABEL_175;
          }

          if ((gIIODebugFlags & 0x300000) != 0)
          {
            ImageIOLog("☀️  _requestedApplyToneMap --> createSurfaceWithToneMapApplied\n");
          }

          v92 = gFunc_CVPixelBufferGetIOSurface(data);
          v94 = v92;
          if ((gIIODebugFlags & 0x2000000) != 0)
          {
            LogSurfaceFormat(v92, "surface", "copyImageBlockSetImp", 2622);
          }

          v95 = HEIFReadPlugin::getPixelFormatForBitDepth(a1, *(a1 + 320), v93);
          SurfaceWithToneMapApplied = HEIFReadPlugin::createSurfaceWithToneMapApplied(v95, v96, v97, v98, v94, v95, *(a1 + 544), *(a1 + 525));
          v91 = SurfaceWithToneMapApplied;
          if (!SurfaceWithToneMapApplied)
          {
            goto LABEL_129;
          }

          if ((gIIODebugFlags & 0x2000000) != 0)
          {
            LogSurfaceFormat(SurfaceWithToneMapApplied, "outputSurface", "copyImageBlockSetImp", 2628);
          }
        }

        dest.data = 0;
        gFunc_CVPixelBufferCreateWithIOSurface(0, v91, 0, &dest);
        CFRelease(v91);
        gFunc_CVPixelBufferRelease(data);
        data = dest.data;
        goto LABEL_129;
      }

      v35 = 0;
      v36 = 1;
      if (!BlockArray)
      {
        goto LABEL_184;
      }
    }

    else
    {
      v35 = 0;
      v34 = 0;
      v36 = 1;
      if (!BlockArray)
      {
        goto LABEL_184;
      }
    }

LABEL_190:
    v29 = 0;
    if (!v35)
    {
      goto LABEL_192;
    }

    goto LABEL_191;
  }

  if ((gIIODebugFlags & 0x30000) != 0)
  {
    ImageIOLog("    got 'kCGImageBlockTileRequest'\n");
  }

  Uint32ForKey = IIODictionary::getUint32ForKey(v155, v22);
  if (Uint32ForKey - 1 >= 0xFF)
  {
    v25 = Uint32ForKey;
  }

  else
  {
    v25 = 256;
  }

  v26 = (a1 + 300);
  if (v25 > *(a1 + 308) || v25 > *(a1 + 312))
  {
    v27 = *(a1 + 316);
    *&dest.data = *v26;
    *&dest.width = v27;
    LODWORD(v146) = 0;
LABEL_18:
    if ((gIIODebugFlags & 0x30000) != 0)
    {
      ImageIOLog("    decoding single tile: {%g,%g,%g,%g} {%g,%g}\n", a5, a6, a7, a8, a9, a10);
    }

    v28 = HEIFReadPlugin::copyImageBlockSetSingleTile(a1, a2, a3, v155, &v146, a5, a6, a7, a8);
    goto LABEL_21;
  }

  v129 = *(a1 + 316);
  *&dest.data = *v26;
  *&dest.width = v129;
  LODWORD(v146) = 0;
  if (!v25)
  {
    goto LABEL_18;
  }

  if ((gIIODebugFlags & 0x30000) != 0)
  {
    ImageIOLog("    decoding multi tiles [%d]: {%g,%g,%g,%g} {%g,%g}\n", v25, a5, a6, a7, a8, a9, a10);
  }

  v28 = HEIFReadPlugin::copyImageBlockSetTiles(a1, a2, a3, v155, v25, a5, a6, a7, a8, v24, &v146);
LABEL_21:
  v29 = v28;
  v30 = *&dest.width;
  *v26 = *&dest.data;
  *(a1 + 316) = v30;
  if (!v28 && v146 != 1)
  {
    *(a1 + 104) = 1;
    goto LABEL_24;
  }

LABEL_203:
  v34 = 0;
  if (a3)
  {
LABEL_193:
    IIOReadPlugin::freeBlockArray(a1);
  }

LABEL_194:
  if (v34)
  {
    v127 = *(a1 + 24);
    if (v127)
    {
      IIOImageReadSession::unmapData(v127);
    }
  }

  IIODictionary::~IIODictionary(v155);
  return v29;
}