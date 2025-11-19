uint64_t sub_100D87124(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v25 = a4;
  v26 = a3;
  v27 = a2;
  v5 = type metadata accessor for CRLFreehandDrawingShapeItemBucketCRDT(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v24 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v28 = *(v8 - 8);
  v29 = v8;
  __chkstk_darwin(v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1005B981C(&qword_101A22850);
  __chkstk_darwin(v11 - 8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v24 - v15;
  sub_100D89CF0(a1, &v24 - v15, type metadata accessor for CRLFreehandDrawingShapeItemBucketCRDT);
  (*(v6 + 56))(v16, 0, 1, v5);

  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  v17 = sub_100D88E9C(v10);
  sub_10000BE14(v16, v13, &qword_101A22850);
  if ((*(v6 + 48))(v13, 1, v5) == 1)
  {
    v18 = sub_100D89BAC(v13);
    __chkstk_darwin(v18);
    *(&v24 - 2) = v10;
    swift_beginAccess();
    sub_1005B981C(&unk_101A341C0);
    Capsule.mutate<A>(_:)();
    swift_endAccess();

    sub_100D89BAC(v16);
    *(v17 + *(*v17 + 136)) = 1;
  }

  else
  {
    v19 = v24;
    v20 = sub_100D89C14(v13, v24);
    __chkstk_darwin(v20);
    *(&v24 - 2) = v10;
    *(&v24 - 1) = v19;
    swift_beginAccess();
    sub_1005B981C(&unk_101A341C0);
    Capsule.mutate<A>(_:)();
    swift_endAccess();
    v21 = v17 + *(*v17 + 128);
    v22 = *(v21 + 3);
    if ((v25 & 1) == 0)
    {
      v22 = v26;
    }

    *(v21 + 1) = v27;
    *(v21 + 3) = v22;
    sub_100E69F7C();

    sub_100D89BAC(v16);
    *(v17 + *(*v17 + 136)) = 1;

    sub_100D89C78(v19);
  }

  return (*(v28 + 8))(v10, v29);
}

uint64_t sub_100D875BC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v43 = a4;
  v44 = a3;
  v45 = a2;
  v50 = type metadata accessor for MergeResult();
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v47 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v55 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v40 - v11;
  v13 = sub_1005B981C(&qword_101A22850);
  __chkstk_darwin(v13 - 8);
  v49 = v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v54 = v40 - v16;
  __chkstk_darwin(v17);
  v19 = v40 - v18;
  v20 = type metadata accessor for CRLFreehandDrawingShapeItemBucketCRDT(0);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v42 = v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = v40 - v24;
  v51 = v4;

  v46 = sub_1005B981C(&unk_1019F5250);
  v52 = a1;
  CRRegister.wrappedValue.getter();
  if (sub_100D89394(v12))
  {
    sub_100ED6240(v12, v19);

    v53 = *(v8 + 8);
    v53(v12, v7);
  }

  else
  {

    v53 = *(v8 + 8);
    v53(v12, v7);
    (*(v21 + 56))(v19, 1, 1, v20);
  }

  v26 = *(v21 + 48);
  if (v26(v19, 1, v20) == 1)
  {
    sub_100D89BAC(v19);
    if (qword_1019F2098 != -1)
    {
      swift_once();
    }

    v27 = static OS_os_log.crlDefault;
    v28 = static os_log_type_t.error.getter();
    return sub_100005404(v27, &_mh_execute_header, v28, "Could not modify item in bucket, it did not exist yet", 53, 2, _swiftEmptyArrayStorage);
  }

  else
  {
    v40[1] = v8;
    v41 = v7;
    sub_100D89C14(v19, v25);
    sub_100060EC0(&qword_101A1F618, type metadata accessor for CRLFreehandDrawingShapeItemBucketCRDT);
    v30 = v47;
    CRStruct_3.merge(_:)();
    (*(v48 + 8))(v30, v50);
    v31 = v54;
    sub_100D89CF0(v25, v54, type metadata accessor for CRLFreehandDrawingShapeItemBucketCRDT);
    (*(v21 + 56))(v31, 0, 1, v20);

    v32 = v55;
    CRRegister.wrappedValue.getter();
    v33 = sub_100D88E9C(v32);
    v34 = v49;
    sub_10000BE14(v31, v49, &qword_101A22850);
    if (v26(v34, 1, v20) == 1)
    {
      v35 = sub_100D89BAC(v34);
      __chkstk_darwin(v35);
      v40[-2] = v32;
      swift_beginAccess();
      sub_1005B981C(&unk_101A341C0);
      Capsule.mutate<A>(_:)();
      swift_endAccess();

      sub_100D89BAC(v31);
      sub_100D89C78(v25);
      *(v33 + *(*v33 + 136)) = 1;
    }

    else
    {
      v36 = v42;
      v37 = sub_100D89C14(v34, v42);
      __chkstk_darwin(v37);
      v40[-2] = v32;
      v40[-1] = v36;
      swift_beginAccess();
      sub_1005B981C(&unk_101A341C0);
      Capsule.mutate<A>(_:)();
      swift_endAccess();
      v38 = v33 + *(*v33 + 128);
      v39 = *(v38 + 3);
      if ((v43 & 1) == 0)
      {
        v39 = v44;
      }

      *(v38 + 1) = v45;
      *(v38 + 3) = v39;
      sub_100E69F7C();

      sub_100D89BAC(v31);
      sub_100D89C78(v25);
      *(v33 + *(*v33 + 136)) = 1;

      sub_100D89C78(v36);
    }

    return (v53)(v32, v41);
  }
}

uint64_t sub_100D87D4C(uint64_t a1)
{
  v70 = type metadata accessor for SHA256();
  v2 = *(v70 - 8);
  __chkstk_darwin(v70);
  v69 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for SHA256Digest();
  v4 = *(v68 - 8);
  __chkstk_darwin(v68);
  v67 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  v7 = __chkstk_darwin(v6);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v76 = &v63 - v11;
  v12 = a1 + 56;
  v13 = 1 << *(a1 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a1 + 56);
  v16 = (v13 + 63) >> 6;
  v82 = v10 + 16;
  v75 = v10 + 32;
  v66 = (v2 + 8);
  v65 = (v4 + 8);
  v77 = v10;
  v74 = (v10 + 8);
  v81 = a1;

  v17 = 0;
  v83 = v9;
  v72 = a1 + 56;
  v64 = v6;
  v73 = v16;
  while (1)
  {
    if (!v15)
    {
      while (1)
      {
        v18 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v18 >= v16)
        {
        }

        v15 = *(v12 + 8 * v18);
        ++v17;
        if (v15)
        {
          v17 = v18;
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
    }

LABEL_10:
    v19 = *(v81 + 48);
    v21 = v76;
    v20 = v77;
    v79 = *(v77 + 72);
    v22 = *(v77 + 16);
    v22(v76, v19 + v79 * (__clz(__rbit64(v15)) | (v17 << 6)), v6);
    (*(v20 + 32))(v9, v21, v6);
    v23 = *(v78 + 16);
    swift_beginAccess();
    v24 = *(v23 + 24);
    v25 = *(v24 + 16);

    if (v25)
    {
      v26 = sub_10003E994(v9);
      if (v27)
      {
        v28 = *(*(v24 + 56) + 8 * v26);
        goto LABEL_24;
      }
    }

    v71 = v22;
    v84 = UUID.uuid.getter();
    v85 = v29;
    v86 = v30;
    v87 = v31;
    v88 = v32;
    v89 = v33;
    v90 = v34;
    v91 = v35;
    v92 = v36;
    UUID.uuid.getter();
    v37 = sub_100024DD4(&v84, 16);
    v39 = v38;
    sub_100060EC0(&qword_1019F4570, &type metadata accessor for SHA256);
    v40 = v69;
    v41 = v70;
    dispatch thunk of HashFunction.init()();
    sub_100024E98(v37, v39);
    sub_100061910(v37, v39);
    sub_10002640C(v37, v39);
    v80 = v23;
    v42 = v67;
    dispatch thunk of HashFunction.finalize()();
    sub_10002640C(v37, v39);
    (*v66)(v40, v41);
    SHA256Digest.withUnsafeBytes<A>(_:)();
    v43 = v42;
    v23 = v80;
    (*v65)(v43, v68);
    v28 = v84;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v84 = *(v23 + 24);
    v45 = v84;
    *(v23 + 24) = 0x8000000000000000;
    v47 = sub_10003E994(v83);
    v48 = *(v45 + 16);
    v49 = (v46 & 1) == 0;
    v50 = v48 + v49;
    if (__OFADD__(v48, v49))
    {
      goto LABEL_29;
    }

    v51 = v46;
    if (*(v45 + 24) < v50)
    {
      break;
    }

    v6 = v64;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100AA4430();
    }

    v9 = v83;
    v54 = v84;
    if ((v51 & 1) == 0)
    {
LABEL_17:
      v54[(v47 >> 6) + 8] |= 1 << v47;
      v71(v54[6] + v47 * v79, v9, v6);
      *(v54[7] + 8 * v47) = v28;
      v55 = v54[2];
      v56 = __OFADD__(v55, 1);
      v57 = v55 + 1;
      if (v56)
      {
        goto LABEL_30;
      }

      v54[2] = v57;
      goto LABEL_23;
    }

LABEL_22:
    *(v54[7] + 8 * v47) = v28;
LABEL_23:
    *(v23 + 24) = v54;

    v12 = v72;
LABEL_24:
    swift_endAccess();
    swift_beginAccess();
    v58 = *(v23 + 16);
    if (*(v58 + 16))
    {
      v59 = sub_1007C7EC0(v28);
      if (v60)
      {
        v61 = *(*(v58 + 56) + 8 * v59);
        __chkstk_darwin(v59);
        *(&v63 - 2) = v83;
        swift_beginAccess();

        sub_1005B981C(&unk_101A341C0);
        v12 = v72;
        Capsule.mutate<A>(_:)();
        swift_endAccess();

        v9 = v83;
        *(v61 + *(*v61 + 136)) = 1;
      }
    }

    v16 = v73;
    v15 &= v15 - 1;

    (*v74)(v9, v6);
  }

  sub_10003ECE0(v50, isUniquelyReferenced_nonNull_native);
  v9 = v83;
  v52 = sub_10003E994(v83);
  v6 = v64;
  if ((v51 & 1) == (v53 & 1))
  {
    v47 = v52;
    v54 = v84;
    if ((v51 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_22;
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_100D88548()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v6 = 0;
  while (v4)
  {
LABEL_4:
    v7 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v8 = v7 | (v6 << 6);
    v9 = *(*(v1 + 56) + 8 * v8);
    if (*(v9 + *(*v9 + 136)) == 1)
    {
      v11 = *(*(v1 + 48) + 8 * v8);
      swift_retain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v13 = sub_1007C7EC0(v11);
      v15 = _swiftEmptyDictionarySingleton[2];
      v16 = (v14 & 1) == 0;
      v17 = __OFADD__(v15, v16);
      v18 = v15 + v16;
      if (v17)
      {
        goto LABEL_22;
      }

      v19 = v14;
      if (_swiftEmptyDictionarySingleton[3] >= v18)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v23 = v13;
          sub_100AA4700();
          v13 = v23;
        }
      }

      else
      {
        sub_100A89AE8(v18, isUniquelyReferenced_nonNull_native);
        v13 = sub_1007C7EC0(v11);
        if ((v19 & 1) != (v20 & 1))
        {
          goto LABEL_24;
        }
      }

      if (v19)
      {
        *(_swiftEmptyDictionarySingleton[7] + 8 * v13) = v9;
      }

      else
      {
        _swiftEmptyDictionarySingleton[(v13 >> 6) + 8] |= 1 << v13;
        *(_swiftEmptyDictionarySingleton[6] + 8 * v13) = v11;
        *(_swiftEmptyDictionarySingleton[7] + 8 * v13) = v9;
        v21 = _swiftEmptyDictionarySingleton[2];
        v17 = __OFADD__(v21, 1);
        v22 = v21 + 1;
        if (v17)
        {
          goto LABEL_23;
        }

        _swiftEmptyDictionarySingleton[2] = v22;
      }
    }
  }

  while (1)
  {
    v10 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return _swiftEmptyDictionarySingleton;
    }

    v4 = *(v1 + 64 + 8 * v10);
    ++v6;
    if (v4)
    {
      v6 = v10;
      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100D887A4(uint64_t (*a1)(uint64_t))
{
  v41 = sub_1005B981C(&unk_101A341C0);
  v2 = *(v41 - 8);
  __chkstk_darwin(v41);
  v40 = &v36 - v3;

  v5 = a1(v4);

  sub_1005B981C(&qword_101A0EE20);
  result = static _DictionaryStorage.copy(original:)();
  v7 = result;
  v8 = 0;
  v10 = v5 + 64;
  v9 = *(v5 + 64);
  v42 = v5;
  v11 = 1 << *(v5 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v9;
  v14 = (v11 + 63) >> 6;
  v37 = (v2 + 32);
  v38 = (v2 + 16);
  v36 = result + 64;
  v39 = result;
  if (v13)
  {
    while (1)
    {
      v15 = __clz(__rbit64(v13));
      v43 = (v13 - 1) & v13;
LABEL_10:
      v18 = v15 | (v8 << 6);
      v19 = *(v42 + 56);
      v49 = *(*(v42 + 48) + 8 * v18);
      v20 = *(v19 + 8 * v18);
      v21 = *(*v20 + 120);
      swift_beginAccess();
      v23 = v40;
      v22 = v41;
      (*v38)(v40, &v20[v21], v41);
      LOBYTE(v21) = v20[*(*v20 + 136)];
      v24 = *(v20 + 2);
      v25 = &v20[*(*v20 + 128)];
      v26 = *(v25 + 4);
      v47 = *(v25 + 5);
      v48 = v26;
      v46 = v25[48];
      sub_1005B981C(&unk_101A228D0);
      v27 = swift_allocObject();
      v28 = *(*v27 + 136);
      v29 = *v25;
      v44 = *(v25 + 1);
      v45 = v29;
      *(v27 + v28) = 0;
      v27[2] = v24;
      result = (*v37)(v27 + *(*v27 + 120), v23, v22);
      *(v27 + *(*v27 + 136)) = v21;
      v30 = v27 + *(*v27 + 128);
      v31 = v44;
      *v30 = v45;
      *(v30 + 1) = v31;
      v32 = v47;
      *(v30 + 4) = v48;
      *(v30 + 5) = v32;
      v30[48] = v46;
      *(v36 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v7 = v39;
      *(*(v39 + 48) + 8 * v18) = v49;
      *(*(v7 + 56) + 8 * v18) = v27;
      v33 = *(v7 + 16);
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        break;
      }

      *(v7 + 16) = v35;
      v13 = v43;
      if (!v43)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v14)
      {

        return v7;
      }

      v17 = *(v10 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v43 = (v17 - 1) & v17;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100D88B2C()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v5 = 1 << *(*(v0 + 16) + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & v2;
  v8 = (v5 + 63) >> 6;
  v45 = *(v0 + 16);
  swift_bridgeObjectRetain_n();
  v9 = 0;
  for (i = &_swiftEmptyDictionarySingleton; ; i = v23)
  {
    if (!v7)
    {
      while (1)
      {
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v11 >= v8)
        {

          return i;
        }

        v7 = *(v3 + 8 * v11);
        ++v9;
        if (v7)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v11 = v9;
LABEL_12:
    v12 = (v11 << 9) | (8 * __clz(__rbit64(v7)));
    v13 = *(*(v45 + 48) + v12);
    v14 = *(*(v45 + 56) + v12);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = sub_1007C7EC0(v13);
    v18 = *(i + 2);
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
      goto LABEL_40;
    }

    v22 = v17;
    if (*(i + 3) >= v21)
    {
      break;
    }

    sub_100A89AE8(v21, isUniquelyReferenced_nonNull_native);
    v23 = i;
    v16 = sub_1007C7EC0(v13);
    if ((v22 & 1) != (v24 & 1))
    {
      goto LABEL_43;
    }

LABEL_18:
    v7 &= v7 - 1;
    if (v22)
    {
      *(*(v23 + 7) + 8 * v16) = v14;
    }

    else
    {
      *&v23[8 * (v16 >> 6) + 64] |= 1 << v16;
      *(*(v23 + 6) + 8 * v16) = v13;
      *(*(v23 + 7) + 8 * v16) = v14;
      v25 = *(v23 + 2);
      v20 = __OFADD__(v25, 1);
      v26 = v25 + 1;
      if (v20)
      {
        goto LABEL_41;
      }

      *(v23 + 2) = v26;
    }

    v9 = v11;
  }

  if (isUniquelyReferenced_nonNull_native)
  {
    v23 = i;
    goto LABEL_18;
  }

  v42 = v16;
  sub_1005B981C(&qword_101A0EE20);
  v27 = static _DictionaryStorage.copy(original:)();
  v23 = v27;
  if (!*(i + 2))
  {
LABEL_37:

    v16 = v42;
    goto LABEL_18;
  }

  v28 = (v27 + 64);
  v29 = i + 64;
  v30 = ((1 << v23[32]) + 63) >> 6;
  if (v23 != i || v28 >= &v29[8 * v30])
  {
    memmove(v28, v29, 8 * v30);
  }

  v31 = 0;
  *(v23 + 2) = *(i + 2);
  v32 = 1 << i[32];
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  else
  {
    v33 = -1;
  }

  v34 = v33 & *(i + 8);
  v35 = (v32 + 63) >> 6;
  v43 = v35;
  if (v34)
  {
    do
    {
      v36 = __clz(__rbit64(v34));
      v44 = (v34 - 1) & v34;
LABEL_35:
      v39 = v36 | (v31 << 6);
      v40 = *(*(i + 7) + 8 * v39);
      *(*(v23 + 6) + 8 * v39) = *(*(i + 6) + 8 * v39);
      *(*(v23 + 7) + 8 * v39) = v40;

      v35 = v43;
      v34 = v44;
    }

    while (v44);
  }

  v37 = v31;
  while (1)
  {
    v31 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (v31 >= v35)
    {
      goto LABEL_37;
    }

    v38 = *&i[8 * v31 + 64];
    ++v37;
    if (v38)
    {
      v36 = __clz(__rbit64(v38));
      v44 = (v38 - 1) & v38;
      goto LABEL_35;
    }
  }

LABEL_42:
  __break(1u);
LABEL_43:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_100D88E9C(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = sub_100D88FBC(a1);
  swift_endAccess();
  swift_beginAccess();
  v5 = *(v1 + 16);
  if (*(v5 + 16) && (v6 = sub_1007C7EC0(v4), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
  }

  else
  {
    sub_1005B981C(&unk_101A228D0);
    v8 = sub_100D89050(v4);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v2 + 16);
    *(v2 + 16) = 0x8000000000000000;
    sub_100A9B614(v8, v4, isUniquelyReferenced_nonNull_native);
    *(v2 + 16) = v11;
    swift_endAccess();
  }

  return v8;
}

uint64_t sub_100D88FBC(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  if (*(v4 + 16))
  {
    v5 = sub_10003E994(a1);
    if (v6)
    {
      return *(*(v4 + 56) + 8 * v5);
    }
  }

  v7 = sub_100D89970();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v2;
  sub_10003E7F8(v7, a1, isUniquelyReferenced_nonNull_native);
  *v2 = v10;
  return v7;
}

void *sub_100D89050(uint64_t a1)
{
  v13 = a1;
  v2 = sub_1005B981C(&unk_101A22860);
  __chkstk_darwin(v2);
  v15 = sub_1005B981C(&unk_101A341C0);
  v3 = *(v15 - 8);
  __chkstk_darwin(v15);
  v5 = v12 - v4;
  *&v16[0] = a1;
  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  v12[0] = v7;
  v12[1] = v6;
  type metadata accessor for UUID();
  sub_1005B981C(&qword_101A228A0);
  sub_100060EC0(&qword_1019FB870, &type metadata accessor for UUID);
  sub_10001A2F8(&qword_101A1F620, &qword_101A228A0);
  sub_10001A2F8(&unk_101A22E50, &qword_101A228A0);
  CRDictionary.init()();
  sub_10001A2F8(&qword_101A228C0, &unk_101A22860);
  Capsule.init(_:id:)();
  sub_100684420(v14, &off_1018B0270, v16);
  sub_1005B981C(&unk_101A228D0);
  v8 = swift_allocObject();
  *(v8 + *(*v8 + 136)) = 0;
  v8[2] = v13;
  (*(v3 + 32))(v8 + *(*v8 + 120), v5, v15);
  *(v8 + *(*v8 + 136)) = 1;
  v9 = v8 + *(*v8 + 128);
  v10 = v16[1];
  *v9 = v16[0];
  *(v9 + 1) = v10;
  *(v9 + 2) = v16[2];
  v9[48] = v17;
  return v8;
}

uint64_t sub_100D89394(uint64_t a1)
{
  swift_beginAccess();
  v3 = sub_100D88FBC(a1);
  swift_endAccess();
  swift_beginAccess();
  if (*(*(v1 + 16) + 16) && (sub_1007C7EC0(v3), (v4 & 1) != 0))
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100D89434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a3;
  v26 = a1;
  v4 = sub_1005B981C(&qword_1019FA368);
  __chkstk_darwin(v4 - 8);
  v6 = &v24 - v5;
  v27 = type metadata accessor for CRLFreehandDrawingShapeItemBucketCRDT(0);
  __chkstk_darwin(v27);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1005B981C(&qword_101A1F610);
  __chkstk_darwin(v9 - 8);
  v11 = &v24 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v16);
  v18 = *(v13 + 16);
  v18(&v24 - v19, a2, v12, v17);
  sub_100D89CF0(v25, v8, type metadata accessor for CRLFreehandDrawingShapeItemBucketCRDT);
  (v18)(v15, a2, v12);

  CRKeyPath.init(_:)();
  v20 = type metadata accessor for CRKeyPath();
  (*(*(v20 - 8) + 56))(v6, 0, 1, v20);
  sub_100060EC0(&unk_101A228B0, type metadata accessor for CRLFreehandDrawingShapeItemBucketCRDT);
  Ref.init<A>(_:_:identity:)();
  v21 = sub_1005B981C(&qword_101A228A0);
  (*(*(v21 - 8) + 56))(v11, 0, 1, v21);
  v22 = Capsule.Ref.root.modify();
  sub_1005B981C(&unk_101A22860);
  CRDictionary.subscript.setter();
  return v22(v28, 0);
}

uint64_t sub_100D8979C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1005B981C(&qword_101A1F610);
  __chkstk_darwin(v3 - 8);
  v5 = &v12[-v4];
  v6 = type metadata accessor for UUID();
  __chkstk_darwin(v6);
  (*(v8 + 16))(&v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], a2);
  v9 = sub_1005B981C(&qword_101A228A0);
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  v10 = Capsule.Ref.root.modify();
  sub_1005B981C(&unk_101A22860);
  CRDictionary.subscript.setter();
  return v10(v12, 0);
}

uint64_t sub_100D89970()
{
  v0 = type metadata accessor for SHA256();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SHA256Digest();
  v4 = *(v12 - 8);
  __chkstk_darwin(v12);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = UUID.crl_data()();
  v9 = v8;
  sub_100060EC0(&qword_1019F4570, &type metadata accessor for SHA256);
  dispatch thunk of HashFunction.init()();
  sub_100024E98(v7, v9);
  sub_100061910(v7, v9);
  sub_10002640C(v7, v9);
  dispatch thunk of HashFunction.finalize()();
  sub_10002640C(v7, v9);
  (*(v1 + 8))(v3, v0);
  SHA256Digest.withUnsafeBytes<A>(_:)();
  (*(v4 + 8))(v6, v12);
  return v13;
}

uint64_t sub_100D89BAC(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_101A22850);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100D89C14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLFreehandDrawingShapeItemBucketCRDT(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100D89C78(uint64_t a1)
{
  v2 = type metadata accessor for CRLFreehandDrawingShapeItemBucketCRDT(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100D89CF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100D89D88()
{
  v1 = [v0 currentTool];
  v2 = [v1 type];

  if (v2 <= 4)
  {
    if (v2 > 1 || v2 <= 1)
    {
      return 3;
    }

LABEL_16:
    type metadata accessor for CRLFreehandDrawingToolType(0);
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
    return result;
  }

  if (v2 <= 7)
  {
    return 3;
  }

  if (v2 == 8)
  {
    return 0;
  }

  if (v2 != 9)
  {
    if (v2 == 10)
    {
      return 2;
    }

    goto LABEL_16;
  }

  v3 = [v0 toolkitUIState];
  v4 = [v3 eraserToolErasesWholeObjects];

  if (v4)
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

id sub_100D89F68()
{
  v0 = type metadata accessor for TSCLVersion();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC8Freeform11TSCLVersion_major] = 1;
  *&v1[OBJC_IVAR____TtC8Freeform11TSCLVersion_minor] = 0;
  v3.receiver = v1;
  v3.super_class = v0;
  result = objc_msgSendSuper2(&v3, "init");
  static TSContentLanguage.Models.LineEnd.version = result;
  return result;
}

uint64_t *TSContentLanguage.Models.LineEnd.version.unsafeMutableAddressor()
{
  if (qword_1019F23B8 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.LineEnd.version;
}

id static TSContentLanguage.Models.LineEnd.version.getter()
{
  if (qword_1019F23B8 != -1)
  {
    swift_once();
  }

  v1 = static TSContentLanguage.Models.LineEnd.version;

  return v1;
}

uint64_t TSContentLanguage.Models.LineEnd.rawValue.getter(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x615F64656C6C6966;
    v7 = 0x645F64656C6C6966;
    v8 = 0x735F64656C6C6966;
    if (a1 != 3)
    {
      v8 = 0x6465747265766E69;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x635F64656C6C6966;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x7269635F6E65706FLL;
    v2 = 0x7571735F6E65706FLL;
    if (a1 != 9)
    {
      v2 = 0x615F656C706D6973;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 1701734764;
    v4 = 1701736302;
    if (a1 != 6)
    {
      v4 = 0x7272615F6E65706FLL;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_100D8A220(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = TSContentLanguage.Models.LineEnd.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == TSContentLanguage.Models.LineEnd.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100D8A2A8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  TSContentLanguage.Models.LineEnd.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100D8A30C()
{
  TSContentLanguage.Models.LineEnd.rawValue.getter(*v0);
  String.hash(into:)();
}

Swift::Int sub_100D8A360()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  TSContentLanguage.Models.LineEnd.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100D8A3C0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s8Freeform17TSContentLanguageO6ModelsO7LineEndO8rawValueAGSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100D8A3F0@<X0>(uint64_t *a1@<X8>)
{
  result = TSContentLanguage.Models.LineEnd.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t _s8Freeform17TSContentLanguageO6ModelsO7LineEndO8rawValueAGSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101877050, v2);

  if (v3 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100D8A51C()
{
  result = qword_101A1F628;
  if (!qword_101A1F628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1F628);
  }

  return result;
}

unint64_t sub_100D8A570(uint64_t a1)
{
  *(a1 + 8) = sub_100D8A5A0();
  result = sub_100D8A5F4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100D8A5A0()
{
  result = qword_101A1F630;
  if (!qword_101A1F630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1F630);
  }

  return result;
}

unint64_t sub_100D8A5F4()
{
  result = qword_101A1F638;
  if (!qword_101A1F638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1F638);
  }

  return result;
}

unint64_t sub_100D8A648(uint64_t a1)
{
  result = sub_100B10D1C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100D8A670(void *a1)
{
  a1[2] = sub_100B2BACC();
  a1[3] = sub_100B2BBC8();
  result = sub_100D8A51C();
  a1[4] = result;
  return result;
}

void sub_100D8A798(void *a1, void *a2)
{
  v3 = v2;
  v62 = _swiftEmptyArrayStorage;
  if ([a1 type] == 7)
  {
    v6 = [a1 visualRangesArray];
    if (!v6)
    {
      __break(1u);
      return;
    }

    v7 = v6;
    sub_100006370(0, &qword_101A04270);
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v8 >> 62)
    {
      v9 = _CocoaArrayWrapper.endIndex.getter();
      if (v9)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9)
      {
LABEL_5:
        if (v9 < 1)
        {
          __break(1u);
          goto LABEL_38;
        }

        v52 = a2;
        v53 = v2;
        a2 = 0;
        while (1)
        {
          v10 = (v8 & 0xC000000000000001) != 0 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v8 + 8 * a2 + 32);
          v11 = v10;
          v12 = [v10 rangeValue];
          v14 = v13;
          v15 = type metadata accessor for CRLTextRange();
          v16 = objc_allocWithZone(v15);
          v17 = [objc_allocWithZone(type metadata accessor for CRLTextPosition()) init:v12 caretAffinity:0];
          v18 = v14 >= NSNotFound.getter() ? 0 : v14;
          v19 = *&v17[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];
          v3 = v19 + v18;
          if (__OFADD__(v19, v18))
          {
            break;
          }

          if (v3 < v19)
          {
            goto LABEL_22;
          }

          v20 = *&v17[OBJC_IVAR____TtC8Freeform15CRLTextPosition_caretAffinity];
          v21 = objc_allocWithZone(v15);
          v22 = OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity;
          *&v21[OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity] = 0;
          *&v21[OBJC_IVAR____TtC8Freeform12CRLTextRange_insertionEdge] = 0;
          v23 = &v21[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
          *v23 = v19;
          *(v23 + 1) = v3;
          *&v21[v22] = v20;
          v54.receiver = v21;
          v54.super_class = v15;
          objc_msgSendSuper2(&v54, "init");

          swift_getObjectType();
          swift_deallocPartialClassInstance();
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          a2 = a2 + 1;
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          if (v9 == a2)
          {
            v9 = v62;

            a2 = v52;
            v3 = v53;
            goto LABEL_26;
          }
        }

        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }
    }

    v9 = _swiftEmptyArrayStorage;
    goto LABEL_26;
  }

  v24 = [a1 range];
  v26 = v25;
  v27 = objc_allocWithZone(type metadata accessor for CRLTextRange());
  v9 = sub_10078CDF0(v24, v26);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_23:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  v9 = v62;
LABEL_26:
  if ([a2 tag] == 11)
  {
    if (qword_1019F1570 != -1)
    {
      swift_once();
    }

    v28 = &v55;
    v57 = sub_1005B981C(&unk_101A001E0);
    v56 = v9;

    sub_100D8AFE4(v3, v9, &v58);
    goto LABEL_33;
  }

  if ([a2 tag] == 10)
  {
    if (qword_1019F1570 == -1)
    {
LABEL_32:
      v28 = &v59;
      v61 = sub_1005B981C(&unk_101A001E0);
      v60 = v9;

      sub_100D8B22C(v3, v9, &v58);
LABEL_33:
      sub_100005070((v28 + 32));

      return;
    }

LABEL_38:
    swift_once();
    goto LABEL_32;
  }

  v29 = objc_opt_self();
  v30 = [v29 _atomicIncrementAssertCount];
  v58 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v58);
  StaticString.description.getter();
  v31 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v32 = String._bridgeToObjectiveC()();

  v33 = [v32 lastPathComponent];

  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v37 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v30;
  v39 = sub_100006370(0, &qword_1019F4D30);
  *(inited + 96) = v39;
  v40 = sub_1005CF04C();
  *(inited + 104) = v40;
  *(inited + 72) = v31;
  *(inited + 136) = &type metadata for String;
  v41 = sub_1000053B0();
  *(inited + 112) = v34;
  *(inited + 120) = v36;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v41;
  *(inited + 152) = 43;
  v42 = v58;
  *(inited + 216) = v39;
  *(inited + 224) = v40;
  *(inited + 192) = v42;
  v43 = v31;
  v44 = v42;
  v45 = static os_log_type_t.error.getter();
  sub_100005404(v37, &_mh_execute_header, v45, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v46 = static os_log_type_t.error.getter();
  sub_100005404(v37, &_mh_execute_header, v46, "Unknown knob tag.", 17, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v47 = swift_allocObject();
  v47[2] = 8;
  v47[3] = 0;
  v47[4] = 0;
  v47[5] = 0;
  v48 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v49 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v50 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v51 = String._bridgeToObjectiveC()();

  [v29 handleFailureInFunction:v49 file:v50 lineNumber:43 isFatal:0 format:v51 args:v48];
}

double sub_100D8AFE4@<D0>(uint64_t a1@<X0>, void *a2@<X1>, CGFloat *a3@<X8>)
{
  v6 = *(a1 + OBJC_IVAR____TtC8Freeform22CRLWPKnobPositioning_i_layout);
  if (qword_1019F1570 != -1)
  {
LABEL_18:
    swift_once();
  }

  v22[3] = sub_1005B981C(&unk_101A001E0);
  v22[0] = a2;

  sub_1007A22B0(v6, a2, &v21);
  sub_100005070(v22);
  v6 = v21;
  if (!(v21 >> 62))
  {
    v7 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_4;
    }

LABEL_20:

    MaxY = 0.0;
    MaxX = 0.0;
    goto LABEL_21;
  }

  v7 = _CocoaArrayWrapper.endIndex.getter();
  if (!v7)
  {
    goto LABEL_20;
  }

LABEL_4:
  v8 = 0;
  while (1)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v9 = *&v6[8 * v8 + 32];
    }

    a2 = v9;
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    if ([v9 containsStart])
    {
      break;
    }

    ++v8;
    if (v10 == v7)
    {
      goto LABEL_20;
    }
  }

  v11 = [a2 writingDirection];
  [a2 rect];
  if (v11 == 1)
  {
    MaxX = CGRectGetMaxX(*&v12);
    [a2 rect];
    MaxY = CGRectGetMaxY(v23);

    v18 = *(a1 + OBJC_IVAR____TtC8Freeform22CRLWPKnobPositioning_i_knobRadius);
    v19 = -0.5;
    goto LABEL_22;
  }

  MaxX = CGRectGetMinX(*&v12);
  [a2 rect];
  MaxY = CGRectGetMinY(v24);

LABEL_21:
  v18 = *(a1 + OBJC_IVAR____TtC8Freeform22CRLWPKnobPositioning_i_knobRadius);
  v19 = 0.5;
LABEL_22:
  result = MaxY + v18 * v19;
  *a3 = MaxX;
  a3[1] = result;
  return result;
}

double sub_100D8B22C@<D0>(uint64_t a1@<X0>, void *a2@<X1>, CGFloat *a3@<X8>)
{
  v6 = *(a1 + OBJC_IVAR____TtC8Freeform22CRLWPKnobPositioning_i_layout);
  if (qword_1019F1570 != -1)
  {
LABEL_18:
    swift_once();
  }

  v22[3] = sub_1005B981C(&unk_101A001E0);
  v22[0] = a2;

  sub_1007A22B0(v6, a2, &v21);
  sub_100005070(v22);
  v6 = v21;
  if (!(v21 >> 62))
  {
    v7 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_4;
    }

LABEL_20:

    MinY = 0.0;
    MinX = 0.0;
    goto LABEL_21;
  }

  v7 = _CocoaArrayWrapper.endIndex.getter();
  if (!v7)
  {
    goto LABEL_20;
  }

LABEL_4:
  v8 = 0;
  while (1)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v9 = *&v6[8 * v8 + 32];
    }

    a2 = v9;
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    if ([v9 containsEnd])
    {
      break;
    }

    ++v8;
    if (v10 == v7)
    {
      goto LABEL_20;
    }
  }

  v11 = [a2 writingDirection];
  [a2 rect];
  if (v11 == 1)
  {
    MinX = CGRectGetMinX(*&v12);
    [a2 rect];
    MinY = CGRectGetMinY(v23);

    v18 = *(a1 + OBJC_IVAR____TtC8Freeform22CRLWPKnobPositioning_i_knobRadius);
    v19 = 0.5;
    goto LABEL_22;
  }

  MinX = CGRectGetMaxX(*&v12);
  [a2 rect];
  MinY = CGRectGetMaxY(v24);

LABEL_21:
  v18 = *(a1 + OBJC_IVAR____TtC8Freeform22CRLWPKnobPositioning_i_knobRadius);
  v19 = -0.5;
LABEL_22:
  result = MinY + v18 * v19;
  *a3 = MinX;
  a3[1] = result;
  return result;
}

double sub_100D8B474(void *a1, uint64_t a2, uint64_t a3, void (*a4)(double *__return_ptr, id, uint64_t))
{
  type metadata accessor for CRLTextRange();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = qword_1019F1570;
  v8 = a1;
  if (v7 != -1)
  {
    swift_once();
  }

  v12[3] = sub_1005B981C(&unk_101A001E0);
  v12[0] = v6;

  a4(&v11, v8, v6);
  sub_100005070(v12);
  v9 = v11;

  return v9;
}

id sub_100D8B590()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLWPKnobPositioning_i();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100D8B5F8(void *a1)
{
  result = [a1 isRange];
  if (result)
  {
    return ![a1 type] || objc_msgSend(a1, "type") == 4 || objc_msgSend(a1, "type") == 7;
  }

  return result;
}

uint64_t sub_100D8B66C(uint64_t a1, uint64_t a2, char a3)
{
  v16[0] = a2;
  v4 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v4 - 8);
  v6 = v16 - v5;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_1005B981C(&qword_101A1F7C8);
  v7 = sub_1005B981C(&qword_101A14650);
  v8 = (*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10146C6B0;
  CodingUserInfoKey.init(rawValue:)();
  v10 = type metadata accessor for CodingUserInfoKey();
  v11 = *(v10 - 8);
  result = (*(v11 + 48))(v6, 1, v10);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v13 = v9 + v8;
    v14 = v13 + *(v7 + 48);
    (*(v11 + 32))(v13, v6, v10);
    *(v14 + 24) = &type metadata for Bool;
    *v14 = a3 & 1;
    sub_100BD5C14(v9);
    swift_setDeallocating();
    sub_10000CAAC(v13, &qword_101A14650);
    swift_deallocClassInstance();
    dispatch thunk of JSONDecoder.userInfo.setter();
    sub_100B3E8EC();
    v15 = v16[1];
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    if (!v15)
    {
      return v16[3];
    }
  }

  return result;
}

uint64_t sub_100D8BBE8(void *a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    v3 = [a1 description];
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v12 = 0xD00000000000002ELL;
    v7 = v4;
    v8 = v6;
LABEL_6:
    String.append(_:)(*&v7);

    return v12;
  }

  if (a3 != 1)
  {
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = a1;
    v8 = a2;
    goto LABEL_6;
  }

  v12 = 0xD00000000000002FLL;
  String.append(_:)(*&a1);
  return v12;
}

uint64_t sub_100D8BD10(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(v2 + 24);
  if (*(v4 + 16) && (v5 = sub_10000BE7C(a1, a2), (v6 & 1) != 0))
  {
    v7 = *(v4 + 56) + 16 * v5;
    v8 = *v7;
    sub_100024E98(*v7, *(v7 + 8));
  }

  else
  {
    sub_10098EABC(&_mh_execute_header, "getDataForIndirectResource(_:)", 30, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardController+ContentLanguage.swift", 106, 2, 157);
    v9 = *(v3 + 16);
    v10 = String._bridgeToObjectiveC()();
    v11 = [v9 dataForPasteboardType:v10];

    if (v11)
    {
      v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_100D8BE1C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100D8BE80()
{
  v9 = &type metadata for CRLFeatureFlags;
  v10 = sub_100004D60();
  v8[0] = 8;
  v1 = isFeatureEnabled(_:)();
  sub_100005070(v8);
  if ((v1 & 1) == 0)
  {
    return 0;
  }

  v2 = [v0 pasteboardTypes];
  if (v2)
  {
    v3 = v2;
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  sub_1007AC158(v4);
  v6 = v5;

  if (!v6)
  {
    return 0;
  }

  return 1;
}

id sub_100D8BF78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100D8C08C(*a1, *(a1 + 8));
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_100D8BFAC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100D8BBE8(*v1, *(v1 + 8), *(v1 + 16));
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100D8BFDC(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = String.index(_:offsetBy:limitedBy:)();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return String.subscript.getter();
}

id sub_100D8C08C(uint64_t a1, unint64_t a2)
{
  v4._object = 0x8000000101567710;
  v4._countAndFlagsBits = 0xD00000000000002ELL;
  if (String.hasPrefix(_:)(v4))
  {
    v5 = String.count.getter();
    sub_100D8BFDC(v5, a1, a2);

    static String._fromSubstring(_:)();

    v6 = type metadata accessor for TSCLVersion();
    v7 = objc_allocWithZone(v6);
    v8 = OBJC_IVAR____TtC8Freeform11TSCLVersion_major;
    *&v7[OBJC_IVAR____TtC8Freeform11TSCLVersion_major] = 1;
    v9 = OBJC_IVAR____TtC8Freeform11TSCLVersion_minor;
    *&v7[OBJC_IVAR____TtC8Freeform11TSCLVersion_minor] = 0;
    v10 = sub_100763420();
    v12 = v11;
    v14 = v13;

    if ((v14 & 1) == 0)
    {
      *&v7[v8] = v10;
      *&v7[v9] = v12;
      v23.receiver = v7;
      v23.super_class = v6;
      return objc_msgSendSuper2(&v23, "init");
    }

    swift_deallocPartialClassInstance();
  }

  else
  {
    v15._countAndFlagsBits = 0xD00000000000002FLL;
    v15._object = 0x800000010156F0D0;
    if (String.hasPrefix(_:)(v15))
    {
      v16 = String.count.getter();
      sub_100D8BFDC(v16, a1, a2);

      v17 = static String._fromSubstring(_:)();

      return v17;
    }

    v19._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = String.hasPrefix(_:)(v19);

    if (v20)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = String.count.getter();

      sub_100D8BFDC(v21, a1, a2);

      v22 = static String._fromSubstring(_:)();

      return v22;
    }
  }

  return 0;
}

uint64_t sub_100D8C33C(unint64_t a1)
{
  _s25PasteboardResourceHandlerCMa();
  swift_allocObject();
  _s16ResourceExporterCMa();
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 24) = &off_1018A4368;
  swift_unknownObjectWeakAssign();

  v3 = sub_1008147E0(v2, a1);
  _s25CanvasObjectArrayExporterCMa();
  inited = swift_initStackObject();
  *(inited + 16) = v3;
  _s20CanvasObjectExporterCMa();
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(inited + 24) = v5;

  sub_10080C94C(a1);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  sub_100B3E940();
  v6 = dispatch thunk of JSONEncoder.encode<A>(_:)();

  return v6;
}

uint64_t sub_100D8C6C0(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v6 - 8);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v53 - v10;
  v12 = type metadata accessor for URL();
  v61 = *(v12 - 8);
  __chkstk_darwin(v12);
  v59 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v58 = &v53 - v15;
  __chkstk_darwin(v16);
  v60 = &v53 - v17;
  v18 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v18 - 8);
  v20 = &v53 - v19;
  v21 = type metadata accessor for UUID();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init(uuidString:)();
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_10000CAAC(v20, &qword_1019F6990);
    goto LABEL_16;
  }

  v55 = v11;
  v56 = a1;
  v57 = a2;
  v54 = v22;
  (*(v22 + 32))(v24, v20, v21);
  v25 = *&a3[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManagerLock];
  os_unfair_lock_lock(*(v25 + 16));
  v26 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager;
  v27 = *&a3[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
  v53 = v21;
  if (v27)
  {
    v28 = v27;
  }

  else
  {
    v29 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager());
    v30 = a3;
    v31 = sub_10001F1A0(v30);

    v32 = *&a3[v26];
    *&a3[v26] = v31;
    v28 = v31;

    v27 = 0;
  }

  v33 = *(v25 + 16);
  v34 = v27;
  os_unfair_lock_unlock(v33);
  v35 = v24;
  sub_10108CAF4(v24, 0, 3, 0, 0, v8);
  v36 = v61;
  v37 = *(v61 + 48);
  v38 = v37(v8, 1, v12);
  a1 = v56;
  if (v38 == 1)
  {
    sub_10000CAAC(v8, &unk_1019F33C0);
    UUID.uuidString.getter();
    URL.appendingPathComponent(_:)();

    v47 = sub_10108C934();

    v44 = v55;
    v43 = v60;
    if ((v47 & 1) == 0)
    {
      v46 = v54;
      v42 = v61;
      (*(v61 + 8))(v59, v12);
      v45 = 1;
      goto LABEL_13;
    }

    v42 = v61;
    (*(v61 + 32))(v55, v59, v12);
    v45 = 0;
  }

  else
  {

    v39 = *(v36 + 32);
    v40 = v58;
    v39(v58, v8, v12);
    v41 = v55;
    v39(v55, v40, v12);
    v43 = v60;
    v42 = v61;
    v44 = v41;
    v45 = 0;
  }

  v46 = v54;
LABEL_13:
  (*(v42 + 56))(v44, v45, 1, v12);
  if (v37(v44, 1, v12) != 1)
  {
    (*(v42 + 32))(v43, v44, v12);
    v51 = Data.init(contentsOf:options:)();
    (*(v42 + 8))(v43, v12);
    (*(v46 + 8))(v35, v53);
    return v51;
  }

  (*(v46 + 8))(v35, v53);
  sub_10000CAAC(v44, &unk_1019F33C0);
  a2 = v57;
LABEL_16:
  if (qword_1019F22A8 != -1)
  {
    swift_once();
  }

  v48 = static OS_os_log.pasteboard;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  v50 = static os_log_type_t.error.getter();
  sub_100005404(v48, &_mh_execute_header, v50, "Failed to create resourceData for assetUUID: %@", 47, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  return 0;
}

void *sub_100D8CD90(void *a1, uint64_t a2, char *a3)
{
  v6 = type metadata accessor for IndexSet();
  v7 = *(v6 - 1);
  __chkstk_darwin(v6);
  v9 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 < 0)
  {
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    swift_once();
    v21 = static OS_os_log.pasteboard;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v23 = _convertErrorToNSError(_:)();
    *(inited + 56) = sub_100015D4C();
    *(inited + 64) = sub_100D8D894();
    *(inited + 32) = v23;
    v24 = static os_log_type_t.error.getter();
    sub_100005404(v21, &_mh_execute_header, v24, "Failed to initialize drawables Array model with error: %@", 57, 2, inited);
    sub_10002640C(v96, v97);

    swift_setDeallocating();
    sub_100005070(inited + 32);
    (*(v6 + 1))(v9, v98);
    return 0;
  }

  IndexSet.init(integer:)();
  v10 = [a1 pasteboardTypes];
  if (!v10 || (v101 = a3, v11 = v10, v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v11, sub_1007AC158(v12), v14 = v13, , !v14) || (v15 = String._bridgeToObjectiveC()(), , IndexSet._bridgeToObjectiveC()(v16), v18 = v17, v19 = [a1 dataForPasteboardType:v15 inItemSet:v17], v15, v18, !v19))
  {
    (*(v7 + 8))(v9, v6);
    return 0;
  }

  v98 = v6;
  v6 = &type metadata for Any;
  v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v20 + 16))
  {
    (*(v7 + 8))(v9, v98);

    return 0;
  }

  sub_100064288(v20 + 32, v105);

  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v7 + 8))(v9, v98);
    return 0;
  }

  v96 = v103;
  v97 = v104;
  v95 = sub_100D8B66C(v103, v104, 0);
  v94 = v7;
  v26 = [a1 pasteboardTypesForItemSet:0];
  if (v26)
  {
    v27 = v26;
    sub_1005B981C(&unk_1019F4D80);
    v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v29 = *(v28 + 16);
    if (v29)
    {
      v30 = 0;
      v100 = (v28 + 32);
      v31 = _swiftEmptyArrayStorage;
      while (1)
      {
        if (v30 >= *(v28 + 16))
        {
          goto LABEL_68;
        }

        v32 = *(&v100->isa + v30);
        v33 = *(v32 + 16);
        v6 = *(v31 + 2);
        v34 = &v6[v33];
        if (__OFADD__(v6, v33))
        {
          goto LABEL_69;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && v34 <= *(v31 + 3) >> 1)
        {
          if (!*(v32 + 16))
          {
            goto LABEL_15;
          }
        }

        else
        {
          if (v6 <= v34)
          {
            v36 = &v6[v33];
          }

          else
          {
            v36 = v6;
          }

          v31 = sub_100024CBC(isUniquelyReferenced_nonNull_native, v36, 1, v31);
          if (!*(v32 + 16))
          {
LABEL_15:

            if (v33)
            {
              goto LABEL_70;
            }

            goto LABEL_16;
          }
        }

        if ((*(v31 + 3) >> 1) - *(v31 + 2) < v33)
        {
          goto LABEL_71;
        }

        swift_arrayInitWithCopy();

        if (v33)
        {
          v37 = *(v31 + 2);
          v38 = __OFADD__(v37, v33);
          v39 = v37 + v33;
          if (v38)
          {
            goto LABEL_72;
          }

          *(v31 + 2) = v39;
        }

LABEL_16:
        if (v29 == ++v30)
        {
          goto LABEL_33;
        }
      }
    }

    v31 = _swiftEmptyArrayStorage;
LABEL_33:
  }

  else
  {
    v31 = _swiftEmptyArrayStorage;
  }

  v40 = *(v31 + 2);
  if (v40)
  {
    v41 = 0;
    v100 = @"com.apple.apps.content-language.resource-";
    v42 = v31 + 40;
    v99 = v40;
    v92 = v40 - 1;
    v43 = _swiftEmptyDictionarySingleton;
    v93 = v31 + 40;
LABEL_36:
    v6 = &v42[16 * v41];
    v44 = v41;
    while (1)
    {
      if (v44 >= *(v31 + 2))
      {
        goto LABEL_67;
      }

      v45 = *(v6 - 1);
      v46 = *v6;
      v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v48;

      v50._countAndFlagsBits = v47;
      v50._object = v49;
      LOBYTE(v47) = String.hasPrefix(_:)(v50);

      if (v47)
      {
        v51 = String._bridgeToObjectiveC()();
        v52 = [a1 dataForPasteboardType:v51];

        if (v52)
        {
          v57 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v59 = v58;

          v91 = swift_isUniquelyReferenced_nonNull_native();
          v105[0] = v43;
          v61 = sub_10000BE7C(v45, v46);
          v62 = v43[2];
          v63 = (v60 & 1) == 0;
          v64 = v62 + v63;
          if (__OFADD__(v62, v63))
          {
            goto LABEL_74;
          }

          if (v43[3] < v64)
          {
            v90 = v60;
            sub_100A96378(v64, v91);
            v65 = sub_10000BE7C(v45, v46);
            if ((v90 & 1) != (v66 & 1))
            {
              goto LABEL_76;
            }

            v61 = v65;
            v43 = v105[0];
            if ((v90 & 1) == 0)
            {
              goto LABEL_55;
            }

LABEL_52:
            v67 = (v43[7] + 16 * v61);
            v68 = *v67;
            v69 = v67[1];
            *v67 = v57;
            v67[1] = v59;
            sub_10002640C(v68, v69);
            goto LABEL_53;
          }

          if (v91)
          {
            v43 = v105[0];
            if (v60)
            {
              goto LABEL_52;
            }
          }

          else
          {
            v90 = v60;
            sub_100AABD40();
            v43 = v105[0];
            if (v90)
            {
              goto LABEL_52;
            }
          }

LABEL_55:
          v43[(v61 >> 6) + 8] |= 1 << v61;
          v70 = (v43[6] + 16 * v61);
          *v70 = v45;
          v70[1] = v46;
          v71 = (v43[7] + 16 * v61);
          *v71 = v57;
          v71[1] = v59;
          v72 = v43[2];
          v38 = __OFADD__(v72, 1);
          v73 = v72 + 1;
          if (v38)
          {
            goto LABEL_75;
          }

          v43[2] = v73;
          goto LABEL_57;
        }

        v53 = sub_10000BE7C(v45, v46);
        if (v54)
        {
          v55 = v53;
          v56 = swift_isUniquelyReferenced_nonNull_native();
          v105[0] = v43;
          if (!v56)
          {
            sub_100AABD40();
            v43 = v105[0];
          }

          sub_10002640C(*(v43[7] + 16 * v55), *(v43[7] + 16 * v55 + 8));
          sub_100BD1158(v55, v43);
LABEL_53:

LABEL_57:
          v41 = v44 + 1;
          v42 = v93;
          if (v92 != v44)
          {
            goto LABEL_36;
          }

          goto LABEL_60;
        }
      }

      ++v44;

      v6 += 16;
      if (v99 == v44)
      {
        goto LABEL_60;
      }
    }
  }

  v43 = _swiftEmptyDictionarySingleton;
LABEL_60:

  _s32PasteboardIndirectResourceGetterCMa();
  v74 = swift_allocObject();
  *(v74 + 16) = a1;
  *(v74 + 24) = v43;
  v75 = *&v101[OBJC_IVAR____TtC8Freeform19CRLBoardItemFactory_board];
  _s16ResourceImporterCMa();
  v76 = swift_allocObject();
  v76[2] = v75;
  v76[3] = v74;
  v76[4] = &off_1018A4358;
  v77 = v95;
  v78 = *(v95 + 16);
  type metadata accessor for CRLContentLanguageBoardItemProvider.SharedContext();
  swift_allocObject();
  v79 = a1;
  v80 = v75;

  v81 = sub_100D5D15C(v78);
  v82 = *(v77 + 16);
  if (v82)
  {
    v100 = v74;
    v106 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    if (v82 > *(v77 + 16))
    {
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

    else
    {
      v83 = v77 + 32;
      v84 = v101;
      do
      {
        sub_10000630C(v83, v105);
        type metadata accessor for CRLCLImport.Context();
        v85 = swift_allocObject();
        v85[4] = 0;
        v85[5] = 0;
        v85[2] = v76;
        v85[3] = _swiftEmptyArrayStorage;
        sub_10000630C(v105, &v103);
        v86 = type metadata accessor for CRLContentLanguageBoardItemProvider();
        v87 = objc_allocWithZone(v86);
        swift_unknownObjectWeakInit();
        *&v87[OBJC_IVAR____TtC8Freeform35CRLContentLanguageBoardItemProvider_progress] = 0;
        *&v87[OBJC_IVAR____TtC8Freeform35CRLContentLanguageBoardItemProvider_boardItem] = 0;
        *&v87[OBJC_IVAR____TtC8Freeform35CRLContentLanguageBoardItemProvider_error] = 0;
        v87[OBJC_IVAR____TtC8Freeform35CRLContentLanguageBoardItemProvider_producesValidGeometry] = 1;
        sub_10000630C(&v103, &v87[OBJC_IVAR____TtC8Freeform35CRLContentLanguageBoardItemProvider_jsonModel]);
        *&v87[OBJC_IVAR____TtC8Freeform35CRLContentLanguageBoardItemProvider_boardItemFactory] = v84;
        *&v87[OBJC_IVAR____TtC8Freeform35CRLContentLanguageBoardItemProvider_importContext] = v85;
        *&v87[OBJC_IVAR____TtC8Freeform35CRLContentLanguageBoardItemProvider_sharedContext] = v81;
        v102.receiver = v87;
        v102.super_class = v86;

        v88 = v84;
        objc_msgSendSuper2(&v102, "init");
        sub_100005070(&v103);
        sub_100005070(v105);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v83 += 40;
        --v82;
      }

      while (v82);

      sub_10002640C(v96, v97);

      (*(v94 + 8))(v9, v98);
      return v106;
    }
  }

  else
  {
    sub_10002640C(v96, v97);

    (*(v94 + 8))(v9, v98);
    return _swiftEmptyArrayStorage;
  }

  return result;
}

unint64_t sub_100D8D894()
{
  result = qword_1019F8300;
  if (!qword_1019F8300)
  {
    sub_100015D4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F8300);
  }

  return result;
}

void sub_100D8D8EC(void *a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    sub_100D8D900(a1, a2, a3);
  }
}

void sub_100D8D900(void *a1, uint64_t a2, char a3)
{
  if (a3 == 2 || a3 == 1)
  {
  }

  else if (!a3)
  {
  }
}

uint64_t sub_100D8D944(uint64_t a1)
{
  v42[1] = a1;
  v2 = sub_1005B981C(&unk_1019F8DB0);
  __chkstk_darwin(v2 - 8);
  v44 = v42 - v3;
  v4 = type metadata accessor for UTType();
  v45 = *(v4 - 8);
  v46 = v4;
  __chkstk_darwin(v4);
  v43 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v6 - 8);
  v8 = v42 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v48 = v9;
  v49 = v10;
  __chkstk_darwin(v9);
  v47 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1005B981C(&unk_101A1B880);
  __chkstk_darwin(v12 - 8);
  v14 = v42 - v13;
  v15 = type metadata accessor for CRLAssetData();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v1;
  type metadata accessor for CRLUSDZItem();
  sub_100802624(v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    v19 = &unk_101A1B880;
LABEL_3:
    sub_10000CAAC(v14, v19);
    return 0;
  }

  sub_1006008F0(v14, v18);
  v20 = *(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store);
  v21 = *&v20[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManagerLock];
  v22 = *(v21 + 16);
  v23 = v20;
  os_unfair_lock_lock(v22);
  v24 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager;
  v25 = *&v23[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
  if (v25)
  {
    v26 = *&v23[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
  }

  else
  {
    v27 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager());
    v28 = v23;
    v29 = sub_10001F1A0(v28);

    v30 = *&v23[v24];
    *&v23[v24] = v29;
    v26 = v29;

    v25 = 0;
  }

  v31 = *(v21 + 16);
  v32 = v25;
  os_unfair_lock_unlock(v31);
  sub_10108CAF4(v18, 0, 3, 0, 0, v8);

  v34 = v48;
  v33 = v49;
  if ((*(v49 + 48))(v8, 1, v48) == 1)
  {
    sub_100D9D0BC(v18, type metadata accessor for CRLAssetData);
    sub_10000CAAC(v8, &unk_1019F33C0);
    return 0;
  }

  v35 = v47;
  (*(v33 + 32))(v47, v8, v34);
  v14 = v44;
  sub_1007AC4D0(0, v44);
  v37 = v45;
  v36 = v46;
  if ((*(v45 + 48))(v14, 1, v46) == 1)
  {
    (*(v33 + 8))(v35, v34);
    sub_100D9D0BC(v18, type metadata accessor for CRLAssetData);
    v19 = &unk_1019F8DB0;
    goto LABEL_3;
  }

  v38 = v43;
  (*(v37 + 32))(v43, v14, v36);
  if (static UTType.== infix(_:_:)())
  {
    v39 = v35;
    v40 = Data.init(contentsOf:options:)();
    (*(v37 + 8))(v38, v36);
    (*(v33 + 8))(v39, v34);
    sub_100D9D0BC(v18, type metadata accessor for CRLAssetData);
    return v40;
  }

  (*(v37 + 8))(v38, v36);
  (*(v33 + 8))(v35, v34);
  sub_100D9D0BC(v18, type metadata accessor for CRLAssetData);
  return 0;
}

uint64_t sub_100D8E064(uint64_t a1)
{
  v42[1] = a1;
  v2 = sub_1005B981C(&unk_1019F8DB0);
  __chkstk_darwin(v2 - 8);
  v44 = v42 - v3;
  v4 = type metadata accessor for UTType();
  v45 = *(v4 - 8);
  v46 = v4;
  __chkstk_darwin(v4);
  v43 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v6 - 8);
  v8 = v42 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v48 = v9;
  v49 = v10;
  __chkstk_darwin(v9);
  v47 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1005B981C(&unk_101A1B880);
  __chkstk_darwin(v12 - 8);
  v14 = v42 - v13;
  v15 = type metadata accessor for CRLAssetData();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v1;
  type metadata accessor for CRLFileItem();
  sub_100BEFB3C(v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    v19 = &unk_101A1B880;
LABEL_3:
    sub_10000CAAC(v14, v19);
    return 0;
  }

  sub_1006008F0(v14, v18);
  v20 = *(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store);
  v21 = *&v20[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManagerLock];
  v22 = *(v21 + 16);
  v23 = v20;
  os_unfair_lock_lock(v22);
  v24 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager;
  v25 = *&v23[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
  if (v25)
  {
    v26 = *&v23[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
  }

  else
  {
    v27 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager());
    v28 = v23;
    v29 = sub_10001F1A0(v28);

    v30 = *&v23[v24];
    *&v23[v24] = v29;
    v26 = v29;

    v25 = 0;
  }

  v31 = *(v21 + 16);
  v32 = v25;
  os_unfair_lock_unlock(v31);
  sub_10108CAF4(v18, 0, 3, 0, 0, v8);

  v34 = v48;
  v33 = v49;
  if ((*(v49 + 48))(v8, 1, v48) == 1)
  {
    sub_100D9D0BC(v18, type metadata accessor for CRLAssetData);
    sub_10000CAAC(v8, &unk_1019F33C0);
    return 0;
  }

  v35 = v47;
  (*(v33 + 32))(v47, v8, v34);
  v14 = v44;
  sub_1007AC4D0(0, v44);
  v37 = v45;
  v36 = v46;
  if ((*(v45 + 48))(v14, 1, v46) == 1)
  {
    (*(v33 + 8))(v35, v34);
    sub_100D9D0BC(v18, type metadata accessor for CRLAssetData);
    v19 = &unk_1019F8DB0;
    goto LABEL_3;
  }

  v38 = v43;
  (*(v37 + 32))(v43, v14, v36);
  if (static UTType.== infix(_:_:)())
  {
    v39 = v35;
    v40 = Data.init(contentsOf:options:)();
    (*(v37 + 8))(v38, v36);
    (*(v33 + 8))(v39, v34);
    sub_100D9D0BC(v18, type metadata accessor for CRLAssetData);
    return v40;
  }

  (*(v37 + 8))(v38, v36);
  (*(v33 + 8))(v35, v34);
  sub_100D9D0BC(v18, type metadata accessor for CRLAssetData);
  return 0;
}

uint64_t sub_100D8E784(uint64_t a1)
{
  v42[1] = a1;
  v2 = sub_1005B981C(&unk_1019F8DB0);
  __chkstk_darwin(v2 - 8);
  v4 = v42 - v3;
  v5 = type metadata accessor for UTType();
  v45 = *(v5 - 8);
  v46 = v5;
  __chkstk_darwin(v5);
  v43 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v7 - 8);
  v9 = v42 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v44 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1005B981C(&unk_101A1B880);
  __chkstk_darwin(v13 - 8);
  v15 = v42 - v14;
  v16 = type metadata accessor for CRLAssetData();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v1;
  type metadata accessor for CRLMovieItem();
  sub_100D9CEE0(v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_10000CAAC(v15, &unk_101A1B880);
  }

  else
  {
    sub_1006008F0(v15, v19);
    v20 = *(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store);
    v21 = *&v20[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManagerLock];
    v22 = *(v21 + 16);
    v23 = v20;
    os_unfair_lock_lock(v22);
    v24 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager;
    v25 = *&v23[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
    if (v25)
    {
      v26 = *&v23[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
    }

    else
    {
      v27 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager());
      v28 = v23;
      v29 = sub_10001F1A0(v28);

      v30 = *&v23[v24];
      *&v23[v24] = v29;
      v26 = v29;

      v25 = 0;
    }

    v31 = *(v21 + 16);
    v32 = v25;
    os_unfair_lock_unlock(v31);
    sub_10108CAF4(v19, 0, 3, 0, 0, v9);

    v33 = v11;
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      sub_100D9D0BC(v19, type metadata accessor for CRLAssetData);
      sub_10000CAAC(v9, &unk_1019F33C0);
    }

    else
    {
      v34 = *(v11 + 32);
      v35 = v44;
      v34(v44, v9, v10);
      sub_1007AC4D0(0, v4);
      v37 = v45;
      v36 = v46;
      if ((*(v45 + 48))(v4, 1, v46) == 1)
      {
        (*(v33 + 8))(v35, v10);
        sub_100D9D0BC(v19, type metadata accessor for CRLAssetData);
        sub_10000CAAC(v4, &unk_1019F8DB0);
      }

      else
      {
        v38 = v43;
        (*(v37 + 32))(v43, v4, v36);
        if (static UTType.== infix(_:_:)())
        {
          v39 = v33;
          v40 = Data.init(contentsOf:options:)();
          (*(v37 + 8))(v38, v36);
          (*(v39 + 8))(v35, v10);
          sub_100D9D0BC(v19, type metadata accessor for CRLAssetData);
          return v40;
        }

        (*(v37 + 8))(v38, v36);
        (*(v33 + 8))(v35, v10);
        sub_100D9D0BC(v19, type metadata accessor for CRLAssetData);
      }
    }
  }

  return 0;
}

void sub_100D8EE78(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for CRLMovieItemAssetData(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v19 - v8;
  __chkstk_darwin(v10);
  v12 = &v19 - v11;
  if ((sub_1011255D0(v13) & 1) == 0)
  {
    sub_100D9D0BC(a1, type metadata accessor for CRLAssetData);
    return;
  }

  if (**(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) != &off_1019F58C8)
  {
    __break(1u);
    return;
  }

  swift_beginAccess();

  sub_1005B981C(&qword_101A28680);
  CRRegister.wrappedValue.getter();
  swift_endAccess();
  sub_10061A030(a1, v12);
  sub_100601130(v12, v9, type metadata accessor for CRLMovieItemAssetData);
  swift_beginAccess();
  sub_100601130(v9, v6, type metadata accessor for CRLMovieItemAssetData);
  CRRegister.wrappedValue.setter();
  sub_100D9D0BC(v9, type metadata accessor for CRLMovieItemAssetData);
  swift_endAccess();

  sub_100D9D0BC(v12, type metadata accessor for CRLMovieItemAssetData);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v16 = (*((swift_isaMask & *Strong) + 0x388))();

    sub_100D9D0BC(a1, type metadata accessor for CRLAssetData);
    if (v16)
    {
      return;
    }
  }

  else
  {
    sub_100D9D0BC(a1, type metadata accessor for CRLAssetData);
  }

  v17 = *(v2 + OBJC_IVAR____TtC8Freeform12CRLMovieItem__movieAssetAsData);
  *(v2 + OBJC_IVAR____TtC8Freeform12CRLMovieItem__movieAssetAsData) = 0;

  v18 = *(v2 + OBJC_IVAR____TtC8Freeform12CRLMovieItem__posterImageAssetAsData);
  *(v2 + OBJC_IVAR____TtC8Freeform12CRLMovieItem__posterImageAssetAsData) = 0;

  *(v2 + OBJC_IVAR____TtC8Freeform12CRLMovieItem_spatial) = 2;
}

void sub_100D8F180(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for CRLMovieItemAssetData(0);
  __chkstk_darwin(v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v18 - v8;
  __chkstk_darwin(v10);
  v12 = &v18 - v11;
  if ((sub_1011255D0(v13) & 1) == 0)
  {
    sub_10000CAAC(a1, &unk_101A1B880);
    return;
  }

  if (**(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) != &off_1019F58C8)
  {
    __break(1u);
    return;
  }

  swift_beginAccess();

  sub_1005B981C(&qword_101A28680);
  CRRegister.wrappedValue.getter();
  swift_endAccess();
  sub_10061A094(a1, &v12[*(v4 + 20)]);
  sub_100601130(v12, v9, type metadata accessor for CRLMovieItemAssetData);
  swift_beginAccess();
  sub_100601130(v9, v6, type metadata accessor for CRLMovieItemAssetData);
  CRRegister.wrappedValue.setter();
  sub_100D9D0BC(v9, type metadata accessor for CRLMovieItemAssetData);
  swift_endAccess();

  sub_100D9D0BC(v12, type metadata accessor for CRLMovieItemAssetData);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v16 = (*((swift_isaMask & *Strong) + 0x388))();

    sub_10000CAAC(a1, &unk_101A1B880);
    if (v16)
    {
      return;
    }
  }

  else
  {
    sub_10000CAAC(a1, &unk_101A1B880);
  }

  v17 = *(v2 + OBJC_IVAR____TtC8Freeform12CRLMovieItem__posterImageAssetAsData);
  *(v2 + OBJC_IVAR____TtC8Freeform12CRLMovieItem__posterImageAssetAsData) = 0;
}

void sub_100D8F61C(double a1)
{
  v4 = type metadata accessor for CRLMovieItemAssetData(0);
  __chkstk_darwin(v4);
  v6 = &v35[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v35[-v8];
  __chkstk_darwin(v10);
  v12 = &v35[-v11];
  if (sub_1011255D0(v13))
  {
    v14 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
    v15 = *(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
    if (*v15 != &off_1019F58C8)
    {
      __break(1u);
      goto LABEL_10;
    }

    swift_beginAccess();

    sub_1005B981C(&qword_101A28680);
    CRRegister.wrappedValue.getter();
    v16 = *&v12[*(v4 + 32)];
    swift_endAccess();

    sub_100D9D0BC(v12, type metadata accessor for CRLMovieItemAssetData);
    if (v16 < a1)
    {
      v12 = objc_opt_self();
      LODWORD(v1) = [v12 _atomicIncrementAssertCount];
      v36 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v36);
      StaticString.description.getter();
      v9 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v17 = String._bridgeToObjectiveC()();

      v18 = [v17 lastPathComponent];

      v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v19;

      if (qword_1019F20A0 == -1)
      {
LABEL_5:
        v20 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146CA70;
        *(inited + 56) = &type metadata for Int32;
        *(inited + 64) = &protocol witness table for Int32;
        *(inited + 32) = v1;
        v22 = sub_100006370(0, &qword_1019F4D30);
        *(inited + 96) = v22;
        v23 = sub_1005CF04C();
        *(inited + 104) = v23;
        *(inited + 72) = v9;
        *(inited + 136) = &type metadata for String;
        v24 = sub_1000053B0();
        *(inited + 112) = v2;
        *(inited + 120) = v15;
        *(inited + 176) = &type metadata for UInt;
        *(inited + 184) = &protocol witness table for UInt;
        *(inited + 144) = v24;
        *(inited + 152) = 55;
        v25 = v36;
        *(inited + 216) = v22;
        *(inited + 224) = v23;
        *(inited + 192) = v25;
        v26 = v9;
        v27 = v25;
        v28 = static os_log_type_t.error.getter();
        sub_100005404(v20, &_mh_execute_header, v28, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        v29 = static os_log_type_t.error.getter();
        sub_100005404(v20, &_mh_execute_header, v29, "Attempting to set startTime after endTime will only lead to misery.", 67, 2, _swiftEmptyArrayStorage);

        type metadata accessor for __VaListBuilder();
        v30 = swift_allocObject();
        v30[2] = 8;
        v30[3] = 0;
        v30[4] = 0;
        v30[5] = 0;
        v31 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v32 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v33 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v34 = String._bridgeToObjectiveC()();

        [v12 handleFailureInFunction:v32 file:v33 lineNumber:55 isFatal:0 format:v34 args:v31];

        return;
      }

LABEL_10:
      swift_once();
      goto LABEL_5;
    }

    if (**(v1 + v14) == &off_1019F58C8)
    {
      swift_beginAccess();

      CRRegister.wrappedValue.getter();
      swift_endAccess();
      *&v12[*(v4 + 28)] = a1;
      sub_100601130(v12, v9, type metadata accessor for CRLMovieItemAssetData);
      swift_beginAccess();
      sub_100601130(v9, v6, type metadata accessor for CRLMovieItemAssetData);
      CRRegister.wrappedValue.setter();
      sub_100D9D0BC(v9, type metadata accessor for CRLMovieItemAssetData);
      swift_endAccess();

      sub_100D9D0BC(v12, type metadata accessor for CRLMovieItemAssetData);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100D8FDFC(double a1)
{
  v4 = type metadata accessor for CRLMovieItemAssetData(0);
  __chkstk_darwin(v4);
  v6 = &v35[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v35[-v8];
  __chkstk_darwin(v10);
  v12 = &v35[-v11];
  if (sub_1011255D0(v13))
  {
    v14 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
    v15 = *(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
    if (*v15 != &off_1019F58C8)
    {
      __break(1u);
      goto LABEL_10;
    }

    swift_beginAccess();

    sub_1005B981C(&qword_101A28680);
    CRRegister.wrappedValue.getter();
    v16 = *&v12[*(v4 + 28)];
    swift_endAccess();

    sub_100D9D0BC(v12, type metadata accessor for CRLMovieItemAssetData);
    if (v16 > a1)
    {
      v12 = objc_opt_self();
      LODWORD(v1) = [v12 _atomicIncrementAssertCount];
      v36 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v36);
      StaticString.description.getter();
      v9 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v17 = String._bridgeToObjectiveC()();

      v18 = [v17 lastPathComponent];

      v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v19;

      if (qword_1019F20A0 == -1)
      {
LABEL_5:
        v20 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146CA70;
        *(inited + 56) = &type metadata for Int32;
        *(inited + 64) = &protocol witness table for Int32;
        *(inited + 32) = v1;
        v22 = sub_100006370(0, &qword_1019F4D30);
        *(inited + 96) = v22;
        v23 = sub_1005CF04C();
        *(inited + 104) = v23;
        *(inited + 72) = v9;
        *(inited + 136) = &type metadata for String;
        v24 = sub_1000053B0();
        *(inited + 112) = v2;
        *(inited + 120) = v15;
        *(inited + 176) = &type metadata for UInt;
        *(inited + 184) = &protocol witness table for UInt;
        *(inited + 144) = v24;
        *(inited + 152) = 67;
        v25 = v36;
        *(inited + 216) = v22;
        *(inited + 224) = v23;
        *(inited + 192) = v25;
        v26 = v9;
        v27 = v25;
        v28 = static os_log_type_t.error.getter();
        sub_100005404(v20, &_mh_execute_header, v28, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        v29 = static os_log_type_t.error.getter();
        sub_100005404(v20, &_mh_execute_header, v29, "Attempting to set startTime after endTime will only lead to misery.", 67, 2, _swiftEmptyArrayStorage);

        type metadata accessor for __VaListBuilder();
        v30 = swift_allocObject();
        v30[2] = 8;
        v30[3] = 0;
        v30[4] = 0;
        v30[5] = 0;
        v31 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v32 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v33 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v34 = String._bridgeToObjectiveC()();

        [v12 handleFailureInFunction:v32 file:v33 lineNumber:67 isFatal:0 format:v34 args:v31];

        return;
      }

LABEL_10:
      swift_once();
      goto LABEL_5;
    }

    if (**(v1 + v14) == &off_1019F58C8)
    {
      swift_beginAccess();

      CRRegister.wrappedValue.getter();
      swift_endAccess();
      *&v12[*(v4 + 32)] = a1;
      sub_100601130(v12, v9, type metadata accessor for CRLMovieItemAssetData);
      swift_beginAccess();
      sub_100601130(v9, v6, type metadata accessor for CRLMovieItemAssetData);
      CRRegister.wrappedValue.setter();
      sub_100D9D0BC(v9, type metadata accessor for CRLMovieItemAssetData);
      swift_endAccess();

      sub_100D9D0BC(v12, type metadata accessor for CRLMovieItemAssetData);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_100D905D0(char a1)
{
  v3 = type metadata accessor for CRLMovieItemAssetData(0);
  __chkstk_darwin(v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v14 - v7;
  __chkstk_darwin(v9);
  v11 = &v14 - v10;
  result = sub_1011255D0(v12);
  if (result)
  {
    if (**(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_1019F58C8)
    {
      swift_beginAccess();

      sub_1005B981C(&qword_101A28680);
      CRRegister.wrappedValue.getter();
      swift_endAccess();
      v11[*(v3 + 36)] = a1 & 1;
      sub_100601130(v11, v8, type metadata accessor for CRLMovieItemAssetData);
      swift_beginAccess();
      sub_100601130(v8, v5, type metadata accessor for CRLMovieItemAssetData);
      CRRegister.wrappedValue.setter();
      sub_100D9D0BC(v8, type metadata accessor for CRLMovieItemAssetData);
      swift_endAccess();

      return sub_100D9D0BC(v11, type metadata accessor for CRLMovieItemAssetData);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_100D90940()
{
  v1 = type metadata accessor for CRLMovieItemAssetData(0);
  __chkstk_darwin(v1);
  v3 = &v4 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (**(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_1019F58C8)
  {
    swift_beginAccess();

    sub_1005B981C(&qword_101A28680);
    CRRegister.wrappedValue.getter();
    swift_endAccess();

    sub_100D9D0BC(v3, type metadata accessor for CRLMovieItemAssetData);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100D90AD4(char a1)
{
  v3 = type metadata accessor for CRLMovieItemAssetData(0);
  __chkstk_darwin(v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v14 - v7;
  __chkstk_darwin(v9);
  v11 = &v14 - v10;
  result = sub_1011255D0(v12);
  if (result)
  {
    if (**(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_1019F58C8)
    {
      swift_beginAccess();

      sub_1005B981C(&qword_101A28680);
      CRRegister.wrappedValue.getter();
      swift_endAccess();
      v11[*(v3 + 48)] = a1 & 1;
      sub_100601130(v11, v8, type metadata accessor for CRLMovieItemAssetData);
      swift_beginAccess();
      sub_100601130(v8, v5, type metadata accessor for CRLMovieItemAssetData);
      CRRegister.wrappedValue.setter();
      sub_100D9D0BC(v8, type metadata accessor for CRLMovieItemAssetData);
      swift_endAccess();

      return sub_100D9D0BC(v11, type metadata accessor for CRLMovieItemAssetData);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100D90D20()
{
  v1 = OBJC_IVAR____TtC8Freeform12CRLMovieItem_spatial;
  LODWORD(v2) = *(v0 + OBJC_IVAR____TtC8Freeform12CRLMovieItem_spatial);
  if (v2 == 2)
  {
    v3 = v0;
    v4 = sub_100D91F80();
    v5 = *(v4 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24);
    v6 = *(v4 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 32);
    sub_100020E58((v4 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage), v5);
    v7 = (*(v6 + 64))(v5, v6);

    if (v7)
    {
      LOBYTE(v2) = *(v3 + v1);
    }

    else
    {
      v8 = sub_100D91F80();
      v9 = *(v8 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24);
      v10 = *(v8 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 32);
      sub_100020E58((v8 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage), v9);
      v11 = (*(v10 + 56))(_swiftEmptyDictionarySingleton, v9, v10);

      v2 = [objc_opt_self() videoAssetIsSpatial:v11];
      *(v3 + v1) = v2;
    }
  }

  return v2 & 1;
}

uint64_t sub_100D91088(double a1)
{
  v3 = type metadata accessor for CRLMovieItemAssetData(0);
  __chkstk_darwin(v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v14 - v7;
  __chkstk_darwin(v9);
  v11 = &v14 - v10;
  result = sub_1011255D0(v12);
  if (result)
  {
    if (**(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_1019F58C8)
    {
      swift_beginAccess();

      sub_1005B981C(&qword_101A28680);
      CRRegister.wrappedValue.getter();
      swift_endAccess();
      *&v11[*(v3 + 24)] = a1;
      sub_100601130(v11, v8, type metadata accessor for CRLMovieItemAssetData);
      swift_beginAccess();
      sub_100601130(v8, v5, type metadata accessor for CRLMovieItemAssetData);
      CRRegister.wrappedValue.setter();
      sub_100D9D0BC(v8, type metadata accessor for CRLMovieItemAssetData);
      swift_endAccess();

      return sub_100D9D0BC(v11, type metadata accessor for CRLMovieItemAssetData);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100D91544(uint64_t a1, float a2)
{
  result = sub_1011255D0(a1);
  if (result)
  {
    v5 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
    if (**(v2 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_1019F58C8)
    {
      swift_beginAccess();
      type metadata accessor for CRLMovieItemCRDTData(0);

      sub_1005B981C(&qword_1019F4B60);
      CRRegister.wrappedValue.getter();
      swift_endAccess();

      if (v6 == a2)
      {
        return result;
      }

      if (**(v2 + v5) == &off_1019F58C8)
      {

        sub_1005FE170(a2);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100D91854(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for CRLMovieItemAssetData(0);
  __chkstk_darwin(v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v17 - v9;
  __chkstk_darwin(v11);
  v13 = &v17 - v12;
  result = sub_1011255D0(v14);
  if (result)
  {
    if (**(v2 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_1019F58C8)
    {
      swift_beginAccess();

      sub_1005B981C(&qword_101A28680);
      CRRegister.wrappedValue.getter();
      swift_endAccess();
      v16 = &v13[*(v5 + 40)];

      *v16 = a1;
      *(v16 + 1) = a2;
      sub_100601130(v13, v10, type metadata accessor for CRLMovieItemAssetData);
      swift_beginAccess();
      sub_100601130(v10, v7, type metadata accessor for CRLMovieItemAssetData);
      CRRegister.wrappedValue.setter();
      sub_100D9D0BC(v10, type metadata accessor for CRLMovieItemAssetData);
      swift_endAccess();

      return sub_100D9D0BC(v13, type metadata accessor for CRLMovieItemAssetData);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
  }

  return result;
}

void sub_100D91C5C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a1;
  a4(v6, v8);
}

uint64_t sub_100D91CE4(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for CRLMovieItemAssetData(0);
  __chkstk_darwin(v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v17 - v9;
  __chkstk_darwin(v11);
  v13 = &v17 - v12;
  result = sub_1011255D0(v14);
  if (result)
  {
    if (**(v2 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_1019F58C8)
    {
      swift_beginAccess();

      sub_1005B981C(&qword_101A28680);
      CRRegister.wrappedValue.getter();
      swift_endAccess();
      v16 = &v13[*(v5 + 44)];

      *v16 = a1;
      *(v16 + 1) = a2;
      sub_100601130(v13, v10, type metadata accessor for CRLMovieItemAssetData);
      swift_beginAccess();
      sub_100601130(v10, v7, type metadata accessor for CRLMovieItemAssetData);
      CRRegister.wrappedValue.setter();
      sub_100D9D0BC(v10, type metadata accessor for CRLMovieItemAssetData);
      swift_endAccess();

      return sub_100D9D0BC(v13, type metadata accessor for CRLMovieItemAssetData);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
  }

  return result;
}

_UNKNOWN ****sub_100D91F80()
{
  v1 = v0;
  v2 = type metadata accessor for CRLMovieItemAssetData(0);
  __chkstk_darwin(v2 - 8);
  v4 = (&v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for CRLAssetData();
  __chkstk_darwin(v5 - 8);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v65 - v9;
  v11 = type metadata accessor for UUID();
  __chkstk_darwin(v11);
  v13 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v65 - v17;
  v19 = OBJC_IVAR____TtC8Freeform12CRLMovieItem__movieAssetAsData;
  v20 = *&v1[OBJC_IVAR____TtC8Freeform12CRLMovieItem__movieAssetAsData];
  if (!v20)
  {
    if (**&v1[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] == &off_1019F58C8)
    {
      swift_beginAccess();

      sub_1005B981C(&qword_101A28680);
      CRRegister.wrappedValue.getter();
      swift_endAccess();

      sub_100601130(v4, v7, type metadata accessor for CRLAssetData);
      sub_100D9D0BC(v4, type metadata accessor for CRLMovieItemAssetData);
      v69 = v1;
      v29 = [v1 store];
      v30 = *&v29[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManagerLock];
      os_unfair_lock_lock(*(v30 + 16));
      v31 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager;
      v32 = *&v29[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager];
      if (v32)
      {
        v33 = *&v29[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager];
      }

      else
      {
        v68 = type metadata accessor for CRLAssetManager();
        v52 = objc_allocWithZone(v68);
        swift_unknownObjectWeakInit();
        v53 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_lock;
        type metadata accessor for CRLUnfairLock();
        v54 = swift_allocObject();
        v67 = v29;
        v55 = swift_slowAlloc();
        *v55 = 0;
        *(v54 + 16) = v55;
        atomic_thread_fence(memory_order_acq_rel);
        *&v52[v53] = v54;
        *&v52[OBJC_IVAR____TtC8Freeform15CRLAssetManager_assets] = _swiftEmptyDictionarySingleton;
        v56 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_owners;
        *&v52[v56] = [objc_opt_self() mapTableWithKeyOptions:517 valueOptions:0];
        *&v52[OBJC_IVAR____TtC8Freeform15CRLAssetManager_garbageCollectionWorkItem] = 0;
        v57 = v67;
        swift_unknownObjectWeakAssign();
        v70.receiver = v52;
        v70.super_class = v68;
        v58 = objc_msgSendSuper2(&v70, "init");

        v59 = *&v29[v31];
        *&v29[v31] = v58;
        v33 = v58;

        v32 = 0;
      }

      v60 = *(v30 + 16);
      v61 = v32;
      os_unfair_lock_unlock(v60);

      v62 = v69;
      v63 = sub_1011255E0(v7, v69, v33);

      sub_100D9D0BC(v7, type metadata accessor for CRLAssetData);
      v51 = *(v62 + v19);
      *(v62 + v19) = v63;
      v28 = v63;
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  v65 = v10;
  v66 = v16;
  v67 = v15;
  v68 = v4;
  v19 = *(v20 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24);
  v21 = *(v20 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 32);
  LODWORD(v10) = sub_100020E58((v20 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage), v19);
  v4 = v1;
  v22 = *(v21 + 24);
  v69 = v20;
  v22(v19, v21);
  v20 = *(v4 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
  if (*v20 != &off_1019F58C8)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  swift_beginAccess();

  sub_1005B981C(&qword_101A28680);
  v23 = v68;
  CRRegister.wrappedValue.getter();
  swift_endAccess();

  v24 = v65;
  sub_100601130(v23, v65, type metadata accessor for CRLAssetData);
  sub_100D9D0BC(v23, type metadata accessor for CRLMovieItemAssetData);
  v26 = v66;
  v25 = v67;
  (*(v66 + 16))(v13, v24, v67);
  sub_100D9D0BC(v24, type metadata accessor for CRLAssetData);
  LOBYTE(v24) = static UUID.== infix(_:_:)();
  v27 = *(v26 + 8);
  v27(v13, v25);
  v27(v18, v25);
  if ((v24 & 1) == 0)
  {
    v20 = objc_opt_self();
    LODWORD(v10) = [v20 _atomicIncrementAssertCount];
    v71 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v71);
    StaticString.description.getter();
    v4 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v34 = String._bridgeToObjectiveC()();

    v35 = [v34 lastPathComponent];

    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v36;

    if (qword_1019F20A0 == -1)
    {
LABEL_9:
      v37 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v10;
      v39 = sub_100006370(0, &qword_1019F4D30);
      *(inited + 96) = v39;
      v40 = sub_1005CF04C();
      *(inited + 104) = v40;
      *(inited + 72) = v4;
      *(inited + 136) = &type metadata for String;
      v41 = sub_1000053B0();
      *(inited + 112) = v18;
      *(inited + 120) = v19;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v41;
      *(inited + 152) = 179;
      v42 = v71;
      *(inited + 216) = v39;
      *(inited + 224) = v40;
      *(inited + 192) = v42;
      v43 = v4;
      v44 = v42;
      v45 = static os_log_type_t.error.getter();
      sub_100005404(v37, &_mh_execute_header, v45, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v46 = static os_log_type_t.error.getter();
      sub_100005404(v37, &_mh_execute_header, v46, "Cached CRLAsset instance has not been updated as expected.", 58, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v47 = swift_allocObject();
      v47[2] = 8;
      v47[3] = 0;
      v47[4] = 0;
      v47[5] = 0;
      v48 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v49 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v50 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v51 = String._bridgeToObjectiveC()();

      [v20 handleFailureInFunction:v49 file:v50 lineNumber:179 isFatal:0 format:v51 args:v48];

      v28 = v69;
LABEL_12:

      return v28;
    }

LABEL_16:
    swift_once();
    goto LABEL_9;
  }

  return v69;
}

char *sub_100D92904()
{
  v1 = type metadata accessor for UUID();
  v58 = *(v1 - 1);
  __chkstk_darwin(v1);
  v3 = &v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CRLMovieItemAssetData(0);
  __chkstk_darwin(v4);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&unk_101A1B880);
  __chkstk_darwin(v7 - 8);
  v9 = &v58 - v8;
  v10 = type metadata accessor for CRLAssetData();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v60 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v0;
  if (**&v0[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] != &off_1019F58C8)
  {
    __break(1u);
    goto LABEL_15;
  }

  swift_beginAccess();

  sub_1005B981C(&qword_101A28680);
  CRRegister.wrappedValue.getter();
  swift_endAccess();

  sub_10000BE14(&v6[*(v4 + 20)], v9, &unk_101A1B880);
  sub_100D9D0BC(v6, type metadata accessor for CRLMovieItemAssetData);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_10000CAAC(v9, &unk_101A1B880);
    return 0;
  }

  v13 = v60;
  sub_1006008F0(v9, v60);
  v14 = OBJC_IVAR____TtC8Freeform12CRLMovieItem__posterImageAssetAsData;
  v15 = v59;
  v9 = *&v59[OBJC_IVAR____TtC8Freeform12CRLMovieItem__posterImageAssetAsData];
  if (v9)
  {
    v16 = *&v9[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24];
    v17 = *&v9[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 32];
    sub_100020E58(&v9[OBJC_IVAR____TtC8Freeform8CRLAsset_storage], v16);
    v18 = *(v17 + 24);
    v19 = v9;
    v18(v16, v17);
    v20 = static UUID.== infix(_:_:)();
    (*(v58 + 1))(v3, v1);
    if (v20)
    {
LABEL_8:
      sub_100D9D0BC(v13, type metadata accessor for CRLAssetData);
      return v9;
    }

    v59 = objc_opt_self();
    LODWORD(v0) = [v59 _atomicIncrementAssertCount];
    v62 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v62);
    StaticString.description.getter();
    v1 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v21 = String._bridgeToObjectiveC()();

    v22 = [v21 lastPathComponent];

    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v23;

    if (qword_1019F20A0 == -1)
    {
LABEL_7:
      v24 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v0;
      v26 = sub_100006370(0, &qword_1019F4D30);
      *(inited + 96) = v26;
      v27 = sub_1005CF04C();
      *(inited + 104) = v27;
      *(inited + 72) = v1;
      *(inited + 136) = &type metadata for String;
      v28 = sub_1000053B0();
      *(inited + 112) = v10;
      *(inited + 120) = v11;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v28;
      *(inited + 152) = 196;
      v29 = v62;
      *(inited + 216) = v26;
      *(inited + 224) = v27;
      *(inited + 192) = v29;
      v30 = v1;
      v31 = v29;
      v32 = static os_log_type_t.error.getter();
      sub_100005404(v24, &_mh_execute_header, v32, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v33 = static os_log_type_t.error.getter();
      sub_100005404(v24, &_mh_execute_header, v33, "Cached CRLAsset instance has not been updated as expected.", 58, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v34 = swift_allocObject();
      v34[2] = 8;
      v34[3] = 0;
      v34[4] = 0;
      v34[5] = 0;
      v35 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v36 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v37 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v38 = String._bridgeToObjectiveC()();

      [v59 handleFailureInFunction:v36 file:v37 lineNumber:196 isFatal:0 format:v38 args:v35];

      v13 = v60;
      goto LABEL_8;
    }

LABEL_15:
    swift_once();
    goto LABEL_7;
  }

  v39 = [v59 store];
  v40 = *&v39[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManagerLock];
  os_unfair_lock_lock(*(v40 + 16));
  v41 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager;
  v42 = *&v39[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager];
  if (v42)
  {
    v43 = *&v39[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager];
  }

  else
  {
    v58 = type metadata accessor for CRLAssetManager();
    v44 = objc_allocWithZone(v58);
    swift_unknownObjectWeakInit();
    v45 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_lock;
    type metadata accessor for CRLUnfairLock();
    v46 = swift_allocObject();
    v47 = v39;
    v48 = swift_slowAlloc();
    *v48 = 0;
    *(v46 + 16) = v48;
    atomic_thread_fence(memory_order_acq_rel);
    *&v44[v45] = v46;
    *&v44[OBJC_IVAR____TtC8Freeform15CRLAssetManager_assets] = _swiftEmptyDictionarySingleton;
    v49 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_owners;
    *&v44[v49] = [objc_opt_self() mapTableWithKeyOptions:517 valueOptions:0];
    *&v44[OBJC_IVAR____TtC8Freeform15CRLAssetManager_garbageCollectionWorkItem] = 0;
    v15 = v59;
    swift_unknownObjectWeakAssign();
    v61.receiver = v44;
    v61.super_class = v58;
    v50 = objc_msgSendSuper2(&v61, "init");

    v51 = *&v39[v41];
    *&v39[v41] = v50;
    v43 = v50;

    v42 = 0;
  }

  v52 = *(v40 + 16);
  v53 = v42;
  os_unfair_lock_unlock(v52);

  v54 = v60;
  v9 = sub_1011255E0(v60, v15, v43);

  sub_100D9D0BC(v54, type metadata accessor for CRLAssetData);
  v55 = *&v15[v14];
  *&v15[v14] = v9;
  v56 = v9;

  return v9;
}

double sub_100D9327C()
{
  v0 = sub_100D92904();
  if (!v0)
  {
    return 0.0;
  }

  v1 = v0;
  v2 = [objc_opt_self() sharedPool];
  v3 = [v2 providerForAsset:v1 shouldValidate:1];

  [v3 naturalSize];
  v5 = v4;

  return v5;
}

void sub_100D93348()
{
  v1 = type metadata accessor for CRLMovieItemAssetData(0);
  __chkstk_darwin(v1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (**(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_1019F58C8)
  {
    swift_beginAccess();

    sub_1005B981C(&qword_101A28680);
    CRRegister.wrappedValue.getter();
    swift_endAccess();

    sub_100D9D0BC(v3, type metadata accessor for CRLMovieItemAssetData);
    v4 = [objc_opt_self() mainBundle];
    v5 = String._bridgeToObjectiveC()();
    v6 = String._bridgeToObjectiveC()();
    v7 = [v4 localizedStringForKey:v5 value:v6 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    __break(1u);
  }
}

id sub_100D93574(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = String._bridgeToObjectiveC()();

  return v5;
}

void sub_100D935E4()
{
  v1 = type metadata accessor for CRLMovieItemAssetData(0);
  __chkstk_darwin(v1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (**(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_1019F58C8)
  {
    swift_beginAccess();

    sub_1005B981C(&qword_101A28680);
    CRRegister.wrappedValue.getter();
    swift_endAccess();

    sub_100D9D0BC(v3, type metadata accessor for CRLMovieItemAssetData);
    v4 = [objc_opt_self() mainBundle];
    v5 = String._bridgeToObjectiveC()();
    v6 = String._bridgeToObjectiveC()();
    v7 = [v4 localizedStringForKey:v5 value:v6 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    __break(1u);
  }
}

void sub_100D937E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v9 = type metadata accessor for CRLBoardItemParentAffinity();
  __chkstk_darwin(v9 - 8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1005B981C(&unk_101A226A0);
  __chkstk_darwin(v12);
  v14 = &v45 - v13;
  v15 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v15 - 8);
  __chkstk_darwin(v16);
  __chkstk_darwin(v17);
  v19 = &v45 - v18;
  __chkstk_darwin(v20);
  __chkstk_darwin(v21);
  v26 = &v45 - v25;
  if (**(v4 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_1019F58C8)
  {
    v46 = v19;
    v47 = a2;
    v48 = v24;
    v49 = v23;
    v50 = v22;
    v51 = v4;

    v27 = sub_1005FC2E0(1);
    v54 = a4;
    v28 = v27;

    v29 = *(*v28 + 736);
    v52 = v6;
    v30 = v28 + v29;
    swift_beginAccess();
    sub_10000BE14(v30, v14, &unk_101A226A0);

    v31 = v11;
    v32 = sub_1005B981C(&qword_101A01F08);
    CRRegister.wrappedValue.getter();
    sub_10000CAAC(v14, &unk_101A226A0);
    sub_10000BE14(v31, v26, &qword_1019F6990);
    v33 = v31;
    v34 = v28;
    sub_100D9D0BC(v33, type metadata accessor for CRLBoardItemParentAffinity);
    v35 = v52;
    sub_1005FDDBC(v54);
    if (v35)
    {

      sub_10000CAAC(v26, &qword_1019F6990);
    }

    else
    {
      v45 = v32;
      v52 = 0;
      v54 = v12;
      v36 = v46;
      sub_10000BE14(v47, v46, &qword_1019F6990);
      v37 = type metadata accessor for UUID();
      v38 = *(v37 - 8);
      v39 = *(v38 + 48);
      if (v39(v36, 1, v37) == 1)
      {
        v40 = v49;
        sub_10000BE14(v26, v49, &qword_1019F6990);
        if (v39(v36, 1, v37) != 1)
        {
          sub_10000CAAC(v36, &qword_1019F6990);
        }
      }

      else
      {
        v40 = v49;
        (*(v38 + 32))(v49, v36, v37);
        (*(v38 + 56))(v40, 0, 1, v37);
      }

      v41 = v50;
      sub_10000BE14(v40, v50, &qword_1019F6990);
      swift_beginAccess();
      v42 = v48;
      sub_10000BE14(v41, v48, &qword_1019F6990);
      v43 = CRRegister.wrappedValue.modify();
      sub_10002C638(v42, v44, &qword_1019F6990);
      v43(v53, 0);
      sub_10000CAAC(v41, &qword_1019F6990);
      swift_endAccess();

      sub_10000CAAC(v40, &qword_1019F6990);
      sub_1011224E8(*(v51 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store), v34);
      sub_10000CAAC(v26, &qword_1019F6990);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100D93D5C(void *a1)
{
  v2 = sub_1005B981C(&unk_101A1B880);
  __chkstk_darwin(v2 - 8);
  v4 = &v15[-v3 - 8];
  v5 = type metadata accessor for CRLAssetData();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v9);
  v11 = &v15[-v10 - 8];
  if ((sub_1011255D0(v12) & 1) != 0 && a1)
  {
    sub_10000630C(a1 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage, v15);
    v13 = a1;
    sub_1005B981C(&qword_1019FF208);
    type metadata accessor for CRLAssetBackedAssetStorage();
    if (swift_dynamicCast())
    {
      sub_100601130(v14 + OBJC_IVAR____TtC8Freeform26CRLAssetBackedAssetStorage_assetData, v8, type metadata accessor for CRLAssetData);

      sub_1006008F0(v8, v11);
      sub_100601130(v11, v4, type metadata accessor for CRLAssetData);
      (*(v6 + 56))(v4, 0, 1, v5);
      sub_100D8F180(v4);

      sub_100D9D0BC(v11, type metadata accessor for CRLAssetData);
    }

    else
    {
      (*(v6 + 56))(v4, 1, 1, v5);
      sub_100D8F180(v4);
    }
  }
}

void sub_100D94028(void *a1, void (*a2)(void, void, void, void), int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, double a9, double a10, double a11)
{
  v134 = a8;
  v135 = a6;
  v136 = a7;
  v137 = a5;
  v133 = a4;
  v132 = a3;
  v131 = a2;
  v16 = type metadata accessor for CRLMovieItemAssetData(0);
  __chkstk_darwin(v16);
  v129 = &v113 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v130 = &v113 - v19;
  __chkstk_darwin(v20);
  v22 = &v113 - v21;
  v23 = sub_1005B981C(&unk_101A1B880);
  __chkstk_darwin(v23 - 8);
  v126 = &v113 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v128 = &v113 - v26;
  __chkstk_darwin(v27);
  v29 = (&v113 - v28);
  __chkstk_darwin(v30);
  v127 = &v113 - v31;
  __chkstk_darwin(v32);
  v34 = &v113 - v33;
  v140 = type metadata accessor for CRLAssetData();
  v35 = *(v140 - 8);
  __chkstk_darwin(v140);
  v125 = &v113 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v139 = &v113 - v38;
  __chkstk_darwin(v39);
  v124 = (&v113 - v40);
  __chkstk_darwin(v41);
  v43 = &v113 - v42;
  __chkstk_darwin(v44);
  v141 = &v113 - v45;
  v138 = v11;
  if (sub_1011255D0(v46))
  {
    v123 = v16;
    if (qword_1019F2878 != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for UUID();
    v48 = sub_1005EB3DC(v47, qword_101AD8F08);
    v49 = *(v47 - 8);
    v50 = v141;
    v121 = *(v49 + 16);
    v122 = v48;
    v120 = v49 + 16;
    v121(v141);
    v51 = v140;
    v52 = (v50 + *(v140 + 20));
    *v52 = 0;
    v52[1] = 0xE000000000000000;
    *(v50 + v51[6]) = _swiftEmptyDictionarySingleton;
    if (!a1)
    {
      goto LABEL_13;
    }

    v116 = v47;
    sub_10000630C(a1 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage, v143);
    v115 = a1;
    sub_1005B981C(&qword_1019FF208);
    type metadata accessor for CRLAssetBackedAssetStorage();
    if (!swift_dynamicCast())
    {
      v114 = v43;
      v117 = v29;
      v118 = v35;
      v119 = v22;
      (*(v35 + 56))(v127, 1, 1, v140);
      v113 = objc_opt_self();
      LODWORD(v29) = [v113 _atomicIncrementAssertCount];
      v143[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v143);
      StaticString.description.getter();
      v51 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v55 = String._bridgeToObjectiveC()();

      v56 = [v55 lastPathComponent];

      v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v59 = v58;

      if (qword_1019F20A0 != -1)
      {
        goto LABEL_26;
      }

      goto LABEL_8;
    }

    v53 = v127;
    sub_100601130(v142 + OBJC_IVAR____TtC8Freeform26CRLAssetBackedAssetStorage_assetData, v127, type metadata accessor for CRLAssetData);

    v51 = v140;
    (*(v35 + 56))(v53, 0, 1, v140);
    v54 = v141;
    while (1)
    {
      sub_10003DFF8(v53, v34, &unk_101A1B880);
      if ((*(v35 + 48))(v34, 1, v51) == 1)
      {

        sub_10000CAAC(v34, &unk_101A1B880);
      }

      else
      {
        sub_100D9D0BC(v54, type metadata accessor for CRLAssetData);
        sub_1006008F0(v34, v43);
        sub_100601130(v43, v54, type metadata accessor for CRLAssetData);
        v75 = v124;
        sub_100601130(v43, v124, type metadata accessor for CRLAssetData);
        sub_100D8EE78(v75);
        v51 = v140;

        sub_100D9D0BC(v43, type metadata accessor for CRLAssetData);
      }

      v47 = v116;
LABEL_13:
      v34 = v139;
      (v121)(v139, v122, v47);
      v76 = &v34[v51[5]];
      *v76 = 0;
      *(v76 + 1) = 0xE000000000000000;
      *&v34[v51[6]] = _swiftEmptyDictionarySingleton;
      v77 = v51;
      v78 = v131;
      if (v131)
      {
        sub_10000630C(v131 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage, v143);
        v51 = v78;
        sub_1005B981C(&qword_1019FF208);
        type metadata accessor for CRLAssetBackedAssetStorage();
        if (swift_dynamicCast())
        {
          v79 = v128;
          sub_100601130(v142 + OBJC_IVAR____TtC8Freeform26CRLAssetBackedAssetStorage_assetData, v128, type metadata accessor for CRLAssetData);

          v77 = v140;
          v131 = *(v35 + 56);
          v131(v79, 0, 1, v140);
        }

        else
        {
          v124 = v51;
          v117 = v29;
          v118 = v35;
          v119 = v22;
          v131 = *(v35 + 56);
          v131(v128, 1, 1, v140);
          v80 = objc_opt_self();
          LODWORD(v127) = [v80 _atomicIncrementAssertCount];
          v143[0] = [objc_allocWithZone(NSString) init];
          sub_100604538(_swiftEmptyArrayStorage, v143);
          StaticString.description.getter();
          v81 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v82 = String._bridgeToObjectiveC()();

          v83 = [v82 lastPathComponent];

          v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v86 = v85;

          if (qword_1019F20A0 != -1)
          {
            swift_once();
          }

          v87 = static OS_os_log.crlAssert;
          sub_1005B981C(&qword_1019F54E0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10146CA70;
          *(inited + 56) = &type metadata for Int32;
          *(inited + 64) = &protocol witness table for Int32;
          *(inited + 32) = v127;
          v89 = sub_100006370(0, &qword_1019F4D30);
          *(inited + 96) = v89;
          v90 = sub_1005CF04C();
          *(inited + 104) = v90;
          *(inited + 72) = v81;
          *(inited + 136) = &type metadata for String;
          v91 = sub_1000053B0();
          *(inited + 112) = v84;
          *(inited + 120) = v86;
          *(inited + 176) = &type metadata for UInt;
          *(inited + 184) = &protocol witness table for UInt;
          *(inited + 144) = v91;
          *(inited + 152) = 265;
          v92 = v143[0];
          *(inited + 216) = v89;
          *(inited + 224) = v90;
          *(inited + 192) = v92;
          v93 = v81;
          v94 = v92;
          v95 = static os_log_type_t.error.getter();
          sub_100005404(v87, &_mh_execute_header, v95, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
          swift_setDeallocating();
          sub_1005B981C(&unk_1019F5670);
          swift_arrayDestroy();
          v96 = static os_log_type_t.error.getter();
          sub_100005404(v87, &_mh_execute_header, v96, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

          type metadata accessor for __VaListBuilder();
          v97 = swift_allocObject();
          v97[2] = 8;
          v97[3] = 0;
          v97[4] = 0;
          v97[5] = 0;
          v98 = __VaListBuilder.va_list()();
          StaticString.description.getter();
          v99 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v100 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v101 = String._bridgeToObjectiveC()();

          [v80 handleFailureInFunction:v99 file:v100 lineNumber:265 isFatal:0 format:v101 args:v98];

          v34 = v139;
          v77 = v140;
          v35 = v118;
          v22 = v119;
          v29 = v117;
          v79 = v128;
          v51 = v124;
        }

        sub_10003DFF8(v79, v29, &unk_101A1B880);
        if ((*(v35 + 48))(v29, 1, v77) == 1)
        {

          sub_10000CAAC(v29, &unk_101A1B880);
        }

        else
        {
          sub_100D9D0BC(v34, type metadata accessor for CRLAssetData);
          v102 = v29;
          v103 = v125;
          sub_1006008F0(v102, v125);
          sub_100601130(v103, v34, type metadata accessor for CRLAssetData);
          v104 = v126;
          sub_100601130(v103, v126, type metadata accessor for CRLAssetData);
          v131(v104, 0, 1, v77);
          sub_100D8F180(v104);

          sub_100D9D0BC(v103, type metadata accessor for CRLAssetData);
        }
      }

      sub_100601130(v141, v22, type metadata accessor for CRLAssetData);
      v29 = v123;
      v105 = v123[5];
      sub_100601130(v34, &v22[v105], type metadata accessor for CRLAssetData);
      (*(v35 + 56))(&v22[v105], 0, 1, v77);
      *&v22[v29[6]] = a9;
      *&v22[v29[7]] = a10;
      *&v22[v29[8]] = a11;
      v22[v29[9]] = v132 & 1;
      v106 = v134 & 1;
      v107 = &v22[v29[10]];
      v59 = v136;
      v57 = v137;
      *v107 = v133;
      *(v107 + 1) = v57;
      v108 = &v22[v29[11]];
      *v108 = v135;
      *(v108 + 1) = v59;
      v22[v29[12]] = v106;
      *&v22[v29[13]] = _swiftEmptyDictionarySingleton;
      v109 = v138;
      if (**(v138 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_1019F58C8)
      {
        break;
      }

      __break(1u);
LABEL_26:
      swift_once();
LABEL_8:
      v60 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      v61 = swift_initStackObject();
      *(v61 + 16) = xmmword_10146CA70;
      *(v61 + 56) = &type metadata for Int32;
      *(v61 + 64) = &protocol witness table for Int32;
      *(v61 + 32) = v29;
      v62 = sub_100006370(0, &qword_1019F4D30);
      *(v61 + 96) = v62;
      v63 = sub_1005CF04C();
      *(v61 + 104) = v63;
      *(v61 + 72) = v51;
      *(v61 + 136) = &type metadata for String;
      v64 = sub_1000053B0();
      *(v61 + 112) = v57;
      *(v61 + 120) = v59;
      *(v61 + 176) = &type metadata for UInt;
      *(v61 + 184) = &protocol witness table for UInt;
      *(v61 + 144) = v64;
      *(v61 + 152) = 259;
      v65 = v143[0];
      *(v61 + 216) = v62;
      *(v61 + 224) = v63;
      *(v61 + 192) = v65;
      v66 = v51;
      v67 = v65;
      v68 = static os_log_type_t.error.getter();
      sub_100005404(v60, &_mh_execute_header, v68, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v61);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v69 = static os_log_type_t.error.getter();
      sub_100005404(v60, &_mh_execute_header, v69, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v70 = swift_allocObject();
      v70[2] = 8;
      v70[3] = 0;
      v70[4] = 0;
      v70[5] = 0;
      v71 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v72 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v73 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v74 = String._bridgeToObjectiveC()();

      [v113 handleFailureInFunction:v72 file:v73 lineNumber:259 isFatal:0 format:v74 args:v71];

      v51 = v140;
      v54 = v141;
      v35 = v118;
      v22 = v119;
      v29 = v117;
      v43 = v114;
      v53 = v127;
    }

    v110 = v130;
    sub_100601130(v22, v130, type metadata accessor for CRLMovieItemAssetData);
    swift_beginAccess();
    sub_100601130(v110, v129, type metadata accessor for CRLMovieItemAssetData);

    sub_1005B981C(&qword_101A28680);
    CRRegister.wrappedValue.setter();
    sub_100D9D0BC(v110, type metadata accessor for CRLMovieItemAssetData);
    swift_endAccess();

    sub_100D9D0BC(v22, type metadata accessor for CRLMovieItemAssetData);
    sub_100D9D0BC(v139, type metadata accessor for CRLAssetData);
    sub_100D9D0BC(v141, type metadata accessor for CRLAssetData);
    v111 = *(v109 + OBJC_IVAR____TtC8Freeform12CRLMovieItem__movieAssetAsData);
    *(v109 + OBJC_IVAR____TtC8Freeform12CRLMovieItem__movieAssetAsData) = 0;

    v112 = *(v109 + OBJC_IVAR____TtC8Freeform12CRLMovieItem__posterImageAssetAsData);
    *(v109 + OBJC_IVAR____TtC8Freeform12CRLMovieItem__posterImageAssetAsData) = 0;

    *(v109 + OBJC_IVAR____TtC8Freeform12CRLMovieItem_spatial) = 2;
  }
}

uint64_t sub_100D953C8(uint64_t result)
{
  if (**(result + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_1019F58C8)
  {
    v1 = result;
    swift_beginAccess();
    type metadata accessor for CRLMovieItemCRDTData(0);
    v2 = v1;

    sub_1005B981C(&qword_1019F4B60);
    CRRegister.wrappedValue.getter();
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100D954D8()
{
  if (**(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_1019F58C8)
  {
    swift_beginAccess();
    type metadata accessor for CRLMovieItemCRDTData(0);

    sub_1005B981C(&qword_1019F4B60);
    CRRegister.wrappedValue.getter();
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

void sub_100D958D8(void *a1)
{
  sub_100B4100C(a1);
  type metadata accessor for CRLMovieItem();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = v3;
    v5 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
    if (**(v3 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_1019F58C8)
    {
      swift_beginAccess();
      type metadata accessor for CRLMovieItemCRDTData(0);
      v9 = a1;

      sub_1005B981C(&unk_101A2C7E0);
      CRRegister.wrappedValue.getter();
      v6 = LODWORD(v10);
      swift_endAccess();

      if (sub_1011255D0(v7))
      {
        if (**(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) != &off_1019F58C8)
        {
LABEL_13:
          __break(1u);
          return;
        }

        if (v11)
        {
          v6 = 1065353216;
        }

        swift_beginAccess();
        v10 = *&v6;

        CRRegister.wrappedValue.setter();
        swift_endAccess();
      }

      if (**(v4 + v5) == &off_1019F58C8)
      {
        swift_beginAccess();

        sub_1005B981C(&qword_1019F4B60);
        CRRegister.wrappedValue.getter();
        swift_endAccess();

        sub_100D91544(v8, v10);

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_13;
  }
}

char *sub_100D95C20()
{
  v1 = type metadata accessor for CRLMovieItemAssetData(0);
  __chkstk_darwin(v1);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_100D92904();
  if (result)
  {
    v5 = *&result[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24];
    v6 = *&result[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 32];
    v7 = result;
    sub_100020E58(&result[OBJC_IVAR____TtC8Freeform8CRLAsset_storage], v5);
    LOBYTE(v5) = (*(v6 + 64))(v5, v6);

    return (v5 & 1);
  }

  else if (**(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_1019F58C8)
  {
    swift_beginAccess();

    sub_1005B981C(&qword_101A28680);
    CRRegister.wrappedValue.getter();
    v8 = v3[*(v1 + 36)];
    swift_endAccess();

    sub_100D9D0BC(v3, type metadata accessor for CRLMovieItemAssetData);
    return ((v8 & 1) == 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100D95E44()
{
  v1 = type metadata accessor for CRLMovieItemAssetData(0);
  __chkstk_darwin(v1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (**(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_1019F58C8)
  {
    swift_beginAccess();

    sub_1005B981C(&qword_101A28680);
    CRRegister.wrappedValue.getter();
    swift_endAccess();

    sub_100D9D0BC(v3, type metadata accessor for CRLMovieItemAssetData);
    v4 = [objc_opt_self() mainBundle];
    v5 = String._bridgeToObjectiveC()();
    v6 = String._bridgeToObjectiveC()();
    v7 = [v4 localizedStringForKey:v5 value:v6 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    __break(1u);
  }
}

void sub_100D96090()
{
  v1 = type metadata accessor for CRLMovieItemAssetData(0);
  __chkstk_darwin(v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (**(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_1019F58C8)
  {
    swift_beginAccess();

    sub_1005B981C(&qword_101A28680);
    CRRegister.wrappedValue.getter();
    v4 = v3[*(v1 + 36)];
    swift_endAccess();

    sub_100D9D0BC(v3, type metadata accessor for CRLMovieItemAssetData);
    if (v4 == 1)
    {
      v5 = &unk_101A1F870;
    }

    else
    {
      v5 = &unk_101A1F868;
    }

    sub_100006370(0, v5);
  }

  else
  {
    __break(1u);
  }
}

void sub_100D96258()
{
  v1 = type metadata accessor for CRLMovieItemAssetData(0);
  __chkstk_darwin(v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (**(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_1019F58C8)
  {
    swift_beginAccess();

    sub_1005B981C(&qword_101A28680);
    CRRegister.wrappedValue.getter();
    v4 = v3[*(v1 + 36)];
    swift_endAccess();

    sub_100D9D0BC(v3, type metadata accessor for CRLMovieItemAssetData);
    if (v4 == 1)
    {
      v5 = &unk_101A1F860;
    }

    else
    {
      v5 = &unk_101A1F858;
    }

    sub_100006370(0, v5);
  }

  else
  {
    __break(1u);
  }
}

void sub_100D96404()
{
  if (**(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_1019F58C8)
  {

    v1 = sub_1005FC2E0(0);

    sub_1011224E8(*(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store), v1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100D964B4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for CRLMovieItemCRDTData(0);
  __chkstk_darwin(v4);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v55 - v8;
  v10 = sub_1005B981C(&qword_101A1F820);
  __chkstk_darwin(v10 - 8);
  v12 = &v55 - v11;
  type metadata accessor for CRLMovieItem();
  v13 = swift_dynamicCastClass();
  if (v13)
  {
    v14 = v13;
    swift_unknownObjectRetain();
    v15 = sub_1011F0C64(v14, v2);
    v16 = *(v2 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
    if (*v16 == &off_1019F58C8)
    {
      v55 = v4;
      v56 = v15;
      v57 = a1;
      v17 = qword_101AD5F20;
      swift_beginAccess();
      sub_100601130(v16 + v17, v9, type metadata accessor for CRLMovieItemCRDTData);
      v18 = *(v14 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
      if (*v18 == &off_1019F58C8)
      {
        v19 = qword_101AD5F20;
        swift_beginAccess();
        sub_100601130(v18 + v19, v6, type metadata accessor for CRLMovieItemCRDTData);
        sub_100D9D074(&qword_1019F5EE8, type metadata accessor for CRLMovieItemCRDTData);
        CRStruct_4.actionUndoingDifference(from:)();
        sub_100D9D0BC(v6, type metadata accessor for CRLMovieItemCRDTData);
        sub_100D9D0BC(v9, type metadata accessor for CRLMovieItemCRDTData);
        v20 = sub_1005B981C(&qword_101A1F828);
        if ((*(*(v20 - 1) + 48))(v12, 1, v20) == 1)
        {
          sub_10000CAAC(v12, &qword_101A1F820);
          memset(v58, 0, sizeof(v58));
          v59 = 1;
        }

        else
        {
          v21 = v20[12];
          v22 = v20[16];
          v23 = v20[20];
          v59 = v20;
          v24 = sub_10002C58C(v58);
          v25 = v20[12];
          v26 = v20[16];
          v27 = v20[20];
          sub_10003DFF8(v12, v24, &qword_101A1F840);
          sub_10003DFF8(&v12[v21], v24 + v25, &qword_101A13F60);
          sub_10003DFF8(&v12[v22], v24 + v26, &qword_101A1F848);
          sub_10003DFF8(&v12[v23], v24 + v27, &qword_101A1F850);
        }

        v28 = v56;
        swift_beginAccess();
        sub_100BC1DF4(v58, 4);
        swift_endAccess();
        swift_unknownObjectRelease();
        return v28;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  v30 = objc_opt_self();
  v31 = [v30 _atomicIncrementAssertCount];
  v58[0] = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, v58);
  StaticString.description.getter();
  v32 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v33 = String._bridgeToObjectiveC()();

  v34 = [v33 lastPathComponent];

  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v38 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v31;
  v40 = sub_100006370(0, &qword_1019F4D30);
  *(inited + 96) = v40;
  v41 = sub_1005CF04C();
  *(inited + 104) = v41;
  *(inited + 72) = v32;
  *(inited + 136) = &type metadata for String;
  v42 = sub_1000053B0();
  *(inited + 112) = v35;
  *(inited + 120) = v37;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v42;
  *(inited + 152) = 381;
  v43 = v58[0];
  *(inited + 216) = v40;
  *(inited + 224) = v41;
  *(inited + 192) = v43;
  v44 = v32;
  v45 = v43;
  v46 = static os_log_type_t.error.getter();
  sub_100005404(v38, &_mh_execute_header, v46, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

  v47 = static os_log_type_t.error.getter();
  sub_100005404(v38, &_mh_execute_header, v47, "Tried to generate undo from mismatched type", 43, 2, _swiftEmptyArrayStorage);

  sub_10063DF98(_swiftEmptyArrayStorage, "Tried to generate undo from mismatched type");
  type metadata accessor for __VaListBuilder();
  v48 = swift_allocObject();
  v48[2] = 8;
  v48[3] = 0;
  v48[4] = 0;
  v48[5] = 0;
  v49 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v50 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v51 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v52 = String._bridgeToObjectiveC()();

  [v30 handleFailureInFunction:v50 file:v51 lineNumber:381 isFatal:1 format:v52 args:v49];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v53, v54);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *sub_100D96C3C(uint64_t a1)
{
  v2 = v1;
  v105 = sub_1005B981C(&qword_101A1F830);
  v103 = *(v105 - 1);
  __chkstk_darwin(v105);
  v5 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v101 = &v97 - v7;
  __chkstk_darwin(v8);
  v99 = &v97 - v9;
  __chkstk_darwin(v10);
  v100 = &v97 - v11;
  __chkstk_darwin(v12);
  v107 = &v97 - v13;
  v102 = type metadata accessor for CRLMovieItemCRDTData(0);
  __chkstk_darwin(v102);
  v15 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v97 - v17;
  v19 = sub_1005B981C(&qword_101A1F838);
  __chkstk_darwin(v19 - 8);
  v21 = &v97 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v106 = &v97 - v23;
  type metadata accessor for CRLMovieItem();
  v24 = swift_dynamicCastClass();
  if (v24)
  {
    v25 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
    v26 = *(v2 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
    v27 = &off_1019F58C8;
    if (*v26 == &off_1019F58C8)
    {
      v28 = v24;
      v98 = v5;
      v104 = a1;
      v29 = qword_101AD5F20;
      swift_beginAccess();
      sub_100601130(v26 + v29, v18, type metadata accessor for CRLMovieItemCRDTData);
      v25 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
      v26 = *(v28 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
      if (*v26 == &off_1019F58C8)
      {
        v30 = qword_101AD5F20;
        swift_beginAccess();
        sub_100601130(v26 + v30, v15, type metadata accessor for CRLMovieItemCRDTData);
        sub_100D9D074(&qword_1019F5E78, type metadata accessor for CRLMovieItemCRDTData);
        swift_unknownObjectRetain();
        v31 = v106;
        CRType.observableDifference(from:)();
        sub_100D9D0BC(v15, type metadata accessor for CRLMovieItemCRDTData);
        sub_100D9D0BC(v18, type metadata accessor for CRLMovieItemCRDTData);
        sub_10000BE14(v31, v21, &qword_101A1F838);
        v26 = v105;
        if ((*(v103 + 48))(v21, 1, v105) == 1)
        {
          sub_10000CAAC(v21, &qword_101A1F838);
          v27 = _swiftEmptyArrayStorage;
          if (!_swiftEmptyArrayStorage[2])
          {
            goto LABEL_33;
          }

          goto LABEL_27;
        }

        v32 = v21;
        v33 = v107;
        sub_10003DFF8(v32, v107, &qword_101A1F830);
        v34 = v100;
        sub_10000BE14(v33, v100, &qword_101A1F830);
        v35 = v26[12];
        v36 = v26[16];
        v37 = v26[20];
        v18 = type metadata accessor for CRValueObservableDifference();
        v38 = *(v18 - 1);
        v102 = *(v38 + 48);
        v103 = v38 + 48;
        if (v102(v34, 1, v18) == 1)
        {
          sub_10000CAAC(v34 + v37, &qword_101A01F00);
          sub_10000CAAC(v34 + v36, &qword_101A01F00);
          sub_10000CAAC(v34 + v35, &qword_101A01F00);
          sub_10000CAAC(v34, &qword_101A01F00);
          v27 = _swiftEmptyArrayStorage;
          v39 = v107;
          v40 = v99;
          goto LABEL_11;
        }

        sub_10000CAAC(v34, &qword_101A01F00);
        sub_10000CAAC(v34 + v37, &qword_101A01F00);
        sub_10000CAAC(v34 + v36, &qword_101A01F00);
        sub_10000CAAC(v34 + v35, &qword_101A01F00);
        v27 = sub_100024CBC(0, 1, 1, _swiftEmptyArrayStorage);
        v15 = *(v27 + 2);
        v25 = *(v27 + 3);
        v21 = (v15 + 1);
        if (v15 < v25 >> 1)
        {
LABEL_10:
          v39 = v107;
          v40 = v99;
          *(v27 + 2) = v21;
          v41 = &v27[16 * v15];
          *(v41 + 4) = 0x737465737361;
          *(v41 + 5) = 0xE600000000000000;
LABEL_11:
          sub_10000BE14(v39, v40, &qword_101A1F830);
          v42 = v26[12];
          v43 = v26[16];
          v44 = v26[20];
          if (v102(v40 + v42, 1, v18) == 1)
          {
            sub_10000CAAC(v40 + v44, &qword_101A01F00);
            sub_10000CAAC(v40 + v43, &qword_101A01F00);
            sub_10000CAAC(v40 + v42, &qword_101A01F00);
            sub_10000CAAC(v40, &qword_101A01F00);
            v45 = v102;
            v46 = v107;
          }

          else
          {
            sub_10000CAAC(v40 + v42, &qword_101A01F00);
            sub_10000CAAC(v40 + v44, &qword_101A01F00);
            sub_10000CAAC(v40 + v43, &qword_101A01F00);
            sub_10000CAAC(v40, &qword_101A01F00);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v27 = sub_100024CBC(0, *(v27 + 2) + 1, 1, v27);
            }

            v45 = v102;
            v46 = v107;
            v48 = *(v27 + 2);
            v47 = *(v27 + 3);
            if (v48 >= v47 >> 1)
            {
              v70 = v107;
              v27 = sub_100024CBC((v47 > 1), v48 + 1, 1, v27);
              v46 = v70;
            }

            *(v27 + 2) = v48 + 1;
            v49 = &v27[16 * v48];
            *(v49 + 4) = 0x656B6F727473;
            *(v49 + 5) = 0xE600000000000000;
          }

          v50 = v101;
          sub_10000BE14(v46, v101, &qword_101A1F830);
          v51 = v26[12];
          v52 = v26[16];
          v53 = v26[20];
          if (v45(v50 + v52, 1, v18) == 1)
          {
            sub_10000CAAC(v50 + v53, &qword_101A01F00);
            sub_10000CAAC(v50 + v52, &qword_101A01F00);
            sub_10000CAAC(v50 + v51, &qword_101A01F00);
            sub_10000CAAC(v50, &qword_101A01F00);
            v31 = v106;
            v54 = v107;
            v55 = v98;
          }

          else
          {
            sub_10000CAAC(v50 + v52, &qword_101A01F00);
            sub_10000CAAC(v50 + v53, &qword_101A01F00);
            sub_10000CAAC(v50 + v51, &qword_101A01F00);
            sub_10000CAAC(v50, &qword_101A01F00);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v27 = sub_100024CBC(0, *(v27 + 2) + 1, 1, v27);
            }

            v31 = v106;
            v54 = v107;
            v55 = v98;
            v57 = *(v27 + 2);
            v56 = *(v27 + 3);
            if (v57 >= v56 >> 1)
            {
              v27 = sub_100024CBC((v56 > 1), v57 + 1, 1, v27);
            }

            *(v27 + 2) = v57 + 1;
            v58 = &v27[16 * v57];
            *(v58 + 4) = 0x656D756C6F76;
            *(v58 + 5) = 0xE600000000000000;
          }

          sub_10000BE14(v54, v55, &qword_101A1F830);
          v59 = v105[12];
          v60 = v54;
          v61 = v105[16];
          v62 = v105[20];
          if (v45(v55 + v62, 1, v18) == 1)
          {
            sub_10000CAAC(v60, &qword_101A1F830);
            sub_10000CAAC(v55 + v62, &qword_101A01F00);
            sub_10000CAAC(v55 + v61, &qword_101A01F00);
            sub_10000CAAC(v55 + v59, &qword_101A01F00);
            sub_10000CAAC(v55, &qword_101A01F00);
            if (!*(v27 + 2))
            {
LABEL_33:
              sub_10000CAAC(v31, &qword_101A1F838);

              swift_unknownObjectRelease();
              return _swiftEmptyDictionarySingleton;
            }
          }

          else
          {
            sub_10000CAAC(v55 + v62, &qword_101A01F00);
            sub_10000CAAC(v55 + v61, &qword_101A01F00);
            sub_10000CAAC(v55 + v59, &qword_101A01F00);
            sub_10000CAAC(v55, &qword_101A01F00);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v27 = sub_100024CBC(0, *(v27 + 2) + 1, 1, v27);
            }

            v65 = v107;
            v67 = *(v27 + 2);
            v66 = *(v27 + 3);
            if (v67 >= v66 >> 1)
            {
              v71 = v107;
              v27 = sub_100024CBC((v66 > 1), v67 + 1, 1, v27);
              v65 = v71;
            }

            sub_10000CAAC(v65, &qword_101A1F830);
            *(v27 + 2) = v67 + 1;
            v68 = &v27[16 * v67];
            *(v68 + 4) = 0x617461446B73616DLL;
            *(v68 + 5) = 0xE800000000000000;
            if (!*(v27 + 2))
            {
              goto LABEL_33;
            }
          }

LABEL_27:
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v108 = _swiftEmptyDictionarySingleton;
          sub_100A9B080(v27, 4, isUniquelyReferenced_nonNull_native);
          swift_unknownObjectRelease();
          v64 = v108;
          sub_10000CAAC(v31, &qword_101A1F838);
          return v64;
        }

LABEL_37:
        v27 = sub_100024CBC((v25 > 1), v21, 1, v27);
        goto LABEL_10;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_37;
  }

  v72 = objc_opt_self();
  v73 = [v72 _atomicIncrementAssertCount];
  v109 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v109);
  StaticString.description.getter();
  v74 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v75 = String._bridgeToObjectiveC()();

  v76 = [v75 lastPathComponent];

  v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v79 = v78;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v80 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v73;
  v82 = sub_100006370(0, &qword_1019F4D30);
  *(inited + 96) = v82;
  v83 = sub_1005CF04C();
  *(inited + 104) = v83;
  *(inited + 72) = v74;
  *(inited + 136) = &type metadata for String;
  v84 = sub_1000053B0();
  *(inited + 112) = v77;
  *(inited + 120) = v79;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v84;
  *(inited + 152) = 393;
  v85 = v109;
  *(inited + 216) = v82;
  *(inited + 224) = v83;
  *(inited + 192) = v85;
  v86 = v74;
  v87 = v85;
  v88 = static os_log_type_t.error.getter();
  sub_100005404(v80, &_mh_execute_header, v88, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

  v89 = static os_log_type_t.error.getter();
  sub_100005404(v80, &_mh_execute_header, v89, "Tried to create observable deltas from mismatched type", 54, 2, _swiftEmptyArrayStorage);

  sub_10063DF98(_swiftEmptyArrayStorage, "Tried to create observable deltas from mismatched type");
  type metadata accessor for __VaListBuilder();
  v90 = swift_allocObject();
  v90[2] = 8;
  v90[3] = 0;
  v90[4] = 0;
  v90[5] = 0;
  v91 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v92 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v93 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v94 = String._bridgeToObjectiveC()();

  [v72 handleFailureInFunction:v92 file:v93 lineNumber:393 isFatal:1 format:v94 args:v91];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v95, v96);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100D97ADC(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  v4 = type metadata accessor for CRLMovieItemCRDTData(0);
  __chkstk_darwin(v4);
  v6 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&qword_101A1F820);
  __chkstk_darwin(v7 - 8);
  v9 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v40 - v11;
  v13 = sub_1005B981C(&qword_101A1F828);
  v41 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = v40 - v14;
  v16 = v89;
  result = sub_1009B611C(a1);
  if (!v16)
  {
    v40[1] = v4;
    v18 = v2;
    v42 = v6;
    v89 = 0;
    v19 = OBJC_IVAR____TtC8Freeform31CRLTransactableUndoingMutations_values;
    swift_beginAccess();
    v20 = *(a1 + v19);
    v21 = v41;
    if (*(v20 + 16))
    {

      v22 = sub_1007C8124(4);
      if (v23)
      {
        sub_10000BE14(*(v20 + 56) + 32 * v22, v60, &unk_1019F4D00);

        v61[0] = v60[0];
        v61[1] = v60[1];
        if (*(&v60[1] + 1))
        {
          v24 = swift_dynamicCast();
          v25 = *(v21 + 56);
          v25(v12, v24 ^ 1u, 1, v13);
          if ((*(v21 + 48))(v12, 1, v13) != 1)
          {
            v26 = v13;
            result = sub_10003DFF8(v12, v15, &qword_101A1F828);
            v40[0] = v18;
            v41 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
            v27 = *(v18 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
            if (*v27 == &off_1019F58C8)
            {
              v28 = qword_101AD5F20;
              swift_beginAccess();
              result = sub_100601130(v27 + v28, v42, type metadata accessor for CRLMovieItemCRDTData);
              if (*v27 == &off_1019F58C8)
              {
                sub_10000BE14(v15, v9, &qword_101A1F828);
                v25(v9, 0, 1, v26);
                swift_beginAccess();
                sub_100D9D074(&qword_1019F5EE8, type metadata accessor for CRLMovieItemCRDTData);

                CRStruct_4.apply(_:)();
                swift_endAccess();

                sub_10000CAAC(v9, &qword_101A1F820);
                sub_1005B981C(&unk_101A0D9D0);
                result = CRRegister.wrappedValue.getter();
                if (**(v40[0] + v41) == &off_1019F58C8)
                {
                  swift_beginAccess();

                  CRRegister.wrappedValue.getter();
                  swift_endAccess();

                  v61[12] = v74;
                  v61[13] = v75;
                  v61[8] = v70;
                  v61[9] = v71;
                  v61[11] = v73;
                  v61[10] = v72;
                  v61[4] = v66;
                  v61[5] = v67;
                  v61[7] = v69;
                  v61[6] = v68;
                  v61[0] = v62;
                  v61[1] = v63;
                  v61[2] = v64;
                  v61[3] = v65;
                  *(&v61[26] + 8) = v77[12];
                  *(&v61[27] + 8) = v77[13];
                  *(&v61[22] + 8) = v77[8];
                  *(&v61[23] + 8) = v77[9];
                  *(&v61[24] + 8) = v77[10];
                  *(&v61[25] + 8) = v77[11];
                  *(&v61[18] + 8) = v77[4];
                  *(&v61[19] + 8) = v77[5];
                  *(&v61[20] + 8) = v77[6];
                  *(&v61[21] + 8) = v77[7];
                  *(&v61[16] + 8) = v77[2];
                  *(&v61[17] + 8) = v77[3];
                  *(&v61[14] + 8) = v77[0];
                  *(&v61[15] + 8) = v77[1];
                  v79[12] = v74;
                  v79[13] = v75;
                  v79[8] = v70;
                  v79[9] = v71;
                  v79[11] = v73;
                  v79[10] = v72;
                  v79[4] = v66;
                  v79[5] = v67;
                  v79[7] = v69;
                  v79[6] = v68;
                  v79[0] = v62;
                  v79[1] = v63;
                  *&v61[14] = v76;
                  *(&v61[28] + 1) = v78;
                  v80 = v76;
                  v79[3] = v65;
                  v79[2] = v64;
                  if (sub_1000C0FB4(v79) == 1)
                  {
                    v60[12] = *(&v61[26] + 8);
                    v60[13] = *(&v61[27] + 8);
                    *&v60[14] = *(&v61[28] + 1);
                    v60[8] = *(&v61[22] + 8);
                    v60[9] = *(&v61[23] + 8);
                    v60[10] = *(&v61[24] + 8);
                    v60[11] = *(&v61[25] + 8);
                    v60[4] = *(&v61[18] + 8);
                    v60[5] = *(&v61[19] + 8);
                    v60[6] = *(&v61[20] + 8);
                    v60[7] = *(&v61[21] + 8);
                    v60[0] = *(&v61[14] + 8);
                    v60[1] = *(&v61[15] + 8);
                    v60[2] = *(&v61[16] + 8);
                    v60[3] = *(&v61[17] + 8);
                    v12 = v15;
                    if (sub_1000C0FB4(v60) == 1)
                    {
                      v57 = v61[12];
                      v58 = v61[13];
                      v59 = *&v61[14];
                      v53 = v61[8];
                      v54 = v61[9];
                      v55 = v61[10];
                      v56 = v61[11];
                      v49 = v61[4];
                      v50 = v61[5];
                      v51 = v61[6];
                      v52 = v61[7];
                      v45 = v61[0];
                      v46 = v61[1];
                      v47 = v61[2];
                      v48 = v61[3];
                      sub_10000CAAC(&v45, &unk_101A106C0);
LABEL_25:
                      v30 = v42;
                      goto LABEL_28;
                    }
                  }

                  else
                  {
                    v60[12] = *(&v61[26] + 8);
                    v60[13] = *(&v61[27] + 8);
                    *&v60[14] = *(&v61[28] + 1);
                    v60[8] = *(&v61[22] + 8);
                    v60[9] = *(&v61[23] + 8);
                    v60[10] = *(&v61[24] + 8);
                    v60[11] = *(&v61[25] + 8);
                    v60[4] = *(&v61[18] + 8);
                    v60[5] = *(&v61[19] + 8);
                    v60[6] = *(&v61[20] + 8);
                    v60[7] = *(&v61[21] + 8);
                    v60[0] = *(&v61[14] + 8);
                    v60[1] = *(&v61[15] + 8);
                    v60[2] = *(&v61[16] + 8);
                    v60[3] = *(&v61[17] + 8);
                    v12 = v15;
                    if (sub_1000C0FB4(v60) != 1)
                    {
                      v43[12] = *(&v61[26] + 8);
                      v43[13] = *(&v61[27] + 8);
                      v43[8] = *(&v61[22] + 8);
                      v43[9] = *(&v61[23] + 8);
                      v43[10] = *(&v61[24] + 8);
                      v43[11] = *(&v61[25] + 8);
                      v43[4] = *(&v61[18] + 8);
                      v43[5] = *(&v61[19] + 8);
                      v43[6] = *(&v61[20] + 8);
                      v43[7] = *(&v61[21] + 8);
                      v43[0] = *(&v61[14] + 8);
                      v43[1] = *(&v61[15] + 8);
                      v43[2] = *(&v61[16] + 8);
                      v43[3] = *(&v61[17] + 8);
                      v87[12] = *(&v61[26] + 8);
                      v87[13] = *(&v61[27] + 8);
                      v87[8] = *(&v61[22] + 8);
                      v87[9] = *(&v61[23] + 8);
                      v87[11] = *(&v61[25] + 8);
                      v87[10] = *(&v61[24] + 8);
                      v87[4] = *(&v61[18] + 8);
                      v87[5] = *(&v61[19] + 8);
                      v87[7] = *(&v61[21] + 8);
                      v87[6] = *(&v61[20] + 8);
                      v87[0] = *(&v61[14] + 8);
                      v87[1] = *(&v61[15] + 8);
                      v44 = *(&v61[28] + 1);
                      v88 = *(&v61[28] + 1);
                      v87[3] = *(&v61[17] + 8);
                      v87[2] = *(&v61[16] + 8);
                      v85[12] = v61[12];
                      v85[13] = v61[13];
                      v86 = *&v61[14];
                      v85[8] = v61[8];
                      v85[9] = v61[9];
                      v85[11] = v61[11];
                      v85[10] = v61[10];
                      v85[4] = v61[4];
                      v85[5] = v61[5];
                      v85[7] = v61[7];
                      v85[6] = v61[6];
                      v85[0] = v61[0];
                      v85[1] = v61[1];
                      v85[3] = v61[3];
                      v85[2] = v61[2];
                      sub_10000BE14(&v62, &v45, &unk_101A106C0);
                      sub_10000BE14(v77, &v45, &unk_101A106C0);
                      v39 = sub_100B93EBC(v85, v87);
                      sub_10000CAAC(v77, &unk_101A106C0);
                      sub_10000CAAC(&v62, &unk_101A106C0);
                      sub_10000CAAC(v43, &unk_101A106C0);
                      v57 = v61[12];
                      v58 = v61[13];
                      v59 = *&v61[14];
                      v53 = v61[8];
                      v54 = v61[9];
                      v55 = v61[10];
                      v56 = v61[11];
                      v49 = v61[4];
                      v50 = v61[5];
                      v51 = v61[6];
                      v52 = v61[7];
                      v45 = v61[0];
                      v46 = v61[1];
                      v47 = v61[2];
                      v48 = v61[3];
                      result = sub_10000CAAC(&v45, &unk_101A106C0);
                      v30 = v42;
                      if (v39)
                      {
                        goto LABEL_28;
                      }

LABEL_20:
                      v31 = v40[0];
                      if (**(v40[0] + v41) == &off_1019F58C8)
                      {
                        swift_beginAccess();

                        CRRegister.wrappedValue.getter();
                        swift_endAccess();

                        v61[12] = v60[12];
                        v61[13] = v60[13];
                        *&v61[14] = *&v60[14];
                        v61[8] = v60[8];
                        v61[9] = v60[9];
                        v61[11] = v60[11];
                        v61[10] = v60[10];
                        v61[4] = v60[4];
                        v61[5] = v60[5];
                        v61[7] = v60[7];
                        v61[6] = v60[6];
                        v61[0] = v60[0];
                        v61[1] = v60[1];
                        v61[2] = v60[2];
                        v61[3] = v60[3];
                        v32 = sub_1000C0FB4(v61);
                        if (v32 != 1)
                        {
                          v81[12] = v61[12];
                          v81[13] = v61[13];
                          v82 = *&v61[14];
                          v81[8] = v61[8];
                          v81[9] = v61[9];
                          v81[11] = v61[11];
                          v81[10] = v61[10];
                          v81[4] = v61[4];
                          v81[5] = v61[5];
                          v81[7] = v61[7];
                          v81[6] = v61[6];
                          v81[0] = v61[0];
                          v81[1] = v61[1];
                          v81[3] = v61[3];
                          v81[2] = v61[2];
                          v38 = sub_100B946C8(v81, 0);
                          sub_10000CAAC(v60, &unk_101A106C0);
                          sub_100D654FC(v38);
                          goto LABEL_28;
                        }

                        if ((sub_1011255D0(v32) & 1) == 0)
                        {
LABEL_28:
                          sub_100D9D0BC(v30, type metadata accessor for CRLMovieItemCRDTData);
                          v29 = &qword_101A1F828;
                          return sub_10000CAAC(v12, v29);
                        }

                        v33 = *(v31 + v41);
                        result = swift_conformsToProtocol2();
                        if (result)
                        {
                          v34 = result;
                          sub_1005D0BD8(&v45);
                          v83[12] = v57;
                          v83[13] = v58;
                          v84 = v59;
                          v83[8] = v53;
                          v83[9] = v54;
                          v83[11] = v56;
                          v83[10] = v55;
                          v83[4] = v49;
                          v83[5] = v50;
                          v83[7] = v52;
                          v83[6] = v51;
                          v83[0] = v45;
                          v83[1] = v46;
                          v83[3] = v48;
                          v83[2] = v47;
                          v35 = *v33;
                          *&v43[0] = v33;
                          v36 = *(v34 + 16);

                          v36(v83, v35, v34);

                          v37 = *(v31 + OBJC_IVAR____TtC8Freeform13CRLStyledItem__stroke);
                          *(v31 + OBJC_IVAR____TtC8Freeform13CRLStyledItem__stroke) = 0;

                          goto LABEL_25;
                        }

LABEL_33:
                        __break(1u);
                        return result;
                      }

LABEL_32:
                      __break(1u);
                      goto LABEL_33;
                    }
                  }

                  v30 = v42;
                  memcpy(v60, v61, sizeof(v60));
                  result = sub_10000CAAC(v60, &qword_1019F5EE0);
                  goto LABEL_20;
                }

LABEL_31:
                __break(1u);
                goto LABEL_32;
              }
            }

            else
            {
              __break(1u);
            }

            __break(1u);
            goto LABEL_31;
          }

LABEL_15:
          v29 = &qword_101A1F820;
          return sub_10000CAAC(v12, v29);
        }

        sub_10000CAAC(v61, &unk_1019F4D00);
      }

      else
      {
      }
    }

    (*(v21 + 56))(v12, 1, 1, v13);
    goto LABEL_15;
  }

  return result;
}

uint64_t sub_100D987EC(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  v5 = v4;
  v208 = a4;
  v213 = a1;
  v197 = sub_1005B981C(&unk_101A01EC0);
  __chkstk_darwin(v197);
  v200 = &v184 - v8;
  v9 = sub_1005B981C(&unk_101A1B880);
  __chkstk_darwin(v9 - 8);
  v190 = &v184 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v202 = &v184 - v12;
  __chkstk_darwin(v13);
  v203 = &v184 - v14;
  v15 = type metadata accessor for CRLMovieItemAssetData(0);
  __chkstk_darwin(v15);
  v189 = &v184 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v195 = &v184 - v18;
  __chkstk_darwin(v19);
  v196 = &v184 - v20;
  __chkstk_darwin(v21);
  v212 = &v184 - v22;
  v207 = type metadata accessor for CRLAssetData();
  v23 = *(v207 - 8);
  __chkstk_darwin(v207);
  v188 = &v184 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v198 = &v184 - v26;
  __chkstk_darwin(v27);
  v199 = &v184 - v28;
  if (a3 == 4)
  {
  }

  else
  {
    v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v30 & 1) == 0)
    {
      v157 = v208;
      swift_getObjectType();
      v158 = v213;

      return sub_1009BE298(v158, a2, a3, v157, v5);
    }
  }

  v209 = v15;
  v32 = v212;
  v31 = v213;
  v215 = *(a2 + 16);
  if (!v215)
  {
    return result;
  }

  v33 = 0;
  v216 = OBJC_IVAR____TtC8Freeform14CRLPropertyMap_data;
  v193 = OBJC_IVAR____TtC8Freeform12CRLMovieItem__posterImageAssetAsData;
  v194 = OBJC_IVAR____TtC8Freeform12CRLMovieItem__movieAssetAsData;
  v214 = a2 + 32;
  v191 = (v23 + 48);
  v192 = OBJC_IVAR____TtC8Freeform12CRLMovieItem_spatial;
  v186 = xmmword_10146C6B0;
  v187 = xmmword_10146CA70;
  v205 = v5;
  while (1)
  {
    v34 = (v214 + 16 * v33);
    v36 = *v34;
    v35 = v34[1];
    v37 = *v34 == 0x656B6F727473 && v35 == 0xE600000000000000;
    if (v37 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v46 = v36 == 0x737465737361 && v35 == 0xE600000000000000;
    if (!v46 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v90 = v36 == 0x656D756C6F76 && v35 == 0xE600000000000000;
      if (v90 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (**(v5 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) != &off_1019F58C8)
        {
          goto LABEL_131;
        }

        swift_beginAccess();
        type metadata accessor for CRLMovieItemCRDTData(0);

        sub_1005B981C(&unk_101A2C7E0);
        CRRegister.wrappedValue.getter();
        v91 = *v218;
        v92 = BYTE4(v218[0]);
        swift_endAccess();

        if (v92)
        {
          v93 = 1.0;
        }

        else
        {
          v93 = v91;
        }

        *(&v220 + 1) = &type metadata for Float;
        *&v219 = v93;
        sub_10000BE14(&v219, v218, &unk_1019F4D00);
        swift_beginAccess();
        sub_100BC1F00(v218, 48);
        goto LABEL_114;
      }

      if (v36 == 0x617461446B73616DLL && v35 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (**(v5 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) != &off_1019F58C8)
        {
          goto LABEL_134;
        }

        swift_beginAccess();
        type metadata accessor for CRLMovieItemCRDTData(0);

        sub_1005B981C(&qword_1019F4B60);
        CRRegister.wrappedValue.getter();
        v109 = v218[0];
        swift_endAccess();

        *(&v220 + 1) = &type metadata for Float;
        LODWORD(v219) = v109;
        sub_10000BE14(&v219, v218, &unk_1019F4D00);
        swift_beginAccess();
        sub_100BC1F00(v218, 49);
        goto LABEL_114;
      }

      sub_1005B981C(&qword_1019F54E0);
      v110 = swift_allocObject();
      *(v110 + 16) = v186;
      *(v110 + 56) = &type metadata for String;
      v111 = sub_1000053B0();
      *(v110 + 32) = v36;
      v210 = v110 + 32;
      v206 = v111;
      *(v110 + 64) = v111;
      *(v110 + 40) = v35;
      v112 = objc_opt_self();

      v184 = v112;
      LODWORD(v211) = [v112 _atomicIncrementAssertCount];
      *&v219 = [objc_allocWithZone(NSString) init];
      v204 = v110;
      sub_100604538(v110, &v219);
      StaticString.description.getter();
      v185 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v113 = String._bridgeToObjectiveC()();

      v114 = [v113 lastPathComponent];

      v115 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v117 = v116;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v118 = static OS_os_log.crlAssert;
      v119 = swift_allocObject();
      *(v119 + 16) = v187;
      *(v119 + 56) = &type metadata for Int32;
      *(v119 + 64) = &protocol witness table for Int32;
      *(v119 + 32) = v211;
      v120 = sub_100006370(0, &qword_1019F4D30);
      *(v119 + 96) = v120;
      v121 = sub_1005CF04C();
      v122 = v185;
      *(v119 + 72) = v185;
      v123 = v206;
      *(v119 + 136) = &type metadata for String;
      *(v119 + 144) = v123;
      *(v119 + 104) = v121;
      *(v119 + 112) = v115;
      *(v119 + 120) = v117;
      *(v119 + 176) = &type metadata for UInt;
      *(v119 + 152) = 466;
      v124 = v219;
      *(v119 + 216) = v120;
      *(v119 + 224) = v121;
      *(v119 + 184) = &protocol witness table for UInt;
      *(v119 + 192) = v124;
      v125 = v122;
      v126 = v124;
      v127 = static os_log_type_t.error.getter();
      sub_100005404(v118, &_mh_execute_header, v127, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v119);
      swift_setDeallocating();
      v185 = sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v128 = static os_log_type_t.error.getter();
      v129 = v118;
      v130 = v204;

      type metadata accessor for __VaListBuilder();
      v131 = swift_allocObject();
      v131[2] = 8;
      v131[3] = 0;
      v132 = v131 + 3;
      v131[4] = 0;
      v131[5] = 0;
      v211 = v131;
      v206 = *(v130 + 16);
      if (!v206)
      {
LABEL_109:
        v204 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v149 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v150 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v151 = String._bridgeToObjectiveC()();

        [v184 handleFailureInFunction:v149 file:v150 lineNumber:466 isFatal:0 format:v151 args:v204];

        swift_setDeallocating();
        swift_arrayDestroy();
        result = swift_deallocClassInstance();
        v31 = v213;
        v5 = v205;
        goto LABEL_7;
      }

      v133 = 0;
      while (2)
      {
        v134 = v130;
        sub_100020E58((v210 + 40 * v133), *(v210 + 40 * v133 + 24));
        v135 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v136 = *v132;
        v137 = *(v135 + 16);
        v70 = __OFADD__(*v132, v137);
        v138 = *v132 + v137;
        if (v70)
        {
          goto LABEL_130;
        }

        v139 = v135;
        v140 = v211;
        v141 = *(v211 + 32);
        if (v141 >= v138)
        {
LABEL_102:
          v143 = *(v140 + 40);
        }

        else
        {
          if (v141 + 0x4000000000000000 < 0)
          {
            goto LABEL_132;
          }

          v142 = *(v211 + 40);
          if (2 * v141 > v138)
          {
            v138 = 2 * v141;
          }

          *(v211 + 32) = v138;
          if ((v138 - 0x1000000000000000) >> 61 != 7)
          {
            goto LABEL_133;
          }

          v143 = swift_slowAlloc();
          *(v211 + 40) = v143;
          if (v142)
          {
            if (v143 != v142 || v143 >= &v142[8 * v136])
            {
              memmove(v143, v142, 8 * v136);
            }

            __VaListBuilder.deallocStorage(wordCount:storage:)();
            v140 = v211;
            goto LABEL_102;
          }
        }

        if (!v143)
        {
          goto LABEL_136;
        }

        v130 = v134;
        v145 = *(v139 + 16);
        v32 = v212;
        if (v145)
        {
          v146 = (v139 + 32);
          v147 = *v132;
          while (1)
          {
            v148 = *v146++;
            *&v143[8 * v147] = v148;
            v147 = *v132 + 1;
            if (__OFADD__(*v132, 1))
            {
              break;
            }

            *v132 = v147;
            if (!--v145)
            {
              goto LABEL_87;
            }
          }

          __break(1u);
          goto LABEL_121;
        }

LABEL_87:

        if (++v133 == v206)
        {
          goto LABEL_109;
        }

        continue;
      }
    }

    type metadata accessor for CRLMovieItem();
    v47 = swift_dynamicCastClass();
    if (!v47)
    {
      goto LABEL_138;
    }

    v48 = v47;
    v49 = *(v5 + v194);
    *(v5 + v194) = 0;
    swift_unknownObjectRetain();

    v50 = *(v5 + v193);
    *(v5 + v193) = 0;

    *(v5 + v192) = 2;
    v210 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
    if (**(v48 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) != &off_1019F58C8)
    {
      goto LABEL_123;
    }

    swift_beginAccess();

    v51 = sub_1005B981C(&qword_101A28680);
    CRRegister.wrappedValue.getter();
    swift_endAccess();

    v52 = v5;
    v53 = v199;
    sub_100601130(v32, v199, type metadata accessor for CRLAssetData);
    sub_100D9D0BC(v32, type metadata accessor for CRLMovieItemAssetData);
    v211 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
    if (**(v52 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) != &off_1019F58C8)
    {
      goto LABEL_124;
    }

    swift_beginAccess();

    CRRegister.wrappedValue.getter();
    swift_endAccess();

    v54 = v198;
    sub_100601130(v32, v198, type metadata accessor for CRLAssetData);
    sub_100D9D0BC(v32, type metadata accessor for CRLMovieItemAssetData);
    if ((static UUID.== infix(_:_:)() & 1) == 0 || ((v55 = *(v207 + 20), v56 = *(v53 + v55), v57 = *(v53 + v55 + 8), v58 = (v54 + v55), v56 != *v58) || v57 != v58[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      sub_100D9D0BC(v54, type metadata accessor for CRLAssetData);
      sub_100D9D0BC(v53, type metadata accessor for CRLAssetData);
LABEL_42:
      *(&v220 + 1) = &type metadata for Bool;
      LOBYTE(v219) = 1;
      sub_10000BE14(&v219, v218, &unk_1019F4D00);
      swift_beginAccess();
      sub_100BC1F00(v218, 19);
      swift_endAccess();
      sub_10000CAAC(&v219, &unk_1019F4D00);
      goto LABEL_43;
    }

    v59 = sub_100B3216C(*(v53 + *(v207 + 24)), *(v54 + *(v207 + 24)));
    sub_100D9D0BC(v54, type metadata accessor for CRLAssetData);
    sub_100D9D0BC(v53, type metadata accessor for CRLAssetData);
    if ((v59 & 1) == 0)
    {
      goto LABEL_42;
    }

LABEL_43:
    v75 = v205;
    if (**(v48 + v210) != &off_1019F58C8)
    {
      goto LABEL_125;
    }

    v204 = v48;
    v201 = v33;
    swift_beginAccess();

    CRRegister.wrappedValue.getter();
    swift_endAccess();

    v76 = v209;
    v77 = v203;
    sub_10000BE14(v32 + *(v209 + 20), v203, &unk_101A1B880);
    sub_100D9D0BC(v32, type metadata accessor for CRLMovieItemAssetData);
    if (**(v75 + v211) != &off_1019F58C8)
    {
      goto LABEL_126;
    }

    swift_beginAccess();

    v206 = v51;
    CRRegister.wrappedValue.getter();
    swift_endAccess();

    v78 = v32 + *(v76 + 20);
    v79 = v202;
    sub_10000BE14(v78, v202, &unk_101A1B880);
    sub_100D9D0BC(v32, type metadata accessor for CRLMovieItemAssetData);
    v80 = *(v197 + 48);
    v81 = v200;
    sub_10000BE14(v77, v200, &unk_101A1B880);
    sub_10000BE14(v79, v81 + v80, &unk_101A1B880);
    v82 = *v191;
    v83 = v207;
    if ((*v191)(v81, 1, v207) != 1)
    {
      v87 = v190;
      sub_10000BE14(v81, v190, &unk_101A1B880);
      if (v82(v81 + v80, 1, v83) == 1)
      {
        sub_10000CAAC(v202, &unk_101A1B880);
        sub_10000CAAC(v203, &unk_101A1B880);
        sub_100D9D0BC(v87, type metadata accessor for CRLAssetData);
        v85 = v204;
        v5 = v205;
LABEL_50:
        v88 = v81;
        v89 = &unk_101A01EC0;
LABEL_68:
        sub_10000CAAC(v88, v89);
        v86 = v209;
      }

      else
      {
        v94 = v81 + v80;
        v95 = v188;
        sub_1006008F0(v94, v188);
        v96 = static UUID.== infix(_:_:)();
        v85 = v204;
        v5 = v205;
        if ((v96 & 1) == 0 || ((v97 = *(v207 + 20), v98 = *(v87 + v97), v99 = *(v87 + v97 + 8), v100 = (v95 + v97), v98 != *v100) || v99 != v100[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          sub_10000CAAC(v202, &unk_101A1B880);
          sub_10000CAAC(v203, &unk_101A1B880);
          sub_100D9D0BC(v95, type metadata accessor for CRLAssetData);
          sub_100D9D0BC(v87, type metadata accessor for CRLAssetData);
          v88 = v200;
          v89 = &unk_101A1B880;
          goto LABEL_68;
        }

        v101 = v95;
        v102 = sub_100B3216C(*(v87 + *(v207 + 24)), *(v95 + *(v207 + 24)));
        sub_10000CAAC(v202, &unk_101A1B880);
        sub_10000CAAC(v203, &unk_101A1B880);
        sub_100D9D0BC(v101, type metadata accessor for CRLAssetData);
        sub_100D9D0BC(v87, type metadata accessor for CRLAssetData);
        v85 = v204;
        sub_10000CAAC(v200, &unk_101A1B880);
        v86 = v209;
        if (v102)
        {
          goto LABEL_70;
        }
      }

      *(&v220 + 1) = &type metadata for Bool;
      LOBYTE(v219) = 1;
      sub_10000BE14(&v219, v218, &unk_1019F4D00);
      swift_beginAccess();
      sub_100BC1F00(v218, 44);
      swift_endAccess();
      sub_10000CAAC(&v219, &unk_1019F4D00);
      goto LABEL_70;
    }

    sub_10000CAAC(v79, &unk_101A1B880);
    sub_10000CAAC(v77, &unk_101A1B880);
    v84 = v82(v81 + v80, 1, v83);
    v85 = v204;
    v5 = v205;
    if (v84 != 1)
    {
      goto LABEL_50;
    }

    sub_10000CAAC(v81, &unk_101A1B880);
    v86 = v209;
LABEL_70:
    if (**(v85 + v210) != &off_1019F58C8)
    {
      goto LABEL_127;
    }

    swift_beginAccess();

    v103 = v196;
    CRRegister.wrappedValue.getter();
    v104 = *(v103 + *(v86 + 48));
    swift_endAccess();

    sub_100D9D0BC(v103, type metadata accessor for CRLMovieItemAssetData);
    if (**(v5 + v211) != &off_1019F58C8)
    {
      goto LABEL_128;
    }

    swift_beginAccess();

    v105 = v195;
    CRRegister.wrappedValue.getter();
    v106 = *(v105 + *(v86 + 48));
    swift_endAccess();

    sub_100D9D0BC(v105, type metadata accessor for CRLMovieItemAssetData);
    if (v106 == 2)
    {
      v32 = v212;
      v31 = v213;
      if (v104)
      {
        goto LABEL_76;
      }
    }

    else
    {
      v32 = v212;
      v31 = v213;
      if ((v106 ^ v104))
      {
LABEL_76:
        v33 = v201;
        if (**(v5 + v211) != &off_1019F58C8)
        {
          goto LABEL_129;
        }

        swift_beginAccess();

        v107 = v189;
        CRRegister.wrappedValue.getter();
        v108 = *(v107 + *(v209 + 48));
        swift_endAccess();

        sub_100D9D0BC(v107, type metadata accessor for CRLMovieItemAssetData);
        *(&v220 + 1) = &type metadata for Bool;
        LOBYTE(v219) = v108 & 1;
        sub_10000BE14(&v219, v218, &unk_1019F4D00);
        swift_beginAccess();
        sub_100BC1F00(v218, 56);
        swift_endAccess();
        swift_unknownObjectRelease();
        goto LABEL_115;
      }
    }

    result = swift_unknownObjectRelease();
    v33 = v201;
LABEL_7:
    if (++v33 == v215)
    {
      return result;
    }
  }

  v38 = OBJC_IVAR____TtC8Freeform13CRLStyledItem__stroke;
  v39 = *(v5 + OBJC_IVAR____TtC8Freeform13CRLStyledItem__stroke);
  if (v39)
  {
    v40 = *(v5 + OBJC_IVAR____TtC8Freeform13CRLStyledItem__stroke);
LABEL_33:
    *(&v220 + 1) = sub_100006370(0, &qword_101A0C7F0);
    *&v219 = v40;
    v62 = v39;
    goto LABEL_34;
  }

  v41 = *(v5 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
  v42 = *v41;
  v43 = swift_conformsToProtocol2();
  if (!v43)
  {
    goto LABEL_135;
  }

  v44 = v43;
  *&v219 = v41;
  v45 = *(v43 + 8);

  v45(v221, v42, v44);
  v235 = v221[12];
  v236 = v221[13];
  v237 = v222;
  v231 = v221[8];
  v232 = v221[9];
  v233 = v221[10];
  v234 = v221[11];
  v227 = v221[4];
  v228 = v221[5];
  v229 = v221[6];
  v230 = v221[7];
  v223 = v221[0];
  v224 = v221[1];
  v225 = v221[2];
  v226 = v221[3];
  if (sub_1000C0FB4(&v223) != 1)
  {
    v238[12] = v235;
    v238[13] = v236;
    v239 = v237;
    v238[8] = v231;
    v238[9] = v232;
    v238[11] = v234;
    v238[10] = v233;
    v238[4] = v227;
    v238[5] = v228;
    v238[6] = v229;
    v238[7] = v230;
    v238[0] = v223;
    v238[1] = v224;
    v238[2] = v225;
    v238[3] = v226;

    v60 = sub_100B946C8(v238, 0);
    sub_10000CAAC(v221, &unk_101A106C0);
    v61 = *(v5 + v38);
    *(v5 + v38) = v60;
    v40 = v60;

    v39 = 0;
    v32 = v212;
    v31 = v213;
    goto LABEL_33;
  }

  v219 = 0u;
  v220 = 0u;
  v32 = v212;
  v31 = v213;
LABEL_34:
  v63 = v216;
  swift_beginAccess();
  sub_10000BE14(&v219, v218, &unk_1019F4D00);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v65 = *(v31 + v63);
  v217 = v65;
  v66 = sub_1007CF108();
  v68 = v65[2];
  v69 = (v67 & 1) == 0;
  v70 = __OFADD__(v68, v69);
  v71 = v68 + v69;
  if (!v70)
  {
    v72 = v67;
    if (v65[3] >= v71)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v152 = v66;
        sub_100AA3EA4();
        v66 = v152;
        v74 = v217;
        if (v72)
        {
          goto LABEL_40;
        }

        goto LABEL_111;
      }
    }

    else
    {
      sub_100A890C0(v71, isUniquelyReferenced_nonNull_native);
      v66 = sub_1007CF108();
      if ((v72 & 1) != (v73 & 1))
      {
        goto LABEL_137;
      }
    }

    v74 = v217;
    if (v72)
    {
LABEL_40:
      sub_10002C638(v218, v74[7] + 32 * v66, &unk_1019F4D00);
LABEL_113:
      *(v31 + v216) = v74;
LABEL_114:
      swift_endAccess();
LABEL_115:
      result = sub_10000CAAC(&v219, &unk_1019F4D00);
      goto LABEL_7;
    }

LABEL_111:
    v74[(v66 >> 6) + 8] |= 1 << v66;
    *(v74[6] + 8 * v66) = 16;
    v153 = (v74[7] + 32 * v66);
    v154 = v218[1];
    *v153 = v218[0];
    v153[1] = v154;
    v155 = v74[2];
    v70 = __OFADD__(v155, 1);
    v156 = v155 + 1;
    if (v70)
    {
      goto LABEL_122;
    }

    v74[2] = v156;
    goto LABEL_113;
  }

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
LABEL_137:
  type metadata accessor for CRLChangeProperty(0);
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_138:
  v159 = objc_opt_self();

  v160 = [v159 _atomicIncrementAssertCount];
  *&v219 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v219);
  StaticString.description.getter();
  v161 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v162 = String._bridgeToObjectiveC()();

  v163 = [v162 lastPathComponent];

  v164 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v166 = v165;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v167 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  v168 = swift_allocObject();
  *(v168 + 16) = v187;
  *(v168 + 56) = &type metadata for Int32;
  *(v168 + 64) = &protocol witness table for Int32;
  *(v168 + 32) = v160;
  v169 = sub_100006370(0, &qword_1019F4D30);
  *(v168 + 96) = v169;
  v170 = sub_1005CF04C();
  *(v168 + 104) = v170;
  *(v168 + 72) = v161;
  *(v168 + 136) = &type metadata for String;
  v171 = sub_1000053B0();
  *(v168 + 112) = v164;
  *(v168 + 120) = v166;
  *(v168 + 176) = &type metadata for UInt;
  *(v168 + 144) = v171;
  *(v168 + 152) = 446;
  v172 = v219;
  *(v168 + 216) = v169;
  *(v168 + 224) = v170;
  *(v168 + 184) = &protocol witness table for UInt;
  *(v168 + 192) = v172;
  v173 = v161;
  v174 = v172;
  v175 = static os_log_type_t.error.getter();
  sub_100005404(v167, &_mh_execute_header, v175, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v168);

  v176 = static os_log_type_t.error.getter();
  sub_100005404(v167, &_mh_execute_header, v176, "Snapshot should be a movie item.", 32, 2, _swiftEmptyArrayStorage);

  sub_10063DF98(_swiftEmptyArrayStorage, "Snapshot should be a movie item.");
  type metadata accessor for __VaListBuilder();
  v177 = swift_allocObject();
  v177[2] = 8;
  v177[3] = 0;
  v177[4] = 0;
  v177[5] = 0;
  v178 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v179 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v180 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v181 = String._bridgeToObjectiveC()();

  [v159 handleFailureInFunction:v179 file:v180 lineNumber:446 isFatal:1 format:v181 args:v178];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v182, v183);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

CGContext *sub_100D9AA04()
{
  v1 = v0;
  v2 = *(**&v0[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 296);

  v4 = v2(v3);

  [v4 size];
  v6 = v5;
  v8 = v7;

  if (v6 <= 0.0 || v8 <= 0.0)
  {
    v21 = objc_opt_self();
    v22 = [v21 _atomicIncrementAssertCount];
    v45 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v45);
    StaticString.description.getter();
    v23 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v24 = String._bridgeToObjectiveC()();

    v25 = [v24 lastPathComponent];

    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v29 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v22;
    v31 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v31;
    v32 = sub_1005CF04C();
    *(inited + 104) = v32;
    *(inited + 72) = v23;
    *(inited + 136) = &type metadata for String;
    v33 = sub_1000053B0();
    *(inited + 112) = v26;
    *(inited + 120) = v28;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v33;
    *(inited + 152) = 512;
    v34 = v45;
    *(inited + 216) = v31;
    *(inited + 224) = v32;
    *(inited + 192) = v34;
    v35 = v23;
    v36 = v34;
    v37 = static os_log_type_t.error.getter();
    sub_100005404(v29, &_mh_execute_header, v37, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v38 = static os_log_type_t.error.getter();
    sub_100005404(v29, &_mh_execute_header, v38, "Movie's original size should be nonzero.", 40, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v39 = swift_allocObject();
    v39[2] = 8;
    v39[3] = 0;
    v39[4] = 0;
    v39[5] = 0;
    v40 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v41 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v42 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v43 = String._bridgeToObjectiveC()();

    [v21 handleFailureInFunction:v41 file:v42 lineNumber:512 isFatal:0 format:v43 args:v40];
  }

  else
  {
    result = sub_10050DF80(3, v6, v8);
    if (!result)
    {
      return result;
    }

    v10 = result;
    v11 = [objc_opt_self() blackColor];
    v12 = [v11 CGColor];

    CGContextSetFillColorWithColor(v10, v12);
    v46.origin.x = sub_10011ECB4();
    CGContextFillRect(v10, v46);
    Image = CGBitmapContextCreateImage(v10);
    if (Image)
    {
      v14 = Image;
      v15 = sub_1005357BC(Image);
      v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      v19 = objc_allocWithZone(type metadata accessor for CRLPreinsertionAssetWrapper());
      v20 = v1;
      sub_100024E98(v16, v18);
      v44 = sub_100CF051C(v16, v18, 0x6D49726574736F70, 0xEF676E702E656761, v20);
      sub_10002640C(v16, v18);

      return v44;
    }
  }

  return 0;
}

id sub_100D9AFEC()
{
  v0 = sub_1005B981C(&unk_1019F8DB0);
  __chkstk_darwin(v0 - 8);
  v2 = &v16 - v1;
  v3 = type metadata accessor for UTType();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100D91F80();
  v8 = *(v7 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24);
  v9 = *(v7 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 32);
  sub_100020E58((v7 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage), v8);
  (*(v9 + 16))(v8, v9);
  v10 = String._bridgeToObjectiveC()();

  v11 = [v10 crl_pathUTI];

  if (v11)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    UTType.init(_:)();
    if ((*(v4 + 48))(v2, 1, v3) != 1)
    {
      (*(v4 + 32))(v6, v2, v3);
      v12 = objc_opt_self();
      UTType.identifier.getter();
      v13 = String._bridgeToObjectiveC()();

      v14 = [v12 canInitWithDataType:v13];

      (*(v4 + 8))(v6, v3);
      return v14;
    }
  }

  else
  {

    (*(v4 + 56))(v2, 1, 1, v3);
  }

  sub_10000CAAC(v2, &unk_1019F8DB0);
  return 0;
}

void sub_100D9B278()
{
  v1 = v0;
  v2 = type metadata accessor for CRLMovieItemAssetData(0);
  __chkstk_darwin(v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100D91F80();
  v6 = [objc_allocWithZone(CRLAnimatedGIFController) initWithData:v5 delegate:0];

  if (**&v1[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] == &off_1019F58C8)
  {
    swift_beginAccess();

    sub_1005B981C(&qword_101A28680);
    CRRegister.wrappedValue.getter();
    v7 = *&v4[*(v2 + 24)];
    swift_endAccess();

    sub_100D9D0BC(v4, type metadata accessor for CRLMovieItemAssetData);
    v8 = [v6 imageForTime:v7];
    if (v8)
    {
      v9 = v8;
      v10 = sub_1005357BC(v8);
      v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v14 = objc_allocWithZone(type metadata accessor for CRLPreinsertionAssetWrapper());
      v15 = v1;
      sub_100024E98(v11, v13);
      sub_100CF051C(v11, v13, 0x6D49726574736F70, 0xEF676E702E656761, v15);

      sub_10002640C(v11, v13);
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100D9B52C()
{
  v1 = type metadata accessor for CRLMovieItemAssetData(0);
  __chkstk_darwin(v1);
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (sub_100D9AFEC())
  {

    sub_100D9B278();
  }

  else
  {
    v4 = sub_100D91F80();
    v5 = *(v4 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24);
    v6 = *(v4 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 32);
    sub_100020E58((v4 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage), v5);
    v7 = (*(v6 + 56))(_swiftEmptyDictionarySingleton, v5, v6);

    sub_100D905D0([v7 crl_containsTracksWithVisualCharacteristics]);
    if (**(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_1019F58C8)
    {
      swift_beginAccess();

      sub_1005B981C(&qword_101A28680);
      CRRegister.wrappedValue.getter();
      v8 = *&v3[*(v1 + 24)];
      swift_endAccess();

      sub_100D9D0BC(v3, type metadata accessor for CRLMovieItemAssetData);
      sub_100D9B7A4(v7, v8);
    }

    else
    {
      __break(1u);
    }
  }
}

void *sub_100D9B7A4(uint64_t a1, Float64 a2)
{
  v6 = v2;
  v9 = type metadata accessor for CRLMovieItemAssetData(0);
  __chkstk_darwin(v9);
  v11 = v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_allocWithZone(CRLMoviePosterImageGenerator) initWithAsset:a1];
  if (**(v2 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) != &off_1019F58C8)
  {
    goto LABEL_47;
  }

  v3 = v12;
  v76 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  swift_beginAccess();

  v74 = sub_1005B981C(&qword_101A28680);
  CRRegister.wrappedValue.getter();
  v13 = v11[*(v9 + 36)];
  swift_endAccess();

  sub_100D9D0BC(v11, type metadata accessor for CRLMovieItemAssetData);
  v75 = v9;
  if (v13)
  {
    v79.start.value = 0;
    v14 = [v3 copyAssetCoverArtMetadataWithError:&v79];
    value = v79.start.value;
    if (v14)
    {
      v16 = v14;
LABEL_7:
      v23 = value;
      v24 = v16;
      v25 = sub_1005357BC(v24);

      v26 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;

      v29 = objc_allocWithZone(type metadata accessor for CRLPreinsertionAssetWrapper());
      v30 = v6;
      sub_100024E98(v26, v28);
      v31 = sub_100CF051C(v26, v28, 0x6D49726574736F70, 0xEF676E702E656761, v30);

      sub_10002640C(v26, v28);
LABEL_42:

      return v31;
    }

    v32 = v79.start.value;
    v9 = _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  else
  {
    v73 = v6;
    CMTimeMakeWithSeconds(&v79.start, a2, 90000);
    v17 = v79.start.value;
    v18 = v3;
    epoch = v79.start.epoch;
    v20 = *&v79.start.timescale;
    v4 = &kCMTimeZero;
    v5 = kCMTimeZero.value;
    v21 = kCMTimeZero.epoch;
    [a1 duration];
    v77.epoch = v79.start.epoch;
    v78[0].value = kCMTimeZero.value;
    *&v78[0].timescale = *&kCMTimeZero.timescale;
    v78[0].epoch = v21;
    v77.value = v79.start.value;
    *&v77.timescale = *&v79.start.timescale;
    CMTimeRangeMake(&v79, v78, &v77);
    v78[0].value = v17;
    *&v78[0].timescale = v20;
    v78[0].epoch = epoch;
    v3 = v18;
    CMTimeClampToRange(&v77, v78, &v79);
    v78[0].value = 0;
    v79.start = v77;
    v22 = [v18 copyCGImageAtTime:&v79 error:v78];
    value = v78[0].value;
    if (v22)
    {
      v16 = v22;
      v6 = v73;
      goto LABEL_7;
    }

    v33 = v78[0].value;
    v9 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v6 = v73;
  }

  type metadata accessor for Code(0);
  v79.start.value = -11832;
  swift_errorRetain();
  sub_100D9D074(&qword_1019F3BA8, type metadata accessor for Code);
  v2 = static _ErrorCodeProtocol.~= infix(_:_:)();

  if (v2)
  {

    a1 = *&v6[v76];
    if (*a1 != &off_1019F58C8)
    {
      goto LABEL_48;
    }

    swift_beginAccess();

    CRRegister.wrappedValue.getter();
    v34 = v11[*(v75 + 36)];
    swift_endAccess();

    sub_100D9D0BC(v11, type metadata accessor for CRLMovieItemAssetData);
    if (v34)
    {

      return 0;
    }

    v31 = sub_100D9AA04();
    goto LABEL_42;
  }

  v71[0] = 0;
  v74 = v3;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v73 = v9;
  v9 = inited;
  swift_getErrorValue();
  v36 = Error.localizedDescription.getter();
  v38 = v37;
  v3 = &type metadata for String;
  *(v9 + 56) = &type metadata for String;
  v39 = sub_1000053B0();
  *(v9 + 32) = v36;
  v75 = v39;
  v76 = v9 + 32;
  *(v9 + 64) = v39;
  *(v9 + 40) = v38;
  v72 = objc_opt_self();
  LODWORD(a1) = [v72 _atomicIncrementAssertCount];
  v79.start.value = [objc_allocWithZone(NSString) init];
  sub_100604538(v9, &v79);
  StaticString.description.getter();
  v5 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v40 = String._bridgeToObjectiveC()();

  v41 = [v40 lastPathComponent];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v42;

  if (qword_1019F20A0 != -1)
  {
    goto LABEL_49;
  }

LABEL_15:
  v43 = static OS_os_log.crlAssert;
  v44 = swift_initStackObject();
  *(v44 + 16) = xmmword_10146CA70;
  *(v44 + 56) = &type metadata for Int32;
  *(v44 + 64) = &protocol witness table for Int32;
  *(v44 + 32) = a1;
  v45 = sub_100006370(0, &qword_1019F4D30);
  *(v44 + 96) = v45;
  v46 = sub_1005CF04C();
  *(v44 + 72) = v5;
  v47 = v75;
  *(v44 + 136) = v3;
  *(v44 + 144) = v47;
  *(v44 + 104) = v46;
  *(v44 + 112) = v4;
  *(v44 + 120) = v2;
  *(v44 + 176) = &type metadata for UInt;
  *(v44 + 184) = &protocol witness table for UInt;
  *(v44 + 152) = 578;
  v48 = v79.start.value;
  *(v44 + 216) = v45;
  *(v44 + 224) = v46;
  *(v44 + 192) = v48;
  v49 = v5;
  v50 = v48;
  v51 = static os_log_type_t.error.getter();
  sub_100005404(v43, &_mh_execute_header, v51, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v44);
  swift_setDeallocating();
  v71[1] = sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v52 = static os_log_type_t.error.getter();
  sub_100005404(v43, &_mh_execute_header, v52, "unexpected error occurred trying to generate poster image: %@", 61, 2, v9);

  type metadata accessor for __VaListBuilder();
  v5 = swift_allocObject();
  v5[2] = 8;
  v5[3] = 0;
  v53 = v5 + 3;
  v5[4] = 0;
  v5[5] = 0;
  v75 = v9;
  v4 = *(v9 + 16);
  if (v4)
  {
    v3 = 0;
    v9 = 40;
    while (1)
    {
      v2 = sub_100020E58((v76 + 40 * v3), *(v76 + 40 * v3 + 24));
      v54 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      a1 = *v53;
      v55 = *(v54 + 16);
      v56 = __OFADD__(*v53, v55);
      v57 = *v53 + v55;
      if (v56)
      {
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        swift_once();
        goto LABEL_15;
      }

      v58 = v54;
      v2 = v5[4];
      if (v2 >= v57)
      {
        goto LABEL_32;
      }

      if (v2 + 0x4000000000000000 < 0)
      {
        goto LABEL_45;
      }

      v59 = v5[5];
      if (2 * v2 > v57)
      {
        v57 = 2 * v2;
      }

      v5[4] = v57;
      if ((v57 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_46;
      }

      v60 = swift_slowAlloc();
      v5[5] = v60;
      if (v59)
      {
        break;
      }

LABEL_33:
      if (!v60)
      {
        __break(1u);
      }

      v62 = *(v58 + 16);
      if (v62)
      {
        v63 = (v58 + 32);
        v64 = *v53;
        while (1)
        {
          v65 = *v63++;
          *&v60[8 * v64] = v65;
          v64 = *v53 + 1;
          if (__OFADD__(*v53, 1))
          {
            break;
          }

          *v53 = v64;
          if (!--v62)
          {
            goto LABEL_17;
          }
        }

        __break(1u);
        goto LABEL_44;
      }

LABEL_17:

      v3 = (v3 + 1);
      if (v3 == v4)
      {
        goto LABEL_39;
      }
    }

    if (v60 != v59 || v60 >= &v59[8 * a1])
    {
      memmove(v60, v59, 8 * a1);
    }

    v2 = v5;
    __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_32:
    v60 = v5[5];
    goto LABEL_33;
  }

LABEL_39:
  v66 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v67 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v68 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v69 = String._bridgeToObjectiveC()();

  [v72 handleFailureInFunction:v67 file:v68 lineNumber:578 isFatal:0 format:v69 args:v66];

  swift_setDeallocating();
  swift_arrayDestroy();

  return 0;
}

void *sub_100D9C288()
{
  v1 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v1 - 8);
  v45 = &v41 - v2;
  v3 = type metadata accessor for URL();
  v43 = *(v3 - 8);
  v44 = v3;
  __chkstk_darwin(v3);
  v42 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1005B981C(&unk_101A1B880);
  __chkstk_darwin(v5 - 8);
  v7 = &v41 - v6;
  v8 = type metadata accessor for CRLAssetData();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1005B981C(&unk_1019F8DB0);
  __chkstk_darwin(v12 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for UTType();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v0;
  type metadata accessor for CRLMovieItem();
  sub_100D9CEE0(v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    v19 = &unk_101A1B880;
    v20 = v7;
LABEL_8:
    sub_10000CAAC(v20, v19);
    (*(v16 + 56))(v14, 1, 1, v15);
    goto LABEL_10;
  }

  sub_1006008F0(v7, v11);
  v21 = *(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store);
  v22 = *&v21[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManagerLock];
  v23 = *(v22 + 16);
  v24 = v21;
  os_unfair_lock_lock(v23);
  v25 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager;
  v26 = *&v24[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
  if (v26)
  {
    v27 = *&v24[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
  }

  else
  {
    v28 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager());
    v29 = v24;
    v30 = sub_10001F1A0(v29);

    v31 = *&v24[v25];
    *&v24[v25] = v30;
    v27 = v30;

    v26 = 0;
  }

  v32 = *(v22 + 16);
  v33 = v26;
  os_unfair_lock_unlock(v32);
  v34 = v45;
  sub_10108CAF4(v11, 0, 3, 0, 0, v45);

  v36 = v43;
  v35 = v44;
  if ((*(v43 + 48))(v34, 1, v44) == 1)
  {
    sub_100D9D0BC(v11, type metadata accessor for CRLAssetData);
    v19 = &unk_1019F33C0;
    v20 = v34;
    goto LABEL_8;
  }

  v37 = v42;
  (*(v36 + 32))(v42, v34, v35);
  sub_1007AC4D0(0, v14);
  (*(v36 + 8))(v37, v35);
  sub_100D9D0BC(v11, type metadata accessor for CRLAssetData);
LABEL_10:
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_10000CAAC(v14, &unk_1019F8DB0);
    return _swiftEmptyArrayStorage;
  }

  else
  {
    (*(v16 + 32))(v18, v14, v15);
    sub_1005B981C(&unk_1019F61D0);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_10146C6B0;
    *(v39 + 32) = UTType.identifier.getter();
    *(v39 + 40) = v40;
    (*(v16 + 8))(v18, v15);
    return v39;
  }
}

void sub_100D9CAA4(uint64_t *a1@<X8>)
{
  v3 = v1;
  v4 = sub_100D652D4();
  if (v4)
  {
    sub_100B965E4(v4, &v14);
    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(&v14, v5);
    __src[12] = v26;
    __src[13] = v27;
    *&__src[14] = v28;
    __src[8] = v22;
    __src[9] = v23;
    __src[10] = v24;
    __src[11] = v25;
    __src[4] = v18;
    __src[5] = v19;
    __src[6] = v20;
    __src[7] = v21;
    __src[0] = v14;
    __src[1] = v15;
    __src[2] = v16;
    __src[3] = v17;
  }

  else
  {
    sub_1005D0BD8(__src);
  }

  v6 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v7 = *(**&v3[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 440);
  v8 = v3;

  v10 = v7(v9);

  if (v10)
  {
    sub_100A72CD4(v10, &v14);
    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(&v14, v11);
  }

  else
  {
    sub_1005D0C00(&v14);
  }

  *(&__src[18] + 8) = v18;
  *(&__src[19] + 8) = v19;
  *(&__src[20] + 8) = v20;
  *(&__src[21] + 8) = v21;
  *(&__src[16] + 8) = v16;
  *(&__src[17] + 8) = v17;
  *(&__src[14] + 8) = v14;
  *(&__src[15] + 8) = v15;
  if (**&v3[v6] == &off_1019F58C8)
  {
    swift_beginAccess();
    type metadata accessor for CRLMovieItemCRDTData(0);

    sub_1005B981C(&qword_1019F4B60);
    CRRegister.wrappedValue.getter();
    v12 = v29;
    swift_endAccess();

    a1[3] = &type metadata for CRLMoviePresetData;
    a1[4] = sub_100B6D470();
    v13 = swift_allocObject();
    *a1 = v13;
    memcpy((v13 + 16), __src, 0x168uLL);
    *(v13 + 376) = v12;
    *(v13 + 384) = _swiftEmptyDictionarySingleton;
    *(v13 + 392) = _swiftEmptyDictionarySingleton;
  }

  else
  {
    __break(1u);
  }
}

void sub_100D9CD70()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform12CRLMovieItem__posterImageAssetAsData);
}

id sub_100D9CDB0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLMovieItem();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CRLMovieItem()
{
  result = qword_101A1F810;
  if (!qword_101A1F810)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100D9CEE0(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CRLMovieItemAssetData(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (**(*v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_1019F58C8)
  {
    swift_beginAccess();

    sub_1005B981C(&qword_101A28680);
    CRRegister.wrappedValue.getter();
    swift_endAccess();

    sub_100601130(v5, a1, type metadata accessor for CRLAssetData);
    sub_100D9D0BC(v5, type metadata accessor for CRLMovieItemAssetData);
    v6 = type metadata accessor for CRLAssetData();
    (*(*(v6 - 8) + 56))(a1, 0, 1, v6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100D9D074(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100D9D0BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100D9D134(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x73616C43657A6973;
  v4 = 0xE900000000000073;
  if (v2 != 1)
  {
    v3 = 0x73746E65746E6F63;
    v4 = 0xED0000656C616353;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 1835365481;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0x73616C43657A6973;
  v8 = 0xE900000000000073;
  if (*a2 != 1)
  {
    v7 = 0x73746E65746E6F63;
    v8 = 0xED0000656C616353;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 1835365481;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_100D9D250()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100D9D2FC()
{
  String.hash(into:)();
}

Swift::Int sub_100D9D394()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100D9D43C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100D9D6E0(*a1);
  *a2 = result;
  return result;
}

void sub_100D9D46C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE900000000000073;
  v5 = 0x73616C43657A6973;
  if (v2 != 1)
  {
    v5 = 0x73746E65746E6F63;
    v4 = 0xED0000656C616353;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1835365481;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_100D9D4D4()
{
  v1 = 0x73616C43657A6973;
  if (*v0 != 1)
  {
    v1 = 0x73746E65746E6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1835365481;
  }
}

unint64_t sub_100D9D538@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100D9D6E0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100D9D560(uint64_t a1)
{
  v2 = sub_1006CDE34();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100D9D59C(uint64_t a1)
{
  v2 = sub_1006CDE34();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100D9D5DC()
{
  result = qword_101A1F880;
  if (!qword_101A1F880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1F880);
  }

  return result;
}

unint64_t sub_100D9D634()
{
  result = qword_101A1F888;
  if (!qword_101A1F888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1F888);
  }

  return result;
}

unint64_t sub_100D9D68C()
{
  result = qword_101A1F890;
  if (!qword_101A1F890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1F890);
  }

  return result;
}

unint64_t sub_100D9D6E0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101877178, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

BOOL sub_100D9D72C()
{
  v0 = sub_100051290();
  v1 = [v0 presentedViewController];

  if (v1)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (!v2)
    {
      v4 = 0;
      goto LABEL_7;
    }

    v3 = [v2 topViewController];

    if (v3)
    {
      type metadata accessor for CRLiOSBoardViewController();
      v4 = swift_dynamicCastClass() != 0;
      v1 = v3;
LABEL_7:

      return v4;
    }
  }

  return 0;
}

void *sub_100D9D7EC(void *a1)
{
  swift_getObjectType();
  if (!swift_conformsToProtocol2() || !a1)
  {
    v3 = [a1 childViewControllers];
    sub_100006370(0, &qword_101A10AB0);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v4 >> 62)
    {
      goto LABEL_20;
    }

    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (1)
    {
      if (!v5)
      {

        return 0;
      }

      if (__OFSUB__(v5--, 1))
      {
        break;
      }

      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_12;
      }

      if ((v5 & 0x8000000000000000) != 0)
      {
        goto LABEL_18;
      }

      if (v5 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_19:
        __break(1u);
LABEL_20:
        v5 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v7 = *(v4 + 32 + 8 * v5);
LABEL_12:
        v8 = v7;
        a1 = sub_100D9D7EC();

        if (a1)
        {

          return a1;
        }
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v2 = a1;
  return a1;
}

void sub_100D9D94C()
{
  v1 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v1 - 8);
  v3 = &v17 - v2;
  v4 = sub_100051290();
  v5 = [v4 presentedViewController];

  if (!v5)
  {
    goto LABEL_6;
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {
    goto LABEL_5;
  }

  v7 = [v6 topViewController];

  if (v7)
  {
    type metadata accessor for CRLiOSBoardViewController();
    v8 = swift_dynamicCastClass();
    v5 = v7;
    if (v8)
    {
      goto LABEL_7;
    }

LABEL_5:
  }

LABEL_6:
  v8 = *&v0[OBJC_IVAR____TtC8Freeform16CRLSceneDelegate____lazy_storage___splitViewController];
LABEL_7:
  v9 = sub_100D9D7EC(v8);
  v11 = v10;

  if (v9)
  {
    v12 = type metadata accessor for TaskPriority();
    (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
    type metadata accessor for MainActor();
    v13 = v9;
    v14 = v0;
    v15 = static MainActor.shared.getter();
    v16 = swift_allocObject();
    v16[2] = v15;
    v16[3] = &protocol witness table for MainActor;
    v16[4] = v13;
    v16[5] = v11;
    v16[6] = v14;
    sub_10064191C(0, 0, v3, &unk_1014B24A0, v16);
  }
}

uint64_t sub_100D9DB3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  type metadata accessor for MainActor();
  v6[7] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[8] = v8;
  v6[9] = v7;

  return _swift_task_switch(sub_100D9DBD8, v8, v7);
}

void sub_100D9DBD8()
{
  v1 = v0[4];
  ObjectType = swift_getObjectType();
  v0[2] = v1;
  v0[10] = ObjectType;
  sub_10005013C();
  v0[11] = v3;
  if (v3)
  {
    v4 = v3;
    v7 = (*(v0[5] + 8) + **(v0[5] + 8));
    v5 = swift_task_alloc();
    v0[12] = v5;
    *v5 = v0;
    v5[1] = sub_100D9DD34;
    v6 = v0[5];

    v7(v4, &off_1018B0AB8, ObjectType, v6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100D9DD34()
{
  v1 = *v0;
  v2 = *(*v0 + 88);

  v3 = *(v1 + 72);
  v4 = *(v1 + 64);

  return _swift_task_switch(sub_100D9DE74, v4, v3);
}

uint64_t sub_100D9DE74()
{
  v1 = v0[10];
  v3 = v0[4];
  v2 = v0[5];

  v0[3] = v3;
  (*(v2 + 16))(v1, v2);
  v4 = v0[1];

  return v4();
}

uint64_t sub_100D9DF08(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  type metadata accessor for MainActor();
  v2[17] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[18] = v4;
  v2[19] = v3;

  return _swift_task_switch(sub_100D9DFA0, v4, v3);
}

uint64_t sub_100D9DFA0()
{
  v1 = sub_100051290();
  v2 = [v1 presentedViewController];

  if (!v2)
  {
    goto LABEL_6;
  }

  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = [v3 topViewController];

  if (v4)
  {
    type metadata accessor for CRLiOSBoardViewController();
    v5 = swift_dynamicCastClass();
    v2 = v4;
    if (v5)
    {
      goto LABEL_7;
    }

LABEL_5:
  }

LABEL_6:
  v5 = *(v0[16] + OBJC_IVAR____TtC8Freeform16CRLSceneDelegate____lazy_storage___splitViewController);
LABEL_7:
  v0[20] = v5;
  v6 = v5;
  v7 = sub_100051290();
  v8 = [v7 presentedViewController];

  v9 = v6;
  if (!v8)
  {
    goto LABEL_26;
  }

  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (!v10)
  {
LABEL_25:

    v9 = v6;
    goto LABEL_26;
  }

  v11 = [v10 topViewController];

  v9 = v6;
  if (!v11)
  {
    goto LABEL_26;
  }

  type metadata accessor for CRLiOSBoardViewController();
  v12 = swift_dynamicCastClass();
  if (!v12)
  {
    v8 = v11;
    goto LABEL_25;
  }

  v13 = v12;

  if (v6 != v13)
  {
    goto LABEL_27;
  }

  v14 = v0[16];
  v15 = OBJC_IVAR____TtC8Freeform16CRLSceneDelegate____lazy_storage___splitViewController;
  v16 = [*(v14 + OBJC_IVAR____TtC8Freeform16CRLSceneDelegate____lazy_storage___splitViewController) presentedViewController];
  if (!v16)
  {
    goto LABEL_27;
  }

  v9 = v16;
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (!v17)
  {
LABEL_26:

    goto LABEL_27;
  }

  v18 = [v17 topViewController];

  if (!v18)
  {
    goto LABEL_27;
  }

  v19 = swift_dynamicCastClass();
  if (!v19)
  {
    v9 = v18;
    goto LABEL_26;
  }

  v20 = *(v19 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_undoAlertController);

  if (v20)
  {
    v21 = [*(v14 + v15) presentedViewController];
    if (!v21)
    {
      goto LABEL_36;
    }

    v22 = v21;
    objc_opt_self();
    v23 = swift_dynamicCastObjCClass();
    if (v23)
    {
      v24 = [v23 topViewController];
      v0[21] = v24;

      if (v24)
      {
        v22 = v24;
        if (swift_dynamicCastClass())
        {
          v25 = swift_task_alloc();
          v0[22] = v25;
          *v25 = v0;
          v25[1] = sub_100D9E480;

          return sub_100664A0C();
        }

        goto LABEL_35;
      }

LABEL_36:
      v29 = swift_task_alloc();
      v0[26] = v29;
      *v29 = v0;
      v29[1] = sub_100D9E7D4;
      v30 = v0[15];

      return sub_100D1C8E8(v30, 1);
    }

LABEL_35:

    goto LABEL_36;
  }

LABEL_27:
  v27 = [v6 presentedViewController];
  v0[23] = v27;
  if (!v27)
  {
    goto LABEL_36;
  }

  v22 = v27;
  sub_100006370(0, &qword_101A1F8E8);
  if (([v22 isKindOfClass:swift_getObjCClassFromMetadata()] & 1) == 0)
  {
    sub_100006370(0, &unk_101A15AF8);
    if (([v22 isKindOfClass:swift_getObjCClassFromMetadata()] & 1) == 0)
    {
      sub_100006370(0, &qword_101A1F8F0);
      if (([v22 isKindOfClass:swift_getObjCClassFromMetadata()] & 1) == 0)
      {
        sub_100006370(0, &qword_101A1F8F8);
        if (![v22 isKindOfClass:swift_getObjCClassFromMetadata()])
        {
          goto LABEL_35;
        }
      }
    }
  }

  v28 = swift_task_alloc();
  v0[24] = v28;
  *v28 = v0;
  v28[1] = sub_100D9E5F4;

  return sub_100D1CCA4(1);
}

uint64_t sub_100D9E480()
{
  v1 = *v0;
  v2 = *(*v0 + 168);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 208) = v4;
  *v4 = v3;
  v4[1] = sub_100D9E7D4;
  v5 = *(v1 + 120);

  return sub_100D1C8E8(v5, 1);
}

uint64_t sub_100D9E5F4()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  v3 = *(v2 + 152);
  v4 = *(v2 + 144);
  if (v0)
  {
    v5 = sub_100D9E97C;
  }

  else
  {
    v5 = sub_100D9E730;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100D9E730()
{
  v1 = swift_task_alloc();
  *(v0 + 208) = v1;
  *v1 = v0;
  v1[1] = sub_100D9E7D4;
  v2 = *(v0 + 120);

  return sub_100D1C8E8(v2, 1);
}

uint64_t sub_100D9E7D4()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  v3 = *(v2 + 152);
  v4 = *(v2 + 144);
  if (v0)
  {
    v5 = sub_100D9EAF8;
  }

  else
  {
    v5 = sub_100D9E910;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100D9E910()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100D9E97C()
{

  if (qword_1019F20A8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 160);
  v2 = static OS_os_log.crlError;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  swift_getErrorValue();
  v4 = Error.localizedDescription.getter();
  v6 = v5;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v4;
  *(inited + 40) = v6;
  v7 = static os_log_type_t.error.getter();
  sub_100005404(v2, &_mh_execute_header, v7, "Caught error trying to present view controller: %@", 50, 2, inited);

  swift_setDeallocating();
  sub_100005070(inited + 32);
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100D9EAF8()
{

  if (qword_1019F20A8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 160);
  v2 = static OS_os_log.crlError;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  swift_getErrorValue();
  v4 = Error.localizedDescription.getter();
  v6 = v5;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v4;
  *(inited + 40) = v6;
  v7 = static os_log_type_t.error.getter();
  sub_100005404(v2, &_mh_execute_header, v7, "Caught error trying to present view controller: %@", 50, 2, inited);

  swift_setDeallocating();
  sub_100005070(inited + 32);
  v8 = *(v0 + 8);

  return v8();
}

id sub_100D9EC6C()
{
  v1 = sub_100051290();
  v2 = [v1 presentedViewController];

  if (v2)
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (!v3)
    {
LABEL_5:

      goto LABEL_6;
    }

    v4 = [v3 topViewController];

    if (v4)
    {
      type metadata accessor for CRLiOSBoardViewController();
      result = swift_dynamicCastClass();
      v2 = v4;
      if (result)
      {
        return result;
      }

      goto LABEL_5;
    }
  }

LABEL_6:
  v6 = *(v0 + OBJC_IVAR____TtC8Freeform16CRLSceneDelegate____lazy_storage___splitViewController);

  return v6;
}

uint64_t sub_100D9ED40(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for MainActor();
  *(v1 + 24) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100D9EDD8, v3, v2);
}

uint64_t sub_100D9EDD8()
{
  v1 = *(v0 + 16);

  [v1 removeFromSuperview];
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100D9EE48(uint64_t a1, char a2)
{
  *(v3 + 336) = a2;
  *(v3 + 144) = a1;
  *(v3 + 152) = v2;
  type metadata accessor for CRLBoardCRDTData(0);
  *(v3 + 160) = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  *(v3 + 168) = v4;
  *(v3 + 176) = *(v4 - 8);
  *(v3 + 184) = swift_task_alloc();
  type metadata accessor for CRLBoardIdentifier(0);
  *(v3 + 192) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v3 + 200) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 208) = v6;
  *(v3 + 216) = v5;

  return _swift_task_switch(sub_100D9EF98, v6, v5);
}

uint64_t sub_100D9EF98()
{
  v1 = sub_100051290();
  v2 = [v1 presentedViewController];
  *(v0 + 224) = v2;

  if (v2)
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    *(v0 + 232) = v3;
    if (v3)
    {
      v4 = [*(*(v0 + 152) + OBJC_IVAR____TtC8Freeform16CRLSceneDelegate____lazy_storage___splitViewController) presentedViewController];
      if (v4)
      {
        v5 = v4;
        objc_opt_self();
        v6 = swift_dynamicCastObjCClass();
        if (!v6)
        {
LABEL_14:

          goto LABEL_15;
        }

        v7 = [v6 topViewController];
        *(v0 + 240) = v7;

        if (v7)
        {
          type metadata accessor for CRLiOSBoardViewController();
          v8 = swift_dynamicCastClass();
          v5 = v7;
          if (v8)
          {
            v56 = v8;
            if (qword_1019F2220 != -1)
            {
              swift_once();
            }

            v9 = *(v0 + 184);
            v10 = *(v0 + 192);
            v11 = *(v0 + 176);
            v54 = *(v0 + 168);
            v12 = *(v0 + 160);
            v13 = *(v0 + 144);
            v55 = static OS_os_log.sceneManagement;
            sub_1005B981C(&qword_1019F54E0);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_10146C6B0;
            v15 = *(*(v13 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
            v16 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
            v17 = *&v15[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
            v18 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
            swift_beginAccess();
            sub_10004FD94(v17 + v18, v12, type metadata accessor for CRLBoardCRDTData);
            v19 = v15;
            sub_1005B981C(&unk_1019F5250);
            CRRegister.wrappedValue.getter();
            sub_10003D63C(v12, type metadata accessor for CRLBoardCRDTData);
            v20 = (*&v15[v16] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
            v21 = *v20;
            v22 = v20[1];

            sub_10084BD4C(v9, v21, v22, v10);

            (*(v11 + 16))(v9, v10, v54);
            sub_10003D63C(v10, type metadata accessor for CRLBoardIdentifier);
            v23 = UUID.uuidString.getter();
            v25 = v24;
            (*(v11 + 8))(v9, v54);
            *(inited + 56) = &type metadata for String;
            *(inited + 64) = sub_1000053B0();
            *(inited + 32) = v23;
            *(inited + 40) = v25;
            v26 = static os_log_type_t.default.getter();
            sub_100005404(v55, &_mh_execute_header, v26, "Tearing down the outgoing board view controller for identifier %{public}@", 73, 2, inited);
            swift_setDeallocating();
            sub_100005070(inited + 32);
            v27 = swift_task_alloc();
            *(v0 + 248) = v27;
            *v27 = v0;
            v27[1] = sub_100D9F6FC;

            return sub_100C0C7FC(v56);
          }

          goto LABEL_14;
        }
      }

LABEL_15:
      v35 = [objc_allocWithZone(UIViewController) initWithNibName:0 bundle:0];
      *(v0 + 256) = v35;
      v36 = [v35 navigationItem];
      *(v0 + 88) = 0u;
      *(v0 + 104) = 0u;
      v37 = String._bridgeToObjectiveC()();
      v38 = *(v0 + 112);
      if (v38)
      {
        v39 = sub_100020E58((v0 + 88), *(v0 + 112));
        v40 = *(v38 - 8);
        v41 = swift_task_alloc();
        (*(v40 + 16))(v41, v39, v38);
        v42 = _bridgeAnythingToObjectiveC<A>(_:)();
        (*(v40 + 8))(v41, v38);

        sub_100005070(v0 + 88);
      }

      else
      {
        v42 = 0;
      }

      v44 = *(v0 + 144);
      v43 = *(v0 + 152);
      v45 = [objc_allocWithZone(UIBarButtonItem) initWithTitle:v37 style:0 target:v42 action:0];
      swift_unknownObjectRelease();

      [v36 setBackBarButtonItem:v45];
      v46 = objc_allocWithZone(UINavigationController);
      v47 = v44;
      v48 = [v46 initWithRootViewController:v47];
      *(v0 + 264) = v48;
      v49 = v48;
      [v49 setModalPresentationStyle:4];
      [v49 setTransitioningDelegate:*(v43 + OBJC_IVAR____TtC8Freeform19CRLiOSSceneDelegate_boardViewControllerTransitioningDelegate)];
      *(v0 + 272) = sub_1005B981C(&unk_1019F4D60);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_10146CE00;
      *(v50 + 32) = v35;
      *(v50 + 40) = v47;
      *(v0 + 280) = sub_100006370(0, &qword_101A10AB0);
      v51 = v35;
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v49 setViewControllers:isa];

      v53 = swift_task_alloc();
      *(v0 + 288) = v53;
      *v53 = v0;
      v53[1] = sub_100D9FB44;
      v33 = *(v0 + 336);
      v34 = v49;
      goto LABEL_19;
    }
  }

  v29 = *(v0 + 152);
  v30 = [objc_allocWithZone(UINavigationController) initWithRootViewController:*(v0 + 144)];
  *(v0 + 304) = v30;
  [v30 setModalPresentationStyle:4];
  [v30 setTransitioningDelegate:*(v29 + OBJC_IVAR____TtC8Freeform19CRLiOSSceneDelegate_boardViewControllerTransitioningDelegate)];
  v31 = *(v29 + OBJC_IVAR____TtC8Freeform16CRLSceneDelegate____lazy_storage___splitViewController);
  *(v0 + 312) = v31;
  v31;
  v32 = swift_task_alloc();
  *(v0 + 320) = v32;
  *v32 = v0;
  v32[1] = sub_100D9FE20;
  v33 = *(v0 + 336);
  v34 = v30;
LABEL_19:

  return sub_100D1C8E8(v34, v33);
}

uint64_t sub_100D9F6FC()
{
  v1 = *v0;

  v2 = *(v1 + 216);
  v3 = *(v1 + 208);

  return _swift_task_switch(sub_100D9F81C, v3, v2);
}

uint64_t sub_100D9F81C()
{
  v1 = [objc_allocWithZone(UIViewController) initWithNibName:0 bundle:0];
  *(v0 + 256) = v1;
  v2 = [v1 navigationItem];
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  v3 = String._bridgeToObjectiveC()();
  v4 = *(v0 + 112);
  if (v4)
  {
    v5 = sub_100020E58((v0 + 88), *(v0 + 112));
    v6 = *(v4 - 8);
    v7 = swift_task_alloc();
    (*(v6 + 16))(v7, v5, v4);
    v8 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v6 + 8))(v7, v4);

    sub_100005070(v0 + 88);
  }

  else
  {
    v8 = 0;
  }

  v10 = *(v0 + 144);
  v9 = *(v0 + 152);
  v11 = [objc_allocWithZone(UIBarButtonItem) initWithTitle:v3 style:0 target:v8 action:0];
  swift_unknownObjectRelease();

  [v2 setBackBarButtonItem:v11];
  v12 = objc_allocWithZone(UINavigationController);
  v13 = v10;
  v14 = [v12 initWithRootViewController:v13];
  *(v0 + 264) = v14;
  v15 = v14;
  [v15 setModalPresentationStyle:4];
  [v15 setTransitioningDelegate:*(v9 + OBJC_IVAR____TtC8Freeform19CRLiOSSceneDelegate_boardViewControllerTransitioningDelegate)];
  *(v0 + 272) = sub_1005B981C(&unk_1019F4D60);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10146CE00;
  *(v16 + 32) = v1;
  *(v16 + 40) = v13;
  *(v0 + 280) = sub_100006370(0, &qword_101A10AB0);
  v17 = v1;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v15 setViewControllers:isa];

  v19 = swift_task_alloc();
  *(v0 + 288) = v19;
  *v19 = v0;
  v19[1] = sub_100D9FB44;
  v20 = *(v0 + 336);

  return sub_100D1C8E8(v15, v20);
}

uint64_t sub_100D9FB44()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {

    v3 = *(v2 + 208);
    v4 = *(v2 + 216);
    v5 = sub_100DA0054;
  }

  else
  {
    v3 = *(v2 + 208);
    v4 = *(v2 + 216);
    v5 = sub_100D9FC60;
  }

  return _swift_task_switch(v5, v3, v4);
}

void sub_100D9FC60()
{
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[29];
  v4 = v0[18];
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_101465920;
  *(v5 + 32) = v2;
  v6 = v2;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v1 setViewControllers:isa];

  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_101465920;
  *(v8 + 32) = v4;
  v9 = v4;
  v10 = Array._bridgeToObjectiveC()().super.isa;

  [v3 setViewControllers:v10];

  v11 = [v1 view];
  if (v11)
  {
    v13 = v0[32];
    v12 = v0[33];
    v14 = v0[28];

    [v11 setHidden:1];

    [v12 dismissViewControllerAnimated:0 completion:0];

    v15 = v0[1];

    v15();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100D9FE20()
{
  v2 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v3 = *(v2 + 208);
    v4 = *(v2 + 216);
    v5 = sub_100DA00F0;
  }

  else
  {

    v3 = *(v2 + 208);
    v4 = *(v2 + 216);
    v5 = sub_100D9FF3C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100D9FF3C()
{

  v1 = sub_100C0B3C0();
  if (v1)
  {
    v2 = v1;
    v3 = OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_isPresentingBoardNavigationController;
    if ((*(v1 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_isPresentingBoardNavigationController) & 1) == 0)
    {
      sub_100070F30();
      sub_100F5E980(1, 3u);

      v4 = *&v2[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_imageCacheObserver];
      if (v4)
      {
        if (*(v4 + 16))
        {

          sub_100F5E980(1, 3u);
        }
      }
    }

    v2[v3] = 1;
  }

  else
  {
    v2 = *(v0 + 304);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100DA0054()
{
  v1 = v0[32];
  v2 = v0[33];
  v3 = v0[28];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100DA00F0()
{
  v1 = v0[38];
  v2 = v0[39];

  v3 = v0[1];

  return v3();
}

void *sub_100DA0184()
{
  [objc_opt_self() crl_phoneUI];
  v0 = String._bridgeToObjectiveC()();
  v1 = objc_opt_self();
  v2 = [v1 systemImageNamed:v0];

  if (v2)
  {
  }

  else
  {
    v3 = String._bridgeToObjectiveC()();

    v2 = [v1 _systemImageNamed:v3];

    if (!v2)
    {
LABEL_14:
      v60 = objc_opt_self();
      v61 = [v60 _atomicIncrementAssertCount];
      v219[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v219);
      StaticString.description.getter();
      v62 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v63 = String._bridgeToObjectiveC()();

      v64 = [v63 lastPathComponent];

      v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v67 = v66;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v68 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v61;
      v70 = sub_100006370(0, &qword_1019F4D30);
      *(inited + 96) = v70;
      v71 = sub_1005CF04C();
      *(inited + 104) = v71;
      *(inited + 72) = v62;
      *(inited + 136) = &type metadata for String;
      v72 = sub_1000053B0();
      *(inited + 112) = v65;
      *(inited + 120) = v67;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v72;
      *(inited + 152) = 195;
      v73 = v219[0];
      *(inited + 216) = v70;
      *(inited + 224) = v71;
      *(inited + 192) = v73;
      v74 = v62;
      v75 = v73;
      v76 = static os_log_type_t.error.getter();
      sub_100005404(v68, &_mh_execute_header, v76, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v77 = static os_log_type_t.error.getter();
      v78 = _swiftEmptyArrayStorage;
      sub_100005404(v68, &_mh_execute_header, v77, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v79 = swift_allocObject();
      v79[2] = 8;
      v79[3] = 0;
      v79[4] = 0;
      v79[5] = 0;
      v80 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v81 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v82 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v83 = String._bridgeToObjectiveC()();

      [v60 handleFailureInFunction:v81 file:v82 lineNumber:195 isFatal:0 format:v83 args:v80];

      goto LABEL_20;
    }
  }

  v217 = objc_opt_self();
  v4 = [v217 systemCyanColor];
  sub_1005B981C(&unk_1019F4D60);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_101465920;
  *(v5 + 32) = v4;
  sub_100006370(0, &qword_101A11110);
  v6 = v4;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v8 = objc_opt_self();
  v9 = [v8 configurationWithPaletteColors:isa];

  v10 = [v8 configurationPreferringMonochrome];
  v11 = [v9 configurationByApplyingConfiguration:v10];

  v12 = v11;
  v13 = [v8 configurationWithScale:2];
  v14 = [v12 configurationByApplyingConfiguration:v13];

  v15 = [v2 imageWithConfiguration:v14];
  if (!v15)
  {
    goto LABEL_14;
  }

  v215 = v15;
  v16 = String._bridgeToObjectiveC()();
  v17 = [v1 systemImageNamed:v16];

  if (!v17 && (v18 = String._bridgeToObjectiveC()(), v17 = [v1 _systemImageNamed:v18], v18, !v17) || (v19 = objc_msgSend(v217, "systemCyanColor"), v20 = swift_allocObject(), *(v20 + 16) = xmmword_101465920, *(v20 + 32) = v19, v21 = v19, v22 = Array._bridgeToObjectiveC()().super.isa, , v23 = objc_msgSend(v8, "configurationWithPaletteColors:", v22), v22, v24 = objc_msgSend(v8, "configurationPreferringMonochrome"), v25 = objc_msgSend(v23, "configurationByApplyingConfiguration:", v24), v23, v24, v26 = v25, v27 = objc_msgSend(v8, "configurationWithScale:", 2), v28 = objc_msgSend(v26, "configurationByApplyingConfiguration:", v27), v27, v26, v29 = objc_msgSend(v17, "imageWithConfiguration:", v28), v17, v28, v21, v26, !v29))
  {
    v84 = objc_opt_self();
    v85 = [v84 _atomicIncrementAssertCount];
    v219[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v219);
    StaticString.description.getter();
    v86 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v87 = String._bridgeToObjectiveC()();

    v88 = [v87 lastPathComponent];

    v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v91 = v90;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v92 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v93 = swift_initStackObject();
    *(v93 + 16) = xmmword_10146CA70;
    *(v93 + 56) = &type metadata for Int32;
    *(v93 + 64) = &protocol witness table for Int32;
    *(v93 + 32) = v85;
    v94 = sub_100006370(0, &qword_1019F4D30);
    *(v93 + 96) = v94;
    v95 = sub_1005CF04C();
    *(v93 + 104) = v95;
    *(v93 + 72) = v86;
    *(v93 + 136) = &type metadata for String;
    v96 = sub_1000053B0();
    *(v93 + 112) = v89;
    *(v93 + 120) = v91;
    *(v93 + 176) = &type metadata for UInt;
    *(v93 + 184) = &protocol witness table for UInt;
    *(v93 + 144) = v96;
    *(v93 + 152) = 196;
    v97 = v219[0];
    *(v93 + 216) = v94;
    *(v93 + 224) = v95;
    *(v93 + 192) = v97;
    v98 = v86;
    v99 = v97;
    v100 = static os_log_type_t.error.getter();
    sub_100005404(v92, &_mh_execute_header, v100, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v93);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v101 = static os_log_type_t.error.getter();
    v78 = _swiftEmptyArrayStorage;
    sub_100005404(v92, &_mh_execute_header, v101, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v102 = swift_allocObject();
    v102[2] = 8;
    v102[3] = 0;
    v102[4] = 0;
    v102[5] = 0;
    v103 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v104 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v82 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v83 = String._bridgeToObjectiveC()();

    [v84 handleFailureInFunction:v104 file:v82 lineNumber:196 isFatal:0 format:v83 args:v103];

LABEL_20:

    return v78;
  }

  v212 = v29;
  v30 = String._bridgeToObjectiveC()();
  v31 = [v1 systemImageNamed:v30];

  if ((v31 || (v32 = String._bridgeToObjectiveC()(), v31 = [v1 _systemImageNamed:v32], v32, v31)) && (v33 = objc_msgSend(v217, "systemCyanColor"), v34 = swift_allocObject(), *(v34 + 16) = xmmword_101465920, *(v34 + 32) = v33, v35 = v33, v36 = Array._bridgeToObjectiveC()().super.isa, , v37 = objc_msgSend(v8, "configurationWithPaletteColors:", v36), v36, v38 = objc_msgSend(v8, "configurationPreferringMonochrome"), v39 = objc_msgSend(v37, "configurationByApplyingConfiguration:", v38), v37, v38, v40 = v39, v41 = objc_msgSend(v8, "configurationWithScale:", 2), v42 = objc_msgSend(v40, "configurationByApplyingConfiguration:", v41), v41, v40, v43 = objc_msgSend(v31, "imageWithConfiguration:", v42), v31, v42, v35, v40, v43))
  {
    v211 = v43;
    v44 = String._bridgeToObjectiveC()();
    v45 = [v1 imageNamed:v44];

    if (v45)
    {
      v46 = [v217 systemCyanColor];
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_101465920;
      *(v47 + 32) = v46;
      v48 = v46;
      v49 = Array._bridgeToObjectiveC()().super.isa;

      v50 = [v8 configurationWithPaletteColors:v49];

      v51 = [v8 configurationPreferringMonochrome];
      v52 = [v50 configurationByApplyingConfiguration:v51];

      v53 = v52;
      v54 = [v8 configurationWithScale:2];
      v55 = [v53 configurationByApplyingConfiguration:v54];

      v56 = [v45 imageWithConfiguration:v55];
      if (v56)
      {
        v218 = v56;
        sub_100DA5C84();
        v57 = [objc_opt_self() mainBundle];
        v58 = String._bridgeToObjectiveC()();
        v59 = String._bridgeToObjectiveC()();
        v149 = [v57 localizedStringForKey:v58 value:v59 table:0];

        v213 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v216 = v150;

        v151 = [objc_opt_self() mainBundle];
        v152 = String._bridgeToObjectiveC()();
        v153 = String._bridgeToObjectiveC()();
        v154 = [v151 localizedStringForKey:v152 value:v153 table:0];

        v155 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v209 = v156;
        v210 = v155;

        v157 = objc_opt_self();
        v158 = [v157 mainBundle];
        v159 = String._bridgeToObjectiveC()();
        v160 = String._bridgeToObjectiveC()();
        v161 = [v158 localizedStringForKey:v159 value:v160 table:0];

        v204 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v208 = v162;

        v163 = [v157 mainBundle];
        v164 = String._bridgeToObjectiveC()();
        v165 = String._bridgeToObjectiveC()();
        v166 = [v163 localizedStringForKey:v164 value:v165 table:0];

        v214 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v207 = v167;

        v168 = [v157 mainBundle];
        v169 = String._bridgeToObjectiveC()();
        v170 = String._bridgeToObjectiveC()();
        v171 = [v168 localizedStringForKey:v169 value:v170 table:0];

        v172 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v205 = v173;
        v206 = v172;

        v174 = [v157 mainBundle];
        v175 = String._bridgeToObjectiveC()();
        v176 = String._bridgeToObjectiveC()();
        v177 = [v174 localizedStringForKey:v175 value:v176 table:0];

        v178 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v180 = v179;

        v181 = [v157 mainBundle];
        v182 = String._bridgeToObjectiveC()();
        v183 = String._bridgeToObjectiveC()();
        v184 = [v181 localizedStringForKey:v182 value:v183 table:0];

        v203 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v186 = v185;

        v187 = [v157 mainBundle];
        v188 = String._bridgeToObjectiveC()();
        v189 = String._bridgeToObjectiveC()();
        v190 = [v187 localizedStringForKey:v188 value:v189 table:0];

        v191 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v193 = v192;

        sub_1005B981C(&qword_101A11D10);
        v78 = swift_allocObject();
        *(v78 + 1) = xmmword_10146C4D0;
        v78[4] = v213;
        v78[5] = v216;
        v78[6] = v206;
        v78[7] = v205;
        v78[8] = v215;
        v78[9] = v210;
        v78[10] = v209;
        v78[11] = v178;
        v78[12] = v180;
        v78[13] = v212;
        v78[14] = v214;
        v78[15] = v207;
        v78[16] = v191;
        v78[17] = v193;
        v78[18] = v218;
        v220 = &type metadata for CRLFeatureFlags;
        v221 = sub_100004D60();
        LOBYTE(v219[0]) = 14;
        v194 = v215;
        v195 = v212;
        v196 = v218;
        LOBYTE(v180) = isFeatureEnabled(_:)();
        sub_100005070(v219);
        if ((v180 & 1) == 0 || (v197 = [type metadata accessor for ImagePlaygroundViewController() available], (v197 & 1) == 0))
        {

          goto LABEL_34;
        }

        v198 = v78[2];
        if (v198 < 2)
        {
          __break(1u);
        }

        else
        {
          v199 = v78[3];
          v197 = v211;
          if (v198 < v199 >> 1)
          {
LABEL_32:
            v219[0] = v204;
            v219[1] = v208;
            v219[2] = v203;
            v220 = v186;
            v221 = v197;
            sub_1006770DC(2, 2, 1, v219);
LABEL_34:

            return v78;
          }
        }

        v201 = v198 + 1;
        v202 = v197;
        v78 = sub_100B38A80(1, v201, 1, v78);
        v197 = v202;
        goto LABEL_32;
      }
    }

    v128 = objc_opt_self();
    v129 = [v128 _atomicIncrementAssertCount];
    v219[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v219);
    StaticString.description.getter();
    v130 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v131 = String._bridgeToObjectiveC()();

    v132 = [v131 lastPathComponent];

    v133 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v135 = v134;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v136 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v137 = swift_allocObject();
    *(v137 + 16) = xmmword_10146CA70;
    *(v137 + 56) = &type metadata for Int32;
    *(v137 + 64) = &protocol witness table for Int32;
    *(v137 + 32) = v129;
    v138 = sub_100006370(0, &qword_1019F4D30);
    *(v137 + 96) = v138;
    v139 = sub_1005CF04C();
    *(v137 + 104) = v139;
    *(v137 + 72) = v130;
    *(v137 + 136) = &type metadata for String;
    v140 = sub_1000053B0();
    *(v137 + 112) = v133;
    *(v137 + 120) = v135;
    *(v137 + 176) = &type metadata for UInt;
    *(v137 + 184) = &protocol witness table for UInt;
    *(v137 + 144) = v140;
    *(v137 + 152) = 198;
    v141 = v219[0];
    *(v137 + 216) = v138;
    *(v137 + 224) = v139;
    *(v137 + 192) = v141;
    v142 = v130;
    v143 = v141;
    v144 = static os_log_type_t.error.getter();
    sub_100005404(v136, &_mh_execute_header, v144, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v137);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v145 = static os_log_type_t.error.getter();
    v78 = _swiftEmptyArrayStorage;
    sub_100005404(v136, &_mh_execute_header, v145, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v146 = swift_allocObject();
    v146[2] = 8;
    v146[3] = 0;
    v146[4] = 0;
    v146[5] = 0;
    v147 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v148 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v126 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v127 = String._bridgeToObjectiveC()();

    [v128 handleFailureInFunction:v148 file:v126 lineNumber:198 isFatal:0 format:v127 args:v147];
  }

  else
  {
    v105 = objc_opt_self();
    v106 = [v105 _atomicIncrementAssertCount];
    v219[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v219);
    StaticString.description.getter();
    v107 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v108 = String._bridgeToObjectiveC()();

    v109 = [v108 lastPathComponent];

    v110 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v112 = v111;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v113 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v114 = swift_initStackObject();
    *(v114 + 16) = xmmword_10146CA70;
    *(v114 + 56) = &type metadata for Int32;
    *(v114 + 64) = &protocol witness table for Int32;
    *(v114 + 32) = v106;
    v115 = sub_100006370(0, &qword_1019F4D30);
    *(v114 + 96) = v115;
    v116 = sub_1005CF04C();
    *(v114 + 104) = v116;
    *(v114 + 72) = v107;
    *(v114 + 136) = &type metadata for String;
    v117 = sub_1000053B0();
    *(v114 + 112) = v110;
    *(v114 + 120) = v112;
    *(v114 + 176) = &type metadata for UInt;
    *(v114 + 184) = &protocol witness table for UInt;
    *(v114 + 144) = v117;
    *(v114 + 152) = 197;
    v118 = v219[0];
    *(v114 + 216) = v115;
    *(v114 + 224) = v116;
    *(v114 + 192) = v118;
    v119 = v107;
    v120 = v118;
    v121 = static os_log_type_t.error.getter();
    sub_100005404(v113, &_mh_execute_header, v121, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v114);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v122 = static os_log_type_t.error.getter();
    v78 = _swiftEmptyArrayStorage;
    sub_100005404(v113, &_mh_execute_header, v122, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v123 = swift_allocObject();
    v123[2] = 8;
    v123[3] = 0;
    v123[4] = 0;
    v123[5] = 0;
    v124 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v125 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v126 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v127 = String._bridgeToObjectiveC()();

    [v105 handleFailureInFunction:v125 file:v126 lineNumber:197 isFatal:0 format:v127 args:v124];
  }

  return v78;
}

id sub_100DA1E34()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLiOSSceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100DA1EC0()
{
  v1 = v0;
  v2 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v2);
  v4 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UUID();
  __chkstk_darwin(v5 - 8);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100051290();
  v12 = [v11 presentedViewController];

  if (v12)
  {
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (v13)
    {
      v14 = [v13 topViewController];

      if (v14)
      {
        type metadata accessor for CRLiOSBoardViewController();
        v15 = swift_dynamicCastClass();
        if (v15)
        {
          v16 = *(*(v15 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
          v51 = v10;
          v17 = v16;

          v18 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
          v19 = *&v17[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
          v20 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
          swift_beginAccess();
          sub_10004FD94(v19 + v20, v4, type metadata accessor for CRLBoardCRDTData);
          sub_1005B981C(&unk_1019F5250);
          CRRegister.wrappedValue.getter();
          sub_10003D63C(v4, type metadata accessor for CRLBoardCRDTData);
          v21 = (*&v17[v18] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
          v22 = *v21;
          v23 = v21[1];

          sub_10084BD4C(v7, v22, v23, v51);
          v24 = *&v17[v18];
          v25 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
          swift_beginAccess();
          sub_10004FD94(v24 + v25, v4, type metadata accessor for CRLBoardCRDTData);
          sub_1005B981C(&qword_101A1A020);
          CRRegister.wrappedValue.getter();
          sub_10003D63C(v4, type metadata accessor for CRLBoardCRDTData);
          v26 = aBlock;
          v27 = v54;
          v28 = *(*&v17[OBJC_IVAR____TtC8Freeform8CRLBoard_shareState] + 16);
          if (v28)
          {
            v29 = v28;
            [v29 copy];
            _bridgeAnyObjectToAny(_:)();

            swift_unknownObjectRelease();
            sub_100006370(0, &qword_1019F52C0);
            if (swift_dynamicCast())
            {
              v30 = v52;
            }

            else
            {
              v30 = 0;
            }
          }

          else
          {
            v30 = 0;
          }

          sub_10005013C();
          if (v31)
          {
            v32 = v31;
            v33 = type metadata accessor for CRLBoardShareItemProviderHelper();
            v34 = v51;
            v35 = sub_100D193E4(v30, v32, v51, v26, v27, 0, 0xF000000000000000);

            v36 = sub_100DA5778(v34, v26, v27, v1, v33);
            sub_1005B981C(&qword_101A1F8E0);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_10146BDE0;
            *(inited + 32) = UIActivityItemsConfigurationMetadataKeyTitle;
            *(inited + 40) = v26;
            *(inited + 48) = v27;
            *(inited + 64) = &type metadata for String;
            *(inited + 72) = UIActivityItemsConfigurationMetadataKeyLinkPresentationMetadata;
            *(inited + 104) = sub_100006370(0, &unk_101A23D30);
            *(inited + 80) = v36;
            v38 = UIActivityItemsConfigurationMetadataKeyTitle;
            v39 = UIActivityItemsConfigurationMetadataKeyLinkPresentationMetadata;
            v40 = v36;
            v41 = sub_100BD93EC(inited);
            swift_setDeallocating();
            sub_1005B981C(&qword_101A14648);
            swift_arrayDestroy();
            sub_1005B981C(&unk_1019F4D60);
            v42 = swift_allocObject();
            *(v42 + 16) = xmmword_101465920;
            *(v42 + 32) = v35;
            v43 = objc_allocWithZone(UIActivityItemsConfiguration);
            sub_100006370(0, &unk_101A23D20);
            v44 = v35;
            isa = Array._bridgeToObjectiveC()().super.isa;

            v46 = [v43 initWithItemProviders:isa];

            v47 = swift_allocObject();
            *(v47 + 16) = v41;
            v57 = sub_100DA6220;
            v58 = v47;
            aBlock = _NSConcreteStackBlock;
            v54 = *"";
            v55 = sub_100DA25D4;
            v56 = &unk_1018A4680;
            v48 = _Block_copy(&aBlock);

            [v46 setMetadataProvider:v48];
            _Block_release(v48);
            type metadata accessor for UIActivityItemsConfigurationInteraction(0);
            v49 = Array._bridgeToObjectiveC()().super.isa;
            [v46 setSupportedInteractions:v49];

            sub_10003D63C(v34, type metadata accessor for CRLBoardIdentifier);
          }

          else
          {
            __break(1u);
          }
        }

        else
        {
        }
      }
    }

    else
    {
    }
  }
}

double sub_100DA2570@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_10006E4C8(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_100064288(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

id sub_100DA25D4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(v13);

  v5 = v14;
  if (v14)
  {
    v6 = sub_100020E58(v13, v14);
    v7 = *(v5 - 8);
    v8 = __chkstk_darwin(v6);
    v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v7 + 8))(v10, v5);
    sub_100005070(v13);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t sub_100DA272C(uint64_t a1)
{
  v2[43] = a1;
  v2[44] = v1;
  type metadata accessor for CRLBoardCRDTData(0);
  v2[45] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v2[46] = v3;
  v2[47] = *(v3 - 8);
  v2[48] = swift_task_alloc();
  type metadata accessor for CRLBoardIdentifier(0);
  v2[49] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[50] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[51] = v5;
  v2[52] = v4;

  return _swift_task_switch(sub_100DA2878, v5, v4);
}

uint64_t sub_100DA2878()
{
  v74 = v0;
  v1 = [*(v0 + 344) navigationController];
  *(v0 + 424) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = [v1 topViewController];
    if (v3)
    {
      v4 = v3;
      v5 = *(v0 + 344);
      sub_100006370(0, &qword_101A10AB0);
      v6 = v5;
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        if (qword_1019F2220 != -1)
        {
          swift_once();
        }

        v8 = *(v0 + 384);
        v9 = *(v0 + 392);
        v10 = *(v0 + 376);
        v70 = *(v0 + 368);
        v11 = *(v0 + 360);
        v12 = *(v0 + 344);
        v71 = static OS_os_log.sceneManagement;
        sub_1005B981C(&qword_1019F54E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146C6B0;
        v14 = *(*(v12 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
        v15 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
        v16 = *&v14[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
        v17 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
        swift_beginAccess();
        sub_10004FD94(v16 + v17, v11, type metadata accessor for CRLBoardCRDTData);
        v18 = v14;
        sub_1005B981C(&unk_1019F5250);
        CRRegister.wrappedValue.getter();
        sub_10003D63C(v11, type metadata accessor for CRLBoardCRDTData);
        v19 = (*&v14[v15] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
        v20 = *v19;
        v21 = v19[1];

        sub_10084BD4C(v8, v20, v21, v9);

        (*(v10 + 16))(v8, v9, v70);
        sub_10003D63C(v9, type metadata accessor for CRLBoardIdentifier);
        v22 = UUID.uuidString.getter();
        v24 = v23;
        (*(v10 + 8))(v8, v70);
        *(inited + 56) = &type metadata for String;
        *(inited + 64) = sub_1000053B0();
        *(inited + 32) = v22;
        *(inited + 40) = v24;
        v25 = static os_log_type_t.default.getter();
        sub_100005404(v71, &_mh_execute_header, v25, "Tearing down the board view controller due to close for identifier %{public}@", 77, 2, inited);
        swift_setDeallocating();
        sub_100005070(inited + 32);
        v26 = sub_100C0B3C0();
        if (v26)
        {
          v27 = v26;
          sub_100F39588(0);
          v27[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_isPresentingBoardNavigationController] = 0;
        }

        v28 = [*(*(v0 + 344) + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController) textInputResponder];
        if (v28)
        {
          v29 = *&v28[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_editor];
          v30 = v28;
          swift_unknownObjectRetain();

          if (v29)
          {
            [v29 setResignFirstResponderWhenKeyboardHides:1];
            swift_unknownObjectRelease();
          }
        }

        v31 = *(*(v0 + 352) + OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_window);
        if (v31)
        {
          v32 = [v31 windowScene];
          if (v32)
          {
            v33 = v32;
            if (sub_100FE54D8())
            {
              sub_100FE56D0(v33);
            }
          }
        }

        *(v0 + 432) = sub_100051290();
        v34 = swift_task_alloc();
        *(v0 + 440) = v34;
        *v34 = v0;
        v34[1] = sub_100DA3148;

        return sub_100D1CCA4(1);
      }
    }
  }

  else
  {
    v36 = objc_opt_self();
    v37 = [v36 _atomicIncrementAssertCount];
    v72 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v72);
    StaticString.description.getter();
    v38 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v39 = String._bridgeToObjectiveC()();

    v40 = [v39 lastPathComponent];

    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v44 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v45 = swift_initStackObject();
    *(v45 + 16) = xmmword_10146CA70;
    *(v45 + 56) = &type metadata for Int32;
    *(v45 + 64) = &protocol witness table for Int32;
    *(v45 + 32) = v37;
    v46 = sub_100006370(0, &qword_1019F4D30);
    *(v45 + 96) = v46;
    v47 = sub_1005CF04C();
    *(v45 + 104) = v47;
    *(v45 + 72) = v38;
    *(v45 + 136) = &type metadata for String;
    v48 = sub_1000053B0();
    *(v45 + 112) = v41;
    *(v45 + 120) = v43;
    *(v45 + 176) = &type metadata for UInt;
    *(v45 + 184) = &protocol witness table for UInt;
    *(v45 + 144) = v48;
    *(v45 + 152) = 270;
    v49 = v72;
    *(v45 + 216) = v46;
    *(v45 + 224) = v47;
    *(v45 + 192) = v49;
    v50 = v38;
    v51 = v49;
    v52 = static os_log_type_t.error.getter();
    sub_100005404(v44, &_mh_execute_header, v52, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v45);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v53 = static os_log_type_t.error.getter();
    sub_100005404(v44, &_mh_execute_header, v53, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v54 = swift_allocObject();
    v54[2] = 8;
    v54[3] = 0;
    v54[4] = 0;
    v54[5] = 0;
    v55 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v56 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v57 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v58 = String._bridgeToObjectiveC()();

    [v36 handleFailureInFunction:v56 file:v57 lineNumber:270 isFatal:0 format:v58 args:v55];
  }

  v59 = *(v0 + 344);
  v72 = 0;
  v73 = 0xE000000000000000;
  _StringGuts.grow(_:)(67);
  v60._object = 0x80000001015A17E0;
  v60._countAndFlagsBits = 0xD000000000000041;
  String.append(_:)(v60);
  v61 = [v59 description];
  v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v64 = v63;

  v65._countAndFlagsBits = v62;
  v65._object = v64;
  String.append(_:)(v65);

  v66 = v72;
  v67 = v73;
  sub_100DA610C();
  swift_allocError();
  *v68 = v66;
  v68[1] = v67;
  swift_willThrow();

  v69 = *(v0 + 8);

  return v69();
}