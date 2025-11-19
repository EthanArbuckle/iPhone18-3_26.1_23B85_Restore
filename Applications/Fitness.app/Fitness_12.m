char *sub_1001A3874(char *result, int64_t a2, char a3, char *a4)
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
    sub_100140278(&qword_1008DF118);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1001A39CC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100140278(&qword_1008DE5F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_1001A3B38(char *result, int64_t a2, char a3, char *a4)
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
    sub_100140278(&qword_1008DE660);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1001A3C58(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100140278(&qword_1008DE400);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_1001A3D6C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100140278(a3);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = j__malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1001A3E68(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100140278(&unk_1008E4E20);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_1001A3EF0(uint64_t a1, unint64_t a2, unint64_t a3, char a4)
{
  v9 = *v4;
  Hasher.init(_seed:)();
  v55._countAndFlagsBits = a2;
  v55._object = a3;
  sub_100035B30(v55, a4);
  String.hash(into:)();

  if (!a4 || a4 == 2)
  {
    Hasher._combine(_:)(a2);
  }

  else if (a4 == 1)
  {
    String.hash(into:)();
  }

  v10 = Hasher._finalize()();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_82:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v54 = *v4;
    sub_10001D510(a2, a3, a4);
    sub_1001A63BC(a2, a3, a4, v12, isUniquelyReferenced_nonNull_native);
    *v4 = v54;
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 16) = a4;
    return 1;
  }

  v13 = ~v11;
  v14 = *(v9 + 48);
  v15 = a2 != 9;
  v16 = a2 != 8;
  v17 = a2 != 7;
  v18 = a2 != 6;
  v19 = a2 != 5;
  v20 = a2 != 4;
  v21 = a2 != 3;
  v22 = a2 != 2;
  v23 = a2 != 1;
  if (a3)
  {
    v15 = 1;
    v16 = 1;
    v17 = 1;
    v18 = 1;
    v19 = 1;
    v20 = 1;
    v21 = 1;
    v22 = 1;
    v23 = 1;
  }

  v24 = a4 == 3;
  if (a4 != 3)
  {
    v15 = 1;
  }

  v53 = v15;
  v25 = a4 != 3 || v16;
  v52 = v25;
  v26 = a4 != 3 || v17;
  v27 = a4 != 3 || v18;
  v50 = v27;
  v51 = v26;
  v28 = a4 != 3 || v19;
  v29 = a4 != 3 || v20;
  v48 = v29;
  v49 = v28;
  v30 = a4 != 3 || v21;
  v31 = a4 != 3 || v22;
  v46 = v31;
  v47 = v30;
  v32 = a4 != 3 || v23;
  if (a3 | a2)
  {
    v24 = 0;
  }

  v44 = v24;
  v45 = v32;
  while (1)
  {
    v33 = v14 + 24 * v12;
    v34 = *v33;
    v35 = *(v33 + 8);
    v36 = *(v33 + 16);
    if (v36 <= 1)
    {
      break;
    }

    if (v36 == 2)
    {
      if (a4 != 2)
      {
        goto LABEL_40;
      }

LABEL_39:
      if (v34 == a2)
      {
        goto LABEL_84;
      }

      goto LABEL_40;
    }

    if (v34 > 4)
    {
      if (v34 <= 6)
      {
        if (v34 ^ 5 | v35)
        {
          if ((v50 & 1) == 0)
          {
            goto LABEL_84;
          }
        }

        else if ((v49 & 1) == 0)
        {
          goto LABEL_84;
        }
      }

      else if (v34 ^ 7 | v35)
      {
        if (v34 ^ 8 | v35)
        {
          if (!v53)
          {
            goto LABEL_84;
          }
        }

        else if ((v52 & 1) == 0)
        {
          goto LABEL_84;
        }
      }

      else if ((v51 & 1) == 0)
      {
        goto LABEL_84;
      }
    }

    else if (v34 <= 1)
    {
      if (v34 | v35)
      {
        if ((v45 & 1) == 0)
        {
          goto LABEL_84;
        }
      }

      else if (v44)
      {
        goto LABEL_84;
      }
    }

    else if (v34 ^ 2 | v35)
    {
      if (v34 ^ 3 | v35)
      {
        if ((v48 & 1) == 0)
        {
          goto LABEL_84;
        }
      }

      else if ((v47 & 1) == 0)
      {
        goto LABEL_84;
      }
    }

    else if ((v46 & 1) == 0)
    {
      goto LABEL_84;
    }

LABEL_40:
    v12 = (v12 + 1) & v13;
    if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_82;
    }
  }

  if (!v36)
  {
    if (a4)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  if (a4 != 1)
  {
    goto LABEL_40;
  }

  v37 = v34 == a2 && v35 == a3;
  if (!v37 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_40;
  }

  sub_10001D4F8(a2, a3, 1);
LABEL_84:
  v40 = *(v9 + 48) + 24 * v12;
  v41 = *v40;
  v42 = *(v40 + 8);
  *a1 = *v40;
  *(a1 + 8) = v42;
  v43 = *(v40 + 16);
  *(a1 + 16) = v43;
  sub_10001D510(v41, v42, v43);
  return 0;
}

uint64_t sub_1001A42DC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for DateComponents();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_10002BA3C(&qword_1008DF090, &type metadata accessor for DateComponents);
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
      sub_10002BA3C(&qword_1008DF098, &type metadata accessor for DateComponents);
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
    sub_1001A67B0(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1001A45BC(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
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

    sub_1001A6A78(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1001A470C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_10002BA3C(&qword_1008E4E10, &type metadata accessor for UUID);
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
      sub_10002BA3C(&qword_1008EAFA0, &type metadata accessor for UUID);
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
    sub_1001A6BF8(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1001A4A34(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for PlaylistItem();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_10002BA3C(&qword_1008DF0F8, &type metadata accessor for PlaylistItem);
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
      sub_10002BA3C(&qword_1008DF100, &type metadata accessor for PlaylistItem);
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
    sub_1001A7050(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1001A4D38(void *a1, void *a2, unint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6)
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

      sub_1000059F8(0, a3);
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
        v26 = sub_1001A4FAC(v14, result + 1, a5, a6, a3);
        v27 = v26[2];
        if (v26[3] <= v27)
        {
          sub_1000666E4(v27 + 1, a5);
        }

        v28 = v15;
        sub_1001A6338(v28, v26);

        *v10 = v26;
        *a1 = v28;
        return 1;
      }
    }
  }

  else
  {
    sub_1000059F8(0, a3);
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
      sub_1001A6EC0(v25, v20, isUniquelyReferenced_nonNull_native, a5, a6, a3);
      *v10 = v35;
      *a1 = v25;
      return 1;
    }
  }

  return result;
}

Swift::Int sub_1001A4FAC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, unint64_t *a5)
{
  if (a2)
  {
    sub_100140278(a3);
    v7 = static _SetStorage.convert(_:capacity:)();
    v20 = v7;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_1000059F8(0, a5);
      do
      {
        swift_dynamicCast();
        v14 = *(v7 + 16);
        if (*(v7 + 24) <= v14)
        {
          sub_1000666E4(v14 + 1, a3);
        }

        v7 = v20;
        result = NSObject._rawHashValue(seed:)(*(v20 + 40));
        v9 = v20 + 56;
        v10 = -1 << *(v20 + 32);
        v11 = result & ~v10;
        v12 = v11 >> 6;
        if (((-1 << v11) & ~*(v20 + 56 + 8 * (v11 >> 6))) != 0)
        {
          v13 = __clz(__rbit64((-1 << v11) & ~*(v20 + 56 + 8 * (v11 >> 6)))) | v11 & 0x7FFFFFFFFFFFFFC0;
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
        *(*(v20 + 48) + 8 * v13) = v19;
        ++*(v20 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v7;
}

uint64_t sub_1001A51AC()
{
  v1 = v0;
  v2 = *v0;
  sub_100140278(&qword_1008DF170);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v29 = v2;
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
      v17 = *(v2 + 48) + 24 * (v14 | (v5 << 6));
      v18 = *v17;
      v19 = *(v17 + 8);
      v20 = *(v17 + 16);
      Hasher.init(_seed:)();
      v30._countAndFlagsBits = v18;
      v30._object = v19;
      sub_100035B30(v30, v20);
      String.hash(into:)();

      if (!v20 || v20 == 2)
      {
        Hasher._combine(_:)(v18);
      }

      else if (v20 == 1)
      {
        String.hash(into:)();
      }

      result = Hasher._finalize()();
      v21 = -1 << *(v4 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v4 + 48) + 24 * v12;
      *v13 = v18;
      *(v13 + 8) = v19;
      *(v13 + 16) = v20;
      ++*(v4 + 16);
      v2 = v29;
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    v28 = 1 << *(v2 + 32);
    if (v28 >= 64)
    {
      bzero(v6, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v28;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1001A5474()
{
  v1 = v0;
  v35 = type metadata accessor for DateComponents();
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_100140278(&qword_1008DF0A0);
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
      sub_10002BA3C(&qword_1008DF090, &type metadata accessor for DateComponents);
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

uint64_t sub_1001A57D0()
{
  v1 = v0;
  v2 = *v0;
  sub_100140278(&qword_1008DF068);
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

uint64_t sub_1001A5A30()
{
  v1 = v0;
  v35 = type metadata accessor for UUID();
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_100140278(&qword_1008DF148);
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
      sub_10002BA3C(&qword_1008E4E10, &type metadata accessor for UUID);
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

uint64_t sub_1001A5D8C()
{
  v1 = v0;
  v2 = *v0;
  sub_100140278(&qword_1008DF1E0);
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

uint64_t sub_1001A5FDC()
{
  v1 = v0;
  v35 = type metadata accessor for PlaylistItem();
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_100140278(&qword_1008DF108);
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
      sub_10002BA3C(&qword_1008DF0F8, &type metadata accessor for PlaylistItem);
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

unint64_t sub_1001A6338(uint64_t a1, void *a2)
{
  NSObject._rawHashValue(seed:)(a2[5]);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

unint64_t sub_1001A63BC(unint64_t result, unint64_t a2, unsigned __int8 a3, unint64_t a4, char a5)
{
  v6 = v5;
  v10 = result;
  v11 = *(*v5 + 16);
  v12 = *(*v5 + 24);
  if (v12 > v11 && (a5 & 1) != 0)
  {
    goto LABEL_90;
  }

  if (a5)
  {
    sub_1001A51AC();
  }

  else
  {
    if (v12 > v11)
    {
      result = sub_1001A7318();
      goto LABEL_90;
    }

    sub_1001A7ABC();
  }

  v13 = *v5;
  Hasher.init(_seed:)();
  v55._countAndFlagsBits = v10;
  v55._object = a2;
  sub_100035B30(v55, a3);
  String.hash(into:)();

  if (!a3 || a3 == 2)
  {
    Hasher._combine(_:)(v10);
  }

  else if (a3 == 1)
  {
    String.hash(into:)();
  }

  result = Hasher._finalize()();
  v14 = v13 + 56;
  v15 = -1 << *(v13 + 32);
  a4 = result & ~v15;
  if ((*(v13 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v16 = ~v15;
    v17 = *(v13 + 48);
    v18 = v10 != 9;
    v19 = v10 != 8;
    v20 = v10 != 7;
    v21 = v10 != 6;
    v22 = v10 != 5;
    v23 = v10 != 4;
    v24 = v10 != 3;
    v25 = v10 != 2;
    v26 = v10 != 1;
    if (a2)
    {
      v18 = 1;
      v19 = 1;
      v20 = 1;
      v21 = 1;
      v22 = 1;
      v23 = 1;
      v24 = 1;
      v25 = 1;
      v26 = 1;
    }

    v27 = a3 == 3;
    if (a3 != 3)
    {
      v18 = 1;
    }

    v54 = v18;
    v28 = a3 != 3 || v19;
    v53 = v28;
    v29 = a3 != 3 || v20;
    v30 = a3 != 3 || v21;
    v51 = v30;
    v52 = v29;
    v31 = a3 != 3 || v22;
    v32 = a3 != 3 || v23;
    v49 = v32;
    v50 = v31;
    v33 = a3 != 3 || v24;
    v34 = a3 != 3 || v25;
    v47 = v34;
    v48 = v33;
    v35 = a3 != 3 || v26;
    if (a2 | v10)
    {
      v27 = 0;
    }

    v45 = v27;
    v46 = v35;
    do
    {
      v36 = v17 + 24 * a4;
      result = *v36;
      v37 = *(v36 + 8);
      v38 = *(v36 + 16);
      if (v38 > 1)
      {
        if (v38 == 2)
        {
          if (a3 != 2)
          {
            goto LABEL_46;
          }

LABEL_45:
          if (result == v10)
          {
            goto LABEL_89;
          }

          goto LABEL_46;
        }

        if (result > 4)
        {
          if (result <= 6)
          {
            if (result ^ 5 | v37)
            {
              if ((v51 & 1) == 0)
              {
                goto LABEL_89;
              }
            }

            else if ((v50 & 1) == 0)
            {
              goto LABEL_89;
            }
          }

          else if (result ^ 7 | v37)
          {
            if (result ^ 8 | v37)
            {
              if (!v54)
              {
                goto LABEL_89;
              }
            }

            else if ((v53 & 1) == 0)
            {
              goto LABEL_89;
            }
          }

          else if ((v52 & 1) == 0)
          {
            goto LABEL_89;
          }
        }

        else if (result <= 1)
        {
          if (result | v37)
          {
            if ((v46 & 1) == 0)
            {
              goto LABEL_89;
            }
          }

          else if (v45)
          {
            goto LABEL_89;
          }
        }

        else if (result ^ 2 | v37)
        {
          if (result ^ 3 | v37)
          {
            if ((v49 & 1) == 0)
            {
              goto LABEL_89;
            }
          }

          else if ((v48 & 1) == 0)
          {
            goto LABEL_89;
          }
        }

        else if ((v47 & 1) == 0)
        {
          goto LABEL_89;
        }
      }

      else
      {
        if (!v38)
        {
          if (a3)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        }

        if (a3 == 1)
        {
          v39 = result == v10 && v37 == a2;
          if (v39 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
          {
LABEL_89:
            result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            break;
          }
        }
      }

LABEL_46:
      a4 = (a4 + 1) & v16;
    }

    while (((*(v14 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_90:
  v40 = *v6;
  *(*v6 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v41 = *(v40 + 48) + 24 * a4;
  *v41 = v10;
  *(v41 + 8) = a2;
  *(v41 + 16) = a3;
  v42 = *(v40 + 16);
  v43 = __OFADD__(v42, 1);
  v44 = v42 + 1;
  if (v43)
  {
    __break(1u);
  }

  else
  {
    *(v40 + 16) = v44;
  }

  return result;
}

uint64_t sub_1001A67B0(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = type metadata accessor for DateComponents();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
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
    sub_1001A5474();
  }

  else
  {
    if (v12 > v11)
    {
      sub_1001A7744(&type metadata accessor for DateComponents, &qword_1008DF0A0);
      goto LABEL_12;
    }

    sub_1001A7D64();
  }

  v13 = *v3;
  sub_10002BA3C(&qword_1008DF090, &type metadata accessor for DateComponents);
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
      sub_10002BA3C(&qword_1008DF098, &type metadata accessor for DateComponents);
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

Swift::Int sub_1001A6A78(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
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
    sub_1001A57D0();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1001A7480();
      goto LABEL_16;
    }

    sub_1001A8080();
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

uint64_t sub_1001A6BF8(uint64_t a1, unint64_t a2, char a3)
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
    sub_1001A5A30();
  }

  else
  {
    if (v11 > v10)
    {
      sub_1001A7744(&type metadata accessor for UUID, &qword_1008DF148);
      goto LABEL_12;
    }

    sub_1001A82B8();
  }

  v12 = *v3;
  sub_10002BA3C(&qword_1008E4E10, &type metadata accessor for UUID);
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
      sub_10002BA3C(&qword_1008EAFA0, &type metadata accessor for UUID);
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

void sub_1001A6EC0(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t a5, unint64_t *a6)
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
    sub_1000666E4(v9 + 1, a4);
  }

  else
  {
    if (v10 > v9)
    {
      sub_1001A797C(a4);
      goto LABEL_12;
    }

    v11 = a6;
    sub_1001A8B10(v9 + 1, a4);
  }

  v12 = *v6;
  v13 = NSObject._rawHashValue(seed:)(*(*v6 + 40));
  v14 = -1 << *(v12 + 32);
  a2 = v13 & ~v14;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    sub_1000059F8(0, v11);
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

uint64_t sub_1001A7050(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = type metadata accessor for PlaylistItem();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
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
    sub_1001A5FDC();
  }

  else
  {
    if (v12 > v11)
    {
      sub_1001A7744(&type metadata accessor for PlaylistItem, &qword_1008DF108);
      goto LABEL_12;
    }

    sub_1001A87F4();
  }

  v13 = *v3;
  sub_10002BA3C(&qword_1008DF0F8, &type metadata accessor for PlaylistItem);
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
      sub_10002BA3C(&qword_1008DF100, &type metadata accessor for PlaylistItem);
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

void *sub_1001A7318()
{
  v1 = v0;
  sub_100140278(&qword_1008DF170);
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
        v17 = 24 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v4 + 48) + v17;
        v22 = *(v18 + 16);
        *v21 = *v18;
        *(v21 + 8) = v20;
        *(v21 + 16) = v22;
        result = sub_10001D510(v19, v20, v22);
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

void *sub_1001A7480()
{
  v1 = v0;
  sub_100140278(&qword_1008DF068);
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

void *sub_1001A7604()
{
  v1 = v0;
  sub_100140278(&qword_1008DF1E0);
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
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

void *sub_1001A7744(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = v2;
  v5 = a1(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - v7;
  sub_100140278(a2);
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

id sub_1001A797C(uint64_t *a1)
{
  v2 = v1;
  sub_100140278(a1);
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

uint64_t sub_1001A7ABC()
{
  v1 = v0;
  v2 = *v0;
  sub_100140278(&qword_1008DF170);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v28 = v2;
    v5 = 0;
    v6 = v2 + 56;
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
      v17 = *(v2 + 48) + 24 * (v14 | (v5 << 6));
      v18 = *v17;
      v19 = *(v17 + 8);
      v20 = *(v17 + 16);
      Hasher.init(_seed:)();
      sub_10001D510(v18, v19, v20);
      v29._countAndFlagsBits = v18;
      v29._object = v19;
      sub_100035B30(v29, v20);
      String.hash(into:)();

      if (!v20 || v20 == 2)
      {
        Hasher._combine(_:)(v18);
      }

      else if (v20 == 1)
      {
        String.hash(into:)();
      }

      result = Hasher._finalize()();
      v21 = -1 << *(v4 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_33;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v4 + 48) + 24 * v12;
      *v13 = v18;
      *(v13 + 8) = v19;
      *(v13 + 16) = v20;
      ++*(v4 + 16);
      v2 = v28;
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v5 >= v10)
      {

        v1 = v0;
        goto LABEL_31;
      }

      v16 = *(v6 + 8 * v5);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {

LABEL_31:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1001A7D64()
{
  v1 = v0;
  v32 = type metadata accessor for DateComponents();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_100140278(&qword_1008DF0A0);
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
      sub_10002BA3C(&qword_1008DF090, &type metadata accessor for DateComponents);
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

uint64_t sub_1001A8080()
{
  v1 = v0;
  v2 = *v0;
  sub_100140278(&qword_1008DF068);
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

uint64_t sub_1001A82B8()
{
  v1 = v0;
  v32 = type metadata accessor for UUID();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_100140278(&qword_1008DF148);
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
      sub_10002BA3C(&qword_1008E4E10, &type metadata accessor for UUID);
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

uint64_t sub_1001A85D4()
{
  v1 = v0;
  v2 = *v0;
  sub_100140278(&qword_1008DF1E0);
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

uint64_t sub_1001A87F4()
{
  v1 = v0;
  v32 = type metadata accessor for PlaylistItem();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_100140278(&qword_1008DF108);
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
      sub_10002BA3C(&qword_1008DF0F8, &type metadata accessor for PlaylistItem);
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

uint64_t sub_1001A8B10(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  sub_100140278(a2);
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

Swift::Int sub_1001A8D1C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1001AA4EC(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1001A8D88(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_1001A8D88(uint64_t *a1)
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
      sub_1001A8F8C(v7, v8, a1, v4);
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
    return sub_1001A8E80(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1001A8E80(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = (*a4 + 16 * a3);
    v7 = result - a3;
LABEL_5:
    v14 = v7;
    v15 = v6;
    while (1)
    {

      v8 = String.count.getter();
      v9 = String.count.getter();

      if (v9 >= v8)
      {
LABEL_4:
        ++v4;
        v6 = v15 + 2;
        v7 = v14 - 1;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v10 = *v6;
      v11 = v6[1];
      *v6 = *(v6 - 1);
      *(v6 - 1) = v11;
      *(v6 - 2) = v10;
      v6 -= 2;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1001A8F8C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v89 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_89:
    v7 = *v89;
    if (!*v89)
    {
      goto LABEL_127;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_121:
      result = sub_1001A99A4(v8);
      v8 = result;
    }

    v79 = *(v8 + 2);
    if (v79 >= 2)
    {
      while (*a3)
      {
        v80 = v8;
        v8 = (v79 - 1);
        v81 = *&v80[16 * v79];
        v82 = *&v80[16 * v79 + 24];
        sub_1001A963C((*a3 + 16 * v81), (*a3 + 16 * *&v80[16 * v79 + 16]), (*a3 + 16 * v82), v7);
        if (v5)
        {
        }

        if (v82 < v81)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v80 = sub_1001A99A4(v80);
        }

        if (v79 - 2 >= *(v80 + 2))
        {
          goto LABEL_115;
        }

        v83 = &v80[16 * v79];
        *v83 = v81;
        *(v83 + 1) = v82;
        result = sub_1001A9918(v79 - 1);
        v8 = v80;
        v79 = *(v80 + 2);
        if (v79 <= 1)
        {
        }
      }

      goto LABEL_125;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7;
    if (v7 + 1 >= v6)
    {
      v6 = v7 + 1;
    }

    else
    {
      v87 = v5;
      v90 = 16 * v7;
      v10 = *a3 + 16 * v7 + 40;

      v94 = String.count.getter();
      v92 = String.count.getter();

      v85 = v7;
      v11 = v7 + 2;
      while (v6 != v11)
      {

        v7 = String.count.getter();
        v12 = String.count.getter();

        ++v11;
        v10 += 16;
        if (v92 < v94 == v12 >= v7)
        {
          v6 = v11 - 1;
          break;
        }
      }

      v9 = v85;
      v5 = v87;
      v13 = v90;
      if (v92 < v94)
      {
        if (v6 < v85)
        {
          goto LABEL_118;
        }

        if (v85 < v6)
        {
          v14 = 0;
          v15 = 16 * v6;
          v16 = v85;
          do
          {
            if (v16 != v6 + v14 - 1)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v17 = (v21 + v13);
              v18 = v21 + v15;
              v19 = *v17;
              v20 = v17[1];
              *v17 = *(v18 - 16);
              *(v18 - 16) = v19;
              *(v18 - 8) = v20;
            }

            ++v16;
            --v14;
            v15 -= 16;
            v13 += 16;
          }

          while (v16 < v6 + v14);
        }
      }
    }

    v22 = a3[1];
    if (v6 < v22)
    {
      if (__OFSUB__(v6, v9))
      {
        goto LABEL_117;
      }

      if (v6 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_119;
        }

        if (v9 + a4 >= v22)
        {
          v7 = a3[1];
        }

        else
        {
          v7 = v9 + a4;
        }

        if (v7 < v9)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v6 != v7)
        {
          break;
        }
      }
    }

    v7 = v6;
    if (v6 < v9)
    {
      goto LABEL_116;
    }

LABEL_29:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1001A1D54(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v24 = *(v8 + 2);
    v23 = *(v8 + 3);
    v25 = v24 + 1;
    if (v24 >= v23 >> 1)
    {
      result = sub_1001A1D54((v23 > 1), v24 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v25;
    v26 = &v8[16 * v24];
    *(v26 + 4) = v9;
    *(v26 + 5) = v7;
    v27 = *v89;
    if (!*v89)
    {
      goto LABEL_126;
    }

    if (v24)
    {
      while (1)
      {
        v28 = v25 - 1;
        if (v25 >= 4)
        {
          break;
        }

        if (v25 == 3)
        {
          v29 = *(v8 + 4);
          v30 = *(v8 + 5);
          v39 = __OFSUB__(v30, v29);
          v31 = v30 - v29;
          v32 = v39;
LABEL_48:
          if (v32)
          {
            goto LABEL_105;
          }

          v45 = &v8[16 * v25];
          v47 = *v45;
          v46 = *(v45 + 1);
          v48 = __OFSUB__(v46, v47);
          v49 = v46 - v47;
          v50 = v48;
          if (v48)
          {
            goto LABEL_108;
          }

          v51 = &v8[16 * v28 + 32];
          v53 = *v51;
          v52 = *(v51 + 1);
          v39 = __OFSUB__(v52, v53);
          v54 = v52 - v53;
          if (v39)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v49, v54))
          {
            goto LABEL_112;
          }

          if (v49 + v54 >= v31)
          {
            if (v31 < v54)
            {
              v28 = v25 - 2;
            }

            goto LABEL_69;
          }

          goto LABEL_62;
        }

        v55 = &v8[16 * v25];
        v57 = *v55;
        v56 = *(v55 + 1);
        v39 = __OFSUB__(v56, v57);
        v49 = v56 - v57;
        v50 = v39;
LABEL_62:
        if (v50)
        {
          goto LABEL_107;
        }

        v58 = &v8[16 * v28];
        v60 = *(v58 + 4);
        v59 = *(v58 + 5);
        v39 = __OFSUB__(v59, v60);
        v61 = v59 - v60;
        if (v39)
        {
          goto LABEL_110;
        }

        if (v61 < v49)
        {
          goto LABEL_3;
        }

LABEL_69:
        v66 = v28 - 1;
        if (v28 - 1 >= v25)
        {
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
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v67 = *&v8[16 * v66 + 32];
        v68 = *&v8[16 * v28 + 40];
        sub_1001A963C((*a3 + 16 * v67), (*a3 + 16 * *&v8[16 * v28 + 32]), (*a3 + 16 * v68), v27);
        if (v5)
        {
        }

        if (v68 < v67)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1001A99A4(v8);
        }

        if (v66 >= *(v8 + 2))
        {
          goto LABEL_102;
        }

        v69 = &v8[16 * v66];
        *(v69 + 4) = v67;
        *(v69 + 5) = v68;
        result = sub_1001A9918(v28);
        v25 = *(v8 + 2);
        if (v25 <= 1)
        {
          goto LABEL_3;
        }
      }

      v33 = &v8[16 * v25 + 32];
      v34 = *(v33 - 64);
      v35 = *(v33 - 56);
      v39 = __OFSUB__(v35, v34);
      v36 = v35 - v34;
      if (v39)
      {
        goto LABEL_103;
      }

      v38 = *(v33 - 48);
      v37 = *(v33 - 40);
      v39 = __OFSUB__(v37, v38);
      v31 = v37 - v38;
      v32 = v39;
      if (v39)
      {
        goto LABEL_104;
      }

      v40 = &v8[16 * v25];
      v42 = *v40;
      v41 = *(v40 + 1);
      v39 = __OFSUB__(v41, v42);
      v43 = v41 - v42;
      if (v39)
      {
        goto LABEL_106;
      }

      v39 = __OFADD__(v31, v43);
      v44 = v31 + v43;
      if (v39)
      {
        goto LABEL_109;
      }

      if (v44 >= v36)
      {
        v62 = &v8[16 * v28 + 32];
        v64 = *v62;
        v63 = *(v62 + 1);
        v39 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v39)
        {
          goto LABEL_113;
        }

        if (v31 < v65)
        {
          v28 = v25 - 2;
        }

        goto LABEL_69;
      }

      goto LABEL_48;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_89;
    }
  }

  v86 = v9;
  v88 = v5;
  v70 = *a3;
  v71 = (*a3 + 16 * v6);
  v72 = v9 - v6;
  v91 = v7;
LABEL_80:
  v93 = v71;
  v95 = v6;
  v73 = v72;
  while (1)
  {

    v74 = String.count.getter();
    v75 = String.count.getter();

    if (v75 >= v74)
    {
LABEL_79:
      v6 = v95 + 1;
      v71 = v93 + 2;
      --v72;
      v7 = v91;
      if (v95 + 1 != v91)
      {
        goto LABEL_80;
      }

      v9 = v86;
      v5 = v88;
      if (v91 < v86)
      {
        goto LABEL_116;
      }

      goto LABEL_29;
    }

    if (!v70)
    {
      break;
    }

    v76 = *v71;
    v77 = v71[1];
    *v71 = *(v71 - 1);
    *(v71 - 1) = v77;
    *(v71 - 2) = v76;
    v71 -= 2;
    if (__CFADD__(v73++, 1))
    {
      goto LABEL_79;
    }
  }

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
  return result;
}

uint64_t sub_1001A963C(char *__src, char *a2, char *a3, char *__dst)
{
  v4 = a3;
  v5 = a2;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 15;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 4;
  v10 = a3 - a2;
  v11 = a3 - a2 + 15;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 4;
  if (v9 < v11 >> 4)
  {
    v13 = __dst;
    if (__dst != __src || &__src[16 * v9] <= __dst)
    {
      memmove(__dst, __src, 16 * v9);
    }

    if (v7 < 16 || v5 >= v4)
    {
      v5 = v6;
      v14 = &v13[16 * v9];
      goto LABEL_39;
    }

    v14 = &v13[16 * v9];
    while (1)
    {

      v15 = String.count.getter();
      v16 = String.count.getter();

      if (v16 >= v15)
      {
        break;
      }

      v17 = v5;
      v18 = v6 == v5;
      v5 += 16;
      if (!v18)
      {
        goto LABEL_17;
      }

LABEL_18:
      v6 += 16;
      if (v13 >= v14 || v5 >= v4)
      {
        v5 = v6;
        goto LABEL_39;
      }
    }

    v17 = v13;
    v18 = v6 == v13;
    v13 += 16;
    if (v18)
    {
      goto LABEL_18;
    }

LABEL_17:
    *v6 = *v17;
    goto LABEL_18;
  }

  if (__dst != a2 || &a2[16 * v12] <= __dst)
  {
    v19 = __dst;
    memmove(__dst, a2, 16 * v12);
    __dst = v19;
  }

  v27 = __dst;
  v14 = &__dst[16 * v12];
  if (v10 < 16)
  {
    v13 = __dst;
    goto LABEL_39;
  }

  v13 = __dst;
  if (v5 > v6)
  {
    do
    {
      v26 = v5;
      v25 = v5 - 16;
      v4 -= 16;
      v20 = v14;
      while (1)
      {
        v21 = v4 + 16;
        v14 -= 16;

        v22 = String.count.getter();
        v23 = String.count.getter();

        if (v23 < v22)
        {
          break;
        }

        if (v21 != v20)
        {
          *v4 = *v14;
        }

        v4 -= 16;
        v20 = v14;
        v13 = v27;
        if (v14 <= v27)
        {
          v5 = v26;
          goto LABEL_39;
        }
      }

      if (v21 != v26)
      {
        *v4 = *v25;
      }

      v13 = v27;
      v14 = v20;
      if (v20 <= v27)
      {
        break;
      }

      v5 = v25;
    }

    while (v25 > v6);
    v5 = v25;
  }

LABEL_39:
  if (v5 != v13 || v5 >= &v13[(v14 - v13 + (v14 - v13 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v5, v13, 16 * ((v14 - v13) / 16));
  }

  return 1;
}

uint64_t sub_1001A9918(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1001A99A4(v3);
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

unint64_t sub_1001A99B8(unint64_t result)
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

void *sub_1001A9A78(void *result, void *a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_1001A9BE8(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = type metadata accessor for DateComponents();
  v42 = *(v40 - 8);
  v8 = __chkstk_darwin(v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
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
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
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
    result = 0;
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
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
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
      result = a1;
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
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_1001A9EA8(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
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
      *a2 = *(*(a4 + 48) + (v14 | (v9 << 6)));
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

uint64_t sub_1001A9FF0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v41 = a5(0);
  v43 = *(v41 - 8);
  v9 = (__chkstk_darwin)();
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v40 = &v34 - v12;
  v13 = a4 + 56;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 56;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1001AA298(uint64_t result, uint64_t *a2, uint64_t a3, unint64_t a4)
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
      if (!__CocoaDictionary.Iterator.nextKey()())
      {
        goto LABEL_31;
      }

      sub_1000059F8(0, &qword_1008E1750);
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
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
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

uint64_t sub_1001AA58C(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1001AB5AC();
  result = Set.init(minimumCapacity:)();
  v10 = result;
  if (v2)
  {
    v4 = (a1 + 48);
    do
    {
      v6 = *(v4 - 2);
      v5 = *(v4 - 1);
      v7 = *v4;
      v4 += 24;
      sub_10001D510(v6, v5, v7);
      sub_1001A3EF0(v8, v6, v5, v7);
      sub_10001D4F8(v8[0], v8[1], v9);
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_1001AA634(uint64_t result, uint64_t a2, uint64_t a3, char **a4)
{
  v5 = *(result + 16);
  if (v5)
  {
    for (i = (result + 32); ; ++i)
    {
      v10 = *i;

      sub_1001A1640(&v10, a2, a3, a4);
      if (v4)
      {
        break;
      }

      if (!--v5)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_1001AA6D4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1001A45BC(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

_OWORD *sub_1001AA76C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1001AA77C(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  sub_10002BA3C(&qword_1008E4E10, &type metadata accessor for UUID);
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
      sub_1001A470C(v8, v6);
      (*(v11 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

uint64_t sub_1001AA918(uint64_t a1)
{
  v2 = type metadata accessor for PlaylistItem();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  sub_10002BA3C(&qword_1008DF0F8, &type metadata accessor for PlaylistItem);
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
      sub_1001A4A34(v8, v5);
      (*(v11 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

uint64_t sub_1001AAAB4(unint64_t a1)
{
  v2 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  while (1)
  {
    sub_1000059F8(0, &qword_1008F8670);
    sub_10002E1BC(&qword_1008DF0D8, &qword_1008F8670);
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
    v2 = CNContact_ptr;
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

      sub_1001A4D38(&v9, v7, &qword_1008F8670, CNContact_ptr, &qword_1008DF0E0, &unk_1006D8E48);

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

void sub_1001AAC54(__int128 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = a1[1];
  v83 = *a1;
  v84[0] = v8;
  *(v84 + 11) = *(a1 + 27);
  v9 = a1[1];
  v71 = *a1;
  v72[0] = v9;
  *(v72 + 11) = *(a1 + 27);
  v10 = *(a2 + 80);
  v77 = *(a2 + 64);
  v78 = v10;
  v11 = *(a2 + 16);
  v73 = *a2;
  v74 = v11;
  v12 = *(a2 + 48);
  v75 = *(a2 + 32);
  v76 = v12;
  v81[1] = v11;
  v81[2] = v75;
  LOBYTE(v79) = *(a2 + 96);
  v82 = *(a2 + 48);
  v81[0] = v73;
  v13 = *(a2 + 56);
  v85 = *(a2 + 58);
  sub_1001AB1C4(a2, &v54);
  sub_1001AB1C4(a2, &v54);
  sub_1001AB220(a1, &v54);
  v14 = [a3 unitManager];
  if (!v14)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  v15 = v14;
  v80 = *a1;
  type metadata accessor for TrendsCoachingStatisticsManager();
  swift_allocObject();
  sub_10001B104(&v80, &v54, &qword_1008DC8F8);
  v16 = sub_10051AFF0(a1, a2, v15);
  if (v4)
  {
    sub_1001AB27C(a1);

    sub_1001AB2D0(a2);
    sub_1001AB27C(a1);
    v58 = v77;
    v59 = v78;
    LOBYTE(v60) = v79;
    v54 = v73;
    v55 = v74;
    v56 = v75;
    v57 = v76;
    sub_1001AB2D0(&v54);
    return;
  }

  v39 = v16;
  v69 = v83;
  v70[0] = v84[0];
  *(v70 + 11) = *(v84 + 11);
  v17 = a3;
  v18 = sub_10051C4C0(v81);
  v19 = [v17 unitManager];

  if (!v19)
  {
    goto LABEL_13;
  }

  v20 = sub_10051C6CC(v18, v85, v19);
  v22 = v21;

  if (v20 < v22 && v13 == 2)
  {
    sub_1001AB2D0(a2);
    static os_log_type_t.error.getter();
    v23 = HKLogActivity;
    os_log(_:dso:log:_:_:)();

    sub_1001AB3E0();
    swift_allocError();
    swift_willThrow();
    sub_1001AB27C(a1);
    v58 = v77;
    v59 = v78;
    LOBYTE(v60) = v79;
    v54 = v73;
    v55 = v74;
    v56 = v75;
    v57 = v76;
    sub_1001AB2D0(&v54);

    v42 = v83;
    *v43 = v84[0];
    *&v43[11] = *(v84 + 11);
    v43[27] = v85;
    *&v44 = v17;
    sub_1001AB324(&v42);
  }

  else
  {
    v24 = *&v81[0];
    if (*(*&v81[0] + 16) == 365)
    {
      sub_1001AB2D0(a2);
    }

    else
    {
      *&v54 = 0;
      *(&v54 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(58);
      v25._object = 0x800000010074A1C0;
      v25._countAndFlagsBits = 0xD000000000000037;
      String.append(_:)(v25);
      v26 = *(v24 + 16);
      sub_1001AB2D0(a2);
      *&v42 = v26;
      v27._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v27);

      v28._countAndFlagsBits = 46;
      v28._object = 0xE100000000000000;
      String.append(_:)(v28);
      v29 = v54;
      static os_log_type_t.error.getter();
      v30 = HKLogActivity;
      sub_100140278(&unk_1008E4E50);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_1006D46C0;
      *(v31 + 56) = &type metadata for String;
      *(v31 + 64) = sub_10000A788();
      *(v31 + 32) = v29;
      v32 = v30;
      os_log(_:dso:log:_:_:)();
    }

    v47 = v76;
    v48 = v77;
    v49 = v78;
    *&v43[16] = v72[1];
    v44 = v73;
    v45 = v74;
    v46 = v75;
    v42 = v71;
    *v43 = v72[0];
    v51 = v69;
    *v52 = v70[0];
    *&v52[11] = *(v70 + 11);
    v60 = v76;
    v61 = v77;
    v62 = v78;
    v56 = v72[1];
    v57 = v73;
    v58 = v74;
    v59 = v75;
    *&v50 = v79;
    *(&v50 + 1) = v39;
    v52[27] = v85;
    v53 = v17;
    v54 = v71;
    v55 = v72[0];
    v63 = v79;
    v64 = v39;
    v65 = v69;
    *v66 = v70[0];
    *&v66[11] = *(v70 + 11);
    v67 = v85;
    v68 = v17;
    sub_1001AB378(&v42, v41);
    sub_1001AB3B0(&v54);
    v33 = *v52;
    *(a4 + 160) = v51;
    *(a4 + 176) = v33;
    *(a4 + 192) = *&v52[16];
    *(a4 + 208) = v53;
    v34 = v48;
    *(a4 + 96) = v47;
    *(a4 + 112) = v34;
    v35 = v50;
    *(a4 + 128) = v49;
    *(a4 + 144) = v35;
    v36 = v44;
    *(a4 + 32) = *&v43[16];
    *(a4 + 48) = v36;
    v37 = v46;
    *(a4 + 64) = v45;
    *(a4 + 80) = v37;
    v38 = *v43;
    *a4 = v42;
    *(a4 + 16) = v38;
  }
}

unint64_t sub_1001AB3E0()
{
  result = qword_1008DF080;
  if (!qword_1008DF080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DF080);
  }

  return result;
}

uint64_t sub_1001AB4EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FitnessPlusStackViewModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001AB550(uint64_t a1)
{
  v2 = type metadata accessor for FitnessPlusStackViewModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1001AB5AC()
{
  result = qword_1008DF228;
  if (!qword_1008DF228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DF228);
  }

  return result;
}

uint64_t sub_1001AB610(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 216))
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

uint64_t sub_1001AB658(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 216) = 1;
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

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1001AB6E0()
{
  result = qword_1008DF248;
  if (!qword_1008DF248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DF248);
  }

  return result;
}

NSString sub_1001AB744()
{
  result = String._bridgeToObjectiveC()();
  qword_100925168 = result;
  return result;
}

void sub_1001AB77C()
{
  v1 = OBJC_IVAR___CHDivingDetailMapTableViewCell_titleLabel1;
  v2 = *&v0[OBJC_IVAR___CHDivingDetailMapTableViewCell_titleLabel1];
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 mainBundle];
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 localizedStringForKey:v6 value:0 table:0];

  if (!v7)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = String._bridgeToObjectiveC()();
  }

  [v4 setText:v7];
  v8 = *&v0[v1];
  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 defaultFontForTextStyle:UIFontTextStyleBody];
  [v10 setFont:v11];

  v12 = *&v0[v1];
  v13 = objc_opt_self();
  v14 = v12;
  v15 = [v13 labelColor];
  [v14 setTextColor:v15];

  v16 = [v0 contentView];
  [v16 addSubview:*&v0[v1]];

  v17 = OBJC_IVAR___CHDivingDetailMapTableViewCell_valueLabel1;
  v18 = *&v0[OBJC_IVAR___CHDivingDetailMapTableViewCell_valueLabel1];
  v19 = String._bridgeToObjectiveC()();
  [v18 setText:v19];

  v20 = *&v0[v17];
  v21 = objc_opt_self();
  v22 = v20;
  v23 = [v21 diveColors];
  if (!v23)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  v24 = v23;
  v25 = [v23 nonGradientTextColor];

  [v22 setTextColor:v25];
  v26 = qword_1008DAFE8;
  v27 = *&v0[v17];
  if (v26 != -1)
  {
    swift_once();
  }

  v28 = qword_1009261E0;
  [v27 setFont:qword_1009261E0];

  [*&v0[v17] setNumberOfLines:0];
  v29 = [v0 contentView];
  [v29 addSubview:*&v0[v17]];

  v30 = OBJC_IVAR___CHDivingDetailMapTableViewCell_titleLabel2;
  v31 = *&v0[OBJC_IVAR___CHDivingDetailMapTableViewCell_titleLabel2];
  v32 = [v3 mainBundle];
  v33 = String._bridgeToObjectiveC()();
  v34 = [v32 localizedStringForKey:v33 value:0 table:0];

  if (!v34)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = String._bridgeToObjectiveC()();
  }

  [v31 setText:v34];
  v35 = *&v0[v30];
  v36 = [v9 defaultFontForTextStyle:UIFontTextStyleBody];
  [v35 setFont:v36];

  v37 = *&v0[v30];
  v38 = [v13 labelColor];
  [v37 setTextColor:v38];

  v39 = [v0 contentView];
  [v39 addSubview:*&v0[v30]];

  v40 = OBJC_IVAR___CHDivingDetailMapTableViewCell_valueLabel2;
  v41 = *&v0[OBJC_IVAR___CHDivingDetailMapTableViewCell_valueLabel2];
  v42 = [v21 elapsedTimeColors];
  if (!v42)
  {
    goto LABEL_13;
  }

  v43 = v42;
  v44 = [v42 nonGradientTextColor];

  [v41 setTextColor:v44];
  [*&v0[v40] setFont:v28];
  v45 = *&v0[v40];
  v46 = String._bridgeToObjectiveC()();
  [v45 setText:v46];

  [*&v0[v40] setNumberOfLines:0];
  v47 = [v0 contentView];
  [v47 addSubview:*&v0[v40]];
}

void sub_1001ABD60()
{
  v1 = OBJC_IVAR___CHDivingDetailMapTableViewCell_titleLabel1;
  v2 = *&v0[OBJC_IVAR___CHDivingDetailMapTableViewCell_titleLabel1];
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 mainBundle];
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 localizedStringForKey:v6 value:0 table:0];

  if (!v7)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = String._bridgeToObjectiveC()();
  }

  [v4 setText:v7];
  v8 = *&v0[v1];
  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 defaultFontForTextStyle:UIFontTextStyleBody];
  [v10 setFont:v11];

  v12 = *&v0[v1];
  v13 = objc_opt_self();
  v14 = v12;
  v15 = [v13 labelColor];
  [v14 setTextColor:v15];

  v16 = [v0 contentView];
  [v16 addSubview:*&v0[v1]];

  v17 = OBJC_IVAR___CHDivingDetailMapTableViewCell_valueLabel1;
  v18 = *&v0[OBJC_IVAR___CHDivingDetailMapTableViewCell_valueLabel1];
  v19 = String._bridgeToObjectiveC()();
  [v18 setText:v19];

  v20 = *&v0[v17];
  v21 = objc_opt_self();
  v22 = v20;
  v23 = [v21 paceColors];
  if (v23)
  {
    v24 = v23;
    v25 = [v23 nonGradientTextColor];

    [v22 setTextColor:v25];
    v26 = qword_1008DAFE8;
    v27 = *&v0[v17];
    if (v26 != -1)
    {
      swift_once();
    }

    [v27 setFont:qword_1009261E0];

    [*&v0[v17] setNumberOfLines:0];
    v28 = [v0 contentView];
    [v28 addSubview:*&v0[v17]];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1001AC0B0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1001AC0F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1001AC144()
{
  NSObject.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  v1 = *(v0 + 40);
  v2 = *(v1 + 16);
  Hasher._combine(_:)(v2);
  if (v2)
  {
    v3 = v1 + 40;
    do
    {

      String.hash(into:)();

      v3 += 16;
      --v2;
    }

    while (v2);
  }
}

Swift::Int sub_1001AC1E4()
{
  Hasher.init(_seed:)();
  sub_1001AC144();
  return Hasher._finalize()();
}

Swift::Int sub_1001AC228()
{
  Hasher.init(_seed:)();
  sub_1001AC144();
  return Hasher._finalize()();
}

uint64_t sub_1001AC264(void *a1, void *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v11 = a2[5];
  v12 = a1[5];
  sub_1001AC3CC();
  if ((static NSObject.== infix(_:_:)() & 1) == 0 || (v2 != v6 || v4 != v7) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v3 != v8 || v5 != v9) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  return sub_10031B15C(v12, v11);
}

unint64_t sub_1001AC378()
{
  result = qword_1008DF290;
  if (!qword_1008DF290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DF290);
  }

  return result;
}

unint64_t sub_1001AC3CC()
{
  result = qword_1008DB898;
  if (!qword_1008DB898)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1008DB898);
  }

  return result;
}

id sub_1001AC57C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BackgroundSupplementaryView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1001AC5E0()
{
  sub_10005C91C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for AttributedString();
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1001AC6A4(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(type metadata accessor for DynamicTypeSize() - 8) + 64);
  if (v6 <= 8)
  {
    v7 = 8;
  }

  else
  {
    v7 = v6;
  }

  v8 = type metadata accessor for AttributedString();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(*(a3 + 16) - 8);
  v12 = *(v9 + 80);
  v13 = *(v9 + 64);
  v14 = *(v11 + 80);
  if (v10 <= *(v11 + 84))
  {
    v15 = *(v11 + 84);
  }

  else
  {
    v15 = *(v9 + 84);
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = v13 + v12;
  v18 = v13 + 7;
  v19 = v14 + 8;
  if (v16 >= a2)
  {
    goto LABEL_34;
  }

  v20 = ((*(v11 + 64) + ((v19 + ((((v18 + ((v17 + ((v7 + v12 + 2) & ~v12)) & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v14) + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  v21 = v20 & 0xFFFFFFF8;
  if ((v20 & 0xFFFFFFF8) != 0)
  {
    v22 = 2;
  }

  else
  {
    v22 = a2 - v16 + 1;
  }

  if (v22 >= 0x10000)
  {
    v23 = 4;
  }

  else
  {
    v23 = 2;
  }

  if (v22 < 0x100)
  {
    v23 = 1;
  }

  if (v22 >= 2)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  if (v24 > 1)
  {
    if (v24 == 2)
    {
      v25 = *(a1 + v20);
      if (!v25)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v25 = *(a1 + v20);
      if (!v25)
      {
        goto LABEL_34;
      }
    }
  }

  else if (!v24 || (v25 = *(a1 + v20)) == 0)
  {
LABEL_34:
    if (v10 == v16)
    {
      v28 = *(v9 + 48);

      return v28((a1 + v7 + v12 + 2) & ~v12, v10, v8);
    }

    else
    {
      v29 = (v18 + ((v17 + ((a1 + v7 + v12 + 2) & ~v12)) & ~v12)) & 0xFFFFFFFFFFFFFFF8;
      if ((v15 & 0x80000000) != 0)
      {
        v31 = *(v11 + 48);

        return v31((v19 + ((v29 + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v14);
      }

      else
      {
        v30 = *(v29 + 8);
        if (v30 >= 0xFFFFFFFF)
        {
          LODWORD(v30) = -1;
        }

        return (v30 + 1);
      }
    }
  }

  v27 = v25 - 1;
  if (v21)
  {
    v27 = 0;
    LODWORD(v21) = *a1;
  }

  return v16 + (v21 | v27) + 1;
}

void sub_1001AC94C(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(type metadata accessor for DynamicTypeSize() - 8) + 64);
  if (v8 <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = v8;
  }

  v10 = type metadata accessor for AttributedString();
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  v13 = *(*(a4 + 16) - 8);
  v14 = *(v11 + 80);
  v15 = *(v11 + 64);
  v16 = *(v13 + 80);
  if (v12 <= *(v13 + 84))
  {
    v17 = *(v13 + 84);
  }

  else
  {
    v17 = *(v11 + 84);
  }

  if (v17 <= 0x7FFFFFFF)
  {
    v18 = 0x7FFFFFFF;
  }

  else
  {
    v18 = v17;
  }

  v19 = v15 + v14;
  v20 = v15 + 7;
  v21 = ((*(v13 + 64) + ((v16 + 8 + ((((v15 + 7 + ((v15 + v14 + ((v9 + v14 + 2) & ~v14)) & ~v14)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v16) + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v18 >= a3)
  {
    v24 = 0;
    v25 = a2 - v18;
    if (a2 <= v18)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (((*(v13 + 64) + ((v16 + 8 + ((((v15 + 7 + ((v15 + v14 + ((v9 + v14 + 2) & ~v14)) & ~v14)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8)) & ~v16) + 7) & 0xFFFFFFF8) == 0xFFFFFFE0)
    {
      v22 = a3 - v18 + 1;
    }

    else
    {
      v22 = 2;
    }

    if (v22 >= 0x10000)
    {
      v23 = 4;
    }

    else
    {
      v23 = 2;
    }

    if (v22 < 0x100)
    {
      v23 = 1;
    }

    if (v22 >= 2)
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    v25 = a2 - v18;
    if (a2 <= v18)
    {
LABEL_23:
      if (v24 > 1)
      {
        if (v24 != 2)
        {
          *(a1 + v21) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_39;
        }

        *(a1 + v21) = 0;
      }

      else if (v24)
      {
        *(a1 + v21) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_39;
      }

      if (!a2)
      {
        return;
      }

LABEL_39:
      if (v12 == v18)
      {
        v28 = *(v11 + 56);

        v28((a1 + v9 + v14 + 2) & ~v14, a2, v12, v10);
      }

      else
      {
        v29 = ((v20 + ((v19 + ((a1 + v9 + v14 + 2) & ~v14)) & ~v14)) & 0xFFFFFFFFFFFFFFF8);
        if ((v17 & 0x80000000) != 0)
        {
          v30 = *(v13 + 56);

          v30((v16 + 8 + ((v29 + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v16, a2);
        }

        else if ((a2 & 0x80000000) != 0)
        {
          *v29 = a2 & 0x7FFFFFFF;
          v29[1] = 0;
        }

        else
        {
          v29[1] = (a2 - 1);
        }
      }

      return;
    }
  }

  if (v21)
  {
    v26 = 1;
  }

  else
  {
    v26 = v25;
  }

  if (v21)
  {
    v27 = ~v18 + a2;
    bzero(a1, v21);
    *a1 = v27;
  }

  if (v24 > 1)
  {
    if (v24 == 2)
    {
      *(a1 + v21) = v26;
    }

    else
    {
      *(a1 + v21) = v26;
    }
  }

  else if (v24)
  {
    *(a1 + v21) = v26;
  }
}

uint64_t sub_1001ACCA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _ConditionalContent.Storage();
  __chkstk_darwin(v4);
  (*(*(a2 - 8) + 16))(&v7 - v5, a1, a2);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_1001ACDA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for _ConditionalContent.Storage();
  __chkstk_darwin(v5);
  (*(*(a3 - 8) + 16))(&v8 - v6, a1, a3);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_1001ACE98@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v98 = a2;
  v93 = *(a1 + 2);
  v4 = type metadata accessor for ModifiedContent();
  v107 = v4;
  v108 = sub_100141EEC(&qword_1008DC530);
  v109 = v108;
  v110 = sub_100141EEC(&qword_1008DF340);
  v111 = sub_100141EEC(&qword_1008DF348);
  swift_getTupleTypeMetadata();
  v86 = type metadata accessor for TupleView();
  WitnessTable = swift_getWitnessTable();
  v5 = type metadata accessor for VStack();
  v92 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v90 = v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v89 = v76 - v8;
  sub_100141EEC(&qword_1008DF350);
  swift_getTupleTypeMetadata2();
  v9 = type metadata accessor for TupleView();
  v10 = swift_getWitnessTable();
  v81 = v9;
  v80 = v10;
  v11 = type metadata accessor for HStack();
  v84 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v83 = v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v82 = v76 - v14;
  v107 = v4;
  v108 = sub_100141EEC(&qword_1008DC530);
  v109 = v108;
  v110 = sub_100141EEC(&qword_1008DF358);
  swift_getTupleTypeMetadata();
  v15 = type metadata accessor for TupleView();
  v16 = swift_getWitnessTable();
  v76[3] = v15;
  v76[2] = v16;
  v17 = type metadata accessor for VStack();
  v79 = *(v17 - 8);
  v18 = __chkstk_darwin(v17);
  v78 = v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v77 = v76 - v20;
  v21 = type metadata accessor for DynamicTypeSize();
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  v25 = v76 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = v76 - v26;
  v94 = v11;
  v28 = type metadata accessor for _ConditionalContent();
  v91 = *(v28 - 8);
  v29 = __chkstk_darwin(v28);
  v88 = v76 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v87 = v76 - v31;
  v32 = type metadata accessor for _ConditionalContent();
  v96 = *(v32 - 8);
  v97 = v32;
  __chkstk_darwin(v32);
  v34 = v76 - v33;
  v35 = a1;
  v36 = *(a1 + 9);
  v37 = v2;
  LODWORD(v36) = *(v2 + v36);
  v95 = v34;
  if (v36 == 1)
  {
    v90 = v35;
    v92 = v5;
    sub_10005491C(v27);
    (*(v22 + 104))(v25, enum case for DynamicTypeSize.xxLarge(_:), v21);
    sub_1001B0378();
    v38 = dispatch thunk of static Comparable.< infix(_:_:)();
    v39 = *(v22 + 8);
    v39(v25, v21);
    v40 = (v39)(v27, v21);
    if (v38)
    {
      v41 = static HorizontalAlignment.leading.getter();
      __chkstk_darwin(v41);
      v42 = *(v90 + 3);
      v76[-4] = v93;
      v76[-3] = v42;
      v76[-2] = v37;
      v43 = v78;
      VStack.init(alignment:spacing:content:)();
      v44 = swift_getWitnessTable();
      v45 = v77;
      sub_100073018(v43, v17, v44);
      v46 = *(v79 + 8);
      v46(v43, v17);
      sub_100073018(v45, v17, v44);
      swift_getWitnessTable();
      v47 = v87;
      sub_1001ACCA8(v43, v17);
      v46(v43, v17);
      v48 = v45;
      v49 = v17;
    }

    else
    {
      __chkstk_darwin(v40);
      v59 = *(v90 + 3);
      v76[-4] = v93;
      v76[-3] = v59;
      v76[-2] = v37;
      static VerticalAlignment.center.getter();
      v60 = v83;
      HStack.init(alignment:spacing:content:)();
      v61 = v94;
      v62 = swift_getWitnessTable();
      v63 = v82;
      sub_100073018(v60, v61, v62);
      v46 = *(v84 + 8);
      v46(v60, v61);
      sub_100073018(v63, v61, v62);
      swift_getWitnessTable();
      v47 = v87;
      sub_1001ACDA0(v60, v17, v61);
      v46(v60, v61);
      v48 = v63;
      v49 = v61;
    }

    v46(v48, v49);
    v64 = swift_getWitnessTable();
    v65 = swift_getWitnessTable();
    v99 = v64;
    v100 = v65;
    v66 = swift_getWitnessTable();
    v67 = v88;
    sub_100073018(v47, v28, v66);
    swift_getWitnessTable();
    v58 = v95;
    sub_1001ACCA8(v67, v28);
    v68 = *(v91 + 8);
    v68(v67, v28);
    v68(v47, v28);
  }

  else
  {
    v50 = static HorizontalAlignment.leading.getter();
    __chkstk_darwin(v50);
    v51 = *(v35 + 3);
    v76[-4] = v93;
    v76[-3] = v51;
    v76[-2] = v2;
    v76[1] = v17;
    v52 = v90;
    VStack.init(alignment:spacing:content:)();
    v53 = swift_getWitnessTable();
    v54 = v89;
    sub_100073018(v52, v5, v53);
    v55 = *(v92 + 8);
    v55(v52, v5);
    sub_100073018(v54, v5, v53);
    v56 = swift_getWitnessTable();
    v57 = swift_getWitnessTable();
    v105 = v56;
    v106 = v57;
    swift_getWitnessTable();
    v58 = v95;
    sub_1001ACDA0(v52, v28, v5);
    v55(v52, v5);
    v55(v54, v5);
  }

  v69 = swift_getWitnessTable();
  v70 = swift_getWitnessTable();
  v103 = v69;
  v104 = v70;
  v71 = swift_getWitnessTable();
  v72 = swift_getWitnessTable();
  v101 = v71;
  v102 = v72;
  v73 = v97;
  v74 = swift_getWitnessTable();
  sub_100073018(v58, v73, v74);
  return (*(v96 + 8))(v58, v73);
}

uint64_t sub_1001ADAF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v54 = a4;
  v44 = type metadata accessor for AttributedString();
  v55 = *(v44 - 8);
  __chkstk_darwin(v44);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ModifiedContent();
  v48 = *(v9 - 8);
  v10 = v48;
  v11 = __chkstk_darwin(v9);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v50 = &v42 - v14;
  v45 = a3;
  v46 = a2;
  v42 = type metadata accessor for HistoryListItemStack();
  v43 = a1;
  View.padding(_:)();
  v136 = a3;
  v137 = &protocol witness table for _PaddingLayout;
  v49 = v9;
  WitnessTable = swift_getWitnessTable();
  v47 = v13;
  sub_100073018(v13, v9, WitnessTable);
  v15 = *(v10 + 8);
  v52 = v10 + 8;
  v53 = v15;
  v15(v13, v9);
  v16 = v42;
  v17 = *(v42 + 40);
  v18 = *(v55 + 16);
  v55 += 16;
  v19 = a1 + v17;
  v20 = v44;
  v18(v8, v19, v44);
  v21 = Text.init(_:)();
  v23 = v22;
  LOBYTE(v9) = v24;
  v26 = v25;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v135 = v9 & 1;
  *&v125 = v21;
  *(&v125 + 1) = v23;
  LOBYTE(v126) = v9 & 1;
  *(&v126 + 1) = *v134;
  DWORD1(v126) = *&v134[3];
  *(&v126 + 1) = v26;
  v27 = *(v16 + 44);
  v28 = v43;
  v18(v8, v43 + v27, v20);
  v29 = Text.init(_:)();
  v31 = v30;
  LOBYTE(v23) = v32;
  v34 = v33;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v124 = v23 & 1;
  *&v96 = v29;
  *(&v96 + 1) = v31;
  LOBYTE(v97) = v23 & 1;
  *(&v97 + 1) = *v123;
  DWORD1(v97) = *&v123[3];
  *(&v97 + 1) = v34;
  v35 = static VerticalAlignment.center.getter();
  LOBYTE(v64) = 1;
  sub_1001AE350(v28, v119);
  v113 = v119[8];
  v114[0] = v119[9];
  *(v114 + 10) = *(&v119[9] + 10);
  v109 = v119[4];
  v110 = v119[5];
  v111 = v119[6];
  v112 = v119[7];
  v105 = v119[0];
  v106 = v119[1];
  v107 = v119[2];
  v108 = v119[3];
  v115[8] = v119[8];
  v116[0] = v119[9];
  *(v116 + 10) = *(&v119[9] + 10);
  v115[4] = v119[4];
  v115[5] = v119[5];
  v115[7] = v119[7];
  v115[6] = v119[6];
  v115[0] = v119[0];
  v115[1] = v119[1];
  v115[3] = v119[3];
  v115[2] = v119[2];
  sub_10001B104(&v105, &v117, &qword_1008DF360);
  sub_10000EA04(v115, &qword_1008DF360);
  *(&v119[7] + 7) = v112;
  *(&v119[8] + 7) = v113;
  *(&v119[9] + 7) = v114[0];
  *(&v119[10] + 1) = *(v114 + 10);
  *(&v119[3] + 7) = v108;
  *(&v119[4] + 7) = v109;
  *(&v119[5] + 7) = v110;
  *(&v119[6] + 7) = v111;
  *(v119 + 7) = v105;
  *(&v119[1] + 7) = v106;
  *(&v119[2] + 7) = v107;
  *&v118[129] = v119[8];
  *&v118[145] = v119[9];
  *&v118[161] = v119[10];
  *&v118[65] = v119[4];
  *&v118[81] = v119[5];
  *&v118[97] = v119[6];
  *&v118[113] = v119[7];
  *&v118[1] = v119[0];
  *&v118[17] = v119[1];
  *&v118[33] = v119[2];
  v117 = v35;
  v118[0] = v64;
  v118[177] = BYTE9(v114[1]);
  *&v118[49] = v119[3];
  v36 = v47;
  v38 = v49;
  v37 = v50;
  (*(v48 + 16))(v47, v50, v49);
  v92 = v131;
  v93 = v132;
  v94 = v133;
  v88 = v127;
  v89 = v128;
  v90 = v129;
  v91 = v130;
  v86 = v125;
  v87 = v126;
  v95[0] = v36;
  v95[1] = &v86;
  v83 = v102;
  v84 = v103;
  v85 = v104;
  v79 = v98;
  v80 = v99;
  v81 = v100;
  v82 = v101;
  v77 = v96;
  v78 = v97;
  v76 = *&v118[176];
  v74 = *&v118[144];
  v75 = *&v118[160];
  v70 = *&v118[80];
  v71 = *&v118[96];
  v72 = *&v118[112];
  v73 = *&v118[128];
  v66 = *&v118[16];
  v67 = *&v118[32];
  v68 = *&v118[48];
  v69 = *&v118[64];
  v64 = v117;
  v65 = *v118;
  v95[2] = &v77;
  v95[3] = &v64;
  sub_10001B104(&v125, v119, &qword_1008DC530);
  sub_10001B104(&v96, v119, &qword_1008DC530);
  sub_10001B104(&v117, v119, &qword_1008DF358);
  v60 = v38;
  v61 = sub_100140278(&qword_1008DC530);
  v62 = v61;
  v63 = sub_100140278(&qword_1008DF358);
  v56 = WitnessTable;
  v57 = sub_100065FB4();
  v58 = v57;
  v59 = sub_10014A6B0(&qword_1008DF368, &qword_1008DF358);
  sub_100525330(v95, 4uLL, &v60);
  sub_10000EA04(&v117, &qword_1008DF358);
  sub_10000EA04(&v96, &qword_1008DC530);
  sub_10000EA04(&v125, &qword_1008DC530);
  v39 = v37;
  v40 = v53;
  v53(v39, v38);
  v119[10] = v74;
  v119[11] = v75;
  v120 = v76;
  v119[6] = v70;
  v119[7] = v71;
  v119[9] = v73;
  v119[8] = v72;
  v119[2] = v66;
  v119[3] = v67;
  v119[5] = v69;
  v119[4] = v68;
  v119[1] = v65;
  v119[0] = v64;
  sub_10000EA04(v119, &qword_1008DF358);
  v121[6] = v83;
  v121[7] = v84;
  v121[8] = v85;
  v121[2] = v79;
  v121[3] = v80;
  v121[5] = v82;
  v121[4] = v81;
  v121[1] = v78;
  v121[0] = v77;
  sub_10000EA04(v121, &qword_1008DC530);
  v122[6] = v92;
  v122[7] = v93;
  v122[8] = v94;
  v122[2] = v88;
  v122[3] = v89;
  v122[5] = v91;
  v122[4] = v90;
  v122[1] = v87;
  v122[0] = v86;
  sub_10000EA04(v122, &qword_1008DC530);
  return v40(v36, v38);
}

uint64_t sub_1001AE350@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Font.Leading();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for HistoryListItemStack();
  v9 = (a1 + v8[12]);
  v10 = v9[1];
  *&v63 = *v9;
  *(&v63 + 1) = v10;
  sub_10000FCBC();

  v11 = Text.init<A>(_:)();
  v52 = v12;
  v53 = v11;
  v14 = v13;
  v54 = v15;
  v16 = sub_1001AE710();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v51 = static Edge.Set.all.getter();
  v23 = v14 & 1;
  LOBYTE(v63) = v14 & 1;
  LOBYTE(v70[0]) = 0;
  static Font.footnote.getter();
  (*(v5 + 104))(v7, enum case for Font.Leading.tight(_:), v4);
  v24 = Font.leading(_:)();

  (*(v5 + 8))(v7, v4);
  KeyPath = swift_getKeyPath();
  v26 = static HierarchicalShapeStyle.secondary.getter();
  v27 = *(a1 + v8[13]);
  if (v27 < 1)
  {
    v27 = 0;
    v29 = 0;
    v30 = 0;
    v37 = 0;
    v36 = 0;
    v39 = 0;
    v38 = 1;
  }

  else
  {
    v28 = (a1 + v8[15]);
    v29 = *v28;
    v30 = v28[1];
    v50 = v24;
    v31 = v23;
    v32 = KeyPath;
    v34 = v28[2];
    v33 = v28[3];
    v35 = static Edge.Set.all.getter();
    v36 = v33;
    v37 = v34;
    KeyPath = v32;
    v23 = v31;
    v38 = 0;
    LOBYTE(v63) = 0;
    LOBYTE(v70[0]) = 0;
    v39 = v35;
    v24 = v50;
  }

  v41 = v52;
  v40 = v53;
  *&v56 = v53;
  *(&v56 + 1) = v52;
  LOBYTE(v57) = v23;
  *(&v57 + 1) = *v86;
  DWORD1(v57) = *&v86[3];
  v42 = v54;
  *(&v57 + 1) = v54;
  v43 = v51;
  LOBYTE(v58) = v51;
  *(&v58 + 1) = *v85;
  DWORD1(v58) = *&v85[3];
  *(&v58 + 1) = v16;
  *&v59 = v18;
  *(&v59 + 1) = v20;
  *&v60 = v22;
  BYTE8(v60) = 0;
  *(&v60 + 9) = v87[0];
  HIDWORD(v60) = *(v87 + 3);
  *&v61 = KeyPath;
  *(&v61 + 1) = v24;
  v62 = v26;
  v65 = v58;
  v64 = v57;
  v63 = v56;
  LODWORD(v69) = v26;
  v68 = v61;
  v67 = v60;
  v66 = v59;
  v55[104] = 1;
  v44 = v57;
  v45 = v58;
  *a2 = v56;
  *(a2 + 16) = v44;
  v46 = v66;
  v47 = v68;
  v48 = v69;
  *(a2 + 64) = v67;
  *(a2 + 80) = v47;
  *(a2 + 32) = v45;
  *(a2 + 48) = v46;
  *(a2 + 96) = v48;
  *(a2 + 104) = 0;
  *(a2 + 112) = 1;
  *(a2 + 120) = v27;
  *(a2 + 128) = v39;
  *(a2 + 136) = v29;
  *(a2 + 144) = v30;
  *(a2 + 152) = v37;
  *(a2 + 160) = v36;
  *(a2 + 168) = 0;
  *(a2 + 169) = v38;
  v70[0] = v40;
  v70[1] = v41;
  v71 = v23;
  *&v72[3] = *&v86[3];
  *v72 = *v86;
  v73 = v42;
  v74 = v43;
  *&v75[3] = *&v85[3];
  *v75 = *v85;
  v76 = v16;
  v77 = v18;
  v78 = v20;
  v79 = v22;
  v80 = 0;
  *&v81[3] = *(v87 + 3);
  *v81 = v87[0];
  v82 = KeyPath;
  v83 = v24;
  v84 = v26;
  sub_10001B104(&v56, v55, &qword_1008DF370);
  return sub_10000EA04(v70, &qword_1008DF370);
}

double sub_1001AE710()
{
  v0 = type metadata accessor for DynamicTypeSize();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v10 - v5;
  sub_10005491C(&v10 - v5);
  (*(v1 + 104))(v4, enum case for DynamicTypeSize.xxLarge(_:), v0);
  sub_1001B0378();
  v7 = dispatch thunk of static Comparable.< infix(_:_:)();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  result = 10.0;
  if ((v7 & 1) == 0)
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1001AE87C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v18 = a3;
  v5 = type metadata accessor for ModifiedContent();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v16 = &v16 - v10;
  type metadata accessor for HistoryListItemStack();
  View.padding(_:)();
  v23[2] = a2;
  v23[3] = &protocol witness table for _PaddingLayout;
  WitnessTable = swift_getWitnessTable();
  sub_100073018(v9, v5, WitnessTable);
  v17 = *(v6 + 8);
  v17(v9, v5);
  v12 = static HorizontalAlignment.center.getter();
  v22[0] = 0;
  sub_1001AEBD8(a1, v27);
  memcpy(v24, v27, 0x174uLL);
  memcpy(v25, v27, 0x174uLL);
  sub_10001B104(v24, v26, &qword_1008DF378);
  sub_10000EA04(v25, &qword_1008DF378);
  memcpy(&v27[7], v24, 0x174uLL);
  v26[0] = v12;
  v26[1] = 0;
  LOBYTE(v26[2]) = v22[0];
  memcpy(&v26[2] + 1, v27, 0x17BuLL);
  v13 = v16;
  (*(v6 + 16))(v9, v16, v5);
  v23[0] = v9;
  memcpy(v22, v26, 0x18CuLL);
  v23[1] = v22;
  sub_10001B104(v26, v27, &qword_1008DF350);
  v21[0] = v5;
  v21[1] = sub_100140278(&qword_1008DF350);
  v19 = WitnessTable;
  v20 = sub_10014A6B0(&qword_1008DF380, &qword_1008DF350);
  sub_100525330(v23, 2uLL, v21);
  sub_10000EA04(v26, &qword_1008DF350);
  v14 = v17;
  v17(v13, v5);
  memcpy(v27, v22, 0x18CuLL);
  sub_10000EA04(v27, &qword_1008DF350);
  return v14(v9, v5);
}

uint64_t sub_1001AEBD8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = static VerticalAlignment.top.getter();
  LOBYTE(__src[0]) = 0;
  sub_1001AEE30(a1, v17);
  *(v16 + 7) = v17[0];
  *(&v16[1] + 7) = v17[1];
  *(&v16[2] + 7) = v18[0];
  v16[3] = *(v18 + 9);
  v5 = __src[0];
  v6 = static VerticalAlignment.bottom.getter();
  LOBYTE(v8[0]) = 0;
  sub_1001AEFAC(a1, __src);
  memcpy(__dst, __src, 0x104uLL);
  memcpy(v20, __src, 0x104uLL);
  sub_10001B104(__dst, v23, &qword_1008DF388);
  sub_10000EA04(v20, &qword_1008DF388);
  memcpy(&v15[7], __dst, 0x104uLL);
  v21[0] = v4;
  v21[1] = 0;
  v22[0] = v5;
  *&v22[1] = v16[0];
  *&v22[17] = v16[1];
  *&v22[33] = v16[2];
  *&v22[49] = v16[3];
  *v14 = v4;
  *&v14[16] = *v22;
  v14[80] = HIBYTE(v16[3]);
  *&v14[48] = *&v22[32];
  *&v14[64] = *&v22[48];
  *&v14[32] = *&v22[16];
  v23[0] = v6;
  v23[1] = 0;
  LOBYTE(v23[2]) = 0;
  memcpy(&v23[2] + 1, v15, 0x10BuLL);
  memcpy(&v14[88], v23, 0x11CuLL);
  memcpy(a2, v14, 0x174uLL);
  __src[0] = v6;
  __src[1] = 0;
  LOBYTE(__src[2]) = 0;
  memcpy(&__src[2] + 1, v15, 0x10BuLL);
  sub_10001B104(v21, v8, &qword_1008DF390);
  sub_10001B104(v23, v8, &qword_1008DF398);
  sub_10000EA04(__src, &qword_1008DF398);
  v8[0] = v4;
  v8[1] = 0;
  v9 = v5;
  v10 = v16[0];
  v11 = v16[1];
  v12 = v16[2];
  v13 = v16[3];
  return sub_10000EA04(v8, &qword_1008DF390);
}

uint64_t sub_1001AEE30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AttributedString();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for HistoryListItemStack();
  (*(v5 + 16))(v7, a1 + *(v8 + 40), v4);
  v9 = Text.init(_:)();
  v11 = v10;
  v12 = *(a1 + *(v8 + 52));
  LOBYTE(v8) = v13 & 1;
  v16[24] = v13 & 1;
  v16[16] = 1;
  v16[8] = v12 < 1;
  *a2 = v9;
  *(a2 + 8) = v10;
  *(a2 + 16) = v13 & 1;
  *(a2 + 24) = v14;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v12 & ~(v12 >> 63);
  *(a2 + 56) = v12 < 1;
  sub_10006965C(v9, v10, v13 & 1);

  sub_10004642C(v9, v11, v8);
}

uint64_t sub_1001AEFAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = type metadata accessor for Font.Leading();
  v4 = *(v56 - 8);
  __chkstk_darwin(v56);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AttributedString();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for HistoryListItemStack();
  (*(v8 + 16))(v10, a1 + *(v11 + 44), v7);
  v12 = Text.init(_:)();
  v64 = v13;
  v65 = v12;
  v15 = v14;
  v66 = v16;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v63 = v15 & 1;
  v123 = v15 & 1;
  v17 = (a1 + *(v11 + 48));
  v18 = v17[1];
  v110 = *v17;
  v111 = v18;
  sub_10000FCBC();

  v19 = Text.init<A>(_:)();
  v61 = v20;
  v62 = v19;
  v60 = v21;
  LOBYTE(v8) = v22;
  v23 = sub_1001AE710();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = static Edge.Set.all.getter();
  v58 = v8 & 1;
  v59 = v30;
  LOBYTE(v110) = v8 & 1;
  LOBYTE(v79) = 0;
  static Font.footnote.getter();
  v31 = v56;
  (*(v4 + 104))(v6, enum case for Font.Leading.tight(_:), v56);
  v57 = Font.leading(_:)();

  (*(v4 + 8))(v6, v31);
  KeyPath = swift_getKeyPath();
  v33 = static HierarchicalShapeStyle.secondary.getter();
  *(&v80 + 1) = *v122;
  DWORD1(v80) = *&v122[3];
  v68 = 1;
  v34 = *v70;
  *(&v89 + 1) = *v70;
  DWORD1(v89) = *&v70[3];
  v35 = *v69;
  *(&v90 + 1) = *v69;
  DWORD1(v90) = *&v69[3];
  *(&v92 + 9) = *v71;
  HIDWORD(v92) = *&v71[3];
  *(a2 + 152) = 1;
  v36 = v64;
  v37 = v65;
  *&v79 = v65;
  *(&v79 + 1) = v64;
  LOBYTE(v31) = v63;
  LOBYTE(v80) = v63;
  v38 = v66;
  *(&v80 + 1) = v66;
  v84 = v75;
  v85 = v76;
  v86 = v77;
  v87 = v78;
  v81 = v72;
  v82 = v73;
  v83 = v74;
  v39 = v61;
  v40 = v62;
  v41 = v60;
  *&v88 = v62;
  *(&v88 + 1) = v60;
  v43 = v58;
  v42 = v59;
  LOBYTE(v89) = v58;
  *(&v89 + 1) = v61;
  LOBYTE(v90) = v59;
  *(&v90 + 1) = v23;
  *&v91 = v25;
  *(&v91 + 1) = v27;
  *&v92 = v29;
  BYTE8(v92) = 0;
  *&v93 = KeyPath;
  v44 = v57;
  *(&v93 + 1) = v57;
  v94 = v33;
  *(&v67[6] + 7) = v33;
  *(&v67[2] + 7) = v90;
  *(&v67[1] + 7) = v89;
  *(v67 + 7) = v88;
  *(&v67[3] + 7) = v91;
  *(&v67[5] + 7) = v93;
  *(&v67[4] + 7) = v92;
  v45 = v79;
  v46 = v80;
  v47 = v73;
  v48 = v74;
  *(a2 + 32) = v72;
  *(a2 + 48) = v47;
  *a2 = v45;
  *(a2 + 16) = v46;
  v49 = v84;
  v50 = v85;
  v51 = v87;
  *(a2 + 112) = v86;
  *(a2 + 128) = v51;
  *(a2 + 80) = v49;
  *(a2 + 96) = v50;
  *(a2 + 64) = v48;
  *(a2 + 144) = 0;
  v52 = v67[2];
  *(a2 + 201) = v67[3];
  v53 = v67[5];
  *(a2 + 217) = v67[4];
  *(a2 + 233) = v53;
  *(a2 + 244) = *(&v67[5] + 11);
  v54 = v67[1];
  *(a2 + 153) = v67[0];
  *(a2 + 169) = v54;
  *(a2 + 185) = v52;
  v95[0] = v40;
  v95[1] = v41;
  v96 = v43;
  *&v97[3] = *&v70[3];
  *v97 = v34;
  v98 = v39;
  v99 = v42;
  *&v100[3] = *&v69[3];
  *v100 = v35;
  v101 = v23;
  v102 = v25;
  v103 = v27;
  v104 = v29;
  v105 = 0;
  *v106 = *v71;
  *&v106[3] = *&v71[3];
  v107 = KeyPath;
  v108 = v44;
  v109 = v33;
  sub_10001B104(&v79, &v110, &qword_1008DC530);
  sub_10001B104(&v88, &v110, &qword_1008DF370);
  sub_10000EA04(v95, &qword_1008DF370);
  v110 = v37;
  v111 = v36;
  v112 = v31;
  *v113 = *v122;
  *&v113[3] = *&v122[3];
  v114 = v38;
  v119 = v76;
  v120 = v77;
  v121 = v78;
  v115 = v72;
  v116 = v73;
  v117 = v74;
  v118 = v75;
  return sub_10000EA04(&v110, &qword_1008DC530);
}

uint64_t sub_1001AF538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v57 = a4;
  v7 = type metadata accessor for DynamicTypeSize();
  v50 = *(v7 - 8);
  v51 = v7;
  __chkstk_darwin(v7);
  v49 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AttributedString();
  v44 = *(v9 - 8);
  v45 = v9;
  __chkstk_darwin(v9);
  v43 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ModifiedContent();
  v58 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v53 = &v41 - v15;
  v48 = a2;
  v46 = a3;
  v16 = type metadata accessor for HistoryListItemStack();
  sub_1001AFE30();
  v42 = a1;
  View.padding(_:)();
  v138 = a3;
  v139 = &protocol witness table for _PaddingLayout;
  v52 = v11;
  WitnessTable = swift_getWitnessTable();
  v47 = v14;
  sub_100073018(v14, v11, WitnessTable);
  v17 = *(v58 + 8);
  v55 = v58 + 8;
  v56 = v17;
  v17(v14, v11);
  v18 = v43;
  v19 = *(v44 + 16);
  v20 = v45;
  v19(v43, a1 + *(v16 + 40), v45);
  v21 = Text.init(_:)();
  v23 = v22;
  LOBYTE(v14) = v24;
  v26 = v25;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v137 = v14 & 1;
  *&v127 = v21;
  *(&v127 + 1) = v23;
  LOBYTE(v128) = v14 & 1;
  *(&v128 + 1) = *v136;
  DWORD1(v128) = *&v136[3];
  *(&v128 + 1) = v26;
  v27 = v42;
  v19(v18, v42 + *(v16 + 44), v20);
  v28 = Text.init(_:)();
  v30 = v29;
  LOBYTE(v16) = v31;
  v33 = v32;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v126 = v16 & 1;
  *&v116 = v28;
  *(&v116 + 1) = v30;
  LOBYTE(v117) = v16 & 1;
  *(&v117 + 1) = *v125;
  DWORD1(v117) = *&v125[3];
  *(&v117 + 1) = v33;
  v34 = v49;
  sub_10005491C(v49);
  LODWORD(v28) = sub_10001DEC8(v34, 2uLL, 0, 3u);
  (*(v50 + 8))(v34, v51);
  LOBYTE(v33) = v28 == 2;
  v35 = static VerticalAlignment.bottom.getter();
  LOBYTE(v69) = 1;
  sub_1001AFF2C(v27, v113);
  v106 = *&v113[96];
  v107 = *&v113[112];
  v102 = *&v113[32];
  v103 = *&v113[48];
  v104 = *&v113[64];
  v105 = *&v113[80];
  v100 = *v113;
  v101 = *&v113[16];
  v109[6] = *&v113[96];
  v109[7] = *&v113[112];
  v109[2] = *&v113[32];
  v109[3] = *&v113[48];
  v109[4] = *&v113[64];
  v109[5] = *&v113[80];
  v108 = v113[128];
  v110 = v113[128];
  v109[0] = *v113;
  v109[1] = *&v113[16];
  sub_10001B104(&v100, &v111, &qword_1008DF3A0);
  sub_10000EA04(v109, &qword_1008DF3A0);
  *&v113[103] = v106;
  *&v113[87] = v105;
  *&v113[39] = v102;
  *&v113[23] = v101;
  *&v113[119] = v107;
  *&v113[55] = v103;
  *&v113[71] = v104;
  *&v113[7] = v100;
  *(&v112[5] + 1) = *&v113[80];
  *(&v112[6] + 1) = *&v113[96];
  *(&v112[7] + 1) = *&v113[112];
  *(&v112[1] + 1) = *&v113[16];
  *(&v112[2] + 1) = *&v113[32];
  *(&v112[3] + 1) = *&v113[48];
  *(&v112[4] + 1) = *&v113[64];
  v113[135] = v108;
  v111 = v35;
  LOBYTE(v112[0]) = v69;
  *(&v112[8] + 1) = *&v113[128];
  *(v112 + 1) = *v113;
  v36 = v47;
  v38 = v52;
  v37 = v53;
  (*(v58 + 16))(v47, v53, v52);
  v96 = v133;
  v97 = v134;
  v98 = v135;
  v92 = v129;
  v93 = v130;
  v94 = v131;
  v95 = v132;
  v90 = v127;
  v91 = v128;
  v99[0] = v36;
  v99[1] = &v90;
  v87 = v122;
  v88 = v123;
  v89 = v124;
  v83 = v118;
  v84 = v119;
  v85 = v120;
  v86 = v121;
  v81 = v116;
  v82 = v117;
  v78 = 0;
  v79 = 0;
  v80 = v33;
  v99[2] = &v81;
  v99[3] = &v78;
  v75 = v112[5];
  v76 = v112[6];
  v77[0] = v112[7];
  *(v77 + 9) = *(&v112[7] + 9);
  v71 = v112[1];
  v72 = v112[2];
  v73 = v112[3];
  v74 = v112[4];
  v69 = v111;
  v70 = v112[0];
  v99[4] = &v69;
  sub_10001B104(&v127, v113, &qword_1008DC530);
  sub_10001B104(&v116, v113, &qword_1008DC530);
  sub_10001B104(&v111, v113, &qword_1008DF348);
  v64 = v38;
  v65 = sub_100140278(&qword_1008DC530);
  v66 = v65;
  v67 = sub_100140278(&qword_1008DF340);
  v68 = sub_100140278(&qword_1008DF348);
  v59 = WitnessTable;
  v60 = sub_100065FB4();
  v61 = v60;
  v62 = sub_1001B03E8();
  v63 = sub_10014A6B0(&unk_1008DF3B0, &qword_1008DF348);
  sub_100525330(v99, 5uLL, &v64);
  sub_10000EA04(&v111, &qword_1008DF348);
  sub_10000EA04(&v116, &qword_1008DC530);
  sub_10000EA04(&v127, &qword_1008DC530);
  v39 = v56;
  v56(v37, v38);
  *&v113[96] = v75;
  *&v113[112] = v76;
  *&v113[128] = v77[0];
  *&v113[137] = *(v77 + 9);
  *&v113[32] = v71;
  *&v113[48] = v72;
  *&v113[64] = v73;
  *&v113[80] = v74;
  *v113 = v69;
  *&v113[16] = v70;
  sub_10000EA04(v113, &qword_1008DF348);
  v114[6] = v87;
  v114[7] = v88;
  v114[8] = v89;
  v114[2] = v83;
  v114[3] = v84;
  v114[5] = v86;
  v114[4] = v85;
  v114[1] = v82;
  v114[0] = v81;
  sub_10000EA04(v114, &qword_1008DC530);
  v115[6] = v96;
  v115[7] = v97;
  v115[8] = v98;
  v115[2] = v92;
  v115[3] = v93;
  v115[5] = v95;
  v115[4] = v94;
  v115[1] = v91;
  v115[0] = v90;
  sub_10000EA04(v115, &qword_1008DC530);
  return v39(v36, v38);
}

double sub_1001AFE30()
{
  v0 = type metadata accessor for DynamicTypeSize();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005491C(v3);
  v4 = sub_10001DEC8(v3, 2uLL, 0, 3u);
  (*(v1 + 8))(v3, v0);
  result = -2.0;
  if (!v4)
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1001AFF2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Font.Leading();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for HistoryListItemStack();
  v9 = (a1 + *(v8 + 48));
  v38 = a1;
  v10 = v9[1];
  *&v51 = *v9;
  *(&v51 + 1) = v10;
  sub_10000FCBC();

  v11 = Text.init<A>(_:)();
  v40 = v12;
  v41 = v11;
  v14 = v13;
  v42 = v15;
  v16 = sub_1001B0274();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v39 = static Edge.Set.all.getter();
  LOBYTE(v51) = v14 & 1;
  LOBYTE(v58[0]) = 0;
  static Font.footnote.getter();
  (*(v5 + 104))(v7, enum case for Font.Leading.tight(_:), v4);
  v23 = Font.leading(_:)();

  (*(v5 + 8))(v7, v4);
  KeyPath = swift_getKeyPath();
  v25 = static HierarchicalShapeStyle.secondary.getter();
  v26 = *(v38 + *(v8 + 52));
  v28 = v40;
  v27 = v41;
  *&v44 = v41;
  *(&v44 + 1) = v40;
  LOBYTE(v45) = v14 & 1;
  *(&v45 + 1) = *v74;
  DWORD1(v45) = *&v74[3];
  v29 = v42;
  *(&v45 + 1) = v42;
  v30 = v39;
  LOBYTE(v46) = v39;
  *(&v46 + 1) = *v73;
  DWORD1(v46) = *&v73[3];
  *(&v46 + 1) = v16;
  *&v47 = v18;
  *(&v47 + 1) = v20;
  *&v48 = v22;
  BYTE8(v48) = 0;
  *(&v48 + 9) = v75[0];
  HIDWORD(v48) = *(v75 + 3);
  *&v49 = KeyPath;
  *(&v49 + 1) = v23;
  v50 = v25;
  LODWORD(v57) = v25;
  v51 = v44;
  v52 = v45;
  v53 = v46;
  v54 = v47;
  v55 = v48;
  v56 = v49;
  v43[112] = 0;
  v43[104] = v26 < 1;
  v31 = v45;
  *a2 = v44;
  *(a2 + 16) = v31;
  v32 = v53;
  v33 = v54;
  v34 = v56;
  v35 = v57;
  *(a2 + 64) = v55;
  *(a2 + 80) = v34;
  *(a2 + 32) = v32;
  *(a2 + 48) = v33;
  *(a2 + 96) = v35;
  *(a2 + 104) = 0x4020000000000000;
  *(a2 + 112) = 0;
  *(a2 + 120) = v26 & ~(v26 >> 63);
  *(a2 + 128) = v26 < 1;
  v58[0] = v27;
  v58[1] = v28;
  v59 = v14 & 1;
  *&v60[3] = *&v74[3];
  *v60 = *v74;
  v61 = v29;
  v62 = v30;
  *&v63[3] = *&v73[3];
  *v63 = *v73;
  v64 = v16;
  v65 = v18;
  v66 = v20;
  v67 = v22;
  v68 = 0;
  *&v69[3] = *(v75 + 3);
  *v69 = v75[0];
  v70 = KeyPath;
  v71 = v23;
  v72 = v25;
  sub_10001B104(&v44, v43, &qword_1008DF370);
  return sub_10000EA04(v58, &qword_1008DF370);
}

double sub_1001B0274()
{
  v0 = type metadata accessor for DynamicTypeSize();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005491C(v3);
  v4 = sub_10001DEC8(v3, 2uLL, 0, 3u);
  (*(v1 + 8))(v3, v0);
  result = 0.0;
  if (v4 == 2)
  {
    return 10.0;
  }

  return result;
}

unint64_t sub_1001B0378()
{
  result = qword_1008DC898;
  if (!qword_1008DC898)
  {
    type metadata accessor for DynamicTypeSize();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DC898);
  }

  return result;
}

unint64_t sub_1001B03E8()
{
  result = qword_1008DF3A8;
  if (!qword_1008DF3A8)
  {
    sub_100141EEC(&qword_1008DF340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DF3A8);
  }

  return result;
}

id sub_1001B0500()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivitySharingReplyMessageComposerView.Coordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001B05A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  v6 = v4[1];
  sub_100140278(&unk_1008DF4C0);
  UIViewControllerRepresentableContext.coordinator.getter();
  v7 = v10;
  v8 = sub_1005BD7DC(v3, v5, v6, v7);

  return v8;
}

id sub_1001B063C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = (v2 + *(a1 + 24));
  v5 = v4[1];
  v16 = *v4;
  v17 = v5;
  v18 = *(v4 + 1);
  sub_100140278(&unk_1008DF3F0);
  Binding.projectedValue.getter();
  v6 = v14;
  v7 = v15;
  v8 = type metadata accessor for ActivitySharingReplyMessageComposerView.Coordinator();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR____TtCV10FitnessApp39ActivitySharingReplyMessageComposerView11Coordinator__pendingOutgoingReply];
  *v10 = v13;
  *(v10 + 2) = v6;
  *(v10 + 3) = v7;
  v12.receiver = v9;
  v12.super_class = v8;
  result = objc_msgSendSuper2(&v12, "init");
  *a2 = result;
  return result;
}

uint64_t sub_1001B0728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001B0C60(&qword_1008DF4B8);

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1001B07A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001B0C60(&qword_1008DF4B8);

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1001B0828()
{
  sub_1001B0C60(&qword_1008DF4B8);
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_1001B086C(uint64_t a1)
{
  swift_getObjectType();
  v3 = static os_log_type_t.default.getter();
  v4 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v3))
  {
    v5 = v4;
    v6 = swift_slowAlloc();
    v19[0] = swift_slowAlloc();
    *v6 = 136315394;
    v7 = _typeName(_:qualified:)();
    v9 = sub_10000AFDC(v7, v8, v19);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    v10 = 0xE600000000000000;
    v11 = 0x64656C696166;
    v12 = 0xE700000000000000;
    v13 = 0x6E776F6E6B6E75;
    if (a1 == 1)
    {
      v13 = 1953391987;
      v12 = 0xE400000000000000;
    }

    if (a1 != 2)
    {
      v11 = v13;
      v10 = v12;
    }

    if (a1)
    {
      v14 = v11;
    }

    else
    {
      v14 = 0x656C6C65636E6163;
    }

    if (a1)
    {
      v15 = v10;
    }

    else
    {
      v15 = 0xE900000000000064;
    }

    v16 = sub_10000AFDC(v14, v15, v19);

    *(v6 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v5, v3, "%s Activity sharing reply message sent with result: %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v17 = *(v1 + OBJC_IVAR____TtCV10FitnessApp39ActivitySharingReplyMessageComposerView11Coordinator__pendingOutgoingReply + 8);
  v19[0] = *(v1 + OBJC_IVAR____TtCV10FitnessApp39ActivitySharingReplyMessageComposerView11Coordinator__pendingOutgoingReply);
  v19[1] = v17;
  v20 = *(v1 + OBJC_IVAR____TtCV10FitnessApp39ActivitySharingReplyMessageComposerView11Coordinator__pendingOutgoingReply + 16);
  sub_100140278(&unk_1008DF3F0);
  return Binding.wrappedValue.setter();
}

uint64_t type metadata accessor for ActivitySharingReplyMessageComposerView()
{
  result = qword_1008DF458;
  if (!qword_1008DF458)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001B0AE4()
{
  sub_1001B0B70();
  if (v0 <= 0x3F)
  {
    sub_1001B0BC8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1001B0B70()
{
  if (!qword_1008DF468)
  {
    type metadata accessor for URL();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1008DF468);
    }
  }
}

void sub_1001B0BC8()
{
  if (!qword_1008DF470)
  {
    sub_100141EEC(&unk_1008DF478);
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &qword_1008DF470);
    }
  }
}

uint64_t sub_1001B0C60(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ActivitySharingReplyMessageComposerView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1001B0D10(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4.receiver = a1;
  v4.super_class = a3();
  return objc_msgSendSuper2(&v4, "init");
}

id sub_1001B0E24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v12.receiver = v3;
  v12.super_class = type metadata accessor for WorkoutLocationAnnotationView();
  v6 = objc_msgSendSuper2(&v12, "initWithAnnotation:reuseIdentifier:", a1, v5);

  v7 = v6;
  [v7 setFrame:{0.0, 0.0, 15.0, 15.0}];
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 clearColor];
  [v9 setBackgroundColor:v10];

  [v9 setCanShowCallout:0];
  sub_1001B0FE8(a1);

  swift_unknownObjectRelease();
  return v9;
}

void sub_1001B0FE8(uint64_t a1)
{
  if (!a1)
  {
    goto LABEL_8;
  }

  type metadata accessor for WorkoutScrubbedLocationAnnotation();
  if (swift_dynamicCastClass())
  {
    v2 = [objc_opt_self() systemBlueColor];
    goto LABEL_9;
  }

  type metadata accessor for WorkoutStartLocationAnnotation();
  if (swift_dynamicCastClass())
  {
    v2 = HKUIStandardMapGreenColor();
    goto LABEL_9;
  }

  type metadata accessor for WorkoutEndLocationAnnotation();
  if (swift_dynamicCastClass())
  {
    v2 = HKUIStandardMapRedColor();
  }

  else
  {
LABEL_8:
    v2 = [objc_opt_self() whiteColor];
  }

LABEL_9:
  v3 = v2;
  [v1 setTintColor:v3];
}

void sub_1001B10C4(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = UIGraphicsGetCurrentContext();
  if (v9)
  {
    c = v9;
    CGContextSetLineWidth(v9, 2.0);
    v10 = [v4 tintColor];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 CGColor];

      CGContextSetFillColorWithColor(c, v12);
      v13 = [objc_opt_self() whiteColor];
      v14 = [v13 CGColor];

      CGContextSetStrokeColorWithColor(c, v14);
      v17.origin.x = a1;
      v17.origin.y = a2;
      v17.size.width = a3;
      v17.size.height = a4;
      v18 = CGRectInset(v17, 2.0, 2.0);
      CGContextAddEllipseInRect(c, v18);
      CGContextDrawPath(c, kCGPathFillStroke);
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_1001B12B8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1001B1314(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v21 = a2;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v22 = *(v5 - 8);
  v23 = v5;
  __chkstk_darwin(v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchTime();
  v19 = v8;
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v19 - v13;
  sub_1000078CC();
  v15 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v16 = *(v9 + 8);
  v16(v12, v8);
  aBlock[4] = v20;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000449A8;
  aBlock[3] = &unk_100849C88;
  v17 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000261C4();
  sub_100140278(&unk_1008E7F50);
  sub_10002621C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v17);

  (*(v24 + 8))(v4, v2);
  (*(v22 + 8))(v7, v23);
  return (v16)(v14, v19);
}

uint64_t sub_1001B1664(char a1)
{
  if (a1)
  {
    v2 = sub_100042744(0, 1, 1, _swiftEmptyArrayStorage);
    v4 = *(v2 + 2);
    v3 = *(v2 + 3);
    if (v4 >= v3 >> 1)
    {
      v2 = sub_100042744((v3 > 1), v4 + 1, 1, v2);
    }

    *(v2 + 2) = v4 + 1;
    v5 = &v2[16 * v4];
    *(v5 + 4) = 0x7373656E7469662ELL;
    *(v5 + 5) = 0xEA0000000000724ALL;
  }

  else
  {
    v2 = _swiftEmptyArrayStorage;
  }

  if ((a1 & 2) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100042744(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_100042744((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0xD000000000000015;
    *(v8 + 5) = 0x800000010074A7A0;
    if ((a1 & 4) == 0)
    {
LABEL_8:
      if ((a1 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_24;
    }
  }

  else if ((a1 & 4) == 0)
  {
    goto LABEL_8;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100042744(0, *(v2 + 2) + 1, 1, v2);
  }

  v10 = *(v2 + 2);
  v9 = *(v2 + 3);
  if (v10 >= v9 >> 1)
  {
    v2 = sub_100042744((v9 > 1), v10 + 1, 1, v2);
  }

  *(v2 + 2) = v10 + 1;
  v11 = &v2[16 * v10];
  *(v11 + 4) = 0xD000000000000016;
  *(v11 + 5) = 0x800000010074A780;
  if ((a1 & 8) == 0)
  {
LABEL_9:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_24:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100042744(0, *(v2 + 2) + 1, 1, v2);
  }

  v13 = *(v2 + 2);
  v12 = *(v2 + 3);
  if (v13 >= v12 >> 1)
  {
    v2 = sub_100042744((v12 > 1), v13 + 1, 1, v2);
  }

  *(v2 + 2) = v13 + 1;
  v14 = &v2[16 * v13];
  *(v14 + 4) = 0x6C61646E6174732ELL;
  *(v14 + 5) = 0xEB00000000656E6FLL;
  if ((a1 & 0x10) == 0)
  {
LABEL_10:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_34;
  }

LABEL_29:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100042744(0, *(v2 + 2) + 1, 1, v2);
  }

  v16 = *(v2 + 2);
  v15 = *(v2 + 3);
  if (v16 >= v15 >> 1)
  {
    v2 = sub_100042744((v15 > 1), v16 + 1, 1, v2);
  }

  *(v2 + 2) = v16 + 1;
  v17 = &v2[16 * v16];
  *(v17 + 4) = 0xD000000000000010;
  *(v17 + 5) = 0x800000010074A760;
  if ((a1 & 0x20) == 0)
  {
LABEL_11:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_39;
  }

LABEL_34:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100042744(0, *(v2 + 2) + 1, 1, v2);
  }

  v19 = *(v2 + 2);
  v18 = *(v2 + 3);
  if (v19 >= v18 >> 1)
  {
    v2 = sub_100042744((v18 > 1), v19 + 1, 1, v2);
  }

  *(v2 + 2) = v19 + 1;
  v20 = &v2[16 * v19];
  *(v20 + 4) = 0xD000000000000010;
  *(v20 + 5) = 0x800000010074A740;
  if ((a1 & 0x40) == 0)
  {
LABEL_12:
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_44;
  }

LABEL_39:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100042744(0, *(v2 + 2) + 1, 1, v2);
  }

  v22 = *(v2 + 2);
  v21 = *(v2 + 3);
  if (v22 >= v21 >> 1)
  {
    v2 = sub_100042744((v21 > 1), v22 + 1, 1, v2);
  }

  *(v2 + 2) = v22 + 1;
  v23 = &v2[16 * v22];
  *(v23 + 4) = 0x68636C656568772ELL;
  *(v23 + 5) = 0xEB00000000726961;
  if (a1 < 0)
  {
LABEL_44:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100042744(0, *(v2 + 2) + 1, 1, v2);
    }

    v25 = *(v2 + 2);
    v24 = *(v2 + 3);
    if (v25 >= v24 >> 1)
    {
      v2 = sub_100042744((v24 > 1), v25 + 1, 1, v2);
    }

    *(v2 + 2) = v25 + 1;
    v26 = &v2[16 * v25];
    *(v26 + 4) = 0xD000000000000018;
    *(v26 + 5) = 0x800000010074A720;
  }

LABEL_49:
  v27 = Array.description.getter();

  return v27;
}

uint64_t sub_1001B1AE8(uint64_t result, void *a2)
{
  v3 = *result;
  v4 = *(result + 8);
  v5 = *result == 0x4A7373656E746966 && v4 == 0xE900000000000072;
  if (v5 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    if ((*a2 & 1) == 0)
    {
      *a2 |= 1uLL;
    }
  }

  v6 = v3 == 0xD000000000000014 && 0x8000000100748670 == v4;
  if (v6 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    if ((*a2 & 2) == 0)
    {
      *a2 |= 2uLL;
    }
  }

  if (v3 == 0xD000000000000015 && 0x800000010074A850 == v4 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    if ((*a2 & 4) == 0)
    {
      *a2 |= 4uLL;
    }
  }

  if (v3 == 0x6F6C61646E617473 && v4 == 0xEA0000000000656ELL || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    if ((*a2 & 8) == 0)
    {
      *a2 |= 8uLL;
    }
  }

  if (v3 == 0x764173646E657274 && v4 == 0xEF656C62616C6961 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    if ((*a2 & 0x10) == 0)
    {
      *a2 |= 0x10uLL;
    }
  }

  if (v3 == 0x6E4F73646E657274 && v4 == 0xEF64656472616F62 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    if ((*a2 & 0x20) == 0)
    {
      *a2 |= 0x20uLL;
    }
  }

  if (v3 == 0x6168636C65656877 && v4 == 0xEA00000000007269 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    if ((*a2 & 0x40) == 0)
    {
      *a2 |= 0x40uLL;
    }
  }

  if (v3 == 0xD000000000000017 && 0x800000010074A870 == v4 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    if ((*a2 & 0x80) == 0)
    {
      *a2 |= 0x80uLL;
    }
  }

  return result;
}

uint64_t sub_1001B1DA0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1001B3C54(a1);

  *a2 = v3;
  return result;
}

id sub_1001B1DE0()
{
  v1 = *&v0[OBJC_IVAR____TtC10FitnessApp26SummaryUserProfileProvider_notificationCenterObservers];
  v2 = objc_opt_self();

  v3 = [v2 defaultCenter];
  v4 = *(v1 + 16);
  result = v3;
  v6 = result;
  if (v4)
  {
    v7 = 0;
    v8 = v1 + 32;
    while (v7 < *(v1 + 16))
    {
      sub_10000B1B4(v8, v11);
      ++v7;
      sub_1000066AC(v11, v11[3]);
      [v6 removeObserver:_bridgeAnythingToObjectiveC<A>(_:)()];
      swift_unknownObjectRelease();
      result = sub_100005A40(v11);
      v8 += 32;
      if (v4 == v7)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:

    [*(*(*&v0[OBJC_IVAR____TtC10FitnessApp26SummaryUserProfileProvider_activityDataProvider] + OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_activitySummaryListener) + OBJC_IVAR____TtC10FitnessApp29ActivitySummaryChangeListener_observers) removeObject:v0];
    [*&v0[OBJC_IVAR____TtC10FitnessApp26SummaryUserProfileProvider_wheelchairCache] removeObserver:v0];
    v9 = OBJC_IVAR____TtC10FitnessApp26SummaryUserProfileProvider_forceUpdateNotifyToken;
    swift_beginAccess();
    notify_cancel(*&v0[v9]);
    v10.receiver = v0;
    v10.super_class = type metadata accessor for SummaryUserProfileProvider();
    return objc_msgSendSuper2(&v10, "dealloc");
  }

  return result;
}

void sub_1001B206C()
{
  v1 = v0;
  [*(*(*(v0 + OBJC_IVAR____TtC10FitnessApp26SummaryUserProfileProvider_activityDataProvider) + OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_activitySummaryListener) + OBJC_IVAR____TtC10FitnessApp29ActivitySummaryChangeListener_observers) addObject:v0];
  [*(v0 + OBJC_IVAR____TtC10FitnessApp26SummaryUserProfileProvider_wheelchairCache) registerObserver:v0];
  v2 = sub_1001C7364();
  if (qword_1008DAA28 != -1)
  {
    swift_once();
  }

  v3 = sub_100140278(&qword_1008DC638);
  sub_10001AC90(v3, qword_100925860);
  LOBYTE(v52) = v2 & 1;
  swift_beginAccess();
  Tips.Parameter.wrappedValue.setter();
  swift_endAccess();
  v4 = *(*(v1 + OBJC_IVAR____TtC10FitnessApp26SummaryUserProfileProvider_fitnessPlusSubscriptionProvider) + 80);
  if (v4 != 2)
  {
    if (qword_1008DAA20 != -1)
    {
      swift_once();
    }

    sub_10001AC90(v3, qword_100925848);
    LOBYTE(v52) = v4 & 1;
    swift_beginAccess();
    Tips.Parameter.wrappedValue.setter();
    swift_endAccess();
  }

  if (qword_1008DA5E0 != -1)
  {
    swift_once();
  }

  v5 = qword_1009251D8;
  v6 = objc_opt_self();
  v7 = [v6 defaultCenter];
  v8 = objc_opt_self();
  v9 = [v8 mainQueue];
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v56 = sub_1001B4014;
  v57 = v10;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v55 = sub_100026F8C;
  *(&v55 + 1) = &unk_100849DA0;
  v11 = _Block_copy(&aBlock);

  v49 = [v7 addObserverForName:v5 object:0 queue:v9 usingBlock:v11];
  _Block_release(v11);

  if (qword_1008DA630 != -1)
  {
    swift_once();
  }

  v12 = qword_100925238;
  v13 = [v6 defaultCenter];
  v14 = [v8 mainQueue];
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v56 = sub_1001B401C;
  v57 = v15;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v55 = sub_100026F8C;
  *(&v55 + 1) = &unk_100849DC8;
  v16 = _Block_copy(&aBlock);

  v17 = [v13 addObserverForName:v12 object:0 queue:v14 usingBlock:v16];
  _Block_release(v16);

  if (qword_1008DAD60 != -1)
  {
    swift_once();
  }

  v18 = qword_100925E00;
  v19 = [v6 defaultCenter];
  v20 = [v8 mainQueue];
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v56 = sub_1001B4024;
  v57 = v21;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v55 = sub_100026F8C;
  *(&v55 + 1) = &unk_100849DF0;
  v22 = _Block_copy(&aBlock);

  v23 = [v19 addObserverForName:v18 object:0 queue:v20 usingBlock:v22];
  _Block_release(v22);

  sub_100140278(&qword_1008E7590);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1006D64F0;
  *(v24 + 56) = swift_getObjectType();
  *(v24 + 32) = v50;
  *(v24 + 88) = swift_getObjectType();
  *(v24 + 64) = v17;
  *(v24 + 120) = swift_getObjectType();
  *(v24 + 96) = v23;
  *(v1 + OBJC_IVAR____TtC10FitnessApp26SummaryUserProfileProvider_notificationCenterObservers) = v24;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  sub_1000078CC();
  v25 = static OS_dispatch_queue.main.getter();
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v56 = sub_1001B402C;
  v57 = v26;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v55 = sub_100629B20;
  *(&v55 + 1) = &unk_100849E18;
  v27 = _Block_copy(&aBlock);

  v28 = String.utf8CString.getter();
  v29 = OBJC_IVAR____TtC10FitnessApp26SummaryUserProfileProvider_forceUpdateNotifyToken;
  swift_beginAccess();
  notify_register_dispatch((v28 + 32), (v1 + v29), v25, v27);
  swift_endAccess();
  _Block_release(v27);

  v30 = sub_1001B3C8C();
  if (v31)
  {
    v32 = [objc_opt_self() standardUserDefaults];
    v33 = String._bridgeToObjectiveC()();
    v34 = [v32 objectForKey:v33];

    if (v34)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_1001B3EEC(&aBlock);
      v35 = String._bridgeToObjectiveC()();
      v36 = [v32 valueForKey:v35];

      if (v36)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v52 = 0u;
        v53 = 0u;
      }

      aBlock = v52;
      v55 = v53;
      if (*(&v53 + 1))
      {
        if (swift_dynamicCast())
        {
          v47 = *(v1 + OBJC_IVAR____TtC10FitnessApp26SummaryUserProfileProvider_protectedState);
          os_unfair_lock_lock((v47 + 28));
          *(v47 + 16) = v51;
          *(v47 + 24) = 0;
          os_unfair_lock_unlock((v47 + 28));
LABEL_27:
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          return;
        }

LABEL_26:
        v48 = *(v1 + OBJC_IVAR____TtC10FitnessApp26SummaryUserProfileProvider_protectedState);
        os_unfair_lock_lock((v48 + 28));
        *(v48 + 16) = 1;
        *(v48 + 24) = 1;
        os_unfair_lock_unlock((v48 + 28));
        sub_1001B3224();
        goto LABEL_27;
      }
    }

    else
    {
      aBlock = 0u;
      v55 = 0u;
    }

    sub_1001B3EEC(&aBlock);
    goto LABEL_26;
  }

  v37 = v30;
  v38 = static os_log_type_t.default.getter();
  v39 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v38))
  {
    v40 = v39;
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *&aBlock = v42;
    *v41 = 136315138;
    v43 = sub_1001B1664(v37);
    v45 = sub_10000AFDC(v43, v44, &aBlock);

    *(v41 + 4) = v45;
    _os_log_impl(&_mh_execute_header, v40, v38, "[SummaryUserProfileProvider] using forced profile %s", v41, 0xCu);
    sub_100005A40(v42);
  }

  v46 = *(v1 + OBJC_IVAR____TtC10FitnessApp26SummaryUserProfileProvider_protectedState);
  os_unfair_lock_lock((v46 + 28));
  *(v46 + 16) = v37;
  *(v46 + 24) = 0;
  os_unfair_lock_unlock((v46 + 28));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

void sub_1001B2A40()
{
  static os_log_type_t.default.getter();
  v0 = HKLogActivity;
  os_log(_:dso:log:_:_:)();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC10FitnessApp26SummaryUserProfileProvider_seymourAvailabilityManager);

    if (sub_1001C7364())
    {
      static os_log_type_t.default.getter();
      v4 = HKLogActivity;
      os_log(_:dso:log:_:_:)();

      if (qword_1008DAA28 != -1)
      {
        swift_once();
      }

      v5 = sub_100140278(&qword_1008DC638);
      sub_10001AC90(v5, qword_100925860);
      swift_beginAccess();
      Tips.Parameter.wrappedValue.setter();
      swift_endAccess();

      goto LABEL_10;
    }
  }

  static os_log_type_t.default.getter();
  v6 = HKLogActivity;
  os_log(_:dso:log:_:_:)();

  if (qword_1008DAA28 != -1)
  {
    swift_once();
  }

  v7 = sub_100140278(&qword_1008DC638);
  sub_10001AC90(v7, qword_100925860);
  swift_beginAccess();
  Tips.Parameter.wrappedValue.setter();
  swift_endAccess();
LABEL_10:
  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    sub_1001B3224();
  }
}

void sub_1001B2CD0()
{
  static os_log_type_t.default.getter();
  v0 = HKLogActivity;
  os_log(_:dso:log:_:_:)();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC10FitnessApp26SummaryUserProfileProvider_fitnessPlusSubscriptionProvider);
    v3 = Strong;

    v4 = *(v2 + 80);

    if (v4 != 2)
    {
      v5 = static os_log_type_t.default.getter();
      v6 = HKLogActivity;
      if (os_log_type_enabled(HKLogActivity, v5))
      {
        v7 = v6;
        v8 = swift_slowAlloc();
        *v8 = 67109120;
        *(v8 + 4) = v4 & 1;
        _os_log_impl(&_mh_execute_header, v7, v5, "[SummaryUserProfileProvider] updating sample content tip subscription state to %{BOOL}d", v8, 8u);
      }

      if (qword_1008DAA20 != -1)
      {
        swift_once();
      }

      v9 = sub_100140278(&qword_1008DC638);
      sub_10001AC90(v9, qword_100925848);
      swift_beginAccess();
      Tips.Parameter.wrappedValue.setter();
      swift_endAccess();
    }
  }

  swift_beginAccess();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    sub_1001B3224();
  }
}

void sub_1001B2ED8()
{
  static os_log_type_t.default.getter();
  v0 = HKLogActivity;
  os_log(_:dso:log:_:_:)();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1001B3224();
  }
}

void sub_1001B2F80()
{
  static os_log_type_t.default.getter();
  v0 = HKLogActivity;
  os_log(_:dso:log:_:_:)();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1001B3224();
  }
}

uint64_t sub_1001B3028()
{
  v1 = type metadata accessor for SeymourAvailabilityManager.State(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v0 + OBJC_IVAR____TtC10FitnessApp26SummaryUserProfileProvider_seymourAvailabilityManager);
  v5 = OBJC_IVAR____TtC10FitnessApp26SeymourAvailabilityManager_state;
  swift_beginAccess();
  sub_1001B3F54(v4 + v5, v3);
  v6 = type metadata accessor for ContentAvailability();
  LODWORD(v4) = (*(*(v6 - 8) + 48))(v3, 1, v6);
  sub_1001B3FB8(v3);
  if (v4 != 1 && *(*(v0 + OBJC_IVAR____TtC10FitnessApp26SummaryUserProfileProvider_fitnessPlusSubscriptionProvider) + 80) != 2 && *(*(v0 + OBJC_IVAR____TtC10FitnessApp26SummaryUserProfileProvider_trendsAvailabilityManager) + OBJC_IVAR____TtC10FitnessApp25TrendsAvailabilityManager_trendsAvailability))
  {
    return 1;
  }

  static os_log_type_t.default.getter();
  v7 = HKLogActivity;
  os_log(_:dso:log:_:_:)();

  return 0;
}

uint64_t sub_1001B3224()
{
  v1 = v0;
  v2 = type metadata accessor for Calendar();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v67 - v11;
  v13 = sub_1001B3C8C();
  if (v14)
  {
    result = sub_1001B3028();
    if (result)
    {
      static Calendar.current.getter();
      Date.init()();
      Calendar.startOfDay(for:)();
      v18 = *(v7 + 8);
      v17 = v7 + 8;
      v16 = v18;
      v18(v10, v6);
      (*(v3 + 8))(v5, v2);
      v19 = [*(*(v0 + OBJC_IVAR____TtC10FitnessApp26SummaryUserProfileProvider_activityDataProvider) + OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_summaryCache) activitySummaryForCacheIndex:sub_1001E9F44()];
      if (v19)
      {
        v20 = v19;
        if ([v19 activityMoveMode] == 2)
        {
          v21 = 129;
        }

        else
        {
          v21 = 128;
        }

        v22 = [v20 _isStandalonePhoneSummary];

        if (v22)
        {
          v23 = v21 | 8;
        }

        else
        {
          v23 = v21;
        }
      }

      else
      {
        v34 = FIExperienceTypeWithHealthStore();
        result = [objc_opt_self() sharedBehavior];
        if (!result)
        {
          __break(1u);
          return result;
        }

        v35 = result;
        v36 = 128;
        if (v34 != 1)
        {
          v36 = 129;
        }

        if (v34)
        {
          v37 = v36;
        }

        else
        {
          v37 = 0;
        }

        v38 = [result fitnessMode];

        if (v38 == 2)
        {
          v23 = v37 | 8;
        }

        else
        {
          v23 = v37;
        }
      }

      v39 = sub_1001C7364();
      v40 = 2;
      if ((v39 & 1) == 0)
      {
        v40 = 0;
      }

      v41 = v23 | v40;
      v42 = *(*(v1 + OBJC_IVAR____TtC10FitnessApp26SummaryUserProfileProvider_fitnessPlusSubscriptionProvider) + 80);
      if (v42 == 2 || (v42 & 1) == 0)
      {
        v43 = v41 & 0xFFFFFFFFFFFFFFFBLL;
      }

      else
      {
        v43 = v41 | 4;
      }

      v44 = objc_opt_self();
      v45 = [v44 standardUserDefaults];
      v46 = [v45 BOOLForKey:@"ActivityDidDisplayTrendsOnboarding"];

      v70 = v44;
      v71 = v16;
      if (v46)
      {
        goto LABEL_35;
      }

      if (qword_1008DAFA0 != -1)
      {
        swift_once();
      }

      if (byte_1008F8688 == 1)
      {
LABEL_35:
        if ((v43 & 0x20) == 0)
        {
          v43 |= 0x20uLL;
        }
      }

      if (*(*(v1 + OBJC_IVAR____TtC10FitnessApp26SummaryUserProfileProvider_trendsAvailabilityManager) + OBJC_IVAR____TtC10FitnessApp25TrendsAvailabilityManager_trendsAvailability) >= 2uLL)
      {
        v43 |= 0x10uLL;
      }

      if ([*(v1 + OBJC_IVAR____TtC10FitnessApp26SummaryUserProfileProvider_wheelchairCache) isWheelchairUser])
      {
        v47 = v43 | 0x40;
      }

      else
      {
        v47 = v43;
      }

      v48 = *(v1 + OBJC_IVAR____TtC10FitnessApp26SummaryUserProfileProvider_protectedState);
      os_unfair_lock_lock((v48 + 28));
      v49 = *(v48 + 16);
      v50 = *(v48 + 24);
      os_unfair_lock_unlock((v48 + 28));
      v51 = static os_log_type_t.default.getter();
      v52 = v51;
      v53 = HKLogActivity;
      if ((v50 & 1) != 0 || v49 != v47)
      {
        if (os_log_type_enabled(HKLogActivity, v51))
        {
          v68 = v53;
          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          v72 = v56;
          *v55 = 136315138;
          v57 = sub_1001B1664(v47);
          v69 = v17;
          v59 = sub_10000AFDC(v57, v58, &v72);

          *(v55 + 4) = v59;
          v60 = v52;
          v61 = v68;
          _os_log_impl(&_mh_execute_header, v68, v60, "[SummaryUserProfileProvider] Updated user profile %s", v55, 0xCu);
          sub_100005A40(v56);
        }

        os_unfair_lock_lock((v48 + 28));
        *(v48 + 16) = v47;
        *(v48 + 24) = 0;
        os_unfair_lock_unlock((v48 + 28));
        v62 = [v70 standardUserDefaults];
        isa = Int._bridgeToObjectiveC()().super.super.isa;
        v64 = String._bridgeToObjectiveC()();
        [v62 setValue:isa forKey:v64];

        Strong = swift_unknownObjectWeakLoadStrong();
        v66 = v71;
        if (Strong)
        {
          sub_10057E840(v47);
          swift_unknownObjectRelease();
        }

        return v66(v12, v6);
      }

      else
      {
        v54 = HKLogActivity;
        os_log(_:dso:log:_:_:)();

        return v71(v12, v6);
      }
    }
  }

  else
  {
    v24 = v13;
    v25 = static os_log_type_t.default.getter();
    v26 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, v25))
    {
      v27 = v26;
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v72 = v29;
      *v28 = 136315138;
      v30 = sub_1001B1664(v24);
      v32 = sub_10000AFDC(v30, v31, &v72);

      *(v28 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v27, v25, "[SummaryUserProfileProvider] updated forced user profile %s", v28, 0xCu);
      sub_100005A40(v29);
    }

    v33 = *(v1 + OBJC_IVAR____TtC10FitnessApp26SummaryUserProfileProvider_protectedState);
    os_unfair_lock_lock((v33 + 28));
    *(v33 + 16) = v24;
    *(v33 + 24) = 0;
    os_unfair_lock_unlock((v33 + 28));
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_10057E840(v24);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1001B39A4()
{
  static os_log_type_t.default.getter();
  v0 = HKLogActivity;
  os_log(_:dso:log:_:_:)();

  return sub_1001B3224();
}

uint64_t getEnumTagSinglePayload for MetricDataProviderTimeScale(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MetricDataProviderTimeScale(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

unint64_t sub_1001B3AF4()
{
  result = qword_1008DF600;
  if (!qword_1008DF600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DF600);
  }

  return result;
}

unint64_t sub_1001B3B4C()
{
  result = qword_1008DF608;
  if (!qword_1008DF608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DF608);
  }

  return result;
}

unint64_t sub_1001B3BA4()
{
  result = qword_1008DF610;
  if (!qword_1008DF610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DF610);
  }

  return result;
}

unint64_t sub_1001B3BFC()
{
  result = qword_1008DF618;
  if (!qword_1008DF618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DF618);
  }

  return result;
}

uint64_t sub_1001B3C54(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_1001B3C8C()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 valueForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (!*(&v11 + 1))
  {

    sub_1001B3EEC(v12);
    return 0;
  }

  sub_100140278(&unk_1008E99C0);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {

    return 0;
  }

  *&v10 = 0;
  v4 = *(v9 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = (v9 + 40);
    while (v5 < *(v9 + 16))
    {
      ++v5;
      v7 = *v6;
      *&v12[0] = *(v6 - 1);
      *(&v12[0] + 1) = v7;
      result = sub_1001B1AE8(v12, &v10);
      v6 += 2;
      if (v4 == v5)
      {
        v8 = v10;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = 0;
LABEL_15:

    return v8;
  }

  return result;
}

uint64_t sub_1001B3E24(char a1)
{
  v2 = static os_log_type_t.default.getter();
  v3 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v2))
  {
    v4 = v3;
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v4, v2, "[SummaryUserProfileProvider] wheelchair state changed: %{BOOL}d", v5, 8u);
  }

  return sub_1001B3224();
}

uint64_t sub_1001B3EEC(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008E51F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001B3F54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SeymourAvailabilityManager.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001B3FB8(uint64_t a1)
{
  v2 = type metadata accessor for SeymourAvailabilityManager.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001B404C()
{
  sub_100140278(&unk_1008E4E20);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1006D9800;
  v2 = *(v0 + OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_stepsLabelPair);
  v3 = [v2 topAnchor];
  v4 = *(v0 + OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_thirdPairSeparatorView);
  v5 = [v4 bottomAnchor];
  v6 = [v3 constraintEqualToAnchor:v5 constant:17.0];

  *(v1 + 32) = v6;
  v7 = [v2 leadingAnchor];
  v8 = *(v0 + OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_insetContentView);
  v9 = [v8 leadingAnchor];
  v10 = [v7 constraintEqualToAnchor:v9 constant:*&qword_1008DF630];

  *(v1 + 40) = v10;
  v11 = [v2 bottomAnchor];
  v12 = [v8 bottomAnchor];
  v13 = [v11 constraintLessThanOrEqualToAnchor:v12 constant:-*&qword_1008DF638];

  *(v1 + 48) = v13;
  v14 = *(v0 + OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_distanceLabelPair);
  v15 = [v14 topAnchor];
  v16 = [v4 bottomAnchor];
  v17 = [v15 constraintEqualToAnchor:v16 constant:17.0];

  *(v1 + 56) = v17;
  v18 = [v14 leadingAnchor];
  v19 = [*(v0 + OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_ringsView) leadingAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];

  *(v1 + 64) = v20;
  v21 = [v14 bottomAnchor];
  v22 = [v8 bottomAnchor];
  v23 = [v21 constraintLessThanOrEqualToAnchor:v22 constant:-*&qword_1008DF638];

  *(v1 + 72) = v23;
  v24 = [v14 trailingAnchor];
  v25 = [v8 trailingAnchor];
  v26 = [v24 constraintEqualToAnchor:v25 constant:-*&qword_1008DF630];

  *(v1 + 80) = v26;
  return v1;
}

uint64_t sub_1001B43BC()
{
  v1 = sub_1001B404C();
  sub_100140278(&unk_1008E4E20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006D9810;
  v3 = *(v0 + OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_thirdPairSeparatorView);
  v4 = [v3 topAnchor];
  v5 = [*(v0 + OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_labelStackView) bottomAnchor];
  v6 = [v4 constraintGreaterThanOrEqualToAnchor:v5 constant:9.0];

  *(inited + 32) = v6;
  v7 = [v3 topAnchor];
  v8 = [*(v0 + OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_ringsView) bottomAnchor];
  v9 = [v7 constraintGreaterThanOrEqualToAnchor:v8 constant:9.0];

  *(inited + 40) = v9;
  v10 = [v3 leadingAnchor];
  v11 = *(v0 + OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_insetContentView);
  v12 = [v11 leadingAnchor];
  v13 = [v10 constraintEqualToAnchor:v12];

  *(inited + 48) = v13;
  v14 = [v3 heightAnchor];
  v15 = [v14 constraintEqualToConstant:2.0];

  *(inited + 56) = v15;
  v16 = [v3 trailingAnchor];
  v17 = [v11 trailingAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];

  *(inited + 64) = v18;
  sub_10019EF10(inited);
  return v1;
}

uint64_t sub_1001B4630()
{
  v53 = sub_1001B404C();
  sub_100140278(&unk_1008E4E20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006D9820;
  v2 = *(v0 + OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_firstPairSeparatorView);
  v3 = [v2 topAnchor];
  v4 = [*(v0 + OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_moveLabelPair) bottomAnchor];
  v5 = [v3 constraintEqualToAnchor:v4 constant:-3.0];

  *(inited + 32) = v5;
  v6 = [v2 leadingAnchor];
  v7 = *(v0 + OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_insetContentView);
  v8 = [v7 leadingAnchor];
  v9 = [v6 constraintEqualToAnchor:v8];

  *(inited + 40) = v9;
  v10 = [v2 heightAnchor];
  v11 = [v10 constraintEqualToConstant:0.5];

  *(inited + 48) = v11;
  v12 = [v2 trailingAnchor];
  v13 = *(v0 + OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_ringsView);
  v14 = [v13 leadingAnchor];
  v15 = [v12 constraintEqualToAnchor:v14 constant:-20.0];

  *(inited + 56) = v15;
  v16 = *(v0 + OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_secondPairSeparatorView);
  v17 = [v16 topAnchor];
  v18 = [*(v0 + OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_exerciseLabelPair) bottomAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 constant:-3.0];

  *(inited + 64) = v19;
  v20 = [v16 leadingAnchor];
  v21 = [v7 leadingAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];

  *(inited + 72) = v22;
  v23 = [v16 heightAnchor];
  v24 = [v23 constraintEqualToConstant:0.5];

  *(inited + 80) = v24;
  v25 = [v16 trailingAnchor];
  v26 = [v13 leadingAnchor];
  v27 = [v25 constraintEqualToAnchor:v26 constant:-20.0];

  *(inited + 88) = v27;
  v28 = *(v0 + OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_thirdPairSeparatorView);
  v29 = [v28 topAnchor];
  v30 = [*(v0 + OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_standLabelPair) bottomAnchor];
  v31 = [v29 constraintEqualToAnchor:v30 constant:-3.0];

  *(inited + 96) = v31;
  v32 = [v28 leadingAnchor];
  v33 = [v7 leadingAnchor];
  v34 = [v32 constraintEqualToAnchor:v33];

  *(inited + 104) = v34;
  v35 = [v28 heightAnchor];
  v36 = [v35 constraintEqualToConstant:0.5];

  *(inited + 112) = v36;
  v37 = [v28 trailingAnchor];
  v38 = [v13 leadingAnchor];
  v39 = [v37 constraintEqualToAnchor:v38 constant:-20.0];

  *(inited + 120) = v39;
  v40 = *(v0 + OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_bottomSeparatorView);
  v41 = [v40 topAnchor];
  v42 = [*(v0 + OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_stepsLabelPair) bottomAnchor];
  v43 = [v41 constraintEqualToAnchor:v42 constant:-3.0];

  *(inited + 128) = v43;
  v44 = [v40 leadingAnchor];
  v45 = [v7 leadingAnchor];
  v46 = [v44 constraintEqualToAnchor:v45];

  *(inited + 136) = v46;
  v47 = [v40 heightAnchor];
  v48 = [v47 constraintEqualToConstant:0.5];

  *(inited + 144) = v48;
  v49 = [v40 trailingAnchor];
  v50 = [v7 trailingAnchor];
  v51 = [v49 constraintEqualToAnchor:v50];

  *(inited + 152) = v51;
  sub_10019EF10(inited);
  return v53;
}

uint64_t sub_1001B4CA4()
{
  sub_100140278(&unk_1008E4E20);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1006D68B0;
  v2 = *(v0 + OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_firstPairSeparatorView);
  v3 = [v2 topAnchor];
  v4 = [*(v0 + OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_moveLabelPair) bottomAnchor];
  v5 = [v3 constraintEqualToAnchor:v4 constant:-3.0];

  *(v1 + 32) = v5;
  v6 = [v2 leadingAnchor];
  v7 = *(v0 + OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_insetContentView);
  v8 = [v7 leadingAnchor];
  v9 = [v6 constraintEqualToAnchor:v8];

  *(v1 + 40) = v9;
  v10 = [v2 heightAnchor];
  v11 = [v10 constraintEqualToConstant:0.5];

  *(v1 + 48) = v11;
  v12 = [v2 trailingAnchor];
  v13 = *(v0 + OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_ringsView);
  v14 = [v13 leadingAnchor];
  v15 = [v12 constraintEqualToAnchor:v14 constant:-20.0];

  *(v1 + 56) = v15;
  v16 = *(v0 + OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_secondPairSeparatorView);
  v17 = [v16 topAnchor];
  v18 = [*(v0 + OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_stepsLabelPair) bottomAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 constant:-3.0];

  *(v1 + 64) = v19;
  v20 = [v16 leadingAnchor];
  v21 = [v7 leadingAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];

  *(v1 + 72) = v22;
  v23 = [v16 heightAnchor];
  v24 = [v23 constraintEqualToConstant:0.5];

  *(v1 + 80) = v24;
  v25 = [v16 trailingAnchor];
  v26 = [v13 leadingAnchor];
  v27 = [v25 constraintEqualToAnchor:v26 constant:-20.0];

  *(v1 + 88) = v27;
  return v1;
}

void sub_1001B5018()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleCallout;
  v2 = [v0 preferredFontForTextStyle:v1];

  qword_1008DF620 = v2;
}

char *sub_1001B5084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_getObjectType();
  *&v3[OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_formattingManager] = 0;
  v5 = OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_insetContentView;
  v6 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v4[v5] = v6;
  v7 = type metadata accessor for DayViewTitleAndValueLabelPair();
  v8 = [objc_allocWithZone(v7) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v9 = objc_opt_self();
  v10 = [v9 mainBundle];
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 localizedStringForKey:v11 value:0 table:0];

  v13 = v12;
  if (!v12)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = String._bridgeToObjectiveC()();
  }

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v17 = &v8[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleText];
  *v17 = v14;
  v17[1] = v16;

  v18 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleLabel;
  v19 = *&v8[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleLabel];

  [v19 setText:v13];

  if (qword_1008DA5A8 != -1)
  {
    swift_once();
  }

  v20 = qword_1008DF620;
  [*&v8[v18] setFont:qword_1008DF620];
  v21 = sub_1001B87E8();
  [*&v8[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabel] setFont:v21];

  v22 = sub_1001B87E8();
  v23 = FIUICurrentLanguageRequiresTallScript();
  v24 = 20.0;
  if (v23)
  {
    v24 = 23.0;
  }

  [v22 _scaledValueForValue:v24];
  v26 = v25;

  v27 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueBaseline;
  *&v8[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueBaseline] = v26;
  v28 = *&v8[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleBaselineConstraint];
  if (v28)
  {
    [v28 setConstant:*&v8[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleBaseline]];
  }

  v29 = *&v8[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueBaselineConstraint];
  if (v29)
  {
    [v29 setConstant:*&v8[v27]];
  }

  v30 = OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_moveLabelPair;
  [v8 setNeedsLayout];
  [v8 invalidateIntrinsicContentSize];
  *&v8[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_intrinsicContentSizeBottomPadding] = 0x4028000000000000;
  v31 = v8;
  [v31 setNeedsLayout];
  [v31 invalidateIntrinsicContentSize];
  [v31 setTranslatesAutoresizingMaskIntoConstraints:0];

  *&v4[v30] = v31;
  v32 = [objc_allocWithZone(v7) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v33 = [v9 mainBundle];
  v34 = String._bridgeToObjectiveC()();
  v35 = [v33 localizedStringForKey:v34 value:0 table:0];

  v36 = v35;
  if (!v35)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = String._bridgeToObjectiveC()();
  }

  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v38;

  v40 = &v32[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleText];
  *v40 = v37;
  v40[1] = v39;

  v41 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleLabel;
  v42 = *&v32[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleLabel];

  [v42 setText:v36];

  [*&v32[v41] setFont:v20];
  v43 = sub_1001B87E8();
  [*&v32[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabel] setFont:v43];

  v44 = sub_1001B87E8();
  v45 = FIUICurrentLanguageRequiresTallScript();
  v46 = 20.0;
  if (v45)
  {
    v46 = 23.0;
  }

  [v44 _scaledValueForValue:v46];
  v48 = v47;

  v49 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueBaseline;
  *&v32[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueBaseline] = v48;
  v50 = *&v32[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleBaselineConstraint];
  if (v50)
  {
    [v50 setConstant:*&v32[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleBaseline]];
  }

  v51 = *&v32[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueBaselineConstraint];
  if (v51)
  {
    [v51 setConstant:*&v32[v49]];
  }

  v52 = OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_exerciseLabelPair;
  [v32 setNeedsLayout];
  [v32 invalidateIntrinsicContentSize];
  *&v32[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_intrinsicContentSizeBottomPadding] = 0x4028000000000000;
  v53 = v32;
  [v53 setNeedsLayout];
  [v53 invalidateIntrinsicContentSize];
  [v53 setTranslatesAutoresizingMaskIntoConstraints:0];

  *&v4[v52] = v53;
  v54 = [objc_allocWithZone(v7) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v55 = [v9 mainBundle];
  v56 = String._bridgeToObjectiveC()();
  v57 = [v55 localizedStringForKey:v56 value:0 table:0];

  v58 = v57;
  if (!v57)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = String._bridgeToObjectiveC()();
  }

  v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v61 = v60;

  v62 = &v54[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleText];
  *v62 = v59;
  v62[1] = v61;

  v63 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleLabel;
  v64 = *&v54[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleLabel];

  [v64 setText:v58];

  [*&v54[v63] setFont:v20];
  v65 = sub_1001B87E8();
  [*&v54[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabel] setFont:v65];

  v66 = sub_1001B87E8();
  v67 = FIUICurrentLanguageRequiresTallScript();
  v68 = 20.0;
  if (v67)
  {
    v68 = 23.0;
  }

  [v66 _scaledValueForValue:v68];
  v70 = v69;

  v71 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueBaseline;
  *&v54[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueBaseline] = v70;
  v72 = *&v54[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleBaselineConstraint];
  if (v72)
  {
    [v72 setConstant:*&v54[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleBaseline]];
  }

  v73 = *&v54[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueBaselineConstraint];
  if (v73)
  {
    [v73 setConstant:*&v54[v71]];
  }

  v74 = OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_standLabelPair;
  [v54 setNeedsLayout];
  [v54 invalidateIntrinsicContentSize];
  *&v54[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_intrinsicContentSizeBottomPadding] = 0x4028000000000000;
  v75 = v54;
  [v75 setNeedsLayout];
  [v75 invalidateIntrinsicContentSize];
  [v75 setTranslatesAutoresizingMaskIntoConstraints:0];

  *&v4[v74] = v75;
  v76 = [objc_allocWithZone(v7) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v77 = [v9 mainBundle];
  v78 = String._bridgeToObjectiveC()();
  v79 = [v77 localizedStringForKey:v78 value:0 table:0];

  v80 = v79;
  if (!v79)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v80 = String._bridgeToObjectiveC()();
  }

  v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v83 = v82;

  v84 = &v76[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleText];
  *v84 = v81;
  v84[1] = v83;

  v85 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleLabel;
  v86 = *&v76[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleLabel];

  [v86 setText:v80];

  [*&v76[v85] setFont:v20];
  v87 = sub_1001B87E8();
  v88 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabel;
  [*&v76[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabel] setFont:v87];

  v165 = objc_opt_self();
  v89 = [v165 systemGrayColor];
  v90 = *&v76[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabelTextColor];
  *&v76[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabelTextColor] = v89;
  v91 = v89;

  [*&v76[v88] setTextColor:v91];
  v92 = sub_1001B87E8();
  v93 = FIUICurrentLanguageRequiresTallScript();
  v94 = 20.0;
  if (v93)
  {
    v94 = 23.0;
  }

  [v92 _scaledValueForValue:v94];
  v96 = v95;

  v97 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueBaseline;
  *&v76[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueBaseline] = v96;
  v98 = *&v76[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleBaselineConstraint];
  if (v98)
  {
    [v98 setConstant:*&v76[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleBaseline]];
  }

  v99 = *&v76[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueBaselineConstraint];
  if (v99)
  {
    [v99 setConstant:*&v76[v97]];
  }

  v100 = OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_stepsLabelPair;
  [v76 setNeedsLayout];
  [v76 invalidateIntrinsicContentSize];
  *&v76[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_intrinsicContentSizeBottomPadding] = 0x4028000000000000;
  v101 = v76;
  [v101 setNeedsLayout];
  [v101 invalidateIntrinsicContentSize];
  [v101 setTranslatesAutoresizingMaskIntoConstraints:0];

  *&v4[v100] = v101;
  v102 = [objc_allocWithZone(v7) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v103 = [v9 mainBundle];
  v104 = String._bridgeToObjectiveC()();
  v105 = [v103 localizedStringForKey:v104 value:0 table:0];

  v106 = v105;
  if (!v105)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v106 = String._bridgeToObjectiveC()();
  }

  v107 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v109 = v108;

  v110 = &v102[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleText];
  *v110 = v107;
  v110[1] = v109;

  v111 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleLabel;
  v112 = *&v102[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleLabel];

  [v112 setText:v106];

  [*&v102[v111] setFont:v20];
  v113 = sub_1001B87E8();
  v114 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabel;
  [*&v102[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabel] setFont:v113];

  v115 = [v165 systemGrayColor];
  v116 = *&v102[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabelTextColor];
  *&v102[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabelTextColor] = v115;
  v117 = v115;

  [*&v102[v114] setTextColor:v117];
  v118 = sub_1001B87E8();
  v119 = FIUICurrentLanguageRequiresTallScript();
  v120 = 20.0;
  if (v119)
  {
    v120 = 23.0;
  }

  [v118 _scaledValueForValue:v120];
  v122 = v121;

  v123 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueBaseline;
  *&v102[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueBaseline] = v122;
  v124 = *&v102[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleBaselineConstraint];
  if (v124)
  {
    [v124 setConstant:*&v102[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleBaseline]];
  }

  v125 = *&v102[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueBaselineConstraint];
  if (v125)
  {
    [v125 setConstant:*&v102[v123]];
  }

  v126 = OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_distanceLabelPair;
  [v102 setNeedsLayout];
  [v102 invalidateIntrinsicContentSize];
  *&v102[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_intrinsicContentSizeBottomPadding] = 0x4028000000000000;
  v127 = v102;
  [v127 setNeedsLayout];
  [v127 invalidateIntrinsicContentSize];
  [v127 setTranslatesAutoresizingMaskIntoConstraints:0];

  *&v4[v126] = v127;
  v128 = OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_labelStackView;
  v129 = [objc_allocWithZone(UIStackView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v129 setAxis:1];
  [v129 setDistribution:3];
  [v129 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v4[v128] = v129;
  v130 = OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_ringsView;
  v131 = [objc_opt_self() activityRingGroupForRingType:3];
  v132 = [v131 forCompanion];

  v133 = [objc_allocWithZone(ARUIRingsView) initWithRingGroup:v132];
  v134 = ARUIRingsView.withRingGroupDiameter(_:)();

  v135 = ARUIRingsView.withRingGroupThickness(_:)();
  v136 = ARUIRingsView.withRingGroupInterspacing(_:)();

  v137 = v136;
  v138 = [v165 clearColor];
  [v137 setBackgroundColor:v138];

  v139 = ARUIRingsView.nilRings(animated:)();
  [v139 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v4[v130] = v139;
  v140 = OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_firstPairSeparatorView;
  v141 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_1000059F8(0, &qword_1008E7FC0);
  isa = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.28627, 0.28627, 0.28627, 1.0).super.isa;
  [v141 setBackgroundColor:isa];

  [v141 setHidden:1];
  [v141 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v4[v140] = v141;
  v143 = OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_secondPairSeparatorView;
  v144 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v145 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.28627, 0.28627, 0.28627, 1.0).super.isa;
  [v144 setBackgroundColor:v145];

  [v144 setHidden:1];
  [v144 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v4[v143] = v144;
  v146 = OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_thirdPairSeparatorView;
  v147 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v148 = [v165 blackColor];
  [v147 setBackgroundColor:v148];

  [v147 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v4[v146] = v147;
  v149 = OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_bottomSeparatorView;
  v150 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v151 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.28627, 0.28627, 0.28627, 1.0).super.isa;
  [v150 setBackgroundColor:v151];

  [v150 setHidden:1];
  [v150 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v4[v149] = v150;
  v4[OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_currentDisplayStyle] = 0;
  *&v4[OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_activeConstraints] = _swiftEmptyArrayStorage;
  if (a3)
  {
    v152 = String._bridgeToObjectiveC()();
  }

  else
  {
    v152 = 0;
  }

  v166.receiver = v4;
  v166.super_class = type metadata accessor for TodayActivityTile();
  v153 = objc_msgSendSuper2(&v166, "initWithStyle:reuseIdentifier:", a1, v152);

  v154 = OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_insetContentView;
  v155 = *&v153[OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_insetContentView];
  v156 = v153;
  v157 = v155;
  v158 = sub_1004313A0();
  [v157 setBackgroundColor:v158];

  v159 = [*&v153[v154] layer];
  [v159 setCornerRadius:sub_1004313CC()];

  v160 = OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_labelStackView;
  [*&v156[OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_labelStackView] addArrangedSubview:*&v156[OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_moveLabelPair]];
  [*&v156[v160] addArrangedSubview:*&v156[OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_exerciseLabelPair]];
  [*&v156[v160] addArrangedSubview:*&v156[OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_standLabelPair]];
  [*&v153[v154] addSubview:*&v156[v160]];
  [*&v153[v154] addSubview:*&v156[OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_ringsView]];
  [*&v153[v154] addSubview:*&v156[OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_firstPairSeparatorView]];
  [*&v153[v154] addSubview:*&v156[OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_secondPairSeparatorView]];
  [*&v153[v154] addSubview:*&v156[OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_thirdPairSeparatorView]];
  [*&v153[v154] addSubview:*&v156[OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_bottomSeparatorView]];
  [*&v153[v154] addSubview:*&v156[OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_stepsLabelPair]];
  [*&v153[v154] addSubview:*&v156[OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_distanceLabelPair]];
  v161 = [v156 contentView];

  [v161 addSubview:*&v153[v154]];
  LOBYTE(v161) = sub_1001B8684();
  sub_1001B6418(v161);
  sub_1001B7D04(v161);

  return v156;
}