uint64_t ICArchivePreviewer.deinit()
{
  v1 = sub_100030480(&qword_100106AE0, &unk_1000CA340);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v17 - v4;
  swift_beginAccess();
  v6 = *(v0 + 24);
  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;
  v17 = v2 + 16;
  swift_bridgeObjectRetain_n();

  for (i = 0; v9; result = (*(v2 + 8))(v5, v1))
  {
    v13 = i;
LABEL_9:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    (*(v2 + 16))(v5, *(v6 + 48) + *(v2 + 72) * (v14 | (v13 << 6)), v1);
    ICArchivePreviewer.stopPreviewing(_:)(v5);
  }

  while (1)
  {
    v13 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      v15 = *(v0 + 24);
      *(v0 + 24) = &_swiftEmptyDictionarySingleton;

      v16 = *(v0 + 24);

      return v0;
    }

    v9 = *(v6 + 64 + 8 * v13);
    ++i;
    if (v9)
    {
      i = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t ICArchivePreviewer.__deallocating_deinit()
{
  ICArchivePreviewer.deinit();

  return swift_deallocClassInstance();
}

uint64_t ICArchivePreviewer.Errors.errorDescription.getter(uint64_t a1)
{
  if (a1)
  {
    result = sub_1000B5F30();
    __break(1u);
  }

  else
  {
    v1 = [objc_opt_self() mainBundle];
    v2 = sub_1000B55F0();
    v3 = [v1 localizedStringForKey:v2 value:0 table:0];

    v4 = sub_1000B5620();
    return v4;
  }

  return result;
}

uint64_t sub_100061A30(uint64_t a1, uint64_t a2)
{
  v4 = sub_100066DE0();

  return _BridgedNSError.hash(into:)(a1, a2, v4);
}

void *sub_100061A7C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result != 0;
  *a2 = 0;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_100061A9C(uint64_t a1)
{
  v2 = sub_100066DE0();

  return _BridgedNSError._domain.getter(a1, v2);
}

uint64_t sub_100061AD8(uint64_t a1)
{
  v2 = sub_100066DE0();

  return _BridgedNSError._code.getter(a1, v2);
}

uint64_t sub_100061B14(uint64_t a1, uint64_t a2)
{
  v4 = sub_100066DE0();

  return _BridgedNSError.init(_bridgedNSError:)(a1, a2, v4);
}

uint64_t ICArchivePreviewer.objects.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
}

void sub_100061BA0(void *a1, char a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1000B4DB0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v53 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100030480(&qword_100106AE0, &unk_1000CA340);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v57 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = (&v51 - v17);
  swift_beginAccess();
  v19 = *(a3 + 24);
  v20 = *(v19 + 16);
  v54 = v9;
  v55 = v8;
  v60 = a4;
  if (v20 && (v21 = sub_100063128(a4), (v22 & 1) != 0))
  {
    v23 = *(v19 + 56) + 24 * v21;
    v24 = *(v23 + 8);
    v25 = *(v23 + 16);
    v58 = *v23;
    v59 = v25;
    sub_100035D34(v58, v24, v25);
  }

  else
  {
    v58 = 0;
    v24 = 0;
    v59 = 255;
  }

  swift_endAccess();
  v56 = *(v13 + 16);
  v56(v18, v60, v12);
  swift_beginAccess();
  v26 = v13;
  v27 = v12;
  if (a2)
  {
    v28 = 2;
  }

  else
  {
    v28 = 1;
  }

  sub_100067000(a1, a2 & 1);
  v29 = *(a3 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v61 = *(a3 + 24);
  *(a3 + 24) = 0x8000000000000000;
  v31 = v28;
  v32 = v27;
  sub_100065318(a1, 0, v31, v18, isUniquelyReferenced_nonNull_native);
  v33 = *(v26 + 8);
  v33(v18, v27);
  *(a3 + 24) = v61;
  swift_endAccess();
  LOBYTE(v18) = v59;
  if (v59)
  {
    v52 = v33;
    if (qword_100106A60 == -1)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v46 = v58;
    sub_100035D34(v58, v24, 0);

    v47 = *(v24 + 16);
    if (!v47)
    {
LABEL_16:
      sub_10006700C(v46, v24, 0);

      return;
    }

    v48 = 0;
    v49 = (v24 + 40);
    while (v48 < *(v24 + 16))
    {
      ++v48;
      v18 = *(v49 - 1);
      v50 = *v49;
      v62 = a1;
      v63 = a2 & 1;

      v18(&v62);

      v49 += 2;
      if (v47 == v48)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  swift_once();
LABEL_10:
  v34 = sub_1000B5530();
  sub_100036380(v34, qword_100107A58);
  v35 = v57;
  v56(v57, v60, v32);
  v36 = sub_1000B5520();
  v37 = sub_1000B5930();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v62 = v60;
    *v38 = 136315138;
    v39 = v53;
    LODWORD(v56) = v37;
    sub_1000B5040();
    sub_100066EA8(&qword_100106F10, &type metadata accessor for URL);
    v40 = v55;
    v41 = sub_1000B5EE0();
    v42 = v32;
    v44 = v43;
    (*(v54 + 8))(v39, v40);
    v52(v35, v42);
    v45 = sub_100062B20(v41, v44, &v62);

    *(v38 + 4) = v45;
    _os_log_impl(&_mh_execute_header, v36, v56, "Preview object is in unexpected state {url: %s}", v38, 0xCu);
    sub_100035DA8(v60);

    sub_10006700C(v58, v24, v59);
  }

  else
  {
    sub_10006700C(v58, v24, v18);

    v52(v35, v32);
  }
}

uint64_t sub_1000620EC(void *a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v66 = a5;
  v67 = a6;
  v63 = a4;
  v64 = a2;
  v8 = sub_1000B5540();
  v71 = *(v8 - 8);
  v72 = v8;
  v9 = *(v71 + 64);
  __chkstk_darwin(v8);
  v70 = &v58[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1000B5560();
  v68 = *(v11 - 8);
  v69 = v11;
  v12 = *(v68 + 64);
  __chkstk_darwin(v11);
  v65 = &v58[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for ICArchiveImporter();
  v15 = objc_allocWithZone(v14);
  swift_getObjectType();
  v16 = [objc_opt_self() defaultManager];
  IsAlexandriaDemoModeEnabled = ICInternalSettingsIsAlexandriaDemoModeEnabled();
  v18 = ICInternalSettingsIsAlexandriaDemoModeEnabled();
  v19 = objc_allocWithZone(v14);
  v19[OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_isImporting] = 0;
  v20 = OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_errors;
  v21 = a1;
  *&v19[v20] = sub_100030190(_swiftEmptyArrayStorage);
  v22 = a3;
  *&v19[OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_saveBatchSize] = 32;
  v19[OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_didReceiveMemoryWarning] = 0;
  v23 = &v19[OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_didReceiveMemoryWarningObserver];
  *v23 = 0u;
  v23[1] = 0u;
  *&v19[OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_context] = v21;
  v24 = &v19[OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_configuration];
  *v24 = IsAlexandriaDemoModeEnabled;
  v24[1] = v18;
  *(v24 + 2) = 0;
  *(v24 + 3) = 0;
  *(v24 + 1) = 0;
  *(v24 + 16) = 2;
  v25 = &v19[OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_fileManager];
  *v25 = v16;
  v25[1] = &protocol witness table for NSFileManager;
  v79.receiver = v19;
  v79.super_class = v14;
  v26 = v21;
  v27 = objc_msgSendSuper2(&v79, "init");
  sub_100037400();

  swift_deallocPartialClassInstance();
  v28 = [objc_opt_self() inMemoryAccountInContext:v26];
  v29 = [v28 defaultFolder];
  v30 = sub_10003CB84(v64, v29, &off_1000F6760, a3);
  v32 = v31;
  v33 = v30;
  v62 = v34;
  v64 = v35;
  v36 = v63;

  aBlock = 0;
  v37 = [v26 save:&aBlock];
  v38 = aBlock;
  if (v37)
  {
    sub_1000362AC(0, &unk_1001077C0, OS_dispatch_queue_ptr);
    v39 = v38;
    v61 = sub_1000B5980();
    v40 = swift_allocObject();
    v60 = v33;
    v41 = v62;
    *(v40 + 16) = v33;
    *(v40 + 24) = v41;
    v42 = v64;
    *(v40 + 32) = v64;
    v43 = v32 & 1;
    *(v40 + 40) = v43;
    v59 = v43;
    *(v40 + 48) = v36;
    *(v40 + 56) = v22;
    v44 = v67;
    *(v40 + 64) = v66;
    *(v40 + 72) = v44;
    v77 = sub_100066F98;
    v78 = v40;
    aBlock = _NSConcreteStackBlock;
    v74 = 1107296256;
    v75 = sub_10005AEE0;
    v76 = &unk_1000F4BB0;
    v66 = _Block_copy(&aBlock);
    sub_100066FB0(v33, v41, v42, v43);

    v45 = v22;

    v46 = v65;
    sub_1000B5550();
    aBlock = _swiftEmptyArrayStorage;
    sub_100066EA8(&qword_1001077A0, &type metadata accessor for DispatchWorkItemFlags);
    sub_100030480(&qword_1001077A8, &unk_1000CBD20);
    sub_100067020(&unk_1001077B0, &qword_1001077A8, &unk_1000CBD20);
    v47 = v70;
    v48 = v72;
    sub_1000B5B10();
    v49 = v66;
    v50 = v61;
    sub_1000B5990();
    _Block_release(v49);

    sub_100066EF0(v60, v62, v64, v59);
  }

  else
  {
    v51 = aBlock;
    v52 = sub_1000B4C70();

    swift_willThrow();
    sub_100066EF0(v33, v62, v64, v32 & 1);
    v48 = v72;
    v46 = v65;

    sub_1000362AC(0, &unk_1001077C0, OS_dispatch_queue_ptr);
    v53 = sub_1000B5980();
    v54 = swift_allocObject();
    v55 = v67;
    v54[2] = v66;
    v54[3] = v55;
    v54[4] = v52;
    v77 = sub_100066E74;
    v78 = v54;
    aBlock = _NSConcreteStackBlock;
    v74 = 1107296256;
    v75 = sub_10005AEE0;
    v76 = &unk_1000F4B60;
    v56 = _Block_copy(&aBlock);

    swift_errorRetain();

    sub_1000B5550();
    aBlock = _swiftEmptyArrayStorage;
    sub_100066EA8(&qword_1001077A0, &type metadata accessor for DispatchWorkItemFlags);
    sub_100030480(&qword_1001077A8, &unk_1000CBD20);
    sub_100067020(&unk_1001077B0, &qword_1001077A8, &unk_1000CBD20);
    v47 = v70;
    sub_1000B5B10();
    sub_1000B5990();

    _Block_release(v56);
  }

  (*(v71 + 8))(v47, v48);
  return (*(v68 + 8))(v46, v69);
}

void sub_1000628A4(void *a1, uint64_t a2, void *a3, char a4, uint64_t a5, void *a6, void (*a7)(void *, uint64_t))
{
  v9 = a1;
  if (a4)
  {
    swift_errorRetain();
    v10 = 1;
  }

  else
  {
    v14[0] = a1;
    v14[1] = a2;
    v14[2] = a3;

    v13 = a3;
    sub_100062990(v14, a5, &v15);

    v9 = v15;
    v10 = v16;
  }

  [a6 setCompletedUnitCount:{objc_msgSend(a6, "totalUnitCount")}];
  a7(v9, v10);

  sub_1000362F4(v9, v10);
}

void sub_100062990(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 16);
  v5 = [*(a2 + 16) viewContext];
  v6 = [v4 objectID];
  v7 = [v5 objectWithID:v6];

  v14[3] = sub_1000362AC(0, &qword_100106F50, NSManagedObject_ptr);
  v14[0] = v7;
  v8 = v7;
  v9 = sub_10003296C(v14);
  sub_100035DA8(v14);
  v10 = [v9 isPasswordProtected];
  v11 = v10;
  if (v10)
  {
    sub_100066AA8();
    v12 = swift_allocError();
    *v13 = 0;

    v9 = v12;
  }

  *a3 = v9;
  *(a3 + 8) = v11;
}

void sub_100062AB8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_100062B20(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100062BEC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100030378(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100035DA8(v11);
  return v7;
}

unint64_t sub_100062BEC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100062CF8(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1000B5C30();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_100062CF8(uint64_t a1, unint64_t a2)
{
  v4 = sub_100062D44(a1, a2);
  sub_100062E74(&off_1000F3208);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100062D44(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100041C10(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1000B5C30();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1000B56F0();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100041C10(v10, 0);
        result = sub_1000B5C00();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100062E74(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_100062F60(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_100062F60(char *result, int64_t a2, char a3, char *a4)
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
    sub_100030480(&qword_100106FB0, &unk_1000CC360);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

unint64_t sub_100063054(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1000B4DB0();
  sub_100066EA8(&unk_100107790, &type metadata accessor for URL);
  v5 = sub_1000B5590();
  return sub_100066134(a1, v5, &type metadata accessor for URL, &qword_100107B48, &type metadata accessor for URL, &protocol conformance descriptor for URL);
}

unint64_t sub_100063128(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_100030480(&qword_100106AE0, &unk_1000CA340);
  sub_100067020(&qword_100107B60, &qword_100106AE0, &unk_1000CA340);
  v5 = sub_1000B5590();

  return sub_100065EB8(a1, v5);
}

uint64_t sub_1000631D0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10006320C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1000B5FB0();
  sub_1000B56A0();
  v6 = sub_1000B5FE0();

  return sub_10006607C(a1, a2, v6);
}

unint64_t sub_100063284(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1000B4F00();
  sub_100066EA8(&qword_100106FE0, &type metadata accessor for UUID);
  v5 = sub_1000B5590();
  return sub_100066134(a1, v5, &type metadata accessor for UUID, &qword_100107B58, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
}

unint64_t sub_100063358(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1000B5620();
  sub_1000B5FB0();
  sub_1000B56A0();
  v4 = sub_1000B5FE0();

  return sub_1000662D4(a1, v4);
}

unint64_t sub_1000633EC(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_1000B5FA0();

  return sub_1000663D8(a1, v4);
}

void *sub_100063430(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1000335F8(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_100030480(&qword_100106D90, &qword_1000CAB00);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100063534(uint64_t a1)
{
  v69 = _s3TagVMa();
  v4 = *(v69 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v69);
  v67 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100030480(&qword_100107B40, &unk_1000CC330);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v66 = &v56 - v13;
  result = __chkstk_darwin(v12);
  v16 = &v56 - v15;
  v17 = *(a1 + 16);
  v18 = *v2;
  v19 = *(*v2 + 16);
  v20 = v19 + v17;
  if (__OFADD__(v19, v17))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v1 = v4;
  v21 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v68 = v11;
  if (!isUniquelyReferenced_nonNull_native || (v23 = v18[3] >> 1, v23 < v20))
  {
    if (v19 <= v20)
    {
      v24 = v19 + v17;
    }

    else
    {
      v24 = v19;
    }

    v18 = sub_1000338C0(isUniquelyReferenced_nonNull_native, v24, 1, v18);
    v23 = v18[3] >> 1;
  }

  v25 = v18[2];
  v20 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v19 = *(v4 + 72);
  v26 = v23 - v25;
  result = sub_100035A64(&v70, v18 + v20 + v19 * v25, v23 - v25, a1);
  if (result < v17)
  {
    goto LABEL_16;
  }

  if (result)
  {
    v28 = v18[2];
    v29 = __OFADD__(v28, result);
    v30 = v28 + result;
    if (v29)
    {
      __break(1u);
      goto LABEL_20;
    }

    v18[2] = v30;
  }

  if (result != v26)
  {
    result = sub_100035A5C();
LABEL_14:
    *v2 = v18;
    return result;
  }

LABEL_17:
  v65 = v18[2];
  v27 = v71;
  v58 = v71;
  v59 = v70;
  v30 = v73;
  v56 = v72;
  v31 = v74;
  if (v74)
  {
    v32 = v73;
LABEL_27:
    v36 = (v31 - 1) & v31;
    sub_1000361E0(*(v59 + 48) + (__clz(__rbit64(v31)) | (v32 << 6)) * v19, v16);
    v61 = *(v1 + 56);
    v61(v16, 0, 1, v69);
    v35 = v32;
    while (1)
    {
      v37 = v66;
      sub_100030C74(v16, v66, &qword_100107B40, &unk_1000CC330);
      v38 = *(v1 + 48);
      v1 += 48;
      v64 = v38;
      if (v38(v37, 1, v69) == 1)
      {
        break;
      }

      v57 = (v56 + 64) >> 6;
      v60 = v4 + 56;
      v39 = v65;
      while (1)
      {
        sub_100066D1C(v37);
        v43 = v18[3];
        v44 = v43 >> 1;
        v65 = v39;
        if ((v43 >> 1) < v39 + 1)
        {
          v18 = sub_1000338C0(v43 > 1, v39 + 1, 1, v18);
          v44 = v18[3] >> 1;
        }

        v45 = v68;
        sub_100030C74(v16, v68, &qword_100107B40, &unk_1000CC330);
        if (v64(v45, 1, v69) != 1)
        {
          break;
        }

        v46 = v35;
        v47 = v68;
LABEL_37:
        sub_100066D1C(v47);
        v40 = v65;
        v35 = v46;
LABEL_32:
        v41 = v69;
        v18[2] = v40;
        v37 = v66;
        sub_100030C74(v16, v66, &qword_100107B40, &unk_1000CC330);
        v42 = v64(v37, 1, v41);
        v39 = v65;
        if (v42 == 1)
        {
          goto LABEL_29;
        }
      }

      v62 = v18 + v20;
      v48 = v65;
      if (v65 <= v44)
      {
        v48 = v44;
      }

      v63 = v48;
      v47 = v68;
      while (1)
      {
        v52 = v67;
        sub_100050EC4(v47, v67);
        if (v65 == v63)
        {
          sub_100066D84(v52);
          v40 = v63;
          v65 = v63;
          goto LABEL_32;
        }

        v4 = v65;
        sub_100066D1C(v16);
        sub_100050EC4(v52, &v62[v4 * v19]);
        if (!v36)
        {
          break;
        }

        v53 = v35;
LABEL_52:
        v55 = __clz(__rbit64(v36));
        v36 &= v36 - 1;
        sub_1000361E0(*(v59 + 48) + (v55 | (v53 << 6)) * v19, v16);
        v49 = 0;
        v35 = v53;
LABEL_42:
        v65 = v4 + 1;
        v50 = v69;
        v61(v16, v49, 1, v69);
        v47 = v68;
        sub_100030C74(v16, v68, &qword_100107B40, &unk_1000CC330);
        v51 = v64(v47, 1, v50);
        v46 = v35;
        if (v51 == 1)
        {
          goto LABEL_37;
        }
      }

      if (v57 <= (v35 + 1))
      {
        v54 = v35 + 1;
      }

      else
      {
        v54 = v57;
      }

      while (1)
      {
        v53 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          break;
        }

        if (v53 >= v57)
        {
          v36 = 0;
          v49 = 1;
          v35 = v54 - 1;
          goto LABEL_42;
        }

        v36 = *(v58 + 8 * v53);
        ++v35;
        if (v36)
        {
          goto LABEL_52;
        }
      }

      __break(1u);
LABEL_54:
      v61 = *(v1 + 56);
      v61(v16, 1, 1, v69);
      v36 = 0;
    }

LABEL_29:
    sub_100066D1C(v16);
    sub_100035A5C();
    result = sub_100066D1C(v37);
    goto LABEL_14;
  }

LABEL_20:
  v33 = (v56 + 64) >> 6;
  if (v33 <= v30 + 1)
  {
    v34 = v30 + 1;
  }

  else
  {
    v34 = (v56 + 64) >> 6;
  }

  v35 = v34 - 1;
  while (1)
  {
    v32 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v32 >= v33)
    {
      goto LABEL_54;
    }

    v31 = *(v27 + 8 * v32);
    ++v30;
    if (v31)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100063B24(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_100030480(&qword_100106AE0, &unk_1000CA340);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v50 = &v44 - v9;
  v10 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v11 = *(*v2 + 24);
  }

  sub_100030480(&unk_100107810, &unk_1000CBD60);
  v49 = a2;
  result = sub_1000B5D10();
  v13 = result;
  if (*(v10 + 16))
  {
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v45 = v2;
    v46 = (v7 + 16);
    v47 = v10;
    v48 = v7;
    v51 = (v7 + 32);
    v20 = result + 64;
    v55 = v6;
    v21 = v50;
    while (v18)
    {
      v24 = __clz(__rbit64(v18));
      v25 = (v18 - 1) & v18;
LABEL_17:
      v28 = v24 | (v14 << 6);
      v29 = *(v10 + 48) + *(v48 + 72) * v28;
      v30 = 24 * v28;
      v53 = *(v48 + 72);
      v54 = v25;
      if (v49)
      {
        (*v51)(v21, v29, v55);
        v31 = *(v10 + 56) + v30;
        v32 = *(v31 + 8);
        v52 = *v31;
        v33 = *(v31 + 16);
      }

      else
      {
        (*v46)(v21, v29, v55);
        v34 = *(v10 + 56) + v30;
        v32 = *(v34 + 8);
        v33 = *(v34 + 16);
        v52 = *v34;
        sub_100035D34(v52, v32, v33);
      }

      v35 = *(v13 + 40);
      sub_100067020(&qword_100107B60, &qword_100106AE0, &unk_1000CA340);
      result = sub_1000B5590();
      v36 = -1 << *(v13 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v20 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        v21 = v50;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v20 + 8 * v38);
          if (v42 != -1)
          {
            v22 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v37) & ~*(v20 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
      v21 = v50;
LABEL_9:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v51)(*(v13 + 48) + v53 * v22, v21, v55);
      v23 = *(v13 + 56) + 24 * v22;
      *v23 = v52;
      *(v23 + 8) = v32;
      *(v23 + 16) = v33;
      ++*(v13 + 16);
      v10 = v47;
      v18 = v54;
    }

    v26 = v14;
    while (1)
    {
      v14 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v27 = v15[v14];
      ++v26;
      if (v27)
      {
        v24 = __clz(__rbit64(v27));
        v25 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v49 & 1) == 0)
    {

      v3 = v45;
      goto LABEL_36;
    }

    v43 = 1 << *(v10 + 32);
    v3 = v45;
    if (v43 >= 64)
    {
      bzero(v15, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v43;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

uint64_t sub_100063F60(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100030480(&unk_100107820, &unk_1000CBD70);
  v37 = a2;
  result = sub_1000B5D10();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v36 = v5;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = (v21 + 32 * v20);
      if (v37)
      {
        sub_100030C64(v23, v38);
      }

      else
      {
        sub_100030378(v23, v38);
        v24 = v22;
      }

      v25 = *(v8 + 40);
      sub_1000B5620();
      sub_1000B5FB0();
      sub_1000B56A0();
      v26 = sub_1000B5FE0();

      v27 = -1 << *(v8 + 32);
      v28 = v26 & ~v27;
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
      *(*(v8 + 48) + 8 * v16) = v22;
      result = sub_100030C64(v38, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
      v5 = v36;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_100064244(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  sub_100030480(a3, a4);
  v41 = a2;
  result = sub_1000B5D10();
  v10 = result;
  if (*(v7 + 16))
  {
    v39 = v5;
    v40 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v41 & 1) == 0)
      {
        v28 = v24[1];

        v29 = v27;
      }

      v30 = *(v10 + 40);
      sub_1000B5FB0();
      sub_1000B56A0();
      result = sub_1000B5FE0();
      v31 = -1 << *(v10 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v17 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v17 + 8 * v33);
          if (v37 != -1)
          {
            v18 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v32) & ~*(v17 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v40;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v5 = v39;
      goto LABEL_35;
    }

    v38 = 1 << *(v7 + 32);
    v5 = v39;
    if (v38 >= 64)
    {
      bzero(v12, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v38;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_1000644E0(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_1000B4DB0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_100030480(&qword_100106B10, &qword_1000CA378);
  v43 = a2;
  result = sub_1000B5D10();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
        swift_errorRetain();
      }

      v29 = *(v14 + 40);
      sub_100066EA8(&unk_100107790, &type metadata accessor for URL);
      result = sub_1000B5590();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_1000648BC(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_1000B4F00();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_100030480(&qword_100106AF8, &unk_1000CA360);
  v48 = a2;
  result = sub_1000B5D10();
  v14 = result;
  if (*(v11 + 16))
  {
    v53 = v10;
    v44 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v45 = (v7 + 16);
    v46 = v11;
    v47 = v7;
    v49 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v28 = v25 | (v15 << 6);
      v29 = *(v11 + 48);
      v52 = *(v47 + 72);
      v30 = v29 + v52 * v28;
      if (v48)
      {
        (*v49)(v53, v30, v6);
        v31 = (*(v11 + 56) + 16 * v28);
        v32 = *v31;
        v50 = v31[1];
        v51 = v32;
      }

      else
      {
        (*v45)(v53, v30, v6);
        v33 = (*(v11 + 56) + 16 * v28);
        v34 = *v33;
        v50 = v33[1];
        v51 = v34;
      }

      v35 = *(v14 + 40);
      sub_100066EA8(&qword_100106FE0, &type metadata accessor for UUID);
      result = sub_1000B5590();
      v36 = -1 << *(v14 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v21 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v21 + 8 * v38);
          if (v42 != -1)
          {
            v22 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v37) & ~*(v21 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v49)(*(v14 + 48) + v52 * v22, v53, v6);
      v23 = (*(v14 + 56) + 16 * v22);
      v24 = v50;
      *v23 = v51;
      v23[1] = v24;
      ++*(v14 + 16);
      v11 = v46;
    }

    v26 = v15;
    while (1)
    {
      v15 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v27 = v16[v15];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v19 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_36;
    }

    v43 = 1 << *(v11 + 32);
    v3 = v44;
    if (v43 >= 64)
    {
      bzero(v16, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v43;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_100064CA4(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_1000B4DB0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v53 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v11 = *(*v2 + 24);
  }

  sub_100030480(&qword_100106AD0, &unk_1000CA320);
  v52 = a2;
  result = sub_1000B5D10();
  v13 = result;
  if (*(v10 + 16))
  {
    v59 = v6;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v48 = v2;
    v49 = (v7 + 16);
    v50 = v10;
    v51 = v7;
    v54 = (v7 + 32);
    v20 = result + 64;
    v21 = v53;
    while (v18)
    {
      v25 = __clz(__rbit64(v18));
      v26 = (v18 - 1) & v18;
LABEL_17:
      v29 = v25 | (v14 << 6);
      v30 = *(v10 + 48) + *(v51 + 72) * v29;
      v57 = *(v51 + 72);
      v58 = v26;
      if (v52)
      {
        (*v54)(v21, v30, v59);
        v31 = (*(v10 + 56) + 32 * v29);
        v32 = *v31;
        v55 = v31[1];
        v56 = v32;
        v34 = v31[2];
        v33 = v31[3];
      }

      else
      {
        (*v49)(v21, v30, v59);
        v35 = (*(v10 + 56) + 32 * v29);
        v36 = v35[1];
        v34 = v35[2];
        v33 = v35[3];
        v56 = *v35;
        swift_errorRetain();
        v37 = v33;
        v55 = v36;

        v38 = v34;
      }

      v39 = *(v13 + 40);
      sub_100066EA8(&unk_100107790, &type metadata accessor for URL);
      result = sub_1000B5590();
      v40 = -1 << *(v13 + 32);
      v41 = result & ~v40;
      v42 = v41 >> 6;
      if (((-1 << v41) & ~*(v20 + 8 * (v41 >> 6))) == 0)
      {
        v43 = 0;
        v44 = (63 - v40) >> 6;
        v21 = v53;
        while (++v42 != v44 || (v43 & 1) == 0)
        {
          v45 = v42 == v44;
          if (v42 == v44)
          {
            v42 = 0;
          }

          v43 |= v45;
          v46 = *(v20 + 8 * v42);
          if (v46 != -1)
          {
            v22 = __clz(__rbit64(~v46)) + (v42 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v41) & ~*(v20 + 8 * (v41 >> 6)))) | v41 & 0x7FFFFFFFFFFFFFC0;
      v21 = v53;
LABEL_9:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v54)(*(v13 + 48) + v57 * v22, v21, v59);
      v23 = (*(v13 + 56) + 32 * v22);
      v24 = v55;
      *v23 = v56;
      v23[1] = v24;
      v23[2] = v34;
      v23[3] = v33;
      ++*(v13 + 16);
      v10 = v50;
      v18 = v58;
    }

    v27 = v14;
    while (1)
    {
      v14 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v28 = v15[v14];
      ++v27;
      if (v28)
      {
        v25 = __clz(__rbit64(v28));
        v26 = (v28 - 1) & v28;
        goto LABEL_17;
      }
    }

    if ((v52 & 1) == 0)
    {

      v3 = v48;
      goto LABEL_36;
    }

    v47 = 1 << *(v10 + 32);
    v3 = v48;
    if (v47 >= 64)
    {
      bzero(v15, ((v47 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v47;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

uint64_t sub_1000650B4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100030480(&unk_100107800, &unk_1000CBD50);
  result = sub_1000B5D10();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      v23 = *(v8 + 40);
      result = sub_1000B5FA0();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (v32)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

void sub_100065318(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  v6 = v5;
  v32 = a1;
  v33 = a2;
  v10 = sub_100030480(&qword_100106AE0, &unk_1000CA340);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v32 - v13;
  v15 = *v5;
  v17 = sub_100063128(a4);
  v18 = *(v15 + 16);
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = *(v15 + 24);
  if (v22 < v20 || (a5 & 1) == 0)
  {
    if (v22 >= v20 && (a5 & 1) == 0)
    {
      sub_10005BE34();
      goto LABEL_9;
    }

    sub_100063B24(v20, a5 & 1);
    v23 = *v6;
    v24 = sub_100063128(a4);
    if ((v21 & 1) == (v25 & 1))
    {
      v17 = v24;
      goto LABEL_9;
    }

LABEL_15:
    sub_1000B5F50();
    __break(1u);
    return;
  }

LABEL_9:
  v26 = v33;
  v27 = *v6;
  if (v21)
  {
    v28 = v27[7] + 24 * v17;
    v29 = *v28;
    v30 = *(v28 + 8);
    *v28 = v32;
    *(v28 + 8) = v26;
    v31 = *(v28 + 16);
    *(v28 + 16) = a3;

    sub_100065534(v29, v30, v31);
  }

  else
  {
    (*(v11 + 16))(v14, a4, v10);
    sub_100065BE4(v17, v14, v32, v26, a3, v27);
  }
}

uint64_t sub_10006551C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100065534(void *a1, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 2:

      break;
    case 1:

      break;
    case 0:

      break;
  }
}

_OWORD *sub_1000655A8(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_100063358(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_10005C248();
      v8 = v16;
      goto LABEL_8;
    }

    sub_100063F60(v13, a3 & 1);
    v17 = *v4;
    v8 = sub_100063358(a2);
    if ((v14 & 1) != (v18 & 1))
    {
LABEL_16:
      type metadata accessor for Key(0);
      result = sub_1000B5F50();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v14)
  {
    v20 = (v19[7] + 32 * v8);
    sub_100035DA8(v20);

    return sub_100030C64(a1, v20);
  }

  else
  {
    sub_100065CC4(v8, a2, a1, v19);

    return a2;
  }
}

uint64_t sub_1000656E8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1000B4DB0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_100063054(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_10005C3C8();
      goto LABEL_7;
    }

    sub_1000644E0(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_100063054(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_100065D2C(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_1000B5F50();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

void sub_1000658B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v38 = a3;
  v39 = a4;
  v37 = a2;
  v11 = sub_1000B4DB0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v6;
  v18 = sub_100063054(a5);
  v19 = *(v16 + 16);
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_15;
  }

  v22 = v17;
  v23 = *(v16 + 24);
  if (v23 < v21 || (a6 & 1) == 0)
  {
    if (v23 >= v21 && (a6 & 1) == 0)
    {
      sub_10005C8D4();
      goto LABEL_7;
    }

    sub_100064CA4(v21, a6 & 1);
    v33 = *v7;
    v34 = sub_100063054(a5);
    if ((v22 & 1) == (v35 & 1))
    {
      v18 = v34;
      v24 = *v7;
      if (v22)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v12 + 16))(v15, a5, v11);
      sub_100065DE4(v18, v15, a1, v37, v38, v39, v24);
      return;
    }

LABEL_15:
    sub_1000B5F50();
    __break(1u);
    return;
  }

LABEL_7:
  v24 = *v7;
  if ((v22 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v25 = (v24[7] + 32 * v18);
  v26 = *v25;
  v27 = v25[1];
  v28 = v25[2];
  v36 = v25[3];
  v29 = v37;
  v30 = v38;
  *v25 = a1;
  v25[1] = v29;
  v31 = v39;
  v25[2] = v30;
  v25[3] = v31;

  v32 = v36;
}

unint64_t sub_100065AC0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1000633EC(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_10005CB80();
    result = v17;
    goto LABEL_8;
  }

  sub_1000650B4(v14, a3 & 1);
  v18 = *v4;
  result = sub_1000633EC(a2);
  if ((v15 & 1) == (v19 & 1))
  {
LABEL_8:
    v20 = *v4;
    if (v15)
    {
      *(v20[7] + 8 * result) = a1;
      return result;
    }

    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 8 * result) = a2;
    *(v20[7] + 8 * result) = a1;
    v21 = v20[2];
    v13 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (!v13)
    {
      v20[2] = v22;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_1000B5F50();
  __break(1u);
  return result;
}

uint64_t sub_100065BE4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a6[6];
  v13 = sub_100030480(&qword_100106AE0, &unk_1000CA340);
  result = (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  v15 = a6[7] + 24 * a1;
  *v15 = a3;
  *(v15 + 8) = a4;
  *(v15 + 16) = a5;
  v16 = a6[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v18;
  }

  return result;
}

_OWORD *sub_100065CC4(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_100030C64(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_100065D2C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1000B4DB0();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_100065DE4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(a1 >> 6) + 8] |= 1 << a1;
  v14 = a7[6];
  v15 = sub_1000B4DB0();
  result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * a1, a2, v15);
  v17 = (a7[7] + 32 * a1);
  *v17 = a3;
  v17[1] = a4;
  v17[2] = a5;
  v17[3] = a6;
  v18 = a7[2];
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v20;
  }

  return result;
}

unint64_t sub_100065EB8(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_100030480(&qword_100106AE0, &unk_1000CA340);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v8 = &v18 - v7;
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
      sub_100067020(&qword_100107B70, &qword_100106AE0, &unk_1000CA340);
      v16 = sub_1000B55E0();
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

unint64_t sub_10006607C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1000B5F20())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100066134(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8);
      sub_100066EA8(v24, v25);
      v20 = sub_1000B55E0();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t sub_1000662D4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1000B5620();
      v9 = v8;
      if (v7 == sub_1000B5620() && v9 == v10)
      {
        break;
      }

      v12 = sub_1000B5F20();

      if ((v12 & 1) == 0)
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

unint64_t sub_1000663D8(uint64_t a1, uint64_t a2)
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

uint64_t sub_100066444(uint64_t a1, char a2, uint64_t *a3)
{
  v71 = a3;
  v6 = sub_100030480(&qword_100106AE0, &unk_1000CA340);
  v69 = *(v6 - 8);
  v70 = v6;
  v7 = *(v69 + 64);
  __chkstk_darwin(v6);
  v72 = &v63 - v8;
  v9 = sub_100030480(&qword_100106AD8, &unk_1000CA330);
  v68 = *(v9 - 8);
  v10 = *(v68 + 64);
  v11 = __chkstk_darwin(v9);
  v67 = &v63 - v12;
  v65 = *(a1 + 16);
  if (!v65)
  {
  }

  v63 = v3;
  if (!*(a1 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v13 = v67;
  v14 = v67 + *(v11 + 48);
  v15 = *(v68 + 80);
  v66 = a1;
  v16 = (v69 + 32);
  v64 = a1 + ((v15 + 32) & ~v15);
  sub_100030C74(v64, v67, &qword_100106AD8, &unk_1000CA330);
  v17 = *v16;
  v18 = v72;
  (*v16)(v72, v13, v70);
  v20 = *v14;
  v19 = *(v14 + 8);
  v21 = *(v14 + 16);
  v22 = *v71;
  v24 = sub_100063128(v18);
  v25 = *(v22 + 16);
  v26 = (v23 & 1) == 0;
  v27 = v25 + v26;
  if (__OFADD__(v25, v26))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v28 = v23;
  if (*(v22 + 24) >= v27)
  {
    if (a2)
    {
      if ((v23 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v35 = v24;
      sub_10005BE34();
      v24 = v35;
      if ((v28 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  v29 = v71;
  sub_100063B24(v27, a2 & 1);
  v30 = *v29;
  v31 = sub_100063128(v72);
  if ((v28 & 1) == (v32 & 1))
  {
    v24 = v31;
    if ((v28 & 1) == 0)
    {
LABEL_14:
      v36 = v72;
      v37 = *v71;
      v38 = v24;
      *(*v71 + 8 * (v24 >> 6) + 64) |= 1 << v24;
      v17(v37[6] + *(v69 + 72) * v24, v36, v70);
      v39 = v37[7] + 24 * v38;
      *v39 = v20;
      *(v39 + 8) = v19;
      *(v39 + 16) = v21;
      v40 = v37[2];
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (v41)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v37[2] = v42;
      if (v65 != 1)
      {
        v43 = 1;
        while (v43 < *(v66 + 16))
        {
          v44 = v67;
          sub_100030C74(v64 + *(v68 + 72) * v43, v67, &qword_100106AD8, &unk_1000CA330);
          v45 = *v16;
          v46 = v72;
          (*v16)(v72, v44, v70);
          v20 = *v14;
          v19 = *(v14 + 8);
          v21 = *(v14 + 16);
          v47 = *v71;
          v48 = sub_100063128(v46);
          v50 = *(v47 + 16);
          v51 = (v49 & 1) == 0;
          v41 = __OFADD__(v50, v51);
          v52 = v50 + v51;
          if (v41)
          {
            goto LABEL_26;
          }

          v53 = v49;
          if (*(v47 + 24) < v52)
          {
            v54 = v71;
            sub_100063B24(v52, 1);
            v55 = *v54;
            v48 = sub_100063128(v72);
            if ((v53 & 1) != (v56 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v53)
          {
            goto LABEL_11;
          }

          v57 = v72;
          v58 = *v71;
          *(*v71 + 8 * (v48 >> 6) + 64) |= 1 << v48;
          v59 = v48;
          v45(v58[6] + *(v69 + 72) * v48, v57, v70);
          v60 = v58[7] + 24 * v59;
          *v60 = v20;
          *(v60 + 8) = v19;
          *(v60 + 16) = v21;
          v61 = v58[2];
          v41 = __OFADD__(v61, 1);
          v62 = v61 + 1;
          if (v41)
          {
            goto LABEL_27;
          }

          ++v43;
          v58[2] = v62;
          if (v65 == v43)
          {
          }
        }

        goto LABEL_25;
      }
    }

LABEL_11:
    v33 = swift_allocError();
    swift_willThrow();

    v75 = v33;
    swift_errorRetain();
    sub_100030480(&qword_100106EB8, &qword_1000CAD80);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_100065534(v20, v19, v21);
      (*(v69 + 8))(v72, v70);
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_1000B5F50();
  __break(1u);
LABEL_29:
  v73 = 0;
  v74 = 0xE000000000000000;
  sub_1000B5C10(30);
  v76._object = 0x80000001000C75C0;
  v76._countAndFlagsBits = 0xD00000000000001BLL;
  sub_1000B56E0(v76);
  sub_1000B5CD0();
  v77._countAndFlagsBits = 39;
  v77._object = 0xE100000000000000;
  sub_1000B56E0(v77);
  result = sub_1000B5CE0();
  __break(1u);
  return result;
}

uint64_t sub_1000669DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100030480(&qword_100106AD8, &unk_1000CA330);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100066A50()
{
  result = qword_100107A70;
  if (!qword_100107A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107A70);
  }

  return result;
}

unint64_t sub_100066AA8()
{
  result = qword_100107A78;
  if (!qword_100107A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107A78);
  }

  return result;
}

unint64_t sub_100066B00()
{
  result = qword_100107A80;
  if (!qword_100107A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107A80);
  }

  return result;
}

unint64_t sub_100066B58()
{
  result = qword_100107A88;
  if (!qword_100107A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107A88);
  }

  return result;
}

unint64_t sub_100066BB0()
{
  result = qword_100107A90;
  if (!qword_100107A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107A90);
  }

  return result;
}

uint64_t sub_100066C38(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 sub_100066C54(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100066C68(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100066CB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_100066CF4(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_100066D1C(uint64_t a1)
{
  v2 = sub_100030480(&qword_100107B40, &unk_1000CC330);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100066D84(uint64_t a1)
{
  v2 = _s3TagVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100066DE0()
{
  result = qword_100107B50;
  if (!qword_100107B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107B50);
  }

  return result;
}

uint64_t sub_100066E34()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100066EA8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100066EF0(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  if (a4)
  {
  }

  else
  {
  }
}

uint64_t sub_100066F40()
{
  sub_100066EF0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
  v1 = *(v0 + 48);

  v2 = *(v0 + 72);

  return _swift_deallocObject(v0, 80, 7);
}

id sub_100066FB0(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  if (a4)
  {

    return swift_errorRetain();
  }

  else
  {

    return a3;
  }
}

id sub_100067000(void *a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return a1;
  }
}

void sub_10006700C(void *a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    sub_100065534(a1, a2, a3);
  }
}

uint64_t sub_100067020(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10003052C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void (*sub_100067068(uint64_t a1, uint64_t *a2, void (*a3)(uint64_t, uint64_t), void *a4))(uint64_t, uint64_t)
{
  v8 = sub_1000B4DB0();
  v81 = *(v8 - 8);
  v82 = v8;
  v9 = *(v81 + 64);
  __chkstk_darwin(v8);
  v11 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_100030480(&qword_100106AE0, &unk_1000CA340);
  v12 = *(v83 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v83);
  v15 = __chkstk_darwin(v14);
  v17 = &v79 - v16;
  __chkstk_darwin(v15);
  v19 = &v79 - v18;
  v20 = swift_allocObject();
  v85 = a3;
  v86 = v20;
  *(v20 + 16) = a3;
  *(v20 + 24) = a4;
  swift_beginAccess();
  v80 = a2;
  v21 = a2[3];
  v22 = *(v21 + 16);
  v84 = a4;
  v23 = a1;

  if (!v22 || (v24 = sub_100063128(a1), (v25 & 1) == 0))
  {
    swift_endAccess();
    if (qword_100106A60 != -1)
    {
      swift_once();
    }

    v38 = sub_1000B5530();
    sub_100036380(v38, qword_100107A58);
    v39 = v12;
    v40 = *(v12 + 16);
    v41 = v83;
    v40(v19, a1, v83);
    v42 = sub_1000B5520();
    v43 = sub_1000B5930();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      aBlock[0] = v80;
      *v44 = 136315138;
      sub_1000B5040();
      sub_100066EA8(&qword_100106F10, &type metadata accessor for URL);
      v45 = v82;
      v46 = sub_1000B5EE0();
      v48 = v47;
      (*(v81 + 8))(v11, v45);
      (*(v39 + 8))(v19, v41);
      v49 = sub_100062B20(v46, v48, aBlock);

      *(v44 + 4) = v49;
      _os_log_impl(&_mh_execute_header, v42, v43, "Object to be previewed does not exist {url: %s}", v44, 0xCu);
      sub_100035DA8(v80);
    }

    else
    {

      (*(v39 + 8))(v19, v41);
    }

    sub_1000363B8();
    v50 = swift_allocError();
    *v51 = 4;
    swift_errorRetain();
    v85(v50, 1);

    v33 = [objc_allocWithZone(NSProgress) init];
    goto LABEL_12;
  }

  v82 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v21 + 56) + 24 * v24;
  v28 = *v26;
  v27 = *(v26 + 8);
  v29 = *(v26 + 16);
  swift_endAccess();
  if (v29 <= 1)
  {
    if (v29)
    {
      v53 = objc_opt_self();
      v54 = v28;
      v33 = [v53 progressWithTotalUnitCount:1];
      [v33 setCompletedUnitCount:{objc_msgSend(v33, "totalUnitCount")}];
      v88 = sub_1000362AC(0, &qword_100106C00, ICCloudSyncingObject_ptr);
      aBlock[0] = v54;
      v55 = v54;
      v56 = sub_1000326F8(aBlock);
      sub_100035DA8(aBlock);
      v85(v56, 0);

      sub_100065534(v28, v27, 1);
      sub_100065534(v28, v27, 1);
    }

    else
    {
      sub_100030480(&qword_100106D88, &qword_1000CAAF8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000CAB50;
      v31 = swift_allocObject();
      v32 = v86;
      *(v31 + 16) = sub_1000679EC;
      *(v31 + 24) = v32;
      *(inited + 32) = sub_100067D5C;
      *(inited + 40) = v31;
      aBlock[0] = v27;
      sub_100035D34(v28, v27, 0);
      v33 = v28;

      sub_100063430(inited);
      v34 = aBlock[0];
      v35 = v80;
      swift_beginAccess();
      v36 = v35[3];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v91 = v35[3];
      v35[3] = 0x8000000000000000;
      sub_100065318(v28, v34, 0, v23, isUniquelyReferenced_nonNull_native);
      v35[3] = v91;
      swift_endAccess();
    }

    goto LABEL_12;
  }

  if (v29 == 2)
  {
    swift_errorRetain();
    v85(v28, 1);
    v33 = [objc_allocWithZone(NSProgress) init];
    sub_100065534(v28, v27, 2);
LABEL_12:

    return v33;
  }

  v57 = [objc_opt_self() progressWithTotalUnitCount:1];
  sub_100030480(&qword_100106D88, &qword_1000CAAF8);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_1000CAB50;
  v59 = swift_allocObject();
  v60 = v86;
  *(v59 + 16) = sub_1000679EC;
  *(v59 + 24) = v60;
  *(v58 + 32) = sub_100067D5C;
  *(v58 + 40) = v59;
  v61 = v80;
  swift_beginAccess();

  v85 = v57;
  v62 = v61[3];
  v63 = swift_isUniquelyReferenced_nonNull_native();
  v91 = v61[3];
  v61[3] = 0x8000000000000000;
  sub_100065318(v57, v58, 0, v23, v63);
  v61[3] = v91;
  swift_endAccess();
  v64 = v12;
  v65 = *(v12 + 16);
  v66 = v83;
  v65(v17, v23, v83);
  v67 = *(v64 + 80);
  v68 = swift_allocObject();
  v81 = v68;
  *(v68 + 16) = v61;
  v79 = *(v64 + 32);
  v79(v68 + ((v67 + 24) & ~v67), v17, v66);
  v84 = v61[2];
  v69 = v82;
  v65(v82, v23, v66);
  v70 = (v67 + 16) & ~v67;
  v71 = (v13 + v70 + 7) & 0xFFFFFFFFFFFFFFF8;
  v72 = (v71 + 15) & 0xFFFFFFFFFFFFFFF8;
  v73 = swift_allocObject();
  v79(v73 + v70, v69, v66);
  v74 = v85;
  *(v73 + v71) = v85;
  *(v73 + v72) = v80;
  v75 = (v73 + ((v72 + 15) & 0xFFFFFFFFFFFFFFF8));
  v76 = v81;
  *v75 = sub_100067D64;
  v75[1] = v76;
  v89 = sub_100067D58;
  v90 = v73;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100062AB8;
  v88 = &unk_1000F4C78;
  v77 = _Block_copy(aBlock);
  swift_retain_n();
  v78 = v74;

  [v84 performBackgroundTask:v77];
  _Block_release(v77);

  return v78;
}

uint64_t sub_1000679F8()
{
  v1 = sub_100030480(&qword_100106AE0, &unk_1000CA340);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_100067AC8(void *a1, char a2)
{
  v5 = *(sub_100030480(&qword_100106AE0, &unk_1000CA340) - 8);
  v6 = *(v2 + 16);
  v7 = (v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80)));

  sub_100061BA0(a1, a2 & 1, v6, v7);
}

uint64_t sub_100067B5C()
{
  v1 = sub_100030480(&qword_100106AE0, &unk_1000CA340);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  v8 = *(v0 + v6);

  v9 = *(v0 + v7 + 8);

  return _swift_deallocObject(v0, v7 + 16, v3 | 7);
}

uint64_t sub_100067C30(void *a1)
{
  v3 = *(sub_100030480(&qword_100106AE0, &unk_1000CA340) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);

  return sub_1000620EC(a1, (v1 + v4), v7, v8, v10, v11);
}

uint64_t sub_100067CF4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, *(a1 + 8));
}

id sub_100067D68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v95 = a3;
  v4 = v3;
  v6 = sub_100030480(&qword_100106F88, &qword_1000CAE20);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v93 = &v84 - v8;
  v9 = sub_100030480(&qword_100106E38, &unk_1000CB730);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v92 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v84 - v13;
  v15 = sub_1000B4EA0();
  v91 = *(v15 - 8);
  v16 = *(v91 + 64);
  v17 = __chkstk_darwin(v15);
  v19 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = &v84 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = &v84 - v24;
  __chkstk_darwin(v23);
  v27 = &v84 - v26;
  ObjectType = swift_getObjectType();
  v29 = v94;
  v30 = (*(a2 + 40))(v4[1], v4[2], v95, ObjectType, a2);
  v31 = v30;
  if (!v29)
  {
    v86 = v25;
    v87 = v27;
    v32 = v91;
    v88 = v19;
    v89 = 0;
    v94 = v30;
    v33 = v4[9];
    v85 = v22;
    if (v33)
    {
      v34 = v4[8];
      v35 = sub_1000B55F0();
    }

    else
    {
      v35 = 0;
    }

    v36 = v32;
    [v94 setTypeUTI:v35];

    v37 = type metadata accessor for ICAttachmentArchiveModel();
    sub_100030C74(v4 + v37[12], v14, &qword_100106E38, &unk_1000CB730);
    v38 = *(v32 + 48);
    v39 = v15;
    v40 = v38(v14, 1, v15);
    v90 = v4;
    if (v40 == 1)
    {
      v41 = v86;
      sub_1000B4E90();
      v42 = v38(v14, 1, v39) == 1;
      v43 = v14;
      v44 = v95;
      v45 = v87;
      v46 = v38;
      if (!v42)
      {
        sub_100036320(v43, &qword_100106E38, &unk_1000CB730);
      }
    }

    else
    {
      v41 = v86;
      (*(v36 + 32))(v86, v14, v39);
      v44 = v95;
      v45 = v87;
      v46 = v38;
    }

    v47 = *(v44 + 8);
    sub_1000B4E40();
    v48 = *(v36 + 8);
    v48(v41, v39);
    v49.super.isa = sub_1000B4E30().super.isa;
    v50 = v45;
    isa = v49.super.isa;
    v48(v50, v39);
    [v94 setCreationDate:isa];

    v52 = v92;
    sub_100030C74(v90 + v37[13], v92, &qword_100106E38, &unk_1000CB730);
    if (v46(v52, 1, v39) == 1)
    {
      v53 = v88;
      sub_1000B4E90();
      v54 = v46(v52, 1, v39);
      v55 = v93;
      if (v54 != 1)
      {
        sub_100036320(v52, &qword_100106E38, &unk_1000CB730);
      }
    }

    else
    {
      v53 = v88;
      (*(v36 + 32))(v88, v52, v39);
      v55 = v93;
    }

    v56 = v85;
    sub_1000B4E40();
    v48(v53, v39);
    v57 = sub_1000B4E30().super.isa;
    v48(v56, v39);
    v31 = v94;
    [v94 setModificationDate:v57];

    v58 = v90;
    v59 = (v90 + v37[15]);
    if (v59[1])
    {
      v60 = *v59;
      v61 = sub_1000B55F0();
    }

    else
    {
      v61 = 0;
    }

    [v31 setTitle:v61];

    v62 = v58 + v37[16];
    v63 = 0.0;
    v64 = 0.0;
    v65 = 0.0;
    v66 = 0.0;
    if ((*(v62 + 32) & 1) == 0)
    {
      v65 = *(v62 + 16);
      v66 = *(v62 + 24);
      v63 = *v62;
      v64 = *(v62 + 8);
    }

    [v31 setBounds:{v63, v64, v65, v66}];
    v67 = v58 + v37[17];
    if ((*(v67 + 64) & 1) == 0)
    {
      v69 = *(v67 + 48);
      v68 = *(v67 + 56);
      v71 = *(v67 + 32);
      v70 = *(v67 + 40);
      v73 = *(v67 + 16);
      v72 = *(v67 + 24);
      v74 = *(v67 + 8);
      [v31 setCroppingQuadTopLeftX:*v67];
      [v31 setCroppingQuadTopLeftY:v74];
      [v31 setCroppingQuadTopRightX:v73];
      [v31 setCroppingQuadTopRightY:v72];
      [v31 setCroppingQuadBottomRightX:v71];
      [v31 setCroppingQuadBottomRightY:v70];
      [v31 setCroppingQuadBottomLeftX:v69];
      [v31 setCroppingQuadBottomLeftY:v68];
    }

    [v31 setOrientation:word_1000CCB76[*(v58 + v37[18])]];
    [v31 setImageFilterType:word_1000CCB80[*(v58 + v37[19])]];
    sub_100030C74(v58 + v37[20], v55, &qword_100106F88, &qword_1000CAE20);
    v75 = sub_1000B4DB0();
    v76 = *(v75 - 8);
    if ((*(v76 + 48))(v55, 1, v75) == 1)
    {
      sub_100036320(v55, &qword_100106F88, &qword_1000CAE20);
      v77 = 0;
    }

    else
    {
      sub_1000B4CA0();
      (*(v76 + 8))(v55, v75);
      v31 = v94;
      v77 = sub_1000B55F0();
    }

    [v31 setUrlString:v77];

    v78 = (v58 + v37[21]);
    if (v78[1] >> 60 == 15)
    {
      v79 = 0;
    }

    else
    {
      v80 = *v78;
      v79 = sub_1000B4DE0().super.isa;
    }

    [v31 setSynapseData:v79];

    v81 = *(v58 + v37[27]);
    if (v81 <= 1)
    {
      v82 = v81 != 0;
LABEL_30:
      [v31 setPreferredViewSize:v82];
      return v31;
    }

    if (v81 == 2)
    {
      v82 = 2;
      goto LABEL_30;
    }
  }

  return v31;
}

void sub_100068568(void *a1, uint64_t a2, uint64_t a3, char *a4, uint32_t *a5, void (*a6)(char *, uint64_t))
{
  v160 = a6;
  v154 = a5;
  v156 = a4;
  v155 = a2;
  v158 = sub_1000B4DB0();
  v157 = *(v158 - 8);
  v8 = *(v157 + 64);
  v9 = __chkstk_darwin(v158);
  v11 = &v146 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v146 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = (&v146 - v16);
  v18 = __chkstk_darwin(v15);
  v20 = &v146 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = &v146 - v22;
  __chkstk_darwin(v21);
  v25 = &v146 - v24;
  p_align = [a1 attachmentModel];
  objc_opt_self();
  v162 = swift_dynamicCastObjCClass();
  if (!v162)
  {
    v149 = v23;
    v150 = v17;
    v147 = v14;
    v151 = a1;
    v146 = v11;
    v153 = v25;
    v152 = v20;
    v42 = v157;
    objc_opt_self();
    v162 = swift_dynamicCastObjCClass();
    if (v162)
    {
      v43 = v159 + *(type metadata accessor for ICAttachmentArchiveModel() + 56);
      v44 = *(v43 + 1);
      v148 = p_align;
      if (v44 >> 60 == 15)
      {
        v45 = p_align;
        isa = 0;
      }

      else
      {
        v85 = *v43;
        v86 = p_align;
        isa = sub_1000B4DE0().super.isa;
      }

      v87 = v158;
      v88 = v149;
      [v151 setMergeableData:isa];

      v89 = v162;
      v90 = [v162 paperBundleDatabaseSubdirectoryURL];
      sub_1000B4D50();

      sub_1000B4CE0();
      v91 = *(v42 + 8);
      v91(v88, v87);
      sub_1000B4D10();

      v92 = [v89 paperBundleAssetsSubdirectoryURL];
      sub_1000B4D50();

      sub_1000B4CE0();
      v160 = v91;
      v91(v88, v87);
      v93 = v89;
      sub_1000B4D10();

      swift_getObjectType();
      v94 = [v89 paperBundleURL];
      v95 = v150;
      sub_1000B4D50();

      v96 = v161;
      sub_1000B4F90();
      if (v96)
      {
        v97 = v158;
        v98 = v160;
        v102 = v148;
        v160(v95, v158);
        v98(v152, v97);
        v98(v153, v97);
        if (qword_100106A68 != -1)
        {
          swift_once();
        }

        v103 = sub_1000B5530();
        sub_100036380(v103, qword_100107B78);
        swift_errorRetain();
        v104 = sub_1000B5520();
        v105 = sub_1000B5920();

        if (os_log_type_enabled(v104, v105))
        {
          v106 = swift_slowAlloc();
          v107 = swift_slowAlloc();
          v169 = v107;
          *v106 = 136315138;
          swift_getErrorValue();
          v108 = sub_1000B5F60();
          v110 = sub_100062B20(v108, v109, &v169);

          *(v106 + 4) = v110;
          _os_log_impl(&_mh_execute_header, v104, v105, "Cannot import paper attachment database and assets — skipping {error: %s}", v106, 0xCu);
          sub_100035DA8(v107);
        }

        else
        {
        }
      }

      else
      {
        v99 = v160;
        v160(v95, v158);
        v100 = [v93 paperBundleDatabaseSubdirectoryURL];
        v101 = v147;
        sub_1000B4D50();

        sub_1000B4FE0();
        v99(v101, v158);
        v132 = [v93 paperBundleAssetsSubdirectoryURL];
        sub_1000B4D50();

        sub_1000B4FE0();
        v145 = v158;
        v99(v146, v158);
        v99(v152, v145);
        v99(v153, v145);
      }

      return;
    }

    objc_opt_self();
    v69 = swift_dynamicCastObjCClass();
    if (!v69)
    {
      v125 = v161;
      objc_opt_self();
      v126 = swift_dynamicCastObjCClass();
      if (!v126)
      {

        v139 = v159 + *(type metadata accessor for ICAttachmentArchiveModel() + 56);
        if (*(v139 + 1) >> 60 != 15)
        {
          v140 = *v139;
          v126 = sub_1000B4DE0().super.isa;
        }

        v141 = v151;
        [v151 setMergeableData:v126];

        [v141 attachmentModel];
        return;
      }

      v54 = p_align;
      v57 = v126;
      v127 = [v126 audioDocument];
      if (v127)
      {
        v128 = v127;
        p_align = [v127 document];

        v129 = v159 + *(type metadata accessor for ICAttachmentArchiveModel() + 112);
        v130 = *(v129 + 1);
        if (v130 == 1)
        {
          v131 = 0;
        }

        else
        {
          v163 = *v129;
          v164 = v130;
          v142 = *(v129 + 4);
          v167 = *(v129 + 3);
          *v168 = v142;
          *&v168[9] = *(v129 + 73);
          v143 = *(v129 + 1);
          v166 = *(v129 + 2);
          v165 = v143;
          v144 = [v126 audioDocument];
          if (!v144)
          {
LABEL_121:
            __break(1u);
            return;
          }

          v17 = v144;
          v55 = sub_10008B618(v144, v151, &off_1000F67D0, a3, v160);
          if (v125)
          {

            return;
          }

LABEL_106:
          v131 = v55;
        }

        [(uint32_t *)p_align setRootObject:v131];

        swift_unknownObjectRelease();
        [v57 writeMergeableData];

        return;
      }

LABEL_120:
      __break(1u);
      goto LABEL_121;
    }

    v70 = v69;
    v71 = type metadata accessor for ICAttachmentArchiveModel();
    v72 = *(v159 + *(v71 + 92));
    if (!v72)
    {
      return;
    }

    v152 = v71;
    v154 = p_align;
    v73 = [v70 table];
    v74 = [v73 rowCount];

    if ((v74 & 0x8000000000000000) != 0)
    {
LABEL_116:
      __break(1u);
    }

    else
    {
      for (; v74; --v74)
      {
        v75 = [v70 table];
        [v75 removeRowAtIndex:0];
      }

      v76 = [v70 table];
      v77 = [v76 columnCount];

      if ((v77 & 0x8000000000000000) == 0)
      {
        for (; v77; --v77)
        {
          v78 = [v70 table];
          [v78 removeColumnAtIndex:0];
        }

        v79 = [v70 table];

        v80 = [v70 table];
        v81 = v80;
        v155 = *(v72 + 2);
        if (!v155)
        {

LABEL_95:
          v134 = *(v159 + *(v152 + 24));
          if (v134 != 2)
          {
            v135 = v134 & 1;
            v136 = [v70 table];
            v137 = [v136 isRightToLeft];

            if (v137 != v135)
            {
              v138 = [v70 table];
              [v138 reverseColumnDirection];
            }
          }

          [v70 writeMergeableData];

          return;
        }

        v82 = *(v72 + 4);
        v156 = v72 + 32;

        v83 = 0;
        v84 = v160;
        v153 = v72;
        while (1)
        {
          if (v83 >= *(v72 + 2))
          {
            __break(1u);
            goto LABEL_116;
          }

          v111 = *(*&v156[8 * v83] + 16);

          v162 = v111;
          if (v111)
          {
            break;
          }

LABEL_80:
          ++v83;

          v72 = v153;
          if (v83 == v155)
          {
            goto LABEL_95;
          }
        }

        v113 = 0;
        v30 = v112 + 48;
        v157 = v83;
        v158 = v112;
        while (1)
        {
          if (v113 >= *(v112 + 16))
          {
            goto LABEL_113;
          }

          v115 = *(v30 - 16);
          v114 = *(v30 - 8);
          v116 = *v30;

          v117 = v70;
          v118 = [v70 attachment];
          if (!v118)
          {
            goto LABEL_118;
          }

          v119 = v118;
          v120 = sub_10003088C(_swiftEmptyArrayStorage);
          v121 = v161;
          v122 = sub_100090684(v120, v119, &off_1000F67D0, v84, v115, v114, v116);
          if (v121)
          {

            v133 = v154;

            return;
          }

          v123 = v122;
          v161 = 0;

          v70 = v117;
          v124 = [v117 table];
          v83 = v157;
          [v124 setAttributedString:v123 columnIndex:v113 rowIndex:v157];

          v30 += 24;
          ++v113;
          v84 = v160;
          v112 = v158;
          if (v162 == v113)
          {
            goto LABEL_80;
          }
        }
      }
    }

    __break(1u);
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  v27 = p_align;
  v28 = [a1 managedObjectContext];
  if (!v28)
  {
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  v160 = v28;
  v29 = *(v159 + *(type metadata accessor for ICAttachmentArchiveModel() + 100));
  v30 = _swiftEmptyArrayStorage;
  v31 = v162;
  if (v29)
  {
    v169 = _swiftEmptyArrayStorage;
    v32 = *(v29 + 16);
    v158 = v27;
    if (v32)
    {
      p_align = 0;
      v33 = (v29 + 40);
      v157 = v32 - 1;
      v34 = _swiftEmptyArrayStorage;
      v159 = (v29 + 40);
      while (1)
      {
        v35 = &v33[4 * p_align];
        v36 = p_align;
        while (1)
        {
          if (v36 >= *(v29 + 16))
          {
            goto LABEL_110;
          }

          if (!*(a3 + 16))
          {
            goto LABEL_7;
          }

          v37 = *(v35 - 1);
          v17 = *v35;

          v30 = a3;
          v38 = sub_10006320C(v37, v17);
          if (v39)
          {
            break;
          }

LABEL_7:
          v36 = (v36 + 1);
          v35 += 16;
          if (v32 == v36)
          {
            v27 = v158;
            goto LABEL_20;
          }
        }

        v40 = *(*(a3 + 56) + 8 * v38);

        v30 = &v169;
        sub_1000B5780();
        if (*((v169 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v169 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v41 = *((v169 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1000B57C0();
        }

        p_align = (v36 + 1);
        sub_1000B57F0();
        v34 = v169;
        v27 = v158;
        v33 = v159;
        if (v157 == v36)
        {
LABEL_20:
          if (!(v34 >> 62))
          {
            goto LABEL_21;
          }

LABEL_60:
          v30 = sub_1000B5CF0();
          goto LABEL_22;
        }
      }
    }

    v34 = _swiftEmptyArrayStorage;
    if (_swiftEmptyArrayStorage >> 62)
    {
      goto LABEL_60;
    }

LABEL_21:
    v30 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_22:
    v159 = v27;
    if (v30)
    {
      v47 = 0;
      p_align = &stru_100100FE8.align;
      do
      {
        if ((v34 & 0xC000000000000001) != 0)
        {
          v48 = sub_1000B5C20();
        }

        else
        {
          if (v47 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_112;
          }

          v48 = *(v34 + 8 * v47 + 32);
        }

        v49 = v48;
        v17 = (v47 + 1);
        if (__OFADD__(v47, 1))
        {
          goto LABEL_111;
        }

        [v162 addSubAttachment:v48];

        ++v47;
      }

      while (v17 != v30);
    }

    v50 = v159;

    v31 = v162;
    v27 = v158;
  }

  v159 = v27;
  [v31 writeMergeableData];
  v169 = _swiftEmptyArrayStorage;
  v51 = 1 << *(a3 + 32);
  v52 = -1;
  if (v51 < 64)
  {
    v52 = ~(-1 << v51);
  }

  v53 = v52 & *(a3 + 64);
  v54 = ((v51 + 63) >> 6);

  v56 = 0;
  v57 = &selRef_isDeletedOrInTrash;
  if (v53)
  {
    goto LABEL_41;
  }

  while (1)
  {
LABEL_37:
    v58 = v56 + 1;
    if (__OFADD__(v56, 1))
    {
      __break(1u);
      goto LABEL_106;
    }

    if (v58 >= v54)
    {
      break;
    }

    v53 = *(a3 + 64 + 8 * v58);
    ++v56;
    if (v53)
    {
      while (1)
      {
        v59 = __clz(__rbit64(v53));
        v53 &= v53 - 1;
        p_align = *(*(a3 + 56) + ((v58 << 9) | (8 * v59)));
        v60 = [(uint32_t *)p_align parentAttachment];
        if (v60)
        {
          v61 = v60;

          v56 = v58;
          if (!v53)
          {
            goto LABEL_37;
          }
        }

        else
        {
          sub_1000B5C50();
          v17 = *(v169 + 16);
          sub_1000B5C80();
          sub_1000B5C90();
          v55 = sub_1000B5C60();
          v56 = v58;
          if (!v53)
          {
            goto LABEL_37;
          }
        }

LABEL_41:
        v58 = v56;
      }
    }
  }

  v30 = v169;
  if ((v169 & 0x8000000000000000) != 0 || (v169 & 0x4000000000000000) != 0)
  {
    goto LABEL_114;
  }

  for (i = *(v169 + 16); ; i = sub_1000B5CF0())
  {
    v63 = v160;
    if (!i)
    {
      break;
    }

    v64 = 0;
    while (1)
    {
      if ((v30 & 0xC000000000000001) != 0)
      {
        v65 = sub_1000B5C20();
      }

      else
      {
        if (v64 >= *(v30 + 16))
        {
          goto LABEL_109;
        }

        v65 = *(v30 + 8 * v64 + 32);
      }

      v66 = v65;
      v67 = v64 + 1;
      if (__OFADD__(v64, 1))
      {
        break;
      }

      [v63 deleteObject:v65];

      ++v64;
      if (v67 == i)
      {
        goto LABEL_57;
      }
    }

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
    ;
  }

LABEL_57:

  v68 = v159;
}

void sub_1000696D8(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v160 = a2;
  v5 = sub_100030480(&qword_100106F88, &qword_1000CAE20);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v159 = &v142 - v7;
  v8 = sub_100030480(&qword_100106E38, &unk_1000CB730);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v156 = &v142 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v142 - v12;
  *a3 = 4;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 514;
  v14 = type metadata accessor for ICAttachmentArchiveModel();
  v15 = v14[12];
  v16 = sub_1000B4EA0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 56);
  v19 = v17 + 56;
  v153 = v15;
  v18(a3 + v15, 1, 1, v16);
  v154 = v14[13];
  v155 = v18;
  v161 = v19;
  v18(a3 + v154, 1, 1, v16);
  v20 = (a3 + v14[14]);
  v152 = xmmword_1000CC370;
  v144 = v20;
  *v20 = xmmword_1000CC370;
  v21 = a3 + v14[17];
  v168 = 1;
  *v21 = 0u;
  *(v21 + 16) = 0u;
  *(v21 + 32) = 0u;
  *(v21 + 48) = 0u;
  *(v21 + 64) = 1;
  v22 = v14[20];
  v23 = sub_1000B4DB0();
  v24 = *(v23 - 8);
  v25 = *(v24 + 56);
  v157 = v22;
  v148 = v25;
  v149 = v23;
  v147 = v24 + 56;
  (v25)(a3 + v22, 1, 1);
  v158 = (a3 + v14[21]);
  *v158 = v152;
  v26 = a3 + v14[22];
  *v26 = 0;
  *(v26 + 8) = 0;
  *&v152 = v26;
  *(v26 + 16) = 1;
  v145 = v14[23];
  *(a3 + v145) = 0;
  v146 = v14[24];
  *(a3 + v146) = 2;
  v150 = v14[25];
  *(a3 + v150) = 0;
  v151 = v14[27];
  *(a3 + v151) = 3;
  v27 = (a3 + v14[28]);
  *v27 = xmmword_1000CB720;
  v27[1] = 0u;
  v27[2] = 0u;
  v27[3] = 0u;
  v27[4] = 0u;
  v143 = v27;
  *(v27 + 73) = 0u;
  v28 = [a1 identifier];
  if (v28)
  {
    v29 = v28;
    v30 = sub_1000B5620();
    v32 = v31;
  }

  else
  {
    v30 = 0;
    v32 = 0xE000000000000000;
  }

  *(a3 + 8) = v30;
  *(a3 + 16) = v32;
  v33 = [a1 typeUTI];
  if (v33)
  {
    v34 = v33;
    v35 = sub_1000B5620();
    v37 = v36;
  }

  else
  {
    v35 = 0;
    v37 = 0;
  }

  v38 = v155;
  *(a3 + 64) = v35;
  *(a3 + 72) = v37;
  v39 = a1;
  v40 = sub_10006D5FC();
  v42 = v41;

  *(a3 + 80) = v40;
  *(a3 + 88) = v42;
  v43 = [v39 creationDate];
  if (v43)
  {
    v44 = v43;
    sub_1000B4E70();

    v45 = 0;
  }

  else
  {
    v45 = 1;
  }

  v46 = v156;
  v47 = 1;
  v38(v13, v45, 1, v16);
  sub_1000521D8(v13, a3 + v153, &qword_100106E38, &unk_1000CB730);
  v48 = [v39 modificationDate];
  if (v48)
  {
    v49 = v48;
    sub_1000B4E70();

    v47 = 0;
  }

  v38(v46, v47, 1, v16);
  sub_1000521D8(v46, a3 + v154, &qword_100106E38, &unk_1000CB730);
  v50 = [v39 title];
  if (v50)
  {
    v51 = v50;
    v52 = sub_1000B5620();
    v54 = v53;
  }

  else
  {
    v52 = 0;
    v54 = 0;
  }

  v55 = (a3 + v14[15]);
  *v55 = v52;
  v55[1] = v54;
  v161 = v54;
  [v39 bounds];
  v170.origin.x = 0.0;
  v170.origin.y = 0.0;
  v170.size.width = 0.0;
  v170.size.height = 0.0;
  v56 = CGRectEqualToRect(v169, v170);
  v57 = 0uLL;
  v58 = 0uLL;
  if (!v56)
  {
    [v39 bounds];
    *(&v57 + 1) = v59;
    *(&v58 + 1) = v60;
  }

  v61 = a3 + v14[16];
  v62 = v14[18];
  *v61 = v57;
  *(v61 + 16) = v58;
  *(v61 + 32) = v56;
  v63 = v39;
  sub_10006D80C(v63, v164);
  v64 = v164[3];
  *(v21 + 32) = v164[2];
  *(v21 + 48) = v64;
  *(v21 + 64) = v165;
  v65 = v164[1];
  *v21 = v164[0];
  *(v21 + 16) = v65;
  *(a3 + v62) = sub_10006D9F0([v63 orientation]);
  v66 = [v63 urlString];
  if (v66)
  {
    v67 = v66;
    sub_1000B5620();

    v68 = v159;
    sub_1000B4DA0();
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v68 = v159;
    v148(v159, 1, 1, v149);
  }

  v69 = v160;
  sub_1000521D8(v68, a3 + v157, &qword_100106F88, &qword_1000CAE20);
  v70 = [v63 synapseData];
  if (v70)
  {
    v71 = v70;
    v72 = sub_1000B4DF0();
    v74 = v73;
  }

  else
  {
    v72 = 0;
    v74 = 0xF000000000000000;
  }

  v75 = v158;
  sub_10004D334(*v158, v158[1]);
  *v75 = v72;
  v75[1] = v74;
  v76 = [v63 synapseBasedMetadata];
  if (v76 && (v77 = v76, v78 = [v76 selectedText], v77, v78))
  {
    v79 = sub_1000B5620();
    v81 = v80;
  }

  else
  {
    v79 = 0;
    v81 = 0;
  }

  v82 = (a3 + v14[26]);
  *v82 = v79;
  v82[1] = v81;
  v83 = [v63 imageFilterType];
  v84 = 0x403020105uLL >> (8 * v83);
  if (v83 >= 5)
  {
    LOBYTE(v84) = 5;
  }

  *(a3 + v14[19]) = v84;
  v85 = [v63 mergeablePreferredViewSize];
  if (v85)
  {
    v86 = v85;
    v87 = sub_1000B4DF0();
    v89 = v88;

    sub_1000449D4(v87, v89);
    v90 = sub_10004CC90([v63 preferredViewSize]);
    *(a3 + v151) = v90;
  }

  v91 = [v63 location];
  if (v91)
  {
    v92 = v91;
    [v92 latitude];
    v94 = v93;
    [v92 longitude];
    v96 = v95;

    v97 = v152;
    *v152 = v94;
    *(v97 + 8) = v96;
    *(v97 + 16) = 0;
  }

  v98 = [v63 tableModel];
  if (v98)
  {
    if ((*v69 & 1) == 0)
    {
      v110 = v98;
      v111 = sub_10006DAEC(v98, v69);
      *(a3 + v145) = v111;
      v112 = [v110 table];
      v113 = [v112 isRightToLeft];

      sub_10004CE38(v69);
      *(a3 + v146) = v113;
      if ((*(v69 + 59) & 1) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_38;
    }
  }

  v99 = [v63 attachmentModel];
  objc_opt_self();
  v100 = swift_dynamicCastObjCClass();
  if (v100)
  {
    v101 = [v100 subAttachmentIdentifiers];
    v102 = sub_1000B57A0();

    sub_10004CE38(v69);
    *(a3 + v150) = v102;
    if (*(v69 + 59))
    {
      goto LABEL_38;
    }

LABEL_42:

    return;
  }

  v119 = [v63 audioModel];
  if (!v119)
  {
    goto LABEL_53;
  }

  v120 = v119;
  v121 = [v119 audioDocument];

  if (!v121)
  {
    __break(1u);
    return;
  }

  v122 = sub_1000B5950();

  if (v122)
  {
    v123 = v63;
    sub_10004D3AC(v69, v166);
    sub_10008DFD0(v122, v123, v69, v166);
    v124 = v143;
    v125 = v143[3];
    v162[2] = v143[2];
    v162[3] = v125;
    v163[0] = v143[4];
    *(v163 + 9) = *(v143 + 73);
    v126 = v143[1];
    v162[0] = *v143;
    v162[1] = v126;
    sub_100036320(v162, &qword_100107B90, &unk_1000CC380);
    sub_10004CE38(v69);
    v127 = v166[3];
    v124[2] = v166[2];
    v124[3] = v127;
    v124[4] = v167[0];
    *(v124 + 73) = *(v167 + 9);
    v128 = v166[1];
    *v124 = v166[0];
    v124[1] = v128;
    if ((*(v69 + 59) & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  else
  {
LABEL_53:
    v129 = [v63 mergeableData];
    if (v129)
    {
      v130 = v129;
      v131 = sub_1000B4DF0();
      v133 = v132;
    }

    else
    {
      v131 = 0;
      v133 = 0xF000000000000000;
    }

    v141 = v144;
    sub_10004D334(*v144, v144[1]);
    sub_10004CE38(v69);
    *v141 = v131;
    v141[1] = v133;
    if ((*(v69 + 59) & 1) == 0)
    {
      goto LABEL_42;
    }
  }

LABEL_38:
  v103 = v63;
  v104 = [v103 note];
  if (v104 && (v105 = v104, v106 = [v104 identifier], v105, v106))
  {
    v107 = sub_1000B5620();
    v109 = v108;
  }

  else
  {
    v107 = 0;
    v109 = 0;
  }

  *(a3 + 24) = v107;
  *(a3 + 32) = v109;
  v114 = [v103 note];

  if (v114)
  {
    v115 = &selRef_sharedManager;
    v116 = [v114 title];

    if (v116)
    {
      v114 = sub_1000B5620();
      v118 = v117;
    }

    else
    {
      v114 = 0;
      v118 = 0;
    }
  }

  else
  {
    v118 = 0;
    v115 = &selRef_sharedManager;
  }

  *(a3 + 40) = v114;
  *(a3 + 48) = v118;
  v134 = [v103 v115[99]];
  if (v134)
  {
    v135 = v134;
    v136 = sub_1000B5620();
    v138 = v137;
  }

  else
  {

    v136 = 0;
    v138 = 0;
  }

  *v55 = v136;
  v55[1] = v138;
  v139 = v103;
  *(a3 + 56) = [v139 markedForDeletion];
  v140 = [v139 isPasswordProtected];

  *(a3 + 57) = v140;
}

uint64_t type metadata accessor for ICAttachmentArchiveModel()
{
  result = qword_100107BF0;
  if (!qword_100107BF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10006A284()
{
  v0 = sub_1000B5530();
  sub_10003640C(v0, qword_100107B78);
  sub_100036380(v0, qword_100107B78);
  return sub_1000B5510();
}

unint64_t sub_10006A2D0(char a1)
{
  result = 0x6E65644965707974;
  switch(a1)
  {
    case 1:
      result = 0x696669746E656469;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x6954746E65726170;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
    case 21:
      result = 0xD000000000000018;
      break;
    case 7:
      result = 0x6C6946616964656DLL;
      break;
    case 8:
      result = 0x4164657461657263;
      break;
    case 9:
      result = 0x6465696669646F6DLL;
      break;
    case 10:
      result = 1635017060;
      break;
    case 11:
      result = 0x656C746974;
      break;
    case 12:
      result = 0x73646E756F62;
      break;
    case 13:
      result = 0x676E6970706F7263;
      break;
    case 14:
      result = 0x7461746E6569726FLL;
      break;
    case 15:
      result = 0x6C69466567616D69;
      break;
    case 16:
      result = 7107189;
      break;
    case 17:
      result = 0x4474657070696E73;
      break;
    case 18:
      result = 0x616E6964726F6F63;
      break;
    case 19:
      result = 1937207154;
      break;
    case 20:
      result = 0x5474686769527369;
      break;
    case 22:
      result = 0x65746F75516C7275;
      break;
    case 23:
      result = 0xD000000000000011;
      break;
    case 24:
      result = 0x6365526F69647561;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10006A60C(void *a1)
{
  v3 = v1;
  v5 = sub_100030480(&qword_100107D50, &unk_1000CC818);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v51 - v8;
  v10 = a1[4];
  sub_1000458B4(a1, a1[3]);
  sub_10006E814();
  sub_1000B6020();
  LOBYTE(v59) = *v3;
  LOBYTE(v54) = 0;
  sub_10004E214();
  sub_1000B5EB0();
  if (!v2)
  {
    v11 = *(v3 + 8);
    v12 = *(v3 + 16);
    LOBYTE(v59) = 1;
    sub_1000B5E70();
    v13 = *(v3 + 24);
    v14 = *(v3 + 32);
    LOBYTE(v59) = 2;
    sub_1000B5E20();
    v15 = *(v3 + 40);
    v16 = *(v3 + 48);
    LOBYTE(v59) = 3;
    sub_1000B5E20();
    v17 = *(v3 + 56);
    LOBYTE(v59) = 4;
    sub_1000B5E30();
    v18 = *(v3 + 57);
    LOBYTE(v59) = 5;
    sub_1000B5E30();
    v19 = *(v3 + 64);
    v20 = *(v3 + 72);
    LOBYTE(v59) = 6;
    sub_1000B5E20();
    v21 = *(v3 + 80);
    v22 = *(v3 + 88);
    LOBYTE(v59) = 7;
    sub_1000B5E20();
    v70 = type metadata accessor for ICAttachmentArchiveModel();
    v23 = v70[12];
    LOBYTE(v59) = 8;
    sub_1000B4EA0();
    sub_10006FD74(&qword_100107228, &type metadata accessor for Date);
    sub_1000B5E60();
    v24 = v70[13];
    LOBYTE(v59) = 9;
    sub_1000B5E60();
    v25 = (v3 + v70[14]);
    v26 = v25[1];
    *&v59 = *v25;
    *(&v59 + 1) = v26;
    LOBYTE(v54) = 10;
    sub_10006E868(v59, v26);
    sub_100054748();
    sub_1000B5E60();
    sub_10004D334(v59, *(&v59 + 1));
    v27 = (v3 + v70[15]);
    v28 = *v27;
    v29 = v27[1];
    LOBYTE(v59) = 11;
    sub_1000B5E20();
    v30 = (v3 + v70[16]);
    v31 = *(v30 + 32);
    v32 = v30[1];
    v67 = *v30;
    v68 = v32;
    v69 = v31;
    v66 = 12;
    type metadata accessor for CGRect(0);
    sub_10006FD74(&qword_100107D60, type metadata accessor for CGRect);
    sub_1000B5E60();
    v33 = (v3 + v70[17]);
    v34 = v33[3];
    v61 = v33[2];
    v62 = v34;
    v63[0] = *(v33 + 64);
    v35 = v33[1];
    v59 = *v33;
    v60 = v35;
    LOBYTE(v54) = 13;
    sub_10006E87C();
    sub_1000B5E60();
    LOBYTE(v59) = *(v3 + v70[18]);
    LOBYTE(v54) = 14;
    sub_10006E8D0();
    sub_1000B5E60();
    LOBYTE(v59) = *(v3 + v70[19]);
    LOBYTE(v54) = 15;
    sub_10006E924();
    sub_1000B5E60();
    v36 = v70[20];
    LOBYTE(v59) = 16;
    sub_1000B4DB0();
    sub_10006FD74(&qword_100107D80, &type metadata accessor for URL);
    sub_1000B5E60();
    v37 = (v3 + v70[21]);
    v38 = v37[1];
    *&v59 = *v37;
    *(&v59 + 1) = v38;
    LOBYTE(v54) = 17;
    sub_10006E868(v59, v38);
    sub_1000B5E60();
    sub_10004D334(v59, *(&v59 + 1));
    v39 = (v3 + v70[22]);
    v40 = *(v39 + 16);
    v59 = *v39;
    LOBYTE(v60) = v40;
    LOBYTE(v54) = 18;
    sub_10006E978();
    sub_1000B5E60();
    *&v59 = *(v3 + v70[23]);
    LOBYTE(v54) = 19;
    sub_100030480(&qword_100107C40, &unk_1000CC3B0);
    sub_10006EAFC(&qword_100107D90, sub_10006E9CC);
    sub_1000B5E60();
    v41 = *(v3 + v70[24]);
    LOBYTE(v59) = 20;
    sub_1000B5E30();
    *&v59 = *(v3 + v70[25]);
    LOBYTE(v54) = 21;
    sub_100030480(&unk_100107548, &qword_1000CB760);
    sub_100055CC0(&qword_1001075D8);
    sub_1000B5E60();
    v42 = (v3 + v70[26]);
    v43 = *v42;
    v44 = v42[1];
    LOBYTE(v59) = 22;
    sub_1000B5E20();
    v65 = *(v3 + v70[27]);
    v64 = 23;
    sub_10004E310();
    sub_1000B5E60();
    v45 = (v3 + v70[28]);
    v46 = v45[3];
    v47 = v45[1];
    v61 = v45[2];
    v62 = v46;
    v48 = v45[3];
    *v63 = v45[4];
    *&v63[9] = *(v45 + 73);
    v49 = v45[1];
    v59 = *v45;
    v60 = v49;
    v56 = v61;
    v57 = v48;
    v58[0] = v45[4];
    *(v58 + 9) = *(v45 + 73);
    v54 = v59;
    v55 = v47;
    v53 = 24;
    sub_100030C74(&v59, v51, &qword_100107B90, &unk_1000CC380);
    sub_10006EA00();
    sub_1000B5E60();
    v51[2] = v56;
    v51[3] = v57;
    *v52 = v58[0];
    *&v52[9] = *(v58 + 9);
    v51[0] = v54;
    v51[1] = v55;
    sub_100036320(v51, &qword_100107B90, &unk_1000CC380);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10006AEEC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v118 = a1;
  v84 = a2;
  v2 = sub_100030480(&qword_100106F88, &qword_1000CAE20);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v83 = v82 - v4;
  v5 = sub_100030480(&qword_100106E38, &unk_1000CB730);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v85 = v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v86 = v82 - v9;
  v10 = sub_100030480(&qword_100107DA8, &qword_1000CC828);
  v87 = *(v10 - 8);
  v88 = v10;
  v11 = *(v87 + 64);
  __chkstk_darwin(v10);
  v13 = v82 - v12;
  v14 = type metadata accessor for ICAttachmentArchiveModel();
  v15 = *(*(v14 - 1) + 64);
  v16 = __chkstk_darwin(v14);
  v18 = v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v16 + 48);
  v20 = sub_1000B4EA0();
  v21 = *(*(v20 - 8) + 56);
  v95 = v19;
  v21(&v18[v19], 1, 1, v20);
  v94 = v14[13];
  v21(&v18[v94], 1, 1, v20);
  v22 = &v18[v14[14]];
  v97 = xmmword_1000CC370;
  v93 = v22;
  *v22 = xmmword_1000CC370;
  v23 = &v18[v14[17]];
  v117 = 1;
  *v23 = 0u;
  *(v23 + 1) = 0u;
  *(v23 + 2) = 0u;
  *(v23 + 3) = 0u;
  v23[64] = 1;
  v24 = v14[20];
  v25 = sub_1000B4DB0();
  v26 = *(*(v25 - 8) + 56);
  v92 = v24;
  v26(&v18[v24], 1, 1, v25);
  v91 = &v18[v14[21]];
  *v91 = v97;
  v27 = v14[28];
  *&v97 = v18;
  v28 = &v18[v27];
  *v28 = xmmword_1000CB720;
  *(v28 + 1) = 0u;
  *(v28 + 2) = 0u;
  *(v28 + 3) = 0u;
  *(v28 + 4) = 0u;
  v90 = &v18[v27];
  *(v28 + 73) = 0u;
  v29 = v118[4];
  sub_1000458B4(v118, v118[3]);
  sub_10006E814();
  v89 = v13;
  v30 = v96;
  sub_1000B6010();
  if (v30)
  {
    v96 = v30;
    sub_100035DA8(v118);
    swift_bridgeObjectRelease_n();
LABEL_4:

    v33 = v97;
    sub_100036320(v97 + v95, &qword_100106E38, &unk_1000CB730);
    sub_100036320(v33 + v94, &qword_100106E38, &unk_1000CB730);
    sub_10004D334(*v93, *(v93 + 1));

    sub_100036320(v33 + v92, &qword_100106F88, &qword_1000CAE20);
    sub_10004D334(*v91, *(v91 + 1));

    v34 = *(v90 + 3);
    v114 = *(v90 + 2);
    v115 = v34;
    v116[0] = *(v90 + 4);
    *(v116 + 9) = *(v90 + 73);
    v35 = *(v90 + 1);
    v112 = *v90;
    v113 = v35;
    return sub_100036320(&v112, &qword_100107B90, &unk_1000CC380);
  }

  v82[5] = v20;
  v31 = v86;
  LOBYTE(v103[0]) = 0;
  sub_1000316AC();
  sub_1000B5E00();
  v32 = v97;
  *v97 = v112;
  LOBYTE(v112) = 1;
  *(v32 + 8) = sub_1000B5DC0();
  *(v32 + 16) = v37;
  LOBYTE(v112) = 2;
  *(v32 + 24) = sub_1000B5D70();
  *(v32 + 32) = v38;
  v82[4] = v38;
  LOBYTE(v112) = 3;
  *(v32 + 40) = sub_1000B5D70();
  *(v32 + 48) = v39;
  v82[3] = v39;
  LOBYTE(v112) = 4;
  *(v32 + 56) = sub_1000B5D80();
  LOBYTE(v112) = 5;
  *(v32 + 57) = sub_1000B5D80();
  LOBYTE(v112) = 6;
  *(v32 + 64) = sub_1000B5D70();
  *(v32 + 72) = v41;
  v82[2] = v41;
  LOBYTE(v112) = 7;
  *(v32 + 80) = sub_1000B5D70();
  *(v32 + 88) = v42;
  v82[1] = v42;
  LOBYTE(v112) = 8;
  v82[0] = sub_10006FD74(&qword_100107288, &type metadata accessor for Date);
  sub_1000B5DB0();
  v96 = 0;
  sub_1000521D8(v31, v97 + v95, &qword_100106E38, &unk_1000CB730);
  LOBYTE(v112) = 9;
  v43 = v96;
  sub_1000B5DB0();
  v96 = v43;
  if (v43)
  {
    goto LABEL_8;
  }

  sub_1000521D8(v85, v97 + v94, &qword_100106E38, &unk_1000CB730);
  LOBYTE(v103[0]) = 10;
  sub_1000545EC();
  v44 = v96;
  sub_1000B5DB0();
  v96 = v44;
  if (v44)
  {
    goto LABEL_8;
  }

  v45 = v112;
  v46 = v93;
  sub_10004D334(*v93, *(v93 + 1));
  *v46 = v45;
  LOBYTE(v112) = 11;
  v47 = v96;
  v48 = sub_1000B5D70();
  v86 = v49;
  v96 = v47;
  if (v47)
  {
LABEL_8:
    (*(v87 + 8))(v89, v88);
    v86 = 0;
LABEL_9:
    sub_100035DA8(v118);
    v40 = *(v97 + 16);

    goto LABEL_4;
  }

  v50 = (v97 + v14[15]);
  v51 = v86;
  *v50 = v48;
  v50[1] = v51;
  type metadata accessor for CGRect(0);
  LOBYTE(v103[0]) = 12;
  sub_10006FD74(&qword_100107DB0, type metadata accessor for CGRect);
  v52 = v96;
  sub_1000B5DB0();
  v96 = v52;
  if (v52)
  {
    goto LABEL_22;
  }

  v53 = v97 + v14[16];
  v54 = v114;
  v55 = v113;
  *v53 = v112;
  *(v53 + 16) = v55;
  *(v53 + 32) = v54;
  v106 = 13;
  sub_10006EA54();
  v56 = v96;
  sub_1000B5DB0();
  v96 = v56;
  if (v56)
  {
    goto LABEL_22;
  }

  v57 = v108;
  v58 = v110;
  *(v23 + 2) = v109;
  *(v23 + 3) = v58;
  v23[64] = v111;
  *v23 = v107;
  *(v23 + 1) = v57;
  LOBYTE(v103[0]) = 14;
  sub_10006E5AC();
  v59 = v96;
  sub_1000B5DB0();
  v96 = v59;
  if (v59)
  {
    goto LABEL_22;
  }

  *(v97 + v14[18]) = v112;
  LOBYTE(v103[0]) = 15;
  sub_10006E6A0();
  v60 = v96;
  sub_1000B5DB0();
  v96 = v60;
  if (v60)
  {
    goto LABEL_22;
  }

  *(v97 + v14[19]) = v112;
  LOBYTE(v112) = 16;
  sub_10006FD74(&qword_100107DC0, &type metadata accessor for URL);
  v61 = v96;
  sub_1000B5DB0();
  v96 = v61;
  if (v61)
  {
    goto LABEL_22;
  }

  sub_1000521D8(v83, v97 + v92, &qword_100106F88, &qword_1000CAE20);
  LOBYTE(v103[0]) = 17;
  v62 = v96;
  sub_1000B5DB0();
  v96 = v62;
  if (v62)
  {
    goto LABEL_22;
  }

  v63 = v112;
  v64 = v91;
  sub_10004D334(*v91, *(v91 + 1));
  *v64 = v63;
  LOBYTE(v103[0]) = 18;
  sub_10006EAA8();
  v65 = v96;
  sub_1000B5DB0();
  v96 = v65;
  if (v65)
  {
    goto LABEL_22;
  }

  v66 = v97 + v14[22];
  v67 = v113;
  *v66 = v112;
  *(v66 + 16) = v67;
  sub_100030480(&qword_100107C40, &unk_1000CC3B0);
  LOBYTE(v103[0]) = 19;
  sub_10006EAFC(&qword_100107DD0, sub_10006EB74);
  v68 = v96;
  sub_1000B5DB0();
  v96 = v68;
  if (v68)
  {
    goto LABEL_22;
  }

  *(v97 + v14[23]) = v112;
  LOBYTE(v112) = 20;
  v69 = sub_1000B5D80();
  v96 = 0;
  *(v97 + v14[24]) = v69;
  sub_100030480(&unk_100107548, &qword_1000CB760);
  LOBYTE(v103[0]) = 21;
  sub_100055CC0(&qword_1001075B0);
  v70 = v96;
  sub_1000B5DB0();
  v96 = v70;
  if (v70)
  {
    goto LABEL_22;
  }

  *(v97 + v14[25]) = v112;
  LOBYTE(v112) = 22;
  v71 = sub_1000B5D70();
  v96 = 0;
  v72 = (v97 + v14[26]);
  *v72 = v71;
  v72[1] = v73;
  LOBYTE(v103[0]) = 23;
  sub_10004E00C();
  v74 = v96;
  sub_1000B5DB0();
  v96 = v74;
  if (v74 || (*(v97 + v14[27]) = v112, v105 = 24, sub_10006EC20(), v75 = v96, sub_1000B5DB0(), (v96 = v75) != 0))
  {
LABEL_22:
    (*(v87 + 8))(v89, v88);
    goto LABEL_9;
  }

  (*(v87 + 8))(v89, v88);
  v100 = v114;
  v101 = v115;
  v102[0] = v116[0];
  *(v102 + 9) = *(v116 + 9);
  v98 = v112;
  v99 = v113;
  v76 = v90;
  v77 = *(v90 + 3);
  v103[2] = *(v90 + 2);
  v103[3] = v77;
  v104[0] = *(v90 + 4);
  *(v104 + 9) = *(v90 + 73);
  v78 = *(v90 + 1);
  v103[0] = *v90;
  v103[1] = v78;
  sub_100036320(v103, &qword_100107B90, &unk_1000CC380);
  v79 = v101;
  v76[2] = v100;
  v76[3] = v79;
  v76[4] = v102[0];
  *(v76 + 73) = *(v102 + 9);
  v80 = v99;
  *v76 = v98;
  v76[1] = v80;
  v81 = v97;
  sub_10006EC74(v97, v84);
  sub_100035DA8(v118);
  return sub_10006ECD8(v81);
}

uint64_t sub_10006BDA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10006ED34(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10006BDD0(uint64_t a1)
{
  v2 = sub_10006E814();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10006BE0C(uint64_t a1)
{
  v2 = sub_10006E814();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10006BE78(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _OWORD *a5, void **a6)
{
  v28 = a6;
  v9 = sub_1000B4F00();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v29[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v31 = _swiftEmptyArrayStorage;
  v13 = [a4 table];
  (*(v10 + 16))(v12, a1, v9);
  v14 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v15 = (v11 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = ((v15 + 68) & 0xFFFFFFFFFFFFFFF8);
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  (*(v10 + 32))(v17 + v14, v12, v9);
  v18 = (v17 + v15);
  v19 = a5[1];
  *v18 = *a5;
  v18[1] = v19;
  v18[2] = a5[2];
  *(v18 + 45) = *(a5 + 45);
  *(v16 + v17) = &v31;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_10006DE60;
  *(v20 + 24) = v17;
  aBlock[4] = sub_100070268;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10006C434;
  aBlock[3] = &unk_1000F4D90;
  v21 = _Block_copy(aBlock);
  v22 = a4;
  sub_10004D3AC(a5, v29);

  [v13 enumerateColumnsWithBlock:v21];

  _Block_release(v21);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    isEscapingClosureAtFileLocation = v31;
    v16 = v28;
    a4 = *v28;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v16 = a4;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_3;
    }
  }

  a4 = sub_1000338E8(0, a4[2] + 1, 1, a4);
  *v16 = a4;
LABEL_3:
  v26 = a4[2];
  v25 = a4[3];
  if (v26 >= v25 >> 1)
  {
    a4 = sub_1000338E8((v25 > 1), v26 + 1, 1, a4);
    *v16 = a4;
  }

  a4[2] = v26 + 1;
  a4[v26 + 4] = isEscapingClosureAtFileLocation;
}

void sub_10006C1AC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, char **a7)
{
  v10 = sub_1000B4F00();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v35[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = [a4 table];
  isa = sub_1000B4ED0().super.isa;
  v17 = sub_1000B4ED0().super.isa;
  v18 = [v15 mergeableStringForColumnID:isa rowID:v17];

  if (!v18)
  {
    sub_1000B4EF0();
    v19 = objc_allocWithZone(ICTTMergeableAttributedString);
    v20 = sub_1000B4ED0().super.isa;
    (*(v11 + 8))(v14, v10);
    v18 = [v19 initWithReplicaID:v20];
  }

  v21 = [a4 attachment];
  if (v21)
  {
    v22 = v21;
    sub_10004D3AC(a6, v35);
    v23 = v18;
    v24 = sub_1000A1B30(v23, v22, a6);
    v26 = v25;
    v28 = v27;
    v29 = *a7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a7 = v29;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v29 = sub_100033A1C(0, *(v29 + 2) + 1, 1, v29);
      *a7 = v29;
    }

    v32 = *(v29 + 2);
    v31 = *(v29 + 3);
    if (v32 >= v31 >> 1)
    {
      *a7 = sub_100033A1C((v31 > 1), v32 + 1, 1, v29);
    }

    v33 = *a7;
    *(v33 + 2) = v32 + 1;
    v34 = &v33[24 * v32];
    *(v34 + 4) = v24;
    *(v34 + 5) = v26;
    *(v34 + 6) = v28;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10006C434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1000B4F00();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 32);
  v12 = *(a1 + 40);
  sub_1000B4EE0();
  v13(v11, a3, a4);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_10006C538(void *a1)
{
  v3 = v1;
  v5 = sub_100030480(&qword_100107E38, &qword_1000CC848);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  sub_1000458B4(a1, a1[3]);
  sub_10006FD20();
  sub_1000B6020();
  v14 = *v3;
  v13 = 0;
  type metadata accessor for CGPoint(0);
  sub_10006FD74(&qword_100107E40, type metadata accessor for CGPoint);
  sub_1000B5EB0();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v14 = v3[1];
  v13 = 1;
  sub_1000B5EB0();
  v14 = v3[2];
  v13 = 2;
  sub_1000B5EB0();
  v14 = v3[3];
  v13 = 3;
  sub_1000B5EB0();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10006C77C()
{
  v1 = 0x7466654C706F74;
  v2 = 0x69526D6F74746F62;
  if (*v0 != 2)
  {
    v2 = 0x654C6D6F74746F62;
  }

  if (*v0)
  {
    v1 = 0x7468676952706F74;
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

uint64_t sub_10006C804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10006F518(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10006C838(uint64_t a1)
{
  v2 = sub_10006FD20();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10006C874(uint64_t a1)
{
  v2 = sub_10006FD20();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10006C8B0@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10006F688(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

Swift::Int sub_10006C918()
{
  v1 = *v0;
  sub_1000B5FB0();
  sub_1000B56A0();

  return sub_1000B5FE0();
}

uint64_t sub_10006C9BC()
{
  *v0;
  *v0;
  *v0;
  sub_1000B56A0();
}

Swift::Int sub_10006CA4C()
{
  v1 = *v0;
  sub_1000B5FB0();
  sub_1000B56A0();

  return sub_1000B5FE0();
}

uint64_t sub_10006CAEC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10006F934(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10006CB1C(uint64_t *a1@<X8>)
{
  v2 = 0xE200000000000000;
  v3 = 20565;
  v4 = 0xE400000000000000;
  v5 = 1413891404;
  if (*v1 != 2)
  {
    v5 = 0x5448474952;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 1314344772;
    v2 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_10006CC94(void *a1)
{
  v3 = sub_100030480(&qword_100107DF8, &qword_1000CC838);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  sub_1000458B4(a1, a1[3]);
  sub_10006FB7C();
  sub_1000B6020();
  v12 = 0;
  sub_1000B5E90();
  if (!v1)
  {
    v11 = 1;
    sub_1000B5E90();
  }

  return (*(v4 + 8))(v7, v3);
}

Swift::Int sub_10006CE28()
{
  v1 = *v0;
  sub_1000B5FB0();
  sub_1000B56A0();

  return sub_1000B5FE0();
}

uint64_t sub_10006CF18()
{
  *v0;
  *v0;
  *v0;
  sub_1000B56A0();
}

Swift::Int sub_10006CFF4()
{
  v1 = *v0;
  sub_1000B5FB0();
  sub_1000B56A0();

  return sub_1000B5FE0();
}

uint64_t sub_10006D0E0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10006F980(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10006D110(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x4F544F4850;
  v5 = 0xE900000000000045;
  v6 = 0x4C41435359415247;
  v7 = 0xEF45544948575F44;
  v8 = 0x4E415F4B43414C42;
  if (v2 != 3)
  {
    v8 = 0x414F424554494857;
    v7 = 0xEA00000000004452;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x524F4C4F43;
    v3 = 0xE500000000000000;
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

uint64_t sub_10006D2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), void (*a6)(void))
{
  a5();
  a6();

  return sub_1000B4FF0();
}

uint64_t sub_10006D368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), void (*a6)(void))
{
  a5();
  a6();

  return sub_1000B5010();
}

uint64_t sub_10006D40C()
{
  if (*v0)
  {
    result = 0x64757469676E6F6CLL;
  }

  else
  {
    result = 0x656475746974616CLL;
  }

  *v0;
  return result;
}

uint64_t sub_10006D44C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656475746974616CLL && a2 == 0xE800000000000000;
  if (v6 || (sub_1000B5F20() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1000B5F20();

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

uint64_t sub_10006D53C(uint64_t a1)
{
  v2 = sub_10006FB7C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10006D578(uint64_t a1)
{
  v2 = sub_10006FB7C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10006D5B4(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10006F9CC(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
  }
}

uint64_t sub_10006D5E0(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  return sub_10006CC94(a1);
}

id sub_10006D5FC()
{
  result = sub_10004FC68();
  v2 = v1;
  if (v1)
  {
    v3 = result;
    v17 = result;
    v18 = v1;
    __chkstk_darwin(result);
    v16[2] = &v17;
    v4 = sub_10002F354(sub_100045AC8, v16, &off_1000F3450);
    swift_arrayDestroy();
    if (v4)
    {
      v17 = v3;
      v18 = v2;
      v21 = 46;
      v22 = 0xE100000000000000;
      sub_10003042C();
      v5 = sub_1000B5AD0();

      v17 = sub_10002F0CC(1uLL, v5);
      v18 = v6;
      v19 = v7;
      v20 = v8;

      sub_100030480(&qword_100106AB8, &qword_1000CA310);
      sub_100067020(&qword_100106AC0, &qword_100106AB8, &qword_1000CA310);
      v9 = sub_1000B55C0();
      v11 = v10;
      swift_unknownObjectRelease();
      v12 = *(v5 + 16);
      if (v12)
      {
        v13 = (v5 + 16 + 16 * v12);
        v14 = *v13;
        v15 = v13[1];

        v17 = v9;
        v18 = v11;
        v23._countAndFlagsBits = 3027488;
        v23._object = 0xE300000000000000;
        sub_1000B56E0(v23);
        v24._countAndFlagsBits = v14;
        v24._object = v15;
        sub_1000B56E0(v24);
      }

      else
      {

        v17 = v9;
        v18 = v11;
        v25._countAndFlagsBits = 12832;
        v25._object = 0xE200000000000000;
        sub_1000B56E0(v25);
      }

      return v17;
    }

    else
    {
      return v3;
    }
  }

  return result;
}

void sub_10006D80C(void *a1@<X0>, uint64_t a2@<X8>)
{
  [a1 croppingQuadTopLeftX];
  if (v4 == 0.0 && ([a1 croppingQuadTopLeftY], v5 == 1.0) && (objc_msgSend(a1, "croppingQuadTopRightX"), v6 == 1.0) && (objc_msgSend(a1, "croppingQuadTopRightY"), v7 == 1.0) && (objc_msgSend(a1, "croppingQuadBottomRightX"), v8 == 1.0) && (objc_msgSend(a1, "croppingQuadBottomRightY"), v9 == 0.0) && (objc_msgSend(a1, "croppingQuadBottomLeftX"), v10 == 0.0) && (objc_msgSend(a1, "croppingQuadBottomLeftY"), v11 == 0.0))
  {

    v12 = 1;
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
  }

  else
  {
    [a1 croppingQuadTopLeftX];
    v32 = v17;
    [a1 croppingQuadTopLeftY];
    v31 = v18;
    [a1 croppingQuadTopRightX];
    v29 = v19;
    [a1 croppingQuadTopRightY];
    v30 = v20;
    [a1 croppingQuadBottomRightX];
    v27 = v21;
    [a1 croppingQuadBottomRightY];
    v28 = v22;
    [a1 croppingQuadBottomLeftX];
    v25 = v23;
    [a1 croppingQuadBottomLeftY];
    v26 = v24;

    *&v14 = v29;
    *&v13 = v32;
    v12 = 0;
    *(&v13 + 1) = v31;
    *(&v14 + 1) = v30;
    *&v15 = v27;
    *(&v15 + 1) = v28;
    *&v16 = v25;
    *(&v16 + 1) = v26;
  }

  *a2 = v13;
  *(a2 + 16) = v14;
  *(a2 + 32) = v15;
  *(a2 + 48) = v16;
  *(a2 + 64) = v12;
}

uint64_t sub_10006D9F0(unint64_t a1)
{
  if (a1 < 4)
  {
    return 0x3020104u >> (8 * a1);
  }

  if (qword_100106A68 != -1)
  {
    swift_once();
  }

  v2 = sub_1000B5530();
  sub_100036380(v2, qword_100107B78);
  v3 = sub_1000B5520();
  v4 = sub_1000B5930();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Unknown drawing orientation — returning nil", v5, 2u);
  }

  return 4;
}

uint64_t sub_10006DAEC(void *a1, _OWORD *a2)
{
  v14 = _swiftEmptyArrayStorage;
  v4 = [a1 table];
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v6 = a2[1];
  *(v5 + 24) = *a2;
  *(v5 + 40) = v6;
  *(v5 + 56) = a2[2];
  *(v5 + 69) = *(a2 + 45);
  *(v5 + 88) = &v14;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_10006DD04;
  *(v7 + 24) = v5;
  aBlock[4] = sub_10006DD24;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10006C434;
  aBlock[3] = &unk_1000F4D18;
  v8 = _Block_copy(aBlock);
  v9 = a1;
  sub_10004D3AC(a2, v12);

  [v4 enumerateRowsWithBlock:v8];

  _Block_release(v8);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    v11 = v14;

    return v11;
  }

  return result;
}

uint64_t sub_10006DCAC()
{
  if (*(v0 + 40) != 1)
  {

    v1 = *(v0 + 56);

    v2 = *(v0 + 72);
  }

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_10006DD24()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_10006DD4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10006DD64()
{
  v1 = sub_1000B4F00();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  v6 = v0 + v5;
  if (*(v0 + v5 + 16) != 1)
  {

    v7 = *(v6 + 32);

    v8 = *(v6 + 48);
  }

  return _swift_deallocObject(v0, ((v5 + 68) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

void sub_10006DE60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(sub_1000B4F00() - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v3 + 16);
  v11 = *(v3 + ((v9 + 68) & 0xFFFFFFFFFFFFFFF8));

  sub_10006C1AC(a1, a2, a3, v10, v3 + v8, v3 + v9, v11);
}

uint64_t sub_10006DF38(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100030480(&qword_100106E38, &unk_1000CB730);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 48);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100030480(&qword_100106F88, &qword_1000CAE20);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 80);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_10006E088(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = sub_100030480(&qword_100106E38, &unk_1000CB730);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 48);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100030480(&qword_100106F88, &qword_1000CAE20);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 80);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_10006E1C4()
{
  sub_10004D9AC(319, &qword_100106CA0);
  if (v0 <= 0x3F)
  {
    sub_10004D9AC(319, &qword_100107080);
    if (v1 <= 0x3F)
    {
      sub_10006E4B0(319, &qword_100107088, &type metadata accessor for Date);
      if (v2 <= 0x3F)
      {
        sub_10004D9AC(319, &qword_100107C00);
        if (v3 <= 0x3F)
        {
          sub_10006E4B0(319, &qword_100107C08, type metadata accessor for CGRect);
          if (v4 <= 0x3F)
          {
            sub_10004D9AC(319, &qword_100107C10);
            if (v5 <= 0x3F)
            {
              sub_10004D9AC(319, &qword_100107C18);
              if (v6 <= 0x3F)
              {
                sub_10004D9AC(319, &qword_100107C20);
                if (v7 <= 0x3F)
                {
                  sub_10006E4B0(319, &qword_100107C28, &type metadata accessor for URL);
                  if (v8 <= 0x3F)
                  {
                    sub_10004D9AC(319, &qword_100107C30);
                    if (v9 <= 0x3F)
                    {
                      sub_10004D9F8(319, &qword_100107C38, &qword_100107C40, &unk_1000CC3B0);
                      if (v10 <= 0x3F)
                      {
                        sub_10004D9F8(319, &qword_100107540, &unk_100107548, &qword_1000CB760);
                        if (v11 <= 0x3F)
                        {
                          sub_10004D9AC(319, &qword_1001070A0);
                          if (v12 <= 0x3F)
                          {
                            sub_10004D9AC(319, &unk_100107C48);
                            if (v13 <= 0x3F)
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
          }
        }
      }
    }
  }
}

void sub_10006E4B0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000B5AC0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10006E53C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10006E55C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 64) = v3;
  return result;
}

unint64_t sub_10006E5AC()
{
  result = qword_100107CD8;
  if (!qword_100107CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107CD8);
  }

  return result;
}

unint64_t sub_10006E648()
{
  result = qword_100107CF0;
  if (!qword_100107CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107CF0);
  }

  return result;
}

unint64_t sub_10006E6A0()
{
  result = qword_100107CF8;
  if (!qword_100107CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107CF8);
  }

  return result;
}

unint64_t sub_10006E73C()
{
  result = qword_100107D10;
  if (!qword_100107D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107D10);
  }

  return result;
}

uint64_t sub_10006E790(uint64_t a1)
{
  *(a1 + 8) = sub_10006FD74(&qword_100106F20, type metadata accessor for ICAttachmentArchiveModel);
  result = sub_10006FD74(&qword_100107328, type metadata accessor for ICAttachmentArchiveModel);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10006E814()
{
  result = qword_100107D58;
  if (!qword_100107D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107D58);
  }

  return result;
}

uint64_t sub_10006E868(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000457C8(a1, a2);
  }

  return a1;
}

unint64_t sub_10006E87C()
{
  result = qword_100107D68;
  if (!qword_100107D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107D68);
  }

  return result;
}

unint64_t sub_10006E8D0()
{
  result = qword_100107D70;
  if (!qword_100107D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107D70);
  }

  return result;
}

unint64_t sub_10006E924()
{
  result = qword_100107D78;
  if (!qword_100107D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107D78);
  }

  return result;
}

unint64_t sub_10006E978()
{
  result = qword_100107D88;
  if (!qword_100107D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107D88);
  }

  return result;
}

unint64_t sub_10006EA00()
{
  result = qword_100107DA0;
  if (!qword_100107DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107DA0);
  }

  return result;
}

unint64_t sub_10006EA54()
{
  result = qword_100107DB8;
  if (!qword_100107DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107DB8);
  }

  return result;
}

unint64_t sub_10006EAA8()
{
  result = qword_100107DC8;
  if (!qword_100107DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107DC8);
  }

  return result;
}

uint64_t sub_10006EAFC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10003052C(&qword_100107C40, &unk_1000CC3B0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10006EBA8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10003052C(&qword_100106D10, &qword_1000CAA80);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10006EC20()
{
  result = qword_100107DE0;
  if (!qword_100107DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107DE0);
  }

  return result;
}

uint64_t sub_10006EC74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ICAttachmentArchiveModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006ECD8(uint64_t a1)
{
  v2 = type metadata accessor for ICAttachmentArchiveModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10006ED34(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65644965707974 && a2 == 0xEE00726569666974;
  if (v4 || (sub_1000B5F20() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_1000B5F20() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001000C7000 == a2 || (sub_1000B5F20() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6954746E65726170 && a2 == 0xEB00000000656C74 || (sub_1000B5F20() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001000C7020 == a2 || (sub_1000B5F20() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001000C7040 == a2 || (sub_1000B5F20() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001000C7600 == a2 || (sub_1000B5F20() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6C6946616964656DLL && a2 == 0xED0000656D616E65 || (sub_1000B5F20() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x4164657461657263 && a2 == 0xE900000000000074 || (sub_1000B5F20() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6465696669646F6DLL && a2 == 0xEA00000000007441 || (sub_1000B5F20() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000 || (sub_1000B5F20() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1000B5F20() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x73646E756F62 && a2 == 0xE600000000000000 || (sub_1000B5F20() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x676E6970706F7263 && a2 == 0xE800000000000000 || (sub_1000B5F20() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x7461746E6569726FLL && a2 == 0xEB000000006E6F69 || (sub_1000B5F20() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x6C69466567616D69 && a2 == 0xEB00000000726574 || (sub_1000B5F20() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_1000B5F20() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x4474657070696E73 && a2 == 0xEB00000000617461 || (sub_1000B5F20() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x616E6964726F6F63 && a2 == 0xEA00000000006574 || (sub_1000B5F20() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 1937207154 && a2 == 0xE400000000000000 || (sub_1000B5F20() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x5474686769527369 && a2 == 0xED00007466654C6FLL || (sub_1000B5F20() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001000C7620 == a2 || (sub_1000B5F20() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x65746F75516C7275 && a2 == 0xEC00000074786554 || (sub_1000B5F20() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001000C7640 == a2 || (sub_1000B5F20() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0x6365526F69647561 && a2 == 0xEE00676E6964726FLL)
  {

    return 24;
  }

  else
  {
    v6 = sub_1000B5F20();

    if (v6)
    {
      return 24;
    }

    else
    {
      return 25;
    }
  }
}

uint64_t sub_10006F518(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7466654C706F74 && a2 == 0xE700000000000000;
  if (v4 || (sub_1000B5F20() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7468676952706F74 && a2 == 0xE800000000000000 || (sub_1000B5F20() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69526D6F74746F62 && a2 == 0xEB00000000746867 || (sub_1000B5F20() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x654C6D6F74746F62 && a2 == 0xEA00000000007466)
  {

    return 3;
  }

  else
  {
    v6 = sub_1000B5F20();

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

uint64_t sub_10006F688@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_100030480(&qword_100107E20, &qword_1000CC840);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  sub_1000458B4(a1, a1[3]);
  sub_10006FD20();
  sub_1000B6010();
  if (v2)
  {
    return sub_100035DA8(a1);
  }

  type metadata accessor for CGPoint(0);
  v22 = 0;
  sub_10006FD74(&qword_100107E30, type metadata accessor for CGPoint);
  sub_1000B5E00();
  v11 = v20;
  v12 = v21;
  v22 = 1;
  sub_1000B5E00();
  v13 = v20;
  v14 = v21;
  v22 = 2;
  sub_1000B5E00();
  v15 = v20;
  v16 = v21;
  v22 = 3;
  sub_1000B5E00();
  (*(v6 + 8))(v9, v5);
  v17 = v20;
  v18 = v21;
  result = sub_100035DA8(a1);
  *a2 = v11;
  a2[1] = v12;
  a2[2] = v13;
  a2[3] = v14;
  a2[4] = v15;
  a2[5] = v16;
  a2[6] = v17;
  a2[7] = v18;
  return result;
}

uint64_t sub_10006F934(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000F3508;
  v6._object = a2;
  v4 = sub_1000B5D60(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10006F980(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000F35B0;
  v6._object = a2;
  v4 = sub_1000B5D60(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

double sub_10006F9CC(uint64_t *a1)
{
  v2 = sub_100030480(&qword_100107DE8, &qword_1000CC830);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11[-v5];
  v7 = a1[4];
  sub_1000458B4(a1, a1[3]);
  sub_10006FB7C();
  sub_1000B6010();
  v11[15] = 0;
  sub_1000B5DE0();
  v9 = v8;
  v11[14] = 1;
  sub_1000B5DE0();
  (*(v3 + 8))(v6, v2);
  sub_100035DA8(a1);
  return v9;
}

unint64_t sub_10006FB7C()
{
  result = qword_100107DF0;
  if (!qword_100107DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107DF0);
  }

  return result;
}

unint64_t sub_10006FBD0()
{
  result = qword_100107E00;
  if (!qword_100107E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107E00);
  }

  return result;
}

unint64_t sub_10006FC24()
{
  result = qword_100107E08;
  if (!qword_100107E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107E08);
  }

  return result;
}

unint64_t sub_10006FC78()
{
  result = qword_100107E10;
  if (!qword_100107E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107E10);
  }

  return result;
}

unint64_t sub_10006FCCC()
{
  result = qword_100107E18;
  if (!qword_100107E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107E18);
  }

  return result;
}

unint64_t sub_10006FD20()
{
  result = qword_100107E28;
  if (!qword_100107E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107E28);
  }

  return result;
}

uint64_t sub_10006FD74(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10006FDBC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_10006FE4C(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10006FF30()
{
  result = qword_100107E48;
  if (!qword_100107E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107E48);
  }

  return result;
}

unint64_t sub_10006FF88()
{
  result = qword_100107E50;
  if (!qword_100107E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107E50);
  }

  return result;
}

unint64_t sub_10006FFE0()
{
  result = qword_100107E58;
  if (!qword_100107E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107E58);
  }

  return result;
}

unint64_t sub_100070038()
{
  result = qword_100107E60;
  if (!qword_100107E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107E60);
  }

  return result;
}

unint64_t sub_100070090()
{
  result = qword_100107E68;
  if (!qword_100107E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107E68);
  }

  return result;
}

unint64_t sub_1000700E8()
{
  result = qword_100107E70;
  if (!qword_100107E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107E70);
  }

  return result;
}

unint64_t sub_100070140()
{
  result = qword_100107E78;
  if (!qword_100107E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107E78);
  }

  return result;
}

unint64_t sub_100070198()
{
  result = qword_100107E80;
  if (!qword_100107E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107E80);
  }

  return result;
}

unint64_t sub_1000701F0()
{
  result = qword_100107E88;
  if (!qword_100107E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107E88);
  }

  return result;
}

Swift::Int sub_1000702A4()
{
  v1 = *v0;
  sub_1000B5FB0();
  sub_1000B5FC0(v1);
  return sub_1000B5FE0();
}

Swift::Int sub_100070318()
{
  v1 = *v0;
  sub_1000B5FB0();
  sub_1000B5FC0(v1);
  return sub_1000B5FE0();
}

unint64_t sub_10007035C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100071A1C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id ICCloudSyncingObject.MoveAction.__allocating_init(type:object:fromParentObject:toParentObject:isCopy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v11 = objc_allocWithZone(v5);
  *&v11[OBJC_IVAR___ICCloudSyncingObjectMoveAction_type] = a1;
  *&v11[OBJC_IVAR___ICCloudSyncingObjectMoveAction_object] = a2;
  *&v11[OBJC_IVAR___ICCloudSyncingObjectMoveAction_fromParentObject] = a3;
  *&v11[OBJC_IVAR___ICCloudSyncingObjectMoveAction_toParentObject] = a4;
  v11[OBJC_IVAR___ICCloudSyncingObjectMoveAction_isCopy] = a5;
  v13.receiver = v11;
  v13.super_class = v5;
  return objc_msgSendSuper2(&v13, "init");
}

id ICCloudSyncingObject.MoveAction.init(type:object:fromParentObject:toParentObject:isCopy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  ObjectType = swift_getObjectType();
  *&v5[OBJC_IVAR___ICCloudSyncingObjectMoveAction_type] = a1;
  *&v5[OBJC_IVAR___ICCloudSyncingObjectMoveAction_object] = a2;
  *&v5[OBJC_IVAR___ICCloudSyncingObjectMoveAction_fromParentObject] = a3;
  *&v5[OBJC_IVAR___ICCloudSyncingObjectMoveAction_toParentObject] = a4;
  v5[OBJC_IVAR___ICCloudSyncingObjectMoveAction_isCopy] = a5;
  v13.receiver = v5;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, "init");
}

id ICCloudSyncingObject.MoveAction.__allocating_init(object:fromParentObject:toParentObject:isCopy:)(void *a1, void *a2, void *a3, char a4)
{
  v9 = objc_allocWithZone(v4);
  if (!a2)
  {

    a1 = a3;
    goto LABEL_7;
  }

  if (!a3)
  {

    goto LABEL_7;
  }

  v10 = a3;
  v11 = a2;
  v12 = sub_100071860(v11, v10);
  if (v13)
  {

LABEL_7:
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v15 = [v9 initWithType:v12 object:a1 fromParentObject:v11 toParentObject:v10 isCopy:a4 & 1];

  return v15;
}

id ICCloudSyncingObject.MoveAction.init(object:fromParentObject:toParentObject:isCopy:)(void *a1, void *a2, void *a3, char a4)
{
  v6 = a1;
  if (!a2)
  {

    v6 = a3;
    goto LABEL_7;
  }

  if (!a3)
  {

    goto LABEL_7;
  }

  v9 = a3;
  v10 = a2;
  v11 = sub_100071860(v10, v9);
  if (v12)
  {

LABEL_7:
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v14 = [v4 initWithType:v11 object:v6 fromParentObject:v10 toParentObject:v9 isCopy:a4 & 1];

  return v14;
}

id ICCloudSyncingObject.MoveAction.__allocating_init(folder:toParentObject:isCopy:)(void *a1, void *a2, char a3)
{
  v4 = v3;
  v8 = objc_allocWithZone(v4);
  v9 = [a1 parent];
  if (!v9)
  {
    v9 = [a1 account];
  }

  v10 = [v8 initWithObject:a1 fromParentObject:v9 toParentObject:a2 isCopy:a3 & 1];

  return v10;
}

id ICCloudSyncingObject.MoveAction.init(folder:toParentObject:isCopy:)(void *a1, void *a2, char a3)
{
  v4 = v3;
  v8 = [a1 parent];
  if (!v8)
  {
    v8 = [a1 account];
  }

  v9 = [v4 initWithObject:a1 fromParentObject:v8 toParentObject:a2 isCopy:a3 & 1];

  return v9;
}

id ICCloudSyncingObject.MoveAction.__allocating_init(note:toFolder:isCopy:)(void *a1, void *a2, char a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = [a1 folder];
  v9 = [v7 initWithObject:a1 fromParentObject:v8 toParentObject:a2 isCopy:a3 & 1];

  return v9;
}

id ICCloudSyncingObject.MoveAction.init(note:toFolder:isCopy:)(void *a1, void *a2, char a3)
{
  v7 = [a1 folder];
  v8 = [v3 initWithObject:a1 fromParentObject:v7 toParentObject:a2 isCopy:a3 & 1];

  return v8;
}

void *sub_100071148(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_1000B5CF0();
  if (!v3)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_1000342F8(v3, 0);
  sub_1000716AC((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1000712C4(unsigned int *a1)
{
  v22 = a1;
  v23 = sub_1000B4EA0();
  v2 = *(v23 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v23);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000B51D0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100030480(&qword_100107368, &qword_1000CB580);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v22 - v13;
  v15 = sub_1000B5250();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v1;
  sub_1000B5240();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    return sub_100036320(v14, &qword_100107368, &qword_1000CB580);
  }

  (*(v16 + 32))(v19, v14, v15);
  (*(v16 + 16))(v10, v19, v15);
  (*(v7 + 104))(v10, *v22, v6);
  sub_1000B4E90();

  (*(v2 + 8))(v5, v23);
  (*(v7 + 8))(v10, v6);
  return (*(v16 + 8))(v19, v15);
}

void (*sub_100071624(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_1000B5C20();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1000716A4;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000716AC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1000B5CF0();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1000B5CF0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100067020(&qword_100107F20, &qword_100107EC8, &unk_1000CCBA0);
          for (i = 0; i != v6; ++i)
          {
            sub_100030480(&qword_100107EC8, &unk_1000CCBA0);
            v9 = sub_100071624(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1000362AC(0, &qword_100107EE0, CKShareParticipant_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100071860(void *a1, void *a2)
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4 && [v4 isTrashFolder] || (objc_opt_self(), (v5 = swift_dynamicCastObjCClass()) != 0) && objc_msgSend(v5, "isTrashFolder"))
  {

    return 0;
  }

  if ([a1 isSharedViaICloud] && objc_msgSend(a2, "isSharedViaICloud"))
  {
    v7 = [a1 sharedRootObject];
    v8 = [a2 sharedRootObject];
    v9 = v8;
    if (v7)
    {
      if (v8)
      {
        sub_1000362AC(0, &qword_100106C00, ICCloudSyncingObject_ptr);
        v10 = sub_1000B5AA0();

        if ((v10 & 1) == 0)
        {
          return 2;
        }

        return 3;
      }

      v9 = a2;
    }

    else
    {

      if (!v9)
      {
        return 3;
      }
    }

    return 2;
  }

  if ([a1 isSharedViaICloud])
  {
    v11 = [a2 isSharedViaICloud];

    if (v11)
    {
      return 0;
    }

    else
    {
      return 4;
    }
  }

  else
  {

    return 1;
  }
}

unint64_t sub_100071A1C(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

void _sSo20ICCloudSyncingObjectC38com_apple_mobilenotes_SharingExtensionE29undoablyPersistActivityEvents3for03oldC003newC0yAbCE10MoveActionC_ABSgAJtFZ_0(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + OBJC_IVAR___ICCloudSyncingObjectMoveAction_type);
  if (v3 <= 1)
  {
    if (!v3)
    {
      return;
    }

    if (v3 != 1)
    {
      goto LABEL_39;
    }

    if (!a3)
    {
      return;
    }

    v9 = *(a1 + OBJC_IVAR___ICCloudSyncingObjectMoveAction_toParentObject);
    v30 = a3;
    if (*(a1 + OBJC_IVAR___ICCloudSyncingObjectMoveAction_isCopy) == 1)
    {
      goto LABEL_29;
    }

    goto LABEL_31;
  }

  if (v3 != 2)
  {
    if (v3 == 3)
    {
      if (!a3)
      {
        return;
      }

      v4 = *(a1 + OBJC_IVAR___ICCloudSyncingObjectMoveAction_fromParentObject);
      v5 = *(a1 + OBJC_IVAR___ICCloudSyncingObjectMoveAction_toParentObject);
      v30 = a3;
      if (*(a1 + OBJC_IVAR___ICCloudSyncingObjectMoveAction_isCopy) == 1)
      {
        v6 = *(a1 + OBJC_IVAR___ICCloudSyncingObjectMoveAction_object);
        v7 = a3;
        v8 = [v7 persistCopyActivityEventForObject:v7 originalObject:v6 fromParentObject:v4 toParentObject:v5];
      }

      else
      {
        v21 = a3;
        v8 = [v21 persistMoveActivityEventForObject:v21 fromParentObject:v4 toParentObject:v5];
      }

      goto LABEL_32;
    }

    if (v3 == 4)
    {
      if (!a2)
      {
        return;
      }

      v16 = a1;
      v17 = *(a1 + OBJC_IVAR___ICCloudSyncingObjectMoveAction_fromParentObject);
      v30 = a2;
      v18 = [v17 sharedRootObject];
      if (!v18)
      {
        v22 = v30;
LABEL_34:

        return;
      }

      v19 = v18;
      if (*(v16 + OBJC_IVAR___ICCloudSyncingObjectMoveAction_isCopy) == 1)
      {
        v20 = [v18 persistCopyActivityEventForObject:v30 originalObject:*(v16 + OBJC_IVAR___ICCloudSyncingObjectMoveAction_object) fromParentObject:v17 toParentObject:0];
      }

      else
      {
        v20 = [v18 persistMoveActivityEventForObject:v30 fromParentObject:v17 toParentObject:0];
      }

      v28 = v20;
      v29 = [objc_opt_self() shared];
      [v29 registerUndoForCloudSyncingObjectActivityEvent:v28 cloudSyncingObject:v19];

LABEL_33:
      v22 = v29;
      goto LABEL_34;
    }

LABEL_39:
    v31 = *(a1 + OBJC_IVAR___ICCloudSyncingObjectMoveAction_type);
    sub_1000B5F30();
    __break(1u);
    return;
  }

  v30 = a3;
  if (a2)
  {
    v10 = a1;
    v11 = *(a1 + OBJC_IVAR___ICCloudSyncingObjectMoveAction_fromParentObject);
    v12 = a2;
    v13 = [v11 sharedRootObject];
    if (v13)
    {
      v14 = v13;
      if (*(v10 + OBJC_IVAR___ICCloudSyncingObjectMoveAction_isCopy) == 1)
      {
        v15 = [v13 persistCopyActivityEventForObject:v12 originalObject:*(v10 + OBJC_IVAR___ICCloudSyncingObjectMoveAction_object) fromParentObject:v11 toParentObject:0];
      }

      else
      {
        v15 = [v13 persistMoveActivityEventForObject:v12 fromParentObject:v11 toParentObject:0];
      }

      v23 = v15;
      v24 = [objc_opt_self() shared];
      [v24 registerUndoForCloudSyncingObjectActivityEvent:v23 cloudSyncingObject:v14];

      v12 = v24;
    }

    a1 = v10;
    a3 = v30;
  }

  if (a3)
  {
    v9 = *(a1 + OBJC_IVAR___ICCloudSyncingObjectMoveAction_toParentObject);
    if (*(a1 + OBJC_IVAR___ICCloudSyncingObjectMoveAction_isCopy) == 1)
    {
LABEL_29:
      v25 = *(a1 + OBJC_IVAR___ICCloudSyncingObjectMoveAction_object);
      v26 = a3;
      v8 = [v26 persistCopyActivityEventForObject:v26 originalObject:v25 fromParentObject:0 toParentObject:v9];
LABEL_32:
      v28 = v8;
      v29 = [objc_opt_self() shared];
      [v29 registerUndoForCloudSyncingObjectActivityEvent:v28 cloudSyncingObject:v30];
      goto LABEL_33;
    }

LABEL_31:
    v27 = a3;
    v8 = [v27 persistMoveActivityEventForObject:v27 fromParentObject:0 toParentObject:v9];
    goto LABEL_32;
  }
}

unint64_t sub_100071EDC()
{
  result = qword_100107ED8;
  if (!qword_100107ED8)
  {
    sub_1000362AC(255, &qword_100107EE0, CKShareParticipant_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107ED8);
  }

  return result;
}

unint64_t sub_100071F50()
{
  result = qword_100107EF0;
  if (!qword_100107EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100107EF0);
  }

  return result;
}

uint64_t sub_100071FD8(uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
    v2 = *(sub_100030480(&qword_100106D00, &qword_1000CAA70) - 8);
    v3 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    sub_1000B50B0();
    if (v4)
    {
      v5 = sub_1000B55F0();

      v6 = [v5 ic_sanitizedFilenameString];

      v7 = sub_1000B5620();
      v9 = v8;

      v10 = HIBYTE(v9) & 0xF;
      if ((v9 & 0x2000000000000000) == 0)
      {
        v10 = v7 & 0xFFFFFFFFFFFFLL;
      }

      if (v10)
      {
        return v7;
      }
    }
  }

  v12 = [objc_opt_self() mainBundle];
  v13 = sub_1000B55F0();
  v14 = [v12 localizedStringForKey:v13 value:0 table:0];

  v15 = sub_1000B5620();
  return v15;
}

uint64_t sub_100072158(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = __chkstk_darwin(AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  __chkstk_darwin(v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  __chkstk_darwin(v22);
  v25 = &v34 - v24;
  v26 = sub_1000B5880();
  if (!v26)
  {
    return sub_1000B57D0();
  }

  v48 = v26;
  v52 = sub_1000B5CB0();
  v39 = sub_1000B5CC0();
  sub_1000B5C70(v48);
  result = sub_1000B5870();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_1000B58C0();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_1000B5CA0();
      result = sub_1000B58A0();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100072578(uint64_t a1)
{
  v2 = sub_1000B4B70();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_1000B4B60();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

uint64_t static ICArchiveExporterConfiguration.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100106A80 != -1)
  {
    swift_once();
  }

  v2 = static ICArchiveCreator.default;
  v4 = qword_100112C30;
  v3 = unk_100112C38;
  v5 = xmmword_100112C40;

  IsAlexandriaDemoModeEnabled = ICInternalSettingsIsAlexandriaDemoModeEnabled();
  v7 = ICInternalSettingsIsAlexandriaDemoModeEnabled();
  result = ICInternalSettingsIsAlexandriaDemoModeEnabled();
  *a1 = 0;
  *(a1 + 8) = v2;
  *(a1 + 24) = v4;
  *(a1 + 32) = v3;
  *(a1 + 40) = v5;
  *(a1 + 56) = IsAlexandriaDemoModeEnabled;
  *(a1 + 57) = v7;
  *(a1 + 58) = result;
  *(a1 + 59) = 0;
  return result;
}

uint64_t sub_10007273C()
{
  v0 = sub_1000B5530();
  sub_10003640C(v0, qword_100107F28);
  sub_100036380(v0, qword_100107F28);
  return sub_1000B5510();
}

uint64_t sub_100072788()
{
  v0 = sub_1000B5530();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000B54B0();
  sub_10003640C(v5, qword_100107F40);
  sub_100036380(v5, qword_100107F40);
  if (qword_100106A70 != -1)
  {
    swift_once();
  }

  v6 = sub_100036380(v0, qword_100107F28);
  (*(v1 + 16))(v4, v6, v0);
  return sub_1000B5490();
}

uint64_t ICArchiveExporter.fileManager.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  return swift_unknownObjectRetain();
}

uint64_t ICArchiveExporter.__allocating_init(objectProvider:configuration:fileManager:)(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  swift_allocObject();
  v8 = sub_10008832C(a1, a2, a3, a4);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v8;
}

uint64_t ICArchiveExporter.init(objectProvider:configuration:fileManager:)(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_10008832C(a1, a2, a3, a4);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_1000729C4()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = swift_allocObject();
  swift_weakInit();
  v8 = sub_100088CF0;
  v9 = v2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100072578;
  ObjectType = &unk_1000F53A0;
  v3 = _Block_copy(aBlock);

  v4 = [v1 addObserverForName:UIApplicationDidReceiveMemoryWarningNotification object:0 queue:0 usingBlock:v3];
  _Block_release(v3);

  ObjectType = swift_getObjectType();
  aBlock[0] = v4;
  swift_beginAccess();
  sub_1000521D8(aBlock, v0 + 128, &qword_100106E30, &unk_1000CAB60);
  return swift_endAccess();
}

uint64_t sub_100072B30()
{
  v1 = (v0 + 16);
  v2 = *v0;
  v3 = [objc_opt_self() defaultCenter];
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v5[2] = *(v2 + 80);
  v5[3] = *(v2 + 88);
  v5[4] = v4;
  v11 = sub_100088D48;
  v12 = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100072578;
  ObjectType = &unk_1000F5418;
  v6 = _Block_copy(aBlock);

  v7 = [v3 addObserverForName:UIApplicationDidReceiveMemoryWarningNotification object:0 queue:0 usingBlock:v6];
  _Block_release(v6);

  ObjectType = swift_getObjectType();
  aBlock[0] = v7;
  swift_beginAccess();
  sub_1000521D8(aBlock, v1, &qword_100106E30, &unk_1000CAB60);
  return swift_endAccess();
}

void *ICArchiveExporter.deinit()
{
  sub_100072D48();
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[9];
  sub_10008839C(v0[4], v0[5]);
  v6 = v0[11];
  swift_unknownObjectRelease();
  sub_100036320((v0 + 16), &qword_100106E30, &unk_1000CAB60);
  return v0;
}

void sub_100072D48()
{
  swift_beginAccess();
  sub_100030C74(v0 + 128, v6, &qword_100106E30, &unk_1000CAB60);
  v1 = [objc_opt_self() defaultCenter];
  sub_100030C74(v6, &v4, &qword_100106E30, &unk_1000CAB60);
  if (v5)
  {
    sub_100030C64(&v4, v2);
    sub_1000458B4(v2, v3);
    [v1 removeObserver:sub_1000B5F00()];
    swift_unknownObjectRelease();
    sub_100035DA8(v2);
  }

  sub_100036320(v6, &qword_100106E30, &unk_1000CAB60);
}

uint64_t ICArchiveExporter.__deallocating_deinit()
{
  ICArchiveExporter.deinit();

  return swift_deallocClassInstance();
}

uint64_t ICArchiveExporter.createArchive(for:at:progress:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v8 = sub_1000B4DB0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = ICArchiveExporter.createArchive(for:progress:)(a1, a3, v12);
  if (!v4)
  {
    v14 = *(v5 + 88);
    v15 = *(v5 + 96);
    swift_getObjectType();
    sub_1000B4F80();
    sub_1000B4FE0();
    ICArchiveExporter.removeArchive(at:)(v12);
    return (*(v9 + 8))(v12, v8);
  }

  return result;
}

uint64_t sub_100073024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20[0] = a3;
  v4 = v3;
  v7 = sub_100030480(&qword_100106F88, &qword_1000CAE20);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = v20 - v9;
  v11 = swift_allocBox();
  v13 = v12;
  v14 = sub_1000B4DB0();
  v15 = *(v14 - 8);
  (*(v15 + 56))(v13, 1, 1, v14);
  v21 = 0;
  v16 = v3[2];
  v20[4] = v13;
  v20[5] = v4;
  v20[6] = a1;
  v20[7] = a2;
  v20[8] = &v21;
  sub_1000B51C0();
  sub_1000886A4(&qword_100108018, &type metadata accessor for ICModernObjectProvider);
  v17 = v20[1];
  sub_1000B5020();
  if (v17)
  {
    goto LABEL_4;
  }

  v18 = v20[0];
  sub_100030C74(v13, v10, &qword_100106F88, &qword_1000CAE20);
  result = (*(v15 + 48))(v10, 1, v14);
  if (result != 1)
  {
    (*(v15 + 32))(v18, v10, v14);
LABEL_4:
    sub_100073A50(v11, &v21, v4);
  }

  __break(1u);
  return result;
}

uint64_t ICArchiveExporter.createArchive(for:progress:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a2;
  v4 = v3;
  v23 = a3;
  v6 = *v3;
  v7 = sub_100030480(&qword_100106F88, &qword_1000CAE20);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v22 - v9;
  v11 = swift_allocBox();
  v13 = v12;
  v14 = sub_1000B4DB0();
  v15 = *(v14 - 8);
  (*(v15 + 56))(v13, 1, 1, v14);
  v31 = 0;
  v16 = v3[2];
  v26 = v13;
  v27 = v4;
  v17 = v25;
  v28 = a1;
  v29 = v24;
  v30 = &v31;
  v18 = *(v6 + 80);
  v19 = *(v6 + 88);
  sub_1000B5020();
  if (v17)
  {
    goto LABEL_4;
  }

  v20 = v23;
  sub_100030C74(v13, v10, &qword_100106F88, &qword_1000CAE20);
  result = (*(v15 + 48))(v10, 1, v14);
  if (result != 1)
  {
    (*(v15 + 32))(v20, v10, v14);
LABEL_4:
    sub_1000740A0(v11, &v31, v4);
  }

  __break(1u);
  return result;
}

uint64_t sub_100073430(uint64_t a1)
{
  v3 = v1;
  v5 = sub_1000B4DB0();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = __chkstk_darwin(v5);
  v31 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v28 - v10;
  if (qword_100106A70 != -1)
  {
    swift_once();
  }

  v12 = sub_1000B5530();
  sub_100036380(v12, qword_100107F28);
  v13 = v6[2];
  v32 = a1;
  v13(v11, a1, v5);
  v14 = sub_1000B5520();
  v15 = sub_1000B5910();
  v16 = os_log_type_enabled(v14, v15);
  v33 = v6;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v2;
    v34 = v29;
    *v17 = 136315138;
    sub_1000886A4(&qword_100106F10, &type metadata accessor for URL);
    v18 = sub_1000B5EE0();
    v19 = v3;
    v21 = v20;
    v22 = v6[1];
    v22(v11, v5);
    v23 = sub_100062B20(v18, v21, &v34);
    v3 = v19;

    *(v17 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v14, v15, "Removing archive… {url: %s}", v17, 0xCu);
    sub_100035DA8(v29);
  }

  else
  {

    v22 = v6[1];
    v22(v11, v5);
  }

  v24 = *(v3 + 88);
  v25 = *(v3 + 96);
  swift_getObjectType();
  v26 = v31;
  sub_1000B4D30();
  sub_1000B4F80();
  return (v22)(v26, v5);
}

uint64_t ICArchiveExporter.removeArchive(at:)(uint64_t a1)
{
  v3 = v1;
  v5 = sub_1000B4DB0();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = __chkstk_darwin(v5);
  v31 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v28 - v10;
  if (qword_100106A70 != -1)
  {
    swift_once();
  }

  v12 = sub_1000B5530();
  sub_100036380(v12, qword_100107F28);
  v13 = v6[2];
  v32 = a1;
  v13(v11, a1, v5);
  v14 = sub_1000B5520();
  v15 = sub_1000B5910();
  v16 = os_log_type_enabled(v14, v15);
  v33 = v6;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v2;
    v34 = v29;
    *v17 = 136315138;
    sub_1000886A4(&qword_100106F10, &type metadata accessor for URL);
    v18 = sub_1000B5EE0();
    v19 = v3;
    v21 = v20;
    v22 = v6[1];
    v22(v11, v5);
    v23 = sub_100062B20(v18, v21, &v34);
    v3 = v19;

    *(v17 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v14, v15, "Removing archive… {url: %s}", v17, 0xCu);
    sub_100035DA8(v29);
  }

  else
  {

    v22 = v6[1];
    v22(v11, v5);
  }

  v24 = *(v3 + 88);
  v25 = *(v3 + 96);
  swift_getObjectType();
  v26 = v31;
  sub_1000B4D30();
  sub_1000B4F80();
  return (v22)(v26, v5);
}

void sub_100073A50(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v48 = a3;
  v50 = a2;
  v3 = sub_100030480(&qword_100106F88, &qword_1000CAE20);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v49 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v47 - v7;
  v9 = sub_1000B4DB0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v47 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v47 - v15;
  __chkstk_darwin(v14);
  v18 = &v47 - v17;
  v19 = swift_projectBox();
  swift_beginAccess();
  v20 = v10;
  sub_100030C74(v19, v8, &qword_100106F88, &qword_1000CAE20);
  v21 = *(v10 + 48);
  if (v21(v8, 1, v9) == 1)
  {
    sub_100036320(v8, &qword_100106F88, &qword_1000CAE20);
  }

  else
  {
    (*(v10 + 32))(v18, v8, v9);
    if ((*v50 & 1) == 0)
    {
      sub_100073430(v18);
      v34 = v47;
      if (qword_100106A70 != -1)
      {
        swift_once();
      }

      v35 = sub_1000B5530();
      sub_100036380(v35, qword_100107F28);
      (*(v10 + 16))(v34, v18, v9);
      v36 = sub_1000B5520();
      v37 = sub_1000B5910();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v51 = v39;
        *v38 = 136315138;
        sub_1000886A4(&qword_100106F10, &type metadata accessor for URL);
        v40 = sub_1000B5EE0();
        v41 = v20;
        v43 = v42;
        v44 = *(v41 + 8);
        v44(v34, v9);
        v45 = sub_100062B20(v40, v43, &v51);

        *(v38 + 4) = v45;
        _os_log_impl(&_mh_execute_header, v36, v37, "Failed to create archive — removing temporary files {url: %s}", v38, 0xCu);
        sub_100035DA8(v39);

        v44(v18, v9);
      }

      else
      {

        v46 = *(v10 + 8);
        v46(v34, v9);
        v46(v18, v9);
      }

      return;
    }

    (*(v10 + 8))(v18, v9);
  }

  if (qword_100106A70 != -1)
  {
    swift_once();
  }

  v22 = sub_1000B5530();
  sub_100036380(v22, qword_100107F28);

  v23 = sub_1000B5520();
  v24 = sub_1000B5910();
  if (!os_log_type_enabled(v23, v24))
  {

    goto LABEL_11;
  }

  v50 = v10;
  v25 = swift_slowAlloc();
  v48 = swift_slowAlloc();
  v52 = v48;
  *v25 = 136315138;
  swift_beginAccess();
  v26 = v19;
  v27 = v49;
  sub_100030C74(v26, v49, &qword_100106F88, &qword_1000CAE20);
  v28 = v21(v27, 1, v9);

  if (v28 != 1)
  {
    v29 = v50;
    (*(v50 + 32))(v16, v27, v9);
    sub_1000886A4(&qword_100106F10, &type metadata accessor for URL);
    v30 = sub_1000B5EE0();
    v32 = v31;
    (*(v29 + 8))(v16, v9);
    v33 = sub_100062B20(v30, v32, &v52);

    *(v25 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v23, v24, "Created archive {url: %s}", v25, 0xCu);
    sub_100035DA8(v48);

LABEL_11:

    return;
  }

  __break(1u);
}

void sub_1000740A0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v48 = a3;
  v50 = a2;
  v3 = sub_100030480(&qword_100106F88, &qword_1000CAE20);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v49 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v47 - v7;
  v9 = sub_1000B4DB0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v47 = &v47 - v16;
  __chkstk_darwin(v15);
  v18 = &v47 - v17;
  v19 = swift_projectBox();
  swift_beginAccess();
  v20 = v10;
  sub_100030C74(v19, v8, &qword_100106F88, &qword_1000CAE20);
  v21 = *(v10 + 48);
  if (v21(v8, 1, v9) == 1)
  {
    sub_100036320(v8, &qword_100106F88, &qword_1000CAE20);
  }

  else
  {
    (*(v10 + 32))(v18, v8, v9);
    if ((*v50 & 1) == 0)
    {
      ICArchiveExporter.removeArchive(at:)(v18);
      v34 = v47;
      if (qword_100106A70 != -1)
      {
        swift_once();
      }

      v35 = sub_1000B5530();
      sub_100036380(v35, qword_100107F28);
      (*(v10 + 16))(v34, v18, v9);
      v36 = sub_1000B5520();
      v37 = sub_1000B5910();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v51 = v39;
        *v38 = 136315138;
        sub_1000886A4(&qword_100106F10, &type metadata accessor for URL);
        v40 = sub_1000B5EE0();
        v41 = v20;
        v43 = v42;
        v44 = *(v41 + 8);
        v44(v34, v9);
        v45 = sub_100062B20(v40, v43, &v51);

        *(v38 + 4) = v45;
        _os_log_impl(&_mh_execute_header, v36, v37, "Failed to create archive — removing temporary files {url: %s}", v38, 0xCu);
        sub_100035DA8(v39);

        v44(v18, v9);
      }

      else
      {

        v46 = *(v10 + 8);
        v46(v34, v9);
        v46(v18, v9);
      }

      return;
    }

    (*(v10 + 8))(v18, v9);
  }

  if (qword_100106A70 != -1)
  {
    swift_once();
  }

  v22 = sub_1000B5530();
  sub_100036380(v22, qword_100107F28);

  v23 = sub_1000B5520();
  v24 = sub_1000B5910();
  if (!os_log_type_enabled(v23, v24))
  {

    goto LABEL_11;
  }

  v50 = v10;
  v25 = swift_slowAlloc();
  v48 = swift_slowAlloc();
  v52 = v48;
  *v25 = 136315138;
  swift_beginAccess();
  v26 = v19;
  v27 = v49;
  sub_100030C74(v26, v49, &qword_100106F88, &qword_1000CAE20);
  v28 = v21(v27, 1, v9);

  if (v28 != 1)
  {
    v29 = v50;
    (*(v50 + 32))(v14, v27, v9);
    sub_1000886A4(&qword_100106F10, &type metadata accessor for URL);
    v30 = sub_1000B5EE0();
    v32 = v31;
    (*(v29 + 8))(v14, v9);
    v33 = sub_100062B20(v30, v32, &v52);

    *(v25 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v23, v24, "Created archive {url: %s}", v25, 0xCu);
    sub_100035DA8(v48);

LABEL_11:

    return;
  }

  __break(1u);
}

uint64_t sub_1000746F0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _BYTE *a5)
{
  v88 = a4;
  v89 = a5;
  v97 = a1;
  v7 = sub_100030480(&qword_100106D00, &qword_1000CAA70);
  v87 = *(v7 - 8);
  v8 = *(v87 + 64);
  __chkstk_darwin(v7);
  v10 = v79 - v9;
  v11 = sub_1000B54B0();
  v91 = *(v11 - 8);
  v92 = v11;
  v12 = *(v91 + 64);
  __chkstk_darwin(v11);
  v90 = v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000B5480();
  v93 = *(v14 - 8);
  v94 = v14;
  v15 = *(v93 + 64);
  v16 = __chkstk_darwin(v14);
  v18 = v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = v79 - v19;
  v21 = sub_100030480(&qword_100106F88, &qword_1000CAE20);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v25 = v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v23);
  v28 = v79 - v27;
  v29 = __chkstk_darwin(v26);
  v98 = v79 - v30;
  __chkstk_darwin(v29);
  v32 = v79 - v31;
  v96 = a2;
  v33 = v99;
  result = sub_1000757FC(a3, v79 - v31);
  if (!v33)
  {
    v81 = v18;
    v82 = v28;
    v80 = v25;
    v83 = v20;
    v84 = a3;
    v95 = 0;
    v35 = sub_1000B4DB0();
    v36 = *(v35 - 8);
    (*(v36 + 56))(v32, 0, 1, v35);
    v37 = v32;
    v38 = v97;
    sub_1000521D8(v37, v97, &qword_100106F88, &qword_1000CAE20);
    v39 = *(v96 + 88);
    v99 = *(v96 + 96);
    v40 = v98;
    v41 = v35;
    sub_100030C74(v38, v98, &qword_100106F88, &qword_1000CAE20);
    v85 = *(v36 + 48);
    v86 = v36 + 48;
    result = v85(v40, 1, v35);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      swift_getObjectType();
      v42 = v95;
      sub_1000B4F90();
      v95 = v42;
      if (v42)
      {
        return (*(v36 + 8))(v40, v35);
      }

      v79[0] = *(v36 + 8);
      v79[1] = v36 + 8;
      (v79[0])(v40, v35);
      if (qword_100106A78 != -1)
      {
        goto LABEL_25;
      }

      while (1)
      {
        v43 = v92;
        v44 = sub_100036380(v92, qword_100107F40);
        v45 = v90;
        v46 = v91;
        v47 = *(v91 + 16);
        v99 = v44;
        v47(v90);
        v48 = v82;
        sub_100030C74(v97, v82, &qword_100106F88, &qword_1000CAE20);
        result = v85(v48, 1, v41);
        if (result == 1)
        {
          break;
        }

        sub_1000B4CF0(v49);
        sub_1000B54A0();
        v50 = v83;
        sub_1000B5460();
        (*(v46 + 8))(v45, v43);
        v92 = v41;
        (v79[0])(v48, v41);
        v51 = sub_1000B54A0();
        v52 = sub_1000B59E0();
        if (sub_1000B5AB0())
        {
          v53 = swift_slowAlloc();
          *v53 = 0;
          v54 = sub_1000B5470();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v51, v52, v54, "Create Archive", "", v53, 2u);
        }

        (*(v93 + 16))(v81, v50, v94);
        v55 = sub_1000B54F0();
        v56 = *(v55 + 48);
        v57 = *(v55 + 52);
        swift_allocObject();
        v91 = sub_1000B54E0();
        v41 = *(v84 + 16);
        if (!v41)
        {
          v58 = 0;
LABEL_15:
          if (qword_100106A70 != -1)
          {
            swift_once();
          }

          v65 = sub_1000B5530();
          sub_100036380(v65, qword_100107F28);
          v66 = sub_1000B5520();
          v67 = sub_1000B5910();
          v68 = os_log_type_enabled(v66, v67);
          v70 = v88;
          v69 = v89;
          v72 = v93;
          v71 = v94;
          v73 = v97;
          if (v68)
          {
            v74 = swift_slowAlloc();
            *v74 = 134217984;
            *(v74 + 4) = v58;
            _os_log_impl(&_mh_execute_header, v66, v67, "Exporting notes… {noteCount: %ld}", v74, 0xCu);
          }

          [v70 setTotalUnitCount:v58];
          v75 = v73;
          v76 = v80;
          sub_100030C74(v75, v80, &qword_100106F88, &qword_1000CAE20);
          result = v85(v76, 1, v92);
          if (result != 1)
          {
            v77 = v95;
            sub_100076354(v76, v84, v70);
            v78 = v83;
            (v79[0])(v76, v92);
            if (!v77)
            {
              sub_1000B58F0();
              *v69 = 1;
            }

            sub_1000795D8(v91, "Create Archive");

            return (*(v72 + 8))(v78, v71);
          }

          goto LABEL_28;
        }

        v58 = 0;
        v59 = v87 + 16;
        v99 = *(v87 + 16);
        v60 = v84 + ((*(v87 + 80) + 32) & ~*(v87 + 80));
        v98 = *(v87 + 72);
        v61 = (v87 + 8);
        while (1)
        {
          v62 = v59;
          v99(v10, v60, v7);
          v63 = sub_1000B5060();
          (*v61)(v10, v7);
          v64 = __OFADD__(v58, v63);
          v58 += v63;
          if (v64)
          {
            break;
          }

          v60 += v98;
          --v41;
          v59 = v62;
          if (!v41)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_25:
        swift_once();
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  return result;
}

uint64_t sub_100074F60(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, _BYTE *a5)
{
  v87 = a1;
  v81 = a4;
  v7 = *a2;
  v79 = a5;
  v80 = v7;
  v8 = sub_1000B54B0();
  v83 = *(v8 - 8);
  v84 = v8;
  v9 = *(v83 + 8);
  __chkstk_darwin(v8);
  v82 = v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000B5480();
  v85 = *(v11 - 8);
  v86 = v11;
  v12 = *(v85 + 64);
  v13 = __chkstk_darwin(v11);
  v15 = v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v71 - v16;
  v18 = sub_100030480(&qword_100106F88, &qword_1000CAE20);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v22 = v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v25 = v71 - v24;
  v26 = __chkstk_darwin(v23);
  v28 = v71 - v27;
  __chkstk_darwin(v26);
  v30 = v71 - v29;
  v31 = v88;
  result = sub_100075CC8(a3, v71 - v29);
  if (!v31)
  {
    v73 = v22;
    v74 = v25;
    v72 = v15;
    v88 = 0;
    v75 = v17;
    v76 = a3;
    v33 = sub_1000B4DB0();
    v34 = *(v33 - 8);
    (*(v34 + 56))(v30, 0, 1, v33);
    v35 = v87;
    sub_1000521D8(v30, v87, &qword_100106F88, &qword_1000CAE20);
    v36 = a2[11];
    v37 = a2[12];
    sub_100030C74(v35, v28, &qword_100106F88, &qword_1000CAE20);
    v77 = *(v34 + 48);
    v78 = v34 + 48;
    result = v77(v28, 1, v33);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      swift_getObjectType();
      v38 = v88;
      sub_1000B4F90();
      v88 = v38;
      if (v38)
      {
        return (*(v34 + 8))(v28, v33);
      }

      v39 = *(v34 + 8);
      v71[1] = v34 + 8;
      v39(v28, v33);
      if (qword_100106A78 != -1)
      {
        swift_once();
      }

      v71[0] = a2;
      v40 = v84;
      v41 = sub_100036380(v84, qword_100107F40);
      v42 = v82;
      v43 = v83;
      (*(v83 + 2))(v82, v41, v40);
      v44 = v74;
      sub_100030C74(v87, v74, &qword_100106F88, &qword_1000CAE20);
      result = v77(v44, 1, v33);
      if (result != 1)
      {
        sub_1000B4CF0(v45);
        sub_1000B54A0();
        v46 = v75;
        sub_1000B5460();
        (*(v43 + 1))(v42, v40);
        v83 = v39;
        v39(v44, v33);
        v47 = sub_1000B54A0();
        v48 = sub_1000B59E0();
        if (sub_1000B5AB0())
        {
          v49 = swift_slowAlloc();
          *v49 = 0;
          v50 = sub_1000B5470();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v47, v48, v50, "Create Archive", "", v49, 2u);
        }

        v84 = v33;

        (*(v85 + 16))(v72, v46, v86);
        v51 = sub_1000B54F0();
        v52 = *(v51 + 48);
        v53 = *(v51 + 52);
        swift_allocObject();
        v54 = sub_1000B54E0();
        v89 = 0;
        v90 = v76;
        __chkstk_darwin(v54);
        v55 = *(v80 + 88);
        v71[-2] = *(v80 + 80);
        v71[-1] = v55;
        swift_getAssociatedTypeWitness();
        swift_getAssociatedConformanceWitness();
        sub_1000B50E0();
        sub_1000B5810();
        swift_getWitnessTable();
        v56 = v88;
        sub_1000B5740();
        v57 = v91;
        if (qword_100106A70 != -1)
        {
          swift_once();
        }

        v58 = sub_1000B5530();
        sub_100036380(v58, qword_100107F28);
        v59 = sub_1000B5520();
        v60 = sub_1000B5910();
        v61 = os_log_type_enabled(v59, v60);
        v62 = v81;
        v63 = v87;
        if (v61)
        {
          v64 = swift_slowAlloc();
          *v64 = 134217984;
          *(v64 + 4) = v57;
          _os_log_impl(&_mh_execute_header, v59, v60, "Exporting notes… {noteCount: %ld}", v64, 0xCu);
        }

        [v62 setTotalUnitCount:v57];
        v65 = v63;
        v66 = v73;
        sub_100030C74(v65, v73, &qword_100106F88, &qword_1000CAE20);
        result = v77(v66, 1, v84);
        v67 = v86;
        if (result != 1)
        {
          sub_100077448(v66, v76, v62);
          v68 = (v85 + 8);
          v69 = v79;
          v70 = v75;
          if (v56)
          {
            v83(v66, v84);
            sub_1000795D8(v54, "Create Archive");

            return (*v68)(v70, v67);
          }

          else
          {
            v83(v66, v84);
            sub_1000B58F0();
            *v69 = 1;
            sub_1000795D8(v54, "Create Archive");

            return (*v68)(v70, v67);
          }
        }

LABEL_21:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  return result;
}

uint64_t sub_1000757FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a1;
  v51 = a2;
  v3 = sub_1000B4F00();
  v46 = *(v3 - 8);
  v47 = v3;
  v4 = *(v46 + 64);
  __chkstk_darwin(v3);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000B4DB0();
  v49 = *(v7 - 8);
  v50 = v7;
  v8 = *(v49 + 64);
  v9 = __chkstk_darwin(v7);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v44 - v13;
  v15 = __chkstk_darwin(v12);
  v45 = &v44 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v44 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v44 - v21;
  __chkstk_darwin(v20);
  v24 = &v44 - v23;
  v25 = *(v2 + 24);
  v26 = *(v2 + 96);
  v27 = *(v2 + 88);
  swift_getObjectType();
  if (v25 == 1)
  {
    v28 = v54;
    result = sub_1000B4FC0();
    if (!v28)
    {
      v54 = 0;
      sub_1000B4D10();
      v30 = *(v49 + 8);
      v31 = v19;
      v32 = v50;
      v30(v31, v50);
      sub_1000B4EF0();
      sub_1000B4EC0();
      (*(v46 + 8))(v6, v47);
      sub_1000B4D10();

      v30(v22, v32);
      sub_100071FD8(v48);
      v33 = sub_1000B55F0();

      v34 = [v33 ic_sanitizedFilenameString];

      sub_1000B5620();
      sub_1000B4D10();

      return (v30)(v24, v32);
    }
  }

  else
  {
    v35 = v54;
    result = sub_1000B4FC0();
    if (!v35)
    {
      sub_1000B4D10();
      v36 = v50;
      v37 = *(v49 + 8);
      v37(v11, v50);
      sub_1000B4EF0();
      sub_1000B4EC0();
      (*(v46 + 8))(v6, v47);
      v38 = v45;
      sub_1000B4D10();

      v37(v14, v36);
      sub_100071FD8(v48);
      v39 = sub_1000B55F0();
      v40 = [v39 ic_sanitizedFilenameString];

      v41 = sub_1000B5620();
      v43 = v42;

      v52 = v41;
      v53 = v43;
      v55._countAndFlagsBits = 46;
      v55._object = 0xE100000000000000;
      sub_1000B56E0(v55);
      v56._countAndFlagsBits = 0x6372617365746F6ELL;
      v56._object = 0xEC00000065766968;
      sub_1000B56E0(v56);

      sub_1000B4D10();

      return (v37)(v38, v36);
    }
  }

  return result;
}

uint64_t sub_100075CC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v53 = *v2;
  v54 = a1;
  v4 = sub_1000B4F00();
  v51 = *(v4 - 8);
  v52 = v4;
  v5 = *(v51 + 64);
  __chkstk_darwin(v4);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000B4DB0();
  v55 = *(v8 - 8);
  v56 = v8;
  v9 = *(v55 + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v47 - v14;
  v16 = __chkstk_darwin(v13);
  v50 = &v47 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = &v47 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = &v47 - v22;
  __chkstk_darwin(v21);
  v49 = &v47 - v24;
  v25 = *(v2 + 24);
  v26 = v2[12];
  v27 = v2[11];
  swift_getObjectType();
  if (v25 == 1)
  {
    result = sub_1000B4FC0();
    if (!v3)
    {
      v48 = 0;
      sub_1000B4D10();
      v29 = *(v55 + 8);
      v30 = v20;
      v31 = v56;
      v29(v30, v56);
      sub_1000B4EF0();
      sub_1000B4EC0();
      (*(v51 + 8))(v7, v52);
      v32 = v49;
      sub_1000B4D10();

      v29(v23, v31);
      sub_1000362AC(0, &qword_100108060, ICArchive_ptr);
      v34 = *(v53 + 80);
      v33 = *(v53 + 88);
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      static ICArchive.archiveTitle<A>(for:)(v54);
      v35 = sub_1000B55F0();

      v36 = [v35 ic_sanitizedFilenameString];

      sub_1000B5620();
      sub_1000B4D10();

      return (v29)(v32, v31);
    }
  }

  else
  {
    result = sub_1000B4FC0();
    if (!v3)
    {
      v48 = 0;
      sub_1000B4D10();
      v37 = v56;
      v38 = *(v55 + 8);
      v38(v12, v56);
      sub_1000B4EF0();
      sub_1000B4EC0();
      (*(v51 + 8))(v7, v52);
      v39 = v50;
      sub_1000B4D10();

      v38(v15, v37);
      sub_1000362AC(0, &qword_100108060, ICArchive_ptr);
      v41 = *(v53 + 80);
      v40 = *(v53 + 88);
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      static ICArchive.archiveTitle<A>(for:)(v54);
      v42 = sub_1000B55F0();
      v43 = [v42 ic_sanitizedFilenameString];

      v44 = sub_1000B5620();
      v46 = v45;

      v57 = v44;
      v58 = v46;
      v60._countAndFlagsBits = 46;
      v60._object = 0xE100000000000000;
      sub_1000B56E0(v60);
      v61._countAndFlagsBits = 0x6372617365746F6ELL;
      v61._object = 0xEC00000065766968;
      sub_1000B56E0(v61);

      sub_1000B4D10();

      return (v38)(v39, v37);
    }
  }

  return result;
}

uint64_t sub_10007629C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1000B50E0();
  result = sub_1000B5060();
  if (__OFADD__(v3, result))
  {
    __break(1u);
  }

  else
  {
    *a2 = v3 + result;
  }

  return result;
}

uint64_t sub_100076354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v129 = a3;
  v6 = sub_1000B4DB0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v119 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = type metadata accessor for ICArchiveModel();
  v11 = *(*(v124 - 8) + 64);
  __chkstk_darwin(v124);
  v125 = &v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_100030480(&qword_100108020, &qword_1000CCE20);
  v13 = *(v148 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v148);
  v147 = &v119 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v146 = &v119 - v17;
  v132 = sub_100030480(&qword_100106D00, &qword_1000CAA70);
  v137 = *(v132 - 8);
  v18 = *(v137 + 64);
  v19 = __chkstk_darwin(v132);
  v20 = __chkstk_darwin(v19);
  v135 = &v119 - v21;
  v22 = __chkstk_darwin(v20);
  v145 = &v119 - v23;
  __chkstk_darwin(v22);
  v159 = (&v119 - v25);
  if (*(v3 + 104))
  {
    goto LABEL_93;
  }

  v150 = v13;
  v121 = v7;
  v122 = v6;
  v130 = a1;
  *(v3 + 104) = 1;
  v26 = *(v3 + 16);
  v27 = *(a2 + 16);
  v28 = _swiftEmptyArrayStorage;
  v131 = v3;
  v127 = a2;
  v123 = v24;
  v120 = v10;
  v128 = v27;
  if (!v27)
  {
    goto LABEL_10;
  }

  *&v151 = _swiftEmptyArrayStorage;

  v29 = v27;
  sub_100043470(0, v27, 0);
  v28 = v151;
  v30 = a2 + ((*(v137 + 80) + 32) & ~*(v137 + 80));
  v31 = *(v137 + 72);
  v32 = v149;
  do
  {
    sub_1000886EC();
    if (v32)
    {
      v149 = v32;

LABEL_50:

LABEL_51:
      v75 = v131;
      goto LABEL_52;
    }

    *&v151 = v28;
    v34 = v28[2];
    v33 = v28[3];
    v6 = v34 + 1;
    if (v34 >= v33 >> 1)
    {
      sub_100043470((v33 > 1), v34 + 1, 1);
      v28 = v151;
    }

    v28[2] = v6;
    v35 = &v28[4 * v34];
    v36 = v155;
    *(v35 + 2) = v154;
    *(v35 + 3) = v36;
    v30 += v31;
    --v29;
  }

  while (v29);
  v149 = 0;

LABEL_10:
  v37 = v28[2];
  v136 = v26;
  if (v37)
  {
    v38 = (v28 + 4);
    v39 = _swiftEmptyArrayStorage;
    v6 = &qword_100106E30;
    while (1)
    {
      sub_100030C74(v38, &v157, &qword_100106E30, &unk_1000CAB60);
      v154 = v157;
      v155 = v158;
      if (*(&v158 + 1))
      {
        sub_100030480(&qword_100106CD8, &unk_1000CCE30);
        if (swift_dynamicCast())
        {
          if (*(&v152 + 1))
          {
            sub_10004589C(&v151, &v154);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v39 = sub_100033B3C(0, v39[2] + 1, 1, v39);
            }

            v41 = v39[2];
            v40 = v39[3];
            if (v41 >= v40 >> 1)
            {
              v39 = sub_100033B3C((v40 > 1), v41 + 1, 1, v39);
            }

            v39[2] = v41 + 1;
            sub_10004589C(&v154, &v39[5 * v41 + 4]);
            v6 = &qword_100106E30;
            goto LABEL_14;
          }
        }

        else
        {
          v153 = 0;
          v151 = 0u;
          v152 = 0u;
        }
      }

      else
      {
        sub_100036320(&v154, &qword_100106E30, &unk_1000CAB60);
        v151 = 0u;
        v152 = 0u;
        v153 = 0;
      }

      sub_100036320(&v151, &qword_100108028, &qword_1000CCE28);
LABEL_14:
      v38 += 32;
      if (!--v37)
      {

        goto LABEL_26;
      }
    }
  }

  v39 = _swiftEmptyArrayStorage;
LABEL_26:
  *&v151 = _swiftEmptyArrayStorage;
  v42 = v39[2];
  if (v42)
  {
    v6 = (v39 + 4);
    do
    {
      sub_100088704(v6, &v154);
      v43 = *(&v155 + 1);
      v44 = v156;
      sub_1000458B4(&v154, *(&v155 + 1));
      v45 = (*(v44 + 24))(v43, v44);
      sub_100035DA8(&v154);
      sub_100063534(v45);
      v6 += 40;
      --v42;
    }

    while (v42);
  }

  v126 = v151;
  v46 = _swiftEmptyArrayStorage;
  v47 = v132;
  v48 = v159;
  if (v128)
  {
    v143 = *(v137 + 16);
    v134 = (*(v137 + 80) + 32) & ~*(v137 + 80);
    v49 = v127 + v134;
    v50 = *(v137 + 72);
    v142 = enum case for ICObjectReferences.Types.folder<A>(_:);
    v141 = (v150 + 104);
    v140 = (v150 + 8);
    v133 = (v137 + 8);
    v144 = v137 + 16;
    v138 = (v137 + 32);
    v51 = v128;
    v139 = v50;
    do
    {
      v150 = v51;
      v159 = v46;
      v143(v48, v49, v47);
      v52 = v146;
      v53 = v47;
      sub_1000B5080();
      v54 = v147;
      v55 = v148;
      (*v141)(v147, v142, v148);
      sub_1000362AC(0, &qword_100108030, NSManagedObjectID_ptr);
      sub_100088768();
      v56 = sub_1000B5090();
      v57 = *v140;
      (*v140)(v54, v55);
      v57(v52, v55);
      if (v56)
      {
        v58 = *v138;
        (*v138)(v145, v48, v53);
        v46 = v159;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v154 = v46;
        if (isUniquelyReferenced_nonNull_native)
        {
          v47 = v53;
        }

        else
        {
          sub_100043430(0, v46[2] + 1, 1);
          v47 = v132;
          v46 = v154;
        }

        v61 = v46[2];
        v60 = v46[3];
        if (v61 >= v60 >> 1)
        {
          sub_100043430(v60 > 1, v61 + 1, 1);
          v47 = v132;
          v46 = v154;
        }

        v46[2] = v61 + 1;
        v62 = v46 + v134 + v61 * v139;
        v6 = v139;
        v58(v62, v145, v47);
      }

      else
      {
        (*v133)(v48, v53);
        v47 = v53;
        v46 = v159;
        v6 = v139;
      }

      v49 += v6;
      v51 = v150 - 1;
    }

    while (v150 != 1);
  }

  v63 = v46[2];
  if (!v63)
  {

    v66 = _swiftEmptyArrayStorage;
LABEL_53:
    v76 = v66[2];
    v75 = v131;
    if (!v76)
    {

      v78 = _swiftEmptyArrayStorage;
LABEL_69:
      v81 = v78[2];
      if (v81)
      {
        *&v151 = _swiftEmptyArrayStorage;
        sub_1000432C4(0, v81, 0);
        v82 = v151;
        v83 = (v78 + 4);
        do
        {
          sub_100088704(v83, &v154);
          v84 = *(&v155 + 1);
          v85 = v156;
          sub_1000458B4(&v154, *(&v155 + 1));
          v86 = (*(v85 + 8))(v84, v85);
          v88 = v87;
          sub_100035DA8(&v154);
          *&v151 = v82;
          v90 = v82[2];
          v89 = v82[3];
          if (v90 >= v89 >> 1)
          {
            sub_1000432C4((v89 > 1), v90 + 1, 1);
            v82 = v151;
          }

          v82[2] = v90 + 1;
          v91 = &v82[2 * v90];
          v91[4] = v86;
          v91[5] = v88;
          v83 += 40;
          --v81;
        }

        while (v81);

        v75 = v131;
      }

      else
      {

        v82 = _swiftEmptyArrayStorage;
      }

      if (*(v75 + 24) != 1)
      {
        v100 = *(v75 + 40);
        v101 = *(v75 + 48);
        v102 = *(v75 + 56);
        v103 = *(v75 + 64);
        v104 = *(v75 + 72);
        v159 = *(v75 + 32);
        sub_100088874(v159, v100);
        v150 = sub_100087CEC(v126);

        if (!v82[2])
        {

          v82 = 0;
        }

        v105 = v124;
        v106 = *(v124 + 24);
        v107 = v125;
        sub_1000B4E90();
        v108 = sub_1000B4EA0();
        (*(*(v108 - 8) + 56))(v107 + v106, 0, 1, v108);
        *v107 = 0;
        *(v107 + 8) = 1;
        v109 = (v107 + v105[7]);
        *v109 = v159;
        v109[1] = v100;
        v109[2] = v101;
        v109[3] = v102;
        v6 = v107;
        v109[4] = v103;
        v109[5] = v104;
        *(v107 + v105[8]) = v150;
        *(v107 + v105[9]) = v82;
        if (qword_100106A00 != -1)
        {
          goto LABEL_94;
        }

        goto LABEL_86;
      }

      goto LABEL_78;
    }

    v77 = (v66 + 4);
    v78 = _swiftEmptyArrayStorage;
    while (1)
    {
      sub_100030C74(v77, &v157, &qword_100106E30, &unk_1000CAB60);
      v154 = v157;
      v155 = v158;
      if (*(&v158 + 1))
      {
        sub_100030480(&qword_100106CD8, &unk_1000CCE30);
        if (swift_dynamicCast())
        {
          if (*(&v152 + 1))
          {
            sub_10004589C(&v151, &v154);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v78 = sub_100033B3C(0, v78[2] + 1, 1, v78);
            }

            v80 = v78[2];
            v79 = v78[3];
            if (v80 >= v79 >> 1)
            {
              v78 = sub_100033B3C((v79 > 1), v80 + 1, 1, v78);
            }

            v78[2] = v80 + 1;
            sub_10004589C(&v154, &v78[5 * v80 + 4]);
            v75 = v131;
            goto LABEL_57;
          }
        }

        else
        {
          v153 = 0;
          v151 = 0u;
          v152 = 0u;
        }
      }

      else
      {
        sub_100036320(&v154, &qword_100106E30, &unk_1000CAB60);
        v151 = 0u;
        v152 = 0u;
        v153 = 0;
      }

      sub_100036320(&v151, &qword_100108028, &qword_1000CCE28);
LABEL_57:
      v77 += 32;
      if (!--v76)
      {

        goto LABEL_69;
      }
    }
  }

  *&v151 = _swiftEmptyArrayStorage;

  sub_100043470(0, v63, 0);
  v64 = v132;
  v65 = 0;
  v66 = v151;
  v159 = (v46 + ((*(v137 + 80) + 32) & ~*(v137 + 80)));
  v150 = v137 + 16;
  v67 = (v137 + 8);
  while (v65 < v46[2])
  {
    v68 = v135;
    (*(v137 + 16))(v135, v159 + *(v137 + 72) * v65, v64);
    v69 = v149;
    sub_10008912C();
    v149 = v69;
    if (v69)
    {

      (*v67)(v68, v64);

      goto LABEL_50;
    }

    (*v67)(v68, v64);
    *&v151 = v66;
    v71 = v66[2];
    v70 = v66[3];
    v6 = v71 + 1;
    if (v71 >= v70 >> 1)
    {
      sub_100043470((v70 > 1), v71 + 1, 1);
      v64 = v132;
      v66 = v151;
    }

    ++v65;
    v66[2] = v6;
    v72 = &v66[4 * v71];
    v73 = v155;
    *(v72 + 2) = v154;
    *(v72 + 3) = v73;
    if (v63 == v65)
    {

      goto LABEL_53;
    }
  }

  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  swift_once();
LABEL_86:
  sub_1000886A4(&qword_100108040, type metadata accessor for ICArchiveModel);
  v110 = v149;
  v111 = sub_1000B4AF0();
  v149 = v110;
  v75 = v131;
  if (v110)
  {
    result = sub_100089014(v6, type metadata accessor for ICArchiveModel);
    goto LABEL_52;
  }

  v113 = v111;
  v114 = v112;
  v115 = *(v131 + 88);
  v116 = *(v131 + 96);
  swift_getObjectType();
  v117 = v120;
  sub_1000B4D10();
  v118 = v149;
  sub_1000B4F70();
  v149 = v118;
  if (v118)
  {
    sub_1000449D4(v113, v114);
    (*(v121 + 8))(v117, v122);
    result = sub_100089014(v125, type metadata accessor for ICArchiveModel);
    goto LABEL_51;
  }

  sub_1000449D4(v113, v114);
  (*(v121 + 8))(v117, v122);
  result = sub_100089014(v125, type metadata accessor for ICArchiveModel);
  v75 = v131;
LABEL_78:
  v92 = v128;
  if (v128)
  {
    v93 = *(v137 + 16);
    v94 = v127 + ((*(v137 + 80) + 32) & ~*(v137 + 80));
    v95 = *(v137 + 72);
    v96 = (v137 + 8);
    v97 = v132;
    v98 = v123;
    while (1)
    {
      v93(v98, v94, v97);
      v99 = v149;
      sub_100078328(v98, v130, v129);
      v149 = v99;
      if (v99)
      {
        break;
      }

      result = (*v96)(v98, v97);
      v94 += v95;
      if (!--v92)
      {
        goto LABEL_52;
      }
    }

    result = (*v96)(v98, v97);
  }

LABEL_52:
  *(v75 + 104) = 0;
  return result;
}