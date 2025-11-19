void sub_2871C(void **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = _swiftEmptyArrayStorage;
LABEL_91:
    v98 = *a1;
    if (!*a1)
    {
      goto LABEL_132;
    }

    v5 = v100;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_93:
      v85 = (v6 + 16);
      v86 = *(v6 + 16);
      while (v86 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_129;
        }

        v87 = v6;
        v6 += 16 * v86;
        v88 = *v6;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_293A8((*a3 + 8 * *v6), (*a3 + 8 * *v89), (*a3 + 8 * v90), v98);
        if (v5)
        {
          break;
        }

        if (v90 < v88)
        {
          goto LABEL_117;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_118;
        }

        *v6 = v88;
        *(v6 + 8) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_119;
        }

        v86 = *v85 - 1;
        memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        v6 = v87;
      }

LABEL_101:

      return;
    }

LABEL_126:
    v6 = sub_29650(v6);
    goto LABEL_93;
  }

  v5 = 0;
  v6 = _swiftEmptyArrayStorage;
  while (1)
  {
    v7 = v5++;
    if (v5 >= v4)
    {
      goto LABEL_22;
    }

    v93 = v6;
    v8 = *(*a3 + 8 * v5);
    v9 = v7;
    v10 = (*a3 + 8 * v7);
    v11 = 8 * v9;
    v13 = *v10;
    v12 = v10 + 2;

    v6 = sub_A2E14();

    v95 = v9;
    v14 = v9 + 2;
    do
    {
      v15 = v14;
      if (++v5 >= v4)
      {
        v5 = v4;
        if (v6)
        {
          goto LABEL_8;
        }

LABEL_20:
        v6 = v93;
        v7 = v95;
        goto LABEL_22;
      }

      v17 = *(v12 - 1);
      v16 = *v12;

      v18 = sub_A2E14() & 1;

      ++v12;
      v14 = v15 + 1;
    }

    while ((v6 & 1) == v18);
    if ((v6 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_8:
    v7 = v95;
    if (v5 < v95)
    {
      goto LABEL_123;
    }

    if (v95 >= v5)
    {
      v6 = v93;
    }

    else
    {
      v19 = v4 >= v15 ? v15 : v4;
      v20 = 8 * v19 - 8;
      v21 = v5;
      v22 = v95;
      v6 = v93;
      do
      {
        if (v22 != --v21)
        {
          v23 = *a3;
          if (!*a3)
          {
            goto LABEL_130;
          }

          v24 = *(v23 + v11);
          *(v23 + v11) = *(v23 + v20);
          *(v23 + v20) = v24;
        }

        ++v22;
        v20 -= 8;
        v11 += 8;
      }

      while (v22 < v21);
    }

LABEL_22:
    v25 = a3[1];
    if (v5 < v25)
    {
      if (__OFSUB__(v5, v7))
      {
        goto LABEL_122;
      }

      if (v5 - v7 < a4)
      {
        break;
      }
    }

LABEL_38:
    if (v5 < v7)
    {
      goto LABEL_121;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v82 = *(v6 + 16);
      sub_551BC();
      v6 = v83;
    }

    v37 = *(v6 + 16);
    v38 = v37 + 1;
    if (v37 >= *(v6 + 24) >> 1)
    {
      sub_551BC();
      v6 = v84;
    }

    *(v6 + 16) = v38;
    v39 = v6 + 32;
    v40 = (v6 + 32 + 16 * v37);
    *v40 = v7;
    v40[1] = v5;
    v98 = *a1;
    if (!*a1)
    {
      goto LABEL_131;
    }

    if (v37)
    {
      while (1)
      {
        v41 = v38 - 1;
        v42 = (v39 + 16 * (v38 - 1));
        v43 = (v6 + 16 * v38);
        if (v38 >= 4)
        {
          break;
        }

        if (v38 == 3)
        {
          v44 = *(v6 + 32);
          v45 = *(v6 + 40);
          v54 = __OFSUB__(v45, v44);
          v46 = v45 - v44;
          v47 = v54;
LABEL_58:
          if (v47)
          {
            goto LABEL_108;
          }

          v59 = *v43;
          v58 = v43[1];
          v60 = __OFSUB__(v58, v59);
          v61 = v58 - v59;
          v62 = v60;
          if (v60)
          {
            goto LABEL_111;
          }

          v63 = v42[1];
          v64 = v63 - *v42;
          if (__OFSUB__(v63, *v42))
          {
            goto LABEL_114;
          }

          if (__OFADD__(v61, v64))
          {
            goto LABEL_116;
          }

          if (v61 + v64 >= v46)
          {
            if (v46 < v64)
            {
              v41 = v38 - 2;
            }

            goto LABEL_80;
          }

          goto LABEL_73;
        }

        if (v38 < 2)
        {
          goto LABEL_110;
        }

        v66 = *v43;
        v65 = v43[1];
        v54 = __OFSUB__(v65, v66);
        v61 = v65 - v66;
        v62 = v54;
LABEL_73:
        if (v62)
        {
          goto LABEL_113;
        }

        v68 = *v42;
        v67 = v42[1];
        v54 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v54)
        {
          goto LABEL_115;
        }

        if (v69 < v61)
        {
          goto LABEL_87;
        }

LABEL_80:
        if (v41 - 1 >= v38)
        {
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
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v73 = (v39 + 16 * (v41 - 1));
        v74 = *v73;
        v75 = v41;
        v76 = (v39 + 16 * v41);
        v77 = v76[1];
        sub_293A8((*a3 + 8 * *v73), (*a3 + 8 * *v76), (*a3 + 8 * v77), v98);
        if (v100)
        {
          goto LABEL_101;
        }

        if (v77 < v74)
        {
          goto LABEL_103;
        }

        v78 = v5;
        v5 = v39;
        v79 = v6;
        v6 = *(v6 + 16);
        if (v75 > v6)
        {
          goto LABEL_104;
        }

        *v73 = v74;
        v73[1] = v77;
        if (v75 >= v6)
        {
          goto LABEL_105;
        }

        v80 = v75;
        v38 = v6 - 1;
        memmove(v76, v76 + 2, 16 * (v6 - 1 - v80));
        *(v79 + 16) = v6 - 1;
        v81 = v6 > 2;
        v6 = v79;
        v39 = v5;
        v5 = v78;
        if (!v81)
        {
          goto LABEL_87;
        }
      }

      v48 = v39 + 16 * v38;
      v49 = *(v48 - 64);
      v50 = *(v48 - 56);
      v54 = __OFSUB__(v50, v49);
      v51 = v50 - v49;
      if (v54)
      {
        goto LABEL_106;
      }

      v53 = *(v48 - 48);
      v52 = *(v48 - 40);
      v54 = __OFSUB__(v52, v53);
      v46 = v52 - v53;
      v47 = v54;
      if (v54)
      {
        goto LABEL_107;
      }

      v55 = v43[1];
      v56 = v55 - *v43;
      if (__OFSUB__(v55, *v43))
      {
        goto LABEL_109;
      }

      v54 = __OFADD__(v46, v56);
      v57 = v46 + v56;
      if (v54)
      {
        goto LABEL_112;
      }

      if (v57 >= v51)
      {
        v71 = *v42;
        v70 = v42[1];
        v54 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v54)
        {
          goto LABEL_120;
        }

        if (v46 < v72)
        {
          v41 = v38 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_58;
    }

LABEL_87:
    v4 = a3[1];
    if (v5 >= v4)
    {
      goto LABEL_91;
    }
  }

  v26 = (v7 + a4);
  if (__OFADD__(v7, a4))
  {
    goto LABEL_124;
  }

  if (v26 >= v25)
  {
    v26 = a3[1];
  }

  if (v26 < v7)
  {
LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

  if (v5 == v26)
  {
    goto LABEL_38;
  }

  v94 = v6;
  v96 = v7;
  v27 = *a3;
  v28 = *a3 + 8 * v5 - 8;
  v29 = v7 - v5;
  v98 = v26;
LABEL_31:
  v30 = *(v27 + 8 * v5);
  v31 = v29;
  v32 = v28;
  while (1)
  {
    v33 = *v32;

    v34 = sub_A2E14();

    if ((v34 & 1) == 0)
    {
LABEL_36:
      ++v5;
      v28 += 8;
      --v29;
      if (v5 == v98)
      {
        v5 = v98;
        v6 = v94;
        v7 = v96;
        goto LABEL_38;
      }

      goto LABEL_31;
    }

    if (!v27)
    {
      break;
    }

    v35 = *v32;
    *v32 = v32[1];
    v32[1] = v35;
    --v32;
    if (__CFADD__(v31++, 1))
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
}

uint64_t sub_28D4C(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_46;
  }

LABEL_2:
  for (*a1 = v4; ; v4 = *a1)
  {
    v6 = *(v4 + 16);
    if (v6 < 2)
    {
      return 1;
    }

    v7 = *a3;
    if (!*a3)
    {
      break;
    }

    v34 = v6 - 2;
    v31 = *(v4 + 16);
    v32 = v6 - 1;
    v8 = *(v4 + 16 * v6);
    v33 = v4;
    v9 = (v7 + 8 * v8);
    v10 = 8 * *(v4 + 16 * (v6 - 1) + 32);
    v11 = (v7 + v10);
    v12 = *(v4 + 16 * (v6 - 1) + 40);
    v13 = (v7 + 8 * v12);
    v14 = v8;
    v15 = v10 - 8 * v8;
    v16 = 8 * v12 - v10;
    if (v15 >> 3 < v16 >> 3)
    {
      sub_55C74(v7 + 8 * v8, v15 >> 3, a2);
      v17 = (a2 + v15);
      v18 = a2;
      v4 = v14;
      while (1)
      {
        if (v18 >= v17 || v11 >= v13)
        {
          v11 = v9;
          goto LABEL_32;
        }

        v20 = *v11;
        if (*(*v18 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin21WeatherConditionEvent_count) >= *(*v11 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin21WeatherConditionEvent_count))
        {
          break;
        }

        v21 = v9 == v11++;
        if (!v21)
        {
          goto LABEL_16;
        }

LABEL_17:
        ++v9;
      }

      v20 = *v18;
      v21 = v9 == v18++;
      if (v21)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v9 = v20;
      goto LABEL_17;
    }

    sub_55C74(v7 + v10, v16 >> 3, a2);
    v17 = (a2 + v16);
    v4 = v14;
LABEL_19:
    v22 = v11 - 1;
    for (--v13; v17 > a2 && v9 < v11; --v13)
    {
      v24 = *(v17 - 1);
      if (*(*v22 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin21WeatherConditionEvent_count) < *(v24 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin21WeatherConditionEvent_count))
      {
        v21 = v13 + 1 == v11--;
        if (!v21)
        {
          *v13 = *v22;
          v11 = v22;
        }

        goto LABEL_19;
      }

      if (v17 != v13 + 1)
      {
        *v13 = v24;
      }

      --v17;
    }

    v18 = a2;
LABEL_32:
    v25 = v17 - v18;
    if (v11 != v18 || v11 >= &v18[v25])
    {
      memmove(v11, v18, 8 * v25);
    }

    if (v12 < v4)
    {
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      result = sub_29650(v4);
      v4 = result;
      goto LABEL_2;
    }

    v27 = v33;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = sub_29650(v33);
    }

    if (v34 >= *(v27 + 2))
    {
      goto LABEL_45;
    }

    v28 = &v27[16 * v31];
    *v28 = v4;
    v28[1] = v12;
    *a1 = v27;
    result = sub_295C4(v32);
  }

  __break(1u);
  return result;
}

uint64_t sub_28FCC(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 8;
  v9 = (a3 - a2) / 8;
  if (v8 >= v9)
  {
    sub_55C74(a2, (a3 - a2) / 8, a4);
    v10 = &v4[8 * v9];
    while (2)
    {
      v15 = v6 - 8;
      v5 -= 8;
LABEL_38:
      if (v10 > v4 && v6 > v7)
      {
        v17 = *(v10 - 1);
        v18 = 50800;
        switch(*(*v15 + 16))
        {
          case 1:
            goto LABEL_65;
          case 2:
            v18 = 50700;
            goto LABEL_65;
          case 3:
            v18 = 50600;
            goto LABEL_65;
          case 4:
            v18 = 50500;
            goto LABEL_65;
          case 5:
            v18 = 50400;
            goto LABEL_65;
          case 6:
            v18 = 30900;
            goto LABEL_65;
          case 7:
            v18 = 30800;
            goto LABEL_65;
          case 8:
            v18 = 30700;
            goto LABEL_65;
          case 9:
            v18 = 30600;
            goto LABEL_65;
          case 0xA:
            v18 = 30500;
            goto LABEL_65;
          case 0xB:
            v18 = 30400;
            goto LABEL_65;
          case 0xC:
            v18 = 30300;
            goto LABEL_65;
          case 0xD:
            v18 = 10900;
            goto LABEL_65;
          case 0xE:
            v18 = 10800;
            goto LABEL_65;
          case 0xF:
            v18 = 10700;
            goto LABEL_65;
          case 0x10:
            v18 = 10600;
            goto LABEL_65;
          case 0x11:
            v18 = 10500;
            goto LABEL_65;
          case 0x12:
            v18 = 20;
            goto LABEL_65;
          case 0x13:
            v18 = 10;
            goto LABEL_65;
          case 0x14:
            v18 = 10650;
            goto LABEL_65;
          case 0x15:
            v18 = 10550;
            goto LABEL_65;
          case 0x16:
            v18 = 0;
LABEL_65:
            if (v18 >= qword_A8508[*(v17 + 16)])
            {
              goto LABEL_66;
            }

            v14 = v5 + 8 == v6;
            v6 -= 8;
            if (!v14)
            {
              *v5 = *v15;
              v6 = v15;
            }

            continue;
          default:
LABEL_66:
            if (v10 != v5 + 8)
            {
              *v5 = v17;
            }

            v5 -= 8;
            v10 -= 8;
            goto LABEL_38;
        }
      }

      break;
    }
  }

  else
  {
    sub_55C74(a1, (a2 - a1) / 8, a4);
    v10 = &v4[8 * v8];
    while (v4 < v10 && v6 < v5)
    {
      v12 = *v4;
      v13 = 50800;
      switch(*(*v4 + 16))
      {
        case 1:
          goto LABEL_29;
        case 2:
          v13 = 50700;
          goto LABEL_29;
        case 3:
          v13 = 50600;
          goto LABEL_29;
        case 4:
          v13 = 50500;
          goto LABEL_29;
        case 5:
          v13 = 50400;
          goto LABEL_29;
        case 6:
          v13 = 30900;
          goto LABEL_29;
        case 7:
          v13 = 30800;
          goto LABEL_29;
        case 8:
          v13 = 30700;
          goto LABEL_29;
        case 9:
          v13 = 30600;
          goto LABEL_29;
        case 0xA:
          v13 = 30500;
          goto LABEL_29;
        case 0xB:
          v13 = 30400;
          goto LABEL_29;
        case 0xC:
          v13 = 30300;
          goto LABEL_29;
        case 0xD:
          v13 = 10900;
          goto LABEL_29;
        case 0xE:
          v13 = 10800;
          goto LABEL_29;
        case 0xF:
          v13 = 10700;
          goto LABEL_29;
        case 0x10:
          v13 = 10600;
          goto LABEL_29;
        case 0x11:
          v13 = 10500;
          goto LABEL_29;
        case 0x12:
          v13 = 20;
          goto LABEL_29;
        case 0x13:
          v13 = 10;
          goto LABEL_29;
        case 0x14:
          v13 = 10650;
          goto LABEL_29;
        case 0x15:
          v13 = 10550;
          goto LABEL_29;
        case 0x16:
          v13 = 0;
LABEL_29:
          if (v13 >= qword_A8508[*(*v6 + 16)])
          {
            goto LABEL_33;
          }

          v12 = *v6;
          v14 = v7 == v6;
          v6 += 8;
          if (!v14)
          {
            goto LABEL_34;
          }

          goto LABEL_35;
        default:
LABEL_33:
          v14 = v7 == v4;
          v4 += 8;
          if (!v14)
          {
LABEL_34:
            *v7 = v12;
          }

LABEL_35:
          v7 += 8;
          break;
      }
    }

    v6 = v7;
  }

  v19 = (v10 - v4) / 8;
  if (v6 != v4 || v6 >= &v4[8 * v19])
  {
    memmove(v6, v4, 8 * v19);
  }

  return 1;
}

uint64_t sub_293A8(void *a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = a2 - a1;
  v9 = a3 - a2;
  if (v8 < v9)
  {
    sub_55C74(a1, a2 - a1, a4);
    v10 = &v4[v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = v5;
      v13 = *v6;
      v14 = *v4;

      v15 = sub_A2E14();

      if ((v15 & 1) == 0)
      {
        break;
      }

      v16 = v6;
      v17 = v7 == v6++;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      v5 = v12;
    }

    v16 = v4;
    v17 = v7 == v4++;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v16;
    goto LABEL_13;
  }

  sub_55C74(a2, a3 - a2, a4);
  v10 = &v4[v9];
  v30 = v4;
LABEL_15:
  v18 = v6 - 1;
  --v5;
  while (v10 > v4 && v6 > v7)
  {
    v20 = v7;
    v21 = *(v10 - 1);
    v22 = v18;
    v23 = *v18;

    v24 = sub_A2E14();

    v25 = v5 + 1;
    if (v24)
    {
      v17 = v25 == v6;
      v26 = v22;
      v6 = v22;
      v7 = v20;
      v4 = v30;
      if (!v17)
      {
        *v5 = *v26;
        v6 = v26;
      }

      goto LABEL_15;
    }

    if (v10 != v25)
    {
      *v5 = *(v10 - 1);
    }

    --v5;
    --v10;
    v18 = v22;
    v7 = v20;
    v4 = v30;
  }

LABEL_28:
  v27 = v10 - v4;
  if (v6 != v4 || v6 >= &v4[v27])
  {
    memmove(v6, v4, 8 * v27);
  }

  return 1;
}

uint64_t sub_295C4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_29650(v3);
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
    v7 = v5 - 1 - a1;
    v8 = v3 + 16 * a1;
    v9 = *(v8 + 32);
    v10 = *(v8 + 40);
    memmove((v8 + 32), (v8 + 48), 16 * v7);
    *(v3 + 16) = v6;
    *v1 = v3;
    return v9;
  }

  return result;
}

char *sub_29664(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_29690(char *result, int64_t a2, char a3, char *a4)
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
    sub_4BF0(&qword_DC9D0, &qword_A84E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void *sub_297BC(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (a1 >> 62)
  {
    v8 = sub_29E04();
    if (v8)
    {
      v9 = v8;
      v4 = a2(v8, 0);
      a3(v4 + 32, v9, a1);
      v11 = v10;

      if (v11 == v9)
      {
        return v4;
      }

      __break(1u);
    }

    return _swiftEmptyArrayStorage;
  }

  return (a1 & 0xFFFFFFFFFFFFFF8);
}

uint64_t sub_29854(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_A4C94();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1BF68(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_29D54(0, &qword_DC1C8, INTask_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_29D94(&qword_DC9E0, &qword_DC9D8, &qword_A84F0);
        for (i = 0; i != v7; ++i)
        {
          sub_4BF0(&qword_DC9D8, &qword_A84F0);
          v9 = sub_9885C(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_299D8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_A4C94();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1BF68(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for WeatherConditionEvent();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_29D94(&qword_DC9C8, &qword_DC9C0, &qword_A84E0);
        for (i = 0; i != v7; ++i)
        {
          sub_4BF0(&qword_DC9C0, &qword_A84E0);
          v9 = sub_988D0(v12, i, a3);
          v11 = *v10;

          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_29B4C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_A4C94();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1BF68(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_29D54(0, &qword_DC9F0, SACalendarEvent_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_29D94(&qword_DCA00, &qword_DC9F8, &unk_A84F8);
        for (i = 0; i != v7; ++i)
        {
          sub_4BF0(&qword_DC9F8, &unk_A84F8);
          v9 = sub_98B04(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_29CFC()
{
  result = qword_DC9E8;
  if (!qword_DC9E8)
  {
    sub_A2EA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DC9E8);
  }

  return result;
}

uint64_t sub_29D54(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_29D94(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1B4B0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29E04()
{

  return sub_A4C94();
}

BOOL sub_29E60(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_CF4E8;
  v6._object = a2;
  v4 = sub_A4CE4(v3, v6);

  return v4 != 0;
}

BOOL sub_29EB4@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_29E60(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for WeatherDialogs(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x29FCCLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2A008()
{
  result = qword_DCA08;
  if (!qword_DCA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DCA08);
  }

  return result;
}

uint64_t sub_2A05C()
{
  sub_1C3FC();
  result = sub_A4544();
  qword_E0820 = result;
  return result;
}

uint64_t sub_2A09C(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  sub_7584(a1, v2);
  if ((*(v3 + 32))(v2, v3))
  {
    return 1;
  }

  v5 = a1[3];
  v6 = a1[4];
  sub_7584(a1, v5);
  return (*(v6 + 40))(v5, v6) & 1;
}

uint64_t sub_2A130()
{
  type metadata accessor for AddRemoveFlow();
  sub_2BA54();
  sub_2BB38();
  return sub_A3334();
}

uint64_t sub_2A188(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return sub_58F8();
}

uint64_t sub_2A19C()
{
  sub_AA40();
  v3 = *(v0 + 48);
  sub_810C4(v4 - 24, 0x80000000000AF340, 0xD00000000000002BLL, 0x80000000000AF2D0, v5, 0xE900000000000029);
  v6 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin13AddRemoveFlow_siriKitEventSender;
  *(v0 + 56) = OBJC_IVAR____TtC23DailyBriefingFlowPlugin13AddRemoveFlow_siriKitEventSender;
  v7 = (v3 + v6);
  v8 = *sub_7584((v3 + v6), *(v3 + v6 + 24));
  v9 = sub_2BB48();
  sub_931E8(v9, v10, 0, 0);
  sub_4D424();

  v11 = *(v3 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin13AddRemoveFlow_templatingService);
  type metadata accessor for CommonTemplatingService();
  inited = swift_initStackObject();
  *(v0 + 64) = inited;
  *(inited + 16) = v11;
  v13 = (v3 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin13AddRemoveFlow_intent);
  sub_2BAFC();
  v14 = v2[4];

  if ((v14(v1, v2) & 1) == 0)
  {
    sub_2BAFC();
    v15 = v2[5];
    v16 = sub_2BB28();
    if ((v17(v16) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  sub_2BAFC();
  v18 = v2[9];
  v19 = sub_2BB28();
  v21 = v20(v19);
  *(v0 + 155) = v21;
  if (v21 == 5)
  {
    goto LABEL_7;
  }

  v22 = v21;
  if (qword_DA8B8 != -1)
  {
    swift_once();
  }

  v23 = sub_9C8AC(v22, qword_E0820);
  *(v0 + 156) = v23;
  if (v23 != 8)
  {
    v44 = v23;
    v45 = *(v0 + 48);
    v46 = v13[3];
    v47 = v13[4];
    sub_7584(v13, v46);
    *(v0 + 157) = (*(v47 + 32))(v46, v47) & 1;
    *(v0 + 72) = *(v45 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin13AddRemoveFlow_knowledgeStore);
    v48 = swift_task_alloc();
    *(v0 + 80) = v48;
    *v48 = v0;
    v48[1] = sub_2A720;

    return sub_44F0(v44);
  }

  else
  {
LABEL_7:
    sub_A4B54(48);

    sub_2BAFC();
    v24 = v2[11];
    v25 = sub_2BB28();
    *(v0 + 152) = v26(v25);
    sub_4BF0(&qword_DCB18, &qword_A8780);
    v50._countAndFlagsBits = sub_A4644();
    sub_A46D4(v50);

    v51._countAndFlagsBits = 8236;
    v51._object = 0xE200000000000000;
    sub_A46D4(v51);
    v27 = v13[3];
    v28 = v13[4];
    sub_7584(v13, v27);
    *(v0 + 153) = (*(v28 + 72))(v27, v28);
    sub_4BF0(&qword_DDFA0, qword_A8788);
    v52._countAndFlagsBits = sub_A4644();
    sub_A46D4(v52);

    v53._countAndFlagsBits = 46;
    v53._object = 0xE100000000000000;
    sub_A46D4(v53);

    v54._countAndFlagsBits = 0x203A6570797420;
    v54._object = 0xE700000000000000;
    sub_A46D4(v54);

    sub_AA40();
    sub_810AC(v29, v30, v31, v32, v33, 0xE900000000000029);

    v34 = sub_7584(v7, v7[3]);
    sub_A4B54(46);

    v35 = v13[3];
    v36 = v13[4];
    sub_7584(v13, v35);
    *(v0 + 154) = (*(v36 + 88))(v35, v36);
    v55._countAndFlagsBits = sub_A4644();
    sub_A46D4(v55);

    v37 = *v34;
    v38 = sub_2BB48();
    sub_931E8(v38, v39, v40, v41);
    sub_4D424();

    v42 = swift_task_alloc();
    *(v0 + 136) = v42;
    *v42 = v0;
    v42[1] = sub_2ACB0;

    return sub_36C2C();
  }
}

uint64_t sub_2A720()
{
  sub_5950();
  sub_AAA8();
  sub_1A690();
  *v2 = v1;
  v4 = *(v3 + 80);
  *v2 = *v0;
  *(v1 + 88) = v5;
  *(v1 + 96) = v6;

  v7 = sub_AA8C();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_2A808()
{
  sub_5950();
  *(v0 + 158) = sub_4F034(*(v0 + 88), *(v0 + 96));
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v1[1] = sub_2A8AC;
  v2 = *(v0 + 72);
  v3 = *(v0 + 157);
  v4 = *(v0 + 156);

  return sub_4EE58(v4, v3);
}

uint64_t sub_2A8AC()
{
  sub_5950();
  sub_AAA8();
  v2 = *(v1 + 104);
  v3 = *v0;
  sub_5930();
  *v4 = v3;

  v5 = sub_AA8C();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_2A990()
{
  v1 = (*(v0 + 48) + *(v0 + 56));
  v2 = *(v0 + 155);
  v3 = *sub_7584(v1, v1[3]);
  v4 = sub_2BB48();
  sub_931E8(v4, v5, 0, 0);
  sub_4D424();

  v6 = sub_1C90C(v2);
  v8 = v7;
  *(v0 + 112) = v7;
  v9 = swift_task_alloc();
  *(v0 + 120) = v9;
  *v9 = v0;
  v9[1] = sub_2AA98;
  v10 = *(v0 + 157);
  v11 = *(v0 + 64);
  v12 = *(v0 + 48);
  v13 = *(v0 + 158);

  return sub_2AFD4(v10, v6, v8, v11, v13);
}

uint64_t sub_2AA98()
{
  sub_5950();
  sub_AAA8();
  sub_1A690();
  *v2 = v1;
  v4 = *(v3 + 120);
  v5 = *(v3 + 112);
  v6 = *v0;
  sub_5930();
  *v7 = v6;
  *(v9 + 128) = v8;

  v10 = sub_AA8C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_2AB98()
{
  v2 = *(v0 + 128);
  v3 = *(v0 + 157);
  v4 = *sub_2BB80();
  sub_931E8(132, 6, 0, 0);
  sub_4D424();

  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = v3;

  sub_A3634();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_2ACB0()
{
  sub_5950();
  sub_AAA8();
  sub_1A690();
  *v2 = v1;
  v4 = *(v3 + 136);
  *v2 = *v0;
  *(v1 + 144) = v5;

  v6 = sub_AA8C();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_2AD98()
{
  v1 = *(v0 + 144);
  v2 = *sub_2BB80();
  sub_931E8(132, 6, 0xD00000000000001DLL, 0x80000000000AF390);
  sub_4D424();

  sub_A3634();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2AE9C(uint64_t a1)
{
  v1 = (a1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin13AddRemoveFlow_siriKitEventSender);
  v2 = *sub_7584((a1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin13AddRemoveFlow_siriKitEventSender), *(a1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin13AddRemoveFlow_siriKitEventSender + 24));
  sub_931E8(132, 6, 0xD00000000000001DLL, 0x80000000000AF390);
  sub_4D424();

  v3 = *sub_7584(v1, v1[3]);
  return sub_4D81C();
}

uint64_t sub_2AF3C(uint64_t a1, char a2)
{
  v3 = (a1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin13AddRemoveFlow_siriKitEventSender);
  v4 = *sub_7584((a1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin13AddRemoveFlow_siriKitEventSender), *(a1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin13AddRemoveFlow_siriKitEventSender + 24));
  sub_931E8(132, 6, 0, 0);
  sub_4D424();

  v5 = *sub_7584(v3, v3[3]);
  return sub_4D884(a2);
}

uint64_t sub_2AFD4(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 73) = a5;
  *(v6 + 32) = a4;
  *(v6 + 40) = v5;
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  *(v6 + 72) = a1;
  return sub_58F8();
}

uint64_t sub_2AFF4()
{
  if (*(v0 + 73) && *(v0 + 73) == 1)
  {
    v1 = *(v0 + 72);

    if (v1)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v2 = *(v0 + 72);
    v3 = sub_A4E44();

    if (v3 & 1) == 0 || (v2)
    {
LABEL_10:
      v9 = *(v0 + 40);
      v10 = *(v0 + 72);
      v11 = sub_4ED80(*(v0 + 73));
      v13 = *(v0 + 16);
      v12 = *(v0 + 24);
      if (v11 & 1) == 0 || (v10)
      {
        sub_2BB18();
        sub_A4B54(17);

        v36._countAndFlagsBits = sub_2BB38();
        sub_A46D4(v36);
        sub_2BB58();
        sub_2BAC4(v23, v24, v25, v26, v27, v28, v29, v30, v32, 0x20676E69646441, 0xE700000000000000);

        v31 = swift_task_alloc();
        *(v0 + 64) = v31;
        *v31 = v0;
        sub_2BAAC(v31);

        return sub_36420();
      }

      else
      {
        sub_2BB18();
        sub_A4B54(19);

        v35._countAndFlagsBits = sub_2BB38();
        sub_A46D4(v35);
        sub_2BB58();
        sub_2BAC4(v14, v15, v16, v17, v18, v19, v20, v21, v32, 0x676E69766F6D6552, 0xE900000000000020);

        v22 = swift_task_alloc();
        *(v0 + 56) = v22;
        *v22 = v0;
        sub_2BAAC(v22);

        return sub_365B4();
      }
    }
  }

  v4 = *(v0 + 40);
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  sub_2BB18();
  sub_A4B54(23);

  v34._countAndFlagsBits = 0xD000000000000015;
  v34._object = 0x80000000000AF320;
  sub_A46D4(v34);
  sub_810C4(v6, v5, 0xD00000000000002BLL, 0x80000000000AF2D0, 0xD00000000000001ELL, 0x80000000000AF300);

  v7 = swift_task_alloc();
  *(v0 + 48) = v7;
  *v7 = v0;
  sub_2BAAC(v7);

  return sub_36748();
}

uint64_t sub_2B348()
{
  sub_5950();
  sub_AAA8();
  v2 = *(v1 + 48);
  v3 = *v0;
  sub_5930();
  *v4 = v3;

  v5 = sub_595C();

  return v6(v5);
}

uint64_t sub_2B42C()
{
  sub_5950();
  sub_AAA8();
  v2 = *(v1 + 56);
  v3 = *v0;
  sub_5930();
  *v4 = v3;

  v5 = sub_595C();

  return v6(v5);
}

uint64_t sub_2B510()
{
  sub_5950();
  sub_AAA8();
  v2 = *(v1 + 64);
  v3 = *v0;
  sub_5930();
  *v4 = v3;

  v5 = sub_595C();

  return v6(v5);
}

uint64_t sub_2B5F4()
{
  v1 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin13AddRemoveFlow_logger;
  v2 = sub_A43D4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin13AddRemoveFlow_intent));
  v3 = *(v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin13AddRemoveFlow_knowledgeStore);

  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin13AddRemoveFlow_aceService));
  v4 = *(v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin13AddRemoveFlow_templatingService);

  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin13AddRemoveFlow_deviceState));
  v5 = *(v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin13AddRemoveFlow_dialogService);

  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin13AddRemoveFlow_siriKitEventSender));
  return v0;
}

uint64_t sub_2B6C4()
{
  sub_2B5F4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for AddRemoveFlow()
{
  result = qword_DCA38;
  if (!qword_DCA38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2B770()
{
  result = sub_A43D4();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2B84C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2B8E8;

  return sub_2A188(a1);
}

uint64_t sub_2B8E8()
{
  sub_5950();
  sub_AAA8();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_5930();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_2B9CC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AddRemoveFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t sub_2BA10()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 25, 7);
}

unint64_t sub_2BA54()
{
  result = qword_DCB20;
  if (!qword_DCB20)
  {
    type metadata accessor for AddRemoveFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DCB20);
  }

  return result;
}

uint64_t sub_2BAAC(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[3];
  v4 = v2[4];
  return v2[2];
}

void sub_2BAC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11)
{

  sub_810C4(a10, a11, 0xD00000000000002BLL, v12 | 0x8000000000000000, 0xD00000000000001ELL, v11 | 0x8000000000000000);
}

void *sub_2BAFC()
{
  v2 = v0[4];
  v3 = v0[3];

  return sub_7584(v0, v3);
}

void sub_2BB58()
{
  v1._countAndFlagsBits = 0x2E6E69616D6F6420;
  v1._object = 0xE800000000000000;

  sub_A46D4(v1);
}

void *sub_2BB80()
{
  v2 = v0[8];
  v3 = v0[5];
  v4 = (v0[6] + v0[7]);
  v5 = v4[3];

  return sub_7584(v4, v5);
}

uint64_t sub_2BBA0()
{
  v0 = sub_A2DA4();
  v2 = v1;
  v3 = sub_A2DA4();
  if (v2)
  {
    if (!v4)
    {
      goto LABEL_22;
    }

    if (v0 == v3 && v2 == v4)
    {
    }

    else
    {
      v6 = sub_2BD5C();

      if ((v6 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v4)
  {
    goto LABEL_22;
  }

  v7 = sub_A2D84();
  v9 = v8;
  v10 = sub_A2D84();
  if (!v9)
  {
    if (!v11)
    {
      goto LABEL_25;
    }

LABEL_22:

    return 0;
  }

  if (!v11)
  {
    goto LABEL_22;
  }

  if (v7 != v10 || v9 != v11)
  {
    v13 = sub_2BD5C();

    if (v13)
    {
      goto LABEL_25;
    }

    return 0;
  }

LABEL_25:
  v15 = sub_A2D94();
  v17 = v16;
  if (v15 == sub_A2D94() && v17 == v18)
  {

    return 1;
  }

  else
  {
    v20 = sub_A4E44();

    return v20 & 1;
  }
}

uint64_t sub_2BD5C()
{

  return sub_A4E44();
}

uint64_t type metadata accessor for DailyBriefingCommonCATsSimple()
{
  result = qword_DCB28;
  if (!qword_DCB28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2BE08(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_2BE5C(a1, a2);
}

uint64_t sub_2BE5C(uint64_t a1, uint64_t a2)
{
  v5 = sub_A4354();
  v6 = sub_2C1C8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_4BF0(&qword_DC748, &qword_A8330);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  sub_2C0F0(a1, &v18 - v15);
  (*(v8 + 16))(v12, a2, v2);
  v16 = sub_A42F4();
  (*(v8 + 8))(a2, v2);
  sub_2C160(a1);
  return v16;
}

uint64_t sub_2BFB8(uint64_t a1, uint64_t a2)
{
  v5 = sub_A4354();
  v6 = sub_2C1C8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 48);
  v14 = *(v2 + 52);
  swift_allocObject();
  (*(v8 + 16))(v12, a2, v3);
  v15 = sub_A4304();
  (*(v8 + 8))(a2, v3);
  return v15;
}

uint64_t sub_2C0B8()
{
  v0 = sub_A4314();

  return _swift_deallocClassInstance(v0, 16, 7);
}

uint64_t sub_2C0F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_4BF0(&qword_DC748, &qword_A8330);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2C160(uint64_t a1)
{
  v2 = sub_4BF0(&qword_DC748, &qword_A8330);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for DailyBriefingCommonCATs()
{
  result = qword_DCB78;
  if (!qword_DCB78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2C26C(uint64_t a1)
{
  v3 = sub_2567C(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2C330;

  return v5(a1, 0xD000000000000025, 0x80000000000AF460, _swiftEmptyArrayStorage);
}

uint64_t sub_2C330()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2C424(uint64_t a1)
{
  v3 = sub_2567C(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2C6E0;

  return v5(a1, 0xD000000000000028, 0x80000000000AF430, _swiftEmptyArrayStorage);
}

uint64_t sub_2C4E8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_2C53C(a1, a2);
}

uint64_t sub_2C53C(uint64_t a1, uint64_t a2)
{
  v4 = sub_A4354();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_4BF0(&qword_DC748, &qword_A8330);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  sub_2C0F0(a1, &v14 - v11);
  (*(v5 + 16))(v8, a2, v4);
  v12 = sub_A4274();
  (*(v5 + 8))(a2, v4);
  sub_2C160(a1);
  return v12;
}

uint64_t sub_2C6A8()
{
  v0 = sub_A4294();

  return _swift_deallocClassInstance(v0, 16, 7);
}

uint64_t sub_2C6E4()
{
  sub_5950();
  *(v1 + 72) = v2;
  *(v1 + 16) = v3;
  *(v1 + 24) = v0;
  v4 = type metadata accessor for DBCalendarState();
  *(v1 + 32) = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  *(v1 + 40) = swift_task_alloc();
  v6 = *(*(sub_A4634() - 8) + 64) + 15;
  *(v1 + 48) = swift_task_alloc();
  v7 = sub_AA8C();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_2C79C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  v3 = sub_A2B44();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_A2B34();
  sub_2E3E4();
  sub_A2B24();
  v10 = *(v0 + 48);

  sub_A4624();
  sub_2E7C4();
  sub_A4614();
  v12 = v11;
  *(v0 + 56) = v11;
  v13 = sub_2E7C4();
  sub_2E38C(v13, v14);
  if (v12)
  {
    v15 = swift_task_alloc();
    *(v0 + 64) = v15;
    *v15 = v0;
    v15[1] = sub_2CA08;
    v16 = *(v0 + 24);
    v17 = *(v0 + 72);

    return sub_39B8();
  }

  else
  {
    v7 = *(v0 + 40);
    v6 = *(v0 + 48);

    sub_AA9C();

    return v8();
  }
}

uint64_t sub_2CA08()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v4 = *v0;
  sub_5930();
  *v5 = v4;

  v6 = *(v1 + 48);
  v7 = *(v1 + 40);

  v8 = *(v4 + 8);

  return v8();
}

uint64_t sub_2CB50(uint64_t a1, char a2, char a3, double a4)
{
  *(v5 + 34) = a3;
  *(v5 + 33) = a2;
  *(v5 + 72) = a1;
  *(v5 + 80) = v4;
  *(v5 + 64) = a4;
  v9 = *(*(sub_A4634() - 8) + 64) + 15;
  *(v5 + 88) = swift_task_alloc();
  *(v5 + 16) = a4;
  *(v5 + 24) = a1;
  *(v5 + 32) = a2 & 1;

  return _swift_task_switch(sub_2CC10, 0, 0);
}

uint64_t sub_2CC10()
{
  v1 = sub_A2B44();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_A2B34();
  sub_2E338();
  sub_A2B24();
  v7 = *(v0 + 88);

  sub_A4624();
  sub_2E7C4();
  sub_A4614();
  v9 = v8;
  *(v0 + 96) = v8;
  v10 = sub_2E7C4();
  sub_2E38C(v10, v11);
  if (v9)
  {
    v12 = swift_task_alloc();
    *(v0 + 104) = v12;
    *v12 = v0;
    v12[1] = sub_2CE8C;
    v13 = *(v0 + 80);
    v14 = *(v0 + 34);

    return sub_39B8();
  }

  else
  {
    v4 = *(v0 + 88);

    sub_AA9C();

    return v5();
  }
}

uint64_t sub_2CE8C()
{
  sub_5950();
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v3 = *v0;
  sub_5930();
  *v4 = v3;

  v5 = sub_AA8C();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_2CF90()
{
  sub_5950();
  v1 = *(v0 + 88);

  sub_AA9C();

  return v2();
}

uint64_t sub_2CFE8()
{
  v0 = sub_A43D4();
  sub_13310(v0, qword_E0888);
  v1 = sub_48A4(v0, qword_E0888);
  if (qword_DAA08 != -1)
  {
    swift_once();
  }

  v2 = sub_48A4(v0, qword_E0C48);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_2D0B0(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 48) = a3;
  *(v3 + 98) = a1;
  v4 = sub_A2EA4();
  *(v3 + 56) = v4;
  v5 = *(v4 - 8);
  *(v3 + 64) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = swift_task_alloc();
  sub_2E790(&unk_ACB98);
  v7 = swift_task_alloc();
  *(v3 + 88) = v7;
  *v7 = v3;
  v8 = sub_2E830(v7);

  return v9(v8);
}

uint64_t sub_2D1C0()
{
  sub_5950();
  v14 = *v0;
  sub_2E7D0(v1, v2, v3);
  v5 = *(v4 + 88);
  v6 = *v0;
  sub_5930();
  *v7 = v6;
  *(v9 + 96) = v8;

  v10 = sub_AA8C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_2D2A8()
{
  v1 = *(v0 + 96);
  if ((v1 & 0x100) != 0)
  {
    if (qword_DA8C0 != -1)
    {
      sub_2E770();
    }

    v21 = *(v0 + 98);
    v22 = sub_A43D4();
    sub_48A4(v22, qword_E0888);
    sub_2E7A0();
    sub_A4B54(33);
    sub_2104(v21);

    v23._countAndFlagsBits = 0xD00000000000001FLL;
    sub_2E844(v23, "mon#UnsupportedLocale");
    sub_2E7B0();
    sub_2E824();
    sub_810C4(v24, v25, v26, v27, v28, v29);

    goto LABEL_11;
  }

  v2 = 16;
  if (v1)
  {
    v2 = 8;
  }

  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 48);
  v8 = *(v0 + v2 + 16);
  sub_A2E44();
  sub_A2DE4();
  LOBYTE(v7) = sub_4FBDC(v4, v7);
  v9 = *(v6 + 8);
  v9(v4, v5);
  if (v7)
  {
    if (qword_DA8C0 != -1)
    {
      sub_2E770();
    }

    v10 = *(v0 + 80);
    v11 = *(v0 + 56);
    v12 = *(v0 + 98);
    v13 = sub_A43D4();
    sub_48A4(v13, qword_E0888);
    sub_2E7A0();
    sub_A4B54(58);
    v63._countAndFlagsBits = sub_2104(v12);
    sub_A46D4(v63);

    v14._countAndFlagsBits = 0xD000000000000038;
    sub_2E844(v14, "in the last 24 hours:");
    sub_2E7B0();
    sub_2E824();
    sub_810C4(v15, v16, v17, v18, v19, v20);

    v9(v10, v11);
LABEL_11:
    v30 = 1;
    goto LABEL_12;
  }

  if (v1)
  {
    if (qword_DA8C0 != -1)
    {
      sub_2E770();
    }

    v35 = *(v0 + 80);
    v61 = *(v0 + 56);
    v36 = *(v0 + 98);
    v37 = sub_A43D4();
    sub_48A4(v37, qword_E0888);
    sub_2E7A0();
    sub_A4B54(43);

    v38 = 0xE400000000000000;
    v64._countAndFlagsBits = sub_2104(v36);
    sub_A46D4(v64);

    v39._countAndFlagsBits = 0xD000000000000025;
    sub_2E844(v39, "e, skip warning.");
    v40 = sub_4F5E0();
    v41 = (v40 & 1) == 0;
    if (v40)
    {
      v42._countAndFlagsBits = 1702195828;
    }

    else
    {
      v42._countAndFlagsBits = 0x65736C6166;
    }

    if (v41)
    {
      v38 = 0xE500000000000000;
    }

    v42._object = v38;
    sub_A46D4(v42);

    v65._countAndFlagsBits = 32;
    v65._object = 0xE100000000000000;
    sub_A46D4(v65);

    sub_2E824();
    sub_810C4(v43, v44, v45, v46, v47, v48);

    v49 = sub_4F5E0();
    v9(v35, v61);
    v30 = v49 ^ 1;
  }

  else
  {
    if (qword_DA8C0 != -1)
    {
      sub_2E770();
    }

    v50 = *(v0 + 80);
    v51 = *(v0 + 56);
    v52 = *(v0 + 98);
    v53 = sub_A43D4();
    sub_48A4(v53, qword_E0888);
    sub_2E7A0();
    sub_A4B54(50);
    sub_2104(v52);

    v54._countAndFlagsBits = 0xD000000000000030;
    sub_2E844(v54, "le(forKey:knowledgeStore:now:)");
    sub_2E7B0();
    sub_2E824();
    sub_810C4(v55, v56, v57, v58, v59, v60);

    v9(v50, v51);
    v30 = 0;
  }

LABEL_12:
  v32 = *(v0 + 72);
  v31 = *(v0 + 80);

  v33 = *(v0 + 8);

  return v33(v30 & 1);
}

uint64_t sub_2D78C(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 48) = a2;
  *(v3 + 56) = a3;
  *(v3 + 122) = a1;
  v4 = sub_A2EA4();
  *(v3 + 64) = v4;
  v5 = *(v4 - 8);
  *(v3 + 72) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 88) = swift_task_alloc();
  sub_2E790(&unk_ACB98);
  v7 = swift_task_alloc();
  *(v3 + 96) = v7;
  *v7 = v3;
  v8 = sub_2E830(v7);

  return v9(v8);
}

uint64_t sub_2D89C()
{
  sub_5950();
  v14 = *v0;
  sub_2E7D0(v1, v2, v3);
  v5 = *(v4 + 96);
  v6 = *v0;
  sub_5930();
  *v7 = v6;
  *(v9 + 120) = v8;

  v10 = sub_AA8C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_2D984()
{
  v1 = *(v0 + 120);
  if ((v1 & 0x100) != 0)
  {
    v17 = *(v0 + 72);
    v16 = *(v0 + 80);
    v18 = *(v0 + 64);
    sub_A2E94();
    sub_A2E54();
    (*(v17 + 8))(v16, v18);
    sub_2E790(&unk_A8860);
    v30 = v19;
    v20 = swift_task_alloc();
    *(v0 + 112) = v20;
    *v20 = v0;
    v21.n128_f64[0] = sub_2E7E8(v20);
    v22 = 0;
    v23 = 1;
  }

  else
  {
    v3 = *(v0 + 80);
    v2 = *(v0 + 88);
    v4 = *(v0 + 64);
    v5 = *(v0 + 72);
    v6 = *(v0 + 56);
    v7 = *(v0 + 32);
    if (v1)
    {
      v8 = *(v0 + 24);
    }

    v9 = *(v0 + 88);
    sub_A2E44();
    sub_A2DE4();
    v10 = sub_4FBDC(v3, v6);
    v11 = *(v5 + 8);
    v11(v3, v4);
    v11(v2, v4);
    if (v10)
    {
      v13 = *(v0 + 80);
      v12 = *(v0 + 88);

      sub_AA9C();

      return v14();
    }

    v24 = *(v0 + 80);
    v25 = *(v0 + 64);
    sub_A2E94();
    sub_A2E54();
    v27 = v26;
    v11(v24, v25);
    sub_2E790(&unk_A8860);
    v30 = v28;
    v29 = swift_task_alloc();
    *(v0 + 104) = v29;
    *v29 = v0;
    v21.n128_f64[0] = sub_2E7E8(v29);
    v22 = v27;
    v23 = 0;
  }

  return v30(v22, v23, v21);
}

uint64_t sub_2DBBC()
{
  sub_5950();
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *v0;
  sub_5930();
  *v4 = v3;

  v5 = *(v1 + 88);
  v6 = *(v1 + 80);

  v7 = *(v3 + 8);

  return v7();
}

uint64_t sub_2DCDC()
{
  sub_5950();
  v1 = *v0;
  v2 = *(*v0 + 112);
  v3 = *v0;
  sub_5930();
  *v4 = v3;

  v5 = *(v1 + 88);
  v6 = *(v1 + 80);

  v7 = *(v3 + 8);

  return v7();
}

uint64_t sub_2DDFC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x63634F7473726966 && a2 == 0xEF65636E65727275;
  if (v4 || (sub_A4E44() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000000000AF650 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_A4E44();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_2DED4(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x63634F7473726966;
  }
}

uint64_t sub_2DF1C(void *a1)
{
  v3 = sub_4BF0(&qword_DCBE8, &qword_A8910);
  v4 = sub_591C(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  v10 = &v13[-v9];
  v11 = a1[4];
  sub_7584(a1, a1[3]);
  sub_2E510();
  sub_A4F64();
  v13[15] = 0;
  sub_A4DD4();
  if (!v1)
  {
    v13[14] = 1;
    sub_A4D84();
  }

  return (*(v6 + 8))(v10, v3);
}

uint64_t sub_2E090(uint64_t *a1)
{
  v3 = sub_4BF0(&qword_DCBD8, &qword_A8908);
  v4 = sub_591C(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  v10 = &v14 - v9;
  v11 = a1[4];
  v12 = sub_7584(a1, a1[3]);
  sub_2E510();
  sub_A4F54();
  if (!v1)
  {
    v16 = 0;
    sub_A4D54();
    v15 = 1;
    v12 = sub_A4D04();
    (*(v6 + 8))(v10, v3);
  }

  sub_761C(a1);
  return v12;
}

uint64_t sub_2E23C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2DDFC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2E264(uint64_t a1)
{
  v2 = sub_2E510();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_2E2A0(uint64_t a1)
{
  v2 = sub_2E510();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_2E2DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2E090(a1);
  if (!v2)
  {
    *a2 = v6;
    *(a2 + 8) = result;
    *(a2 + 16) = v5 & 1;
  }

  return result;
}

uint64_t sub_2E314(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  return sub_2DF1C(a1);
}

unint64_t sub_2E338()
{
  result = qword_DCBC8;
  if (!qword_DCBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DCBC8);
  }

  return result;
}

uint64_t sub_2E38C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_2E3E4()
{
  result = qword_DCBD0;
  if (!qword_DCBD0)
  {
    type metadata accessor for DBCalendarState();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DCBD0);
  }

  return result;
}

uint64_t sub_2E43C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DBCalendarState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 initializeBufferWithCopyOfBuffer for RequestOriginInfo(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for WarningHistory(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for WarningHistory(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 17) = v3;
  return result;
}

unint64_t sub_2E510()
{
  result = qword_DCBE0;
  if (!qword_DCBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DCBE0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WarningHistory.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2E630);
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

unint64_t sub_2E66C()
{
  result = qword_DCBF0;
  if (!qword_DCBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DCBF0);
  }

  return result;
}

unint64_t sub_2E6C4()
{
  result = qword_DCBF8;
  if (!qword_DCBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DCBF8);
  }

  return result;
}

unint64_t sub_2E71C()
{
  result = qword_DCC00;
  if (!qword_DCC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DCC00);
  }

  return result;
}

uint64_t sub_2E770()
{

  return swift_once();
}

uint64_t sub_2E790@<X0>(int *a1@<X8>)
{
  result = a1[1];
  v2 = a1 + *a1;
  return result;
}

uint64_t sub_2E7D0(uint64_t result, uint64_t a2, __int16 a3)
{
  *(v3 + 40) = a3;
  *(v3 + 24) = result;
  *(v3 + 32) = a2;
  *(v3 + 16) = v4;
  return result;
}

double sub_2E7E8(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = *(v2 + 48);
  v5 = *(v2 + 122);
  return v3;
}

void sub_2E800()
{

  sub_A4B54(30);
}

void sub_2E844(Swift::String a1@<X1:X0>, uint64_t a2@<X8>)
{

  a1._object = (a2 | 0x8000000000000000);
  sub_A46D4(a1);
}

id sub_2E85C()
{
  sub_29D54(0, &qword_DCD00, AMSBag_ptr);
  v1 = v0[6];
  v2 = v0[7];
  v4 = v0[8];
  v3 = v0[9];

  return sub_2E8D4();
}

id sub_2E8D4()
{
  v0 = sub_A45C4();

  v1 = sub_A45C4();

  v2 = [swift_getObjCClassFromMetadata() bagForProfile:v0 profileVersion:v1];

  return v2;
}

void *sub_2E968()
{
  type metadata accessor for AMSSearchService();
  swift_allocObject();
  result = sub_2E9A4();
  qword_E08A0 = result;
  return result;
}

void *sub_2E9A4()
{
  result = v0;
  v0[2] = 0xD000000000000011;
  v0[3] = 0x80000000000AD850;
  v0[4] = 0xD000000000000012;
  v0[5] = 0x80000000000AF700;
  v0[6] = 0x7374736163646F50;
  v0[7] = 0xE800000000000000;
  v0[8] = 49;
  v0[9] = 0xE100000000000000;
  v0[11] = 0;
  v0[12] = 0;
  v0[10] = 0;
  return result;
}

uint64_t sub_2EA0C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_A43A4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v2[11];
  if (!v11)
  {
    goto LABEL_8;
  }

  v12 = v2[12];
  if (v2[10] == a1 && v11 == a2)
  {
    v36 = v2[12];

    return v12;
  }

  v14 = sub_A4E44();

  if ((v14 & 1) == 0)
  {

LABEL_8:
    v47 = v6;
    v48 = a1;
    v46 = v7;
    v15 = sub_2E85C();
    v16 = v3[2];
    v17 = v3[3];
    v18 = v3[4];
    v19 = v3[5];

    v20 = sub_2F244(v15);
    if (qword_DA9C8 != -1)
    {
      swift_once();
    }

    v21 = qword_E0B80;
    v22 = *algn_E0B88;
    v23 = qword_E0B98;
    sub_A4384();
    sub_A49B4();
    sub_2F358();
    sub_A4374();
    sub_4BF0(&qword_DBB88, &unk_A6EB0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_A6E70;
    *(v24 + 32) = v48;
    *(v24 + 40) = a2;

    v45 = v20;
    v25 = sub_2F1A8(_swiftEmptyArrayStorage, v24, v20);
    v49 = 0;
    v44 = v25;
    v26 = [v25 resultWithError:&v49];
    if (v26)
    {
      v27 = v26;
      v28 = v49;
      sub_A49A4();
      sub_2F370();
      sub_2F358();
      sub_A4364();
      if (qword_DA9E8 != -1)
      {
        sub_2F338();
      }

      v29 = sub_A43D4();
      sub_48A4(v29, qword_E0BE8);
      sub_810C4(0xD000000000000020, 0x80000000000AF790, 0xD00000000000002ELL, 0x80000000000AF740, 0xD000000000000013, 0x80000000000AF770);
      v30 = [v27 allItems];
      sub_29D54(0, &qword_DCCF8, AMSLookupItem_ptr);
      v31 = sub_A4764();

      v32 = v3[10];
      v33 = v3[11];
      v34 = v3[12];
      v3[10] = v48;
      v3[11] = a2;
      v3[12] = v31;

      sub_2F2F4(v32, v33);
      v35 = [v27 allItems];
      v12 = sub_A4764();

      (*(v46 + 8))(v10, v47);
    }

    else
    {
      v43[1] = v21;
      v43[2] = v22;
      v37 = v49;
      sub_A2D44();

      swift_willThrow();
      if (qword_DAA70 != -1)
      {
        swift_once();
      }

      sub_7A124(0, qword_E0DD8, unk_E0DE0, byte_E0DE8, qword_E0DF0);
      if (qword_DA9E8 != -1)
      {
        sub_2F338();
      }

      v38 = sub_A43D4();
      v43[0] = sub_48A4(v38, qword_E0BE8);
      v49 = 0;
      v50 = 0xE000000000000000;
      sub_A4B54(33);

      v49 = 0xD00000000000001FLL;
      v50 = 0x80000000000AF720;
      swift_getErrorValue();
      v51._countAndFlagsBits = sub_A4EC4();
      sub_A46D4(v51);

      sub_81094(v49, v50, 0xD00000000000002ELL, 0x80000000000AF740, 0xD000000000000013, 0x80000000000AF770);

      sub_A49A4();
      sub_2F370();
      sub_A4364();

      (*(v46 + 8))(v10, v47);
      v39 = v3[10];
      v40 = v3[11];
      v41 = v3[12];
      v3[10] = v48;
      v3[11] = a2;
      v3[12] = 0;

      sub_2F2F4(v39, v40);
      return 0;
    }
  }

  return v12;
}

void *sub_2F018()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[12];
  sub_2F2F4(v0[10], v0[11]);
  return v0;
}

uint64_t sub_2F05C()
{
  sub_2F018();

  return _swift_deallocClassInstance(v0, 104, 7);
}

uint64_t sub_2F0B4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2F0CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2F11C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void *sub_2F174(void *result, int a2)
{
  if (a2 < 0)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

id sub_2F1A8(uint64_t a1, uint64_t a2, void *a3)
{
  isa = sub_A4754().super.isa;

  v5 = sub_A4754().super.isa;

  v6 = [a3 performLookupWithBundleIdentifiers:isa itemIdentifiers:v5];

  return v6;
}

id sub_2F244(void *a1)
{
  v2 = objc_allocWithZone(AMSLookup);
  v3 = sub_A45C4();

  v4 = sub_A45C4();

  v5 = [v2 initWithBag:a1 caller:v3 keyProfile:v4];

  return v5;
}

uint64_t sub_2F2F4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_2F338()
{

  return swift_once();
}

uint64_t sub_2F384()
{
  type metadata accessor for OfflineFlow();
  sub_314EC(&qword_DB590, type metadata accessor for OfflineFlow);
  return sub_A3334();
}

uint64_t sub_2F414(uint64_t a1)
{
  *(v2 + 376) = a1;
  *(v2 + 384) = v1;
  return sub_58F8();
}

uint64_t sub_2F428()
{
  v1 = v0[48];
  sub_A4B54(33);

  v2 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin11OfflineFlow_state;
  if (*(v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11OfflineFlow_state))
  {
    v3._countAndFlagsBits = 0x6574656C706D6F63;
  }

  else
  {
    v3._countAndFlagsBits = 0x6572676F72506E69;
  }

  if (*(v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11OfflineFlow_state))
  {
    v4 = 0xE900000000000064;
  }

  else
  {
    v4 = 0xEA00000000007373;
  }

  v3._object = v4;
  sub_A46D4(v3);

  sub_31578();
  sub_810AC(v5, v6, v7, v8, 0x2865747563657865, 0xE900000000000029);

  if (*(v1 + v2))
  {
    v9 = v0[47];
    v10 = v0[48];
    sub_31578();
    sub_810AC(v11, v12, v13, v14, 0x2865747563657865, 0xE900000000000029);
    v15 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin11OfflineFlow_specExecutionStatus;
    swift_beginAccess();
    v16 = *(v10 + v15);
    sub_1A2C4(v10 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11OfflineFlow_flowParams, (v0 + 2));
    type metadata accessor for DBSiriKitEventSender();
    inited = swift_initStaticObject();
    v18 = type metadata accessor for ConclusionFlow();
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    v21 = swift_allocObject();

    v0[46] = sub_3136C(v22, v0 + 2, inited, v21);
    sub_31584();
    sub_314EC(v23, v24);
    sub_A3644();

    sub_AA9C();

    return v25();
  }

  else
  {
    v27 = v0[48];
    v28 = sub_7584((v27 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11OfflineFlow_siriKitEventSender), *(v27 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11OfflineFlow_siriKitEventSender + 24));
    sub_3159C(v28, (v27 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11OfflineFlow_name));
    sub_31554();
    sub_4DB28(v29, v30, v31, v32, v33, v34, 0x80000000000AFAB0);
    v35 = swift_task_alloc();
    v0[49] = v35;
    *v35 = v0;
    v35[1] = sub_2F744;
    v36 = v0[47];
    v37 = v0[48];

    return sub_2F824(v36);
  }
}

uint64_t sub_2F744()
{
  sub_5950();
  sub_AAA8();
  v2 = *(v1 + 392);
  v3 = *v0;
  sub_5930();
  *v4 = v3;

  sub_AA9C();

  return v5();
}

uint64_t sub_2F824(uint64_t a1)
{
  *(v2 + 400) = a1;
  *(v2 + 408) = v1;
  return sub_58F8();
}

uint64_t sub_2F838()
{
  sub_5950();
  v1 = v0[51];
  v2 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin11OfflineFlow_flowParams;
  v0[52] = OBJC_IVAR____TtC23DailyBriefingFlowPlugin11OfflineFlow_flowParams;
  v3 = *(v1 + v2 + 152);
  v4 = swift_task_alloc();
  v0[53] = v4;
  *v4 = v0;
  v4[1] = sub_2F8DC;

  return sub_44F0(1);
}

uint64_t sub_2F8DC()
{
  sub_5950();
  sub_AAA8();
  sub_25540();
  *v2 = v1;
  v4 = *(v3 + 424);
  *v2 = *v0;
  *(v1 + 432) = v5;
  *(v1 + 440) = v6;

  v7 = sub_AA8C();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_2F9C8()
{
  v1 = v0[51] + v0[52];
  v2 = sub_4F034(v0[54], v0[55]);
  v3 = sub_4ED80(v2);
  v4 = *sub_7584((v1 + 280), *(v1 + 304));
  if (sub_834E4() & 1) != 0 && (v3)
  {
    v5 = v0[51];
    sub_31578();
    sub_810C4(v6, v7, v8, v9, 0x6C616944656B616DLL, 0xEC0000002928676FLL);
    v10 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin11OfflineFlow_specExecutionStatus;
    swift_beginAccess();
    v11 = *(v5 + v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v89 = *(v5 + v10);
    sub_310AC(2, 4, isUniquelyReferenced_nonNull_native);
    *(v5 + v10) = v89;
    swift_endAccess();
  }

  v13 = v0[51];
  v14 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin11OfflineFlow_specExecutionStatus;
  swift_beginAccess();
  v15 = *(v13 + v14);

  v17 = sub_31200(v16);

  v18 = v17[2];

  if (v18)
  {
    v19 = *sub_7584((v1 + 280), *(v1 + 304));
    if (sub_834E4() & 1) != 0 && (v20 = *(v13 + v14), v21 = , v22 = sub_1F59C(v21), , (v22))
    {
      v23 = v0[51];
      v24 = v23 + v0[52];
      sub_315F8();
      sub_31534();
      sub_31578();
      sub_810AC(v25, v26, v27, v28, v29, v30);
      v31 = sub_7584((v23 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11OfflineFlow_siriKitEventSender), *(v23 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11OfflineFlow_siriKitEventSender + 24));
      sub_3159C(v31, (v23 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11OfflineFlow_name));
      sub_31554();
      sub_4DB28(v32, v33, v34, v35, v36, v37, v22);
      v0[56] = sub_315C8();
      v38 = swift_task_alloc();
      v0[57] = v38;
      *v38 = v0;
      v38[1] = sub_2FFA0;
    }

    else
    {
      v39 = v0[51] + v0[52];
      v40 = *(v13 + v14);

      v42 = sub_1F614(v41);

      v43 = v0[51];
      sub_31578();
      sub_31534();
      sub_810AC(v44, v45, v46, v47, v48, v49);
      v50 = sub_7584((v43 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11OfflineFlow_siriKitEventSender), *(v43 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11OfflineFlow_siriKitEventSender + 24));
      sub_3159C(v50, (v43 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11OfflineFlow_name));
      sub_31554();
      sub_4DB28(v51, v52, v53, v54, v55, v56, v42);
      if (v42)
      {
        v0[59] = sub_315C8();
        v57 = swift_task_alloc();
        v0[60] = v57;
        *v57 = v0;
        v57[1] = sub_3010C;
      }

      else
      {
        v0[62] = sub_315C8();
        v85 = *(v13 + v14);

        v0[63] = sub_1F690(v86);

        v87 = swift_task_alloc();
        v0[64] = v87;
        *v87 = v0;
        v87[1] = sub_30278;
      }
    }

    return sub_36D50();
  }

  else
  {
    v58 = v0[51];
    v59 = v0[52];
    v88 = v0[50];
    sub_315F8();
    sub_31534();
    sub_31578();
    sub_810C4(v60, v61, v62, v63, v64, v65);
    v66 = *sub_7584((v58 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11OfflineFlow_siriKitEventSender), *(v58 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11OfflineFlow_siriKitEventSender + 24));
    v67 = *(v58 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11OfflineFlow_name + 32);
    sub_7584((v58 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11OfflineFlow_name), *(v58 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11OfflineFlow_name + 24));
    sub_31554();
    sub_4DB28(v68, v69, v70, v71, v72, v73, v67);
    v74 = *(v13 + v14);
    sub_1A2C4(v58 + v59, (v0 + 2));
    type metadata accessor for DBSiriKitEventSender();
    inited = swift_initStaticObject();
    v76 = type metadata accessor for ConclusionFlow();
    v77 = *(v76 + 48);
    v78 = *(v76 + 52);
    v79 = swift_allocObject();

    v0[49] = sub_3136C(v80, v0 + 2, inited, v79);
    sub_31584();
    sub_314EC(v81, v82);
    sub_A3644();

    sub_AA9C();

    return v83();
  }
}

uint64_t sub_2FFA0()
{
  sub_5950();
  sub_AAA8();
  sub_25540();
  *v2 = v1;
  v4 = *(v3 + 456);
  v5 = *(v3 + 448);
  v6 = *v0;
  sub_5930();
  *v7 = v6;
  *(v9 + 464) = v8;

  v10 = sub_AA8C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_300A4()
{
  sub_5950();
  v1 = v0[58];
  v2 = v0[50];
  v3 = v0[51];
  sub_30400();

  sub_AA9C();

  return v4();
}

uint64_t sub_3010C()
{
  sub_5950();
  sub_AAA8();
  sub_25540();
  *v2 = v1;
  v4 = *(v3 + 480);
  v5 = *(v3 + 472);
  v6 = *v0;
  sub_5930();
  *v7 = v6;
  *(v9 + 488) = v8;

  v10 = sub_AA8C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_30210()
{
  sub_5950();
  v1 = v0[61];
  v2 = v0[50];
  v3 = v0[51];
  sub_30400();

  sub_AA9C();

  return v4();
}

uint64_t sub_30278()
{
  sub_5950();
  sub_AAA8();
  sub_25540();
  *v2 = v1;
  v4 = v3[64];
  v5 = v3[63];
  v6 = v3[62];
  v7 = *v0;
  sub_5930();
  *v8 = v7;
  *(v10 + 520) = v9;

  v11 = sub_AA8C();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_30398()
{
  sub_5950();
  v1 = v0[65];
  v2 = v0[50];
  v3 = v0[51];
  sub_30400();

  sub_AA9C();

  return v4();
}

uint64_t sub_30400()
{
  v1 = *sub_7584((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11OfflineFlow_siriKitEventSender), *(v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11OfflineFlow_siriKitEventSender + 24));
  v2 = *(v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11OfflineFlow_name + 24);
  v3 = *(v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11OfflineFlow_name + 32);
  v4 = sub_7584((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11OfflineFlow_name), v2);
  sub_4DB30(v4, 0x11u, 0, 0, v1, v2, v3);

  sub_A3614();
}

uint64_t sub_304C4(uint64_t a1)
{
  *(a1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11OfflineFlow_state) = 1;
  v2 = sub_7584((a1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11OfflineFlow_siriKitEventSender), *(a1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11OfflineFlow_siriKitEventSender + 24));
  v3 = (a1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11OfflineFlow_name);
  v4 = *v2;
  v5 = v3[3];
  v6 = v3[4];
  v7 = sub_7584(v3, v5);

  return sub_4DB30(v7, 1u, 0, 0, v4, v5, v6);
}

uint64_t sub_30558(uint64_t a1, void *a2)
{
  v7._countAndFlagsBits = a1;
  v3._rawValue = &off_CF548;
  v7._object = a2;
  v4 = sub_A4CE4(v3, v7);

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_305AC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_30558(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_305DC()
{
  v1 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin11OfflineFlow_logger;
  v2 = sub_A43D4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11OfflineFlow_name));
  v3 = *(v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11OfflineFlow_specExecutionStatus);

  sub_1A564(v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11OfflineFlow_flowParams);
  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11OfflineFlow_siriKitEventSender));
  return v0;
}

uint64_t sub_3067C()
{
  sub_305DC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for OfflineFlow()
{
  result = qword_DCD40;
  if (!qword_DCD40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_30728()
{
  result = sub_A43D4();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OfflineFlow.State(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x308B8);
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

unint64_t sub_308F4()
{
  result = qword_DCE48;
  if (!qword_DCE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DCE48);
  }

  return result;
}

uint64_t sub_3096C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_A648;

  return sub_2F414(a1);
}

uint64_t sub_30A08(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for OfflineFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

void sub_30A44(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *(**a1 + 240);
  v5(&v130);
  v6 = sub_4BF0(&qword_DB5B0, &unk_A67D0);
  sub_315BC(v6, v7, v8, &type metadata for SupportedFeatures, v9, v10, v11, v12, v120, v125);
  if ((swift_dynamicCast() & 1) == 0)
  {
    if (qword_DA9D0 != -1)
    {
      sub_58D8();
    }

    v22 = sub_A43D4();
    sub_48A4(v22, qword_E0BA0);
    sub_2E7A0();
    sub_A4B54(32);
    v5(&v130);
    sub_A4C44();
    sub_761C(&v130);
    v131._countAndFlagsBits = 0xD00000000000001ELL;
    v131._object = 0x80000000000AF800;
    sub_A46D4(v131);
    sub_31578();
    sub_81094(v23, v24, v25, v26, v27, v28);
    goto LABEL_15;
  }

  v13 = v126;
  if (sub_9C920(v126, a2) != 4)
  {
    return;
  }

  v14 = sub_82E5C();
  if (HIBYTE(v15) != 255)
  {
    v16 = v14;
    if ((v15 & 0x100) == 0)
    {
      v17 = sub_31624();
      sub_A72C(v17, v18);
      goto LABEL_6;
    }

    v130 = v14;
    v56 = sub_31624();
    sub_A88C(v56, v57, 1);
    v58 = sub_4BF0(&qword_DBB90, &qword_A7540);
    sub_315BC(v58, v59, v60, &unk_D2AF0, v61, v62, v63, v64, v121, v126);
    if ((swift_dynamicCast() & 1) != 0 && !v127)
    {
      v98 = *a3;
      swift_isUniquelyReferenced_nonNull_native();
      sub_31568();
      v100 = sub_310AC(2, v13, v99);
      sub_31618(v100, v101, v102, v103, v104, v105, v106, v107, v122, v127, v129, v130);
      if (qword_DA9D0 != -1)
      {
        sub_58D8();
      }

      v108 = sub_A43D4();
      sub_48A4(v108, qword_E0BA0);
      sub_2E7A0();
      sub_A4B54(63);
      sub_3160C();
      v86 = "as skipped. Domain: ";
      v87._countAndFlagsBits = 0xD00000000000003CLL;
    }

    else
    {
      v130 = v16;
      v65 = sub_31624();
      v67 = sub_A88C(v65, v66, 1);
      sub_315BC(v67, v68, v69, &unk_D2AF0, v70, v71, v72, v73, v122, v127);
      v74 = swift_dynamicCast();
      v75 = *a3;
      swift_isUniquelyReferenced_nonNull_native();
      if (v74)
      {
        sub_31568();
        v77 = sub_310AC(1, v13, v76);
        sub_31618(v77, v78, v79, v80, v81, v82, v83, v84, v123, v128, v129, v130);
        if (qword_DA9D0 != -1)
        {
          sub_58D8();
        }

        v85 = sub_A43D4();
        sub_48A4(v85, qword_E0BA0);
        sub_2E7A0();
        sub_A4B54(55);
        sub_3160C();
        v86 = "as failed. Domain: ";
        v87._countAndFlagsBits = 0xD000000000000034;
      }

      else
      {
        sub_31568();
        v89 = sub_310AC(3, v13, v88);
        sub_31618(v89, v90, v91, v92, v93, v94, v95, v96, v123, v128, v129, v130);
        if (qword_DA9D0 != -1)
        {
          sub_58D8();
        }

        v97 = sub_A43D4();
        sub_48A4(v97, qword_E0BA0);
        sub_2E7A0();
        sub_A4B54(54);
        sub_3160C();
        v86 = "in calendar. Skipping maps.";
        v87._countAndFlagsBits = 0xD000000000000033;
      }
    }

    v87._object = (v86 | 0x8000000000000000);
    sub_A46D4(v87);
    sub_315BC(v109, v110, &type metadata for SupportedFeatures, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation, v111, v112, v113, v124, v13);
    sub_A4C44();
    v134._countAndFlagsBits = 46;
    v134._object = 0xE100000000000000;
    sub_A46D4(v134);
    sub_31578();
    sub_82B54(v114, v115, v116, v117, 0x5F28657461647075, 0xEF293A687469773ALL);
    v118 = sub_31624();
    sub_A72C(v118, v119);
LABEL_15:

    return;
  }

LABEL_6:
  if (sub_5F5E8(v126) == 1936744813 && v19 == 0xE400000000000000)
  {
  }

  else
  {
    v21 = sub_A4E44();

    if ((v21 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  if (sub_9C920(0, *a3) == 1)
  {
    if (qword_DA9D0 != -1)
    {
      sub_58D8();
    }

    v29 = sub_A43D4();
    sub_48A4(v29, qword_E0BA0);
    sub_31578();
    sub_810C4(v30, v31, v32, v33, 0x5F28657461647075, 0xEF293A687469773ALL);
    v34 = *a3;
    swift_isUniquelyReferenced_nonNull_native();
    sub_31568();
    v36 = 1;
    goto LABEL_24;
  }

LABEL_21:
  if (qword_DA9D0 != -1)
  {
    sub_58D8();
  }

  v37 = sub_A43D4();
  sub_48A4(v37, qword_E0BA0);
  sub_2E7A0();
  sub_A4B54(51);
  sub_3160C();
  v132._countAndFlagsBits = 0xD000000000000013;
  v132._object = 0x80000000000AF850;
  sub_A46D4(v132);
  sub_315BC(v38, v39, &type metadata for SupportedFeatures, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation, v40, v41, v42, v121, v126);
  sub_A4C44();
  v133._countAndFlagsBits = 0xD00000000000001ELL;
  v133._object = 0x80000000000AF870;
  sub_A46D4(v133);
  sub_31578();
  sub_82B54(v43, v44, v45, v46, 0x5F28657461647075, 0xEF293A687469773ALL);

  v47 = *a3;
  swift_isUniquelyReferenced_nonNull_native();
  sub_31568();
  v36 = 3;
LABEL_24:
  v48 = sub_310AC(v36, v13, v35);
  sub_31618(v48, v49, v50, v51, v52, v53, v54, v55, v121, v126, v129, v130);
}

unint64_t sub_310AC(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_A0DF0(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = v9;
  v15 = v10;
  sub_4BF0(&qword_DCE50, &qword_A8CC8);
  result = sub_A4C54(a3 & 1, v13);
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  v17 = *v4;
  result = sub_A0DF0(a2);
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_11:
    result = sub_A4EA4();
    __break(1u);
    return result;
  }

  v14 = result;
LABEL_5:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + v14) = a1;
  }

  else
  {

    return sub_311BC(v14, a2, a1, v19);
  }

  return result;
}

unint64_t sub_311BC(unint64_t result, char a2, char a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t *sub_31200(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v8 = swift_slowAlloc();
      v2 = sub_1FCA0(v8, v4, v2);

      return v2;
    }
  }

  __chkstk_darwin(a1);
  v5 = (&v9 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_92BFC(0, v4, v5);
  v6 = sub_1FBB0(v5, v4, v2);
  if (!v1)
  {
    return v6;
  }

  swift_willThrow();
  return v2;
}

uint64_t sub_3136C(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v14 = type metadata accessor for DBSiriKitEventSender();
  v15 = &off_D1B20;
  v16 = sub_314EC(&qword_DB598, type metadata accessor for DBSiriKitEventSender);
  *&v13 = a3;
  v8 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin14ConclusionFlow_logger;
  if (qword_DA9D0 != -1)
  {
    swift_once();
  }

  v9 = sub_A43D4();
  v10 = sub_48A4(v9, qword_E0BA0);
  (*(*(v9 - 8) + 16))(a4 + v8, v10, v9);
  v11 = a4 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin14ConclusionFlow_name;
  *(v11 + 24) = &type metadata for CommonSpecs;
  *(v11 + 32) = &off_D2128;
  *v11 = 2;
  *(a4 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin14ConclusionFlow_state) = 0;
  *(a4 + 16) = a1;
  memcpy((a4 + 24), a2, 0x141uLL);
  sub_A82C(&v13, (a4 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin14ConclusionFlow_siriKitEventSender));
  return a4;
}

uint64_t sub_314EC(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_3159C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a2[4];
  v5 = a2[3];

  return sub_7584(a2, v5);
}

uint64_t sub_315C8()
{
  v1 = *sub_7584((v0 + 160), *(v0 + 184));

  return sub_5DFD0();
}

uint64_t sub_31630@<X0>(uint64_t *a1@<X8>)
{
  sub_A37F4();
  v2 = sub_A3764();
  sub_5D78(v2);
  sub_A3754();
  v3 = sub_A3304();
  sub_5D78(v3);
  result = sub_A32F4();
  a1[3] = v3;
  a1[4] = &protocol witness table for PatternFlowProvider;
  *a1 = result;
  return result;
}

void sub_316C0()
{
  sub_25714();
  v1 = v0;
  v90 = v2;
  sub_A38F4();
  sub_AA64();
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v7);
  sub_AA54();
  v10 = v9 - v8;
  v11 = sub_A4004();
  sub_AA64();
  v89 = v12;
  v14 = *(v13 + 64);
  __chkstk_darwin(v15);
  sub_36194();
  v88 = (v16 - v17);
  __chkstk_darwin(v18);
  v20 = &v87 - v19;
  sub_36184();
  sub_A4B54(72);
  v93 = v94;
  v97._countAndFlagsBits = 0xD000000000000046;
  v97._object = 0x80000000000B00E0;
  sub_A46D4(v97);
  v95 = &type metadata for Features;
  v96 = sub_35DA4();
  LOBYTE(v94) = 1;
  v21 = sub_A3954();
  sub_761C(&v94);
  if (v21)
  {
    v22._countAndFlagsBits = 1702195828;
  }

  else
  {
    v22._countAndFlagsBits = 0x65736C6166;
  }

  if (v21)
  {
    v23 = 0xE400000000000000;
  }

  else
  {
    v23 = 0xE500000000000000;
  }

  v24 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_logger;
  v22._object = v23;
  sub_A46D4(v22);

  v91 = "GuardFlow# Apps to search are: ";
  v92 = v24;
  sub_36090(v93, *(&v93 + 1), v25, 0x80000000000AFB70);

  sub_A38B4();
  v26 = v4[11];
  v27 = sub_361CC();
  v29 = v28(v27);
  if (v29 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v30 = v4[12];
    v31 = sub_361CC();
    v32(v31);
LABEL_11:
    v37 = v1;
    v38 = v89;
    v39 = *(v89 + 32);
    v39(v20, v10, v11);
    sub_36184();
    sub_A4B54(82);
    sub_36080();
    v98._countAndFlagsBits = v40 + 41;
    v98._object = (v41 | 0x8000000000000000);
    sub_A46D4(v98);
    v42 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_isNLv4Intent;
    if (*(v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_isNLv4Intent))
    {
      v43._countAndFlagsBits = 1702195828;
    }

    else
    {
      v43._countAndFlagsBits = 0x65736C6166;
    }

    if (*(v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_isNLv4Intent))
    {
      v44 = 0xE400000000000000;
    }

    else
    {
      v44 = 0xE500000000000000;
    }

    v43._object = v44;
    sub_A46D4(v43);

    v45 = *(&v94 + 1);
    sub_361A4();
    sub_36090(v46, v45, v47, v48);

    if (*(v1 + v42) == 1)
    {
      v49 = v88;
      v39(v88, v20, v11);
      v50 = type metadata accessor for DailyBriefingNLv3Intent();
      v51 = sub_5D78(v50);
      v39((v51 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin23DailyBriefingNLv3Intent_intent), v49, v11);
      v95 = v50;
      v96 = &off_D2208;
      *&v94 = v51;
      v52 = (v37 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_dbIntent);
      swift_beginAccess();
      sub_761C(v52);
      sub_A814(&v94, v52);
      swift_endAccess();
      v54 = v52[3];
      v53 = v52[4];
      sub_7584(v52, v54);
      sub_AA64();
      v56 = v55;
      v58 = *(v57 + 64);
      __chkstk_darwin(v59);
      v61 = &v87 - v60;
      (*(v56 + 16))(&v87 - v60);
      LOBYTE(v53) = sub_541A8(v54, v53);
      (*(v56 + 8))(v61, v54);
      *&v94 = 0;
      *(&v94 + 1) = 0xE000000000000000;
      if (v53)
      {
        sub_A4B54(53);
        v93 = v94;
        sub_36080();
        v99._countAndFlagsBits = v62 + 12;
        v99._object = (v63 | 0x8000000000000000);
        sub_A46D4(v99);
        sub_A760(v52, &v94);
        sub_4BF0(&qword_DD120, &unk_A8E90);
        sub_A4C44();
        sub_761C(&v94);
        sub_361A4();
        sub_360B4();
        sub_810C4(v64, v65, v66, v67, 0x7475706E69286E6FLL, 0xEA0000000000293ALL);

        *(v37 + v42) = 0;
      }

      else
      {
        sub_A4B54(82);
        v93 = v94;
        sub_36080();
        v100._countAndFlagsBits = v75 + 41;
        v100._object = (v76 | 0x8000000000000000);
        sub_A46D4(v100);
        sub_A760(v52, &v94);
        sub_4BF0(&qword_DD120, &unk_A8E90);
        sub_A4C44();
        sub_761C(&v94);
        sub_361A4();
        sub_360B4();
        sub_810C4(v77, v78, v79, v80, 0x7475706E69286E6FLL, 0xEA0000000000293ALL);
      }
    }

    else
    {
      (*(v38 + 8))(v20, v11);
    }

    goto LABEL_28;
  }

  if (v29 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    v33 = v4[12];
    v34 = sub_361CC();
    v35(v34);
    v36 = *(v10 + *(sub_4BF0(&qword_DBBF0, &qword_A7188) + 48));

    goto LABEL_11;
  }

  if (v29 == enum case for Parse.NLv4IntentOnly(_:) || v29 == enum case for Parse.uso(_:))
  {
    v69 = v4[1];
    v70 = sub_361CC();
    v71(v70);
    sub_36080();
    sub_36090(v72 - 4, v73 | 0x8000000000000000, v74, v91 | 0x8000000000000000);
    *(v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_isNLv4Intent) = 1;
  }

  else
  {
    sub_36080();
    sub_36090(v81 + 12, v82 | 0x8000000000000000, v83, v91 | 0x8000000000000000);
    v84 = v4[1];
    v85 = sub_361CC();
    v86(v85);
  }

LABEL_28:
  sub_2569C();
}

uint64_t sub_31DC0()
{
  type metadata accessor for GuardFlow();
  sub_3600C(&qword_DD118, type metadata accessor for GuardFlow);
  return sub_A3334();
}

uint64_t sub_31E50()
{
  sub_5950();
  v1[85] = v0;
  v1[84] = v2;
  v3 = sub_A3394();
  v1[86] = v3;
  sub_5940(v3);
  v1[87] = v4;
  v6 = *(v5 + 64);
  v1[88] = sub_10AAC();
  v7 = sub_AA8C();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_31EF8()
{
  v1 = *(v0 + 680);
  sub_34804();
  if ((v2 & 1) == 0)
  {
    v36 = *(v0 + 680);
    if (*(v36 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_isNLv4Intent) == 1)
    {
      sub_360B4();
      sub_810C4(v37, v38, v39, v40, v41, 0xE900000000000029);
      sub_A760(v36 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_deviceState, v0 + 16);
      if (qword_DA8A0 != -1)
      {
        sub_360EC();
      }

      sub_A760(&unk_E07B0, v0 + 56);
      sub_A37F4();
      sub_A7C4(v0 + 56, *(v0 + 80));
      *(v0 + 160) = &type metadata for CATProvider;
      *(v0 + 168) = &off_D0FD0;
      v42 = type metadata accessor for UnsupportedFlow();
      v43 = sub_36168(v42);
      sub_A7C4(v0 + 136, &type metadata for CATProvider);
      *(v0 + 200) = &type metadata for CATProvider;
      *(v0 + 208) = &off_D0FD0;
      v44 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin15UnsupportedFlow_logger;
      if (qword_DA9D0 != -1)
      {
        sub_58D8();
      }

      v45 = *(v0 + 672);
      v46 = sub_A43D4();
      sub_48A4(v46, qword_E0BA0);
      sub_360D8();
      (*(v47 + 16))(v43 + v44);
      sub_A814((v0 + 176), v43 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin15UnsupportedFlow_catProvider);
      sub_A814((v0 + 16), v43 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin15UnsupportedFlow_deviceState);
      sub_A814((v0 + 96), v43 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin15UnsupportedFlow_outputPublisherAsync);
      *(v43 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin15UnsupportedFlow_unsupportedCode) = 0;
      sub_761C((v0 + 136));
      sub_761C((v0 + 56));
      *(v0 + 640) = v43;
      sub_360C0();
      sub_3600C(v48, v49);
      goto LABEL_34;
    }

    v69 = *(v0 + 672);
    v70 = *(v0 + 680);
    sub_34EDC(0xD00000000000002BLL, 0x80000000000AFE30);
    goto LABEL_44;
  }

  v3 = *(v0 + 680);
  type metadata accessor for AddRemoveFlow();
  v4 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_dbIntent;
  swift_beginAccess();
  v109 = v4;
  sub_A760(v3 + v4, v0 + 216);
  v111 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_deviceState;
  sub_A760(v3 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_deviceState, v0 + 256);
  v5 = sub_2A09C((v0 + 216));
  sub_761C((v0 + 256));
  sub_761C((v0 + 216));
  *(v0 + 320) = &type metadata for Features;
  *(v0 + 328) = sub_35DA4();
  *(v0 + 296) = 1;
  v6 = sub_A3954();
  sub_761C((v0 + 296));
  sub_A4B54(20);

  sub_10944();
  v113 = v7;
  v112 = v6 & 1;
  if (v6)
  {
    v8._countAndFlagsBits = 1702195828;
  }

  else
  {
    v8._countAndFlagsBits = 0x65736C6166;
  }

  if (v6)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  v8._object = v9;
  sub_A46D4(v8);

  v116._countAndFlagsBits = 8236;
  v116._object = 0xE200000000000000;
  sub_A46D4(v116);
  v117._countAndFlagsBits = 0xD000000000000010;
  v117._object = v113;
  sub_A46D4(v117);

  sub_A4B54(39);

  sub_10944();
  v114 = v10;
  if (v5)
  {
    v11._countAndFlagsBits = 1702195828;
  }

  else
  {
    v11._countAndFlagsBits = 0x65736C6166;
  }

  if (v5)
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  v11._object = v12;
  sub_A46D4(v11);

  v118._object = 0x80000000000AFF10;
  v118._countAndFlagsBits = 0xD000000000000010;
  sub_A46D4(v118);
  v110 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_isNLv4Intent;
  if (*(v3 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_isNLv4Intent))
  {
    v13._countAndFlagsBits = 1702195828;
  }

  else
  {
    v13._countAndFlagsBits = 0x65736C6166;
  }

  if (*(v3 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_isNLv4Intent))
  {
    v14 = 0xE400000000000000;
  }

  else
  {
    v14 = 0xE500000000000000;
  }

  v13._object = v14;
  sub_A46D4(v13);

  v119._countAndFlagsBits = 0xD000000000000013;
  v119._object = v114;
  sub_A46D4(v119);

  sub_36068();
  sub_810C4(v15, v16, v17, v18, v19, v20);

  if (!v112)
  {
    if ((v5 & 1) == 0 || *(v3 + v110) != 1)
    {
      goto LABEL_38;
    }

    v50 = *(v0 + 704);
    v51 = *(v0 + 696);
    v52 = *(v0 + 688);
    v53 = *(v0 + 672);
    sub_36080();
    sub_3610C();
    sub_360B4();
    sub_810C4(v54, v55, v56, v57, v58, 0xE900000000000029);
    (*(v51 + 104))(v50, enum case for FlowUnhandledReason.needsServerExecution(_:), v52);
    sub_A3674();
    (*(v51 + 8))(v50, v52);
LABEL_44:
    v86 = *(v0 + 704);

    sub_AA9C();

    return v87();
  }

  if (v5)
  {
    v21 = *(v0 + 680);
    if (!sub_35384())
    {
      sub_36080();
      sub_3610C();
      sub_36068();
      sub_810C4(v22, v23, v24, v25, v26, v27);
      sub_A760(v3 + v111, v0 + 416);
      if (qword_DA8A0 != -1)
      {
        sub_360EC();
      }

      sub_A760(&unk_E07B0, v0 + 456);
      sub_A37F4();
      sub_A7C4(v0 + 456, *(v0 + 480));
      *(v0 + 560) = &type metadata for CATProvider;
      *(v0 + 568) = &off_D0FD0;
      v28 = type metadata accessor for UnsupportedFlow();
      v29 = sub_36168(v28);
      sub_A7C4(v0 + 536, &type metadata for CATProvider);
      *(v0 + 600) = &type metadata for CATProvider;
      *(v0 + 608) = &off_D0FD0;
      v30 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin15UnsupportedFlow_logger;
      if (qword_DA9D0 != -1)
      {
        sub_58D8();
      }

      v31 = *(v0 + 672);
      v32 = sub_A43D4();
      sub_48A4(v32, qword_E0BA0);
      sub_360D8();
      (*(v33 + 16))(v29 + v30);
      sub_A814((v0 + 576), v29 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin15UnsupportedFlow_catProvider);
      sub_A814((v0 + 416), v29 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin15UnsupportedFlow_deviceState);
      sub_A814((v0 + 496), v29 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin15UnsupportedFlow_outputPublisherAsync);
      *(v29 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin15UnsupportedFlow_unsupportedCode) = 1;
      sub_761C((v0 + 536));
      sub_761C((v0 + 456));
      *(v0 + 664) = v29;
      sub_360C0();
      sub_3600C(v34, v35);
LABEL_34:
      sub_A3324();

      sub_A3654();
LABEL_40:

      goto LABEL_44;
    }
  }

LABEL_38:
  v59 = *(v0 + 680);
  v60 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_state;
  switch(*(v59 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_state))
  {
    case 1:
      type metadata accessor for CancellationFlow();
      sub_A760(v3 + v109, v0 + 336);
      sub_A760(v3 + v111, v0 + 376);
      v89 = sub_2575C((v0 + 336));
      sub_761C((v0 + 376));
      sub_761C((v0 + 336));
      if ((v89 & 1) == 0)
      {
        v98 = *(v0 + 680);
        v99 = *(v0 + 672);
        sub_3610C();
        sub_36068();
        sub_810AC(v100, v101, v102, v103, v104, v105);
        v106 = swift_allocObject();
        *(v106 + 16) = sub_35DF8;
        *(v106 + 24) = v98;
        v107 = sub_A3284();
        sub_36168(v107);

        *(v0 + 648) = sub_A3274();
        v108 = swift_allocObject();
        *(v108 + 16) = sub_35FF4;
        *(v108 + 24) = v98;

        sub_A3604();

        goto LABEL_40;
      }

      sub_3610C();
      sub_36068();
      sub_810AC(v90, v91, v92, v93, v94, v95);
      *(v59 + v60) = 2;
      v77 = swift_task_alloc();
      *(v0 + 712) = v77;
      *v77 = v0;
      v78 = sub_32A4C;
LABEL_49:
      v77[1] = v78;
      v96 = *(v0 + 680);
      v97 = *(v0 + 672);

      result = sub_32DF8();
      break;
    case 2:
      sub_3610C();
      sub_36068();
      sub_810AC(v71, v72, v73, v74, v75, v76);
      v77 = swift_task_alloc();
      *(v0 + 720) = v77;
      *v77 = v0;
      v78 = sub_32B50;
      goto LABEL_49;
    case 3:
      v79 = *(v0 + 672);
      sub_3610C();
      sub_36068();
      sub_810AC(v80, v81, v82, v83, v84, v85);
      sub_A3664();
      goto LABEL_44;
    default:
      v61 = *(v0 + 672);
      sub_3610C();
      sub_36068();
      sub_810AC(v62, v63, v64, v65, v66, v67);
      sub_35044();
      v68 = sub_A3264();

      *(v0 + 656) = v68;
      sub_A32A4();

      sub_A3604();

      goto LABEL_40;
  }

  return result;
}

uint64_t sub_32A4C()
{
  sub_5950();
  v1 = *v0;
  v2 = *(*v0 + 712);
  v3 = *v0;
  sub_5930();
  *v4 = v3;

  v5 = *(v1 + 704);

  v6 = *(v3 + 8);

  return v6();
}

uint64_t sub_32B50()
{
  sub_5950();
  v1 = *v0;
  v2 = *(*v0 + 720);
  v3 = *v0;
  sub_5930();
  *v4 = v3;

  v5 = *(v1 + 704);

  v6 = *(v3 + 8);

  return v6();
}

void sub_32C54(_BYTE *a1, uint64_t a2)
{
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = "GuardFlow# Unsupported usecase";
  }

  else
  {
    v4 = "SiriKit GuardFlow failed";
  }

  if (*a1)
  {
    v5 = 0xD000000000000018;
  }

  else
  {
    v5 = 0xD00000000000001BLL;
  }

  if (v3)
  {
    v6 = 1;
  }

  else
  {
    v6 = 3;
  }

  sub_810AC(v5, v4 | 0x8000000000000000, 0xD000000000000027, 0x80000000000AFB70, 0x2865747563657865, 0xE900000000000029);
  *(a2 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_state) = v6;
}

uint64_t sub_32D04(uint64_t (*a1)(void))
{
  v2 = a1();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_32DF8()
{
  sub_5950();
  v1[169] = v0;
  v1[168] = v2;
  v3 = sub_A3684();
  v1[170] = v3;
  sub_5940(v3);
  v1[171] = v4;
  v6 = *(v5 + 64);
  v1[172] = sub_10AAC();
  v7 = sub_A4964();
  v1[173] = v7;
  sub_5940(v7);
  v1[174] = v8;
  v10 = *(v9 + 64);
  v1[175] = sub_10AAC();
  v11 = sub_A4954();
  sub_10A88(v11);
  v13 = *(v12 + 64);
  v1[176] = sub_10AAC();
  v14 = sub_A44B4();
  sub_10A88(v14);
  v16 = *(v15 + 64);
  v1[177] = sub_10AAC();
  v17 = sub_A4354();
  sub_10A88(v17);
  v19 = *(v18 + 64);
  v1[178] = sub_10AAC();
  v20 = sub_4BF0(&qword_DD0F0, &qword_A8E70);
  sub_10A88(v20);
  v22 = *(v21 + 64) + 15;
  v1[179] = swift_task_alloc();
  v1[180] = swift_task_alloc();
  v1[181] = swift_task_alloc();
  v23 = sub_AA8C();

  return _swift_task_switch(v23, v24, v25);
}

uint64_t sub_32F98()
{
  v141 = v0;
  v1 = *(v0 + 1424);
  v2 = *(v0 + 1352);
  sub_A924(*(v0 + 1448), 1, 1, *(v0 + 1360));
  v132 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_deviceState;
  sub_A760(v2 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_deviceState, v0 + 256);
  v137 = v2;
  v123 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_aceService;
  sub_A760(v2 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_aceService, v0 + 496);
  type metadata accessor for BriefingCatExecutor(0);
  sub_A4344();
  v129 = sub_A4284();
  sub_31630((v0 + 1216));
  if (qword_DAA98 != -1)
  {
    swift_once();
  }

  v3 = qword_E0E28;
  swift_retain_n();
  sub_A3454();
  v4 = type metadata accessor for DailyBriefingOutputPublisher();
  *(v0 + 720) = v4;
  *(v0 + 728) = &off_D2D00;
  *(v0 + 696) = v3;
  v5 = type metadata accessor for AddViewsFlowProvider();
  v6 = swift_allocObject();
  v7 = sub_A7C4(v0 + 696, v4);
  sub_AA64();
  v9 = v8;
  v11 = *(v10 + 64);
  v12 = sub_10AAC();
  (*(v9 + 16))(v12, v7, v4);
  v13 = *v12;
  v6[5] = v4;
  v6[6] = &off_D2D00;
  v6[2] = v13;
  sub_A814((v0 + 976), (v6 + 7));
  sub_761C((v0 + 696));

  v14 = type metadata accessor for DBSiriKitEventSender();
  inited = swift_initStaticObject();
  v134 = v14;
  *(v0 + 40) = v14;
  *(v0 + 48) = &off_D1B20;
  v131 = sub_3600C(&qword_DB598, type metadata accessor for DBSiriKitEventSender);
  *(v0 + 56) = v131;
  v135 = inited;
  *(v0 + 16) = inited;
  sub_A4264();
  v127 = sub_A4254();
  *(v0 + 1280) = v5;
  *(v0 + 1288) = &off_D2370;
  *(v0 + 1256) = v6;
  *(v0 + 360) = &type metadata for SiriDBFeatureFlagsImpl;
  *(v0 + 368) = &off_D1E00;
  v16 = type metadata accessor for TemplatingService(0);
  v17 = sub_5D78(v16);
  *(v0 + 1456) = v17;
  v18 = sub_A7C4(v0 + 1256, v5);
  sub_AA64();
  v20 = v19;
  v22 = *(v21 + 64);
  v23 = sub_10AAC();
  (*(v20 + 16))(v23, v18, v5);
  sub_A7C4(v0 + 336, *(v0 + 360));
  v24 = *v23;
  *(v0 + 400) = v5;
  *(v0 + 408) = &off_D2370;
  *(v0 + 376) = v24;
  *(v0 + 440) = &type metadata for SiriDBFeatureFlagsImpl;
  *(v0 + 448) = &off_D1E00;
  v25 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin17TemplatingService_logger;
  v26 = qword_DAA10;

  if (v26 != -1)
  {
    swift_once();
  }

  v27 = *(v0 + 1416);
  v28 = *(v0 + 1400);
  v29 = *(v0 + 1392);
  v124 = *(v0 + 1408);
  v125 = *(v0 + 1384);
  v126 = *(v0 + 1352);
  v30 = sub_A43D4();
  sub_48A4(v30, qword_E0C60);
  sub_360D8();
  v138 = *(v31 + 16);
  v139 = v30;
  v138(&v17[v25]);
  sub_A4B54(32);

  sub_10944();
  v140[0] = 0xD00000000000001ELL;
  v140[1] = v32;
  v33 = [v127 description];
  v34 = sub_A45F4();
  v36 = v35;

  v143._countAndFlagsBits = v34;
  v143._object = v36;
  sub_A46D4(v143);

  sub_810AC(0xD00000000000001ELL, v140[1], 0xD000000000000033, 0x80000000000AFCC0, 0xD00000000000007DLL, 0x80000000000AFD00);

  v37 = *v17;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v39 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  *&v17[OBJC_IVAR____TtC23DailyBriefingFlowPlugin17TemplatingService_bundle] = v39;
  *&v17[OBJC_IVAR____TtC23DailyBriefingFlowPlugin17TemplatingService_catGlobals] = v127;
  *&v17[OBJC_IVAR____TtC23DailyBriefingFlowPlugin17TemplatingService_catExecutor] = v129;
  sub_A760(v0 + 496, &v17[OBJC_IVAR____TtC23DailyBriefingFlowPlugin17TemplatingService_aceService]);
  sub_A760(v0 + 256, &v17[OBJC_IVAR____TtC23DailyBriefingFlowPlugin17TemplatingService_deviceState]);
  sub_A760(v0 + 1216, &v17[OBJC_IVAR____TtC23DailyBriefingFlowPlugin17TemplatingService_patternFlowProvider]);
  sub_A760(v0 + 376, &v17[OBJC_IVAR____TtC23DailyBriefingFlowPlugin17TemplatingService_addViewsFlowProvider]);
  sub_35B7C(v0 + 16, &v17[OBJC_IVAR____TtC23DailyBriefingFlowPlugin17TemplatingService_siriKitEventSender]);
  sub_A760(v0 + 416, &v17[OBJC_IVAR____TtC23DailyBriefingFlowPlugin17TemplatingService_featureFlags]);
  sub_35BE0();
  v40 = v127;

  sub_A4484();
  sub_A4944();
  (*(v29 + 104))(v28, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v125);
  v41 = sub_A4994();

  sub_761C((v0 + 1216));
  sub_761C((v0 + 496));
  sub_761C((v0 + 256));
  sub_761C((v0 + 16));
  sub_761C((v0 + 416));
  sub_761C((v0 + 376));
  *&v17[OBJC_IVAR____TtC23DailyBriefingFlowPlugin17TemplatingService_queue] = v41;
  sub_761C((v0 + 336));
  sub_761C((v0 + 1256));

  v42 = type metadata accessor for CancellationFlow();
  v43 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_dbIntent;
  swift_beginAccess();
  sub_A760(v126 + v43, v0 + 456);
  sub_A760(v137 + v132, v0 + 536);
  LOBYTE(v41) = sub_2575C((v0 + 456));
  sub_761C((v0 + 536));
  sub_761C((v0 + 456));
  if (v41)
  {
    sub_A760(v137 + v123, v0 + 296);
    sub_A760(v137 + v132, v0 + 936);
    v44 = *(v42 + 48);
    v45 = *(v42 + 52);
    v46 = swift_allocObject();
    *(v0 + 88) = v134;
    *(v0 + 96) = &off_D1B20;
    *(v0 + 104) = v131;
    *(v0 + 64) = v135;
    v47 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin16CancellationFlow_logger;
    v48 = qword_DA9D0;

    if (v48 != -1)
    {
      sub_58D8();
    }

    v49 = sub_48A4(v139, qword_E0BA0);
    (v138)(v46 + v47, v49, v139);
    v50 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin16CancellationFlow_dialogService;
    v51 = sub_A3584();
    sub_5D78(v51);
    *(v46 + v50) = sub_A3574();
    sub_A814((v0 + 296), v46 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin16CancellationFlow_aceService);
    sub_A814((v0 + 936), v46 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin16CancellationFlow_deviceState);
    *(v46 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin16CancellationFlow_templatingService) = v17;
    sub_A82C((v0 + 64), (v46 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin16CancellationFlow_siriKitEventSender));
    *(v0 + 1336) = v46;
    sub_3600C(&qword_DC8C8, type metadata accessor for CancellationFlow);
    sub_A3324();
    v52 = 5;
  }

  else
  {
    v53 = *(v0 + 1352);
    if (sub_35384() && (v54 = type metadata accessor for AddRemoveFlow(), sub_A760(v126 + v43, v0 + 1016), sub_A760(v137 + v132, v0 + 1056), v55 = sub_2A09C((v0 + 1016)), sub_761C((v0 + 1056)), sub_761C((v0 + 1016)), (v55 & 1) != 0))
    {
      v56 = *(v0 + 1352);
      sub_A760(v126 + v43, v0 + 1096);
      v57 = *(v56 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_knowledgeStore);
      sub_A760(v137 + v123, v0 + 1136);

      sub_A3904();
      v58 = *(v54 + 48);
      v59 = *(v54 + 52);
      v60 = swift_allocObject();
      *(v0 + 136) = v134;
      *(v0 + 144) = &off_D1B20;
      *(v0 + 152) = v131;
      *(v0 + 112) = v135;
      v61 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin13AddRemoveFlow_logger;
      if (qword_DA9D0 != -1)
      {
        sub_58D8();
      }

      v62 = sub_48A4(v139, qword_E0BA0);
      (v138)(v60 + v61, v62, v139);
      v63 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin13AddRemoveFlow_dialogService;
      v64 = sub_A3584();
      sub_5D78(v64);
      *(v60 + v63) = sub_A3574();
      sub_A814((v0 + 1096), v60 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin13AddRemoveFlow_intent);
      *(v60 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin13AddRemoveFlow_knowledgeStore) = v57;
      sub_A814((v0 + 1136), v60 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin13AddRemoveFlow_aceService);
      *(v60 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin13AddRemoveFlow_templatingService) = v17;
      sub_A814((v0 + 1176), v60 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin13AddRemoveFlow_deviceState);
      sub_A82C((v0 + 112), (v60 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin13AddRemoveFlow_siriKitEventSender));
      *(v0 + 1320) = v60;
      sub_3600C(&qword_DCB20, type metadata accessor for AddRemoveFlow);
      sub_A3324();
      v52 = 144;
    }

    else
    {
      if (qword_DAA58 != -1)
      {
        swift_once();
      }

      v65 = *(v0 + 1352);
      sub_7A124(0, qword_E0D78, unk_E0D80, byte_E0D88, qword_E0D90);
      v130 = sub_34584();
      sub_A760(v65 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_requestOriginUtil, v0 + 576);

      v133 = sub_35384();
      v128 = sub_34404();
      sub_A3454();
      sub_A3904();
      *(v0 + 232) = v134;
      *(v0 + 240) = &off_D1B20;
      *(v0 + 248) = v131;
      *(v0 + 208) = v135;
      v66 = type metadata accessor for OfflineStateProvider();
      v67 = swift_allocObject();
      sub_A37F4();
      v68 = *(v0 + 600);
      v69 = sub_A7C4(v0 + 576, v68);
      sub_AA64();
      v71 = v70;
      v73 = *(v72 + 64);
      v74 = sub_10AAC();
      (*(v71 + 16))(v74, v69, v68);
      *(v0 + 800) = v66;
      *(v0 + 808) = &off_D29E8;
      *(v0 + 776) = v67;
      *(v0 + 840) = &type metadata for RequestOriginUtil;
      *(v0 + 848) = &off_D1958;
      v75 = swift_allocObject();
      *(v0 + 816) = v75;
      v76 = *(v74 + 32);
      v77 = *(v74 + 16);
      *(v75 + 16) = *v74;
      *(v75 + 32) = v77;
      *(v75 + 48) = v76;
      v78 = type metadata accessor for InitialFlow();
      v136 = v17;
      v79 = sub_36168(v78);
      v80 = sub_A7C4(v0 + 776, v66);
      sub_AA64();
      v82 = v81;
      v84 = *(v83 + 64);
      v85 = sub_10AAC();
      (*(v82 + 16))(v85, v80, v66);
      v86 = *(v0 + 840);
      v87 = sub_A7C4(v0 + 816, v86);
      sub_AA64();
      v89 = v88;
      v91 = *(v90 + 64);
      v92 = sub_10AAC();
      (*(v89 + 16))(v92, v87, v86);
      v93 = *v85;
      *(v0 + 880) = v66;
      *(v0 + 888) = &off_D29E8;
      *(v0 + 856) = v93;
      *(v0 + 920) = &type metadata for RequestOriginUtil;
      *(v0 + 928) = &off_D1958;
      v94 = swift_allocObject();
      *(v0 + 896) = v94;
      v95 = *(v92 + 32);
      v96 = *(v92 + 16);
      *(v94 + 16) = *v92;
      *(v94 + 32) = v96;
      *(v94 + 48) = v95;
      v97 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin11InitialFlow_logger;
      if (qword_DA9D0 != -1)
      {
        sub_58D8();
      }

      v98 = sub_48A4(v139, qword_E0BA0);
      (v138)(v79 + v97, v98, v139);
      *(v79 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11InitialFlow_queue) = v128;
      sub_A814((v0 + 656), v79 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11InitialFlow_deviceState);
      sub_A814((v0 + 616), v79 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11InitialFlow_aceService);
      *(v79 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11InitialFlow_flowSpecs) = v130;
      sub_A82C((v0 + 208), (v79 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11InitialFlow_siriKitEventSender));
      *(v79 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11InitialFlow_templatingService) = v136;
      sub_A814((v0 + 856), v79 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11InitialFlow_offlineStateProvider);
      sub_A814((v0 + 736), v79 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11InitialFlow_outputPublisherAsync);
      sub_A814((v0 + 896), v79 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11InitialFlow_requestOriginUtil);
      *(v79 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11InitialFlow_platformSupportsNews) = v133;
      sub_761C((v0 + 816));

      sub_761C((v0 + 776));

      sub_761C((v0 + 576));

      *(v0 + 1328) = v79;
      sub_3600C(&qword_DD100, type metadata accessor for InitialFlow);
      sub_A3324();
      v52 = 143;
    }
  }

  v99 = *(v0 + 1448);
  v100 = *(v0 + 1440);
  v101 = *(v0 + 1432);
  v102 = *(v0 + 1360);
  sub_A3654();

  sub_35C5C(v99);
  sub_A924(v100, 0, 1, v102);
  sub_35CC4(v100, v99);
  sub_35D34(v99, v101);
  if (sub_CF2C(v101, 1, v102) == 1)
  {
    v103 = *(v0 + 1448);
    v104 = *(v0 + 1352);
    v105 = *(v0 + 1344);
    sub_35C5C(*(v0 + 1432));
    sub_34EDC(0xD000000000000030, 0x80000000000AFDC0);

    sub_35C5C(v103);
LABEL_26:
    sub_36138();

    sub_AA9C();

    return v122();
  }

  v106 = *(v0 + 1432);
  v107 = *(v0 + 1376);
  v108 = *(v0 + 1368);
  v109 = *(v0 + 1360);
  v110 = *(v108 + 32);
  *(v0 + 1464) = v110;
  *(v0 + 1472) = (v108 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v110(v107, v106, v109);
  v111 = sub_A35E4();
  *(v0 + 1480) = v111;
  if (!v111)
  {
    sub_35C5C(*(v0 + 1448));

    v120 = sub_361B4();
    v121(v120);
    goto LABEL_26;
  }

  v112 = *(v0 + 1352);
  sub_A4B54(16);

  strcpy(v140, "Running flow: ");
  HIBYTE(v140[1]) = -18;
  v144._countAndFlagsBits = sub_A3294();
  sub_A46D4(v144);

  sub_810AC(v140[0], v140[1], 0xD000000000000027, 0x80000000000AFB70, 0x78654E7472617473, 0xEF2928776F6C4674);

  sub_35B7C(v112 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_siriKitEventSender, v0 + 160);
  v113 = sub_7584((v0 + 160), *(v0 + 184));
  v114 = sub_A3294();
  v116 = v115;
  *(v0 + 1488) = v115;
  v117 = *v113;
  v118 = swift_task_alloc();
  *(v0 + 1496) = v118;
  *v118 = v0;
  v118[1] = sub_3422C;

  return sub_4D488(v52, v114, v116);
}

uint64_t sub_3422C()
{
  sub_5950();
  sub_AAA8();
  v2 = *(v1 + 1496);
  v3 = *(v1 + 1488);
  v4 = *v0;
  sub_5930();
  *v5 = v4;

  v6 = sub_AA8C();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_3432C()
{
  v1 = v0[185];
  v2 = v0[182];
  v3 = v0[181];

  sub_35C5C(v3);
  sub_761C(v0 + 20);
  v4 = sub_361B4();
  v5(v4);
  sub_36138();

  sub_AA9C();

  return v6();
}

uint64_t sub_34404()
{
  v0 = sub_A4964();
  sub_AA64();
  v2 = v1;
  v4 = *(v3 + 64);
  __chkstk_darwin(v5);
  sub_AA54();
  v8 = v7 - v6;
  v9 = sub_A4954();
  v10 = sub_10A88(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  sub_AA54();
  v13 = sub_A44B4();
  v14 = sub_10A88(v13);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  sub_AA54();
  sub_35BE0();
  sub_A4484();
  sub_A4944();
  (*(v2 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  return sub_A4994();
}

uint64_t sub_34584()
{
  v0 = sub_3598C();
  v1 = *(v0 + 52);
  v2 = (*(v0 + 48) + 7) & 0x1FFFFFFF8;
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_A8CD0;
  *(v3 + 32) = type metadata accessor for WeatherSpec(0);
  *(v3 + 40) = type metadata accessor for CalendarSpec();
  *(v3 + 48) = type metadata accessor for MapsSpec();
  *(v3 + 56) = type metadata accessor for RemindersSpec(0);
  return v3;
}

void sub_34604()
{
  sub_25714();
  v0 = sub_A2F34();
  sub_AA64();
  v2 = v1;
  v4 = *(v3 + 64);
  __chkstk_darwin(v5);
  sub_AA54();
  v8 = v7 - v6;
  v9 = [objc_opt_self() sharedInstance];
  if (v9)
  {
    v10 = v9;
    type metadata accessor for DailyBriefingFlowPlugin();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v12 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    sub_A2F24();
    sub_A2EF4();
    (*(v2 + 8))(v8, v0);
    sub_10760();
    v13 = sub_A4A64();
    v15 = v14;

    sub_359F4(0xD000000000000015, 0x80000000000AFC60, 0xD000000000000010, 0x80000000000AFC80, v12, v13, v15, v10);
  }

  sub_2569C();
}

void sub_34804()
{
  sub_25714();
  v98 = sub_A2BB4();
  sub_AA64();
  v2 = v1;
  v4 = *(v3 + 64);
  __chkstk_darwin(v5);
  sub_36194();
  v8 = (v6 - v7);
  __chkstk_darwin(v9);
  v11 = &v83 - v10;
  v12 = sub_A2F34();
  sub_AA64();
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v17);
  sub_AA54();
  v20 = v19 - v18;
  v89 = v0;
  v21 = *(v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_deviceState + 24);
  v22 = *(v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_deviceState + 32);
  v85 = (v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_deviceState);
  sub_7584((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_deviceState), v21);
  sub_AA64();
  v24 = v23;
  v26 = *(v25 + 64);
  __chkstk_darwin(v27);
  v29 = sub_36118(v28, v83);
  v30(v29);
  sub_A3484();
  (*(v24 + 8))(v0, v21);
  v31 = sub_A2EF4();
  v33 = v32;
  v34 = *(v14 + 8);
  v86 = v20;
  v87 = v14 + 8;
  v88 = v12;
  v84 = v34;
  v34(v20, v12);
  v99 = v31;
  v100 = v33;
  sub_A2B94();
  sub_A2BA4();
  v35 = *(v2 + 8);
  v94 = v11;
  v36 = v98;
  v35(v11, v98);
  v92 = sub_10760();
  v37 = sub_A4A44();
  v95 = v8;
  v96 = v2 + 8;
  v93 = v35;
  v35(v8, v36);

  v99 = v37;
  v38 = sub_4BF0(&qword_DC1A8, &qword_A8E50);
  v90 = sub_35AE8();
  v91 = v38;
  sub_A4574();

  v39 = sub_A4654();
  v41 = v40;

  v42 = &unk_CF5C0;
  v43 = 40;
  v97 = v41;
  v44 = v95;
  while (1)
  {
    if (!--v43)
    {
      v48 = v39;
      v57 = 0xE500000000000000;
      v58 = 0x65736C6166;
      goto LABEL_12;
    }

    v45 = *v42;
    v99 = *(v42 - 1);
    v100 = v45;

    v46 = v94;
    sub_A2B94();
    sub_A2BA4();
    v47 = v98;
    v48 = v39;
    v49 = v93;
    v93(v46, v98);
    v50 = sub_A4A44();
    v49(v44, v47);
    v99 = v50;
    sub_A4574();

    v51 = sub_A4654();
    v53 = v52;
    v54 = v97;

    if (v51 == v39 && v53 == v54)
    {
      break;
    }

    v42 += 2;
    v56 = sub_A4E44();

    if (v56)
    {
      goto LABEL_11;
    }
  }

LABEL_11:
  v57 = 0xE400000000000000;
  v58 = 1702195828;
LABEL_12:
  v96 = v58;
  LODWORD(v98) = v43 != 0;
  v99 = 0;
  v100 = 0xE000000000000000;
  sub_A4B54(27);

  sub_10944();
  v99 = 0xD000000000000017;
  v100 = v59;
  v60 = v85[3];
  sub_7584(v85, v60);
  sub_AA64();
  v62 = v61;
  v64 = *(v63 + 64);
  __chkstk_darwin(v65);
  sub_AA54();
  v68 = v67 - v66;
  (*(v62 + 16))(v67 - v66);
  v69 = v86;
  sub_A3484();
  (*(v62 + 8))(v68, v60);
  v70 = sub_A2EF4();
  v72 = v71;
  v84(v69, v88);
  v101._countAndFlagsBits = v70;
  v101._object = v72;
  sub_A46D4(v101);

  v102._countAndFlagsBits = 8236;
  v102._object = 0xE200000000000000;
  sub_A46D4(v102);
  v74 = v99;
  v73 = v100;
  v99 = 0;
  v100 = 0xE000000000000000;
  sub_A4B54(25);

  sub_10944();
  v99 = 0xD000000000000016;
  v100 = v75;
  v103._countAndFlagsBits = v48;
  v103._object = v97;
  sub_A46D4(v103);

  v104._countAndFlagsBits = 44;
  v104._object = 0xE100000000000000;
  sub_A46D4(v104);
  v76 = v99;
  v77 = v100;
  v99 = v74;
  v100 = v73;

  v105._countAndFlagsBits = v76;
  v105._object = v77;
  sub_A46D4(v105);

  v79 = v99;
  v78 = v100;
  v99 = 0;
  v100 = 0xE000000000000000;
  sub_A4B54(33);

  sub_10944();
  v99 = 0xD00000000000001FLL;
  v100 = v80;
  v106._countAndFlagsBits = v96;
  v106._object = v57;
  sub_A46D4(v106);

  v81 = v99;
  v82 = v100;
  v99 = v79;
  v100 = v78;

  v107._countAndFlagsBits = v81;
  v107._object = v82;
  sub_A46D4(v107);

  sub_810C4(v99, v100, 0xD000000000000027, 0x80000000000AFB70, 0xD000000000000011, 0x80000000000AFC40);

  sub_2569C();
}

uint64_t sub_34EDC(uint64_t a1, unint64_t a2)
{
  v5 = *sub_7584((v2 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_siriKitEventSender), *(v2 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_siriKitEventSender + 24));

  sub_931E8(4, 7, a1, a2);
  sub_4D424();

  sub_81094(a1, a2, 0xD000000000000027, 0x80000000000AFB70, 0xD000000000000018, 0x80000000000AFBC0);
  type metadata accessor for NoOpFlow();
  swift_allocObject();
  sub_3600C(&qword_DD0D0, type metadata accessor for NoOpFlow);
  sub_A3324();

  sub_A3654();
}

void sub_35044()
{
  sub_25714();
  v31 = v0;
  v1 = sub_A32E4();
  sub_AA64();
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v6);
  sub_36194();
  v9 = (v7 - v8);
  v11 = __chkstk_darwin(v10);
  v13 = &v31 - v12;
  __chkstk_darwin(v11);
  v15 = &v31 - v14;
  if (qword_DA890 != -1)
  {
    swift_once();
  }

  v16 = sub_1EA54();
  sub_36184();
  sub_A4B54(33);

  sub_10944();
  v32 = 0xD00000000000001FLL;
  v33 = v17;
  v36._countAndFlagsBits = sub_A48C4();
  sub_A46D4(v36);

  sub_810C4(v32, v33, 0xD000000000000027, 0x80000000000AFB70, 0xD000000000000012, 0x80000000000AFBA0);

  sub_93954(v16);
  v34 = &type metadata for DefaultProtectedAppCheckStrategy;
  v35 = sub_35924();
  sub_A32B4();

  sub_761C(&v32);
  sub_55364();
  v19 = v18;
  v20 = *(v18 + 16);
  if (v20 >= *(v18 + 24) >> 1)
  {
    sub_55364();
    v19 = v28;
  }

  *(v19 + 16) = v20 + 1;
  v23 = *(v3 + 32);
  v22 = v3 + 32;
  v21 = v23;
  v24 = (*(v22 + 48) + 32) & ~*(v22 + 48);
  v25 = *(v22 + 40);
  v23(v19 + v24 + v25 * v20, v15, v1);
  sub_A32D4();
  v26 = *(v19 + 16);
  if (v26 >= *(v19 + 24) >> 1)
  {
    sub_55364();
    v19 = v29;
  }

  *(v19 + 16) = v26 + 1;
  v21(v19 + v24 + v26 * v25, v13, v1);
  sub_A32C4();
  v27 = *(v19 + 16);
  if (v27 >= *(v19 + 24) >> 1)
  {
    sub_55364();
    v19 = v30;
  }

  *(v19 + 16) = v27 + 1;
  v21(v19 + v24 + v27 * v25, v9, v1);
  sub_2569C();
}

BOOL sub_35384()
{
  v1 = *(v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_deviceState + 24);
  sub_7584((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_deviceState), v1);
  sub_AA64();
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v6);
  v8 = sub_36118(v7, v12);
  v9(v8);
  v10 = sub_A3474();
  (*(v3 + 8))(v0, v1);
  return (v10 & 1) == 0;
}

uint64_t sub_3545C()
{
  v1 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_logger;
  v2 = sub_A43D4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_dbIntent));
  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_deviceState));
  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_aceService));
  v3 = *(v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_knowledgeStore);

  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_featureFlags));
  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_siriKitEventSender));
  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_requestOriginUtil));
  return v0;
}

uint64_t sub_3552C()
{
  sub_3545C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for GuardFlow()
{
  result = qword_DCEC8;
  if (!qword_DCEC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_355D8()
{
  result = sub_A43D4();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for GuardFlow.State(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x35770);
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

unint64_t sub_357AC()
{
  result = qword_DD0C0;
  if (!qword_DD0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DD0C0);
  }

  return result;
}

uint64_t sub_35800()
{
  v1 = *v0;
  sub_316C0();
  return v2 & 1;
}

uint64_t sub_3584C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_A648;

  return sub_31E50();
}

uint64_t sub_358E8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for GuardFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

unint64_t sub_35924()
{
  result = qword_DD0C8;
  if (!qword_DD0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DD0C8);
  }

  return result;
}

uint64_t sub_3598C()
{
  v0 = sub_4BF0(&qword_DD0E0, &qword_A8E58);
  if (sub_35B4C(v0))
  {
    v1 = &qword_DBB70;
    v2 = &unk_A6E90;
  }

  else
  {
    v1 = &unk_DD0E8;
    v2 = &unk_A8E60;
  }

  return sub_4BF0(v1, v2);
}

uint64_t sub_359F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v10 = sub_A45C4();

  v11 = sub_A45C4();

  v12 = sub_A45C4();

  v13 = [a8 localizedStringForKey:v10 table:v11 bundle:a5 languageCode:v12];

  if (!v13)
  {
    return 0;
  }

  v14 = sub_A45F4();

  return v14;
}

unint64_t sub_35AE8()
{
  result = qword_DD0D8;
  if (!qword_DD0D8)
  {
    sub_1B4B0(&qword_DC1A8, &qword_A8E50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DD0D8);
  }

  return result;
}

uint64_t sub_35B4C(uint64_t a1)
{
  if (swift_isClassType())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_35B7C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_35BE0()
{
  result = qword_DD0F8;
  if (!qword_DD0F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_DD0F8);
  }

  return result;
}

uint64_t sub_35C24()
{
  sub_761C((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_35C5C(uint64_t a1)
{
  v2 = sub_4BF0(&qword_DD0F0, &qword_A8E70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_35CC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_4BF0(&qword_DD0F0, &qword_A8E70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_35D34(uint64_t a1, uint64_t a2)
{
  v4 = sub_4BF0(&qword_DD0F0, &qword_A8E70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_35DA4()
{
  result = qword_DD110;
  if (!qword_DD110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DD110);
  }

  return result;
}

uint64_t sub_35E10()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_35E48()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_35EF4;

  return sub_32D04(v2);
}

uint64_t sub_35EF4(uint64_t a1, uint64_t a2)
{
  sub_AAA8();
  v6 = *(v5 + 16);
  v7 = *v2;
  sub_5930();
  *v8 = v7;

  v9 = *(v7 + 8);

  return v9(a1, a2);
}

uint64_t sub_3600C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_36090(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{

  sub_810C4(a1, a2, 0xD000000000000027, a4, v4, 0xEA0000000000293ALL);
}

uint64_t sub_360EC()
{

  return swift_once();
}

uint64_t sub_36138()
{
  v2 = v0[181];
  v3 = v0[180];
  v4 = v0[179];
  v5 = v0[178];
  v6 = v0[177];
  v7 = v0[176];
  v8 = v0[175];
  v9 = v0[172];
}

uint64_t sub_36168(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

uint64_t sub_361B4()
{
  v1 = v0[184];
  v2 = v0[183];
  v3 = v0[172];
  v4 = v0[170];
  return v0[168];
}

uint64_t sub_361D8()
{
  sub_5950();
  *(v1 + 16) = v0;
  v2 = sub_4BF0(&qword_DB5A8, &unk_A67C0);
  sub_10A88(v2);
  v4 = *(v3 + 64);
  *(v1 + 24) = sub_10AAC();
  v5 = sub_AA8C();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_3625C()
{
  sub_AB40();
  v0 = sub_37348();
  sub_372E4(v0);
  v1 = sub_37298(&unk_AAB50);
  v2 = sub_373AC(v1);
  *v2 = v3;
  sub_373A0(v2);
  sub_37394();

  return v4();
}

uint64_t sub_362FC()
{
  sub_5950();
  *(v1 + 16) = v0;
  v2 = sub_4BF0(&qword_DB5A8, &unk_A67C0);
  sub_10A88(v2);
  v4 = *(v3 + 64);
  *(v1 + 24) = sub_10AAC();
  v5 = sub_AA8C();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_36380()
{
  sub_AB40();
  v0 = sub_37348();
  sub_372E4(v0);
  v1 = sub_37298(&unk_AAB50);
  v2 = sub_373AC(v1);
  *v2 = v3;
  sub_373A0(v2);
  sub_37394();

  return v4();
}

uint64_t sub_36420()
{
  sub_5950();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_4BF0(&qword_DB5A8, &unk_A67C0);
  sub_10A88(v4);
  v6 = *(v5 + 64);
  v1[5] = sub_10AAC();
  v7 = sub_AA8C();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_364A8()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_4BF0(&qword_DB968, &unk_A8F90);
  v5 = swift_allocObject();
  v0[6] = v5;
  v5[4].n128_u64[1] = sub_372B8(v5, xmmword_A6E70);
  sub_76B0(&v5[3]);

  sub_37304();
  v6 = *(v2 + 16);
  v7 = sub_A3744();
  sub_37328(v7);
  v8 = sub_37298(&unk_AAB50);
  v0[7] = v8;
  *v8 = v0;
  sub_37384(v8);
  sub_37374();

  return v9();
}

uint64_t sub_365B4()
{
  sub_5950();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_4BF0(&qword_DB5A8, &unk_A67C0);
  sub_10A88(v4);
  v6 = *(v5 + 64);
  v1[5] = sub_10AAC();
  v7 = sub_AA8C();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_3663C()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_4BF0(&qword_DB968, &unk_A8F90);
  v5 = swift_allocObject();
  v0[6] = v5;
  v5[4].n128_u64[1] = sub_372B8(v5, xmmword_A6E70);
  sub_76B0(&v5[3]);

  sub_37304();
  v6 = *(v2 + 16);
  v7 = sub_A3744();
  sub_37328(v7);
  v8 = sub_37298(&unk_AAB50);
  v0[7] = v8;
  *v8 = v0;
  sub_37384(v8);
  sub_37374();

  return v9();
}

uint64_t sub_36748()
{
  sub_5950();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_4BF0(&qword_DB5A8, &unk_A67C0);
  sub_10A88(v4);
  v6 = *(v5 + 64);
  v1[5] = sub_10AAC();
  v7 = sub_AA8C();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_367D0()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_4BF0(&qword_DB968, &unk_A8F90);
  v5 = swift_allocObject();
  v0[6] = v5;
  v5[4].n128_u64[1] = sub_372B8(v5, xmmword_A6E70);
  sub_76B0(&v5[3]);

  sub_37304();
  v6 = *(v2 + 16);
  v7 = sub_A3744();
  sub_37328(v7);
  v8 = sub_37298(&unk_AAB50);
  v0[7] = v8;
  *v8 = v0;
  sub_37384(v8);
  sub_37374();

  return v9();
}

uint64_t sub_368DC()
{
  sub_AB40();
  sub_37364();
  v2 = v1[7];
  v3 = v1[6];
  v4 = v1[5];
  v5 = *v0;
  sub_5930();
  *v6 = v5;

  sub_A8B4(v4);

  v7 = sub_595C();

  return v8(v7);
}

uint64_t sub_36A04()
{
  sub_5950();
  *(v1 + 16) = v0;
  v2 = sub_4BF0(&qword_DB5A8, &unk_A67C0);
  sub_10A88(v2);
  v4 = *(v3 + 64);
  *(v1 + 24) = sub_10AAC();
  v5 = sub_AA8C();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_36A88()
{
  sub_AB40();
  v0 = sub_37348();
  sub_372E4(v0);
  v1 = sub_37298(&unk_AAB50);
  v2 = sub_373AC(v1);
  *v2 = v3;
  sub_373A0(v2);
  sub_37394();

  return v4();
}

uint64_t sub_36B28()
{
  sub_5950();
  sub_37364();
  v2 = *(v1 + 32);
  v3 = *(v1 + 24);
  v4 = *v0;
  sub_5930();
  *v5 = v4;

  sub_A8B4(v3);

  v6 = sub_595C();

  return v7(v6);
}

uint64_t sub_36C2C()
{
  sub_5950();
  *(v1 + 16) = v0;
  v2 = sub_4BF0(&qword_DB5A8, &unk_A67C0);
  sub_10A88(v2);
  v4 = *(v3 + 64);
  *(v1 + 24) = sub_10AAC();
  v5 = sub_AA8C();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_36CB0()
{
  sub_AB40();
  v0 = sub_37348();
  sub_372E4(v0);
  v1 = sub_37298(&unk_AAB50);
  v2 = sub_373AC(v1);
  *v2 = v3;
  sub_373A0(v2);
  sub_37394();

  return v4();
}

uint64_t sub_36D50()
{
  sub_5950();
  *(v1 + 81) = v2;
  *(v1 + 16) = v3;
  *(v1 + 24) = v0;
  *(v1 + 80) = v4;
  v5 = sub_A42E4();
  *(v1 + 32) = v5;
  v6 = *(v5 - 8);
  *(v1 + 40) = v6;
  v7 = *(v6 + 64);
  *(v1 + 48) = sub_10AAC();
  v8 = sub_4BF0(&qword_DB5A8, &unk_A67C0);
  sub_10A88(v8);
  v10 = *(v9 + 64);
  *(v1 + 56) = sub_10AAC();
  v11 = sub_AA8C();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_36E30()
{
  v1 = *(v0 + 81);
  v2 = *(v0 + 16);
  v3 = *(v0 + 80);
  sub_4BF0(&qword_DB968, &unk_A8F90);
  v4 = swift_allocObject();
  *(v0 + 64) = v4;
  strcpy((v4 + 32), "noneAvailable");
  *(v4 + 46) = -4864;
  *(v4 + 16) = xmmword_A8CD0;
  *(v4 + 48) = v3;
  *(v4 + 72) = &type metadata for Bool;
  *(v4 + 80) = 0x656C6961466C6C61;
  *(v4 + 88) = 0xE900000000000064;
  *(v4 + 96) = v1;
  *(v4 + 120) = &type metadata for Bool;
  *(v4 + 128) = 0xD000000000000012;
  *(v4 + 136) = 0x80000000000B02E0;
  v5 = *(v2 + 16);
  if (v5)
  {
    v6 = *(v0 + 40);
    sub_7AC1C(0, v5, 0);
    v7 = (v2 + 40);
    v24 = v5;
    v8 = v5;
    do
    {
      v9 = *(v0 + 48);
      v10 = *(v7 - 1);
      v11 = *v7;

      sub_A42C4();
      v13 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];
      if (v13 >= v12 >> 1)
      {
        sub_7AC1C(v12 > 1, v13 + 1, 1);
      }

      v14 = *(v0 + 48);
      v15 = *(v0 + 32);
      _swiftEmptyArrayStorage[2] = v13 + 1;
      (*(v6 + 32))(_swiftEmptyArrayStorage + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v13, v14, v15);
      v7 += 2;
      --v8;
    }

    while (v8);
    v5 = v24;
  }

  v16 = *(v0 + 56);
  v17 = *(v0 + 24);
  v18 = sub_4BF0(&qword_DB970, &unk_A6C10);
  *(v4 + 144) = _swiftEmptyArrayStorage;
  *(v4 + 168) = v18;
  *(v4 + 176) = 0xD000000000000017;
  *(v4 + 184) = 0x80000000000B0300;
  *(v4 + 216) = &type metadata for Double;
  *(v4 + 192) = v5;
  v19 = *(v17 + 16);
  v20 = sub_A3744();
  sub_372E4(v20);
  v21 = sub_37298(&unk_AAB50);
  *(v0 + 72) = v21;
  *v21 = v0;
  v21[1] = sub_370F0;
  v22 = *(v0 + 56);

  return v24(11, v4, v22, v19);
}

uint64_t sub_370F0()
{
  sub_AB40();
  sub_37364();
  v2 = v1[9];
  v3 = v1[8];
  v4 = v1[7];
  v5 = v1[6];
  v6 = *v0;
  sub_5930();
  *v7 = v6;

  sub_A8B4(v4);

  v8 = sub_595C();

  return v9(v8);
}

uint64_t sub_37234()
{
  v1 = *(v0 + 16);

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_37298@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;

  return swift_task_alloc();
}

uint64_t sub_372B8(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = 0x6E69616D6F64;
  a1[2].n128_u64[1] = 0xE600000000000000;

  return sub_A42E4();
}

uint64_t sub_372E4(uint64_t a1)
{

  return sub_A924(v1, 1, 1, a1);
}

uint64_t sub_37304()
{

  return sub_A42C4();
}

uint64_t sub_37328(uint64_t a1)
{

  return sub_A924(v1, 1, 1, a1);
}

uint64_t sub_37348()
{
  v2 = *(v0 + 24);
  v3 = *(*(v0 + 16) + 16);

  return sub_A3744();
}

uint64_t sub_37384(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 40);
  return result;
}

uint64_t sub_373A0(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 24);
  return result;
}

uint64_t sub_373B8(void *a1)
{
  v2 = v1;
  v45 = a1;
  v3 = sub_4BF0(&qword_DD220, qword_A9B20);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v44 = &v42 - v8;
  v9 = sub_A2EA4();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = __chkstk_darwin(v9);
  v43 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v42 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v42 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v42 - v21;
  __chkstk_darwin(v20);
  v24 = &v42 - v23;
  v25 = v2;
  v26 = [v2 startDate];
  if (v26)
  {
    v27 = v26;
    v42 = v7;
    sub_A2E74();

    v28 = v10[4];
    v28(v24, v22, v9);
    v29 = [v45 startDate];
    if (v29)
    {
      v30 = v29;
      sub_A2E74();

      v28(v19, v16, v9);
      v31 = sub_A2E84();
      v32 = v10[1];
      v32(v19, v9);
      v32(v24, v9);
      return v31;
    }

    (v10[1])(v24, v9);
    v7 = v42;
  }

  v33 = [v25 startDate];
  if (v33)
  {
    v34 = v33;
    v35 = v43;
    sub_A2E74();

    v36 = v44;
    (v10[4])(v44, v35, v9);
    sub_A924(v36, 0, 1, v9);
    sub_37774(v36);
    return -1;
  }

  else
  {
    v37 = v44;
    sub_A924(v44, 1, 1, v9);
    sub_37774(v37);
    v31 = [v45 startDate];
    if (v31)
    {
      v38 = v43;
      sub_A2E74();

      (v10[4])(v7, v38, v9);
      v31 = &dword_0 + 1;
      v39 = v7;
      v40 = 0;
    }

    else
    {
      v39 = v7;
      v40 = 1;
    }

    sub_A924(v39, v40, 1, v9);
    sub_37774(v7);
  }

  return v31;
}

uint64_t sub_37774(uint64_t a1)
{
  v2 = sub_4BF0(&qword_DD220, qword_A9B20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_377DC(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for SupportedFeatures;
  *(a1 + 32) = &off_D2110;
  *a1 = 3;
}

double sub_377FC@<D0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 80);
  sub_4BF0(&qword_DC738, &qword_AAF90);
  sub_A4974();
  *a1 = v5;
  a1[1] = v6;
  result = *&v7;
  a1[2] = v7;
  a1[3] = v8;
  return result;
}

uint64_t sub_37880@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(a1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin8MapsSpec_topSuggestion_Value + 16);
  v7[0] = *(a1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin8MapsSpec_topSuggestion_Value);
  v7[1] = v2;
  v4 = *(a1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin8MapsSpec_topSuggestion_Value + 48);
  v8 = *(a1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin8MapsSpec_topSuggestion_Value + 32);
  v3 = v8;
  v9 = v4;
  *a2 = v7[0];
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v4;
  return sub_39408(v7, &v6);
}

uint64_t sub_378DC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  v6 = *(a1 + 16);
  *(v5 + 24) = *a1;
  *(v5 + 40) = v6;
  v7 = *(a1 + 48);
  *(v5 + 56) = *(a1 + 32);
  *(v5 + 72) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_393D4;
  *(v8 + 24) = v5;
  aBlock[4] = sub_253D8;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_50578;
  aBlock[3] = &unk_D1640;
  v9 = _Block_copy(aBlock);

  sub_39408(a1, &v11);

  dispatch_sync(v4, v9);
  sub_1085C(a1, &qword_DC738, &qword_AAF90);
  _Block_release(v9);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_37A78(uint64_t a1, _OWORD *a2)
{
  v2 = (a1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin8MapsSpec_topSuggestion_Value);
  v3 = *(a1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin8MapsSpec_topSuggestion_Value);
  v4 = *(a1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin8MapsSpec_topSuggestion_Value + 8);
  v5 = *(a1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin8MapsSpec_topSuggestion_Value + 16);
  v6 = *(a1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin8MapsSpec_topSuggestion_Value + 24);
  v7 = *(a1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin8MapsSpec_topSuggestion_Value + 32);
  v8 = *(a1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin8MapsSpec_topSuggestion_Value + 40);
  v9 = *(a1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin8MapsSpec_topSuggestion_Value + 48);
  v10 = *(a1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin8MapsSpec_topSuggestion_Value + 56);
  v11 = a2[1];
  *v2 = *a2;
  v2[1] = v11;
  v12 = a2[3];
  v2[2] = a2[2];
  v2[3] = v12;
  sub_39408(a2, &v14);
  return sub_24638(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_37B14(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  v13 = *(v9 + 48);
  v14 = *(v9 + 52);
  v15 = swift_allocObject();
  sub_A7C4(a9, a9[3]);
  sub_AA64();
  v17 = *(v16 + 64);
  __chkstk_darwin(v18);
  sub_AA54();
  v21 = (v20 - v19);
  (*(v22 + 16))(v20 - v19);
  v23 = *v21;
  v24 = type metadata accessor for OfflineStateProvider();
  v51[3] = v24;
  v51[4] = &off_D29E8;
  v51[0] = v23;
  v25 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin8MapsSpec_logger;
  if (qword_DA9F8 != -1)
  {
    swift_once();
  }

  v26 = sub_A43D4();
  v27 = sub_48A4(v26, qword_E0C18);
  (*(*(v26 - 8) + 16))(v15 + v25, v27, v26);
  *(v15 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin8MapsSpec_previousEntry) = 0;
  v28 = (v15 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin8MapsSpec_topSuggestion_Value);
  *v28 = 0u;
  v28[1] = 0u;
  v28[2] = 0u;
  v28[3] = 0u;
  sub_A760(a6, v50);
  v29 = type metadata accessor for MapsTemplatingService();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();

  *(v15 + 224) = sub_6188C(v50, a8);
  sub_A760(a5, v15 + 16);
  sub_A760(a6, v15 + 112);
  sub_A760(v51, v50);
  sub_A7C4(v50, v50[3]);
  sub_AA64();
  v33 = *(v32 + 64);
  __chkstk_darwin(v34);
  sub_AA54();
  v37 = (v36 - v35);
  (*(v38 + 16))(v36 - v35);
  v39 = *v37;
  *(v15 + 192) = v24;
  *(v15 + 200) = &off_D29E8;
  *(v15 + 168) = v39;
  v40 = sub_A3584();
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  swift_allocObject();
  *(v15 + 56) = sub_A3574();
  sub_2505C();
  v43 = sub_394DC();
  sub_761C(a6);
  sub_761C(a5);
  sub_761C(v51);
  *(v15 + 64) = v43;
  *(v15 + 72) = 1;
  *(v15 + 208) = 0;
  *(v15 + 216) = -256;
  *(v15 + 80) = a1;
  *(v15 + 88) = a2;
  *(v15 + 96) = a3;
  *(v15 + 104) = a4;
  *(v15 + 152) = a7;
  *(v15 + 160) = a8;
  sub_761C(v50);
  sub_761C(a9);
  return v15;
}

uint64_t sub_37E78()
{
  sub_5950();
  *(v1 + 480) = v0;
  v2 = *(*(sub_4BF0(&qword_DB5A8, &unk_A67C0) - 8) + 64) + 15;
  *(v1 + 488) = swift_task_alloc();
  v3 = sub_AA8C();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_37F08()
{
  v1 = *sub_7584((v0[60] + 168), *(v0[60] + 192));
  if (sub_834E4())
  {
    v3 = 0;
    v4 = "(skipping) location not precise";
    v5 = 0xD000000000000024;
LABEL_10:
    sub_394B8(v5, v4 | 0x8000000000000000, v2, 0x80000000000B03E0);
    sub_24824();
    v8 = sub_394DC();
    *v9 = v3;
    sub_82ED4(v8, 256);
    sub_394DC();
    *v10 = v3;
    v11 = v0[61];

    v12 = sub_39508();

    return v13(v12);
  }

  if (*(v0[60] + 104) != 1)
  {
    v4 = "Valid maps suggestion found.";
    v5 = 0xD00000000000001FLL;
    v3 = 1;
    goto LABEL_10;
  }

  v0[62] = OBJC_IVAR____TtC23DailyBriefingFlowPlugin8MapsSpec_logger;
  sub_394B8(0xD000000000000015, 0x80000000000B03C0, v2, 0x80000000000B03E0);
  if (qword_DA950 != -1)
  {
    swift_once();
  }

  v0[63] = qword_E0A08;

  v6 = swift_task_alloc();
  v0[64] = v6;
  *v6 = v0;
  v6[1] = sub_3813C;

  return sub_7B77C();
}

uint64_t sub_3813C()
{
  sub_5950();
  sub_AAA8();
  v2 = v1;
  v3 = *(v1 + 512);
  v4 = *(v1 + 504);
  v5 = *v0;
  sub_5930();
  *v6 = v5;

  v7 = v2[10];
  v2[13] = v2[9];
  v2[14] = v7;
  v8 = v2[12];
  v2[15] = v2[11];
  v2[16] = v8;

  v9 = sub_AA8C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_3824C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 160);
  *(v3 + 520) = v4;
  if (!v4)
  {
LABEL_4:
    v9 = *(v3 + 480) + *(v3 + 496);
    sub_39494(0xD000000000000018, 0x80000000000AF000, a3, 0x80000000000B03E0);
    sub_24824();
    v10 = sub_394DC();
    *v11 = 2;
    sub_82ED4(v10, 256);
    sub_394DC();
    *v12 = 2;
    v13 = *(v3 + 488);

    v14 = sub_39508();

    return v15(v14);
  }

  v5 = *(v3 + 144);
  *(v3 + 80) = v5;
  *(v3 + 96) = v4;
  v6 = *(v3 + 184);
  *(v3 + 120) = v6;
  v7 = *(v3 + 168);
  *(v3 + 104) = v7;
  v8 = *(v3 + 200);
  *(v3 + 136) = v8;
  *(v3 + 464) = v5;
  *(v3 + 400) = v7;
  *(v3 + 416) = v6;
  *(v3 + 432) = v8;
  if (*(v3 + 128) == 3)
  {
    sub_1085C(v3 + 144, &qword_DC738, &qword_AAF90);
    goto LABEL_4;
  }

  v17 = *(v3 + 480) + *(v3 + 496);
  sub_39494(0xD00000000000001CLL, 0x80000000000B0410, a3, 0x80000000000B03E0);
  if (qword_DA838 != -1)
  {
    swift_once();
  }

  *(v3 + 528) = qword_E0608;

  v18 = swift_task_alloc();
  *(v3 + 536) = v18;
  *v18 = v3;
  v18[1] = sub_38494;

  return sub_44F0(4);
}

uint64_t sub_38494()
{
  sub_5950();
  sub_AAA8();
  v2[55] = v0;
  v2[56] = v1;
  v2[57] = v3;
  v4 = v2[67];
  v5 = *v0;
  sub_5930();
  *v6 = v5;
  *(v8 + 544) = v7;

  v9 = sub_AA8C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_38584()
{
  v1 = *(v0 + 544);
  if (v1)
  {
    v2 = *(v0 + 448);
    sub_247E0();
    v3 = sub_39278(v2, v1, 1);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v0 + 528);
  v5 = *(v0 + 520);
  v7 = *(v0 + 480);
  v6 = *(v0 + 488);

  v8 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin8MapsSpec_previousEntry;
  v9 = *(v7 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin8MapsSpec_previousEntry);
  *(v7 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin8MapsSpec_previousEntry) = v3;

  *(v0 + 16) = *(v0 + 464);
  v10 = *(v0 + 416);
  *(v0 + 40) = *(v0 + 400);
  *(v0 + 56) = v10;
  *(v0 + 72) = *(v0 + 432);
  *(v0 + 32) = v5;
  v11 = *(v0 + 224);
  *(v0 + 272) = *(v0 + 208);
  *(v0 + 288) = v11;
  v12 = *(v0 + 256);
  *(v0 + 304) = *(v0 + 240);
  *(v0 + 320) = v12;
  sub_39348(v0 + 272, v0 + 336);
  sub_378DC(v0 + 16);
  *(v0 + 552) = *(v7 + 224);
  v13 = *(v7 + v8);
  v14 = v13;

  v15 = sub_5E790(v13, v0 + 16);

  v16 = sub_A3744();
  sub_A924(v6, 1, 1, v16);
  v17 = swift_task_alloc();
  *(v0 + 560) = v17;
  *v17 = v0;
  v17[1] = sub_38720;
  v18 = *(v0 + 488);

  return sub_61488(v0 + 80, v15 & 1, v18);
}

uint64_t sub_38720()
{
  sub_5950();
  sub_AAA8();
  v2 = v1[70];
  v3 = v1[69];
  v4 = v1[61];
  v5 = *v0;
  sub_5930();
  *v6 = v5;
  *(v8 + 568) = v7;

  sub_1085C(v4, &qword_DB5A8, &unk_A67C0);
  v9 = sub_AA8C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_38854()
{
  sub_5950();
  v1 = v0[71];
  v2 = v0[60];

  sub_82ED4(v3, 1);

  sub_1085C((v0 + 18), &qword_DC738, &qword_AAF90);
  v4 = v0[61];

  v5 = v0[1];

  return v5(1, 0);
}

uint64_t sub_388F0()
{
  *(v1 + 80) = v0;
  v2 = sub_AA8C();
  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_38918()
{
  v1 = *(v0 + 80);
  v2.n128_f64[0] = sub_377FC((v0 + 16));
  if (*(v0 + 32))
  {
    v3 = *(*(v0 + 80) + 152);
    sub_392E4(*(v0 + 72));
    *(v0 + 88) = v4;
    if (v4)
    {
      v5 = swift_task_alloc();
      *(v0 + 96) = v5;
      *v5 = v0;
      v5[1] = sub_38A34;

      return sub_39B8();
    }

    sub_1085C(v0 + 16, &qword_DC738, &qword_AAF90);
  }

  v7 = *(v0 + 8);

  return v7(v2);
}

uint64_t sub_38A34()
{
  sub_5950();
  sub_AAA8();
  v2 = *(v1 + 96);
  v3 = *(v1 + 88);
  v4 = *v0;
  sub_5930();
  *v5 = v4;

  v6 = sub_AA8C();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_38B34()
{
  sub_5950();
  sub_1085C(v0 + 16, &qword_DC738, &qword_AAF90);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_38BA0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_4BF0(&qword_DD468, &qword_A9068);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v35 - v4;
  v6 = sub_A4434();
  sub_AA64();
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v11);
  sub_AA54();
  v14 = v13 - v12;
  v15 = sub_4BF0(&qword_DB5A8, &unk_A67C0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v35 - v17;
  v19 = sub_A3744();
  sub_AA64();
  v21 = v20;
  v23 = *(v22 + 64);
  __chkstk_darwin(v24);
  sub_AA54();
  v27 = (v26 - v25);
  sub_377FC(&v37);
  if (v38)
  {
    v36 = a1;
    sub_82D48(v18);
    if (sub_CF2C(v18, 1, v19) == 1)
    {
      sub_1085C(&v37, &qword_DC738, &qword_AAF90);
      sub_1085C(v18, &qword_DB5A8, &unk_A67C0);
      v28 = 1;
      a1 = v36;
    }

    else
    {
      v29 = v18;
      v30 = *(v21 + 32);
      v30(v27, v29, v19);
      sub_491A8();
      if (sub_CF2C(v5, 1, v6) == 1)
      {
        sub_1085C(&v37, &qword_DC738, &qword_AAF90);
        sub_1085C(v5, &qword_DD468, &qword_A9068);
      }

      else
      {
        (*(v8 + 32))(v14, v5, v6);
        sub_4BF0(&qword_DD470, &qword_A9070);
        v31 = *(v8 + 72);
        v32 = (*(v8 + 80) + 32) & ~*(v8 + 80);
        v33 = swift_allocObject();
        *(v33 + 16) = xmmword_A6E70;
        (*(v8 + 16))(v33 + v32, v14, v6);
        sub_A3694();
        sub_1085C(&v37, &qword_DC738, &qword_AAF90);
        (*(v8 + 8))(v14, v6);
      }

      a1 = v36;
      v30(v36, v27, v19);
      v28 = 0;
    }
  }

  else
  {
    v28 = 1;
  }

  return sub_A924(a1, v28, 1, v19);
}

uint64_t sub_38F58()
{
  v1 = *(v0 + 224);

  v2 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin8MapsSpec_logger;
  v3 = sub_A43D4();
  sub_5908(v3);
  (*(v4 + 8))(v0 + v2);

  v5 = sub_394F4((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin8MapsSpec_topSuggestion_Value));

  return sub_24638(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_38FE0()
{
  v0 = sub_82DF4();
  v1 = *(v0 + 224);

  v2 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin8MapsSpec_logger;
  v3 = sub_A43D4();
  sub_5908(v3);
  (*(v4 + 8))(v0 + v2);

  v5 = sub_394F4((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin8MapsSpec_topSuggestion_Value));
  sub_24638(v5, v6, v7, v8, v9, v10, v11, v12);
  return v0;
}

uint64_t sub_39068()
{
  v0 = sub_38FE0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for MapsSpec()
{
  result = qword_DD268;
  if (!qword_DD268)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_39110()
{
  result = sub_A43D4();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

__n128 sub_391C4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_391D8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_39218(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_39278(uint64_t a1, uint64_t a2, char a3)
{
  v4 = sub_A45C4();

  v5 = [swift_getObjCClassFromMetadata() entryFromSerializedBase64String:v4 hasPrefix:a3 & 1];

  return v5;
}

uint64_t sub_392E4(void *a1)
{
  v1 = [a1 serializedBase64String];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_A45F4();

  return v3;
}

uint64_t sub_39380()
{
  v1 = *(v0 + 16);

  if (*(v0 + 40))
  {

    v2 = *(v0 + 64);
  }

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_393F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_39408(uint64_t a1, uint64_t a2)
{
  v4 = sub_4BF0(&qword_DC738, &qword_AAF90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_39494(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{

  sub_810AC(a1, a2, 0xD000000000000026, a4, v4, 0xE900000000000029);
}

void sub_394B8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{

  sub_810AC(a1, a2, 0xD000000000000026, a4, v4, 0xE900000000000029);
}

uint64_t sub_394DC()
{

  return swift_allocError();
}

uint64_t sub_394F4@<X0>(uint64_t *a1@<X8>)
{
  result = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  return result;
}

uint64_t sub_3951C()
{
  v1 = v0;
  v2 = sub_A3174();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for WeatherCondition.blizzard(_:))
  {
    return 3;
  }

  if (v7 == enum case for WeatherCondition.blowingDust(_:))
  {
    return 11;
  }

  if (v7 == enum case for WeatherCondition.blowingSnow(_:))
  {
    return 8;
  }

  if (v7 == enum case for WeatherCondition.breezy(_:))
  {
    return 12;
  }

  if (v7 == enum case for WeatherCondition.clear(_:))
  {
    return 17;
  }

  if (v7 == enum case for WeatherCondition.cloudy(_:))
  {
    return 15;
  }

  if (v7 == enum case for WeatherCondition.drizzle(_:))
  {
    return 9;
  }

  if (v7 == enum case for WeatherCondition.flurries(_:))
  {
    return 7;
  }

  if (v7 == enum case for WeatherCondition.foggy(_:))
  {
    return 13;
  }

  if (v7 == enum case for WeatherCondition.freezingDrizzle(_:) || v7 == enum case for WeatherCondition.freezingRain(_:))
  {
    return 6;
  }

  if (v7 == enum case for WeatherCondition.frigid(_:))
  {
    return 18;
  }

  if (v7 == enum case for WeatherCondition.hail(_:))
  {
    return 4;
  }

  if (v7 != enum case for WeatherCondition.haze(_:))
  {
    if (v7 == enum case for WeatherCondition.heavyRain(_:))
    {
      return 9;
    }

    if (v7 != enum case for WeatherCondition.heavySnow(_:))
    {
      if (v7 == enum case for WeatherCondition.hot(_:))
      {
        return 19;
      }

      if (v7 == enum case for WeatherCondition.hurricane(_:))
      {
        return 0;
      }

      if (v7 == enum case for WeatherCondition.isolatedThunderstorms(_:))
      {
        return 5;
      }

      if (v7 == enum case for WeatherCondition.mostlyClear(_:))
      {
        return 17;
      }

      if (v7 == enum case for WeatherCondition.mostlyCloudy(_:))
      {
        return 15;
      }

      if (v7 == enum case for WeatherCondition.partlyCloudy(_:))
      {
        return 16;
      }

      if (v7 == enum case for WeatherCondition.rain(_:))
      {
        return 9;
      }

      if (v7 == enum case for WeatherCondition.scatteredThunderstorms(_:))
      {
        return 5;
      }

      if (v7 == enum case for WeatherCondition.sleet(_:))
      {
        return 6;
      }

      if (v7 == enum case for WeatherCondition.smoky(_:))
      {
        return 10;
      }

      if (v7 != enum case for WeatherCondition.snow(_:))
      {
        if (v7 == enum case for WeatherCondition.strongStorms(_:))
        {
          return 5;
        }

        if (v7 != enum case for WeatherCondition.sunFlurries(_:))
        {
          if (v7 != enum case for WeatherCondition.sunShowers(_:))
          {
            if (v7 != enum case for WeatherCondition.thunderstorms(_:))
            {
              if (v7 == enum case for WeatherCondition.tropicalStorm(_:))
              {
                return 2;
              }

              if (v7 == enum case for WeatherCondition.windy(_:))
              {
                return 12;
              }

              if (v7 != enum case for WeatherCondition.wintryMix(_:))
              {
                (*(v3 + 8))(v6, v2);
                return 22;
              }

              return 6;
            }

            return 5;
          }

          return 9;
        }
      }
    }

    return 7;
  }

  return 14;
}

uint64_t getEnumTagSinglePayload for RequestOriginInfo(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for RequestOriginInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_399D8(uint64_t a1)
{
  if (*(a1 + 16) <= 1u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_399F0(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_39A2C()
{
  sub_AB40();
  sub_39FC8(*(v0 + 64), v0 + 16);
  v1 = swift_allocObject();
  v2 = *(v0 + 32);
  *(v1 + 16) = *(v0 + 16);
  *(v1 + 32) = v2;
  *(v1 + 48) = *(v0 + 48);
  v3 = swift_allocObject();
  *(v0 + 72) = v3;
  *(v3 + 16) = &unk_A90E8;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_39B60;
  v5.n128_u64[0] = 2.0;

  return (sub_3B038)(&unk_A90F8, v3, 0x29286863746566, 0xE700000000000000, v5);
}

uint64_t sub_39B60()
{
  sub_25654();
  sub_402C4();
  sub_AAA8();
  v3 = v2;
  sub_40168();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  sub_5930();
  *v8 = v7;
  *(v3 + 88) = v0;

  if (!v0)
  {
    v13 = *(v3 + 72);

    v14 = *(v7 + 8);
    sub_40498();

    __asm { BRAA            X4, X16 }
  }

  sub_40210();
  sub_40498();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_39CAC()
{
  sub_AB40();
  v1 = v0[11];
  v2 = v0[9];

  v0[7] = v1;
  v3 = v0 + 7;
  swift_errorRetain();
  sub_4BF0(&qword_DBB90, &qword_A7540);
  if (swift_dynamicCast())
  {
    v4 = v0[11];

    if (qword_DA9D0 != -1)
    {
      sub_58D8();
    }

    v5 = sub_A43D4();
    sub_48A4(v5, qword_E0BA0);
    sub_402DC(0xD000000000000037, "wPlugin/RequestOriginUtil.swift");
    v6 = *v3;
  }

  else
  {
    v7 = *v3;

    if (qword_DA9D0 != -1)
    {
      sub_58D8();
    }

    v8 = v0[11];
    v9 = sub_A43D4();
    sub_48A4(v9, qword_E0BA0);
    sub_402DC(0xD000000000000030, "ble in offline mode.");
  }

  v10 = sub_401EC();

  return v11(v10);
}

uint64_t sub_39E3C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_39ECC;

  return sub_3A0C0();
}

uint64_t sub_39ECC()
{
  sub_AB40();
  v4 = v3;
  sub_402C4();
  sub_AAA8();
  v6 = *(v5 + 16);
  v7 = *v2;
  sub_5930();
  *v8 = v7;

  sub_40330();

  return v9(v1, v0, v4);
}

uint64_t sub_3A000()
{
  sub_761C((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_3A038()
{
  sub_5950();
  v0 = swift_task_alloc();
  v1 = sub_18584(v0);
  *v1 = v2;
  v1[1] = sub_39ECC;

  return sub_39E3C();
}

uint64_t sub_3A0C0()
{
  v1[10] = v0;
  v2 = sub_A43A4();
  v1[11] = v2;
  v3 = *(v2 - 8);
  v1[12] = v3;
  v4 = *(v3 + 64) + 15;
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_3A180, 0, 0);
}

uint64_t sub_3A180()
{
  sub_40178();
  if (qword_DA9A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  v3 = *algn_E0AE8;
  *(v0 + 112) = qword_E0AE0;
  *(v0 + 120) = v3;
  *(v0 + 200) = byte_E0AF0;
  v4 = qword_E0AF8;
  *(v0 + 128) = qword_E0AF8;
  v5 = v4;
  sub_A4384();
  sub_A49B4();
  sub_A4374();
  v6 = v2[3];
  v7 = v2[4];
  sub_7584(v2, v6);
  v8 = *(v7 + 16);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v0 + 136) = v10;
  *v10 = v0;
  v10[1] = sub_3A33C;

  return v12(v6, v7);
}

uint64_t sub_3A33C()
{
  sub_5950();
  sub_AAA8();
  sub_1A690();
  *v3 = v2;
  v5 = *(v4 + 136);
  *v3 = *v1;
  v2[18] = v6;
  v2[19] = v7;
  v2[20] = v0;

  sub_40210();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_3A440()
{
  sub_40244();
  if (qword_DA9D0 != -1)
  {
    sub_58D8();
  }

  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = sub_A43D4();
  *(v0 + 168) = sub_48A4(v3, qword_E0BA0);
  sub_A4B54(83);
  v23._countAndFlagsBits = 0xD000000000000041;
  v23._object = 0x80000000000B0630;
  sub_A46D4(v23);
  *(v0 + 56) = v1;
  type metadata accessor for AFLocationAuthorizationStyle(0);
  v24._countAndFlagsBits = sub_A4644();
  sub_A46D4(v24);

  v25._countAndFlagsBits = 0x63636120646E6120;
  v25._object = 0xEE00207963617275;
  sub_A46D4(v25);
  *(v0 + 64) = v2;
  type metadata accessor for CLAccuracyAuthorization(0);
  v26._countAndFlagsBits = sub_A4644();
  sub_A46D4(v26);

  sub_810C4(0, 0xE000000000000000, 0xD00000000000002FLL, 0x80000000000B04C0, 0x636F4C6863746566, 0xEF29286E6F697461);

  if ((v1 - 3) > 1)
  {
    v14 = *(v0 + 120);
    v13 = *(v0 + 128);
    v16 = *(v0 + 104);
    v15 = *(v0 + 112);
    v17 = *(v0 + 200);
    sub_810C4(0xD000000000000035, 0x80000000000B0680, 0xD00000000000002FLL, 0x80000000000B04C0, 0x636F4C6863746566, 0xEF29286E6F697461);
    sub_7A58C(v16, 1, 0, 0x5402u);
    v18 = sub_4021C();
    v19(v18);

    sub_40330();

    return v20(1, 0, 2);
  }

  else
  {
    v4 = *(v0 + 80);
    v5 = v4[3];
    v6 = v4[4];
    sub_7584(v4, v5);
    v7 = *(v6 + 8);
    v21 = (v7 + *v7);
    v8 = v7[1];
    v9 = swift_task_alloc();
    *(v0 + 176) = v9;
    *v9 = v0;
    v9[1] = sub_3A7BC;
    v10.n128_u64[0] = 2.0;
    v11.n128_f64[0] = kCLLocationAccuracyThreeKilometers;

    return v21(v5, v6, v11, v10);
  }
}

uint64_t sub_3A7BC()
{
  sub_5950();
  sub_AAA8();
  sub_1A690();
  *v3 = v2;
  v5 = *(v4 + 176);
  *v3 = *v1;
  *(v2 + 184) = v6;
  *(v2 + 192) = v0;

  sub_40210();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_3A8BC()
{
  sub_40244();
  v26 = *(v0 + 152) == 0;
  v1 = *(v0 + 184);
  v2 = *(v0 + 168);
  v3 = *(v0 + 120);
  v25 = *(v0 + 128);
  v5 = *(v0 + 104);
  v4 = *(v0 + 112);
  if (*(v0 + 152))
  {
    v6 = 20480;
  }

  else
  {
    v6 = 20481;
  }

  v7 = *(v0 + 200);
  sub_40130();
  sub_810C4(v10, v8 | 0x8000000000000000, 0xD00000000000002FLL, v9 | 0x8000000000000000, v11, v12);
  [v1 coordinate];
  v14 = v13;
  v16 = v15;
  v17 = v1;
  v18 = sub_3B80C(v17);
  sub_7A58C(v5, v14, v16, v6 | (v18 << 8));
  [v17 coordinate];
  v20 = v19;
  v22 = v21;

  (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));

  sub_40330();

  return v23(v20, v22, v26);
}

uint64_t sub_3AA50()
{
  if (qword_DA9D0 != -1)
  {
    sub_58D8();
  }

  v1 = *(v0 + 160);
  v2 = *(v0 + 120);
  v22 = *(v0 + 128);
  v4 = *(v0 + 104);
  v3 = *(v0 + 112);
  v5 = *(v0 + 200);
  v6 = sub_A43D4();
  sub_48A4(v6, qword_E0BA0);
  sub_A4B54(68);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  v24._countAndFlagsBits = 0xD000000000000042;
  v24._object = 0x80000000000B05C0;
  sub_A46D4(v24);
  *(v0 + 48) = v1;
  sub_4BF0(&qword_DBB90, &qword_A7540);
  sub_A4C44();
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  sub_40130();
  sub_81094(v10, v8, 0xD00000000000002FLL, v9 | 0x8000000000000000, v11, v12);

  v13 = sub_402A4();
  sub_7A58C(v13, v14, v15, v16);

  v17 = sub_4021C();
  v18(v17);

  v19 = sub_401EC();

  return v20(v19);
}

uint64_t sub_3AC00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_40250();
  sub_40244();
  v17 = *(v16 + 192);
  v18 = *(v16 + 168);
  v42 = *(v16 + 120);
  v43 = *(v16 + 128);
  v20 = *(v16 + 104);
  v19 = *(v16 + 112);
  v21 = *(v16 + 200);
  sub_A4B54(59);
  *(v16 + 32) = 0;
  *(v16 + 40) = 0xE000000000000000;
  v44._countAndFlagsBits = 0xD000000000000039;
  v44._object = 0x80000000000B06C0;
  sub_A46D4(v44);
  *(v16 + 72) = v17;
  sub_4BF0(&qword_DBB90, &qword_A7540);
  sub_A4C44();
  v22 = *(v16 + 32);
  v23 = *(v16 + 40);
  sub_40130();
  sub_81094(v24, v23, 0xD00000000000002FLL, 0x80000000000B04C0, v25, v26);

  v27 = sub_402A4();
  sub_7A58C(v27, v28, v29, v30);

  v31 = sub_4021C();
  v32(v31);

  sub_401EC();
  sub_25660();

  return v37(v33, v34, v35, v36, v37, v38, v39, v40, a9, v42, v43, 0, 0xE000000000000000, a14, a15, a16);
}

uint64_t sub_3AD5C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_3AE48;

  return v6();
}

uint64_t sub_3AE48()
{
  sub_AB40();
  v4 = v3;
  sub_402C4();
  sub_AAA8();
  v6 = *(v5 + 24);
  v7 = *(v5 + 16);
  v8 = *v2;
  sub_5930();
  *v9 = v8;

  *v7 = v1;
  *(v7 + 8) = v0;
  *(v7 + 16) = v4;
  sub_AA9C();

  return v10();
}

uint64_t sub_3AF54()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_3AF8C()
{
  sub_AB40();
  v2 = v1;
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = swift_task_alloc();
  v6 = sub_18584(v5);
  *v6 = v7;
  v6[1] = sub_A648;

  return sub_3AD5C(v2, v4);
}

uint64_t sub_3B038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *(v5 + 64) = a3;
  *(v5 + 72) = a4;
  *(v5 + 56) = a5;
  *(v5 + 40) = a1;
  *(v5 + 48) = a2;
  return _swift_task_switch(sub_3B060, 0, 0);
}

uint64_t sub_3B060()
{
  sub_AB40();
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  v5 = *(v0 + 40);
  *(v4 + 16) = v3;
  *(v4 + 24) = v5;
  *(v4 + 40) = v2;
  *(v4 + 48) = v1;
  v6 = async function pointer to withThrowingTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  *v7 = v0;
  v7[1] = sub_3B148;
  sub_40314();

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_3B148()
{
  sub_5950();
  sub_AAA8();
  v3 = v2;
  sub_40168();
  *v4 = v3;
  v6 = *(v5 + 88);
  v7 = *v1;
  sub_5930();
  *v8 = v7;
  *(v3 + 96) = v0;

  if (v0)
  {
    sub_40210();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 80);

    v13 = *(v3 + 16);
    v14 = *(v3 + 24);
    sub_40330();
    v16 = *(v3 + 32);

    return v15();
  }
}

uint64_t sub_3B26C()
{
  sub_5950();
  v1 = *(v0 + 80);

  sub_AA9C();
  v3 = *(v0 + 96);

  return v2();
}

uint64_t sub_3B2C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *(v5 + 56) = a3;
  *(v5 + 64) = a4;
  *(v5 + 48) = a5;
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
  return sub_58F8();
}

uint64_t sub_3B2E4()
{
  sub_25654();
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = sub_4BF0(&qword_DD4C0, &qword_A9250);
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  v6 = *(v0 + 32);
  *(v5 + 16) = v3;
  *(v5 + 24) = v6;
  *(v5 + 40) = v2;
  *(v5 + 48) = v1;
  v7 = async function pointer to withThrowingTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v8 = swift_task_alloc();
  *(v0 + 80) = v8;
  *v8 = v0;
  v8[1] = sub_3B3FC;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 16, v4, v4, 0, 0, &unk_A9260, v5, v4);
}

uint64_t sub_3B3FC()
{
  sub_5950();
  sub_AAA8();
  v3 = v2;
  sub_40168();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  sub_5930();
  *v8 = v7;
  *(v3 + 88) = v0;

  if (v0)
  {
    sub_40210();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 72);

    v13 = *(v3 + 16);
    v14 = *(v3 + 24);
    v15 = *(v7 + 8);

    return v15(v13, v14);
  }
}

uint64_t sub_3B524()
{
  sub_5950();
  v1 = *(v0 + 72);

  sub_AA9C();
  v3 = *(v0 + 88);

  return v2();
}

uint64_t sub_3B580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *(v5 + 40) = a3;
  *(v5 + 48) = a4;
  *(v5 + 32) = a5;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return sub_58F8();
}

uint64_t sub_3B59C()
{
  sub_AB40();
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  v5 = *(v0 + 16);
  *(v4 + 16) = v3;
  *(v4 + 24) = v5;
  *(v4 + 40) = v2;
  *(v4 + 48) = v1;
  v6 = async function pointer to withThrowingTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v7 = swift_task_alloc();
  *(v0 + 64) = v7;
  *v7 = v0;
  v7[1] = sub_3B684;
  sub_40314();

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_3B684()
{
  sub_5950();
  sub_AAA8();
  v3 = v2;
  sub_40168();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  sub_5930();
  *v8 = v7;
  *(v3 + 72) = v0;

  if (v0)
  {
    sub_40210();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 56);

    v13 = *(v3 + 80);
    v14 = *(v7 + 8);

    return v14(v13);
  }
}

uint64_t sub_3B7A8()
{
  sub_5950();
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2(0);
}

uint64_t sub_3B80C(void *a1)
{
  [a1 coordinate];
  if (v2 == 0.0 || (sub_40480(), v3 == 0.0))
  {
    sub_40480();
    if (v4 == 0.0 && (sub_40480(), v5 == 0.0))
    {

      return 1;
    }

    else
    {
      sub_40480();
      v8 = v7;

      if (v8 == 0.0)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }

  else
  {

    return 0;
  }
}

uint64_t sub_3B8A0()
{
  sub_5950();
  sub_40444(v1, v2, v3, v4, v5, v6, v7);
  v8 = sub_4BF0(&qword_DD490, &qword_A91D0);
  sub_10A88(v8);
  v10 = *(v9 + 64);
  v0[9] = sub_10AAC();
  v11 = sub_4BF0(&qword_DB5B8, &qword_AAD60);
  sub_10A88(v11);
  v13 = *(v12 + 64);
  v0[10] = sub_10AAC();
  v14 = sub_A2EA4();
  v0[11] = v14;
  sub_5940(v14);
  v0[12] = v15;
  v0[13] = *(v16 + 64);
  v0[14] = swift_task_alloc();
  v0[15] = swift_task_alloc();
  sub_40210();

  return _swift_task_switch(v17, v18, v19);
}

uint64_t sub_3BB44()
{
  sub_5950();
  sub_AAA8();
  sub_1A690();
  *v3 = v2;
  v5 = *(v4 + 128);
  v6 = *v1;
  sub_5930();
  *v7 = v6;
  *(v8 + 136) = v0;

  sub_40210();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_3BC3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_40414();
  sub_40178();
  v15 = *(v11 + 72);
  v16 = sub_4BF0(&qword_DD4A0, &qword_A9200);
  v17 = sub_1092C();
  result = sub_CF2C(v17, v18, v16);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_40458();
    sub_3FAE8(v15, v20, &qword_DD4A0, &qword_A9200);
    v21 = *v13;
    sub_4BF0(&qword_DBB90, &qword_A7540);
    sub_A4894();
    (*(v14 + 8))(v10, v12);

    sub_AA9C();
    sub_403FC();

    return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
  }

  return result;
}

uint64_t sub_3BD50()
{
  sub_AB40();
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[11];
  v5 = v0[9];
  v4 = v0[10];
  v6 = sub_402D0(v0[12]);
  v7(v6);

  sub_AA9C();
  v9 = v0[17];

  return v8();
}

uint64_t sub_3BDE8()
{
  sub_5950();
  sub_40444(v1, v2, v3, v4, v5, v6, v7);
  v8 = sub_4BF0(&qword_DD4A8, &qword_A9210);
  sub_10A88(v8);
  v10 = *(v9 + 64);
  v0[9] = sub_10AAC();
  v11 = sub_4BF0(&qword_DB5B8, &qword_AAD60);
  sub_10A88(v11);
  v13 = *(v12 + 64);
  v0[10] = sub_10AAC();
  v14 = sub_A2EA4();
  v0[11] = v14;
  sub_5940(v14);
  v0[12] = v15;
  v0[13] = *(v16 + 64);
  v0[14] = swift_task_alloc();
  v0[15] = swift_task_alloc();
  sub_40210();

  return _swift_task_switch(v17, v18, v19);
}

uint64_t sub_3C08C()
{
  sub_5950();
  sub_AAA8();
  sub_1A690();
  *v3 = v2;
  v5 = *(v4 + 128);
  v6 = *v1;
  sub_5930();
  *v7 = v6;
  *(v8 + 136) = v0;

  sub_40210();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_3C184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_40414();
  sub_40178();
  v15 = *(v11 + 72);
  v16 = sub_4BF0(&qword_DD4B8, &qword_A9240);
  v17 = sub_1092C();
  result = sub_CF2C(v17, v18, v16);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_40458();
    sub_3FAE8(v15, v20, &qword_DD4B8, &qword_A9240);
    v21 = *v13;
    sub_4BF0(&qword_DBB90, &qword_A7540);
    sub_A4894();
    (*(v14 + 8))(v10, v12);

    sub_AA9C();
    sub_403FC();

    return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
  }

  return result;
}

uint64_t sub_3C298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  *(v6 + 72) = a4;
  *(v6 + 80) = a5;
  *(v6 + 56) = a2;
  *(v6 + 64) = a3;
  *(v6 + 48) = a6;
  *(v6 + 40) = a1;
  v7 = *(*(sub_4BF0(&qword_DB5B8, &qword_AAD60) - 8) + 64) + 15;
  *(v6 + 88) = swift_task_alloc();
  v8 = sub_A2EA4();
  *(v6 + 96) = v8;
  v9 = *(v8 - 8);
  *(v6 + 104) = v9;
  *(v6 + 112) = *(v9 + 64);
  *(v6 + 120) = swift_task_alloc();
  *(v6 + 128) = swift_task_alloc();

  return _swift_task_switch(sub_3C3B0, 0, 0);
}

uint64_t sub_3C54C()
{
  sub_5950();
  sub_AAA8();
  sub_1A690();
  *v3 = v2;
  v5 = *(v4 + 136);
  v6 = *v1;
  sub_5930();
  *v7 = v6;
  *(v8 + 144) = v0;

  sub_40210();

  return _swift_task_switch(v9, v10, v11);
}

void sub_3C644()
{
  v2 = *(v0 + 32);
  if (v2 == 255)
  {
    __break(1u);
  }

  else
  {
    v4 = *(v0 + 120);
    v3 = *(v0 + 128);
    v5 = *(v0 + 96);
    v6 = *(v0 + 104);
    v7 = *(v0 + 88);
    v9 = *(v0 + 16);
    v8 = *(v0 + 24);
    v10 = **(v0 + 40);
    sub_4BF0(&qword_DBB90, &qword_A7540);
    sub_A4894();
    (*(v6 + 8))(v3, v5);

    sub_40330();

    v11(v9, v8, v2);
  }
}

uint64_t sub_3C750()
{
  sub_AB40();
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[12];
  v4 = v0[11];
  v5 = sub_402D0(v0[13]);
  v6(v5);

  sub_AA9C();
  v8 = v0[18];

  return v7();
}

uint64_t sub_3C7E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  *(v6 + 64) = a4;
  *(v6 + 72) = a5;
  *(v6 + 48) = a2;
  *(v6 + 56) = a3;
  *(v6 + 40) = a6;
  *(v6 + 32) = a1;
  v7 = *(*(sub_4BF0(&qword_DB5B8, &qword_AAD60) - 8) + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  v8 = sub_A2EA4();
  *(v6 + 88) = v8;
  v9 = *(v8 - 8);
  *(v6 + 96) = v9;
  *(v6 + 104) = *(v9 + 64);
  *(v6 + 112) = swift_task_alloc();
  *(v6 + 120) = swift_task_alloc();

  return _swift_task_switch(sub_3C8F8, 0, 0);
}

uint64_t sub_3CA98()
{
  sub_5950();
  sub_AAA8();
  sub_1A690();
  *v3 = v2;
  v5 = *(v4 + 128);
  v6 = *v1;
  sub_5930();
  *v7 = v6;
  *(v8 + 136) = v0;

  sub_40210();

  return _swift_task_switch(v9, v10, v11);
}

void sub_3CB90()
{
  v1 = *(v0 + 24);
  if (v1 == 255)
  {
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 112);
    v3 = *(v0 + 120);
    v4 = *(v0 + 88);
    v5 = *(v0 + 96);
    v6 = *(v0 + 80);
    v7 = *(v0 + 16);
    v8 = **(v0 + 32);
    sub_4BF0(&qword_DD4C0, &qword_A9250);
    sub_4BF0(&qword_DBB90, &qword_A7540);
    sub_A4894();
    (*(v5 + 8))(v3, v4);

    v9 = *(v0 + 8);

    v9(v7, v1 & 1);
  }
}

uint64_t sub_3CCB0()
{
  sub_AB40();
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[11];
  v4 = v0[10];
  v5 = sub_402D0(v0[12]);
  v6(v5);

  sub_AA9C();
  v8 = v0[17];

  return v7();
}

uint64_t sub_3CD40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  *(v6 + 48) = a4;
  *(v6 + 56) = a5;
  *(v6 + 32) = a2;
  *(v6 + 40) = a3;
  *(v6 + 24) = a6;
  *(v6 + 16) = a1;
  v7 = *(*(sub_4BF0(&qword_DB5B8, &qword_AAD60) - 8) + 64) + 15;
  *(v6 + 64) = swift_task_alloc();
  v8 = sub_A2EA4();
  *(v6 + 72) = v8;
  v9 = *(v8 - 8);
  *(v6 + 80) = v9;
  *(v6 + 88) = *(v9 + 64);
  *(v6 + 96) = swift_task_alloc();
  *(v6 + 104) = swift_task_alloc();

  return _swift_task_switch(sub_3CE58, 0, 0);
}

uint64_t sub_3CFF4()
{
  sub_5950();
  sub_AAA8();
  sub_1A690();
  *v3 = v2;
  v5 = *(v4 + 112);
  v6 = *v1;
  sub_5930();
  *v7 = v6;
  *(v8 + 120) = v0;

  sub_40210();

  return _swift_task_switch(v9, v10, v11);
}

void sub_3D0EC()
{
  sub_40178();
  v1 = *(v0 + 128);
  if (v1 == 2)
  {
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 96);
    v3 = *(v0 + 104);
    v4 = *(v0 + 72);
    v5 = *(v0 + 80);
    v6 = *(v0 + 64);
    v7 = **(v0 + 16);
    sub_4BF0(&qword_DBB90, &qword_A7540);
    sub_A4894();
    (*(v5 + 8))(v3, v4);

    v8 = *(v0 + 8);

    v8(v1 & 1);
  }
}

uint64_t sub_3D1E8()
{
  sub_AB40();
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[9];
  v4 = v0[8];
  v5 = sub_402D0(v0[10]);
  v6(v5);

  v7 = v0[1];
  v8 = v0[15];

  return v7(0);
}

uint64_t sub_3D280(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v9 = (a4 + *a4);
  v6 = a4[1];
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_3D378;

  return v9(a1);
}

uint64_t sub_3D378()
{
  sub_5950();
  sub_AAA8();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_5930();
  *v4 = v3;

  sub_AA9C();

  return v5();
}

uint64_t sub_3D45C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v9 = (a4 + *a4);
  v6 = a4[1];
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_3FF68;

  return v9(a1);
}

uint64_t sub_3D554(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 40) = v5;
  *v5 = v3;
  v5[1] = sub_3D644;

  return v7(v3 + 16);
}

uint64_t sub_3D644()
{
  sub_5950();
  sub_AAA8();
  v2 = *(v1 + 40);
  v3 = *v0;
  sub_5930();
  *v4 = v3;

  sub_40210();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_3D72C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_40330();
  v3 = *(v0 + 32);
  return v4();
}

uint64_t sub_3D758(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 32) = v5;
  *v5 = v3;
  v5[1] = sub_3D848;

  return v7(v3 + 16);
}

uint64_t sub_3D848()
{
  sub_5950();
  sub_AAA8();
  v2 = *(v1 + 32);
  v3 = *v0;
  sub_5930();
  *v4 = v3;

  sub_40210();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_3D950(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_3DA40;

  return v7(v3 + 24);
}

uint64_t sub_3DA40()
{
  sub_5950();
  sub_AAA8();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_5930();
  *v4 = v3;

  sub_40210();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_3DB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v11 = sub_4BF0(&qword_DB5B8, &qword_AAD60);
  v12 = sub_10A88(v11);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v28 - v15;
  sub_18380(a1, v28 - v15);
  v17 = sub_A4814();
  v18 = sub_1092C();
  if (sub_CF2C(v18, v19, v17) == 1)
  {
    sub_183F0(v16);
  }

  else
  {
    sub_A4804();
    (*(*(v17 - 8) + 8))(v16, v17);
  }

  if (*(a3 + 16))
  {
    v20 = *(a3 + 24);
    v21 = *(a3 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v22 = sub_A47C4();
    v24 = v23;
    swift_unknownObjectRelease();
  }

  else
  {
    v22 = 0;
    v24 = 0;
  }

  v25 = *v8;
  sub_4BF0(a4, a5);
  v26 = (v24 | v22);
  if (v24 | v22)
  {
    v29[0] = 0;
    v29[1] = 0;
    v26 = v29;
    v29[2] = v22;
    v29[3] = v24;
  }

  v28[1] = 1;
  v28[2] = v26;
  v28[3] = v25;
  swift_task_create();
}

uint64_t sub_3DCFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_4BF0(&qword_DB5B8, &qword_AAD60);
  v8 = sub_10A88(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v24 - v11;
  sub_18380(a1, v24 - v11);
  v13 = sub_A4814();
  v14 = sub_1092C();
  if (sub_CF2C(v14, v15, v13) == 1)
  {
    sub_183F0(v12);
  }

  else
  {
    sub_A4804();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  if (*(a3 + 16))
  {
    v16 = *(a3 + 24);
    v17 = *(a3 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v18 = sub_A47C4();
    v20 = v19;
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  v21 = *v4;
  v22 = (v20 | v18);
  if (v20 | v18)
  {
    v25[0] = 0;
    v25[1] = 0;
    v22 = v25;
    v25[2] = v18;
    v25[3] = v20;
  }

  v24[1] = 1;
  v24[2] = v22;
  v24[3] = v21;
  swift_task_create();
}

uint64_t sub_3DEA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_3DEC8, 0, 0);
}

uint64_t sub_3DEC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_4046C();
  sub_40178();
  v11 = *(v10 + 16);
  sub_A2E34();
  if (v12 <= 0.0)
  {
    sub_A4854();
    if (qword_DA9D0 == -1)
    {
LABEL_10:
      v29 = sub_4033C();
      sub_48A4(v29, qword_E0BA0);
      sub_400B8();

      sub_3FFF4();
      sub_3FFCC("] Asynchronous Task has TimedOut!");
      sub_3FF78(a10, "ask has TimedOut!");

      sub_3EE98();
      sub_394DC();
      sub_40374();
      sub_AA9C();
      sub_403E8();

      return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10);
    }

LABEL_16:
    sub_58D8();
    goto LABEL_10;
  }

  sub_4011C(v12, 1000000000.0);
  if (!v14 & v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  sub_403B4();
  if (v15 ^ v16 | v14)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_401A4();
  if (!v15)
  {
    goto LABEL_15;
  }

  v17 = async function pointer to static Task<>.sleep(nanoseconds:)[1];
  v18 = swift_task_alloc();
  v19 = sub_403C0(v18);
  *v19 = v20;
  sub_401CC(v19);
  sub_403E8();

  return static Task<>.sleep(nanoseconds:)(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t sub_3E05C()
{
  sub_5950();
  sub_AAA8();
  sub_1A690();
  *v3 = v2;
  v5 = *(v4 + 40);
  v6 = *v1;
  sub_5930();
  *v7 = v6;
  *(v8 + 48) = v0;

  if (v0)
  {
    sub_AA9C();

    return v9();
  }

  else
  {
    sub_40210();

    return _swift_task_switch(v11, v12, v13);
  }
}

uint64_t sub_3E170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_4046C();
  sub_40178();
  v11 = *(v10 + 48);
  sub_A4854();
  if (!v11)
  {
    if (qword_DA9D0 != -1)
    {
      sub_58D8();
    }

    v12 = sub_4033C();
    sub_48A4(v12, qword_E0BA0);
    sub_400B8();

    sub_3FFF4();
    sub_3FFCC("] Asynchronous Task has TimedOut!");
    sub_3FF78(a10, "ask has TimedOut!");

    sub_3EE98();
    sub_394DC();
    sub_40374();
  }

  sub_AA9C();
  sub_403E8();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_3E260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_3E284, 0, 0);
}

uint64_t sub_3E284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_4046C();
  sub_40178();
  v11 = *(v10 + 16);
  sub_A2E34();
  if (v12 <= 0.0)
  {
    sub_A4854();
    if (qword_DA9D0 == -1)
    {
LABEL_10:
      v29 = sub_4033C();
      sub_48A4(v29, qword_E0BA0);
      sub_400B8();

      sub_3FFF4();
      sub_3FFCC("] Asynchronous Task has TimedOut!");
      sub_3FF78(a10, "ask has TimedOut!");

      sub_3EE98();
      sub_394DC();
      sub_40374();
      sub_AA9C();
      sub_403E8();

      return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10);
    }

LABEL_16:
    sub_58D8();
    goto LABEL_10;
  }

  sub_4011C(v12, 1000000000.0);
  if (!v14 & v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  sub_403B4();
  if (v15 ^ v16 | v14)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_401A4();
  if (!v15)
  {
    goto LABEL_15;
  }

  v17 = async function pointer to static Task<>.sleep(nanoseconds:)[1];
  v18 = swift_task_alloc();
  v19 = sub_403C0(v18);
  *v19 = v20;
  sub_401CC(v19);
  sub_403E8();

  return static Task<>.sleep(nanoseconds:)(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t sub_3E418()
{
  sub_5950();
  sub_AAA8();
  sub_1A690();
  *v3 = v2;
  v5 = *(v4 + 40);
  v6 = *v1;
  sub_5930();
  *v7 = v6;
  *(v8 + 48) = v0;

  if (v0)
  {
    sub_AA9C();

    return v9();
  }

  else
  {
    sub_40210();

    return _swift_task_switch(v11, v12, v13);
  }
}

uint64_t sub_3E52C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a3;
  return _swift_task_switch(sub_3DEC8, 0, 0);
}

uint64_t sub_3E550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a3;
  return _swift_task_switch(sub_3E574, 0, 0);
}

uint64_t sub_3E574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_4046C();
  sub_40178();
  v11 = *(v10 + 16);
  sub_A2E34();
  if (v12 <= 0.0)
  {
    sub_A4854();
    if (qword_DA9D0 == -1)
    {
LABEL_10:
      v29 = sub_4033C();
      sub_48A4(v29, qword_E0BA0);
      sub_400B8();

      sub_3FFF4();
      sub_3FFCC("] Asynchronous Task has TimedOut!");
      sub_3FF78(a10, "ask has TimedOut!");

      sub_3EE98();
      sub_394DC();
      sub_40374();
      sub_40364();
      sub_403E8();

      return v32(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10);
    }

LABEL_16:
    sub_58D8();
    goto LABEL_10;
  }

  sub_4011C(v12, 1000000000.0);
  if (!v14 & v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  sub_403B4();
  if (v15 ^ v16 | v14)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_401A4();
  if (!v15)
  {
    goto LABEL_15;
  }

  v17 = async function pointer to static Task<>.sleep(nanoseconds:)[1];
  v18 = swift_task_alloc();
  v19 = sub_403C0(v18);
  *v19 = v20;
  sub_401CC(v19);
  sub_403E8();

  return static Task<>.sleep(nanoseconds:)(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t sub_3E708()
{
  sub_5950();
  sub_AAA8();
  sub_1A690();
  *v3 = v2;
  v5 = *(v4 + 40);
  v6 = *v1;
  sub_5930();
  *v7 = v6;
  *(v8 + 48) = v0;

  if (v0)
  {
    v9 = sub_40364();

    return v10(v9);
  }

  else
  {
    sub_40210();

    return _swift_task_switch(v12, v13, v14);
  }
}

uint64_t sub_3E81C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_4046C();
  sub_40178();
  v11 = *(v10 + 48);
  sub_A4854();
  if (!v11)
  {
    if (qword_DA9D0 != -1)
    {
      sub_58D8();
    }

    v12 = sub_4033C();
    sub_48A4(v12, qword_E0BA0);
    sub_400B8();

    sub_3FFF4();
    sub_3FFCC("] Asynchronous Task has TimedOut!");
    sub_3FF78(a10, "ask has TimedOut!");

    sub_3EE98();
    sub_394DC();
    sub_40374();
  }

  sub_40364();
  sub_403E8();

  return v15(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_3E90C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  *(v7 + 16) = a1;
  v14 = swift_task_alloc();
  *(v7 + 24) = v14;
  *v14 = v7;
  v14[1] = sub_3E9DC;

  return sub_3C298(a2, a3, a4, a5, a6, a7);
}

void sub_3E9DC()
{
  sub_25654();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_AAA8();
  v9 = v8;
  sub_40168();
  *v10 = v9;
  v12 = *(v11 + 24);
  v13 = *v1;
  sub_5930();
  *v14 = v13;

  if (!v0)
  {
    v15 = *(v9 + 16);
    *v15 = v7;
    *(v15 + 8) = v5;
    *(v15 + 16) = v3;
  }

  v16 = *(v13 + 8);
  sub_40498();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_3EAE4()
{
  sub_40178();
  sub_401B4();
  v0 = swift_task_alloc();
  v1 = sub_18584(v0);
  *v1 = v2;
  v4.n128_f64[0] = sub_400DC(v1);

  return v3(v4);
}

uint64_t sub_3EB84(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_3FF44;

  return sub_3D554(a2, a3, a4);
}

void sub_3EC40()
{
  sub_25654();
  sub_401DC();
  v0 = swift_task_alloc();
  v1 = sub_18584(v0);
  *v1 = v2;
  v1[1] = sub_18540;
  sub_40070();
  sub_40498();

  __asm { BR              X5 }
}