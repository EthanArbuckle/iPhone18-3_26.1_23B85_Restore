uint64_t sub_1006EA5EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[27] = a4;
  v5[28] = a5;
  v5[29] = type metadata accessor for CRLPreviewImages.Item(0);
  v5[30] = swift_task_alloc();
  v5[31] = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v5[32] = swift_task_alloc();
  v5[33] = type metadata accessor for MainActor();
  v5[34] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[35] = v7;
  v5[36] = v6;

  return _swift_task_switch(sub_1006EA710, v7, v6);
}

uint64_t sub_1006EA710()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 216);
  v3 = *(v2 + 32);
  *(v0 + 177) = v3;
  v4 = -1;
  v5 = -1 << v3;
  if (-(-1 << v3) < 64)
  {
    v4 = ~(-1 << -(-1 << v3));
  }

  v6 = v4 & *(v2 + 56);
  *(v0 + 296) = OBJC_IVAR____TtC8Freeform25CRLBoardPreviewImageCache_cache;

  if (v6)
  {
    v7 = 0;
LABEL_8:
    *(v0 + 304) = v6;
    *(v0 + 312) = v7;
    v9 = *(v0 + 256);
    v10 = *(v0 + 240);
    sub_1006EEEC4(*(v2 + 48) + *(v1 + 72) * (__clz(__rbit64(v6)) | (v7 << 6)), v9, type metadata accessor for CRLBoardIdentifier);
    [objc_opt_self() crl_screenScale];
    v12 = v11;
    sub_1006EEE5C(v9, v10, type metadata accessor for CRLBoardIdentifier);
    swift_storeEnumTagMultiPayload();
    v13 = type metadata accessor for CRLPreviewImages.LookupKey(0);
    v14 = objc_allocWithZone(v13);
    sub_1006EEEC4(v10, &v14[OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_item], type metadata accessor for CRLPreviewImages.Item);
    v15 = &v14[OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_sizeClass];
    *v15 = xmmword_101474CF0;
    v15[16] = 1;
    *&v14[OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_contentsScale] = v12;
    *(v0 + 184) = v14;
    *(v0 + 192) = v13;
    *(v0 + 320) = objc_msgSendSuper2((v0 + 184), "init");
    sub_100025BA8(v10, type metadata accessor for CRLPreviewImages.Item);
    *(v0 + 328) = static MainActor.shared.getter();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    *(v0 + 336) = v17;
    *(v0 + 344) = v16;

    return _swift_task_switch(sub_1006EA9D0, v17, v16);
  }

  else
  {
    v8 = 0;
    while (((63 - v5) >> 6) - 1 != v8)
    {
      v7 = v8 + 1;
      v6 = *(v2 + 8 * v8++ + 64);
      if (v6)
      {
        goto LABEL_8;
      }
    }

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_1006EA9D0()
{
  if ([*(*(v0 + 224) + *(v0 + 296)) objectForKey:*(v0 + 320)])
  {

    if (qword_1019F2138 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 320);
    v2 = static OS_os_log.crlBoardPreviewImageCache;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    *(v0 + 200) = 0;
    *(v0 + 208) = 0xE000000000000000;
    v4._countAndFlagsBits = 60;
    v4._object = 0xE100000000000000;
    String.append(_:)(v4);
    _print_unlocked<A, B>(_:_:)();
    v5._countAndFlagsBits = 32;
    v5._object = 0xE100000000000000;
    String.append(_:)(v5);
    v6 = *(v1 + OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_sizeClass + 16);
    *(v0 + 160) = *(v1 + OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_sizeClass);
    *(v0 + 176) = v6;
    _print_unlocked<A, B>(_:_:)();
    v7._countAndFlagsBits = 32;
    v7._object = 0xE100000000000000;
    String.append(_:)(v7);
    v8._countAndFlagsBits = Double.description.getter();
    String.append(_:)(v8);

    v9._countAndFlagsBits = 62;
    v9._object = 0xE100000000000000;
    String.append(_:)(v9);
    v10 = *(v0 + 200);
    v11 = *(v0 + 208);
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v10;
    *(inited + 40) = v11;
    v12 = static os_log_type_t.default.getter();
    sub_100005404(v2, &_mh_execute_header, v12, "Found existing cache entry for: %@", 34, 2, inited);
    swift_setDeallocating();
    sub_100005070(inited + 32);

    v13 = *(v0 + 280);
    v14 = *(v0 + 288);

    return _swift_task_switch(sub_1006EAEA0, v13, v14);
  }

  else
  {
    if (qword_1019F2138 != -1)
    {
      swift_once();
    }

    v15 = static OS_os_log.crlBoardPreviewImageCache;
    sub_1005B981C(&qword_1019F54E0);
    v16 = swift_initStackObject();
    *(v16 + 16) = xmmword_10146C6B0;
    v17 = sub_1006D7A2C();
    v19 = v18;
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = sub_1000053B0();
    *(v16 + 32) = v17;
    *(v16 + 40) = v19;
    v20 = static os_log_type_t.default.getter();
    sub_100005404(v15, &_mh_execute_header, v20, "Will create new cache entry for: %@", 35, 2, v16);
    swift_setDeallocating();
    sub_100005070(v16 + 32);
    v21 = swift_task_alloc();
    *(v0 + 352) = v21;
    *v21 = v0;
    v21[1] = sub_1006EAD78;
    v22 = *(v0 + 320);

    return sub_1006E2604(v22);
  }
}

uint64_t sub_1006EAD78(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 360) = v1;

  if (v1)
  {
    v5 = v4[42];
    v6 = v4[43];
    v7 = sub_1006EB1A8;
  }

  else
  {
    v4[46] = a1;
    v5 = v4[42];
    v6 = v4[43];
    v7 = sub_1006EB138;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1006EAEA0()
{
  v4 = *(v0 + 312);
  v5 = (*(v0 + 304) - 1) & *(v0 + 304);
  if (v5)
  {
    v6 = *(v0 + 216);
LABEL_7:
    *(v0 + 304) = v5;
    *(v0 + 312) = v4;
    v8 = *(v0 + 256);
    v9 = *(v0 + 240);
    sub_1006EEEC4(*(v6 + 48) + *(*(v0 + 248) + 72) * (__clz(__rbit64(v5)) | (v4 << 6)), v8, type metadata accessor for CRLBoardIdentifier);
    [objc_opt_self() crl_screenScale];
    v11 = v10;
    sub_1006EEE5C(v8, v9, type metadata accessor for CRLBoardIdentifier);
    swift_storeEnumTagMultiPayload();
    v12 = type metadata accessor for CRLPreviewImages.LookupKey(0);
    v13 = objc_allocWithZone(v12);
    sub_1006EEEC4(v9, &v13[OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_item], type metadata accessor for CRLPreviewImages.Item);
    v14 = &v13[OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_sizeClass];
    *v14 = xmmword_101474CF0;
    v14[16] = 1;
    *&v13[OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_contentsScale] = v11;
    *(v0 + 184) = v13;
    *(v0 + 192) = v12;
    *(v0 + 320) = objc_msgSendSuper2((v0 + 184), "init");
    sub_100025BA8(v9, type metadata accessor for CRLPreviewImages.Item);
    *(v0 + 328) = static MainActor.shared.getter();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v3 = v16;
    *(v0 + 336) = v15;
    *(v0 + 344) = v16;
    v1 = sub_1006EA9D0;
    v2 = v15;

    return _swift_task_switch(v1, v2, v3);
  }

  else
  {
    while (1)
    {
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
        return _swift_task_switch(v1, v2, v3);
      }

      if (v7 >= (((1 << *(v0 + 177)) + 63) >> 6))
      {
        break;
      }

      v6 = *(v0 + 216);
      v5 = *(v6 + 8 * v7 + 56);
      ++v4;
      if (v5)
      {
        v4 = v7;
        goto LABEL_7;
      }
    }

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_1006EB138()
{

  v1 = *(v0 + 280);
  v2 = *(v0 + 288);

  return _swift_task_switch(sub_1006EAEA0, v1, v2);
}

uint64_t sub_1006EB1A8()
{

  v1 = *(v0 + 280);
  v2 = *(v0 + 288);

  return _swift_task_switch(sub_1006EB20C, v1, v2);
}

uint64_t sub_1006EB20C()
{
  v1 = *(v0 + 320);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1006EB2A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = type metadata accessor for MainActor();
  v5[3] = static MainActor.shared.getter();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_1005F1164;

  return sub_1006EB360(a5);
}

uint64_t sub_1006EB360(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = _s4NodeVMa(0);
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[19] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[20] = v5;
  v2[21] = v4;

  return _swift_task_switch(sub_1006EB46C, v5, v4);
}

uint64_t sub_1006EB46C()
{
  v33 = v0;
  if (qword_1019F2138 != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v1 = v0[12];
    v2 = static OS_os_log.crlBoardPreviewImageCache;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v0[11] = sub_1006D7744(v1);
    sub_1005B981C(&unk_1019F4D80);
    sub_10001A2F8(&qword_1019F61E0, &unk_1019F4D80);
    v4 = BidirectionalCollection<>.joined(separator:)();
    v6 = v5;

    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v4;
    *(inited + 40) = v6;
    v7 = static os_log_type_t.info.getter();
    sub_100005404(v2, &_mh_execute_header, v7, "Called boardsDidChange for board UUIDs: %@", 42, 2, inited);
    swift_setDeallocating();
    sub_100005070(inited + 32);
    if (!*(v1 + 16))
    {
      break;
    }

    v8 = *(*(v0[13] + OBJC_IVAR____TtC8Freeform25CRLBoardPreviewImageCache_boardLibrary) + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_storeCacheSnapshot);
    v9 = _swiftEmptySetSingleton;
    v32 = _swiftEmptySetSingleton;
    v10 = v8[2];
    swift_bridgeObjectRetain_n();
    if (!v10)
    {
LABEL_30:

      v0[22] = v9;
      v29 = swift_task_alloc();
      v0[23] = v29;
      *v29 = v0;
      v29[1] = sub_1006EB9B4;

      return sub_1006E4EC4(v9);
    }

    v30 = v0[14];
    v31 = v0[15];
    v11 = (*(v31 + 80) + 32) & ~*(v31 + 80);
    while (1)
    {
      sub_1006EEEC4(v8 + v11, v0[16], _s4NodeVMa);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v10 - 1) > v8[3] >> 1)
      {
        v8 = sub_10003DFD0(isUniquelyReferenced_nonNull_native, v10, 1, v8);
      }

      sub_100025BA8(v8 + v11, _s4NodeVMa);
      v13 = *(v31 + 72);
      if (v13 > 0 || v8 + v11 >= v8 + v11 + v13 + (v8[2] - 1) * v13)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v13)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v14 = v0[16];
      v15 = v8[2] - 1;
      v8[2] = v15;
      v16 = *(v14 + *(v30 + 20));
      v17 = *(v16 + 16);
      v18 = v15 + v17;
      if (__OFADD__(v15, v17))
      {
        break;
      }

      v19 = v8[3];

      if (v18 > (v19 >> 1))
      {
        if (v15 <= v18)
        {
          v23 = v15 + v17;
        }

        else
        {
          v23 = v15;
        }

        v8 = sub_10003DFD0(1uLL, v23, 1, v8);
        v15 = v8[2];
        if (*(v16 + 16))
        {
LABEL_16:
          if ((v8[3] >> 1) - v15 < v17)
          {
            goto LABEL_35;
          }

          swift_arrayInitWithCopy();

          if (v17)
          {
            v20 = v8[2];
            v21 = __OFADD__(v20, v17);
            v22 = v20 + v17;
            if (v21)
            {
              goto LABEL_36;
            }

            v8[2] = v22;
          }

          goto LABEL_25;
        }
      }

      else if (v17)
      {
        goto LABEL_16;
      }

      if (v17)
      {
        goto LABEL_34;
      }

LABEL_25:
      v25 = v0[17];
      v24 = v0[18];
      v26 = v0[12];
      sub_1006EEE5C(v0[16], v25, _s4NodeVMa);
      sub_1006EEE5C(v25, v24, _s4NodeVMa);
      sub_1006EBB74(&v32, v24, v26);
      sub_100025BA8(v0[18], _s4NodeVMa);
      v10 = v8[2];
      if (!v10)
      {
        v9 = v32;
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    swift_once();
  }

  v27 = v0[1];

  return v27();
}

uint64_t sub_1006EB9B4()
{
  v1 = *v0;

  v2 = *(v1 + 168);
  v3 = *(v1 + 160);

  return _swift_task_switch(sub_1006EBAF8, v3, v2);
}

uint64_t sub_1006EBAF8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1006EBB74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v76 = a3;
  v69 = a1;
  v4 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v4 - 8);
  v64 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = _s4NodeVMa(0);
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for CRLPreviewImages.Item(0);
  __chkstk_darwin(v66);
  v67 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v68 = &v58 - v10;
  v11 = type metadata accessor for CRLBoardIdentifier(0);
  v70 = *(v11 - 8);
  __chkstk_darwin(v11 - 8);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v58 - v15;
  v17 = _s5BoardVMa(0);
  __chkstk_darwin(v17 - 8);
  v77 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v58 - v20;
  v22 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v22);
  v65 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v73 = &v58 - v25;
  __chkstk_darwin(v26);
  v28 = &v58 - v27;
  __chkstk_darwin(v29);
  v31 = &v58 - v30;
  sub_1006EEEC4(a2, &v58 - v30, type metadata accessor for CRLBoardLibraryViewModel.Item);
  v32 = v22;
  sub_1006EEEC4(v31, v28, type metadata accessor for CRLBoardLibraryViewModel.Item);
  result = swift_getEnumCaseMultiPayload();
  if (!result)
  {
    goto LABEL_32;
  }

  if (result != 1)
  {
    sub_1006EEE5C(v28, v21, _s5BoardVMa);
    sub_1006EEEC4(v21, v16, type metadata accessor for CRLBoardIdentifier);
    if (sub_10079DDA0(v16, v76))
    {
      v52 = v67;
      sub_1006EEEC4(v16, v67, type metadata accessor for CRLBoardIdentifier);
      swift_storeEnumTagMultiPayload();
      v53 = v68;
      sub_100E6EC58(v68, v52);
      sub_100025BA8(v53, type metadata accessor for CRLPreviewImages.Item);
    }

    sub_100025BA8(v16, type metadata accessor for CRLBoardIdentifier);
    sub_100025BA8(v21, _s5BoardVMa);
    v28 = v31;
    return sub_100025BA8(v28, type metadata accessor for CRLBoardLibraryViewModel.Item);
  }

  v34 = *(a2 + *(v75 + 20));
  v71 = *(v34 + 16);
  if (!v71)
  {
    goto LABEL_32;
  }

  v35 = 0;
  v37 = v73;
  v36 = v74;
  v72 = v34 + ((*(v74 + 80) + 32) & ~*(v74 + 80));
  v75 = v76 + 56;
  v63 = v31;
  v62 = v28;
  v61 = v7;
  v60 = v32;
  v59 = v34;
  while (1)
  {
    if (v35 >= *(v34 + 16))
    {
      __break(1u);
      return result;
    }

    sub_1006EEEC4(v72 + *(v36 + 72) * v35, v7, _s4NodeVMa);
    sub_1006EEEC4(v7, v37, type metadata accessor for CRLBoardLibraryViewModel.Item);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      break;
    }

    sub_100025BA8(v7, _s4NodeVMa);
    result = sub_100025BA8(v37, type metadata accessor for CRLBoardLibraryViewModel.Item);
LABEL_6:
    if (++v35 == v71)
    {
      goto LABEL_32;
    }
  }

  sub_1006EEE5C(v37, v77, _s5BoardVMa);
  if (!*(v76 + 16) || (v38 = v76, Hasher.init(_seed:)(), type metadata accessor for UUID(), sub_10004161C(&qword_1019FB870, &type metadata accessor for UUID), v39 = v77, dispatch thunk of Hashable.hash(into:)(), v40 = type metadata accessor for CRLBoardIdentifierStorage(0), v41 = (v39 + *(v40 + 20)), v43 = *v41, v42 = v41[1], String.hash(into:)(), v44 = Hasher._finalize()(), v45 = -1 << *(v38 + 32), v46 = v44 & ~v45, ((*(v75 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46) & 1) == 0))
  {
LABEL_21:
    v7 = v61;
    sub_100025BA8(v61, _s4NodeVMa);
    result = sub_100025BA8(v77, _s5BoardVMa);
    v31 = v63;
    v28 = v62;
    v37 = v73;
    v36 = v74;
    v34 = v59;
    goto LABEL_6;
  }

  v47 = ~v45;
  v48 = *(v70 + 72);
  while (1)
  {
    sub_1006EEEC4(*(v76 + 48) + v48 * v46, v13, type metadata accessor for CRLBoardIdentifier);
    if ((static UUID.== infix(_:_:)() & 1) == 0)
    {
      sub_100025BA8(v13, type metadata accessor for CRLBoardIdentifier);
      goto LABEL_13;
    }

    v49 = &v13[*(v40 + 20)];
    if (*v49 == v43 && *(v49 + 1) == v42)
    {
      break;
    }

    v51 = _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_100025BA8(v13, type metadata accessor for CRLBoardIdentifier);
    if (v51)
    {
      goto LABEL_28;
    }

LABEL_13:
    v46 = (v46 + 1) & v47;
    if (((*(v75 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  sub_100025BA8(v13, type metadata accessor for CRLBoardIdentifier);
LABEL_28:
  sub_100025BA8(v61, _s4NodeVMa);
  sub_100025BA8(v77, _s5BoardVMa);
  v54 = v63;
  v31 = v65;
  sub_1006EEEC4(v63, v65, type metadata accessor for CRLBoardLibraryViewModel.Item);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v55 = v64;
    sub_1006EEE5C(v31, v64, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    v56 = v67;
    sub_1006EEEC4(v55, v67, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    swift_storeEnumTagMultiPayload();
    v57 = v68;
    sub_100E6EC58(v68, v56);
    sub_100025BA8(v57, type metadata accessor for CRLPreviewImages.Item);
    sub_100025BA8(v55, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    v31 = v54;
  }

  else
  {
    sub_100025BA8(v54, type metadata accessor for CRLBoardLibraryViewModel.Item);
  }

  v28 = v62;
LABEL_32:
  sub_100025BA8(v31, type metadata accessor for CRLBoardLibraryViewModel.Item);
  return sub_100025BA8(v28, type metadata accessor for CRLBoardLibraryViewModel.Item);
}

uint64_t sub_1006EC518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();

  return _swift_task_switch(sub_1006EC598, a4, 0);
}

uint64_t sub_1006EC598()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 128);
  if (v2 <= 0x3F)
  {
    v3 = *(v1 + 120);

    if ((swift_task_isCancelled() & 1) == 0)
    {
      sub_100006370(0, &qword_1019FAC38);
      sub_1005B981C(&unk_1019F6B40);
      Task.cancel()();
    }

    sub_1006CCCB4(v3, v2);
  }

  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100658F10, v5, v4);
}

unint64_t *sub_1006EC7A4(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1006EDA74(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

void *sub_1006EC840(uint64_t a1, void *a2)
{
  v53 = a2;
  v4 = sub_1005B981C(&unk_1019FB770);
  __chkstk_darwin(v4 - 8);
  v6 = &v44 - v5;
  v57 = type metadata accessor for CRLPreviewImages.Item(0);
  __chkstk_darwin(v57);
  v56 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v8 - 8);
  v51 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1005B981C(&unk_101A15B20);
  __chkstk_darwin(v10 - 8);
  v12 = &v44 - v11;
  v13 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v46 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v44 = &v44 - v17;
  v48 = v2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for CRLPreviewImages.LookupKey(0);
    sub_10004161C(&qword_1019FB898, type metadata accessor for CRLPreviewImages.LookupKey);
    result = Set.Iterator.init(_cocoa:)();
    a1 = v60;
    v19 = v61;
    v20 = v62;
    v21 = v63;
    v22 = v64;
  }

  else
  {
    v23 = -1 << *(a1 + 32);
    v19 = a1 + 56;
    v20 = ~v23;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v22 = v25 & *(a1 + 56);

    v21 = 0;
  }

  v52 = v6;
  v47 = v20;
  v45 = v14;
  v54 = (v14 + 48);
  v55 = (v14 + 56);
  v49 = _swiftEmptyArrayStorage;
  v50 = v13;
LABEL_8:
  v26 = v21;
  for (i = v22; a1 < 0; i = v58)
  {
    v31 = __CocoaSet.Iterator.next()();
    if (!v31)
    {
      goto LABEL_31;
    }

    v59 = v31;
    type metadata accessor for CRLPreviewImages.LookupKey(0);
    swift_dynamicCast();
    v30 = v65;
    v21 = v26;
    v58 = i;
    if (!v65)
    {
      goto LABEL_31;
    }

LABEL_17:
    v32 = v56;
    sub_1006EEEC4(v30 + OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_item, v56, type metadata accessor for CRLPreviewImages.Item);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v33 = a1;
      v34 = v51;
      v35 = sub_1006EEE5C(v32, v51, type metadata accessor for CRLBoardIdentifier);
      __chkstk_darwin(v35);
      *(&v44 - 2) = v34;
      v36 = v52;
      sub_10003CF3C(1, sub_1006EEE54, (&v44 - 4), v53, v52);
      sub_100025BA8(v34, type metadata accessor for CRLBoardIdentifier);
      v37 = _s4NodeVMa(0);
      if ((*(*(v37 - 8) + 48))(v36, 1, v37) == 1)
      {
        sub_10000CAAC(v36, &unk_1019FB770);
        v38 = 1;
      }

      else
      {
        sub_1006EEEC4(v36, v12, type metadata accessor for CRLBoardLibraryViewModel.Item);
        sub_100025BA8(v36, _s4NodeVMa);
        v38 = 0;
      }

      a1 = v33;
      v13 = v50;
    }

    else
    {
      sub_100025BA8(v32, type metadata accessor for CRLPreviewImages.Item);
      v38 = 1;
    }

    (*v55)(v12, v38, 1, v13);

    if ((*v54)(v12, 1, v13) != 1)
    {
      v39 = v44;
      sub_1006EEE5C(v12, v44, type metadata accessor for CRLBoardLibraryViewModel.Item);
      sub_1006EEE5C(v39, v46, type metadata accessor for CRLBoardLibraryViewModel.Item);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v49 = sub_100B3648C(0, v49[2] + 1, 1, v49);
      }

      v40 = v45;
      v42 = v49[2];
      v41 = v49[3];
      if (v42 >= v41 >> 1)
      {
        v49 = sub_100B3648C(v41 > 1, v42 + 1, 1, v49);
      }

      v43 = v49;
      v49[2] = v42 + 1;
      result = sub_1006EEE5C(v46, v43 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v42, type metadata accessor for CRLBoardLibraryViewModel.Item);
      v22 = v58;
      goto LABEL_8;
    }

    result = sub_10000CAAC(v12, &unk_101A15B20);
    v26 = v21;
  }

  v28 = v26;
  v29 = i;
  v21 = v26;
  if (i)
  {
LABEL_13:
    v58 = (v29 - 1) & v29;
    v30 = *(*(a1 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v29)))));
    if (v30)
    {
      goto LABEL_17;
    }

LABEL_31:
    sub_100035F90();
    return v49;
  }

  while (1)
  {
    v21 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v21 >= ((v20 + 64) >> 6))
    {
      goto LABEL_31;
    }

    v29 = *(v19 + 8 * v21);
    ++v28;
    if (v29)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1006ECF20(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002D3D4;

  return sub_1006E4AB8(a1, v4, v5, v7, v6);
}

uint64_t sub_1006ECFE0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10002D3D4;

  return sub_1006E4B74(a1, v1);
}

uint64_t sub_1006ED07C(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10002D4C8;

  return sub_1006E5A44(a1, a2, v7, v6);
}

uint64_t sub_1006ED130(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for CRLPreviewImages.Item(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_10002D4C8;

  return sub_1006E61A4(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_1006ED290(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = v1[2];
  v11 = v1[3];
  v12 = *(v1 + v7);
  v13 = v1[4];
  v14 = *(v1 + v8);
  v15 = *(v1 + v8 + 8);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_10002D4C8;

  return sub_1006E0DE4(a1, v14, v15, v10, v11, v13, v1 + v6, v12, v1 + v9);
}

uint64_t sub_1006ED3F8(uint64_t a1, double a2)
{
  *(v3 + 48) = v2;
  *(v3 + 40) = a2;
  *(v3 + 32) = a1;
  *(v3 + 56) = type metadata accessor for CRLPreviewImages.Item(0);
  *(v3 + 64) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v3 + 72) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 80) = v5;
  *(v3 + 88) = v4;

  return _swift_task_switch(sub_1006ED4C8, v5, v4);
}

uint64_t sub_1006ED4C8()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  sub_1006EEEC4(*(v0 + 32), v1, type metadata accessor for CRLBoardIdentifier);
  swift_storeEnumTagMultiPayload();
  v3 = type metadata accessor for CRLPreviewImages.LookupKey(0);
  v4 = objc_allocWithZone(v3);
  sub_1006EEEC4(v1, &v4[OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_item], type metadata accessor for CRLPreviewImages.Item);
  v5 = &v4[OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_sizeClass];
  *v5 = xmmword_101474CF0;
  v5[16] = 1;
  *&v4[OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_contentsScale] = v2;
  *(v0 + 16) = v4;
  *(v0 + 24) = v3;
  v6 = objc_msgSendSuper2((v0 + 16), "init");
  *(v0 + 96) = v6;
  sub_100025BA8(v1, type metadata accessor for CRLPreviewImages.Item);
  v7 = swift_task_alloc();
  *(v0 + 104) = v7;
  *v7 = v0;
  v7[1] = sub_1006ED654;

  return sub_1006DA940(v6);
}

uint64_t sub_1006ED654(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[14] = a1;
  v3[15] = v1;

  if (v1)
  {
    v5 = v3[10];
    v6 = v3[11];

    return _swift_task_switch(sub_1006ED984, v5, v6);
  }

  else
  {
    v7 = swift_task_alloc();
    v3[16] = v7;
    *v7 = v4;
    v7[1] = sub_1006ED7D0;

    return sub_1006C6600();
  }
}

uint64_t sub_1006ED7D0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v5 = v4[10];
    v6 = v4[11];
    v7 = sub_1006ED9F8;
  }

  else
  {
    v4[18] = a1;
    v5 = v4[10];
    v6 = v4[11];
    v7 = sub_1006ED8F8;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1006ED8F8()
{
  v1 = v0[12];

  v2 = v0[1];
  v3 = v0[18];

  return v2(v3);
}

uint64_t sub_1006ED984()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1006ED9F8()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2();
}

void sub_1006EDA74(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a2;
  v40 = a1;
  v6 = type metadata accessor for CRLBoardIdentifier(0);
  v42 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v49 = &v38 - v10;
  v43 = a3;
  v44 = 0;
  v11 = 0;
  v12 = *(a3 + 56);
  v39 = a3 + 56;
  v13 = 1 << *(a3 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & v12;
  v16 = (v13 + 63) >> 6;
  v47 = a4 + 56;
  v48 = a4;
  v41 = v16;
  if (!v15)
  {
    goto LABEL_9;
  }

  do
  {
    while (1)
    {
      v18 = __clz(__rbit64(v15));
      v46 = (v15 - 1) & v15;
LABEL_14:
      v21 = v18 | (v11 << 6);
      v22 = *(v43 + 48);
      v23 = *(v42 + 72);
      v45 = v21;
      sub_1006EEEC4(v22 + v23 * v21, v49, type metadata accessor for CRLBoardIdentifier);
      if (*(v48 + 16))
      {
        v24 = v48;
        Hasher.init(_seed:)();
        type metadata accessor for UUID();
        sub_10004161C(&qword_1019FB870, &type metadata accessor for UUID);
        v25 = v49;
        dispatch thunk of Hashable.hash(into:)();
        v26 = type metadata accessor for CRLBoardIdentifierStorage(0);
        v27 = (v25 + *(v26 + 20));
        v29 = *v27;
        v28 = v27[1];
        String.hash(into:)();
        v30 = Hasher._finalize()();
        v31 = -1 << *(v24 + 32);
        v32 = v30 & ~v31;
        if ((*(v47 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32))
        {
          break;
        }
      }

LABEL_6:
      sub_100025BA8(v49, type metadata accessor for CRLBoardIdentifier);
      *(v40 + ((v45 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v45;
      v17 = __OFADD__(v44++, 1);
      v16 = v41;
      v15 = v46;
      if (v17)
      {
        goto LABEL_31;
      }

      if (!v46)
      {
        goto LABEL_9;
      }
    }

    v33 = ~v31;
    while (1)
    {
      sub_1006EEEC4(*(v48 + 48) + v32 * v23, v8, type metadata accessor for CRLBoardIdentifier);
      if ((static UUID.== infix(_:_:)() & 1) == 0)
      {
        sub_100025BA8(v8, type metadata accessor for CRLBoardIdentifier);
        goto LABEL_18;
      }

      v34 = &v8[*(v26 + 20)];
      if (*v34 == v29 && *(v34 + 1) == v28)
      {
        break;
      }

      v36 = _stringCompareWithSmolCheck(_:_:expecting:)();
      sub_100025BA8(v8, type metadata accessor for CRLBoardIdentifier);
      if (v36)
      {
        goto LABEL_27;
      }

LABEL_18:
      v32 = (v32 + 1) & v33;
      if (((*(v47 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    sub_100025BA8(v8, type metadata accessor for CRLBoardIdentifier);
LABEL_27:
    sub_100025BA8(v49, type metadata accessor for CRLBoardIdentifier);
    v16 = v41;
    v15 = v46;
  }

  while (v46);
LABEL_9:
  v19 = v11;
  while (1)
  {
    v11 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v11 >= v16)
    {
      v37 = v43;

      sub_1010F47E8(v40, v38, v44, v37);
      return;
    }

    v20 = *(v39 + 8 * v11);
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v46 = (v20 - 1) & v20;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
}

uint64_t sub_1006EDE90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLBoardIdentifier(0);
  v47 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v6 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v53 = v41 - v8;
  v9 = *(a1 + 32);
  v10 = v9 & 0x3F;
  v42 = ((1 << v9) + 63) >> 6;
  v11 = 8 * v42;

  if (v10 > 0xD)
  {
    goto LABEL_34;
  }

  while (2)
  {
    v41[1] = v41;
    __chkstk_darwin(v12);
    v44 = v41 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v44, v11);
    v48 = 0;
    v11 = 0;
    v13 = *(a1 + 56);
    v43 = a1 + 56;
    v14 = 1 << *(a1 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & v13;
    v17 = (v14 + 63) >> 6;
    v52 = a2 + 56;
    v45 = v17;
    v46 = a1;
    if (!v16)
    {
      goto LABEL_10;
    }

    do
    {
      while (1)
      {
        v19 = __clz(__rbit64(v16));
        v50 = (v16 - 1) & v16;
LABEL_15:
        v22 = v19 | (v11 << 6);
        v23 = *(a1 + 48);
        v24 = *(v47 + 72);
        v49 = v22;
        sub_1006EEEC4(v23 + v24 * v22, v53, type metadata accessor for CRLBoardIdentifier);
        if (*(a2 + 16))
        {
          Hasher.init(_seed:)();
          type metadata accessor for UUID();
          sub_10004161C(&qword_1019FB870, &type metadata accessor for UUID);
          v25 = a2;
          v26 = v53;
          dispatch thunk of Hashable.hash(into:)();
          v51 = type metadata accessor for CRLBoardIdentifierStorage(0);
          v27 = (v26 + *(v51 + 20));
          v29 = *v27;
          v28 = v27[1];
          String.hash(into:)();
          v30 = Hasher._finalize()();
          a2 = v25;
          v31 = -1 << *(v25 + 32);
          v32 = v30 & ~v31;
          if ((*(v52 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32))
          {
            break;
          }
        }

LABEL_7:
        sub_100025BA8(v53, type metadata accessor for CRLBoardIdentifier);
        *&v44[(v49 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v49;
        v18 = __OFADD__(v48++, 1);
        v17 = v45;
        a1 = v46;
        v16 = v50;
        if (v18)
        {
          goto LABEL_33;
        }

        if (!v50)
        {
          goto LABEL_10;
        }
      }

      v33 = ~v31;
      while (1)
      {
        sub_1006EEEC4(*(a2 + 48) + v32 * v24, v6, type metadata accessor for CRLBoardIdentifier);
        if ((static UUID.== infix(_:_:)() & 1) == 0)
        {
          sub_100025BA8(v6, type metadata accessor for CRLBoardIdentifier);
          goto LABEL_19;
        }

        v34 = &v6[*(v51 + 20)];
        if (*v34 == v29 && *(v34 + 1) == v28)
        {
          break;
        }

        v36 = _stringCompareWithSmolCheck(_:_:expecting:)();
        sub_100025BA8(v6, type metadata accessor for CRLBoardIdentifier);
        if (v36)
        {
          goto LABEL_28;
        }

LABEL_19:
        v32 = (v32 + 1) & v33;
        a2 = v25;
        if (((*(v52 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      sub_100025BA8(v6, type metadata accessor for CRLBoardIdentifier);
LABEL_28:
      sub_100025BA8(v53, type metadata accessor for CRLBoardIdentifier);
      a2 = v25;
      v17 = v45;
      a1 = v46;
      v16 = v50;
    }

    while (v50);
LABEL_10:
    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v11 >= v17)
      {
        v37 = sub_1010F47E8(v44, v42, v48, a1);

        return v37;
      }

      v21 = *(v43 + 8 * v11);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v50 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v39 = a2;
  v40 = swift_slowAlloc();

  v37 = sub_1006EC7A4(v40, v42, a1, v39);

  return v37;
}

uint64_t sub_1006EE404(uint64_t a1, double a2)
{
  *(v3 + 48) = v2;
  *(v3 + 40) = a2;
  *(v3 + 32) = a1;
  *(v3 + 56) = type metadata accessor for CRLPreviewImages.Item(0);
  *(v3 + 64) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v3 + 72) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 80) = v5;
  *(v3 + 88) = v4;

  return _swift_task_switch(sub_1006EE4D4, v5, v4);
}

uint64_t sub_1006EE4D4()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  sub_1006EEEC4(*(v0 + 32), v1, type metadata accessor for CRLBoardIdentifier);
  swift_storeEnumTagMultiPayload();
  v3 = type metadata accessor for CRLPreviewImages.LookupKey(0);
  v4 = objc_allocWithZone(v3);
  sub_1006EEEC4(v1, &v4[OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_item], type metadata accessor for CRLPreviewImages.Item);
  v5 = &v4[OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_sizeClass];
  *v5 = 0;
  *(v5 + 1) = 0;
  v5[16] = 1;
  *&v4[OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_contentsScale] = v2;
  *(v0 + 16) = v4;
  *(v0 + 24) = v3;
  v6 = objc_msgSendSuper2((v0 + 16), "init");
  *(v0 + 96) = v6;
  sub_100025BA8(v1, type metadata accessor for CRLPreviewImages.Item);
  v7 = swift_task_alloc();
  *(v0 + 104) = v7;
  *v7 = v0;
  v7[1] = sub_1006EE658;

  return sub_1006DA940(v6);
}

uint64_t sub_1006EE658(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[14] = a1;
  v3[15] = v1;

  if (v1)
  {
    v5 = v3[10];
    v6 = v3[11];

    return _swift_task_switch(sub_1006EF748, v5, v6);
  }

  else
  {
    v7 = swift_task_alloc();
    v3[16] = v7;
    *v7 = v4;
    v7[1] = sub_1006EE7D4;

    return sub_1006C6600();
  }
}

uint64_t sub_1006EE7D4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v5 = v4[10];
    v6 = v4[11];
    v7 = sub_1006EF740;
  }

  else
  {
    v4[18] = a1;
    v5 = v4[10];
    v6 = v4[11];
    v7 = sub_1006EF744;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1006EE8FC(double a1, double a2)
{
  v4 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:{a1, a2}];
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1006EEB08;
  *(v6 + 24) = v5;
  v11[4] = sub_1006EEB10;
  v11[5] = v6;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = *"";
  v11[2] = sub_1006DE5CC;
  v11[3] = &unk_101882330;
  v7 = _Block_copy(v11);

  v8 = [v4 imageWithActions:v7];

  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    v10 = [objc_allocWithZone(CRLImage) initWithUIImage:v8];

    return v10;
  }

  return result;
}

unint64_t sub_1006EEAB4()
{
  result = qword_1019FB7B0;
  if (!qword_1019FB7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FB7B0);
  }

  return result;
}

uint64_t sub_1006EEB58(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002D4C8;

  return sub_1006D8394(a1, v4, v5, v7, v6);
}

uint64_t sub_1006EEC2C(void (*a1)(void))
{
  swift_unknownObjectRelease();
  a1(*(v1 + 32));

  return _swift_deallocObject(v1, 48, 7);
}

uint64_t sub_1006EEC84(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002D4C8;

  return sub_1006EA5EC(a1, v4, v5, v7, v6);
}

uint64_t sub_1006EED4C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1006EED94(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002D4C8;

  return sub_1006EB2A4(a1, v4, v5, v7, v6);
}

uint64_t sub_1006EEE5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1006EEEC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1006EEF2C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for CRLPreviewImages.Item(0);
  __chkstk_darwin(v4 - 8);
  v6 = v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v7 - 8);
  v9 = v49 - v8;
  sub_100064288(a1, v52);
  type metadata accessor for CRLPreviewImages.CacheEntry();
  if (swift_dynamicCast())
  {
    v10 = v50;
    v11 = type metadata accessor for TaskPriority();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
    type metadata accessor for MainActor();

    v12 = static MainActor.shared.getter();
    v13 = swift_allocObject();
    v13[2] = v12;
    v13[3] = &protocol witness table for MainActor;
    v13[4] = v10;
    sub_10064191C(0, 0, v9, &unk_101474F10, v13);

    sub_1006EEEC4(v10[14] + OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_item, v6, type metadata accessor for CRLPreviewImages.Item);
    v14 = OBJC_IVAR____TtC8Freeform25CRLBoardPreviewImageCache_cachedSizes;
    swift_beginAccess();
    v15 = *(v2 + v14);
    if (*(v15 + 16))
    {

      v16 = sub_1007C880C(v6);
      if (v17)
      {
        v18 = *(*(v15 + 56) + 8 * v16);

        sub_100025BA8(v6, type metadata accessor for CRLPreviewImages.Item);

        v51 = v18;
        v19 = v10[14];
        v20 = *&v19[OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_sizeClass];
        v21 = *&v19[OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_sizeClass + 8];
        v22 = v19[OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_sizeClass + 16];
        v23 = *&v19[OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_contentsScale];
        v24 = v19;
        sub_100ED7B28(v20, v21, v22, v52, v23);
        v25 = *(v51 + 16);

        if (v25)
        {
        }

        else
        {
          v48 = OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_item;
          swift_beginAccess();
          sub_1006F6B94(&v24[v48]);
          swift_endAccess();
        }

        return;
      }
    }

    sub_100025BA8(v6, type metadata accessor for CRLPreviewImages.Item);

    return;
  }

  v49[0] = objc_opt_self();
  v26 = [v49[0] _atomicIncrementAssertCount];
  v50 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v50);
  StaticString.description.getter();
  v27 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v28 = String._bridgeToObjectiveC()();

  v29 = [v28 lastPathComponent];

  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v33 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v26;
  v35 = sub_100006370(0, &qword_1019F4D30);
  *(inited + 96) = v35;
  v36 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
  *(inited + 104) = v36;
  *(inited + 72) = v27;
  *(inited + 136) = &type metadata for String;
  v37 = sub_1000053B0();
  *(inited + 112) = v30;
  *(inited + 120) = v32;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v37;
  *(inited + 152) = 1059;
  v38 = v50;
  *(inited + 216) = v35;
  *(inited + 224) = v36;
  *(inited + 192) = v38;
  v39 = v27;
  v40 = v38;
  v41 = static os_log_type_t.error.getter();
  sub_100005404(v33, &_mh_execute_header, v41, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v42 = static os_log_type_t.error.getter();
  sub_100005404(v33, &_mh_execute_header, v42, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v43 = swift_allocObject();
  v43[2] = 8;
  v43[3] = 0;
  v43[4] = 0;
  v43[5] = 0;
  v44 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v45 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v46 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v47 = String._bridgeToObjectiveC()();

  [v49[0] handleFailureInFunction:v45 file:v46 lineNumber:1059 isFatal:0 format:v47 args:v44];
}

uint64_t sub_1006EF604(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D4C8;

  return sub_1006EC518(a1, v4, v5, v6);
}

unint64_t sub_1006EF6DC()
{
  result = qword_1019FB8C8;
  if (!qword_1019FB8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FB8C8);
  }

  return result;
}

id sub_1006EF79C()
{
  v0 = type metadata accessor for RecognitionController.EducationPanelFeatures();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v13 - v5;
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = objc_opt_self();
  result = [v10 isOSFeatureEnabled:0];
  if (result)
  {
    static RecognitionController.EducationPanelFeatures.none.getter();
    if ([v10 isOSFeatureEnabled:8])
    {
      static RecognitionController.EducationPanelFeatures.deleteHandwritingGesture.getter();
      sub_100BE64CC(v6, v3);
      v12 = *(v1 + 8);
      v12(v3, v0);
      v12(v6, v0);
    }

    type metadata accessor for RecognitionController();
    static RecognitionController.presentEducationPaneIfNecessary(in:features:)();
    return (*(v1 + 8))(v9, v0);
  }

  return result;
}

uint64_t sub_1006EF98C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6F73616552646E65 && a2 == 0xE90000000000006ELL)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1006EFA1C(uint64_t a1)
{
  v2 = sub_1006EFBDC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1006EFA58(uint64_t a1)
{
  v2 = sub_1006EFBDC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SessionEndData.encode(to:)(void *a1, char a2)
{
  v4 = sub_1005B981C(&qword_1019FB8D0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9[-v6];
  sub_100020E58(a1, a1[3]);
  sub_1006EFBDC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[15] = a2;
  sub_1006EFC30();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1006EFBDC()
{
  result = qword_1019FB8D8;
  if (!qword_1019FB8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FB8D8);
  }

  return result;
}

unint64_t sub_1006EFC30()
{
  result = qword_1019FB8E0;
  if (!qword_1019FB8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FB8E0);
  }

  return result;
}

void *sub_1006EFCEC@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1006EFD34(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void *sub_1006EFD34(void *a1)
{
  v3 = sub_1005B981C(&qword_1019FB910);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = sub_100020E58(a1, a1[3]);
  sub_1006EFBDC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100005070(a1);
  }

  else
  {
    sub_1006F01BC();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9[15];
    sub_100005070(a1);
  }

  return v7;
}

unint64_t sub_1006EFEA8()
{
  result = qword_1019FB8E8;
  if (!qword_1019FB8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FB8E8);
  }

  return result;
}

unint64_t sub_1006EFF00()
{
  result = qword_1019FB8F0;
  if (!qword_1019FB8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FB8F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EndReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EndReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1006F00B8()
{
  result = qword_1019FB8F8;
  if (!qword_1019FB8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FB8F8);
  }

  return result;
}

unint64_t sub_1006F0110()
{
  result = qword_1019FB900;
  if (!qword_1019FB900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FB900);
  }

  return result;
}

unint64_t sub_1006F0168()
{
  result = qword_1019FB908;
  if (!qword_1019FB908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FB908);
  }

  return result;
}

unint64_t sub_1006F01BC()
{
  result = qword_1019FB918;
  if (!qword_1019FB918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FB918);
  }

  return result;
}

uint64_t sub_1006F02DC(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, unsigned int *a4)
{
  v6 = a2(0);
  sub_10061655C(v6, a3);
  v7 = sub_1005EB3DC(v6, a3);
  v8 = *a4;
  v9 = *(*(v6 - 8) + 104);

  return v9(v7, v8, v6);
}

uint64_t sub_1006F03D8()
{
  v0 = type metadata accessor for TimeDurationGranularity();
  sub_10061655C(v0, static AppSessionEndEvent.timeDurationGranularity);
  sub_1005EB3DC(v0, static AppSessionEndEvent.timeDurationGranularity);
  return static TimeDurationGranularity.seconds.getter();
}

uint64_t sub_1006F045C(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = a2(0);
  }

  else
  {
    swift_once();
    v4 = a2(0);
  }

  return sub_1005EB3DC(v4, a3);
}

uint64_t sub_1006F04F4@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = sub_1005EB3DC(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t BoardInitialAppStateEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1005B981C(&qword_1019F2D40);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t BoardInitialAppStateEvent.eventData.setter(uint64_t a1)
{
  v3 = sub_1005B981C(&qword_1019F2D40);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AppSessionEndEvent.sessionEndData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 20);
  v4 = sub_1005B981C(&qword_1019F2D48);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppSessionEndEvent.sessionEndData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 20);
  v4 = sub_1005B981C(&qword_1019F2D48);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionEndEvent.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 24);
  v4 = sub_1005B981C(&qword_1019F2D50);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppSessionEndEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 24);
  v4 = sub_1005B981C(&qword_1019F2D50);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionEndEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_1005B981C(&qword_1019F2D40);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for AppSessionEndEvent(0);
  v5 = *(v4 + 20);
  v6 = sub_1005B981C(&qword_1019F2D48);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = *(v4 + 24);
  v8 = sub_1005B981C(&qword_1019F2D50);
  v9 = *(*(v8 - 8) + 104);

  return v9(a1 + v7, v2, v8);
}

uint64_t BoardInitialAppStateEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EventData();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AppSessionEndEvent.Model.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionEndEvent.Model(0) + 24);
  v4 = type metadata accessor for TimedData();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppSessionEndEvent.Model.init(eventData:sessionEndData:timedData:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for EventData();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for AppSessionEndEvent.Model(0);
  *(a4 + *(v9 + 20)) = a2;
  v10 = *(v9 + 24);
  v11 = type metadata accessor for TimedData();
  v12 = *(*(v11 - 8) + 32);

  return v12(a4 + v10, a3, v11);
}

uint64_t sub_1006F0C70()
{
  v1 = 0x456E6F6973736573;
  if (*v0 != 1)
  {
    v1 = 0x74614464656D6974;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746144746E657665;
  }
}

uint64_t sub_1006F0CD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1006F1CF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1006F0D00(uint64_t a1)
{
  v2 = sub_1006F0FC0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1006F0D3C(uint64_t a1)
{
  v2 = sub_1006F0FC0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AppSessionEndEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_1019FB920);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_100020E58(a1, a1[3]);
  sub_1006F0FC0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = 0;
  type metadata accessor for EventData();
  sub_1006F1498(&qword_1019FB930, &type metadata accessor for EventData);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v10[14] = *(v3 + *(type metadata accessor for AppSessionEndEvent.Model(0) + 20));
    v10[13] = 1;
    sub_1006EFF00();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10[12] = 2;
    type metadata accessor for TimedData();
    sub_1006F1498(&qword_1019FB938, &type metadata accessor for TimedData);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1006F0FC0()
{
  result = qword_1019FB928;
  if (!qword_1019FB928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FB928);
  }

  return result;
}

uint64_t AppSessionEndEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v22 = type metadata accessor for TimedData();
  v20 = *(v22 - 8);
  __chkstk_darwin(v22);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for EventData();
  v24 = *(v27 - 8);
  __chkstk_darwin(v27);
  v25 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1005B981C(&qword_1019FB940);
  v23 = *(v26 - 8);
  __chkstk_darwin(v26);
  v8 = &v18 - v7;
  v9 = type metadata accessor for AppSessionEndEvent.Model(0);
  __chkstk_darwin(v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100020E58(a1, a1[3]);
  sub_1006F0FC0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005070(a1);
  }

  v13 = v23;
  v12 = v24;
  v18 = v5;
  v19 = v11;
  v31 = 0;
  sub_1006F1498(&qword_1019FB948, &type metadata accessor for EventData);
  v14 = v25;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v12 + 32))(v19, v14, v27);
  v29 = 1;
  sub_1006EFEA8();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v25 = v9;
  v15 = v19;
  v19[*(v9 + 20)] = v30;
  v28 = 2;
  sub_1006F1498(&qword_1019FB950, &type metadata accessor for TimedData);
  v16 = v22;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v13 + 8))(v8, v26);
  (*(v20 + 32))(v15 + *(v25 + 6), v18, v16);
  sub_1006F14E0(v15, v21);
  sub_100005070(a1);
  return sub_1006F1544(v15);
}

uint64_t sub_1006F1498(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1006F14E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppSessionEndEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006F1544(uint64_t a1)
{
  v2 = type metadata accessor for AppSessionEndEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1006F167C@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = sub_1005EB3DC(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_1006F1740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_1005B981C(&qword_1019F2D40);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = sub_1005B981C(&qword_1019F2D48);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = *(a1 + 24);
  v9 = sub_1005B981C(&qword_1019F2D50);
  v10 = *(*(v9 - 8) + 104);

  return v10(a2 + v8, v4, v9);
}

void sub_1006F188C()
{
  sub_1006F1928();
  if (v0 <= 0x3F)
  {
    sub_1006F19F4();
    if (v1 <= 0x3F)
    {
      sub_1006F1A5C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1006F1928()
{
  if (!qword_1019FB9C0)
  {
    type metadata accessor for EventData();
    sub_1006F1498(&qword_1019FB948, &type metadata accessor for EventData);
    sub_1006F1498(&qword_1019FB930, &type metadata accessor for EventData);
    v0 = type metadata accessor for EventProperty();
    if (!v1)
    {
      atomic_store(v0, &qword_1019FB9C0);
    }
  }
}

void sub_1006F19F4()
{
  if (!qword_1019FB9C8)
  {
    sub_1006EFEA8();
    sub_1006EFF00();
    v0 = type metadata accessor for EventProperty();
    if (!v1)
    {
      atomic_store(v0, &qword_1019FB9C8);
    }
  }
}

void sub_1006F1A5C()
{
  if (!qword_1019FB9D0)
  {
    type metadata accessor for TimedData();
    sub_1006F1498(&qword_1019FB950, &type metadata accessor for TimedData);
    sub_1006F1498(&qword_1019FB938, &type metadata accessor for TimedData);
    v0 = type metadata accessor for EventProperty();
    if (!v1)
    {
      atomic_store(v0, &qword_1019FB9D0);
    }
  }
}

uint64_t sub_1006F1B50()
{
  result = type metadata accessor for EventData();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TimedData();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1006F1BF0()
{
  result = qword_1019FBAA0;
  if (!qword_1019FBAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FBAA0);
  }

  return result;
}

unint64_t sub_1006F1C48()
{
  result = qword_1019FBAA8;
  if (!qword_1019FBAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FBAA8);
  }

  return result;
}

unint64_t sub_1006F1CA0()
{
  result = qword_1019FBAB0;
  if (!qword_1019FBAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FBAB0);
  }

  return result;
}

uint64_t sub_1006F1CF4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x456E6F6973736573 && a2 == 0xEE0061746144646ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

BOOL ProductType.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101874230, v2);

  return v3 != 0;
}

unint64_t sub_1006F1E70()
{
  result = qword_1019FBAB8;
  if (!qword_1019FBAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FBAB8);
  }

  return result;
}

Swift::Int sub_1006F1EC4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1006F1F30()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1006F1F80@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_101874268, *a1);

  *a2 = v3 != 0;
  return result;
}

unint64_t sub_1006F20B0()
{
  result = qword_1019FBAC0;
  if (!qword_1019FBAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FBAC0);
  }

  return result;
}

uint64_t sub_1006F2104()
{
  v0 = type metadata accessor for Date();
  v13 = *(v0 - 8);
  v14 = v0;
  __chkstk_darwin(v0);
  v2 = &v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Session.Kind();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v11, enum case for Session.Kind.userEvents(_:), v7, v9);

  UUID.init()();
  UUID.uuidString.getter();
  (*(v4 + 8))(v6, v3);
  Date.init()();
  SessionManager.start(for:identifier:startDate:)();

  (*(v13 + 8))(v2, v14);
  return (*(v8 + 8))(v11, v7);
}

uint64_t UserData.userID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DebugData.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t UserData.userStorefrontID.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t UserData.userStorefrontID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t UserData.userHashMod.setter(uint64_t result)
{
  *(v1 + 40) = result;
  *(v1 + 44) = BYTE4(result) & 1;
  return result;
}

void __swiftcall UserData.init(userID:userStartMonth:userStartYear:userStorefrontID:userHashMod:)(Freeform::UserData *__return_ptr retstr, Swift::String userID, Swift::Int32 userStartMonth, Swift::Int32 userStartYear, Swift::String userStorefrontID, Swift::Int32_optional userHashMod)
{
  retstr->userID = userID;
  retstr->userStartMonth = userStartMonth;
  retstr->userStartYear = userStartYear;
  retstr->userStorefrontID = userStorefrontID;
  retstr->userHashMod.value = userHashMod.value;
  retstr->userHashMod.is_nil = userHashMod.is_nil;
}

uint64_t sub_1006F262C()
{
  v1 = *v0;
  v2 = 0x444972657375;
  v3 = 0x7261745372657375;
  v4 = 0xD000000000000010;
  if (v1 != 3)
  {
    v4 = 0x6873614872657375;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7261745372657375;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1006F26E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1006F2A28(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1006F2710(uint64_t a1)
{
  v2 = sub_1006F2978();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1006F274C(uint64_t a1)
{
  v2 = sub_1006F2978();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t UserData.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_1019FBB30);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_100020E58(a1, a1[3]);
  sub_1006F2978();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v11[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v11[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v11[12] = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  v10 = *(v3 + 44);
  v11[11] = 4;
  v11[8] = v10;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1006F2978()
{
  result = qword_1019FBB38;
  if (!qword_1019FBB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FBB38);
  }

  return result;
}

double UserData.init(from:)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1006F2BF0(a1, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a2 = v6;
    a2[1] = v5;
    result = *(v7 + 13);
    *(a2 + 29) = *(v7 + 13);
  }

  return result;
}

uint64_t sub_1006F2A28(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444972657375 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7261745372657375 && a2 == 0xEE0068746E6F4D74 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7261745372657375 && a2 == 0xED00007261655974 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010155FC40 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6873614872657375 && a2 == 0xEB00000000646F4DLL)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1006F2BF0@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1005B981C(&qword_1019FBB68);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - v7;
  sub_100020E58(a1, a1[3]);
  sub_1006F2978();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005070(a1);
  }

  LOBYTE(v26[0]) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  v12 = v9;
  LOBYTE(v26[0]) = 1;
  v33 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v26[0]) = 2;
  v22 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v26[0]) = 3;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v23 = v14;
  v21 = v13;
  v35 = 4;
  v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v34 = BYTE4(v15) & 1;
  *&v24 = v12;
  *(&v24 + 1) = v11;
  v16 = v22;
  *v25 = v33;
  *&v25[4] = v22;
  v17 = v21;
  *&v25[8] = v21;
  *&v25[16] = v23;
  *&v25[24] = v15;
  v25[28] = BYTE4(v15) & 1;
  sub_1006F3168(&v24, v26);
  sub_100005070(a1);
  v26[0] = v12;
  v26[1] = v11;
  v27 = v33;
  v28 = v16;
  v29 = v17;
  v30 = v23;
  v31 = v15;
  v32 = BYTE4(v15) & 1;
  result = sub_1006F31A0(v26);
  v19 = *v25;
  *a2 = v24;
  a2[1] = v19;
  *(a2 + 29) = *&v25[13];
  return result;
}

unint64_t sub_1006F2EE8()
{
  result = qword_1019FBB40;
  if (!qword_1019FBB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FBB40);
  }

  return result;
}

unint64_t sub_1006F2F40()
{
  result = qword_1019FBB48;
  if (!qword_1019FBB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FBB48);
  }

  return result;
}

__n128 sub_1006F2F94(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 29) = *(a2 + 29);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1006F2FA8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 45))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1006F2FF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 44) = 0;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 45) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 45) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1006F3064()
{
  result = qword_1019FBB50;
  if (!qword_1019FBB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FBB50);
  }

  return result;
}

unint64_t sub_1006F30BC()
{
  result = qword_1019FBB58;
  if (!qword_1019FBB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FBB58);
  }

  return result;
}

unint64_t sub_1006F3114()
{
  result = qword_1019FBB60;
  if (!qword_1019FBB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FBB60);
  }

  return result;
}

uint64_t AppData.appBuild.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_1006F3270()
{
  if (*v0)
  {
    return 0x646C697542707061;
  }

  else
  {
    return 0x6973726556707061;
  }
}

uint64_t sub_1006F32B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6973726556707061 && a2 == 0xEA00000000006E6FLL;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x646C697542707061 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1006F3394(uint64_t a1)
{
  v2 = sub_1006F35A0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1006F33D0(uint64_t a1)
{
  v2 = sub_1006F35A0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AppData.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = sub_1005B981C(&qword_1019FBB70);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  sub_100020E58(a1, a1[3]);
  sub_1006F35A0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

unint64_t sub_1006F35A0()
{
  result = qword_1019FBB78;
  if (!qword_1019FBB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FBB78);
  }

  return result;
}

uint64_t AppData.init(from:)(void *a1)
{
  result = sub_1006F3670(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_1006F3620@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1006F3670(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_1006F3670(void *a1)
{
  v3 = sub_1005B981C(&qword_1019FBBA8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_100020E58(a1, a1[3]);
  sub_1006F35A0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v11 = 0;
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    v10 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_100005070(a1);
  return v7;
}

uint64_t sub_1006F3854(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1006F389C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1006F38F0()
{
  result = qword_1019FBB90;
  if (!qword_1019FBB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FBB90);
  }

  return result;
}

unint64_t sub_1006F3948()
{
  result = qword_1019FBB98;
  if (!qword_1019FBB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FBB98);
  }

  return result;
}

unint64_t sub_1006F39A0()
{
  result = qword_1019FBBA0;
  if (!qword_1019FBBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FBBA0);
  }

  return result;
}

uint64_t EndReason.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x636142656E656373;
  if (a1 != 6)
  {
    v2 = 0x726568746FLL;
  }

  v3 = 0x74657365524449;
  if (a1 != 4)
  {
    v3 = 0x6873617263;
  }

  if (a1 <= 5u)
  {
    v2 = v3;
  }

  v4 = 0x6975516563726F66;
  if (a1 != 2)
  {
    v4 = 1953068401;
  }

  if (a1)
  {
    v1 = 0x676B636142707061;
  }

  if (a1 > 1u)
  {
    v1 = v4;
  }

  if (a1 <= 3u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1006F3B28@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s8Freeform9EndReasonO8rawValueACSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_1006F3B58(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xEF646E756F72676BLL;
  v6 = 0x636142656E656373;
  if (v2 != 6)
  {
    v6 = 0x726568746FLL;
    v5 = 0xE500000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x74657365524449;
  if (v2 != 4)
  {
    v8 = 0x6873617263;
    v7 = 0xE500000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE900000000000074;
  v10 = 0x6975516563726F66;
  if (v2 != 2)
  {
    v10 = 1953068401;
    v9 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = 0x676B636142707061;
    v3 = 0xED0000646E756F72;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t _s8Freeform9EndReasonO8rawValueACSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1018742A0, v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1006F3D64()
{
  result = qword_1019FBBB0;
  if (!qword_1019FBBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FBBB0);
  }

  return result;
}

unint64_t sub_1006F3DC8()
{
  result = qword_1019FBBB8;
  if (!qword_1019FBBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FBBB8);
  }

  return result;
}

uint64_t ICloudAccountState.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6E776F6E6B6E75;
  }

  if (a1 == 1)
  {
    return 0x6E49646567676F6CLL;
  }

  return 0x754F646567676F6CLL;
}

uint64_t sub_1006F3E7C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x6E49646567676F6CLL;
  if (v2 != 1)
  {
    v4 = 0x754F646567676F6CLL;
    v3 = 0xE900000000000074;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x6E49646567676F6CLL;
  if (*a2 != 1)
  {
    v8 = 0x754F646567676F6CLL;
    v7 = 0xE900000000000074;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
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

Swift::Int sub_1006F3F88()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1006F4030()
{
  String.hash(into:)();
}

Swift::Int sub_1006F40C4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1006F4168@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s8Freeform18ICloudAccountStateO8rawValueACSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_1006F4198(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x6E49646567676F6CLL;
  if (v2 != 1)
  {
    v5 = 0x754F646567676F6CLL;
    v4 = 0xE900000000000074;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t _s8Freeform18ICloudAccountStateO8rawValueACSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101874380, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1006F42FC()
{
  result = qword_1019FBBC0;
  if (!qword_1019FBBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FBBC0);
  }

  return result;
}

unint64_t sub_1006F4360()
{
  result = qword_1019FBBC8;
  if (!qword_1019FBBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FBBC8);
  }

  return result;
}

Freeform::OsInstallVariant_optional __swiftcall OsInstallVariant.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1018743E8, v2);

  if (v3 == 1)
  {
    v4.value = Freeform_OsInstallVariant_external;
  }

  else
  {
    v4.value = Freeform_OsInstallVariant_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t OsInstallVariant.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6C616E7265747865;
  }

  else
  {
    return 0x6C616E7265746E69;
  }
}

uint64_t sub_1006F442C(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x6C616E7265747865;
  }

  else
  {
    v2 = 0x6C616E7265746E69;
  }

  if (*a2)
  {
    v3 = 0x6C616E7265747865;
  }

  else
  {
    v3 = 0x6C616E7265746E69;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

unint64_t sub_1006F44AC()
{
  result = qword_1019FBBD0;
  if (!qword_1019FBBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FBBD0);
  }

  return result;
}

Swift::Int sub_1006F4500()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1006F456C()
{
  String.hash(into:)();
}

Swift::Int sub_1006F45BC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1006F4624@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1018743E8, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1006F4684(uint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0x6C616E7265747865;
  }

  else
  {
    v2 = 0x6C616E7265746E69;
  }

  *a1 = v2;
  a1[1] = 0xE800000000000000;
}

unint64_t sub_1006F4770()
{
  result = qword_1019FBBD8;
  if (!qword_1019FBBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FBBD8);
  }

  return result;
}

uint64_t SyncEvent.FetchedRecordZoneChanges.Deletion.recordType.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t sub_1006F4890()
{
  v1 = *v0;
  v2 = 0x657366664F637475;
  v3 = 0x54746375646F7270;
  if (v1 == 3)
  {
    v4 = 0xD000000000000012;
  }

  else
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x437972746E756F63;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1006F494C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1006F4DE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1006F4974(uint64_t a1)
{
  v2 = sub_1006F4C38();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1006F49B0(uint64_t a1)
{
  v2 = sub_1006F4C38();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SessionData.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v13[0] = a3;
  v13[1] = a4;
  v8 = sub_1005B981C(&qword_1019FBBE0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v13 - v10;
  sub_100020E58(a1, a1[3]);
  sub_1006F4C38();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v19 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v18 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = 2;
    sub_1006F4C8C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v16 = a5;
    v15 = 3;
    sub_1006F4CE0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_1006F4C38()
{
  result = qword_1019FBBE8;
  if (!qword_1019FBBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FBBE8);
  }

  return result;
}

unint64_t sub_1006F4C8C()
{
  result = qword_1019FBBF0;
  if (!qword_1019FBBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FBBF0);
  }

  return result;
}

unint64_t sub_1006F4CE0()
{
  result = qword_1019FBBF8;
  if (!qword_1019FBBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FBBF8);
  }

  return result;
}

uint64_t SessionData.init(from:)(void *a1)
{
  LODWORD(result) = sub_1006F4FA8(a1);
  if (v1)
  {
    return v3 & 0x1FF;
  }

  else
  {
    return result;
  }
}

uint64_t sub_1006F4D68@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1006F4FA8(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
    *(a2 + 25) = HIBYTE(v7) & 1;
  }

  return result;
}

uint64_t sub_1006F4DE0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657366664F637475 && a2 == 0xE900000000000074;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x437972746E756F63 && a2 == 0xEB0000000065646FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x54746375646F7270 && a2 == 0xEB00000000657079 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x800000010155FC60 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010155FC80 == a2)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1006F4FA8(void *a1)
{
  v3 = sub_1005B981C(&qword_1019FBC28);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = a1[4];
  sub_100020E58(a1, a1[3]);
  sub_1006F4C38();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v15 = 0;
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    v14 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    v13 = 2;
    sub_1006F54BC();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v11 = 3;
    sub_1006F5510();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9[3] = v12;
    v10 = 4;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_100005070(a1);
  return v7;
}

unint64_t sub_1006F5248()
{
  result = qword_1019FBC00;
  if (!qword_1019FBC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FBC00);
  }

  return result;
}

unint64_t sub_1006F52A0()
{
  result = qword_1019FBC08;
  if (!qword_1019FBC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FBC08);
  }

  return result;
}

__n128 sub_1006F52F4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_1006F5308(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 26))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1006F5350(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 26) = 1;
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

    *(result + 26) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1006F53B8()
{
  result = qword_1019FBC10;
  if (!qword_1019FBC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FBC10);
  }

  return result;
}

unint64_t sub_1006F5410()
{
  result = qword_1019FBC18;
  if (!qword_1019FBC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FBC18);
  }

  return result;
}

unint64_t sub_1006F5468()
{
  result = qword_1019FBC20;
  if (!qword_1019FBC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FBC20);
  }

  return result;
}

unint64_t sub_1006F54BC()
{
  result = qword_1019FBC30;
  if (!qword_1019FBC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FBC30);
  }

  return result;
}

unint64_t sub_1006F5510()
{
  result = qword_1019FBC38;
  if (!qword_1019FBC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FBC38);
  }

  return result;
}

uint64_t DevicePlatform.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x534F64615069;
  v3 = 0x534F63616DLL;
  if (a1 != 3)
  {
    v3 = 0x534F6E6F69736976;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 5459817;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

Swift::Int sub_1006F5600()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1006F56D4()
{
  String.hash(into:)();
}

Swift::Int sub_1006F5794()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1006F5864@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s8Freeform14DevicePlatformO8rawValueACSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_1006F5894(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE600000000000000;
  v6 = 0x534F64615069;
  v7 = 0xE500000000000000;
  v8 = 0x534F63616DLL;
  if (v2 != 3)
  {
    v8 = 0x534F6E6F69736976;
    v7 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 5459817;
    v3 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t _s8Freeform14DevicePlatformO8rawValueACSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101874438, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1006F5A24()
{
  result = qword_1019FBC40;
  if (!qword_1019FBC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FBC40);
  }

  return result;
}

unint64_t sub_1006F5A88()
{
  result = qword_1019FBC48;
  if (!qword_1019FBC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FBC48);
  }

  return result;
}

void sub_1006F5ADC()
{
  sub_1006C550C(319, &qword_1019FBCE8, &unk_1019FC490);
  if (v0 <= 0x3F)
  {
    sub_1006C550C(319, &qword_1019FBCF0, &qword_1019FBCF8);
    if (v1 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

uint64_t sub_1006F5BE8()
{
  v1 = v0;
  v2 = sub_1005B981C(&unk_1019FC490);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - v4;
  v6 = qword_1019FBC50;
  swift_beginAccess();
  if (!(*(v3 + 48))(v1 + v6, 1, v2))
  {
    (*(v3 + 16))(v5, v1 + v6, v2);
    AsyncStream.Continuation.finish()();
    (*(v3 + 8))(v5, v2);
  }

  sub_10000CAAC(v1 + v6, &qword_1019FC4A0);
  sub_10000CAAC(v1 + qword_1019FBC58, &qword_1019FC4D0);

  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_1006F5D74()
{
  sub_1006F5BE8();

  return swift_defaultActor_deallocate();
}

uint64_t sub_1006F5EF4()
{
  v0 = type metadata accessor for TimeDurationGranularity();
  sub_10061655C(v0, static AppSessionStartEvent.timeDurationGranularity);
  sub_1005EB3DC(v0, static AppSessionStartEvent.timeDurationGranularity);
  return static TimeDurationGranularity.milliseconds.getter();
}

uint64_t AppSessionStartEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_1005B981C(&qword_1019F2D40);
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t AppSessionStartEvent.Model.init(eventData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for EventData();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_1006F60B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1006F6148(uint64_t a1)
{
  v2 = sub_1006F6324();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1006F6184(uint64_t a1)
{
  v2 = sub_1006F6324();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AppSessionStartEvent.Model.encode(to:)(void *a1)
{
  v2 = sub_1005B981C(&qword_1019FBD00);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_100020E58(a1, a1[3]);
  sub_1006F6324();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for EventData();
  sub_1006F6604(&qword_1019FB930);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1006F6324()
{
  result = qword_1019FBD08;
  if (!qword_1019FBD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FBD08);
  }

  return result;
}

uint64_t AppSessionStartEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v3 = type metadata accessor for EventData();
  v17 = *(v3 - 8);
  __chkstk_darwin(v3);
  v18 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1005B981C(&qword_1019FBD10);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - v7;
  started = type metadata accessor for AppSessionStartEvent.Model(0);
  __chkstk_darwin(started - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100020E58(a1, a1[3]);
  sub_1006F6324();
  v12 = v19;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v12)
  {
    v13 = v17;
    sub_1006F6604(&qword_1019FB948);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    (*(v13 + 32))(v11, v18, v3);
    sub_1006F6648(v11, v16);
  }

  return sub_100005070(a1);
}

uint64_t sub_1006F6604(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for EventData();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1006F6648(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for AppSessionStartEvent.Model(0);
  (*(*(started - 8) + 32))(a2, a1, started);
  return a2;
}

uint64_t sub_1006F680C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1006F6890()
{
  result = qword_1019FBE38;
  if (!qword_1019FBE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FBE38);
  }

  return result;
}

unint64_t sub_1006F68E8()
{
  result = qword_1019FBE40;
  if (!qword_1019FBE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FBE40);
  }

  return result;
}

unint64_t sub_1006F6940()
{
  result = qword_1019FBE48;
  if (!qword_1019FBE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FBE48);
  }

  return result;
}

uint64_t sub_1006F6994(uint64_t a1)
{
  v2 = v1;
  v3 = sub_10003E994(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_100AA37A4();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v7 + 56) + 16 * v5);
  sub_100BCC908(v5, v7);
  *v2 = v7;
  return v10;
}

uint64_t sub_1006F6A70(uint64_t a1)
{
  v2 = v1;
  v3 = sub_10003E994(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_100AA53D0();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v7 + 56) + 32 * v5);
  sub_100BCDD6C(v5, v7);
  *v2 = v7;
  return v10;
}

uint64_t sub_1006F6B94(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1007C880C(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_100AA5C6C();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = type metadata accessor for CRLPreviewImages.Item(0);
  sub_100025C08(v8 + *(*(v9 - 8) + 72) * v5, type metadata accessor for CRLPreviewImages.Item);
  v10 = *(*(v7 + 56) + 8 * v5);
  sub_100BCEDF0(v5, v7);
  *v2 = v7;
  return v10;
}

unint64_t sub_1006F6C58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  result = sub_1007C7EC0(a1);
  v7 = v6;
  if (v6)
  {
    v8 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100AA78C0();
      v10 = v11;
    }

    sub_10003DFF8(*(v10 + 56) + 8 * v8, a2, &qword_1019FBEF0);
    result = sub_100BCF59C(v8, v10);
    *v3 = v10;
  }

  else
  {
    *a2 = 0;
  }

  *(a2 + 8) = (v7 & 1) == 0;
  return result;
}

uint64_t sub_1006F6D3C(uint64_t a1, void (*a2)(unint64_t, uint64_t), void (*a3)(void))
{
  v6 = v3;
  v7 = sub_1000486F0(a1);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v3;
  v16 = *v6;
  if (!isUniquelyReferenced_nonNull_native)
  {
    a3();
    v11 = v16;
  }

  v12 = *(v11 + 48);
  v13 = type metadata accessor for CRLBoardIdentifier(0);
  sub_100025C08(v12 + *(*(v13 - 8) + 72) * v9, type metadata accessor for CRLBoardIdentifier);
  v14 = *(*(v11 + 56) + 8 * v9);
  a2(v9, v11);
  *v6 = v11;
  return v14;
}

uint64_t sub_1006F6E9C(uint64_t a1, void (*a2)(unint64_t, uint64_t), void (*a3)(void))
{
  v6 = v3;
  v7 = sub_10003E994(a1);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v3;
  v16 = *v6;
  if (!isUniquelyReferenced_nonNull_native)
  {
    a3();
    v11 = v16;
  }

  v12 = *(v11 + 48);
  v13 = type metadata accessor for UUID();
  (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v9, v13);
  v14 = *(*(v11 + 56) + 8 * v9);
  a2(v9, v11);
  *v6 = v11;
  return v14;
}

void sub_1006F6F7C(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_10003E994(a1);
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  if (v10)
  {
    v11 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100AA9610();
      v13 = v21;
    }

    v14 = *(v13 + 48);
    v15 = type metadata accessor for UUID();
    (*(*(v15 - 8) + 8))(v14 + *(*(v15 - 8) + 72) * v11, v15);
    v16 = (*(v13 + 56) + (v11 << 6));
    v19 = *v16;
    v20 = v16[1];
    v17 = v16[2];
    v18 = v16[3];
    sub_100BD0100(v11, v13);
    v8 = v17;
    v9 = v18;
    v6 = v19;
    v7 = v20;
    *v3 = v13;
  }

  *a2 = v6;
  a2[1] = v7;
  a2[2] = v8;
  a2[3] = v9;
}

uint64_t sub_1006F7074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_10003E994(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100AA46A0();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = sub_1005B981C(&qword_1019FBED8);
    v20 = *(v13 - 8);
    sub_10003DFF8(v12 + *(v20 + 72) * v7, a2, &qword_1019FBED8);
    sub_100BCD3A8(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = sub_1005B981C(&qword_1019FBED8);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t *AASApplicationManager.shared.unsafeMutableAddressor()
{
  if (qword_1019F14F0 != -1)
  {
    swift_once();
  }

  return &static AASApplicationManager.shared;
}

id static AASApplicationManager.shared.getter()
{
  if (qword_1019F14F0 != -1)
  {
    swift_once();
  }

  v1 = static AASApplicationManager.shared;

  return v1;
}

uint64_t AASApplicationManager.userInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8Freeform21AASApplicationManager_userInfo;
  swift_beginAccess();
  return sub_10005FE44(v1 + v3, a1);
}

uint64_t AASApplicationManager.userInfo.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8Freeform21AASApplicationManager_userInfo;
  swift_beginAccess();
  sub_10002C638(a1, v1 + v3, &qword_1019FBE50);
  return swift_endAccess();
}

uint64_t AASApplicationManager.isSaltRegenerated.getter()
{
  v1 = OBJC_IVAR____TtC8Freeform21AASApplicationManager_isSaltRegenerated;
  swift_beginAccess();
  return *(v0 + v1);
}

void AASApplicationManager.setup(dependencies:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  sub_1006F8364(a1, v2, ObjectType, a2);
}

uint64_t *NSNotificationName.AASUserIdentifierDidResetNotification.unsafeMutableAddressor()
{
  if (qword_1019F14F8 != -1)
  {
    swift_once();
  }

  return &static NSNotificationName.AASUserIdentifierDidResetNotification;
}

void sub_1006F7634()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform21AASApplicationManager_rootSessionManager);
  *(v0 + OBJC_IVAR____TtC8Freeform21AASApplicationManager_rootSessionManager) = 0;

  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver:v0 name:UIApplicationWillTerminateNotification object:0];
  [v2 removeObserver:v0 name:UIApplicationDidBecomeActiveNotification object:0];
  [v2 removeObserver:v0 name:UIApplicationWillResignActiveNotification object:0];
  [v2 removeObserver:v0 name:UIApplicationWillEnterForegroundNotification object:0];
  [v2 removeObserver:v0 name:UIApplicationDidEnterBackgroundNotification object:0];
}

uint64_t AASApplicationManager.chain(name:id:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(v3 + OBJC_IVAR____TtC8Freeform21AASApplicationManager_trackersCoordinator))
  {
    return 0;
  }

  v7 = sub_10078BDC0(a1, a2, a3);

  return v7;
}

uint64_t AASApplicationManager.removeTracker(id:)(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC8Freeform21AASApplicationManager_trackersCoordinator))
  {
    v2 = result;
    swift_beginAccess();

    sub_1006F6C58(v2, v3);
    swift_endAccess();

    return sub_10000CAAC(v3, &qword_1019FBE68);
  }

  return result;
}

uint64_t AASApplicationManager.push(eventData:trait:)(void *a1, uint64_t a2)
{
  v4 = a1[3];
  v5 = a1[4];
  v6 = sub_100020E58(a1, v4);

  return sub_1006F8984(v6, a2, v2, v4, v5);
}

uint64_t AASApplicationManager.submit<A>(eventType:onlyIfTimed:completion:)(uint64_t result, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(v6 + OBJC_IVAR____TtC8Freeform21AASApplicationManager_trackersCoordinator))
  {
    v12 = result;

    sub_10078BF10(v12, a2 & 1, a3, a4, a5, a6);
  }

  return result;
}

void sub_1006F794C()
{
  if (*(v0 + OBJC_IVAR____TtC8Freeform21AASApplicationManager_trackersCoordinator))
  {

    sub_10078C37C(2);
  }

  v1 = *(v0 + OBJC_IVAR____TtC8Freeform21AASApplicationManager_rootSessionManager);
  if (v1)
  {
    v2 = v1;

    SessionManager.endSync()();
  }

  AppSessionManager.appSessionDidTerminate()();

  sub_1006F7634();
}

void sub_1006F7A4C()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() sharedApplication];
  v7 = String._bridgeToObjectiveC()();
  aBlock[4] = sub_1006F7CA4;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_101882FC0;
  v8 = _Block_copy(aBlock);
  v9 = [v6 beginBackgroundTaskWithName:v7 expirationHandler:v8];
  _Block_release(v8);

  if (*(v1 + OBJC_IVAR____TtC8Freeform21AASApplicationManager_trackersCoordinator))
  {

    sub_10078C37C(1);
  }

  if (*(v1 + OBJC_IVAR____TtC8Freeform21AASApplicationManager_rootSessionManager))
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v6;
    *(v10 + 24) = v9;

    v11 = v6;
    Date.init()();
    SessionManager.end(endDate:completion:)();

    (*(v3 + 8))(v5, v2);
  }

  else
  {
  }
}

void sub_1006F7CA4()
{
  if (qword_1019F2118 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static OS_os_log.crlAppAnalytics;
  v1 = static os_log_type_t.default.getter();
  sub_100005404(v0, &_mh_execute_header, v1, "App terminate by sys.", 21, 2, _swiftEmptyArrayStorage);
}

uint64_t sub_1006F7D9C()
{
  v1 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v1 - 8);
  v3 = &v29 - v2;
  v4 = sub_1005B981C(&qword_1019FBEE0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v29 - v9;
  v11 = OBJC_IVAR____TtC8Freeform21AASApplicationManager_isSaltRegenerated;
  result = swift_beginAccess();
  *(v0 + v11) = 1;
  v13 = v0 + OBJC_IVAR____TtC8Freeform21AASApplicationManager_sessionPropertiesController;
  v14 = *(v0 + OBJC_IVAR____TtC8Freeform21AASApplicationManager_sessionPropertiesController);
  if (v14)
  {
    v15 = *(v13 + 32);
    v16 = *(v13 + 24);
    v31 = *(v13 + 16);
    v29 = *(v13 + 8);
    v30 = v15 & 1;
    v17 = objc_opt_self();

    v32 = v16;

    v18 = [v17 standardUserDefaults];
    v19 = String._bridgeToObjectiveC()();
    v20 = [v18 stringForKey:v19];

    if (v20)
    {
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;
    }

    else
    {
      v21 = 0;
      v23 = 0xE000000000000000;
    }

    v33 = v21;
    v34 = v23;
    sub_100011DE8();
    SessionData.init(key:data:)();
    (*(v5 + 16))(v7, v10, v4);
    v24 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v25 = swift_allocObject();
    (*(v5 + 32))(v25 + v24, v7, v4);
    SessionManager.transaction(_:)();

    (*(v5 + 8))(v10, v4);
    v26 = type metadata accessor for TaskPriority();
    (*(*(v26 - 8) + 56))(v3, 1, 1, v26);
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    *(v27 + 24) = 0;
    *(v27 + 32) = v14;
    *(v27 + 40) = v29;
    *(v27 + 41) = v33;
    *(v27 + 44) = *(&v33 + 3);
    v28 = v32;
    *(v27 + 48) = v31;
    *(v27 + 56) = v28;
    *(v27 + 64) = v30;
    sub_10064191C(0, 0, v3, &unk_101476330, v27);
  }

  return result;
}

id static NSNotificationName.AASUserIdentifierDidResetNotification.getter()
{
  if (qword_1019F14F8 != -1)
  {
    swift_once();
  }

  v1 = static NSNotificationName.AASUserIdentifierDidResetNotification;

  return v1;
}

void sub_1006F8364(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  if (qword_1019F2118 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = static OS_os_log.crlAppAnalytics;
  v8 = static os_log_type_t.default.getter();
  sub_100005404(v7, &_mh_execute_header, v8, "Setup app analytics", 19, 2, _swiftEmptyArrayStorage);

  v9 = &a2[OBJC_IVAR____TtC8Freeform21AASApplicationManager_dependencies];
  *v9 = a1;
  *(v9 + 1) = a4;
  swift_unknownObjectRelease();
  type metadata accessor for FlushManager();
  v10 = *&a2[OBJC_IVAR____TtC8Freeform21AASApplicationManager_appSessionManager];
  swift_unknownObjectRetain();

  sub_10000F424();
  sub_10000F8D8();
  type metadata accessor for Client();
  v11 = [objc_opt_self() mainBundle];
  Client.__allocating_init(bundle:)();
  v12 = type metadata accessor for URLSessionUploadClientFactory();
  swift_allocObject();
  v45 = v12;
  v46 = &protocol witness table for URLSessionUploadClientFactory;
  v42 = URLSessionUploadClientFactory.init()();

  v13 = FlushManager.__allocating_init(appSessionManager:client:endpoint:contentType:config:clientFactory:)();
  *(swift_allocObject() + 16) = a2;
  v14 = a2;
  dispatch thunk of FlushManager.repairThenFlush(repair:completion:)();

  *&v14[OBJC_IVAR____TtC8Freeform21AASApplicationManager_flushManager] = v13;

  v15 = sub_10000F424();
  (*(a4 + 8))(a3, a4);
  v17 = v16;
  ObjectType = swift_getObjectType();
  (*(v17 + 16))(ObjectType, v17);
  swift_unknownObjectRelease();
  v19 = objc_allocWithZone(type metadata accessor for AASSessionManager());
  v20 = sub_1000105B4(v10, v15);

  v21 = OBJC_IVAR____TtC8Freeform17AASSessionManager_sessionManager;

  v22 = SessionManager.tracker.getter();

  type metadata accessor for AASTrackersCoordinator();
  v23 = swift_allocObject();
  *(v23 + 24) = 0u;
  *(v23 + 40) = 0u;
  *(v23 + 56) = 0;
  *(v23 + 64) = sub_100010D6C(_swiftEmptyArrayStorage);
  *(v23 + 16) = v22;
  swift_allocObject();
  swift_weakInit();

  Tracker.onSessionChange(block:)();

  v24 = OBJC_IVAR____TtC8Freeform21AASApplicationManager_trackersCoordinator;
  *&v14[OBJC_IVAR____TtC8Freeform21AASApplicationManager_trackersCoordinator] = v23;

  v25 = *&v14[v24];
  if (v25)
  {
    v26 = *(a4 + 16);

    v26(&v42, a3, a4);
    swift_beginAccess();
    sub_10002C638(&v42, v25 + 24, &unk_1019FF410);
    swift_endAccess();
  }

  AppSessionManager.startAppSession(shouldCorrelateSceneSessions:)(0);
  v27 = *&v14[OBJC_IVAR____TtC8Freeform21AASApplicationManager_rootSessionManager];
  *&v14[OBJC_IVAR____TtC8Freeform21AASApplicationManager_rootSessionManager] = v20;
  v28 = v20;

  v29 = *&v20[v21];

  v30 = sub_100010EA4();
  v31 = &v14[OBJC_IVAR____TtC8Freeform21AASApplicationManager_sessionPropertiesController];
  v32 = *&v14[OBJC_IVAR____TtC8Freeform21AASApplicationManager_sessionPropertiesController];
  *v31 = v29;
  *(v31 + 1) = v30;
  *(v31 + 2) = v34;
  *(v31 + 3) = v35;
  v31[32] = v33 & 1;
  sub_100011A4C(v32);
  if (*v31)
  {
    v36 = v31[32];
    v37 = *(v31 + 2);
    v38 = *(v31 + 3);
    v39 = *(v31 + 1);
    v42 = *v31;
    v43 = v39;
    v44 = v37;
    v45 = v38;
    LOBYTE(v46) = v36 & 1;

    sub_100011290();
  }

  v40 = [objc_opt_self() defaultCenter];
  [v40 addObserver:v14 selector:"applicationWillTerminate" name:UIApplicationWillTerminateNotification object:0];
  [v40 addObserver:v14 selector:"applicationWillResignActive" name:UIApplicationWillResignActiveNotification object:0];
  [v40 addObserver:v14 selector:"applicationWillEnterForeground" name:UIApplicationWillEnterForegroundNotification object:0];
  [v40 addObserver:v14 selector:"applicationDidEnterBackground" name:UIApplicationDidEnterBackgroundNotification object:0];
  if (qword_1019F14F8 != -1)
  {
    swift_once();
  }

  [v40 addObserver:v14 selector:? name:? object:?];
}

uint64_t sub_1006F8984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  v10 = __chkstk_darwin(a1);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v10);
  v13 = *(a3 + OBJC_IVAR____TtC8Freeform21AASApplicationManager_trackersCoordinator);
  if (v13)
  {

    sub_10078C7E8(v12, a2, v13, a4, a5);
  }

  return (*(v9 + 8))(v12, a4);
}

uint64_t sub_1006F8AAC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002D4C8;

  return sub_100B8FB7C(a1, v4, v5, v1 + 32);
}

uint64_t sub_1006F8B5C()
{
  sub_1005B981C(&qword_1019FBEE0);

  return sub_100B904C4();
}

uint64_t sub_1006F8BD8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 65, 7);
}

void __swiftcall DeviceData.init(deviceModel:devicePlatform:osVersion:osInstallVariant:)(Freeform::DeviceData *__return_ptr retstr, Swift::String deviceModel, Freeform::DevicePlatform devicePlatform, Swift::String osVersion, Freeform::OsInstallVariant osInstallVariant)
{
  retstr->deviceModel = deviceModel;
  retstr->devicePlatform = devicePlatform;
  retstr->osVersion = osVersion;
  retstr->osInstallVariant = osInstallVariant & 1;
}

unint64_t sub_1006F8DEC()
{
  v1 = 0x6F4D656369766564;
  v2 = 0x6F6973726556736FLL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x6C50656369766564;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1006F8E84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1006F9260(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1006F8EAC(uint64_t a1)
{
  v2 = sub_1006F9108();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1006F8EE8(uint64_t a1)
{
  v2 = sub_1006F9108();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t DeviceData.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_1019FBEF8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_100020E58(a1, a1[3]);
  sub_1006F9108();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v10[14] = *(v3 + 16);
    v10[13] = 1;
    sub_1006F915C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10[12] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[11] = *(v3 + 40);
    v10[10] = 3;
    sub_1006F91B0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1006F9108()
{
  result = qword_1019FBF00;
  if (!qword_1019FBF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FBF00);
  }

  return result;
}

unint64_t sub_1006F915C()
{
  result = qword_1019FBF08;
  if (!qword_1019FBF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FBF08);
  }

  return result;
}

unint64_t sub_1006F91B0()
{
  result = qword_1019FBF10;
  if (!qword_1019FBF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FBF10);
  }

  return result;
}

double DeviceData.init(from:)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1006F93E0(a1, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a2 = v6;
    a2[1] = v5;
    result = *(v7 + 9);
    *(a2 + 25) = *(v7 + 9);
  }

  return result;
}

uint64_t sub_1006F9260(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F4D656369766564 && a2 == 0xEB000000006C6564;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C50656369766564 && a2 == 0xEE006D726F667461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F6973726556736FLL && a2 == 0xE90000000000006ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101560000 == a2)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1006F93E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1005B981C(&qword_1019FBF40);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - v7;
  sub_100020E58(a1, a1[3]);
  sub_1006F9108();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005070(a1);
  }

  v27 = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  v21 = v9;
  v25 = 1;
  sub_1006F9834();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v12 = v26;
  v24 = 2;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  HIDWORD(v18) = v12;
  v19 = v13;
  v20 = v14;
  v22 = 3;
  sub_1006F9888();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v15 = v23;
  result = sub_100005070(a1);
  *a2 = v21;
  *(a2 + 8) = v11;
  *(a2 + 16) = BYTE4(v18);
  v17 = v20;
  *(a2 + 24) = v19;
  *(a2 + 32) = v17;
  *(a2 + 40) = v15;
  return result;
}

uint64_t sub_1006F9688(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1006F96D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1006F9730()
{
  result = qword_1019FBF28;
  if (!qword_1019FBF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FBF28);
  }

  return result;
}

unint64_t sub_1006F9788()
{
  result = qword_1019FBF30;
  if (!qword_1019FBF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FBF30);
  }

  return result;
}

unint64_t sub_1006F97E0()
{
  result = qword_1019FBF38;
  if (!qword_1019FBF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FBF38);
  }

  return result;
}

unint64_t sub_1006F9834()
{
  result = qword_1019FBF48;
  if (!qword_1019FBF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FBF48);
  }

  return result;
}

unint64_t sub_1006F9888()
{
  result = qword_1019FBF50;
  if (!qword_1019FBF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FBF50);
  }

  return result;
}

uint64_t _s18SurfaceCapsuleDataVMa()
{
  result = qword_1019FBFB0;
  if (!qword_1019FBFB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1006F9950()
{
  type metadata accessor for CRLContainerItemCRDTData(319);
  if (v0 <= 0x3F)
  {
    sub_100039F68();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1006F99D4()
{
  qword_101AD62C0 = 97;
  *algn_101AD62C8 = 0xE100000000000000;
  result = swift_getKeyPath();
  qword_101AD62D0 = result;
  return result;
}

uint64_t sub_1006F9A14()
{
  type metadata accessor for UUID();
  sub_1006FA954(&qword_1019FB870, &type metadata accessor for UUID);

  return static CROrderedSet.== infix(_:_:)();
}

uint64_t sub_1006F9AA8()
{
  if (qword_1019F1500 != -1)
  {
    swift_once();
  }

  v0 = qword_101AD62C0;

  return v0;
}

uint64_t sub_1006F9B28(uint64_t a1)
{
  v2 = sub_1006FA954(&qword_1019FC038, _s18SurfaceCapsuleDataVMa);

  return static CRStruct_1.fieldKeys.getter(a1, v2);
}

uint64_t sub_1006F9B94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + *(type metadata accessor for CRLContainerItemCRDTData(0) + 20)) = _swiftEmptyDictionarySingleton;
  type metadata accessor for UUID();
  sub_1006FA954(&qword_1019FB870, &type metadata accessor for UUID);
  result = CROrderedSet.init()();
  *(a2 + *(a1 + 20)) = _swiftEmptyDictionarySingleton;
  return result;
}

uint64_t sub_1006F9C38(uint64_t a1)
{
  v2 = sub_1006FA954(&qword_1019FC018, _s18SurfaceCapsuleDataVMa);

  return CRType.context.getter(a1, v2);
}

uint64_t sub_1006F9CA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1006FA954(&qword_1019FC038, _s18SurfaceCapsuleDataVMa);

  return CRStruct_1.newRefs(from:)(a1, a2, v4);
}

uint64_t sub_1006F9D20()
{
  sub_1006FA954(&qword_1019FC038, _s18SurfaceCapsuleDataVMa);

  return CRStruct_1.actionUndoingDifference(from:)();
}

uint64_t sub_1006F9DA4()
{
  sub_1006FA954(&qword_1019FC038, _s18SurfaceCapsuleDataVMa);

  return CRStruct_1.apply(_:)();
}

uint64_t sub_1006F9E20()
{
  sub_1006FA954(&qword_1019FC038, _s18SurfaceCapsuleDataVMa);

  return CRStruct_1.hasDelta(from:)();
}

uint64_t sub_1006F9E9C()
{
  sub_1006FA954(&qword_1019FC038, _s18SurfaceCapsuleDataVMa);

  return CRStruct_1.delta(_:from:)();
}

uint64_t sub_1006F9F30(uint64_t a1, uint64_t a2)
{
  v4 = sub_1006FA954(&qword_1019FC038, _s18SurfaceCapsuleDataVMa);

  return CRStruct_1.canMerge(delta:)(a1, a2, v4);
}

uint64_t sub_1006F9FAC()
{
  sub_1006FA954(&qword_1019FC038, _s18SurfaceCapsuleDataVMa);

  return CRStruct_1.merge(delta:)();
}

uint64_t sub_1006FA028(uint64_t a1, uint64_t a2)
{
  v4 = sub_1006FA954(&qword_1019FC038, _s18SurfaceCapsuleDataVMa);

  return CRStruct_1.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1006FA0AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1006FA954(&qword_1019FC038, _s18SurfaceCapsuleDataVMa);

  return CRStruct_1.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1006FA130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1006FA954(&qword_1019FC038, _s18SurfaceCapsuleDataVMa);

  return CRStruct_1.observableDifference(from:with:)(a1, a2, a3, v6);
}

uint64_t sub_1006FA1C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1006FA954(&qword_1019FC038, _s18SurfaceCapsuleDataVMa);

  return CRStruct_1.visitReferences(_:)(a1, a2, v4);
}

BOOL sub_1006FA240()
{
  sub_1006FA954(&qword_1019FC038, _s18SurfaceCapsuleDataVMa);

  return CRStruct_1.needToFinalizeTimestamps()();
}

uint64_t sub_1006FA2AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1006FA954(&qword_1019FC038, _s18SurfaceCapsuleDataVMa);

  return CRStruct_1.finalizeTimestamps(_:)(a1, a2, v4);
}

uint64_t sub_1006FA328()
{
  sub_1006FA954(&qword_1019FC038, _s18SurfaceCapsuleDataVMa);

  return CRStruct_1.merge(_:)();
}

uint64_t sub_1006FA3AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1006FA954(&qword_1019FC038, _s18SurfaceCapsuleDataVMa);

  return CRStruct_1.merge(_:)(a1, a2, v4);
}

uint64_t sub_1006FA630(uint64_t a1)
{
  v2 = sub_1006FA954(&qword_1019FC038, _s18SurfaceCapsuleDataVMa);

  return CRStruct_1.minEncodingVersion.getter(a1, v2);
}

unint64_t sub_1006FA8F0()
{
  result = qword_1019FC028;
  if (!qword_1019FC028)
  {
    sub_1005C4E5C(&qword_1019FC030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FC028);
  }

  return result;
}

uint64_t sub_1006FA954(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1006FA9DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1019FC040 == a2 && unk_1019FC048 == a3)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

void sub_1006FAA30(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for CharacterSet();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = qword_1019FC050 == a2 && unk_1019FC058 == a3;
  if (!v12 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return;
  }

  v13 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape;
  v14 = *(*(a1 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (!v14)
  {
    __break(1u);
    goto LABEL_15;
  }

  v15 = v14;
  v16 = [a4 start];
  v17 = *&v16[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];

  v18 = [v15 textRangeForParagraphAtCharIndex:v17];
  v20 = v19;

  v21 = *(*(a1 + v13) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (!v21)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v22 = [v21 substringWithRange:{v18, v20}];
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  v30[0] = v23;
  v30[1] = v25;
  v26 = [objc_opt_self() newlineCharacterSet];
  static CharacterSet._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100017CD8();
  StringProtocol.trimmingCharacters(in:)();
  (*(v9 + 8))(v11, v8);

  KeyPath = swift_getKeyPath();
  sub_100946704(KeyPath);
  v29 = v28;

  if ((v29 & 0xFF00) != 0x200 && v29 && v20)
  {
    String.count.getter();
  }

  else
  {
  }
}

void sub_1006FACF4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for CharacterSet();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = qword_1019FC060 == a2 && unk_1019FC068 == a3;
  if (!v12 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return;
  }

  v13 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape;
  v14 = *(*(a1 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (!v14)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = v14;
  v16 = [a4 start];
  v17 = *&v16[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];

  v18 = [v15 textRangeForParagraphAtCharIndex:v17];
  v20 = v19;

  v21 = *(*(a1 + v13) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (!v21)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v22 = [v21 substringWithRange:{v18, v20}];
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  v30[0] = v23;
  v30[1] = v25;
  v26 = [objc_opt_self() newlineCharacterSet];
  static CharacterSet._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100017CD8();
  StringProtocol.trimmingCharacters(in:)();
  (*(v9 + 8))(v11, v8);

  KeyPath = swift_getKeyPath();
  sub_100946704(KeyPath);
  v29 = v28;

  if ((v29 & 0xFF00) == 0x200 || !v29)
  {
  }

  else
  {
    if (v20)
    {
      String.count.getter();
    }
  }
}

uint64_t sub_1006FAFC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1019FC070 == a2 && unk_1019FC078 == a3)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

void sub_1006FB01C(char **a1, void *a2)
{
  v232 = a2;
  v3 = type metadata accessor for UUID();
  v228 = *(v3 - 8);
  __chkstk_darwin(v3);
  v227 = &v207 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1005B981C(&qword_1019FC080);
  v229 = *(v5 - 8);
  v230 = v5;
  __chkstk_darwin(v5);
  v7 = &v207 - v6;
  v8 = sub_1005B981C(&unk_1019FFD10);
  v231 = *(v8 - 1);
  __chkstk_darwin(v8);
  v10 = &v207 - v9;
  v11 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v11);
  v13 = &v207 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v14 - 8);
  v16 = (&v207 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v19 = &v207 - v18;
  v20 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_icc;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v226 = v3;
  v233 = v20;
  v22 = Strong;
  v23 = [Strong commandController];

  if (!v23)
  {
    return;
  }

  v24 = swift_unknownObjectWeakLoadStrong();
  if (!v24 || (v225 = a1, v25 = v24, v26 = [v24 selectionModelTranslator], v25, (v224 = v26) == 0))
  {

    return;
  }

  v223 = v23;
  v27 = v225;
  v28 = swift_unknownObjectWeakLoadStrong();
  if (!v28 || (v29 = v28, v30 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape, v31 = [v28 layoutForInfo:*(v27 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape)], v29, !v31))
  {
    v31 = v223;
    v96 = &v241;
LABEL_27:

    return;
  }

  objc_opt_self();
  v32 = swift_dynamicCastObjCClass();
  if (!v32)
  {

    v96 = &v240;
    goto LABEL_27;
  }

  v33 = [v32 layoutInfoGeometry];

  [v33 mutableCopy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100006370(0, &unk_101A0B030);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

  v222 = v30;
  v34 = *&(*(v225 + v30))[OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage];
  if (!v34)
  {
    goto LABEL_101;
  }

  v35 = v239;
  v36 = v34;
  v220 = sub_10075FF70(v232);
  v38 = v37;

  LODWORD(v221) = v38;
  if ((v38 & 0x100) != 0)
  {

    return;
  }

  v219 = v35;
  KeyPath = swift_getKeyPath();
  v40 = v225;
  sub_100946008(KeyPath);
  v218 = v41;
  v43 = v42;

  v44 = 2;
  if (v43 != 2)
  {
    v44 = v218;
  }

  v214 = v44;
  v45 = unk_1019FC048;
  v218 = qword_1019FC040;
  v46 = type metadata accessor for CRLWPTextString();
  v47 = objc_allocWithZone(v46);
  v48 = &v47[OBJC_IVAR____TtC8Freeform15CRLWPTextString_text];
  *v48 = v218;
  *(v48 + 1) = v45;
  v48[16] = 0;
  v238.receiver = v47;
  v238.super_class = v46;

  v49 = objc_msgSendSuper2(&v238, "init");
  sub_100935920(v232, v49, 0);

  v50 = *(*(v222 + v40) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (!v50)
  {
    goto LABEL_102;
  }

  v216 = [v50 paragraphCount];
  if (v220)
  {
    v51 = 2;
  }

  else
  {
    v51 = 3;
  }

  if ((v221 & 1) == 0)
  {
    v51 = 1;
  }

  LODWORD(v217) = v51;
  sub_100960E34();
  v53 = v223;
  if (!v52 || (v54 = [v52 selectedTextRange]) == 0)
  {

    return;
  }

  v55 = *(*(v222 + v225) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (!v55)
  {
    goto LABEL_103;
  }

  v56 = v54;
  v57 = v55;
  v58 = [v56 start];
  v59 = *&v58[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];

  v60 = [v57 paragraphIndexAtCharIndex:v59];
  v220 = v57;
  v61 = [v57 charIndexForParagraphAtIndex:v60];
  v62 = [v56 end];
  v63 = *&v62[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];

  v218 = v61;
  if (v63 < v61)
  {
    __break(1u);
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v64 = type metadata accessor for CRLTextRange();
  v65 = objc_allocWithZone(v64);
  v66 = OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity;
  *&v65[OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity] = 0;
  *&v65[OBJC_IVAR____TtC8Freeform12CRLTextRange_insertionEdge] = 0;
  v67 = &v65[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
  *v67 = v218;
  *(v67 + 1) = v63;
  *&v65[v66] = 0;
  v237.receiver = v65;
  v237.super_class = v64;
  v213 = v64;
  v68 = objc_msgSendSuper2(&v237, "init");
  v218 = v68;

  v69 = [v68 start];
  NSNotFound.getter();
  v70 = *&v69[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];
  v220 = OBJC_IVAR____TtC8Freeform15CRLTextPosition_caretAffinity;
  v215 = *&v69[OBJC_IVAR____TtC8Freeform15CRLTextPosition_caretAffinity];
  v71 = objc_allocWithZone(v64);
  v72 = OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity;
  *&v71[OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity] = 0;
  *&v71[OBJC_IVAR____TtC8Freeform12CRLTextRange_insertionEdge] = 0;
  v73 = &v71[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
  *v73 = v70;
  *(v73 + 1) = v70;
  *&v71[v72] = v215;
  v236.receiver = v71;
  v236.super_class = v64;
  v74 = objc_msgSendSuper2(&v236, "init");
  v75 = *&v69[v220];
  v76 = v74;
  v220 = v76;

  *&v76[OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity] = v75;
  v77 = [v218 end];
  NSNotFound.getter();
  v78 = *(v77 + OBJC_IVAR____TtC8Freeform15CRLTextPosition_location);
  v215 = OBJC_IVAR____TtC8Freeform15CRLTextPosition_caretAffinity;
  v212 = *(v77 + OBJC_IVAR____TtC8Freeform15CRLTextPosition_caretAffinity);
  v79 = v213;
  v80 = objc_allocWithZone(v213);
  v81 = OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity;
  *&v80[OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity] = 0;
  *&v80[OBJC_IVAR____TtC8Freeform12CRLTextRange_insertionEdge] = 0;
  v82 = &v80[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
  *v82 = v78;
  *(v82 + 1) = v78;
  *&v80[v81] = v212;
  v235.receiver = v80;
  v235.super_class = v79;
  v83 = objc_msgSendSuper2(&v235, "init");
  v84 = *&v215[v77];
  v85 = v83;

  *&v85[OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity] = v84;
  v211 = v85;

  v86 = v225;
  v215 = sub_100935A00(*(v218 + OBJC_IVAR____TtC8Freeform12CRLTextRange_range), *(v218 + OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8));
  v210 = *(v220 + OBJC_IVAR____TtC8Freeform12CRLTextRange_range);
  v212 = (v220 + OBJC_IVAR____TtC8Freeform12CRLTextRange_range);
  v209 = *(v220 + OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8);
  v87 = swift_getKeyPath();
  v88 = *(v222 + v86);
  v89 = sub_1012EDD60(v88, v210, v209, v87, v217);

  sub_1005B981C(&unk_1019F4D60);
  v90 = swift_allocObject();
  v91 = v215;
  *(v90 + 16) = xmmword_10146CE00;
  *(v90 + 32) = v91;
  *(v90 + 40) = v89;
  v239 = v90;
  v217 = v89;
  if (v221)
  {
    v92 = v90;
    v93 = v91;
    v94 = v89;
    v95 = v223;
    v19 = v219;
    v61 = &OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage;
    v10 = v211;
    goto LABEL_48;
  }

  v97 = *(*(v222 + v225) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (!v97)
  {
    goto LABEL_107;
  }

  v98 = v215;
  v99 = v217;
  v100 = v97;
  v101 = [v220 start];
  v102 = *&v101[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];

  v103 = [v100 textRangeForParagraphAtCharIndex:v102];
  v105 = v104;

  v106 = objc_allocWithZone(v213);
  v107 = sub_10078CDF0(v103, v105);
  v108 = *(*(v222 + v225) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (!v108)
  {
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  v210 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
  v109 = *&v108[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (!v109)
  {
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  v208 = v107;
  v110 = *&v107[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
  v221 = *&v107[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8];
  v213 = v110;
  (*(*v109 + 896))();
  sub_1005E0A78(&v13[v11[5]], v19);
  v209 = v108;
  sub_1005E0ADC(v13, type metadata accessor for CRLWPShapeItemCRDTData);
  v111 = v231;
  (*(v231 + 2))(v10, v19, v8);
  sub_1005E0ADC(v19, type metadata accessor for CRLWPStorageCRDTData);
  v112 = CRAttributedString.count.getter();
  v113 = *(v111 + 1);
  v61 = (v111 + 8);
  v114 = v113(v10, v8);
  if (v112 >= (v213 & ~(v213 >> 63)))
  {
    v10 = (v213 & ~(v213 >> 63));
  }

  else
  {
    v10 = v112;
  }

  v115 = v221 & ~(v221 >> 63);
  if (v112 >= v115)
  {
    v19 = (v221 & ~(v221 >> 63));
  }

  else
  {
    v19 = v112;
  }

  if (v115 < v10)
  {
    goto LABEL_97;
  }

  v116 = *&v108[v210];
  if (v116)
  {
    (*(*v116 + 896))(v114);
    sub_1005E0A78(&v13[v11[5]], v16);
    v117 = v209;
    sub_1005E0ADC(v13, type metadata accessor for CRLWPShapeItemCRDTData);
    CRAttributedString.subscript.getter();
    sub_1005E0ADC(v16, type metadata accessor for CRLWPStorageCRDTData);
    v118 = v230;
    v119 = CRAttributedString.Substring.attributedString.getter();
    (*(v229 + 8))(v7, v118);
    v120 = [v119 string];
    v61 = &OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage;
    if (!v120)
    {
      goto LABEL_112;
    }

    v121 = v120;

    v122 = [v121 integerValue];
    v123 = *(v222 + v225);
    v124 = *v212;
    v125 = v212[1];
    v8 = swift_getKeyPath();
    v126 = v123;
    v127 = sub_1012EE1A8(v126, v124, v125, v8, v122);

    v128 = v127;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v19 = v219;
    v10 = v211;
    if (*((v239 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v239 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v92 = v239;
    v95 = v223;
LABEL_48:
    v11 = v222;
    v129 = v232;
    if (v216 == 1)
    {
      v8 = v225;
      v130 = *(*(v222 + v225) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
      if (v130)
      {
        v131 = v130;
        v132 = [v129 start];
        v133 = *&v132[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];

        LODWORD(v133) = [v131 isWritingDirectionRightToLeftForParagraphAtCharIndex:v133];
        v134 = v133;
        v135 = *v212;
        v136 = v212[1];
        v137 = swift_getKeyPath();
        v138 = *(v11 + v8);
        v11 = v134;
        v139 = sub_1012EDB4C(v138, v135, v136, v137, v134);

        v16 = v139;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v239 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v239 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_51;
        }

        goto LABEL_99;
      }

      goto LABEL_110;
    }

    while (1)
    {
      v16 = [objc_allocWithZone(type metadata accessor for CRLCommandGroup()) init];
      v154 = OBJC_IVAR____TtC8Freeform15CRLCommandGroup_commands;
      swift_beginAccess();
      *(v16 + v154) = v92;

      v155 = [v220 start];
      v13 = *&v155[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];

      if (v13 == NSNotFound.getter())
      {
        v156 = 0x7FFFFFFFFFFFFFFFLL;
        v157 = 0;
        v158 = v224;
LABEL_65:
        if (*(*(v11 + v225) + *v61))
        {
          v8 = &selRef_scrollViewDidEndScrollingAnimation_;
          v160 = [v158 selectionPathForRange:v156 onStorage:v157];
          if (!v160)
          {
            goto LABEL_81;
          }

          v13 = v160;
          v161 = [v10 start];
          v162 = *&v161[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];

          if (v162 == NSNotFound.getter())
          {
            v163 = 0x7FFFFFFFFFFFFFFFLL;
            v164 = 0;
LABEL_70:
            v95 = v223;
            if (*(*(v11 + v225) + *v61))
            {
              v166 = [v158 selectionPathForRange:v163 onStorage:v164];
              if (v166)
              {
                v167 = v166;
                v168 = [objc_allocWithZone(CRLCommandSelectionBehavior) initWithForwardSelectionPath:v13 reverseSelectionPath:v166];
                sub_100888700(v16, 0, v168, 4, 0);
                v169 = swift_unknownObjectWeakLoadStrong();
                if (!v169)
                {
                  goto LABEL_76;
                }

                v170 = v169;
                v171 = [v169 canvasView];

                if (!v171)
                {
                  goto LABEL_77;
                }

                v172 = [v171 window];

                if (v172)
                {
                  v234 = v172;
                  sub_100006370(0, &unk_101A286E0);
                  v171 = _bridgeAnythingToObjectiveC<A>(_:)();
                }

                else
                {
LABEL_76:
                  v171 = 0;
                }

LABEL_77:
                v173 = [objc_opt_self() mainBundle];
                v174 = String._bridgeToObjectiveC()();
                v175 = String._bridgeToObjectiveC()();
                v176 = [v173 localizedStringForKey:v174 value:v175 table:0];

                if (!v176)
                {
                  static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v176 = String._bridgeToObjectiveC()();
                }

                CRLAccessibilityPostAnnouncementNotification(v171, v176);

                swift_unknownObjectRelease();
                v13 = v176;
                v95 = v223;
                v19 = v219;
                v10 = v211;
                v158 = v224;
              }

LABEL_81:
              return;
            }

            __break(1u);
LABEL_107:
            __break(1u);
            goto LABEL_108;
          }

          v163 = *&v10[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
          v165 = *&v10[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8];
          v164 = v165 - v163;
          if (!__OFSUB__(v165, v163))
          {
            goto LABEL_70;
          }

          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
        }

        __break(1u);
        goto LABEL_105;
      }

      v156 = *v212;
      v159 = v212[1];
      v157 = v159 - *v212;
      v158 = v224;
      if (!__OFSUB__(v159, *v212))
      {
        goto LABEL_65;
      }

LABEL_98:
      __break(1u);
LABEL_99:
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_51:
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v92 = v239;
      sub_100960E34();
      v95 = v223;
      if (!v140)
      {
        goto LABEL_60;
      }

      v141 = [v140 selectedTextRange];
      if (!v141)
      {
        goto LABEL_60;
      }

      v13 = v141;
      v142 = v225;
      v143 = swift_unknownObjectWeakLoadStrong();
      if (!v143)
      {
        break;
      }

      v144 = *(v222 + v142);
      v145 = v143;
      v8 = [v143 layoutForInfo:v144];

      if (!v8)
      {
        break;
      }

      objc_opt_self();
      v146 = swift_dynamicCastObjCClass();
      if (v146)
      {
        v232 = v146;
        v147 = *(*(v222 + v225) + *v61);
        if (!v147)
        {
          goto LABEL_113;
        }

        v148 = v147;
        v149 = [v13 start];
        v150 = *&v149[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];

        v151 = sub_1006188CC(v150);
        v153 = v152;

        if (v153)
        {

          v95 = v223;
          v10 = v211;
          goto LABEL_61;
        }

        if (v151)
        {

          v95 = v223;
          v19 = v219;
          v11 = v222;
          goto LABEL_93;
        }

        v177 = *(v222 + v225);
        v178 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
        v179 = *(**&v177[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 296);
        v231 = v177;

        v181 = v179(v180);

        v182 = [v181 widthValid];

        if (v182)
        {
          v183 = *(**&v177[v178] + 296);

          v185 = v183(v184);

          v186 = [v185 heightValid];

          if (v186)
          {
            goto LABEL_91;
          }
        }

        else
        {
        }

        v187 = *(v222 + v225);
        v188 = *(**&v187[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 296);
        v189 = v187;

        v191 = v188(v190);

        v192 = [v191 widthValid];

        if ((v192 & 1) == 0)
        {
          v193 = *(v222 + v225);
          v194 = *(**&v193[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 296);
          v195 = v193;

          v197 = v194(v196);

          v198 = [v197 heightValid];

          if ((v198 & 1) == 0)
          {
            sub_10098FB84(v214, v11);
            v199 = v219;
            [v219 setPosition:?];
            v200 = *(v222 + v225);
            v201 = objc_allocWithZone(type metadata accessor for CRLCommandSetInfoGeometry());
            v202 = v227;
            (*(**&v200[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 264))();
            v203 = v200;
            v204 = v199;
            isa = UUID._bridgeToObjectiveC()().super.isa;
            (*(v228 + 8))(v202, v226);
            v206 = [v201 initWithId:isa geometry:v204];

            v11 = v206;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v239 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v239 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
LABEL_95:
              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

              v92 = v239;
              goto LABEL_92;
            }

LABEL_105:
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            goto LABEL_95;
          }
        }

LABEL_91:

LABEL_92:
        v95 = v223;
        v19 = v219;
        v11 = v222;
        v61 = &OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage;
LABEL_93:
        v10 = v211;
      }

      else
      {

LABEL_61:
        v11 = v222;
      }
    }

LABEL_60:
    goto LABEL_61;
  }

LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
}

void sub_1006FC918(uint64_t a1, void *a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v5 = Strong;
  v6 = [Strong commandController];

  if (!v6)
  {
    return;
  }

  v7 = swift_unknownObjectWeakLoadStrong();
  if (!v7 || (v8 = v7, v9 = [v7 selectionModelTranslator], v8, !v9))
  {

    return;
  }

  v10 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape;
  v11 = *(*(a1 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (!v11)
  {
    goto LABEL_40;
  }

  v12 = v11;
  v13 = [a2 start];
  v14 = *&v13[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];

  v15 = [v12 listStyleAtCharIndex:v14];
  if (v15)
  {
    v107 = v15[OBJC_IVAR____TtC8Freeform14CRLWPListStyle_listType];
  }

  else
  {
    v107 = 0;
  }

  v17 = qword_1019FC050;
  v16 = unk_1019FC058;
  v18 = type metadata accessor for CRLWPTextString();
  v19 = objc_allocWithZone(v18);
  v20 = &v19[OBJC_IVAR____TtC8Freeform15CRLWPTextString_text];
  *v20 = v17;
  *(v20 + 1) = v16;
  v20[16] = 0;
  v112.receiver = v19;
  v112.super_class = v18;

  v21 = objc_msgSendSuper2(&v112, "init");
  sub_100935920(a2, v21, 0);

  sub_100960E34();
  if (!v22 || (v23 = [v22 selectedTextRange]) == 0)
  {

    return;
  }

  v104 = v9;
  v105 = v10;
  v24 = *(*(a1 + v10) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (!v24)
  {
    goto LABEL_41;
  }

  v25 = v23;
  v103 = v6;
  v26 = v24;
  v27 = [v25 start];
  v28 = *&v27[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];

  v29 = [v26 charIndexForParagraphAtIndex:{objc_msgSend(v26, "paragraphIndexAtCharIndex:", v28)}];
  v30 = [v25 end];
  v31 = *&v30[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];

  if (v31 < v29)
  {
    __break(1u);
    goto LABEL_38;
  }

  v32 = type metadata accessor for CRLTextRange();
  v33 = objc_allocWithZone(v32);
  v34 = OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity;
  *&v33[OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity] = 0;
  *&v33[OBJC_IVAR____TtC8Freeform12CRLTextRange_insertionEdge] = 0;
  v35 = &v33[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
  *v35 = v29;
  *(v35 + 1) = v31;
  *&v33[v34] = 0;
  v111.receiver = v33;
  v111.super_class = v32;
  v36 = objc_msgSendSuper2(&v111, "init");

  v37 = [v36 start];
  NSNotFound.getter();
  v38 = *&v37[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];
  v39 = OBJC_IVAR____TtC8Freeform15CRLTextPosition_caretAffinity;
  v40 = *&v37[OBJC_IVAR____TtC8Freeform15CRLTextPosition_caretAffinity];
  v41 = objc_allocWithZone(v32);
  v42 = OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity;
  *&v41[OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity] = 0;
  *&v41[OBJC_IVAR____TtC8Freeform12CRLTextRange_insertionEdge] = 0;
  v43 = &v41[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
  *v43 = v38;
  *(v43 + 1) = v38;
  *&v41[v42] = v40;
  v110.receiver = v41;
  v110.super_class = v32;
  v44 = objc_msgSendSuper2(&v110, "init");
  v45 = *&v37[v39];
  v46 = v44;

  *&v46[OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity] = v45;
  v47 = v46;
  v48 = [v36 end];
  NSNotFound.getter();
  v49 = *&v48[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];
  v50 = OBJC_IVAR____TtC8Freeform15CRLTextPosition_caretAffinity;
  v51 = *&v48[OBJC_IVAR____TtC8Freeform15CRLTextPosition_caretAffinity];
  v52 = objc_allocWithZone(v32);
  v53 = OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity;
  *&v52[OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity] = 0;
  *&v52[OBJC_IVAR____TtC8Freeform12CRLTextRange_insertionEdge] = 0;
  v54 = &v52[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
  *v54 = v49;
  *(v54 + 1) = v49;
  *&v52[v53] = v51;
  v109.receiver = v52;
  v109.super_class = v32;
  v55 = objc_msgSendSuper2(&v109, "init");
  v56 = *&v48[v50];
  v57 = v55;

  *&v57[OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity] = v56;
  v102 = v57;

  v101 = v36;
  v58 = sub_100935A00(*&v36[OBJC_IVAR____TtC8Freeform12CRLTextRange_range], *&v36[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8]);
  v59 = &v47[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
  v60 = v47;
  v61 = *&v47[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
  v62 = *&v47[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8];
  KeyPath = swift_getKeyPath();
  v64 = *(a1 + v105);
  v65 = sub_1012EDD60(v64, v61, v62, KeyPath, v107);

  sub_1005B981C(&unk_1019F4D60);
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_10146CE00;
  *(v66 + 32) = v58;
  *(v66 + 40) = v65;
  v67 = objc_allocWithZone(type metadata accessor for CRLCommandGroup());
  v68 = v58;
  v69 = v65;
  v70 = v67;
  v71 = v60;
  v72 = [v70 init];
  v73 = OBJC_IVAR____TtC8Freeform15CRLCommandGroup_commands;
  swift_beginAccess();
  *&v72[v73] = v66;

  v74 = [v60 start];
  v75 = *&v74[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];

  if (v75 == NSNotFound.getter())
  {
    v76 = 0x7FFFFFFFFFFFFFFFLL;
    v77 = 0;
    v78 = v104;
    goto LABEL_19;
  }

  v76 = *v59;
  v79 = v59[1];
  v77 = v79 - *v59;
  v78 = v104;
  if (__OFSUB__(v79, *v59))
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

LABEL_19:
  v80 = v105;
  v108 = v69;
  if (!*(*(a1 + v105) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage))
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v81 = [v78 selectionPathForRange:v76 onStorage:v77];
  if (!v81)
  {

    return;
  }

  v82 = v81;
  v106 = v68;
  v83 = [v102 start];
  v84 = *&v83[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];

  if (v84 == NSNotFound.getter())
  {
    v85 = 0x7FFFFFFFFFFFFFFFLL;
    v86 = 0;
    goto LABEL_25;
  }

  v85 = *&v102[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
  v87 = *&v102[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8];
  v86 = v87 - v85;
  if (__OFSUB__(v87, v85))
  {
    goto LABEL_39;
  }

LABEL_25:
  if (!*(*(a1 + v80) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage))
  {
LABEL_43:
    __break(1u);
    return;
  }

  v88 = [v78 selectionPathForRange:v85 onStorage:v86];
  if (v88)
  {
    v89 = v88;
    v90 = [objc_allocWithZone(CRLCommandSelectionBehavior) initWithForwardSelectionPath:v82 reverseSelectionPath:v88];
    sub_100888700(v72, 0, v90, 4, 0);
    v91 = swift_unknownObjectWeakLoadStrong();
    if (v91 && (v92 = v91, v93 = [v91 canvasView], v92, v93) && (v94 = objc_msgSend(v93, "window"), v93, v94))
    {
      v95 = v71;
      sub_100006370(0, &unk_101A286E0);
      v96 = _bridgeAnythingToObjectiveC<A>(_:)();
    }

    else
    {
      v95 = v71;
      v96 = 0;
    }

    v97 = [objc_opt_self() mainBundle];
    v98 = String._bridgeToObjectiveC()();
    v99 = String._bridgeToObjectiveC()();
    v100 = [v97 localizedStringForKey:v98 value:v99 table:0];

    if (!v100)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v100 = String._bridgeToObjectiveC()();
    }

    CRLAccessibilityPostAnnouncementNotification(v96, v100);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_1006FD240(uint64_t a1, void *a2)
{
  v2 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape;
  v3 = *(*(a1 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (!v3)
  {
    __break(1u);
    goto LABEL_21;
  }

  v6 = v3;
  v7 = [a2 start];
  v8 = *&v7[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];

  v9 = [v6 listStyleAtCharIndex:v8];
  if (!v9)
  {
    return;
  }

  v10 = v9[OBJC_IVAR____TtC8Freeform14CRLWPListStyle_listType];

  if (!v10)
  {
    return;
  }

  v11 = *(*(a1 + v2) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (!v11)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v12 = v11;
  v13 = [a2 start];
  v14 = *&v13[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];

  v15 = sub_100A1E7A0(v14);
  v17 = v16;
  v19 = v18;

  if (v15)
  {

    v20 = HIBYTE(v19) & 0xF;
    if ((v19 & 0x2000000000000000) == 0)
    {
      v20 = v17 & 0xFFFFFFFFFFFFLL;
    }

    if (!v20)
    {
      sub_100935E08();
      if (v21 >= 1)
      {
        sub_100936120(-1);
        return;
      }

      KeyPath = swift_getKeyPath();
      sub_100947328(KeyPath, 0);

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v24 = Strong;
        v25 = [Strong canvasView];

        if (!v25)
        {
LABEL_17:
          v27 = [objc_opt_self() mainBundle];
          v28 = String._bridgeToObjectiveC()();
          v29 = String._bridgeToObjectiveC()();
          v30 = [v27 localizedStringForKey:v28 value:v29 table:0];

          if (!v30)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v30 = String._bridgeToObjectiveC()();
          }

          CRLAccessibilityPostAnnouncementNotification(v25, v30);
          swift_unknownObjectRelease();

          return;
        }

        v26 = [v25 window];

        if (v26)
        {
          sub_100006370(0, &unk_101A286E0);
          v25 = _bridgeAnythingToObjectiveC<A>(_:)();

          goto LABEL_17;
        }
      }

      v25 = 0;
      goto LABEL_17;
    }
  }
}

uint64_t sub_1006FD554(uint64_t result, void *a2)
{
  v2 = *(*(result + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (v2)
  {
    v4 = v2;
    v5 = [a2 start];
    v6 = *&v5[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];

    v7 = [v4 listStyleAtCharIndex:v6];
    if (v7)
    {
      v8 = *(v7 + OBJC_IVAR____TtC8Freeform14CRLWPListStyle_listType);

      if (v8)
      {
        v7 = 1;
        sub_100936120(1);
      }

      else
      {
        return 0;
      }
    }

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

_BYTE *sub_1006FD6F8(_BYTE *result)
{
  if (result[OBJC_IVAR____TtC8Freeform31CRLSimpleProgressViewController_isPresented] == 1)
  {
    return [v1 dismissViewControllerAnimated:1 completion:0];
  }

  return result;
}

void sub_1006FD738()
{
  sub_1005B981C(&qword_1019FC0D0);
  NSKeyValueObservedChange.newValue.getter();
  if (v5 != 2 && (v5 & 1) != 0)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v1 = Strong;
      v2 = Strong + OBJC_IVAR____TtC8Freeform31CRLSimpleProgressViewController_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v3 = *(v2 + 8);
        ObjectType = swift_getObjectType();
        (*(v3 + 8))(v1, ObjectType, v3);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }
}

void sub_1006FD8C8(void *a1, uint64_t a2, uint64_t a3, const char **a4, char a5)
{
  v10.receiver = a1;
  v10.super_class = type metadata accessor for CRLSimpleProgressViewController();
  v8 = *a4;
  v9 = v10.receiver;
  objc_msgSendSuper2(&v10, v8, a3);
  v9[OBJC_IVAR____TtC8Freeform31CRLSimpleProgressViewController_isPresented] = a5;
}

void sub_1006FD938()
{
  v1 = [objc_allocWithZone(UIView) init];
  v2 = *&v0[OBJC_IVAR____TtC8Freeform31CRLSimpleProgressViewController_progress];
  if ([v2 isIndeterminate])
  {
    v3 = [objc_allocWithZone(UIActivityIndicatorView) init];
    [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v3 startAnimating];

    [v1 addSubview:v3];
    v30 = v3;
  }

  else
  {
    v4 = [objc_allocWithZone(UIProgressView) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v4 setObservedProgress:v2];

    [v1 addSubview:v4];
    v5 = objc_opt_self();
    sub_1005B981C(&unk_1019F4D60);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_10146CE00;
    v30 = v4;
    v7 = [v30 leadingAnchor];
    v8 = [v1 leadingAnchor];
    v9 = [v7 constraintEqualToSystemSpacingAfterAnchor:v8 multiplier:1.0];

    *(v6 + 32) = v9;
    v10 = [v1 trailingAnchor];
    v11 = [v30 trailingAnchor];
    v12 = [v10 constraintEqualToSystemSpacingAfterAnchor:v11 multiplier:1.0];

    *(v6 + 40) = v12;
    sub_100078784();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v5 activateConstraints:isa];
  }

  v14 = objc_opt_self();
  sub_1005B981C(&unk_1019F4D60);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10146E8B0;
  v16 = [v30 centerYAnchor];
  v17 = [v1 centerYAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];

  *(v15 + 32) = v18;
  v19 = [v30 centerXAnchor];
  v20 = [v1 centerXAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];

  *(v15 + 40) = v21;
  v22 = [v30 topAnchor];
  v23 = [v1 topAnchor];
  v24 = [v22 constraintGreaterThanOrEqualToAnchor:v23];

  *(v15 + 48) = v24;
  v25 = [v1 bottomAnchor];
  v26 = [v30 bottomAnchor];

  v27 = [v25 constraintGreaterThanOrEqualToAnchor:v26];
  *(v15 + 56) = v27;
  sub_100078784();
  v28 = Array._bridgeToObjectiveC()().super.isa;

  [v14 activateConstraints:v28];

  v29 = v1;
  [v0 setView:v29];
}

id sub_1006FDE58()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLSimpleProgressViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1006FDF0C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v8 = a4;
  if (!a2)
  {
    v9 = 0;
    if (!a4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v9 = String._bridgeToObjectiveC()();
  if (v8)
  {
LABEL_3:
    v8 = String._bridgeToObjectiveC()();
  }

LABEL_4:
  v10 = [objc_opt_self() alertControllerWithTitle:v9 message:v8 preferredStyle:a5];

  v11 = type metadata accessor for CRLSimpleProgressViewController();
  v12 = objc_allocWithZone(v11);
  *&v12[OBJC_IVAR____TtC8Freeform31CRLSimpleProgressViewController_progressObservation] = 0;
  *&v12[OBJC_IVAR____TtC8Freeform31CRLSimpleProgressViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v12[OBJC_IVAR____TtC8Freeform31CRLSimpleProgressViewController_isPresented] = 0;
  *&v12[OBJC_IVAR____TtC8Freeform31CRLSimpleProgressViewController_progress] = a6;
  v18.receiver = v12;
  v18.super_class = v11;
  a6;
  v13 = objc_msgSendSuper2(&v18, "initWithNibName:bundle:", 0, 0);
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = v13;
  v15 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

  v16 = *&v14[OBJC_IVAR____TtC8Freeform31CRLSimpleProgressViewController_progressObservation];
  *&v14[OBJC_IVAR____TtC8Freeform31CRLSimpleProgressViewController_progressObservation] = v15;

  *&v14[OBJC_IVAR____TtC8Freeform31CRLSimpleProgressViewController_delegate + 8] = &off_1018833A0;
  swift_unknownObjectWeakAssign();
  [v10 crl_setContentViewController:v14];

  return v10;
}

uint64_t getEnumTagSinglePayload for CRLBoardAuxiliaryRealTimeChangeType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CRLBoardAuxiliaryRealTimeChangeType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 initializeWithCopy for CRLiOSPencilHoverToolPreviewer.PreviewState(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1006FE27C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1006FE2D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

Swift::Int sub_1006FE34C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(dword_101476F70[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_1006FE3D4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(dword_101476F70[v1]);
  return Hasher._finalize()();
}

uint64_t sub_1006FE420@<X0>(int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1006FFD20(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1006FE524@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a3;
  v5 = sub_1005B981C(&qword_1019F67C0);
  __chkstk_darwin(v5 - 8);
  v47 = &v44 - v6;
  v7 = type metadata accessor for CRLProto_Data(0);
  v8 = *(v7 - 8);
  v49 = v7;
  v50 = v8;
  __chkstk_darwin(v7);
  v46 = (&v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_1005B981C(&qword_1019FC100);
  __chkstk_darwin(v10 - 8);
  v12 = &v44 - v11;
  v13 = type metadata accessor for CRLProto_BoardIdentifier(0);
  v51 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for CRLGloballyScopedBoardIdentifier(0);
  __chkstk_darwin(v16 - 8);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for BinaryDecodingOptions();
  __chkstk_darwin(v19 - 8);
  v20 = type metadata accessor for CRLProto_RealTimeBoardAuxiliaryChangeRecord(0);
  __chkstk_darwin(v20);
  v22 = (&v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  sub_100024E98(a1, a2);
  BinaryDecodingOptions.init()();
  sub_100700098(&qword_1019FC108, type metadata accessor for CRLProto_RealTimeBoardAuxiliaryChangeRecord);
  v23 = v55;
  Message.init(serializedData:extensions:partial:options:)();
  if (v23)
  {
    return sub_10002640C(a1, a2);
  }

  v55 = 0;
  v45 = a1;
  sub_10000BE14(v22 + *(v20 + 24), v12, &qword_1019FC100);
  v25 = *(v51 + 48);
  if (v25(v12, 1, v13) == 1)
  {
    UnknownStorage.init()();
    (*(v50 + 56))(&v15[*(v13 + 20)], 1, 1, v49);
    v26 = v25(v12, 1, v13);
    v27 = a2;
    if (v26 != 1)
    {
      sub_10000CAAC(v12, &qword_1019FC100);
    }
  }

  else
  {
    sub_1006FFDE4(v12, v15, type metadata accessor for CRLProto_BoardIdentifier);
    v27 = a2;
  }

  v28 = v18;
  v29 = v55;
  sub_10084B99C(v15, v18);
  v30 = v45;
  if (v29)
  {
    sub_100700038(v22, type metadata accessor for CRLProto_RealTimeBoardAuxiliaryChangeRecord);
    return sub_10002640C(v30, v27);
  }

  else
  {
    v31 = sub_1006FFD20(*v22);
    if (v31 == 14)
    {
      sub_1006B305C();
      swift_allocError();
      *v32 = 1;
      swift_willThrow();
      sub_10002640C(v30, v27);
      sub_100700038(v18, type metadata accessor for CRLGloballyScopedBoardIdentifier);
      return sub_100700038(v22, type metadata accessor for CRLProto_RealTimeBoardAuxiliaryChangeRecord);
    }

    else
    {
      v55 = v31;
      v33 = v47;
      sub_10000BE14(v22 + *(v20 + 28), v47, &qword_1019F67C0);
      v34 = v49;
      v36 = v50 + 48;
      v35 = *(v50 + 48);
      if (v35(v33, 1, v49) == 1)
      {
        v50 = v36;
        v37 = v46;
        *v46 = xmmword_10146F370;
        UnknownStorage.init()();
        sub_10002640C(v30, v27);
        sub_100700038(v22, type metadata accessor for CRLProto_RealTimeBoardAuxiliaryChangeRecord);
        v38 = v35(v33, 1, v34);
        v39 = v48;
        if (v38 != 1)
        {
          sub_10000CAAC(v33, &qword_1019F67C0);
        }
      }

      else
      {
        sub_10002640C(v30, v27);
        sub_100700038(v22, type metadata accessor for CRLProto_RealTimeBoardAuxiliaryChangeRecord);
        v37 = v46;
        sub_1006FFDE4(v33, v46, type metadata accessor for CRLProto_Data);
        v39 = v48;
      }

      v40 = *v37;
      v41 = v37[1];
      sub_100024E98(*v37, v41);
      sub_100700038(v37, type metadata accessor for CRLProto_Data);
      sub_1006FFDE4(v28, v39, type metadata accessor for CRLGloballyScopedBoardIdentifier);
      v42 = dword_101476F70[v55];
      result = type metadata accessor for CRLBoardAuxiliaryRealTimeChangeRecord();
      *(v39 + *(result + 20)) = v42;
      v43 = (v39 + *(result + 24));
      *v43 = v40;
      v43[1] = v41;
    }
  }

  return result;
}

void (*sub_1006FEBDC())(uint64_t, uint64_t, uint64_t, uint64_t)
{
  v0 = sub_1005B981C(&qword_1019F67C0);
  __chkstk_darwin(v0 - 8);
  v79 = &v65 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v74 = &v65 - v3;
  v4 = type metadata accessor for CRLProto_Data(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v80 = (&v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v76 = (&v65 - v8);
  __chkstk_darwin(v9);
  v75 = (&v65 - v10);
  v11 = sub_1005B981C(&qword_1019FC100);
  __chkstk_darwin(v11 - 8);
  v73 = &v65 - v12;
  v13 = type metadata accessor for CRLProto_BoardIdentifier(0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  *&v81 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v65 - v17;
  v19 = type metadata accessor for CRLProto_RealTimeBoardAuxiliaryChangeRecord(0);
  __chkstk_darwin(v19);
  v21 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v21 = 0;
  UnknownStorage.init()();
  v22 = *(v19 + 24);
  v72 = v14;
  v25 = *(v14 + 56);
  v24 = v14 + 56;
  v23 = v25;
  v25(&v21[v22], 1, 1, v13);
  v78 = v19;
  v26 = *(v19 + 28);
  v84 = v5;
  v29 = *(v5 + 56);
  v28 = v5 + 56;
  v27 = v29;
  v77 = v26;
  v29(&v21[v26], 1, 1, v4);
  UnknownStorage.init()();
  v30 = &v18[*(v13 + 20)];
  v82 = v4;
  v29(v30, 1, 1, v4);
  sub_10000CAAC(&v21[v22], &qword_1019FC100);
  sub_1006FFDE4(v18, &v21[v22], type metadata accessor for CRLProto_BoardIdentifier);
  v23(&v21[v22], 0, 1, v13);
  type metadata accessor for CRLBoardIdentifierStorage(0);
  v31 = v83;
  v32 = sub_10084DAE4();
  v83 = v31;
  if (v31)
  {
    goto LABEL_15;
  }

  v66 = v33;
  v67 = v32;
  v68 = v23;
  v69 = v24;
  v70 = v27;
  v71 = v28;
  v34 = v73;
  sub_10000BE14(&v21[v22], v73, &qword_1019FC100);
  v35 = *(v72 + 48);
  v36 = v13;
  if (v35(v34, 1, v13) == 1)
  {
    v37 = v81;
    UnknownStorage.init()();
    v70(v37 + *(v13 + 20), 1, 1, v82);
    v38 = v35(v34, 1, v13);
    v40 = v74;
    v39 = v75;
    if (v38 != 1)
    {
      sub_10000CAAC(v34, &qword_1019FC100);
    }
  }

  else
  {
    v37 = v81;
    sub_1006FFDE4(v34, v81, type metadata accessor for CRLProto_BoardIdentifier);
    v40 = v74;
    v39 = v75;
  }

  v41 = *(v13 + 20);
  sub_10000BE14(v37 + v41, v40, &qword_1019F67C0);
  v42 = v84 + 48;
  v43 = *(v84 + 48);
  v44 = v82;
  v45 = v43(v40, 1, v82);
  v84 = v42;
  v75 = v43;
  if (v45 == 1)
  {
    *v39 = xmmword_10146F370;
    UnknownStorage.init()();
    if (v43(v40, 1, v44) != 1)
    {
      sub_10000CAAC(v40, &qword_1019F67C0);
    }
  }

  else
  {
    sub_1006FFDE4(v40, v39, type metadata accessor for CRLProto_Data);
  }

  sub_10002640C(*v39, *(v39 + 8));
  v46 = v66;
  *v39 = v67;
  *(v39 + 8) = v46;
  v47 = v81;
  sub_10000CAAC(v81 + v41, &qword_1019F67C0);
  sub_1006FFDE4(v39, v47 + v41, type metadata accessor for CRLProto_Data);
  v48 = v82;
  v49 = v70;
  v70(v47 + v41, 0, 1, v82);
  sub_10000CAAC(&v21[v22], &qword_1019FC100);
  sub_1006FFDE4(v47, &v21[v22], type metadata accessor for CRLProto_BoardIdentifier);
  v68(&v21[v22], 0, 1, v36);
  v50 = type metadata accessor for CRLBoardAuxiliaryRealTimeChangeRecord();
  v51 = v85;
  *v21 = *(v85 + *(v50 + 20));
  v52 = v76;
  v81 = xmmword_10146F370;
  *v76 = xmmword_10146F370;
  UnknownStorage.init()();
  v53 = v77;
  sub_10000CAAC(&v21[v77], &qword_1019F67C0);
  v54 = v48;
  sub_1006FFDE4(v52, &v21[v53], type metadata accessor for CRLProto_Data);
  v49(&v21[v53], 0, 1, v48);
  v55 = v53;
  v56 = (v51 + *(v50 + 24));
  v57 = *v56;
  v58 = v56[1];
  v59 = v79;
  sub_10000BE14(&v21[v53], v79, &qword_1019F67C0);
  if (v75(v59, 1, v54) == 1)
  {
    v60 = v80;
    *v80 = v81;
    sub_100024E98(v57, v58);
    UnknownStorage.init()();
    v61 = v75(v59, 1, v54);
    v27 = v78;
    if (v61 != 1)
    {
      sub_10000CAAC(v59, &qword_1019F67C0);
    }
  }

  else
  {
    v60 = v80;
    sub_1006FFDE4(v59, v80, type metadata accessor for CRLProto_Data);
    sub_100024E98(v57, v58);
    v27 = v78;
  }

  sub_10002640C(*v60, *(v60 + 1));
  *v60 = v57;
  *(v60 + 1) = v58;
  sub_10000CAAC(&v21[v55], &qword_1019F67C0);
  sub_1006FFDE4(v60, &v21[v55], type metadata accessor for CRLProto_Data);
  v70(&v21[v55], 0, 1, v54);
  sub_100700098(&qword_1019FC108, type metadata accessor for CRLProto_RealTimeBoardAuxiliaryChangeRecord);
  v62 = v83;
  v63 = Message.serializedData(partial:)();
  if (v62)
  {
LABEL_15:
    sub_100700038(v21, type metadata accessor for CRLProto_RealTimeBoardAuxiliaryChangeRecord);
  }

  else
  {
    v27 = v63;
    sub_100700038(v21, type metadata accessor for CRLProto_RealTimeBoardAuxiliaryChangeRecord);
  }

  return v27;
}

uint64_t sub_1006FF4CC(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_1019FC1C8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13[-v7];
  sub_100020E58(a1, a1[3]);
  sub_1006FFF7C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v14) = 0;
  type metadata accessor for CRLGloballyScopedBoardIdentifier(0);
  sub_100700098(&qword_1019F43B8, type metadata accessor for CRLGloballyScopedBoardIdentifier);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for CRLBoardAuxiliaryRealTimeChangeRecord();
    LOBYTE(v14) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10 = (v3 + *(v9 + 24));
    v11 = v10[1];
    v14 = *v10;
    v15 = v11;
    v13[15] = 2;
    sub_100024E98(v14, v11);
    sub_1006D63D4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_10002640C(v14, v15);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1006FF6DC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = type metadata accessor for CRLGloballyScopedBoardIdentifier(0);
  __chkstk_darwin(v4);
  v19 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1005B981C(&qword_1019FC1B8);
  v17 = *(v6 - 8);
  v18 = v6;
  __chkstk_darwin(v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for CRLBoardAuxiliaryRealTimeChangeRecord();
  __chkstk_darwin(v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100020E58(a1, a1[3]);
  sub_1006FFF7C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005070(a1);
  }

  v12 = v17;
  v13 = v11;
  LOBYTE(v20) = 0;
  sub_100700098(&qword_1019F43A0, type metadata accessor for CRLGloballyScopedBoardIdentifier);
  v14 = v18;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_1006FFDE4(v19, v13, type metadata accessor for CRLGloballyScopedBoardIdentifier);
  LOBYTE(v20) = 1;
  *(v13 + *(v9 + 20)) = KeyedDecodingContainer.decode(_:forKey:)();
  v21 = 2;
  sub_1006D6258();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v12 + 8))(v8, v14);
  *(v13 + *(v9 + 24)) = v20;
  sub_1006FFFD0(v13, v16, type metadata accessor for CRLBoardAuxiliaryRealTimeChangeRecord);
  sub_100005070(a1);
  return sub_100700038(v13, type metadata accessor for CRLBoardAuxiliaryRealTimeChangeRecord);
}

uint64_t sub_1006FFA48()
{
  v1 = 1701869940;
  if (*v0 != 1)
  {
    v1 = 1635017060;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6564496472616F62;
  }
}

uint64_t sub_1006FFAA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1007001F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1006FFAC8(uint64_t a1)
{
  v2 = sub_1006FFF7C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1006FFB04(uint64_t a1)
{
  v2 = sub_1006FFF7C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1006FFB70@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *v2;
  v7 = *(v2 + 1);
  v6 = *(v2 + 2);
  v8 = type metadata accessor for CRLBoardAuxiliaryRealTimeChangeRecord();
  a2[3] = v8;
  a2[4] = sub_100700098(&qword_1019FC0F8, type metadata accessor for CRLBoardAuxiliaryRealTimeChangeRecord);
  v9 = sub_10002C58C(a2);
  sub_1006FFFD0(a1, v9, type metadata accessor for CRLGloballyScopedBoardIdentifier);
  *(v9 + *(v8 + 20)) = dword_101476F70[v5];
  v10 = (v9 + *(v8 + 24));
  *v10 = v7;
  v10[1] = v6;

  return sub_100024E98(v7, v6);
}

unint64_t sub_1006FFC64()
{
  result = qword_1019FC0D8;
  if (!qword_1019FC0D8)
  {
    sub_1005C4E5C(&qword_1019FC0E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FC0D8);
  }

  return result;
}

unint64_t sub_1006FFCCC()
{
  result = qword_1019FC0E8;
  if (!qword_1019FC0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FC0E8);
  }

  return result;
}

uint64_t sub_1006FFD20(int a1)
{
  if ((a1 - 5) > 0xE)
  {
    return 14;
  }

  else
  {
    return byte_101476FA8[a1 - 5];
  }
}

unint64_t sub_1006FFD44()
{
  result = qword_1019FC0F0;
  if (!qword_1019FC0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FC0F0);
  }

  return result;
}

uint64_t type metadata accessor for CRLBoardAuxiliaryRealTimeChangeRecord()
{
  result = qword_1019FC168;
  if (!qword_1019FC168)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1006FFDE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1006FFE74()
{
  result = type metadata accessor for CRLGloballyScopedBoardIdentifier(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1006FFEF8(uint64_t a1)
{
  *(a1 + 8) = sub_100700098(&qword_1019FC1A8, type metadata accessor for CRLBoardAuxiliaryRealTimeChangeRecord);
  result = sub_100700098(&qword_1019FC1B0, type metadata accessor for CRLBoardAuxiliaryRealTimeChangeRecord);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1006FFF7C()
{
  result = qword_1019FC1C0;
  if (!qword_1019FC1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FC1C0);
  }

  return result;
}

uint64_t sub_1006FFFD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100700038(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100700098(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1007000F4()
{
  result = qword_1019FC1D0;
  if (!qword_1019FC1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FC1D0);
  }

  return result;
}

unint64_t sub_10070014C()
{
  result = qword_1019FC1D8;
  if (!qword_1019FC1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FC1D8);
  }

  return result;
}

unint64_t sub_1007001A4()
{
  result = qword_1019FC1E0;
  if (!qword_1019FC1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FC1E0);
  }

  return result;
}

uint64_t sub_1007001F8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6564496472616F62 && a2 == 0xEF7265696669746ELL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_100700318@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for CRLAASApplicationTracker();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = [objc_opt_self() defaultCenter];
  v5 = qword_1019F2748;

  if (v5 != -1)
  {
    swift_once();
  }

  [v4 addObserver:v3 selector:"updateBoardInitialAppStateEventData:" name:qword_101AD8948 object:0];

  a1[3] = v2;
  a1[4] = &off_101891768;
  *a1 = v3;
  return result;
}

void sub_100700424(uint64_t a1, void *a2, void *a3)
{
  v70 = a1;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v73 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for DispatchQoS();
  v72 = *(v74 - 8);
  __chkstk_darwin(v74);
  v71 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchTime();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = *(v3 + OBJC_IVAR____TtC8Freeform27CRLGelatoShareSheetProvider_boardLibrary);
  v18 = *(v3 + OBJC_IVAR____TtC8Freeform27CRLGelatoShareSheetProvider_thumbnailProvider);
  if (!v18)
  {
    v41 = objc_opt_self();
    v75 = v17;
    v42 = [v41 _atomicIncrementAssertCount];
    v77[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v77);
    StaticString.description.getter();
    v43 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v44 = String._bridgeToObjectiveC()();

    v45 = [v44 lastPathComponent];

    v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = v47;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v49 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v42;
    v51 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v51;
    v52 = sub_1005CF04C();
    *(inited + 104) = v52;
    *(inited + 72) = v43;
    *(inited + 136) = &type metadata for String;
    v53 = sub_1000053B0();
    *(inited + 112) = v46;
    *(inited + 120) = v48;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v53;
    *(inited + 152) = 158;
    v54 = v77[0];
    *(inited + 216) = v51;
    *(inited + 224) = v52;
    *(inited + 192) = v54;
    v55 = v43;
    v56 = v54;
    v57 = static os_log_type_t.error.getter();
    sub_100005404(v49, &_mh_execute_header, v57, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v58 = static os_log_type_t.error.getter();
    sub_100005404(v49, &_mh_execute_header, v58, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v59 = swift_allocObject();
    v59[2] = 8;
    v59[3] = 0;
    v59[4] = 0;
    v59[5] = 0;
    v60 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v61 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v62 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v40 = String._bridgeToObjectiveC()();

    [v41 handleFailureInFunction:v61 file:v62 lineNumber:158 isFatal:0 format:v40 args:v60];

    goto LABEL_15;
  }

  v66 = &v63 - v16;
  v75 = v15;
  v68 = v7;
  v19 = v6;
  v20 = *(v3 + OBJC_IVAR____TtC8Freeform27CRLGelatoShareSheetProvider_thumbnailProvider + 8);
  v21 = v17;
  swift_unknownObjectRetain();
  v69 = v21;
  v67 = v3;
  v22 = sub_100700CF0(v21, v18, v20, a3);
  v23 = [v22 popoverPresentationController];
  if (v23)
  {
    v24 = v23;
    [v23 setBarButtonItem:v70];
  }

  v25 = [v22 popoverPresentationController];

  if (v25)
  {
    [v25 _setIgnoreBarButtonItemSiblings:1];
  }

  v70 = v18;
  [a2 presentViewController:v22 animated:1 completion:0];
  v26 = [a2 view];
  v65 = a2;
  if (v26)
  {
    v27 = v26;
    [v26 setAccessibilityViewIsModal:1];

    sub_100006370(0, &qword_1019F2D90);
    v63 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    v28 = v66;
    + infix(_:_:)();
    v64 = *(v11 + 8);
    v64(v13, v75);
    v29 = swift_allocObject();
    v29[2] = v22;
    v77[4] = sub_100702C10;
    v77[5] = v29;
    v77[0] = _NSConcreteStackBlock;
    v77[1] = *"";
    v77[2] = sub_100007638;
    v77[3] = &unk_101883780;
    v30 = _Block_copy(v77);
    v31 = v22;
    v32 = v71;
    static DispatchQoS.unspecified.getter();
    v76 = _swiftEmptyArrayStorage;
    sub_1005D91D8();
    sub_1005B981C(&unk_1019FF400);
    sub_10000D494();
    v33 = v73;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v34 = v63;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v30);

    (*(v68 + 8))(v33, v19);
    (*(v72 + 8))(v32, v74);
    v64(v28, v75);

    v35 = *(v67 + OBJC_IVAR____TtC8Freeform27CRLGelatoShareSheetProvider_presentingViewController);
    v36 = v65;
    *(v67 + OBJC_IVAR____TtC8Freeform27CRLGelatoShareSheetProvider_presentingViewController) = v65;

    v37 = [v36 navigationController];
    if (v37)
    {
      v38 = v37;
      v39 = [v37 view];

      v40 = v69;
      if (v39)
      {
        [v39 setAccessibilityElementsHidden:1];
      }

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      v40 = v69;
    }

LABEL_15:

    return;
  }

  __break(1u);
}

id sub_100700CF0(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v133 = a3;
  v134 = a2;
  v140 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v140);
  v8 = &v119 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  __chkstk_darwin(v9 - 8);
  v11 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CRLBoardIdentifier(0);
  v137 = *(v12 - 8);
  __chkstk_darwin(v12 - 8);
  v141 = &v119 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = v13;
  __chkstk_darwin(v14);
  v16 = &v119 - v15;
  v139 = v4;
  v17 = *&v4[OBJC_IVAR____TtC8Freeform27CRLGelatoShareSheetProvider_board];
  v18 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
  v19 = *(v17 + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
  v20 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  v21 = v19 + v20;
  v22 = v18;
  sub_10004FD94(v21, v8, type metadata accessor for CRLBoardCRDTData);
  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  sub_10003D45C(v8, type metadata accessor for CRLBoardCRDTData);
  v23 = (*(v17 + v18) + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v24 = *v23;
  v25 = v23[1];

  sub_10084BD4C(v11, v24, v25, v16);
  v26 = a4;
  if (!a4)
  {
    v27 = *(*(v17 + OBJC_IVAR____TtC8Freeform8CRLBoard_shareState) + 16);
    if (v27)
    {

      v28 = v27;
      [v28 copy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();

      sub_100006370(0, &qword_1019F52C0);
      if (swift_dynamicCast())
      {
        v26 = v150;
      }

      else
      {
        v26 = 0;
      }
    }

    else
    {
      v26 = 0;
    }
  }

  v29 = type metadata accessor for CRLBoardShareItemProviderHelper();
  v30 = *(v17 + v22);
  v132 = v22;
  v31 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10004FD94(v30 + v31, v8, type metadata accessor for CRLBoardCRDTData);
  v32 = a4;
  v131 = sub_1005B981C(&qword_101A1A020);
  CRRegister.wrappedValue.getter();
  sub_10003D45C(v8, type metadata accessor for CRLBoardCRDTData);
  v136 = v26;
  v33 = sub_100D193E4(v26, a1, v16, aBlock, v145, 0, 0xF000000000000000);

  v147 = &type metadata for CRLFeatureFlags;
  v148 = sub_100004D60();
  LOBYTE(aBlock) = 21;
  LOBYTE(v30) = isFeatureEnabled(_:)();
  sub_100005070(&aBlock);
  v135 = v33;
  if (v30)
  {
    v130 = v29;
    sub_1005B981C(&unk_1019F4D60);
    v34 = swift_allocObject();
    v129 = xmmword_101465920;
    *(v34 + 16) = xmmword_101465920;
    *(v34 + 32) = v33;
    v143 = v34;
    v35 = *(v17 + v132);
    v36 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
    swift_beginAccess();
    sub_10004FD94(v35 + v36, v8, type metadata accessor for CRLBoardCRDTData);
    v37 = v33;
    CRRegister.wrappedValue.getter();
    sub_10003D45C(v8, type metadata accessor for CRLBoardCRDTData);
    v38 = sub_100D1977C(a1, v16, aBlock, v145);

    v39 = v38;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v143 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v143 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v128 = v143;
    v40 = swift_allocObject();
    *(v40 + 16) = v129;
    v41 = v40;
    v127 = v40;
    v42 = v141;
    sub_10004FD94(v16, v141, type metadata accessor for CRLBoardIdentifier);
    v43 = type metadata accessor for CRLSendACopyActivity_i();
    v44 = objc_allocWithZone(v43);
    v120 = v16;
    *&v129 = v39;
    v45 = v44;
    *&v44[OBJC_IVAR____TtC8Freeform22CRLSendACopyActivity_i_activityItems] = 0;
    *&v44[OBJC_IVAR____TtC8Freeform22CRLSendACopyActivity_i_collaborationItem] = 0;
    sub_10004FD94(v42, &v44[OBJC_IVAR____TtC8Freeform22CRLSendACopyActivity_i_boardIdentifier], type metadata accessor for CRLBoardIdentifier);
    v142.receiver = v45;
    v142.super_class = v43;
    v46 = objc_msgSendSuper2(&v142, "init");
    sub_10003D45C(v42, type metadata accessor for CRLBoardIdentifier);
    *(v41 + 32) = v46;
    v47 = objc_opt_self();
    v48 = [v47 mainBundle];
    v49 = String._bridgeToObjectiveC()();
    v50 = String._bridgeToObjectiveC()();
    v51 = [v48 localizedStringForKey:v49 value:v50 table:0];

    v126 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v125 = v52;

    sub_100EC5754();
    sub_100EC5A5C();
    v53 = [v47 mainBundle];
    v54 = String._bridgeToObjectiveC()();
    v55 = String._bridgeToObjectiveC()();
    v56 = [v53 localizedStringForKey:v54 value:v55 table:0];

    v124 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v123 = v57;

    v58 = [v47 mainBundle];
    v59 = String._bridgeToObjectiveC()();
    v60 = String._bridgeToObjectiveC()();
    v61 = [v58 localizedStringForKey:v59 value:v60 table:0];

    v122 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v121 = v62;

    v63 = [v47 mainBundle];
    v64 = String._bridgeToObjectiveC()();
    v65 = String._bridgeToObjectiveC()();
    v66 = [v63 localizedStringForKey:v64 value:v65 table:0];

    v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v69 = v68;

    v70 = *(v17 + v132);
    v71 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
    swift_beginAccess();
    sub_10004FD94(v70 + v71, v8, type metadata accessor for CRLBoardCRDTData);
    CRRegister.wrappedValue.getter();
    sub_10003D45C(v8, type metadata accessor for CRLBoardCRDTData);
    v72 = aBlock;
    v73 = v145;
    v74 = v134;
    ObjectType = swift_getObjectType();
    v76 = v120;
    v77 = sub_100D18984(v120, v72, v73, v74, v130, ObjectType, v133);

    v78 = objc_allocWithZone(UIActivityItemsConfiguration);
    sub_100006370(0, &unk_101A23D20);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v80 = [v78 initWithItemProviders:isa];

    v81 = swift_allocObject();
    *(v81 + 16) = v127;
    v148 = sub_1000C104C;
    v149 = v81;
    aBlock = _NSConcreteStackBlock;
    v145 = *"";
    v146 = sub_100701C80;
    v147 = &unk_1018836B8;
    v82 = _Block_copy(&aBlock);

    [v80 setApplicationActivitiesProvider:v82];
    _Block_release(v82);
    v83 = swift_allocObject();
    v84 = v126;
    v83[2] = v77;
    v83[3] = v84;
    v85 = v124;
    v83[4] = v125;
    v83[5] = v85;
    v83[6] = v123;
    v83[7] = v67;
    v86 = v122;
    v83[8] = v69;
    v83[9] = v86;
    v83[10] = v121;
    v148 = sub_100702ADC;
    v149 = v83;
    aBlock = _NSConcreteStackBlock;
    v145 = *"";
    v146 = sub_100701F94;
    v147 = &unk_101883708;
    v87 = _Block_copy(&aBlock);
    v88 = v77;

    [v80 setPerItemMetadataProvider:v87];
    _Block_release(v87);
    type metadata accessor for CRLSelectionAwareActivityViewController();
    v89 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v90 = v80;
    v91 = [v89 initWithActivityItemsConfiguration:v90];
    v92 = sub_100F7D680(v91);

    v93 = v139;
    v94 = v76;
    v95 = v137;
  }

  else
  {
    sub_1005B981C(&unk_1019F4D60);
    v96 = swift_allocObject();
    *(v96 + 16) = xmmword_101465920;
    *(v96 + 32) = v33;
    v97 = objc_allocWithZone(UIActivityItemsConfiguration);
    sub_100006370(0, &unk_101A23D20);
    v98 = v33;
    v99 = Array._bridgeToObjectiveC()().super.isa;

    v100 = [v97 initWithItemProviders:v99];

    v101 = v141;
    sub_10004FD94(v16, v141, type metadata accessor for CRLBoardIdentifier);
    v94 = v16;
    v95 = v137;
    v102 = (*(v137 + 80) + 16) & ~*(v137 + 80);
    v103 = (v138 + v102 + 7) & 0xFFFFFFFFFFFFFFF8;
    v104 = swift_allocObject();
    sub_1005EB270(v101, v104 + v102);
    v93 = v139;
    *(v104 + v103) = v139;
    v105 = (v104 + ((v103 + 15) & 0xFFFFFFFFFFFFFFF8));
    v106 = v133;
    *v105 = v134;
    v105[1] = v106;
    v148 = sub_10070297C;
    v149 = v104;
    aBlock = _NSConcreteStackBlock;
    v145 = *"";
    v146 = sub_100701F94;
    v147 = &unk_101883618;
    v107 = _Block_copy(&aBlock);
    v108 = v93;
    swift_unknownObjectRetain();

    [v100 setPerItemMetadataProvider:v107];
    _Block_release(v107);
    type metadata accessor for CRLSelectionAwareActivityViewController();
    v109 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v110 = v100;
    v111 = [v109 initWithActivityItemsConfiguration:v110];
    v92 = sub_100F7D680(v111);
  }

  v112 = v141;
  sub_10004FD94(v94, v141, type metadata accessor for CRLBoardIdentifier);
  v113 = (*(v95 + 80) + 24) & ~*(v95 + 80);
  v114 = swift_allocObject();
  *(v114 + 16) = v93;
  sub_1005EB270(v112, v114 + v113);
  v148 = sub_100702A40;
  v149 = v114;
  aBlock = _NSConcreteStackBlock;
  v145 = *"";
  v146 = sub_100992704;
  v147 = &unk_101883668;
  v115 = _Block_copy(&aBlock);
  v116 = v93;
  v117 = v92;

  [v117 setCompletionWithItemsHandler:v115];
  _Block_release(v115);

  sub_10003D45C(v94, type metadata accessor for CRLBoardIdentifier);
  return v117;
}

Class sub_100701C80(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);

  sub_100006370(0, &qword_1019FC268);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

id sub_100701D00@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;
      if (v12 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v14 == v15)
      {

LABEL_19:
        sub_1005B981C(&unk_1019F4D60);
        v18 = swift_allocObject();
        *(v18 + 16) = xmmword_101465920;
        v19 = objc_allocWithZone(UIActivityCollaborationModeRestriction_Legacy);
        v20 = String._bridgeToObjectiveC()();
        v21 = String._bridgeToObjectiveC()();
        v22 = String._bridgeToObjectiveC()();
        v23 = String._bridgeToObjectiveC()();
        v24 = [v19 initWithDisabledMode:0 alertTitle:v20 alertMessage:v21 alertDismissButtonTitle:v22 alertContinueToModeButtonTitle:v23];

        *(v18 + 32) = v24;
        result = sub_1005B981C(&qword_1019FC260);
        *(a3 + 24) = result;
        *a3 = v18;
        return result;
      }

      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v17)
      {
        goto LABEL_19;
      }

LABEL_14:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }
  }

  if (a1)
  {
    goto LABEL_14;
  }

  *(a3 + 24) = sub_100006370(0, &unk_101A23D30);
  *a3 = a2;

  return a2;
}

id sub_100701F94(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(v15, a2, v6);

  v7 = v16;
  if (v16)
  {
    v8 = sub_100020E58(v15, v16);
    v9 = *(v7 - 8);
    v10 = __chkstk_darwin(v8);
    v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v12, v10);
    v13 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v9 + 8))(v12, v7);
    sub_100005070(v15);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void sub_1007020FC(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v12);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    goto LABEL_2;
  }

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
  {
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v20 & 1) == 0)
    {
LABEL_2:
      *a6 = 0u;
      *(a6 + 16) = 0u;
      return;
    }
  }

  v21 = type metadata accessor for CRLBoardShareItemProviderHelper();
  v22 = *(*(a3 + OBJC_IVAR____TtC8Freeform27CRLGelatoShareSheetProvider_board) + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
  v23 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10004FD94(v22 + v23, v14, type metadata accessor for CRLBoardCRDTData);
  sub_1005B981C(&qword_101A1A020);
  CRRegister.wrappedValue.getter();
  sub_10003D45C(v14, type metadata accessor for CRLBoardCRDTData);
  v24 = v28[1];
  v25 = v28[2];
  ObjectType = swift_getObjectType();
  v27 = sub_100D18984(a2, v24, v25, a4, v21, ObjectType, a5);

  *(a6 + 24) = sub_100006370(0, &unk_101A23D30);
  *a6 = v27;
}

void sub_100702320(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6)
{
  v9 = type metadata accessor for CRLBoardIdentifier(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1005B981C(&qword_1019FB750);
  *&v14 = __chkstk_darwin(v13 - 8).n128_u64[0];
  v16 = &v30 - v15;
  if ((a2 & 1) == 0)
  {
    if (qword_1019F2098 != -1)
    {
      swift_once();
    }

    v17 = static OS_os_log.crlDefault;
    v18 = static os_log_type_t.default.getter();
    sub_100005404(v17, &_mh_execute_header, v18, "UIActivityViewController returned without completing. Delete any cached shares.", 79, 2, _swiftEmptyArrayStorage);
    v19 = type metadata accessor for TaskPriority();
    (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
    sub_10004FD94(a6, &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CRLBoardIdentifier);
    type metadata accessor for MainActor();
    v20 = a5;
    v21 = static MainActor.shared.getter();
    v22 = (*(v10 + 80) + 40) & ~*(v10 + 80);
    v23 = swift_allocObject();
    v23[2] = v21;
    v23[3] = &protocol witness table for MainActor;
    v23[4] = v20;
    sub_1005EB270(v12, v23 + v22);
    sub_10064191C(0, 0, v16, &unk_101477030, v23);
  }

  v24 = OBJC_IVAR____TtC8Freeform27CRLGelatoShareSheetProvider_presentingViewController;
  v25 = *&a5[OBJC_IVAR____TtC8Freeform27CRLGelatoShareSheetProvider_presentingViewController];
  if (v25)
  {
    v26 = [v25 navigationController];
    if (v26)
    {
      v27 = v26;
      v28 = [v26 view];

      if (v28)
      {
        [v28 setAccessibilityElementsHidden:0];
      }
    }
  }

  v29 = *&a5[v24];
  *&a5[v24] = 0;
}

uint64_t sub_1007025E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[5] = v7;
  v5[6] = v6;

  return _swift_task_switch(sub_100702680, v7, v6);
}

uint64_t sub_100702680()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_100702724;
  v2 = *(v0 + 24);

  return sub_1010AD998(v2);
}

uint64_t sub_100702724()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return _swift_task_switch(sub_100658F10, v3, v2);
}

void sub_100702844(void *a1)
{
  v1 = UIAccessibilityLayoutChangedNotification;
  v2 = [a1 viewIfLoaded];
  UIAccessibilityPostNotification(v1, v2);
}

void sub_10070297C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = (v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  sub_1007020FC(a1, v2 + v6, v8, v10, v11, a2);
}

void sub_100702A40(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v10 = *(v4 + 16);
  v11 = v4 + ((*(v9 + 80) + 24) & ~*(v9 + 80));

  sub_100702320(a1, a2, a3, a4, v10, v11);
}

uint64_t sub_100702B18(uint64_t a1)
{
  v4 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D3D4;

  return sub_1007025E8(a1, v6, v7, v8, v1 + v5);
}

Swift::Int sub_100702C48()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 + 1);
  return Hasher._finalize()();
}

Swift::Int sub_100702CC0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 + 1);
  return Hasher._finalize()();
}

uint64_t sub_100702D04@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100702E48(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100702DF4()
{
  result = qword_1019FC270;
  if (!qword_1019FC270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FC270);
  }

  return result;
}

uint64_t sub_100702E48(unint64_t a1)
{
  if (a1 >= 7)
  {
    return 6;
  }

  else
  {
    return (0x5040302010006uLL >> (8 * a1));
  }
}

unint64_t sub_100702E70()
{
  result = qword_1019FC278;
  if (!qword_1019FC278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FC278);
  }

  return result;
}

void sub_100702EC8(char *a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v145 = v3;
  v146 = v4;
  __chkstk_darwin(v3);
  v148 = &v126 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1005B981C(&qword_1019FB540);
  __chkstk_darwin(v6 - 8);
  v8 = &v126 - v7;
  v9 = sub_1005B981C(&qword_1019F8790);
  v140 = *(v9 - 1);
  __chkstk_darwin(v9);
  v142 = &v126 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v143 = &v126 - v12;
  __chkstk_darwin(v13);
  v139 = &v126 - v14;
  *&v1[OBJC_IVAR____TtC8Freeform27CRLPersistableSelectionPath_mostSpecificItemSelectionUUIDs] = _swiftEmptyArrayStorage;
  v15 = &qword_101AD6000;
  v16 = OBJC_IVAR____TtC8Freeform27CRLPersistableSelectionPath_userInfo;
  v17 = type metadata accessor for CRLPersistableSelectionPath.UserInfo(0);
  v18 = *(v17 - 8) + 56;
  v144 = *v18;
  v144(&v1[v16], 1, 1, v17);
  v19 = type metadata accessor for CRLPersistableSelectionPath(0);
  v151.receiver = v1;
  v151.super_class = v19;
  v20 = &selRef_ignoreUrl_;
  v147 = objc_msgSendSuper2(&v151, "init");
  v21 = [a1 orderedSelections];
  sub_100006370(0, &qword_1019F6CB0);
  v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v23 = (v22 >> 62);
  if (!(v22 >> 62))
  {
    v24 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v141 = v9;
    if (v24)
    {
      goto LABEL_3;
    }

LABEL_14:
    v9 = 0;
    v28 = v22 & 0xFFFFFFFFFFFFFF8;
    if (v23)
    {
      goto LABEL_15;
    }

    goto LABEL_9;
  }

  v24 = _CocoaArrayWrapper.endIndex.getter();
  v141 = v9;
  if (!v24)
  {
    goto LABEL_14;
  }

LABEL_3:
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    goto LABEL_80;
  }

  if ((v22 & 0xC000000000000001) != 0)
  {
    goto LABEL_81;
  }

  if ((v26 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_83;
  }

  if (v26 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  for (i = *(v22 + 8 * v26 + 32); ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
  {
    v9 = i;
    v28 = v22 & 0xFFFFFFFFFFFFFF8;
    if (v23)
    {
      break;
    }

LABEL_9:
    v29 = *(v28 + 16);
    v30 = v29 - 2;
    if (v29 >= 2)
    {
      goto LABEL_16;
    }

LABEL_10:
    v31 = v9;

    if (!v9)
    {
      v32 = 0;
      goto LABEL_52;
    }

    v30 = v31;
    v32 = v9;
LABEL_47:
    type metadata accessor for CRLGroupSelection();
    v103 = swift_dynamicCastClass();

    if (!v103)
    {
      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {
        type metadata accessor for CRLTableCellSelection(0);
        v104 = swift_dynamicCastClass();
        if (!v104)
        {
          goto LABEL_52;
        }

        v105 = v104;
        v106 = *(sub_1005B981C(&qword_1019FB548) + 48);
        sub_10070A5F0(v105 + OBJC_IVAR____TtC8Freeform21CRLTableCellSelection_range, v8, type metadata accessor for CRLTableCellRange);
        v8[v106] = *(v105 + OBJC_IVAR____TtC8Freeform21CRLTableCellSelection_type);
      }
    }

    swift_storeEnumTagMultiPayload();
    v144(v8, 0, 1, v17);
    v107 = *(v15 + 728);
    v108 = v147;
    swift_beginAccess();
    sub_10070A658(v8, &v108[v107]);
    swift_endAccess();
LABEL_52:
    type metadata accessor for CRLBoardItemSelection();
    v109 = [a1 mostSpecificSelectionOfClass:swift_getObjCClassFromMetadata()];
    if (!v109)
    {

LABEL_58:
      return;
    }

    v110 = v109;
    v111 = swift_dynamicCastClass();
    v8 = v147;
    if (!v111)
    {

      goto LABEL_58;
    }

    v142 = v110;
    v137 = v32;
    v138 = v9;
    v139 = a1;
    v15 = *(v111 + OBJC_IVAR____TtC8Freeform21CRLBoardItemSelection_boardItems);
    if ((v15 & 0xC000000000000001) != 0)
    {

      __CocoaSet.makeIterator()();
      type metadata accessor for CRLBoardItem(0);
      sub_10070A6C8(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
      Set.Iterator.init(_cocoa:)();
      v15 = v152[0];
      v23 = v152[1];
      v22 = v152[2];
      a1 = v152[3];
      v20 = v152[4];
    }

    else
    {
      v112 = -1 << *(v15 + 32);
      v23 = (v15 + 56);
      v22 = ~v112;
      v113 = -v112;
      if (v113 < 64)
      {
        v114 = ~(-1 << v113);
      }

      else
      {
        v114 = -1;
      }

      v20 = (v114 & *(v15 + 56));

      a1 = 0;
    }

    v141 = v22;
    v115 = (v22 + 64) >> 6;
    v143 = v23;
    v144 = (v146 + 32);
    if (v15 < 0)
    {
LABEL_64:
      v116 = __CocoaSet.Iterator.next()();
      if (v116)
      {
        v149 = v116;
        type metadata accessor for CRLBoardItem(0);
        v117 = swift_dynamicCast();
        v22 = v150;
        v18 = a1;
        v17 = v20;
        if (v150)
        {
          goto LABEL_72;
        }
      }

LABEL_78:

      sub_100035F90();
      return;
    }

    while (1)
    {
      v118 = a1;
      v119 = v20;
      v18 = a1;
      if (!v20)
      {
        break;
      }

LABEL_71:
      v17 = (v119 - 1) & v119;
      v117 = *(*(v15 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v119)))));
      v22 = v117;
      if (!v117)
      {
        goto LABEL_78;
      }

LABEL_72:
      v120 = v15;
      (*((swift_isaMask & *v22) + 0x88))(v117);
      v121 = OBJC_IVAR____TtC8Freeform27CRLPersistableSelectionPath_mostSpecificItemSelectionUUIDs;
      v122 = *&v8[OBJC_IVAR____TtC8Freeform27CRLPersistableSelectionPath_mostSpecificItemSelectionUUIDs];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v8[v121] = v122;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v122 = sub_100B356D0(0, v122[2] + 1, 1, v122);
        *&v8[v121] = v122;
      }

      v125 = v122[2];
      v124 = v122[3];
      if (v125 >= v124 >> 1)
      {
        v122 = sub_100B356D0(v124 > 1, v125 + 1, 1, v122);
      }

      v122[2] = v125 + 1;
      (*(v146 + 32))(v122 + ((*(v146 + 80) + 32) & ~*(v146 + 80)) + *(v146 + 72) * v125, v148, v145);
      v8 = v147;
      *&v147[v121] = v122;

      a1 = v18;
      v20 = v17;
      v15 = v120;
      v23 = v143;
      if (v15 < 0)
      {
        goto LABEL_64;
      }
    }

    while (1)
    {
      v18 = (v118 + 1);
      if (__OFADD__(v118, 1))
      {
        break;
      }

      if (v18 >= v115)
      {
        goto LABEL_78;
      }

      v119 = v23[v18];
      ++v118;
      if (v119)
      {
        goto LABEL_71;
      }
    }

    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    ;
  }

LABEL_15:
  v33 = _CocoaArrayWrapper.endIndex.getter();
  v30 = v33 - 2;
  if (v33 < 2)
  {
    goto LABEL_10;
  }

LABEL_16:
  if (!v9)
  {

    v32 = 0;
    goto LABEL_52;
  }

  v136 = v8;
  objc_opt_self();
  v34 = swift_dynamicCastObjCClass();
  v35 = v9;
  if (!v34)
  {
    v43 = v35;

    v30 = v43;
    v32 = v9;
    v8 = v136;
    goto LABEL_47;
  }

  v137 = v18;
  v36 = v35;
  v134 = v34;
  if (![v34 isValid])
  {

    v30 = v36;
    v32 = v9;
    v8 = v136;
    goto LABEL_47;
  }

  v135 = v36;
  v8 = v136;
  if ((v22 & 0xC000000000000001) != 0)
  {
LABEL_84:
    v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (v30 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_86;
    }

    v37 = *(v22 + 8 * v30 + 32);
  }

  v30 = v37;
  v38 = v135;

  type metadata accessor for CRLBoardItemSelection();
  v39 = swift_dynamicCastClass();
  if (!v39)
  {
    v32 = v30;

    v30 = v30;
    goto LABEL_47;
  }

  v138 = v9;
  v132 = OBJC_IVAR____TtC8Freeform21CRLBoardItemSelection_boardItems;
  v133 = v39;
  v40 = *&v39[OBJC_IVAR____TtC8Freeform21CRLBoardItemSelection_boardItems];
  if ((v40 & 0xC000000000000001) != 0)
  {
    v41 = v30;

    v42 = __CocoaSet.count.getter();
  }

  else
  {
    v42 = *(v40 + 16);
    v44 = v30;
  }

  if (v42 != 1)
  {
    v137 = objc_opt_self();
    LODWORD(v131) = [v137 _atomicIncrementAssertCount];
    v152[0] = [objc_allocWithZone(NSString) v20[165]];
    sub_100604538(_swiftEmptyArrayStorage, v152);
    StaticString.description.getter();
    v128 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v45 = String._bridgeToObjectiveC()();

    v46 = [v45 lastPathComponent];

    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v127 = v47;

    if (qword_1019F20A0 == -1)
    {
LABEL_32:
      v130 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v131;
      v129 = inited + 32;
      v131 = sub_100006370(0, &qword_1019F4D30);
      *(inited + 96) = v131;
      v49 = sub_1005CF04C();
      *(inited + 104) = v49;
      v50 = v128;
      *(inited + 72) = v128;
      *(inited + 136) = &type metadata for String;
      v51 = sub_1000053B0();
      v52 = v127;
      *(inited + 112) = v15;
      *(inited + 120) = v52;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v51;
      *(inited + 152) = 85;
      v53 = v152[0];
      *(inited + 216) = v131;
      *(inited + 224) = v49;
      *(inited + 192) = v53;
      v131 = v50;
      v54 = v53;
      v55 = static os_log_type_t.error.getter();
      v56 = v130;
      sub_100005404(v130, &_mh_execute_header, v55, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v57 = static os_log_type_t.error.getter();
      sub_100005404(v56, &_mh_execute_header, v57, "Should not have a text selection if multiple board items are selected", 69, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v58 = swift_allocObject();
      v58[2] = 8;
      v58[3] = 0;
      v58[4] = 0;
      v58[5] = 0;
      v131 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v59 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v130 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v60 = String._bridgeToObjectiveC()();

      v61 = v130;
      [v137 handleFailureInFunction:v59 file:v130 lineNumber:85 isFatal:0 format:v60 args:v131];

      v15 = &qword_101AD6000;
      goto LABEL_33;
    }

LABEL_86:
    swift_once();
    goto LABEL_32;
  }

LABEL_33:

  v63 = sub_100BC17C8(v62);

  if (!v63)
  {

LABEL_45:
    v32 = v30;
LABEL_46:
    v9 = v138;
    goto LABEL_47;
  }

  type metadata accessor for CRLWPShapeItem();
  v64 = swift_dynamicCastClass();
  if (!v64)
  {

    goto LABEL_45;
  }

  v65 = v64;
  v133 = v63;
  v66 = v134;
  if ([v134 isInsertionPoint])
  {
    v67 = [v66 headCursorAffinity];
    if (v67 == [v66 tailCursorAffinity])
    {
      v68 = *(v65 + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
      if (!v68)
      {
        goto LABEL_90;
      }

      v137 = v30;
      v69 = v68;
      v70 = [v66 rawRange];
      v71 = [v66 headCursorAffinity];
      v72 = v139;
      sub_100A1ED54(v70, v71, v139);

      v73 = sub_1005B981C(&qword_1019FB558);
      v74 = v73[12];
      v75 = v73[20];
      v142 = v73[16];
      v143 = v75;
      v76 = v140;
      v77 = v8;
      v78 = v66;
      v79 = v141;
      (*(v140 + 16))(v77, v72, v141);
      v80 = [v78 caretAffinity];
      *&v136[v74] = v80;
      v81 = [v78 isVisual];
      v136[v142] = v81;
      v82 = v78;
      v8 = v136;
      v83 = [v82 insertionEdge];

      v84 = v79;
      v32 = v137;
      (*(v76 + 8))(v72, v84);
      *&v8[v143] = v83;
      swift_storeEnumTagMultiPayload();
      v144(v8, 0, 1, v17);
      v15 = &qword_101AD6000;
      v85 = OBJC_IVAR____TtC8Freeform27CRLPersistableSelectionPath_userInfo;
      v86 = v147;
      swift_beginAccess();
      sub_10070A658(v8, &v86[v85]);
      swift_endAccess();
      v30 = v30;
      goto LABEL_46;
    }
  }

  v139 = a1;
  v87 = OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage;
  v88 = *(v65 + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (!v88)
  {
    goto LABEL_88;
  }

  v89 = v88;
  v90 = [v66 rawRange];
  v91 = [v66 headCursorAffinity];
  sub_100A1ED54(v90, v91, v143);

  v92 = *(v65 + v87);
  if (!v92)
  {
    goto LABEL_89;
  }

  v93 = v92;
  v94 = [v66 rawRange];
  v96 = v94 + v95;
  v15 = &qword_101AD6000;
  v8 = v136;
  if (!__OFADD__(v94, v95))
  {
    v137 = v30;
    v97 = [v66 tailCursorAffinity];
    sub_100A1ED54(v96, v97, v142);

    v98 = *(sub_1005B981C(&qword_1019FB550) + 48);
    v99 = v141;
    v100 = *(v140 + 32);
    v100(v8, v143, v141);
    v100(&v8[v98], v142, v99);
    v32 = v137;
    swift_storeEnumTagMultiPayload();
    v144(v8, 0, 1, v17);
    v101 = OBJC_IVAR____TtC8Freeform27CRLPersistableSelectionPath_userInfo;
    v102 = v147;
    swift_beginAccess();
    sub_10070A658(v8, &v102[v101]);
    swift_endAccess();
    v30 = v30;
    v9 = v138;
    a1 = v139;
    goto LABEL_47;
  }

  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
}