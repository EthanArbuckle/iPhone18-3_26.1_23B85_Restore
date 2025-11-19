void (*sub_10024B038(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = type metadata accessor for URL();
  v3[4] = v4;
  v5 = *(v4 - 8);
  v6 = v5;
  v3[5] = v5;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v5 + 64));
  }

  v8 = v7;
  v3[6] = v7;
  (*(v6 + 16))();
  v3[7] = sub_10024CB5C(v3, v8);
  return sub_10024B150;
}

void sub_10024B150(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  (*(*a1 + 56))(*a1, 0);
  (*(v4 + 8))(v2, v3);
  free(v2);

  free(v1);
}

void sub_10024B2FC()
{
  v0 = objc_allocWithZone(NSError);
  v1 = NSCocoaErrorDomain;
  v2 = [v0 initWithDomain:v1 code:3072 userInfo:0];

  qword_1006C1078 = v2;
}

uint64_t sub_10024B368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t), uint64_t a7, void (*a8)(void), void (*a9)(void))
{
  v99 = a8;
  v96 = a6;
  v85 = a5;
  v84 = a4;
  v89 = a3;
  v88 = a2;
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v94 = *(v12 - 8);
  __chkstk_darwin(v12);
  v92 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for DispatchQoS();
  v91 = *(v93 - 8);
  __chkstk_darwin(v93);
  v90 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for URL();
  v100 = *(v15 - 8);
  v16 = *(v100 + 64);
  v17 = __chkstk_darwin(v15);
  v87 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v86 = &v75 - v19;
  __chkstk_darwin(v18);
  v21 = &v75 - v20;
  v22 = OBJC_IVAR____TtC11MobileNotes29ICArchiveImportNoteFileParser_importStates;
  swift_beginAccess();
  v98 = v9;
  v23 = *&v9[v22];
  if (*(v23 + 16) && (v24 = sub_1002DF3A4(a1), (v25 & 1) != 0))
  {
    v101 = a1;
    v97 = a9;
    v26 = (*(v23 + 56) + 32 * v24);
    v28 = *v26;
    v27 = v26[1];
    v30 = v26[2];
    v29 = v26[3];
    swift_endAccess();
    v95 = a7;
    if (v28)
    {
      swift_errorRetain();
      swift_errorRetain();
      v31 = v29;

      v32 = v30;
      v33 = _convertErrorToNSError(_:)();
      if (qword_1006BC640 != -1)
      {
        swift_once();
      }

      v34 = qword_1006C1078;
      sub_1000054A4(0, &unk_1006C4560);
      v35 = v34;
      v36 = static NSObject.== infix(_:_:)();

      if ((v36 & 1) == 0)
      {
        v96(v28);
      }

      sub_10024BC74(v101);
      v99();
    }

    else
    {
      v81 = v12;
      v38 = v27;
      v39 = objc_allocWithZone(NSProgress);
      v76 = v29;
      v79 = v29;
      v80 = v38;

      v78 = v30;
      v77 = v30;
      v40 = [v39 init];
      v41 = v101;
      v83 = *(v100 + 16);
      v83(v21, v101, v15);
      v42 = v98;
      swift_beginAccess();
      v44 = sub_10024B038(aBlock);
      v45 = *(v43 + 8);
      v82 = v40;
      if (v45)
      {
        v46 = *(v43 + 16);
        *(v43 + 16) = v40;
        v47 = v40;

        v41 = v101;
      }

      (v44)(aBlock, 0);
      v48 = v86;
      swift_endAccess();
      v86 = *(v100 + 8);
      (v86)(v21, v15);
      v83(v48, v41, v15);
      swift_beginAccess();
      v50 = sub_10024B038(aBlock);
      if (*(v49 + 8))
      {
        v51 = v49;
        aBlock[6] = v82;
        v75 = v50;
        swift_getKeyPath();
        v52 = swift_allocObject();
        *(v52 + 16) = v84;
        *(v52 + 24) = v85;

        v53 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

        v54 = *(v51 + 24);
        *(v51 + 24) = v53;

        v75(aBlock, 0);
      }

      else
      {
        (v50)(aBlock, 0);
      }

      swift_endAccess();
      (v86)(v48, v15);
      v86 = *&v42[OBJC_IVAR____TtC11MobileNotes29ICArchiveImportNoteFileParser_queue];
      v55 = v87;
      v83(v87, v101, v15);
      v56 = v100;
      v57 = (*(v100 + 80) + 56) & ~*(v100 + 80);
      v58 = (v16 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
      v59 = (v58 + 23) & 0xFFFFFFFFFFFFFFF8;
      v60 = swift_allocObject();
      *(v60 + 2) = v42;
      *(v60 + 3) = 0;
      v61 = v78;
      *(v60 + 4) = v80;
      *(v60 + 5) = v61;
      *(v60 + 6) = v76;
      (*(v56 + 32))(&v60[v57], v55, v15);
      v62 = &v60[v58];
      v63 = v89;
      *v62 = v88;
      *(v62 + 1) = v63;
      v64 = &v60[v59];
      v65 = v95;
      *v64 = v96;
      *(v64 + 1) = v65;
      v66 = &v60[(v59 + 23) & 0xFFFFFFFFFFFFFFF8];
      v67 = v97;
      *v66 = v99;
      v66[1] = v67;
      aBlock[4] = sub_10024CA78;
      aBlock[5] = v60;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10028DCE8;
      aBlock[3] = &unk_100651BF0;
      v68 = _Block_copy(aBlock);

      v69 = v77;
      v70 = v79;
      v71 = v42;

      v72 = v90;
      static DispatchQoS.unspecified.getter();
      aBlock[7] = _swiftEmptyArrayStorage;
      sub_10024D15C(&qword_1006C1130, &type metadata accessor for DispatchWorkItemFlags);
      sub_10015DA04(&unk_1006C3F20);
      sub_10024D1A4(&qword_1006C1140, &unk_1006C3F20);
      v73 = v92;
      v74 = v81;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v68);

      (*(v94 + 8))(v73, v74);
      (*(v91 + 8))(v72, v93);
    }
  }

  else
  {
    result = swift_endAccess();
    __break(1u);
  }

  return result;
}

void sub_10024BC74(uint64_t a1)
{
  v22 = type metadata accessor for URL();
  v3 = *(v22 - 8);
  __chkstk_darwin(v22);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC11MobileNotes29ICArchiveImportNoteFileParser_importStates;
  swift_beginAccess();
  v7 = *(v1 + v6);
  if (*(v7 + 16) && (v8 = sub_1002DF3A4(a1), (v9 & 1) != 0))
  {
    v21 = a1;
    v10 = (*(v7 + 56) + 32 * v8);
    v11 = *v10;
    v12 = v10[1];
    v13 = v10[2];
    v14 = v10[3];
    swift_endAccess();
    v15 = v12;

    v16 = v11;
    swift_errorRetain();
    v17 = v14;
    v20 = v13;
    [v13 cancel];
    if (v14)
    {
      v18 = v17;
      dispatch thunk of NSKeyValueObservation.invalidate()();
    }

    v19 = v20;
    a1 = v21;
  }

  else
  {
    swift_endAccess();
    v16 = 0;
    v15 = 0;
    v19 = 0;
    v14 = 0;
  }

  (*(v3 + 16))(v5, a1, v22);
  swift_beginAccess();
  sub_100249630(0, 0, 0, 0, v5);
  swift_endAccess();
  sub_10024C98C(v16, v15, v19, v14);
}

void sub_10024BE5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void), uint64_t a8, uint64_t a9, uint64_t a10, void (*a11)(void))
{
  v14 = OBJC_IVAR____TtC11MobileNotes29ICArchiveImportNoteFileParser_importStates;
  swift_beginAccess();
  v15 = *(a1 + v14);
  if (!*(v15 + 16) || (v16 = sub_1002DF3A4(a6), (v17 & 1) == 0))
  {
LABEL_7:
    swift_endAccess();
    goto LABEL_8;
  }

  v18 = (*(v15 + 56) + 32 * v16);
  v19 = *v18;
  v20 = v18[1];
  v21 = v18[2];
  v22 = v18[3];

  v23 = v21;
  v24 = v22;
  v25 = v23;
  swift_errorRetain();
  swift_endAccess();
  sub_10024C98C(v19, v20, v21, v22);
  if (v21)
  {
    v26 = a7();
    v27 = [v26 managedObjectContext];
    if (v27)
    {
      v28 = v27;
      __chkstk_darwin(v27);
      NSManagedObjectContext.performAndWait<A>(_:)();
      v29 = [objc_opt_self() sharedGenerator];
      [v29 generatePreviewsIfNeeded];

      sub_10024BC74(a6);
      a11();

      return;
    }

    __break(1u);
    goto LABEL_7;
  }

LABEL_8:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10024C360(void *a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6)
{
  v12 = [a1 folder];
  if (v12)
  {
    v13 = v12;
    [a2 deleteObject:a1];
    v14 = type metadata accessor for ICArchiveImporter();
    v15 = (*(a3 + OBJC_IVAR____TtC11MobileNotes29ICArchiveImportNoteFileParser_archiveImporter) + OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_fileManager);
    v16 = *v15;
    v17 = v15[1];
    swift_unknownObjectRetain();
    v20[0] = ICInternalSettingsIsAlexandriaDemoModeEnabled();
    v20[1] = ICInternalSettingsIsAlexandriaDemoModeEnabled();
    v22 = 0;
    v23 = 0;
    v21 = 0;
    v24 = 2;
    ObjectType = swift_getObjectType();
    v19 = sub_1002A9CB8(a2, v20, v16, 0, 0, v14, ObjectType, v17);
    ICArchiveImporter.importObjects(_:fromArchiveAt:into:progress:)(a4, a5, v13, a6);
  }

  else
  {
    __break(1u);
  }
}

char *sub_10024C4A8()
{
  v1 = v0;
  v50 = type metadata accessor for URL();
  v2 = *(v50 - 8);
  __chkstk_darwin(v50);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC11MobileNotes29ICArchiveImportNoteFileParser_importStates;
  swift_beginAccess();
  v6 = *&v0[v5];
  v7 = v6 + 64;
  v8 = 1 << *(v6 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v6 + 64);
  v11 = (v8 + 63) >> 6;
  v42 = v2 + 16;
  v43 = v6;
  v45 = (v2 + 8);
  swift_bridgeObjectRetain_n();
  result = v0;
  v37 = result;
  v38 = v7;
  v13 = 0;
  v40 = v4;
  v41 = v2;
  v46 = v5;
  while (v10)
  {
LABEL_11:
    v19 = *(v43 + 48);
    v44 = *(v2 + 72);
    (*(v2 + 16))(v4, v19 + v44 * (__clz(__rbit64(v10)) | (v13 << 6)), v50);
    swift_beginAccess();
    v20 = *&v1[v5];
    if (*(v20 + 16) && (v21 = sub_1002DF3A4(v4), (v22 & 1) != 0))
    {
      v23 = (*(v20 + 56) + 32 * v21);
      v24 = *v23;
      v25 = v23[1];
      v26 = v23[2];
      v17 = v23[3];
      swift_endAccess();
      v48 = v25;

      v49 = v24;
      swift_errorRetain();
      v27 = v17;
      v47 = v26;
      v28 = v26;
      [v28 cancel];
      if (v17)
      {
        v29 = v27;
        dispatch thunk of NSKeyValueObservation.invalidate()();
      }

      v4 = v40;
      v2 = v41;
    }

    else
    {
      swift_endAccess();
      v48 = 0;
      v49 = 0;
      v47 = 0;
      v17 = 0;
    }

    swift_beginAccess();
    v30 = sub_1002DF3A4(v4);
    if (v31)
    {
      v32 = v30;
      v39 = v17;
      v33 = v46;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = *&v1[v33];
      v51 = v35;
      v36 = v1;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1002E828C();
        v35 = v51;
      }

      (*v45)((*(v35 + 48) + v32 * v44), v50);
      v14 = *(v35 + 56) + 32 * v32;
      v16 = *(v14 + 16);
      v15 = *(v14 + 24);

      sub_100477A44(v32, v35);
      *&v36[v33] = v35;
      v1 = v36;
      v4 = v40;
      v2 = v41;
      v7 = v38;
      v17 = v39;
    }

    v10 &= v10 - 1;
    swift_endAccess();
    sub_10024C98C(v49, v48, v47, v17);
    result = (*v45)(v4, v50);
    v5 = v46;
  }

  while (1)
  {
    v18 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v18 >= v11)
    {
    }

    v10 = *(v7 + 8 * v18);
    ++v13;
    if (v10)
    {
      v13 = v18;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10024C8F4(uint64_t a1, int a2)
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

uint64_t sub_10024C93C(uint64_t result, int a2, int a3)
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

void sub_10024C98C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (a2)
  {
  }
}

void sub_10024C9E8()
{
  v1 = *(v0 + 16);
  v2 = _convertErrorToNSError(_:)();
  (*(v1 + 16))(v1, v2);
}

void sub_10024CA78()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_10024BE5C(v0[2], v0[3], v0[4], v0[5], v0[6], v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + ((v3 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v3 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((((v3 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

void (*sub_10024CB5C(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x68uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = type metadata accessor for URL();
  v5[8] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[9] = v7;
  if (&_swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(*(v7 + 64));
  }

  v10 = v9;
  v5[10] = v9;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v8 + 16))(v10, a2, v6);
  v5[11] = sub_10024D038(v5);
  v5[12] = sub_10024CD30(v5 + 4, v10, isUniquelyReferenced_nonNull_native);
  return sub_10024CC98;
}

void sub_10024CC98(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 88);
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 64);
  (*(*a1 + 96))();
  (*(v4 + 8))(v3, v5);
  v2(v1, 0);
  free(v3);

  free(v1);
}

void (*sub_10024CD30(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x58uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 32) = a2;
  *(v8 + 40) = v3;
  v10 = type metadata accessor for URL();
  *(v9 + 48) = v10;
  v11 = *(v10 - 8);
  *(v9 + 56) = v11;
  if (&_swift_coroFrameAlloc)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(*(v11 + 64));
  }

  *(v9 + 64) = v12;
  v13 = *v3;
  v14 = sub_1002DF3A4(a2);
  *(v9 + 80) = v15 & 1;
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_19;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      v22 = v14;
      sub_1002E828C();
      v14 = v22;
      goto LABEL_14;
    }

    sub_1002E2840(v19, a3 & 1);
    v14 = sub_1002DF3A4(a2);
    if ((v20 & 1) == (v23 & 1))
    {
      goto LABEL_14;
    }

LABEL_19:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_14:
  *(v9 + 72) = v14;
  if (v20)
  {
    v24 = *(*v4 + 56) + 32 * v14;
    v25 = *v24;
    v26 = *(v24 + 8);
    v27 = *(v24 + 16);
  }

  else
  {
    v25 = 0;
    v26 = 0;
    v27 = 0uLL;
  }

  *v9 = v25;
  *(v9 + 8) = v26;
  *(v9 + 16) = v27;
  return sub_10024CEF4;
}

void sub_10024CEF4(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = (*a1)[1];
  v4 = (*a1)[2];
  v5 = (*a1)[3];
  if (v3)
  {
    v6 = *v1[5];
    v7 = v1[9];
    if ((*a1)[10])
    {
      v8 = (v6[7] + 32 * v7);
      *v8 = v2;
      v8[1] = v3;
      v8[2] = v4;
      v8[3] = v5;
    }

    else
    {
      v11 = v1[8];
      (*(v1[7] + 16))(v11, v1[4], v1[6]);
      sub_1002E77EC(v7, v11, v2, v3, v4, v5, v6);
    }
  }

  else if ((*a1)[10])
  {
    v9 = v1[9];
    v10 = *v1[5];
    (*(v1[7] + 8))(*(v10 + 48) + *(v1[7] + 72) * v9, v1[6]);
    sub_100477A44(v9, v10);
  }

  v12 = v1[8];
  v13 = *v1;
  v14 = v1[1];
  v15 = v1[2];
  v16 = v1[3];
  sub_10024D06C(v2, v3, v4, v5);
  sub_10024C98C(v13, v14, v15, v16);
  free(v12);

  free(v1);
}

uint64_t (*sub_10024D038(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_10024D060;
}

void sub_10024D06C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (a2)
  {
    swift_errorRetain();
    v5 = a4;

    v6 = a3;
  }
}

uint64_t sub_10024D0C8()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = *(v4 + 8);

  return sub_10024AA5C(v3, v0 + v2, v5, v6);
}

uint64_t sub_10024D15C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10024D1A4(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10017992C(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10024D1F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FastSyncPresenceController.EditorDebounceState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s3TagVMa()
{
  result = qword_1006C11C8;
  if (!qword_1006C11C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10024D2D8()
{
  sub_10001E5B8();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_10024D34C(void *a1)
{
  v3 = sub_10015DA04(&qword_1006C1228);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10017CC60(a1, a1[3]);
  sub_10024E300();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  type metadata accessor for Date();
  sub_10024E6E0(&qword_1006C1230, &type metadata accessor for Date);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v1)
  {
    _s3TagVMa();
    v8[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

Swift::Int sub_10024D508()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10015DA04(&unk_1006C1710);
  __chkstk_darwin(v6 - 8);
  v8 = &v10 - v7;
  Hasher.init(_seed:)();
  sub_100239F98(v1, v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    Hasher._combine(_:)(1u);
    sub_10024E6E0(&qword_1006C1238, &type metadata accessor for Date);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v5, v2);
  }

  _s3TagVMa();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10024D704@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = sub_10015DA04(&unk_1006C1710);
  __chkstk_darwin(v4 - 8);
  v23 = &v20 - v5;
  v6 = sub_10015DA04(&qword_1006C1210);
  v21 = *(v6 - 8);
  v22 = v6;
  __chkstk_darwin(v6);
  v8 = &v20 - v7;
  v9 = _s3TagVMa();
  __chkstk_darwin(v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Date();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_10017CC60(a1, a1[3]);
  sub_10024E300();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100009F60(a1);
    return sub_1000073B4(v11, &unk_1006C1710);
  }

  else
  {
    v13 = v21;
    v25 = 0;
    sub_10024E6E0(&qword_1006C1220, &type metadata accessor for Date);
    v14 = v22;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_10023A078(v23, v11);
    v24 = 1;
    v15 = KeyedDecodingContainer.decode(_:forKey:)();
    v17 = v16;
    (*(v13 + 8))(v8, v14);
    v18 = &v11[*(v9 + 20)];
    *v18 = v15;
    v18[1] = v17;
    sub_1001CDB04(v11, v20);
    sub_100009F60(a1);
    return sub_10024E354(v11);
  }
}

uint64_t sub_10024DA14()
{
  if (*v0)
  {
    return 1954047348;
  }

  else
  {
    return 0x4164657461657263;
  }
}

uint64_t sub_10024DA4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4164657461657263 && a2 == 0xE900000000000074;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000)
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

uint64_t sub_10024DB30(uint64_t a1)
{
  v2 = sub_10024E300();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10024DB6C(uint64_t a1)
{
  v2 = sub_10024E300();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10024DBDC()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10015DA04(&unk_1006C1710);
  __chkstk_darwin(v6 - 8);
  v8 = &v10 - v7;
  sub_100239F98(v1, &v10 - v7);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    Hasher._combine(_:)(1u);
    sub_10024E6E0(&qword_1006C1238, &type metadata accessor for Date);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v5, v2);
  }

  return String.hash(into:)();
}

Swift::Int sub_10024DDC8()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10015DA04(&unk_1006C1710);
  __chkstk_darwin(v6 - 8);
  v8 = &v10 - v7;
  Hasher.init(_seed:)();
  sub_100239F98(v1, v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    Hasher._combine(_:)(1u);
    sub_10024E6E0(&qword_1006C1238, &type metadata accessor for Date);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v5, v2);
  }

  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10024E060()
{
  v0 = _s3TagVMa();
  sub_100025918(v0, qword_1006EF440);
  v1 = sub_10002597C(v0, qword_1006EF440);
  v2 = type metadata accessor for Date();
  result = (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v4 = (v1 + *(v0 + 20));
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  return result;
}

uint64_t sub_10024E0F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_1006BC648 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v3 = sub_10002597C(a1, qword_1006EF440);

  return sub_1001CDB04(v3, a2);
}

uint64_t sub_10024E174@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 - 8);
  __chkstk_darwin(a1);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Date();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = &v10[*(a3 + 20)];
  *v12 = a1;
  *(v12 + 1) = a2;
  sub_10024E29C(v10, a4);
  return (*(v8 + 56))(a4, 0, 1, a3);
}

uint64_t sub_10024E29C(uint64_t a1, uint64_t a2)
{
  v4 = _s3TagVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10024E300()
{
  result = qword_1006C1218;
  if (!qword_1006C1218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1218);
  }

  return result;
}

uint64_t sub_10024E354(uint64_t a1)
{
  v2 = _s3TagVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10024E3B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10015DA04(&unk_1006C1710);
  __chkstk_darwin(v8 - 8);
  v10 = &v25 - v9;
  v11 = sub_10015DA04(&qword_1006C1240);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v25 - v13;
  v15 = *(v12 + 56);
  sub_100239F98(a1, &v25 - v13);
  sub_100239F98(a2, &v14[v15]);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_100239F98(v14, v10);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_10024E6E0(&qword_1006C1720, &type metadata accessor for Date);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1000073B4(v14, &unk_1006C1710);
      if (v18)
      {
        goto LABEL_9;
      }

LABEL_7:
      v17 = 0;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
LABEL_6:
    sub_1000073B4(v14, &qword_1006C1240);
    goto LABEL_7;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1000073B4(v14, &unk_1006C1710);
LABEL_9:
  v20 = *(_s3TagVMa() + 20);
  v21 = *(a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  if (v21 == *v23 && v22 == v23[1])
  {
    v17 = 1;
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v17 & 1;
}

uint64_t sub_10024E6E0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10024E73C()
{
  result = qword_1006C1248;
  if (!qword_1006C1248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1248);
  }

  return result;
}

unint64_t sub_10024E794()
{
  result = qword_1006C1250;
  if (!qword_1006C1250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1250);
  }

  return result;
}

unint64_t sub_10024E7EC()
{
  result = qword_1006C1258;
  if (!qword_1006C1258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1258);
  }

  return result;
}

id sub_10024E938(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC11MobileNotes22FolderComposerJoinCell____lazy_storage___buttonHorizontalMargin];
  *v3 = 0;
  v3[8] = 1;
  *&v1[OBJC_IVAR____TtC11MobileNotes22FolderComposerJoinCell____lazy_storage___textView] = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for FolderComposerJoinCell();
  v4 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);
  if (v4)
  {
    sub_1000054A4(0, &qword_1006BDAB0);
    v5 = v4;
    static UITraitCollection.traitsAffectingSizeAndColor.getter();
    UIView.registerForTraitChanges(_:action:)();

    swift_unknownObjectRelease();
  }

  else
  {
  }

  return v4;
}

uint64_t sub_10024EA44()
{
  v1 = v0;
  v2 = type metadata accessor for UIListContentConfiguration();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UIListContentConfiguration.cell()();
  UIListContentConfiguration.directionalLayoutMargins.getter();
  v7 = v6;
  [v0 layoutMargins];
  v9 = v8;
  v10 = sub_10024F04C();
  v11 = [v10 superview];

  if (v11)
  {
  }

  else
  {
    if (v7 <= v9)
    {
      v7 = v9;
    }

    v12 = [v1 contentView];
    v13 = OBJC_IVAR____TtC11MobileNotes22FolderComposerJoinCell____lazy_storage___textView;
    [v12 addSubview:*&v1[OBJC_IVAR____TtC11MobileNotes22FolderComposerJoinCell____lazy_storage___textView]];

    [*&v1[v13] ic_addAnchorsToFillSuperviewWithHorizontalPadding:1 verticalPadding:v7 usesSafeAreaLayoutGuide:8.0];
  }

  v14 = objc_opt_self();
  v15 = swift_allocObject();
  *(v15 + 16) = v1;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_10024F428;
  *(v16 + 24) = v15;
  aBlock[4] = sub_10000EFBC;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000EAF8;
  aBlock[3] = &unk_100651D98;
  v17 = _Block_copy(aBlock);
  v18 = v1;

  [v14 performWithoutAnimation:v17];
  _Block_release(v17);
  (*(v3 + 8))(v5, v2);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_10024ED08(void *a1)
{
  v2 = sub_10024F04C();
  (*((swift_isaMask & *a1) + 0x80))();
  sub_10015DA04(&unk_1006C8190);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100535E30;
  *(inited + 32) = NSFontAttributeName;
  v4 = objc_opt_self();
  v5 = NSFontAttributeName;
  v6 = [v4 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  v7 = sub_1000054A4(0, &unk_1006C95C0);
  *(inited + 40) = v6;
  *(inited + 64) = v7;
  *(inited + 72) = NSForegroundColorAttributeName;
  v8 = objc_opt_self();
  v9 = NSForegroundColorAttributeName;
  v10 = [v8 labelColor];
  *(inited + 104) = sub_1000054A4(0, &qword_1006BDAC0);
  *(inited + 80) = v10;
  sub_1001901EC(inited);
  swift_setDeallocating();
  sub_10015DA04(&qword_1006C81A0);
  swift_arrayDestroy();
  v11 = objc_allocWithZone(NSAttributedString);
  v12 = String._bridgeToObjectiveC()();

  type metadata accessor for Key(0);
  sub_1001D8FD8();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v14 = [v11 initWithString:v12 attributes:isa];

  [v2 setAttributedText:v14];
}

id sub_10024F04C()
{
  v1 = OBJC_IVAR____TtC11MobileNotes22FolderComposerJoinCell____lazy_storage___textView;
  v2 = *(v0 + OBJC_IVAR____TtC11MobileNotes22FolderComposerJoinCell____lazy_storage___textView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MobileNotes22FolderComposerJoinCell____lazy_storage___textView);
  }

  else
  {
    v4 = (*((swift_isaMask & *v0) + 0x78))();
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
    v8 = objc_opt_self();
    v9 = [v8 labelColor];
    v10 = type metadata accessor for InlineMenuButtonTextView();
    v11 = objc_allocWithZone(v10);
    v12 = OBJC_IVAR____TtC11MobileNotes24InlineMenuButtonTextView_menu;
    *&v11[OBJC_IVAR____TtC11MobileNotes24InlineMenuButtonTextView_menu] = 0;
    v11[OBJC_IVAR____TtC11MobileNotes24InlineMenuButtonTextView_preservesMenuLineHeight] = 0;
    v13 = &v11[OBJC_IVAR____TtC11MobileNotes24InlineMenuButtonTextView_fontSymbolicTraits];
    *v13 = 0;
    v13[4] = 1;
    *&v11[OBJC_IVAR____TtC11MobileNotes24InlineMenuButtonTextView____lazy_storage___menuAttachment] = 0;
    *&v11[v12] = v4;
    v14 = &v11[OBJC_IVAR____TtC11MobileNotes24InlineMenuButtonTextView_menuReplacementSubstring];
    *v14 = v5;
    v14[1] = v7;
    *&v11[OBJC_IVAR____TtC11MobileNotes24InlineMenuButtonTextView_textStyle] = UIFontTextStyleSubheadline;
    *v13 = 0;
    v13[4] = 1;
    *&v11[OBJC_IVAR____TtC11MobileNotes24InlineMenuButtonTextView_foregroundColor] = v9;
    v27.receiver = v11;
    v27.super_class = v10;
    v15 = v4;
    v16 = UIFontTextStyleSubheadline;
    v17 = v9;
    v18 = objc_msgSendSuper2(&v27, "initWithFrame:textContainer:", 0, 0.0, 0.0, 0.0, 0.0);
    [v18 setTranslatesAutoresizingMaskIntoConstraints:{0, v27.receiver, v27.super_class}];
    [v18 setEditable:0];
    [v18 setSelectable:0];
    [v18 setScrollEnabled:0];
    [v18 setShowsHorizontalScrollIndicator:0];
    [v18 setShowsVerticalScrollIndicator:0];
    [v18 setAdjustsFontForContentSizeCategory:0];
    [v18 setInsetsLayoutMarginsFromSafeArea:0];
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    [v18 setContentInset:{UIEdgeInsetsZero.top, left, bottom, right}];
    [v18 setContentInsetAdjustmentBehavior:2];
    v22 = [v18 textContainer];
    [v22 setLineFragmentPadding:0.0];

    v23 = [v8 clearColor];
    [v18 setBackgroundColor:v23];

    [v18 setTextContainerInset:{UIEdgeInsetsZero.top, left, bottom, right}];
    v24 = *(v0 + v1);
    *(v0 + v1) = v18;
    v3 = v18;

    v2 = 0;
  }

  v25 = v2;
  return v3;
}

id sub_10024F3C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FolderComposerJoinCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10024F540()
{
  result = qword_1006C12C0;
  if (!qword_1006C12C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006C12C0);
  }

  return result;
}

id sub_10024F58C()
{
  v1 = type metadata accessor for TagEntity();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v37 - v6;
  IntentParameter.wrappedValue.getter();
  v8 = v43;
  v43 = _swiftEmptyArrayStorage;
  v9 = v8[2];
  v39 = v0;
  if (v9)
  {
    v37[0] = v8;
    v37[1] = v1;
    v41 = *(v1 + 20);
    v10 = v8 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v38 = v2;
    v11 = v2[9];
    v40 = _swiftEmptyArrayStorage;
    do
    {
      sub_10018F484(v10, v7);
      AppDependency.wrappedValue.getter();
      v12 = v42;
      URL._bridgeToObjectiveC()(v41);
      v14 = v13;
      v15 = [v12 managedObjectIDForURIRepresentation:{v13, v37[0]}];

      sub_10018F4E8(v7);
      if (v15)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v40 = v43;
      }

      v10 += v11;
      --v9;
    }

    while (v9);

    v16 = v40;
    v2 = v38;
  }

  else
  {

    v16 = _swiftEmptyArrayStorage;
  }

  v17 = sub_10026F190(v16);

  IntentParameter.wrappedValue.getter();
  v18 = v43;
  v43 = _swiftEmptyArrayStorage;
  v19 = v18[2];
  if (v19)
  {
    v40 = v17;
    v20 = *(v2 + 80);
    v38 = v18;
    v21 = v18 + ((v20 + 32) & ~v20);
    v22 = v2[9];
    v41 = _swiftEmptyArrayStorage;
    do
    {
      sub_10018F484(v21, v5);
      AppDependency.wrappedValue.getter();
      v23 = v42;
      URL._bridgeToObjectiveC()(v24);
      v26 = v25;
      v27 = [v23 managedObjectIDForURIRepresentation:v25];

      sub_10018F4E8(v5);
      if (v27)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v41 = v43;
      }

      v21 += v22;
      --v19;
    }

    while (v19);

    v28 = v41;
  }

  else
  {

    v28 = _swiftEmptyArrayStorage;
  }

  sub_10026F190(v28);

  AppDependency.wrappedValue.getter();
  v29 = v43;
  v30 = [v43 modernManagedObjectContext];

  IntentParameter.wrappedValue.getter();
  if (v43)
  {
    v31 = 1;
  }

  else
  {
    v31 = 2;
  }

  v32 = objc_allocWithZone(ICTagSelection);
  sub_10025239C();
  sub_1002523E8(&qword_1006C63A0, sub_10025239C);
  isa = Set._bridgeToObjectiveC()().super.isa;

  v34 = Set._bridgeToObjectiveC()().super.isa;

  v35 = [v32 initWithManagedObjectContext:v30 includedObjectIDs:isa excludedObjectIDs:v34 tagOperator:v31];

  return v35;
}

double ChangeTagSelectionIntent.init()@<D0>(uint64_t a1@<X8>)
{
  sub_10025150C(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_10024FB9C()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  sub_100025918(v6, static ChangeTagSelectionIntent.title);
  sub_10002597C(v6, static ChangeTagSelectionIntent.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t static ChangeTagSelectionIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v2 - 8);
  v4 = &v15[-v3];
  v5 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for Locale();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for LocalizedStringResource();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v6 + 104))(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v12 + 56))(v4, 1, 1, v11);
  IntentDescription.init(_:categoryName:searchKeywords:)();
  v13 = type metadata accessor for IntentDescription();
  return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
}

uint64_t static ChangeTagSelectionIntent.parameterSummary.getter()
{
  v0 = sub_10015DA04(&qword_1006C12C8);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10015DA04(&qword_1006C12D0);
  __chkstk_darwin(v1);
  sub_1000215EC();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._countAndFlagsBits = 0x207463656C6553;
  v2._object = 0xE700000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_10015DA04(&qword_1006C12D8);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 0x6964756C636E6920;
  v3._object = 0xEB0000000020676ELL;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  swift_getKeyPath();
  sub_10015DA04(&qword_1006C12E0);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v4._countAndFlagsBits = 0x63786520646E6120;
  v4._object = 0xEF20676E6964756CLL;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  swift_getKeyPath();
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v5);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t (*ChangeTagSelectionIntent.includedTags.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_10017E594;
}

uint64_t (*ChangeTagSelectionIntent.excludedTags.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_10017D9DC;
}

uint64_t (*ChangeTagSelectionIntent.selectionOperator.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_10017E594;
}

uint64_t TagSelectionOperatorEnum.tagSelectionOperator.getter(char a1)
{
  if (a1)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t (*ChangeTagSelectionIntent.loggingConfiguration.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = AppDependency.wrappedValue.modify();
  return sub_10017E594;
}

uint64_t sub_100250560()
{
  v0 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = type metadata accessor for LocalizedStringResource.BundleDescription();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for LocalizedStringResource();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = type metadata accessor for TypeDisplayRepresentation();
  sub_100025918(v10, static TagSelectionOperatorEnum.typeDisplayRepresentation);
  sub_10002597C(v10, static TagSelectionOperatorEnum.typeDisplayRepresentation);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v9 + 56))(v2, 1, 1, v8);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t sub_100250874(void *a1, uint64_t (*a2)(void), uint64_t a3)
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

  return sub_10002597C(v4, a3);
}

uint64_t sub_10025090C@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
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
  v8 = sub_10002597C(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_1002509B0()
{
  v0 = sub_10015DA04(&unk_1006BEA80);
  __chkstk_darwin(v0 - 8);
  v42 = v29 - v1;
  v2 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v2 - 8);
  v41 = v29 - v3;
  v37 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v4 = *(v37 - 8);
  __chkstk_darwin(v37);
  v40 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v9 - 8);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LocalizedStringResource();
  v30 = v12;
  v44 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_10015DA04(&qword_1006C1368);
  v13 = sub_10015DA04(&qword_1006BDD98);
  v43 = v13;
  v14 = *(v13 - 8);
  v39 = *(v14 + 72);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v16 = swift_allocObject();
  v33 = v16;
  *(v16 + 16) = xmmword_100535E30;
  v34 = *(v13 + 48);
  *(v16 + v15) = 0;
  v17 = v16 + v15;
  v29[0] = v11;
  String.LocalizationValue.init(stringLiteral:)();
  v29[1] = v8;
  static Locale.current.getter();
  v35 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v18 = *(v4 + 104);
  v36 = v4 + 104;
  v38 = v18;
  v19 = v40;
  v18(v40);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v20 = *(v44 + 56);
  v44 += 56;
  v31 = v20;
  v21 = v41;
  v20(v41, 1, 1, v12);
  v22 = type metadata accessor for DisplayRepresentation.Image();
  v23 = *(*(v22 - 8) + 56);
  v24 = v42;
  v23(v42, 1, 1, v22);
  v32 = v17;
  v25 = v24;
  DisplayRepresentation.init(title:subtitle:image:)();
  v26 = (v17 + v39);
  v39 = *(v43 + 48);
  *v26 = 1;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v38(v19, v35, v37);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v31(v21, 1, 1, v30);
  v23(v25, 1, 1, v22);
  DisplayRepresentation.init(title:subtitle:image:)();
  v27 = sub_1001907EC(v33);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  static TagSelectionOperatorEnum.caseDisplayRepresentations = v27;
  return result;
}

uint64_t *TagSelectionOperatorEnum.caseDisplayRepresentations.unsafeMutableAddressor()
{
  if (qword_1006BC660 != -1)
  {
    swift_once();
  }

  return &static TagSelectionOperatorEnum.caseDisplayRepresentations;
}

uint64_t static TagSelectionOperatorEnum.caseDisplayRepresentations.getter()
{
  if (qword_1006BC660 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static TagSelectionOperatorEnum.caseDisplayRepresentations.setter(uint64_t a1)
{
  if (qword_1006BC660 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static TagSelectionOperatorEnum.caseDisplayRepresentations = a1;
}

uint64_t (*static TagSelectionOperatorEnum.caseDisplayRepresentations.modify())()
{
  if (qword_1006BC660 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

MobileNotes::TagSelectionOperatorEnum_optional __swiftcall TagSelectionOperatorEnum.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10064C288, v2);

  if (v3 == 1)
  {
    v4.value = MobileNotes_TagSelectionOperatorEnum_all;
  }

  else
  {
    v4.value = MobileNotes_TagSelectionOperatorEnum_unknownDefault;
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

uint64_t TagSelectionOperatorEnum.rawValue.getter(char a1)
{
  if (a1)
  {
    return 7105633;
  }

  else
  {
    return 7958113;
  }
}

uint64_t sub_10025116C(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 7105633;
  }

  else
  {
    v2 = 7958113;
  }

  if (*a2)
  {
    v3 = 7105633;
  }

  else
  {
    v3 = 7958113;
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

Swift::Int sub_1002511E4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10025124C()
{
  String.hash(into:)();
}

Swift::Int sub_100251298()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002512FC@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10064C288, *a1);

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

void sub_10025135C(uint64_t *a1@<X8>)
{
  v2 = 7958113;
  if (*v1)
  {
    v2 = 7105633;
  }

  *a1 = v2;
  a1[1] = 0xE300000000000000;
}

uint64_t sub_1002513BC@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
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
  v8 = sub_10002597C(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_100251464(uint64_t a1)
{
  v2 = sub_100179974();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_1002514B0(uint64_t a1)
{
  v2 = sub_10025218C();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_10025150C@<X0>(uint64_t *a1@<X8>)
{
  v42 = a1;
  v1 = type metadata accessor for InputConnectionBehavior();
  v2 = *(v1 - 8);
  v59 = v1;
  v60 = v2;
  __chkstk_darwin(v1);
  v58 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10015DA04(&unk_1006BE0D0);
  v5 = __chkstk_darwin(v4 - 8);
  v57 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v56 = &v40 - v7;
  v8 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v8 - 8);
  v49 = &v40 - v9;
  v10 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Locale();
  __chkstk_darwin(v14 - 8);
  v15 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v15 - 8);
  v16 = type metadata accessor for LocalizedStringResource();
  v54 = v16;
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v52 = sub_10015DA04(&qword_1006BCB00);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v18 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v19 = *(v11 + 104);
  v43 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v45 = v10;
  v19(v13, enum case for LocalizedStringResource.BundleDescription.main(_:), v10);
  v44 = v19;
  v46 = v11 + 104;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v19(v13, v18, v10);
  v20 = v49;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v21 = *(v17 + 56);
  v53 = v17 + 56;
  v55 = v21;
  v21(v20, 0, 1, v16);
  v63 = _swiftEmptyArrayStorage;
  v22 = type metadata accessor for IntentDialog();
  v23 = *(v22 - 8);
  v24 = *(v23 + 56);
  v47 = v24;
  v48 = v23 + 56;
  v24(v56, 1, 1, v22);
  v24(v57, 1, 1, v22);
  v50 = enum case for InputConnectionBehavior.default(_:);
  v25 = *(v60 + 104);
  v60 += 104;
  v51 = v25;
  v25(v58);
  v40 = sub_1002523E8(&qword_1006BCB08, type metadata accessor for TagEntity);
  v41 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v26 = v43;
  v27 = v45;
  v28 = v44;
  v44(v13, v43, v45);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v28(v13, v26, v27);
  v29 = v49;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v55(v29, 0, 1, v54);
  v63 = _swiftEmptyArrayStorage;
  v30 = v47;
  v47(v56, 1, 1, v22);
  v30(v57, 1, 1, v22);
  v51(v58, v50, v59);
  v52 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  v40 = sub_10015DA04(&qword_1006BCBA0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v31 = v43;
  v32 = v45;
  v33 = v44;
  v44(v13, v43, v45);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v33(v13, v31, v32);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v55(v29, 0, 1, v54);
  LOBYTE(v63) = 1;
  v34 = v47;
  v47(v56, 1, 1, v22);
  v34(v57, 1, 1, v22);
  v51(v58, v50, v59);
  sub_100179974();
  v35 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
  sub_10015DA04(&qword_1006C34B0);
  v61 = 0xD000000000000021;
  v62 = 0x800000010055CFC0;
  AnyHashable.init<A>(_:)();
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  v36 = AppDependency.__allocating_init(key:manager:)();
  sub_10015DA04(&unk_1006BCA40);
  v61 = 0xD000000000000024;
  v62 = 0x800000010055CF90;
  AnyHashable.init<A>(_:)();
  static AppDependencyManager.shared.getter();
  result = AppDependency.__allocating_init(key:manager:)();
  v38 = v42;
  v39 = v52;
  *v42 = v41;
  v38[1] = v39;
  v38[2] = v35;
  v38[3] = v36;
  v38[4] = result;
  return result;
}

unint64_t sub_100251F80()
{
  result = qword_1006C12F8;
  if (!qword_1006C12F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C12F8);
  }

  return result;
}

unint64_t sub_100251FD8()
{
  result = qword_1006C1300;
  if (!qword_1006C1300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1300);
  }

  return result;
}

unint64_t sub_100252030()
{
  result = qword_1006C1308;
  if (!qword_1006C1308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1308);
  }

  return result;
}

unint64_t sub_100252088()
{
  result = qword_1006C1310;
  if (!qword_1006C1310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1310);
  }

  return result;
}

unint64_t sub_1002520E0()
{
  result = qword_1006C1318;
  if (!qword_1006C1318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1318);
  }

  return result;
}

unint64_t sub_100252134()
{
  result = qword_1006C1320;
  if (!qword_1006C1320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1320);
  }

  return result;
}

unint64_t sub_10025218C()
{
  result = qword_1006C1328;
  if (!qword_1006C1328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1328);
  }

  return result;
}

unint64_t sub_100252234()
{
  result = qword_1006C1330;
  if (!qword_1006C1330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1330);
  }

  return result;
}

unint64_t sub_10025228C()
{
  result = qword_1006C1338;
  if (!qword_1006C1338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1338);
  }

  return result;
}

unint64_t sub_1002522E4()
{
  result = qword_1006C1340;
  if (!qword_1006C1340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1340);
  }

  return result;
}

unint64_t sub_10025239C()
{
  result = qword_1006BFEC0;
  if (!qword_1006BFEC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006BFEC0);
  }

  return result;
}

uint64_t sub_1002523E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100252444()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  sub_100025918(v6, static TakePhotoIntent.title);
  sub_10002597C(v6, static TakePhotoIntent.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t TakePhotoIntent.title.unsafeMutableAddressor()
{
  if (qword_1006BC668 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for LocalizedStringResource();

  return sub_10002597C(v0, static TakePhotoIntent.title);
}

uint64_t static TakePhotoIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006BC668 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_10002597C(v2, static TakePhotoIntent.title);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static TakePhotoIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v2 - 8);
  v4 = &v15[-v3];
  v5 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for Locale();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for LocalizedStringResource();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v6 + 104))(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v12 + 56))(v4, 1, 1, v11);
  IntentDescription.init(_:categoryName:searchKeywords:)();
  v13 = type metadata accessor for IntentDescription();
  return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
}

uint64_t static TakePhotoIntent.parameterSummary.getter()
{
  v0 = sub_10015DA04(&qword_1006C1370);
  __chkstk_darwin(v0 - 8);
  sub_100021B8C();
  ParameterSummaryString.init(stringLiteral:)();
  return IntentParameterSummary.init(_:table:)();
}

void (*TakePhotoIntent.loggingConfiguration.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = AppDependency.wrappedValue.modify();
  return sub_10017D9E0;
}

uint64_t sub_100252B80()
{
  v0 = sub_10015DA04(&qword_1006C1370);
  __chkstk_darwin(v0 - 8);
  ParameterSummaryString.init(stringLiteral:)();
  return IntentParameterSummary.init(_:table:)();
}

void sub_100252CA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000054A4(0, &qword_1006C6420);
  sub_100005B0C(&qword_1006C17E0, &qword_1006C6420);
  v18[1] = Set.init(minimumCapacity:)();
  sub_100391690(a1, a2, a3, v19);
  v6 = v19[0];
  v7 = v19[1];
  v8 = v19[3];
  v9 = v19[4];
  v16 = v19[5];
  v10 = (v19[2] + 64) >> 6;
  while (v6 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (swift_dynamicCast(), v15 = v17, v13 = v8, v14 = v9, !v17))
    {
LABEL_15:
      sub_10019E530();

      return;
    }

LABEL_13:
    v18[0] = v15;
    if (v16(v18))
    {
      sub_100014550(v18, v15, &qword_1006C6420, ICNoteEditorViewController_ptr, &qword_1006C17E8, &unk_10053D148);
    }

    else
    {
    }

    v8 = v13;
    v9 = v14;
  }

  v11 = v8;
  v12 = v9;
  v13 = v8;
  if (v9)
  {
LABEL_9:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v6 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      goto LABEL_15;
    }

    v12 = *(v7 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_100252EB0(uint64_t a1)
{
  sub_10017CC60((a1 + 32), *(a1 + 56));

  return swift_continuation_resume();
}

uint64_t sub_100252EE4@<X0>(_BYTE *a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_100252F58()
{
  v0 = sub_10015DA04(&qword_1006C13A0);
  sub_100025918(v0, static ICNote.hasValidEntityIdentifier);
  sub_10002597C(v0, static ICNote.hasValidEntityIdentifier);
  sub_1000054A4(0, &qword_1006C1420);
  return Predicate.init(_:)();
}

uint64_t sub_100252FF8@<X0>(uint64_t *a1@<X8>)
{
  v24 = a1;
  v1 = sub_10015DA04(&qword_1006C1A38);
  v2 = *(v1 - 8);
  v25 = v1;
  v26 = v2;
  __chkstk_darwin(v1);
  v4 = &v22 - v3;
  v5 = sub_10015DA04(&qword_1006C1AF8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - v7;
  v9 = sub_10015DA04(&qword_1006C1B00);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22 - v11;
  v13 = sub_10015DA04(&qword_1006C1B08);
  v14 = *(v13 - 8);
  v22 = v13;
  v23 = v14;
  __chkstk_darwin(v13);
  v16 = &v22 - v15;
  sub_1000060B4(&qword_1006C1B10, &qword_1006C1AF8);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v6 + 8))(v8, v5);
  sub_10015DA04(&qword_1006C1A60);
  sub_1000060B4(&qword_1006C1B18, &qword_1006C1B00);
  sub_1000060B4(&qword_1006C1A70, &qword_1006C1A60);
  static PredicateExpressions.build_flatMap<A, B, C, D>(_:_:)();
  (*(v10 + 8))(v12, v9);
  v27 = 0;
  sub_10015DA04(&qword_1006C1A78);
  static PredicateExpressions.build_Arg<A>(_:)();
  v17 = sub_10015DA04(&qword_1006C1B20);
  v18 = v24;
  v24[3] = v17;
  v18[4] = sub_100271D8C();
  sub_100180240(v18);
  sub_1000060B4(&qword_1006C1B48, &qword_1006C1B08);
  sub_1000060B4(&qword_1006C1AE0, &qword_1006C1A38);
  sub_100271D14(&qword_1006C1AE8);
  v19 = v22;
  v20 = v25;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v26 + 8))(v4, v20);
  return (*(v23 + 8))(v16, v19);
}

uint64_t ICNote.hasValidEntityIdentifier.unsafeMutableAddressor()
{
  if (qword_1006BC670 != -1)
  {
    swift_once();
  }

  v0 = sub_10015DA04(&qword_1006C13A0);

  return sub_10002597C(v0, static ICNote.hasValidEntityIdentifier);
}

uint64_t static ICNote.hasValidEntityIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006BC670 != -1)
  {
    swift_once();
  }

  v2 = sub_10015DA04(&qword_1006C13A0);
  v3 = sub_10002597C(v2, static ICNote.hasValidEntityIdentifier);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100253610()
{
  v0 = sub_10015DA04(&unk_1006C13A8);
  sub_100025918(v0, static NoteObject.hasValidEntityIdentifier);
  sub_10002597C(v0, static NoteObject.hasValidEntityIdentifier);
  sub_1000054A4(0, &qword_1006C1430);
  return Predicate.init(_:)();
}

uint64_t sub_1002536B0@<X0>(uint64_t *a1@<X8>)
{
  v24 = a1;
  v1 = sub_10015DA04(&qword_1006C1A38);
  v2 = *(v1 - 8);
  v25 = v1;
  v26 = v2;
  __chkstk_darwin(v1);
  v4 = &v22 - v3;
  v5 = sub_10015DA04(&qword_1006C1A40);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - v7;
  v9 = sub_10015DA04(&qword_1006C1A48);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22 - v11;
  v13 = sub_10015DA04(&qword_1006C1A50);
  v14 = *(v13 - 8);
  v22 = v13;
  v23 = v14;
  __chkstk_darwin(v13);
  v16 = &v22 - v15;
  sub_1000060B4(&qword_1006C1A58, &qword_1006C1A40);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v6 + 8))(v8, v5);
  sub_10015DA04(&qword_1006C1A60);
  sub_1000060B4(&qword_1006C1A68, &qword_1006C1A48);
  sub_1000060B4(&qword_1006C1A70, &qword_1006C1A60);
  static PredicateExpressions.build_flatMap<A, B, C, D>(_:_:)();
  (*(v10 + 8))(v12, v9);
  v27 = 0;
  sub_10015DA04(&qword_1006C1A78);
  static PredicateExpressions.build_Arg<A>(_:)();
  v17 = sub_10015DA04(&qword_1006C1A80);
  v18 = v24;
  v24[3] = v17;
  v18[4] = sub_1002719C8();
  sub_100180240(v18);
  sub_1000060B4(&qword_1006C1AD8, &qword_1006C1A50);
  sub_1000060B4(&qword_1006C1AE0, &qword_1006C1A38);
  sub_100271D14(&qword_1006C1AE8);
  v19 = v22;
  v20 = v25;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v26 + 8))(v4, v20);
  return (*(v23 + 8))(v16, v19);
}

uint64_t sub_100253BA4()
{
  v0 = sub_10015DA04(&qword_1006C1AB8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  sub_1000060B4(&qword_1006C1AF0, &qword_1006C1AB8);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  return (*(v1 + 8))(v3, v0);
}

uint64_t NoteObject.hasValidEntityIdentifier.unsafeMutableAddressor()
{
  if (qword_1006BC678 != -1)
  {
    swift_once();
  }

  v0 = sub_10015DA04(&unk_1006C13A8);

  return sub_10002597C(v0, static NoteObject.hasValidEntityIdentifier);
}

uint64_t static NoteObject.hasValidEntityIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006BC678 != -1)
  {
    swift_once();
  }

  v2 = sub_10015DA04(&unk_1006C13A8);
  v3 = sub_10002597C(v2, static NoteObject.hasValidEntityIdentifier);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t ICSearchIndexableNote.hasValidEntityIdentifier.getter()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClass();
  if (v0)
  {
    v1 = v0;
    v2 = qword_1006BC670;
    swift_unknownObjectRetain();
    if (v2 != -1)
    {
      swift_once();
    }

    v3 = sub_10015DA04(&qword_1006C13A0);
    v4 = static ICNote.hasValidEntityIdentifier;
LABEL_9:
    sub_10002597C(v3, v4);
    v7[0] = v1;
    v7[1] = v7;
    swift_unknownObjectRetain();
    LOBYTE(v1) = Predicate.evaluate(_:)();
    swift_unknownObjectRelease();

    return v1 & 1;
  }

  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v5 = qword_1006BC678;
    swift_unknownObjectRetain();
    if (v5 != -1)
    {
      swift_once();
    }

    v3 = sub_10015DA04(&unk_1006C13A8);
    v4 = static NoteObject.hasValidEntityIdentifier;
    goto LABEL_9;
  }

  return v1 & 1;
}

Class sub_10025401C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_10015DA04(&unk_1006C1710);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  sub_100006038(a1 + *a3, &v14 - v6, &unk_1006C1710);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v7, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v9 + 8))(v7, v8);
    v11 = isa;
  }

  return v11;
}

id sub_100254170(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + *a3 + 8))
  {

    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

Swift::Int sub_100254210()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10015DA04(&unk_1006C1710);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v13 - v9;
  Hasher.init()();
  type metadata accessor for NoteID();
  sub_100271144(&qword_1006C5320, &type metadata accessor for NoteID);
  dispatch thunk of Hashable.hash(into:)();
  String.hash(into:)();
  sub_100006038(v0 + OBJC_IVAR____TtC11MobileNotesP33_10D1876D3C9D5070F0B0F84A41ABC8CB16NoteSearchResult_creationDate, v10, &unk_1006C1710);
  v11 = *(v2 + 48);
  if (v11(v10, 1, v1) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v2 + 32))(v4, v10, v1);
    Hasher._combine(_:)(1u);
    sub_100271144(&qword_1006C1238, &type metadata accessor for Date);
    dispatch thunk of Hashable.hash(into:)();
    (*(v2 + 8))(v4, v1);
  }

  sub_100006038(v0 + OBJC_IVAR____TtC11MobileNotesP33_10D1876D3C9D5070F0B0F84A41ABC8CB16NoteSearchResult_modificationDate, v8, &unk_1006C1710);
  if (v11(v8, 1, v1) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v2 + 32))(v4, v8, v1);
    Hasher._combine(_:)(1u);
    sub_100271144(&qword_1006C1238, &type metadata accessor for Date);
    dispatch thunk of Hashable.hash(into:)();
    (*(v2 + 8))(v4, v1);
  }

  if (*(v0 + OBJC_IVAR____TtC11MobileNotesP33_10D1876D3C9D5070F0B0F84A41ABC8CB16NoteSearchResult_folderName + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(*(v0 + OBJC_IVAR____TtC11MobileNotesP33_10D1876D3C9D5070F0B0F84A41ABC8CB16NoteSearchResult_isModernNote));
  return Hasher.finalize()();
}

uint64_t sub_1002545E0(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = type metadata accessor for Date();
  v43 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v38[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_10015DA04(&unk_1006C1710);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v38[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v12 = &v38[-v11];
  v13 = sub_10015DA04(&qword_1006C1240);
  v14 = __chkstk_darwin(v13);
  v16 = &v38[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v18 = &v38[-v17];
  sub_100006038(a1, v45, &qword_1006BE7A0);
  if (!v46)
  {
    v24 = &qword_1006BE7A0;
    v25 = v45;
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    v19 = v44;
    if ((static NoteID.== infix(_:_:)() & 1) == 0 || (*&v19[OBJC_IVAR____TtC11MobileNotesP33_10D1876D3C9D5070F0B0F84A41ABC8CB16NoteSearchResult_title] != *(v2 + OBJC_IVAR____TtC11MobileNotesP33_10D1876D3C9D5070F0B0F84A41ABC8CB16NoteSearchResult_title) || *&v19[OBJC_IVAR____TtC11MobileNotesP33_10D1876D3C9D5070F0B0F84A41ABC8CB16NoteSearchResult_title + 8] != *(v2 + OBJC_IVAR____TtC11MobileNotesP33_10D1876D3C9D5070F0B0F84A41ABC8CB16NoteSearchResult_title + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {

      goto LABEL_13;
    }

    v20 = v19;
    v21 = OBJC_IVAR____TtC11MobileNotesP33_10D1876D3C9D5070F0B0F84A41ABC8CB16NoteSearchResult_creationDate;
    v22 = *(v13 + 48);
    v42 = v20;
    sub_100006038(&v20[OBJC_IVAR____TtC11MobileNotesP33_10D1876D3C9D5070F0B0F84A41ABC8CB16NoteSearchResult_creationDate], v18, &unk_1006C1710);
    v41 = v22;
    sub_100006038(v2 + v21, &v22[v18], &unk_1006C1710);
    v23 = *(v43 + 48);
    if (v23(v18, 1, v4) == 1)
    {
      if (v23(&v41[v18], 1, v4) == 1)
      {
        v40 = v23;
        sub_1000073B4(v18, &unk_1006C1710);
LABEL_20:
        v29 = OBJC_IVAR____TtC11MobileNotesP33_10D1876D3C9D5070F0B0F84A41ABC8CB16NoteSearchResult_modificationDate;
        v30 = *(v13 + 48);
        sub_100006038(&v42[OBJC_IVAR____TtC11MobileNotesP33_10D1876D3C9D5070F0B0F84A41ABC8CB16NoteSearchResult_modificationDate], v16, &unk_1006C1710);
        sub_100006038(v2 + v29, &v16[v30], &unk_1006C1710);
        v31 = v40;
        if (v40(v16, 1, v4) == 1)
        {
          if (v31(&v16[v30], 1, v4) == 1)
          {
            sub_1000073B4(v16, &unk_1006C1710);
            v32 = v42;
            goto LABEL_29;
          }

          goto LABEL_27;
        }

        sub_100006038(v16, v10, &unk_1006C1710);
        if (v31(&v16[v30], 1, v4) == 1)
        {

          (*(v43 + 8))(v10, v4);
LABEL_27:
          v24 = &qword_1006C1240;
          v25 = v16;
          goto LABEL_11;
        }

        v33 = v43;
        (*(v43 + 32))(v6, &v16[v30], v4);
        sub_100271144(&qword_1006C1720, &type metadata accessor for Date);
        v34 = dispatch thunk of static Equatable.== infix(_:_:)();
        v35 = *(v33 + 8);
        v35(v6, v4);
        v35(v10, v4);
        sub_1000073B4(v16, &unk_1006C1710);
        v32 = v42;
        if (v34)
        {
LABEL_29:
          v36 = *&v32[OBJC_IVAR____TtC11MobileNotesP33_10D1876D3C9D5070F0B0F84A41ABC8CB16NoteSearchResult_folderName + 8];
          v37 = (v2 + OBJC_IVAR____TtC11MobileNotesP33_10D1876D3C9D5070F0B0F84A41ABC8CB16NoteSearchResult_folderName);
          v26 = *(v2 + OBJC_IVAR____TtC11MobileNotesP33_10D1876D3C9D5070F0B0F84A41ABC8CB16NoteSearchResult_folderName + 8);
          if (!v36)
          {

            LOBYTE(v26) = v26 == 0;
            return v26 & 1;
          }

          if (v26)
          {
            if (*&v32[OBJC_IVAR____TtC11MobileNotesP33_10D1876D3C9D5070F0B0F84A41ABC8CB16NoteSearchResult_folderName] == *v37 && v36 == v26)
            {

              LOBYTE(v26) = 1;
              return v26 & 1;
            }

            LOBYTE(v26) = _stringCompareWithSmolCheck(_:_:expecting:)();
          }

          return v26 & 1;
        }

LABEL_25:

        goto LABEL_13;
      }
    }

    else
    {
      sub_100006038(v18, v12, &unk_1006C1710);
      if (v23(&v41[v18], 1, v4) != 1)
      {
        v40 = v23;
        v28 = v43;
        (*(v43 + 32))(v6, &v41[v18], v4);
        sub_100271144(&qword_1006C1720, &type metadata accessor for Date);
        v39 = dispatch thunk of static Equatable.== infix(_:_:)();
        v41 = *(v28 + 8);
        (v41)(v6, v4);
        (v41)(v12, v4);
        sub_1000073B4(v18, &unk_1006C1710);
        if ((v39 & 1) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_20;
      }

      (*(v43 + 8))(v12, v4);
    }

    v24 = &qword_1006C1240;
    v25 = v18;
LABEL_11:
    sub_1000073B4(v25, v24);
  }

LABEL_13:
  LOBYTE(v26) = 0;
  return v26 & 1;
}

uint64_t sub_100254E7C(uint64_t a1, uint64_t a2, unsigned int a3, unint64_t a4, unsigned int (*a5)(char *, uint64_t, uint64_t), uint64_t a6, uint64_t a7)
{
  v11 = sub_10015DA04(&qword_1006C19E8);
  v13 = sub_1002553A8(sub_1002551D0, 0, a5, v11, &type metadata for Never, a7, &protocol witness table for Never, v12);
  sub_10015DA04(&qword_1006C19F0);
  sub_1000060B4(&qword_1006C19F8, &qword_1006C19F0);
  sub_1000060B4(&qword_1006C1A00, &qword_1006C19E8);
  v14 = v30;
  v15 = Sequence.sorted<A, B>(using:)();

  v16 = a3;
  if (a3)
  {
    return v15;
  }

  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v16 = v15 & 0xFFFFFFFFFFFFFF8;
    a4 = v15 >> 62;
    if (!(v15 >> 62))
    {
      v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v17 >= a2)
      {
        v18 = a2;
      }

      else
      {
        v18 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (a2)
      {
        v19 = v18;
      }

      else
      {
        v19 = 0;
      }

      if (v17 >= v19)
      {
        goto LABEL_11;
      }

      goto LABEL_44;
    }
  }

  if (v15 < 0)
  {
    v14 = v15;
  }

  else
  {
    v14 = v16;
  }

  v13 = _CocoaArrayWrapper.endIndex.getter();
  result = _CocoaArrayWrapper.endIndex.getter();
  if ((result & 0x8000000000000000) == 0)
  {
    if (v13 >= a2)
    {
      v29 = a2;
    }

    else
    {
      v29 = v13;
    }

    if (v13 < 0)
    {
      v29 = a2;
    }

    if (a2)
    {
      v19 = v29;
    }

    else
    {
      v19 = 0;
    }

    if (_CocoaArrayWrapper.endIndex.getter() >= v19)
    {
LABEL_11:
      if ((v15 & 0xC000000000000001) != 0 && v19)
      {
        type metadata accessor for NoteSearchResult(0);

        v20 = 0;
        do
        {
          v21 = v20 + 1;
          _ArrayBuffer._typeCheckSlowPath(_:)(v20);
          v20 = v21;
        }

        while (v19 != v21);
      }

      else
      {
      }

      if (a4)
      {
        v14 = _CocoaArrayWrapper.subscript.getter();
        a2 = v22;
        v13 = v23;
        v19 = v24;

        if (v19)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v13 = 0;
        v14 = v15 & 0xFFFFFFFFFFFFFF8;
        a2 = (v15 & 0xFFFFFFFFFFFFFF8) + 32;
        v19 = (2 * v19) | 1;
        if (v19)
        {
LABEL_22:
          type metadata accessor for __ContiguousArrayStorageBase();
          swift_unknownObjectRetain_n();
          v26 = swift_dynamicCastClass();
          if (!v26)
          {
            swift_unknownObjectRelease();
            v26 = _swiftEmptyArrayStorage;
          }

          v27 = v26[2];

          if (!__OFSUB__(v19 >> 1, v13))
          {
            if (v27 == (v19 >> 1) - v13)
            {
              v15 = swift_dynamicCastClass();
              swift_unknownObjectRelease_n();
              if (v15)
              {
                return v15;
              }

              v15 = _swiftEmptyArrayStorage;
LABEL_28:
              swift_unknownObjectRelease();
              return v15;
            }

            goto LABEL_46;
          }

LABEL_45:
          __break(1u);
LABEL_46:
          swift_unknownObjectRelease_n();
        }
      }

      sub_100374FD8(v14, a2, v13, v19);
      v15 = v25;
      goto LABEL_28;
    }

LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  __break(1u);
  return result;
}

uint64_t sub_1002551D0(unsigned __int8 *a1)
{
  v2 = type metadata accessor for String.StandardComparator();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = *a1 >> 6;
  if (v9 > 1)
  {
    if (v9 != 2)
    {
      swift_getKeyPath();
      static String.StandardComparator.localizedStandard.getter();
      (*(v3 + 16))(v6, v8, v2);
      SortDescriptor.init<A>(_:comparator:order:)();
      return (*(v3 + 8))(v8, v2);
    }

LABEL_5:
    swift_getKeyPath();
    return SortDescriptor.init<A>(_:order:)();
  }

  if (v9)
  {
    goto LABEL_5;
  }

  swift_getKeyPath();
  static String.StandardComparator.localizedStandard.getter();
  (*(v3 + 16))(v6, v8, v2);
  SortDescriptor.init<A>(_:comparator:order:)();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_1002553A8(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a8;
  v9 = v8;
  v60 = a2;
  v61 = a4;
  v59 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  v14 = __chkstk_darwin(AssociatedTypeWitness);
  v43 = &v42 - v15;
  v46 = a5;
  v44 = *(a5 - 8);
  v16 = __chkstk_darwin(v14);
  v56 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v57 = &v42 - v18;
  v19 = type metadata accessor for Optional();
  v47 = *(v19 - 8);
  v48 = v19;
  v20 = __chkstk_darwin(v19);
  v50 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v24 = &v42 - v23;
  v25 = __chkstk_darwin(v22);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v55 = *(a3 - 1);
  __chkstk_darwin(v27);
  v29 = &v42 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a6;
  v62 = swift_getAssociatedTypeWitness();
  v51 = *(v62 - 8);
  __chkstk_darwin(v62);
  v31 = &v42 - v30;
  v32 = dispatch thunk of Sequence.underestimatedCount.getter();
  v63 = ContiguousArray.init()();
  v58 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v32);
  (*(v55 + 2))(v29, v52, a3);
  v61 = v31;
  v55 = a3;
  result = dispatch thunk of Sequence.makeIterator()();
  if (v32 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v32)
  {
    v34 = (v54 + 48);
    v35 = (v54 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      dispatch thunk of IteratorProtocol.next()();
      result = (*v34)(v24, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v59(v24, v57);
      if (v9)
      {
        (*(v51 + 8))(v61, v62);

        (*(v44 + 32))(v45, v57, v46);
        return (*v35)(v24, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v35)(v24, AssociatedTypeWitness);
      ContiguousArray.append(_:)();
      if (!--v32)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v36 = v50;
  dispatch thunk of IteratorProtocol.next()();
  v37 = v36;
  v38 = v54;
  v39 = *(v54 + 48);
  v57 = (v54 + 48);
  v55 = v39;
  if (v39(v36, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v51 + 8))(v61, v62);
    (*(v47 + 8))(v37, v48);
    return v63;
  }

  else
  {
    v54 = *(v38 + 32);
    v40 = (v38 + 8);
    v41 = v43;
    while (1)
    {
      (v54)(v41, v37, AssociatedTypeWitness);
      v59(v41, v56);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v40)(v41, AssociatedTypeWitness);
      ContiguousArray.append(_:)();
      dispatch thunk of IteratorProtocol.next()();
      if (v55(v37, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v40)(v41, AssociatedTypeWitness);
    (*(v51 + 8))(v61, v62);

    return (*(v44 + 32))(v45, v56, v46);
  }
}

void (*VisibleNotesQuery.loggingConfiguration.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = AppDependency.wrappedValue.modify();
  return sub_10017D9E0;
}

uint64_t VisibleNotesQuery.init(nonPasswordProtectedOnly:includeHTMLNotes:includeContents:)()
{
  sub_10015DA04(&unk_1006BCA40);
  AnyHashable.init<A>(_:)();
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  v0 = AppDependency.__allocating_init(key:manager:)();
  sub_10015DA04(&qword_1006C34B0);
  AnyHashable.init<A>(_:)();
  static AppDependencyManager.shared.getter();
  AppDependency.__allocating_init(key:manager:)();
  sub_10015DA04(&unk_1006BCBB0);
  swift_getKeyPath();
  IntentParameterDependency.__allocating_init<A, B>(_:)();
  return v0;
}

uint64_t VisibleNotesQuery.init(passwordProtectedOnly:includeContents:)()
{
  sub_10015DA04(&unk_1006BCA40);
  AnyHashable.init<A>(_:)();
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  v0 = AppDependency.__allocating_init(key:manager:)();
  sub_10015DA04(&qword_1006C34B0);
  AnyHashable.init<A>(_:)();
  static AppDependencyManager.shared.getter();
  AppDependency.__allocating_init(key:manager:)();
  sub_10015DA04(&unk_1006BCBB0);
  swift_getKeyPath();
  IntentParameterDependency.__allocating_init<A, B>(_:)();
  return v0;
}

uint64_t VisibleNotesQuery.entities(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a3;
  v5[5] = a5;
  v5[3] = a1;
  return _swift_task_switch(sub_100255EBC, 0, 0);
}

uint64_t sub_100255EBC()
{
  v1 = v0[5];
  AppDependency.wrappedValue.getter();
  v2 = v0[2];
  v0[6] = v2;
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_100255F84;
  v4 = v0[3];

  return sub_100186464(v4, v2, (v1 >> 8) & 1);
}

uint64_t sub_100255F84(uint64_t a1)
{
  v4 = *(*v2 + 48);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t VisibleNotesQuery.displayRepresentations(for:requestedComponents:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a2;
  v4[7] = a4;
  v4[5] = a1;
  v5 = type metadata accessor for Logger();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  type metadata accessor for DisplayRepresentation();
  v4[11] = swift_task_alloc();
  type metadata accessor for NoteEntity(0);
  v4[12] = swift_task_alloc();
  v6 = type metadata accessor for NoteID();
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();

  return _swift_task_switch(sub_100256228, 0, 0);
}

uint64_t sub_100256228()
{
  v1 = *(v0 + 40);
  v2 = *(v1 + 16);
  *(v0 + 136) = v2;
  if (v2)
  {
    v3 = *(v0 + 104);
    v4 = *(v0 + 112);
    v5 = *(v4 + 16);
    v4 += 16;
    v6 = *(v4 + 64);
    *(v0 + 248) = v6;
    *(v0 + 144) = *(v4 + 56);
    *(v0 + 152) = v5;
    *(v0 + 160) = &_swiftEmptyDictionarySingleton;
    *(v0 + 168) = 0;
    v7 = *(v0 + 128);
    *(v0 + 176) = &_swiftEmptyDictionarySingleton;
    *(v0 + 184) = v4 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v5(v7, v1 + ((v6 + 32) & ~v6), v3);
    AppDependency.wrappedValue.getter();
    v8 = *(v0 + 16);
    *(v0 + 192) = v8;
    v9 = swift_task_alloc();
    *(v0 + 200) = v9;
    *v9 = v0;
    v9[1] = sub_1002563C8;
    v10 = *(v0 + 128);

    return sub_100384000(v10, v8);
  }

  else
  {

    v12 = *(v0 + 8);

    return v12(&_swiftEmptyDictionarySingleton);
  }
}

uint64_t sub_1002563C8(uint64_t a1)
{
  v2 = *(*v1 + 192);
  *(*v1 + 208) = a1;

  return _swift_task_switch(sub_1002564E4, 0, 0);
}

uint64_t sub_1002564E4()
{
  v52 = v0;
  v1 = *(v0 + 208);
  if (v1)
  {
    AppDependency.wrappedValue.getter();
    v2 = *(v0 + 24);
    v3 = [v2 managedObjectContextForObjectID:v1];
    *(v0 + 216) = v3;
    if (v3)
    {
      v4 = v3;

      v5 = v1;
      v6 = v4;
      AppDependency.wrappedValue.getter();
      v7 = *(v0 + 32);
      v8 = swift_task_alloc();
      *(v0 + 224) = v8;
      *v8 = v0;
      v8[1] = sub_100256AA8;
      v9 = *(v0 + 96);

      return NoteEntity.init(for:in:includeContents:noteContext:)(v9, v5, v6, 0, v7);
    }

    else
    {
      v30 = *(v0 + 128);
      v31 = *(v0 + 104);
      v32 = *(v0 + 112);
      v33 = swift_allocObject();
      *(v33 + 16) = 0;
      v34 = v1;
      sub_10026EF78(v33, 225, v34);

      swift_willThrow();

      (*(v32 + 8))(v30, v31);

      v35 = *(v0 + 8);

      return v35();
    }
  }

  else
  {
    v11 = *(v0 + 152);
    v12 = *(v0 + 120);
    v13 = *(v0 + 128);
    v14 = *(v0 + 104);
    static Logger.link.getter();
    v11(v12, v13, v14);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 120);
    v19 = *(v0 + 128);
    v20 = *(v0 + 104);
    v21 = *(v0 + 112);
    v23 = *(v0 + 72);
    v22 = *(v0 + 80);
    v50 = *(v0 + 64);
    if (v17)
    {
      v47 = v16;
      v49 = *(v0 + 80);
      v24 = swift_slowAlloc();
      v51[0] = swift_slowAlloc();
      *v24 = 136315394;
      *(v24 + 4) = sub_100009D88(0xD000000000000011, 0x800000010053CB30, v51);
      *(v24 + 12) = 2080;
      sub_100271144(&qword_1006C13B8, &type metadata accessor for NoteID);
      v25 = ManagedEntityID.entityIdentifierString.getter();
      v48 = v19;
      v27 = v26;
      v28 = *(v21 + 8);
      v28(v18, v20);
      v29 = sub_100009D88(v25, v27, v51);

      *(v24 + 14) = v29;
      _os_log_impl(&_mh_execute_header, v15, v47, "%s: Managed object not found with entity identifier: %s", v24, 0x16u);
      swift_arrayDestroy();

      (*(v23 + 8))(v49, v50);
      v28(v48, v20);
    }

    else
    {

      v36 = *(v21 + 8);
      v36(v18, v20);
      (*(v23 + 8))(v22, v50);
      v36(v19, v20);
    }

    v37 = *(v0 + 168) + 1;
    if (v37 == *(v0 + 136))
    {
      v38 = *(v0 + 176);

      v39 = *(v0 + 8);

      return v39(v38);
    }

    else
    {
      *(v0 + 168) = v37;
      v40 = *(v0 + 152);
      v41 = *(v0 + 128);
      v42 = *(v0 + 104);
      v43 = *(v0 + 40) + ((*(v0 + 248) + 32) & ~*(v0 + 248)) + *(v0 + 144) * v37;
      *(v0 + 184) = (*(v0 + 112) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v40(v41, v43, v42);
      AppDependency.wrappedValue.getter();
      v44 = *(v0 + 16);
      *(v0 + 192) = v44;
      v45 = swift_task_alloc();
      *(v0 + 200) = v45;
      *v45 = v0;
      v45[1] = sub_1002563C8;
      v46 = *(v0 + 128);

      return sub_100384000(v46, v44);
    }
  }
}

uint64_t sub_100256AA8()
{
  v2 = *v1;
  v2[29] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100256F48, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[30] = v3;
    *v3 = v2;
    v3[1] = sub_100256C28;
    v4 = v2[11];
    v5 = v2[6];

    return NoteEntity.displayRepresentation(with:)(v4, v5);
  }
}

uint64_t sub_100256C28()
{

  return _swift_task_switch(sub_100256D24, 0, 0);
}

uint64_t sub_100256D24()
{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 160);
  v4 = *(v0 + 128);
  v5 = *(v0 + 104);
  v6 = *(v0 + 112);
  v8 = *(v0 + 88);
  v7 = *(v0 + 96);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1002E6590(v8, v4, isUniquelyReferenced_nonNull_native);

  sub_100270DF4(v7, type metadata accessor for NoteEntity);
  (*(v6 + 8))(v4, v5);
  v10 = *(v0 + 168) + 1;
  if (v10 == *(v0 + 136))
  {

    v11 = *(v0 + 8);

    return v11(v3);
  }

  else
  {
    *(v0 + 160) = v3;
    *(v0 + 168) = v10;
    v13 = *(v0 + 152);
    v14 = *(v0 + 128);
    v15 = *(v0 + 104);
    v16 = *(v0 + 40) + ((*(v0 + 248) + 32) & ~*(v0 + 248)) + *(v0 + 144) * v10;
    v17 = (*(v0 + 112) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    *(v0 + 176) = v3;
    *(v0 + 184) = v17;
    v13(v14, v16, v15);
    AppDependency.wrappedValue.getter();
    v18 = *(v0 + 16);
    *(v0 + 192) = v18;
    v19 = swift_task_alloc();
    *(v0 + 200) = v19;
    *v19 = v0;
    v19[1] = sub_1002563C8;
    v20 = *(v0 + 128);

    return sub_100384000(v20, v18);
  }
}

uint64_t sub_100256F48()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 128);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);

  (*(v4 + 8))(v2, v3);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t VisibleNotesQuery.suggestedEntities()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[31] = a3;
  v4[32] = a4;
  v4[30] = a2;
  v5 = type metadata accessor for ManagedEntityContextType();
  v4[33] = v5;
  v4[34] = *(v5 - 8);
  v4[35] = swift_task_alloc();

  return _swift_task_switch(sub_1002570D4, 0, 0);
}

uint64_t sub_1002570D4()
{
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v3 = *(v0 + 264);
  AppDependency.wrappedValue.getter();
  v4 = *(v0 + 208);
  v5 = [v4 modernManagedObjectContext];
  *(v0 + 288) = v5;

  AppDependency.wrappedValue.getter();
  v6 = *(v0 + 216);
  (*(v2 + 104))(v1, enum case for ManagedEntityContextType.html(_:), v3);
  v7 = ICUnifiedNoteContext.managedObjectContext(for:)();
  *(v0 + 296) = v7;
  v8 = v7;
  v9 = *(v0 + 256);
  (*(*(v0 + 272) + 8))(*(v0 + 280), *(v0 + 264));

  if (IntentParameterDependency.wrappedValue.getter())
  {
    swift_getKeyPath();
    sub_10021BF28();
    IntentProjection.subscript.getter();

    if (*(v0 + 360) && *(v0 + 360) == 1)
    {
      LOBYTE(v10) = 1;
    }

    else
    {
      LOBYTE(v10) = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    swift_getKeyPath();
    IntentProjection.subscript.getter();

    if (*(v0 + 361))
    {
      LOBYTE(v11) = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    else
    {
      LOBYTE(v11) = 1;
    }

    LOBYTE(v9) = 0;
  }

  else
  {
    v11 = HIDWORD(v9) & 1;
    v10 = (v9 >> 24) & 1;
  }

  *(v0 + 362) = v9 & 1;
  v12 = (*(v0 + 256) >> 16) & 1;
  v13 = [objc_allocWithZone(ICRecentNotesCoreDataIndexer) initWithLegacyManagedObjectContext:v8 modernManagedObjectContext:v5];
  *(v0 + 304) = v13;
  [v13 setMaximumNumberOfNotesPerAccount:10];
  [v13 setPinnedOnly:v12];
  [v13 setPasswordProtectedOnly:v10 & 1];
  [v13 setNonPasswordProtectedOnly:v11 & 1];
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_1002574B4;
  v14 = swift_continuation_init();
  *(v0 + 136) = sub_10015DA04(&unk_1006BFBB0);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_100252EB0;
  *(v0 + 104) = &unk_100651FA8;
  *(v0 + 112) = v14;
  [v13 reloadData:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_1002574B4()
{

  return _swift_task_switch(sub_100257594, 0, 0);
}

uint64_t sub_100257594()
{
  v1 = [*(v0 + 304) newSnapshotFromIndex];
  *(v0 + 312) = v1;
  v2 = [v1 itemIdentifiers];
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 32;
    while (1)
    {
      sub_10000A2A0(v5, v0 + 144);
      sub_10000A2A0(v0 + 144, v0 + 176);
      sub_1000054A4(0, &qword_1006BFEC0);
      if (!swift_dynamicCast())
      {
        goto LABEL_4;
      }

      v6 = *(v0 + 224);
      if (([v6 ic_isNoteType] & 1) == 0)
      {
        break;
      }

      if (*(v0 + 362))
      {
        sub_100009F60(v0 + 144);
LABEL_11:
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        goto LABEL_5;
      }

      v7 = [v6 ic_isModernNoteType];
      sub_100009F60(v0 + 144);
      if (v7)
      {
        goto LABEL_11;
      }

LABEL_5:
      v5 += 32;
      if (!--v4)
      {
        goto LABEL_15;
      }
    }

LABEL_4:
    sub_100009F60(v0 + 144);
    goto LABEL_5;
  }

LABEL_15:

  *(v0 + 320) = _swiftEmptyArrayStorage;
  AppDependency.wrappedValue.getter();
  v8 = *(v0 + 232);
  *(v0 + 328) = v8;
  v9 = swift_task_alloc();
  *(v0 + 336) = v9;
  *v9 = v0;
  v9[1] = sub_100257818;

  return sub_100257A94(_swiftEmptyArrayStorage, v8, 0);
}

uint64_t sub_100257818(uint64_t a1)
{
  v4 = *v2;
  v4[43] = v1;

  v5 = v4[41];
  if (v1)
  {

    v6 = sub_100257A10;
  }

  else
  {

    v4[44] = a1;
    v6 = sub_100257984;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100257984()
{
  v2 = *(v0 + 304);
  v1 = *(v0 + 312);
  v3 = *(v0 + 288);

  v4 = *(v0 + 8);
  v5 = *(v0 + 352);

  return v4(v5);
}

uint64_t sub_100257A10()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 312);
  v3 = *(v0 + 288);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100257A94(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 104) = a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = *(type metadata accessor for NoteEntity(0) - 8);
  *(v3 + 40) = swift_task_alloc();

  return _swift_task_switch(sub_100257B54, 0, 0);
}

uint64_t sub_100257B54()
{
  v1 = *(v0 + 16);
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 48) = v2;
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_11:

    v7 = *(v0 + 8);

    return v7(_swiftEmptyArrayStorage);
  }

LABEL_23:
  v21 = _CocoaArrayWrapper.endIndex.getter();
  *(v0 + 48) = v21;
  if (!v21)
  {
    goto LABEL_11;
  }

LABEL_3:
  v3 = 0;
  while (1)
  {
    *(v0 + 56) = _swiftEmptyArrayStorage;
    v4 = *(v0 + 16);
    if ((v4 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v3 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v5 = *(v4 + 8 * v3 + 32);
    }

    v6 = v5;
    *(v0 + 64) = v5;
    *(v0 + 72) = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    if (([v5 isTemporaryID] & 1) == 0)
    {
      break;
    }

    v3 = *(v0 + 72);
    if (v3 == *(v0 + 48))
    {
      goto LABEL_11;
    }
  }

  v9 = [*(v0 + 24) managedObjectContextForObjectID:v6];
  *(v0 + 80) = v9;
  if (v9)
  {
    v10 = v9;
    v11 = *(v0 + 24);
    v12 = v6;
    v13 = v10;
    v14 = v11;
    v15 = swift_task_alloc();
    *(v0 + 88) = v15;
    *v15 = v0;
    v15[1] = sub_100257DFC;
    v16 = *(v0 + 40);
    v17 = *(v0 + 104);

    return NoteEntity.init(for:in:includeContents:noteContext:)(v16, v12, v13, v17, v14);
  }

  else
  {
    v18 = swift_allocObject();
    *(v18 + 16) = 0;
    v19 = v6;
    sub_10026EF78(v18, 225, v19);

    swift_willThrow();

    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_100257DFC()
{
  *(*v1 + 96) = v0;

  if (v0)
  {

    v2 = sub_100258240;
  }

  else
  {
    v2 = sub_100257F18;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100257F18()
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 56);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_24:
    v2 = sub_1001CAB80(0, v2[2] + 1, 1, v2);
  }

  v4 = v2[2];
  v3 = v2[3];
  if (v4 >= v3 >> 1)
  {
    v2 = sub_1001CAB80(v3 > 1, v4 + 1, 1, v2);
  }

  v5 = *(v0 + 64);
  v7 = *(v0 + 32);
  v6 = *(v0 + 40);

  v2[2] = v4 + 1;
  sub_100271954(v6, v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v4, type metadata accessor for NoteEntity);
  v8 = *(v0 + 72);
  if (v8 == *(v0 + 48))
  {
LABEL_12:

    v12 = *(v0 + 8);

    return v12(v2);
  }

  else
  {
    while (1)
    {
      *(v0 + 56) = v2;
      v9 = *(v0 + 16);
      if ((v9 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v10 = *(v9 + 8 * v8 + 32);
      }

      v11 = v10;
      *(v0 + 64) = v10;
      *(v0 + 72) = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      if (([v10 isTemporaryID] & 1) == 0)
      {
        break;
      }

      v8 = *(v0 + 72);
      if (v8 == *(v0 + 48))
      {
        goto LABEL_12;
      }
    }

    v14 = [*(v0 + 24) managedObjectContextForObjectID:v11];
    *(v0 + 80) = v14;
    if (v14)
    {
      v15 = v14;
      v16 = *(v0 + 24);
      v17 = v11;
      v18 = v15;
      v19 = v16;
      v20 = swift_task_alloc();
      *(v0 + 88) = v20;
      *v20 = v0;
      v20[1] = sub_100257DFC;
      v21 = *(v0 + 40);
      v22 = *(v0 + 104);

      return NoteEntity.init(for:in:includeContents:noteContext:)(v21, v17, v18, v22, v19);
    }

    else
    {
      v23 = swift_allocObject();
      *(v23 + 16) = 0;
      v24 = v11;
      sub_10026EF78(v23, 225, v24);

      swift_willThrow();

      v25 = *(v0 + 8);

      return v25();
    }
  }
}

uint64_t sub_100258240()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1002582B4@<X0>(uint64_t a1@<X8>)
{
  result = sub_100270AF8();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 28) = v6;
  return result;
}

uint64_t sub_1002582EC(uint64_t a1)
{
  v3 = *(v1 + 8);
  *(v2 + 24) = a1;
  *(v2 + 32) = v3;
  *(v2 + 56) = *(v1 + 25);
  return _swift_task_switch(sub_100258318, 0, 0);
}

uint64_t sub_100258318()
{
  AppDependency.wrappedValue.getter();
  v1 = *(v0 + 16);
  *(v0 + 40) = v1;
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_100187AB0;
  v3 = *(v0 + 56);
  v4 = *(v0 + 24);

  return sub_100186464(v4, v1, v3);
}

uint64_t sub_1002583DC(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 25);
  v7 = *(v1 + 26);
  v8 = *(v1 + 27);
  v9 = *(v1 + 28);
  v10 = swift_task_alloc();
  *(v2 + 24) = v10;
  v11 = 256;
  if ((v6 & 1) == 0)
  {
    v11 = 0;
  }

  v12 = v11 & 0xFFFFFFFFFFFFFFFELL | v5 & 1;
  v13 = 0x10000;
  if ((v7 & 1) == 0)
  {
    v13 = 0;
  }

  v14 = 0x1000000;
  if ((v8 & 1) == 0)
  {
    v14 = 0;
  }

  v15 = v12 | v13 | v14;
  v16 = &_mh_execute_header;
  if ((v9 & 1) == 0)
  {
    v16 = 0;
  }

  *v10 = v2;
  v10[1] = sub_1001927BC;

  return VisibleNotesQuery.suggestedEntities()(v10, v3, v4, v15 | v16);
}

uint64_t sub_1002584E4(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 8);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100187D2C;

  return VisibleNotesQuery.displayRepresentations(for:requestedComponents:)(a1, a2, v8, v6);
}

uint64_t sub_100258590(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1001797CC();
  *v5 = v2;
  v5[1] = sub_10000A600;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t VisibleNotesQuery.entities(matching:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return _swift_task_switch(sub_10025866C, 0, 0);
}

uint64_t sub_10025866C()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10015DA04(&unk_1006C13C8);
  v3 = *(type metadata accessor for VisibleNotesQuery.Comparator(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  v0[8] = v5;
  *(v5 + 16) = xmmword_100531E30;
  v6 = (v5 + v4);
  KeyPath = swift_getKeyPath();
  v8 = swift_getKeyPath();
  *v6 = KeyPath;
  v6[1] = v8;
  v6[2] = v2;
  v6[3] = v1;
  swift_storeEnumTagMultiPayload();

  v9 = swift_task_alloc();
  v0[9] = v9;
  *v9 = v0;
  v9[1] = sub_100258828;
  v10 = v0[5];
  v11 = v0[6];
  v12 = v0[4];

  return VisibleNotesQuery.entities(matching:mode:sortedBy:limit:)(v5, 0, _swiftEmptyArrayStorage, 0, 1, v12, v10, v11);
}

uint64_t sub_100258828(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100258980, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_100258980()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t static VisibleNotesQuery.ComparatorKeyPath.title.getter()
{
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  return KeyPath;
}

uint64_t VisibleNotesQuery.entities(matching:mode:sortedBy:limit:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 2168) = a8;
  *(v8 + 2160) = a7;
  *(v8 + 2152) = a6;
  *(v8 + 2686) = a5;
  *(v8 + 2144) = a4;
  *(v8 + 2136) = a3;
  *(v8 + 2685) = a2;
  *(v8 + 2128) = a1;
  *(v8 + 2680) = v17;
  *(v8 + 2696) = v18;
  *(v8 + 2682) = v19;
  *(v8 + 2688) = v20;
  *(v8 + 2684) = v21;
  v9 = type metadata accessor for Logger();
  *(v8 + 2176) = v9;
  *(v8 + 2184) = *(v9 - 8);
  *(v8 + 2192) = swift_task_alloc();
  *(v8 + 2200) = swift_task_alloc();
  *(v8 + 2208) = swift_task_alloc();
  *(v8 + 2216) = swift_task_alloc();
  v10 = sub_10015DA04(&unk_1006C13A8);
  *(v8 + 2224) = v10;
  *(v8 + 2232) = *(v10 - 8);
  *(v8 + 2240) = swift_task_alloc();
  v11 = sub_10015DA04(&qword_1006C13A0);
  *(v8 + 2248) = v11;
  *(v8 + 2256) = *(v11 - 8);
  *(v8 + 2264) = swift_task_alloc();
  v12 = type metadata accessor for NoteID();
  *(v8 + 2272) = v12;
  *(v8 + 2280) = *(v12 - 8);
  *(v8 + 2288) = swift_task_alloc();
  *(v8 + 2296) = swift_task_alloc();
  v13 = type metadata accessor for VisibleNotesQuery.Comparator(0);
  *(v8 + 2304) = v13;
  *(v8 + 2312) = *(v13 - 8);
  *(v8 + 2320) = swift_task_alloc();
  *(v8 + 2328) = swift_task_alloc();
  *(v8 + 2336) = swift_task_alloc();
  *(v8 + 2344) = swift_task_alloc();
  sub_10015DA04(&qword_1006BEA90);
  *(v8 + 2352) = swift_task_alloc();
  *(v8 + 2360) = swift_task_alloc();
  v14 = type metadata accessor for ManagedEntityContextType();
  *(v8 + 2368) = v14;
  *(v8 + 2376) = *(v14 - 8);
  *(v8 + 2384) = swift_task_alloc();

  return _swift_task_switch(sub_100258DA8, 0, 0);
}

uint64_t sub_100258DA8()
{
  v165 = v0;
  v1 = *(v0 + 2384);
  v2 = *(v0 + 2376);
  v3 = *(v0 + 2368);
  AppDependency.wrappedValue.getter();
  v4 = *(v0 + 2088);
  *(v0 + 2392) = [v4 modernManagedObjectContext];

  AppDependency.wrappedValue.getter();
  v5 = *(v0 + 2040);
  v6 = enum case for ManagedEntityContextType.html(_:);
  v7 = *(v2 + 104);
  (v7)(v1, enum case for ManagedEntityContextType.html(_:), v3);
  *(v0 + 2400) = ICUnifiedNoteContext.managedObjectContext(for:)();
  (*(*(v0 + 2376) + 8))(*(v0 + 2384), *(v0 + 2368));

  v161 = v7;
  if (IntentParameterDependency.wrappedValue.getter())
  {
    swift_getKeyPath();
    sub_10021BF28();
    IntentProjection.subscript.getter();

    if (*(v0 + 2681) && *(v0 + 2681) == 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    swift_getKeyPath();
    IntentProjection.subscript.getter();

    if (*(v0 + 2683))
    {
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    else
    {
      v9 = 1;
    }

    v10 = 0;
  }

  else
  {
    v8 = *(v0 + 2688);
    v9 = *(v0 + 2684);
    v10 = *(v0 + 2680);
  }

  *(v0 + 2690) = v8 & 1;
  *(v0 + 2689) = v9 & 1;
  *(v0 + 2687) = v10;
  v11 = *(v0 + 2376);
  v12 = *(v0 + 2368);
  v13 = *(v0 + 2360);
  v14 = *(v0 + 2352);
  v159 = *(v0 + 2136);
  v15 = *(v0 + 2685);
  v158 = enum case for ManagedEntityContextType.modern(_:);
  v161(v13);
  v16 = *(v11 + 56);
  v16(v13, 0, 1, v12);
  sub_100006038(v13, v14, &qword_1006BEA90);

  *(v0 + 2408) = sub_100263594(v17, v15 & 1, v14, 0);
  sub_1000073B4(v13, &qword_1006BEA90);
  (v161)(v13, v6, v12);
  v16(v13, 0, 1, v12);
  sub_100006038(v13, v14, &qword_1006BEA90);

  *(v0 + 2416) = sub_100263594(v18, v15 & 1, v14, 0);
  sub_1000073B4(v13, &qword_1006BEA90);
  (v161)(v13, v158, v12);
  v16(v13, 0, 1, v12);
  sub_100006038(v13, v14, &qword_1006BEA90);

  *(v0 + 2424) = sub_100263594(v19, v15 & 1, v14, 1);
  sub_1000073B4(v13, &qword_1006BEA90);
  (v161)(v13, v6, v12);
  v16(v13, 0, 1, v12);
  sub_100006038(v13, v14, &qword_1006BEA90);

  *(v0 + 2432) = sub_100263594(v20, v15 & 1, v14, 1);
  sub_1000073B4(v13, &qword_1006BEA90);
  if (*(v159 + 16))
  {
    v21 = *(v0 + 2136);
    v22 = sub_10015DA04(&qword_1006C13D8);
    v23 = sub_1000060B4(&qword_1006C13E0, &qword_1006C13D8);
    v24 = swift_allocObject();
    v24[2] = v21;
    v24[3] = sub_100383938;
    v24[4] = 0;
    v24[5] = sub_10026E640;
    v24[6] = 0;
    v24[7] = sub_10026E650;
    v24[8] = 0;
  }

  else
  {
    v22 = sub_10015DA04(&qword_1006C1468);
    v23 = sub_1000060B4(&qword_1006C1470, &qword_1006C1468);
    v24 = &off_10064C300;
  }

  v25 = *(v0 + 2128);
  *(v0 + 1360) = v22;
  *(v0 + 1368) = v23;
  *(v0 + 1336) = v24;
  sub_10017CC60((v0 + 1336), v22);
  v26 = sub_1000054A4(0, &qword_1006C13E8);
  *(v0 + 2440) = v26;
  *(v0 + 2448) = sub_1002553A8(sub_100261258, 0, v22, v26, &type metadata for Never, v23, &protocol witness table for Never, v27);
  v28 = *(v0 + 1360);
  v29 = *(v0 + 1368);
  v30 = sub_10017CC60((v0 + 1336), v28);
  *(v0 + 2456) = sub_1002553A8(sub_10026133C, 0, v28, v26, &type metadata for Never, v29, &protocol witness table for Never, v30);
  v31 = *(v25 + 16);
  *(v0 + 2464) = v31;
  v32 = _swiftEmptyArrayStorage;
  if (v31)
  {
    v33 = *(v0 + 2336);
    v34 = *(v0 + 2312);
    v35 = *(v0 + 2128) + ((*(v34 + 80) + 32) & ~*(v34 + 80));
    v36 = *(v34 + 72);
    do
    {
      v37 = *(v0 + 2344);
      v38 = *(v0 + 2336);
      sub_100270FE4(v35, v37, type metadata accessor for VisibleNotesQuery.Comparator);
      sub_100270FE4(v37, v38, type metadata accessor for VisibleNotesQuery.Comparator);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v40 = *(v0 + 2336);
      if (EnumCaseMultiPayload == 3)
      {
        v41 = *(v33 + 8);
        v42 = HIBYTE(v41) & 0xF;
        if ((v41 & 0x2000000000000000) == 0)
        {
          v42 = *v40 & 0xFFFFFFFFFFFFLL;
        }

        if (v42)
        {
          v43 = *(v0 + 2344);
          v44 = objc_opt_self();
          v45 = String._bridgeToObjectiveC()();

          v46 = [v44 prefixMatchingQueryStringForSearchString:v45];

          v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v49 = v48;

          sub_100270DF4(v43, type metadata accessor for VisibleNotesQuery.Comparator);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v32 = sub_1001CAE70(0, *(v32 + 2) + 1, 1, v32);
          }

          v51 = *(v32 + 2);
          v50 = *(v32 + 3);
          if (v51 >= v50 >> 1)
          {
            v32 = sub_1001CAE70((v50 > 1), v51 + 1, 1, v32);
          }

          *(v32 + 2) = v51 + 1;
          v52 = &v32[16 * v51];
          *(v52 + 4) = v47;
          *(v52 + 5) = v49;
          goto LABEL_18;
        }
      }

      else
      {
        sub_100270DF4(v40, type metadata accessor for VisibleNotesQuery.Comparator);
      }

      sub_100270DF4(*(v0 + 2344), type metadata accessor for VisibleNotesQuery.Comparator);
LABEL_18:
      v35 += v36;
      --v31;
    }

    while (v31);
  }

  v53 = *(v32 + 2);
  if (v53)
  {
    sub_100189444(0, v53, 0);
    v54 = (v32 + 40);
    do
    {
      v55 = *(v54 - 1);
      v56 = *v54;
      v163 = 40;
      v164 = 0xE100000000000000;

      v57._countAndFlagsBits = v55;
      v57._object = v56;
      String.append(_:)(v57);
      v58._countAndFlagsBits = 41;
      v58._object = 0xE100000000000000;
      String.append(_:)(v58);

      v60 = _swiftEmptyArrayStorage[2];
      v59 = _swiftEmptyArrayStorage[3];
      if (v60 >= v59 >> 1)
      {
        sub_100189444((v59 > 1), v60 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v60 + 1;
      v61 = &_swiftEmptyArrayStorage[2 * v60];
      v61[4] = 40;
      v61[5] = 0xE100000000000000;
      v54 += 2;
      --v53;
    }

    while (v53);
    v62 = *(v0 + 2685);

    *(v0 + 1992) = _swiftEmptyArrayStorage;
    v163 = 32;
    v164 = 0xE100000000000000;
    if (v62)
    {
      v63 = 31868;
    }

    else
    {
      v63 = 9766;
    }

    v64 = 0xE200000000000000;
    String.append(_:)(*&v63);

    v65._countAndFlagsBits = 32;
    v65._object = 0xE100000000000000;
    String.append(_:)(v65);
    sub_10015DA04(&qword_1006C13F0);
    sub_1000060B4(&qword_1006C13F8, &qword_1006C13F0);
    v66 = BidirectionalCollection<>.joined(separator:)();
    v68 = v67;

    *(v0 + 2472) = v68;
    sub_1000054A4(0, &unk_1006C1400);
    v69 = swift_task_alloc();
    *(v0 + 2480) = v69;
    *v69 = v0;
    v69[1] = sub_10025A3F4;
    v70 = _swiftEmptyArrayStorage;
    v71 = v66;
    v72 = v68;

    return static ICSearchQueryOperation.searchResults(queryString:rankingQueries:)(v71, v72, v70);
  }

  *(v0 + 2568) = 0;
  if (*(v0 + 2464))
  {
    v73 = 0;
    v74 = *(v0 + 2320);
    v75 = *(v0 + 2312);
    v76 = *(v0 + 2128) + ((*(v75 + 80) + 32) & ~*(v75 + 80));
    v77 = *(v75 + 72);
    v78 = _swiftEmptyArrayStorage;
    while (1)
    {
      v80 = *(v0 + 2328);
      v81 = *(v0 + 2320);
      sub_100270FE4(v76, v80, type metadata accessor for VisibleNotesQuery.Comparator);
      sub_100270FE4(v80, v81, type metadata accessor for VisibleNotesQuery.Comparator);
      v82 = swift_getEnumCaseMultiPayload();
      v83 = *(v0 + 2320);
      if (v82 == 3)
      {
        v84 = *(v74 + 8);
        v85 = HIBYTE(v84) & 0xF;
        if ((v84 & 0x2000000000000000) == 0)
        {
          v85 = *v83 & 0xFFFFFFFFFFFFLL;
        }

        if (v85)
        {
          v86 = *(v0 + 2328);
          v87 = objc_opt_self();
          v88 = String._bridgeToObjectiveC()();

          v89 = [v87 prefixMatchingQueryStringForSearchString:v88];

          v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v92 = v91;

          sub_100270DF4(v86, type metadata accessor for VisibleNotesQuery.Comparator);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v78 = sub_1001CAE70(0, *(v78 + 2) + 1, 1, v78);
          }

          v94 = *(v78 + 2);
          v93 = *(v78 + 3);
          if (v94 >= v93 >> 1)
          {
            v78 = sub_1001CAE70((v93 > 1), v94 + 1, 1, v78);
          }

          *(v78 + 2) = v94 + 1;
          v95 = &v78[16 * v94];
          *(v95 + 4) = v90;
          *(v95 + 5) = v92;
          goto LABEL_44;
        }
      }

      else
      {
        sub_100270DF4(v83, type metadata accessor for VisibleNotesQuery.Comparator);
      }

      sub_100270DF4(*(v0 + 2328), type metadata accessor for VisibleNotesQuery.Comparator);
LABEL_44:
      v79 = *(v0 + 2464);
      ++v73;
      v76 += v77;
      if (v73 == v79)
      {
        v96 = *(v78 + 2);

        v97 = v96 < v79;
        goto LABEL_57;
      }
    }
  }

  v97 = 1;
LABEL_57:
  *(v0 + 2691) = v97;
  v98 = *(v0 + 2392);
  sub_1000054A4(0, &qword_1006C1420);
  v99 = static NSObject<>.ic_fetchRequest()();
  *(v0 + 2576) = v99;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v162 = v99;
  [v99 setSortDescriptors:isa];

  sub_10015DA04(&unk_1006BD390);
  v101 = swift_allocObject();
  *(v101 + 16) = xmmword_100534950;
  v102 = objc_opt_self();
  *(v101 + 32) = [v102 predicateForVisibleNotesInContext:v98];
  sub_1000054A4(0, &qword_1006C2CA0);
  if (qword_1006BC670 != -1)
  {
    swift_once();
  }

  v103 = *(v0 + 2264);
  v104 = *(v0 + 2256);
  v105 = *(v0 + 2248);
  v106 = sub_10002597C(v105, static ICNote.hasValidEntityIdentifier);
  (*(v104 + 16))(v103, v106, v105);
  v71 = NSPredicate.init<A>(_:)();
  if (!v71)
  {
    __break(1u);
LABEL_88:
    __break(1u);
    return static ICSearchQueryOperation.searchResults(queryString:rankingQueries:)(v71, v72, v70);
  }

  v107 = (v0 + 1896);
  v108 = *(v0 + 2408);
  *(v101 + 40) = v71;
  *(v101 + 48) = v108;
  *(v0 + 1896) = v101;
  v109 = *(v0 + 2682);
  v110 = v108;
  if (v109 == 1)
  {
    v111 = [v102 predicateForPinnedNotes];
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v107 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v107 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  if (*(v0 + 2690) == 1)
  {
    v112 = [objc_opt_self() predicateForPasswordProtectedObjects];
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v107 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v107 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  if (*(v0 + 2689) == 1)
  {
    v113 = [objc_opt_self() predicateForPasswordProtectedObjects];
    v114 = objc_opt_self();
    v115 = [v114 notPredicateWithSubpredicate:v113];

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v107 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v107 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v116 = [v102 predicateForSystemPaperNotes];
    v117 = [v114 notPredicateWithSubpredicate:v116];

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v107 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v107 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v118 = Array._bridgeToObjectiveC()().super.isa;
  v119 = objc_opt_self();
  v120 = [v119 andPredicateWithSubpredicates:v118];

  [v162 setPredicate:v120];
  sub_1000054A4(0, &qword_1006C1430);
  v121 = static NSObject<>.ic_fetchRequest()();
  *(v0 + 2584) = v121;
  v122 = Array._bridgeToObjectiveC()().super.isa;
  [v121 setSortDescriptors:v122];

  v123 = swift_allocObject();
  *(v123 + 16) = xmmword_100534950;
  *(v123 + 32) = [objc_opt_self() predicateForVisibleNotes];
  if (qword_1006BC678 != -1)
  {
    swift_once();
  }

  v124 = *(v0 + 2240);
  v125 = *(v0 + 2232);
  v126 = *(v0 + 2224);
  v127 = sub_10002597C(v126, static NoteObject.hasValidEntityIdentifier);
  (*(v125 + 16))(v124, v127, v126);
  v71 = NSPredicate.init<A>(_:)();
  if (!v71)
  {
    goto LABEL_88;
  }

  v128 = v71;
  v129 = *(v0 + 2416);
  v130 = *(v0 + 2687);

  *(v123 + 40) = v128;
  *(v123 + 48) = v129;
  v131 = v129;
  v132 = Array._bridgeToObjectiveC()().super.isa;

  v133 = [v119 andPredicateWithSubpredicates:v132];

  [v121 setPredicate:v133];
  if ((v130 & 1) == 0)
  {
    v134 = [objc_opt_self() predicateWithValue:0];
    [v121 setPredicate:v134];
  }

  if ((*(v0 + 2686) & 1) == 0)
  {
    v135 = *(v0 + 2144);
    [v162 setFetchLimit:v135];
    [v121 setFetchLimit:v135];
  }

  AppDependency.wrappedValue.getter();
  Logger.init(subsystem:category:)();

  v136 = Logger.logObject.getter();
  v137 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v136, v137))
  {
    v160 = *(v0 + 2216);
    v138 = *(v0 + 2184);
    v139 = *(v0 + 2176);
    v140 = swift_slowAlloc();
    v141 = swift_slowAlloc();
    v163 = v141;
    *v140 = 136315138;
    v142 = Array.description.getter();
    v144 = sub_100009D88(v142, v143, &v163);

    *(v140 + 4) = v144;
    _os_log_impl(&_mh_execute_header, v136, v137, "VisibleNotesQuery: performing with filters %s", v140, 0xCu);
    sub_100009F60(v141);

    v145 = *(v138 + 8);
    v145(v160, v139);
  }

  else
  {
    v146 = *(v0 + 2216);
    v147 = *(v0 + 2184);
    v148 = *(v0 + 2176);

    v145 = *(v147 + 8);
    v145(v146, v148);
  }

  *(v0 + 2592) = v145;
  v149 = *(v0 + 2400);
  v150 = *(v0 + 2392);
  v151 = swift_allocObject();
  *(v0 + 2600) = v151;
  *(v151 + 16) = v150;
  *(v151 + 24) = v162;
  v152 = v150;
  v153 = v162;
  *(v0 + 2608) = sub_10015DA04(&qword_1006C1438);
  swift_asyncLet_begin();
  v154 = swift_allocObject();
  *(v0 + 2616) = v154;
  *(v154 + 16) = v149;
  *(v154 + 24) = v121;
  v155 = v149;
  v156 = v121;
  swift_asyncLet_begin();

  return _swift_asyncLet_get_throwing(v0 + 16, v0 + 1848, sub_10025C990, v0 + 2048);
}

uint64_t sub_10025A3F4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 2488) = a1;
  *(v3 + 2496) = v1;

  if (v1)
  {

    v4 = sub_10025D478;
  }

  else
  {
    v4 = sub_10025A554;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10025A554()
{
  v96 = v0;
  v1 = *(v0 + 2488);
  if (v1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_3;
    }

LABEL_7:

    *(v0 + 2568) = 0;
    if (*(v0 + 2464))
    {
      v4 = 0;
      v5 = *(v0 + 2320);
      v6 = *(v0 + 2312);
      v7 = *(v0 + 2128) + ((*(v6 + 80) + 32) & ~*(v6 + 80));
      v8 = *(v6 + 72);
      v9 = _swiftEmptyArrayStorage;
      while (1)
      {
        v11 = *(v0 + 2328);
        v12 = *(v0 + 2320);
        sub_100270FE4(v7, v11, type metadata accessor for VisibleNotesQuery.Comparator);
        sub_100270FE4(v11, v12, type metadata accessor for VisibleNotesQuery.Comparator);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v14 = *(v0 + 2320);
        if (EnumCaseMultiPayload == 3)
        {
          v15 = *(v5 + 8);
          v16 = HIBYTE(v15) & 0xF;
          if ((v15 & 0x2000000000000000) == 0)
          {
            v16 = *v14 & 0xFFFFFFFFFFFFLL;
          }

          if (v16)
          {
            v17 = *(v0 + 2328);
            v18 = objc_opt_self();
            v19 = String._bridgeToObjectiveC()();

            v20 = [v18 prefixMatchingQueryStringForSearchString:v19];

            v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v23 = v22;

            sub_100270DF4(v17, type metadata accessor for VisibleNotesQuery.Comparator);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v9 = sub_1001CAE70(0, *(v9 + 2) + 1, 1, v9);
            }

            v25 = *(v9 + 2);
            v24 = *(v9 + 3);
            if (v25 >= v24 >> 1)
            {
              v9 = sub_1001CAE70((v24 > 1), v25 + 1, 1, v9);
            }

            *(v9 + 2) = v25 + 1;
            v26 = &v9[16 * v25];
            *(v26 + 4) = v21;
            *(v26 + 5) = v23;
            goto LABEL_11;
          }
        }

        else
        {
          sub_100270DF4(v14, type metadata accessor for VisibleNotesQuery.Comparator);
        }

        sub_100270DF4(*(v0 + 2328), type metadata accessor for VisibleNotesQuery.Comparator);
LABEL_11:
        v10 = *(v0 + 2464);
        ++v4;
        v7 += v8;
        if (v4 == v10)
        {
          v27 = *(v9 + 2);

          v28 = v27 < v10;
          goto LABEL_24;
        }
      }
    }

    v28 = 1;
LABEL_24:
    *(v0 + 2691) = v28;
    v29 = *(v0 + 2392);
    sub_1000054A4(0, &qword_1006C1420);
    v30 = static NSObject<>.ic_fetchRequest()();
    *(v0 + 2576) = v30;
    isa = Array._bridgeToObjectiveC()().super.isa;
    v94 = v30;
    [v30 setSortDescriptors:isa];

    sub_10015DA04(&unk_1006BD390);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_100534950;
    v33 = objc_opt_self();
    *(v32 + 32) = [v33 predicateForVisibleNotesInContext:v29];
    sub_1000054A4(0, &qword_1006C2CA0);
    if (qword_1006BC670 != -1)
    {
      swift_once();
    }

    v34 = *(v0 + 2264);
    v35 = *(v0 + 2256);
    v36 = *(v0 + 2248);
    v37 = sub_10002597C(v36, static ICNote.hasValidEntityIdentifier);
    (*(v35 + 16))(v34, v37, v36);
    v38 = NSPredicate.init<A>(_:)();
    if (v38)
    {
      v42 = (v0 + 1896);
      v43 = *(v0 + 2408);
      *(v32 + 40) = v38;
      *(v32 + 48) = v43;
      *(v0 + 1896) = v32;
      v44 = *(v0 + 2682);
      v45 = v43;
      if (v44 == 1)
      {
        v46 = [v33 predicateForPinnedNotes];
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      if (*(v0 + 2690) == 1)
      {
        v47 = [objc_opt_self() predicateForPasswordProtectedObjects];
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      if (*(v0 + 2689) == 1)
      {
        v48 = [objc_opt_self() predicateForPasswordProtectedObjects];
        v49 = objc_opt_self();
        v50 = [v49 notPredicateWithSubpredicate:v48];

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v51 = [v33 predicateForSystemPaperNotes];
        v52 = [v49 notPredicateWithSubpredicate:v51];

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      v53 = Array._bridgeToObjectiveC()().super.isa;
      v54 = objc_opt_self();
      v55 = [v54 andPredicateWithSubpredicates:v53];

      [v94 setPredicate:v55];
      sub_1000054A4(0, &qword_1006C1430);
      v56 = static NSObject<>.ic_fetchRequest()();
      *(v0 + 2584) = v56;
      v57 = Array._bridgeToObjectiveC()().super.isa;
      [v56 setSortDescriptors:v57];

      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_100534950;
      *(v58 + 32) = [objc_opt_self() predicateForVisibleNotes];
      if (qword_1006BC678 != -1)
      {
        swift_once();
      }

      v59 = *(v0 + 2240);
      v60 = *(v0 + 2232);
      v61 = *(v0 + 2224);
      v62 = sub_10002597C(v61, static NoteObject.hasValidEntityIdentifier);
      (*(v60 + 16))(v59, v62, v61);
      v38 = NSPredicate.init<A>(_:)();
      if (v38)
      {
        v63 = v38;
        v64 = *(v0 + 2416);
        v65 = *(v0 + 2687);

        *(v58 + 40) = v63;
        *(v58 + 48) = v64;
        v66 = v64;
        v67 = Array._bridgeToObjectiveC()().super.isa;

        v68 = [v54 andPredicateWithSubpredicates:v67];

        [v56 setPredicate:v68];
        if ((v65 & 1) == 0)
        {
          v69 = [objc_opt_self() predicateWithValue:0];
          [v56 setPredicate:v69];
        }

        if ((*(v0 + 2686) & 1) == 0)
        {
          v70 = *(v0 + 2144);
          [v94 setFetchLimit:v70];
          [v56 setFetchLimit:v70];
        }

        AppDependency.wrappedValue.getter();
        Logger.init(subsystem:category:)();

        v71 = Logger.logObject.getter();
        v72 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v71, v72))
        {
          v93 = *(v0 + 2216);
          v73 = *(v0 + 2184);
          v74 = *(v0 + 2176);
          v75 = swift_slowAlloc();
          v76 = swift_slowAlloc();
          v95 = v76;
          *v75 = 136315138;
          v77 = Array.description.getter();
          v79 = sub_100009D88(v77, v78, &v95);

          *(v75 + 4) = v79;
          _os_log_impl(&_mh_execute_header, v71, v72, "VisibleNotesQuery: performing with filters %s", v75, 0xCu);
          sub_100009F60(v76);

          v80 = *(v73 + 8);
          v80(v93, v74);
        }

        else
        {
          v81 = *(v0 + 2216);
          v82 = *(v0 + 2184);
          v83 = *(v0 + 2176);

          v80 = *(v82 + 8);
          v80(v81, v83);
        }

        *(v0 + 2592) = v80;
        v84 = *(v0 + 2400);
        v85 = *(v0 + 2392);
        v86 = swift_allocObject();
        *(v0 + 2600) = v86;
        *(v86 + 16) = v85;
        *(v86 + 24) = v94;
        v87 = v85;
        v88 = v94;
        *(v0 + 2608) = sub_10015DA04(&qword_1006C1438);
        swift_asyncLet_begin();
        v89 = swift_allocObject();
        *(v0 + 2616) = v89;
        *(v89 + 16) = v84;
        *(v89 + 24) = v56;
        v90 = v84;
        v91 = v56;
        swift_asyncLet_begin();
        v40 = sub_10025C990;
        v38 = v0 + 16;
        v39 = v0 + 1848;
        v41 = v0 + 2048;

        return _swift_asyncLet_get_throwing(v38, v39, v40, v41);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return _swift_asyncLet_get_throwing(v38, v39, v40, v41);
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_7;
  }

LABEL_3:
  *(v0 + 2504) = type metadata accessor for MainActor();
  *(v0 + 2512) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10025B0B4, v3, v2);
}

uint64_t sub_10025B0B4()
{
  v20 = v0;
  v1 = *(v0 + 2400);
  v2 = *(v0 + 2392);

  v3 = [objc_opt_self() sharedIndexer];
  sub_1000054A4(0, &unk_1006C64D0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  sub_10015DA04(&unk_1006BD390);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100531E20;
  *(v5 + 32) = v2;
  *(v5 + 40) = v1;
  sub_1000054A4(0, &unk_1006C2CF0);
  v6 = v2;
  v7 = v1;
  v8 = Array._bridgeToObjectiveC()().super.isa;

  v9 = [v3 objectsForSearchableItems:isa inContexts:v8];

  sub_10015DA04(&unk_1006C1410);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = _swiftEmptyArrayStorage;
  v19 = _swiftEmptyArrayStorage;
  if (v10 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    *(v18 + 2520) = v11;
    if (!i)
    {
      goto LABEL_23;
    }

    v13 = 0;
    if ((v10 & 0xC000000000000001) != 0)
    {
      break;
    }

LABEL_5:
    if (v13 < *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      swift_unknownObjectRetain();
      v14 = v13 + 1;
      if (!__OFADD__(v13, 1))
      {
        goto LABEL_7;
      }

LABEL_26:
      __break(1u);
    }

    __break(1u);
LABEL_28:
    ;
  }

  while (1)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      goto LABEL_26;
    }

LABEL_7:
    *(v18 + 1944) = &OBJC_PROTOCOL___ICSearchIndexableNote;
    v15 = swift_dynamicCastObjCProtocolConditional();
    if (!v15)
    {
      goto LABEL_13;
    }

    v11 = v15;
    swift_getObjectType();
    sub_1000054A4(0, &qword_1006C2D00);
    if (!swift_dynamicCastMetatype())
    {
      goto LABEL_13;
    }

    swift_getObjectType();
    swift_unknownObjectRetain();
    if (ICSearchIndexableNote.hasValidEntityIdentifier.getter() & 1) == 0 || ([v11 isHiddenFromSearch] & 1) != 0 || (objc_msgSend(v11, "isDeletedOrInTrash"))
    {
      swift_unknownObjectRelease();
LABEL_13:
      swift_unknownObjectRelease();
      if (v14 == i)
      {
        break;
      }

      goto LABEL_14;
    }

    v16 = objc_allocWithZone(type metadata accessor for NoteSearchResult(0));
    sub_10026EA40(v11, v16);
    swift_unknownObjectRelease();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v11 = &v19;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    *(v18 + 2520) = v19;
    if (v14 == i)
    {
      break;
    }

LABEL_14:
    ++v13;
    if ((v10 & 0xC000000000000001) == 0)
    {
      goto LABEL_5;
    }
  }

LABEL_23:

  return _swift_task_switch(sub_10025B458, 0, 0);
}

uint64_t sub_10025B458()
{
  v95 = v0;
  if ((static EntityQueryComparatorMode.== infix(_:_:)() & 1) == 0)
  {
    *(v0 + 2568) = *(v0 + 2520);
    if (*(v0 + 2464))
    {
      v3 = 0;
      v4 = *(v0 + 2320);
      v5 = *(v0 + 2312);
      v6 = *(v0 + 2128) + ((*(v5 + 80) + 32) & ~*(v5 + 80));
      v7 = *(v5 + 72);
      v8 = _swiftEmptyArrayStorage;
      while (1)
      {
        v10 = *(v0 + 2328);
        v11 = *(v0 + 2320);
        sub_100270FE4(v6, v10, type metadata accessor for VisibleNotesQuery.Comparator);
        sub_100270FE4(v10, v11, type metadata accessor for VisibleNotesQuery.Comparator);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v13 = *(v0 + 2320);
        if (EnumCaseMultiPayload == 3)
        {
          v14 = *(v4 + 8);
          v15 = HIBYTE(v14) & 0xF;
          if ((v14 & 0x2000000000000000) == 0)
          {
            v15 = *v13 & 0xFFFFFFFFFFFFLL;
          }

          if (v15)
          {
            v16 = *(v0 + 2328);
            v17 = objc_opt_self();
            v18 = String._bridgeToObjectiveC()();

            v19 = [v17 prefixMatchingQueryStringForSearchString:v18];

            v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v22 = v21;

            sub_100270DF4(v16, type metadata accessor for VisibleNotesQuery.Comparator);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v8 = sub_1001CAE70(0, *(v8 + 2) + 1, 1, v8);
            }

            v24 = *(v8 + 2);
            v23 = *(v8 + 3);
            if (v24 >= v23 >> 1)
            {
              v8 = sub_1001CAE70((v23 > 1), v24 + 1, 1, v8);
            }

            *(v8 + 2) = v24 + 1;
            v25 = &v8[16 * v24];
            *(v25 + 4) = v20;
            *(v25 + 5) = v22;
            goto LABEL_9;
          }
        }

        else
        {
          sub_100270DF4(v13, type metadata accessor for VisibleNotesQuery.Comparator);
        }

        sub_100270DF4(*(v0 + 2328), type metadata accessor for VisibleNotesQuery.Comparator);
LABEL_9:
        v9 = *(v0 + 2464);
        ++v3;
        v6 += v7;
        if (v3 == v9)
        {
          v26 = *(v8 + 2);

          v27 = v26 < v9;
          goto LABEL_22;
        }
      }
    }

    v27 = 1;
LABEL_22:
    *(v0 + 2691) = v27;
    v28 = *(v0 + 2392);
    sub_1000054A4(0, &qword_1006C1420);
    v29 = static NSObject<>.ic_fetchRequest()();
    *(v0 + 2576) = v29;
    isa = Array._bridgeToObjectiveC()().super.isa;
    v93 = v29;
    [v29 setSortDescriptors:isa];

    sub_10015DA04(&unk_1006BD390);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_100534950;
    v32 = objc_opt_self();
    *(v31 + 32) = [v32 predicateForVisibleNotesInContext:v28];
    sub_1000054A4(0, &qword_1006C2CA0);
    if (qword_1006BC670 != -1)
    {
      swift_once();
    }

    v33 = *(v0 + 2264);
    v34 = *(v0 + 2256);
    v35 = *(v0 + 2248);
    v36 = sub_10002597C(v35, static ICNote.hasValidEntityIdentifier);
    (*(v34 + 16))(v33, v36, v35);
    v37 = NSPredicate.init<A>(_:)();
    if (v37)
    {
      v41 = (v0 + 1896);
      v42 = *(v0 + 2408);
      *(v31 + 40) = v37;
      *(v31 + 48) = v42;
      *(v0 + 1896) = v31;
      v43 = *(v0 + 2682);
      v44 = v42;
      if (v43 == 1)
      {
        v45 = [v32 predicateForPinnedNotes];
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      if (*(v0 + 2690) == 1)
      {
        v46 = [objc_opt_self() predicateForPasswordProtectedObjects];
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      if (*(v0 + 2689) == 1)
      {
        v47 = [objc_opt_self() predicateForPasswordProtectedObjects];
        v48 = objc_opt_self();
        v49 = [v48 notPredicateWithSubpredicate:v47];

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v50 = [v32 predicateForSystemPaperNotes];
        v51 = [v48 notPredicateWithSubpredicate:v50];

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      v52 = Array._bridgeToObjectiveC()().super.isa;
      v53 = objc_opt_self();
      v54 = [v53 andPredicateWithSubpredicates:v52];

      [v93 setPredicate:v54];
      sub_1000054A4(0, &qword_1006C1430);
      v55 = static NSObject<>.ic_fetchRequest()();
      *(v0 + 2584) = v55;
      v56 = Array._bridgeToObjectiveC()().super.isa;
      [v55 setSortDescriptors:v56];

      v57 = swift_allocObject();
      *(v57 + 16) = xmmword_100534950;
      *(v57 + 32) = [objc_opt_self() predicateForVisibleNotes];
      if (qword_1006BC678 != -1)
      {
        swift_once();
      }

      v58 = *(v0 + 2240);
      v59 = *(v0 + 2232);
      v60 = *(v0 + 2224);
      v61 = sub_10002597C(v60, static NoteObject.hasValidEntityIdentifier);
      (*(v59 + 16))(v58, v61, v60);
      v37 = NSPredicate.init<A>(_:)();
      if (v37)
      {
        v62 = v37;
        v63 = *(v0 + 2416);
        v64 = *(v0 + 2687);

        *(v57 + 40) = v62;
        *(v57 + 48) = v63;
        v65 = v63;
        v66 = Array._bridgeToObjectiveC()().super.isa;

        v67 = [v53 andPredicateWithSubpredicates:v66];

        [v55 setPredicate:v67];
        if ((v64 & 1) == 0)
        {
          v68 = [objc_opt_self() predicateWithValue:0];
          [v55 setPredicate:v68];
        }

        if ((*(v0 + 2686) & 1) == 0)
        {
          v69 = *(v0 + 2144);
          [v93 setFetchLimit:v69];
          [v55 setFetchLimit:v69];
        }

        AppDependency.wrappedValue.getter();
        Logger.init(subsystem:category:)();

        v70 = Logger.logObject.getter();
        v71 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v70, v71))
        {
          v92 = *(v0 + 2216);
          v72 = *(v0 + 2184);
          v73 = *(v0 + 2176);
          v74 = swift_slowAlloc();
          v75 = swift_slowAlloc();
          v94 = v75;
          *v74 = 136315138;
          v76 = Array.description.getter();
          v78 = sub_100009D88(v76, v77, &v94);

          *(v74 + 4) = v78;
          _os_log_impl(&_mh_execute_header, v70, v71, "VisibleNotesQuery: performing with filters %s", v74, 0xCu);
          sub_100009F60(v75);

          v79 = *(v72 + 8);
          v79(v92, v73);
        }

        else
        {
          v80 = *(v0 + 2216);
          v81 = *(v0 + 2184);
          v82 = *(v0 + 2176);

          v79 = *(v81 + 8);
          v79(v80, v82);
        }

        *(v0 + 2592) = v79;
        v83 = *(v0 + 2400);
        v84 = *(v0 + 2392);
        v85 = swift_allocObject();
        *(v0 + 2600) = v85;
        *(v85 + 16) = v84;
        *(v85 + 24) = v93;
        v86 = v84;
        v87 = v93;
        *(v0 + 2608) = sub_10015DA04(&qword_1006C1438);
        swift_asyncLet_begin();
        v88 = swift_allocObject();
        *(v0 + 2616) = v88;
        *(v88 + 16) = v83;
        *(v88 + 24) = v55;
        v89 = v83;
        v90 = v55;
        swift_asyncLet_begin();
        v39 = sub_10025C990;
        v37 = v0 + 16;
        v38 = v0 + 1848;
        v40 = v0 + 2048;

        return _swift_asyncLet_get_throwing(v37, v38, v39, v40);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return _swift_asyncLet_get_throwing(v37, v38, v39, v40);
  }

  *(v0 + 2528) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10025BFA4, v2, v1);
}

uint64_t sub_10025BFA4()
{
  v54 = v0;
  v1 = *(v0 + 2520);

  v53 = _swiftEmptyArrayStorage;
  if (v1 >> 62)
  {
    goto LABEL_38;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v4 = 0;
    v5 = v1 & 0xC000000000000001;
    v6 = v1 & 0xFFFFFFFFFFFFFF8;
    v7 = *(v0 + 2520) + 32;
    v50 = v1 & 0xFFFFFFFFFFFFFF8;
    v51 = v1 & 0xC000000000000001;
    while (1)
    {
      if (v5)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *(v6 + 16))
        {
          goto LABEL_37;
        }

        v8 = *(v7 + 8 * v4);
      }

      v9 = v8;
      v10 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        v2 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_3;
      }

      if (*(v8 + OBJC_IVAR____TtC11MobileNotesP33_10D1876D3C9D5070F0B0F84A41ABC8CB16NoteSearchResult_isModernNote) == 1)
      {
        *(v0 + 1600) = type metadata accessor for NoteSearchResult(0);
        *(v0 + 1576) = v9;
        sub_100006038(v0 + 1576, v0 + 1608, &qword_1006BE7A0);
        v11 = *(v0 + 1632);
        if (v11)
        {
          v12 = sub_10017CC60((v0 + 1608), *(v0 + 1632));
          v13 = *(v11 - 8);
          v14 = swift_task_alloc();
          (*(v13 + 16))(v14, v12, v11);
          v15 = v9;
          v16 = _bridgeAnythingToObjectiveC<A>(_:)();
          (*(v13 + 8))(v14, v11);
          v6 = v50;
          v5 = v51;

          sub_100009F60(v0 + 1608);
        }

        else
        {
          v23 = v9;
          v16 = 0;
        }

        v1 = [*(v0 + 2424) evaluateWithObject:{v16, v50}];
        swift_unknownObjectRelease();
        sub_1000073B4(v0 + 1576, &qword_1006BE7A0);
        if (v1)
        {
          goto LABEL_22;
        }
      }

      else if (*(v0 + 2680))
      {
        *(v0 + 1664) = type metadata accessor for NoteSearchResult(0);
        *(v0 + 1640) = v9;
        sub_100006038(v0 + 1640, v0 + 1416, &qword_1006BE7A0);
        v17 = *(v0 + 1440);
        if (v17)
        {
          v18 = sub_10017CC60((v0 + 1416), *(v0 + 1440));
          v19 = *(v17 - 8);
          v20 = swift_task_alloc();
          (*(v19 + 16))(v20, v18, v17);
          v21 = v9;
          v22 = _bridgeAnythingToObjectiveC<A>(_:)();
          (*(v19 + 8))(v20, v17);
          v6 = v50;
          v5 = v51;

          sub_100009F60(v0 + 1416);
        }

        else
        {
          v24 = v9;
          v22 = 0;
        }

        v1 = [*(v0 + 2432) evaluateWithObject:{v22, v50}];
        swift_unknownObjectRelease();
        sub_1000073B4(v0 + 1640, &qword_1006BE7A0);
        if (v1)
        {
LABEL_22:
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v1 = &v53;
          specialized ContiguousArray._endMutation()();
          goto LABEL_6;
        }
      }

LABEL_6:
      ++v4;
      if (v10 == v2)
      {
        v3 = v53;
        break;
      }
    }
  }

  v25 = *(v0 + 2686);
  v26 = *(v0 + 2144);

  v27 = *(v0 + 1360);
  v28 = *(v0 + 1368);
  v29 = sub_10017CC60((v0 + 1336), v27);
  *(v0 + 2112) = v3;
  v30 = sub_10015DA04(&qword_1006C1438);
  v31 = sub_1000060B4(&qword_1006C1448, &qword_1006C1438);
  v32 = sub_100254E7C(v29, v26, v25 & 1, v30, v27, v31, v28);

  if (v32 >> 62)
  {
    v33 = _CocoaArrayWrapper.endIndex.getter();
    if (v33)
    {
      goto LABEL_27;
    }

LABEL_40:

    v39 = _swiftEmptyArrayStorage;
    goto LABEL_41;
  }

  v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v33)
  {
    goto LABEL_40;
  }

LABEL_27:
  v53 = _swiftEmptyArrayStorage;
  v34 = sub_1001895C4(0, v33 & ~(v33 >> 63), 0);
  if (v33 < 0)
  {
    __break(1u);
    return _swift_task_switch(v34, v35, v36);
  }

  v37 = 0;
  v38 = *(v0 + 2280);
  v39 = v53;
  v40 = v32;
  v52 = v32 & 0xC000000000000001;
  v41 = v32;
  v42 = v33;
  do
  {
    if (v52)
    {
      v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v43 = *(v40 + 8 * v37 + 32);
    }

    v44 = v43;
    (*(v38 + 16))(*(v0 + 2296), v43 + OBJC_IVAR____TtC11MobileNotesP33_10D1876D3C9D5070F0B0F84A41ABC8CB16NoteSearchResult_id, *(v0 + 2272));

    v53 = v39;
    v46 = v39[2];
    v45 = v39[3];
    if (v46 >= v45 >> 1)
    {
      sub_1001895C4(v45 > 1, v46 + 1, 1);
      v39 = v53;
    }

    v47 = *(v0 + 2296);
    v48 = *(v0 + 2272);
    ++v37;
    v39[2] = v46 + 1;
    (*(v38 + 32))(v39 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v46, v47, v48);
    v40 = v41;
  }

  while (v42 != v37);

LABEL_41:
  *(v0 + 2536) = v39;
  v34 = sub_10025C5C4;
  v35 = 0;
  v36 = 0;

  return _swift_task_switch(v34, v35, v36);
}

uint64_t sub_10025C5C4()
{
  AppDependency.wrappedValue.getter();
  v1 = *(v0 + 2120);
  *(v0 + 2544) = v1;
  v2 = *(v0 + 2696);
  v3 = swift_task_alloc();
  *(v0 + 2552) = v3;
  *v3 = v0;
  v3[1] = sub_10025C690;
  v4 = *(v0 + 2536);

  return sub_100186464(v4, v1, v2);
}

uint64_t sub_10025C690(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[209] = v2;
  v4[210] = a1;
  v4[211] = v1;
  v4[320] = v1;

  v5 = v3[318];
  if (v1)
  {

    v6 = sub_10025D5EC;
  }

  else
  {

    v6 = sub_10025C7F8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10025C7F8()
{
  v1 = *(v0 + 2432);
  v2 = *(v0 + 2424);
  v3 = *(v0 + 2416);
  v4 = *(v0 + 2408);
  v5 = *(v0 + 2400);

  v8 = *(v0 + 1680);
  sub_100009F60(v0 + 1336);
  sub_10000C840(0);
  sub_10000C840(0);

  v6 = *(v0 + 8);

  return v6(v8);
}

uint64_t sub_10025C990()
{
  v1[328] = v0;
  if (v0)
  {

    return _swift_asyncLet_finish(v1 + 82, v1 + 225, sub_10025D760, v1 + 250);
  }

  else
  {
    v1[329] = v1[231];

    return _swift_asyncLet_get_throwing(v1 + 82, v1 + 225, sub_10025CA4C, v1 + 238);
  }
}

uint64_t sub_10025CA4C()
{
  *(v1 + 2640) = v0;
  if (v0)
  {

    return _swift_asyncLet_finish(v1 + 656, v1 + 1800, sub_10025DAA0, v1 + 1856);
  }

  else
  {

    return _swift_task_switch(sub_10025CB04, 0, 0);
  }
}

size_t sub_10025CB04()
{
  v54 = v0;
  v1 = *(v0 + 2691);
  v53 = *(v0 + 2632);

  sub_1002DBD84(v2);
  v3 = v53;
  v4 = _swiftEmptyArrayStorage;
  if (v1 == 1)
  {

    v4 = v53;
  }

  v5 = *(v0 + 2568);
  if ((static EntityQueryComparatorMode.== infix(_:_:)() & 1) != 0 && v5)
  {
    v6 = *(v0 + 2568);

    v53 = v6;

    sub_1002DBD84(v3);
    v7 = sub_10026F534(v6);

    v4 = sub_1003750DC(v7);
  }

  v8 = *(v0 + 2608);
  v9 = *(v0 + 2686);
  v10 = *(v0 + 2144);

  v11 = *(v0 + 1360);
  v12 = *(v0 + 1368);
  v13 = sub_10017CC60((v0 + 1336), v11);
  *(v0 + 2096) = v4;
  v14 = sub_1000060B4(&qword_1006C1448, &qword_1006C1438);
  v15 = sub_100254E7C(v13, v10, v9 & 1, v8, v11, v14, v12);

  v16 = v15;
  if (v15 >> 62)
  {
    v17 = _CocoaArrayWrapper.endIndex.getter();
    v16 = v15;
    if (v17)
    {
      goto LABEL_8;
    }

LABEL_18:

    v22 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v17)
  {
    goto LABEL_18;
  }

LABEL_8:
  v18 = v16;
  v53 = _swiftEmptyArrayStorage;
  result = sub_1001895C4(0, v17 & ~(v17 >> 63), 0);
  if (v17 < 0)
  {
    __break(1u);
    return result;
  }

  v20 = 0;
  v21 = *(v0 + 2280);
  v22 = v53;
  v23 = v18;
  v51 = v18 & 0xC000000000000001;
  v24 = v18;
  v25 = v17;
  do
  {
    if (v51)
    {
      v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v26 = *(v23 + 8 * v20 + 32);
    }

    v27 = v26;
    (*(v21 + 16))(*(v0 + 2288), v26 + OBJC_IVAR____TtC11MobileNotesP33_10D1876D3C9D5070F0B0F84A41ABC8CB16NoteSearchResult_id, *(v0 + 2272));

    v53 = v22;
    v29 = *(v22 + 2);
    v28 = *(v22 + 3);
    if (v29 >= v28 >> 1)
    {
      sub_1001895C4(v28 > 1, v29 + 1, 1);
      v22 = v53;
    }

    v30 = *(v0 + 2288);
    v31 = *(v0 + 2272);
    ++v20;
    *(v22 + 2) = v29 + 1;
    (*(v21 + 32))(&v22[((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v29], v30, v31);
    v23 = v24;
  }

  while (v25 != v20);

LABEL_19:
  *(v0 + 2648) = v22;
  AppDependency.wrappedValue.getter();
  Logger.init(subsystem:category:)();

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 134217984;
    *(v34 + 4) = *(v22 + 2);

    _os_log_impl(&_mh_execute_header, v32, v33, "VisibleNotesQuery: found %ld matching note(s)", v34, 0xCu);
  }

  else
  {
  }

  (*(v0 + 2592))(*(v0 + 2208), *(v0 + 2176));
  AppDependency.wrappedValue.getter();
  Logger.init(subsystem:category:)();

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();

  v37 = os_log_type_enabled(v35, v36);
  v38 = *(v0 + 2592);
  if (v37)
  {
    v52 = *(v0 + 2592);
    v50 = *(v0 + 2200);
    v39 = *(v0 + 2176);
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v53 = v41;
    *v40 = 136315138;
    v42 = Array.description.getter();
    v44 = sub_100009D88(v42, v43, &v53);

    *(v40 + 4) = v44;
    _os_log_impl(&_mh_execute_header, v35, v36, "VisibleNotesQuery: matching note IDs: %s", v40, 0xCu);
    sub_100009F60(v41);

    v52(v50, v39);
  }

  else
  {
    v45 = *(v0 + 2200);
    v46 = *(v0 + 2176);

    v38(v45, v46);
  }

  AppDependency.wrappedValue.getter();
  v47 = *(v0 + 2104);
  *(v0 + 2656) = v47;
  v48 = *(v0 + 2696);
  v49 = swift_task_alloc();
  *(v0 + 2664) = v49;
  *v49 = v0;
  v49[1] = sub_10025D0DC;

  return sub_100186464(v22, v47, v48);
}

uint64_t sub_10025D0DC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[217] = v2;
  v4[218] = a1;
  v4[219] = v1;
  v4[334] = v1;

  if (v1)
  {
    v5 = sub_10025DDE0;
    v6 = v4 + 82;
    v7 = v4 + 225;
    v8 = v4 + 220;
  }

  else
  {
    v5 = sub_10025D24C;
    v6 = v4 + 82;
    v7 = v4 + 225;
    v8 = v4 + 172;
  }

  return _swift_asyncLet_finish(v6, v7, v5, v8);
}

uint64_t sub_10025D2A4()
{
  v1 = *(v0 + 2584);
  v2 = *(v0 + 2576);
  v3 = *(v0 + 2432);
  v4 = *(v0 + 2424);
  v5 = *(v0 + 2416);
  v6 = *(v0 + 2408);
  v7 = *(v0 + 2400);

  v10 = *(v0 + 1744);
  sub_100009F60(v0 + 1336);
  sub_10000C840(&unk_10053CC58);
  sub_10000C840(&unk_10053CC70);

  v8 = *(v0 + 8);

  return v8(v10);
}

uint64_t sub_10025D478()
{
  v1 = *(v0 + 2432);
  v2 = *(v0 + 2424);
  v3 = *(v0 + 2416);
  v4 = *(v0 + 2408);
  v5 = *(v0 + 2400);

  sub_100009F60(v0 + 1336);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10025D5EC()
{
  v1 = *(v0 + 2432);
  v2 = *(v0 + 2424);
  v3 = *(v0 + 2416);
  v4 = *(v0 + 2408);
  v5 = *(v0 + 2400);

  sub_100009F60(v0 + 1336);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10025D7B8()
{
  AppDependency.wrappedValue.getter();
  Logger.init(subsystem:category:)();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    v5 = _convertErrorToNSError(_:)();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "VisibleNotesQuery: error fetching notes: %@", v3, 0xCu);
    sub_1000073B4(v4, &qword_1006C1440);
  }

  v6 = v0[324];
  v18 = v0[322];
  v19 = v0[323];
  v7 = v0[304];
  v8 = v0[303];
  v16 = v0[302];
  v17 = v0[301];
  v9 = v0[300];
  v10 = v1;
  v11 = v0[299];
  v12 = v0[274];
  v13 = v0[272];

  v6(v12, v13);
  swift_willThrow();

  sub_100009F60((v0 + 167));

  v14 = v0[1];

  return v14();
}

uint64_t sub_10025DAF8()
{
  AppDependency.wrappedValue.getter();
  Logger.init(subsystem:category:)();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    v5 = _convertErrorToNSError(_:)();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "VisibleNotesQuery: error fetching notes: %@", v3, 0xCu);
    sub_1000073B4(v4, &qword_1006C1440);
  }

  v6 = v0[324];
  v18 = v0[322];
  v19 = v0[323];
  v7 = v0[304];
  v8 = v0[303];
  v16 = v0[302];
  v17 = v0[301];
  v9 = v0[300];
  v10 = v1;
  v11 = v0[299];
  v12 = v0[274];
  v13 = v0[272];

  v6(v12, v13);
  swift_willThrow();

  sub_100009F60((v0 + 167));

  v14 = v0[1];

  return v14();
}

uint64_t sub_10025DE38()
{
  AppDependency.wrappedValue.getter();
  Logger.init(subsystem:category:)();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    v5 = _convertErrorToNSError(_:)();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "VisibleNotesQuery: error fetching notes: %@", v3, 0xCu);
    sub_1000073B4(v4, &qword_1006C1440);
  }

  v6 = v0[324];
  v18 = v0[322];
  v19 = v0[323];
  v7 = v0[304];
  v8 = v0[303];
  v16 = v0[302];
  v17 = v0[301];
  v9 = v0[300];
  v10 = v1;
  v11 = v0[299];
  v12 = v0[274];
  v13 = v0[272];

  v6(v12, v13);
  swift_willThrow();

  sub_100009F60((v0 + 167));

  v14 = v0[1];

  return v14();
}

uint64_t sub_10025E120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  *(v4 + 40) = *v3;
  *(v4 + 56) = *(v3 + 16);
  *(v4 + 88) = *(v3 + 24);
  *(v4 + 92) = *(v3 + 28);
  return _swift_task_switch(sub_10025E164, 0, 0);
}

uint64_t sub_10025E164()
{
  v2 = v0[3];
  v1 = v0[4];
  sub_10015DA04(&unk_1006C13C8);
  v3 = *(type metadata accessor for VisibleNotesQuery.Comparator(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  v0[8] = v5;
  *(v5 + 16) = xmmword_100531E30;
  v6 = (v5 + v4);
  KeyPath = swift_getKeyPath();
  v8 = swift_getKeyPath();
  *v6 = KeyPath;
  v6[1] = v8;
  v6[2] = v2;
  v6[3] = v1;
  swift_storeEnumTagMultiPayload();

  v9 = swift_task_alloc();
  v0[9] = v9;
  *v9 = v0;
  v9[1] = sub_10025E37C;
  v10 = v0[6];
  v11 = v0[7];
  v12 = v0[5];

  return VisibleNotesQuery.entities(matching:mode:sortedBy:limit:)(v5, 0, _swiftEmptyArrayStorage, 0, 1, v12, v10, v11);
}

uint64_t sub_10025E37C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100258980, 0, 0);
  }

  else
  {
    v6 = *(v4 + 16);

    *v6 = a1;
    v7 = *(v5 + 8);

    return v7();
  }
}

uint64_t sub_10025E4DC()
{
  v0 = sub_10015DA04(&qword_1006C1478);
  sub_100025918(v0, static VisibleNotesQuery.sortingOptions);
  sub_10002597C(v0, static VisibleNotesQuery.sortingOptions);
  type metadata accessor for NoteEntity(0);
  sub_100271144(&qword_1006BCAD0, type metadata accessor for NoteEntity);
  return EntityQuerySortingOptions.init(content:)();
}

uint64_t sub_10025E598()
{
  v0 = sub_10015DA04(&unk_1006C19B0);
  v36 = *(v0 - 8);
  v37 = v0 - 8;
  v1 = v36;
  v34 = v36;
  v2 = __chkstk_darwin(v0);
  v35 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v39 = v31 - v5;
  v6 = __chkstk_darwin(v4);
  v38 = v31 - v7;
  v8 = __chkstk_darwin(v6);
  v10 = v31 - v9;
  __chkstk_darwin(v8);
  v40 = v31 - v11;
  swift_getKeyPath();
  v12 = sub_100271144(&qword_1006BCAD0, type metadata accessor for NoteEntity);
  sub_1000060B4(&qword_1006C2FA0, &unk_1006C1870);
  EntityQuerySortableByProperty.init<A>(_:)();
  v13 = type metadata accessor for NoteEntity(0);
  static EntityQuerySortingOptionsBuilder.buildExpression(_:)();
  v14 = *(v1 + 8);
  v33 = v10;
  v14(v10, v0);
  swift_getKeyPath();
  sub_1000060B4(&qword_1006C19C0, &unk_1006C52A0);
  v15 = v38;
  EntityQuerySortableByProperty.init<A>(_:)();
  static EntityQuerySortingOptionsBuilder.buildExpression(_:)();
  v14(v15, v0);
  swift_getKeyPath();
  v16 = v39;
  EntityQuerySortableByProperty.init<A>(_:)();
  v31[1] = v13;
  static EntityQuerySortingOptionsBuilder.buildExpression(_:)();
  v14(v16, v0);
  v32 = v14;
  swift_getKeyPath();
  sub_1000060B4(&qword_1006C19C8, &unk_1006C5290);
  v17 = v35;
  v31[2] = v12;
  EntityQuerySortableByProperty.init<A>(_:)();
  static EntityQuerySortingOptionsBuilder.buildExpression(_:)();
  v18 = v0;
  v14(v17, v0);
  sub_10015DA04(&unk_1006C19D0);
  v19 = *(v36 + 72);
  v20 = v34;
  v21 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_100539C30;
  v23 = v22 + v21;
  v24 = *(v20 + 16);
  v24(v23, v40, v0);
  v25 = v33;
  v24(v23 + v19, v33, v0);
  v26 = v38;
  v24(v23 + 2 * v19, v38, v18);
  v27 = v39;
  v24(v23 + 3 * v19, v39, v18);
  v28 = static EntityQuerySortingOptionsBuilder.buildBlock(_:)();

  v29 = v32;
  v32(v27, v18);
  v29(v26, v18);
  v29(v25, v18);
  v29(v40, v18);
  return v28;
}

uint64_t sub_10025EA44@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for NoteEntity(0);
  result = EntityProperty.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10025EA88@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for NoteEntity(0);
  result = EntityProperty.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10025EACC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for NoteEntity(0);
  result = EntityProperty.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10025EB10@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for NoteEntity(0);
  result = EntityProperty.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t VisibleNotesQuery.sortingOptions.unsafeMutableAddressor()
{
  if (qword_1006BC680 != -1)
  {
    swift_once();
  }

  v0 = sub_10015DA04(&qword_1006C1478);

  return sub_10002597C(v0, static VisibleNotesQuery.sortingOptions);
}

uint64_t static VisibleNotesQuery.sortingOptions.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006BC680 != -1)
  {
    swift_once();
  }

  v2 = sub_10015DA04(&qword_1006C1478);
  v3 = sub_10002597C(v2, static VisibleNotesQuery.sortingOptions);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10025EC78()
{
  v0 = sub_10015DA04(&unk_1006C1480);
  sub_100025918(v0, static VisibleNotesQuery.properties);
  sub_10002597C(v0, static VisibleNotesQuery.properties);
  type metadata accessor for NoteEntity(0);
  type metadata accessor for VisibleNotesQuery.Comparator(0);
  sub_100271144(&qword_1006BCAD0, type metadata accessor for NoteEntity);
  return EntityQueryProperties.init(properties:)();
}

uint64_t sub_10025ED4C()
{
  sub_10015DA04(&qword_1006C1830);
  swift_getKeyPath();
  EntityQueryProperty.__allocating_init<>(_:comparators:)();
  sub_100271144(&qword_1006BCAD0, type metadata accessor for NoteEntity);
  v0 = static EntityQueryPropertiesBuilder.buildExpression(_:)();

  sub_10015DA04(&qword_1006C1838);
  swift_getKeyPath();

  EntityQueryProperty.__allocating_init<>(_:comparators:)();
  v1 = static EntityQueryPropertiesBuilder.buildExpression(_:)();

  swift_getKeyPath();

  EntityQueryProperty.__allocating_init<>(_:comparators:)();
  v2 = static EntityQueryPropertiesBuilder.buildExpression(_:)();

  sub_10015DA04(&qword_1006C1840);
  swift_getKeyPath();

  EntityQueryProperty.__allocating_init<>(_:comparators:)();
  v3 = static EntityQueryPropertiesBuilder.buildExpression(_:)();

  sub_10015DA04(&qword_1006C1848);
  swift_getKeyPath();

  EntityQueryProperty.__allocating_init<>(_:comparators:)();
  v4 = static EntityQueryPropertiesBuilder.buildExpression(_:)();

  sub_10015DA04(&qword_1006C1850);
  swift_getKeyPath();

  EntityQueryProperty.__allocating_init<>(_:comparators:)();
  v5 = static EntityQueryPropertiesBuilder.buildExpression(_:)();

  sub_10015DA04(&unk_1006BD390);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10053CAF0;
  *(v6 + 32) = v0;
  *(v6 + 40) = v1;
  *(v6 + 48) = v2;
  *(v6 + 56) = v3;
  *(v6 + 64) = v4;
  *(v6 + 72) = v5;
  type metadata accessor for NoteEntity(0);
  type metadata accessor for VisibleNotesQuery.Comparator(0);

  v7 = static EntityQueryPropertiesBuilder.buildBlock(_:)();

  return v7;
}

uint64_t sub_10025F0C4()
{
  v0 = sub_10015DA04(&qword_1006C1908);
  v26 = *(v0 - 8);
  v31 = v26;
  v1 = __chkstk_darwin(v0);
  v34 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __chkstk_darwin(v1);
  v32 = &v25 - v4;
  v5 = __chkstk_darwin(v3);
  v27 = &v25 - v6;
  v7 = __chkstk_darwin(v5);
  v28 = &v25 - v8;
  v9 = __chkstk_darwin(v7);
  v29 = &v25 - v10;
  v11 = __chkstk_darwin(v9);
  v30 = &v25 - v12;
  __chkstk_darwin(v11);
  v33 = &v25 - v13;
  sub_10015DA04(&qword_1006C1910);
  swift_allocObject();
  EqualToComparator.init(mappingTransform:)();
  type metadata accessor for NoteEntity(0);
  sub_100271144(&qword_1006BCAD0, type metadata accessor for NoteEntity);
  static EntityQueryComparatorsBuilder.buildExpression(_:)();

  sub_10015DA04(&qword_1006C1918);
  swift_allocObject();
  IsBetweenComparator.init(mappingTransform:)();
  sub_1000060B4(&qword_1006C1920, &unk_1006C1710);
  static EntityQueryComparatorsBuilder.buildExpression<>(_:)();

  sub_10015DA04(&qword_1006C1928);
  swift_allocObject();
  NotEqualToComparator.init(mappingTransform:)();
  static EntityQueryComparatorsBuilder.buildExpression(_:)();

  sub_10015DA04(&qword_1006C1930);
  swift_allocObject();
  GreaterThanComparator.init(mappingTransform:)();
  static EntityQueryComparatorsBuilder.buildExpression<>(_:)();

  sub_10015DA04(&qword_1006C1938);
  swift_allocObject();
  GreaterThanOrEqualToComparator.init(mappingTransform:)();
  static EntityQueryComparatorsBuilder.buildExpression<>(_:)();

  sub_10015DA04(&qword_1006C1940);
  swift_allocObject();
  LessThanComparator.init(mappingTransform:)();
  static EntityQueryComparatorsBuilder.buildExpression<>(_:)();

  sub_10015DA04(&qword_1006C1948);
  swift_allocObject();
  LessThanOrEqualToComparator.init(mappingTransform:)();
  static EntityQueryComparatorsBuilder.buildExpression<>(_:)();

  sub_10015DA04(&unk_1006C1950);
  v14 = *(v26 + 72);
  v15 = v31;
  v16 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100539C50;
  v18 = v17 + v16;
  v19 = *(v15 + 16);
  v19(v18, v33, v0);
  v19(v18 + v14, v30, v0);
  v19(v18 + 2 * v14, v29, v0);
  v19(v18 + 3 * v14, v28, v0);
  v19(v18 + 4 * v14, v27, v0);
  v20 = v32;
  v19(v18 + 5 * v14, v32, v0);
  v21 = v34;
  v19(v18 + 6 * v14, v34, v0);
  sub_10015DA04(&unk_1006C52A0);
  sub_10015DA04(&unk_1006C1710);
  type metadata accessor for VisibleNotesQuery.Comparator(0);
  sub_10001DDA4();
  v22 = static EntityQueryComparatorsBuilder.buildBlock(_:)();

  v23 = *(v31 + 8);
  v23(v21, v0);
  v23(v20, v0);
  v23(v27, v0);
  v23(v28, v0);
  v23(v29, v0);
  v23(v30, v0);
  v23(v33, v0);
  return v22;
}

uint64_t static VisibleNotesQuery.ComparatorKeyPath.creationDate.getter()
{
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  return KeyPath;
}

uint64_t sub_10025F874@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v5 = swift_getKeyPath();
  a2[3] = sub_10015DA04(&qword_1006C1970);
  a2[4] = sub_1000060B4(&qword_1006C1978, &qword_1006C1970);
  *a2 = KeyPath;
  a2[1] = v5;
  a2[8] = sub_10015DA04(&unk_1006C1710);
  v6 = sub_100180240(a2 + 5);
  sub_100006038(a1, v6, &unk_1006C1710);
  type metadata accessor for VisibleNotesQuery.Comparator(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10025F9B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v5 = swift_getKeyPath();
  a2[3] = sub_10015DA04(&qword_1006C1970);
  a2[4] = sub_1000060B4(&qword_1006C1978, &qword_1006C1970);
  *a2 = KeyPath;
  a2[1] = v5;
  v6 = type metadata accessor for Date();
  a2[8] = v6;
  v7 = sub_100180240(a2 + 5);
  (*(*(v6 - 8) + 16))(v7, a1, v6);
  type metadata accessor for VisibleNotesQuery.Comparator(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10025FAF8()
{
  v0 = sub_10015DA04(&qword_1006C1980);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - v2;
  sub_10015DA04(&qword_1006C1988);
  swift_allocObject();
  EqualToComparator.init(mappingTransform:)();
  type metadata accessor for NoteEntity(0);
  sub_100271144(&qword_1006BCAD0, type metadata accessor for NoteEntity);
  static EntityQueryComparatorsBuilder.buildExpression(_:)();

  sub_10015DA04(&unk_1006C1990);
  v4 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100531E30;
  (*(v1 + 16))(v5 + v4, v3, v0);
  sub_10015DA04(&unk_1006C5290);
  sub_10015DA04(&unk_1006BF9D0);
  type metadata accessor for VisibleNotesQuery.Comparator(0);
  sub_10001DAC0();
  v6 = static EntityQueryComparatorsBuilder.buildBlock(_:)();

  (*(v1 + 8))(v3, v0);
  return v6;
}

uint64_t sub_10025FD68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100006038(a1, a2, &unk_1006BF9D0);
  type metadata accessor for VisibleNotesQuery.Comparator(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10025FDC4()
{
  v0 = sub_10015DA04(&qword_1006C1908);
  v26 = *(v0 - 8);
  v31 = v26;
  v1 = __chkstk_darwin(v0);
  v34 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __chkstk_darwin(v1);
  v32 = &v25 - v4;
  v5 = __chkstk_darwin(v3);
  v27 = &v25 - v6;
  v7 = __chkstk_darwin(v5);
  v28 = &v25 - v8;
  v9 = __chkstk_darwin(v7);
  v29 = &v25 - v10;
  v11 = __chkstk_darwin(v9);
  v30 = &v25 - v12;
  __chkstk_darwin(v11);
  v33 = &v25 - v13;
  sub_10015DA04(&qword_1006C1910);
  swift_allocObject();
  EqualToComparator.init(mappingTransform:)();
  type metadata accessor for NoteEntity(0);
  sub_100271144(&qword_1006BCAD0, type metadata accessor for NoteEntity);
  static EntityQueryComparatorsBuilder.buildExpression(_:)();

  sub_10015DA04(&qword_1006C1918);
  swift_allocObject();
  IsBetweenComparator.init(mappingTransform:)();
  sub_1000060B4(&qword_1006C1920, &unk_1006C1710);
  static EntityQueryComparatorsBuilder.buildExpression<>(_:)();

  sub_10015DA04(&qword_1006C1928);
  swift_allocObject();
  NotEqualToComparator.init(mappingTransform:)();
  static EntityQueryComparatorsBuilder.buildExpression(_:)();

  sub_10015DA04(&qword_1006C1930);
  swift_allocObject();
  GreaterThanComparator.init(mappingTransform:)();
  static EntityQueryComparatorsBuilder.buildExpression<>(_:)();

  sub_10015DA04(&qword_1006C1938);
  swift_allocObject();
  GreaterThanOrEqualToComparator.init(mappingTransform:)();
  static EntityQueryComparatorsBuilder.buildExpression<>(_:)();

  sub_10015DA04(&qword_1006C1940);
  swift_allocObject();
  LessThanComparator.init(mappingTransform:)();
  static EntityQueryComparatorsBuilder.buildExpression<>(_:)();

  sub_10015DA04(&qword_1006C1948);
  swift_allocObject();
  LessThanOrEqualToComparator.init(mappingTransform:)();
  static EntityQueryComparatorsBuilder.buildExpression<>(_:)();

  sub_10015DA04(&unk_1006C1950);
  v14 = *(v26 + 72);
  v15 = v31;
  v16 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100539C50;
  v18 = v17 + v16;
  v19 = *(v15 + 16);
  v19(v18, v33, v0);
  v19(v18 + v14, v30, v0);
  v19(v18 + 2 * v14, v29, v0);
  v19(v18 + 3 * v14, v28, v0);
  v19(v18 + 4 * v14, v27, v0);
  v20 = v32;
  v19(v18 + 5 * v14, v32, v0);
  v21 = v34;
  v19(v18 + 6 * v14, v34, v0);
  sub_10015DA04(&unk_1006C52A0);
  sub_10015DA04(&unk_1006C1710);
  type metadata accessor for VisibleNotesQuery.Comparator(0);
  sub_10001DDA4();
  v22 = static EntityQueryComparatorsBuilder.buildBlock(_:)();

  v23 = *(v31 + 8);
  v23(v21, v0);
  v23(v20, v0);
  v23(v27, v0);
  v23(v28, v0);
  v23(v29, v0);
  v23(v30, v0);
  v23(v33, v0);
  return v22;
}

uint64_t static VisibleNotesQuery.ComparatorKeyPath.modificationDate.getter()
{
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  return KeyPath;
}

uint64_t sub_10026055C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  KeyPath = swift_getKeyPath();
  v7 = swift_getKeyPath();
  a3[3] = sub_10015DA04(&qword_1006C1970);
  a3[4] = sub_1000060B4(&qword_1006C1978, &qword_1006C1970);
  *a3 = KeyPath;
  a3[1] = v7;
  v8 = type metadata accessor for Date();
  a3[8] = v8;
  v9 = sub_100180240(a3 + 5);
  v10 = *(*(v8 - 8) + 16);
  v10(v9, a1, v8);
  a3[12] = v8;
  v11 = sub_100180240(a3 + 9);
  v10(v11, a2, v8);
  type metadata accessor for VisibleNotesQuery.Comparator(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10026070C()
{
  v0 = sub_10015DA04(&qword_1006C18C0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - v2;
  sub_10015DA04(&qword_1006C18C8);
  swift_allocObject();
  sub_1000060B4(&unk_1006C18D0, &unk_1006C5400);
  ContainsComparator.init<>(mappingTransform:)();
  type metadata accessor for NoteEntity(0);
  sub_100271144(&qword_1006BCAD0, type metadata accessor for NoteEntity);
  static EntityQueryComparatorsBuilder.buildExpression<>(_:)();

  sub_10015DA04(&unk_1006C18E0);
  v4 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100531E30;
  (*(v1 + 16))(v5 + v4, v3, v0);
  sub_10015DA04(&unk_1006BCD60);
  sub_10015DA04(&unk_1006C5400);
  type metadata accessor for VisibleNotesQuery.Comparator(0);
  sub_10001D920();
  v6 = static EntityQueryComparatorsBuilder.buildBlock(_:)();

  (*(v1 + 8))(v3, v0);
  return v6;
}

uint64_t sub_1002609BC@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for AttributedString.CharacterView();
  __chkstk_darwin(v2);
  AttributedString.characters.getter();
  sub_100271144(&qword_1006C1900, &type metadata accessor for AttributedString.CharacterView);
  *a1 = String.init<A>(_:)();
  a1[1] = v3;
  type metadata accessor for VisibleNotesQuery.Comparator(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100260AA0()
{
  v0 = sub_10015DA04(&qword_1006C1880);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - v2;
  sub_10015DA04(&qword_1006C1888);
  swift_allocObject();
  sub_100271820();
  sub_1000060B4(&qword_1006C18A8, &qword_1006C5430);
  sub_100271144(&qword_1006C18B0, type metadata accessor for TagEntity);
  ContainsComparator.init<>(mappingTransform:)();
  type metadata accessor for NoteEntity(0);
  sub_100271144(&qword_1006BCAD0, type metadata accessor for NoteEntity);
  static EntityQueryComparatorsBuilder.buildExpression<A>(_:)();

  sub_10015DA04(&qword_1006C18B8);
  v4 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100531E30;
  (*(v1 + 16))(v5 + v4, v3, v0);
  sub_10015DA04(&unk_1006BCD70);
  sub_10015DA04(&qword_1006C5430);
  type metadata accessor for VisibleNotesQuery.Comparator(0);
  sub_10001DCF0();
  v6 = static EntityQueryComparatorsBuilder.buildBlock(_:)();

  (*(v1 + 8))(v3, v0);
  return v6;
}

uint64_t sub_100260D8C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = swift_allocObject();
  v5 = (a1 + *(type metadata accessor for TagEntity() + 24));
  v6 = v5[1];
  *(v4 + 16) = *v5;
  *(v4 + 24) = v6;
  *a2 = v4;
  v7 = enum case for ICQueryType.tag(_:);
  v8 = type metadata accessor for ICQueryType();
  (*(*(v8 - 8) + 104))(a2, v7, v8);
  type metadata accessor for VisibleNotesQuery.Comparator(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_100260E60()
{
  v0 = sub_10015DA04(&qword_1006C1858);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - v2;
  sub_10015DA04(&qword_1006C1860);
  swift_allocObject();
  ContainsComparator.init<>(mappingTransform:)();
  type metadata accessor for NoteEntity(0);
  sub_100271144(&qword_1006BCAD0, type metadata accessor for NoteEntity);
  static EntityQueryComparatorsBuilder.buildExpression(_:)();

  sub_10015DA04(&qword_1006C1868);
  v4 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100531E30;
  (*(v1 + 16))(v5 + v4, v3, v0);
  sub_10015DA04(&unk_1006C1870);
  type metadata accessor for VisibleNotesQuery.Comparator(0);
  sub_10001CAF8();
  v6 = static EntityQueryComparatorsBuilder.buildBlock(_:)();

  (*(v1 + 8))(v3, v0);
  return v6;
}

uint64_t sub_1002610B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  KeyPath = swift_getKeyPath();
  v7 = swift_getKeyPath();
  *a3 = KeyPath;
  a3[1] = v7;
  a3[2] = a1;
  a3[3] = a2;
  type metadata accessor for VisibleNotesQuery.Comparator(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t VisibleNotesQuery.properties.unsafeMutableAddressor()
{
  if (qword_1006BC688 != -1)
  {
    swift_once();
  }

  v0 = sub_10015DA04(&unk_1006C1480);

  return sub_10002597C(v0, static VisibleNotesQuery.properties);
}

uint64_t static VisibleNotesQuery.properties.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006BC688 != -1)
  {
    swift_once();
  }

  v2 = sub_10015DA04(&unk_1006C1480);
  v3 = sub_10002597C(v2, static VisibleNotesQuery.properties);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100261258@<X0>(_BYTE *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_10015DA04(&unk_1006C1A10);
  __chkstk_darwin(v4 - 8);
  LOBYTE(a1) = *a1;
  sub_1000054A4(0, &qword_1006C13E8);
  sub_10037A1DC(a1);
  sub_1000054A4(0, &qword_1006C1420);
  result = NSSortDescriptor.init<A>(_:)();
  *a2 = result;
  return result;
}

uint64_t sub_10026133C@<X0>(_BYTE *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_10015DA04(&qword_1006C1A08);
  __chkstk_darwin(v4 - 8);
  LOBYTE(a1) = *a1;
  sub_1000054A4(0, &qword_1006C13E8);
  sub_10037A200(a1);
  sub_1000054A4(0, &qword_1006C1430);
  result = NSSortDescriptor.init<A>(_:)();
  *a2 = result;
  return result;
}

uint64_t sub_100261420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_100261444, 0, 0);
}

uint64_t sub_100261444()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_allocObject();
  v0[5] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = v2;
  v5 = v1;
  v6 = swift_task_alloc();
  v0[6] = v6;
  v7 = sub_10015DA04(&qword_1006C1438);
  *v6 = v0;
  v6[1] = sub_100261544;
  v8 = v0[2];

  return NSManagedObjectContext.perform<A>(_:)(v8, sub_1002718F0, v3, v7);
}

uint64_t sub_100261544()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100261680, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100261680()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1002616E4@<X0>(void *a1@<X8>)
{
  sub_1000054A4(0, &qword_1006C1420);
  result = NSManagedObjectContext.fetch<A>(_:)();
  if (!v1)
  {
    v4 = result;
    if (result >> 62)
    {
      goto LABEL_15;
    }

    for (i = *((result & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v10 = a1;
      result = specialized ContiguousArray.reserveCapacity(_:)();
      if (i < 0)
      {
        __break(1u);
        return result;
      }

      v6 = 0;
      a1 = (v4 & 0xC000000000000001);
      while (1)
      {
        if (a1)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          goto LABEL_7;
        }

        if ((v6 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v7 = *(v4 + 8 * v6 + 32);
LABEL_7:
        v8 = v7;
        ++v6;
        v9 = objc_allocWithZone(type metadata accessor for NoteSearchResult(0));
        sub_10026E668(v8, v9, &qword_1006C1420);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        if (i == v6)
        {

          *v10 = _swiftEmptyArrayStorage;
          return result;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      ;
    }

    *a1 = _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_1002618B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_1002618DC, 0, 0);
}

uint64_t sub_1002618DC()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_allocObject();
  v0[5] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = v2;
  v5 = v1;
  v6 = swift_task_alloc();
  v0[6] = v6;
  v7 = sub_10015DA04(&qword_1006C1438);
  *v6 = v0;
  v6[1] = sub_1002619DC;
  v8 = v0[2];

  return NSManagedObjectContext.perform<A>(_:)(v8, sub_1002718D4, v3, v7);
}

uint64_t sub_1002619DC()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100271F5C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

unint64_t sub_100261B18@<X0>(void *a1@<X8>)
{
  sub_1000054A4(0, &qword_1006C1430);
  result = NSManagedObjectContext.fetch<A>(_:)();
  if (!v1)
  {
    v4 = result;
    v5 = result & 0xFFFFFFFFFFFFFF8;
    if (result >> 62)
    {
LABEL_20:
      v6 = _CocoaArrayWrapper.endIndex.getter();
      v11 = a1;
      if (v6)
      {
LABEL_4:
        a1 = 0;
        do
        {
          v7 = a1;
          while (1)
          {
            if ((v4 & 0xC000000000000001) != 0)
            {
              v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v7 >= *(v5 + 16))
              {
                goto LABEL_19;
              }

              v8 = *(v4 + 8 * v7 + 32);
            }

            v9 = v8;
            a1 = (v7 + 1);
            if (__OFADD__(v7, 1))
            {
              __break(1u);
LABEL_19:
              __break(1u);
              goto LABEL_20;
            }

            if (![v8 isHiddenFromSearch])
            {
              break;
            }

            ++v7;
            if (a1 == v6)
            {
              goto LABEL_21;
            }
          }

          v10 = objc_allocWithZone(type metadata accessor for NoteSearchResult(0));
          sub_10026E668(v9, v10, &qword_1006C1430);
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }

        while (a1 != v6);
      }
    }

    else
    {
      v6 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      v11 = a1;
      if (v6)
      {
        goto LABEL_4;
      }
    }

LABEL_21:

    *v11 = _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_100261D14(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v7 + 16) = a1;
  v9 = *v6;
  v10 = v6[1];
  v11 = v6[2];
  v12 = swift_task_alloc();
  *(v7 + 24) = v12;
  *v12 = v7;
  v12[1] = sub_100189314;

  return VisibleNotesQuery.entities(matching:mode:sortedBy:limit:)(a2, a3 & 1, a4, a5, a6 & 1, v9, v10, v11);
}

void sub_100261E78(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a3 = v6;
  a3[1] = v8;
}

void sub_100261EDC(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8))
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setTitle:?];
}

uint64_t sub_100261F70@<X0>(id *a1@<X0>, SEL *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = type metadata accessor for Date();
  v8 = *(*(v7 - 8) + 56);

  return v8(a3, v6, 1, v7);
}

void sub_10026201C(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v8 = sub_10015DA04(&unk_1006C1710);
  __chkstk_darwin(v8 - 8);
  v10 = &v15 - v9;
  sub_100006038(a1, &v15 - v9, &unk_1006C1710);
  v11 = *a2;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  isa = 0;
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v13 + 8))(v10, v12);
  }

  [v11 *a5];
}

uint64_t sub_100262168(uint64_t a1, char a2)
{
  v4 = type metadata accessor for ICQueryType();
  v5 = *(v4 - 8);
  v104 = v4;
  v105 = v5;
  __chkstk_darwin(v4);
  v102 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FolderEntity();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v101 = &v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10015DA04(&qword_1006C1A28);
  __chkstk_darwin(v10);
  v12 = (&v100 - v11);
  v13 = sub_10015DA04(&qword_1006BEA90);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v100 - v18;
  v20 = __chkstk_darwin(v17);
  v103 = &v100 - v21;
  __chkstk_darwin(v20);
  v23 = &v100 - v22;
  if (a2)
  {
    v24 = enum case for ManagedEntityContextType.modern(_:);
    v25 = type metadata accessor for ManagedEntityContextType();
    v100 = v7;
    v106 = v12;
    v26 = v25;
    v27 = v8;
    v28 = v16;
    v29 = v19;
    v30 = a2;
    v31 = *(v25 - 8);
    (*(v31 + 104))(v23, v24, v25);
    v32 = v26;
    v7 = v100;
    (*(v31 + 56))(v23, 0, 1, v32);
    a2 = v30;
    v19 = v29;
    v16 = v28;
    v8 = v27;
    v12 = v106;
  }

  else
  {
    sub_100006038(a1, &v100 - v22, &qword_1006BEA90);
  }

  v33 = *(v10 + 48);
  sub_100270FE4(v107, v12, type metadata accessor for VisibleNotesQuery.Comparator);
  sub_100006038(a1, v12 + v33, &qword_1006BEA90);
  type metadata accessor for VisibleNotesQuery.Comparator(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload > 8)
    {
      if (EnumCaseMultiPayload != 9 && EnumCaseMultiPayload != 10)
      {
        sub_100192680(v12, v110);
        sub_10001FA64((v12 + 40), v109);
        sub_10001FA64((v12 + 72), v108);
        v36 = v12;
        v75 = v111;
        v76 = v112;
        sub_10017CC60(v110, v111);
        v77 = sub_10037A3DC(v23, v75, v76);
        v79 = v78;
        sub_10015DA04(&qword_1006BE850);
        v80 = swift_allocObject();
        *(v80 + 16) = xmmword_100539C20;
        *(v80 + 32) = v77;
        *(v80 + 40) = v79;
        *(v80 + 88) = &type metadata for String;
        *(v80 + 56) = &type metadata for String;
        *(v80 + 64) = v77;
        *(v80 + 72) = v79;
        sub_10000A2A0(v109, v80 + 96);
        *(v80 + 152) = &type metadata for String;
        *(v80 + 128) = v77;
        *(v80 + 136) = v79;
        sub_10000A2A0(v108, v80 + 160);
        swift_bridgeObjectRetain_n();
        v81 = String._bridgeToObjectiveC()();
        isa = Array._bridgeToObjectiveC()().super.isa;

        v38 = [objc_opt_self() predicateWithFormat:v81 argumentArray:isa];

        sub_100009F60(v108);
        sub_100009F60(v109);
        v74 = v23;
        goto LABEL_33;
      }
    }

    else if (EnumCaseMultiPayload == 6)
    {
LABEL_31:
      sub_100192680(v12, v110);
      sub_10001FA64((v12 + 40), v109);
      v36 = v12;
      v68 = v111;
      v69 = v112;
      sub_10017CC60(v110, v111);
      v70 = sub_10037A3DC(v23, v68, v69);
      v72 = v71;
      sub_10015DA04(&qword_1006BE850);
      v73 = swift_allocObject();
      *(v73 + 16) = xmmword_100535E30;
      *(v73 + 56) = &type metadata for String;
      *(v73 + 32) = v70;
      *(v73 + 40) = v72;
      sub_10000A2A0(v109, v73 + 64);
      v45 = String._bridgeToObjectiveC()();
      v46.super.isa = Array._bridgeToObjectiveC()().super.isa;

      v47 = [objc_opt_self() predicateWithFormat:v45 argumentArray:v46.super.isa];
      goto LABEL_32;
    }

    sub_100192680(v12, v110);
    sub_10001FA64((v12 + 40), v109);
    v36 = v12;
    v39 = v111;
    v40 = v112;
    sub_10017CC60(v110, v111);
    v41 = sub_10037A3DC(v23, v39, v40);
    v43 = v42;
    sub_10015DA04(&qword_1006BE850);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_100539C40;
    *(v44 + 32) = v41;
    *(v44 + 40) = v43;
    *(v44 + 88) = &type metadata for String;
    *(v44 + 56) = &type metadata for String;
    *(v44 + 64) = v41;
    *(v44 + 72) = v43;
    sub_10000A2A0(v109, v44 + 96);

    v45 = String._bridgeToObjectiveC()();
    v46.super.isa = Array._bridgeToObjectiveC()().super.isa;

    v47 = [objc_opt_self() predicateWithFormat:v45 argumentArray:v46.super.isa];
LABEL_32:
    v38 = v47;

    sub_100009F60(v109);
    v74 = v23;
LABEL_33:
    sub_1000073B4(v74, &qword_1006BEA90);
    sub_100009F60(v110);
    goto LABEL_34;
  }

  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v35 = type metadata accessor for ManagedEntityContextType();
        v36 = v12;
        v37 = *(v35 - 8);
        if ((*(v37 + 48))(v36 + v33, 1, v35) != 1)
        {
          sub_100006038(v36 + v33, v16, &qword_1006BEA90);
          if ((*(v37 + 88))(v16, v35) == enum case for ManagedEntityContextType.html(_:))
          {
            v38 = [objc_opt_self() predicateWithValue:0];
            sub_1000073B4(v23, &qword_1006BEA90);
            (*(v105 + 8))(v36, v104);
LABEL_34:
            sub_1000073B4(v36 + v33, &qword_1006BEA90);
            return v38;
          }

          (*(v37 + 8))(v16, v35);
        }

        v94 = v104;
        v93 = v105;
        v95 = v102;
        (*(v105 + 32))(v102, v36, v104);
        v38 = ICQueryType.predicate.getter();
        (*(v93 + 8))(v95, v94);
      }

      else
      {
        v36 = v12;
        v64 = *v12;
        sub_10015DA04(&qword_1006BE850);
        v65 = swift_allocObject();
        *(v65 + 16) = xmmword_100531E30;
        *(v65 + 56) = sub_10015DA04(&unk_1006C3060);
        *(v65 + 32) = v64;
        v66 = String._bridgeToObjectiveC()();
        v67 = Array._bridgeToObjectiveC()().super.isa;

        v38 = [objc_opt_self() predicateWithFormat:v66 argumentArray:v67];
      }

      sub_1000073B4(v23, &qword_1006BEA90);
      goto LABEL_34;
    }

    if ((*(v8 + 48))(v12, 1, v7) != 1)
    {
      if (a2)
      {
        v83 = v101;
        sub_100271954(v12, v101, type metadata accessor for FolderEntity);
        sub_1000054A4(0, &qword_1006C2CA0);
        v84 = v23;
        v85 = v12;
        sub_10015DA04(&qword_1006C1A30);
        v86 = swift_allocObject();
        *(v86 + 16) = xmmword_100531E30;
        v87 = FolderID.managedIdentifier.getter();
        v89 = v88;
        *(v86 + 56) = &type metadata for String;
        *(v86 + 64) = sub_1001D9030();
        *(v86 + 32) = v87;
        *(v86 + 40) = v89;
      }

      else
      {
        v90 = type metadata accessor for ManagedEntityContextType();
        v91 = v12;
        v92 = *(v90 - 8);
        if ((*(v92 + 48))(v91 + v33, 1, v90) != 1)
        {
          sub_100006038(v91 + v33, v19, &qword_1006BEA90);
          if ((*(v92 + 88))(v19, v90) != enum case for ManagedEntityContextType.html(_:))
          {
            (*(v92 + 8))(v19, v90);
          }
        }

        v83 = v101;
        sub_100271954(v91, v101, type metadata accessor for FolderEntity);
        sub_1000054A4(0, &qword_1006C2CA0);
        v84 = v23;
        v85 = v91;
        sub_10015DA04(&qword_1006C1A30);
        v96 = swift_allocObject();
        *(v96 + 16) = xmmword_100531E30;
        v97 = FolderID.managedIdentifier.getter();
        v99 = v98;
        *(v96 + 56) = &type metadata for String;
        *(v96 + 64) = sub_1001D9030();
        *(v96 + 32) = v97;
        *(v96 + 40) = v99;
      }

      v36 = v85;
      v38 = NSPredicate.init(format:_:)();
      sub_100270DF4(v83, type metadata accessor for FolderEntity);
      sub_1000073B4(v84, &qword_1006BEA90);
      goto LABEL_34;
    }

    sub_1000073B4(v23, &qword_1006BEA90);
LABEL_28:
    v36 = v12;
    v38 = 0;
    goto LABEL_34;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_1000073B4(v23, &qword_1006BEA90);
    sub_100270DF4(v12, type metadata accessor for VisibleNotesQuery.Comparator);
    goto LABEL_28;
  }

  if (EnumCaseMultiPayload != 4)
  {
    goto LABEL_31;
  }

  v48 = v23;
  v49 = *(v12 + 1);
  v50 = *(v12 + 2);
  v51 = *(v12 + 3);
  v106 = v12;
  v52 = v48;
  v53 = v103;
  sub_100006038(v48, v103, &qword_1006BEA90);
  v54 = type metadata accessor for ManagedEntityContextType();
  v55 = *(v54 - 8);
  if ((*(v55 + 48))(v53, 1, v54) != 1)
  {
    v56 = (*(v55 + 88))(v53, v54);
    if (v56 != enum case for ManagedEntityContextType.modern(_:))
    {
      if (v56 == enum case for ManagedEntityContextType.html(_:))
      {
        v55 = v49;
        result = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
        if (v58)
        {
          goto LABEL_19;
        }

        __break(1u);
      }

      (*(v55 + 8))(v53, v54);
      v59 = 0;
      v60 = 0xE000000000000000;
      goto LABEL_20;
    }
  }

  result = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v58)
  {
LABEL_19:
    v59 = result;
    v60 = v58;
LABEL_20:
    sub_10015DA04(&qword_1006BE850);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_100535E30;
    *(v61 + 32) = v59;
    *(v61 + 40) = v60;
    *(v61 + 88) = &type metadata for String;
    *(v61 + 56) = &type metadata for String;
    *(v61 + 64) = v50;
    *(v61 + 72) = v51;
    v62 = String._bridgeToObjectiveC()();
    v63 = Array._bridgeToObjectiveC()().super.isa;

    v38 = [objc_opt_self() predicateWithFormat:v62 argumentArray:v63];

    sub_1000073B4(v52, &qword_1006BEA90);
    v36 = v106;
    goto LABEL_34;
  }

  __break(1u);
  return result;
}

id sub_100263594(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v67 = a4;
  v62 = a2;
  v63 = a1;
  v75 = type metadata accessor for ICQueryType();
  v69 = *(v75 - 8);
  v5 = __chkstk_darwin(v75);
  v61 = (&v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __chkstk_darwin(v5);
  v74 = &v60 - v8;
  __chkstk_darwin(v7);
  v73 = &v60 - v9;
  v72 = type metadata accessor for VisibleNotesQuery.Comparator(0);
  v66 = *(v72 - 8);
  v10 = __chkstk_darwin(v72);
  v68 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v60 - v12;
  v14 = type metadata accessor for ManagedEntityContextType();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10015DA04(&unk_1006C3040);
  v19 = v18 - 8;
  __chkstk_darwin(v18);
  v21 = &v60 - v20;
  v22 = sub_10015DA04(&qword_1006BEA90);
  v23 = __chkstk_darwin(v22 - 8);
  v71 = &v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v60 - v25;
  (*(v15 + 104))(&v60 - v25, enum case for ManagedEntityContextType.html(_:), v14);
  (*(v15 + 56))(v26, 0, 1, v14);
  v27 = *(v19 + 56);
  v70 = a3;
  sub_100006038(a3, v21, &qword_1006BEA90);
  sub_100006038(v26, &v21[v27], &qword_1006BEA90);
  v28 = *(v15 + 48);
  if (v28(v21, 1, v14) == 1)
  {
    sub_1000073B4(v26, &qword_1006BEA90);
    if (v28(&v21[v27], 1, v14) == 1)
    {
      v29 = sub_1000073B4(v21, &qword_1006BEA90);
      v30 = v62;
      goto LABEL_23;
    }

    goto LABEL_6;
  }

  sub_100006038(v21, v71, &qword_1006BEA90);
  if (v28(&v21[v27], 1, v14) == 1)
  {
    sub_1000073B4(v26, &qword_1006BEA90);
    (*(v15 + 8))(v71, v14);
LABEL_6:
    sub_1000073B4(v21, &unk_1006C3040);
    v31 = v68;
    goto LABEL_7;
  }

  (*(v15 + 32))(v17, &v21[v27], v14);
  sub_100271144(&qword_1006C1A20, &type metadata accessor for ManagedEntityContextType);
  v45 = v71;
  v46 = dispatch thunk of static Equatable.== infix(_:_:)();
  v47 = *(v15 + 8);
  v47(v17, v14);
  sub_1000073B4(v26, &qword_1006BEA90);
  v47(v45, v14);
  v29 = sub_1000073B4(v21, &qword_1006BEA90);
  v31 = v68;
  v30 = v62;
  if (v46)
  {
LABEL_23:
    __chkstk_darwin(v29);
    *(&v60 - 2) = v70;
    *(&v60 - 8) = v67 & 1;
    sub_100400A94(sub_10027190C, (&v60 - 4), v63);

    sub_1000054A4(0, &qword_1006C2CA0);
    v48.super.isa = Array._bridgeToObjectiveC()().super.isa;

    v49 = objc_opt_self();
    if (v30)
    {
      v50 = [v49 orPredicateWithSubpredicates:v48.super.isa];
    }

    else
    {
      v50 = [v49 andPredicateWithSubpredicates:v48.super.isa];
    }

    goto LABEL_35;
  }

LABEL_7:
  v76 = _swiftEmptyArrayStorage;
  v32 = *(v63 + 16);
  if (v32)
  {
    v33 = v63 + ((*(v66 + 80) + 32) & ~*(v66 + 80));
    v34 = *(v66 + 72);
    v71 = (v69 + 32);
    v65 = v69 + 8;
    v66 = v69 + 16;
    v35 = _swiftEmptyArrayStorage;
    v64 = _swiftEmptyArrayStorage;
    do
    {
      sub_100270FE4(v33, v13, type metadata accessor for VisibleNotesQuery.Comparator);
      sub_100270FE4(v13, v31, type metadata accessor for VisibleNotesQuery.Comparator);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v36 = *v71;
        v37 = v73;
        v38 = v75;
        (*v71)(v73, v31, v75);
        (*v66)(v74, v37, v38);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = sub_1001CB244(0, *(v35 + 2) + 1, 1, v35);
        }

        v40 = *(v35 + 2);
        v39 = *(v35 + 3);
        if (v40 >= v39 >> 1)
        {
          v35 = sub_1001CB244(v39 > 1, v40 + 1, 1, v35);
        }

        v41 = v69;
        v42 = v75;
        (*(v69 + 8))(v73, v75);
        sub_100270DF4(v13, type metadata accessor for VisibleNotesQuery.Comparator);
        *(v35 + 2) = v40 + 1;
        v36(&v35[((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v40], v74, v42);
        v31 = v68;
      }

      else
      {
        sub_100270DF4(v31, type metadata accessor for VisibleNotesQuery.Comparator);
        v43 = sub_100262168(v70, v67 & 1);
        if (v43)
        {
          v44 = v43;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          sub_100270DF4(v13, type metadata accessor for VisibleNotesQuery.Comparator);
          v64 = v76;
        }

        else
        {
          sub_100270DF4(v13, type metadata accessor for VisibleNotesQuery.Comparator);
        }
      }

      v33 += v34;
      --v32;
    }

    while (v32);
  }

  else
  {

    v35 = _swiftEmptyArrayStorage;
  }

  v51 = v62;
  if (*(v35 + 2))
  {
    v52 = swift_allocObject();
    *(v52 + 16) = v35;
    v53 = v61;
    *v61 = v52;
    v54 = v69;
    v55 = v75;
    (*(v69 + 104))(v53, enum case for ICQueryType.and(_:), v75);
    ICQueryType.predicate.getter();
    (*(v54 + 8))(v53, v55);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  else
  {
  }

  sub_1000054A4(0, &qword_1006C2CA0);
  v48.super.isa = Array._bridgeToObjectiveC()().super.isa;

  v56 = objc_opt_self();
  v57 = &selRef_orPredicateWithSubpredicates_;
  if ((v51 & 1) == 0)
  {
    v57 = &selRef_andPredicateWithSubpredicates_;
  }

  v50 = [v56 *v57];
LABEL_35:
  v58 = v50;

  sub_1000073B4(v70, &qword_1006BEA90);
  return v58;
}

uint64_t VisibleNotesQuery.Comparator.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ICQueryType();
  v59 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FolderEntity();
  v58 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v58 - v9;
  v11 = sub_10015DA04(&unk_1006BF9D0);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v58 - v15;
  v17 = type metadata accessor for VisibleNotesQuery.Comparator(0);
  __chkstk_darwin(v17);
  v19 = (&v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100270FE4(v1, v19, type metadata accessor for VisibleNotesQuery.Comparator);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload > 8)
    {
      if (EnumCaseMultiPayload == 9)
      {
        sub_100192680(v19, v64);
        sub_10001FA64((v19 + 40), v63);
        *&v62[0] = 0;
        *(&v62[0] + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(19);
        v60[0] = v62[0];
        v25 = 0x5472657461657267;
        v26 = 0xEC000000286E6168;
      }

      else
      {
        if (EnumCaseMultiPayload != 10)
        {
          sub_100192680(v19, v64);
          sub_10001FA64((v19 + 40), v63);
          sub_10001FA64((v19 + 72), v62);
          *&v60[0] = 0;
          *(&v60[0] + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(18);
          v61 = v60[0];
          v49._countAndFlagsBits = 0x286E656577746562;
          v49._object = 0xE800000000000000;
          String.append(_:)(v49);
          sub_10015DA04(&qword_1006C1490);
          _print_unlocked<A, B>(_:_:)();
          v50._countAndFlagsBits = 8236;
          v50._object = 0xE200000000000000;
          String.append(_:)(v50);
          sub_10000A2A0(v63, v60);
          v51._countAndFlagsBits = String.init<A>(reflecting:)();
          String.append(_:)(v51);

          v52._countAndFlagsBits = 8236;
          v52._object = 0xE200000000000000;
          String.append(_:)(v52);
          sub_10000A2A0(v62, v60);
          v53._countAndFlagsBits = String.init<A>(reflecting:)();
          String.append(_:)(v53);

          v24 = v61;
          sub_100009F60(v62);
          goto LABEL_27;
        }

        sub_100192680(v19, v64);
        sub_10001FA64((v19 + 40), v63);
        *&v62[0] = 0;
        *(&v62[0] + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(28);
        v60[0] = v62[0];
        v25 = 0xD000000000000015;
        v26 = 0x80000001005699F0;
      }
    }

    else if (EnumCaseMultiPayload == 6)
    {
      sub_100192680(v19, v64);
      sub_10001FA64((v19 + 40), v63);
      *&v62[0] = 0;
      *(&v62[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(18);
      v60[0] = v62[0];
      v25 = 0x6C61757145746F6ELL;
      v26 = 0xEB00000000286F54;
    }

    else if (EnumCaseMultiPayload == 7)
    {
      sub_100192680(v19, v64);
      sub_10001FA64((v19 + 40), v63);
      *&v62[0] = 0;
      *(&v62[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(16);
      v60[0] = v62[0];
      v25 = 0x6E6168547373656CLL;
      v26 = 0xE900000000000028;
    }

    else
    {
      sub_100192680(v19, v64);
      sub_10001FA64((v19 + 40), v63);
      *&v62[0] = 0;
      *(&v62[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(25);
      v60[0] = v62[0];
      v26 = 0x8000000100569A10;
      v25 = 0xD000000000000012;
    }

LABEL_26:
    String.append(_:)(*&v25);
    sub_10015DA04(&qword_1006C1490);
    _print_unlocked<A, B>(_:_:)();
    v45._countAndFlagsBits = 8236;
    v45._object = 0xE200000000000000;
    String.append(_:)(v45);
    sub_10000A2A0(v63, v62);
    v46._countAndFlagsBits = String.init<A>(reflecting:)();
    String.append(_:)(v46);

    v47._countAndFlagsBits = 41;
    v47._object = 0xE100000000000000;
    String.append(_:)(v47);
    v24 = *&v60[0];
LABEL_27:
    sub_100009F60(v63);
    sub_100009F60(v64);
    return v24;
  }

  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v37 = *v19;
      v38 = *(v19 + 1);
      strcpy(v64, "textSearch(");
      HIDWORD(v64[1]) = -352321536;
      *&v63[0] = v37;
      *(&v63[0] + 1) = v38;
      v39._countAndFlagsBits = String.init<A>(reflecting:)();
      String.append(_:)(v39);
      goto LABEL_23;
    }

    if (EnumCaseMultiPayload == 4)
    {
      v27 = *v19;
      v28 = *(v19 + 1);
      v29 = *(v19 + 2);
      v30 = *(v19 + 3);
      v64[0] = 0;
      v64[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(16);
      v31._countAndFlagsBits = 0x736E6961746E6F63;
      v31._object = 0xE900000000000028;
      String.append(_:)(v31);
      *&v63[0] = v27;
      *(&v63[0] + 1) = v28;
      sub_10015DA04(&qword_1006C1498);
      _print_unlocked<A, B>(_:_:)();
      v32._countAndFlagsBits = 8236;
      v32._object = 0xE200000000000000;
      String.append(_:)(v32);
      *&v63[0] = v29;
      *(&v63[0] + 1) = v30;
      v33._countAndFlagsBits = String.init<A>(reflecting:)();
      String.append(_:)(v33);

      v34._countAndFlagsBits = 41;
      v34._object = 0xE100000000000000;
      String.append(_:)(v34);
      v24 = v64[0];

      return v24;
    }

    sub_100192680(v19, v64);
    sub_10001FA64((v19 + 40), v63);
    *&v60[0] = 0;
    *(&v60[0] + 1) = 0xE000000000000000;
    v25 = 0x286F546C61757165;
    v26 = 0xE800000000000000;
    goto LABEL_26;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v21 = v59;
      (*(v59 + 32))(v4, v19, v2);
      v64[0] = 0;
      v64[1] = 0xE000000000000000;
      v22._countAndFlagsBits = 0x2879726575516369;
      v22._object = 0xE800000000000000;
      String.append(_:)(v22);
      _print_unlocked<A, B>(_:_:)();
      v23._countAndFlagsBits = 41;
      v23._object = 0xE100000000000000;
      String.append(_:)(v23);
      v24 = v64[0];
      (*(v21 + 8))(v4, v2);
      return v24;
    }

    v64[0] = 0;
    v64[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    v64[0] = 0xD000000000000014;
    v64[1] = 0x8000000100569A30;
    sub_1000054A4(0, &qword_1006BFEC0);
    v40 = Array.description.getter();
    v42 = v41;

    v43._countAndFlagsBits = v40;
    v43._object = v42;
    String.append(_:)(v43);
LABEL_23:

    v44._countAndFlagsBits = 41;
    v44._object = 0xE100000000000000;
    String.append(_:)(v44);
    return v64[0];
  }

  sub_1001F7498(v19, v16, &unk_1006BF9D0);
  sub_100006038(v16, v14, &unk_1006BF9D0);
  if ((*(v58 + 48))(v14, 1, v5) == 1)
  {
    v35 = 0xE300000000000000;
    v36 = 7104878;
  }

  else
  {
    sub_100271954(v14, v10, type metadata accessor for FolderEntity);
    sub_100270FE4(v10, v8, type metadata accessor for FolderEntity);
    v54 = String.init<A>(describing:)();
    v35 = v55;
    sub_100270DF4(v10, type metadata accessor for FolderEntity);
    v36 = v54;
  }

  strcpy(v64, "containedIn(");
  BYTE5(v64[1]) = 0;
  HIWORD(v64[1]) = -5120;
  v56 = v35;
  String.append(_:)(*&v36);

  v57._countAndFlagsBits = 41;
  v57._object = 0xE100000000000000;
  String.append(_:)(v57);
  v24 = v64[0];
  sub_1000073B4(v16, &unk_1006BF9D0);
  return v24;
}

uint64_t sub_100264998(uint64_t a1, uint64_t a2)
{
  v31 = a1;
  v4 = type metadata accessor for FolderEntity();
  v5 = *(v4 - 1);
  v6 = __chkstk_darwin(v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v29 = &v28 - v9;
  v30 = v2;
  v10 = *v2;
  Hasher.init(_seed:)();
  type metadata accessor for FolderID();
  sub_100271144(&qword_1006C1B50, &type metadata accessor for FolderID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for URL();
  sub_100271144(&qword_1006C07C0, &type metadata accessor for URL);
  dispatch thunk of Hashable.hash(into:)();
  v11 = (a2 + v4[6]);
  v12 = *v11;
  v36 = v11[1];
  v37 = v12;
  String.hash(into:)();
  v13 = (a2 + v4[7]);
  v14 = *v13;
  v34 = v13[1];
  v35 = v14;
  String.hash(into:)();
  v33 = *(a2 + v4[8]);
  Hasher._combine(_:)(v33);
  v32 = *(a2 + v4[9]);
  Hasher._combine(_:)(v32);
  v15 = Hasher._finalize()();
  v16 = -1 << *(v10 + 32);
  v17 = v15 & ~v16;
  if ((*(v10 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v18 = ~v16;
    v19 = *(v5 + 72);
    while (1)
    {
      sub_100270FE4(*(v10 + 48) + v19 * v17, v8, type metadata accessor for FolderEntity);
      if (static FolderID.== infix(_:_:)() & 1) != 0 && (static URL.== infix(_:_:)())
      {
        v20 = &v8[v4[6]];
        v21 = *v20 == v37 && *(v20 + 1) == v36;
        if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v22 = &v8[v4[7]];
          v23 = *v22 == v35 && *(v22 + 1) == v34;
          if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && v33 == v8[v4[8]] && v32 == v8[v4[9]])
          {
            break;
          }
        }
      }

      sub_100270DF4(v8, type metadata accessor for FolderEntity);
      v17 = (v17 + 1) & v18;
      if (((*(v10 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    sub_100270DF4(v8, type metadata accessor for FolderEntity);
    sub_100270DF4(a2, type metadata accessor for FolderEntity);
    sub_100270FE4(*(v10 + 48) + v19 * v17, v31, type metadata accessor for FolderEntity);
    return 0;
  }

  else
  {
LABEL_19:
    v25 = v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v29;
    sub_100270FE4(a2, v29, type metadata accessor for FolderEntity);
    v38 = *v25;
    sub_1002693B4(v27, v17, isUniquelyReferenced_nonNull_native);
    *v25 = v38;
    sub_100271954(a2, v31, type metadata accessor for FolderEntity);
    return 1;
  }
}

uint64_t sub_100264DA0(uint64_t a1, uint64_t a2)
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
      sub_100024F40(*(v6 + 48) + 40 * v9, v16);
      v11 = static AnyHashable.== infix(_:_:)();
      sub_100024F9C(v16);
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

    sub_100024F9C(a2);
    sub_100024F40(*(v6 + 48) + 40 * v9, a1);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100024F40(a2, v16);
    v15 = *v3;
    sub_100269798(v16, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v15;
    v13 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v13;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }
}

uint64_t sub_100264F10(uint64_t a1, uint64_t a2)
{
  v42 = a1;
  v45 = sub_10015DA04(&qword_1006C1240);
  __chkstk_darwin(v45);
  v5 = &v40 - v4;
  v46 = _s3TagVMa();
  v56 = *(v46 - 8);
  v6 = __chkstk_darwin(v46);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v40 = &v40 - v9;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10015DA04(&unk_1006C1710);
  v15 = __chkstk_darwin(v14 - 8);
  v50 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v40 - v17;
  v41 = v2;
  v58 = *v2;
  Hasher.init(_seed:)();
  v59 = a2;
  sub_100006038(a2, v18, &unk_1006C1710);
  v19 = v11 + 48;
  v51 = *(v11 + 48);
  if (v51(v18, 1, v10) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v11 + 32))(v13, v18, v10);
    Hasher._combine(_:)(1u);
    sub_100271144(&qword_1006C1238, &type metadata accessor for Date);
    dispatch thunk of Hashable.hash(into:)();
    (*(v11 + 8))(v13, v10);
  }

  v20 = (v59 + *(v46 + 20));
  v21 = *v20;
  v52 = v20[1];
  v53 = v21;
  String.hash(into:)();
  v22 = Hasher._finalize()();
  v23 = -1 << *(v58 + 32);
  v24 = v22 & ~v23;
  v57 = v58 + 56;
  v25 = v51;
  if ((*(v58 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24))
  {
    v44 = v13;
    v55 = ~v23;
    v43 = (v11 + 32);
    v56 = *(v56 + 72);
    v48 = (v11 + 8);
    v26 = v45;
    v49 = v8;
    v47 = v19;
    do
    {
      v27 = *(v58 + 48);
      v54 = v56 * v24;
      sub_100270FE4(v27 + v56 * v24, v8, _s3TagVMa);
      v28 = *(v26 + 48);
      sub_100006038(v8, v5, &unk_1006C1710);
      sub_100006038(v59, &v5[v28], &unk_1006C1710);
      if (v25(v5, 1, v10) == 1)
      {
        if (v25(&v5[v28], 1, v10) != 1)
        {
          goto LABEL_7;
        }

        sub_1000073B4(v5, &unk_1006C1710);
      }

      else
      {
        v29 = v50;
        sub_100006038(v5, v50, &unk_1006C1710);
        if (v25(&v5[v28], 1, v10) == 1)
        {
          (*v48)(v29, v10);
          v8 = v49;
          v25 = v51;
LABEL_7:
          sub_1000073B4(v5, &qword_1006C1240);
          goto LABEL_8;
        }

        v30 = v44;
        (*v43)(v44, &v5[v28], v10);
        sub_100271144(&qword_1006C1720, &type metadata accessor for Date);
        v31 = dispatch thunk of static Equatable.== infix(_:_:)();
        v32 = *v48;
        (*v48)(v30, v10);
        v32(v29, v10);
        v26 = v45;
        sub_1000073B4(v5, &unk_1006C1710);
        v8 = v49;
        v25 = v51;
        if ((v31 & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      v33 = &v8[*(v46 + 20)];
      v34 = *v33 == v53 && *(v33 + 1) == v52;
      if (v34 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100270DF4(v8, _s3TagVMa);
        sub_100270DF4(v59, _s3TagVMa);
        sub_100270FE4(*(v58 + 48) + v54, v42, _s3TagVMa);
        return 0;
      }

LABEL_8:
      sub_100270DF4(v8, _s3TagVMa);
      v24 = (v24 + 1) & v55;
    }

    while (((*(v57 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) != 0);
  }

  v36 = v41;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38 = v59;
  v39 = v40;
  sub_100270FE4(v59, v40, _s3TagVMa);
  v60 = *v36;
  sub_100269910(v39, v24, isUniquelyReferenced_nonNull_native);
  *v36 = v60;
  sub_100271954(v38, v42, _s3TagVMa);
  return 1;
}

uint64_t sub_100265690(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100271144(&qword_1006C07C8, &type metadata accessor for UUID);
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
      sub_100271144(&qword_1006C1820, &type metadata accessor for UUID);
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
    sub_10026A04C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_100265994(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
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

    sub_10026A314(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100265AE4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100271144(&unk_1006C6390, &type metadata accessor for IndexPath);
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
      sub_100271144(&qword_1006C16E0, &type metadata accessor for IndexPath);
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
    sub_10026A494(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_100265DC4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100271144(&qword_1006C07C0, &type metadata accessor for URL);
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
      sub_100271144(&qword_1006C1750, &type metadata accessor for URL);
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
    sub_10026A75C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1002660A4(uint64_t a1, uint64_t a2)
{
  v43 = a1;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v40 = &v36[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v49 = sub_10015DA04(&qword_1006C1790);
  __chkstk_darwin(v49);
  v8 = &v36[-v7];
  v9 = type metadata accessor for MarkdownStyle(0);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v36[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __chkstk_darwin(v11);
  v16 = &v36[-v15];
  __chkstk_darwin(v14);
  v41 = &v36[-v17];
  v42 = v2;
  v18 = *v2;
  Hasher.init(_seed:)();
  v50 = a2;
  sub_1002F804C();
  v19 = Hasher._finalize()();
  v20 = v18 + 56;
  v21 = -1 << *(v18 + 32);
  v22 = v19 & ~v21;
  if (((*(v18 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
  {
LABEL_27:
    v31 = v42;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = v50;
    v34 = v41;
    sub_100270FE4(v50, v41, type metadata accessor for MarkdownStyle);
    v51 = *v31;
    sub_10026AA24(v34, v22, isUniquelyReferenced_nonNull_native);
    *v31 = v51;
    sub_100271954(v33, v43, type metadata accessor for MarkdownStyle);
    return 1;
  }

  v46 = v13;
  v47 = ~v21;
  v48 = *(v10 + 72);
  v23 = (v5 + 48);
  v44 = (v5 + 8);
  v45 = v18 + 56;
  v39 = (v5 + 32);
  while (1)
  {
    v24 = v48 * v22;
    sub_100270FE4(*(v18 + 48) + v48 * v22, v16, type metadata accessor for MarkdownStyle);
    v25 = *(v49 + 48);
    sub_100270FE4(v16, v8, type metadata accessor for MarkdownStyle);
    sub_100270FE4(v50, &v8[v25], type metadata accessor for MarkdownStyle);
    v26 = *v23;
    v27 = (*v23)(v8, 6, v4);
    if (v27 > 2)
    {
      if (v27 > 4)
      {
        if (v27 == 5)
        {
          sub_100270DF4(v16, type metadata accessor for MarkdownStyle);
          if (v26(&v8[v25], 6, v4) == 5)
          {
            goto LABEL_28;
          }
        }

        else
        {
          sub_100270DF4(v16, type metadata accessor for MarkdownStyle);
          if (v26(&v8[v25], 6, v4) == 6)
          {
            goto LABEL_28;
          }
        }
      }

      else if (v27 == 3)
      {
        sub_100270DF4(v16, type metadata accessor for MarkdownStyle);
        if (v26(&v8[v25], 6, v4) == 3)
        {
          goto LABEL_28;
        }
      }

      else
      {
        sub_100270DF4(v16, type metadata accessor for MarkdownStyle);
        if (v26(&v8[v25], 6, v4) == 4)
        {
          goto LABEL_28;
        }
      }

      goto LABEL_22;
    }

    if (v27)
    {
      if (v27 == 1)
      {
        sub_100270DF4(v16, type metadata accessor for MarkdownStyle);
        if (v26(&v8[v25], 6, v4) == 1)
        {
          goto LABEL_28;
        }
      }

      else
      {
        sub_100270DF4(v16, type metadata accessor for MarkdownStyle);
        if (v26(&v8[v25], 6, v4) == 2)
        {
          goto LABEL_28;
        }
      }

      goto LABEL_22;
    }

    v28 = v46;
    sub_100270FE4(v8, v46, type metadata accessor for MarkdownStyle);
    if (!v26(&v8[v25], 6, v4))
    {
      break;
    }

    sub_100270DF4(v16, type metadata accessor for MarkdownStyle);
    (*v44)(v28, v4);
    v20 = v45;
LABEL_22:
    sub_1000073B4(v8, &qword_1006C1790);
LABEL_23:
    v22 = (v22 + 1) & v47;
    if (((*(v20 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v29 = v40;
  (*v39)(v40, &v8[v25], v4);
  v37 = static URL.== infix(_:_:)();
  v38 = v18;
  v30 = *v44;
  (*v44)(v29, v4);
  sub_100270DF4(v16, type metadata accessor for MarkdownStyle);
  v30(v28, v4);
  v18 = v38;
  v20 = v45;
  if ((v37 & 1) == 0)
  {
    sub_100270DF4(v8, type metadata accessor for MarkdownStyle);
    goto LABEL_23;
  }

LABEL_28:
  sub_100270DF4(v8, type metadata accessor for MarkdownStyle);
  sub_100270DF4(v50, type metadata accessor for MarkdownStyle);
  sub_100270FE4(*(v18 + 48) + v24, v43, type metadata accessor for MarkdownStyle);
  return 0;
}

uint64_t sub_100266758(uint64_t *a1, uint64_t a2)
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
    sub_10026B0B0(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_10026685C(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v4 = type metadata accessor for AccountEntity();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v26 = &v26 - v9;
  v27 = v2;
  v10 = *v2;
  Hasher.init(_seed:)();
  type metadata accessor for AccountID();
  sub_100271144(&unk_1006C4040, &type metadata accessor for AccountID);
  dispatch thunk of Hashable.hash(into:)();
  v11 = *(v4 + 20);
  type metadata accessor for URL();
  sub_100271144(&qword_1006C07C0, &type metadata accessor for URL);
  v30 = v11;
  dispatch thunk of Hashable.hash(into:)();
  v12 = v4;
  v13 = (a2 + *(v4 + 24));
  v14 = v13[1];
  v29 = *v13;
  String.hash(into:)();
  v15 = Hasher._finalize()();
  v16 = -1 << *(v10 + 32);
  v17 = v15 & ~v16;
  if ((*(v10 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v18 = ~v16;
    v19 = *(v5 + 72);
    while (1)
    {
      sub_100270FE4(*(v10 + 48) + v19 * v17, v8, type metadata accessor for AccountEntity);
      if (static AccountID.== infix(_:_:)() & 1) != 0 && (static URL.== infix(_:_:)())
      {
        v20 = &v8[*(v12 + 24)];
        v21 = *v20 == v29 && *(v20 + 1) == v14;
        if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }
      }

      sub_100270DF4(v8, type metadata accessor for AccountEntity);
      v17 = (v17 + 1) & v18;
      if (((*(v10 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    sub_100270DF4(v8, type metadata accessor for AccountEntity);
    sub_100270DF4(a2, type metadata accessor for AccountEntity);
    sub_100270FE4(*(v10 + 48) + v19 * v17, v28, type metadata accessor for AccountEntity);
    return 0;
  }

  else
  {
LABEL_12:
    v23 = v27;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v26;
    sub_100270FE4(a2, v26, type metadata accessor for AccountEntity);
    v31 = *v23;
    sub_10026B1D0(v25, v17, isUniquelyReferenced_nonNull_native);
    *v23 = v31;
    sub_100271954(a2, v28, type metadata accessor for AccountEntity);
    return 1;
  }
}

Swift::Int sub_100266C14(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, void (*a5)(void))
{
  if (a2)
  {
    sub_10015DA04(a3);
    v7 = static _SetStorage.convert(_:capacity:)();
    v20 = v7;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      a5(0);
      do
      {
        swift_dynamicCast();
        v14 = *(v7 + 16);
        if (*(v7 + 24) <= v14)
        {
          sub_1000222DC(v14 + 1, a3);
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

Swift::Int sub_100266E0C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, unint64_t *a5)
{
  if (a2)
  {
    sub_10015DA04(a3);
    v7 = static _SetStorage.convert(_:capacity:)();
    v20 = v7;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_1000054A4(0, a5);
      do
      {
        swift_dynamicCast();
        v14 = *(v7 + 16);
        if (*(v7 + 24) <= v14)
        {
          sub_1000222DC(v14 + 1, a3);
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

uint64_t sub_100267054()
{
  v1 = v0;
  v2 = type metadata accessor for FolderEntity();
  v31 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_10015DA04(&qword_1006C1B58);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v0;
    v30 = v5;
    v8 = 0;
    v9 = (v5 + 56);
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
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48);
      v32 = *(v31 + 72);
      sub_100271954(v19 + v32 * (v16 | (v8 << 6)), v4, type metadata accessor for FolderEntity);
      Hasher.init(_seed:)();
      type metadata accessor for FolderID();
      sub_100271144(&qword_1006C1B50, &type metadata accessor for FolderID);
      dispatch thunk of Hashable.hash(into:)();
      type metadata accessor for URL();
      sub_100271144(&qword_1006C07C0, &type metadata accessor for URL);
      dispatch thunk of Hashable.hash(into:)();
      String.hash(into:)();
      String.hash(into:)();
      Hasher._combine(_:)(v4[*(v2 + 32)]);
      Hasher._combine(_:)(v4[*(v2 + 36)]);
      result = Hasher._finalize()();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        v5 = v30;
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

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
      v5 = v30;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_100271954(v4, *(v7 + 48) + v15 * v32, type metadata accessor for FolderEntity);
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero(v9, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    v1 = v29;
    *(v5 + 16) = 0;
  }

  *v1 = v7;
  return result;
}

uint64_t sub_100267454()
{
  v1 = v0;
  v2 = *v0;
  sub_10015DA04(&qword_1006C1788);
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

uint64_t sub_1002676B4()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v43 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10015DA04(&unk_1006C1710);
  __chkstk_darwin(v5 - 8);
  v7 = &v38 - v6;
  v8 = _s3TagVMa();
  v47 = *(v8 - 8);
  v48 = v8;
  __chkstk_darwin(v8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v0;
  sub_10015DA04(&qword_1006C1728);
  result = static _SetStorage.resize(original:capacity:move:)();
  v13 = result;
  if (*(v11 + 16))
  {
    v46 = v2;
    v39 = v1;
    v14 = 0;
    v15 = (v11 + 56);
    v16 = 1 << *(v11 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v11 + 56);
    v19 = (v16 + 63) >> 6;
    v44 = (v3 + 48);
    v45 = result;
    v40 = (v3 + 8);
    v41 = (v3 + 32);
    v20 = result + 56;
    v42 = v11;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v25 = *(v11 + 48);
      v49 = *(v47 + 72);
      sub_100271954(v25 + v49 * (v22 | (v14 << 6)), v10, _s3TagVMa);
      Hasher.init(_seed:)();
      v26 = v10;
      sub_100006038(v10, v7, &unk_1006C1710);
      v27 = v46;
      if ((*v44)(v7, 1, v46) == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v28 = v43;
        (*v41)(v43, v7, v27);
        Hasher._combine(_:)(1u);
        sub_100271144(&qword_1006C1238, &type metadata accessor for Date);
        dispatch thunk of Hashable.hash(into:)();
        v29 = v28;
        v11 = v42;
        (*v40)(v29, v27);
      }

      v10 = v26;
      String.hash(into:)();
      result = Hasher._finalize()();
      v13 = v45;
      v30 = -1 << *(v45 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v20 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v20 + 8 * v32);
          if (v36 != -1)
          {
            v21 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v31) & ~*(v20 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      result = sub_100271954(v26, *(v13 + 48) + v21 * v49, _s3TagVMa);
      ++*(v13 + 16);
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v14 >= v19)
      {
        break;
      }

      v24 = v15[v14];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    v37 = 1 << *(v11 + 32);
    if (v37 >= 64)
    {
      bzero(v15, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v37;
    }

    v1 = v39;
    *(v11 + 16) = 0;
  }

  *v1 = v13;
  return result;
}