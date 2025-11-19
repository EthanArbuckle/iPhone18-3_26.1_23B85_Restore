uint64_t sub_10058C94C(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v9 = v5;
  v12 = *v5;
  if ((*v5 & 0xC000000000000001) != 0)
  {
    if (v12 < 0)
    {
      v13 = *v5;
    }

    else
    {
      v13 = v12 & 0xFFFFFFFFFFFFFF8;
    }

    v14 = __CocoaSet.member(for:)();

    if (v14)
    {

      sub_100058000(a5);
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v22 = sub_1005947D4(v13, result + 1, a3, a4, a5);
    v23 = *(v22 + 16);
    if (*(v22 + 24) <= v23)
    {
      sub_100592944(v23 + 1, a3);
    }

    sub_100594A64(v24, v22);

    *v9 = v22;
    goto LABEL_16;
  }

  Hasher.init(_seed:)();
  Hasher._combine(_:)(*(a2 + 16));
  v16 = Hasher._finalize()();
  v17 = -1 << *(v12 + 32);
  v18 = v16 & ~v17;
  if (((*(v12 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v5;

    sub_100595CF0(v21, v18, isUniquelyReferenced_nonNull_native, a3, a4, a5);
    *v5 = v26;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v19 = ~v17;
  while (*(*(*(v12 + 48) + 8 * v18) + 16) != *(a2 + 16))
  {
    v18 = (v18 + 1) & v19;
    if (((*(v12 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v12 + 48) + 8 * v18);

  return 0;
}

uint64_t sub_10058CBA4(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
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

    sub_100595E78(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_10058CCF4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_10059A488(&qword_100769AC0, &type metadata accessor for IndexPath);
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
      sub_10059A488(&unk_100772710, &type metadata accessor for IndexPath);
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
    sub_100595FF8(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_10058CFD4(_BYTE *a1, Swift::Int a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a2)
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
    sub_1005962C0(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_10058D0CC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_10059A488(&unk_10076BB20, &type metadata accessor for TTRRemindersListViewModel.SectionID);
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
      sub_10059A488(&qword_100768B80, &type metadata accessor for TTRRemindersListViewModel.SectionID);
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
    sub_100596420(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_10058D3AC(_BYTE *a1, Swift::Int a2)
{
  v4 = *v2;
  Hasher.init(_seed:)();
  String.hash(into:)();

  v5 = Hasher._finalize()();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  v30 = v4 + 56;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v29 = ~v6;
    v8 = 0xEF726F6C6F43646ELL;
    v9 = 0x756F72676B636162;
    while (1)
    {
      v10 = *(*(v4 + 48) + v7);
      if (v10 <= 1)
      {
        if (*(*(v4 + 48) + v7))
        {
          v11 = 0x6F74617261706573;
        }

        else
        {
          v11 = 0xD000000000000010;
        }

        if (*(*(v4 + 48) + v7))
        {
          v12 = 0xE900000000000072;
        }

        else
        {
          v12 = 0x800000010066E810;
        }
      }

      else if (v10 == 2)
      {
        v11 = 0xD00000000000001BLL;
        v12 = 0x800000010066E830;
      }

      else
      {
        if (v10 == 3)
        {
          v11 = v9;
        }

        else
        {
          v11 = 0xD000000000000014;
        }

        if (v10 == 3)
        {
          v12 = v8;
        }

        else
        {
          v12 = 0x800000010066E860;
        }
      }

      v13 = 0xD00000000000001BLL;
      v14 = 0xD000000000000014;
      if (a2 == 3)
      {
        v14 = v9;
        v15 = v8;
      }

      else
      {
        v15 = 0x800000010066E860;
      }

      if (a2 != 2)
      {
        v13 = v14;
      }

      v16 = 0x800000010066E830;
      if (a2 != 2)
      {
        v16 = v15;
      }

      v17 = a2 ? 0x6F74617261706573 : 0xD000000000000010;
      v18 = a2 ? 0xE900000000000072 : 0x800000010066E810;
      v19 = a2 <= 1u ? v17 : v13;
      v20 = a2 <= 1u ? v18 : v16;
      v21 = v4;
      if (v11 == v19 && v12 == v20)
      {
        break;
      }

      v22 = v9;
      v23 = v8;
      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v24)
      {
        goto LABEL_43;
      }

      v7 = (v7 + 1) & v29;
      v4 = v21;
      v8 = v23;
      v9 = v22;
      if (((*(v30 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_41;
      }
    }

LABEL_43:
    result = 0;
    LOBYTE(a2) = *(*(v21 + 48) + v7);
  }

  else
  {
LABEL_41:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *v27;
    sub_1005966E8(a2, v7, isUniquelyReferenced_nonNull_native);
    *v27 = v31;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_10058D6B4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_10059A488(&qword_10076BB40, &type metadata accessor for UUID);
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
      sub_10059A488(&qword_10076BB48, &type metadata accessor for UUID);
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
    sub_100596A48(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_10058D994(_BYTE *a1, Swift::Int a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  v18 = v2;
  v19 = a1;
  String.hash(into:)();

  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
LABEL_21:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v18;
    sub_100596D10(a2, v8, isUniquelyReferenced_nonNull_native);
    *v18 = v20;
    result = 1;
    goto LABEL_24;
  }

  v9 = ~v7;
  while (!*(*(v5 + 48) + v8))
  {
    v11 = 0xE700000000000000;
    v10 = 0x736E6F74747562;
    v12 = a2;
    if (!a2)
    {
      goto LABEL_17;
    }

LABEL_8:
    if (v12 == 1)
    {
      v13 = 0x6F697463656C6573;
    }

    else
    {
      v13 = 0xD000000000000014;
    }

    if (v12 == 1)
    {
      v14 = 0xE90000000000006ELL;
    }

    else
    {
      v14 = 0x800000010066E890;
    }

    if (v10 == v13)
    {
      goto LABEL_18;
    }

LABEL_19:
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v15)
    {
      goto LABEL_23;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  if (*(*(v5 + 48) + v8) == 1)
  {
    v10 = 0x6F697463656C6573;
    v11 = 0xE90000000000006ELL;
    v12 = a2;
    if (!a2)
    {
      goto LABEL_17;
    }

    goto LABEL_8;
  }

  v10 = 0xD000000000000014;
  v11 = 0x800000010066E890;
  v12 = a2;
  if (a2)
  {
    goto LABEL_8;
  }

LABEL_17:
  v14 = 0xE700000000000000;
  if (v10 != 0x736E6F74747562)
  {
    goto LABEL_19;
  }

LABEL_18:
  if (v11 != v14)
  {
    goto LABEL_19;
  }

LABEL_23:
  result = 0;
  LOBYTE(a2) = *(*(v5 + 48) + v8);
LABEL_24:
  *v19 = a2;
  return result;
}

uint64_t sub_10058DBF8(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for TTRListOrCustomSmartList();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_10059A488(&qword_100786578, &type metadata accessor for TTRListOrCustomSmartList);
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
      sub_10059A488(&qword_10078E0A8, &type metadata accessor for TTRListOrCustomSmartList);
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
    sub_100596FC4(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

void *sub_10058DF28()
{
  v1 = v0;
  sub_100058000(&qword_10078E108);
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

id sub_10058E068(uint64_t *a1)
{
  v2 = v1;
  sub_100058000(a1);
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

void *sub_10058E1E4(uint64_t *a1)
{
  v2 = v1;
  sub_100058000(a1);
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
        *(*(v5 + 48) + 8 * (v15 | (v9 << 6))) = *(*(v3 + 48) + 8 * (v15 | (v9 << 6)));
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

void *sub_10058E324()
{
  v1 = v0;
  sub_100058000(&qword_100782420);
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

void *sub_10058E50C(uint64_t *a1)
{
  v2 = v1;
  sub_100058000(a1);
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
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 56);
    for (i = (v10 + 63) >> 6; v12; *(*(v5 + 48) + v15) = *(*(v3 + 48) + v15))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v15 = v14 | (v9 << 6);
LABEL_17:
      ;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= i)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v12 = (v17 - 1) & v17;
        v15 = __clz(__rbit64(v17)) | (v9 << 6);
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

void *sub_10058E63C(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = v2;
  v5 = a1(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - v7;
  sub_100058000(a2);
  v9 = *v2;
  v10 = static _SetStorage.copy(original:)();
  v11 = v10;
  if (*(v9 + 16))
  {
    v25 = v4;
    result = (v10 + 56);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v9 || result >= v9 + 56 + 8 * v13)
    {
      result = memmove(result, (v9 + 56), 8 * v13);
    }

    v15 = 0;
    *(v11 + 16) = *(v9 + 16);
    v16 = 1 << *(v9 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v9 + 56);
    v19 = (v16 + 63) >> 6;
    v26 = v6 + 32;
    for (i = v6 + 16; v18; result = (*(v6 + 32))(*(v11 + 48) + v23, v8, v5))
    {
      v20 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v23 = *(v6 + 72) * (v20 | (v15 << 6));
      (*(v6 + 16))(v8, *(v9 + 48) + v23, v5);
    }

    v21 = v15;
    while (1)
    {
      v15 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v15 >= v19)
      {

        v4 = v25;
        goto LABEL_21;
      }

      v22 = *(v9 + 56 + 8 * v15);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v11;
  }

  return result;
}

uint64_t sub_10058E874()
{
  v1 = v0;
  v32 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_100058000(&qword_10078C4E0);
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
      sub_10059A488(&qword_10076FE50, &type metadata accessor for TTRRemindersListViewModel.ItemID);
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

uint64_t sub_10058EB90()
{
  v1 = v0;
  v32 = type metadata accessor for TTRSectionID();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_100058000(&qword_10078E0F0);
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
      sub_10059A488(&qword_1007758E0, &type metadata accessor for TTRSectionID);
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

uint64_t sub_10058EEAC()
{
  v1 = v0;
  v2 = *v0;
  sub_100058000(&qword_10078E108);
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

uint64_t sub_10058F09C(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  sub_100058000(a2);
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

uint64_t sub_10058F2A8()
{
  v1 = v0;
  v32 = type metadata accessor for TTRRemindersListViewModel.Item();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_100058000(&qword_10078E0A0);
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
      sub_10059A488(&qword_100776308, &type metadata accessor for TTRRemindersListViewModel.Item);
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

uint64_t sub_10058F5C4()
{
  v1 = v0;
  v2 = *v0;
  sub_100058000(&qword_10078E0E0);
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
LABEL_16:
      v18 = *(*(v2 + 48) + (v15 | (v5 << 6)));
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v11 = -1 << *(v4 + 32);
      v12 = result & ~v11;
      v13 = v12 >> 6;
      if (((-1 << v12) & ~*(v10 + 8 * (v12 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v11) >> 6;
        while (++v13 != v20 || (v19 & 1) == 0)
        {
          v21 = v13 == v20;
          if (v13 == v20)
          {
            v13 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v13);
          if (v22 != -1)
          {
            v14 = __clz(__rbit64(~v22)) + (v13 << 6);
            goto LABEL_8;
          }
        }

        goto LABEL_29;
      }

      v14 = __clz(__rbit64((-1 << v12) & ~*(v10 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v4 + 48) + v14) = v18;
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
        goto LABEL_27;
      }

      v17 = *(v2 + 56 + 8 * v5);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v8 = (v17 - 1) & v17;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

LABEL_27:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_10058F8D8()
{
  v1 = v0;
  v32 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_100058000(&unk_10078C4F0);
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
      sub_10059A488(&qword_1007727B0, &type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
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

uint64_t sub_10058FBF4(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  sub_100058000(a2);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v4 + 16))
  {
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
      v17 = *(*(v4 + 48) + 8 * (v14 | (v7 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(*(v17 + 16));
      result = Hasher._finalize()();
      v18 = -1 << *(v6 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
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

        v3 = v2;
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

uint64_t sub_10058FE14()
{
  v1 = v0;
  v2 = *v0;
  sub_100058000(&qword_100782420);
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

uint64_t sub_10059004C()
{
  v1 = v0;
  v32 = type metadata accessor for IndexPath();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_100058000(&qword_10078C4D8);
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
      sub_10059A488(&qword_100769AC0, &type metadata accessor for IndexPath);
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

uint64_t sub_100590368()
{
  v1 = v0;
  v32 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_100058000(&qword_10078E090);
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
      sub_10059A488(&unk_10076BB20, &type metadata accessor for TTRRemindersListViewModel.SectionID);
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

uint64_t sub_100590684()
{
  v1 = v0;
  v2 = *v0;
  sub_100058000(&qword_10078C4E8);
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
      v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v15);
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

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + v11) = v15;
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
        goto LABEL_26;
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

uint64_t sub_1005908A4()
{
  v1 = v0;
  v2 = *v0;
  sub_100058000(&qword_10078E0D0);
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
LABEL_16:
      v18 = *(*(v2 + 48) + (v15 | (v5 << 6)));
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v11 = -1 << *(v4 + 32);
      v12 = result & ~v11;
      v13 = v12 >> 6;
      if (((-1 << v12) & ~*(v10 + 8 * (v12 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v11) >> 6;
        while (++v13 != v20 || (v19 & 1) == 0)
        {
          v21 = v13 == v20;
          if (v13 == v20)
          {
            v13 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v13);
          if (v22 != -1)
          {
            v14 = __clz(__rbit64(~v22)) + (v13 << 6);
            goto LABEL_8;
          }
        }

        goto LABEL_29;
      }

      v14 = __clz(__rbit64((-1 << v12) & ~*(v10 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v4 + 48) + v14) = v18;
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
        goto LABEL_27;
      }

      v17 = *(v2 + 56 + 8 * v5);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v8 = (v17 - 1) & v17;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

LABEL_27:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_100590B90()
{
  v1 = v0;
  v32 = type metadata accessor for UUID();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_100058000(&qword_10078E098);
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
      sub_10059A488(&qword_10076BB40, &type metadata accessor for UUID);
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

uint64_t sub_100590EAC()
{
  v1 = v0;
  v2 = *v0;
  sub_100058000(&qword_10078E0C8);
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
      v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
      Hasher.init(_seed:)();
      String.hash(into:)();

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

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + v11) = v15;
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
        goto LABEL_26;
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

uint64_t sub_100591130()
{
  v1 = v0;
  v32 = type metadata accessor for TTRListOrCustomSmartList();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_100058000(&qword_10078E0B0);
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
      sub_10059A488(&qword_100786578, &type metadata accessor for TTRListOrCustomSmartList);
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

uint64_t sub_10059144C()
{
  v1 = v0;
  v35 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_100058000(&qword_10078C4E0);
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
      sub_10059A488(&qword_10076FE50, &type metadata accessor for TTRRemindersListViewModel.ItemID);
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

uint64_t sub_1005917A8()
{
  v1 = v0;
  v35 = type metadata accessor for TTRSectionID();
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_100058000(&qword_10078E0F0);
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
      sub_10059A488(&qword_1007758E0, &type metadata accessor for TTRSectionID);
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

uint64_t sub_100591B04()
{
  v1 = v0;
  v2 = *v0;
  sub_100058000(&qword_10078E108);
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

uint64_t sub_100591D28(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  sub_100058000(a2);
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

uint64_t sub_100591F48()
{
  v1 = v0;
  v35 = type metadata accessor for TTRRemindersListViewModel.Item();
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_100058000(&qword_10078E0A0);
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
      sub_10059A488(&qword_100776308, &type metadata accessor for TTRRemindersListViewModel.Item);
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

uint64_t sub_1005922A4()
{
  v1 = v0;
  v2 = *v0;
  sub_100058000(&qword_10078E0E0);
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
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_16:
      v19 = *(*(v2 + 48) + (v16 | (v5 << 6)));
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v12 = -1 << *(v4 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~*(v11 + 8 * (v13 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v12) >> 6;
        while (++v14 != v21 || (v20 & 1) == 0)
        {
          v22 = v14 == v21;
          if (v14 == v21)
          {
            v14 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v14);
          if (v23 != -1)
          {
            v15 = __clz(__rbit64(~v23)) + (v14 << 6);
            goto LABEL_8;
          }
        }

LABEL_31:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v13) & ~*(v11 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v4 + 48) + v15) = v19;
      ++*(v4 + 16);
    }

    v17 = v5;
    while (1)
    {
      v5 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v5 >= v10)
      {
        break;
      }

      v18 = v6[v5];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
        goto LABEL_16;
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

uint64_t sub_1005925E8()
{
  v1 = v0;
  v35 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_100058000(&unk_10078C4F0);
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
      sub_10059A488(&qword_1007727B0, &type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
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

uint64_t sub_100592944(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  sub_100058000(a2);
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
      Hasher.init(_seed:)();
      Hasher._combine(_:)(*(v18 + 16));
      result = Hasher._finalize()();
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

    v3 = v2;
    *(v4 + 16) = 0;
  }

  *v3 = v6;
  return result;
}

uint64_t sub_100592B8C()
{
  v1 = v0;
  v2 = *v0;
  sub_100058000(&qword_100782420);
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

uint64_t sub_100592DEC()
{
  v1 = v0;
  v35 = type metadata accessor for IndexPath();
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_100058000(&qword_10078C4D8);
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
      sub_10059A488(&qword_100769AC0, &type metadata accessor for IndexPath);
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

uint64_t sub_100593148()
{
  v1 = v0;
  v35 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_100058000(&qword_10078E090);
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
      sub_10059A488(&unk_10076BB20, &type metadata accessor for TTRRemindersListViewModel.SectionID);
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

uint64_t sub_1005934A4()
{
  v1 = v0;
  v2 = *v0;
  sub_100058000(&qword_10078C4E8);
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
      v16 = *(*(v2 + 48) + (v13 | (v5 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v16);
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

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + v12) = v16;
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

uint64_t sub_1005936F4()
{
  v1 = v0;
  v2 = *v0;
  sub_100058000(&qword_10078E0D0);
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
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_16:
      v19 = *(*(v2 + 48) + (v16 | (v5 << 6)));
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v12 = -1 << *(v4 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~*(v11 + 8 * (v13 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v12) >> 6;
        while (++v14 != v21 || (v20 & 1) == 0)
        {
          v22 = v14 == v21;
          if (v14 == v21)
          {
            v14 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v14);
          if (v23 != -1)
          {
            v15 = __clz(__rbit64(~v23)) + (v14 << 6);
            goto LABEL_8;
          }
        }

LABEL_31:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v13) & ~*(v11 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v4 + 48) + v15) = v19;
      ++*(v4 + 16);
    }

    v17 = v5;
    while (1)
    {
      v5 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v5 >= v10)
      {
        break;
      }

      v18 = v6[v5];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
        goto LABEL_16;
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

uint64_t sub_100593A10()
{
  v1 = v0;
  v35 = type metadata accessor for UUID();
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_100058000(&qword_10078E098);
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
      sub_10059A488(&qword_10076BB40, &type metadata accessor for UUID);
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

uint64_t sub_100593D6C()
{
  v1 = v0;
  v2 = *v0;
  sub_100058000(&qword_10078E0C8);
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
      v16 = *(*(v2 + 48) + (v13 | (v5 << 6)));
      Hasher.init(_seed:)();
      String.hash(into:)();

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

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + v12) = v16;
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

uint64_t sub_100594020()
{
  v1 = v0;
  v35 = type metadata accessor for TTRListOrCustomSmartList();
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_100058000(&qword_10078E0B0);
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
      sub_10059A488(&qword_100786578, &type metadata accessor for TTRListOrCustomSmartList);
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

Swift::Int sub_1005943A0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100058000(&qword_100782428);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_100003540(0, &qword_10076BA50);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_100591D28(v9 + 1, &qword_100782428);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_1005945B0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100058000(&qword_1007823F8);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for REMObjectID_Codable();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_100591D28(v9 + 1, &qword_1007823F8);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_1005947D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  if (a2)
  {
    sub_100058000(a3);
    v7 = static _SetStorage.convert(_:capacity:)();
    v20 = v7;
    __CocoaSet.makeIterator()();
    for (; __CocoaSet.Iterator.next()(); ++*(v7 + 16))
    {
      sub_100058000(a5);
      swift_dynamicCast();
      v14 = *(v7 + 16);
      if (*(v7 + 24) <= v14)
      {
        sub_100592944(v14 + 1, a3);
        v7 = v20;
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(*(v19 + 16));
      result = Hasher._finalize()();
      v9 = v7 + 56;
      v10 = -1 << *(v7 + 32);
      v11 = result & ~v10;
      v12 = v11 >> 6;
      if (((-1 << v11) & ~*(v7 + 56 + 8 * (v11 >> 6))) != 0)
      {
        v13 = __clz(__rbit64((-1 << v11) & ~*(v7 + 56 + 8 * (v11 >> 6)))) | v11 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = 0;
        v16 = (63 - v10) >> 6;
        do
        {
          if (++v12 == v16 && (v15 & 1) != 0)
          {
            __break(1u);
            return result;
          }

          v17 = v12 == v16;
          if (v12 == v16)
          {
            v12 = 0;
          }

          v15 |= v17;
          v18 = *(v9 + 8 * v12);
        }

        while (v18 == -1);
        v13 = __clz(__rbit64(~v18)) + (v12 << 6);
      }

      *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v7 + 48) + 8 * v13) = v19;
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v7;
}

unint64_t sub_1005949E0(uint64_t a1, void *a2)
{
  NSObject._rawHashValue(seed:)(a2[5]);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

unint64_t sub_100594A64(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*(a1 + 16));
  Hasher._finalize()();
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_100594B08(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10059144C();
  }

  else
  {
    if (v11 > v10)
    {
      sub_10058E63C(&type metadata accessor for TTRRemindersListViewModel.ItemID, &qword_10078C4E0);
      goto LABEL_12;
    }

    sub_10058E874();
  }

  v12 = *v3;
  sub_10059A488(&qword_10076FE50, &type metadata accessor for TTRRemindersListViewModel.ItemID);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_10059A488(&qword_10076BB60, &type metadata accessor for TTRRemindersListViewModel.ItemID);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100594DD0(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = type metadata accessor for TTRSectionID();
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
    sub_1005917A8();
  }

  else
  {
    if (v12 > v11)
    {
      sub_10058E63C(&type metadata accessor for TTRSectionID, &qword_10078E0F0);
      goto LABEL_12;
    }

    sub_10058EB90();
  }

  v13 = *v3;
  sub_10059A488(&qword_1007758E0, &type metadata accessor for TTRSectionID);
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
      sub_10059A488(&qword_10076BE70, &type metadata accessor for TTRSectionID);
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

uint64_t sub_100595098(uint64_t result, unint64_t a2, char a3)
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
    sub_100591B04();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_10058DF28();
      a2 = v7;
      goto LABEL_12;
    }

    sub_10058EEAC();
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

void sub_1005951B8(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100591D28(v6 + 1, &qword_1007823F8);
  }

  else
  {
    if (v7 > v6)
    {
      sub_10058E068(&qword_1007823F8);
      goto LABEL_12;
    }

    sub_10058F09C(v6 + 1, &qword_1007823F8);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for REMObjectID_Codable();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_100595348(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
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
    sub_100591F48();
  }

  else
  {
    if (v12 > v11)
    {
      sub_10058E63C(&type metadata accessor for TTRRemindersListViewModel.Item, &qword_10078E0A0);
      goto LABEL_12;
    }

    sub_10058F2A8();
  }

  v13 = *v3;
  sub_10059A488(&qword_100776308, &type metadata accessor for TTRRemindersListViewModel.Item);
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
      sub_10059A488(&qword_100768B68, &type metadata accessor for TTRRemindersListViewModel.Item);
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

Swift::Int sub_100595610(Swift::Int result, unint64_t a2, char a3)
{
  v27 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_50;
  }

  if (a3)
  {
    sub_1005922A4();
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_10058E50C(&qword_10078E0E0);
      goto LABEL_50;
    }

    sub_10058F5C4();
  }

  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();

  result = Hasher._finalize()();
  v8 = -1 << *(v7 + 32);
  a2 = result & ~v8;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v9 = ~v8;
    do
    {
      v10 = *(*(v7 + 48) + a2);
      if (v10 > 2)
      {
        if (v10 == 3)
        {
          v11 = 0x6F6E6E4177656976;
          v12 = 0xEE006E6F69746174;
        }

        else
        {
          if (v10 == 4)
          {
            v11 = 0x75736F6C63736964;
          }

          else
          {
            v11 = 0xD000000000000016;
          }

          if (v10 == 4)
          {
            v12 = 0xEF65746174536572;
          }

          else
          {
            v12 = 0x800000010066E7D0;
          }
        }
      }

      else if (*(*(v7 + 48) + a2))
      {
        if (v10 == 1)
        {
          v11 = 0x74786554656D616ELL;
        }

        else
        {
          v11 = 0x6F74617261706573;
        }

        if (v10 == 1)
        {
          v12 = 0xEC00000077656956;
        }

        else
        {
          v12 = 0xE900000000000072;
        }
      }

      else
      {
        v11 = 0xD000000000000018;
        v12 = 0x800000010066E780;
      }

      v13 = 0x75736F6C63736964;
      if (v27 != 4)
      {
        v13 = 0xD000000000000016;
      }

      v14 = 0xEF65746174536572;
      if (v27 != 4)
      {
        v14 = 0x800000010066E7D0;
      }

      if (v27 == 3)
      {
        v13 = 0x6F6E6E4177656976;
        v14 = 0xEE006E6F69746174;
      }

      v15 = 0xD000000000000018;
      v16 = 0x74786554656D616ELL;
      if (v27 != 1)
      {
        v16 = 0x6F74617261706573;
      }

      v17 = 0xEC00000077656956;
      if (v27 != 1)
      {
        v17 = 0xE900000000000072;
      }

      if (v27)
      {
        v15 = v16;
        v18 = v17;
      }

      else
      {
        v18 = 0x800000010066E780;
      }

      v19 = v27 <= 2u ? v15 : v13;
      v20 = v27 <= 2u ? v18 : v14;
      if (v11 == v19 && v12 == v20)
      {
        goto LABEL_53;
      }

      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v21)
      {
        goto LABEL_54;
      }

      a2 = (a2 + 1) & v9;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_50:
  v22 = *v26;
  *(*v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v22 + 48) + a2) = v27;
  v23 = *(v22 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v22 + 16) = v25;
    return result;
  }

  __break(1u);
LABEL_53:

LABEL_54:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100595A28(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1005925E8();
  }

  else
  {
    if (v11 > v10)
    {
      sub_10058E63C(&type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier, &unk_10078C4F0);
      goto LABEL_12;
    }

    sub_10058F8D8();
  }

  v12 = *v3;
  sub_10059A488(&qword_1007727B0, &type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_10059A488(&qword_10076B7A0, &type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_100595CF0(Swift::Int result, unint64_t a2, char a3, uint64_t *a4, uint64_t a5, uint64_t *a6)
{
  v8 = result;
  v9 = *(*v6 + 16);
  v10 = *(*v6 + 24);
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v7 = a6;
    sub_100592944(v9 + 1, a4);
  }

  else
  {
    if (v10 > v9)
    {
      v11 = a2;
      result = sub_10058E1E4(a4);
      a2 = v11;
      goto LABEL_12;
    }

    v7 = a6;
    sub_10058FBF4(v9 + 1, a4);
  }

  v12 = *v6;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*(v8 + 16));
  result = Hasher._finalize()();
  v13 = -1 << *(v12 + 32);
  a2 = result & ~v13;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v14 = ~v13;
    while (*(*(*(v12 + 48) + 8 * a2) + 16) != *(v8 + 16))
    {
      a2 = (a2 + 1) & v14;
      if (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v15 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = v8;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return result;
  }

  __break(1u);
LABEL_15:
  sub_100058000(v7);
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_100595E78(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
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
    sub_100592B8C();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_10058E324();
      goto LABEL_16;
    }

    sub_10058FE14();
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

uint64_t sub_100595FF8(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100592DEC();
  }

  else
  {
    if (v11 > v10)
    {
      sub_10058E63C(&type metadata accessor for IndexPath, &qword_10078C4D8);
      goto LABEL_12;
    }

    sub_10059004C();
  }

  v12 = *v3;
  sub_10059A488(&qword_100769AC0, &type metadata accessor for IndexPath);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_10059A488(&unk_100772710, &type metadata accessor for IndexPath);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_1005962C0(Swift::Int result, unint64_t a2, char a3)
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
    sub_1005934A4();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_10058E50C(&qword_10078C4E8);
      a2 = v7;
      goto LABEL_12;
    }

    sub_100590684();
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v4);
  result = Hasher._finalize()();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + a2) != v4)
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
  *(*(v11 + 48) + a2) = v4;
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

uint64_t sub_100596420(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = type metadata accessor for TTRRemindersListViewModel.SectionID();
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
    sub_100593148();
  }

  else
  {
    if (v12 > v11)
    {
      sub_10058E63C(&type metadata accessor for TTRRemindersListViewModel.SectionID, &qword_10078E090);
      goto LABEL_12;
    }

    sub_100590368();
  }

  v13 = *v3;
  sub_10059A488(&unk_10076BB20, &type metadata accessor for TTRRemindersListViewModel.SectionID);
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
      sub_10059A488(&qword_100768B80, &type metadata accessor for TTRRemindersListViewModel.SectionID);
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

Swift::Int sub_1005966E8(Swift::Int result, unint64_t a2, char a3)
{
  v28 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_47;
  }

  if (a3)
  {
    sub_1005936F4();
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_10058E50C(&qword_10078E0D0);
      goto LABEL_47;
    }

    sub_1005908A4();
  }

  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();

  result = Hasher._finalize()();
  v8 = -1 << *(v7 + 32);
  a2 = result & ~v8;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v27 = ~v8;
    v9 = 0xEF726F6C6F43646ELL;
    do
    {
      v10 = *(*(v7 + 48) + a2);
      if (v10 <= 1)
      {
        if (*(*(v7 + 48) + a2))
        {
          v11 = 0x6F74617261706573;
        }

        else
        {
          v11 = 0xD000000000000010;
        }

        if (*(*(v7 + 48) + a2))
        {
          v12 = 0xE900000000000072;
        }

        else
        {
          v12 = 0x800000010066E810;
        }
      }

      else if (v10 == 2)
      {
        v11 = 0xD00000000000001BLL;
        v12 = 0x800000010066E830;
      }

      else
      {
        if (v10 == 3)
        {
          v11 = 0x756F72676B636162;
        }

        else
        {
          v11 = 0xD000000000000014;
        }

        if (v10 == 3)
        {
          v12 = v9;
        }

        else
        {
          v12 = 0x800000010066E860;
        }
      }

      v13 = 0xD00000000000001BLL;
      v14 = 0xD000000000000014;
      if (v28 == 3)
      {
        v14 = 0x756F72676B636162;
      }

      v15 = v9;
      if (v28 != 3)
      {
        v9 = 0x800000010066E860;
      }

      if (v28 == 2)
      {
        v16 = 0x800000010066E830;
      }

      else
      {
        v13 = v14;
        v16 = v9;
      }

      if (v28)
      {
        v17 = 0x6F74617261706573;
      }

      else
      {
        v17 = 0xD000000000000010;
      }

      v18 = 0xE900000000000072;
      if (!v28)
      {
        v18 = 0x800000010066E810;
      }

      v19 = v28 <= 1u ? v17 : v13;
      v20 = v28 <= 1u ? v18 : v16;
      if (v11 == v19 && v12 == v20)
      {
        goto LABEL_50;
      }

      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v21)
      {
        goto LABEL_51;
      }

      a2 = (a2 + 1) & v27;
      v9 = v15;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_47:
  v22 = *v26;
  *(*v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v22 + 48) + a2) = v28;
  v23 = *(v22 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v22 + 16) = v25;
    return result;
  }

  __break(1u);
LABEL_50:

LABEL_51:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100596A48(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100593A10();
  }

  else
  {
    if (v11 > v10)
    {
      sub_10058E63C(&type metadata accessor for UUID, &qword_10078E098);
      goto LABEL_12;
    }

    sub_100590B90();
  }

  v12 = *v3;
  sub_10059A488(&qword_10076BB40, &type metadata accessor for UUID);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_10059A488(&qword_10076BB48, &type metadata accessor for UUID);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_100596D10(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_100593D6C();
    }

    else
    {
      if (v7 > v6)
      {
        result = sub_10058E50C(&qword_10078E0C8);
        goto LABEL_28;
      }

      sub_100590EAC();
    }

    v8 = *v3;
    Hasher.init(_seed:)();
    String.hash(into:)();

    result = Hasher._finalize()();
    v9 = -1 << *(v8 + 32);
    a2 = result & ~v9;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v10 = ~v9;
      do
      {
        if (*(*(v8 + 48) + a2))
        {
          if (*(*(v8 + 48) + a2) == 1)
          {
            v11 = 0x6F697463656C6573;
            v12 = 0xE90000000000006ELL;
            v13 = v5;
            if (!v5)
            {
              goto LABEL_24;
            }
          }

          else
          {
            v11 = 0xD000000000000014;
            v12 = 0x800000010066E890;
            v13 = v5;
            if (!v5)
            {
LABEL_24:
              v15 = 0xE700000000000000;
              if (v11 == 0x736E6F74747562)
              {
                goto LABEL_25;
              }

              goto LABEL_26;
            }
          }
        }

        else
        {
          v12 = 0xE700000000000000;
          v11 = 0x736E6F74747562;
          v13 = v5;
          if (!v5)
          {
            goto LABEL_24;
          }
        }

        if (v13 == 1)
        {
          v14 = 0x6F697463656C6573;
        }

        else
        {
          v14 = 0xD000000000000014;
        }

        if (v13 == 1)
        {
          v15 = 0xE90000000000006ELL;
        }

        else
        {
          v15 = 0x800000010066E890;
        }

        if (v11 == v14)
        {
LABEL_25:
          if (v12 == v15)
          {
            goto LABEL_31;
          }
        }

LABEL_26:
        v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v16)
        {
          goto LABEL_32;
        }

        a2 = (a2 + 1) & v10;
      }

      while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_28:
  v17 = *v21;
  *(*v21 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v17 + 48) + a2) = v5;
  v18 = *(v17 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_31:

LABEL_32:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v20;
  }

  return result;
}

uint64_t sub_100596FC4(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = type metadata accessor for TTRListOrCustomSmartList();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100594020();
  }

  else
  {
    if (v11 > v10)
    {
      sub_10058E63C(&type metadata accessor for TTRListOrCustomSmartList, &qword_10078E0B0);
      goto LABEL_12;
    }

    sub_100591130();
  }

  v12 = *v3;
  sub_10059A488(&qword_100786578, &type metadata accessor for TTRListOrCustomSmartList);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_10059A488(&qword_10078E0A8, &type metadata accessor for TTRListOrCustomSmartList);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10059728C(uint64_t a1, uint64_t a2)
{
  v62 = a1;
  v63 = a2;
  v2 = type metadata accessor for TTRSection();
  v59 = *(v2 - 8);
  v60 = v2;
  __chkstk_darwin(v2);
  v58 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRRemindersListReminderActionTarget(0);
  __chkstk_darwin(v4);
  v61 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = (&v58 - v7);
  __chkstk_darwin(v9);
  v11 = (&v58 - v10);
  __chkstk_darwin(v12);
  v14 = (&v58 - v13);
  __chkstk_darwin(v15);
  v17 = (&v58 - v16);
  __chkstk_darwin(v18);
  v20 = (&v58 - v19);
  __chkstk_darwin(v21);
  v23 = &v58 - v22;
  v24 = sub_100058000(&qword_10078E0D8);
  __chkstk_darwin(v24 - 8);
  v26 = &v58 - v25;
  v28 = (&v58 + *(v27 + 56) - v25);
  sub_10059A648(v62, &v58 - v25, type metadata accessor for TTRRemindersListReminderActionTarget);
  sub_10059A648(v63, v28, type metadata accessor for TTRRemindersListReminderActionTarget);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_10059A648(v26, v23, type metadata accessor for TTRRemindersListReminderActionTarget);
      if (swift_getEnumCaseMultiPayload())
      {
LABEL_35:
        sub_1000079B4(v26, &qword_10078E0D8);
        goto LABEL_36;
      }

      v39 = *v23 == *v28;
      goto LABEL_31;
    }

    if (EnumCaseMultiPayload == 1)
    {
      sub_10059A648(v26, v20, type metadata accessor for TTRRemindersListReminderActionTarget);
      v30 = *v20;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
LABEL_14:
        v38 = *v28;
        sub_100003540(0, &qword_100775690);
LABEL_15:
        v39 = static NSObject.== infix(_:_:)();

LABEL_31:
        sub_1005838CC(v26, type metadata accessor for TTRRemindersListReminderActionTarget);
        return v39 & 1;
      }
    }

    else
    {
      sub_10059A648(v26, v17, type metadata accessor for TTRRemindersListReminderActionTarget);
      v30 = *v17;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        goto LABEL_14;
      }
    }

LABEL_24:

    goto LABEL_35;
  }

  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_10059A648(v26, v14, type metadata accessor for TTRRemindersListReminderActionTarget);
      v30 = *v14;
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v31 = *v28;
        v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v33;
        if (v32 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v34 == v35)
        {

LABEL_40:
          sub_1005838CC(v26, type metadata accessor for TTRRemindersListReminderActionTarget);
          v39 = 1;
          return v39 & 1;
        }

        v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v37)
        {
          goto LABEL_40;
        }

        goto LABEL_28;
      }

      goto LABEL_24;
    }

    sub_10059A648(v26, v11, type metadata accessor for TTRRemindersListReminderActionTarget);
    v48 = *v11;
    v30 = v11[1];
    if (swift_getEnumCaseMultiPayload() != 4)
    {

      goto LABEL_35;
    }

    v49 = *v28;
    v38 = v28[1];
    sub_100003540(0, &qword_100775690);
    v50 = static NSObject.== infix(_:_:)();

    if ((v50 & 1) == 0)
    {

LABEL_28:
      sub_1005838CC(v26, type metadata accessor for TTRRemindersListReminderActionTarget);
LABEL_36:
      v39 = 0;
      return v39 & 1;
    }

    goto LABEL_15;
  }

  if (EnumCaseMultiPayload != 5)
  {
    v51 = v61;
    sub_10059A648(v26, v61, type metadata accessor for TTRRemindersListReminderActionTarget);
    if (swift_getEnumCaseMultiPayload() != 6)
    {
      (*(v59 + 8))(v51, v60);
      goto LABEL_35;
    }

    v53 = v58;
    v52 = v59;
    v54 = v28;
    v55 = v60;
    (*(v59 + 32))(v58, v54, v60);
    v39 = static TTRSection.== infix(_:_:)();
    v56 = *(v52 + 8);
    v56(v53, v55);
    v56(v51, v55);
    goto LABEL_31;
  }

  sub_10059A648(v26, v8, type metadata accessor for TTRRemindersListReminderActionTarget);
  v41 = *v8;
  v40 = v8[1];
  v42 = v8[2];
  if (swift_getEnumCaseMultiPayload() != 5)
  {

    goto LABEL_35;
  }

  v43 = v26;
  v45 = *v28;
  v44 = v28[1];
  v46 = v28[2];
  sub_100003540(0, &qword_100775690);
  v47 = static NSObject.== infix(_:_:)();

  if ((v47 & 1) == 0 || (static NSObject.== infix(_:_:)() & 1) == 0)
  {

    sub_1005838CC(v43, type metadata accessor for TTRRemindersListReminderActionTarget);
    goto LABEL_36;
  }

  v39 = static NSObject.== infix(_:_:)();

  sub_1005838CC(v43, type metadata accessor for TTRRemindersListReminderActionTarget);
  return v39 & 1;
}

uint64_t sub_10059799C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
  v47 = *(v4 - 8);
  v48 = v4;
  __chkstk_darwin(v4);
  v46 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRRemindersListReminderActionTargetExtended(0);
  __chkstk_darwin(v6);
  v8 = (&v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v11 = (&v45 - v10);
  __chkstk_darwin(v12);
  v14 = &v45 - v13;
  __chkstk_darwin(v15);
  v17 = &v45 - v16;
  v18 = sub_100058000(&qword_10078E088);
  __chkstk_darwin(v18 - 8);
  v20 = &v45 - v19;
  v22 = (&v45 + *(v21 + 56) - v19);
  sub_10059A648(a1, &v45 - v19, type metadata accessor for TTRRemindersListReminderActionTargetExtended);
  sub_10059A648(a2, v22, type metadata accessor for TTRRemindersListReminderActionTargetExtended);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_10059A648(v20, v11, type metadata accessor for TTRRemindersListReminderActionTargetExtended);
      v25 = *v11;
      v26 = v11[1];
      if (swift_getEnumCaseMultiPayload() != 2)
      {

        goto LABEL_25;
      }

      v28 = *v22;
      v27 = v22[1];
      sub_100003540(0, &qword_100775690);
      v29 = static NSObject.== infix(_:_:)();

      if (v29)
      {
        if (v26)
        {
          if (v27)
          {
            sub_100003540(0, &qword_10076ABC0);
            v30 = v26;
            v31 = static NSObject.== infix(_:_:)();

            if ((v31 & 1) == 0)
            {
              goto LABEL_33;
            }

LABEL_28:
            sub_1005838CC(v20, type metadata accessor for TTRRemindersListReminderActionTargetExtended);
            v24 = 1;
            return v24 & 1;
          }

          v27 = v26;
        }

        else if (!v27)
        {
          goto LABEL_28;
        }
      }

      else
      {
      }

LABEL_33:
      sub_1005838CC(v20, type metadata accessor for TTRRemindersListReminderActionTargetExtended);
      goto LABEL_34;
    }

    sub_10059A648(v20, v8, type metadata accessor for TTRRemindersListReminderActionTargetExtended);
    v36 = *v8;
    if (swift_getEnumCaseMultiPayload() != 3)
    {

      goto LABEL_25;
    }

    v37 = *v22;
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;
    if (v38 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v40 == v41)
    {
    }

    else
    {
      v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v43 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    goto LABEL_28;
  }

  if (EnumCaseMultiPayload)
  {
    sub_10059A648(v20, v14, type metadata accessor for TTRRemindersListReminderActionTargetExtended);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v33 = v46;
      v32 = v47;
      v34 = v48;
      (*(v47 + 32))(v46, v22, v48);
      v24 = static TTRRemindersListTargetContainer.TargetList.== infix(_:_:)();
      v35 = *(v32 + 8);
      v35(v33, v34);
      v35(v14, v34);
      goto LABEL_14;
    }

    (*(v47 + 8))(v14, v48);
    goto LABEL_25;
  }

  sub_10059A648(v20, v17, type metadata accessor for TTRRemindersListReminderActionTargetExtended);
  if (swift_getEnumCaseMultiPayload())
  {
LABEL_25:
    sub_1000079B4(v20, &qword_10078E088);
LABEL_34:
    v24 = 0;
    return v24 & 1;
  }

  v24 = *v17 == *v22;
LABEL_14:
  sub_1005838CC(v20, type metadata accessor for TTRRemindersListReminderActionTargetExtended);
  return v24 & 1;
}

uint64_t sub_100597ED4(uint64_t a1, uint64_t *a2)
{
  v350 = a1;
  v351 = a2;
  v2 = type metadata accessor for DateComponents();
  v344 = *(v2 - 1);
  v345 = v2;
  __chkstk_darwin(v2);
  v326 = &v321 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v327 = &v321 - v5;
  __chkstk_darwin(v6);
  v324 = &v321 - v7;
  __chkstk_darwin(v8);
  v325 = &v321 - v9;
  v10 = type metadata accessor for TTRSection();
  v11 = *(v10 - 8);
  v342 = v10;
  v343 = v11;
  __chkstk_darwin(v10);
  v340 = &v321 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v341 = &v321 - v14;
  v15 = sub_100058000(&unk_100775620);
  v16 = *(v15 - 8);
  v348 = v15;
  v349 = v16;
  __chkstk_darwin(v15);
  v328 = &v321 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v334 = &v321 - v19;
  __chkstk_darwin(v20);
  v329 = &v321 - v21;
  __chkstk_darwin(v22);
  v331 = &v321 - v23;
  __chkstk_darwin(v24);
  v330 = &v321 - v25;
  __chkstk_darwin(v26);
  v323 = &v321 - v27;
  __chkstk_darwin(v28);
  v322 = &v321 - v29;
  __chkstk_darwin(v30);
  v347 = &v321 - v31;
  __chkstk_darwin(v32);
  v333 = &v321 - v33;
  __chkstk_darwin(v34);
  v332 = &v321 - v35;
  __chkstk_darwin(v36);
  v321 = &v321 - v37;
  __chkstk_darwin(v38);
  v346 = &v321 - v39;
  __chkstk_darwin(v40);
  v42 = &v321 - v41;
  __chkstk_darwin(v43);
  v45 = &v321 - v44;
  v46 = type metadata accessor for TTRRemindersListMovingRemindersParams(0);
  __chkstk_darwin(v46);
  v338 = (&v321 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v48);
  v337 = (&v321 - v49);
  __chkstk_darwin(v50);
  v339 = (&v321 - v51);
  __chkstk_darwin(v52);
  v336 = (&v321 - v53);
  __chkstk_darwin(v54);
  v335 = (&v321 - v55);
  __chkstk_darwin(v56);
  v58 = (&v321 - v57);
  __chkstk_darwin(v59);
  v61 = (&v321 - v60);
  __chkstk_darwin(v62);
  v64 = (&v321 - v63);
  __chkstk_darwin(v65);
  v67 = (&v321 - v66);
  v68 = sub_100058000(&qword_10078E3E0);
  __chkstk_darwin(v68 - 8);
  v70 = &v321 - v69;
  v72 = (&v321 + *(v71 + 56) - v69);
  sub_10059A648(v350, &v321 - v69, type metadata accessor for TTRRemindersListMovingRemindersParams);
  v73 = v351;
  v351 = v72;
  v74 = v72;
  v75 = v70;
  sub_10059A648(v73, v74, type metadata accessor for TTRRemindersListMovingRemindersParams);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    v94 = v346;
    v95 = v347;
    v344 = v42;
    v345 = v45;
    if (EnumCaseMultiPayload <= 1)
    {
      v96 = v349;
      if (EnumCaseMultiPayload)
      {
        v350 = v70;
        sub_10059A648(v70, v64, type metadata accessor for TTRRemindersListMovingRemindersParams);
        v186 = *v64;
        v187 = v64[1];
        v188 = *(sub_100058000(&qword_100776368) + 64);
        v189 = v351;
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v347 = v187;
          v190 = *v189;
          v345 = v189[1];
          v191 = v189;
          v192 = *(v96 + 32);
          v193 = v348;
          v192(v94, v64 + v188, v348);
          v194 = v191 + v188;
          v195 = v321;
          v192(v321, v194, v193);
          v196 = sub_100126570(v186, v190);

          if (v196)
          {
            sub_100003540(0, &qword_100775690);
            v197 = v347;
            v198 = v345;
            v199 = static NSObject.== infix(_:_:)();
            v176 = v350;
            if (v199)
            {
              sub_100003540(0, &qword_10076BB00);
              sub_1000072CC(&qword_10078E3E8, &qword_10076BB00);
              v92 = static TTRRelativeInsertionPosition<A>.== infix(_:_:)();

              v200 = *(v96 + 8);
              v201 = v348;
              v200(v195, v348);
              v200(v94, v201);
              sub_1005838CC(v176, type metadata accessor for TTRRemindersListMovingRemindersParams);
              return v92 & 1;
            }

            v300 = *(v96 + 8);
            v301 = v348;
            v300(v195, v348);
            v300(v94, v301);
            goto LABEL_94;
          }

          v283 = *(v96 + 8);
          v283(v195, v193);
          v283(v94, v193);
LABEL_76:
          v286 = v350;
          goto LABEL_109;
        }

        (*(v96 + 8))(v64 + v188, v348);

        v75 = v350;
LABEL_58:
        sub_1000079B4(v75, &qword_10078E3E0);
LABEL_110:
        v92 = 0;
        return v92 & 1;
      }

      sub_10059A648(v70, v67, type metadata accessor for TTRRemindersListMovingRemindersParams);
      v97 = *v67;
      v98 = v67[1];
      v99 = sub_100058000(&qword_100776370);
      v100 = *(v99 + 64);
      v101 = *(v99 + 80);
      v102 = *(v67 + v101);
      v103 = v351;
      if (swift_getEnumCaseMultiPayload())
      {

        (*(v96 + 8))(v67 + v100, v348);
        goto LABEL_58;
      }

      v347 = v98;
      v350 = v70;
      v260 = *v103;
      v346 = v103[1];
      v343 = *(v103 + v101);
      v261 = *(v96 + 32);
      v262 = v348;
      v261(v345, v67 + v100, v348);
      v263 = v103 + v100;
      v264 = v344;
      v261(v344, v263, v262);
      v265 = sub_100126570(v97, v260);

      if ((v265 & 1) == 0)
      {

        v290 = *(v96 + 8);
        v290(v264, v262);
        v290(v345, v262);
        goto LABEL_76;
      }

      v266 = v343;
      sub_100003540(0, &qword_100775690);
      v268 = v346;
      v267 = v347;
      v269 = static NSObject.== infix(_:_:)();
      v130 = v350;
      if ((v269 & 1) == 0)
      {

        v305 = v348;
        v306 = *(v349 + 8);
        v306(v344, v348);
        v307 = v345;
LABEL_90:
        v306(v307, v305);
        goto LABEL_108;
      }

      v270 = v102;
      sub_100003540(0, &qword_10076BB00);
      sub_1000072CC(&qword_10078E3E8, &qword_10076BB00);
      v271 = v344;
      v272 = v345;
      v273 = static TTRRelativeInsertionPosition<A>.== infix(_:_:)();
      v275 = v348;
      v274 = v349;
      if ((v273 & 1) == 0)
      {

        v313 = *(v274 + 8);
        v313(v271, v275);
        goto LABEL_99;
      }

      if (v270)
      {
        if (v266)
        {

          sub_10058B018(v270, v266);
          v277 = v276;

          swift_bridgeObjectRelease_n();
          v278 = *(v274 + 8);
          v278(v344, v275);
          v278(v272, v275);
          if ((v277 & 1) == 0)
          {
LABEL_108:
            v286 = v130;
            goto LABEL_109;
          }

LABEL_112:
          v316 = v130;
          goto LABEL_113;
        }

        v313 = *(v274 + 8);
        v313(v344, v275);
LABEL_99:
        v313(v272, v275);
        goto LABEL_108;
      }

      v317 = *(v274 + 8);
      v317(v344, v275);
      v317(v272, v275);
      if (!v266)
      {
        goto LABEL_112;
      }

LABEL_107:

      goto LABEL_108;
    }

    v104 = v349;
    if (EnumCaseMultiPayload != 2)
    {
      v350 = v70;
      sub_10059A648(v70, v58, type metadata accessor for TTRRemindersListMovingRemindersParams);
      v202 = *v58;
      v136 = v58[1];
      v203 = *(sub_100058000(&qword_10076E908) + 64);
      v204 = v351;
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v205 = *v204;
        v345 = v204[1];
        v346 = v136;
        v206 = v104;
        v207 = v204;
        v208 = *(v104 + 32);
        v209 = v348;
        v208(v95, v58 + v203, v348);
        v210 = v207 + v203;
        v211 = v322;
        v208(v322, v210, v209);
        v212 = sub_100126570(v202, v205);

        if ((v212 & 1) == 0)
        {

          v284 = *(v104 + 8);
          v284(v211, v209);
          v284(v95, v209);
          goto LABEL_76;
        }

        sub_100003540(0, &qword_100775690);
        v214 = v345;
        v213 = v346;
        v215 = static NSObject.== infix(_:_:)();
        v150 = v350;
        if (v215)
        {
          sub_100003540(0, &qword_10076BB00);
          sub_1000072CC(&qword_10078E3E8, &qword_10076BB00);
          v92 = static TTRRelativeInsertionPosition<A>.== infix(_:_:)();

          v216 = *(v206 + 8);
          v217 = v211;
          v218 = v348;
          v216(v217, v348);
          v216(v95, v218);
          goto LABEL_39;
        }

        v302 = *(v206 + 8);
        v303 = v348;
        v302(v211, v348);
        v302(v95, v303);
LABEL_87:
        v286 = v150;
        goto LABEL_109;
      }

      (*(v104 + 8))(v58 + v203, v348);
LABEL_56:

      v75 = v350;
      goto LABEL_58;
    }

    sub_10059A648(v70, v61, type metadata accessor for TTRRemindersListMovingRemindersParams);
    v105 = *v61;
    v106 = v61[1];
    v107 = sub_100058000(&qword_100773398);
    v108 = *(v107 + 64);
    v109 = *(v107 + 80);
    v110 = *(v61 + v109);
    v111 = v351;
    if (swift_getEnumCaseMultiPayload() != 2)
    {

      (*(v104 + 8))(v61 + v108, v348);
      v75 = v70;
      goto LABEL_58;
    }

    v346 = v106;
    v347 = v110;
    v350 = v70;
    v112 = v104;
    v114 = *v111;
    v113 = v111[1];
    v344 = *(v111 + v109);
    v345 = v113;
    v115 = v112;
    v116 = *(v112 + 32);
    v117 = v332;
    v118 = v348;
    v116(v332, v61 + v108, v348);
    v119 = v111 + v108;
    v120 = v333;
    v116(v333, v119, v118);
    v121 = sub_100126570(v105, v114);

    if ((v121 & 1) == 0)
    {

      v282 = *(v115 + 8);
      v282(v120, v118);
      v282(v117, v118);
      goto LABEL_76;
    }

    v122 = v344;
    v123 = v346;
    v124 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v126 = v125;
    v127 = v345;
    v128 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v130 = v350;
    v131 = v347;
    if (v124 == v128 && v126 == v129)
    {

      v133 = v348;
      v132 = v349;
    }

    else
    {
      v294 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v133 = v348;
      v132 = v349;
      if ((v294 & 1) == 0)
      {

        v308 = *(v132 + 8);
        v308(v333, v133);
        v309 = v332;
        goto LABEL_96;
      }
    }

    sub_100003540(0, &qword_10076BB00);
    sub_1000072CC(&qword_10078E3E8, &qword_10076BB00);
    v296 = v332;
    v295 = v333;
    if (static TTRRelativeInsertionPosition<A>.== infix(_:_:)())
    {
      if (!v131)
      {

        v314 = *(v132 + 8);
        v314(v333, v133);
        v314(v296, v133);
        if (!v122)
        {
          goto LABEL_112;
        }

        goto LABEL_107;
      }

      if (v122)
      {

        sub_10058B018(v131, v122);
        v298 = v297;

        swift_bridgeObjectRelease_n();
        v299 = *(v132 + 8);
        v299(v333, v133);
        v299(v296, v133);
        if ((v298 & 1) == 0)
        {
          goto LABEL_108;
        }

        goto LABEL_112;
      }

      v308 = *(v132 + 8);
      v308(v333, v133);
    }

    else
    {

      v308 = *(v132 + 8);
      v308(v295, v133);
    }

    v309 = v296;
LABEL_96:
    v308(v309, v133);
    goto LABEL_108;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v350 = v70;
      v134 = v335;
      sub_10059A648(v70, v335, type metadata accessor for TTRRemindersListMovingRemindersParams);
      v135 = *v134;
      v136 = v134[1];
      v137 = *(sub_100058000(&qword_100776360) + 64);
      v138 = v351;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v139 = *v138;
        v347 = v138[1];
        v140 = v349;
        v141 = *(v349 + 32);
        v142 = v134 + v137;
        v143 = v323;
        v144 = v348;
        v141(v323, v142, v348);
        v145 = v138 + v137;
        v146 = v330;
        v141(v330, v145, v144);
        v147 = sub_100126570(v135, v139);

        if ((v147 & 1) == 0)
        {

          v288 = *(v140 + 8);
          v288(v146, v144);
          v288(v143, v144);
          goto LABEL_76;
        }

        sub_100003540(0, &qword_100775690);
        v148 = v347;
        v149 = static NSObject.== infix(_:_:)();
        v150 = v350;
        if (v149)
        {
          sub_100003540(0, &qword_10076BB00);
          sub_1000072CC(&qword_10078E3E8, &qword_10076BB00);
          v151 = v330;
          v92 = static TTRRelativeInsertionPosition<A>.== infix(_:_:)();

          v152 = *(v349 + 8);
          v152(v151, v144);
          v152(v143, v144);
LABEL_39:
          sub_1005838CC(v150, type metadata accessor for TTRRemindersListMovingRemindersParams);
          return v92 & 1;
        }

        v304 = *(v349 + 8);
        v304(v330, v144);
        v304(v143, v144);
        goto LABEL_87;
      }

      (*(v349 + 8))(v134 + v137, v348);
      goto LABEL_56;
    }

    v233 = v336;
    sub_10059A648(v70, v336, type metadata accessor for TTRRemindersListMovingRemindersParams);
    v234 = *v233;
    v235 = v233[1];
    v236 = v233[2];
    v237 = *(sub_100058000(&qword_100776358) + 80);
    v238 = v351;
    if (swift_getEnumCaseMultiPayload() != 5)
    {
      (*(v349 + 8))(v233 + v237, v348);

      v75 = v70;
      goto LABEL_58;
    }

    v346 = v236;
    v347 = v235;
    v350 = v70;
    v239 = *v238;
    v240 = v238[1];
    v345 = v238[2];
    v241 = v349;
    v242 = *(v349 + 32);
    v243 = v233 + v237;
    v244 = v331;
    v245 = v348;
    v242(v331, v243, v348);
    v246 = v238 + v237;
    v247 = v329;
    v242(v329, v246, v245);
    v248 = sub_100126570(v234, v239);

    if ((v248 & 1) == 0)
    {

      v289 = *(v241 + 8);
      v289(v247, v245);
      v289(v244, v245);
      goto LABEL_76;
    }

    v249 = v345;
    sub_100003540(0, &qword_100775690);
    v250 = v347;
    v251 = static NSObject.== infix(_:_:)();
    v130 = v350;
    if (v251)
    {
      v252 = v346;
      v253 = static NSObject.== infix(_:_:)();
      v255 = v348;
      v254 = v349;
      v256 = v331;
      if (v253)
      {
        sub_100003540(0, &qword_10076BB00);
        sub_1000072CC(&qword_10078E3E8, &qword_10076BB00);
        v257 = v252;
        v258 = v329;
        v92 = static TTRRelativeInsertionPosition<A>.== infix(_:_:)();

        v259 = *(v254 + 8);
        v259(v258, v255);
        v259(v256, v255);
        sub_1005838CC(v130, type metadata accessor for TTRRemindersListMovingRemindersParams);
        return v92 & 1;
      }

      v312 = *(v254 + 8);
      v312(v329, v255);
      v312(v256, v255);
      goto LABEL_108;
    }

    v305 = v348;
    v306 = *(v349 + 8);
    v306(v247, v348);
    v307 = v331;
    goto LABEL_90;
  }

  if (EnumCaseMultiPayload == 6)
  {
    v153 = v339;
    sub_10059A648(v70, v339, type metadata accessor for TTRRemindersListMovingRemindersParams);
    v154 = *v153;
    v155 = sub_100058000(&qword_100773378);
    v156 = v155[12];
    v157 = v155[16];
    v158 = v155[20];
    v159 = *(v153 + v158);
    v160 = v351;
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      v350 = v70;
      v161 = v153;
      v345 = *v160;
      v346 = *(v160 + v158);
      v347 = v159;
      v162 = *(v343 + 32);
      v163 = v153 + v156;
      v164 = v342;
      v162(v341, v163, v342);
      v165 = *(v349 + 32);
      v166 = v161 + v157;
      v167 = v348;
      v165(v334, v166, v348);
      v162(v340, v160 + v156, v164);
      v168 = v167;
      v169 = v160 + v157;
      v170 = v328;
      v165(v328, v169, v167);
      v171 = sub_100126570(v154, v345);

      if (v171)
      {
        v172 = v346;
        v174 = v340;
        v173 = v341;
        v175 = static TTRSection.== infix(_:_:)();
        v176 = v350;
        if (v175)
        {
          sub_100003540(0, &qword_10076BB00);
          sub_1000072CC(&qword_10078E3E8, &qword_10076BB00);
          v177 = v334;
          v178 = static TTRRelativeInsertionPosition<A>.== infix(_:_:)();
          v179 = v349;
          v180 = v170;
          v181 = v342;
          if (v178)
          {
            v182 = v343;
            if (v347)
            {
              if (v172)
              {

                sub_10058B018(v347, v172);
                LODWORD(v351) = v183;

                swift_bridgeObjectRelease_n();
                v184 = *(v179 + 8);
                v184(v328, v168);
                v185 = *(v182 + 8);
                v185(v174, v181);
                v184(v177, v168);
                v185(v173, v181);
                if (v351)
                {
                  goto LABEL_105;
                }
              }

              else
              {

                v319 = *(v179 + 8);
                v319(v328, v168);
                v320 = *(v182 + 8);
                v320(v174, v181);
                v319(v177, v168);
                v320(v173, v181);
              }
            }

            else
            {
              v351 = *(v349 + 8);
              (v351)(v328, v168);
              v315 = *(v182 + 8);
              v315(v174, v181);
              (v351)(v177, v168);
              v315(v173, v181);
              if (!v172)
              {
LABEL_105:
                v316 = v176;
LABEL_113:
                sub_1005838CC(v316, type metadata accessor for TTRRemindersListMovingRemindersParams);
                v92 = 1;
                return v92 & 1;
              }
            }
          }

          else
          {

            v310 = *(v179 + 8);
            v310(v180, v168);
            v311 = *(v343 + 8);
            v311(v174, v181);
            v310(v177, v168);
            v311(v173, v181);
          }
        }

        else
        {

          v291 = *(v349 + 8);
          v291(v170, v168);
          v292 = v342;
          v293 = *(v343 + 8);
          v293(v174, v342);
          v291(v334, v168);
          v293(v173, v292);
        }

LABEL_94:
        v286 = v176;
        goto LABEL_109;
      }

      v279 = *(v349 + 8);
      v279(v170, v167);
      v280 = v342;
      v281 = *(v343 + 8);
      v281(v340, v342);
      v279(v334, v167);
      v281(v341, v280);
      goto LABEL_76;
    }

    (*(v349 + 8))(v153 + v157, v348);
    (*(v343 + 8))(v153 + v156, v342);
    goto LABEL_58;
  }

  v77 = v351;
  if (EnumCaseMultiPayload != 7)
  {
    v219 = v338;
    sub_10059A648(v70, v338, type metadata accessor for TTRRemindersListMovingRemindersParams);
    v220 = *v219;
    v221 = *(sub_100058000(&qword_100776350) + 48);
    v222 = swift_getEnumCaseMultiPayload();
    v223 = v344;
    if (v222 == 8)
    {
      v224 = *v77;
      v225 = *(v344 + 4);
      v226 = v219 + v221;
      v227 = v327;
      v228 = v345;
      v225(v327, v226, v345);
      v229 = v77 + v221;
      v230 = v326;
      v225(v326, v229, v228);
      v231 = sub_100126570(v220, v224);

      if (v231)
      {
        v92 = static DateComponents.== infix(_:_:)();
        v232 = *(v223 + 1);
        v232(v230, v228);
        v232(v227, v228);
        sub_1005838CC(v70, type metadata accessor for TTRRemindersListMovingRemindersParams);
        return v92 & 1;
      }

      v287 = *(v223 + 1);
      v287(v230, v228);
      v287(v227, v228);
      v286 = v70;
      goto LABEL_109;
    }

    (*(v344 + 1))(v219 + v221, v345);
    goto LABEL_54;
  }

  v78 = v337;
  sub_10059A648(v70, v337, type metadata accessor for TTRRemindersListMovingRemindersParams);
  v79 = *v78;
  v80 = *(sub_100058000(&qword_100776350) + 48);
  v81 = swift_getEnumCaseMultiPayload();
  v82 = v344;
  if (v81 != 7)
  {
    (*(v344 + 1))(v78 + v80, v345);
LABEL_54:

    goto LABEL_58;
  }

  v83 = v70;
  v84 = v78;
  v85 = *v77;
  v86 = *(v344 + 4);
  v87 = v325;
  v88 = v345;
  v86(v325, v84 + v80, v345);
  v89 = v77 + v80;
  v90 = v324;
  v86(v324, v89, v88);
  v91 = sub_100126570(v79, v85);

  if ((v91 & 1) == 0)
  {
    v285 = *(v82 + 1);
    v285(v90, v88);
    v285(v87, v88);
    v286 = v83;
LABEL_109:
    sub_1005838CC(v286, type metadata accessor for TTRRemindersListMovingRemindersParams);
    goto LABEL_110;
  }

  v92 = static DateComponents.== infix(_:_:)();
  v93 = *(v82 + 1);
  v93(v90, v88);
  v93(v87, v88);
  sub_1005838CC(v83, type metadata accessor for TTRRemindersListMovingRemindersParams);
  return v92 & 1;
}

void sub_100599F5C(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      sub_100058000(&qword_1007823F8);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v38 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v36 = v1;
    while (1)
    {
      v8 = sub_10058B518(v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = NSObject._rawHashValue(seed:)(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        type metadata accessor for REMObjectID_Codable();
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = static NSObject.== infix(_:_:)();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v36;
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v36;
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v37 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = v3[5];
      v24 = *(v1 + 32 + 8 * v22);
      v25 = NSObject._rawHashValue(seed:)(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        type metadata accessor for REMObjectID_Codable();
        while (1)
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = static NSObject.== infix(_:_:)();

          if (v33)
          {
            break;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
          if (((1 << v27) & v29) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *&v6[8 * v28] = v30 | v29;
        *(v3[6] + 8 * v27) = v24;
        v34 = v3[2];
        v9 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        v3[2] = v35;
      }

      if (++v22 == v38)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

void *sub_10059A228(void *result, uint64_t a2)
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
    sub_100058000(&qword_10076DB18);
    v4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
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
        v8 = v3;
        --v6;
      }

      while (v6);
    }

    v9 = v3;
    return v5;
  }

  return result;
}

id sub_10059A2BC(unint64_t a1, id a2)
{
  v11 = a2;
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    do
    {
      for (i = 0; ; ++i)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v5 = *(a1 + 8 * i + 32);
        }

        a2 = v5;
        v6 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        sub_10058BD80(&v10, v5);

        if (v6 == v3)
        {
          return v11;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      v8 = a2;
      v9 = _CocoaArrayWrapper.endIndex.getter();
      a2 = v8;
      v3 = v9;
    }

    while (v9);
  }

  return a2;
}

uint64_t sub_10059A3B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10059A418(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&unk_10078A380);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10059A488(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10059A4D0(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRRemindersListViewModel.ListInfo() - 8);
  v4 = v1 + ((*(v3 + 80) + 56) & ~*(v3 + 80));
  v5 = &v4[*(v3 + 64)];
  v6 = *v5;
  if (v5[1])
  {
    v7 = 256;
  }

  else
  {
    v7 = 0;
  }

  v8 = v1[5];
  v9 = v1[6];
  sub_10000C36C(v1 + 2, v8);
  return (*(v9 + 8))(a1, v4, v7 | v6, v8, v9);
}

uint64_t sub_10059A5B4(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_10059A648(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10059A714(uint64_t a1, uint64_t (*a2)(void), void (*a3)(char *, char *))
{
  v19 = a3;
  v4 = a2(0);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v6);
  v11 = &v18 - v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    v15 = *(v5 + 16);
    v13 = v5 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v8, v16, v4);
      v19(v11, v8);
      result = (*(v13 - 8))(v11, v4);
      v16 += v17;
      --v12;
    }

    while (v12);
  }

  return result;
}

void sub_10059A870(uint64_t a1, uint64_t a2, int a3)
{
  v61 = a3;
  v60 = a1;
  v5 = type metadata accessor for TTRRemindersListSectionCreationLocation();
  v64 = *(v5 - 8);
  v65 = v5;
  __chkstk_darwin(v5);
  v57 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v63 = &v57 - v8;
  v9 = sub_100058000(&qword_10076E0D0);
  __chkstk_darwin(v9 - 8);
  v62 = &v57 - v10;
  v11 = type metadata accessor for TTRRemindersListUncommittedSection();
  v66 = *(v11 - 8);
  v67 = v11;
  __chkstk_darwin(v11);
  v59 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for TTRRemindersListViewModel.Item();
  v58 = *(v69 - 8);
  __chkstk_darwin(v69);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v57 - v16;
  v18 = sub_100058000(&qword_10078E0B8);
  __chkstk_darwin(v18 - 8);
  v20 = &v57 - v19;
  v21 = sub_100058000(&qword_10078E0C0);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v57 - v26;
  v68 = v3;

  v28 = a2;
  TTRRemindersListTreeViewModel.resolve(_:)();

  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_1000079B4(v20, &qword_10078E0B8);
    if (qword_100767468 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100003E30(v29, qword_10078D7D8);
    v31 = v63;
    v30 = v64;
    v32 = *(v64 + 16);
    v33 = v65;
    v32(v63, v28, v65);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v70 = v37;
      *v36 = 136315138;
      v32(v57, v31, v33);
      v38 = String.init<A>(describing:)();
      v40 = v39;
      (*(v30 + 8))(v31, v33);
      v41 = sub_100004060(v38, v40, &v70);

      *(v36 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v34, v35, "Cannot resolve SectionCreationLocation {location: %s}", v36, 0xCu);
      sub_100004758(v37);
    }

    else
    {

      (*(v30 + 8))(v31, v33);
    }
  }

  else
  {
    (*(v22 + 32))(v27, v20, v21);
    v42 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
    (*(*(v42 - 8) + 16))(v17, v60, v42);
    v43 = v58;
    v44 = v69;
    (*(v58 + 104))(v17, enum case for TTRRemindersListViewModel.Item.section(_:), v69);
    (*(v22 + 16))(v24, v27, v21);
    (*(v43 + 16))(v14, v17, v44);
    v45 = v59;
    TTRRemindersListUncommittedSection.init(location:item:)();
    v46 = sub_100058000(&unk_1007756F0);
    v47 = v46;
    v48 = v61;
    if (v61)
    {
      v65 = *(v46 + 48);
      v49 = v62;
      v50 = v27;
      v51 = v43;
      TTRRemindersListUncommittedSection.item.getter();
      v52 = enum case for TTREditingStateOption.InputType.unspecified(_:);
      v53 = type metadata accessor for TTREditingStateOption.InputType();
      v54 = v52;
      v43 = v51;
      v27 = v50;
      v44 = v69;
      (*(*(v53 - 8) + 104))(&v49[v65], v54, v53);
      v55 = 0;
    }

    else
    {
      v55 = 1;
      v49 = v62;
    }

    v56 = (*(*(v47 - 8) + 56))(v49, v55, 1, v47);
    __chkstk_darwin(v56);
    *(&v57 - 2) = v45;
    sub_100581774(v49, v48 & 1, sub_10059C284, (&v57 - 4), v68);
    sub_1000079B4(v49, &qword_10076E0D0);
    (*(v43 + 8))(v17, v44);
    (*(v22 + 8))(v27, v21);
    (*(v66 + 8))(v45, v67);
  }
}

uint64_t sub_10059B024(char a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v121 = a7;
  v124 = a5;
  v125 = a4;
  v11 = sub_100058000(&qword_100770AA8);
  __chkstk_darwin(v11 - 8);
  v119 = &v110 - v12;
  v118 = type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary(0);
  v117 = *(v118 - 8);
  __chkstk_darwin(v118);
  v114 = &v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100058000(&qword_10076E0D0);
  __chkstk_darwin(v14 - 8);
  v127 = &v110 - v15;
  updated = type metadata accessor for TTRRemindersListTreeViewModelUpdateContext.ViewUpdateType();
  v128 = *(updated - 8);
  __chkstk_darwin(updated);
  v126 = &v110 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v141 = &v110 - v18;
  v145 = type metadata accessor for TTRRemindersListViewModel.Item();
  v135 = *(v145 - 8);
  __chkstk_darwin(v145);
  v143 = &v110 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v116 = &v110 - v21;
  v22 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v22 - 8);
  v130 = &v110 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v115 = &v110 - v25;
  __chkstk_darwin(v26);
  v122 = &v110 - v27;
  __chkstk_darwin(v28);
  v140 = &v110 - v29;
  v132 = type metadata accessor for REMRemindersListDataView.Diff();
  v131 = *(v132 - 8);
  __chkstk_darwin(v132);
  v112 = &v110 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v138 = &v110 - v32;
  v144 = type metadata accessor for TTRRemindersListTreeViewModel.RecurrentReminderReplacement();
  v113 = *(v144 - 1);
  __chkstk_darwin(v144);
  v142 = &v110 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = type metadata accessor for TTRRemindersListLayout();
  v136 = *(v137 - 8);
  __chkstk_darwin(v137);
  v35 = &v110 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v139 = &v110 - v37;
  v38 = sub_100058000(&unk_10078A380);
  __chkstk_darwin(v38 - 8);
  v40 = &v110 - v39;
  if (a1)
  {
    *(a6 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_receivedFirstUpdateFromDataModelSource) = 1;
  }

  sub_10056F540(a2);
  v41 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_cachedListInfo;
  swift_beginAccess();
  sub_10000794C(a6 + v41, v40, &unk_10078A380);
  v42 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v43 = (*(*(v42 - 8) + 48))(v40, 1, v42);
  sub_1000079B4(v40, &unk_10078A380);
  if (v43 == 1)
  {
    if (qword_100767468 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_100003E30(v44, qword_10078D7D8);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v45, v46, "Unexpected: a non-nil ListInfo should be set by the time the tree is updated.", v47, 2u);
    }
  }

  swift_getObjectType();
  if (dispatch thunk of TTRRemindersListDataModelSourceBaseType.layoutContext.getter())
  {
    swift_getObjectType();
    dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.getter();
    swift_unknownObjectRelease();
    (*(v136 + 32))(v139, v35, v137);
  }

  else
  {
    (*(v136 + 104))(v139, enum case for TTRRemindersListLayout.list(_:), v137);
  }

  v48 = a6 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v49 = *(v48 + 8);
    ObjectType = swift_getObjectType();
    (*(v49 + 40))(v139, 0, 0, ObjectType, v49);
    swift_unknownObjectRelease();
  }

  v123 = v48;
  v51 = &_swiftEmptySetSingleton;
  v147 = &_swiftEmptySetSingleton;
  v52 = (a6 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_nextDataModelUpdateOptions);
  v53 = *(a6 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_nextDataModelUpdateOptions + 2) == 1;
  v134 = a3;
  v133 = (a6 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_nextDataModelUpdateOptions);
  if (v53)
  {
    v54 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_recurrentReminderReplacements;
    swift_beginAccess();
    v55 = *(a6 + v54);
    v56 = *(v55 + 16);
    if (v56)
    {
      v111 = v54;
      v120 = a6;
      v57 = *(v113 + 16);
      v58 = v55 + ((*(v113 + 80) + 32) & ~*(v113 + 80));
      v59 = *(v113 + 72);
      v60 = (v113 + 8);
      v61 = (v135 + 8);
      v113 = v55;

      v62 = v143;
      do
      {
        v63 = v142;
        v64 = v144;
        v57(v142, v58, v144);
        TTRRemindersListTreeViewModel.RecurrentReminderReplacement.original.getter();
        (*v60)(v63, v64);
        v65 = TTRRemindersListViewModel.Item.reminderObjectID.getter();
        (*v61)(v62, v145);
        if (v65)
        {
          sub_10001DFB0(v146, v65);
        }

        v58 += v59;
        --v56;
      }

      while (v56);

      a6 = v120;
      v54 = v111;
      v51 = v147;
      v52 = v133;
    }

    *(a6 + v54) = _swiftEmptyArrayStorage;

    v66 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_reminderCompletionViewModelOverrides;
    swift_beginAccess();
    *(a6 + v66) = &_swiftEmptyDictionarySingleton;
  }

  if ((v51 & 0xC000000000000001) != 0)
  {
    __CocoaSet.count.getter();
  }

  type metadata accessor for TTRRemindersListTreeViewModel();
  v67 = type metadata accessor for TTRRemindersListObjectIDOnlyReminderIDProvider();
  v68 = static TTRRemindersListReminderIDProviding<>.uniqueWithinTree.getter();
  v146[3] = v67;
  v146[4] = &protocol witness table for TTRRemindersListObjectIDOnlyReminderIDProvider;
  v146[0] = v68;
  swift_beginAccess();

  sub_100585DF8();
  v69 = TTRRemindersListTreeViewModel.__allocating_init(sections:reminderIDProvider:recurrentReminderReplacements:makePresentationTree:)();
  if (v52[1] == 1)
  {

    v70 = TTRRemindersListTreeViewModel.transferTemporaryItemsAndAuxiliaryData(to:)();

    sub_10057D710(v70);
  }

  sub_10057AB60(v69);
  v71 = REMRemindersListDataView.Diff.updatedReminderObjectIDs.getter();
  v144 = v147;
  v72 = sub_10056F238(v147);
  sub_10059A2BC(v72, v71);

  if (_swiftEmptyArrayStorage >> 62)
  {
    v109 = _CocoaArrayWrapper.endIndex.getter();
    v75 = v122;
    if (v109)
    {
      sub_100403F5C(_swiftEmptyArrayStorage);
    }

    if (_CocoaArrayWrapper.endIndex.getter())
    {
      sub_100403F5C(_swiftEmptyArrayStorage);
    }

    if (_CocoaArrayWrapper.endIndex.getter())
    {
      sub_100403F5C(_swiftEmptyArrayStorage);
    }

    v73 = v140;
    v74 = v135;
  }

  else
  {
    v73 = v140;
    v74 = v135;
    v75 = v122;
  }

  REMRemindersListDataView.Diff.init(updatedReminderObjectIDs:insertedReminderObjectIDs:updatedListObjectIDs:updatedSectionObjectIDs:newReminderMembershipsViaAutomation:)();
  v76 = v145;
  (*(v74 + 56))(v73, 1, 1, v145);
  sub_10000794C(v124, v75, &qword_100772140);
  v143 = *(v74 + 48);
  if ((v143)(v75, 1, v76) == 1)
  {
    sub_1000079B4(v75, &qword_100772140);
  }

  else
  {
    v77 = *(v74 + 32);
    v120 = a6;
    v78 = v116;
    v77(v116, v75, v76);
    v79 = v115;
    TTRRemindersListTreeViewModel.uncommittedOrPlaceholderReminder(atTheEndOfSection:)();
    a6 = v120;
    (*(v74 + 8))(v78, v145);
    sub_1000079B4(v73, &qword_100772140);
    v76 = v145;
    sub_100016588(v79, v73, &qword_100772140);
  }

  v80 = v130;
  if (v125)
  {
    v81 = &enum case for TTRRemindersListTreeViewModelUpdateContext.ViewUpdateType.reload(_:);
    v82 = v69;
  }

  else
  {
    v82 = v69;
    if (*v52 == 1)
    {
      v83 = a6;
      v84 = *(sub_100058000(&qword_10078E048) + 48);
      (*(v131 + 16))(v112, v138, v132);

      v85 = v141;
      v80 = v130;
      v76 = v145;
      TTRRemindersListTreeViewModelUpdateContext.TreeDiffGenerationParameters.init(originalTree:diff:useReloadRecurrentAnimation:)();
      v85[v84] = 1;
      a6 = v83;
      v81 = &enum case for TTRRemindersListTreeViewModelUpdateContext.ViewUpdateType.incremental(_:);
    }

    else
    {
      v81 = &enum case for TTRRemindersListTreeViewModelUpdateContext.ViewUpdateType.reload(_:);
    }
  }

  v86 = v143;
  v87 = v128;
  v88 = updated;
  (*(v128 + 104))(v141, *v81, updated);
  sub_10000794C(v140, v80, &qword_100772140);
  v89 = 1;
  LODWORD(v86) = v86(v80, 1, v76);
  v90 = sub_100058000(&unk_1007756F0);
  v91 = v76;
  v92 = v90;
  v53 = v86 == 1;
  v93 = v127;
  if (!v53)
  {
    v94 = *(v90 + 48);
    (*(v135 + 32))(v127, v80, v91);
    v95 = enum case for TTREditingStateOption.InputType.unspecified(_:);
    v96 = type metadata accessor for TTREditingStateOption.InputType();
    (*(*(v96 - 8) + 104))(&v93[v94], v95, v96);
    v89 = 0;
  }

  (*(*(v92 - 8) + 56))(v93, v89, 1, v92);

  (*(v87 + 16))(v126, v141, v88);
  type metadata accessor for TTRRemindersListTreeViewModelUpdateContext();
  swift_allocObject();

  v97 = TTRRemindersListTreeViewModelUpdateContext.init(currentTreeViewModel:itemToStartEditing:viewUpdateType:)();
  *(a6 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_tree) = v82;

  v98 = v123;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v99 = *(v98 + 8);
    v100 = swift_getObjectType();
    (*(v99 + 72))(v97, v100, v99);
    swift_unknownObjectRelease();
  }

  v101 = *(REMRemindersListDataView.Diff.newReminderMembershipsViaAutomation.getter() + 16);

  v102 = v133;
  if (v101)
  {
    REMRemindersListDataView.Diff.newReminderMembershipsViaAutomation.getter();
    v103 = v119;
    sub_100587580(v119);

    if ((*(v117 + 48))(v103, 1, v118) == 1)
    {
      sub_1000079B4(v103, &qword_100770AA8);
    }

    else
    {
      v104 = v103;
      v105 = v114;
      sub_10059A3B0(v104, v114, type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v106 = *(v98 + 8);
        v107 = swift_getObjectType();
        (*(v106 + 136))(v105, v107, v106);
        swift_unknownObjectRelease();
      }

      sub_1005838CC(v105, type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary);
    }
  }

  sub_10057C1B0(0);

  (*(v87 + 8))(v141, v88);
  sub_1000079B4(v140, &qword_100772140);
  (*(v131 + 8))(v138, v132);
  result = (*(v136 + 8))(v139, v137);
  *v102 = 257;
  v102[2] = 0;
  return result;
}

BOOL sub_10059C2FC()
{
  v0 = *(TTRRemindersListTreeViewModel.delete(_:)() + 16);

  return v0 != 0;
}

char *sub_10059C3C4(char *a1, char **a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = &v10[(v5 + 16) & ~v5];
  }

  else
  {
    v7 = type metadata accessor for TTRRemindersListReminderActionTargetExtended(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 3:
        v15 = *a2;
        *a1 = *a2;
        v16 = v15;
        swift_storeEnumTagMultiPayload();
        break;
      case 2:
        v11 = *a2;
        v12 = a2[1];
        *a1 = *a2;
        *(a1 + 1) = v12;
        v13 = v11;
        v14 = v12;
        swift_storeEnumTagMultiPayload();
        break;
      case 1:
        v9 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
        (*(*(v9 - 8) + 16))(a1, a2, v9);
        swift_storeEnumTagMultiPayload();
        break;
      default:
        memcpy(a1, a2, *(*(v7 - 8) + 64));
        break;
    }

    v17 = *(a3 + 20);
    v18 = &a1[v17];
    v19 = (a2 + v17);
    v20 = v19[1];
    *v18 = *v19;
    *(v18 + 1) = v20;
  }

  return a1;
}

uint64_t sub_10059C544(uint64_t a1)
{
  type metadata accessor for TTRRemindersListReminderActionTargetExtended(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 3:
      v4 = *a1;
      goto LABEL_7;
    case 2:

      v4 = *(a1 + 8);
LABEL_7:

      break;
    case 1:
      v3 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
      (*(*(v3 - 8) + 8))(a1, v3);
      break;
  }
}

void **sub_10059C604(void **a1, void **a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListReminderActionTargetExtended(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 3:
      v13 = *a2;
      *a1 = *a2;
      v14 = v13;
      swift_storeEnumTagMultiPayload();
      break;
    case 2:
      v9 = *a2;
      v10 = a2[1];
      *a1 = *a2;
      a1[1] = v10;
      v11 = v9;
      v12 = v10;
      swift_storeEnumTagMultiPayload();
      break;
    case 1:
      v8 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
      (*(*(v8 - 8) + 16))(a1, a2, v8);
      swift_storeEnumTagMultiPayload();
      break;
    default:
      memcpy(a1, a2, *(*(v6 - 8) + 64));
      break;
  }

  v15 = *(a3 + 20);
  v16 = (a1 + v15);
  v17 = (a2 + v15);
  v18 = v17[1];
  *v16 = *v17;
  v16[1] = v18;

  return a1;
}

void **sub_10059C73C(void **a1, void **a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_1005838CC(a1, type metadata accessor for TTRRemindersListReminderActionTargetExtended);
    v6 = type metadata accessor for TTRRemindersListReminderActionTargetExtended(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 3:
        v13 = *a2;
        *a1 = *a2;
        v14 = v13;
        swift_storeEnumTagMultiPayload();
        break;
      case 2:
        v9 = *a2;
        *a1 = *a2;
        v10 = a2[1];
        a1[1] = v10;
        v11 = v9;
        v12 = v10;
        swift_storeEnumTagMultiPayload();
        break;
      case 1:
        v8 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
        (*(*(v8 - 8) + 16))(a1, a2, v8);
        swift_storeEnumTagMultiPayload();
        break;
      default:
        memcpy(a1, a2, *(*(v6 - 8) + 64));
        break;
    }
  }

  v15 = *(a3 + 20);
  v16 = (a1 + v15);
  v17 = (a2 + v15);
  v18 = v17[1];
  *v16 = *v17;
  v16[1] = v18;

  return a1;
}

char *sub_10059C8AC(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListReminderActionTargetExtended(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a1, a2, *(*(v6 - 8) + 64));
  }

  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];
  return a1;
}

char *sub_10059C97C(char *a1, char *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_1005838CC(a1, type metadata accessor for TTRRemindersListReminderActionTargetExtended);
    v6 = type metadata accessor for TTRRemindersListReminderActionTargetExtended(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v7 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
      (*(*(v7 - 8) + 32))(a1, a2, v7);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a1, a2, *(*(v6 - 8) + 64));
    }
  }

  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];

  return a1;
}

uint64_t sub_10059CAC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

char *sub_10059CB5C(char *a1, char *a2, int *a3)
{
  v3 = a1;
  v4 = *(*(a3 - 1) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v13 = *a2;
    *v3 = *a2;
    v3 = (v13 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    v5 = a3[5];
    v8 = type metadata accessor for TTRReminderListCompletionBehavior();
    (*(*(v8 - 8) + 16))(&v3[v5], &a2[v5], v8);
    v9 = a3[7];
    v3[a3[6]] = a2[a3[6]];
    v3[v9] = a2[v9];
    v10 = a3[9];
    v3[a3[8]] = a2[a3[8]];
    v3[v10] = a2[v10];
    v11 = a3[11];
    v3[a3[10]] = a2[a3[10]];
    v3[v11] = a2[v11];
    v12 = a3[13];
    v3[a3[12]] = a2[a3[12]];
    v3[v12] = a2[v12];
  }

  return v3;
}

uint64_t sub_10059CC74(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 20);
  v4 = type metadata accessor for TTRReminderListCompletionBehavior();
  v5 = *(*(v4 - 8) + 8);

  return v5(a1 + v3, v4);
}

_BYTE *sub_10059CCDC(_BYTE *a1, _BYTE *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = type metadata accessor for TTRReminderListCompletionBehavior();
  (*(*(v7 - 8) + 16))(&a1[v6], &a2[v6], v7);
  v8 = a3[7];
  a1[a3[6]] = a2[a3[6]];
  a1[v8] = a2[v8];
  v9 = a3[9];
  a1[a3[8]] = a2[a3[8]];
  a1[v9] = a2[v9];
  v10 = a3[11];
  a1[a3[10]] = a2[a3[10]];
  a1[v10] = a2[v10];
  v11 = a3[13];
  a1[a3[12]] = a2[a3[12]];
  a1[v11] = a2[v11];
  return a1;
}

_BYTE *sub_10059CDA8(_BYTE *a1, _BYTE *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = type metadata accessor for TTRReminderListCompletionBehavior();
  (*(*(v7 - 8) + 24))(&a1[v6], &a2[v6], v7);
  a1[a3[6]] = a2[a3[6]];
  a1[a3[7]] = a2[a3[7]];
  a1[a3[8]] = a2[a3[8]];
  a1[a3[9]] = a2[a3[9]];
  a1[a3[10]] = a2[a3[10]];
  a1[a3[11]] = a2[a3[11]];
  a1[a3[12]] = a2[a3[12]];
  a1[a3[13]] = a2[a3[13]];
  return a1;
}

_BYTE *sub_10059CE84(_BYTE *a1, _BYTE *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = type metadata accessor for TTRReminderListCompletionBehavior();
  (*(*(v7 - 8) + 32))(&a1[v6], &a2[v6], v7);
  v8 = a3[7];
  a1[a3[6]] = a2[a3[6]];
  a1[v8] = a2[v8];
  v9 = a3[9];
  a1[a3[8]] = a2[a3[8]];
  a1[v9] = a2[v9];
  v10 = a3[11];
  a1[a3[10]] = a2[a3[10]];
  a1[v10] = a2[v10];
  v11 = a3[13];
  a1[a3[12]] = a2[a3[12]];
  a1[v11] = a2[v11];
  return a1;
}

_BYTE *sub_10059CF50(_BYTE *a1, _BYTE *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = type metadata accessor for TTRReminderListCompletionBehavior();
  (*(*(v7 - 8) + 40))(&a1[v6], &a2[v6], v7);
  v8 = a3[7];
  a1[a3[6]] = a2[a3[6]];
  a1[v8] = a2[v8];
  v9 = a3[9];
  a1[a3[8]] = a2[a3[8]];
  a1[v9] = a2[v9];
  v10 = a3[11];
  a1[a3[10]] = a2[a3[10]];
  a1[v10] = a2[v10];
  v11 = a3[13];
  a1[a3[12]] = a2[a3[12]];
  a1[v11] = a2[v11];
  return a1;
}

uint64_t sub_10059D044()
{
  result = type metadata accessor for TTRReminderListCompletionBehavior();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

char *sub_10059D0F4(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v5 + 16) & ~v5));
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    *a1 = *a2;
    if (EnumCaseMultiPayload <= 3)
    {
      if (EnumCaseMultiPayload > 1)
      {
        v15 = *(a2 + 1);
        *(a1 + 1) = v15;
        if (EnumCaseMultiPayload == 2)
        {

          v16 = v15;
          v17 = sub_100058000(&qword_100773398);
          v18 = *(v17 + 64);
          v19 = sub_100058000(&unk_100775620);
          (*(*(v19 - 8) + 16))(&a1[v18], &a2[v18], v19);
          *&a1[*(v17 + 80)] = *&a2[*(v17 + 80)];
        }

        else
        {

          v32 = v15;
          v33 = *(sub_100058000(&qword_10076E908) + 64);
          v34 = sub_100058000(&unk_100775620);
          (*(*(v34 - 8) + 16))(&a1[v33], &a2[v33], v34);
        }
      }

      else
      {
        v10 = *(a2 + 1);
        *(a1 + 1) = v10;
        if (EnumCaseMultiPayload)
        {

          v29 = v10;
          v30 = *(sub_100058000(&qword_100776368) + 64);
          v31 = sub_100058000(&unk_100775620);
          (*(*(v31 - 8) + 16))(&a1[v30], &a2[v30], v31);
        }

        else
        {

          v11 = v10;
          v12 = sub_100058000(&qword_100776370);
          v13 = *(v12 + 64);
          v14 = sub_100058000(&unk_100775620);
          (*(*(v14 - 8) + 16))(&a1[v13], &a2[v13], v14);
          *&a1[*(v12 + 80)] = *&a2[*(v12 + 80)];
        }
      }
    }

    else if (EnumCaseMultiPayload <= 5)
    {
      v20 = *(a2 + 1);
      if (EnumCaseMultiPayload == 4)
      {
        *(a1 + 1) = v20;

        v21 = v20;
        v22 = *(sub_100058000(&qword_100776360) + 64);
      }

      else
      {
        v35 = *(a2 + 2);
        *(a1 + 1) = v20;
        *(a1 + 2) = v35;

        v36 = v20;
        v37 = v35;
        v22 = *(sub_100058000(&qword_100776358) + 80);
      }

      v23 = sub_100058000(&unk_100775620);
      (*(*(v23 - 8) + 16))(&a1[v22], &a2[v22], v23);
    }

    else if (EnumCaseMultiPayload == 6)
    {

      v24 = sub_100058000(&qword_100773378);
      v25 = v24[12];
      v26 = type metadata accessor for TTRSection();
      (*(*(v26 - 8) + 16))(&a1[v25], &a2[v25], v26);
      v27 = v24[16];
      v28 = sub_100058000(&unk_100775620);
      (*(*(v28 - 8) + 16))(&a1[v27], &a2[v27], v28);
      *&a1[v24[20]] = *&a2[v24[20]];
    }

    else
    {

      v7 = *(sub_100058000(&qword_100776350) + 48);
      v8 = type metadata accessor for DateComponents();
      (*(*(v8 - 8) + 16))(&a1[v7], &a2[v7], v8);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_10059D694(uint64_t a1)
{
  result = swift_getEnumCaseMultiPayload();
  if (result <= 3)
  {
    if (result > 1)
    {
      if (result != 2)
      {

        v5 = &qword_10076E908;
        goto LABEL_23;
      }

      v6 = &qword_100773398;
    }

    else
    {
      if (result)
      {
        if (result != 1)
        {
          return result;
        }

        v5 = &qword_100776368;
        goto LABEL_23;
      }

      v6 = &qword_100776370;
    }

    v7 = *(sub_100058000(v6) + 64);
    goto LABEL_19;
  }

  if (result <= 5)
  {
    if (result != 4)
    {

      v3 = *(sub_100058000(&qword_100776358) + 80);
LABEL_24:
      v4 = sub_100058000(&unk_100775620);
LABEL_25:
      v12 = *(*(v4 - 8) + 8);

      return v12(a1 + v3, v4);
    }

    v5 = &qword_100776360;
LABEL_23:
    v3 = *(sub_100058000(v5) + 64);
    goto LABEL_24;
  }

  if (result != 6)
  {
    if (result != 7 && result != 8)
    {
      return result;
    }

    v3 = *(sub_100058000(&qword_100776350) + 48);
    v4 = type metadata accessor for DateComponents();
    goto LABEL_25;
  }

  v8 = sub_100058000(&qword_100773378);
  v9 = *(v8 + 48);
  v10 = type metadata accessor for TTRSection();
  (*(*(v10 - 8) + 8))(a1 + v9, v10);
  v7 = *(v8 + 64);
LABEL_19:
  v11 = sub_100058000(&unk_100775620);
  (*(*(v11 - 8) + 8))(a1 + v7, v11);
}

char *sub_10059D96C(char *a1, char *a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  *a1 = *a2;
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        v22 = *(a2 + 1);
        *(a1 + 1) = v22;

        v23 = v22;
        v16 = &qword_10076E908;
        goto LABEL_17;
      }

      v10 = *(a2 + 1);
      *(a1 + 1) = v10;

      v11 = v10;
      v9 = &qword_100773398;
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        v20 = *(a2 + 1);
        *(a1 + 1) = v20;

        v21 = v20;
        v16 = &qword_100776368;
        goto LABEL_17;
      }

      v7 = *(a2 + 1);
      *(a1 + 1) = v7;

      v8 = v7;
      v9 = &qword_100776370;
    }

    v12 = sub_100058000(v9);
    v13 = v12[16];
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      v24 = *(a2 + 1);
      v25 = *(a2 + 2);
      *(a1 + 1) = v24;
      *(a1 + 2) = v25;

      v26 = v24;
      v27 = v25;
      v5 = *(sub_100058000(&qword_100776358) + 80);
      goto LABEL_19;
    }

    v14 = *(a2 + 1);
    *(a1 + 1) = v14;

    v15 = v14;
    v16 = &qword_100776360;
LABEL_17:
    v5 = *(sub_100058000(v16) + 64);
LABEL_19:
    v6 = sub_100058000(&unk_100775620);
    goto LABEL_20;
  }

  if (EnumCaseMultiPayload != 6)
  {

    v5 = *(sub_100058000(&qword_100776350) + 48);
    v6 = type metadata accessor for DateComponents();
LABEL_20:
    (*(*(v6 - 8) + 16))(&a1[v5], &a2[v5], v6);
    goto LABEL_21;
  }

  v12 = sub_100058000(&qword_100773378);
  v17 = v12[12];
  v18 = type metadata accessor for TTRSection();
  (*(*(v18 - 8) + 16))(&a1[v17], &a2[v17], v18);
  v13 = v12[16];
LABEL_14:
  v19 = sub_100058000(&unk_100775620);
  (*(*(v19 - 8) + 16))(&a1[v13], &a2[v13], v19);
  *&a1[v12[20]] = *&a2[v12[20]];

LABEL_21:
  swift_storeEnumTagMultiPayload();
  return a1;
}

char *sub_10059DC28(char *a1, char *a2)
{
  if (a1 != a2)
  {
    sub_1005838CC(a1, type metadata accessor for TTRRemindersListMovingRemindersParams);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    *a1 = *a2;
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload > 5)
      {
        if (EnumCaseMultiPayload != 6)
        {

          v5 = *(sub_100058000(&qword_100776350) + 48);
          v6 = type metadata accessor for DateComponents();
LABEL_21:
          (*(*(v6 - 8) + 16))(&a1[v5], &a2[v5], v6);
          goto LABEL_22;
        }

        v12 = sub_100058000(&qword_100773378);
        v17 = v12[12];
        v18 = type metadata accessor for TTRSection();
        (*(*(v18 - 8) + 16))(&a1[v17], &a2[v17], v18);
        v13 = v12[16];
LABEL_15:
        v19 = sub_100058000(&unk_100775620);
        (*(*(v19 - 8) + 16))(&a1[v13], &a2[v13], v19);
        *&a1[v12[20]] = *&a2[v12[20]];

LABEL_22:
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      if (EnumCaseMultiPayload != 4)
      {
        v24 = *(a2 + 1);
        *(a1 + 1) = v24;
        v25 = *(a2 + 2);
        *(a1 + 2) = v25;

        v26 = v24;
        v27 = v25;
        v5 = *(sub_100058000(&qword_100776358) + 80);
        goto LABEL_20;
      }

      v14 = *(a2 + 1);
      *(a1 + 1) = v14;

      v15 = v14;
      v16 = &qword_100776360;
LABEL_18:
      v5 = *(sub_100058000(v16) + 64);
LABEL_20:
      v6 = sub_100058000(&unk_100775620);
      goto LABEL_21;
    }

    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        v22 = *(a2 + 1);
        *(a1 + 1) = v22;

        v23 = v22;
        v16 = &qword_10076E908;
        goto LABEL_18;
      }

      v10 = *(a2 + 1);
      *(a1 + 1) = v10;

      v11 = v10;
      v9 = &qword_100773398;
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        v20 = *(a2 + 1);
        *(a1 + 1) = v20;

        v21 = v20;
        v16 = &qword_100776368;
        goto LABEL_18;
      }

      v7 = *(a2 + 1);
      *(a1 + 1) = v7;

      v8 = v7;
      v9 = &qword_100776370;
    }

    v12 = sub_100058000(v9);
    v13 = v12[16];
    goto LABEL_15;
  }

  return a1;
}

void *sub_10059DF30(void *a1, void *a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  *a1 = *a2;
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        a1[1] = a2[1];
        v10 = &qword_10076E908;
        goto LABEL_17;
      }

      a1[1] = a2[1];
      v7 = &qword_100773398;
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        a1[1] = a2[1];
        v10 = &qword_100776368;
        goto LABEL_17;
      }

      a1[1] = a2[1];
      v7 = &qword_100776370;
    }

    v8 = sub_100058000(v7);
    v9 = v8[16];
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      *(a1 + 1) = *(a2 + 1);
      v5 = *(sub_100058000(&qword_100776358) + 80);
      goto LABEL_19;
    }

    a1[1] = a2[1];
    v10 = &qword_100776360;
LABEL_17:
    v5 = *(sub_100058000(v10) + 64);
LABEL_19:
    v6 = sub_100058000(&unk_100775620);
    goto LABEL_20;
  }

  if (EnumCaseMultiPayload != 6)
  {
    v5 = *(sub_100058000(&qword_100776350) + 48);
    v6 = type metadata accessor for DateComponents();
LABEL_20:
    (*(*(v6 - 8) + 32))(a1 + v5, a2 + v5, v6);
    goto LABEL_21;
  }

  v8 = sub_100058000(&qword_100773378);
  v11 = v8[12];
  v12 = type metadata accessor for TTRSection();
  (*(*(v12 - 8) + 32))(a1 + v11, a2 + v11, v12);
  v9 = v8[16];
LABEL_14:
  v13 = sub_100058000(&unk_100775620);
  (*(*(v13 - 8) + 32))(a1 + v9, a2 + v9, v13);
  *(a1 + v8[20]) = *(a2 + v8[20]);
LABEL_21:
  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t sub_10059E1AC(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_1005838CC(a1, type metadata accessor for TTRRemindersListMovingRemindersParams);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    *a1 = *a2;
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload > 5)
      {
        if (EnumCaseMultiPayload != 6)
        {
          v5 = *(sub_100058000(&qword_100776350) + 48);
          v6 = type metadata accessor for DateComponents();
LABEL_21:
          (*(*(v6 - 8) + 32))(a1 + v5, a2 + v5, v6);
          goto LABEL_22;
        }

        v8 = sub_100058000(&qword_100773378);
        v11 = v8[12];
        v12 = type metadata accessor for TTRSection();
        (*(*(v12 - 8) + 32))(a1 + v11, a2 + v11, v12);
        v9 = v8[16];
LABEL_15:
        v13 = sub_100058000(&unk_100775620);
        (*(*(v13 - 8) + 32))(a1 + v9, a2 + v9, v13);
        *(a1 + v8[20]) = *(a2 + v8[20]);
LABEL_22:
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      if (EnumCaseMultiPayload != 4)
      {
        *(a1 + 8) = *(a2 + 8);
        v5 = *(sub_100058000(&qword_100776358) + 80);
        goto LABEL_20;
      }

      *(a1 + 8) = *(a2 + 8);
      v10 = &qword_100776360;
LABEL_18:
      v5 = *(sub_100058000(v10) + 64);
LABEL_20:
      v6 = sub_100058000(&unk_100775620);
      goto LABEL_21;
    }

    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        *(a1 + 8) = *(a2 + 8);
        v10 = &qword_10076E908;
        goto LABEL_18;
      }

      *(a1 + 8) = *(a2 + 8);
      v7 = &qword_100773398;
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        *(a1 + 8) = *(a2 + 8);
        v10 = &qword_100776368;
        goto LABEL_18;
      }

      *(a1 + 8) = *(a2 + 8);
      v7 = &qword_100776370;
    }

    v8 = sub_100058000(v7);
    v9 = v8[16];
    goto LABEL_15;
  }

  return a1;
}

void sub_10059E44C()
{
  v14 = &value witness table for Builtin.BridgeObject + 64;
  v15 = &value witness table for Builtin.UnknownObject + 64;
  sub_10059E698();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_getTupleTypeLayout();
    v19 = &v18;
    swift_getTupleTypeLayout3();
    v20 = &v13;
    v14 = &value witness table for Builtin.BridgeObject + 64;
    v15 = &unk_100646E30;
    v16 = v2;
    v17 = "\b";
    swift_getTupleTypeLayout();
    v21 = &v12;
    swift_getTupleTypeLayout3();
    v22 = &v11;
    swift_getTupleTypeLayout3();
    v23 = &v10;
    v14 = &value witness table for Builtin.BridgeObject + 64;
    v15 = &value witness table for Builtin.UnknownObject + 64;
    v16 = &value witness table for Builtin.UnknownObject + 64;
    v17 = v2;
    swift_getTupleTypeLayout();
    v24 = &v9;
    v14 = &value witness table for Builtin.BridgeObject + 64;
    v3 = type metadata accessor for TTRSection();
    if (v4 <= 0x3F)
    {
      v15 = (*(v3 - 8) + 64);
      v16 = v2;
      v17 = "\b";
      swift_getTupleTypeLayout();
      v25 = &v8;
      type metadata accessor for DateComponents();
      if (v5 <= 0x3F)
      {
        swift_getTupleTypeLayout2();
        v26 = &v7;
        swift_getTupleTypeLayout2();
        v27 = &v6;
        swift_initEnumMetadataMultiPayload();
      }
    }
  }
}

void sub_10059E698()
{
  if (!qword_10078E300)
  {
    sub_100003540(255, &qword_10076BB00);
    v0 = type metadata accessor for TTRRelativeInsertionPosition();
    if (!v1)
    {
      atomic_store(v0, &qword_10078E300);
    }
  }
}

char *sub_10059E700(char *a1, char **a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = &v9[(v4 + 16) & ~v4];

    return a1;
  }

  v5 = *(a3 - 8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 3:
      v12 = type metadata accessor for REMHashtagLabelSpecifier();
      (*(*(v12 - 8) + 16))(a1, a2, v12);
      goto LABEL_9;
    case 2:
      v10 = *a2;
      *a1 = *a2;
      v11 = v10;
      goto LABEL_9;
    case 0:
      v8 = type metadata accessor for DateComponents();
      (*(*(v8 - 8) + 16))(a1, a2, v8);
LABEL_9:
      swift_storeEnumTagMultiPayload();
      return a1;
  }

  v14 = *(v5 + 64);

  return memcpy(a1, a2, v14);
}

void sub_10059E884(void **a1)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    v3 = type metadata accessor for REMHashtagLabelSpecifier();
LABEL_9:
    v5 = *(*(v3 - 8) + 8);

    v5(a1, v3);
    return;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload)
    {
      return;
    }

    v3 = type metadata accessor for DateComponents();
    goto LABEL_9;
  }

  v4 = *a1;
}

void **sub_10059E938(void **a1, void **a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 3:
      v10 = type metadata accessor for REMHashtagLabelSpecifier();
      (*(*(v10 - 8) + 16))(a1, a2, v10);
      goto LABEL_7;
    case 2:
      v8 = *a2;
      *a1 = *a2;
      v9 = v8;
      goto LABEL_7;
    case 0:
      v7 = type metadata accessor for DateComponents();
      (*(*(v7 - 8) + 16))(a1, a2, v7);
LABEL_7:
      swift_storeEnumTagMultiPayload();
      return a1;
  }

  v12 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v12);
}