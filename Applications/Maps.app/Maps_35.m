uint64_t sub_1004016C8(char *__dst, char *__src, char *a3, char *a4, uint64_t (*a5)(__int128 *, __int128 *))
{
  v86 = a5;
  v6 = a4;
  v7 = a3;
  v8 = __src;
  v9 = __src - __dst;
  v10 = (__src - __dst) / 88;
  v11 = a3 - __src;
  v12 = (a3 - __src) / 88;
  if (v10 < v12)
  {
    v13 = __dst;
    if (a4 != __dst || &__dst[88 * v10] <= a4)
    {
      memmove(a4, __dst, 88 * v10);
    }

    v14 = &v6[88 * v10];
    if (v9 < 88)
    {
LABEL_6:
      v8 = v13;
      goto LABEL_48;
    }

    while (1)
    {
      if (v8 >= v7)
      {
        goto LABEL_6;
      }

      v17 = *(v8 + 1);
      v74 = *v8;
      v75 = v17;
      v18 = *(v8 + 2);
      v19 = *(v8 + 3);
      v20 = *(v8 + 4);
      v79 = *(v8 + 10);
      v77 = v19;
      v78 = v20;
      v76 = v18;
      memmove(&__dsta, v8, 0x58uLL);
      v21 = *(v6 + 1);
      v80 = *v6;
      v81 = v21;
      v22 = *(v6 + 2);
      v23 = *(v6 + 3);
      v24 = *(v6 + 4);
      v85 = *(v6 + 10);
      v83 = v23;
      v84 = v24;
      v82 = v22;
      memmove(&v62, v6, 0x58uLL);
      sub_1001603D8(&v74, &v56);
      sub_1001603D8(&v80, &v56);
      v25 = v86(&__dsta, &v62);
      if (v5)
      {
        v52 = v64;
        v53 = v65;
        v54 = v66;
        v55 = v67;
        v50 = v62;
        v51 = v63;
        sub_100160434(&v50);
        v58 = v70;
        v59 = v71;
        v60 = v72;
        v61 = v73;
        v56 = __dsta;
        v57 = v69;
        sub_100160434(&v56);
        v45 = (v14 - v6) / 88;
        if (v13 < v6 || v13 >= &v6[88 * v45] || v13 != v6)
        {
          v44 = 88 * v45;
          v43 = v13;
          goto LABEL_52;
        }

        return 1;
      }

      v26 = v25;
      v52 = v64;
      v53 = v65;
      v54 = v66;
      v55 = v67;
      v50 = v62;
      v51 = v63;
      sub_100160434(&v50);
      v58 = v70;
      v59 = v71;
      v60 = v72;
      v61 = v73;
      v56 = __dsta;
      v57 = v69;
      sub_100160434(&v56);
      if (v26)
      {
        break;
      }

      v15 = v6;
      v16 = v13 == v6;
      v6 += 88;
      if (!v16)
      {
        goto LABEL_8;
      }

LABEL_9:
      v13 += 88;
      if (v6 >= v14)
      {
        goto LABEL_6;
      }
    }

    v15 = v8;
    v16 = v13 == v8;
    v8 += 88;
    if (v16)
    {
      goto LABEL_9;
    }

LABEL_8:
    memmove(v13, v15, 0x58uLL);
    goto LABEL_9;
  }

  if (a4 != __src || &__src[88 * v12] <= a4)
  {
    memmove(a4, __src, 88 * v12);
  }

  v14 = &v6[88 * v12];
  if (v11 >= 88)
  {
    v27 = v5;
    if (v8 > __dst)
    {
      v28 = -v6;
      while (2)
      {
        v29 = v27;
        v48 = v8;
        v8 -= 88;
        v30 = &v14[v28];
        v7 -= 88;
        v31 = v14;
        while (1)
        {
          v14 = v31;
          v31 -= 88;
          v32 = *(v14 - 72);
          v74 = *(v14 - 88);
          v75 = v32;
          v33 = *(v14 - 56);
          v34 = *(v14 - 40);
          v35 = *(v14 - 24);
          v79 = *(v14 - 1);
          v77 = v34;
          v78 = v35;
          v76 = v33;
          memmove(&__dsta, v31, 0x58uLL);
          v36 = *(v8 + 3);
          v82 = *(v8 + 2);
          v83 = v36;
          v84 = *(v8 + 4);
          v85 = *(v8 + 10);
          v37 = *(v8 + 1);
          v80 = *v8;
          v81 = v37;
          v67 = v85;
          v64 = v82;
          v65 = v36;
          v66 = v84;
          v62 = v80;
          v63 = v37;
          sub_1001603D8(&v74, &v56);
          sub_1001603D8(&v80, &v56);
          v38 = v86(&__dsta, &v62);
          if (v29)
          {
            v52 = v64;
            v53 = v65;
            v54 = v66;
            v55 = v67;
            v50 = v62;
            v51 = v63;
            sub_100160434(&v50);
            v58 = v70;
            v59 = v71;
            v60 = v72;
            v61 = v73;
            v56 = __dsta;
            v57 = v69;
            sub_100160434(&v56);
            v42 = v30 / 88;
            v43 = v48;
            if (v48 < v6 || v48 >= &v6[88 * v42])
            {
              memmove(v48, v6, 88 * v42);
              return 1;
            }

            if (v48 == v6)
            {
              return 1;
            }

            v44 = 88 * v42;
            goto LABEL_52;
          }

          v39 = v38;
          v52 = v64;
          v53 = v65;
          v54 = v66;
          v55 = v67;
          v50 = v62;
          v51 = v63;
          sub_100160434(&v50);
          v58 = v70;
          v59 = v71;
          v60 = v72;
          v61 = v73;
          v56 = __dsta;
          v57 = v69;
          sub_100160434(&v56);
          v40 = v7 + 88;
          if (v39)
          {
            break;
          }

          if (v40 < v14 || v7 >= v14 || v40 != v14)
          {
            memmove(v7, v31, 0x58uLL);
          }

          v30 -= 88;
          v7 -= 88;
          if (v31 <= v6)
          {
            v14 = v31;
            v8 = v48;
            goto LABEL_48;
          }
        }

        if (v40 < v48 || v7 >= v48)
        {
          memmove(v7, v8, 0x58uLL);
          v27 = 0;
          v41 = __dst;
          v28 = -v6;
        }

        else
        {
          v27 = 0;
          v41 = __dst;
          v28 = -v6;
          if (v40 != v48)
          {
            memmove(v7, v8, 0x58uLL);
          }
        }

        if (v14 > v6 && v8 > v41)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_48:
  v46 = (v14 - v6) / 88;
  if (v8 < v6 || v8 >= &v6[88 * v46] || v8 != v6)
  {
    v44 = 88 * v46;
    v43 = v8;
LABEL_52:
    memmove(v43, v6, v44);
  }

  return 1;
}

uint64_t sub_100401CD4(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = *a1 == *a2 && *(a1 + 8) == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (sub_1001EF4E4(*(a1 + 16), v2[2]) & 1) == 0 || ((*(a1 + 32) ^ *(v2 + 32)) & 1) != 0 || ((*(a1 + 48) ^ *(v2 + 48)) & 1) != 0 || (*(a1 + 56) != v2[7] || *(a1 + 64) != v2[8]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || ((*(a1 + 72) ^ *(v2 + 72)) & 1) != 0)
  {
    return 0;
  }

  v5 = *(a1 + 40);
  v6 = (v5 >> 62);
  if (v5 >> 62)
  {
    goto LABEL_276;
  }

  v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_15:
  v8 = v2[5];
  v9 = (v8 >> 62);
  if (v8 >> 62)
  {
    if (v7 != _CocoaArrayWrapper.endIndex.getter())
    {
      return 0;
    }
  }

  else if (v7 != *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return 0;
  }

  if (v6)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v10 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v10)
  {
    return 1;
  }

  v11 = 0;
  v175 = v5 & 0xFFFFFFFFFFFFFF8;
  v176 = v5 & 0xC000000000000001;
  v12 = (v8 & 0xFFFFFFFFFFFFFF8);
  v173 = v8 & 0xC000000000000001;
  v174 = v5 + 32;
  v172 = v8 + 32;
  v161 = v5;
  v162 = (v8 >> 62);
  v165 = v8 & 0xFFFFFFFFFFFFFF8;
  v160 = v10;
  while (1)
  {
    if (v176)
    {
      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v6 = (v11 + 1);
      if (__OFADD__(v11, 1))
      {
        goto LABEL_273;
      }
    }

    else
    {
      if (v11 >= *(v175 + 16))
      {
        goto LABEL_274;
      }

      v14 = *(v174 + 8 * v11);
      swift_unknownObjectRetain();
      v6 = (v11 + 1);
      if (__OFADD__(v11, 1))
      {
LABEL_273:
        __break(1u);
LABEL_274:
        __break(1u);
LABEL_275:
        __break(1u);
LABEL_276:
        v7 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_15;
      }
    }

    if (v9)
    {
      v15 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v15 = v12[2];
    }

    if (v11 == v15)
    {
      swift_unknownObjectRelease();
      return 1;
    }

    v178 = v6;
    if (v173)
    {
      v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v11 >= v12[2])
      {
        goto LABEL_275;
      }

      v16 = *(v172 + 8 * v11);
      swift_unknownObjectRetain();
    }

    v6 = (v14 | v16);
    v17 = v14;
    v18 = v16;
    v2 = v18;
    if (!(v14 | v16))
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      goto LABEL_23;
    }

    if (v17)
    {
      v19 = v16 == 0;
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;
    if (v18)
    {
      v21 = v14 == 0;
    }

    else
    {
      v21 = 0;
    }

    if (v21 || (v20 & 1) != 0 || (v22 = [v17 artworkSourceType], v22 != objc_msgSend(v2, "artworkSourceType")) || (v23 = objc_msgSend(v17, "artworkUseType"), v23 != objc_msgSend(v2, "artworkUseType")))
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      return 0;
    }

    v24 = [v17 shieldDataSource];
    v25 = [v2 shieldDataSource];
    v26 = v24;
    v27 = v25;
    v169 = v26;
    v170 = v2;
    v168 = v27;
    if (v24 | v25)
    {
      if (v26)
      {
        v28 = v25 == 0;
      }

      else
      {
        v28 = 0;
      }

      v29 = v28;
      if (v27)
      {
        v30 = v24 == 0;
      }

      else
      {
        v30 = 0;
      }

      v31 = v27;
      if (v30 || v29 || (v32 = [v26 shieldType], v32 != objc_msgSend(v31, "shieldType")))
      {

LABEL_263:
        v31 = v168;
        v39 = v26;
LABEL_264:
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        return 0;
      }

      v33 = [v26 shieldText];
      if (v33 || ([v31 shieldText], (v177 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v9 = [v26 shieldText];
        v12 = [v31 shieldText];
        if (([v9 isEqualToString:v12] & 1) == 0)
        {

          if (v33)
          {
            v31 = v33;
          }

          else
          {
            v31 = v177;
          }

          goto LABEL_263;
        }

        v34 = 1;
      }

      else
      {
        v177 = 0;
        v34 = 0;
      }

      v35 = [v26 shieldColorString];
      if (v35 || ([v31 shieldColorString], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v36 = [v26 shieldColorString];
        v37 = [v31 shieldColorString];
        v38 = [v36 isEqualToString:v37];

        if (v35)
        {

          v2 = v170;
          v31 = v168;
          if (!v34)
          {
            goto LABEL_70;
          }

          goto LABEL_69;
        }

        v2 = v170;
        v31 = v168;
      }

      else
      {
        v38 = 1;
      }

      if ((v34 & 1) == 0)
      {
LABEL_70:
        v12 = v165;
        v39 = v169;

        if (v33)
        {
        }

        else
        {
        }

        if ((v38 & 1) == 0)
        {
          goto LABEL_264;
        }

        goto LABEL_74;
      }

LABEL_69:

      goto LABEL_70;
    }

LABEL_74:
    v40 = [v17 iconDataSource];
    v41 = [v2 iconDataSource];
    v177 = v40;
    v42 = v41;
    v43 = v42;
    if (!(v40 | v41))
    {
      goto LABEL_92;
    }

    v44 = v177 && v41 == 0;
    v45 = v44;
    v46 = v42 && v40 == 0;
    if (v46 || v45)
    {
      break;
    }

    v47 = v177;
    v48 = [v177 iconType];
    if (v48 != [v43 iconType])
    {
      goto LABEL_259;
    }

    v49 = [v177 cartoID];
    if (v49 != [v43 cartoID])
    {
      goto LABEL_259;
    }

    v50 = [v177 defaultTransitType];
    if (v50 != [v43 defaultTransitType])
    {
      goto LABEL_259;
    }

    v51 = [v177 iconAttributeKey];
    if (v51 != [v43 iconAttributeKey])
    {
      goto LABEL_259;
    }

    v52 = [v177 iconAttributeValue];
    v53 = [v43 iconAttributeValue];

    v4 = v52 == v53;
    v2 = v170;
    if (!v4)
    {
      goto LABEL_270;
    }

LABEL_92:
    v167 = v43;
    v54 = [v17 iconFallbackShieldDataSource];
    v55 = [v2 iconFallbackShieldDataSource];
    v56 = v54;
    v57 = v55;
    v166 = v56;
    v171 = v57;
    if (!(v54 | v55))
    {
      goto LABEL_118;
    }

    if (v56)
    {
      v58 = v55 == 0;
    }

    else
    {
      v58 = 0;
    }

    v59 = v58;
    if (v57)
    {
      v60 = v54 == 0;
    }

    else
    {
      v60 = 0;
    }

    v47 = v56;
    v61 = v57;
    if (v60 || v59 || (v62 = [v56 shieldType], v62 != objc_msgSend(v61, "shieldType")))
    {

      v150 = v61;
      v43 = v167;
LABEL_268:

      goto LABEL_269;
    }

    v63 = [v56 shieldText];
    v43 = v167;
    if (v63 || ([v61 shieldText], (v164 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v54 = [v47 shieldText];
      v9 = [v61 shieldText];
      if (([v54 isEqualToString:v9] & 1) == 0)
      {

        v150 = v164;
        if (v63)
        {
          v150 = v63;
        }

        goto LABEL_268;
      }

      v64 = 1;
    }

    else
    {
      v164 = 0;
      v64 = 0;
    }

    [v47 shieldColorString];
    v66 = v65 = v47;
    if (v66 || ([v171 shieldColorString], (v47 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v67 = [v65 shieldColorString];
      v68 = [v171 shieldColorString];
      v69 = [v67 isEqualToString:v68];

      if (v66)
      {

        v2 = v170;
        if (!v64)
        {
          goto LABEL_114;
        }

LABEL_113:

        goto LABEL_114;
      }

      v2 = v170;
    }

    else
    {
      v69 = 1;
    }

    if (v64)
    {
      goto LABEL_113;
    }

LABEL_114:
    v47 = v166;

    if (v63)
    {
    }

    else
    {
    }

    v12 = v165;
    if ((v69 & 1) == 0)
    {
      v43 = v167;
      v61 = v171;
      goto LABEL_269;
    }

LABEL_118:
    v70 = [v17 textDataSource];
    v71 = [v2 textDataSource];
    v72 = v70;
    v73 = v71;
    v163 = v73;
    v164 = v72;
    if (v70 | v71)
    {
      v77 = v73;
      if (v72)
      {
        v78 = v71 == 0;
      }

      else
      {
        v78 = 0;
      }

      v79 = v78;
      if (v73)
      {
        v80 = v70 == 0;
      }

      else
      {
        v80 = 0;
      }

      if (v80 || v79)
      {

        v75 = 0;
        v85 = v77;
        v10 = v160;
        v5 = v161;
        v6 = v168;
        v9 = v162;
        goto LABEL_139;
      }

      v159 = v17;
      v81 = [v72 text];
      v71 = [v77 text];
      v82 = v81;
      v83 = v71;
      v84 = v83;
      if (v81 | v71)
      {
        if (v82)
        {
          v88 = v71 == 0;
        }

        else
        {
          v88 = 0;
        }

        v89 = v88;
        if (v83)
        {
          v90 = v81 == 0;
        }

        else
        {
          v90 = 0;
        }

        v10 = v160;
        if (v90 || (v89 & 1) != 0)
        {

          v75 = 0;
          v85 = v84;
          v6 = v168;
          v5 = v161;
          v9 = v162;
          v17 = v159;
          goto LABEL_139;
        }

        v156 = v82;
        v91 = [v82 formatStrings];
        v157 = v84;
        v92 = [v84 formatStrings];
        v93 = v91;
        v94 = v92;
        v95 = &stru_1016177A0;
        v9 = v162;
        if (v91 | v92)
        {
          if (v93)
          {
            v109 = v92 == 0;
          }

          else
          {
            v109 = 0;
          }

          v110 = v109;
          if (v94)
          {
            v111 = v91 == 0;
          }

          else
          {
            v111 = 0;
          }

          if (v111 || (v110 & 1) != 0 || (v112 = [v93 count], v112 != objc_msgSend(v94, "count")))
          {

            v121 = v163;
            v122 = v93;
            v5 = v161;
            v123 = v157;
            v124 = v94;
            v17 = v159;
LABEL_195:

            v75 = 0;
            v85 = v124;
            v6 = v168;
            goto LABEL_139;
          }

          v158 = v94;
          v182 = 0u;
          v183 = 0u;
          v180 = 0u;
          v181 = 0u;
          v154 = v93;
          v113 = v93;
          v114 = [v113 countByEnumeratingWithState:&v180 objects:v179 count:16];
          v5 = v161;
          v17 = v159;
          if (v114)
          {
            v115 = v114;
            v116 = 0;
            v117 = *v181;
            while (2)
            {
              for (i = 0; i != v115; i = i + 1)
              {
                if (*v181 != v117)
                {
                  objc_enumerationMutation(v113);
                }

                v119 = *(*(&v180 + 1) + 8 * i);
                v120 = [v158 objectAtIndexedSubscript:v116];
                LODWORD(v119) = sub_100403390(v120, v119, v120);

                if (!v119)
                {
                  v124 = v158;

                  v9 = v162;
                  v2 = v170;
                  v121 = v163;
                  v123 = v157;
                  v122 = v154;
                  goto LABEL_195;
                }

                ++v116;
                v2 = v170;
              }

              v115 = [v113 countByEnumeratingWithState:&v180 objects:v179 count:16];
              if (v115)
              {
                continue;
              }

              break;
            }
          }

          v9 = v162;
        }

        else
        {
          v154 = v93;
          v158 = v94;

          v5 = v161;
          v17 = v159;
        }

        v96 = [v156 separators];
        v97 = [v157 separators];
        v98 = v96;
        v85 = v97;
        v99 = &stru_1016177C0;
        v155 = v98;
        if (!(v96 | v97))
        {

          goto LABEL_159;
        }

        if (v98)
        {
          v125 = v97 == 0;
        }

        else
        {
          v125 = 0;
        }

        v126 = v125;
        if (v85)
        {
          v127 = v96 == 0;
        }

        else
        {
          v127 = 0;
        }

        if (v127 || (v126 & 1) != 0 || (v128 = [v98 count], v4 = v128 == objc_msgSend(v85, "count"), v98 = v155, !v4))
        {

LABEL_248:
          v6 = v168;

          v75 = 0;
          goto LABEL_139;
        }

        v182 = 0u;
        v183 = 0u;
        v180 = 0u;
        v181 = 0u;
        v129 = v155;
        v130 = [v129 countByEnumeratingWithState:&v180 objects:v179 count:16];
        if (v130)
        {
          v131 = v130;
          v132 = 0;
          v133 = *v181;
          while (2)
          {
            for (j = 0; j != v131; j = j + 1)
            {
              if (*v181 != v133)
              {
                objc_enumerationMutation(v129);
              }

              v135 = *(*(&v180 + 1) + 8 * j);
              v136 = [v85 objectAtIndexedSubscript:v132];
              LODWORD(v135) = sub_100403390(v136, v135, v136);

              if (!v135)
              {

LABEL_247:
                v5 = v161;
                v9 = v162;
                v17 = v159;
                v10 = v160;
                v2 = v170;
                goto LABEL_248;
              }

              ++v132;
            }

            v131 = [v129 countByEnumeratingWithState:&v180 objects:v179 count:16];
            if (v131)
            {
              continue;
            }

            break;
          }
        }

        v5 = v161;
        v9 = v162;
        v17 = v159;
        v10 = v160;
        v2 = v170;
LABEL_159:
        v100 = [v156 formatTokens];
        v101 = [v157 formatTokens];
        v151 = v100 | v101;
        v153 = v100;
        v102 = v101;
        v103 = &stru_1016177E0;
        v152 = v102;
        if (v100 | v101)
        {
          if (v153)
          {
            v137 = v101 == 0;
          }

          else
          {
            v137 = 0;
          }

          v138 = v137;
          if (v102)
          {
            v139 = v100 == 0;
          }

          else
          {
            v139 = 0;
          }

          v140 = v153;
          if (v139 || (v138 & 1) != 0 || (v141 = [v153 count], v140 = v153, v141 != objc_msgSend(v152, "count")))
          {

            goto LABEL_248;
          }

          v182 = 0u;
          v183 = 0u;
          v180 = 0u;
          v181 = 0u;
          v142 = v153;
          v143 = [v142 countByEnumeratingWithState:&v180 objects:v179 count:16];
          if (v143)
          {
            v144 = v143;
            v145 = 0;
            v146 = *v181;
            while (2)
            {
              v147 = 0;
              v129 = v152;
              do
              {
                if (*v181 != v146)
                {
                  objc_enumerationMutation(v142);
                }

                v148 = *(*(&v180 + 1) + 8 * v147);
                v149 = [v152 objectAtIndexedSubscript:{v145, v151}];
                LODWORD(v148) = sub_100403394(v149, v148, v149);

                if (!v148)
                {

                  goto LABEL_247;
                }

                ++v145;
                v147 = v147 + 1;
              }

              while (v144 != v147);
              v144 = [v142 countByEnumeratingWithState:&v180 objects:v179 count:16];
              if (v144)
              {
                continue;
              }

              break;
            }
          }

          v17 = v159;
        }

        else
        {
        }

        v104 = [v156 alternativeString];
        v105 = [v157 alternativeString];
        v106 = v104;
        v107 = v105;
        v71 = v163;
        if (v104 | v105)
        {
          v108 = [v106 isEqual:v107];
        }

        else
        {
          v108 = 1;
        }

        v2 = v170;

        v12 = v165;
        if ((v108 & 1) == 0)
        {
LABEL_120:
          v75 = 0;
          v10 = v160;
          v5 = v161;
          v6 = v168;
          v76 = v177;
          v9 = v162;
          goto LABEL_140;
        }

        goto LABEL_119;
      }

      v17 = v159;
    }

LABEL_119:
    v74 = [v17 hasRoutingIncidentBadge];
    if (v74 != [v2 hasRoutingIncidentBadge])
    {
      goto LABEL_120;
    }

    v85 = [v17 accessibilityText];
    v10 = v160;
    if (v85 || ([v2 accessibilityText], (v71 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v86 = [v17 accessibilityText];
      v87 = [v2 accessibilityText];
      v75 = [v86 isEqualToString:v87];

      v2 = v170;
      v6 = v168;
      v5 = v161;
      v9 = v162;
      if (!v85)
      {
        v85 = v71;
      }
    }

    else
    {
      v75 = 1;
      v6 = v168;
      v5 = v161;
      v9 = v162;
      v85 = 0;
    }

LABEL_139:

    v12 = v165;
    v76 = v177;
LABEL_140:

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    if (!v75)
    {
      return 0;
    }

LABEL_23:
    result = 1;
    v11 = v178;
    if (v178 == v10)
    {
      return result;
    }
  }

  v47 = v177;
LABEL_259:
  v61 = v43;
LABEL_269:

LABEL_270:
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return 0;
}

uint64_t sub_100402E0C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100402E54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100402ED8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&unk_10190A800);
  __chkstk_darwin(v4 - 8);
  v6 = &v37 - v5;
  v7 = type metadata accessor for TimeZone();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v38 = &v37 - v12;
  v13 = sub_1000CE6B8(&qword_10190EBD0);
  __chkstk_darwin(v13 - 8);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v37 - v17;
  __chkstk_darwin(v19);
  v21 = &v37 - v20;
  v22 = *(a1 + 72);
  v37 = a2;
  isa = Date._bridgeToObjectiveC()().super.isa;
  v24 = [v22 serviceResumesAfterDate:isa];

  if (v24)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v25 = type metadata accessor for Date();
    (*(*(v25 - 8) + 56))(v18, 0, 1, v25);
  }

  else
  {
    v26 = type metadata accessor for Date();
    (*(*(v26 - 8) + 56))(v18, 1, 1, v26);
  }

  sub_100335D8C(v18, v21);
  v27 = [v22 timeZone];
  if (v27)
  {
    v28 = v27;
    static TimeZone._unconditionallyBridgeFromObjectiveC(_:)();

    v29 = *(v8 + 32);
    v29(v6, v10, v7);
    (*(v8 + 56))(v6, 0, 1, v7);
    v30 = v38;
    v29(v38, v6, v7);
  }

  else
  {
    (*(v8 + 56))(v6, 1, 1, v7);
    v30 = v38;
    static TimeZone.current.getter();
    if ((*(v8 + 48))(v6, 1, v7) != 1)
    {
      sub_100024F64(v6, &unk_10190A800);
    }
  }

  sub_1002323DC(v21, v15);
  v31 = type metadata accessor for Date();
  v32 = *(v31 - 8);
  v33 = 0;
  if ((*(v32 + 48))(v15, 1, v31) != 1)
  {
    v33 = Date._bridgeToObjectiveC()().super.isa;
    (*(v32 + 8))(v15, v31);
  }

  v34 = Date._bridgeToObjectiveC()().super.isa;
  v35 = TimeZone._bridgeToObjectiveC()().super.isa;
  v36 = MKServiceGapDescription();

  if (v36)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v8 + 8))(v30, v7);
    sub_100024F64(v21, &qword_10190EBD0);
  }

  else
  {
    __break(1u);
  }
}

BOOL sub_100403394(id a1, GEOServerFormatToken *a2, GEOServerFormatToken *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = GEOServerFormatTokenEqual();

  return v6;
}

uint64_t type metadata accessor for CarSearchResultsView()
{
  result = qword_101920438;
  if (!qword_101920438)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100403460()
{
  sub_1004034E4();
  if (v0 <= 0x3F)
  {
    sub_100403578();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1004034E4()
{
  if (!qword_101920448)
  {
    type metadata accessor for CarSearchResultsViewModel();
    sub_100406EAC(&qword_101920450, type metadata accessor for CarSearchResultsViewModel);
    v0 = type metadata accessor for StateObject();
    if (!v1)
    {
      atomic_store(v0, &qword_101920448);
    }
  }
}

void sub_100403578()
{
  if (!qword_101920458)
  {
    sub_1000D6664(&unk_101918E50);
    sub_100406740(&qword_101916EE8, &qword_1019156D0);
    v0 = type metadata accessor for FocusState();
    if (!v1)
    {
      atomic_store(v0, &qword_101920458);
    }
  }
}

uint64_t sub_10040363C@<X0>(uint64_t a1@<X8>)
{
  v106 = a1;
  v98 = sub_1000CE6B8(&qword_101920488);
  __chkstk_darwin(v98);
  v100 = (&v77 - v2);
  v105 = sub_1000CE6B8(&qword_101920490);
  __chkstk_darwin(v105);
  v101 = &v77 - v3;
  v93 = type metadata accessor for MapsDesignAccessibilityString();
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v90 = (&v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for CarSearchResultsView();
  v82 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v83 = v6;
  v84 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_1000CE6B8(&qword_101920498);
  __chkstk_darwin(v95);
  v85 = &v77 - v7;
  v96 = sub_1000CE6B8(&qword_1019204A0);
  v88 = *(v96 - 8);
  __chkstk_darwin(v96);
  v86 = &v77 - v8;
  v97 = sub_1000CE6B8(&qword_1019204A8);
  v89 = *(v97 - 8);
  __chkstk_darwin(v97);
  v87 = &v77 - v9;
  v99 = sub_1000CE6B8(&qword_1019204B0);
  v94 = *(v99 - 8);
  __chkstk_darwin(v99);
  v91 = &v77 - v10;
  v11 = sub_1000CE6B8(&qword_10191D860);
  v78 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v77 - v15;
  v80 = sub_1000CE6B8(&qword_101916E30);
  __chkstk_darwin(v80);
  v81 = (&v77 - v17);
  v102 = sub_1000CE6B8(&qword_1019204B8);
  __chkstk_darwin(v102);
  v104 = &v77 - v18;
  v19 = sub_1000CE6B8(&qword_1019204C0);
  __chkstk_darwin(v19);
  v21 = &v77 - v20;
  v103 = sub_1000CE6B8(&qword_1019204C8);
  __chkstk_darwin(v103);
  v79 = &v77 - v22;
  type metadata accessor for CarSearchResultsViewModel();
  sub_100406EAC(&qword_101920450, type metadata accessor for CarSearchResultsViewModel);
  v23 = StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v25 = v111;
  v26 = BYTE8(v111);
  v27 = BYTE8(v111) >> 6;
  if (v27)
  {
    if (v27 == 1)
    {
      sub_10040624C(v111, BYTE8(v111));
      v28 = static HorizontalAlignment.center.getter();
      v108 = 1;
      sub_100405ECC(v109);
      *&v107[7] = v109[0];
      *&v107[23] = v109[1];
      *&v107[39] = *v110;
      *&v107[48] = *&v110[9];
      v111 = v28;
      v112[0] = v108;
      *&v112[1] = *v107;
      *&v112[17] = *&v107[16];
      *&v112[33] = *&v107[32];
      *&v112[49] = *&v110[9];
      v29 = *v112;
      v30 = v100;
      *v100 = v28;
      v30[1] = v29;
      v31 = *&v112[32];
      v30[2] = *&v112[16];
      v30[3] = v31;
      v30[4] = *&v112[48];
      *(v30 + 80) = v112[64];
      swift_storeEnumTagMultiPayload();
      sub_1000D2DFC(&v111, v107, &qword_1019204D0);
      sub_1000CE6B8(&qword_1019204D0);
      v32 = type metadata accessor for UUID();
      v33 = sub_100406268();
      v34 = sub_100406EAC(&qword_1019156D0, &type metadata accessor for UUID);
      *v107 = v95;
      *&v107[8] = v32;
      *&v107[16] = v33;
      *&v107[24] = v34;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      *v107 = v96;
      *&v107[8] = OpaqueTypeConformance2;
      v36 = swift_getOpaqueTypeConformance2();
      *v107 = v97;
      *&v107[8] = v36;
      swift_getOpaqueTypeConformance2();
      sub_1000414C8(&qword_1019204F0, &qword_1019204D0);
      v37 = v101;
      _ConditionalContent<>.init(storage:)();
      sub_1000B7DC8(v37, v104);
      swift_storeEnumTagMultiPayload();
      sub_100406320();
      sub_1004063D8();
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(&v111, &qword_1019204D0);
      return sub_100024F64(v37, &qword_101920490);
    }

    else
    {
      if (v111 | BYTE8(v111) ^ 0x80)
      {
        v67 = static HorizontalAlignment.center.getter();
        v68 = v81;
        *v81 = v67;
        v68[1] = 0;
        *(v68 + 16) = 1;
        v69 = v68 + *(sub_1000CE6B8(&unk_101916E80) + 44);
        ProgressView<>.init<>()();
        v70 = v78;
        v71 = *(v78 + 16);
        v71(v13, v16, v11);
        *v69 = 0;
        v69[8] = 1;
        v72 = sub_1000CE6B8(&qword_10190A408);
        v71(&v69[*(v72 + 48)], v13, v11);
        v73 = &v69[*(v72 + 64)];
        *v73 = 0;
        v73[8] = 1;
        v74 = *(v70 + 8);
        v74(v16, v11);
        v74(v13, v11);
        v65 = &qword_101916E30;
        v75 = v81;
        sub_1000D2DFC(v81, v21, &qword_101916E30);
        swift_storeEnumTagMultiPayload();
        sub_1000414C8(&qword_101916EB8, &qword_101916E30);
        v76 = v79;
        _ConditionalContent<>.init(storage:)();
        sub_1000D2DFC(v76, v104, &qword_1019204C8);
        swift_storeEnumTagMultiPayload();
        sub_100406320();
        sub_1004063D8();
        _ConditionalContent<>.init(storage:)();
        sub_100024F64(v76, &qword_1019204C8);
        v66 = v75;
      }

      else
      {
        *v21 = 0;
        v21[8] = 1;
        swift_storeEnumTagMultiPayload();
        sub_1000414C8(&qword_101916EB8, &qword_101916E30);
        v64 = v79;
        _ConditionalContent<>.init(storage:)();
        v65 = &qword_1019204C8;
        sub_1000D2DFC(v64, v104, &qword_1019204C8);
        swift_storeEnumTagMultiPayload();
        sub_100406320();
        sub_1004063D8();
        _ConditionalContent<>.init(storage:)();
        v66 = v64;
      }

      return sub_100024F64(v66, v65);
    }
  }

  else
  {
    __chkstk_darwin(v24);
    *(&v77 - 2) = v1;
    static Axis.Set.vertical.getter();
    sub_1000CE6B8(&qword_101920508);
    sub_1004065A4();
    v39 = v85;
    ScrollView.init(_:showsIndicators:content:)();
    v40 = v84;
    sub_1004067DC(v1, v84);
    v41 = (*(v82 + 80) + 16) & ~*(v82 + 80);
    v42 = (v41 + v83 + 7) & 0xFFFFFFFFFFFFFFF8;
    v43 = swift_allocObject();
    sub_100406850(v40, v43 + v41);
    v44 = v43 + v42;
    *v44 = v25;
    *(v44 + 8) = v26 & 1;
    v45 = v95;
    v46 = (v39 + *(v95 + 36));
    *v46 = sub_1004068B4;
    v46[1] = v43;
    v47 = type metadata accessor for UUID();
    v46[2] = 0;
    v46[3] = 0;
    sub_1004067DC(v1, v40);
    v48 = swift_allocObject();
    sub_100406850(v40, v48 + v41);
    v49 = sub_100406268();
    v50 = sub_100406EAC(&qword_1019156D0, &type metadata accessor for UUID);
    v51 = v86;
    View.onScrollTargetVisibilityChange<A>(idType:threshold:_:)();

    sub_100024F64(v39, &qword_101920498);
    v52 = v90;
    *v90 = 0xD000000000000010;
    v52[1] = 0x8000000101233300;
    v53 = v92;
    v54 = v93;
    (*(v92 + 104))(v52, enum case for MapsDesignAccessibilityString.list(_:), v93);
    *&v111 = v45;
    *(&v111 + 1) = v47;
    *v112 = v49;
    *&v112[8] = v50;
    v55 = swift_getOpaqueTypeConformance2();
    v56 = v87;
    v57 = v96;
    View.mapsDesignAXContainer(withID:)();
    (*(v53 + 8))(v52, v54);
    (*(v88 + 8))(v51, v57);
    *&v111 = v57;
    *(&v111 + 1) = v55;
    v58 = swift_getOpaqueTypeConformance2();
    v59 = v91;
    v60 = v97;
    View.scrollAccessoryEdge(_:)();
    (*(v89 + 8))(v56, v60);
    v61 = v94;
    v62 = v99;
    (*(v94 + 16))(v100, v59, v99);
    swift_storeEnumTagMultiPayload();
    sub_1000CE6B8(&qword_1019204D0);
    *&v111 = v60;
    *(&v111 + 1) = v58;
    swift_getOpaqueTypeConformance2();
    sub_1000414C8(&qword_1019204F0, &qword_1019204D0);
    v63 = v101;
    _ConditionalContent<>.init(storage:)();
    sub_1000B7DC8(v63, v104);
    swift_storeEnumTagMultiPayload();
    sub_100406320();
    sub_1004063D8();
    _ConditionalContent<>.init(storage:)();
    sub_100024F64(v63, &qword_101920490);
    return (*(v61 + 8))(v59, v62);
  }
}

uint64_t sub_100404804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a1;
  v49 = a2;
  v3 = type metadata accessor for CarSearchResultsView();
  v45 = *(v3 - 8);
  v44 = *(v45 + 64);
  __chkstk_darwin(v3);
  v43 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1000CE6B8(&unk_101918E50);
  __chkstk_darwin(v46);
  v40 = &v38 - v5;
  v6 = type metadata accessor for PinnedScrollableViews();
  __chkstk_darwin(v6);
  v7 = sub_1000CE6B8(&qword_101920520);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v38 - v9;
  v41 = sub_1000CE6B8(&qword_101920518);
  v42 = *(v41 - 8);
  __chkstk_darwin(v41);
  v12 = &v38 - v11;
  v13 = sub_1000CE6B8(&qword_101920530);
  v47 = *(v13 - 8);
  v48 = v13;
  __chkstk_darwin(v13);
  v15 = &v38 - v14;
  v50 = a1;
  static HorizontalAlignment.center.getter();
  LODWORD(v51) = 0;
  sub_100406EAC(&qword_10190F488, &type metadata accessor for PinnedScrollableViews);
  dispatch thunk of OptionSet.init(rawValue:)();
  sub_1000CE6B8(&qword_101920538);
  sub_1004069C0();
  LazyVStack.init(alignment:spacing:pinnedViews:content:)();
  v16 = sub_1000414C8(&qword_101920528, &qword_101920520);
  View.scrollTargetLayout(isEnabled:)();
  (*(v8 + 8))(v10, v7);
  sub_1000CE6B8(&qword_1019203D8);
  v17 = v39;
  v18 = v40;
  FocusState.wrappedValue.getter();
  v19 = v43;
  sub_1004067DC(v17, v43);
  v20 = (*(v45 + 80) + 16) & ~*(v45 + 80);
  v21 = swift_allocObject();
  sub_100406850(v19, v21 + v20);
  v51 = v7;
  v52 = v16;
  swift_getOpaqueTypeConformance2();
  sub_100406740(&qword_101916EA0, &qword_101916EA8);
  v22 = v18;
  v23 = v41;
  View.onChange<A>(of:initial:_:)();

  sub_100024F64(v22, &unk_101918E50);
  (*(v42 + 8))(v12, v23);
  sub_1000CE6B8(&qword_101909FF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1011E1D60;
  LOBYTE(v17) = static Edge.Set.leading.getter();
  *(inited + 32) = v17;
  v25 = static Edge.Set.trailing.getter();
  *(inited + 33) = v25;
  v26 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v17)
  {
    v26 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v25)
  {
    v26 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = v49;
  (*(v47 + 32))(v49, v15, v48);
  result = sub_1000CE6B8(&qword_101920508);
  v37 = v35 + *(result + 36);
  *v37 = v26;
  *(v37 + 8) = v28;
  *(v37 + 16) = v30;
  *(v37 + 24) = v32;
  *(v37 + 32) = v34;
  *(v37 + 40) = 0;
  return result;
}

uint64_t sub_100404EAC(uint64_t a1)
{
  v2 = type metadata accessor for CarSearchResultsView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  type metadata accessor for CarSearchResultsViewModel();
  sub_100406EAC(&qword_101920450, type metadata accessor for CarSearchResultsViewModel);
  v5 = StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v16 = v14;
  swift_getKeyPath();
  sub_1004067DC(a1, &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_100406850(&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  sub_1000CE6B8(&qword_101926E30);
  sub_1000CE6B8(&qword_101920560);
  sub_1000414C8(&qword_101920568, &qword_101926E30);
  sub_100406EAC(&qword_1019156D0, &type metadata accessor for UUID);
  v8 = sub_1000D6664(&qword_101920548);
  v9 = sub_1000D6664(&qword_101920550);
  v10 = sub_100406AC4();
  v14 = v9;
  v15 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v14 = v8;
  v15 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_1004051C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v61 = a3;
  v5 = type metadata accessor for MapsDesignAccessibilityString();
  v59 = *(v5 - 8);
  v60 = v5;
  __chkstk_darwin(v5);
  v58 = (&v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v57 = sub_1000CE6B8(&unk_101918E50);
  __chkstk_darwin(v57);
  v53 = &v46 - v7;
  v8 = sub_1000CE6B8(&qword_101920570);
  __chkstk_darwin(v8 - 8);
  v49 = &v46 - v9;
  v10 = type metadata accessor for CarSearchResultsView();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SearchCell.SearchCellType();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for SearchCell();
  v52 = *(v50 - 8);
  __chkstk_darwin(v50);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1000CE6B8(&qword_101920550);
  __chkstk_darwin(v54);
  v48 = &v46 - v20;
  v21 = sub_1000CE6B8(&qword_101920548);
  v22 = *(v21 - 8);
  v55 = v21;
  v56 = v22;
  v23 = __chkstk_darwin(v21);
  v51 = &v46 - v24;
  v25 = *a1;
  (*(v15 + 104))(v17, enum case for SearchCell.SearchCellType.carplay(_:), v14, v23);
  v64 = type metadata accessor for ListCellViewModel();
  v65 = sub_100406EAC(&qword_10190B068, &type metadata accessor for ListCellViewModel);
  v62 = v25;
  v46 = a2;
  v47 = v13;
  sub_1004067DC(a2, v13);
  v26 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v27 = (v12 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  sub_100406850(v13, v28 + v26);
  *(v28 + v27) = v25;
  swift_retain_n();
  SearchCell.init(_:model:tapHandler:)();
  sub_1000CE6B8(&qword_1019203D8);
  v29 = v49;
  FocusState.projectedValue.getter();
  v30 = v53;
  dispatch thunk of ListCellViewModel.id.getter();
  v31 = type metadata accessor for UUID();
  (*(*(v31 - 8) + 56))(v30, 0, 1, v31);
  sub_100406EAC(&qword_10190D668, &type metadata accessor for SearchCell);
  sub_100406740(&qword_101916EE8, &qword_1019156D0);
  v32 = v48;
  v33 = v50;
  View.focused<A>(_:equals:)();
  sub_100024F64(v30, &unk_101918E50);
  sub_100024F64(v29, &qword_101920570);
  (*(v52 + 8))(v19, v33);
  v34 = v47;
  sub_1004067DC(v46, v47);
  v35 = swift_allocObject();
  sub_100406850(v34, v35 + v26);
  *(v35 + v27) = v25;
  v36 = v54;
  v37 = (v32 + *(v54 + 36));
  *v37 = sub_1004070B8;
  v37[1] = v35;
  v37[2] = 0;
  v37[3] = 0;
  v38 = sub_100406AC4();

  v39 = v51;
  v40 = v36;
  View.scrollTarget(isEnabled:)();
  sub_100024F64(v32, &qword_101920550);
  v42 = v58;
  v41 = v59;
  *v58 = 0x6372616553726143;
  v42[1] = 0xEF746C7573655268;
  v43 = v60;
  (*(v41 + 104))(v42, enum case for MapsDesignAccessibilityString.cell(_:), v60);
  v62 = v40;
  v63 = v38;
  swift_getOpaqueTypeConformance2();
  v44 = v55;
  View.mapsDesignAXContainer(withID:)();
  (*(v41 + 8))(v42, v43);
  return (*(v56 + 8))(v39, v44);
}

void sub_100405930(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CarSearchResultsViewModel();
  sub_100406EAC(&qword_101920450, type metadata accessor for CarSearchResultsViewModel);
  v3 = StateObject.wrappedValue.getter();
  sub_100407170(a2, v3);
}

uint64_t sub_1004059EC()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CarSearchResultsViewModel();
  sub_100406EAC(&qword_101920450, type metadata accessor for CarSearchResultsViewModel);
  v4 = StateObject.wrappedValue.getter();
  dispatch thunk of ListCellViewModel.id.getter();
  sub_100556134(v3);

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100405B38(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000CE6B8(&unk_101918E50);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D2DFC(a2, v5, &unk_101918E50);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_100024F64(v5, &unk_101918E50);
  }

  (*(v7 + 32))(v9, v5, v6);
  type metadata accessor for CarSearchResultsViewModel();
  sub_100406EAC(&qword_101920450, type metadata accessor for CarSearchResultsViewModel);
  v11 = StateObject.wrappedValue.getter();
  sub_100556988(v9);

  return (*(v7 + 8))(v9, v6);
}

void sub_100405D44(uint64_t a1, unint64_t a2, char a3)
{
  type metadata accessor for CarSearchResultsViewModel();
  sub_100406EAC(&qword_101920450, type metadata accessor for CarSearchResultsViewModel);
  v5 = StateObject.wrappedValue.getter();
  sub_100556518(a2, a3);
}

void sub_100405E0C(uint64_t a1)
{
  type metadata accessor for CarSearchResultsViewModel();
  sub_100406EAC(&qword_101920450, type metadata accessor for CarSearchResultsViewModel);
  v2 = StateObject.wrappedValue.getter();
  sub_100556A58(a1);
}

uint64_t sub_100405ECC@<X0>(uint64_t a1@<X8>)
{
  sub_100405F88();
  sub_1000E5580();
  v2 = Text.init<A>(_:)();
  v4 = v3;
  v6 = v5 & 1;
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5 & 1;
  *(a1 + 40) = v7;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  sub_1001C8AFC(v2, v3, v5 & 1);

  sub_1000F0A40(v2, v4, v6);
}

uint64_t sub_100405F88()
{
  v0 = MKCurrentNetworkConnectionFailureDiagnosis();
  if (v0 <= 1)
  {
    if (v0 != 1)
    {
LABEL_9:
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v1.super.isa = qword_1019600D8;
      v6 = 0xD000000000000019;
      v8 = 0x80000001012365E0;
      v2 = 0x6C757365725F6F6ELL;
      v3 = 0xED000079656B5F74;
      v4 = 0x80000001012365C0;
      v5 = 0xD00000000000002ALL;
      return NSLocalizedString(_:tableName:bundle:value:comment:)(*&v2, 0, v1, *&v6, *&v5)._countAndFlagsBits;
    }

    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v1.super.isa = qword_1019600D8;
    v2 = 0xD000000000000023;
    v8 = 0x8000000101236890;
    v3 = 0x8000000101236810;
    v4 = 0x8000000101236840;
    v5 = 0xD000000000000054;
    v6 = 0x1000000000000048;
  }

  else if (v0 == 2)
  {
    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v1.super.isa = qword_1019600D8;
    v2 = 0xD000000000000020;
    v8 = 0x80000001012367B0;
    v3 = 0x8000000101236700;
    v6 = 0x1000000000000075;
    v4 = 0x8000000101236730;
    v5 = 0xD00000000000005ELL;
  }

  else
  {
    if (v0 != 3)
    {
      goto LABEL_9;
    }

    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v1.super.isa = qword_1019600D8;
    v8 = 0x80000001012366A0;
    v3 = 0x8000000101236610;
    v6 = 0x1000000000000055;
    v4 = 0x8000000101236640;
    v5 = 0xD000000000000051;
    v2 = 0xD00000000000002ALL;
  }

  return NSLocalizedString(_:tableName:bundle:value:comment:)(*&v2, 0, v1, *&v6, *&v5)._countAndFlagsBits;
}

void sub_10040624C(void *a1, unsigned __int8 a2)
{
  if (a2 >> 6 == 1)
  {
  }

  else if (!(a2 >> 6))
  {
  }
}

unint64_t sub_100406268()
{
  result = qword_1019204D8;
  if (!qword_1019204D8)
  {
    sub_1000D6664(&qword_101920498);
    sub_1000414C8(&qword_1019204E0, &qword_1019204E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019204D8);
  }

  return result;
}

unint64_t sub_100406320()
{
  result = qword_1019204F8;
  if (!qword_1019204F8)
  {
    sub_1000D6664(&qword_1019204C8);
    sub_1000414C8(&qword_101916EB8, &qword_101916E30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019204F8);
  }

  return result;
}

unint64_t sub_1004063D8()
{
  result = qword_101920500;
  if (!qword_101920500)
  {
    sub_1000D6664(&qword_101920490);
    sub_1000D6664(&qword_1019204A8);
    sub_1000D6664(&qword_1019204A0);
    sub_1000D6664(&qword_101920498);
    type metadata accessor for UUID();
    sub_100406268();
    sub_100406EAC(&qword_1019156D0, &type metadata accessor for UUID);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1000414C8(&qword_1019204F0, &qword_1019204D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101920500);
  }

  return result;
}

unint64_t sub_1004065A4()
{
  result = qword_101920510;
  if (!qword_101920510)
  {
    sub_1000D6664(&qword_101920508);
    sub_1000D6664(&qword_101920518);
    sub_1000D6664(&unk_101918E50);
    sub_1000D6664(&qword_101920520);
    sub_1000414C8(&qword_101920528, &qword_101920520);
    swift_getOpaqueTypeConformance2();
    sub_100406740(&qword_101916EA0, &qword_101916EA8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101920510);
  }

  return result;
}

uint64_t sub_100406740(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000D6664(&unk_101918E50);
    sub_100406EAC(a2, &type metadata accessor for UUID);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1004067DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarSearchResultsView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100406840(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100406850(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarSearchResultsView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1004068B4()
{
  v1 = *(type metadata accessor for CarSearchResultsView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = *v3;
  v5 = *(v3 + 8);

  sub_100405D44(v0 + v2, v4, v5);
}

void sub_100406948(uint64_t a1)
{
  type metadata accessor for CarSearchResultsView();

  sub_100405E0C(a1);
}

unint64_t sub_1004069C0()
{
  result = qword_101920540;
  if (!qword_101920540)
  {
    sub_1000D6664(&qword_101920538);
    sub_1000D6664(&qword_101920548);
    sub_1000D6664(&qword_101920550);
    sub_100406AC4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101920540);
  }

  return result;
}

unint64_t sub_100406AC4()
{
  result = qword_101920558;
  if (!qword_101920558)
  {
    sub_1000D6664(&qword_101920550);
    type metadata accessor for SearchCell();
    sub_1000D6664(&unk_101918E50);
    sub_100406EAC(&qword_10190D668, &type metadata accessor for SearchCell);
    sub_100406740(&qword_101916EE8, &qword_1019156D0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101920558);
  }

  return result;
}

uint64_t sub_100406C14(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CarSearchResultsView();

  return sub_100405B38(a1, a2);
}

uint64_t sub_100406C94()
{
  v1 = (type metadata accessor for CarSearchResultsView() - 8);
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = (v2 + 16) & ~v2;
  sub_100406840(*(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 16));
  v5 = v0 + v4 + v1[7];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (!v8(v5, 1, v6))
  {
    (*(v7 + 8))(v5, v6);
  }

  v9 = sub_1000CE6B8(&qword_1019203D8);

  v10 = *(v9 + 40);
  if (!v8(v5 + v10, 1, v6))
  {
    (*(v7 + 8))(v5 + v10, v6);
  }

  return _swift_deallocObject(v0, v4 + v3, v2 | 7);
}

uint64_t sub_100406E2C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for CarSearchResultsView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1004051C0(a1, v6, a2);
}

uint64_t sub_100406EAC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100406F0C()
{
  v1 = (type metadata accessor for CarSearchResultsView() - 8);
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = (v2 + 16) & ~v2;
  sub_100406840(*(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 16));
  v5 = v0 + v4 + v1[7];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (!v8(v5, 1, v6))
  {
    (*(v7 + 8))(v5, v6);
  }

  v9 = sub_1000CE6B8(&qword_1019203D8);

  v10 = *(v9 + 40);
  if (!v8(v5 + v10, 1, v6))
  {
    (*(v7 + 8))(v5 + v10, v6);
  }

  return _swift_deallocObject(v0, ((v3 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1004070D0(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for CarSearchResultsView() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v3, v4);
}

uint64_t sub_100407170(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20[3] = type metadata accessor for ListCellViewModel();
  v20[4] = sub_100406EAC(&qword_10190B068, &type metadata accessor for ListCellViewModel);
  v20[0] = a1;
  sub_10005EB40(v20, v19);

  sub_1000CE6B8(&qword_101920578);
  if (swift_dynamicCast())
  {
    dispatch thunk of ListCellViewModel.id.getter();
    v8 = OBJC_IVAR____TtC4Maps25CarSearchResultsViewModel_modelToSearchResults;
    swift_beginAccess();
    v9 = *(a2 + v8);
    if (*(v9 + 16) && (v10 = sub_1002972F8(v7), (v11 & 1) != 0))
    {
      v12 = *(*(v9 + 56) + 8 * v10);
      swift_endAccess();
      v13 = *(v5 + 8);
      v14 = v12;
      v13(v7, v4);
      v15 = *(a2 + OBJC_IVAR____TtC4Maps25CarSearchResultsViewModel_onSelectResult);
      if (v15)
      {
        v16 = *(a2 + OBJC_IVAR____TtC4Maps25CarSearchResultsViewModel_onSelectResult + 8);

        v15(a2, v14);

        sub_1000D3B90(v15, v16);
      }

      else
      {
      }
    }

    else
    {
      swift_endAccess();

      (*(v5 + 8))(v7, v4);
    }
  }

  return sub_10004E3D0(v20);
}

unint64_t sub_1004073BC()
{
  result = qword_101920580;
  if (!qword_101920580)
  {
    sub_1000D6664(&qword_101920588);
    sub_100406320();
    sub_1004063D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101920580);
  }

  return result;
}

unint64_t sub_10040744C()
{
  result = qword_101920590;
  if (!qword_101920590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101920590);
  }

  return result;
}

uint64_t sub_1004074A0()
{
  v9 = *v0;
  v10 = v9;
  sub_100147688(&v10, &v8);
  v1._countAndFlagsBits = 95;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  if (v0[3])
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (v0[3])
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  v4 = v3;
  String.append(_:)(*&v2);

  v5._countAndFlagsBits = 95;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  v8 = *(v0 + 7);
  v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v6);

  return v9;
}

uint64_t sub_10040757C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1004074A0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1004075A4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return sub_100407808(v7, v8) & 1;
}

void sub_1004075F0()
{
  String.hash(into:)();
  if (*(v0 + 24))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v1 = *(v0 + 32);
  v2 = *(v1 + 16);
  Hasher._combine(_:)(v2);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v12[0] = *v3;
      v4 = v3[1];
      v5 = v3[2];
      v6 = v3[3];
      *&v13[9] = *(v3 + 57);
      v12[2] = v5;
      *v13 = v6;
      v12[1] = v4;
      sub_100160488(v12, &v11);
      sub_10040017C();
      sub_1001604E4(v12);
      v3 += 5;
      --v2;
    }

    while (v2);
  }

  Hasher._combine(_:)(*(v0 + 48) & 1);
  v7 = *(v0 + 40);
  if (v7 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
    if (!v8)
    {
      return;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      return;
    }
  }

  if (v8 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v8; ++i)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v10 = *(v7 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      Hasher._combine(_:)([v10 muid]);
      swift_unknownObjectRelease();
    }
  }
}

Swift::Int sub_100407788()
{
  Hasher.init(_seed:)();
  sub_1004075F0();
  return Hasher._finalize()();
}

Swift::Int sub_1004077CC()
{
  Hasher.init(_seed:)();
  sub_1004075F0();
  return Hasher._finalize()();
}

uint64_t sub_100407808(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = *a1 == *a2 && a1[1] == a2[1];
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v6 = v4[3];
  v7 = *(v3 + 24);
  if (v6)
  {
    if (!v7)
    {
      return 0;
    }

    v8 = v4[2] == *(v3 + 16) && v6 == v7;
    if (!v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if ((*(v4 + 48) ^ *(v3 + 48)))
  {
    return 0;
  }

  v9 = v4[4];
  v10 = *(v3 + 32);
  v11 = *(v9 + 16);
  if (v11 != *(v10 + 16))
  {
    return 0;
  }

  if (v11)
  {
    v12 = v9 == v10;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    v13 = (v9 + 32);
    v14 = (v10 + 32);
    while (1)
    {
      v146[0] = *v13;
      v15 = v13[1];
      v16 = v13[2];
      v17 = v13[3];
      *(v147 + 9) = *(v13 + 57);
      v146[2] = v16;
      v147[0] = v17;
      v146[1] = v15;
      if (!v11)
      {
        break;
      }

      v148[0] = *v14;
      v18 = v14[1];
      v19 = v14[2];
      v20 = v14[3];
      *(v149 + 9) = *(v14 + 57);
      v148[2] = v19;
      v149[0] = v20;
      v148[1] = v18;
      sub_100160488(v146, v150);
      sub_100160488(v148, v150);
      v21 = sub_100401CD4(v146, v148);
      sub_1001604E4(v148);
      sub_1001604E4(v146);
      if ((v21 & 1) == 0)
      {
        return 0;
      }

      v14 += 5;
      v13 += 5;
      if (!--v11)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_141:
    __break(1u);
LABEL_142:
    __break(1u);
LABEL_143:
    __break(1u);
    goto LABEL_144;
  }

LABEL_25:
  v2 = v4[5];
  v4 = (v2 >> 62);
  if (v2 >> 62)
  {
LABEL_144:
    v22 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_27;
  }

  v22 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_27:
  v23 = *(v3 + 40);
  v24 = v23 >> 62;
  v134 = v23;
  if (v23 >> 62)
  {
    if (v22 != _CocoaArrayWrapper.endIndex.getter())
    {
      return 0;
    }
  }

  else if (v22 != *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return 0;
  }

  if (v4)
  {
    v25 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v25 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v25)
  {
    return 1;
  }

  v26 = 0;
  v27 = v2 & 0xC000000000000001;
  v144 = v2 + 32;
  v145 = v2 & 0xFFFFFFFFFFFFFF8;
  v129 = v2;
  v131 = v25;
  v132 = v24;
  v133 = v2 & 0xC000000000000001;
  while (1)
  {
    if (v27)
    {
      v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v4 = (v26 + 1);
      if (__OFADD__(v26, 1))
      {
        goto LABEL_141;
      }
    }

    else
    {
      if (v26 >= *(v145 + 16))
      {
        goto LABEL_142;
      }

      v29 = *(v144 + 8 * v26);
      swift_unknownObjectRetain();
      v4 = (v26 + 1);
      if (__OFADD__(v26, 1))
      {
        goto LABEL_141;
      }
    }

    if (v24)
    {
      v30 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v30 = *((v134 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v26 == v30)
    {
      swift_unknownObjectRelease();
      return 1;
    }

    if ((v134 & 0xC000000000000001) != 0)
    {
      v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v26 >= *((v134 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_143;
      }

      v31 = *(v134 + 32 + 8 * v26);
      swift_unknownObjectRetain();
    }

    v3 = v29 | v31;
    v32 = v29;
    v33 = v31;
    v34 = v33;
    if (!(v29 | v31))
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      goto LABEL_35;
    }

    if (v32)
    {
      v35 = v31 == 0;
    }

    else
    {
      v35 = 0;
    }

    v36 = v35;
    if (v33)
    {
      v37 = v29 == 0;
    }

    else
    {
      v37 = 0;
    }

    if (v37 || (v36 & 1) != 0 || (v38 = [v32 muid], v38 != objc_msgSend(v34, "muid")))
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      return 0;
    }

    v141 = v4;
    v39 = [v32 title];
    v40 = [v34 title];
    v41 = v39 | v40;
    v42 = v39;
    v43 = v40;
    if (v41)
    {
      v44 = [v42 isEqual:v43];

      if (!v44)
      {
        goto LABEL_135;
      }
    }

    v45 = v2;
    v142 = v42;
    v143 = v43;
    v46 = [v32 summary];
    v47 = [v34 summary];
    v48 = v46;
    v49 = v47;
    if (v46 | v47)
    {
      v50 = [v48 isEqual:v49];

      if ((v50 & 1) == 0)
      {

        v42 = v142;
        v43 = v143;
LABEL_135:
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        goto LABEL_137;
      }
    }

    v140 = v48;
    v51 = [v32 fullDescription];
    v52 = [v34 fullDescription];
    v53 = v51 | v52;
    v54 = v51;
    v43 = v52;
    if (v53)
    {
      v55 = [v54 isEqual:v43];

      if (!v55)
      {
        break;
      }
    }

    v139 = v43;
    v56 = [v32 messageForRoutePlanning];
    v57 = [v34 messageForRoutePlanning];
    v58 = v56 | v57;
    v59 = v56;
    v60 = v57;
    v138 = v60;
    if (v58)
    {
      v61 = v60;
      v62 = [v59 isEqual:v60];

      if (!v62)
      {
        v96 = v59;
        v98 = v54;
        v99 = v143;
        v3 = 0;
        v100 = v133;
        v2 = v45;
        goto LABEL_99;
      }
    }

    v137 = v49;
    v63 = [v32 messageForRouteStepping];
    v64 = [v34 messageForRouteStepping];
    v65 = v63;
    v66 = v64;
    v136 = v66;
    if (!(v63 | v64) || (v67 = v66, v68 = [v65 isEqual:v66], v65, v67, v68))
    {
      v69 = [v32 messageForNonRoutable];
      v70 = [v34 messageForNonRoutable];
      v135 = v69;
      v71 = v70;
      v130 = v71;
      if (!(v69 | v70) || (v72 = v71, v73 = [v135 isEqual:v71], v135, v72, v73))
      {
        v74 = [v32 startDate];
        v75 = [v34 startDate];
        v128 = v74;
        v76 = v75;
        v127 = v76;
        if (v74 | v75)
        {
          v77 = v76;
          v78 = [v128 isEqual:v76];

          if (!v78)
          {
            v96 = v59;
            v98 = v54;
            v99 = v143;
            v3 = 0;
            v2 = v129;
            v100 = v133;
            v49 = v137;
            goto LABEL_96;
          }
        }

        v79 = [v32 endDate];
        v80 = [v34 endDate];
        v126 = v79;
        v81 = v80;
        v125 = v81;
        if (v79 | v80 && (v82 = v81, v83 = [v126 isEqual:v81], v126, v82, !v83) || (v84 = objc_msgSend(v32, "iconType"), v84 != objc_msgSend(v34, "iconType")))
        {
          v96 = v59;
          v98 = v54;
          v99 = v143;
          v3 = 0;
          v2 = v129;
          v100 = v133;
          v49 = v137;
          goto LABEL_95;
        }

        v85 = [v32 creationDate];
        v86 = [v34 creationDate];
        v124 = v85;
        v87 = v86;
        v123 = v87;
        if (v85 | v86)
        {
          v88 = v87;
          v89 = [v124 isEqual:v87];

          if (!v89)
          {
            v96 = v59;
            v98 = v54;
            v99 = v143;
            v3 = 0;
            v2 = v129;
            v100 = v133;
            v49 = v137;
            goto LABEL_94;
          }
        }

        v90 = [v32 lastUpdated];
        v91 = [v34 lastUpdated];
        v92 = v90;
        v93 = v91;
        v121 = v93;
        v122 = v92;
        if (v90 | v91)
        {
          v94 = v93;
          v95 = [v92 isEqual:v93];

          if (!v95)
          {
            v96 = v59;
            v98 = v54;
            v99 = v143;
            v3 = 0;
            v2 = v129;
            v100 = v133;
            v49 = v137;
            goto LABEL_93;
          }
        }

        v96 = v59;
        v97 = [v32 isBlockingIncident];
        v5 = v97 == [v34 isBlockingIncident];
        v2 = v129;
        v49 = v137;
        v98 = v54;
        if (!v5)
        {
          v99 = v143;
          v3 = 0;
          v100 = v133;
          goto LABEL_93;
        }

        v117 = v65;
        v101 = [v32 affectedEntities];
        v102 = [v34 affectedEntities];
        v119 = v101;
        v103 = v102;
        v104 = &stru_1016179A0;
        v120 = v103;
        if (!(v101 | v102))
        {
          v99 = v143;
          v3 = 1;
          goto LABEL_89;
        }

        v105 = v101;
        v99 = v143;
        v3 = 0;
        if (v119)
        {
          v106 = v102 == 0;
        }

        else
        {
          v106 = 0;
        }

        v107 = v106;
        if (v103)
        {
          v108 = v105 == 0;
        }

        else
        {
          v108 = 0;
        }

        if (!v108)
        {
          v100 = v133;
          v2 = v129;
          if (v107)
          {
            goto LABEL_90;
          }

          v109 = [v119 count];
          if (v109 == [v103 count])
          {
            v153 = 0u;
            v154 = 0u;
            v151 = 0u;
            v152 = 0u;
            obj = v119;
            v110 = [obj countByEnumeratingWithState:&v151 objects:v150 count:16];
            if (v110)
            {
              v111 = v110;
              v112 = 0;
              v118 = *v152;
              while (2)
              {
                for (i = 0; i != v111; i = i + 1)
                {
                  if (*v152 != v118)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v114 = *(*(&v151 + 1) + 8 * i);
                  v115 = [v120 objectAtIndexedSubscript:v112];
                  LODWORD(v114) = sub_10040889C(v115, v114, v115);

                  if (!v114)
                  {
                    v3 = 0;
                    goto LABEL_124;
                  }

                  ++v112;
                }

                v111 = [obj countByEnumeratingWithState:&v151 objects:v150 count:16];
                if (v111)
                {
                  continue;
                }

                break;
              }

              v3 = 1;
LABEL_124:
              v2 = v129;
              v99 = v143;
              v49 = v137;
            }

            else
            {
              v3 = 1;
              v2 = v129;
            }

            v100 = v133;
LABEL_90:

            v65 = v117;
LABEL_93:

LABEL_94:
LABEL_95:

LABEL_96:
LABEL_97:

            goto LABEL_98;
          }

          v3 = 0;
        }

LABEL_89:
        v100 = v133;
        v2 = v129;
        goto LABEL_90;
      }

      v96 = v59;
      v98 = v54;
      v99 = v143;
      v3 = 0;
      v2 = v129;
      v100 = v133;
      v49 = v137;
      goto LABEL_97;
    }

    v96 = v59;
    v98 = v54;
    v99 = v143;
    v3 = 0;
    v2 = v129;
    v100 = v133;
    v49 = v137;
LABEL_98:

LABEL_99:
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    v25 = v131;
    v24 = v132;
    v4 = v141;
    v27 = v100;
    if (!v3)
    {
      return 0;
    }

LABEL_35:
    result = 1;
    v26 = v4;
    if (v4 == v25)
    {
      return result;
    }
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

LABEL_137:
  return 0;
}

uint64_t sub_10040836C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&unk_10190A800);
  __chkstk_darwin(v4 - 8);
  v6 = &v26 - v5;
  v7 = sub_1000CE6B8(&qword_1019205A0);
  __chkstk_darwin(v7 - 8);
  v9 = &v26 - v8;
  v10 = type metadata accessor for DateComponents();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = round(a1 / 60.0);
  if (v14 == INFINITY)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v14 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v14 >= 9.22337204e18)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v14 <= 1)
  {
    a1 = 1;
  }

  else
  {
    a1 = v14;
  }

  v15 = round(a2 / 60.0);
  if (v15 == INFINITY)
  {
    goto LABEL_21;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v15 >= 9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  a2 = v15;
  if (__OFSUB__(v15, a1))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v15 - a1 >= 2)
  {
    v10 = "lane mode is enabled";
    v13 = 0x8000000101236930;
    if (qword_101906768 == -1)
    {
LABEL_13:
      v27._object = v13;
      v16._countAndFlagsBits = 0x259380E264243125;
      v16._object = 0xAF6E696D20642432;
      v17._object = (v10 | 0x8000000000000000);
      v17._countAndFlagsBits = 0xD000000000000034;
      v27._countAndFlagsBits = 0x1000000000000047;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v17, 0, qword_1019600D8, v16, v27);
      sub_1000CE6B8(&unk_10190D5C0);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1011E1D60;
      *(v18 + 56) = &type metadata for Int;
      *(v18 + 64) = &protocol witness table for Int;
      *(v18 + 32) = a1;
      *(v18 + 96) = &type metadata for Int;
      *(v18 + 104) = &protocol witness table for Int;
      *(v18 + 72) = a2;
      v19 = String.init(format:_:)();

      return v19;
    }

LABEL_25:
    swift_once();
    goto LABEL_13;
  }

  v20 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  [v20 setUnitsStyle:2];
  [v20 setAllowedUnits:64];
  v21 = type metadata accessor for Calendar();
  (*(*(v21 - 8) + 56))(v9, 1, 1, v21);
  v22 = type metadata accessor for TimeZone();
  (*(*(v22 - 8) + 56))(v6, 1, 1, v22);
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  DateComponents.minute.setter();
  isa = DateComponents._bridgeToObjectiveC()().super.isa;
  v24 = [v20 stringFromDateComponents:isa];

  if (v24)
  {
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v11 + 8))(v13, v10);
  }

  else
  {
    (*(v11 + 8))(v13, v10);

    return 0;
  }

  return v19;
}

BOOL sub_10040889C(id a1, GEOTransitIncidentEntity *a2, GEOTransitIncidentEntity *a3)
{
  v5 = a2 | a3;
  v6 = a2;
  v7 = a3;
  v8 = v6;
  v9 = v7;
  if (v5)
  {
    if ((a2 == 0) == (a3 == 0) && (v11 = [(GEOTransitIncidentEntity *)v8 muid], v11 == [(GEOTransitIncidentEntity *)v9 muid]) && (v12 = [(GEOTransitIncidentEntity *)v8 hasNextStopIDs], v12 == [(GEOTransitIncidentEntity *)v9 hasNextStopIDs]))
    {
      v14 = [(GEOTransitIncidentEntity *)v8 nextStopIDs];
      v15 = [(GEOTransitIncidentEntity *)v9 nextStopIDs];
      v16 = v14 | v15;
      v17 = v14;
      v18 = v15;
      if (v16)
      {
        v10 = [v17 isEqual:v18];
      }

      else
      {
        v10 = 1;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

uint64_t sub_1004089DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  *&v17[0] = v3;
  sub_10040A734(&qword_10190B430, type metadata accessor for UserProfileDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = v3 + OBJC_IVAR____TtC4Maps23UserProfileDataProvider__state;
  v5 = *(v3 + OBJC_IVAR____TtC4Maps23UserProfileDataProvider__state);
  v6 = *(v3 + OBJC_IVAR____TtC4Maps23UserProfileDataProvider__state + 16);
  v17[2] = *(v3 + OBJC_IVAR____TtC4Maps23UserProfileDataProvider__state + 32);
  v17[0] = v5;
  v17[1] = v6;
  v7 = *(v3 + OBJC_IVAR____TtC4Maps23UserProfileDataProvider__state + 48);
  v8 = *(v3 + OBJC_IVAR____TtC4Maps23UserProfileDataProvider__state + 64);
  v9 = *(v3 + OBJC_IVAR____TtC4Maps23UserProfileDataProvider__state + 80);
  *(v18 + 14) = *(v3 + OBJC_IVAR____TtC4Maps23UserProfileDataProvider__state + 94);
  v17[4] = v8;
  v18[0] = v9;
  v17[3] = v7;
  v10 = *(v3 + OBJC_IVAR____TtC4Maps23UserProfileDataProvider__state + 16);
  *a2 = *(v3 + OBJC_IVAR____TtC4Maps23UserProfileDataProvider__state);
  *(a2 + 16) = v10;
  v11 = *(v4 + 32);
  v12 = *(v4 + 48);
  v13 = *(v4 + 64);
  v14 = *(v4 + 80);
  *(a2 + 94) = *(v4 + 94);
  *(a2 + 64) = v13;
  *(a2 + 80) = v14;
  *(a2 + 32) = v11;
  *(a2 + 48) = v12;
  return sub_10011243C(v17, v16);
}

uint64_t sub_100408AE8()
{
  swift_getKeyPath();
  sub_10040A734(&qword_10190B430, type metadata accessor for UserProfileDataProvider);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100408BD4()
{
  swift_getKeyPath();
  sub_10040A734(&qword_10190B9D0, type metadata accessor for UserProfileViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 56);
  v2 = *(v1 + 16);

  if (v2)
  {
    v4 = 0;
    v5 = (v1 + 32);
    v6 = _swiftEmptyArrayStorage;
    while (v4 < *(v1 + 16))
    {
      v7 = *v5;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1003560FC(0, *(v6 + 2) + 1, 1, v6);
        v6 = result;
      }

      v9 = *(v6 + 2);
      v8 = *(v6 + 3);
      if (v9 >= v8 >> 1)
      {
        result = sub_1003560FC((v8 > 1), v9 + 1, 1, v6);
        v6 = result;
      }

      ++v4;
      *(v6 + 2) = v9 + 1;
      *&v6[8 * v9 + 32] = v7;
      v5 += 3;
      if (v2 == v4)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
LABEL_11:

    return v6;
  }

  return result;
}

uint64_t sub_100408D48@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  v10 = v1;
  sub_10040A734(&qword_10190B9D0, type metadata accessor for UserProfileViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = v1[2];
  v4 = v10[3];
  v5 = v10[4];
  v6 = v10[5];
  v8 = v10[6];
  v7 = v10[7];
  sub_100142614(v3, v4, v5, v6, v8);
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v8;
  a1[5] = v7;
}

uint64_t sub_100408E68(const char *a1, uint64_t a2, void *a3)
{
  v6 = v3;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, a1, v9, 2u);
  }

  swift_getKeyPath();
  sub_10040A734(&qword_10190B9D0, type metadata accessor for UserProfileViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = *(v6 + *a3);
  if (v11)
  {

    v11(v6);
    return sub_1000588AC(v11);
  }

  return result;
}

uint64_t sub_100408FC4(uint64_t a1)
{
  v2 = v1;

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = a1;

    _os_log_impl(&_mh_execute_header, v4, v5, "Did select link of type %ld", v6, 0xCu);
  }

  else
  {
  }

  swift_getKeyPath();
  sub_10040A734(&qword_10190B9D0, type metadata accessor for UserProfileViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = *(v2 + OBJC_IVAR____TtC4Maps20UserProfileViewModel__onSelectLink);
  if (v8)
  {

    v8(v2, a1);
    return sub_1000588AC(v8);
  }

  return result;
}

uint64_t sub_100409150(void *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v11[0] = *a2;
  v11[1] = v2;
  v3 = *(a2 + 40);
  v12 = *(a2 + 32);
  v13 = v3;
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  *(a1 + 1) = v11[0];
  *(a1 + 2) = v2;
  *(a1 + 3) = *(a2 + 32);
  sub_10040A610(v11, v10);
  sub_10040A66C(&v13, v10);
  sub_10040A6DC(v4, v5, v6, v7, v8);
}

uint64_t sub_100409290(uint64_t a1, void *a2, void (*a3)(void, void))
{
  swift_getKeyPath();
  sub_10040A734(&qword_10190B9D0, type metadata accessor for UserProfileViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = (v3 + *a2);
  v7 = *v6;
  a3(*v6, v6[1]);
  return v7;
}

uint64_t sub_100409358@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10040A734(&qword_10190B9D0, type metadata accessor for UserProfileViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC4Maps20UserProfileViewModel__onSignIntoAccount);
  v5 = *(v3 + OBJC_IVAR____TtC4Maps20UserProfileViewModel__onSignIntoAccount + 8);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1000D8864;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4);
}

uint64_t sub_100409450(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1000D882C;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v1);
  sub_10040A734(&qword_10190B9D0, type metadata accessor for UserProfileViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

uint64_t sub_10040961C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10040A734(&qword_10190B9D0, type metadata accessor for UserProfileViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC4Maps20UserProfileViewModel__onClose);
  v5 = *(v3 + OBJC_IVAR____TtC4Maps20UserProfileViewModel__onClose + 8);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1001012EC;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4);
}

uint64_t sub_100409714(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1001012CC;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v1);
  sub_10040A734(&qword_10190B9D0, type metadata accessor for UserProfileViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

uint64_t sub_1004098B8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  v7 = (a1 + *a4);
  v8 = *v7;
  v9 = v7[1];
  *v7 = a2;
  v7[1] = a3;
  a5(a2, a3);
  return a6(v8, v9);
}

void *sub_100409918()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC4Maps20UserProfileViewModel__onSelectLink);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR____TtC4Maps20UserProfileViewModel__onSignIntoAccount);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + OBJC_IVAR____TtC4Maps20UserProfileViewModel__onClose);
  *v4 = 0;
  v4[1] = 0;
  ObservationRegistrar.init()();
  v5 = [objc_allocWithZone(type metadata accessor for UserProfileDataProvider()) init];
  v6 = [objc_allocWithZone(type metadata accessor for UserAccountInformationDataProvider()) init];
  v1[8] = v5;
  v1[9] = v6;
  v7 = qword_101906820;
  v8 = v5;
  v9 = v6;
  if (v7 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  v11 = sub_100021540(v10, qword_1019205A8);
  (*(*(v10 - 8) + 16))(v1 + OBJC_IVAR____TtC4Maps20UserProfileViewModel_logger, v11, v10);
  swift_getKeyPath();
  *&v31[0] = v9;
  sub_10040A734(&qword_10190D008, type metadata accessor for UserAccountInformationDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = &v9[OBJC_IVAR____TtC4Maps34UserAccountInformationDataProvider__state];
  if (v9[OBJC_IVAR____TtC4Maps34UserAccountInformationDataProvider__state] == 1)
  {
    v18 = v17[4];
    v16 = v17[5];
    v20 = v17[2];
    v19 = v17[3];
    v21 = v17[1];
    if (v20)
    {
      v12 = v21;
    }

    else
    {
      v12 = 0;
    }

    if (v20)
    {
      v13 = v20;
    }

    else
    {
      v13 = 0xE000000000000000;
    }

    if (v18)
    {
      v14 = v19;
    }

    else
    {
      v14 = 0;
    }

    if (v18)
    {
      v15 = v18;
    }

    else
    {
      v15 = 0xE000000000000000;
    }

    v22 = v16;
  }

  swift_getKeyPath();
  *&v31[0] = v8;
  sub_10040A734(&qword_10190B430, type metadata accessor for UserProfileDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v24 = *&v8[OBJC_IVAR____TtC4Maps23UserProfileDataProvider__state + 16];
  v23 = *&v8[OBJC_IVAR____TtC4Maps23UserProfileDataProvider__state + 32];
  v31[0] = *&v8[OBJC_IVAR____TtC4Maps23UserProfileDataProvider__state];
  v31[1] = v24;
  v31[2] = v23;
  v26 = *&v8[OBJC_IVAR____TtC4Maps23UserProfileDataProvider__state + 64];
  v25 = *&v8[OBJC_IVAR____TtC4Maps23UserProfileDataProvider__state + 80];
  v27 = *&v8[OBJC_IVAR____TtC4Maps23UserProfileDataProvider__state + 48];
  *(v32 + 14) = *&v8[OBJC_IVAR____TtC4Maps23UserProfileDataProvider__state + 94];
  v31[4] = v26;
  v32[0] = v25;
  v31[3] = v27;
  sub_10011243C(v31, v30);
  v28 = sub_10040A77C(v31);
  sub_100112474(v31);
  v1[2] = v12;
  v1[3] = v13;
  v1[4] = v14;
  v1[5] = v15;
  v1[6] = v16;
  v1[7] = v28;
  sub_100409C24();

  return v1;
}

uint64_t sub_100409C24()
{
  v0 = Logger.logObject.getter();
  v1 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v0, v1, "Observing proviers for content", v2, 2u);
  }

  withObservationTracking<A>(_:onChange:)();
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_10040A734(&qword_10190B9D0, type metadata accessor for UserProfileViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  v9[0] = v5;
  v9[1] = v6;
  v10 = v7;
  sub_10040AB7C(v9);
  v11 = v8;
  sub_10040ABD0(&v11);
}

uint64_t sub_100409E10@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Calculating current content state", v6, 2u);
  }

  v7 = *(v2 + 72);
  swift_getKeyPath();
  *&v28[0] = v7;
  sub_10040A734(&qword_10190D008, type metadata accessor for UserAccountInformationDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = (v7 + OBJC_IVAR____TtC4Maps34UserAccountInformationDataProvider__state);
  if (*(v7 + OBJC_IVAR____TtC4Maps34UserAccountInformationDataProvider__state) == 1)
  {
    v9 = v8[4];
    v10 = v8[5];
    v12 = v8[2];
    v11 = v8[3];
    v13 = v8[1];
    if (v12)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v12)
    {
      v15 = v12;
    }

    else
    {
      v15 = 0xE000000000000000;
    }

    if (v9)
    {
      v16 = v11;
    }

    else
    {
      v16 = 0;
    }

    if (v9)
    {
      v17 = v9;
    }

    else
    {
      v17 = 0xE000000000000000;
    }

    v18 = v10;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v10 = 0;
  }

  v19 = *(v2 + 64);
  swift_getKeyPath();
  *&v28[0] = v19;
  sub_10040A734(&qword_10190B430, type metadata accessor for UserProfileDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v21 = *(v19 + OBJC_IVAR____TtC4Maps23UserProfileDataProvider__state + 16);
  v20 = *(v19 + OBJC_IVAR____TtC4Maps23UserProfileDataProvider__state + 32);
  v28[0] = *(v19 + OBJC_IVAR____TtC4Maps23UserProfileDataProvider__state);
  v28[1] = v21;
  v28[2] = v20;
  v23 = *(v19 + OBJC_IVAR____TtC4Maps23UserProfileDataProvider__state + 64);
  v22 = *(v19 + OBJC_IVAR____TtC4Maps23UserProfileDataProvider__state + 80);
  v24 = *(v19 + OBJC_IVAR____TtC4Maps23UserProfileDataProvider__state + 48);
  *(v29 + 14) = *(v19 + OBJC_IVAR____TtC4Maps23UserProfileDataProvider__state + 94);
  v28[4] = v23;
  v29[0] = v22;
  v28[3] = v24;
  sub_10011243C(v28, v27);
  v25 = sub_10040A77C(v28);
  result = sub_100112474(v28);
  *a1 = v14;
  a1[1] = v15;
  a1[2] = v16;
  a1[3] = v17;
  a1[4] = v10;
  a1[5] = v25;
  return result;
}

uint64_t sub_10040A084(uint64_t a1)
{
  v2 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  type metadata accessor for MainActor();

  v6 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  v7[4] = a1;
  sub_10020AAE4(0, 0, v4, &unk_101204F78, v7);
}

uint64_t sub_10040A1A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10040A240, v6, v5);
}

uint64_t sub_10040A240()
{

  sub_100409C24();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10040A2A4()
{
  sub_10040A6DC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  v1 = OBJC_IVAR____TtC4Maps20UserProfileViewModel_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1000588AC(*(v0 + OBJC_IVAR____TtC4Maps20UserProfileViewModel__onSelectLink));
  sub_1000588AC(*(v0 + OBJC_IVAR____TtC4Maps20UserProfileViewModel__onSignIntoAccount));
  sub_1000588AC(*(v0 + OBJC_IVAR____TtC4Maps20UserProfileViewModel__onClose));
  v3 = OBJC_IVAR____TtC4Maps20UserProfileViewModel___observationRegistrar;
  v4 = type metadata accessor for ObservationRegistrar();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_10040A3A8()
{
  sub_10040A2A4();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for UserProfileViewModel()
{
  result = qword_101920610;
  if (!qword_101920610)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10040A454()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ObservationRegistrar();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10040A548()
{
  v0 = type metadata accessor for Logger();
  sub_100021578(v0, qword_1019205A8);
  sub_100021540(v0, qword_1019205A8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10040A66C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_10190C7E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_10040A6DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {
  }
}

uint64_t sub_10040A734(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *sub_10040A77C(uint64_t *a1)
{
  if ((a1[12] & 1) == 0)
  {
    v4 = _swiftEmptyArrayStorage;
    if ((*(a1 + 98) & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v3 = *a1;
  v2 = a1[1];

  v4 = sub_100355FDC(0, 1, 1, _swiftEmptyArrayStorage);
  v6 = *(v4 + 2);
  v5 = *(v4 + 3);
  if (v6 >= v5 >> 1)
  {
    v4 = sub_100355FDC((v5 > 1), v6 + 1, 1, v4);
  }

  *(v4 + 2) = v6 + 1;
  v7 = &v4[24 * v6];
  *(v7 + 4) = 0;
  *(v7 + 5) = v3;
  *(v7 + 6) = v2;
  if (*(a1 + 98))
  {
LABEL_7:
    v9 = a1[4];
    v8 = a1[5];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_100355FDC(0, *(v4 + 2) + 1, 1, v4);
    }

    v11 = *(v4 + 2);
    v10 = *(v4 + 3);
    if (v11 >= v10 >> 1)
    {
      v4 = sub_100355FDC((v10 > 1), v11 + 1, 1, v4);
    }

    *(v4 + 2) = v11 + 1;
    v12 = &v4[24 * v11];
    *(v12 + 4) = 1;
    *(v12 + 5) = v9;
    *(v12 + 6) = v8;
  }

LABEL_12:
  if (*(a1 + 97))
  {
    v14 = a1[2];
    v13 = a1[3];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_100355FDC(0, *(v4 + 2) + 1, 1, v4);
    }

    v16 = *(v4 + 2);
    v15 = *(v4 + 3);
    if (v16 >= v15 >> 1)
    {
      v4 = sub_100355FDC((v15 > 1), v16 + 1, 1, v4);
    }

    *(v4 + 2) = v16 + 1;
    v17 = &v4[24 * v16];
    *(v17 + 4) = 5;
    *(v17 + 5) = v14;
    *(v17 + 6) = v13;
    if ((*(a1 + 100) & 1) == 0)
    {
LABEL_14:
      if ((*(a1 + 99) & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_27;
    }
  }

  else if ((*(a1 + 100) & 1) == 0)
  {
    goto LABEL_14;
  }

  v19 = a1[8];
  v18 = a1[9];

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_100355FDC(0, *(v4 + 2) + 1, 1, v4);
  }

  v21 = *(v4 + 2);
  v20 = *(v4 + 3);
  if (v21 >= v20 >> 1)
  {
    v4 = sub_100355FDC((v20 > 1), v21 + 1, 1, v4);
  }

  *(v4 + 2) = v21 + 1;
  v22 = &v4[24 * v21];
  *(v22 + 4) = 3;
  *(v22 + 5) = v19;
  *(v22 + 6) = v18;
  if ((*(a1 + 99) & 1) == 0)
  {
LABEL_15:
    if ((*(a1 + 101) & 1) == 0)
    {
      return v4;
    }

    goto LABEL_32;
  }

LABEL_27:
  v24 = a1[6];
  v23 = a1[7];

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_100355FDC(0, *(v4 + 2) + 1, 1, v4);
  }

  v26 = *(v4 + 2);
  v25 = *(v4 + 3);
  if (v26 >= v25 >> 1)
  {
    v4 = sub_100355FDC((v25 > 1), v26 + 1, 1, v4);
  }

  *(v4 + 2) = v26 + 1;
  v27 = &v4[24 * v26];
  *(v27 + 4) = 2;
  *(v27 + 5) = v24;
  *(v27 + 6) = v23;
  if (*(a1 + 101))
  {
LABEL_32:
    v29 = a1[10];
    v28 = a1[11];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_100355FDC(0, *(v4 + 2) + 1, 1, v4);
    }

    v31 = *(v4 + 2);
    v30 = *(v4 + 3);
    if (v31 >= v30 >> 1)
    {
      v4 = sub_100355FDC((v30 > 1), v31 + 1, 1, v4);
    }

    *(v4 + 2) = v31 + 1;
    v32 = &v4[24 * v31];
    *(v32 + 4) = 4;
    *(v32 + 5) = v29;
    *(v32 + 6) = v28;
  }

  return v4;
}

double sub_10040AAFC@<D0>(_OWORD *a1@<X8>)
{
  sub_100409E10(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

uint64_t sub_10040ABD0(uint64_t a1)
{
  v2 = sub_1000CE6B8(&qword_10190C7E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10040AC40(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003AC4C;

  return sub_10040A1A8(a1, v4, v5, v6);
}

id sub_10040AD10()
{
  result = [objc_allocWithZone(type metadata accessor for RAPAvailabilityProvider()) init];
  qword_101960280 = result;
  return result;
}

uint64_t sub_10040AE28(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_10040C4B0();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + *a2);
}

uint64_t sub_10040AE98@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_10040C4B0();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t sub_10040AF1C(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10040C4B0();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_10040AFF0()
{
  swift_getKeyPath();
  sub_10040C4B0();
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_10040B06C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10040C4B0();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC4Maps23RAPAvailabilityProvider__currentTask);
}

uint64_t sub_10040B0F0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC4Maps23RAPAvailabilityProvider__currentTask;
  if (!*(v1 + OBJC_IVAR____TtC4Maps23RAPAvailabilityProvider__currentTask))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10040C4B0();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = static Task.== infix(_:_:)();

  if ((v4 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + v3) = a1;
}

id sub_10040B250()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC4Maps23RAPAvailabilityProvider__currentTask] = 0;
  ObservationRegistrar.init()();
  v0[OBJC_IVAR____TtC4Maps23RAPAvailabilityProvider__isRAPAvailable] = 0;
  v0[OBJC_IVAR____TtC4Maps23RAPAvailabilityProvider__hasFetchedAvailability] = 0;
  v10.receiver = v0;
  v10.super_class = ObjectType;
  v2 = objc_msgSendSuper2(&v10, "init");
  v3 = qword_101906718;
  v4 = v2;
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100021540(v5, qword_10195FFE8);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "RAPAvailabilityProvider initialized", v8, 2u);
  }

  sub_10040B39C();
  return v4;
}

void sub_10040B39C()
{
  v1 = v0;
  if (qword_101906718 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100021540(v2, qword_10195FFE8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Setting up notification observer for GEOUserAccountInfoDidChange", v5, 2u);
  }

  v6 = [objc_opt_self() defaultCenter];
  [v6 addObserver:v1 selector:"userAccountInfoDidChange" name:GEOUserAccountInfoDidChangeNotification object:0];
}

void sub_10040B504()
{
  if (qword_101906718 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100021540(v0, qword_10195FFE8);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Prewarming RAP availability check", v3, 2u);
  }

  sub_10040B5F0();
}

void sub_10040B5F0()
{
  v1 = v0;
  v2 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  swift_getKeyPath();
  v13 = v0;
  sub_10040C4B0();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v0[OBJC_IVAR____TtC4Maps23RAPAvailabilityProvider__hasFetchedAvailability] == 1)
  {
    if (qword_101906718 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100021540(v5, qword_10195FFE8);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Has already fetched availability, skipping recalculation", v8, 2u);
    }
  }

  else
  {
    swift_getKeyPath();
    v13 = v0;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*&v0[OBJC_IVAR____TtC4Maps23RAPAvailabilityProvider__currentTask])
    {

      Task.cancel()();
    }

    v9 = type metadata accessor for TaskPriority();
    (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v1;
    v1;
    v11 = sub_10020AAE4(0, 0, v4, &unk_101205078, v10);
    sub_10040B0F0(v11);
  }
}

id sub_10040B8D0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if (qword_101906718 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100021540(v3, qword_10195FFE8);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "RAPAvailabilityProvider deinitializing", v6, 2u);
  }

  v7 = [objc_opt_self() defaultCenter];
  [v7 removeObserver:v1];

  v9.receiver = v1;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, "dealloc");
}

uint64_t type metadata accessor for RAPAvailabilityProvider()
{
  result = qword_101920718;
  if (!qword_101920718)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10040BB0C()
{
  v1 = v0;
  if (qword_101906718 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100021540(v2, qword_10195FFE8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "User account info changed, recalculating RAP availability", v5, 2u);
  }

  if (*(v1 + OBJC_IVAR____TtC4Maps23RAPAvailabilityProvider__hasFetchedAvailability))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10040C4B0();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC4Maps23RAPAvailabilityProvider__hasFetchedAvailability) = 0;
  }

  sub_10040B5F0();
}

uint64_t sub_10040BCF4()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10040BDBC()
{
  *(v0 + 40) = sub_1007413AC();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();
  *(v0 + 32) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10040BE68, v2, v1);
}

uint64_t sub_10040BE68()
{
  v1 = *(v0 + 40);

  sub_10040BF20(v0 + 16, v1);
  swift_unknownObjectWeakDestroy();

  return _swift_task_switch(sub_1003E8D84, 0, 0);
}

void sub_10040BF20(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (static Task<>.isCancelled.getter())
    {
      if (qword_101906718 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_100021540(v5, qword_10195FFE8);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v6, v7, "RAP availability calculation task was cancelled", v8, 2u);
      }
    }

    else
    {
      swift_getKeyPath();
      sub_10040C4B0();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v13 = OBJC_IVAR____TtC4Maps23RAPAvailabilityProvider__isRAPAvailable;
      if (v4[OBJC_IVAR____TtC4Maps23RAPAvailabilityProvider__isRAPAvailable] == (a2 & 1))
      {
        if (qword_101906718 != -1)
        {
          swift_once();
        }

        v20 = type metadata accessor for Logger();
        sub_100021540(v20, qword_10195FFE8);
        v21 = Logger.logObject.getter();
        v22 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          *v23 = 67109120;
          *(v23 + 4) = a2 & 1;
          _os_log_impl(&_mh_execute_header, v21, v22, "RAP availability unchanged: %{BOOL}d", v23, 8u);
        }
      }

      else
      {
        if (qword_101906718 != -1)
        {
          swift_once();
        }

        v14 = type metadata accessor for Logger();
        sub_100021540(v14, qword_10195FFE8);
        v15 = v4;
        v16 = Logger.logObject.getter();
        v17 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = v15;
          v19 = swift_slowAlloc();
          *v19 = 67109376;
          swift_getKeyPath();
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          *(v19 + 4) = v4[v13];

          *(v19 + 8) = 1024;
          *(v19 + 10) = a2 & 1;
          _os_log_impl(&_mh_execute_header, v16, v17, "RAP availability changed from %{BOOL}d to %{BOOL}d", v19, 0xEu);
        }

        else
        {

          v16 = v15;
        }

        if (v4[v13] == (a2 & 1))
        {
          v4[v13] = a2 & 1;
        }

        else
        {
          KeyPath = swift_getKeyPath();
          __chkstk_darwin(KeyPath);
          ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
        }
      }

      if (v4[OBJC_IVAR____TtC4Maps23RAPAvailabilityProvider__hasFetchedAvailability] == 1)
      {
        v4[OBJC_IVAR____TtC4Maps23RAPAvailabilityProvider__hasFetchedAvailability] = 1;
      }

      else
      {
        v25 = swift_getKeyPath();
        __chkstk_darwin(v25);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }
    }
  }

  else
  {
    if (qword_101906718 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100021540(v9, qword_10195FFE8);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Self deallocated during RAP availability calculation", v12, 2u);
    }
  }
}

unint64_t sub_10040C4B0()
{
  result = qword_101920728;
  if (!qword_101920728)
  {
    type metadata accessor for RAPAvailabilityProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101920728);
  }

  return result;
}

uint64_t sub_10040C508(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003AC4C;

  return sub_10040BD9C(a1, v4, v5, v6);
}

uint64_t sub_10040C5BC()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC4Maps23RAPAvailabilityProvider__currentTask) = *(v0 + 24);
}

void *sub_10040C660@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_10040C680(uint64_t a1, __int16 a2)
{
  switch(HIBYTE(a2))
  {
    case 2u:
      if ((a2 & 1) == 0)
      {
        sub_1000CE6B8(&unk_10190D5C0);
        v10 = swift_allocObject();
        *(v10 + 16) = xmmword_1011E1D30;
        *(v10 + 56) = &type metadata for Int;
        *(v10 + 64) = &protocol witness table for Int;
        *(v10 + 32) = a1;
        v11 = static String.localizedStringWithFormat(_:_:)();

        return v11;
      }

      return 0;
    case 3u:
      return 0;
    case 4u:
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v2.super.isa = qword_1019600D8;
      v12 = 0x8000000101236DD0;
      v3 = 0x6961764120746F4ELL;
      v4 = 0xED0000656C62616CLL;
      v5 = 0xD000000000000023;
      v6 = 0x8000000101236DA0;
      v7 = 0xD00000000000005ELL;
      break;
    default:
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v2.super.isa = qword_1019600D8;
      v12 = 0x8000000101236E50;
      v6 = 0x8000000101236E30;
      v7 = 0xD00000000000006FLL;
      v5 = 0xD00000000000001DLL;
      v3 = 6710863;
      v4 = 0xE300000000000000;
      break;
  }

  return NSLocalizedString(_:tableName:bundle:value:comment:)(*&v5, 0, v2, *&v3, *&v7)._countAndFlagsBits;
}

void sub_10040C878(uint64_t a1, Swift::UInt a2, unsigned int a3)
{
  v3 = BYTE1(a3);
  if (BYTE1(a3) == 3)
  {
    goto LABEL_4;
  }

  if (BYTE1(a3) == 4)
  {
    Hasher._combine(_:)(2uLL);
LABEL_4:
    v4 = 0;
LABEL_5:
    Hasher._combine(_:)(v4);
    return;
  }

  Hasher._combine(_:)(1uLL);
  if (a3)
  {
    Hasher._combine(_:)(0);
    if (v3 != 2)
    {
LABEL_8:
      Hasher._combine(_:)(1u);
      v4 = (a3 >> 8) & 1;
      goto LABEL_5;
    }
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(a2);
    if (v3 != 2)
    {
      goto LABEL_8;
    }
  }

  Hasher._combine(_:)(0);
}

Swift::Int sub_10040C91C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  sub_10040C878(v4, v1, v2);
  return Hasher._finalize()();
}

Swift::Int sub_10040C978()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  sub_10040C878(v4, v1, v2);
  return Hasher._finalize()();
}

uint64_t sub_10040C9DC()
{
  v1[5] = v0;
  type metadata accessor for MainActor();
  v1[6] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[7] = v3;
  v1[8] = v2;

  return _swift_task_switch(sub_10040CA74, v3, v2);
}

uint64_t sub_10040CA74()
{
  if (qword_1019067D8 != -1)
  {
    swift_once();
  }

  if (byte_1019601D0 == 1)
  {
    type metadata accessor for MapsSyncStore();
    v1 = static MapsSyncStore.sharedStore.getter();
    type metadata accessor for VisitedPlacesDataOperationsProvider();
    inited = swift_initStackObject();
    *(v0 + 72) = inited;
    *(inited + 16) = v1;
    if (qword_101906800 != -1)
    {
      swift_once();
    }

    v3 = static VisitedPlacesCountsManager.shared + OBJC_IVAR____TtC4Maps26VisitedPlacesCountsManager_allVisitsCount;
    v4 = *(static VisitedPlacesCountsManager.shared + OBJC_IVAR____TtC4Maps26VisitedPlacesCountsManager_allVisitsCount);
    *(v0 + 80) = v4;
    LOBYTE(v3) = *(v3 + 8);
    *(v0 + 114) = v3;
    if (v3)
    {
      v5 = swift_task_alloc();
      *(v0 + 88) = v5;
      *v5 = v0;
      v5[1] = sub_10040CC84;

      return sub_100253064();
    }

    else
    {
      *(v0 + 115) = v4 > 0;
      v8 = swift_task_alloc();
      *(v0 + 96) = v8;
      *v8 = v0;
      v8[1] = sub_10040CDCC;

      return sub_10040DB2C();
    }
  }

  else
  {

    v7 = *(v0 + 8);

    return v7(0, 768);
  }
}

uint64_t sub_10040CC84(char a1)
{
  v3 = *v1;
  v4 = *v1;

  *(v3 + 115) = a1;
  v5 = swift_task_alloc();
  *(v3 + 96) = v5;
  *v5 = v4;
  v5[1] = sub_10040CDCC;

  return sub_10040DB2C();
}

uint64_t sub_10040CDCC(char a1)
{
  v2 = *v1;
  *(*v1 + 116) = a1;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);

  return _swift_task_switch(sub_10040CEF4, v4, v3);
}

uint64_t sub_10040CEF4()
{
  v1 = *(v0 + 115);
  if (*(v0 + 116) == 1)
  {
    v2 = *(v0 + 72);

    swift_setDeallocating();

    v3 = 0;
    if (v1)
    {
      v4 = 1024;
    }

    else
    {
      v4 = 768;
    }

LABEL_9:
    v10 = *(v0 + 8);

    return v10(v3, v4);
  }

  if (*(v0 + 115))
  {
    v5 = *(v0 + 114);
    v6 = *(v0 + 72);

    swift_setDeallocating();

    v4 = v5 | 0x200u;
    v3 = *(v0 + 80);
    goto LABEL_9;
  }

  v7 = [objc_opt_self() currentDevice];
  v8 = [v7 userInterfaceIdiom];

  if (v8)
  {
    v9 = *(v0 + 72);

    swift_setDeallocating();

    v3 = 0;
    v4 = 768;
    goto LABEL_9;
  }

  v12 = *(v0 + 40);
  v13 = sub_10040E3FC();
  v14 = swift_task_alloc();
  *(v0 + 104) = v14;
  v15 = sub_1000CE6B8(&qword_1019207F8);
  *v14 = v0;
  v14[1] = sub_10040D0F8;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 112, v12, v13, 0xD000000000000015, 0x8000000101236B50, sub_10040D2CC, 0, v15);
}

uint64_t sub_10040D0F8()
{
  v1 = *(*v0 + 40);

  return _swift_task_switch(sub_10040D208, v1, 0);
}

uint64_t sub_10040D208()
{
  *(v0 + 117) = *(v0 + 112);
  *(v0 + 118) = *(v0 + 113);
  return _swift_task_switch(sub_10040D230, *(v0 + 56), *(v0 + 64));
}

uint64_t sub_10040D230()
{
  v1 = *(v0 + 117);
  v2 = *(v0 + 72);

  swift_setDeallocating();

  if (v1 == 1)
  {
    v3 = *(v0 + 114) | (*(v0 + 118) << 8);
    v4 = *(v0 + 80);
  }

  else
  {
    v4 = 0;
    v3 = 768;
  }

  v5 = *(v0 + 8);

  return v5(v4, v3);
}

uint64_t sub_10040D2CC(uint64_t a1)
{
  v2 = sub_1000CE6B8(&qword_101920800);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - v4;
  v6 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  (*(v3 + 16))(v5, a1, v2);
  type metadata accessor for MainActor();
  v10 = static MainActor.shared.getter();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = &protocol witness table for MainActor;
  (*(v3 + 32))(v12 + v11, v5, v2);
  sub_10020AAE4(0, 0, v8, &unk_1012051C0, v12);
}

uint64_t sub_10040D4C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_1000CE6B8(&unk_10190BA50);
  v4[3] = swift_task_alloc();
  v5 = sub_1000CE6B8(&qword_101920800);
  v4[4] = v5;
  v6 = *(v5 - 8);
  v4[5] = v6;
  v4[6] = *(v6 + 64);
  v4[7] = swift_task_alloc();
  v7 = type metadata accessor for CLServiceSession.Requirement();
  v4[8] = v7;
  v4[9] = *(v7 - 8);
  v4[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[11] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10040D660, v9, v8);
}

uint64_t sub_10040D660()
{
  v1 = v0[10];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[2];
  v19 = v0[3];

  type metadata accessor for CLServiceSession();
  v8 = enum case for CLServiceSession.VisitHistoryRequirement.none(_:);
  v9 = type metadata accessor for CLServiceSession.VisitHistoryRequirement();
  (*(*(v9 - 8) + 104))(v1, v8, v9);
  (*(v2 + 104))(v1, enum case for CLServiceSession.Requirement.visitHistory(_:), v3);
  v18 = CLServiceSession.__allocating_init(requirement:)();
  v10 = type metadata accessor for MapsWarmingSheetHelper();
  LOBYTE(v8) = sub_10033D320();
  v11 = v4;
  (*(v6 + 16))(v4, v7, v5);
  v12 = (*(v6 + 80) + 17) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v8 & 1;
  (*(v6 + 32))(v13 + v12, v11, v5);
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v19, 1, 1, v14);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = xmmword_1011FB8C0;
  *(v15 + 48) = 0x8000000101236B70;
  *(v15 + 56) = v18;
  *(v15 + 64) = v10;
  *(v15 + 72) = sub_10040E54C;
  *(v15 + 80) = v13;
  sub_10050D2C8(0, 0, v19, &unk_10120AAC0, v15);

  v16 = v0[1];

  return v16();
}

uint64_t sub_10040D8E0(char a1, uint64_t a2, char a3, char a4)
{
  if (a4)
  {
    if (a3 != 1)
    {
      goto LABEL_16;
    }

    if (sub_10033A8D0(a1) == 0xD000000000000014 && 0x80000001012167C0 == v5)
    {
      goto LABEL_5;
    }

LABEL_11:
    _stringCompareWithSmolCheck(_:_:expecting:)();

    goto LABEL_12;
  }

  if (a3 != 1)
  {
    goto LABEL_16;
  }

  if (sub_10033A8D0(a1) != 0xD000000000000018 || 0x80000001012167A0 != v6)
  {
    goto LABEL_11;
  }

LABEL_5:

LABEL_12:
  if (sub_10033A8D0(a1) != 0xD000000000000018 || 0x80000001012167A0 != v7)
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      goto LABEL_16;
    }

    if (sub_10033A8D0(a1) != 0xD000000000000014 || 0x80000001012167C0 != v10)
    {
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v11)
      {
        goto LABEL_16;
      }

      if (sub_10033A8D0(a1) != 0x7A69726F68747541 || v12 != 0xEA00000000006465)
      {
        _stringCompareWithSmolCheck(_:_:expecting:)();

        goto LABEL_16;
      }
    }
  }

LABEL_16:
  sub_1000CE6B8(&qword_101920800);
  return CheckedContinuation.resume(returning:)();
}

id sub_10040DB48()
{
  result = [objc_opt_self() sharedConfiguration];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v2 = result;
  v3 = [result countryCode];

  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = GEOConfigGetArray();
  if (!v7 || (v8 = v7, v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v8, v10 = sub_1002B0174(v9), , !v10))
  {

LABEL_7:
    v12 = 0;
    goto LABEL_8;
  }

  v0[2] = v4;
  v0[3] = v6;
  v11 = swift_task_alloc();
  *(v11 + 16) = v0 + 2;
  v12 = sub_1002AFDA8(sub_10023BAF4, v11, v10);

LABEL_8:
  v13 = v0[1];

  return v13(v12 & 1);
}

uint64_t sub_10040DCD0()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t getEnumTagSinglePayload for LibraryVisitedPlacesCellState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 10))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 9);
  if (v3 <= 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = *(a1 + 9);
  }

  v5 = v4 - 2;
  if (v3 >= 2)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (v6 >= 3)
  {
    return v6 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LibraryVisitedPlacesCellState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 4;
    }
  }

  return result;
}

uint64_t sub_10040DDC0(uint64_t a1)
{
  v1 = *(a1 + 9);
  if (v1 <= 2)
  {
    v2 = 2;
  }

  else
  {
    v2 = *(a1 + 9);
  }

  v3 = v2 - 2;
  if (v1 >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10040DDE0(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
  }

  else if (a2)
  {
    *(result + 9) = a2 + 2;
  }

  return result;
}

unint64_t sub_10040DE1C()
{
  result = qword_1019207E8;
  if (!qword_1019207E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019207E8);
  }

  return result;
}

void sub_10040DE70(uint64_t a1, unint64_t a2)
{
  if (qword_1019066E8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100021540(v4, qword_10195FF58);

  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_10004DEB8(a1, a2, &v9);
    _os_log_impl(&_mh_execute_header, oslog, v5, "Maps Library Tipkit: %s", v6, 0xCu);
    sub_10004E3D0(v7);
  }
}

uint64_t sub_10040DFC8(uint64_t a1, unint64_t a2, char a3, void (*a4)(uint64_t, unint64_t), uint64_t a5, uint64_t (*a6)(uint64_t, void))
{
  if (sub_10033D320())
  {
    if (a3 == 1)
    {
      if (sub_10033A8D0(a1) == 0xD000000000000014 && 0x80000001012167C0 == v11)
      {

        v12 = 1;
      }

      else
      {
        v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      v12 = 0;
    }

    _StringGuts.grow(_:)(35);

    v30 = 0x7461747320434354;
    v31 = 0xEB00000000207375;
    v14._countAndFlagsBits = sub_100339F2C(a1, a2, a3);
    String.append(_:)(v14);

    v15._object = 0x8000000101236F00;
    v15._countAndFlagsBits = 0xD000000000000014;
    String.append(_:)(v15);
    if (v12)
    {
      v16 = 5457241;
    }

    else
    {
      v16 = 20302;
    }

    if (v12)
    {
      v17 = 0xE300000000000000;
    }

    else
    {
      v17 = 0xE200000000000000;
    }

    v18 = v17;
    String.append(_:)(*&v16);

    a4(v30, v31);

    v19 = v12 & 1;
    return a6(v19, v12 & 1);
  }

  if (a3 == 1)
  {
    if (sub_10033A8D0(a1) == 0xD000000000000018 && 0x80000001012167A0 == v13)
    {

LABEL_20:
      a4(0xD000000000000038, 0x8000000101236EC0);
      v12 = 1;
      v19 = 2;
      return a6(v19, v12 & 1);
    }

    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v20)
    {
      goto LABEL_20;
    }
  }

  if (qword_1019066F8 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_100021540(v21, qword_10195FF88);
  sub_100335E4C(a1, a2, a3);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();
  sub_100335DFC(a1, a2, a3);
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v30 = v25;
    *v24 = 136315138;
    v26 = sub_100339F2C(a1, a2, a3);
    v28 = sub_10004DEB8(v26, v27, &v30);

    *(v24 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v22, v23, "The CL status is %s. Tipkit is not allowed.", v24, 0xCu);
    sub_10004E3D0(v25);
  }

  v12 = 0;
  v19 = 0;
  return a6(v19, v12 & 1);
}

BOOL sub_10040E358(uint64_t a1, __int16 a2, uint64_t a3, __int16 a4)
{
  if (HIBYTE(a2) == 3)
  {
    return (a4 & 0xFF00) == 0x300;
  }

  if (HIBYTE(a2) == 4)
  {
    return (a4 & 0xFF00) == 0x400;
  }

  if (HIBYTE(a4) - 3 < 2)
  {
    return 0;
  }

  if (a2)
  {
    if ((a4 & 1) == 0)
    {
      return 0;
    }

LABEL_15:
    if (HIBYTE(a2) == 2)
    {
      if (HIBYTE(a4) == 2)
      {
        return 1;
      }
    }

    else if (HIBYTE(a4) != 2 && ((HIBYTE(a4) ^ HIBYTE(a2)) & 1) == 0)
    {
      return 1;
    }

    return 0;
  }

  result = 0;
  if ((a4 & 1) == 0 && a1 == a3)
  {
    goto LABEL_15;
  }

  return result;
}

unint64_t sub_10040E3FC()
{
  result = qword_1019207F0;
  if (!qword_1019207F0)
  {
    type metadata accessor for LibraryVisitedPlacesCellStateProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019207F0);
  }

  return result;
}

uint64_t sub_10040E450(uint64_t a1)
{
  v4 = *(sub_1000CE6B8(&qword_101920800) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10003AC4C;

  return sub_10040D4C4(a1, v6, v7, v1 + v5);
}

uint64_t sub_10040E54C(char a1, uint64_t a2, char a3)
{
  sub_1000CE6B8(&qword_101920800);
  v7 = *(v3 + 16);

  return sub_10040D8E0(a1, a2, a3, v7);
}

id sub_10040E5E4()
{
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v0.super.isa = qword_1019600D8;
  v15._object = 0x8000000101236BF0;
  v1._countAndFlagsBits = 0xD000000000000031;
  v1._object = 0x8000000101236B90;
  v2._object = 0x8000000101236BD0;
  v15._countAndFlagsBits = 0xD000000000000041;
  v2._countAndFlagsBits = 0xD000000000000014;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, qword_1019600D8, v2, v15);
  v16._object = 0x8000000101236CE0;
  v3._countAndFlagsBits = 0xD000000000000033;
  v3._object = 0x8000000101236C40;
  v4._countAndFlagsBits = 0xD000000000000052;
  v4._object = 0x8000000101236C80;
  v16._countAndFlagsBits = 0xD00000000000003ALL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v0, v4, v16);
  v5 = String._bridgeToObjectiveC()();

  v6 = String._bridgeToObjectiveC()();

  v7 = [objc_opt_self() alertControllerWithTitle:v5 message:v6 preferredStyle:1];

  v17._object = 0x8000000101236D60;
  v8._countAndFlagsBits = 0xD000000000000038;
  v8._object = 0x8000000101236D20;
  v17._countAndFlagsBits = 0xD00000000000003CLL;
  v9._countAndFlagsBits = 19279;
  v9._object = 0xE200000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v8, 0, v0, v9, v17);
  v10 = String._bridgeToObjectiveC()();

  aBlock[4] = UIView.annotateView(with:);
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001FDE68;
  aBlock[3] = &unk_101617BD8;
  v11 = _Block_copy(aBlock);

  v12 = [objc_opt_self() actionWithTitle:v10 style:1 handler:v11];
  _Block_release(v11);

  [v7 addAction:v12];
  return v7;
}

unint64_t sub_10040E8C0()
{
  result = qword_101920808;
  if (!qword_101920808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101920808);
  }

  return result;
}

unint64_t sub_10040E918()
{
  result = qword_101920810;
  if (!qword_101920810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101920810);
  }

  return result;
}

uint64_t sub_10040EAA8()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  swift_getKeyPath();
  v13 = v0;
  sub_100417C84(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v0[40])
  {
    if (*(v0 + 120) == 1)
    {
      *(v0 + 120) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *(&v12 - 2) = v0;
      *(&v12 - 8) = 1;
      v13 = v0;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  else
  {
    swift_getKeyPath();
    v13 = v0;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (v0[14])
    {

      Task.cancel()();
    }

    v7 = type metadata accessor for TaskPriority();
    (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
    type metadata accessor for MainActor();

    v8 = static MainActor.shared.getter();
    v9 = swift_allocObject();
    v9[2] = v8;
    v9[3] = &protocol witness table for MainActor;
    v9[4] = v1;
    v9[5] = v2;
    v10 = sub_10020AAE4(0, 0, v5, &unk_101205960, v9);
    return sub_100410EAC(v10);
  }

  return result;
}

uint64_t sub_10040ED8C()
{
  swift_getKeyPath();
  sub_100417C84(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_allocObject();
  swift_weakInit();
  swift_getKeyPath();
  sub_100417C84(&qword_10190E1B0, type metadata accessor for VisitHistoryFilterViewModel);

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10040EF50()
{
  swift_getKeyPath();
  sub_100417C84(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_allocObject();
  swift_weakInit();
  swift_getKeyPath();
  sub_100417C84(&qword_10190E1B0, type metadata accessor for VisitHistoryFilterViewModel);

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10040F114(char a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  swift_getKeyPath();
  v15 = v1;
  sub_100417C84(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (qword_101205C18[a1] != qword_101205C18[*(v1 + 121)])
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v14 - 2) = v1;
    *(&v14 - 8) = a1;
    v15 = v1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v10 = type metadata accessor for TaskPriority();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
    type metadata accessor for MainActor();

    v11 = static MainActor.shared.getter();
    v12 = swift_allocObject();
    v12[2] = v11;
    v12[3] = &protocol witness table for MainActor;
    v12[4] = v2;
    v12[5] = v4;
    v13 = sub_10020AAE4(0, 0, v7, &unk_101205790, v12);
    return sub_100410EAC(v13);
  }

  return result;
}

uint64_t sub_10040F398()
{
  swift_getKeyPath();
  sub_100417C84(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 320);
}

uint64_t sub_10040F438()
{
  swift_getKeyPath();
  sub_100417C84(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

unint64_t sub_10040F4DC()
{
  swift_getKeyPath();
  sub_100417C84(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 48);
  sub_100100D84(v1);
  return v1;
}

uint64_t sub_10040F588(char a1)
{
  if (*(v1 + 320) == (a1 & 1))
  {
    *(v1 + 320) = a1 & 1;
    if ((a1 & 1) == 0)
    {
      return sub_100412A64();
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100417C84(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    if ((a1 & 1) == 0)
    {
      return sub_100412A64();
    }
  }

  swift_getKeyPath();
  sub_100417C84(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v1 + 288);
  if (v5)
  {

    v5(v6);
    sub_1000588AC(v5);
  }

  v7 = *(v1 + 72);
  swift_getKeyPath();
  sub_100417C84(&qword_10190E1B0, type metadata accessor for VisitHistoryFilterViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ((*(v7 + 120) & 1) == 0)
  {
    sub_100260674();
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ((*(v7 + 121) & 1) == 0)
  {
    return sub_100260974();
  }

  return result;
}

void sub_10040F850(uint64_t a1)
{
  swift_getKeyPath();
  sub_100417C84(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v1 + 272);
  if (v3)
  {

    v3(a1);
    sub_1000588AC(v3);
  }

  v4 = [objc_opt_self() sharedService];
  if (v4)
  {
    v5 = v4;
    v6 = String._bridgeToObjectiveC()();
    [v5 captureUserAction:507 onTarget:147 eventValue:v6];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10040F98C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 a4@<W3>, uint64_t a5@<X8>)
{
  v37 = a3;
  v10 = a4;
  v11 = type metadata accessor for SectionHeaderViewModel.Size();
  v39 = *(v11 - 8);
  v40 = v11;
  __chkstk_darwin(v11);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000CE6B8(&qword_10190B038);
  __chkstk_darwin(v14 - 8);
  v17 = &v34 - v16;
  if (v10 != 2)
  {
    v21 = sub_10041569C(a1, a2, v15, a4);
    v35 = v22;
    v36 = v21;
    sub_100415980(v21, v22, v23, a4);
    if (v10 >= 3)
    {
      v31 = type metadata accessor for SectionHeaderViewModel.ActionType();
      (*(*(v31 - 8) + 56))(v17, 1, 1, v31);
      goto LABEL_9;
    }

    v38 = a5;
LABEL_6:
    v24 = swift_allocObject();
    swift_weakInit();
    v25 = swift_allocObject();
    *(v25 + 16) = v24;
    *(v25 + 24) = a1;
    v26 = v37;
    *(v25 + 32) = a2;
    *(v25 + 40) = v26;
    *(v25 + 48) = a4;
    sub_100417E1C(a1, a2, v26, a4);
    SectionHeaderViewModel.Action.init(onSelect:)();
    v27 = enum case for SectionHeaderViewModel.ActionType.chevron(_:);
    v28 = type metadata accessor for SectionHeaderViewModel.ActionType();
    v29 = *(v28 - 8);
    (*(v29 + 104))(v17, v27, v28);
    (*(v29 + 56))(v17, 0, 1, v28);
    a5 = v38;
LABEL_9:
    (*(v39 + 104))(v13, enum case for SectionHeaderViewModel.Size.large(_:), v40);
    SectionHeaderViewModel.init(title:subtitle:size:symbol:action:)();
    v30 = 0;
    goto LABEL_10;
  }

  v38 = a5;
  swift_getKeyPath();
  v41 = v5;
  sub_100417C84(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v5 + 80) == 1)
  {
    v19 = sub_10041569C(a1, a2, v18, 2u);
    v35 = v20;
    v36 = v19;
    swift_getKeyPath();
    v41 = v5;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    sub_1003A7E10(*(v5 + 64));
    goto LABEL_6;
  }

  v30 = 1;
  a5 = v38;
LABEL_10:
  v32 = type metadata accessor for SectionHeaderViewModel();
  return (*(*(v32 - 8) + 56))(a5, v30, 1, v32);
}

uint64_t sub_10040FD98()
{
  swift_getKeyPath();
  sub_100417C84(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 121);
}

void sub_10040FE38()
{
  swift_getKeyPath();
  sub_100417C84(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 240);
  if (v1)
  {
    swift_getKeyPath();

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v1(*(v0 + 64));
    sub_1000588AC(v1);
  }

  v2 = [objc_opt_self() sharedService];
  if (v2)
  {
    v3 = v2;
    [v2 captureUserAction:506 onTarget:147 eventValue:0];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10040FF90()
{
  swift_getKeyPath();
  sub_100417C84(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 80);
}

uint64_t sub_100410030()
{
  v1 = *(v0 + 304);
  swift_getKeyPath();
  sub_100417C84(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_unknownObjectWeakLoadStrong();
  *(v1 + 24) = *(v0 + 24);
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_unknownObjectWeakLoadStrong();
  swift_getKeyPath();
  sub_100417C84(&qword_10190E1B0, type metadata accessor for VisitHistoryFilterViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return swift_unknownObjectRelease();
}

uint64_t sub_1004101F4()
{
  swift_getKeyPath();
  sub_100417C84(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_10041029C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = a3;
  swift_unknownObjectWeakAssign();
  return sub_100410030();
}

uint64_t sub_1004102D4()
{
  swift_getKeyPath();
  sub_100417C84(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_10041037C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 40) = a3;
  swift_unknownObjectWeakAssign();
  swift_getKeyPath();
  sub_100417C84(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  swift_unknownObjectRetain();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_unknownObjectWeakLoadStrong();
  swift_getKeyPath();
  sub_100417C84(&qword_10190E1B0, type metadata accessor for VisitHistoryFilterViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

uint64_t sub_100410504()
{
  v1 = v0;
  swift_getKeyPath();
  sub_100417C84(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v0 + 48);
  if (v3 >= 2 && *(v3 + 16))
  {
    v4 = *(v3 + 56) != 2;
    if (((*(v1 + 80) ^ v4) & 1) == 0)
    {
LABEL_4:
      *(v1 + 80) = v4;
      return result;
    }
  }

  else
  {
    LOBYTE(v4) = 0;
    if ((*(v1 + 80) & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100410674(uint64_t result)
{
  if (*(v1 + 80) == (result & 1))
  {
    *(v1 + 80) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100417C84(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

unint64_t sub_100410784@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100417C84(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 48);
  *a2 = v4;
  return sub_100100D84(v4);
}

uint64_t sub_100410830()
{
  swift_getKeyPath();
  sub_100417C84(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1004108FC(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = a2;
}

uint64_t sub_100410938()
{
  swift_getKeyPath();
  sub_100417C84(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 64);
}

uint64_t sub_1004109D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100417C84(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 64);
  return result;
}

uint64_t sub_100410AA8(uint64_t result)
{
  if (*(v1 + 64) != result)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100417C84(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100410BAC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100417C84(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 80);
  return result;
}

uint64_t sub_100410C7C()
{
  swift_getKeyPath();
  sub_100417C84(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 88);
  sub_1000CD9D4(v1);
  return v1;
}

uint64_t sub_100410D30()
{
  swift_getKeyPath();
  sub_100417C84(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_100410DD4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100417C84(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 112);
}

uint64_t sub_100410EAC(uint64_t a1)
{
  if (!*(v1 + 112))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100417C84(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v3 = static Task.== infix(_:_:)();

  if ((v3 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + 112) = a1;
}

uint64_t sub_100411034()
{
  swift_getKeyPath();
  sub_100417C84(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 120);
}

uint64_t sub_1004110D4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100417C84(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 120);
  return result;
}

uint64_t sub_10041117C(uint64_t result)
{
  if (*(v1 + 120) == (result & 1))
  {
    *(v1 + 120) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100417C84(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_10041128C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100417C84(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 121);
  return result;
}

uint64_t sub_10041135C(uint64_t result)
{
  if (qword_101205C18[*(v1 + 121)] == qword_101205C18[result])
  {
    *(v1 + 121) = result;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100417C84(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100411480()
{
  swift_getKeyPath();
  sub_100417C84(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 128);
  sub_1000CD9D4(v1);
  return v1;
}

uint64_t sub_100411534@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100417C84(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 128);
  v5 = *(v3 + 136);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_100060ED0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4);
}

uint64_t sub_100411620(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1001552C0;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v1);
  sub_100417C84(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

uint64_t sub_10041177C()
{
  swift_getKeyPath();
  sub_100417C84(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 144);
  sub_1000CD9D4(v1);
  return v1;
}

uint64_t sub_100411830()
{
  swift_getKeyPath();
  sub_100417C84(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 160);
  sub_1000CD9D4(v1);
  return v1;
}

uint64_t sub_1004118E4()
{
  swift_getKeyPath();
  sub_100417C84(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 176);
  sub_1000CD9D4(v1);
  return v1;
}

uint64_t sub_100411998()
{
  swift_getKeyPath();
  sub_100417C84(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 192);
  sub_1000CD9D4(v1);
  return v1;
}

uint64_t sub_100411A4C()
{
  swift_getKeyPath();
  sub_100417C84(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 208);
  sub_1000CD9D4(v1);
  return v1;
}

uint64_t sub_100411B00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 208);
  *(a1 + 208) = a2;
  *(a1 + 216) = a3;
  sub_1000CD9D4(a2);
  return sub_1000588AC(v3);
}

uint64_t sub_100411B4C()
{
  swift_getKeyPath();
  sub_100417C84(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 224);
  sub_1000CD9D4(v1);
  return v1;
}

uint64_t sub_100411C00@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100417C84(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 224);
  v5 = *(v3 + 232);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1000F1DB8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4);
}

uint64_t sub_100411CEC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1000F1DB0;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v1);
  sub_100417C84(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

uint64_t sub_100411E48()
{
  swift_getKeyPath();
  sub_100417C84(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 240);
  sub_1000CD9D4(v1);
  return v1;
}

uint64_t sub_100411EFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 240);
  *(a1 + 240) = a2;
  *(a1 + 248) = a3;
  sub_1000CD9D4(a2);
  return sub_1000588AC(v3);
}

uint64_t sub_100411F48()
{
  swift_getKeyPath();
  sub_100417C84(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 256);
  sub_1000CD9D4(v1);
  return v1;
}

uint64_t sub_100411FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 256);
  *(a1 + 256) = a2;
  *(a1 + 264) = a3;
  sub_1000CD9D4(a2);
  return sub_1000588AC(v3);
}

uint64_t sub_100412048()
{
  swift_getKeyPath();
  sub_100417C84(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 272);
  sub_1000CD9D4(v1);
  return v1;
}

uint64_t sub_1004120FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 272);
  *(a1 + 272) = a2;
  *(a1 + 280) = a3;
  sub_1000CD9D4(a2);
  return sub_1000588AC(v3);
}

uint64_t sub_100412148()
{
  swift_getKeyPath();
  sub_100417C84(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 288);
  sub_1000CD9D4(v1);
  return v1;
}

uint64_t sub_1004121FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 288);
  *(a1 + 288) = a2;
  *(a1 + 296) = a3;
  sub_1000CD9D4(a2);
  return sub_1000588AC(v3);
}

uint64_t sub_100412248()
{
  swift_getKeyPath();
  sub_100417C84(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_1004122EC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100417C84(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 312);
}

uint64_t sub_100412398(uint64_t a1)
{
  if (*(v1 + 312) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100417C84(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1004124CC(uint64_t result)
{
  if (*(v1 + 320) == (result & 1))
  {
    *(v1 + 320) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100417C84(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1004125DC()
{
  v1 = v0;
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 48) = 0;
  *(v0 + 56) = _swiftEmptyArrayStorage;
  *(v0 + 64) = 0;
  *(v0 + 80) = 0;
  type metadata accessor for VisitHistoryHomeDataProvider();
  *(v0 + 88) = 0;
  *(v0 + 96) = 0;
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  type metadata accessor for MapsSyncStore();
  v3 = static MapsSyncStore.sharedStore.getter();
  type metadata accessor for VisitedPlacesDataOperationsProvider();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v2 + 112) = v4;
  *(v2 + 120) = 2;
  *(v1 + 104) = v2;
  *(v1 + 112) = 0;
  *(v1 + 120) = 0;
  *(v1 + 121) = sub_100258BD0();
  type metadata accessor for VisitedPlacesCellActionHandler();
  *(v1 + 128) = 0u;
  *(v1 + 144) = 0u;
  *(v1 + 160) = 0u;
  *(v1 + 176) = 0u;
  *(v1 + 192) = 0u;
  *(v1 + 208) = 0u;
  *(v1 + 224) = 0u;
  *(v1 + 240) = 0u;
  *(v1 + 256) = 0u;
  *(v1 + 272) = 0u;
  *(v1 + 288) = 0u;
  v5 = swift_allocObject();
  v5[3] = 0;
  swift_unknownObjectWeakInit();
  v5[5] = 0;
  swift_unknownObjectWeakInit();
  v5[6] = 0;
  v5[7] = 0;
  *(v1 + 304) = v5;
  type metadata accessor for VisitHistoryItem.Configuration();
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 312) = v6;
  *(v1 + 320) = 0;
  ObservationRegistrar.init()();
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  v11 = 3;
  type metadata accessor for VisitHistoryFilterViewModel(0);
  swift_allocObject();
  *(v1 + 72) = sub_10025F348(v9);
  *(*(v1 + 304) + 40) = &off_101617DB0;
  swift_unknownObjectWeakAssign();
  swift_getKeyPath();
  *&v9[0] = v1;
  sub_100417C84(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *(*(v1 + 312) + 24) = &off_1016103C0;
  swift_unknownObjectWeakAssign();
  v7 = *(v1 + 72);
  swift_allocObject();
  swift_weakInit();
  swift_getKeyPath();
  *&v9[0] = v7;
  sub_100417C84(&qword_10190E1B0, type metadata accessor for VisitHistoryFilterViewModel);

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return v1;
}

uint64_t sub_10041291C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + 120) == 1)
    {
      *(result + 120) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_100417C84(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  return result;
}

uint64_t sub_100412A64()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  swift_getKeyPath();
  v12 = v0;
  sub_100417C84(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v0 + 120) == 1)
  {
    swift_getKeyPath();
    v12 = v0;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (v0[14])
    {

      Task.cancel()();
    }

    v7 = type metadata accessor for TaskPriority();
    (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
    type metadata accessor for MainActor();

    v8 = static MainActor.shared.getter();
    v9 = swift_allocObject();
    v9[2] = v8;
    v9[3] = &protocol witness table for MainActor;
    v9[4] = v1;
    v9[5] = v2;
    v10 = sub_10020AAE4(0, 0, v5, &unk_101205B38, v9);
    return sub_100410EAC(v10);
  }

  return result;
}

uint64_t sub_100412CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a4;
  v4[14] = type metadata accessor for MainActor();
  v4[15] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[16] = v6;
  v4[17] = v5;

  return _swift_task_switch(sub_100412D48, v6, v5);
}

uint64_t sub_100412D48()
{
  v1 = v0[13];
  v0[18] = *(v1 + 104);
  swift_getKeyPath();
  v0[19] = OBJC_IVAR____TtC4Maps25VisitHistoryHomeViewModel___observationRegistrar;
  v0[2] = v1;
  v0[20] = sub_100417C84(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v1 + 312);
  v0[21] = v2;

  v3 = swift_task_alloc();
  v0[22] = v3;
  *v3 = v0;
  v3[1] = sub_100412E88;

  return sub_1001F4E84(100, v2);
}

uint64_t sub_100412E88(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 184) = a1;

  v3 = *(v2 + 136);
  v4 = *(v2 + 128);

  return _swift_task_switch(sub_100412FD4, v4, v3);
}

uint64_t sub_100412FD4()
{
  v1 = v0[23];
  if (v1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v2 = swift_task_alloc();
    v0[24] = v2;
    *v2 = v0;
    v2[1] = sub_1004133C4;

    return sub_1001F5880();
  }

  v4 = v0[13];

  swift_getKeyPath();
  v5 = swift_task_alloc();
  *(v5 + 16) = v4;
  *(v5 + 24) = 1;
  v0[9] = v4;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_getKeyPath();
  v6 = swift_task_alloc();
  *(v6 + 16) = v4;
  *(v6 + 24) = _swiftEmptyArrayStorage;
  v0[10] = v4;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  if (*(v4 + 64))
  {
    v7 = v0[13];
    swift_getKeyPath();
    v8 = swift_task_alloc();
    *(v8 + 16) = v7;
    *(v8 + 24) = 0;
    v0[11] = v7;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v9 = v0[13];
  if (*(v9 + 80))
  {
    swift_getKeyPath();
    v10 = swift_task_alloc();
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    v0[12] = v9;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v9 + 80) = 0;
  }

  v11 = v0[13];
  swift_getKeyPath();
  v0[7] = v11;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v12 = *(v11 + 128);
  if (v12)
  {

    v12(v13);
    sub_1000588AC(v12);
  }

  v14 = v0[13];
  if (*(v14 + 120))
  {
    swift_getKeyPath();
    v15 = swift_task_alloc();
    *(v15 + 16) = v14;
    *(v15 + 24) = 0;
    v0[8] = v14;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v14 + 120) = 0;
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_1004133C4(uint64_t a1)
{
  v2 = *v1;
  v5 = *v1;
  *(v2 + 200) = a1;

  v3 = swift_task_alloc();
  *(v2 + 208) = v3;
  *v3 = v5;
  v3[1] = sub_10041351C;

  return sub_1001F5E94(0, 9, 0);
}

uint64_t sub_10041351C(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 216) = a1;

  v3 = *(v2 + 136);
  v4 = *(v2 + 128);

  return _swift_task_switch(sub_100413644, v4, v3);
}

uint64_t sub_100413644()
{
  v1 = v0[23];
  v2 = v0[13];
  swift_getKeyPath();
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v0[3] = v2;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  v0[28] = 0;

  if (qword_101906800 != -1)
  {
    swift_once();
  }

  v0[29] = static VisitedPlacesCountsManager.shared;

  return _swift_task_switch(sub_100413780, 0, 0);
}

uint64_t sub_100413780()
{
  if (*(*(v0 + 232) + OBJC_IVAR____TtC4Maps26VisitedPlacesCountsManager_refreshTask))
  {

    Task.cancel()();
  }

  v1 = swift_task_alloc();
  *(v0 + 240) = v1;
  *v1 = v0;
  v1[1] = sub_100413860;

  return sub_1001F5630();
}

uint64_t sub_100413860(uint64_t a1)
{
  *(*v1 + 248) = a1;

  return _swift_task_switch(sub_100413960, 0, 0);
}

uint64_t sub_100413960()
{
  *(v0 + 256) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1004139EC, v2, v1);
}

uint64_t sub_1004139EC()
{
  v1 = v0[31];

  sub_1003C6048(v1, 0);
  v2 = v0[16];
  v3 = v0[17];

  return _swift_task_switch(sub_100413A60, v2, v3);
}

uint64_t sub_100413A60()
{
  v3 = v1[31];
  v4 = v1[13];
  v5 = v1[28];
  if (*(v4 + 64) != v3)
  {
    v0 = v1[20];
    KeyPath = swift_getKeyPath();
    v6 = swift_task_alloc();
    *(v6 + 16) = v4;
    *(v6 + 24) = v3;
    v1[4] = v4;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v4 = v1[13];
  }

  v7 = sub_100258BD0();
  v8 = v7;
  if (qword_101205C18[*(v4 + 121)] == qword_101205C18[v7])
  {
    *(v4 + 121) = v7;
  }

  else
  {
    v0 = v1[20];
    v9 = v1[13];
    KeyPath = swift_getKeyPath();
    v10 = swift_task_alloc();
    *(v10 + 16) = v9;
    *(v10 + 24) = v8;
    v1[5] = v9;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v1[33] = v5;
  v11 = v1[23];
  if (v11 >> 62)
  {
    if (v11 < 0)
    {
      v0 = v1[23];
    }

    else
    {
      v0 = (v11 & 0xFFFFFFFFFFFFFF8);
    }

    v13 = _CocoaArrayWrapper.endIndex.getter();
    if (_CocoaArrayWrapper.endIndex.getter() < 0)
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v13 >= 0xF)
    {
      v14 = 15;
    }

    else
    {
      v14 = v13;
    }

    if ((v13 & 0x8000000000000000) == 0)
    {
      v13 = v14;
    }

    else
    {
      v13 = 15;
    }

    v12 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12 >= 0xF)
    {
      v13 = 15;
    }

    else
    {
      v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  if (v12 < v13)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    if (_CocoaArrayWrapper.endIndex.getter() < 3)
    {
      goto LABEL_46;
    }

    goto LABEL_50;
  }

  v15 = v1[23];
  if ((v15 & 0xC000000000000001) != 0)
  {

    if (v13)
    {
      type metadata accessor for VisitHistoryItem();
      v16 = 0;
      do
      {
        v17 = v16 + 1;
        _ArrayBuffer._typeCheckSlowPath(_:)(v16);
        v16 = v17;
      }

      while (v13 != v17);
      v15 = v1[23];
    }
  }

  else
  {
  }

  v18 = v1[23];
  if (v15 >> 62)
  {
    v0 = _CocoaArrayWrapper.subscript.getter();
    v20 = v21;
    v19 = v22;
    v13 = v23;

    if (v13)
    {
      goto LABEL_33;
    }

LABEL_32:
    sub_100415F68(v0, v20, v19, v13, type metadata accessor for VisitHistoryItem);
    v13 = v24;
    goto LABEL_39;
  }

  v19 = 0;
  v0 = (v18 & 0xFFFFFFFFFFFFFF8);
  v20 = (v18 & 0xFFFFFFFFFFFFFF8) + 32;
  v13 = (2 * v13) | 1;
  if ((v13 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_33:
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v25 = swift_dynamicCastClass();
  if (!v25)
  {
    swift_unknownObjectRelease();
    v25 = _swiftEmptyArrayStorage;
  }

  v26 = v25[2];

  v27 = (v13 >> 1) - v19;
  if (__OFSUB__(v13 >> 1, v19))
  {
    __break(1u);
LABEL_63:
    v0 = sub_100357FC4((v27 > 1), v19, 1, v0);
    goto LABEL_43;
  }

  if (v26 != v27)
  {
    swift_unknownObjectRelease_n();
    goto LABEL_32;
  }

  v13 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (v13)
  {
    goto LABEL_40;
  }

  v13 = _swiftEmptyArrayStorage;
LABEL_39:
  swift_unknownObjectRelease();
LABEL_40:
  if (*(v1[25] + 16) < 3uLL)
  {

    v0 = _swiftEmptyArrayStorage;
    goto LABEL_44;
  }

  v0 = sub_100357FC4(0, 1, 1, _swiftEmptyArrayStorage);
  v20 = *(v0 + 2);
  v27 = *(v0 + 3);
  v19 = v20 + 1;
  if (v20 >= v27 >> 1)
  {
    goto LABEL_63;
  }

LABEL_43:
  v28 = v1[25];
  *(v0 + 2) = v19;
  v29 = &v0[32 * v20];
  *(v29 + 5) = 0;
  *(v29 + 6) = 0;
  *(v29 + 4) = v28;
  v29[56] = 0;
LABEL_44:
  KeyPath = v1[27];
  if (KeyPath >> 62)
  {
    goto LABEL_49;
  }

  if (*((KeyPath & 0xFFFFFFFFFFFFFF8) + 0x10) < 3)
  {
LABEL_46:

    goto LABEL_55;
  }

LABEL_50:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v0 = sub_100357FC4(0, *(v0 + 2) + 1, 1, v0);
  }

  v31 = *(v0 + 2);
  v30 = *(v0 + 3);
  if (v31 >= v30 >> 1)
  {
    v0 = sub_100357FC4((v30 > 1), v31 + 1, 1, v0);
  }

  *(v0 + 2) = v31 + 1;
  v32 = &v0[32 * v31];
  *(v32 + 5) = 0;
  *(v32 + 6) = 0;
  *(v32 + 4) = KeyPath;
  v32[56] = 1;
LABEL_55:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v0 = sub_100357FC4(0, *(v0 + 2) + 1, 1, v0);
  }

  v34 = *(v0 + 2);
  v33 = *(v0 + 3);
  if (v34 >= v33 >> 1)
  {
    v0 = sub_100357FC4((v33 > 1), v34 + 1, 1, v0);
  }

  v1[34] = v0;
  *(v0 + 2) = v34 + 1;
  v35 = &v0[32 * v34];
  *(v35 + 5) = 0;
  *(v35 + 6) = 0;
  *(v35 + 4) = v13;
  v35[56] = 2;
  v36 = swift_task_alloc();
  v1[35] = v36;
  *v36 = v1;
  v36[1] = sub_100413FEC;

  return sub_1001F6514();
}

uint64_t sub_100413FEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *v3;
  v5[36] = a1;
  v5[37] = a2;
  v5[38] = a3;

  v6 = v4[17];
  v7 = v4[16];

  return _swift_task_switch(sub_100414118, v7, v6);
}

uint64_t sub_100414118()
{
  v1 = v0[37];
  if (v1)
  {
    v2 = v0[34];
    v4 = *(v2 + 2);
    v3 = *(v2 + 3);
    if (v4 >= v3 >> 1)
    {
      v2 = sub_100357FC4((v3 > 1), v4 + 1, 1, v2);
      v1 = v0[37];
    }

    v5 = v0[38];
    v6 = v0[36];
    *(v2 + 2) = v4 + 1;
    v7 = &v2[32 * v4];
    *(v7 + 4) = v6;
    *(v7 + 5) = v1;
    *(v7 + 6) = v5;
    v7[56] = 3;
  }

  else
  {
    v2 = v0[34];
  }

  v0[39] = v2;
  v8 = swift_task_alloc();
  v0[40] = v8;
  *v8 = v0;
  v8[1] = sub_100414210;

  return sub_1001F726C();
}

uint64_t sub_100414210(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 328) = a1;

  v3 = *(v2 + 136);
  v4 = *(v2 + 128);

  return _swift_task_switch(sub_100414338, v4, v3);
}

uint64_t sub_100414338()
{
  v1 = *(v0 + 328);

  v2 = *(v0 + 312);
  if (v1)
  {
    v4 = *(v2 + 2);
    v3 = *(v2 + 3);
    if (v4 >= v3 >> 1)
    {
      v2 = sub_100357FC4((v3 > 1), v4 + 1, 1, *(v0 + 312));
    }

    v5 = *(v0 + 328);
    *(v2 + 2) = v4 + 1;
    v6 = &v2[32 * v4];
    *(v6 + 5) = 0;
    *(v6 + 6) = 0;
    *(v6 + 4) = v5;
    v6[56] = 4;
  }

  v7 = *(v0 + 104);
  swift_getKeyPath();
  v8 = swift_task_alloc();
  *(v8 + 16) = v7;
  *(v8 + 24) = v2;
  *(v0 + 48) = v7;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v9 = *(v0 + 104);
  swift_getKeyPath();
  *(v0 + 56) = v9;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = *(v9 + 128);
  if (v10)
  {

    v10(v11);
    sub_1000588AC(v10);
  }

  v12 = *(v0 + 104);
  if (*(v12 + 120))
  {
    swift_getKeyPath();
    v13 = swift_task_alloc();
    *(v13 + 16) = v12;
    *(v13 + 24) = 0;
    *(v0 + 64) = v12;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v12 + 120) = 0;
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_100414574()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_getKeyPath();
    sub_100417C84(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v2 = *(v1 + 128);
    sub_1000CD9D4(v2);

    if (v2)
    {
      v2(result);
      return sub_1000588AC(v2);
    }
  }

  return result;
}

uint64_t sub_100414664(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    swift_getKeyPath();
    sub_100417C84(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v4 = *(v3 + 224);
    sub_1000CD9D4(v4);

    if (v4)
    {
      v4(a1);
      return sub_1000588AC(v4);
    }
  }

  return result;
}

void sub_10041475C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 2u)
  {
    if (a4)
    {
      if (a4 == 1)
      {
        swift_getKeyPath();
        sub_100417C84(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v5 = v4[24];
        if (v5)
        {

          sub_100414B40();
          v5();
          sub_1000588AC(v5);
        }
      }

      else
      {
        swift_getKeyPath();
        sub_100417C84(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v7 = v4[26];
        if (v7)
        {

          v7(v8);
          sub_1000588AC(v7);
        }
      }
    }

    else
    {
      swift_getKeyPath();
      sub_100417C84(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v6 = v4[22];
      if (v6)
      {

        sub_100414A4C();
        v6();
        sub_1000588AC(v6);
      }
    }

    v9 = [objc_opt_self() sharedService];
    if (v9)
    {
      v10 = v9;
      v11 = String._bridgeToObjectiveC()();

      [v10 captureUserAction:511 onTarget:147 eventValue:v11];
    }

    else
    {
      __break(1u);
    }
  }
}

void *sub_100414A4C()
{
  swift_getKeyPath();
  sub_100417C84(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 48);
  if (v1 < 2)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = *(v1 + 16) + 1;
  result = _swiftEmptyArrayStorage;
  while (--v3)
  {
    v4 = (v1 + 32);
    v5 = *(v1 + 56);
    v1 += 32;
    if (!v5)
    {
      v6 = *v4;
      sub_100417E1C(*v4, v4[1], v4[2], 0);
      return v6;
    }
  }

  return result;
}

void *sub_100414B40()
{
  swift_getKeyPath();
  sub_100417C84(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 48);
  if (v1 < 2)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = *(v1 + 16) + 1;
  result = _swiftEmptyArrayStorage;
  while (--v3)
  {
    v4 = (v1 + 32);
    v5 = *(v1 + 56);
    v1 += 32;
    if (v5 == 1)
    {
      v6 = *v4;
      sub_100417E1C(*v4, v4[1], v4[2], 1u);
      return v6;
    }
  }

  return result;
}

uint64_t sub_100414C38(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4[2] = a4;
  v4[3] = *a4;
  sub_1000CE6B8(&unk_10190BA50);
  v4[4] = swift_task_alloc();
  v4[5] = type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v6;
  v4[8] = v5;

  return _swift_task_switch(sub_100414D34, v6, v5);
}

uint64_t sub_100414D34()
{
  v1 = *(*(v0 + 16) + 104);
  *(v0 + 72) = v1;
  return _swift_task_switch(sub_100414D58, v1, 0);
}

uint64_t sub_100414D58()
{
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_100414DF0;

  return sub_100254FA4(0);
}

uint64_t sub_100414DF0()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return _swift_task_switch(sub_100414F10, v3, v2);
}

uint64_t sub_100414F10()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);

  v5 = static MainActor.shared.getter();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = &protocol witness table for MainActor;
  v6[4] = v3;
  v6[5] = v2;
  v7 = sub_10020AAE4(0, 0, v1, &unk_1012057C8, v6);
  sub_100410EAC(v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10041502C()
{
  sub_1000A09E0(v0 + 16);
  sub_1000A09E0(v0 + 32);
  sub_100100D94(*(v0 + 48));

  sub_1000588AC(*(v0 + 88));

  sub_1000588AC(*(v0 + 128));
  sub_1000588AC(*(v0 + 144));
  sub_1000588AC(*(v0 + 160));
  sub_1000588AC(*(v0 + 176));
  sub_1000588AC(*(v0 + 192));
  sub_1000588AC(*(v0 + 208));
  sub_1000588AC(*(v0 + 224));
  sub_1000588AC(*(v0 + 240));
  sub_1000588AC(*(v0 + 256));
  sub_1000588AC(*(v0 + 272));
  sub_1000588AC(*(v0 + 288));

  v1 = OBJC_IVAR____TtC4Maps25VisitHistoryHomeViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_100415134()
{
  sub_10041502C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for VisitHistoryHomeViewModel()
{
  result = qword_101920848;
  if (!qword_101920848)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004151E0()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1004152F4(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_10041531C(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = 0xEA00000000007365;
  v4 = 0x69726F6765746163;
  v5 = 0xEC00000073746973;
  v6 = 0x6956746E65636572;
  v7 = 0xEB00000000726165;
  v8 = 0x59746E6572727563;
  if (v2 != 3)
  {
    v8 = 0x7261655974736170;
    v7 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*(v1 + 24))
  {
    v4 = 0x736569746963;
    v3 = 0xE600000000000000;
  }

  if (*(v1 + 24) <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*(v1 + 24) > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1004153CC()
{
  swift_getKeyPath();
  sub_100417C84(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 48);
  if (v1 >= 2)
  {
    v3 = *(v1 + 16) + 1;
    while (--v3)
    {
      v4 = *(v1 + 56);
      v1 += 32;
      if (v4 == 2)
      {
      }
    }
  }

  return 0;
}

uint64_t sub_1004154A8(uint64_t a1)
{
  v2 = v1;
  swift_getKeyPath();
  sub_100417C84(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v1 + 48);
  if (v5 >= 2)
  {
    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = 0;
      v8 = 0;
      while (*(v5 + v7 + 56) != 2)
      {
        ++v8;
        v7 += 32;
        if (v6 == v8)
        {
          return result;
        }
      }

      sub_100100D84(*(v2 + 48));
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100416668(v5);
        v5 = result;
      }

      if (v8 >= *(v5 + 16))
      {
        __break(1u);
      }

      else
      {
        v9 = v5 + v7;
        v10 = *(v5 + v7 + 32);
        v11 = *(v9 + 40);
        v12 = *(v9 + 48);
        *(v9 + 40) = 0;
        *(v9 + 48) = 0;
        *(v9 + 32) = a1;
        v13 = *(v9 + 56);
        *(v9 + 56) = 2;

        sub_1003E4F30(v10, v11, v12, v13);
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }
    }
  }

  return result;
}

uint64_t sub_10041569C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 1u)
  {
    if (a4)
    {
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v6.super.isa = qword_1019600D8;
      v12 = 0x800000010121A7E0;
      v7 = 0x79746943207942;
      v9 = 0xD00000000000002DLL;
      v10 = 0x800000010121A7B0;
      v11 = 0xD000000000000058;
      v8 = 0xE700000000000000;
    }

    else
    {
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v6.super.isa = qword_1019600D8;
      v12 = 0x80000001012284E0;
      v7 = 0x6765746143207942;
      v8 = 0xEB0000000079726FLL;
      v9 = 0xD000000000000031;
      v10 = 0x80000001012284A0;
      v11 = 0xD00000000000005CLL;
    }
  }

  else if (a4 == 2)
  {
    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v6.super.isa = qword_1019600D8;
    v12 = 0x80000001012371D0;
    v7 = 0x69736956206C6C41;
    v10 = 0x80000001012371A0;
    v11 = 0xD00000000000003DLL;
    v9 = 0xD000000000000021;
    v8 = 0xEA00000000007374;
  }

  else
  {
    if (a4 == 3)
    {

      return a1;
    }

    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v6.super.isa = qword_1019600D8;
    v12 = 0x8000000101237150;
    v7 = 0x73756F6976657250;
    v8 = 0xEE00737261655920;
    v9 = 0xD000000000000025;
    v10 = 0x8000000101237120;
    v11 = 0xD00000000000004CLL;
  }

  return NSLocalizedString(_:tableName:bundle:value:comment:)(*&v9, 0, v6, *&v7, *&v11)._countAndFlagsBits;
}

uint64_t sub_100415980(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 - 2 < 3)
  {
    return 0;
  }

  if (a4)
  {
    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v5.super.isa = qword_1019600D8;
    v11 = 0x800000010121A8A0;
    v6 = 0xD000000000000030;
    v7 = 0x800000010121A840;
    v9 = 0x800000010121A880;
    v10 = 0xD00000000000005BLL;
    v8 = 0xD000000000000018;
  }

  else
  {
    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v5.super.isa = qword_1019600D8;
    v11 = 0x80000001012285B0;
    v6 = 0xD000000000000033;
    v7 = 0x8000000101228540;
    v8 = 0xD000000000000020;
    v9 = 0x8000000101228580;
    v10 = 0xD00000000000005FLL;
  }

  return NSLocalizedString(_:tableName:bundle:value:comment:)(*&v6, 0, v5, *&v8, *&v10)._countAndFlagsBits;
}

uint64_t sub_100415B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10041475C(result, v7, v8, a5);
  }

  return result;
}

uint64_t sub_100415BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = v6;
  v9 = *v6;
  v10 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v10 - 8);
  v12 = &v18 - v11;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  type metadata accessor for MainActor();

  v14 = static MainActor.shared.getter();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = &protocol witness table for MainActor;
  v15[4] = v8;
  v15[5] = v9;
  v16 = sub_10020AAE4(0, 0, v12, a6, v15);
  return sub_100410EAC(v16);
}

void sub_100415D10(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_1000CE6B8(&unk_101916430);
      v7 = swift_allocObject();
      v8 = j__malloc_size_0(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 1;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 5);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_100415E5C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_100014C84(0, &qword_10190E160);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_1000CE6B8(&qword_101908400);
      v7 = swift_allocObject();
      v8 = j__malloc_size_0(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_100415F68(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(void))
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v6)
  {
    if (v6 < 1)
    {
      if (v5 != a3)
      {
LABEL_7:
        a5(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_1000CE6B8(&qword_101908400);
      v9 = swift_allocObject();
      v10 = j__malloc_size_0(v9);
      v11 = v10 - 32;
      if (v10 < 32)
      {
        v11 = v10 - 25;
      }

      v9[2] = v6;
      v9[3] = (2 * (v11 >> 3)) | 1;
      if (v5 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void *sub_100416054(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = __CocoaDictionary.count.getter();
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    v3 = sub_10005EFF0(v2, 0);

    v1 = sub_100416808(&v5, (v3 + 32), v2, v1);
    sub_10005F150();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = *(v1 + 16);
    if (!v2)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v3;
}

void sub_100416104(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_1000CE6B8(&qword_101915FE0);
      v7 = swift_allocObject();
      v8 = j__malloc_size_0(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 48);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_10041623C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v7 = a4 >> 1;
  v8 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v8)
  {
    if (v8 < 1)
    {
      if (v7 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_1000CE6B8(a5);
      v11 = *(a7(0) - 8);
      v12 = *(v11 + 72);
      v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v14 = swift_allocObject();
      v15 = j__malloc_size_0(v14);
      if (!v12)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v15 - v13 == 0x8000000000000000 && v12 == -1)
      {
        goto LABEL_16;
      }

      v14[2] = v8;
      v14[3] = 2 * ((v15 - v13) / v12);
      if (v7 != a3)
      {
LABEL_10:
        a7(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

void sub_1004163E0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_1000CE6B8(&qword_101915298);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_1000CE6B8(&qword_101908400);
      v7 = swift_allocObject();
      v8 = j__malloc_size_0(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void *sub_100416518(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v10 = __CocoaSet.count.getter();
  if (!v10)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    a2 = (a2)(v10, 0);

    a5 = sub_100416F10(&v12, (a2 + 32), v10, a1, a3, a4, a5);
    sub_10005F150();
    if (a5 == v10)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v10 = *(a1 + 16);
    if (!v10)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return a2;
}

void *sub_100416708(void *result, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 8) | (4 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_100416808(uint64_t result, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 64;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v10 = v20 & *(v4 + 64);
    v22 = v9;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v15 = 0;
    a3 = 0;
    goto LABEL_32;
  }

  result = __CocoaDictionary.makeIterator()();
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v4 = result | 0x8000000000000000;
  v22 = 0;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v15 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v23 = a3;
  a3 = 0;
  v11 = 0;
  v12 = (v9 + 64) >> 6;
  v13 = 1;
  while (1)
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      if (!__CocoaDictionary.Iterator.next()())
      {
        goto LABEL_31;
      }

      swift_unknownObjectRelease();
      sub_100014C84(0, &qword_1019209A8);
      swift_dynamicCast();
      result = v24;
      v15 = v11;
      if (!v24)
      {
        goto LABEL_32;
      }

      goto LABEL_17;
    }

    v14 = v11;
    if (!v10)
    {
      break;
    }

    v15 = v11;
LABEL_13:
    v16 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    result = *(*(v4 + 56) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_32;
    }

LABEL_17:
    *a2 = result;
    a3 = v23;
    if (v13 == v23)
    {
LABEL_31:
      v15 = v11;
      goto LABEL_32;
    }

    ++a2;
    a3 = v13;
    if (__OFADD__(v13++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v15 >= v12)
    {
      break;
    }

    v10 = *(v8 + 8 * v15);
    ++v14;
    if (v10)
    {
      v11 = v15;
      goto LABEL_13;
    }
  }

  v10 = 0;
  if (v12 <= v11 + 1)
  {
    v21 = v11 + 1;
  }

  else
  {
    v21 = v12;
  }

  v15 = v21 - 1;
LABEL_32:
  *v7 = v4;
  v7[1] = v8;
  v7[2] = v22;
  v7[3] = v15;
  v7[4] = v10;
  return a3;
}

void *sub_100416A0C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {
        swift_unknownObjectRetain();
        goto LABEL_24;
      }

      ++v11;
      swift_unknownObjectRetain();
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_100416B60(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (v12 << 9) | (8 * __clz(__rbit64(v9)));
      v18 = *(*(a4 + 56) + v17);
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 48) + v17);
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_100416CB8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_100416DB8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_100416F10(void *result, void *a2, void (*a3)(void), uint64_t a4, void (*a5)(void), unint64_t *a6, void (*a7)(uint64_t))
{
  v8 = a4;
  v10 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v15 = 0;
    v24 = -1 << *(v8 + 32);
    v13 = v8 + 56;
    v14 = ~v24;
    v25 = -v24;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    else
    {
      v26 = -1;
    }

    v16 = v26 & *(v8 + 56);
    v17 = a3;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    a5 = 0;
    goto LABEL_32;
  }

  __CocoaSet.makeIterator()();
  a5(0);
  sub_100417C84(a6, a7);
  result = Set.Iterator.init(_cocoa:)();
  v8 = v32;
  v13 = v33;
  v14 = v34;
  v15 = v35;
  v16 = v36;
  v17 = a3;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!v17)
  {
    a5 = 0;
    goto LABEL_32;
  }

  if ((v17 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v28 = v14;
  v29 = a5;
  a5 = 0;
  v18 = (v14 + 64) >> 6;
  v19 = 1;
  while (1)
  {
    if (v8 < 0)
    {
      if (!__CocoaSet.Iterator.next()())
      {
        goto LABEL_30;
      }

      v29(0);
      swift_dynamicCast();
      result = v31;
      v17 = a3;
      if (!v31)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v20 = v15;
    if (!v16)
    {
      break;
    }

    v21 = v15;
LABEL_13:
    v22 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    result = *(*(v8 + 48) + ((v21 << 9) | (8 * v22)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v19 == v17)
    {
      a5 = v17;
      goto LABEL_30;
    }

    ++a2;
    a5 = v19;
    if (__OFADD__(v19++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v21 >= v18)
    {
      break;
    }

    v16 = *(v13 + 8 * v21);
    ++v20;
    if (v16)
    {
      v15 = v21;
      goto LABEL_13;
    }
  }

  v16 = 0;
  if (v18 <= v15 + 1)
  {
    v27 = v15 + 1;
  }

  else
  {
    v27 = v18;
  }

  v15 = v27 - 1;
LABEL_30:
  v14 = v28;
LABEL_32:
  *v10 = v8;
  v10[1] = v13;
  v10[2] = v14;
  v10[3] = v15;
  v10[4] = v16;
  return a5;
}

void sub_10041714C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = type metadata accessor for Date();
  v42 = *(v40 - 8);
  __chkstk_darwin(v40);
  v41 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10.n128_f64[0] = __chkstk_darwin(v9);
  v39 = &v33 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 64;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40, v10);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void *sub_1004173F0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

id sub_100417548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a2;
  v37 = a3;
  v5 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v5 - 8);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v32 - v9;
  result = sub_1004153CC();
  if (result)
  {
    v12 = result;
    v13 = *(a1 + OBJC_IVAR____TtC4Maps16VisitHistoryItem_place);
    v14 = &selRef__maps_mapsConnectionBrokerEndpointRecorderConnection;
    result = [*(v13 + 56) _muid];
    if (result)
    {
      v32[1] = v3;
      if (v12 >> 62)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
        v15 = result;
        if (result)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v15 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v15)
        {
LABEL_5:
          if (v15 < 1)
          {
            __break(1u);
            return result;
          }

          v16 = 0;
          v38 = v12 & 0xC000000000000001;
          v34 = v13;
          v35 = v12;
          v33 = v15;
          do
          {
            if (v38)
            {
              v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v17 = *(v12 + 8 * v16 + 32);
            }

            v18 = [*(v13 + 56) v14[321]];
            if (v18 == [*(*(v17 + OBJC_IVAR____TtC4Maps16VisitHistoryItem_place) + 56) v14[321]])
            {
              v19 = type metadata accessor for TaskPriority();
              v20 = *(v19 - 8);
              (*(v20 + 56))(v10, 1, 1, v19);
              type metadata accessor for MainActor();

              v21 = v7;
              v22 = v10;
              v23 = v36;
              v24 = v37;
              sub_1002AB7F0(v36, v37);
              v25 = static MainActor.shared.getter();
              v26 = swift_allocObject();
              v26[2] = v25;
              v26[3] = &protocol witness table for MainActor;
              v26[4] = v17;
              v26[5] = v23;
              v26[6] = v24;
              v10 = v22;
              v7 = v21;
              sub_100210F08(v10, v21);
              LODWORD(v25) = (*(v20 + 48))(v21, 1, v19);

              if (v25 == 1)
              {
                sub_1003671DC(v21);
              }

              else
              {
                TaskPriority.rawValue.getter();
                (*(v20 + 8))(v21, v19);
              }

              v27 = v26[2];
              swift_unknownObjectRetain();

              v14 = &selRef__maps_mapsConnectionBrokerEndpointRecorderConnection;
              if (v27)
              {
                swift_getObjectType();
                v28 = dispatch thunk of Actor.unownedExecutor.getter();
                v30 = v29;
                swift_unknownObjectRelease();
              }

              else
              {
                v28 = 0;
                v30 = 0;
              }

              v15 = v33;
              sub_1003671DC(v10);
              v31 = swift_allocObject();
              *(v31 + 16) = &unk_101205570;
              *(v31 + 24) = v26;
              if (v30 | v28)
              {
                v39 = 0;
                v40 = 0;
                v41 = v28;
                v42 = v30;
              }

              v13 = v34;
              swift_task_create();

              v12 = v35;
            }

            else
            {
            }

            ++v16;
          }

          while (v15 != v16);
        }
      }

      sub_1004154A8(v12);
    }
  }

  return result;
}