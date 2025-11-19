uint64_t sub_100307530(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = static Hasher._hash(seed:_:)();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_10030C2F0(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_100307610(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = AnyHashable._rawHashValue(seed:)(*(*v2 + 40));
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      sub_10012EF50(*(v6 + 48) + 40 * v9, v16);
      v11 = static AnyHashable.== infix(_:_:)();
      sub_10005BF8C(v16);
      if (v11)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_10005BF8C(a2);
    sub_10012EF50(*(v6 + 48) + 40 * v9, a1);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10012EF50(a2, v16);
    v15 = *v3;
    sub_10030C410(v16, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v15;
    v13 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v13;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }
}

uint64_t sub_1003077A4(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_10030C980(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100307918(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v6 = *v3;
  Hasher.init(_seed:)();
  Data.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = v6 + 56;
  v9 = -1 << *(v6 + 32);
  v10 = v7 & ~v9;
  if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_141:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *__s1 = *v82;
    sub_10017A6A4(a2, a3);
    sub_10030CB00(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v82 = *__s1;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v11 = ~v9;
  v12 = a3 >> 62;
  if (a2)
  {
    v13 = 0;
  }

  else
  {
    v13 = a3 == 0xC000000000000000;
  }

  v14 = !v13;
  v88 = v14;
  v15 = __OFSUB__(HIDWORD(a2), a2);
  v85 = v15;
  v84 = v6;
  v80 = (a2 >> 32) - a2;
  v81 = a2 >> 32;
  v86 = v6 + 56;
  v87 = v11;
  while (1)
  {
    v16 = (*(v6 + 48) + 16 * v10);
    v18 = *v16;
    v17 = v16[1];
    v19 = v17 >> 62;
    if (v17 >> 62 == 3)
    {
      if (v18)
      {
        v20 = 0;
      }

      else
      {
        v20 = v17 == 0xC000000000000000;
      }

      v22 = !v20 || a3 >> 62 != 3;
      if (((v22 | v88) & 1) == 0)
      {
        v75 = 0;
        v76 = 0xC000000000000000;
LABEL_142:
        sub_1000D41B4(v75, v76);
LABEL_143:
        v77 = *(*(v6 + 48) + 16 * v10);
        *a1 = v77;
        sub_10017A6A4(v77, *(&v77 + 1));
        return 0;
      }

LABEL_36:
      v23 = 0;
      if (v12 <= 1)
      {
        goto LABEL_33;
      }

      goto LABEL_37;
    }

    if (v19 > 1)
    {
      if (v19 != 2)
      {
        goto LABEL_36;
      }

      v25 = *(v18 + 16);
      v24 = *(v18 + 24);
      v26 = __OFSUB__(v24, v25);
      v23 = v24 - v25;
      if (v26)
      {
        goto LABEL_147;
      }

      if (v12 <= 1)
      {
        goto LABEL_33;
      }
    }

    else if (v19)
    {
      LODWORD(v23) = HIDWORD(v18) - v18;
      if (__OFSUB__(HIDWORD(v18), v18))
      {
        goto LABEL_146;
      }

      v23 = v23;
      if (v12 <= 1)
      {
LABEL_33:
        v27 = BYTE6(a3);
        if (v12)
        {
          v27 = HIDWORD(a2) - a2;
          if (v85)
          {
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
LABEL_163:
            __break(1u);
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      v23 = BYTE6(v17);
      if (v12 <= 1)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    if (v12 != 2)
    {
      if (!v23)
      {
        goto LABEL_140;
      }

      goto LABEL_13;
    }

    v29 = *(a2 + 16);
    v28 = *(a2 + 24);
    v26 = __OFSUB__(v28, v29);
    v27 = v28 - v29;
    if (v26)
    {
      goto LABEL_145;
    }

LABEL_39:
    if (v23 != v27)
    {
      goto LABEL_13;
    }

    if (v23 < 1)
    {
      goto LABEL_140;
    }

    if (v19 > 1)
    {
      break;
    }

    if (v19)
    {
      if (v18 > v18 >> 32)
      {
        goto LABEL_148;
      }

      sub_10017A6A4(v18, v17);
      v40 = __DataStorage._bytes.getter();
      if (v40)
      {
        v41 = v40;
        v42 = __DataStorage._offset.getter();
        if (__OFSUB__(v18, v42))
        {
          goto LABEL_150;
        }

        v39 = (v18 - v42 + v41);
      }

      else
      {
        v39 = 0;
      }

      __DataStorage._length.getter();
      v11 = v87;
      if (v12 == 2)
      {
        v67 = *(a2 + 16);
        v79 = *(a2 + 24);
        v49 = __DataStorage._bytes.getter();
        if (v49)
        {
          v68 = __DataStorage._offset.getter();
          if (__OFSUB__(v67, v68))
          {
            goto LABEL_164;
          }

          v49 += v67 - v68;
        }

        v26 = __OFSUB__(v79, v67);
        v69 = v79 - v67;
        if (v26)
        {
          goto LABEL_160;
        }

        result = __DataStorage._length.getter();
        if (result >= v69)
        {
          v52 = v69;
        }

        else
        {
          v52 = result;
        }

        if (!v39)
        {
          goto LABEL_176;
        }

        v8 = v86;
        v11 = v87;
        if (!v49)
        {
          goto LABEL_175;
        }
      }

      else
      {
        if (v12 != 1)
        {
          v8 = v86;
          *__s1 = a2;
          *&__s1[8] = a3;
          __s1[10] = BYTE2(a3);
          __s1[11] = BYTE3(a3);
          __s1[12] = BYTE4(a3);
          __s1[13] = BYTE5(a3);
          if (!v39)
          {
            goto LABEL_171;
          }

          goto LABEL_138;
        }

        if (v81 < a2)
        {
          goto LABEL_159;
        }

        v49 = __DataStorage._bytes.getter();
        if (v49)
        {
          v53 = __DataStorage._offset.getter();
          if (__OFSUB__(a2, v53))
          {
            goto LABEL_166;
          }

          v49 += a2 - v53;
        }

        result = __DataStorage._length.getter();
        v52 = (a2 >> 32) - a2;
        if (result < v80)
        {
          v52 = result;
        }

        if (!v39)
        {
          goto LABEL_180;
        }

        v8 = v86;
        if (!v49)
        {
          goto LABEL_179;
        }
      }

      goto LABEL_135;
    }

    *__s1 = v18;
    *&__s1[8] = v17;
    __s1[10] = BYTE2(v17);
    __s1[11] = BYTE3(v17);
    __s1[12] = BYTE4(v17);
    __s1[13] = BYTE5(v17);
    if (!v12)
    {
      goto LABEL_69;
    }

    if (v12 == 1)
    {
      if (v81 < a2)
      {
        goto LABEL_152;
      }

      sub_10017A6A4(v18, v17);
      v30 = __DataStorage._bytes.getter();
      if (!v30)
      {
        goto LABEL_174;
      }

      v31 = v30;
      v32 = __DataStorage._offset.getter();
      if (__OFSUB__(a2, v32))
      {
        goto LABEL_156;
      }

      v33 = (a2 - v32 + v31);
      v34 = __DataStorage._length.getter();
      if (!v33)
      {
        goto LABEL_172;
      }

      goto LABEL_109;
    }

    v55 = *(a2 + 16);
    v54 = *(a2 + 24);
    sub_10017A6A4(v18, v17);
    v45 = __DataStorage._bytes.getter();
    if (v45)
    {
      v56 = __DataStorage._offset.getter();
      if (__OFSUB__(v55, v56))
      {
        goto LABEL_161;
      }

      v45 += v55 - v56;
    }

    v26 = __OFSUB__(v54, v55);
    v47 = v54 - v55;
    if (v26)
    {
      goto LABEL_153;
    }

    v48 = __DataStorage._length.getter();
    v6 = v84;
    if (!v45)
    {
      goto LABEL_170;
    }

LABEL_100:
    if (v48 >= v47)
    {
      v57 = v47;
    }

    else
    {
      v57 = v48;
    }

    v58 = memcmp(__s1, v45, v57);
    sub_1000D41B4(v18, v17);
    v8 = v86;
    v11 = v87;
    if (!v58)
    {
LABEL_140:
      v75 = a2;
      v76 = a3;
      goto LABEL_142;
    }

LABEL_13:
    v10 = (v10 + 1) & v11;
    if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_141;
    }
  }

  if (v19 == 2)
  {
    v35 = *(v18 + 16);
    sub_10017A6A4(v18, v17);
    v36 = __DataStorage._bytes.getter();
    if (v36)
    {
      v37 = v36;
      v38 = __DataStorage._offset.getter();
      if (__OFSUB__(v35, v38))
      {
        goto LABEL_149;
      }

      v39 = (v35 - v38 + v37);
    }

    else
    {
      v39 = 0;
    }

    __DataStorage._length.getter();
    v11 = v87;
    if (v12 != 2)
    {
      if (v12 == 1)
      {
        if (v81 < a2)
        {
          goto LABEL_155;
        }

        v49 = __DataStorage._bytes.getter();
        if (v49)
        {
          v50 = __DataStorage._offset.getter();
          if (__OFSUB__(a2, v50))
          {
            goto LABEL_165;
          }

          v49 += a2 - v50;
        }

        result = __DataStorage._length.getter();
        v52 = (a2 >> 32) - a2;
        if (result < v80)
        {
          v52 = result;
        }

        if (!v39)
        {
          goto LABEL_178;
        }

        v8 = v86;
        if (!v49)
        {
          goto LABEL_177;
        }

        goto LABEL_135;
      }

      v8 = v86;
      *__s1 = a2;
      *&__s1[8] = a3;
      __s1[10] = BYTE2(a3);
      __s1[11] = BYTE3(a3);
      __s1[12] = BYTE4(a3);
      __s1[13] = BYTE5(a3);
      if (!v39)
      {
        goto LABEL_169;
      }

LABEL_138:
      v72 = __s1;
      v71 = v39;
      v70 = BYTE6(a3);
LABEL_139:
      v73 = memcmp(v71, v72, v70);
      sub_1000D41B4(v18, v17);
      v6 = v84;
      if (!v73)
      {
        goto LABEL_140;
      }

      goto LABEL_13;
    }

    v64 = *(a2 + 16);
    v78 = *(a2 + 24);
    v49 = __DataStorage._bytes.getter();
    if (v49)
    {
      v65 = __DataStorage._offset.getter();
      if (__OFSUB__(v64, v65))
      {
        goto LABEL_163;
      }

      v49 += v64 - v65;
    }

    v26 = __OFSUB__(v78, v64);
    v66 = v78 - v64;
    if (v26)
    {
      goto LABEL_158;
    }

    result = __DataStorage._length.getter();
    if (result >= v66)
    {
      v52 = v66;
    }

    else
    {
      v52 = result;
    }

    if (!v39)
    {
      goto LABEL_182;
    }

    v8 = v86;
    v11 = v87;
    if (!v49)
    {
      goto LABEL_181;
    }

LABEL_135:
    if (v39 == v49)
    {
      sub_1000D41B4(v18, v17);
      sub_1000D41B4(a2, a3);
      v6 = v84;
      goto LABEL_143;
    }

    v70 = v52;
    v71 = v39;
    v72 = v49;
    goto LABEL_139;
  }

  *&__s1[6] = 0;
  *__s1 = 0;
  if (!v12)
  {
LABEL_69:
    __s2 = a2;
    v90 = a3;
    v91 = BYTE2(a3);
    v92 = BYTE3(a3);
    v93 = BYTE4(a3);
    v94 = BYTE5(a3);
    if (!memcmp(__s1, &__s2, BYTE6(a3)))
    {
      goto LABEL_140;
    }

    goto LABEL_13;
  }

  if (v12 == 2)
  {
    v44 = *(a2 + 16);
    v43 = *(a2 + 24);
    sub_10017A6A4(v18, v17);
    v45 = __DataStorage._bytes.getter();
    if (v45)
    {
      v46 = __DataStorage._offset.getter();
      if (__OFSUB__(v44, v46))
      {
        goto LABEL_162;
      }

      v45 += v44 - v46;
    }

    v26 = __OFSUB__(v43, v44);
    v47 = v43 - v44;
    if (v26)
    {
      goto LABEL_154;
    }

    v48 = __DataStorage._length.getter();
    v6 = v84;
    if (!v45)
    {
      goto LABEL_173;
    }

    goto LABEL_100;
  }

  if (v81 < a2)
  {
    goto LABEL_151;
  }

  sub_10017A6A4(v18, v17);
  v59 = __DataStorage._bytes.getter();
  if (v59)
  {
    v60 = v59;
    v61 = __DataStorage._offset.getter();
    if (__OFSUB__(a2, v61))
    {
      goto LABEL_157;
    }

    v33 = (a2 - v61 + v60);
    v34 = __DataStorage._length.getter();
    if (!v33)
    {
      goto LABEL_168;
    }

LABEL_109:
    if (v34 >= v80)
    {
      v62 = (a2 >> 32) - a2;
    }

    else
    {
      v62 = v34;
    }

    v63 = memcmp(__s1, v33, v62);
    sub_1000D41B4(v18, v17);
    v8 = v86;
    if (!v63)
    {
      goto LABEL_140;
    }

    goto LABEL_13;
  }

  __DataStorage._length.getter();
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  result = __DataStorage._length.getter();
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
  return result;
}

uint64_t sub_1003082B8(void *a1, void *a2, unint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v10 = v6;
  v13 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v13 < 0)
    {
      v14 = *v6;
    }

    else
    {
      v14 = v13 & 0xFFFFFFFFFFFFFF8;
    }

    v15 = a2;

    v16 = __CocoaSet.member(for:)();

    if (v16)
    {

      sub_100014C84(0, a3);
      swift_dynamicCast();
      result = 0;
      *a1 = v34;
    }

    else
    {
      result = __CocoaSet.count.getter();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v26 = sub_1003072E8(v14, result + 1, a5, a6, a3);
        v27 = v26[2];
        if (v26[3] <= v27)
        {
          sub_1003099E4(v27 + 1, a5);
        }

        v28 = v15;
        sub_100309F60(v28, v26);

        *v10 = v26;
        *a1 = v28;
        return 1;
      }
    }
  }

  else
  {
    sub_100014C84(0, a3);
    v18 = NSObject._rawHashValue(seed:)(*(v13 + 40));
    v19 = -1 << *(v13 + 32);
    v20 = v18 & ~v19;
    if ((*(v13 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
    {
      v21 = ~v19;
      while (1)
      {
        v22 = *(*(v13 + 48) + 8 * v20);
        v23 = static NSObject.== infix(_:_:)();

        if (v23)
        {
          break;
        }

        v20 = (v20 + 1) & v21;
        if (((*(v13 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v29 = *(*(v13 + 48) + 8 * v20);
      *a1 = v29;
      v30 = v29;
      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = *v10;
      v25 = a2;
      sub_10030C588(v25, v20, isUniquelyReferenced_nonNull_native, a5, a6, a3);
      *v10 = v35;
      *a1 = v25;
      return 1;
    }
  }

  return result;
}

uint64_t sub_10030852C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_10030D75C(&qword_1019156D0, &type metadata accessor for UUID);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_10030D75C(&qword_101916EA8, &type metadata accessor for UUID);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_10030D400(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_100308830(uint64_t a1)
{
  v3 = *v1;
  v4 = static Hasher._hash(seed:_:)();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + 8 * v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10030A164();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + 8 * v6);
  sub_10030BFCC(v6);
  result = v11;
  *v1 = v12;
  return result;
}

uint64_t sub_100308920(void *a1, unint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v9 = *v5;
  if ((*v5 & 0xC000000000000001) != 0)
  {
    if (v9 < 0)
    {
      v11 = *v5;
    }

    else
    {
      v11 = v9 & 0xFFFFFFFFFFFFFF8;
    }

    v12 = a1;
    v13 = __CocoaSet.contains(_:)();

    if (v13)
    {
      v14 = sub_100309FE4(v11, v12, a4, a5, a2);

      return v14;
    }

    return 0;
  }

  v25 = v5;
  sub_100014C84(0, a2);
  v16 = NSObject._rawHashValue(seed:)(*(v9 + 40));
  v17 = -1 << *(v9 + 32);
  v18 = v16 & ~v17;
  if (((*(v9 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
  {
    return 0;
  }

  v19 = ~v17;
  while (1)
  {
    v20 = *(*(v9 + 48) + 8 * v18);
    v21 = static NSObject.== infix(_:_:)();

    if (v21)
    {
      break;
    }

    v18 = (v18 + 1) & v19;
    if (((*(v9 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v25;
  v26 = *v25;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10030A97C(a4);
    v23 = v26;
  }

  v24 = *(*(v23 + 48) + 8 * v18);
  sub_10030C150(v18);
  result = v24;
  *v25 = v26;
  return result;
}

uint64_t sub_100308B1C()
{
  v1 = v0;
  v2 = *v0;
  sub_1000CE6B8(&qword_10190CE10);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    v24 = v1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = static Hasher._hash(seed:_:)();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    if (v7 >= 64)
    {
      bzero((v2 + 56), 8 * v10);
    }

    else
    {
      *v6 = -1 << v7;
    }

    v1 = v24;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_100308D40()
{
  v1 = v0;
  v2 = *v0;
  sub_1000CE6B8(&unk_1019193C0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = *(v2 + 48) + 40 * (v14 | (v5 << 6));
      v26 = *v17;
      v27 = *(v17 + 16);
      v28 = *(v17 + 32);
      result = AnyHashable._rawHashValue(seed:)(*(v4 + 40));
      v18 = -1 << *(v4 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v4 + 48) + 40 * v12;
      *v13 = v26;
      *(v13 + 16) = v27;
      *(v13 + 32) = v28;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v2 + 32);
    if (v25 >= 64)
    {
      bzero((v2 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v25;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_100308FA0()
{
  v1 = v0;
  v2 = *v0;
  sub_1000CE6B8(&qword_101919388);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      Hasher.init(_seed:)();
      v28 = v16;
      swift_unknownObjectRetain();
      sub_1000CE6B8(&unk_101919370);
      if (swift_dynamicCast())
      {
        v29[0] = v25;
        v29[1] = v26;
        v30 = v27;
        AnyHashable.hash(into:)();
        sub_10005BF8C(v29);
      }

      else
      {
        v27 = 0;
        v25 = 0u;
        v26 = 0u;
        sub_10010EA94(&v25);
      }

      result = Hasher._finalize()();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_100309260()
{
  v1 = *v0;
  sub_1000CE6B8(&qword_1019193A0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v3 = result;
  if (*(v1 + 16))
  {
    v4 = 0;
    v5 = (v1 + 56);
    v6 = 1 << *(v1 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v1 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v24 = *(*(v1 + 48) + 16 * (v12 | (v4 << 6)));
      Hasher.init(_seed:)();
      v28 = v24;
      v15 = v24;
      sub_1000CE6B8(&unk_101919390);
      if (swift_dynamicCast())
      {
        v29[0] = v25;
        v29[1] = v26;
        v30 = v27;
        AnyHashable.hash(into:)();
        sub_10005BF8C(v29);
      }

      else
      {
        v27 = 0;
        v25 = 0u;
        v26 = 0u;
        sub_10010EA94(&v25);
      }

      result = Hasher._finalize()();
      v16 = -1 << *(v3 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v3 + 48) + 16 * v11) = v24;
      ++*(v3 + 16);
    }

    v13 = v4;
    while (1)
    {
      v4 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v4 >= v9)
      {
        break;
      }

      v14 = v5[v4];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    v23 = 1 << *(v1 + 32);
    if (v23 >= 64)
    {
      bzero((v1 + 56), ((v23 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v5 = -1 << v23;
    }

    *(v1 + 16) = 0;
  }

  *v0 = v3;
  return result;
}

uint64_t sub_100309524()
{
  v1 = v0;
  v2 = *v0;
  sub_1000CE6B8(&qword_1019193A8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_100309784()
{
  v1 = v0;
  v2 = *v0;
  sub_1000CE6B8(&qword_1019193E8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();
      Data.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1003099E4(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  sub_1000CE6B8(a2);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v4 + 48) + 8 * (v15 | (v7 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v6 + 40));
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v4 + 32);
    if (v26 >= 64)
    {
      bzero((v4 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v4 + 16) = 0;
  }

  *v3 = v6;
  return result;
}

uint64_t sub_100309C04()
{
  v1 = v0;
  v35 = type metadata accessor for UUID();
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_1000CE6B8(&qword_101919360);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_10030D75C(&qword_1019156D0, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

unint64_t sub_100309F60(uint64_t a1, void *a2)
{
  NSObject._rawHashValue(seed:)(a2[5]);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

uint64_t sub_100309FE4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, unint64_t *a5)
{
  v9 = v5;

  v10 = __CocoaSet.count.getter();
  v11 = swift_unknownObjectRetain();
  v12 = sub_1003072E8(v11, v10, a3, a4, a5);
  v22 = v12;
  v13 = *(v12 + 40);

  v14 = NSObject._rawHashValue(seed:)(v13);
  v15 = -1 << *(v12 + 32);
  v16 = v14 & ~v15;
  if ((*(v12 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    sub_100014C84(0, a5);
    while (1)
    {
      v18 = *(*(v12 + 48) + 8 * v16);
      v19 = static NSObject.== infix(_:_:)();

      if (v19)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v12 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v20 = *(*(v12 + 48) + 8 * v16);
  sub_10030C150(v16);
  result = static NSObject.== infix(_:_:)();
  if (result)
  {
    *v9 = v22;
    return v20;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_10030A164()
{
  v1 = v0;
  sub_1000CE6B8(&qword_10190CE10);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10030A2A4()
{
  v1 = v0;
  sub_1000CE6B8(&unk_1019193C0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 40 * (v14 | (v8 << 6));
        result = sub_10012EF50(*(v2 + 48) + v17, v21);
        v18 = *(v4 + 48) + v17;
        v19 = v21[0];
        v20 = v21[1];
        *(v18 + 32) = v22;
        *v18 = v19;
        *(v18 + 16) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10030A41C()
{
  v1 = v0;
  sub_1000CE6B8(&qword_101919388);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
        result = swift_unknownObjectRetain();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_10030A56C()
{
  v1 = v0;
  sub_1000CE6B8(&qword_1019193A0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = *(*(v2 + 48) + v17);
        *(*(v4 + 48) + v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10030A6C4()
{
  v1 = v0;
  sub_1000CE6B8(&qword_1019193A8);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10030A820()
{
  v1 = v0;
  sub_1000CE6B8(&qword_1019193E8);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = *(*(v2 + 48) + v17);
        *(*(v4 + 48) + v17) = v18;
        result = sub_10017A6A4(v18, *(&v18 + 1));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_10030A97C(uint64_t *a1)
{
  v2 = v1;
  sub_1000CE6B8(a1);
  v3 = *v1;
  v4 = static _SetStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 56);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 48) + 8 * v18);
        *(*(v5 + 48) + 8 * v18) = v19;
        result = v19;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_10030AABC()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000CE6B8(&qword_101919360);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_10030ACF4()
{
  v1 = v0;
  v2 = *v0;
  sub_1000CE6B8(&qword_10190CE10);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = static Hasher._hash(seed:_:)();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_24;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_10030AEE4()
{
  v1 = v0;
  v2 = *v0;
  sub_1000CE6B8(&unk_1019193C0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v15 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      sub_10012EF50(*(v2 + 48) + 40 * (v15 | (v5 << 6)), v25);
      result = AnyHashable._rawHashValue(seed:)(*(v4 + 40));
      v18 = -1 << *(v4 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v10 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v10 + 8 * v20);
          if (v24 != -1)
          {
            v11 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v19) & ~*(v10 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = *(v4 + 48) + 40 * v11;
      v13 = v25[0];
      v14 = v25[1];
      *(v12 + 32) = v26;
      *v12 = v13;
      *(v12 + 16) = v14;
      ++*(v4 + 16);
    }

    v16 = v5;
    while (1)
    {
      v5 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v17 = *(v2 + 56 + 8 * v5);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v8 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_10030B110()
{
  v1 = v0;
  v2 = *v0;
  sub_1000CE6B8(&qword_101919388);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      Hasher.init(_seed:)();
      v26 = v15;
      swift_unknownObjectRetain_n();
      sub_1000CE6B8(&unk_101919370);
      if (swift_dynamicCast())
      {
        v27[0] = v23;
        v27[1] = v24;
        v28 = v25;
        AnyHashable.hash(into:)();
        sub_10005BF8C(v27);
      }

      else
      {
        v25 = 0;
        v23 = 0u;
        v24 = 0u;
        sub_10010EA94(&v23);
      }

      result = Hasher._finalize()();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_29;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_10030B3A4()
{
  v1 = *v0;
  sub_1000CE6B8(&qword_1019193A0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v3 = result;
  if (*(v1 + 16))
  {
    v4 = 0;
    v5 = 1 << *(v1 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(v1 + 56);
    v8 = (v5 + 63) >> 6;
    v9 = result + 56;
    while (v7)
    {
      v11 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_15:
      v22 = *(*(v1 + 48) + 16 * (v11 | (v4 << 6)));
      Hasher.init(_seed:)();
      v26 = v22;
      v14 = v22;
      sub_1000CE6B8(&unk_101919390);
      if (swift_dynamicCast())
      {
        v27[0] = v23;
        v27[1] = v24;
        v28 = v25;
        AnyHashable.hash(into:)();
        sub_10005BF8C(v27);
      }

      else
      {
        v25 = 0;
        v23 = 0u;
        v24 = 0u;
        sub_10010EA94(&v23);
      }

      result = Hasher._finalize()();
      v15 = -1 << *(v3 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v9 + 8 * (v16 >> 6))) == 0)
      {
        v18 = 0;
        v19 = (63 - v15) >> 6;
        while (++v17 != v19 || (v18 & 1) == 0)
        {
          v20 = v17 == v19;
          if (v17 == v19)
          {
            v17 = 0;
          }

          v18 |= v20;
          v21 = *(v9 + 8 * v17);
          if (v21 != -1)
          {
            v10 = __clz(__rbit64(~v21)) + (v17 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_29;
      }

      v10 = __clz(__rbit64((-1 << v16) & ~*(v9 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v9 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      *(*(v3 + 48) + 16 * v10) = v22;
      ++*(v3 + 16);
    }

    v12 = v4;
    while (1)
    {
      v4 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        goto LABEL_27;
      }

      v13 = *(v1 + 56 + 8 * v4);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v7 = (v13 - 1) & v13;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
LABEL_27:

    *v0 = v3;
  }

  return result;
}

uint64_t sub_10030B630()
{
  v1 = v0;
  v2 = *v0;
  sub_1000CE6B8(&qword_1019193A8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_10030B868()
{
  v1 = v0;
  v2 = *v0;
  sub_1000CE6B8(&qword_1019193E8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      Hasher.init(_seed:)();
      sub_10017A6A4(v17, v18);
      Data.hash(into:)();
      result = Hasher._finalize()();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_10030BAA4(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  sub_1000CE6B8(a2);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v4 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(v6 + 40);
      v18 = *(*(v4 + 48) + 8 * (v14 | (v7 << 6)));
      result = NSObject._rawHashValue(seed:)(v17);
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v3 = v26;
        goto LABEL_26;
      }

      v16 = *(v4 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v3 = v6;
  }

  return result;
}

uint64_t sub_10030BCB0()
{
  v1 = v0;
  v32 = type metadata accessor for UUID();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1000CE6B8(&qword_101919360);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_10030D75C(&qword_1019156D0, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

unint64_t sub_10030BFCC(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 48);
        v11 = (v10 + 8 * v6);
        v12 = static Hasher._hash(seed:_:)() & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = (v10 + 8 * v2);
            if (v2 != v6 || v15 >= v11 + 1)
            {
              *v15 = *v11;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_10030C150(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 40);
        v11 = *(*(v3 + 48) + 8 * v6);
        v12 = NSObject._rawHashValue(seed:)(v10);

        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 >= v9 && v2 >= v13)
          {
LABEL_16:
            v16 = *(v3 + 48);
            v17 = (v16 + 8 * v2);
            v18 = (v16 + 8 * v6);
            if (v2 != v6 || v17 >= v18 + 1)
            {
              *v17 = *v18;
              v2 = v6;
            }
          }
        }

        else if (v13 >= v9 || v2 >= v13)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_10030C2F0(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100308B1C();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_10030A164();
      a2 = v7;
      goto LABEL_12;
    }

    sub_10030ACF4();
  }

  v8 = *v3;
  result = static Hasher._hash(seed:_:)();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_10030C410(Swift::Int result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100308D40();
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_10030A2A4();
      goto LABEL_12;
    }

    sub_10030AEE4();
  }

  v9 = *v3;
  result = AnyHashable._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      sub_10012EF50(*(v9 + 48) + 40 * a2, v19);
      v12 = static AnyHashable.== infix(_:_:)();
      result = sub_10005BF8C(v19);
      if (v12)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v13 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v14 = *(v13 + 48) + 40 * a2;
  v15 = *(v6 + 16);
  *v14 = *v6;
  *(v14 + 16) = v15;
  *(v14 + 32) = *(v6 + 32);
  v16 = *(v13 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v13 + 16) = v18;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_10030C588(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t a5, unint64_t *a6)
{
  v9 = *(*v6 + 16);
  v10 = *(*v6 + 24);
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v11 = a6;
    sub_1003099E4(v9 + 1, a4);
  }

  else
  {
    if (v10 > v9)
    {
      sub_10030A97C(a4);
      goto LABEL_12;
    }

    v11 = a6;
    sub_10030BAA4(v9 + 1, a4);
  }

  v12 = *v6;
  v13 = NSObject._rawHashValue(seed:)(*(*v6 + 40));
  v14 = -1 << *(v12 + 32);
  a2 = v13 & ~v14;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    sub_100014C84(0, v11);
    do
    {
      v16 = *(*(v12 + 48) + 8 * a2);
      v17 = static NSObject.== infix(_:_:)();

      if (v17)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v18 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + 8 * a2) = a1;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

Swift::Int sub_10030C718(Swift::Int result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_100309260();
    }

    else
    {
      if (v9 > v8)
      {
        result = sub_10030A56C();
        goto LABEL_18;
      }

      sub_10030B3A4();
    }

    v10 = *v4;
    Hasher.init(_seed:)();
    sub_10005BEEC(v31, v7, a2);
    result = Hasher._finalize()();
    v11 = -1 << *(v10 + 32);
    a3 = result & ~v11;
    if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v12 = ~v11;
      while (1)
      {
        v23 = *(*(v10 + 48) + 16 * a3);
        v14 = v23;
        sub_1000CE6B8(&unk_101919390);
        if (!swift_dynamicCast())
        {
          break;
        }

        v31[0] = v28;
        v31[1] = v29;
        v32 = v30;
        v26 = v7;
        v27 = a2;
        v15 = v7;
        if ((swift_dynamicCast() & 1) == 0)
        {

          sub_10005BF8C(v31);
          v23 = 0u;
          v24 = 0u;
          v25 = 0;
          v13 = &v23;
          goto LABEL_11;
        }

        v28 = v23;
        v29 = v24;
        v30 = v25;
        v16 = static AnyHashable.== infix(_:_:)();

        sub_10005BF8C(&v28);
        result = sub_10005BF8C(v31);
        if (v16)
        {
          goto LABEL_21;
        }

LABEL_12:
        a3 = (a3 + 1) & v12;
        if (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      v30 = 0;
      v28 = 0u;
      v29 = 0u;
      v13 = &v28;
LABEL_11:
      result = sub_10010EA94(v13);
      goto LABEL_12;
    }
  }

LABEL_18:
  v17 = *v22;
  *(*v22 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v18 = (*(v17 + 48) + 16 * a3);
  *v18 = v7;
  v18[1] = a2;
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_21:
    sub_1000CE6B8(&qword_101921A50);
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v21;
  }

  return result;
}

Swift::Int sub_10030C980(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_100309524();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_10030A6C4();
      goto LABEL_16;
    }

    sub_10030B630();
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_10030CB00(Swift::Int result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_143;
  }

  if (a4)
  {
    sub_100309784();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_10030A820();
      goto LABEL_143;
    }

    sub_10030B868();
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  Data.hash(into:)();
  result = Hasher._finalize()();
  v11 = v10 + 56;
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
  {
LABEL_143:
    v70 = *v79;
    *(*v79 + 8 * (a3 >> 6) + 56) |= 1 << a3;
    v71 = (*(v70 + 48) + 16 * a3);
    *v71 = v7;
    v71[1] = a2;
    v72 = *(v70 + 16);
    v29 = __OFADD__(v72, 1);
    v73 = v72 + 1;
    if (!v29)
    {
      *(v70 + 16) = v73;
      return result;
    }

LABEL_146:
    __break(1u);
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    __break(1u);
LABEL_151:
    __break(1u);
LABEL_152:
    __break(1u);
LABEL_153:
    __break(1u);
LABEL_154:
    __break(1u);
LABEL_155:
    __break(1u);
LABEL_156:
    __break(1u);
LABEL_157:
    __break(1u);
LABEL_158:
    __break(1u);
LABEL_159:
    __break(1u);
LABEL_160:
    __break(1u);
LABEL_161:
    __break(1u);
LABEL_162:
    __break(1u);
LABEL_163:
    __break(1u);
LABEL_164:
    __break(1u);
LABEL_165:
    __break(1u);
LABEL_166:
    __break(1u);
LABEL_167:
    __break(1u);
  }

  v13 = ~v12;
  v14 = a2 >> 62;
  if (v7)
  {
    v15 = 0;
  }

  else
  {
    v15 = a2 == 0xC000000000000000;
  }

  v16 = !v15;
  v83 = v16;
  v78 = v10;
  v17 = __OFSUB__(HIDWORD(v7), v7);
  v80 = v17;
  v76 = (v7 >> 32) - v7;
  v77 = v7 >> 32;
  v81 = v13;
  v82 = v10 + 56;
  while (1)
  {
    v18 = (*(v10 + 48) + 16 * a3);
    v20 = *v18;
    v19 = v18[1];
    v21 = v19 >> 62;
    if (v19 >> 62 == 3)
    {
      if (v20)
      {
        v22 = 0;
      }

      else
      {
        v22 = v19 == 0xC000000000000000;
      }

      v24 = !v22 || a2 >> 62 != 3;
      if (((v24 | v83) & 1) == 0)
      {
        goto LABEL_185;
      }

LABEL_32:
      v25 = 0;
      goto LABEL_33;
    }

    if (v21 > 1)
    {
      if (v21 != 2)
      {
        goto LABEL_32;
      }

      v36 = *(v20 + 16);
      v35 = *(v20 + 24);
      v29 = __OFSUB__(v35, v36);
      v25 = v35 - v36;
      if (v29)
      {
        goto LABEL_147;
      }
    }

    else if (v21)
    {
      LODWORD(v25) = HIDWORD(v20) - v20;
      if (__OFSUB__(HIDWORD(v20), v20))
      {
        goto LABEL_148;
      }

      v25 = v25;
    }

    else
    {
      v25 = BYTE6(v19);
    }

LABEL_33:
    if (v14 > 1)
    {
      if (v14 != 2)
      {
        if (!v25)
        {
          goto LABEL_185;
        }

        goto LABEL_20;
      }

      v28 = *(v7 + 16);
      v27 = *(v7 + 24);
      v29 = __OFSUB__(v27, v28);
      v26 = v27 - v28;
      if (v29)
      {
        goto LABEL_145;
      }
    }

    else
    {
      v26 = BYTE6(a2);
      if (v14)
      {
        v26 = HIDWORD(v7) - v7;
        if (v80)
        {
          __break(1u);
LABEL_145:
          __break(1u);
          goto LABEL_146;
        }
      }
    }

    if (v25 == v26)
    {
      break;
    }

LABEL_20:
    a3 = (a3 + 1) & v13;
    if (((*(v11 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
    {
      goto LABEL_143;
    }
  }

  if (v25 < 1)
  {
    goto LABEL_185;
  }

  if (v21 <= 1)
  {
    if (!v21)
    {
      *__s1 = v20;
      *&__s1[8] = v19;
      __s1[10] = BYTE2(v19);
      __s1[11] = BYTE3(v19);
      __s1[12] = BYTE4(v19);
      __s1[13] = BYTE5(v19);
      if (!v14)
      {
        goto LABEL_97;
      }

      if (v14 == 1)
      {
        if (v77 < v7)
        {
          goto LABEL_152;
        }

        sub_10017A6A4(v20, v19);
        v30 = __DataStorage._bytes.getter();
        if (!v30)
        {
          goto LABEL_175;
        }

        v31 = v30;
        v32 = __DataStorage._offset.getter();
        if (__OFSUB__(v7, v32))
        {
          goto LABEL_158;
        }

        v33 = v7 - v32 + v31;
        v34 = __DataStorage._length.getter();
        if (!v33)
        {
          goto LABEL_174;
        }

LABEL_111:
        if (v34 >= v76)
        {
          v55 = (v7 >> 32) - v7;
        }

        else
        {
          v55 = v34;
        }

LABEL_114:
        v59 = __s1;
        v60 = v33;
LABEL_140:
        v69 = memcmp(v59, v60, v55);
        result = sub_1000D41B4(v20, v19);
LABEL_141:
        v13 = v81;
        v11 = v82;
        if (!v69)
        {
          goto LABEL_185;
        }

        goto LABEL_20;
      }

      v53 = *(v7 + 16);
      v52 = *(v7 + 24);
      sub_10017A6A4(v20, v19);
      v33 = __DataStorage._bytes.getter();
      if (v33)
      {
        v54 = __DataStorage._offset.getter();
        if (__OFSUB__(v53, v54))
        {
          goto LABEL_162;
        }

        v33 += v53 - v54;
      }

      v29 = __OFSUB__(v52, v53);
      v50 = v52 - v53;
      if (v29)
      {
        goto LABEL_156;
      }

      v51 = __DataStorage._length.getter();
      v10 = v78;
      if (!v33)
      {
        goto LABEL_172;
      }

LABEL_104:
      if (v51 >= v50)
      {
        v55 = v50;
      }

      else
      {
        v55 = v51;
      }

      goto LABEL_114;
    }

    if (v20 > v20 >> 32)
    {
      goto LABEL_149;
    }

    sub_10017A6A4(v20, v19);
    v38 = __DataStorage._bytes.getter();
    if (v38)
    {
      v44 = __DataStorage._offset.getter();
      if (__OFSUB__(v20, v44))
      {
        goto LABEL_151;
      }

      v38 += v20 - v44;
    }

    __DataStorage._length.getter();
    if (v14 == 2)
    {
      v65 = *(v7 + 16);
      v75 = *(v7 + 24);
      v40 = __DataStorage._bytes.getter();
      if (v40)
      {
        v66 = __DataStorage._offset.getter();
        if (__OFSUB__(v65, v66))
        {
          goto LABEL_166;
        }

        v40 += v65 - v66;
      }

      v29 = __OFSUB__(v75, v65);
      v67 = v75 - v65;
      if (v29)
      {
        goto LABEL_161;
      }

      v68 = __DataStorage._length.getter();
      if (v68 >= v67)
      {
        v43 = v67;
      }

      else
      {
        v43 = v68;
      }

      if (!v38)
      {
        goto LABEL_177;
      }

      if (!v40)
      {
        goto LABEL_176;
      }

      goto LABEL_136;
    }

    if (v14 == 1)
    {
      if (v77 < v7)
      {
        goto LABEL_160;
      }

      v40 = __DataStorage._bytes.getter();
      if (v40)
      {
        v45 = __DataStorage._offset.getter();
        if (__OFSUB__(v7, v45))
        {
          goto LABEL_167;
        }

        v40 += v7 - v45;
      }

      v46 = __DataStorage._length.getter();
      v43 = (v7 >> 32) - v7;
      if (v46 < v76)
      {
        v43 = v46;
      }

      if (!v38)
      {
        goto LABEL_181;
      }

      if (!v40)
      {
        goto LABEL_180;
      }

      goto LABEL_136;
    }

    *__s1 = v7;
    *&__s1[8] = a2;
    __s1[10] = BYTE2(a2);
    __s1[11] = BYTE3(a2);
    __s1[12] = BYTE4(a2);
    __s1[13] = BYTE5(a2);
    if (!v38)
    {
      goto LABEL_173;
    }

    goto LABEL_139;
  }

  if (v21 == 2)
  {
    v37 = *(v20 + 16);
    sub_10017A6A4(v20, v19);
    v38 = __DataStorage._bytes.getter();
    if (v38)
    {
      v39 = __DataStorage._offset.getter();
      if (__OFSUB__(v37, v39))
      {
        goto LABEL_150;
      }

      v38 += v37 - v39;
    }

    __DataStorage._length.getter();
    if (v14 == 2)
    {
      v61 = *(v7 + 16);
      v74 = *(v7 + 24);
      v40 = __DataStorage._bytes.getter();
      if (v40)
      {
        v62 = __DataStorage._offset.getter();
        if (__OFSUB__(v61, v62))
        {
          goto LABEL_164;
        }

        v40 += v61 - v62;
      }

      v29 = __OFSUB__(v74, v61);
      v63 = v74 - v61;
      if (v29)
      {
        goto LABEL_159;
      }

      v64 = __DataStorage._length.getter();
      if (v64 >= v63)
      {
        v43 = v63;
      }

      else
      {
        v43 = v64;
      }

      if (!v38)
      {
        goto LABEL_183;
      }

      if (!v40)
      {
        goto LABEL_182;
      }

      goto LABEL_136;
    }

    if (v14 == 1)
    {
      if (v77 < v7)
      {
        goto LABEL_155;
      }

      v40 = __DataStorage._bytes.getter();
      if (v40)
      {
        v41 = __DataStorage._offset.getter();
        if (__OFSUB__(v7, v41))
        {
          goto LABEL_165;
        }

        v40 += v7 - v41;
      }

      v42 = __DataStorage._length.getter();
      v43 = (v7 >> 32) - v7;
      if (v42 < v76)
      {
        v43 = v42;
      }

      if (!v38)
      {
        goto LABEL_179;
      }

      if (!v40)
      {
        goto LABEL_178;
      }

LABEL_136:
      if (v38 == v40)
      {
        goto LABEL_184;
      }

      v69 = memcmp(v38, v40, v43);
      result = sub_1000D41B4(v20, v19);
      v10 = v78;
      goto LABEL_141;
    }

    *__s1 = v7;
    *&__s1[8] = a2;
    __s1[10] = BYTE2(a2);
    __s1[11] = BYTE3(a2);
    __s1[12] = BYTE4(a2);
    __s1[13] = BYTE5(a2);
    if (!v38)
    {
      goto LABEL_170;
    }

LABEL_139:
    v60 = __s1;
    v59 = v38;
    v55 = BYTE6(a2);
    goto LABEL_140;
  }

  *&__s1[6] = 0;
  *__s1 = 0;
  if (!v14)
  {
LABEL_97:
    __s2 = v7;
    v85 = a2;
    v86 = BYTE2(a2);
    v87 = BYTE3(a2);
    v88 = BYTE4(a2);
    v89 = BYTE5(a2);
    result = memcmp(__s1, &__s2, BYTE6(a2));
    if (!result)
    {
      goto LABEL_185;
    }

    goto LABEL_20;
  }

  if (v14 == 2)
  {
    v48 = *(v7 + 16);
    v47 = *(v7 + 24);
    sub_10017A6A4(v20, v19);
    v33 = __DataStorage._bytes.getter();
    if (v33)
    {
      v49 = __DataStorage._offset.getter();
      if (__OFSUB__(v48, v49))
      {
        goto LABEL_163;
      }

      v33 += v48 - v49;
    }

    v29 = __OFSUB__(v47, v48);
    v50 = v47 - v48;
    if (v29)
    {
      goto LABEL_154;
    }

    v51 = __DataStorage._length.getter();
    v10 = v78;
    if (!v33)
    {
      goto LABEL_171;
    }

    goto LABEL_104;
  }

  if (v77 < v7)
  {
    goto LABEL_153;
  }

  sub_10017A6A4(v20, v19);
  v56 = __DataStorage._bytes.getter();
  if (v56)
  {
    v57 = v56;
    v58 = __DataStorage._offset.getter();
    if (__OFSUB__(v7, v58))
    {
      goto LABEL_157;
    }

    v33 = v7 - v58 + v57;
    v34 = __DataStorage._length.getter();
    if (!v33)
    {
      goto LABEL_169;
    }

    goto LABEL_111;
  }

  __DataStorage._length.getter();
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __DataStorage._length.getter();
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  sub_1000D41B4(v20, v19);
LABEL_185:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10030D400(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100309C04();
  }

  else
  {
    if (v12 > v11)
    {
      sub_10030AABC();
      goto LABEL_12;
    }

    sub_10030BCB0();
  }

  v13 = *v3;
  sub_10030D75C(&qword_1019156D0, &type metadata accessor for UUID);
  v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_10030D75C(&qword_101916EA8, &type metadata accessor for UUID);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10030D6C0()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC4Maps21GuidesPickerViewModel__libraryCellViewModel) = *(v0 + 24);
}

uint64_t sub_10030D75C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10030D7A4()
{
  v0 = type metadata accessor for UUID();
  __chkstk_darwin(v0 - 8);
  v26 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1000CE6B8(&unk_10190D5B0);
  __chkstk_darwin(v2 - 8);
  v25 = &v21 - v3;
  v4 = type metadata accessor for TrailingAccessoryViewModel.TrailingAccessoryType();
  v23 = *(v4 - 8);
  v24 = v4;
  __chkstk_darwin(v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for LeadingAccessoryViewModel.LeadingAccessoryType();
  v7 = *(v22 - 8);
  __chkstk_darwin(v22);
  v9 = (&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for RichTextType();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  sub_1000CE6B8(&unk_1019157F0);
  v14 = swift_allocObject();
  v27 = xmmword_1011E1D30;
  *(v14 + 16) = xmmword_1011E1D30;
  sub_1000CE6B8(&qword_10190A070);
  type metadata accessor for RichTextViewModel();
  v15 = swift_allocObject();
  *(v15 + 16) = v27;
  (*(v11 + 104))(v13, enum case for RichTextType.title(_:), v10);
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v34._object = 0x800000010122DA10;
  v16._countAndFlagsBits = 0x6220736563616C50;
  v16._object = 0xED00006E6F747475;
  v17._countAndFlagsBits = 0x736563616C50;
  v34._countAndFlagsBits = 0xD000000000000037;
  v17._object = 0xE600000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, qword_1019600D8, v17, v34);
  RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();

  (*(v11 + 8))(v13, v10);
  *(v14 + 32) = v15;
  sub_1000CE6B8(&unk_10190A060);
  type metadata accessor for LeadingAccessoryViewModel();
  *(swift_allocObject() + 16) = v27;
  v18 = static Color.indigo.getter();
  *v9 = 0xD000000000000011;
  v9[1] = 0x8000000101226BD0;
  v9[2] = v18;
  (*(v7 + 104))(v9, enum case for LeadingAccessoryViewModel.LeadingAccessoryType.profile(_:), v22);
  LeadingAccessoryViewModel.init(type:)();
  sub_1000CE6B8(&unk_10190D580);
  type metadata accessor for TrailingAccessoryViewModel();
  *(swift_allocObject() + 16) = v27;
  *v6 = 1;
  (*(v23 + 104))(v6, enum case for TrailingAccessoryViewModel.TrailingAccessoryType.select(_:), v24);
  TrailingAccessoryViewModel.init(type:)();
  v19 = type metadata accessor for BottomAccessoryViewModel();
  (*(*(v19 - 8) + 56))(v25, 1, 1, v19);
  UUID.init()();
  type metadata accessor for ListCellViewModel();
  swift_allocObject();
  return ListCellViewModel.init(id:imageProvider:imageOverlayProvider:imagePlaceholder:title:query:richTextViews:leadingAccessory:trailingAccessory:contextLineAccessory:bottomAccessory:active:isSelected:leadingSwipeActions:trailingSwipeActions:menuActions:allowsFullSwipe:)();
}

id sub_10030DE2C(void *a1, char a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v42 = OBJC_IVAR____TtC4Maps21GuidesPickerViewModel__state;
  v43 = ObjectType;
  *&v3[OBJC_IVAR____TtC4Maps21GuidesPickerViewModel__state] = 0;
  v7 = &v3[OBJC_IVAR____TtC4Maps21GuidesPickerViewModel__onClose];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &v3[OBJC_IVAR____TtC4Maps21GuidesPickerViewModel__onAddUserGuide];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = &v3[OBJC_IVAR____TtC4Maps21GuidesPickerViewModel__onConfirmation];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = OBJC_IVAR____TtC4Maps21GuidesPickerViewModel__collectionSession;
  *&v3[OBJC_IVAR____TtC4Maps21GuidesPickerViewModel__collectionSession] = 0;
  v11 = _swiftEmptyArrayStorage;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_10052F7F8(_swiftEmptyArrayStorage);
  }

  else
  {
    v12 = &_swiftEmptySetSingleton;
  }

  *&v3[OBJC_IVAR____TtC4Maps21GuidesPickerViewModel__selectedUserGuides] = v12;
  v3[OBJC_IVAR____TtC4Maps21GuidesPickerViewModel__isLibrarySelected] = 1;
  ObservationRegistrar.init()();
  v13 = *&v3[v10];
  v45 = a1;

  *&v3[v10] = a1;
  v3[OBJC_IVAR____TtC4Maps21GuidesPickerViewModel__showsAddToLibrarySection] = a2 & 1;
  if ((a2 & 1) == 0)
  {
    v14 = "TB,N,V_isLibrarySelected";
    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v16.super.isa = qword_1019600D8;
    v41 = 0x800000010122D920;
    v17 = 0x47206F7420646441;
    v18 = 0xED00007365646975;
    v19 = 0x800000010122D8F0;
    v20 = 0xD00000000000004ELL;
    goto LABEL_9;
  }

  v14 = " of guides for user to select.";
  v15 = 0x800000010122D9A0;
  if (qword_101906768 != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v16.super.isa = qword_1019600D8;
    v41 = v15;
    v17 = 0x50206F7420646441;
    v18 = 0xED0000736563616CLL;
    v19 = v14 | 0x8000000000000000;
    v20 = 0xD000000000000069;
LABEL_9:
    v21 = 0xD000000000000021;
    *&v3[OBJC_IVAR____TtC4Maps21GuidesPickerViewModel_title] = NSLocalizedString(_:tableName:bundle:value:comment:)(*(&v19 - 1), 0, v16, *&v17, *&v20);
    if (a1 && (v22 = [v45 mapItem]) != 0 && (v23 = v22, v24 = objc_msgSend(v22, "name"), v23, v24))
    {
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;
    }

    else
    {
      v25 = 0;
      v27 = 0xE000000000000000;
    }

    v28 = &v3[OBJC_IVAR____TtC4Maps21GuidesPickerViewModel_subtitle];
    *v28 = v25;
    v28[1] = v27;
    v47 = v11;
    v15 = [objc_opt_self() sharedManager];
    v29 = [v15 currentCollectionsForPicker];

    sub_100014C84(0, &qword_101922CC0);
    v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v30 >> 62)
    {
      v11 = _CocoaArrayWrapper.endIndex.getter();
      v44 = v3;
      if (!v11)
      {
LABEL_34:
        v32 = _swiftEmptyArrayStorage;
        goto LABEL_35;
      }
    }

    else
    {
      v11 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v44 = v3;
      if (!v11)
      {
        goto LABEL_34;
      }
    }

    if (v11 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_37:
    swift_once();
  }

  v31 = 0;
  v32 = _swiftEmptyArrayStorage;
  do
  {
    if ((v30 & 0xC000000000000001) != 0)
    {
      v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v33 = *(v30 + 8 * v31 + 32);
    }

    v34 = v33;
    if ([v33 handlerType] == 1)
    {
    }

    else
    {
      if (a1 && (v35 = [v45 mapItem]) != 0)
      {
        v36 = v35;
        v37 = [v34 containsItem:v35];
      }

      else
      {
        v37 = 0;
      }

      type metadata accessor for GuidePickerRowViewModel();
      swift_allocObject();
      v38 = v45;
      v39 = v34;
      sub_1001459C4(v39, a1, v37);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v32 = v47;
    }

    ++v31;
  }

  while (v11 != v31);
LABEL_35:

  *&v44[OBJC_IVAR____TtC4Maps21GuidesPickerViewModel__libraryCellViewModel] = sub_10030D7A4();

  *&v44[v42] = v32;
  v46.receiver = v44;
  v46.super_class = v43;
  return objc_msgSendSuper2(&v46, "init");
}

uint64_t sub_10030E624@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  swift_getObjectType();
  v4 = type metadata accessor for MapsDesignAccessibilityString();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10030FCF0(&qword_101919448, type metadata accessor for CarReportIncidentViewController);
  v8 = v2;
  v9 = ObservedObject.init(wrappedValue:)();
  v11 = v10;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v15[0] = v9;
  *(&v15[0] + 1) = v11;
  *v7 = 0xD000000000000015;
  v7[1] = 0x80000001011FA010;
  (*(v5 + 104))(v7, enum case for MapsDesignAccessibilityString.view(_:), v4);
  a1[3] = sub_1000CE6B8(&qword_101919450);
  v12 = sub_1000D6664(&qword_101919458);
  v13 = sub_10030EE74();
  *&v16[0] = v12;
  *(&v16[0] + 1) = v13;
  a1[4] = swift_getOpaqueTypeConformance2();
  sub_10001A848(a1);
  View.mapsDesignAXContainer(withID:)();
  (*(v5 + 8))(v7, v4);
  v16[4] = v15[4];
  v16[5] = v15[5];
  v16[6] = v15[6];
  v16[7] = v15[7];
  v16[0] = v15[0];
  v16[1] = v15[1];
  v16[2] = v15[2];
  v16[3] = v15[3];
  return sub_10030EF54(v16);
}

uint64_t sub_10030E964()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10030EA70@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_10030EAF0(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t sub_10030EC14()
{
  sub_1000A09E0(v0 + OBJC_IVAR____TtC4Maps31CarReportIncidentViewController_delegate);
  v1 = OBJC_IVAR____TtC4Maps31CarReportIncidentViewController__incidentLayoutItems;
  v2 = sub_1000CE6B8(&qword_101919440);
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t type metadata accessor for CarReportIncidentViewController()
{
  result = qword_101919420;
  if (!qword_101919420)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10030ED74()
{
  sub_10030EE10();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10030EE10()
{
  if (!qword_101919430)
  {
    sub_1000D6664(&qword_101919438);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_101919430);
    }
  }
}

unint64_t sub_10030EE74()
{
  result = qword_101919460;
  if (!qword_101919460)
  {
    sub_1000D6664(&qword_101919458);
    sub_10030EF00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101919460);
  }

  return result;
}

unint64_t sub_10030EF00()
{
  result = qword_101919468;
  if (!qword_101919468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101919468);
  }

  return result;
}

uint64_t sub_10030EF54(uint64_t a1)
{
  v2 = sub_1000CE6B8(&qword_101919458);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10030EFBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_101919478);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9[-v6];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v10 = v13;
  v11 = a1;
  v12 = a2;
  static Axis.Set.vertical.getter();
  sub_1000CE6B8(&qword_101919480);
  sub_10030FC24();
  ScrollView.init(_:showsIndicators:content:)();

  sub_1000414C8(&qword_1019194A0, &qword_101919478);
  View.scrollAccessoryEdge(_:)();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10030F198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1000CE6B8(&qword_101919498);
  __chkstk_darwin(v8 - 8);
  v10 = &v29[-v9];
  v11 = static HorizontalAlignment.leading.getter();
  v12 = qword_10193E340;
  *v10 = v11;
  *(v10 + 1) = v12;
  v10[16] = 0;
  sub_1000CE6B8(&qword_1019194A8);
  v30 = a1;
  swift_getKeyPath();
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;

  v14 = a3;
  sub_1000CE6B8(&qword_101919438);
  type metadata accessor for NavigationCell();
  sub_1000414C8(&qword_1019194B0, &qword_101919438);
  sub_10030FCF0(&qword_1019194B8, type metadata accessor for GEOTrafficIncident_Type);
  sub_10030FCF0(&qword_10190A030, &type metadata accessor for NavigationCell);
  ForEach<>.init(_:id:content:)();
  sub_1000CE6B8(&qword_101909FF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1011E1D40;
  LOBYTE(a2) = static Edge.Set.leading.getter();
  *(inited + 32) = a2;
  v16 = static Edge.Set.trailing.getter();
  *(inited + 33) = v16;
  v17 = static Edge.Set.bottom.getter();
  *(inited + 34) = v17;
  v18 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != a2)
  {
    v18 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v16)
  {
    v18 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v17)
  {
    v18 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  sub_10030FD38(v10, a4);
  result = sub_1000CE6B8(&qword_101919480);
  v28 = a4 + *(result + 36);
  *v28 = v18;
  *(v28 + 8) = v20;
  *(v28 + 16) = v22;
  *(v28 + 24) = v24;
  *(v28 + 32) = v26;
  *(v28 + 40) = 0;
  return result;
}

uint64_t sub_10030F4E8(void **a1, uint64_t a2, void *a3)
{
  v5 = *a1;
  sub_10030F5C8();
  type metadata accessor for ListCellViewModel();
  sub_10030FCF0(&qword_10190B068, &type metadata accessor for ListCellViewModel);
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;
  v7 = a3;
  v8 = v5;
  return NavigationCell.init(model:tapHandler:)();
}

uint64_t sub_10030F5C8()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  __chkstk_darwin(v2 - 8);
  v25 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000CE6B8(&unk_10190D5B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v24 - v5;
  v7 = type metadata accessor for RichTextType();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [v1 displayImage];
  if (!v12)
  {
    v13 = objc_opt_self();
    v14 = String._bridgeToObjectiveC()();
    v12 = [v13 _mapsCar_systemImageNamed:v14 pointSize:22.0];
  }

  v15 = [v1 displayText];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  if (v12)
  {
    v16 = sub_100014C84(0, &qword_10190AB90);
    v17 = sub_10027CF34();
  }

  else
  {
    v16 = 0;
    v17 = 0;
    v30 = 0;
    v31 = 0;
  }

  v28 = 0;
  v29 = v12;
  v32 = v16;
  v33 = v17;
  v26 = 0u;
  v27 = 0u;
  sub_1000CE6B8(&unk_1019157F0);
  v18 = swift_allocObject();
  v24 = xmmword_1011E1D30;
  *(v18 + 16) = xmmword_1011E1D30;
  sub_1000CE6B8(&qword_10190A070);
  type metadata accessor for RichTextViewModel();
  v19 = swift_allocObject();
  *(v19 + 16) = v24;
  (*(v8 + 104))(v11, enum case for RichTextType.title(_:), v7);
  v20 = v12;
  RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();

  (*(v8 + 8))(v11, v7);
  *(v18 + 32) = v19;
  v21 = type metadata accessor for BottomAccessoryViewModel();
  (*(*(v21 - 8) + 56))(v6, 1, 1, v21);
  UUID.init()();
  type metadata accessor for ListCellViewModel();
  swift_allocObject();
  v22 = ListCellViewModel.init(id:imageProvider:imageOverlayProvider:imagePlaceholder:title:query:richTextViews:leadingAccessory:trailingAccessory:contextLineAccessory:bottomAccessory:active:isSelected:leadingSwipeActions:trailingSwipeActions:menuActions:allowsFullSwipe:)();

  return v22;
}

void *sub_10030FA0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result reportIncidentViewController:a2 didSelectReport:a3];

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_10030FA90()
{
  ObjectType = swift_getObjectType();
  v2 = sub_1000CE6B8(&qword_101919440);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - v4;
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC4Maps31CarReportIncidentViewController__incidentLayoutItems;
  v10 = _swiftEmptyArrayStorage;
  sub_1000CE6B8(&qword_101919438);
  Published.init(initialValue:)();
  (*(v3 + 32))(&v0[v6], v5, v2);
  swift_unknownObjectWeakAssign();
  v9.receiver = v0;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, "initWithNibName:bundle:", 0, 0);
}

unint64_t sub_10030FC24()
{
  result = qword_101919488;
  if (!qword_101919488)
  {
    sub_1000D6664(&qword_101919480);
    sub_1000414C8(&qword_101919490, &qword_101919498);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101919488);
  }

  return result;
}

uint64_t sub_10030FCF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10030FD38(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_101919498);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10030FE54@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for MapsDesignAccessibilityString();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for GuidesPickerView();
  __chkstk_darwin(v7);
  v9 = (v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100206DF0(*(v1 + OBJC_IVAR____TtC4Maps35GuidesPickerContaineeViewController_viewModel), v9);
  strcpy(v6, "GuidesPicker");
  v6[13] = 0;
  *(v6 + 7) = -5120;
  (*(v4 + 104))(v6, enum case for MapsDesignAccessibilityString.view(_:), v3);
  a1[3] = sub_1000CE6B8(&qword_101919500);
  v10 = sub_100310A18(&qword_101919508, type metadata accessor for GuidesPickerView);
  v12[0] = v7;
  v12[1] = v10;
  a1[4] = swift_getOpaqueTypeConformance2();
  sub_10001A848(a1);
  View.mapsDesignAXContainer(withID:)();
  (*(v4 + 8))(v6, v3);
  return sub_10031096C(v9);
}

id sub_100310160()
{
  v1 = v0;
  v20.receiver = v0;
  v20.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v20, "viewDidLoad");
  if (![PlaceSummaryTableViewCell canBecomeFirstResponder]_0(v0))
  {
LABEL_4:
    result = [v1 cardPresentationController];
    if (result)
    {
      v4 = result;
      [result setPresentedModally:1];

      result = [v1 cardPresentationController];
      if (result)
      {
        v5 = result;
        [result setDefaultContaineeLayout:5];

        result = [v1 cardPresentationController];
        if (result)
        {
          v6 = result;
          [result setTakesAvailableHeight:1];

          result = [v1 cardPresentationController];
          if (result)
          {
            v7 = result;
            [result setHideGrabber:1];

            result = [v1 cardPresentationController];
            if (result)
            {
              v8 = result;
              [result setUseDefaultLayoutWhenCalculatingBottomInsetForFloatingControls:1];

              v9 = *&v1[OBJC_IVAR____TtC4Maps35GuidesPickerContaineeViewController_viewModel];
              v10 = OBJC_IVAR____TtC4Maps35GuidesPickerContaineeViewController_viewModel;
              v19 = OBJC_IVAR____TtC4Maps35GuidesPickerContaineeViewController_viewModel;
              swift_allocObject();
              swift_unknownObjectWeakInit();
              KeyPath = swift_getKeyPath();
              __chkstk_darwin(KeyPath);
              sub_100310A18(&qword_101912498, type metadata accessor for GuidesPickerViewModel);
              v12 = v9;

              ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

              v13 = *&v1[v10];
              swift_allocObject();
              swift_unknownObjectWeakInit();
              v14 = swift_getKeyPath();
              __chkstk_darwin(v14);
              v15 = v13;

              ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

              v16 = *&v1[v19];
              swift_allocObject();
              swift_unknownObjectWeakInit();
              v17 = swift_getKeyPath();
              __chkstk_darwin(v17);
              v18 = v16;

              ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
            }

            goto LABEL_14;
          }

LABEL_13:
          __break(1u);
LABEL_14:
          __break(1u);
          goto LABEL_15;
        }

LABEL_12:
        __break(1u);
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }

  result = [v0 cardPresentationController];
  if (result)
  {
    v3 = result;
    [result setAllowResizeInFloatingStyle:1];

    goto LABEL_4;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_100310600(uint64_t a1, SEL *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      [v5 *a2];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_100310688()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = v2;
      sub_10013D7D0();
      sub_100310A18(&unk_101919510, sub_10013D7D0);
      isa = Set._bridgeToObjectiveC()().super.isa;
      v5 = *&v1[OBJC_IVAR____TtC4Maps35GuidesPickerContaineeViewController_viewModel];
      swift_getKeyPath();
      v8 = v5;
      sub_100310A18(&qword_101912498, type metadata accessor for GuidesPickerViewModel);
      v6 = v5;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v7 = v6[OBJC_IVAR____TtC4Maps21GuidesPickerViewModel__isLibrarySelected];

      [v3 guidesPickerContaineeViewControllerConfirmationTapped:v1 forCollections:isa addToLibrary:{v7, v8}];
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_10031089C()
{
  v1 = v0 + OBJC_IVAR____TtC4Maps35GuidesPickerContaineeViewController_delegate;

  return sub_1000A09E0(v1);
}

uint64_t sub_10031096C(uint64_t a1)
{
  v2 = type metadata accessor for GuidesPickerView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100310A18(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_100310A60(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v8 = OBJC_IVAR____TtC4Maps35GuidesPickerContaineeViewController_collectionSession;
  *&v4[OBJC_IVAR____TtC4Maps35GuidesPickerContaineeViewController_collectionSession] = 0;
  swift_unknownObjectWeakInit();
  v9 = *&v4[v8];
  *&v4[v8] = a1;
  v10 = a1;

  swift_unknownObjectWeakAssign();
  objc_allocWithZone(type metadata accessor for GuidesPickerViewModel());
  v11 = v10;
  v12 = sub_10030DE2C(a1, a3);

  *&v4[OBJC_IVAR____TtC4Maps35GuidesPickerContaineeViewController_viewModel] = v12;
  v14.receiver = v4;
  v14.super_class = ObjectType;
  return objc_msgSendSuper2(&v14, "initWithNibName:bundle:", 0, 0);
}

uint64_t sub_100310DE4(uint64_t result, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC4Maps23InfoCardFixedHeaderView_title);
  v4 = *(v2 + OBJC_IVAR____TtC4Maps23InfoCardFixedHeaderView_title);
  v5 = *(v2 + OBJC_IVAR____TtC4Maps23InfoCardFixedHeaderView_title + 8);
  *v3 = result;
  v3[1] = a2;
  if (a2)
  {
    if (v5)
    {
      v6 = v4 == result && v5 == a2;
      if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_11;
      }
    }
  }

  else if (!v5)
  {
    return result;
  }

  sub_100310E64();
LABEL_11:
}

uint64_t sub_100310E64()
{
  v1 = type metadata accessor for CardHeaderSize();
  v62 = *(v1 - 8);
  v63 = v1;
  __chkstk_darwin(v1);
  v61 = &v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000CE6B8(&unk_101910FC0);
  __chkstk_darwin(v3 - 8);
  v55 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v52 = &v52 - v6;
  __chkstk_darwin(v7);
  v9 = &v52 - v8;
  v10 = type metadata accessor for CardHeaderTextViewModel();
  __chkstk_darwin(v10 - 8);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for CenteredCardHeaderNavigationViewModel();
  v56 = *(v60 - 8);
  __chkstk_darwin(v60);
  v59 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v58 = &v52 - v15;
  v16 = type metadata accessor for CardButtonViewModel();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v52 - v21;
  if (*(v0 + OBJC_IVAR____TtC4Maps23InfoCardFixedHeaderView_title + 8))
  {
    v23 = *(v0 + OBJC_IVAR____TtC4Maps23InfoCardFixedHeaderView_title);
    v53 = *(v0 + OBJC_IVAR____TtC4Maps23InfoCardFixedHeaderView_title + 8);
    v54 = v23;
  }

  else
  {
    v53 = 0xE000000000000000;
    v54 = 0;
  }

  v57 = v12;
  v24 = OBJC_IVAR____TtC4Maps23InfoCardFixedHeaderView_buttonConfiguration;
  v25 = *(v0 + OBJC_IVAR____TtC4Maps23InfoCardFixedHeaderView_buttonConfiguration);
  v26 = *(v25 + OBJC_IVAR____TtC4Maps42InfoCardFixedHeaderViewButtonConfiguration_leadingCardButtonType);
  v64 = v0;
  if (v26)
  {
    swift_allocObject();
    swift_unknownObjectWeakInit();

    static CardButtonViewModel.share(tintColor:enabled:action:)();

    v27 = sub_100358170(0, 1, 1, _swiftEmptyArrayStorage);
    v29 = v27[2];
    v28 = v27[3];
    if (v29 >= v28 >> 1)
    {
      v27 = sub_100358170(v28 > 1, v29 + 1, 1, v27);
    }

    v27[2] = v29 + 1;
    (*(v17 + 32))(v27 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v29, v22, v16);
    v25 = *(v64 + v24);
  }

  else
  {
  }

  if (*(v25 + OBJC_IVAR____TtC4Maps42InfoCardFixedHeaderViewButtonConfiguration_trailingCardButtonType))
  {
    swift_allocObject();
    swift_unknownObjectWeakInit();

    static CardButtonViewModel.close(tintColor:enabled:action:)();

    v30 = sub_100358170(0, 1, 1, _swiftEmptyArrayStorage);
    v32 = v30[2];
    v31 = v30[3];
    if (v32 >= v31 >> 1)
    {
      v30 = sub_100358170(v31 > 1, v32 + 1, 1, v30);
    }

    v30[2] = v32 + 1;
    (*(v17 + 32))(v30 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v32, v19, v16);
  }

  v33 = enum case for MapsDesignAccessibilityString.titleLabel(_:);
  v34 = type metadata accessor for MapsDesignAccessibilityString();
  v35 = *(v34 - 8);
  v36 = *(v35 + 104);
  v36(v9, v33, v34);
  v37 = *(v35 + 56);
  v37(v9, 0, 1, v34);
  v38 = v52;
  v36(v52, enum case for MapsDesignAccessibilityString.subtitleLabel(_:), v34);
  v37(v38, 0, 1, v34);
  v39 = v55;
  v36(v55, enum case for MapsDesignAccessibilityString.tertiaryLabel(_:), v34);
  v37(v39, 0, 1, v34);
  static HorizontalAlignment.center.getter();
  CardHeaderTextViewModel.init(title:titleAXID:subtitle:subtitleAXID:interactiveSubtitle:interactiveSubtitleAXID:alignment:interactiveTitleTapHandler:interactiveSubtitleTapHandler:)();
  v40 = v64;
  v41 = OBJC_IVAR____TtC4Maps23InfoCardFixedHeaderView_hideActionButtons;
  if (*(v64 + OBJC_IVAR____TtC4Maps23InfoCardFixedHeaderView_hideActionButtons) == 1)
  {

    if (*(v40 + v41) == 1)
    {
    }
  }

  (*(v62 + 104))(v61, enum case for CardHeaderSize.medium(_:), v63);
  v42 = v58;
  CenteredCardHeaderNavigationViewModel.init(textViewModel:visible:leadingButtons:trailingButtons:size:)();
  v43 = *(v64 + OBJC_IVAR____TtC4Maps23InfoCardFixedHeaderView_contentView);
  v44 = v56;
  v46 = v59;
  v45 = v60;
  (*(v56 + 16))(v59, v42, v60);
  v47 = OBJC_IVAR____TtC4Maps32CenteredCardHeaderNavigationView_viewModel;
  swift_beginAccess();
  v48 = *(v44 + 24);
  v49 = v43;
  v48(&v43[v47], v46, v45);
  swift_endAccess();
  sub_10024FC6C();

  v50 = *(v44 + 8);
  v50(v46, v45);
  return (v50)(v42, v45);
}

void sub_100311688(_BYTE *a1, uint64_t a2, int a3, void *a4)
{
  v5 = a1[*a4];
  a1[*a4] = a3;
  if (v5 != a3)
  {
    v6 = a1;
    sub_100310E64();
  }
}

id sub_1003116E8(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  v10 = &v4[OBJC_IVAR____TtC4Maps23InfoCardFixedHeaderView_title];
  v11 = type metadata accessor for InfoCardFixedHeaderViewButtonConfiguration();
  *v10 = 0;
  v10[1] = 0;
  v12 = [objc_allocWithZone(v11) init];
  *&v4[OBJC_IVAR____TtC4Maps23InfoCardFixedHeaderView_buttonConfiguration] = v12;
  v4[OBJC_IVAR____TtC4Maps23InfoCardFixedHeaderView_showTitle] = 0;
  v4[OBJC_IVAR____TtC4Maps23InfoCardFixedHeaderView_hideActionButtons] = 0;
  v13 = [objc_allocWithZone(UITapGestureRecognizer) init];
  *&v4[OBJC_IVAR____TtC4Maps23InfoCardFixedHeaderView_tapGestureRecognizer] = v13;
  *&v4[OBJC_IVAR____TtC4Maps23InfoCardFixedHeaderView_contentView] = [objc_allocWithZone(type metadata accessor for CenteredCardHeaderNavigationView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v16.receiver = v4;
  v16.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v16, "initWithFrame:", a1, a2, a3, a4);
  sub_10031182C();
  sub_100310E64();

  return v14;
}

id sub_10031182C()
{
  v1 = OBJC_IVAR____TtC4Maps23InfoCardFixedHeaderView_contentView;
  [v0 addSubview:*&v0[OBJC_IVAR____TtC4Maps23InfoCardFixedHeaderView_contentView]];
  [*&v0[v1] setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = objc_opt_self();
  sub_1000CE6B8(&qword_101908400);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1011E5C00;
  v4 = [*&v0[v1] topAnchor];
  v5 = [v0 topAnchor];
  v6 = [v4 constraintEqualToAnchor:v5];

  *(v3 + 32) = v6;
  v7 = [*&v0[v1] leadingAnchor];
  v8 = [v0 leadingAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];

  *(v3 + 40) = v9;
  v10 = [*&v0[v1] trailingAnchor];
  v11 = [v0 trailingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  *(v3 + 48) = v12;
  v13 = [*&v0[v1] bottomAnchor];
  v14 = [v0 bottomAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  *(v3 + 56) = v15;
  sub_10009B534();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 activateConstraints:isa];

  v17 = *&v0[OBJC_IVAR____TtC4Maps23InfoCardFixedHeaderView_tapGestureRecognizer];
  [v17 addTarget:v0 action:"handleTapWithGestureRecognizer:"];
  [v17 setDelegate:v0];

  return [v0 addGestureRecognizer:v17];
}

void sub_100311BEC(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      [v6 fixedHeaderViewWithHeaderView:v5 didSelect:*(*&v5[OBJC_IVAR____TtC4Maps23InfoCardFixedHeaderView_buttonConfiguration] + *a3)];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_100311DA4(uint64_t a1)
{
  v2 = sub_1000CE6B8(&qword_1019197C8);
  __chkstk_darwin(v2 - 8);
  sub_1000D2DFC(a1, &v5 - v3, &qword_1019197C8);
  return EnvironmentValues.backgroundMaterial.setter();
}

uint64_t sub_100311E4C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000CE6B8(&qword_1019195C8);
  __chkstk_darwin(v4);
  v6 = &v13 - v5;
  *v6 = static HorizontalAlignment.center.getter();
  *(v6 + 1) = 0;
  v6[16] = 0;
  v7 = sub_1000CE6B8(&qword_101919610);
  sub_10031208C(a1, &v6[*(v7 + 44)]);
  v8 = &v6[*(sub_1000CE6B8(&qword_1019195E0) + 36)];
  *v8 = 0xD000000000000013;
  *(v8 + 1) = 0x800000010122DF50;
  v8[16] = 13;
  v9 = &v6[*(v4 + 36)];
  sub_10031505C(a1, v9);
  *(v9 + *(sub_1000CE6B8(&qword_101919600) + 36)) = 1;
  sub_1000CE6B8(&qword_10190A5F0);
  type metadata accessor for ToolbarPlacement();
  *(swift_allocObject() + 16) = xmmword_1011E1D30;
  static ToolbarPlacement.navigationBar.getter();
  sub_100315CAC();
  View.toolbarVisibility(_:for:)();

  sub_100024F64(v6, &qword_1019195C8);
  LOBYTE(v4) = static Edge.Set.bottom.getter();
  v10 = static SafeAreaRegions.all.getter();
  result = sub_1000CE6B8(&qword_1019195B8);
  v12 = a2 + *(result + 36);
  *v12 = v10;
  *(v12 + 8) = v4;
  return result;
}

uint64_t sub_10031208C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v67 = sub_1000CE6B8(&qword_101919638);
  __chkstk_darwin(v67);
  v63 = &v49 - v3;
  v4 = type metadata accessor for ContentMarginPlacement();
  v58 = *(v4 - 8);
  v59 = v4;
  __chkstk_darwin(v4);
  v57 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ListSectionSpacing();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1000CE6B8(&qword_101919640);
  __chkstk_darwin(v55);
  v11 = &v49 - v10;
  v12 = sub_1000CE6B8(&qword_101919648);
  v61 = *(v12 - 8);
  v62 = v12;
  __chkstk_darwin(v12);
  v56 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v60 = &v49 - v15;
  v65 = sub_1000CE6B8(&qword_101919650);
  __chkstk_darwin(v65);
  v66 = &v49 - v16;
  v17 = sub_1000CE6B8(&qword_10190CC68);
  __chkstk_darwin(v17 - 8);
  v53 = &v49 - v18;
  v19 = type metadata accessor for EmptyStateViewModel.Icon();
  v50 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = (&v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = type metadata accessor for EmptyStateViewModel();
  __chkstk_darwin(v22 - 8);
  v51 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for EmptyStateView();
  v54 = *(v64 - 8);
  __chkstk_darwin(v64);
  v52 = &v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *a1;
  swift_getKeyPath();
  v69 = v25;
  sub_100316B18(&qword_10191AAE0, type metadata accessor for VisitLocationCorrectionViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v27 = *(v25 + 72);
  if (!v27)
  {
    goto LABEL_4;
  }

  if (v27 >> 62)
  {
    v26 = _CocoaArrayWrapper.endIndex.getter();
    if (v26)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v26 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v26)
    {
LABEL_4:
      __chkstk_darwin(v26);
      sub_1000CE6B8(&qword_101919658);
      v54 = &protocol conformance descriptor for TupleView<A>;
      sub_1000414C8(&qword_101919660, &qword_101919658);
      List<>.init(content:)();
      static ListSectionSpacing.custom(_:)();
      v28 = *(sub_1000CE6B8(&qword_101919668) + 36);
      (*(v7 + 16))(&v11[v28], v9, v6);
      v29 = *(v7 + 56);
      v29(&v11[v28], 0, 1, v6);
      KeyPath = swift_getKeyPath();
      v31 = &v11[*(v55 + 36)];
      v32 = *(sub_1000CE6B8(&qword_10190CD00) + 28);
      (*(v7 + 32))(v31 + v32, v9, v6);
      v29(v31 + v32, 0, 1, v6);
      *v31 = KeyPath;
      static Edge.Set.top.getter();
      static MapsDesignConstants.Spacing.listTopPadding.getter();
      v33 = v57;
      static ContentMarginPlacement.automatic.getter();
      sub_100315E50();
      v34 = v60;
      View.contentMargins(_:_:for:)();
      (*(v58 + 8))(v33, v59);
      sub_100024F64(v11, &qword_101919640);
      v36 = v61;
      v35 = v62;
      v37 = *(v61 + 16);
      v38 = v56;
      v37(v56, v34, v62);
      v39 = v63;
      v37(v63, v38, v35);
      v40 = v39 + *(sub_1000CE6B8(&qword_101919690) + 48);
      *v40 = 0;
      *(v40 + 8) = 1;
      v41 = *(v36 + 8);
      v41(v38, v35);
      sub_1000D2DFC(v39, v66, &qword_101919638);
      swift_storeEnumTagMultiPayload();
      sub_100316B18(&qword_10190CDC0, &type metadata accessor for EmptyStateView);
      sub_1000414C8(&qword_101919698, &qword_101919638);
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v39, &qword_101919638);
      return (v41)(v34, v35);
    }
  }

  *v21 = 0xD00000000000001BLL;
  v21[1] = 0x800000010122DF70;
  (*(v50 + 104))(v21, enum case for EmptyStateViewModel.Icon.privateSystemIcon(_:), v19);
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v70._object = 0x800000010122DFE0;
  v43._countAndFlagsBits = 0xD00000000000002BLL;
  v43._object = 0x800000010122DF90;
  v44._object = 0x800000010122DFC0;
  v70._countAndFlagsBits = 0xD000000000000067;
  v44._countAndFlagsBits = 0xD000000000000010;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v43, 0, qword_1019600D8, v44, v70);
  v45 = type metadata accessor for EmptyStateViewModel.ButtonConfig();
  (*(*(v45 - 8) + 56))(v53, 1, 1, v45);
  EmptyStateViewModel.init(icon:title:details:button:)();
  v46 = v52;
  EmptyStateView.init(model:)();
  v47 = v54;
  v48 = v64;
  (v54)[2](v66, v46, v64);
  swift_storeEnumTagMultiPayload();
  sub_100316B18(&qword_10190CDC0, &type metadata accessor for EmptyStateView);
  sub_1000414C8(&qword_101919698, &qword_101919638);
  _ConditionalContent<>.init(storage:)();
  return (v47[1])(v46, v48);
}

uint64_t sub_100312B08@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v54 = a2;
  v47 = sub_1000CE6B8(&qword_1019196A0);
  __chkstk_darwin(v47);
  v45 = v44 - v3;
  v4 = sub_1000CE6B8(&qword_1019196A8);
  v51 = *(v4 - 8);
  v52 = v4;
  __chkstk_darwin(v4);
  v46 = v44 - v5;
  v6 = sub_1000CE6B8(&qword_1019196B0);
  __chkstk_darwin(v6 - 8);
  v53 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v50 = v44 - v9;
  v10 = sub_1000CE6B8(&qword_1019196B8);
  __chkstk_darwin(v10);
  v12 = v44 - v11;
  v13 = sub_1000CE6B8(&qword_1019196C0);
  v48 = *(v13 - 8);
  v49 = v13;
  __chkstk_darwin(v13);
  v15 = v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v44 - v17;
  v55 = a1;
  *v12 = static HorizontalAlignment.leading.getter();
  *(v12 + 1) = 0;
  v19 = 1;
  v12[16] = 1;
  v20 = sub_1000CE6B8(&qword_1019196C8);
  sub_100313A1C(a1, &v12[*(v20 + 44)]);
  v21 = &v12[*(sub_1000CE6B8(&qword_1019196D0) + 36)];
  *v21 = 0;
  *(v21 + 1) = 0;
  *(v21 + 2) = 0;
  *(v21 + 3) = 0x4030000000000000;
  v21[32] = 0;
  v22 = &v12[*(v10 + 36)];
  *v22 = 0xD00000000000001ELL;
  *(v22 + 1) = 0x800000010122E050;
  v22[16] = 9;
  sub_1000CE6B8(&qword_1019196D8);
  sub_100315FF4();
  sub_100316164();
  Section<>.init(header:content:)();
  v23 = *a1;
  swift_getKeyPath();
  v56 = v23;
  sub_100316B18(&qword_10191AAE0, type metadata accessor for VisitLocationCorrectionViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v24 = *(v23 + 72);
  if (!v24)
  {
    goto LABEL_6;
  }

  if (v24 >> 62)
  {
    v25 = _CocoaArrayWrapper.endIndex.getter();
    if (v25)
    {
      goto LABEL_4;
    }

LABEL_6:
    v33 = v52;
    v35 = v50;
    goto LABEL_7;
  }

  v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v25)
  {
    goto LABEL_6;
  }

LABEL_4:
  v44[1] = v44;
  __chkstk_darwin(v25);
  v44[-2] = a1;
  sub_100314B94(v45);
  v44[0] = sub_1000CE6B8(&qword_101919740);
  v26 = type metadata accessor for GridButton();
  v27 = sub_1000D6664(&qword_101919748);
  v28 = sub_100316B18(&qword_10190A3F8, &type metadata accessor for GridButton);
  v29 = sub_1000E5580();
  v30 = sub_1000414C8(&qword_101919750, &qword_101919748);
  v56 = v26;
  v57 = &type metadata for String;
  v58 = v27;
  v59 = v28;
  v60 = v29;
  v61 = v30;
  swift_getOpaqueTypeConformance2();
  sub_1003163A8();
  v31 = v46;
  Section<>.init(footer:content:)();
  v56 = static Color.clear.getter();
  v32 = AnyView.init<A>(_:)();
  v33 = v52;
  *&v31[*(v52 + 36)] = v32;
  v34 = v31;
  v35 = v50;
  sub_1000F11C4(v34, v50, &qword_1019196A8);
  v19 = 0;
LABEL_7:
  (*(v51 + 56))(v35, v19, 1, v33);
  v36 = v48;
  v37 = v49;
  v38 = *(v48 + 16);
  v38(v15, v18, v49);
  v39 = v53;
  sub_1000D2DFC(v35, v53, &qword_1019196B0);
  v40 = v54;
  v38(v54, v15, v37);
  v41 = sub_1000CE6B8(&qword_1019197C0);
  sub_1000D2DFC(v39, &v40[*(v41 + 48)], &qword_1019196B0);
  sub_100024F64(v35, &qword_1019196B0);
  v42 = *(v36 + 8);
  v42(v18, v37);
  sub_100024F64(v39, &qword_1019196B0);
  return (v42)(v15, v37);
}

uint64_t sub_1003131EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v37 = type metadata accessor for InlinePickerStyle();
  v45 = *(v37 - 8);
  __chkstk_darwin(v37);
  v42 = v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1000CE6B8(&qword_101919730);
  v40 = *(v43 - 8);
  __chkstk_darwin(v43);
  v38 = v36 - v4;
  v44 = sub_1000CE6B8(&qword_101919728);
  v41 = *(v44 - 8);
  __chkstk_darwin(v44);
  v39 = v36 - v5;
  v49 = sub_1000CE6B8(&qword_101919720);
  __chkstk_darwin(v49);
  v7 = v36 - v6;
  v47 = sub_1000CE6B8(&qword_1019197D8);
  __chkstk_darwin(v47);
  v48 = v36 - v8;
  v9 = sub_1000CE6B8(&qword_10191D860);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v36 - v14;
  v46 = sub_1000CE6B8(&qword_101919710);
  __chkstk_darwin(v46);
  v17 = v36 - v16;
  v18 = *a1;
  swift_getKeyPath();
  v51 = v18;
  sub_100316B18(&qword_10191AAE0, type metadata accessor for VisitLocationCorrectionViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v18 + 72))
  {

    v36[1] = LocalizedStringKey.init(stringLiteral:)();
    v36[0] = v19;
    v55 = *(a1 + 1);
    sub_1000CE6B8(&qword_101919628);
    v20 = State.projectedValue.getter();
    __chkstk_darwin(v20);
    sub_1000CE6B8(&qword_101919618);
    sub_1000CE6B8(&qword_1019197E0);
    sub_100316850();
    v21 = v37;
    sub_100316904();
    v22 = v38;
    Picker<>.init(_:selection:content:)();

    v23 = v42;
    InlinePickerStyle.init()();
    v24 = sub_1000414C8(&qword_101919738, &qword_101919730);
    v25 = v39;
    v26 = v43;
    View.pickerStyle<A>(_:)();
    (*(v45 + 8))(v23, v21);
    (*(v40 + 8))(v22, v26);
    v51 = v26;
    v52 = v21;
    v53 = v24;
    v54 = &protocol witness table for InlinePickerStyle;
    swift_getOpaqueTypeConformance2();
    v27 = v44;
    View.labelsHidden()();
    (*(v41 + 8))(v25, v27);
    v28 = v48;
    v29 = &v7[*(v49 + 36)];
    *v29 = 0;
    *(v29 + 1) = 0;
    *(v29 + 2) = 0;
    *(v29 + 3) = 0x4030000000000000;
    v29[32] = 0;
    sub_1000D2DFC(v7, v28, &qword_101919720);
    swift_storeEnumTagMultiPayload();
    sub_1000414C8(&qword_101919708, &qword_101919710);
    sub_10031621C();
    _ConditionalContent<>.init(storage:)();
    return sub_100024F64(v7, &qword_101919720);
  }

  else
  {
    *v17 = static VerticalAlignment.center.getter();
    *(v17 + 1) = 0;
    v17[16] = 1;
    v31 = &v17[*(sub_1000CE6B8(&qword_101919818) + 44)];
    ProgressView<>.init<>()();
    v32 = *(v10 + 16);
    v32(v12, v15, v9);
    *v31 = 0;
    v31[8] = 1;
    v33 = sub_1000CE6B8(&qword_10190A408);
    v32(&v31[*(v33 + 48)], v12, v9);
    v34 = &v31[*(v33 + 64)];
    *v34 = 0;
    v34[8] = 1;
    v35 = *(v10 + 8);
    v35(v15, v9);
    v35(v12, v9);
    sub_1000D2DFC(v17, v48, &qword_101919710);
    swift_storeEnumTagMultiPayload();
    sub_1000414C8(&qword_101919708, &qword_101919710);
    sub_10031621C();
    _ConditionalContent<>.init(storage:)();
    return sub_100316AB0(v17);
  }
}

uint64_t sub_100313A1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SectionHeaderViewModel.Size();
  v32 = *(v4 - 8);
  v33 = v4;
  __chkstk_darwin(v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000CE6B8(&qword_10190B038);
  __chkstk_darwin(v7 - 8);
  v9 = &v28 - v8;
  v10 = type metadata accessor for SectionHeaderViewModel();
  __chkstk_darwin(v10 - 8);
  v31 = type metadata accessor for SectionHeader();
  v11 = *(v31 - 8);
  v12 = __chkstk_darwin(v31);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [*(*(*a1 + 16) + 16) name];
  p_cache = &OBJC_METACLASS___MapsAppTestTileData.cache;
  if (v15)
  {
    v30 = a2;
    v17 = v15;
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = qword_101906768;

    if (v20 != -1)
    {
      swift_once();
    }

    v34._object = 0x800000010122E430;
    v21._countAndFlagsBits = 0x3F402520746F4ELL;
    v22._countAndFlagsBits = 0xD00000000000002ELL;
    v22._object = 0x800000010122E400;
    v34._countAndFlagsBits = 0xD000000000000059;
    v21._object = 0xE700000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v22, 0, qword_1019600D8, v21, v34);
    sub_1000CE6B8(&unk_10190D5C0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1011E1D30;
    *(v23 + 56) = &type metadata for String;
    *(v23 + 64) = sub_1000DA61C();
    *(v23 + 32) = v29;
    *(v23 + 40) = v19;

    String.init(format:_:)();
    swift_bridgeObjectRelease_n();

    a2 = v30;
    p_cache = (&OBJC_METACLASS___MapsAppTestTileData + 16);
  }

  if (p_cache[237] != -1)
  {
    swift_once();
  }

  v35._object = 0x800000010122E3A0;
  v24._countAndFlagsBits = 0xD000000000000030;
  v24._object = 0x800000010122E340;
  v25._object = 0x800000010122E380;
  v35._countAndFlagsBits = 0xD000000000000053;
  v25._countAndFlagsBits = 0xD000000000000016;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v24, 0, qword_1019600D8, v25, v35);
  v26 = type metadata accessor for SectionHeaderViewModel.ActionType();
  (*(*(v26 - 8) + 56))(v9, 1, 1, v26);
  (*(v32 + 104))(v6, enum case for SectionHeaderViewModel.Size.large(_:), v33);
  SectionHeaderViewModel.init(title:subtitle:size:symbol:action:)();
  SectionHeader.init(model:)();
  return (*(v11 + 32))(a2, v14, v31);
}

uint64_t sub_100313EA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v28 = type metadata accessor for UUID();
  v3 = *(v28 - 1);
  __chkstk_darwin(v28);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for GridButtonViewModel.ButtonProminence();
  v6 = *(v26 - 8);
  __chkstk_darwin(v26);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for GridButtonViewModel.ButtonMetrics();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for GridButton();
  v29 = *(v13 - 8);
  v30 = v13;
  __chkstk_darwin(v13);
  v32 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v27.super.isa = qword_1019600D8;
  v39._object = 0x800000010122E160;
  v15._countAndFlagsBits = 0xD00000000000002CLL;
  v15._object = 0x800000010122E110;
  v16._object = 0x800000010122E140;
  v39._countAndFlagsBits = 0xD000000000000048;
  v16._countAndFlagsBits = 0xD000000000000011;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, qword_1019600D8, v16, v39);
  (*(v10 + 104))(v12, enum case for GridButtonViewModel.ButtonMetrics.large(_:), v9);
  (*(v6 + 104))(v8, enum case for GridButtonViewModel.ButtonProminence.secondary(_:), v26);
  UUID.init()();
  UUID.uuidString.getter();
  (*(v3 + 8))(v5, v28);
  static Color.blue.getter();
  type metadata accessor for GridButtonViewModel();
  swift_allocObject();
  GridButtonViewModel.init(id:title:subtitle:icon:metrics:style:compact:color:progress:leadingIcon:lineLimit:)();
  v17 = *(a1 + 8);
  v37 = *(a1 + 16);
  v38 = v17;
  v36 = *(a1 + 24);
  v18 = swift_allocObject();
  v19 = *(a1 + 16);
  *(v18 + 16) = *a1;
  *(v18 + 32) = v19;
  *(v18 + 48) = *(a1 + 32);

  sub_1000D2DFC(&v38, &v33, &qword_101919618);
  sub_1000D2DFC(&v37, &v33, &qword_101919620);
  sub_1000D2DFC(&v36, &v33, &qword_10190A140);
  GridButton.init(model:tapHandler:)();
  v40._object = 0x800000010122E220;
  v20._countAndFlagsBits = 0xD00000000000002ALL;
  v20._object = 0x800000010122E1B0;
  v21._countAndFlagsBits = 0xD00000000000003CLL;
  v21._object = 0x800000010122E1E0;
  v40._countAndFlagsBits = 0xD00000000000005DLL;
  v35 = NSLocalizedString(_:tableName:bundle:value:comment:)(v20, 0, v27, v21, v40);
  v34 = v36;
  sub_1000CE6B8(&qword_10190A140);
  v22 = State.projectedValue.getter();
  v28 = &v26;
  __chkstk_darwin(v22);
  sub_1000CE6B8(&qword_101919748);
  sub_100316B18(&qword_10190A3F8, &type metadata accessor for GridButton);
  sub_1000E5580();
  sub_1000414C8(&qword_101919750, &qword_101919748);
  v23 = v30;
  v24 = v32;
  View.confirmationDialog<A, B>(_:isPresented:titleVisibility:actions:)();

  return (*(v29 + 8))(v24, v23);
}

void sub_1003144FC(uint64_t a1)
{
  if (*(*(*a1 + 16) + 24))
  {
    sub_1000CE6B8(&qword_10190A140);
    State.wrappedValue.setter();
  }

  else
  {
    sub_10034E1BC();
  }
}

uint64_t sub_10031456C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v31 = a2;
  v3 = sub_1000CE6B8(&qword_1019191F8);
  __chkstk_darwin(v3 - 8);
  v5 = &v30 - v4;
  v6 = sub_1000CE6B8(&qword_10191D8F0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v30 - v11;
  __chkstk_darwin(v13);
  v15 = &v30 - v14;
  __chkstk_darwin(v16);
  v18 = &v30 - v17;
  static ButtonRole.destructive.getter();
  v19 = type metadata accessor for ButtonRole();
  (*(*(v19 - 8) + 56))(v5, 0, 1, v19);
  v20 = *(a1 + 8);
  v36 = *(a1 + 16);
  v37 = v20;
  v35 = *(a1 + 24);
  v21 = swift_allocObject();
  v22 = *(a1 + 16);
  *(v21 + 16) = *a1;
  *(v21 + 32) = v22;
  *(v21 + 48) = *(a1 + 32);
  v33 = a1;

  sub_1000D2DFC(&v37, v34, &qword_101919618);
  sub_1000D2DFC(&v36, v34, &qword_101919620);
  sub_1000D2DFC(&v35, v34, &qword_10190A140);
  Button.init(role:action:label:)();
  v23 = swift_allocObject();
  v24 = *(a1 + 16);
  *(v23 + 16) = *a1;
  *(v23 + 32) = v24;
  *(v23 + 48) = *(a1 + 32);
  v32 = a1;

  sub_1000D2DFC(&v37, v34, &qword_101919618);
  sub_1000D2DFC(&v36, v34, &qword_101919620);
  sub_1000D2DFC(&v35, v34, &qword_10190A140);
  Button.init(action:label:)();
  v25 = *(v7 + 16);
  v25(v12, v18, v6);
  v25(v9, v15, v6);
  v26 = v31;
  v25(v31, v12, v6);
  v27 = sub_1000CE6B8(&qword_1019197D0);
  v25(&v26[*(v27 + 48)], v9, v6);
  v28 = *(v7 + 8);
  v28(v15, v6);
  v28(v18, v6);
  v28(v9, v6);
  return (v28)(v12, v6);
}

uint64_t sub_1003149C0@<X0>(uint64_t a1@<X8>)
{
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v8._object = 0x800000010122E2B0;
  v2._countAndFlagsBits = 0x562065766F6D6552;
  v2._object = 0xEC00000074697369;
  v3._object = 0x800000010122E310;
  v8._countAndFlagsBits = 0xD00000000000005ELL;
  v3._countAndFlagsBits = 0xD000000000000027;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, qword_1019600D8, v2, v8);
  sub_1000E5580();
  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

uint64_t sub_100314AAC@<X0>(uint64_t a1@<X8>)
{
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v8._object = 0x800000010122E2B0;
  v2._countAndFlagsBits = 0x736956207065654BLL;
  v3._object = 0x800000010122E280;
  v8._countAndFlagsBits = 0xD00000000000005ELL;
  v3._countAndFlagsBits = 0xD000000000000025;
  v2._object = 0xEA00000000007469;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, qword_1019600D8, v2, v8);
  sub_1000E5580();
  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

uint64_t sub_100314B94@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v33 = sub_1000CE6B8(&qword_101919788);
  __chkstk_darwin(v33);
  v2 = &v33 - v1;
  v34 = sub_1000CE6B8(&qword_101919778);
  __chkstk_darwin(v34);
  v35 = &v33 - v3;
  v37 = sub_1000CE6B8(&qword_101919768);
  __chkstk_darwin(v37);
  v36 = &v33 - v4;
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v46._object = 0x800000010122E0E0;
  v5._countAndFlagsBits = 0xD00000000000003BLL;
  v5._object = 0x800000010122E070;
  v6._countAndFlagsBits = 0xD000000000000021;
  v6._object = 0x800000010122E0B0;
  v46._countAndFlagsBits = 0xD000000000000020;
  v39 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, qword_1019600D8, v6, v46);
  sub_1000E5580();
  v7 = Text.init<A>(_:)();
  v9 = v8;
  v11 = v10;
  static Font.footnote.getter();
  v12 = Text.font(_:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;

  sub_1000F0A40(v7, v9, v11 & 1);

  KeyPath = swift_getKeyPath();
  v39._countAndFlagsBits = v12;
  v39._object = v14;
  v16 &= 1u;
  LOBYTE(v40._countAndFlagsBits) = v16;
  v40._object = v18;
  v41._countAndFlagsBits = KeyPath;
  LOBYTE(v41._object) = 1;
  static Font.Weight.regular.getter();
  sub_1000CE6B8(&unk_10191D910);
  sub_100316728();
  View.fontWeight(_:)();
  sub_1000F0A40(v12, v14, v16);

  v20 = static Color.secondary.getter();
  *&v2[*(sub_1000CE6B8(&qword_101919798) + 36)] = v20;
  v21 = swift_getKeyPath();
  v22 = &v2[*(v33 + 36)];
  v23 = *(sub_1000CE6B8(&qword_1019197B8) + 28);
  static Material.regular.getter();
  v24 = type metadata accessor for Material();
  (*(*(v24 - 8) + 56))(v22 + v23, 0, 1, v24);
  *v22 = v21;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v25 = v35;
  sub_1000F11C4(v2, v35, &qword_101919788);
  v26 = (v25 + *(v34 + 36));
  v27 = v44;
  v26[4] = v43;
  v26[5] = v27;
  v26[6] = v45;
  v28 = v40;
  *v26 = v39;
  v26[1] = v28;
  v29 = v42;
  v26[2] = v41;
  v26[3] = v29;
  LOBYTE(v21) = static Edge.Set.all.getter();
  v30 = v36;
  sub_1000F11C4(v25, v36, &qword_101919778);
  v31 = v30 + *(v37 + 36);
  *v31 = v21;
  *(v31 + 8) = xmmword_1011FA2B0;
  *(v31 + 24) = xmmword_1011FA2C0;
  *(v31 + 40) = 0;
  sub_100316464();
  View.accessibilityIdentifier(_:)();
  return sub_100024F64(v30, &qword_101919768);
}

uint64_t sub_10031505C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = type metadata accessor for CardHeaderSize();
  v50 = *(v3 - 8);
  v51 = v3;
  __chkstk_darwin(v3);
  v49 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000CE6B8(&unk_101910FC0);
  __chkstk_darwin(v5 - 8);
  v7 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v42 - v9;
  __chkstk_darwin(v11);
  v13 = v42 - v12;
  v14 = type metadata accessor for CardHeaderTextViewModel();
  __chkstk_darwin(v14 - 8);
  v16 = v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for CenteredCardHeaderNavigationViewModel();
  __chkstk_darwin(v17 - 8);
  v45 = v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for CenteredCardHeaderNavigation();
  v46 = *(v19 - 8);
  v47 = v19;
  __chkstk_darwin(v19);
  v44 = v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v58._object = 0x800000010121C770;
  v21._countAndFlagsBits = 0x6F4C20676E6F7257;
  v21._object = 0xEE006E6F69746163;
  v22._countAndFlagsBits = 0xD00000000000001FLL;
  v22._object = 0x800000010121C750;
  v58._countAndFlagsBits = 0xD00000000000003BLL;
  v23 = NSLocalizedString(_:tableName:bundle:value:comment:)(v22, 0, qword_1019600D8, v21, v58);
  v42[1] = v23._object;
  *&v43 = v23._countAndFlagsBits;
  v24 = enum case for MapsDesignAccessibilityString.titleLabel(_:);
  v25 = type metadata accessor for MapsDesignAccessibilityString();
  v26 = *(v25 - 8);
  v27 = *(v26 + 104);
  v27(v13, v24, v25);
  v28 = *(v26 + 56);
  v28(v13, 0, 1, v25);
  v27(v10, enum case for MapsDesignAccessibilityString.subtitleLabel(_:), v25);
  v28(v10, 0, 1, v25);
  v27(v7, enum case for MapsDesignAccessibilityString.tertiaryLabel(_:), v25);
  v28(v7, 0, 1, v25);
  static HorizontalAlignment.center.getter();
  v48 = v16;
  CardHeaderTextViewModel.init(title:titleAXID:subtitle:subtitleAXID:interactiveSubtitle:interactiveSubtitleAXID:alignment:interactiveTitleTapHandler:interactiveSubtitleTapHandler:)();
  sub_1000CE6B8(&qword_10191D770);
  type metadata accessor for CardButtonViewModel();
  v29 = swift_allocObject();
  v43 = xmmword_1011E1D30;
  *(v29 + 16) = xmmword_1011E1D30;
  v30 = *(a1 + 8);
  v56 = *(a1 + 16);
  v31 = v56;
  v57[0] = v30;
  v55 = *(a1 + 24);
  v32 = swift_allocObject();
  v33 = *(a1 + 16);
  *(v32 + 16) = *a1;
  *(v32 + 32) = v33;
  *(v32 + 48) = *(a1 + 32);

  sub_1000D2DFC(v57, v54, &qword_101919618);
  sub_1000D2DFC(&v56, v54, &qword_101919620);
  sub_1000D2DFC(&v55, v54, &qword_10190A140);
  static CardButtonViewModel.close(tintColor:enabled:action:)();

  *(swift_allocObject() + 16) = v43;
  v54[0] = v30;
  v54[1] = v31;
  sub_1000CE6B8(&qword_101919628);
  State.wrappedValue.getter();
  if (v53)
  {
  }

  v34 = swift_allocObject();
  v35 = *(a1 + 16);
  *(v34 + 16) = *a1;
  *(v34 + 32) = v35;
  *(v34 + 48) = *(a1 + 32);
  v36 = objc_opt_self();

  sub_1000D2DFC(v57, v54, &qword_101919618);
  sub_1000D2DFC(&v56, v54, &qword_101919620);
  sub_1000D2DFC(&v55, v54, &qword_10190A140);
  v37 = [v36 systemBlueColor];
  static CardButtonViewModel.done(tintColor:enabled:axID:action:)();

  (*(v50 + 104))(v49, enum case for CardHeaderSize.medium(_:), v51);
  CenteredCardHeaderNavigationViewModel.init(textViewModel:visible:leadingButtons:trailingButtons:size:)();
  v38 = v44;
  CenteredCardHeaderNavigation.init(viewModel:leadingButtonsWidthBinding:trailingButtonsWidthBinding:)();
  v39 = v52;
  (*(v46 + 32))(v52, v38, v47);
  result = sub_1000CE6B8(&qword_101919630);
  v41 = v39 + *(result + 36);
  *v41 = 0xD000000000000017;
  *(v41 + 8) = 0x800000010122BE00;
  *(v41 + 16) = 12;
  return result;
}

uint64_t sub_100315808()
{
  sub_1000CE6B8(&qword_101919628);
  State.wrappedValue.getter();
  sub_10034E4E0(v1);
}

uint64_t sub_100315878()
{

  sub_1000CE6B8(&qword_101919820);
  sub_1000CE6B8(&qword_101919808);
  sub_1000414C8(&qword_101919828, &qword_101919820);
  sub_100316988();
  sub_100316B18(&qword_101919830, type metadata accessor for LocationCorrectionSuggestion);
  return ForEach<>.init(_:content:)();
}

uint64_t sub_100315998@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000CE6B8(&qword_1019069D8);
  __chkstk_darwin(v4 - 8);
  v6 = v12 - v5;
  v7 = *a1;
  *v6 = static HorizontalAlignment.center.getter();
  *(v6 + 1) = 0;
  v6[16] = 1;
  sub_1000CE6B8(&qword_101919838);
  v8 = *(v7 + 40);
  v12[4] = type metadata accessor for ListCellViewModel();
  v12[5] = sub_100316B18(&qword_10190B068, &type metadata accessor for ListCellViewModel);
  v12[1] = v8;

  PlaceCell.init(model:tapHandler:)();
  sub_100316B60(v6, a2);
  v9 = a2 + *(sub_1000CE6B8(&qword_1019069E0) + 36);
  *v9 = v7;
  *(v9 + 8) = 1;
  v10 = a2 + *(sub_1000CE6B8(&qword_101919808) + 36);
  *v10 = xmmword_1011EB6B0;
  *(v10 + 16) = 1;
}

uint64_t sub_100315B18@<X0>(uint64_t a1@<X8>)
{
  sub_1000CE6B8(&qword_1019195B8);
  sub_100315BE4();
  NavigationStack.init<>(root:)();
  result = sub_1000CE6B8(&qword_101919608);
  v3 = a1 + *(result + 36);
  *v3 = 0xD000000000000017;
  *(v3 + 8) = 0x800000010122BE00;
  *(v3 + 16) = 13;
  return result;
}

unint64_t sub_100315BE4()
{
  result = qword_1019195C0;
  if (!qword_1019195C0)
  {
    sub_1000D6664(&qword_1019195B8);
    sub_1000D6664(&qword_1019195C8);
    sub_100315CAC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019195C0);
  }

  return result;
}

unint64_t sub_100315CAC()
{
  result = qword_1019195D0;
  if (!qword_1019195D0)
  {
    sub_1000D6664(&qword_1019195C8);
    sub_100315D64();
    sub_1000414C8(&qword_1019195F8, &qword_101919600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019195D0);
  }

  return result;
}

unint64_t sub_100315D64()
{
  result = qword_1019195D8;
  if (!qword_1019195D8)
  {
    sub_1000D6664(&qword_1019195E0);
    sub_1000414C8(&qword_1019195E8, &qword_1019195F0);
    sub_1000F34D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019195D8);
  }

  return result;
}

unint64_t sub_100315E50()
{
  result = qword_101919670;
  if (!qword_101919670)
  {
    sub_1000D6664(&qword_101919640);
    sub_100315F08();
    sub_1000414C8(&qword_10190CD48, &qword_10190CD00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101919670);
  }

  return result;
}

unint64_t sub_100315F08()
{
  result = qword_101919678;
  if (!qword_101919678)
  {
    sub_1000D6664(&qword_101919668);
    sub_1000414C8(&qword_101919680, &qword_101919688);
    sub_1000414C8(&qword_10190CD40, &unk_10191D9C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101919678);
  }

  return result;
}

unint64_t sub_100315FF4()
{
  result = qword_1019196E0;
  if (!qword_1019196E0)
  {
    sub_1000D6664(&qword_1019196B8);
    sub_100316080();
    sub_1000F34D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019196E0);
  }

  return result;
}

unint64_t sub_100316080()
{
  result = qword_1019196E8;
  if (!qword_1019196E8)
  {
    sub_1000D6664(&qword_1019196D0);
    sub_1000414C8(&qword_1019196F0, &qword_1019196F8);
    sub_1000414C8(&qword_10190B010, &qword_10191DC10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019196E8);
  }

  return result;
}

unint64_t sub_100316164()
{
  result = qword_101919700;
  if (!qword_101919700)
  {
    sub_1000D6664(&qword_1019196D8);
    sub_1000414C8(&qword_101919708, &qword_101919710);
    sub_10031621C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101919700);
  }

  return result;
}

unint64_t sub_10031621C()
{
  result = qword_101919718;
  if (!qword_101919718)
  {
    sub_1000D6664(&qword_101919720);
    sub_1000D6664(&qword_101919728);
    sub_1000D6664(&qword_101919730);
    type metadata accessor for InlinePickerStyle();
    sub_1000414C8(&qword_101919738, &qword_101919730);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1000414C8(&qword_10190B010, &qword_10191DC10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101919718);
  }

  return result;
}

unint64_t sub_1003163A8()
{
  result = qword_101919758;
  if (!qword_101919758)
  {
    sub_1000D6664(&qword_1019196A0);
    sub_100316464();
    sub_100316B18(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101919758);
  }

  return result;
}

unint64_t sub_100316464()
{
  result = qword_101919760;
  if (!qword_101919760)
  {
    sub_1000D6664(&qword_101919768);
    sub_1003164F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101919760);
  }

  return result;
}

unint64_t sub_1003164F0()
{
  result = qword_101919770;
  if (!qword_101919770)
  {
    sub_1000D6664(&qword_101919778);
    sub_10031657C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101919770);
  }

  return result;
}

unint64_t sub_10031657C()
{
  result = qword_101919780;
  if (!qword_101919780)
  {
    sub_1000D6664(&qword_101919788);
    sub_100316634();
    sub_1000414C8(&qword_1019197B0, &qword_1019197B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101919780);
  }

  return result;
}

unint64_t sub_100316634()
{
  result = qword_101919790;
  if (!qword_101919790)
  {
    sub_1000D6664(&qword_101919798);
    sub_1000D6664(&unk_10191D910);
    sub_100316728();
    swift_getOpaqueTypeConformance2();
    sub_1000414C8(&unk_1019105B0, &qword_10190C5B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101919790);
  }

  return result;
}

unint64_t sub_100316728()
{
  result = qword_1019197A0;
  if (!qword_1019197A0)
  {
    sub_1000D6664(&unk_10191D910);
    sub_1000414C8(&unk_10191D920, &qword_1019197A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019197A0);
  }

  return result;
}

unint64_t sub_100316850()
{
  result = qword_1019197E8;
  if (!qword_1019197E8)
  {
    sub_1000D6664(&qword_101919618);
    sub_100316B18(&qword_1019197F0, type metadata accessor for LocationCorrectionSuggestion);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019197E8);
  }

  return result;
}

unint64_t sub_100316904()
{
  result = qword_1019197F8;
  if (!qword_1019197F8)
  {
    sub_1000D6664(&qword_1019197E0);
    sub_100316988();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019197F8);
  }

  return result;
}

unint64_t sub_100316988()
{
  result = qword_101919800;
  if (!qword_101919800)
  {
    sub_1000D6664(&qword_101919808);
    sub_1000D6664(&qword_1019069D8);
    sub_1000D6664(&qword_101919618);
    sub_1000414C8(&qword_101919810, &qword_1019069D8);
    sub_100316850();
    swift_getOpaqueTypeConformance2();
    sub_1000F34D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101919800);
  }

  return result;
}

uint64_t sub_100316AB0(uint64_t a1)
{
  v2 = sub_1000CE6B8(&qword_101919710);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100316B18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100316B60(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_1019069D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100316BD0()
{
  result = qword_101919840;
  if (!qword_101919840)
  {
    sub_1000D6664(&qword_101919608);
    sub_1000414C8(&qword_101919848, &qword_101919850);
    sub_1000F34D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101919840);
  }

  return result;
}

id sub_100316C88(uint64_t a1)
{
  swift_getObjectType();
  if (swift_conformsToProtocol2() && a1)
  {
    ObjectType = swift_getObjectType();
    v3 = objc_allocWithZone(ObjectType);
    type metadata accessor for VisitLocationCorrectionViewModel();
    v4 = swift_allocObject();
    v5 = swift_unknownObjectRetain();
    *&v3[OBJC_IVAR____TtC4Maps37VisitLocationCorrectionViewController_viewModel] = sub_1002F617C(v5, v4);
    v8.receiver = v3;
    v8.super_class = ObjectType;
    v6 = objc_msgSendSuper2(&v8, "initWithNibName:bundle:", 0, 0);
    swift_unknownObjectRelease();
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return v6;
  }

  else
  {
    swift_unknownObjectRelease();
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }
}

uint64_t sub_100316E30@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC4Maps37VisitLocationCorrectionViewController_viewModel);

  sub_1000CE6B8(&qword_101919618);
  State.init(wrappedValue:)();
  State.init(wrappedValue:)();
  a1[3] = &type metadata for VisitLocationCorrectionView;
  a1[4] = sub_1003176E0();
  result = swift_allocObject();
  *a1 = result;
  *(result + 16) = v3;
  *(result + 24) = v5;
  *(result + 32) = v6;
  *(result + 40) = v5;
  *(result + 48) = v6;
  return result;
}

uint64_t sub_100316F74()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, "didResignCurrent");
  v1 = *&v0[OBJC_IVAR____TtC4Maps37VisitLocationCorrectionViewController_viewModel];
  swift_getKeyPath();
  sub_1003179CC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v1 + 32))
  {

    Task.cancel()();
  }

  return result;
}

void sub_100317084()
{
  v8.receiver = v0;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "viewDidLoad");
  v1 = [v0 cardPresentationController];
  if (!v1)
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = v1;
  [v1 setPresentedModally:1];

  v3 = [v0 cardPresentationController];
  if (!v3)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3;
  [v3 setTakesAvailableHeight:1];

  sub_1003171C0();
  v5 = [objc_opt_self() sharedService];
  if (v5)
  {
    v6 = v5;

    v7 = String._bridgeToObjectiveC()();

    [v6 captureUserAction:21 onTarget:150 eventValue:v7];

    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_1003171C0()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_getKeyPath();
  sub_1003179CC();

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_getKeyPath();

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

void sub_1003173B0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong handleDismissAction:Strong];
    v2 = [objc_opt_self() sharedService];
    if (v2)
    {
      v3 = v2;
      [v2 captureUserAction:4 onTarget:150 eventValue:0];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100317458()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong handleDismissAction:Strong];
    v2 = [objc_opt_self() sharedService];
    if (v2)
    {
      v3 = v2;

      v4 = String._bridgeToObjectiveC()();

      [v3 captureUserAction:516 onTarget:150 eventValue:v4];
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_100317544()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(*&v0[OBJC_IVAR____TtC4Maps37VisitLocationCorrectionViewController_viewModel] + 16);
  v4 = *(v3 + 32);
  *(v3 + 32) = 0;
  v5 = *(v3 + 40);
  *(v3 + 40) = 2;
  swift_unknownObjectRetain();
  sub_1002B30A4(v4, v5);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v3 + 56);
    v7 = swift_getObjectType();
    (*(v6 + 8))(v3, &off_10160F590, v7, v6);
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  v9.receiver = v1;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, "didDismissByGesture");
}

unint64_t sub_1003176E0()
{
  result = qword_101919888;
  if (!qword_101919888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101919888);
  }

  return result;
}

uint64_t sub_10031773C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1003179CC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 32);
}

uint64_t sub_1003177E4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1003179CC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 40);
  v5 = *(v3 + 48);
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

uint64_t sub_1003178A0(uint64_t *a1)
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
  sub_1003179CC();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

unint64_t sub_1003179CC()
{
  result = qword_10191AAE0;
  if (!qword_10191AAE0)
  {
    type metadata accessor for VisitLocationCorrectionViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191AAE0);
  }

  return result;
}

uint64_t sub_100317A2C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1003179CC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 56);
  v5 = *(v3 + 64);
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

uint64_t sub_100317AE8(uint64_t *a1)
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
  sub_1003179CC();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

uint64_t type metadata accessor for VisitLocationCorrectionSearchableView()
{
  result = qword_1019198E8;
  if (!qword_1019198E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100317CD8()
{
  type metadata accessor for VisitLocationCorrectionSearchableViewModel();
  if (v0 <= 0x3F)
  {
    sub_10018C03C(319, &qword_10190CAC8, &type metadata for String, &type metadata accessor for State);
    if (v1 <= 0x3F)
    {
      sub_10018C03C(319, &unk_10191DAC0, &type metadata for Bool, &type metadata accessor for State);
      if (v2 <= 0x3F)
      {
        sub_10018C03C(319, &unk_10190E240, &type metadata for Bool, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          sub_10014BA5C(319, &qword_1019198F8, &qword_101919618);
          if (v4 <= 0x3F)
          {
            sub_100317EEC(319, &unk_10190CAE8, &type metadata accessor for InterfaceIdiom, &type metadata accessor for Environment);
            if (v5 <= 0x3F)
            {
              sub_100317EEC(319, &qword_10190CAE0, &type metadata accessor for ActionBarViewModel, &type metadata accessor for State);
              if (v6 <= 0x3F)
              {
                sub_10014BA5C(319, &qword_101919900, &unk_101919908);
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_100317EEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_100317F6C()
{
  v1 = v0;
  v2 = type metadata accessor for EnvironmentValues();
  v19 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for InterfaceIdiom();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v19 - v10;
  type metadata accessor for VisitLocationCorrectionSearchableView();
  sub_100155054(v11);
  static InterfaceIdiom.mac.getter();
  sub_10031F468(&qword_10190CC98, &type metadata accessor for InterfaceIdiom);
  v12 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13 = *(v6 + 8);
  v13(v8, v5);
  if (v12)
  {
    v13(v11, v5);
    LOBYTE(v14) = 1;
  }

  else
  {
    static InterfaceIdiom.pad.getter();
    v15 = dispatch thunk of static Equatable.== infix(_:_:)();
    v13(v8, v5);
    if (v15)
    {
      v13(v11, v5);
    }

    else
    {
      static InterfaceIdiom.vision.getter();
      v16 = dispatch thunk of static Equatable.== infix(_:_:)();
      v13(v8, v5);
      v13(v11, v5);
      if ((v16 & 1) == 0)
      {
        LOBYTE(v14) = 0;
        return v14 & 1;
      }
    }

    v14 = *(v1 + 64);
    if (*(v1 + 72) != 1)
    {

      static os_log_type_t.fault.getter();
      v17 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000A1574(v14, 0);
      (*(v19 + 8))(v4, v2);
      LOBYTE(v14) = v20;
    }
  }

  return v14 & 1;
}

uint64_t sub_1003182BC()
{
  v1 = v0;
  v2 = type metadata accessor for InterfaceIdiom();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v18 - v7;
  type metadata accessor for VisitLocationCorrectionSearchableView();
  sub_100155054(v8);
  static InterfaceIdiom.phone.getter();
  v9 = static InterfaceIdiom.== infix(_:_:)();
  v10 = *(v3 + 8);
  v10(v5, v2);
  v10(v8, v2);
  if (v9)
  {
    v11 = *(v1 + 40);
    LOBYTE(v21) = *(v1 + 32);
    *(&v21 + 1) = v11;
    sub_1000CE6B8(&qword_10190A140);
    State.wrappedValue.getter();
    return v19;
  }

  else
  {
    v13 = *(v1 + 56);
    LOBYTE(v21) = *(v1 + 48);
    *(&v21 + 1) = v13;
    sub_1000CE6B8(&qword_10190A140);
    State.wrappedValue.getter();
    if (v19)
    {
      return 1;
    }

    else
    {
      v14 = *(v1 + 24);
      v21 = *(v1 + 8);
      v22 = v14;
      sub_1000CE6B8(&qword_10190CCA0);
      State.wrappedValue.getter();
      v16 = v19;
      v15 = v20;

      v17 = HIBYTE(v15) & 0xF;
      if ((v15 & 0x2000000000000000) == 0)
      {
        v17 = v16 & 0xFFFFFFFFFFFFLL;
      }

      return v17 != 0;
    }
  }
}

uint64_t sub_1003184BC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v21 = a1;
  v3 = type metadata accessor for VisitLocationCorrectionSearchableView();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v20 = v5;
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000CE6B8(&qword_101919960);
  __chkstk_darwin(v7);
  v9 = &v20 - v8;
  v22 = v1;
  sub_1000CE6B8(&qword_101919968);
  sub_10031E300();
  NavigationStack.init<>(root:)();
  v10 = &v9[*(v7 + 36)];
  *v10 = 0xD000000000000017;
  *(v10 + 1) = 0x800000010122BE00;
  v10[16] = 13;
  v11 = *(v1 + 24);
  v24 = *(v1 + 8);
  v25 = v11;
  sub_1000CE6B8(&qword_10190CCA0);
  State.wrappedValue.getter();
  v24 = v23;
  sub_10031E6C8(v1, v6);
  v12 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v13 = swift_allocObject();
  sub_10031E72C(v6, v13 + v12);
  sub_10031E7A8();
  v14 = v21;
  View.onChange<A>(of:initial:_:)();

  sub_100024F64(v9, &qword_101919960);
  sub_10031E6C8(v1, v6);
  v15 = swift_allocObject();
  sub_10031E72C(v6, v15 + v12);
  v16 = (v14 + *(sub_1000CE6B8(&qword_1019199E0) + 36));
  *v16 = sub_10031E860;
  v16[1] = v15;
  v16[2] = 0;
  v16[3] = 0;
  sub_10031E6C8(v2, v6);
  v17 = swift_allocObject();
  sub_10031E72C(v6, v17 + v12);
  result = sub_1000CE6B8(&qword_1019199E8);
  v19 = (v14 + *(result + 36));
  *v19 = 0;
  v19[1] = 0;
  v19[2] = sub_10031E8BC;
  v19[3] = v17;
  return result;
}

uint64_t sub_1003187FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for EnvironmentValues();
  v29 = *(v4 - 8);
  v30 = v4;
  __chkstk_darwin(v4);
  v28 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000CE6B8(&qword_10190CE58);
  __chkstk_darwin(v6 - 8);
  v8 = &v27 - v7;
  v9 = sub_1000CE6B8(&qword_10190CE40);
  __chkstk_darwin(v9 - 8);
  v11 = &v27 - v10;
  v12 = sub_1000CE6B8(&qword_101919988);
  __chkstk_darwin(v12);
  v14 = &v27 - v13;
  sub_100318CB0(a1);
  v32 = a1;
  sub_100150490(0, sub_10031E99C, v11);
  sub_100024F64(v8, &qword_10190CE58);
  v31 = a1;
  sub_100151324(0, sub_10031E9A4, v14);
  sub_100024F64(v11, &qword_10190CE40);
  v15 = &v14[*(sub_1000CE6B8(&qword_1019199A0) + 36)];
  *v15 = 0xD000000000000013;
  *(v15 + 1) = 0x800000010122DF50;
  v15[16] = 13;
  v16 = &v14[*(v12 + 36)];
  *v16 = static HorizontalAlignment.center.getter();
  *(v16 + 1) = 0;
  v16[16] = 0;
  v17 = sub_1000CE6B8(&qword_1019199F8);
  sub_100319710(a1, &v16[*(v17 + 44)]);
  v16[*(sub_1000CE6B8(&qword_1019199C0) + 36)] = 1;
  sub_1000CE6B8(&qword_10190A5F0);
  type metadata accessor for ToolbarPlacement();
  *(swift_allocObject() + 16) = xmmword_1011E1D30;
  static ToolbarPlacement.navigationBar.getter();
  sub_10031E480();
  View.toolbarVisibility(_:for:)();

  sub_100024F64(v14, &qword_101919988);
  KeyPath = swift_getKeyPath();
  v19 = *(a1 + 64);
  if (*(a1 + 72) != 1)
  {

    static os_log_type_t.fault.getter();
    v20 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v21 = v28;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000A1574(v19, 0);
    (*(v29 + 8))(v21, v30);
    LOBYTE(v19) = v33;
  }

  v22 = a2 + *(sub_1000CE6B8(&qword_101919980) + 36);
  *v22 = KeyPath;
  *(v22 + 8) = v19 & 1;
  v23 = static Edge.Set.bottom.getter();
  v24 = static SafeAreaRegions.all.getter();
  result = sub_1000CE6B8(&qword_101919968);
  v26 = a2 + *(result + 36);
  *v26 = v24;
  *(v26 + 8) = v23;
  return result;
}

uint64_t sub_100318CB0(uint64_t *a1)
{
  v2 = sub_1000CE6B8(&qword_10190CE90);
  __chkstk_darwin(v2);
  v4 = &v18 - v3;
  v5 = sub_1000CE6B8(&qword_101919A08);
  __chkstk_darwin(v5);
  v7 = &v18 - v6;
  v8 = sub_1000CE6B8(&qword_10190CE80);
  __chkstk_darwin(v8);
  v10 = &v18 - v9;
  v11 = sub_1003182BC();
  v12 = static HorizontalAlignment.center.getter();
  if (v11)
  {
    *v10 = v12;
    *(v10 + 1) = 0;
    v10[16] = 0;
    v13 = sub_1000CE6B8(&qword_101919A18);
    sub_10031C600(a1, &v10[*(v13 + 44)]);
    sub_1000D2DFC(v10, v7, &qword_10190CE80);
    swift_storeEnumTagMultiPayload();
    sub_1000414C8(&qword_10190CE78, &qword_10190CE80);
    sub_1000414C8(&qword_10190CE88, &qword_10190CE90);
    _ConditionalContent<>.init(storage:)();
    v14 = v10;
    v15 = &qword_10190CE80;
  }

  else
  {
    *v4 = v12;
    *(v4 + 1) = 0;
    v4[16] = 0;
    v16 = sub_1000CE6B8(&qword_101919A10);
    sub_10031AB90(a1, &v4[*(v16 + 44)]);
    sub_1000D2DFC(v4, v7, &qword_10190CE90);
    swift_storeEnumTagMultiPayload();
    sub_1000414C8(&qword_10190CE78, &qword_10190CE80);
    sub_1000414C8(&qword_10190CE88, &qword_10190CE90);
    _ConditionalContent<>.init(storage:)();
    v14 = v4;
    v15 = &qword_10190CE90;
  }

  return sub_100024F64(v14, v15);
}

uint64_t sub_100318FBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a1;
  v40 = a3;
  v4 = type metadata accessor for VisitLocationCorrectionSearchableView();
  v35 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v36 = v5;
  v37 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SearchFieldPlacement();
  v31 = *(v6 - 8);
  v32 = v6;
  __chkstk_darwin(v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000CE6B8(&qword_10190CE50);
  v38 = *(v9 - 8);
  v39 = v9;
  __chkstk_darwin(v9);
  v25 = &v23 - v10;
  v11 = *(a2 + 24);
  v44 = *(a2 + 8);
  v45 = v11;
  sub_1000CE6B8(&qword_10190CCA0);
  State.projectedValue.getter();
  v26 = v42;
  v27 = v43;
  v12 = *(a2 + 32);
  v34 = a2;
  v13 = *(a2 + 40);
  v29 = v12;
  LOBYTE(v44) = v12;
  v30 = v13;
  *(&v44 + 1) = v13;
  v28 = sub_1000CE6B8(&qword_10190A140);
  State.projectedValue.getter();
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v46._object = 0x800000010122E590;
  v14._countAndFlagsBits = 0xD00000000000002CLL;
  v14._object = 0x800000010122E540;
  v15._object = 0x800000010122E570;
  v46._countAndFlagsBits = 0xD000000000000058;
  v15._countAndFlagsBits = 0xD000000000000011;
  v41 = NSLocalizedString(_:tableName:bundle:value:comment:)(v14, 0, qword_1019600D8, v15, v46);
  static SearchFieldPlacement.automatic.getter();
  v23 = sub_1000CE6B8(&qword_10190CE58);
  v24 = sub_100156FA8();
  v22 = sub_1000E5580();
  v16 = v25;
  View.searchable<A>(text:isPresented:placement:prompt:)();

  (*(v31 + 8))(v8, v32);

  LOBYTE(v41._countAndFlagsBits) = v29;
  v41._object = v30;
  State.wrappedValue.getter();
  v17 = v37;
  sub_10031E6C8(v34, v37);
  v18 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v19 = swift_allocObject();
  sub_10031E72C(v17, v19 + v18);
  v41._countAndFlagsBits = v23;
  v41._object = &type metadata for String;
  v42 = v24;
  v43 = v22;
  swift_getOpaqueTypeConformance2();
  v20 = v39;
  View.onChange<A>(of:initial:_:)();

  return (*(v38 + 8))(v16, v20);
}

uint64_t sub_10031949C()
{
  sub_1000CE6B8(&qword_10190A140);
  result = State.wrappedValue.getter();
  if ((v1 & 1) == 0)
  {
    return sub_100321F7C(0, 0);
  }

  return result;
}

uint64_t sub_10031950C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for VisitLocationCorrectionSearchableView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v10 = *(a2 + 56);
  sub_1000CE6B8(&qword_10190A140);
  State.wrappedValue.getter();
  v9[16] = v9[15];
  sub_10031E6C8(a2, &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_10031E72C(&v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v7 + v6);
  sub_1000CE6B8(&qword_10190CE40);
  sub_100156E7C();
  View.onChange<A>(of:initial:_:)();
}

uint64_t sub_1003196A0()
{
  sub_1000CE6B8(&qword_10190A140);
  result = State.wrappedValue.getter();
  if ((v1 & 1) == 0)
  {
    return sub_100321F7C(0, 0);
  }

  return result;
}

uint64_t sub_100319710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v3 = type metadata accessor for VisitLocationCorrectionSearchableView();
  v4 = *(v3 - 8);
  v57 = v3;
  v58 = v4;
  __chkstk_darwin(v3);
  v59 = v5;
  v6 = &v49[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1000CE6B8(&qword_10190CC58);
  v61 = *(v7 - 8);
  v62 = v7;
  __chkstk_darwin(v7);
  v9 = &v49[-v8];
  v10 = sub_1000CE6B8(&qword_10190E308);
  __chkstk_darwin(v10 - 8);
  v60 = &v49[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v14 = &v49[-v13];
  v15 = type metadata accessor for CenteredCardHeaderNavigationViewModel();
  __chkstk_darwin(v15 - 8);
  v17 = &v49[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = sub_1000CE6B8(&qword_101919630);
  v19 = v18 - 8;
  __chkstk_darwin(v18);
  v21 = &v49[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v22);
  v24 = &v49[-v23];
  sub_100319CF0(v17);
  CenteredCardHeaderNavigation.init(viewModel:leadingButtonsWidthBinding:trailingButtonsWidthBinding:)();
  v25 = &v24[*(v19 + 44)];
  *v25 = 0xD000000000000017;
  *(v25 + 1) = 0x800000010122BE00;
  v25[16] = 12;
  if (sub_100317F6C())
  {
    v26 = *(a1 + 24);
    v68 = *(a1 + 8);
    v69 = v26;
    sub_1000CE6B8(&qword_10190CCA0);
    State.projectedValue.getter();
    v55 = v65;
    v56 = v64;
    v53 = v67;
    v54 = v66;
    v27 = *(a1 + 56);
    LOBYTE(v68) = *(a1 + 48);
    *(&v68 + 1) = v27;
    sub_1000CE6B8(&qword_10190A140);
    State.projectedValue.getter();
    v51 = v65;
    v52 = v64;
    v50 = v66;
    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v70._object = 0x800000010122E590;
    v28._countAndFlagsBits = 0xD00000000000002CLL;
    v28._object = 0x800000010122E540;
    v29._object = 0x800000010122E570;
    v70._countAndFlagsBits = 0xD000000000000058;
    v29._countAndFlagsBits = 0xD000000000000011;
    v30 = NSLocalizedString(_:tableName:bundle:value:comment:)(v28, 0, qword_1019600D8, v29, v70);
    v31 = type metadata accessor for LibrarySearchBar(0);
    sub_100155054(&v9[*(v31 + 28)]);
    sub_10031E6C8(a1, v6);
    v32 = (*(v58 + 80) + 16) & ~*(v58 + 80);
    v33 = swift_allocObject();
    sub_10031E72C(v6, v33 + v32);
    v34 = v55;
    *v9 = v56;
    *(v9 + 1) = v34;
    v35 = v53;
    *(v9 + 2) = v54;
    *(v9 + 3) = v35;
    v36 = v51;
    *(v9 + 4) = v52;
    *(v9 + 5) = v36;
    v9[48] = v50;
    *(v9 + 56) = v30;
    v37 = &v9[*(v31 + 32)];
    *v37 = sub_10031E9AC;
    v37[1] = v33;
    LOBYTE(v31) = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    v38 = v62;
    v39 = &v9[*(v62 + 36)];
    *v39 = v31;
    *(v39 + 1) = v40;
    *(v39 + 2) = v41;
    *(v39 + 3) = v42;
    *(v39 + 4) = v43;
    v39[40] = 0;
    sub_1000F11C4(v9, v14, &qword_10190CC58);
    v44 = 0;
  }

  else
  {
    v44 = 1;
    v38 = v62;
  }

  (*(v61 + 56))(v14, v44, 1, v38);
  sub_1000D2DFC(v24, v21, &qword_101919630);
  v45 = v60;
  sub_1000D2DFC(v14, v60, &qword_10190E308);
  v46 = v63;
  sub_1000D2DFC(v21, v63, &qword_101919630);
  v47 = sub_1000CE6B8(&qword_101919A00);
  sub_1000D2DFC(v45, v46 + *(v47 + 48), &qword_10190E308);
  sub_100024F64(v14, &qword_10190E308);
  sub_100024F64(v24, &qword_101919630);
  sub_100024F64(v45, &qword_10190E308);
  return sub_100024F64(v21, &qword_101919630);
}

uint64_t sub_100319CF0@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v2 = type metadata accessor for VisitLocationCorrectionSearchableView();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v46 = v4;
  countAndFlagsBits = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for CardHeaderSize();
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v49 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000CE6B8(&unk_101910FC0);
  __chkstk_darwin(v6 - 8);
  v8 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v42 - v10;
  __chkstk_darwin(v12);
  v14 = v42 - v13;
  v15 = type metadata accessor for CardHeaderTextViewModel();
  __chkstk_darwin(v15 - 8);
  v17 = v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  if (sub_1003182BC())
  {
    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v54._object = 0x800000010122E590;
    v19._countAndFlagsBits = 0xD00000000000002CLL;
    v19._object = 0x800000010122E540;
    v20._object = 0x800000010122E570;
    v54._countAndFlagsBits = 0xD000000000000058;
    v20._countAndFlagsBits = 0xD000000000000011;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v19, 0, qword_1019600D8, v20, v54)._countAndFlagsBits;
    v21 = enum case for MapsDesignAccessibilityString.titleLabel(_:);
    v22 = type metadata accessor for MapsDesignAccessibilityString();
    v23 = *(v22 - 8);
    v24 = *(v23 + 104);
    v24(v14, v21, v22);
    v25 = *(v23 + 56);
    v25(v14, 0, 1, v22);
    v24(v11, enum case for MapsDesignAccessibilityString.subtitleLabel(_:), v22);
    v25(v11, 0, 1, v22);
    v24(v8, enum case for MapsDesignAccessibilityString.tertiaryLabel(_:), v22);
    v25(v8, 0, 1, v22);
    static HorizontalAlignment.center.getter();
    CardHeaderTextViewModel.init(title:titleAXID:subtitle:subtitleAXID:interactiveSubtitle:interactiveSubtitleAXID:alignment:interactiveTitleTapHandler:interactiveSubtitleTapHandler:)();
    (*(v48 + 104))(v49, enum case for CardHeaderSize.medium(_:), v50);
  }

  else
  {
    v44 = v3;
    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v55._object = 0x800000010121C770;
    v26._countAndFlagsBits = 0x6F4C20676E6F7257;
    v26._object = 0xEE006E6F69746163;
    v27._countAndFlagsBits = 0xD00000000000001FLL;
    v27._object = 0x800000010121C750;
    v55._countAndFlagsBits = 0xD00000000000003BLL;
    v28 = NSLocalizedString(_:tableName:bundle:value:comment:)(v27, 0, qword_1019600D8, v26, v55);
    v42[1] = v28._object;
    *&v43 = v28._countAndFlagsBits;
    v29 = enum case for MapsDesignAccessibilityString.titleLabel(_:);
    v30 = type metadata accessor for MapsDesignAccessibilityString();
    v31 = *(v30 - 8);
    v32 = *(v31 + 104);
    v32(v14, v29, v30);
    v33 = *(v31 + 56);
    v33(v14, 0, 1, v30);
    v32(v11, enum case for MapsDesignAccessibilityString.subtitleLabel(_:), v30);
    v33(v11, 0, 1, v30);
    v32(v8, enum case for MapsDesignAccessibilityString.tertiaryLabel(_:), v30);
    v33(v8, 0, 1, v30);
    static HorizontalAlignment.center.getter();
    v45 = v17;
    CardHeaderTextViewModel.init(title:titleAXID:subtitle:subtitleAXID:interactiveSubtitle:interactiveSubtitleAXID:alignment:interactiveTitleTapHandler:interactiveSubtitleTapHandler:)();
    sub_1000CE6B8(&qword_10191D770);
    type metadata accessor for CardButtonViewModel();
    v34 = swift_allocObject();
    v43 = xmmword_1011E1D30;
    *(v34 + 16) = xmmword_1011E1D30;
    v35 = countAndFlagsBits;
    sub_10031E6C8(v1, countAndFlagsBits);
    v36 = (*(v44 + 80) + 16) & ~*(v44 + 80);
    v37 = swift_allocObject();
    sub_10031E72C(v35, v37 + v36);
    static CardButtonViewModel.close(tintColor:enabled:action:)();

    *(swift_allocObject() + 16) = v43;
    v53 = *(v1 + 80);
    sub_1000CE6B8(&qword_101919628);
    State.wrappedValue.getter();
    if (v52)
    {
    }

    v38 = countAndFlagsBits;
    sub_10031E6C8(v1, countAndFlagsBits);
    v39 = swift_allocObject();
    sub_10031E72C(v38, v39 + v36);
    v40 = [objc_opt_self() systemBlueColor];
    static CardButtonViewModel.done(tintColor:enabled:axID:action:)();

    (*(v48 + 104))(v49, enum case for CardHeaderSize.medium(_:), v50);
  }

  return CenteredCardHeaderNavigationViewModel.init(textViewModel:visible:leadingButtons:trailingButtons:size:)();
}

uint64_t sub_10031A578()
{
  sub_1000CE6B8(&qword_10190CCA0);
  State.wrappedValue.setter();
  sub_1000CE6B8(&qword_10190A140);
  return State.wrappedValue.setter();
}

uint64_t sub_10031A614()
{
  sub_1000CE6B8(&qword_10190CCA0);
  State.wrappedValue.getter();
  sub_10031F730(v1, v2);
}

uint64_t sub_10031A68C()
{
  v1 = v0;
  v2 = type metadata accessor for VisitLocationCorrectionSearchableView();
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = objc_opt_self();
  v7 = [v23 defaultCenter];
  v8 = objc_opt_self();
  v9 = [v8 mainQueue];
  sub_10031E6C8(v1, v6);
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = swift_allocObject();
  sub_10031E72C(v6, v11 + v10);
  v28 = sub_10031E918;
  v29 = v11;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v26 = sub_1004DFC88;
  v27 = &unk_101611278;
  v12 = _Block_copy(&aBlock);

  v13 = [v7 addObserverForName:UIKeyboardWillShowNotification object:0 queue:v9 usingBlock:v12];
  _Block_release(v12);

  v14 = v22;
  aBlock = *(v22 + *(v3 + 60));
  v24 = v13;
  sub_1000CE6B8(&qword_1019199F0);
  State.wrappedValue.setter();
  v15 = [v23 defaultCenter];
  v16 = [v8 mainQueue];
  sub_10031E6C8(v14, v6);
  v17 = swift_allocObject();
  sub_10031E72C(v6, v17 + v10);
  v28 = sub_10031E920;
  v29 = v17;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v26 = sub_1004DFC88;
  v27 = &unk_1016112C8;
  v18 = _Block_copy(&aBlock);

  v19 = [v15 addObserverForName:UIKeyboardWillHideNotification object:0 queue:v16 usingBlock:v18];
  _Block_release(v18);

  aBlock = *(v14 + *(v3 + 64));
  v24 = v19;
  return State.wrappedValue.setter();
}

void sub_10031AA04()
{
  type metadata accessor for VisitLocationCorrectionSearchableView();
  sub_1000CE6B8(&qword_1019199F0);
  State.wrappedValue.getter();
  if (v2)
  {
    v0 = [objc_opt_self() defaultCenter];
    [v0 removeObserver:v2];
    swift_unknownObjectRelease();
  }

  State.wrappedValue.getter();
  if (v2)
  {
    v1 = [objc_opt_self() defaultCenter];
    [v1 removeObserver:v2];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_10031AB20()
{
  sub_1000CE6B8(&qword_101919628);
  State.wrappedValue.getter();
  sub_10031FE3C(v1);
}

uint64_t sub_10031AB90@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v76 = sub_1000CE6B8(&qword_101919AF0);
  __chkstk_darwin(v76);
  v72 = v56 - v3;
  v70 = type metadata accessor for ContentMarginPlacement();
  v68 = *(v70 - 8);
  __chkstk_darwin(v70);
  v62 = v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ListSectionSpacing();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1000CE6B8(&qword_101919AF8);
  __chkstk_darwin(v61);
  v60 = v56 - v9;
  v10 = sub_1000CE6B8(&qword_101919B00);
  v65 = *(v10 - 8);
  v66 = v10;
  __chkstk_darwin(v10);
  v63 = v56 - v11;
  v71 = sub_1000CE6B8(&qword_101919B08);
  v69 = *(v71 - 8);
  __chkstk_darwin(v71);
  v64 = v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v67 = v56 - v14;
  v74 = sub_1000CE6B8(&qword_101919B10);
  __chkstk_darwin(v74);
  v75 = v56 - v15;
  v16 = sub_1000CE6B8(&qword_10190CC68);
  __chkstk_darwin(v16 - 8);
  v58 = v56 - v17;
  v18 = type metadata accessor for EmptyStateViewModel.Icon();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = (v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = type metadata accessor for EmptyStateViewModel();
  __chkstk_darwin(v22 - 8);
  v56[1] = v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for EmptyStateView();
  v59 = *(v73 - 8);
  __chkstk_darwin(v73);
  v57 = v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *a1;
  swift_getKeyPath();
  v78 = v25;
  sub_10031F468(&unk_101919D20, type metadata accessor for VisitLocationCorrectionSearchableViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v27 = *(v25 + 104);
  if (!v27)
  {
    goto LABEL_4;
  }

  if (v27 >> 62)
  {
    v26 = _CocoaArrayWrapper.endIndex.getter();
    if (v26)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v26 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v26)
    {
LABEL_4:
      __chkstk_darwin(v26);
      sub_1000CE6B8(&qword_1019196C0);
      sub_10031F200();
      v28 = v60;
      List<>.init(content:)();
      static ListSectionSpacing.custom(_:)();
      v29 = *(sub_1000CE6B8(&qword_101919B20) + 36);
      (*(v6 + 16))(v28 + v29, v8, v5);
      v30 = *(v6 + 56);
      v30(v28 + v29, 0, 1, v5);
      KeyPath = swift_getKeyPath();
      v32 = v61;
      v33 = (v28 + *(v61 + 36));
      v34 = *(sub_1000CE6B8(&qword_10190CD00) + 28);
      (*(v6 + 32))(v33 + v34, v8, v5);
      v30(v33 + v34, 0, 1, v5);
      *v33 = KeyPath;
      static Edge.Set.top.getter();
      static MapsDesignConstants.Spacing.listTopPadding.getter();
      v35 = v62;
      static ContentMarginPlacement.automatic.getter();
      v36 = sub_10031F2C4(&qword_101919B28, &qword_101919AF8, &unk_1011FA990, sub_10031F374);
      v37 = v63;
      View.contentMargins(_:_:for:)();
      v38 = *(v68 + 8);
      v39 = v70;
      v38(v35, v70);
      sub_100024F64(v28, &qword_101919AF8);
      static Edge.Set.bottom.getter();
      static ContentMarginPlacement.automatic.getter();
      v78 = v32;
      v79 = v36;
      swift_getOpaqueTypeConformance2();
      v40 = v67;
      v41 = v66;
      View.contentMargins(_:_:for:)();
      v38(v35, v39);
      (*(v65 + 8))(v37, v41);
      v42 = v69;
      v43 = *(v69 + 16);
      v44 = v64;
      v45 = v71;
      v43(v64, v40, v71);
      v46 = v72;
      v43(v72, v44, v45);
      v47 = v46 + *(sub_1000CE6B8(&qword_101919B48) + 48);
      *v47 = 0;
      *(v47 + 8) = 1;
      v48 = *(v42 + 8);
      v48(v44, v45);
      sub_1000D2DFC(v46, v75, &qword_101919AF0);
      swift_storeEnumTagMultiPayload();
      sub_10031F468(&qword_10190CDC0, &type metadata accessor for EmptyStateView);
      sub_1000414C8(&qword_101919B50, &qword_101919AF0);
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v46, &qword_101919AF0);
      return (v48)(v40, v45);
    }
  }

  *v21 = 0xD00000000000001BLL;
  v21[1] = 0x800000010122DF70;
  (*(v19 + 104))(v21, enum case for EmptyStateViewModel.Icon.privateSystemIcon(_:), v18);
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v80._object = 0x800000010122DFE0;
  v50._countAndFlagsBits = 0xD00000000000002BLL;
  v50._object = 0x800000010122DF90;
  v51._object = 0x800000010122DFC0;
  v80._countAndFlagsBits = 0xD000000000000067;
  v51._countAndFlagsBits = 0xD000000000000010;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v50, 0, qword_1019600D8, v51, v80);
  v52 = type metadata accessor for EmptyStateViewModel.ButtonConfig();
  (*(*(v52 - 8) + 56))(v58, 1, 1, v52);
  EmptyStateViewModel.init(icon:title:details:button:)();
  v53 = v57;
  EmptyStateView.init(model:)();
  v54 = v59;
  v55 = v73;
  (*(v59 + 16))(v75, v53, v73);
  swift_storeEnumTagMultiPayload();
  sub_10031F468(&qword_10190CDC0, &type metadata accessor for EmptyStateView);
  sub_1000414C8(&qword_101919B50, &qword_101919AF0);
  _ConditionalContent<>.init(storage:)();
  return (*(v54 + 8))(v53, v55);
}

uint64_t sub_10031B75C(uint64_t a1)
{
  v2 = sub_1000CE6B8(&qword_1019196B8);
  __chkstk_darwin(v2);
  v4 = &v9[-v3];
  v10 = a1;
  *v4 = static HorizontalAlignment.leading.getter();
  *(v4 + 1) = 0;
  v4[16] = 1;
  v5 = sub_1000CE6B8(&qword_1019196C8);
  sub_10031C178(a1, &v4[*(v5 + 44)]);
  v6 = &v4[*(sub_1000CE6B8(&qword_1019196D0) + 36)];
  *v6 = 0;
  *(v6 + 1) = 0;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0x4030000000000000;
  v6[32] = 0;
  v7 = &v4[*(v2 + 36)];
  *v7 = 0xD00000000000001ELL;
  *(v7 + 1) = 0x800000010122E050;
  v7[16] = 9;
  sub_1000CE6B8(&qword_1019196D8);
  sub_10031E564(&qword_1019196E0, &qword_1019196B8, &unk_1011FA4B0, sub_100316080);
  sub_100316164();
  return Section<>.init(header:content:)();
}

uint64_t sub_10031B900@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v43 = type metadata accessor for InlinePickerStyle();
  v51 = *(v43 - 8);
  __chkstk_darwin(v43);
  v48 = v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1000CE6B8(&qword_101919730);
  v46 = *(v49 - 8);
  __chkstk_darwin(v49);
  v44 = v39 - v4;
  v50 = sub_1000CE6B8(&qword_101919728);
  v47 = *(v50 - 8);
  __chkstk_darwin(v50);
  v45 = v39 - v5;
  v55 = sub_1000CE6B8(&qword_101919720);
  __chkstk_darwin(v55);
  v7 = v39 - v6;
  v53 = sub_1000CE6B8(&qword_1019197D8);
  __chkstk_darwin(v53);
  v54 = v39 - v8;
  v9 = sub_1000CE6B8(&qword_10191D860);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v39 - v14;
  v52 = sub_1000CE6B8(&qword_101919710);
  __chkstk_darwin(v52);
  v17 = v39 - v16;
  v18 = *a1;
  swift_getKeyPath();
  v57 = v18;
  sub_10031F468(&unk_101919D20, type metadata accessor for VisitLocationCorrectionSearchableViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v18 + 104))
  {

    v42 = LocalizedStringKey.init(stringLiteral:)();
    v41 = v19;
    v39[1] = v20;
    v40 = v21;
    v61 = *(a1 + 5);
    sub_1000CE6B8(&qword_101919628);
    v22 = State.projectedValue.getter();
    __chkstk_darwin(v22);
    sub_1000CE6B8(&qword_101919618);
    v23 = v7;
    v24 = v43;
    sub_1000CE6B8(&qword_1019197E0);
    sub_100316850();
    sub_10031EBF8(&qword_1019197F8, &qword_1019197E0, &unk_1011FA5E0, sub_100316988);
    v25 = v44;
    Picker<>.init(_:selection:content:)();

    v26 = v48;
    InlinePickerStyle.init()();
    v27 = sub_1000414C8(&qword_101919738, &qword_101919730);
    v28 = v45;
    v29 = v49;
    View.pickerStyle<A>(_:)();
    (*(v51 + 8))(v26, v24);
    (*(v46 + 8))(v25, v29);
    v57 = v29;
    v58 = v24;
    v59 = v27;
    v60 = &protocol witness table for InlinePickerStyle;
    swift_getOpaqueTypeConformance2();
    v30 = v50;
    View.labelsHidden()();
    (*(v47 + 8))(v28, v30);
    v31 = v54;
    v32 = v23 + *(v55 + 36);
    *v32 = 0;
    *(v32 + 8) = 0;
    *(v32 + 16) = 0;
    *(v32 + 24) = 0x4030000000000000;
    *(v32 + 32) = 0;
    sub_1000D2DFC(v23, v31, &qword_101919720);
    swift_storeEnumTagMultiPayload();
    sub_1000414C8(&qword_101919708, &qword_101919710);
    sub_10031621C();
    _ConditionalContent<>.init(storage:)();
    return sub_100024F64(v23, &qword_101919720);
  }

  else
  {
    *v17 = static VerticalAlignment.center.getter();
    *(v17 + 1) = 0;
    v17[16] = 1;
    v34 = &v17[*(sub_1000CE6B8(&qword_101919818) + 44)];
    ProgressView<>.init<>()();
    v35 = *(v10 + 16);
    v35(v12, v15, v9);
    *v34 = 0;
    v34[8] = 1;
    v36 = sub_1000CE6B8(&qword_10190A408);
    v35(&v34[*(v36 + 48)], v12, v9);
    v37 = &v34[*(v36 + 64)];
    *v37 = 0;
    v37[8] = 1;
    v38 = *(v10 + 8);
    v38(v15, v9);
    v38(v12, v9);
    sub_1000D2DFC(v17, v54, &qword_101919710);
    swift_storeEnumTagMultiPayload();
    sub_1000414C8(&qword_101919708, &qword_101919710);
    sub_10031621C();
    _ConditionalContent<>.init(storage:)();
    return sub_100024F64(v17, &qword_101919710);
  }
}

uint64_t sub_10031C178@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SectionHeaderViewModel.Size();
  v32 = *(v4 - 8);
  v33 = v4;
  __chkstk_darwin(v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000CE6B8(&qword_10190B038);
  __chkstk_darwin(v7 - 8);
  v9 = &v28 - v8;
  v10 = type metadata accessor for SectionHeaderViewModel();
  __chkstk_darwin(v10 - 8);
  v31 = type metadata accessor for SectionHeader();
  v11 = *(v31 - 8);
  v12 = __chkstk_darwin(v31);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [*(*(*a1 + 16) + 16) name];
  p_cache = &OBJC_METACLASS___MapsAppTestTileData.cache;
  if (v15)
  {
    v30 = a2;
    v17 = v15;
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = qword_101906768;

    if (v20 != -1)
    {
      swift_once();
    }

    v34._object = 0x800000010122E430;
    v21._countAndFlagsBits = 0x3F402520746F4ELL;
    v22._countAndFlagsBits = 0xD00000000000002ELL;
    v22._object = 0x800000010122E400;
    v34._countAndFlagsBits = 0xD000000000000059;
    v21._object = 0xE700000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v22, 0, qword_1019600D8, v21, v34);
    sub_1000CE6B8(&unk_10190D5C0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1011E1D30;
    *(v23 + 56) = &type metadata for String;
    *(v23 + 64) = sub_1000DA61C();
    *(v23 + 32) = v29;
    *(v23 + 40) = v19;

    String.init(format:_:)();
    swift_bridgeObjectRelease_n();

    a2 = v30;
    p_cache = (&OBJC_METACLASS___MapsAppTestTileData + 16);
  }

  if (p_cache[237] != -1)
  {
    swift_once();
  }

  v35._object = 0x800000010122E3A0;
  v24._countAndFlagsBits = 0xD000000000000030;
  v24._object = 0x800000010122E340;
  v25._object = 0x800000010122E380;
  v35._countAndFlagsBits = 0xD000000000000053;
  v25._countAndFlagsBits = 0xD000000000000016;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v24, 0, qword_1019600D8, v25, v35);
  v26 = type metadata accessor for SectionHeaderViewModel.ActionType();
  (*(*(v26 - 8) + 56))(v9, 1, 1, v26);
  (*(v32 + 104))(v6, enum case for SectionHeaderViewModel.Size.large(_:), v33);
  SectionHeaderViewModel.init(title:subtitle:size:symbol:action:)();
  SectionHeader.init(model:)();
  return (*(v11 + 32))(a2, v14, v31);
}

uint64_t sub_10031C600@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v134 = a2;
  v117 = type metadata accessor for ContentMarginPlacement();
  v116 = *(v117 - 8);
  __chkstk_darwin(v117);
  v115 = &v95 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for ListSectionSpacing();
  v108 = *(v109 - 8);
  __chkstk_darwin(v109);
  v107 = &v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_1000CE6B8(&qword_101919A20);
  __chkstk_darwin(v124);
  v110 = &v95 - v5;
  v122 = sub_1000CE6B8(&qword_101919A28);
  v112 = *(v122 - 8);
  __chkstk_darwin(v122);
  v111 = &v95 - v6;
  v123 = sub_1000CE6B8(&qword_101919A30);
  v114 = *(v123 - 8);
  __chkstk_darwin(v123);
  v113 = &v95 - v7;
  v120 = sub_1000CE6B8(&qword_101919A38);
  __chkstk_darwin(v120);
  v121 = &v95 - v8;
  v9 = sub_1000CE6B8(&qword_10190CC68);
  __chkstk_darwin(v9 - 8);
  v99 = &v95 - v10;
  v97 = type metadata accessor for EmptyStateViewModel.Icon();
  v96 = *(v97 - 8);
  __chkstk_darwin(v97);
  v118 = (&v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for EmptyStateViewModel();
  __chkstk_darwin(v12 - 8);
  v98 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for EmptyStateView();
  v103 = *(v104 - 8);
  __chkstk_darwin(v104);
  v106 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_1000CE6B8(&qword_10190E518);
  __chkstk_darwin(v100);
  v102 = &v95 - v15;
  v119 = sub_1000CE6B8(&qword_101919A40);
  __chkstk_darwin(v119);
  v101 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v105 = &v95 - v18;
  v133 = sub_1000CE6B8(&qword_101919A48);
  __chkstk_darwin(v133);
  v128 = &v95 - v19;
  v20 = sub_1000CE6B8(&qword_10191D860);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v95 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v95 - v25;
  v127 = sub_1000CE6B8(&qword_101919710);
  __chkstk_darwin(v127);
  v28 = &v95 - v27;
  v130 = sub_1000CE6B8(&qword_101919A50);
  __chkstk_darwin(v130);
  v131 = &v95 - v29;
  v125 = sub_1000CE6B8(&qword_101919A58);
  __chkstk_darwin(v125);
  v31 = &v95 - v30;
  v129 = sub_1000CE6B8(&qword_101919A60);
  __chkstk_darwin(v129);
  v126 = &v95 - v32;
  v33 = sub_1000CE6B8(&qword_101919A68);
  __chkstk_darwin(v33 - 8);
  v132 = &v95 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v135 = &v95 - v36;
  v37 = a1;
  v38 = *a1;
  swift_getKeyPath();
  *&v138 = v38;
  sub_10031F468(&unk_101919D20, type metadata accessor for VisitLocationCorrectionSearchableViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v39 = *(v38 + 64);
  if (!v39)
  {
    swift_storeEnumTagMultiPayload();
    sub_1000414C8(&qword_101919708, &qword_101919710);
    v49 = v126;
    _ConditionalContent<>.init(storage:)();
    v45 = &qword_101919A60;
    sub_1000D2DFC(v49, v131, &qword_101919A60);
    swift_storeEnumTagMultiPayload();
    sub_10031EED0();
    sub_10031EF88();
    v47 = v135;
    _ConditionalContent<>.init(storage:)();
    v48 = v49;
    goto LABEL_5;
  }

  if (v39 == 1)
  {
    *v28 = static VerticalAlignment.center.getter();
    *(v28 + 1) = 0;
    v28[16] = 1;
    v40 = &v28[*(sub_1000CE6B8(&qword_101919818) + 44)];
    ProgressView<>.init<>()();
    v41 = *(v21 + 16);
    v41(v23, v26, v20);
    *v40 = 0;
    v40[8] = 1;
    v42 = sub_1000CE6B8(&qword_10190A408);
    v41(&v40[*(v42 + 48)], v23, v20);
    v43 = &v40[*(v42 + 64)];
    *v43 = 0;
    v43[8] = 1;
    v44 = *(v21 + 8);
    v44(v26, v20);
    v44(v23, v20);
    v45 = &qword_101919710;
    sub_1000D2DFC(v28, v31, &qword_101919710);
    swift_storeEnumTagMultiPayload();
    sub_1000414C8(&qword_101919708, &qword_101919710);
    v46 = v126;
    _ConditionalContent<>.init(storage:)();
    sub_1000D2DFC(v46, v131, &qword_101919A60);
    swift_storeEnumTagMultiPayload();
    sub_10031EED0();
    sub_10031EF88();
    v47 = v135;
    _ConditionalContent<>.init(storage:)();
    sub_100024F64(v46, &qword_101919A60);
    v48 = v28;
LABEL_5:
    sub_100024F64(v48, v45);
    goto LABEL_14;
  }

  if (v39 >> 62)
  {
    v50 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v50 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v47 = v135;
  v51 = v118;
  if (v50)
  {
    __chkstk_darwin(v50);

    sub_1000CE6B8(&qword_101919A70);
    sub_10031EB3C();
    v52 = v110;
    List<>.init(content:)();
    sub_100100D94(v39);
    v53 = v107;
    static ListSectionSpacing.custom(_:)();
    v54 = *(sub_1000CE6B8(&qword_101919AA0) + 36);
    v55 = v108;
    v56 = v109;
    (*(v108 + 16))(v52 + v54, v53, v109);
    v57 = *(v55 + 56);
    v57(v52 + v54, 0, 1, v56);
    KeyPath = swift_getKeyPath();
    v59 = (v52 + *(v124 + 36));
    v60 = *(sub_1000CE6B8(&qword_10190CD00) + 28);
    (*(v55 + 32))(v59 + v60, v53, v56);
    v57(v59 + v60, 0, 1, v56);
    *v59 = KeyPath;
    static Edge.Set.top.getter();
    static MapsDesignConstants.Spacing.listTopPadding.getter();
    v61 = v115;
    static ContentMarginPlacement.automatic.getter();
    v62 = sub_10031F2C4(&qword_101919AA8, &qword_101919A20, &unk_1011FA878, sub_10031ED30);
    v63 = v111;
    v64 = v124;
    View.contentMargins(_:_:for:)();
    v65 = *(v116 + 8);
    v66 = v117;
    v65(v61, v117);
    sub_100024F64(v52, &qword_101919A20);
    static Edge.Set.bottom.getter();
    static ContentMarginPlacement.automatic.getter();
    *&v138 = v64;
    *(&v138 + 1) = v62;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v68 = v113;
    v69 = v122;
    View.contentMargins(_:_:for:)();
    v70 = v61;
    v47 = v135;
    v65(v70, v66);
    (*(v112 + 8))(v63, v69);
    v71 = v114;
    v72 = v123;
    (*(v114 + 16))(v121, v68, v123);
    swift_storeEnumTagMultiPayload();
    sub_10031E564(&qword_101919AC8, &qword_101919A40, &unk_1011FA898, sub_10031EE14);
    *&v138 = v69;
    *(&v138 + 1) = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    (*(v71 + 8))(v68, v72);
  }

  else
  {
    *v118 = 0x697966696E67616DLL;
    v51[1] = 0xEF7373616C67676ELL;
    (*(v96 + 104))(v51, enum case for EmptyStateViewModel.Icon.privateSystemIcon(_:), v97);
    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v145._object = 0x800000010122E620;
    v73._countAndFlagsBits = 0x6C75736552206F4ELL;
    v74._countAndFlagsBits = 0xD00000000000002CLL;
    v74._object = 0x800000010122E5F0;
    v145._countAndFlagsBits = 0xD00000000000006DLL;
    v73._object = 0xEA00000000007374;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v74, 0, qword_1019600D8, v73, v145);
    v75 = type metadata accessor for EmptyStateViewModel.ButtonConfig();
    (*(*(v75 - 8) + 56))(v99, 1, 1, v75);
    EmptyStateViewModel.init(icon:title:details:button:)();
    v76 = v106;
    EmptyStateView.init(model:)();
    v77 = v37 + *(type metadata accessor for VisitLocationCorrectionSearchableView() + 48);
    v78 = *v77;
    v79 = *(v77 + 1);
    LOBYTE(v138) = v78;
    *(&v138 + 1) = v79;
    sub_1000CE6B8(&qword_10190A140);
    State.wrappedValue.getter();
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v80 = v102;
    (*(v103 + 32))(v102, v76, v104);
    v81 = (v80 + *(v100 + 36));
    v82 = v143;
    v81[4] = v142;
    v81[5] = v82;
    v81[6] = v144;
    v83 = v139;
    *v81 = v138;
    v81[1] = v83;
    v84 = v141;
    v81[2] = v140;
    v81[3] = v84;
    v85 = v101;
    sub_1000F11C4(v80, v101, &qword_10190E518);
    v86 = v85 + *(v119 + 36);
    *v86 = 0xD000000000000019;
    *(v86 + 8) = 0x800000010122E690;
    *(v86 + 16) = 13;
    v87 = v105;
    sub_1000F11C4(v85, v105, &qword_101919A40);
    sub_1000D2DFC(v87, v121, &qword_101919A40);
    swift_storeEnumTagMultiPayload();
    sub_10031E564(&qword_101919AC8, &qword_101919A40, &unk_1011FA898, sub_10031EE14);
    v88 = sub_10031F2C4(&qword_101919AA8, &qword_101919A20, &unk_1011FA878, sub_10031ED30);
    v136 = v124;
    v137 = v88;
    v89 = swift_getOpaqueTypeConformance2();
    v136 = v122;
    v137 = v89;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    sub_100024F64(v87, &qword_101919A40);
  }

  v90 = v128;
  sub_1000D2DFC(v128, v131, &qword_101919A48);
  swift_storeEnumTagMultiPayload();
  sub_10031EED0();
  sub_10031EF88();
  _ConditionalContent<>.init(storage:)();
  sub_100024F64(v90, &qword_101919A48);
LABEL_14:
  v91 = v132;
  sub_1000D2DFC(v47, v132, &qword_101919A68);
  v92 = v134;
  sub_1000D2DFC(v91, v134, &qword_101919A68);
  v93 = v92 + *(sub_1000CE6B8(&qword_101919AE8) + 48);
  *v93 = 0;
  *(v93 + 8) = 1;
  sub_100024F64(v47, &qword_101919A68);
  return sub_100024F64(v91, &qword_101919A68);
}

uint64_t sub_10031DB90()
{
  sub_1000CE6B8(&qword_101919A88);
  sub_10031EBF8(&qword_101919A80, &qword_101919A88, &unk_1011FA908, sub_10031EC74);
  return Section<>.init(content:)();
}

uint64_t sub_10031DC34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VisitLocationCorrectionSearchableView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v10[1] = a1;
  sub_10031E6C8(a2, v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_10031E72C(v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);

  sub_1000CE6B8(&qword_101919820);
  sub_1000CE6B8(&qword_101919A98);
  sub_1000414C8(&qword_101919828, &qword_101919820);
  sub_10031EC74();
  sub_10031F468(&qword_101919830, type metadata accessor for LocationCorrectionSuggestion);
  return ForEach<>.init(_:content:)();
}

double sub_10031DE10@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for VisitLocationCorrectionSearchableView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = *a1;
  v10 = *(v9 + 40);
  v15[4] = type metadata accessor for ListCellViewModel();
  v15[5] = sub_10031F468(&qword_10190B068, &type metadata accessor for ListCellViewModel);
  v15[1] = v10;
  sub_10031E6C8(a2, v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  sub_10031E72C(v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  *(v12 + ((v8 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v9;

  PlaceCell.init(model:tapHandler:)();
  v13 = a3 + *(sub_1000CE6B8(&qword_101919A98) + 36);
  result = 1.88938485e79;
  *v13 = xmmword_1011EB6B0;
  *(v13 + 16) = 1;
  return result;
}

uint64_t sub_10031DFC8()
{

  sub_1000CE6B8(&qword_101919820);
  sub_1000CE6B8(&qword_101919808);
  sub_1000414C8(&qword_101919828, &qword_101919820);
  sub_100316988();
  sub_10031F468(&qword_101919830, type metadata accessor for LocationCorrectionSuggestion);
  return ForEach<>.init(_:content:)();
}

uint64_t sub_10031E0E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000CE6B8(&qword_1019069D8);
  __chkstk_darwin(v4 - 8);
  v6 = v12 - v5;
  v7 = *a1;
  *v6 = static HorizontalAlignment.center.getter();
  *(v6 + 1) = 0;
  v6[16] = 1;
  sub_1000CE6B8(&qword_101919838);
  v8 = *(v7 + 40);
  v12[4] = type metadata accessor for ListCellViewModel();
  v12[5] = sub_10031F468(&qword_10190B068, &type metadata accessor for ListCellViewModel);
  v12[1] = v8;

  PlaceCell.init(model:tapHandler:)();
  sub_1000F11C4(v6, a2, &qword_1019069D8);
  v9 = a2 + *(sub_1000CE6B8(&qword_1019069E0) + 36);
  *v9 = v7;
  *(v9 + 8) = 1;
  v10 = a2 + *(sub_1000CE6B8(&qword_101919808) + 36);
  *v10 = xmmword_1011EB6B0;
  *(v10 + 16) = 1;
}

uint64_t sub_10031E280()
{
  type metadata accessor for VisitLocationCorrectionSearchableView();
  sub_1000CE6B8(&qword_10190A140);
  return State.wrappedValue.setter();
}

unint64_t sub_10031E300()
{
  result = qword_101919970;
  if (!qword_101919970)
  {
    sub_1000D6664(&qword_101919968);
    sub_10031E38C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101919970);
  }

  return result;
}

unint64_t sub_10031E38C()
{
  result = qword_101919978;
  if (!qword_101919978)
  {
    sub_1000D6664(&qword_101919980);
    sub_1000D6664(&qword_101919988);
    sub_10031E480();
    swift_getOpaqueTypeConformance2();
    sub_1000414C8(&qword_101916F20, &qword_10190CBB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101919978);
  }

  return result;
}

unint64_t sub_10031E480()
{
  result = qword_101919990;
  if (!qword_101919990)
  {
    sub_1000D6664(&qword_101919988);
    sub_10031E564(&qword_101919998, &qword_1019199A0, &unk_1011FA780, sub_10031E5E8);
    sub_1000414C8(&qword_1019199B8, &qword_1019199C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101919990);
  }

  return result;
}

uint64_t sub_10031E564(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000D6664(a2);
    a4();
    sub_1000F34D0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10031E5E8()
{
  result = qword_1019199A8;
  if (!qword_1019199A8)
  {
    sub_1000D6664(&qword_1019199B0);
    sub_1000D6664(&qword_10190CE40);
    sub_100156E7C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019199A8);
  }

  return result;
}

uint64_t sub_10031E6C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VisitLocationCorrectionSearchableView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10031E72C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VisitLocationCorrectionSearchableView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10031E7A8()
{
  result = qword_1019199C8;
  if (!qword_1019199C8)
  {
    sub_1000D6664(&qword_101919960);
    sub_1000414C8(&qword_1019199D0, &qword_1019199D8);
    sub_1000F34D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019199C8);
  }

  return result;
}

uint64_t sub_10031EA20()
{
  type metadata accessor for VisitLocationCorrectionSearchableView();

  return sub_10031AB20();
}

uint64_t sub_10031EAC0(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for VisitLocationCorrectionSearchableView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_10031EB3C()
{
  result = qword_101919A78;
  if (!qword_101919A78)
  {
    sub_1000D6664(&qword_101919A70);
    sub_10031EBF8(&qword_101919A80, &qword_101919A88, &unk_1011FA908, sub_10031EC74);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101919A78);
  }

  return result;
}

uint64_t sub_10031EBF8(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000D6664(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10031EC74()
{
  result = qword_101919A90;
  if (!qword_101919A90)
  {
    sub_1000D6664(&qword_101919A98);
    sub_10031F468(&qword_10190D640, &type metadata accessor for PlaceCell);
    sub_1000F34D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101919A90);
  }

  return result;
}

unint64_t sub_10031ED30()
{
  result = qword_101919AB0;
  if (!qword_101919AB0)
  {
    sub_1000D6664(&qword_101919AA0);
    sub_1000414C8(&qword_101919AB8, &qword_101919AC0);
    sub_1000414C8(&qword_10190CD40, &unk_10191D9C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101919AB0);
  }

  return result;
}

unint64_t sub_10031EE14()
{
  result = qword_101919AD0;
  if (!qword_101919AD0)
  {
    sub_1000D6664(&qword_10190E518);
    sub_10031F468(&qword_10190CDC0, &type metadata accessor for EmptyStateView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101919AD0);
  }

  return result;
}

unint64_t sub_10031EED0()
{
  result = qword_101919AD8;
  if (!qword_101919AD8)
  {
    sub_1000D6664(&qword_101919A60);
    sub_1000414C8(&qword_101919708, &qword_101919710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101919AD8);
  }

  return result;
}

unint64_t sub_10031EF88()
{
  result = qword_101919AE0;
  if (!qword_101919AE0)
  {
    sub_1000D6664(&qword_101919A48);
    sub_10031E564(&qword_101919AC8, &qword_101919A40, &unk_1011FA898, sub_10031EE14);
    sub_1000D6664(&qword_101919A28);
    sub_1000D6664(&qword_101919A20);
    sub_10031F2C4(&qword_101919AA8, &qword_101919A20, &unk_1011FA878, sub_10031ED30);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101919AE0);
  }

  return result;
}

double sub_10031F0F0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for VisitLocationCorrectionSearchableView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10031DE10(a1, v6, a2);
}

unint64_t sub_10031F200()
{
  result = qword_101919B18;
  if (!qword_101919B18)
  {
    sub_1000D6664(&qword_1019196C0);
    sub_10031E564(&qword_1019196E0, &qword_1019196B8, &unk_1011FA4B0, sub_100316080);
    sub_100316164();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101919B18);
  }

  return result;
}

uint64_t sub_10031F2C4(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000D6664(a2);
    a4();
    sub_1000414C8(&qword_10190CD48, &qword_10190CD00);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10031F374()
{
  result = qword_101919B30;
  if (!qword_101919B30)
  {
    sub_1000D6664(&qword_101919B20);
    sub_1000414C8(&qword_101919B38, &qword_101919B40);
    sub_1000414C8(&qword_10190CD40, &unk_10191D9C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101919B30);
  }

  return result;
}

uint64_t sub_10031F468(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10031F4B0()
{
  result = qword_101919B58;
  if (!qword_101919B58)
  {
    sub_1000D6664(&qword_1019199E8);
    sub_10031F53C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101919B58);
  }

  return result;
}

unint64_t sub_10031F53C()
{
  result = qword_101919B60;
  if (!qword_101919B60)
  {
    sub_1000D6664(&qword_1019199E0);
    sub_1000D6664(&qword_101919960);
    sub_10031E7A8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101919B60);
  }

  return result;
}

Swift::Int sub_10031F620(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10056D5C8(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_100324044(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_10031F68C()
{
  swift_getKeyPath();
  sub_100324C54(&unk_101919D20, type metadata accessor for VisitLocationCorrectionSearchableViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_10031F730(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v29 = a2;
  v28[0] = a1;
  v36 = type metadata accessor for DispatchTimeInterval();
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v5 = (v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = type metadata accessor for DispatchTime();
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v31 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v32 = v28 - v8;
  v30 = type metadata accessor for DispatchQoS.QoSClass();
  v9 = *(v30 - 8);
  __chkstk_darwin(v30);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v12);
  swift_getKeyPath();
  v13 = OBJC_IVAR____TtC4Maps42VisitLocationCorrectionSearchableViewModel___observationRegistrar;
  aBlock[0] = v3;
  v28[1] = sub_100324C54(&unk_101919D20, type metadata accessor for VisitLocationCorrectionSearchableViewModel);
  v28[2] = v13;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v3 + 120))
  {

    dispatch thunk of DispatchWorkItem.cancel()();
  }

  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v16 = v28[0];
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = v29;
  aBlock[4] = sub_100324C48;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100039C64;
  aBlock[3] = &unk_1016115F0;
  _Block_copy(aBlock);
  v37 = _swiftEmptyArrayStorage;
  sub_100324C54(&qword_1019097D0, &type metadata accessor for DispatchWorkItemFlags);

  sub_1000CE6B8(&unk_10190B500);
  sub_1000DB3BC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for DispatchWorkItem();
  swift_allocObject();
  v17 = DispatchWorkItem.init(flags:block:)();

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  v28[-2] = v3;
  v28[-1] = v17;
  aBlock[0] = v3;

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_100109428();
  v19 = v30;
  (*(v9 + 104))(v11, enum case for DispatchQoS.QoSClass.default(_:), v30);
  v20 = static OS_dispatch_queue.global(qos:)();
  (*(v9 + 8))(v11, v19);
  v21 = v31;
  static DispatchTime.now()();
  *v5 = 200;
  v22 = v34;
  v23 = v36;
  (*(v34 + 104))(v5, enum case for DispatchTimeInterval.milliseconds(_:), v36);
  v24 = v32;
  + infix(_:_:)();
  (*(v22 + 8))(v5, v23);
  v25 = *(v33 + 8);
  v26 = v35;
  v25(v21, v35);
  OS_dispatch_queue.asyncAfter(deadline:execute:)();

  return (v25)(v24, v26);
}