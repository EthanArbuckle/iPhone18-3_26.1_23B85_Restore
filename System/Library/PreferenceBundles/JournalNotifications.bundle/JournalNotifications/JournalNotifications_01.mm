uint64_t sub_17FDC()
{
  v0 = sub_C55A4();
  v4 = sub_1805C(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1805C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_C5DD4();
    if (!v9 || (v10 = v9, v11 = sub_BAD60(v9, 0), v12 = sub_181B4(v14, v11 + 32, v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_C5504();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_C5504();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_C6044();
LABEL_4:

  return sub_C5504();
}

unint64_t sub_181B4(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_183D4(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_C5564();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_C6044();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_183D4(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_C5544();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_183D4(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_C5574();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = sub_C5554();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

Swift::Int sub_18450(unint64_t *a1)
{
  v2 = a1[1];
  result = sub_C6204(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        _s30MOSuggestionAssetMapsClustererC7ClusterVMa();
        v6 = sub_C56B4();
        *(v6 + 2) = v5;
      }

      v7 = *(_s30MOSuggestionAssetMapsClustererC7ClusterVMa() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_18780(v8, v9, a1, v4);
      v6[2] = 0.0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1857C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1857C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa();
  v9 = __chkstk_darwin(v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = (&v29 - v13);
  result = __chkstk_darwin(v12);
  v18 = (&v29 - v17);
  v31 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v30 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v35 = a3;
    v32 = v24;
    v33 = v23;
    v25 = v23;
    v34 = v21;
    while (1)
    {
      sub_19D98(v24, v18);
      sub_19D98(v21, v14);
      v26 = v18[2];
      v27 = v14[2];
      sub_19E50(v14);
      result = sub_19E50(v18);
      if (v27 >= v26)
      {
LABEL_4:
        a3 = v35 + 1;
        v21 = v34 + v30;
        v23 = v33 - 1;
        v24 = v32 + v30;
        if (v35 + 1 == v31)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v19)
      {
        break;
      }

      sub_19D34(v24, v11);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_19D34(v11, v21);
      v21 += v22;
      v24 += v22;
      if (__CFADD__(v25++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_18780(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v108 = a1;
  v118 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa();
  v114 = *(v118 - 8);
  v9 = __chkstk_darwin(v118);
  v110 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v117 = &v103 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = (&v103 - v14);
  result = __chkstk_darwin(v13);
  v18 = (&v103 - v17);
  v116 = a3;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = _swiftEmptyArrayStorage;
LABEL_94:
    v5 = *v108;
    if (!*v108)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_126:
      result = sub_3C0E8(v21);
      v21 = result;
    }

    v119 = v21;
    v99 = *(v21 + 2);
    if (v99 >= 2)
    {
      while (*v116)
      {
        v100 = v21[2 * v99];
        v101 = v21[2 * v99 + 3];
        sub_18FC4(*v116 + *(v114 + 72) * *&v100, *v116 + *(v114 + 72) * *&v21[2 * v99 + 2], *v116 + *(v114 + 72) * *&v101, v5);
        if (v6)
        {
        }

        if (*&v101 < *&v100)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_3C0E8(v21);
        }

        if (v99 - 2 >= *(v21 + 2))
        {
          goto LABEL_120;
        }

        v102 = &v21[2 * v99];
        *v102 = v100;
        v102[1] = v101;
        v119 = v21;
        result = sub_3C05C(v99 - 1);
        v21 = v119;
        v99 = *(v119 + 2);
        if (v99 <= 1)
        {
        }
      }

      goto LABEL_130;
    }
  }

  v106 = a4;
  v20 = 0;
  v21 = _swiftEmptyArrayStorage;
  while (1)
  {
    v22 = v20;
    v23 = v20 + 1;
    if (v23 >= v19)
    {
      v19 = v23;
    }

    else
    {
      v24 = v22;
      v25 = *v116;
      v26 = *(v114 + 72);
      v5 = *v116 + v26 * v23;
      sub_19D98(v5, v18);
      sub_19D98(v25 + v26 * v24, v15);
      v27 = v18[2];
      v28 = v15[2];
      sub_19E50(v15);
      result = sub_19E50(v18);
      v107 = v24;
      v29 = v24 + 2;
      v115 = v26;
      v30 = v25 + v26 * v29;
      while (v19 != v29)
      {
        sub_19D98(v30, v18);
        sub_19D98(v5, v15);
        v31 = v18[2];
        v32 = v15[2];
        sub_19E50(v15);
        result = sub_19E50(v18);
        ++v29;
        v30 += v115;
        v5 += v115;
        if (v28 < v27 == v32 >= v31)
        {
          v19 = v29 - 1;
          break;
        }
      }

      v22 = v107;
      if (v28 < v27)
      {
        if (v19 < v107)
        {
          goto LABEL_123;
        }

        if (v107 < v19)
        {
          v104 = v21;
          v105 = v6;
          v33 = v115 * (v19 - 1);
          v34 = v19 * v115;
          v113 = v19;
          v35 = v19;
          v36 = v107;
          v37 = v107 * v115;
          do
          {
            if (v36 != --v35)
            {
              v5 = *v116;
              if (!*v116)
              {
                goto LABEL_129;
              }

              sub_19D34(v5 + v37, v110);
              if (v37 < v33 || v5 + v37 >= v5 + v34)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v37 != v33)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_19D34(v110, v5 + v33);
            }

            ++v36;
            v33 -= v115;
            v34 -= v115;
            v37 += v115;
          }

          while (v36 < v35);
          v21 = v104;
          v6 = v105;
          v22 = v107;
          v19 = v113;
        }
      }
    }

    v38 = v116[1];
    if (v19 < v38)
    {
      if (__OFSUB__(v19, v22))
      {
        goto LABEL_122;
      }

      if (v19 - v22 < v106)
      {
        if (__OFADD__(v22, v106))
        {
          goto LABEL_124;
        }

        if (v22 + v106 >= v38)
        {
          v39 = v116[1];
        }

        else
        {
          v39 = v22 + v106;
        }

        if (v39 < v22)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v19 != v39)
        {
          break;
        }
      }
    }

    v40 = v19;
    if (v19 < v22)
    {
      goto LABEL_121;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_3C22C(0, *(v21 + 2) + 1, 1, v21);
      v21 = result;
    }

    v42 = *(v21 + 2);
    v41 = *(v21 + 3);
    v5 = v42 + 1;
    if (v42 >= v41 >> 1)
    {
      result = sub_3C22C((v41 > 1), v42 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v5;
    v43 = &v21[2 * v42];
    *(v43 + 4) = v22;
    *(v43 + 5) = v40;
    v44 = *v108;
    if (!*v108)
    {
      goto LABEL_131;
    }

    v111 = v40;
    if (v42)
    {
      while (1)
      {
        v45 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v46 = *(v21 + 4);
          v47 = *(v21 + 5);
          v56 = __OFSUB__(v47, v46);
          v48 = v47 - v46;
          v49 = v56;
LABEL_52:
          if (v49)
          {
            goto LABEL_110;
          }

          v62 = &v21[2 * v5];
          v64 = *v62;
          v63 = *(v62 + 1);
          v65 = __OFSUB__(v63, v64);
          v66 = v63 - v64;
          v67 = v65;
          if (v65)
          {
            goto LABEL_113;
          }

          v68 = &v21[2 * v45 + 4];
          v70 = *v68;
          v69 = *(v68 + 1);
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v66, v71))
          {
            goto LABEL_117;
          }

          if (v66 + v71 >= v48)
          {
            if (v48 < v71)
            {
              v45 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v72 = &v21[2 * v5];
        v74 = *v72;
        v73 = *(v72 + 1);
        v56 = __OFSUB__(v73, v74);
        v66 = v73 - v74;
        v67 = v56;
LABEL_66:
        if (v67)
        {
          goto LABEL_112;
        }

        v75 = &v21[2 * v45];
        v77 = *(v75 + 4);
        v76 = *(v75 + 5);
        v56 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v56)
        {
          goto LABEL_115;
        }

        if (v78 < v66)
        {
          goto LABEL_3;
        }

LABEL_73:
        v83 = v45 - 1;
        if (v45 - 1 >= v5)
        {
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

        if (!*v116)
        {
          goto LABEL_128;
        }

        v84 = *&v21[2 * v83 + 4];
        v5 = *&v21[2 * v45 + 5];
        sub_18FC4(*v116 + *(v114 + 72) * v84, *v116 + *(v114 + 72) * *&v21[2 * v45 + 4], *v116 + *(v114 + 72) * v5, v44);
        if (v6)
        {
        }

        if (v5 < v84)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_3C0E8(v21);
        }

        if (v83 >= *(v21 + 2))
        {
          goto LABEL_107;
        }

        v85 = &v21[2 * v83];
        *(v85 + 4) = v84;
        *(v85 + 5) = v5;
        v119 = v21;
        result = sub_3C05C(v45);
        v21 = v119;
        v5 = *(v119 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v50 = &v21[2 * v5 + 4];
      v51 = *(v50 - 64);
      v52 = *(v50 - 56);
      v56 = __OFSUB__(v52, v51);
      v53 = v52 - v51;
      if (v56)
      {
        goto LABEL_108;
      }

      v55 = *(v50 - 48);
      v54 = *(v50 - 40);
      v56 = __OFSUB__(v54, v55);
      v48 = v54 - v55;
      v49 = v56;
      if (v56)
      {
        goto LABEL_109;
      }

      v57 = &v21[2 * v5];
      v59 = *v57;
      v58 = *(v57 + 1);
      v56 = __OFSUB__(v58, v59);
      v60 = v58 - v59;
      if (v56)
      {
        goto LABEL_111;
      }

      v56 = __OFADD__(v48, v60);
      v61 = v48 + v60;
      if (v56)
      {
        goto LABEL_114;
      }

      if (v61 >= v53)
      {
        v79 = &v21[2 * v45 + 4];
        v81 = *v79;
        v80 = *(v79 + 1);
        v56 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v56)
        {
          goto LABEL_118;
        }

        if (v48 < v82)
        {
          v45 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = v116[1];
    v20 = v111;
    if (v111 >= v19)
    {
      goto LABEL_94;
    }
  }

  v104 = v21;
  v105 = v6;
  v86 = *v116;
  v87 = *(v114 + 72);
  v88 = *v116 + v87 * (v19 - 1);
  v89 = v19;
  v90 = -v87;
  v107 = v22;
  v91 = v22 - v89;
  v113 = v89;
  v109 = v87;
  v92 = v86 + v89 * v87;
  v111 = v39;
LABEL_85:
  v5 = v92;
  v112 = v91;
  v93 = v91;
  v115 = v88;
  v94 = v88;
  while (1)
  {
    sub_19D98(v5, v18);
    sub_19D98(v94, v15);
    v95 = v18[2];
    v96 = v15[2];
    sub_19E50(v15);
    result = sub_19E50(v18);
    if (v96 >= v95)
    {
LABEL_84:
      v88 = v115 + v109;
      v91 = v112 - 1;
      v92 += v109;
      v40 = v111;
      if (++v113 != v111)
      {
        goto LABEL_85;
      }

      v21 = v104;
      v6 = v105;
      v22 = v107;
      if (v111 < v107)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v86)
    {
      break;
    }

    v97 = v117;
    sub_19D34(v5, v117);
    swift_arrayInitWithTakeFrontToBack();
    sub_19D34(v97, v94);
    v94 += v90;
    v5 += v90;
    if (__CFADD__(v93++, 1))
    {
      goto LABEL_84;
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
  return result;
}

uint64_t sub_18FC4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v44 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa();
  v8 = __chkstk_darwin(v44);
  v45 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v12 = (&v39 - v11);
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_60;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v16 = (a2 - a1) / v14;
  v48 = a1;
  v47 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v24 = a4 + v18;
    if (v18 >= 1)
    {
      v25 = -v14;
      v26 = a4 + v18;
      v42 = v25;
      v43 = a4;
      do
      {
        v40 = v24;
        v27 = a2 + v25;
        while (1)
        {
          if (a2 <= a1)
          {
            v48 = a2;
            v24 = v40;
            goto LABEL_57;
          }

          v29 = a3;
          v41 = v24;
          a3 += v25;
          v30 = v26 + v25;
          sub_19D98(v30, v12);
          v31 = v27;
          v32 = v27;
          v33 = v12;
          v34 = v45;
          sub_19D98(v32, v45);
          v35 = *(v33 + 16);
          v36 = *(v34 + 16);
          v37 = v34;
          v12 = v33;
          sub_19E50(v37);
          sub_19E50(v33);
          if (v36 < v35)
          {
            break;
          }

          v24 = v30;
          if (v29 < v26 || a3 >= v26)
          {
            swift_arrayInitWithTakeFrontToBack();
            v24 = v30;
            v27 = v31;
          }

          else
          {
            v27 = v31;
            if (v29 != v26)
            {
              swift_arrayInitWithTakeBackToFront();
              v24 = v30;
            }
          }

          v26 = v24;
          v28 = v30 > v43;
          v25 = v42;
          if (!v28)
          {
            goto LABEL_55;
          }
        }

        if (v29 < a2 || a3 >= a2)
        {
          a2 = v31;
          swift_arrayInitWithTakeFrontToBack();
          v25 = v42;
        }

        else
        {
          v38 = v29 == a2;
          a2 = v31;
          v25 = v42;
          if (!v38)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v24 = v41;
      }

      while (v26 > v43);
    }

LABEL_55:
    v48 = a2;
LABEL_57:
    v46 = v24;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v19 = a4 + v17;
    v46 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      do
      {
        sub_19D98(a2, v12);
        v21 = v45;
        sub_19D98(a4, v45);
        v22 = v12[2];
        v23 = *(v21 + 16);
        sub_19E50(v21);
        sub_19E50(v12);
        if (v23 >= v22)
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v47 = a4 + v14;
          a4 += v14;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v14;
        }

        a1 += v14;
        v48 = a1;
      }

      while (a4 < v19 && a2 < a3);
    }
  }

  sub_3C0FC(&v48, &v47, &v46);
  return 1;
}

double *sub_19428(double *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return _swiftEmptyArrayStorage;
    }

    v3 = result;
    sub_3CB0(&qword_104CA8);
    v4 = sub_C56B4();
    v5 = v4;
    *(v4 + 16) = a2;
    *(v4 + 32) = v3;
    v6 = a2 - 1;
    if (v6)
    {
      v7 = (v4 + 40);
      do
      {
        *v7++ = v3;

        --v6;
      }

      while (v6);
    }

    return v5;
  }

  return result;
}

uint64_t sub_194C4(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);
  if (v2)
  {
    v3 = sub_C56B4();
    *(v3 + 2) = v2;
    memset_pattern16(v3 + 4, &unk_CE540, 8 * v2);
    v4 = *(v1 + 16);
  }

  else
  {
    v4 = 0;
    v3 = _swiftEmptyArrayStorage;
  }

  v5 = sub_19428(v3, v4);

  v7 = *(v1 + 16);
  if (v7)
  {
    v8 = v7 - 1;
    if (v7 == 1)
    {
      return v5;
    }

    v9 = 0;
    v30 = v1;
    v31 = v1 + 8;
    v10 = 5;
    v11 = 1;
    v12 = v7 - 1;
    v28 = v7 - 1;
    v29 = *(v1 + 16);
    while (v9 != v8)
    {
      v13 = *(v1 + 16);
      if (v7 > v13 || v9 + 1 >= v13)
      {
        goto LABEL_32;
      }

      v32 = v9 + 1;
      v15 = *(_s30MOSuggestionAssetMapsClustererC7ClusterVMa() - 8);
      v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v17 = *(v15 + 72);
      v18 = (v1 + v16 + v17 * v9);
      v33 = v11;
      v34 = v10;
      v19 = (v31 + v16 + v17 * v11);
      v20 = v12;
      do
      {
        v21 = *v18;
        v22 = v18[1];
        v24 = *(v19 - 1);
        v23 = *v19;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_577E8(v5);
          v5 = result;
        }

        if (v9 >= *(v5 + 2))
        {
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

        v25 = *&v5[v9 + 4];
        result = swift_isUniquelyReferenced_nonNull_native();
        *&v5[v9 + 4] = v25;
        if ((result & 1) == 0)
        {
          result = sub_577D4(v25);
          v25 = result;
          *&v5[v9 + 4] = result;
        }

        if ((v10 - 4) >= *(v25 + 16))
        {
          goto LABEL_28;
        }

        v26 = (v21 - v24) * (v21 - v24) + (v22 - v23) * (v22 - v23);
        *(v25 + 8 * v10) = v26;
        if ((v10 - 4) >= *(v5 + 2))
        {
          goto LABEL_29;
        }

        v27 = *&v5[v10];
        result = swift_isUniquelyReferenced_nonNull_native();
        *&v5[v10] = v27;
        if ((result & 1) == 0)
        {
          result = sub_577D4(v27);
          v27 = result;
          *&v5[v10] = result;
        }

        if (v9 >= *(v27 + 16))
        {
          goto LABEL_30;
        }

        *(v27 + 8 * v9 + 32) = v26;
        ++v10;
        v19 = (v19 + v17);
        --v20;
      }

      while (v20);
      --v12;
      v10 = v34 + 1;
      v11 = v33 + 1;
      ++v9;
      v8 = v28;
      v7 = v29;
      v1 = v30;
      if (v32 == v28)
      {
        return v5;
      }
    }

LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }

  __break(1u);
  return result;
}

double sub_19760(uint64_t a1, char a2, char a3, char a4, char a5)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v53 = *(a1 + 96);
    v10 = *(a1 + 48);
    v49 = *(a1 + 32);
    v50 = v10;
    v11 = *(a1 + 80);
    v51 = *(a1 + 64);
    v52 = v11;
    if (v5 == 1)
    {
      longitude = *(&v49 + 1);
      latitude = *&v49;
      if ((v51 & 1) == 0 && *(&v50 + 1) >= 2)
      {
        if (a5)
        {
          sub_19C84(&v49, v48);
          v14 = 0.01;
LABEL_23:
          v56.span.latitudeDelta = v14;
LABEL_29:
          v37 = 1.4;
LABEL_33:
          v38 = v56.span.latitudeDelta * v37;
          v39 = v14 * v37;
          if (a2)
          {
            v38 = v38 * 1.4;
            v39 = v39 * 0.9;
            latitude = latitude + v38 / -12.0;
          }

          if (a4)
          {
            v38 = v38 * 1.3;
          }

          if (a3)
          {
            v39 = v39 * 1.3;
          }

          v40 = fmin(v39, 180.0);
          v41 = fmin(v38, 180.0);
          if (!sub_1D160(latitude, longitude, v41, v40))
          {
            if (qword_104160 != -1)
            {
              swift_once();
            }

            v42 = sub_C4CD4();
            sub_B680(v42, qword_104B60);
            v43 = sub_C4CB4();
            v44 = sub_C5A44();
            if (os_log_type_enabled(v43, v44))
            {
              v45 = swift_slowAlloc();
              *v45 = 134218752;
              *(v45 + 4) = latitude;
              *(v45 + 12) = 2048;
              *(v45 + 14) = longitude;
              *(v45 + 22) = 2048;
              *(v45 + 24) = v41;
              *(v45 + 32) = 2048;
              *(v45 + 34) = v40;
              _os_log_impl(&dword_0, v43, v44, "[MapSnapshot] makeRegion failed with invalid region: centerLatitude = %f, centerLongitude = %f, targetLatitudeDelta = %f, targetLongitudeDelta = %f", v45, 0x2Au);
            }

            v57.origin.x = MKMapRectWorld.origin.x;
            v57.origin.y = MKMapRectWorld.origin.y;
            v57.size.width = MKMapRectWorld.size.width;
            v57.size.height = MKMapRectWorld.size.height;
            *&latitude = MKCoordinateRegionForMapRect(v57);
          }

          sub_19CE0(&v49);
          return latitude;
        }

        sub_19C84(&v49, v48);
        v14 = 0.01;
LABEL_31:
        v56.span.latitudeDelta = v14;
        goto LABEL_32;
      }

      if (v53 <= 0.0)
      {
        if (a5)
        {
          sub_19C84(&v49, v48);
          v14 = 0.04;
          goto LABEL_23;
        }

        sub_19C84(&v49, v48);
        v14 = 0.04;
        goto LABEL_31;
      }

      v34 = v53 / 111000.0;
      if (v53 >= 150.0)
      {
        v36 = v34 * 3.0 + 0.003;
        if (v36 <= 0.1)
        {
          v35 = v36;
        }

        else
        {
          v35 = 0.1;
        }
      }

      else
      {
        v35 = v34 + v34 + 0.003;
      }

      sub_19C84(&v49, v48);
      v14 = v35;
      v56.span.latitudeDelta = v35;
      if (a5)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v19 = (a1 + 32);
      sub_19C84(&v49, v48);
      v48[0] = _swiftEmptyArrayStorage;
      sub_52558(0, v5, 0);
      v20 = v48[0];
      v21 = *(v48[0] + 16);
      v22 = v5;
      do
      {
        v23 = *v19;
        v48[0] = v20;
        v24 = *(v20 + 24);
        if (v21 >= v24 >> 1)
        {
          v47 = v23;
          sub_52558((v24 > 1), v21 + 1, 1);
          v23 = v47;
          v20 = v48[0];
        }

        *(v20 + 16) = v21 + 1;
        *(v20 + 16 * v21 + 32) = v23;
        v19 = (v19 + 72);
        ++v21;
        --v22;
      }

      while (v22);
      v25 = [objc_opt_self() polygonWithCoordinates:v20 + 32 count:v5];

      [v25 boundingMapRect];
      v27 = v26;
      v29 = v28;
      v31 = v30;
      v33 = v32;

      v55.origin.x = v27;
      v55.origin.y = v29;
      v55.size.width = v31;
      v55.size.height = v33;
      *(&v14 - 3) = MKCoordinateRegionForMapRect(v55);
      latitude = v56.center.latitude;
      longitude = v56.center.longitude;
      if (a5)
      {
        goto LABEL_29;
      }
    }

LABEL_32:
    v37 = 1.1;
    goto LABEL_33;
  }

  if (qword_104160 != -1)
  {
    swift_once();
  }

  v15 = sub_C4CD4();
  sub_B680(v15, qword_104B60);
  v16 = sub_C4CB4();
  v17 = sub_C5A44();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_0, v16, v17, "[MapSnapshot] makeRegion failed with 0 locations", v18, 2u);
  }

  v54.origin.x = MKMapRectNull.origin.x;
  v54.origin.y = MKMapRectNull.origin.y;
  v54.size.width = MKMapRectNull.size.width;
  v54.size.height = MKMapRectNull.size.height;
  *&latitude = MKCoordinateRegionForMapRect(v54);
  return latitude;
}

uint64_t sub_19D34(uint64_t a1, uint64_t a2)
{
  v4 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_19D98(uint64_t a1, uint64_t a2)
{
  v4 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_19DFC()
{
  result = qword_104CA0;
  if (!qword_104CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_104CA0);
  }

  return result;
}

uint64_t sub_19E50(uint64_t a1)
{
  v2 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19EAC(uint64_t a1, uint64_t a2)
{
  v4 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_1A058()
{
  v2.receiver = v0;
  v2.super_class = _s15MOMapAnnotationCMa();
  return objc_msgSendSuper2(&v2, "dealloc");
}

__n128 sub_1A0C4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A0E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A130(uint64_t result, int a2, int a3)
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
      *(result + 48) = (a2 - 1);
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

uint64_t sub_1A190()
{
  v0 = sub_C4CD4();
  sub_C0CC(v0, qword_104DB0);
  v1 = sub_B680(v0, qword_104DB0);
  if (qword_104308 != -1)
  {
    swift_once();
  }

  v2 = sub_B680(v0, qword_1156F8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1A258(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6)
{
  *(v6 + 628) = a5;
  *(v6 + 627) = a4;
  *(v6 + 504) = a3;
  *(v6 + 512) = a6;
  *(v6 + 488) = a1;
  *(v6 + 496) = a2;
  v7 = sub_3CB0(&qword_104E80);
  *(v6 + 520) = v7;
  *(v6 + 528) = *(v7 - 8);
  *(v6 + 536) = swift_task_alloc();
  sub_3CB0(&qword_104E88);
  *(v6 + 544) = swift_task_alloc();
  *(v6 + 552) = swift_task_alloc();
  *(v6 + 560) = sub_C5774();
  *(v6 + 568) = sub_C5764();
  v9 = sub_C5724();
  *(v6 + 576) = v9;
  *(v6 + 584) = v8;

  return _swift_task_switch(sub_1A3B0, v9, v8);
}

uint64_t sub_1A3B0()
{
  v1 = *(v0 + 504);
  v2 = *(v1 + 16);
  if (v2)
  {
    v36 = *(v0 + 628);
    v35 = **(v0 + 496);
    v3 = v1 + 32;
    v4 = sub_C5794();
    v5 = *(v4 - 8);
    v34 = *(v5 + 56);
    v33 = (v5 + 48);
    v32 = (v5 + 8);
    do
    {
      v7 = *(v0 + 552);
      v8 = *(v0 + 544);
      v9 = *(v0 + 512);
      v10 = *(v0 + 627);
      *(v0 + 16) = *v3;
      v12 = *(v3 + 32);
      v11 = *(v3 + 48);
      v13 = *(v3 + 16);
      *(v0 + 80) = *(v3 + 64);
      *(v0 + 48) = v12;
      *(v0 + 64) = v11;
      *(v0 + 32) = v13;
      v34(v7, 1, 1, v4);
      v14 = swift_allocObject();
      *(v14 + 16) = 0;
      v15 = (v14 + 16);
      *(v14 + 24) = 0;
      v16 = *(v0 + 64);
      *(v14 + 64) = *(v0 + 48);
      *(v14 + 80) = v16;
      *(v14 + 96) = *(v0 + 80);
      v17 = *(v0 + 32);
      *(v14 + 32) = *(v0 + 16);
      *(v14 + 48) = v17;
      *(v14 + 104) = v10;
      *(v14 + 105) = v36;
      *(v14 + 112) = v9;
      sub_1CF70(v7, v8);
      v18 = (*v33)(v8, 1, v4);
      v19 = *(v0 + 544);
      v20 = *(v0 + 512);
      if (v18 == 1)
      {
        sub_19C84(v0 + 16, v0 + 88);
        sub_19C84(v0 + 16, v0 + 160);
        v21 = v20;
        sub_1CFE0(v19);
        if (*v15)
        {
          goto LABEL_8;
        }
      }

      else
      {
        sub_19C84(v0 + 16, v0 + 232);
        sub_19C84(v0 + 16, v0 + 304);
        v24 = v20;
        sub_C5784();
        (*v32)(v19, v4);
        if (*v15)
        {
LABEL_8:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v22 = sub_C5724();
          v23 = v25;
          swift_unknownObjectRelease();
          goto LABEL_9;
        }
      }

      v22 = 0;
      v23 = 0;
LABEL_9:
      v26 = swift_allocObject();
      *(v26 + 16) = &unk_CE638;
      *(v26 + 24) = v14;

      sub_3CB0(&qword_104E68);
      v27 = v23 | v22;
      if (v23 | v22)
      {
        v27 = v0 + 432;
        *(v0 + 432) = 0;
        *(v0 + 440) = 0;
        *(v0 + 448) = v22;
        *(v0 + 456) = v23;
      }

      v6 = *(v0 + 552);
      *(v0 + 464) = 1;
      *(v0 + 472) = v27;
      *(v0 + 480) = v35;
      swift_task_create();

      sub_19CE0(v0 + 16);
      sub_1CFE0(v6);
      v3 += 72;
      --v2;
    }

    while (v2);
  }

  sub_3CB0(&qword_104E68);
  sub_C5744();
  *(v0 + 592) = &_swiftEmptyArrayStorage;
  v28 = sub_C5764();
  *(v0 + 600) = v28;
  v29 = swift_task_alloc();
  *(v0 + 608) = v29;
  *v29 = v0;
  v29[1] = sub_1A794;
  v30 = *(v0 + 520);

  return TaskGroup.Iterator.next(isolation:)(v0 + 376, v28, &protocol witness table for MainActor, v30);
}

uint64_t sub_1A794()
{
  v1 = *v0;

  v2 = *(v1 + 584);
  v3 = *(v1 + 576);

  return _swift_task_switch(sub_1A8D8, v3, v2);
}

uint64_t sub_1A8D8()
{
  v1 = *(v0 + 376);
  if (v1)
  {
    v3 = *(v0 + 384);
    v2 = *(v0 + 392);
    v4 = *(v0 + 400);
    v5 = *(v0 + 408);
    v20 = *(v0 + 416);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v0 + 592);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_48628(0, v7[2] + 1, 1, v7);
    }

    v9 = v7[2];
    v8 = v7[3];
    if (v9 >= v8 >> 1)
    {
      v7 = sub_48628((v8 > 1), v9 + 1, 1, v7);
    }

    v7[2] = v9 + 1;
    v10 = &v7[7 * v9];
    v10[4] = v1;
    *(v10 + 40) = v3;
    *(v10 + 41) = BYTE1(v3) & 1;
    v11 = *(v0 + 616);
    *(v10 + 23) = *(v0 + 620);
    *(v10 + 42) = v11;
    v10[6] = v2;
    *(v10 + 56) = v4 & 1;
    *(v10 + 57) = BYTE1(v4) & 1;
    *(v10 + 58) = BYTE2(v4) & 1;
    v12 = *(v0 + 622);
    *(v10 + 63) = *(v0 + 626);
    *(v10 + 59) = v12;
    v10[8] = v5;
    *(v10 + 9) = v20;
    *(v0 + 592) = v7;
    v13 = sub_C5764();
    *(v0 + 600) = v13;
    v14 = swift_task_alloc();
    *(v0 + 608) = v14;
    *v14 = v0;
    v14[1] = sub_1A794;
    v15 = *(v0 + 520);

    return TaskGroup.Iterator.next(isolation:)(v0 + 376, v13, &protocol witness table for MainActor, v15);
  }

  else
  {
    v16 = *(v0 + 592);
    v17 = *(v0 + 488);
    (*(*(v0 + 528) + 8))(*(v0 + 536), *(v0 + 520));

    *v17 = v16;

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_1AB3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, uint64_t a7)
{
  *(v7 + 40) = a4;
  *(v7 + 48) = a7;
  *(v7 + 57) = a6;
  *(v7 + 56) = a5;
  *(v7 + 32) = a1;
  return _swift_task_switch(sub_1AB68, 0, 0);
}

uint64_t sub_1AB68()
{
  v1 = *(v0 + 40);
  v2 = *v1;
  v3 = v1[1];
  v4 = _s15MOMapAnnotationCMa();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR____TtCC20JournalNotifications10MapManager15MOMapAnnotation_title];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v5[OBJC_IVAR____TtCC20JournalNotifications10MapManager15MOMapAnnotation_coordinate];
  *v7 = v2;
  *(v7 + 1) = v3;
  *v6 = 0;
  *(v6 + 1) = 0;
  *(v0 + 16) = v5;
  *(v0 + 24) = v4;
  v27 = objc_msgSendSuper2((v0 + 16), "init");
  v8 = *(v1 + 32);
  v9 = *(v1 + 56);
  v11 = v1[2];
  v10 = v1[3];
  v12 = *(v0 + 40);
  if (v11)
  {
    v13 = *(v12 + 48);
    v14 = *(v12 + 40) & 0xFFFFFFFFFFFFLL;
    if ((v13 & 0x2000000000000000) != 0)
    {
      v14 = HIBYTE(v13) & 0xF;
    }

    v15 = v14 != 0;
    if (v14)
    {
      v16 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = *(v12 + 64) > 150.0;
LABEL_8:
  v26 = *(v0 + 57);
  v17 = *(v0 + 56);
  v18 = *(v0 + 32);
  if (v8)
  {
    v19 = 1;
  }

  else
  {
    v19 = v10;
  }

  v20 = [*(v0 + 48) traitCollection];
  v21 = sub_ED20(v11, v9, v15, v16, v20);
  v23 = v22;

  *v18 = v27;
  *(v18 + 8) = v17;
  *(v18 + 9) = v9;
  *(v18 + 16) = v19;
  *(v18 + 24) = (v26 & 1) == 0;
  *(v18 + 25) = v15;
  *(v18 + 26) = v16;
  *(v18 + 32) = 0x4000000000000000;
  *(v18 + 40) = v21;
  *(v18 + 48) = v23;
  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1AD54(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1AE4C;

  return v6(a1);
}

uint64_t sub_1AE4C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

double *sub_1AF44(double *a1)
{
  v39 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa();
  v2 = *(v39 - 1);
  __chkstk_darwin(v39);
  v4 = (&v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(a1 + 2) < 3uLL)
  {
  }

  else
  {
    if (qword_104168 != -1)
    {
      swift_once();
    }

    v5 = sub_C4CD4();
    sub_B680(v5, qword_104DB0);
    v6 = sub_C4CB4();
    v7 = sub_C5A64();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_0, v6, v7, "[MOSuggestionAssetMapsClusterer] Building dendrogram", v8, 2u);
    }

    v9 = objc_allocWithZone(_s30MOSuggestionAssetMapsClustererCMa());

    v11 = sub_1555C(v10, 1.0);
    sub_15874();
    v12 = sub_16304();
    v13 = *(v12 + 2);
    if (v13)
    {
      v37 = v11;
      v52 = _swiftEmptyArrayStorage;
      sub_52578(0, v13, 0);
      a1 = v52;
      v14 = (*(v2 + 80) + 32) & ~*(v2 + 80);
      v36 = v12;
      v15 = v12 + v14;
      v38 = *(v2 + 72);
      for (i = v13 - 1; ; --i)
      {
        sub_19D98(v15, v4);
        v17 = *v4;
        v18 = v4[1];
        v19 = (v4 + v39[10]);
        v21 = *v19;
        v20 = v19[1];
        v22 = v4[3];
        v23 = v22 < 2;
        v24 = v22 >= 2 ? v4[3] : 0;
        v25 = *(v4 + v39[9]);
        v26 = *(v4 + v39[11]);
        v27 = *(v4 + v39[12]);
        v28 = v25;

        sub_19E50(v4);
        v40[72] = v23;
        *&v41 = v17;
        *(&v41 + 1) = v18;
        *&v42 = v25;
        *(&v42 + 1) = v24;
        LOBYTE(v43) = v23;
        *(&v43 + 1) = v21;
        *&v44 = v20;
        BYTE8(v44) = v26;
        v45 = v27;
        v46[0] = v17;
        v46[1] = v18;
        v46[2] = v25;
        v46[3] = v24;
        v47 = v23;
        v48 = v21;
        v49 = v20;
        v50 = v26;
        v51 = v27;
        sub_19C84(&v41, v40);
        sub_19CE0(v46);
        v52 = a1;
        v30 = *(a1 + 2);
        v29 = *(a1 + 3);
        if (v30 >= v29 >> 1)
        {
          sub_52578((v29 > 1), v30 + 1, 1);
          a1 = v52;
        }

        *(a1 + 2) = v30 + 1;
        v31 = &a1[9 * v30];
        *(v31 + 2) = v41;
        v32 = v42;
        v33 = v43;
        v34 = v44;
        *(v31 + 12) = v45;
        *(v31 + 4) = v33;
        *(v31 + 5) = v34;
        *(v31 + 3) = v32;
        if (!i)
        {
          break;
        }

        v15 += v38;
      }
    }

    else
    {

      return _swiftEmptyArrayStorage;
    }
  }

  return a1;
}

id sub_1B2D0(uint64_t a1, double *a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, char a8)
{
  v118 = a7;
  if (a2)
  {
    v122 = a2;
  }

  else
  {
    v122 = sub_1AF44(a1);
  }

  v13 = objc_allocWithZone(MKStandardMapConfiguration);

  v123 = [v13 init];
  if (a3 > 6u)
  {

    v15 = &selRef_filterIncludingAllCategories;
  }

  else
  {
    v14 = sub_C6244();

    if (v14)
    {
      v15 = &selRef_filterIncludingAllCategories;
    }

    else
    {
      v15 = &selRef_filterExcludingAllCategories;
    }
  }

  v16 = [objc_opt_self() *v15];
  [v123 setPointOfInterestFilter:v16];

  v17 = *(a1 + 16);
  v124 = [objc_allocWithZone(MKMapSnapshotOptions) init];
  if (a6)
  {
    v18 = objc_opt_self();
    v19 = [v18 mainScreen];
    [v19 bounds];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;

    v131.origin.x = v21;
    v131.origin.y = v23;
    v131.size.width = v25;
    v131.size.height = v27;
    v28 = CGRectGetWidth(v131) + -160.0;
    v29 = [v18 mainScreen];
    [v29 bounds];
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;

    v132.origin.x = v31;
    v132.origin.y = v33;
    v132.size.width = v35;
    v132.size.height = v37;
    v38 = CGRectGetHeight(v132) * 0.66;
  }

  else
  {
    v28 = *&a4;
    v38 = *&a5;
  }

  v39 = v122;
  if (a3 > 6u)
  {

    if (a8)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v40 = sub_C6244();

    if ((v40 & 1) == 0)
    {
      v28 = sub_5A978(a3);
      v38 = v41;
    }

    if (a8)
    {
LABEL_15:
      if (v17 == 1)
      {
        v130 = *(a1 + 96);
        v42 = *(a1 + 80);
        v128 = *(a1 + 64);
        v129 = v42;
        v43 = *(a1 + 48);
        v126 = *(a1 + 32);
        v127 = v43;
        v44 = v130;
        v45 = v43;
        if (v43)
        {
          v46 = *(&v128 + 1) & 0xFFFFFFFFFFFFLL;
          if ((v129 & 0x2000000000000000) != 0)
          {
            v46 = BYTE7(v129) & 0xF;
          }

          if (v46 || v130 <= 150.0)
          {
            v47 = v126;
            sub_19C84(&v126, v125);
            v48 = v45;

            v49 = [objc_opt_self() cameraLookingAtMapItem:v48 forViewSize:1 allowPitch:{v28, v38}];
            [v49 setCenterCoordinate:v47];
            [v124 setCamera:v49];
            sub_3CB0(&qword_104E60);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_CE5B0;
            v51 = v127;
            *(inited + 32) = v126;
            v52 = v130;
            v54 = v128;
            v53 = v129;
            *(inited + 48) = v51;
            *(inited + 64) = v54;
            *(inited + 80) = v53;
            *(inited + 96) = v52;
            sub_19C84(&v126, v125);
            v55 = sub_19760(inited, 0, 0, 0, 1);
            v57 = v56;
            v59 = v58;
            v61 = v60;
            swift_setDeallocating();
            sub_19CE0(inited + 32);
            [v124 region];
            if (v44 <= 1.0 || v62 >= v59 || v63 >= v61)
            {

              sub_19CE0(&v126);
              goto LABEL_102;
            }

            if (sub_1D160(v55, v57, v59, v61))
            {
              [v124 setRegion:{v55, v57, v59, v61}];
            }

            else
            {
              if (qword_104168 != -1)
              {
                swift_once();
              }

              v114 = sub_C4CD4();
              sub_B680(v114, qword_104DB0);
              v115 = sub_C4CB4();
              v116 = sub_C5A44();
              if (os_log_type_enabled(v115, v116))
              {
                v117 = swift_slowAlloc();
                *v117 = 0;
                _os_log_impl(&dword_0, v115, v116, "[MapSnapshot] cannot generate a valid region for the multipin map with naiveUncertaintyBasedRegion", v117, 2u);
              }
            }

            goto LABEL_44;
          }
        }

        if (a3 == 2)
        {

          v81 = 0;
          v80 = 1;
          v82 = 1;
          goto LABEL_72;
        }

        v80 = sub_C6244();
        v81 = 0;
        goto LABEL_64;
      }

      if (a3 > 3u || a3 <= 1u || a3 == 2)
      {
        v79 = sub_C6244();

        if (v79)
        {
LABEL_58:
          v80 = 0;
          v81 = 1;
          goto LABEL_65;
        }

        if (a3 > 1u || !a3)
        {
          v83 = sub_C6244();

          if (v83)
          {
            goto LABEL_58;
          }

          if (a3 <= 5u || a3 == 6)
          {
            v81 = sub_C6244();
            v80 = 0;
LABEL_64:

LABEL_65:
            if (a3 == 2)
            {
              v82 = 1;
              goto LABEL_72;
            }

            goto LABEL_67;
          }
        }
      }

      v80 = 0;
      v81 = 1;
LABEL_67:
      v84 = sub_C6244();

      if (v84)
      {
        v82 = 1;
LABEL_73:
        if (qword_104168 != -1)
        {
          swift_once();
        }

        v85 = sub_C4CD4();
        sub_B680(v85, qword_104DB0);
        swift_bridgeObjectRetain_n();
        v86 = sub_C4CB4();
        v87 = sub_C5A64();
        if (os_log_type_enabled(v86, v87))
        {
          v88 = v81;
          v121 = v80;
          v89 = swift_slowAlloc();
          v90 = swift_slowAlloc();
          *&v126 = v90;
          *v89 = 136316162;
          v91 = 0xEA00000000006564;
          v92 = 0xE500000000000000;
          v93 = 0x6C6C616D73;
          if (a3 != 6)
          {
            v93 = 0x657263536C6C7566;
            v92 = 0xEA00000000006E65;
          }

          v94 = 0xE600000000000000;
          v95 = 0x6D756964656DLL;
          if (a3 != 4)
          {
            v95 = 0x61546D756964656DLL;
            v94 = 0xEA00000000006C6CLL;
          }

          if (a3 <= 5u)
          {
            v93 = v95;
            v92 = v94;
          }

          v96 = 0x656772616CLL;
          if (a3 == 2)
          {
            v96 = 0x69576D756964656DLL;
          }

          else
          {
            v91 = 0xE500000000000000;
          }

          v97 = 0xE600000000000000;
          v98 = 0x656772614C78;
          if (!a3)
          {
            v98 = 0x6154656772614C78;
            v97 = 0xEA00000000006C6CLL;
          }

          if (a3 <= 1u)
          {
            v96 = v98;
            v91 = v97;
          }

          if (a3 <= 3u)
          {
            v99 = v96;
          }

          else
          {
            v99 = v93;
          }

          if (a3 <= 3u)
          {
            v100 = v91;
          }

          else
          {
            v100 = v92;
          }

          v101 = sub_BA920(v99, v100, &v126);

          *(v89 + 4) = v101;
          *(v89 + 12) = 2048;
          v102 = *(v122 + 2);

          *(v89 + 14) = v102;
          v39 = v122;

          *(v89 + 22) = 1024;
          *(v89 + 24) = v88 & 1;
          *(v89 + 28) = 1024;
          *(v89 + 30) = v121 & 1;
          *(v89 + 34) = 1024;
          *(v89 + 36) = v82 & 1;
          _os_log_impl(&dword_0, v86, v87, "[MapSnapshot] style: %s, numLocations: %ld, applyBottomPaddingForPlatter: %{BOOL}d, applyBottomPaddingForGradient: %{BOOL}d, shouldHaveHorizontalAspectRatio: %{BOOL}d", v89, 0x28u);
          sub_BED0(v90);
          v81 = v88;

          v80 = v121;
        }

        else
        {

          swift_bridgeObjectRelease_n();
        }

        v103 = sub_19760(v39, v81 & 1, v80 & 1, v82 & 1, 1);
        v105 = v104;
        v107 = v106;
        v109 = v108;

        if (sub_1D160(v103, v105, v107, v109))
        {
          [v124 setRegion:{v103, v105, v107, v109, v118}];
        }

        else
        {
          v110 = sub_C4CB4();
          v111 = sub_C5A44();
          if (os_log_type_enabled(v110, v111))
          {
            v112 = swift_slowAlloc();
            *v112 = 0;
            _os_log_impl(&dword_0, v110, v111, "[MapSnapshot] cannot generate a valid region for the multipin map", v112, 2u);
          }
        }

        goto LABEL_102;
      }

      if (a3 <= 1u && a3)
      {
        v82 = 1;
      }

      else
      {
        v82 = sub_C6244();
      }

LABEL_72:

      goto LABEL_73;
    }
  }

  if (v17)
  {
    v130 = *(a1 + 96);
    v64 = *(a1 + 48);
    v126 = *(a1 + 32);
    v127 = v64;
    v65 = *(a1 + 80);
    v128 = *(a1 + 64);
    v129 = v65;
    v66 = fmin(v130 / 111000.0 * 1.5, 180.0);
    if (sub_1D160(*&v126, *(&v126 + 1), v66, v66))
    {
      [v124 setRegion:{v126, v66, v66, v118}];
LABEL_102:
      [v124 setShowsBuildings:{1, v118}];
      [v124 setPreferredConfiguration:v123];
      [v124 setSize:{v28, v38}];
      [v124 setTraitCollection:v119];

      return v124;
    }

    sub_19C84(&v126, v125);
    if (qword_104168 != -1)
    {
      swift_once();
    }

    v75 = sub_C4CD4();
    sub_B680(v75, qword_104DB0);
    v76 = sub_C4CB4();
    v77 = sub_C5A44();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&dword_0, v76, v77, "[MapSnapshot] cannot generate a valid region for the generic map", v78, 2u);
    }

LABEL_44:
    sub_19CE0(&v126);
    goto LABEL_102;
  }

  if (qword_104168 != -1)
  {
    swift_once();
  }

  v67 = sub_C4CD4();
  sub_B680(v67, qword_104DB0);

  v68 = sub_C4CB4();
  v69 = sub_C5A44();

  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    *&v126 = v71;
    *v70 = 136315138;
    v72 = sub_C5684();
    v74 = sub_BA920(v72, v73, &v126);

    *(v70 + 4) = v74;
    _os_log_impl(&dword_0, v68, v69, "[MapSnapshot] cannot generate valid options for the generic map since locations are nil: %s", v70, 0xCu);
    sub_BED0(v71);
  }

  return v124;
}

uint64_t sub_1C5DC(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 112) = a2;
  *(v3 + 24) = a1;
  *(v3 + 32) = a3;
  *(v3 + 40) = sub_C5774();
  *(v3 + 48) = sub_C5764();
  v5 = sub_C5724();
  *(v3 + 56) = v5;
  *(v3 + 64) = v4;

  return _swift_task_switch(sub_1C67C, v5, v4);
}

uint64_t sub_1C67C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 24);
  v3 = *(v0 + 112);
  v4 = sub_1AF44(v2);
  *(v0 + 72) = v4;
  v5 = *(v2 + 16) == 1;
  v6 = sub_1B2D0(v2, v4, v3, 0, 0, 1, v1, 1);
  *(v0 + 80) = v6;
  v7 = sub_3CB0(&qword_104E68);
  v8 = sub_3CB0(&qword_104E70);
  v9 = sub_C5764();
  *(v0 + 88) = v9;
  v10 = swift_task_alloc();
  *(v0 + 96) = v10;
  *(v10 + 16) = v4;
  *(v10 + 24) = v3;
  *(v10 + 25) = v5;
  *(v10 + 32) = v6;
  v11 = swift_task_alloc();
  *(v0 + 104) = v11;
  *v11 = v0;
  v11[1] = sub_1C814;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 16, v7, v8, v9, &protocol witness table for MainActor, &unk_CE610, v10, v7);
}

uint64_t sub_1C814()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return _swift_task_switch(sub_1C998, v3, v2);
}

uint64_t sub_1C998()
{

  v2 = v0[2];
  v3 = *(v2 + 16);
  if (v3)
  {
    v26 = v0;
    sub_C6084();
    v4 = 0;
    v27 = v2;
    do
    {
      v5 = v2 + v4;
      v6 = *(v2 + v4 + 32);
      v30 = *(v2 + v4 + 40);
      v7 = *(v2 + v4 + 41);
      v29 = *(v2 + v4 + 48);
      v8 = *(v2 + v4 + 56);
      v9 = *(v2 + v4 + 57);
      v28 = *(v5 + 58);
      v10 = *(v5 + 64);
      v11 = *(v5 + 72);
      v12 = *(v5 + 80);
      v13 = v6;
      sub_1CCC8(v11, v12);
      v14 = v13;
      sub_1CCC8(v11, v12);
      sub_14FFC(v11, v12);
      v15 = v14;
      sub_1CCC8(v11, v12);

      objc_allocWithZone(_s19MOPOIAnnotationViewCMa());
      if (v7)
      {
        v16 = 256;
      }

      else
      {
        v16 = 0;
      }

      v17 = v9 == 0;
      v2 = v27;
      if (v17)
      {
        v18 = 0;
      }

      else
      {
        v18 = 256;
      }

      v19 = v1 & 0xFF000000 | v8 | v18;
      if (v28)
      {
        v20 = 0x10000;
      }

      else
      {
        v20 = 0;
      }

      v1 = v19 | v20;
      sub_14350(v14, v16 | v30, v29, v19 | v20, v11, v12, v10);

      sub_14FFC(v11, v12);
      sub_C6064();
      sub_C6094();
      sub_C60A4();
      sub_C6074();
      v4 += 56;
      --v3;
    }

    while (v3);

    v0 = v26;
  }

  else
  {
  }

  v21 = v0[10];
  sub_1CD08();
  isa = sub_C5664().super.isa;

  [v21 setAnnotationViews:isa];

  v23 = v0[1];
  v24 = v0[10];

  return v23(v24);
}

uint64_t sub_1CBF8(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 25);
  v8 = *(v2 + 32);
  v9 = *(v2 + 24);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1D138;

  return sub_1A258(a1, a2, v6, v9, v7, v8);
}

id sub_1CCC8(id result, void *a2)
{
  if (result)
  {
    v2 = result;

    return a2;
  }

  return result;
}

unint64_t sub_1CD08()
{
  result = qword_104E78;
  if (!qword_104E78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_104E78);
  }

  return result;
}

uint64_t sub_1CD54()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_1CDA4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 105);
  v7 = *(v1 + 112);
  v8 = *(v1 + 104);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1CE7C;

  return sub_1AB3C(a1, v4, v5, v1 + 32, v8, v6, v7);
}

uint64_t sub_1CE7C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1CF70(uint64_t a1, uint64_t a2)
{
  v4 = sub_3CB0(&qword_104E88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFE0(uint64_t a1)
{
  v2 = sub_3CB0(&qword_104E88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D048()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1D080(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1CE7C;

  return sub_1AD54(a1, v4);
}

BOOL sub_1D160(double a1, double a2, double a3, double a4)
{
  result = 0;
  v5 = fabs(a2);
  if (fabs(a1) <= 90.0 && v5 <= 180.0 && a3 >= 0.0 && a3 <= 180.0)
  {
    return a4 <= 360.0 && a4 >= 0.0;
  }

  return result;
}

double *sub_1D1C0(uint64_t a1)
{
  v2 = sub_C43A4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = &_swiftEmptySetSingleton;
  v6 = *(a1 + 16);
  if (v6)
  {
    v8 = *(v3 + 16);
    v7 = v3 + 16;
    v46 = v8;
    v9 = a1 + ((*(v7 + 64) + 32) & ~*(v7 + 64));
    v10 = (v7 - 8);
    v11 = _swiftEmptyArrayStorage;
    v45 = *(v7 + 56);
    v41 = v7;
    v8(v5, v9, v2);
    while (1)
    {
      v12 = sub_C4364();
      if (v13 & 1) != 0 || (v14 = *&v12, v15 = sub_C4374(), (v16) || (v17 = *&v15, (sub_6127C(v53, v14, *&v15) & 1) == 0))
      {
        (*v10)(v5, v2);
      }

      else
      {
        v43 = sub_C4354();
        v18 = sub_C42F4();
        if (v19 >> 60 == 15)
        {
          v44 = 0;
        }

        else
        {
          v42 = v11;
          v20 = v18;
          v21 = v19;
          sub_177E0();
          v44 = sub_C5D14();
          v22 = v20;
          v11 = v42;
          sub_1D580(v22, v21);
        }

        v23 = sub_C4344();
        if (v24 & 1) != 0 && (v23 = sub_C4334(), (v25))
        {
          if (v44)
          {
            v26 = [v44 location];
            [v26 horizontalAccuracy];
            v28 = v27;
          }

          else
          {
            v28 = 0;
          }
        }

        else
        {
          v28 = v23;
        }

        v29 = sub_C4384();
        v47[72] = 1;
        if (v30)
        {
          v31 = v29;
        }

        else
        {
          v31 = 0;
        }

        v32 = 0xE000000000000000;
        if (v30)
        {
          v32 = v30;
        }

        *&v48 = v14;
        *(&v48 + 1) = v17;
        v49 = v44;
        LOBYTE(v50) = 1;
        *(&v50 + 1) = v31;
        *&v51 = v32;
        BYTE8(v51) = v43 & 1;
        v52 = v28;
        v53[0] = v14;
        v53[1] = v17;
        *&v53[2] = v44;
        v53[3] = 0.0;
        v54 = 1;
        v55 = v31;
        v56 = v32;
        v57 = v43 & 1;
        v58 = v28;
        v33 = v44;
        sub_19C84(&v48, v47);
        sub_19CE0(v53);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_48778(0, *(v11 + 2) + 1, 1, v11);
        }

        v35 = *(v11 + 2);
        v34 = *(v11 + 3);
        if (v35 >= v34 >> 1)
        {
          v11 = sub_48778((v34 > 1), v35 + 1, 1, v11);
        }

        (*v10)(v5, v2);
        *(v11 + 2) = v35 + 1;
        v36 = &v11[9 * v35];
        *(v36 + 2) = v48;
        v37 = v49;
        v38 = v50;
        v39 = v51;
        *(v36 + 12) = v52;
        *(v36 + 4) = v38;
        *(v36 + 5) = v39;
        *(v36 + 3) = v37;
      }

      v9 += v45;
      if (!--v6)
      {
        break;
      }

      v46(v5, v9, v2);
    }
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  return v11;
}

uint64_t sub_1D580(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_BF1C(a1, a2);
  }

  return a1;
}

uint64_t sub_1D5B8(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v8 = sub_C4004();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v38 - v14;
  __chkstk_darwin(v13);
  v17 = &v38 - v16;
  v18 = [objc_opt_self() mainScreen];
  [v18 bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v39.origin.x = v20;
  v39.origin.y = v22;
  v39.size.width = v24;
  v39.size.height = v26;
  v27 = CGRectGetWidth(v39) + -8.0 + -4.0;
  v40.origin.x = a1;
  v40.origin.y = a2;
  v40.size.width = a3;
  v40.size.height = a4;
  Width = CGRectGetWidth(v40);
  v29 = v27 * 0.5;
  if (v27 * 0.5 >= Width)
  {
    v31 = v27 * 0.25;
    if (Width < v29 && v31 < Width)
    {
      v43.origin.x = a1;
      v43.origin.y = a2;
      v43.size.width = a3;
      v43.size.height = a4;
      if (CGRectGetHeight(v43) >= v31)
      {
        return 3;
      }

      else
      {
        return 4;
      }
    }

    else if (Width < v31 && (v42.origin.x = a1, v42.origin.y = a2, v42.size.width = a3, v42.size.height = a4, Width <= CGRectGetHeight(v42) * 0.5) && ((*(v9 + 104))(v12, enum case for JournalFeatureFlags.portraitAssetGrid(_:), v8), v33 = sub_C3FF4(), (*(v9 + 8))(v12, v8), (v33 & 1) != 0))
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }

  else
  {
    v41.origin.x = a1;
    v41.origin.y = a2;
    v41.size.width = a3;
    v41.size.height = a4;
    if (Width == CGRectGetHeight(v41))
    {
      return 7;
    }

    v34 = *(v9 + 104);
    v34(v17, enum case for JournalFeatureFlags.fullScreenViewer(_:), v8);
    v35 = sub_C3FF4();
    v36 = *(v9 + 8);
    v36(v17, v8);
    if ((v35 & 1) != 0 && (v44.origin.x = a1, v44.origin.y = a2, v44.size.width = a3, v44.size.height = a4, Width * 1.5 <= CGRectGetHeight(v44)))
    {
      return 7;
    }

    else
    {
      v45.origin.x = a1;
      v45.origin.y = a2;
      v45.size.width = a3;
      v45.size.height = a4;
      if (v27 * 0.25 >= CGRectGetHeight(v45))
      {
        return 2;
      }

      else
      {
        v34(v15, enum case for JournalFeatureFlags.portraitAssetGrid(_:), v8);
        v37 = sub_C3FF4();
        v36(v15, v8);
        result = 1;
        if (v37)
        {
          v46.origin.x = a1;
          v46.origin.y = a2;
          v46.size.width = a3;
          v46.size.height = a4;
          if (CGRectGetHeight(v46) == Width * 1.5)
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D964()
{
  v0 = sub_C4CD4();
  sub_C0CC(v0, qword_104FC0);
  v1 = sub_B680(v0, qword_104FC0);
  if (qword_1042F0 != -1)
  {
    swift_once();
  }

  v2 = sub_B680(v0, qword_1156B0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1DA2C(char a1)
{
  *(v2 + 152) = v1;
  *(v2 + 272) = a1;
  v3 = sub_C4004();
  *(v2 + 160) = v3;
  *(v2 + 168) = *(v3 - 8);
  *(v2 + 176) = swift_task_alloc();
  sub_C5774();
  *(v2 + 184) = sub_C5764();
  v5 = sub_C5724();
  *(v2 + 192) = v5;
  *(v2 + 200) = v4;

  return _swift_task_switch(sub_1DB24, v5, v4);
}

double *sub_1DB24()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 272);
  *(v0 + 208) = CFAbsoluteTimeGetCurrent();
  *(v1 + OBJC_IVAR____TtC20JournalNotifications17RouteMapGenerator_sizeType) = v2;
  v3 = sub_5A978(v2);
  v5 = v4;
  *(v0 + 216) = v3;
  *(v0 + 224) = v4;
  if (v2 == 3)
  {
    v10 = -70.0;
  }

  else if (v2 == 7)
  {
    v7 = *(v0 + 168);
    v6 = *(v0 + 176);
    v8 = *(v0 + 160);
    (*(v7 + 104))(v6, enum case for JournalFeatureFlags.fullScreenViewer(_:), v8);
    v9 = sub_C3FF4();
    (*(v7 + 8))(v6, v8);
    if (v9)
    {
      v10 = -145.0;
    }

    else
    {
      v10 = -116.0;
    }
  }

  else
  {
    v10 = -16.0;
  }

  v11 = *(*(v0 + 152) + OBJC_IVAR____TtC20JournalNotifications17RouteMapGenerator_routeCoordinates);
  if (v11 >> 62)
  {
    v12 = sub_C60E4();
  }

  else
  {
    v12 = *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8));
  }

  if (v12)
  {

    result = sub_525B8(0, v12 & ~(v12 >> 63), 0);
    if (v12 < 0)
    {
      __break(1u);
      return result;
    }

    for (i = 0; i != v12; ++i)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v15 = sub_C5FE4();
      }

      else
      {
        v15 = *(v11 + 8 * i + 32);
      }

      v16 = v15;
      [v15 coordinate];
      v17 = MKMapPointForCoordinate(v31);

      v19 = _swiftEmptyArrayStorage[2];
      v18 = _swiftEmptyArrayStorage[3];
      if (*&v19 >= *&v18 >> 1)
      {
        sub_525B8((*&v18 > 1uLL), *&v19 + 1, 1);
      }

      *&_swiftEmptyArrayStorage[2] = *&v19 + 1;
      *&_swiftEmptyArrayStorage[2 * *&v19 + 4] = v17;
    }
  }

  *(v0 + 232) = _swiftEmptyArrayStorage;
  v20 = *(v0 + 272);

  v22 = sub_200CC(v21, v20, v3, v5, (v5 + v10) * 0.5);
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = swift_task_alloc();
  *(v0 + 240) = v29;
  *v29 = v0;
  v29[1] = sub_1DE18;

  return sub_2070C(v22, v24, v26, v28, v3, v5);
}

uint64_t sub_1DE18(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 248) = a1;

  v3 = *(v2 + 200);
  v4 = *(v2 + 192);

  return _swift_task_switch(sub_1DF40, v4, v3);
}

uint64_t sub_1DF40()
{
  v1 = *(v0 + 152);
  [*(v0 + 248) _setRendersInBackground:1];
  v2 = OBJC_IVAR____TtC20JournalNotifications17RouteMapGenerator_mapSnapshotter;
  v3 = *(v1 + OBJC_IVAR____TtC20JournalNotifications17RouteMapGenerator_mapSnapshotter);
  if (v3)
  {
    [v3 cancel];
    v4 = *(v1 + v2);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v0 + 248);
  *(v1 + v2) = 0;

  v6 = [objc_allocWithZone(MKMapSnapshotter) initWithOptions:v5];
  v7 = *(v1 + v2);
  *(v1 + v2) = v6;

  v8 = *(v1 + v2);
  *(v0 + 256) = v8;
  if (v8)
  {
    v9 = qword_1042B0;
    v10 = v8;
    if (v9 != -1)
    {
      swift_once();
    }

    v11 = qword_1155D0;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_1E194;
    v12 = swift_continuation_init();
    *(v0 + 136) = sub_3CB0(&qword_1050E8);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_327E0;
    *(v0 + 104) = &unk_F1900;
    *(v0 + 112) = v12;
    [v10 startWithQueue:v11 completionHandler:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    v13 = *(v0 + 248);

    sub_1E60C(*(v0 + 152));

    v14 = *(v0 + 8);

    return v14(0);
  }
}

uint64_t sub_1E194()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 264) = v2;
  if (v2)
  {

    v3 = *(v1 + 192);
    v4 = *(v1 + 200);
    v5 = sub_1E3B4;
  }

  else
  {
    v3 = *(v1 + 192);
    v4 = *(v1 + 200);
    v5 = sub_1E2AC;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1E2AC()
{
  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[29];

  v4 = v0[18];

  v5 = [objc_opt_self() polylineWithPoints:v3 + 32 count:*(v3 + 16)];

  [v1 mapRect];
  v10 = sub_20AE8(v5, v4, v6, v7, v8, v9);

  sub_1E60C(v0[19]);

  v11 = v0[1];

  return v11(v10);
}

uint64_t sub_1E3B4()
{
  v17 = v0;
  v1 = v0[32];

  swift_willThrow();

  if (qword_104170 != -1)
  {
    swift_once();
  }

  v2 = v0[19];
  v3 = sub_C4CD4();
  sub_B680(v3, qword_104FC0);
  v4 = v2;
  swift_errorRetain();
  v5 = sub_C4CB4();
  v6 = sub_C5A44();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[31];
  if (v7)
  {
    v9 = v0[19];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v10 = 136315394;
    *(v10 + 4) = sub_BA920(*(v9 + OBJC_IVAR____TtC20JournalNotifications17RouteMapGenerator_id), *(v9 + OBJC_IVAR____TtC20JournalNotifications17RouteMapGenerator_id + 8), &v16);
    *(v10 + 12) = 2112;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v13;
    *v11 = v13;
    _os_log_impl(&dword_0, v5, v6, "RouteMapGenerator [assetId: %s]: error generating snapshot: %@", v10, 0x16u);
    sub_C060(v11, &qword_1050F0);

    sub_BED0(v12);
  }

  else
  {
  }

  sub_1E60C(v0[19]);

  v14 = v0[1];

  return v14(0);
}

void sub_1E60C(uint64_t a1)
{
  v10 = 0;
  v11 = 0xE000000000000000;
  sub_C5FC4(83);
  v12._object = 0x80000000000C8720;
  v12._countAndFlagsBits = 0xD000000000000021;
  sub_C5524(v12);
  type metadata accessor for CGSize(0);
  sub_C60B4();
  v13._countAndFlagsBits = 0x497465737361202CLL;
  v13._object = 0xEB00000000203A64;
  sub_C5524(v13);
  sub_C5524(*(a1 + OBJC_IVAR____TtC20JournalNotifications17RouteMapGenerator_id));
  v14._countAndFlagsBits = 0x73746E696F70202CLL;
  v14._object = 0xEA0000000000203ALL;
  sub_C5524(v14);
  if (*(a1 + OBJC_IVAR____TtC20JournalNotifications17RouteMapGenerator_routeCoordinates) >> 62)
  {
    sub_C60E4();
  }

  v15._countAndFlagsBits = sub_C6214();
  sub_C5524(v15);

  v16._countAndFlagsBits = 0x6574756365786520;
  v16._object = 0xED0000206E692064;
  sub_C5524(v16);
  CFAbsoluteTimeGetCurrent();
  sub_C57C4();
  v17._countAndFlagsBits = 0x73646E6F63657320;
  v17._object = 0xE800000000000000;
  sub_C5524(v17);
  v3 = v10;
  v2 = v11;
  if (qword_104170 != -1)
  {
    swift_once();
  }

  v4 = sub_C4CD4();
  sub_B680(v4, qword_104FC0);

  v5 = sub_C4CB4();
  v6 = sub_C5A64();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136315138;
    v9 = sub_BA920(v3, v2, &v10);

    *(v7 + 4) = v9;
    _os_log_impl(&dword_0, v5, v6, "%s", v7, 0xCu);
    sub_BED0(v8);
  }

  else
  {
  }
}

void sub_1E910(void *a1, id a2, char a3, uint64_t a4, uint64_t a5, CLLocationDegrees a6, CLLocationDegrees a7, double a8, double a9, double a10, double a11, CLLocationDegrees a12, CLLocationDegrees a13)
{
  v84.latitude = a6;
  v84.longitude = a7;
  v24 = [a2 image];
  [v24 size];
  v26 = v25;

  v27 = [a2 image];
  [v27 size];
  v29 = v28;

  v30 = [a2 image];
  [v30 drawInRect:{0.0, 0.0, v26, v29}];

  v85 = sub_20F58(0, a3);
  v31 = 2.0;
  if ((a3 - 3) <= 4u)
  {
    v31 = dbl_CE830[(a3 - 3)];
  }

  v32 = OBJC_IVAR____TtC20JournalNotifications17RouteMapGenerator_routeCoordinates;
  v33 = *(a4 + OBJC_IVAR____TtC20JournalNotifications17RouteMapGenerator_routeCoordinates);
  if (v33 >> 62)
  {
    if (sub_C60E4() == 1)
    {
      goto LABEL_5;
    }

LABEL_9:
    v48 = *(a4 + v32);
    v49 = type metadata accessor for WorkoutGradientPathRenderer();
    v50 = objc_allocWithZone(v49);
    *&v50[OBJC_IVAR____TtC20JournalNotifications27WorkoutGradientPathRenderer_routeCoordinates] = v48;
    v86.receiver = v50;
    v86.super_class = v49;

    v51 = objc_msgSendSuper2(&v86, "initWithOverlay:", a5);
    v52 = [a1 CGContext];
    v53 = a2;
    sub_2125C(v52, v51, v53, a8, a9, a10, a11, v31);

    v54 = [a1 CGContext];
    CGContextStrokePath(v54);

    v55 = sub_20F58(1, a3);
    v88.latitude = a12;
    v88.longitude = a13;
    v56 = MKMapPointForCoordinate(v88);
    v57 = [a1 CGContext];
    v58 = MKCoordinateForMapPoint(v56);
    [v53 pointForCoordinate:{v58.latitude, v58.longitude}];
    v60 = v59;
    v62 = v61;
    [v55 bounds];
    v63 = v60 - CGRectGetMidX(v91);
    [v55 centerOffset];
    v65 = v63 + v64;
    [v55 bounds];
    v66 = v62 - CGRectGetMidY(v92);
    [v55 centerOffset];
    v68 = v66 + v67;
    CGContextSaveGState(v57);
    CGContextTranslateCTM(v57, v65, v68);
    [v55 prepareForSnapshotting];
    v69 = [v55 layer];
    [v69 renderInContext:v57];

    CGContextRestoreGState(v57);
    v70 = MKMapPointForCoordinate(v84);
    v71 = [a1 CGContext];
    v72 = MKCoordinateForMapPoint(v70);
    [v53 pointForCoordinate:{v72.latitude, v72.longitude}];
    v74 = v73;
    v76 = v75;
    [v85 bounds];
    v77 = v74 - CGRectGetMidX(v93);
    [v85 centerOffset];
    v79 = v77 + v78;
    [v85 bounds];
    v80 = v76 - CGRectGetMidY(v94);
    [v85 centerOffset];
    v82 = v80 + v81;
    CGContextSaveGState(v71);
    CGContextTranslateCTM(v71, v79, v82);
    [v85 prepareForSnapshotting];
    v83 = [v85 layer];
    [v83 renderInContext:v71];

    CGContextRestoreGState(v71);
    return;
  }

  if (*(&dword_10 + (v33 & 0xFFFFFFFFFFFFFF8)) != 1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v34 = MKMapPointForCoordinate(v84);
  v35 = [a1 CGContext];
  v36 = MKCoordinateForMapPoint(v34);
  [a2 pointForCoordinate:{v36.latitude, v36.longitude}];
  v38 = v37;
  v40 = v39;
  [v85 bounds];
  v41 = v38 - CGRectGetMidX(v89);
  [v85 centerOffset];
  v43 = v41 + v42;
  [v85 bounds];
  v44 = v40 - CGRectGetMidY(v90);
  [v85 centerOffset];
  v46 = v44 + v45;
  CGContextSaveGState(v35);
  CGContextTranslateCTM(v35, v43, v46);
  [v85 prepareForSnapshotting];
  v47 = [v85 layer];
  [v47 renderInContext:v35];

  CGContextRestoreGState(v35);
}

void sub_1EEB4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

id sub_1EFF4(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "init");
}

Swift::Int sub_1F070()
{
  v1 = *v0;
  sub_C62F4();
  sub_C6304(v1);
  return sub_C6344();
}

Swift::Int sub_1F0E4()
{
  v1 = *v0;
  sub_C62F4();
  sub_C6304(v1);
  return sub_C6344();
}

void (*sub_1F13C(uint64_t **a1, unsigned __int8 a2))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_1FE30(v4, a2);
  return sub_1F1B4;
}

void sub_1F1B4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

id sub_1F200(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v5[OBJC_IVAR____TtC20JournalNotifications29WorkoutLocationAnnotationView_assetSizeType] = a4;
  if (a3)
  {
    v10 = sub_C5444();
  }

  else
  {
    v10 = 0;
  }

  v18.receiver = v5;
  v18.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v18, "initWithAnnotation:reuseIdentifier:", a1, v10);

  v12 = 7.0;
  if ((a4 - 3) <= 4u)
  {
    v12 = dbl_CE858[(a4 - 3)];
  }

  v13 = v11;
  [v13 setFrame:{0.0, 0.0, v12, v12}];
  v14 = objc_opt_self();
  v15 = v13;
  v16 = [v14 clearColor];
  [v15 setBackgroundColor:v16];

  [v15 setCanShowCallout:1];
  sub_1F380(a1);

  swift_unknownObjectRelease();
  return v15;
}

void sub_1F380(uint64_t a1)
{
  v2 = v1;
  v4 = sub_C4AB4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    type metadata accessor for WorkoutStartLocationAnnotation();
    if (swift_dynamicCastClass())
    {
      sub_21840();
      if (qword_104368 != -1)
      {
        swift_once();
      }

      v8 = qword_115798;
LABEL_10:
      v9 = sub_B680(v4, v8);
      (*(v5 + 16))(v7, v9, v4);
      v10 = sub_C5CE4();
      [v2 setTintColor:v10];

      return;
    }

    type metadata accessor for WorkoutEndLocationAnnotation();
    if (swift_dynamicCastClass())
    {
      sub_21840();
      if (qword_104360 != -1)
      {
        swift_once();
      }

      v8 = qword_115780;
      goto LABEL_10;
    }
  }

  v13 = [objc_opt_self() whiteColor];
  [v2 setTintColor:v13];
  v11 = v13;
}

void sub_1F5D8(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = UIGraphicsGetCurrentContext();
  if (v9)
  {
    v10 = 1.0;
    if (v4[OBJC_IVAR____TtC20JournalNotifications29WorkoutLocationAnnotationView_assetSizeType] - 3 <= 4)
    {
      v10 = dbl_CE880[(v4[OBJC_IVAR____TtC20JournalNotifications29WorkoutLocationAnnotationView_assetSizeType] - 3)];
    }

    c = v9;
    CGContextSetLineWidth(v9, v10);
    v11 = [v4 tintColor];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 CGColor];

      CGContextSetFillColorWithColor(c, v13);
      v14 = [objc_opt_self() whiteColor];
      v15 = [v14 CGColor];

      CGContextSetStrokeColorWithColor(c, v15);
      v18.origin.x = a1;
      v18.origin.y = a2;
      v18.size.width = a3;
      v18.size.height = a4;
      v19 = CGRectInset(v18, v10, v10);
      CGContextAddEllipseInRect(c, v19);
      CGContextDrawPath(c, kCGPathFillStroke);
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_1F81C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_1F9A4(double a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC20JournalNotifications27WorkoutGradientPathRenderer_routeCoordinates);
  if (!(v3 >> 62))
  {
    v4 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_13:
    v13 = *&_swiftEmptyArrayStorage[2];
    if (!v13)
    {

LABEL_43:
      v41 = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.8 blue:0.0 alpha:0.85];
LABEL_44:
      v42 = v41;
      v43 = [v41 CGColor];

      return v43;
    }

LABEL_14:
    v14 = _swiftEmptyArrayStorage[4];
    v15 = v14;
    v16 = v13 - 1;
    if (v13 != 1)
    {
      v17 = &_swiftEmptyArrayStorage[5];
      v15 = _swiftEmptyArrayStorage[4];
      do
      {
        v18 = *v17++;
        v19 = v18;
        if (v18 < v15)
        {
          v15 = v19;
        }

        --v16;
      }

      while (v16);
    }

    v20 = v13;
    if (v13 > 3)
    {
      v21 = v13 & 0xFFFFFFFFFFFFFFFCLL;
      v23 = vdupq_lane_s64(*&v20, 0);
      v24 = &_swiftEmptyArrayStorage[6];
      v22 = 0.0;
      v25 = v13 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v26 = vdivq_f64(v24[-1], v23);
        v27 = vdivq_f64(*v24, v23);
        v22 = v22 + v26.f64[0] + v26.f64[1] + v27.f64[0] + v27.f64[1];
        v24 += 2;
        v25 -= 4;
      }

      while (v25);
      if (v13 == v21)
      {
LABEL_26:
        v31 = v13 - 1;
        if (v13 != 1)
        {
          v32 = &_swiftEmptyArrayStorage[5];
          do
          {
            v33 = *v32++;
            v34 = v33;
            if (v14 < v33)
            {
              v14 = v34;
            }

            --v31;
          }

          while (v31);
        }

        if (v22 * 0.9 >= a1)
        {
          if (a1 < 0.0 || v22 == 0.0)
          {
            goto LABEL_43;
          }
        }

        else if (a1 < 0.0 || v22 == 0.0 || v22 * 1.1 > a1)
        {
          goto LABEL_43;
        }

        v35 = (a1 - v15) / (v14 - v15);
        if (v35 >= 0.5)
        {
          v40 = v35 + -0.5 + v35 + -0.5;
          v37 = round(v40 * -179.0 + 255.0);
          v38 = round(v40 * 13.0 + 204.0);
          v39 = v40 * 100.0 + 0.0;
        }

        else
        {
          v36 = v35 + v35;
          v37 = round(v36 * 0.0 + 255.0);
          v38 = round(v36 * 145.0 + 59.0);
          v39 = 48.0 - v36 * 48.0;
        }

        v41 = [objc_allocWithZone(UIColor) initWithRed:v37 / 255.0 green:v38 / 255.0 blue:round(v39) / 255.0 alpha:0.85];
        goto LABEL_44;
      }
    }

    else
    {
      v21 = 0;
      v22 = 0.0;
    }

    v28 = v13 - v21;
    v29 = &_swiftEmptyArrayStorage[v21 + 4];
    do
    {
      v30 = *v29++;
      v22 = v22 + v30 / v20;
      --v28;
    }

    while (v28);
    goto LABEL_26;
  }

  v4 = sub_C60E4();
  if (!v4)
  {
    goto LABEL_13;
  }

LABEL_3:
  result = sub_525D8(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    for (i = 0; i != v4; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = sub_C5FE4();
      }

      else
      {
        v7 = *(v3 + 8 * i + 32);
      }

      v8 = v7;
      [v7 speed];
      v10 = v9;

      v12 = *&_swiftEmptyArrayStorage[2];
      v11 = *&_swiftEmptyArrayStorage[3];
      v13 = v12 + 1;
      if (v12 >= v11 >> 1)
      {
        sub_525D8((v11 > 1), v12 + 1, 1);
      }

      *&_swiftEmptyArrayStorage[2] = v13;
      _swiftEmptyArrayStorage[v12 + 4] = v10;
    }

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_1FDC8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutGradientPathRenderer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void (*sub_1FE30(uint64_t *a1, unsigned __int8 a2))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_20098(v5);
  v5[9] = sub_1FF34((v5 + 4), a2, isUniquelyReferenced_nonNull_native);
  return sub_1FED4;
}

void sub_1FED4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

Swift::Int (*sub_1FF34(uint64_t a1, unsigned __int8 a2, char a3))(Swift::Int result)
{
  v4 = v3;
  *(a1 + 8) = v3;
  *(a1 + 24) = a2;
  v8 = *v3;
  v9 = sub_23FF8(a2);
  *(a1 + 25) = v10 & 1;
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_9CE8C();
      v9 = v17;
      goto LABEL_8;
    }

    sub_9AF38(v14, a3 & 1);
    v9 = sub_23FF8(a2);
    if ((v15 & 1) == (v18 & 1))
    {
      goto LABEL_8;
    }

LABEL_13:
    result = sub_C6294();
    __break(1u);
    return result;
  }

LABEL_8:
  *(a1 + 16) = v9;
  if (v15)
  {
    v19 = *(*(*v4 + 56) + 8 * v9);
  }

  else
  {
    v19 = 0;
  }

  *a1 = v19;
  return sub_20050;
}

Swift::Int sub_20050(Swift::Int result)
{
  v1 = *result;
  if (*result)
  {
    v2 = **(result + 8);
    if (*(result + 25))
    {
      *(v2[7] + 8 * *(result + 16)) = v1;
    }

    else
    {
      return sub_9CB10(*(result + 16), *(result + 24), v1, v2);
    }
  }

  else if (*(result + 25))
  {
    return sub_24FC4(*(result + 16), **(result + 8));
  }

  return result;
}

uint64_t (*sub_20098(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_200C0;
}

double sub_200CC(double *a1, unsigned __int8 a2, double a3, double a4, double a5)
{
  v10 = sub_C4004();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 2);
  if (v14)
  {
    v15 = a1[4];
    v16 = a1[5];
    v17 = &a1[2 * v14 + 4];
    v18 = *(v17 - 16);
    v19 = *(v17 - 8);
  }

  else
  {
    v18 = 0.0;
    v19 = 0.0;
    v15 = 0.0;
    v16 = 0.0;
  }

  v20 = [objc_opt_self() polylineWithPoints:a1 + 4 count:v14];

  [v20 boundingMapRect];
  if (a3 >= 1.0 && a4 >= 1.0)
  {
    v51 = v16;
    v52 = v15;
    v53 = v19;
    v54 = v18;
    v25 = sqrt(v23 * v23 + v24 * v24) * 0.5;
    v26 = 8.0;
    v27 = v24;
    v28 = v23;
    v55 = v21;
    v56 = v22;
    if (a2 > 3u)
    {
      if (a2 > 6u)
      {
        (*(v11 + 104))(v13, enum case for JournalFeatureFlags.fullScreenViewer(_:), v10);
        v45 = sub_C3FF4();
        (*(v11 + 8))(v13, v10);

        v35 = v55;
        v36 = v56;
        v34 = v28;
        v33 = v27;
        v46 = 58.0;
        if (v45)
        {
          v46 = a3 * 0.5 - a5;
        }

        v37 = v25 / (a5 + -20.0);
        v38 = v37 * a5;
        v39 = v37 * a3;
        v40 = v37 * a4;
        v41 = v37 * v46;
        goto LABEL_30;
      }
    }

    else
    {
      v29 = 35.0;
      if (a2 == 2)
      {
        v29 = 8.0;
      }

      if (a2 > 1u)
      {
        v26 = v29;
      }
    }

    v30 = sub_C6244();

    v31 = 20.0;
    if ((v30 & 1) == 0)
    {
      if (a2 == 1)
      {

        v37 = v25 / (a5 + -20.0);
        v38 = v37 * a5;
        v39 = v37 * a3;
        v40 = v37 * a4;
        v41 = v37 * v26;
        v33 = v27;
        v34 = v28;
        v35 = v55;
        v36 = v56;
        v43 = v53;
        v42 = v54;
        goto LABEL_31;
      }

      v32 = sub_C6244();

      v33 = v27;
      v34 = v28;
      v35 = v55;
      v36 = v56;
      if (v32)
      {
        goto LABEL_26;
      }

      if (a2 == 3)
      {

        v35 = v55;
        v36 = v56;
        v34 = v28;
        v33 = v27;
        v37 = v25 / (a5 + -15.0);
        v38 = v37 * a5;
        v39 = v37 * a3;
        v40 = v37 * a4;
        v41 = v37 * v26;
        v43 = v53;
        v42 = v54;
        v44 = 12.0;
LABEL_33:
        v48 = v37 * v44 * 0.5;
        v59.origin.y = v51;
        v59.origin.x = v52;
        v59.size.width = v48;
        v59.size.height = v48;
        v57 = MKMapRectUnion(*&v35, v59);
        v60.origin.x = v42;
        v60.origin.y = v43;
        v60.size.width = v48;
        v60.size.height = v48;
        v58 = MKMapRectUnion(v57, v60);
        v21 = v58.origin.x + v58.size.width * 0.5 - (v41 + v38);
        v22 = v58.origin.y + v58.size.height * 0.5 - (v41 + v38);
        v23 = v39;
        v24 = v40;
        goto LABEL_34;
      }

      v47 = sub_C6244();

      if (v47)
      {
        v31 = 15.0;
      }

      else
      {
        v31 = 10.0;
      }
    }

    v33 = v27;
    v34 = v28;
    v35 = v55;
    v36 = v56;
LABEL_26:
    v37 = v25 / (a5 - v31);
    v38 = v37 * a5;
    v39 = v37 * a3;
    v40 = v37 * a4;
    v41 = v26 * v37;
    if (a2 != 7)
    {
      v43 = v53;
      v42 = v54;
      if (a2 == 6)
      {
        v44 = 4.0;
        goto LABEL_33;
      }

      if (a2 == 3)
      {
        v44 = 12.0;
        goto LABEL_33;
      }

LABEL_31:
      v44 = 7.0;
      goto LABEL_33;
    }

LABEL_30:
    v44 = 24.0;
    v43 = v53;
    v42 = v54;
    goto LABEL_33;
  }

LABEL_34:
  *&v49 = MKCoordinateRegionForMapRect(*&v21);

  return v49;
}

uint64_t sub_2070C(double a1, double a2, double a3, double a4, double a5, double a6)
{
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  sub_C5774();
  *(v6 + 64) = sub_C5764();
  v8 = sub_C5724();

  return _swift_task_switch(sub_207AC, v8, v7);
}

uint64_t sub_207AC()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);

  v5 = [objc_allocWithZone(MKMapSnapshotOptions) init];
  v6 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:2];
  [v5 setTraitCollection:v6];

  v14.latitude = v4;
  v14.longitude = v3;
  if (CLLocationCoordinate2DIsValid(v14) && v2 >= 0.0 && v1 >= 0.0)
  {
    [v5 setRegion:{*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40)}];
  }

  v8 = *(v0 + 48);
  v7 = *(v0 + 56);
  [v5 setMapType:0];
  [v5 setSize:{v8, v7}];
  v9 = [objc_allocWithZone(MKStandardMapConfiguration) init];
  v10 = [objc_opt_self() filterExcludingAllCategories];
  [v9 setPointOfInterestFilter:v10];

  [v5 setPreferredConfiguration:v9];
  v11 = *(v0 + 8);

  return v11(v5);
}

id sub_20978(double a1, double a2)
{
  if (qword_104178 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = off_104FD8[0];
  if (*(off_104FD8[0] + &dword_10) && (v5 = sub_2403C(a1, a2), (v6 & 1) != 0))
  {
    v11 = *(*&stru_20.segname[v4 + 16] + 8 * v5);
    swift_endAccess();

    return v11;
  }

  else
  {
    swift_endAccess();
    v8 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:{a1, a2}];
    swift_beginAccess();
    v9 = v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = off_104FD8[0];
    off_104FD8[0] = 0x8000000000000000;
    sub_81B1C(v9, isUniquelyReferenced_nonNull_native, a1, a2);
    off_104FD8[0] = v12;
    swift_endAccess();
    return v9;
  }
}

uint64_t sub_20AE8(void *a1, void *a2, double a3, double a4, double a5, double a6)
{
  v16 = OBJC_IVAR____TtC20JournalNotifications17RouteMapGenerator_routeCoordinates;
  v17 = *&v6[OBJC_IVAR____TtC20JournalNotifications17RouteMapGenerator_routeCoordinates];
  if (v17 >> 62)
  {
    result = sub_C60E4();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8));
    if (!result)
    {
      return result;
    }
  }

  if ((v17 & 0xC000000000000001) != 0)
  {

    v19 = sub_C5FE4();
  }

  else
  {
    if (!*(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_24;
    }

    v19 = *(v17 + 32);
  }

  p_align = &stru_FAFE8.align;
  [v19 coordinate];
  v8 = v20;
  v9 = v21;

  v22 = *&v6[v16];
  if (!(v22 >> 62))
  {
    result = *(&dword_10 + (v22 & 0xFFFFFFFFFFFFFF8));
    if (!result)
    {
      return result;
    }

LABEL_8:
    v23 = result - 1;
    if (!__OFSUB__(result, 1))
    {
      v49 = a5;
      v51 = a6;
      if ((v22 & 0xC000000000000001) == 0)
      {
        if ((v23 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

        if (v23 >= *(&dword_10 + (v22 & 0xFFFFFFFFFFFFFF8)))
        {
LABEL_28:
          __break(1u);
          return result;
        }

        v24 = *(v22 + 8 * v23 + 32);
LABEL_13:
        [v24 *(p_align + 425)];
        v26 = v25;
        v28 = v27;

        v29 = v6[OBJC_IVAR____TtC20JournalNotifications17RouteMapGenerator_sizeType];
        if (v29 == 8)
        {
          v30 = [a2 image];
          [v30 size];
          v32 = v31;
          v34 = v33;

          LOBYTE(v29) = sub_1D5B8(0.0, 0.0, v32, v34);
        }

        v35 = [a2 image];
        [v35 size];
        v37 = v36;
        v39 = v38;

        v40 = sub_20978(v37, v39);
        v41 = swift_allocObject();
        *(v41 + 16) = a2;
        *(v41 + 24) = v29;
        *(v41 + 32) = v6;
        *(v41 + 40) = v8;
        *(v41 + 48) = v9;
        *(v41 + 56) = a1;
        *(v41 + 64) = a3;
        *(v41 + 72) = a4;
        *(v41 + 80) = v50;
        *(v41 + 88) = v52;
        *(v41 + 96) = v26;
        *(v41 + 104) = v28;
        v42 = swift_allocObject();
        *(v42 + 16) = sub_20EE4;
        *(v42 + 24) = v41;
        aBlock[4] = sub_20F18;
        aBlock[5] = v42;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1EEB4;
        aBlock[3] = &unk_F1978;
        v43 = _Block_copy(aBlock);
        v44 = a2;
        v45 = v6;
        v46 = a1;

        v47 = [v40 imageWithActions:v43];

        _Block_release(v43);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if ((isEscapingClosureAtFileLocation & 1) == 0)
        {
          return v47;
        }

        goto LABEL_27;
      }

LABEL_25:

      v24 = sub_C5FE4();

      goto LABEL_13;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  result = sub_C60E4();
  if (result)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_20E9C()
{

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_20F40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_20F58(char a1, char a2)
{
  if (qword_104180 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = off_104FE0[0];
  if (*(off_104FE0[0] + &dword_10) && (v5 = sub_23FF8(a2), (v6 & 1) != 0) && (v7 = *(*&stru_20.segname[v4 + 16] + 8 * v5), *(v7 + 16)) && (v8 = sub_240B0(a1 & 1), (v9 & 1) != 0))
  {
    v26 = *(*(v7 + 56) + 8 * v8);
    swift_endAccess();

    return v26;
  }

  else
  {
    v11 = 0xD000000000000027;
    swift_endAccess();
    if (a1)
    {
      started = type metadata accessor for WorkoutEndLocationAnnotation();
      v13 = "csImageRendererContext8";
    }

    else
    {
      started = type metadata accessor for WorkoutStartLocationAnnotation();
      v13 = "nnotationView.endingPin";
      v11 = 0xD000000000000029;
    }

    v14 = [objc_allocWithZone(started) init];
    v15 = objc_allocWithZone(type metadata accessor for WorkoutLocationAnnotationView());
    v16 = sub_1F200(v14, v11, v13 | 0x8000000000000000, a2);
    swift_beginAccess();
    if (*(off_104FE0[0] + &dword_10) && (sub_23FF8(a2), (v17 & 1) != 0))
    {
      swift_endAccess();
      swift_beginAccess();
      v19 = sub_1F13C(v28, a2);
      if (*v18)
      {
        v20 = v18;
        v16 = v16;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = *v20;
        *v20 = 0x8000000000000000;
        sub_81D74(v16, a1 & 1, isUniquelyReferenced_nonNull_native);
        *v20 = v27;
      }

      (v19)(v28, 0);
    }

    else
    {
      swift_endAccess();
      sub_3CB0(&qword_105100);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_CE5B0;
      *(inited + 32) = a1 & 1;
      v23 = inited + 32;
      *(inited + 40) = v16;
      v24 = sub_25664(inited);
      swift_setDeallocating();
      v16 = v16;
      sub_C060(v23, &qword_105108);
      swift_beginAccess();
      v25 = swift_isUniquelyReferenced_nonNull_native();
      v29 = off_104FE0[0];
      off_104FE0[0] = 0x8000000000000000;
      sub_81C50(v24, a2, v25);
      off_104FE0[0] = v29;
    }

    swift_endAccess();
    return v16;
  }
}

void sub_2125C(CGContext *a1, uint64_t a2, void *a3, double a4, double a5, double a6, double a7, CGFloat a8)
{
  v65 = a3;
  v62 = a8;
  v63.size.width = a6;
  v63.size.height = a7;
  v63.origin.y = a5;
  v63.origin.x = a4;
  v68 = sub_C3CB4();
  v10 = *(v68 - 8);
  __chkstk_darwin(v68);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  CGContextSetBlendMode(a1, kCGBlendModeNormal);
  v57 = a2;
  v13 = *(a2 + OBJC_IVAR____TtC20JournalNotifications27WorkoutGradientPathRenderer_routeCoordinates);
  if (!(v13 >> 62))
  {
    if (!*(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8)))
    {
      return;
    }

LABEL_3:
    v61 = v13 & 0xC000000000000001;
    if ((v13 & 0xC000000000000001) != 0)
    {
      v14 = sub_C5FE4();
    }

    else
    {
      if (!*(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        goto LABEL_29;
      }

      v14 = *(v13 + 32);
    }

    v15 = v14;
    v16 = [v14 timestamp];
    sub_C3C64();

    sub_C39B4();
    v18 = v17;
    v20 = *(v10 + 8);
    v19 = v10 + 8;
    v67 = v20;
    v20(v12, v68);
    if (v13 >> 62)
    {
      v21 = sub_C60E4();
      if (!v21)
      {
LABEL_23:

        return;
      }
    }

    else
    {
      v21 = *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8));
      if (!v21)
      {
        goto LABEL_23;
      }
    }

    if (v21 >= 1)
    {
      v60 = a1;
      v22 = 0;
      v23 = v62;
      v64 = v23 * v23;
      v56 = v23 + v23;
      v55 = xmmword_CE0A0;
      v24 = v61;
      v59 = v19;
      v58 = v13;
      do
      {
        v66 = v18;
        if (v24)
        {
          v27 = sub_C5FE4();
        }

        else
        {
          v27 = *(v13 + 8 * v22 + 32);
        }

        v28 = v27;
        [v15 coordinate];
        v29 = MKMapPointForCoordinate(v70);
        [v28 coordinate];
        v30 = MKMapPointForCoordinate(v71);
        v31 = MKCoordinateForMapPoint(v29);
        v32 = v65;
        [v65 pointForCoordinate:{v31.latitude, v31.longitude}];
        v34 = v33;
        v36 = v35;
        v37 = MKCoordinateForMapPoint(v30);
        [v32 pointForCoordinate:{v37.latitude, v37.longitude}];
        v39 = v38;
        v41 = v40;
        if (v64 <= (v38 - v34) * (v38 - v34) + (v40 - v36) * (v40 - v36))
        {
          v74.origin.x = fmin(v29.x, v30.x);
          v74.origin.y = fmin(v29.y, v30.y);
          v74.size.width = vabdd_f64(v29.x, v30.x);
          v74.size.height = vabdd_f64(v29.y, v30.y);
          if (MKMapRectIntersectsRect(v63, v74))
          {
            v42 = [v28 timestamp];
            sub_C3C64();

            sub_C39B4();
            v44 = v43;
            v67(v12, v68);
            v45 = v44 - v66;
            [v28 speed];
            v47 = v46;
            Mutable = CGPathCreateMutable();
            v69.b = 0.0;
            v69.c = 0.0;
            v69.a = 1.0;
            v69.d = 1.0;
            v69.tx = 0.0;
            v69.ty = 0.0;
            v72.x = v34;
            v72.y = v36;
            sub_C5AA4(v72, &v69);
            v73.x = v39;
            v73.y = v41;
            sub_C5AB4(v73, &v69);
            if (v45 <= 5.0)
            {
              v50 = sub_C5D74();
              v51 = v60;
              CGContextAddPath(v60, v50);
              v53 = sub_1F9A4(v47);
              CGContextSetFillColorWithColor(v51, v53);
              v54 = kCGPathFill;
            }

            else
            {
              sub_3CB0(&qword_1050F8);
              v49 = swift_allocObject();
              *(v49 + 16) = v55;
              *(v49 + 32) = 0;
              *(v49 + 40) = v56;
              v50 = sub_C5D64();

              v51 = v60;
              CGContextAddPath(v60, v50);
              CGContextSetLineWidth(v51, v62);
              CGContextSetLineCap(v51, kCGLineCapRound);
              v52 = [objc_opt_self() grayColor];
              v53 = [v52 CGColor];

              CGContextSetStrokeColorWithColor(v51, v53);
              v54 = kCGPathStroke;
            }

            CGContextDrawPath(v51, v54);
            v13 = v58;
            v24 = v61;
          }

          v15 = v28;
        }

        ++v22;
        v25 = [v28 timestamp];
        sub_C3C64();

        sub_C39B4();
        v18 = v26;

        v67(v12, v68);
      }

      while (v21 != v22);
      goto LABEL_23;
    }

LABEL_29:
    __break(1u);
    return;
  }

  if (sub_C60E4())
  {
    goto LABEL_3;
  }
}

unint64_t sub_21840()
{
  result = qword_104820;
  if (!qword_104820)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_104820);
  }

  return result;
}

void sub_2188C(CGContext *a1, uint64_t a2, double a3, double a4, double a5, double a6, CGFloat a7, double a8, double a9)
{
  v60 = a9;
  v55 = a7;
  v57.size.width = a5;
  v57.size.height = a6;
  v57.origin.y = a4;
  v57.origin.x = a3;
  v12 = sub_C3CB4();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  CGContextSetBlendMode(a1, kCGBlendModeNormal);
  v51 = a2;
  v16 = *(a2 + OBJC_IVAR____TtC20JournalNotifications27WorkoutGradientPathRenderer_routeCoordinates);
  v17 = v16 >> 62;
  v56 = v16;
  if (!(v16 >> 62))
  {
    if (!*(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8)))
    {
      return;
    }

LABEL_3:
    v59 = v56 & 0xC000000000000001;
    if ((v56 & 0xC000000000000001) != 0)
    {
      v18 = sub_C5FE4();
    }

    else
    {
      if (!*(&dword_10 + (v56 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        goto LABEL_29;
      }

      v18 = *(v56 + 32);
    }

    v19 = v18;
    v20 = [v18 timestamp];
    sub_C3C64();

    sub_C39B4();
    v22 = v21;
    v23 = *(v13 + 8);
    v54 = v13 + 8;
    v61 = v23;
    v23(v15, v12);
    if (v17)
    {
      v24 = sub_C60E4();
      if (!v24)
      {
LABEL_23:

        return;
      }
    }

    else
    {
      v24 = *(&dword_10 + (v56 & 0xFFFFFFFFFFFFFF8));
      if (!v24)
      {
        goto LABEL_23;
      }
    }

    if (v24 >= 1)
    {
      v53 = a1;
      v25 = 0;
      v26 = v55;
      v58 = v26 * v26;
      v50 = v26 + v26;
      v49 = xmmword_CE0A0;
      v27 = v56;
      v52 = v12;
      do
      {
        if (v59)
        {
          v36 = sub_C5FE4();
        }

        else
        {
          v36 = *(v27 + 8 * v25 + 32);
        }

        v37 = v36;
        [v19 coordinate];
        v38 = MKMapPointForCoordinate(v63);
        [v37 coordinate];
        v39 = MKMapPointForCoordinate(v64);
        v40 = v38.y - v60;
        v41 = v39.y - v60;
        if (v58 <= (v39.x - a8 - (v38.x - a8)) * (v39.x - a8 - (v38.x - a8)) + (v41 - v40) * (v41 - v40))
        {
          v67.origin.x = fmin(v38.x, v39.x);
          v67.origin.y = fmin(v38.y, v39.y);
          v67.size.width = vabdd_f64(v38.x, v39.x);
          v67.size.height = vabdd_f64(v38.y, v39.y);
          if (MKMapRectIntersectsRect(v57, v67))
          {
            v42 = [v37 timestamp];
            sub_C3C64();

            sub_C39B4();
            v44 = v43;
            v61(v15, v12);
            v45 = v44 - v22;
            [v37 speed];
            v47 = v46;
            Mutable = CGPathCreateMutable();
            v62.b = 0.0;
            v62.c = 0.0;
            v62.a = 1.0;
            v62.d = 1.0;
            v62.tx = 0.0;
            v62.ty = 0.0;
            v65.x = v38.x - a8;
            v65.y = v40;
            sub_C5AA4(v65, &v62);
            v66.x = v39.x - a8;
            v66.y = v41;
            sub_C5AB4(v66, &v62);
            if (v45 > 5.0)
            {
              sub_3CB0(&qword_1050F8);
              v28 = swift_allocObject();
              *(v28 + 16) = v49;
              *(v28 + 32) = 0;
              *(v28 + 40) = v50;
              v29 = sub_C5D64();

              v30 = v53;
              CGContextAddPath(v53, v29);
              CGContextSetLineWidth(v30, v55);
              CGContextSetLineCap(v30, kCGLineCapRound);
              v31 = [objc_opt_self() grayColor];
              v32 = [v31 CGColor];

              CGContextSetStrokeColorWithColor(v30, v32);
              v33 = kCGPathStroke;
            }

            else
            {
              v29 = sub_C5D74();
              v30 = v53;
              CGContextAddPath(v53, v29);
              v32 = sub_1F9A4(v47);
              CGContextSetFillColorWithColor(v30, v32);
              v33 = kCGPathFill;
            }

            CGContextDrawPath(v30, v33);
            v12 = v52;
            v27 = v56;
          }

          v19 = v37;
        }

        ++v25;
        v34 = [v37 timestamp];
        sub_C3C64();

        sub_C39B4();
        v22 = v35;

        v61(v15, v12);
      }

      while (v24 != v25);
      goto LABEL_23;
    }

LABEL_29:
    __break(1u);
    return;
  }

  if (sub_C60E4())
  {
    goto LABEL_3;
  }
}

uint64_t getEnumTagSinglePayload for WorkoutLocationAnnotationView.WorkoutLocationAnnotationType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutLocationAnnotationView.WorkoutLocationAnnotationType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21FAC()
{
  result = qword_105110;
  if (!qword_105110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_105110);
  }

  return result;
}

uint64_t sub_2200C(uint64_t a1)
{
  v2[3] = v1;
  if (a1)
  {
    swift_getObjectType();
    v3 = sub_C5724();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v2[4] = v3;
  v2[5] = v5;

  return _swift_task_switch(sub_2209C, v3, v5);
}

uint64_t sub_2209C()
{
  v1 = v0[3];
  v2 = *(v1 + qword_105128);
  v3 = swift_task_alloc();
  v0[6] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[7] = v4;
  v5 = sub_3CB0(&qword_105250);
  *v4 = v0;
  v4[1] = sub_221A4;

  return CKDatabase.configuredWith<A>(configuration:group:body:)(v0 + 2, v2, 0, &unk_CE8F8, v3, v5);
}

uint64_t sub_221A4()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    v5 = sub_222DC;
  }

  else
  {

    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    v5 = sub_222C0;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_222DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_22364, 0, 0);
}

uint64_t sub_22364()
{
  v1 = *(*(v0 + 32) + qword_105118);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_22410;

  return CKDatabase.records(for:desiredKeys:)(v1, 0);
}

uint64_t sub_22410(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 48) = a1;

    return _swift_task_switch(sub_2255C, 0, 0);
  }
}

void sub_225B0()
{

  v1 = *(v0 + qword_105128);
}

id sub_22600()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BatchRecordDownloadOperation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_22638(uint64_t a1)
{

  v2 = *(a1 + qword_105128);
}

uint64_t type metadata accessor for BatchRecordDownloadOperation()
{
  result = qword_105158;
  if (!qword_105158)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22738(uint64_t a1, uint64_t a2)
{
  v3[3] = a1;
  v3[4] = v2;
  if (a2)
  {
    swift_getObjectType();
    v4 = sub_C5724();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3[5] = v4;
  v3[6] = v6;

  return _swift_task_switch(sub_227CC, v4, v6);
}

uint64_t sub_227CC()
{
  v1 = v0[4];
  v2 = *(v1 + qword_105128);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[8] = v4;
  v5 = sub_3CB0(&qword_105250);
  *v4 = v0;
  v4[1] = sub_228D4;

  return CKDatabase.configuredWith<A>(configuration:group:body:)(v0 + 2, v2, 0, &unk_CE8E8, v3, v5);
}

uint64_t sub_228D4()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_22A10;
  }

  else
  {

    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_229F0;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_22A10()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22A7C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D138;

  return sub_22340(a1, a2, v6);
}

uint64_t sub_22B2C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1CE7C;

  return sub_22340(a1, a2, v6);
}

id sub_22C1C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CommonTransitions();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_22C74()
{
  if (qword_1041B8 != -1)
  {
    swift_once();
  }

  v1 = qword_1153E8;
  qword_1152F0 = qword_1153E8;

  return v1;
}

char *sub_22CD8(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC20JournalNotifications23CanvasFallbackAssetView_symbolImageView;
  *&v4[v9] = [objc_allocWithZone(UIImageView) init];
  v27.receiver = v4;
  v27.super_class = type metadata accessor for CanvasFallbackAssetView();
  v10 = objc_msgSendSuper2(&v27, "initWithFrame:", a1, a2, a3, a4);
  [v10 setContentMode:2];
  if (qword_104188 != -1)
  {
    swift_once();
  }

  v11 = qword_1152F0;
  [v10 setBackgroundColor:qword_1152F0];
  v12 = OBJC_IVAR____TtC20JournalNotifications23CanvasFallbackAssetView_symbolImageView;
  [*&v10[OBJC_IVAR____TtC20JournalNotifications23CanvasFallbackAssetView_symbolImageView] setContentMode:2];
  [*&v10[v12] setTintColor:v11];
  [v10 addSubview:*&v10[v12]];
  v13 = *&v10[v12];
  v14 = [v13 superview];
  p_align = &stru_FAFE8.align;
  if (v14)
  {
    v16 = v14;
    [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
    v17 = [v13 centerYAnchor];
    v18 = [v16 centerYAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];

    [v19 setConstant:0.0];
    if (v19)
    {
      [v19 setActive:1];
    }

    p_align = (&stru_FAFE8 + 24);
  }

  else
  {
    v19 = 0;
    v16 = v13;
  }

  v20 = *&v10[v12];
  v21 = [v20 superview];
  if (v21)
  {
    v22 = v21;
    [v20 *(p_align + 454)];
    v23 = [v22 centerXAnchor];
    v24 = [v20 centerXAnchor];
    v25 = [v24 constraintEqualToAnchor:v23];

    [v25 setConstant:0.0];
    if (v25)
    {
      [v25 setActive:1];
    }
  }

  else
  {
    v25 = 0;
    v22 = v20;
  }

  return v10;
}

uint64_t sub_23094()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

id sub_230E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CanvasFallbackAssetView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_2316C(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC20JournalNotifications16JournalAssetView_fallbackView;
  type metadata accessor for CanvasFallbackAssetView();
  *&v4[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4[OBJC_IVAR____TtC20JournalNotifications16JournalAssetView_hasCalledSizeTypeUpdated] = 0;
  v4[OBJC_IVAR____TtC20JournalNotifications16JournalAssetView_sizeType] = 6;
  *&v4[OBJC_IVAR____TtC20JournalNotifications16JournalAssetView_loadingDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4[OBJC_IVAR____TtC20JournalNotifications16JournalAssetView_isAssetFinishedLoading] = 0;
  v11.receiver = v4;
  v11.super_class = type metadata accessor for JournalAssetView();
  return objc_msgSendSuper2(&v11, "initWithFrame:", a1, a2, a3, a4);
}

id sub_23264(void *a1)
{
  v3 = OBJC_IVAR____TtC20JournalNotifications16JournalAssetView_fallbackView;
  type metadata accessor for CanvasFallbackAssetView();
  *&v1[v3] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v1[OBJC_IVAR____TtC20JournalNotifications16JournalAssetView_hasCalledSizeTypeUpdated] = 0;
  v1[OBJC_IVAR____TtC20JournalNotifications16JournalAssetView_sizeType] = 6;
  *&v1[OBJC_IVAR____TtC20JournalNotifications16JournalAssetView_loadingDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC20JournalNotifications16JournalAssetView_isAssetFinishedLoading] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for JournalAssetView();
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

id sub_23358()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JournalAssetView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_23424(char a1, char a2, double a3)
{
  v4 = v3;
  v8 = [v4 superview];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = [v4 bottomAnchor];
  v11 = [v9 bottomAnchor];
  v12 = [v10 *(&off_F1A48)[a1]];

  if (v12)
  {
    [v12 setConstant:-a3];
    if (a2)
    {
      [v12 setActive:1];
    }
  }

  else if (a2)
  {
    v12 = 0;
  }

  return v12;
}

void sub_23550(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  sub_C6324(*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  sub_C6324(*&v3);
}

Swift::Int sub_235A0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_C62F4();
  sub_23550(v1, v2);
  return sub_C6344();
}

Swift::Int sub_235FC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_C62F4();
  sub_23550(v1, v2);
  return sub_C6344();
}

unint64_t sub_2368C()
{
  result = qword_1053D0;
  if (!qword_1053D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1053D0);
  }

  return result;
}

id sub_236E0(int a1)
{
  v2 = v1;
  if (a1 && (v10 = v1, v4 = [v1 fontDescriptor], v5 = objc_msgSend(v10, "fontDescriptor"), v6 = objc_msgSend(v5, "symbolicTraits"), v5, v7 = objc_msgSend(v4, "fontDescriptorWithSymbolicTraits:", v6 | a1), v4, v2 = v10, v7))
  {
    v8 = [objc_opt_self() fontWithDescriptor:v7 size:0.0];

    return v8;
  }

  else
  {

    return v2;
  }
}

id sub_237E8@<X0>(id *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(a2 + 16);
  if (v6 > 1)
  {
    v26 = a3;
    if (v6 == 2)
    {
      v25 = a2[1];
      sub_3CB0(&qword_1053D8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_CE5B0;
      *(inited + 32) = UIFontDescriptorFeatureSettingsAttribute;
      sub_3CB0(&qword_105400);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_CE5B0;
      sub_3CB0(&qword_105408);
      v17 = swift_initStackObject();
      *(v17 + 16) = xmmword_CE0A0;
      v18 = UIFontFeatureTypeIdentifierKey_ForNewSwiftAPI;
      *(v17 + 32) = UIFontFeatureTypeIdentifierKey_ForNewSwiftAPI;
      v19 = UIFontFeatureSelectorIdentifierKey_ForNewSwiftAPI;
      *(v17 + 40) = v5;
      *(v17 + 48) = v19;
      *(v17 + 56) = v25;
      v20 = UIFontDescriptorFeatureSettingsAttribute;
      v21 = v18;
      v22 = v19;
      v23 = sub_25768(v17);
      swift_setDeallocating();
      sub_3CB0(&qword_105410);
      swift_arrayDestroy();
      *(v16 + 32) = v23;
      *(inited + 64) = sub_3CB0(&qword_105418);
      *(inited + 40) = v16;
      sub_25944(inited, &qword_105428, &unk_CEAD0, &qword_1053F8);
      swift_setDeallocating();
      sub_C060(inited + 32, &qword_1053F8);
      type metadata accessor for AttributeName(0);
      sub_25B58();
      v12.super.isa = sub_C52A4().super.isa;

      v13 = [v4 fontDescriptorByAddingAttributes:v12.super.isa];
    }

    else
    {
      if (v6 != 3)
      {
        result = [v4 fontDescriptorWithDesign:v5];
        if (!result)
        {
          result = v4;
        }

        goto LABEL_12;
      }

      sub_3CB0(&qword_1053D8);
      v7 = swift_initStackObject();
      *(v7 + 16) = xmmword_CE5B0;
      *(v7 + 32) = UIFontDescriptorTraitsAttribute;
      sub_3CB0(&qword_1053E0);
      v8 = swift_initStackObject();
      *(v8 + 16) = xmmword_CE5B0;
      *(v8 + 32) = UIFontWeightTrait;
      *(v8 + 40) = v5;
      v9 = UIFontDescriptorTraitsAttribute;
      v10 = UIFontWeightTrait;
      v11 = sub_25854(v8);
      swift_setDeallocating();
      sub_C060(v8 + 32, &qword_1053E8);
      *(v7 + 64) = sub_3CB0(&qword_1053F0);
      *(v7 + 40) = v11;
      sub_25944(v7, &qword_105428, &unk_CEAD0, &qword_1053F8);
      swift_setDeallocating();
      sub_C060(v7 + 32, &qword_1053F8);
      type metadata accessor for AttributeName(0);
      sub_25B58();
      v12.super.isa = sub_C52A4().super.isa;

      v13 = [v4 fontDescriptorByAddingAttributes:v12.super.isa];
    }

    v24 = v13;

    result = v24;
LABEL_12:
    a3 = v26;
    goto LABEL_13;
  }

  if (*(a2 + 16))
  {
    result = [v4 fontDescriptorWithSymbolicTraits:{objc_msgSend(*a1, "symbolicTraits") & ~v5}];
    if (result)
    {
      goto LABEL_13;
    }

LABEL_15:
    result = v4;
    goto LABEL_13;
  }

  result = [v4 fontDescriptorWithSymbolicTraits:{objc_msgSend(*a1, "symbolicTraits") | v5}];
  if (!result)
  {
    goto LABEL_15;
  }

LABEL_13:
  *a3 = result;
  return result;
}

id sub_23C60(double a1)
{
  v2 = v1;
  v4 = [v1 fontDescriptor];
  v5 = [v4 fontAttributes];

  type metadata accessor for AttributeName(0);
  sub_25B58();
  v6 = sub_C52B4();

  v28 = v6;
  if (*(v6 + 16) && (v7 = sub_2411C(UIFontDescriptorTraitsAttribute), (v8 & 1) != 0) && (sub_B760(*(v6 + 56) + 32 * v7, &v26), sub_3CB0(&qword_105448), (swift_dynamicCast() & 1) != 0))
  {
    v9 = *&v25[0];
  }

  else
  {
    v9 = sub_25944(_swiftEmptyArrayStorage, &qword_105450, &unk_CEB00, &qword_105458);
  }

  type metadata accessor for Weight(0);
  v27 = v10;
  *&v26 = a1;
  sub_D564(&v26, v25);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_81FD4(v25, UIFontWeightTrait, isUniquelyReferenced_nonNull_native);
  sub_24F14(UIFontDescriptorNameAttribute, sub_9D144, &v26);
  sub_C060(&v26, &qword_104818);
  v27 = sub_3CB0(&qword_105448);
  *&v26 = v9;
  sub_D564(&v26, v25);
  v12 = v28;
  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_81E94(v25, UIFontDescriptorTraitsAttribute, v13);
  v28 = v12;
  v14 = [v2 familyName];
  v15 = sub_C5484();
  v17 = v16;

  v27 = &type metadata for String;
  *&v26 = v15;
  *(&v26 + 1) = v17;
  sub_D564(&v26, v25);
  v18 = swift_isUniquelyReferenced_nonNull_native();
  sub_81E94(v25, UIFontDescriptorFamilyAttribute, v18);
  v19 = objc_allocWithZone(UIFontDescriptor);
  isa = sub_C52A4().super.isa;
  v21 = [v19 initWithFontAttributes:{isa, v12}];

  [v2 pointSize];
  v23 = [objc_opt_self() fontWithDescriptor:v21 size:v22];

  return v23;
}

unint64_t sub_23FB0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_C5F44(*(v2 + 40));

  return sub_243DC(a1, v4);
}

unint64_t sub_23FF8(unsigned __int8 a1)
{
  v2 = sub_31F78();

  return sub_244A4(a1, v2);
}

unint64_t sub_2403C(double a1, double a2)
{
  sub_C62F4();
  sub_23550(a1, a2);
  v4 = sub_C6344();

  return sub_2472C(v4, a1, a2);
}

unint64_t sub_240B0(char a1)
{
  sub_C62F4();
  sub_C6304(a1 & 1);
  v2 = sub_C6344();

  return sub_247A4(a1 & 1, v2);
}

unint64_t sub_2411C(uint64_t a1)
{
  sub_C5484();
  sub_C62F4();
  sub_C5514();
  v2 = sub_C6344();

  return sub_24814(a1, v2);
}

unint64_t sub_241AC(uint64_t a1, uint64_t a2)
{
  sub_C62F4();
  sub_C5514();
  v4 = sub_C6344();

  return sub_24918(a1, a2, v4);
}

unint64_t sub_24224(uint64_t a1)
{
  v2 = sub_C62E4();

  return sub_249D0(a1, v2);
}

unint64_t sub_24268(unsigned __int8 a1)
{
  sub_C62F4();
  sub_B4944(a1);
  sub_C5514();

  v2 = sub_C6344();

  return sub_24A3C(a1, v2);
}

unint64_t sub_242F0(int64_t a1)
{
  sub_C62F4();
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v2 = 2;
      goto LABEL_11;
    }

    if (a1 == 3)
    {
      v2 = 3;
      goto LABEL_11;
    }

LABEL_8:
    sub_C6304(4uLL);
    sub_C5484();
    sub_C5514();

    goto LABEL_12;
  }

  if (!a1)
  {
    v2 = 0;
    goto LABEL_11;
  }

  if (a1 != 1)
  {
    goto LABEL_8;
  }

  v2 = 1;
LABEL_11:
  sub_C6304(v2);
LABEL_12:
  v3 = sub_C6344();

  return sub_24DA4(a1, v3);
}

unint64_t sub_243DC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_25BB0(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_C5F54();
      sub_B6B8(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_244A4(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v25 = ~v3;
    v5 = 0xEA00000000006C6CLL;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v27 + 48) + v4);
      if (v7 > 3)
      {
        if (*(*(v27 + 48) + v4) > 5u)
        {
          if (v7 == 6)
          {
            v13 = 0xE500000000000000;
            v12 = 0x6C6C616D73;
          }

          else
          {
            v13 = 0xEA00000000006E65;
            v12 = 0x657263536C6C7566;
          }
        }

        else
        {
          if (v7 == 4)
          {
            v12 = 0x6D756964656DLL;
          }

          else
          {
            v12 = 0x61546D756964656DLL;
          }

          if (v7 == 4)
          {
            v13 = 0xE600000000000000;
          }

          else
          {
            v13 = 0xEA00000000006C6CLL;
          }
        }
      }

      else
      {
        if (v7 == 2)
        {
          v8 = 0x69576D756964656DLL;
        }

        else
        {
          v8 = 0x656772616CLL;
        }

        if (v7 == 2)
        {
          v9 = 0xEA00000000006564;
        }

        else
        {
          v9 = 0xE500000000000000;
        }

        if (*(*(v27 + 48) + v4))
        {
          v10 = 0x656772614C78;
        }

        else
        {
          v10 = 0x6154656772614C78;
        }

        if (*(*(v27 + 48) + v4))
        {
          v11 = 0xE600000000000000;
        }

        else
        {
          v11 = 0xEA00000000006C6CLL;
        }

        if (*(*(v27 + 48) + v4) <= 1u)
        {
          v12 = v10;
        }

        else
        {
          v12 = v8;
        }

        if (*(*(v27 + 48) + v4) <= 1u)
        {
          v13 = v11;
        }

        else
        {
          v13 = v9;
        }
      }

      v14 = 0xEA00000000006E65;
      v15 = 0x657263536C6C7566;
      if (v6 == 6)
      {
        v15 = 0x6C6C616D73;
        v14 = 0xE500000000000000;
      }

      v16 = 0x61546D756964656DLL;
      if (v6 == 4)
      {
        v16 = 0x6D756964656DLL;
        v17 = 0xE600000000000000;
      }

      else
      {
        v17 = 0xEA00000000006C6CLL;
      }

      if (v6 <= 5)
      {
        v15 = v16;
        v14 = v17;
      }

      if (v6 == 2)
      {
        v18 = 0x69576D756964656DLL;
      }

      else
      {
        v18 = 0x656772616CLL;
      }

      if (v6 == 2)
      {
        v19 = 0xEA00000000006564;
      }

      else
      {
        v19 = 0xE500000000000000;
      }

      if (v6)
      {
        v20 = 0x656772614C78;
      }

      else
      {
        v20 = 0x6154656772614C78;
      }

      if (v6)
      {
        v5 = 0xE600000000000000;
      }

      if (v6 <= 1)
      {
        v18 = v20;
        v19 = v5;
      }

      v21 = v6 <= 3 ? v18 : v15;
      v22 = v6 <= 3 ? v19 : v14;
      if (v12 == v21 && v13 == v22)
      {
        break;
      }

      v23 = sub_C6244();

      if ((v23 & 1) == 0)
      {
        v4 = (v4 + 1) & v25;
        v5 = 0xEA00000000006C6CLL;
        if ((*(v26 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_2472C(uint64_t a1, double a2, double a3)
{
  v4 = -1 << *(v3 + 32);
  result = a1 & ~v4;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = (*(v3 + 48) + 16 * result);
      v8 = v7[1];
      v9 = *v7 == a2;
      if (v8 == a3 && v9)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_247A4(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_24814(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_C5484();
      v8 = v7;
      if (v6 == sub_C5484() && v8 == v9)
      {
        break;
      }

      v11 = sub_C6244();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_24918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_C6244())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_249D0(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_24A3C(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 <= 4)
      {
        v10 = 0x6563616C70;
        if (v7 == 3)
        {
          v10 = 0x616964656DLL;
        }

        if (v7 == 2)
        {
          v10 = 0x6F69647561;
        }

        v11 = 0x6F746F6870;
        if (*(*(v2 + 48) + v4))
        {
          v11 = 0x6F65646976;
        }

        v9 = *(*(v2 + 48) + v4) <= 1u ? v11 : v10;
        v8 = 0xE500000000000000;
      }

      else if (*(*(v2 + 48) + v4) > 7u)
      {
        if (v7 == 8)
        {
          v9 = 0x4D664F6574617473;
          v8 = 0xEB00000000646E69;
        }

        else if (v7 == 9)
        {
          v8 = 0xE700000000000000;
          v9 = 0x676E6977617264;
        }

        else
        {
          v8 = 0xE800000000000000;
          v9 = 0x69747465666E6F63;
        }
      }

      else if (v7 == 5)
      {
        v9 = 0x61737265766E6F63;
        v8 = 0xEC0000006E6F6974;
      }

      else if (v7 == 6)
      {
        v8 = 0xE800000000000000;
        v9 = 0x7974697669746361;
      }

      else
      {
        v9 = 0x697463656C666572;
        v8 = 0xEA00000000006E6FLL;
      }

      if (v6 <= 4)
      {
        v12 = 0x6563616C70;
        if (v6 == 3)
        {
          v12 = 0x616964656DLL;
        }

        v13 = 0xE500000000000000;
        if (v6 == 2)
        {
          v12 = 0x6F69647561;
          v13 = 0xE500000000000000;
        }

        v14 = 0x6F746F6870;
        if (v6)
        {
          v14 = 0x6F65646976;
        }

        v15 = 0xE500000000000000;
        v16 = v6 <= 1;
      }

      else
      {
        v12 = 0x69747465666E6F63;
        if (v6 == 9)
        {
          v12 = 0x676E6977617264;
        }

        v13 = 0xE700000000000000;
        if (v6 != 9)
        {
          v13 = 0xE800000000000000;
        }

        if (v6 == 8)
        {
          v12 = 0x4D664F6574617473;
          v13 = 0xEB00000000646E69;
        }

        v14 = 0x7974697669746361;
        if (v6 != 6)
        {
          v14 = 0x697463656C666572;
        }

        v15 = 0xEA00000000006E6FLL;
        if (v6 == 6)
        {
          v15 = 0xE800000000000000;
        }

        if (v6 == 5)
        {
          v14 = 0x61737265766E6F63;
          v15 = 0xEC0000006E6F6974;
        }

        v16 = v6 <= 7;
      }

      v17 = v16 ? v14 : v12;
      v18 = v16 ? v15 : v13;
      if (v9 == v17 && v8 == v18)
      {
        break;
      }

      v19 = sub_C6244();

      if ((v19 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_24DA4(unint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      v7 = *(*(v2 + 48) + 8 * v4);
      if (v7 > 1)
      {
        if (v7 == 2)
        {
          if (a1 == 2)
          {
            return v4;
          }

          goto LABEL_4;
        }

        if (v7 == 3)
        {
          if (a1 == 3)
          {
            return v4;
          }

          goto LABEL_4;
        }
      }

      else
      {
        if (!v7)
        {
          if (!a1)
          {
            return v4;
          }

          goto LABEL_4;
        }

        if (v7 == 1)
        {
          if (a1 == 1)
          {
            return v4;
          }

          goto LABEL_4;
        }
      }

      if (a1 >= 4)
      {
        v8 = sub_C5484();
        v10 = v9;
        if (v8 == sub_C5484() && v10 == v11)
        {

          return v4;
        }

        v13 = sub_C6244();

        if (v13)
        {
          return v4;
        }
      }

LABEL_4:
      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

double sub_24F14@<D0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, _OWORD *a3@<X8>)
{
  v5 = v3;
  v7 = sub_2411C(a1);
  if (v8)
  {
    v9 = v7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v13 = *v5;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a2();
      v11 = v13;
    }

    sub_D564((*(v11 + 56) + 32 * v9), a3);
    sub_25250(v9, v11);
    *v5 = v11;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

Swift::Int sub_24FC4(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_C5EB4() + 1) & ~v5;
    do
    {
      sub_C62F4();
      sub_C5514();

      result = sub_C6344();
      v9 = result & v7;
      if (v3 >= v8)
      {
        if (v9 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v9 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v9)
      {
LABEL_10:
        v10 = *(a2 + 48);
        v11 = (v10 + v3);
        v12 = (v10 + v6);
        if (v3 != v6 || v11 >= v12 + 1)
        {
          *v11 = *v12;
        }

        v13 = *(a2 + 56);
        v14 = (v13 + 8 * v3);
        v15 = (v13 + 8 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

void sub_25250(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_C5EB4() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v6);
      sub_C5484();
      sub_C62F4();
      v11 = v10;
      sub_C5514();
      v12 = sub_C6344();

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 32 * v3);
        v19 = (v17 + 32 * v6);
        if (v3 != v6 || v18 >= v19 + 2)
        {
          v9 = v19[1];
          *v18 = *v19;
          v18[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

unint64_t sub_25418(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_3CB0(&qword_105460);
    v3 = sub_C6114();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_23FF8(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_25528(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_3CB0(&qword_105438);
    v3 = sub_C6114();
    v4 = a1 + 32;

    while (1)
    {
      sub_B954(v4, v13, &qword_105440);
      result = sub_23FB0(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_D564(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_25664(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_3CB0(&qword_105468);
  v3 = sub_C6114();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  result = sub_240B0(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = (a1 + 56);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + result) = v4;
    *(v3[7] + 8 * result) = v5;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 8);
    v13 = *v8;
    v14 = v5;
    result = sub_240B0(v4);
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_25768(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_3CB0(&qword_105420);
    v3 = sub_C6114();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_2411C(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_25854(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_3CB0(&qword_105430);
    v3 = sub_C6114();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_2411C(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_25944(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_3CB0(a2);
    v7 = sub_C6114();
    v8 = a1 + 32;

    while (1)
    {
      sub_B954(v8, &v15, a4);
      v9 = v15;
      result = sub_2411C(v15);
      if (v11)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v9;
      result = sub_D564(&v16, (v7[7] + 32 * result));
      v12 = v7[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v7[2] = v14;
      v8 += 40;
      if (!--v4)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

id sub_25A5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = [objc_opt_self() preferredFontDescriptorWithTextStyle:a1 compatibleWithTraitCollection:a3];
  v4 = *(a2 + 16);
  v5 = v15;
  v6 = v5;
  v7 = v5;
  if (v4)
  {
    v8 = (a2 + 48);
    v7 = v5;
    do
    {
      v9 = *v8;
      v13 = *(v8 - 1);
      v14 = v9;
      sub_237E8(&v15, &v13, &v12);

      v7 = v12;
      v15 = v12;
      v8 += 24;
      --v4;
    }

    while (v4);
  }

  v10 = [objc_opt_self() fontWithDescriptor:v7 size:0.0];
  return v10;
}

unint64_t sub_25B58()
{
  result = qword_104618;
  if (!qword_104618)
  {
    type metadata accessor for AttributeName(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_104618);
  }

  return result;
}

__n128 sub_25C18(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_25C2C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_25C74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

void *sub_25CE4(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC20JournalNotifications14VideoAssetView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = &v4[OBJC_IVAR____TtC20JournalNotifications14VideoAssetView_timeObserver];
  *v9 = 0u;
  v9[1] = 0u;
  *&v4[OBJC_IVAR____TtC20JournalNotifications14VideoAssetView_playerStatusObserver] = 0;
  *&v4[OBJC_IVAR____TtC20JournalNotifications14VideoAssetView_playerTimeControlStatusObserver] = 0;
  v10 = OBJC_IVAR____TtC20JournalNotifications14VideoAssetView_thumbnailView;
  *&v4[v10] = [objc_allocWithZone(UIImageView) init];
  *&v4[OBJC_IVAR____TtC20JournalNotifications14VideoAssetView_playerView] = 0;
  v11 = &v4[OBJC_IVAR____TtC20JournalNotifications14VideoAssetView_finishPlayingAction];
  *v11 = 0;
  v11[1] = 0;
  v4[OBJC_IVAR____TtC20JournalNotifications14VideoAssetView_isLoaded] = 0;
  v4[OBJC_IVAR____TtC20JournalNotifications14VideoAssetView_didThumbnailFinishLoading] = 0;
  *&v4[OBJC_IVAR____TtC20JournalNotifications14VideoAssetView_videoAsset] = 0;
  *&v4[OBJC_IVAR____TtC20JournalNotifications14VideoAssetView_thumbnailOverride] = 0;
  v12 = OBJC_IVAR____TtC20JournalNotifications14VideoAssetView_latestImageRequestID;
  v13 = sub_C3D14();
  (*(*(v13 - 8) + 56))(&v4[v12], 1, 1, v13);
  v4[OBJC_IVAR____TtC20JournalNotifications14VideoAssetView_isAutoPlaying] = 0;
  v14 = CADynamicRangeHigh;
  *&v4[OBJC_IVAR____TtC20JournalNotifications14VideoAssetView_preferredVideoDynamicRange] = CADynamicRangeHigh;
  *&v4[OBJC_IVAR____TtC20JournalNotifications14VideoAssetView_resourceConservationLevelWhilePaused] = 0;
  v21.receiver = v4;
  v21.super_class = type metadata accessor for VideoAssetView();
  v15 = v14;
  v16 = objc_msgSendSuper2(&v21, "initWithFrame:", a1, a2, a3, a4);
  v17 = *(&stru_248.reserved2 + (swift_isaMask & *v16));
  v18 = v16;
  v17(v18, v19);

  return v18;
}

void *sub_25F0C(void *a1)
{
  *&v1[OBJC_IVAR____TtC20JournalNotifications14VideoAssetView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3 = &v1[OBJC_IVAR____TtC20JournalNotifications14VideoAssetView_timeObserver];
  *v3 = 0u;
  v3[1] = 0u;
  *&v1[OBJC_IVAR____TtC20JournalNotifications14VideoAssetView_playerStatusObserver] = 0;
  *&v1[OBJC_IVAR____TtC20JournalNotifications14VideoAssetView_playerTimeControlStatusObserver] = 0;
  v4 = OBJC_IVAR____TtC20JournalNotifications14VideoAssetView_thumbnailView;
  *&v1[v4] = [objc_allocWithZone(UIImageView) init];
  *&v1[OBJC_IVAR____TtC20JournalNotifications14VideoAssetView_playerView] = 0;
  v5 = &v1[OBJC_IVAR____TtC20JournalNotifications14VideoAssetView_finishPlayingAction];
  *v5 = 0;
  v5[1] = 0;
  v1[OBJC_IVAR____TtC20JournalNotifications14VideoAssetView_isLoaded] = 0;
  v1[OBJC_IVAR____TtC20JournalNotifications14VideoAssetView_didThumbnailFinishLoading] = 0;
  *&v1[OBJC_IVAR____TtC20JournalNotifications14VideoAssetView_videoAsset] = 0;
  *&v1[OBJC_IVAR____TtC20JournalNotifications14VideoAssetView_thumbnailOverride] = 0;
  v6 = OBJC_IVAR____TtC20JournalNotifications14VideoAssetView_latestImageRequestID;
  v7 = sub_C3D14();
  (*(*(v7 - 8) + 56))(&v1[v6], 1, 1, v7);
  v1[OBJC_IVAR____TtC20JournalNotifications14VideoAssetView_isAutoPlaying] = 0;
  v8 = CADynamicRangeHigh;
  *&v1[OBJC_IVAR____TtC20JournalNotifications14VideoAssetView_preferredVideoDynamicRange] = CADynamicRangeHigh;
  *&v1[OBJC_IVAR____TtC20JournalNotifications14VideoAssetView_resourceConservationLevelWhilePaused] = 0;
  v16.receiver = v1;
  v16.super_class = type metadata accessor for VideoAssetView();
  v9 = v8;
  v10 = objc_msgSendSuper2(&v16, "initWithCoder:", a1);
  v11 = v10;
  if (v10)
  {
    v12 = *(&stru_248.reserved2 + (swift_isaMask & *v10));
    v13 = v10;
    v12(v13, v14);
  }

  return v11;
}

void sub_26118()
{
  [v0 addSubview:*&v0[OBJC_IVAR____TtC20JournalNotifications16JournalAssetView_fallbackView]];
  v1 = *&v0[OBJC_IVAR____TtC20JournalNotifications14VideoAssetView_thumbnailView];
  [v0 addSubview:v1];
  [v1 setContentMode:2];
  [v1 setAlpha:0.0];
  [v0 setIsAccessibilityElement:1];
  v2 = sub_C5444();
  [v0 setAccessibilityIdentifier:v2];

  [v0 setAccessibilityIgnoresInvertColors:1];
  [v0 setClipsToBounds:0];
  v3 = objc_opt_self();
  v4 = [v3 defaultCenter];
  [v4 addObserver:v0 selector:"autoPlayEnabledStatusDidChange" name:UIAccessibilityVideoAutoplayStatusDidChangeNotification object:0];

  v5 = [v3 defaultCenter];
  [v5 addObserver:v0 selector:"autoPlayEnabledStatusDidChange" name:UIAccessibilityReduceMotionStatusDidChangeNotification object:0];

  v6 = [v0 traitCollection];
  v7 = [v6 userInterfaceIdiom];

  if (v7 == &dword_4 + 1)
  {
    v8 = [v3 defaultCenter];
    v9 = sub_C5C14();
    [v8 addObserver:v0 selector:"autoPlayEnabledStatusDidChange" name:v9 object:0];
  }
}

void sub_26360()
{
  sub_233FC(v0 + OBJC_IVAR____TtC20JournalNotifications14VideoAssetView_delegate);
  sub_C060(v0 + OBJC_IVAR____TtC20JournalNotifications14VideoAssetView_timeObserver, &qword_104818);

  sub_2881C(*(v0 + OBJC_IVAR____TtC20JournalNotifications14VideoAssetView_finishPlayingAction));
  sub_C060(v0 + OBJC_IVAR____TtC20JournalNotifications14VideoAssetView_latestImageRequestID, &qword_104778);
  v1 = *(v0 + OBJC_IVAR____TtC20JournalNotifications14VideoAssetView_preferredVideoDynamicRange);
}

id sub_26454()
{
  sub_266D8();
  sub_282F8();
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  v2 = *&v0[OBJC_IVAR____TtC20JournalNotifications14VideoAssetView_playerView];
  *&v0[OBJC_IVAR____TtC20JournalNotifications14VideoAssetView_playerView] = 0;

  v4.receiver = v0;
  v4.super_class = type metadata accessor for VideoAssetView();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t type metadata accessor for VideoAssetView()
{
  result = qword_105508;
  if (!qword_105508)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_266D8()
{
  v1 = (v0 + OBJC_IVAR____TtC20JournalNotifications14VideoAssetView_finishPlayingAction);
  v2 = *(v0 + OBJC_IVAR____TtC20JournalNotifications14VideoAssetView_finishPlayingAction);
  *v1 = 0;
  v1[1] = 0;
  sub_2881C(v2);
  v3 = OBJC_IVAR____TtC20JournalNotifications14VideoAssetView_playerView;
  v4 = *(v0 + OBJC_IVAR____TtC20JournalNotifications14VideoAssetView_playerView);
  if (v4)
  {
    v5 = v4;
    v6 = [v5 layer];
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (!v7)
    {
    }

    v8 = [v7 player];

    [v8 pause];
    v9 = *(v0 + v3);
    if (v9)
    {
      v10 = v9;
      v11 = [v10 layer];
      objc_opt_self();
      v12 = swift_dynamicCastObjCClass();
      if (!v12)
      {
      }

      v13 = [v12 player];

      if (v13)
      {
        [v13 replaceCurrentItemWithPlayerItem:0];
      }

      v14 = *(v0 + v3);
      if (v14)
      {
        v15 = v14;
        v16 = [v15 layer];
        objc_opt_self();
        v17 = swift_dynamicCastObjCClass();
        if (!v17)
        {
        }

        [v17 setPlayer:0];
      }
    }
  }

  *(v0 + OBJC_IVAR____TtC20JournalNotifications14VideoAssetView_isLoaded) = 0;
  *(v0 + OBJC_IVAR____TtC20JournalNotifications14VideoAssetView_isAutoPlaying) = 0;
}

uint64_t sub_268A8()
{
  v1 = v0;
  v2 = sub_3CB0(&qword_104778);
  __chkstk_darwin(v2 - 8);
  v4 = &v52 - v3;
  v5 = sub_C3D14();
  v60 = *(v5 - 8);
  v61 = v5;
  v6 = *(v60 + 64);
  v7 = __chkstk_darwin(v5);
  v57 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v52 - v8;
  v10 = sub_C3CB4();
  v58 = *(v10 - 8);
  v59 = v10;
  v11 = *(v58 + 64);
  v12 = __chkstk_darwin(v10);
  v56 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v62 = &v52 - v13;
  v14 = sub_C4004();
  v15 = *(v14 - 8);
  result = __chkstk_darwin(v14);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *&v1[OBJC_IVAR____TtC20JournalNotifications14VideoAssetView_videoAsset];
  if (v19 && !*&v1[OBJC_IVAR____TtC20JournalNotifications14VideoAssetView_thumbnailOverride])
  {
    (*(v15 + 104))(v18, enum case for JournalFeatureFlags.debug(_:), v14);
    v20 = v19;
    v21 = v1;
    v22 = sub_C3FF4();
    (*(v15 + 8))(v18, v14);
    if (v22)
    {
      v23 = *&v20[OBJC_IVAR____TtC20JournalNotifications10VideoAsset_metadata];
      v24 = [v21 layer];
      v25 = v24;
      if (v23)
      {
        [v24 setBorderColor:0];
        v26 = 0.0;
      }

      else
      {
        v27 = [objc_opt_self() redColor];
        v28 = [v27 CGColor];

        [v25 setBorderColor:v28];
        v26 = 5.0;
        v25 = v28;
      }

      v29 = [v21 layer];
      [v29 setBorderWidth:v26];
    }

    sub_C3CA4();
    v52 = OBJC_IVAR____TtC20JournalNotifications16JournalAssetView_sizeType;
    v30 = v21[OBJC_IVAR____TtC20JournalNotifications16JournalAssetView_sizeType];
    v55 = v20;
    if (v30 > 6)
    {
    }

    else
    {
      v31 = sub_C6244();

      if ((v31 & 1) == 0)
      {
        v32 = v21;
        if (qword_1042B0 != -1)
        {
          swift_once();
        }

        v33 = &qword_1155D0;
LABEL_17:
        v34 = *v33;
        v53 = v9;
        v54 = v34;
        sub_C3D04();
        v36 = v60;
        v35 = v61;
        v37 = *(v60 + 16);
        v37(v4, v9, v61);
        (*(v36 + 56))(v4, 0, 1, v35);
        v38 = OBJC_IVAR____TtC20JournalNotifications14VideoAssetView_latestImageRequestID;
        swift_beginAccess();
        sub_2882C(v4, &v32[v38], &qword_104778);
        swift_endAccess();
        LODWORD(v52) = v32[v52];
        v39 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v40 = v57;
        v37(v57, v9, v35);
        v41 = v58;
        v42 = v59;
        v43 = v56;
        (*(v58 + 16))(v56, v62, v59);
        v44 = (*(v36 + 80) + 24) & ~*(v36 + 80);
        v45 = (v6 + *(v41 + 80) + v44) & ~*(v41 + 80);
        v46 = swift_allocObject();
        *(v46 + 16) = v39;
        v47 = v61;
        (*(v36 + 32))(v46 + v44, v40, v61);
        (*(v41 + 32))(v46 + v45, v43, v42);
        v48 = objc_opt_self();

        v49 = [v48 currentTraitCollection];
        v50 = v54;
        v51 = v55;
        sub_82CBC(v52, 0, 1, v54, v49, sub_28A1C, v46);

        (*(v36 + 8))(v53, v47);
        (*(v41 + 8))(v62, v42);
      }
    }

    v32 = v21;
    if (qword_1042B8 != -1)
    {
      swift_once();
    }

    v33 = &qword_1155D8;
    goto LABEL_17;
  }

  return result;
}

uint64_t sub_27030(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v34 = a1;
  v37 = sub_C50E4();
  v40 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_C5154();
  v38 = *(v5 - 8);
  v39 = v5;
  __chkstk_darwin(v5);
  v35 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_C3CB4();
  v7 = *(v30 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v30);
  v29 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_C3D14();
  v28 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_BE28(0, &qword_105550);
  v33 = sub_C5B24();
  v13 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  (*(v10 + 16))(v12, v31, v9);
  v15 = v29;
  v16 = v30;
  (*(v7 + 16))(v29, v32, v30);
  v17 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v18 = (v11 + *(v7 + 80) + v17) & ~*(v7 + 80);
  v19 = swift_allocObject();
  v20 = v34;
  *(v19 + 16) = v13;
  *(v19 + 24) = v20;
  (*(v10 + 32))(v19 + v17, v12, v28);
  (*(v7 + 32))(v19 + v18, v15, v16);
  aBlock[4] = sub_28C4C;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_34660;
  aBlock[3] = &unk_F1C10;
  v21 = _Block_copy(aBlock);
  v22 = v20;

  v23 = v35;
  sub_C5104();
  v41 = _swiftEmptyArrayStorage;
  sub_28DE8(&qword_105558, &type metadata accessor for DispatchWorkItemFlags);
  sub_3CB0(&qword_105560);
  sub_28D34();
  v25 = v36;
  v24 = v37;
  sub_C5E94();
  v26 = v33;
  sub_C5B34();
  _Block_release(v21);

  (*(v40 + 8))(v25, v24);
  (*(v38 + 8))(v23, v39);
}

void sub_27514(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v68 = a4;
  v6 = sub_C3CB4();
  v69 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v65 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v64 = &v60 - v9;
  v10 = sub_3CB0(&qword_104800);
  v11 = __chkstk_darwin(v10 - 8);
  v66 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v70 = &v60 - v13;
  v14 = sub_C3D14();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v67 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_3CB0(&qword_104770);
  __chkstk_darwin(v17);
  v19 = &v60 - v18;
  v20 = sub_3CB0(&qword_104778);
  v21 = __chkstk_darwin(v20 - 8);
  v23 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v60 - v24;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (a2)
    {
      v61 = v6;
      v62 = a2;
      v27 = Strong;
      (*(v15 + 16))(v25, a3, v14);
      (*(v15 + 56))(v25, 0, 1, v14);
      v28 = OBJC_IVAR____TtC20JournalNotifications14VideoAssetView_latestImageRequestID;
      swift_beginAccess();
      v29 = *(v17 + 48);
      sub_B954(v25, v19, &qword_104778);
      v63 = v27;
      sub_B954(&v27[v28], &v19[v29], &qword_104778);
      v30 = *(v15 + 48);
      if (v30(v19, 1, v14) == 1)
      {
        v31 = v62;
        v32 = v62;
        sub_C060(v25, &qword_104778);
        if (v30(&v19[v29], 1, v14) == 1)
        {
          sub_C060(v19, &qword_104778);
          goto LABEL_15;
        }
      }

      else
      {
        sub_B954(v19, v23, &qword_104778);
        v36 = v30(&v19[v29], 1, v14);
        v31 = v62;
        if (v36 != 1)
        {
          v38 = &v19[v29];
          v39 = v67;
          (*(v15 + 32))(v67, v38, v14);
          sub_28DE8(&qword_1047A8, &type metadata accessor for UUID);
          v40 = v31;
          v41 = sub_C53A4();
          v42 = *(v15 + 8);
          v42(v39, v14);
          sub_C060(v25, &qword_104778);
          v42(v23, v14);
          v31 = v62;
          sub_C060(v19, &qword_104778);
          if ((v41 & 1) == 0)
          {

            return;
          }

LABEL_15:
          v43 = v63;
          [*&v63[OBJC_IVAR____TtC20JournalNotifications14VideoAssetView_thumbnailView] setImage:v31];
          v44 = 1;
          (*&stru_248.segname[(swift_isaMask & *v43) - 8])(1);
          v45 = swift_allocObject();
          swift_unknownObjectWeakInit();
          if (*(v43 + OBJC_IVAR____TtC20JournalNotifications16JournalAssetView_sizeType) > 3u)
          {
            v47 = v69;
            v46 = v70;
            v48 = v61;
            if (*(v43 + OBJC_IVAR____TtC20JournalNotifications16JournalAssetView_sizeType) > 5u && *(v43 + OBJC_IVAR____TtC20JournalNotifications16JournalAssetView_sizeType) != 6)
            {
LABEL_22:

              (*(v47 + 16))(v46, v68, v48);
              (*(v47 + 56))(v46, 0, 1, v48);
              if (v44)
              {
                goto LABEL_23;
              }

              v52 = v66;
              sub_B954(v46, v66, &qword_104800);
              if ((*(v47 + 48))(v52, 1, v48) == 1)
              {
                sub_C060(v52, &qword_104800);
              }

              else
              {
                v53 = v64;
                (*(v47 + 32))(v64, v52, v48);
                v54 = v65;
                sub_C3C74();
                sub_C3B64();
                v56 = v55;
                v57 = *(v47 + 8);
                v57(v54, v48);
                v57(v53, v48);
                if (v56 < 0.1)
                {
LABEL_23:
                  swift_beginAccess();
                  v49 = swift_unknownObjectWeakLoadStrong();
                  if (v49)
                  {
                    v50 = v49;
                    v51 = *(v49 + OBJC_IVAR____TtC20JournalNotifications14VideoAssetView_thumbnailView);

                    [v51 setAlpha:1.0];

LABEL_30:
                    sub_C060(v46, &qword_104800);

                    return;
                  }

LABEL_29:

                  goto LABEL_30;
                }
              }

              v58 = objc_opt_self();
              aBlock[4] = sub_28DE0;
              aBlock[5] = v45;
              aBlock[0] = _NSConcreteStackBlock;
              aBlock[1] = 1107296256;
              aBlock[2] = sub_34660;
              aBlock[3] = &unk_F1C38;
              v59 = _Block_copy(aBlock);

              [v58 animateWithDuration:0x10000 delay:v59 options:0 animations:0.1 completion:0.0];
              _Block_release(v59);
              goto LABEL_29;
            }
          }

          else
          {
            v47 = v69;
            v46 = v70;
            v48 = v61;
          }

          v44 = sub_C6244();
          goto LABEL_22;
        }

        v37 = v62;
        sub_C060(v25, &qword_104778);
        (*(v15 + 8))(v23, v14);
      }

      sub_C060(v19, &qword_104770);

      return;
    }
  }

  swift_beginAccess();
  v33 = swift_unknownObjectWeakLoadStrong();
  if (v33)
  {
    v33[OBJC_IVAR____TtC20JournalNotifications16JournalAssetView_isAssetFinishedLoading] = 1;
  }

  swift_beginAccess();
  v34 = swift_unknownObjectWeakLoadStrong();
  if (v34)
  {
    v35 = v34;
    (*&stru_248.segname[(swift_isaMask & *v34) - 8])(0);
  }
}

void sub_27FB4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC20JournalNotifications14VideoAssetView_thumbnailView);

    [v2 setAlpha:1.0];
  }
}

void sub_28030()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for VideoAssetView();
  objc_msgSendSuper2(&v5, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC20JournalNotifications16JournalAssetView_fallbackView];
  [v0 bounds];
  [v1 setFrame:?];

  v2 = *&v0[OBJC_IVAR____TtC20JournalNotifications14VideoAssetView_thumbnailView];
  [v0 bounds];
  [v2 setFrame:?];
  v3 = *&v0[OBJC_IVAR____TtC20JournalNotifications14VideoAssetView_playerView];
  if (v3)
  {
    v4 = v3;
    [v0 bounds];
    [v4 setFrame:?];
  }
}

void sub_28154()
{
  v1 = OBJC_IVAR____TtC20JournalNotifications14VideoAssetView_isAutoPlaying;
  if (v0[OBJC_IVAR____TtC20JournalNotifications14VideoAssetView_isAutoPlaying] == 1)
  {
    if ((sub_7E428(v0[OBJC_IVAR____TtC20JournalNotifications16JournalAssetView_sizeType]) & 1) == 0 || !UIAccessibilityIsVideoAutoplayEnabled() || UIAccessibilityIsReduceMotionEnabled() || (v6 = [v0 traitCollection], v7 = objc_msgSend(v6, "userInterfaceIdiom"), v6, v7 == &dword_4 + 1) && (sub_C5C04() & 1) == 0)
    {
      v0[v1] = 0;
      v2 = *&v0[OBJC_IVAR____TtC20JournalNotifications14VideoAssetView_playerView];
      if (v2)
      {
        v3 = v2;
        v4 = [v3 layer];
        objc_opt_self();
        v5 = swift_dynamicCastObjCClass();
        if (!v5)
        {
        }

        v8 = [v5 player];

        [v8 pause];
      }
    }
  }
}

uint64_t sub_282F8()
{
  v1 = *(v0 + OBJC_IVAR____TtC20JournalNotifications14VideoAssetView_playerStatusObserver);
  *(v0 + OBJC_IVAR____TtC20JournalNotifications14VideoAssetView_playerStatusObserver) = 0;

  v2 = *(v0 + OBJC_IVAR____TtC20JournalNotifications14VideoAssetView_playerTimeControlStatusObserver);
  *(v0 + OBJC_IVAR____TtC20JournalNotifications14VideoAssetView_playerTimeControlStatusObserver) = 0;

  v3 = OBJC_IVAR____TtC20JournalNotifications14VideoAssetView_timeObserver;
  swift_beginAccess();
  sub_B954(v0 + v3, &v10, &qword_104818);
  if (!*(&v11 + 1))
  {
    return sub_C060(&v10, &qword_104818);
  }

  sub_D564(&v10, &v12);
  v4 = *(v0 + OBJC_IVAR____TtC20JournalNotifications14VideoAssetView_playerView);
  if (v4)
  {
    v5 = v4;
    v6 = [v5 layer];
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (!v7)
    {
    }

    v8 = [v7 player];

    if (v8)
    {
      sub_13DC4(&v12, v13);
      [v8 removeTimeObserver:sub_C6224()];

      swift_unknownObjectRelease();
    }
  }

  v10 = 0u;
  v11 = 0u;
  swift_beginAccess();
  sub_2882C(&v10, v0 + v3, &qword_104818);
  swift_endAccess();
  return sub_BED0(&v12);
}

void sub_2854C()
{
  sub_2863C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2863C()
{
  if (!qword_105518)
  {
    sub_C3D14();
    v0 = sub_C5DA4();
    if (!v1)
    {
      atomic_store(v0, &qword_105518);
    }
  }
}

id sub_287C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VideoPlayerView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_2881C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2882C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_3CB0(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_28894()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_288CC()
{
  v1 = sub_C3D14();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_C3CB4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_28A1C(void *a1)
{
  v3 = *(sub_C3D14() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_C3CB4() - 8);
  v7 = *(v1 + 16);
  v8 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_27030(a1, v7, v1 + v4, v8);
}

uint64_t sub_28AF4()
{
  v1 = sub_C3D14();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_C3CB4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

void sub_28C4C()
{
  v1 = *(sub_C3D14() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_C3CB4() - 8);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  sub_27514(v5, v6, v0 + v2, v7);
}

uint64_t sub_28D1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_28D34()
{
  result = qword_105568;
  if (!qword_105568)
  {
    sub_28D98(&qword_105560);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_105568);
  }

  return result;
}

uint64_t sub_28D98(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_28DE8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_28E30(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_28E48()
{
  v1 = sub_C3D54();
  __chkstk_darwin(v1 - 8);
  v2 = sub_C5414();
  __chkstk_darwin(v2 - 8);
  v3 = sub_C40E4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, v0, v3);
  v7 = (*(v4 + 88))(v6, v3);
  if (v7 == enum case for MediaViewType.song(_:) || v7 == enum case for MediaViewType.songAlbum(_:))
  {
    goto LABEL_10;
  }

  v8 = v7 == enum case for MediaViewType.podcast(_:) || v7 == enum case for MediaViewType.podcastArtist(_:);
  if (v8 || v7 == enum case for MediaViewType.audiobook(_:))
  {
    goto LABEL_10;
  }

  if (v7 == enum case for MediaViewType.thirdPartyMedia(_:))
  {
    sub_C53B4();
    sub_C3D44();
    return sub_C5494();
  }

  if (v7 == enum case for MediaViewType.thirdPartyMediaAlbum(_:) || v7 == enum case for MediaViewType.thirdPartyMediaArtist(_:))
  {
LABEL_10:
    sub_C53B4();
    sub_C3D44();
    return sub_C54A4();
  }

  result = sub_C6234();
  __break(1u);
  return result;
}

uint64_t sub_2920C()
{
  v0 = sub_C4CD4();
  sub_C0CC(v0, qword_105570);
  sub_B680(v0, qword_105570);
  return sub_C4CC4();
}

uint64_t sub_292CC(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  sub_3CB0(&qword_105700);
  v3[7] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v5 = sub_C5724();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v3[8] = v5;
  v3[9] = v7;

  return _swift_task_switch(sub_293A8, v5, v7);
}

uint64_t sub_293A8()
{
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_29440;
  v2 = v0[5];
  v3 = v0[4];

  return sub_68090(v3, v2);
}

uint64_t sub_29440(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 88) = a1;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);

  return _swift_task_switch(sub_29568, v4, v3);
}

uint64_t sub_29568()
{
  v1 = v0[11];
  if (v1)
  {
LABEL_13:

    v15 = v0[1];

    return v15(v1);
  }

  v2 = v0[7];
  sub_29E68(v0[6] + qword_115308, v2);
  v3 = sub_C47D4();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v2, 1, v3);
  v6 = v0[7];
  if (v5 == 1)
  {
    sub_29E00(v0[7]);
LABEL_8:
    if (qword_104190 != -1)
    {
      swift_once();
    }

    v11 = sub_C4CD4();
    sub_B680(v11, qword_105570);
    v12 = sub_C4CB4();
    v13 = sub_C5A44();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_0, v12, v13, "generateImage no route info in metadata", v14, 2u);
    }

    goto LABEL_13;
  }

  v7 = sub_C4774();
  v0[12] = v7;
  (*(v4 + 8))(v6, v3);
  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = (v0[6] + qword_107B38);
  v0[13] = *v8;
  v0[14] = v8[1];
  sub_C5774();

  v0[15] = sub_C5764();
  v10 = sub_C5724();

  return _swift_task_switch(sub_297E4, v10, v9);
}

uint64_t sub_297E4()
{
  receiver = v0[7].receiver;
  v3 = v0[6].receiver;
  super_class = v0[6].super_class;

  v4 = type metadata accessor for RouteMapGenerator();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC20JournalNotifications17RouteMapGenerator_mapSnapshotter] = 0;
  *&v5[OBJC_IVAR____TtC20JournalNotifications17RouteMapGenerator_lineWidth] = 0x4008000000000000;
  v5[OBJC_IVAR____TtC20JournalNotifications17RouteMapGenerator_sizeType] = 8;
  v6 = &v5[OBJC_IVAR____TtC20JournalNotifications17RouteMapGenerator_id];
  *v6 = super_class;
  v6[1] = receiver;
  *&v5[OBJC_IVAR____TtC20JournalNotifications17RouteMapGenerator_routeCoordinates] = v3;
  v0[1].receiver = v5;
  v0[1].super_class = v4;
  v0[8].receiver = objc_msgSendSuper2(v0 + 1, "init");
  v7 = v0[4].receiver;
  v8 = v0[4].super_class;

  return _swift_task_switch(sub_298DC, v7, v8);
}

uint64_t sub_298DC()
{
  v1 = *(*(v0 + 48) + qword_115590);
  *(v0 + 152) = v1;
  v2 = swift_task_alloc();
  *(v0 + 136) = v2;
  *v2 = v0;
  v2[1] = sub_29988;

  return sub_1DA2C(v1);
}

uint64_t sub_29988(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  *(*v1 + 144) = a1;

  v4 = *(v2 + 72);
  v5 = *(v2 + 64);

  return _swift_task_switch(sub_29AD0, v5, v4);
}

uint64_t sub_29AD0()
{
  v1 = *(v0 + 144);
  if (v1)
  {
    if (sub_7E424(*(v0 + 152)))
    {
      if (qword_104290 != -1)
      {
        swift_once();
      }

      sub_6B8E0(v1, *(v0 + 104), *(v0 + 112));
    }

    v2 = *(v0 + 144);
  }

  else
  {
    if (qword_104190 != -1)
    {
      swift_once();
    }

    v3 = sub_C4CD4();
    sub_B680(v3, qword_105570);
    v4 = sub_C4CB4();
    v5 = sub_C5A44();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_0, v4, v5, "error generating route map image", v6, 2u);
    }

    v2 = 0;
  }

  v7 = *(v0 + 8);

  return v7(v2);
}

uint64_t type metadata accessor for WorkoutRouteThumbnailCacheOperation()
{
  result = qword_1055B0;
  if (!qword_1055B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29CC0()
{
  sub_29D50();
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_29D50()
{
  if (!qword_1055C0)
  {
    sub_C47D4();
    v0 = sub_C5DA4();
    if (!v1)
    {
      atomic_store(v0, &qword_1055C0);
    }
  }
}

uint64_t sub_29DB0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_29E00(uint64_t a1)
{
  v2 = sub_3CB0(&qword_105700);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E68(uint64_t a1, uint64_t a2)
{
  v4 = sub_3CB0(&qword_105700);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29F38(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(uint64_t), unint64_t *a5)
{
  v37 = a5;
  v34 = a1;
  v35 = a4;
  v8 = sub_C45C4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_3CB0(&qword_1047C0);
  __chkstk_darwin(v12 - 8);
  v14 = &v32 - v13;
  v36 = a2;
  v38 = a3;
  v15 = sub_3CB0(a2);
  v33 = *(v15 - 8);
  v16 = __chkstk_darwin(v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = &v32 - v20;
  __chkstk_darwin(v19);
  v23 = &v32 - v22;
  v24 = OBJC_IVAR____TtC20JournalNotifications14EntryViewModel_mergeableAttributes;
  swift_beginAccess();
  sub_B954(v5 + v24, v14, &qword_1047C0);
  if ((*(v9 + 48))(v14, 1, v8))
  {
    sub_C060(v14, &qword_1047C0);
    v25 = 1;
  }

  else
  {
    (*(v9 + 16))(v11, v14, v8);
    v26 = sub_C060(v14, &qword_1047C0);
    v27 = v35;
    v35(v26);
    (*(v9 + 8))(v11, v8);
    v28 = v33;
    v29 = (*(v33 + 32))(v23, v21, v15);
    v27(v29);
    sub_2FB10(v37, v36);
    v25 = sub_C51F4();
    v30 = *(v28 + 8);
    v30(v18, v15);
    v30(v23, v15);
  }

  return v25 & 1;
}

uint64_t sub_2A27C(void *a1)
{
  v2 = v1;
  v4 = sub_3CB0(&qword_105CE8);
  __chkstk_darwin(v4 - 8);
  v96 = &v89 - v5;
  v97 = sub_C4534();
  v99 = *(v97 - 8);
  v6 = __chkstk_darwin(v97);
  v93 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = v7;
  __chkstk_darwin(v6);
  v94 = &v89 - v8;
  v9 = sub_C5174();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_3CB0(&qword_1047C0);
  v14 = __chkstk_darwin(v13 - 8);
  v105 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v101 = &v89 - v17;
  v18 = __chkstk_darwin(v16);
  v106 = &v89 - v19;
  __chkstk_darwin(v18);
  v21 = &v89 - v20;
  v22 = sub_C45C4();
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v92 = &v89 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v98 = &v89 - v27;
  v28 = __chkstk_darwin(v26);
  v30 = &v89 - v29;
  __chkstk_darwin(v28);
  v32 = &v89 - v31;
  v33 = *(v23 + 16);
  v91 = v23 + 16;
  v90 = v33;
  v33(&v89 - v31, a1, v22);
  v34 = OBJC_IVAR____TtC20JournalNotifications14EntryViewModel_mergeableAttributes;
  swift_beginAccess();
  v104 = v34;
  sub_B954(v2 + v34, v21, &qword_1047C0);
  v107 = *(v23 + 48);
  v108 = v22;
  if (v107(v21, 1, v22) == 1)
  {
    v35 = v32;
    sub_C060(v21, &qword_1047C0);
  }

  else
  {
    v36 = v21;
    v37 = v108;
    (*(v23 + 32))(v30, v36, v108);
    v35 = v32;
    sub_C45A4();
    (*(v10 + 8))(v12, v9);
    (*(v23 + 8))(v30, v37);
  }

  v38 = v23;
  v39 = sub_59FC4(&off_F02D8);
  v40 = v105;
  v41 = v106;
  if (qword_1041F8 != -1)
  {
    swift_once();
  }

  v100 = qword_115448;
  v102 = unk_115450;
  sub_B954(v2 + v104, v41, &qword_1047C0);
  v42 = OBJC_IVAR____TtC20JournalNotifications14EntryViewModel_undoManager;
  v43 = *(v2 + OBJC_IVAR____TtC20JournalNotifications14EntryViewModel_undoManager);
  v44 = v35;
  v45 = v107;
  v103 = v39;
  if (!v43)
  {
    goto LABEL_13;
  }

  v46 = qword_1041A0;
  v95 = v43;
  if (v46 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v47 = sub_C4CD4();
    sub_B680(v47, qword_105720);
    v48 = v102;

    v49 = sub_C4CB4();
    v50 = sub_C5A34();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = v44;
      v53 = v38;
      v54 = swift_slowAlloc();
      aBlock[0] = v54;
      *v51 = 136315138;

      v55 = sub_BA920(v100, v48, aBlock);

      *(v51 + 4) = v55;
      _os_log_impl(&dword_0, v49, v50, "undoable (%s)", v51, 0xCu);
      sub_BED0(v54);
      v38 = v53;
      v44 = v52;
      v40 = v105;

      v41 = v106;
    }

    v56 = v95;
    v57 = [v95 groupingLevel];
    v45 = v107;
    if (!v57)
    {
      [v56 beginUndoGrouping];
    }

LABEL_13:
    sub_2D904(v2, v44);
    v58 = *(v2 + v42);
    if (!v58)
    {

      v60 = &qword_1047C0;
      v59 = v41;
      goto LABEL_22;
    }

    v42 = v101;
    sub_B954(v41, v101, &qword_1047C0);
    if (v45(v42, 1, v108) == 1)
    {

      sub_C060(v41, &qword_1047C0);
      v59 = v42;
      v60 = &qword_1047C0;
      goto LABEL_22;
    }

    v61 = v42;
    v42 = v98;
    v62 = v108;
    (*(v38 + 32))(v98, v61, v108);
    sub_B954(v2 + v104, v40, &qword_1047C0);
    if (v45(v40, 1, v62))
    {

      (*(v38 + 8))(v42, v108);
      sub_C060(v41, &qword_1047C0);
      sub_C060(v40, &qword_1047C0);
      v63 = v96;
      (*(v99 + 56))(v96, 1, 1, v97);
LABEL_21:
      v60 = &qword_105CE8;
      v59 = v63;
      goto LABEL_22;
    }

    v64 = v92;
    v65 = v108;
    v90(v92, v40, v108);
    v107 = v58;
    sub_C060(v40, &qword_1047C0);
    v66 = v96;
    sub_C4554();
    v67 = v65;
    v63 = v66;
    v105 = *(v38 + 8);
    (v105)(v64, v67);
    v68 = v99;
    v69 = v97;
    if ((*(v99 + 48))(v63, 1, v97) == 1)
    {

      (v105)(v42, v108);
      sub_C060(v41, &qword_1047C0);
      goto LABEL_21;
    }

    v73 = v68;
    v95 = *(v68 + 32);
    v74 = v94;
    (v95)(v94, v63, v69);
    v75 = v69;
    v76 = sub_C5444();
    [v107 setActionName:v76];

    v77 = v74;
    v78 = v75;
    (*(v73 + 16))(v93, v77, v75);
    v79 = (*(v73 + 80) + 16) & ~*(v73 + 80);
    v104 = v38;
    v80 = (v89 + v79 + 7) & 0xFFFFFFFFFFFFFFF8;
    v81 = (v80 + 15) & 0xFFFFFFFFFFFFFFF8;
    v82 = (v81 + 23) & 0xFFFFFFFFFFFFFFF8;
    v101 = v44;
    v83 = swift_allocObject();
    (v95)(v83 + v79, v93, v78);
    *(v83 + v80) = v103;
    v38 = v104;
    v84 = (v83 + v81);
    v42 = v108;
    v85 = v102;
    *v84 = v100;
    v84[1] = v85;
    v86 = (v83 + v82);
    v87 = (v83 + ((v82 + 23) & 0xFFFFFFFFFFFFFFF8));
    v44 = v101;
    *v86 = 0;
    v86[1] = 0;
    *v87 = 0;
    v87[1] = 0;
    type metadata accessor for EntryViewModel();

    v88 = v107;
    sub_C59C4();

    (*(v99 + 8))(v94, v78);
    (v105)(v98, v42);
    v60 = &qword_1047C0;
    v59 = v106;
LABEL_22:
    sub_C060(v59, v60);
    v70 = *(v2 + 24);
    v71 = swift_allocObject();
    *(v71 + 16) = sub_2F918;
    *(v71 + 24) = v2;
    aBlock[4] = sub_2F92C;
    v110 = v71;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2AEBC;
    aBlock[3] = &unk_F1E80;
    v40 = _Block_copy(aBlock);
    v41 = v110;

    [v70 performBlockAndWait:v40];
    _Block_release(v40);
    LOBYTE(v70) = swift_isEscapingClosureAtFileLocation();

    if ((v70 & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_26:
    swift_once();
  }

  (*(v38 + 8))(v44, v108);
}

uint64_t sub_2AF3C(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v7 = sub_C4CD4();
  sub_C0CC(v7, a2);
  v8 = sub_B680(v7, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v9 = sub_B680(v7, a4);
  v10 = *(*(v7 - 8) + 16);

  return v10(v8, v9, v7);
}

uint64_t sub_2B07C(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      result = sub_60A54(&v10, *(*(v1 + 48) + (v9 | (v8 << 6))));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_2B158()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  sub_233FC(v0 + 48);
  sub_C060(v0 + OBJC_IVAR____TtC20JournalNotifications14EntryViewModel_uuid, &qword_104778);

  v2 = OBJC_IVAR____TtC20JournalNotifications14EntryViewModel_uniqueID;
  v3 = sub_C3D14();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  sub_C060(v0 + OBJC_IVAR____TtC20JournalNotifications14EntryViewModel_mergeableAttributes, &qword_1047C0);

  v4 = OBJC_IVAR____TtC20JournalNotifications14EntryViewModel_date;
  v5 = sub_C3CB4();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);
  sub_C060(v0 + OBJC_IVAR____TtC20JournalNotifications14EntryViewModel_dateSource, &qword_1047B0);
  v6(v0 + OBJC_IVAR____TtC20JournalNotifications14EntryViewModel_displayDate, v5);
  sub_C060(v0 + OBJC_IVAR____TtC20JournalNotifications14EntryViewModel_bundleId, &qword_104778);
  sub_C060(v0 + OBJC_IVAR____TtC20JournalNotifications14EntryViewModel_bundleDate, &qword_104800);
  sub_C060(v0 + OBJC_IVAR____TtC20JournalNotifications14EntryViewModel_bundleEndDate, &qword_104800);

  sub_C060(v0 + OBJC_IVAR____TtC20JournalNotifications14EntryViewModel_originalUpdatedDate, &qword_104800);
  return v0;
}

uint64_t sub_2B448()
{
  sub_2B158();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EntryViewModel()
{
  result = qword_105788;
  if (!qword_105788)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2B4F4()
{
  sub_2CAD0(319, &qword_105518, &type metadata accessor for UUID);
  if (v0 <= 0x3F)
  {
    sub_C3D14();
    if (v1 <= 0x3F)
    {
      sub_2CAD0(319, &qword_105798, &type metadata accessor for MergeableEntryAttributes);
      if (v2 <= 0x3F)
      {
        sub_C3CB4();
        if (v3 <= 0x3F)
        {
          sub_2CAD0(319, &qword_1057A0, &type metadata accessor for EntryDateSource);
          if (v4 <= 0x3F)
          {
            sub_2CAD0(319, &qword_1057A8, &type metadata accessor for Date);
            if (v5 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_2B7A8(void *a1)
{
  v2 = sub_C4004();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v5, enum case for JournalFeatureFlags.enhancedSync(_:), v2);
  v6 = sub_C3FF4();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if (qword_104198 != -1)
    {
      swift_once();
    }

    v7 = sub_C4CD4();
    sub_B680(v7, qword_105708);
    v8 = sub_C4CB4();
    v9 = sub_C5A44();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_0, v8, v9, "Replacing mergeable title with a non-mergeable string. This may result in an incorrect merge.", v10, 2u);
    }

    if (a1)
    {
      v11 = a1;
    }

    else
    {
      v11 = [objc_allocWithZone(NSAttributedString) init];
    }

    v12 = a1;
    sub_2B9A4(v11);
  }

  else
  {
    sub_2BD18(a1);
  }
}

uint64_t sub_2B9A4(uint64_t a1)
{
  v25 = a1;
  v2 = sub_C45C4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3CB0(&qword_1047C0);
  __chkstk_darwin(v6 - 8);
  v8 = &v23 - v7;
  v9 = sub_3CB0(&qword_105CF0);
  v24 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v23 - v14;
  __chkstk_darwin(v13);
  v17 = &v23 - v16;
  v18 = OBJC_IVAR____TtC20JournalNotifications14EntryViewModel_mergeableAttributes;
  swift_beginAccess();
  sub_B954(v1 + v18, v8, &qword_1047C0);
  if ((*(v3 + 48))(v8, 1, v2))
  {
    return sub_C060(v8, &qword_1047C0);
  }

  (*(v3 + 16))(v5, v8, v2);
  sub_C060(v8, &qword_1047C0);
  sub_C45B4();
  (*(v3 + 8))(v5, v2);
  v20 = v24;
  (*(v24 + 32))(v17, v15, v9);
  v21 = [objc_allocWithZone(UITraitCollection) init];
  sub_2F84C(&qword_105CF8, &type metadata accessor for MergeableTitleAttributeScope);
  sub_C51C4();

  sub_2EB44(v12);
  v22 = *(v20 + 8);
  v22(v12, v9);
  return (v22)(v17, v9);
}

void sub_2BD18(void *a1)
{
  v2 = v1;
  v4 = sub_C3544();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v8 = [a1 string];
    v9 = sub_C5484();
    v11 = v10;

    aBlock = v9;
    v22 = v11;
    sub_C3534();
    sub_19DFC();
    v12 = sub_C5E14();
    v14 = v13;
    (*(v5 + 8))(v7, v4);

    v15 = HIBYTE(v14) & 0xF;
    if ((v14 & 0x2000000000000000) == 0)
    {
      v15 = v12 & 0xFFFFFFFFFFFFLL;
    }

    if (v15)
    {
      v16 = a1;
    }

    else
    {
      a1 = 0;
    }
  }

  v17 = *(v2 + OBJC_IVAR____TtC20JournalNotifications14EntryViewModel_attributedTitle);
  *(v2 + OBJC_IVAR____TtC20JournalNotifications14EntryViewModel_attributedTitle) = a1;

  v18 = *(v2 + 24);
  v19 = swift_allocObject();
  swift_weakInit();
  v25 = sub_2F8D4;
  v26 = v19;
  aBlock = _NSConcreteStackBlock;
  v22 = 1107296256;
  v23 = sub_34660;
  v24 = &unk_F1E08;
  v20 = _Block_copy(&aBlock);

  [v18 performBlock:v20];
  _Block_release(v20);
}

void sub_2BF40(void *a1)
{
  v2 = v1;
  v4 = sub_C4004();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v7, enum case for JournalFeatureFlags.enhancedSync(_:), v4);
  v8 = sub_C3FF4();
  (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    v14 = OBJC_IVAR____TtC20JournalNotifications14EntryViewModel_attributedText;
    v15 = *(v2 + OBJC_IVAR____TtC20JournalNotifications14EntryViewModel_attributedText);
    if (a1)
    {
      if (v15)
      {
        sub_BE28(0, &qword_1047D8);
        v16 = a1;
        v17 = v15;
        v18 = sub_C5D44();

        if (v18)
        {
          goto LABEL_16;
        }
      }
    }

    else if (!v15)
    {
LABEL_16:
      v13 = *(v2 + v14);
      *(v2 + v14) = a1;
      v20 = a1;
      goto LABEL_17;
    }

    *(v2 + OBJC_IVAR____TtC20JournalNotifications14EntryViewModel_textChanged) = 1;
    goto LABEL_16;
  }

  if (qword_104198 != -1)
  {
    swift_once();
  }

  v9 = sub_C4CD4();
  sub_B680(v9, qword_105708);
  v10 = sub_C4CB4();
  v11 = sub_C5A44();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
  }

  if (a1)
  {
    v13 = a1;
  }

  else
  {
    v13 = [objc_allocWithZone(NSAttributedString) init];
  }

  v19 = a1;
  sub_2C1B0(v13);
LABEL_17:
}

uint64_t sub_2C1B0(uint64_t a1)
{
  v25 = a1;
  v2 = sub_C45C4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3CB0(&qword_1047C0);
  __chkstk_darwin(v6 - 8);
  v8 = &v23 - v7;
  v9 = sub_3CB0(&qword_1047E0);
  v24 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v23 - v14;
  __chkstk_darwin(v13);
  v17 = &v23 - v16;
  v18 = OBJC_IVAR____TtC20JournalNotifications14EntryViewModel_mergeableAttributes;
  swift_beginAccess();
  sub_B954(v1 + v18, v8, &qword_1047C0);
  if ((*(v3 + 48))(v8, 1, v2))
  {
    return sub_C060(v8, &qword_1047C0);
  }

  (*(v3 + 16))(v5, v8, v2);
  sub_C060(v8, &qword_1047C0);
  sub_C4564();
  (*(v3 + 8))(v5, v2);
  v20 = v24;
  (*(v24 + 32))(v17, v15, v9);
  v21 = [objc_allocWithZone(UITraitCollection) init];
  sub_2F84C(&qword_1047F0, &type metadata accessor for MergeableTextAttributeScope);
  sub_C51C4();

  sub_2E040(v12);
  v22 = *(v20 + 8);
  v22(v12, v9);
  return (v22)(v17, v9);
}

uint64_t sub_2C538(uint64_t a1, void *a2, SEL *a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = *(result + 32);
    isa = *(result + *a2);
    if (isa)
    {
      v8 = v6;
      v9 = isa;
      v10 = sub_C5B84();
      v12 = v11;

      if (v12 >> 60 == 15)
      {
        isa = 0;
      }

      else
      {
        isa = sub_C3974().super.isa;
        sub_1D580(v10, v12);
      }
    }

    else
    {
      v13 = v6;
    }

    [v6 *a3];

    sub_2C83C();
  }

  return result;
}

uint64_t sub_2C628(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC20JournalNotifications14EntryViewModel_bookmarked) != (result & 1))
  {
    v2 = *(v1 + 24);
    v3 = swift_allocObject();
    swift_weakInit();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_2FB64;
    *(v4 + 24) = v3;
    v6[4] = sub_2FB84;
    v6[5] = v4;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 1107296256;
    v6[2] = sub_2AEBC;
    v6[3] = &unk_F1EF8;
    v5 = _Block_copy(v6);

    [v2 performBlockAndWait:v5];
    _Block_release(v5);
    LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

    if (v2)
    {
      __break(1u);
    }

    else
    {
      v6[0] = sub_59FC4(&off_F0300);
      sub_C4E54();
    }
  }

  return result;
}

uint64_t sub_2C7C8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    [*(result + 32) setFlagged:*(result + OBJC_IVAR____TtC20JournalNotifications14EntryViewModel_bookmarked)];
    sub_2C83C();
  }

  return result;
}

void sub_2C83C()
{
  v1 = sub_C3CB4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_3CB0(&qword_104800);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v18 - v9;
  v11 = *(v0 + 32);
  [v11 setIsUploadedToCloud:0];
  if ((*(v0 + 40) & 1) == 0)
  {
    v12 = OBJC_IVAR____TtC20JournalNotifications14EntryViewModel_originalUpdatedDate;
    swift_beginAccess();
    v19 = v12;
    sub_B954(v0 + v12, v10, &qword_104800);
    LODWORD(v12) = (*(v2 + 48))(v10, 1, v1);
    sub_C060(v10, &qword_104800);
    if (v12 == 1)
    {
      v13 = [v11 updatedDate];
      if (v13)
      {
        v14 = v13;
        sub_C3C64();

        v15 = 0;
      }

      else
      {
        v15 = 1;
      }

      (*(v2 + 56))(v8, v15, 1, v1);
      v16 = v19;
      swift_beginAccess();
      sub_2CCC4(v8, v0 + v16);
      swift_endAccess();
    }
  }

  sub_C3C74();
  isa = sub_C3C04().super.isa;
  (*(v2 + 8))(v4, v1);
  [v11 setUpdatedDate:isa];
}

void sub_2CAD0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_C5DA4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_2CB48()
{
  result = qword_105CD0;
  if (!qword_105CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_105CD0);
  }

  return result;
}

unint64_t sub_2CBA0()
{
  result = qword_105CD8;
  if (!qword_105CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_105CD8);
  }

  return result;
}

unint64_t sub_2CBF8()
{
  result = qword_105CE0;
  if (!qword_105CE0)
  {
    sub_BE28(255, &qword_1047A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_105CE0);
  }

  return result;
}

uint64_t sub_2CC60@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for EntryViewModel();
  result = sub_C4E44();
  *a1 = result;
  return result;
}

id sub_2CCA0@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + OBJC_IVAR____TtC20JournalNotifications14EntryViewModel_id);
  *a1 = v2;
  return v2;
}

uint64_t sub_2CCC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_3CB0(&qword_104800);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2CD34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, void (*a6)(void), void (*a7)(void), uint64_t a8, uint64_t a9)
{
  v99 = a8;
  v110 = a7;
  v107 = a4;
  v108 = a5;
  v112 = a3;
  v12 = sub_3CB0(&qword_105CE8);
  __chkstk_darwin(v12 - 8);
  v105 = &v92 - v13;
  v14 = sub_C45C4();
  v111 = *(v14 - 8);
  v15 = __chkstk_darwin(v14);
  v100 = &v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v106 = &v92 - v17;
  v18 = sub_3CB0(&qword_1047C0);
  v19 = __chkstk_darwin(v18 - 8);
  v104 = &v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v23 = &v92 - v22;
  __chkstk_darwin(v21);
  v25 = &v92 - v24;
  v26 = sub_C4534();
  v27 = *(v26 - 8);
  v28 = __chkstk_darwin(v26);
  v98 = &v92 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v101 = &v92 - v31;
  v97 = v32;
  __chkstk_darwin(v30);
  v34 = &v92 - v33;
  v35 = *(v27 + 16);
  v114 = v36;
  v96 = v27 + 16;
  v95 = v35;
  (v35)(&v92 - v33, a2);
  v37 = OBJC_IVAR____TtC20JournalNotifications14EntryViewModel_mergeableAttributes;
  swift_beginAccess();
  v103 = v37;
  v113 = v25;
  sub_B954(v37 + a1, v25, &qword_1047C0);
  v38 = OBJC_IVAR____TtC20JournalNotifications14EntryViewModel_undoManager;
  v39 = *(a1 + OBJC_IVAR____TtC20JournalNotifications14EntryViewModel_undoManager);
  v109 = a6;
  if (v39)
  {
    v40 = qword_1041A0;
    v102 = v39;
    if (v40 != -1)
    {
      swift_once();
    }

    v41 = sub_C4CD4();
    sub_B680(v41, qword_105720);
    v42 = v108;

    v43 = sub_C4CB4();
    v44 = sub_C5A34();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v93 = a1;
      v47 = v46;
      v115 = v46;
      *v45 = 136315138;
      v48 = v42 == 0;
      v94 = v27;
      v49 = v23;
      if (v42)
      {
        v50 = v107;
      }

      else
      {
        v50 = 45;
      }

      v51 = v42;
      v52 = v34;
      v53 = v14;
      if (v48)
      {
        v54 = 0xE100000000000000;
      }

      else
      {
        v54 = v51;
      }

      v55 = sub_BA920(v50, v54, &v115);
      v14 = v53;
      v34 = v52;

      *(v45 + 4) = v55;
      v23 = v49;
      v27 = v94;
      _os_log_impl(&dword_0, v43, v44, "undoable (%s)", v45, 0xCu);
      sub_BED0(v47);
      a1 = v93;
    }

    a6 = v109;
    v56 = v102;
    if (![v102 groupingLevel])
    {
      [v56 beginUndoGrouping];
    }
  }

  sub_2D6B8(a1, v34);
  if (a6)
  {
    a6();
  }

  v57 = *(a1 + v38);
  if (!v57)
  {
    v62 = &qword_1047C0;
    v61 = v113;
    goto LABEL_26;
  }

  v58 = v113;
  sub_B954(v113, v23, &qword_1047C0);
  v59 = v111;
  v60 = *(v111 + 48);
  if (v60(v23, 1, v14) == 1)
  {
    sub_C060(v58, &qword_1047C0);
    v61 = v23;
    v62 = &qword_1047C0;
LABEL_26:
    sub_C060(v61, v62);
    return (*(v27 + 8))(v34, v114);
  }

  v63 = *(v59 + 32);
  v64 = v59;
  v65 = v106;
  v63(v106, v23, v14);
  v66 = v104;
  sub_B954(v103 + a1, v104, &qword_1047C0);
  if (v60(v66, 1, v14))
  {
    (*(v64 + 8))(v65, v14);
    sub_C060(v113, &qword_1047C0);
    sub_C060(v66, &qword_1047C0);
    v67 = v105;
    (*(v27 + 56))(v105, 1, 1, v114);
LABEL_25:
    v62 = &qword_105CE8;
    v61 = v67;
    goto LABEL_26;
  }

  v68 = v100;
  (*(v64 + 16))(v100, v66, v14);
  v103 = v57;
  sub_C060(v66, &qword_1047C0);
  v67 = v105;
  sub_C4554();
  v71 = *(v64 + 8);
  v70 = v64 + 8;
  v69 = v71;
  (v71)(v68, v14);
  if ((*(v27 + 48))(v67, 1, v114) == 1)
  {

    (v69)(v65, v14);
    sub_C060(v113, &qword_1047C0);
    goto LABEL_25;
  }

  v100 = v69;
  v93 = a1;
  v102 = v34;
  v111 = v70;
  v104 = v14;
  v92 = a9;
  v105 = *(v27 + 32);
  (v105)(v101, v67, v114);
  v73 = v108;
  if (v108)
  {
    v74 = sub_C5444();
    [v103 setActionName:v74];
  }

  v75 = v98;
  v76 = v114;
  v95(v98, v101, v114);
  v77 = *(v27 + 80);
  v94 = v27;
  v78 = (v77 + 16) & ~v77;
  v79 = (v97 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
  v80 = (v79 + 15) & 0xFFFFFFFFFFFFFFF8;
  v81 = (v80 + 23) & 0xFFFFFFFFFFFFFFF8;
  v82 = swift_allocObject();
  v83 = v82 + v78;
  v27 = v94;
  (v105)(v83, v75, v76);
  *(v82 + v79) = v112;
  v84 = (v82 + v80);
  *v84 = v107;
  v84[1] = v73;
  v85 = (v82 + v81);
  v86 = v99;
  v87 = v92;
  *v85 = v99;
  v85[1] = v87;
  v88 = (v82 + ((v81 + 23) & 0xFFFFFFFFFFFFFFF8));
  v90 = v109;
  v89 = v110;
  *v88 = v109;
  v88[1] = v89;

  sub_28E30(v86);
  sub_28E30(v90);
  type metadata accessor for EntryViewModel();
  v91 = v103;
  sub_C59C4();

  (*(v27 + 8))(v101, v76);
  (v100)(v106, v104);
  sub_C060(v113, &qword_1047C0);
  v34 = v102;
  return (*(v27 + 8))(v34, v114);
}

void sub_2D6B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_3CB0(&qword_105CE8);
  __chkstk_darwin(v4 - 8);
  v6 = &v18[-v5];
  v7 = sub_2B018();
  v9 = v8;
  v10 = sub_C45C4();
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {
    v11 = sub_C4534();
    v12 = *(v11 - 8);
    (*(v12 + 16))(v6, a2, v11);
    (*(v12 + 56))(v6, 0, 1, v11);
    sub_C4574();
    sub_C060(v6, &qword_105CE8);
  }

  (v7)(v18, 0);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v13 = *(a1 + 56);
    ObjectType = swift_getObjectType();
    (*(v13 + 16))(a2, a1, ObjectType, v13);
    swift_unknownObjectRelease();
  }

  v15 = *(a1 + OBJC_IVAR____TtC20JournalNotifications14EntryViewModel_undoManager);
  if (v15)
  {
    swift_beginAccess();
    v16 = v15;

    sub_2B07C(v17);
    swift_endAccess();
  }
}

uint64_t sub_2D904(uint64_t a1, uint64_t a2)
{
  v3 = sub_C45C4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v7 = sub_3CB0(&qword_105D00);
  __chkstk_darwin(v7 - 8);
  v9 = v16 - v8 + 16;
  v10 = sub_2B018();
  if ((*(v4 + 48))(v11, 1, v3))
  {
    (v10)(v16, 0);
    v12 = 1;
  }

  else
  {
    swift_beginAccess();
    (*(v4 + 16))(v6, a2, v3);
    sub_C45A4();
    (*(v4 + 8))(v6, v3);
    (v10)(v16, 0);
    v12 = 0;
  }

  v13 = sub_C5174();
  (*(*(v13 - 8) + 56))(v9, v12, 1, v13);
  return sub_C060(v9, &qword_105D00);
}

uint64_t sub_2DB28()
{
  v1 = v0;
  v39 = sub_3CB0(&qword_104778);
  __chkstk_darwin(v39);
  v38 = &v35[-v2];
  v3 = sub_3CB0(&qword_1047C0);
  __chkstk_darwin(v3 - 8);
  v5 = &v35[-v4];
  v6 = sub_C45C4();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v35[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v12 = &v35[-v11];
  v13 = sub_C4004();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v35[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v14 + 104))(v16, enum case for JournalFeatureFlags.enhancedSync(_:), v13);
  v17 = sub_C3FF4();
  result = (*(v14 + 8))(v16, v13);
  if (v17)
  {
    v19 = OBJC_IVAR____TtC20JournalNotifications14EntryViewModel_mergeableAttributes;
    swift_beginAccess();
    sub_B954(v1 + v19, v5, &qword_1047C0);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      return sub_C060(v5, &qword_1047C0);
    }

    else
    {
      (*(v7 + 32))(v12, v5, v6);
      v20 = *(v1 + 32);
      v21 = [v20 mergeableAttributes];
      if (v21)
      {
      }

      else
      {
        if (qword_104198 != -1)
        {
          swift_once();
        }

        v22 = sub_C4CD4();
        sub_B680(v22, qword_105708);

        v23 = sub_C4CB4();
        v24 = sub_C5A64();

        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          v41 = v37;
          *v25 = 136446466;
          v40 = *(v1 + 16);
          v26 = sub_C54C4();
          v28 = sub_BA920(v26, v27, &v41);
          v36 = v24;
          v29 = v28;

          *(v25 + 4) = v29;
          *(v25 + 12) = 2082;
          sub_B954(v1 + OBJC_IVAR____TtC20JournalNotifications14EntryViewModel_uuid, v38, &qword_104778);
          v30 = sub_C54C4();
          v32 = sub_BA920(v30, v31, &v41);

          *(v25 + 14) = v32;
          _os_log_impl(&dword_0, v23, v36, "Migrating legacy fields to mergeable attributes (mode: %{public}s) for entry ID %{public}s", v25, 0x16u);
          swift_arrayDestroy();
        }
      }

      (*(v7 + 16))(v10, v12, v6);
      v33 = objc_allocWithZone(sub_C4954());
      v34 = sub_C4964();
      [v20 setMergeableAttributes:v34];

      return (*(v7 + 8))(v12, v6);
    }
  }

  return result;
}