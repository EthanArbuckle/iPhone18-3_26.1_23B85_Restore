void *sub_10003B8F8()
{
  v1 = v0;
  v2 = sub_10007DEB8();
  v61 = *(v2 - 8);
  v62 = v2;
  v3 = *(v61 + 64);
  __chkstk_darwin(v2);
  v59 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_10007DED8();
  v58 = *(v60 - 8);
  v5 = *(v58 + 64);
  __chkstk_darwin(v60);
  v56 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_10007D3B8();
  v55 = *(v57 - 8);
  v7 = *(v55 + 64);
  v8 = __chkstk_darwin(v57);
  v53 = v9;
  v54 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v50 - v10;
  v12 = sub_10007DF48();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = (&v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1000DE268 != -1)
  {
    swift_once();
  }

  v17 = sub_10007D5C8();
  sub_1000046BC(v17, qword_1000E4B28);

  v18 = sub_10007D5A8();
  v19 = sub_10007E298();

  v20 = os_log_type_enabled(v18, v19);
  v63 = v11;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    aBlock = v22;
    *v21 = 136446210;
    v70 = *v1;
    sub_100015240(&qword_1000DFCD8, &qword_100083CB0);
    v23 = sub_10007E168();
    v25 = sub_100051190(v23, v24, &aBlock);

    *(v21 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v18, v19, "%{public}s: generateSnapshot BEGIN", v21, 0xCu);
    sub_1000250AC(v22);
  }

  sub_10002620C(0, &qword_1000E0890, OS_dispatch_queue_ptr);
  *v16 = sub_10007E328();
  (*(v13 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v12);
  v26 = sub_10007DF68();
  result = (*(v13 + 8))(v16, v12);
  if (v26)
  {
    sub_10007D3A8();
    result = *(v1 + 16);
    if (result)
    {
      [result copy];
      sub_10007E3D8();
      swift_unknownObjectRelease();
      sub_10002620C(0, &qword_1000DFD00, MKMapSnapshotOptions_ptr);
      swift_dynamicCast();
      v28 = v70;
      [v70 _setAllowsSimultaneousLightDarkSnapshots:1];
      v29 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:0];
      [v28 setTraitCollection:v29];

      v30 = [objc_allocWithZone(MKMapSnapshotter) initWithOptions:v28];
      v52 = *(v1 + 40);
      v31 = v52;

      dispatch_group_enter(v31);
      v32 = swift_allocObject();
      v32[2] = v1;
      v32[3] = v30;
      v32[4] = sub_100040898;
      v32[5] = v1;
      v33 = swift_allocObject();
      *(v33 + 16) = sub_1000408D8;
      *(v33 + 24) = v32;
      swift_beginAccess();
      v34 = v30;
      swift_retain_n();
      v35 = v34;

      v36 = *(v1 + 56);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v70 = *(v1 + 56);
      *(v1 + 56) = 0x8000000000000000;
      sub_10003FE2C(sub_1000408E4, v33, v35, isUniquelyReferenced_nonNull_native);

      v51 = v35;
      *(v1 + 56) = v70;
      swift_endAccess();
      v38 = sub_10007E328();
      v68 = sub_1000408D8;
      v69 = v32;
      aBlock = _NSConcreteStackBlock;
      v65 = 1107296256;
      v66 = sub_100024404;
      v67 = &unk_1000C9010;
      v39 = _Block_copy(&aBlock);

      [v35 startWithQueue:v38 completionHandler:v39];
      _Block_release(v39);

      v40 = sub_10007E328();
      v41 = v54;
      v42 = v55;
      v43 = v57;
      (*(v55 + 16))(v54, v63, v57);
      v44 = (*(v42 + 80) + 24) & ~*(v42 + 80);
      v45 = swift_allocObject();
      *(v45 + 16) = v1;
      (*(v42 + 32))(v45 + v44, v41, v43);
      v68 = sub_100040914;
      v69 = v45;
      aBlock = _NSConcreteStackBlock;
      v65 = 1107296256;
      v66 = sub_1000041A4;
      v67 = &unk_1000C9060;
      v46 = _Block_copy(&aBlock);

      v47 = v56;
      sub_10007DEC8();
      v70 = &_swiftEmptyArrayStorage;
      sub_100040A84(&qword_1000DF520, &type metadata accessor for DispatchWorkItemFlags);
      sub_100015240(&unk_1000DE980, &unk_1000835B0);
      sub_100002EBC();
      v48 = v59;
      v49 = v62;
      sub_10007E3F8();
      sub_10007E2E8();
      _Block_release(v46);

      (*(v61 + 8))(v48, v49);
      (*(v58 + 8))(v47, v60);
      (*(v42 + 8))(v63, v43);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_10003C1C4(uint64_t *a1, uint64_t (*a2)(uint64_t *), uint64_t a3, uint64_t a4)
{
  v8 = sub_100015240(&qword_1000DE928, &unk_100082900);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v32 - v10;
  v12 = sub_10007D3B8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1[3] == 1)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = a2;
    *(v17 + 24) = a3;
    swift_beginAccess();
    v18 = a1[9];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    a1[9] = v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v18 = sub_100077214(0, v18[2] + 1, 1, v18);
      a1[9] = v18;
    }

    v21 = v18[2];
    v20 = v18[3];
    if (v21 >= v20 >> 1)
    {
      v18 = sub_100077214((v20 > 1), v21 + 1, 1, v18);
    }

    v18[2] = v21 + 1;
    v22 = &v18[2 * v21];
    v22[4] = sub_1000409F4;
    v22[5] = v17;
    a1[9] = v18;
    result = swift_endAccess();
    if (!v21)
    {
      sub_100026310(a4, v11, &qword_1000DE928, &unk_100082900);
      if ((*(v13 + 48))(v11, 1, v12) == 1)
      {
        sub_1000256C0(v11, &qword_1000DE928, &unk_100082900);
      }

      else
      {
        (*(v13 + 32))(v16, v11, v12);
        sub_10003AECC();
        (*(v13 + 8))(v16, v12);
      }

      return sub_10003B8F8();
    }
  }

  else
  {
    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v24 = sub_10007D5C8();
    sub_1000046BC(v24, qword_1000E4B28);

    v25 = sub_10007D5A8();
    v26 = sub_10007E298();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 136446210;
      v32 = *a1;
      v33 = v28;
      sub_100015240(&qword_1000DFCD8, &qword_100083CB0);
      v29 = sub_10007E168();
      v31 = sub_100051190(v29, v30, &v33);

      *(v27 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v25, v26, "%{public}s: using previously-generated snapshot", v27, 0xCu);
      sub_1000250AC(v28);
    }

    return a2(a1);
  }

  return result;
}

uint64_t sub_10003C5CC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10003B530();
  }

  return result;
}

uint64_t sub_10003C624(void *a1, void *a2)
{
  v51 = a2;
  v3 = sub_10007D3B8();
  v52 = *(v3 - 8);
  v4 = *(v52 + 64);
  v5 = __chkstk_darwin(v3);
  v46 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v45 - v7;
  if (a1[8])
  {
    v9 = a1[8];

    sub_10007DF18();
  }

  v10 = v3;
  v11 = a1[6];
  if (v11)
  {
    v12 = [v11 image];
    v13 = [v12 imageAsset];
  }

  else
  {
    v13 = 0;
  }

  v14 = objc_opt_self();
  v15 = [v14 traitCollectionWithUserInterfaceStyle:1];
  v16 = [v14 traitCollectionWithUserInterfaceStyle:2];
  if (v13)
  {
    v17 = [v13 imageWithTraitCollection:v15];
    v18 = [v13 imageWithTraitCollection:v16];
  }

  else
  {
    v18 = 0;
    v17 = 0;
  }

  v19 = a1[3];
  v20 = a1[4];
  a1[3] = v17;
  a1[4] = v18;
  v48 = v18;
  v47 = v17;
  sub_100030228(v19, v20);
  v21 = v13;
  v50 = v15;
  [v21 unregisterImageWithTraitCollection:v15];
  v49 = v16;
  [v21 unregisterImageWithTraitCollection:v16];

  if (qword_1000DE268 != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v22 = sub_10007D5C8();
    sub_1000046BC(v22, qword_1000E4B28);
    v23 = v52;
    (*(v52 + 16))(v8, v51, v10);

    v24 = sub_10007D5A8();
    v25 = sub_10007E298();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v51 = v10;
      v27 = v23;
      v28 = v26;
      v29 = swift_slowAlloc();
      *v28 = 136446466;
      v53 = *a1;
      v54 = v29;
      sub_100015240(&qword_1000DFCD8, &qword_100083CB0);
      v30 = sub_10007E168();
      v32 = sub_100051190(v30, v31, &v54);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2050;
      v33 = v46;
      sub_10007D3A8();
      sub_10007D2B8();
      v35 = v34;
      v36 = *(v27 + 8);
      v37 = v33;
      v38 = v51;
      v36(v37, v51);
      v36(v8, v38);
      *(v28 + 14) = v35;
      _os_log_impl(&_mh_execute_header, v24, v25, "%{public}s: generateSnapshot END (%{public}f seconds elapsed)", v28, 0x16u);
      sub_1000250AC(v29);
    }

    else
    {

      (*(v23 + 8))(v8, v10);
    }

    swift_beginAccess();
    v39 = a1[9];
    v40 = *(v39 + 16);

    if (!v40)
    {
      break;
    }

    v8 = 0;
    v10 = (v39 + 40);
    while (v8 < *(v39 + 16))
    {
      ++v8;
      v42 = *(v10 - 1);
      v41 = *v10;
      v53 = a1;

      v42(&v53);

      v10 += 2;
      if (v40 == v8)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    swift_once();
  }

LABEL_17:

  v43 = a1[9];
  a1[9] = &_swiftEmptyArrayStorage;
}

void sub_10003CB10(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10007E528())
  {
    v6 = 0;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = sub_10007E468();
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v11 = v7;
      a1(&v11);

      if (!v3)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

void sub_10003CC10(void *a1, uint64_t a2, dispatch_group_t *a3, void *a4, void (*a5)(id))
{
  swift_beginAccess();
  sub_10003A9D8(0, 0, a4);
  swift_endAccess();
  if (a1)
  {
    isa = (*a3)[39].isa;
    v10 = a1;
    isa();
    a5(v10);
    dispatch_group_leave(a3[5]);
  }

  else
  {
    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v11 = sub_10007D5C8();
    sub_1000046BC(v11, qword_1000E4B28);

    swift_errorRetain();
    v12 = sub_10007D5A8();
    v13 = sub_10007E2A8();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 136446466;
      v16 = *a3;
      v23[0] = v15;
      sub_100015240(&qword_1000DFCD8, &qword_100083CB0);
      v17 = sub_10007E168();
      v19 = sub_100051190(v17, v18, v23);

      *(v14 + 4) = v19;
      *(v14 + 12) = 2082;
      swift_errorRetain();
      sub_100015240(&qword_1000DE938, &qword_100082910);
      v20 = sub_10007E178();
      v22 = sub_100051190(v20, v21, v23);

      *(v14 + 14) = v22;
      _os_log_impl(&_mh_execute_header, v12, v13, "%{public}s: error: %{public}s", v14, 0x16u);
      swift_arrayDestroy();
    }

    dispatch_group_leave(a3[5]);
  }
}

uint64_t sub_10003CEC4()
{
  sub_10003AAE8();

  return swift_deallocClassInstance();
}

BOOL sub_10003CF1C(uint64_t a1)
{
  sub_100026310(a1, v3, &qword_1000DE930, &unk_100083CC0);
  if (v3[3])
  {
    type metadata accessor for MapSnapshotter.Context();
    if (swift_dynamicCast())
    {
      if (sub_10007D3C8())
      {
        sub_10007DFF8();
        sub_100040A84(&qword_1000DF830, &type metadata accessor for WidgetFamily);
        sub_10007E1B8();
        sub_10007E1B8();

        return v3[0] == v2;
      }
    }
  }

  else
  {
    sub_1000256C0(v3, &qword_1000DE930, &unk_100083CC0);
  }

  return 0;
}

id sub_10003D234()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapSnapshotter.Context();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MapSnapshotter.Context()
{
  result = qword_1000DFCC8;
  if (!qword_1000DFCC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10003D36C()
{
  result = sub_10007D3E8();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_10007DFF8();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

id sub_10003D438()
{
  result = [objc_opt_self() strongToWeakObjectsMapTable];
  qword_1000DFAE8 = result;
  return result;
}

id sub_10003D474(uint64_t a1, uint64_t a2)
{
  v70 = a2;
  v69 = sub_10007DFF8();
  v72 = *(v69 - 8);
  v3 = *(v72 + 64);
  v4 = __chkstk_darwin(v69);
  v68 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v61 - v6;
  v8 = sub_100015240(&qword_1000DFD18, &unk_100083CF0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v61 - v10;
  v12 = sub_10007D3E8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v66 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v61 - v18;
  __chkstk_darwin(v17);
  v71 = &v61 - v20;
  v21 = sub_10007DF48();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002620C(0, &qword_1000E0890, OS_dispatch_queue_ptr);
  *v25 = sub_10007E328();
  (*(v22 + 104))(v25, enum case for DispatchPredicate.onQueue(_:), v21);
  v26 = sub_10007DF68();
  (*(v22 + 8))(v25, v21);
  if ((v26 & 1) == 0)
  {
    __break(1u);
LABEL_15:
    swift_once();
    goto LABEL_5;
  }

  sub_100026310(a1, v11, &qword_1000DFD18, &unk_100083CF0);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1000256C0(v11, &qword_1000DFD18, &unk_100083CF0);
    return 0;
  }

  v27 = v13;
  v28 = v71;
  (*(v13 + 32))(v71, v11, v12);
  v65 = v7;
  v29 = *(v13 + 16);
  v29(v19, v28, v12);
  v67 = v19;
  v30 = v72;
  v11 = *(v72 + 16);
  v31 = v69;
  (v11)(v7, v70, v69);
  v32 = type metadata accessor for MapSnapshotter.Context();
  v33 = objc_allocWithZone(v32);
  v63 = v13 + 16;
  v64 = v29;
  v29(&v33[OBJC_IVAR____TtCC17GeneralMapsWidget14MapSnapshotterP33_D3522C9343D4C44065DB06BAD982882A7Context_identifier], v67, v12);
  v34 = v65;
  (v11)(&v33[OBJC_IVAR____TtCC17GeneralMapsWidget14MapSnapshotterP33_D3522C9343D4C44065DB06BAD982882A7Context_family], v65, v31);
  v75.receiver = v33;
  v75.super_class = v32;
  v26 = objc_msgSendSuper2(&v75, "init");
  v35 = *(v30 + 8);
  v21 = v31;
  v72 = v30 + 8;
  v65 = v35;
  v35(v34, v31);
  v25 = *(v27 + 8);
  v36 = v67;
  v67 = (v27 + 8);
  (v25)(v36, v12);
  if (qword_1000DE250 != -1)
  {
    goto LABEL_15;
  }

LABEL_5:
  v37 = [qword_1000DFAE8 objectForKey:v26];
  v38 = v68;
  if (!v37)
  {
    (v25)(v71, v12);

    return 0;
  }

  v61 = v26;
  v62 = v37;
  if (qword_1000DE268 != -1)
  {
    swift_once();
  }

  v39 = sub_10007D5C8();
  sub_1000046BC(v39, qword_1000E4B28);
  (v11)(v38, v70, v21);
  v40 = v66;
  v41 = v71;
  (v64)(v66, v71, v12);
  v42 = sub_10007D5A8();
  v43 = sub_10007E298();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v64 = v25;
    v45 = v21;
    v46 = v44;
    v70 = swift_slowAlloc();
    v74 = v70;
    *v46 = 136446722;
    v73 = sub_100015240(&qword_1000DFCD8, &qword_100083CB0);
    sub_100015240(&qword_1000DFCE0, &qword_100083CB8);
    v47 = sub_10007E168();
    v49 = sub_100051190(v47, v48, &v74);

    *(v46 + 4) = v49;
    v50 = v40;
    *(v46 + 12) = 2082;
    sub_100040A84(&qword_1000DFCE8, &type metadata accessor for WidgetFamily);
    v51 = sub_10007E588();
    v53 = v52;
    v65(v38, v45);
    v54 = sub_100051190(v51, v53, &v74);

    *(v46 + 14) = v54;
    *(v46 + 22) = 2082;
    sub_100040A84(&qword_1000DFD20, &type metadata accessor for UUID);
    v55 = sub_10007E588();
    v57 = v56;
    v58 = v64;
    (v64)(v50, v12);
    v59 = sub_100051190(v55, v57, &v74);

    *(v46 + 24) = v59;
    _os_log_impl(&_mh_execute_header, v42, v43, "%{public}s: using existing snapshotter for %{public}s: %{public}s", v46, 0x20u);
    swift_arrayDestroy();

    (v58)(v71, v12);
  }

  else
  {

    (v25)(v40, v12);
    v65(v38, v21);
    (v25)(v41, v12);
  }

  return v62;
}

uint64_t sub_10003DC98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v83 = a3;
  v5 = sub_10007DFF8();
  v80 = *(v5 - 8);
  v6 = v80[8];
  v7 = __chkstk_darwin(v5);
  v82 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v79 = &v68 - v9;
  v10 = sub_100015240(&qword_1000DFD18, &unk_100083CF0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v68 - v12;
  v14 = sub_10007D3E8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v81 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v78 = &v68 - v20;
  __chkstk_darwin(v19);
  v84 = &v68 - v21;
  v22 = sub_10007DF48();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v26 = (&v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10002620C(0, &qword_1000E0890, OS_dispatch_queue_ptr);
  *v26 = sub_10007E328();
  (*(v23 + 104))(v26, enum case for DispatchPredicate.onQueue(_:), v22);
  v27 = sub_10007DF68();
  (*(v23 + 8))(v26, v22);
  if ((v27 & 1) == 0)
  {
    __break(1u);
LABEL_12:
    swift_once();
    goto LABEL_5;
  }

  sub_100026310(a2, v13, &qword_1000DFD18, &unk_100083CF0);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    return sub_1000256C0(v13, &qword_1000DFD18, &unk_100083CF0);
  }

  v77 = a1;
  a2 = v84;
  (*(v15 + 32))(v84, v13, v14);
  if (qword_1000DE268 != -1)
  {
    goto LABEL_12;
  }

LABEL_5:
  v29 = sub_10007D5C8();
  sub_1000046BC(v29, qword_1000E4B28);
  v30 = v79;
  v31 = v80;
  v75 = v80[2];
  v76 = (v80 + 2);
  v75(v79, v83, v5);
  v32 = v78;
  v74 = *(v15 + 16);
  v74(v78, a2, v14);
  v33 = sub_10007D5A8();
  v34 = sub_10007E298();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v70 = v34;
    v36 = v30;
    v37 = v35;
    v71 = swift_slowAlloc();
    v86 = v71;
    *v37 = 136446722;
    v85 = sub_100015240(&qword_1000DFCD8, &qword_100083CB0);
    sub_100015240(&qword_1000DFCE0, &qword_100083CB8);
    v38 = sub_10007E168();
    v69 = v33;
    v40 = v32;
    v41 = sub_100051190(v38, v39, &v86);

    *(v37 + 4) = v41;
    *(v37 + 12) = 2082;
    sub_100040A84(&qword_1000DFCE8, &type metadata accessor for WidgetFamily);
    v42 = sub_10007E588();
    v44 = v43;
    v45 = v31[1];
    v73 = (v31 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v46 = v36;
    v47 = v14;
    v48 = v5;
    v80 = v45;
    (v45)(v46, v5);
    v49 = sub_100051190(v42, v44, &v86);

    *(v37 + 14) = v49;
    *(v37 + 22) = 2082;
    sub_100040A84(&qword_1000DFD20, &type metadata accessor for UUID);
    v50 = sub_10007E588();
    v52 = v51;
    v53 = *(v15 + 8);
    v72 = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v78 = v53;
    (v53)(v40, v47);
    v54 = sub_100051190(v50, v52, &v86);
    a2 = v84;

    *(v37 + 24) = v54;
    v55 = v69;
    _os_log_impl(&_mh_execute_header, v69, v70, "%{public}s: storing snapshotter for %{public}s: %{public}s", v37, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v56 = *(v15 + 8);
    v72 = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v78 = v56;
    (v56)(v32, v14);
    v57 = v31[1];
    v73 = (v31 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v47 = v14;
    v48 = v5;
    v80 = v57;
    (v57)(v30, v5);
  }

  v58 = v81;
  v59 = v47;
  v60 = v47;
  v61 = v74;
  v74(v81, a2, v59);
  v62 = v82;
  v63 = v75;
  v75(v82, v83, v48);
  v64 = type metadata accessor for MapSnapshotter.Context();
  v65 = objc_allocWithZone(v64);
  v61(&v65[OBJC_IVAR____TtCC17GeneralMapsWidget14MapSnapshotterP33_D3522C9343D4C44065DB06BAD982882A7Context_identifier], v58, v60);
  v63(&v65[OBJC_IVAR____TtCC17GeneralMapsWidget14MapSnapshotterP33_D3522C9343D4C44065DB06BAD982882A7Context_family], v62, v48);
  v87.receiver = v65;
  v87.super_class = v64;
  v66 = objc_msgSendSuper2(&v87, "init");
  (v80)(v62, v48);
  v67 = v78;
  (v78)(v58, v60);
  if (qword_1000DE250 != -1)
  {
    swift_once();
  }

  [qword_1000DFAE8 setObject:v77 forKey:v66];

  return v67(v84, v60);
}

uint64_t sub_10003E4A0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10007DF48();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10002620C(0, &qword_1000E0890, OS_dispatch_queue_ptr);
  *v8 = sub_10007E328();
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = sub_10007DF68();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    if (qword_1000DE250 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v10 = [qword_1000DFAE8 keyEnumerator];
  v11 = [v10 allObjects];

  v12 = sub_10007E1D8();
  v13 = sub_10003A5AC(v12);

  if (v13)
  {
    __chkstk_darwin(result);
    *&v16[-16] = a1;
    v15 = sub_10003E7F0(sub_10003E7D0, &v16[-32], v13);
    __chkstk_darwin(v15);
    *&v16[-16] = v2;
    *&v16[-8] = a1;
    sub_10003CB10(sub_10003ECE0, &v16[-32], v15);
  }

  return result;
}

BOOL sub_10003E70C(uint64_t *a1)
{
  v1 = *a1;
  sub_10007DFF8();
  sub_100040A84(&qword_1000DF830, &type metadata accessor for WidgetFamily);
  sub_10007E1B8();
  sub_10007E1B8();
  return v4 == v3;
}

void *sub_10003E7F0(uint64_t (*a1)(id *), void *a2, unint64_t a3)
{
  v4 = a3;
  v23 = _swiftEmptyArrayStorage;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10007E528())
  {
    v8 = 0;
    v20 = v4 & 0xFFFFFFFFFFFFFF8;
    v21 = v4 & 0xC000000000000001;
    v19 = v4;
    while (1)
    {
      if (v21)
      {
        v9 = sub_10007E468();
      }

      else
      {
        if (v8 >= *(v20 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v22 = v9;
      v12 = a2;
      v13 = a1(&v22);
      if (v3)
      {

        return v12;
      }

      if (v13)
      {
        sub_10007E488();
        v14 = i;
        v15 = a1;
        v16 = a2;
        v17 = v23[2];
        sub_10007E4B8();
        a2 = v16;
        a1 = v15;
        i = v14;
        v4 = v19;
        sub_10007E4C8();
        sub_10007E498();
      }

      else
      {
      }

      ++v8;
      if (v11 == i)
      {
        v12 = v23;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v12 = _swiftEmptyArrayStorage;
LABEL_20:

  return v12;
}

id sub_10003E99C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10007DFF8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  if (qword_1000DE268 != -1)
  {
    swift_once();
  }

  v12 = sub_10007D5C8();
  sub_1000046BC(v12, qword_1000E4B28);
  (*(v7 + 16))(v10, a3, v6);
  v13 = sub_10007D5A8();
  v14 = sub_10007E2A8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v27 = v11;
    v30 = v16;
    *v15 = 136446466;
    v29 = sub_100015240(&qword_1000DFCD8, &qword_100083CB0);
    sub_100015240(&qword_1000DFCE0, &qword_100083CB8);
    v17 = sub_10007E168();
    v19 = sub_100051190(v17, v18, &v30);
    v28 = v3;
    v20 = v19;

    *(v15 + 4) = v20;
    *(v15 + 12) = 2082;
    sub_100040A84(&qword_1000DFCE8, &type metadata accessor for WidgetFamily);
    v21 = sub_10007E588();
    v23 = v22;
    (*(v7 + 8))(v10, v6);
    v24 = sub_100051190(v21, v23, &v30);

    *(v15 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v13, v14, "%{public}s: removing snapshotter for %{public}s", v15, 0x16u);
    swift_arrayDestroy();
    v11 = v27;
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  if (qword_1000DE250 != -1)
  {
    swift_once();
  }

  return [qword_1000DFAE8 removeObjectForKey:v11];
}

uint64_t sub_10003ECFC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10003ED58(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for GeneralMapsStateCollector.NearbyCategorySnapshot();
  v39 = *(v6 - 8);
  v7 = *(v39 + 64);
  __chkstk_darwin(v6 - 8);
  v41 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  sub_100015240(&qword_1000DEA28, &qword_1000829C0);
  v40 = a2;
  result = sub_10007E548();
  v12 = result;
  if (*(v9 + 16))
  {
    v38 = v3;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v24 = v21 | (v13 << 6);
      v25 = *(*(v9 + 48) + v24);
      v26 = *(v39 + 72);
      v27 = *(v9 + 56) + v26 * v24;
      if (v40)
      {
        sub_100025500(v27, v41);
      }

      else
      {
        sub_10002549C(v27, v41);
      }

      v28 = *(v12 + 40);
      sub_10007E5D8();
      sub_10007E5E8(v25);
      result = sub_10007E608();
      v29 = -1 << *(v12 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v19 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v19 + 8 * v31);
          if (v35 != -1)
          {
            v20 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v30) & ~*(v19 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      *(*(v12 + 48) + v20) = v25;
      result = sub_100025500(v41, *(v12 + 56) + v26 * v20);
      ++*(v12 + 16);
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_36;
    }

    v36 = 1 << *(v9 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero((v9 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v36;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_10003F078(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100015240(&qword_1000DE958, &qword_100082920);
  result = sub_10007E548();
  v8 = result;
  if (*(v5 + 16))
  {
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
      if ((a2 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      result = sub_10007E388(*(v8 + 40));
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
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
        goto LABEL_37;
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

    if (a2)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v32;
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

uint64_t sub_10003F2E0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100015240(&qword_1000DEB20, &unk_100083CD0);
  result = sub_10007E548();
  v8 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
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
      v32 = *(*(v5 + 56) + 16 * v20);
      if ((a2 & 1) == 0)
      {
        v22 = v21;
      }

      result = sub_10007E388(*(v8 + 40));
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 16 * v16) = v32;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if (a2)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_10003F554(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100015240(&qword_1000DEB28, &qword_100082AB0);
  result = sub_10007E548();
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
        sub_100026378((*(v5 + 56) + 32 * v23), v36);
      }

      else
      {
        sub_100040ACC(v24, &v37);
        sub_10003ECFC(*(v5 + 56) + 32 * v23, v36);
      }

      result = sub_10007E418(*(v8 + 40));
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
      result = sub_100026378(v36, (*(v8 + 56) + 32 * v16));
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

unint64_t sub_10003F80C(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_10007E408() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + v6);
      sub_10007E5D8();
      sub_10007E5E8(v10);
      result = sub_10007E608();
      v11 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v11 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v12 = *(a2 + 48);
      v13 = (v12 + v3);
      v14 = (v12 + v6);
      if (v3 != v6 || v13 >= v14 + 1)
      {
        *v13 = *v14;
      }

      v15 = *(a2 + 56);
      v16 = *(*(type metadata accessor for GeneralMapsStateCollector.NearbyCategorySnapshot() - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v11 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v11)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

void sub_10003F9DC(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_10007E408() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_10007E388(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 16 * v3);
          v20 = (v18 + 16 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

uint64_t sub_10003FB68(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_100077B50(a2 & 1);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_100040210();
      goto LABEL_7;
    }

    sub_10003ED58(v13, a3 & 1);
    v20 = *v4;
    v21 = sub_100077B50(a2 & 1);
    if ((v14 & 1) == (v22 & 1))
    {
      v10 = v21;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_10007E5B8();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = v17 + *(*(type metadata accessor for GeneralMapsStateCollector.NearbyCategorySnapshot() - 8) + 72) * v10;

    return sub_100040A20(a1, v18);
  }

LABEL_13:

  return sub_1000400FC(v10, a2 & 1, a1, v16);
}

id sub_10003FCB4(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_100077B00(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_10003F078(v13, a3 & 1);
      v17 = *v4;
      v8 = sub_100077B00(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        sub_10002620C(0, &qword_1000DE960, MapsSuggestionsEntry_ptr);
        sub_10007E5B8();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v16 = v8;
      sub_10004041C();
      v8 = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;

    return _objc_release_x1();
  }

  v19[(v8 >> 6) + 8] |= 1 << v8;
  *(v19[6] + 8 * v8) = a2;
  *(v19[7] + 8 * v8) = a1;
  v22 = v19[2];
  v12 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v23;

  return a2;
}

id sub_10003FE2C(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_100077C00(a3);
  v12 = *(v9 + 16);
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v9 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 < v15 || (a4 & 1) != 0)
    {
      sub_10003F2E0(v15, a4 & 1);
      v19 = *v5;
      v10 = sub_100077C00(a3);
      if ((v16 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_10002620C(0, &qword_1000DFD08, MKMapSnapshotter_ptr);
        result = sub_10007E5B8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v18 = v10;
      sub_10004057C();
      v10 = v18;
    }
  }

  v21 = *v5;
  if (v16)
  {
    v22 = (v21[7] + 16 * v10);
    v23 = v22[1];
    *v22 = a1;
    v22[1] = a2;
  }

  v21[(v10 >> 6) + 8] |= 1 << v10;
  *(v21[6] + 8 * v10) = a3;
  v25 = (v21[7] + 16 * v10);
  *v25 = a1;
  v25[1] = a2;
  v26 = v21[2];
  v14 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v14)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v27;

  return a3;
}

_OWORD *sub_10003FFB0(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_100077BBC(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1000406F4();
      goto LABEL_7;
    }

    sub_10003F554(v13, a3 & 1);
    v19 = *v4;
    v20 = sub_100077BBC(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_100040ACC(a2, v22);
      return sub_100040194(v10, v22, a1, v16);
    }

LABEL_15:
    result = sub_10007E5B8();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  sub_1000250AC(v17);

  return sub_100026378(a1, v17);
}

uint64_t sub_1000400FC(unint64_t a1, char a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2 & 1;
  v7 = a4[7];
  v8 = type metadata accessor for GeneralMapsStateCollector.NearbyCategorySnapshot();
  result = sub_100025500(a3, v7 + *(*(v8 - 8) + 72) * a1);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

_OWORD *sub_100040194(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_100026378(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

void *sub_100040210()
{
  v1 = v0;
  v2 = type metadata accessor for GeneralMapsStateCollector.NearbyCategorySnapshot();
  v25 = *(v2 - 8);
  v3 = *(v25 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100015240(&qword_1000DEA28, &qword_1000829C0);
  v6 = *v0;
  v7 = sub_10007E538();
  v8 = v7;
  if (*(v6 + 16))
  {
    v24 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = *(*(v6 + 48) + v21);
        v23 = *(v25 + 72) * v21;
        sub_10002549C(*(v6 + 56) + v23, v5);
        *(*(v8 + 48) + v21) = v22;
        result = sub_100025500(v5, *(v8 + 56) + v23);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v24;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
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

id sub_10004041C()
{
  v1 = v0;
  sub_100015240(&qword_1000DE958, &qword_100082920);
  v2 = *v0;
  v3 = sub_10007E538();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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

void *sub_10004057C()
{
  v1 = v0;
  sub_100015240(&qword_1000DEB20, &unk_100083CD0);
  v2 = *v0;
  v3 = sub_10007E538();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 16 * v17) = v19;
        v20 = v18;
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

void *sub_1000406F4()
{
  v1 = v0;
  sub_100015240(&qword_1000DEB28, &qword_100082AB0);
  v2 = *v0;
  v3 = sub_10007E538();
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
        v18 = 40 * v17;
        sub_100040ACC(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_10003ECFC(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_100026378(v22, (*(v4 + 56) + v17));
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

void sub_100040898(void *a1)
{
  v3 = *(v1 + 48);
  *(v1 + 48) = a1;
  v2 = a1;
}

uint64_t sub_1000408E4(void *a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, *a2);
}

uint64_t sub_100040914()
{
  v1 = *(sub_10007D3B8() - 8);
  v2 = *(v0 + 16);
  v3 = (v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80)));

  return sub_10003C624(v2, v3);
}

void *sub_100040980()
{
  v1 = *(sub_100015240(&qword_1000DE928, &unk_100082900) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  return sub_10003C1C4(v2, v3, v4, v5);
}

uint64_t sub_1000409F4(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_100040A20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GeneralMapsStateCollector.NearbyCategorySnapshot();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100040A84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100040B40()
{
  result = sub_10007DD58();
  qword_1000E4B00 = result;
  return result;
}

uint64_t sub_100040B7C()
{
  [v0 altitude];
  if ([v0 hasPitch])
  {
    [v0 altitude];
    [v0 pitch];
    v2 = sub_1000415EC(v1);
    cos(v2);
  }

  [v0 latitude];
  [v0 longitude];
  v3 = sub_1000415EC(30.0);
  tan(v3 * 0.5);

  return MKMapRectMakeWithRadialDistance();
}

uint64_t sub_100040C54()
{
  v1 = sub_10007E658();
  v31 = *(v1 - 8);
  v32 = v1;
  v2 = *(v31 + 64);
  __chkstk_darwin(v1);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10007E638();
  v29 = *(v5 - 8);
  v30 = v5;
  v6 = *(v29 + 64);
  __chkstk_darwin(v5);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10007E6B8();
  v9 = *(v28 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v28);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10007E6C8();
  v14 = *(v13 - 8);
  v26 = v13;
  v27 = v14;
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [v0 expectedTime];
  v25[1] = (v18 * 0xDE0B6B3A7640000uLL) >> 64;
  v25[2] = 1000000000000000000 * v18;
  sub_100015240(&qword_1000DFD28, &qword_100083D18);
  v19 = *(sub_10007E698() - 8);
  v20 = *(v19 + 72);
  v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_100083D00;
  sub_10007E668();
  sub_10007E678();
  sub_10007E688();
  sub_100041284(v22);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_10007E6A8();
  sub_10007E628();
  sub_10007E648();
  sub_10007D218();

  (*(v31 + 8))(v4, v32);
  (*(v29 + 8))(v8, v30);
  (*(v9 + 8))(v12, v28);
  sub_1000415A4(&qword_1000DFD30, &type metadata accessor for Duration.UnitsFormatStyle);
  v23 = v26;
  sub_10007E6D8();
  (*(v27 + 8))(v17, v23);
  return v33;
}

uint64_t sub_100041084()
{
  MKDefaultCoordinateRegion();
  v4 = fabs(v3);
  v5 = fabs(v2) > 180.0 || v4 > 90.0;
  if (v5 || (v0 >= 0.0 ? (v9 = v0 > 180.0) : (v9 = 1), v9 || v1 < 0.0 || v1 > 360.0))
  {
    v6 = MKCoordinateRegionWorld[1];
    v7 = MKCoordinateRegionWorld[2];
    v8 = MKCoordinateRegionWorld[3];
  }

  result = MKMapRectForCoordinateRegion();
  *&xmmword_1000E4B08 = v11;
  *(&xmmword_1000E4B08 + 1) = v12;
  qword_1000E4B18 = v13;
  unk_1000E4B20 = v14;
  return result;
}

Swift::Int sub_100041124(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100015240(&unk_1000DFD50, &qword_100083D28);
    v3 = sub_10007E448();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      sub_100040ACC(v6 + 40 * v4, v19);
      result = sub_10007E418(*(v3 + 40));
      v8 = ~(-1 << *(v3 + 32));
      for (i = result & v8; ; i = (i + 1) & v8)
      {
        v10 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v10) == 0)
        {
          break;
        }

        sub_100040ACC(*(v3 + 48) + 40 * i, v18);
        v11 = sub_10007E428();
        result = sub_1000415FC(v18);
        if (v11)
        {
          sub_1000415FC(v19);
          goto LABEL_4;
        }
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v10;
      v12 = *(v3 + 48) + 40 * i;
      v13 = v19[0];
      v14 = v19[1];
      *(v12 + 32) = v20;
      *v12 = v13;
      *(v12 + 16) = v14;
      v15 = *(v3 + 16);
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (!v16)
      {
        *(v3 + 16) = v17;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

void *sub_100041284(uint64_t a1)
{
  v2 = sub_10007E698();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_100015240(&qword_1000DFD38, &qword_100083D20);
    v10 = sub_10007E448();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_1000415A4(&qword_1000DFD40, &type metadata accessor for Duration.UnitsFormatStyle.Unit);
      v18 = sub_10007E0F8();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_1000415A4(&qword_1000DFD48, &type metadata accessor for Duration.UnitsFormatStyle.Unit);
          v25 = sub_10007E128();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_1000415A4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100041650(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v65 = a5;
  v68 = a4;
  v69 = a3;
  v11 = sub_10007DFF8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v64 - v17;
  *(v7 + 80) = 0;
  *(v7 + 88) = 0;
  *(v7 + 96) = 1;
  *(v7 + 104) = a2;
  *(v7 + 16) = xmmword_1000834F0;
  *(v7 + 32) = 0;
  v19 = a2;
  *(v7 + 40) = dispatch_group_create();
  *(v7 + 48) = 0;
  *(v7 + 56) = sub_100024EF0(&_swiftEmptyArrayStorage);
  *(v7 + 64) = 0;
  *(v7 + 72) = &_swiftEmptyArrayStorage;
  v20 = objc_allocWithZone(MKMapSnapshotOptions);

  v21 = [v20 init];
  v22 = *(v7 + 16);
  *(v7 + 16) = v21;

  v23 = *(v7 + 16);
  if (!v23)
  {
    __break(1u);
    goto LABEL_24;
  }

  v66 = v16;
  v67 = v19;
  [v23 _setShowsAppleLogo:0];
  v24 = *(v7 + 16);
  if (!v24)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v25 = v24;
  v26 = a1;
  sub_10007E0A8();
  [v25 setSize:?];

  v27 = *(v7 + 16);
  if (!v27)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  sub_100015240(&qword_1000DF448, &unk_100083550);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_100083500;
  v29 = objc_opt_self();
  v30 = v27;
  *(v28 + 32) = [v29 customFeatureAnnotationForMapItem:v69 styleAttributes:v68 suppressLabel:1];
  sub_100015240(&unk_1000DF450, &qword_100083560);
  isa = sub_10007E1C8().super.isa;

  [v30 _setCustomFeatureAnnotations:isa];

  v32 = *(v7 + 16);
  v33 = v32;

  if (!v32)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  [v33 _setSearchResultsType:1];

  v34 = v26;
  if (a6)
  {
    v35 = *(v7 + 16);
    if (v35)
    {
      v36 = v35;
      v37 = a6;
      v38 = [v37 destination];
      if (v38)
      {
        v39 = v38;
        [v38 coordinate];
        v41 = v40;
        v43 = v42;
        v45 = v44;

        nullsub_1(v41, v43, v45);
        CLLocationCoordinate2DFromGEOLocationCoordinate2D();
        sub_100041FEC(v34, v37);
        [v36 setMapRect:?];

        sub_10007E0B8();
        v46 = v66;
        (*(v12 + 104))(v66, enum case for WidgetFamily.systemSmall(_:), v11);
        sub_100042294();
        v47 = sub_10007E128();
        v48 = *(v12 + 8);
        v48(v46, v11);
        v48(v18, v11);
        if ((v47 & 1) == 0)
        {
          v49 = *(v7 + 16);
          if (!v49)
          {
LABEL_32:
            __break(1u);
            goto LABEL_33;
          }

          [v49 _setComposedRouteForRouteLine:v37];
        }

        v50 = *(v7 + 16);
        if (v50)
        {
          v51 = v50;
          [v51 setMapType:{objc_msgSend(v37, "mapType")}];

LABEL_21:
          v62 = sub_10007E0C8();
          (*(*(v62 - 8) + 8))(v34, v62);
          return;
        }

        goto LABEL_29;
      }

LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v52 = *(v7 + 16);
  if (!v52)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v53 = v69;
  v54 = v52;
  sub_10007E0A8();
  v57 = [objc_opt_self() cameraLookingAtMapItem:v53 forViewSize:1 allowPitch:{v55, v56}];

  [v54 setCamera:v57];
  v58 = *(v7 + 16);
  if (!v58)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v59 = v58;
  sub_100041DBC();
  [v59 _setEdgeInsets:?];

  if ((v65 & 0x100000000) != 0)
  {
    v63 = sub_10007E0C8();
    (*(*(v63 - 8) + 8))(v34, v63);

    return;
  }

  v60 = *(v7 + 16);
  if (v60)
  {
    if (v65 == 1)
    {
      v61 = 104;
    }

    else
    {
      v61 = 0;
    }

    [v60 setMapType:v61];

    goto LABEL_21;
  }

LABEL_33:
  __break(1u);
}

void sub_100041C34(void *a1)
{
  v2 = *(v1 + 104);
  if (v2 && *(v1 + 96) == 1)
  {
    v4 = v2;
    v5 = [a1 image];
    [v5 size];
    v7 = v6;
    v9 = v8;

    v19.origin.x = 0.0;
    v19.origin.y = 0.0;
    v19.size.width = v7;
    v19.size.height = v9;
    v20 = CGRectInset(v19, -22.0, -22.0);
    x = v20.origin.x;
    y = v20.origin.y;
    width = v20.size.width;
    height = v20.size.height;
    [v4 coordinate];
    [a1 pointForCoordinate:?];
    v15 = v14;
    v17 = v16;
    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    v18.x = v15;
    v18.y = v17;
    LODWORD(a1) = CGRectContainsPoint(v21, v18);

    if (a1)
    {
      *(v1 + 80) = v15;
      *(v1 + 88) = v17;
      *(v1 + 96) = 0;
    }
  }
}

uint64_t sub_100041D50()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100041DBC()
{
  v0 = sub_10007DFF8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007E0B8();
  result = (*(v1 + 88))(v4, v0);
  if (result != enum case for WidgetFamily.systemSmall(_:))
  {
    if (result == enum case for WidgetFamily.systemMedium(_:))
    {
      return sub_10007E0A8();
    }

    else if (result != enum case for WidgetFamily.systemLarge(_:))
    {
      result = sub_10007E518();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100041FEC(uint64_t a1, void *a2)
{
  v3 = sub_10007DFF8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007E0B8();
  v8 = (*(v4 + 88))(v7, v3);
  if (v8 == enum case for WidgetFamily.systemSmall(_:))
  {
    MKMapRectMakeWithRadialDistance();
  }

  else
  {
    if (v8 != enum case for WidgetFamily.systemMedium(_:) && v8 != enum case for WidgetFamily.systemLarge(_:))
    {
      result = sub_10007E518();
      __break(1u);
      return result;
    }

    v10 = [a2 boundingMapRegion];
    GEOMapRectForMapRegion();
  }

  sub_10007E0A8();
  sub_100041DBC();
  return _MKMapRectThatFits();
}

unint64_t sub_100042294()
{
  result = qword_1000DFF48;
  if (!qword_1000DFF48)
  {
    sub_10007DFF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DFF48);
  }

  return result;
}

uint64_t type metadata accessor for WidgetContentView()
{
  result = qword_1000DFFB0;
  if (!qword_1000DFFB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100042360()
{
  sub_1000423CC();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1000423CC()
{
  if (!qword_1000DFFC0)
  {
    type metadata accessor for GeneralMapsTimelineEntry(255);
    v0 = sub_10007E3A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DFFC0);
    }
  }
}

uint64_t sub_100042440@<X0>(uint64_t a1@<X8>)
{
  v141 = a1;
  v142 = sub_100015240(&qword_1000E0078, &qword_100083F58);
  v1 = *(*(v142 - 8) + 64);
  __chkstk_darwin(v142);
  v3 = (&v110 - v2);
  v126 = sub_100015240(&qword_1000E0080, &qword_100083F60);
  v4 = *(*(v126 - 8) + 64);
  __chkstk_darwin(v126);
  v117 = &v110 - v5;
  v6 = type metadata accessor for NavigationETAEntryContent(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v116 = &v110 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_100015240(&qword_1000E0088, &qword_100083F68);
  v9 = *(*(v124 - 8) + 64);
  __chkstk_darwin(v124);
  v125 = &v110 - v10;
  v132 = sub_100015240(&qword_1000E0090, &qword_100083F70);
  v11 = *(*(v132 - 8) + 64);
  __chkstk_darwin(v132);
  v127 = &v110 - v12;
  v123 = sub_100015240(&qword_1000E0098, &qword_100083F78);
  v13 = *(*(v123 - 8) + 64);
  __chkstk_darwin(v123);
  v115 = &v110 - v14;
  v15 = type metadata accessor for CommuteWindowEntryContent(0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v114 = &v110 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_100015240(&qword_1000E00A0, &qword_100083F80);
  v18 = *(*(v122 - 8) + 64);
  __chkstk_darwin(v122);
  v113 = &v110 - v19;
  v20 = type metadata accessor for SuggestedDestinationEntryContent(0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v112 = &v110 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_100015240(&qword_1000E00A8, &qword_100083F88);
  v23 = *(*(v139 - 8) + 64);
  __chkstk_darwin(v139);
  v140 = &v110 - v24;
  v128 = sub_100015240(&qword_1000E00B0, &qword_100083F90);
  v25 = *(*(v128 - 8) + 64);
  __chkstk_darwin(v128);
  v130 = &v110 - v26;
  v119 = sub_100015240(&qword_1000E00B8, &qword_100083F98);
  v27 = *(*(v119 - 8) + 64);
  __chkstk_darwin(v119);
  v120 = &v110 - v28;
  v129 = sub_100015240(&qword_1000E00C0, &qword_100083FA0);
  v29 = *(*(v129 - 8) + 64);
  __chkstk_darwin(v129);
  v121 = &v110 - v30;
  v138 = sub_100015240(&qword_1000E00C8, &qword_100083FA8);
  v31 = *(*(v138 - 8) + 64);
  __chkstk_darwin(v138);
  v131 = &v110 - v32;
  v134 = sub_10007D9F8();
  v33 = *(v134 - 8);
  v34 = *(v33 + 64);
  v35 = __chkstk_darwin(v134);
  v37 = &v110 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v39 = &v110 - v38;
  v137 = sub_10007DA18();
  v40 = *(v137 - 8);
  v41 = *(v40 + 64);
  v42 = __chkstk_darwin(v137);
  v135 = &v110 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v136 = &v110 - v44;
  v118 = sub_100015240(&qword_1000E00D0, &unk_100083FB0);
  v45 = *(*(v118 - 8) + 64);
  __chkstk_darwin(v118);
  v111 = &v110 - v46;
  v47 = type metadata accessor for NearbyEntryContent(0);
  v48 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v47 - 8);
  v110 = &v110 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_100015240(&qword_1000DFF50, qword_100083D90);
  v51 = *(*(v50 - 8) + 64);
  __chkstk_darwin(v50 - 8);
  v53 = &v110 - v52;
  v54 = sub_100015240(&qword_1000DE630, &unk_1000861F0);
  v55 = *(*(v54 - 8) + 64);
  v56 = __chkstk_darwin(v54 - 8);
  v58 = &v110 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v56);
  v60 = &v110 - v59;
  sub_100026310(v133, v53, &qword_1000DFF50, qword_100083D90);
  v61 = type metadata accessor for GeneralMapsTimelineEntry(0);
  if ((*(*(v61 - 8) + 48))(v53, 1, v61) != 1)
  {
    sub_100026310(&v53[*(v61 + 24)], v60, &qword_1000DE630, &unk_1000861F0);
    sub_10004515C(v53, type metadata accessor for GeneralMapsTimelineEntry);
    v63 = type metadata accessor for GeneralMapsTimelineEntryContent(0);
    if ((*(*(v63 - 8) + 48))(v60, 1, v63) == 1)
    {
      goto LABEL_4;
    }

    v133 = v60;
    sub_100026310(v60, v58, &qword_1000DE630, &unk_1000861F0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v69 = (v33 + 16);
    v70 = (v33 + 8);
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        v99 = v116;
        sub_10004508C(v58, v116, type metadata accessor for NavigationETAEntryContent);
        v100 = v117;
        sub_1000450F4(v99, v117, type metadata accessor for NavigationETAEntryContent);
        KeyPath = swift_getKeyPath();
        *(v100 + *(type metadata accessor for NavigationETAWidgetView(0) + 20)) = KeyPath;
        sub_100015240(&qword_1000DEC20, &unk_100083720);
        swift_storeEnumTagMultiPayload();
        sub_10007D9E8();
        v102 = v134;
        (*v69)(v37, v39, v134);
        v103 = v136;
        sub_10007DA08();
        (*v70)(v39, v102);
        v104 = v137;
        (*(v40 + 16))(v135, v103, v137);
        sub_100045044(&qword_1000E00D8, &type metadata accessor for BlurReplaceTransition);
        v105 = sub_10007D678();
        (*(v40 + 8))(v103, v104);
        v106 = v125;
        *(v100 + *(v126 + 36)) = v105;
        sub_100026310(v100, v106, &qword_1000E0080, &qword_100083F60);
        swift_storeEnumTagMultiPayload();
        sub_100044D8C();
        sub_100044E74();
        v107 = v127;
        sub_10007D9D8();
        sub_100026310(v107, v130, &qword_1000E0090, &qword_100083F70);
        swift_storeEnumTagMultiPayload();
        sub_100044AA4();
        sub_100044D00();
        v108 = v131;
        sub_10007D9D8();
        sub_1000256C0(v107, &qword_1000E0090, &qword_100083F70);
        sub_100026310(v108, v140, &qword_1000E00C8, &qword_100083FA8);
        swift_storeEnumTagMultiPayload();
        sub_100044A18();
        sub_100044F5C();
        sub_10007D9D8();
        sub_1000256C0(v108, &qword_1000E00C8, &qword_100083FA8);
        sub_1000256C0(v100, &qword_1000E0080, &qword_100083F60);
        v97 = type metadata accessor for NavigationETAEntryContent;
        v98 = v99;
        goto LABEL_13;
      }

      v71 = v114;
      sub_10004508C(v58, v114, type metadata accessor for CommuteWindowEntryContent);
      v81 = v115;
      sub_1000450F4(v71, v115, type metadata accessor for CommuteWindowEntryContent);
      v82 = swift_getKeyPath();
      *(v81 + *(type metadata accessor for CommuteWindowWidgetView(0) + 20)) = v82;
      sub_100015240(&qword_1000DEC20, &unk_100083720);
      swift_storeEnumTagMultiPayload();
      sub_10007D9E8();
      v83 = v134;
      (*v69)(v37, v39, v134);
      v84 = v136;
      sub_10007DA08();
      (*v70)(v39, v83);
      v85 = v137;
      (*(v40 + 16))(v135, v84, v137);
      sub_100045044(&qword_1000E00D8, &type metadata accessor for BlurReplaceTransition);
      v86 = sub_10007D678();
      (*(v40 + 8))(v84, v85);
      *(v81 + *(v123 + 36)) = v86;
      sub_100026310(v81, v125, &qword_1000E0098, &qword_100083F78);
      swift_storeEnumTagMultiPayload();
      sub_100044D8C();
      sub_100044E74();
      v87 = v127;
      sub_10007D9D8();
      sub_100026310(v87, v130, &qword_1000E0090, &qword_100083F70);
      swift_storeEnumTagMultiPayload();
      sub_100044AA4();
      sub_100044D00();
      v88 = v131;
      sub_10007D9D8();
      sub_1000256C0(v87, &qword_1000E0090, &qword_100083F70);
      sub_100026310(v88, v140, &qword_1000E00C8, &qword_100083FA8);
      swift_storeEnumTagMultiPayload();
      sub_100044A18();
      sub_100044F5C();
      sub_10007D9D8();
      sub_1000256C0(v88, &qword_1000E00C8, &qword_100083FA8);
      sub_1000256C0(v81, &qword_1000E0098, &qword_100083F78);
      v80 = type metadata accessor for CommuteWindowEntryContent;
    }

    else if (EnumCaseMultiPayload)
    {
      v71 = v112;
      sub_10004508C(v58, v112, type metadata accessor for SuggestedDestinationEntryContent);
      v89 = v113;
      sub_1000450F4(v71, v113, type metadata accessor for SuggestedDestinationEntryContent);
      v90 = swift_getKeyPath();
      *(v89 + *(type metadata accessor for SuggestedDestinationWidgetView(0) + 20)) = v90;
      sub_100015240(&qword_1000DEC20, &unk_100083720);
      swift_storeEnumTagMultiPayload();
      sub_10007D9E8();
      v91 = v134;
      (*v69)(v37, v39, v134);
      v92 = v136;
      sub_10007DA08();
      (*v70)(v39, v91);
      v93 = v137;
      (*(v40 + 16))(v135, v92, v137);
      sub_100045044(&qword_1000E00D8, &type metadata accessor for BlurReplaceTransition);
      v94 = sub_10007D678();
      (*(v40 + 8))(v92, v93);
      *(v89 + *(v122 + 36)) = v94;
      sub_100026310(v89, v120, &qword_1000E00A0, &qword_100083F80);
      swift_storeEnumTagMultiPayload();
      sub_100044B30();
      sub_100044C18();
      v95 = v121;
      sub_10007D9D8();
      sub_100026310(v95, v130, &qword_1000E00C0, &qword_100083FA0);
      swift_storeEnumTagMultiPayload();
      sub_100044AA4();
      sub_100044D00();
      v96 = v131;
      sub_10007D9D8();
      sub_1000256C0(v95, &qword_1000E00C0, &qword_100083FA0);
      sub_100026310(v96, v140, &qword_1000E00C8, &qword_100083FA8);
      swift_storeEnumTagMultiPayload();
      sub_100044A18();
      sub_100044F5C();
      sub_10007D9D8();
      sub_1000256C0(v96, &qword_1000E00C8, &qword_100083FA8);
      sub_1000256C0(v89, &qword_1000E00A0, &qword_100083F80);
      v80 = type metadata accessor for SuggestedDestinationEntryContent;
    }

    else
    {
      v71 = v110;
      sub_10004508C(v58, v110, type metadata accessor for NearbyEntryContent);
      v72 = v111;
      sub_1000450F4(v71, v111, type metadata accessor for NearbyEntryContent);
      v73 = swift_getKeyPath();
      *(v72 + *(type metadata accessor for NearbyWidgetView(0) + 20)) = v73;
      sub_100015240(&qword_1000DEC20, &unk_100083720);
      swift_storeEnumTagMultiPayload();
      sub_10007D9E8();
      v74 = v134;
      (*v69)(v37, v39, v134);
      v75 = v136;
      sub_10007DA08();
      (*v70)(v39, v74);
      v76 = v137;
      (*(v40 + 16))(v135, v75, v137);
      sub_100045044(&qword_1000E00D8, &type metadata accessor for BlurReplaceTransition);
      v77 = sub_10007D678();
      (*(v40 + 8))(v75, v76);
      *(v72 + *(v118 + 36)) = v77;
      sub_100026310(v72, v120, &qword_1000E00D0, &unk_100083FB0);
      swift_storeEnumTagMultiPayload();
      sub_100044B30();
      sub_100044C18();
      v78 = v121;
      sub_10007D9D8();
      sub_100026310(v78, v130, &qword_1000E00C0, &qword_100083FA0);
      swift_storeEnumTagMultiPayload();
      sub_100044AA4();
      sub_100044D00();
      v79 = v131;
      sub_10007D9D8();
      sub_1000256C0(v78, &qword_1000E00C0, &qword_100083FA0);
      sub_100026310(v79, v140, &qword_1000E00C8, &qword_100083FA8);
      swift_storeEnumTagMultiPayload();
      sub_100044A18();
      sub_100044F5C();
      sub_10007D9D8();
      sub_1000256C0(v79, &qword_1000E00C8, &qword_100083FA8);
      sub_1000256C0(v72, &qword_1000E00D0, &unk_100083FB0);
      v80 = type metadata accessor for NearbyEntryContent;
    }

    v97 = v80;
    v98 = v71;
LABEL_13:
    sub_10004515C(v98, v97);
    v60 = v133;
    return sub_1000256C0(v60, &qword_1000DE630, &unk_1000861F0);
  }

  sub_1000256C0(v53, &qword_1000DFF50, qword_100083D90);
  v62 = type metadata accessor for GeneralMapsTimelineEntryContent(0);
  (*(*(v62 - 8) + 56))(v60, 1, 1, v62);
LABEL_4:
  *v3 = swift_getKeyPath();
  sub_100015240(&qword_1000DEC20, &unk_100083720);
  swift_storeEnumTagMultiPayload();
  sub_10007D9E8();
  v64 = v134;
  (*(v33 + 16))(v37, v39, v134);
  v65 = v136;
  sub_10007DA08();
  (*(v33 + 8))(v39, v64);
  v66 = v137;
  (*(v40 + 16))(v135, v65, v137);
  sub_100045044(&qword_1000E00D8, &type metadata accessor for BlurReplaceTransition);
  v67 = sub_10007D678();
  (*(v40 + 8))(v65, v66);
  *(v3 + *(v142 + 36)) = v67;
  sub_100026310(v3, v140, &qword_1000E0078, &qword_100083F58);
  swift_storeEnumTagMultiPayload();
  sub_100044A18();
  sub_100044F5C();
  sub_10007D9D8();
  sub_1000256C0(v3, &qword_1000E0078, &qword_100083F58);
  return sub_1000256C0(v60, &qword_1000DE630, &unk_1000861F0);
}

uint64_t sub_100043A80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v109 = a1;
  v105 = sub_10007DA68();
  v104 = *(v105 - 8);
  v3 = *(v104 + 64);
  __chkstk_darwin(v105);
  v103 = &v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_10007D378();
  v98 = *(v99 - 8);
  v5 = *(v98 + 64);
  __chkstk_darwin(v99);
  v101 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_10007D868();
  v7 = *(*(v102 - 8) + 64);
  __chkstk_darwin(v102);
  v100 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100015240(&qword_1000E0000, &qword_100083E38);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v106 = sub_100015240(&qword_1000E0008, &qword_100083E40);
  v11 = *(*(v106 - 8) + 64);
  __chkstk_darwin(v106);
  v13 = &v95 - v12;
  v14 = sub_100015240(&qword_1000E0010, &qword_100083E48);
  v110 = *(v14 - 8);
  v15 = *(v110 + 64);
  v16 = __chkstk_darwin(v14);
  v108 = &v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v107 = &v95 - v18;
  v19 = sub_100015240(&qword_1000DFF50, qword_100083D90);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v95 - v21;
  v23 = sub_10007D3B8();
  v24 = *(v23 - 8);
  v25 = v24[8];
  v26 = __chkstk_darwin(v23);
  v28 = &v95 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v26);
  v31 = &v95 - v30;
  __chkstk_darwin(v29);
  v33 = &v95 - v32;
  if (GEOConfigGetBOOL())
  {
    sub_100026310(v109, v22, &qword_1000DFF50, qword_100083D90);
    v34 = type metadata accessor for GeneralMapsTimelineEntry(0);
    if ((*(*(v34 - 8) + 48))(v22, 1, v34) != 1)
    {
      v95 = v13;
      v97 = v24;
      v109 = a2;
      v36 = v24[2];
      v36(v31, v22, v23);
      sub_10004515C(v22, type metadata accessor for GeneralMapsTimelineEntry);
      v37 = v24[4];
      v96 = v33;
      v37(v33, v31, v23);
      sub_10007D698();
      v36(v28, v33, v23);
      sub_100015240(&qword_1000E0018, &qword_100083E50);
      v38 = *(v98 + 72);
      v39 = (*(v98 + 80) + 32) & ~*(v98 + 80);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_100083D80;
      sub_10007D348();
      sub_10007D358();
      v98 = v14;
      sub_10007D328();
      sub_10007D338();
      sub_10007D368();
      sub_1000446F4(v40);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_10007D328();
      sub_10007D858();
      sub_100045044(&qword_1000E0020, &type metadata accessor for SystemFormatStyle.DateReference);
      v41 = v23;
      v42 = sub_10007DBC8();
      v44 = v43;
      LOBYTE(v38) = v45;
      v46 = v103;
      sub_10007DA28();
      v47 = v95;
      v48 = v105;
      sub_10007DB98();
      sub_10002D9FC(v42, v44, v38 & 1);

      (*(v104 + 8))(v46, v48);
      v49 = sub_10007DB48();
      KeyPath = swift_getKeyPath();
      v51 = (v47 + *(sub_100015240(&qword_1000E0028, &qword_100083E88) + 36));
      *v51 = KeyPath;
      v51[1] = v49;
      v52 = sub_10007DD28();
      v53 = swift_getKeyPath();
      v54 = (v47 + *(sub_100015240(&qword_1000E0030, &qword_100083EC0) + 36));
      *v54 = v53;
      v54[1] = v52;
      v55 = swift_getKeyPath();
      v56 = v47 + *(sub_100015240(&qword_1000E0038, &qword_100083EF8) + 36);
      *v56 = v55;
      *(v56 + 8) = 2;
      v57 = swift_getKeyPath();
      v58 = v47 + *(sub_100015240(&qword_1000E0040, &qword_100083F30) + 36);
      *v58 = v57;
      *(v58 + 8) = 1;
      *(v58 + 16) = 0;
      LOBYTE(v57) = sub_10007DAB8();
      sub_10007D628();
      v60 = v59;
      v62 = v61;
      v64 = v63;
      v66 = v65;
      v67 = v47 + *(sub_100015240(&qword_1000E0048, &qword_100083F38) + 36);
      *v67 = v57;
      *(v67 + 8) = v60;
      *(v67 + 16) = v62;
      *(v67 + 24) = v64;
      *(v67 + 32) = v66;
      *(v67 + 40) = 0;
      sub_10007DD08();
      v68 = sub_10007DD38();

      v69 = (v47 + *(sub_100015240(&qword_1000E0050, &qword_100083F40) + 36));
      v70 = sub_100015240(&qword_1000E0058, &qword_100083F48);
      v71 = (v69 + *(v70 + 52));
      v72 = *(sub_10007D718() + 20);
      v73 = enum case for RoundedCornerStyle.continuous(_:);
      v74 = sub_10007D918();
      v75 = v71 + v72;
      v14 = v98;
      v76 = v73;
      a2 = v109;
      (*(*(v74 - 8) + 104))(v75, v76, v74);
      __asm { FMOV            V0.2D, #4.0 }

      *v71 = _Q0;
      *v69 = v68;
      *(v69 + *(v70 + 56)) = 256;
      LOBYTE(v70) = sub_10007DAC8();
      sub_10007D628();
      v82 = v47 + *(v106 + 36);
      *v82 = v70;
      *(v82 + 8) = v83;
      *(v82 + 16) = v84;
      *(v82 + 24) = v85;
      *(v82 + 32) = v86;
      *(v82 + 40) = 0;
      sub_10007DE88();
      sub_10007D728();
      (v97[1])(v96, v41);
      v87 = v108;
      sub_10002DB0C(v47, v108, &qword_1000E0008, &qword_100083E40);
      v88 = (v87 + *(v14 + 36));
      v89 = v116;
      v88[4] = v115;
      v88[5] = v89;
      v88[6] = v117;
      v90 = v112;
      *v88 = v111;
      v88[1] = v90;
      v91 = v114;
      v88[2] = v113;
      v88[3] = v91;
      v92 = v87;
      v93 = v107;
      sub_10002DB0C(v92, v107, &qword_1000E0010, &qword_100083E48);
      sub_10002DB0C(v93, a2, &qword_1000E0010, &qword_100083E48);
      v35 = 0;
      return (*(v110 + 56))(a2, v35, 1, v14);
    }

    sub_1000256C0(v22, &qword_1000DFF50, qword_100083D90);
  }

  v35 = 1;
  return (*(v110 + 56))(a2, v35, 1, v14);
}

uint64_t sub_10004450C@<X0>(uint64_t a1@<X8>)
{
  sub_100042440(a1);
  v3 = sub_10007DE78();
  v5 = v4;
  v6 = a1 + *(sub_100015240(&qword_1000DFFF0, &qword_100083E28) + 36);
  sub_100043A80(v1, v6);
  result = sub_100015240(&qword_1000DFFF8, &qword_100083E30);
  v8 = (v6 + *(result + 36));
  *v8 = v3;
  v8[1] = v5;
  return result;
}

uint64_t sub_10004458C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10007D7D8();
  *a1 = result;
  return result;
}

uint64_t sub_1000445B8(uint64_t *a1)
{
  v1 = *a1;

  return sub_10007D7E8();
}

uint64_t sub_1000445E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10007D768();
  *a1 = result;
  return result;
}

uint64_t sub_100044610(uint64_t *a1)
{
  v1 = *a1;

  return sub_10007D778();
}

uint64_t sub_10004463C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10007D7B8();
  *a1 = result;
  return result;
}

uint64_t sub_100044690@<X0>(uint64_t a1@<X8>)
{
  result = sub_10007D818();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1000446C4(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_10007D828();
}

void *sub_1000446F4(uint64_t a1)
{
  v2 = sub_10007D378();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_100015240(&qword_1000E0060, &qword_100083F50);
    v10 = sub_10007E448();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v35 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v14 = *(v12 + 56);
    v15 = (v12 - 8);
    v33 = v9;
    v34 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v14 * v11, v2);
      v16 = *(v10 + 40);
      sub_100045044(&qword_1000E0068, &type metadata accessor for Date.ComponentsFormatStyle.Field);
      v17 = sub_10007E0F8();
      v18 = -1 << *(v10 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      v21 = *(v38 + 8 * (v19 >> 6));
      v22 = 1 << v19;
      if (((1 << v19) & v21) != 0)
      {
        v23 = ~v18;
        do
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v19 * v14, v2);
          sub_100045044(&qword_1000E0070, &type metadata accessor for Date.ComponentsFormatStyle.Field);
          v25 = sub_10007E128();
          v26 = *v15;
          (*v15)(v7, v2);
          if (v25)
          {
            v26(v39, v2);
            v12 = v24;
            v9 = v33;
            goto LABEL_4;
          }

          v19 = (v19 + 1) & v23;
          v20 = v19 >> 6;
          v21 = *(v38 + 8 * (v19 >> 6));
          v22 = 1 << v19;
          v12 = v24;
        }

        while (((1 << v19) & v21) != 0);
        v9 = v33;
      }

      v27 = v39;
      *(v38 + 8 * v20) = v22 | v21;
      result = (*v34)(*(v10 + 48) + v19 * v14, v27, v2);
      v29 = *(v10 + 16);
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        break;
      }

      *(v10 + 16) = v31;
LABEL_4:
      v11 = v36 + 1;
      if (v36 + 1 == v9)
      {
        return v10;
      }
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

unint64_t sub_100044A18()
{
  result = qword_1000E00E0;
  if (!qword_1000E00E0)
  {
    sub_100015288(&qword_1000E00C8, &qword_100083FA8);
    sub_100044AA4();
    sub_100044D00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E00E0);
  }

  return result;
}

unint64_t sub_100044AA4()
{
  result = qword_1000E00E8;
  if (!qword_1000E00E8)
  {
    sub_100015288(&qword_1000E00C0, &qword_100083FA0);
    sub_100044B30();
    sub_100044C18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E00E8);
  }

  return result;
}

unint64_t sub_100044B30()
{
  result = qword_1000E00F0;
  if (!qword_1000E00F0)
  {
    sub_100015288(&qword_1000E00D0, &unk_100083FB0);
    sub_100045044(&qword_1000E00F8, type metadata accessor for NearbyWidgetView);
    sub_10002DDAC(&qword_1000E0100, &qword_1000E0108, &qword_100083FF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E00F0);
  }

  return result;
}

unint64_t sub_100044C18()
{
  result = qword_1000E0110;
  if (!qword_1000E0110)
  {
    sub_100015288(&qword_1000E00A0, &qword_100083F80);
    sub_100045044(&qword_1000E0118, type metadata accessor for SuggestedDestinationWidgetView);
    sub_10002DDAC(&qword_1000E0100, &qword_1000E0108, &qword_100083FF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0110);
  }

  return result;
}

unint64_t sub_100044D00()
{
  result = qword_1000E0120;
  if (!qword_1000E0120)
  {
    sub_100015288(&qword_1000E0090, &qword_100083F70);
    sub_100044D8C();
    sub_100044E74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0120);
  }

  return result;
}

unint64_t sub_100044D8C()
{
  result = qword_1000E0128;
  if (!qword_1000E0128)
  {
    sub_100015288(&qword_1000E0098, &qword_100083F78);
    sub_100045044(&qword_1000E0130, type metadata accessor for CommuteWindowWidgetView);
    sub_10002DDAC(&qword_1000E0100, &qword_1000E0108, &qword_100083FF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0128);
  }

  return result;
}

unint64_t sub_100044E74()
{
  result = qword_1000E0138;
  if (!qword_1000E0138)
  {
    sub_100015288(&qword_1000E0080, &qword_100083F60);
    sub_100045044(&qword_1000E0140, type metadata accessor for NavigationETAWidgetView);
    sub_10002DDAC(&qword_1000E0100, &qword_1000E0108, &qword_100083FF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0138);
  }

  return result;
}

unint64_t sub_100044F5C()
{
  result = qword_1000E0148;
  if (!qword_1000E0148)
  {
    sub_100015288(&qword_1000E0078, &qword_100083F58);
    sub_100045044(&qword_1000E0150, type metadata accessor for PlaceholderView);
    sub_10002DDAC(&qword_1000E0100, &qword_1000E0108, &qword_100083FF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0148);
  }

  return result;
}

uint64_t sub_100045044(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10004508C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000450F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10004515C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1000451BC()
{
  result = qword_1000E0158;
  if (!qword_1000E0158)
  {
    sub_100015288(&qword_1000DFFF0, &qword_100083E28);
    sub_100045274();
    sub_10002DDAC(&qword_1000E0170, &qword_1000DFFF8, &qword_100083E30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0158);
  }

  return result;
}

unint64_t sub_100045274()
{
  result = qword_1000E0160;
  if (!qword_1000E0160)
  {
    sub_100015288(&qword_1000E0168, &qword_100084000);
    sub_100044A18();
    sub_100044F5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0160);
  }

  return result;
}

void sub_100045384(void *a1@<X8>)
{
  if (qword_1000DE268 != -1)
  {
    swift_once();
  }

  v2 = sub_10007D5C8();
  sub_1000046BC(v2, qword_1000E4B28);
  v3 = sub_10007D5A8();
  v4 = sub_10007E298();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "PlaceholderSmallWidgetView: body", v5, 2u);
  }

  *a1 = sub_1000491C4;
  a1[1] = 0;
}

uint64_t sub_100045474@<X0>(uint64_t a1@<X8>)
{
  v25[1] = a1;
  v26 = sub_10007DA88();
  v1 = *(v26 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v26);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100015240(&qword_1000E0410, &qword_1000843E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v25 - v8;
  v10 = sub_100015240(&qword_1000E0418, &qword_1000843E8);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v25 - v12;
  v14 = sub_100015240(&qword_1000E0420, &qword_1000843F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = (v25 - v16);
  *v17 = sub_10007DE88();
  v17[1] = v18;
  v19 = sub_1000491C8();
  if (v20)
  {
    (*(v6 + 56))(v13, 1, 1, v5);
  }

  else
  {
    v21 = v19;
    sub_10007D688();
    v27 = v21;
    v28 = 1;
    v29 = v22 * 0.25;
    sub_1000493B8();
    v30 = 0;
    v31 = 0;
    sub_10007DC58();
    (*(v6 + 32))(v13, v9, v5);
    (*(v6 + 56))(v13, 0, 1, v5);
  }

  v23 = sub_100015240(&qword_1000E0428, &qword_1000843F8);
  sub_100008510(v13, v17 + *(v23 + 44));
  sub_10007DA78();
  sub_10007DE88();
  type metadata accessor for PlaceholderBackgroundView(0);
  sub_10002DDAC(&qword_1000E0430, &qword_1000E0420, &qword_1000843F0);
  sub_100048CE4(&qword_1000DF950, type metadata accessor for PlaceholderBackgroundView);
  sub_10007DCB8();
  (*(v1 + 8))(v4, v26);
  return sub_1000256C0(v17, &qword_1000E0420, &qword_1000843F0);
}

uint64_t sub_10004581C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100015240(&qword_1000E0458, &qword_100084460);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v12 - v7;
  *v8 = sub_10007D878();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v9 = sub_100015240(&qword_1000E0460, &qword_100084468);
  sub_100045978(&v8[*(v9 + 44)]);
  sub_100026310(v8, v6, &qword_1000E0458, &qword_100084460);
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0x3FF0000000000000;
  v10 = sub_100015240(&qword_1000E0468, &qword_100084470);
  sub_100026310(v6, a1 + *(v10 + 48), &qword_1000E0458, &qword_100084460);
  sub_1000256C0(v8, &qword_1000E0458, &qword_100084460);
  return sub_1000256C0(v6, &qword_1000E0458, &qword_100084460);
}

uint64_t sub_100045978@<X0>(char *a1@<X8>)
{
  v2 = sub_100015240(&qword_1000E0470, &qword_100084478);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = (&v21 - v4);
  v6 = sub_100015240(&qword_1000E0478, &qword_100084480);
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = __chkstk_darwin(v6);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v21 - v12;
  *v5 = swift_getKeyPath();
  sub_100015240(&qword_1000DEF58, &qword_100083AB0);
  swift_storeEnumTagMultiPayload();
  *(v5 + *(v2 + 36)) = 0x4030000000000000;
  v14 = v5 + *(v2 + 40);
  *v14 = sub_10007D948();
  *(v14 + 1) = 0;
  v14[16] = 1;
  v15 = &v14[*(sub_100015240(&qword_1000E0480, &qword_100084488) + 44)];
  *v15 = sub_10007D878();
  *(v15 + 1) = 0x402E000000000000;
  v15[16] = 0;
  v16 = sub_100015240(&qword_1000E0488, &qword_100084490);
  sub_100045C4C(&v15[*(v16 + 44)]);
  sub_10002DDAC(&qword_1000E0490, &qword_1000E0470, &qword_100084478);
  sub_10007DC58();
  sub_1000256C0(v5, &qword_1000E0470, &qword_100084478);
  v17 = v7[2];
  v17(v11, v13, v6);
  v17(a1, v11, v6);
  v18 = &a1[*(sub_100015240(&qword_1000E0498, &qword_100084498) + 48)];
  v19 = v7[1];
  v19(v13, v6);
  *v18 = 0;
  v18[8] = 1;
  *(v18 + 2) = 0x3FF0000000000000;
  return (v19)(v11, v6);
}

uint64_t sub_100045C4C@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = sub_100015240(&qword_1000DF1E8, &unk_100084A40);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v29 - v3;
  v30 = sub_10007DD98();
  v5 = *(v30 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v30);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10007D638();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_100015240(&qword_1000DF1F8, &qword_100084360);
  v14 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31);
  v16 = &v29 - v15;
  v17 = sub_100015240(&qword_1000DF228, &qword_100084A50);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v29 - v22;
  sub_10002CA74(v13);
  sub_10002EE74(v13);
  (*(v10 + 8))(v13, v9);
  sub_10007DD78();
  v24 = v30;
  (*(v5 + 104))(v8, enum case for Image.ResizingMode.stretch(_:), v30);
  sub_10007DDE8();

  (*(v5 + 8))(v8, v24);
  sub_10007DFA8();
  v25 = sub_10007DFC8();
  (*(*(v25 - 8) + 56))(v4, 0, 1, v25);
  sub_10007DDD8();

  sub_1000256C0(v4, &qword_1000DF1E8, &unk_100084A40);
  sub_10007DE88();
  sub_10007D668();
  v26 = &v16[*(v31 + 36)];
  v27 = v34;
  *v26 = v33;
  *(v26 + 1) = v27;
  *(v26 + 2) = v35;
  sub_10002DDF4();
  sub_10007DC78();
  sub_1000256C0(v16, &qword_1000DF1F8, &qword_100084360);
  sub_100026310(v23, v21, &qword_1000DF228, &qword_100084A50);
  sub_100026310(v21, v32, &qword_1000DF228, &qword_100084A50);
  sub_1000256C0(v23, &qword_1000DF228, &qword_100084A50);
  return sub_1000256C0(v21, &qword_1000DF228, &qword_100084A50);
}

uint64_t sub_100046094@<X0>(uint64_t a1@<X8>)
{
  v12[1] = a1;
  v1 = sub_10007DA88();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100015240(&qword_1000E0440, &qword_100084450);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = v12 - v8;
  *v9 = sub_10007D948();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v10 = sub_100015240(&qword_1000E0448, &qword_100084458);
  sub_10004581C(&v9[*(v10 + 44)]);
  sub_10007DA78();
  sub_10007DE88();
  type metadata accessor for PlaceholderBackgroundView(0);
  sub_10002DDAC(&qword_1000E0450, &qword_1000E0440, &qword_100084450);
  sub_100048CE4(&qword_1000DF950, type metadata accessor for PlaceholderBackgroundView);
  sub_10007DCB8();
  (*(v2 + 8))(v5, v1);
  return sub_1000256C0(v9, &qword_1000E0440, &qword_100084450);
}

uint64_t sub_1000462D8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100015240(&qword_1000E03C0, &qword_100084340);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = (&v20 - v4);
  v6 = sub_100015240(&qword_1000E03C8, &qword_100084348);
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = __chkstk_darwin(v6);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v20 - v12;
  *v5 = swift_getKeyPath();
  sub_100015240(&qword_1000DEF58, &qword_100083AB0);
  swift_storeEnumTagMultiPayload();
  *(v5 + *(v2 + 36)) = 0x4030000000000000;
  v14 = v5 + *(v2 + 40);
  *v14 = sub_10007D878();
  *(v14 + 1) = 0;
  v14[16] = 1;
  v15 = sub_100015240(&qword_1000E03D0, &qword_100084350);
  sub_10004657C(&v14[*(v15 + 44)]);
  sub_10002DDAC(&qword_1000E03D8, &qword_1000E03C0, &qword_100084340);
  sub_10007DC58();
  sub_1000256C0(v5, &qword_1000E03C0, &qword_100084340);
  v16 = v7[2];
  v16(v11, v13, v6);
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0x3FF0000000000000;
  v17 = sub_100015240(&qword_1000E03E0, &qword_100084358);
  v16((a1 + *(v17 + 48)), v11, v6);
  v18 = v7[1];
  v18(v13, v6);
  return (v18)(v11, v6);
}

uint64_t sub_10004657C@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v1 = sub_100015240(&qword_1000DEF70, &qword_100082F10);
  v47 = *(v1 - 8);
  v48 = v1;
  v2 = *(v47 + 64);
  v3 = __chkstk_darwin(v1);
  v46 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v45 = &v43 - v5;
  v6 = sub_100015240(&qword_1000DF1E8, &unk_100084A40);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v43 - v8;
  v10 = sub_10007DD98();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10007D638();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100015240(&qword_1000DF1F8, &qword_100084360);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v23 = &v43 - v22;
  v24 = sub_100015240(&qword_1000DF228, &qword_100084A50);
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24 - 8);
  v44 = &v43 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v50 = &v43 - v28;
  sub_10002CA74(v19);
  sub_10002EE74(v19);
  (*(v16 + 8))(v19, v15);
  sub_10007DD78();
  (*(v11 + 104))(v14, enum case for Image.ResizingMode.stretch(_:), v10);
  sub_10007DDE8();

  (*(v11 + 8))(v14, v10);
  sub_10007DFA8();
  v29 = sub_10007DFC8();
  (*(*(v29 - 8) + 56))(v9, 0, 1, v29);
  sub_10007DDD8();

  sub_1000256C0(v9, &qword_1000DF1E8, &unk_100084A40);
  sub_10007DE88();
  sub_10007D668();
  v30 = &v23[*(v20 + 36)];
  v31 = v52;
  *v30 = v51;
  *(v30 + 1) = v31;
  *(v30 + 2) = v53;
  sub_10002DDF4();
  v32 = v50;
  sub_10007DC78();
  sub_1000256C0(v23, &qword_1000DF1F8, &qword_100084360);
  sub_100015240(&qword_1000DEFB8, &qword_100082F60);
  sub_10002DDAC(&qword_1000DEFC0, &qword_1000DEFB8, &qword_100082F60);
  v33 = v45;
  sub_10007DE48();
  v34 = v44;
  sub_100026310(v32, v44, &qword_1000DF228, &qword_100084A50);
  v36 = v46;
  v35 = v47;
  v37 = *(v47 + 16);
  v38 = v48;
  v37(v46, v33, v48);
  v39 = v49;
  sub_100026310(v34, v49, &qword_1000DF228, &qword_100084A50);
  v40 = sub_100015240(&qword_1000E03E8, &qword_100084368);
  v37((v39 + *(v40 + 48)), v36, v38);
  v41 = *(v35 + 8);
  v41(v33, v38);
  sub_1000256C0(v50, &qword_1000DF228, &qword_100084A50);
  v41(v36, v38);
  return sub_1000256C0(v34, &qword_1000DF228, &qword_100084A50);
}

uint64_t sub_100046B78@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_100015240(&qword_1000DEF58, &qword_100083AB0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100046BD8@<X0>(uint64_t a1@<X8>)
{
  v12[1] = a1;
  v1 = sub_10007DA88();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100015240(&qword_1000E03A8, &qword_1000842F8);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = v12 - v8;
  *v9 = sub_10007D948();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v10 = sub_100015240(&qword_1000E03B0, &qword_100084300);
  sub_1000462D8(&v9[*(v10 + 44)]);
  sub_10007DA78();
  sub_10007DE88();
  type metadata accessor for PlaceholderBackgroundView(0);
  sub_10002DDAC(&qword_1000E03B8, &qword_1000E03A8, &qword_1000842F8);
  sub_100048CE4(&qword_1000DF950, type metadata accessor for PlaceholderBackgroundView);
  sub_10007DCB8();
  (*(v2 + 8))(v5, v1);
  return sub_1000256C0(v9, &qword_1000E03A8, &qword_1000842F8);
}

uint64_t sub_100046E1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v35[3] = a3;
  v35[4] = a4;
  v35[1] = a1;
  v35[2] = a2;
  v36 = a5;
  v5 = sub_100015240(&qword_1000DEFE8, &qword_100082F80);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = (v35 - v7);
  v9 = sub_100015240(&qword_1000E03F8, &qword_100084380);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v35 - v12;
  v14 = sub_100015240(&qword_1000E0400, &unk_100084388);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v35[0] = v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = v35 - v18;
  *v8 = sub_10007DE88();
  v8[1] = v20;
  v21 = sub_100015240(&qword_1000DEFF8, &qword_100082F90);
  sub_100047210(v8 + *(v21 + 44));
  v22 = sub_10002DDAC(&qword_1000DF000, &qword_1000DEFE8, &qword_100082F80);
  sub_10007DC58();
  sub_1000256C0(v8, &qword_1000DEFE8, &qword_100082F80);
  v41 = v5;
  v42 = v22;
  swift_getOpaqueTypeConformance2();
  sub_10007DC78();
  (*(v10 + 8))(v13, v9);
  v23 = sub_10007D958();
  LOBYTE(v41) = 0;
  sub_100047610(v38);
  *&v37[7] = v38[0];
  *&v37[23] = v38[1];
  *&v37[39] = v38[2];
  *&v37[55] = v38[3];
  LOBYTE(v13) = v41;
  v24 = v35[0];
  sub_100026310(v19, v35[0], &qword_1000E0400, &unk_100084388);
  v25 = v36;
  sub_100026310(v24, v36, &qword_1000E0400, &unk_100084388);
  v26 = sub_100015240(&qword_1000E0408, &unk_100084398);
  v27 = v25 + *(v26 + 48);
  v39[0] = v23;
  v39[1] = 0;
  v40[0] = v13;
  *&v40[1] = *v37;
  *&v40[17] = *&v37[16];
  *&v40[33] = *&v37[32];
  *&v40[49] = *&v37[48];
  v28 = *&v37[63];
  *&v40[64] = *&v37[63];
  v29 = *v40;
  *v27 = v23;
  *(v27 + 16) = v29;
  v30 = *&v40[16];
  v31 = *&v40[32];
  v32 = *&v40[48];
  *(v27 + 80) = v28;
  *(v27 + 48) = v31;
  *(v27 + 64) = v32;
  *(v27 + 32) = v30;
  v33 = v25 + *(v26 + 64);
  *v33 = 0;
  *(v33 + 8) = 0;
  sub_100026310(v39, &v41, &qword_1000DF010, &qword_100082FA0);
  sub_1000256C0(v19, &qword_1000E0400, &unk_100084388);
  v41 = v23;
  v42 = 0;
  v43 = v13;
  v45 = *&v37[16];
  v46 = *&v37[32];
  *v47 = *&v37[48];
  *&v47[15] = *&v37[63];
  v44 = *v37;
  sub_1000256C0(&v41, &qword_1000DF010, &qword_100082FA0);
  return sub_1000256C0(v24, &qword_1000E0400, &unk_100084388);
}

uint64_t sub_100047210@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v1 = sub_100015240(&qword_1000DF018, &qword_100082FA8);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v33 - v3;
  v5 = sub_100015240(&qword_1000DF020, &qword_100082FB0);
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = __chkstk_darwin(v5);
  v33 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v33 - v10;
  v12 = sub_100015240(&qword_1000DF028, &qword_100082FB8);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  v15 = __chkstk_darwin(v12);
  v35 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v33 - v17;
  sub_10007DE68();
  *&v18[*(sub_100015240(&qword_1000DF030, &qword_100082FC0) + 56)] = 256;
  sub_10007DE88();
  sub_10007D668();
  v19 = &v18[*(v13 + 44)];
  v20 = v40;
  *v19 = v39;
  *(v19 + 1) = v20;
  *(v19 + 2) = v41;
  v21 = sub_10007DD88();
  v22 = sub_10007DB08();
  (*(*(v22 - 8) + 56))(v4, 1, 1, v22);
  v23 = sub_10007DB28();
  sub_1000256C0(v4, &qword_1000DF018, &qword_100082FA8);
  KeyPath = swift_getKeyPath();
  v36 = v21;
  v37 = KeyPath;
  v38 = v23;
  sub_10007DB18();
  sub_100015240(&qword_1000DF038, &qword_100082FF8);
  sub_10002DA1C();
  sub_10007DC48();

  v25 = v35;
  sub_100026310(v18, v35, &qword_1000DF028, &qword_100082FB8);
  v26 = v6[2];
  v27 = v33;
  v26(v33, v11, v5);
  v28 = v25;
  v29 = v34;
  sub_100026310(v28, v34, &qword_1000DF028, &qword_100082FB8);
  v30 = sub_100015240(&qword_1000DF058, &qword_100083008);
  v26((v29 + *(v30 + 48)), v27, v5);
  v31 = v6[1];
  v31(v11, v5);
  sub_1000256C0(v18, &qword_1000DF028, &qword_100082FB8);
  v31(v27, v5);
  return sub_1000256C0(v35, &qword_1000DF028, &qword_100082FB8);
}

uint64_t sub_100047610@<X0>(uint64_t a1@<X8>)
{
  sub_10002D9A8();

  v2 = sub_10007DBF8();
  v35 = v3;
  v36 = v2;
  v34 = v4;
  sub_10007DA38();
  v5 = sub_10007DBA8();
  v7 = v6;
  v9 = v8;
  sub_10007DB38();
  v10 = sub_10007DBB8();
  v12 = v11;
  v14 = v13;

  sub_10002D9FC(v5, v7, v9 & 1);

  sub_10007DB18();
  v15 = sub_10007DB88();
  v39 = v16;
  v40 = v15;
  v38 = v17;
  v41 = v18;
  sub_10002D9FC(v10, v12, v14 & 1);

  sub_10002D9FC(v36, v35, v34 & 1);

  v19 = sub_10007DBF8();
  v42 = v20;
  v43 = v19;
  LOBYTE(v5) = v21;
  sub_10007DA48();
  v22 = sub_10007DBA8();
  v24 = v23;
  v26 = v25;
  sub_10007DAF8();
  v27 = sub_10007DBB8();
  v29 = v28;
  v37 = v30;
  v32 = v31;

  sub_10002D9FC(v22, v24, v26 & 1);

  sub_10002D9FC(v43, v42, v5 & 1);

  *a1 = v40;
  *(a1 + 8) = v39;
  *(a1 + 16) = v38 & 1;
  *(a1 + 24) = v41;
  *(a1 + 32) = v27;
  *(a1 + 40) = v29;
  *(a1 + 48) = v37 & 1;
  *(a1 + 56) = v32;
  sub_10002DA0C(v40, v39, v38 & 1);

  sub_10002DA0C(v27, v29, v37 & 1);

  sub_10002D9FC(v27, v29, v37 & 1);

  sub_10002D9FC(v40, v39, v38 & 1);
}

uint64_t sub_100047928@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  *a1 = sub_10007D878();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v7 = sub_100015240(&qword_1000E03F0, &unk_100084370);
  return sub_100046E1C(v3, v4, v6, v5, a1 + *(v7 + 44));
}

uint64_t sub_1000479A0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10007DF98();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  if (qword_1000DE258 != -1)
  {
    swift_once();
  }

  sub_100047CC0(&qword_1000DEF58, &qword_100083AB0, &type metadata accessor for WidgetRenderingMode, v9);
  sub_10007DF88();
  sub_10007DF78();
  v10 = *(v3 + 8);
  v10(v7, v2);
  v10(v9, v2);
  result = sub_10007DD38();
  *a1 = result;
  return result;
}

uint64_t sub_100047B3C()
{
  if (qword_1000DE230 != -1)
  {
    swift_once();
  }

  v0 = qword_1000E4AE0;
  sub_10007DE88();
  sub_10007D668();
  *&v3[22] = v5;
  *&v3[38] = v6;
  *&v3[6] = v4;
  *&v2[10] = *v3;
  *v2 = v0;
  *&v2[8] = 256;
  *&v2[26] = *&v3[16];
  *&v2[42] = *&v3[32];
  *&v2[56] = *(&v6 + 1);

  sub_100015240(&qword_1000E0558, &qword_100084598);
  sub_1000496B4();
  sub_10007DC78();
  v7[0] = *v2;
  v7[1] = *&v2[16];
  v7[2] = *&v2[32];
  v7[3] = *&v2[48];
  return sub_1000256C0(v7, &qword_1000E0558, &qword_100084598);
}

uint64_t sub_100047CC0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_10007D848();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100015240(a1, a2);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = (&v23 - v17);
  sub_100026310(v8, &v23 - v17, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = a3(0);
    return (*(*(v19 - 8) + 32))(a4, v18, v19);
  }

  else
  {
    v21 = *v18;
    sub_10007E2B8();
    v22 = sub_10007DA98();
    sub_10007D598();

    sub_10007D838();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v14, v10);
  }
}

uint64_t sub_100047EC4@<X0>(uint64_t a1@<X8>)
{
  v64 = a1;
  v53 = sub_100015240(&qword_1000E0208, &qword_100084088);
  v1 = *(*(v53 - 8) + 64);
  __chkstk_darwin(v53);
  v55 = (&v51 - v2);
  v58 = sub_100015240(&qword_1000E0210, &qword_100084090);
  v3 = *(*(v58 - 8) + 64);
  __chkstk_darwin(v58);
  v56 = &v51 - v4;
  v54 = type metadata accessor for PlaceholderLargeWidgetView(0);
  v5 = *(*(v54 - 8) + 64);
  __chkstk_darwin(v54);
  v52 = (&v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v57 = type metadata accessor for PlaceholderMediumWidgetView(0);
  v7 = *(*(v57 - 8) + 64);
  __chkstk_darwin(v57);
  v9 = (&v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v62 = sub_100015240(&qword_1000E0218, &qword_100084098);
  v10 = *(*(v62 - 8) + 64);
  __chkstk_darwin(v62);
  v61 = &v51 - v11;
  v59 = sub_100015240(&qword_1000E0220, &qword_1000840A0);
  v12 = *(*(v59 - 8) + 64);
  __chkstk_darwin(v59);
  v14 = &v51 - v13;
  v15 = sub_100015240(&qword_1000E0228, &qword_1000840A8);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = &v51 - v17;
  v60 = sub_100015240(&qword_1000E0230, &qword_1000840B0);
  v19 = *(*(v60 - 8) + 64);
  __chkstk_darwin(v60);
  v21 = &v51 - v20;
  v63 = sub_100015240(&qword_1000E0238, &unk_1000840B8);
  v22 = *(*(v63 - 8) + 64);
  __chkstk_darwin(v63);
  v24 = &v51 - v23;
  v25 = sub_10007DFF8();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v29 = &v51 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100047CC0(&qword_1000DEC20, &unk_100083720, &type metadata accessor for WidgetFamily, v29);
  v30 = (*(v26 + 88))(v29, v25);
  if (v30 == enum case for WidgetFamily.systemSmall(_:))
  {
    swift_storeEnumTagMultiPayload();
    sub_100048C90();
    sub_100048CE4(&qword_1000E0260, type metadata accessor for PlaceholderMediumWidgetView);
    sub_10007D9D8();
    sub_100026310(v21, v14, &qword_1000E0230, &qword_1000840B0);
    swift_storeEnumTagMultiPayload();
    sub_100048BD4();
    sub_100048D2C();
    sub_10007D9D8();
    sub_1000256C0(v21, &qword_1000E0230, &qword_1000840B0);
    sub_100026310(v24, v61, &qword_1000E0238, &unk_1000840B8);
    swift_storeEnumTagMultiPayload();
    sub_100015240(&qword_1000DEC58, &unk_100082C50);
    sub_100048DE8();
    sub_10002D148();
LABEL_3:
    sub_10007D9D8();
    return sub_1000256C0(v24, &qword_1000E0238, &unk_1000840B8);
  }

  if (v30 == enum case for WidgetFamily.systemMedium(_:))
  {
    *v9 = swift_getKeyPath();
    sub_100015240(&qword_1000DEC18, &qword_100082C10);
    swift_storeEnumTagMultiPayload();
    sub_100048E74(v9, v18, type metadata accessor for PlaceholderMediumWidgetView);
    swift_storeEnumTagMultiPayload();
    sub_100048C90();
    sub_100048CE4(&qword_1000E0260, type metadata accessor for PlaceholderMediumWidgetView);
    sub_10007D9D8();
    sub_100026310(v21, v14, &qword_1000E0230, &qword_1000840B0);
    swift_storeEnumTagMultiPayload();
    sub_100048BD4();
    sub_100048D2C();
    sub_10007D9D8();
    sub_1000256C0(v21, &qword_1000E0230, &qword_1000840B0);
    sub_100026310(v24, v61, &qword_1000E0238, &unk_1000840B8);
    swift_storeEnumTagMultiPayload();
    sub_100015240(&qword_1000DEC58, &unk_100082C50);
    sub_100048DE8();
    sub_10002D148();
    sub_10007D9D8();
    sub_1000256C0(v24, &qword_1000E0238, &unk_1000840B8);
    v32 = v9;
    v33 = type metadata accessor for PlaceholderMediumWidgetView;
  }

  else
  {
    if (v30 != enum case for WidgetFamily.systemLarge(_:))
    {
      v38 = v61;
      if (v30 == enum case for WidgetFamily.systemExtraLarge(_:) || v30 == enum case for WidgetFamily.systemExtraLargePortrait(_:) || v30 == enum case for WidgetFamily.accessoryCorner(_:) || v30 == enum case for WidgetFamily.accessoryCircular(_:) || v30 != enum case for WidgetFamily.accessoryRectangular(_:))
      {
        while (1)
        {
          sub_10007E518();
          __break(1u);
        }
      }

      if (qword_1000DE280 != -1)
      {
        swift_once();
      }

      v39 = qword_1000E4B68;
      v65._countAndFlagsBits = 0xD000000000000014;
      v49._countAndFlagsBits = 0x800000010008F6C0;
      v69._countAndFlagsBits = 0x686372616553;
      v65._object = 0x800000010008F6A0;
      v67.value._countAndFlagsBits = 0;
      v67.value._object = 0;
      v40.super.isa = qword_1000E4B68;
      v69._object = 0xE600000000000000;
      v41 = sub_10007D258(v65, v67, v40, v69, v49);
      v43 = v42;
      v66._countAndFlagsBits = 0xD000000000000010;
      v50._countAndFlagsBits = 0x800000010008F700;
      v66._object = 0x800000010008F6E0;
      v68.value._countAndFlagsBits = 0;
      v68.value._object = 0;
      v44.super.isa = v39;
      v70._countAndFlagsBits = 1936744781;
      v70._object = 0xE400000000000000;
      v45 = sub_10007D258(v66, v68, v44, v70, v50);
      v46 = v55;
      *v55 = v41;
      v46[1] = v43;
      v46[2] = v45;
      v46[3] = v47;
      swift_storeEnumTagMultiPayload();
      sub_100048CE4(&qword_1000E0240, type metadata accessor for PlaceholderLargeWidgetView);
      sub_100048B80();
      v48 = v56;
      sub_10007D9D8();
      sub_100026310(v48, v14, &qword_1000E0210, &qword_100084090);
      swift_storeEnumTagMultiPayload();
      sub_100048BD4();
      sub_100048D2C();
      sub_10007D9D8();
      sub_1000256C0(v48, &qword_1000E0210, &qword_100084090);
      sub_100026310(v24, v38, &qword_1000E0238, &unk_1000840B8);
      swift_storeEnumTagMultiPayload();
      sub_100015240(&qword_1000DEC58, &unk_100082C50);
      sub_100048DE8();
      sub_10002D148();
      goto LABEL_3;
    }

    v34 = v14;
    KeyPath = swift_getKeyPath();
    v36 = v52;
    *v52 = KeyPath;
    sub_100015240(&qword_1000DEC18, &qword_100082C10);
    swift_storeEnumTagMultiPayload();
    sub_100048E74(v36, v55, type metadata accessor for PlaceholderLargeWidgetView);
    swift_storeEnumTagMultiPayload();
    sub_100048CE4(&qword_1000E0240, type metadata accessor for PlaceholderLargeWidgetView);
    sub_100048B80();
    v37 = v56;
    sub_10007D9D8();
    sub_100026310(v37, v34, &qword_1000E0210, &qword_100084090);
    swift_storeEnumTagMultiPayload();
    sub_100048BD4();
    sub_100048D2C();
    sub_10007D9D8();
    sub_1000256C0(v37, &qword_1000E0210, &qword_100084090);
    sub_100026310(v24, v61, &qword_1000E0238, &unk_1000840B8);
    swift_storeEnumTagMultiPayload();
    sub_100015240(&qword_1000DEC58, &unk_100082C50);
    sub_100048DE8();
    sub_10002D148();
    sub_10007D9D8();
    sub_1000256C0(v24, &qword_1000E0238, &unk_1000840B8);
    v32 = v36;
    v33 = type metadata accessor for PlaceholderLargeWidgetView;
  }

  return sub_100048EDC(v32, v33);
}

unint64_t sub_100048B80()
{
  result = qword_1000E0248;
  if (!qword_1000E0248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0248);
  }

  return result;
}

unint64_t sub_100048BD4()
{
  result = qword_1000E0250;
  if (!qword_1000E0250)
  {
    sub_100015288(&qword_1000E0230, &qword_1000840B0);
    sub_100048C90();
    sub_100048CE4(&qword_1000E0260, type metadata accessor for PlaceholderMediumWidgetView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0250);
  }

  return result;
}

unint64_t sub_100048C90()
{
  result = qword_1000E0258;
  if (!qword_1000E0258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0258);
  }

  return result;
}

uint64_t sub_100048CE4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100048D2C()
{
  result = qword_1000E0268;
  if (!qword_1000E0268)
  {
    sub_100015288(&qword_1000E0210, &qword_100084090);
    sub_100048CE4(&qword_1000E0240, type metadata accessor for PlaceholderLargeWidgetView);
    sub_100048B80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0268);
  }

  return result;
}

unint64_t sub_100048DE8()
{
  result = qword_1000E0270;
  if (!qword_1000E0270)
  {
    sub_100015288(&qword_1000E0238, &unk_1000840B8);
    sub_100048BD4();
    sub_100048D2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0270);
  }

  return result;
}

uint64_t sub_100048E74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100048EDC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100048F3C(uint64_t a1, int a2)
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

uint64_t sub_100048F84(uint64_t result, int a2, int a3)
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

void sub_100048FFC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t))
{
  sub_100049538(319, a4, a5);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_1000490A8()
{
  result = qword_1000E0398;
  if (!qword_1000E0398)
  {
    sub_100015288(&qword_1000E03A0, &qword_1000841B0);
    sub_100048DE8();
    sub_10002D148();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0398);
  }

  return result;
}

uint64_t sub_1000491C8()
{
  if (qword_1000DE278 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007D5F8();

  v0 = v11[1];
  v1 = v12;
  if (qword_1000DE268 != -1)
  {
    swift_once();
  }

  v2 = sub_10007D5C8();
  sub_1000046BC(v2, qword_1000E4B28);
  v3 = sub_10007D5A8();
  v4 = sub_10007E298();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11[0] = v6;
    *v5 = 136446210;
    v12 = v1;
    sub_100015240(&qword_1000E0CD0, &qword_100084448);
    v7 = sub_10007E178();
    v9 = sub_100051190(v7, v8, v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "PlaceholderSmallWidgetView: locationAccuracyAuthorization %{public}s", v5, 0xCu);
    sub_1000250AC(v6);
  }

  return v0;
}

unint64_t sub_1000493B8()
{
  result = qword_1000E0438;
  if (!qword_1000E0438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0438);
  }

  return result;
}

uint64_t sub_100049420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v7 = sub_100015240(a4, a5);
  v8 = *(*(v7 - 8) + 48);

  return v8(a1, a2, v7);
}

uint64_t sub_1000494A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v8 = sub_100015240(a5, a6);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, a2, a2, v8);
}

void sub_100049538(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_10007D648();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10004959C(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  sub_100015288(a2, a3);
  type metadata accessor for PlaceholderBackgroundView(255);
  sub_10002DDAC(a4, a2, a3);
  sub_100048CE4(&qword_1000DF950, type metadata accessor for PlaceholderBackgroundView);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1000496B4()
{
  result = qword_1000E0560;
  if (!qword_1000E0560)
  {
    sub_100015288(&qword_1000E0558, &qword_100084598);
    sub_10002DDAC(&qword_1000E0568, &qword_1000E0570, &qword_1000845A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0560);
  }

  return result;
}

unint64_t sub_10004976C()
{
  result = qword_1000E0578;
  if (!qword_1000E0578)
  {
    sub_100015288(&qword_1000E0580, &qword_1000845A8);
    sub_1000496B4();
    sub_100048CE4(&qword_1000DF218, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0578);
  }

  return result;
}

void sub_100049878()
{
  sub_10004999C();
  if (v0 <= 0x3F)
  {
    sub_100049A0C(319, &qword_1000E05F8, type metadata accessor for CommuteWindowDetailsString, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      sub_10007D3B8();
      if (v2 <= 0x3F)
      {
        sub_100049A0C(319, &unk_1000E0600, type metadata accessor for CommuteWindowEntryContent.ResolvedContent, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10004999C()
{
  if (!qword_1000E05F0)
  {
    v0 = sub_10007E3A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1000E05F0);
    }
  }
}

void sub_100049A0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100049AB8()
{
  result = sub_10007D3E8();
  if (v1 <= 0x3F)
  {
    result = sub_10007D238();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_100049B64()
{
  sub_10007E0C8();
  if (v0 <= 0x3F)
  {
    sub_10004999C();
    if (v1 <= 0x3F)
    {
      sub_100049A0C(319, &unk_1000E0740, &type metadata accessor for URL, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

id sub_100049C30(uint64_t a1)
{
  v2 = (v1 + *(a1 + 20));
  v3 = *v2;
  sub_1000301E4(*v2, v2[1]);
  return v3;
}

unint64_t sub_100049C70()
{
  result = qword_1000DFCF0;
  if (!qword_1000DFCF0)
  {
    sub_10007D3E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DFCF0);
  }

  return result;
}

uint64_t sub_100049CD8(char *a1, uint64_t a2, void (*a3)(id), char *a4)
{
  v100 = a2;
  v112 = a1;
  v7 = sub_100015240(&qword_1000DE630, &unk_1000861F0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v106 = &v93 - v9;
  v104 = type metadata accessor for CommuteWindowEntryContent(0);
  v10 = *(*(v104 - 8) + 64);
  __chkstk_darwin(v104);
  v105 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100015240(&qword_1000DE928, &unk_100082900);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v99 = &v93 - v14;
  v15 = sub_10007E0C8();
  v108 = *(v15 - 8);
  v109 = v15;
  v16 = *(v108 + 64);
  v17 = __chkstk_darwin(v15);
  v97 = v18;
  v98 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v103 = &v93 - v19;
  v20 = type metadata accessor for CommuteWindowEntryContentResolver(0);
  v94 = *(v20 - 1);
  v21 = *(v94 + 64);
  __chkstk_darwin(v20);
  v95 = v22;
  v101 = &v93 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_10007DFF8();
  v23 = *(v107 - 1);
  v24 = *(v23 + 64);
  __chkstk_darwin(v107);
  v26 = &v93 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10007D288();
  v114 = *(v27 - 8);
  v28 = *(v114 + 64);
  v29 = __chkstk_darwin(v27);
  v102 = &v93 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = v30;
  __chkstk_darwin(v29);
  v32 = &v93 - v31;
  v33 = v20;
  v34 = v20[7];
  v116 = v4;
  v35 = *(v4 + v34);
  if (v35 >> 62)
  {
    v36 = sub_10007E528();
  }

  else
  {
    v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v110 = a3;
  v111 = a4;
  v115 = v27;
  v113 = v32;
  v96 = v35;
  if (v36)
  {
    if ((v35 & 0xC000000000000001) != 0)
    {
      v37 = sub_10007E468();
    }

    else
    {
      if (!*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_29:
        swift_once();
        goto LABEL_23;
      }

      v37 = *(v35 + 32);
    }

    v38 = v37;
    v39 = [v37 transportType];
  }

  else
  {
    v39 = 4;
  }

  sub_100015240(&qword_1000E0860, &qword_1000846C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100083D00;
  v117 = sub_10007E158();
  v118 = v41;
  sub_10007E438();
  v42 = sub_100064420(v39);
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = v42;
  *(inited + 80) = v43;
  v117 = sub_10007E158();
  v118 = v44;
  sub_10007E438();
  *(inited + 168) = &type metadata for Int32;
  *(inited + 144) = 503;
  v117 = sub_10007E158();
  v118 = v45;
  sub_10007E438();
  *(inited + 240) = &type metadata for Int32;
  *(inited + 216) = 146;
  sub_100024DB4(inited);
  swift_setDeallocating();
  sub_100015240(&unk_1000DEB30, &qword_1000846D0);
  swift_arrayDestroy();
  v46 = objc_opt_self();
  sub_100015240(&qword_1000E0868, &qword_1000846D8);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_100082810;
  v48 = [v46 mapItemForCurrentLocation];
  v49 = sub_10002620C(0, &qword_1000E0810, MKMapItem_ptr);
  *(v47 + 56) = v49;
  *(v47 + 32) = v48;
  v50 = *(v116 + v20[5]);
  *(v47 + 88) = v49;
  *(v47 + 64) = v50;
  v20 = v50;
  isa = sub_10007E1C8().super.isa;

  v52 = sub_10007E0E8().super.isa;
  v53 = [v46 urlForMapItems:isa options:v52];

  if (!v53)
  {
    __break(1u);
    goto LABEL_31;
  }

  a4 = v113;
  sub_10007D278();

  v32 = v112;
  sub_10007E0B8();
  v54 = (*(v23 + 88))(v26, v107);
  if (v54 == enum case for WidgetFamily.systemSmall(_:))
  {
LABEL_17:
    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v55 = sub_10007D5C8();
    sub_1000046BC(v55, qword_1000E4B28);
    v56 = sub_10007D5A8();
    v57 = sub_10007E288();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&_mh_execute_header, v56, v57, "CommuteWindowEntryContentResolver: skipping map snapshot (not supported for this family)", v58, 2u);
    }

    v59 = v105;
    sub_10004B054(v116, v105, type metadata accessor for CommuteWindowEntryContent);
    v60 = v59 + *(v104 + 40);
    sub_1000256C0(v60, &qword_1000DF810, &qword_1000838C0);
    (*(v108 + 16))(v60, v32, v109);
    v61 = type metadata accessor for CommuteWindowEntryContent.ResolvedContent(0);
    v62 = *(v61 + 24);
    v64 = v114;
    v63 = v115;
    (*(v114 + 16))(v60 + v62, a4, v115);
    (*(v64 + 56))(v60 + v62, 0, 1, v63);
    *(v60 + *(v61 + 20)) = xmmword_1000845B0;
    (*(*(v61 - 8) + 56))(v60, 0, 1, v61);
    v65 = v106;
    sub_10004B054(v59, v106, type metadata accessor for CommuteWindowEntryContent);
    v66 = type metadata accessor for GeneralMapsTimelineEntryContent(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v66 - 8) + 56))(v65, 0, 1, v66);
    v110(v65);
    sub_1000256C0(v65, &qword_1000DE630, &unk_1000861F0);
    (*(v64 + 8))(a4, v63);
    return sub_10004AFF8(v59);
  }

  if (v54 != enum case for WidgetFamily.systemMedium(_:) && v54 != enum case for WidgetFamily.systemLarge(_:))
  {
    if (v54 != enum case for WidgetFamily.systemExtraLarge(_:) && v54 != enum case for WidgetFamily.accessoryCorner(_:) && v54 != enum case for WidgetFamily.accessoryCircular(_:) && v54 == enum case for WidgetFamily.accessoryRectangular(_:))
    {
      goto LABEL_17;
    }

    while (1)
    {
LABEL_31:
      sub_10007E518();
      __break(1u);
    }
  }

  if (qword_1000DE268 != -1)
  {
    goto LABEL_29;
  }

LABEL_23:
  v107 = v20;
  v68 = sub_10007D5C8();
  sub_1000046BC(v68, qword_1000E4B28);
  v69 = sub_10007D5A8();
  v70 = sub_10007E288();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    *v71 = 0;
    _os_log_impl(&_mh_execute_header, v69, v70, "CommuteWindowEntryContentResolver: generating map snapshot (supported for this family)", v71, 2u);
  }

  v106 = *(v116 + v33[6]);
  sub_10004B054(v116, v101, type metadata accessor for CommuteWindowEntryContentResolver);
  v73 = v108;
  v72 = v109;
  v116 = *(v108 + 16);
  v116(v103, v32, v109);
  v74 = v114;
  (*(v114 + 16))(v102, a4, v115);
  v75 = (*(v94 + 80) + 16) & ~*(v94 + 80);
  v76 = (v95 + *(v73 + 80) + v75) & ~*(v73 + 80);
  v77 = (v97 + *(v74 + 80) + v76) & ~*(v74 + 80);
  v78 = (v93 + v77 + 7) & 0xFFFFFFFFFFFFFFF8;
  v79 = swift_allocObject();
  sub_10004B0BC(v101, v79 + v75);
  (*(v73 + 32))(v79 + v76, v103, v72);
  v80 = v79 + v77;
  v81 = v115;
  (*(v74 + 32))(v80, v102, v115);
  v82 = (v79 + v78);
  v83 = v111;
  *v82 = v110;
  v82[1] = v83;
  v84 = v98;
  v116(v98, v112, v72);
  type metadata accessor for CommuteWindowSnapshotter();
  swift_allocObject();
  v85 = v106;
  v86 = v106;
  v87 = v107;

  v88 = v96;

  sub_1000306EC(v84, v87, v85, v88);

  v89 = sub_10007D3B8();
  v90 = *(v89 - 8);
  v91 = v99;
  (*(v90 + 16))(v99, v100, v89);
  (*(v90 + 56))(v91, 0, 1, v89);
  v92 = swift_allocObject();
  *(v92 + 16) = sub_10004B120;
  *(v92 + 24) = v79;

  sub_10003AB38(v91, sub_10004B290, v92);

  sub_1000256C0(v91, &qword_1000DE928, &unk_100082900);
  return (*(v114 + 8))(v113, v81);
}

uint64_t sub_10004AA6C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(char *), uint64_t a7)
{
  v31 = a7;
  v32 = a6;
  v30 = a5;
  v11 = sub_100015240(&qword_1000DE630, &unk_1000861F0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v29 - v13;
  v15 = type metadata accessor for CommuteWindowEntryContent(0);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004B054(a3, v19, type metadata accessor for CommuteWindowEntryContent);
  v20 = &v19[*(v16 + 48)];
  sub_1000256C0(v20, &qword_1000DF810, &qword_1000838C0);
  v21 = sub_10007E0C8();
  (*(*(v21 - 8) + 16))(v20, a4, v21);
  v22 = type metadata accessor for CommuteWindowEntryContent.ResolvedContent(0);
  v23 = *(v22 + 24);
  v24 = sub_10007D288();
  v25 = *(v24 - 8);
  (*(v25 + 16))(v20 + v23, v30, v24);
  (*(v25 + 56))(v20 + v23, 0, 1, v24);
  v26 = (v20 + *(v22 + 20));
  *v26 = a1;
  v26[1] = a2;
  (*(*(v22 - 8) + 56))(v20, 0, 1, v22);
  sub_10004B054(v19, v14, type metadata accessor for CommuteWindowEntryContent);
  v27 = type metadata accessor for GeneralMapsTimelineEntryContent(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v27 - 8) + 56))(v14, 0, 1, v27);
  sub_1000301E4(a1, a2);
  v32(v14);
  sub_1000256C0(v14, &qword_1000DE630, &unk_1000861F0);
  return sub_10004AFF8(v19);
}

uint64_t sub_10004AD48@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10007D3E8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_10004ADBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015240(&qword_1000DF810, &qword_1000838C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_10004AE74()
{
  type metadata accessor for CommuteWindowEntryContent(319);
  if (v0 <= 0x3F)
  {
    sub_10002620C(319, &qword_1000E0810, MKMapItem_ptr);
    if (v1 <= 0x3F)
    {
      sub_10004AF90(319, &qword_1000E0818, &qword_1000E0820, GEOFeatureStyleAttributes_ptr, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_10004AF90(319, &unk_1000E0828, &qword_1000DE968, GEOComposedRoute_ptr, &type metadata accessor for Array);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10004AF90(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_10002620C(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_10004AFF8(uint64_t a1)
{
  v2 = type metadata accessor for CommuteWindowEntryContent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004B054(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10004B0BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommuteWindowEntryContentResolver(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004B120(void *a1, void *a2)
{
  v5 = *(type metadata accessor for CommuteWindowEntryContentResolver(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_10007E0C8() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_10007D288() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = v2 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
  v14 = *v13;
  v15 = *(v13 + 8);

  return sub_10004AA6C(a1, a2, v2 + v6, v2 + v9, v2 + v12, v14, v15);
}

uint64_t sub_10004B298()
{
  v0 = sub_10007D5C8();
  sub_10004B320(v0, qword_1000E4B28);
  sub_1000046BC(v0, qword_1000E4B28);
  return sub_10007D5B8();
}

uint64_t *sub_10004B320(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t MapsSuggestionsCurrentLocationSource._delegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*MapsSuggestionsCurrentLocationSource._delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC17GeneralMapsWidget36MapsSuggestionsCurrentLocationSource__delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_10004B4C4;
}

void sub_10004B4C4(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32) + *(*a1 + 40);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v6 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_10004B5C4(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v5 = v4;
  v49 = a4;
  v48[1] = a3;
  v55 = a2;
  v56 = a1;
  v6 = sub_10007E318();
  v54 = *(v6 - 8);
  v7 = *(v54 + 64);
  __chkstk_darwin(v6);
  v53 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_10007E2F8();
  v9 = *(*(v51 - 8) + 64);
  __chkstk_darwin(v51);
  v52 = v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10007DED8();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v50 = v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100015240(&unk_1000E08A8, &unk_100084728);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = v48 - v17;
  v19 = sub_100015240(&qword_1000E0888, &qword_1000846F0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = v48 - v22;
  swift_unknownObjectWeakInit();
  v24 = OBJC_IVAR____TtC17GeneralMapsWidget36MapsSuggestionsCurrentLocationSource___sourceRunning;
  LOBYTE(aBlock[0]) = 0;
  sub_10007D538();
  (*(v20 + 32))(&v5[v24], v23, v19);
  v25 = OBJC_IVAR____TtC17GeneralMapsWidget36MapsSuggestionsCurrentLocationSource___currentPlaceEntry;
  aBlock[0] = 0;
  sub_100015240(&qword_1000E0878, &qword_1000846E0);
  sub_10007D538();
  (*(v15 + 32))(&v5[v25], v18, v14);
  v26 = OBJC_IVAR____TtC17GeneralMapsWidget36MapsSuggestionsCurrentLocationSource__isDrivingCondition;
  v27 = objc_allocWithZone(sub_10007D588());
  *&v5[v26] = sub_10007D578();
  *&v5[OBJC_IVAR____TtC17GeneralMapsWidget36MapsSuggestionsCurrentLocationSource__stopSourceCanKicker] = 0;
  if (v56)
  {
    swift_beginAccess();
    v28 = v56;
    swift_unknownObjectWeakAssign();
    *&v5[OBJC_IVAR____TtC17GeneralMapsWidget36MapsSuggestionsCurrentLocationSource__requester] = v55;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v29 = sub_10007E138();

    v30 = type metadata accessor for MapsSuggestionsCurrentLocationSource();
    v58.receiver = v5;
    v58.super_class = v30;
    v31 = objc_msgSendSuper2(&v58, "initWithDelegate:name:", v28, v29);

    v49 = "ionSource with a nil delegate.";
    v32 = GEOConfigMapsSuggestionsCurrentLocationSourceCancelDelay[1];
    v33 = v31;
    GEOConfigGetDouble();
    v35 = v34;
    sub_10002620C(0, &qword_1000E0890, OS_dispatch_queue_ptr);
    sub_10007DEC8();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_10005287C();
    sub_100015240(&qword_1000E0970, &unk_100085FE0);
    sub_1000528D4();
    sub_10007E3F8();
    (*(v54 + 104))(v53, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v6);
    v36 = sub_10007E348();
    v37 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v38 = objc_allocWithZone(MapsSuggestionsCanKicker);

    v39 = sub_10007E138();
    aBlock[4] = sub_100052938;
    aBlock[5] = v37;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000041A4;
    aBlock[3] = &unk_1000C93D0;
    v40 = _Block_copy(aBlock);
    v41 = [v38 initWithName:v39 time:v36 queue:v40 block:v35];

    _Block_release(v40);

    v42 = *&v33[OBJC_IVAR____TtC17GeneralMapsWidget36MapsSuggestionsCurrentLocationSource__stopSourceCanKicker];
    *&v33[OBJC_IVAR____TtC17GeneralMapsWidget36MapsSuggestionsCurrentLocationSource__stopSourceCanKicker] = v41;

    if (qword_1000DE270 != -1)
    {
      swift_once();
    }

    v43 = sub_10007D5C8();
    sub_1000046BC(v43, qword_1000E4B40);
    v44 = sub_10007D5A8();
    v45 = sub_10007E298();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v44, v45, "Initialized CurrentLocationSource.", v46, 2u);
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease_n();

    return v33;
  }

  else
  {
    result = sub_10007E518();
    __break(1u);
  }

  return result;
}

void sub_10004BD04()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();
    sub_100015240(&qword_1000E0888, &qword_1000846F0);
    sub_10007D558();
    swift_endAccess();
  }

  if (qword_1000DE270 != -1)
  {
    swift_once();
  }

  v2 = sub_10007D5C8();
  sub_1000046BC(v2, qword_1000E4B40);
  v3 = sub_10007D5A8();
  v4 = sub_10007E298();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "CurrentLocationSource stopped.", v5, 2u);
  }
}

id MapsSuggestionsCurrentLocationSource.init(from:name:)(void *a1, uint64_t a2, char *a3)
{
  v4 = v3;
  v8 = [a1 oneSourceDelegate];
  result = [a1 oneNetworkRequester];
  if (result)
  {
    v10 = result;
    v11 = objc_allocWithZone(type metadata accessor for MapsSuggestionsCurrentLocationSource());
    v12 = sub_10004B5C4(v8, v10, a2, a3);
    swift_unknownObjectRelease();
    swift_getObjectType();
    v13 = *((swift_isaMask & *v4) + 0x30);
    v14 = *((swift_isaMask & *v4) + 0x34);
    swift_deallocPartialClassInstance();
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for MapsSuggestionsCurrentLocationSource()
{
  result = qword_1000E0900;
  if (!qword_1000E0900)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id MapsSuggestionsCurrentLocationSource.__allocating_init(from:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(v1) initFromResourceDepot:a1];
  swift_unknownObjectRelease();
  return v2;
}

id MapsSuggestionsCurrentLocationSource.init(from:)(uint64_t a1)
{
  v3 = sub_10007E138();
  v4 = [v1 initFromResourceDepot:a1 name:v3];

  swift_unknownObjectRelease();
  return v4;
}

Swift::Void __swiftcall MapsSuggestionsCurrentLocationSource.start()()
{
  v1 = v0;
  v2 = sub_100015240(&qword_1000E0880, &qword_1000846E8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v41[-v4];
  v6 = sub_100015240(&qword_1000E0888, &qword_1000846F0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v41[-v9];
  v11 = sub_10007DF48();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v41[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10002620C(0, &qword_1000E0890, OS_dispatch_queue_ptr);
  *v15 = sub_10007E328();
  (*(v12 + 104))(v15, enum case for DispatchPredicate.notOnQueue(_:), v11);
  v16 = sub_10007DF68();
  (*(v12 + 8))(v15, v11);
  if ((v16 & 1) == 0)
  {
    __break(1u);
    goto LABEL_29;
  }

  v17 = OBJC_IVAR____TtC17GeneralMapsWidget36MapsSuggestionsCurrentLocationSource___sourceRunning;
  swift_beginAccess();
  (*(v7 + 16))(v10, &v1[v17], v6);
  sub_10007D548();
  (*(v7 + 8))(v10, v6);
  if (v41[8])
  {
    if (qword_1000DE270 == -1)
    {
LABEL_4:
      v18 = sub_10007D5C8();
      sub_1000046BC(v18, qword_1000E4B40);
      v19 = sub_10007D5A8();
      v20 = sub_10007E298();
      if (!os_log_type_enabled(v19, v20))
      {
LABEL_17:

        return;
      }

      v21 = swift_slowAlloc();
      *v21 = 0;
      v22 = "CurrentLocationSource started already.";
LABEL_16:
      _os_log_impl(&_mh_execute_header, v19, v20, v22, v21, 2u);

      goto LABEL_17;
    }

LABEL_29:
    swift_once();
    goto LABEL_4;
  }

  if (!MapsFeature_IsEnabled_VisitedPlaces())
  {
    if (qword_1000DE270 != -1)
    {
      swift_once();
    }

    v31 = sub_10007D5C8();
    sub_1000046BC(v31, qword_1000E4B40);
    v19 = sub_10007D5A8();
    v20 = sub_10007E298();
    if (!os_log_type_enabled(v19, v20))
    {
      goto LABEL_17;
    }

    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = "Tried to start CurrentLocationSource, but Current Location is disabled via feature flag. Returning.";
    goto LABEL_16;
  }

  v23 = [objc_opt_self() sharedInstance];
  if (v23)
  {
    v24 = v23;
    v25 = [v23 isInBackground];

    if (v25)
    {
      v26 = [objc_opt_self() processInfo];
      v27 = [v26 processName];

      v28 = sub_10007E158();
      v30 = v29;

      if (v28 == 0xD000000000000011 && 0x80000001000846F0 == v30)
      {
      }

      else
      {
        v32 = sub_10007E598();

        if ((v32 & 1) == 0)
        {
          if (qword_1000DE270 != -1)
          {
            swift_once();
          }

          v40 = sub_10007D5C8();
          sub_1000046BC(v40, qword_1000E4B40);
          v19 = sub_10007D5A8();
          v20 = sub_10007E2C8();
          if (!os_log_type_enabled(v19, v20))
          {
            goto LABEL_17;
          }

          v21 = swift_slowAlloc();
          *v21 = 0;
          v22 = "Maps App is in background or the current process isn't Maps Widget. Returning.";
          goto LABEL_16;
        }
      }
    }

    if (qword_1000DE270 != -1)
    {
      swift_once();
    }

    v33 = sub_10007D5C8();
    sub_1000046BC(v33, qword_1000E4B40);
    v34 = sub_10007D5A8();
    v35 = sub_10007E298();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Starting CurrentLocationSource", v36, 2u);
    }

    v41[39] = 1;
    swift_beginAccess();
    sub_10007D558();
    swift_endAccess();
    v37 = sub_10007E258();
    (*(*(v37 - 8) + 56))(v5, 1, 1, v37);
    v38 = swift_allocObject();
    v38[2] = 0;
    v38[3] = 0;
    v38[4] = v1;
    v39 = v1;
    sub_10004CC98(0, 0, v5, &unk_100084700, v38);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10004C8D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  v5 = swift_task_alloc();
  *(v4 + 48) = v5;
  *v5 = v4;
  v5[1] = sub_10004C968;

  return sub_10004E858();
}

uint64_t sub_10004C968()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  *(v3 + 56) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10004CA9C, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_10004CA9C()
{
  *(v0 + 64) = 0;
  v1 = *(v0 + 40);
  swift_beginAccess();
  sub_100015240(&qword_1000E0888, &qword_1000846F0);
  sub_10007D558();
  swift_endAccess();
  if (qword_1000DE270 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 56);
  v3 = sub_10007D5C8();
  sub_1000046BC(v3, qword_1000E4B40);
  swift_errorRetain();
  v4 = sub_10007D5A8();
  v5 = sub_10007E2A8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 56);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error fetching place inferences: %@", v8, 0xCu);
    sub_1000256C0(v9, &qword_1000E0960, &qword_1000829D0);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_10004CC98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100015240(&qword_1000E0880, &qword_1000846E8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_10005269C(a3, v27 - v11);
  v13 = sub_10007E258();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1000256C0(v12, &qword_1000E0880, &qword_1000846E8);
  }

  else
  {
    sub_10007E248();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_10007E208();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_10007E188() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_1000256C0(a3, &qword_1000E0880, &qword_1000846E8);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000256C0(a3, &qword_1000E0880, &qword_1000846E8);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

Swift::Void __swiftcall MapsSuggestionsCurrentLocationSource.stop()()
{
  v1 = v0;
  v2 = sub_100015240(&qword_1000E0888, &qword_1000846F0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v16[-v5];
  v7 = OBJC_IVAR____TtC17GeneralMapsWidget36MapsSuggestionsCurrentLocationSource___sourceRunning;
  swift_beginAccess();
  (*(v3 + 16))(v6, v1 + v7, v2);
  sub_10007D548();
  (*(v3 + 8))(v6, v2);
  if (v16[7] == 1)
  {
    if (qword_1000DE270 != -1)
    {
      swift_once();
    }

    v8 = sub_10007D5C8();
    sub_1000046BC(v8, qword_1000E4B40);
    v9 = sub_10007D5A8();
    v10 = sub_10007E298();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Stop CurrentLocationSource called.", v11, 2u);
    }

    [*(v1 + OBJC_IVAR____TtC17GeneralMapsWidget36MapsSuggestionsCurrentLocationSource__stopSourceCanKicker) kickCanBySameTime];
  }

  else
  {
    if (qword_1000DE270 != -1)
    {
      swift_once();
    }

    v12 = sub_10007D5C8();
    sub_1000046BC(v12, qword_1000E4B40);
    v13 = sub_10007D5A8();
    v14 = sub_10007E298();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "CurrentLocationSource stopped already.", v15, 2u);
    }
  }
}

uint64_t sub_10004D2B8(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  swift_beginAccess();
  v8 = *(a4 + 24);
  *(a4 + 16) = a1;
  *(a4 + 24) = a2;

  *a3 = 1;
}

uint64_t sub_10004D32C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_10004D3D8(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_10007D3B8();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = sub_10007DF48();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_10004D4F4, 0, 0);
}

uint64_t sub_10004D4F4()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  sub_10002620C(0, &qword_1000E0890, OS_dispatch_queue_ptr);
  *v1 = sub_10007E328();
  (*(v2 + 104))(v1, enum case for DispatchPredicate.notOnQueue(_:), v3);
  v4 = sub_10007DF68();
  (*(v2 + 8))(v1, v3);
  if ((v4 & 1) == 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  v5 = v0[3];
  v6 = GEOConfigMapsSuggestionsCurrentLocationOfInterestShowLowConfidenceSuggestions[1];
  BOOL = GEOConfigGetBOOL();
  if ((sub_10007D488() & 1) != 0 && !BOOL)
  {
    if (qword_1000DE270 == -1)
    {
LABEL_5:
      v8 = sub_10007D5C8();
      sub_1000046BC(v8, qword_1000E4B40);
      v9 = sub_10007D5A8();
      v10 = sub_10007E2C8();
      if (!os_log_type_enabled(v9, v10))
      {
LABEL_13:

        v17 = v0[10];
        v18 = v0[7];

        v19 = v0[1];

        return v19(0);
      }

      v11 = swift_slowAlloc();
      *v11 = 0;
      v12 = "PlaceInference: Received a low confidence place inference. Not creating an entry.";
LABEL_12:
      _os_log_impl(&_mh_execute_header, v9, v10, v12, v11, 2u);

      goto LABEL_13;
    }

LABEL_30:
    swift_once();
    goto LABEL_5;
  }

  v13 = v0[3];
  v14 = sub_10007D498();
  v0[11] = v14;
  v0[12] = v15;
  if (v15 >> 60 == 15)
  {
    if (qword_1000DE270 != -1)
    {
      swift_once();
    }

    v16 = sub_10007D5C8();
    sub_1000046BC(v16, qword_1000E4B40);
    v9 = sub_10007D5A8();
    v10 = sub_10007E2C8();
    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_13;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = "PlaceInference: place.mapItemHandle is nil, not creating an entry.";
    goto LABEL_12;
  }

  v21 = v14;
  v22 = v15;
  v23 = v0[3];
  sub_10007D4A8();
  v24 = objc_allocWithZone(MapsSuggestionsEntry);
  v25 = sub_10007E138();

  v26 = [v24 initWithType:25 title:v25];
  v0[13] = v26;

  if (!v26)
  {
    if (qword_1000DE270 != -1)
    {
      swift_once();
    }

    v52 = sub_10007D5C8();
    sub_1000046BC(v52, qword_1000E4B40);
    v9 = sub_10007D5A8();
    v53 = sub_10007E2A8();
    if (os_log_type_enabled(v9, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&_mh_execute_header, v9, v53, "Entry: Could not create a new MSgEntry!", v54, 2u);
    }

    sub_100052288(v21, v22);
    goto LABEL_13;
  }

  v27 = v0[4];
  v28 = GEOConfigMapsSuggestionsInitialWeightCurrentLocationOfInterest[1];
  GEOConfigGetDouble();
  [v26 setWeight:?];
  v29 = MapsSuggestionsLocalizedYoureNearbyString();
  [v26 setUndecoratedSubtitle:v29];

  v30 = [v27 uniqueName];
  if (v30)
  {
    v38 = v30;
    v40 = v0[6];
    v39 = v0[7];
    v41 = v0[5];
    v42 = v0[3];
    [v26 setOriginatingSourceName:v30];

    v43 = GEOConfigMapsSuggestionsCurrentLocationOfInterestExpiryDurationForMapsApp[1];
    GEOConfigGetDouble();
    sub_10007D308();
    isa = sub_10007D2C8().super.isa;
    (*(v40 + 8))(v39, v41);
    [v26 setExpires:isa];

    [v26 setBoolean:sub_10007D488() & 1 forKey:@"MapsSuggestionsCurrentLocationOfInterestApproximatedKey"];
    sub_10007D478();
    v46 = [objc_allocWithZone(NSNumber) initWithDouble:v45];
    [v26 setNumber:v46 forKey:@"MapsSuggestionsLatitudeKey"];

    sub_10007D478();
    v48 = [objc_allocWithZone(NSNumber) initWithDouble:v47];
    [v26 setNumber:v48 forKey:@"MapsSuggestionsLongitudeKey"];

    v49 = sub_10007D498();
    if (v50 >> 60 == 15)
    {
      v51 = 0;
    }

    else
    {
      v55 = v49;
      v56 = v50;
      v51 = sub_10007D298().super.isa;
      sub_100052288(v55, v56);
    }

    v57 = v0[4];
    [v26 setData:v51 forKey:@"MapsSuggestionsMapItemHandleDataKey"];

    v58 = swift_task_alloc();
    v0[14] = v58;
    v58[2] = v57;
    v58[3] = v21;
    v58[4] = v22;
    v59 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
    v60 = swift_task_alloc();
    v0[15] = v60;
    v37 = sub_100015240(&qword_1000E0938, &qword_1000847F0);
    *v60 = v0;
    v60[1] = sub_10004DBA8;
    v35 = sub_10005229C;
    v30 = v0 + 2;
    v34 = 0x80000001000902B0;
    v31 = 0;
    v32 = 0;
    v33 = 0xD000000000000027;
    v36 = v58;
  }

  else
  {
    __break(1u);
  }

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v30, v31, v32, v33, v34, v35, v36, v37);
}

uint64_t sub_10004DBA8()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v7 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_10004E30C;
  }

  else
  {
    v5 = *(v2 + 112);

    v4 = sub_10004DCC4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10004DCC4()
{
  v1 = v0[2];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v8 = v0[2];
    }

    result = sub_10007E528();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_14:

    goto LABEL_15;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = sub_10007E468();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v1 + 32);
    swift_unknownObjectRetain();
  }

  v0[17] = v3;

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  v0[18] = v4;
  if (v4)
  {
    v5 = v4;
    v0[19] = sub_1000522A8(v4);
    v0[20] = v6;
    swift_unknownObjectRetain();
    v7 = swift_task_alloc();
    v0[21] = v7;
    *v7 = v0;
    v7[1] = sub_10004DE90;

    return sub_100051A64(v5);
  }

  swift_unknownObjectRelease();
LABEL_15:
  v9 = v0[13];
  sub_100052288(v0[11], v0[12]);

  v10 = v0[10];
  v11 = v0[7];

  v12 = v0[1];

  return v12(0);
}

uint64_t sub_10004DE90(uint64_t a1, __int16 a2)
{
  v3 = *(*v2 + 168);
  v5 = *v2;
  *(*v2 + 176) = a2;

  return _swift_task_switch(sub_10004DF90, 0, 0);
}

uint64_t sub_10004DF90()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 136);
  swift_unknownObjectRelease();
  v3 = *(v0 + 160);
  if ((v1 & 0x100) != 0)
  {
    v12 = *(v0 + 160);

    if (qword_1000DE270 != -1)
    {
      swift_once();
    }

    v13 = sub_10007D5C8();
    sub_1000046BC(v13, qword_1000E4B40);
    v14 = sub_10007D5A8();
    v15 = sub_10007E2C8();
    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 136);
    v18 = *(v0 + 96);
    v19 = *(v0 + 104);
    v20 = *(v0 + 88);
    if (v16)
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Current place not in supported categories. Aborting.", v21, 2u);
    }

    sub_100052288(v20, v18);

    swift_unknownObjectRelease();
    goto LABEL_18;
  }

  if (v3)
  {
    v4 = *(v0 + 104);
    v5 = *(v0 + 160);

    v6 = [v4 title];
    v7 = sub_10007E158();
    v9 = v8;

    if (v7 == 0x656D614E6F4ELL && v9 == 0xE600000000000000)
    {
    }

    else
    {
      v11 = sub_10007E598();

      if ((v11 & 1) == 0)
      {

        goto LABEL_16;
      }
    }

    v22 = *(v0 + 152);
    v23 = *(v0 + 104);
    v24 = sub_10007E138();

    [v23 setTitle:v24];
  }

LABEL_16:
  v26 = *(v0 + 136);
  v25 = *(v0 + 144);
  swift_unknownObjectRetain();
  LOBYTE(v25) = sub_1000518E8(v25);
  swift_unknownObjectRelease();
  if ((v25 & 1) == 0)
  {
    [*(v0 + 104) setGeoMapItem:*(v0 + 144)];
    if (v3)
    {
      v33 = *(v0 + 152);
      v34 = *(v0 + 160);
      v35 = sub_10007E138();
    }

    else
    {
      v35 = 0;
    }

    v36 = *(v0 + 136);
    v37 = *(v0 + 96);
    v38 = *(v0 + 104);
    v39 = *(v0 + 88);
    [v38 setString:v35 forKey:@"MapsSuggestionsCurrentLocationOfInterestIdentifier"];

    [v38 setString:@"MapsSuggestionsCurrentLocationOfInterestIdentifier" forKey:@"MapsSuggestionsPrimaryKey"];
    v40 = [objc_allocWithZone(NSNumber) initWithInteger:6];
    [v38 setNumber:v40 forKey:@"MapsSuggestionsGEOMapItemOriginKey"];

    swift_unknownObjectRelease();
    sub_100052288(v39, v37);
    v32 = *(v0 + 104);
    goto LABEL_23;
  }

  v27 = *(v0 + 160);
  v28 = *(v0 + 136);
  v29 = *(v0 + 96);
  v30 = *(v0 + 104);
  v31 = *(v0 + 88);
  swift_unknownObjectRelease();

  sub_100052288(v31, v29);
LABEL_18:
  v32 = 0;
LABEL_23:
  v41 = *(v0 + 80);
  v42 = *(v0 + 56);

  v43 = *(v0 + 8);

  return v43(v32);
}

uint64_t sub_10004E30C()
{
  v1 = *(v0 + 112);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = *(v0 + 80);
  v5 = *(v0 + 56);

  sub_100052288(v3, v2);

  v6 = *(v0 + 8);
  v7 = *(v0 + 128);

  return v6();
}

void sub_10004E3B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015240(&qword_1000E0948, &qword_100084800);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = aBlock - v7;
  v9 = *(a2 + OBJC_IVAR____TtC17GeneralMapsWidget36MapsSuggestionsCurrentLocationSource__requester);
  isa = sub_10007D298().super.isa;
  (*(v5 + 16))(v8, a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v8, v4);
  aBlock[4] = sub_1000525C4;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10004E7B8;
  aBlock[3] = &unk_1000C9308;
  v13 = _Block_copy(aBlock);

  LODWORD(v9) = [v9 resolveMapItemHandleData:isa dropAnalyticsSessionID:1 completion:v13];
  _Block_release(v13);

  if (v9 != 1)
  {
    if (qword_1000DE270 != -1)
    {
      swift_once();
    }

    v14 = sub_10007D5C8();
    sub_1000046BC(v14, qword_1000E4B40);
    v15 = sub_10007D5A8();
    v16 = sub_10007E2A8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Requester refused to hydrate a mapItem. Aborting.", v17, 2u);
    }
  }
}

uint64_t sub_10004E650(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_1000DE270 != -1)
    {
      swift_once();
    }

    v2 = sub_10007D5C8();
    sub_1000046BC(v2, qword_1000E4B40);
    v3 = sub_10007D5A8();
    v4 = sub_10007E2A8();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Failed to hydrate a MapItem. Aborting.", v5, 2u);
    }

    sub_100015240(&qword_1000E0948, &qword_100084800);
    return sub_10007E218();
  }

  else
  {
    if (a1)
    {
    }

    sub_100015240(&qword_1000E0948, &qword_100084800);
    return sub_10007E228();
  }
}

uint64_t sub_10004E7B8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_100015240(&qword_1000E0950, &qword_100084808);
    v4 = sub_10007E1D8();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t sub_10004E858()
{
  v1[25] = v0;
  v2 = sub_100015240(&qword_1000E0888, &qword_1000846F0);
  v1[26] = v2;
  v3 = *(v2 - 8);
  v1[27] = v3;
  v4 = *(v3 + 64) + 15;
  v1[28] = swift_task_alloc();
  v5 = sub_10007D528();
  v1[29] = v5;
  v6 = *(v5 - 8);
  v1[30] = v6;
  v7 = *(v6 + 64) + 15;
  v1[31] = swift_task_alloc();
  v8 = *(*(sub_100015240(&qword_1000E0920, &qword_1000847D0) - 8) + 64) + 15;
  v1[32] = swift_task_alloc();
  v9 = sub_100015240(&qword_1000E0928, &qword_1000847D8);
  v1[33] = v9;
  v10 = *(v9 - 8);
  v1[34] = v10;
  v11 = *(v10 + 64) + 15;
  v1[35] = swift_task_alloc();
  v12 = sub_100015240(&qword_1000E0930, &unk_1000847E0);
  v1[36] = v12;
  v13 = *(v12 - 8);
  v1[37] = v13;
  v14 = *(v13 + 64) + 15;
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v15 = sub_10007DF48();
  v1[40] = v15;
  v16 = *(v15 - 8);
  v1[41] = v16;
  v17 = *(v16 + 64) + 15;
  v1[42] = swift_task_alloc();

  return _swift_task_switch(sub_10004EAF0, 0, 0);
}

uint64_t sub_10004EAF0()
{
  v2 = v0[41];
  v1 = v0[42];
  v3 = v0[40];
  sub_10002620C(0, &qword_1000E0890, OS_dispatch_queue_ptr);
  *v1 = sub_10007E328();
  (*(v2 + 104))(v1, enum case for DispatchPredicate.notOnQueue(_:), v3);
  v4 = sub_10007DF68();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    if (qword_1000DE270 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v5 = sub_10007D5C8();
  v0[43] = sub_1000046BC(v5, qword_1000E4B40);
  v6 = sub_10007D5A8();
  v7 = sub_10007E298();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Starting Place Inference calls.", v8, 2u);
  }

  v10 = v0[38];
  v9 = v0[39];
  v11 = v0[36];
  v12 = v0[37];
  v13 = v0[35];
  v14 = v0[25];

  sub_10007D518();
  (*(v12 + 16))(v10, v9, v11);
  v0[44] = swift_getOpaqueTypeConformance2();
  sub_10007E268();
  v15 = OBJC_IVAR____TtC17GeneralMapsWidget36MapsSuggestionsCurrentLocationSource__isDrivingCondition;
  v0[45] = OBJC_IVAR____TtC17GeneralMapsWidget36MapsSuggestionsCurrentLocationSource___sourceRunning;
  v0[46] = v15;
  v16 = OBJC_IVAR____TtC17GeneralMapsWidget36MapsSuggestionsCurrentLocationSource__delegate;
  v0[47] = OBJC_IVAR____TtC17GeneralMapsWidget36MapsSuggestionsCurrentLocationSource___currentPlaceEntry;
  v0[48] = v16;
  swift_beginAccess();
  swift_beginAccess();
  v17 = v0[44];
  v18 = v0[36];
  v19 = v0[33];
  swift_getAssociatedConformanceWitness();
  v20 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  v21 = swift_task_alloc();
  v0[49] = v21;
  *v21 = v0;
  v21[1] = sub_10004EDC4;
  v22 = v0[35];
  v23 = v0[32];
  v24 = v0[33];

  return _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v23, 0, 0);
}

uint64_t sub_10004EDC4()
{
  v2 = *(*v1 + 392);
  v4 = *v1;

  if (!v0)
  {

    return _swift_task_switch(sub_10004EED4, 0, 0);
  }

  return result;
}

id sub_10004EED4()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 232);
  v3 = *(v0 + 240);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 272) + 8))(*(v0 + 280), *(v0 + 264));
LABEL_27:
    v58 = *(v0 + 344);
    v59 = sub_10007D5A8();
    v60 = sub_10007E298();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&_mh_execute_header, v59, v60, "Stopping Place Inference calls.", v61, 2u);
    }

    v62 = *(v0 + 336);
    v64 = *(v0 + 304);
    v63 = *(v0 + 312);
    v65 = *(v0 + 288);
    v66 = *(v0 + 296);
    v67 = *(v0 + 280);
    v69 = *(v0 + 248);
    v68 = *(v0 + 256);
    v75 = *(v0 + 224);

    (*(v66 + 8))(v63, v65);

    v70 = *(v0 + 8);

    return v70();
  }

  v4 = *(v0 + 360);
  v6 = *(v0 + 216);
  v5 = *(v0 + 224);
  v8 = *(v0 + 200);
  v7 = *(v0 + 208);
  (*(v3 + 32))(*(v0 + 248), v1, v2);
  (*(v6 + 16))(v5, v8 + v4, v7);
  sub_10007D548();
  (*(v6 + 8))(v5, v7);
  if (*(v0 + 424) != 1)
  {
    v17 = *(v0 + 344);
    v18 = sub_10007D5A8();
    v19 = sub_10007E298();
    v20 = os_log_type_enabled(v18, v19);
    v22 = *(v0 + 272);
    v21 = *(v0 + 280);
    v23 = *(v0 + 264);
    v25 = *(v0 + 240);
    v24 = *(v0 + 248);
    v26 = *(v0 + 232);
    if (v20)
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Source stopped. Not creating any new entries.", v27, 2u);
    }

    (*(v25 + 8))(v24, v26);
    (*(v22 + 8))(v21, v23);
    goto LABEL_27;
  }

  result = [objc_opt_self() sharedInstance];
  if (!result)
  {
    __break(1u);
    goto LABEL_36;
  }

  v10 = result;
  v11 = [result isInBackground];

  if (v11)
  {
    v12 = [objc_opt_self() processInfo];
    v13 = [v12 processName];

    v14 = sub_10007E158();
    v16 = v15;

    if (v14 == 0xD000000000000011 && 0x80000001000846F0 == v16)
    {
    }

    else
    {
      v28 = sub_10007E598();

      if ((v28 & 1) == 0)
      {
        v51 = *(v0 + 344);
        v52 = sub_10007D5A8();
        v53 = sub_10007E2C8();
        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          *v54 = 0;
          _os_log_impl(&_mh_execute_header, v52, v53, "Maps App is in background or the current process isn't Maps Widget. Stopping source.", v54, 2u);
        }

        v55 = *(v0 + 360);
        v37 = *(v0 + 272);
        v74 = *(v0 + 280);
        v38 = *(v0 + 264);
        v40 = *(v0 + 240);
        v39 = *(v0 + 248);
        v41 = *(v0 + 232);
        v56 = *(v0 + 200);
        v57 = *(v0 + 208);

        *(v0 + 427) = 0;
        swift_beginAccess();
        sub_10007D558();
        goto LABEL_26;
      }
    }
  }

  v29 = *(v0 + 248);
  if ((sub_100051D8C() & 1) == 0)
  {
    v44 = *(v0 + 344);
    v45 = sub_10007D5A8();
    v46 = sub_10007E298();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v45, v46, "Authorization error. Stopping source.", v47, 2u);
    }

    v48 = *(v0 + 360);
    v37 = *(v0 + 272);
    v74 = *(v0 + 280);
    v38 = *(v0 + 264);
    v40 = *(v0 + 240);
    v39 = *(v0 + 248);
    v41 = *(v0 + 232);
    v49 = *(v0 + 200);
    v50 = *(v0 + 208);

    *(v0 + 425) = 0;
    swift_beginAccess();
    sub_10007D558();
    goto LABEL_26;
  }

  if ([*(*(v0 + 200) + *(v0 + 368)) isTrue])
  {
LABEL_17:
    v32 = *(v0 + 344);
    v33 = sub_10007D5A8();
    v34 = sub_10007E298();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "Is driving or navigating. Stopping source.", v35, 2u);
    }

    v36 = *(v0 + 360);
    v37 = *(v0 + 272);
    v74 = *(v0 + 280);
    v38 = *(v0 + 264);
    v40 = *(v0 + 240);
    v39 = *(v0 + 248);
    v41 = *(v0 + 232);
    v42 = *(v0 + 200);
    v43 = *(v0 + 208);

    *(v0 + 426) = 0;
    swift_beginAccess();
    sub_10007D558();
LABEL_26:
    swift_endAccess();
    (*(v40 + 8))(v39, v41);
    (*(v37 + 8))(v74, v38);
    goto LABEL_27;
  }

  result = [objc_opt_self() sharedService];
  if (!result)
  {
LABEL_36:
    __break(1u);
    return result;
  }

  v30 = result;
  v31 = [result isInNavigatingState];

  if (v31)
  {
    goto LABEL_17;
  }

  v71 = swift_task_alloc();
  *(v0 + 400) = v71;
  *v71 = v0;
  v71[1] = sub_10004F5E4;
  v72 = *(v0 + 248);
  v73 = *(v0 + 200);

  return sub_10004D3D8(v72);
}

uint64_t sub_10004F5E4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 400);
  v7 = *v2;
  *(v3 + 408) = a1;
  *(v3 + 416) = v1;

  if (v1)
  {
    v5 = sub_10004FB7C;
  }

  else
  {
    v5 = sub_10004F6F8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10004F6F8()
{
  v44 = v0;
  v1 = v0[51];
  v2 = v0[47];
  v3 = v0[43];
  v4 = v0[25];
  if (!v1)
  {
    v0[23] = 0;
    swift_beginAccess();
    sub_100015240(&unk_1000E08A8, &unk_100084728);
    sub_10007D558();
    swift_endAccess();
    v27 = sub_10007D5A8();
    v28 = sub_10007E298();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Entry: nil", v29, 2u);
    }

    v30 = v0[48];
    v31 = v0[25];

    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_14;
    }

    v33 = Strong;
    v34 = v0[25];
    sub_10002620C(0, &qword_1000DE960, MapsSuggestionsEntry_ptr);
    v23.super.isa = sub_10007E1C8().super.isa;
    v24 = [v34 uniqueName];
    if (v24)
    {
      v6 = v24;
      [v33 addOrUpdateSuggestionEntries:v23.super.isa source:v24];
      goto LABEL_12;
    }

LABEL_18:
    __break(1u);
    return _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v24, v25, v26);
  }

  v0[24] = v1;
  swift_beginAccess();
  v5 = v1;
  sub_100015240(&unk_1000E08A8, &unk_100084728);
  sub_10007D558();
  swift_endAccess();
  v6 = v5;
  v7 = sub_10007D5A8();
  v8 = sub_10007E298();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v43 = v10;
    *v9 = 136315138;
    v11 = [v6 debugDescription];
    v12 = sub_10007E158();
    v14 = v13;

    v15 = sub_100051190(v12, v14, &v43);

    *(v9 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v7, v8, "Entry: %s", v9, 0xCu);
    sub_1000250AC(v10);
  }

  v16 = v0[48];
  v17 = v0[25];
  v18 = swift_unknownObjectWeakLoadStrong();
  if (!v18)
  {
    goto LABEL_13;
  }

  v19 = v18;
  v20 = v0[25];
  sub_100015240(&qword_1000DF448, &unk_100083550);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_100083500;
  *(v21 + 32) = v6;
  sub_10002620C(0, &qword_1000DE960, MapsSuggestionsEntry_ptr);
  v22 = v6;
  v23.super.isa = sub_10007E1C8().super.isa;

  v24 = [v20 uniqueName];
  if (!v24)
  {
    __break(1u);
    goto LABEL_18;
  }

  v6 = v24;
  [v19 addOrUpdateSuggestionEntries:v23.super.isa source:v24];

LABEL_12:
  swift_unknownObjectRelease();
LABEL_13:

LABEL_14:
  (*(v0[30] + 8))(v0[31], v0[29]);
  v35 = v0[44];
  v36 = v0[36];
  v37 = v0[33];
  swift_getAssociatedConformanceWitness();
  v38 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  v39 = swift_task_alloc();
  v0[49] = v39;
  *v39 = v0;
  v39[1] = sub_10004EDC4;
  v40 = v0[35];
  v24 = v0[32];
  v41 = v0[33];
  v25 = 0;
  v26 = 0;

  return _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v24, v25, v26);
}

uint64_t sub_10004FB7C()
{
  v1 = v0[42];
  v3 = v0[38];
  v2 = v0[39];
  v4 = v0[36];
  v5 = v0[37];
  v7 = v0[34];
  v6 = v0[35];
  v8 = v0[32];
  v9 = v0[33];
  v13 = v0[28];
  (*(v0[30] + 8))(v0[31], v0[29]);
  (*(v7 + 8))(v6, v9);
  (*(v5 + 8))(v2, v4);

  v10 = v0[1];
  v11 = v0[52];

  return v10();
}

void MapsSuggestionsCurrentLocationSource.updateSuggestionEntries(handler:)(void (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v78 = a2;
  v79 = a1;
  isa = sub_100015240(&unk_1000E08A8, &unk_100084728);
  v77 = *(isa - 1);
  v5 = *(v77 + 64);
  __chkstk_darwin(isa);
  v7 = &v77 - v6;
  v8 = sub_100015240(&qword_1000E0888, &qword_1000846F0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v77 - v11;
  v13 = sub_10007DF48();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = (&v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10002620C(0, &qword_1000E0890, OS_dispatch_queue_ptr);
  *v17 = sub_10007E328();
  (*(v14 + 104))(v17, enum case for DispatchPredicate.notOnQueue(_:), v13);
  v18 = sub_10007DF68();
  (*(v14 + 8))(v17, v13);
  if ((v18 & 1) == 0)
  {
    goto LABEL_52;
  }

  if (qword_1000DE270 != -1)
  {
    goto LABEL_53;
  }

  while (1)
  {
    v19 = sub_10007D5C8();
    sub_1000046BC(v19, qword_1000E4B40);
    v20 = sub_10007D5A8();
    v21 = sub_10007E298();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Updating CurrentLocationSource", v22, 2u);
    }

    if (!MapsFeature_IsEnabled_VisitedPlaces())
    {
      goto LABEL_16;
    }

    if (![objc_opt_self() isEnabled])
    {
      goto LABEL_21;
    }

    v23 = OBJC_IVAR____TtC17GeneralMapsWidget36MapsSuggestionsCurrentLocationSource___sourceRunning;
    swift_beginAccess();
    (*(v9 + 16))(v12, &v3[v23], v8);
    sub_10007D548();
    (*(v9 + 8))(v12, v8);
    if (v81 != 1)
    {
      goto LABEL_26;
    }

    if ([*&v3[OBJC_IVAR____TtC17GeneralMapsWidget36MapsSuggestionsCurrentLocationSource__isDrivingCondition] isTrue])
    {
      goto LABEL_11;
    }

    v24 = [objc_opt_self() sharedService];
    if (!v24)
    {
      goto LABEL_55;
    }

    v25 = v24;
    v26 = [v24 isInNavigatingState];

    if (v26)
    {
LABEL_11:
      v27 = sub_10007D5A8();
      v28 = sub_10007E2C8();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&_mh_execute_header, v27, v28, "In driving or navigating. Returning.", v29, 2u);
      }

      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        goto LABEL_31;
      }

      v31 = Strong;
      sub_10002620C(0, &qword_1000DE960, MapsSuggestionsEntry_ptr);
      isa = sub_10007E1C8().super.isa;
      v32 = [v3 uniqueName];
      if (!v32)
      {
        __break(1u);
LABEL_16:
        v33 = sub_10007D5A8();
        v34 = sub_10007E298();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          *v35 = 0;
          _os_log_impl(&_mh_execute_header, v33, v34, "Current Location Suggestion is disabled via feature flag. Returning.", v35, 2u);
        }

        swift_beginAccess();
        v36 = swift_unknownObjectWeakLoadStrong();
        if (!v36)
        {
          goto LABEL_31;
        }

        v31 = v36;
        sub_10002620C(0, &qword_1000DE960, MapsSuggestionsEntry_ptr);
        isa = sub_10007E1C8().super.isa;
        v32 = [v3 uniqueName];
        if (!v32)
        {
          __break(1u);
LABEL_21:
          v37 = sub_10007D5A8();
          v38 = sub_10007E298();
          if (os_log_type_enabled(v37, v38))
          {
            v39 = swift_slowAlloc();
            *v39 = 0;
            _os_log_impl(&_mh_execute_header, v37, v38, "Siri not enabled. Returning.", v39, 2u);
          }

          swift_beginAccess();
          v40 = swift_unknownObjectWeakLoadStrong();
          if (!v40)
          {
            goto LABEL_31;
          }

          v31 = v40;
          sub_10002620C(0, &qword_1000DE960, MapsSuggestionsEntry_ptr);
          isa = sub_10007E1C8().super.isa;
          v32 = [v3 uniqueName];
          if (!v32)
          {
            __break(1u);
LABEL_26:
            v41 = sub_10007D5A8();
            v42 = sub_10007E298();
            if (os_log_type_enabled(v41, v42))
            {
              v43 = swift_slowAlloc();
              *v43 = 0;
              _os_log_impl(&_mh_execute_header, v41, v42, "Current Location Source has not been started yet. Returning.", v43, 2u);
            }

            swift_beginAccess();
            v44 = swift_unknownObjectWeakLoadStrong();
            if (!v44)
            {
              goto LABEL_31;
            }

            v31 = v44;
            sub_10002620C(0, &qword_1000DE960, MapsSuggestionsEntry_ptr);
            isa = sub_10007E1C8().super.isa;
            v32 = [v3 uniqueName];
            if (!v32)
            {
              __break(1u);
LABEL_55:
              __break(1u);
LABEL_56:
              __break(1u);
              goto LABEL_57;
            }
          }
        }
      }

LABEL_30:
      v45 = v32;
      [v31 addOrUpdateSuggestionEntries:isa source:{v32, v77, v78}];
      swift_unknownObjectRelease();

      goto LABEL_31;
    }

    v46 = [objc_opt_self() sharedInstance];
    if (!v46)
    {
      goto LABEL_56;
    }

    v47 = v46;
    v48 = [v46 isInBackground];

    if (!v48)
    {
      goto LABEL_40;
    }

    v49 = [objc_opt_self() processInfo];
    v50 = [v49 processName];

    v8 = sub_10007E158();
    v52 = v51;

    if (v8 == 0xD000000000000011 && 0x80000001000846F0 == v52)
    {
      break;
    }

    v53 = sub_10007E598();

    if (v53)
    {
      goto LABEL_40;
    }

    v73 = sub_10007D5A8();
    v74 = sub_10007E2C8();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&_mh_execute_header, v73, v74, "Maps App is in background or the current process isn't Maps Widget. Returning.", v75, 2u);
    }

    v9 = OBJC_IVAR____TtC17GeneralMapsWidget36MapsSuggestionsCurrentLocationSource__delegate;
    swift_beginAccess();
    v76 = swift_unknownObjectWeakLoadStrong();
    if (!v76)
    {
      goto LABEL_31;
    }

    v31 = v76;
    sub_10002620C(0, &qword_1000DE960, MapsSuggestionsEntry_ptr);
    isa = sub_10007E1C8().super.isa;
    v32 = [v3 uniqueName];
    if (v32)
    {
      goto LABEL_30;
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    swift_once();
  }

LABEL_40:
  v54 = OBJC_IVAR____TtC17GeneralMapsWidget36MapsSuggestionsCurrentLocationSource___currentPlaceEntry;
  swift_beginAccess();
  v55 = v77;
  (*(v77 + 16))(v7, &v3[v54], isa);
  sub_10007D548();
  (*(v55 + 8))(v7, isa);
  if (v80[0])
  {
    v56 = v80[0];
    v57 = sub_10007D5A8();
    v58 = sub_10007E298();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v80[0] = v60;
      *v59 = 136315138;
      v61 = [v56 debugDescription];
      v62 = sub_10007E158();
      v64 = v63;

      v65 = sub_100051190(v62, v64, v80);

      *(v59 + 4) = v65;
      _os_log_impl(&_mh_execute_header, v57, v58, "Returning %s.", v59, 0xCu);
      sub_1000250AC(v60);
    }

    swift_beginAccess();
    v66 = swift_unknownObjectWeakLoadStrong();
    if (v66)
    {
      v67 = v66;
      sub_100015240(&qword_1000DF448, &unk_100083550);
      v68 = swift_allocObject();
      *(v68 + 16) = xmmword_100083500;
      *(v68 + 32) = v56;
      sub_10002620C(0, &qword_1000DE960, MapsSuggestionsEntry_ptr);
      v69 = v56;
      v70.super.isa = sub_10007E1C8().super.isa;

      v71 = [v3 uniqueName];
      if (v71)
      {
        v72 = v71;
        [v67 addOrUpdateSuggestionEntries:v70.super.isa source:v71];
        swift_unknownObjectRelease();

        goto LABEL_46;
      }

LABEL_57:
      __break(1u);
      return;
    }

LABEL_46:
  }

LABEL_31:
  if (v79)
  {
    v79();
  }
}

uint64_t static MapsSuggestionsCurrentLocationSource.isEnabled()()
{
  v0 = GEOConfigMapsSuggestionsVisitedPlacesEnabled[1];
  result = GEOConfigGetBOOL();
  if (result)
  {
    return MapsSuggestionsIsLocationAllowedForBundleID();
  }

  return result;
}

id MapsSuggestionsCurrentLocationSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_100050A74(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v7 = objc_allocWithZone(v4);
  v8 = sub_10007E138();

  v9 = [v7 *a4];
  swift_unknownObjectRelease();

  return v9;
}

id MapsSuggestionsCurrentLocationSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSuggestionsCurrentLocationSource();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100050C98()
{
  v0 = sub_10007D5C8();
  sub_10004B320(v0, qword_1000E4B40);
  sub_1000046BC(v0, qword_1000E4B40);
  return sub_10007D5B8();
}

uint64_t sub_100050D18(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_100050D64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100050E18;

  return sub_10004C8D4(a1, v4, v5, v6);
}

uint64_t sub_100050E18()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100050F0C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100051004;

  return v7(a1);
}

uint64_t sub_100051004()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

_BYTE **sub_1000510FC(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_100051134(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_100051190(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_100051190(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10005140C(v11, 0, 0, 1, a1, a2);
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
    sub_10003ECFC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000250AC(v11);
  return v7;
}

void sub_100051264()
{
  sub_100051358();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1000513A8();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_100051358()
{
  if (!qword_1000E0910)
  {
    v0 = sub_10007D568();
    if (!v1)
    {
      atomic_store(v0, &qword_1000E0910);
    }
  }
}

void sub_1000513A8()
{
  if (!qword_1000E0918)
  {
    sub_100015288(&qword_1000E0878, &qword_1000846E0);
    v0 = sub_10007D568();
    if (!v1)
    {
      atomic_store(v0, &qword_1000E0918);
    }
  }
}

unint64_t sub_10005140C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100051518(a5, a6);
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
    result = sub_10007E478();
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

char *sub_100051518(uint64_t a1, unint64_t a2)
{
  v4 = sub_100051564(a1, a2);
  sub_100051694(&off_1000C7DB8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100051564(uint64_t a1, unint64_t a2)
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

  v6 = sub_100051780(v5, 0);
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

  result = sub_10007E478();
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
        v10 = sub_10007E1A8();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100051780(v10, 0);
        result = sub_10007E458();
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

uint64_t sub_100051694(uint64_t result)
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

  result = sub_1000517F4(result, v12, 1, v3);
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

void *sub_100051780(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_100015240(&qword_1000E0958, &qword_100084810);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000517F4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100015240(&qword_1000E0958, &qword_100084810);
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

uint64_t sub_1000518E8(void *a1)
{
  result = GEOConfigGetArray();
  if (!result)
  {
    return result;
  }

  v3 = result;
  v4 = sub_10007E1D8();

  v5 = sub_10003A698(v4);

  if (!v5)
  {
    return 0;
  }

  v6 = v5[2];
  if (!v6)
  {
LABEL_15:

    return 0;
  }

  v7 = 0;
  v8 = (v5 + 5);
  while (v7 < v5[2])
  {
    v10 = *(v8 - 1);
    v9 = *v8;

    v11 = [a1 _bestAvailableCountryCode];
    if (v11)
    {
      v12 = v11;
      v13 = sub_10007E158();
      v15 = v14;

      if (v13 == v10 && v15 == v9)
      {

LABEL_18:

        return 1;
      }

      v17 = sub_10007E598();

      if (v17)
      {
        goto LABEL_18;
      }
    }

    else
    {
    }

    ++v7;
    v8 += 2;
    if (v6 == v7)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100051A84()
{
  if (qword_1000DE210 != -1)
  {
    swift_once();
  }

  v1 = async function pointer to GEOCategoryTaxonomyMapper.categoryStrings(for:mapItem:)[1];
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_100051B54;
  v3 = *(v0 + 32);

  return GEOCategoryTaxonomyMapper.categoryStrings(for:mapItem:)(0, v3);
}

uint64_t sub_100051B54(uint64_t a1)
{
  v2 = *(*v1 + 40);
  v4 = *v1;
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_100051C54, 0, 0);
}

uint64_t sub_100051C54()
{
  v0[2] = 0x726F707075736E75;
  v1 = v0[6];
  v0[3] = 0xEB00000000646574;
  v2 = swift_task_alloc();
  *(v2 + 16) = v0 + 2;
  v3 = sub_10004D32C(sub_100052564, v2, v1);

  v4 = v0[6];
  if (v3)
  {

    v5 = 0;
    v6 = 0;
  }

  else if (v4[2])
  {
    v7 = v4[4];
    v8 = v4[5];
    v9 = v0[6];

    v5 = sub_100015638(v7, v8);
    v6 = v10 & 1;
    if (v10)
    {
      v5 = 0;
    }
  }

  else
  {

    v5 = 0;
    v6 = 1;
  }

  v11 = v0[1];

  return v11(v5, v6 | ((v3 & 1) << 8));
}

uint64_t sub_100051D8C()
{
  v0 = sub_10007DF48();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = (&v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10002620C(0, &qword_1000E0890, OS_dispatch_queue_ptr);
  *v4 = sub_10007E328();
  (*(v1 + 104))(v4, enum case for DispatchPredicate.notOnQueue(_:), v0);
  v5 = sub_10007DF68();
  (*(v1 + 8))(v4, v0);
  if ((v5 & 1) == 0)
  {
    __break(1u);
    goto LABEL_35;
  }

  if (sub_10007D4C8())
  {
    if (qword_1000DE270 == -1)
    {
LABEL_4:
      v6 = sub_10007D5C8();
      sub_1000046BC(v6, qword_1000E4B40);
      v7 = sub_10007D5A8();
      v8 = sub_10007E298();
      if (!os_log_type_enabled(v7, v8))
      {
LABEL_32:

        return 0;
      }

      v9 = swift_slowAlloc();
      *v9 = 0;
      v10 = "CLLivePlaceContext: Authorization Denied.";
LABEL_31:
      _os_log_impl(&_mh_execute_header, v7, v8, v10, v9, 2u);

      goto LABEL_32;
    }

LABEL_35:
    swift_once();
    goto LABEL_4;
  }

  if (sub_10007D4F8())
  {
    if (qword_1000DE270 != -1)
    {
      swift_once();
    }

    v11 = sub_10007D5C8();
    sub_1000046BC(v11, qword_1000E4B40);
    v7 = sub_10007D5A8();
    v8 = sub_10007E298();
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_32;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "CLLivePlaceContext: Authorization Denied Globally.";
    goto LABEL_31;
  }

  if (sub_10007D4E8())
  {
    if (qword_1000DE270 != -1)
    {
      swift_once();
    }

    v12 = sub_10007D5C8();
    sub_1000046BC(v12, qword_1000E4B40);
    v7 = sub_10007D5A8();
    v8 = sub_10007E298();
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_32;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "CLLivePlaceContext: Authorization Restricted.";
    goto LABEL_31;
  }

  if (sub_10007D4D8())
  {
    if (qword_1000DE270 != -1)
    {
      swift_once();
    }

    v13 = sub_10007D5C8();
    sub_1000046BC(v13, qword_1000E4B40);
    v7 = sub_10007D5A8();
    v8 = sub_10007E298();
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_32;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "CLLivePlaceContext: Service Session Required.";
    goto LABEL_31;
  }

  if (sub_10007D508())
  {
    if (qword_1000DE270 != -1)
    {
      swift_once();
    }

    v14 = sub_10007D5C8();
    sub_1000046BC(v14, qword_1000E4B40);
    v7 = sub_10007D5A8();
    v8 = sub_10007E298();
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_32;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "CLLivePlaceContext: Authorization Request in Progress.";
    goto LABEL_31;
  }

  if (sub_10007D4B8())
  {
    if (qword_1000DE270 != -1)
    {
      swift_once();
    }

    v15 = sub_10007D5C8();
    sub_1000046BC(v15, qword_1000E4B40);
    v7 = sub_10007D5A8();
    v8 = sub_10007E298();
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_32;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "CLLivePlaceContext: Accuracy Limited.";
    goto LABEL_31;
  }

  return 1;
}

uint64_t sub_100052288(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100005744(a1, a2);
  }

  return a1;
}

void sub_10005229C(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  sub_10004E3B0(a1, v1[2]);
}

uint64_t sub_1000522A8(void *a1)
{
  v2 = sub_10007DF48();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10002620C(0, &qword_1000E0890, OS_dispatch_queue_ptr);
  *v6 = sub_10007E328();
  (*(v3 + 104))(v6, enum case for DispatchPredicate.notOnQueue(_:), v2);
  v7 = sub_10007DF68();
  result = (*(v3 + 8))(v6, v2);
  if (v7)
  {
    v9 = [a1 name];
    if (!v9)
    {
      goto LABEL_6;
    }

    v10 = v9;
    v11 = sub_10007E158();
    v13 = v12;

    v14 = swift_allocObject();
    *(v14 + 24) = 0;
    *(v14 + 16) = 0;
    v24[5] = v11;
    v24[6] = v13;
    sub_10002D9A8();

    sub_10007E3B8();

    swift_beginAccess();
    v15 = *(v14 + 16);
    v16 = *(v14 + 24);

    if (!v16)
    {
      goto LABEL_6;
    }

    v17 = MapsSuggestionsMapItemShortAddress();
    if (v17)
    {
      v18 = v17;
      v19 = sub_10007E158();
      v21 = v20;

      v24[3] = v19;
      v24[4] = v21;
      v24[1] = v15;
      v24[2] = v16;
      LOBYTE(v18) = sub_10007E3C8();

      if (v18)
      {
LABEL_6:
        v22 = MapsSuggestionsMapItemShortAddress();
        if (v22)
        {
          v23 = v22;
          v15 = sub_10007E158();
        }

        else
        {

          return 0;
        }
      }
    }

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100052564(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_10007E598() & 1;
  }
}

uint64_t sub_1000525C4(uint64_t a1, uint64_t a2)
{
  v4 = *(*(sub_100015240(&qword_1000E0948, &qword_100084800) - 8) + 80);

  return sub_10004E650(a1, a2);
}

uint64_t sub_100052650(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10005269C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015240(&qword_1000E0880, &qword_1000846E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005270C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100052944;

  return sub_100050F0C(a1, v5);
}

uint64_t sub_1000527C4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100050E18;

  return sub_100050F0C(a1, v5);
}

unint64_t sub_10005287C()
{
  result = qword_1000E0968;
  if (!qword_1000E0968)
  {
    sub_10007E2F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0968);
  }

  return result;
}

unint64_t sub_1000528D4()
{
  result = qword_1000E0978;
  if (!qword_1000E0978)
  {
    sub_100015288(&qword_1000E0970, &unk_100085FE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0978);
  }

  return result;
}

uint64_t sub_100052994()
{
  result = type metadata accessor for NavigationETAEntryContent(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100052A2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100015240(&qword_1000E0B50, &qword_1000849D0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v22 - v9;
  v11 = sub_100015240(&qword_1000E0B58, &qword_1000849D8);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v22 - v16;
  *v17 = sub_10007D878();
  *(v17 + 1) = 0;
  v17[16] = 1;
  v18 = sub_100015240(&qword_1000E0B70, &qword_1000849F0);
  sub_100052C74(a1, &v17[*(v18 + 44)]);
  *v10 = sub_10007D878();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v19 = sub_100015240(&qword_1000E0B78, &qword_1000849F8);
  sub_100052F4C(a1, &v10[*(v19 + 44)]);
  sub_100026310(v17, v15, &qword_1000E0B58, &qword_1000849D8);
  sub_100026310(v10, v8, &qword_1000E0B50, &qword_1000849D0);
  sub_100026310(v15, a2, &qword_1000E0B58, &qword_1000849D8);
  v20 = sub_100015240(&qword_1000E0C50, &qword_100084B00);
  sub_100026310(v8, a2 + *(v20 + 48), &qword_1000E0B50, &qword_1000849D0);
  sub_1000256C0(v10, &qword_1000E0B50, &qword_1000849D0);
  sub_1000256C0(v17, &qword_1000E0B58, &qword_1000849D8);
  sub_1000256C0(v8, &qword_1000E0B50, &qword_1000849D0);
  return sub_1000256C0(v15, &qword_1000E0B58, &qword_1000849D8);
}

uint64_t sub_100052C74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = sub_100015240(&qword_1000E0BA0, &qword_100084A20);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v42 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v41 = &v37 - v7;
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v44 = v8;
  v45 = v9;
  sub_10002D9A8();

  v10 = sub_10007DBF8();
  v38 = v11;
  v39 = v10;
  v13 = v12;
  v40 = v14;
  LODWORD(v44) = sub_10007DA38();
  v15 = sub_10007DBA8();
  v17 = v16;
  v19 = v18;
  sub_10007DAF8();
  v20 = sub_10007DBB8();
  v22 = v21;
  v24 = v23;

  sub_10002D9FC(v15, v17, v19 & 1);

  sub_10007DB18();
  v25 = sub_10007DB88();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  sub_10002D9FC(v20, v22, v24 & 1);

  sub_10002D9FC(v39, v38, v13 & 1);

  v44 = v25;
  v45 = v27;
  v29 &= 1u;
  v46 = v29;
  v47 = v31;
  v32 = v41;
  sub_10007DC78();
  sub_10002D9FC(v25, v27, v29);

  v33 = v42;
  sub_100026310(v32, v42, &qword_1000E0BA0, &qword_100084A20);
  v34 = v43;
  sub_100026310(v33, v43, &qword_1000E0BA0, &qword_100084A20);
  v35 = v34 + *(sub_100015240(&qword_1000E0BA8, &qword_100084A28) + 48);
  *v35 = 0;
  *(v35 + 8) = 1;
  sub_1000256C0(v32, &qword_1000E0BA0, &qword_100084A20);
  return sub_1000256C0(v33, &qword_1000E0BA0, &qword_100084A20);
}

uint64_t sub_100052F4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = sub_10007D8E8();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = sub_100015240(&qword_1000E0B88, &qword_1000856F0);
  v6 = *(v5 - 8);
  v45 = v5;
  v46 = v6;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v42 = &v38 - v8;
  v9 = sub_100015240(&qword_1000E0B90, &qword_100084A10);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v44 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v43 = &v38 - v13;
  sub_10007D8D8();
  v52._countAndFlagsBits = 541152325;
  v52._object = 0xE400000000000000;
  sub_10007D8C8(v52);
  sub_10007D8B8(*(a1 + 40));
  v53._countAndFlagsBits = 0;
  v53._object = 0xE000000000000000;
  sub_10007D8C8(v53);
  sub_10007D908();
  v14 = sub_10007DBD8();
  v39 = v15;
  v40 = v14;
  v17 = v16;
  v41 = v18;
  LODWORD(v48) = sub_10007DA58();
  v19 = sub_10007DBA8();
  v21 = v20;
  v23 = v22;
  sub_10007DB58();
  v24 = sub_10007DBB8();
  v26 = v25;
  v28 = v27;
  v30 = v29;

  sub_10002D9FC(v19, v21, v23 & 1);

  sub_10002D9FC(v40, v39, v17 & 1);

  v48 = v24;
  v49 = v26;
  v50 = v28 & 1;
  v51 = v30;
  v31 = v42;
  sub_10007DC08();
  sub_10002D9FC(v24, v26, v28 & 1);

  v48 = &type metadata for Text;
  v49 = &protocol witness table for Text;
  swift_getOpaqueTypeConformance2();
  v32 = v43;
  v33 = v45;
  sub_10007DC78();
  (*(v46 + 8))(v31, v33);
  v34 = v44;
  sub_100026310(v32, v44, &qword_1000E0B90, &qword_100084A10);
  v35 = v47;
  sub_100026310(v34, v47, &qword_1000E0B90, &qword_100084A10);
  v36 = v35 + *(sub_100015240(&qword_1000E0B98, &qword_100084A18) + 48);
  *v36 = 0;
  *(v36 + 8) = 1;
  sub_1000256C0(v32, &qword_1000E0B90, &qword_100084A10);
  return sub_1000256C0(v34, &qword_1000E0B90, &qword_100084A10);
}

uint64_t sub_100053348@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10007D848();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100015240(&qword_1000DEC18, &qword_100082C10);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  sub_100026310(v2, &v17 - v11, &qword_1000DEC18, &qword_100082C10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_10007D638();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_10007E2B8();
    v16 = sub_10007DA98();
    sub_10007D598();

    sub_10007D838();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_100053548@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10007D848();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100015240(&qword_1000DEC20, &unk_100083720);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for NavigationETAMediumLargePlatterContent(0);
  sub_100026310(v1 + *(v12 + 20), v11, &qword_1000DEC20, &unk_100083720);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_10007DFF8();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_10007E2B8();
    v16 = sub_10007DA98();
    sub_10007D598();

    sub_10007D838();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_10005377C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100015240(&qword_1000E0B50, &qword_1000849D0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v40 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v33 - v8;
  v10 = sub_100015240(&qword_1000E0B58, &qword_1000849D8);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v33 - v15;
  v17 = sub_100015240(&qword_1000E0B60, &qword_1000849E0);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v33 - v22;
  *v23 = sub_10007D878();
  *(v23 + 1) = 0;
  v23[16] = 1;
  v24 = sub_100015240(&qword_1000E0B68, &qword_1000849E8);
  sub_100053BA0(a1, &v23[*(v24 + 44)]);
  sub_10007DE88();
  sub_10007D668();
  v38 = v43;
  v39 = v41;
  v36 = v46;
  v37 = v45;
  v49 = 1;
  v48 = v42;
  v47 = v44;
  *v16 = sub_10007D878();
  *(v16 + 1) = 0;
  v16[16] = 1;
  v25 = sub_100015240(&qword_1000E0B70, &qword_1000849F0);
  sub_100054C28(a1, &v16[*(v25 + 44)]);
  *v9 = sub_10007D878();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v26 = sub_100015240(&qword_1000E0B78, &qword_1000849F8);
  sub_100054F10(a1, &v9[*(v26 + 44)]);
  v35 = v21;
  sub_100026310(v23, v21, &qword_1000E0B60, &qword_1000849E0);
  v27 = v49;
  v33 = v48;
  v34 = v47;
  sub_100026310(v16, v14, &qword_1000E0B58, &qword_1000849D8);
  v28 = v40;
  sub_100026310(v9, v40, &qword_1000E0B50, &qword_1000849D0);
  sub_100026310(v21, a2, &qword_1000E0B60, &qword_1000849E0);
  v29 = sub_100015240(&qword_1000E0B80, &unk_100084A00);
  v30 = a2 + v29[12];
  *v30 = 0;
  *(v30 + 8) = v27;
  *(v30 + 16) = v39;
  *(v30 + 24) = v33;
  *(v30 + 32) = v38;
  *(v30 + 40) = v34;
  v31 = v36;
  *(v30 + 48) = v37;
  *(v30 + 56) = v31;
  sub_100026310(v14, a2 + v29[16], &qword_1000E0B58, &qword_1000849D8);
  sub_100026310(v28, a2 + v29[20], &qword_1000E0B50, &qword_1000849D0);
  sub_1000256C0(v9, &qword_1000E0B50, &qword_1000849D0);
  sub_1000256C0(v16, &qword_1000E0B58, &qword_1000849D8);
  sub_1000256C0(v23, &qword_1000E0B60, &qword_1000849E0);
  sub_1000256C0(v28, &qword_1000E0B50, &qword_1000849D0);
  sub_1000256C0(v14, &qword_1000E0B58, &qword_1000849D8);
  return sub_1000256C0(v35, &qword_1000E0B60, &qword_1000849E0);
}

uint64_t sub_100053BA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100015240(&qword_1000E0BB0, &qword_100084A30);
  v88 = *(v4 - 8);
  v89 = v4;
  v5 = *(v88 + 64);
  __chkstk_darwin(v4);
  v77 = (&v74 - v6);
  v7 = sub_100015240(&qword_1000E0BB8, &qword_100084A38);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v90 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v74 - v11;
  v13 = sub_100015240(&qword_1000DF1E8, &unk_100084A40);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v82 = &v74 - v15;
  v16 = sub_10007DD98();
  v79 = *(v16 - 8);
  v80 = v16;
  v17 = *(v79 + 64);
  __chkstk_darwin(v16);
  v78 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_100015240(&qword_1000DF1F8, &qword_100084360);
  v19 = *(*(v83 - 8) + 64);
  __chkstk_darwin(v83);
  v84 = &v74 - v20;
  v21 = sub_100015240(&qword_1000DF228, &qword_100084A50);
  v85 = *(v21 - 8);
  v86 = v21;
  v22 = *(v85 + 64);
  __chkstk_darwin(v21);
  v81 = &v74 - v23;
  v24 = sub_10007D638();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = __chkstk_darwin(v24);
  v29 = &v74 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v31 = &v74 - v30;
  v32 = sub_100015240(&qword_1000E0BC0, &qword_100084A58);
  v33 = *(*(v32 - 8) + 64);
  v34 = __chkstk_darwin(v32 - 8);
  v87 = &v74 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v37 = &v74 - v36;
  v38 = a1;
  v39 = a1 + *(type metadata accessor for NavigationETAMediumLargePlatterContent(0) + 24);
  v40 = *v39;
  v41 = *v39 == 1;
  v76 = v38;
  if (v41)
  {
    v42 = 1;
  }

  else
  {
    v74 = v12;
    v75 = a2;
    v43 = *(v39 + 8);
    sub_100053348(v31);
    (*(v25 + 16))(v29, v31, v24);
    v44 = (*(v25 + 88))(v29, v24);
    if (v44 != enum case for ColorScheme.light(_:))
    {
      v40 = v43;
      if (v44 != enum case for ColorScheme.dark(_:))
      {
        result = sub_10007E518();
        __break(1u);
        return result;
      }
    }

    v45 = *(v25 + 8);
    v46 = v40;
    v45(v31, v24);
    if (v40)
    {
      v47 = v46;
      sub_10007DD78();
      v49 = v78;
      v48 = v79;
      v50 = v80;
      (*(v79 + 104))(v78, enum case for Image.ResizingMode.stretch(_:), v80);
      sub_10007DDE8();

      (*(v48 + 8))(v49, v50);
      v51 = v82;
      sub_10007DFA8();
      v52 = sub_10007DFC8();
      (*(*(v52 - 8) + 56))(v51, 0, 1, v52);
      v53 = v84;
      sub_10007DDD8();

      sub_1000256C0(v51, &qword_1000DF1E8, &unk_100084A40);
      sub_10007DE88();
      sub_10007D668();
      v54 = (v53 + *(v83 + 36));
      v55 = v92;
      *v54 = v91;
      v54[1] = v55;
      v54[2] = v93;
      sub_10002DDF4();
      v56 = v81;
      sub_10007DC78();

      sub_1000256C0(v53, &qword_1000DF1F8, &qword_100084360);
      sub_10002DB0C(v56, v37, &qword_1000DF228, &qword_100084A50);
      v42 = 0;
    }

    else
    {
      v42 = 1;
    }

    a2 = v75;
    v12 = v74;
  }

  v57 = v89;
  (*(v85 + 56))(v37, v42, 1, v86);
  v58 = 1;
  if (*(v39 + 56) == 1 && (*(v39 + 36) & 1) == 0 && !*(v39 + 32))
  {
    v59 = sub_10007D948();
    v60 = v77;
    *v77 = v59;
    *(v60 + 8) = 0;
    *(v60 + 16) = 1;
    v61 = sub_100015240(&qword_1000E0BD0, &unk_100084A68);
    sub_100054438(v60 + *(v61 + 44));
    v62 = sub_10007DAC8();
    sub_10007D628();
    v63 = v60 + *(v57 + 36);
    *v63 = v62;
    *(v63 + 8) = v64;
    *(v63 + 16) = v65;
    *(v63 + 24) = v66;
    *(v63 + 32) = v67;
    *(v63 + 40) = 0;
    sub_10002DB0C(v60, v12, &qword_1000E0BB0, &qword_100084A30);
    v58 = 0;
  }

  (*(v88 + 56))(v12, v58, 1, v57);
  v68 = v12;
  v69 = v87;
  sub_100026310(v37, v87, &qword_1000E0BC0, &qword_100084A58);
  v70 = v90;
  sub_100026310(v68, v90, &qword_1000E0BB8, &qword_100084A38);
  sub_100026310(v69, a2, &qword_1000E0BC0, &qword_100084A58);
  v71 = sub_100015240(&qword_1000E0BC8, &qword_100084A60);
  v72 = a2 + *(v71 + 48);
  *v72 = 0;
  *(v72 + 8) = 1;
  sub_100026310(v70, a2 + *(v71 + 64), &qword_1000E0BB8, &qword_100084A38);
  sub_1000256C0(v68, &qword_1000E0BB8, &qword_100084A38);
  sub_1000256C0(v37, &qword_1000E0BC0, &qword_100084A58);
  sub_1000256C0(v70, &qword_1000E0BB8, &qword_100084A38);
  return sub_1000256C0(v69, &qword_1000E0BC0, &qword_100084A58);
}

uint64_t sub_100054438@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = sub_10007DFF8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10007D288();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = sub_100015240(&qword_1000E0BD8, &qword_100084A78);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v30 - v11;
  v31 = sub_100015240(&qword_1000E0BE0, &qword_100084A80);
  v13 = *(*(v31 - 8) + 64);
  v14 = __chkstk_darwin(v31);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v30 - v17;
  sub_100053548(v5);
  sub_1000670E8(v5);
  (*(v2 + 8))(v5, v1);
  sub_100015240(&qword_1000E0BE8, &qword_100084A88);
  sub_100055970();
  sub_10007DB68();
  if (qword_1000DE280 != -1)
  {
    swift_once();
  }

  v19.super.isa = qword_1000E4B68;
  v29._countAndFlagsBits = 0x80000001000905C0;
  v37._countAndFlagsBits = 0x5445206572616853;
  v35._countAndFlagsBits = 0xD000000000000021;
  v35._object = 0x8000000100090590;
  v36.value._countAndFlagsBits = 0;
  v36.value._object = 0;
  v37._object = 0xE900000000000041;
  v33 = sub_10007D258(v35, v36, v19, v37, v29);
  v34 = v20;
  sub_10002D9A8();
  v21 = sub_10007DBF8();
  v23 = v22;
  v25 = v24;
  sub_10002DDAC(&qword_1000E0C38, &qword_1000E0BD8, &qword_100084A78);
  sub_10007DC88();
  sub_10002D9FC(v21, v23, v25 & 1);

  (*(v9 + 8))(v12, v8);
  sub_10007D6C8();
  sub_1000256C0(v16, &qword_1000E0BE0, &qword_100084A80);
  sub_100026310(v18, v16, &qword_1000E0BE0, &qword_100084A80);
  v26 = v32;
  sub_100026310(v16, v32, &qword_1000E0BE0, &qword_100084A80);
  v27 = v26 + *(sub_100015240(&qword_1000E0C40, &unk_100084AB0) + 48);
  *v27 = 0;
  *(v27 + 8) = 1;
  sub_1000256C0(v18, &qword_1000E0BE0, &qword_100084A80);
  return sub_1000256C0(v16, &qword_1000E0BE0, &qword_100084A80);
}

uint64_t sub_1000548AC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10007DD98();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100015240(&qword_1000DF1F0, &unk_1000831F0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v31 - v9;
  sub_10007DD88();
  v11 = enum case for Image.TemplateRenderingMode.template(_:);
  v12 = sub_10007DDC8();
  v13 = *(v12 - 8);
  (*(v13 + 104))(v10, v11, v12);
  (*(v13 + 56))(v10, 0, 1, v12);
  sub_10007DDA8();

  sub_1000256C0(v10, &qword_1000DF1F0, &unk_1000831F0);
  (*(v3 + 104))(v6, enum case for Image.ResizingMode.stretch(_:), v2);
  v14 = sub_10007DDE8();

  (*(v3 + 8))(v6, v2);
  *&v31[0] = v14;
  sub_10007DC08();

  v15 = sub_10007DCF8();
  KeyPath = swift_getKeyPath();
  v17 = (a1 + *(sub_100015240(&qword_1000E0C20, &qword_100084AA0) + 36));
  *v17 = KeyPath;
  v17[1] = v15;
  v18 = a1 + *(sub_100015240(&qword_1000E0C10, &qword_100084A98) + 36);
  *v18 = 0;
  *(v18 + 8) = 1;
  sub_10007DE88();
  sub_10007D668();
  v19 = (a1 + *(sub_100015240(&qword_1000E0C00, &qword_100084A90) + 36));
  v20 = v31[1];
  *v19 = v31[0];
  v19[1] = v20;
  v19[2] = v31[2];
  LOBYTE(v15) = sub_10007DAC8();
  sub_10007D628();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  result = sub_100015240(&qword_1000E0BE8, &qword_100084A88);
  v30 = a1 + *(result + 36);
  *v30 = v15;
  *(v30 + 8) = v22;
  *(v30 + 16) = v24;
  *(v30 + 24) = v26;
  *(v30 + 32) = v28;
  *(v30 + 40) = 0;
  return result;
}

uint64_t sub_100054C28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = sub_100015240(&qword_1000E0BA0, &qword_100084A20);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v42 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v41 = &v37 - v7;
  v8 = a1 + *(type metadata accessor for NavigationETAMediumLargePlatterContent(0) + 24);
  v9 = *(v8 + 24);
  v44 = *(v8 + 16);
  v45 = v9;
  sub_10002D9A8();

  v10 = sub_10007DBF8();
  v38 = v11;
  v39 = v10;
  v13 = v12;
  v40 = v14;
  LODWORD(v44) = sub_10007DA38();
  v15 = sub_10007DBA8();
  v17 = v16;
  v19 = v18;
  sub_10007DAF8();
  v20 = sub_10007DBB8();
  v22 = v21;
  v24 = v23;

  sub_10002D9FC(v15, v17, v19 & 1);

  sub_10007DB18();
  v25 = sub_10007DB88();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  sub_10002D9FC(v20, v22, v24 & 1);

  sub_10002D9FC(v39, v38, v13 & 1);

  v44 = v25;
  v45 = v27;
  v29 &= 1u;
  v46 = v29;
  v47 = v31;
  v32 = v41;
  sub_10007DC78();
  sub_10002D9FC(v25, v27, v29);

  v33 = v42;
  sub_100026310(v32, v42, &qword_1000E0BA0, &qword_100084A20);
  v34 = v43;
  sub_100026310(v33, v43, &qword_1000E0BA0, &qword_100084A20);
  v35 = v34 + *(sub_100015240(&qword_1000E0BA8, &qword_100084A28) + 48);
  *v35 = 0;
  *(v35 + 8) = 1;
  sub_1000256C0(v32, &qword_1000E0BA0, &qword_100084A20);
  return sub_1000256C0(v33, &qword_1000E0BA0, &qword_100084A20);
}

uint64_t sub_100054F10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = sub_10007D8E8();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = sub_100015240(&qword_1000E0B88, &qword_1000856F0);
  v6 = *(v5 - 8);
  v45 = v5;
  v46 = v6;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v42 = &v38 - v8;
  v9 = sub_100015240(&qword_1000E0B90, &qword_100084A10);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v44 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v43 = &v38 - v13;
  sub_10007D8D8();
  v52._countAndFlagsBits = 541152325;
  v52._object = 0xE400000000000000;
  sub_10007D8C8(v52);
  v53 = *(a1 + *(type metadata accessor for NavigationETAMediumLargePlatterContent(0) + 24) + 40);
  sub_10007D8B8(v53);
  v54._countAndFlagsBits = 0;
  v54._object = 0xE000000000000000;
  sub_10007D8C8(v54);
  sub_10007D908();
  v14 = sub_10007DBD8();
  v39 = v15;
  v40 = v14;
  v17 = v16;
  v41 = v18;
  LODWORD(v48) = sub_10007DA58();
  v19 = sub_10007DBA8();
  v21 = v20;
  v23 = v22;
  sub_10007DB58();
  v24 = sub_10007DBB8();
  v26 = v25;
  v28 = v27;
  v30 = v29;

  sub_10002D9FC(v19, v21, v23 & 1);

  sub_10002D9FC(v40, v39, v17 & 1);

  v48 = v24;
  v49 = v26;
  v50 = v28 & 1;
  v51 = v30;
  v31 = v42;
  sub_10007DC08();
  sub_10002D9FC(v24, v26, v28 & 1);

  v48 = &type metadata for Text;
  v49 = &protocol witness table for Text;
  swift_getOpaqueTypeConformance2();
  v32 = v43;
  v33 = v45;
  sub_10007DC78();
  (*(v46 + 8))(v31, v33);
  v34 = v44;
  sub_100026310(v32, v44, &qword_1000E0B90, &qword_100084A10);
  v35 = v47;
  sub_100026310(v34, v47, &qword_1000E0B90, &qword_100084A10);
  v36 = v35 + *(sub_100015240(&qword_1000E0B98, &qword_100084A18) + 48);
  *v36 = 0;
  *(v36 + 8) = 1;
  sub_1000256C0(v32, &qword_1000E0B90, &qword_100084A10);
  return sub_1000256C0(v34, &qword_1000E0B90, &qword_100084A10);
}

uint64_t sub_100055348@<X0>(char a1@<W2>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t (*a4)(uint64_t)@<X5>, uint64_t a5@<X8>)
{
  *a5 = sub_10007D948();
  *(a5 + 8) = 0;
  *(a5 + 16) = a1;
  v11 = a5 + *(sub_100015240(a2, a3) + 44);
  return a4(v5);
}

uint64_t sub_1000553B4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_10007E198(*(v1 + 40));
  v4 = (v1 + *(type metadata accessor for NavigationETAAccessoryRectangularPlatterContent(0) + 24));
  v18 = *v4;
  v20 = v4[1];
  sub_10002D9A8();

  v5 = sub_10007DBF8();
  v7 = v6;
  v9 = v8;
  v11 = *(v2 + 16);
  v10 = *(v2 + 24);
  v19 = v12 & 1;
  v13 = qword_1000DE280;

  if (v13 != -1)
  {
    swift_once();
  }

  v14.super.isa = qword_1000E4B68;
  v17._countAndFlagsBits = 0x8000000100090480;
  v21._countAndFlagsBits = 0x4024322540243125;
  v21._object = 0xE800000000000000;
  v22.value._countAndFlagsBits = 0;
  v22.value._object = 0;
  v23._countAndFlagsBits = 0x4024322540243125;
  v23._object = 0xE800000000000000;
  result = sub_10007D258(v21, v22, v14, v23, v17);
  *a1 = 0xD000000000000020;
  *(a1 + 8) = 0x8000000100090450;
  *(a1 + 16) = v11;
  *(a1 + 24) = v10;
  *(a1 + 32) = 541152325;
  *(a1 + 40) = 0xE400000000000000;
  *(a1 + 48) = v5;
  *(a1 + 56) = v7;
  *(a1 + 64) = v19;
  *(a1 + 72) = v9;
  *(a1 + 80) = result;
  *(a1 + 88) = v16;
  return result;
}

void sub_10005557C()
{
  sub_100055658(319, &unk_1000DECE0, &type metadata accessor for ColorScheme);
  if (v0 <= 0x3F)
  {
    sub_100055658(319, &qword_1000DEBB0, &type metadata accessor for WidgetFamily);
    if (v1 <= 0x3F)
    {
      type metadata accessor for NavigationETAEntryContent(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100055658(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_10007D648();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1000556C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NavigationETAEntryContent(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100055794(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for NavigationETAEntryContent(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100055870()
{
  result = type metadata accessor for NavigationETAEntryContent(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1000558E4()
{
  result = qword_1000E0B40;
  if (!qword_1000E0B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0B40);
  }

  return result;
}

unint64_t sub_100055970()
{
  result = qword_1000E0BF0;
  if (!qword_1000E0BF0)
  {
    sub_100015288(&qword_1000E0BE8, &qword_100084A88);
    sub_1000559FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0BF0);
  }

  return result;
}

unint64_t sub_1000559FC()
{
  result = qword_1000E0BF8;
  if (!qword_1000E0BF8)
  {
    sub_100015288(&qword_1000E0C00, &qword_100084A90);
    sub_100055A88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0BF8);
  }

  return result;
}