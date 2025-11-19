uint64_t sub_100E8D744(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  sub_1005B981C(a2);
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

Swift::Int sub_100E8D950(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1005B981C(&qword_101A0F2C8);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      sub_100006370(0, &qword_101A04270);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_100006370(0, &qword_1019FF3E0);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_100A91CB0(v12 + 1, 1);
        }

        v2 = v19;
        result = NSObject._rawHashValue(seed:)(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = __CocoaDictionary.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return _swiftEmptyDictionarySingleton;
  }

  return v2;
}

Swift::Int sub_100E8DB9C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1005B981C(&qword_101A0F1D0);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      sub_100006370(0, &qword_1019F69D0);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        type metadata accessor for CRLSyncRecordGroup();
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_100A92794(v12 + 1, 1);
        }

        v2 = v19;
        result = NSObject._rawHashValue(seed:)(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = __CocoaDictionary.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return v2;
}

Swift::Int sub_100E8DDD0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1005B981C(&qword_101A0F0A8);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      sub_100006370(0, &qword_1019F6E98);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_100006370(0, &unk_101A22DC0);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_100A93CA4(v12 + 1, 1);
        }

        v2 = v19;
        result = NSObject._rawHashValue(seed:)(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = __CocoaDictionary.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return v2;
}

void sub_100E8E01C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for UUID();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for UUID() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100E8E5D4(v8, v9, a1, v4);
      v6[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_100E8E240(0, v2, 1, a1);
  }
}

Swift::Int sub_100E8E148(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_100E8EFFC(v7, v8, a1, v4);
      v6[2] = 0;
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
    return sub_100E8E504(0, v2, 1, a1);
  }

  return result;
}

void sub_100E8E240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for UUID();
  __chkstk_darwin(v8);
  v41 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v45 = &v31 - v11;
  v14 = __chkstk_darwin(v12);
  v44 = &v31 - v15;
  v33 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v42 = *(v13 + 16);
    v43 = v13 + 16;
    v17 = *(v13 + 72);
    v18 = (v13 + 8);
    v39 = (v13 + 32);
    v40 = v16;
    v19 = (v16 + v17 * (a3 - 1));
    v38 = -v17;
    v20 = a1 - a3;
    v32 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v36 = v19;
    v37 = a3;
    v34 = v21;
    v35 = v20;
    v22 = v19;
    while (1)
    {
      v23 = v44;
      v24 = v42;
      (v42)(v44, v21, v8, v14);
      v25 = v45;
      v24(v45, v22, v8);
      sub_1000066D0(&unk_101A09E30, &type metadata accessor for UUID);
      v26 = dispatch thunk of static Comparable.< infix(_:_:)();
      v27 = *v18;
      (*v18)(v25, v8);
      v27(v23, v8);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v37 + 1;
        v19 = &v36[v32];
        v20 = v35 - 1;
        v21 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v40)
      {
        break;
      }

      v28 = *v39;
      v29 = v41;
      (*v39)(v41, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      v28(v22, v29, v8);
      v22 += v38;
      v21 += v38;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

uint64_t sub_100E8E504(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_100E8E5D4(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v122 = a1;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v127 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v134 = &v119 - v12;
  __chkstk_darwin(v13);
  v140 = &v119 - v14;
  v16 = __chkstk_darwin(v15);
  v139 = &v119 - v17;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = _swiftEmptyArrayStorage;
LABEL_94:
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_126:
      v20 = sub_10113DE48(v20);
    }

    v142 = v20;
    v115 = *(v20 + 2);
    if (v115 >= 2)
    {
      while (*a3)
      {
        v116 = *&v20[16 * v115];
        v117 = *&v20[16 * v115 + 24];
        sub_100E8F5D8(*a3 + v9[9] * v116, *a3 + v9[9] * *&v20[16 * v115 + 16], *a3 + v9[9] * v117, v21);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v117 < v116)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_10113DE48(v20);
        }

        if (v115 - 2 >= *(v20 + 2))
        {
          goto LABEL_120;
        }

        v118 = &v20[16 * v115];
        *v118 = v116;
        *(v118 + 1) = v117;
        v142 = v20;
        sub_10113DDBC(v115 - 1);
        v20 = v142;
        v115 = *(v142 + 2);
        if (v115 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v119 = a4;
  v19 = 0;
  v137 = (v9 + 1);
  v138 = v9 + 2;
  v136 = (v9 + 4);
  v20 = _swiftEmptyArrayStorage;
  v124 = v9;
  v141 = v8;
  v120 = a3;
  while (1)
  {
    v21 = v19;
    v125 = v20;
    if (v19 + 1 >= v18)
    {
      v34 = v19 + 1;
    }

    else
    {
      v132 = v18;
      v121 = v5;
      v22 = *a3;
      v23 = v9[9];
      v24 = v19;
      v123 = v19;
      v25 = &v22[v23 * (v19 + 1)];
      v26 = v8;
      v27 = v9[2];
      v28 = v139;
      v27(v139, v25, v26, v16);
      v29 = &v22[v23 * v24];
      v30 = v140;
      v131 = v27;
      (v27)(v140, v29, v26);
      v130 = sub_1000066D0(&unk_101A09E30, &type metadata accessor for UUID);
      LODWORD(v133) = dispatch thunk of static Comparable.< infix(_:_:)();
      v31 = v9[1];
      v31(v30, v26);
      v129 = v31;
      v31(v28, v26);
      v32 = v123 + 2;
      v135 = v23;
      v33 = &v22[v23 * (v123 + 2)];
      while (1)
      {
        v34 = v132;
        if (v132 == v32)
        {
          break;
        }

        v35 = v139;
        v36 = v9;
        v37 = v141;
        v38 = v131;
        (v131)(v139, v33, v141);
        v39 = v140;
        v38(v140, v25, v37);
        v40 = dispatch thunk of static Comparable.< infix(_:_:)() & 1;
        v41 = v129;
        (v129)(v39, v37);
        v42 = v37;
        v9 = v36;
        v41(v35, v42);
        ++v32;
        v33 += v135;
        v25 += v135;
        if ((v133 & 1) != v40)
        {
          v34 = v32 - 1;
          break;
        }
      }

      v5 = v121;
      v20 = v125;
      v8 = v141;
      a3 = v120;
      v21 = v123;
      if (v133)
      {
        if (v34 < v123)
        {
          goto LABEL_123;
        }

        if (v123 < v34)
        {
          v43 = v34;
          v44 = v135 * (v34 - 1);
          v45 = v34 * v135;
          v132 = v34;
          v46 = v123;
          v47 = v123 * v135;
          do
          {
            if (v46 != --v43)
            {
              v49 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v133 = *v136;
              v133(v127, &v49[v47], v141);
              if (v47 < v44 || &v49[v47] >= &v49[v45])
              {
                v48 = v141;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v48 = v141;
                if (v47 != v44)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v133(&v49[v44], v127, v48);
              v9 = v124;
              v20 = v125;
            }

            ++v46;
            v44 -= v135;
            v45 -= v135;
            v47 += v135;
          }

          while (v46 < v43);
          v5 = v121;
          v8 = v141;
          v21 = v123;
          v34 = v132;
        }
      }
    }

    v50 = a3[1];
    if (v34 < v50)
    {
      if (__OFSUB__(v34, v21))
      {
        goto LABEL_122;
      }

      if (v34 - v21 < v119)
      {
        if (__OFADD__(v21, v119))
        {
          goto LABEL_124;
        }

        if (v21 + v119 >= v50)
        {
          v51 = a3[1];
        }

        else
        {
          v51 = v21 + v119;
        }

        if (v51 < v21)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v34 != v51)
        {
          break;
        }
      }
    }

    v52 = v34;
    if (v34 < v21)
    {
      goto LABEL_121;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_100B355CC(0, *(v20 + 2) + 1, 1, v20);
    }

    v54 = *(v20 + 2);
    v53 = *(v20 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      v20 = sub_100B355CC((v53 > 1), v54 + 1, 1, v20);
    }

    *(v20 + 2) = v55;
    v56 = &v20[16 * v54];
    *(v56 + 4) = v21;
    *(v56 + 5) = v52;
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_131;
    }

    v128 = v52;
    if (v54)
    {
      while (1)
      {
        v57 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v58 = *(v20 + 4);
          v59 = *(v20 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_52:
          if (v61)
          {
            goto LABEL_110;
          }

          v74 = &v20[16 * v55];
          v76 = *v74;
          v75 = *(v74 + 1);
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_113;
          }

          v80 = &v20[16 * v57 + 32];
          v82 = *v80;
          v81 = *(v80 + 1);
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v78, v83))
          {
            goto LABEL_117;
          }

          if (v78 + v83 >= v60)
          {
            if (v60 < v83)
            {
              v57 = v55 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v84 = &v20[16 * v55];
        v86 = *v84;
        v85 = *(v84 + 1);
        v68 = __OFSUB__(v85, v86);
        v78 = v85 - v86;
        v79 = v68;
LABEL_66:
        if (v79)
        {
          goto LABEL_112;
        }

        v87 = &v20[16 * v57];
        v89 = *(v87 + 4);
        v88 = *(v87 + 5);
        v68 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v68)
        {
          goto LABEL_115;
        }

        if (v90 < v78)
        {
          goto LABEL_3;
        }

LABEL_73:
        v95 = v57 - 1;
        if (v57 - 1 >= v55)
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

        if (!*a3)
        {
          goto LABEL_128;
        }

        v96 = *&v20[16 * v95 + 32];
        v97 = *&v20[16 * v57 + 40];
        sub_100E8F5D8(*a3 + v9[9] * v96, *a3 + v9[9] * *&v20[16 * v57 + 32], *a3 + v9[9] * v97, v21);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v97 < v96)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_10113DE48(v20);
        }

        if (v95 >= *(v20 + 2))
        {
          goto LABEL_107;
        }

        v98 = &v20[16 * v95];
        *(v98 + 4) = v96;
        *(v98 + 5) = v97;
        v142 = v20;
        sub_10113DDBC(v57);
        v20 = v142;
        v55 = *(v142 + 2);
        v8 = v141;
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v62 = &v20[16 * v55 + 32];
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_108;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_109;
      }

      v69 = &v20[16 * v55];
      v71 = *v69;
      v70 = *(v69 + 1);
      v68 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v68)
      {
        goto LABEL_111;
      }

      v68 = __OFADD__(v60, v72);
      v73 = v60 + v72;
      if (v68)
      {
        goto LABEL_114;
      }

      if (v73 >= v65)
      {
        v91 = &v20[16 * v57 + 32];
        v93 = *v91;
        v92 = *(v91 + 1);
        v68 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v68)
        {
          goto LABEL_118;
        }

        if (v60 < v94)
        {
          v57 = v55 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = a3[1];
    v19 = v128;
    if (v128 >= v18)
    {
      goto LABEL_94;
    }
  }

  v121 = v5;
  v99 = *a3;
  v100 = v9[9];
  v135 = v9[2];
  v101 = v99 + v100 * (v34 - 1);
  v102 = -v100;
  v123 = v21;
  v103 = v21 - v34;
  v133 = v99;
  v126 = v100;
  v104 = v99 + v34 * v100;
  v128 = v51;
LABEL_85:
  v131 = v101;
  v132 = v34;
  v129 = v104;
  v130 = v103;
  v105 = v101;
  while (1)
  {
    v106 = v139;
    v107 = v135;
    (v135)(v139, v104, v8);
    v108 = v140;
    v107(v140, v105, v141);
    sub_1000066D0(&unk_101A09E30, &type metadata accessor for UUID);
    v109 = dispatch thunk of static Comparable.< infix(_:_:)();
    v110 = *v137;
    v111 = v108;
    v8 = v141;
    (*v137)(v111, v141);
    v110(v106, v8);
    if ((v109 & 1) == 0)
    {
LABEL_84:
      v34 = v132 + 1;
      v101 = &v131[v126];
      v103 = v130 - 1;
      v104 = &v129[v126];
      v52 = v128;
      if (v132 + 1 != v128)
      {
        goto LABEL_85;
      }

      v5 = v121;
      a3 = v120;
      v9 = v124;
      v20 = v125;
      v21 = v123;
      if (v128 < v123)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v133)
    {
      break;
    }

    v112 = *v136;
    v113 = v134;
    (*v136)(v134, v104, v8);
    swift_arrayInitWithTakeFrontToBack();
    v112(v105, v113, v8);
    v105 += v102;
    v104 += v102;
    if (__CFADD__(v103++, 1))
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
}

uint64_t sub_100E8EFFC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_10113DE48(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_100E8FBCC((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100B355CC(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_100B355CC((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_100E8FBCC((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_10113DE48(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_10113DDBC(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

void sub_100E8F5D8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v51 = type metadata accessor for UUID();
  v8 = *(v51 - 8);
  __chkstk_darwin(v51);
  v49 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v48 = &v39 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_63;
  }

  v50 = a3;
  v15 = (a2 - a1) / v13;
  v54 = a1;
  v53 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v26 = a4 + v17;
    if (v17 >= 1)
    {
      v27 = -v13;
      v42 = a4;
      v43 = (v8 + 16);
      v40 = (v8 + 8);
      v41 = a1;
      v28 = a4 + v17;
      v29 = v50;
      v44 = v27;
      do
      {
        v39 = v26;
        v30 = a2 + v27;
        v46 = a2 + v27;
        v47 = v26;
        v45 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v54 = a2;
            v26 = v39;
            goto LABEL_59;
          }

          v32 = v29;
          v50 = v29 + v27;
          v33 = v28 + v27;
          v34 = *v43;
          v35 = v48;
          v36 = v51;
          (*v43)(v48, v28 + v27, v51);
          v37 = v49;
          v34(v49, v30, v36);
          sub_1000066D0(&unk_101A09E30, &type metadata accessor for UUID);
          LOBYTE(v34) = dispatch thunk of static Comparable.< infix(_:_:)();
          v38 = *v40;
          (*v40)(v37, v36);
          v38(v35, v36);
          if (v34)
          {
            break;
          }

          v29 = v50;
          if (v32 < v28 || v50 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
            v30 = v46;
            a1 = v41;
          }

          else
          {
            v30 = v46;
            a1 = v41;
            if (v32 != v28)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v47 = v33;
          v28 = v33;
          v31 = v33 > v42;
          v27 = v44;
          a2 = v45;
          if (!v31)
          {
            v26 = v47;
            goto LABEL_58;
          }
        }

        v29 = v50;
        if (v32 < v45 || v50 >= v45)
        {
          a2 = v46;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v41;
        }

        else
        {
          a2 = v46;
          a1 = v41;
          if (v32 != v45)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v26 = v47;
        v27 = v44;
      }

      while (v28 > v42);
    }

LABEL_58:
    v54 = a2;
LABEL_59:
    v52 = v26;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v47 = a4 + v16;
    v52 = a4 + v16;
    if (v16 >= 1 && a2 < v50)
    {
      v45 = *(v8 + 16);
      v46 = v8 + 16;
      v43 = v13;
      v44 = (v8 + 8);
      do
      {
        v19 = v48;
        v20 = v51;
        v21 = v45;
        v45(v48, a2, v51);
        v22 = v49;
        v21(v49, a4, v20);
        sub_1000066D0(&unk_101A09E30, &type metadata accessor for UUID);
        LOBYTE(v21) = dispatch thunk of static Comparable.< infix(_:_:)();
        v23 = *v44;
        (*v44)(v22, v20);
        v23(v19, v20);
        if (v21)
        {
          v24 = v43;
          if (a1 < a2 || a1 >= v43 + a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v24;
        }

        else
        {
          v24 = v43;
          v25 = v43 + a4;
          if (a1 < a4 || a1 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v53 = v25;
          a4 += v24;
        }

        a1 += v24;
        v54 = a1;
      }

      while (a4 < v47 && a2 < v50);
    }
  }

  sub_10063F77C(&v54, &v53, &v52);
}

uint64_t sub_100E8FBCC(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_100E8FDF4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *(sub_1005B981C(&qword_1019F6998) + 48);
  v5 = sub_1005B981C(&qword_101A22780);
  v7 = *a1;
  v6 = a1[1];
  sub_10000BE14(a1 + v4, a2 + *(v5 + 48), &qword_1019F6990);
  *a2 = v7;
  a2[1] = v6;
}

unint64_t sub_100E8FE90(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3;
  }

  v7 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  while (1)
  {
    if (v8 < 0x4000)
    {
      return 0;
    }

    v8 = String.index(before:)();
    v13[0] = String.subscript.getter();
    v13[1] = v9;
    v10 = a1(v13);
    if (v4)
    {
      break;
    }

    v11 = v10;

    if (v11)
    {
      return v8;
    }
  }

  return v8;
}

void sub_100E8FF94(__int128 *a1)
{
  v3 = type metadata accessor for URL();
  v19 = *(v3 - 8);
  __chkstk_darwin(v3);
  v18 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v5 - 8);
  v7 = &v18 - v6;
  v8 = type metadata accessor for CRLWPHyperlinkSmartFieldData(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1005B981C(&unk_101A096C0);
  __chkstk_darwin(v12 - 8);
  v14 = &v18 - v13;
  sub_10000BE14(v1, &v18 - v13, &unk_101A096C0);
  if ((*(v9 + 48))(v14, 1, v8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    sub_100025668(v14, v11, type metadata accessor for CRLWPHyperlinkSmartFieldData);
    Hasher._combine(_:)(1u);
    v15 = v11[8];
    v20 = *v11;
    v21 = v15;
    sub_1005B981C(&unk_101A0D940);
    CRExtensible.hash(into:)();
    sub_10000BE14(&v11[*(v8 + 20)], v7, &unk_1019F33C0);
    v16 = v19;
    if ((*(v19 + 48))(v7, 1, v3) == 1)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      v17 = v18;
      (*(v16 + 32))(v18, v7, v3);
      Hasher._combine(_:)(1u);
      sub_1000066D0(&qword_101A00578, &type metadata accessor for URL);
      dispatch thunk of Hashable.hash(into:)();
      (*(v16 + 8))(v17, v3);
    }

    String.hash(into:)();
    sub_100864DE8(a1, *&v11[*(v8 + 28)]);
    sub_100026028(v11, type metadata accessor for CRLWPHyperlinkSmartFieldData);
  }
}

void sub_100E90344(uint64_t a1, uint64_t a2)
{
  v4 = _s5BoardVMa(0);
  __chkstk_darwin(v4 - 8);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  __chkstk_darwin(v7 - 8);
  v35[0] = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  v10 = __chkstk_darwin(v9 - 8);
  v36 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v37 = v35 - v12;
  v13 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v13);
  v15 = v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _s4NodeVMa(0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a2 + 16);
  Hasher._combine(_:)(v20);
  if (v20)
  {
    v21 = v17;
    v22 = *(v16 + 20);
    v23 = a2 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v24 = *(v21 + 72);
    v35[1] = v13;
    while (1)
    {
      sub_10000C83C(v23, v19, _s4NodeVMa);
      sub_10000C83C(v19, v15, type metadata accessor for CRLBoardLibraryViewModel.Item);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        break;
      }

      Hasher._combine(_:)(*v15);
LABEL_4:
      sub_100E90344(a1, *&v19[v22]);
      sub_100026028(v19, _s4NodeVMa);
      v23 += v24;
      if (!--v20)
      {
        return;
      }
    }

    if (EnumCaseMultiPayload != 1)
    {
      sub_100025668(v15, v6, _s5BoardVMa);
      type metadata accessor for UUID();
      sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      type metadata accessor for CRLBoardIdentifierStorage(0);
      String.hash(into:)();
      v32 = _s5BoardVMa;
      v33 = v6;
LABEL_19:
      sub_100026028(v33, v32);
      goto LABEL_4;
    }

    v26 = v37;
    sub_100025668(v15, v37, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    v27 = v26;
    v28 = v36;
    sub_10000C83C(v27, v36, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    v29 = sub_1005B981C(&qword_1019F3480);
    v30 = (*(*(v29 - 8) + 48))(v28, 5, v29);
    if (v30 > 2)
    {
      if (v30 == 3)
      {
        v31 = 2;
      }

      else if (v30 == 4)
      {
        v31 = 3;
      }

      else
      {
        v31 = 4;
      }
    }

    else
    {
      if (!v30)
      {
        v34 = v35[0];
        sub_100025668(v36, v35[0], type metadata accessor for CRLBoardLibraryViewModel.Folder);
        Hasher._combine(_:)(5uLL);
        sub_100F8ED58();
        sub_100026028(v34, type metadata accessor for CRLBoardLibraryViewModel.Folder);
LABEL_18:
        v32 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
        v33 = v37;
        goto LABEL_19;
      }

      v31 = v30 != 1;
    }

    Hasher._combine(_:)(v31);
    goto LABEL_18;
  }
}

uint64_t sub_100E9082C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1005B981C(&qword_1019FEF98);
  v43 = *(v3 - 8);
  v44 = v3;
  __chkstk_darwin(v3);
  v5 = &v39 - v4;
  v42 = type metadata accessor for UUID();
  v6 = *(v42 - 8);
  __chkstk_darwin(v42);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1005B981C(&qword_101A11C48);
  v10 = __chkstk_darwin(v9 - 8);
  v46 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v10);
  v14 = &v39 - v13;
  v15 = *v1;
  v16 = v1[1];
  v18 = v1[2];
  v17 = v1[3];
  v19 = v1[4];
  v39 = v5;
  v45 = v18;
  if (v19)
  {
    v41 = a1;
    v20 = v17;
LABEL_11:
    v40 = (v19 - 1) & v19;
    v24 = __clz(__rbit64(v19)) | (v20 << 6);
    v25 = v42;
    (*(v6 + 16))(v8, *(v15 + 48) + *(v6 + 72) * v24, v42);
    v26 = *(*(v15 + 56) + 8 * v24);
    v27 = *(v44 + 48);
    v28 = v8;
    v29 = v44;
    (*(v6 + 32))(v14, v28, v25);
    *&v14[v27] = v26;
    v30 = v43;
    (*(v43 + 56))(v14, 0, 1, v29);

    v31 = v40;
    a1 = v41;
    v23 = v20;
    v32 = v30;
LABEL_12:
    *v1 = v15;
    v1[1] = v16;
    v33 = v46;
    v1[2] = v45;
    v1[3] = v23;
    v1[4] = v31;
    v34 = v1[5];
    sub_10003DFF8(v14, v33, &qword_101A11C48);
    v35 = 1;
    if ((*(v32 + 48))(v33, 1, v29) != 1)
    {
      v36 = v33;
      v37 = v39;
      sub_10003DFF8(v36, v39, &qword_1019FEF98);
      v34(v37);
      sub_10000CAAC(v37, &qword_1019FEF98);
      v35 = 0;
    }

    v38 = sub_1005B981C(&qword_1019FEFC0);
    return (*(*(v38 - 8) + 56))(a1, v35, 1, v38);
  }

  else
  {
    v21 = (v18 + 64) >> 6;
    if (v21 <= v17 + 1)
    {
      v22 = v17 + 1;
    }

    else
    {
      v22 = (v18 + 64) >> 6;
    }

    v23 = v22 - 1;
    while (1)
    {
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v20 >= v21)
      {
        v32 = v43;
        v29 = v44;
        (*(v43 + 56))(&v39 - v13, 1, 1, v44);
        v31 = 0;
        goto LABEL_12;
      }

      v19 = *(v16 + 8 * v20);
      ++v17;
      if (v19)
      {
        v41 = a1;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100E90C10@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1005B981C(&qword_1019F6998);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v39 = &v38 - v5;
  v6 = sub_1005B981C(&qword_1019F6990);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v9 = &v38 - v8;
  v10 = sub_1005B981C(&unk_101A0B050);
  v11 = __chkstk_darwin(v10 - 8);
  v45 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v11);
  v15 = (&v38 - v14);
  v16 = *v1;
  v17 = v1[1];
  v19 = v1[2];
  v18 = v1[3];
  v20 = v1[4];
  v44 = v19;
  if (v20)
  {
    v42 = v4;
    v43 = a1;
    v21 = v3;
    v22 = v18;
LABEL_11:
    v40 = v16;
    v41 = (v20 - 1) & v20;
    v26 = __clz(__rbit64(v20)) | (v22 << 6);
    v27 = (*(v16 + 48) + 16 * v26);
    v28 = *v27;
    v29 = v27[1];
    sub_10000BE14(*(v16 + 56) + *(v7 + 72) * v26, v9, &qword_1019F6990);
    v30 = *(v21 + 48);
    *v15 = v28;
    v15[1] = v29;
    v3 = v21;
    sub_10003DFF8(v9, v15 + v30, &qword_1019F6990);
    v4 = v42;
    (*(v42 + 56))(v15, 0, 1, v3);

    v25 = v22;
    v32 = v40;
    v31 = v41;
    a1 = v43;
LABEL_12:
    *v1 = v32;
    v1[1] = v17;
    v33 = v45;
    v1[2] = v44;
    v1[3] = v25;
    v1[4] = v31;
    v34 = v1[5];
    sub_10003DFF8(v15, v33, &unk_101A0B050);
    v35 = 1;
    if ((*(v4 + 48))(v33, 1, v3) != 1)
    {
      v36 = v39;
      sub_10003DFF8(v33, v39, &qword_1019F6998);
      v34(v36);
      sub_10000CAAC(v36, &qword_1019F6998);
      v35 = 0;
    }

    v37 = sub_1005B981C(&qword_101A22780);
    return (*(*(v37 - 8) + 56))(a1, v35, 1, v37);
  }

  else
  {
    v23 = (v19 + 64) >> 6;
    if (v23 <= v18 + 1)
    {
      v24 = v18 + 1;
    }

    else
    {
      v24 = (v19 + 64) >> 6;
    }

    v25 = v24 - 1;
    while (1)
    {
      v22 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v22 >= v23)
      {
        v32 = v16;
        (*(v4 + 56))(v15, 1, 1, v3);
        v31 = 0;
        goto LABEL_12;
      }

      v20 = *(v17 + 8 * v22);
      ++v18;
      if (v20)
      {
        v42 = v4;
        v43 = a1;
        v21 = v3;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100E90FF4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1005B981C(&qword_1019FEFB8);
  v42 = *(v3 - 8);
  v43 = v3;
  __chkstk_darwin(v3);
  v5 = &v38 - v4;
  v41 = type metadata accessor for UUID();
  v6 = *(v41 - 8);
  __chkstk_darwin(v41);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1005B981C(&qword_101A22038);
  v10 = __chkstk_darwin(v9 - 8);
  v45 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v10);
  v14 = &v38 - v13;
  v15 = *v1;
  v16 = v1[1];
  v18 = v1[2];
  v17 = v1[3];
  v19 = v1[4];
  v38 = v5;
  v44 = v18;
  if (v19)
  {
    v40 = a1;
    v20 = v17;
LABEL_11:
    v39 = (v19 - 1) & v19;
    v24 = __clz(__rbit64(v19)) | (v20 << 6);
    v25 = v41;
    (*(v6 + 16))(v8, *(v15 + 48) + *(v6 + 72) * v24, v41);
    v26 = *(v43 + 48);
    v27 = *(v6 + 32);
    v46 = *(*(v15 + 56) + 16 * v24);
    v28 = v8;
    v29 = v43;
    v27(v14, v28, v25);
    *&v14[v26] = v46;
    v30 = v42;
    (*(v42 + 56))(v14, 0, 1, v29);
    swift_unknownObjectRetain();
    v31 = v39;
    a1 = v40;
    v23 = v20;
LABEL_12:
    *v1 = v15;
    v1[1] = v16;
    v32 = v45;
    v1[2] = v44;
    v1[3] = v23;
    v1[4] = v31;
    v33 = v1[5];
    sub_10003DFF8(v14, v32, &qword_101A22038);
    v34 = 1;
    if ((*(v30 + 48))(v32, 1, v29) != 1)
    {
      v35 = v32;
      v36 = v38;
      sub_10003DFF8(v35, v38, &qword_1019FEFB8);
      v33(v36);
      sub_10000CAAC(v36, &qword_1019FEFB8);
      v34 = 0;
    }

    v37 = sub_1005B981C(&qword_1019FEFB0);
    return (*(*(v37 - 8) + 56))(a1, v34, 1, v37);
  }

  else
  {
    v21 = (v18 + 64) >> 6;
    if (v21 <= v17 + 1)
    {
      v22 = v17 + 1;
    }

    else
    {
      v22 = (v18 + 64) >> 6;
    }

    v23 = v22 - 1;
    while (1)
    {
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v20 >= v21)
      {
        v30 = v42;
        v29 = v43;
        (*(v42 + 56))(&v38 - v13, 1, 1, v43);
        v31 = 0;
        goto LABEL_12;
      }

      v19 = *(v16 + 8 * v20);
      ++v17;
      if (v19)
      {
        v40 = a1;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_100E913E0(uint64_t a1@<X8>)
{
  v3 = sub_1005B981C(&qword_1019FEF90);
  v43 = *(v3 - 8);
  v44 = v3;
  __chkstk_darwin(v3);
  v5 = &v39 - v4;
  v42 = type metadata accessor for UUID();
  v6 = *(v42 - 8);
  __chkstk_darwin(v42);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1005B981C(&qword_101A21E48);
  __chkstk_darwin(v9 - 8);
  v46 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v14 = &v39 - v12;
  v15 = *v1;
  v16 = v1[1];
  v18 = v1[2];
  v17 = v1[3];
  v19 = v1[4];
  v39 = v5;
  v45 = v18;
  if (v19)
  {
    v41 = a1;
    v20 = v17;
LABEL_11:
    v40 = (v19 - 1) & v19;
    v24 = __clz(__rbit64(v19)) | (v20 << 6);
    v25 = v42;
    (*(v6 + 16))(v8, *(v15 + 48) + *(v6 + 72) * v24, v42, v13);
    v26 = *(*(v15 + 56) + 8 * v24);
    v27 = *(v44 + 48);
    v28 = v8;
    v29 = v44;
    (*(v6 + 32))(v14, v28, v25);
    *&v14[v27] = v26;
    v30 = v43;
    (*(v43 + 56))(v14, 0, 1, v29);

    v31 = v40;
    a1 = v41;
    v23 = v20;
    v32 = v30;
LABEL_12:
    *v1 = v15;
    v1[1] = v16;
    v33 = v46;
    v1[2] = v45;
    v1[3] = v23;
    v1[4] = v31;
    v34 = v1[5];
    sub_10003DFF8(v14, v33, &qword_101A21E48);
    v35 = 1;
    if ((*(v32 + 48))(v33, 1, v29) != 1)
    {
      v36 = v33;
      v37 = v39;
      sub_10003DFF8(v36, v39, &qword_1019FEF90);
      v34(v37);
      sub_10000CAAC(v37, &qword_1019FEF90);
      v35 = 0;
    }

    v38 = sub_1005B981C(&qword_1019FEF88);
    (*(*(v38 - 8) + 56))(a1, v35, 1, v38);
  }

  else
  {
    v21 = (v18 + 64) >> 6;
    if (v21 <= v17 + 1)
    {
      v22 = v17 + 1;
    }

    else
    {
      v22 = (v18 + 64) >> 6;
    }

    v23 = v22 - 1;
    while (1)
    {
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v20 >= v21)
      {
        v32 = v43;
        v29 = v44;
        (*(v43 + 56))(&v39 - v12, 1, 1, v44, v13);
        v31 = 0;
        goto LABEL_12;
      }

      v19 = *(v16 + 8 * v20);
      ++v17;
      if (v19)
      {
        v41 = a1;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

uint64_t sub_100E917C4(uint64_t a1, uint64_t a2)
{
  v62 = a1;
  v3 = sub_1005B981C(&qword_101A21C68);
  __chkstk_darwin(v3 - 8);
  v53 = &v47 - v4;
  v5 = type metadata accessor for CRLBoardCRDTData(0);
  v52 = *(v5 - 8);
  __chkstk_darwin(v5);
  v51 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v50 = &v47 - v8;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v47 - v14;
  v16 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v16 - 8);
  v49 = a2 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_boardIdentifier;
  v59 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C83C(a2 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_boardIdentifier, v59, type metadata accessor for CRLBoardIdentifier);
  v18 = (a2 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_minRequiredVersions);
  v19 = *(a2 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_minRequiredVersions);
  v57 = *(a2 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_minRequiredVersions + 16);
  v58 = v19;
  v56 = *(a2 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_minRequiredVersions + 32);
  v20 = OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_rootContainerUUID;
  swift_beginAccess();
  v21 = *(v10 + 16);
  v60 = v15;
  v21(v15, a2 + v20, v9);
  v22 = OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_alternateRootContainerUUID;
  swift_beginAccess();
  v61 = v12;
  v21(v12, a2 + v22, v9);
  v23 = 0;
  v55 = *(a2 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_isLocalTombstone);
  v54 = *(a2 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_hideFromRecentlyDeleted);
  v24 = (a2 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data);
  v25 = *(a2 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data + 8);
  if (v25 >> 60 != 15)
  {
    v26 = *v24;
    sub_100024E84(*v24, *(a2 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data + 8));
    sub_100024E84(v26, v25);
    sub_1000066D0(&unk_101A22E10, type metadata accessor for CRLBoardCRDTData);

    v27 = v53;
    CRDT.init(serializedData:)();
    (*(v52 + 7))(v27, 0, 1, v5);
    v52 = type metadata accessor for CRLBoardCRDTData;
    v28 = v50;
    sub_100025668(v27, v50, type metadata accessor for CRLBoardCRDTData);
    LODWORD(v53) = *(v18 + 32);
    v29 = v18[1];
    v48 = *v18;
    v47 = v29;
    v30 = v51;
    sub_10000C83C(v28, v51, type metadata accessor for CRLBoardCRDTData);
    v31 = (v49 + *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20));
    v33 = *v31;
    v32 = v31[1];
    type metadata accessor for CRLBoardData(0);
    v23 = swift_allocObject();

    sub_100025870(v26, v25);

    sub_100026028(v28, type metadata accessor for CRLBoardCRDTData);
    *(v23 + 16) = 7;
    *(v23 + 40) = v47;
    *(v23 + 24) = v48;
    *(v23 + 56) = v53;
    sub_100025668(v30, v23 + OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData, v52);
    v34 = (v23 + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
    *v34 = v33;
    v34[1] = v32;
  }

  v35 = *(a2 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_unsyncedChanges);
  v36 = *(a2 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_syncData);
  v37 = *(a2 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_syncData + 8);
  v64 = type metadata accessor for CRLBoardDataStore(0);
  v65 = &off_1018A4BB8;
  sub_100024E84(v36, v37);

  *&v63 = v62;
  type metadata accessor for CRLBoardSyncLocalChangeRecord(0);
  v38 = swift_allocObject();
  v39 = OBJC_IVAR____TtC8Freeform29CRLBoardSyncLocalChangeRecord_boardData;
  *(v38 + OBJC_IVAR____TtC8Freeform29CRLBoardSyncLocalChangeRecord_boardData) = 0;
  sub_100050F74(&v63, v38 + OBJC_IVAR____TtC8Freeform29CRLBoardSyncLocalChangeRecord_persistenceContext);
  *(v38 + v39) = v23;
  *(v38 + OBJC_IVAR____TtC8Freeform29CRLBoardSyncLocalChangeRecord_unsyncedChanges) = v35;
  *(v38 + OBJC_IVAR____TtC8Freeform29CRLBoardSyncLocalChangeRecord_unsyncedAssetUUIDs) = _swiftEmptySetSingleton;
  *(v38 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_syncData) = xmmword_101486780;
  sub_100025668(v59, v38 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
  v40 = v38 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_minRequiredVersions;
  v41 = v57;
  *v40 = v58;
  *(v40 + 16) = v41;
  *(v40 + 32) = v56;
  v42 = *(v10 + 32);
  v42(v38 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_rootContainerUUID, v60, v9);
  v42(v38 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_alternateRootContainerUUID, v61, v9);
  *(v38 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_tombstoned) = v55;
  *(v38 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_hideFromRecentlyDeleted) = v54;
  v43 = (v38 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_syncData);
  v44 = *(v38 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_syncData);
  v45 = *(v38 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_syncData + 8);
  sub_100024E84(v36, v37);
  *v43 = v36;
  v43[1] = v37;
  sub_100025870(v44, v45);
  sub_100025870(v36, v37);
  return v38;
}

uint64_t sub_100E91F48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v6;
  v7 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v7 - 8);
  v9 = &v37 - v8;
  v43 = &v37 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v41 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v12);
  v42 = *(a2 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_minRequiredVersions + 32);
  v47 = *(a2 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_objectOptions);
  v14 = *(a2 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_rawTypeValues);
  v45 = *(a2 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_rawTypeValues + 8);
  v46 = v14;
  v44 = *(a2 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_rawTypeValues + 16);
  v15 = OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_parentContainerUUID;
  v16 = *(a2 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_minRequiredVersions + 16);
  v40 = *(a2 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_minRequiredVersions);
  v39 = v16;
  swift_beginAccess();
  sub_10000BE14(a2 + v15, v9, &qword_1019F6990);
  sub_10000C83C(a2 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_boardIdentifier, v6, type metadata accessor for CRLBoardIdentifier);
  v49 = *(a2 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_isLocalTombstone);
  v17 = sub_100E929EC(a2);
  v19 = *(a2 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue);
  v18 = *(a2 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue + 8);
  v38 = *(a2 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_unsyncedChanges);
  v20 = *(a2 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData);
  v21 = *(a2 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData + 8);
  v51 = type metadata accessor for CRLBoardDataStore(0);
  v52 = &off_1018A4BB8;
  sub_100024E84(v19, v18);
  sub_100024E84(v20, v21);

  *&v50 = a1;
  type metadata accessor for CRLBoardItemSyncLocalChangeRecord(0);
  v22 = swift_allocObject();
  v23 = OBJC_IVAR____TtC8Freeform33CRLBoardItemSyncLocalChangeRecord_itemData;
  *(v22 + OBJC_IVAR____TtC8Freeform33CRLBoardItemSyncLocalChangeRecord_itemData) = 0;
  v24 = (v22 + OBJC_IVAR____TtC8Freeform33CRLBoardItemSyncLocalChangeRecord_ckMergeableRecordValueData);
  v37 = xmmword_101486780;
  *(v22 + OBJC_IVAR____TtC8Freeform33CRLBoardItemSyncLocalChangeRecord_ckMergeableRecordValueData) = xmmword_101486780;
  sub_100050F74(&v50, v22 + OBJC_IVAR____TtC8Freeform33CRLBoardItemSyncLocalChangeRecord_persistenceContext);
  *(v22 + v23) = v17;
  v25 = *v24;
  v26 = v24[1];
  *v24 = v19;
  v24[1] = v18;
  sub_100025870(v25, v26);
  *(v22 + OBJC_IVAR____TtC8Freeform33CRLBoardItemSyncLocalChangeRecord_unsyncedChanges) = v38;
  *(v22 + OBJC_IVAR____TtC8Freeform33CRLBoardItemSyncLocalChangeRecord_unsyncedAssetUUIDs) = _swiftEmptySetSingleton;
  v27 = OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_parentContainerUUID;
  (*(v11 + 56))(v22 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_parentContainerUUID, 1, 1, v10);
  *(v22 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_syncData) = v37;
  (*(v11 + 32))(v22 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_id, v41, v10);
  v28 = v22 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_minRequiredVersions;
  *(v28 + 32) = v42;
  v29 = v39;
  *v28 = v40;
  *(v28 + 16) = v29;
  v30 = v46;
  *(v22 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_objectOptions) = v47;
  v31 = v22 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_rawTypeValues;
  v32 = v45;
  *v31 = v30;
  *(v31 + 8) = v32;
  *(v31 + 16) = v44;
  swift_beginAccess();
  sub_10002C638(v43, v22 + v27, &qword_1019F6990);
  swift_endAccess();
  sub_100025668(v48, v22 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
  *(v22 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_tombstoned) = v49;
  v33 = (v22 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_syncData);
  v34 = *(v22 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_syncData);
  v35 = *(v22 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_syncData + 8);
  sub_100024E84(v20, v21);
  *v33 = v20;
  v33[1] = v21;
  sub_100025870(v34, v35);
  sub_100025870(v20, v21);
  return v22;
}

uint64_t sub_100E92454(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for CRLBoardDataStore(0);
  v37 = &off_1018A4BB8;
  *&v35 = a1;
  v34 = *(a2 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_bucketIndex);
  sub_10000C83C(a2 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_boardIdentifier, v6, type metadata accessor for CRLBoardIdentifier);
  v7 = *(a2 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_bucketData);
  v8 = *(a2 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_bucketData + 8);
  v9 = *(a2 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData);
  v10 = *(a2 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData + 8);
  v11 = *(a2 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData);
  v12 = *(a2 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData + 8);
  v13 = *(a2 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_minRequiredVersions + 32);
  v32 = *(a2 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_minRequiredVersions + 40);
  v33 = v13;
  v31 = *(a2 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_minRequiredVersions + 48);
  v14 = *(a2 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_unsyncedChanges);
  v15 = *(a2 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_minRequiredVersions);
  v29 = *(a2 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_minRequiredVersions + 16);
  v30 = v15;
  sub_100024E98(v7, v8);
  sub_100024E84(v9, v10);
  sub_100024E84(v11, v12);

  type metadata accessor for CRLFreehandDrawingBucketSyncLocalChangeRecord(0);
  v16 = swift_allocObject();
  v17 = (v16 + OBJC_IVAR____TtC8Freeform45CRLFreehandDrawingBucketSyncLocalChangeRecord_ckMergeableRecordValueData);
  v28 = xmmword_101486780;
  *(v16 + OBJC_IVAR____TtC8Freeform45CRLFreehandDrawingBucketSyncLocalChangeRecord_ckMergeableRecordValueData) = xmmword_101486780;
  sub_100050F74(&v35, v16 + OBJC_IVAR____TtC8Freeform45CRLFreehandDrawingBucketSyncLocalChangeRecord_persistenceContext);
  v18 = (v16 + OBJC_IVAR____TtC8Freeform45CRLFreehandDrawingBucketSyncLocalChangeRecord_bucketData);
  *v18 = v7;
  v18[1] = v8;
  v19 = *v17;
  v20 = v17[1];
  *v17 = v11;
  v17[1] = v12;
  sub_100025870(v19, v20);
  *(v16 + OBJC_IVAR____TtC8Freeform45CRLFreehandDrawingBucketSyncLocalChangeRecord_unsyncedChanges) = v14;
  v21 = v16 + OBJC_IVAR____TtC8Freeform45CRLFreehandDrawingBucketSyncLocalChangeRecord_minRequiredVersions;
  v22 = v29;
  *v21 = v30;
  *(v21 + 16) = v22;
  v23 = v32;
  *(v21 + 32) = v33;
  *(v21 + 40) = v23;
  *(v21 + 48) = v31;
  *(v16 + OBJC_IVAR____TtC8Freeform34CRLFreehandDrawingBucketSyncRecord_syncData) = v28;
  sub_100025668(v6, v16 + OBJC_IVAR____TtC8Freeform34CRLFreehandDrawingBucketSyncRecord_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
  *(v16 + OBJC_IVAR____TtC8Freeform34CRLFreehandDrawingBucketSyncRecord_bucketIndex) = v34;
  v24 = (v16 + OBJC_IVAR____TtC8Freeform34CRLFreehandDrawingBucketSyncRecord_syncData);
  v25 = *(v16 + OBJC_IVAR____TtC8Freeform34CRLFreehandDrawingBucketSyncRecord_syncData);
  v26 = *(v16 + OBJC_IVAR____TtC8Freeform34CRLFreehandDrawingBucketSyncRecord_syncData + 8);
  sub_100024E84(v9, v10);
  *v24 = v9;
  v24[1] = v10;
  sub_100025870(v25, v26);
  sub_100025870(v9, v10);
  return v16;
}

uint64_t sub_100E92710(uint64_t a1)
{
  v2 = _s6CellIDVMa(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v13 - v7;
  v9 = *(a1 + 16);
  sub_1000066D0(&qword_101A21DA8, _s6CellIDVMa);
  result = Set.init(minimumCapacity:)();
  v14 = result;
  if (v9)
  {
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);
    do
    {
      sub_10000C83C(v11, v5, _s6CellIDVMa);
      sub_100E6AB44(v8, v5);
      sub_100026028(v8, _s6CellIDVMa);
      v11 += v12;
      --v9;
    }

    while (v9);
    return v14;
  }

  return result;
}

sqlite3_stmt *sub_100E928A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  LODWORD(v7) = a3;
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (!result)
  {
LABEL_4:
    v12 = __OFSUB__(a2, a1);
    v13 = a2 - a1;
    if (v12)
    {
      __break(1u);
    }

    else
    {
      v14 = __DataStorage._length.getter();
      if (v14 >= v13)
      {
        v7 = v13;
      }

      else
      {
        v7 = v14;
      }

      result = swift_beginAccess();
      if (a5 >= 0xFFFFFFFF80000000)
      {
        if (a5 <= 0x7FFFFFFF)
        {
          if (!v11)
          {
            v7 = 0;
          }

          if (v7 >= 0xFFFFFFFF80000000)
          {
            if (v7 <= 0x7FFFFFFF)
            {
              result = *(a4 + 24);
              if (qword_1019F17C8 == -1)
              {
                return sqlite3_bind_blob(result, a5, v11, v7, qword_101AD69D0);
              }

LABEL_21:
              v15 = result;
              swift_once();
              result = v15;
              return sqlite3_bind_blob(result, a5, v11, v7, qword_101AD69D0);
            }

LABEL_20:
            __break(1u);
            goto LABEL_21;
          }

LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

LABEL_18:
        __break(1u);
        goto LABEL_19;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

  result = __DataStorage._offset.getter();
  if (!__OFSUB__(a1, result))
  {
    v11 = (v11 + a1 - result);
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

uint64_t *sub_100E929EC(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData + 8);
  if (v1 >> 60 == 15)
  {
    return 0;
  }

  v2 = *(a1 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData);
  v67 = (a1 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_minRequiredVersions);
  v3 = *(a1 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_minRequiredVersions);
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  *&v70 = &type metadata for UInt64;
  sub_100024E98(v2, v1);
  sub_1005B981C(&qword_101A21C70);
  String.init<A>(describing:)();
  v5 = String._bridgeToObjectiveC()();

  v6 = sub_100006370(0, &qword_1019F4D30);
  *(inited + 56) = v6;
  v7 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
  *(inited + 32) = v5;
  v8 = inited + 32;
  v9 = inited;
  *(inited + 64) = v7;
  v69 = v2;
  if (v3)
  {

LABEL_32:
    v8 = sub_100A0557C(*(a1 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_rawTypeValues), *(a1 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_rawTypeValues + 8), *(a1 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_rawTypeValues + 16));
    v29 = v48;
    LOWORD(v28) = v49;
    if ((v49 & 0x10000) != 0)
    {
      if (qword_1019F2258 != -1)
      {
        goto LABEL_43;
      }

      goto LABEL_36;
    }

    v50 = *(a1 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData + 8);
    if (v50 >> 60 == 15)
    {
      sub_100025870(v69, v1);
      return 0;
    }

    v58 = *(a1 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData);
    v59 = v67[1];
    v70 = *v67;
    v71 = v59;
    v72 = *(v67 + 32);
    v60 = *(a1 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_objectOptions);
    v61 = *(a1 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData);
    v62 = *(a1 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData + 8);
    sub_100024E84(v58, v50);
    sub_100024E84(v61, v62);
    v63 = sub_100B69CC0(v8, v29, v28 & 0x1FF, &v70, v60, v69, v1, v58, v50, v61, v62);
    sub_100025870(v61, v62);
    sub_100025870(v58, v50);
    sub_100025870(v69, v1);
    return v63;
  }

  v10 = v7;
  v65 = v1;
  v64 = objc_opt_self();
  v66 = [v64 _atomicIncrementAssertCount];
  *&v70 = [objc_allocWithZone(NSString) init];
  sub_100604538(inited, &v70);
  StaticString.description.getter();
  v11 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v12 = v9;
  v13 = String._bridgeToObjectiveC()();

  v14 = [v13 lastPathComponent];

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v18 = static OS_os_log.crlAssert;
  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_10146CA70;
  *(v19 + 56) = &type metadata for Int32;
  *(v19 + 64) = &protocol witness table for Int32;
  *(v19 + 32) = v66;
  *(v19 + 96) = v6;
  *(v19 + 104) = v10;
  *(v19 + 72) = v11;
  *(v19 + 136) = &type metadata for String;
  v20 = sub_1000053B0();
  *(v19 + 112) = v15;
  *(v19 + 120) = v17;
  *(v19 + 176) = &type metadata for UInt;
  *(v19 + 184) = &protocol witness table for UInt;
  *(v19 + 144) = v20;
  *(v19 + 152) = 11651;
  v21 = v70;
  *(v19 + 216) = v6;
  *(v19 + 224) = v10;
  *(v19 + 192) = v21;
  v22 = v11;
  v23 = v21;
  v24 = static os_log_type_t.error.getter();
  sub_100005404(v18, &_mh_execute_header, v24, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v19);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v25 = static os_log_type_t.error.getter();
  sub_100005404(v18, &_mh_execute_header, v25, "expected inequality between two values of type %{public}@", 57, 2, v12);

  type metadata accessor for __VaListBuilder();
  v26 = swift_allocObject();
  v26[2] = 8;
  v26[3] = 0;
  v27 = v26 + 3;
  v26[4] = 0;
  v26[5] = 0;
  v28 = *(v12 + 16);
  if (!v28)
  {
LABEL_31:
    v44 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v45 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v46 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v47 = String._bridgeToObjectiveC()();

    [v64 handleFailureInFunction:v45 file:v46 lineNumber:11651 isFatal:0 format:v47 args:v44];

    v1 = v65;
    goto LABEL_32;
  }

  v1 = 0;
  while (1)
  {
    v29 = sub_100020E58((v8 + 40 * v1), *(v8 + 40 * v1 + 24));
    v30 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v31 = *v27;
    v32 = *(v30 + 16);
    v33 = __OFADD__(*v27, v32);
    v34 = *v27 + v32;
    if (v33)
    {
      break;
    }

    v35 = v26[4];
    if (v35 >= v34)
    {
      goto LABEL_23;
    }

    if (v35 + 0x4000000000000000 < 0)
    {
      goto LABEL_41;
    }

    v29 = v26[5];
    if (2 * v35 > v34)
    {
      v34 = 2 * v35;
    }

    v26[4] = v34;
    if ((v34 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_42;
    }

    v36 = v30;
    v37 = swift_slowAlloc();
    v38 = v37;
    v26[5] = v37;
    if (v29)
    {
      if (v37 != v29 || v37 >= &v29[v31])
      {
        memmove(v37, v29, 8 * v31);
      }

      v29 = v26;
      __VaListBuilder.deallocStorage(wordCount:storage:)();
      v30 = v36;
LABEL_23:
      v38 = v26[5];
      if (!v38)
      {
        goto LABEL_30;
      }

      goto LABEL_24;
    }

    v30 = v36;
    if (!v38)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

LABEL_24:
    v40 = *(v30 + 16);
    if (v40)
    {
      v41 = (v30 + 32);
      v42 = *v27;
      while (1)
      {
        v43 = *v41++;
        v38[v42] = v43;
        v42 = *v27 + 1;
        if (__OFADD__(*v27, 1))
        {
          break;
        }

        *v27 = v42;
        if (!--v40)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
      break;
    }

LABEL_8:

    if (++v1 == v28)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  swift_once();
LABEL_36:
  v51 = static OS_os_log.boardStore;
  v52 = swift_initStackObject();
  *(v52 + 16) = xmmword_10146C6B0;
  *&v70 = v8;
  *(&v70 + 1) = v29;
  LOWORD(v71) = v28;
  BYTE2(v71) = 1;
  v53 = String.init<A>(describing:)();
  v55 = v54;
  *(v52 + 56) = &type metadata for String;
  *(v52 + 64) = sub_1000053B0();
  *(v52 + 32) = v53;
  *(v52 + 40) = v55;
  v56 = static os_log_type_t.error.getter();
  sub_100005404(v51, &_mh_execute_header, v56, "Database record has invalid board item type: %@", 47, 2, v52);
  sub_100025870(v69, v1);
  swift_setDeallocating();
  sub_100005070(v52 + 32);
  return 0;
}

uint64_t sub_100E931D8(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {

    v3._countAndFlagsBits = 46;
    v3._object = 0xE100000000000000;
    String.append(_:)(v3);
    v5 = a1;
    v4 = a2;
  }

  else
  {
    v5 = 0;
    v4 = 0xE000000000000000;
  }

  _StringGuts.grow(_:)(34);

  v6._countAndFlagsBits = 0xD000000000000013;
  v6._object = 0x80000001015A3FA0;
  String.append(_:)(v6);
  v7._countAndFlagsBits = 8236;
  v7._object = 0xE200000000000000;
  String.append(_:)(v7);
  v8._countAndFlagsBits = v5;
  v8._object = v4;
  String.append(_:)(v8);
  v9._object = 0x8000000101585360;
  v9._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 8236;
  v10._object = 0xE200000000000000;
  String.append(_:)(v10);
  v11._countAndFlagsBits = v5;
  v11._object = v4;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 0xD000000000000013;
  v12._object = 0x80000001015A3FC0;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 8236;
  v13._object = 0xE200000000000000;
  String.append(_:)(v13);
  v14._countAndFlagsBits = v5;
  v14._object = v4;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0x75755F7465737361;
  v15._object = 0xEA00000000006469;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 8236;
  v16._object = 0xE200000000000000;
  String.append(_:)(v16);
  v17._countAndFlagsBits = v5;
  v17._object = v4;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0x7265727265666572;
  v18._object = 0xED0000657079745FLL;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 8236;
  v19._object = 0xE200000000000000;
  String.append(_:)(v19);
  v20._countAndFlagsBits = v5;
  v20._object = v4;
  String.append(_:)(v20);

  v21._object = 0x80000001015A33D0;
  v21._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v21);
  return v5;
}

uint64_t sub_100E933E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A21D08);
  __chkstk_darwin(v4 - 8);
  v44 = &v38 - v5;
  v6 = type metadata accessor for CRLAssetReferrerIdentifier(0);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v43 = &v38 - v11;
  v12 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v12 - 8);
  v14 = &v38 - v13;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  __chkstk_darwin(v17);
  v20 = &v38 - v19;
  result = a2 + 2;
  if (__OFADD__(a2, 2))
  {
    __break(1u);
    goto LABEL_18;
  }

  v42 = v18;
  v22 = sub_10089C2BC(result, a1);
  if (v23)
  {
    v24 = v22;
    result = a2 + 3;
    if (!__OFADD__(a2, 3))
    {
      v25 = v23;
      v40 = v24;
      v41 = v10;
      sub_100083B64(result, a1, v14);
      if ((*(v16 + 48))(v14, 1, v15) == 1)
      {

        v26 = &qword_1019F6990;
LABEL_8:
        sub_10000CAAC(v14, v26);
        return 0;
      }

      v39 = *(v16 + 32);
      v39(v20, v14, v15);

      v14 = v44;
      sub_1005C6064(v27, a2, v44);
      if ((*(v7 + 48))(v14, 1, v6) == 1)
      {
        (*(v16 + 8))(v20, v15);

        v26 = &qword_101A21D08;
        goto LABEL_8;
      }

      v28 = v43;
      sub_100025668(v14, v43, type metadata accessor for CRLAssetReferrerIdentifier);
      result = a2 + 5;
      if (!__OFADD__(a2, 5))
      {
        v29 = sub_100028894(result, a1);
        v31 = v30;

        if ((v31 & 1) == 0)
        {
          v32 = v28;
          v33 = v41;
          sub_100025668(v32, v41, type metadata accessor for CRLAssetReferrerIdentifier);
          v34 = v42;
          v35 = v39;
          v39(v42, v20, v15);
          type metadata accessor for CRLAssetReferenceDatabaseRow(0);
          v36 = swift_allocObject();
          sub_100025668(v33, v36 + OBJC_IVAR____TtC8Freeform28CRLAssetReferenceDatabaseRow_referrerIdentifier, type metadata accessor for CRLAssetReferrerIdentifier);
          v37 = (v36 + OBJC_IVAR____TtC8Freeform28CRLAssetReferenceDatabaseRow_referrerAssetName);
          *v37 = v40;
          v37[1] = v25;
          v35(v36 + OBJC_IVAR____TtC8Freeform28CRLAssetReferenceDatabaseRow_assetUUID, v34, v15);
          result = v36;
          *(v36 + OBJC_IVAR____TtC8Freeform28CRLAssetReferenceDatabaseRow_unsyncedChanges) = v29;
          return result;
        }

        sub_100026028(v28, type metadata accessor for CRLAssetReferrerIdentifier);
        (*(v16 + 8))(v20, v15);
        return 0;
      }

LABEL_19:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  return 0;
}

void *sub_100E938DC(unint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t *, uint64_t, uint64_t))
{
  v17 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
LABEL_18:
    v6 = _CocoaArrayWrapper.endIndex.getter();
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_3:
      v7 = 0;
      v8 = _swiftEmptyArrayStorage;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v10 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
LABEL_15:
            __break(1u);
LABEL_16:

            return v8;
          }
        }

        else
        {
          if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_18;
          }

          v9 = *(a1 + 8 * v7 + 32);

          v10 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_15;
          }
        }

        v16 = v9;
        a4(&v15, &v16, a2, a3);
        if (v4)
        {
          goto LABEL_16;
        }

        if (v15)
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v8 = v17;
        }

        ++v7;
        if (v10 == v6)
        {
          return v8;
        }
      }
    }
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_100E93A84(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID);
  result = Set.init(minimumCapacity:)();
  v17 = result;
  if (v9)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v6, v14, v2);
      sub_100E6AF38(v8, v6);
      (*(v11 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

uint64_t sub_100E93C20(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  while (1)
  {
    type metadata accessor for CRLBoardItem(0);
    sub_1000066D0(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
    result = Set.init(minimumCapacity:)();
    v9 = result;
    if (i)
    {
      break;
    }

    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }

LABEL_6:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v6 = *(a1 + 8 * i + 32);
      }

      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_100E72958(&v8, v6, type metadata accessor for CRLBoardItem, &qword_1019F37D8, &unk_1014C5ED0, type metadata accessor for CRLBoardItem);

      if (v7 == v4)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    _CocoaArrayWrapper.endIndex.getter();
  }

  v5 = result;
  v4 = _CocoaArrayWrapper.endIndex.getter();
  result = v5;
  if (v4)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_100E93DC8(unint64_t a1)
{
  v2 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  while (1)
  {
    sub_100006370(0, &qword_1019FB7A0);
    sub_10000FDE0(&qword_1019F5048, &qword_1019FB7A0);
    result = Set.init(minimumCapacity:)();
    v10 = result;
    if (v2)
    {
      break;
    }

    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }

LABEL_6:
    v6 = 0;
    v2 = off_10182F798;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      sub_100E7227C(&v9, v7, &qword_1019FB7A0, off_10182F798, &unk_1019F3720, &unk_101468B00);

      ++v6;
      if (v8 == v4)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    _CocoaArrayWrapper.endIndex.getter();
  }

  v5 = result;
  v4 = _CocoaArrayWrapper.endIndex.getter();
  result = v5;
  if (v4)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_100E93F68(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_100EA2F30();
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = a1 + 32;
    do
    {
      sub_10063FD8C(v4, v5);
      sub_100E6CD34(v6, v5);
      sub_10063FDE8(v6);
      v4 += 48;
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_100E93FF4(uint64_t a1)
{
  v2 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v13 - v7;
  v9 = *(a1 + 16);
  sub_1000066D0(&qword_1019F66A0, type metadata accessor for CRLBoardLibraryViewModel.Item);
  result = Set.init(minimumCapacity:)();
  v14 = result;
  if (v9)
  {
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);
    do
    {
      sub_10000C83C(v11, v6, type metadata accessor for CRLBoardLibraryViewModel.Item);
      sub_100E6DFC0(v8, v6);
      sub_100026028(v8, type metadata accessor for CRLBoardLibraryViewModel.Item);
      v11 += v12;
      --v9;
    }

    while (v9);
    return v14;
  }

  return result;
}

uint64_t sub_100E94184(uint64_t a1)
{
  v2 = type metadata accessor for CRLPreviewImages.Item(0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v13 - v7;
  v9 = *(a1 + 16);
  sub_1000066D0(&qword_1019FAA38, type metadata accessor for CRLPreviewImages.Item);
  result = Set.init(minimumCapacity:)();
  v14 = result;
  if (v9)
  {
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);
    do
    {
      sub_10000C83C(v11, v6, type metadata accessor for CRLPreviewImages.Item);
      sub_100E6EC58(v8, v6);
      sub_100026028(v8, type metadata accessor for CRLPreviewImages.Item);
      v11 += v12;
      --v9;
    }

    while (v9);
    return v14;
  }

  return result;
}

uint64_t sub_100E94314(uint64_t a1)
{
  v2 = type metadata accessor for CRLFolderIdentifier(0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v13 - v7;
  v9 = *(a1 + 16);
  sub_1000066D0(&qword_101A21C80, type metadata accessor for CRLFolderIdentifier);
  result = Set.init(minimumCapacity:)();
  v14 = result;
  if (v9)
  {
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);
    do
    {
      sub_10000C83C(v11, v6, type metadata accessor for CRLFolderIdentifier);
      sub_100E70750(v8, v6);
      sub_100026028(v8, type metadata accessor for CRLFolderIdentifier);
      v11 += v12;
      --v9;
    }

    while (v9);
    return v14;
  }

  return result;
}

uint64_t sub_100E944A4(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  while (1)
  {
    type metadata accessor for CRLFreehandDrawingShapeItem();
    sub_1000066D0(&qword_101A21DC8, type metadata accessor for CRLFreehandDrawingShapeItem);
    result = Set.init(minimumCapacity:)();
    v9 = result;
    if (i)
    {
      break;
    }

    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }

LABEL_6:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v6 = *(a1 + 8 * i + 32);
      }

      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_100E72958(&v8, v6, type metadata accessor for CRLFreehandDrawingShapeItem, &qword_101A21DD0, &unk_1014B6738, type metadata accessor for CRLFreehandDrawingShapeItem);

      if (v7 == v4)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    _CocoaArrayWrapper.endIndex.getter();
  }

  v5 = result;
  v4 = _CocoaArrayWrapper.endIndex.getter();
  result = v5;
  if (v4)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_100E9464C(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  while (1)
  {
    type metadata accessor for CRLiOSMiniFormatterBuilder();
    sub_1000066D0(&qword_101A0E898, type metadata accessor for CRLiOSMiniFormatterBuilder);
    result = Set.init(minimumCapacity:)();
    v9 = result;
    if (i)
    {
      break;
    }

    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }

LABEL_6:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v6 = *(a1 + 8 * i + 32);
      }

      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_100E72958(&v8, v6, type metadata accessor for CRLiOSMiniFormatterBuilder, &qword_101A22050, &unk_1014B6B78, type metadata accessor for CRLiOSMiniFormatterBuilder);

      if (v7 == v4)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    _CocoaArrayWrapper.endIndex.getter();
  }

  v5 = result;
  v4 = _CocoaArrayWrapper.endIndex.getter();
  result = v5;
  if (v4)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_100E947F4(uint64_t a1)
{
  v2 = type metadata accessor for CRLBoardIdentifierAndValue(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v13 - v7;
  v9 = *(a1 + 16);
  sub_1000066D0(&qword_101A22060, type metadata accessor for CRLBoardIdentifierAndValue);
  result = Set.init(minimumCapacity:)();
  v14 = result;
  if (v9)
  {
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);
    do
    {
      sub_10000C83C(v11, v5, type metadata accessor for CRLBoardIdentifierAndValue);
      sub_100E6F088(v8, v5);
      sub_100026028(v8, type metadata accessor for CRLBoardIdentifierAndValue);
      v11 += v12;
      --v9;
    }

    while (v9);
    return v14;
  }

  return result;
}

uint64_t sub_100E94984(unint64_t a1)
{
  v2 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  while (1)
  {
    sub_100006370(0, &qword_1019F69D0);
    sub_10000FDE0(&qword_1019F69D8, &qword_1019F69D0);
    result = Set.init(minimumCapacity:)();
    v10 = result;
    if (v2)
    {
      break;
    }

    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }

LABEL_6:
    v6 = 0;
    v2 = CKRecordZoneID_ptr;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      sub_100E7227C(&v9, v7, &qword_1019F69D0, CKRecordZoneID_ptr, &unk_1019F3540, &unk_1014B6540);

      ++v6;
      if (v8 == v4)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    _CocoaArrayWrapper.endIndex.getter();
  }

  v5 = result;
  v4 = _CocoaArrayWrapper.endIndex.getter();
  result = v5;
  if (v4)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_100E94B24(unint64_t a1)
{
  v2 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  while (1)
  {
    sub_100006370(0, &qword_1019F4D70);
    sub_10000FDE0(&qword_1019F69E8, &qword_1019F4D70);
    result = Set.init(minimumCapacity:)();
    v10 = result;
    if (v2)
    {
      break;
    }

    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }

LABEL_6:
    v6 = 0;
    v2 = NSLayoutConstraint_ptr;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      sub_100E7227C(&v9, v7, &qword_1019F4D70, NSLayoutConstraint_ptr, &qword_101A22000, &unk_1014B6AF0);

      ++v6;
      if (v8 == v4)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    _CocoaArrayWrapper.endIndex.getter();
  }

  v5 = result;
  v4 = _CocoaArrayWrapper.endIndex.getter();
  result = v5;
  if (v4)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_100E94CC4(uint64_t a1)
{
  v2 = type metadata accessor for UTType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  sub_1000066D0(&unk_101A22910, &type metadata accessor for UTType);
  result = Set.init(minimumCapacity:)();
  v17 = result;
  if (v9)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v5, v14, v2);
      sub_100E715B0(v8, v5);
      (*(v11 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

uint64_t sub_100E94E60(uint64_t a1)
{
  v2 = type metadata accessor for CRLSELibraryViewModel.Item(0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v13 - v7;
  v9 = *(a1 + 16);
  sub_1000066D0(&qword_101A21FE8, type metadata accessor for CRLSELibraryViewModel.Item);
  result = Set.init(minimumCapacity:)();
  v14 = result;
  if (v9)
  {
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);
    do
    {
      sub_10000C83C(v11, v6, type metadata accessor for CRLSELibraryViewModel.Item);
      sub_100E71890(v8, v6);
      sub_100026028(v8, type metadata accessor for CRLSELibraryViewModel.Item);
      v11 += v12;
      --v9;
    }

    while (v9);
    return v14;
  }

  return result;
}

uint64_t sub_100E94FF0(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_100068328();
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = a1 + 32;
    do
    {
      v5 = *(v4 + 16);
      v9[0] = *v4;
      v9[1] = v5;
      v9[2] = *(v4 + 32);
      v10 = *(v4 + 48);
      sub_1000693DC(v9, v6);
      sub_100E6CEB8(v6, v9);
      sub_1000771BC(v6[0], v6[1], v6[2], v6[3], v6[4], v6[5], v7);
      v4 += 56;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_100E950A0(uint64_t a1)
{
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  sub_1000066D0(&unk_101A23C60, &type metadata accessor for IndexPath);
  result = Set.init(minimumCapacity:)();
  v17 = result;
  if (v9)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v6, v14, v2);
      sub_100E724F0(v8, v6);
      (*(v11 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

uint64_t sub_100E9523C(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  while (1)
  {
    type metadata accessor for CRLSceneInfo();
    sub_1000066D0(&qword_101A28670, type metadata accessor for CRLSceneInfo);
    result = Set.init(minimumCapacity:)();
    v9 = result;
    if (i)
    {
      break;
    }

    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }

LABEL_6:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v6 = *(a1 + 8 * i + 32);
      }

      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_100E72958(&v8, v6, type metadata accessor for CRLSceneInfo, &qword_1019F3688, &unk_1014B6860, type metadata accessor for CRLSceneInfo);

      if (v7 == v4)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    _CocoaArrayWrapper.endIndex.getter();
  }

  v5 = result;
  v4 = _CocoaArrayWrapper.endIndex.getter();
  result = v5;
  if (v4)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_100E953E4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = a1 + 32;
    do
    {
      sub_100064110(v4, v5);
      sub_100E7280C(v6, v5);
      sub_100064234(v6);
      v4 += 40;
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_100E95470(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  while (1)
  {
    type metadata accessor for CRLCollaborationParticipant(0);
    sub_1000066D0(&qword_101A00E38, type metadata accessor for CRLCollaborationParticipant);
    result = Set.init(minimumCapacity:)();
    v9 = result;
    if (i)
    {
      break;
    }

    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }

LABEL_6:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v6 = *(a1 + 8 * i + 32);
      }

      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_100E72958(&v8, v6, type metadata accessor for CRLCollaborationParticipant, &qword_101A21E50, &unk_1014B6808, type metadata accessor for CRLCollaborationParticipant);

      if (v7 == v4)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    _CocoaArrayWrapper.endIndex.getter();
  }

  v5 = result;
  v4 = _CocoaArrayWrapper.endIndex.getter();
  result = v5;
  if (v4)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_100E95618(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  while (1)
  {
    type metadata accessor for CRLShapeItem();
    sub_1000066D0(&qword_101A21DB8, type metadata accessor for CRLShapeItem);
    result = Set.init(minimumCapacity:)();
    v9 = result;
    if (i)
    {
      break;
    }

    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }

LABEL_6:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v6 = *(a1 + 8 * i + 32);
      }

      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_100E72958(&v8, v6, type metadata accessor for CRLShapeItem, &qword_101A21DC0, &unk_1014B6730, type metadata accessor for CRLShapeItem);

      if (v7 == v4)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    _CocoaArrayWrapper.endIndex.getter();
  }

  v5 = result;
  v4 = _CocoaArrayWrapper.endIndex.getter();
  result = v5;
  if (v4)
  {
    goto LABEL_6;
  }

  return result;
}

void sub_100E957C0(unint64_t a1, unint64_t *a2, char *a3)
{
  v7 = sub_1005B981C(&qword_101A0B040);
  __chkstk_darwin(v7 - 8);
  v91 = &v67 - v8;
  v89 = sub_1005B981C(&qword_1019FBED8);
  v69 = *(v89 - 8);
  __chkstk_darwin(v89);
  v71 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v70 = &v67 - v11;
  v12 = sub_1005B981C(&qword_101A0EF20);
  v87 = *(v12 - 8);
  v88 = v12;
  __chkstk_darwin(v12);
  isUniquelyReferenced_nonNull_native = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = (&v67 - v16);
  v95 = type metadata accessor for UUID();
  v72 = *(v95 - 8);
  __chkstk_darwin(v95);
  v96 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v3;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v20 = 0;
    v80 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManagerLock;
    v21 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager;
    v85 = a1 & 0xFFFFFFFFFFFFFF8;
    v86 = a1 & 0xC000000000000001;
    v93 = (v72 + 16);
    v79 = (v69 + 56);
    v78 = (v69 + 48);
    v74 = (v72 + 8);
    v84 = a3;
    v82 = isUniquelyReferenced_nonNull_native;
    v75 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager;
    v83 = a2;
    v77 = a1;
    v81 = v17;
    v76 = i;
    while (v86)
    {
      v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        goto LABEL_40;
      }

LABEL_9:
      v94 = v23;
      v24 = OBJC_IVAR____TtC8Freeform19CRLAssetDatabaseRow_assetUUID;
      v92 = *v93;
      v92(v96, v22 + OBJC_IVAR____TtC8Freeform19CRLAssetDatabaseRow_assetUUID, v95);
      *v17 = v22;
      v25 = *&a3[v80];
      v26 = *(v25 + 16);

      os_unfair_lock_lock(v26);
      v27 = *&a3[v21];
      if (v27)
      {
        v28 = *&a3[v21];
      }

      else
      {
        v29 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager());
        v30 = a3;
        v31 = sub_10001F1A0(v30);

        v32 = *&a3[v21];
        *&a3[v21] = v31;
        v28 = v31;

        v27 = 0;
      }

      v33 = *(v25 + 16);
      v34 = v27;
      os_unfair_lock_unlock(v33);
      v35 = *(v22 + OBJC_IVAR____TtC8Freeform19CRLAssetDatabaseRow_fileExtension + 8);
      v90 = *(v22 + OBJC_IVAR____TtC8Freeform19CRLAssetDatabaseRow_fileExtension);
      v36 = *&v28[OBJC_IVAR____TtC8Freeform19CRLAssetFileManager_lock];
      os_unfair_lock_lock(*(v36 + 16));
      v37 = OBJC_IVAR____TtC8Freeform19CRLAssetFileManager_assetFileURLCache;
      swift_beginAccess();
      v38 = *&v28[v37];
      if (*(v38 + 16))
      {

        v39 = sub_10003E994(v22 + v24);
        if (v40)
        {
          sub_10000BE14(*(v38 + 56) + *(v69 + 72) * v39, v91, &qword_1019FBED8);
          v41 = 0;
        }

        else
        {
          v41 = 1;
        }
      }

      else
      {
        v41 = 1;
      }

      v42 = v91;
      v43 = v41;
      v44 = v89;
      (*v79)(v91, v43, 1, v89);
      v45 = *(v88 + 48);
      os_unfair_lock_unlock(*(v36 + 16));
      if ((*v78)(v42, 1, v44) == 1)
      {
        v73 = v45;
        sub_10000CAAC(v42, &qword_101A0B040);
        UUID.uuidString.getter();
        if (v35)
        {
          v46 = HIBYTE(v35) & 0xF;
          if ((v35 & 0x2000000000000000) == 0)
          {
            v46 = v90 & 0xFFFFFFFFFFFFLL;
          }

          if (v46)
          {
            v47 = String._bridgeToObjectiveC()();
            v48 = String._bridgeToObjectiveC()();
            v49 = [v47 stringByAppendingPathExtension:v48];

            if (v49)
            {

              static String._unconditionallyBridgeFromObjectiveC(_:)();
            }
          }
        }

        a2 = v83;
        a3 = v84;
        v50 = v81;
        URL.appendingPathComponent(_:)();

        v17 = v50;
      }

      else
      {

        v51 = v70;
        sub_10003DFF8(v42, v70, &qword_1019FBED8);
        v52 = v51;
        v53 = v71;
        sub_10003DFF8(v52, v71, &qword_1019FBED8);
        v54 = type metadata accessor for URL();
        v17 = v81;
        (*(*(v54 - 8) + 32))(v81 + v45, v53, v54);
        a2 = v83;
        a3 = v84;
      }

      v55 = v82;
      sub_10003DFF8(v17, v82, &qword_101A0EF20);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v97 = *a2;
      a1 = v97;
      v56 = sub_10003E994(v96);
      v58 = *(a1 + 16);
      v59 = (v57 & 1) == 0;
      v60 = __OFADD__(v58, v59);
      v61 = v58 + v59;
      if (v60)
      {
        goto LABEL_42;
      }

      v62 = v57;
      if (*(a1 + 24) < v61)
      {
        sub_100A97918(v61, isUniquelyReferenced_nonNull_native);
        v56 = sub_10003E994(v96);
        if ((v62 & 1) != (v63 & 1))
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return;
        }

LABEL_32:
        a1 = v97;
        if (v62)
        {
          goto LABEL_4;
        }

        goto LABEL_33;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_32;
      }

      isUniquelyReferenced_nonNull_native = v56;
      sub_100AAC77C();
      v56 = isUniquelyReferenced_nonNull_native;
      a1 = v97;
      if (v62)
      {
LABEL_4:
        sub_10002C638(v55, *(a1 + 56) + *(v87 + 72) * v56, &qword_101A0EF20);
        goto LABEL_5;
      }

LABEL_33:
      *(a1 + 8 * (v56 >> 6) + 64) |= 1 << v56;
      v64 = v56;
      v92(*(a1 + 48) + *(v72 + 72) * v56, v96, v95);
      sub_10003DFF8(v55, *(a1 + 56) + *(v87 + 72) * v64, &qword_101A0EF20);
      v65 = *(a1 + 16);
      v60 = __OFADD__(v65, 1);
      v66 = v65 + 1;
      if (v60)
      {
        goto LABEL_43;
      }

      *(a1 + 16) = v66;
LABEL_5:
      (*v74)(v96, v95);
      *a2 = a1;

      ++v20;
      a1 = v77;
      v21 = v75;
      if (v94 == v76)
      {
        return;
      }
    }

    if (v20 >= *(v85 + 16))
    {
      goto LABEL_41;
    }

    v22 = *(a1 + 8 * v20 + 32);

    v23 = v20 + 1;
    if (!__OFADD__(v20, 1))
    {
      goto LABEL_9;
    }

LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    ;
  }
}

unint64_t sub_100E96070(unint64_t a1, uint64_t a2)
{
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_22:
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v7 = *(a1 + 8 * v6 + 32);
    }

    if (*(v7 + 16) == *(a2 + 16) && *(v7 + 24) == *(a2 + 24))
    {
      break;
    }

    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      return v6;
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_21;
    }
  }

  return v6;
}

unint64_t sub_100E96184(unint64_t a1)
{
  if (a1 >> 62)
  {
LABEL_17:
    v7 = a1 & 0xFFFFFFFFFFFFFF8;
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v7 = a1 & 0xFFFFFFFFFFFFFF8;
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  while (1)
  {
    if (v2 == v3)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v3 >= *(v7 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }
    }

    type metadata accessor for UUID();
    sub_1000066D0(&qword_1019F37C0, &type metadata accessor for UUID);
    v4 = dispatch thunk of static Equatable.== infix(_:_:)();

    if (v4)
    {
      return v3;
    }

    if (__OFADD__(v3++, 1))
    {
      goto LABEL_16;
    }
  }
}

id sub_100E96300(char *a1, void *a2, unint64_t a3, uint64_t a4, void *a5, char *a6)
{
  v210 = a5;
  v220 = a3;
  v221 = a4;
  v230 = a2;
  v233 = a1;
  ObjectType = swift_getObjectType();
  v7 = type metadata accessor for URL();
  v231 = *(v7 - 8);
  v232 = v7;
  v8 = __chkstk_darwin(v7);
  v213 = &v209 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v214 = &v209 - v10;
  v11 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v12 = *(v11 - 8);
  v235 = v11;
  v236 = v12;
  __chkstk_darwin(v11);
  v229 = &v209 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v14);
  v16 = &v209 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v17 - 8);
  v19 = &v209 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  a6[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_hasAttemptedVacuum] = 0;
  v20 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_logCategory;
  if (qword_1019F2258 != -1)
  {
    swift_once();
  }

  v21 = static OS_os_log.boardStore;
  *&a6[v20] = static OS_os_log.boardStore;
  v22 = &a6[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_storeName];
  *v22 = 0x7461446472616F62;
  v22[1] = 0xE900000000000061;
  v212 = v22;
  v23 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_userDefaults;
  v24 = objc_opt_self();
  v234 = v24;
  v25 = v21;
  *&a6[v23] = [v24 standardUserDefaults];
  *&a6[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_recordIDsToOverwrite] = _swiftEmptySetSingleton;
  *&a6[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_syncHelper] = 0;
  v26 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManagerLock;
  type metadata accessor for CRLUnfairLock();
  v27 = swift_allocObject();
  v28 = swift_slowAlloc();
  *v28 = 0;
  *(v27 + 16) = v28;
  atomic_thread_fence(memory_order_acq_rel);
  *&a6[v26] = v27;
  *&a6[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager] = 0;
  v29 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManagerLock;
  v30 = swift_allocObject();
  v31 = swift_slowAlloc();
  *v31 = 0;
  *(v30 + 16) = v31;
  atomic_thread_fence(memory_order_acq_rel);
  *&a6[v29] = v30;
  *&a6[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager] = 0;
  v32 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetDownloadManagerLock;
  v33 = swift_allocObject();
  v34 = swift_slowAlloc();
  *v34 = 0;
  *(v33 + 16) = v34;
  atomic_thread_fence(memory_order_acq_rel);
  *&a6[v32] = v33;
  *&a6[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetDownloadManager] = 0;
  v237 = a6;
  v219 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_assetUploadTracker;
  v35 = sub_100006370(0, &qword_1019F2D90);
  static DispatchQoS.unspecified.getter();
  *&v240 = _swiftEmptyArrayStorage;
  v36 = sub_1000066D0(&qword_101A1DE70, &type metadata accessor for OS_dispatch_queue.Attributes);
  v37 = sub_1005B981C(&unk_1019FB800);
  v224 = sub_10001A2F8(&qword_101A1DE80, &unk_1019FB800);
  v225 = v37;
  v211 = v14;
  v226 = v36;
  v38 = v234;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v39 = *(v236 + 104);
  v223 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v236 += 104;
  v222 = v39;
  v39(v229);
  v227 = v35;
  v40 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  type metadata accessor for CRLAssetUploadTracker();
  v41 = swift_allocObject();
  type metadata accessor for CRLAssetUploadObserverManager();
  v42 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v42 + 112) = [objc_allocWithZone(NSHashTable) initWithOptions:5 capacity:1];
  *(v41 + 16) = v42;
  *(v41 + 24) = &_swiftEmptyDictionarySingleton;
  *(v41 + 32) = &_swiftEmptyDictionarySingleton;
  *(v41 + 40) = 0;
  *(v41 + 48) = v40;
  *&v219[v237] = v41;
  v43 = v237;
  v44 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_accountUtilities;
  type metadata accessor for CRLAccountUtilities();
  *&v43[v44] = swift_allocObject();
  *&v43[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_transientSyncExclusions] = &_swiftEmptyDictionarySingleton;
  v45 = [v38 standardUserDefaults];
  v46 = [v45 objectForKey:@"CRLDeleteBoardCleanupTolerance"];

  if (v46)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v243 = 0u;
    v244 = 0u;
  }

  v240 = v243;
  v241 = v244;
  if (*(&v244 + 1))
  {
    if (swift_dynamicCast())
    {
      v47 = v238;
      goto LABEL_11;
    }
  }

  else
  {
    sub_10000CAAC(&v240, &unk_1019F4D00);
  }

  v47 = 0x40AC200000000000;
LABEL_11:
  *&v43[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__deletedBoardsCleanupTolerance] = v47;
  *&v43[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_deletedBoardsCleanupWorkItem] = 0;
  v48 = [v38 standardUserDefaults];
  v49 = [v48 objectForKey:@"CRLDeletedBoardTTL"];

  if (v49)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v243 = 0u;
    v244 = 0u;
  }

  v240 = v243;
  v241 = v244;
  v228 = v19;
  v209 = v16;
  if (*(&v244 + 1))
  {
    if (swift_dynamicCast())
    {
      v50 = v238;
      goto LABEL_19;
    }
  }

  else
  {
    sub_10000CAAC(&v240, &unk_1019F4D00);
  }

  v50 = 0x4143C68000000000;
LABEL_19:
  *&v43[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__deletedBoardTTL] = v50;
  v219 = &v43[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_foldersTableCreationSQLQuery];
  *&v240 = 0;
  *(&v240 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(241);
  v51._object = 0x80000001015A8F20;
  v51._countAndFlagsBits = 0xD000000000000011;
  v216 = 0xD000000000000011;
  v217 = "rm.assetUploadTracker";
  String.append(_:)(v51);
  v52._countAndFlagsBits = 0x737265646C6F66;
  v52._object = 0xE700000000000000;
  String.append(_:)(v52);
  v53._countAndFlagsBits = 0x202020202820;
  v53._object = 0xE600000000000000;
  String.append(_:)(v53);
  v54._countAndFlagsBits = 0x696669746E656469;
  v54._object = 0xEA00000000007265;
  String.append(_:)(v54);
  v218 = "    CREATE TABLE ";
  v55._countAndFlagsBits = 0xD000000000000020;
  v55._object = 0x80000001015A8F40;
  String.append(_:)(v55);
  v56._countAndFlagsBits = 1635017060;
  v56._object = 0xE400000000000000;
  String.append(_:)(v56);
  v234 = "Y NOT NULL,     ";
  v57._object = 0x80000001015A8F70;
  v57._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v57);
  v58._countAndFlagsBits = 0x5F65726168736B63;
  v58._object = 0xEC00000061746164;
  String.append(_:)(v58);
  v59._countAndFlagsBits = 0x20202C424F4C4220;
  v59._object = 0xEB00000000202020;
  String.append(_:)(v59);
  v60._object = 0x80000001015A3BE0;
  v60._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v60);
  v61._countAndFlagsBits = 0x20202C424F4C4220;
  v61._object = 0xEB00000000202020;
  String.append(_:)(v61);
  v62._object = 0x80000001015A3590;
  v62._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v62);
  v63._countAndFlagsBits = 0xD00000000000001ALL;
  v63._object = 0x80000001015A8F90;
  String.append(_:)(v63);
  *&v243 = 0x4000000000000;
  v64._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v64);

  v65._countAndFlagsBits = 0x20202020202CLL;
  v65._object = 0xE600000000000000;
  String.append(_:)(v65);
  v66._countAndFlagsBits = 0xD00000000000002DLL;
  v66._object = 0x80000001015A3760;
  String.append(_:)(v66);
  v67._countAndFlagsBits = 0xD00000000000001ALL;
  v67._object = 0x80000001015A8F90;
  String.append(_:)(v67);
  *&v243 = 0x4000000000000;
  v68._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v68);

  v69._countAndFlagsBits = 0x20202020202CLL;
  v69._object = 0xE600000000000000;
  String.append(_:)(v69);
  v70._countAndFlagsBits = 0xD000000000000026;
  v70._object = 0x80000001015A33F0;
  String.append(_:)(v70);
  v71._countAndFlagsBits = 0xD00000000000001ALL;
  v71._object = 0x80000001015A8F90;
  String.append(_:)(v71);
  *&v243 = 0x4000000000000;
  v72._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v72);

  v73._countAndFlagsBits = 0x20202020202CLL;
  v73._object = 0xE600000000000000;
  String.append(_:)(v73);
  v74._countAndFlagsBits = 0x656C746974;
  v74._object = 0xE500000000000000;
  String.append(_:)(v74);
  v75._countAndFlagsBits = 0x20202C5458455420;
  v75._object = 0xEB00000000202020;
  String.append(_:)(v75);
  v76._countAndFlagsBits = 0xD000000000000012;
  v76._object = 0x80000001015A3810;
  String.append(_:)(v76);
  v77._countAndFlagsBits = 0x2020204C41455220;
  v77._object = 0xEB00000000292020;
  String.append(_:)(v77);
  v78 = *(&v240 + 1);
  v79 = v219;
  *v219 = v240;
  *(v79 + 1) = v78;
  v80 = &v237[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_foldersMetadataTableCreationSQLQuery];
  *&v240 = 0;
  *(&v240 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(158);
  v82 = v216;
  v81 = v217;
  v83._object = (v217 | 0x8000000000000000);
  v83._countAndFlagsBits = v216;
  String.append(_:)(v83);
  v84._countAndFlagsBits = 0xD000000000000010;
  v219 = 0xD000000000000010;
  v84._object = 0x80000001015A30F0;
  String.append(_:)(v84);
  v85._countAndFlagsBits = 0x202020202820;
  v85._object = 0xE600000000000000;
  String.append(_:)(v85);
  v86._countAndFlagsBits = 0x696669746E656469;
  v86._object = 0xEA00000000007265;
  String.append(_:)(v86);
  v87._countAndFlagsBits = 0xD00000000000002ALL;
  v87._object = 0x80000001015A8FB0;
  String.append(_:)(v87);
  v88._countAndFlagsBits = 0x737265646C6F66;
  v88._object = 0xE700000000000000;
  String.append(_:)(v88);
  v89._countAndFlagsBits = 10272;
  v89._object = 0xE200000000000000;
  String.append(_:)(v89);
  v90._countAndFlagsBits = 0x696669746E656469;
  v90._object = 0xEA00000000007265;
  String.append(_:)(v90);
  v91._countAndFlagsBits = 0xD000000000000019;
  v91._object = 0x80000001015A8FE0;
  String.append(_:)(v91);
  v92._countAndFlagsBits = 1635017060;
  v92._object = 0xE400000000000000;
  String.append(_:)(v92);
  v93 = v234;
  v94._object = (v234 | 0x8000000000000000);
  v94._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v94);
  v95._countAndFlagsBits = 0xD000000000000026;
  v95._object = 0x80000001015A33F0;
  String.append(_:)(v95);
  v96._countAndFlagsBits = 0xD00000000000001ALL;
  v96._object = 0x80000001015A8F90;
  String.append(_:)(v96);
  *&v243 = 0x4000000000000;
  v97._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v97);

  v98._countAndFlagsBits = 0x292020202020;
  v98._object = 0xE600000000000000;
  String.append(_:)(v98);
  v99 = *(&v240 + 1);
  *v80 = v240;
  *(v80 + 1) = v99;
  v100 = &v237[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_ckRecordCacheTableCreationSQLQuery];
  *&v240 = 0;
  *(&v240 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(103);
  v101._object = (v81 | 0x8000000000000000);
  v101._countAndFlagsBits = v82;
  String.append(_:)(v101);
  v102._countAndFlagsBits = 0x64726F6365726B63;
  v102._object = 0xEE0065686361635FLL;
  String.append(_:)(v102);
  v103._countAndFlagsBits = 0x202020202820;
  v103._object = 0xE600000000000000;
  String.append(_:)(v103);
  v104._countAndFlagsBits = 0x695F64726F636572;
  v104._object = 0xE900000000000064;
  String.append(_:)(v104);
  v105._countAndFlagsBits = 0xD000000000000020;
  v106 = v218;
  v105._object = (v218 | 0x8000000000000000);
  String.append(_:)(v105);
  v107._countAndFlagsBits = 0x64695F656E6F7ALL;
  v107._object = 0xE700000000000000;
  String.append(_:)(v107);
  v108._object = (v93 | 0x8000000000000000);
  v108._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v108);
  v109._countAndFlagsBits = 0x64726F636572;
  v109._object = 0xE600000000000000;
  String.append(_:)(v109);
  v110._object = 0x80000001015A9000;
  v110._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v110);
  v111 = *(&v240 + 1);
  *v100 = v240;
  *(v100 + 1) = v111;
  v112 = &v237[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_ckZoneCacheTableCreationSQLQuery];
  *&v240 = 0;
  *(&v240 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(107);
  v113._object = (v81 | 0x8000000000000000);
  v113._countAndFlagsBits = v82;
  String.append(_:)(v113);
  v114._countAndFlagsBits = 0x635F656E6F7A6B63;
  v114._object = 0xEC00000065686361;
  String.append(_:)(v114);
  v115._countAndFlagsBits = 0x202020202820;
  v115._object = 0xE600000000000000;
  String.append(_:)(v115);
  v116._countAndFlagsBits = 0x64695F656E6F7ALL;
  v116._object = 0xE700000000000000;
  String.append(_:)(v116);
  v117._countAndFlagsBits = 0xD000000000000020;
  v117._object = (v106 | 0x8000000000000000);
  String.append(_:)(v117);
  v118._countAndFlagsBits = 0x646574656C6564;
  v118._object = 0xE700000000000000;
  String.append(_:)(v118);
  v119._countAndFlagsBits = 0x52454745544E4920;
  v119._object = 0xEE0020202020202CLL;
  String.append(_:)(v119);
  v120._countAndFlagsBits = 0x646567727570;
  v120._object = 0xE600000000000000;
  String.append(_:)(v120);
  v121._countAndFlagsBits = 0x52454745544E4920;
  v121._object = 0xEE0020202020202CLL;
  String.append(_:)(v121);
  v122._countAndFlagsBits = 0xD000000000000028;
  v122._object = 0x80000001015A87B0;
  String.append(_:)(v122);
  v123._object = 0xEE00292020202020;
  v123._countAndFlagsBits = 0x52454745544E4920;
  String.append(_:)(v123);
  v124 = *(&v240 + 1);
  *v112 = v240;
  *(v112 + 1) = v124;
  v125 = &v237[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_purgedCKRecordCacheTableCreationSQLQuery];
  *&v240 = 0;
  *(&v240 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(103);
  v126._object = (v81 | 0x8000000000000000);
  v126._countAndFlagsBits = v82;
  String.append(_:)(v126);
  v127._countAndFlagsBits = 0xD000000000000015;
  v127._object = 0x80000001015A3110;
  String.append(_:)(v127);
  v128._countAndFlagsBits = 0x202020202820;
  v128._object = 0xE600000000000000;
  String.append(_:)(v128);
  v129._countAndFlagsBits = 0x695F64726F636572;
  v129._object = 0xE900000000000064;
  String.append(_:)(v129);
  v130._countAndFlagsBits = 0xD000000000000020;
  v130._object = (v106 | 0x8000000000000000);
  String.append(_:)(v130);
  v131._countAndFlagsBits = 0x64695F656E6F7ALL;
  v131._object = 0xE700000000000000;
  String.append(_:)(v131);
  v132._object = (v234 | 0x8000000000000000);
  v132._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v132);
  v133._countAndFlagsBits = 0x745F64726F636572;
  v133._object = 0xEB00000000657079;
  String.append(_:)(v133);
  v134._object = 0x80000001015A9020;
  v134._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v134);
  v135 = *(&v240 + 1);
  *v125 = v240;
  *(v125 + 1) = v135;
  v136 = &v237[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_ckRecordCacheZoneIdIndexSQLQuery];
  *v136 = 0xD00000000000004FLL;
  *(v136 + 1) = 0x80000001015A9040;
  v137 = &v237[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_purgedCKRecordCacheZoneIdIndexSQLQuery];
  *v137 = 0xD00000000000005DLL;
  *(v137 + 1) = 0x80000001015A9090;
  v138 = &v237[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_lastUpgradedVersionPerBoardMigrationQuery];
  *&v240 = 0;
  *(&v240 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(60);
  v139._object = 0x80000001015A90F0;
  v140 = v219;
  v139._countAndFlagsBits = v219;
  String.append(_:)(v139);
  v141._countAndFlagsBits = 0x736472616F62;
  v141._object = 0xE600000000000000;
  String.append(_:)(v141);
  v142._countAndFlagsBits = 0x4C4F432044444120;
  v142._object = 0xEC000000204E4D55;
  String.append(_:)(v142);
  v143._countAndFlagsBits = 0xD000000000000015;
  v143._object = 0x80000001015A3830;
  String.append(_:)(v143);
  v144._countAndFlagsBits = 0xD00000000000001CLL;
  v144._object = 0x80000001015A9110;
  String.append(_:)(v144);
  v145 = *(&v240 + 1);
  *v138 = v240;
  *(v138 + 1) = v145;
  v146 = &v237[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_lastCloudKitFetchVersionBoardMigrationQuery];
  *&v240 = 0;
  *(&v240 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(63);
  v147._object = 0x80000001015A90F0;
  v147._countAndFlagsBits = v140;
  String.append(_:)(v147);
  v148._countAndFlagsBits = 0x736472616F62;
  v148._object = 0xE600000000000000;
  String.append(_:)(v148);
  v149._countAndFlagsBits = 0x4C4F432044444120;
  v149._object = 0xEC000000204E4D55;
  String.append(_:)(v149);
  v150._countAndFlagsBits = 0xD00000000000001BLL;
  v150._object = 0x80000001015A3790;
  String.append(_:)(v150);
  v151._countAndFlagsBits = 0xD00000000000001FLL;
  v151._object = 0x80000001015A9130;
  String.append(_:)(v151);
  v152 = *(&v240 + 1);
  *v146 = v240;
  *(v146 + 1) = v152;
  v153 = &v237[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_lastCloudKitFetchVersionBoardItemMigrationQuery];
  *&v240 = 0;
  *(&v240 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(63);
  v154._object = 0x80000001015A90F0;
  v154._countAndFlagsBits = v140;
  String.append(_:)(v154);
  v155._countAndFlagsBits = 0x74695F6472616F62;
  v155._object = 0xEB00000000736D65;
  String.append(_:)(v155);
  v156._countAndFlagsBits = 0x4C4F432044444120;
  v156._object = 0xEC000000204E4D55;
  String.append(_:)(v156);
  v157._countAndFlagsBits = 0xD00000000000001BLL;
  v157._object = 0x80000001015A3790;
  String.append(_:)(v157);
  v158._countAndFlagsBits = 0xD00000000000001FLL;
  v158._object = 0x80000001015A9130;
  String.append(_:)(v158);
  v159 = *(&v240 + 1);
  *v153 = v240;
  *(v153 + 1) = v159;
  v160 = &v237[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_lastCloudKitFetchVersionFreehandItemMigrationQuery];
  *&v240 = 0;
  *(&v240 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(63);
  v161._object = 0x80000001015A90F0;
  v161._countAndFlagsBits = v140;
  String.append(_:)(v161);
  v162._countAndFlagsBits = 0xD000000000000018;
  v162._object = 0x80000001015A31A0;
  String.append(_:)(v162);
  v163._countAndFlagsBits = 0x4C4F432044444120;
  v163._object = 0xEC000000204E4D55;
  String.append(_:)(v163);
  v164._countAndFlagsBits = 0xD00000000000001BLL;
  v164._object = 0x80000001015A3790;
  String.append(_:)(v164);
  v165._countAndFlagsBits = 0xD00000000000001FLL;
  v165._object = 0x80000001015A9130;
  String.append(_:)(v165);
  v166 = *(&v240 + 1);
  *v160 = v240;
  *(v160 + 1) = v166;
  v167 = &v237[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_addBoardItemSubItemTypeMigrationQuery];
  *&v240 = 0;
  *(&v240 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(51);
  v168._object = 0x80000001015A90F0;
  v168._countAndFlagsBits = v140;
  String.append(_:)(v168);
  v169._countAndFlagsBits = 0x74695F6472616F62;
  v169._object = 0xEB00000000736D65;
  v170 = v237;
  String.append(_:)(v169);
  v171._countAndFlagsBits = 0x4C4F432044444120;
  v171._object = 0xEC000000204E4D55;
  String.append(_:)(v171);
  v172._countAndFlagsBits = 0x6D6574695F627573;
  v172._object = 0xED0000657079745FLL;
  String.append(_:)(v172);
  v173._countAndFlagsBits = 0xD000000000000013;
  v173._object = 0x80000001015A9150;
  String.append(_:)(v173);
  v174 = *(&v240 + 1);
  *v167 = v240;
  *(v167 + 1) = v174;
  v175 = &v170[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_addBoardItemCapsuleDataMigrationQuery];
  *v175 = 0xD000000000000039;
  *(v175 + 1) = 0x80000001015A9170;
  v176 = &v170[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_addBoardItemCKMergeableRecordValueMigrationQuery];
  *v176 = 0xD000000000000046;
  *(v176 + 1) = 0x80000001015A91B0;
  v177 = *(v231 + 16);
  v234 = v231 + 16;
  v219 = v177;
  (v177)(&v170[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_dataDirectory], v233, v232);
  v178 = v230;
  *&v170[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_temporaryDirectory] = v230;
  *&v170[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_lastFetchResultsTime] = 0;
  v179 = v178;
  v180 = sub_1006183CC(v220, v221);

  *&v170[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_sideStore] = v180;
  v181 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue;
  v182 = v210;
  *&v170[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue] = v210;
  v183 = v182;
  *&v240 = OS_dispatch_queue.label.getter();
  *(&v240 + 1) = v184;
  v185._countAndFlagsBits = 0x646165722ELL;
  v185._object = 0xE500000000000000;
  String.append(_:)(v185);
  v221 = v240;
  v186 = *&v170[v181];
  static DispatchQoS.unspecified.getter();
  *&v240 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v187 = v229;
  v222(v229, v223, v235);
  *&v170[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_readQueue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v188 = *&v170[v181];
  v189 = OS_dispatch_queue.label.getter();
  v191 = v190;

  *&v240 = v189;
  *(&v240 + 1) = v191;
  v192._countAndFlagsBits = 0x65746972772ELL;
  v192._object = 0xE600000000000000;
  String.append(_:)(v192);
  v221 = v181;
  v193 = *&v170[v181];
  static DispatchQoS.unspecified.getter();
  *&v240 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v222(v187, v223, v235);
  *&v170[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  if (v230)
  {
    v194 = v232;
    v195 = v233;
    v196 = v214;
    v197 = v219;
    if (qword_1019F17C0 != -1)
    {
      swift_once();
    }

    v198 = sub_1005EB3DC(v194, qword_101AD69B8);
    (v197)(v196, v198, v194);
  }

  else
  {
    v196 = v214;
    v195 = v233;
    URL.appendingPathComponent(_:)();
    v194 = v232;
    v197 = v219;
  }

  v199 = v213;
  v200 = *v212;
  v201 = v212[1];
  (v197)(v213, v196, v194);
  v202 = v237;
  v203 = *&v237[v221];
  type metadata accessor for SQLiteDatabase();
  swift_allocObject();

  *&v202[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_database] = sub_10089ABDC(v200, v201, v199, v203);
  type metadata accessor for CRContext();
  v242 = 0;
  v240 = 0u;
  v241 = 0u;
  v204 = static CRContext.newTransientContext(uniqueAssetManager:encryptionDelegate:)();
  sub_10000CAAC(&v240, &qword_101A07B90);
  *&v202[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_crdtContext] = v204;
  v205 = [objc_opt_self() mainBundle];
  v206 = *(v231 + 8);
  v206(v196, v194);
  *&v202[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_assetBundle] = v205;
  v239.receiver = v202;
  v239.super_class = ObjectType;
  v207 = objc_msgSendSuper2(&v239, "init");
  v206(v195, v194);
  return v207;
}

id sub_100E980B4(id a1)
{
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v30 = *(v3 - 8);
  __chkstk_darwin(v3);
  v29 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v27);
  v28 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for URL();
  __chkstk_darwin(v7 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_allocWithZone(CRLTemporaryDirectory);
  v11 = String._bridgeToObjectiveC()();
  v31 = 0;
  v12 = [v10 initWithSignature:v11 error:&v31];

  v13 = v31;
  if (v12)
  {
    v14 = [v12 URL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v25 = v12;
    v31 = OS_dispatch_queue.label.getter();
    v32 = v15;
    v16._countAndFlagsBits = 0x656469732ELL;
    v16._object = 0xE500000000000000;
    String.append(_:)(v16);
    v23 = v32;
    v24 = v31;
    v22 = sub_100006370(0, &qword_1019F2D90);
    v26 = v1;
    static DispatchQoS.unspecified.getter();
    v31 = _swiftEmptyArrayStorage;
    sub_1000066D0(&qword_101A1DE70, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1005B981C(&unk_1019FB800);
    sub_10001A2F8(&qword_101A1DE80, &unk_1019FB800);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v30 + 104))(v29, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v3);
    v17 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v18 = objc_allocWithZone(type metadata accessor for CRLBoardDataStore(0));
    a1 = sub_100E96300(v9, v12, v24, v23, v17, v18);
    v19 = v25;
  }

  else
  {
    v20 = v13;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return a1;
}

uint64_t sub_100E984CC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(unint64_t))
{
  v7 = *a1;
  v8 = sub_100E96070(*a1, a2);
  v10 = v8;
  if (v3)
  {
    return v10;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v21 = a3;
  v11 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v11 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v10;
      }
    }

    else if (v11 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v10;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_16;
    }

    if ((v11 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v11 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_46;
    }

    v13 = *(v7 + 8 * v11 + 32);

LABEL_16:
    if (*(v13 + 16) == *(a2 + 16) && *(v13 + 24) == *(a2 + 24))
    {
LABEL_8:
    }

    else
    {
      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v14 & 1) == 0)
      {
        if (v10 != v11)
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if ((v10 & 0x8000000000000000) != 0)
            {
              goto LABEL_50;
            }

            v17 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v10 >= v17)
            {
              goto LABEL_51;
            }

            if (v11 >= v17)
            {
              goto LABEL_52;
            }

            v15 = *(v7 + 32 + 8 * v10);
            v16 = *(v7 + 32 + 8 * v11);
          }

          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
          {
            v7 = v21(v7);
            v18 = (v7 >> 62) & 1;
          }

          else
          {
            LODWORD(v18) = 0;
          }

          v19 = v7 & 0xFFFFFFFFFFFFFF8;
          *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20) = v16;

          if ((v7 & 0x8000000000000000) != 0 || v18)
          {
            v7 = v21(v7);
            v19 = v7 & 0xFFFFFFFFFFFFFF8;
            if ((v11 & 0x8000000000000000) != 0)
            {
LABEL_43:
              __break(1u);
              return v10;
            }
          }

          else if ((v11 & 0x8000000000000000) != 0)
          {
            goto LABEL_43;
          }

          if (v11 >= *(v19 + 16))
          {
            goto LABEL_49;
          }

          *(v19 + 8 * v11 + 32) = v15;

          *a1 = v7;
        }

        v12 = __OFADD__(v10++, 1);
        if (v12)
        {
          goto LABEL_48;
        }
      }
    }

    v12 = __OFADD__(v11++, 1);
    if (v12)
    {
      goto LABEL_47;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
  return _CocoaArrayWrapper.endIndex.getter();
}

unint64_t sub_100E9875C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(unint64_t))
{
  v6 = *a1;
  result = sub_100E96184(*a1);
  v9 = result;
  if (v3)
  {
    return v9;
  }

  if (v8)
  {
    if (v6 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = a1;
  v10 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  while (1)
  {
    if (v6 >> 62)
    {
      if (v10 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v9;
      }
    }

    else if (v10 == *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v9;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_15;
    }

    if ((v10 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_40;
    }

LABEL_15:
    type metadata accessor for UUID();
    sub_1000066D0(&qword_1019F37C0, &type metadata accessor for UUID);
    v12 = dispatch thunk of static Equatable.== infix(_:_:)();

    if ((v12 & 1) == 0)
    {
      if (v9 != v10)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_44;
          }

          v15 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v9 >= v15)
          {
            goto LABEL_45;
          }

          if (v10 >= v15)
          {
            goto LABEL_46;
          }

          v13 = *(v6 + 32 + 8 * v9);
          v14 = *(v6 + 32 + 8 * v10);
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
        {
          v6 = a3(v6);
          v16 = (v6 >> 62) & 1;
        }

        else
        {
          LODWORD(v16) = 0;
        }

        v17 = v6 & 0xFFFFFFFFFFFFFF8;
        *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v9 + 0x20) = v14;

        if ((v6 & 0x8000000000000000) != 0 || v16)
        {
          v6 = a3(v6);
          v17 = v6 & 0xFFFFFFFFFFFFFF8;
          if ((v10 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v9;
          }
        }

        else if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v10 >= *(v17 + 16))
        {
          goto LABEL_43;
        }

        *(v17 + 8 * v10 + 32) = v13;

        *v18 = v6;
      }

      v11 = __OFADD__(v9++, 1);
      if (v11)
      {
        goto LABEL_42;
      }
    }

    v11 = __OFADD__(v10++, 1);
    if (v11)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return _CocoaArrayWrapper.endIndex.getter();
}

uint64_t *sub_100E98A48(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  v261 = a4;
  v259 = a2;
  v5 = sub_1005B981C(&qword_101A102C0);
  v253 = *(v5 - 8);
  __chkstk_darwin(v5);
  v246 = &v234 - v6;
  v7 = sub_1005B981C(&qword_101A21EB8);
  v8 = __chkstk_darwin(v7 - 8);
  v248 = &v234 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v249 = &v234 - v10;
  v258 = sub_1005B981C(&qword_101A21EC0);
  v251 = *(v258 - 8);
  __chkstk_darwin(v258);
  v257 = &v234 - v11;
  v254 = sub_1005B981C(&unk_101A2C890);
  v252 = *(v254 - 8);
  __chkstk_darwin(v254);
  v245 = &v234 - v12;
  v13 = sub_1005B981C(&qword_101A21EC8);
  v14 = __chkstk_darwin(v13 - 8);
  v247 = &v234 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v234 - v16;
  v256 = sub_1005B981C(&qword_101A21ED0);
  v250 = *(v256 - 1);
  __chkstk_darwin(v256);
  v255 = &v234 - v18;
  v19 = sub_1005B981C(&qword_101A12928);
  v260 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = &v234 - v20;
  v22 = sub_1005B981C(&qword_101A128E8);
  v23 = __chkstk_darwin(v22 - 8);
  v25 = &v234 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = &v234 - v26;
  v28 = sub_1005B981C(&qword_101A21ED8);
  __chkstk_darwin(v28);
  v32 = &v234 - v31;
  v262 = *(v29 + OBJC_IVAR____TtC8Freeform28CRLBoardItemSyncRemoteRecord_commonCRDTData + 8);
  if (v262 >> 60 == 15)
  {
    if (qword_1019F2258 != -1)
    {
LABEL_95:
      swift_once();
    }

    v33 = static OS_os_log.boardStore;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v35 = UUID.uuidString.getter();
    v37 = v36;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v35;
    v38 = inited + 32;
    *(inited + 40) = v37;
    v39 = static os_log_type_t.error.getter();
    sub_100005404(v33, &_mh_execute_header, v39, "Remote record is missing commonData: %@", 39, 2, inited);
    goto LABEL_11;
  }

  v241 = v5;
  v242 = v30;
  v244 = a3;
  v40 = *(v29 + OBJC_IVAR____TtC8Freeform28CRLBoardItemSyncRemoteRecord_commonCRDTData);
  v41 = v29;
  v42 = sub_100A0557C(*(v29 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_rawTypeValues), *(v29 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_rawTypeValues + 8), *(v29 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_rawTypeValues + 16));
  if ((v44 & 0x10000) != 0)
  {
    LOWORD(v28) = v44;
    v53 = v42;
    v32 = v43;
    v54 = v262;
    sub_100024E98(v40, v262);
    if (qword_1019F2258 != -1)
    {
LABEL_98:
      swift_once();
    }

    v55 = static OS_os_log.boardStore;
    sub_1005B981C(&qword_1019F54E0);
    v56 = swift_initStackObject();
    *(v56 + 16) = xmmword_10146C6B0;
    *&v263 = v53;
    *(&v263 + 1) = v32;
    LOWORD(v264) = v28;
    BYTE2(v264) = 1;
    v57 = String.init<A>(describing:)();
    v59 = v58;
    *(v56 + 56) = &type metadata for String;
    *(v56 + 64) = sub_1000053B0();
    *(v56 + 32) = v57;
    v38 = v56 + 32;
    *(v56 + 40) = v59;
    v60 = static os_log_type_t.error.getter();
    sub_100005404(v55, &_mh_execute_header, v60, "Remote record has invalid board item type: %@", 45, 2, v56);
    sub_100025870(v40, v54);
    goto LABEL_11;
  }

  v243 = v40;
  v40 = *(v41 + OBJC_IVAR____TtC8Freeform28CRLBoardItemSyncRemoteRecord_specificCRDTData + 8);
  if (v40 >> 60 == 15)
  {
    v45 = v243;
    v46 = v262;
    sub_100024E98(v243, v262);
    if (qword_1019F2258 != -1)
    {
      swift_once();
    }

    v47 = static OS_os_log.boardStore;
    sub_1005B981C(&qword_1019F54E0);
    v48 = swift_initStackObject();
    *(v48 + 16) = xmmword_10146C6B0;
    v49 = UUID.uuidString.getter();
    v51 = v50;
    *(v48 + 56) = &type metadata for String;
    *(v48 + 64) = sub_1000053B0();
    *(v48 + 32) = v49;
    v38 = v48 + 32;
    *(v48 + 40) = v51;
    v52 = static os_log_type_t.error.getter();
    sub_100005404(v47, &_mh_execute_header, v52, "Remote record is missing specificData: %@", 41, 2, v48);
    sub_100025870(v45, v46);
LABEL_11:
    swift_setDeallocating();
    sub_100005070(v38);
    return 0;
  }

  v62 = *(v41 + OBJC_IVAR____TtC8Freeform28CRLBoardItemSyncRemoteRecord_specificCRDTData);
  v63 = *(v41 + OBJC_IVAR____TtC8Freeform28CRLBoardItemSyncRemoteRecord_capsuleMergeableData);
  v237 = *(v41 + OBJC_IVAR____TtC8Freeform28CRLBoardItemSyncRemoteRecord_specificCRDTData + 8);
  v238 = v41;
  v235 = v42;
  v236 = v43;
  v239 = v44;
  v240 = v62;
  if (!v63)
  {
LABEL_73:
    v104 = v40;
    v105 = v262;
    v106 = v62;
    sub_100024E84(v243, v262);
    sub_100024E84(v106, v104);
LABEL_77:
    v116 = v261;
    goto LABEL_79;
  }

  if ((v44 & 0x100) == 0)
  {
    v107 = v62;
    v54 = v19;
    v108 = v19;
    v109 = v63;
    (*(v260 + 56))(v27, 1, 1, v108);
    sub_100024E84(v243, v262);
    sub_100024E84(v107, v40);
    sub_10001A2F8(&qword_101A21F00, &qword_101A12928);
    v110 = v109;
    v111 = v259;
    CRCKMergeable.init(crdt:context:)();
    sub_10001A2F8(&qword_101A21F08, &qword_101A21ED8);
    v259 = v110;
    CKMergeable.merge(_:)();
    CRCKMergeable.crdt.getter();
    v130 = v260;
    v131 = (*(v260 + 48))(v25, 1, v54);
    if (v131 != 1)
    {
      (*(v130 + 32))(v21, v25, v54);
      if (qword_1019F1520 != -1)
      {
        swift_once();
      }

      v134 = type metadata accessor for CRCodableVersion();
      sub_1005EB3DC(v134, qword_101AD6348);
      v89 = Capsule.serializedData(_:version:allowedAppFormats:fileSignature:)();
      goto LABEL_92;
    }

    (*(v242 + 8))(v32, v28);

    v132 = &qword_101A128E8;
    v133 = v25;
LABEL_87:
    sub_10000CAAC(v133, v132);
    goto LABEL_76;
  }

  v64 = v63;
  if ((v42 | v43 || v44) && (v42 != 1 || v43 || v44) && (v42 != 2 || v43 || v44) && (v42 != 3 || v43 || v44) && (v42 != 4 || v43 || v44) && (v42 != 5 || v43 || v44) && (v42 != 6 || v43 || v44) && (v42 != 7 || v43 || v44) && (v42 != 8 || v43 || v44) && (v42 != 9 || v43 || v44) && (v42 != 10 || v43 || v44))
  {
    v136 = v259;
    if (v42 == 11 && !v236 && !v44)
    {
      (*(v252 + 56))(v17, 1, 1, v254);
      sub_100024E84(v243, v262);
      sub_100024E84(v240, v237);
      sub_10001A2F8(&qword_101A21EF0, &unk_101A2C890);
      v137 = v64;
      v138 = v136;
      CRCKMergeable.init(crdt:context:)();
      sub_10001A2F8(&qword_101A21EF8, &qword_101A21ED0);
      v257 = v137;
      CKMergeable.merge(_:)();
      v259 = 0;
      v226 = v247;
      CRCKMergeable.crdt.getter();
      v227 = (*(v252 + 48))(v226, 1, v254);
      if (v227 != 1)
      {
        (*(v252 + 32))(v245, v247, v254);
        if (qword_1019F1520 != -1)
        {
          swift_once();
        }

        v230 = type metadata accessor for CRCodableVersion();
        sub_1005EB3DC(v230, qword_101AD6348);
        v231 = v259;
        v232 = Capsule.serializedData(_:version:allowedAppFormats:fileSignature:)();
        v259 = v231;
        if (!v231)
        {
          v117 = v232;
          v116 = v233;

          (*(v252 + 8))(v245, v254);
          (*(v250 + 8))(v255, v256);
          goto LABEL_93;
        }

        (*(v252 + 8))(v245, v254);
        v254 = 0;
        (*(v250 + 8))(v255, v256);
        sub_1005B981C(&qword_1019F54E0);
        v139 = swift_initStackObject();
        *(v139 + 16) = xmmword_10146C6B0;
        swift_getErrorValue();
        v140 = Error.localizedDescription.getter();
        v142 = v141;
        *(v139 + 56) = &type metadata for String;
        v143 = sub_1000053B0();
        *(v139 + 32) = v140;
        v260 = v139 + 32;
        v256 = v143;
        *(v139 + 64) = v143;
        *(v139 + 40) = v142;
        v255 = objc_opt_self();
        LODWORD(v144) = [v255 _atomicIncrementAssertCount];
        *&v263 = [objc_allocWithZone(NSString) init];
        v258 = v139;
        sub_100604538(v139, &v263);
        StaticString.description.getter();
        v145 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v146 = String._bridgeToObjectiveC()();

        v147 = [v146 lastPathComponent];

        v148 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v150 = v149;

        if (qword_1019F20A0 != -1)
        {
          goto LABEL_180;
        }

        goto LABEL_104;
      }

      (*(v250 + 8))(v255, v256);

      v132 = &qword_101A21EC8;
      v133 = v247;
      goto LABEL_87;
    }

    (*(v253 + 56))(v249, 1, 1, v241);
    sub_100024E84(v243, v262);
    sub_100024E84(v240, v237);
    sub_10001A2F8(&qword_101A21EE0, &qword_101A102C0);
    v177 = v64;
    v178 = v136;
    CRCKMergeable.init(crdt:context:)();
    sub_10001A2F8(&qword_101A21EE8, &qword_101A21EC0);
    v256 = v177;
    CKMergeable.merge(_:)();
    v259 = 0;
    v224 = v248;
    CRCKMergeable.crdt.getter();
    v225 = (*(v253 + 48))(v224, 1, v241);
    if (v225 == 1)
    {
      (*(v251 + 8))(v257, v258);

      sub_10000CAAC(v248, &qword_101A21EB8);
      goto LABEL_78;
    }

    (*(v253 + 32))(v246, v248, v241);
    if (qword_1019F1520 != -1)
    {
      swift_once();
    }

    v228 = type metadata accessor for CRCodableVersion();
    sub_1005EB3DC(v228, qword_101AD6348);
    v229 = v259;
    result = Capsule.serializedData(_:version:allowedAppFormats:fileSignature:)();
    v259 = v229;
    if (!v229)
    {
      goto LABEL_172;
    }

    (*(v253 + 8))(v246, v241);
    v254 = 0;
    (*(v251 + 8))(v257, v258);
    sub_1005B981C(&qword_1019F54E0);
    v179 = swift_initStackObject();
    *(v179 + 16) = xmmword_10146C6B0;
    swift_getErrorValue();
    v180 = Error.localizedDescription.getter();
    v182 = v181;
    *(v179 + 56) = &type metadata for String;
    v183 = sub_1000053B0();
    *(v179 + 32) = v180;
    v260 = v179 + 32;
    v257 = v183;
    *(v179 + 64) = v183;
    *(v179 + 40) = v182;
    v255 = objc_opt_self();
    v184 = [v255 _atomicIncrementAssertCount];
    *&v263 = [objc_allocWithZone(NSString) init];
    v258 = v179;
    sub_100604538(v179, &v263);
    StaticString.description.getter();
    v185 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v186 = String._bridgeToObjectiveC()();

    v187 = [v186 lastPathComponent];

    v188 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v190 = v189;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v191 = static OS_os_log.crlAssert;
    v192 = swift_initStackObject();
    *(v192 + 16) = xmmword_10146CA70;
    *(v192 + 56) = &type metadata for Int32;
    *(v192 + 64) = &protocol witness table for Int32;
    *(v192 + 32) = v184;
    v193 = sub_100006370(0, &qword_1019F4D30);
    *(v192 + 96) = v193;
    v194 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(v192 + 72) = v185;
    v195 = v257;
    *(v192 + 136) = &type metadata for String;
    *(v192 + 144) = v195;
    *(v192 + 104) = v194;
    *(v192 + 112) = v188;
    *(v192 + 120) = v190;
    *(v192 + 176) = &type metadata for UInt;
    *(v192 + 184) = &protocol witness table for UInt;
    *(v192 + 152) = 11633;
    v196 = v263;
    *(v192 + 216) = v193;
    *(v192 + 224) = v194;
    *(v192 + 192) = v196;
    v197 = v185;
    v198 = v196;
    v199 = static os_log_type_t.error.getter();
    sub_100005404(v191, &_mh_execute_header, v199, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v192);
    swift_setDeallocating();
    v257 = sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v200 = static os_log_type_t.error.getter();
    v201 = v258;
    sub_100005404(v191, &_mh_execute_header, v200, "Merging of Surface CKMergeable failed during itemData creation from remote sync record with error %{public}@", 108, 2, v258);

    type metadata accessor for __VaListBuilder();
    v202 = swift_allocObject();
    v202[2] = 8;
    v202[3] = 0;
    v203 = v202 + 3;
    v202[4] = 0;
    v202[5] = 0;
    v148 = *(v201 + 16);
    if (v148)
    {
      v204 = 0;
      v145 = 40;
      while (1)
      {
        v205 = (v260 + 40 * v204);
        v150 = v205[3];
        LODWORD(v144) = sub_100020E58(v205, v150);
        v206 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v207 = *v203;
        v208 = *(v206 + 16);
        v92 = __OFADD__(*v203, v208);
        v209 = *v203 + v208;
        if (v92)
        {
          break;
        }

        v210 = v206;
        v144 = v202[4];
        if (v144 >= v209)
        {
          goto LABEL_148;
        }

        if (v144 + 0x4000000000000000 < 0)
        {
          goto LABEL_177;
        }

        v150 = v202[5];
        if (2 * v144 > v209)
        {
          v209 = 2 * v144;
        }

        v202[4] = v209;
        if ((v209 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_179;
        }

        result = swift_slowAlloc();
        v202[5] = result;
        if (v150)
        {
          if (result != v150 || result >= &v150[v207])
          {
            memmove(result, v150, 8 * v207);
          }

          __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_148:
          result = v202[5];
        }

        if (!result)
        {
LABEL_182:
          __break(1u);
          return result;
        }

        v212 = *(v210 + 16);
        if (v212)
        {
          v213 = (v210 + 32);
          v214 = *v203;
          do
          {
            v215 = *v213++;
            result[v214] = v215;
            v214 = *v203 + 1;
            if (__OFADD__(*v203, 1))
            {
              goto LABEL_171;
            }

            *v203 = v214;
            --v212;
          }

          while (v212);
        }

        if (++v204 == v148)
        {
          goto LABEL_155;
        }
      }

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
      swift_once();
LABEL_104:
      v151 = static OS_os_log.crlAssert;
      v152 = swift_initStackObject();
      *(v152 + 16) = xmmword_10146CA70;
      *(v152 + 56) = &type metadata for Int32;
      *(v152 + 64) = &protocol witness table for Int32;
      *(v152 + 32) = v144;
      v153 = sub_100006370(0, &qword_1019F4D30);
      *(v152 + 96) = v153;
      v154 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
      *(v152 + 72) = v145;
      v155 = v256;
      *(v152 + 136) = &type metadata for String;
      *(v152 + 144) = v155;
      *(v152 + 104) = v154;
      *(v152 + 112) = v148;
      *(v152 + 120) = v150;
      *(v152 + 176) = &type metadata for UInt;
      *(v152 + 184) = &protocol witness table for UInt;
      *(v152 + 152) = 11623;
      v156 = v263;
      *(v152 + 216) = v153;
      *(v152 + 224) = v154;
      *(v152 + 192) = v156;
      v157 = v145;
      v158 = v156;
      v159 = static os_log_type_t.error.getter();
      sub_100005404(v151, &_mh_execute_header, v159, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v152);
      swift_setDeallocating();
      v256 = sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v160 = static os_log_type_t.error.getter();
      v161 = v258;
      sub_100005404(v151, &_mh_execute_header, v160, "Merging of Table CKMergeable failed during itemData creation from remote sync record with error %{public}@", 106, 2, v258);

      type metadata accessor for __VaListBuilder();
      v162 = swift_allocObject();
      v162[2] = 8;
      v162[3] = 0;
      v163 = v162 + 3;
      v162[4] = 0;
      v162[5] = 0;
      v148 = *(v161 + 16);
      if (v148)
      {
        v164 = 0;
        v145 = 40;
        while (1)
        {
          v165 = (v260 + 40 * v164);
          v150 = v165[3];
          LODWORD(v144) = sub_100020E58(v165, v150);
          v166 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
          v168 = *v163;
          v169 = *(v166 + 16);
          v92 = __OFADD__(*v163, v169);
          v170 = *v163 + v169;
          if (v92)
          {
            __break(1u);
            goto LABEL_175;
          }

          v171 = v166;
          v144 = v162[4];
          if (v144 >= v170)
          {
            goto LABEL_121;
          }

          if (v144 + 0x4000000000000000 < 0)
          {
            goto LABEL_176;
          }

          v150 = v162[5];
          if (2 * v144 > v170)
          {
            v170 = 2 * v144;
          }

          v162[4] = v170;
          if ((v170 - 0x1000000000000000) >> 61 != 7)
          {
            goto LABEL_178;
          }

          result = swift_slowAlloc();
          v162[5] = result;
          if (v150)
          {
            break;
          }

LABEL_122:
          if (!result)
          {
            __break(1u);
            goto LABEL_182;
          }

          v173 = *(v171 + 16);
          if (v173)
          {
            v174 = (v171 + 32);
            v175 = *v163;
            while (1)
            {
              v176 = *v174++;
              result[v175] = v176;
              v175 = *v163 + 1;
              if (__OFADD__(*v163, 1))
              {
                break;
              }

              *v163 = v175;
              if (!--v173)
              {
                goto LABEL_106;
              }
            }

            __break(1u);
LABEL_171:
            __break(1u);
LABEL_172:
            v117 = result;
            v116 = v167;

            (*(v253 + 8))(v246, v241);
            (*(v251 + 8))(v257, v258);
            goto LABEL_93;
          }

LABEL_106:

          if (++v164 == v148)
          {
            goto LABEL_156;
          }
        }

        if (result != v150 || result >= &v150[v168])
        {
          memmove(result, v150, 8 * v168);
        }

        __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_121:
        result = v162[5];
        goto LABEL_122;
      }

LABEL_156:
      v220 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v221 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v222 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v223 = String._bridgeToObjectiveC()();

      [v255 handleFailureInFunction:v221 file:v222 lineNumber:11623 isFatal:0 format:v223 args:v220];

      swift_setDeallocating();
    }

    else
    {
LABEL_155:
      v216 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v217 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v218 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v219 = String._bridgeToObjectiveC()();

      [v255 handleFailureInFunction:v217 file:v218 lineNumber:11633 isFatal:0 format:v219 args:v216];

      swift_setDeallocating();
    }

    swift_arrayDestroy();

LABEL_78:
    v116 = v261;
    v105 = v262;
LABEL_79:
    if (v116 >> 60 == 15)
    {
      v117 = 0;
      v116 = 0xF000000000000000;
      v118 = v238;
    }

    else
    {
      sub_100024E98(v244, v116);
      if (qword_1019F2258 != -1)
      {
        swift_once();
      }

      v119 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0);
      v120 = swift_initStackObject();
      *(v120 + 16) = xmmword_10146C6B0;
      v118 = v238;
      v121 = UUID.uuidString.getter();
      v123 = v122;
      *(v120 + 56) = &type metadata for String;
      *(v120 + 64) = sub_1000053B0();
      *(v120 + 32) = v121;
      *(v120 + 40) = v123;
      v124 = static os_log_type_t.default.getter();
      sub_100005404(v119, &_mh_execute_header, v124, "capsuleData was missing for %{public}@, patching with local capsuleData", 71, 2, v120);
      swift_setDeallocating();
      sub_100005070(v120 + 32);
      v117 = v244;
    }

    goto LABEL_84;
  }

  sub_1005B981C(&qword_1019F54E0);
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_10146BDE0;
  sub_100024E84(v243, v262);
  sub_100024E84(v240, v40);
  v257 = v64;
  v66 = sub_1009B6B8C();
  v68 = v67;
  *(v65 + 56) = &type metadata for String;
  v69 = sub_1000053B0();
  *(v65 + 32) = v66;
  v260 = v65 + 32;
  *(v65 + 64) = v69;
  *(v65 + 40) = v68;
  v70 = UUID.uuidString.getter();
  *(v65 + 96) = &type metadata for String;
  *(v65 + 104) = v69;
  *(v65 + 72) = v70;
  *(v65 + 80) = v71;
  v256 = objc_opt_self();
  v72 = [v256 _atomicIncrementAssertCount];
  *&v263 = [objc_allocWithZone(NSString) init];
  sub_100604538(v65, &v263);
  StaticString.description.getter();
  v259 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v73 = String._bridgeToObjectiveC()();

  v74 = [v73 lastPathComponent];

  v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v77 = v76;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v258 = static OS_os_log.crlAssert;
  v78 = swift_allocObject();
  *(v78 + 16) = xmmword_10146CA70;
  *(v78 + 56) = &type metadata for Int32;
  *(v78 + 64) = &protocol witness table for Int32;
  *(v78 + 32) = v72;
  v79 = sub_100006370(0, &qword_1019F4D30);
  *(v78 + 96) = v79;
  v80 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
  v81 = v259;
  *(v78 + 72) = v259;
  *(v78 + 136) = &type metadata for String;
  *(v78 + 144) = v69;
  *(v78 + 104) = v80;
  *(v78 + 112) = v75;
  *(v78 + 120) = v77;
  *(v78 + 176) = &type metadata for UInt;
  *(v78 + 184) = &protocol witness table for UInt;
  *(v78 + 152) = 11603;
  v82 = v263;
  *(v78 + 216) = v79;
  *(v78 + 224) = v80;
  *(v78 + 192) = v82;
  v83 = v81;
  v84 = v82;
  v85 = static os_log_type_t.error.getter();
  v86 = v258;
  sub_100005404(v258, &_mh_execute_header, v85, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v78);
  swift_setDeallocating();
  v259 = sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v87 = static os_log_type_t.error.getter();
  sub_100005404(v86, &_mh_execute_header, v87, "During creation of board item received unexpected ckMergeableRecordValue for unsupported itemType %{public}@ with item id %{public}@", 132, 2, v65);

  type metadata accessor for __VaListBuilder();
  v40 = swift_allocObject();
  *(v40 + 16) = 8;
  *(v40 + 24) = 0;
  v54 = (v40 + 24);
  *(v40 + 32) = 0;
  *(v40 + 40) = 0;
  v28 = *(v65 + 16);
  if (!v28)
  {
LABEL_75:
    v112 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v113 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v114 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v115 = String._bridgeToObjectiveC()();

    [v256 handleFailureInFunction:v113 file:v114 lineNumber:11603 isFatal:0 format:v115 args:v112];

    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
LABEL_76:
    v105 = v262;
    goto LABEL_77;
  }

  v21 = 0;
  while (1)
  {
    v88 = (v260 + 40 * v21);
    v53 = v88[4];
    sub_100020E58(v88, v88[3]);
    v89 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v32 = *v54;
    v91 = *(v89 + 16);
    v92 = __OFADD__(*v54, v91);
    v93 = *v54 + v91;
    if (v92)
    {
      __break(1u);
      goto LABEL_95;
    }

    v94 = *(v40 + 32);
    if (v94 >= v93)
    {
      goto LABEL_65;
    }

    if (v94 + 0x4000000000000000 < 0)
    {
      __break(1u);
LABEL_97:
      __break(1u);
      goto LABEL_98;
    }

    v53 = *(v40 + 40);
    if (2 * v94 > v93)
    {
      v93 = 2 * v94;
    }

    *(v40 + 32) = v93;
    if ((v93 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_97;
    }

    v95 = v65;
    v96 = v89;
    v97 = swift_slowAlloc();
    v98 = v97;
    *(v40 + 40) = v97;
    if (v53)
    {
      if (v97 != v53 || v97 >= &v53[8 * v32])
      {
        memmove(v97, v53, 8 * v32);
      }

      __VaListBuilder.deallocStorage(wordCount:storage:)();
      v89 = v96;
      v65 = v95;
LABEL_65:
      v98 = *(v40 + 40);
      if (!v98)
      {
        goto LABEL_72;
      }

      goto LABEL_66;
    }

    v89 = v96;
    v65 = v95;
    if (!v98)
    {
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

LABEL_66:
    v100 = *(v89 + 16);
    if (v100)
    {
      break;
    }

LABEL_50:

    if (++v21 == v28)
    {
      goto LABEL_75;
    }
  }

  v101 = (v89 + 32);
  v102 = *v54;
  while (1)
  {
    v103 = *v101++;
    *&v98[8 * v102] = v103;
    v102 = *v54 + 1;
    if (__OFADD__(*v54, 1))
    {
      break;
    }

    *v54 = v102;
    if (!--v100)
    {
      goto LABEL_50;
    }
  }

  __break(1u);
  __break(1u);
LABEL_92:
  v117 = v89;
  v135 = v90;

  (*(v260 + 8))(v21, v54);
  (*(v242 + 8))(v32, v28);
  v116 = v135;
LABEL_93:
  v118 = v238;
  v105 = v262;
LABEL_84:
  v125 = *(v118 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_minRequiredVersions + 16);
  v263 = *(v118 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_minRequiredVersions);
  v264 = v125;
  v265 = *(v118 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_minRequiredVersions + 32);
  v126 = v237;
  v127 = v243;
  v128 = v240;
  v129 = sub_100B69CC0(v235, v236, v239 & 0x1FF, &v263, *(v118 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_objectOptions), v243, v105, v240, v237, v117, v116);
  sub_100025870(v128, v126);
  sub_100025870(v127, v105);
  sub_100025870(v117, v116);
  return v129;
}

uint64_t sub_100E9B2F4(uint64_t a1, void *a2)
{
  if (String.count.getter() < 1)
  {
    v5 = 0;
    a2 = 0xE000000000000000;
  }

  else
  {

    v4._countAndFlagsBits = 46;
    v4._object = 0xE100000000000000;
    String.append(_:)(v4);
    v5 = a1;
  }

  _StringGuts.grow(_:)(100);
  v6._countAndFlagsBits = v5;
  v6._object = a2;
  String.append(_:)(v6);
  v7._countAndFlagsBits = 0x6975755F6D657469;
  v7._object = 0xE900000000000064;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 8236;
  v8._object = 0xE200000000000000;
  String.append(_:)(v8);
  v9._countAndFlagsBits = v5;
  v9._object = a2;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 0x755F746E65726170;
  v10._object = 0xEB00000000646975;
  String.append(_:)(v10);
  v11._countAndFlagsBits = 8236;
  v11._object = 0xE200000000000000;
  String.append(_:)(v11);
  v12._countAndFlagsBits = v5;
  v12._object = a2;
  String.append(_:)(v12);
  v13._object = 0x8000000101585360;
  v13._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 8236;
  v14._object = 0xE200000000000000;
  String.append(_:)(v14);
  v15._countAndFlagsBits = v5;
  v15._object = a2;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0x7079745F6D657469;
  v16._object = 0xE900000000000065;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 8236;
  v17._object = 0xE200000000000000;
  String.append(_:)(v17);
  v18._countAndFlagsBits = v5;
  v18._object = a2;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x645F6E6F6D6D6F63;
  v19._object = 0xEB00000000617461;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 8236;
  v20._object = 0xE200000000000000;
  String.append(_:)(v20);
  v21._countAndFlagsBits = v5;
  v21._object = a2;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 0x6369666963657073;
  v22._object = 0xED0000617461645FLL;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 8236;
  v23._object = 0xE200000000000000;
  String.append(_:)(v23);
  v24._countAndFlagsBits = v5;
  v24._object = a2;
  String.append(_:)(v24);
  v25._countAndFlagsBits = 0x6E6F7473626D6F74;
  v25._object = 0xEA00000000006465;
  String.append(_:)(v25);
  v26._countAndFlagsBits = 8236;
  v26._object = 0xE200000000000000;
  String.append(_:)(v26);
  v27._countAndFlagsBits = v5;
  v27._object = a2;
  String.append(_:)(v27);
  v28._object = 0x80000001015A33D0;
  v28._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v28);
  v29._countAndFlagsBits = 8236;
  v29._object = 0xE200000000000000;
  String.append(_:)(v29);
  v30._countAndFlagsBits = v5;
  v30._object = a2;
  String.append(_:)(v30);
  v31._countAndFlagsBits = 0x7461645F636E7973;
  v31._object = 0xE900000000000061;
  String.append(_:)(v31);
  v32._countAndFlagsBits = 8236;
  v32._object = 0xE200000000000000;
  String.append(_:)(v32);
  v33._countAndFlagsBits = v5;
  v33._object = a2;
  String.append(_:)(v33);
  v34._countAndFlagsBits = 0xD000000000000014;
  v34._object = 0x80000001015A3590;
  String.append(_:)(v34);
  v35._countAndFlagsBits = 8236;
  v35._object = 0xE200000000000000;
  String.append(_:)(v35);
  v36._countAndFlagsBits = v5;
  v36._object = a2;
  String.append(_:)(v36);
  v37._countAndFlagsBits = 0x6F5F7463656A626FLL;
  v37._object = 0xEE00736E6F697470;
  String.append(_:)(v37);
  v38._countAndFlagsBits = 8236;
  v38._object = 0xE200000000000000;
  String.append(_:)(v38);
  v39._countAndFlagsBits = v5;
  v39._object = a2;
  String.append(_:)(v39);
  v40._countAndFlagsBits = 0xD00000000000002DLL;
  v40._object = 0x80000001015A3760;
  String.append(_:)(v40);
  v41._countAndFlagsBits = 8236;
  v41._object = 0xE200000000000000;
  String.append(_:)(v41);
  v42._countAndFlagsBits = v5;
  v42._object = a2;
  String.append(_:)(v42);
  v43._countAndFlagsBits = 0xD000000000000026;
  v43._object = 0x80000001015A33F0;
  String.append(_:)(v43);
  v44._countAndFlagsBits = 8236;
  v44._object = 0xE200000000000000;
  String.append(_:)(v44);
  v45._countAndFlagsBits = v5;
  v45._object = a2;
  String.append(_:)(v45);
  v46._countAndFlagsBits = 0xD00000000000001BLL;
  v46._object = 0x80000001015A3790;
  String.append(_:)(v46);
  v47._countAndFlagsBits = 8236;
  v47._object = 0xE200000000000000;
  String.append(_:)(v47);
  v48._countAndFlagsBits = v5;
  v48._object = a2;
  String.append(_:)(v48);
  v49._countAndFlagsBits = 0x6D6574695F627573;
  v49._object = 0xED0000657079745FLL;
  String.append(_:)(v49);
  v50._countAndFlagsBits = 8236;
  v50._object = 0xE200000000000000;
  String.append(_:)(v50);
  v51._countAndFlagsBits = v5;
  v51._object = a2;
  String.append(_:)(v51);
  v52._countAndFlagsBits = 0x5F656C7573706163;
  v52._object = 0xEC00000061746164;
  String.append(_:)(v52);
  v53._countAndFlagsBits = 8236;
  v53._object = 0xE200000000000000;
  String.append(_:)(v53);
  v54._countAndFlagsBits = v5;
  v54._object = a2;
  String.append(_:)(v54);

  v55._countAndFlagsBits = 0xD000000000000019;
  v55._object = 0x80000001015A37B0;
  String.append(_:)(v55);
  return 0;
}

uint64_t sub_100E9B7E0(uint64_t a1, uint64_t a2)
{
  v236 = type metadata accessor for CRLBoardIdentifierStorage(0);
  v3 = __chkstk_darwin(v236);
  v234 = &v207 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v233 = &v207 - v5;
  v6 = type metadata accessor for CRLBoardIdentifier(0);
  v7 = __chkstk_darwin(v6 - 8);
  v230 = &v207 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v232 = &v207 - v10;
  v11 = __chkstk_darwin(v9);
  v231 = &v207 - v12;
  __chkstk_darwin(v11);
  v235 = &v207 - v13;
  v14 = type metadata accessor for DispatchPredicate();
  v237 = *(v14 - 8);
  v238 = v14;
  __chkstk_darwin(v14);
  v239 = (&v207 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_1005B981C(&qword_1019F6990);
  v17 = __chkstk_darwin(v16 - 8);
  v229 = &v207 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v241 = (&v207 - v20);
  v21 = __chkstk_darwin(v19);
  v240 = &v207 - v22;
  __chkstk_darwin(v21);
  v24 = &v207 - v23;
  inited = type metadata accessor for UUID();
  v26 = *(inited - 8);
  v27 = __chkstk_darwin(inited);
  v29 = &v207 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v27);
  v32 = &v207 - v31;
  __chkstk_darwin(v30);
  v34 = &v207 - v33;
  v35 = a2;
  v36 = a2;
  v37 = a1;
  v38 = a1;
  LODWORD(a1) = 0;
  sub_100083B64(v36, v38, v24);
  v225 = v32;
  v226 = v35;
  v223 = v29;
  v227 = v34;
  v228 = v37;
  if ((*(v26 + 48))(v24, 1, inited) == 1)
  {

    sub_10000CAAC(v24, &qword_1019F6990);
    return 0;
  }

  v224 = v26;
  v41 = v26 + 32;
  v42 = *(v26 + 32);
  v42(v227, v24, inited);
  v43 = v226;
  v44 = v228;
  if (__OFADD__(v226, 1))
  {
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v45 = v241;
  sub_100083B64(v226 + 1, v228, v241);
  v222 = inited;
  sub_10003DFF8(v45, v240, &qword_1019F6990);
  v46 = v43 + 2;
  if (__OFADD__(v43, 2))
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v47 = *(*(v44 + 2) + 32);
  v43 = v238;
  v48 = v239;
  *v239 = v47;
  v49 = v237;
  v50 = v237[13];
  LODWORD(v221) = enum case for DispatchPredicate.onQueue(_:);
  v241 = v237 + 13;
  v220 = v50;
  v50(v48);
  v51 = v47;
  v24 = _dispatchPreconditionTest(_:)();
  v52 = v49[1];
  inited = (v49 + 1);
  v237 = v52;
  (v52)(v48, v43);
  if ((v24 & 1) == 0)
  {
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v53 = sub_10002C280(v46, v44);
  v55 = v227;
  v56 = v236;
  if (!v53)
  {

    sub_10000CAAC(v240, &qword_1019F6990);
    v60 = *(v224 + 8);
    v61 = v55;
    v62 = v222;
LABEL_10:
    v60(v61, v62);
    return 0;
  }

  v218 = v42;
  v219 = v41;
  v57 = sub_100024DD4(v53, v54);
  v59 = v58;
  sub_100024E98(v57, v58);
  v24 = v225;
  sub_100024EEC(v225, v57, v59);
  v43 = v222;
  v64 = v63;
  v216 = v57;
  v217 = v59;
  v66 = v65;
  sub_10002640C(v57, v59);
  v67 = v234;
  v218(v234, v24, v43);
  v68 = (v67 + *(v56 + 20));
  *v68 = v64;
  v68[1] = v66;
  v69 = v233;
  sub_100025668(v67, v233, type metadata accessor for CRLBoardIdentifierStorage);
  v70 = v69;
  v71 = v232;
  sub_100025668(v70, v232, type metadata accessor for CRLBoardIdentifierStorage);
  v72 = v71;
  a1 = v231;
  sub_100025668(v72, v231, type metadata accessor for CRLBoardIdentifier);
  v41 = v235;
  sub_100025668(a1, v235, type metadata accessor for CRLBoardIdentifier);
  v73 = v226;
  if (__OFADD__(v226, 3))
  {
    goto LABEL_82;
  }

  v74 = sub_10001E378(v226 + 3, v44);
  v75 = v224;
  if (v76)
  {

    sub_10002640C(v216, v217);
    sub_100026028(v41, type metadata accessor for CRLBoardIdentifier);
    sub_10000CAAC(v240, &qword_1019F6990);
    (*(v75 + 8))(v227, v43);
    return 0;
  }

  a1 = v74;
  if (__OFADD__(v73, 14))
  {
    goto LABEL_83;
  }

  v231 = sub_10001E378(v73 + 14, v44);
  LODWORD(v225) = v77;
  v78 = *(*(v44 + 2) + 32);
  inited = v238;
  v79 = v239;
  *v239 = v78;
  (v220)(v79, v221, inited);
  v80 = v78;
  LOBYTE(v78) = _dispatchPreconditionTest(_:)();
  (v237)(v79, inited);
  if ((v78 & 1) == 0)
  {
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v81 = sub_10002C280(v226 + 4, v44);
  if (v81)
  {
    v234 = sub_100024DD4(v81, v82);
    v236 = v83;
  }

  else
  {
    v234 = 0;
    v236 = 0xF000000000000000;
  }

  v84 = *(*(v44 + 2) + 32);
  inited = v238;
  v85 = v239;
  *v239 = v84;
  (v220)(v85, v221, inited);
  v86 = v84;
  LOBYTE(v84) = _dispatchPreconditionTest(_:)();
  (v237)(v85, inited);
  if ((v84 & 1) == 0)
  {
    goto LABEL_85;
  }

  v87 = sub_10002C280(v226 + 5, v44);
  if (v87)
  {
    v232 = sub_100024DD4(v87, v88);
    v233 = v89;
  }

  else
  {
    v232 = 0;
    v233 = 0xF000000000000000;
  }

  v90 = v239;
  v215 = a1;
  v91 = v226 + 15;
  if (__OFADD__(v226, 15))
  {
    goto LABEL_86;
  }

  a1 = *(*(v44 + 2) + 32);
  *v239 = a1;
  inited = v238;
  (v220)(v90, v221, v238);
  v92 = a1;
  LODWORD(a1) = _dispatchPreconditionTest(_:)();
  (v237)(v90, inited);
  if ((a1 & 1) == 0)
  {
    goto LABEL_87;
  }

  v93 = sub_10002C280(v91, v44);
  v95 = v226;
  if (v93)
  {
    a1 = sub_100024DD4(v93, v94);
    v97 = v96;
  }

  else
  {
    a1 = 0;
    v97 = 0xF000000000000000;
  }

  v98 = sub_100083D68(v95 + 6, v44);
  if (v98 == 2 || (v214 = v98, v99 = sub_100028894(v95 + 7, v44), (v100 & 1) != 0))
  {

    sub_100025870(a1, v97);
    sub_100025870(v232, v233);
    sub_100025870(v234, v236);
    sub_10002640C(v216, v217);
    sub_100026028(v41, type metadata accessor for CRLBoardIdentifier);
    sub_10000CAAC(v240, &qword_1019F6990);
    v60 = *(v224 + 8);
    v61 = v227;
    v62 = v43;
    goto LABEL_10;
  }

  v210 = v99;
  v213 = v97;
  v101 = *(*(v44 + 2) + 32);
  v41 = v238;
  v102 = v239;
  *v239 = v101;
  (v220)(v102, v221, v41);
  v103 = v101;
  LOBYTE(v101) = _dispatchPreconditionTest(_:)();
  (v237)(v102, v41);
  if ((v101 & 1) == 0)
  {
    goto LABEL_91;
  }

  v104 = sub_10002C280(v226 + 8, v44);
  if (v104)
  {
    v211 = sub_100024DD4(v104, v105);
    v212 = v106;
  }

  else
  {
    v211 = 0;
    v212 = 0xF000000000000000;
  }

  v107 = v239;
  v239 = a1;
  v108 = v226 + 16;
  if (__OFADD__(v226, 16))
  {
    goto LABEL_92;
  }

  a1 = *(*(v44 + 2) + 32);
  *v107 = a1;
  (v220)(v107, v221, v41);
  v109 = a1;
  v110 = _dispatchPreconditionTest(_:)();
  v111 = v41;
  v41 = v110;
  (v237)(v107, v111);
  if ((v41 & 1) == 0)
  {
LABEL_93:
    __break(1u);
LABEL_94:
    swift_once();
    goto LABEL_45;
  }

  v112 = sub_10002C280(v108, v44);
  v114 = v239;
  v115 = v226;
  v116 = v224;
  if (v112)
  {
    v241 = sub_100024DD4(v112, v113);
    v118 = v117;
  }

  else
  {
    v241 = 0;
    v118 = 0xF000000000000000;
  }

  v119 = v235;
  v120 = sub_100028894(v115 + 9, v44);
  if (v121)
  {

    sub_100025870(v241, v118);
    sub_100025870(v211, v212);
    sub_100025870(v114, v213);
    sub_100025870(v232, v233);
    sub_100025870(v234, v236);
    sub_10002640C(v216, v217);
    sub_100026028(v119, type metadata accessor for CRLBoardIdentifier);
    sub_10000CAAC(v240, &qword_1019F6990);
    (*(v116 + 8))(v227, v43);
    return 0;
  }

  v238 = v118;
  v122 = v120;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v242 = &type metadata for UInt64;
  sub_1005B981C(&qword_101A21C70);
  String.init<A>(describing:)();
  v123 = String._bridgeToObjectiveC()();

  v41 = sub_100006370(0, &qword_1019F4D30);
  *(inited + 56) = v41;
  v124 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
  *(inited + 32) = v123;
  v24 = inited + 32;
  *(inited + 64) = v124;
  v237 = v122;
  if (v122)
  {

    v125 = v240;
    goto LABEL_71;
  }

  v221 = v124;
  v208 = objc_opt_self();
  LODWORD(a1) = [v208 _atomicIncrementAssertCount];
  v242 = [objc_allocWithZone(NSString) init];
  sub_100604538(inited, &v242);
  StaticString.description.getter();
  v220 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v126 = String._bridgeToObjectiveC()();

  v127 = [v126 lastPathComponent];

  v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v44 = v128;

  if (qword_1019F20A0 != -1)
  {
    goto LABEL_94;
  }

LABEL_45:
  v209 = static OS_os_log.crlAssert;
  v129 = swift_initStackObject();
  *(v129 + 16) = xmmword_10146CA70;
  *(v129 + 56) = &type metadata for Int32;
  *(v129 + 64) = &protocol witness table for Int32;
  *(v129 + 32) = a1;
  v131 = v220;
  v130 = v221;
  *(v129 + 96) = v41;
  *(v129 + 104) = v130;
  *(v129 + 72) = v131;
  *(v129 + 136) = &type metadata for String;
  v132 = sub_1000053B0();
  *(v129 + 112) = v43;
  *(v129 + 120) = v44;
  *(v129 + 176) = &type metadata for UInt;
  *(v129 + 184) = &protocol witness table for UInt;
  *(v129 + 144) = v132;
  *(v129 + 152) = 11251;
  v133 = v242;
  *(v129 + 216) = v41;
  *(v129 + 224) = v130;
  *(v129 + 192) = v133;
  v134 = v131;
  v135 = v133;
  v136 = static os_log_type_t.error.getter();
  v137 = v209;
  sub_100005404(v209, &_mh_execute_header, v136, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v129);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v138 = static os_log_type_t.error.getter();
  sub_100005404(v137, &_mh_execute_header, v138, "expected inequality between two values of type %{public}@", 57, 2, inited);

  type metadata accessor for __VaListBuilder();
  v41 = swift_allocObject();
  *(v41 + 16) = 8;
  *(v41 + 24) = 0;
  v139 = (v41 + 24);
  *(v41 + 32) = 0;
  *(v41 + 40) = 0;
  v221 = inited;
  v140 = *(inited + 16);
  if (v140)
  {
    inited = 0;
    while (1)
    {
      v141 = (v24 + 40 * inited);
      v44 = v141[3];
      v43 = v141[4];
      sub_100020E58(v141, v44);
      v142 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      a1 = *v139;
      v143 = *(v142 + 16);
      v144 = __OFADD__(*v139, v143);
      v145 = *v139 + v143;
      if (v144)
      {
        goto LABEL_88;
      }

      v146 = *(v41 + 32);
      if (v146 >= v145)
      {
        goto LABEL_62;
      }

      if (v146 + 0x4000000000000000 < 0)
      {
        goto LABEL_89;
      }

      v44 = *(v41 + 40);
      if (2 * v146 > v145)
      {
        v145 = 2 * v146;
      }

      *(v41 + 32) = v145;
      if ((v145 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_90;
      }

      v43 = v142;
      v147 = swift_slowAlloc();
      v148 = v147;
      *(v41 + 40) = v147;
      if (v44)
      {
        break;
      }

      v142 = v43;
      if (!v148)
      {
LABEL_69:
        __break(1u);
        goto LABEL_70;
      }

LABEL_63:
      v150 = *(v142 + 16);
      if (v150)
      {
        v151 = (v142 + 32);
        v152 = *v139;
        do
        {
          v153 = *v151++;
          *(v148 + v152) = v153;
          v152 = *v139 + 1;
          if (__OFADD__(*v139, 1))
          {
            goto LABEL_79;
          }

          *v139 = v152;
        }

        while (--v150);
      }

      if (++inited == v140)
      {
        goto LABEL_70;
      }
    }

    if (v147 != v44 || v147 >= v44 + 8 * a1)
    {
      memmove(v147, v44, 8 * a1);
    }

    __VaListBuilder.deallocStorage(wordCount:storage:)();
    v142 = v43;
LABEL_62:
    v148 = *(v41 + 40);
    if (!v148)
    {
      goto LABEL_69;
    }

    goto LABEL_63;
  }

LABEL_70:
  v154 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v155 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v156 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v157 = String._bridgeToObjectiveC()();

  [v208 handleFailureInFunction:v155 file:v156 lineNumber:11251 isFatal:0 format:v157 args:v154];

  v114 = v239;
  v125 = v240;
LABEL_71:
  v158 = v226;
  v159 = v228;
  v160 = sub_100028894(v226 + 10, v228);
  v161 = v222;
  v162 = v227;
  if (v163)
  {

    sub_100025870(v241, v238);
    sub_100025870(v211, v212);
    v164 = v114;
LABEL_76:
    sub_100025870(v164, v213);
    sub_100025870(v232, v233);
    sub_100025870(v234, v236);
    sub_10002640C(v216, v217);
    sub_100026028(v235, type metadata accessor for CRLBoardIdentifier);
    sub_10000CAAC(v125, &qword_1019F6990);
    (*(v224 + 8))(v162, v161);
    return 0;
  }

  v165 = v160;
  v166 = sub_100028894(v158 + 11, v159);
  if (v167 & 1) != 0 || (v168 = v166, v240 = sub_100028894(v158 + 12, v159), (v169))
  {

    sub_100025870(v241, v238);
    sub_100025870(v211, v212);
    v164 = v239;
    goto LABEL_76;
  }

  v170 = sub_100028894(v158 + 13, v159);
  v171 = v224;
  v226 = v170;
  LODWORD(v221) = v172;

  sub_10002640C(v216, v217);
  v173 = v218;
  v218(v223, v162, v161);
  v174 = v125;
  v175 = v229;
  sub_10003DFF8(v174, v229, &qword_1019F6990);
  v228 = type metadata accessor for CRLBoardIdentifier;
  sub_100025668(v235, v230, type metadata accessor for CRLBoardIdentifier);
  type metadata accessor for CRLBoardItemDatabaseRow();
  v176 = swift_allocObject();
  v177 = OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_parentContainerUUID;
  (*(v171 + 56))(v176 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_parentContainerUUID, 1, 1, v161);
  *(v176 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData) = xmmword_101486780;
  *(v176 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData) = xmmword_101486780;
  *(v176 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData) = xmmword_101486780;
  *(v176 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData) = xmmword_101486780;
  *(v176 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue) = xmmword_101486780;
  v173(v176 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_itemUUID, v223, v161);
  v178 = v176 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_minRequiredVersions;
  *v178 = v237;
  *(v178 + 8) = v168;
  v179 = v226;
  *(v178 + 16) = v240;
  *(v178 + 24) = v179;
  *(v178 + 32) = v221 & 1;
  *(v176 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_objectOptions) = v165;
  swift_beginAccess();
  sub_10002C638(v175, v176 + v177, &qword_1019F6990);
  swift_endAccess();
  sub_100025668(v230, v176 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_boardIdentifier, v228);
  v180 = v176 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_rawTypeValues;
  v181 = v231;
  *v180 = v215;
  *(v180 + 8) = v181;
  *(v180 + 16) = v225 & 1;
  v182 = (v176 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData);
  v183 = *(v176 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData);
  v184 = *(v176 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData + 8);
  v185 = v234;
  v186 = v236;
  sub_100024E84(v234, v236);
  *v182 = v185;
  v182[1] = v186;
  sub_100025870(v183, v184);
  sub_100025870(v185, v186);
  v187 = (v176 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData);
  v188 = *(v176 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData);
  v189 = *(v176 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData + 8);
  v191 = v232;
  v190 = v233;
  sub_100024E84(v232, v233);
  *v187 = v191;
  v187[1] = v190;
  sub_100025870(v188, v189);
  sub_100025870(v191, v190);
  v192 = (v176 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData);
  v193 = *(v176 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData);
  v194 = *(v176 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData + 8);
  v195 = v239;
  v196 = v213;
  sub_100024E84(v239, v213);
  *v192 = v195;
  v192[1] = v196;
  sub_100025870(v193, v194);
  sub_100025870(v195, v196);
  *(v176 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_isLocalTombstone) = v214 & 1;
  v197 = v211;
  *(v176 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_unsyncedChanges) = v210;
  v198 = (v176 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData);
  v199 = *(v176 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData);
  v200 = *(v176 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData + 8);
  v201 = v212;
  sub_100024E84(v197, v212);
  *v198 = v197;
  v198[1] = v201;
  sub_100025870(v199, v200);
  sub_100025870(v197, v201);
  v202 = (v176 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue);
  v203 = *(v176 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue);
  v204 = *(v176 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue + 8);
  v205 = v241;
  v206 = v238;
  sub_100024E84(v241, v238);
  *v202 = v205;
  v202[1] = v206;
  sub_100025870(v203, v204);
  sub_100025870(v205, v206);
  return v176;
}

uint64_t sub_100E9CD68(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v53 = a5;
  v9 = &qword_1019F6990;
  v10 = &unk_10146D2F0;
  v11 = sub_1005B981C(&qword_1019F6990);
  v44 = *(v11 - 8);
  __chkstk_darwin(v11 - 8);
  v45 = v43 - v12;
  v13 = sub_1005B981C(&qword_101A21DE0);
  __chkstk_darwin(v13 - 8);
  v15 = (v43 - v14);
  v16 = -1 << *(a1 + 32);
  v17 = ~v16;
  v18 = *(a1 + 64);
  v19 = -v16;
  v46 = a1;
  v47 = a1 + 64;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v48 = v17;
  v49 = 0;
  v50 = v20 & v18;
  v51 = a2;
  v52 = a3;

  v43[1] = a3;

  while (1)
  {
    sub_100E90C10(v15);
    v22 = sub_1005B981C(&qword_101A22780);
    if ((*(*(v22 - 8) + 48))(v15, 1, v22) == 1)
    {
      sub_100035F90();
    }

    v24 = *v15;
    v23 = v15[1];
    v25 = v9;
    v26 = v10;
    sub_10003DFF8(v15 + *(v22 + 48), v45, v9);
    v27 = *v53;
    v29 = sub_10000BE7C(v24, v23);
    v30 = v27[2];
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      break;
    }

    v33 = v28;
    if (v27[3] >= v32)
    {
      if ((a4 & 1) == 0)
      {
        sub_100AA4A54();
      }
    }

    else
    {
      sub_100A8A448(v32, a4 & 1);
      v34 = sub_10000BE7C(v24, v23);
      if ((v33 & 1) != (v35 & 1))
      {
        goto LABEL_19;
      }

      v29 = v34;
    }

    v36 = *v53;
    if (v33)
    {

      v21 = v36[7] + *(v44 + 72) * v29;
      v9 = v25;
      v10 = v26;
      sub_10002C638(v45, v21, v25);
      a4 = 1;
    }

    else
    {
      v36[(v29 >> 6) + 8] |= 1 << v29;
      v37 = (v36[6] + 16 * v29);
      *v37 = v24;
      v37[1] = v23;
      v38 = v36[7] + *(v44 + 72) * v29;
      v9 = v25;
      v10 = v26;
      sub_10003DFF8(v45, v38, v25);
      v39 = v36[2];
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        goto LABEL_18;
      }

      v36[2] = v41;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100E9D0C0(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {

    v3._countAndFlagsBits = 46;
    v3._object = 0xE100000000000000;
    String.append(_:)(v3);
    v5 = a1;
    v4 = a2;
  }

  else
  {
    v5 = 0;
    v4 = 0xE000000000000000;
  }

  _StringGuts.grow(_:)(16);

  v6._countAndFlagsBits = 0x75755F7465737361;
  v6._object = 0xEA00000000006469;
  String.append(_:)(v6);
  v7._countAndFlagsBits = 8236;
  v7._object = 0xE200000000000000;
  String.append(_:)(v7);
  v8._countAndFlagsBits = v5;
  v8._object = v4;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0x6F69736E65747865;
  v9._object = 0xE90000000000006ELL;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 8236;
  v10._object = 0xE200000000000000;
  String.append(_:)(v10);
  v11._countAndFlagsBits = v5;
  v11._object = v4;
  String.append(_:)(v11);

  v12._countAndFlagsBits = 0x6E6F7473626D6F74;
  v12._object = 0xEE00657461645F65;
  String.append(_:)(v12);
  return v5;
}

uint64_t sub_100E9D20C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v4 - 8);
  v6 = v23 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v23 - v12;
  sub_100083B64(a2, a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    v15 = *(v8 + 32);
    v15(v13, v6, v7);
    result = a2 + 1;
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else
    {
      v23[0] = sub_10089C2BC(result, a1);
      result = a2 + 2;
      if (!__OFADD__(a2, 2))
      {
        v17 = v16;
        v18 = sub_100083E9C(result, a1);
        v20 = v19;

        if ((v20 & 1) == 0)
        {
          v15(v11, v13, v7);
          type metadata accessor for CRLAssetDatabaseRow();
          v21 = swift_allocObject();
          v15((v21 + OBJC_IVAR____TtC8Freeform19CRLAssetDatabaseRow_assetUUID), v11, v7);
          result = v21;
          v22 = (v21 + OBJC_IVAR____TtC8Freeform19CRLAssetDatabaseRow_fileExtension);
          *v22 = v23[0];
          v22[1] = v17;
          *(v21 + OBJC_IVAR____TtC8Freeform19CRLAssetDatabaseRow_tombstoneDate) = v18;
          return result;
        }

        (*(v8 + 8))(v13, v7);

        return 0;
      }
    }

    __break(1u);
    return result;
  }

  sub_10000CAAC(v6, &qword_1019F6990);
  return 0;
}

uint64_t sub_100E9D4E0(uint64_t a1, char a2)
{
  v2 = a2;
  v3 = *(a1 + 16);
  if (!v3)
  {
    v17 = 0;
    goto LABEL_53;
  }

  v60 = 0;
  v59 = 0;
  v4 = 0;
  v5 = a1 + 32;
  do
  {
    v10 = *(v5 + v4);
    if (v10 == 2)
    {
      if (!v4)
      {
        v60 = 1;
LABEL_17:
        v14 = 0xD000000000000010;
        v13 = 0x8000000101585360;
        goto LABEL_32;
      }

      v60 = 1;
    }

    else if (*(v5 + v4))
    {
      if (!v4)
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (!v4)
      {
        v59 = 1;
        v14 = 0x6975755F6D657469;
        v13 = 0xE900000000000064;
        goto LABEL_32;
      }

      v59 = 1;
    }

    v11._countAndFlagsBits = 8236;
    v11._object = 0xE200000000000000;
    String.append(_:)(v11);
    v12._countAndFlagsBits = 8236;
    v12._object = 0xE200000000000000;
    String.append(_:)(v12);
LABEL_13:
    v13 = 0xE900000000000064;
    v14 = 0x6975755F6D657469;
    switch(v10)
    {
      case 1:
        v14 = 0x755F746E65726170;
        v13 = 0xEB00000000646975;
        break;
      case 2:
        goto LABEL_17;
      case 3:
        v13 = 0xE900000000000065;
        v14 = 0x7079745F6D657469;
        break;
      case 4:
        v14 = 0x645F6E6F6D6D6F63;
        v13 = 0xEB00000000617461;
        break;
      case 5:
        v14 = 0x6369666963657073;
        v13 = 0xED0000617461645FLL;
        break;
      case 6:
        v14 = 0x6E6F7473626D6F74;
        v13 = 0xEA00000000006465;
        break;
      case 7:
        v14 = 0xD000000000000010;
        v13 = 0x80000001015A33D0;
        break;
      case 8:
        v13 = 0xE900000000000061;
        v14 = 0x7461645F636E7973;
        break;
      case 9:
        v14 = 0xD000000000000014;
        v13 = 0x80000001015A3590;
        break;
      case 10:
        v14 = 0x6F5F7463656A626FLL;
        v13 = 0xEE00736E6F697470;
        break;
      case 11:
        v14 = 0xD00000000000002DLL;
        v13 = 0x80000001015A3760;
        break;
      case 12:
        v14 = 0xD000000000000026;
        v13 = 0x80000001015A33F0;
        break;
      case 13:
        v14 = 0xD00000000000001BLL;
        v13 = 0x80000001015A3790;
        break;
      case 14:
        v14 = 0x6D6574695F627573;
        v13 = 0xED0000657079745FLL;
        break;
      case 15:
        v14 = 0x5F656C7573706163;
        v13 = 0xEC00000061746164;
        break;
      case 16:
        v14 = 0xD000000000000019;
        v13 = 0x80000001015A37B0;
        break;
      default:
        break;
    }

LABEL_32:
    ++v4;
    v15 = v13;
    String.append(_:)(*&v14);

    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    String.append(_:)(v16);

    v6 = 0x6975755F6D657469;
    v7 = 0xE900000000000064;
    switch(v10)
    {
      case 0:
        break;
      case 1:
        v6 = 0x755F746E65726170;
        v7 = 0xEB00000000646975;
        break;
      case 2:
        v6 = 0xD000000000000010;
        v7 = 0x8000000101585360;
        break;
      case 3:
        v7 = 0xE900000000000065;
        v6 = 0x7079745F6D657469;
        break;
      case 4:
        v6 = 0x645F6E6F6D6D6F63;
        v7 = 0xEB00000000617461;
        break;
      case 5:
        v6 = 0x6369666963657073;
        v7 = 0xED0000617461645FLL;
        break;
      case 6:
        v6 = 0x6E6F7473626D6F74;
        v7 = 0xEA00000000006465;
        break;
      case 7:
        v6 = 0xD000000000000010;
        v7 = 0x80000001015A33D0;
        break;
      case 8:
        v7 = 0xE900000000000061;
        v6 = 0x7461645F636E7973;
        break;
      case 9:
        v6 = 0xD000000000000014;
        v7 = 0x80000001015A3590;
        break;
      case 10:
        v6 = 0x6F5F7463656A626FLL;
        v7 = 0xEE00736E6F697470;
        break;
      case 11:
        v6 = 0xD00000000000002DLL;
        v7 = 0x80000001015A3760;
        break;
      case 12:
        v6 = 0xD000000000000026;
        v7 = 0x80000001015A33F0;
        break;
      case 13:
        v6 = 0xD00000000000001BLL;
        v7 = 0x80000001015A3790;
        break;
      case 14:
        v6 = 0x6D6574695F627573;
        v7 = 0xED0000657079745FLL;
        break;
      case 15:
        v6 = 0x5F656C7573706163;
        v7 = 0xEC00000061746164;
        break;
      case 16:
        v6 = 0xD000000000000019;
        v7 = 0x80000001015A37B0;
        break;
      default:
        JUMPOUT(0);
    }

    v8 = v7;
    String.append(_:)(*&v6);

    v9._countAndFlagsBits = 24435;
    v9._object = 0xE200000000000000;
    String.append(_:)(v9);
  }

  while (v3 != v4);
  if ((v59 & 1) == 0)
  {
    v2 = a2;
    v17 = v60;
LABEL_53:
    v18._countAndFlagsBits = 0x755F6D657469202CLL;
    v18._object = 0xEB00000000646975;
    String.append(_:)(v18);
    v19._countAndFlagsBits = 0x755F6D6574695F73;
    v19._object = 0xEB00000000646975;
    String.append(_:)(v19);
    v20._countAndFlagsBits = 8236;
    v20._object = 0xE200000000000000;
    String.append(_:)(v20);

    if (v17)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  v2 = a2;
  if ((v60 & 1) == 0)
  {
LABEL_54:
    v21._countAndFlagsBits = 0xD000000000000012;
    v21._object = 0x80000001015A3A60;
    String.append(_:)(v21);
    v22._countAndFlagsBits = 0xD000000000000012;
    v22._object = 0x80000001015A3A40;
    String.append(_:)(v22);
    v23._countAndFlagsBits = 8236;
    v23._object = 0xE200000000000000;
    String.append(_:)(v23);
  }

LABEL_55:
  if (v2)
  {
    v24._countAndFlagsBits = 0xD000000000000012;
    v24._object = 0x80000001015A3A80;
    String.append(_:)(v24);
    v25._countAndFlagsBits = 807419424;
    v25._object = 0xE400000000000000;
    String.append(_:)(v25);
    v26 = 0xE700000000000000;
    v58._countAndFlagsBits = 0x20455245485720;
  }

  else
  {
    v58._countAndFlagsBits = 0;
    v26 = 0xE000000000000000;
  }

  v58._object = v26;
  _StringGuts.grow(_:)(174);
  v27._countAndFlagsBits = 0xD000000000000019;
  v27._object = 0x80000001015A3AA0;
  String.append(_:)(v27);
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  String.append(_:)(v28);
  v29._countAndFlagsBits = 0x4553282053412029;
  v29._object = 0xED0000205443454CLL;
  String.append(_:)(v29);
  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  String.append(_:)(v30);
  v31._countAndFlagsBits = 0x204D4F524620;
  v31._object = 0xE600000000000000;
  String.append(_:)(v31);
  v32._countAndFlagsBits = 0x74695F6472616F62;
  v32._object = 0xEB00000000736D65;
  String.append(_:)(v32);
  v33._countAndFlagsBits = 0x2820455245485720;
  v33._object = 0xE800000000000000;
  String.append(_:)(v33);
  v34._countAndFlagsBits = 0x6975755F6D657469;
  v34._object = 0xE900000000000064;
  String.append(_:)(v34);
  v35._object = 0xE900000000000020;
  v35._countAndFlagsBits = 0x444E41203F203D20;
  String.append(_:)(v35);
  v36._object = 0x8000000101585360;
  v36._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v36);
  v37._countAndFlagsBits = 0xD000000000000013;
  v37._object = 0x80000001015A3AC0;
  String.append(_:)(v37);
  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  String.append(_:)(v38);

  v39._countAndFlagsBits = 0x204D4F524620;
  v39._object = 0xE600000000000000;
  String.append(_:)(v39);
  v40._countAndFlagsBits = 0x74695F6472616F62;
  v40._object = 0xEB00000000736D65;
  String.append(_:)(v40);
  v41._countAndFlagsBits = 0xD000000000000013;
  v41._object = 0x80000001015A3AE0;
  String.append(_:)(v41);
  v42._countAndFlagsBits = 0x74695F6472616F62;
  v42._object = 0xEB00000000736D65;
  String.append(_:)(v42);
  v43._countAndFlagsBits = 46;
  v43._object = 0xE100000000000000;
  String.append(_:)(v43);
  v44._countAndFlagsBits = 0x755F746E65726170;
  v44._object = 0xEB00000000646975;
  String.append(_:)(v44);
  v45._countAndFlagsBits = 2112800;
  v45._object = 0xE300000000000000;
  String.append(_:)(v45);
  v46._countAndFlagsBits = 0x755F6D6574695F73;
  v46._object = 0xEB00000000646975;
  String.append(_:)(v46);
  v47._countAndFlagsBits = 0x20444E4120;
  v47._object = 0xE500000000000000;
  String.append(_:)(v47);
  v48._countAndFlagsBits = 0x74695F6472616F62;
  v48._object = 0xEB00000000736D65;
  String.append(_:)(v48);
  v49._countAndFlagsBits = 46;
  v49._object = 0xE100000000000000;
  String.append(_:)(v49);
  v50._object = 0x8000000101585360;
  v50._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v50);
  v51._countAndFlagsBits = 2112800;
  v51._object = 0xE300000000000000;
  String.append(_:)(v51);
  v52._countAndFlagsBits = 0xD000000000000012;
  v52._object = 0x80000001015A3A40;
  String.append(_:)(v52);
  v53._countAndFlagsBits = 0x454C455320292029;
  v53._object = 0xEB00000000205443;
  String.append(_:)(v53);
  v54._countAndFlagsBits = 0;
  v54._object = 0xE000000000000000;
  String.append(_:)(v54);

  v55._countAndFlagsBits = 0x7573204D4F524620;
  v55._object = 0xEF736D6574695F62;
  String.append(_:)(v55);
  String.append(_:)(v58);

  return 0;
}

uint64_t sub_100E9DF44()
{
  v36 = type metadata accessor for UUID();
  v0 = *(v36 - 8);
  __chkstk_darwin(v36);
  v33 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1005B981C(&qword_1019F6990);
  v35 = *(v2 - 8);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v27 - v6;
  v34 = _swiftEmptyArrayStorage;
  v8 = sub_100BD5554(_swiftEmptyArrayStorage);
  v9 = v8;
  v10 = v8 + 64;
  v11 = 1 << *(v8 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v8 + 64);
  v14 = (v11 + 63) >> 6;
  v15 = (v0 + 48);
  v31 = v0;
  v32 = (v0 + 32);

  v17 = 0;
  while (1)
  {
    v18 = v17;
    if (!v13)
    {
      break;
    }

LABEL_8:
    v19 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    sub_10000BE14(*(v9 + 56) + *(v35 + 72) * (v19 | (v17 << 6)), v7, &qword_1019F6990);
    sub_10003DFF8(v7, v5, &qword_1019F6990);
    if ((*v15)(v5, 1, v36) == 1)
    {
      result = sub_10000CAAC(v5, &qword_1019F6990);
    }

    else
    {
      v30 = *v32;
      v30(v33, v5, v36);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_100B356D0(0, v34[2] + 1, 1, v34);
      }

      v21 = v34[2];
      v20 = v34[3];
      v22 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        v28 = v34[2];
        v29 = v21 + 1;
        v25 = sub_100B356D0(v20 > 1, v21 + 1, 1, v34);
        v21 = v28;
        v22 = v29;
        v34 = v25;
      }

      v23 = v33;
      v24 = v34;
      v34[2] = v22;
      result = (v30)(v24 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v21, v23, v36);
    }
  }

  while (1)
  {
    v17 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v17 >= v14)
    {

      v26 = sub_100E93A84(v34);

      return v26;
    }

    v13 = *(v10 + 8 * v17);
    ++v18;
    if (v13)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100E9E2A4(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {

    v3._countAndFlagsBits = 46;
    v3._object = 0xE100000000000000;
    String.append(_:)(v3);
    v5 = a1;
    v4 = a2;
  }

  else
  {
    v5 = 0;
    v4 = 0xE000000000000000;
  }

  _StringGuts.grow(_:)(70);
  v6._countAndFlagsBits = v5;
  v6._object = v4;
  String.append(_:)(v6);
  v7._countAndFlagsBits = 0xD000000000000011;
  v7._object = 0x80000001015A38C0;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 8236;
  v8._object = 0xE200000000000000;
  String.append(_:)(v8);
  v9._countAndFlagsBits = v5;
  v9._object = v4;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 0x695F74656B637562;
  v10._object = 0xEC0000007865646ELL;
  String.append(_:)(v10);
  v11._countAndFlagsBits = 8236;
  v11._object = 0xE200000000000000;
  String.append(_:)(v11);
  v12._countAndFlagsBits = v5;
  v12._object = v4;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0x645F74656B637562;
  v13._object = 0xEB00000000617461;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 8236;
  v14._object = 0xE200000000000000;
  String.append(_:)(v14);
  v15._countAndFlagsBits = v5;
  v15._object = v4;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0xD000000000000010;
  v16._object = 0x80000001015A33D0;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 8236;
  v17._object = 0xE200000000000000;
  String.append(_:)(v17);
  v18._countAndFlagsBits = v5;
  v18._object = v4;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x7461645F636E7973;
  v19._object = 0xE900000000000061;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 8236;
  v20._object = 0xE200000000000000;
  String.append(_:)(v20);
  v21._countAndFlagsBits = v5;
  v21._object = v4;
  String.append(_:)(v21);
  v22._object = 0x80000001015A3920;
  v22._countAndFlagsBits = 0xD00000000000001ELL;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 8236;
  v23._object = 0xE200000000000000;
  String.append(_:)(v23);
  v24._countAndFlagsBits = v5;
  v24._object = v4;
  String.append(_:)(v24);
  v25._countAndFlagsBits = 0xD00000000000001FLL;
  v25._object = 0x80000001015A3940;
  String.append(_:)(v25);
  v26._countAndFlagsBits = 8236;
  v26._object = 0xE200000000000000;
  String.append(_:)(v26);
  v27._countAndFlagsBits = v5;
  v27._object = v4;
  String.append(_:)(v27);
  v28._object = 0x80000001015A3960;
  v28._countAndFlagsBits = 0xD00000000000001ELL;
  String.append(_:)(v28);
  v29._countAndFlagsBits = 8236;
  v29._object = 0xE200000000000000;
  String.append(_:)(v29);
  v30._countAndFlagsBits = v5;
  v30._object = v4;
  String.append(_:)(v30);
  v31._countAndFlagsBits = 0xD000000000000038;
  v31._object = 0x80000001015A3980;
  String.append(_:)(v31);
  v32._countAndFlagsBits = 8236;
  v32._object = 0xE200000000000000;
  String.append(_:)(v32);
  v33._countAndFlagsBits = v5;
  v33._object = v4;
  String.append(_:)(v33);
  v34._countAndFlagsBits = 0xD000000000000037;
  v34._object = 0x80000001015A39C0;
  String.append(_:)(v34);
  v35._countAndFlagsBits = 8236;
  v35._object = 0xE200000000000000;
  String.append(_:)(v35);
  v36._countAndFlagsBits = v5;
  v36._object = v4;
  String.append(_:)(v36);
  v37._countAndFlagsBits = 0xD000000000000026;
  v37._object = 0x80000001015A33F0;
  String.append(_:)(v37);
  v38._countAndFlagsBits = 8236;
  v38._object = 0xE200000000000000;
  String.append(_:)(v38);
  v39._countAndFlagsBits = v5;
  v39._object = v4;
  String.append(_:)(v39);

  v40._countAndFlagsBits = 0xD00000000000001BLL;
  v40._object = 0x80000001015A3790;
  String.append(_:)(v40);
  return 0;
}

uint64_t sub_100E9E61C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v193 = *(v4 - 8);
  v194 = v4;
  __chkstk_darwin(v4);
  v6 = &v173 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = type metadata accessor for CRLBoardIdentifierStorage(0);
  v7 = __chkstk_darwin(v192);
  v191 = &v173 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v190 = &v173 - v9;
  v10 = type metadata accessor for CRLBoardIdentifier(0);
  v11 = __chkstk_darwin(v10 - 8);
  v183 = &v173 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v189 = &v173 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v173 - v16;
  __chkstk_darwin(v15);
  v195 = (&v173 - v18);
  v19 = type metadata accessor for DispatchPredicate();
  v26 = *(v19 - 1);
  __chkstk_darwin(v19);
  v21 = (&v173 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *(*(a1 + 16) + 32);
  *v21 = v22;
  v24 = v26 + 104;
  v23 = *(v26 + 104);
  LODWORD(v187) = enum case for DispatchPredicate.onQueue(_:);
  v186 = v23;
  v23(v21);
  v25 = v22;
  LOBYTE(v22) = _dispatchPreconditionTest(_:)();
  v27 = *(v26 + 8);
  LODWORD(v26) = v26 + 8;
  v188 = v19;
  *&v185 = v27;
  v27(v21, v19);
  if ((v22 & 1) == 0)
  {
    __break(1u);
    goto LABEL_105;
  }

  v28 = sub_10002C280(a2, a1);
  if (!v28)
  {
LABEL_15:

    return 0;
  }

  v182 = v24;
  v184 = a2;
  v196 = a1;
  v24 = sub_100024DD4(v28, v29);
  v31 = v30;
  sub_100024E98(v24, v30);
  sub_100024EEC(v6, v24, v31);
  a1 = v32;
  v34 = v33;
  v180 = v31;
  v181 = v24;
  sub_10002640C(v24, v31);
  v35 = v191;
  (*(v193 + 32))(v191, v6, v194);
  v36 = (v35 + *(v192 + 20));
  *v36 = a1;
  v36[1] = v34;
  v37 = v190;
  sub_100025668(v35, v190, type metadata accessor for CRLBoardIdentifierStorage);
  v38 = v37;
  v19 = v189;
  sub_100025668(v38, v189, type metadata accessor for CRLBoardIdentifierStorage);
  sub_100025668(v19, v17, type metadata accessor for CRLBoardIdentifier);
  v39 = v195;
  sub_100025668(v17, v195, type metadata accessor for CRLBoardIdentifier);
  v40 = v184;
  if (__OFADD__(v184, 1))
  {
    goto LABEL_106;
  }

  v41 = v196;
  v42 = sub_10001E378(v184 + 1, v196);
  if (v43)
  {
    sub_100026028(v39, type metadata accessor for CRLBoardIdentifier);
    v45 = v180;
    v44 = v181;
LABEL_14:
    sub_10002640C(v44, v45);
    goto LABEL_15;
  }

  v19 = (v40 + 2);
  if (__OFADD__(v40, 2))
  {
    goto LABEL_107;
  }

  a1 = v42;
  v46 = *(*(v41 + 16) + 32);
  *v21 = v46;
  v47 = v188;
  v186(v21, v187, v188);
  v48 = v46;
  LOBYTE(v46) = _dispatchPreconditionTest(_:)();
  (v185)(v21, v47);
  if ((v46 & 1) == 0)
  {
    goto LABEL_108;
  }

  v49 = sub_10002C280(v19, v41);
  if (!v49)
  {
    sub_10002640C(v181, v180);

    sub_100026028(v39, type metadata accessor for CRLBoardIdentifier);
    return 0;
  }

  v193 = a1;
  a1 = sub_100024DD4(v49, v50);
  v52 = v184;
  if (__OFADD__(v184, 3))
  {
    goto LABEL_110;
  }

  v24 = v51;
  v53 = sub_100028894(v184 + 3, v41);
  if (v54)
  {
    sub_100026028(v39, type metadata accessor for CRLBoardIdentifier);
    sub_10002640C(v181, v180);
    v44 = a1;
    v45 = v24;
    goto LABEL_14;
  }

  v178 = v53;
  v19 = (v52 + 4);
  if (__OFADD__(v52, 4))
  {
    goto LABEL_114;
  }

  v56 = *(*(v41 + 16) + 32);
  *v21 = v56;
  v57 = v188;
  v186(v21, v187, v188);
  v58 = v56;
  LOBYTE(v56) = _dispatchPreconditionTest(_:)();
  (v185)(v21, v57);
  if ((v56 & 1) == 0)
  {
    goto LABEL_115;
  }

  v59 = sub_10002C280(v19, v41);
  if (v59)
  {
    v191 = sub_100024DD4(v59, v60);
    v192 = v61;
  }

  else
  {
    v191 = 0;
    v192 = 0xF000000000000000;
  }

  v19 = (v184 + 5);
  if (__OFADD__(v184, 5))
  {
    goto LABEL_116;
  }

  v62 = *(*(v41 + 16) + 32);
  *v21 = v62;
  v63 = v188;
  v186(v21, v187, v188);
  v64 = v62;
  LOBYTE(v62) = _dispatchPreconditionTest(_:)();
  (v185)(v21, v63);
  if ((v62 & 1) == 0)
  {
    goto LABEL_117;
  }

  v65 = sub_10002C280(v19, v41);
  if (v65)
  {
    v26 = sub_100024DD4(v65, v66);
    v68 = v67;
  }

  else
  {
    v26 = 0;
    v68 = 0xF000000000000000;
  }

  if (__OFADD__(v184, 6))
  {
    goto LABEL_118;
  }

  v69 = sub_100028894(v184 + 6, v41);
  if (v70)
  {
LABEL_30:
    sub_100026028(v39, type metadata accessor for CRLBoardIdentifier);
    sub_10002640C(v181, v180);
    sub_10002640C(a1, v24);
    v71 = v26;
LABEL_63:
    sub_100025870(v71, v68);
    sub_100025870(v191, v192);
    goto LABEL_15;
  }

  v179 = v24;
  v190 = v26;
  v72 = v69;
  v189 = sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  v185 = xmmword_10146C6B0;
  *(inited + 16) = xmmword_10146C6B0;
  v197 = &type metadata for UInt64;
  v182 = sub_1005B981C(&qword_101A21C70);
  String.init<A>(describing:)();
  v74 = String._bridgeToObjectiveC()();

  v24 = NSString_ptr;
  v188 = sub_100006370(0, &qword_1019F4D30);
  *(inited + 56) = v188;
  v75 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
  *(inited + 32) = v74;
  v187 = v75;
  *(inited + 64) = v75;
  v177 = v72;
  if (v72)
  {

    LODWORD(v26) = v189;
    v19 = v179;
    goto LABEL_60;
  }

  v194 = inited + 32;
  v186 = v68;
  v176 = a1;
  v174 = objc_opt_self();
  LODWORD(v26) = [v174 _atomicIncrementAssertCount];
  v197 = [objc_allocWithZone(NSString) init];
  sub_100604538(inited, &v197);
  StaticString.description.getter();
  v175 = inited;
  v19 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v76 = String._bridgeToObjectiveC()();

  v77 = [v76 lastPathComponent];

  a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v78;

  if (qword_1019F20A0 != -1)
  {
    goto LABEL_123;
  }

  while (1)
  {
    v79 = static OS_os_log.crlAssert;
    v80 = swift_initStackObject();
    *(v80 + 16) = xmmword_10146CA70;
    *(v80 + 56) = &type metadata for Int32;
    *(v80 + 64) = &protocol witness table for Int32;
    *(v80 + 32) = v26;
    v82 = v187;
    v81 = v188;
    *(v80 + 96) = v188;
    *(v80 + 104) = v82;
    *(v80 + 72) = v19;
    *(v80 + 136) = &type metadata for String;
    v83 = sub_1000053B0();
    *(v80 + 112) = a1;
    *(v80 + 120) = v24;
    *(v80 + 176) = &type metadata for UInt;
    *(v80 + 184) = &protocol witness table for UInt;
    *(v80 + 144) = v83;
    *(v80 + 152) = 11489;
    v84 = v197;
    *(v80 + 216) = v81;
    *(v80 + 224) = v82;
    *(v80 + 192) = v84;
    v85 = v19;
    v86 = v84;
    v87 = static os_log_type_t.error.getter();
    sub_100005404(v79, &_mh_execute_header, v87, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v80);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v88 = static os_log_type_t.error.getter();
    v89 = v175;
    sub_100005404(v79, &_mh_execute_header, v88, "expected inequality between two values of type %{public}@", 57, 2, v175);

    type metadata accessor for __VaListBuilder();
    v39 = swift_allocObject();
    v39[2] = 8;
    v39[3] = 0;
    v90 = v39 + 3;
    v39[4] = 0;
    v39[5] = 0;
    v91 = v89;
    a1 = *(v89 + 16);
    if (a1)
    {
      v24 = 0;
      while (1)
      {
        v92 = (v194 + 40 * v24);
        v19 = v92[3];
        v93 = v92[4];
        LODWORD(v26) = sub_100020E58(v92, v19);
        v94 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v95 = *v90;
        v96 = *(v94 + 16);
        v97 = __OFADD__(*v90, v96);
        v98 = *v90 + v96;
        if (v97)
        {
          goto LABEL_109;
        }

        v26 = v39[4];
        if (v26 >= v98)
        {
          goto LABEL_51;
        }

        if (v26 + 0x4000000000000000 < 0)
        {
          goto LABEL_111;
        }

        v19 = v39[5];
        if (2 * v26 > v98)
        {
          v98 = 2 * v26;
        }

        v39[4] = v98;
        if ((v98 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_112;
        }

        v93 = v94;
        v99 = swift_slowAlloc();
        v100 = v99;
        v39[5] = v99;
        if (v19)
        {
          break;
        }

        v94 = v93;
        if (!v100)
        {
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

LABEL_52:
        v102 = *(v94 + 16);
        if (v102)
        {
          v103 = (v94 + 32);
          v104 = *v90;
          while (1)
          {
            v105 = *v103++;
            *&v100[8 * v104] = v105;
            v104 = *v90 + 1;
            if (__OFADD__(*v90, 1))
            {
              break;
            }

            *v90 = v104;
            if (!--v102)
            {
              goto LABEL_36;
            }
          }

          __break(1u);
          goto LABEL_102;
        }

LABEL_36:

        if (++v24 == a1)
        {
          goto LABEL_59;
        }
      }

      if (v99 != v19 || v99 >= &v19[8 * v95])
      {
        memmove(v99, v19, 8 * v95);
      }

      __VaListBuilder.deallocStorage(wordCount:storage:)();
      v94 = v93;
LABEL_51:
      v100 = v39[5];
      if (!v100)
      {
        goto LABEL_58;
      }

      goto LABEL_52;
    }

LABEL_59:
    v26 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v106 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v107 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v108 = String._bridgeToObjectiveC()();

    [v174 handleFailureInFunction:v106 file:v107 lineNumber:11489 isFatal:0 format:v108 args:v26];

    v39 = v195;
    v41 = v196;
    v19 = v179;
    a1 = v176;
    v68 = v186;
    LODWORD(v26) = v189;
LABEL_60:
    v109 = v190;
    if (__OFADD__(v184, 7))
    {
LABEL_121:
      __break(1u);
      goto LABEL_122;
    }

    v110 = sub_100028894(v184 + 7, v41);
    if (v111)
    {
      sub_100026028(v39, type metadata accessor for CRLBoardIdentifier);
      sub_10002640C(v181, v180);
      sub_10002640C(a1, v19);
      v71 = v109;
      goto LABEL_63;
    }

    v91 = v110;
    v112 = v19;
    v186 = v68;
    v113 = swift_initStackObject();
    *(v113 + 16) = v185;
    v197 = &type metadata for UInt64;
    String.init<A>(describing:)();
    v114 = String._bridgeToObjectiveC()();

    *(v113 + 32) = v114;
    v115 = v187;
    *(v113 + 56) = v188;
    *(v113 + 64) = v115;
    if (v91)
    {

      v24 = v112;
      v26 = v190;
      goto LABEL_93;
    }

    v189 = (v113 + 32);
    v194 = 0;
    v176 = a1;
    *&v185 = objc_opt_self();
    LODWORD(v26) = [v185 _atomicIncrementAssertCount];
    v197 = [objc_allocWithZone(NSString) init];
    sub_100604538(v113, &v197);
    StaticString.description.getter();
    v19 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v116 = String._bridgeToObjectiveC()();

    v117 = [v116 lastPathComponent];

    a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v68 = v113;
    v24 = v118;

    if (qword_1019F20A0 != -1)
    {
LABEL_125:
      swift_once();
    }

    v119 = static OS_os_log.crlAssert;
    v120 = swift_initStackObject();
    *(v120 + 16) = xmmword_10146CA70;
    *(v120 + 56) = &type metadata for Int32;
    *(v120 + 64) = &protocol witness table for Int32;
    *(v120 + 32) = v26;
    v122 = v187;
    v121 = v188;
    *(v120 + 96) = v188;
    *(v120 + 104) = v122;
    *(v120 + 72) = v19;
    *(v120 + 136) = &type metadata for String;
    v123 = sub_1000053B0();
    *(v120 + 112) = a1;
    *(v120 + 120) = v24;
    *(v120 + 176) = &type metadata for UInt;
    *(v120 + 184) = &protocol witness table for UInt;
    *(v120 + 144) = v123;
    *(v120 + 152) = 11494;
    v124 = v197;
    *(v120 + 216) = v121;
    *(v120 + 224) = v122;
    *(v120 + 192) = v124;
    v125 = v19;
    v126 = v124;
    v127 = static os_log_type_t.error.getter();
    sub_100005404(v119, &_mh_execute_header, v127, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v120);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v128 = static os_log_type_t.error.getter();
    sub_100005404(v119, &_mh_execute_header, v128, "expected inequality between two values of type %{public}@", 57, 2, v68);

    type metadata accessor for __VaListBuilder();
    v129 = swift_allocObject();
    v129[2] = 8;
    v129[3] = 0;
    v130 = v129 + 3;
    v129[4] = 0;
    v129[5] = 0;
    v188 = v68;
    a1 = *(v68 + 16);
    v131 = v189;
    if (!a1)
    {
      goto LABEL_92;
    }

    v24 = 0;
    while (1)
    {
      v132 = (v131 + 40 * v24);
      v19 = v132[3];
      LODWORD(v26) = sub_100020E58(v132, v19);
      v133 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v134 = *v130;
      v135 = *(v133 + 16);
      v97 = __OFADD__(*v130, v135);
      v136 = *v130 + v135;
      if (v97)
      {
        goto LABEL_113;
      }

      v26 = v129[4];
      if (v26 >= v136)
      {
        goto LABEL_84;
      }

      if (v26 + 0x4000000000000000 < 0)
      {
        goto LABEL_119;
      }

      v19 = v129[5];
      if (2 * v26 > v136)
      {
        v136 = 2 * v26;
      }

      v129[4] = v136;
      if ((v136 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_120;
      }

      v137 = v133;
      v138 = swift_slowAlloc();
      v139 = v138;
      v129[5] = v138;
      if (!v19)
      {
        break;
      }

      if (v138 != v19 || v138 >= &v19[8 * v134])
      {
        memmove(v138, v19, 8 * v134);
      }

      LODWORD(v26) = v129;
      __VaListBuilder.deallocStorage(wordCount:storage:)();
      v133 = v137;
LABEL_84:
      v139 = v129[5];
      if (!v139)
      {
        goto LABEL_91;
      }

LABEL_85:
      v141 = *(v133 + 16);
      if (v141)
      {
        v142 = (v133 + 32);
        v143 = *v130;
        while (1)
        {
          v144 = *v142++;
          *&v139[8 * v143] = v144;
          v143 = *v130 + 1;
          if (__OFADD__(*v130, 1))
          {
            break;
          }

          *v130 = v143;
          if (!--v141)
          {
            goto LABEL_69;
          }
        }

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
        goto LABEL_121;
      }

LABEL_69:

      if (++v24 == a1)
      {
        goto LABEL_92;
      }
    }

    v133 = v137;
    if (v139)
    {
      goto LABEL_85;
    }

LABEL_91:
    __break(1u);
LABEL_92:
    v145 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v146 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v147 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v148 = String._bridgeToObjectiveC()();

    [v185 handleFailureInFunction:v146 file:v147 lineNumber:11494 isFatal:0 format:v148 args:v145];

    v39 = v195;
    v41 = v196;
    v24 = v179;
    a1 = v176;
    v26 = v190;
    v91 = v194;
LABEL_93:
    v19 = v184;
    v68 = v186;
    if (!__OFADD__(v184, 8))
    {
      break;
    }

LABEL_122:
    __break(1u);
LABEL_123:
    swift_once();
  }

  v149 = sub_100028894(v184 + 8, v41);
  if (v150)
  {
    goto LABEL_30;
  }

  v93 = v149;
  if (__OFADD__(v19, 9))
  {
    __break(1u);
    goto LABEL_125;
  }

  v151 = sub_100028894((v19 + 9), v196);
  v90 = v181;
  if (v152)
  {
    sub_100026028(v39, type metadata accessor for CRLBoardIdentifier);
    sub_10002640C(v90, v180);
    sub_10002640C(a1, v24);
    sub_100025870(v190, v68);
    sub_100025870(v191, v192);
    goto LABEL_15;
  }

  v195 = v151;
  result = (v19 + 10);
  if (__OFADD__(v19, 10))
  {
    __break(1u);
  }

  else
  {
    v94 = sub_100028894(result, v196);
    if (v153)
    {
      sub_100026028(v39, type metadata accessor for CRLBoardIdentifier);
      sub_10002640C(v90, v180);
      sub_10002640C(a1, v24);
      sub_100025870(v190, v186);
      sub_100025870(v191, v192);
      goto LABEL_15;
    }

LABEL_102:
    v154 = v94;
    v194 = v91;
    result = (v19 + 11);
    if (!__OFADD__(v19, 11))
    {
      v189 = sub_100028894(result, v196);
      LODWORD(v188) = v155;

      sub_10002640C(v90, v180);
      v156 = v183;
      sub_100025668(v39, v183, type metadata accessor for CRLBoardIdentifier);
      type metadata accessor for CRLFreehandDrawingBucketDatabaseRow();
      v157 = swift_allocObject();
      *(v157 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData) = xmmword_101486780;
      *(v157 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData) = xmmword_101486780;
      sub_100025668(v156, v157 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
      *(v157 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_bucketIndex) = v193;
      v158 = (v157 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_bucketData);
      *v158 = a1;
      v158[1] = v24;
      *(v157 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_unsyncedChanges) = v178;
      v159 = (v157 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData);
      v160 = *(v157 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData);
      v161 = *(v157 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData + 8);
      v163 = v191;
      v162 = v192;
      sub_100024E84(v191, v192);
      *v159 = v163;
      v159[1] = v162;
      sub_100025870(v160, v161);
      sub_100025870(v163, v162);
      v164 = (v157 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData);
      v165 = *(v157 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData);
      v166 = *(v157 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData + 8);
      v167 = v190;
      v168 = v186;
      sub_100024E84(v190, v186);
      *v164 = v167;
      v164[1] = v168;
      sub_100025870(v165, v166);
      sub_100025870(v167, v168);
      result = v157;
      v169 = v157 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_minRequiredVersions;
      v171 = v194;
      v170 = v195;
      *v169 = v177;
      *(v169 + 8) = v171;
      *(v169 + 16) = v93;
      *(v169 + 24) = v170;
      v172 = v189;
      *(v169 + 32) = v154;
      *(v169 + 40) = v172;
      *(v169 + 48) = v188 & 1;
      return result;
    }
  }

  __break(1u);
  return result;
}

double sub_100E9FABC(uint64_t a1)
{
  v2 = sub_1005B981C(&unk_101A341C0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - v4;
  v6 = *(a1 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_bucketIndex);
  v7 = *(a1 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_bucketData);
  v8 = *(a1 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_bucketData + 8);
  v9 = *(a1 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_minRequiredVersions);
  v20 = *(a1 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_minRequiredVersions + 16);
  *v21 = v9;
  v10 = *(a1 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_minRequiredVersions + 32);
  v18 = *(a1 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_minRequiredVersions + 40);
  v19 = v10;
  v17 = *(a1 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_minRequiredVersions + 48);
  sub_100024E98(v7, v8);
  sub_1005B981C(&unk_101A22860);
  sub_10001A2F8(&qword_101A228C0, &unk_101A22860);
  Capsule.init(serializedData:allowedAppFormats:fileSignature:)();

  sub_1005B981C(&unk_101A228D0);
  v11 = swift_allocObject();
  *(v11 + *(*v11 + 136)) = 0;
  v11[2] = v6;
  (*(v3 + 32))(v11 + *(*v11 + 120), v5, v2);
  *(v11 + *(*v11 + 136)) = 0;
  v12 = v11 + *(*v11 + 128);
  v14 = v20;
  result = v21[0];
  *v12 = *v21;
  *(v12 + 1) = v14;
  v15 = v18;
  *(v12 + 4) = v19;
  *(v12 + 5) = v15;
  v12[48] = v17;
  return result;
}

uint64_t sub_100E9FE1C(uint64_t a1)
{
  v2 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1005B981C(&unk_101A22E60);
  __chkstk_darwin(v5 - 8);
  v7 = &v18[-v6];
  v8 = type metadata accessor for CRLUserBoardMetadataCRDTData(0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v18[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v14 = &v18[-v13];
  if (*(a1 + OBJC_IVAR____TtC8Freeform36CRLUserBoardMetadataSyncRemoteRecord_boardCRDTData + 8) >> 60 == 15)
  {

    return 0;
  }

  else
  {
    sub_100024E98(*(a1 + OBJC_IVAR____TtC8Freeform36CRLUserBoardMetadataSyncRemoteRecord_boardCRDTData), *(a1 + OBJC_IVAR____TtC8Freeform36CRLUserBoardMetadataSyncRemoteRecord_boardCRDTData + 8));
    sub_1000066D0(&unk_101A22E20, type metadata accessor for CRLUserBoardMetadataCRDTData);
    CRDT.init(serializedData:)();
    (*(v9 + 56))(v7, 0, 1, v8);
    sub_100025668(v7, v14, type metadata accessor for CRLUserBoardMetadataCRDTData);
    sub_10000C83C(a1 + OBJC_IVAR____TtC8Freeform30CRLUserBoardMetadataSyncRecord_boardIdentifier, v4, type metadata accessor for CRLBoardIdentifier);
    sub_100025668(v14, v12, type metadata accessor for CRLUserBoardMetadataCRDTData);
    v16 = *(a1 + OBJC_IVAR____TtC8Freeform30CRLUserBoardMetadataSyncRecord_minRequiredVersionForFullFidelity);

    type metadata accessor for CRLUserBoardMetadataData();
    v17 = swift_allocObject();
    sub_100025668(v4, v17 + OBJC_IVAR____TtC8Freeform24CRLUserBoardMetadataData_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
    sub_100025668(v12, v17 + OBJC_IVAR____TtC8Freeform24CRLUserBoardMetadataData_crdtData, type metadata accessor for CRLUserBoardMetadataCRDTData);
    result = v17;
    *(v17 + OBJC_IVAR____TtC8Freeform24CRLUserBoardMetadataData_minRequiredVersionForFullFidelity) = v16;
  }

  return result;
}