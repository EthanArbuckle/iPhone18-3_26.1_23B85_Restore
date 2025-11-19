Swift::Int sub_1001D6880(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1001D7918(v2);
  }

  v3 = *(v2 + 2);
  v35[0] = (v2 + 32);
  v35[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 < 2)
    {
      goto LABEL_48;
    }

    v8 = v2 + 64;
    v9 = -1;
    v10 = 1;
LABEL_9:
    v11 = v9;
    v12 = v8;
    while (1)
    {
      v13 = v12 + 16;
      v14 = *(v12 + 2);
      v15 = v12[56];
      v16 = v12[56];
      if (v12[56])
      {
        if (v15 == 1)
        {
          v16 = 4;
        }

        else
        {
          v18 = *(v12 + 3);
          v17 = *(v12 + 4);
          v19 = *(v12 + 5) | *(v12 + 6);
          if (v19 | v14 | v17 | v18)
          {
            v20 = v19 | v17 | v18;
            if (v14 != 1 || v20)
            {
              if (v20)
              {
                v21 = 0;
              }

              else
              {
                v21 = v14 == 2;
              }

              if (v21)
              {
                v16 = 5;
              }

              else
              {
                v16 = 6;
              }
            }

            else
            {
              v16 = 3;
            }
          }

          else
          {
            v16 = 2;
          }
        }
      }

      result = *(v12 - 4);
      v22 = v12[8];
      if (!v12[8])
      {
        goto LABEL_34;
      }

      if (v22 == 1)
      {
        if (v16 >= 4)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v23 = *(v12 - 1);
        v24 = *(v12 - 2) | *(v12 - 3);
        if (!(v24 | result | v23 | *v12))
        {
          v22 = 2;
LABEL_34:
          if (v16 >= v22)
          {
            goto LABEL_8;
          }

          goto LABEL_35;
        }

        v25 = v24 | v23 | *v12;
        if (result != 1 || v25)
        {
          if (v25)
          {
            v31 = 0;
          }

          else
          {
            v31 = result == 2;
          }

          if (v31)
          {
            v32 = 5;
          }

          else
          {
            v32 = 6;
          }

          if (v16 >= v32)
          {
LABEL_8:
            ++v10;
            v8 += 48;
            --v9;
            if (v10 == v3)
            {
              goto LABEL_48;
            }

            goto LABEL_9;
          }
        }

        else if (v16 >= 3)
        {
          goto LABEL_8;
        }
      }

LABEL_35:
      v26 = *(v12 + 24);
      v27 = *(v12 + 40);
      v28 = *(v12 - 1);
      *v13 = *(v12 - 2);
      *(v12 + 2) = v28;
      v29 = *v12;
      *(v12 - 4) = v14;
      *(v12 - 24) = v26;
      *(v12 - 8) = v27;
      v12[8] = v15;
      v12 -= 48;
      v13[2] = v29;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_8;
      }
    }
  }

  v5 = result;
  v6 = v3 >> 1;
  if (v3 >= 2)
  {
    v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v7[2] = v6;
  }

  else
  {
    v7 = &_swiftEmptyArrayStorage;
  }

  v33[0] = v7 + 4;
  v33[1] = v6;
  sub_1001D6ACC(v33, v34, v35, v5);
  v7[2] = 0;

LABEL_48:
  *a1 = v2;
  return result;
}

uint64_t sub_1001D6ACC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v146 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = &_swiftEmptyArrayStorage;
LABEL_186:
    v146 = *v146;
    if (!v146)
    {
      goto LABEL_224;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_188:
      v138 = v9 + 16;
      v139 = *(v9 + 2);
      if (v139 >= 2)
      {
        while (*a3)
        {
          v140 = &v9[16 * v139];
          v141 = *v140;
          v142 = &v138[2 * v139];
          v143 = v142[1];
          sub_1001D732C((*a3 + 48 * *v140), (*a3 + 48 * *v142), (*a3 + 48 * v143), v146);
          if (v5)
          {
          }

          if (v143 < v141)
          {
            goto LABEL_210;
          }

          if (v139 - 2 >= *v138)
          {
            goto LABEL_211;
          }

          *v140 = v141;
          *(v140 + 1) = v143;
          v144 = *v138 - v139;
          if (*v138 < v139)
          {
            goto LABEL_212;
          }

          v139 = *v138 - 1;
          result = memmove(v142, v142 + 2, 16 * v144);
          *v138 = v139;
          if (v139 <= 1)
          {
          }
        }

        goto LABEL_222;
      }
    }

LABEL_218:
    result = sub_1001D77EC(v9);
    v9 = result;
    goto LABEL_188;
  }

  v7 = a4;
  v8 = 0;
  v9 = &_swiftEmptyArrayStorage;
LABEL_4:
  v10 = v8++;
  if (v8 >= v6)
  {
    goto LABEL_86;
  }

  v11 = *a3;
  v12 = *a3 + 48 * v8;
  v13 = *(v12 + 40);
  if (*(v12 + 40))
  {
    if (v13 == 1)
    {
      v13 = 4;
    }

    else
    {
      v15 = *(v12 + 24);
      v14 = *(v12 + 32);
      v16 = *(v12 + 16);
      v17 = *v12;
      v18 = *(v12 + 8);
      v19 = v15 | v14;
      v20 = v19 | v17 | v16 | v18;
      v21 = v19 | v16 | v18;
      if (v21)
      {
        v22 = 0;
      }

      else
      {
        v22 = v17 == 2;
      }

      if (v22)
      {
        v23 = 5;
      }

      else
      {
        v23 = 6;
      }

      v24 = v17 == 1 && v21 == 0;
      v25 = 3;
      if (!v24)
      {
        v25 = v23;
      }

      v13 = 2;
      if (v20)
      {
        v13 = v25;
      }
    }
  }

  v26 = (v11 + 48 * v10);
  v27 = *(v26 + 40);
  if (*(v26 + 40))
  {
    if (v27 == 1)
    {
      v27 = 4;
    }

    else
    {
      v28 = *v26;
      v29 = v26[1];
      v31 = v26[2];
      v30 = v26[3];
      v32 = v26[4];
      v33 = v31 | v29;
      v34 = v33 | v28 | v30 | v32;
      v35 = v33 | v30 | v32;
      if (v35)
      {
        v36 = 0;
      }

      else
      {
        v36 = v28 == 2;
      }

      if (v36)
      {
        v37 = 5;
      }

      else
      {
        v37 = 6;
      }

      v38 = v28 == 1 && v35 == 0;
      v39 = 3;
      if (!v38)
      {
        v39 = v37;
      }

      v27 = 2;
      if (v34)
      {
        v27 = v39;
      }
    }
  }

  if (v6 <= v10 + 2)
  {
    v40 = v10 + 2;
  }

  else
  {
    v40 = v6;
  }

  v41 = v40 - v10 - 2;
  v42 = 48 * v10;
  v43 = v11 + 48 * v10 + 72;
  while (v41)
  {
    v45 = *(v43 + 64);
    if (!*(v43 + 64))
    {
      goto LABEL_54;
    }

    if (v45 == 1)
    {
      v45 = 4;
      v44 = *(v43 + 16);
      if (*(v43 + 16))
      {
        goto LABEL_55;
      }

      goto LABEL_42;
    }

    v46 = *(v43 + 24);
    v47 = *(v43 + 32);
    v48 = *(v43 + 40);
    v49 = *(v43 + 48) | *(v43 + 56);
    result = v49 | v46 | v48 | v47;
    if (!result)
    {
      v45 = 2;
LABEL_54:
      v44 = *(v43 + 16);
      if (*(v43 + 16))
      {
        goto LABEL_55;
      }

      goto LABEL_42;
    }

    v50 = v49 | v48 | v47;
    if (v46 != 1 || v50)
    {
      if (v50)
      {
        v54 = 0;
      }

      else
      {
        v54 = v46 == 2;
      }

      if (v54)
      {
        v45 = 5;
      }

      else
      {
        v45 = 6;
      }

      v44 = *(v43 + 16);
      if (!*(v43 + 16))
      {
        goto LABEL_42;
      }

LABEL_55:
      if (v44 == 1)
      {
        v44 = 4;
      }

      else
      {
        v51 = *(v43 - 24);
        v52 = *(v43 + 8);
        result = *(v43 - 8) | *(v43 - 16);
        if (result | v51 | *v43 | v52)
        {
          v53 = result | *v43 | v52;
          if (v51 != 1 || v53)
          {
            if (v53)
            {
              v55 = 0;
            }

            else
            {
              v55 = v51 == 2;
            }

            if (v55)
            {
              v44 = 5;
            }

            else
            {
              v44 = 6;
            }
          }

          else
          {
            v44 = 3;
          }
        }

        else
        {
          v44 = 2;
        }
      }

      goto LABEL_42;
    }

    v45 = 3;
    v44 = *(v43 + 16);
    if (*(v43 + 16))
    {
      goto LABEL_55;
    }

LABEL_42:
    --v41;
    v43 += 48;
    ++v8;
    if (v13 < v27 == v45 >= v44)
    {
      goto LABEL_76;
    }
  }

  v8 = v40;
LABEL_76:
  if (v13 < v27)
  {
    if (v8 < v10)
    {
      goto LABEL_215;
    }

    if (v10 < v8)
    {
      v56 = 48 * v8 - 48;
      v57 = v8;
      v58 = v10;
      do
      {
        if (v58 != --v57)
        {
          v67 = *a3;
          if (!*a3)
          {
            goto LABEL_221;
          }

          v59 = (v67 + v42);
          v60 = *(v67 + v42 + 32);
          v61 = (v67 + v56);
          v62 = *(v59 + 40);
          v63 = *v59;
          v64 = v59[1];
          v66 = v61[1];
          v65 = v61[2];
          *v59 = *v61;
          v59[1] = v66;
          v59[2] = v65;
          *v61 = v63;
          v61[1] = v64;
          *(v61 + 4) = v60;
          *(v61 + 40) = v62;
        }

        ++v58;
        v56 -= 48;
        v42 += 48;
      }

      while (v58 < v57);
      v6 = a3[1];
    }
  }

LABEL_86:
  if (v8 >= v6)
  {
    goto LABEL_135;
  }

  if (__OFSUB__(v8, v10))
  {
    goto LABEL_214;
  }

  if (v8 - v10 >= v7)
  {
    goto LABEL_135;
  }

  if (__OFADD__(v10, v7))
  {
    goto LABEL_216;
  }

  if (v10 + v7 < v6)
  {
    v6 = v10 + v7;
  }

  if (v6 < v10)
  {
LABEL_217:
    __break(1u);
    goto LABEL_218;
  }

  if (v8 == v6)
  {
    goto LABEL_135;
  }

  v68 = *a3;
  v69 = *a3 + 48 * v8 - 48;
  v70 = v10 - v8;
LABEL_96:
  v71 = v70;
  v72 = v69;
  while (1)
  {
    v73 = (v72 + 48);
    v74 = *(v72 + 48);
    v75 = *(v72 + 88);
    v76 = *(v72 + 88);
    if (!*(v72 + 88))
    {
      goto LABEL_107;
    }

    if (v75 == 1)
    {
      v76 = 4;
      v77 = *(v72 + 40);
      if (!*(v72 + 40))
      {
        goto LABEL_129;
      }

      goto LABEL_108;
    }

    v79 = *(v72 + 56);
    v78 = *(v72 + 64);
    result = *(v72 + 72) | *(v72 + 80);
    if (!(result | v74 | v78 | v79))
    {
      v76 = 2;
LABEL_107:
      v77 = *(v72 + 40);
      if (!*(v72 + 40))
      {
        goto LABEL_129;
      }

LABEL_108:
      if (v77 == 1)
      {
        v77 = 4;
      }

      else
      {
        v81 = *v72;
        result = *(v72 + 24);
        v82 = *(v72 + 32);
        v83 = *(v72 + 16) | *(v72 + 8);
        if (v83 | *v72 | result | v82)
        {
          result |= v83 | v82;
          if (v81 != 1 || result)
          {
            if (result)
            {
              v85 = 0;
            }

            else
            {
              v85 = v81 == 2;
            }

            if (v85)
            {
              v77 = 5;
            }

            else
            {
              v77 = 6;
            }
          }

          else
          {
            v77 = 3;
          }
        }

        else
        {
          v77 = 2;
        }
      }

      goto LABEL_129;
    }

    v80 = result | v78 | v79;
    if (v74 == 1 && !v80)
    {
      v76 = 3;
      v77 = *(v72 + 40);
      if (!*(v72 + 40))
      {
        goto LABEL_129;
      }

      goto LABEL_108;
    }

    if (v80)
    {
      v84 = 0;
    }

    else
    {
      v84 = v74 == 2;
    }

    if (v84)
    {
      v76 = 5;
    }

    else
    {
      v76 = 6;
    }

    v77 = *(v72 + 40);
    if (*(v72 + 40))
    {
      goto LABEL_108;
    }

LABEL_129:
    if (v76 >= v77)
    {
      goto LABEL_95;
    }

    if (!v68)
    {
      break;
    }

    v86 = *(v72 + 56);
    v87 = *(v72 + 72);
    v88 = *(v72 + 16);
    *v73 = *v72;
    *(v72 + 64) = v88;
    v89 = *(v72 + 32);
    *v72 = v74;
    *(v72 + 8) = v86;
    *(v72 + 24) = v87;
    *(v72 + 40) = v75;
    v72 -= 48;
    v73[2] = v89;
    if (__CFADD__(v71++, 1))
    {
LABEL_95:
      ++v8;
      v69 += 48;
      --v70;
      if (v8 == v6)
      {
        v8 = v6;
LABEL_135:
        if (v8 < v10)
        {
          goto LABEL_213;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1001D7800(0, *(v9 + 2) + 1, 1, v9);
          v9 = result;
        }

        v92 = *(v9 + 2);
        v91 = *(v9 + 3);
        v93 = v92 + 1;
        if (v92 >= v91 >> 1)
        {
          result = sub_1001D7800((v91 > 1), v92 + 1, 1, v9);
          v9 = result;
        }

        *(v9 + 2) = v93;
        v94 = &v9[16 * v92];
        *(v94 + 4) = v10;
        *(v94 + 5) = v8;
        v95 = *v146;
        if (!*v146)
        {
          goto LABEL_223;
        }

        if (!v92)
        {
LABEL_3:
          v6 = a3[1];
          v7 = a4;
          if (v8 >= v6)
          {
            goto LABEL_186;
          }

          goto LABEL_4;
        }

        while (1)
        {
          v96 = v93 - 1;
          if (v93 >= 4)
          {
            break;
          }

          if (v93 == 3)
          {
            v97 = *(v9 + 4);
            v98 = *(v9 + 5);
            v107 = __OFSUB__(v98, v97);
            v99 = v98 - v97;
            v100 = v107;
LABEL_155:
            if (v100)
            {
              goto LABEL_201;
            }

            v113 = &v9[16 * v93];
            v115 = *v113;
            v114 = *(v113 + 1);
            v116 = __OFSUB__(v114, v115);
            v117 = v114 - v115;
            v118 = v116;
            if (v116)
            {
              goto LABEL_204;
            }

            v119 = &v9[16 * v96 + 32];
            v121 = *v119;
            v120 = *(v119 + 1);
            v107 = __OFSUB__(v120, v121);
            v122 = v120 - v121;
            if (v107)
            {
              goto LABEL_207;
            }

            if (__OFADD__(v117, v122))
            {
              goto LABEL_208;
            }

            if (v117 + v122 >= v99)
            {
              if (v99 < v122)
              {
                v96 = v93 - 2;
              }

              goto LABEL_176;
            }

            goto LABEL_169;
          }

          v123 = &v9[16 * v93];
          v125 = *v123;
          v124 = *(v123 + 1);
          v107 = __OFSUB__(v124, v125);
          v117 = v124 - v125;
          v118 = v107;
LABEL_169:
          if (v118)
          {
            goto LABEL_203;
          }

          v126 = &v9[16 * v96];
          v128 = *(v126 + 4);
          v127 = *(v126 + 5);
          v107 = __OFSUB__(v127, v128);
          v129 = v127 - v128;
          if (v107)
          {
            goto LABEL_206;
          }

          if (v129 < v117)
          {
            goto LABEL_3;
          }

LABEL_176:
          v134 = v96 - 1;
          if (v96 - 1 >= v93)
          {
            __break(1u);
LABEL_197:
            __break(1u);
LABEL_198:
            __break(1u);
LABEL_199:
            __break(1u);
LABEL_200:
            __break(1u);
LABEL_201:
            __break(1u);
LABEL_202:
            __break(1u);
LABEL_203:
            __break(1u);
LABEL_204:
            __break(1u);
LABEL_205:
            __break(1u);
LABEL_206:
            __break(1u);
LABEL_207:
            __break(1u);
LABEL_208:
            __break(1u);
LABEL_209:
            __break(1u);
LABEL_210:
            __break(1u);
LABEL_211:
            __break(1u);
LABEL_212:
            __break(1u);
LABEL_213:
            __break(1u);
LABEL_214:
            __break(1u);
LABEL_215:
            __break(1u);
LABEL_216:
            __break(1u);
            goto LABEL_217;
          }

          if (!*a3)
          {
            goto LABEL_220;
          }

          v135 = *&v9[16 * v134 + 32];
          v136 = *&v9[16 * v96 + 40];
          sub_1001D732C((*a3 + 48 * v135), (*a3 + 48 * *&v9[16 * v96 + 32]), (*a3 + 48 * v136), v95);
          if (v5)
          {
          }

          if (v136 < v135)
          {
            goto LABEL_197;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_1001D77EC(v9);
          }

          if (v134 >= *(v9 + 2))
          {
            goto LABEL_198;
          }

          v137 = &v9[16 * v134];
          *(v137 + 4) = v135;
          *(v137 + 5) = v136;
          result = sub_1001D7760(v96);
          v93 = *(v9 + 2);
          if (v93 <= 1)
          {
            goto LABEL_3;
          }
        }

        v101 = &v9[16 * v93 + 32];
        v102 = *(v101 - 64);
        v103 = *(v101 - 56);
        v107 = __OFSUB__(v103, v102);
        v104 = v103 - v102;
        if (v107)
        {
          goto LABEL_199;
        }

        v106 = *(v101 - 48);
        v105 = *(v101 - 40);
        v107 = __OFSUB__(v105, v106);
        v99 = v105 - v106;
        v100 = v107;
        if (v107)
        {
          goto LABEL_200;
        }

        v108 = &v9[16 * v93];
        v110 = *v108;
        v109 = *(v108 + 1);
        v107 = __OFSUB__(v109, v110);
        v111 = v109 - v110;
        if (v107)
        {
          goto LABEL_202;
        }

        v107 = __OFADD__(v99, v111);
        v112 = v99 + v111;
        if (v107)
        {
          goto LABEL_205;
        }

        if (v112 >= v104)
        {
          v130 = &v9[16 * v96 + 32];
          v132 = *v130;
          v131 = *(v130 + 1);
          v107 = __OFSUB__(v131, v132);
          v133 = v131 - v132;
          if (v107)
          {
            goto LABEL_209;
          }

          if (v99 < v133)
          {
            v96 = v93 - 2;
          }

          goto LABEL_176;
        }

        goto LABEL_155;
      }

      goto LABEL_96;
    }
  }

  __break(1u);
LABEL_220:
  __break(1u);
LABEL_221:
  __break(1u);
LABEL_222:
  __break(1u);
LABEL_223:
  __break(1u);
LABEL_224:
  __break(1u);
  return result;
}

uint64_t sub_1001D732C(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = (__dst - __src) / 48;
  v10 = a3 - __dst;
  v11 = (a3 - __dst) / 48;
  if (v9 < v11)
  {
    v12 = 48 * v9;
    if (a4 != __src || &__src[v12] <= a4)
    {
      memmove(a4, __src, v12);
    }

    v13 = &v4[v12];
    if (v8 < 48 || v6 >= v5)
    {
LABEL_98:
      v35 = v7;
      goto LABEL_100;
    }

    while (1)
    {
      v14 = v6[40];
      if (!v6[40])
      {
        goto LABEL_20;
      }

      if (v14 == 1)
      {
        v14 = 4;
        v15 = v4[40];
        if (!v4[40])
        {
          goto LABEL_10;
        }

        goto LABEL_21;
      }

      v17 = *v6;
      v18 = *(v6 + 1);
      v19 = *(v6 + 2);
      v20 = *(v6 + 3) | *(v6 + 4);
      if (!(v20 | *v6 | v19 | v18))
      {
        break;
      }

      v21 = v20 | v19 | v18;
      if (v17 != 1 || v21)
      {
        if (v21)
        {
          v29 = 0;
        }

        else
        {
          v29 = v17 == 2;
        }

        if (v29)
        {
          v14 = 5;
        }

        else
        {
          v14 = 6;
        }

        v15 = v4[40];
        if (!v4[40])
        {
LABEL_10:
          if (v14 >= v15)
          {
            goto LABEL_23;
          }

          goto LABEL_11;
        }
      }

      else
      {
        v14 = 3;
        v15 = v4[40];
        if (!v4[40])
        {
          goto LABEL_10;
        }
      }

LABEL_21:
      if (v15 == 1)
      {
        if (v14 >= 4)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v24 = *v4;
        v25 = *(v4 + 3);
        v26 = *(v4 + 4);
        v27 = *(v4 + 2) | *(v4 + 1);
        if (v27 | *v4 | v25 | v26)
        {
          v28 = v27 | v25 | v26;
          if (v24 != 1 || v28)
          {
            if (v28)
            {
              v30 = 0;
            }

            else
            {
              v30 = v24 == 2;
            }

            if (v30)
            {
              v31 = 5;
            }

            else
            {
              v31 = 6;
            }

            if (v14 >= v31)
            {
LABEL_23:
              v16 = v4;
              v29 = v7 == v4;
              v4 += 48;
              if (v29)
              {
                goto LABEL_25;
              }

LABEL_24:
              v22 = *v16;
              v23 = *(v16 + 2);
              *(v7 + 1) = *(v16 + 1);
              *(v7 + 2) = v23;
              *v7 = v22;
              goto LABEL_25;
            }
          }

          else if (v14 >= 3)
          {
            goto LABEL_23;
          }
        }

        else if (v14 >= 2)
        {
          goto LABEL_23;
        }
      }

LABEL_11:
      v16 = v6;
      v29 = v7 == v6;
      v6 += 48;
      if (!v29)
      {
        goto LABEL_24;
      }

LABEL_25:
      v7 += 48;
      if (v4 >= v13 || v6 >= v5)
      {
        goto LABEL_98;
      }
    }

    v14 = 2;
LABEL_20:
    v15 = v4[40];
    if (!v4[40])
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

  v32 = 48 * v11;
  if (a4 != __dst || &__dst[v32] <= a4)
  {
    memmove(a4, __dst, 48 * v11);
  }

  v13 = &v4[v32];
  if (v10 < 48 || v6 <= v7)
  {
LABEL_99:
    v35 = v6;
    goto LABEL_100;
  }

  do
  {
    v33 = 0;
    v34 = v13;
    v35 = v6 - 48;
    while (1)
    {
      v36 = *&v34[v33 - 48];
      v37 = v34[v33 - 8];
      if (!v34[v33 - 8])
      {
        goto LABEL_68;
      }

      if (v37 == 1)
      {
        v37 = 4;
        v38 = *(v6 - 8);
        if (!*(v6 - 8))
        {
          goto LABEL_90;
        }

        goto LABEL_69;
      }

      v40 = *&v34[v33 - 40];
      v39 = *&v34[v33 - 32];
      v41 = *&v34[v33 - 24] | *&v34[v33 - 16];
      if (!(v41 | v36 | v39 | v40))
      {
        v37 = 2;
LABEL_68:
        v38 = *(v6 - 8);
        if (!*(v6 - 8))
        {
          goto LABEL_90;
        }

LABEL_69:
        if (v38 == 1)
        {
          v38 = 4;
        }

        else
        {
          v43 = *(v6 - 6);
          v44 = *(v6 - 3);
          v45 = *(v6 - 2);
          v46 = *(v6 - 4) | *(v6 - 5);
          if (v46 | v43 | v44 | v45)
          {
            v47 = v46 | v44 | v45;
            if (v43 != 1 || v47)
            {
              if (v47)
              {
                v49 = 0;
              }

              else
              {
                v49 = v43 == 2;
              }

              if (v49)
              {
                v38 = 5;
              }

              else
              {
                v38 = 6;
              }
            }

            else
            {
              v38 = 3;
            }
          }

          else
          {
            v38 = 2;
          }
        }

        goto LABEL_90;
      }

      v42 = v41 | v39 | v40;
      if (v36 == 1 && !v42)
      {
        v37 = 3;
        v38 = *(v6 - 8);
        if (!*(v6 - 8))
        {
          goto LABEL_90;
        }

        goto LABEL_69;
      }

      if (v42)
      {
        v48 = 0;
      }

      else
      {
        v48 = v36 == 2;
      }

      if (v48)
      {
        v37 = 5;
      }

      else
      {
        v37 = 6;
      }

      v38 = *(v6 - 8);
      if (*(v6 - 8))
      {
        goto LABEL_69;
      }

LABEL_90:
      if (v37 < v38)
      {
        break;
      }

      if (&v5[v33] != &v34[v33])
      {
        v50 = &v5[v33 - 48];
        v51 = *&v34[v33 - 48];
        v52 = *&v34[v33 - 16];
        *(v50 + 1) = *&v34[v33 - 32];
        *(v50 + 2) = v52;
        *v50 = v51;
      }

      v33 -= 48;
      v13 = &v34[v33];
      if (&v34[v33] <= v4)
      {
        goto LABEL_99;
      }
    }

    v53 = &v5[v33];
    v5 = &v5[v33 - 48];
    if (v53 != v6)
    {
      v54 = *v35;
      v55 = *(v6 - 1);
      *(v5 + 1) = *(v6 - 2);
      *(v5 + 2) = v55;
      *v5 = v54;
    }

    v13 = &v34[v33];
    if (&v34[v33] <= v4)
    {
      break;
    }

    v6 -= 48;
  }

  while (v35 > v7);
  v13 = &v34[v33];
LABEL_100:
  v56 = 48 * ((v13 - v4) / 48);
  if (v35 != v4 || v35 >= &v4[v56])
  {
    memmove(v35, v4, v56);
  }

  return 1;
}

uint64_t sub_1001D7760(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1001D77EC(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_1001D7800(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100168088(&qword_1005763A8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

double sub_1001D792C()
{
  sub_100168088(&qword_100574840);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1004007A0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 48) = &_swiftEmptySetSingleton;
  *(v0 + 72) = 0;
  result = 0.0;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0;
  *(v0 + 120) = 2;
  *(v0 + 128) = 1;
  *(v0 + 136) = 0u;
  *(v0 + 152) = 0u;
  *(v0 + 168) = 2;
  *(v0 + 208) = 0;
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0u;
  *(v0 + 216) = 1;
  *(v0 + 224) = 2;
  *(v0 + 232) = 0u;
  *(v0 + 248) = 0u;
  *(v0 + 264) = 2;
  return result;
}

uint64_t sub_1001D7A08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = &v132;
  v6 = *(a1 + 8);
  v96 = *a1;
  v97 = a3;
  v7 = *(a1 + 24);
  v94 = *(a1 + 16);
  v95 = v6;
  v92 = *(a1 + 32);
  v93 = v7;
  v8 = a1;
  v91 = *(a1 + 40);
  v90 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v90 - 8);
  __chkstk_darwin(v90);
  v89 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for DispatchQoS();
  v11 = *(v88 - 8);
  __chkstk_darwin(v88);
  v99 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v83 = a2;
  v13 = *(a2 + 64);
  v118 = 0;
  v119 = 0;
  v121 = 0;
  v122 = 0;
  v120 = &_swiftEmptySetSingleton;
  v123 = 0;
  v124 = 0u;
  memset(v125, 0, 24);
  BYTE8(v125[1]) = 2;
  *&v126[0] = 1;
  *(v126 + 8) = 0u;
  *(&v126[1] + 8) = 0u;
  BYTE8(v126[2]) = 2;
  v127 = 0u;
  memset(v128, 0, 24);
  BYTE8(v128[1]) = 1;
  *&v129[0] = 2;
  *(v129 + 8) = 0u;
  *(&v129[1] + 8) = 0u;
  BYTE8(v129[2]) = 2;
  v132 = 0u;
  v133[0] = &_swiftEmptySetSingleton;
  *(v133 + 9) = 0u;
  swift_bridgeObjectRetain_n();
  sub_1001D79C8(&v132, &v116);
  v14 = sub_1001D6348(&v132, v13);
  swift_bridgeObjectRelease_n();
  sub_1001D87B0(&v132);
  v132 = v124;
  v133[0] = v125[0];
  *(v133 + 9) = *(v125 + 9);

  sub_1001D79C8(&v132, &v116);
  v15 = sub_1001D6348(&v132, v14);
  swift_bridgeObjectRelease_n();
  sub_1001D87B0(&v132);
  v132 = v126[0];
  v133[0] = v126[1];
  *(v133 + 9) = *(&v126[1] + 9);

  sub_1001D79C8(&v132, &v116);
  v16 = sub_1001D6348(&v132, v15);
  swift_bridgeObjectRelease_n();
  sub_1001D87B0(&v132);
  v132 = v127;
  v133[0] = v128[0];
  *(v133 + 9) = *(v128 + 9);

  sub_1001D79C8(&v132, &v116);
  v17 = sub_1001D6348(&v132, v16);
  swift_bridgeObjectRelease_n();
  sub_1001D87B0(&v132);
  v132 = v129[0];
  v133[0] = v129[1];
  *(v133 + 9) = *(&v129[1] + 9);

  sub_1001D79C8(&v132, &v116);
  v18 = sub_1001D6348(&v132, v17);
  swift_bridgeObjectRelease_n();
  sub_1001D87B0(&v132);
  swift_arrayDestroy();
  *&v116 = v18;

  v19 = 0;
  sub_1001D6880(&v116);

  v110 = v116;
  v109 = *(v116 + 16);
  v98 = v8;
  if (!v109)
  {
    v84 = &_swiftEmptyArrayStorage;
    goto LABEL_52;
  }

  v20 = 0;
  v86 = (v9 + 1);
  v87 = v117;
  v85 = (v11 + 8);
  v21 = v110 + 72;
  v81 = v109 - 1;
  v84 = &_swiftEmptyArrayStorage;
  v22 = v8;
  v82 = v110 + 72;
  do
  {
    v23 = (v21 + 48 * v20);
    v24 = v20;
    while (1)
    {
      if (v24 >= *(v110 + 16))
      {
        __break(1u);
        goto LABEL_68;
      }

      v19 = *(v23 - 5);
      v26 = *(v23 - 4);
      v27 = *(v23 - 3);
      v8 = *(v23 - 2);
      v18 = *(v23 - 1);
      v28 = *v23;
      v9 = v28;
      v29 = *v22;
      v5 = *(v22 + 8);
      v30 = *(v22 + 24);
      v112 = *(v22 + 16);
      v31 = *(v22 + 32);
      if (*(v22 + 40) > 1u)
      {
        if (*(v22 + 40) != 2)
        {
          goto LABEL_45;
        }

        if (v112 | v5 | v29 | v30 | v31)
        {
          v33 = v112 | v5 | v30 | v31;
          if (v29 != 1 || v33)
          {
            if (v33)
            {
              v59 = 0;
            }

            else
            {
              v59 = v29 == 2;
            }

            v32 = 5;
            if (!v59)
            {
              v32 = 6;
            }
          }

          else
          {
            v32 = 3;
          }
        }

        else
        {
          v32 = 2;
        }
      }

      else
      {
        v32 = 4;
        if (!*(v22 + 40))
        {
          v32 = *(v22 + 40);
        }
      }

      if (v28)
      {
        break;
      }

LABEL_27:
      if (v32 != v28)
      {
        goto LABEL_45;
      }

LABEL_28:
      if (!*(v22 + 40))
      {
        v100 = v24;
        v107 = v31;
        v108 = v29;
        v111 = v30;
        v35 = v5;
        v36 = v22;
        v37 = v27;
        v38 = v26;
        sub_1001D8730(v96, v95, v94, v93, v92, v91);
        v39 = v36;
        v40 = v35;
        v41 = v111;
        sub_100010430(v39, &v116, &qword_1005763A0);
        v105 = v19;
        v106 = v8;
        v102 = v18;
        v42 = v18;
        v43 = v107;
        sub_1001D8730(v19, v38, v37, v8, v42, v9);
        v8 = v112;

        sub_1000112B4(v41);
        v101 = v9;
        v103 = v37;
        v104 = v38;

        v44 = v43;
        sub_100013CB4(v41);
        if (!v9)
        {

          v8 = sub_1001D50E0(v45, v8);
        }

        v46 = v40;
        sub_100010430(v97 + 16, v113, &qword_100576398);
        if (v114)
        {
          sub_1000044A0(v113, v114);
          sub_10002BD04();
          v112 = v40;
          v47 = static OS_dispatch_queue.main.getter();
          v48 = swift_allocObject();
          swift_weakInit();
          v49 = swift_allocObject();
          v50 = v108;
          *(v49 + 16) = v48;
          *(v49 + 24) = v50;
          v51 = v111;
          *(v49 + 32) = v112;
          *(v49 + 40) = v8;
          *(v49 + 48) = v51;
          *(v49 + 56) = v44;
          *(v49 + 64) = 0;
          *&v117[1] = sub_1001D87E0;
          *(&v117[1] + 1) = v49;
          *&v116 = _NSConcreteStackBlock;
          *(&v116 + 1) = 1107296256;
          *&v117[0] = sub_10000F038;
          *(&v117[0] + 1) = &unk_1004E3818;
          v52 = _Block_copy(&v116);
          sub_1001D8730(v50, v112, v8, v51, v44, 0);

          static DispatchQoS.unspecified.getter();
          *&v116 = &_swiftEmptyArrayStorage;
          sub_1001D293C();
          sub_100168088(&unk_100575CD0);
          sub_100009FAC(&qword_10057D390, &unk_100575CD0);
          v53 = v8;
          v55 = v89;
          v54 = v90;
          v19 = &unk_100403750;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          v9 = &qword_1005763A0;
          v46 = v112;
          v56 = v52;
          v3 = v98;
          _Block_release(v56);

          v57 = v55;
          v8 = v53;
          v25 = v107;
          v18 = v108;
          v58 = v54;
          v5 = v111;
          (*v86)(v57, v58);
          (*v85)(v99, v88);
          sub_100004590(v113);
        }

        else
        {
          sub_100009104(v113, &qword_100576398);
          v18 = v108;
          v5 = v111;
          v25 = v44;
          v3 = v98;
          v19 = &unk_100403750;
          v9 = &qword_1005763A0;
        }

        sub_1001D869C(v105, v104, v103, v106, v102, v101);
        sub_100009104(v3, &qword_1005763A0);
        sub_1001D869C(v18, v46, v8, v5, v25, 0);
        v22 = v3;
        v24 = v100;
      }

      ++v24;
      v23 += 48;
      if (v109 == v24)
      {
        goto LABEL_52;
      }
    }

    if (v28 == 1)
    {
      if (v32 != 4)
      {
        goto LABEL_45;
      }

      goto LABEL_28;
    }

    if (!(v27 | v26 | v19 | v8 | v18))
    {
      v28 = 2;
      goto LABEL_27;
    }

    v34 = v27 | v26 | v8 | v18;
    if (v19 == 1 && !v34)
    {
      if (v32 != 3)
      {
        goto LABEL_45;
      }

      goto LABEL_28;
    }

    if (v34)
    {
      v60 = 0;
    }

    else
    {
      v60 = v19 == 2;
    }

    v61 = 5;
    if (!v60)
    {
      v61 = 6;
    }

    if (v32 == v61)
    {
      goto LABEL_28;
    }

LABEL_45:
    v3 = v24;
    v5 = v22;
    v105 = v19;
    v106 = v8;
    v62 = v26;
    v63 = v27;
    v64 = v8;
    v8 = v18;
    v65 = v18;
    v18 = v9;
    sub_1001D8730(v19, v26, v27, v64, v65, v9);
    v9 = v84;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v115 = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1001A76D8(0, v9[2] + 1, 1);
      v9 = v115;
    }

    v68 = v9[2];
    v67 = v9[3];
    v19 = v68 + 1;
    v70 = v105;
    v69 = v106;
    v71 = v8;
    if (v68 >= v67 >> 1)
    {
      sub_1001A76D8((v67 > 1), v68 + 1, 1);
      v70 = v105;
      v69 = v106;
      v71 = v8;
      v9 = v115;
    }

    v20 = v3 + 1;
    v9[2] = v19;
    v84 = v9;
    v72 = &v9[6 * v68];
    v72[4] = v70;
    v72[5] = v62;
    v72[6] = v63;
    v72[7] = v69;
    v72[8] = v71;
    *(v72 + 72) = v18;
    v21 = v82;
    v22 = v5;
  }

  while (v81 != v3);
LABEL_52:

  if (v84[2])
  {
    v9 = v84[4];
    v19 = v84[5];
    v23 = v84[6];
    v18 = v84[7];
    v5 = v84[8];
    LODWORD(v8) = *(v84 + 72);
    sub_1001D8730(v9, v19, v23, v18, v5, *(v84 + 72));
  }

  else
  {
    v9 = 0;
    v19 = 0;
    v23 = 0;
    v18 = 0;
    v5 = 0;
    LODWORD(v8) = 255;
  }

  v130[0] = v9;
  v130[1] = v19;
  v130[2] = v23;
  v130[3] = v18;
  v130[4] = v5;
  v131 = v8;
  if (v8 == 255)
  {
    v3 = &_swiftEmptyArrayStorage;
  }

  else
  {
    sub_1001D8730(v9, v19, v23, v18, v5, v8);
    v3 = &_swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_68:
      v3 = sub_100243690(0, *(v3 + 2) + 1, 1, v3);
    }

    v74 = *(v3 + 2);
    v73 = *(v3 + 3);
    if (v74 >= v73 >> 1)
    {
      v3 = sub_100243690((v73 > 1), v74 + 1, 1, v3);
    }

    *(v3 + 2) = v74 + 1;
    v75 = &v3[48 * v74];
    *(v75 + 4) = v9;
    *(v75 + 5) = v19;
    *(v75 + 6) = v23;
    *(v75 + 7) = v18;
    *(v75 + 8) = v5;
    v75[72] = v8;
  }

  sub_100009104(v130, &qword_1005763A0);
  v76 = v83;
  *(v83 + 64) = v3;

  if (*(v98 + 40) == 255)
  {
    v78 = *(v76 + 64);
    if (*(v78 + 16))
    {
      swift_beginAccess();
      v79 = *(v78 + 48);
      v116 = *(v78 + 32);
      v117[0] = v79;
      *(v117 + 9) = *(v78 + 57);
      sub_1001D79C8(&v116, v113);
      sub_10025260C(0, 1);
      swift_endAccess();
      sub_100010430(v76 + 16, v113, &qword_100576398);
      if (v114)
      {
        sub_1000044A0(v113, v114);
        sub_10021F4DC(&v116);
        sub_1001D87B0(&v116);
        return sub_100004590(v113);
      }

      else
      {
        sub_1001D87B0(&v116);
        return sub_100009104(v113, &qword_100576398);
      }
    }
  }

  return result;
}

void sub_1001D8688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 != -1)
  {
    sub_1001D869C(a1, a2, a3, a4, a5, a6);
  }
}

void sub_1001D869C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 == 1)
  {
  }

  else if (!a6)
  {

    sub_1000112B4(a4);
  }
}

void sub_1001D871C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 != -1)
  {
    sub_1001D8730(a1, a2, a3, a4, a5, a6);
  }
}

void sub_1001D8730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 == 1)
  {
  }

  else if (!a6)
  {

    sub_100013CB4(a4);
  }
}

uint64_t sub_1001D87EC()
{

  sub_1001D869C(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return _swift_deallocObject(v0, 65, 7);
}

uint64_t sub_1001D885C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;

  type metadata accessor for PodcastContextActionConfiguration(0);
  result = swift_dynamicCastClass();
  if (result)
  {
    *(v1 + 24) = *(result + qword_100576738);
  }

  return result;
}

uint64_t sub_1001D88F4(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;

  type metadata accessor for PodcastContextActionConfiguration(0);
  result = swift_dynamicCastClass();
  if (result)
  {
    *(v1 + 16) = *(result + qword_100576738);
  }

  return result;
}

uint64_t sub_1001D898C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ContextActionType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001DFAA0(a1);
  v8 = sub_1001E0018();
  result = 0;
  if (v8)
  {
    v10 = [objc_opt_self() mainBundle];
    v18._object = 0xE000000000000000;
    v11._object = 0x8000000100468170;
    v11._countAndFlagsBits = 0xD00000000000001CLL;
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    v18._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v18);

    v13 = String._bridgeToObjectiveC()();
    v14 = [objc_opt_self() _systemImageNamed:v13];

    if (v14)
    {
      v15 = [v14 imageWithRenderingMode:2];
    }

    sub_1001E9254();
    (*(v5 + 104))(v7, enum case for ContextActionType.removeFromStation(_:), v4);
    ContextActionType.actionIdentifier.getter();
    (*(v5 + 8))(v7, v4);
    v16 = swift_allocObject();
    *(v16 + 16) = a1;
    *(v16 + 24) = v2;

    return UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  }

  return result;
}

uint64_t sub_1001D8C20(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ContextActionType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for InteractionContext.Page();
  __chkstk_darwin(v8 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for InteractionContext();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001D885C(a1);
  swift_beginAccess();
  if (*(v1 + 16))
  {

    dispatch thunk of ContextActionsConfiguration.context.getter();

    InteractionContext.page.getter();
    (*(v12 + 8))(v14, v11);
    v15 = InteractionContext.Page.isShowPage.getter();
    sub_1001E92E4(v10, &type metadata accessor for InteractionContext.Page);
    if (v15)
    {
      return 0;
    }
  }

  if (!*(v2 + 24))
  {
    return 0;
  }

  v16 = [objc_opt_self() mainBundle];
  v25._object = 0x8000000100468210;
  v17._countAndFlagsBits = 0x6853206F74206F47;
  v17._object = 0xEA0000000000776FLL;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  v25._countAndFlagsBits = 0xD00000000000001ALL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v17, 0, v16, v18, v25);

  v19 = String._bridgeToObjectiveC()();
  v20 = [objc_opt_self() _systemImageNamed:v19];

  if (v20)
  {
    v21 = [v20 imageWithRenderingMode:2];
  }

  sub_1001E9254();
  (*(v5 + 104))(v7, enum case for ContextActionType.presentPodcast(_:), v4);
  ContextActionType.actionIdentifier.getter();
  (*(v5 + 8))(v7, v4);
  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  *(v23 + 24) = v2;

  return UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
}

uint64_t sub_1001D900C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ContextActionType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001DFCF0(a1);
  v8 = sub_100237910();
  result = 0;
  if (v8)
  {

    v10 = String._bridgeToObjectiveC()();
    v11 = [objc_opt_self() _systemImageNamed:v10];

    if (v11)
    {
      v12 = [v11 imageWithRenderingMode:2];
    }

    sub_1001E9254();
    (*(v5 + 104))(v7, enum case for ContextActionType.playFromTranscript(_:), v4);
    ContextActionType.actionIdentifier.getter();
    (*(v5 + 8))(v7, v4);
    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    *(v13 + 24) = v2;

    return UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  }

  return result;
}

uint64_t sub_1001D922C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100168088(&qword_100575870);
  __chkstk_darwin(v4 - 8);
  v6 = &v27[-v5];
  v7 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v7 - 8);
  v9 = &v27[-v8];
  swift_beginAccess();
  *(v1 + 16) = a1;

  sub_1002476CC();
  if (!*(v1 + 16))
  {
    return 0;
  }

  type metadata accessor for ExternalReferenceLinkContextActionConfiguration(0);
  result = swift_dynamicCastClass();
  if (!result)
  {
    return result;
  }

  v11 = OBJC_IVAR____TtC8Podcasts30OpenReferenceLinkContextAction_link;
  swift_beginAccess();
  sub_100010430(v1 + v11, v9, &qword_100574040);
  v12 = type metadata accessor for URL();
  LODWORD(v11) = (*(*(v12 - 8) + 48))(v9, 1, v12);
  sub_100009104(v9, &qword_100574040);
  if (v11 == 1)
  {
    return 0;
  }

  v13 = (v1 + OBJC_IVAR____TtC8Podcasts30OpenReferenceLinkContextAction_destination);
  v14 = *(v1 + OBJC_IVAR____TtC8Podcasts30OpenReferenceLinkContextAction_destination + 8);
  if (v14 >= 2)
  {
    v17 = *v13;

    v18._countAndFlagsBits = 0x5F4E495F4E45504FLL;
    v19._countAndFlagsBits = 0xD000000000000022;
    v19._object = 0x8000000100468280;
    v18._object = 0xEA00000000004025;
    PFLocalizedString(_:comment:)(v18, v19);
    sub_100168088(&unk_100574670);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_100400790;
    *(v20 + 56) = &type metadata for String;
    *(v20 + 64) = sub_100022C18();
    *(v20 + 32) = v17;
    *(v20 + 40) = v14;
    static String.localizedStringWithFormat(_:_:)();
  }

  else
  {
    v15._countAndFlagsBits = 0x4E494C5F4E45504FLL;
    v16._countAndFlagsBits = 0xD000000000000021;
    v16._object = 0x8000000100468250;
    v15._object = 0xE90000000000004BLL;
    PFLocalizedString(_:comment:)(v15, v16);
  }

  v21 = String._bridgeToObjectiveC()();

  v22 = [objc_opt_self() _systemImageNamed:v21];

  if (v22)
  {
    v23 = [v22 imageWithRenderingMode:2];
  }

  sub_100010430(v2 + OBJC_IVAR____TtC8Podcasts30OpenReferenceLinkContextAction_contextActionType, v6, &qword_100575870);
  v24 = type metadata accessor for ContextActionType();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v6, 1, v24) == 1)
  {
    sub_100009104(v6, &qword_100575870);
  }

  else
  {
    ContextActionType.actionIdentifier.getter();
    (*(v25 + 8))(v6, v24);
  }

  sub_1001E9254();
  v26 = swift_allocObject();
  *(v26 + 16) = a1;
  *(v26 + 24) = v2;

  return UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
}

uint64_t sub_1001D9710(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100168088(&qword_100575870);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  sub_1001DFE1C(a1);
  if ((sub_10027EA24() & 1) == 0)
  {
    return 0;
  }

  if (*(v1 + 96))
  {

    v7 = String._bridgeToObjectiveC()();

    v8 = [objc_opt_self() _systemImageNamed:v7];

    if (v8)
    {
      v9 = [v8 imageWithRenderingMode:2];
    }
  }

  else
  {
  }

  sub_100010430(v2 + OBJC_IVAR____TtC8Podcasts36RemoveFromUpNextEpisodeContextAction_contextActionType, v6, &qword_100575870);
  v11 = type metadata accessor for ContextActionType();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v6, 1, v11) == 1)
  {
    sub_100009104(v6, &qword_100575870);
  }

  else
  {
    ContextActionType.actionIdentifier.getter();
    (*(v12 + 8))(v6, v11);
  }

  sub_1001E9254();
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = v2;

  return UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
}

uint64_t sub_1001D99A0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100168088(&qword_100575870);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  sub_1001DF898(a1);
  if (!sub_10028DCD0())
  {
    return 0;
  }

  if (*(v1 + 104))
  {

    v7 = String._bridgeToObjectiveC()();
    v8 = [objc_opt_self() _systemImageNamed:v7];

    if (v8)
    {
      v9 = [v8 imageWithRenderingMode:2];
    }
  }

  else
  {
  }

  sub_100010430(v2 + OBJC_IVAR____TtC8Podcasts24GoToEpisodeContextAction_contextActionType, v6, &qword_100575870);
  v11 = type metadata accessor for ContextActionType();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v6, 1, v11) == 1)
  {
    sub_100009104(v6, &qword_100575870);
  }

  else
  {
    ContextActionType.actionIdentifier.getter();
    (*(v12 + 8))(v6, v11);
  }

  sub_1001E9254();
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = v2;

  return UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
}

uint64_t sub_1001D9C20(uint64_t a1)
{
  v3 = sub_100168088(&qword_100575870);
  __chkstk_darwin(v3 - 8);
  v5 = &v18 - v4;
  v6 = OBJC_IVAR____TtC8Podcasts37ManageFavoriteCategoriesContextAction_configuration;
  swift_beginAccess();
  *(v1 + v6) = a1;
  swift_retain_n();

  type metadata accessor for CategoryContextActionConfiguration(0);
  v7 = swift_dynamicCastClass();

  if (!v7)
  {
    return 0;
  }

  v8 = [objc_opt_self() mainBundle];
  v19._object = 0x80000001004682E0;
  v9._object = 0x80000001004682B0;
  v9._countAndFlagsBits = 0xD000000000000029;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v19._countAndFlagsBits = 0x100000000000001DLL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v8, v10, v19);

  if (*(v1 + 32))
  {

    v11 = String._bridgeToObjectiveC()();

    v12 = [objc_opt_self() _systemImageNamed:v11];

    if (v12)
    {
      v13 = [v12 imageWithRenderingMode:2];
    }
  }

  sub_100010430(v1 + OBJC_IVAR____TtC8Podcasts37ManageFavoriteCategoriesContextAction_contextActionType, v5, &qword_100575870);
  v15 = type metadata accessor for ContextActionType();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v5, 1, v15) == 1)
  {
    sub_100009104(v5, &qword_100575870);
  }

  else
  {
    ContextActionType.actionIdentifier.getter();
    (*(v16 + 8))(v5, v15);
  }

  sub_1001E9254();
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = v1;

  return UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
}

uint64_t sub_1001D9F7C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100168088(&qword_100575870);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  swift_beginAccess();
  *(v1 + 48) = a1;

  sub_1002B9CCC();
  v7 = [objc_opt_self() mainBundle];
  v18._object = 0x8000000100468320;
  v8._object = 0x8000000100468300;
  v18._countAndFlagsBits = 0xD000000000000025;
  v8._countAndFlagsBits = 0xD000000000000010;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v8, 0, v7, v9, v18);

  if (*(v2 + 72))
  {
    v10 = String._bridgeToObjectiveC()();
    v11 = [objc_opt_self() _systemImageNamed:v10];

    if (v11)
    {
      v12 = [v11 imageWithRenderingMode:2];
    }
  }

  sub_100010430(v2 + OBJC_IVAR____TtC8Podcasts26ReportConcernContextAction_contextActionType, v6, &qword_100575870);
  v13 = type metadata accessor for ContextActionType();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v6, 1, v13) == 1)
  {
    sub_100009104(v6, &qword_100575870);
  }

  else
  {
    ContextActionType.actionIdentifier.getter();
    (*(v14 + 8))(v6, v13);
  }

  sub_1001E9254();
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = v2;

  return UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
}

uint64_t sub_1001DA284(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100168088(&qword_100575870);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  v7 = OBJC_IVAR____TtC8Podcasts21FavoriteContextAction_configuration;
  swift_beginAccess();
  *(v1 + v7) = a1;

  sub_1002C5B24();
  v8 = sub_1002C5CCC();
  result = 0;
  if (v8)
  {
    v10 = [objc_opt_self() mainBundle];
    v20._object = 0xE800000000000000;
    v20._countAndFlagsBits = 0x657469726F766146;
    v11._object = 0x8000000100468360;
    v11._countAndFlagsBits = 0xD000000000000015;
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v20);

    if (*(v2 + 32))
    {

      v13 = String._bridgeToObjectiveC()();

      v14 = [objc_opt_self() _systemImageNamed:v13];

      if (v14)
      {
        v15 = [v14 imageWithRenderingMode:2];
      }
    }

    sub_100010430(v2 + OBJC_IVAR____TtC8Podcasts21FavoriteContextAction_contextActionType, v6, &qword_100575870);
    v16 = type metadata accessor for ContextActionType();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v6, 1, v16) == 1)
    {
      sub_100009104(v6, &qword_100575870);
    }

    else
    {
      ContextActionType.actionIdentifier.getter();
      (*(v17 + 8))(v6, v16);
    }

    sub_1001E9254();
    v18 = swift_allocObject();
    *(v18 + 16) = a1;
    *(v18 + 24) = v2;

    return UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  }

  return result;
}

uint64_t sub_1001DA5C0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100168088(&qword_100575870);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  v7 = OBJC_IVAR____TtC8Podcasts24SuggestLessContextAction_configuration;
  swift_beginAccess();
  *(v1 + v7) = a1;

  sub_1002DB9E4();
  v8 = sub_1002DBB30();
  result = 0;
  if (v8)
  {
    v10 = [objc_opt_self() mainBundle];
    v20._object = 0xEC0000007373654CLL;
    v20._countAndFlagsBits = 0x2074736567677553;
    v11._object = 0x8000000100468380;
    v11._countAndFlagsBits = 0xD000000000000019;
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v20);

    if (*(v2 + 32))
    {

      v13 = String._bridgeToObjectiveC()();

      v14 = [objc_opt_self() _systemImageNamed:v13];

      if (v14)
      {
        v15 = [v14 imageWithRenderingMode:2];
      }
    }

    sub_100010430(v2 + OBJC_IVAR____TtC8Podcasts24SuggestLessContextAction_contextActionType, v6, &qword_100575870);
    v16 = type metadata accessor for ContextActionType();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v6, 1, v16) == 1)
    {
      sub_100009104(v6, &qword_100575870);
    }

    else
    {
      ContextActionType.actionIdentifier.getter();
      (*(v17 + 8))(v6, v16);
    }

    sub_1001E9254();
    v18 = swift_allocObject();
    *(v18 + 16) = a1;
    *(v18 + 24) = v2;

    return UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  }

  return result;
}

uint64_t sub_1001DA904(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ContextActionType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &countAndFlagsBits - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001DF990(a1);
  v8 = sub_1002EB674();
  result = 0;
  if (v8)
  {
    v10 = OBJC_IVAR____TtC8Podcasts27ViewTranscriptContextAction_configuration;
    swift_beginAccess();
    if (*(v1 + v10) && (type metadata accessor for NowPlayingTranscriptSelectionContextActionConfiguration(), swift_dynamicCastClass()))
    {
      v11 = [objc_opt_self() mainBundle];
      v20 = 0xAE00A680E2747865;
      v12 = 0x54207463656C6553;
      v13 = 0x80000001004683A0;
      v14 = 0xD000000000000014;
    }

    else
    {
      v11 = [objc_opt_self() mainBundle];
      v20 = 0xEF7470697263736ELL;
      v14 = 0x4152545F57454956;
      v13 = 0xEF5450495243534ELL;
      v12 = 0x6172542077656956;
    }

    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v14, 0, v11, v15, *&v12)._countAndFlagsBits;

    if (*(v2 + v10))
    {
      type metadata accessor for NowPlayingTranscriptSelectionContextActionConfiguration();
      swift_dynamicCastClass();
    }

    v16 = String._bridgeToObjectiveC()();

    v17 = [objc_opt_self() _systemImageNamed:v16];

    if (v17)
    {
      v18 = [v17 imageWithRenderingMode:2];
    }

    sub_1001E9254();
    (*(v5 + 104))(v7, enum case for ContextActionType.viewTranscript(_:), v4);
    ContextActionType.actionIdentifier.getter();
    (*(v5 + 8))(v7, v4);
    v19 = swift_allocObject();
    *(v19 + 16) = a1;
    *(v19 + 24) = v2;

    return UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  }

  return result;
}

uint64_t sub_1001DACA8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100168088(&qword_100575870);
  __chkstk_darwin(v4 - 8);
  v6 = &v24 - v5;
  v7 = OBJC_IVAR____TtC8Podcasts28UndoSuggestLessContextAction_configuration;
  swift_beginAccess();
  *(v1 + v7) = a1;

  sub_10031B084();
  if ((*(v1 + OBJC_IVAR____TtC8Podcasts28UndoSuggestLessContextAction_adamID + 8) & 1) != 0 || *(v1 + OBJC_IVAR____TtC8Podcasts28UndoSuggestLessContextAction_interestState) == 4)
  {
    return 0;
  }

  v9 = InterestState.rawValue.getter();
  v11 = v10;
  if (v9 == InterestState.rawValue.getter() && v11 == v12)
  {
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  v15 = [objc_opt_self() mainBundle];
  v25._object = 0x8000000100468400;
  v16._countAndFlagsBits = 0xD00000000000001ELL;
  v16._object = 0x80000001004683E0;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v25._countAndFlagsBits = 0xD000000000000011;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, v15, v17, v25);

  if (*(v2 + 32))
  {

    v18 = String._bridgeToObjectiveC()();

    v19 = [objc_opt_self() _systemImageNamed:v18];

    if (v19)
    {
      v20 = [v19 imageWithRenderingMode:2];
    }
  }

  sub_100010430(v2 + OBJC_IVAR____TtC8Podcasts28UndoSuggestLessContextAction_contextActionType, v6, &qword_100575870);
  v21 = type metadata accessor for ContextActionType();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v6, 1, v21) == 1)
  {
    sub_100009104(v6, &qword_100575870);
  }

  else
  {
    ContextActionType.actionIdentifier.getter();
    (*(v22 + 8))(v6, v21);
  }

  sub_1001E9254();
  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  *(v23 + 24) = v2;

  return UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
}

uint64_t sub_1001DB07C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100168088(&qword_100575870);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  swift_beginAccess();
  *(v1 + 16) = a1;

  v7 = sub_100231E2C();
  result = 0;
  if (v7)
  {
    if (*(v1 + 40))
    {
      v9 = String._bridgeToObjectiveC()();
      v10 = [objc_opt_self() _systemImageNamed:v9];

      if (v10)
      {
        v11 = [v10 imageWithRenderingMode:2];
      }
    }

    sub_100010430(v2 + OBJC_IVAR____TtC8Podcasts29ReferenceLinkKCUContextAction_contextActionType, v6, &qword_100575870);
    v12 = type metadata accessor for ContextActionType();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v6, 1, v12) == 1)
    {
      sub_100009104(v6, &qword_100575870);
    }

    else
    {
      ContextActionType.actionIdentifier.getter();
      (*(v13 + 8))(v6, v12);
    }

    sub_1001E9254();
    v14 = swift_allocObject();
    *(v14 + 16) = a1;
    *(v14 + 24) = v2;

    return UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  }

  return result;
}

uint64_t sub_1001DB314(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100168088(&qword_100575870);
  __chkstk_darwin(v4 - 8);
  v6 = &v24 - v5;
  v7 = OBJC_IVAR____TtC8Podcasts25UndoFavoriteContextAction_configuration;
  swift_beginAccess();
  *(v1 + v7) = a1;

  sub_1003530F0();
  if (*(v1 + OBJC_IVAR____TtC8Podcasts25UndoFavoriteContextAction_adamID + 8))
  {
    return 0;
  }

  if (*(v1 + OBJC_IVAR____TtC8Podcasts25UndoFavoriteContextAction_interestState) == 4)
  {
    return 0;
  }

  if (*(v1 + v7))
  {
    type metadata accessor for PodcastContextActionConfiguration(0);
    if (swift_dynamicCastClass())
    {
      return 0;
    }
  }

  v8 = InterestState.rawValue.getter();
  v10 = v9;
  if (v8 == InterestState.rawValue.getter() && v10 == v11)
  {
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  v15 = [objc_opt_self() mainBundle];
  v25._object = 0xED0000657469726FLL;
  v25._countAndFlagsBits = 0x766146206F646E55;
  v16._object = 0x8000000100468450;
  v16._countAndFlagsBits = 0xD00000000000001ALL;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, v15, v17, v25);

  if (*(v2 + 32))
  {

    v18 = String._bridgeToObjectiveC()();

    v19 = [objc_opt_self() _systemImageNamed:v18];

    if (v19)
    {
      v20 = [v19 imageWithRenderingMode:2];
    }
  }

  sub_100010430(v2 + OBJC_IVAR____TtC8Podcasts25UndoFavoriteContextAction_contextActionType, v6, &qword_100575870);
  v21 = type metadata accessor for ContextActionType();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v6, 1, v21) == 1)
  {
    sub_100009104(v6, &qword_100575870);
  }

  else
  {
    ContextActionType.actionIdentifier.getter();
    (*(v22 + 8))(v6, v21);
  }

  sub_1001E9254();
  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  *(v23 + 24) = v2;

  return UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
}

uint64_t sub_1001DB70C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ContextActionType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001D88F4(a1);
  v8 = sub_1003953A8();
  result = 0;
  if (v8)
  {
    v10 = [objc_opt_self() mainBundle];
    v18._object = 0xE000000000000000;
    v11._countAndFlagsBits = 0x73676E6974746553;
    v11._object = 0xE800000000000000;
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    v18._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v18);

    v13 = String._bridgeToObjectiveC()();
    v14 = [objc_opt_self() _systemImageNamed:v13];

    if (v14)
    {
      v15 = [v14 imageWithRenderingMode:2];
    }

    sub_1001E9254();
    (*(v5 + 104))(v7, enum case for ContextActionType.settings(_:), v4);
    ContextActionType.actionIdentifier.getter();
    (*(v5 + 8))(v7, v4);
    v16 = swift_allocObject();
    *(v16 + 16) = a1;
    *(v16 + 24) = v2;

    return UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  }

  return result;
}

uint64_t sub_1001DB98C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ContextActionType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001DFBF8(a1);
  v8 = sub_1003B1B64();
  result = 0;
  if (v8)
  {
    v10 = [objc_opt_self() mainBundle];
    v18._object = 0x8000000100468470;
    v11._countAndFlagsBits = 0x6853206F74206F47;
    v11._object = 0xEA0000000000776FLL;
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    v18._countAndFlagsBits = 0xD000000000000021;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v18);

    v13 = String._bridgeToObjectiveC()();
    v14 = [objc_opt_self() _systemImageNamed:v13];

    if (v14)
    {
      v15 = [v14 imageWithRenderingMode:2];
    }

    sub_1001E9254();
    (*(v5 + 104))(v7, enum case for ContextActionType.episodeGoToShow(_:), v4);
    ContextActionType.actionIdentifier.getter();
    (*(v5 + 8))(v7, v4);
    v16 = swift_allocObject();
    *(v16 + 16) = a1;
    *(v16 + 24) = v2;

    return UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  }

  return result;
}

id sub_1001DBC34(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ContextActionType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001DFAA0(a1);
  v8 = 0;
  if (sub_1001E0018())
  {
    v9 = sub_1001E9000(&aBlock);
    v10 = aBlock;
    v22[1] = v24;
    v11 = v25;
    v12 = v27;
    (*(v5 + 104))(v7, enum case for ContextActionType.removeFromStation(_:), v4, v9);
    v13 = sub_100234C80() & 1;
    (*(v5 + 8))(v7, v4);
    v14 = swift_allocObject();
    v14[2] = v2;
    v14[3] = a1;
    v14[4] = v13;

    if (v12)
    {
      v15 = String._bridgeToObjectiveC()();
    }

    else
    {
      v15 = 0;
    }

    v27 = sub_1001E90F0;
    v28 = v14;
    aBlock = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_1002348A4;
    v26 = &unk_1004E3978;
    v16 = _Block_copy(&aBlock);
    v8 = [objc_opt_self() contextualActionWithStyle:v13 title:v15 handler:v16];

    _Block_release(v16);

    [v8 setBackgroundColor:v10];
    if (v11)
    {
      v17 = String._bridgeToObjectiveC()();

      v18 = [objc_opt_self() systemImageNamed:v17];
    }

    else
    {
      v19 = String._bridgeToObjectiveC()();
      v17 = [objc_opt_self() _systemImageNamed:v19];

      if (!v17)
      {
        v20 = 0;
        goto LABEL_10;
      }

      v18 = [v17 imageWithRenderingMode:2];
    }

    v20 = v18;

LABEL_10:
    [v8 setImage:v20];
  }

  return v8;
}

id sub_1001DBF70(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ContextActionType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for InteractionContext.Page();
  __chkstk_darwin(v8 - 8);
  v10 = &aBlock[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for InteractionContext();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &aBlock[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001D885C(a1);
  swift_beginAccess();
  if (*(v1 + 16))
  {

    dispatch thunk of ContextActionsConfiguration.context.getter();

    InteractionContext.page.getter();
    (*(v12 + 8))(v14, v11);
    v15 = InteractionContext.Page.isShowPage.getter();
    sub_1001E92E4(v10, &type metadata accessor for InteractionContext.Page);
    if (v15)
    {
      return 0;
    }
  }

  if (!*(v2 + 24))
  {
    return 0;
  }

  v16.super.isa = [objc_opt_self() mainBundle];
  v29._object = 0x8000000100468210;
  v17._countAndFlagsBits = 0x6853206F74206F47;
  v17._object = 0xEA0000000000776FLL;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  v29._countAndFlagsBits = 0xD00000000000001ALL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v17, 0, v16, v18, v29);

  (*(v5 + 104))(v7, enum case for ContextActionType.presentPodcast(_:), v4);
  LOBYTE(v16.super.isa) = sub_100234C80();
  (*(v5 + 8))(v7, v4);
  v19 = v16.super.isa & 1;
  v20 = swift_allocObject();
  v20[2] = v2;
  v20[3] = a1;
  v20[4] = v19;

  v21 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_1001E9344;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002348A4;
  aBlock[3] = &unk_1004E39F0;
  v22 = _Block_copy(aBlock);
  v23 = [objc_opt_self() contextualActionWithStyle:v19 title:v21 handler:v22];

  _Block_release(v22);

  [v23 setBackgroundColor:0];
  v24 = String._bridgeToObjectiveC()();
  v25 = [objc_opt_self() systemImageNamed:v24];

  [v23 setImage:v25];
  return v23;
}

id sub_1001DC3D4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ContextActionType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001DFCF0(a1);
  v8 = sub_100231F68();
  result = 0;
  if (v8)
  {
    (*(v5 + 104))(v7, enum case for ContextActionType.playFromTranscript(_:), v4);

    v10 = sub_100234C80() & 1;
    (*(v5 + 8))(v7, v4);
    v11 = swift_allocObject();
    v11[2] = v2;
    v11[3] = a1;
    v11[4] = v10;

    v12 = String._bridgeToObjectiveC()();

    aBlock[4] = sub_1001E93D8;
    aBlock[5] = v11;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1002348A4;
    aBlock[3] = &unk_1004E3A68;
    v13 = _Block_copy(aBlock);
    v14 = [objc_opt_self() contextualActionWithStyle:v10 title:v12 handler:v13];

    _Block_release(v13);

    [v14 setBackgroundColor:0];
    v15 = String._bridgeToObjectiveC()();
    v16 = [objc_opt_self() systemImageNamed:v15];

    [v14 setImage:v16];
    return v14;
  }

  return result;
}

uint64_t sub_1001DC664(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100168088(&qword_100575870);
  __chkstk_darwin(v4 - 8);
  v6 = v28 - v5;
  v7 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v7 - 8);
  v9 = v28 - v8;
  swift_beginAccess();
  *(v1 + 16) = a1;

  sub_1002476CC();
  if (!*(v1 + 16))
  {
    return 0;
  }

  type metadata accessor for ExternalReferenceLinkContextActionConfiguration(0);
  result = swift_dynamicCastClass();
  if (result)
  {
    v11 = OBJC_IVAR____TtC8Podcasts30OpenReferenceLinkContextAction_link;
    swift_beginAccess();
    sub_100010430(v1 + v11, v9, &qword_100574040);
    v12 = type metadata accessor for URL();
    LODWORD(v11) = (*(*(v12 - 8) + 48))(v9, 1, v12);
    sub_100009104(v9, &qword_100574040);
    if (v11 == 1)
    {
      return 0;
    }

    sub_1002317F8(&aBlock);
    v13 = aBlock;
    v28[1] = v30;
    v14 = v31;
    v15 = v33;
    sub_100010430(v1 + OBJC_IVAR____TtC8Podcasts30OpenReferenceLinkContextAction_contextActionType, v6, &qword_100575870);
    v16 = type metadata accessor for ContextActionType();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v6, 1, v16) == 1)
    {
      sub_100009104(v6, &qword_100575870);
      v18 = 0;
    }

    else
    {
      v18 = sub_100234C80() & 1;
      (*(v17 + 8))(v6, v16);
    }

    v19 = swift_allocObject();
    v19[2] = v2;
    v19[3] = a1;
    v19[4] = v18;

    if (v15)
    {
      v20 = String._bridgeToObjectiveC()();
    }

    else
    {
      v20 = 0;
    }

    v33 = sub_1001E946C;
    v34 = v19;
    aBlock = _NSConcreteStackBlock;
    v30 = 1107296256;
    v31 = sub_1002348A4;
    v32 = &unk_1004E3AE0;
    v21 = _Block_copy(&aBlock);
    v22 = [objc_opt_self() contextualActionWithStyle:v18 title:v20 handler:v21];

    _Block_release(v21);

    v23 = v22;
    [v22 setBackgroundColor:v13];
    if (v14)
    {
      v24 = String._bridgeToObjectiveC()();

      v25 = [objc_opt_self() systemImageNamed:v24];
    }

    else
    {
      v26 = String._bridgeToObjectiveC()();

      v24 = [objc_opt_self() _systemImageNamed:v26];

      if (!v24)
      {
        v27 = 0;
        goto LABEL_16;
      }

      v25 = [v24 imageWithRenderingMode:2];
    }

    v27 = v25;

LABEL_16:
    [v23 setImage:v27];

    return v23;
  }

  return result;
}

id sub_1001DCB58(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100168088(&qword_100575870);
  __chkstk_darwin(v4 - 8);
  v6 = aBlock - v5;
  sub_1001DFE1C(a1);
  if ((sub_10027EA24() & 1) == 0)
  {
    return 0;
  }

  v7 = [objc_opt_self() systemGrayColor];
  sub_100010430(v1 + OBJC_IVAR____TtC8Podcasts36RemoveFromUpNextEpisodeContextAction_contextActionType, v6, &qword_100575870);
  v8 = type metadata accessor for ContextActionType();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);

  if (v10 == 1)
  {
    sub_100009104(v6, &qword_100575870);
    v11 = 0;
  }

  else
  {
    v11 = sub_100234C80() & 1;
    (*(v9 + 8))(v6, v8);
  }

  v13 = swift_allocObject();
  v13[2] = v2;
  v13[3] = a1;
  v13[4] = v11;

  v14 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_1001E94E4;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002348A4;
  aBlock[3] = &unk_1004E3B80;
  v15 = _Block_copy(aBlock);
  v16 = [objc_opt_self() contextualActionWithStyle:v11 title:v14 handler:v15];

  _Block_release(v15);

  [v16 setBackgroundColor:v7];
  v17 = String._bridgeToObjectiveC()();
  v18 = [objc_opt_self() systemImageNamed:v17];

  [v16 setImage:v18];
  return v16;
}

id sub_1001DCE7C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100168088(&qword_100575870);
  __chkstk_darwin(v4 - 8);
  v6 = aBlock - v5;
  sub_1001DF898(a1);
  if (!sub_10028DCD0())
  {
    return 0;
  }

  v7 = *(v1 + 104);
  sub_100010430(v1 + OBJC_IVAR____TtC8Podcasts24GoToEpisodeContextAction_contextActionType, v6, &qword_100575870);
  v8 = type metadata accessor for ContextActionType();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    sub_100009104(v6, &qword_100575870);
    v10 = 0;
  }

  else
  {
    v10 = sub_100234C80() & 1;
    (*(v9 + 8))(v6, v8);
  }

  v12 = swift_allocObject();
  v12[2] = v2;
  v12[3] = a1;
  v12[4] = v10;

  v13 = String._bridgeToObjectiveC()();
  aBlock[4] = sub_1001E94F8;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002348A4;
  aBlock[3] = &unk_1004E3BF8;
  v14 = _Block_copy(aBlock);
  v11 = [objc_opt_self() contextualActionWithStyle:v10 title:v13 handler:v14];

  _Block_release(v14);

  [v11 setBackgroundColor:0];
  if (v7)
  {
    v15 = String._bridgeToObjectiveC()();
    v16 = [objc_opt_self() systemImageNamed:v15];

    [v11 setImage:v16];
  }

  else
  {
    [v11 setImage:0];
  }

  return v11;
}

id sub_1001DD170(uint64_t a1)
{
  v3 = sub_100168088(&qword_100575870);
  __chkstk_darwin(v3 - 8);
  v5 = &aBlock[-1] - v4;
  v6 = OBJC_IVAR____TtC8Podcasts37ManageFavoriteCategoriesContextAction_configuration;
  swift_beginAccess();
  *(v1 + v6) = a1;
  swift_retain_n();

  type metadata accessor for CategoryContextActionConfiguration(0);
  v7 = swift_dynamicCastClass();

  if (v7)
  {
    v8 = *(v1 + 32);
    v9 = objc_opt_self();

    v10 = [v9 mainBundle];
    v27._object = 0x80000001004682E0;
    v11._object = 0x80000001004682B0;
    v11._countAndFlagsBits = 0xD000000000000029;
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    v27._countAndFlagsBits = 0x100000000000001DLL;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v27);

    sub_100010430(v1 + OBJC_IVAR____TtC8Podcasts37ManageFavoriteCategoriesContextAction_contextActionType, v5, &qword_100575870);
    v13 = type metadata accessor for ContextActionType();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v5, 1, v13) == 1)
    {
      sub_100009104(v5, &qword_100575870);
      v15 = 0;
    }

    else
    {
      v15 = sub_100234C80() & 1;
      (*(v14 + 8))(v5, v13);
    }

    v17 = swift_allocObject();
    v17[2] = v1;
    v17[3] = a1;
    v17[4] = v15;

    v18 = String._bridgeToObjectiveC()();

    aBlock[4] = sub_1001E958C;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1002348A4;
    aBlock[3] = &unk_1004E3C70;
    v19 = _Block_copy(aBlock);
    v16 = [objc_opt_self() contextualActionWithStyle:v15 title:v18 handler:v19];

    _Block_release(v19);

    [v16 setBackgroundColor:0];
    if (v8)
    {
      v20 = String._bridgeToObjectiveC()();

      v21 = [objc_opt_self() systemImageNamed:v20];
    }

    else
    {
      v22 = *(v1 + 32);
      if (!v22)
      {
        goto LABEL_9;
      }

      v24 = String._bridgeToObjectiveC()();

      v20 = [objc_opt_self() _systemImageNamed:v24];

      if (!v20)
      {
        v22 = 0;
        goto LABEL_9;
      }

      v21 = [v20 imageWithRenderingMode:2];
    }

    v22 = v21;

LABEL_9:
    [v16 setImage:v22];

    return v16;
  }

  return 0;
}

id sub_1001DD5BC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100168088(&qword_100575870);
  __chkstk_darwin(v4 - 8);
  v6 = &aBlock[-1] - v5;
  swift_beginAccess();
  *(v1 + 48) = a1;

  sub_1002B9CCC();
  v7 = *(v1 + 72);
  v8 = [objc_opt_self() mainBundle];
  v23._object = 0x8000000100468320;
  v9._object = 0x8000000100468300;
  v23._countAndFlagsBits = 0xD000000000000025;
  v9._countAndFlagsBits = 0xD000000000000010;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v8, v10, v23);

  sub_100010430(v2 + OBJC_IVAR____TtC8Podcasts26ReportConcernContextAction_contextActionType, v6, &qword_100575870);
  v11 = type metadata accessor for ContextActionType();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v6, 1, v11) == 1)
  {
    sub_100009104(v6, &qword_100575870);
    v13 = 0;
  }

  else
  {
    v13 = sub_100234C80() & 1;
    (*(v12 + 8))(v6, v11);
  }

  v14 = swift_allocObject();
  v14[2] = v2;
  v14[3] = a1;
  v14[4] = v13;

  v15 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_1001E9658;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002348A4;
  aBlock[3] = &unk_1004E3CE8;
  v16 = _Block_copy(aBlock);
  v17 = [objc_opt_self() contextualActionWithStyle:v13 title:v15 handler:v16];

  _Block_release(v16);

  [v17 setBackgroundColor:0];
  if (v7)
  {
    v18 = String._bridgeToObjectiveC()();
    v19 = [objc_opt_self() systemImageNamed:v18];

    [v17 setImage:v19];
  }

  else
  {
    [v17 setImage:0];
  }

  return v17;
}

id sub_1001DD950(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100168088(&qword_100575870);
  __chkstk_darwin(v4 - 8);
  v6 = &aBlock[-1] - v5;
  v7 = OBJC_IVAR____TtC8Podcasts21FavoriteContextAction_configuration;
  swift_beginAccess();
  *(v1 + v7) = a1;

  sub_1002C5B24();
  v8 = 0;
  if (sub_1002C5CCC())
  {
    v9 = *(v2 + 32);
    v10 = objc_opt_self();

    v11 = [v10 mainBundle];
    v27._object = 0xE800000000000000;
    v27._countAndFlagsBits = 0x657469726F766146;
    v12._object = 0x8000000100468360;
    v12._countAndFlagsBits = 0xD000000000000015;
    v13._countAndFlagsBits = 0;
    v13._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v12, 0, v11, v13, v27);

    sub_100010430(v2 + OBJC_IVAR____TtC8Podcasts21FavoriteContextAction_contextActionType, v6, &qword_100575870);
    v14 = type metadata accessor for ContextActionType();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v6, 1, v14) == 1)
    {
      sub_100009104(v6, &qword_100575870);
      v16 = 0;
    }

    else
    {
      v16 = sub_100234C80() & 1;
      (*(v15 + 8))(v6, v14);
    }

    v17 = swift_allocObject();
    v17[2] = v2;
    v17[3] = a1;
    v17[4] = v16;

    v18 = String._bridgeToObjectiveC()();

    aBlock[4] = sub_1001E96B8;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1002348A4;
    aBlock[3] = &unk_1004E3E00;
    v19 = _Block_copy(aBlock);
    v8 = [objc_opt_self() contextualActionWithStyle:v16 title:v18 handler:v19];

    _Block_release(v19);

    [v8 setBackgroundColor:0];
    if (v9)
    {
      v20 = String._bridgeToObjectiveC()();

      v21 = [objc_opt_self() systemImageNamed:v20];
    }

    else
    {
      v22 = *(v2 + 32);
      if (!v22)
      {
        goto LABEL_8;
      }

      v24 = String._bridgeToObjectiveC()();

      v20 = [objc_opt_self() _systemImageNamed:v24];

      if (!v20)
      {
        v22 = 0;
        goto LABEL_8;
      }

      v21 = [v20 imageWithRenderingMode:2];
    }

    v22 = v21;

LABEL_8:
    [v8 setImage:v22];
  }

  return v8;
}

id sub_1001DDD78(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100168088(&qword_100575870);
  __chkstk_darwin(v4 - 8);
  v6 = &aBlock[-1] - v5;
  v7 = OBJC_IVAR____TtC8Podcasts24SuggestLessContextAction_configuration;
  swift_beginAccess();
  *(v1 + v7) = a1;

  sub_1002DB9E4();
  v8 = 0;
  if (sub_1002319E8())
  {
    v9 = *(v2 + 32);
    v10 = objc_opt_self();

    v11 = [v10 mainBundle];
    v27._object = 0xEC0000007373654CLL;
    v27._countAndFlagsBits = 0x2074736567677553;
    v12._object = 0x8000000100468380;
    v12._countAndFlagsBits = 0xD000000000000019;
    v13._countAndFlagsBits = 0;
    v13._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v12, 0, v11, v13, v27);

    sub_100010430(v2 + OBJC_IVAR____TtC8Podcasts24SuggestLessContextAction_contextActionType, v6, &qword_100575870);
    v14 = type metadata accessor for ContextActionType();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v6, 1, v14) == 1)
    {
      sub_100009104(v6, &qword_100575870);
      v16 = 0;
    }

    else
    {
      v16 = sub_100234C80() & 1;
      (*(v15 + 8))(v6, v14);
    }

    v17 = swift_allocObject();
    v17[2] = v2;
    v17[3] = a1;
    v17[4] = v16;

    v18 = String._bridgeToObjectiveC()();

    aBlock[4] = sub_1001E9784;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1002348A4;
    aBlock[3] = &unk_1004E3E78;
    v19 = _Block_copy(aBlock);
    v8 = [objc_opt_self() contextualActionWithStyle:v16 title:v18 handler:v19];

    _Block_release(v19);

    [v8 setBackgroundColor:0];
    if (v9)
    {
      v20 = String._bridgeToObjectiveC()();

      v21 = [objc_opt_self() systemImageNamed:v20];
    }

    else
    {
      v22 = *(v2 + 32);
      if (!v22)
      {
        goto LABEL_8;
      }

      v24 = String._bridgeToObjectiveC()();

      v20 = [objc_opt_self() _systemImageNamed:v24];

      if (!v20)
      {
        v22 = 0;
        goto LABEL_8;
      }

      v21 = [v20 imageWithRenderingMode:2];
    }

    v22 = v21;

LABEL_8:
    [v8 setImage:v22];
  }

  return v8;
}

id sub_1001DE1A8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ContextActionType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001DF990(a1);
  v8 = sub_1002EB674();
  result = 0;
  if (v8)
  {
    v10 = OBJC_IVAR____TtC8Podcasts27ViewTranscriptContextAction_configuration;
    swift_beginAccess();
    if (*(v2 + v10) && (type metadata accessor for NowPlayingTranscriptSelectionContextActionConfiguration(), swift_dynamicCastClass()))
    {
      v11 = [objc_opt_self() mainBundle];
      v25._object = 0xAE00A680E2747865;
      v25._countAndFlagsBits = 0x54207463656C6553;
      v12._object = 0x80000001004683A0;
      v12._countAndFlagsBits = 0xD000000000000014;
      v13._countAndFlagsBits = 0;
      v13._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v12, 0, v11, v13, v25);
    }

    else
    {
      v11 = [objc_opt_self() mainBundle];
      v26._object = 0xEF7470697263736ELL;
      v14._countAndFlagsBits = 0x4152545F57454956;
      v14._object = 0xEF5450495243534ELL;
      v26._countAndFlagsBits = 0x6172542077656956;
      v15._countAndFlagsBits = 0;
      v15._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v14, 0, v11, v15, v26);
    }

    (*(v5 + 104))(v7, enum case for ContextActionType.viewTranscript(_:), v4);
    v16 = sub_100234C80() & 1;
    (*(v5 + 8))(v7, v4);
    v17 = swift_allocObject();
    v17[2] = v2;
    v17[3] = a1;
    v17[4] = v16;

    v18 = String._bridgeToObjectiveC()();

    aBlock[4] = sub_1001E9850;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1002348A4;
    aBlock[3] = &unk_1004E3EF0;
    v19 = _Block_copy(aBlock);
    v20 = [objc_opt_self() contextualActionWithStyle:v16 title:v18 handler:v19];

    _Block_release(v19);

    [v20 setBackgroundColor:0];
    v21 = String._bridgeToObjectiveC()();

    v22 = [objc_opt_self() systemImageNamed:v21];

    [v20 setImage:v22];
    return v20;
  }

  return result;
}

void *sub_1001DE5C4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100168088(&qword_100575870);
  __chkstk_darwin(v4 - 8);
  v6 = &aBlock[-1] - v5;
  v7 = OBJC_IVAR____TtC8Podcasts28UndoSuggestLessContextAction_configuration;
  swift_beginAccess();
  *(v1 + v7) = a1;

  sub_10031B084();
  if ((*(v1 + OBJC_IVAR____TtC8Podcasts28UndoSuggestLessContextAction_adamID + 8) & 1) != 0 || *(v1 + OBJC_IVAR____TtC8Podcasts28UndoSuggestLessContextAction_interestState) == 4)
  {
    return 0;
  }

  v9 = InterestState.rawValue.getter();
  v11 = v10;
  if (v9 == InterestState.rawValue.getter() && v11 == v12)
  {

    goto LABEL_12;
  }

  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v14)
  {
LABEL_12:
    v15 = *(v2 + 32);
    v16 = objc_opt_self();

    v17 = [v16 mainBundle];
    v34._object = 0x8000000100468400;
    v18._countAndFlagsBits = 0xD00000000000001ELL;
    v18._object = 0x80000001004683E0;
    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    v34._countAndFlagsBits = 0xD000000000000011;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v18, 0, v17, v19, v34);

    sub_100010430(v2 + OBJC_IVAR____TtC8Podcasts28UndoSuggestLessContextAction_contextActionType, v6, &qword_100575870);
    v20 = type metadata accessor for ContextActionType();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v6, 1, v20) == 1)
    {
      sub_100009104(v6, &qword_100575870);
      v22 = 0;
    }

    else
    {
      v22 = sub_100234C80() & 1;
      (*(v21 + 8))(v6, v20);
    }

    v23 = swift_allocObject();
    v23[2] = v2;
    v23[3] = a1;
    v23[4] = v22;

    v24 = String._bridgeToObjectiveC()();

    aBlock[4] = sub_1001E98E4;
    aBlock[5] = v23;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1002348A4;
    aBlock[3] = &unk_1004E3F68;
    v25 = _Block_copy(aBlock);
    v26 = [objc_opt_self() contextualActionWithStyle:v22 title:v24 handler:v25];

    _Block_release(v25);

    v27 = v26;
    [v26 setBackgroundColor:0];
    if (v15)
    {
      v28 = String._bridgeToObjectiveC()();

      v29 = [objc_opt_self() systemImageNamed:v28];
    }

    else
    {
      v30 = *(v2 + 32);
      if (!v30)
      {
        goto LABEL_18;
      }

      v31 = String._bridgeToObjectiveC()();

      v28 = [objc_opt_self() _systemImageNamed:v31];

      if (!v28)
      {
        v30 = 0;
        goto LABEL_18;
      }

      v29 = [v28 imageWithRenderingMode:2];
    }

    v30 = v29;

LABEL_18:
    [v27 setImage:v30];

    return v27;
  }

  return 0;
}

id sub_1001DEA8C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100168088(&qword_100575870);
  __chkstk_darwin(v4 - 8);
  v6 = &aBlock[-1] - v5;
  swift_beginAccess();
  *(v1 + 16) = a1;

  v7 = 0;
  if (sub_100231E2C())
  {
    v8 = *(v2 + 40);
    sub_100010430(v2 + OBJC_IVAR____TtC8Podcasts29ReferenceLinkKCUContextAction_contextActionType, v6, &qword_100575870);
    v9 = type metadata accessor for ContextActionType();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v6, 1, v9) == 1)
    {
      sub_100009104(v6, &qword_100575870);
      v11 = 0;
    }

    else
    {
      v11 = sub_100234C80() & 1;
      (*(v10 + 8))(v6, v9);
    }

    v12 = swift_allocObject();
    v12[2] = v2;
    v12[3] = a1;
    v12[4] = v11;

    v13 = String._bridgeToObjectiveC()();
    aBlock[4] = sub_1001E99B0;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1002348A4;
    aBlock[3] = &unk_1004E3FE0;
    v14 = _Block_copy(aBlock);
    v7 = [objc_opt_self() contextualActionWithStyle:v11 title:v13 handler:v14];

    _Block_release(v14);

    [v7 setBackgroundColor:0];
    if (v8)
    {
      v15 = String._bridgeToObjectiveC()();
      v16 = [objc_opt_self() systemImageNamed:v15];

      [v7 setImage:v16];
    }

    else
    {
      [v7 setImage:0];
    }
  }

  return v7;
}

void *sub_1001DEDA4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100168088(&qword_100575870);
  __chkstk_darwin(v4 - 8);
  v6 = &aBlock[-1] - v5;
  v7 = OBJC_IVAR____TtC8Podcasts25UndoFavoriteContextAction_configuration;
  swift_beginAccess();
  *(v1 + v7) = a1;

  sub_1003530F0();
  if (*(v1 + OBJC_IVAR____TtC8Podcasts25UndoFavoriteContextAction_adamID + 8))
  {
    return 0;
  }

  if (*(v1 + OBJC_IVAR____TtC8Podcasts25UndoFavoriteContextAction_interestState) == 4)
  {
    return 0;
  }

  if (*(v1 + v7))
  {
    type metadata accessor for PodcastContextActionConfiguration(0);
    if (swift_dynamicCastClass())
    {
      return 0;
    }
  }

  v8 = InterestState.rawValue.getter();
  v10 = v9;
  if (v8 == InterestState.rawValue.getter() && v10 == v11)
  {

LABEL_13:
    v15 = *(v2 + 32);
    v16 = objc_opt_self();

    v17 = [v16 mainBundle];
    v34._object = 0xED0000657469726FLL;
    v34._countAndFlagsBits = 0x766146206F646E55;
    v18._object = 0x8000000100468450;
    v18._countAndFlagsBits = 0xD00000000000001ALL;
    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v18, 0, v17, v19, v34);

    sub_100010430(v2 + OBJC_IVAR____TtC8Podcasts25UndoFavoriteContextAction_contextActionType, v6, &qword_100575870);
    v20 = type metadata accessor for ContextActionType();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v6, 1, v20) == 1)
    {
      sub_100009104(v6, &qword_100575870);
      v22 = 0;
    }

    else
    {
      v22 = sub_100234C80() & 1;
      (*(v21 + 8))(v6, v20);
    }

    v23 = swift_allocObject();
    v23[2] = v2;
    v23[3] = a1;
    v23[4] = v22;

    v24 = String._bridgeToObjectiveC()();

    aBlock[4] = sub_1001E99C4;
    aBlock[5] = v23;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1002348A4;
    aBlock[3] = &unk_1004E4058;
    v25 = _Block_copy(aBlock);
    v26 = [objc_opt_self() contextualActionWithStyle:v22 title:v24 handler:v25];

    _Block_release(v25);

    v27 = v26;
    [v26 setBackgroundColor:0];
    if (v15)
    {
      v28 = String._bridgeToObjectiveC()();

      v29 = [objc_opt_self() systemImageNamed:v28];
    }

    else
    {
      v30 = *(v2 + 32);
      if (!v30)
      {
        goto LABEL_19;
      }

      v31 = String._bridgeToObjectiveC()();

      v28 = [objc_opt_self() _systemImageNamed:v31];

      if (!v28)
      {
        v30 = 0;
        goto LABEL_19;
      }

      v29 = [v28 imageWithRenderingMode:2];
    }

    v30 = v29;

LABEL_19:
    [v27 setImage:v30];

    return v27;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v13)
  {
    goto LABEL_13;
  }

  return 0;
}

id sub_1001DF290(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ContextActionType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001D88F4(a1);
  v8 = sub_1003953A8();
  result = 0;
  if (v8)
  {
    v10 = [objc_opt_self() mainBundle];
    v21._object = 0xE000000000000000;
    v11._countAndFlagsBits = 0x73676E6974746553;
    v11._object = 0xE800000000000000;
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    v21._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v21);

    (*(v5 + 104))(v7, enum case for ContextActionType.settings(_:), v4);
    v13 = sub_100234C80() & 1;
    (*(v5 + 8))(v7, v4);
    v14 = swift_allocObject();
    v14[2] = v2;
    v14[3] = a1;
    v14[4] = v13;

    v15 = String._bridgeToObjectiveC()();

    aBlock[4] = sub_1001E9A90;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1002348A4;
    aBlock[3] = &unk_1004E40D0;
    v16 = _Block_copy(aBlock);
    v17 = [objc_opt_self() contextualActionWithStyle:v13 title:v15 handler:v16];

    _Block_release(v16);

    [v17 setBackgroundColor:0];
    v18 = String._bridgeToObjectiveC()();
    v19 = [objc_opt_self() systemImageNamed:v18];

    [v17 setImage:v19];
    return v17;
  }

  return result;
}

id sub_1001DF580(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ContextActionType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001DFBF8(a1);
  v8 = sub_1003B1B64();
  result = 0;
  if (v8)
  {
    v10 = [objc_opt_self() mainBundle];
    v21._object = 0x8000000100468470;
    v11._countAndFlagsBits = 0x6853206F74206F47;
    v11._object = 0xEA0000000000776FLL;
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    v21._countAndFlagsBits = 0xD000000000000021;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v21);

    (*(v5 + 104))(v7, enum case for ContextActionType.episodeGoToShow(_:), v4);
    v13 = sub_100234C80() & 1;
    (*(v5 + 8))(v7, v4);
    v14 = swift_allocObject();
    v14[2] = v2;
    v14[3] = a1;
    v14[4] = v13;

    v15 = String._bridgeToObjectiveC()();

    aBlock[4] = sub_1001E9B5C;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1002348A4;
    aBlock[3] = &unk_1004E4148;
    v16 = _Block_copy(aBlock);
    v17 = [objc_opt_self() contextualActionWithStyle:v13 title:v15 handler:v16];

    _Block_release(v16);

    [v17 setBackgroundColor:0];
    v18 = String._bridgeToObjectiveC()();
    v19 = [objc_opt_self() systemImageNamed:v18];

    [v17 setImage:v19];
    return v17;
  }

  return result;
}

uint64_t sub_1001DF898(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  *(v1 + 64) = a1;

  type metadata accessor for NowPlayingContextActionConfiguration();
  if (swift_dynamicCastClass())
  {

    v4 = sub_1001ECDA0();

    *(v2 + 56) = v4;
  }

  else
  {
    type metadata accessor for EpisodeContextActionConfiguration(0);
    result = swift_dynamicCastClass();
    if (result)
    {
      v6 = &qword_100576670;
    }

    else
    {
      type metadata accessor for TranscriptSelectionContextActionConfiguration(0);
      result = swift_dynamicCastClass();
      if (!result)
      {
        return result;
      }

      v6 = &qword_1005766C8;
    }

    *(v1 + 56) = *(result + *v6);
  }
}

uint64_t sub_1001DF990(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8Podcasts27ViewTranscriptContextAction_configuration;
  swift_beginAccess();
  *(v1 + v3) = a1;

  type metadata accessor for NowPlayingContextActionConfiguration();
  if (swift_dynamicCastClass())
  {

    v4 = sub_1001ECDA0();

    *(v1 + 16) = v4;
LABEL_8:

    return sub_1002EB97C();
  }

  type metadata accessor for EpisodeContextActionConfiguration(0);
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = &qword_100576670;
LABEL_7:
    *(v1 + 16) = *(v5 + *v6);

    goto LABEL_8;
  }

  type metadata accessor for TranscriptSelectionContextActionConfiguration(0);
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = &qword_1005766C8;
    goto LABEL_7;
  }

  return sub_1002EB97C();
}

uint64_t sub_1001DFAA0(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  *(v1 + 88) = a1;

  type metadata accessor for NowPlayingContextActionConfiguration();
  if (swift_dynamicCastClass())
  {

    v4 = sub_1001ECDA0();

    *(v2 + 16) = v4;
LABEL_8:

    goto LABEL_9;
  }

  type metadata accessor for EpisodeContextActionConfiguration(0);
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = &qword_100576670;
LABEL_7:
    *(v1 + 16) = *(v5 + *v6);

    goto LABEL_8;
  }

  type metadata accessor for TranscriptSelectionContextActionConfiguration(0);
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = &qword_1005766C8;
    goto LABEL_7;
  }

LABEL_9:
  sub_100004428(v2 + 32, &v8);
  type metadata accessor for EpisodeDeletionActionProvider();
  swift_allocObject();

  *(v2 + 80) = EpisodeDeletionActionProvider.init(asPartOf:episodeDownloadStateController:libraryActionController:)();
}

uint64_t sub_1001DFBF8(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  *(v1 + 24) = a1;

  type metadata accessor for NowPlayingContextActionConfiguration();
  if (swift_dynamicCastClass())
  {

    v4 = sub_1001ECDA0();

    *(v2 + 16) = v4;
  }

  else
  {
    type metadata accessor for EpisodeContextActionConfiguration(0);
    result = swift_dynamicCastClass();
    if (result)
    {
      v6 = &qword_100576670;
    }

    else
    {
      type metadata accessor for TranscriptSelectionContextActionConfiguration(0);
      result = swift_dynamicCastClass();
      if (!result)
      {
        return result;
      }

      v6 = &qword_1005766C8;
    }

    *(v1 + 16) = *(result + *v6);
  }
}

uint64_t sub_1001DFCF0(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  *(v1 + 40) = a1;

  type metadata accessor for NowPlayingContextActionConfiguration();
  if (swift_dynamicCastClass())
  {

    v4 = sub_1001ECDA0();

    *(v2 + 16) = v4;
  }

  else
  {
    type metadata accessor for EpisodeContextActionConfiguration(0);
    result = swift_dynamicCastClass();
    if (result)
    {
      v6 = &qword_100576670;
    }

    else
    {
      type metadata accessor for TranscriptSelectionContextActionConfiguration(0);
      result = swift_dynamicCastClass();
      if (!result)
      {
        goto LABEL_9;
      }

      v6 = &qword_1005766C8;
    }

    *(v1 + 16) = *(result + *v6);
  }

LABEL_9:
  v7 = *(v2 + 16);
  if (v7)
  {

    if (sub_100397D28())
    {
      sub_100236C04(v7);
      sub_10023778C();
    }
  }

  return result;
}

uint64_t sub_1001DFE1C(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  *(v1 + 16) = a1;

  type metadata accessor for NowPlayingContextActionConfiguration();
  if (swift_dynamicCastClass())
  {

    v4 = sub_1001ECDA0();

    *(v2 + 24) = v4;
  }

  else
  {
    type metadata accessor for EpisodeContextActionConfiguration(0);
    result = swift_dynamicCastClass();
    if (result)
    {
      v6 = &qword_100576670;
    }

    else
    {
      type metadata accessor for TranscriptSelectionContextActionConfiguration(0);
      result = swift_dynamicCastClass();
      if (!result)
      {
        return result;
      }

      v6 = &qword_1005766C8;
    }

    *(v1 + 24) = *(result + *v6);
  }
}

void sub_1001DFF14(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;

  type metadata accessor for NowPlayingContextActionConfiguration();
  if (swift_dynamicCastClass())
  {

    v3 = sub_1001ECDA0();

    *(v1 + 16) = v3;
LABEL_8:

    goto LABEL_9;
  }

  type metadata accessor for EpisodeContextActionConfiguration(0);
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = &qword_100576670;
LABEL_7:
    *(v1 + 16) = *(v4 + *v5);

    goto LABEL_8;
  }

  type metadata accessor for TranscriptSelectionContextActionConfiguration(0);
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = &qword_1005766C8;
    goto LABEL_7;
  }

LABEL_9:
  sub_100354F28();
}

uint64_t sub_1001E0018()
{
  v1 = type metadata accessor for EpisodeContextActionDataType(0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_100168088(&unk_10057BBB0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v16[-v7];
  v9 = *(v0 + 16);
  if (v9)
  {
    v10 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
    swift_beginAccess();
    sub_1001E9140(v9 + v10, v8, type metadata accessor for EpisodeContextActionDataType);
    (*(v2 + 56))(v8, 0, 1, v1);
    sub_100009104(v8, &unk_10057BBB0);
    v11 = *(v0 + 16);
    if (v11)
    {
      v12 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
      swift_beginAccess();
      sub_1001E9140(v11 + v12, v4, type metadata accessor for EpisodeContextActionDataType);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_1001E92E4(v4, type metadata accessor for EpisodeContextActionDataType);
      }

      else
      {
        v14 = *(v4 + 1);

        if (v14)
        {
          v15 = *(v14 + 16);

          if (v15)
          {
            return 1;
          }
        }
      }
    }
  }

  else
  {
    (*(v2 + 56))(v8, 1, 1, v1, v6);
    sub_100009104(v8, &unk_10057BBB0);
  }

  return 0;
}

void sub_1001E0268()
{
  v1 = type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin(v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v0 + 16);
  if (v4)
  {
    v5 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
    swift_beginAccess();
    sub_1001E9140(v4 + v5, v3, type metadata accessor for EpisodeContextActionDataType);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1001E92E4(v3, type metadata accessor for EpisodeContextActionDataType);
    }

    else
    {
      if (*(v3 + 1))
      {
        if (*(v0 + 80))
        {

          dispatch thunk of EpisodeDeletionActionProvider.deleteEpisodesFromStations(episodeUuids:stationUuids:)();
        }
      }
    }
  }
}

uint64_t sub_1001E039C()
{

  sub_100004590(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_1001E0420()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0xE000000000000000;
  v1._object = 0x8000000100468170;
  v1._countAndFlagsBits = 0xD00000000000001CLL;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v5)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_1001E04C0@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for MetricsLabel.removeFromStation(_:);
  v3 = type metadata accessor for MetricsLabel();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1001E0534@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for ContextActionType.removeFromStation(_:);
  v3 = type metadata accessor for ContextActionType();
  v6 = *(v3 - 8);
  (*(v6 + 104))(a1, v2, v3);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t sub_1001E0610()
{
  sub_100004428(v0 + 32, v2);
  type metadata accessor for EpisodeDeletionActionProvider();
  swift_allocObject();

  *(v0 + 80) = EpisodeDeletionActionProvider.init(asPartOf:episodeDownloadStateController:libraryActionController:)();
}

double sub_1001E06A0@<D0>(uint64_t a1@<X8>)
{
  sub_1001E9000(v5);
  v2 = v6;
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

uint64_t sub_1001E071C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 88) = a1;
}

uint64_t sub_1001E07C0(uint64_t a1, uint64_t a2)
{
  result = sub_1001E91A8(&unk_1005821A0, a2, type metadata accessor for RemoveFromStationContextAction);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001E0818(uint64_t a1, uint64_t a2)
{
  result = sub_1001E91A8(&qword_100576478, a2, type metadata accessor for RemoveFromStationContextAction);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001E0870(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(void))
{
  v37 = a4;
  v38 = a3;
  v8 = sub_100168088(&qword_100576480);
  __chkstk_darwin(v8 - 8);
  v10 = &v32[-v9];
  v11 = sub_100168088(&unk_10057BB90);
  __chkstk_darwin(v11 - 8);
  v13 = &v32[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v16 = &v32[-v15];
  v17 = type metadata accessor for PresentationSource();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v32[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v22 = __chkstk_darwin(v21).n128_u64[0];
  v24 = &v32[-v23];
  v25 = [a1 presentationSourceItem];
  if (v25)
  {
    v26 = v25;
    v36 = a2;
    dispatch thunk of ContextActionsConfiguration.presentationSource.getter();
    if ((*(v18 + 48))(v16, 1, v17) == 1)
    {
      swift_unknownObjectRelease();
      sub_100009104(v16, &unk_10057BB90);
      a2 = v36;
    }

    else
    {
      (*(v18 + 32))(v24, v16, v17);
      v35 = a5;
      v34 = *(v18 + 16);
      v34(v20, v24, v17);
      *v10 = v26;
      v33 = enum case for PresentationSource.Position.sourceItem(_:);
      v27 = type metadata accessor for PresentationSource.Position();
      v28 = *(v27 - 8);
      (*(v28 + 104))(v10, v33, v27);
      (*(v28 + 56))(v10, 0, 1, v27);
      swift_unknownObjectRetain();
      PresentationSource.position.setter();
      v34(v13, v20, v17);
      a5 = v35;
      (*(v18 + 56))(v13, 0, 1, v17);
      a2 = v36;
      dispatch thunk of ContextActionsConfiguration.presentationSource.setter();
      swift_unknownObjectRelease();
      v29 = *(v18 + 8);
      v29(v20, v17);
      v29(v24, v17);
    }
  }

  v30 = v37(a2);
  return a5(v30);
}

uint64_t sub_1001E0C14(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t), uint64_t (*a7)(void))
{
  v38 = a5;
  v39 = a6;
  v37 = a4;
  v40 = a3;
  v41 = a2;
  v9 = sub_100168088(&qword_100576480);
  __chkstk_darwin(v9 - 8);
  v11 = &v33[-v10];
  v12 = sub_100168088(&unk_10057BB90);
  __chkstk_darwin(v12 - 8);
  v14 = &v33[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v17 = &v33[-v16];
  v18 = type metadata accessor for PresentationSource();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v33[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v23 = __chkstk_darwin(v22).n128_u64[0];
  v25 = &v33[-v24];
  v26 = [a1 presentationSourceItem];
  if (v26)
  {
    v27 = v26;
    dispatch thunk of ContextActionsConfiguration.presentationSource.getter();
    if ((*(v19 + 48))(v17, 1, v18) == 1)
    {
      swift_unknownObjectRelease();
      sub_100009104(v17, &unk_10057BB90);
    }

    else
    {
      (*(v19 + 32))(v25, v17, v18);
      v36 = a7;
      v35 = *(v19 + 16);
      v35(v21, v25, v18);
      *v11 = v27;
      v34 = enum case for PresentationSource.Position.sourceItem(_:);
      v28 = type metadata accessor for PresentationSource.Position();
      v29 = *(v28 - 8);
      (*(v29 + 104))(v11, v34, v28);
      (*(v29 + 56))(v11, 0, 1, v28);
      swift_unknownObjectRetain();
      PresentationSource.position.setter();
      v35(v14, v21, v18);
      a7 = v36;
      (*(v19 + 56))(v14, 0, 1, v18);
      dispatch thunk of ContextActionsConfiguration.presentationSource.setter();
      swift_unknownObjectRelease();
      v30 = *(v19 + 8);
      v30(v21, v18);
      v30(v25, v18);
    }
  }

  v31 = v39(v41, v37, v38);
  return a7(v31);
}

uint64_t sub_1001E0FBC(void *a1, uint64_t a2, void *a3)
{
  v39 = a2;
  v37 = type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin(v37);
  v38 = &v33[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_100168088(&qword_100576480);
  __chkstk_darwin(v6 - 8);
  v8 = &v33[-v7];
  v9 = sub_100168088(&unk_10057BB90);
  __chkstk_darwin(v9 - 8);
  v11 = &v33[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v14 = &v33[-v13];
  v15 = type metadata accessor for PresentationSource();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v33[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v20 = __chkstk_darwin(v19).n128_u64[0];
  v22 = &v33[-v21];
  v23 = [a1 presentationSourceItem];
  if (v23)
  {
    v24 = v23;
    dispatch thunk of ContextActionsConfiguration.presentationSource.getter();
    if ((*(v16 + 48))(v14, 1, v15) == 1)
    {
      swift_unknownObjectRelease();
      sub_100009104(v14, &unk_10057BB90);
    }

    else
    {
      (*(v16 + 32))(v22, v14, v15);
      v36 = a3;
      v35 = *(v16 + 16);
      v35(v18, v22, v15);
      *v8 = v24;
      v34 = enum case for PresentationSource.Position.sourceItem(_:);
      v25 = type metadata accessor for PresentationSource.Position();
      v26 = *(v25 - 8);
      (*(v26 + 104))(v8, v34, v25);
      (*(v26 + 56))(v8, 0, 1, v25);
      swift_unknownObjectRetain();
      PresentationSource.position.setter();
      v35(v11, v18, v15);
      a3 = v36;
      (*(v16 + 56))(v11, 0, 1, v15);
      dispatch thunk of ContextActionsConfiguration.presentationSource.setter();
      swift_unknownObjectRelease();
      v27 = *(v16 + 8);
      v27(v18, v15);
      v27(v22, v15);
    }
  }

  result = sub_1001E63F8(v39, sub_1001E85D8, &OBJC_IVAR____TtC8Podcasts36RemoveFromUpNextEpisodeContextAction_metricsLabel);
  v29 = a3[3];
  if (v29)
  {
    v30 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
    swift_beginAccess();
    v31 = v29 + v30;
    v32 = v38;
    sub_1001E9140(v31, v38, type metadata accessor for EpisodeContextActionDataType);
    if (swift_getEnumCaseMultiPayload())
    {
      return sub_1001E92E4(v32, type metadata accessor for EpisodeContextActionDataType);
    }

    else
    {

      sub_1000044A0(a3 + 4, a3[7]);
      dispatch thunk of LibraryActionControllerProtocol.removeFromUpNext(uuids:)();
    }
  }

  return result;
}

uint64_t sub_1001E1484(void *a1, uint64_t a2, uint64_t a3)
{
  v36 = a2;
  v5 = sub_100168088(&qword_100576480);
  __chkstk_darwin(v5 - 8);
  v7 = &v32[-v6];
  v8 = sub_100168088(&unk_10057BB90);
  __chkstk_darwin(v8 - 8);
  v10 = &v32[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v32[-v12];
  v14 = type metadata accessor for PresentationSource();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v32[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v19 = __chkstk_darwin(v18).n128_u64[0];
  v21 = &v32[-v20];
  v22 = [a1 presentationSourceItem];
  if (v22)
  {
    v23 = v22;
    dispatch thunk of ContextActionsConfiguration.presentationSource.getter();
    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {
      swift_unknownObjectRelease();
      sub_100009104(v13, &unk_10057BB90);
    }

    else
    {
      (*(v15 + 32))(v21, v13, v14);
      v35 = a3;
      v34 = *(v15 + 16);
      v34(v17, v21, v14);
      *v7 = v23;
      v33 = enum case for PresentationSource.Position.sourceItem(_:);
      v24 = type metadata accessor for PresentationSource.Position();
      v25 = *(v24 - 8);
      (*(v25 + 104))(v7, v33, v24);
      (*(v25 + 56))(v7, 0, 1, v24);
      swift_unknownObjectRetain();
      PresentationSource.position.setter();
      v34(v10, v17, v14);
      (*(v15 + 56))(v10, 0, 1, v14);
      dispatch thunk of ContextActionsConfiguration.presentationSource.setter();
      swift_unknownObjectRelease();
      v26 = *(v15 + 8);
      v26(v17, v14);
      v26(v21, v14);
      a3 = v35;
    }
  }

  sub_1002B9778();
  v27 = [objc_opt_self() sharedInstance];
  swift_beginAccess();
  v28 = *(a3 + 48);
  v29 = swift_allocObject();
  v29[2] = v28;
  v29[3] = sub_10024E918;
  v29[4] = 0;
  aBlock[4] = sub_1001E9C64;
  aBlock[5] = v29;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002355D0;
  aBlock[3] = &unk_1004E3DB0;
  v30 = _Block_copy(aBlock);
  swift_retain_n();

  [v27 reportAConcernURLWithCompletion:v30];
  _Block_release(v30);
}

uint64_t sub_1001E191C(void *a1, uint64_t a2, uint64_t a3)
{
  v32 = a2;
  v5 = sub_100168088(&qword_100576480);
  __chkstk_darwin(v5 - 8);
  v7 = &v28[-v6];
  v8 = sub_100168088(&unk_10057BB90);
  __chkstk_darwin(v8 - 8);
  v10 = &v28[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v28[-v12];
  v14 = type metadata accessor for PresentationSource();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v28[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v19 = __chkstk_darwin(v18).n128_u64[0];
  v21 = &v28[-v20];
  v22 = [a1 presentationSourceItem];
  if (v22)
  {
    v23 = v22;
    dispatch thunk of ContextActionsConfiguration.presentationSource.getter();
    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {
      swift_unknownObjectRelease();
      sub_100009104(v13, &unk_10057BB90);
    }

    else
    {
      (*(v15 + 32))(v21, v13, v14);
      v31 = a3;
      v30 = *(v15 + 16);
      v30(v17, v21, v14);
      *v7 = v23;
      v29 = enum case for PresentationSource.Position.sourceItem(_:);
      v24 = type metadata accessor for PresentationSource.Position();
      v25 = *(v24 - 8);
      (*(v25 + 104))(v7, v29, v24);
      (*(v25 + 56))(v7, 0, 1, v24);
      swift_unknownObjectRetain();
      PresentationSource.position.setter();
      v30(v10, v17, v14);
      (*(v15 + 56))(v10, 0, 1, v14);
      dispatch thunk of ContextActionsConfiguration.presentationSource.setter();
      swift_unknownObjectRelease();
      v26 = *(v15 + 8);
      v26(v17, v14);
      v26(v21, v14);
    }
  }

  return sub_10031FEB0();
}

uint64_t sub_1001E1CA8()
{
  v78 = type metadata accessor for PresentationSource.Position();
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v76 = v71 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = sub_100168088(&qword_100576480);
  __chkstk_darwin(v1 - 8);
  v80 = v71 - v2;
  v91 = type metadata accessor for ActionMetricsBehavior();
  v90 = *(v91 - 8);
  __chkstk_darwin(v91);
  v89 = v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for InteractionContext();
  __chkstk_darwin(v4 - 8);
  v83 = v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OSLogger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100168088(&qword_100576488);
  __chkstk_darwin(v10 - 8);
  v87 = v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v94 = v71 - v13;
  v93 = type metadata accessor for ActionOrigin();
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v88 = v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v15 - 8);
  v82 = v71 - v16;
  v17 = type metadata accessor for MetricsLabel();
  v81 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for MetricsData();
  __chkstk_darwin(v20 - 8);
  v22 = v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for NativeClickMetricsAction();
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v84 = v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100168088(&unk_10057BB90);
  __chkstk_darwin(v24 - 8);
  v79 = v71 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = v71 - v27;
  result = sub_1001E85D8();
  if (v30)
  {
    v74 = result;
    v95 = v6;
    v31 = v7;
    v75 = v22;
    dispatch thunk of ContextActionsConfiguration.presentationSource.getter();
    v32 = type metadata accessor for PresentationSource();
    v33 = *(v32 - 8);
    v34 = *(v33 + 48);
    v35 = v33 + 48;
    if (v34(v28, 1, v32) || (v71[2] = v35, v72 = v34, v73 = v32, (v37 = PresentationSource.viewController.getter()) == 0))
    {

      sub_100009104(v28, &unk_10057BB90);
    }

    else
    {
      v38 = v37;
      sub_100009104(v28, &unk_10057BB90);
      v39 = UIResponder.nearestActionRunner.getter();
      v71[1] = v40;

      if (v39)
      {
        type metadata accessor for TranscriptSelectionContextActionConfiguration(0);
        if (swift_dynamicCastClass() || (type metadata accessor for NowPlayingTranscriptSelectionContextActionConfiguration(), swift_dynamicCastClass()))
        {
          v41 = static MetricsTargetType.transcriptText.getter();
        }

        else
        {
          v41 = static MetricsTargetType.button.getter();
        }

        v95 = v41;
        v42 = v81;
        (*(v81 + 104))(v19, enum case for MetricsLabel.removeFromStation(_:), v17);
        MetricsLabel.rawValue.getter();
        (*(v42 + 8))(v19, v17);
        v43 = swift_dynamicCastClass();
        v71[0] = v39;
        if (v43)
        {
          static MetricsActionContext.selectionMenu.getter();
        }

        else
        {
          static MetricsActionContext.contextual.getter();
        }

        v44 = v94;
        v45 = type metadata accessor for URL();
        v46 = v82;
        (*(*(v45 - 8) + 56))(v82, 1, 1, v45);
        static MetricsDataConfiguration.default.getter();
        static MetricsData.clickData(targetID:targetType:actionType:actionContext:actionResult:actionURL:fields:configuration:)();

        v107 = v101;
        sub_100009104(&v107, &unk_100574650);
        v106 = v102;
        sub_100009104(&v106, &unk_100573A90);
        v105 = v103;
        sub_100009104(&v105, &unk_100574660);
        sub_100037470(v104);

        sub_100009104(v46, &qword_100574040);
        v47 = v84;
        NativeClickMetricsAction.init(_:)();
        ContextActionsConfiguration.objectGraph.getter();
        v48 = v93;
        BaseObjectGraph.injectIfAvailable<A>(_:)();

        v49 = v92;
        v50 = *(v92 + 48);
        if (v50(v44, 1, v48) != 1)
        {
          v55 = v88;
          sub_1001E91F0(v44, v88);
LABEL_26:
          type metadata accessor for ActionRunnerOptions();
          ContextActionsConfiguration.objectGraph.getter();
          BaseObjectGraph.__allocating_init(_:)();
          v62 = v87;
          sub_1001E9140(v55, v87, &type metadata accessor for ActionOrigin);
          (*(v49 + 56))(v62, 0, 1, v48);
          ActionRunnerOptions.withActionOrigin(_:)();

          sub_100009104(v62, &qword_100576488);
          swift_getObjectType();
          v63 = v86;
          v97 = v86;
          v98 = sub_1001E91A8(&qword_100576498, 255, &type metadata accessor for NativeClickMetricsAction);
          v64 = sub_10000E680(v96);
          v65 = v85;
          (*(v85 + 16))(v64, v47, v63);
          v66 = v90;
          v67 = v89;
          v68 = v91;
          (*(v90 + 104))(v89, enum case for ActionMetricsBehavior.fromAction(_:), v91);
          ActionRunner.perform(_:withMetrics:asPartOf:)();
          swift_unknownObjectRelease();

          (*(v66 + 8))(v67, v68);
          sub_1001E92E4(v55, &type metadata accessor for ActionOrigin);
          (*(v65 + 8))(v47, v63);
          return sub_100004590(v96);
        }

        dispatch thunk of ContextActionsConfiguration.context.getter();
        dispatch thunk of ContextActionsConfiguration.previewModel.getter();
        v51 = v97;
        v52 = v47;
        if (v97)
        {
          v53 = sub_1000044A0(v96, v97);
          *(&v100 + 1) = v51;
          v54 = sub_10000E680(&v99);
          (*(*(v51 - 8) + 16))(v54, v53, v51);
          sub_100004590(v96);
        }

        else
        {
          sub_100009104(v96, &qword_100576490);
          v99 = 0u;
          v100 = 0u;
        }

        v56 = v80;
        v57 = v79;
        dispatch thunk of ContextActionsConfiguration.presentationSource.getter();
        v58 = v57;
        v59 = v72(v57, 1, v73);
        v47 = v52;
        if (!v59)
        {
          PresentationSource.position.getter();
          v60 = v77;
          v61 = v78;
          if (!(*(v77 + 48))(v56, 1, v78))
          {
            v69 = v58;
            v70 = v76;
            (*(v60 + 16))(v76, v56, v61);
            sub_100009104(v56, &qword_100576480);
            sub_100009104(v69, &unk_10057BB90);
            PresentationSource.Position.view.getter();
            v48 = v93;
            (*(v60 + 8))(v70, v61);
            v49 = v92;
            v44 = v94;
LABEL_24:
            v55 = v88;
            ActionOrigin.init(context:sender:view:)();
            if (v50(v44, 1, v48) != 1)
            {
              sub_100009104(v44, &qword_100576488);
            }

            goto LABEL_26;
          }

          sub_100009104(v56, &qword_100576480);
          v44 = v94;
        }

        sub_100009104(v58, &unk_10057BB90);
        goto LABEL_24;
      }
    }

    static OSLogger.actions.getter();
    sub_100168088(&unk_10057E660);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_100400790;
    LogMessage.init(stringLiteral:)();
    v36 = v95;
    Logger.error(_:)();

    return (*(v31 + 8))(v9, v36);
  }

  return result;
}

uint64_t sub_1001E2B14(uint64_t a1)
{
  v80 = type metadata accessor for PresentationSource.Position();
  v79 = *(v80 - 8);
  __chkstk_darwin(v80);
  v77 = &v67 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100168088(&qword_100576480);
  __chkstk_darwin(v3 - 8);
  v78 = &v67 - v4;
  v5 = type metadata accessor for ActionMetricsBehavior();
  v91 = *(v5 - 8);
  __chkstk_darwin(v5);
  v90 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for InteractionContext();
  __chkstk_darwin(v7 - 8);
  v83 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OSLogger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100168088(&qword_100576488);
  __chkstk_darwin(v13 - 8);
  v86 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v93 = &v67 - v16;
  v84 = type metadata accessor for ActionOrigin();
  v92 = *(v84 - 8);
  __chkstk_darwin(v84);
  v89 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v18 - 8);
  v20 = &v67 - v19;
  v21 = type metadata accessor for MetricsData();
  __chkstk_darwin(v21 - 8);
  v82 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for NativeClickMetricsAction();
  v87 = *(v88 - 8);
  __chkstk_darwin(v88);
  v85 = &v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100168088(&unk_10057BB90);
  __chkstk_darwin(v24 - 8);
  v81 = &v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v67 - v27;
  result = sub_1001E885C();
  if (v30)
  {
    v74 = result;
    v75 = v20;
    v76 = v5;
    dispatch thunk of ContextActionsConfiguration.presentationSource.getter();
    v31 = type metadata accessor for PresentationSource();
    v32 = *(v31 - 8);
    v33 = *(v32 + 48);
    v34 = v32 + 48;
    if (v33(v28, 1, v31) || (v71 = v34, v72 = v33, v73 = a1, (v35 = PresentationSource.viewController.getter()) == 0))
    {

      sub_100009104(v28, &unk_10057BB90);
    }

    else
    {
      v36 = v35;
      sub_100009104(v28, &unk_10057BB90);
      v37 = UIResponder.nearestActionRunner.getter();
      v39 = v38;

      if (v37)
      {
        v69 = v39;
        type metadata accessor for TranscriptSelectionContextActionConfiguration(0);
        v40 = swift_dynamicCastClass();
        v70 = v37;
        v68 = v31;
        if (v40)
        {
          static MetricsTargetType.transcriptText.getter();
          MetricsLabel.rawValue.getter();
          static MetricsActionContext.selectionMenu.getter();
          v41 = v75;
        }

        else
        {
          type metadata accessor for NowPlayingTranscriptSelectionContextActionConfiguration();
          if (swift_dynamicCastClass())
          {
            static MetricsTargetType.transcriptText.getter();
          }

          else
          {
            static MetricsTargetType.button.getter();
          }

          v41 = v75;
          MetricsLabel.rawValue.getter();
          static MetricsActionContext.contextual.getter();
        }

        v42 = type metadata accessor for URL();
        (*(*(v42 - 8) + 56))(v41, 1, 1, v42);
        static MetricsDataConfiguration.default.getter();
        static MetricsData.clickData(targetID:targetType:actionType:actionContext:actionResult:actionURL:fields:configuration:)();

        v105 = v99;
        sub_100009104(&v105, &unk_100574650);
        v104 = v100;
        sub_100009104(&v104, &unk_100573A90);
        v103 = v101;
        sub_100009104(&v103, &unk_100574660);
        sub_100037470(v102);

        sub_100009104(v41, &qword_100574040);
        v43 = v85;
        NativeClickMetricsAction.init(_:)();
        ContextActionsConfiguration.objectGraph.getter();
        v44 = v93;
        v45 = v84;
        BaseObjectGraph.injectIfAvailable<A>(_:)();

        v46 = v92;
        v47 = *(v92 + 48);
        if (v47(v44, 1, v45) != 1)
        {
          v49 = v89;
          sub_1001E91F0(v44, v89);
          v52 = v76;
LABEL_26:
          type metadata accessor for ActionRunnerOptions();
          ContextActionsConfiguration.objectGraph.getter();
          BaseObjectGraph.__allocating_init(_:)();
          v59 = v86;
          sub_1001E9140(v49, v86, &type metadata accessor for ActionOrigin);
          (*(v46 + 56))(v59, 0, 1, v45);
          ActionRunnerOptions.withActionOrigin(_:)();

          sub_100009104(v59, &qword_100576488);
          swift_getObjectType();
          v60 = v88;
          v95 = v88;
          v96 = sub_1001E91A8(&qword_100576498, 255, &type metadata accessor for NativeClickMetricsAction);
          v61 = sub_10000E680(v94);
          v62 = v87;
          (*(v87 + 16))(v61, v43, v60);
          v63 = v91;
          v64 = v90;
          (*(v91 + 104))(v90, enum case for ActionMetricsBehavior.fromAction(_:), v52);
          ActionRunner.perform(_:withMetrics:asPartOf:)();
          swift_unknownObjectRelease();

          (*(v63 + 8))(v64, v52);
          sub_1001E92E4(v49, &type metadata accessor for ActionOrigin);
          (*(v62 + 8))(v43, v60);
          return sub_100004590(v94);
        }

        dispatch thunk of ContextActionsConfiguration.context.getter();
        dispatch thunk of ContextActionsConfiguration.previewModel.getter();
        v48 = v95;
        v49 = v89;
        if (v95)
        {
          v50 = sub_1000044A0(v94, v95);
          *(&v98 + 1) = v48;
          v51 = sub_10000E680(&v97);
          (*(*(v48 - 8) + 16))(v51, v50, v48);
          sub_100004590(v94);
        }

        else
        {
          sub_100009104(v94, &qword_100576490);
          v97 = 0u;
          v98 = 0u;
        }

        v53 = v81;
        dispatch thunk of ContextActionsConfiguration.presentationSource.getter();
        v54 = v72(v53, 1, v68);
        v52 = v76;
        v55 = v93;
        if (!v54)
        {
          v56 = v78;
          PresentationSource.position.getter();
          v57 = v56;
          v58 = v79;
          if (!(*(v79 + 48))(v57, 1, v80))
          {
            v65 = v57;
            v66 = v77;
            (*(v58 + 16))(v77, v65, v80);
            sub_100009104(v65, &qword_100576480);
            sub_100009104(v53, &unk_10057BB90);
            PresentationSource.Position.view.getter();
            (*(v58 + 8))(v66, v80);
            v46 = v92;
            v55 = v93;
LABEL_24:
            ActionOrigin.init(context:sender:view:)();
            if (v47(v55, 1, v45) != 1)
            {
              sub_100009104(v55, &qword_100576488);
            }

            goto LABEL_26;
          }

          sub_100009104(v57, &qword_100576480);
          v55 = v93;
        }

        sub_100009104(v53, &unk_10057BB90);
        goto LABEL_24;
      }
    }

    static OSLogger.actions.getter();
    sub_100168088(&unk_10057E660);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_100400790;
    LogMessage.init(stringLiteral:)();
    Logger.error(_:)();

    return (*(v10 + 8))(v12, v9);
  }

  return result;
}

uint64_t sub_1001E38EC()
{
  v79 = type metadata accessor for PresentationSource.Position();
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v77 = v71 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = sub_100168088(&qword_100576480);
  __chkstk_darwin(v1 - 8);
  v81 = v71 - v2;
  v92 = type metadata accessor for ActionMetricsBehavior();
  v91 = *(v92 - 8);
  __chkstk_darwin(v92);
  v90 = v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for InteractionContext();
  __chkstk_darwin(v4 - 8);
  v84 = v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100168088(&qword_100576488);
  __chkstk_darwin(v6 - 8);
  v88 = v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v95 = v71 - v9;
  v85 = type metadata accessor for ActionOrigin();
  v93 = *(v85 - 8);
  __chkstk_darwin(v85);
  v89 = v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v11 - 8);
  v83 = v71 - v12;
  v13 = type metadata accessor for MetricsLabel();
  v82 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for MetricsData();
  __chkstk_darwin(v16 - 8);
  v18 = v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for NativeClickMetricsAction();
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v94 = v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for OSLogger();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100168088(&unk_10057BB90);
  __chkstk_darwin(v24 - 8);
  v80 = v71 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = v71 - v27;
  result = sub_1001E85D8();
  if (v30)
  {
    v74 = result;
    v75 = v13;
    v76 = v18;
    dispatch thunk of ContextActionsConfiguration.presentationSource.getter();
    v31 = type metadata accessor for PresentationSource();
    v32 = *(v31 - 8);
    v33 = *(v32 + 48);
    v34 = v32 + 48;
    if (v33(v28, 1, v31) || (v71[4] = v34, v72 = v33, v73 = v31, (v35 = PresentationSource.viewController.getter()) == 0))
    {

      sub_100009104(v28, &unk_10057BB90);
    }

    else
    {
      v36 = v35;
      sub_100009104(v28, &unk_10057BB90);
      v37 = UIResponder.nearestActionRunner.getter();
      v71[3] = v38;

      if (v37)
      {
        v71[2] = v37;
        type metadata accessor for TranscriptSelectionContextActionConfiguration(0);
        if (swift_dynamicCastClass() || (type metadata accessor for NowPlayingTranscriptSelectionContextActionConfiguration(), swift_dynamicCastClass()))
        {
          v39 = static MetricsTargetType.transcriptText.getter();
        }

        else
        {
          v39 = static MetricsTargetType.button.getter();
        }

        v71[0] = v39;
        v71[1] = v40;
        v41 = v75;
        v42 = v82;
        (*(v82 + 104))(v15, enum case for MetricsLabel.play(_:), v75);
        MetricsLabel.rawValue.getter();
        (*(v42 + 8))(v15, v41);
        if (swift_dynamicCastClass())
        {
          static MetricsActionContext.selectionMenu.getter();
        }

        else
        {
          static MetricsActionContext.contextual.getter();
        }

        v43 = v94;
        v44 = type metadata accessor for URL();
        v45 = v83;
        (*(*(v44 - 8) + 56))(v83, 1, 1, v44);
        static MetricsDataConfiguration.default.getter();
        static MetricsData.clickData(targetID:targetType:actionType:actionContext:actionResult:actionURL:fields:configuration:)();

        v107 = v101;
        sub_100009104(&v107, &unk_100574650);
        v106 = v102;
        sub_100009104(&v106, &unk_100573A90);
        v105 = v103;
        sub_100009104(&v105, &unk_100574660);
        sub_100037470(v104);

        sub_100009104(v45, &qword_100574040);
        NativeClickMetricsAction.init(_:)();
        ContextActionsConfiguration.objectGraph.getter();
        v46 = v95;
        v47 = v85;
        BaseObjectGraph.injectIfAvailable<A>(_:)();

        v48 = v93;
        v49 = *(v93 + 48);
        if (v49(v46, 1, v47) != 1)
        {
          v51 = v89;
          sub_1001E91F0(v46, v89);
LABEL_26:
          type metadata accessor for ActionRunnerOptions();
          ContextActionsConfiguration.objectGraph.getter();
          BaseObjectGraph.__allocating_init(_:)();
          v62 = v88;
          sub_1001E9140(v51, v88, &type metadata accessor for ActionOrigin);
          (*(v48 + 56))(v62, 0, 1, v47);
          ActionRunnerOptions.withActionOrigin(_:)();

          sub_100009104(v62, &qword_100576488);
          swift_getObjectType();
          v63 = v87;
          v97 = v87;
          v98 = sub_1001E91A8(&qword_100576498, 255, &type metadata accessor for NativeClickMetricsAction);
          v64 = sub_10000E680(v96);
          v65 = v86;
          (*(v86 + 16))(v64, v43, v63);
          v66 = v91;
          v67 = v90;
          v68 = v92;
          (*(v91 + 104))(v90, enum case for ActionMetricsBehavior.fromAction(_:), v92);
          ActionRunner.perform(_:withMetrics:asPartOf:)();
          swift_unknownObjectRelease();

          (*(v66 + 8))(v67, v68);
          sub_1001E92E4(v51, &type metadata accessor for ActionOrigin);
          (*(v65 + 8))(v43, v63);
          return sub_100004590(v96);
        }

        dispatch thunk of ContextActionsConfiguration.context.getter();
        dispatch thunk of ContextActionsConfiguration.previewModel.getter();
        v50 = v97;
        v51 = v89;
        if (v97)
        {
          v52 = sub_1000044A0(v96, v97);
          *(&v100 + 1) = v50;
          v53 = sub_10000E680(&v99);
          (*(*(v50 - 8) + 16))(v53, v52, v50);
          sub_100004590(v96);
        }

        else
        {
          sub_100009104(v96, &qword_100576490);
          v99 = 0u;
          v100 = 0u;
        }

        v54 = v81;
        v55 = v72;
        v56 = v80;
        dispatch thunk of ContextActionsConfiguration.presentationSource.getter();
        v57 = v55(v56, 1, v73);
        v58 = v95;
        if (!v57)
        {
          PresentationSource.position.getter();
          v59 = v78;
          v60 = v79;
          if (!(*(v78 + 48))(v54, 1, v79))
          {
            v69 = v54;
            v70 = v77;
            (*(v59 + 16))(v77, v69, v60);
            sub_100009104(v69, &qword_100576480);
            sub_100009104(v56, &unk_10057BB90);
            PresentationSource.Position.view.getter();
            (*(v59 + 8))(v70, v60);
            v48 = v93;
            v58 = v95;
LABEL_24:
            ActionOrigin.init(context:sender:view:)();
            v61 = v49(v58, 1, v47);
            v43 = v94;
            if (v61 != 1)
            {
              sub_100009104(v58, &qword_100576488);
            }

            goto LABEL_26;
          }

          sub_100009104(v54, &qword_100576480);
          v58 = v95;
        }

        sub_100009104(v56, &unk_10057BB90);
        goto LABEL_24;
      }
    }

    static OSLogger.actions.getter();
    sub_100168088(&unk_10057E660);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_100400790;
    LogMessage.init(stringLiteral:)();
    Logger.error(_:)();

    return (*(v21 + 8))(v23, v20);
  }

  return result;
}

uint64_t sub_1001E4758(uint64_t a1)
{
  v80 = type metadata accessor for PresentationSource.Position();
  v79 = *(v80 - 8);
  __chkstk_darwin(v80);
  v77 = &v67 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100168088(&qword_100576480);
  __chkstk_darwin(v3 - 8);
  v78 = &v67 - v4;
  v5 = type metadata accessor for ActionMetricsBehavior();
  v91 = *(v5 - 8);
  __chkstk_darwin(v5);
  v90 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for InteractionContext();
  __chkstk_darwin(v7 - 8);
  v83 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100168088(&qword_100576488);
  __chkstk_darwin(v9 - 8);
  v86 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v93 = &v67 - v12;
  v84 = type metadata accessor for ActionOrigin();
  v92 = *(v84 - 8);
  __chkstk_darwin(v84);
  v89 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v14 - 8);
  v16 = &v67 - v15;
  v17 = type metadata accessor for MetricsData();
  __chkstk_darwin(v17 - 8);
  v82 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for NativeClickMetricsAction();
  v87 = *(v88 - 8);
  __chkstk_darwin(v88);
  v85 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for OSLogger();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100168088(&unk_10057BB90);
  __chkstk_darwin(v24 - 8);
  v81 = &v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v67 - v27;
  result = sub_1001E85D8();
  if (v30)
  {
    v74 = result;
    v75 = v16;
    v76 = v5;
    dispatch thunk of ContextActionsConfiguration.presentationSource.getter();
    v31 = type metadata accessor for PresentationSource();
    v32 = *(v31 - 8);
    v33 = *(v32 + 48);
    v34 = v32 + 48;
    if (v33(v28, 1, v31) || (v72 = v34, v73 = v33, (v35 = PresentationSource.viewController.getter()) == 0))
    {

      sub_100009104(v28, &unk_10057BB90);
    }

    else
    {
      v36 = v35;
      sub_100009104(v28, &unk_10057BB90);
      v37 = UIResponder.nearestActionRunner.getter();
      v70 = v38;

      v71 = v37;
      if (v37)
      {
        type metadata accessor for TranscriptSelectionContextActionConfiguration(0);
        v39 = swift_dynamicCastClass();
        v68 = v31;
        v69 = a1;
        if (v39)
        {
          static MetricsTargetType.transcriptText.getter();
          MetricsLabel.rawValue.getter();
          static MetricsActionContext.selectionMenu.getter();
          v40 = v75;
        }

        else
        {
          type metadata accessor for NowPlayingTranscriptSelectionContextActionConfiguration();
          if (swift_dynamicCastClass())
          {
            static MetricsTargetType.transcriptText.getter();
          }

          else
          {
            static MetricsTargetType.button.getter();
          }

          v40 = v75;
          MetricsLabel.rawValue.getter();
          static MetricsActionContext.contextual.getter();
        }

        v41 = type metadata accessor for URL();
        (*(*(v41 - 8) + 56))(v40, 1, 1, v41);
        static MetricsDataConfiguration.default.getter();
        static MetricsData.clickData(targetID:targetType:actionType:actionContext:actionResult:actionURL:fields:configuration:)();

        v105 = v99;
        sub_100009104(&v105, &unk_100574650);
        v104 = v100;
        sub_100009104(&v104, &unk_100573A90);
        v103 = v101;
        sub_100009104(&v103, &unk_100574660);
        sub_100037470(v102);

        sub_100009104(v40, &qword_100574040);
        v42 = v85;
        NativeClickMetricsAction.init(_:)();
        ContextActionsConfiguration.objectGraph.getter();
        v43 = v93;
        v44 = v84;
        BaseObjectGraph.injectIfAvailable<A>(_:)();

        v45 = v92;
        v46 = *(v92 + 48);
        if (v46(v43, 1, v44) != 1)
        {
          v48 = v89;
          sub_1001E91F0(v43, v89);
LABEL_26:
          type metadata accessor for ActionRunnerOptions();
          ContextActionsConfiguration.objectGraph.getter();
          BaseObjectGraph.__allocating_init(_:)();
          v58 = v86;
          sub_1001E9140(v48, v86, &type metadata accessor for ActionOrigin);
          (*(v45 + 56))(v58, 0, 1, v44);
          ActionRunnerOptions.withActionOrigin(_:)();

          sub_100009104(v58, &qword_100576488);
          swift_getObjectType();
          v59 = v88;
          v95 = v88;
          v96 = sub_1001E91A8(&qword_100576498, 255, &type metadata accessor for NativeClickMetricsAction);
          v60 = sub_10000E680(v94);
          v61 = v87;
          (*(v87 + 16))(v60, v42, v59);
          v62 = v91;
          v63 = v90;
          v64 = v76;
          (*(v91 + 104))(v90, enum case for ActionMetricsBehavior.fromAction(_:), v76);
          ActionRunner.perform(_:withMetrics:asPartOf:)();
          swift_unknownObjectRelease();

          (*(v62 + 8))(v63, v64);
          sub_1001E92E4(v48, &type metadata accessor for ActionOrigin);
          (*(v61 + 8))(v42, v59);
          return sub_100004590(v94);
        }

        dispatch thunk of ContextActionsConfiguration.context.getter();
        dispatch thunk of ContextActionsConfiguration.previewModel.getter();
        v47 = v95;
        v48 = v89;
        v49 = v42;
        if (v95)
        {
          v50 = sub_1000044A0(v94, v95);
          *(&v98 + 1) = v47;
          v51 = sub_10000E680(&v97);
          v52 = v50;
          v43 = v93;
          (*(*(v47 - 8) + 16))(v51, v52, v47);
          sub_100004590(v94);
        }

        else
        {
          sub_100009104(v94, &qword_100576490);
          v97 = 0u;
          v98 = 0u;
        }

        v53 = v81;
        dispatch thunk of ContextActionsConfiguration.presentationSource.getter();
        v54 = v53;
        v55 = v73(v53, 1, v68);
        v42 = v49;
        if (!v55)
        {
          v56 = v78;
          PresentationSource.position.getter();
          v57 = v79;
          if (!(*(v79 + 48))(v56, 1, v80))
          {
            v65 = v77;
            (*(v57 + 16))(v77, v56, v80);
            sub_100009104(v56, &qword_100576480);
            sub_100009104(v81, &unk_10057BB90);
            PresentationSource.Position.view.getter();
            v66 = v65;
            v45 = v92;
            (*(v57 + 8))(v66, v80);
            v43 = v93;
LABEL_24:
            ActionOrigin.init(context:sender:view:)();
            if (v46(v43, 1, v44) != 1)
            {
              sub_100009104(v43, &qword_100576488);
            }

            goto LABEL_26;
          }

          sub_100009104(v56, &qword_100576480);
          v54 = v81;
        }

        sub_100009104(v54, &unk_10057BB90);
        goto LABEL_24;
      }
    }

    static OSLogger.actions.getter();
    sub_100168088(&unk_10057E660);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_100400790;
    LogMessage.init(stringLiteral:)();
    Logger.error(_:)();

    return (*(v21 + 8))(v23, v20);
  }

  return result;
}

uint64_t sub_1001E5524()
{
  v79 = type metadata accessor for PresentationSource.Position();
  v80 = *(v79 - 8);
  __chkstk_darwin(v79);
  v77 = v71 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100168088(&qword_100576480);
  __chkstk_darwin(v2 - 8);
  v78 = v71 - v3;
  v92 = type metadata accessor for ActionMetricsBehavior();
  v91 = *(v92 - 8);
  __chkstk_darwin(v92);
  v90 = v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for InteractionContext();
  __chkstk_darwin(v5 - 8);
  v82 = v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100168088(&qword_100576488);
  __chkstk_darwin(v7 - 8);
  v88 = v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v94 = v71 - v10;
  v85 = type metadata accessor for ActionOrigin();
  v93 = *(v85 - 8);
  __chkstk_darwin(v85);
  v89 = v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v12 - 8);
  v84 = v71 - v13;
  v14 = type metadata accessor for MetricsLabel();
  v83 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for MetricsData();
  __chkstk_darwin(v17 - 8);
  v19 = v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for NativeClickMetricsAction();
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v95 = v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for OSLogger();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100168088(&unk_10057BB90);
  __chkstk_darwin(v25 - 8);
  v81 = v71 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = v71 - v28;
  v30 = OBJC_IVAR____TtC8Podcasts27ViewTranscriptContextAction_configuration;
  swift_beginAccess();
  if (!*(v0 + v30) || (type metadata accessor for NowPlayingTranscriptSelectionContextActionConfiguration(), (result = swift_dynamicCastClass()) == 0))
  {
    result = sub_1001E85D8();
    if (v32)
    {
      v74 = result;
      v76 = v32;
      v75 = v19;
      dispatch thunk of ContextActionsConfiguration.presentationSource.getter();
      v33 = type metadata accessor for PresentationSource();
      v34 = *(v33 - 8);
      v35 = *(v34 + 48);
      v36 = v34 + 48;
      if (v35(v29, 1, v33) || (v71[4] = v36, v72 = v35, v73 = v33, (v37 = PresentationSource.viewController.getter()) == 0))
      {

        sub_100009104(v29, &unk_10057BB90);
      }

      else
      {
        v38 = v37;
        sub_100009104(v29, &unk_10057BB90);
        v39 = UIResponder.nearestActionRunner.getter();
        v71[2] = v40;

        v71[3] = v39;
        if (v39)
        {
          type metadata accessor for TranscriptSelectionContextActionConfiguration(0);
          if (swift_dynamicCastClass() || (type metadata accessor for NowPlayingTranscriptSelectionContextActionConfiguration(), swift_dynamicCastClass()))
          {
            v41 = static MetricsTargetType.transcriptText.getter();
          }

          else
          {
            v41 = static MetricsTargetType.button.getter();
          }

          v71[0] = v41;
          v71[1] = v42;
          v43 = v83;
          (*(v83 + 104))(v16, enum case for MetricsLabel.viewTranscript(_:), v14);
          MetricsLabel.rawValue.getter();
          (*(v43 + 8))(v16, v14);
          if (swift_dynamicCastClass())
          {
            static MetricsActionContext.selectionMenu.getter();
          }

          else
          {
            static MetricsActionContext.contextual.getter();
          }

          v44 = v85;
          v45 = type metadata accessor for URL();
          v46 = v84;
          (*(*(v45 - 8) + 56))(v84, 1, 1, v45);
          static MetricsDataConfiguration.default.getter();
          static MetricsData.clickData(targetID:targetType:actionType:actionContext:actionResult:actionURL:fields:configuration:)();

          v107 = v101;
          sub_100009104(&v107, &unk_100574650);
          v106 = v102;
          sub_100009104(&v106, &unk_100573A90);
          v105 = v103;
          sub_100009104(&v105, &unk_100574660);
          sub_100037470(v104);

          sub_100009104(v46, &qword_100574040);
          NativeClickMetricsAction.init(_:)();
          ContextActionsConfiguration.objectGraph.getter();
          v47 = v94;
          BaseObjectGraph.injectIfAvailable<A>(_:)();

          v48 = v93;
          v49 = *(v93 + 48);
          v50 = v44;
          if (v49(v47, 1, v44) != 1)
          {
            v52 = v89;
            sub_1001E91F0(v47, v89);
LABEL_28:
            type metadata accessor for ActionRunnerOptions();
            ContextActionsConfiguration.objectGraph.getter();
            BaseObjectGraph.__allocating_init(_:)();
            v60 = v88;
            sub_1001E9140(v52, v88, &type metadata accessor for ActionOrigin);
            (*(v48 + 56))(v60, 0, 1, v50);
            ActionRunnerOptions.withActionOrigin(_:)();

            sub_100009104(v60, &qword_100576488);
            swift_getObjectType();
            v61 = v87;
            v97 = v87;
            v98 = sub_1001E91A8(&qword_100576498, 255, &type metadata accessor for NativeClickMetricsAction);
            v62 = sub_10000E680(v96);
            v63 = v86;
            v64 = v95;
            (*(v86 + 16))(v62, v95, v61);
            v65 = v91;
            v66 = v90;
            v67 = v92;
            (*(v91 + 104))(v90, enum case for ActionMetricsBehavior.fromAction(_:), v92);
            ActionRunner.perform(_:withMetrics:asPartOf:)();
            swift_unknownObjectRelease();

            (*(v65 + 8))(v66, v67);
            sub_1001E92E4(v52, &type metadata accessor for ActionOrigin);
            (*(v63 + 8))(v64, v61);
            return sub_100004590(v96);
          }

          dispatch thunk of ContextActionsConfiguration.context.getter();
          dispatch thunk of ContextActionsConfiguration.previewModel.getter();
          v51 = v97;
          v52 = v89;
          if (v97)
          {
            v53 = sub_1000044A0(v96, v97);
            *(&v100 + 1) = v51;
            v54 = sub_10000E680(&v99);
            v55 = v53;
            v47 = v94;
            (*(*(v51 - 8) + 16))(v54, v55, v51);
            sub_100004590(v96);
          }

          else
          {
            sub_100009104(v96, &qword_100576490);
            v99 = 0u;
            v100 = 0u;
          }

          v56 = v81;
          dispatch thunk of ContextActionsConfiguration.presentationSource.getter();
          if (!v72(v56, 1, v73))
          {
            v57 = v78;
            v58 = v56;
            PresentationSource.position.getter();
            v59 = v79;
            if (!(*(v80 + 48))(v57, 1, v79))
            {
              v68 = v80;
              v69 = v77;
              (*(v80 + 16))(v77, v57, v59);
              sub_100009104(v57, &qword_100576480);
              sub_100009104(v58, &unk_10057BB90);
              PresentationSource.Position.view.getter();
              v70 = v69;
              v47 = v94;
              (*(v68 + 8))(v70, v59);
              v48 = v93;
LABEL_26:
              ActionOrigin.init(context:sender:view:)();
              if (v49(v47, 1, v50) != 1)
              {
                sub_100009104(v47, &qword_100576488);
              }

              goto LABEL_28;
            }

            sub_100009104(v57, &qword_100576480);
            v56 = v58;
          }

          sub_100009104(v56, &unk_10057BB90);
          goto LABEL_26;
        }
      }

      static OSLogger.actions.getter();
      sub_100168088(&unk_10057E660);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_100400790;
      LogMessage.init(stringLiteral:)();
      Logger.error(_:)();

      return (*(v22 + 8))(v24, v21);
    }
  }

  return result;
}

uint64_t sub_1001E63F8(uint64_t a1, uint64_t (*a2)(uint64_t, __n128), void *a3)
{
  v94 = a3;
  v89 = type metadata accessor for PresentationSource.Position();
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v87 = v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100168088(&qword_100576480);
  __chkstk_darwin(v7 - 8);
  v91 = v81 - v8;
  v104 = type metadata accessor for ActionMetricsBehavior();
  v103 = *(v104 - 8);
  __chkstk_darwin(v104);
  v102 = v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for InteractionContext();
  __chkstk_darwin(v10 - 8);
  v96 = v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100168088(&qword_100576488);
  __chkstk_darwin(v12 - 8);
  v100 = v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v106 = v81 - v15;
  v97 = type metadata accessor for ActionOrigin();
  v105 = *(v97 - 8);
  __chkstk_darwin(v97);
  v101 = v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v17 - 8);
  v95 = v81 - v18;
  v19 = type metadata accessor for MetricsLabel();
  v92 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for MetricsData();
  __chkstk_darwin(v22 - 8);
  v24 = v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for NativeClickMetricsAction();
  v98 = *(v99 - 8);
  __chkstk_darwin(v99);
  v107 = v81 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for OSLogger();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = v81 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_100168088(&unk_10057BB90);
  __chkstk_darwin(v30 - 8);
  v90 = v81 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v32);
  v35 = v81 - v34;
  v93 = v3;
  result = a2(a1, v33);
  if (v37)
  {
    v84 = result;
    v85 = v19;
    v86 = v24;
    dispatch thunk of ContextActionsConfiguration.presentationSource.getter();
    v38 = type metadata accessor for PresentationSource();
    v39 = *(v38 - 8);
    v40 = *(v39 + 48);
    v41 = v39 + 48;
    if (v40(v35, 1, v38) || (v81[6] = v41, v82 = v40, v83 = v38, (v42 = PresentationSource.viewController.getter()) == 0))
    {

      sub_100009104(v35, &unk_10057BB90);
    }

    else
    {
      v43 = v42;
      sub_100009104(v35, &unk_10057BB90);
      v44 = UIResponder.nearestActionRunner.getter();
      v81[5] = v45;

      if (v44)
      {
        type metadata accessor for TranscriptSelectionContextActionConfiguration(0);
        v46 = swift_dynamicCastClass();
        v81[4] = v44;
        if (v46 || (type metadata accessor for NowPlayingTranscriptSelectionContextActionConfiguration(), swift_dynamicCastClass()))
        {
          v47 = static MetricsTargetType.transcriptText.getter();
        }

        else
        {
          v47 = static MetricsTargetType.button.getter();
        }

        v81[1] = v47;
        v81[3] = v48;
        v49 = v85;
        v50 = v92;
        (*(v92 + 16))(v21, v93 + *v94, v85);
        MetricsLabel.rawValue.getter();
        (*(v50 + 8))(v21, v49);
        v51 = swift_dynamicCastClass();
        v81[2] = a1;
        if (v51)
        {
          static MetricsActionContext.selectionMenu.getter();
        }

        else
        {
          static MetricsActionContext.contextual.getter();
        }

        v52 = v107;
        v53 = v97;
        v54 = type metadata accessor for URL();
        v55 = v95;
        (*(*(v54 - 8) + 56))(v95, 1, 1, v54);
        static MetricsDataConfiguration.default.getter();
        static MetricsData.clickData(targetID:targetType:actionType:actionContext:actionResult:actionURL:fields:configuration:)();

        v119 = v113;
        sub_100009104(&v119, &unk_100574650);
        v118 = v114;
        sub_100009104(&v118, &unk_100573A90);
        v117 = v115;
        sub_100009104(&v117, &unk_100574660);
        sub_100037470(v116);

        sub_100009104(v55, &qword_100574040);
        NativeClickMetricsAction.init(_:)();
        ContextActionsConfiguration.objectGraph.getter();
        v56 = v106;
        BaseObjectGraph.injectIfAvailable<A>(_:)();

        v57 = v105;
        v58 = *(v105 + 48);
        if (v58(v56, 1, v53) != 1)
        {
          v62 = v52;
          v63 = v101;
          sub_1001E91F0(v56, v101);
LABEL_26:
          type metadata accessor for ActionRunnerOptions();
          ContextActionsConfiguration.objectGraph.getter();
          BaseObjectGraph.__allocating_init(_:)();
          v72 = v100;
          sub_1001E9140(v63, v100, &type metadata accessor for ActionOrigin);
          (*(v57 + 56))(v72, 0, 1, v53);
          ActionRunnerOptions.withActionOrigin(_:)();

          sub_100009104(v72, &qword_100576488);
          swift_getObjectType();
          v73 = v99;
          v109 = v99;
          v110 = sub_1001E91A8(&qword_100576498, 255, &type metadata accessor for NativeClickMetricsAction);
          v74 = sub_10000E680(&v108);
          v75 = v98;
          (*(v98 + 16))(v74, v62, v73);
          v76 = v103;
          v77 = v102;
          v78 = v104;
          (*(v103 + 104))(v102, enum case for ActionMetricsBehavior.fromAction(_:), v104);
          ActionRunner.perform(_:withMetrics:asPartOf:)();
          swift_unknownObjectRelease();

          (*(v76 + 8))(v77, v78);
          sub_1001E92E4(v63, &type metadata accessor for ActionOrigin);
          (*(v75 + 8))(v62, v73);
          return sub_100004590(&v108);
        }

        dispatch thunk of ContextActionsConfiguration.context.getter();
        dispatch thunk of ContextActionsConfiguration.previewModel.getter();
        v59 = v109;
        if (v109)
        {
          v60 = sub_1000044A0(&v108, v109);
          *(&v112 + 1) = v59;
          v61 = sub_10000E680(&v111);
          (*(*(v59 - 8) + 16))(v61, v60, v59);
          sub_100004590(&v108);
        }

        else
        {
          sub_100009104(&v108, &qword_100576490);
          v111 = 0u;
          v112 = 0u;
        }

        v64 = v91;
        v65 = v82;
        v66 = v90;
        dispatch thunk of ContextActionsConfiguration.presentationSource.getter();
        v67 = v65(v66, 1, v83);
        v63 = v101;
        if (!v67)
        {
          v68 = v66;
          PresentationSource.position.getter();
          v69 = v88;
          v70 = v89;
          if (!(*(v88 + 48))(v64, 1, v89))
          {
            v79 = v87;
            (*(v69 + 16))(v87, v64, v70);
            sub_100009104(v64, &qword_100576480);
            sub_100009104(v68, &unk_10057BB90);
            PresentationSource.Position.view.getter();
            v80 = v79;
            v57 = v105;
            (*(v69 + 8))(v80, v70);
LABEL_24:
            v62 = v107;
            ActionOrigin.init(context:sender:view:)();
            v71 = v106;
            if (v58(v106, 1, v53) != 1)
            {
              sub_100009104(v71, &qword_100576488);
            }

            goto LABEL_26;
          }

          sub_100009104(v64, &qword_100576480);
          v66 = v68;
        }

        sub_100009104(v66, &unk_10057BB90);
        goto LABEL_24;
      }
    }

    static OSLogger.actions.getter();
    sub_100168088(&unk_10057E660);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_100400790;
    LogMessage.init(stringLiteral:)();
    Logger.error(_:)();

    return (*(v27 + 8))(v29, v26);
  }

  return result;
}

uint64_t sub_1001E7290(uint64_t a1, uint64_t (*a2)(uint64_t, __n128), uint64_t a3)
{
  v80 = a3;
  v77 = type metadata accessor for PresentationSource.Position();
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v74 = v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100168088(&qword_100576480);
  __chkstk_darwin(v6 - 8);
  v75 = v70 - v7;
  v90 = type metadata accessor for ActionMetricsBehavior();
  v89 = *(v90 - 8);
  __chkstk_darwin(v90);
  v88 = v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for InteractionContext();
  __chkstk_darwin(v9 - 8);
  v81 = v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100168088(&qword_100576488);
  __chkstk_darwin(v11 - 8);
  v84 = v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v92 = v70 - v14;
  v82 = type metadata accessor for ActionOrigin();
  v91 = *(v82 - 8);
  __chkstk_darwin(v82);
  v87 = v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v16 - 8);
  v18 = v70 - v17;
  v19 = type metadata accessor for MetricsData();
  __chkstk_darwin(v19 - 8);
  v79 = v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for NativeClickMetricsAction();
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v83 = v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for OSLogger();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_100168088(&unk_10057BB90);
  __chkstk_darwin(v26 - 8);
  v78 = v70 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v28);
  v31 = v70 - v30;
  result = a2(a1, v29);
  if (v33)
  {
    v72 = result;
    v73 = v18;
    dispatch thunk of ContextActionsConfiguration.presentationSource.getter();
    v34 = type metadata accessor for PresentationSource();
    v35 = *(v34 - 8);
    v36 = *(v35 + 48);
    v37 = v35 + 48;
    if (v36(v31, 1, v34) || (v70[4] = v37, v71 = v36, (v38 = PresentationSource.viewController.getter()) == 0))
    {

      sub_100009104(v31, &unk_10057BB90);
    }

    else
    {
      v39 = v38;
      sub_100009104(v31, &unk_10057BB90);
      v40 = UIResponder.nearestActionRunner.getter();
      v70[2] = v41;

      v70[3] = v40;
      if (v40)
      {
        type metadata accessor for TranscriptSelectionContextActionConfiguration(0);
        v42 = swift_dynamicCastClass();
        v70[0] = v34;
        v70[1] = a1;
        if (v42)
        {
          static MetricsTargetType.transcriptText.getter();
          MetricsLabel.rawValue.getter();
          static MetricsActionContext.selectionMenu.getter();
          v43 = v73;
        }

        else
        {
          type metadata accessor for NowPlayingTranscriptSelectionContextActionConfiguration();
          if (swift_dynamicCastClass())
          {
            static MetricsTargetType.transcriptText.getter();
          }

          else
          {
            static MetricsTargetType.button.getter();
          }

          v43 = v73;
          MetricsLabel.rawValue.getter();
          static MetricsActionContext.contextual.getter();
        }

        v44 = type metadata accessor for URL();
        (*(*(v44 - 8) + 56))(v43, 1, 1, v44);
        static MetricsDataConfiguration.default.getter();
        static MetricsData.clickData(targetID:targetType:actionType:actionContext:actionResult:actionURL:fields:configuration:)();

        v104 = v98;
        sub_100009104(&v104, &unk_100574650);
        v103 = v99;
        sub_100009104(&v103, &unk_100573A90);
        v102 = v100;
        sub_100009104(&v102, &unk_100574660);
        sub_100037470(v101);

        sub_100009104(v43, &qword_100574040);
        v45 = v83;
        NativeClickMetricsAction.init(_:)();
        ContextActionsConfiguration.objectGraph.getter();
        v46 = v92;
        v47 = v82;
        BaseObjectGraph.injectIfAvailable<A>(_:)();

        v48 = v91;
        v49 = *(v91 + 48);
        if (v49(v46, 1, v47) != 1)
        {
          v51 = v87;
          sub_1001E91F0(v46, v87);
LABEL_26:
          type metadata accessor for ActionRunnerOptions();
          ContextActionsConfiguration.objectGraph.getter();
          BaseObjectGraph.__allocating_init(_:)();
          v61 = v84;
          sub_1001E9140(v51, v84, &type metadata accessor for ActionOrigin);
          (*(v48 + 56))(v61, 0, 1, v47);
          ActionRunnerOptions.withActionOrigin(_:)();

          sub_100009104(v61, &qword_100576488);
          swift_getObjectType();
          v62 = v86;
          v94 = v86;
          v95 = sub_1001E91A8(&qword_100576498, 255, &type metadata accessor for NativeClickMetricsAction);
          v63 = sub_10000E680(v93);
          v64 = v85;
          (*(v85 + 16))(v63, v45, v62);
          v65 = v89;
          v66 = v88;
          v67 = v90;
          (*(v89 + 104))(v88, enum case for ActionMetricsBehavior.fromAction(_:), v90);
          ActionRunner.perform(_:withMetrics:asPartOf:)();
          swift_unknownObjectRelease();

          (*(v65 + 8))(v66, v67);
          sub_1001E92E4(v51, &type metadata accessor for ActionOrigin);
          (*(v64 + 8))(v45, v62);
          return sub_100004590(v93);
        }

        dispatch thunk of ContextActionsConfiguration.context.getter();
        dispatch thunk of ContextActionsConfiguration.previewModel.getter();
        v50 = v94;
        v51 = v87;
        v52 = v45;
        if (v94)
        {
          v53 = sub_1000044A0(v93, v94);
          *(&v97 + 1) = v50;
          v54 = sub_10000E680(&v96);
          v55 = v53;
          v46 = v92;
          (*(*(v50 - 8) + 16))(v54, v55, v50);
          sub_100004590(v93);
        }

        else
        {
          sub_100009104(v93, &qword_100576490);
          v96 = 0u;
          v97 = 0u;
        }

        v56 = v78;
        dispatch thunk of ContextActionsConfiguration.presentationSource.getter();
        v57 = v56;
        v58 = v71(v56, 1, v70[0]);
        v45 = v52;
        if (!v58)
        {
          v59 = v75;
          PresentationSource.position.getter();
          v60 = v76;
          if (!(*(v76 + 48))(v59, 1, v77))
          {
            v68 = v74;
            (*(v60 + 16))(v74, v59, v77);
            sub_100009104(v59, &qword_100576480);
            sub_100009104(v78, &unk_10057BB90);
            PresentationSource.Position.view.getter();
            v69 = v68;
            v48 = v91;
            (*(v60 + 8))(v69, v77);
            v46 = v92;
LABEL_24:
            ActionOrigin.init(context:sender:view:)();
            if (v49(v46, 1, v47) != 1)
            {
              sub_100009104(v46, &qword_100576488);
            }

            goto LABEL_26;
          }

          sub_100009104(v59, &qword_100576480);
          v57 = v78;
        }

        sub_100009104(v57, &unk_10057BB90);
        goto LABEL_24;
      }
    }

    static OSLogger.actions.getter();
    sub_100168088(&unk_10057E660);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_100400790;
    LogMessage.init(stringLiteral:)();
    Logger.error(_:)();

    return (*(v23 + 8))(v25, v22);
  }

  return result;
}

uint64_t sub_1001E8068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t), void (*a9)(uint64_t))
{
  a8(a6);

  a9(v12);
  sub_1002344D8(a7, a3, a4);
}

uint64_t sub_1001E80E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1001E63F8(a6, sub_1001E8AE8, &OBJC_IVAR____TtC8Podcasts30OpenReferenceLinkContextAction_metricsLabel);
  v10 = swift_allocObject();
  v10[2] = a7;
  v10[3] = a3;
  v10[4] = a4;

  sub_100232294(sub_1001E9478, v10);
}

uint64_t sub_1001E81A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v12 = type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin(v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001E63F8(a6, sub_1001E85D8, &OBJC_IVAR____TtC8Podcasts36RemoveFromUpNextEpisodeContextAction_metricsLabel);
  v15 = a5[3];
  if (v15)
  {
    v16 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
    swift_beginAccess();
    sub_1001E9140(v15 + v16, v14, type metadata accessor for EpisodeContextActionDataType);
    if (swift_getEnumCaseMultiPayload())
    {
      swift_retain_n();
      sub_1001E92E4(v14, type metadata accessor for EpisodeContextActionDataType);
    }

    else
    {
      swift_retain_n();

      sub_1000044A0(a5 + 4, a5[7]);
      dispatch thunk of LibraryActionControllerProtocol.removeFromUpNext(uuids:)();
    }
  }

  else
  {
    swift_retain_n();
  }

  sub_1002344D8(a7, a3, a4);
}

uint64_t sub_1001E8364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t, uint64_t, uint64_t), void (*a11)(uint64_t))
{
  a10(a6, a8, a9);

  a11(v14);
  sub_1002344D8(a7, a3, a4);
}

uint64_t sub_1001E83EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_retain_n();
  sub_1002B9778();
  v11 = [objc_opt_self() sharedInstance];
  swift_beginAccess();
  v12 = *(a5 + 48);
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = sub_10024E918;
  v13[4] = 0;
  aBlock[4] = sub_1001E9664;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002355D0;
  aBlock[3] = &unk_1004E3D38;
  v14 = _Block_copy(aBlock);
  swift_retain_n();

  [v11 reportAConcernURLWithCompletion:v14];
  _Block_release(v14);

  sub_1002344D8(a7, a3, a4);
}

uint64_t sub_1001E8574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  sub_10031FEB0();
  sub_1002344D8(a7, a3, a4);
}

uint64_t sub_1001E85D8()
{
  type metadata accessor for ChannelContextActionConfiguration(0);
  v0 = swift_dynamicCastClass();
  if (v0)
  {
    *&v11 = *(v0 + qword_1005932C8 + 8);
LABEL_3:
    sub_1000366D8();
    return BinaryInteger.description.getter();
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v2 = result;
  ObjectType = swift_getObjectType();
  if ((*(v2 + 16))(ObjectType, v2))
  {
    v4 = sub_100398D08();

    goto LABEL_7;
  }

  v5 = swift_conformsToProtocol2();
  if (v5)
  {
    v6 = v5;
    v7 = swift_getObjectType();
    if ((*(v6 + 16))(v7, v6))
    {
      v8 = sub_1002160A8();

      if ((AdamID.isEmpty.getter() & 1) == 0)
      {
        *&v11 = v8;
        goto LABEL_3;
      }
    }
  }

  type metadata accessor for ContextActionsConfiguration();

  sub_100168088(&qword_1005764A0);
  if (swift_dynamicCast())
  {
    v9 = *(&v12 + 1);
    v10 = v13;
    sub_1000044A0(&v11, *(&v12 + 1));
    if ((*(v10 + 8))(v9, v10))
    {
      v4 = sub_100399278();

      sub_100004590(&v11);
LABEL_7:
      if ((AdamID.isEmpty.getter() & 1) == 0)
      {
        *&v11 = v4;
        goto LABEL_3;
      }

      return 0;
    }

    sub_100004590(&v11);
  }

  else
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    sub_100009104(&v11, &qword_1005764A8);
  }

  return 0;
}

uint64_t sub_1001E885C()
{
  type metadata accessor for ChannelContextActionConfiguration(0);
  v0 = swift_dynamicCastClass();
  if (v0)
  {
    *&v11 = *(v0 + qword_1005932C8 + 8);
LABEL_3:
    sub_1000366D8();
    return BinaryInteger.description.getter();
  }

  v2 = swift_conformsToProtocol2();
  if (v2)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    if ((*(v3 + 16))(ObjectType, v3))
    {
      v5 = sub_100398D08();

      goto LABEL_13;
    }
  }

  result = swift_conformsToProtocol2();
  if (result)
  {
    v6 = result;
    v7 = swift_getObjectType();
    if ((*(v6 + 16))(v7, v6))
    {
      v8 = sub_1002160A8();

      if ((AdamID.isEmpty.getter() & 1) == 0)
      {
        *&v11 = v8;
        goto LABEL_3;
      }
    }

    type metadata accessor for ContextActionsConfiguration();

    sub_100168088(&qword_1005764A0);
    if (swift_dynamicCast())
    {
      v9 = *(&v12 + 1);
      v10 = v13;
      sub_1000044A0(&v11, *(&v12 + 1));
      if ((*(v10 + 8))(v9, v10))
      {
        v5 = sub_100399278();

        sub_100004590(&v11);
LABEL_13:
        if ((AdamID.isEmpty.getter() & 1) == 0)
        {
          *&v11 = v5;
          goto LABEL_3;
        }

        return 0;
      }

      sub_100004590(&v11);
    }

    else
    {
      v13 = 0;
      v11 = 0u;
      v12 = 0u;
      sub_100009104(&v11, &qword_1005764A8);
    }

    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001E8AE8()
{
  type metadata accessor for ChannelContextActionConfiguration(0);
  v0 = swift_dynamicCastClass();
  if (v0)
  {
    *&v12 = *(v0 + qword_1005932C8 + 8);
LABEL_3:
    sub_1000366D8();
    return BinaryInteger.description.getter();
  }

  v2 = swift_conformsToProtocol2();
  if (v2 && (v3 = v2, v4 = swift_getObjectType(), (*(v3 + 16))(v4, v3)))
  {
    v5 = sub_100398D08();
  }

  else
  {
    v6 = swift_conformsToProtocol2();
    if (v6)
    {
      v7 = v6;
      ObjectType = swift_getObjectType();
      if ((*(v7 + 16))(ObjectType, v7))
      {
        v9 = sub_1002160A8();

        if ((AdamID.isEmpty.getter() & 1) == 0)
        {
          *&v12 = v9;
          goto LABEL_3;
        }
      }
    }

    type metadata accessor for ContextActionsConfiguration();

    sub_100168088(&qword_1005764A0);
    if (!swift_dynamicCast())
    {
      v14 = 0;
      v12 = 0u;
      v13 = 0u;
      sub_100009104(&v12, &qword_1005764A8);
      return 0;
    }

    v10 = *(&v13 + 1);
    v11 = v14;
    sub_1000044A0(&v12, *(&v13 + 1));
    if (!(*(v11 + 8))(v10, v11))
    {
      sub_100004590(&v12);
      return 0;
    }

    v5 = sub_100399278();

    sub_100004590(&v12);
  }

  if ((AdamID.isEmpty.getter() & 1) == 0)
  {
    *&v12 = v5;
    goto LABEL_3;
  }

  return 0;
}

uint64_t sub_1001E8D70()
{
  type metadata accessor for ChannelContextActionConfiguration(0);
  v0 = swift_dynamicCastClass();
  if (!v0)
  {
    result = swift_conformsToProtocol2();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v2 = result;
    ObjectType = swift_getObjectType();
    if ((*(v2 + 16))(ObjectType, v2))
    {
      v4 = sub_100398D08();
      v6 = v5;

      if ((AdamID.isEmpty.getter() & 1) == 0)
      {
LABEL_8:
        *&v12 = v6;
        goto LABEL_3;
      }
    }

    else
    {
      v7 = swift_conformsToProtocol2();
      if (v7)
      {
        v8 = v7;
        v9 = swift_getObjectType();
        if ((*(v8 + 16))(v9, v8))
        {
          v6 = sub_1002160A8();

          if ((AdamID.isEmpty.getter() & 1) == 0)
          {
            goto LABEL_8;
          }
        }
      }

      type metadata accessor for ContextActionsConfiguration();

      sub_100168088(&qword_1005764A0);
      if (!swift_dynamicCast())
      {
        v14 = 0;
        v12 = 0u;
        v13 = 0u;
        sub_100009104(&v12, &qword_1005764A8);
        return 0;
      }

      v10 = *(&v13 + 1);
      v11 = v14;
      sub_1000044A0(&v12, *(&v13 + 1));
      if (!(*(v11 + 8))(v10, v11))
      {
        sub_100004590(&v12);
        return 0;
      }

      v4 = sub_100399278();

      sub_100004590(&v12);
    }

    if ((AdamID.isEmpty.getter() & 1) == 0)
    {
      *&v12 = v4;
      goto LABEL_3;
    }

    return 0;
  }

  *&v12 = *(v0 + qword_1005932C8 + 8);
LABEL_3:
  sub_1000366D8();
  return BinaryInteger.description.getter();
}

double sub_1001E9000@<D0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() systemGrayColor];
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 mainBundle];
  v10._object = 0xE000000000000000;
  v6._object = 0x8000000100468170;
  v6._countAndFlagsBits = 0xD00000000000001CLL;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0;
  v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, v5, v7, v10);

  *a1 = v2;
  result = 4.58826571e199;
  *(a1 + 8) = xmmword_100403760;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_1001E9140(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001E91A8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001E91F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionOrigin();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001E9254()
{
  result = qword_1005764B0;
  if (!qword_1005764B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1005764B0);
  }

  return result;
}

uint64_t sub_1001E92E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001E9678()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_1001E9CD0()
{
  result = qword_100576550;
  if (!qword_100576550)
  {
    type metadata accessor for ReevaluateAutoDownloadsIntent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100576550);
  }

  return result;
}

uint64_t sub_1001E9D28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  return _swift_task_switch(sub_1001E9D4C, 0, 0);
}

uint64_t sub_1001E9D4C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  v3 = *(type metadata accessor for ReevaluateAutoDownloadsIntentImplementation() + 24);
  *(v0 + 112) = v3;
  v4 = type metadata accessor for ReevaluateAutoDownloadsIntent();
  *(v0 + 56) = v4;
  v5 = *(v4 - 8);
  *(v0 + 64) = v5;
  (*(v5 + 16))(v2 + v3, v1, v4);
  v6 = type metadata accessor for DebouncedAutoDownloadProcessor();
  v7 = swift_task_alloc();
  *(v0 + 72) = v7;
  *v7 = v0;
  v7[1] = sub_1001E9E70;

  return BaseObjectGraph.inject<A>(_:)(v0 + 16, v6, v6);
}

uint64_t sub_1001E9E70()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1001EA1EC;
  }

  else
  {
    v2 = sub_1001E9F84;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001E9F84()
{
  v1 = v0[4];
  v2 = v0[2];
  v0[11] = v2;
  *v1 = v2;
  v3 = type metadata accessor for DebouncedAssetRemovalProcessor();
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1001EA044;

  return BaseObjectGraph.inject<A>(_:)(v0 + 3, v3, v3);
}

uint64_t sub_1001EA044()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1001EA290;
  }

  else
  {
    v2 = sub_1001EA158;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001EA158()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  v4 = v0[4];

  (*(v2 + 8))(v3, v1);
  *(v4 + 8) = v0[3];
  v5 = v0[1];

  return v5();
}

uint64_t sub_1001EA1EC()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);

  v4 = *(v2 + 8);
  v4(v3, v1);
  v4(*(v0 + 32) + *(v0 + 112), *(v0 + 56));
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1001EA290()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 48);

  v5 = *(v3 + 8);
  v5(v4, v2);

  v5(*(v0 + 32) + *(v0 + 112), *(v0 + 56));
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1001EA344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10001C51C;

  return sub_1001E9D28(a1, a2, a3);
}

uint64_t sub_1001EA414()
{
  DebouncedAutoDownloadProcessor.reevaluate()();
  DebouncedAssetRemovalProcessor.reevaluate()();
  v1 = *(v0 + 8);

  return v1();
}

char *sub_1001EA484()
{
  v1 = type metadata accessor for EpisodeContextActionDataType.Reference(0);
  __chkstk_darwin(v1 - 8);
  v3 = v95 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for EpisodeOffer();
  v5 = *(v4 - 8);
  v99 = v4;
  v100 = v5;
  __chkstk_darwin(v4);
  v7 = v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin(v8);
  v10 = v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v95 - v12;
  __chkstk_darwin(v14);
  v16 = v95 - v15;
  v101 = v0;
  v17 = *(v0 + 16);
  if (!v17)
  {
    return _swiftEmptyArrayStorage;
  }

  v18 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
  swift_beginAccess();
  sub_1001EAFE4(v17 + v18, v13);
  sub_1001EB048(v13, v16, type metadata accessor for EpisodeContextActionDataType);
  v96 = v16;
  sub_1001EAFE4(v16, v10);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 1)
  {
    if (result)
    {
      v82 = *v10;
      v83 = *(*v10 + 16);
      if (!v83)
      {

        v24 = _swiftEmptyArrayStorage;
LABEL_83:
        sub_1001EB0B0(v96, type metadata accessor for EpisodeContextActionDataType);
        return v24;
      }

      v84 = *(v101 + 24);
      v98 = *(v100 + 16);
      v85 = *(v100 + 80);
      v95[1] = v82;
      v86 = v82 + ((v85 + 32) & ~v85);
      v97 = *(v100 + 72);
      v100 += 16;
      v101 = v84;
      v87 = (v100 - 8);
      v24 = _swiftEmptyArrayStorage;
      do
      {
        v88 = v99;
        v98(v7, v86, v99);
        EpisodeOffer.contentId.getter();
        (*v87)(v7, v88);
        EpisodeStateController<>.modernEpisodeDownloadStateMachine(for:)();
        ModernEpisodeDownloadStateMachine.currentState.getter();

        CurrentValueSubject.value.getter();

        v90 = v102;
        v89 = v103;
        v91 = v104;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_1002434B4(0, *(v24 + 2) + 1, 1, v24);
        }

        v93 = *(v24 + 2);
        v92 = *(v24 + 3);
        if (v93 >= v92 >> 1)
        {
          v24 = sub_1002434B4((v92 > 1), v93 + 1, 1, v24);
        }

        *(v24 + 2) = v93 + 1;
        v94 = &v24[24 * v93];
        *(v94 + 4) = v90;
        *(v94 + 5) = v89;
        v94[48] = v91;
        v86 += v97;
        --v83;
      }

      while (v83);
    }

    else
    {
      v50 = *v10;

      v51 = *(v50 + 16);
      v100 = v50;
      if (v51)
      {
        v52 = v50 + 40;
        v24 = _swiftEmptyArrayStorage;
        do
        {

          EpisodeStateController<>.modernEpisodeDownloadStateMachine(for:)();

          ModernEpisodeDownloadStateMachine.currentState.getter();

          CurrentValueSubject.value.getter();

          v53 = v102;
          v54 = v103;
          v55 = v104;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v24 = sub_1002434B4(0, *(v24 + 2) + 1, 1, v24);
          }

          v57 = *(v24 + 2);
          v56 = *(v24 + 3);
          if (v57 >= v56 >> 1)
          {
            v24 = sub_1002434B4((v56 > 1), v57 + 1, 1, v24);
          }

          *(v24 + 2) = v57 + 1;
          v58 = &v24[24 * v57];
          *(v58 + 4) = v53;
          *(v58 + 5) = v54;
          v58[48] = v55;
          v52 += 16;
          --v51;
        }

        while (v51);
      }

      else
      {
        v24 = _swiftEmptyArrayStorage;
      }
    }

LABEL_82:

    goto LABEL_83;
  }

  if (result == 2)
  {
    v59 = *v10;
    if (*v10 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      v60 = result;
      if (!result)
      {
        goto LABEL_81;
      }
    }

    else
    {
      v60 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v60)
      {
        goto LABEL_81;
      }
    }

    if (v60 < 1)
    {
      __break(1u);
      goto LABEL_86;
    }

    v61 = 0;
    v100 = v59 & 0xC000000000000001;
    v24 = _swiftEmptyArrayStorage;
    v62 = &selRef_defaultInstance;
    while (1)
    {
      if (v100)
      {
        v64 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v64 = *(v59 + 8 * v61 + 32);
      }

      v65 = v64;
      v66 = [v64 episodeUuid];
      if (v66)
      {
        v67 = v66;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        EpisodeStateController<>.modernEpisodeDownloadStateMachine(for:)();
      }

      else
      {
        if (![objc_opt_self() isNotEmpty:{objc_msgSend(v65, v62[306])}])
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v24 = sub_1002434B4(0, *(v24 + 2) + 1, 1, v24);
          }

          v74 = *(v24 + 2);
          v73 = *(v24 + 3);
          if (v74 >= v73 >> 1)
          {
            v24 = sub_1002434B4((v73 > 1), v74 + 1, 1, v24);
          }

          *(v24 + 2) = v74 + 1;
          v75 = &v24[24 * v74];
          *(v75 + 4) = 0;
          *(v75 + 5) = 0;
          v75[48] = 2;
          goto LABEL_48;
        }

        [v65 v62[306]];
        AdamID.init(rawValue:)();
        EpisodeStateController<>.modernEpisodeDownloadStateMachine(for:)();
      }

      ModernEpisodeDownloadStateMachine.currentState.getter();

      CurrentValueSubject.value.getter();

      v68 = v102;
      v69 = v103;
      v70 = v104;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_1002434B4(0, *(v24 + 2) + 1, 1, v24);
      }

      v72 = *(v24 + 2);
      v71 = *(v24 + 3);
      if (v72 >= v71 >> 1)
      {
        v24 = sub_1002434B4((v71 > 1), v72 + 1, 1, v24);
      }

      *(v24 + 2) = v72 + 1;
      v63 = &v24[24 * v72];
      *(v63 + 4) = v68;
      *(v63 + 5) = v69;
      v63[48] = v70;
      v62 = &selRef_defaultInstance;
LABEL_48:
      if (v60 == ++v61)
      {
        goto LABEL_82;
      }
    }
  }

  if (result != 3)
  {
    sub_1001EB048(v10, v3, type metadata accessor for EpisodeContextActionDataType.Reference);
    EpisodeStateController<>.modernEpisodeDownloadStateMachine(for:)();
    ModernEpisodeDownloadStateMachine.currentState.getter();

    CurrentValueSubject.value.getter();

    v76 = v102;
    v77 = v103;
    v78 = v104;
    v24 = sub_1002434B4(0, 1, 1, _swiftEmptyArrayStorage);
    v80 = *(v24 + 2);
    v79 = *(v24 + 3);
    if (v80 >= v79 >> 1)
    {
      v24 = sub_1002434B4((v79 > 1), v80 + 1, 1, v24);
    }

    sub_1001EB0B0(v3, type metadata accessor for EpisodeContextActionDataType.Reference);
    sub_1001EB0B0(v96, type metadata accessor for EpisodeContextActionDataType);
    *(v24 + 2) = v80 + 1;
    v81 = &v24[24 * v80];
    *(v81 + 4) = v76;
    *(v81 + 5) = v77;
    v81[48] = v78;
    return v24;
  }

  v20 = *v10;
  if (!(*v10 >> 62))
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v21)
    {
      goto LABEL_7;
    }

    goto LABEL_81;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v21 = result;
  if (!result)
  {
LABEL_81:
    v24 = _swiftEmptyArrayStorage;
    goto LABEL_82;
  }

LABEL_7:
  if (v21 >= 1)
  {
    v22 = 0;
    v23 = v20 & 0xC000000000000001;
    v24 = _swiftEmptyArrayStorage;
    v100 = v20 & 0xC000000000000001;
    do
    {
      if (v23)
      {
        v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v26 = *(v20 + 8 * v22 + 32);
      }

      v27 = v26;
      v28 = MPCPlayerResponseItem.podcastEpisode.getter();
      if (v28 && (v29 = v28, MPModelObject.uuid.getter(), v31 = v30, v29, v31))
      {
        EpisodeStateController<>.modernEpisodeDownloadStateMachine(for:)();

        ModernEpisodeDownloadStateMachine.currentState.getter();

        CurrentValueSubject.value.getter();

        v32 = v102;
        v33 = v103;
        v34 = v104;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_1002434B4(0, *(v24 + 2) + 1, 1, v24);
        }

        v36 = *(v24 + 2);
        v35 = *(v24 + 3);
        if (v36 >= v35 >> 1)
        {
          v24 = sub_1002434B4((v35 > 1), v36 + 1, 1, v24);
        }

        *(v24 + 2) = v36 + 1;
        v37 = &v24[24 * v36];
        *(v37 + 4) = v32;
        *(v37 + 5) = v33;
        v37[48] = v34;
        v23 = v100;
      }

      else
      {
        v38 = MPCPlayerResponseItem.podcastEpisode.getter();
        if (!v38 || (v39 = v38, MPModelObject.adamID.getter(), v41 = v40, v39, (v41 & 1) != 0) || (AdamID.isEmpty.getter() & 1) != 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v24 = sub_1002434B4(0, *(v24 + 2) + 1, 1, v24);
          }

          v43 = *(v24 + 2);
          v42 = *(v24 + 3);
          if (v43 >= v42 >> 1)
          {
            v24 = sub_1002434B4((v42 > 1), v43 + 1, 1, v24);
          }

          *(v24 + 2) = v43 + 1;
          v25 = &v24[24 * v43];
          *(v25 + 4) = 0;
          *(v25 + 5) = 0;
          v25[48] = 2;
        }

        else
        {
          EpisodeStateController<>.modernEpisodeDownloadStateMachine(for:)();
          ModernEpisodeDownloadStateMachine.currentState.getter();

          CurrentValueSubject.value.getter();

          v44 = v102;
          v45 = v103;
          v46 = v104;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v24 = sub_1002434B4(0, *(v24 + 2) + 1, 1, v24);
          }

          v48 = *(v24 + 2);
          v47 = *(v24 + 3);
          if (v48 >= v47 >> 1)
          {
            v24 = sub_1002434B4((v47 > 1), v48 + 1, 1, v24);
          }

          *(v24 + 2) = v48 + 1;
          v49 = &v24[24 * v48];
          *(v49 + 4) = v44;
          *(v49 + 5) = v45;
          v49[48] = v46;
          v23 = v100;
        }
      }

      ++v22;
    }

    while (v21 != v22);
    goto LABEL_82;
  }

LABEL_86:
  __break(1u);
  return result;
}

uint64_t sub_1001EAF80()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1001EAFE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EpisodeContextActionDataType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001EB048(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001EB0B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001EB110()
{
  v39 = *v0;
  v1 = type metadata accessor for OSLogger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ActionMetricsBehavior();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100168088(&unk_10057BB60);
  __chkstk_darwin(v9 - 8);
  v11 = &v33 - v10;
  v12 = sub_100168088(&unk_10057BB90);
  __chkstk_darwin(v12 - 8);
  v14 = (&v33 - v13);
  dispatch thunk of ContextActionsConfiguration.presentationSource.getter();
  v15 = type metadata accessor for PresentationSource();
  if ((*(*(v15 - 8) + 48))(v14, 1, v15))
  {
    v16 = &unk_10057BB90;
    v17 = v14;
LABEL_3:
    sub_100009104(v17, v16);
    goto LABEL_4;
  }

  v36 = v11;
  v37 = v8;
  v19 = v39;
  v38 = v6;
  v20 = PresentationSource.viewController.getter();
  sub_100009104(v14, &unk_10057BB90);
  if (!v20)
  {
    goto LABEL_4;
  }

  v21 = v20;
  v22 = UIResponder.nearestActionRunner.getter();

  if (!v22)
  {

    goto LABEL_4;
  }

  dispatch thunk of ContextActionsConfiguration.previewModel.getter();
  if (!v41)
  {

    swift_unknownObjectRelease();
    v16 = &qword_100576490;
    v17 = &v40;
    goto LABEL_3;
  }

  v34 = v21;
  v35 = v22;
  sub_1000109E4(&v40, &v42);
  v23 = *(&v43 + 1);
  v24 = v44;
  v25 = sub_1000044A0(&v42, *(&v43 + 1));
  v26 = sub_1001EDA8C(v25, v19, v23, v24);
  sub_100004590(&v42);
  if (v26)
  {
    type metadata accessor for ActionRunnerOptions();
    ContextActionsConfiguration.objectGraph.getter();
    BaseObjectGraph.__allocating_init(_:)();
    v27 = type metadata accessor for InteractionContext();
    v28 = v36;
    (*(*(v27 - 8) + 56))(v36, 1, 1, v27);
    v42 = 0u;
    v43 = 0u;
    v29 = v34;
    v30 = [v34 view];
    ActionRunnerOptions.withActionOrigin(context:sender:view:)();

    sub_100009104(&v42, &unk_1005783D0);
    sub_100009104(v28, &unk_10057BB60);
    swift_getObjectType();
    *(&v43 + 1) = type metadata accessor for Action();
    v44 = sub_100036A24();
    *&v42 = v26;
    v31 = v38;
    v32 = v37;
    (*(v38 + 104))(v37, enum case for ActionMetricsBehavior.fromAction(_:), v5);

    ActionRunner.perform(_:withMetrics:asPartOf:)();

    swift_unknownObjectRelease();

    (*(v31 + 8))(v32, v5);
    return sub_100004590(&v42);
  }

  swift_unknownObjectRelease();
LABEL_4:
  static OSLogger.actions.getter();
  sub_100168088(&unk_10057E660);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_100400790;
  LogMessage.init(stringLiteral:)();
  Logger.error(_:)();

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1001EB6E4()
{
  v1 = *v0;
  v2 = sub_100168088(&unk_10057BB90);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - v3;
  dispatch thunk of ContextActionsConfiguration.previewModel.getter();
  if (!v16)
  {
    sub_100009104(&v15, &qword_100576490);
    goto LABEL_11;
  }

  sub_1000109E4(&v15, v17);
  v5 = v18;
  v6 = v19;
  v7 = sub_1000044A0(v17, v18);
  v8 = sub_1001EDA8C(v7, v1, v5, v6);
  sub_100004590(v17);
  if (v8)
  {
    type metadata accessor for FlowAction();
    if (!swift_dynamicCastClass())
    {
      goto LABEL_10;
    }

    dispatch thunk of ContextActionsConfiguration.presentationSource.getter();
    v9 = type metadata accessor for PresentationSource();
    if ((*(*(v9 - 8) + 48))(v4, 1, v9))
    {

      sub_100009104(v4, &unk_10057BB90);
      goto LABEL_11;
    }

    v10 = PresentationSource.viewController.getter();
    sub_100009104(v4, &unk_10057BB90);
    if (!v10)
    {
LABEL_10:

      goto LABEL_11;
    }

    v11 = [v10 traitCollection];
    v12 = [v11 horizontalSizeClass];

    if (v12 == 1)
    {
      return 1;
    }
  }

LABEL_11:
  type metadata accessor for ContextActionsConfiguration();
  v14 = method lookup function for ContextActionsConfiguration();
  return v14();
}

uint64_t sub_1001EB928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = a1;
  v7 = type metadata accessor for InteractionContext();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v11 = sub_100168088(&unk_10057BB90);
  __chkstk_darwin(v11 - 8);
  v13 = &v18[-v12 - 8];
  swift_allocObject();
  sub_100010430(a2, v13, &unk_10057BB90);
  v14 = a3;
  sub_100010430(a3, v18, &qword_100576490);
  (*(v8 + 16))(v10, a4, v7);
  v15 = ContextActionsConfiguration.init(asPartOf:presentationSource:previewModel:context:)();
  (*(v8 + 8))(a4, v7);
  sub_100009104(v14, &qword_100576490);
  sub_100009104(a2, &unk_10057BB90);
  return v15;
}

uint64_t sub_1001EBB1C()
{
  ContextActionsConfiguration.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1001EBBC8()
{

  sub_100009104(v0 + qword_100593298, &qword_100576948);
  v1 = v0 + qword_1005932A0;

  return sub_100004590(v1);
}

uint64_t sub_1001EBC38()
{
  v0 = ContextActionsConfiguration.deinit();

  sub_100009104(v0 + qword_100593298, &qword_100576948);
  sub_100004590(v0 + qword_1005932A0);

  return swift_deallocClassInstance();
}

uint64_t sub_1001EBD74()
{
  ContextActionsConfiguration.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1001EBDC4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v55 = a4;
  v56 = a2;
  v8 = *v4;
  v9 = type metadata accessor for InteractionContext();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v50 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v51 = &v46 - v13;
  v14 = sub_100168088(&unk_10057BB90);
  __chkstk_darwin(v14 - 8);
  v49 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v54 = &v46 - v17;
  v18 = sub_100168088(&qword_100576938);
  __chkstk_darwin(v18 - 8);
  v20 = &v46 - v19;
  v21 = type metadata accessor for URL();
  v52 = *(v21 - 8);
  v53 = v21;
  __chkstk_darwin(v21);
  v23 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a3[3];
  v25 = a3[4];
  v26 = sub_1000044A0(a3, v24);
  if (!sub_1001EDA8C(v26, v8, v24, v25))
  {

    (*(v10 + 8))(v55, v9);
    sub_100004590(a3);
    v29 = &unk_10057BB90;
    v30 = v56;
    goto LABEL_5;
  }

  v48 = a1;
  v27 = v56;

  sub_1001EC5E0(a3, v20);
  v28 = sub_100168088(&qword_100576930);
  if ((*(*(v28 - 8) + 48))(v20, 1, v28) == 1)
  {

    (*(v10 + 8))(v55, v9);
    sub_100004590(a3);
    sub_100009104(v27, &unk_10057BB90);
    v29 = &qword_100576938;
    v30 = v20;
LABEL_5:
    sub_100009104(v30, v29);
    type metadata accessor for OtherContextActionConfiguration(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v32 = &v20[*(v28 + 48)];
  v33 = *v32;
  v34 = *(v32 + 1);
  v35 = v52;
  v36 = *(v52 + 32);
  v47 = v23;
  v37 = v20;
  v38 = v53;
  v36(v23, v37, v53);
  (*(v35 + 16))(v5 + qword_100593318, v23, v38);
  v39 = (v5 + qword_100593320);
  *v39 = v33;
  v39[1] = v34;
  v40 = v54;
  sub_100010430(v27, v54, &unk_10057BB90);
  sub_100004428(a3, v58);
  v41 = *(v10 + 16);
  v42 = v51;
  v43 = v55;
  v41(v51, v55, v9);
  sub_100010430(v40, v49, &unk_10057BB90);
  sub_100010430(v58, v57, &qword_100576490);
  v41(v50, v42, v9);
  v44 = ContextActionsConfiguration.init(asPartOf:presentationSource:previewModel:context:)();
  v45 = *(v10 + 8);
  v45(v43, v9);
  sub_100004590(a3);
  sub_100009104(v56, &unk_10057BB90);
  v45(v42, v9);
  sub_100009104(v58, &qword_100576490);
  sub_100009104(v54, &unk_10057BB90);
  (*(v52 + 8))(v47, v53);
  return v44;
}

uint64_t sub_1001EC374()
{
  v0 = ContextActionsConfiguration.deinit();
  v1 = qword_100593318;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1001EC484()
{
  v0 = ContextActionsConfiguration.deinit();
  v1 = qword_100593318;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1001EC580()
{
  ContextActionsConfiguration.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1001EC5E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100168088(&qword_10057CF40);
  __chkstk_darwin(v4 - 8);
  v6 = &v37 - v5;
  v7 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v7 - 8);
  v9 = &v37 - v8;
  v39 = type metadata accessor for URL();
  v10 = *(v39 - 8);
  __chkstk_darwin(v39);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004428(a1, v40);
  sub_100168088(&qword_1005748C0);
  sub_100168088(&qword_10057BC00);
  v13 = swift_dynamicCast();
  v38 = v12;
  if (v13)
  {
    sub_1000044A0(&v41, *(&v42 + 1));
    dispatch thunk of ClickableModel.clickAction.getter();
    sub_100004590(&v41);
    if (*(&v45 + 1))
    {
      sub_100168088(&unk_10057BB70);
      type metadata accessor for FlowAction();
      if (swift_dynamicCast())
      {
        v14 = v41;
      }

      else
      {
        v14 = 0;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v43 = 0;
    v41 = 0u;
    v42 = 0u;
    sub_100009104(&v41, &qword_100576928);
    v44 = 0u;
    v45 = 0u;
    v46 = 0;
  }

  sub_100009104(&v44, &qword_100578C20);
  v14 = 0;
LABEL_8:
  sub_100004428(a1, &v44);
  type metadata accessor for FlowAction();
  if (swift_dynamicCast())
  {
    v15 = v41;
  }

  else
  {
    v15 = 0;
  }

  if (!v14)
  {
    if (!v15)
    {
      v20 = sub_100168088(&qword_100576930);
      v21 = *(*(v20 - 8) + 56);
      v22 = a2;
      return v21(v22, 1, 1, v20);
    }
  }

  dispatch thunk of FlowAction.destination.getter();
  v16 = type metadata accessor for FlowDestination();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v6, 1, v16) == 1)
  {

    sub_100009104(v6, &qword_10057CF40);
    (*(v10 + 56))(v9, 1, 1, v39);
LABEL_18:
    v19 = a2;
    sub_100009104(v9, &qword_100574040);
LABEL_19:
    v20 = sub_100168088(&qword_100576930);
    v21 = *(*(v20 - 8) + 56);
    v22 = v19;
    return v21(v22, 1, 1, v20);
  }

  FlowDestination.pageDestinationURL.getter();
  (*(v17 + 8))(v6, v16);
  v18 = v39;
  if ((*(v10 + 48))(v9, 1, v39) == 1)
  {

    goto LABEL_18;
  }

  v24 = v38;
  (*(v10 + 32))(v38, v9, v18);
  v25 = URL.scheme.getter();
  v19 = a2;
  if (!v26)
  {
    goto LABEL_31;
  }

  if (v25 != 1886680168 || v26 != 0xE400000000000000)
  {
    v27 = v25;
    v28 = v26;
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (v27 != 0x7370747468 || v28 != 0xE500000000000000))
    {
      v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v36)
      {
        goto LABEL_28;
      }

LABEL_31:
      (*(v10 + 8))(v24, v18);

      goto LABEL_19;
    }
  }

LABEL_28:
  v29 = sub_100168088(&qword_100576930);
  v30 = v24;
  v31 = v19;
  v32 = (v19 + *(v29 + 48));
  (*(v10 + 16))(v31, v30, v18);

  v33 = Action.title.getter();
  v37 = v34;

  (*(v10 + 8))(v30, v18);
  v35 = v37;
  *v32 = v33;
  v32[1] = v35;
  return (*(*(v29 - 8) + 56))(v31, 0, 1, v29);
}

uint64_t sub_1001ECC44()
{
  v1 = qword_100593318;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
}

uint64_t sub_1001ECCC0()
{
  v0 = ContextActionsConfiguration.deinit();
  v1 = qword_100593318;
  v2 = type metadata accessor for URL();
  v3 = *(*(v2 - 8) + 8);

  v3(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1001ECDA0()
{
  v0 = type metadata accessor for PreviewingPresentationHint();
  v47 = *(v0 - 8);
  v48 = v0;
  __chkstk_darwin(v0);
  v2 = &v45 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v45 - v4;
  __chkstk_darwin(v6);
  v8 = &v45 - v7;
  v9 = type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin(v9);
  v11 = (&v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v14 = (&v45 - v13);
  __chkstk_darwin(v15);
  v17 = (&v45 - v16);
  sub_1001AD650();
  dispatch thunk of NowPlayingContextActionConfiguration.modelObject.getter();
  v18 = IMPlayerItem.init(modelObject:includeArtworkCatalog:)();
  type metadata accessor for NowPlayingTranscriptSelectionContextActionConfiguration();
  v46 = swift_dynamicCastClass();
  v19 = v18;
  if ([v19 podcastStoreId] < 1)
  {
  }

  else
  {
    v20 = [v19 episodeStoreId];

    if (v20 >= 1)
    {
      v21 = dispatch thunk of NowPlayingContextActionConfiguration.playerResponseItem.getter();
      if (v21)
      {
        v22 = v21;
        sub_100168088(&unk_100574680);
        v23 = swift_allocObject();
        *(v23 + 16) = xmmword_1004007B0;
        *(v23 + 32) = v22;
        *v17 = v23;
        swift_storeEnumTagMultiPayload();
        v25 = v47;
        v24 = v48;
        (*(v47 + 104))(v8, enum case for PreviewingPresentationHint.inferTab(_:), v48);
        type metadata accessor for EpisodeContextActionData(0);
        v26 = swift_allocObject();
        v27 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_mangedContextProvider;
        v28 = objc_opt_self();
        v29 = v22;
        *(v26 + v27) = [v28 sharedInstance];
        sub_1001EAFE4(v17, v26 + OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type);
        (*(v25 + 16))(v26 + OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_presentationHint, v8, v24);
        *(v26 + OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_hasHeaderChevron) = 1;
        if (!v46)
        {
          sub_100399908();
        }

        (*(v25 + 8))(v8, v24);
        v30 = v17;
      }

      else
      {
        sub_100168088(&unk_100574680);
        v38 = swift_allocObject();
        *(v38 + 16) = xmmword_1004007B0;
        *(v38 + 32) = v19;
        *v14 = v38;
        swift_storeEnumTagMultiPayload();
        v40 = v47;
        v39 = v48;
        (*(v47 + 104))(v5, enum case for PreviewingPresentationHint.inferTab(_:), v48);
        type metadata accessor for EpisodeContextActionData(0);
        v26 = swift_allocObject();
        v41 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_mangedContextProvider;
        v42 = objc_opt_self();
        v43 = v19;
        *(v26 + v41) = [v42 sharedInstance];
        sub_1001EAFE4(v14, v26 + OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type);
        (*(v40 + 16))(v26 + OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_presentationHint, v5, v39);
        *(v26 + OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_hasHeaderChevron) = 1;
        if (!v46)
        {
          sub_100399908();
        }

        (*(v40 + 8))(v5, v39);
        v30 = v14;
      }

      goto LABEL_14;
    }
  }

  v31 = dispatch thunk of NowPlayingContextActionConfiguration.modelObject.getter();
  v32 = MPModelObject.uuid.getter();
  v26 = v33;

  if (v26)
  {
    sub_100168088(&qword_100574690);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_100400790;
    *(v34 + 32) = v32;
    *(v34 + 40) = v26;
    *v11 = v34;
    v11[1] = 0;
    swift_storeEnumTagMultiPayload();
    v36 = v47;
    v35 = v48;
    (*(v47 + 104))(v2, enum case for PreviewingPresentationHint.inferTab(_:), v48);
    type metadata accessor for EpisodeContextActionData(0);
    v26 = swift_allocObject();
    v37 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_mangedContextProvider;
    *(v26 + v37) = [objc_opt_self() sharedInstance];
    sub_1001EAFE4(v11, v26 + OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type);
    (*(v36 + 16))(v26 + OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_presentationHint, v2, v35);
    *(v26 + OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_hasHeaderChevron) = 1;
    sub_100399908();

    (*(v36 + 8))(v2, v35);
    v30 = v11;
LABEL_14:
    sub_1001EDA30(v30);
    return v26;
  }

  return v26;
}

void sub_1001ED468()
{
  sub_1001ED530();
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_1001ED530()
{
  if (!qword_100576718[0])
  {
    type metadata accessor for KCURadar.ReportContent();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, qword_100576718);
    }
  }
}

uint64_t sub_1001ED758()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001ED800(uint64_t a1)
{
  v3 = *(a1 - 8);
  __chkstk_darwin(a1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v17 - v7;
  v10 = __chkstk_darwin(v9);
  v11 = *(v3 + 16);
  v11(&v17 - v12, v1, a1, v10);
  type metadata accessor for ChannelContextActionConfiguration(0);
  if (swift_dynamicCast())
  {
    v13 = *(v18 + qword_1005932C8 + 8);
LABEL_5:

    return v13;
  }

  (v11)(v8, v1, a1);
  type metadata accessor for CategoryContextActionConfiguration(0);
  if (swift_dynamicCast())
  {
    v13 = *(v18 + qword_100576858);
    goto LABEL_5;
  }

  (v11)(v5, v1, a1);
  type metadata accessor for PodcastContextActionConfiguration(0);
  if (!swift_dynamicCast())
  {
    return 0;
  }

  v15 = sub_1002160A8();

  v16 = AdamID.isEmpty.getter();

  if (v16)
  {
    return 0;
  }

  else
  {
    return v15;
  }
}

uint64_t sub_1001EDA30(uint64_t a1)
{
  v2 = type metadata accessor for EpisodeContextActionDataType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001EDA8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a3;
  v15[4] = a4;
  v6 = sub_10000E680(v15);
  (*(*(a3 - 8) + 16))(v6, a1, a3);
  sub_100004428(v15, v13);
  sub_100168088(&qword_1005748C0);
  type metadata accessor for FlowAction();
  if (!swift_dynamicCast())
  {
    sub_100004428(v15, v12);
    sub_100168088(&unk_10057BBF0);
    if (swift_dynamicCast())
    {
      sub_1000109E4(&v9, v13);
      sub_1000044A0(v13, v14);
      v7 = dispatch thunk of CustomPreviewActionModel.previewAction.getter();
      sub_100004590(v13);
      if (v7)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v11 = 0;
      v9 = 0u;
      v10 = 0u;
      sub_100009104(&v9, &qword_100576940);
    }

    sub_100004428(v15, v12);
    sub_100168088(&qword_10057BC00);
    if (swift_dynamicCast())
    {
      sub_1000109E4(&v9, v13);
      sub_1000044A0(v13, v14);
      dispatch thunk of ClickableModel.clickAction.getter();
      if (v12[3])
      {
        sub_100168088(&unk_10057BB70);
        type metadata accessor for Action();
        if (swift_dynamicCast())
        {
          v7 = v9;
          sub_100004590(v13);
          goto LABEL_15;
        }
      }

      else
      {
        sub_100009104(v12, &qword_100578C20);
      }

      sub_100004590(v13);
    }

    else
    {
      v11 = 0;
      v9 = 0u;
      v10 = 0u;
      sub_100009104(&v9, &qword_100576928);
    }

    v7 = 0;
    goto LABEL_15;
  }

  v7 = v12[0];
LABEL_15:
  sub_100004590(v15);
  return v7;
}

uint64_t sub_1001EDD04(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v33 = a6;
  v34 = a2;
  v32[0] = a3;
  v32[1] = a1;
  v12 = type metadata accessor for InteractionContext();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v32 - v17;
  v19 = sub_100168088(&unk_10057BB90);
  __chkstk_darwin(v19 - 8);
  v21 = v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = v32 - v23;
  v37[3] = a8;
  v37[4] = a9;
  v25 = sub_10000E680(v37);
  (*(*(a8 - 8) + 32))(v25, a5, a8);
  type metadata accessor for CategoryContextActionConfiguration(0);
  v26 = swift_allocObject();
  if (a4)
  {

    (*(v13 + 8))(v33, v12);
    sub_100009104(v34, &unk_10057BB90);
    sub_100004590(v37);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *(v26 + qword_100576858) = v32[0];
    sub_100010430(v34, v24, &unk_10057BB90);
    sub_100004428(v37, v36);
    v28 = *(v13 + 16);
    v29 = v33;
    v28(v18, v33, v12);
    sub_100010430(v24, v21, &unk_10057BB90);
    sub_100010430(v36, v35, &qword_100576490);
    v28(v15, v18, v12);
    v30 = ContextActionsConfiguration.init(asPartOf:presentationSource:previewModel:context:)();
    v31 = *(v13 + 8);
    v31(v29, v12);
    sub_100009104(v34, &unk_10057BB90);
    v31(v18, v12);
    sub_100009104(v36, &qword_100576490);
    sub_100009104(v24, &unk_10057BB90);
    sub_100004590(v37);
    return v30;
  }
}

uint64_t sub_1001EE144(uint64_t a1, uint64_t a2, void **a3, uint64_t a4)
{
  if (a2)
  {
    sub_100168088(&qword_100574690);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_100400790;
    *(v8 + 32) = a1;
    *(v8 + 40) = a2;
    objc_allocWithZone(type metadata accessor for NetworkMediaManifest());
    v9 = 0;
    v10 = v8;
    v11 = 0;
  }

  else
  {
    objc_allocWithZone(type metadata accessor for NetworkMediaManifest());
    v10 = _swiftEmptyArrayStorage;
    v9 = a1;
    v11 = a1;
  }

  v12 = sub_1001EE5D4(v9, 0, v10, v11, 0, a3, a4);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v12;
}

uint64_t sub_1001EE5D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void **a6, uint64_t a7)
{
  v49 = a6;
  v50 = a7;
  v46 = a5;
  v41 = a4;
  v47 = a2;
  v48 = a3;
  v40 = a1;
  v45 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v8 = *(v45 - 8);
  __chkstk_darwin(v45);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v11);
  v12 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v12 - 8);
  *&v7[OBJC_IVAR___MTNetworkMediaManifest_forwardItemCount] = 1;
  *&v7[OBJC_IVAR___MTNetworkMediaManifest_episodeFetchLimit] = 5;
  v44 = OBJC_IVAR___MTNetworkMediaManifest_manifestWorkQueue;
  v13 = sub_100009F1C(0, &qword_1005729D0);
  v42 = " info, fetching items";
  v43 = v13;
  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  sub_1001F6DC8(&qword_1005743B0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100168088(&unk_1005729E0);
  sub_100009FAC(&qword_1005743C0, &unk_1005729E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v8 + 104))(v10, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v45);
  v14 = v46;
  *&v7[v44] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v15 = OBJC_IVAR___MTNetworkMediaManifest_mediaRequestController;
  *&v7[v15] = [objc_allocWithZone(type metadata accessor for MediaRequestController()) init];
  v16 = OBJC_IVAR___MTNetworkMediaManifest_initialIds;
  *&v7[OBJC_IVAR___MTNetworkMediaManifest_initialIds] = 0;
  v7[OBJC_IVAR___MTNetworkMediaManifest_hasOnlyPaidEpisodesWithoutSubscription] = 0;
  v7[OBJC_IVAR___MTNetworkMediaManifest_refreshInProgress] = 0;
  *&v7[OBJC_IVAR___MTNetworkMediaManifest_inProgressRefreshHandlers] = _swiftEmptyArrayStorage;
  if (v14)
  {

    sub_100168088(&qword_100574690);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_100400790;
    *(v17 + 32) = v41;
    *(v17 + 40) = v14;
    *&v7[v16] = v17;

    v18 = &enum case for MediaRequest.ContentType.podcastStation(_:);
  }

  else
  {
    v19 = v40;
    v20 = v48;
    if (v48)
    {

      *&v7[v16] = v20;

      v18 = &enum case for MediaRequest.ContentType.podcastEpisode(_:);
    }

    else
    {
      if (v47)
      {
        v21 = v47;
        sub_100168088(&qword_100574690);
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_100400790;
        *(v22 + 32) = v19;
        *(v22 + 40) = v21;
        *&v7[v16] = v22;
      }

      v18 = &enum case for MediaRequest.ContentType.podcast(_:);
    }
  }

  v23 = OBJC_IVAR___MTNetworkMediaManifest_contentType;
  v24 = *v18;
  v25 = type metadata accessor for MediaRequest.ContentType();
  (*(*(v25 - 8) + 104))(&v7[v23], v24, v25);
  v26 = type metadata accessor for NetworkMediaManifest();
  v61.receiver = v7;
  v61.super_class = v26;
  v27 = objc_msgSendSuper2(&v61, "init");
  sub_100009F1C(0, &qword_10057A130);
  v28 = v27;
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v28 setItems:isa];

  if (v50)
  {
    aBlock = v49;
    v56 = v50;
    v53 = 10;
    v54 = 0xE100000000000000;
    v51 = 28252;
    v52 = 0xE200000000000000;
    sub_10019FA64();
    v30 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v32 = v31;
  }

  else
  {
    v32 = 0;
    v30 = v49;
  }

  v33 = *&v28[OBJC_IVAR___MTNetworkMediaManifest_manifestWorkQueue];
  v34 = swift_allocObject();
  v34[2] = v28;
  v34[3] = v30;
  v34[4] = v32;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1001F6FA8;
  *(v35 + 24) = v34;
  v59 = sub_10002D7F8;
  v60 = v35;
  aBlock = _NSConcreteStackBlock;
  v56 = 1107296256;
  v57 = sub_10002D904;
  v58 = &unk_1004E4428;
  v36 = _Block_copy(&aBlock);
  v37 = v28;
  v38 = v33;

  dispatch_sync(v38, v36);

  _Block_release(v36);
  LOBYTE(v38) = swift_isEscapingClosureAtFileLocation();

  if ((v38 & 1) == 0)
  {
    return v37;
  }

  __break(1u);
  return result;
}

void sub_1001EEC48(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v50 = a2;
  v51 = a3;
  v4 = type metadata accessor for MediaRequest.ContentType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v42 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v45 = &v41 - v8;
  __chkstk_darwin(v9);
  v49 = &v41 - v10;
  __chkstk_darwin(v11);
  v13 = &v41 - v12;
  __chkstk_darwin(v14);
  v16 = &v41 - v15;
  v17 = OBJC_IVAR___MTNetworkMediaManifest_contentType;
  swift_beginAccess();
  v18 = v5[2];
  v52 = a1;
  v46 = v17;
  v44 = v18;
  v18(v16, a1 + v17, v4);
  v47 = v5[13];
  v48 = v5 + 13;
  v47(v13, enum case for MediaRequest.ContentType.podcastStation(_:), v4);
  sub_1001F6DC8(&qword_100576A00, &type metadata accessor for MediaRequest.ContentType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v53 == v55 && v54 == v56)
  {
    v19 = 1;
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v43 = v5;
  v20 = v5[1];
  v20(v13, v4);
  v20(v16, v4);

  if (v19)
  {
    sub_1001F2190(v50, v51);
    return;
  }

  v21 = v52;
  v22 = v46;
  v44(v49, v52 + v46, v4);
  v23 = v45;
  v47(v45, enum case for MediaRequest.ContentType.podcastEpisode(_:), v4);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v53 == v55 && v54 == v56)
  {
    v20(v23, v4);
    v20(v49, v4);
  }

  else
  {
    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v20(v23, v4);
    v20(v49, v4);

    if ((v24 & 1) == 0)
    {
      sub_1001F2BCC(v50, v51);
      return;
    }
  }

  v25 = v21;
  v26 = sub_1001F260C(v50, v51);
  if (v26 >> 62)
  {
    v39 = v26;
    v40 = _CocoaArrayWrapper.endIndex.getter();
    v26 = v39;
    v27 = v43;
    if (!v40)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v27 = v43;
    if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_31:

      return;
    }
  }

  if ((v26 & 0xC000000000000001) != 0)
  {
    v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_30:
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    v28 = *(v26 + 32);
  }

  v29 = v28;

  v30 = dispatch thunk of ServerPodcastEpisode.relationships.getter();

  if (!v30)
  {
    return;
  }

  v31 = PodcastEpisodeRelationships.podcast.getter();

  if (!v31)
  {
    return;
  }

  v25 = PodcastRelationshipContainer.data.getter();

  if (v25 >> 62)
  {
    goto LABEL_30;
  }

  if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_31;
  }

LABEL_20:
  if ((v25 & 0xC000000000000001) != 0)
  {
    v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_23;
  }

  if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v32 = *(v25 + 32);
LABEL_23:
    v33 = v32;

    v34 = ServerPodcastBase.id.getter();
    v36 = v35;

    v37 = v42;
    v47(v42, enum case for MediaRequest.ContentType.podcast(_:), v4);
    swift_beginAccess();
    (v27[5])(v21 + v22, v37, v4);
    swift_endAccess();
    sub_100168088(&qword_100574690);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_100400790;
    *(v38 + 32) = v34;
    *(v38 + 40) = v36;
    *(v21 + OBJC_IVAR___MTNetworkMediaManifest_initialIds) = v38;
    goto LABEL_31;
  }

  __break(1u);
  __break(1u);
}

id sub_1001EF2E4(uint64_t (*a1)(id), uint64_t a2)
{
  result = [v2 items];
  if (result)
  {
    v6 = result;
    sub_100009F1C(0, &qword_10057A130);
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v7 >> 62)
    {
      v8 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v8)
    {
      if (a1)
      {
        return a1(result);
      }
    }

    else
    {
      sub_100009F1C(0, &qword_1005748A0);
      v9 = static OS_os_log.default.getter();
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      v10 = swift_allocObject();
      *(v10 + 16) = a1;
      *(v10 + 24) = a2;
      sub_100013CB4(a1);
      sub_1001F62C0(sub_1001C1294, v10);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1001EF530(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char *a6, unint64_t a7, char a8, void (*a9)(void, void, __n128), uint64_t a10)
{
  v261 = a5;
  v267 = a4;
  v245 = a3;
  v14 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v14 - 8);
  v241 = &v206 - v15;
  v16 = sub_100168088(&unk_100581300);
  __chkstk_darwin(v16 - 8);
  v240 = &v206 - v17;
  v18 = sub_100168088(&qword_100576A08);
  __chkstk_darwin(v18 - 8);
  v239 = &v206 - v19;
  v20 = sub_100168088(&unk_100581310);
  __chkstk_darwin(v20 - 8);
  v251 = &v206 - v21;
  v22 = sub_100168088(&unk_100581320);
  __chkstk_darwin(v22 - 8);
  v250 = &v206 - v23;
  v243 = type metadata accessor for MediaRequest.Params();
  v242 = *(v243 - 8);
  __chkstk_darwin(v243);
  v252 = &v206 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v253 = type metadata accessor for MediaRequest.IncludeExtendTypes();
  v257 = *(v253 - 8);
  __chkstk_darwin(v253);
  v235 = &v206 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v237 = &v206 - v27;
  v28 = type metadata accessor for MediaRequest.RequestType();
  v263 = *(v28 - 8);
  v264 = v28;
  __chkstk_darwin(v28);
  v259 = &v206 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v262 = &v206 - v31;
  v32 = sub_100168088(&qword_100576A10);
  __chkstk_darwin(v32 - 8);
  v249 = &v206 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v260 = &v206 - v35;
  v266 = type metadata accessor for MediaRequest.ContentType();
  v36 = *(v266 - 8);
  __chkstk_darwin(v266);
  __chkstk_darwin(v37);
  __chkstk_darwin(v38);
  v238 = &v206 - v39;
  __chkstk_darwin(v40);
  __chkstk_darwin(v41);
  v248 = &v206 - v42;
  __chkstk_darwin(v43);
  v45 = &v206 - v44;
  __chkstk_darwin(v46);
  v48 = &v206 - v47;
  v55 = __chkstk_darwin(v49);
  v57 = &v206 - v56;
  if (!v52 || *(a2 + 16) > v52)
  {
    if (a7 >> 62)
    {
      v226 = v52;
      v234 = v53;
      v223 = v54;
      v222 = v50;
      v233 = v51;
      v58 = _CocoaArrayWrapper.endIndex.getter();
      v51 = v233;
      v50 = v222;
      v54 = v223;
      v53 = v234;
      v52 = v226;
    }

    else
    {
      v58 = *((a7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v58 < v261)
    {
      v233 = v51;
      v222 = v50;
      v223 = v54;
      v234 = v53;
      v226 = v52;
      v220 = a9;
      v221 = a10;
      v232 = swift_allocObject();
      *(v232 + 16) = a7;
      v231 = swift_allocObject();
      *(v231 + 16) = a8 & 1;
      v59 = swift_allocObject();
      v230 = v59;
      *(v59 + 16) = _swiftEmptyArrayStorage;
      v236 = (v59 + 16);
      v225 = a2;
      v60 = *(a2 + 16);
      v229 = a6;
      if (!v60)
      {

        goto LABEL_27;
      }

      (*(v36 + 104))(v57, enum case for MediaRequest.ContentType.podcastEpisode(_:), v266);
      sub_1001F6DC8(&qword_100576A00, &type metadata accessor for MediaRequest.ContentType);

      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v61 = v271;
      v62 = v269;
      if (v270 == v268 && v271 == v269)
      {
        (*(v36 + 8))(v57, v266);

        goto LABEL_14;
      }

      v63 = _stringCompareWithSmolCheck(_:_:expecting:)();
      (*(v36 + 8))(v57, v266);

      if (v63)
      {
LABEL_14:
        v64 = v226;
        v65 = &a6[v226];
        if (__OFADD__(v226, a6))
        {
          __break(1u);
        }

        else
        {
          if (v60 < v65)
          {
            v65 = v60;
          }

          if (v65 >= v226)
          {
            if ((v226 & 0x8000000000000000) == 0)
            {
              if (v60 == v65 - v226)
              {

LABEL_21:
                sub_1001C3B80(v66);
                goto LABEL_27;
              }

LABEL_89:
              sub_100274FDC(v225, v225 + 32, v64, (2 * v65) | 1);
              goto LABEL_21;
            }

LABEL_88:
            __break(1u);
            goto LABEL_89;
          }
        }

        __break(1u);
        goto LABEL_88;
      }

      if (v60 <= v226)
      {
        __break(1u);
      }

      else
      {
        v67 = v225 + 16 * v226;
        v60 = *(v67 + 32);
        v62 = *(v67 + 40);
        v68 = v236;
        v61 = *v236;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v68 = v61;
        if (isUniquelyReferenced_nonNull_native)
        {
LABEL_24:
          v71 = *(v61 + 2);
          v70 = *(v61 + 3);
          if (v71 >= v70 >> 1)
          {
            v61 = sub_100243134((v70 > 1), v71 + 1, 1, v61);
          }

          *(v61 + 2) = v71 + 1;
          v72 = &v61[16 * v71];
          *(v72 + 4) = v60;
          *(v72 + 5) = v62;
          *v236 = v61;
LABEL_27:
          v73 = _MTLogCategoryPlayback();
          if (!v73)
          {
            __break(1u);
            return;
          }

          v74 = v73;
          static os_log_type_t.default.getter();
          sub_100168088(&unk_100574670);
          v75 = swift_allocObject();
          v258 = xmmword_100400790;
          *(v75 + 16) = xmmword_100400790;
          v76 = *v236;
          *(v75 + 56) = sub_100168088(&qword_10057C9C0);
          *(v75 + 64) = sub_100009FAC(&qword_100576A18, &qword_10057C9C0);
          *(v75 + 32) = v76;

          os_log(_:dso:log:type:_:)();

          sub_100009F1C(0, &qword_10057AB20);
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v78 = [ObjCClassFromMetadata sharedInstance];
          v79 = [v78 activeDsid];

          if (v79)
          {
          }

          v227 = v79;
          v80 = enum case for MediaRequest.ContentType.podcastEpisode(_:);
          v81 = *(v36 + 104);
          v247 = v36 + 104;
          v265 = v81;
          v81(v48, enum case for MediaRequest.ContentType.podcastEpisode(_:), v266);
          v82 = sub_1001F6DC8(&qword_100576A00, &type metadata accessor for MediaRequest.ContentType);
          dispatch thunk of RawRepresentable.rawValue.getter();
          v254 = v82;
          dispatch thunk of RawRepresentable.rawValue.getter();
          if (v270 == v268 && v271 == v269)
          {
            v83 = 1;
          }

          else
          {
            v83 = _stringCompareWithSmolCheck(_:_:expecting:)();
          }

          v84 = v229;
          v85 = v48;
          v86 = v266;
          v256 = *(v36 + 8);
          v256(v85, v266);

          v219 = ObjCClassFromMetadata;
          v255 = v36 + 8;
          if (!v227 || (v83 & 1) != 0)
          {
            v91 = type metadata accessor for MediaRequest.ViewType();
            (*(*(v91 - 8) + 56))(v260, 1, 1, v91);
          }

          else
          {
            v87 = enum case for MediaRequest.ViewType.nextEpisodes(_:);
            v88 = type metadata accessor for MediaRequest.ViewType();
            v89 = *(v88 - 8);
            v90 = v260;
            (*(v89 + 104))(v260, v87, v88);
            (*(v89 + 56))(v90, 0, 1, v88);
          }

          LODWORD(v246) = enum case for MediaRequest.ContentType.podcast(_:);
          v92 = v265;
          (v265)(v45);
          dispatch thunk of RawRepresentable.rawValue.getter();
          dispatch thunk of RawRepresentable.rawValue.getter();
          if (v270 == v268 && v271 == v269)
          {
            v256(v45, v86);
          }

          else
          {
            v93 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v256(v45, v86);

            LODWORD(v224) = 0;
            if ((v93 & 1) == 0)
            {
LABEL_43:
              v92(v248, v80, v86);
              dispatch thunk of RawRepresentable.rawValue.getter();
              dispatch thunk of RawRepresentable.rawValue.getter();
              v217 = v80;
              if (v270 == v268 && v271 == v269)
              {
                v256(v248, v86);

                v94 = &enum case for MediaRequest.RequestType.catalog(_:);
              }

              else
              {
                v95 = _stringCompareWithSmolCheck(_:_:expecting:)();
                v256(v248, v86);

                if ((v95 | v224))
                {
                  v94 = &enum case for MediaRequest.RequestType.catalog(_:);
                }

                else
                {
                  v94 = &enum case for MediaRequest.RequestType.library(_:);
                }
              }

              v96 = v246;
              v97 = *(v263 + 104);
              v97(v262, *v94, v264);
              v265(v233, v96, v86);
              dispatch thunk of RawRepresentable.rawValue.getter();
              dispatch thunk of RawRepresentable.rawValue.getter();
              if (v270 == v268 && v271 == v269)
              {
                v256(v233, v86);
              }

              else
              {
                v98 = _stringCompareWithSmolCheck(_:_:expecting:)();
                v256(v233, v86);

                if ((v98 & 1) == 0)
                {
                  goto LABEL_55;
                }
              }

              v99 = v259;
              v100 = v264;
              v97(v259, enum case for MediaRequest.RequestType.library(_:), v264);
              v101 = static MediaRequest.RequestType.== infix(_:_:)();
              (*(v263 + 8))(v99, v100);
              if (v101)
              {
                v102 = 0;
LABEL_56:
                v103 = v238;
                v104 = v265;
                v265(v238, v246, v86);
                dispatch thunk of RawRepresentable.rawValue.getter();
                dispatch thunk of RawRepresentable.rawValue.getter();
                v105 = v256;
                v228 = v36;
                LODWORD(v236) = v102;
                v233 = v84;
                if (v270 == v268 && v271 == v269)
                {
                  v256(v103, v86);
                }

                else
                {
                  v106 = _stringCompareWithSmolCheck(_:_:expecting:)();
                  v105(v103, v86);

                  if ((v106 & 1) == 0)
                  {
                    v224 = sub_100168088(&qword_100576A20);
                    v137 = v257;
                    v138 = *(v257 + 72);
                    v215 = *(v257 + 80);
                    v139 = (v215 + 32) & ~v215;
                    v140 = swift_allocObject();
                    v248 = v140;
                    *(v140 + 16) = v258;
                    v214 = *(v137 + 104);
                    v218 = v137 + 104;
                    v141 = v104;
                    v214(v140 + v139, enum case for MediaRequest.IncludeExtendTypes.playbackPosition(_:), v253);
                    v212 = sub_100168088(&qword_100576A28);
                    v142 = sub_100168088(&unk_100572EE0);
                    v143 = *(v142 - 8);
                    v216 = *(v143 + 72);
                    v211 = *(v143 + 80);
                    v144 = (v211 + 32) & ~v211;
                    v238 = 2 * v216;
                    v210 = v144;
                    v145 = swift_allocObject();
                    v209 = v145;
                    *(v145 + 16) = xmmword_1004007E0;
                    v146 = v145 + v144;
                    *&v206 = *(v142 + 48);
                    v207 = v142;
                    (v141)(v145 + v144, enum case for MediaRequest.ContentType.podcastChannel(_:), v86);
                    v213 = v138;
                    v147 = v139;
                    v148 = swift_allocObject();
                    *(v148 + 16) = v258;
                    v149 = v148 + v139;
                    v150 = v253;
                    v151 = v214;
                    v214(v149, enum case for MediaRequest.IncludeExtendTypes.isSubscribed(_:), v253);
                    v208 = v146;
                    *(v146 + v206) = v148;
                    v152 = v146 + v216;
                    *&v206 = *(v142 + 48);
                    (v141)(v146 + v216, v246, v266);
                    v153 = swift_allocObject();
                    *(v153 + 16) = xmmword_1004007C0;
                    v154 = v147;
                    v155 = v151;
                    v151(v153 + v147, enum case for MediaRequest.IncludeExtendTypes.feedUrl(_:), v150);
                    v151(v153 + v147 + v213, enum case for MediaRequest.IncludeExtendTypes.editorialArtwork(_:), v150);
                    *(v152 + v206) = v153;
                    v156 = v208 + v238;
                    v157 = v207;
                    v238 = *(v207 + 48);
                    v265(v156, v217, v266);
                    v158 = swift_allocObject();
                    *(v158 + 16) = v258;
                    v155(v158 + v147, enum case for MediaRequest.IncludeExtendTypes.firstAvailableDates(_:), v150);
                    *(v156 + v238) = v158;
                    v238 = sub_10016A688(v209);
                    swift_setDeallocating();
                    swift_arrayDestroy();
                    swift_deallocClassInstance();
                    v159 = v210;
                    v160 = swift_allocObject();
                    *(v160 + 16) = v258;
                    v161 = v160 + v159;
                    v162 = *(v157 + 48);
                    v163 = v266;
                    v265(v161, v246, v266);
                    v131 = v150;
                    v130 = v163;
                    v164 = swift_allocObject();
                    *(v164 + 16) = v258;
                    v214(v164 + v154, enum case for MediaRequest.IncludeExtendTypes.channel(_:), v131);
                    *(v161 + v162) = v164;
                    v246 = sub_10016A688(v160);
                    swift_setDeallocating();
                    v165 = v161;
                    v127 = v248;
                    sub_100009104(v165, &unk_100572EE0);
                    swift_deallocClassInstance();
                    goto LABEL_65;
                  }
                }

                v107 = sub_100168088(&qword_100576A28);
                v108 = sub_100168088(&unk_100572EE0);
                v211 = v108;
                v109 = *(v108 - 8);
                v218 = *(v109 + 72);
                v110 = (*(v109 + 80) + 32) & ~*(v109 + 80);
                v207 = *(v109 + 80);
                v209 = v107;
                v111 = swift_allocObject();
                v206 = xmmword_1004007C0;
                v212 = v111;
                *(v111 + 16) = xmmword_1004007C0;
                v208 = v110;
                v248 = (v111 + v110);
                v238 = *(v108 + 48);
                v104();
                v112 = sub_100168088(&qword_100576A20);
                v113 = v257;
                v114 = *(v257 + 72);
                v115 = *(v257 + 80);
                v116 = (v115 + 32) & ~v115;
                v117 = swift_allocObject();
                *(v117 + 16) = v258;
                v118 = *(v113 + 104);
                v119 = v253;
                v118(v117 + v116, enum case for MediaRequest.IncludeExtendTypes.isSubscribed(_:), v253);
                v120 = v248;
                *&v248[v238] = v117;
                v210 = &v120[v218];
                v121 = v211;
                v238 = *(v211 + 48);
                (v265)();
                v216 = v114;
                v213 = v115;
                v122 = v116;
                v214 = v112;
                v123 = swift_allocObject();
                *(v123 + 16) = v258;
                v215 = v118;
                v118(v123 + v116, enum case for MediaRequest.IncludeExtendTypes.editorialArtwork(_:), v119);
                *(v210 + v238) = v123;
                v238 = sub_10016A688(v212);
                swift_setDeallocating();
                swift_arrayDestroy();
                swift_deallocClassInstance();
                if (v224)
                {
                  v124 = v216;
                  v125 = swift_allocObject();
                  *(v125 + 16) = v206;
                  v126 = v125 + v116;
                  v127 = v125;
                  v128 = v253;
                  v129 = v215;
                  (v215)(v125 + v116, enum case for MediaRequest.IncludeExtendTypes.playbackPosition(_:), v253);
                  v129(v126 + v124, enum case for MediaRequest.IncludeExtendTypes.channel(_:), v128);
                  v246 = sub_10016A688(_swiftEmptyArrayStorage);
                  v130 = v266;
                }

                else
                {
                  v132 = v208;
                  v133 = swift_allocObject();
                  *(v133 + 16) = v258;
                  v134 = v133 + v132;
                  v135 = *(v121 + 48);
                  v130 = v266;
                  v265(v134, v246, v266);
                  v136 = swift_allocObject();
                  *(v136 + 16) = v258;
                  v128 = v253;
                  (v215)(v136 + v122, enum case for MediaRequest.IncludeExtendTypes.channel(_:), v253);
                  *(v134 + v135) = v136;
                  v246 = sub_10016A688(v133);
                  swift_setDeallocating();
                  sub_100009104(v134, &unk_100572EE0);
                  swift_deallocClassInstance();
                  v127 = _swiftEmptyArrayStorage;
                }

                v131 = v128;
LABEL_65:
                v166 = v228;
                if (v227)
                {
                  v167 = v265;
                  if (static Podcasts.areTranscriptsSupportedOnPlatform.getter())
                  {
LABEL_67:
                    v167(v222, v217, v130);
                    dispatch thunk of RawRepresentable.rawValue.getter();
                    dispatch thunk of RawRepresentable.rawValue.getter();
                    if (v270 == v268 && v271 == v269)
                    {
                      v256(v222, v130);

LABEL_77:
                      v173 = v235;
                      (*(v257 + 104))(v235, enum case for MediaRequest.IncludeExtendTypes.transcripts(_:), v131);
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v127 = sub_1002437AC(0, *(v127 + 2) + 1, 1, v127);
                      }

                      v175 = *(v127 + 2);
                      v174 = *(v127 + 3);
                      if (v175 >= v174 >> 1)
                      {
                        v127 = sub_1002437AC(v174 > 1, v175 + 1, 1, v127);
                      }

                      v248 = v127;
                      *(v127 + 2) = v175 + 1;
                      (*(v257 + 32))(&v127[((*(v257 + 80) + 32) & ~*(v257 + 80)) + *(v257 + 72) * v175], v173, v131);
                      goto LABEL_83;
                    }

                    v171 = _stringCompareWithSmolCheck(_:_:expecting:)();
                    v172 = v256;
                    v256(v222, v130);

                    if (v171)
                    {
                      goto LABEL_77;
                    }

                    v176 = v234;
                    v265(v234, v217, v130);
                    sub_100168088(&qword_100576A20);
                    v248 = v127;
                    v177 = v257;
                    v178 = (*(v257 + 80) + 32) & ~*(v257 + 80);
                    v179 = swift_allocObject();
                    *(v179 + 16) = v258;
                    (*(v177 + 104))(v179 + v178, enum case for MediaRequest.IncludeExtendTypes.transcripts(_:), v131);
                    v180 = v246;
                    v181 = swift_isUniquelyReferenced_nonNull_native();
                    v270 = v180;
                    sub_10025EBA4(v179, v176, v181);
                    v172(v176, v130);
                    v246 = v270;
LABEL_83:
                    (*(v263 + 16))(v259, v262, v264);
                    v182 = *(v166 + 16);
                    v257 = v166 + 16;
                    v265 = v182;
                    v183 = v250;
                    v182(v250, v267, v130);
                    (*(v166 + 56))(v183, 0, 1, v130);
                    sub_100010430(v260, v249, &qword_100576A10);
                    v184 = type metadata accessor for MediaRequest.Relationship();
                    (*(*(v184 - 8) + 56))(v251, 1, 1, v184);
                    sub_100168088(&qword_100576A30);
                    v185 = type metadata accessor for MediaRequest.WithTypes();
                    v186 = *(v185 - 8);
                    v187 = (*(v186 + 80) + 32) & ~*(v186 + 80);
                    v188 = swift_allocObject();
                    *(v188 + 16) = v258;
                    (*(v186 + 104))(v188 + v187, enum case for MediaRequest.WithTypes.newsPodcasts(_:), v185);
                    v255 = *(v230 + 16);
                    v189 = type metadata accessor for MediaRequest.URLFragment();
                    (*(*(v189 - 8) + 56))(v239, 1, 1, v189);
                    v190 = type metadata accessor for MediaRequest.PageName();
                    (*(*(v190 - 8) + 56))(v240, 1, 1, v190);
                    v191 = type metadata accessor for URL();
                    (*(*(v191 - 8) + 56))(v241, 1, 1, v191);

                    *&v258 = sub_100359D78(_swiftEmptyArrayStorage);
                    v256 = sub_100359D78(_swiftEmptyArrayStorage);
                    sub_100359F60(_swiftEmptyArrayStorage);
                    sub_10035A148(_swiftEmptyArrayStorage);
                    sub_10035A24C(_swiftEmptyArrayStorage);
                    sub_10035A434(_swiftEmptyArrayStorage);
                    sub_10035A61C(_swiftEmptyArrayStorage);
                    sub_10035A804(_swiftEmptyArrayStorage);
                    MediaRequest.Params.init(requestType:requestContentType:viewType:directFetch:relationshipIncludes:relationshipRelates:relationshipLimit:include:omit:typedIncludes:typedExtends:typedAssociations:fields:typedFields:withTypes:displayKinds:identifiers:fragment:limit:filters:meta:offset:pageName:requestAllPages:hostUrl:countryCode:isImplicitActionRequest:searchTerm:queryContentTypes:triggerBy:includeEntitlementsOverride:languageTag:)();
                    v192 = [v219 sharedInstance];
                    v259 = [v192 activeAccount];

                    v265(v234, v267, v266);
                    v193 = v228;
                    v194 = (*(v228 + 80) + 88) & ~*(v228 + 80);
                    v195 = (v223 + v194 + 7) & 0xFFFFFFFFFFFFFFF8;
                    v196 = swift_allocObject();
                    v197 = v220;
                    v198 = v221;
                    *(v196 + 2) = v220;
                    *(v196 + 3) = v198;
                    v199 = v244;
                    *(v196 + 4) = v231;
                    *(v196 + 5) = v199;
                    v200 = v226;
                    *(v196 + 6) = v232;
                    *(v196 + 7) = v200;
                    v201 = v225;
                    *(v196 + 8) = v230;
                    *(v196 + 9) = v201;
                    v202 = v245;
                    *(v196 + 10) = v245;
                    (*(v193 + 32))(&v196[v194], v234, v266);
                    *&v196[v195] = v261;
                    *&v196[(v195 + 15) & 0xFFFFFFFFFFFFFFF8] = v229;

                    sub_100013CB4(v197);

                    v203 = v202;
                    v204 = v252;
                    v205 = v259;
                    dispatch thunk of MediaRequestController.performRecursivelyWithParsing(params:account:callback:)();

                    (*(v242 + 8))(v204, v243);
                    (*(v263 + 8))(v262, v264);
                    sub_100009104(v260, &qword_100576A10);

                    return;
                  }
                }

                else
                {
                  (*(v257 + 104))(v237, enum case for MediaRequest.IncludeExtendTypes.episodes(_:), v131);
                  v168 = swift_isUniquelyReferenced_nonNull_native();
                  v167 = v265;
                  if ((v168 & 1) == 0)
                  {
                    v127 = sub_1002437AC(0, *(v127 + 2) + 1, 1, v127);
                  }

                  v170 = *(v127 + 2);
                  v169 = *(v127 + 3);
                  if (v170 >= v169 >> 1)
                  {
                    v127 = sub_1002437AC(v169 > 1, v170 + 1, 1, v127);
                  }

                  *(v127 + 2) = v170 + 1;
                  (*(v257 + 32))(&v127[((*(v257 + 80) + 32) & ~*(v257 + 80)) + *(v257 + 72) * v170], v237, v131);
                  if (static Podcasts.areTranscriptsSupportedOnPlatform.getter())
                  {
                    goto LABEL_67;
                  }
                }

                v248 = v127;
                goto LABEL_83;
              }

LABEL_55:
              v84 = 0;
              v102 = 1;
              goto LABEL_56;
            }
          }

          LODWORD(v224) = *(*v236 + 2) != 0;
          goto LABEL_43;
        }
      }

      v61 = sub_100243134(0, *(v61 + 2) + 1, 1, v61);
      *v236 = v61;
      goto LABEL_24;
    }
  }

  if (a9)
  {
    a9(a7, a8 & 1, v55);
  }
}