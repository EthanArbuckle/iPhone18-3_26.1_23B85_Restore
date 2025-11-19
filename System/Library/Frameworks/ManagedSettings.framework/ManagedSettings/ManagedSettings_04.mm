uint64_t sub_10005802C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v121 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_103:
    object = *v121;
    if (!*v121)
    {
      goto LABEL_141;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_105:
      v116 = *(v7 + 2);
      if (v116 >= 2)
      {
        while (*a3)
        {
          v117 = *&v7[16 * v116];
          v118 = *&v7[16 * v116 + 24];
          sub_100058878((*a3 + 40 * v117), (*a3 + 40 * *&v7[16 * v116 + 16]), *a3 + 40 * v118, object);
          if (v131)
          {
          }

          if (v118 < v117)
          {
            goto LABEL_128;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_100058CF0(v7);
          }

          if (v116 - 2 >= *(v7 + 2))
          {
            goto LABEL_129;
          }

          v119 = &v7[16 * v116];
          *v119 = v117;
          *(v119 + 1) = v118;
          result = sub_100058C64(v116 - 1);
          v116 = *(v7 + 2);
          if (v116 <= 1)
          {
          }
        }

        goto LABEL_139;
      }
    }

LABEL_135:
    result = sub_100058CF0(v7);
    v7 = result;
    goto LABEL_105;
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    v8 = v6++;
    v129 = v7;
    if (v6 < v5)
    {
      v127 = v5;
      v9 = *a3;
      v10 = (*a3 + 40 * v6);
      v11 = *v10;
      v12 = v10[1];
      v13 = v10[3];
      v122 = v8;
      v14 = (*a3 + 40 * v8);
      v15 = *v14;
      v16 = v14[1];
      v17 = String.lowercased()();
      v18 = String.lowercased()();
      object = v18._object;
      if (v17._countAndFlagsBits == v18._countAndFlagsBits && v17._object == v18._object)
      {
        v132 = 0;
      }

      else
      {
        v132 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v20 = 0;
      v21 = v122 + 2;
      v22 = (v9 + 40 * v122 + 80);
      v7 = v129;
      v23 = v6;
      do
      {
        v25 = v21;
        v26 = v23;
        v27 = v20;
        if (v21 >= v127)
        {
          break;
        }

        v134 = v21;
        v28 = *v22;
        v29 = v22[1];
        v30 = v22[3];
        v31 = *(v22 - 5);
        v32 = *(v22 - 4);
        v33 = String.lowercased()();
        v34 = String.lowercased()();
        object = v34._object;
        v35 = v33._countAndFlagsBits == v34._countAndFlagsBits && v33._object == v34._object;
        v24 = v35 ? 0 : _stringCompareWithSmolCheck(_:_:expecting:)();

        v25 = v134;
        v21 = (v134 + 1);
        v22 += 5;
        v23 = v26 + 1;
        v20 = v27 + 40;
        v7 = v129;
      }

      while (((v132 ^ v24) & 1) == 0);
      if (v132)
      {
        v36 = v122;
        if (v25 < v122)
        {
          goto LABEL_132;
        }

        if (v122 >= v25)
        {
          v6 = v25;
          v8 = v122;
          goto LABEL_31;
        }

        v37 = 0;
        do
        {
          if (v36 != v26)
          {
            if (!*a3)
            {
              goto LABEL_138;
            }

            v39 = *a3 + 40 * v122;
            v40 = v39 + v37;
            v41 = *(v39 + v37);
            v42 = v39 + v27;
            v43 = *(v40 + 16);
            v44 = *(v40 + 24);
            v45 = *(v40 + 32);
            v46 = *(v42 + 72);
            v47 = *(v42 + 56);
            *v40 = *(v42 + 40);
            *(v40 + 16) = v47;
            *(v40 + 32) = v46;
            *(v42 + 40) = v41;
            *(v42 + 56) = v43;
            *(v42 + 64) = v44;
            *(v42 + 72) = v45;
          }

          ++v36;
          v27 -= 40;
          v37 += 40;
        }

        while (v36 < v26--);
      }

      v6 = v25;
      v8 = v122;
    }

LABEL_31:
    v48 = a3[1];
    if (v6 < v48)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_131;
      }

      if (v6 - v8 < a4)
      {
        break;
      }
    }

LABEL_52:
    if (v6 < v8)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1000263EC(0, *(v7 + 2) + 1, 1, v7);
      v7 = result;
    }

    v70 = *(v7 + 2);
    v69 = *(v7 + 3);
    v71 = v70 + 1;
    if (v70 >= v69 >> 1)
    {
      result = sub_1000263EC((v69 > 1), v70 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 2) = v71;
    v72 = &v7[16 * v70];
    *(v72 + 4) = v8;
    *(v72 + 5) = v6;
    v73 = *v121;
    if (!*v121)
    {
      goto LABEL_140;
    }

    if (v70)
    {
      while (1)
      {
        v74 = v71 - 1;
        if (v71 >= 4)
        {
          break;
        }

        if (v71 == 3)
        {
          v75 = *(v7 + 4);
          v76 = *(v7 + 5);
          v85 = __OFSUB__(v76, v75);
          v77 = v76 - v75;
          v78 = v85;
LABEL_72:
          if (v78)
          {
            goto LABEL_119;
          }

          v91 = &v7[16 * v71];
          v93 = *v91;
          v92 = *(v91 + 1);
          v94 = __OFSUB__(v92, v93);
          v95 = v92 - v93;
          v96 = v94;
          if (v94)
          {
            goto LABEL_122;
          }

          v97 = &v7[16 * v74 + 32];
          v99 = *v97;
          v98 = *(v97 + 1);
          v85 = __OFSUB__(v98, v99);
          v100 = v98 - v99;
          if (v85)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v95, v100))
          {
            goto LABEL_126;
          }

          if (v95 + v100 >= v77)
          {
            if (v77 < v100)
            {
              v74 = v71 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v101 = &v7[16 * v71];
        v103 = *v101;
        v102 = *(v101 + 1);
        v85 = __OFSUB__(v102, v103);
        v95 = v102 - v103;
        v96 = v85;
LABEL_86:
        if (v96)
        {
          goto LABEL_121;
        }

        v104 = &v7[16 * v74];
        v106 = *(v104 + 4);
        v105 = *(v104 + 5);
        v85 = __OFSUB__(v105, v106);
        v107 = v105 - v106;
        if (v85)
        {
          goto LABEL_124;
        }

        if (v107 < v95)
        {
          goto LABEL_3;
        }

LABEL_93:
        v112 = v74 - 1;
        if (v74 - 1 >= v71)
        {
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
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
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
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        if (!*a3)
        {
          goto LABEL_137;
        }

        object = v6;
        v113 = *&v7[16 * v112 + 32];
        v114 = *&v7[16 * v74 + 40];
        sub_100058878((*a3 + 40 * v113), (*a3 + 40 * *&v7[16 * v74 + 32]), *a3 + 40 * v114, v73);
        if (v131)
        {
        }

        if (v114 < v113)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_100058CF0(v7);
        }

        if (v112 >= *(v7 + 2))
        {
          goto LABEL_116;
        }

        v115 = &v7[16 * v112];
        *(v115 + 4) = v113;
        *(v115 + 5) = v114;
        result = sub_100058C64(v74);
        v71 = *(v7 + 2);
        v6 = object;
        if (v71 <= 1)
        {
          goto LABEL_3;
        }
      }

      v79 = &v7[16 * v71 + 32];
      v80 = *(v79 - 64);
      v81 = *(v79 - 56);
      v85 = __OFSUB__(v81, v80);
      v82 = v81 - v80;
      if (v85)
      {
        goto LABEL_117;
      }

      v84 = *(v79 - 48);
      v83 = *(v79 - 40);
      v85 = __OFSUB__(v83, v84);
      v77 = v83 - v84;
      v78 = v85;
      if (v85)
      {
        goto LABEL_118;
      }

      v86 = &v7[16 * v71];
      v88 = *v86;
      v87 = *(v86 + 1);
      v85 = __OFSUB__(v87, v88);
      v89 = v87 - v88;
      if (v85)
      {
        goto LABEL_120;
      }

      v85 = __OFADD__(v77, v89);
      v90 = v77 + v89;
      if (v85)
      {
        goto LABEL_123;
      }

      if (v90 >= v82)
      {
        v108 = &v7[16 * v74 + 32];
        v110 = *v108;
        v109 = *(v108 + 1);
        v85 = __OFSUB__(v109, v110);
        v111 = v109 - v110;
        if (v85)
        {
          goto LABEL_127;
        }

        if (v77 < v111)
        {
          v74 = v71 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_103;
    }
  }

  v49 = (v8 + a4);
  if (__OFADD__(v8, a4))
  {
    goto LABEL_133;
  }

  if (v49 >= v48)
  {
    v49 = a3[1];
  }

  if (v49 < v8)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v6 == v49)
  {
    goto LABEL_52;
  }

  v133 = *a3;
  v50 = *a3 + 40 * v6 - 40;
  v123 = v8;
  v124 = v49;
  v51 = v8 - v6;
LABEL_42:
  v126 = v50;
  v128 = v6;
  v125 = v51;
  v52 = v51;
  while (1)
  {
    v135 = v52;
    v54 = v50 + 40;
    v53 = *(v50 + 40);
    v55 = *(v50 + 48);
    v56 = *(v50 + 64);
    v57 = *v50;
    v58 = *(v50 + 8);
    v59 = String.lowercased()();
    object = v59._countAndFlagsBits;
    v60 = String.lowercased()();
    if (v59._countAndFlagsBits == v60._countAndFlagsBits && v59._object == v60._object)
    {

LABEL_41:
      v6 = (v128 + 1);
      v50 = v126 + 40;
      v51 = v125 - 1;
      if (v128 + 1 == v124)
      {
        v6 = v124;
        v7 = v129;
        v8 = v123;
        goto LABEL_52;
      }

      goto LABEL_42;
    }

    v62 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v62 & 1) == 0)
    {
      goto LABEL_41;
    }

    if (!v133)
    {
      break;
    }

    v63 = *(v50 + 40);
    v64 = *(v50 + 56);
    v65 = *(v50 + 64);
    v66 = *(v50 + 72);
    v67 = *(v50 + 16);
    *v54 = *v50;
    *(v50 + 56) = v67;
    v68 = *(v50 + 32);
    *v50 = v63;
    *(v50 + 16) = v64;
    *(v50 + 24) = v65;
    *(v50 + 32) = v66;
    v50 -= 40;
    *(v54 + 32) = v68;
    v52 = v135 + 1;
    if (v135 == -1)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
  return result;
}

uint64_t sub_100058878(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a3;
  v5 = __src;
  v6 = __dst;
  v7 = __src - __dst;
  v8 = (__src - __dst) / 40;
  v9 = a3 - __src;
  v10 = (a3 - __src) / 40;
  if (v8 >= v10)
  {
    v26 = 40 * v10;
    if (a4 != __src || &__src[v26] <= a4)
    {
      v27 = a4;
      memmove(a4, __src, 40 * v10);
      a4 = v27;
    }

    v46 = a4;
    v13 = &a4[v26];
    if (v9 >= 40)
    {
      v12 = a4;
      if (v5 <= v6)
      {
        goto LABEL_44;
      }

LABEL_26:
      v45 = v5 - 40;
      v4 -= 40;
      v28 = v13;
      v50 = v5;
      do
      {
        v48 = v13;
        v29 = *(v28 - 5);
        v30 = *(v28 - 4);
        v28 -= 40;
        v31 = *(v28 + 3);
        v32 = *(v5 - 5);
        v33 = *(v5 - 4);
        v34 = String.lowercased()();
        v35 = String.lowercased()();
        if (v34._countAndFlagsBits == v35._countAndFlagsBits && v34._object == v35._object)
        {
          v37 = 0;
        }

        else
        {
          v37 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        v38 = (v4 + 40);
        if (v37)
        {
          v13 = v48;
          if (v38 != v50)
          {
            v41 = *v45;
            v42 = *(v45 + 1);
            *(v4 + 32) = *(v45 + 4);
            *v4 = v41;
            *(v4 + 16) = v42;
          }

          v12 = v46;
          if (v48 <= v46 || (v5 = v45, v45 <= v6))
          {
            v5 = v45;
            goto LABEL_44;
          }

          goto LABEL_26;
        }

        v5 = v50;
        if (v38 != v48)
        {
          v39 = *v28;
          v40 = *(v28 + 1);
          *(v4 + 32) = *(v28 + 4);
          *v4 = v39;
          *(v4 + 16) = v40;
        }

        v4 -= 40;
        v13 = v28;
      }

      while (v28 > v46);
      v13 = v28;
    }

    v12 = v46;
    goto LABEL_44;
  }

  v11 = 40 * v8;
  v12 = a4;
  if (a4 != __dst || &__dst[v11] <= a4)
  {
    memmove(a4, __dst, v11);
  }

  v13 = &v12[v11];
  if (v7 >= 40 && v5 < v4)
  {
    v47 = &v12[v11];
    while (1)
    {
      v14 = *v5;
      v15 = *(v5 + 1);
      v49 = v5;
      v16 = *(v5 + 3);
      v17 = *v12;
      v18 = *(v12 + 1);
      v19 = String.lowercased()();
      v20 = String.lowercased()();
      v21 = v19._countAndFlagsBits == v20._countAndFlagsBits && v19._object == v20._object;
      if (v21)
      {
        break;
      }

      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v22 & 1) == 0)
      {
        goto LABEL_16;
      }

      v23 = v49;
      v5 = v49 + 40;
      v13 = v47;
      if (v6 != v49)
      {
        goto LABEL_17;
      }

LABEL_18:
      v6 += 40;
      if (v12 >= v13 || v5 >= v4)
      {
        goto LABEL_20;
      }
    }

LABEL_16:
    v23 = v12;
    v21 = v6 == v12;
    v12 += 40;
    v5 = v49;
    v13 = v47;
    if (v21)
    {
      goto LABEL_18;
    }

LABEL_17:
    v24 = *v23;
    v25 = *(v23 + 1);
    *(v6 + 4) = *(v23 + 4);
    *v6 = v24;
    *(v6 + 1) = v25;
    goto LABEL_18;
  }

LABEL_20:
  v5 = v6;
LABEL_44:
  v43 = 40 * ((v13 - v12) / 40);
  if (v5 != v12 || v5 >= &v12[v43])
  {
    memmove(v5, v12, v43);
  }

  return 1;
}

uint64_t sub_100058C64(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100058CF0(v3);
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
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_100058D2C(uint64_t a1, uint64_t a2)
{
  v56 = a2;
  v55 = a1;
  v3 = sub_10000637C(&qword_10007BA10, &qword_100067178);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v51 - v5;
  v66 = sub_10000637C(&qword_10007BA18, &unk_100067180);
  v7 = *(v66 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v66 - 8);
  v10 = &v51 - v9;
  v11 = sub_10000637C(&qword_10007AC78, &unk_100067310);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v72 = &v51 - v13;
  v74 = sub_10000637C(&qword_10007AC70, &unk_100066580);
  v14 = *(v74 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v74);
  v65 = &v51 - v16;
  v17 = sub_10000637C(&qword_10007B9F8, &qword_100067320);
  v18 = sub_10005BCF8(&qword_10007BA20, &qword_10007B9F8, &qword_100067320, sub_10005BA84);
  v61 = v17;
  v62 = v2;
  v60 = v18;
  v19 = dispatch thunk of SettingMetadataProtocol.name.getter();
  v21 = sub_10003CADC(v19, v20);

  v23 = 0;
  v25 = v21 + 64;
  v24 = *(v21 + 64);
  v73 = v21;
  v26 = 1 << *(v21 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & v24;
  v29 = (v26 + 63) >> 6;
  v71 = (v14 + 48);
  v58 = (v14 + 32);
  v63 = (v7 + 56);
  v64 = (v14 + 8);
  v53 = (v7 + 32);
  v57 = _swiftEmptyArrayStorage;
  v52 = (v7 + 8);
  v54 = v10;
  v59 = v6;
  while (1)
  {
    v30 = v23;
    if (!v28)
    {
      break;
    }

LABEL_9:
    v31 = __clz(__rbit64(v28));
    v28 &= v28 - 1;
    v32 = v31 | (v23 << 6);
    v33 = *(v73 + 56);
    v34 = *(v73 + 48) + 40 * v32;
    v35 = *(v34 + 8);
    v70 = *v34;
    v36 = *(v34 + 24);
    v69 = *(v34 + 16);
    v68 = *(v34 + 32);
    v37 = *(v33 + 8 * v32);
    type metadata accessor for WebDomain();
    sub_10005BCB0(&qword_10007ACE0, &type metadata accessor for WebDomain);

    v38 = v37;
    v39 = v72;
    static ShieldSettings.EffectiveActivityCategoryPolicy<>.value(from:)();
    v40 = v74;
    if ((*v71)(v39, 1, v74) == 1)
    {

      result = sub_100008630(v39, &qword_10007AC78, &unk_100067310);
    }

    else
    {
      v67 = v35;
      v41 = v65;
      (*v58)(v65, v39, v40);
      dispatch thunk of SettingMetadataProtocol.combineOperator.getter();
      sub_10000637C(&qword_10007BA30, &qword_100067190);
      v42 = v40;
      v43 = v59;
      v44 = v66;
      if (swift_dynamicCast())
      {
        (*v63)(v43, 0, 1, v44);
        v45 = v54;
        (*v53)(v54, v43, v44);
        if (ActivityCategoryPolicyCombineOperator.currentValue(_:restricts:including:)())
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v57 = sub_100026090(0, *(v57 + 2) + 1, 1, v57);
          }

          v47 = *(v57 + 2);
          v46 = *(v57 + 3);
          if (v47 >= v46 >> 1)
          {
            v57 = sub_100026090((v46 > 1), v47 + 1, 1, v57);
          }

          (*v52)(v45, v66);
          result = (*v64)(v65, v74);
          v48 = v57;
          *(v57 + 2) = v47 + 1;
          v49 = &v48[40 * v47];
          v50 = v67;
          *(v49 + 4) = v70;
          *(v49 + 5) = v50;
          *(v49 + 6) = v69;
          *(v49 + 7) = v36;
          v49[64] = v68;
        }

        else
        {

          (*v52)(v45, v44);
          result = (*v64)(v41, v74);
        }
      }

      else
      {
        (*v64)(v41, v42);

        (*v63)(v43, 1, 1, v44);
        result = sub_100008630(v43, &qword_10007BA10, &qword_100067178);
      }
    }
  }

  while (1)
  {
    v23 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v23 >= v29)
    {

      return v57;
    }

    v28 = *(v25 + 8 * v23);
    ++v30;
    if (v28)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100059418(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, const void *a7)
{
  v53 = a1;
  v55 = sub_10000637C(&qword_10007ACF8, &qword_1000665F0);
  v54 = *(v55 - 8);
  v13 = *(v54 + 64);
  v14 = __chkstk_darwin(v55);
  v16 = v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v49 - v17;
  v56 = swift_allocObject();
  *(v56 + 16) = a7;
  v64 = 0;
  _Block_copy(a7);
  sub_100055B50(a4, a5, &v64, v65);
  v49[1] = a2;
  v52 = a7;
  v49[2] = a4;
  v49[3] = a3;
  v49[4] = a5;
  v50 = v18;
  v51 = v16;
  v19 = a6;
  v20 = sub_100055A58();
  v22 = v21;
  v24 = v65[0];
  v23 = v65[1];
  v25 = *(v21 + 8);
  v63[3] = v20;
  v63[4] = v21;
  sub_1000067BC(v63);

  v25(v24, v23, v20, v22);
  v26 = sub_100008578((v19 + 120), *(v19 + 144));
  v27 = swift_allocObject();
  *(v27 + 16) = sub_100031528;
  *(v27 + 24) = v56;
  v28 = *v26;

  v29 = sub_1000248D4(v63, sub_10005BEA0, v27);
  v31 = v30;
  v49[0] = v29;

  sub_100055A80(&aBlock);
  v32 = type metadata accessor for TokenEncoder();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  TokenEncoder.init(teamIdentifier:keyRetriever:)();

  if (v64)
  {
    v35 = v50;
    dispatch thunk of TokenEncoder.encode(categoryIdentifier:)();
    v36 = v55;
    v37 = v54;
    v38 = v53;
    v39 = Token.data.getter();
    v41 = v40;
    v42.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_1000543C8(v39, v41);
    v61 = sub_100031528;
    v62 = v56;
    aBlock = _NSConcreteStackBlock;
    aBlock_8 = 1107296256;
    v59 = sub_100055788;
    v60 = &unk_100077060;
    v43 = _Block_copy(&aBlock);

    [v49[0] handleWithAction:v38 categoryTokenData:v42.super.isa replyHandler:v43];
  }

  else
  {
    v35 = v51;
    dispatch thunk of TokenEncoder.encode(bundleIdentifier:)();
    v36 = v55;
    v37 = v54;
    v44 = v53;
    v46 = Token.data.getter();
    v48 = v47;
    v42.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_1000543C8(v46, v48);
    v61 = sub_100031528;
    v62 = v56;
    aBlock = _NSConcreteStackBlock;
    aBlock_8 = 1107296256;
    v59 = sub_100055788;
    v60 = &unk_100077038;
    v43 = _Block_copy(&aBlock);

    [v49[0] handleWithAction:v44 applicationTokenData:v42.super.isa replyHandler:v43];
  }

  _Block_release(v43);

  (*(v37 + 8))(v35, v36);
  if (v31)
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    OS_dispatch_source.cancel()();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease_n();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  sub_10000210C(v63);
}

uint64_t sub_100059A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  v10 = sub_10000637C(&qword_10007ACF8, &qword_1000665F0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v38 - v13;
  v45 = swift_allocObject();
  *(v45 + 16) = a5;
  _Block_copy(a5);
  sub_100056024(a2, v48);
  v42 = a2;
  v43 = a3;
  v39 = a1;
  v44 = v14;
  v40 = v11;
  v41 = v10;
  v15 = sub_100055A58();
  v17 = v16;
  v18 = v48[0];
  v19 = v48[1];
  v20 = *(v16 + 8);
  v47[3] = v15;
  v47[4] = v16;
  sub_1000067BC(v47);

  v20(v18, v19, v15, v17);
  v21 = sub_100008578((a4 + 120), *(a4 + 144));
  v22 = swift_allocObject();
  *(v22 + 16) = sub_100031528;
  *(v22 + 24) = v45;
  v23 = *v21;

  v24 = sub_1000248D4(v47, sub_10005BF84, v22);
  v26 = v25;

  sub_100055A80(aBlock);
  v27 = type metadata accessor for TokenEncoder();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  TokenEncoder.init(teamIdentifier:keyRetriever:)();

  v30 = v44;
  dispatch thunk of TokenEncoder.encode(categoryIdentifier:)();
  v32 = v41;
  v33 = Token.data.getter();
  v35 = v34;
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_1000543C8(v33, v35);
  aBlock[4] = sub_100031528;
  aBlock[5] = v45;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100055788;
  aBlock[3] = &unk_100076FC0;
  v37 = _Block_copy(aBlock);

  [v24 handleWithAction:v39 categoryTokenData:isa replyHandler:v37];
  _Block_release(v37);

  if (v26)
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    OS_dispatch_source.cancel()();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease_n();
    (*(v40 + 8))(v30, v32);
  }

  else
  {
    (*(v40 + 8))(v30, v32);
    swift_unknownObjectRelease();
  }

  sub_10000210C(v47);
}

uint64_t sub_100059ED4(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, const void *a7)
{
  v53 = a1;
  v55 = sub_10000637C(&qword_10007ACF8, &qword_1000665F0);
  v54 = *(v55 - 8);
  v13 = *(v54 + 64);
  v14 = __chkstk_darwin(v55);
  v16 = v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v49 - v17;
  v56 = swift_allocObject();
  *(v56 + 16) = a7;
  v64 = 0;
  _Block_copy(a7);
  sub_1000563A8(a4, a5, &v64, v65);
  v49[1] = a2;
  v52 = a7;
  v49[2] = a4;
  v49[3] = a3;
  v49[4] = a5;
  v50 = v18;
  v51 = v16;
  v19 = a6;
  v20 = sub_100055A58();
  v22 = v21;
  v24 = v65[0];
  v23 = v65[1];
  v25 = *(v21 + 8);
  v63[3] = v20;
  v63[4] = v21;
  sub_1000067BC(v63);

  v25(v24, v23, v20, v22);
  v26 = sub_100008578((v19 + 120), *(v19 + 144));
  v27 = swift_allocObject();
  *(v27 + 16) = sub_10001FE48;
  *(v27 + 24) = v56;
  v28 = *v26;

  v29 = sub_1000248D4(v63, sub_10005BF84, v27);
  v31 = v30;
  v49[0] = v29;

  sub_100055A80(&aBlock);
  v32 = type metadata accessor for TokenEncoder();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  TokenEncoder.init(teamIdentifier:keyRetriever:)();

  if (v64)
  {
    v35 = v50;
    dispatch thunk of TokenEncoder.encode(categoryIdentifier:)();
    v36 = v55;
    v37 = v54;
    v38 = v53;
    v39 = Token.data.getter();
    v41 = v40;
    v42.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_1000543C8(v39, v41);
    v61 = sub_10001FE48;
    v62 = v56;
    aBlock = _NSConcreteStackBlock;
    aBlock_8 = 1107296256;
    v59 = sub_100055788;
    v60 = &unk_100076F48;
    v43 = _Block_copy(&aBlock);

    [v49[0] handleWithAction:v38 categoryTokenData:v42.super.isa replyHandler:v43];
  }

  else
  {
    v35 = v51;
    dispatch thunk of TokenEncoder.encode(webDomain:)();
    v36 = v55;
    v37 = v54;
    v44 = v53;
    v46 = Token.data.getter();
    v48 = v47;
    v42.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_1000543C8(v46, v48);
    v61 = sub_10001FE48;
    v62 = v56;
    aBlock = _NSConcreteStackBlock;
    aBlock_8 = 1107296256;
    v59 = sub_100055788;
    v60 = &unk_100076F20;
    v43 = _Block_copy(&aBlock);

    [v49[0] handleWithAction:v44 webDomainTokenData:v42.super.isa replyHandler:v43];
  }

  _Block_release(v43);

  (*(v37 + 8))(v35, v36);
  if (v31)
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    OS_dispatch_source.cancel()();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease_n();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  sub_10000210C(v63);
}

uint64_t sub_10005A4E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, const void *a8)
{
  v77 = a6;
  v76 = a5;
  v80 = sub_10000637C(&qword_10007ACF8, &qword_1000665F0);
  v78 = *(v80 - 8);
  v14 = *(v78 + 64);
  v15 = __chkstk_darwin(v80);
  v79 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v67 - v17;
  v19 = swift_allocObject();
  *(v19 + 16) = a8;
  v88 = 0;
  _Block_copy(a8);
  sub_100055B50(a3, a4, &v88, v89);
  v70 = a3;
  v71 = a4;
  v73 = a1;
  v74 = a2;
  v72 = v18;
  v75 = v19;
  v20 = a7;
  v21 = sub_100055A58();
  v23 = v22;
  v24 = v89[0];
  v25 = v89[1];
  v26 = *(v22 + 8);
  v87[3] = v21;
  v87[4] = v22;
  sub_1000067BC(v87);

  v26(v24, v25, v21, v23);
  v27 = sub_100008578(v20 + 15, v20[18]);
  v28 = swift_allocObject();
  *(v28 + 16) = sub_100031524;
  *(v28 + 24) = v75;
  v29 = *v27;

  v30 = sub_1000249B4(v87, sub_10005BF80, v28);
  v69 = v32;
  v68 = v30;

  sub_100055A80(&aBlock);
  v33 = type metadata accessor for TokenEncoder();
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();
  TokenEncoder.init(teamIdentifier:keyRetriever:)();

  v67 = &v67;
  v38 = v20[2];
  v37 = v20[3];
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  __chkstk_darwin(v36);
  v42 = &v67 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = *(v37 + 8);
  v44 = v74;

  v43(v73, v44, v38, v37);
  (*(v37 + 56))(v38, v37);
  (*(v39 + 8))(v42, v38);
  v45 = v69;
  if ((v88 & 1) == 0)
  {
    v48 = v79;
    dispatch thunk of TokenEncoder.encode(bundleIdentifier:)();
    v49 = v75;
    v58 = String._bridgeToObjectiveC()();
    v59 = v80;
    v60 = v49;
    v61 = Token.data.getter();
    v63 = v62;
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_1000543C8(v61, v63);
    v65 = String._bridgeToObjectiveC()();

    v85 = sub_100031524;
    v86 = v60;
    aBlock = _NSConcreteStackBlock;
    aBlock_8 = 1107296256;
    v83 = sub_100055884;
    v84 = &unk_100076E80;
    v66 = _Block_copy(&aBlock);

    [v68 fetchConfigurationDataForApplication:v58 tokenData:isa localizedDisplayName:v65 replyHandler:{v66, v67}];
    _Block_release(v66);

    (*(v78 + 8))(v48, v59);
    if (!v69)
    {
      goto LABEL_5;
    }

LABEL_7:
    swift_getObjectType();
    swift_unknownObjectRetain();
    OS_dispatch_source.cancel()();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease_n();
    goto LABEL_8;
  }

  v46 = v72;
  dispatch thunk of TokenEncoder.encode(categoryIdentifier:)();
  v47 = v75;
  v50 = String._bridgeToObjectiveC()();
  v51 = String._bridgeToObjectiveC()();

  v52 = Token.data.getter();
  v54 = v53;
  v55 = Data._bridgeToObjectiveC()().super.isa;
  sub_1000543C8(v52, v54);
  v56 = String._bridgeToObjectiveC()();
  v85 = sub_100031524;
  v86 = v47;
  aBlock = _NSConcreteStackBlock;
  aBlock_8 = 1107296256;
  v83 = sub_100055884;
  v84 = &unk_100076EA8;
  v57 = _Block_copy(&aBlock);

  [v68 fetchConfigurationDataForApplication:v50 localizedApplicationDisplayName:v51 categoryTokenData:v55 localizedCategoryDisplayName:v56 replyHandler:{v57, v67}];
  _Block_release(v57);

  (*(v78 + 8))(v46, v80);
  if (v45)
  {
    goto LABEL_7;
  }

LABEL_5:
  swift_unknownObjectRelease();

LABEL_8:
  sub_10000210C(v87);
}

uint64_t sub_10005ADA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const void *a6)
{
  v50 = a4;
  v11 = sub_10000637C(&qword_10007ACF8, &qword_1000665F0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v44 - v14;
  v51 = swift_allocObject();
  *(v51 + 16) = a6;
  _Block_copy(a6);
  v16 = a5;
  sub_100056024(a1, v54);
  v47 = a1;
  v48 = a2;
  v44 = a3;
  v49 = v15;
  v45 = v12;
  v46 = v11;
  v17 = sub_100055A58();
  v19 = v18;
  v20 = v54[0];
  v21 = v54[1];
  v22 = *(v18 + 8);
  v53[3] = v17;
  v53[4] = v18;
  sub_1000067BC(v53);

  v22(v20, v21, v17, v19);

  sub_100055A80(aBlock);
  v23 = type metadata accessor for TokenEncoder();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  v26 = TokenEncoder.init(teamIdentifier:keyRetriever:)();

  v27 = v49;
  dispatch thunk of TokenEncoder.encode(categoryIdentifier:)();
  v48 = v26;
  v28 = sub_100008578((v16 + 120), *(v16 + 144));
  v29 = swift_allocObject();
  *(v29 + 16) = sub_100031524;
  *(v29 + 24) = v51;
  v30 = *v28;

  v31 = sub_1000249B4(v53, sub_10005BF80, v29);
  v33 = v32;

  v35 = String._bridgeToObjectiveC()();
  v36 = v27;
  v37 = v46;
  v38 = Token.data.getter();
  v40 = v39;
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_1000543C8(v38, v40);
  v42 = String._bridgeToObjectiveC()();
  aBlock[4] = sub_100031524;
  aBlock[5] = v51;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100055884;
  aBlock[3] = &unk_100076E08;
  v43 = _Block_copy(aBlock);

  [v31 fetchConfigurationDataForApplication:v35 localizedApplicationDisplayName:0 categoryTokenData:isa localizedCategoryDisplayName:v42 replyHandler:v43];
  _Block_release(v43);

  if (v33)
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    OS_dispatch_source.cancel()();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease_n();

    (*(v45 + 8))(v36, v37);
  }

  else
  {
    (*(v45 + 8))(v36, v37);
    swift_unknownObjectRelease();
  }

  sub_10000210C(v53);
}

uint64_t sub_10005B294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const void *a8)
{
  v65 = a6;
  v64 = a5;
  v67 = sub_10000637C(&qword_10007ACF8, &qword_1000665F0);
  v66 = *(v67 - 8);
  v14 = *(v66 + 64);
  v15 = __chkstk_darwin(v67);
  v17 = v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = v58 - v18;
  v68 = swift_allocObject();
  *(v68 + 16) = a8;
  v76 = 0;
  _Block_copy(a8);
  sub_1000563A8(a3, a4, &v76, v77);
  v58[0] = a3;
  v63 = a8;
  v58[1] = a4;
  v61 = a1;
  v62 = a2;
  v59 = v17;
  v60 = v19;
  v20 = a7;
  v21 = sub_100055A58();
  v23 = v22;
  v24 = v77[0];
  v25 = v77[1];
  v26 = *(v22 + 8);
  v75[3] = v21;
  v75[4] = v22;
  sub_1000067BC(v75);

  v26(v24, v25, v21, v23);
  v27 = sub_100008578((v20 + 120), *(v20 + 144));
  v28 = swift_allocObject();
  *(v28 + 16) = sub_100031464;
  *(v28 + 24) = v68;
  v29 = *v27;

  v30 = sub_1000249B4(v75, sub_10005BE64, v28);
  v32 = v31;
  v33 = v30;

  sub_100055A80(&aBlock);
  v34 = type metadata accessor for TokenEncoder();
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  v37 = TokenEncoder.init(teamIdentifier:keyRetriever:)();

  if (v76)
  {
    v38 = v60;
    dispatch thunk of TokenEncoder.encode(categoryIdentifier:)();
    v39 = v67;
    v63 = v37;
    v40 = String._bridgeToObjectiveC()();
    v41 = Token.data.getter();
    v42 = v33;
    v44 = v43;
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_1000543C8(v41, v44);
    v46 = String._bridgeToObjectiveC()();
    v73 = sub_100031464;
    v74 = v68;
    aBlock = _NSConcreteStackBlock;
    aBlock_8 = 1107296256;
    v71 = sub_100055884;
    v72 = &unk_100076D90;
    v47 = _Block_copy(&aBlock);

    [v42 fetchConfigurationDataForWebDomain:v40 categoryTokenData:isa localizedDisplayName:v46 replyHandler:v47];
    _Block_release(v47);

    (*(v66 + 8))(v38, v39);
  }

  else
  {
    v48 = v59;
    dispatch thunk of TokenEncoder.encode(webDomain:)();
    v49 = v67;
    v63 = v37;
    v51 = String._bridgeToObjectiveC()();
    v52 = Token.data.getter();
    v53 = v33;
    v55 = v54;
    v56 = Data._bridgeToObjectiveC()().super.isa;
    sub_1000543C8(v52, v55);
    v73 = sub_100031464;
    v74 = v68;
    aBlock = _NSConcreteStackBlock;
    aBlock_8 = 1107296256;
    v71 = sub_100055884;
    v72 = &unk_100076D68;
    v57 = _Block_copy(&aBlock);

    [v53 fetchConfigurationDataForWebDomain:v51 tokenData:v56 replyHandler:v57];
    _Block_release(v57);

    (*(v66 + 8))(v48, v49);
  }

  if (v32)
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    OS_dispatch_source.cancel()();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease_n();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  sub_10000210C(v75);
}

uint64_t sub_10005B930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t, char *))
{
  a7(&v11, a1, a2, a3, a4, &v10);

  v8 = String._bridgeToObjectiveC()();
  (*(a6 + 16))(a6, v8, 0);
  swift_bridgeObjectRelease_n();

  v13 = v12;
  return sub_100020EA0(&v13);
}

unint64_t sub_10005BA30()
{
  result = qword_10007BA08;
  if (!qword_10007BA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007BA08);
  }

  return result;
}

unint64_t sub_10005BA84()
{
  result = qword_10007BA28;
  if (!qword_10007BA28)
  {
    sub_100006914(&qword_10007ACA0, &unk_1000665B0);
    sub_10005BCB0(&qword_10007ACE0, &type metadata accessor for WebDomain);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007BA28);
  }

  return result;
}

unint64_t sub_10005BB4C()
{
  result = qword_10007BA58;
  if (!qword_10007BA58)
  {
    sub_100006914(&qword_10007ACC0, &qword_1000665D0);
    sub_10005BE10(&qword_10007BA60, &qword_10007AD30, &qword_100066628);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007BA58);
  }

  return result;
}

unint64_t sub_10005BBE8()
{
  result = qword_10007BA88;
  if (!qword_10007BA88)
  {
    sub_100006914(&qword_10007AC98, &unk_1000671E0);
    sub_10005BCB0(&qword_10007ACE8, &type metadata accessor for Application);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007BA88);
  }

  return result;
}

uint64_t sub_10005BCB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10005BCF8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100006914(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10005BD74()
{
  result = qword_10007BAB0;
  if (!qword_10007BAB0)
  {
    sub_100006914(&qword_10007ACB0, &qword_1000665C0);
    sub_10005BE10(&qword_10007BAB8, &qword_10007AD08, &qword_100066600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007BAB0);
  }

  return result;
}

uint64_t sub_10005BE10(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100006914(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10005BE64(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(0, 0xF000000000000000, a1);
}

uint64_t sub_10005BEA0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(0, a1);
}

unint64_t sub_10005BEE4()
{
  result = qword_10007BAC8;
  if (!qword_10007BAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007BAC8);
  }

  return result;
}

uint64_t Dictionary<>.sanitize(isInternalClient:)(int a1, uint64_t a2)
{
  v49 = a1;
  v54 = type metadata accessor for Logger();
  v3 = *(v54 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v54);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v50 = &v46 - v8;
  v9 = *(a2 + 16);
  sub_100009638();
  v47 = Dictionary.init(minimumCapacity:)();
  v10 = a2 + 64;
  v11 = 1 << *(a2 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a2 + 64);
  v14 = (v11 + 63) >> 6;
  v53 = v3 + 8;

  v15 = 0;
  *&v16 = 136446466;
  v46 = v16;
  *&v16 = 136446210;
  v48 = v16;
  v51 = a2;
  v52 = v7;
  v55 = v14;
  while (1)
  {
    v17 = v15;
    if (!v13)
    {
      break;
    }

LABEL_8:
    v18 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v19 = v18 | (v15 << 6);
    v20 = (*(a2 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = *(*(a2 + 56) + 8 * v19);

    v24 = v23;
    v56 = v21;
    static SettingMetadataDirectory.metadata(for:)();
    v57 = v24;
    sub_100003AA0(&v58, v59);
    v25 = v60;
    sub_100008578(v59, v60);
    v26 = sub_100060E78(v24, v49 & 1, v25);
    v27 = v47;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v58 = v27;
    v29 = sub_1000182E8(v56, v22);
    v31 = *(v27 + 16);
    v32 = (v30 & 1) == 0;
    v33 = __OFADD__(v31, v32);
    v34 = v31 + v32;
    if (v33)
    {
      goto LABEL_21;
    }

    v35 = v30;
    if (*(v27 + 24) < v34)
    {
      sub_10001B190(v34, isUniquelyReferenced_nonNull_native);
      v29 = sub_1000182E8(v56, v22);
      if ((v35 & 1) != (v36 & 1))
      {
        goto LABEL_23;
      }

LABEL_13:
      if (v35)
      {
        goto LABEL_14;
      }

      goto LABEL_16;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_13;
    }

    v40 = v29;
    sub_10001DD34();
    v29 = v40;
    if (v35)
    {
LABEL_14:
      v37 = v29;

      v47 = v58;
      v38 = *(v58 + 56);
      v39 = *(v38 + 8 * v37);
      *(v38 + 8 * v37) = v26;

      goto LABEL_18;
    }

LABEL_16:
    v41 = v58;
    *(v58 + 8 * (v29 >> 6) + 64) |= 1 << v29;
    v42 = (v41[6] + 16 * v29);
    *v42 = v56;
    v42[1] = v22;
    *(v41[7] + 8 * v29) = v26;

    v43 = v41[2];
    v33 = __OFADD__(v43, 1);
    v44 = v43 + 1;
    if (v33)
    {
      goto LABEL_22;
    }

    v47 = v41;
    v41[2] = v44;
LABEL_18:
    a2 = v51;
    v14 = v55;
    sub_10000210C(v59);
  }

  while (1)
  {
    v15 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v15 >= v14)
    {

      return v47;
    }

    v13 = *(v10 + 8 * v15);
    ++v17;
    if (v13)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10005C67C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Application();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_100063564(&qword_10007ACE8, &type metadata accessor for Application), v9 = dispatch thunk of Hashable._rawHashValue(seed:)(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v7, *(v19 + 48) + v15 * v11, v3);
      sub_100063564(&qword_10007AD70, &type metadata accessor for Application);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v16)(v7, v3);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_10005C8AC(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v3 = v2;
  swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for SettingMetadata();
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v30 - v10;
  v12 = *(*(a2 - 8) + 64);
  v13 = __chkstk_darwin(v9);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v5 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v13);
  v19 = &v30 - v18;
  (*(v20 + 16))(v15, v3, a2);
  v21 = swift_dynamicCast();
  v22 = *(v16 + 56);
  if (v21)
  {
    v22(v11, 0, 1, v5);
    (*(v16 + 32))(v19, v11, v5);
    v23 = SettingMetadata.maximumCount.getter();
    if ((v24 & 1) == 0 && (v25 = v23, objc_opt_self(), swift_dynamicCastObjCClass()) && (v31 = 0, sub_100009638(), static Array._conditionallyBridgeFromObjectiveC(_:result:)(), v31) && (v31 >> 62 ? (v26 = _CocoaArrayWrapper.endIndex.getter()) : (v26 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v25 < v26))
    {
      sub_1000635AC();
      swift_allocError();
      *v27 = 1;
      swift_willThrow();
      return (*(v16 + 8))(v19, v5);
    }

    else
    {
      return (*(v16 + 8))(v19, v5);
    }
  }

  else
  {
    v22(v11, 1, 1, v5);
    (*(v7 + 8))(v11, v6);
    sub_1000635AC();
    swift_allocError();
    *v29 = 1;
    return swift_willThrow();
  }
}

uint64_t sub_10005CC58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(char *, char *))
{
  v29 = a4;
  v6 = a3(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = v28 - v13;
  result = __chkstk_darwin(v12);
  v17 = v28 - v16;
  v18 = 0;
  v30 = a1;
  v31 = a2;
  v21 = *(a1 + 56);
  v20 = a1 + 56;
  v19 = v21;
  v22 = 1 << *(v20 - 24);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v19;
  v25 = (v22 + 63) >> 6;
  v28[1] = v7 + 32;
  v28[2] = v7 + 16;
  v28[0] = v7 + 8;
  if ((v23 & v19) != 0)
  {
    do
    {
      v26 = v18;
LABEL_9:
      v27 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
      (*(v7 + 16))(v17, *(v30 + 48) + *(v7 + 72) * (v27 | (v26 << 6)), v6);
      (*(v7 + 32))(v11, v17, v6);
      v29(v14, v11);
      result = (*(v7 + 8))(v14, v6);
    }

    while (v24);
  }

  while (1)
  {
    v26 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v26 >= v25)
    {

      return v31;
    }

    v24 = *(v20 + 8 * v26);
    ++v18;
    if (v24)
    {
      v18 = v26;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10005CE84(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_10000637C(&qword_10007AF20, &unk_1000668E0);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = v9[5];
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (v9[6] + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_10005D0A8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = type metadata accessor for WebDomain();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_10000637C(&qword_10007B890, &qword_100067070);
  result = static _SetStorage.allocate(capacity:)();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    sub_100063564(&qword_10007ACE0, &type metadata accessor for WebDomain);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_10005D3D0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = type metadata accessor for Application();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_10000637C(&qword_10007B888, &unk_100067350);
  result = static _SetStorage.allocate(capacity:)();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    sub_100063564(&qword_10007ACE8, &type metadata accessor for Application);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_10005D6F8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), void (*a5)(char *))
{
  v27 = a3;
  v28 = a5;
  v26 = a2;
  v8 = sub_10000637C(a2, a3);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v25 - v10;
  v12 = a4(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  result = __chkstk_darwin(v12);
  v17 = v25 - v16;
  if (*(*v5 + 16))
  {
    v18 = 1 << *(a1 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(a1 + 56);
    v21 = (v18 + 63) >> 6;
    v25[1] = v13 + 8;
    v25[2] = v13 + 16;

    for (i = 0; v20; result = sub_100008630(v11, v26, v27))
    {
      v23 = i;
LABEL_10:
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      (*(v13 + 16))(v17, *(a1 + 48) + *(v13 + 72) * (v24 | (v23 << 6)), v12);
      v28(v17);
      (*(v13 + 8))(v17, v12);
    }

    while (1)
    {
      v23 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v23 >= v21)
      {
      }

      v20 = *(a1 + 56 + 8 * v23);
      ++i;
      if (v20)
      {
        i = v23;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_10005D914(uint64_t a1, void *a2)
{
  v5 = sub_10000637C(&qword_10007B9F0, "6N");
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = (&v68 - v10);
  v12 = type metadata accessor for WebDomain();
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12);
  v88 = (&v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __chkstk_darwin(v14);
  v18 = (&v68 - v17);
  __chkstk_darwin(v16);
  v83 = (&v68 - v20);
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v69 = v11;
  v71 = v9;
  v22 = a1 + 56;
  v21 = *(a1 + 56);
  v23 = -1 << *(a1 + 32);
  v82 = ~v23;
  if (-v23 < 64)
  {
    v24 = ~(-1 << -v23);
  }

  else
  {
    v24 = -1;
  }

  v90 = (v24 & v21);
  v75 = (63 - v23) >> 6;
  v89 = v19 + 16;
  v80 = (v19 + 48);
  v81 = (v19 + 56);
  v79 = (v19 + 32);
  v85 = a2 + 7;
  v70 = v19;
  v91 = (v19 + 8);

  v26 = 0;
  v72 = a1;
  for (i = a1 + 56; ; v22 = i)
  {
    v27 = v90;
    v28 = v26;
    if (v90)
    {
LABEL_14:
      v2 = (v27 - 1) & v27;
      v32 = v69;
      (*(v70 + 16))(v69, *(a1 + 48) + *(v70 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12);
      v33 = 0;
      v30 = v28;
    }

    else
    {
      v29 = v75 <= (v26 + 1) ? v26 + 1 : v75;
      v30 = v29 - 1;
      v31 = v26;
      while (1)
      {
        v28 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          goto LABEL_57;
        }

        if (v28 >= v75)
        {
          break;
        }

        v27 = *(v22 + 8 * v28);
        ++v31;
        if (v27)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v33 = 1;
      v32 = v69;
    }

    v77 = *v81;
    v77(v32, v33, 1, v12);
    v92 = a1;
    v93 = v22;
    v94 = v82;
    v95 = v30;
    v96 = v2;
    v76 = *v80;
    if (v76(v32, 1, v12) == 1)
    {
      sub_100008630(v32, &qword_10007B9F0, "6N");
      goto LABEL_52;
    }

    v74 = *v79;
    v74(v83, v32, v12);
    v34 = a2[5];
    v73 = sub_100063564(&qword_10007ACE0, &type metadata accessor for WebDomain);
    v35 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v36 = -1 << *(a2 + 32);
    v26 = v35 & ~v36;
    v28 = v26 >> 6;
    v22 = 1 << v26;
    if (((1 << v26) & v85[v26 >> 6]) != 0)
    {
      break;
    }

    (*v91)(v83, v12);
LABEL_22:
    v26 = v30;
    v90 = v2;
  }

  v68 = v91 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v84 = ~v36;
  v37 = *(v70 + 72);
  v86 = *(v70 + 16);
  v87 = v37;
  while (1)
  {
    v86(v18, a2[6] + v87 * v26, v12);
    v38 = sub_100063564(&qword_10007AD98, &type metadata accessor for WebDomain);
    v39 = dispatch thunk of static Equatable.== infix(_:_:)();
    v90 = *v91;
    v90(v18, v12);
    if (v39)
    {
      break;
    }

    v26 = (v26 + 1) & v84;
    v28 = v26 >> 6;
    v22 = 1 << v26;
    if (((1 << v26) & v85[v26 >> 6]) == 0)
    {
      a1 = v72;
      v90(v83, v12);
      goto LABEL_22;
    }
  }

  v84 = v38;
  v40 = (v90)(v83, v12);
  v41 = *(a2 + 32);
  v68 = ((1 << v41) + 63) >> 6;
  v25 = 8 * v68;
  a1 = v72;
  if ((v41 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v69 = &v68;
    __chkstk_darwin(v40);
    v43 = &v68 - ((v42 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v43, v85, v42);
    v44 = *&v43[8 * v28] & ~v22;
    v45 = a2[2];
    v83 = v43;
    *&v43[8 * v28] = v44;
    v46 = v45 - 1;
    v26 = v71;
    v47 = i;
    v48 = v75;
LABEL_26:
    v70 = v46;
    while (v2)
    {
      v49 = v30;
LABEL_38:
      v52 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v86(v26, *(a1 + 48) + (v52 | (v49 << 6)) * v87, v12);
      v53 = 0;
LABEL_39:
      v77(v26, v53, 1, v12);
      v92 = a1;
      v93 = v47;
      v94 = v82;
      v95 = v30;
      v96 = v2;
      if (v76(v26, 1, v12) == 1)
      {
        sub_100008630(v26, &qword_10007B9F0, "6N");
        a2 = sub_10005D0A8(v83, v68, v70, a2);
        goto LABEL_52;
      }

      v74(v88, v26, v12);
      v54 = a2[5];
      v55 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v56 = a2;
      v57 = -1 << *(a2 + 32);
      v58 = v55 & ~v57;
      v28 = v58 >> 6;
      v22 = 1 << v58;
      if (((1 << v58) & v85[v58 >> 6]) != 0)
      {
        v86(v18, v56[6] + v58 * v87, v12);
        v59 = dispatch thunk of static Equatable.== infix(_:_:)();
        v90(v18, v12);
        if ((v59 & 1) == 0)
        {
          v60 = ~v57;
          do
          {
            v58 = (v58 + 1) & v60;
            v28 = v58 >> 6;
            v22 = 1 << v58;
            if (((1 << v58) & v85[v58 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v86(v18, v56[6] + v58 * v87, v12);
            v61 = dispatch thunk of static Equatable.== infix(_:_:)();
            v90(v18, v12);
          }

          while ((v61 & 1) == 0);
        }

        v90(v88, v12);
        v62 = v83[v28];
        v83[v28] = v62 & ~v22;
        a2 = v56;
        a1 = v72;
        v26 = v71;
        v47 = i;
        v48 = v75;
        if ((v62 & v22) != 0)
        {
          v46 = v70 - 1;
          if (__OFSUB__(v70, 1))
          {
            __break(1u);
          }

          if (v70 == 1)
          {

            a2 = &_swiftEmptySetSingleton;
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v90(v88, v12);
        a2 = v56;
        a1 = v72;
        v26 = v71;
        v47 = i;
        v48 = v75;
      }
    }

    if (v48 <= (v30 + 1))
    {
      v50 = v30 + 1;
    }

    else
    {
      v50 = v48;
    }

    v51 = v50 - 1;
    while (1)
    {
      v49 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v49 >= v48)
      {
        v2 = 0;
        v53 = 1;
        v30 = v51;
        goto LABEL_39;
      }

      v2 = *(v47 + 8 * v49);
      ++v30;
      if (v2)
      {
        v30 = v49;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v64 = v25;

    v83 = a2;
    v65 = v64;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v66 = v83;

      a2 = v66;
      continue;
    }

    break;
  }

  v67 = swift_slowAlloc();
  memcpy(v67, v85, v65);
  a2 = sub_10005F3B4(v67, v68, v83, v26, &v92);

LABEL_52:
  sub_100003AB8();
  return a2;
}

void *sub_10005E378(uint64_t a1, void *a2)
{
  v5 = sub_10000637C(&qword_10007AC90, &unk_1000665A0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = (&v68 - v10);
  v12 = type metadata accessor for Application();
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12);
  v88 = (&v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __chkstk_darwin(v14);
  v18 = (&v68 - v17);
  __chkstk_darwin(v16);
  v83 = (&v68 - v20);
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v69 = v11;
  v71 = v9;
  v22 = a1 + 56;
  v21 = *(a1 + 56);
  v23 = -1 << *(a1 + 32);
  v82 = ~v23;
  if (-v23 < 64)
  {
    v24 = ~(-1 << -v23);
  }

  else
  {
    v24 = -1;
  }

  v90 = (v24 & v21);
  v75 = (63 - v23) >> 6;
  v89 = v19 + 16;
  v80 = (v19 + 48);
  v81 = (v19 + 56);
  v79 = (v19 + 32);
  v85 = a2 + 7;
  v70 = v19;
  v91 = (v19 + 8);

  v26 = 0;
  v72 = a1;
  for (i = a1 + 56; ; v22 = i)
  {
    v27 = v90;
    v28 = v26;
    if (v90)
    {
LABEL_14:
      v2 = (v27 - 1) & v27;
      v32 = v69;
      (*(v70 + 16))(v69, *(a1 + 48) + *(v70 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12);
      v33 = 0;
      v30 = v28;
    }

    else
    {
      v29 = v75 <= (v26 + 1) ? v26 + 1 : v75;
      v30 = v29 - 1;
      v31 = v26;
      while (1)
      {
        v28 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          goto LABEL_57;
        }

        if (v28 >= v75)
        {
          break;
        }

        v27 = *(v22 + 8 * v28);
        ++v31;
        if (v27)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v33 = 1;
      v32 = v69;
    }

    v77 = *v81;
    v77(v32, v33, 1, v12);
    v92 = a1;
    v93 = v22;
    v94 = v82;
    v95 = v30;
    v96 = v2;
    v76 = *v80;
    if (v76(v32, 1, v12) == 1)
    {
      sub_100008630(v32, &qword_10007AC90, &unk_1000665A0);
      goto LABEL_52;
    }

    v74 = *v79;
    v74(v83, v32, v12);
    v34 = a2[5];
    v73 = sub_100063564(&qword_10007ACE8, &type metadata accessor for Application);
    v35 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v36 = -1 << *(a2 + 32);
    v26 = v35 & ~v36;
    v28 = v26 >> 6;
    v22 = 1 << v26;
    if (((1 << v26) & v85[v26 >> 6]) != 0)
    {
      break;
    }

    (*v91)(v83, v12);
LABEL_22:
    v26 = v30;
    v90 = v2;
  }

  v68 = v91 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v84 = ~v36;
  v37 = *(v70 + 72);
  v86 = *(v70 + 16);
  v87 = v37;
  while (1)
  {
    v86(v18, a2[6] + v87 * v26, v12);
    v38 = sub_100063564(&qword_10007AD70, &type metadata accessor for Application);
    v39 = dispatch thunk of static Equatable.== infix(_:_:)();
    v90 = *v91;
    v90(v18, v12);
    if (v39)
    {
      break;
    }

    v26 = (v26 + 1) & v84;
    v28 = v26 >> 6;
    v22 = 1 << v26;
    if (((1 << v26) & v85[v26 >> 6]) == 0)
    {
      a1 = v72;
      v90(v83, v12);
      goto LABEL_22;
    }
  }

  v84 = v38;
  v40 = (v90)(v83, v12);
  v41 = *(a2 + 32);
  v68 = ((1 << v41) + 63) >> 6;
  v25 = 8 * v68;
  a1 = v72;
  if ((v41 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v69 = &v68;
    __chkstk_darwin(v40);
    v43 = &v68 - ((v42 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v43, v85, v42);
    v44 = *&v43[8 * v28] & ~v22;
    v45 = a2[2];
    v83 = v43;
    *&v43[8 * v28] = v44;
    v46 = v45 - 1;
    v26 = v71;
    v47 = i;
    v48 = v75;
LABEL_26:
    v70 = v46;
    while (v2)
    {
      v49 = v30;
LABEL_38:
      v52 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v86(v26, *(a1 + 48) + (v52 | (v49 << 6)) * v87, v12);
      v53 = 0;
LABEL_39:
      v77(v26, v53, 1, v12);
      v92 = a1;
      v93 = v47;
      v94 = v82;
      v95 = v30;
      v96 = v2;
      if (v76(v26, 1, v12) == 1)
      {
        sub_100008630(v26, &qword_10007AC90, &unk_1000665A0);
        a2 = sub_10005D3D0(v83, v68, v70, a2);
        goto LABEL_52;
      }

      v74(v88, v26, v12);
      v54 = a2[5];
      v55 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v56 = a2;
      v57 = -1 << *(a2 + 32);
      v58 = v55 & ~v57;
      v28 = v58 >> 6;
      v22 = 1 << v58;
      if (((1 << v58) & v85[v58 >> 6]) != 0)
      {
        v86(v18, v56[6] + v58 * v87, v12);
        v59 = dispatch thunk of static Equatable.== infix(_:_:)();
        v90(v18, v12);
        if ((v59 & 1) == 0)
        {
          v60 = ~v57;
          do
          {
            v58 = (v58 + 1) & v60;
            v28 = v58 >> 6;
            v22 = 1 << v58;
            if (((1 << v58) & v85[v58 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v86(v18, v56[6] + v58 * v87, v12);
            v61 = dispatch thunk of static Equatable.== infix(_:_:)();
            v90(v18, v12);
          }

          while ((v61 & 1) == 0);
        }

        v90(v88, v12);
        v62 = v83[v28];
        v83[v28] = v62 & ~v22;
        a2 = v56;
        a1 = v72;
        v26 = v71;
        v47 = i;
        v48 = v75;
        if ((v62 & v22) != 0)
        {
          v46 = v70 - 1;
          if (__OFSUB__(v70, 1))
          {
            __break(1u);
          }

          if (v70 == 1)
          {

            a2 = &_swiftEmptySetSingleton;
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v90(v88, v12);
        a2 = v56;
        a1 = v72;
        v26 = v71;
        v47 = i;
        v48 = v75;
      }
    }

    if (v48 <= (v30 + 1))
    {
      v50 = v30 + 1;
    }

    else
    {
      v50 = v48;
    }

    v51 = v50 - 1;
    while (1)
    {
      v49 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v49 >= v48)
      {
        v2 = 0;
        v53 = 1;
        v30 = v51;
        goto LABEL_39;
      }

      v2 = *(v47 + 8 * v49);
      ++v30;
      if (v2)
      {
        v30 = v49;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v64 = v25;

    v83 = a2;
    v65 = v64;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v66 = v83;

      a2 = v66;
      continue;
    }

    break;
  }

  v67 = swift_slowAlloc();
  memcpy(v67, v85, v65);
  a2 = sub_10005F888(v67, v68, v83, v26, &v92);

LABEL_52:
  sub_100003AB8();
  return a2;
}

uint64_t sub_10005EDDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for WebDomain();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_100063564(&qword_10007ACE0, &type metadata accessor for WebDomain);
  v35 = a1;
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v11 + 56;
  v33 = v11 + 56;
  v34 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v30 = v3;
    v31 = v7;
    v32 = a2;
    v17 = ~v15;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    while (1)
    {
      v18(v10, *(v34 + 48) + v21 * v16, v6);
      sub_100063564(&qword_10007AD98, &type metadata accessor for WebDomain);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v33 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v23 = 1;
        v7 = v31;
        a2 = v32;
        return (*(v7 + 56))(a2, v23, 1, v6);
      }
    }

    v24 = v30;
    v25 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v24;
    v36 = *v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10004B4B4();
      v27 = v36;
    }

    v7 = v31;
    a2 = v32;
    (*(v31 + 32))(v32, *(v27 + 48) + v21 * v16, v6);
    sub_10005FD5C(v16, &type metadata accessor for WebDomain, &qword_10007ACE0, &type metadata accessor for WebDomain, &protocol conformance descriptor for WebDomain);
    v23 = 0;
    *v24 = v36;
  }

  else
  {
    v23 = 1;
  }

  return (*(v7 + 56))(a2, v23, 1, v6);
}

uint64_t sub_10005F0C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for Application();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_100063564(&qword_10007ACE8, &type metadata accessor for Application);
  v35 = a1;
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v11 + 56;
  v33 = v11 + 56;
  v34 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v30 = v3;
    v31 = v7;
    v32 = a2;
    v17 = ~v15;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    while (1)
    {
      v18(v10, *(v34 + 48) + v21 * v16, v6);
      sub_100063564(&qword_10007AD70, &type metadata accessor for Application);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v33 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v23 = 1;
        v7 = v31;
        a2 = v32;
        return (*(v7 + 56))(a2, v23, 1, v6);
      }
    }

    v24 = v30;
    v25 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v24;
    v36 = *v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10004B4DC();
      v27 = v36;
    }

    v7 = v31;
    a2 = v32;
    (*(v31 + 32))(v32, *(v27 + 48) + v21 * v16, v6);
    sub_10005FD5C(v16, &type metadata accessor for Application, &qword_10007ACE8, &type metadata accessor for Application, &protocol conformance descriptor for Application);
    v23 = 0;
    *v24 = v36;
  }

  else
  {
    v23 = 1;
  }

  return (*(v7 + 56))(a2, v23, 1, v6);
}

void *sub_10005F3B4(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v50 = a2;
  v9 = sub_10000637C(&qword_10007B9F0, "6N");
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v49 - v11;
  v13 = type metadata accessor for WebDomain();
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13);
  v60 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v15);
  v66 = &v49 - v18;
  v19 = *(a3 + 16);
  v20 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v21 = *(a1 + v20);
  v52 = a1;
  v53 = v12;
  *(a1 + v20) = v21 & ((-1 << a4) - 1);
  v22 = v19 - 1;
  v63 = v23 + 16;
  v64 = a3;
  v57 = (v23 + 48);
  v58 = (v23 + 56);
  v56 = (v23 + 32);
  v62 = a3 + 56;
  v59 = v23;
  v65 = (v23 + 8);
  v54 = a5;
  while (2)
  {
    v51 = v22;
    do
    {
      while (1)
      {
        v25 = *a5;
        v26 = a5[1];
        v28 = a5[2];
        v27 = a5[3];
        v29 = a5[4];
        if (!v29)
        {
          v31 = (v28 + 64) >> 6;
          if (v31 <= v27 + 1)
          {
            v32 = v27 + 1;
          }

          else
          {
            v32 = (v28 + 64) >> 6;
          }

          v33 = v32 - 1;
          while (1)
          {
            v30 = v27 + 1;
            if (__OFADD__(v27, 1))
            {
              break;
            }

            if (v30 >= v31)
            {
              v34 = 0;
              v35 = 1;
              goto LABEL_15;
            }

            v29 = *(v26 + 8 * v30);
            ++v27;
            if (v29)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

        v30 = a5[3];
LABEL_14:
        v34 = (v29 - 1) & v29;
        (*(v59 + 16))(v12, *(v25 + 48) + *(v59 + 72) * (__clz(__rbit64(v29)) | (v30 << 6)), v13);
        v35 = 0;
        v33 = v30;
LABEL_15:
        (*v58)(v12, v35, 1, v13);
        *a5 = v25;
        a5[1] = v26;
        a5[2] = v28;
        a5[3] = v33;
        a5[4] = v34;
        if ((*v57)(v12, 1, v13) == 1)
        {
          sub_100008630(v12, &qword_10007B9F0, "6N");
          v48 = v64;

          return sub_10005D0A8(v52, v50, v51, v48);
        }

        (*v56)(v66, v12, v13);
        v36 = v64;
        v37 = *(v64 + 40);
        sub_100063564(&qword_10007ACE0, &type metadata accessor for WebDomain);
        v38 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v39 = -1 << *(v36 + 32);
        v40 = v38 & ~v39;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) != 0)
        {
          break;
        }

        v24 = *v65;
LABEL_4:
        result = (v24)(v66, v13);
      }

      v55 = v65 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v61 = ~v39;
      v43 = *(v59 + 72);
      v44 = *(v59 + 16);
      while (1)
      {
        v45 = v60;
        v44(v60, *(v64 + 48) + v43 * v40, v13);
        sub_100063564(&qword_10007AD98, &type metadata accessor for WebDomain);
        v46 = dispatch thunk of static Equatable.== infix(_:_:)();
        v24 = *v65;
        (*v65)(v45, v13);
        if (v46)
        {
          break;
        }

        v40 = (v40 + 1) & v61;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) == 0)
        {
          v12 = v53;
          a5 = v54;
          goto LABEL_4;
        }
      }

      result = (v24)(v66, v13);
      v12 = v53;
      v47 = v52[v41];
      v52[v41] = v47 & ~v42;
      a5 = v54;
    }

    while ((v47 & v42) == 0);
    v22 = v51 - 1;
    if (__OFSUB__(v51, 1))
    {
LABEL_30:
      __break(1u);
      return result;
    }

    if (v51 != 1)
    {
      continue;
    }

    return &_swiftEmptySetSingleton;
  }
}

void *sub_10005F888(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v50 = a2;
  v9 = sub_10000637C(&qword_10007AC90, &unk_1000665A0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v49 - v11;
  v13 = type metadata accessor for Application();
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13);
  v60 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v15);
  v66 = &v49 - v18;
  v19 = *(a3 + 16);
  v20 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v21 = *(a1 + v20);
  v52 = a1;
  v53 = v12;
  *(a1 + v20) = v21 & ((-1 << a4) - 1);
  v22 = v19 - 1;
  v63 = v23 + 16;
  v64 = a3;
  v57 = (v23 + 48);
  v58 = (v23 + 56);
  v56 = (v23 + 32);
  v62 = a3 + 56;
  v59 = v23;
  v65 = (v23 + 8);
  v54 = a5;
  while (2)
  {
    v51 = v22;
    do
    {
      while (1)
      {
        v25 = *a5;
        v26 = a5[1];
        v28 = a5[2];
        v27 = a5[3];
        v29 = a5[4];
        if (!v29)
        {
          v31 = (v28 + 64) >> 6;
          if (v31 <= v27 + 1)
          {
            v32 = v27 + 1;
          }

          else
          {
            v32 = (v28 + 64) >> 6;
          }

          v33 = v32 - 1;
          while (1)
          {
            v30 = v27 + 1;
            if (__OFADD__(v27, 1))
            {
              break;
            }

            if (v30 >= v31)
            {
              v34 = 0;
              v35 = 1;
              goto LABEL_15;
            }

            v29 = *(v26 + 8 * v30);
            ++v27;
            if (v29)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

        v30 = a5[3];
LABEL_14:
        v34 = (v29 - 1) & v29;
        (*(v59 + 16))(v12, *(v25 + 48) + *(v59 + 72) * (__clz(__rbit64(v29)) | (v30 << 6)), v13);
        v35 = 0;
        v33 = v30;
LABEL_15:
        (*v58)(v12, v35, 1, v13);
        *a5 = v25;
        a5[1] = v26;
        a5[2] = v28;
        a5[3] = v33;
        a5[4] = v34;
        if ((*v57)(v12, 1, v13) == 1)
        {
          sub_100008630(v12, &qword_10007AC90, &unk_1000665A0);
          v48 = v64;

          return sub_10005D3D0(v52, v50, v51, v48);
        }

        (*v56)(v66, v12, v13);
        v36 = v64;
        v37 = *(v64 + 40);
        sub_100063564(&qword_10007ACE8, &type metadata accessor for Application);
        v38 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v39 = -1 << *(v36 + 32);
        v40 = v38 & ~v39;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) != 0)
        {
          break;
        }

        v24 = *v65;
LABEL_4:
        result = (v24)(v66, v13);
      }

      v55 = v65 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v61 = ~v39;
      v43 = *(v59 + 72);
      v44 = *(v59 + 16);
      while (1)
      {
        v45 = v60;
        v44(v60, *(v64 + 48) + v43 * v40, v13);
        sub_100063564(&qword_10007AD70, &type metadata accessor for Application);
        v46 = dispatch thunk of static Equatable.== infix(_:_:)();
        v24 = *v65;
        (*v65)(v45, v13);
        if (v46)
        {
          break;
        }

        v40 = (v40 + 1) & v61;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) == 0)
        {
          v12 = v53;
          a5 = v54;
          goto LABEL_4;
        }
      }

      result = (v24)(v66, v13);
      v12 = v53;
      v47 = v52[v41];
      v52[v41] = v47 & ~v42;
      a5 = v54;
    }

    while ((v47 & v42) == 0);
    v22 = v51 - 1;
    if (__OFSUB__(v51, 1))
    {
LABEL_30:
      __break(1u);
      return result;
    }

    if (v51 != 1)
    {
      continue;
    }

    return &_swiftEmptySetSingleton;
  }
}

uint64_t sub_10005FD5C(int64_t a1, uint64_t (*a2)(void), unint64_t *a3, void (*a4)(uint64_t), uint64_t a5)
{
  v45 = a4;
  v46 = a5;
  v44 = a3;
  v7 = a2(0);
  v8 = *(v7 - 8);
  v9 = v8[8];
  result = __chkstk_darwin(v7);
  v12 = &v40 - v11;
  v13 = *v5;
  v14 = *v5 + 56;
  v15 = -1 << *(*v5 + 32);
  v16 = (a1 + 1) & ~v15;
  if (((1 << v16) & *(v14 + 8 * (v16 >> 6))) != 0)
  {
    v17 = ~v15;
    v18 = *v5;

    v19 = _HashTable.previousHole(before:)();
    if ((*(v14 + 8 * (v16 >> 6)) & (1 << v16)) != 0)
    {
      v42 = (v19 + 1) & v17;
      v41 = v8[2];
      v47 = v8[9];
      v43 = v8 + 2;
      v20 = (v8 + 1);
      v21 = v13;
      v22 = v17;
      while (1)
      {
        v23 = v14;
        v24 = v47 * v16;
        v25 = v22;
        v41(v12, *(v21 + 48) + v47 * v16, v7);
        v26 = v21;
        v27 = *(v21 + 40);
        sub_100063564(v44, v45);
        v28 = dispatch thunk of Hashable._rawHashValue(seed:)();
        (*v20)(v12, v7);
        v22 = v25;
        v29 = v28 & v25;
        if (a1 >= v42)
        {
          if (v29 < v42 || a1 < v29)
          {
LABEL_4:
            v21 = v26;
            goto LABEL_5;
          }
        }

        else if (v29 < v42 && a1 < v29)
        {
          goto LABEL_4;
        }

        v21 = v26;
        v32 = *(v26 + 48);
        v33 = v47 * a1;
        v34 = v32 + v47 * a1;
        v35 = v32 + v24 + v47;
        if (v47 * a1 < v24 || v34 >= v35)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_24:
          v22 = v25;
          a1 = v16;
          goto LABEL_5;
        }

        a1 = v16;
        if (v33 != v24)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_24;
        }

LABEL_5:
        v16 = (v16 + 1) & v22;
        v14 = v23;
        if (((*(v23 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
        {

          goto LABEL_28;
        }
      }
    }

    v21 = v13;
LABEL_28:
    *(v14 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v14 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
    v21 = v13;
  }

  v37 = *(v21 + 16);
  v38 = __OFSUB__(v37, 1);
  v39 = v37 - 1;
  if (v38)
  {
    __break(1u);
  }

  else
  {
    *(v21 + 16) = v39;
    ++*(v21 + 36);
  }

  return result;
}

uint64_t sub_100060058(char a1)
{
  result = dispatch thunk of SettingMetadataProtocol.isPublic.getter();
  if ((result & 1) == 0 && (a1 & 1) == 0)
  {
    sub_1000635AC();
    swift_allocError();
    *v3 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1000600C0()
{
  v0 = sub_10000637C(&qword_10007AC88, &unk_1000671D0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v23 - v2;
  v4 = sub_10000637C(&qword_10007AC80, &unk_100066590);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v23 - v10;
  type metadata accessor for Application();
  sub_100063564(&qword_10007ACE8, &type metadata accessor for Application);
  static ShieldSettings.EffectiveActivityCategoryPolicy<>.value(from:)();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_100008630(v3, &qword_10007AC88, &unk_1000671D0);
  }

  (*(v5 + 32))(v11, v3, v4);
  (*(v5 + 16))(v9, v11, v4);
  v13 = (*(v5 + 88))(v9, v4);
  if (v13 == enum case for ShieldSettings.EffectiveActivityCategoryPolicy.specific<A>(_:))
  {
    (*(v5 + 96))(v9, v4);
    v14 = *v9;
    v15 = *(v9 + 1);
    v16 = *(v14 + 16);

    if (static ShieldSettings.ActivityCategoryPolicy.maximumSpecificCategoriesCount.getter() >= v16)
    {
      v19 = *(v15 + 16);

      if (static ShieldSettings.ActivityCategoryPolicy.maximumSpecificExceptionsCount.getter() >= v19)
      {
        return (*(v5 + 8))(v11, v4);
      }
    }

    else
    {
    }

    goto LABEL_8;
  }

  if (v13 == enum case for ShieldSettings.EffectiveActivityCategoryPolicy.all<A>(_:))
  {
    (*(v5 + 96))(v9, v4);
    v17 = *(*v9 + 16);

    if (static ShieldSettings.ActivityCategoryPolicy.maximumAllExceptionsCount.getter() >= v17)
    {
      return (*(v5 + 8))(v11, v4);
    }

LABEL_8:
    sub_1000635AC();
    swift_allocError();
    *v18 = 1;
    swift_willThrow();
    return (*(v5 + 8))(v11, v4);
  }

  v20 = enum case for ShieldSettings.EffectiveActivityCategoryPolicy.none<A>(_:);
  v21 = *(v5 + 8);
  v22 = v13;
  result = v21(v11, v4);
  if (v22 != v20)
  {
    return v21(v9, v4);
  }

  return result;
}

uint64_t sub_10006044C()
{
  v0 = sub_10000637C(&qword_10007AC78, &unk_100067310);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v23 - v2;
  v4 = sub_10000637C(&qword_10007AC70, &unk_100066580);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v23 - v10;
  type metadata accessor for WebDomain();
  sub_100063564(&qword_10007ACE0, &type metadata accessor for WebDomain);
  static ShieldSettings.EffectiveActivityCategoryPolicy<>.value(from:)();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_100008630(v3, &qword_10007AC78, &unk_100067310);
  }

  (*(v5 + 32))(v11, v3, v4);
  (*(v5 + 16))(v9, v11, v4);
  v13 = (*(v5 + 88))(v9, v4);
  if (v13 == enum case for ShieldSettings.EffectiveActivityCategoryPolicy.specific<A>(_:))
  {
    (*(v5 + 96))(v9, v4);
    v14 = *v9;
    v15 = *(v9 + 1);
    v16 = *(v14 + 16);

    if (static ShieldSettings.ActivityCategoryPolicy.maximumSpecificCategoriesCount.getter() >= v16)
    {
      v19 = *(v15 + 16);

      if (static ShieldSettings.ActivityCategoryPolicy.maximumSpecificExceptionsCount.getter() >= v19)
      {
        return (*(v5 + 8))(v11, v4);
      }
    }

    else
    {
    }

    goto LABEL_8;
  }

  if (v13 == enum case for ShieldSettings.EffectiveActivityCategoryPolicy.all<A>(_:))
  {
    (*(v5 + 96))(v9, v4);
    v17 = *(*v9 + 16);

    if (static ShieldSettings.ActivityCategoryPolicy.maximumAllExceptionsCount.getter() >= v17)
    {
      return (*(v5 + 8))(v11, v4);
    }

LABEL_8:
    sub_1000635AC();
    swift_allocError();
    *v18 = 1;
    swift_willThrow();
    return (*(v5 + 8))(v11, v4);
  }

  v20 = enum case for ShieldSettings.EffectiveActivityCategoryPolicy.none<A>(_:);
  v21 = *(v5 + 8);
  v22 = v13;
  result = v21(v11, v4);
  if (v22 != v20)
  {
    return v21(v9, v4);
  }

  return result;
}

uint64_t sub_1000607D8()
{
  v0 = sub_10000637C(&qword_10007AC68, &unk_100067360);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v22 - v2;
  v4 = type metadata accessor for UserSafetySettings.ScanningPolicy();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v11 = &v22 - v10;
  static UserSafetySettings.ScanningPolicy.value(from:)();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_100008630(v3, &qword_10007AC68, &unk_100067360);
  }

  (*(v5 + 32))(v11, v3, v4);
  (*(v5 + 16))(v9, v11, v4);
  v13 = (*(v5 + 88))(v9, v4);
  if (v13 == enum case for UserSafetySettings.ScanningPolicy.nudityDetection(_:))
  {
    (*(v5 + 96))(v9, v4);
    v14 = *v9;
    v15 = v9[1];

    v16 = *(v15 + 16);

    if (static UserSafetySettings.ScanningPolicy.maximumNudityDetectionApplicationsCount.getter() < v16)
    {
      sub_1000635AC();
      swift_allocError();
      *v17 = 1;
      swift_willThrow();
    }

    return (*(v5 + 8))(v11, v4);
  }

  else if (v13 == enum case for UserSafetySettings.ScanningPolicy.communicationSafety(_:))
  {
    (*(v5 + 8))(v11, v4);
    (*(v5 + 96))(v9, v4);
    v18 = type metadata accessor for UserSafetySettings.InterventionType();
    return (*(*(v18 - 8) + 8))(v9, v18);
  }

  else
  {
    v19 = enum case for UserSafetySettings.ScanningPolicy.none(_:);
    v20 = *(v5 + 8);
    v21 = v13;
    result = v20(v11, v4);
    if (v21 != v19)
    {
      return v20(v9, v4);
    }
  }

  return result;
}

uint64_t sub_100060B10()
{
  v0 = sub_10000637C(&qword_10007AC60, &unk_100066570);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v24 - v2;
  v4 = type metadata accessor for WebContentSettings.FilterPolicy();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v24 - v10;
  static WebContentSettings.FilterPolicy.value(from:)();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_100008630(v3, &qword_10007AC60, &unk_100066570);
  }

  (*(v5 + 32))(v11, v3, v4);
  (*(v5 + 16))(v9, v11, v4);
  v13 = (*(v5 + 88))(v9, v4);
  if (v13 == enum case for WebContentSettings.FilterPolicy.specific(_:))
  {
    (*(v5 + 96))(v9, v4);
    v14 = *(*v9 + 16);

    if (static WebContentSettings.FilterPolicy.maximumSpecificDomainsCount.getter() >= v14)
    {
      return (*(v5 + 8))(v11, v4);
    }

    goto LABEL_13;
  }

  if (v13 == enum case for WebContentSettings.FilterPolicy.auto(_:))
  {
    (*(v5 + 96))(v9, v4);
    v15 = *v9;
    v16 = *(v9 + 1);
    v17 = *(v15 + 16);

    if (static WebContentSettings.FilterPolicy.maximumAutoDomainsCount.getter() >= v17)
    {
      v19 = *(v16 + 16);

      if (static WebContentSettings.FilterPolicy.maximumAutoExceptionsCount.getter() >= v19)
      {
        return (*(v5 + 8))(v11, v4);
      }
    }

    else
    {
    }

LABEL_13:
    sub_1000635AC();
    swift_allocError();
    *v20 = 1;
    swift_willThrow();
    return (*(v5 + 8))(v11, v4);
  }

  if (v13 == enum case for WebContentSettings.FilterPolicy.all(_:))
  {
    (*(v5 + 96))(v9, v4);
    v18 = *(*v9 + 16);

    if (static WebContentSettings.FilterPolicy.maximumAllExceptionsCount.getter() >= v18)
    {
      return (*(v5 + 8))(v11, v4);
    }

    goto LABEL_13;
  }

  v21 = enum case for WebContentSettings.FilterPolicy.none(_:);
  v22 = *(v5 + 8);
  v23 = v13;
  result = v22(v11, v4);
  if (v23 != v21)
  {
    return v22(v9, v4);
  }

  return result;
}

uint64_t sub_100060E78(uint64_t a1, char a2, uint64_t a3)
{
  sub_100060058(a2);
  if (!v3 && (a2 & 1) == 0)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    sub_10000637C(&qword_10007AC98, &unk_1000671E0);
    if (swift_dynamicCastMetatype())
    {
      sub_1000600C0();
    }

    else
    {
      sub_10000637C(&qword_10007ACA0, &unk_1000665B0);
      if (swift_dynamicCastMetatype())
      {
        sub_10006044C();
      }

      else
      {
        type metadata accessor for UserSafetySettings.ScanningPolicy();
        if (swift_dynamicCastMetatype())
        {
          sub_1000607D8();
        }

        else
        {
          type metadata accessor for WebContentSettings.FilterPolicy();
          if (swift_dynamicCastMetatype())
          {
            sub_100060B10();
          }

          else if (!swift_dynamicCastMetatype() && swift_conformsToProtocol2() && AssociatedTypeWitness)
          {
            sub_10005C8AC(a1, a3);
          }
        }
      }
    }
  }

  return a1;
}

uint64_t sub_10006100C(uint64_t *a1)
{
  v330 = sub_10000637C(&qword_10007BAE0, &qword_1000672F0);
  v329 = *(v330 - 8);
  v2 = *(v329 + 64);
  __chkstk_darwin(v330);
  v328 = &v309 - v3;
  v327 = type metadata accessor for GameCenterSettings.OtherPlayerTypes();
  v326 = *(v327 - 8);
  v4 = *(v326 + 64);
  __chkstk_darwin(v327);
  v324 = &v309 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v336 = sub_10000637C(&qword_10007BAE8, &qword_1000672F8);
  v325 = *(v336 - 8);
  v6 = *(v325 + 64);
  __chkstk_darwin(v336);
  v335 = &v309 - v7;
  v351 = sub_10000637C(&qword_10007B5A0, &unk_100067300);
  v354 = *(v351 - 8);
  v8 = *(v354 + 64);
  v9 = __chkstk_darwin(v351);
  v355 = &v309 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v339 = &v309 - v12;
  v13 = __chkstk_darwin(v11);
  v338 = &v309 - v14;
  v15 = __chkstk_darwin(v13);
  v337 = &v309 - v16;
  v17 = __chkstk_darwin(v15);
  v358 = &v309 - v18;
  __chkstk_darwin(v17);
  v360 = &v309 - v19;
  v347 = sub_10000637C(&qword_10007BA00, "DN");
  v334 = *(v347 - 8);
  v20 = *(v334 + 64);
  __chkstk_darwin(v347);
  v346 = &v309 - v21;
  v22 = sub_10000637C(&qword_10007AC78, &unk_100067310);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v318 = &v309 - v24;
  v320 = sub_10000637C(&qword_10007AC70, &unk_100066580);
  v319 = *(v320 - 8);
  v25 = *(v319 + 64);
  v26 = __chkstk_darwin(v320);
  v311 = (&v309 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = __chkstk_darwin(v26);
  v313 = (&v309 - v29);
  __chkstk_darwin(v28);
  v315 = &v309 - v30;
  v343 = sub_10000637C(&qword_10007B9F8, &qword_100067320);
  v333 = *(v343 - 8);
  v31 = *(v333 + 64);
  __chkstk_darwin(v343);
  v342 = &v309 - v32;
  v367 = sub_10000637C(&qword_10007BAF0, &qword_100067328);
  v350 = *(v367 - 8);
  v33 = *(v350 + 64);
  __chkstk_darwin(v367);
  v366 = &v309 - v34;
  v345 = sub_10000637C(&qword_10007BA90, &qword_100067330);
  v332 = *(v345 - 8);
  v35 = *(v332 + 64);
  __chkstk_darwin(v345);
  v344 = &v309 - v36;
  v37 = sub_10000637C(&qword_10007AC88, &unk_1000671D0);
  v38 = *(*(v37 - 8) + 64);
  __chkstk_darwin(v37 - 8);
  v316 = &v309 - v39;
  v321 = sub_10000637C(&qword_10007AC80, &unk_100066590);
  v322 = *(v321 - 8);
  v40 = *(v322 + 64);
  v41 = __chkstk_darwin(v321);
  v312 = (&v309 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = __chkstk_darwin(v41);
  v314 = &v309 - v44;
  __chkstk_darwin(v43);
  v317 = &v309 - v45;
  v341 = sub_10000637C(&qword_10007BA68, &qword_1000671B8);
  v331 = *(v341 - 8);
  v46 = *(v331 + 64);
  __chkstk_darwin(v341);
  v340 = &v309 - v47;
  v48 = sub_10000637C(&qword_10007AC90, &unk_1000665A0);
  v49 = *(*(v48 - 8) + 64);
  v50 = __chkstk_darwin(v48);
  __chkstk_darwin(v50);
  v52 = &v309 - v51;
  v368 = type metadata accessor for Application();
  v348 = *(v368 - 1);
  v53 = *(v348 + 64);
  v54 = __chkstk_darwin(v368);
  v323 = &v309 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __chkstk_darwin(v54);
  v58 = &v309 - v57;
  __chkstk_darwin(v56);
  v60 = &v309 - v59;
  v365 = sub_10000637C(&qword_10007B5B0, &qword_100066F50);
  v349 = *(v365 - 8);
  v61 = *(v349 + 64);
  __chkstk_darwin(v365);
  v364 = &v309 - v62;
  v63 = sub_10000637C(&qword_10007B598, &unk_100066F30);
  v361 = *(v63 - 8);
  v64 = *(v361 + 64);
  v65 = __chkstk_darwin(v63);
  v363 = &v309 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __chkstk_darwin(v65);
  v69 = &v309 - v68;
  v70 = __chkstk_darwin(v67);
  v359 = &v309 - v71;
  __chkstk_darwin(v70);
  v73 = &v309 - v72;
  static ManagedSettingsSettings.allowedClients.getter();
  v370 = v63;
  v353 = v73;
  v74 = SettingMetadata.name.getter();
  v352 = a1;
  v76 = *a1;
  if (!*(*a1 + 16))
  {

    goto LABEL_5;
  }

  v77 = *a1;
  v78 = sub_1000182E8(v74, v75);
  v80 = v79;

  if ((v80 & 1) == 0)
  {
LABEL_5:
    v81 = 0;
    goto LABEL_6;
  }

  v81 = *(*(v76 + 56) + 8 * v78);
  v82 = v81;
LABEL_6:
  v362 = sub_100063564(&qword_10007ACE8, &type metadata accessor for Application);
  v83 = static Set<>.value(from:)();

  v372 = v83;
  v84 = sub_10000637C(&qword_10007B880, &qword_100067058);
  v356 = sub_10000637C(&qword_10007ACA8, &unk_100067060);
  v357 = v84;
  if ((swift_dynamicCast() & 1) == 0 || (v85 = v373) == 0)
  {
    v85 = &_swiftEmptySetSingleton;
  }

  v369 = v85;
  v373 = v85;
  static AllowedClientSettings.allowedClient.getter();
  v86 = SettingMetadata.name.getter();
  if (!*(v76 + 16))
  {

    goto LABEL_14;
  }

  v88 = sub_1000182E8(v86, v87);
  v90 = v89;

  if ((v90 & 1) == 0)
  {
LABEL_14:
    v95 = v352;
    v96 = v351;
    v97 = v355;
LABEL_15:
    v98 = v358;
    goto LABEL_16;
  }

  v91 = *(*(v76 + 56) + 8 * v88);
  v92 = v368;
  dispatch thunk of static Persistable.value(from:)();
  v93 = swift_dynamicCast();
  v94 = v348;
  (*(v348 + 56))(v52, v93 ^ 1u, 1, v92);
  if ((*(v94 + 48))(v52, 1, v92) == 1)
  {

    sub_100008630(v52, &qword_10007AC90, &unk_1000665A0);
    goto LABEL_14;
  }

  (*(v94 + 32))(v60, v52, v92);
  static Application.none.getter();
  sub_100063564(&qword_10007AD70, &type metadata accessor for Application);
  v108 = dispatch thunk of static Equatable.== infix(_:_:)();
  v109 = *(v94 + 8);
  v109(v58, v92);
  v96 = v351;
  v97 = v355;
  if (v108)
  {
    v109(v60, v92);

    v95 = v352;
    goto LABEL_15;
  }

  v310 = v91;
  v110 = sub_10005C67C(v60, v369);
  v98 = v358;
  if (v110)
  {
    v109(v60, v368);

    v95 = v352;
  }

  else
  {
    v111 = v323;
    v112 = v368;
    (*(v348 + 16))(v323, v60, v368);
    v113 = v111;
    v98 = v358;
    sub_10004A558(v58, v113);
    v109(v58, v112);
    v114 = SettingMetadata.name.getter();
    v116 = v115;
    v369 = v373;
    v117 = Set<>.persistableValue()();
    v118 = v116;
    v95 = v352;
    sub_100017854(v117, v114, v118);

    v109(v60, v112);
  }

LABEL_16:
  v99 = v370;
  v100 = v360;
  if (v369[2])
  {
    static ApplicationSettings.blockedApplications.getter();
    v101 = SettingMetadata.name.getter();
    v103 = *v95;
    if (*(*v95 + 16))
    {
      v104 = sub_1000182E8(v101, v102);
      v106 = v105;

      if (v106)
      {
        v107 = *(*(v103 + 56) + 8 * v104);
        v371 = static Set<>.value(from:)();
        if ((swift_dynamicCast() & 1) != 0 && v372)
        {
          if (v369[2] <= v372[2] >> 3)
          {
            sub_10005D6F8(v369, &qword_10007AC90, &unk_1000665A0, &type metadata accessor for Application, sub_10005F0C8);
          }

          else
          {
            sub_10005E378(v369, v372);
          }

          v119 = SettingMetadata.name.getter();
          v121 = v120;
          v122 = Set<>.persistableValue()();

          sub_100017854(v122, v119, v121);

          v100 = v360;
        }

        else
        {
        }
      }
    }

    else
    {
    }

    static ShieldSettings.unshieldableApplications.getter();
    v123 = SettingMetadata.name.getter();
    v125 = *v95;
    if (*(*v95 + 16))
    {
      v126 = sub_1000182E8(v123, v124);
      v128 = v127;

      if (v128)
      {
        v129 = *(*(v125 + 56) + 8 * v126);
        v130 = v129;
      }

      else
      {
        v129 = 0;
      }
    }

    else
    {

      v129 = 0;
    }

    v131 = static Set<>.value(from:)();

    v371 = v131;
    if ((swift_dynamicCast() & 1) == 0 || (v132 = v372) == 0)
    {
      v132 = &_swiftEmptySetSingleton;
    }

    v372 = v132;

    sub_100036870(v133);
    v134 = SettingMetadata.name.getter();
    v136 = v135;
    v137 = Set<>.persistableValue()();

    v138 = v137;
    v99 = v370;
    sub_100017854(v138, v134, v136);
    v139 = *(v361 + 8);
    v139(v69, v99);
    v139(v359, v99);
  }

  static ShieldSettings.unshieldableApplications.getter();
  v140 = SettingMetadata.name.getter();
  v142 = *v95;
  if (!*(*v95 + 16))
  {
    goto LABEL_50;
  }

  v143 = *v95;
  v144 = sub_1000182E8(v140, v141);
  LOBYTE(v143) = v145;

  if ((v143 & 1) == 0)
  {
    goto LABEL_73;
  }

  v146 = *(*(v142 + 56) + 8 * v144);
  v371 = static Set<>.value(from:)();
  if ((swift_dynamicCast() & 1) == 0 || (v147 = v372) == 0)
  {

    goto LABEL_73;
  }

  if (!v372[2])
  {

LABEL_50:

    goto LABEL_73;
  }

  static ShieldSettings.applicationCategories.getter();
  v148 = SettingMetadata.name.getter();
  if (!*(v142 + 16))
  {

    goto LABEL_61;
  }

  v150 = sub_1000182E8(v148, v149);
  v152 = v151;
  v99 = v370;

  if ((v152 & 1) == 0)
  {
    goto LABEL_61;
  }

  v359 = *(*(v142 + 56) + 8 * v150);
  v153 = v316;
  static ShieldSettings.EffectiveActivityCategoryPolicy<>.value(from:)();
  v154 = v322;
  v155 = v321;
  if ((*(v322 + 48))(v153, 1, v321) == 1)
  {

    sub_100008630(v153, &qword_10007AC88, &unk_1000671D0);
    goto LABEL_61;
  }

  v156 = v153;
  v157 = v317;
  (*(v154 + 32))(v317, v156, v155);
  v158 = *(v154 + 16);
  v159 = v314;
  v158(v314, v157, v155);
  v160 = v322;
  v161 = (*(v322 + 88))(v159, v155);
  v162 = v161;
  v163 = v155;
  v164 = v160;
  if (v161 == enum case for ShieldSettings.EffectiveActivityCategoryPolicy.specific<A>(_:))
  {
    v165 = v314;
    (*(v160 + 96))(v314, v163);
    v166 = *v165;
    v167 = v165[1];
    v357 = v166;

    v169 = sub_10005CC58(v168, v167, &type metadata accessor for Application, sub_10004A558);
    v170 = v312;
    *v312 = v357;
    v170[1] = v169;
    (*(v160 + 104))(v170, v162, v321);
    v171 = SettingMetadata.name.getter();
    v357 = v172;
    v173 = ShieldSettings.EffectiveActivityCategoryPolicy<>.persistableValue()();
    v99 = v370;
    sub_100017854(v173, v171, v357);

    v174 = *(v322 + 8);
    v175 = v170;
    v176 = v321;
    v174(v175, v321);
LABEL_58:
    v174(v317, v176);
    goto LABEL_61;
  }

  if (v161 == enum case for ShieldSettings.EffectiveActivityCategoryPolicy.all<A>(_:))
  {
    v177 = *(v160 + 96);
    LODWORD(v357) = v161;
    v178 = v314;
    v179 = v163;
    v177(v314);
    v180 = *v178;

    v182 = sub_10005CC58(v181, v180, &type metadata accessor for Application, sub_10004A558);
    v183 = v312;
    *v312 = v182;
    (*(v164 + 104))(v183, v357, v179);
    v357 = SettingMetadata.name.getter();
    v184 = v164;
    v176 = v321;
    v356 = v185;
    v186 = ShieldSettings.EffectiveActivityCategoryPolicy<>.persistableValue()();
    v99 = v370;
    sub_100017854(v186, v357, v356);

    v174 = *(v184 + 8);
    v174(v312, v176);
    goto LABEL_58;
  }

  v187 = v359;
  if (v161 != enum case for ShieldSettings.EffectiveActivityCategoryPolicy.none<A>(_:))
  {
    goto LABEL_135;
  }

  (*(v164 + 8))(v317, v163);

LABEL_61:
  static ShieldSettings.applications.getter();
  v188 = SettingMetadata.name.getter();
  v190 = *v95;
  if (*(*v95 + 16))
  {
    v191 = sub_1000182E8(v188, v189);
    v193 = v192;

    if ((v193 & 1) == 0)
    {

LABEL_71:
      v100 = v360;
      v99 = v370;
      goto LABEL_72;
    }

    v194 = *(*(v190 + 56) + 8 * v191);
    v195 = static Set<>.value(from:)();
    v99 = v370;
    if (v195)
    {
      if (v147[2] <= v195[2] >> 3)
      {
        v372 = v195;
        sub_10005D6F8(v147, &qword_10007AC90, &unk_1000665A0, &type metadata accessor for Application, sub_10005F0C8);
      }

      else
      {
        sub_10005E378(v147, v195);
      }

      v196 = SettingMetadata.name.getter();
      v198 = v197;
      v199 = Set<>.persistableValue()();

      sub_100017854(v199, v196, v198);

      goto LABEL_71;
    }

    v100 = v360;
  }

  else
  {

    v100 = v360;
  }

LABEL_72:
  v200 = v331;
  (*(v332 + 8))(v344, v345);
  (*(v200 + 8))(v340, v341);
LABEL_73:
  static ShieldSettings.unshieldableWebDomains.getter();
  v201 = SettingMetadata.name.getter();
  v203 = *v95;
  if (*(*v95 + 16))
  {
    v204 = *v95;
    v205 = sub_1000182E8(v201, v202);
    v207 = v206;

    if (v207)
    {
      v208 = *(*(v203 + 56) + 8 * v205);
      type metadata accessor for WebDomain();
      sub_100063564(&qword_10007ACE0, &type metadata accessor for WebDomain);
      v209 = v208;
      v371 = static Set<>.value(from:)();
      sub_10000637C(&qword_10007BB00, &unk_100067340);
      sub_10000637C(&qword_10007ACB8, &qword_1000665C8);
      if ((swift_dynamicCast() & 1) != 0 && (v210 = v372) != 0)
      {
        if (v372[2])
        {
          v368 = v209;
          static ShieldSettings.webDomainCategories.getter();
          v211 = SettingMetadata.name.getter();
          if (!*(v203 + 16))
          {

            v98 = v358;
            goto LABEL_95;
          }

          v213 = sub_1000182E8(v211, v212);
          v215 = v214;

          if ((v215 & 1) == 0)
          {

LABEL_88:
            v97 = v355;
            v98 = v358;
            goto LABEL_95;
          }

          v362 = *(*(v203 + 56) + 8 * v213);
          v216 = v318;
          static ShieldSettings.EffectiveActivityCategoryPolicy<>.value(from:)();
          v217 = v319;
          v218 = v320;
          v219 = (*(v319 + 48))(v216, 1, v320);
          v98 = v358;
          if (v219 == 1)
          {

            sub_100008630(v216, &qword_10007AC78, &unk_100067310);
LABEL_94:
            v97 = v355;
LABEL_95:
            v238 = v368;
            static ShieldSettings.webDomains.getter();
            v239 = SettingMetadata.name.getter();
            v241 = *v95;
            if (*(*v95 + 16))
            {
              v242 = sub_1000182E8(v239, v240);
              v244 = v243;

              if (v244)
              {
                v245 = *(*(v241 + 56) + 8 * v242);
                v246 = static Set<>.value(from:)();
                v98 = v358;
                if (v246)
                {
                  v247 = v245;
                  if (v210[2] <= v246[2] >> 3)
                  {
                    v372 = v246;
                    sub_10005D6F8(v210, &qword_10007B9F0, "6N", &type metadata accessor for WebDomain, sub_10005EDDC);
                  }

                  else
                  {
                    sub_10005D914(v210, v246);
                  }

                  v304 = v355;
                  v305 = SettingMetadata.name.getter();
                  v307 = v306;
                  v308 = Set<>.persistableValue()();

                  sub_100017854(v308, v305, v307);

                  v98 = v358;
                  v248 = v334;
                  v249 = v333;
                  v97 = v304;
                  goto LABEL_104;
                }

                v97 = v355;
              }

              else
              {

                v97 = v355;
                v98 = v358;
              }
            }

            else
            {
            }

            v248 = v334;
            v249 = v333;
LABEL_104:
            (*(v248 + 8))(v346, v347);
            (*(v249 + 8))(v342, v343);
            goto LABEL_105;
          }

          v220 = v315;
          (*(v217 + 32))(v315, v216, v218);
          v221 = v313;
          (*(v217 + 16))(v313, v220, v218);
          v222 = (*(v217 + 88))(v221, v218);
          v223 = v222;
          if (v222 == enum case for ShieldSettings.EffectiveActivityCategoryPolicy.specific<A>(_:))
          {

            (*(v217 + 96))(v221, v218);
            v224 = v221[1];
            v369 = *v221;

            v226 = sub_10005CC58(v225, v224, &type metadata accessor for WebDomain, sub_10004A278);
            v227 = v311;
            *v311 = v369;
            v227[1] = v226;
LABEL_93:
            (*(v217 + 104))(v227, v223, v218);
            v231 = SettingMetadata.name.getter();
            v369 = v232;
            v233 = ShieldSettings.EffectiveActivityCategoryPolicy<>.persistableValue()();
            v234 = v231;
            v235 = v358;
            sub_100017854(v233, v234, v369);

            v236 = *(v217 + 8);
            v237 = v227;
            v98 = v235;
            v236(v237, v218);
            v236(v315, v218);
            goto LABEL_94;
          }

          if (v222 == enum case for ShieldSettings.EffectiveActivityCategoryPolicy.all<A>(_:))
          {

            (*(v217 + 96))(v221, v218);
            v228 = *v221;

            v230 = sub_10005CC58(v229, v228, &type metadata accessor for WebDomain, sub_10004A278);
            v227 = v311;
            *v311 = v230;
            goto LABEL_93;
          }

          if (v222 == enum case for ShieldSettings.EffectiveActivityCategoryPolicy.none<A>(_:))
          {
            (*(v217 + 8))(v220, v218);

            goto LABEL_88;
          }

LABEL_135:
          result = _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
          return result;
        }
      }

      else
      {
      }

LABEL_105:
      v100 = v360;
      v99 = v370;
      goto LABEL_106;
    }
  }

  else
  {
  }

LABEL_106:
  static GameCenterSettings.denyMultiplayerGaming.getter();
  v250 = SettingMetadata.name.getter();
  v252 = *v95;
  if (*(*v95 + 16))
  {
    v253 = sub_1000182E8(v250, v251);
    v255 = v254;

    if (v255)
    {
      v256 = *(*(v252 + 56) + 8 * v253);
      LOBYTE(v371) = static Bool.value(from:)();
      sub_10000637C(&qword_10007BAF8, &qword_100067338);
      if (swift_dynamicCast() & 1) != 0 && v372 != 2 && (v372)
      {
        static GameCenterSettings.allowedOtherPlayerTypes.getter();
        v257 = SettingMetadata.name.getter();
        v368 = v258;
        v369 = v257;
        v259 = v326;
        v260 = v324;
        v261 = v327;
        (*(v326 + 104))(v324, enum case for GameCenterSettings.OtherPlayerTypes.none(_:), v327);
        v262 = v97;
        v263 = GameCenterSettings.OtherPlayerTypes.persistableValue()();
        (*(v259 + 8))(v260, v261);
        v264 = v263;
        v97 = v262;
        sub_100017854(v264, v369, v368);

        v98 = v358;
        (*(v325 + 8))(v335, v336);
      }

      else
      {
      }
    }
  }

  else
  {
  }

  static ApplicationSettings.denyAppInstallation.getter();
  v265 = SettingMetadata.name.getter();
  v267 = *v95;
  if (*(*v95 + 16))
  {
    v268 = *v95;
    v269 = sub_1000182E8(v265, v266);
    v271 = v270;

    if (v271)
    {
      v272 = *(v267[7] + 8 * v269);
      LOBYTE(v371) = static Bool.value(from:)();
      sub_10000637C(&qword_10007BAF8, &qword_100067338);
      if (swift_dynamicCast() & 1) != 0 && v372 != 2 && (v372)
      {
        static AppStoreSettings.denyAppStoreAppInstallation.getter();
        static AppStoreSettings.denyMarketplaceAppInstallation.getter();
        static AppStoreSettings.denyWebDistributionAppInstallation.getter();
        v273 = SettingMetadata.name.getter();
        v275 = v274;
        v276 = v272;
        v277 = *v95;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v372 = *v95;
        sub_10001C868(v276, v273, v275, isUniquelyReferenced_nonNull_native);

        *v95 = v372;
        v279 = SettingMetadata.name.getter();
        v281 = v280;
        v282 = v276;
        v283 = *v95;
        v284 = swift_isUniquelyReferenced_nonNull_native();
        v372 = *v95;
        sub_10001C868(v282, v279, v281, v284);
        v99 = v370;

        *v95 = v372;
        v285 = SettingMetadata.name.getter();
        v287 = v286;
        v288 = *v95;
        v289 = swift_isUniquelyReferenced_nonNull_native();
        v372 = *v95;
        sub_10001C868(v282, v285, v287, v289);

        v267 = v372;
        *v95 = v372;
        v290 = *(v354 + 8);
        v290(v339, v96);
        v290(v338, v96);
        v290(v337, v96);
      }

      else
      {
      }
    }
  }

  else
  {
  }

  static AudioAccessorySettings.denyTemporaryPairing.getter();
  v291 = SettingMetadata.name.getter();
  if (v267[2])
  {
    v293 = sub_1000182E8(v291, v292);
    v295 = v294;

    if (v295)
    {
      v296 = *(v267[7] + 8 * v293);
      LOBYTE(v371) = static Bool.value(from:)();
      sub_10000637C(&qword_10007BAF8, &qword_100067338);
      if (swift_dynamicCast() & 1) != 0 && v372 != 2 && (v372)
      {
        v297 = v328;
        static AudioAccessorySettings.temporaryPairingConfiguration.getter();
        v298 = v330;
        v299 = SettingMetadata.name.getter();
        sub_100017854(0, v299, v300);

        (*(v329 + 8))(v297, v298);
      }

      else
      {
      }
    }
  }

  else
  {
  }

  v301 = *(v354 + 8);
  v301(v97, v96);
  v301(v98, v96);
  v301(v100, v96);
  (*(v350 + 8))(v366, v367);
  v302 = *(v361 + 8);
  v302(v363, v99);
  (*(v349 + 8))(v364, v365);
  return (v302)(v353, v99);
}

uint64_t sub_100063564(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000635AC()
{
  result = qword_10007BB08;
  if (!qword_10007BB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007BB08);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SanitizerError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SanitizerError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100063760()
{
  result = qword_10007BB10;
  if (!qword_10007BB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007BB10);
  }

  return result;
}

NSObject_optional __swiftcall GameCenterSettings.OtherPlayerTypes.persistableValue()()
{
  v0 = GameCenterSettings.OtherPlayerTypes.persistableValue()();
  result.value.isa = v0;
  result.is_nil = v1;
  return result;
}

NSObject_optional __swiftcall UserSafetySettings.ScanningPolicy.persistableValue()()
{
  v0 = UserSafetySettings.ScanningPolicy.persistableValue()();
  result.value.isa = v0;
  result.is_nil = v1;
  return result;
}

NSObject_optional __swiftcall WebContentSettings.FilterPolicy.persistableValue()()
{
  v0 = WebContentSettings.FilterPolicy.persistableValue()();
  result.value.isa = v0;
  result.is_nil = v1;
  return result;
}

NSObject_optional __swiftcall Application.persistableValue()()
{
  v0 = Application.persistableValue()();
  result.value.isa = v0;
  result.is_nil = v1;
  return result;
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

NSObject_optional __swiftcall String.persistableValue()()
{
  v0 = String.persistableValue()();
  result.value.isa = v0;
  result.is_nil = v1;
  return result;
}

NSObject_optional __swiftcall Bool.persistableValue()()
{
  v0 = Bool.persistableValue()();
  result.value.isa = v0;
  result.is_nil = v1;
  return result;
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}