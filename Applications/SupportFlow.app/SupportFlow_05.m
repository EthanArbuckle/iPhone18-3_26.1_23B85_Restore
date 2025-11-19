uint64_t sub_100075C88(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 56 * a3 - 8;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 56 * a3 + 48);
      v8 = v6;
      v9 = v5;
      do
      {
        if (v7 >= *v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *(v9 + 8);
        v11 = *(v9 + 16);
        v12 = *(v9 - 32);
        *(v9 + 8) = *(v9 - 48);
        v13 = *(v9 + 24);
        result = *(v9 + 32);
        v14 = *(v9 + 40);
        v15 = *(v9 + 48);
        *(v9 + 24) = v12;
        *(v9 + 40) = *(v9 - 16);
        *(v9 + 56) = *v9;
        *(v9 - 48) = v10;
        *(v9 - 40) = v11;
        *(v9 - 32) = v13;
        *(v9 - 24) = result;
        *(v9 - 16) = v14;
        *(v9 - 8) = v15;
        *v9 = v7;
        v9 -= 56;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 56;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_100075D24(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 32 * a3 - 8;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 32 * a3 + 24);
      v8 = v6;
      v9 = v5;
      do
      {
        if (v7 >= *v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *(v9 + 8);
        v11 = *(v9 + 16);
        v12 = *(v9 + 24);
        v13 = *(v9 - 8);
        *(v9 + 8) = *(v9 - 24);
        *(v9 + 24) = v13;
        *(v9 - 24) = v10;
        *(v9 - 16) = v11;
        *(v9 - 8) = v12;
        *v9 = v7;
        v9 -= 32;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 32;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_100075DA4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 48 * a3 - 8;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 48 * a3 + 40);
      v8 = v6;
      v9 = v5;
      do
      {
        if (v7 >= *v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *(v9 + 8);
        v11 = *(v9 + 16);
        v12 = *(v9 - 24);
        *(v9 + 8) = *(v9 - 40);
        v13 = *(v9 + 24);
        result = *(v9 + 32);
        v14 = *(v9 + 40);
        *(v9 + 24) = v12;
        *(v9 + 40) = *(v9 - 8);
        *(v9 - 40) = v10;
        *(v9 - 32) = v11;
        *(v9 - 24) = v13;
        *(v9 - 16) = result;
        *(v9 - 8) = v14;
        *v9 = v7;
        v9 -= 48;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 48;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_100075E38(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v99 = _swiftEmptyArrayStorage;
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = _swiftEmptyArrayStorage;
    v94 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 56 * v9 + 48);
        v11 = *a3 + 56 * v7;
        v12 = *(v11 + 48);
        v13 = (v11 + 160);
        v14 = v7 + 2;
        v15 = v10;
        while (1)
        {
          v16 = v14;
          if (++v9 >= v6)
          {
            break;
          }

          v17 = *v13;
          v13 += 7;
          v18 = (v10 < v12) ^ (v17 >= v15);
          ++v14;
          v15 = v17;
          if ((v18 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v10 < v12)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v16)
            {
              v6 = v16;
            }

            v19 = 56 * v6 - 24;
            v20 = 56 * v7 + 48;
            v21 = v9;
            v22 = v7;
            do
            {
              if (v22 != --v21)
              {
                v23 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v24 = (v23 + v20);
                v25 = (v23 + v19);
                v26 = *(v24 - 3);
                v27 = *(v24 - 2);
                v28 = *(v24 - 2);
                v29 = *(v24 - 1);
                v30 = *v24;
                v32 = *(v25 - 1);
                v31 = *v25;
                v33 = *(v25 - 2);
                *v24 = *(v25 + 2);
                *(v24 - 2) = v32;
                *(v24 - 1) = v31;
                *(v24 - 3) = v33;
                *(v25 - 2) = v26;
                *(v25 - 1) = v27;
                *v25 = v28;
                *(v25 + 1) = v29;
                *(v25 + 2) = v30;
              }

              ++v22;
              v19 -= 56;
              v20 += 56;
            }

            while (v22 < v21);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
            return;
          }

          if (v9 != v6)
          {
            v34 = *a3;
            v35 = *a3 + 56 * v9 - 8;
            v36 = v7 - v9;
            do
            {
              v37 = *(v34 + 56 * v9 + 48);
              v38 = v36;
              v39 = v35;
              do
              {
                if (v37 >= *v39)
                {
                  break;
                }

                if (!v34)
                {
                  goto LABEL_111;
                }

                v40 = *(v39 + 8);
                v41 = *(v39 + 16);
                v42 = *(v39 - 32);
                *(v39 + 8) = *(v39 - 48);
                v43 = *(v39 + 24);
                v44 = *(v39 + 32);
                v45 = *(v39 + 40);
                v46 = *(v39 + 48);
                *(v39 + 24) = v42;
                *(v39 + 40) = *(v39 - 16);
                *(v39 + 56) = *v39;
                *(v39 - 48) = v40;
                *(v39 - 40) = v41;
                *(v39 - 32) = v43;
                *(v39 - 24) = v44;
                *(v39 - 16) = v45;
                *(v39 - 8) = v46;
                *v39 = v37;
                v39 -= 56;
              }

              while (!__CFADD__(v38++, 1));
              ++v9;
              v35 += 56;
              --v36;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v96 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v91 = v8[2];
        sub_1000D02E0();
        v8 = v92;
      }

      v48 = v8[2];
      v49 = v48 + 1;
      if (v48 >= v8[3] >> 1)
      {
        sub_1000D02E0();
        v8 = v93;
      }

      v8[2] = v49;
      v50 = v8 + 4;
      v51 = &v8[2 * v48 + 4];
      *v51 = v7;
      v51[1] = v96;
      v97 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v48)
      {
        while (1)
        {
          v52 = v49 - 1;
          v53 = &v50[2 * v49 - 2];
          v54 = &v8[2 * v49];
          if (v49 >= 4)
          {
            break;
          }

          if (v49 == 3)
          {
            v55 = v8[4];
            v56 = v8[5];
            v65 = __OFSUB__(v56, v55);
            v57 = v56 - v55;
            v58 = v65;
LABEL_56:
            if (v58)
            {
              goto LABEL_96;
            }

            v70 = *v54;
            v69 = v54[1];
            v71 = __OFSUB__(v69, v70);
            v72 = v69 - v70;
            v73 = v71;
            if (v71)
            {
              goto LABEL_99;
            }

            v74 = v53[1];
            v75 = v74 - *v53;
            if (__OFSUB__(v74, *v53))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v72, v75))
            {
              goto LABEL_104;
            }

            if (v72 + v75 >= v57)
            {
              if (v57 < v75)
              {
                v52 = v49 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v49 < 2)
          {
            goto LABEL_98;
          }

          v77 = *v54;
          v76 = v54[1];
          v65 = __OFSUB__(v76, v77);
          v72 = v76 - v77;
          v73 = v65;
LABEL_71:
          if (v73)
          {
            goto LABEL_101;
          }

          v79 = *v53;
          v78 = v53[1];
          v65 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v65)
          {
            goto LABEL_103;
          }

          if (v80 < v72)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v52 - 1 >= v49)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v84 = &v50[2 * v52 - 2];
          v85 = *v84;
          v86 = &v50[2 * v52];
          v87 = v86[1];
          sub_10007713C((*a3 + 56 * *v84), (*a3 + 56 * *v86), *a3 + 56 * v87, v97);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v87 < v85)
          {
            goto LABEL_91;
          }

          v88 = v8;
          v89 = v8[2];
          if (v52 > v89)
          {
            goto LABEL_92;
          }

          *v84 = v85;
          v84[1] = v87;
          if (v52 >= v89)
          {
            goto LABEL_93;
          }

          v49 = v89 - 1;
          memmove(&v50[2 * v52], v86 + 2, 16 * (v89 - 1 - v52));
          v88[2] = (v89 - 1);
          v90 = v89 > 2;
          v8 = v88;
          v5 = 0;
          if (!v90)
          {
            goto LABEL_85;
          }
        }

        v59 = &v50[2 * v49];
        v60 = *(v59 - 8);
        v61 = *(v59 - 7);
        v65 = __OFSUB__(v61, v60);
        v62 = v61 - v60;
        if (v65)
        {
          goto LABEL_94;
        }

        v64 = *(v59 - 6);
        v63 = *(v59 - 5);
        v65 = __OFSUB__(v63, v64);
        v57 = v63 - v64;
        v58 = v65;
        if (v65)
        {
          goto LABEL_95;
        }

        v66 = v54[1];
        v67 = v66 - *v54;
        if (__OFSUB__(v66, *v54))
        {
          goto LABEL_97;
        }

        v65 = __OFADD__(v57, v67);
        v68 = v57 + v67;
        if (v65)
        {
          goto LABEL_100;
        }

        if (v68 >= v62)
        {
          v82 = *v53;
          v81 = v53[1];
          v65 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v65)
          {
            goto LABEL_105;
          }

          if (v57 < v83)
          {
            v52 = v49 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v96;
      a4 = v94;
      if (v96 >= v6)
      {
        v99 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_100076D9C(&v99, *a1, a3);
LABEL_89:
}

void sub_10007637C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v108 = a3;
  v105 = a5;
  v9 = v8;
  v102 = a1;
  v10 = *(a3 + 8);
  v109 = _swiftEmptyArrayStorage;
  if (v10 >= 1)
  {
    v11 = 0;
    v12 = _swiftEmptyArrayStorage;
    v101 = a4;
    while (1)
    {
      v13 = v11 + 1;
      if (v11 + 1 < v10)
      {
        sub_1000780E8(a1, a2, a3, a4, a5, a6, a7, a8, v101, v102, v103, v105, v106, v108);
        v15 = *(v14 + 32 * v13 + 24);
        v16 = v14 + 32 * v11;
        v17 = *(v16 + 24);
        v18 = (v16 + 88);
        v19 = v11 + 2;
        v20 = v15;
        while (1)
        {
          v21 = v19;
          if (++v13 >= v10)
          {
            break;
          }

          v22 = *v18;
          v18 += 4;
          v23 = (v15 < v17) ^ (v22 >= v20);
          ++v19;
          v20 = v22;
          if ((v23 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v13 = v10;
LABEL_9:
        if (v15 < v17)
        {
          if (v13 < v11)
          {
            goto LABEL_108;
          }

          if (v11 < v13)
          {
            if (v10 >= v21)
            {
              v10 = v21;
            }

            v24 = 32 * v10 - 16;
            v25 = 32 * v11 + 24;
            v26 = v13;
            v27 = v11;
            do
            {
              if (v27 != --v26)
              {
                v28 = *v108;
                if (!*v108)
                {
                  goto LABEL_113;
                }

                v29 = (v28 + v25);
                v30 = v28 + v24;
                v31 = *(v29 - 3);
                v32 = *(v29 - 2);
                v33 = *(v29 - 8);
                v34 = *v29;
                v35 = *v30;
                *(v29 - 3) = *(v30 - 16);
                *(v29 - 1) = v35;
                *(v30 - 16) = v31;
                *(v30 - 8) = v32;
                *v30 = v33;
                *(v30 + 8) = v34;
              }

              ++v27;
              v24 -= 32;
              v25 += 32;
            }

            while (v27 < v26);
            sub_100078094(a1, a2, a3, a4, a5, a6, a7, a8, v101, v102, v103, v105, v106, v108);
          }
        }
      }

      if (v13 < v10)
      {
        if (__OFSUB__(v13, v11))
        {
          goto LABEL_107;
        }

        if (v13 - v11 < a4)
        {
          if (__OFADD__(v11, a4))
          {
            goto LABEL_109;
          }

          if (v11 + a4 < v10)
          {
            v10 = v11 + a4;
          }

          if (v10 < v11)
          {
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
            return;
          }

          if (v13 != v10)
          {
            sub_1000780E8(a1, a2, a3, a4, a5, a6, a7, a8, v101, v102, v103, v105, v106, v108);
            v38 = v37 + 32 * v13 - 8;
            v39 = v11 - v13;
            do
            {
              v40 = *(v37 + 32 * v13 + 24);
              v41 = v39;
              v42 = v38;
              do
              {
                if (v40 >= *v42)
                {
                  break;
                }

                if (!v37)
                {
                  goto LABEL_111;
                }

                v43 = *(v42 + 8);
                v44 = *(v42 + 16);
                v45 = *(v42 + 24);
                v46 = *(v42 - 8);
                *(v42 + 8) = *(v42 - 24);
                *(v42 + 24) = v46;
                *(v42 - 24) = v43;
                *(v42 - 16) = v44;
                *(v42 - 8) = v45;
                *v42 = v40;
                v42 -= 32;
              }

              while (!__CFADD__(v41++, 1));
              ++v13;
              v38 += 32;
              --v39;
            }

            while (v13 != v36);
            v13 = v36;
          }
        }
      }

      if (v13 < v11)
      {
        goto LABEL_106;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v104 = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v100 = v12[2];
        sub_100077CBC();
        sub_1000D02E0();
        v12 = isUniquelyReferenced_nonNull_native;
      }

      v56 = v12[2];
      v57 = v56 + 1;
      if (v56 >= v12[3] >> 1)
      {
        sub_1000D02E0();
        v12 = isUniquelyReferenced_nonNull_native;
      }

      v12[2] = v57;
      v58 = v12 + 4;
      v59 = &v12[2 * v56 + 4];
      *v59 = v11;
      v59[1] = v104;
      v107 = *v102;
      if (!*v102)
      {
        goto LABEL_114;
      }

      if (v56)
      {
        while (1)
        {
          v60 = v57 - 1;
          v61 = &v58[2 * v57 - 2];
          v62 = &v12[2 * v57];
          if (v57 >= 4)
          {
            break;
          }

          if (v57 == 3)
          {
            v63 = v12[4];
            v64 = v12[5];
            v73 = __OFSUB__(v64, v63);
            v65 = v64 - v63;
            v66 = v73;
LABEL_56:
            if (v66)
            {
              goto LABEL_96;
            }

            v78 = *v62;
            v77 = v62[1];
            v79 = __OFSUB__(v77, v78);
            v80 = v77 - v78;
            v81 = v79;
            if (v79)
            {
              goto LABEL_99;
            }

            v82 = v61[1];
            v83 = v82 - *v61;
            if (__OFSUB__(v82, *v61))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v80, v83))
            {
              goto LABEL_104;
            }

            if (v80 + v83 >= v65)
            {
              if (v65 < v83)
              {
                v60 = v57 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v57 < 2)
          {
            goto LABEL_98;
          }

          v85 = *v62;
          v84 = v62[1];
          v73 = __OFSUB__(v84, v85);
          v80 = v84 - v85;
          v81 = v73;
LABEL_71:
          if (v81)
          {
            goto LABEL_101;
          }

          v87 = *v61;
          v86 = v61[1];
          v73 = __OFSUB__(v86, v87);
          v88 = v86 - v87;
          if (v73)
          {
            goto LABEL_103;
          }

          if (v88 < v80)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v60 - 1 >= v57)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          if (!*v108)
          {
            goto LABEL_112;
          }

          v92 = &v58[2 * v60 - 2];
          v93 = *v92;
          v94 = &v58[2 * v60];
          v95 = *v94;
          v96 = v94[1];
          sub_1000772FC();
          if (v9)
          {
            goto LABEL_89;
          }

          if (v96 < v93)
          {
            goto LABEL_91;
          }

          v97 = v12;
          v98 = v12[2];
          if (v60 > v98)
          {
            goto LABEL_92;
          }

          *v92 = v93;
          v92[1] = v96;
          if (v60 >= v98)
          {
            goto LABEL_93;
          }

          v57 = v98 - 1;
          isUniquelyReferenced_nonNull_native = memmove(&v58[2 * v60], v94 + 2, 16 * (v98 - 1 - v60));
          v97[2] = (v98 - 1);
          v99 = v98 > 2;
          v12 = v97;
          v9 = 0;
          if (!v99)
          {
            goto LABEL_85;
          }
        }

        v67 = &v58[2 * v57];
        v68 = *(v67 - 8);
        v69 = *(v67 - 7);
        v73 = __OFSUB__(v69, v68);
        v70 = v69 - v68;
        if (v73)
        {
          goto LABEL_94;
        }

        v72 = *(v67 - 6);
        v71 = *(v67 - 5);
        v73 = __OFSUB__(v71, v72);
        v65 = v71 - v72;
        v66 = v73;
        if (v73)
        {
          goto LABEL_95;
        }

        v74 = v62[1];
        v75 = v74 - *v62;
        if (__OFSUB__(v74, *v62))
        {
          goto LABEL_97;
        }

        v73 = __OFADD__(v65, v75);
        v76 = v65 + v75;
        if (v73)
        {
          goto LABEL_100;
        }

        if (v76 >= v70)
        {
          v90 = *v61;
          v89 = v61[1];
          v73 = __OFSUB__(v89, v90);
          v91 = v89 - v90;
          if (v73)
          {
            goto LABEL_105;
          }

          if (v65 < v91)
          {
            v60 = v57 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      sub_100078094(isUniquelyReferenced_nonNull_native, v49, v50, v51, v52, v53, v54, v55, v101, v102, v104, v105, v107, v108);
      v11 = v103;
      a4 = v101;
      if (v103 >= v10)
      {
        v109 = v12;
        break;
      }
    }
  }

  if (!*v102)
  {
    goto LABEL_115;
  }

  sub_100076ED4(&v109, *v102, v108);
LABEL_89:
}

void sub_100076870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v107 = a1;
  v113 = _swiftEmptyArrayStorage;
  v112 = a3;
  v10 = *(a3 + 8);
  if (v10 >= 1)
  {
    v11 = 0;
    v12 = _swiftEmptyArrayStorage;
    v106 = a4;
    while (1)
    {
      v13 = v11 + 1;
      if (v11 + 1 < v10)
      {
        sub_1000780E8(a1, a2, a3, a4, a5, a6, a7, a8, v105, v106, v107, v108, v110, v112);
        v15 = *(v14 + 48 * v13 + 40);
        v16 = v14 + 48 * v11;
        v17 = *(v16 + 40);
        v18 = (v16 + 136);
        v19 = v11 + 2;
        v20 = v15;
        while (1)
        {
          v21 = v19;
          if (++v13 >= v10)
          {
            break;
          }

          v22 = *v18;
          v18 += 6;
          v23 = (v15 < v17) ^ (v22 >= v20);
          ++v19;
          v20 = v22;
          if ((v23 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v13 = v10;
LABEL_9:
        if (v15 < v17)
        {
          if (v13 < v11)
          {
            goto LABEL_108;
          }

          if (v11 < v13)
          {
            if (v10 >= v21)
            {
              v10 = v21;
            }

            v24 = 48 * v10 - 24;
            v25 = 48 * v11 + 40;
            v26 = v13;
            v27 = v11;
            do
            {
              if (v27 != --v26)
              {
                v28 = *v112;
                if (!*v112)
                {
                  goto LABEL_113;
                }

                v29 = (v28 + v25);
                v30 = *(v28 + v25 - 40);
                v31 = v28 + v24;
                v32 = *(v29 - 3);
                v33 = *(v29 - 2);
                v34 = *(v29 - 8);
                v35 = *v29;
                v36 = *(v31 + 8);
                v37 = *(v31 - 8);
                *(v29 - 5) = *(v31 - 24);
                *(v29 - 3) = v37;
                *(v29 - 1) = v36;
                *(v31 - 24) = v30;
                *(v31 - 8) = v32;
                *v31 = v33;
                *(v31 + 8) = v34;
                *(v31 + 16) = v35;
              }

              ++v27;
              v24 -= 48;
              v25 += 48;
            }

            while (v27 < v26);
            sub_100078094(a1, a2, a3, a4, a5, a6, a7, a8, v105, v106, v107, v108, v110, v112);
          }
        }
      }

      if (v13 < v10)
      {
        if (__OFSUB__(v13, v11))
        {
          goto LABEL_107;
        }

        if (v13 - v11 < a4)
        {
          if (__OFADD__(v11, a4))
          {
            goto LABEL_109;
          }

          if (v11 + a4 < v10)
          {
            v10 = v11 + a4;
          }

          if (v10 < v11)
          {
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
            return;
          }

          if (v13 != v10)
          {
            sub_1000780E8(a1, a2, a3, a4, a5, a6, a7, a8, v105, v106, v107, v108, v110, v112);
            v40 = v39 + 48 * v13 - 8;
            v41 = v11 - v13;
            do
            {
              v42 = *(v39 + 48 * v13 + 40);
              v43 = v41;
              v44 = v40;
              do
              {
                if (v42 >= *v44)
                {
                  break;
                }

                if (!v39)
                {
                  goto LABEL_111;
                }

                v45 = *(v44 + 8);
                v46 = *(v44 + 16);
                v47 = *(v44 - 24);
                *(v44 + 8) = *(v44 - 40);
                v48 = *(v44 + 24);
                v49 = *(v44 + 32);
                v50 = *(v44 + 40);
                *(v44 + 24) = v47;
                *(v44 + 40) = *(v44 - 8);
                *(v44 - 40) = v45;
                *(v44 - 32) = v46;
                *(v44 - 24) = v48;
                *(v44 - 16) = v49;
                *(v44 - 8) = v50;
                *v44 = v42;
                v44 -= 48;
              }

              while (!__CFADD__(v43++, 1));
              ++v13;
              v40 += 48;
              --v41;
            }

            while (v13 != v38);
            v13 = v38;
          }
        }
      }

      if (v13 < v11)
      {
        goto LABEL_106;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v109 = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v104 = v12[2];
        sub_100077CBC();
        sub_1000D02E0();
        v12 = isUniquelyReferenced_nonNull_native;
      }

      v60 = v12[2];
      v61 = v60 + 1;
      if (v60 >= v12[3] >> 1)
      {
        sub_1000D02E0();
        v12 = isUniquelyReferenced_nonNull_native;
      }

      v12[2] = v61;
      v62 = v12 + 4;
      v63 = &v12[2 * v60 + 4];
      *v63 = v11;
      v63[1] = v109;
      v111 = *v107;
      if (!*v107)
      {
        goto LABEL_114;
      }

      if (v60)
      {
        while (1)
        {
          v64 = v61 - 1;
          v65 = &v62[2 * v61 - 2];
          v66 = &v12[2 * v61];
          if (v61 >= 4)
          {
            break;
          }

          if (v61 == 3)
          {
            v67 = v12[4];
            v68 = v12[5];
            v77 = __OFSUB__(v68, v67);
            v69 = v68 - v67;
            v70 = v77;
LABEL_56:
            if (v70)
            {
              goto LABEL_96;
            }

            v82 = *v66;
            v81 = v66[1];
            v83 = __OFSUB__(v81, v82);
            v84 = v81 - v82;
            v85 = v83;
            if (v83)
            {
              goto LABEL_99;
            }

            v86 = v65[1];
            v87 = v86 - *v65;
            if (__OFSUB__(v86, *v65))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v84, v87))
            {
              goto LABEL_104;
            }

            if (v84 + v87 >= v69)
            {
              if (v69 < v87)
              {
                v64 = v61 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v61 < 2)
          {
            goto LABEL_98;
          }

          v89 = *v66;
          v88 = v66[1];
          v77 = __OFSUB__(v88, v89);
          v84 = v88 - v89;
          v85 = v77;
LABEL_71:
          if (v85)
          {
            goto LABEL_101;
          }

          v91 = *v65;
          v90 = v65[1];
          v77 = __OFSUB__(v90, v91);
          v92 = v90 - v91;
          if (v77)
          {
            goto LABEL_103;
          }

          if (v92 < v84)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v64 - 1 >= v61)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          if (!*v112)
          {
            goto LABEL_112;
          }

          v96 = &v62[2 * v64 - 2];
          v97 = *v96;
          v98 = &v62[2 * v64];
          v99 = *v98;
          v100 = v98[1];
          sub_100077464();
          if (v9)
          {
            goto LABEL_89;
          }

          if (v100 < v97)
          {
            goto LABEL_91;
          }

          v101 = v12;
          v102 = v12[2];
          if (v64 > v102)
          {
            goto LABEL_92;
          }

          *v96 = v97;
          v96[1] = v100;
          if (v64 >= v102)
          {
            goto LABEL_93;
          }

          v61 = v102 - 1;
          isUniquelyReferenced_nonNull_native = memmove(&v62[2 * v64], v98 + 2, 16 * (v102 - 1 - v64));
          v101[2] = (v102 - 1);
          v103 = v102 > 2;
          v12 = v101;
          v9 = 0;
          if (!v103)
          {
            goto LABEL_85;
          }
        }

        v71 = &v62[2 * v61];
        v72 = *(v71 - 8);
        v73 = *(v71 - 7);
        v77 = __OFSUB__(v73, v72);
        v74 = v73 - v72;
        if (v77)
        {
          goto LABEL_94;
        }

        v76 = *(v71 - 6);
        v75 = *(v71 - 5);
        v77 = __OFSUB__(v75, v76);
        v69 = v75 - v76;
        v70 = v77;
        if (v77)
        {
          goto LABEL_95;
        }

        v78 = v66[1];
        v79 = v78 - *v66;
        if (__OFSUB__(v78, *v66))
        {
          goto LABEL_97;
        }

        v77 = __OFADD__(v69, v79);
        v80 = v69 + v79;
        if (v77)
        {
          goto LABEL_100;
        }

        if (v80 >= v74)
        {
          v94 = *v65;
          v93 = v65[1];
          v77 = __OFSUB__(v93, v94);
          v95 = v93 - v94;
          if (v77)
          {
            goto LABEL_105;
          }

          if (v69 < v95)
          {
            v64 = v61 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      sub_100078094(isUniquelyReferenced_nonNull_native, v53, v54, v55, v56, v57, v58, v59, v105, v106, v107, v109, v111, v112);
      v11 = v108;
      a4 = v106;
      if (v108 >= v10)
      {
        v113 = v12;
        break;
      }
    }
  }

  if (!*v107)
  {
    goto LABEL_115;
  }

  sub_100077004(&v113, *v107, v112);
LABEL_89:
}

uint64_t sub_100076D9C(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1000775D0(v15);
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_10007713C((*a3 + 56 * *v4), (*a3 + 56 * *v9), *a3 + 56 * v10, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_100076ED4(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1000775D0(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v5 + 16 * i);
    v9 = *v4;
    v10 = &v7[2 * i];
    v11 = *v10;
    v12 = v10[1];
    sub_1000772FC();
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v9)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v7)
    {
      goto LABEL_12;
    }

    *v4 = v9;
    v4[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v10, v10 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_100077004(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1000775D0(v15);
    v15 = result;
  }

  v13 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v13 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = *v9;
    v11 = v9[1];
    sub_100077464();
    if (v3)
    {
      goto LABEL_10;
    }

    if (v11 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v11;
    v12 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v12);
  }

  *v13 = v15;
  __break(1u);
  return result;
}

uint64_t sub_10007713C(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 56;
  v9 = (a3 - a2) / 56;
  if (v8 < v9)
  {
    sub_1000D1104(a1, (a2 - a1) / 56, a4);
    v10 = &v4[7 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (v6[6] >= v4[6])
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 7;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 7;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 7;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    v14 = *v12;
    v15 = *(v12 + 1);
    v16 = *(v12 + 2);
    v7[6] = v12[6];
    *(v7 + 1) = v15;
    *(v7 + 2) = v16;
    *v7 = v14;
    goto LABEL_13;
  }

  sub_1000D1104(a2, (a3 - a2) / 56, a4);
  v10 = &v4[7 * v9];
LABEL_15:
  for (v5 -= 56; v10 > v4 && v6 > v7; v5 -= 56)
  {
    if (*(v10 - 1) < *(v6 - 1))
    {
      v21 = v6 - 7;
      v13 = v5 + 56 == v6;
      v6 -= 7;
      if (!v13)
      {
        v22 = *v21;
        v23 = *(v21 + 1);
        v24 = *(v21 + 2);
        *(v5 + 48) = v21[6];
        *(v5 + 16) = v23;
        *(v5 + 32) = v24;
        *v5 = v22;
        v6 = v21;
      }

      goto LABEL_15;
    }

    if (v10 != (v5 + 56))
    {
      v18 = *(v10 - 7);
      v19 = *(v10 - 5);
      v20 = *(v10 - 3);
      *(v5 + 48) = *(v10 - 1);
      *(v5 + 16) = v19;
      *(v5 + 32) = v20;
      *v5 = v18;
    }

    v10 -= 7;
  }

LABEL_28:
  v25 = (v10 - v4) / 56;
  if (v6 != v4 || v6 >= &v4[7 * v25])
  {
    memmove(v6, v4, 56 * v25);
  }

  return 1;
}

uint64_t sub_1000772FC()
{
  sub_100077F4C();
  sub_1000780AC();
  if (v7 != v8)
  {
    sub_100078074();
    v9();
    v14 = &v0[4 * v4];
    while (1)
    {
      if (v0 >= v14 || v1 >= v3)
      {
        v1 = v2;
        goto LABEL_28;
      }

      if (v1[3] >= v0[3])
      {
        break;
      }

      v11 = v1;
      v12 = v2 == v1;
      v1 += 4;
      if (!v12)
      {
        goto LABEL_13;
      }

LABEL_14:
      v2 += 4;
    }

    v11 = v0;
    v12 = v2 == v0;
    v0 += 4;
    if (v12)
    {
      goto LABEL_14;
    }

LABEL_13:
    v13 = *(v11 + 1);
    *v2 = *v11;
    *(v2 + 1) = v13;
    goto LABEL_14;
  }

  v6(v1, v5, v0);
  v14 = &v0[4 * v5];
LABEL_15:
  for (v3 -= 4; v14 > v0 && v1 > v2; v3 -= 4)
  {
    if (*(v14 - 1) < *(v1 - 1))
    {
      v17 = v1 - 4;
      v12 = v3 + 4 == v1;
      v1 -= 4;
      if (!v12)
      {
        v18 = *(v17 + 1);
        *v3 = *v17;
        *(v3 + 1) = v18;
        v1 = v17;
      }

      goto LABEL_15;
    }

    if (v14 != v3 + 4)
    {
      v16 = *(v14 - 1);
      *v3 = *(v14 - 2);
      *(v3 + 1) = v16;
    }

    v14 -= 4;
  }

LABEL_28:
  v19 = (v14 - v0) / 32;
  if (v1 != v0 || v1 >= &v0[4 * v19])
  {
    memmove(v1, v0, 32 * v19);
  }

  return 1;
}

uint64_t sub_100077464()
{
  sub_100077F4C();
  sub_1000780AC();
  if (v6 != v7)
  {
    sub_100078074();
    sub_1000D114C(v8, v9, v10);
    v16 = v0 + 48 * v4;
    while (1)
    {
      if (v0 >= v16 || v1 >= v3)
      {
        v1 = v2;
        goto LABEL_28;
      }

      if (*(v1 + 40) >= *(v0 + 40))
      {
        break;
      }

      v12 = v1;
      v13 = v2 == v1;
      v1 += 48;
      if (!v13)
      {
        goto LABEL_13;
      }

LABEL_14:
      v2 += 3;
    }

    v12 = v0;
    v13 = v2 == v0;
    v0 += 48;
    if (v13)
    {
      goto LABEL_14;
    }

LABEL_13:
    v14 = *v12;
    v15 = v12[2];
    v2[1] = v12[1];
    v2[2] = v15;
    *v2 = v14;
    goto LABEL_14;
  }

  sub_1000D114C(v1, v5, v0);
  v16 = v0 + 48 * v5;
LABEL_15:
  for (v3 -= 48; v16 > v0 && v1 > v2; v3 -= 48)
  {
    if (*(v16 - 8) < *(v1 - 8))
    {
      v13 = v3 + 48 == v1;
      v1 -= 48;
      if (!v13)
      {
        sub_100078080();
        v1 = v19;
      }

      goto LABEL_15;
    }

    v18 = v16 - 48;
    if (v16 != v3 + 48)
    {
      sub_100078080();
    }

    v16 = v18;
  }

LABEL_28:
  v20 = (v16 - v0) / 48;
  if (v1 != v0 || v1 >= v0 + 48 * v20)
  {
    memmove(v1, v0, 48 * v20);
  }

  return 1;
}

id *sub_1000775E4(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100003768(&qword_10018D358, &qword_10012E100);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = (2 * ((v11 - 32) / 16));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void *sub_1000776E4(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1 << *(a4 + 32);
  if (-v5 < 64)
  {
    v6 = ~(-1 << -v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a4 + 64);
  if (!a2)
  {
    v11 = 0;
    v8 = 0;
LABEL_21:
    *result = a4;
    result[1] = v4;
    result[2] = ~v5;
    result[3] = v11;
    result[4] = v7;
    return v8;
  }

  v8 = a3;
  if (!a3)
  {
    v11 = 0;
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v23 = -1 << *(a4 + 32);
    v24 = result;
    v10 = 0;
    v11 = 0;
    v12 = (63 - v5) >> 6;
    while (1)
    {
      if (v10 >= v8)
      {
        goto LABEL_24;
      }

      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_25;
      }

      if (!v7)
      {
        while (1)
        {
          v14 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v14 >= v12)
          {
            v7 = 0;
            v8 = v10;
            goto LABEL_19;
          }

          v7 = *(v4 + 8 * v14);
          ++v11;
          if (v7)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v14 = v11;
LABEL_15:
      v15 = a4;
      v16 = (*(a4 + 56) + 56 * (__clz(__rbit64(v7)) | (v14 << 6)));
      v17 = v16[1];
      v7 &= v7 - 1;
      v18 = v16[2];
      v19 = v16[3];
      v20 = v16[4];
      v21 = v16[5];
      v22 = v16[6];
      *v9 = *v16;
      v9[1] = v17;
      v9[2] = v18;
      v9[3] = v19;
      v9[4] = v20;
      v9[5] = v21;
      v9[6] = v22;
      if (v13 == v8)
      {
        break;
      }

      v9 += 7;

      v10 = v13;
      v11 = v14;
      a4 = v15;
    }

    v11 = v14;
    a4 = v15;
LABEL_19:
    v5 = v23;
    result = v24;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_10007788C(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
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
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v17 = *(a4 + 56) + ((v15 << 11) | (32 * v16));
      v18 = *(v17 + 8);
      v19 = *(v17 + 16);
      v20 = *(v17 + 24);
      *v11 = *v17;
      *(v11 + 8) = v18;
      *(v11 + 16) = v19;
      *(v11 + 24) = v20;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 32;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000779F8(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
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
    v13 = 0;
    v10 = 0;
LABEL_21:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    v23 = -1 << *(a4 + 32);
    v14 = (63 - v7) >> 6;
    while (1)
    {
      if (v12 >= v10)
      {
        goto LABEL_24;
      }

      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_25;
      }

      if (!v9)
      {
        while (1)
        {
          v16 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v16 >= v14)
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_19;
          }

          v9 = *(v6 + 8 * v16);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v16 = v13;
LABEL_15:
      v17 = *(a4 + 56) + 48 * (__clz(__rbit64(v9)) | (v16 << 6));
      v18 = *(v17 + 8);
      v9 &= v9 - 1;
      v19 = *(v17 + 16);
      v20 = *(v17 + 24);
      v21 = *(v17 + 32);
      v22 = *(v17 + 40);
      *v11 = *v17;
      *(v11 + 8) = v18;
      *(v11 + 16) = v19;
      *(v11 + 24) = v20;
      *(v11 + 32) = v21;
      *(v11 + 40) = v22;
      if (v15 == v10)
      {
        break;
      }

      v11 += 48;

      v12 = v15;
      v13 = v16;
    }

    v13 = v16;
LABEL_19:
    v7 = v23;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_100077C2C()
{
  *(v3 + 16) = v0;
  result = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v1;
  v5 = *(v2 + 32);
  return result;
}

void sub_100077C8C(char a1@<W8>)
{
  *v1 = v2;
  *(v1 + 8) = v3;
  v6 = *(v4 - 176);
  *(v1 + 16) = *(v4 - 184);
  *(v1 + 24) = v6;
  *(v1 + 32) = a1;
  *(v1 + 40) = v5;
}

void sub_100077CA4()
{
  v1 = v0[89];
  v2 = v0[88];
  v3 = v0[87];
  v4 = v0[86];
  v5 = v0[85];
}

void sub_100077CCC()
{
  v1 = v0[95];
  v2 = v0[94];
  v3 = v0[93];
  v4 = v0[92];
}

void sub_100077CE0()
{
  v1 = v0[91];
  v2 = v0[90];
  v3 = v0[89];
  v4 = v0[88];
}

uint64_t sub_100077D00(uint64_t a1)
{
  *(a1 + 8) = sub_10007254C;
  v2 = v1[81];
  v3 = v1[79];
  return v1[75];
}

void sub_100077D34()
{
  v1 = v0[74];
  v2 = v0[73];
  v3 = v0[72];
}

void sub_100077DF0(uint64_t a1@<X8>)
{
  *(a1 - 48) = v2;
  *(a1 - 40) = v3;
  *(a1 - 32) = v1;
  *(a1 - 24) = v4;
}

uint64_t sub_100077E00(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_10000AAEC(a1, a2, a3);
}

void sub_100077E24()
{
  v1 = v0[85];
  v2 = v0[84];
  v3 = v0[83];
}

id *sub_100077E34(uint64_t a1)
{

  return sub_100070428(a1, sub_1000D0F34);
}

id *sub_100077E68(uint64_t a1)
{

  return sub_100070428(a1, sub_1000D0F48);
}

void sub_100077E9C(uint64_t a1@<X8>)
{
  *a1 = v3;
  *(a1 + 8) = v2;
  *(a1 + 16) = v1;
  *(a1 + 24) = v4;
}

uint64_t sub_100077EB8@<X0>(uint64_t a1@<X8>)
{
  v7 = a1 + 32 * v3;
  v8 = *(v7 + 8);
  v9 = *(v4 - 168) != *(v4 - 128);
  *v7 = v1;
  *(v7 + 8) = v2;
  *(v7 + 16) = v9;
  *(v7 + 24) = v6;
}

void sub_100077F24()
{
  v1 = v0[44];
  v0[53] = v1 + 16;
  v0[51] = v1 + 32;
  v2 = v0[12];
}

void sub_100077F74(void *a1@<X8>)
{
  *a1 = v2;
  a1[1] = v1;
  v6 = *(v4 - 112);
  a1[2] = *(v4 - 120);
  a1[3] = v6;
  v7 = *(v4 - 128);
  a1[4] = v3;
  a1[5] = v7;
  a1[6] = v5;
}

double sub_100077F90()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return *(v0 + 40);
}

uint64_t sub_100077FC0()
{
  v2 = *(v0 + 408);

  return static Message.with(_:)();
}

void sub_100077FF4(unint64_t a1@<X8>)
{

  sub_1000D1224(a1 > 1, v1, 1);
}

uint64_t sub_100078018(uint64_t a1)
{
  *(v1 - 104) = a1;
}

uint64_t sub_100078030()
{
  *(v0 + 472) = v1;
  v4 = *(v2 - 3);
  v5 = *(v2 - 2);
  v6 = *(v2 - 8);
  v7 = *v2;
}

void sub_100078054(char a1@<W8>)
{
  v6 = v1 + 32 * v4;
  *v6 = v2;
  *(v6 + 8) = v3;
  *(v6 + 16) = a1;
  *(v6 + 24) = v5;
}

__n128 sub_100078080()
{
  result = *v0;
  v3 = *(v0 + 32);
  *(v1 + 16) = *(v0 + 16);
  *(v1 + 32) = v3;
  *v1 = result;
  return result;
}

void sub_1000780D4()
{
  *(v1 - 256) = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) + 1;
}

void sub_1000780F4()
{

  sub_1000D1224(0, v0, 0);
}

unint64_t sub_100078114()
{

  return sub_100083754(v0, v1);
}

uint64_t sub_10007812C()
{

  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t sub_100078144()
{
  v2 = *(v0 + 472);

  return static Message.with(_:)();
}

uint64_t *sub_10007815C()
{
  v3 = *v0;
  v4 = type metadata accessor for Locale();
  v5 = sub_10007B688(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_100019E84();
  v0[15] = 0xD000000000000043;
  v0[16] = 0x8000000100137270;
  v0[17] = &_swiftEmptySetSingleton;
  static Locale.current.getter();
  v0[2] = sub_1000785F4(v2, sub_10001B6EC, sub_10001B6CC);
  v0[3] = v10;
  v0[4] = sub_10007841C();
  v0[5] = v11;
  v0[6] = sub_1000785F4(v2, sub_1000EC344, sub_1000EC24C);
  v0[7] = v12;
  v0[8] = sub_1000785F4(v2, sub_1000DAEB4, sub_1000DAE94);
  v0[9] = v13;
  v0[10] = sub_1000787E0();
  v0[11] = v14;
  v0[12] = sub_1000785F4(v2, sub_1000D7404, sub_1000D73E4);
  v0[13] = v15;
  v17 = v0[2];
  v16 = v0[3];
  sub_10007B654();
  if (v18)
  {
    sub_10007B6D4();
    sub_10007B668();
    sub_10007B6BC();
  }

  v20 = v0[4];
  v19 = v0[5];
  sub_10007B654();
  if (v21)
  {
    sub_10007B6D4();
    sub_10007B668();
    sub_10007B6BC();
  }

  v23 = v0[6];
  v22 = v0[7];
  sub_10007B654();
  if (v24)
  {
    sub_10007B6D4();
    sub_10007B668();
    sub_10007B6BC();
  }

  v26 = v0[8];
  v25 = v0[9];
  sub_10007B654();
  if (v27)
  {
    sub_10007B6D4();
    sub_10007B668();
    sub_10007B6BC();
  }

  v29 = v0[10];
  v28 = v0[11];
  sub_10007B654();
  if (v30)
  {
    sub_10007B6D4();
    sub_10007B668();
    sub_10007B6BC();
  }

  v32 = v0[12];
  v31 = v0[13];
  sub_10007B654();
  if (v33)
  {
    sub_10007B6D4();
    sub_10007B668();
    sub_10007B6BC();
  }

  (*(v7 + 8))(v2, v1);
  v0[14] = &_swiftEmptySetSingleton;
  return v0;
}

uint64_t sub_10007841C()
{
  v0 = sub_100003768(&qword_10018D468, &qword_10012E130);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v13 - v2;
  v13[4] = Locale.identifier.getter();
  v13[5] = v4;
  v13[2] = 95;
  v13[3] = 0xE100000000000000;
  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_10000AC24();
  v5 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v7 = v6;

  v14._countAndFlagsBits = v5;
  v14._object = v7;
  if (sub_10001DBD8(v14) == 15)
  {
    Locale.region.getter();
    v8 = type metadata accessor for Locale.Region();
    if (sub_10000E5F0(v3, 1, v8) == 1)
    {
      sub_10001D724(v3, &qword_10018D468, &qword_10012E130);
      return 0;
    }

    v9 = Locale.Region.identifier.getter();
    v11 = v10;
    (*(*(v8 - 8) + 8))(v3, v8);
    v15._countAndFlagsBits = v9;
    v15._object = v11;
    if (sub_10001DBD8(v15) == 15)
    {
      return 0;
    }
  }

  return 0x726F745320707041;
}

uint64_t sub_1000785F4(uint64_t a1, unsigned __int8 (*a2)(uint64_t, uint64_t), uint64_t (*a3)(void))
{
  v5 = sub_100003768(&qword_10018D468, &qword_10012E130);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v19 - v7;
  v19[4] = Locale.identifier.getter();
  v19[5] = v9;
  v19[2] = 95;
  v19[3] = 0xE100000000000000;
  v19[0] = 0;
  v19[1] = 0xE000000000000000;
  sub_10000AC24();
  v10 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v12 = v11;

  if (a2(v10, v12) == 15)
  {
    Locale.region.getter();
    v13 = type metadata accessor for Locale.Region();
    if (sub_10000E5F0(v8, 1, v13) == 1)
    {
      sub_10001D724(v8, &qword_10018D468, &qword_10012E130);
      return 0;
    }

    v14 = Locale.Region.identifier.getter();
    v16 = v15;
    (*(*(v13 - 8) + 8))(v8, v13);
    if (a2(v14, v16) == 15)
    {
      return 0;
    }
  }

  result = a3();
  if (!v18)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1000787E0()
{
  v0 = sub_100003768(&qword_10018D468, &qword_10012E130);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v13 - v2;
  v13[4] = Locale.identifier.getter();
  v13[5] = v4;
  v13[2] = 95;
  v13[3] = 0xE100000000000000;
  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_10000AC24();
  v5 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v7 = v6;

  v14._countAndFlagsBits = v5;
  v14._object = v7;
  if (sub_1000357A8(v14) == 15)
  {
    Locale.region.getter();
    v8 = type metadata accessor for Locale.Region();
    if (sub_10000E5F0(v3, 1, v8) == 1)
    {
      sub_10001D724(v3, &qword_10018D468, &qword_10012E130);
      return 0;
    }

    v9 = Locale.Region.identifier.getter();
    v11 = v10;
    (*(*(v8 - 8) + 8))(v3, v8);
    v15._countAndFlagsBits = v9;
    v15._object = v11;
    if (sub_1000357A8(v15) == 15)
    {
      return 0;
    }
  }

  return 0x6567617373654D69;
}

void *sub_1000789D0()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  v7 = v0[14];

  v8 = v0[16];

  v9 = v0[17];

  return v0;
}

uint64_t sub_100078A30()
{
  sub_1000789D0();

  return _swift_deallocClassInstance(v0, 144, 7);
}

uint64_t sub_100078A88()
{
  v1[2] = v0;
  v1[3] = *v0;
  v2 = *(*(sub_100003768(&qword_100188EE0, &unk_100122AE0) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v1[5] = v3;
  v4 = *(v3 - 8);
  v1[6] = v4;
  v5 = *(v4 + 64) + 15;
  v1[7] = swift_task_alloc();
  v6 = type metadata accessor for Locale();
  v1[8] = v6;
  v7 = *(v6 - 8);
  v1[9] = v7;
  v8 = *(v7 + 64) + 15;
  v1[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[11] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[12] = v10;
  v1[13] = v9;

  return _swift_task_switch(sub_100078C38, v10, v9);
}

uint64_t sub_100078C38()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = v0[3];
  static Locale.current.getter();
  v5 = sub_1000785F4(v1, sub_10006FCD4, sub_10006FCBC);
  v7 = v6;
  (*(v2 + 8))(v1, v3);
  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
    v17 = v0[11];

    goto LABEL_7;
  }

  v10 = v0[4];
  v9 = v0[5];
  v11 = v0[2];
  v12 = *(v11 + 120);
  v13 = *(v11 + 128);
  sub_100003768(&qword_100188810, &unk_100121780);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100121620;
  *(v14 + 56) = &type metadata for String;
  *(v14 + 64) = sub_100017A18();
  *(v14 + 32) = v5;
  *(v14 + 40) = v7;
  String.init(format:_:)();
  URL.init(string:)();

  if (sub_10000E5F0(v10, 1, v9) == 1)
  {
    v15 = v0[11];
    v16 = v0[4];

    sub_10001D724(v16, &qword_100188EE0, &unk_100122AE0);
LABEL_7:
    v18 = v0[10];
    v19 = v0[7];
    v20 = v0[4];

    sub_10000875C();

    return v21();
  }

  (*(v0[6] + 32))(v0[7], v0[4], v0[5]);
  v23 = swift_task_alloc();
  v0[14] = v23;
  *v23 = v0;
  v23[1] = sub_100078E9C;
  v24 = v0[7];
  v25 = v0[2];

  return sub_100079130(v24);
}

uint64_t sub_100078E9C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v7 = v4[12];
    v8 = v4[13];
    v9 = sub_100079088;
  }

  else
  {
    v4[16] = a1;
    v7 = v4[12];
    v8 = v4[13];
    v9 = sub_100078FC4;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_100078FC4()
{
  v1 = v0[16];
  v2 = v0[11];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[5];
  v6 = v0[2];

  (*(v4 + 8))(v3, v5);
  v7 = *(v6 + 136);
  *(v6 + 136) = v1;

  v8 = v0[10];
  v9 = v0[7];
  v10 = v0[4];

  sub_10000875C();

  return v11();
}

uint64_t sub_100079088()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[6];
  v3 = v0[7];
  v6 = v0[4];
  v5 = v0[5];

  (*(v4 + 8))(v3, v5);

  sub_10000875C();
  v8 = v0[15];

  return v7();
}

uint64_t sub_100079130(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  v3 = type metadata accessor for URL();
  v2[15] = v3;
  v4 = *(v3 - 8);
  v2[16] = v4;
  v5 = *(v4 + 64) + 15;
  v2[17] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v2[18] = v6;
  v7 = *(v6 - 8);
  v2[19] = v7;
  v8 = *(v7 + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();

  return _swift_task_switch(sub_100079290, 0, 0);
}

uint64_t sub_100079290()
{
  v30 = v0;
  v1 = v0[22];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[15];
  v5 = v0[13];
  static Logger.supportFlowApp.getter();
  (*(v3 + 16))(v2, v5, v4);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[22];
  v11 = v0[18];
  v10 = v0[19];
  v13 = v0[16];
  v12 = v0[17];
  v14 = v0[15];
  if (v8)
  {
    v28 = v0[18];
    v15 = swift_slowAlloc();
    v26 = v7;
    v16 = swift_slowAlloc();
    v29 = v16;
    *v15 = 136315138;
    sub_10007B43C();
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v9;
    v19 = v18;
    (*(v13 + 8))(v12, v14);
    v20 = sub_10009CACC(v17, v19, &v29);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v6, v26, "Fetching service status %s", v15, 0xCu);
    sub_1000086BC(v16);
    sub_100008744();
    sub_100008744();

    v21 = *(v10 + 8);
    v21(v27, v28);
  }

  else
  {

    (*(v13 + 8))(v12, v14);
    v21 = *(v10 + 8);
    v21(v9, v11);
  }

  v0[23] = v21;
  v0[24] = [objc_opt_self() sharedSession];
  v22 = async function pointer to NSURLSession.data(from:delegate:)[1];
  v23 = swift_task_alloc();
  v0[25] = v23;
  *v23 = v0;
  v23[1] = sub_100079518;
  v24 = v0[13];

  return NSURLSession.data(from:delegate:)(v24, 0);
}

uint64_t sub_100079518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 200);
  v9 = *v4;
  *(v5 + 208) = a1;
  *(v5 + 216) = a2;
  *(v5 + 224) = a3;
  *(v5 + 232) = v3;

  if (v3)
  {
    v7 = sub_100079B98;
  }

  else
  {

    v7 = sub_10007966C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10007966C()
{
  v1 = *(v0 + 224);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = v2;
  v4 = *(v0 + 224);
  if ([v3 statusCode] != 200)
  {

LABEL_9:
    v18 = *(v0 + 224);
    v19 = *(v0 + 160);
    static Logger.supportFlowApp.getter();
    v20 = v18;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = *(v0 + 224);
      v24 = -1;
      v25 = swift_slowAlloc();
      *v25 = 134217984;
      objc_opt_self();
      v26 = swift_dynamicCastObjCClass();
      if (v26)
      {
        v24 = [v26 statusCode];
      }

      v27 = *(v0 + 224);
      *(v25 + 4) = v24;

      _os_log_impl(&_mh_execute_header, v21, v22, "Response error status: %ld", v25, 0xCu);
      sub_100008744();
      v28 = *(v0 + 224);
    }

    else
    {

      v28 = *(v0 + 224);
      v21 = v28;
    }

    v30 = *(v0 + 208);
    v29 = *(v0 + 216);
    v31 = *(v0 + 184);
    v33 = *(v0 + 152);
    v32 = *(v0 + 160);
    v34 = *(v0 + 144);

    v31(v32, v34);
    sub_100008408(v30, v29);

    goto LABEL_15;
  }

  v5 = *(v0 + 208);
  v6 = *(v0 + 216);
  v7 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  *(v0 + 80) = 0;
  v9 = [v7 JSONObjectWithData:isa options:0 error:v0 + 80];

  v10 = *(v0 + 80);
  if (v9)
  {
    v11 = v10;
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100003768(&qword_10018B580, &unk_100128EB0);
    if (swift_dynamicCast())
    {
      sub_100082C6C(0x7365636976726573, 0xE800000000000000, *(v0 + 88), (v0 + 48));

      if (*(v0 + 72))
      {
        sub_100003768(&qword_10018D458, &unk_100128EC0);
        v12 = swift_dynamicCast();
        v13 = *(v0 + 224);
        if (v12)
        {
          v15 = *(v0 + 208);
          v14 = *(v0 + 216);
          v16 = *(v0 + 112);
          v17 = sub_100079C50(*(v0 + 96));

          sub_100008408(v15, v14);
LABEL_16:
          sub_10007B6A0();

          v35 = *(v0 + 8);

          return v35(v17);
        }
      }

      else
      {

        sub_10001D724(v0 + 48, &unk_10018A520, &unk_100124310);
      }
    }

    else
    {
    }

    v42 = *(v0 + 168);
    static Logger.supportFlowApp.getter();
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    v45 = os_log_type_enabled(v43, v44);
    v46 = *(v0 + 216);
    v47 = *(v0 + 224);
    v48 = *(v0 + 208);
    v49 = *(v0 + 184);
    v50 = *(v0 + 168);
    v52 = *(v0 + 144);
    v51 = *(v0 + 152);
    if (v45)
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, "Unable to parse service status json.", v53, 2u);
      sub_100008744();
    }

    v49(v50, v52);
    sub_100008408(v48, v46);
LABEL_15:
    v17 = &_swiftEmptySetSingleton;
    goto LABEL_16;
  }

  v37 = *(v0 + 216);
  v38 = *(v0 + 224);
  v39 = *(v0 + 208);
  v40 = v10;

  _convertNSErrorToError(_:)();
  swift_willThrow();
  sub_100008408(v39, v37);

  sub_10007B6A0();

  sub_10000875C();

  return v41();
}

uint64_t sub_100079B98()
{
  v1 = *(v0 + 232);
  sub_10007B6A0();

  sub_10000875C();

  return v2();
}

uint64_t sub_100079C50(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v49 = *(v4 - 8);
  v5 = *(v49 + 64);
  __chkstk_darwin(v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = &_swiftEmptySetSingleton;
  v54 = &_swiftEmptySetSingleton;
  v9 = *(a1 + 16);
  if (v9)
  {
    v47 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    v48 = v4;
    v10 = 0;
    v11 = a1 + 32;
    v50 = v2;
    do
    {
      v12 = *(v11 + 8 * v10);
      if (*(v12 + 16))
      {
        v13 = *(v11 + 8 * v10);

        v14 = sub_100083754(0x4E65636976726573, 0xEB00000000656D61);
        if (v15)
        {
          sub_10001E894(*(v12 + 56) + 32 * v14, v51);
          if (swift_dynamicCast())
          {
            v16 = v52;
            v17 = v53;
            v18 = HIBYTE(v53) & 0xF;
            if ((v53 & 0x2000000000000000) == 0)
            {
              v18 = v52 & 0xFFFFFFFFFFFFLL;
            }

            if (v18)
            {
              v19 = *(v2 + 112);
              if (*(v19 + 16))
              {
                v20 = *(v19 + 40);
                Hasher.init(_seed:)();
                String.hash(into:)();
                v21 = Hasher._finalize()();
                v22 = ~(-1 << *(v19 + 32));
                do
                {
                  v23 = v21 & v22;
                  if (((*(v19 + 56 + (((v21 & v22) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v21 & v22)) & 1) == 0)
                  {
                    goto LABEL_30;
                  }

                  v24 = (*(v19 + 48) + 16 * v23);
                  if (*v24 == v16 && v24[1] == v17)
                  {
                    break;
                  }

                  v26 = _stringCompareWithSmolCheck(_:_:expecting:)();
                  v21 = v23 + 1;
                }

                while ((v26 & 1) == 0);
                if (!*(v12 + 16) || (v27 = sub_100083754(0x73746E657665, 0xE600000000000000), (v28 & 1) == 0))
                {
LABEL_30:

                  v2 = v50;
                  goto LABEL_31;
                }

                sub_10001E894(*(v12 + 56) + 32 * v27, v51);

                sub_100003768(&qword_10018D458, &unk_100128EC0);
                result = swift_dynamicCast();
                v2 = v50;
                if ((result & 1) == 0)
                {
                  goto LABEL_29;
                }

                v30 = v52;
                v46 = *(v52 + 16);
                if (v46)
                {
                  for (i = 0; v46 != i; ++i)
                  {
                    if (i >= *(v30 + 16))
                    {
                      __break(1u);
                      return result;
                    }

                    v32 = *(v30 + 8 * i + 32);
                    if (!*(v32 + 16))
                    {
                      goto LABEL_35;
                    }

                    v33 = *(v30 + 8 * i + 32);

                    v34 = sub_100083754(0x65746144646E65, 0xE700000000000000);
                    if ((v35 & 1) == 0)
                    {

LABEL_35:

                      memset(v51, 0, 32);
                      sub_10001D724(v51, &unk_10018A520, &unk_100124310);
                      sub_1000E0B24(v51, v16, v17);
                      goto LABEL_29;
                    }

                    sub_10001E894(*(v32 + 56) + 32 * v34, v51);

                    result = sub_10001D724(v51, &unk_10018A520, &unk_100124310);
                  }
                }
              }
            }
          }
        }

LABEL_29:
      }

LABEL_31:
      ++v10;
    }

    while (v10 != v9);
    v8 = v54;
    v7 = v47;
    v4 = v48;
  }

  if (v8[2])
  {
    static Logger.supportFlowApp.getter();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = v7;
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *&v51[0] = v40;
      *v39 = 136315138;

      v41 = Set.description.getter();
      v43 = v42;

      v44 = sub_10009CACC(v41, v43, v51);

      *(v39 + 4) = v44;
      _os_log_impl(&_mh_execute_header, v36, v37, "Service outage detected: %s", v39, 0xCu);
      sub_1000086BC(v40);

      (*(v49 + 8))(v38, v4);
    }

    else
    {

      (*(v49 + 8))(v7, v4);
    }
  }

  return v8;
}

uint64_t sub_10007A1C0(uint64_t a1)
{
  v5 = type metadata accessor for SupportFlowIdentifier();
  v6 = sub_10007B688(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  sub_100019E84();
  (*(v8 + 16))(v3, a1, v2);
  v11 = (*(v8 + 88))(v3, v2);
  if (v11 == enum case for SupportFlowIdentifier.compromisedAccount(_:) || v11 == enum case for SupportFlowIdentifier.disabledAccount(_:) || v11 == enum case for SupportFlowIdentifier.forgotPassword(_:))
  {
    sub_100003768(&qword_10018D470, &unk_100128ED0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100121620;
    v16 = v1[2];
    v15 = v1[3];
  }

  else if (v11 == enum case for SupportFlowIdentifier.mail(_:))
  {
    sub_100003768(&qword_10018D470, &unk_100128ED0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100121620;
    v16 = v1[8];
    v15 = v1[9];
  }

  else if (v11 == enum case for SupportFlowIdentifier.messages(_:))
  {
    sub_100003768(&qword_10018D470, &unk_100128ED0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100121620;
    v16 = v1[10];
    v15 = v1[11];
  }

  else
  {
    if (v11 == enum case for SupportFlowIdentifier.purchases(_:))
    {
      sub_100003768(&qword_10018D470, &unk_100128ED0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100128690;
      v19 = v1[5];
      *(inited + 32) = v1[4];
      *(inited + 40) = v19;
      v20 = v1[3];
      *(inited + 48) = v1[2];
      *(inited + 56) = v20;
      v21 = v1[13];
      *(inited + 64) = v1[12];
      *(inited + 72) = v21;

      goto LABEL_15;
    }

    if (v11 != enum case for SupportFlowIdentifier.softwareUpdate(_:))
    {
      (*(v8 + 8))(v3, v2);
      return 0;
    }

    sub_100003768(&qword_10018D470, &unk_100128ED0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100121620;
    v16 = v1[6];
    v15 = v1[7];
  }

  *(inited + 32) = v16;
  *(inited + 40) = v15;
LABEL_15:

  v17 = sub_10007A488(inited);
  swift_setDeallocating();
  sub_10006EB40();
  return v17;
}

uint64_t sub_10007A488(uint64_t a1)
{
  v2 = v1;
  v123 = type metadata accessor for UUID();
  v122 = *(v123 - 8);
  v4 = *(v122 + 64);
  __chkstk_darwin(v123);
  v120 = &v109 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003768(&qword_1001889F0, &qword_100121D20);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v121 = &v109 - v8;
  v116 = type metadata accessor for FlowSymbol();
  v9 = *(*(v116 - 8) + 64);
  __chkstk_darwin(v116);
  v119 = &v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for URL();
  v109 = *(v115 - 8);
  v11 = *(v109 + 64);
  __chkstk_darwin(v115);
  v110 = &v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100003768(&qword_100188EE0, &unk_100122AE0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v113 = &v109 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v114 = &v109 - v17;
  v18 = type metadata accessor for String.LocalizationValue();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v112 = &v109 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for URLComponents();
  v117 = *(v118 - 8);
  v21 = *(v117 + 64);
  __chkstk_darwin(v118);
  v124 = &v109 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100003768(&qword_10018D468, &qword_10012E130);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v26 = &v109 - v25;
  v27 = type metadata accessor for Locale();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = __chkstk_darwin(v27);
  v111 = &v109 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v33 = &v109 - v32;
  if (qword_100188360 != -1)
  {
    swift_once();
  }

  v127 = v26;
  v128 = v1;
  if (!qword_1001A5950)
  {
LABEL_7:
    v125 = v28;
    v126 = v27;
    v39 = 0;
    v40 = *(a1 + 16);
    v41 = a1 + 32;
LABEL_8:
    while (v39 != v40)
    {
      v42 = v39++;
      v43 = v2[17];
      if (v43[2])
      {
        v44 = (v41 + 16 * v42);
        v36 = *v44;
        v38 = v44[1];
        v45 = v43[5];
        Hasher.init(_seed:)();

        String.hash(into:)();
        v46 = Hasher._finalize()();
        v47 = ~(-1 << *(v43 + 32));
        do
        {
          v48 = v46 & v47;
          if (((*(v43 + (((v46 & v47) >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> (v46 & v47)) & 1) == 0)
          {

            v2 = v128;
            goto LABEL_8;
          }

          v49 = (v43[6] + 16 * v48);
          if (*v49 == v36 && v49[1] == v38)
          {
            break;
          }

          v51 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v46 = v48 + 1;
        }

        while ((v51 & 1) == 0);

        v28 = v125;
        v27 = v126;
        goto LABEL_20;
      }
    }

    return 0;
  }

  swift_getKeyPath();

  v34 = sub_1000FBFA4();

  if ((v34 & 1) == 0)
  {

    goto LABEL_7;
  }

  v36 = sub_10007B55C(v35, a1);
  v38 = v37;

LABEL_20:
  static Locale.current.getter();
  v133 = Locale.identifier.getter();
  v134 = v52;
  v131 = 95;
  v132 = 0xE100000000000000;
  v129 = 0;
  v130 = 0xE000000000000000;
  sub_10000AC24();
  v53 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v55 = v54;

  v138._countAndFlagsBits = v53;
  v138._object = v55;
  v56 = sub_10006FCD4(v138);
  if (v56 == 15)
  {
    v57 = v127;
    Locale.region.getter();
    v58 = type metadata accessor for Locale.Region();
    if (sub_10000E5F0(v57, 1, v58) == 1)
    {
      (*(v28 + 8))(v33, v27);
      sub_10001D724(v57, &qword_10018D468, &qword_10012E130);
LABEL_25:
      v137 = 0;
      v135 = 0u;
      v136 = 0u;
LABEL_41:

      sub_10001D724(&v135, &qword_10018D478, &qword_100128EE0);
      return 0;
    }

    v59 = Locale.Region.identifier.getter();
    v61 = v60;
    (*(*(v58 - 8) + 8))(v57, v58);
    v139._countAndFlagsBits = v59;
    v139._object = v61;
    v56 = sub_10006FCD4(v139);
    if (v56 == 15)
    {
      (*(v28 + 8))(v33, v27);
      goto LABEL_25;
    }
  }

  *(&v136 + 1) = &type metadata for ServiceStatusInfoProvider;
  v137 = &off_10017B798;
  LOBYTE(v135) = v56;
  (*(v28 + 8))(v33, v27);
  if (!*(&v136 + 1))
  {
    goto LABEL_41;
  }

  sub_100003768(&qword_10018D480, &qword_100128EE8);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return 0;
  }

  if (!v38)
  {
    return 0;
  }

  v62 = v133;
  v63 = v36 == v128[2] && v38 == v128[3];
  if (v63 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v128 = &off_100178778;
    v64 = &type metadata for AppleAccountServiceProvider;
LABEL_35:

    goto LABEL_36;
  }

  v103 = v36 == v128[4] && v38 == v128[5];
  if (v103 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v128 = &off_1001789E0;
    v64 = &type metadata for AppStoreServiceProvider;
    goto LABEL_35;
  }

  v104 = v36 == v128[6] && v38 == v128[7];
  if (v104 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v128 = &off_10017F018;
    v64 = &type metadata for DeviceActivationServiceProvider;
    goto LABEL_35;
  }

  v105 = v36 == v128[8] && v38 == v128[9];
  if (v105 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v128 = &off_10017EBF8;
    v64 = &type metadata for MailServiceProvider;
    goto LABEL_35;
  }

  v106 = v36 == v128[10] && v38 == v128[11];
  if (v106 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v128 = &off_100179818;
    v64 = &type metadata for MessagesServiceProvider;
    goto LABEL_35;
  }

  if (v36 == v128[12] && v38 == v128[13])
  {
    v128 = &off_10017E650;
    v64 = &type metadata for WalletServiceProvider;
    goto LABEL_35;
  }

  v108 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v108 & 1) == 0)
  {
    return 0;
  }

  v128 = &off_10017E650;
  v64 = &type metadata for WalletServiceProvider;
LABEL_36:
  v65 = v115;
  URLComponents.init()();
  URLComponents.scheme.setter();
  if (sub_10006FBD8(v62) != 20035 || v66 != 0xE200000000000000)
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  URLComponents.host.setter();
  v70 = sub_10006FB30(v62);
  if (v71)
  {
    *&v135 = v70;
    *(&v135 + 1) = v71;

    v72._countAndFlagsBits = 0xD000000000000016;
    v72._object = 0x8000000100137190;
    String.append(_:)(v72);
  }

  URLComponents.path.setter();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v73 = String.init(localized:table:bundle:locale:comment:)();
  v75 = v74;
  v76 = v114;
  URLComponents.url.getter();
  v77 = v113;
  sub_10001BDA0(v76, v113);
  if (sub_10000E5F0(v77, 1, v65) == 1)
  {
    sub_10001D724(v76, &qword_100188EE0, &unk_100122AE0);

    v78 = 0;
  }

  else
  {
    v79 = v109 + 32;
    v80 = v110;
    (*(v109 + 32))(v110, v77, v65);
    sub_10007B2EC(v80, v73, v75, &v135);

    (*(v79 - 24))(v80, v65);
    sub_10001D724(v76, &qword_100188EE0, &unk_100122AE0);
    v78 = v135;
  }

  v81 = v116;
  v82 = v119;
  v83 = &v119[*(v116 + 20)];
  static SymbolRenderingMode.multicolor.getter();
  v84 = v81[6];
  v85 = enum case for Image.Scale.medium(_:);
  v86 = type metadata accessor for Image.Scale();
  (*(*(v86 - 8) + 104))(&v82[v84], v85, v86);
  *v82 = 0xD00000000000001DLL;
  *(v82 + 1) = 0x8000000100137210;
  *&v82[v81[7]] = 0;
  *&v82[v81[8]] = vdupq_n_s64(0x4046000000000000uLL);
  v87 = v121;
  sub_10007B494(v82, v121);
  v88 = type metadata accessor for FlowImage();
  swift_storeEnumTagMultiPayload();
  sub_100003CE8(v87, 0, 1, v88);
  v89 = v128;
  v90 = (v128[1])(v64, v128);
  v92 = v91;
  v93 = (v89[2])(v64, v89);
  v95 = v94;
  v137 = 0;
  v135 = 0u;
  v136 = 0u;
  v96 = v120;
  UUID.init()();
  v97 = UUID.uuidString.getter();
  v99 = v98;
  (*(v122 + 8))(v96, v123);
  v100 = type metadata accessor for PlacardInfoItem(0);
  v101 = *(v100 + 48);
  v102 = *(v100 + 52);
  swift_allocObject();
  v68 = sub_1000F04E8(1, v97, v99, v87, v90, v92, v93, v95, v78, &v135);
  sub_10007B4F8(v82);
  (*(v117 + 8))(v124, v118);
  return v68;
}

uint64_t sub_10007B2EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for ActionInfoDestination(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for URL();
  (*(*(v12 - 8) + 16))(v11, a1, v12);
  swift_storeEnumTagMultiPayload();
  v13 = type metadata accessor for ActionInfo(0);
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();

  result = sub_1000EDD44(v11, a2, a3, 1, v17, 0, 0);
  *a4 = result;
  return result;
}

unint64_t sub_10007B43C()
{
  result = qword_10018D460;
  if (!qword_10018D460)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018D460);
  }

  return result;
}

uint64_t sub_10007B494(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowSymbol();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007B4F8(uint64_t a1)
{
  v2 = type metadata accessor for FlowSymbol();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10007B55C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  result = sub_10007B5C8(*(a2 + 16));
  if (result < v2)
  {
    v5 = a2 + 16 * result;
    v6 = *(v5 + 32);
    v7 = *(v5 + 40);

    return v6;
  }

  __break(1u);
  return result;
}

unint64_t sub_10007B5C8(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_10007B668()
{

  return sub_1000E0B24((v2 - 88), v1, v0);
}

uint64_t sub_10007B6A0()
{
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[20];
  v5 = v0[17];
}

uint64_t sub_10007B6BC()
{
  v2 = *(v0 - 80);
}

uint64_t sub_10007B6D4()
{

  return swift_bridgeObjectRetain_n();
}

uint64_t sub_10007B6EC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10007B72C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10007B7A8()
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = sub_10007BFD0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v1;
  v11 = *(v1 + 8);

  if ((v11 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v9, v0);
    return v14[1];
  }

  return v10;
}

uint64_t sub_10007B8D8()
{
  v2 = v1;
  v3 = sub_100003768(&qword_10018D488, &qword_100129018);
  v4 = sub_10007BFD0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  v10 = &v17 - v9;
  v11 = *(v1 + 40);
  v12 = *(v2 + 48);
  sub_100025734((v2 + 16), v11);
  v13 = *(*(v12 + 8) + 16);
  v18 = sub_1000C2D64(v11);
  sub_10007BE08(v2, __src);
  v14 = swift_allocObject();
  memcpy((v14 + 16), __src, 0x48uLL);
  View.onFirstAppear(perform:)();

  sub_10007BE08(v2, __src);
  v15 = swift_allocObject();
  memcpy((v15 + 16), __src, 0x48uLL);
  v18 = &type metadata for AnyView;
  v19 = &protocol witness table for AnyView;
  sub_10007BFB8();
  swift_getOpaqueTypeConformance2();
  View.onLoad(perform:)();

  return (*(v6 + 8))(v10, v0);
}

uint64_t sub_10007BADC(uint64_t a1)
{
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  sub_100003768(&qword_10018D490, &unk_100129030);
  State.wrappedValue.getter();
  v1 = *(v3 + OBJC_IVAR____TtC11SupportFlow14OptionInfoItem_onSelected);
  sub_100006568(v1);

  if (v1)
  {
    v1(result);
    return sub_1000068F8(v1);
  }

  return result;
}

uint64_t sub_10007BB74(uint64_t a1)
{
  v1[5] = a1;
  v2 = type metadata accessor for DeviceExpertTroubleshooting.ActionType();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[9] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10007BC68, v6, v5);
}

uint64_t sub_10007BC68()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[5];

  sub_10007B7A8();
  v6 = v5[5];
  v7 = v5[6];
  sub_100025734(v5 + 2, v6);
  (*(v7 + 24))(v6, v7);
  v8 = v5[8];
  v0[2] = v5[7];
  v0[3] = v8;
  sub_100003768(&qword_10018D490, &unk_100129030);
  State.wrappedValue.getter();
  v9 = v0[4];
  v10 = *(v9 + OBJC_IVAR____TtC11SupportFlow8InfoItem_title);
  v11 = *(v9 + OBJC_IVAR____TtC11SupportFlow8InfoItem_title + 8);

  (*(v4 + 104))(v2, enum case for DeviceExpertTroubleshooting.ActionType.executed(_:), v3);
  sub_10008787C();

  (*(v4 + 8))(v2, v3);

  v12 = v0[1];

  return v12();
}

uint64_t sub_10007BE4C()
{
  v1 = v0[2];

  sub_1000086BC(v0 + 4);
  v2 = v0[9];

  v3 = v0[10];

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_10007BE9C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10000D870;

  return sub_10007BB74(v0 + 16);
}

uint64_t sub_10007BF30()
{
  sub_100004D48(&qword_10018D488, &qword_100129018);
  sub_10007BFB8();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10007C020(uint64_t a1, char a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v8, v4);
    return v11[1];
  }

  return a1;
}

double sub_10007C160@<D0>(uint64_t a1@<X0>, char a2@<W1>, _OWORD *a3@<X8>)
{
  v4 = sub_10007C020(a1, a2 & 1);
  v5 = *(v4 + *(*v4 + 136));

  v6 = sub_10008ADF0();

  if (v6)
  {

    sub_10007C2A8();
  }

  sub_100003768(&qword_10018B7C8, &unk_100126840);
  sub_10004FDF8();
  sub_10001BB68();
  _ConditionalContent<>.init(storage:)();
  *a3 = v8;
  a3[1] = v9;
  a3[2] = *v10;
  result = *&v10[9];
  *(a3 + 41) = *&v10[9];
  return result;
}

id *sub_10007C2A8()
{
  v35 = type metadata accessor for UUID();
  v0 = *(v35 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v35);
  v3 = v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100003768(&qword_1001889F0, &qword_100121D20);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v34 = v30 - v6;
  v7 = type metadata accessor for Locale();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v33 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for String.LocalizationValue();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v32 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0;
  result = _swiftEmptyArrayStorage;
  v36 = _swiftEmptyArrayStorage;
  v30[1] = "itle regarding a subscription";
  v30[2] = "system_status_%@.js";
  v30[0] = "itle regarding a purchase";
  v31 = (v0 + 8);
  do
  {
    v15 = *(&off_1001765C8 + v13 + 32);
    if (v15 == 4 || v15 == 3 || v15 == 2)
    {
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      v16 = String.init(localized:table:bundle:locale:comment:)();
      v18 = v17;
      v19 = type metadata accessor for FlowImage();
      v20 = v34;
      sub_100003CE8(v34, 1, 1, v19);
      UUID.init()();
      v21 = UUID.uuidString.getter();
      v23 = v22;
      (*v31)(v3, v35);
      v24 = type metadata accessor for OptionInfoItem();
      v25 = *(v24 + 48);
      v26 = *(v24 + 52);
      v27 = swift_allocObject();
      v28 = v27 + OBJC_IVAR____TtC11SupportFlow14OptionInfoItem_nextStep;
      *(v27 + OBJC_IVAR____TtC11SupportFlow14OptionInfoItem_nextStep + 24) = &type metadata for PurchasesStepProvider;
      *(v28 + 32) = sub_1000258DC();
      *v28 = v15;
      v29 = (v27 + OBJC_IVAR____TtC11SupportFlow14OptionInfoItem_onSelected);
      *v29 = 0;
      v29[1] = 0;
      sub_1000EBC54(v21, v23, v20, v16, v18, 0, 0);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = v36;
    }

    ++v13;
  }

  while (v13 != 3);
  return result;
}

double sub_10007C6C8@<D0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_10007C160(*v1, *(v1 + 8), a1);
}

unint64_t sub_10007C6E4()
{
  result = qword_10018D498;
  if (!qword_10018D498)
  {
    sub_100004D48(&qword_10018D4A0, &qword_100129128);
    sub_10004FDF8();
    sub_10001BB68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018D498);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DisabledAccountStepOverrideProvider(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DisabledAccountStepOverrideProvider(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x10007C8C4);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10007C918(char a1)
{
  result = 0x694C206575737349;
  switch(a1)
  {
    case 1:
      result = 0x7974697275636553;
      break;
    case 2:
      result = 0x6150207465736552;
      break;
    case 3:
      result = 0x41206B636F6C6E55;
      break;
    case 4:
      result = 0xD00000000000001ALL;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10007CA3C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1001765F0, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10007CA88(char a1)
{
  result = 0x73694C6575737369;
  switch(a1)
  {
    case 1:
      result = 0x655364656B636F6CLL;
      break;
    case 2:
      result = 0x7361507465736572;
      break;
    case 3:
      result = 0x63416B636F6C6E75;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
      result = 0x52746E756F636361;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10007CBB0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10007CA3C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10007CBE0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10007CA88(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10007CC58()
{
  result = qword_10018D4A8;
  if (!qword_10018D4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018D4A8);
  }

  return result;
}

unint64_t sub_10007CCAC()
{
  result = qword_10018D4B0;
  if (!qword_10018D4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018D4B0);
  }

  return result;
}

uint64_t sub_10007CD68(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100004D48(&qword_10018D4C0, &qword_1001291C0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10007CDE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10007CE20()
{
  result = qword_10018D508;
  if (!qword_10018D508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018D508);
  }

  return result;
}

unint64_t sub_10007CE74()
{
  result = qword_10018D510;
  if (!qword_10018D510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018D510);
  }

  return result;
}

unint64_t sub_10007CECC()
{
  result = qword_10018D518;
  if (!qword_10018D518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018D518);
  }

  return result;
}

uint64_t sub_10007CF50()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  sub_10000C30C();
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_10000C30C();
  v4 = type metadata accessor for SupportFlowIdentifier();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  sub_10000C30C();
  (*(v8 + 104))(v7 - v6, enum case for SupportFlowIdentifier.screenRepair(_:));

  v9 = sub_100104F78();

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  sub_1001062E0();
  sub_1001080A8(0);

  return v9;
}

uint64_t type metadata accessor for ScreenRepairFlowViewModel()
{
  result = qword_10018D548;
  if (!qword_10018D548)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10007D1CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *(a4 + 40) = &type metadata for MailStepProvider;
  *(a4 + 48) = sub_1000257D8();
  *(a4 + 16) = a3;
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 56) = 0u;
  *(a4 + 72) = 0u;
  *(a4 + 88) = 0;
}

uint64_t sub_10007D258(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10007D2AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_10007D32C()
{
  sub_100003768(&qword_10018D818, &qword_100129548);
  sub_100003768(&qword_10018D820, &qword_100129550);
  sub_10007E4F4();
  sub_10000AAEC(v0, &qword_10018D818, &qword_100129548);
  sub_100004D48(&qword_10018D830, &qword_100129558);
  sub_100004D48(&qword_10018D838, &unk_100129560);
  sub_10007E034();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return View.toolbar<A>(content:)();
}

uint64_t sub_10007D474@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v49 = a3;
  v53 = a5;
  v8 = sub_100003768(&qword_10018B2A0, &qword_1001259A0);
  v46 = *(v8 - 8);
  v9 = *(v46 + 64);
  __chkstk_darwin(v8);
  v52 = &v45 - v10;
  v11 = type metadata accessor for ToolbarItemPlacement();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v47 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100003768(&qword_10018B2B8, &qword_1001259A8);
  v51 = *(v14 - 8);
  v15 = *(v51 + 64);
  __chkstk_darwin(v14);
  v50 = &v45 - v16;
  v17 = type metadata accessor for EnvironmentValues();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_100003768(&qword_10018D838, &unk_100129560);
  v22 = *(*(v58 - 8) + 64);
  v23 = __chkstk_darwin(v58);
  v25 = &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v54 = &v45 - v26;
  v27 = sub_100003768(&qword_10018D830, &qword_100129558);
  v56 = *(v27 - 8);
  v57 = v27;
  v28 = *(v56 + 64);
  __chkstk_darwin(v27);
  v55 = &v45 - v29;

  v48 = a2;
  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v31 = static Log.runtimeIssuesLog.getter();
    v45 = v17;
    v32 = v31;
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v18 + 8))(v21, v45);
    v30 = v59;
  }

  if (v30)
  {

    v33 = static ToolbarItemPlacement.topBarTrailing.getter();
    __chkstk_darwin(v33);
    *(&v45 - 4) = a1;
    *(&v45 - 24) = v48 & 1;
    *(&v45 - 2) = v49;
    *(&v45 - 1) = a4;
    sub_100003768(&qword_10018B318, &unk_10012ED70);
    sub_10000AAEC(&qword_10018B320, &qword_10018B318, &unk_10012ED70);
    v34 = v50;
    ToolbarItem<>.init(placement:content:)();
    v35 = sub_10000AAEC(&qword_10018B2C0, &qword_10018B2B8, &qword_1001259A8);
    v36 = v52;
    static ToolbarContentBuilder.buildBlock<A>(_:)();
    v37 = v46;
    (*(v46 + 16))(v25, v36, v8);
    sub_100003CE8(v25, 0, 1, v8);
    v59 = v14;
    v60 = v35;
    swift_getOpaqueTypeConformance2();
    v38 = v54;
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_10007E12C(v25);
    (*(v37 + 8))(v36, v8);
    (*(v51 + 8))(v34, v14);
  }

  else
  {
    sub_100003CE8(v25, 1, 1, v8);
    v39 = sub_10000AAEC(&qword_10018B2C0, &qword_10018B2B8, &qword_1001259A8);
    v59 = v14;
    v60 = v39;
    swift_getOpaqueTypeConformance2();
    v38 = v54;
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_10007E12C(v25);
  }

  v40 = sub_10007E034();
  v41 = v55;
  v42 = v58;
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  sub_10007E12C(v38);
  v59 = v42;
  v60 = v40;
  swift_getOpaqueTypeConformance2();
  v43 = v57;
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  return (*(v56 + 8))(v41, v43);
}

uint64_t sub_10007DAFC(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a3;
    *(v6 + 24) = a4;
    v7 = sub_10007E4F0;
  }

  else
  {
    v10 = swift_allocObject();
    *(v10 + 16) = a1;
    *(v10 + 24) = a2 & 1;
    *(v10 + 32) = 0;
    *(v10 + 40) = a4;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_10007E218;
    *(v6 + 24) = v10;
    j__swift_retain();
    v7 = sub_100040A84;
  }

  v11 = v7;
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v6;
  sub_100006568(a3);
  sub_100003768(&qword_10018B328, &unk_100125A30);
  sub_100045D24();

  return Button.init(action:label:)();
}

uint64_t sub_10007DC7C@<X0>(uint64_t *a1@<X8>)
{
  v2 = Image.init(systemName:)();
  v3 = (a1 + *(sub_100003768(&qword_10018B328, &unk_100125A30) + 36));
  v4 = *(sub_100003768(&qword_10018ACB0, &qword_100125420) + 28);
  v5 = enum case for Image.Scale.large(_:);
  v6 = type metadata accessor for Image.Scale();
  (*(*(v6 - 8) + 104))(v3 + v4, v5, v6);
  result = swift_getKeyPath();
  *v3 = result;
  *a1 = v2;
  return result;
}

uint64_t sub_10007DD54(uint64_t a1, char a2)
{
  v4 = type metadata accessor for ClientFlowPresentationState();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for EnvironmentValues();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v15 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    j__swift_release();
    result = (*(v10 + 8))(v13, v9);
    a1 = v16[1];
  }

  if (a1)
  {
    (*(v5 + 104))(v8, enum case for ClientFlowPresentationState.cancelled(_:), v4);
    SupportFlowSceneHostingClientManager.flowState.setter();
  }

  return result;
}

uint64_t sub_10007DF54()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[2];
  v4 = v0[3];
  return sub_10007D32C();
}

uint64_t sub_10007DF6C(uint64_t a1)
{
  swift_getKeyPath();
  sub_100006568(a1);
  View.modifier<A>(_:)();

  return sub_1000068F8(a1);
}

unint64_t sub_10007E034()
{
  result = qword_10018D840;
  if (!qword_10018D840)
  {
    sub_100004D48(&qword_10018D838, &unk_100129560);
    sub_100004D48(&qword_10018B2B8, &qword_1001259A8);
    sub_10000AAEC(&qword_10018B2C0, &qword_10018B2B8, &qword_1001259A8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018D840);
  }

  return result;
}

uint64_t sub_10007E12C(uint64_t a1)
{
  v2 = sub_100003768(&qword_10018D838, &unk_100129560);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10007E1CC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  j__swift_release();
  if (*(v0 + 32))
  {
    v3 = *(v0 + 40);
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10007E218()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return sub_10007DD54(*(v0 + 16), *(v0 + 24));
}

uint64_t sub_10007E230()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10007E26C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

_BYTE *storeEnumTagSinglePayload for ToolbarItemConfiguration(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x10007E338);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10007E370()
{
  sub_100004D48(&qword_10018D818, &qword_100129548);
  sub_100004D48(&qword_10018D820, &qword_100129550);
  sub_10007E4F4();
  sub_10000AAEC(v0, &qword_10018D818, &qword_100129548);
  sub_100004D48(&qword_10018D830, &qword_100129558);
  sub_100004D48(&qword_10018D838, &unk_100129560);
  sub_10007E034();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_10007E494()
{
  result = qword_10018D848;
  if (!qword_10018D848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018D848);
  }

  return result;
}

uint64_t sub_10007E50C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v9 = v1;
  sub_10008299C();
  sub_1000827DC(v3, v4);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = OBJC_IVAR____TtC11SupportFlow34SupportHandoffUserConsentViewModel__handoffNavigationPath;
  swift_beginAccess();
  v6 = type metadata accessor for NavigationPath();
  sub_10000AF7C(v6);
  return (*(v7 + 16))(a1, v9 + v5);
}

uint64_t sub_10007E5EC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for NavigationPath();
  v5 = sub_100008780(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_10000C30C();
  v12 = v11 - v10;
  v13 = OBJC_IVAR____TtC11SupportFlow34SupportHandoffUserConsentViewModel__handoffNavigationPath;
  swift_beginAccess();
  (*(v7 + 16))(v12, v1 + v13, v4);
  sub_1000827DC(&qword_10018DA38, &type metadata accessor for NavigationPath);
  v14 = dispatch thunk of static Equatable.== infix(_:_:)();
  v15 = *(v7 + 8);
  v15(v12, v4);
  if (v14)
  {
    sub_100052FBC();
    (*(v7 + 24))(v2 + v13, a1, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v18 - 2) = v2;
    *(&v18 - 1) = a1;
    sub_100081050();
  }

  return (v15)(a1, v4);
}

BOOL sub_10007E7F4()
{
  v1 = *(v0 + OBJC_IVAR____TtC11SupportFlow34SupportHandoffUserConsentViewModel_dataProvider);
  v2 = sub_10008ADF0();
  v3 = v2;
  if (v2)
  {
  }

  return v3 != 0;
}

uint64_t sub_10007E834()
{
  sub_100025A94();
  *(v1 + 160) = v0;
  *(v1 + 467) = v2;
  v3 = sub_100003768(&qword_10018DA18, &unk_100129750);
  sub_10000ED84(v3);
  v5 = *(v4 + 64);
  *(v1 + 168) = sub_100052FA4();
  v6 = type metadata accessor for PhoneNumberOption(0);
  *(v1 + 176) = v6;
  sub_10000ED84(v6);
  v8 = *(v7 + 64);
  *(v1 + 184) = sub_100052FA4();
  v9 = type metadata accessor for URL();
  *(v1 + 192) = v9;
  sub_100052F6C(v9);
  *(v1 + 200) = v10;
  v12 = *(v11 + 64) + 15;
  *(v1 + 208) = swift_task_alloc();
  *(v1 + 216) = swift_task_alloc();
  v13 = type metadata accessor for ContactType();
  *(v1 + 224) = v13;
  sub_100052F6C(v13);
  *(v1 + 232) = v14;
  v16 = *(v15 + 64);
  *(v1 + 240) = sub_100052FA4();
  v17 = sub_100003768(&qword_100189108, &unk_1001226E0);
  sub_10000ED84(v17);
  v19 = *(v18 + 64);
  *(v1 + 248) = sub_100052FA4();
  v20 = sub_100003768(&qword_10018DA20, &qword_100129760);
  sub_10000ED84(v20);
  v22 = *(v21 + 64);
  *(v1 + 256) = sub_100052FA4();
  v23 = sub_100003768(&qword_10018DA28, &unk_100129768);
  sub_10000ED84(v23);
  v25 = *(v24 + 64);
  *(v1 + 264) = sub_100052FA4();
  v26 = type metadata accessor for SupportSolutions(0);
  *(v1 + 272) = v26;
  sub_10000ED84(v26);
  v28 = *(v27 + 64);
  *(v1 + 280) = sub_100052FA4();
  v29 = type metadata accessor for CaseDetails();
  *(v1 + 288) = v29;
  sub_100052F6C(v29);
  *(v1 + 296) = v30;
  v32 = *(v31 + 64);
  *(v1 + 304) = sub_100052FA4();
  v33 = sub_100003768(&qword_100188EE0, &unk_100122AE0);
  sub_10000ED84(v33);
  v35 = *(v34 + 64) + 15;
  *(v1 + 312) = swift_task_alloc();
  *(v1 + 320) = swift_task_alloc();
  *(v1 + 328) = swift_task_alloc();
  *(v1 + 336) = swift_task_alloc();
  *(v1 + 344) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v1 + 352) = static MainActor.shared.getter();
  v37 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v1 + 360) = v37;
  *(v1 + 368) = v36;

  return _swift_task_switch(sub_10007EB20, v37, v36);
}

uint64_t sub_10007EB20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_100082B3C();
  sub_100082B70();
  v20 = *(v18 + 467);
  sub_100003CE8(*(v18 + 344), 1, 1, *(v18 + 192));
  if (v20 == 1)
  {
    v21 = *(v18 + 160);
    *(v18 + 466) = 0;
    swift_getKeyPath();
    *(v18 + 136) = v21;
    sub_10008299C();
    sub_1000827DC(v22, v23);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    *(v18 + 144) = v21;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    sub_100052FBC();
    sub_10002EA50();
    NavigationPath.append<A>(_:)();
    swift_endAccess();
    *(v18 + 152) = v21;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    v24 = *(v21 + OBJC_IVAR____TtC11SupportFlow34SupportHandoffUserConsentViewModel_dataProvider);
    v25 = swift_task_alloc();
    *(v18 + 376) = v25;
    *v25 = v18;
    v25[1] = sub_10007F2BC;
    v26 = *(v18 + 304);
    sub_100082AD8();

    return sub_100087A1C();
  }

  v30 = *(v18 + 264);
  v29 = *(v18 + 272);
  v31 = *(v18 + 256);
  v32 = *(*(v18 + 160) + OBJC_IVAR____TtC11SupportFlow34SupportHandoffUserConsentViewModel_dataProvider);
  sub_10008CBB8();
  sub_1000912CC(v30);
  sub_10000ABCC(v31, &qword_10018DA20, &qword_100129760);
  v33 = sub_100082B98();
  v35 = sub_10000E5F0(v33, v34, v29);
  v36 = *(v18 + 264);
  if (v35 == 1)
  {
    v38 = *(v18 + 344);
    v37 = *(v18 + 352);

    sub_10000ABCC(v36, &qword_10018DA28, &unk_100129768);
    sub_1000825B0();
    sub_100082BA4();
    v40 = 4;
LABEL_7:
    sub_100082B7C(v39, v40);
    v41 = &qword_100188EE0;
    v42 = &unk_100122AE0;
    v43 = v38;
LABEL_8:
    sub_10000ABCC(v43, v41, v42);
LABEL_9:
    sub_1000829B4();
    v44 = *(v18 + 240);
    v45 = *(v18 + 248);
    sub_1000829EC();

    sub_10000875C();
    sub_100082AD8();

    return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }

  v54 = *(v18 + 280);
  v55 = *(v18 + 248);
  sub_10000ABCC(*(v18 + 344), &qword_100188EE0, &unk_100122AE0);
  sub_100082688(v36, v54, type metadata accessor for SupportSolutions);
  sub_10000EC9C(v54, v55, &qword_100189108, &unk_1001226E0);
  type metadata accessor for SupportSolutions.ChatInfo(0);
  v56 = sub_100082B98();
  v59 = sub_10000E5F0(v56, v57, v58);
  v60 = *(v18 + 328);
  v61 = *(v18 + 248);
  if (v59 == 1)
  {
    v62 = *(v18 + 192);
    sub_10000ABCC(*(v18 + 248), &qword_100189108, &unk_1001226E0);
    sub_100003CE8(v60, 1, 1, v62);
  }

  else
  {
    sub_10000EC9C(*(v18 + 248), *(v18 + 328), &qword_100188EE0, &unk_100122AE0);
    sub_1000826E8(v61, type metadata accessor for SupportSolutions.ChatInfo);
  }

  v63 = *(v18 + 272);
  v64 = *(v18 + 280);
  sub_100082604(*(v18 + 328), *(v18 + 344));
  v65 = (v64 + *(v63 + 20));
  v66 = *v65;
  v67 = v65[1];
  sub_100082674(*v65, v67);
  sub_1000826E8(v64, type metadata accessor for SupportSolutions);
  if (v67 == 1)
  {
    v68 = 0;
  }

  else
  {
    v68 = v66;
  }

  if (v67 == 1)
  {
    v69 = 0;
  }

  else
  {
    v69 = v67;
  }

  sub_100082BD4();
  v70 = sub_100082BBC();
  v71(v70);
  v72 = (*(v19 + 88))(v64, v67);
  if (v72 == enum case for ContactType.call(_:))
  {
    if (!v69)
    {
      v38 = *(v18 + 344);
      v98 = *(v18 + 352);

      sub_1000825B0();
      sub_100082BA4();
      v40 = 1;
      goto LABEL_7;
    }

    v73 = *(v18 + 467);
    v74 = *(*(v18 + 160) + OBJC_IVAR____TtC11SupportFlow34SupportHandoffUserConsentViewModel_phoneNumberParser);
    if ((sub_1000CBE74() & 1) != 0 && (v73 & 1) == 0)
    {
      v75 = *(v18 + 160);
      *(v18 + 465) = 0;
      swift_getKeyPath();
      *(v18 + 112) = v75;
      sub_10008299C();
      sub_1000827DC(v76, v77);
      sub_100082B1C();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      *(v18 + 120) = v75;
      swift_getKeyPath();
      sub_100082B1C();
      ObservationRegistrar.willSet<A, B>(_:keyPath:)();

      sub_100052FBC();
      sub_10002EA50();
      NavigationPath.append<A>(_:)();
      swift_endAccess();
      *(v18 + 128) = v75;
      swift_getKeyPath();
      sub_100082B58();
      ObservationRegistrar.didSet<A, B>(_:keyPath:)();
    }

    v78 = swift_task_alloc();
    *(v18 + 424) = v78;
    *v78 = v18;
    sub_100082A78(v78);
    sub_100082AD8();

    return sub_100081624(v79, v80);
  }

  else
  {
    if (v72 != enum case for ContactType.chat(_:))
    {
      v93 = *(v18 + 344);
      v92 = *(v18 + 352);
      v94 = *(v18 + 232);
      v95 = *(v18 + 240);
      v96 = *(v18 + 224);

      sub_1000825B0();
      sub_100082BA4();
      sub_100082B7C(v97, 3);
      sub_10000ABCC(v93, &qword_100188EE0, &unk_100122AE0);
      (*(v94 + 8))(v95, v96);
      goto LABEL_9;
    }

    sub_100082C48();
    sub_10000EC9C(v64, v68, &qword_100188EE0, &unk_100122AE0);
    v82 = sub_100082B98();
    if (sub_10000E5F0(v82, v83, v67) == 1)
    {
      v85 = *(v18 + 344);
      v84 = *(v18 + 352);
      v86 = *(v18 + 320);

      sub_100082B58();
      sub_10000ABCC(v87, v88, v89);
      sub_1000825B0();
      v90 = sub_100082BA4();
      *v91 = 0;
      a14 = v90;
      swift_willThrow();
      sub_100082B58();
      goto LABEL_8;
    }

    v99 = sub_100082BFC();
    v100(v99);
    v101 = swift_task_alloc();
    *(v18 + 408) = v101;
    *v101 = v18;
    sub_100082AA8(v101);
    sub_100082AD8();

    return sub_1000819E8(v102);
  }
}

uint64_t sub_10007F2BC()
{
  sub_10003DCD8();
  sub_100082B64();
  sub_100052FD4();
  *v4 = v3;
  v5 = *(v1 + 376);
  *v4 = *v2;
  *(v3 + 384) = v0;

  sub_100052FF8();
  v7 = *(v6 + 368);
  v8 = *(v1 + 360);
  if (v0)
  {
    v9 = sub_100080534;
  }

  else
  {
    v9 = sub_10007F3E4;
  }

  return _swift_task_switch(v9, v8, v7);
}

uint64_t sub_10007F3E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_100082B3C();
  sub_100082B70();
  v20 = *(v18 + 336);
  v19 = *(v18 + 344);
  v22 = *(v18 + 296);
  v21 = *(v18 + 304);
  v23 = *(v18 + 288);
  CaseDetails.bizChatURL.getter();
  v25 = v24;
  URL.init(string:)();

  sub_10000ABCC(v19, &qword_100188EE0, &unk_100122AE0);
  sub_100082604(v20, v19);
  v26 = CaseDetails.phoneNumber.getter();
  v28 = v27;
  (*(v22 + 8))(v21, v23);
  sub_100082BD4();
  v29 = sub_100082BBC();
  v30(v29);
  v31 = (*(v25 + 88))(v21, v23);
  if (v31 == enum case for ContactType.call(_:))
  {
    if (v28)
    {
      v32 = *(v18 + 467);
      v33 = *(*(v18 + 160) + OBJC_IVAR____TtC11SupportFlow34SupportHandoffUserConsentViewModel_phoneNumberParser);
      if ((sub_1000CBE74() & 1) != 0 && (v32 & 1) == 0)
      {
        v34 = *(v18 + 160);
        *(v18 + 465) = 0;
        swift_getKeyPath();
        *(v18 + 112) = v34;
        sub_10008299C();
        sub_1000827DC(v35, v36);
        sub_100082B1C();
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        *(v18 + 120) = v34;
        swift_getKeyPath();
        sub_100082B1C();
        ObservationRegistrar.willSet<A, B>(_:keyPath:)();

        sub_100052FBC();
        sub_10002EA50();
        NavigationPath.append<A>(_:)();
        swift_endAccess();
        *(v18 + 128) = v34;
        swift_getKeyPath();
        sub_100082B58();
        ObservationRegistrar.didSet<A, B>(_:keyPath:)();
      }

      v37 = swift_task_alloc();
      *(v18 + 424) = v37;
      *v37 = v18;
      sub_100082A78(v37);
      sub_100082AD8();

      return sub_100081624(v38, v39);
    }

    v62 = *(v18 + 344);
    v61 = *(v18 + 352);

    sub_1000825B0();
    sub_100082BA4();
    sub_100082B7C(v63, 1);
    v53 = &qword_100188EE0;
    v54 = &unk_100122AE0;
    v52 = v62;
    goto LABEL_14;
  }

  if (v31 != enum case for ContactType.chat(_:))
  {
    v56 = *(v18 + 344);
    v55 = *(v18 + 352);
    v58 = *(v18 + 232);
    v57 = *(v18 + 240);
    v59 = *(v18 + 224);

    sub_1000825B0();
    sub_100082BA4();
    sub_100082B7C(v60, 3);
    sub_10000ABCC(v56, &qword_100188EE0, &unk_100122AE0);
    (*(v58 + 8))(v57, v59);
LABEL_15:
    sub_1000829B4();
    v64 = *(v18 + 240);
    v65 = *(v18 + 248);
    sub_1000829EC();

    sub_10000875C();
    sub_100082AD8();

    return v67(v66, v67, v68, v69, v70, v71, v72, v73, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }

  sub_100082C48();
  sub_10000EC9C(v21, v26, &qword_100188EE0, &unk_100122AE0);
  v42 = sub_100082B98();
  if (sub_10000E5F0(v42, v43, v23) == 1)
  {
    v45 = *(v18 + 344);
    v44 = *(v18 + 352);
    v46 = *(v18 + 320);

    sub_100082B58();
    sub_10000ABCC(v47, v48, v49);
    sub_1000825B0();
    v50 = sub_100082BA4();
    *v51 = 0;
    a14 = v50;
    swift_willThrow();
    sub_100082B58();
LABEL_14:
    sub_10000ABCC(v52, v53, v54);
    goto LABEL_15;
  }

  v74 = sub_100082BFC();
  v75(v74);
  v76 = swift_task_alloc();
  *(v18 + 408) = v76;
  *v76 = v18;
  sub_100082AA8(v76);
  sub_100082AD8();

  return sub_1000819E8(v77);
}

uint64_t sub_10007F86C()
{
  sub_10003DCD8();
  sub_100082B64();
  sub_100052FD4();
  *v4 = v3;
  v5 = *(v1 + 408);
  *v4 = *v2;
  *(v3 + 416) = v0;

  sub_100052FF8();
  v7 = *(v6 + 368);
  v8 = *(v1 + 360);
  if (v0)
  {
    v9 = sub_10008062C;
  }

  else
  {
    v9 = sub_10007F994;
  }

  return _swift_task_switch(v9, v8, v7);
}

uint64_t sub_10007F994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_100082C2C();
  v18 = v16[43];
  v17 = v16[44];
  v19 = v16[27];
  v20 = v16[24];
  v21 = v16[25];

  v22 = sub_100082B2C();
  v23(v22);
  sub_10000ABCC(v18, &qword_100188EE0, &unk_100122AE0);
  sub_1000829CC();
  sub_100082A44();

  sub_100082A68();
  sub_100082C10();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_10007FAA0()
{
  sub_100025A94();
  v1 = *v0;
  v2 = *(*v0 + 424);
  v6 = *v0;

  v3 = *(v1 + 368);
  v4 = *(v1 + 360);

  return _swift_task_switch(sub_10007FBBC, v4, v3);
}

uint64_t sub_10007FBBC()
{
  v1 = *(v0 + 160);
  v2 = *(sub_1000810F8() + 16);

  if (v2)
  {
    v3 = *(v0 + 160);
    v4 = *(v0 + 400);

    v5 = *(sub_1000810F8() + 16);

    if (v5 != 1)
    {
      v27 = *(v0 + 344);
      v26 = *(v0 + 352);
      v28 = *(v0 + 160);

      sub_10008094C();
      *(v0 + 464) = 1;
      swift_getKeyPath();
      *(v0 + 88) = v28;
      sub_10008299C();
      sub_1000827DC(v29, v30);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      *(v0 + 96) = v28;
      swift_getKeyPath();
      ObservationRegistrar.willSet<A, B>(_:keyPath:)();

      sub_100052FBC();
      sub_10002EA50();
      NavigationPath.append<A>(_:)();
      swift_endAccess();
      *(v0 + 104) = v28;
      swift_getKeyPath();
      sub_100082B58();
      ObservationRegistrar.didSet<A, B>(_:keyPath:)();

      sub_10000ABCC(v27, &qword_100188EE0, &unk_100122AE0);
      sub_1000829CC();
      v40 = *(v0 + 184);
      v41 = *(v0 + 168);

      sub_100082A68();
      goto LABEL_9;
    }

    v7 = *(v0 + 168);
    v6 = *(v0 + 176);
    v8 = *(v0 + 160);
    v9 = sub_1000810F8();
    sub_1001098B0(v9, v7);

    v10 = sub_100082B98();
    if (sub_10000E5F0(v10, v11, v6) == 1)
    {
      v13 = *(v0 + 344);
      v12 = *(v0 + 352);
      v14 = *(v0 + 168);

      v15 = &qword_10018DA18;
      v16 = &unk_100129750;
LABEL_7:
      sub_10000ABCC(v14, v15, v16);
      sub_1000825B0();
      sub_100082BA4();
      *v22 = 2;
      swift_willThrow();
      sub_10000ABCC(v13, &qword_100188EE0, &unk_100122AE0);
      sub_1000829B4();
      v23 = *(v0 + 240);
      v24 = *(v0 + 248);
      sub_1000829EC();

      sub_10000875C();
LABEL_9:

      return v25();
    }

    v36 = *(v0 + 176);
    v35 = *(v0 + 184);
    sub_100082688(*(v0 + 168), v35, type metadata accessor for PhoneNumberOption);
    v37 = *(v36 + 20);
    v38 = swift_task_alloc();
    *(v0 + 448) = v38;
    *v38 = v0;
    v38[1] = sub_100080310;
    v39 = *(v0 + 160);
    v34 = v35 + v37;
  }

  else
  {
    v17 = *(v0 + 312);
    v18 = *(v0 + 192);
    String.append(_:)(*(v0 + 392));

    URL.init(string:)();

    v19 = sub_100082B98();
    if (sub_10000E5F0(v19, v20, v18) == 1)
    {
      v13 = *(v0 + 344);
      v21 = *(v0 + 352);
      v14 = *(v0 + 312);

      v15 = &qword_100188EE0;
      v16 = &unk_100122AE0;
      goto LABEL_7;
    }

    (*(*(v0 + 200) + 32))(*(v0 + 208), *(v0 + 312), *(v0 + 192));
    v32 = swift_task_alloc();
    *(v0 + 432) = v32;
    *v32 = v0;
    v32[1] = sub_1000800DC;
    v33 = *(v0 + 160);
    v34 = *(v0 + 208);
  }

  return sub_1000819E8(v34);
}

uint64_t sub_1000800DC()
{
  sub_10003DCD8();
  sub_100082B64();
  sub_100052FD4();
  *v4 = v3;
  v5 = *(v1 + 432);
  *v4 = *v2;
  *(v3 + 440) = v0;

  sub_100052FF8();
  v7 = *(v6 + 368);
  v8 = *(v1 + 360);
  if (v0)
  {
    v9 = sub_10008073C;
  }

  else
  {
    v9 = sub_100080204;
  }

  return _swift_task_switch(v9, v8, v7);
}

uint64_t sub_100080204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_100082C2C();
  v18 = v16[43];
  v17 = v16[44];
  v20 = v16[25];
  v19 = v16[26];
  v21 = v16[24];

  v22 = sub_100082B2C();
  v23(v22);
  sub_10000ABCC(v18, &qword_100188EE0, &unk_100122AE0);
  sub_1000829CC();
  sub_100082A44();

  sub_100082A68();
  sub_100082C10();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_100080310()
{
  sub_10003DCD8();
  sub_100082B64();
  sub_100052FD4();
  *v4 = v3;
  v5 = *(v1 + 448);
  *v4 = *v2;
  *(v3 + 456) = v0;

  sub_100052FF8();
  v7 = *(v6 + 368);
  v8 = *(v1 + 360);
  if (v0)
  {
    v9 = sub_10008084C;
  }

  else
  {
    v9 = sub_100080438;
  }

  return _swift_task_switch(v9, v8, v7);
}

uint64_t sub_100080438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_100082C2C();
  v18 = v16[43];
  v17 = v16[44];
  v19 = v16[23];

  sub_100082AF4();
  sub_10000ABCC(v18, &qword_100188EE0, &unk_100122AE0);
  sub_1000829CC();
  sub_100082A44();

  sub_100082A68();
  sub_100082C10();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_100080534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_100082B3C();
  sub_100082B70();
  v20 = v18[43];
  v19 = v18[44];

  sub_10000ABCC(v20, &qword_100188EE0, &unk_100122AE0);
  v21 = v18[48];
  sub_1000829B4();
  sub_100082A14();

  sub_10000875C();
  sub_100082AD8();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_10008062C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_100082B3C();
  sub_100082B70();
  v20 = v18[43];
  v19 = v18[44];
  v21 = v18[27];
  v22 = v18[24];
  v23 = v18[25];

  v24 = sub_100082B2C();
  v25(v24);
  sub_10000ABCC(v20, &qword_100188EE0, &unk_100122AE0);
  v26 = v18[52];
  sub_1000829B4();
  sub_100082A14();

  sub_10000875C();
  sub_100082AD8();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_10008073C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_100082B3C();
  sub_100082B70();
  v20 = v18[43];
  v19 = v18[44];
  v22 = v18[25];
  v21 = v18[26];
  v23 = v18[24];

  v24 = sub_100082B2C();
  v25(v24);
  sub_10000ABCC(v20, &qword_100188EE0, &unk_100122AE0);
  v26 = v18[55];
  sub_1000829B4();
  sub_100082A14();

  sub_10000875C();
  sub_100082AD8();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_10008084C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_100082B3C();
  sub_100082B70();
  v20 = v18[43];
  v19 = v18[44];
  v21 = v18[23];

  sub_100082AF4();
  sub_10000ABCC(v20, &qword_100188EE0, &unk_100122AE0);
  v22 = v18[57];
  sub_1000829B4();
  sub_100082A14();

  sub_10000875C();
  sub_100082AD8();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_10008094C()
{
  v0 = type metadata accessor for NavigationPath();
  v1 = sub_100008780(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  sub_10000C30C();
  v8 = v7 - v6;
  sub_10007E50C(v7 - v6);
  v9 = NavigationPath.isEmpty.getter();
  v10 = *(v3 + 8);
  result = v10(v8, v0);
  if ((v9 & 1) == 0)
  {
    sub_10007E50C(v8);
    v12 = NavigationPath.count.getter();
    v10(v8, v0);
    swift_getKeyPath();
    sub_10008299C();
    sub_1000827DC(v13, v14);
    sub_100082BE8();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    sub_100082BE8();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    sub_100052FBC();
    NavigationPath.removeLast(_:)(v12);
    swift_endAccess();
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();
  }

  return result;
}

uint64_t sub_100080B18()
{
  sub_100025A94();
  v1[2] = v0;
  type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[4] = v3;
  v1[5] = v2;

  return _swift_task_switch(sub_100080BAC, v3, v2);
}

uint64_t sub_100080BAC()
{
  sub_100025A94();
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC11SupportFlow34SupportHandoffUserConsentViewModel_dataProvider);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_100080C44;

  return sub_100087D1C();
}

uint64_t sub_100080C44()
{
  sub_10003DCD8();
  v1 = *v0;
  v2 = *(*v0 + 48);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 56) = v4;
  *v4 = v3;
  v4[1] = sub_100080D84;
  v5 = *(v1 + 16);

  return sub_10007E834();
}

uint64_t sub_100080D84()
{
  sub_10003DCD8();
  sub_100082B64();
  sub_100052FD4();
  *v4 = v3;
  v5 = *(v1 + 56);
  *v4 = *v2;
  *(v3 + 64) = v0;

  sub_100052FF8();
  v7 = *(v6 + 40);
  v8 = *(v1 + 32);
  if (v0)
  {
    v9 = sub_100080F04;
  }

  else
  {
    v9 = sub_100080EAC;
  }

  return _swift_task_switch(v9, v8, v7);
}

uint64_t sub_100080EAC()
{
  sub_100025A94();
  v1 = *(v0 + 24);

  sub_100082A68();

  return v2();
}

uint64_t sub_100080F04()
{
  sub_100025A94();
  v1 = *(v0 + 24);

  sub_10000875C();
  v3 = *(v0 + 64);

  return v2();
}

BOOL sub_100080F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (a2 | a4) == 0;
  if (a2 && a4)
  {
    if (a1 == a3 && a2 == a4)
    {
      v5 = 1;
    }

    else
    {
      v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return (v5 & 1) == 0;
}

uint64_t sub_100080FB4(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC11SupportFlow34SupportHandoffUserConsentViewModel__handoffNavigationPath;
  swift_beginAccess();
  v5 = type metadata accessor for NavigationPath();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_100081050()
{
  sub_10008299C();
  sub_1000827DC(v0, v1);
  return ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1000810F8()
{
  swift_getKeyPath();
  sub_10008299C();
  sub_1000827DC(v1, v2);
  sub_10006F2DC();

  v3 = *(v0 + OBJC_IVAR____TtC11SupportFlow34SupportHandoffUserConsentViewModel__phoneNumberOptions);
}

uint64_t sub_100081184(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1000811B0();
}

uint64_t sub_1000811B0()
{
  swift_getKeyPath();
  sub_100081050();
}

uint64_t sub_100081224(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC11SupportFlow34SupportHandoffUserConsentViewModel__phoneNumberOptions);
  *(a1 + OBJC_IVAR____TtC11SupportFlow34SupportHandoffUserConsentViewModel__phoneNumberOptions) = a2;
}

uint64_t sub_100081268()
{
  swift_getKeyPath();
  sub_10008299C();
  sub_1000827DC(v1, v2);
  sub_10006F2DC();

  v3 = *(v0 + OBJC_IVAR____TtC11SupportFlow34SupportHandoffUserConsentViewModel__phoneNumberDescription);
  v4 = *(v0 + OBJC_IVAR____TtC11SupportFlow34SupportHandoffUserConsentViewModel__phoneNumberDescription + 8);

  return v3;
}

uint64_t sub_100081304(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_100081344(v2, v3);
}

uint64_t sub_100081344(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11SupportFlow34SupportHandoffUserConsentViewModel__phoneNumberDescription);
  if (sub_100080F60(*(v2 + OBJC_IVAR____TtC11SupportFlow34SupportHandoffUserConsentViewModel__phoneNumberDescription), *(v2 + OBJC_IVAR____TtC11SupportFlow34SupportHandoffUserConsentViewModel__phoneNumberDescription + 8), a1, a2))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100081050();
  }

  else
  {
    *v5 = a1;
    v5[1] = a2;
  }
}

uint64_t sub_100081440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC11SupportFlow34SupportHandoffUserConsentViewModel__phoneNumberDescription);
  v4 = *(a1 + OBJC_IVAR____TtC11SupportFlow34SupportHandoffUserConsentViewModel__phoneNumberDescription + 8);
  *v3 = a2;
  v3[1] = a3;
}

uint64_t sub_100081488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for NavigationPath();
  v11 = sub_100008780(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  sub_10000C30C();
  v18 = v17 - v16;
  NavigationPath.init()();
  (*(v13 + 32))(v5 + OBJC_IVAR____TtC11SupportFlow34SupportHandoffUserConsentViewModel__handoffNavigationPath, v18, v10);
  *(v5 + OBJC_IVAR____TtC11SupportFlow34SupportHandoffUserConsentViewModel__phoneNumberOptions) = _swiftEmptyArrayStorage;
  v19 = (v5 + OBJC_IVAR____TtC11SupportFlow34SupportHandoffUserConsentViewModel__phoneNumberDescription);
  *v19 = 0;
  v19[1] = 0;
  v20 = OBJC_IVAR____TtC11SupportFlow34SupportHandoffUserConsentViewModel_phoneNumberParser;
  type metadata accessor for SupportPhoneNumberParser();
  swift_allocObject();
  *(v5 + v20) = sub_1000CF954();
  ObservationRegistrar.init()();
  *(v5 + OBJC_IVAR____TtC11SupportFlow34SupportHandoffUserConsentViewModel_dataProvider) = a1;
  sub_100082688(a2, v5 + OBJC_IVAR____TtC11SupportFlow34SupportHandoffUserConsentViewModel_bundle, type metadata accessor for HandoffBundle);
  v21 = (v5 + OBJC_IVAR____TtC11SupportFlow34SupportHandoffUserConsentViewModel_dismissAction);
  *v21 = a3;
  v21[1] = a4;
  return v5;
}

uint64_t sub_100081624(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Locale();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[8] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[9] = v8;
  v3[10] = v7;

  return _swift_task_switch(sub_10008171C, v8, v7);
}

uint64_t sub_10008171C()
{
  sub_10003DCD8();
  v1 = v0[7];
  v2 = *(v0[4] + OBJC_IVAR____TtC11SupportFlow34SupportHandoffUserConsentViewModel_phoneNumberParser);
  v3 = sub_1000CBF60(v0[2], v0[3]);
  sub_100081344(v3, v4);
  static Locale.current.getter();
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_1000817EC;
  v6 = v0[7];
  v8 = v0[2];
  v7 = v0[3];

  return sub_1000CC0FC();
}

uint64_t sub_1000817EC()
{
  v1 = *v0;
  sub_100052FD4();
  *v3 = v2;
  v4 = v1[11];
  v5 = v1[7];
  v6 = v1[6];
  v7 = v1[5];
  v12 = *v0;
  *(v2 + 96) = v8;

  (*(v6 + 8))(v5, v7);
  v9 = v1[10];
  v10 = v1[9];

  return _swift_task_switch(sub_100081970, v10, v9);
}

uint64_t sub_100081970()
{
  sub_10003DCD8();
  v1 = v0[12];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[4];

  sub_1000811B0();

  sub_10000875C();

  return v5();
}

uint64_t sub_1000819E8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for ContinuousClock();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = *(*(sub_100003768(&qword_100188EE0, &unk_100122AE0) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[8] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[9] = v8;
  v2[10] = v7;

  return _swift_task_switch(sub_100081B14, v8, v7);
}

uint64_t sub_100081B14()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[2];
  v4 = type metadata accessor for URL();
  sub_10000AF7C(v4);
  (*(v5 + 16))(v2, v3, v4);
  sub_100003CE8(v2, 0, 1, v4);
  sub_10001BBBC(v2);
  sub_10000ABCC(v2, &qword_100188EE0, &unk_100122AE0);
  v6 = static Duration.seconds(_:)();
  v8 = v7;
  static Clock<>.continuous.getter();
  v9 = swift_task_alloc();
  v0[11] = v9;
  *v9 = v0;
  v9[1] = sub_100081C64;
  v10 = v0[6];

  return (sub_100111FB4)(v6, v8, 0, 0, 1);
}

uint64_t sub_100081C64()
{
  sub_100082B64();
  sub_100052FD4();
  *v4 = v3;
  v5 = v1[11];
  v6 = v1[6];
  v7 = v1[5];
  v8 = v1[4];
  *v4 = *v2;
  *(v3 + 96) = v0;

  (*(v7 + 8))(v6, v8);
  sub_100052FF8();
  v10 = *(v9 + 80);
  v11 = v1[9];
  if (v0)
  {
    v12 = sub_100081E80;
  }

  else
  {
    v12 = sub_100081DEC;
  }

  return _swift_task_switch(v12, v11, v10);
}

uint64_t sub_100081DEC()
{
  sub_10003DCD8();
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = v0[3];

  v5 = sub_10008094C();
  v6 = *(v4 + OBJC_IVAR____TtC11SupportFlow34SupportHandoffUserConsentViewModel_dismissAction);
  v7 = *(v4 + OBJC_IVAR____TtC11SupportFlow34SupportHandoffUserConsentViewModel_dismissAction + 8);
  v6(v5);

  sub_100082A68();

  return v8();
}

uint64_t sub_100081E80()
{
  sub_100025A94();
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];

  sub_10000875C();
  v5 = v0[12];

  return v4();
}

uint64_t sub_100081EF0()
{
  v1 = OBJC_IVAR____TtC11SupportFlow34SupportHandoffUserConsentViewModel__handoffNavigationPath;
  v2 = type metadata accessor for NavigationPath();
  sub_10000AF7C(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC11SupportFlow34SupportHandoffUserConsentViewModel_dataProvider);

  sub_1000826E8(v0 + OBJC_IVAR____TtC11SupportFlow34SupportHandoffUserConsentViewModel_bundle, type metadata accessor for HandoffBundle);
  v5 = *(v0 + OBJC_IVAR____TtC11SupportFlow34SupportHandoffUserConsentViewModel__phoneNumberOptions);

  v6 = *(v0 + OBJC_IVAR____TtC11SupportFlow34SupportHandoffUserConsentViewModel__phoneNumberDescription + 8);

  v7 = *(v0 + OBJC_IVAR____TtC11SupportFlow34SupportHandoffUserConsentViewModel_phoneNumberParser);

  v8 = *(v0 + OBJC_IVAR____TtC11SupportFlow34SupportHandoffUserConsentViewModel_dismissAction + 8);

  v9 = OBJC_IVAR____TtC11SupportFlow34SupportHandoffUserConsentViewModel___observationRegistrar;
  v10 = type metadata accessor for ObservationRegistrar();
  sub_10000AF7C(v10);
  (*(v11 + 8))(v0 + v9);
  return v0;
}

uint64_t sub_100081FFC()
{
  sub_100081EF0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_10008207C()
{
  result = type metadata accessor for NavigationPath();
  if (v1 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = type metadata accessor for HandoffBundle();
    if (v2 <= 0x3F)
    {
      v5 = *(result - 8) + 64;
      result = type metadata accessor for ObservationRegistrar();
      if (v3 <= 0x3F)
      {
        v6 = *(result - 8) + 64;
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_1000821C8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for ContactType();
    v9 = a1 + *(a3 + 20);

    return sub_10000E5F0(v9, a2, v8);
  }
}

void *sub_100082264(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ContactType();
    v8 = v5 + *(a4 + 20);

    return sub_100003CE8(v8, a2, a2, v7);
  }

  return result;
}

unint64_t sub_100082304()
{
  result = sub_1000823A8();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ContactType();
    if (v2 <= 0x3F)
    {
      result = sub_100082404();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1000823A8()
{
  result = qword_10018D9D0;
  if (!qword_10018D9D0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_10018D9D0);
  }

  return result;
}

unint64_t sub_100082404()
{
  result = qword_10018D9D8;
  if (!qword_10018D9D8)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_10018D9D8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HandoffErrorAlert.Origin(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x100082518);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100082554()
{
  result = qword_10018DA10;
  if (!qword_10018DA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018DA10);
  }

  return result;
}

unint64_t sub_1000825B0()
{
  result = qword_10018DA30;
  if (!qword_10018DA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018DA30);
  }

  return result;
}

uint64_t sub_100082604(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003768(&qword_100188EE0, &unk_100122AE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100082674(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_100082688(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_10000AF7C(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1000826E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_10000AF7C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_100082740@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1000810F8();
  *a2 = result;
  return result;
}

uint64_t sub_10008278C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_100081268();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1000827DC(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for SupportHandoffUserConsentViewModel.Error(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x10008290CLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100082948()
{
  result = qword_10018DA40;
  if (!qword_10018DA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018DA40);
  }

  return result;
}

uint64_t sub_1000829B4()
{
  v2 = v0[42];
  result = v0[43];
  v4 = v0[40];
  v3 = v0[41];
  v6 = v0[38];
  v5 = v0[39];
  v7 = v0[35];
  v9 = v0[32];
  v8 = v0[33];
  return result;
}

uint64_t sub_1000829CC()
{
  v2 = v0[42];
  result = v0[43];
  v4 = v0[40];
  v3 = v0[41];
  v6 = v0[38];
  v5 = v0[39];
  v7 = v0[35];
  v9 = v0[32];
  v8 = v0[33];
  v10 = v0[30];
  v11 = v0[31];
  v13 = v0[26];
  v12 = v0[27];
  return result;
}

uint64_t sub_1000829EC()
{
  v3 = v0[27];
  v4 = v0[26];
  v5 = v0[23];
  v6 = v0[21];
}

uint64_t sub_100082A14()
{
  v2 = v0[30];
  v4 = v0[27];
  v5 = v0[26];
  v6 = v0[23];
  v7 = v0[21];
}

uint64_t sub_100082A44()
{
  v3 = *(v0 + 184);
  v4 = *(v0 + 168);
}

uint64_t sub_100082A68()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_100082A78(uint64_t a1)
{
  *(a1 + 8) = sub_10007FAA0;
  v3 = *(v2 + 160);
  return v1;
}

uint64_t sub_100082AA8(uint64_t a1)
{
  *(a1 + 8) = sub_10007F86C;
  v2 = *(v1 + 160);
  return *(v1 + 216);
}

uint64_t sub_100082AF4()
{

  return sub_1000826E8(v0, type metadata accessor for PhoneNumberOption);
}

uint64_t sub_100082B7C@<X0>(_BYTE *a1@<X1>, char a2@<W8>)
{
  *a1 = a2;

  return swift_willThrow();
}

uint64_t sub_100082BA4()
{

  return swift_allocError();
}

void sub_100082BD4()
{
  v2[49] = v1;
  v2[50] = v0;
  v4 = v2[29];
  v3 = v2[30];
  v5 = v2[28];
  v6 = v2[20];
}

uint64_t sub_100082BFC()
{
  v1 = v0[40];
  result = v0[27];
  v3 = v0[24];
  v4 = *(v0[25] + 32);
  return result;
}

uint64_t sub_100082C48()
{
  v2 = v0[43];
  v3 = v0[40];
  v4 = v0[24];
}

double sub_100082C6C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_100083754(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_10001E894(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

double sub_100082CD0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_1000837CC(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_10001E894(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_100082D64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  if (*(a3 + 16) && (v8 = sub_100083754(a1, a2), (v9 & 1) != 0))
  {
    v10 = v8;
    v11 = *(a3 + 56);
    v12 = a4(0);
    (*(*(v12 - 8) + 16))(a5, v11 + *(*(v12 - 8) + 72) * v10, v12);
    v13 = sub_100083BD4();
  }

  else
  {
    a4(0);
    v13 = sub_100083BE8();
  }

  return sub_100003CE8(v13, v14, v15, v16);
}

uint64_t sub_100082E24(int a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 2;
  }

  v3 = sub_10008387C(a1);
  if (v4)
  {
    return *(*(a2 + 56) + v3);
  }

  else
  {
    return 2;
  }
}

void *sub_100082E70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_100083754(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

uint64_t sub_100082EB8@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  switch(a1)
  {
    case 8211:
      if (qword_1001883E0 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for ImageResource();
      v4 = v3;
      v5 = qword_1001A59F8;
      goto LABEL_16;
    case 8212:
    case 8228:
      goto LABEL_9;
    case 8213:
    case 8214:
    case 8215:
    case 8216:
    case 8218:
    case 8220:
    case 8221:
    case 8223:
    case 8225:
    case 8226:
    case 8227:
    case 8229:
    case 8230:
      goto LABEL_12;
    case 8217:
    case 8219:
    case 8222:
    case 8224:
      if (qword_1001883F0 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for ImageResource();
      v4 = v3;
      v5 = qword_1001A5A28;
      goto LABEL_16;
    case 8231:
    case 8232:
      if (qword_100188418 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for ImageResource();
      v4 = v3;
      v5 = qword_1001A5AA0;
      goto LABEL_16;
    default:
      if (a1 == 8206)
      {
LABEL_9:
        if (qword_1001883F8 != -1)
        {
          swift_once();
        }

        v3 = type metadata accessor for ImageResource();
        v4 = v3;
        v5 = qword_1001A5A40;
LABEL_16:
        v10 = sub_10000C2D4(v3, v5);
        (*(*(v4 - 8) + 16))(a2, v10, v4);
        v6 = sub_100083BD4();
      }

      else
      {
LABEL_12:
        type metadata accessor for ImageResource();
        v6 = sub_100083BE8();
      }

      return sub_100003CE8(v6, v7, v8, v9);
  }
}

void sub_1000830E4(int a1)
{
  switch(a1)
  {
    case 8217:
    case 8219:
    case 8222:
    case 8224:
      sub_100083BC8();
      break;
    default:
      return;
  }
}

void sub_1000831E4(char a1)
{
  switch(a1)
  {
    case 7:
      sub_100083BC8();
      break;
    default:
      return;
  }
}

uint64_t sub_1000832D8@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  switch(a1)
  {
    case 1:
    case 2:
      if (qword_1001883E8 != -1)
      {
        swift_once();
      }

      v3 = qword_1001A5A10;
      break;
    case 3:
    case 4:
      if (qword_100188408 != -1)
      {
        swift_once();
      }

      v3 = qword_1001A5A70;
      break;
    case 5:
      if (qword_1001883D8 != -1)
      {
        swift_once();
      }

      v3 = qword_1001A59E0;
      break;
    case 6:
      if (qword_100188400 != -1)
      {
        swift_once();
      }

      v3 = qword_1001A5A58;
      break;
    case 7:
    case 8:
      if (qword_1001883D0 != -1)
      {
        swift_once();
      }

      v3 = qword_1001A59C8;
      break;
    default:
      if (qword_100188410 != -1)
      {
        swift_once();
      }

      v3 = qword_1001A5A88;
      break;
  }

  v4 = type metadata accessor for ImageResource();
  v5 = sub_10000C2D4(v4, v3);
  v6 = *(*(v4 - 8) + 16);

  return v6(a2, v5, v4);
}

uint64_t sub_100083500(int a1)
{
  v1 = a1 - 8206;
  result = 0;
  switch(v1)
  {
    case 0:
      result = 6;
      break;
    case 1:
      result = 7;
      break;
    case 5:
      result = 5;
      break;
    case 6:
      result = 4;
      break;
    case 11:
    case 16:
      result = 2;
      break;
    case 13:
    case 18:
      result = 1;
      break;
    case 22:
      result = 3;
      break;
    case 25:
    case 26:
      return result;
    default:
      result = 9;
      break;
  }

  return result;
}

uint64_t sub_1000835F4(unsigned int a1)
{
  v3 = sub_100083AFC(v1);
  if (!v3)
  {
    v7 = 0u;
    v8 = 0u;
    goto LABEL_10;
  }

  v4 = v3;
  AnyHashable.init<A>(_:)();
  sub_100082CD0(v6, v4, &v7);

  sub_10002B078(v6);
  if (!*(&v8 + 1))
  {
LABEL_10:
    sub_10002E810(&v7);
    return 0;
  }

  sub_100003768(&qword_10018DA48, &qword_100129888);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (*(v6[0] + 16) <= a1)
  {

    return 0;
  }

  sub_10001E894(v6[0] + 32 * a1 + 32, v6);

  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_100083754(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_1000838C4(a1, a2, v6);
}

unint64_t sub_1000837CC(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100083978(a1, v4);
}

unint64_t sub_100083810(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v4 = Hasher._finalize()();

  return sub_100083A3C(a1, v4);
}

unint64_t sub_10008387C(int a1)
{
  v3 = *(v1 + 40);
  v4 = static Hasher._hash(seed:bytes:count:)();

  return sub_100083A9C(a1, v4);
}

unint64_t sub_1000838C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_100083978(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    sub_100083B68(*(v2 + 48) + 40 * i, v7);
    v5 = static AnyHashable.== infix(_:_:)();
    sub_10002B078(v7);
    if (v5)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_100083A3C(unsigned __int8 a1, uint64_t a2)
{
  v3 = a1;
  v4 = ~(-1 << *(v2 + 32));
    ;
  }

  return result;
}

unint64_t sub_100083A9C(int a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

uint64_t sub_100083AFC(void *a1)
{
  v1 = [a1 accessoryInfo];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

_BYTE *storeEnumTagSinglePayload for WiFiPlacardInfoItemType(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x100083C98);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

BOOL sub_100083CD0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100176700, v2);

  return v3 != 0;
}

BOOL sub_100083D24@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100083CD0(*a1);
  *a2 = result;
  return result;
}

void sub_100083D58(uint64_t a1@<X8>)
{
  strcpy(a1, "disconnected");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

uint64_t sub_100083D7C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000E7664();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100083DA4(uint64_t a1)
{
  result = sub_100083DCC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100083DCC()
{
  result = qword_10018DA80;
  if (!qword_10018DA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018DA80);
  }

  return result;
}

unint64_t sub_100083E24()
{
  result = qword_10018DA88;
  if (!qword_10018DA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018DA88);
  }

  return result;
}

uint64_t sub_100083E78()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v26[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v5 = sub_100003768(&qword_1001889F0, &qword_100121D20);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v26[-v7 - 8];
  if (qword_100188220 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for FlowImage();
  v10 = sub_10000C2D4(v9, qword_10018DA68);
  v25 = sub_100021124();
  v12 = v11;
  if (qword_100188210 != -1)
  {
    swift_once();
  }

  v13 = qword_10018DA50;
  v14 = *algn_10018DA58;
  v15 = qword_100188218;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = qword_10018DA60;
  sub_100053ED8(v10, v8);
  sub_100003CE8(v8, 0, 1, v9);
  v27 = &type metadata for WiFiPlacardInfoItemType;
  v28 = sub_100084324();
  swift_retain_n();
  UUID.init()();
  v17 = UUID.uuidString.getter();
  v19 = v18;
  (*(v1 + 8))(v4, v0);
  v20 = type metadata accessor for PlacardInfoItem(0);
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  v23 = sub_1000F04E8(0, v17, v19, v8, v25, v12, v13, v14, v16, v26);

  return v23;
}

uint64_t sub_100084118()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_10018DA50 = result;
  *algn_10018DA58 = v5;
  return result;
}

uint64_t sub_100084220()
{
  type metadata accessor for ActionInfo(0);
  v0 = sub_100021258();
  v2 = sub_1000EDA28(v0, v1, 0xD00000000000002DLL, 0x80000001001375A0);

  qword_10018DA60 = v2;
  return result;
}

uint64_t sub_100084280()
{
  v0 = type metadata accessor for FlowImage();
  sub_10000C270(v0, qword_10018DA68);
  v1 = sub_10000C2D4(v0, qword_10018DA68);
  v1->i64[0] = 0xD00000000000001BLL;
  v1->i64[1] = 0x8000000100137640;
  v1[1].i8[0] = 0;
  v1[1].i64[1] = 0;
  v1[2].i64[0] = 0;
  v1[2].i8[8] = 1;
  v1[3] = vdupq_n_s64(0x4046000000000000uLL);

  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_100084324()
{
  result = qword_10018DA90;
  if (!qword_10018DA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018DA90);
  }

  return result;
}

uint64_t sub_1000843A4(uint64_t a1, char a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v8, v4);
    return v11[1];
  }

  return a1;
}

uint64_t sub_1000844E4@<X0>(uint64_t a1@<X0>, char a2@<W1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_100058208(a3);
  v10 = v9;
  sub_1000843A4(a1, a2 & 1);
  v11 = sub_1000DEC54(a3, 0);

  v13[3] = &type metadata for MessagesStepProvider;
  v13[4] = sub_10001362C();
  v13[0] = v11;
  return sub_100018FE0(v8, v10, v13, a4);
}

_BYTE *storeEnumTagSinglePayload for ForgotPasswordStepProvider(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x100084670);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1000846C4(char a1)
{
  switch(a1)
  {
    case 1:
      sub_1000851EC();
      sub_100084F80();
      sub_100084FD4();
      v13 = _ConditionalContent<>.init(storage:)();
      sub_1000851D4(v13, v14, v15, v16, v17, v18, v19, v20, v21[0]);
      sub_100003768(&qword_10018DAD0, &qword_100129C38);
      sub_100003768(&qword_10018DAC8, &qword_100129C30);
      sub_100084EF4();
      sub_100085028();
      result = sub_1000851AC();
      break;
    case 2:
      sub_1000851EC();
      *&v21[0] = v12 + 5;
      *(&v21[0] + 1) = v11;
      v22 = 0;
      sub_100084E30();
      sub_10001D5E8();
      _ConditionalContent<>.init(storage:)();
      sub_100084E84(v24, v21);
      v23 = 1;
      sub_100003768(&qword_10018DAD0, &qword_100129C38);
      sub_100003768(&qword_10018DAC8, &qword_100129C30);
      sub_100084EF4();
      sub_100085028();
      sub_1000851AC();
      result = sub_1000850B4(v24);
      break;
    case 3:
      v29 = 0;
      v27 = 0u;
      v28 = 0u;
      strcpy(v26, "UNLOCK_ACCOUNT");
      v26[15] = -18;
      sub_10001D6C8(v26, v21);
      v22 = 1;
      sub_100084E30();
      sub_10001D5E8();
      _ConditionalContent<>.init(storage:)();
      sub_100084E84(v24, v21);
      v23 = 1;
      sub_100003768(&qword_10018DAD0, &qword_100129C38);
      sub_100003768(&qword_10018DAC8, &qword_100129C30);
      sub_100084EF4();
      sub_100085028();
      sub_1000851AC();
      sub_1000850B4(v24);
      result = sub_10001D784(v26);
      break;
    default:
      type metadata accessor for ForgotPasswordFlowViewModel();
      sub_10000C118();
      v24[0] = Environment.init<A>(_:)();
      v24[1] = v1 & 1;
      v24[2] = 0xD000000000000016;
      v24[3] = 0x8000000100133150;
      v25 = 0;
      sub_100084F80();
      sub_100084FD4();

      v2 = _ConditionalContent<>.init(storage:)();
      sub_1000851D4(v2, v3, v4, v5, v6, v7, v8, v9, v21[0]);
      sub_100003768(&qword_10018DAD0, &qword_100129C38);
      sub_100003768(&qword_10018DAC8, &qword_100129C30);
      sub_100084EF4();
      sub_100085028();
      _ConditionalContent<>.init(storage:)();

      break;
  }

  return result;
}

unint64_t sub_100084A40(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100176738, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100084A8C(char a1)
{
  result = 0x63416B636F6C6E75;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
      result = 0xD00000000000001ALL;
      break;
    case 3:
      return result;
    default:
      result = 0xD000000000000016;
      break;
  }

  return result;
}

uint64_t sub_100084B40(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_1000E39D8();
}

unint64_t sub_100084B64@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100084A40(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100084B94@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100084A8C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_100084BC0(void *a1@<X8>)
{
  v3 = *v1;
  sub_1000E76A0();
  *a1 = v4;
  a1[1] = v5;
}

unint64_t sub_100084C20()
{
  result = qword_10018DA98;
  if (!qword_10018DA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018DA98);
  }

  return result;
}

unint64_t sub_100084C74()
{
  result = qword_10018DAA0;
  if (!qword_10018DAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018DAA0);
  }

  return result;
}

uint64_t sub_100084CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100084D30()
{
  result = qword_10018DAA8;
  if (!qword_10018DAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018DAA8);
  }

  return result;
}

unint64_t sub_100084D84()
{
  result = qword_10018DAB0;
  if (!qword_10018DAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018DAB0);
  }

  return result;
}

unint64_t sub_100084DDC()
{
  result = qword_10018DAB8;
  if (!qword_10018DAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018DAB8);
  }

  return result;
}

unint64_t sub_100084E30()
{
  result = qword_10018DAC0;
  if (!qword_10018DAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018DAC0);
  }

  return result;
}

uint64_t sub_100084E84(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003768(&qword_10018DAC8, &qword_100129C30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100084EF4()
{
  result = qword_10018DAD8;
  if (!qword_10018DAD8)
  {
    sub_100004D48(&qword_10018DAD0, &qword_100129C38);
    sub_100084F80();
    sub_100084FD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018DAD8);
  }

  return result;
}

unint64_t sub_100084F80()
{
  result = qword_10018DAE0;
  if (!qword_10018DAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018DAE0);
  }

  return result;
}

unint64_t sub_100084FD4()
{
  result = qword_10018DAE8;
  if (!qword_10018DAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018DAE8);
  }

  return result;
}

unint64_t sub_100085028()
{
  result = qword_10018DAF0;
  if (!qword_10018DAF0)
  {
    sub_100004D48(&qword_10018DAC8, &qword_100129C30);
    sub_100084E30();
    sub_10001D5E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018DAF0);
  }

  return result;
}

uint64_t sub_1000850B4(uint64_t a1)
{
  v2 = sub_100003768(&qword_10018DAC8, &qword_100129C30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100085120()
{
  result = qword_10018DAF8;
  if (!qword_10018DAF8)
  {
    sub_100004D48(&qword_10018DB00, qword_100129C40);
    sub_100084EF4();
    sub_100085028();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018DAF8);
  }

  return result;
}

uint64_t sub_1000851AC()
{

  return _ConditionalContent<>.init(storage:)();
}

void sub_100085200()
{
  sub_100017C00();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_100003768(&qword_1001888B0, &qword_1001228F0);
  sub_10000ED84(v9);
  v11 = *(v10 + 64);
  sub_10000ED78();
  __chkstk_darwin(v12);
  sub_1000968C0();
  sub_10000AB80(v6, v0, &qword_1001888B0, &qword_1001228F0);
  v13 = type metadata accessor for TaskPriority();
  v14 = sub_10000E5F0(v0, 1, v13);

  if (v14 == 1)
  {
    sub_10000ABCC(v0, &qword_1001888B0, &qword_1001228F0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    sub_100012448(v13);
    (*(v15 + 8))(v0, v13);
  }

  v17 = *(v2 + 16);
  v16 = *(v2 + 24);
  swift_unknownObjectRetain();

  if (!v17)
  {
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_10000ABCC(v6, &qword_1001888B0, &qword_1001228F0);
    sub_100096BD0();
    v19 = swift_allocObject();
    *(v19 + 16) = v4;
    *(v19 + 24) = v2;
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  dispatch thunk of Actor.unownedExecutor.getter();
  swift_unknownObjectRelease();
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_6:
  String.utf8CString.getter();
  sub_100096BD0();
  v18 = swift_allocObject();
  *(v18 + 16) = v4;
  *(v18 + 24) = v2;

  swift_task_create();

  sub_10000ABCC(v6, &qword_1001888B0, &qword_1001228F0);

LABEL_9:
  sub_100017C18();
}

void sub_1000854B8()
{
  sub_100017C00();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_100003768(&qword_1001888B0, &qword_1001228F0);
  sub_10000ED84(v9);
  v11 = *(v10 + 64);
  sub_10000ED78();
  __chkstk_darwin(v12);
  sub_1000968C0();
  sub_10000AB80(v6, v0, &qword_1001888B0, &qword_1001228F0);
  v13 = type metadata accessor for TaskPriority();
  v14 = sub_10000E5F0(v0, 1, v13);

  if (v14 == 1)
  {
    sub_10000ABCC(v0, &qword_1001888B0, &qword_1001228F0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    sub_100012448(v13);
    v16 = *(v15 + 8);
    v17 = sub_100096D88();
    v18(v17);
  }

  v20 = *(v2 + 16);
  v19 = *(v2 + 24);
  swift_unknownObjectRetain();

  if (!v20)
  {
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_10000ABCC(v6, &qword_1001888B0, &qword_1001228F0);
    sub_100096BD0();
    v22 = swift_allocObject();
    *(v22 + 16) = v4;
    *(v22 + 24) = v2;
    sub_100003768(&qword_10018BBD0, &qword_100126CD0);
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  dispatch thunk of Actor.unownedExecutor.getter();
  swift_unknownObjectRelease();
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_6:
  String.utf8CString.getter();
  sub_100096BD0();
  v21 = swift_allocObject();
  *(v21 + 16) = v4;
  *(v21 + 24) = v2;

  sub_100003768(&qword_10018BBD0, &qword_100126CD0);
  swift_task_create();
  sub_10006F37C();

  sub_10000ABCC(v6, &qword_1001888B0, &qword_1001228F0);

LABEL_9:
  sub_100017C18();
}

void sub_10008577C()
{
  sub_100017C00();
  v4 = v3;
  v5 = type metadata accessor for Logger();
  v6 = sub_100008780(v5);
  v47 = v7;
  v9 = *(v8 + 64);
  __chkstk_darwin(v6);
  sub_10000C30C();
  sub_100096914();
  v10 = sub_100003768(&unk_10018A300, &unk_1001241E0);
  sub_10000ED84(v10);
  v12 = *(v11 + 64);
  sub_10000ED78();
  __chkstk_darwin(v13);
  sub_1000969F4();
  v14 = sub_100003768(&qword_100188EE0, &unk_100122AE0);
  sub_10000ED84(v14);
  v16 = *(v15 + 64);
  sub_10000ED78();
  __chkstk_darwin(v17);
  sub_1000967F8();
  v18 = sub_100096D00();
  v20 = sub_10008D788(v18, v19);
  if (v20)
  {
    sub_10009515C(v20, &selRef_title);
    if (v21)
    {
      sub_10000AB80(v4 + OBJC_IVAR____TtC11SupportFlow10ActionInfo_typeProvider, v48, &qword_10018E4C0, &qword_10012A2E0);
      if (v49)
      {
        v22 = v50;
        sub_100025734(v48, v49);
        v23 = *(v22 + 24);
        v24 = sub_10006F37C();
        v25(v24, v22);
        sub_1000086BC(v48);
        sub_1000EDA9C(v2);
        sub_10008BCE0();
        sub_100077FE8();
        SupportFlowBiomeManager.donateTroubleShootingActionEvent(actionId:title:url:flowId:type:)();

        sub_10000ABCC(v1, &unk_10018A300, &unk_1001241E0);
        sub_10000ABCC(v2, &qword_100188EE0, &unk_100122AE0);
        goto LABEL_17;
      }

      sub_10000ABCC(v48, &qword_10018E4C0, &qword_10012A2E0);
    }
  }

  static Logger.supportFlowApp.getter();

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = sub_100018FBC();
    v51 = swift_slowAlloc();
    *v28 = 136315650;
    v29 = sub_100096D00();
    v31 = sub_10008D788(v29, v30);
    if (!v31 || (sub_10009515C(v31, &selRef_title), !v32))
    {
    }

    v37 = sub_100096D88();
    v40 = sub_10009CACC(v37, v38, v39);

    *(v28 + 4) = v40;
    *(v28 + 12) = 2080;
    sub_10000AB80(v4 + OBJC_IVAR____TtC11SupportFlow10ActionInfo_typeProvider, v48, &qword_10018E4C0, &qword_10012A2E0);
    v41 = v49;
    if (v49)
    {
      v42 = v50;
      sub_100025734(v48, v49);
      (*(v42 + 24))(v41, v42);
      sub_1000086BC(v48);
    }

    else
    {
      sub_10000ABCC(v48, &qword_10018E4C0, &qword_10012A2E0);
    }

    v43 = sub_100096D88();
    v46 = sub_10009CACC(v43, v44, v45);

    *(v28 + 14) = v46;
    *(v28 + 22) = 2080;
    *(v28 + 24) = sub_10009CACC(*(v4 + OBJC_IVAR____TtC11SupportFlow10ActionInfo_text), *(v4 + OBJC_IVAR____TtC11SupportFlow10ActionInfo_text + 8), &v51);
    _os_log_impl(&_mh_execute_header, v26, v27, "Donating user action failed: Missing title(%s) or donation identifier(%s) for action: %s", v28, 0x20u);
    swift_arrayDestroy();
    sub_100008744();
    sub_100008744();

    v35 = v5;
    v36 = *(v47 + 8);
    v34 = v0;
  }

  else
  {

    v33 = *(v47 + 8);
    v34 = sub_100096908();
  }

  v36(v34, v35);
LABEL_17:
  sub_100017C18();
}

uint64_t sub_100085C20@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for URLQueryItem();
  v6 = sub_100008780(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  sub_10000C30C();
  v13 = v12 - v11;
  v14 = 0;
  v15 = *(a2 + 16);
  v16 = (v8 + 8);
  while (1)
  {
    if (v15 == v14)
    {
      v21 = 1;
      v22 = a3;
      return sub_100003CE8(v22, v21, 1, v5);
    }

    (*(v8 + 16))(v13, a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v14, v5);
    v17 = a1(v13);
    if (v3)
    {
      v23 = *v16;
      v24 = sub_100096CF4();
      return v25(v24);
    }

    if (v17)
    {
      break;
    }

    v18 = *v16;
    v19 = sub_100096CF4();
    v20(v19);
    ++v14;
  }

  v22 = a3;
  (*(v8 + 32))(a3, v13, v5);
  v21 = 0;
  return sub_100003CE8(v22, v21, 1, v5);
}

void sub_100085DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100017C00();
  a19 = v20;
  a20 = v21;
  sub_100096DA0();
  v22 = sub_100003768(&unk_10018A300, &unk_1001241E0);
  sub_10000ED84(v22);
  v24 = *(v23 + 64);
  sub_10000ED78();
  __chkstk_darwin(v25);
  v27 = &a9 - v26;
  sub_10008BCE0();
  sub_100096B50();
  SupportFlowBiomeManager.donateTroubleShootingArticleEvent(articleId:url:flowId:type:)();
  sub_10000ABCC(v27, &unk_10018A300, &unk_1001241E0);
  sub_100017C18();
}

void sub_100085E7C()
{
  sub_100096D74();
  v2 = sub_100003768(&qword_100188EE0, &unk_100122AE0);
  sub_10000ED84(v2);
  v4 = *(v3 + 64);
  sub_10000ED78();
  __chkstk_darwin(v5);
  sub_100096A04();
  v6 = type metadata accessor for URL();
  v7 = sub_100008780(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  sub_10000C30C();
  sub_100096A30();
  sub_10009339C();
  sub_100096960(v0);
  if (v12)
  {
    sub_10000ABCC(v0, &qword_100188EE0, &unk_100122AE0);
  }

  else
  {
    v13 = *(v9 + 32);
    v14 = sub_100096B50();
    v15(v14);
    sub_100090F0C();
    static DeviceEventCoordinator.recordReentryNotificationURL(url:title:requiredSignal:)();

    (*(v9 + 8))(v1, v6);
  }

  sub_100053050();
}

void sub_100085FE4()
{
  sub_100017C00();
  v3 = v2;
  v4 = type metadata accessor for DeviceExpertTroubleshooting.ActionType();
  v5 = sub_100008780(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_10000C30C();
  sub_100096A30();
  v10 = sub_100003768(&unk_10018A300, &unk_1001241E0);
  sub_10000ED84(v10);
  v12 = *(v11 + 64);
  sub_10000ED78();
  __chkstk_darwin(v13);
  sub_1000969F4();
  sub_10009A9FC(v3);
  sub_10008BCE0();
  *v0 = 0;
  (*(v7 + 104))(v0, enum case for DeviceExpertTroubleshooting.ActionType.unknown(_:), v4);
  sub_100096B94();
  SupportFlowBiomeManager.donateTroubleShootingSettingsEvent(settingId:value:flowId:type:)();

  v14 = *(v7 + 8);
  v15 = sub_100096BB8();
  v16(v15);
  sub_10000ABCC(v1, &unk_10018A300, &unk_1001241E0);
  sub_100017C18();
}

void sub_100086184()
{
  sub_100017C00();
  v4 = v3;
  v5 = sub_100003768(&unk_10018A300, &unk_1001241E0);
  sub_10000ED84(v5);
  v7 = *(v6 + 64);
  sub_10000ED78();
  __chkstk_darwin(v8);
  sub_100017BAC();
  v9 = sub_100003768(&qword_100188EE0, &unk_100122AE0);
  sub_10000ED84(v9);
  v11 = *(v10 + 64);
  sub_10000ED78();
  __chkstk_darwin(v12);
  sub_1000969F4();
  v13 = type metadata accessor for SupportFlowBiomeManager();
  v14 = sub_100008780(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v14);
  sub_10000C30C();
  v21 = v20 - v19;
  v36 = v22;
  (*(v16 + 16))(v20 - v19, v0 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_biomeManager);
  sub_10000AB80(v4 + OBJC_IVAR____TtC11SupportFlow15PlacardInfoItem_typeProvider, v37, &qword_10018E4C0, &qword_10012A2E0);
  if (v38)
  {
    v23 = v39;
    sub_100025734(v37, v38);
    v24 = *(v23 + 24);
    v25 = sub_10006F37C();
    v26(v25, v23);
    sub_1000086BC(v37);
  }

  else
  {
    sub_10000ABCC(v37, &qword_10018E4C0, &qword_10012A2E0);
    v28 = *(v4 + 16);
    v27 = *(v4 + 24);
  }

  v29 = *(v4 + OBJC_IVAR____TtC11SupportFlow8InfoItem_title);
  v30 = *(v4 + OBJC_IVAR____TtC11SupportFlow8InfoItem_title + 8);
  if (*(v4 + OBJC_IVAR____TtC11SupportFlow15PlacardInfoItem_action))
  {
    v31 = *(v4 + OBJC_IVAR____TtC11SupportFlow15PlacardInfoItem_action);

    sub_1000EDA9C(v2);
  }

  else
  {
    type metadata accessor for URL();
    sub_100053004();
    sub_100003CE8(v32, v33, v34, v35);
  }

  sub_10008BCE0();
  sub_100096D00();
  SupportFlowBiomeManager.donateTroubleShootingActionEvent(actionId:title:url:flowId:type:)();

  sub_10000ABCC(v1, &unk_10018A300, &unk_1001241E0);
  sub_10000ABCC(v2, &qword_100188EE0, &unk_100122AE0);
  (*(v16 + 8))(v21, v36);
  sub_100017C18();
}

void sub_100086430()
{
  sub_100017C00();
  v1 = v0;
  v2 = type metadata accessor for DeviceExpertTroubleshooting.ActionType();
  v3 = sub_100008780(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_10000C30C();
  v11 = v10 - v9;
  v23 = v1;
  if (!(v1 >> 62))
  {
    v12 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_9:
    sub_100017C18();
    return;
  }

  v22 = _CocoaArrayWrapper.endIndex.getter();
  v8 = v1;
  v12 = v22;
  if (!v22)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v12 >= 1)
  {
    v13 = 0;
    v14 = v8 & 0xC000000000000001;
    v15 = enum case for DeviceExpertTroubleshooting.ActionType.suggested(_:);
    v16 = (v5 + 104);
    v17 = (v5 + 8);
    do
    {
      if (v14)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v18 = *(v8 + 8 * v13 + 32);
      }

      ++v13;
      (*v16)(v11, v15, v2);
      sub_100096CF4();
      sub_100086184();

      v19 = *v17;
      v20 = sub_100096B28();
      v21(v20);
      v8 = v23;
    }

    while (v12 != v13);
    goto LABEL_9;
  }

  __break(1u);
}

void sub_1000865A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100017C00();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v26 = sub_100003768(&qword_100188EE0, &unk_100122AE0);
  sub_10000ED84(v26);
  v28 = *(v27 + 64);
  sub_10000ED78();
  __chkstk_darwin(v29);
  sub_100017BAC();
  v30 = type metadata accessor for ActionInfoDestination(0);
  v31 = sub_10000AF7C(v30);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31);
  sub_10000C30C();
  sub_100096A30();
  v34 = type metadata accessor for URL();
  v35 = sub_100008780(v34);
  v37 = v36;
  v39 = *(v38 + 64);
  __chkstk_darwin(v35);
  sub_100012454();
  v42 = v40 - v41;
  __chkstk_darwin(v43);
  v45 = &a9 - v44;
  sub_100096614(v25 + OBJC_IVAR____TtC11SupportFlow10ActionInfo_destination, v21, type metadata accessor for ActionInfoDestination);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v52 = *v21;
      v51 = *(v21 + 1);
      v53 = [objc_opt_self() defaultWorkspace];
      if (v53)
      {
        v54 = v53;
        v55 = sub_100096BC4();
        sub_100095114(v55, v56, v54);
      }

      break;
    case 2u:
      (*(v37 + 32))(v42, v21, v34);
      (*(v37 + 16))(v20, v42, v34);
      sub_100096B34();
      sub_100096D30(v57, v58, v59, v34);
      sub_10008AEE0();
      (*(v37 + 8))(v42, v34);
      break;
    case 4u:
      sub_100096670(v21, type metadata accessor for ActionInfoDestination);
      break;
    default:
      v46 = *(v37 + 32);
      v46(v45, v21, v34);
      v46(v20, v45, v34);
      sub_100096B34();
      v50 = sub_100096D30(v47, v48, v49, v34);
      sub_10001BBBC(v50);
      sub_10000ABCC(v20, &qword_100188EE0, &unk_100122AE0);
      break;
  }

  v60 = v25 + OBJC_IVAR____TtC11SupportFlow10ActionInfo_actionHandler;
  v61 = *(v25 + OBJC_IVAR____TtC11SupportFlow10ActionInfo_actionHandler);
  if (v61)
  {
    v62 = *(v60 + 8);

    v61(v63);
    v64 = sub_10000AFAC();
    sub_1000068F8(v64);
  }

  sub_100017C18();
}

void sub_1000868AC()
{
  sub_100017C00();
  v2 = v1;
  v3 = sub_100003768(&qword_10018ABF8, &qword_100125318);
  sub_10000ED84(v3);
  v5 = *(v4 + 64);
  sub_10000ED78();
  __chkstk_darwin(v6);
  sub_1000967F8();
  v7 = type metadata accessor for FlowStepContentOption();
  v8 = sub_10000AF7C(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_100012454();
  v13 = v11 - v12;
  __chkstk_darwin(v14);
  v16 = v25 - v15;
  sub_100025A88();
  swift_storeEnumTagMultiPayload();
  sub_100096BB8();
  sub_1000FF9FC();
  v18 = v17;
  sub_1000969A0();
  if ((v18 & 1) == 0)
  {
    goto LABEL_4;
  }

  v19 = sub_100077FE8();
  sub_1000FE640(v19, v20);
  sub_100087500();

  sub_100003768(&qword_10018AC00, &qword_100125320);
  v21 = sub_100096BDC();
  v24 = sub_10000E5F0(v21, v22, v23);
  sub_10000ABCC(v0, &qword_10018ABF8, &qword_100125318);
  if (v24 == 1)
  {
    v25[1] = v2;
    swift_storeEnumTagMultiPayload();

    sub_1000E082C(v16, v13);
    sub_1000969A0();
  }

  else
  {
LABEL_4:
  }

  sub_100077FE8();
  sub_100017C18();
}

uint64_t sub_100086A60()
{
  sub_100025A94();
  v1[25] = v2;
  v1[26] = v0;
  v1[24] = v3;
  v4 = sub_100003768(&qword_10018E4E0, &qword_10012A458);
  sub_10000ED84(v4);
  v6 = *(v5 + 64);
  v1[27] = sub_100052FA4();
  v7 = sub_100003768(&unk_10018A300, &unk_1001241E0);
  sub_10000ED84(v7);
  v9 = *(v8 + 64);
  v1[28] = sub_100052FA4();
  type metadata accessor for MainActor();
  v1[29] = sub_10006F3C8();
  sub_10006F37C();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100096AF8();
  v1[30] = v10;
  v1[31] = v11;
  v12 = sub_100096AEC();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_100086B3C()
{
  v57 = v0;
  v1 = v0[26] + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[32] = Strong;
  if (Strong)
  {
    v3 = *(v1 + 8);
    swift_getObjectType();
    v4 = *(v3 + 8);
    v54 = v4 + *v4;
    v5 = v4[1];
    v6 = swift_task_alloc();
    v0[33] = v6;
    *v6 = v0;
    sub_100062F48(v6);
    sub_100096908();
    sub_100082C10();

    __asm { BRAA            X2, X16 }
  }

  v10 = v0[27];
  v9 = v0[28];
  v11 = v0[26];
  sub_10008BCE0();
  type metadata accessor for DeviceExpertTroubleshooting.ActionType();
  v12 = sub_1000967B8();
  sub_100003CE8(v12, v13, v14, v15);
  v16 = sub_100077FE8();
  v0[34] = sub_100096E28(v16, v17);
  if (v10)
  {
    v19 = v0[28];
    v18 = v0[29];
    v20 = v0[27];

    sub_10000ABCC(v20, &qword_10018E4E0, &qword_10012A458);
    sub_10000ABCC(v19, &unk_10018A300, &unk_1001241E0);
    v22 = v0[27];
    v21 = v0[28];

    sub_10000875C();
    sub_100082C10();

    __asm { BRAA            X1, X16 }
  }

  v25 = v0[28];
  sub_10000ABCC(v0[27], &qword_10018E4E0, &qword_10012A458);
  sub_10000ABCC(v25, &unk_10018A300, &unk_1001241E0);
  v26 = [objc_opt_self() sharedInstance];
  v27 = [v26 primaryAuthKitAccount];

  if (v27)
  {
    v56[0] = v27;
    sub_1000911FC(v56, v0 + 22);

    v29 = v0[22];
    v28 = v0[23];
  }

  else
  {
    v28 = 0;
    v0[22] = 0;
    v0[23] = 0;
  }

  v30 = v0[26];
  v31 = sub_10008ADF0();
  if (!v31)
  {

    sub_100096D60();
    goto LABEL_19;
  }

  v32 = v31;
  result = sub_10005CD84(v31, &selRef_aa_primaryEmail);
  if (!v34)
  {
    __break(1u);
    goto LABEL_23;
  }

  v55 = result;
  result = sub_10005CD84(v32, &selRef_aa_firstName);
  v53 = result;
  if (!v35)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  result = sub_10005CD84(v32, &selRef_aa_lastName);
  if (!v36)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  result = sub_10005CD84(v32, &selRef_aa_personID);
  if (!v37)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  sub_100096A68(v38, v39, v40, v41, v42, v43, v44, v45, v28, v53, v55);
LABEL_19:
  memcpy(v0 + 2, v0 + 12, 0x50uLL);
  swift_task_alloc();
  sub_10004F4B0();
  v0[35] = v46;
  *v46 = v47;
  sub_100096890(v46);
  sub_100082C10();

  return sub_100071D20(v48, v49, v50, v51);
}

uint64_t sub_100086EE0()
{
  sub_10003DCD8();
  sub_100096CD0();
  v2 = v0[33];
  v3 = v0[32];
  v4 = *v1;
  sub_10000870C();
  *v5 = v4;

  swift_unknownObjectRelease();
  sub_100096D54();
  v7 = *(v6 + 248);
  v8 = v0[30];

  return _swift_task_switch(sub_100087010, v8, v7);
}

uint64_t sub_100087010()
{
  v48 = v0;
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[26];
  sub_10008BCE0();
  type metadata accessor for DeviceExpertTroubleshooting.ActionType();
  v4 = sub_1000967B8();
  sub_100003CE8(v4, v5, v6, v7);
  v8 = sub_100077FE8();
  v0[34] = sub_100096E28(v8, v9);
  if (v2)
  {
    v11 = v0[28];
    v10 = v0[29];
    v12 = v0[27];

    sub_10000ABCC(v12, &qword_10018E4E0, &qword_10012A458);
    sub_10000ABCC(v11, &unk_10018A300, &unk_1001241E0);
    v14 = v0[27];
    v13 = v0[28];

    sub_10000875C();
    sub_100082C10();

    __asm { BRAA            X1, X16 }
  }

  v17 = v0[28];
  sub_10000ABCC(v0[27], &qword_10018E4E0, &qword_10012A458);
  sub_10000ABCC(v17, &unk_10018A300, &unk_1001241E0);
  v18 = [objc_opt_self() sharedInstance];
  v19 = [v18 primaryAuthKitAccount];

  if (v19)
  {
    v47[0] = v19;
    sub_1000911FC(v47, v0 + 22);

    v21 = v0[22];
    v20 = v0[23];
  }

  else
  {
    v20 = 0;
    v0[22] = 0;
    v0[23] = 0;
  }

  v22 = v0[26];
  v23 = sub_10008ADF0();
  if (!v23)
  {

    sub_100096D60();
    goto LABEL_15;
  }

  v24 = v23;
  result = sub_10005CD84(v23, &selRef_aa_primaryEmail);
  if (!v26)
  {
    __break(1u);
    goto LABEL_19;
  }

  v46 = result;
  result = sub_10005CD84(v24, &selRef_aa_firstName);
  v45 = result;
  if (!v27)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  result = sub_10005CD84(v24, &selRef_aa_lastName);
  if (!v28)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  result = sub_10005CD84(v24, &selRef_aa_personID);
  if (!v29)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  sub_100096A68(v30, v31, v32, v33, v34, v35, v36, v37, v20, v45, v46);
LABEL_15:
  memcpy(v0 + 2, v0 + 12, 0x50uLL);
  swift_task_alloc();
  sub_10004F4B0();
  v0[35] = v38;
  *v38 = v39;
  sub_100096890(v38);
  sub_100082C10();

  return sub_100071D20(v40, v41, v42, v43);
}

uint64_t sub_1000872A8()
{
  sub_10003DCD8();
  sub_100082B64();
  sub_100052FD4();
  *v4 = v3;
  v5 = *(v1 + 280);
  *v4 = *v2;
  *(v3 + 288) = v0;

  sub_100052FF8();
  v7 = *(v6 + 248);
  v8 = *(v1 + 240);
  if (v0)
  {
    v9 = sub_100087470;
  }

  else
  {
    v9 = sub_1000873D0;
  }

  return _swift_task_switch(v9, v8, v7);
}

uint64_t sub_1000873D0()
{
  sub_10003DCD8();
  v1 = v0[34];
  v3 = v0[28];
  v2 = v0[29];
  v4 = v0[27];
  sub_10000ABCC((v0 + 12), &qword_10018D330, &qword_10012A460);

  sub_10000875C();

  return v5();
}

uint64_t sub_100087470()
{
  sub_100025A94();
  v1 = v0[34];
  v2 = v0[29];

  sub_10000ABCC((v0 + 12), &qword_10018D330, &qword_10012A460);

  v3 = v0[36];
  v5 = v0[27];
  v4 = v0[28];

  sub_10000875C();

  return v6();
}

void sub_100087500()
{
  sub_100017C00();
  v55 = v2;
  v4 = v3;
  v6 = v5;
  v7 = sub_100003768(&qword_100189108, &unk_1001226E0);
  sub_10000ED84(v7);
  v9 = *(v8 + 64);
  sub_10000ED78();
  __chkstk_darwin(v10);
  v54 = &v54 - v11;
  v12 = sub_100003768(&qword_10018DA28, &unk_100129768);
  sub_10000ED84(v12);
  v14 = *(v13 + 64);
  sub_10000ED78();
  __chkstk_darwin(v15);
  sub_1000967F8();
  v16 = sub_100003768(&qword_10018DA20, &qword_100129760);
  sub_10000ED84(v16);
  v18 = *(v17 + 64);
  sub_10000ED78();
  __chkstk_darwin(v19);
  v21 = &v54 - v20;
  v22 = type metadata accessor for SupportSolutions(0);
  v23 = sub_10000AF7C(v22);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  sub_10000C30C();
  v28 = v27 - v26;
  v29 = *(v0 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_supportContentCoordinator);
  v30 = sub_100096D00();
  if (sub_100052220(v30, v31, v4, v55))
  {
    v32 = v6;
    sub_10008CBB8();
    sub_1000912CC(v1);
    sub_10000ABCC(v21, &qword_10018DA20, &qword_100129760);
    v33 = sub_100096BDC();
    if (sub_10000E5F0(v33, v34, v22) == 1)
    {
      sub_10000ABCC(v1, &qword_10018DA28, &unk_100129768);
    }

    else
    {
      sub_100093EC8(v1, v28);
      v39 = v54;
      sub_10000AB80(v28, v54, &qword_100189108, &unk_1001226E0);
      v40 = type metadata accessor for SupportSolutions.ChatInfo(0);
      v41 = sub_10000E5F0(v39, 1, v40);
      sub_10000DF20();
      sub_10000ABCC(v42, v43, v44);
      if (v41 != 1 || *(v28 + *(v22 + 20) + 8) != 1)
      {
        v46 = sub_100003768(&qword_10018AC00, &qword_100125320);
        v47 = (v32 + *(v46 + 48));
        sub_10000AB80(v28, v32, &qword_100189108, &unk_1001226E0);
        v48 = (v28 + *(v22 + 20));
        v49 = *v48;
        v50 = v48[1];
        v51 = sub_100052F8C();
        sub_100082674(v51, v52);
        sub_100096724();
        sub_100096670(v28, v53);
        *v47 = v49;
        v47[1] = v50;
        sub_100096B34();
        v38 = v46;
        goto LABEL_5;
      }

      sub_100096724();
      sub_100096670(v28, v45);
    }
  }

  sub_100003768(&qword_10018AC00, &qword_100125320);
  v35 = sub_1000967B8();
LABEL_5:
  sub_100003CE8(v35, v36, v37, v38);
  sub_100017C18();
}

uint64_t sub_1000877E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_100096DA0();

    v5._countAndFlagsBits = 95;
    v5._object = 0xE100000000000000;
    String.append(_:)(v5);

    v6._countAndFlagsBits = sub_100096908();
    String.append(_:)(v6);
  }

  else
  {
  }

  return a1;
}

void sub_10008787C()
{
  sub_100017C00();
  v3 = v2;
  v5 = v4;
  v6 = sub_100003768(&unk_10018A300, &unk_1001241E0);
  sub_10000ED84(v6);
  v8 = *(v7 + 64);
  sub_10000ED78();
  __chkstk_darwin(v9);
  sub_1000967F8();
  v10 = type metadata accessor for SupportFlowBiomeManager();
  v11 = sub_100008780(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  sub_10000C30C();
  v18 = v17 - v16;
  (*(v13 + 16))(v17 - v16, v0 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_biomeManager, v10);
  v19 = sub_10008D788(v5, v3);
  if (v19)
  {
    sub_10009515C(v19, &selRef_title);
  }

  sub_10008BCE0();
  SupportFlowBiomeManager.donateTroubleShootingUserSelection(question:answer:flowId:stepId:type:)();

  sub_10000ABCC(v1, &unk_10018A300, &unk_1001241E0);
  (*(v13 + 8))(v18, v10);
  sub_100017C18();
}

uint64_t sub_100087A1C()
{
  sub_100025A94();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  type metadata accessor for MainActor();
  v1[5] = sub_10006F3C8();
  sub_10006F37C();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100096AF8();
  v1[6] = v4;
  v1[7] = v5;
  v6 = sub_100096AEC();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100087AA0()
{
  sub_100025A94();
  v1 = *(v0[4] + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_supportContentCoordinator);
  swift_task_alloc();
  sub_10004F4B0();
  v0[8] = v2;
  *v2 = v3;
  v2[1] = sub_100087B3C;
  v4 = v0[2];
  v5 = v0[3];

  return sub_100051800();
}

uint64_t sub_100087B3C()
{
  sub_10003DCD8();
  sub_100082B64();
  sub_100052FD4();
  *v4 = v3;
  v5 = *(v1 + 64);
  *v4 = *v2;
  *(v3 + 72) = v0;

  sub_100052FF8();
  v7 = *(v6 + 56);
  v8 = *(v1 + 48);
  if (v0)
  {
    v9 = sub_100087CC0;
  }

  else
  {
    v9 = sub_100087C64;
  }

  return _swift_task_switch(v9, v8, v7);
}

uint64_t sub_100087C64()
{
  sub_100025A94();
  v1 = *(v0 + 40);

  sub_10000875C();

  return v2();
}

uint64_t sub_100087CC0()
{
  sub_100025A94();
  v1 = *(v0 + 40);

  sub_10000875C();
  v3 = *(v0 + 72);

  return v2();
}

uint64_t sub_100087D1C()
{
  sub_100025A94();
  v1[2] = v0;
  v2 = sub_100003768(&qword_10018DA20, &qword_100129760);
  sub_10000ED84(v2);
  v4 = *(v3 + 64);
  v1[3] = sub_100052FA4();
  v5 = sub_100003768(&qword_10018DA28, &unk_100129768);
  sub_10000ED84(v5);
  v7 = *(v6 + 64);
  v1[4] = sub_100052FA4();
  v8 = type metadata accessor for SupportSolutions(0);
  v1[5] = v8;
  sub_10000ED84(v8);
  v10 = *(v9 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v11 = type metadata accessor for SupportSymptomInfo();
  v1[8] = v11;
  sub_100052F6C(v11);
  v1[9] = v12;
  v14 = *(v13 + 64);
  v1[10] = sub_100052FA4();
  v15 = type metadata accessor for SupportFlowIdentifier();
  v1[11] = v15;
  sub_100052F6C(v15);
  v1[12] = v16;
  v18 = *(v17 + 64);
  v1[13] = sub_100052FA4();
  v19 = sub_100003768(&unk_10018A300, &unk_1001241E0);
  sub_10000ED84(v19);
  v21 = *(v20 + 64);
  v1[14] = sub_100052FA4();
  v22 = type metadata accessor for Logger();
  v1[15] = v22;
  sub_100052F6C(v22);
  v1[16] = v23;
  v25 = *(v24 + 64) + 15;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[19] = sub_10006F3C8();
  sub_10006F37C();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100096AF8();
  v1[20] = v26;
  v1[21] = v27;
  v28 = sub_100096AEC();

  return _swift_task_switch(v28, v29, v30);
}

uint64_t sub_100087F50()
{
  v4 = *(v0[2] + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_flowListInitializationTask);
  v0[22] = v4;
  if (v4)
  {
    v5 = async function pointer to Task<>.value.getter[1];

    v6 = swift_task_alloc();
    v0[23] = v6;
    *v6 = v0;
    v6[1] = sub_10008841C;
    sub_100046280();

    return Task<>.value.getter();
  }

  else
  {
    v8 = v0[18];
    static Logger.supportFlowApp.getter();

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = v0[14];
      v2 = v0[11];
      v12 = v0[2];
      v13 = sub_10002B114();
      v1 = sub_100018FBC();
      *v13 = 136315138;
      sub_10008BCE0();
      v14 = sub_100096BDC();
      v16 = sub_10000E5F0(v14, v15, v2);
      v17 = v0[14];
      if (v16)
      {
        v18 = sub_10000ABCC(v0[14], &unk_10018A300, &unk_1001241E0);
      }

      else
      {
        v23 = sub_100096A3C();
        v24(v23);
        sub_10000ABCC(v17, &unk_10018A300, &unk_1001241E0);
        SupportFlowIdentifier.rawValue.getter();
        v25 = *(v3 + 8);
        v3 += 8;
        v26 = sub_100096B94();
        v18 = v27(v26);
      }

      v28 = sub_100096BF4(v18);

      *(v13 + 4) = v28;
      sub_100096B70(&_mh_execute_header, v9, v10, "Fetching solutions for flow: %s");
      sub_1000086BC(v1);
      sub_1000968EC();
      sub_1000968D0();

      v21 = *(v3 + 8);
      v29 = sub_100096B94();
      v21(v29);
    }

    else
    {
      v19 = v0[18];
      v10 = v0[15];
      v20 = v0[16];

      v21 = *(v20 + 8);
      v22 = sub_100052F8C();
      v21(v22);
    }

    sub_100096E48();
    if (v10)
    {
      v30 = v0[19];

      sub_100096EB0();
      swift_errorRetain();
      Logger.logObject.getter();
      static os_log_type_t.error.getter();
      sub_100096CB8();
      if (sub_100096E98())
      {
        sub_10002B114();
        v1 = sub_100096944();
        sub_100096C88(5.7779e-34);
        v31 = _swift_stdlib_bridgeErrorToNSError();
        sub_100096A88(v31);
        sub_100096980(&_mh_execute_header, v32, v33, "Fetching solutions failed or cancelled: %@");
        sub_10000ABCC(v1, &qword_100189390, &qword_1001241D0);
        sub_1000968EC();
        sub_1000968D0();
      }

      sub_100096ACC();
      v34 = sub_100096B1C();
      v2(v34);
      *v1 = v10;
      sub_100003768(&qword_10018E458, &qword_100129E90);
      sub_100096AAC();
      v35 = sub_100096A14();
      sub_100096D30(v35, v36, v37, v21);
      swift_errorRetain();
      sub_10008A374(v1);

      sub_10009683C();

      sub_10000875C();
      sub_100046280();

      __asm { BRAA            X1, X16 }
    }

    static Task<>.checkCancellation()();
    v41 = v0[4];
    v40 = v0[5];
    v42 = *(v0[2] + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_supportContentCoordinator);
    sub_100050D78(v0[10], v41);
    sub_100096960(v41);
    if (v43)
    {
      v44 = v0[3];
      v45 = v0[2];
      sub_10000ABCC(v0[4], &qword_10018DA28, &unk_100129768);
      v46 = sub_100003768(&qword_10018E458, &qword_100129E90);
      v47 = sub_100096D30(v44, 2, 2, v46);
      sub_10008A374(v47);
    }

    else
    {
      sub_100096E08();
      sub_1000967A0();
      v48 = sub_100096A5C();
      sub_100096614(v48, v49, v50);
      sub_100003768(&qword_10018E458, &qword_100129E90);
      sub_100025A88();
      swift_storeEnumTagMultiPayload();
      sub_100096EC8();
      sub_100096724();
      sub_100096670(v40, v51);
    }

    swift_task_alloc();
    sub_10004F4B0();
    v0[25] = v52;
    *v52 = v53;
    sub_100096860(v52);
    sub_100046280();

    return sub_100051090();
  }
}

uint64_t sub_10008841C()
{
  sub_100025A94();
  sub_100096CD0();
  v2 = *(v0 + 184);
  v3 = *v1;
  sub_10000870C();
  *v4 = v3;

  sub_100096D54();
  v6 = *(v5 + 168);
  v7 = *(v0 + 160);

  return _swift_task_switch(sub_100088528, v7, v6);
}

uint64_t sub_100088528()
{
  v4 = v0[22];

  v5 = v0[18];
  v6 = v0[2];
  static Logger.supportFlowApp.getter();

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[14];
    v2 = v0[11];
    v10 = v0[2];
    v11 = sub_10002B114();
    v1 = sub_100018FBC();
    *v11 = 136315138;
    sub_10008BCE0();
    v12 = sub_100096BDC();
    v14 = sub_10000E5F0(v12, v13, v2);
    v15 = v0[14];
    if (v14)
    {
      v16 = sub_10000ABCC(v0[14], &unk_10018A300, &unk_1001241E0);
    }

    else
    {
      v21 = sub_100096A3C();
      v22(v21);
      sub_10000ABCC(v15, &unk_10018A300, &unk_1001241E0);
      SupportFlowIdentifier.rawValue.getter();
      v23 = *(v3 + 8);
      v3 += 8;
      v24 = sub_100096B94();
      v16 = v25(v24);
    }

    v26 = sub_100096BF4(v16);

    *(v11 + 4) = v26;
    sub_100096B70(&_mh_execute_header, v7, v8, "Fetching solutions for flow: %s");
    sub_1000086BC(v1);
    sub_1000968EC();
    sub_1000968D0();

    v19 = *(v3 + 8);
    v27 = sub_100096B94();
    v19(v27);
  }

  else
  {
    v17 = v0[18];
    v8 = v0[15];
    v18 = v0[16];

    v19 = *(v18 + 8);
    v20 = sub_100052F8C();
    v19(v20);
  }

  sub_100096E48();
  if (v8)
  {
    v28 = v0[19];

    sub_100096EB0();
    swift_errorRetain();
    Logger.logObject.getter();
    static os_log_type_t.error.getter();
    sub_100096CB8();
    if (sub_100096E98())
    {
      sub_10002B114();
      v1 = sub_100096944();
      sub_100096C88(5.7779e-34);
      v29 = _swift_stdlib_bridgeErrorToNSError();
      sub_100096A88(v29);
      sub_100096980(&_mh_execute_header, v30, v31, "Fetching solutions failed or cancelled: %@");
      sub_10000ABCC(v1, &qword_100189390, &qword_1001241D0);
      sub_1000968EC();
      sub_1000968D0();
    }

    sub_100096ACC();
    v32 = sub_100096B1C();
    v2(v32);
    *v1 = v8;
    sub_100003768(&qword_10018E458, &qword_100129E90);
    sub_100096AAC();
    v33 = sub_100096A14();
    sub_100096D30(v33, v34, v35, v19);
    swift_errorRetain();
    sub_10008A374(v1);

    sub_10009683C();

    sub_10000875C();
    sub_100046280();

    __asm { BRAA            X1, X16 }
  }

  static Task<>.checkCancellation()();
  v39 = v0[4];
  v38 = v0[5];
  v40 = *(v0[2] + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_supportContentCoordinator);
  sub_100050D78(v0[10], v39);
  sub_100096960(v39);
  if (v41)
  {
    v42 = v0[3];
    v43 = v0[2];
    sub_10000ABCC(v0[4], &qword_10018DA28, &unk_100129768);
    v44 = sub_100003768(&qword_10018E458, &qword_100129E90);
    v45 = sub_100096D30(v42, 2, 2, v44);
    sub_10008A374(v45);
  }

  else
  {
    sub_100096E08();
    sub_1000967A0();
    v46 = sub_100096A5C();
    sub_100096614(v46, v47, v48);
    sub_100003768(&qword_10018E458, &qword_100129E90);
    sub_100025A88();
    swift_storeEnumTagMultiPayload();
    sub_100096EC8();
    sub_100096724();
    sub_100096670(v38, v49);
  }

  swift_task_alloc();
  sub_10004F4B0();
  v0[25] = v50;
  *v50 = v51;
  sub_100096860(v50);
  sub_100046280();

  return sub_100051090();
}