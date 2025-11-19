unint64_t sub_100001CB8()
{
  result = sub_10000E5EC(&_swiftEmptyArrayStorage);
  qword_10005D598 = result;
  return result;
}

uint64_t sub_100001CE0@<X0>(void *a1@<X8>)
{
  if (qword_10005A390 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_10005D598;
}

uint64_t sub_100001D50(uint64_t *a1, void (*a2)(uint64_t *__return_ptr))
{
  a2(&v7);
  v3 = v7;
  v4 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *a1;
  sub_100002D94(v3, sub_1000027F0, 0, isUniquelyReferenced_nonNull_native, &v7);

  *a1 = v7;
  return result;
}

uint64_t sub_100001DE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v25 = a1;
  v26 = a3;
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(a1);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  sub_1000036BC(&qword_10005A4F8, &qword_10003FC10);
  v8 = type metadata accessor for ModifiedContent();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = __chkstk_darwin(v8);
  v23 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v24 = &v23 - v13;
  (*(v5 + 16))(v7, v3, a2);
  v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = *(a2 + 16);
  (*(v5 + 32))(v15 + v14, v7, a2);
  v29 = sub_1000037F8;
  v30 = v15;
  static Alignment.center.getter();
  sub_100003090(&qword_10005A500, &qword_10003FC18);
  WitnessTable = swift_getWitnessTable();
  sub_100003894(&qword_10005A508, &qword_10005A500, &qword_10003FC18);
  v17 = v23;
  View.background<A>(_:alignment:)();

  v18 = sub_100003894(&qword_10005A510, &qword_10005A4F8, &qword_10003FC10);
  v27 = WitnessTable;
  v28 = v18;
  swift_getWitnessTable();
  v19 = v9[2];
  v20 = v24;
  v19(v24, v17, v8);
  v21 = v9[1];
  v21(v17, v8);
  v19(v26, v20, v8);
  return (v21)(v20, v8);
}

uint64_t sub_100002168@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v42 = a3;
  v5 = type metadata accessor for NamedCoordinateSpace();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = (__chkstk_darwin)();
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v8);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = static Color.clear.getter();
  sub_100003090(&qword_10005A518, &qword_10003FC20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10003FA90;
  (*(v11 + 16))(v14, a1, a2);
  AnyHashable.init<A>(_:)();
  v16 = (a1 + *(type metadata accessor for TrackPosition() + 36));
  v18 = v16[1];
  v43 = *v16;
  v17 = v43;
  v44 = v18;

  static CoordinateSpaceProtocol<>.named<A>(_:)();
  GeometryProxy.frame<A>(in:)();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = *(v6 + 8);
  v27(v10, v5);
  v45.origin.x = v20;
  v45.origin.y = v22;
  v45.size.width = v24;
  v45.size.height = v26;
  MinX = CGRectGetMinX(v45);
  v43 = v17;
  v44 = v18;
  static CoordinateSpaceProtocol<>.named<A>(_:)();

  GeometryProxy.frame<A>(in:)();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v27(v10, v5);
  v46.origin.x = v30;
  v46.origin.y = v32;
  v46.size.width = v34;
  v46.size.height = v36;
  MaxY = CGRectGetMaxY(v46);
  *(inited + 72) = MinX;
  *(inited + 80) = MaxY;
  v38 = sub_10000E5EC(inited);
  swift_setDeallocating();
  result = sub_1000038DC(inited + 32, &unk_10005A520, &unk_10003FC28);
  v40 = v42;
  *v42 = v41;
  v40[1] = v38;
  return result;
}

uint64_t sub_10000248C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[3];
  if (sub_10003D428(2, 26, 0, 0))
  {
    type metadata accessor for _TagTraitWritingModifier();

    return type metadata accessor for ModifiedContent();
  }

  else
  {
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    type metadata accessor for ModifiedContent();
    type metadata accessor for Optional();
    swift_getWitnessTable();
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    return type metadata accessor for ModifiedContent();
  }
}

uint64_t sub_1000025F0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  if (sub_10003D428(2, 26, 0, 0))
  {
    type metadata accessor for _TagTraitWritingModifier();
    type metadata accessor for ModifiedContent();
  }

  else
  {
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    type metadata accessor for ModifiedContent();
    type metadata accessor for Optional();
    swift_getWitnessTable();
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    type metadata accessor for ModifiedContent();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1000027F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  result = sub_100003290(a1, a2);
  *(a2 + 40) = v3;
  *(a2 + 48) = v4;
  return result;
}

uint64_t sub_100002828(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100003090(&qword_10005A468, &qword_10003FB90);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v39 = *(v24 + 32);
        v37 = v25;
        v38 = v26;
      }

      else
      {
        sub_100003290(v24, &v37);
      }

      v36 = *(*(v5 + 56) + 16 * v23);
      result = AnyHashable._rawHashValue(seed:)(*(v8 + 40));
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v37;
      v19 = v38;
      *(v17 + 32) = v39;
      *v17 = v18;
      *(v17 + 16) = v19;
      *(*(v8 + 56) + 16 * v16) = v36;
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v35;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

void *sub_100002AC8()
{
  v1 = v0;
  sub_100003090(&qword_10005A468, &qword_10003FB90);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        result = sub_100003290(*(v2 + 48) + 40 * v17, v22);
        v18 = *(v4 + 48) + 40 * v17;
        v19 = *(*(v2 + 56) + 16 * v17);
        v20 = v22[0];
        v21 = v22[1];
        *(v18 + 32) = v23;
        *v18 = v20;
        *(v18 + 16) = v21;
        *(*(v4 + 56) + 16 * v17) = v19;
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

      v16 = *(v2 + 64 + 8 * v8);
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

uint64_t sub_100002C5C@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    result = sub_100003290(*(v4 + 48) + 40 * v13, &v21);
    v15 = *(*(v4 + 56) + 16 * v13);
    v16 = v21;
    v17 = v22;
    v18 = v23;
    *v1 = v4;
    v1[1] = v3;
    v1[2] = v6;
    v1[3] = v8;
    v1[4] = v12;
    if (v18)
    {
      v20 = v1[5];
      v19 = v1[6];
      v21 = v16;
      v22 = v17;
      v23 = v18;
      v24 = v15;
      v20(&v21);
      return sub_1000038DC(&v21, qword_10005A470, &qword_10003FB98);
    }

    else
    {
LABEL_13:
      *(a1 + 48) = 0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v1[3] = v11;
        v1[4] = 0;
        goto LABEL_13;
      }

      v7 = *(v3 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_100002D94(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v58 = a1;
  v59 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v60 = v8;
  v61 = 0;
  v62 = v11 & v9;
  v63 = a2;
  v64 = a3;

  sub_100002C5C(&v53);
  if (!*(&v54 + 1))
  {
    goto LABEL_25;
  }

  v50 = v53;
  v51 = v54;
  v52 = v55;
  v13 = v56;
  v12 = v57;
  v14 = *a5;
  result = sub_10000E288(&v50);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    sub_100002828(v20, a4 & 1);
    v22 = *a5;
    result = sub_10000E288(&v50);
    if ((v21 & 1) == (v23 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v27 = result;
    sub_100002AC8();
    result = v27;
    v24 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v24 = *a5;
  if (v21)
  {
LABEL_11:
    v25 = result;
    sub_10000323C(&v50);
    v26 = (v24[7] + 16 * v25);
    *v26 = v13;
    v26[1] = v12;
    goto LABEL_15;
  }

LABEL_13:
  v24[(result >> 6) + 8] |= 1 << result;
  v28 = v24[6] + 40 * result;
  v29 = v50;
  v30 = v51;
  *(v28 + 32) = v52;
  *v28 = v29;
  *(v28 + 16) = v30;
  v31 = (v24[7] + 16 * result);
  *v31 = v13;
  v31[1] = v12;
  v32 = v24[2];
  v19 = __OFADD__(v32, 1);
  v33 = v32 + 1;
  if (!v19)
  {
    v24[2] = v33;
LABEL_15:
    sub_100002C5C(&v53);
    if (*(&v54 + 1))
    {
      v21 = 1;
      do
      {
        v50 = v53;
        v51 = v54;
        v52 = v55;
        v13 = v56;
        v12 = v57;
        v36 = *a5;
        result = sub_10000E288(&v50);
        v38 = v36[2];
        v39 = (v37 & 1) == 0;
        v19 = __OFADD__(v38, v39);
        v40 = v38 + v39;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v37;
        if (v36[3] < v40)
        {
          sub_100002828(v40, 1);
          v41 = *a5;
          result = sub_10000E288(&v50);
          if ((a4 & 1) != (v42 & 1))
          {
            goto LABEL_8;
          }
        }

        v43 = *a5;
        if (a4)
        {
          v34 = result;
          sub_10000323C(&v50);
          v35 = (v43[7] + 16 * v34);
          *v35 = v13;
          v35[1] = v12;
        }

        else
        {
          v43[(result >> 6) + 8] |= 1 << result;
          v44 = v43[6] + 40 * result;
          v45 = v50;
          v46 = v51;
          *(v44 + 32) = v52;
          *v44 = v45;
          *(v44 + 16) = v46;
          v47 = (v43[7] + 16 * result);
          *v47 = v13;
          v47[1] = v12;
          v48 = v43[2];
          v19 = __OFADD__(v48, 1);
          v49 = v48 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v43[2] = v49;
        }

        sub_100002C5C(&v53);
      }

      while (*(&v54 + 1));
    }

LABEL_25:
    sub_100003234();
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_100003090(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

__n128 sub_1000030DC(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000030E8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100003108(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

__n128 sub_100003148(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100003154(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100003174(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

void sub_1000031D8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1000032F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10000336C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_1000034A8(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v18 = a2 & 0x7FFFFFFF;
      v18[1] = 0;
    }

    else
    {
      v18[1] = a2 - 1;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t sub_1000036BC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100003704()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = (type metadata accessor for TrackPosition() - 8);
  v4 = *(*v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(*v3 + 64);
  (*(*(v2 - 8) + 8))(v0 + v5, v2);
  v7 = *(v0 + v5 + v3[11] + 8);

  return _swift_deallocObject(v0, v5 + v6, v4 | 7);
}

uint64_t sub_1000037F8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(type metadata accessor for TrackPosition() - 8);
  v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_100002168(v6, v3, a1);
}

uint64_t sub_100003894(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000036BC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000038DC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003090(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000396C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for TrackPosition();
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  sub_1000036BC(&qword_10005A4F8, &qword_10003FC10);
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  sub_100003894(&qword_10005A510, &qword_10005A4F8, &qword_10003FC10);
  return swift_getWitnessTable();
}

uint64_t sub_100003A90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003090(&qword_10005A650, &unk_10003FC50);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100003B6C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100003090(&qword_10005A650, &unk_10003FC50);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for TripViewHorizontalStack()
{
  result = qword_10005A6B0;
  if (!qword_10005A6B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100003C7C()
{
  sub_100003DC4();
  if (v0 <= 0x3F)
  {
    sub_100003E1C();
    if (v1 <= 0x3F)
    {
      sub_100003EB0();
      if (v2 <= 0x3F)
      {
        sub_100003FA8(319, &qword_10005A6E8);
        if (v3 <= 0x3F)
        {
          sub_100003F44();
          if (v4 <= 0x3F)
          {
            sub_100003FA8(319, &qword_10005A700);
            if (v5 <= 0x3F)
            {
              sub_100003FA8(319, &unk_10005A708);
              if (v6 <= 0x3F)
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

void sub_100003DC4()
{
  if (!qword_10005A6C0)
  {
    type metadata accessor for LayoutConfiguration(255);
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_10005A6C0);
    }
  }
}

void sub_100003E1C()
{
  if (!qword_10005A6C8)
  {
    type metadata accessor for CardModel(255);
    sub_100008BE4(&qword_10005A6D0, type metadata accessor for CardModel);
    v0 = type metadata accessor for EnvironmentObject();
    if (!v1)
    {
      atomic_store(v0, &qword_10005A6C8);
    }
  }
}

void sub_100003EB0()
{
  if (!qword_10005A6D8)
  {
    type metadata accessor for TripAppConfig();
    sub_100008BE4(&qword_10005A6E0, type metadata accessor for TripAppConfig);
    v0 = type metadata accessor for EnvironmentObject();
    if (!v1)
    {
      atomic_store(v0, &qword_10005A6D8);
    }
  }
}

void sub_100003F44()
{
  if (!qword_10005A6F0)
  {
    sub_1000036BC(&qword_10005A6F8, "fS");
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_10005A6F0);
    }
  }
}

void sub_100003FA8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for State();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_100004010@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003090(&qword_10005A798, &qword_10003FD10);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v16 - v11);
  sub_100008DD0(v2, &v16 - v11, &qword_10005A798, &qword_10003FD10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_100008854(v12, a1, type metadata accessor for LayoutConfiguration);
  }

  v14 = *v12;
  static os_log_type_t.fault.getter();
  v15 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1000041F4@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for LayoutConfiguration(0);
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v34 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003090(&qword_10005A870, &qword_100040B80);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v33 - v8;
  sub_100004010(a1);
  v10 = a1 + *(v3 + 32);
  v11 = *(v10 + 24);
  v12 = *(v10 + 32);
  sub_100008C34(v10, v11);
  (*(v12 + 24))(v11, v12, 55.0);
  static Font.Weight.semibold.getter();
  v13 = type metadata accessor for Font.Design();
  v14 = *(*(v13 - 8) + 56);
  v14(v9, 1, 1, v13);
  v15 = static Font.system(size:weight:design:)();
  sub_1000038DC(v9, &qword_10005A870, &qword_100040B80);
  v17 = *(v10 + 24);
  v16 = *(v10 + 32);
  sub_100008C34(v10, v17);
  (*(v16 + 152))(v15, v17, v16);
  static Font.Weight.semibold.getter();
  v14(v9, 1, 1, v13);
  v18 = static Font.system(size:weight:design:)();
  sub_1000038DC(v9, &qword_10005A870, &qword_100040B80);
  v19 = *(v10 + 24);
  v20 = *(v10 + 32);
  sub_100008C34(v10, v19);
  (*(v20 + 200))(v18, v19, v20);
  static Font.Weight.bold.getter();
  v14(v9, 1, 1, v13);
  v21 = static Font.system(size:weight:design:)();
  sub_1000038DC(v9, &qword_10005A870, &qword_100040B80);
  v22 = *(v10 + 24);
  v23 = *(v10 + 32);
  sub_100008C34(v10, v22);
  (*(v23 + 128))(v21, v22, v23);
  v24 = v34;
  sub_100004010(v34);
  sub_100008A08(v24 + *(v3 + 32), v35);
  sub_1000086B4(v24);
  v25 = v36;
  v26 = v37;
  sub_100008A6C(v35, v36);
  v27 = (*(v26 + 216))(v25, v26);
  v28 = *(v10 + 24);
  v29 = *(v10 + 32);
  sub_100008C34(v10, v28);
  (*(v29 + 176))(v27, v28, v29);
  sub_1000085F8(v35);
  v30 = *(v10 + 24);
  v31 = *(v10 + 32);
  sub_100008C34(v10, v30);
  return (*(v31 + 48))(v30, v31, 22.0);
}

void *sub_1000045B4()
{
  v1 = (v0 + *(type metadata accessor for TripViewHorizontalStack() + 20));
  if (*v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if (v9 >> 62)
    {
      goto LABEL_17;
    }

    v2 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      while (1)
      {
        v3 = 0;
        while ((v9 & 0xC000000000000001) != 0)
        {
          v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_14:
            __break(1u);
            goto LABEL_18;
          }

LABEL_10:
          if (*(v4 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_dataType))
          {
          }

          else
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v6 = _swiftEmptyArrayStorage[2];
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          ++v3;
          if (v5 == v2)
          {
            goto LABEL_18;
          }
        }

        if (v3 < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_17:
        v2 = _CocoaArrayWrapper.endIndex.getter();
        if (!v2)
        {
          goto LABEL_18;
        }
      }

      v4 = *(v9 + 8 * v3 + 32);

      v5 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_14;
      }

      goto LABEL_10;
    }

LABEL_18:

    return _swiftEmptyArrayStorage;
  }

  else
  {
    v8 = v1[1];
    type metadata accessor for CardModel(0);
    sub_100008BE4(&qword_10005A6D0, type metadata accessor for CardModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000047CC()
{
  v25 = type metadata accessor for TripViewHorizontalStack();
  v1 = (v0 + v25[11]);
  v2 = *v1;
  v3 = v1[1];
  *&v30[0] = *v1;
  *(&v30[0] + 1) = v3;
  sub_100003090(&qword_10005A860, &qword_100040B30);
  result = State.wrappedValue.getter();
  if (v27 > 0.0)
  {
    v5 = sub_1000045B4();
    v6 = v5;
    v24 = v0;
    if (v5 >> 62)
    {
      goto LABEL_17;
    }

    v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      while (1)
      {
        v8 = 0;
        while ((v6 & 0xC000000000000001) != 0)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          v10 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
LABEL_14:
            __break(1u);
LABEL_15:

            return sub_10000323C(v30);
          }

LABEL_8:
          type metadata accessor for CardCellConfiguration(0);
          sub_100008BE4(&qword_10005A868, type metadata accessor for CardCellConfiguration);

          AnyHashable.init<A>(_:)();
          v11 = v0 + v25[9];
          v28 = *v11;
          v29 = *(v11 + 8);
          sub_100003090(&qword_10005A858, &unk_10003FE20);
          State.wrappedValue.getter();
          if (!*(v26 + 16))
          {
            goto LABEL_15;
          }

          v12 = sub_10000E288(v30);
          if ((v13 & 1) == 0)
          {
            goto LABEL_15;
          }

          v14 = *(*(v26 + 56) + 16 * v12 + 8);
          sub_10000323C(v30);

          *&v30[0] = v2;
          *(&v30[0] + 1) = v3;
          State.wrappedValue.getter();
          swift_getKeyPath();
          swift_getKeyPath();
          LOBYTE(v30[0]) = v28 < v14;
          static Published.subscript.setter();
          ++v8;
          if (v10 == v7)
          {
            goto LABEL_18;
          }
        }

        if (v8 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_17:
        v7 = _CocoaArrayWrapper.endIndex.getter();
        if (!v7)
        {
          goto LABEL_18;
        }
      }

      v9 = *(v6 + 8 * v8 + 32);

      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_14;
      }

      goto LABEL_8;
    }

LABEL_18:

    v15 = sub_1000045B4();
    v16 = v15;
    v17 = v15 & 0xFFFFFFFFFFFFFF8;
    if (v15 >> 62)
    {
LABEL_35:
      v18 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v18 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v19 = 0;
    v20 = 0;
    while (v18 != v19)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        if (__OFADD__(v19, 1))
        {
LABEL_30:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v19 >= *(v17 + 16))
        {
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        v21 = *(v16 + 8 * v19 + 32);

        if (__OFADD__(v19, 1))
        {
          goto LABEL_30;
        }
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v22 = (v30[0] & 1) == 0;
      ++v19;
      v23 = __OFADD__(v20, v22);
      v20 += v22;
      if (v23)
      {
        goto LABEL_34;
      }
    }

    v30[0] = *(v24 + v25[10]);
    sub_100003090(&qword_10005A820, &qword_100040A00);
    return State.wrappedValue.setter();
  }

  return result;
}

uint64_t sub_100004BA4@<X0>(uint64_t a1@<X0>, void (**a2)(char a1)@<X8>)
{
  v84 = a2;
  v78 = type metadata accessor for OpacityTransition();
  v76 = *(v78 - 8);
  v3 = *(v76 + 64);
  __chkstk_darwin(v78);
  v73 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for MoveTransition();
  v72 = *(v75 - 8);
  v5 = *(v72 + 64);
  __chkstk_darwin(v75);
  v69 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_100003090(&qword_10005A770, &unk_100041510);
  v74 = *(v77 - 8);
  v7 = *(v74 + 64);
  v8 = __chkstk_darwin(v77);
  v70 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v71 = &v68 - v10;
  v85 = sub_100003090(&qword_10005A778, &unk_10003FCF0);
  v82 = *(v85 - 8);
  v11 = *(v82 + 64);
  __chkstk_darwin(v85);
  v68 = (&v68 - v12);
  v13 = sub_100003090(&qword_10005A780, &qword_100041520);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v83 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v68 - v17;
  v19 = sub_100003090(&qword_10005A788, &qword_10003FD00);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v68 - v21;
  v23 = sub_100003090(&qword_10005A790, &qword_10003FD08);
  v24 = v23 - 8;
  v25 = *(*(v23 - 8) + 64);
  v26 = __chkstk_darwin(v23);
  v81 = &v68 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v30 = &v68 - v29;
  __chkstk_darwin(v28);
  v32 = &v68 - v31;
  v33 = type metadata accessor for TripViewHorizontalStack();
  v34 = v33 - 8;
  v35 = *(v33 - 8);
  v36 = *(v35 + 64);
  __chkstk_darwin(v33);
  sub_100008590(a1, &v68 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = *(v35 + 80);
  v38 = a1;
  v39 = (v37 + 16) & ~v37;
  v79 = swift_allocObject();
  sub_100008854(&v68 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0), v79 + v39, type metadata accessor for TripViewHorizontalStack);
  *v22 = static HorizontalAlignment.center.getter();
  *(v22 + 1) = 0;
  v22[16] = 0;
  v40 = sub_100003090(&qword_10005A7A0, &qword_10003FD18);
  sub_100005614(v38, &v22[*(v40 + 44)]);
  v41 = v38 + *(v34 + 36);
  v42 = *v41;
  v43 = *(v41 + 8);
  LOBYTE(v86) = *v41;
  v87 = v43;
  sub_100003090(&qword_10005A7A8, &qword_10003FD20);
  State.wrappedValue.getter();
  if (v90)
  {
    v44 = 0.0;
  }

  else
  {
    v44 = 1.0;
  }

  sub_100008944(v22, v30, &qword_10005A788, &qword_10003FD00);
  *&v30[*(v24 + 44)] = v44;
  v80 = v32;
  sub_100008944(v30, v32, &qword_10005A790, &qword_10003FD08);
  LOBYTE(v86) = v42;
  v87 = v43;
  v45 = v18;
  State.wrappedValue.getter();
  v46 = 1;
  if (v90 == 1)
  {
    v47 = static HorizontalAlignment.center.getter();
    v48 = v68;
    *v68 = v47;
    *(v48 + 8) = 0;
    *(v48 + 16) = 1;
    v49 = sub_100003090(&qword_10005A7B8, &unk_10003FD30);
    sub_100007DD0(v38, v48 + *(v49 + 44));
    *(v48 + *(sub_100003090(&qword_10005A7C0, &unk_100040990) + 36)) = 0x3FF0000000000000;
    v50 = v69;
    MoveTransition.init(edge:)();
    v51 = v73;
    OpacityTransition.init()();
    v52 = sub_100008BE4(&qword_10005A7C8, &type metadata accessor for MoveTransition);
    v53 = sub_100008BE4(&qword_10005A7D0, &type metadata accessor for OpacityTransition);
    v54 = v71;
    v55 = v75;
    v56 = v78;
    Transition.combined<A>(with:)();
    (*(v76 + 8))(v51, v56);
    (*(v72 + 8))(v50, v55);
    v57 = v74;
    v58 = v77;
    (*(v74 + 16))(v70, v54, v77);
    v86 = v55;
    v87 = v56;
    v88 = v52;
    v89 = v53;
    swift_getOpaqueTypeConformance2();
    v59 = AnyTransition.init<A>(_:)();
    (*(v57 + 8))(v54, v58);
    *(v48 + *(v85 + 36)) = v59;
    sub_100008944(v48, v45, &qword_10005A778, &unk_10003FCF0);
    v46 = 0;
  }

  v60 = v45;
  (*(v82 + 56))(v45, v46, 1, v85);
  v62 = v80;
  v61 = v81;
  sub_100008DD0(v80, v81, &qword_10005A790, &qword_10003FD08);
  v63 = v83;
  sub_100008DD0(v45, v83, &qword_10005A780, &qword_100041520);
  v64 = v84;
  v65 = v79;
  *v84 = sub_100008644;
  v64[1] = v65;
  v66 = sub_100003090(&qword_10005A7B0, &qword_10003FD28);
  sub_100008DD0(v61, v64 + *(v66 + 48), &qword_10005A790, &qword_10003FD08);
  sub_100008DD0(v63, v64 + *(v66 + 64), &qword_10005A780, &qword_100041520);

  sub_1000038DC(v60, &qword_10005A780, &qword_100041520);
  sub_1000038DC(v62, &qword_10005A790, &qword_10003FD08);
  sub_1000038DC(v63, &qword_10005A780, &qword_100041520);
  sub_1000038DC(v61, &qword_10005A790, &qword_10003FD08);
}

void sub_10000546C(char a1, uint64_t a2)
{
  if (a1)
  {
    if (a1 == 1)
    {

      sub_100009AD4();
    }

    else
    {

      sub_100009ADC();
    }
  }

  else
  {
    v2 = (a2 + *(type metadata accessor for TripViewHorizontalStack() + 20));
    if (*v2)
    {
      v3 = *(**v2 + 280);

      LOBYTE(v3) = v3(v4);

      if (v3)
      {
        v5 = static Animation.easeInOut(duration:)();
        __chkstk_darwin(v5);
        withAnimation<A>(_:_:)();
      }
    }

    else
    {
      v6 = v2[1];
      type metadata accessor for CardModel(0);
      sub_100008BE4(&qword_10005A6D0, type metadata accessor for CardModel);
      EnvironmentObject.error()();
      __break(1u);
    }
  }
}

uint64_t sub_100005614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v150 = a2;
  v147 = type metadata accessor for LayoutConfiguration(0);
  v3 = *(*(v147 - 8) + 64);
  __chkstk_darwin(v147);
  v138 = &v137 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TripViewHorizontalStack();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v152 = v8;
  v153 = &v137 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = type metadata accessor for MeasurementStack(0);
  v9 = *(*(v141 - 8) + 64);
  __chkstk_darwin(v141);
  v11 = (&v137 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v140 = sub_100003090(&qword_10005A7F0, &qword_10003FD58);
  v12 = *(*(v140 - 8) + 64);
  __chkstk_darwin(v140);
  v143 = &v137 - v13;
  v142 = sub_100003090(&qword_10005A7F8, &qword_10003FD60);
  v14 = *(*(v142 - 8) + 64);
  __chkstk_darwin(v142);
  v145 = &v137 - v15;
  v144 = sub_100003090(&qword_10005A800, &qword_10003FD68);
  v16 = *(*(v144 - 8) + 64);
  __chkstk_darwin(v144);
  v18 = &v137 - v17;
  *(&v146 + 1) = sub_100003090(&qword_10005A808, &qword_10003FD70);
  v19 = *(*(*(&v146 + 1) - 8) + 64);
  v20 = __chkstk_darwin(*(&v146 + 1));
  v149 = &v137 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  *&v146 = &v137 - v23;
  __chkstk_darwin(v22);
  v155 = &v137 - v24;
  v25 = sub_100003090(&qword_10005A810, &qword_10003FD78);
  v26 = *(*(v25 - 8) + 64);
  v27 = __chkstk_darwin(v25 - 8);
  v156 = &v137 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v30 = &v137 - v29;
  *v30 = static VerticalAlignment.center.getter();
  *(v30 + 1) = 0;
  v30[16] = 0;
  v31 = *(sub_100003090(&qword_10005A818, &unk_10003FD80) + 44);
  v154 = v30;
  sub_10000642C(a1);
  v32 = sub_1000045B4();
  v151 = v5;
  v33 = (a1 + *(v5 + 40));
  v34 = *v33;
  v35 = v33[1];
  v164._countAndFlagsBits = *v33;
  v164._object = v35;
  sub_100003090(&qword_10005A820, &qword_100040A00);
  State.wrappedValue.getter();
  v148 = a1;
  if (!*&v157[0])
  {
    goto LABEL_4;
  }

  v164._countAndFlagsBits = v34;
  v164._object = v35;
  v36 = &v164;
  State.wrappedValue.getter();
  v37 = *&v157[0];
  if ((*&v157[0] & 0x8000000000000000) != 0)
  {
    while (1)
    {
      __break(1u);
LABEL_4:
      v36 = a1;
      v38 = sub_1000045B4();
      if (!(v38 >> 62))
      {
        break;
      }

      v36 = v38;
      v37 = _CocoaArrayWrapper.endIndex.getter();

      if ((v37 & 0x8000000000000000) == 0)
      {
        goto LABEL_6;
      }
    }

    v37 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

LABEL_6:
  v39 = v32 >> 62;
  if (!(v32 >> 62))
  {
    if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v37)
    {
      goto LABEL_8;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v32 < 0)
  {
    v36 = v32;
  }

  else
  {
    v36 = (v32 & 0xFFFFFFFFFFFFFF8);
  }

  if (_CocoaArrayWrapper.endIndex.getter() < 0)
  {
    __break(1u);
    goto LABEL_44;
  }

  if (_CocoaArrayWrapper.endIndex.getter() < v37)
  {
    goto LABEL_38;
  }

LABEL_8:
  if ((v32 & 0xC000000000000001) != 0 && v37)
  {
    type metadata accessor for CardCellConfiguration(0);

    v40 = 0;
    do
    {
      v41 = v40 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v40);
      v40 = v41;
    }

    while (v37 != v41);
  }

  else
  {
  }

  if (v39)
  {
    v36 = _CocoaArrayWrapper.subscript.getter();
    a1 = v42;
    v39 = v43;
    v37 = v44;

    v139 = v18;
    if (v37)
    {
      goto LABEL_19;
    }

LABEL_18:
    v45 = v6;
    sub_10002E060(v36, a1, v39, v37);
    v47 = v46;
    v48 = v148;
    goto LABEL_25;
  }

  v36 = (v32 & 0xFFFFFFFFFFFFFF8);
  a1 = (v32 & 0xFFFFFFFFFFFFFF8) + 32;
  v37 = (2 * v37) | 1;
  v139 = v18;
  if ((v37 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_19:
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v49 = swift_dynamicCastClass();
  if (!v49)
  {
    swift_unknownObjectRelease();
    v49 = _swiftEmptyArrayStorage;
  }

  v50 = v49[2];

  if (__OFSUB__(v37 >> 1, v39))
  {
    goto LABEL_39;
  }

  if (v50 != (v37 >> 1) - v39)
  {
LABEL_40:
    swift_unknownObjectRelease_n();
    goto LABEL_18;
  }

  v45 = v6;
  v47 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  v48 = v148;
  if (v47)
  {
    goto LABEL_26;
  }

  v47 = _swiftEmptyArrayStorage;
LABEL_25:
  swift_unknownObjectRelease();
LABEL_26:
  v51 = v151;
  v52 = *(v48 + *(v151 + 8));
  v53 = static Alignment.center.getter();
  v55 = v54;
  *v11 = swift_getKeyPath();
  sub_100003090(&qword_10005A798, &qword_10003FD10);
  swift_storeEnumTagMultiPayload();
  v56 = v141;
  *(v11 + *(v141 + 20)) = v47;
  *(v11 + *(v56 + 24)) = v52;
  v57 = (v11 + *(v56 + 28));
  *v57 = v53;
  v57[1] = v55;
  v58 = v143;
  v59 = &v143[*(v140 + 36)];
  v60 = sub_100003090(&qword_10005A828, &qword_100040A30);
  sub_1000041F4(v59 + *(v60 + 28));
  *v59 = swift_getKeyPath();
  sub_100008854(v11, v58, type metadata accessor for MeasurementStack);
  v61 = v58;
  v62 = v145;
  sub_100008944(v61, v145, &qword_10005A7F0, &qword_10003FD58);
  *(v62 + *(v142 + 36)) = 0;
  v63 = v153;
  sub_100008590(v48, v153);
  v64 = *(v45 + 80);
  v65 = (v64 + 16) & ~v64;
  v66 = swift_allocObject();
  sub_100008854(v63, v66 + v65, type metadata accessor for TripViewHorizontalStack);
  v67 = v62;
  v68 = v139;
  sub_100008944(v67, v139, &qword_10005A7F8, &qword_10003FD60);
  v69 = (v68 + *(v144 + 36));
  *v69 = sub_1000088BC;
  v69[1] = v66;
  v69[2] = 0;
  v69[3] = 0;
  sub_100008590(v48, v63);
  v70 = swift_allocObject();
  sub_100008854(v63, v70 + v65, type metadata accessor for TripViewHorizontalStack);
  v71 = v146;
  sub_100008944(v68, v146, &qword_10005A800, &qword_10003FD68);
  v72 = (v71 + *(*(&v146 + 1) + 36));
  *v72 = sub_1000088D4;
  v72[1] = v70;
  sub_100008944(v71, v155, &qword_10005A808, &qword_10003FD70);
  v73 = (v48 + *(v51 + 6));
  if (!*v73)
  {
LABEL_44:
    v136 = v73[1];
    type metadata accessor for TripAppConfig();
    sub_100008BE4(&qword_10005A6E0, type metadata accessor for TripAppConfig);
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  if (v164._countAndFlagsBits)
  {
    v147 = 0;
    v145 = 0;
    v146 = 0uLL;
    v152 = 0;
    v153 = 0;
    v151 = 0;
    v74 = 0;
    v75 = 0;
    v76 = 0;
    v77 = 0;
    v78 = 0;
  }

  else
  {
    v79 = [objc_opt_self() mainBundle];
    v180._object = 0xE000000000000000;
    v80._object = 0x8000000100042910;
    v80._countAndFlagsBits = 0xD000000000000016;
    v81.value._countAndFlagsBits = 1885958740;
    v81.value._object = 0xE400000000000000;
    v82._countAndFlagsBits = 0;
    v82._object = 0xE000000000000000;
    v180._countAndFlagsBits = 0;
    v83 = NSLocalizedString(_:tableName:bundle:value:comment:)(v80, v81, v79, v82, v180);

    v164 = v83;
    sub_1000089B4();
    v84 = Text.init<A>(_:)();
    v86 = v85;
    v144 = (v64 + 16) & ~v64;
    v88 = v87;
    v89 = v138;
    sub_100004010(v138);
    sub_100008A08(v89 + *(v147 + 24), &v164);
    sub_1000086B4(v89);
    v143 = v64;
    v90 = v166;
    v91 = v167;
    sub_100008A6C(&v164, v166);
    (*(v91 + 248))(v90, v91);
    v92 = Text.font(_:)();
    *&v146 = v93;
    LOBYTE(v90) = v94;
    v142 = v95;
    sub_100008AB0(v84, v86, v88 & 1);

    sub_1000085F8(&v164._countAndFlagsBits);
    sub_1000041F4(v89);
    sub_100008A08(v89 + *(v147 + 24), &v164);
    sub_1000086B4(v89);
    v96 = v166;
    v97 = v167;
    sub_100008A6C(&v164, v166);
    (*(v97 + 168))(v96, v97);
    v98 = v146;
    v99 = Text.foregroundColor(_:)();
    *(&v146 + 1) = v100;
    v147 = v99;
    v145 = v101;
    v103 = v102;
    sub_100008AB0(v92, v98, v90 & 1);

    sub_1000085F8(&v164._countAndFlagsBits);
    v104 = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v75 = v105;
    v76 = v106;
    v77 = v107;
    v78 = v108;
    LOBYTE(v157[0]) = v103 & 1;
    v179 = 0;
    *&v146 = v103 & 1;
    v109 = v48 + *(v151 + 12);
    v110 = *v109;
    v111 = *(v109 + 8);
    LOBYTE(v164._countAndFlagsBits) = v110;
    v164._object = v111;
    sub_100003090(&qword_10005A7A8, &qword_10003FD20);
    State.wrappedValue.getter();
    LODWORD(v96) = v178;
    v112 = v153;
    sub_100008590(v48, v153);
    v113 = v144;
    v152 = swift_allocObject();
    sub_100008854(v112, v152 + v113, type metadata accessor for TripViewHorizontalStack);
    v114 = 0x3FF0000000000000;
    if (!v96)
    {
      v114 = 0;
    }

    v153 = v114;
    v74 = v104;
    v151 = sub_100008AC0;
  }

  v144 = v74;
  v148 = 0;
  v115 = v156;
  sub_100008DD0(v154, v156, &qword_10005A810, &qword_10003FD78);
  v116 = v155;
  v117 = v149;
  sub_100008DD0(v155, v149, &qword_10005A808, &qword_10003FD70);
  v118 = v115;
  v119 = v150;
  sub_100008DD0(v118, v150, &qword_10005A810, &qword_10003FD78);
  v120 = sub_100003090(&qword_10005A838, &qword_10003FE08);
  sub_100008DD0(v117, v119 + *(v120 + 48), &qword_10005A808, &qword_10003FD70);
  v121 = v119 + *(v120 + 64);
  v123 = *(&v146 + 1);
  v122 = v147;
  v124 = v146;
  *&v157[0] = v147;
  *(&v157[0] + 1) = v145;
  v157[1] = v146;
  *&v158 = v74;
  *(&v158 + 1) = v75;
  *&v159 = v76;
  *(&v159 + 1) = v77;
  v160 = v78;
  v126 = v152;
  v125 = v153;
  *&v161 = v153;
  v127 = v151;
  *(&v161 + 1) = v151;
  v162 = v152;
  v128 = v145;
  v163 = 0;
  v129 = v157[0];
  v130 = v146;
  v131 = v159;
  *(v121 + 32) = v158;
  *(v121 + 48) = v131;
  *v121 = v129;
  *(v121 + 16) = v130;
  v132 = v160;
  v133 = v161;
  v134 = v162;
  *(v121 + 112) = 0;
  *(v121 + 80) = v133;
  *(v121 + 96) = v134;
  *(v121 + 64) = v132;
  sub_100008DD0(v157, &v164, &qword_10005A840, &qword_10003FE10);
  sub_1000038DC(v116, &qword_10005A808, &qword_10003FD70);
  sub_1000038DC(v154, &qword_10005A810, &qword_10003FD78);
  v164._countAndFlagsBits = v122;
  v164._object = v128;
  v165 = v124;
  v166 = v123;
  v167 = v144;
  v168 = v75;
  v169 = v76;
  v170 = v77;
  v171 = v78;
  v172 = v148;
  v173 = v125;
  v174 = v127;
  v175 = v126;
  v176 = 0;
  v177 = 0;
  sub_1000038DC(&v164, &qword_10005A840, &qword_10003FE10);
  sub_1000038DC(v117, &qword_10005A808, &qword_10003FD70);
  return sub_1000038DC(v156, &qword_10005A810, &qword_10003FD78);
}

uint64_t sub_10000642C(uint64_t a1)
{
  v2 = sub_100003090(&qword_10005A878, &qword_1000409D0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v35 - v4;
  v6 = sub_100003090(&qword_10005A880, &qword_10003FED0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v35 - v8;
  v10 = sub_100003090(&qword_10005A888, &qword_10003FED8);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v35 - v12;
  v14 = (a1 + *(type metadata accessor for TripViewHorizontalStack() + 20));
  if (*v14)
  {
    if (*(*v14 + OBJC_IVAR____TtC4Trip9CardModel_cardLayoutType))
    {
      *v5 = static HorizontalAlignment.center.getter();
      *(v5 + 1) = 0;
      v5[16] = 1;
      v15 = sub_100003090(&qword_10005A890, &qword_10003FEE0);
      sub_100007408(a1, &v5[*(v15 + 44)]);
      sub_100008DD0(v5, v9, &qword_10005A878, &qword_1000409D0);
      swift_storeEnumTagMultiPayload();
      sub_100008C8C();
      sub_100003894(&qword_10005A8C0, &qword_10005A878, &qword_1000409D0);
      _ConditionalContent<>.init(storage:)();
      return sub_1000038DC(v5, &qword_10005A878, &qword_1000409D0);
    }

    else
    {
      *v13 = static HorizontalAlignment.leading.getter();
      *(v13 + 1) = 0;
      v13[16] = 1;
      v17 = sub_100003090(&qword_10005A8C8, &qword_10003FEF8);
      sub_100006808(a1, &v13[*(v17 + 44)]);
      v18 = static Edge.Set.top.getter();
      EdgeInsets.init(_all:)();
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v27 = &v13[*(sub_100003090(&qword_10005A8A8, &qword_10003FEE8) + 36)];
      *v27 = v18;
      *(v27 + 1) = v20;
      *(v27 + 2) = v22;
      *(v27 + 3) = v24;
      *(v27 + 4) = v26;
      v27[40] = 0;
      v28 = static Edge.Set.bottom.getter();
      EdgeInsets.init(_all:)();
      v29 = &v13[*(v10 + 36)];
      *v29 = v28;
      *(v29 + 1) = v30;
      *(v29 + 2) = v31;
      *(v29 + 3) = v32;
      *(v29 + 4) = v33;
      v29[40] = 0;
      sub_100008DD0(v13, v9, &qword_10005A888, &qword_10003FED8);
      swift_storeEnumTagMultiPayload();
      sub_100008C8C();
      sub_100003894(&qword_10005A8C0, &qword_10005A878, &qword_1000409D0);
      _ConditionalContent<>.init(storage:)();
      return sub_1000038DC(v13, &qword_10005A888, &qword_10003FED8);
    }
  }

  else
  {
    v34 = v14[1];
    type metadata accessor for CardModel(0);
    sub_100008BE4(&qword_10005A6D0, type metadata accessor for CardModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100006808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = sub_100003090(&qword_10005A8D0, &qword_10003FF00);
  v41 = *(v3 - 8);
  v42 = v3;
  v4 = *(v41 + 64);
  __chkstk_darwin(v3);
  v37 = (&v36 - v5);
  v6 = type metadata accessor for CAFUIAppPresentationMode();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for EnvironmentValues();
  v38 = *(v11 - 8);
  v39 = v11;
  v12 = *(v38 + 64);
  __chkstk_darwin(v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100003090(&qword_10005A798, &qword_10003FD10);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = (&v36 - v17);
  v19 = type metadata accessor for LayoutConfiguration(0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a1;
  sub_100008DD0(a1, v18, &qword_10005A798, &qword_10003FD10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100008854(v18, v22, type metadata accessor for LayoutConfiguration);
  }

  else
  {
    v23 = *v18;
    static os_log_type_t.fault.getter();
    v24 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v38 + 8))(v14, v39);
  }

  (*(v7 + 16))(v10, v22, v6);
  v25 = (*(v7 + 88))(v10, v6);
  if (v25 == enum case for CAFUIAppPresentationMode.console(_:))
  {
    sub_1000086B4(v22);
    v26 = 1;
    v27 = v43;
    return (*(v41 + 56))(v27, v26, 1, v42);
  }

  if (v25 == enum case for CAFUIAppPresentationMode.clusterDCA(_:) || v25 == enum case for CAFUIAppPresentationMode.clusterPopover(_:) || v25 == enum case for CAFUIAppPresentationMode.widget(_:))
  {
    sub_1000086B4(v22);
    v28 = type metadata accessor for TripViewHorizontalStack();
    v29 = v40;
    v30 = (v40 + *(v28 + 20));
    if (*v30)
    {
      v26 = 1;
      v27 = v43;
      if (*(*v30 + OBJC_IVAR____TtC4Trip9CardModel_showsTitle))
      {
        v31 = static VerticalAlignment.center.getter();
        v32 = v37;
        *v37 = v31;
        *(v32 + 8) = 0;
        *(v32 + 16) = 1;
        v33 = sub_100003090(&qword_10005A8D8, &qword_10003FF08);
        sub_100006D2C(v29, (v32 + *(v33 + 44)));
        sub_100008944(v32, v27, &qword_10005A8D0, &qword_10003FF00);
        v26 = 0;
      }

      return (*(v41 + 56))(v27, v26, 1, v42);
    }

    v35 = v30[1];
    type metadata accessor for CardModel(0);
    sub_100008BE4(&qword_10005A6D0, type metadata accessor for CardModel);
    EnvironmentObject.error()();
    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100006D2C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v70 = a2;
  v3 = type metadata accessor for TripViewHorizontalStack();
  v4 = v3 - 8;
  v64 = *(v3 - 8);
  v5 = *(v64 + 64);
  __chkstk_darwin(v3);
  v65 = v6;
  v66 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LayoutConfiguration(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_100003090(&qword_10005A8E0, &qword_10003FF10);
  v11 = *(*(v63 - 8) + 64);
  __chkstk_darwin(v63);
  v13 = &v60 - v12;
  v14 = sub_100003090(&qword_10005A8E8, &qword_10003FF18);
  v68 = *(v14 - 8);
  v69 = v14;
  v15 = *(v68 + 64);
  v16 = __chkstk_darwin(v14);
  v67 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v71 = &v60 - v18;
  v19 = (a1 + *(v4 + 28));
  if (*v19)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    sub_1000089B4();
    v20 = Text.init<A>(_:)();
    v22 = v21;
    v24 = v23;
    sub_1000041F4(v10);
    sub_100008A08(&v10[*(v7 + 24)], &v72);
    sub_1000086B4(v10);
    v61 = a1;
    v25 = v73;
    v26 = v74;
    sub_100008A6C(&v72, v73);
    (*(v26 + 120))(v25, v26);
    v27 = Text.font(_:)();
    v29 = v28;
    v62 = v7;
    v31 = v30;
    v60 = v32;
    sub_100008AB0(v20, v22, v24 & 1);

    sub_1000085F8(&v72);
    v33 = &v13[*(v63 + 36)];
    v34 = *(sub_100003090(&qword_10005A8F0, &qword_100040AE0) + 28);
    v35 = enum case for Text.TruncationMode.tail(_:);
    v36 = type metadata accessor for Text.TruncationMode();
    (*(*(v36 - 8) + 104))(v33 + v34, v35, v36);
    *v33 = swift_getKeyPath();
    *v13 = v27;
    *(v13 + 1) = v29;
    v13[16] = v31 & 1;
    v37 = v61;
    *(v13 + 3) = v60;
    v38 = v66;
    sub_100008590(v37, v66);
    v39 = (*(v64 + 80) + 16) & ~*(v64 + 80);
    v40 = swift_allocObject();
    sub_100008854(v38, v40 + v39, type metadata accessor for TripViewHorizontalStack);
    sub_100008E74();
    v41 = v71;
    View.onTapGesture(count:perform:)();

    sub_1000038DC(v13, &qword_10005A8E0, &qword_10003FF10);
    v66 = Image.init(systemName:)();
    sub_1000041F4(v10);
    v42 = v62;
    sub_100008A08(&v10[*(v62 + 24)], &v72);
    sub_1000086B4(v10);
    v43 = v73;
    v44 = v74;
    sub_100008A6C(&v72, v73);
    v45 = (*(v44 + 144))(v43, v44);
    KeyPath = swift_getKeyPath();
    sub_1000085F8(&v72);
    sub_1000041F4(v10);
    sub_100008A08(&v10[*(v42 + 24)], &v72);
    sub_1000086B4(v10);
    v47 = v73;
    v48 = v74;
    sub_100008A6C(&v72, v73);
    v49 = (*(v48 + 168))(v47, v48);
    v50 = swift_getKeyPath();
    sub_1000085F8(&v72);
    v51 = v67;
    v52 = v68;
    v53 = *(v68 + 16);
    v54 = v69;
    v53(v67, v41, v69);
    v55 = v70;
    v53(v70, v51, v54);
    v56 = &v55[*(sub_100003090(&qword_10005A908, &unk_100040000) + 48)];
    *v56 = v66;
    *(v56 + 1) = KeyPath;
    *(v56 + 2) = v45;
    *(v56 + 3) = v50;
    *(v56 + 4) = v49;
    v57 = *(v52 + 8);

    v57(v71, v54);

    return (v57)(v51, v54);
  }

  else
  {
    v59 = v19[1];
    type metadata accessor for CardModel(0);
    sub_100008BE4(&qword_10005A6D0, type metadata accessor for CardModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100007408@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v36 = a2;
  v3 = type metadata accessor for TripViewHorizontalStack();
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  v7 = sub_100003090(&qword_10005A910, &qword_100040A50);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v34[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v14 = &v34[-v13];
  v15 = a1 + *(v4 + 36);
  v16 = *v15;
  v17 = *(v15 + 8);
  v40 = v16;
  v41 = v17;
  sub_100003090(&qword_10005A7A8, &qword_10003FD20);
  State.projectedValue.getter();
  v19 = v37;
  v18 = v38;
  v35 = v39;
  sub_100008590(a1, &v34[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v20 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v21 = swift_allocObject();
  sub_100008854(&v34[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v21 + v20, type metadata accessor for TripViewHorizontalStack);
  KeyPath = swift_getKeyPath();
  v23 = type metadata accessor for TripActionButton();
  *&v14[*(v23 + 20)] = KeyPath;
  sub_100003090(&qword_10005A798, &qword_10003FD10);
  swift_storeEnumTagMultiPayload();
  *v14 = v19;
  *(v14 + 1) = v18;
  v14[16] = v35;
  v24 = &v14[*(v23 + 24)];
  *v24 = sub_100009340;
  v24[1] = v21;
  LOBYTE(v21) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v25 = &v14[*(v8 + 44)];
  *v25 = v21;
  *(v25 + 1) = v26;
  *(v25 + 2) = v27;
  *(v25 + 3) = v28;
  *(v25 + 4) = v29;
  v25[40] = 0;
  sub_100008DD0(v14, v12, &qword_10005A910, &qword_100040A50);
  v30 = v36;
  *v36 = 0;
  *(v30 + 8) = 1;
  v31 = v30;
  v32 = sub_100003090(&qword_10005A918, &qword_100040010);
  sub_100008DD0(v12, v31 + *(v32 + 48), &qword_10005A910, &qword_100040A50);
  sub_1000038DC(v14, &qword_10005A910, &qword_100040A50);
  return sub_1000038DC(v12, &qword_10005A910, &qword_100040A50);
}

uint64_t sub_1000076EC(uint64_t a1)
{
  v2 = type metadata accessor for LayoutConfiguration(0);
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004010(v6);
  v7 = &v6[*(v3 + 28)];
  v8 = *(v7 + 1);
  v15 = *v7;
  v16 = v8;
  v17 = *(v7 + 1);
  sub_100003090(&qword_10005A7E0, &unk_1000409A0);
  Binding.wrappedValue.getter();
  v9 = v14[1];
  sub_1000086B4(v6);
  v10 = (a1 + *(type metadata accessor for TripViewHorizontalStack() + 44));
  v11 = *v10;
  v12 = v10[1];
  v15 = v11;
  v16 = v12;
  v14[0] = v9;
  sub_100003090(&qword_10005A860, &qword_100040B30);
  State.wrappedValue.setter();
  return sub_1000047CC();
}

uint64_t sub_100007808(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = (a2 + *(type metadata accessor for TripViewHorizontalStack() + 36));
  v5 = *v3;
  v6 = v3[1];

  sub_100003090(&qword_10005A858, &unk_10003FE20);
  return State.wrappedValue.setter();
}

uint64_t sub_10000787C(uint64_t a1)
{
  v26 = a1;
  v29 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v29 - 8);
  v1 = *(v32 + 64);
  __chkstk_darwin(v29);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v30 = *(v4 - 8);
  v31 = v4;
  v5 = *(v30 + 64);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TripViewHorizontalStack();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v11 = type metadata accessor for DispatchTime();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v25 - v17;
  sub_100008AD8();
  v27 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v28 = *(v12 + 8);
  v28(v16, v11);
  sub_100008590(v26, &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v20 = swift_allocObject();
  sub_100008854(&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for TripViewHorizontalStack);
  aBlock[4] = sub_100008B24;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018318;
  aBlock[3] = &unk_1000560E8;
  v21 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100008BE4(&unk_10005B580, &type metadata accessor for DispatchWorkItemFlags);
  sub_100003090(&qword_10005A850, &qword_10003FE18);
  sub_100003894(&qword_10005B590, &qword_10005A850, &qword_10003FE18);
  v22 = v29;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v23 = v27;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v21);

  (*(v32 + 8))(v3, v22);
  (*(v30 + 8))(v7, v31);
  return (v28)(v18, v11);
}

uint64_t sub_100007CE4()
{
  static Animation.easeOut(duration:)();
  withAnimation<A>(_:_:)();
}

uint64_t sub_100007D58(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for TripViewHorizontalStack() + 48));
  v3 = *v1;
  v4 = *(v1 + 1);
  sub_100003090(&qword_10005A7A8, &qword_10003FD20);
  return State.wrappedValue.setter();
}

double sub_100007DD0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = type metadata accessor for TripViewHorizontalStack();
  v42 = *(v3 - 8);
  v4 = *(v42 + 64);
  __chkstk_darwin(v3 - 8);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LayoutConfiguration(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TripResetView();
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v14 = (&v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = sub_100003090(&qword_10005A7D8, &unk_10003FD40);
  v15 = *(*(v43 - 8) + 64);
  __chkstk_darwin(v43);
  v17 = &v42 - v16;
  sub_100004010(v9);
  v18 = &v9[*(v6 + 20)];
  v19 = *(v18 + 1);
  *&v45 = *v18;
  *(&v45 + 1) = v19;
  v46 = *(v18 + 1);
  sub_100003090(&qword_10005A7E0, &unk_1000409A0);
  Binding.wrappedValue.getter();
  v20 = *&v52;
  sub_1000086B4(v9);
  sub_100004010(v9);
  v21 = &v9[*(v6 + 20)];
  v22 = *(v21 + 1);
  *&v45 = *v21;
  *(&v45 + 1) = v22;
  v46 = *(v21 + 1);
  Binding.wrappedValue.getter();
  v23 = *(&v52 + 1);
  sub_1000086B4(v9);
  sub_100008590(a1, v5);
  v24 = (*(v42 + 80) + 16) & ~*(v42 + 80);
  v25 = swift_allocObject();
  sub_100008854(v5, v25 + v24, type metadata accessor for TripViewHorizontalStack);
  *v14 = v20 * 0.5;
  v14[1] = v23 * 0.55;
  *(v14 + 2) = sub_100008710;
  *(v14 + 3) = v25;
  v26 = (v14 + *(v11 + 36));
  v27 = *(type metadata accessor for RoundedRectangle() + 20);
  v28 = enum case for RoundedCornerStyle.continuous(_:);
  v29 = type metadata accessor for RoundedCornerStyle();
  (*(*(v29 - 8) + 104))(&v26->i8[v27], v28, v29);
  *v26 = vdupq_n_s64(0x4046000000000000uLL);
  sub_100004010(v9);
  v30 = &v9[*(v6 + 20)];
  v31 = *(v30 + 1);
  *&v45 = *v30;
  *(&v45 + 1) = v31;
  v46 = *(v30 + 1);
  Binding.wrappedValue.getter();
  sub_1000086B4(v9);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_100008854(v14, v17, type metadata accessor for TripResetView);
  v32 = &v17[*(v43 + 36)];
  v33 = v50;
  *(v32 + 4) = v49;
  *(v32 + 5) = v33;
  *(v32 + 6) = v51;
  v34 = v46;
  *v32 = v45;
  *(v32 + 1) = v34;
  v35 = v48;
  *(v32 + 2) = v47;
  *(v32 + 3) = v35;
  sub_100004010(v9);
  v36 = &v9[*(v6 + 20)];
  v37 = *(v36 + 1);
  *&v52 = *v36;
  *(&v52 + 1) = v37;
  v53 = *(v36 + 1);
  Binding.wrappedValue.getter();
  sub_1000086B4(v9);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v38 = v44;
  sub_100008944(v17, v44, &qword_10005A7D8, &unk_10003FD40);
  v39 = (v38 + *(sub_100003090(&qword_10005A7E8, &qword_10003FD50) + 36));
  v40 = v53;
  *v39 = v52;
  v39[1] = v40;
  result = v54[0];
  v39[2] = *v54;
  return result;
}

uint64_t sub_100008354(char a1)
{
  if (a1)
  {
    sub_100009AE4();
  }

  v1 = static Animation.easeInOut(duration:)();
  __chkstk_darwin(v1);
  withAnimation<A>(_:_:)();
}

uint64_t sub_1000083F0(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for TripViewHorizontalStack() + 28));
  v2 = *v1;
  v3 = *(v1 + 1);

  sub_100003090(&qword_10005A7A8, &qword_10003FD20);
  State.wrappedValue.getter();
  State.wrappedValue.setter();
}

uint64_t sub_1000084D0@<X0>(uint64_t *a1@<X8>)
{
  *a1 = static Alignment.center.getter();
  a1[1] = v3;
  v4 = sub_100003090(&qword_10005A758, &qword_10003FCD0);
  sub_100004BA4(v1, (a1 + *(v4 + 44)));
  v5 = static Edge.Set.horizontal.getter();
  v6 = a1 + *(sub_100003090(&qword_10005A760, &qword_10003FCD8) + 36);
  *v6 = v5;
  *(v6 + 8) = 0u;
  *(v6 + 24) = 0u;
  v6[40] = 1;
  result = sub_100003090(&qword_10005A768, &unk_10003FCE0);
  v8 = (a1 + *(result + 36));
  *v8 = 0xD000000000000012;
  v8[1] = 0x8000000100042830;
  return result;
}

uint64_t sub_100008590(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TripViewHorizontalStack();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000085F8(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void sub_100008644(char a1)
{
  v3 = *(type metadata accessor for TripViewHorizontalStack() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_10000546C(a1, v4);
}

uint64_t sub_1000086B4(uint64_t a1)
{
  v2 = type metadata accessor for LayoutConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100008710(char a1)
{
  v2 = *(*(type metadata accessor for TripViewHorizontalStack() - 8) + 80);

  return sub_100008354(a1 & 1);
}

uint64_t sub_10000879C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000087C8(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.font.setter();
}

uint64_t sub_1000087F4@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100008820(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.foregroundColor.setter();
}

uint64_t sub_100008854(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000088D4(uint64_t *a1)
{
  v3 = *(type metadata accessor for TripViewHorizontalStack() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100007808(a1, v4);
}

uint64_t sub_100008944(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003090(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_1000089B4()
{
  result = qword_10005A830;
  if (!qword_10005A830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A830);
  }

  return result;
}

uint64_t sub_100008A08(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_100008A6C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100008AB0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_100008AD8()
{
  result = qword_10005A848;
  if (!qword_10005A848)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10005A848);
  }

  return result;
}

uint64_t sub_100008B3C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for TripViewHorizontalStack() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_100008BB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100008BE4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100008C34(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

unint64_t sub_100008C8C()
{
  result = qword_10005A898;
  if (!qword_10005A898)
  {
    sub_1000036BC(&qword_10005A888, &qword_10003FED8);
    sub_100008D18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A898);
  }

  return result;
}

unint64_t sub_100008D18()
{
  result = qword_10005A8A0;
  if (!qword_10005A8A0)
  {
    sub_1000036BC(&qword_10005A8A8, &qword_10003FEE8);
    sub_100003894(&qword_10005A8B0, &qword_10005A8B8, &qword_10003FEF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A8A0);
  }

  return result;
}

uint64_t sub_100008DD0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003090(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_100008E48()
{
  type metadata accessor for TripViewHorizontalStack();

  sub_100009ADC();
}

unint64_t sub_100008E74()
{
  result = qword_10005A8F8;
  if (!qword_10005A8F8)
  {
    sub_1000036BC(&qword_10005A8E0, &qword_10003FF10);
    sub_100003894(&qword_10005A900, &qword_10005A8F0, &qword_100040AE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A8F8);
  }

  return result;
}

uint64_t sub_100008F2C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100008F58(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.font.setter();
}

uint64_t sub_100008F84@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100008FB0(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.foregroundColor.setter();
}

uint64_t sub_100008FDC()
{
  v1 = type metadata accessor for TripViewHorizontalStack();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  sub_100003090(&qword_10005A798, &qword_10003FD10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for CAFUIAppPresentationMode();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
    v7 = type metadata accessor for LayoutConfiguration(0);
    v8 = (v5 + *(v7 + 20));
    v9 = *v8;

    v10 = v8[1];

    sub_1000085F8((v5 + *(v7 + 24)));
  }

  else
  {
    v11 = *v5;
  }

  v12 = *(v5 + v1[5]);

  v13 = *(v5 + v1[6]);

  v14 = *(v5 + v1[7] + 8);

  v15 = (v5 + v1[9]);
  v16 = *v15;

  v17 = v15[1];

  v18 = *(v5 + v1[10] + 8);

  v19 = *(v5 + v1[11] + 8);

  v20 = *(v5 + v1[12] + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

unint64_t sub_10000919C()
{
  result = qword_10005A920;
  if (!qword_10005A920)
  {
    sub_1000036BC(&qword_10005A768, &unk_10003FCE0);
    sub_100009254();
    sub_100003894(&qword_10005A940, &qword_10005A948, &qword_100040020);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A920);
  }

  return result;
}

unint64_t sub_100009254()
{
  result = qword_10005A928;
  if (!qword_10005A928)
  {
    sub_1000036BC(&qword_10005A760, &qword_10003FCD8);
    sub_100003894(&qword_10005A930, &qword_10005A938, &qword_100040018);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A928);
  }

  return result;
}

Swift::Int sub_100009368()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000093DC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_100009420@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a1;
  v55 = a3;
  v50 = type metadata accessor for LocalCoordinateSpace();
  v5 = *(*(v50 - 8) + 64);
  __chkstk_darwin(v50);
  v49 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DragGesture();
  v8 = *(v7 - 8);
  v51 = v7;
  v52 = v8;
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v45 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100003090(&qword_10005A958, &qword_1000400D8);
  v12 = *(v11 - 8);
  v53 = v11;
  v54 = v12;
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v47 = &v41 - v14;
  v15 = type metadata accessor for LongPressGesture();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_100003090(&qword_10005A960, &qword_1000400E0);
  v20 = *(v44 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v44);
  v23 = &v41 - v22;
  v46 = sub_100003090(&qword_10005A968, &qword_1000400E8);
  v48 = *(v46 - 8);
  v24 = *(v48 + 64);
  __chkstk_darwin(v46);
  v41 = &v41 - v25;
  static Color.white.getter();
  v26 = Color.opacity(_:)();

  v56 = v26;
  LOBYTE(v57) = 0;
  LongPressGesture.init(minimumDuration:maximumDistance:)();
  v27 = swift_allocObject();
  *(v27 + 16) = a1;
  *(v27 + 24) = a2;
  v28 = a2;
  sub_100009EA0(&qword_10005A970, &type metadata accessor for LongPressGesture);

  Gesture.onEnded(_:)();

  (*(v16 + 8))(v19, v15);
  static GestureMask.all.getter();
  v29 = sub_100003090(&qword_10005A978, &qword_1000400F0);
  v30 = sub_100009DE0();
  v43 = &protocol conformance descriptor for _EndedGesture<A>;
  v31 = sub_100003894(&qword_10005A998, &qword_10005A960, &qword_1000400E0);
  v32 = v41;
  v33 = v44;
  View.gesture<A>(_:including:)();
  (*(v20 + 8))(v23, v33);

  static CoordinateSpaceProtocol<>.local.getter();
  v34 = v45;
  DragGesture.init<A>(minimumDistance:coordinateSpace:)();
  v35 = swift_allocObject();
  *(v35 + 16) = v42;
  *(v35 + 24) = v28;
  sub_100009EA0(&qword_10005A9A0, &type metadata accessor for DragGesture);

  v36 = v47;
  v37 = v51;
  Gesture.onEnded(_:)();

  (*(v52 + 8))(v34, v37);
  static GestureMask.all.getter();
  v56 = v29;
  v57 = v33;
  v58 = v30;
  v59 = v31;
  swift_getOpaqueTypeConformance2();
  sub_100003894(&qword_10005A9A8, &qword_10005A958, &qword_1000400D8);
  v38 = v46;
  v39 = v53;
  View.simultaneousGesture<A>(_:including:)();
  (*(v54 + 8))(v36, v39);
  return (*(v48 + 8))(v32, v38);
}

uint64_t sub_100009A60(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  DragGesture.Value.translation.getter();
  v4 = v3;
  result = DragGesture.Value.translation.getter();
  if (fabs(v6) < fabs(v4))
  {
    if (v4 <= 0.0)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    return a2(v7);
  }

  return result;
}

void sub_100009AEC(char a1)
{
  v2 = [objc_opt_self() defaultCenter];
  if (qword_10005A3C8 != -1)
  {
    swift_once();
  }

  v3 = static NSNotificationName.ClusterEvent;
  sub_100003090(&qword_10005A950, &qword_100040048);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10003FA90;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = &type metadata for ClusterEventType;
  *(inited + 72) = a1;
  sub_10000EDF0(inited);
  swift_setDeallocating();
  sub_100009C64(inited + 32);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v2 postNotificationName:v3 object:0 userInfo:isa];
}

uint64_t sub_100009C64(uint64_t a1)
{
  v2 = sub_100003090(&qword_10005D480, &qword_100040050);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100009CCC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100009D14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100009D7C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100009DB4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(0);
}

unint64_t sub_100009DE0()
{
  result = qword_10005A980;
  if (!qword_10005A980)
  {
    sub_1000036BC(&qword_10005A978, &qword_1000400F0);
    sub_100003894(&qword_10005A988, &qword_10005A990, &qword_1000400F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A980);
  }

  return result;
}

uint64_t sub_100009EA0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for LayoutName(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LayoutName(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10000A058()
{
  sub_1000036BC(&qword_10005A968, &qword_1000400E8);
  sub_1000036BC(&qword_10005A958, &qword_1000400D8);
  sub_1000036BC(&qword_10005A978, &qword_1000400F0);
  sub_1000036BC(&qword_10005A960, &qword_1000400E0);
  sub_100009DE0();
  sub_100003894(&qword_10005A998, &qword_10005A960, &qword_1000400E0);
  swift_getOpaqueTypeConformance2();
  sub_100003894(&qword_10005A9A8, &qword_10005A958, &qword_1000400D8);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_10000A1B0()
{
  result = qword_10005A9B0;
  if (!qword_10005A9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A9B0);
  }

  return result;
}

uint64_t sub_10000A21C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for RoundedRectangle();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10000A2DC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for RoundedRectangle();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for TripResetView()
{
  result = qword_10005AA10;
  if (!qword_10005AA10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10000A3CC()
{
  result = sub_10000A460();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for RoundedRectangle();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_10000A460()
{
  result = qword_10005AA20;
  if (!qword_10005AA20)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_10005AA20);
  }

  return result;
}

uint64_t sub_10000A4E4@<X0>(uint64_t a1@<X8>)
{
  v63 = a1;
  v2 = sub_100003090(&qword_10005AA58, &qword_1000401F8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v62 - v4;
  v6 = sub_100003090(&qword_10005AA60, &qword_100040200);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v10 = &v62 - v9;
  v11 = sub_100003090(&qword_10005AA68, &qword_100040208);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v15 = &v62 - v14;
  v16 = sub_100003090(&qword_10005AA70, &qword_100040210);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v20 = &v62 - v19;
  v21 = sub_100003090(&qword_10005AA78, &qword_100040218);
  v22 = v21 - 8;
  v23 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  v25 = &v62 - v24;
  *v5 = static VerticalAlignment.center.getter();
  *(v5 + 1) = 0x4020000000000000;
  v5[16] = 0;
  v26 = sub_100003090(&qword_10005AA80, &qword_100040220);
  sub_10000A9D8(v1, &v5[*(v26 + 44)]);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_100008944(v5, v10, &qword_10005AA58, &qword_1000401F8);
  v27 = &v10[*(v7 + 44)];
  v28 = v69;
  *(v27 + 4) = v68;
  *(v27 + 5) = v28;
  *(v27 + 6) = v70;
  v30 = v65;
  v29 = v66;
  *v27 = v64;
  *(v27 + 1) = v30;
  v31 = v67;
  *(v27 + 2) = v29;
  *(v27 + 3) = v31;
  LOBYTE(v5) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  sub_100008944(v10, v15, &qword_10005AA60, &qword_100040200);
  v40 = &v15[*(v12 + 44)];
  *v40 = v5;
  *(v40 + 1) = v33;
  *(v40 + 2) = v35;
  *(v40 + 3) = v37;
  *(v40 + 4) = v39;
  v40[40] = 0;
  v41 = [objc_opt_self() systemBackgroundColor];
  v42 = Color.init(_:)();
  LOBYTE(v10) = static Edge.Set.all.getter();
  sub_100008944(v15, v20, &qword_10005AA68, &qword_100040208);
  v43 = &v20[*(v17 + 44)];
  *v43 = v42;
  v43[8] = v10;
  v44 = *(type metadata accessor for TripResetView() + 28);
  static Color.white.getter();
  v45 = Color.opacity(_:)();

  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v46 = &v25[*(v22 + 44)];
  sub_10000B714(v1 + v44, v46, &type metadata accessor for RoundedRectangle);
  v47 = v46 + *(sub_100003090(&qword_10005AA88, &qword_100040228) + 36);
  v48 = v72;
  *v47 = v71;
  *(v47 + 16) = v48;
  *(v47 + 32) = v73;
  v49 = sub_100003090(&qword_10005AA90, &qword_100040230);
  *(v46 + *(v49 + 52)) = v45;
  *(v46 + *(v49 + 56)) = 256;
  v50 = static Alignment.center.getter();
  v52 = v51;
  v53 = (v46 + *(sub_100003090(&qword_10005AA98, &qword_100040238) + 36));
  *v53 = v50;
  v53[1] = v52;
  v54 = static Alignment.center.getter();
  v56 = v55;
  v57 = (v46 + *(sub_100003090(&qword_10005AAA0, &qword_100040240) + 36));
  *v57 = v54;
  v57[1] = v56;
  sub_100008944(v20, v25, &qword_10005AA70, &qword_100040210);
  v58 = *(sub_100003090(&qword_10005AAA8, &qword_100040248) + 36);
  v59 = v1 + v44;
  v60 = v63;
  sub_10000B714(v59, v63 + v58, &type metadata accessor for RoundedRectangle);
  return sub_100008944(v25, v60, &qword_10005AA78, &qword_100040218);
}

uint64_t sub_10000A9D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a1;
  v85 = a2;
  v87 = type metadata accessor for BorderedProminentButtonStyle();
  v89 = *(v87 - 8);
  v3 = *(v89 + 64);
  __chkstk_darwin(v87);
  v86 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TripResetView();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v77 = v8;
  v9 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100003090(&qword_10005AAB0, &qword_100040250);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v67 - v12;
  v14 = sub_100003090(&qword_10005AAB8, &qword_100040258);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v67 - v16;
  v18 = sub_100003090(&qword_10005AAC0, &qword_100040260);
  v19 = *(v18 - 8);
  v88 = v18 - 8;
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18 - 8);
  v84 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v83 = &v67 - v24;
  v25 = __chkstk_darwin(v23);
  v82 = &v67 - v26;
  __chkstk_darwin(v25);
  v28 = &v67 - v27;
  static ButtonRole.cancel.getter();
  v69 = type metadata accessor for ButtonRole();
  v29 = *(v69 - 8);
  v80 = *(v29 + 56);
  v81 = v29 + 56;
  v80(v13, 0, 1, v69);
  v78 = type metadata accessor for TripResetView;
  v72 = v9;
  sub_10000B714(a1, v9, type metadata accessor for TripResetView);
  v30 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v31 = swift_allocObject();
  sub_10000B780(v9, v31 + v30);
  Button.init(role:action:label:)();
  static Color.gray.getter();
  v32 = Color.opacity(_:)();

  KeyPath = swift_getKeyPath();
  v70 = v14;
  v34 = &v17[*(v14 + 36)];
  *v34 = KeyPath;
  v34[1] = v32;
  v35 = v86;
  BorderedProminentButtonStyle.init()();
  v75 = sub_10000B844();
  v74 = sub_10000B928();
  v36 = v28;
  v76 = v28;
  v37 = v87;
  View.buttonStyle<A>(_:)();
  v38 = *(v89 + 8);
  v89 += 8;
  v73 = v38;
  v38(v35, v37);
  sub_1000038DC(v17, &qword_10005AAB8, &qword_100040258);
  v39 = &v36[*(v88 + 44)];
  v71 = type metadata accessor for RoundedRectangle();
  v40 = *(v71 + 20);
  v41 = enum case for RoundedCornerStyle.continuous(_:);
  v42 = type metadata accessor for RoundedCornerStyle();
  v43 = *(v42 - 8);
  v44 = *(v43 + 104);
  v68 = v43 + 104;
  v44(&v39[v40], v41, v42);
  __asm { FMOV            V0.2D, #25.0 }

  v67 = _Q0;
  *v39 = _Q0;
  v50 = sub_100003090(&qword_10005AAF8, &qword_1000402A8);
  *&v39[*(v50 + 36)] = 256;
  static ButtonRole.destructive.getter();
  v80(v13, 0, 1, v69);
  v51 = v72;
  sub_10000B714(v79, v72, v78);
  v52 = swift_allocObject();
  sub_10000B780(v51, v52 + v30);
  Button.init(role:action:label:)();
  static Color.gray.getter();
  v53 = Color.opacity(_:)();

  v54 = swift_getKeyPath();
  v55 = &v17[*(v70 + 36)];
  *v55 = v54;
  v55[1] = v53;
  v56 = v86;
  BorderedProminentButtonStyle.init()();
  v57 = v82;
  v58 = v87;
  View.buttonStyle<A>(_:)();
  v73(v56, v58);
  sub_1000038DC(v17, &qword_10005AAB8, &qword_100040258);
  v59 = v57;
  v60 = &v57[*(v88 + 44)];
  v44(&v60[*(v71 + 20)], v41, v42);
  *v60 = v67;
  *&v60[*(v50 + 36)] = 256;
  v61 = v76;
  v62 = v83;
  sub_10000BAEC(v76, v83);
  v63 = v84;
  sub_10000BAEC(v59, v84);
  v64 = v85;
  sub_10000BAEC(v62, v85);
  v65 = sub_100003090(&qword_10005AB00, &unk_1000402B0);
  sub_10000BAEC(v63, v64 + *(v65 + 48));
  sub_10000BB5C(v59);
  sub_10000BB5C(v61);
  sub_10000BB5C(v63);
  return sub_10000BB5C(v62);
}

uint64_t sub_10000B0DC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100003090(&qword_10005A870, &qword_100040B80);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v33[-v4];
  v6 = type metadata accessor for Font.TextStyle();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v33[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = [objc_opt_self() mainBundle];
  v35._object = 0xE000000000000000;
  v12._countAndFlagsBits = 0x41435F5445534552;
  v12._object = 0xEC0000004C45434ELL;
  v13.value._countAndFlagsBits = 1885958740;
  v13.value._object = 0xE400000000000000;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v35._countAndFlagsBits = 0;
  v15 = NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v13, v11, v14, v35);

  v34 = v15;
  sub_1000089B4();
  v16 = Text.init<A>(_:)();
  v18 = v17;
  v20 = v19;
  (*(v7 + 104))(v10, enum case for Font.TextStyle.title(_:), v6);
  v21 = type metadata accessor for Font.Design();
  (*(*(v21 - 8) + 56))(v5, 1, 1, v21);
  static Font.Weight.bold.getter();
  static Font.system(_:design:weight:)();
  sub_1000038DC(v5, &qword_10005A870, &qword_100040B80);
  (*(v7 + 8))(v10, v6);
  v22 = Text.font(_:)();
  v24 = v23;
  LOBYTE(v5) = v25;

  sub_100008AB0(v16, v18, v20 & 1);

  static Color.primary.getter();
  v26 = Text.foregroundColor(_:)();
  v28 = v27;
  LOBYTE(v18) = v29;
  v31 = v30;

  sub_100008AB0(v22, v24, v5 & 1);

  *a1 = v26;
  *(a1 + 8) = v28;
  *(a1 + 16) = v18 & 1;
  *(a1 + 24) = v31;
  return result;
}

uint64_t sub_10000B3E4@<X0>(uint64_t *a1@<X8>)
{
  v35 = a1;
  v1 = sub_100003090(&qword_10005A870, &qword_100040B80);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v34 - v3;
  v5 = type metadata accessor for Font.TextStyle();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() mainBundle];
  v37._object = 0xE000000000000000;
  v11._countAndFlagsBits = 0x43415F5445534552;
  v11._object = 0xEC0000004E4F4954;
  v12.value._countAndFlagsBits = 1885958740;
  v12.value._object = 0xE400000000000000;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v37._countAndFlagsBits = 0;
  v14 = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v12, v10, v13, v37);

  v36 = v14;
  sub_1000089B4();
  v15 = Text.init<A>(_:)();
  v17 = v16;
  v19 = v18;
  (*(v6 + 104))(v9, enum case for Font.TextStyle.title(_:), v5);
  v20 = type metadata accessor for Font.Design();
  (*(*(v20 - 8) + 56))(v4, 1, 1, v20);
  static Font.Weight.bold.getter();
  static Font.system(_:design:weight:)();
  sub_1000038DC(v4, &qword_10005A870, &qword_100040B80);
  (*(v6 + 8))(v9, v5);
  v21 = Text.font(_:)();
  v23 = v22;
  LOBYTE(v4) = v24;

  sub_100008AB0(v15, v17, v19 & 1);

  v25 = [objc_opt_self() systemRedColor];
  Color.init(_:)();
  v26 = Text.foregroundColor(_:)();
  v28 = v27;
  LOBYTE(v15) = v29;
  v31 = v30;

  sub_100008AB0(v21, v23, v4 & 1);

  v33 = v35;
  *v35 = v26;
  v33[1] = v28;
  *(v33 + 16) = v15 & 1;
  v33[3] = v31;
  return result;
}

uint64_t sub_10000B714(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000B780(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TripResetView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000B7EC@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10000B818(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.tintColor.setter();
}

unint64_t sub_10000B844()
{
  result = qword_10005AAC8;
  if (!qword_10005AAC8)
  {
    sub_1000036BC(&qword_10005AAB8, &qword_100040258);
    sub_100003894(&qword_10005AAD0, &qword_10005AAD8, &qword_100040298);
    sub_100003894(&qword_10005AAE0, &qword_10005AAE8, &qword_1000402A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005AAC8);
  }

  return result;
}

unint64_t sub_10000B928()
{
  result = qword_10005AAF0;
  if (!qword_10005AAF0)
  {
    type metadata accessor for BorderedProminentButtonStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005AAF0);
  }

  return result;
}

uint64_t sub_10000B980()
{
  v1 = (type metadata accessor for TripResetView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3 + 24);

  v6 = v1[9];
  v7 = v6 + *(type metadata accessor for RoundedRectangle() + 20);
  v8 = type metadata accessor for RoundedCornerStyle();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10000BA80(uint64_t a1)
{
  v3 = *(type metadata accessor for TripResetView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  v5 = *(v4 + 24);
  return (*(v4 + 16))(a1);
}

uint64_t sub_10000BAEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003090(&qword_10005AAC0, &qword_100040260);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000BB5C(uint64_t a1)
{
  v2 = sub_100003090(&qword_10005AAC0, &qword_100040260);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for ResetSheetAction(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ResetSheetAction(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10000BD24()
{
  result = qword_10005AB08;
  if (!qword_10005AB08)
  {
    sub_1000036BC(&qword_10005AAA8, &qword_100040248);
    sub_10000BDDC();
    sub_100003894(&qword_10005AB50, &qword_10005AB58, qword_1000402E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005AB08);
  }

  return result;
}

unint64_t sub_10000BDDC()
{
  result = qword_10005AB10;
  if (!qword_10005AB10)
  {
    sub_1000036BC(&qword_10005AA78, &qword_100040218);
    sub_10000BE94();
    sub_100003894(&qword_10005AB48, &qword_10005AAA0, &qword_100040240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005AB10);
  }

  return result;
}

unint64_t sub_10000BE94()
{
  result = qword_10005AB18;
  if (!qword_10005AB18)
  {
    sub_1000036BC(&qword_10005AA70, &qword_100040210);
    sub_10000BF4C();
    sub_100003894(&qword_10005AB38, &qword_10005AB40, &qword_100040790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005AB18);
  }

  return result;
}

unint64_t sub_10000BF4C()
{
  result = qword_10005AB20;
  if (!qword_10005AB20)
  {
    sub_1000036BC(&qword_10005AA68, &qword_100040208);
    sub_10000BFD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005AB20);
  }

  return result;
}

unint64_t sub_10000BFD8()
{
  result = qword_10005AB28;
  if (!qword_10005AB28)
  {
    sub_1000036BC(&qword_10005AA60, &qword_100040200);
    sub_100003894(&qword_10005AB30, &qword_10005AA58, &qword_1000401F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005AB28);
  }

  return result;
}

unint64_t sub_10000C094()
{
  result = qword_10005AB60;
  if (!qword_10005AB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005AB60);
  }

  return result;
}

uint64_t sub_10000C100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003090(&qword_10005A650, &unk_10003FC50);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10000C1E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100003090(&qword_10005A650, &unk_10003FC50);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for TripView()
{
  result = qword_10005ABC0;
  if (!qword_10005ABC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000C2F4()
{
  sub_100003DC4();
  if (v0 <= 0x3F)
  {
    sub_100003EB0();
    if (v1 <= 0x3F)
    {
      sub_10000C390();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10000C390()
{
  if (!qword_10005ABD0)
  {
    type metadata accessor for CardModel(255);
    sub_10000EF3C(&qword_10005A6D0, type metadata accessor for CardModel);
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &qword_10005ABD0);
    }
  }
}

uint64_t sub_10000C440@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003090(&qword_10005A798, &qword_10003FD10);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v16 - v11);
  sub_100008DD0(v2, &v16 - v11, &qword_10005A798, &qword_10003FD10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_10000ED88(v12, a1, type metadata accessor for LayoutConfiguration);
  }

  v14 = *v12;
  static os_log_type_t.fault.getter();
  v15 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_10000C624@<X0>(uint64_t a1@<X8>)
{
  v208 = a1;
  v186 = sub_100003090(&qword_10005AC08, &qword_1000403B0);
  v2 = *(*(v186 - 8) + 64);
  __chkstk_darwin(v186);
  v168 = (&v167 - v3);
  v187 = sub_100003090(&qword_10005AC10, &qword_1000403B8);
  v4 = *(*(v187 - 8) + 64);
  __chkstk_darwin(v187);
  v188 = &v167 - v5;
  v182 = sub_100003090(&qword_10005AC18, &qword_1000403C0);
  v6 = *(*(v182 - 8) + 64);
  __chkstk_darwin(v182);
  v183 = &v167 - v7;
  v184 = sub_100003090(&qword_10005AC20, &qword_1000403C8);
  v8 = *(*(v184 - 8) + 64);
  __chkstk_darwin(v184);
  v185 = &v167 - v9;
  v171 = type metadata accessor for TripViewStandard();
  v10 = *(*(v171 - 8) + 64);
  __chkstk_darwin(v171);
  v172 = (&v167 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v181 = sub_100003090(&qword_10005AC28, &qword_1000403D0);
  v12 = *(*(v181 - 8) + 64);
  v13 = __chkstk_darwin(v181);
  v170 = &v167 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v173 = &v167 - v15;
  v198 = sub_100003090(&qword_10005AC30, &qword_1000403D8);
  v16 = *(*(v198 - 8) + 64);
  __chkstk_darwin(v198);
  v189 = &v167 - v17;
  v199 = sub_100003090(&qword_10005AC38, &qword_1000403E0);
  v18 = *(*(v199 - 8) + 64);
  __chkstk_darwin(v199);
  v200 = &v167 - v19;
  v193 = sub_100003090(&qword_10005AC40, &qword_1000403E8);
  v20 = *(*(v193 - 8) + 64);
  __chkstk_darwin(v193);
  v195 = &v167 - v21;
  v196 = sub_100003090(&qword_10005AC48, &qword_1000403F0);
  v22 = *(*(v196 - 8) + 64);
  __chkstk_darwin(v196);
  v197 = &v167 - v23;
  v178 = sub_100003090(&qword_10005AC50, &qword_1000403F8);
  v24 = *(*(v178 - 8) + 64);
  __chkstk_darwin(v178);
  v179 = &v167 - v25;
  v177 = sub_100003090(&qword_10005AC58, &qword_100040400);
  v26 = *(*(v177 - 8) + 64);
  __chkstk_darwin(v177);
  v176 = (&v167 - v27);
  v192 = sub_100003090(&qword_10005AC60, &qword_100040408);
  v28 = *(*(v192 - 8) + 64);
  __chkstk_darwin(v192);
  v180 = &v167 - v29;
  v30 = type metadata accessor for CAFUIAppSubStyle();
  v31 = *(v30 - 8);
  v201 = v30;
  v202 = v31;
  v32 = *(v31 + 64);
  v33 = __chkstk_darwin(v30);
  v175 = &v167 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v191 = &v167 - v36;
  v37 = __chkstk_darwin(v35);
  v174 = &v167 - v38;
  __chkstk_darwin(v37);
  v190 = &v167 - v39;
  v40 = type metadata accessor for CAFUIAppAppStyle();
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  __chkstk_darwin(v40);
  v44 = &v167 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for LayoutConfiguration(0);
  v46 = *(*(v45 - 8) + 64);
  v47 = __chkstk_darwin(v45);
  v169 = &v167 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v50 = &v167 - v49;
  v207 = sub_100003090(&qword_10005AC68, &qword_100040410);
  v51 = *(*(v207 - 8) + 64);
  __chkstk_darwin(v207);
  v194 = &v167 - v52;
  v204 = sub_100003090(&qword_10005AC70, &qword_100040418);
  v53 = *(*(v204 - 8) + 64);
  __chkstk_darwin(v204);
  v206 = &v167 - v54;
  v205 = sub_100003090(&qword_10005AC78, &qword_100040420);
  v55 = *(*(v205 - 8) + 64);
  __chkstk_darwin(v205);
  v57 = (&v167 - v56);
  v203 = type metadata accessor for TripView();
  v58 = v1;
  v59 = (v1 + *(v203 + 20));
  if (*v59)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if (v210 && v210 == 1)
    {

      v60 = v1;
LABEL_6:
      *v57 = swift_getKeyPath();
      sub_100003090(&qword_10005A798, &qword_10003FD10);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for CardModel(0);
      sub_10000EF3C(&qword_10005A6D0, type metadata accessor for CardModel);
      v62 = EnvironmentObject.init()();
      v64 = v63;
      type metadata accessor for TripAppConfig();
      sub_10000EF3C(&qword_10005A6E0, type metadata accessor for TripAppConfig);
      v65 = EnvironmentObject.init()();
      v67 = v66;
      v68 = type metadata accessor for TripViewHorizontalStack();
      v69 = (v57 + v68[5]);
      *v69 = v62;
      v69[1] = v64;
      v70 = (v57 + v68[6]);
      *v70 = v65;
      v70[1] = v67;
      v71 = v57 + v68[7];
      LOBYTE(v209) = 0;
      State.init(wrappedValue:)();
      v72 = *(&v210 + 1);
      *v71 = v210;
      *(v71 + 1) = v72;
      *(v57 + v68[8]) = 1;
      v73 = (v57 + v68[9]);
      v209 = COERCE_DOUBLE(sub_10000E5EC(_swiftEmptyArrayStorage));
      sub_100003090(&qword_10005A6F8, "fS");
      State.init(wrappedValue:)();
      v74 = *(&v210 + 1);
      *v73 = v210;
      v73[1] = v74;
      v75 = v68[10];
      v209 = 0.0;
      State.init(wrappedValue:)();
      *(v57 + v75) = v210;
      v76 = (v57 + v68[11]);
      v209 = 0.0;
      State.init(wrappedValue:)();
      v77 = *(&v210 + 1);
      *v76 = v210;
      v76[1] = v77;
      v78 = v57 + v68[12];
      LOBYTE(v209) = 1;
      State.init(wrappedValue:)();
      v79 = *(&v210 + 1);
      *v78 = v210;
      *(v78 + 1) = v79;
      v80 = *(v60 + *(v203 + 24) + 8);
      v81 = static ObservableObject.environmentStore.getter();
      v82 = v206;
      v83 = (v57 + *(v205 + 36));
      *v83 = v81;
      v83[1] = v80;
      v84 = &qword_10005AC78;
      v85 = &qword_100040420;
      sub_100008DD0(v57, v82, &qword_10005AC78, &qword_100040420);
      swift_storeEnumTagMultiPayload();
      sub_10000EB20();
      sub_10000EBDC(&qword_10005ACF0, &qword_10005AC68, &qword_100040410, sub_10000EA3C);

      _ConditionalContent<>.init(storage:)();
      v86 = v57;
      return sub_1000038DC(v86, v84, v85);
    }

    v60 = v1;
    v61 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v61)
    {
      goto LABEL_6;
    }

    sub_10000C440(v50);
    v87 = &v50[*(v45 + 20)];
    v88 = *(v87 + 1);
    *&v210 = *v87;
    *(&v210 + 1) = v88;
    v211 = *(v87 + 1);
    sub_100003090(&qword_10005A7E0, &unk_1000409A0);
    Binding.wrappedValue.getter();
    static CAFUIAppLayoutConfiguration.appStyle(size:)();
    sub_1000086B4(v50);
    v89 = (*(v41 + 88))(v44, v40);
    if (v89 == enum case for CAFUIAppAppStyle.portrait(_:))
    {
      (*(v41 + 96))(v44, v40);
      v90 = v202;
      v91 = v191;
      v92 = v44;
      v93 = v201;
      (*(v202 + 32))(v191, v92, v201);
      v94 = v175;
      (*(v90 + 16))(v175, v91, v93);
      v95 = (*(v90 + 88))(v94, v93);
      v96 = v189;
      if (v95 == enum case for CAFUIAppSubStyle.standard(_:))
      {
        goto LABEL_17;
      }

      if (v95 == enum case for CAFUIAppSubStyle.narrow(_:))
      {
        KeyPath = swift_getKeyPath();
        v98 = v168;
        *v168 = KeyPath;
        sub_100003090(&qword_10005A798, &qword_10003FD10);
        swift_storeEnumTagMultiPayload();
        type metadata accessor for CardModel(0);
        sub_10000EF3C(&qword_10005A6D0, type metadata accessor for CardModel);
        v99 = EnvironmentObject.init()();
        v101 = v100;
        v102 = type metadata accessor for TripViewPortraitNarrow();
        v103 = (v98 + v102[5]);
        *v103 = v99;
        v103[1] = v101;
        v104 = v98 + v102[6];
        LOBYTE(v209) = 0;
        State.init(wrappedValue:)();
        v105 = *(&v210 + 1);
        *v104 = v210;
        *(v104 + 8) = v105;
        *(v98 + v102[7]) = 1;
        v106 = (v98 + v102[8]);
        v209 = COERCE_DOUBLE(sub_10000E5EC(_swiftEmptyArrayStorage));
        sub_100003090(&qword_10005A6F8, "fS");
        State.init(wrappedValue:)();
        v107 = *(&v210 + 1);
        *v106 = v210;
        v106[1] = v107;
        v108 = v102[9];
        v209 = 0.0;
        State.init(wrappedValue:)();
        *(v98 + v108) = v210;
        v109 = (v98 + v102[10]);
        v209 = 0.0;
        State.init(wrappedValue:)();
        v110 = *(&v210 + 1);
        *v109 = v210;
        v109[1] = v110;
        v111 = *(v60 + *(v203 + 24) + 8);
        v112 = static ObservableObject.environmentStore.getter();
        v113 = (v98 + *(v186 + 36));
        *v113 = v112;
        v113[1] = v111;
        v114 = &qword_1000403B0;
        sub_100008DD0(v98, v183, &qword_10005AC08, &qword_1000403B0);
        swift_storeEnumTagMultiPayload();
        sub_10000E718();
        sub_10000E838();

        v115 = v96;
        v116 = v185;
        _ConditionalContent<>.init(storage:)();
        sub_100008DD0(v116, v188, &qword_10005AC20, &qword_1000403C8);
        swift_storeEnumTagMultiPayload();
        sub_10000E8F4();
        _ConditionalContent<>.init(storage:)();
        v117 = v116;
        v96 = v115;
        sub_1000038DC(v117, &qword_10005AC20, &qword_1000403C8);
        v118 = v98;
        v119 = &qword_10005AC08;
LABEL_18:
        sub_1000038DC(v118, v119, v114);
        sub_100008DD0(v96, v195, &qword_10005AC30, &qword_1000403D8);
        swift_storeEnumTagMultiPayload();
        sub_10000EBDC(&qword_10005ACB8, &qword_10005AC60, &qword_100040408, sub_10000E980);
        sub_10000EBDC(&qword_10005ACD0, &qword_10005AC30, &qword_1000403D8, sub_10000E8F4);
        v164 = v197;
        _ConditionalContent<>.init(storage:)();
        sub_100008DD0(v164, v200, &qword_10005AC48, &qword_1000403F0);
        swift_storeEnumTagMultiPayload();
        sub_10000EA3C();
        v144 = v194;
        _ConditionalContent<>.init(storage:)();
        sub_1000038DC(v164, &qword_10005AC48, &qword_1000403F0);
        sub_1000038DC(v96, &qword_10005AC30, &qword_1000403D8);
        v145 = &v213;
        goto LABEL_19;
      }

      if (v95 == enum case for CAFUIAppSubStyle.wide(_:))
      {
LABEL_17:
        v146 = v169;
        sub_10000C440(v169);
        v147 = v146 + *(v45 + 20);
        v148 = *(v147 + 8);
        *&v210 = *v147;
        *(&v210 + 1) = v148;
        v211 = *(v147 + 16);
        Binding.wrappedValue.getter();
        v149 = 2 * (v209 >= 300.0);
        sub_1000086B4(v146);
        v150 = swift_getKeyPath();
        v151 = v172;
        *v172 = v150;
        sub_100003090(&qword_10005A798, &qword_10003FD10);
        swift_storeEnumTagMultiPayload();
        type metadata accessor for CardModel(0);
        sub_10000EF3C(&qword_10005A6D0, type metadata accessor for CardModel);
        v152 = EnvironmentObject.init()();
        v153 = v171;
        v154 = (v151 + *(v171 + 20));
        *v154 = v152;
        v154[1] = v155;
        v156 = v151 + *(v153 + 24);
        LOBYTE(v209) = 0;
        State.init(wrappedValue:)();
        v157 = *(&v210 + 1);
        *v156 = v210;
        *(v156 + 8) = v157;
        *(v151 + *(v153 + 28)) = v149;
        v158 = *(v60 + *(v203 + 24) + 8);
        v159 = static ObservableObject.environmentStore.getter();
        v160 = v170;
        sub_10000ED88(v151, v170, type metadata accessor for TripViewStandard);
        v161 = (v160 + *(v181 + 36));
        *v161 = v159;
        v161[1] = v158;
        v162 = v173;
        sub_10000EC60(v160, v173);
        v114 = &qword_1000403D0;
        sub_100008DD0(v162, v183, &qword_10005AC28, &qword_1000403D0);
        swift_storeEnumTagMultiPayload();
        sub_10000E718();
        sub_10000E838();

        v163 = v185;
        _ConditionalContent<>.init(storage:)();
        sub_100008DD0(v163, v188, &qword_10005AC20, &qword_1000403C8);
        swift_storeEnumTagMultiPayload();
        sub_10000E8F4();
        _ConditionalContent<>.init(storage:)();
        sub_1000038DC(v163, &qword_10005AC20, &qword_1000403C8);
        v118 = v162;
        v119 = &qword_10005AC28;
        goto LABEL_18;
      }
    }

    else if (v89 == enum case for CAFUIAppAppStyle.landscape(_:))
    {
      (*(v41 + 96))(v44, v40);
      v121 = v201;
      v120 = v202;
      v122 = v190;
      (*(v202 + 32))(v190, v44, v201);
      v123 = v174;
      (*(v120 + 16))(v174, v122, v121);
      v124 = (*(v120 + 88))(v123, v121);
      if (v124 == enum case for CAFUIAppSubStyle.standard(_:) || v124 == enum case for CAFUIAppSubStyle.narrow(_:) || v124 == enum case for CAFUIAppSubStyle.wide(_:))
      {
        v125 = swift_getKeyPath();
        v126 = v176;
        *v176 = v125;
        sub_100003090(&qword_10005A798, &qword_10003FD10);
        swift_storeEnumTagMultiPayload();
        type metadata accessor for CardModel(0);
        sub_10000EF3C(&qword_10005A6D0, type metadata accessor for CardModel);
        v127 = EnvironmentObject.init()();
        v129 = v128;
        v130 = type metadata accessor for TripViewLandscape();
        v131 = (v126 + v130[5]);
        *v131 = v127;
        v131[1] = v129;
        v132 = v126 + v130[6];
        LOBYTE(v209) = 0;
        State.init(wrappedValue:)();
        v133 = *(&v210 + 1);
        *v132 = v210;
        *(v132 + 8) = v133;
        *(v126 + v130[7]) = 3;
        v134 = (v126 + v130[8]);
        v209 = COERCE_DOUBLE(sub_10000E5EC(_swiftEmptyArrayStorage));
        sub_100003090(&qword_10005A6F8, "fS");
        State.init(wrappedValue:)();
        v135 = *(&v210 + 1);
        *v134 = v210;
        v134[1] = v135;
        v136 = v130[9];
        v209 = 0.0;
        State.init(wrappedValue:)();
        *(v126 + v136) = v210;
        v137 = (v126 + v130[10]);
        v209 = 0.0;
        State.init(wrappedValue:)();
        v138 = *(&v210 + 1);
        *v137 = v210;
        v137[1] = v138;
        v139 = *(v58 + *(v203 + 24) + 8);
        v140 = static ObservableObject.environmentStore.getter();
        v141 = (v126 + *(v177 + 36));
        *v141 = v140;
        v141[1] = v139;
        sub_100008DD0(v126, v179, &qword_10005AC58, &qword_100040400);
        swift_storeEnumTagMultiPayload();
        sub_10000E980();

        v142 = v180;
        _ConditionalContent<>.init(storage:)();
        sub_1000038DC(v126, &qword_10005AC58, &qword_100040400);
        sub_100008DD0(v142, v195, &qword_10005AC60, &qword_100040408);
        swift_storeEnumTagMultiPayload();
        sub_10000EBDC(&qword_10005ACB8, &qword_10005AC60, &qword_100040408, sub_10000E980);
        sub_10000EBDC(&qword_10005ACD0, &qword_10005AC30, &qword_1000403D8, sub_10000E8F4);
        v143 = v197;
        _ConditionalContent<>.init(storage:)();
        sub_100008DD0(v143, v200, &qword_10005AC48, &qword_1000403F0);
        swift_storeEnumTagMultiPayload();
        sub_10000EA3C();
        v144 = v194;
        _ConditionalContent<>.init(storage:)();
        sub_1000038DC(v143, &qword_10005AC48, &qword_1000403F0);
        sub_1000038DC(v142, &qword_10005AC60, &qword_100040408);
        v93 = v201;
        v145 = &v212;
LABEL_19:
        (*(v202 + 8))(*(v145 - 32), v93);
        v84 = &qword_10005AC68;
        v85 = &qword_100040410;
        sub_100008DD0(v144, v206, &qword_10005AC68, &qword_100040410);
        swift_storeEnumTagMultiPayload();
        sub_10000EB20();
        sub_10000EBDC(&qword_10005ACF0, &qword_10005AC68, &qword_100040410, sub_10000EA3C);
        _ConditionalContent<>.init(storage:)();
        v86 = v144;
        return sub_1000038DC(v86, v84, v85);
      }
    }
  }

  else
  {
    v166 = v59[1];
    type metadata accessor for TripAppConfig();
    sub_10000EF3C(&qword_10005A6E0, type metadata accessor for TripAppConfig);
    EnvironmentObject.error()();
    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10000E078(uint64_t a1)
{
  v2 = type metadata accessor for LayoutConfiguration(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v10 - v7;
  sub_10000ECD0(a1, &v10 - v7);
  sub_10000ECD0(v8, v6);
  sub_10000ED34();
  EnvironmentValues.subscript.setter();
  return sub_1000086B4(v8);
}

uint64_t sub_10000E148@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_10000E1C8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

unint64_t sub_10000E288(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10000E364(a1, v4);
}

unint64_t sub_10000E2CC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for CAUAppUIConfiguration.Element();
  sub_10000EF3C(&qword_10005AD08, &type metadata accessor for CAUAppUIConfiguration.Element);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_10000E42C(a1, v5);
}

unint64_t sub_10000E364(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100003290(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10000323C(v8);
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

unint64_t sub_10000E42C(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = type metadata accessor for CAUAppUIConfiguration.Element();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_10000EF3C(&qword_10005AD10, &type metadata accessor for CAUAppUIConfiguration.Element);
      v16 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_10000E5EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003090(&qword_10005A468, &qword_10003FB90);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100008DD0(v4, v13, &unk_10005A520, &unk_10003FC28);
      result = sub_10000E288(v13);
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
      *(v3[7] + 16 * result) = v15;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

unint64_t sub_10000E718()
{
  result = qword_10005AC80;
  if (!qword_10005AC80)
  {
    sub_1000036BC(&qword_10005AC28, &qword_1000403D0);
    sub_10000EF3C(&qword_10005AC88, type metadata accessor for TripViewStandard);
    sub_10000E7D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005AC80);
  }

  return result;
}

unint64_t sub_10000E7D4()
{
  result = qword_10005AC90;
  if (!qword_10005AC90)
  {
    sub_1000036BC(&qword_10005AC98, &qword_100040498);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005AC90);
  }

  return result;
}

unint64_t sub_10000E838()
{
  result = qword_10005ACA0;
  if (!qword_10005ACA0)
  {
    sub_1000036BC(&qword_10005AC08, &qword_1000403B0);
    sub_10000EF3C(&qword_10005ACA8, type metadata accessor for TripViewPortraitNarrow);
    sub_10000E7D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005ACA0);
  }

  return result;
}

unint64_t sub_10000E8F4()
{
  result = qword_10005ACB0;
  if (!qword_10005ACB0)
  {
    sub_1000036BC(&qword_10005AC20, &qword_1000403C8);
    sub_10000E718();
    sub_10000E838();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005ACB0);
  }

  return result;
}

unint64_t sub_10000E980()
{
  result = qword_10005ACC0;
  if (!qword_10005ACC0)
  {
    sub_1000036BC(&qword_10005AC58, &qword_100040400);
    sub_10000EF3C(&qword_10005ACC8, type metadata accessor for TripViewLandscape);
    sub_10000E7D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005ACC0);
  }

  return result;
}

unint64_t sub_10000EA3C()
{
  result = qword_10005ACD8;
  if (!qword_10005ACD8)
  {
    sub_1000036BC(&qword_10005AC48, &qword_1000403F0);
    sub_10000EBDC(&qword_10005ACB8, &qword_10005AC60, &qword_100040408, sub_10000E980);
    sub_10000EBDC(&qword_10005ACD0, &qword_10005AC30, &qword_1000403D8, sub_10000E8F4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005ACD8);
  }

  return result;
}

unint64_t sub_10000EB20()
{
  result = qword_10005ACE0;
  if (!qword_10005ACE0)
  {
    sub_1000036BC(&qword_10005AC78, &qword_100040420);
    sub_10000EF3C(&qword_10005ACE8, type metadata accessor for TripViewHorizontalStack);
    sub_10000E7D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005ACE0);
  }

  return result;
}

uint64_t sub_10000EBDC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000036BC(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000EC60(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003090(&qword_10005AC28, &qword_1000403D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000ECD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LayoutConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10000ED34()
{
  result = qword_10005ACF8;
  if (!qword_10005ACF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005ACF8);
  }

  return result;
}

uint64_t sub_10000ED88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10000EDF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003090(&qword_10005AD00, &qword_1000404A0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100008DD0(v4, v13, &qword_10005D480, &qword_100040050);
      result = sub_10000E288(v13);
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
      result = sub_10000EF2C(&v15, (v3[7] + 32 * result));
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

_OWORD *sub_10000EF2C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10000EF3C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10000EF88()
{
  result = qword_10005AD18;
  if (!qword_10005AD18)
  {
    sub_1000036BC(&qword_10005AD20, &qword_1000404A8);
    sub_10000EB20();
    sub_10000EBDC(&qword_10005ACF0, &qword_10005AC68, &qword_100040410, sub_10000EA3C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005AD18);
  }

  return result;
}

void sub_10000F09C()
{
  v1 = v0;
  v2 = type metadata accessor for CAFUIAppPresentationMode();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TripsContentView();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TripViewController();
  v57.receiver = v1;
  v57.super_class = v11;
  objc_msgSendSuper2(&v57, "viewDidLoad");
  (*(v3 + 16))(v6, v1 + OBJC_IVAR____TtC4Trip18TripViewController_presentationMode, v2);
  sub_10000F8F4(v6, v10);
  v12 = objc_allocWithZone(sub_100003090(&qword_10005AD68, "2j"));
  v13 = UIHostingController.init(rootView:)();
  v14 = [v13 view];
  if (!v14)
  {
    __break(1u);
    goto LABEL_15;
  }

  v15 = v14;
  v16 = [objc_opt_self() clearColor];
  [v15 setBackgroundColor:v16];

  [v1 addChildViewController:v13];
  v17 = [v13 view];
  if (!v17)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v18 = v17;
  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];

  v19 = [v1 view];
  if (!v19)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v20 = v19;
  v21 = [v13 view];
  if (!v21)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22 = v21;
  [v20 addSubview:v21];

  [v13 didMoveToParentViewController:v1];
  sub_100003090(&qword_10005D490, &unk_1000404E0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1000404B0;
  v24 = [v13 view];
  if (!v24)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v25 = v24;
  v26 = [v24 topAnchor];

  v27 = [v1 view];
  if (!v27)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v28 = v27;
  v29 = [v27 safeAreaLayoutGuide];

  v30 = [v29 topAnchor];
  v31 = [v26 constraintEqualToAnchor:v30];

  *(v23 + 32) = v31;
  v32 = [v13 view];
  if (!v32)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v33 = v32;
  v34 = [v32 bottomAnchor];

  v35 = [v1 view];
  if (!v35)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v36 = v35;
  v37 = [v35 safeAreaLayoutGuide];

  v38 = [v37 bottomAnchor];
  v39 = [v34 constraintEqualToAnchor:v38];

  *(v23 + 40) = v39;
  v40 = [v13 view];
  if (!v40)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v41 = v40;
  v42 = [v40 leadingAnchor];

  v43 = [v1 view];
  if (!v43)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v44 = v43;
  v45 = [v43 safeAreaLayoutGuide];

  v46 = [v45 leadingAnchor];
  v47 = [v42 constraintEqualToAnchor:v46];

  *(v23 + 48) = v47;
  v48 = [v13 view];

  if (!v48)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v49 = [v48 trailingAnchor];

  v50 = [v1 view];
  if (v50)
  {
    v51 = v50;
    v52 = objc_opt_self();
    v53 = [v51 safeAreaLayoutGuide];

    v54 = [v53 trailingAnchor];
    v55 = [v49 constraintEqualToAnchor:v54];

    *(v23 + 56) = v55;
    sub_10000F8A8();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v52 activateConstraints:isa];

    CAFSignpostEmit_Rendered();
    return;
  }

LABEL_25:
  __break(1u);
}

id sub_10000F720()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TripViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for TripViewController()
{
  result = qword_10005AD58;
  if (!qword_10005AD58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000F818()
{
  result = type metadata accessor for CAFUIAppPresentationMode();
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

unint64_t sub_10000F8A8()
{
  result = qword_10005AD70;
  if (!qword_10005AD70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10005AD70);
  }

  return result;
}

double sub_10000F8F4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_10000FAB8;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  State.init(wrappedValue:)();
  *(a2 + 48) = v8;
  *(a2 + 56) = *(&v8 + 1);
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_10001F2E0(_swiftEmptyArrayStorage);
  }

  sub_100003090(&qword_10005AD78, &unk_1000404F0);
  State.init(wrappedValue:)();
  *(a2 + 64) = v8;
  sub_100034CE8(0xD000000000000020, 0x8000000100042B50, 0xD000000000000017, 0x8000000100042B30, 25);
  v4 = *(type metadata accessor for TripsContentView() + 32);
  v5 = type metadata accessor for CAFUIAppPresentationMode();
  v6 = *(v5 - 8);
  (*(v6 + 16))(a2 + v4, a1, v5);
  type metadata accessor for CGSize(0);
  State.init(wrappedValue:)();
  (*(v6 + 8))(a1, v5);
  result = *&v8;
  *(a2 + 24) = v8;
  *(a2 + 40) = v9;
  return result;
}

uint64_t sub_10000FAB8()
{
  if (qword_10005A398 != -1)
  {
    swift_once();
  }
}

uint64_t sub_10000FB14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = type metadata accessor for TripsContentView();
  v4 = *(v51 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v51);
  v6 = type metadata accessor for CAFUIAppPresentationMode();
  v50 = *(v6 - 8);
  v7 = *(v50 + 64);
  __chkstk_darwin(v6);
  v52 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003090(&qword_10005AE98, &qword_1000405B0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = (&v43 - v12);
  v14 = *(a1 + 56);
  LOBYTE(v53) = *(a1 + 48);
  v54 = v14;
  sub_100003090(&qword_10005A7A8, &qword_10003FD20);
  State.wrappedValue.getter();
  if (v57 != 1)
  {
    v41 = 1;
    return (*(v10 + 56))(a2, v41, 1, v9);
  }

  v47 = v4;
  v48 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v9;
  v16 = *a1;
  v15 = *(a1 + 8);
  v17 = *(a1 + 16);
  type metadata accessor for TripCAFManager();
  sub_100011D54(&qword_10005ADF0, type metadata accessor for TripCAFManager);
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v18 = v53;
  if (!v53)
  {
LABEL_7:
    v41 = 1;
    v9 = v49;
    return (*(v10 + 56))(a2, v41, 1, v9);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!v53)
  {

    goto LABEL_7;
  }

  v45 = v53;
  *v13 = swift_getKeyPath();
  sub_100003090(&qword_10005A798, &qword_10003FD10);
  swift_storeEnumTagMultiPayload();
  v19 = type metadata accessor for TripsTabView();
  v20 = *(v19 + 20);
  v46 = a2;
  v21 = (v13 + v20);
  type metadata accessor for TripModel();
  sub_100011D54(&qword_10005AEA0, type metadata accessor for TripModel);
  v44 = v18;
  *v21 = ObservedObject.init(wrappedValue:)();
  v21[1] = v22;
  a2 = v46;
  v23 = v13 + *(v19 + 24);
  *v23 = sub_100037AE0;
  *(v23 + 1) = 0;
  v23[16] = 0;
  v24 = v52;
  (*(v50 + 16))(v52, a1 + *(v51 + 32), v6);
  v25 = *(a1 + 40);
  v57 = *(a1 + 24);
  v58 = v25;
  sub_100003090(&qword_10005AEA8, &qword_100040678);
  State.projectedValue.getter();
  v26 = v53;
  v27 = v54;
  v28 = v55;
  v29 = v56;
  v30 = (v13 + *(sub_100003090(&qword_10005AEB0, &unk_100040680) + 36));
  v31 = sub_100003090(&qword_10005A828, &qword_100040A30);
  sub_10003B680(v24, v26, v27, v30 + *(v31 + 28), v28, v29);
  *v30 = swift_getKeyPath();
  type metadata accessor for TripAppConfig();
  sub_100011D54(&qword_10005A6E0, type metadata accessor for TripAppConfig);
  v32 = static ObservableObject.environmentStore.getter();
  v33 = (v13 + *(sub_100003090(&qword_10005AEB8, &qword_100040690) + 36));
  v34 = v45;
  *v33 = v32;
  v33[1] = v34;
  v35 = v48;
  sub_10001111C(a1, v48);
  v36 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v37 = swift_allocObject();
  sub_10001118C(v35, v37 + v36);
  *(v37 + ((v5 + v36 + 7) & 0xFFFFFFFFFFFFFFF8)) = v44;
  v38 = static Alignment.center.getter();
  v9 = v49;
  v39 = (v13 + *(v49 + 36));
  *v39 = sub_1000115AC;
  v39[1] = v37;
  v39[2] = v38;
  v39[3] = v40;
  sub_100011658(v13, a2);
  v41 = 0;
  return (*(v10 + 56))(a2, v41, 1, v9);
}

id sub_1000100EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v19 = a1;
  v20 = a3;
  v6 = type metadata accessor for GeometryProxy();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = type metadata accessor for TripsContentView();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = static Color.clear.getter();
  sub_10001111C(a2, v12);
  (*(v7 + 16))(&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v19, v6);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = (v11 + *(v7 + 80) + v14) & ~*(v7 + 80);
  v16 = swift_allocObject();
  sub_10001118C(v12, v16 + v14);
  (*(v7 + 32))(v16 + v15, &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v17 = v20;
  *(v16 + ((v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v20;
  *a4 = v13;
  a4[1] = sub_10001186C;
  a4[2] = v16;
  a4[3] = 0;
  a4[4] = 0;

  return v17;
}

void sub_1000102F8(uint64_t a1)
{
  GeometryProxy.size.getter();
  v2 = *(a1 + 24);
  v3 = *(a1 + 40);
  sub_100003090(&qword_10005AEA8, &qword_100040678);
  State.wrappedValue.setter();
  sub_10001CE40();
}

uint64_t sub_100010374()
{
  v1 = v0;
  v2 = type metadata accessor for TripsContentView();
  v17[0] = *(v2 - 8);
  v3 = *(v17[0] + 64);
  __chkstk_darwin(v2 - 8);
  v4 = sub_100003090(&qword_10005AE48, &qword_100040570);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v17 - v7;
  v9 = *v0;
  v10 = *(v1 + 8);
  v11 = *(v1 + 16);
  type metadata accessor for TripCAFManager();
  sub_100011D54(&qword_10005ADF0, type metadata accessor for TripCAFManager);
  StateObject.wrappedValue.getter();
  swift_beginAccess();
  sub_100003090(&qword_10005AE50, &qword_100040578);
  Published.projectedValue.getter();
  swift_endAccess();

  sub_10001111C(v1, v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v17[0] + 80) + 16) & ~*(v17[0] + 80);
  v13 = swift_allocObject();
  sub_10001118C(v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  sub_100003894(&qword_10005AE58, &qword_10005AE48, &qword_100040570);
  Publisher<>.sink(receiveValue:)();

  (*(v5 + 8))(v8, v4);
  v15 = *(v1 + 64);
  v14 = *(v1 + 72);
  v17[5] = v15;
  v17[6] = v14;

  sub_100003090(&qword_10005AE60, &qword_100040580);
  State.wrappedValue.getter();
  AnyCancellable.store(in:)();

  v17[2] = v15;
  v17[3] = v14;
  v17[1] = v17[4];
  State.wrappedValue.setter();
}

void sub_100010698(void **a1, uint64_t a2)
{
  v4 = type metadata accessor for TripsContentView();
  v36 = *(v4 - 8);
  v5 = *(v36 + 64);
  __chkstk_darwin(v4 - 8);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003090(&qword_10005AE68, &qword_100040588);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v32 - v9;
  v11 = sub_100003090(&qword_10005AE70, &qword_100040590);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v32 - v14;
  v16 = sub_100003090(&qword_10005AE78, &qword_100040598);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16);
  v21 = &v32 - v20;
  v22 = *a1;
  if (*a1)
  {
    v33 = v18;
    v34 = v19;
    swift_beginAccess();
    v35 = v22;
    sub_100003090(&qword_10005B5F0, &unk_1000405A0);
    Published.projectedValue.getter();
    swift_endAccess();
    sub_100008AD8();
    v23 = static OS_dispatch_queue.main.getter();
    v32 = v5;
    v24 = a2;
    v25 = v23;
    v41 = v23;
    v26 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    (*(*(v26 - 8) + 56))(v10, 1, 1, v26);
    sub_100003894(&qword_10005AE80, &qword_10005AE70, &qword_100040590);
    sub_100011D54(&qword_10005AE88, sub_100008AD8);
    Publisher.receive<A>(on:options:)();
    sub_100011264(v10);

    (*(v12 + 8))(v15, v11);
    sub_10001111C(v24, v6);
    v27 = (*(v36 + 80) + 16) & ~*(v36 + 80);
    v28 = swift_allocObject();
    sub_10001118C(v6, v28 + v27);
    sub_100003894(&qword_10005AE90, &qword_10005AE78, &qword_100040598);
    v29 = v33;
    Publisher<>.sink(receiveValue:)();

    (*(v34 + 8))(v21, v29);
    v31 = *(v24 + 72);
    v41 = *(v24 + 64);
    v30 = v41;
    v42 = v31;

    sub_100003090(&qword_10005AE60, &qword_100040580);
    State.wrappedValue.getter();
    AnyCancellable.store(in:)();

    v38 = v30;
    v39 = v31;
    v37 = v40;
    State.wrappedValue.setter();
  }
}

uint64_t sub_100010B50(void *a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v5 = *(a2 + 56);
  v3 = *a1 != 0;
  sub_100003090(&qword_10005A7A8, &qword_10003FD20);
  return State.wrappedValue.setter();
}

uint64_t sub_100010BB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_10000FB14(v2, a2);
  sub_10001111C(v2, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_10001118C(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  result = sub_100003090(&qword_10005AE40, &qword_100040568);
  v9 = (a2 + *(result + 36));
  *v9 = sub_1000111F0;
  v9[1] = v7;
  v9[2] = 0;
  v9[3] = 0;
  return result;
}

uint64_t type metadata accessor for TripsContentView()
{
  result = qword_10005ADD8;
  if (!qword_10005ADD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100010D30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 64);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for CAFUIAppPresentationMode();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100010DF0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 64) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for CAFUIAppPresentationMode();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100010E94()
{
  sub_100010F60();
  if (v0 <= 0x3F)
  {
    sub_100010FF4();
    if (v1 <= 0x3F)
    {
      sub_10001104C();
      if (v2 <= 0x3F)
      {
        sub_10001109C();
        if (v3 <= 0x3F)
        {
          type metadata accessor for CAFUIAppPresentationMode();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100010F60()
{
  if (!qword_10005ADE8)
  {
    type metadata accessor for TripCAFManager();
    sub_100011D54(&qword_10005ADF0, type metadata accessor for TripCAFManager);
    v0 = type metadata accessor for StateObject();
    if (!v1)
    {
      atomic_store(v0, &qword_10005ADE8);
    }
  }
}

void sub_100010FF4()
{
  if (!qword_10005ADF8)
  {
    type metadata accessor for CGSize(255);
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_10005ADF8);
    }
  }
}

void sub_10001104C()
{
  if (!qword_10005A6E8)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_10005A6E8);
    }
  }
}

void sub_10001109C()
{
  if (!qword_10005AE00)
  {
    sub_1000036BC(&qword_10005AD78, &unk_1000404F0);
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_10005AE00);
    }
  }
}

uint64_t sub_10001111C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TripsContentView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001118C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TripsContentView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000111F0()
{
  v1 = *(type metadata accessor for TripsContentView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_100010374();
}

uint64_t sub_100011264(uint64_t a1)
{
  v2 = sub_100003090(&qword_10005AE68, &qword_100040588);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000112CC()
{
  v1 = (type metadata accessor for TripsContentView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3);
  v6 = *(v0 + v3 + 8);
  v7 = *(v0 + v3 + 16);
  sub_100011184();
  v8 = *(v0 + v3 + 40);

  v9 = *(v0 + v3 + 56);

  v10 = *(v0 + v3 + 64);

  v11 = *(v0 + v3 + 72);

  v12 = v1[10];
  v13 = type metadata accessor for CAFUIAppPresentationMode();
  (*(*(v13 - 8) + 8))(v0 + v3 + v12, v13);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000113F0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for TripsContentView() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_10001148C()
{
  v1 = (type metadata accessor for TripsContentView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + v3);
  v6 = *(v0 + v3);
  v7 = *(v0 + v3 + 8);
  v8 = *(v0 + v3 + 16);
  sub_100011184();
  v9 = *(v5 + 5);

  v10 = *(v5 + 7);

  v11 = *(v5 + 8);

  v12 = *(v5 + 9);

  v13 = v1[10];
  v14 = type metadata accessor for CAFUIAppPresentationMode();
  (*(*(v14 - 8) + 8))(&v5[v13], v14);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

id sub_1000115AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for TripsContentView() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1000100EC(a1, v2 + v6, v7, a2);
}

uint64_t sub_100011658(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003090(&qword_10005AE98, &qword_1000405B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000116C8()
{
  v1 = (type metadata accessor for TripsContentView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for GeometryProxy();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = v2 | v7;
  v10 = (*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v0 + v3);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v11 + 16);
  sub_100011184();
  v15 = v11[5];

  v16 = v11[7];

  v17 = v11[8];

  v18 = v11[9];

  v19 = v1[10];
  v20 = type metadata accessor for CAFUIAppPresentationMode();
  (*(*(v20 - 8) + 8))(v11 + v19, v20);
  (*(v6 + 8))(v0 + v8, v5);

  return _swift_deallocObject(v0, v10 + 8, v9 | 7);
}

void sub_10001186C()
{
  v1 = *(type metadata accessor for TripsContentView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for GeometryProxy() - 8);
  v5 = *(v0 + ((*(v4 + 64) + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1000102F8(v0 + v2);
}

unint64_t sub_100011968()
{
  result = qword_10005AEC0;
  if (!qword_10005AEC0)
  {
    sub_1000036BC(&qword_10005AE40, &qword_100040568);
    sub_1000119F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005AEC0);
  }

  return result;
}

unint64_t sub_1000119F4()
{
  result = qword_10005AEC8;
  if (!qword_10005AEC8)
  {
    sub_1000036BC(&qword_10005AED0, &qword_100040698);
    sub_100011A78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005AEC8);
  }

  return result;
}

unint64_t sub_100011A78()
{
  result = qword_10005AED8;
  if (!qword_10005AED8)
  {
    sub_1000036BC(&qword_10005AEE0, &qword_1000406A0);
    sub_100011AFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005AED8);
  }

  return result;
}

unint64_t sub_100011AFC()
{
  result = qword_10005AEE8;
  if (!qword_10005AEE8)
  {
    sub_1000036BC(&qword_10005AE98, &qword_1000405B0);
    sub_100011BB4();
    sub_100003894(&qword_10005AF20, &qword_10005AF28, &unk_1000406B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005AEE8);
  }

  return result;
}

unint64_t sub_100011BB4()
{
  result = qword_10005AEF0;
  if (!qword_10005AEF0)
  {
    sub_1000036BC(&qword_10005AEB8, &qword_100040690);
    sub_100011C6C();
    sub_100003894(&qword_10005AF10, &qword_10005AF18, &qword_1000406A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005AEF0);
  }

  return result;
}

unint64_t sub_100011C6C()
{
  result = qword_10005AEF8;
  if (!qword_10005AEF8)
  {
    sub_1000036BC(&qword_10005AEB0, &unk_100040680);
    sub_100011D54(&qword_10005AF00, type metadata accessor for TripsTabView);
    sub_100003894(&qword_10005AF08, &qword_10005A828, &qword_100040A30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005AEF8);
  }

  return result;
}

uint64_t sub_100011D54(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_100011DD4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TripWindowManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_100011E3C(uint64_t a1, char *a2)
{
  v5 = type metadata accessor for CAFUIAppPresentationMode();
  v6 = *(v5 - 8);
  v7 = v6[8];
  __chkstk_darwin(v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(UIWindow) initWithWindowScene:a1];
  v11 = OBJC_IVAR____TtC4Trip17TripWindowManager_window;
  *&v2[OBJC_IVAR____TtC4Trip17TripWindowManager_window] = v10;
  [v10 setAutoresizesSubviews:1];
  [*&v2[v11] setHidden:0];
  [*&v2[v11] makeKeyAndVisible];
  v12 = type metadata accessor for TripWindowManager();
  v24.receiver = v2;
  v24.super_class = v12;
  v13 = objc_msgSendSuper2(&v24, "init");
  v14 = *&v13[OBJC_IVAR____TtC4Trip17TripWindowManager_window];
  v15 = v6[2];
  v15(v9, a2, v5);
  v16 = type metadata accessor for TripViewController();
  v17 = objc_allocWithZone(v16);
  v15(&v17[OBJC_IVAR____TtC4Trip18TripViewController_presentationMode], v9, v5);
  v23.receiver = v17;
  v23.super_class = v16;
  v18 = v13;
  v19 = v14;
  v20 = objc_msgSendSuper2(&v23, "initWithNibName:bundle:", 0, 0);
  v21 = v6[1];
  v21(v9, v5);
  [v19 setRootViewController:v20];

  v21(a2, v5);
  return v18;
}

uint64_t sub_10001206C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100003090(&qword_10005A650, &unk_10003FC50);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10001213C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100003090(&qword_10005A650, &unk_10003FC50);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for TripActionButton()
{
  result = qword_10005AFB8;
  if (!qword_10005AFB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100012238()
{
  sub_1000122D4();
  if (v0 <= 0x3F)
  {
    sub_100003DC4();
    if (v1 <= 0x3F)
    {
      sub_10000A460();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000122D4()
{
  if (!qword_10005AFC8)
  {
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &qword_10005AFC8);
    }
  }
}

uint64_t sub_100012340@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003090(&qword_10005A798, &qword_10003FD10);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v16 - v10);
  v12 = type metadata accessor for TripActionButton();
  sub_1000133E0(v1 + *(v12 + 20), v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_100013450(v11, a1, type metadata accessor for LayoutConfiguration);
  }

  v14 = *v11;
  static os_log_type_t.fault.getter();
  v15 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_100012514@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v26 = a1;
  v25 = type metadata accessor for PlainButtonStyle();
  v3 = *(v25 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v25);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TripActionButton();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v10 = sub_100003090(&qword_10005B000, &unk_100040748);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v25 - v13;
  sub_100012CBC(v2, &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = swift_allocObject();
  sub_100013450(&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for TripActionButton);
  v27 = v2;
  sub_100003090(&qword_10005B008, &qword_100040758);
  sub_100012F04();
  Button.init(action:label:)();
  PlainButtonStyle.init()();
  sub_100003894(&qword_10005B078, &qword_10005B000, &unk_100040748);
  sub_100013300();
  v18 = v25;
  v17 = v26;
  View.buttonStyle<A>(_:)();
  (*(v3 + 8))(v6, v18);
  (*(v11 + 8))(v14, v10);
  v19 = *(v2 + 8);
  v20 = *(v2 + 16);
  v29 = *v2;
  v30 = v19;
  v31 = v20;
  sub_100003090(&qword_10005B088, &qword_1000407A0);
  Binding.wrappedValue.getter();
  LOBYTE(v2) = v28;
  KeyPath = swift_getKeyPath();
  v22 = swift_allocObject();
  *(v22 + 16) = v2;
  result = sub_100003090(&qword_10005B090, &qword_1000407D8);
  v24 = (v17 + *(result + 36));
  *v24 = KeyPath;
  v24[1] = sub_1000133C0;
  v24[2] = v22;
  return result;
}

uint64_t sub_10001289C(uint64_t a1)
{
  sub_100034CE8(0xD000000000000017, 0x8000000100042BF0, 2036625250, 0xE400000000000000, 16);
  v2 = a1 + *(type metadata accessor for TripActionButton() + 24);
  v3 = *(v2 + 8);
  return (*v2)();
}

uint64_t sub_100012904@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for LayoutConfiguration(0);
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Image.ResizingMode();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Image.init(systemName:)();
  (*(v8 + 104))(v11, enum case for Image.ResizingMode.stretch(_:), v7);
  v12 = Image.resizable(capInsets:resizingMode:)();

  (*(v8 + 8))(v11, v7);
  *&v34 = v12;
  View.bold(_:)();

  v13 = a1 + *(sub_100003090(&qword_10005B060, &unk_100040780) + 36);
  *v13 = 0;
  *(v13 + 8) = 1;
  sub_100012340(v6);
  sub_100008A08(&v6[*(v3 + 32)], &v34);
  sub_1000086B4(v6);
  v14 = *(&v35 + 1);
  v15 = v36;
  sub_100008A6C(&v34, *(&v35 + 1));
  v16 = (*(v15 + 216))(v14, v15);
  KeyPath = swift_getKeyPath();
  v18 = (a1 + *(sub_100003090(&qword_10005B050, &qword_100040778) + 36));
  *v18 = KeyPath;
  v18[1] = v16;
  sub_1000085F8(&v34);
  LOBYTE(v16) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = a1 + *(sub_100003090(&qword_10005B040, &qword_100040770) + 36);
  *v27 = v16;
  *(v27 + 8) = v20;
  *(v27 + 16) = v22;
  *(v27 + 24) = v24;
  *(v27 + 32) = v26;
  *(v27 + 40) = 0;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v28 = (a1 + *(sub_100003090(&qword_10005B030, &qword_100040768) + 36));
  v29 = v35;
  *v28 = v34;
  v28[1] = v29;
  v28[2] = v36;
  v30 = [objc_opt_self() tertiarySystemBackgroundColor];
  Color.init(_:)();
  v31 = Color.opacity(_:)();

  LOBYTE(v16) = static Edge.Set.all.getter();
  v32 = a1 + *(sub_100003090(&qword_10005B020, &qword_100040760) + 36);
  *v32 = v31;
  *(v32 + 8) = v16;
  result = sub_100003090(&qword_10005B008, &qword_100040758);
  *(a1 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_100012CBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TripActionButton();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100012D20()
{
  v1 = type metadata accessor for TripActionButton();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v0 + v3);

  v6 = *(v0 + v3 + 8);

  v7 = (v0 + v3 + *(v1 + 20));
  sub_100003090(&qword_10005A798, &qword_10003FD10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for CAFUIAppPresentationMode();
    (*(*(v8 - 8) + 8))(v7, v8);
    v9 = type metadata accessor for LayoutConfiguration(0);
    v10 = (v7 + *(v9 + 20));
    v11 = *v10;

    v12 = v10[1];

    sub_1000085F8((v7 + *(v9 + 24)));
  }

  else
  {
    v13 = *v7;
  }

  v14 = *(v0 + v3 + *(v1 + 24) + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100012E9C()
{
  v1 = *(type metadata accessor for TripActionButton() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_10001289C(v2);
}

unint64_t sub_100012F04()
{
  result = qword_10005B010;
  if (!qword_10005B010)
  {
    sub_1000036BC(&qword_10005B008, &qword_100040758);
    sub_100012FBC();
    sub_100003894(&qword_10005B068, &qword_10005B070, &qword_100040798);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B010);
  }

  return result;
}

unint64_t sub_100012FBC()
{
  result = qword_10005B018;
  if (!qword_10005B018)
  {
    sub_1000036BC(&qword_10005B020, &qword_100040760);
    sub_100013074();
    sub_100003894(&qword_10005AB38, &qword_10005AB40, &qword_100040790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B018);
  }

  return result;
}

unint64_t sub_100013074()
{
  result = qword_10005B028;
  if (!qword_10005B028)
  {
    sub_1000036BC(&qword_10005B030, &qword_100040768);
    sub_100013100();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B028);
  }

  return result;
}

unint64_t sub_100013100()
{
  result = qword_10005B038;
  if (!qword_10005B038)
  {
    sub_1000036BC(&qword_10005B040, &qword_100040770);
    sub_10001318C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B038);
  }

  return result;
}

unint64_t sub_10001318C()
{
  result = qword_10005B048;
  if (!qword_10005B048)
  {
    sub_1000036BC(&qword_10005B050, &qword_100040778);
    sub_100013244();
    sub_100003894(&qword_10005AAE0, &qword_10005AAE8, &qword_1000402A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B048);
  }

  return result;
}

unint64_t sub_100013244()
{
  result = qword_10005B058;
  if (!qword_10005B058)
  {
    sub_1000036BC(&qword_10005B060, &unk_100040780);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B058);
  }

  return result;
}

unint64_t sub_100013300()
{
  result = qword_10005B080;
  if (!qword_10005B080)
  {
    type metadata accessor for PlainButtonStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B080);
  }

  return result;
}

uint64_t sub_100013358@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000133E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003090(&qword_10005A798, &qword_10003FD10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100013450(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1000134BC()
{
  result = qword_10005B098;
  if (!qword_10005B098)
  {
    sub_1000036BC(&qword_10005B090, &qword_1000407D8);
    sub_1000036BC(&qword_10005B000, &unk_100040748);
    type metadata accessor for PlainButtonStyle();
    sub_100003894(&qword_10005B078, &qword_10005B000, &unk_100040748);
    sub_100013300();
    swift_getOpaqueTypeConformance2();
    sub_100003894(&qword_10005B0A0, &qword_10005B0A8, &qword_100040810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B098);
  }

  return result;
}

uint64_t sub_100013604()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

void sub_100013678()
{
  if (qword_10005A3A0 != -1)
  {
    swift_once();
  }

  v0 = qword_10005B0B0;
  sub_100014060(0, &qword_10005B200, CAFCarManager_ptr);
  sub_10001401C(&qword_10005B208, &qword_10005B200, CAFCarManager_ptr);
  v1 = v0;
  v2 = CAFObserved<>.observable.getter();

  v3 = type metadata accessor for TripCAFManager();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v6 = sub_100013D0C(v2);

  qword_10005D5A0 = v6;
}

id sub_100013770()
{
  result = [objc_allocWithZone(CAFCarManager) init];
  qword_10005B0B0 = result;
  return result;
}

uint64_t sub_1000137A4(uint64_t *a1)
{
  v1 = *a1;
  _StringGuts.grow(_:)(20);

  sub_100003090(&qword_10005B220, &qword_1000408C0);
  sub_10001401C(&qword_10005B228, &qword_10005B230, CAFCar_ptr);
  v2._countAndFlagsBits = Optional<A>.description.getter();
  String.append(_:)(v2);

  sub_100034D00(0xD000000000000012, 0x8000000100042C40, 0xD000000000000011, 0x8000000100042C60, 24);

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (v1)
    {
      sub_100014060(0, &qword_10005B230, CAFCar_ptr);
      sub_10001401C(&qword_10005B238, &qword_10005B230, CAFCar_ptr);
      v4 = CAFObserved<>.observable.getter();
      v5 = objc_allocWithZone(type metadata accessor for TripModel());
      sub_10001AAE8(v4);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    return static Published.subscript.setter();
  }

  return result;
}

uint64_t sub_100013994()
{
  v1 = OBJC_IVAR____TtC4Trip14TripCAFManager__model;
  v2 = sub_100003090(&qword_10005AE50, &qword_100040578);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC4Trip14TripCAFManager_cancellables);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v4, v5);
}

uint64_t type metadata accessor for TripCAFManager()
{
  result = qword_10005B0F8;
  if (!qword_10005B0F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100013AB0()
{
  sub_100013B5C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100013B5C()
{
  if (!qword_10005B108)
  {
    sub_1000036BC(&unk_10005B110, "Vh");
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_10005B108);
    }
  }
}

uint64_t sub_100013BCC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for TripCAFManager();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100013C0C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_100013C90(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;

  return static Published.subscript.setter();
}

uint64_t sub_100013D0C(void *a1)
{
  v2 = v1;
  v4 = sub_100003090(&qword_10005B210, &qword_1000408B8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v17 - v7;
  v9 = sub_100003090(&qword_10005AE50, &qword_100040578);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v17 - v12;
  v14 = OBJC_IVAR____TtC4Trip14TripCAFManager__model;
  v17[1] = 0;
  sub_100003090(&unk_10005B110, "Vh");
  Published.init(initialValue:)();
  (*(v10 + 32))(v2 + v14, v13, v9);
  *(v2 + OBJC_IVAR____TtC4Trip14TripCAFManager_cancellables) = &_swiftEmptySetSingleton;
  *(v2 + OBJC_IVAR____TtC4Trip14TripCAFManager_carManager) = a1;
  v15 = a1;
  dispatch thunk of CAFCarManagerObservable.$currentCar.getter();
  swift_allocObject();
  swift_weakInit();
  sub_100013FB8();
  Publisher<>.sink(receiveValue:)();

  (*(v5 + 8))(v8, v4);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v2;
}

uint64_t sub_100013F78()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_100013FB8()
{
  result = qword_10005B218;
  if (!qword_10005B218)
  {
    sub_1000036BC(&qword_10005B210, &qword_1000408B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B218);
  }

  return result;
}

uint64_t sub_10001401C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100014060(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100014060(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_1000140BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003090(&qword_10005A650, &unk_10003FC50);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100014198(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100003090(&qword_10005A650, &unk_10003FC50);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for TripViewLandscape()
{
  result = qword_10005B298;
  if (!qword_10005B298)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000142A8()
{
  sub_100003DC4();
  if (v0 <= 0x3F)
  {
    sub_100003E1C();
    if (v1 <= 0x3F)
    {
      sub_100003FA8(319, &qword_10005A6E8);
      if (v2 <= 0x3F)
      {
        sub_100003F44();
        if (v3 <= 0x3F)
        {
          sub_100003FA8(319, &qword_10005A700);
          if (v4 <= 0x3F)
          {
            sub_100003FA8(319, &unk_10005A708);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1000143E8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003090(&qword_10005A798, &qword_10003FD10);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v16 - v11);
  sub_100008DD0(v2, &v16 - v11, &qword_10005A798, &qword_10003FD10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_100017E00(v12, a1, type metadata accessor for LayoutConfiguration);
  }

  v14 = *v12;
  static os_log_type_t.fault.getter();
  v15 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1000145CC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100003090(&qword_10005A870, &qword_100040B80);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  sub_1000143E8(a1);
  v6 = a1 + *(type metadata accessor for LayoutConfiguration(0) + 24);
  v7 = *(v6 + 24);
  v8 = *(v6 + 32);
  sub_100008C34(v6, v7);
  (*(v8 + 24))(v7, v8, 55.0);
  static Font.Weight.semibold.getter();
  v9 = type metadata accessor for Font.Design();
  v10 = *(*(v9 - 8) + 56);
  v10(v5, 1, 1, v9);
  v11 = static Font.system(size:weight:design:)();
  sub_1000038DC(v5, &qword_10005A870, &qword_100040B80);
  v12 = *(v6 + 24);
  v13 = *(v6 + 32);
  sub_100008C34(v6, v12);
  (*(v13 + 152))(v11, v12, v13);
  static Font.Weight.semibold.getter();
  v10(v5, 1, 1, v9);
  v14 = static Font.system(size:weight:design:)();
  sub_1000038DC(v5, &qword_10005A870, &qword_100040B80);
  v15 = *(v6 + 24);
  v16 = *(v6 + 32);
  sub_100008C34(v6, v15);
  return (*(v16 + 200))(v14, v15, v16);
}

void *sub_1000147E8()
{
  v1 = (v0 + *(type metadata accessor for TripViewLandscape() + 20));
  if (*v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if (v9 >> 62)
    {
      goto LABEL_17;
    }

    v2 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      while (1)
      {
        v3 = 0;
        while ((v9 & 0xC000000000000001) != 0)
        {
          v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_14:
            __break(1u);
            goto LABEL_18;
          }

LABEL_10:
          if (*(v4 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_dataType))
          {
          }

          else
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v6 = _swiftEmptyArrayStorage[2];
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          ++v3;
          if (v5 == v2)
          {
            goto LABEL_18;
          }
        }

        if (v3 < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_17:
        v2 = _CocoaArrayWrapper.endIndex.getter();
        if (!v2)
        {
          goto LABEL_18;
        }
      }

      v4 = *(v9 + 8 * v3 + 32);

      v5 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_14;
      }

      goto LABEL_10;
    }

LABEL_18:

    return _swiftEmptyArrayStorage;
  }

  else
  {
    v8 = v1[1];
    type metadata accessor for CardModel(0);
    sub_100017F7C(&qword_10005A6D0, type metadata accessor for CardModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100014A00()
{
  v25 = type metadata accessor for TripViewLandscape();
  v1 = (v0 + v25[10]);
  v2 = *v1;
  v3 = v1[1];
  *&v30[0] = *v1;
  *(&v30[0] + 1) = v3;
  sub_100003090(&qword_10005A860, &qword_100040B30);
  result = State.wrappedValue.getter();
  if (v27 > 0.0)
  {
    v5 = sub_1000147E8();
    v6 = v5;
    v24 = v0;
    if (v5 >> 62)
    {
      goto LABEL_17;
    }

    v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      while (1)
      {
        v8 = 0;
        while ((v6 & 0xC000000000000001) != 0)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          v10 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
LABEL_14:
            __break(1u);
LABEL_15:

            return sub_10000323C(v30);
          }

LABEL_8:
          type metadata accessor for CardCellConfiguration(0);
          sub_100017F7C(&qword_10005A868, type metadata accessor for CardCellConfiguration);

          AnyHashable.init<A>(_:)();
          v11 = v0 + v25[8];
          v28 = *v11;
          v29 = *(v11 + 8);
          sub_100003090(&qword_10005A858, &unk_10003FE20);
          State.wrappedValue.getter();
          if (!*(v26 + 16))
          {
            goto LABEL_15;
          }

          v12 = sub_10000E288(v30);
          if ((v13 & 1) == 0)
          {
            goto LABEL_15;
          }

          v14 = *(*(v26 + 56) + 16 * v12 + 8);
          sub_10000323C(v30);

          *&v30[0] = v2;
          *(&v30[0] + 1) = v3;
          State.wrappedValue.getter();
          swift_getKeyPath();
          swift_getKeyPath();
          LOBYTE(v30[0]) = v28 < v14;
          static Published.subscript.setter();
          ++v8;
          if (v10 == v7)
          {
            goto LABEL_18;
          }
        }

        if (v8 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_17:
        v7 = _CocoaArrayWrapper.endIndex.getter();
        if (!v7)
        {
          goto LABEL_18;
        }
      }

      v9 = *(v6 + 8 * v8 + 32);

      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_14;
      }

      goto LABEL_8;
    }

LABEL_18:

    v15 = sub_1000147E8();
    v16 = v15;
    v17 = v15 & 0xFFFFFFFFFFFFFF8;
    if (v15 >> 62)
    {
LABEL_35:
      v18 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v18 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v19 = 0;
    v20 = 0;
    while (v18 != v19)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        if (__OFADD__(v19, 1))
        {
LABEL_30:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v19 >= *(v17 + 16))
        {
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        v21 = *(v16 + 8 * v19 + 32);

        if (__OFADD__(v19, 1))
        {
          goto LABEL_30;
        }
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v22 = (v30[0] & 1) == 0;
      ++v19;
      v23 = __OFADD__(v20, v22);
      v20 += v22;
      if (v23)
      {
        goto LABEL_34;
      }
    }

    v30[0] = *(v24 + v25[9]);
    sub_100003090(&qword_10005A820, &qword_100040A00);
    return State.wrappedValue.setter();
  }

  return result;
}

uint64_t sub_100014DD8@<X0>(uint64_t a1@<X0>, void (**a2)(char a1)@<X8>)
{
  v68 = a2;
  v62 = type metadata accessor for OpacityTransition();
  v60 = *(v62 - 8);
  v3 = *(v60 + 64);
  __chkstk_darwin(v62);
  v57 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for MoveTransition();
  v56 = *(v59 - 8);
  v5 = *(v56 + 64);
  __chkstk_darwin(v59);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_100003090(&qword_10005A770, &unk_100041510);
  v58 = *(v61 - 8);
  v8 = *(v58 + 64);
  v9 = __chkstk_darwin(v61);
  v55 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v55 - v11;
  v70 = sub_100003090(&qword_10005A778, &unk_10003FCF0);
  v65 = *(v70 - 8);
  v13 = *(v65 + 64);
  __chkstk_darwin(v70);
  v15 = &v55 - v14;
  v16 = sub_100003090(&qword_10005A780, &qword_100041520);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v67 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v69 = &v55 - v20;
  v21 = sub_100003090(&qword_10005B300, &unk_100040960);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v66 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v55 - v25;
  v27 = type metadata accessor for TripViewLandscape();
  v28 = v27 - 8;
  v29 = *(v27 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v27);
  sub_100017BDC(a1, &v55 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = (*(v29 + 80) + 16) & ~*(v29 + 80);
  v64 = swift_allocObject();
  sub_100017E00(&v55 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), v64 + v31, type metadata accessor for TripViewLandscape);
  *v26 = static VerticalAlignment.center.getter();
  *(v26 + 1) = 0;
  v26[16] = 0;
  v32 = *(sub_100003090(&qword_10005B308, &unk_100040970) + 44);
  v63 = v26;
  sub_100015730(a1, &v26[v32]);
  v33 = a1 + *(v28 + 32);
  v34 = *v33;
  v35 = *(v33 + 8);
  LOBYTE(v71) = v34;
  v72 = v35;
  sub_100003090(&qword_10005A7A8, &qword_10003FD20);
  State.wrappedValue.getter();
  v36 = 1;
  if (v75 == 1)
  {
    *v15 = static HorizontalAlignment.center.getter();
    *(v15 + 1) = 0;
    v15[16] = 1;
    v37 = sub_100003090(&qword_10005A7B8, &unk_10003FD30);
    sub_100017440(a1, &v15[*(v37 + 44)]);
    *&v15[*(sub_100003090(&qword_10005A7C0, &unk_100040990) + 36)] = 0x3FF0000000000000;
    MoveTransition.init(edge:)();
    v38 = v57;
    OpacityTransition.init()();
    v39 = sub_100017F7C(&qword_10005A7C8, &type metadata accessor for MoveTransition);
    v40 = sub_100017F7C(&qword_10005A7D0, &type metadata accessor for OpacityTransition);
    v41 = v59;
    v42 = v62;
    Transition.combined<A>(with:)();
    (*(v60 + 8))(v38, v42);
    (*(v56 + 8))(v7, v41);
    v43 = v58;
    v44 = v61;
    (*(v58 + 16))(v55, v12, v61);
    v71 = v41;
    v72 = v42;
    v73 = v39;
    v74 = v40;
    swift_getOpaqueTypeConformance2();
    v45 = AnyTransition.init<A>(_:)();
    (*(v43 + 8))(v12, v44);
    v46 = v69;
    *&v15[*(v70 + 36)] = v45;
    sub_100008944(v15, v46, &qword_10005A778, &unk_10003FCF0);
    v36 = 0;
  }

  v47 = v69;
  (*(v65 + 56))(v69, v36, 1, v70);
  v48 = v63;
  v49 = v66;
  sub_100008DD0(v63, v66, &qword_10005B300, &unk_100040960);
  v50 = v67;
  sub_100008DD0(v47, v67, &qword_10005A780, &qword_100041520);
  v51 = v68;
  v52 = v64;
  *v68 = sub_100017C44;
  v51[1] = v52;
  v53 = sub_100003090(&qword_10005B310, &unk_100040980);
  sub_100008DD0(v49, v51 + *(v53 + 48), &qword_10005B300, &unk_100040960);
  sub_100008DD0(v50, v51 + *(v53 + 64), &qword_10005A780, &qword_100041520);

  sub_1000038DC(v47, &qword_10005A780, &qword_100041520);
  sub_1000038DC(v48, &qword_10005B300, &unk_100040960);
  sub_1000038DC(v50, &qword_10005A780, &qword_100041520);
  sub_1000038DC(v49, &qword_10005B300, &unk_100040960);
}

void sub_100015588(char a1, uint64_t a2)
{
  if (a1)
  {
    if (a1 == 1)
    {

      sub_100009AD4();
    }

    else
    {

      sub_100009ADC();
    }
  }

  else
  {
    v2 = (a2 + *(type metadata accessor for TripViewLandscape() + 20));
    if (*v2)
    {
      v3 = *(**v2 + 280);

      LOBYTE(v3) = v3(v4);

      if (v3)
      {
        v5 = static Animation.easeInOut(duration:)();
        __chkstk_darwin(v5);
        withAnimation<A>(_:_:)();
      }
    }

    else
    {
      v6 = v2[1];
      type metadata accessor for CardModel(0);
      sub_100017F7C(&qword_10005A6D0, type metadata accessor for CardModel);
      EnvironmentObject.error()();
      __break(1u);
    }
  }
}

uint64_t sub_100015730@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v113 = a2;
  v3 = type metadata accessor for TripViewLandscape();
  v108 = *(v3 - 8);
  v4 = *(v108 + 64);
  __chkstk_darwin(v3);
  v111 = v5;
  v112 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for MeasurementList(0);
  v6 = *(*(v100 - 8) + 64);
  __chkstk_darwin(v100);
  v8 = (&v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v98 = sub_100003090(&qword_10005B318, &unk_1000409B0);
  v9 = *(*(v98 - 8) + 64);
  __chkstk_darwin(v98);
  v102 = &v97 - v10;
  v101 = sub_100003090(&qword_10005B320, &unk_100041550);
  v11 = *(*(v101 - 8) + 64);
  __chkstk_darwin(v101);
  v104 = &v97 - v12;
  v103 = sub_100003090(&qword_10005B328, &unk_1000409C0);
  v13 = *(*(v103 - 8) + 64);
  __chkstk_darwin(v103);
  v107 = &v97 - v14;
  v106 = sub_100003090(&qword_10005B330, &qword_100041560);
  v15 = *(*(v106 - 8) + 64);
  v16 = __chkstk_darwin(v106);
  v110 = &v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v105 = &v97 - v19;
  __chkstk_darwin(v18);
  v109 = &v97 - v20;
  v114 = sub_100003090(&qword_10005A878, &qword_1000409D0);
  v21 = *(*(v114 - 8) + 64);
  __chkstk_darwin(v114);
  v23 = &v97 - v22;
  v24 = sub_100003090(&qword_10005B338, &qword_1000409D8);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24);
  v27 = &v97 - v26;
  v28 = type metadata accessor for LayoutConfiguration(0);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28);
  v31 = &v97 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_100003090(&qword_10005B340, &qword_1000409E0);
  v33 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32);
  v35 = &v97 - v34;
  v36 = sub_100003090(&qword_10005B348, &unk_1000409E8);
  v37 = *(*(v36 - 8) + 64);
  v38 = __chkstk_darwin(v36 - 8);
  __chkstk_darwin(v38);
  v115 = v3;
  v116 = &v97 - v40;
  v41 = (a1 + *(v3 + 20));
  v42 = *v41;
  if (*v41)
  {
    v99 = v39;
    if (*(v42 + OBJC_IVAR____TtC4Trip9CardModel_cardLayoutType))
    {
      *v23 = static HorizontalAlignment.center.getter();
      *(v23 + 1) = 0;
      v23[16] = 1;
      v43 = sub_100003090(&qword_10005A890, &qword_10003FEE0);
      sub_100016FCC(a1, &v23[*(v43 + 44)]);
      sub_100008DD0(v23, v27, &qword_10005A878, &qword_1000409D0);
      swift_storeEnumTagMultiPayload();
      sub_100017D40();
      sub_100003894(&qword_10005A8C0, &qword_10005A878, &qword_1000409D0);
      _ConditionalContent<>.init(storage:)();
      v44 = v23;
      v45 = &qword_10005A878;
      v46 = &qword_1000409D0;
    }

    else
    {
      *v35 = static HorizontalAlignment.leading.getter();
      *(v35 + 1) = 0;
      v35[16] = 1;
      v47 = sub_100003090(&qword_10005B370, &qword_100040A40);
      sub_1000163F8(a1, &v35[*(v47 + 44)]);
      sub_1000143E8(v31);
      v48 = &v31[*(v28 + 20)];
      v49 = *(v48 + 1);
      *&v120 = *v48;
      *(&v120 + 1) = v49;
      v121 = *(v48 + 1);
      sub_100003090(&qword_10005A7E0, &unk_1000409A0);
      Binding.wrappedValue.getter();
      sub_1000086B4(v31);
      static Alignment.leading.getter();
      _FrameLayout.init(width:height:alignment:)();
      v50 = &v35[*(v32 + 36)];
      v51 = v121;
      *v50 = v120;
      *(v50 + 1) = v51;
      *(v50 + 2) = v122;
      sub_100008DD0(v35, v27, &qword_10005B340, &qword_1000409E0);
      swift_storeEnumTagMultiPayload();
      sub_100017D40();
      sub_100003894(&qword_10005A8C0, &qword_10005A878, &qword_1000409D0);
      _ConditionalContent<>.init(storage:)();
      v44 = v35;
      v45 = &qword_10005B340;
      v46 = &qword_1000409E0;
    }

    sub_1000038DC(v44, v45, v46);
    v52 = sub_1000147E8();
    v53 = v115;
    v54 = (a1 + *(v115 + 36));
    v55 = *v54;
    v56 = v54[1];
    v118 = *v54;
    v119 = v56;
    sub_100003090(&qword_10005A820, &qword_100040A00);
    v57 = &v118;
    State.wrappedValue.getter();
    if (!v117)
    {
      goto LABEL_8;
    }

    v118 = v55;
    v119 = v56;
    State.wrappedValue.getter();
    v58 = v117;
    if ((v117 & 0x8000000000000000) != 0)
    {
      while (1)
      {
        __break(1u);
LABEL_8:
        v57 = a1;
        v59 = sub_1000147E8();
        if (!(v59 >> 62))
        {
          break;
        }

        v57 = v59;
        v58 = _CocoaArrayWrapper.endIndex.getter();

        if ((v58 & 0x8000000000000000) == 0)
        {
          goto LABEL_10;
        }
      }

      v58 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

LABEL_10:
    v60 = v52 >> 62;
    if (!(v52 >> 62))
    {
      if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v58)
      {
LABEL_12:
        if ((v52 & 0xC000000000000001) != 0 && v58)
        {
          type metadata accessor for CardCellConfiguration(0);

          v61 = 0;
          do
          {
            v62 = v61 + 1;
            _ArrayBuffer._typeCheckSlowPath(_:)(v61);
            v61 = v62;
          }

          while (v58 != v62);
        }

        else
        {
        }

        if (v60)
        {
          v57 = _CocoaArrayWrapper.subscript.getter();
          v56 = v63;
          v60 = v64;
          v58 = v65;

          if (v58)
          {
            goto LABEL_23;
          }
        }

        else
        {
          v57 = (v52 & 0xFFFFFFFFFFFFFF8);
          v56 = (v52 & 0xFFFFFFFFFFFFFF8) + 32;
          v58 = (2 * v58) | 1;
          if (v58)
          {
LABEL_23:
            type metadata accessor for __ContiguousArrayStorageBase();
            swift_unknownObjectRetain_n();
            v68 = swift_dynamicCastClass();
            if (!v68)
            {
              swift_unknownObjectRelease();
              v68 = _swiftEmptyArrayStorage;
            }

            v69 = v68[2];

            if (!__OFSUB__(v58 >> 1, v60))
            {
              if (v69 == (v58 >> 1) - v60)
              {
                v67 = swift_dynamicCastClass();
                swift_unknownObjectRelease_n();
                if (v67)
                {
LABEL_30:
                  v70 = *(a1 + *(v53 + 28));
                  v71 = static Alignment.center.getter();
                  v73 = v72;
                  *v8 = swift_getKeyPath();
                  sub_100003090(&qword_10005A798, &qword_10003FD10);
                  swift_storeEnumTagMultiPayload();
                  v74 = v100;
                  *(v8 + *(v100 + 20)) = v67;
                  *(v8 + *(v74 + 24)) = v70;
                  v75 = (v8 + *(v74 + 28));
                  *v75 = v71;
                  v75[1] = v73;
                  v76 = v102;
                  v77 = &v102[*(v98 + 36)];
                  v78 = sub_100003090(&qword_10005A828, &qword_100040A30);
                  sub_1000145CC(v77 + *(v78 + 28));
                  *v77 = swift_getKeyPath();
                  sub_100017E00(v8, v76, type metadata accessor for MeasurementList);
                  v79 = v104;
                  sub_100008944(v76, v104, &qword_10005B318, &unk_1000409B0);
                  *(v79 + *(v101 + 36)) = 0;
                  v80 = v112;
                  sub_100017BDC(a1, v112);
                  v81 = (*(v108 + 80) + 16) & ~*(v108 + 80);
                  v82 = swift_allocObject();
                  sub_100017E00(v80, v82 + v81, type metadata accessor for TripViewLandscape);
                  v83 = v79;
                  v84 = v107;
                  sub_100008944(v83, v107, &qword_10005B320, &unk_100041550);
                  v85 = (v84 + *(v103 + 36));
                  *v85 = sub_100017E68;
                  v85[1] = v82;
                  v85[2] = 0;
                  v85[3] = 0;
                  sub_100017BDC(a1, v80);
                  v86 = swift_allocObject();
                  sub_100017E00(v80, v86 + v81, type metadata accessor for TripViewLandscape);
                  v87 = v105;
                  sub_100008944(v84, v105, &qword_10005B328, &unk_1000409C0);
                  v88 = (v87 + *(v106 + 36));
                  *v88 = sub_100017EC8;
                  v88[1] = v86;
                  v89 = v109;
                  sub_100008944(v87, v109, &qword_10005B330, &qword_100041560);
                  v90 = v116;
                  v91 = v99;
                  sub_100008DD0(v116, v99, &qword_10005B348, &unk_1000409E8);
                  v92 = v110;
                  sub_100008DD0(v89, v110, &qword_10005B330, &qword_100041560);
                  v93 = v113;
                  sub_100008DD0(v91, v113, &qword_10005B348, &unk_1000409E8);
                  v94 = sub_100003090(&qword_10005B368, &qword_100040A38);
                  sub_100008DD0(v92, v93 + *(v94 + 48), &qword_10005B330, &qword_100041560);
                  sub_1000038DC(v89, &qword_10005B330, &qword_100041560);
                  sub_1000038DC(v90, &qword_10005B348, &unk_1000409E8);
                  sub_1000038DC(v92, &qword_10005B330, &qword_100041560);
                  return sub_1000038DC(v91, &qword_10005B348, &unk_1000409E8);
                }

                v67 = _swiftEmptyArrayStorage;
LABEL_29:
                swift_unknownObjectRelease();
                goto LABEL_30;
              }

              goto LABEL_38;
            }

LABEL_37:
            __break(1u);
LABEL_38:
            swift_unknownObjectRelease_n();
          }
        }

        sub_10002E060(v57, v56, v60, v58);
        v67 = v66;
        goto LABEL_29;
      }

LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (v52 < 0)
    {
      v57 = v52;
    }

    else
    {
      v57 = (v52 & 0xFFFFFFFFFFFFFF8);
    }

    if ((_CocoaArrayWrapper.endIndex.getter() & 0x8000000000000000) == 0)
    {
      if (_CocoaArrayWrapper.endIndex.getter() >= v58)
      {
        goto LABEL_12;
      }

      goto LABEL_36;
    }

    __break(1u);
  }

  v96 = v41[1];
  type metadata accessor for CardModel(0);
  sub_100017F7C(&qword_10005A6D0, type metadata accessor for CardModel);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_1000163F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v119 = a2;
  v120 = a1;
  v2 = sub_100003090(&qword_10005B378, &qword_100040A48);
  v117 = *(v2 - 8);
  v118 = v2;
  v3 = *(v117 + 64);
  __chkstk_darwin(v2);
  v114 = &v102 - v4;
  v116 = type metadata accessor for TripViewLandscape();
  v106 = *(v116 - 8);
  v5 = *(v106 + 64);
  __chkstk_darwin(v116);
  v107 = v6;
  v108 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_100003090(&qword_10005A910, &qword_100040A50);
  v7 = *(*(v109 - 8) + 64);
  v8 = __chkstk_darwin(v109);
  v113 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v112 = &v102 - v10;
  v105 = sub_100003090(&qword_10005B380, &qword_100040A58);
  v11 = *(*(v105 - 8) + 64);
  v12 = __chkstk_darwin(v105);
  v111 = &v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v110 = &v102 - v14;
  v15 = type metadata accessor for CAFUIAppPresentationMode();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v102 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for EnvironmentValues();
  v20 = *(v115 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v115);
  v23 = &v102 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100003090(&qword_10005A798, &qword_10003FD10);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24);
  v27 = (&v102 - v26);
  v103 = type metadata accessor for LayoutConfiguration(0);
  v28 = *(*(v103 - 8) + 64);
  v29 = __chkstk_darwin(v103);
  v102 = &v102 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v32 = &v102 - v31;
  sub_100008DD0(v120, v27, &qword_10005A798, &qword_10003FD10);
  v104 = v24;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100017E00(v27, v32, type metadata accessor for LayoutConfiguration);
  }

  else
  {
    v33 = *v27;
    static os_log_type_t.fault.getter();
    v34 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v20 + 8))(v23, v115);
  }

  (*(v16 + 16))(v19, v32, v15);
  v35 = (*(v16 + 88))(v19, v15);
  if (v35 == enum case for CAFUIAppPresentationMode.console(_:))
  {
    sub_1000086B4(v32);
    return (*(v117 + 56))(v119, 1, 1, v118);
  }

  if (v35 == enum case for CAFUIAppPresentationMode.clusterDCA(_:) || v35 == enum case for CAFUIAppPresentationMode.clusterPopover(_:) || v35 == enum case for CAFUIAppPresentationMode.widget(_:))
  {
    sub_1000086B4(v32);
    v36 = v120;
    v37 = (v120 + *(v116 + 20));
    if (*v37)
    {
      if (*(*v37 + OBJC_IVAR____TtC4Trip9CardModel_showsTitle))
      {
        swift_getKeyPath();
        swift_getKeyPath();

        static Published.subscript.getter();

        sub_1000089B4();
        v38 = Text.init<A>(_:)();
        v40 = v39;
        v42 = v41;
        v43 = v102;
        sub_1000143E8(v102);
        sub_100008A08(v43 + *(v103 + 24), &v126);
        sub_1000086B4(v43);
        v44 = *(&v127 + 1);
        v45 = v128;
        sub_100008A6C(&v126, *(&v127 + 1));
        (*(v45 + 120))(v44, v45);
        v46 = Text.font(_:)();
        v48 = v47;
        v50 = v49;
        v52 = v51;
        sub_100008AB0(v38, v40, v42 & 1);

        sub_1000085F8(&v126);
        static Alignment.top.getter();
        _FrameLayout.init(width:height:alignment:)();
        v53 = v50 & 1;
        v124 = v50 & 1;
        KeyPath = swift_getKeyPath();
        LOBYTE(v121) = 0;
        v55 = sub_100003090(&qword_10005B388, &qword_100040AD8);
        v56 = v110;
        v57 = &v110[*(v55 + 36)];
        v58 = *(sub_100003090(&qword_10005A8F0, &qword_100040AE0) + 28);
        v59 = enum case for Text.TruncationMode.tail(_:);
        v60 = type metadata accessor for Text.TruncationMode();
        (*(*(v60 - 8) + 104))(v57 + v58, v59, v60);
        *v57 = swift_getKeyPath();
        *v56 = v46;
        *(v56 + 8) = v48;
        *(v56 + 16) = v53;
        *(v56 + 24) = v52;
        v61 = v127;
        *(v56 + 32) = v126;
        *(v56 + 48) = v61;
        *(v56 + 64) = v128;
        *(v56 + 80) = KeyPath;
        *(v56 + 88) = 2;
        *(v56 + 96) = 0;
        LOBYTE(v46) = static Edge.Set.trailing.getter();
        EdgeInsets.init(_all:)();
        v63 = v62;
        v65 = v64;
        v67 = v66;
        v69 = v68;
        v70 = v56 + *(sub_100003090(&qword_10005B390, &qword_100040B18) + 36);
        *v70 = v46;
        *(v70 + 8) = v63;
        *(v70 + 16) = v65;
        *(v70 + 24) = v67;
        *(v70 + 32) = v69;
        *(v70 + 40) = 0;
        LOBYTE(v46) = static Edge.Set.top.getter();
        EdgeInsets.init(_all:)();
        v71 = v56 + *(v105 + 36);
        *v71 = v46;
        *(v71 + 8) = v72;
        *(v71 + 16) = v73;
        *(v71 + 24) = v74;
        *(v71 + 32) = v75;
        *(v71 + 40) = 0;
        v76 = v36 + *(v116 + 24);
        v77 = *v76;
        v78 = *(v76 + 8);
        v124 = v77;
        v125 = v78;
        sub_100003090(&qword_10005A7A8, &qword_10003FD20);
        State.projectedValue.getter();
        v79 = v121;
        v80 = v122;
        v81 = v123;
        v82 = v108;
        sub_100017BDC(v36, v108);
        v83 = (*(v106 + 80) + 16) & ~*(v106 + 80);
        v84 = swift_allocObject();
        sub_100017E00(v82, v84 + v83, type metadata accessor for TripViewLandscape);
        v85 = swift_getKeyPath();
        v86 = type metadata accessor for TripActionButton();
        v87 = v112;
        *&v112[*(v86 + 20)] = v85;
        swift_storeEnumTagMultiPayload();
        *v87 = v79;
        *(v87 + 8) = v80;
        *(v87 + 16) = v81;
        v88 = (v87 + *(v86 + 24));
        *v88 = sub_100017F50;
        v88[1] = v84;
        LOBYTE(v84) = static Edge.Set.top.getter();
        EdgeInsets.init(_all:)();
        v89 = v87 + *(v109 + 36);
        *v89 = v84;
        *(v89 + 8) = v90;
        *(v89 + 16) = v91;
        *(v89 + 24) = v92;
        *(v89 + 32) = v93;
        *(v89 + 40) = 0;
        v94 = v111;
        sub_100008DD0(v56, v111, &qword_10005B380, &qword_100040A58);
        v95 = v113;
        sub_100008DD0(v87, v113, &qword_10005A910, &qword_100040A50);
        v96 = v114;
        sub_100008DD0(v94, v114, &qword_10005B380, &qword_100040A58);
        v97 = sub_100003090(&qword_10005B398, &unk_100040B20);
        sub_100008DD0(v95, v96 + *(v97 + 48), &qword_10005A910, &qword_100040A50);
        v98 = v96 + *(v97 + 64);
        *v98 = 0;
        *(v98 + 8) = 1;
        sub_1000038DC(v87, &qword_10005A910, &qword_100040A50);
        sub_1000038DC(v56, &qword_10005B380, &qword_100040A58);
        sub_1000038DC(v95, &qword_10005A910, &qword_100040A50);
        sub_1000038DC(v94, &qword_10005B380, &qword_100040A58);
        v99 = v119;
        sub_100008944(v96, v119, &qword_10005B378, &qword_100040A48);
        return (*(v117 + 56))(v99, 0, 1, v118);
      }

      return (*(v117 + 56))(v119, 1, 1, v118);
    }

    v101 = v37[1];
    type metadata accessor for CardModel(0);
    sub_100017F7C(&qword_10005A6D0, type metadata accessor for CardModel);
    EnvironmentObject.error()();
    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100016FCC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v36 = a2;
  v3 = type metadata accessor for TripViewLandscape();
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  v7 = sub_100003090(&qword_10005A910, &qword_100040A50);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v34[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v14 = &v34[-v13];
  v15 = a1 + *(v4 + 32);
  v16 = *v15;
  v17 = *(v15 + 8);
  v40 = v16;
  v41 = v17;
  sub_100003090(&qword_10005A7A8, &qword_10003FD20);
  State.projectedValue.getter();
  v19 = v37;
  v18 = v38;
  v35 = v39;
  sub_100017BDC(a1, &v34[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v20 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v21 = swift_allocObject();
  sub_100017E00(&v34[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v21 + v20, type metadata accessor for TripViewLandscape);
  KeyPath = swift_getKeyPath();
  v23 = type metadata accessor for TripActionButton();
  *&v14[*(v23 + 20)] = KeyPath;
  sub_100003090(&qword_10005A798, &qword_10003FD10);
  swift_storeEnumTagMultiPayload();
  *v14 = v19;
  *(v14 + 1) = v18;
  v14[16] = v35;
  v24 = &v14[*(v23 + 24)];
  *v24 = sub_100018314;
  v24[1] = v21;
  LOBYTE(v21) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v25 = &v14[*(v8 + 44)];
  *v25 = v21;
  *(v25 + 1) = v26;
  *(v25 + 2) = v27;
  *(v25 + 3) = v28;
  *(v25 + 4) = v29;
  v25[40] = 0;
  sub_100008DD0(v14, v12, &qword_10005A910, &qword_100040A50);
  v30 = v36;
  *v36 = 0;
  *(v30 + 8) = 1;
  v31 = v30;
  v32 = sub_100003090(&qword_10005A918, &qword_100040010);
  sub_100008DD0(v12, v31 + *(v32 + 48), &qword_10005A910, &qword_100040A50);
  sub_1000038DC(v14, &qword_10005A910, &qword_100040A50);
  return sub_1000038DC(v12, &qword_10005A910, &qword_100040A50);
}

uint64_t sub_1000172B0(uint64_t a1)
{
  v2 = type metadata accessor for LayoutConfiguration(0);
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000143E8(v6);
  v7 = &v6[*(v3 + 28)];
  v8 = *(v7 + 1);
  v15 = *v7;
  v16 = v8;
  v17 = *(v7 + 1);
  sub_100003090(&qword_10005A7E0, &unk_1000409A0);
  Binding.wrappedValue.getter();
  v9 = v14[1];
  sub_1000086B4(v6);
  v10 = (a1 + *(type metadata accessor for TripViewLandscape() + 40));
  v11 = *v10;
  v12 = v10[1];
  v15 = v11;
  v16 = v12;
  v14[0] = v9;
  sub_100003090(&qword_10005A860, &qword_100040B30);
  State.wrappedValue.setter();
  return sub_100014A00();
}

uint64_t sub_1000173CC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = (a2 + *(type metadata accessor for TripViewLandscape() + 32));
  v5 = *v3;
  v6 = v3[1];

  sub_100003090(&qword_10005A858, &unk_10003FE20);
  return State.wrappedValue.setter();
}

double sub_100017440@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = type metadata accessor for TripViewLandscape();
  v42 = *(v3 - 8);
  v4 = *(v42 + 64);
  __chkstk_darwin(v3 - 8);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LayoutConfiguration(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TripResetView();
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v14 = (&v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = sub_100003090(&qword_10005A7D8, &unk_10003FD40);
  v15 = *(*(v43 - 8) + 64);
  __chkstk_darwin(v43);
  v17 = &v42 - v16;
  sub_1000143E8(v9);
  v18 = &v9[*(v6 + 20)];
  v19 = *(v18 + 1);
  *&v45 = *v18;
  *(&v45 + 1) = v19;
  v46 = *(v18 + 1);
  sub_100003090(&qword_10005A7E0, &unk_1000409A0);
  Binding.wrappedValue.getter();
  v20 = *&v52;
  sub_1000086B4(v9);
  sub_1000143E8(v9);
  v21 = &v9[*(v6 + 20)];
  v22 = *(v21 + 1);
  *&v45 = *v21;
  *(&v45 + 1) = v22;
  v46 = *(v21 + 1);
  Binding.wrappedValue.getter();
  v23 = *(&v52 + 1);
  sub_1000086B4(v9);
  sub_100017BDC(a1, v5);
  v24 = (*(v42 + 80) + 16) & ~*(v42 + 80);
  v25 = swift_allocObject();
  sub_100017E00(v5, v25 + v24, type metadata accessor for TripViewLandscape);
  *v14 = v20 * 0.45;
  v14[1] = v23 * 0.75;
  *(v14 + 2) = sub_100017CB4;
  *(v14 + 3) = v25;
  v26 = (v14 + *(v11 + 36));
  v27 = *(type metadata accessor for RoundedRectangle() + 20);
  v28 = enum case for RoundedCornerStyle.continuous(_:);
  v29 = type metadata accessor for RoundedCornerStyle();
  (*(*(v29 - 8) + 104))(&v26->i8[v27], v28, v29);
  *v26 = vdupq_n_s64(0x4046000000000000uLL);
  sub_1000143E8(v9);
  v30 = &v9[*(v6 + 20)];
  v31 = *(v30 + 1);
  *&v45 = *v30;
  *(&v45 + 1) = v31;
  v46 = *(v30 + 1);
  Binding.wrappedValue.getter();
  sub_1000086B4(v9);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_100017E00(v14, v17, type metadata accessor for TripResetView);
  v32 = &v17[*(v43 + 36)];
  v33 = v50;
  *(v32 + 4) = v49;
  *(v32 + 5) = v33;
  *(v32 + 6) = v51;
  v34 = v46;
  *v32 = v45;
  *(v32 + 1) = v34;
  v35 = v48;
  *(v32 + 2) = v47;
  *(v32 + 3) = v35;
  sub_1000143E8(v9);
  v36 = &v9[*(v6 + 20)];
  v37 = *(v36 + 1);
  *&v52 = *v36;
  *(&v52 + 1) = v37;
  v53 = *(v36 + 1);
  Binding.wrappedValue.getter();
  sub_1000086B4(v9);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v38 = v44;
  sub_100008944(v17, v44, &qword_10005A7D8, &unk_10003FD40);
  v39 = (v38 + *(sub_100003090(&qword_10005A7E8, &qword_10003FD50) + 36));
  v40 = v53;
  *v39 = v52;
  v39[1] = v40;
  result = v54[0];
  v39[2] = *v54;
  return result;
}

uint64_t sub_1000179C4(char a1)
{
  if (a1)
  {
    sub_100009AE4();
  }

  v1 = static Animation.easeInOut(duration:)();
  __chkstk_darwin(v1);
  withAnimation<A>(_:_:)();
}

uint64_t sub_100017A60(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for TripViewLandscape() + 24));
  v2 = *v1;
  v3 = *(v1 + 1);

  sub_100003090(&qword_10005A7A8, &qword_10003FD20);
  State.wrappedValue.getter();
  State.wrappedValue.setter();
}

uint64_t sub_100017B1C@<X0>(uint64_t *a1@<X8>)
{
  *a1 = static Alignment.center.getter();
  a1[1] = v3;
  v4 = sub_100003090(&qword_10005B2E8, &qword_100040940);
  sub_100014DD8(v1, (a1 + *(v4 + 44)));
  v5 = static Edge.Set.horizontal.getter();
  v6 = a1 + *(sub_100003090(&qword_10005B2F0, &qword_100040948) + 36);
  *v6 = v5;
  *(v6 + 8) = 0u;
  *(v6 + 24) = 0u;
  v6[40] = 1;
  result = sub_100003090(&qword_10005B2F8, &unk_100040950);
  v8 = (a1 + *(result + 36));
  *v8 = 0xD000000000000012;
  v8[1] = 0x8000000100042830;
  return result;
}

uint64_t sub_100017BDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TripViewLandscape();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100017C44(char a1)
{
  v3 = *(type metadata accessor for TripViewLandscape() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_100015588(a1, v4);
}

uint64_t sub_100017CB4(char a1)
{
  v2 = *(*(type metadata accessor for TripViewLandscape() - 8) + 80);

  return sub_1000179C4(a1 & 1);
}

unint64_t sub_100017D40()
{
  result = qword_10005B350;
  if (!qword_10005B350)
  {
    sub_1000036BC(&qword_10005B340, &qword_1000409E0);
    sub_100003894(&qword_10005B358, &qword_10005B360, &qword_1000409F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B350);
  }

  return result;
}

uint64_t sub_100017E00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100017E68()
{
  v1 = *(type metadata accessor for TripViewLandscape() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1000172B0(v2);
}

uint64_t sub_100017EC8(uint64_t *a1)
{
  v3 = *(type metadata accessor for TripViewLandscape() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1000173CC(a1, v4);
}

void sub_100017F50()
{
  type metadata accessor for TripViewLandscape();

  sub_100009ADC();
}

uint64_t sub_100017F7C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100017FD4()
{
  v1 = type metadata accessor for TripViewLandscape();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  sub_100003090(&qword_10005A798, &qword_10003FD10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for CAFUIAppPresentationMode();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
    v7 = type metadata accessor for LayoutConfiguration(0);
    v8 = (v5 + *(v7 + 20));
    v9 = *v8;

    v10 = v8[1];

    sub_1000085F8((v5 + *(v7 + 24)));
  }

  else
  {
    v11 = *v5;
  }

  v12 = *(v5 + v1[5]);

  v13 = *(v5 + v1[6] + 8);

  v14 = (v5 + v1[8]);
  v15 = *v14;

  v16 = v14[1];

  v17 = *(v5 + v1[9] + 8);

  v18 = *(v5 + v1[10] + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

unint64_t sub_100018178()
{
  result = qword_10005B3A0;
  if (!qword_10005B3A0)
  {
    sub_1000036BC(&qword_10005B2F8, &unk_100040950);
    sub_100018230();
    sub_100003894(&qword_10005A940, &qword_10005A948, &qword_100040020);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B3A0);
  }

  return result;
}

unint64_t sub_100018230()
{
  result = qword_10005B3A8;
  if (!qword_10005B3A8)
  {
    sub_1000036BC(&qword_10005B2F0, &qword_100040948);
    sub_100003894(&qword_10005B3B0, &qword_10005B3B8, &qword_100040BD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B3A8);
  }

  return result;
}

uint64_t sub_100018318(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void *sub_10001835C(uint64_t a1)
{
  v2 = v1;
  v235 = a1;
  v3 = sub_100003090(&qword_10005B518, &qword_100041D20);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v244 = &v233 - v5;
  v256 = sub_100003090(&qword_10005B508, &qword_100040CB8);
  v246 = *(v256 - 8);
  v6 = *(v246 + 64);
  v7 = __chkstk_darwin(v256);
  v234 = &v233 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v238 = &v233 - v10;
  __chkstk_darwin(v9);
  v245 = &v233 - v11;
  v12 = sub_100003090(&qword_10005B520, &qword_100040CC0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v258 = &v233 - v14;
  v15 = sub_100003090(&qword_10005B528, &qword_100040CC8);
  v254 = *(v15 - 8);
  v255 = v15;
  v16 = *(v254 + 64);
  v17 = __chkstk_darwin(v15);
  v237 = &v233 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v239 = &v233 - v19;
  v20 = sub_100003090(&qword_10005B530, &qword_100041CD0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v251 = &v233 - v22;
  v23 = sub_100003090(&qword_10005B538, &qword_100040CD0);
  v252 = *(v23 - 8);
  v253 = v23;
  v24 = *(v252 + 64);
  __chkstk_darwin(v23);
  v243 = &v233 - v25;
  v26 = sub_100003090(&qword_10005B540, &qword_100040CD8);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v241 = &v233 - v28;
  v29 = sub_100003090(&qword_10005B548, &qword_100040CE0);
  v249 = *(v29 - 8);
  v250 = v29;
  v30 = *(v249 + 64);
  v31 = __chkstk_darwin(v29);
  v236 = &v233 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v242 = &v233 - v33;
  v34 = sub_100003090(&qword_10005B550, &qword_100040CE8);
  v35 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34 - 8);
  v37 = &v233 - v36;
  v240 = sub_100003090(&qword_10005B558, &qword_100040CF0);
  v248 = *(v240 - 8);
  v38 = *(v248 + 64);
  __chkstk_darwin(v240);
  v247 = &v233 - v39;
  v40 = sub_100003090(&qword_10005B560, &qword_100041C80);
  v41 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40 - 8);
  v43 = &v233 - v42;
  v44 = sub_100003090(&qword_10005B4D8, &qword_100040CA8);
  v45 = *(v44 - 8);
  v46 = *(v45 + 64);
  v47 = __chkstk_darwin(v44);
  v49 = &v233 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v51 = &v233 - v50;
  v52 = CAFTripObservable.observed.getter();
  v53 = [v52 car];

  if (v53)
  {
    v54 = CAFCar.dimesionObservable.getter();

    v261 = _swiftEmptyArrayStorage;
    dispatch thunk of CAFTripObservable.distance.getter();
    v55 = (*(v45 + 48))(v43, 1, v44);
    v257 = v2;
    if (v55 == 1)
    {
      sub_1000038DC(v43, &qword_10005B560, &qword_100041C80);
      v56 = _swiftEmptyArrayStorage;
    }

    else
    {
      (*(v45 + 32))(v51, v43, v44);
      v57 = CAFTripObservable.observed.getter();
      v58 = [v57 distanceInvalid];

      if (v58)
      {
        v259 = 2108717;
        v260 = 0xE300000000000000;
        v59 = dispatch thunk of CAFDimensionObservable.vehicleRangeUnit.getter();
        v60 = [v59 symbol];

        v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v63 = v62;

        v64._countAndFlagsBits = v61;
        v64._object = v63;
        String.append(_:)(v64);

        v65 = v260;
        v233 = v259;
      }

      else
      {
        Measurement<>.toVehicleRangeUnit(using:)();
        v233 = Measurement<>.formattedString(maximumFractionDigits:)();
        v65 = v66;
        (*(v45 + 8))(v49, v44);
      }

      v67 = [objc_opt_self() mainBundle];
      v262._object = 0xE000000000000000;
      v68._countAndFlagsBits = 0x45434E4154534944;
      v68._object = 0xE800000000000000;
      v69.value._countAndFlagsBits = 1885958740;
      v69.value._object = 0xE400000000000000;
      v70._countAndFlagsBits = 0;
      v70._object = 0xE000000000000000;
      v262._countAndFlagsBits = 0;
      v71 = NSLocalizedString(_:tableName:bundle:value:comment:)(v68, v69, v67, v70, v262);

      v72 = type metadata accessor for CardCellConfiguration(0);
      v73 = *(v72 + 48);
      v74 = *(v72 + 52);
      v75 = swift_allocObject();
      LOBYTE(v259) = 0;
      Published.init(initialValue:)();
      UUID.init()();
      *(v75 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_preferredCellStyle) = 5;
      if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
      {
        v76 = sub_10001F2E0(_swiftEmptyArrayStorage);
      }

      else
      {
        v76 = &_swiftEmptySetSingleton;
      }

      *(v75 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_cancellables) = v76;
      v77 = (v75 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_title);
      *v77 = v233;
      v77[1] = v65;
      *(v75 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_subtitle) = v71;
      v78 = (v75 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_symbolImageName);
      *v78 = 0xD000000000000038;
      v78[1] = 0x8000000100042E40;
      *(v75 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_dataType) = 0;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v261 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v261 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v227 = *((v261 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      (*(v45 + 8))(v51, v44);
      v56 = v261;
    }

    dispatch thunk of CAFTripObservable.duration.getter();
    v79 = v248;
    v80 = v240;
    v81 = (*(v248 + 48))(v37, 1, v240);
    v82 = v246;
    v83 = v54;
    if (v81 == 1)
    {
      sub_1000038DC(v37, &qword_10005B550, &qword_100040CE8);
      v84 = v258;
      v85 = v250;
      v86 = v251;
    }

    else
    {
      (*(v79 + 32))(v247, v37, v80);
      v259 = 0x202D2D3A2D2DLL;
      v260 = 0xE600000000000000;
      v87 = [objc_opt_self() hours];
      v88 = [v87 symbol];

      v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v91 = v90;

      v92._countAndFlagsBits = v89;
      v92._object = v91;
      String.append(_:)(v92);

      v94 = v259;
      v93 = v260;
      v95 = CAFTripObservable.observed.getter();
      LOBYTE(v91) = [v95 durationInvalid];

      v85 = v250;
      if ((v91 & 1) == 0)
      {
        if (v235 && (v96 = *(v235 + OBJC_IVAR____TtC4Trip13TripAppConfig_dateFormatter)) != 0)
        {
          v97 = v96;
        }

        else
        {
          v97 = [objc_allocWithZone(NSDateComponentsFormatter) init];
          [v97 setUnitsStyle:2];
          [v97 setAllowedUnits:224];
        }

        Measurement.value.getter();
        v98 = [v97 stringFromTimeInterval:?];

        if (v98)
        {

          v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v93 = v99;
        }
      }

      v100 = [objc_opt_self() mainBundle];
      v263._object = 0xE000000000000000;
      v101._countAndFlagsBits = 0x4E4F495441525544;
      v101._object = 0xE800000000000000;
      v102.value._countAndFlagsBits = 1885958740;
      v102.value._object = 0xE400000000000000;
      v103._countAndFlagsBits = 0;
      v103._object = 0xE000000000000000;
      v263._countAndFlagsBits = 0;
      v104 = NSLocalizedString(_:tableName:bundle:value:comment:)(v101, v102, v100, v103, v263);

      v105 = type metadata accessor for CardCellConfiguration(0);
      v106 = *(v105 + 48);
      v107 = *(v105 + 52);
      v108 = swift_allocObject();
      LOBYTE(v259) = 0;
      Published.init(initialValue:)();
      UUID.init()();
      *(v108 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_preferredCellStyle) = 5;
      if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
      {
        v109 = sub_10001F2E0(_swiftEmptyArrayStorage);
      }

      else
      {
        v109 = &_swiftEmptySetSingleton;
      }

      *(v108 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_cancellables) = v109;
      v110 = (v108 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_title);
      *v110 = v94;
      v110[1] = v93;
      *(v108 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_subtitle) = v104;
      v111 = (v108 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_symbolImageName);
      *v111 = 0x63746177706F7473;
      v111[1] = 0xE900000000000068;
      *(v108 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_dataType) = 0;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v261 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v261 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v228 = *((v261 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      (*(v248 + 8))(v247, v80);
      v56 = v261;
      v84 = v258;
      v86 = v251;
    }

    v112 = v249;
    v113 = v241;
    dispatch thunk of CAFTripObservable.averageSpeed.getter();
    if ((*(v112 + 48))(v113, 1, v85) == 1)
    {
      sub_1000038DC(v113, &qword_10005B540, &qword_100040CD8);
    }

    else
    {
      (*(v112 + 32))(v242, v113, v85);
      v114 = CAFTripObservable.observed.getter();
      v115 = [v114 averageSpeedInvalid];

      if (v115)
      {
        v259 = 2108717;
        v260 = 0xE300000000000000;
        v116 = dispatch thunk of CAFDimensionObservable.vehicleSpeedUnit.getter();
        v117 = [v116 symbol];

        v118 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v120 = v119;

        v121._countAndFlagsBits = v118;
        v121._object = v120;
        String.append(_:)(v121);

        v122 = v259;
        v123 = v260;
      }

      else
      {
        v124 = v236;
        Measurement<>.toVehicleSpeedUnit(using:)();
        v122 = Measurement<>.formattedString(maximumFractionDigits:)();
        v123 = v125;
        (*(v112 + 8))(v124, v85);
      }

      v126 = [objc_opt_self() mainBundle];
      v264._object = 0xE000000000000000;
      v127._countAndFlagsBits = 0x4445455053;
      v127._object = 0xE500000000000000;
      v128.value._countAndFlagsBits = 1885958740;
      v128.value._object = 0xE400000000000000;
      v129._countAndFlagsBits = 0;
      v129._object = 0xE000000000000000;
      v264._countAndFlagsBits = 0;
      v130 = NSLocalizedString(_:tableName:bundle:value:comment:)(v127, v128, v126, v129, v264);

      v131 = type metadata accessor for CardCellConfiguration(0);
      v132 = *(v131 + 48);
      v133 = *(v131 + 52);
      v134 = swift_allocObject();
      LOBYTE(v259) = 0;
      Published.init(initialValue:)();
      UUID.init()();
      *(v134 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_preferredCellStyle) = 5;
      if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
      {
        v135 = sub_10001F2E0(_swiftEmptyArrayStorage);
      }

      else
      {
        v135 = &_swiftEmptySetSingleton;
      }

      *(v134 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_cancellables) = v135;
      v136 = (v134 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_title);
      *v136 = v122;
      v136[1] = v123;
      *(v134 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_subtitle) = v130;
      v137 = (v134 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_symbolImageName);
      *v137 = 0xD000000000000026;
      v137[1] = 0x8000000100042E10;
      *(v134 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_dataType) = 0;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v261 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v261 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v229 = *((v261 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      (*(v249 + 8))(v242, v250);
      v56 = v261;
      v84 = v258;
      v86 = v251;
    }

    dispatch thunk of CAFTripObservable.energy.getter();
    v138 = v252;
    v139 = v253;
    if ((*(v252 + 48))(v86, 1, v253) == 1)
    {
      sub_1000038DC(v86, &qword_10005B530, &qword_100041CD0);
    }

    else
    {
      (*(v138 + 32))(v243, v86, v139);
      v140 = CAFTripObservable.observed.getter();
      v141 = [v140 energyInvalid];

      if (v141)
      {
        v259 = 2108717;
        v260 = 0xE300000000000000;
        v142 = Measurement.unit.getter();
        v143 = [v142 symbol];

        v144 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v146 = v145;

        v147._countAndFlagsBits = v144;
        v147._object = v146;
        String.append(_:)(v147);

        v148 = v259;
        v149 = v260;
      }

      else
      {
        v148 = Measurement<>.formattedString(maximumFractionDigits:)();
        v149 = v150;
      }

      v151 = [objc_opt_self() mainBundle];
      v265._object = 0xE000000000000000;
      v152._countAndFlagsBits = 0x594752454E45;
      v152._object = 0xE600000000000000;
      v153.value._countAndFlagsBits = 1885958740;
      v153.value._object = 0xE400000000000000;
      v154._countAndFlagsBits = 0;
      v154._object = 0xE000000000000000;
      v265._countAndFlagsBits = 0;
      v155 = NSLocalizedString(_:tableName:bundle:value:comment:)(v152, v153, v151, v154, v265);

      v156 = type metadata accessor for CardCellConfiguration(0);
      v157 = *(v156 + 48);
      v158 = *(v156 + 52);
      v159 = swift_allocObject();
      LOBYTE(v259) = 0;
      Published.init(initialValue:)();
      UUID.init()();
      *(v159 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_preferredCellStyle) = 5;
      if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
      {
        v160 = sub_10001F2E0(_swiftEmptyArrayStorage);
      }

      else
      {
        v160 = &_swiftEmptySetSingleton;
      }

      *(v159 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_cancellables) = v160;
      v161 = (v159 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_title);
      *v161 = v148;
      v161[1] = v149;
      *(v159 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_subtitle) = v155;
      v162 = (v159 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_symbolImageName);
      *v162 = 0xD000000000000017;
      v162[1] = 0x8000000100042DF0;
      *(v159 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_dataType) = 0;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v261 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v261 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v230 = *((v261 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      (*(v252 + 8))(v243, v253);
      v56 = v261;
      v84 = v258;
    }

    dispatch thunk of CAFTripObservable.energyEfficiency.getter();
    v163 = v254;
    v164 = v255;
    if ((*(v254 + 48))(v84, 1, v255) == 1)
    {
      sub_1000038DC(v84, &qword_10005B520, &qword_100040CC0);
    }

    else
    {
      v165 = v239;
      (*(v163 + 32))(v239, v84, v164);
      v166 = v163;
      v167 = CAFTripObservable.observed.getter();
      v168 = [v167 energyEfficiencyInvalid];

      if (v168)
      {
        v259 = 2108717;
        v260 = 0xE300000000000000;
        v169 = Measurement.unit.getter();
        v170 = [v169 symbol];

        v171 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v173 = v172;

        v174._countAndFlagsBits = v171;
        v174._object = v173;
        String.append(_:)(v174);

        v175 = v259;
        v176 = v260;
      }

      else
      {
        v177 = v237;
        Measurement<>.toVehicleEnergyEfficiencyUnit(using:)();
        v175 = Measurement<>.formattedString(maximumFractionDigits:)();
        v176 = v178;
        (*(v166 + 8))(v177, v164);
      }

      v179 = [objc_opt_self() mainBundle];
      v266._object = 0xE000000000000000;
      v180._object = 0x8000000100042DB0;
      v180._countAndFlagsBits = 0xD000000000000011;
      v181.value._countAndFlagsBits = 1885958740;
      v181.value._object = 0xE400000000000000;
      v182._countAndFlagsBits = 0;
      v182._object = 0xE000000000000000;
      v266._countAndFlagsBits = 0;
      v183 = NSLocalizedString(_:tableName:bundle:value:comment:)(v180, v181, v179, v182, v266);

      v184 = type metadata accessor for CardCellConfiguration(0);
      v185 = *(v184 + 48);
      v186 = *(v184 + 52);
      v187 = swift_allocObject();
      LOBYTE(v259) = 0;
      Published.init(initialValue:)();
      UUID.init()();
      *(v187 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_preferredCellStyle) = 5;
      if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
      {
        v188 = sub_10001F2E0(_swiftEmptyArrayStorage);
      }

      else
      {
        v188 = &_swiftEmptySetSingleton;
      }

      *(v187 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_cancellables) = v188;
      v189 = (v187 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_title);
      *v189 = v175;
      v189[1] = v176;
      *(v187 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_subtitle) = v183;
      v190 = (v187 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_symbolImageName);
      *v190 = 0xD000000000000011;
      v190[1] = 0x8000000100042DD0;
      *(v187 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_dataType) = 0;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v261 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v261 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v231 = *((v261 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      (*(v254 + 8))(v165, v255);
      v56 = v261;
    }

    v191 = v244;
    dispatch thunk of CAFTripObservable.fuelEfficiency.getter();
    v192 = v256;
    if ((*(v82 + 48))(v191, 1, v256) == 1)
    {

      sub_1000038DC(v191, &qword_10005B518, &qword_100041D20);
    }

    else
    {
      (*(v82 + 32))(v245, v191, v192);
      v193 = CAFTripObservable.observed.getter();
      v194 = [v193 fuelEfficiencyInvalid];

      if (v194)
      {
        v259 = 2108717;
        v260 = 0xE300000000000000;
        v195 = dispatch thunk of CAFDimensionObservable.vehicleFuelEfficiencyUnit.getter();
        v196 = [v195 symbol];

        v197 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v199 = v198;

        v200._countAndFlagsBits = v197;
        v200._object = v199;
        String.append(_:)(v200);

        v201 = v259;
        v202 = v260;
      }

      else
      {
        Measurement.value.getter();
        v204 = v203;
        v205 = CAFTripObservable.observed.getter();
        v206 = [v205 fuelEfficiencyRange];

        LODWORD(v205) = [v206 maximumValue];
        if (v204 == v205)
        {
          v207 = [objc_opt_self() millilitersPer100Kilometers];
          sub_100014060(0, &qword_10005B510, NSUnitFuelEfficiency_ptr);
          v208 = v238;
          Measurement.init(value:unit:)();
          v209 = v234;
          Measurement<>.toVehicleFuelEfficiencyUnit(using:)();
          v201 = Measurement<>.formattedString(maximumFractionDigits:)();
          v202 = v210;
          v211 = *(v82 + 8);
          v211(v209, v192);
          v211(v208, v192);
        }

        else
        {
          v212 = v238;
          Measurement<>.toVehicleFuelEfficiencyUnit(using:)();
          v201 = Measurement<>.formattedString(maximumFractionDigits:)();
          v202 = v213;
          (*(v82 + 8))(v212, v192);
        }
      }

      v214 = [objc_opt_self() mainBundle];
      v267._object = 0xE000000000000000;
      v215._countAndFlagsBits = 0x4646455F4C455546;
      v215._object = 0xEF59434E45494349;
      v216.value._countAndFlagsBits = 1885958740;
      v216.value._object = 0xE400000000000000;
      v217._countAndFlagsBits = 0;
      v217._object = 0xE000000000000000;
      v267._countAndFlagsBits = 0;
      v218 = NSLocalizedString(_:tableName:bundle:value:comment:)(v215, v216, v214, v217, v267);

      v219 = type metadata accessor for CardCellConfiguration(0);
      v220 = *(v219 + 48);
      v221 = *(v219 + 52);
      v222 = swift_allocObject();
      LOBYTE(v259) = 0;
      Published.init(initialValue:)();
      UUID.init()();
      *(v222 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_preferredCellStyle) = 5;
      if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
      {
        v223 = sub_10001F2E0(_swiftEmptyArrayStorage);
      }

      else
      {
        v223 = &_swiftEmptySetSingleton;
      }

      *(v222 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_cancellables) = v223;
      v224 = (v222 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_title);
      *v224 = v201;
      v224[1] = v202;
      *(v222 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_subtitle) = v218;
      v225 = v222 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_symbolImageName;
      strcpy((v222 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_symbolImageName), "fuelpump.fill");
      *(v225 + 14) = -4864;
      *(v222 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_dataType) = 0;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v261 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v261 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v232 = *((v261 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      (*(v82 + 8))(v245, v256);
      return v261;
    }
  }

  else
  {
    sub_100034D64(0xD00000000000001CLL, 0x8000000100042D50, 0xD00000000000001ELL, 0x8000000100042D90, 20);
    return _swiftEmptyArrayStorage;
  }

  return v56;
}

void *sub_100019F14()
{
  v0 = sub_100003090(&qword_10005B4D8, &qword_100040CA8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v40 - v3;
  v5 = CAFOdometerObservable.observed.getter();
  v6 = [v5 car];

  if (!v6)
  {
    sub_100034D64(0xD00000000000001CLL, 0x8000000100042D50, 0xD000000000000012, 0x8000000100042D70, 118);
    return _swiftEmptyArrayStorage;
  }

  v7 = CAFCar.dimesionObservable.getter();

  sub_100014060(0, &unk_10005B4E0, NSObject_ptr);
  v41 = v7;
  v8 = dispatch thunk of CAFDimensionObservable.vehicleRangeUnit.getter();
  v9 = objc_opt_self();
  v10 = [v9 kilometers];
  v11 = static NSObject.== infix(_:_:)();

  v12 = CAFOdometerObservable.observed.getter();
  v13 = v12;
  if (v11)
  {
    v14 = [v12 distanceKMInvalid];

    if (v14)
    {
      v42 = 2108717;
      v43 = 0xE300000000000000;
      v15 = [v9 kilometers];
      v16 = [v15 symbol];
LABEL_8:
      v19 = v16;

      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v23._countAndFlagsBits = v20;
      v23._object = v22;
      String.append(_:)(v23);

      v24 = v42;
      v25 = v43;
      goto LABEL_12;
    }

    dispatch thunk of CAFOdometerObservable.distanceKM.getter();
  }

  else
  {
    v18 = [v12 distanceMilesInvalid];

    if (v18)
    {
      v42 = 2108717;
      v43 = 0xE300000000000000;
      v15 = [v9 miles];
      v16 = [v15 symbol];
      goto LABEL_8;
    }

    dispatch thunk of CAFOdometerObservable.distanceMiles.getter();
  }

  v24 = Measurement<>.formattedString(maximumFractionDigits:)();
  v25 = v26;
  (*(v1 + 8))(v4, v0);
LABEL_12:
  sub_100003090(&qword_10005D490, &unk_1000404E0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100040BE0;
  v27 = [objc_opt_self() mainBundle];
  v44._object = 0xE000000000000000;
  v28._countAndFlagsBits = 0x524554454D4F444FLL;
  v28._object = 0xE800000000000000;
  v29.value._countAndFlagsBits = 1885958740;
  v29.value._object = 0xE400000000000000;
  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  v44._countAndFlagsBits = 0;
  v31 = NSLocalizedString(_:tableName:bundle:value:comment:)(v28, v29, v27, v30, v44);

  v32 = type metadata accessor for CardCellConfiguration(0);
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  v35 = swift_allocObject();
  LOBYTE(v42) = 0;
  Published.init(initialValue:)();
  UUID.init()();
  *(v35 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_preferredCellStyle) = 5;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v36 = sub_10001F2E0(_swiftEmptyArrayStorage);
  }

  else
  {
    v36 = &_swiftEmptySetSingleton;
  }

  *(v35 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_cancellables) = v36;
  v37 = (v35 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_title);
  *v37 = v24;
  v37[1] = v25;
  *(v35 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_subtitle) = v31;
  v38 = (v35 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_symbolImageName);
  *v38 = 0x6E616C2E64616F72;
  v38[1] = 0xEA00000000007365;
  *(v35 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_dataType) = 1;
  *(v17 + 32) = v35;

  return v17;
}

void *sub_10001A3D0()
{
  v0 = sub_100003090(&qword_10005B508, &qword_100040CB8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v43 - v6;
  v8 = CAFFuelConsumptionObservable.observed.getter();
  v9 = [v8 car];

  if (v9)
  {
    v10 = CAFCar.dimesionObservable.getter();

    v11 = CAFFuelConsumptionObservable.observed.getter();
    v12 = [v11 fuelEfficiencyInvalid];

    if (v12)
    {
      v43 = 2108717;
      v44 = 0xE300000000000000;
      v13 = dispatch thunk of CAFDimensionObservable.vehicleFuelEfficiencyUnit.getter();
      v14 = [v13 symbol];

      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      v18._countAndFlagsBits = v15;
      v18._object = v17;
      String.append(_:)(v18);

      v19 = v43;
      v20 = v44;
    }

    else
    {
      dispatch thunk of CAFFuelConsumptionObservable.fuelEfficiency.getter();
      Measurement.value.getter();
      v23 = v22;
      v24 = *(v1 + 8);
      v24(v7, v0);
      v25 = CAFFuelConsumptionObservable.observed.getter();
      v26 = [v25 fuelEfficiencyRange];

      LODWORD(v25) = [v26 maximumValue];
      if (v23 == v25)
      {
        v27 = [objc_opt_self() millilitersPer100Kilometers];
        sub_100014060(0, &qword_10005B510, NSUnitFuelEfficiency_ptr);
        Measurement.init(value:unit:)();
        Measurement<>.toVehicleFuelEfficiencyUnit(using:)();
        v19 = Measurement<>.formattedString(maximumFractionDigits:)();
        v20 = v28;
        v24(v5, v0);
      }

      else
      {
        dispatch thunk of CAFFuelConsumptionObservable.fuelEfficiency.getter();
        Measurement<>.toVehicleFuelEfficiencyUnit(using:)();
        v24(v5, v0);
        v19 = Measurement<>.formattedString(maximumFractionDigits:)();
        v20 = v29;
      }

      v24(v7, v0);
    }

    sub_100003090(&qword_10005D490, &unk_1000404E0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_100040BE0;
    v30 = [objc_opt_self() mainBundle];
    v45._object = 0xE000000000000000;
    v31._countAndFlagsBits = 0x4646455F4C455546;
    v31._object = 0xEF59434E45494349;
    v32.value._countAndFlagsBits = 1885958740;
    v32.value._object = 0xE400000000000000;
    v33._countAndFlagsBits = 0;
    v33._object = 0xE000000000000000;
    v45._countAndFlagsBits = 0;
    v34 = NSLocalizedString(_:tableName:bundle:value:comment:)(v31, v32, v30, v33, v45);

    v35 = type metadata accessor for CardCellConfiguration(0);
    v36 = *(v35 + 48);
    v37 = *(v35 + 52);
    v38 = swift_allocObject();
    LOBYTE(v43) = 0;
    Published.init(initialValue:)();
    UUID.init()();
    *(v38 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_preferredCellStyle) = 5;
    if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
    {
      v39 = sub_10001F2E0(_swiftEmptyArrayStorage);
    }

    else
    {
      v39 = &_swiftEmptySetSingleton;
    }

    *(v38 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_cancellables) = v39;
    v40 = (v38 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_title);
    *v40 = v19;
    v40[1] = v20;
    *(v38 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_subtitle) = v34;
    v41 = v38 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_symbolImageName;
    strcpy((v38 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_symbolImageName), "fuelpump.fill");
    *(v41 + 14) = -4864;
    *(v38 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_dataType) = 0;
    *(v21 + 32) = v38;
  }

  else
  {
    sub_100034D64(0xD00000000000001CLL, 0x8000000100042D50, 0xD000000000000012, 0x8000000100042D70, 149);
    return _swiftEmptyArrayStorage;
  }

  return v21;
}

uint64_t sub_10001A908()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10001A97C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v3)
  {
    dispatch thunk of CarouselModel.items.getter();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static Published.subscript.setter();
}

uint64_t sub_10001AA7C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

char *sub_10001AAE8(void *a1)
{
  v2 = v1;
  v4 = sub_100003090(&qword_10005B5F8, &qword_100040E98);
  v40 = *(v4 - 8);
  v41 = v4;
  v5 = *(v40 + 64);
  __chkstk_darwin(v4);
  v7 = &v39 - v6;
  v8 = sub_100003090(&qword_10005B5F0, &unk_1000405A0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v39 - v11;
  v13 = sub_100003090(&qword_10005B5E8, &qword_100040E90);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v39 - v16;
  *&v2[OBJC_IVAR____TtC4Trip9TripModel_tripComputer] = 0;
  *&v2[OBJC_IVAR____TtC4Trip9TripModel_odometer] = 0;
  *&v2[OBJC_IVAR____TtC4Trip9TripModel_consumption] = 0;
  v2[OBJC_IVAR____TtC4Trip9TripModel_hasEmittedFinalizedSignpost] = 0;
  *&v2[OBJC_IVAR____TtC4Trip9TripModel_cancellables] = &_swiftEmptySetSingleton;
  v18 = OBJC_IVAR____TtC4Trip9TripModel__carouselModel;
  aBlock[0] = 0;
  sub_100003090(&qword_10005B4C0, &qword_100040C60);
  Published.init(initialValue:)();
  (*(v14 + 32))(&v2[v18], v17, v13);
  v19 = OBJC_IVAR____TtC4Trip9TripModel__appConfig;
  aBlock[0] = 0;
  sub_100003090(&qword_10005B4D0, &qword_100040C68);
  Published.init(initialValue:)();
  (*(v9 + 32))(&v2[v19], v12, v8);
  sub_100034D00(0xD000000000000018, 0x8000000100043220, 0xD000000000000014, 0x8000000100043240, 195);
  v20 = &v2[OBJC_IVAR____TtC4Trip9TripModel__carObservable];
  swift_beginAccess();
  type metadata accessor for CAFCarObservable();
  sub_10001F574(&qword_10005B600, &type metadata accessor for CAFCarObservable);
  v21 = a1;
  *v20 = ObservedObject.init(wrappedValue:)();
  v20[1] = v22;
  swift_endAccess();
  swift_beginAccess();
  v44 = _swiftEmptyArrayStorage;
  sub_100003090(&qword_10005B4B0, &qword_100040C28);
  Published.init(initialValue:)();
  swift_endAccess();
  v23 = type metadata accessor for CAUAssetLibraryManager();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  *&v2[OBJC_IVAR____TtC4Trip9TripModel_assetManager] = CAUAssetLibraryManager.init()();
  v26 = type metadata accessor for TripModel();
  v43.receiver = v2;
  v43.super_class = v26;
  v27 = objc_msgSendSuper2(&v43, "init");
  v28 = CAFCarObservable.observed.getter();
  [v28 registerObserver:v27];

  sub_10001BC14();
  v29 = [objc_opt_self() defaultCenter];
  if (qword_10005A3C8 != -1)
  {
    swift_once();
  }

  v30 = static NSNotificationName.ClusterEvent;
  v31 = [objc_opt_self() mainQueue];
  v32 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_10001F77C;
  aBlock[5] = v32;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001B2D4;
  aBlock[3] = &unk_1000566B8;
  v33 = _Block_copy(aBlock);
  v34 = v27;

  v35 = [v29 addObserverForName:v30 object:0 queue:v31 usingBlock:v33];
  _Block_release(v33);
  swift_unknownObjectRelease();

  v36 = *&v34[OBJC_IVAR____TtC4Trip9TripModel_assetManager];

  dispatch thunk of CAUAssetLibraryManager.$assetLibrary.getter();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_100003894(&qword_10005B608, &qword_10005B5F8, &qword_100040E98);
  v37 = v41;
  Publisher<>.sink(receiveValue:)();

  (*(v40 + 8))(v7, v37);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v34;
}

void sub_10001B188()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = Notification.userInfo.getter();
    if (v2)
    {
      v3 = v2;
      strcpy(v6, "ClusterEvent");
      BYTE13(v6[0]) = 0;
      HIWORD(v6[0]) = -5120;
      AnyHashable.init<A>(_:)();
      if (!*(v3 + 16) || (v4 = sub_10000E288(v7), (v5 & 1) == 0))
      {

        sub_10000323C(v7);
        return;
      }

      sub_10001F78C(*(v3 + 56) + 32 * v4, v6);
      sub_10000323C(v7);

      sub_10000EF2C(v6, v8);
      sub_10001F78C(v8, v7);
      if (swift_dynamicCast())
      {
        sub_10001CF68(v6[0]);

        sub_1000085F8(v8);
        return;
      }

      sub_1000085F8(v8);
    }
  }
}

uint64_t sub_10001B2D4(uint64_t a1)
{
  v2 = type metadata accessor for Notification();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

void sub_10001B3C8(void **a1)
{
  v2 = type metadata accessor for CAUAppUIConfiguration.Mode();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CAUAppUIConfiguration.App();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CAUAppUIConfiguration.Configuration();
  v36 = *(v12 - 8);
  v37 = v12;
  v13 = *(v36 + 64);
  v14 = __chkstk_darwin(v12);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v34 - v17;
  v19 = *a1;
  if (v19)
  {
    (*(v8 + 104))(v11, enum case for CAUAppUIConfiguration.App.trip(_:), v7);
    (*(v3 + 104))(v6, enum case for CAUAppUIConfiguration.Mode.dca(_:), v2);
    v35 = v19;
    dispatch thunk of CAUAssetLibrary.configuration(app:mode:)();
    (*(v3 + 8))(v6, v2);
    (*(v8 + 8))(v11, v7);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v22 = v36;
    v21 = v37;
    if (Strong)
    {
      v23 = Strong;
      (*(v36 + 16))(v16, v18, v37);
      v24 = type metadata accessor for TripAppConfig();
      v25 = *(v24 + 48);
      v26 = *(v24 + 52);
      swift_allocObject();
      v27 = sub_10003A988(v16);
      swift_getKeyPath();
      swift_getKeyPath();
      v38 = v27;
      v28 = v23;

      v29 = static Published.subscript.setter();
      sub_10001BF98(v29);
    }

    (*(v22 + 8))(v18, v21);
  }

  else
  {
    swift_beginAccess();
    v30 = swift_unknownObjectWeakLoadStrong();
    if (v30)
    {
      v31 = v30;
      swift_getKeyPath();
      swift_getKeyPath();
      v38 = 0;
      v32 = v31;
      v33 = static Published.subscript.setter();
      sub_10001BF98(v33);
    }
  }
}