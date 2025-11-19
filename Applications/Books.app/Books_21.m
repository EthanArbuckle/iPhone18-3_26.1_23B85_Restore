Swift::Int __swiftcall REActionMenuState.page(at:)(Swift::Double at)
{
  v2 = v1;
  swift_getKeyPath();
  v18 = v1;
  sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
  sub_100797A14();

  v4 = *(v1 + 256);
  if (v4 == _s5Books17REActionMenuStateC9pageCountSivpfi_0())
  {
    return 1;
  }

  sub_10000E3E8((v2 + 80), *(v2 + 104));
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    v6 = sub_10079F944();
    swift_unknownObjectRelease();
    v7 = __OFADD__(v6, 1);
    v5 = v6 + 1;
    if (!v7)
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  v5 = 0;
LABEL_8:
  if (qword_100AD1440 != -1)
  {
    swift_once();
  }

  v8 = sub_10079ACE4();
  sub_100008B98(v8, qword_100ADC838);
  v9 = sub_10079ACC4();
  v10 = sub_1007A29A4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136315394;
    sub_1001F1160(&unk_100AD5090);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_10080B690;
    *(v13 + 56) = &type metadata for Double;
    *(v13 + 64) = &protocol witness table for Double;
    *(v13 + 32) = at;
    v14 = sub_1007A2284();
    v16 = sub_1000070F4(v14, v15, &v18);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2048;
    *(v11 + 14) = v5;
    _os_log_impl(&_mh_execute_header, v9, v10, "scrubbing value %s is page %ld", v11, 0x16u);
    sub_1000074E0(v12);
  }

  return v5;
}

void *sub_10033BD60()
{
  if (*(v0 + 168) != 1)
  {
    return _swiftEmptyArrayStorage;
  }

  swift_getKeyPath();
  sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
  sub_100797A14();

  if (*(v0 + 248) >= 0xC0u)
  {
    v2 = 0;
    goto LABEL_8;
  }

  v4 = *(v0 + 232);
  v3 = *(v0 + 240);
  v5 = __OFSUB__(v3, v4);
  v2 = v3 - v4;
  if (v5)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    v5 = __OFSUB__(0, v2);
    v2 = -v2;
    if (v5)
    {
      goto LABEL_20;
    }
  }

LABEL_8:
  v6 = v2 / 10;
  if (v6 >= 6)
  {
    v7 = 6;
  }

  else
  {
    v7 = v6;
  }

  swift_getKeyPath();
  sub_100797A14();

  v8 = (v0 + 216);
  swift_beginAccess();
  v9 = *(v0 + 216);
  swift_getKeyPath();
  sub_100797A14();

  if (*(v0 + 248) <= 0xBFu)
  {
    v8 = (v0 + 240);
  }

  else
  {
    swift_getKeyPath();
    sub_100797A14();
  }

  v10 = *v8;
  sub_10000E3E8((v0 + 80), *(v0 + 104));
  if (swift_weakLoadStrong())
  {
    sub_10079F714();
    swift_getObjectType();
    v11 = sub_10079F684();
    swift_unknownObjectRelease();

    v12 = v11 == 2;
  }

  else
  {
    v12 = 0;
  }

  sub_10000E3E8((v0 + 80), *(v0 + 104));
  v13 = BookActionMenuDataSource.isRightToLeft()();
  return sub_100751F84(v9, v10, v7 + 1, v12, v13);
}

void sub_10033BFCC(uint64_t a1, void *a2)
{
  v3 = v2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  if (a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = sub_10033BD60();
  }

  v7 = sub_1004A0FCC(v6, v48[0]);
  swift_getKeyPath();
  swift_getKeyPath();
  v48[0] = v6;

  sub_10079B9B4();
  if (v7)
  {
    if (qword_100AD1440 != -1)
    {
      swift_once();
    }

    v8 = sub_10079ACE4();
    sub_100008B98(v8, qword_100ADC838);
    swift_retain_n();

    v9 = sub_10079ACC4();
    v10 = sub_1007A29A4();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = -1;
      v12 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v48[0] = v45;
      *v12 = 136315906;
      v13 = sub_1007A25F4();
      v15 = v14;

      v16 = sub_1000070F4(v13, v15, v48);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2048;
      swift_getKeyPath();
      v49 = v3;
      sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
      sub_100797A14();

      v17 = *(v3 + 232);
      LODWORD(v15) = *(v3 + 248);

      if (v15 >> 6 <= 2)
      {
        v11 = v17;
      }

      *(v12 + 14) = v11;

      *(v12 + 22) = 2048;
      swift_getKeyPath();
      v49 = v3;
      sub_100797A14();

      v18 = *(v3 + 240);
      v19 = *(v3 + 248);

      if (v19 >> 6 > 2)
      {
        v18 = -1;
      }

      *(v12 + 24) = v18;

      *(v12 + 32) = 2080;
      v20 = sub_1007A25F4();
      v22 = v21;

      v23 = sub_1000070F4(v20, v22, v48);

      *(v12 + 34) = v23;
      _os_log_impl(&_mh_execute_header, v9, v10, "reusing indeces: %s. start %ld endPage: %ld rejected newIndeces: %s", v12, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  else
  {
    if (qword_100AD1440 != -1)
    {
      swift_once();
    }

    v24 = sub_10079ACE4();
    sub_100008B98(v24, qword_100ADC838);
    swift_retain_n();

    v25 = sub_10079ACC4();
    v26 = sub_1007A29A4();

    if (os_log_type_enabled(v25, v26))
    {
      LODWORD(v45) = v26;
      v27 = -1;
      v28 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v48[0] = v44;
      *v28 = 136315906;
      v29 = sub_1007A25F4();
      v31 = v30;

      v32 = sub_1000070F4(v29, v31, v48);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2048;
      swift_getKeyPath();
      v49 = v3;
      sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
      sub_100797A14();

      v33 = *(v3 + 232);
      LODWORD(v31) = *(v3 + 248);

      if (v31 >> 6 <= 2)
      {
        v27 = v33;
      }

      *(v28 + 14) = v27;

      *(v28 + 22) = 2048;
      swift_getKeyPath();
      v49 = v3;
      sub_100797A14();

      v34 = *(v3 + 240);
      v35 = *(v3 + 248);

      if (v35 >> 6 > 2)
      {
        v34 = -1;
      }

      *(v28 + 24) = v34;

      *(v28 + 32) = 2080;
      v36 = sub_1007A25F4();
      v38 = sub_1000070F4(v36, v37, v48);

      *(v28 + 34) = v38;
      _os_log_impl(&_mh_execute_header, v25, v45, "replacing indeces was: %s). start %ld endPage: %ld new: %s", v28, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v48[0] = v6;

    sub_10079B9B4();
    v39 = OBJC_IVAR____TtC5Books21ChapterScrubbingState_pageImageLoaders;
    swift_beginAccess();
    v40 = *(a1 + v39);
    v41 = *sub_10000E3E8((v3 + 80), *(v3 + 104));
    v48[3] = type metadata accessor for BookActionMenuDataSource();
    v48[4] = &off_100A19810;
    v47 = v40;
    v48[0] = v41;
    swift_bridgeObjectRetain_n();

    v46 = sub_100408F6C(v40);
    __chkstk_darwin(v46);
    v43[2] = &v47;
    v43[3] = &v46;
    v43[4] = v48;
    sub_1006D1368(sub_100343CC8, v43, v6);

    sub_100332178(v46);

    v42 = v47;
    sub_1000074E0(v48);

    *(a1 + v39) = v42;
  }
}

uint64_t sub_10033C80C(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v48) = a2;
  v57 = sub_1007A1C54();
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v54 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1007A1CA4();
  v53 = *(v55 - 8);
  __chkstk_darwin(v55);
  v52 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1007A1CC4();
  v51 = *(v58 - 8);
  __chkstk_darwin(v58);
  v49 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v50 = &v45 - v9;
  swift_getKeyPath();
  aBlock[0] = v2;
  v10 = sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
  sub_100797A14();

  swift_beginAccess();
  v11 = *(v2 + 216);
  swift_getKeyPath();
  v59 = v10;
  aBlock[0] = v2;
  sub_100797A14();

  v12 = *(v2 + 256);
  v13 = 0.0;
  if (v12 >= 2 && a1 >= 1 && v12 >= a1)
  {
    v13 = (a1 - 1) / (v12 - 1);
  }

  swift_beginAccess();
  if (*(v2 + 320) != v13)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v45 - 2) = v2;
    *(&v45 - 1) = v13;
    aBlock[0] = v2;
    sub_100797A04();

    goto LABEL_11;
  }

  *(v2 + 320) = v13;
  if (qword_100AD1440 != -1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v14 = sub_10079ACE4();
    sub_100008B98(v14, qword_100ADC838);

    v15 = sub_10079ACC4();
    v16 = sub_1007A29A4();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 134217984;
      swift_getKeyPath();
      aBlock[0] = v2;
      sub_100797A14();

      *(v17 + 4) = *(v2 + 320);
      _os_log_impl(&_mh_execute_header, v15, v16, "Scrubber position set to %f", v17, 0xCu);
    }

LABEL_11:
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v20 = *(v2 + 56);
      ObjectType = swift_getObjectType();
      (*(v20 + 16))(a1, 1, ObjectType, v20);
      result = swift_unknownObjectRelease();
    }

    v22 = a1 - v11;
    if (!__OFSUB__(a1, v11))
    {
      break;
    }

    __break(1u);
LABEL_34:
    swift_once();
  }

  if (v22 < 0 && (v23 = __OFSUB__(0, v22), v22 = v11 - a1, v23))
  {
    __break(1u);
  }

  else
  {
    swift_getKeyPath();
    aBlock[0] = v2;
    sub_100797A14();

    v24 = *(v2 + 256);
    v25 = 0.0;
    if (v24 >= 2 && v22 >= 1 && v24 >= v22)
    {
      v25 = (v22 - 1) / (v24 - 1);
    }

    if (v11 <= a1)
    {
      v26 = v25;
    }

    else
    {
      v26 = -v25;
    }

    if (*(v2 + 304) == v26)
    {
      *(v2 + 304) = v26;
    }

    else
    {
      v27 = swift_getKeyPath();
      __chkstk_darwin(v27);
      *(&v45 - 2) = v2;
      *(&v45 - 1) = v26;
      aBlock[0] = v2;
      sub_100797A04();
    }

    swift_getKeyPath();
    aBlock[0] = v2;
    sub_100797A14();

    v28 = *(v2 + 304);
    if (*(v2 + 312) == v28)
    {
      *(v2 + 312) = v28;
    }

    else
    {
      v29 = swift_getKeyPath();
      __chkstk_darwin(v29);
      *(&v45 - 2) = v2;
      *(&v45 - 1) = v28;
      aBlock[0] = v2;
      sub_100797A04();
    }

    v47 = v48 & 1;
    v30 = v48 & 1 | 0x80;
    v31 = swift_getKeyPath();
    __chkstk_darwin(v31);
    *(&v45 - 4) = v3;
    *(&v45 - 3) = v11;
    v48 = v11;
    *(&v45 - 2) = a1;
    *(&v45 - 8) = v30;
    aBlock[0] = v3;
    sub_100797A04();

    sub_10033A0A4(0x8000000000000018);
    v32 = REActionMenuState.makeChapterScrubbingState()();
    v33 = v32;
    v35 = v34;
    if (*(v3 + 280) == 1)
    {
      sub_100343518(v32, 1);
      sub_100342F4C(v33, 1);
    }

    else
    {
      v36 = swift_getKeyPath();
      __chkstk_darwin(v36);
      *(&v45 - 4) = v3;
      *(&v45 - 3) = v33;
      *(&v45 - 16) = 1;
      aBlock[0] = v3;
      sub_100797A04();
      sub_100342F4C(v33, 1);
    }

    sub_10000A7C4(0, &qword_100AD1E10);

    v46 = sub_1007A2D74();
    v37 = v49;
    sub_1007A1CB4();
    v38 = v50;
    sub_1007A1D24();
    v59 = *(v51 + 8);
    v59(v37, v58);
    v39 = swift_allocObject();
    *(v39 + 16) = v3;
    *(v39 + 24) = v35;
    *(v39 + 32) = v48;
    *(v39 + 40) = a1;
    *(v39 + 48) = v47;
    aBlock[4] = sub_100343A5C;
    aBlock[5] = v39;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1003323D0;
    aBlock[3] = &unk_100A165B0;
    v40 = _Block_copy(aBlock);

    v41 = v52;
    sub_1007A1C74();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100342F78(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags);
    sub_1001F1160(&unk_100AD7CA0);
    sub_100005920(&qword_100ADA680, &unk_100AD7CA0);
    v42 = v54;
    v43 = v57;
    sub_1007A3594();
    v44 = v46;
    sub_1007A2D04();

    _Block_release(v40);

    (*(v56 + 8))(v42, v43);
    (*(v53 + 8))(v41, v55);
    return (v59)(v38, v58);
  }

  return result;
}

unint64_t sub_10033D300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = sub_1007A1C54();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1007A1CA4();
  v23 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_10033A0A4(v17);
  if (a3 == a4)
  {
    return sub_10033D64C(a5 & 1);
  }

  v22[1] = *(a1 + 192);
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = a2;
  *(v20 + 32) = a4;
  *(v20 + 40) = a5 & 1;
  aBlock[4] = sub_100343EB8;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003323D0;
  aBlock[3] = &unk_100A16600;
  v21 = _Block_copy(aBlock);

  sub_1007A1C74();
  v24 = _swiftEmptyArrayStorage;
  sub_100342F78(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001F1160(&unk_100AD7CA0);
  v22[0] = v14;
  sub_100005920(&qword_100ADA680, &unk_100AD7CA0);
  sub_1007A3594();
  sub_1007A2D94();
  _Block_release(v21);
  (*(v11 + 8))(v13, v10);
  (*(v23 + 8))(v16, v22[0]);
}

unint64_t sub_10033D64C(char a1)
{
  swift_getKeyPath();
  sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
  sub_100797A04();

  swift_getKeyPath();
  sub_100797A14();

  if (*(v1 + 328) != 0x8000000000000000)
  {
    if (a1)
    {
      v4 = 0x8000000000000008;
    }

    else
    {
      v4 = 0x8000000000000000;
    }

    result = sub_10033A0A4(v4);
  }

  if ((a1 & 1) == 0)
  {
    if (*(v1 + 280) >= 2u)
    {
      return sub_100343518(0, 2);
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_100797A04();
    }
  }

  return result;
}

uint64_t sub_10033D830(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v88 = sub_1007A1C54();
  v77 = *(v88 - 8);
  __chkstk_darwin(v88);
  v86 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_1007A1CA4();
  v76 = *(v87 - 8);
  __chkstk_darwin(v87);
  v85 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_10079EF54();
  v8 = *(v84 - 8);
  __chkstk_darwin(v84);
  v83 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1007A1CC4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v69 - v15;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = result;
    v69 = v13;
    v70 = v16;
    v71 = v11;
    v72 = v10;
    v73 = a3;
    v74 = a4;
    v19 = dispatch_group_create();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4();

    v75 = aBlock;
    v20 = aBlock[2];
    if (v20)
    {
      v21 = (v75 + 4);
      if (qword_100AD1440 != -1)
      {
        swift_once();
      }

      v95 = sub_10079ACE4();
      v81 = (v8 + 8);
      v80 = &v99;
      v79 = (v77 + 8);
      v78 = (v76 + 8);
      *&v22 = 134217984;
      v89 = v22;
      v82 = v18;
      v94 = v19;
      do
      {
        v25 = *v21++;
        v24 = v25;
        sub_100008B98(v95, qword_100ADC838);
        v26 = sub_10079ACC4();
        v27 = sub_1007A29A4();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          *v28 = v89;
          *(v28 + 4) = v24;
          _os_log_impl(&_mh_execute_header, v26, v27, "Want snapshot for page %ld", v28, 0xCu);
        }

        dispatch_group_enter(v19);
        sub_100009864(v18 + 80, v103);
        v29 = sub_10000E3E8(v103, v103[3]);
        v30 = swift_allocObject();
        *(v30 + 16) = v24;
        *(v30 + 24) = v19;
        v31 = *v29;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v96 = v21;
          if (swift_weakLoadStrong())
          {
            sub_10000E3E8((v31 + 16), *(v31 + 40));
            v32 = v94;
            v92 = sub_10079ECA4();
            v91 = v33;
            swift_getObjectType();
            v34 = v83;
            sub_1007A1344();
            v35 = sub_10079ED24();
            (*v81)(v34, v84);
            sub_10079F714();
            swift_getObjectType();
            sub_10079F694();
            v37 = v36;
            v39 = v38;
            swift_unknownObjectRelease();
            sub_10000A7C4(0, &qword_100AD1E10);
            v93 = sub_1007A2D74();
            v40 = swift_allocObject();
            v40[2] = v31;
            v40[3] = v35;
            v90 = v35;
            v41 = v91;
            v40[4] = v92;
            v40[5] = v41;
            v40[6] = v24;
            v40[7] = v37;
            v40[8] = v39;
            v40[9] = sub_100343B44;
            v40[10] = v30;
            v40[11] = BKAppDelegate.enableMetricsInspectorOnDebugMode();
            v40[12] = 0;
            v101 = sub_100343B58;
            v102 = v40;
            aBlock = _NSConcreteStackBlock;
            v98 = 1107296256;
            v99 = sub_1003323D0;
            v100 = &unk_100A16718;
            v42 = _Block_copy(&aBlock);

            v43 = v85;
            sub_1007A1C74();
            aBlock = _swiftEmptyArrayStorage;
            sub_100342F78(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags);
            sub_1001F1160(&unk_100AD7CA0);
            sub_100005920(&qword_100ADA680, &unk_100AD7CA0);
            v44 = v86;
            v45 = v88;
            sub_1007A3594();
            v46 = v93;
            sub_1007A2D94();
            _Block_release(v42);

            swift_unknownObjectRelease();

            v47 = v45;
            v18 = v82;
            (*v79)(v44, v47);
            v48 = v43;
            v19 = v94;
            (*v78)(v48, v87);
          }

          else
          {
            v49 = v19;

            swift_unknownObjectRelease();
          }

          v21 = v96;
        }

        else
        {
          v23 = v19;
        }

        sub_1000074E0(v103);
        --v20;
      }

      while (v20);
    }

    v50 = v69;
    sub_1007A1CB4();
    v51 = v70;
    sub_1007A1D24();
    v52 = *(v71 + 8);
    v53 = v72;
    v52(v50, v72);
    sub_1007A2CA4();
    v52(v51, v53);
    if (sub_1007A1C34())
    {
      v54 = v74;
      v55 = v73;
      if (qword_100AD1440 != -1)
      {
        swift_once();
      }

      v56 = sub_10079ACE4();
      sub_100008B98(v56, qword_100ADC838);
      v57 = sub_10079ACC4();
      v58 = sub_1007A29A4();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 0;
        v60 = "Timeout waiting for snapshots";
LABEL_24:
        _os_log_impl(&_mh_execute_header, v57, v58, v60, v59, 2u);
        v62 = v19;

LABEL_26:

        sub_10000A7C4(0, &qword_100AD1E10);
        v63 = sub_1007A2D74();
        v64 = swift_allocObject();
        *(v64 + 16) = v18;
        *(v64 + 24) = v55;
        *(v64 + 32) = v54 & 1;
        v101 = sub_100343B4C;
        v102 = v64;
        aBlock = _NSConcreteStackBlock;
        v98 = 1107296256;
        v99 = sub_1003323D0;
        v100 = &unk_100A166C8;
        v65 = _Block_copy(&aBlock);

        v66 = v85;
        sub_1007A1C74();
        aBlock = _swiftEmptyArrayStorage;
        sub_100342F78(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags);
        sub_1001F1160(&unk_100AD7CA0);
        sub_100005920(&qword_100ADA680, &unk_100AD7CA0);
        v67 = v86;
        v68 = v88;
        sub_1007A3594();
        sub_1007A2D94();
        _Block_release(v65);

        (*(v77 + 8))(v67, v68);
        return (*(v76 + 8))(v66, v87);
      }
    }

    else
    {
      v54 = v74;
      v55 = v73;
      if (qword_100AD1440 != -1)
      {
        swift_once();
      }

      v61 = sub_10079ACE4();
      sub_100008B98(v61, qword_100ADC838);
      v57 = sub_10079ACC4();
      v58 = sub_1007A29A4();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 0;
        v60 = "All snapshots ready";
        goto LABEL_24;
      }
    }

    v62 = v19;
    goto LABEL_26;
  }

  return result;
}

void sub_10033E47C(uint64_t a1, uint64_t a2, NSObject *a3)
{
  if (qword_100AD1440 != -1)
  {
    swift_once();
  }

  v5 = sub_10079ACE4();
  sub_100008B98(v5, qword_100ADC838);
  v6 = sub_10079ACC4();
  v7 = sub_1007A29A4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = a2;
    _os_log_impl(&_mh_execute_header, v6, v7, "Prepared snapshot for page %ld", v8, 0xCu);
  }

  dispatch_group_leave(a3);
}

uint64_t sub_10033E584(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_1007A1C54();
  v35 = *(v6 - 8);
  v36 = v6;
  __chkstk_darwin(v6);
  v33 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1007A1CA4();
  v32 = *(v34 - 8);
  __chkstk_darwin(v34);
  v31 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1007A1CC4();
  v9 = *(v30 - 8);
  __chkstk_darwin(v30);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v28 - v13;
  swift_beginAccess();
  if (*(a1 + 216) == a2)
  {
    sub_100334D1C();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v28 - 2) = a1;
    *(&v28 - 1) = a2;
    aBlock[0] = a1;
    sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
    sub_100797A04();
  }

  UIAnimationDragCoefficient();
  UIAnimationDragCoefficient();
  swift_getKeyPath();
  aBlock[0] = a1;
  sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
  sub_100797A14();

  if (*(a1 + 248) >= 0xC0u)
  {
    goto LABEL_8;
  }

  v18 = *(a1 + 232);
  v17 = *(a1 + 240);
  v19 = __OFSUB__(v17, v18);
  v20 = v17 - v18;
  if (v19)
  {
    __break(1u);
  }

  else if ((v20 & 0x8000000000000000) == 0 || !__OFSUB__(0, v20))
  {
LABEL_8:
    sub_10000A7C4(0, &qword_100AD1E10);
    v21 = sub_1007A2D74();
    sub_1007A1CB4();
    sub_1007A1D24();
    v29 = *(v9 + 8);
    v22 = v30;
    v29(v11, v30);
    v23 = swift_allocObject();
    *(v23 + 16) = a1;
    *(v23 + 24) = a3 & 1;
    aBlock[4] = sub_100343B94;
    aBlock[5] = v23;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1003323D0;
    aBlock[3] = &unk_100A16768;
    v24 = _Block_copy(aBlock);

    v25 = v31;
    sub_1007A1C74();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100342F78(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags);
    sub_1001F1160(&unk_100AD7CA0);
    sub_100005920(&qword_100ADA680, &unk_100AD7CA0);
    v26 = v33;
    v27 = v36;
    sub_1007A3594();
    sub_1007A2D04();
    _Block_release(v24);

    (*(v35 + 8))(v26, v27);
    (*(v32 + 8))(v25, v34);
    return (v29)(v14, v22);
  }

  __break(1u);
  return result;
}

uint64_t sub_10033EB88(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v27 = a2;
  v30 = sub_1007A1C54();
  v33 = *(v30 - 8);
  __chkstk_darwin(v30);
  v29 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1007A1CA4();
  v31 = *(v7 - 8);
  v32 = v7;
  __chkstk_darwin(v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1007A1CC4();
  v28 = v10;
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v26 - v15;
  swift_getKeyPath();
  v34 = v3;
  v35 = a1;
  v36 = a2;
  v37 = 65;
  aBlock[0] = v3;
  sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
  sub_100797A04();

  UIAnimationDragCoefficient();
  sub_10000A7C4(0, &qword_100AD1E10);
  v17 = sub_1007A2D74();
  sub_1007A1CB4();
  sub_1007A1D24();
  v18 = *(v11 + 8);
  v18(v13, v10);
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  v21 = v27;
  *(v20 + 16) = v19;
  *(v20 + 24) = v21;
  aBlock[4] = sub_100343B3C;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003323D0;
  aBlock[3] = &unk_100A16650;
  v22 = _Block_copy(aBlock);

  sub_1007A1C74();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100342F78(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001F1160(&unk_100AD7CA0);
  sub_100005920(&qword_100ADA680, &unk_100AD7CA0);
  v23 = v29;
  v24 = v30;
  sub_1007A3594();
  sub_1007A2D04();
  _Block_release(v22);

  (*(v33 + 8))(v23, v24);
  (*(v31 + 8))(v9, v32);
  return (v18)(v16, v28);
}

uint64_t sub_10033F054(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    swift_beginAccess();
    if (*(v4 + 216) == a2)
    {
      sub_100334D1C();
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
      sub_100797A04();
    }

    swift_getKeyPath();
    sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
    sub_100797A14();

    if (*(v4 + 328) == 0x8000000000000010)
    {
      sub_10033A0A4(0x8000000000000018);
    }
  }

  return result;
}

uint64_t REActionMenuState.scrubberChanged(state:event:)(uint64_t a1, int a2, unsigned __int8 a3, double a4, double a5, double a6)
{
  v7 = v6;
  v149 = a1;
  v12 = a3;
  v146 = sub_1007A1C54();
  v145 = *(v146 - 8);
  __chkstk_darwin(v146);
  v143 = &v139 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_1007A1CA4();
  v142 = *(v144 - 8);
  __chkstk_darwin(v144);
  v141 = &v139 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_10079FFF4();
  __chkstk_darwin(v147);
  v148 = (&v139 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v12 == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v17 = Strong;
      v18 = *(Strong + OBJC_IVAR___BKEngagementManager_manager);
      v19 = sub_1007999E4();

      if (v19)
      {
        type metadata accessor for SessionDonor();
        v20 = swift_dynamicCastClass();
        if (v20 && (v20[OBJC_IVAR___BKSessionDonor_everUsedReadingScrubber] & 1) == 0)
        {
          v20[OBJC_IVAR___BKSessionDonor_everUsedReadingScrubber] = 1;
          [v20 propertyDidChange:v20 propertyConfiguration:*&v20[OBJC_IVAR___BKSessionDonor_everUsedReadingScrubberAppConfig]];
        }

        swift_unknownObjectRelease();
      }
    }
  }

  swift_getKeyPath();
  v21 = OBJC_IVAR____TtC5Books17REActionMenuState___observationRegistrar;
  aBlock[0] = v7;
  v22 = sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
  sub_100797A14();

  if (a2)
  {
    v23 = 1;
  }

  else
  {
    v23 = *(v7 + 280) == 0;
  }

  v24 = !v23;
  LODWORD(v155) = v24;
  swift_getKeyPath();
  aBlock[0] = v7;
  sub_100797A14();

  v25 = *(v7 + 272);
  LODWORD(v26) = *(v7 + 280);
  if (!*(v7 + 280) || a2)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v25 = v149;
        LODWORD(v26) = a2;
      }
    }

    else
    {
      v25 = v149;
      LODWORD(v26) = a2;
    }
  }

  LODWORD(v156) = a2;
  v27 = a5 + a6;
  if (a5 + a6 < 0.0)
  {
    v27 = 0.0;
  }

  if (v27 <= 1.0)
  {
    v28 = v27;
  }

  else
  {
    v28 = 1.0;
  }

  sub_100337314(v25, v26);
  if (qword_100AD1440 != -1)
  {
    swift_once();
  }

  v29 = v28 - a5;
  v30 = sub_10079ACE4();
  v154 = sub_100008B98(v30, qword_100ADC838);
  v31 = sub_10079ACC4();
  v32 = sub_1007A29A4();
  v33 = os_log_type_enabled(v31, v32);
  v158 = v22;
  v153 = v26;
  v151 = v25;
  v152 = v21;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v150 = swift_slowAlloc();
    aBlock[0] = v150;
    *v34 = 134219010;
    *(v34 + 4) = a4;
    *(v34 + 12) = 2080;
    sub_1001F1160(&unk_100AD5090);
    v35 = swift_allocObject();
    v157 = xmmword_10080B690;
    *(v35 + 16) = xmmword_10080B690;
    *(v35 + 56) = &type metadata for Double;
    *(v35 + 64) = &protocol witness table for Double;
    *(v35 + 32) = a6;
    v36 = sub_1007A2284();
    v38 = sub_1000070F4(v36, v37, aBlock);

    *(v34 + 14) = v38;
    *(v34 + 22) = 2080;
    v39 = swift_allocObject();
    *(v39 + 16) = v157;
    *(v39 + 56) = &type metadata for Double;
    *(v39 + 64) = &protocol witness table for Double;
    *(v39 + 32) = a5;
    v40 = sub_1007A2284();
    v42 = sub_1000070F4(v40, v41, aBlock);

    *(v34 + 24) = v42;
    *(v34 + 32) = 2080;
    v43 = swift_allocObject();
    *(v43 + 16) = v157;
    *(v43 + 56) = &type metadata for Double;
    *(v43 + 64) = &protocol witness table for Double;
    *(v43 + 32) = v28;
    v44 = sub_1007A2284();
    v46 = sub_1000070F4(v44, v45, aBlock);

    *(v34 + 34) = v46;
    *(v34 + 42) = 2080;
    v47 = swift_allocObject();
    *(v47 + 16) = v157;
    *(v47 + 56) = &type metadata for Double;
    *(v47 + 64) = &protocol witness table for Double;
    v25 = v151;
    *(v47 + 32) = v29;
    v48 = sub_1007A2284();
    v50 = sub_1000070F4(v48, v49, aBlock);

    *(v34 + 44) = v50;
    _os_log_impl(&_mh_execute_header, v31, v32, "scrub received position %f delta %s value: %s producing targetValue %s snappedDelta: %s", v34, 0x34u);
    swift_arrayDestroy();
    LOBYTE(v26) = v153;
  }

  if (v26 == 1)
  {
    swift_getKeyPath();
    aBlock[0] = v7;
    sub_100797A14();

    if (*(v7 + 280) >= 2u)
    {

      v52 = 1;
      v51 = v25;
    }

    else
    {
      swift_getKeyPath();
      aBlock[0] = v7;
      sub_100797A14();

      v51 = *(v7 + 272);
      v52 = *(v7 + 280);
      sub_100337314(v51, v52);
    }

    v55 = sub_100341270(v51, v52, *&v28, 0);
    v54 = v51;
    v56 = v52;
  }

  else
  {
    sub_100337314(v25, v26);
    v53 = sub_100341270(v25, v26, *&a4, 0);
    v54 = v25;
    v55 = v53;
    v56 = v26;
  }

  sub_100342F4C(v54, v56);
  if (v155)
  {
    swift_getKeyPath();
    aBlock[0] = v7;
    sub_100797A14();

    swift_beginAccess();
    sub_1004C1944(v55, *(v7 + 320));
  }

  swift_getKeyPath();
  aBlock[0] = v7;
  sub_100797A14();

  v57 = *(v7 + 328);
  swift_getKeyPath();
  aBlock[0] = v7;
  sub_1002B6C38(v57);
  sub_100797A14();

  v58 = *(v7 + 272);
  v59 = *(v7 + 280);
  swift_getKeyPath();
  aBlock[0] = v7;
  sub_100337314(v58, v59);
  sub_100797A14();

  swift_beginAccess();
  v60 = *(v7 + 216);
  if (v156)
  {
    if (v156 == 1)
    {
      v61 = 0x8000000000000018;
    }

    else
    {
      v61 = 0x8000000000000008;
      if (v59 == 1 && v60 != v55)
      {
        sub_100337314(v58, 1);

        v61 = v58;
      }
    }
  }

  else if (v60 != v55 || (v61 = 0x8000000000000018, !v59) && v57 == 0x8000000000000010)
  {
    v61 = 0x8000000000000010;
  }

  sub_1002B6C38(v57);
  sub_1002B6C38(v61);
  v62 = sub_10079ACC4();
  v63 = sub_1007A29A4();
  sub_1002B6C54(v57);
  sub_1002B6C54(v61);
  v64 = os_log_type_enabled(v62, v63);
  *&v157 = v61;
  v150 = v55;
  if (v64)
  {
    v65 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v65 = 136315394;
    v66 = ActionMenuState.description.getter(v57);
    v68 = sub_1000070F4(v66, v67, aBlock);

    *(v65 + 4) = v68;
    *(v65 + 12) = 2080;
    v69 = ActionMenuState.description.getter(v157);
    v26 = v70;
    sub_1002B6C54(v157);
    v71 = sub_1000070F4(v69, v26, aBlock);
    LOBYTE(v26) = v153;

    *(v65 + 14) = v71;
    _os_log_impl(&_mh_execute_header, v62, v63, "previousState: %s nextState: %s", v65, 0x16u);
    swift_arrayDestroy();
    v55 = v150;

    v61 = v157;
  }

  else
  {

    sub_1002B6C54(v61);
  }

  sub_100342F4C(v58, v59);
  sub_1002B6C54(v57);
  v72 = v156 != 0;
  if (!v26)
  {
    v72 = 0;
  }

  if (((v155 | v72) & 1) == 0)
  {
    swift_getKeyPath();
    aBlock[0] = v7;
    sub_100797A14();

    v93 = *(v7 + 216);
    if (v93 == v55)
    {
      sub_100334D1C();
      v155 = 0;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *(&v139 - 2) = v7;
      *(&v139 - 1) = v55;
      aBlock[0] = v7;
      sub_100797A04();
      v155 = 0;

      v61 = v157;
    }

    if (v61 >> 62 == 2 && (v61 | 8) == 0x8000000000000018)
    {
      swift_getKeyPath();
      aBlock[0] = v7;
      sub_100797A14();

      if (*(v7 + 280) == 1)
      {
        swift_beginAccess();
        if (*(v7 + 320) == a4)
        {
          *(v7 + 320) = a4;
          goto LABEL_110;
        }

        v138 = swift_getKeyPath();
        __chkstk_darwin(v138);
        *(&v139 - 2) = v7;
        *(&v139 - 1) = a4;
        v162 = v7;
LABEL_88:
        v103 = v155;
        sub_100797A04();
        v155 = v103;

LABEL_113:
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v126 = *(v7 + 56);
          ObjectType = swift_getObjectType();
          swift_getKeyPath();
          v161 = v7;
          sub_100797A14();

          (*(v126 + 24))(*(v7 + 216), ObjectType, v126);
          swift_unknownObjectRelease();
        }

        sub_10034194C(v149, v156, 0, v29);
        if (v93 == v55)
        {
          v128 = swift_getKeyPath();
          __chkstk_darwin(v128);
          *(&v139 - 3) = 0;
          *(&v139 - 2) = 0;
          *(&v139 - 4) = v7;
          *(&v139 - 8) = -64;
          v161 = v7;
          v129 = v155;
          sub_100797A04();
          v155 = v129;

          swift_getKeyPath();
          v161 = v7;
          sub_100797A14();

          LOBYTE(v161) = *(v7 + 328) == 0x8000000000000000;
          sub_10079B914();
        }

        else
        {
          sub_10033EB88(v93, v55);
        }

        v112 = v153;
        v91 = v151;
        goto LABEL_119;
      }

      swift_beginAccess();
      if (*(v7 + 320) == v28)
      {
        *(v7 + 320) = v28;
LABEL_110:

        v100 = sub_10079ACC4();
        v101 = sub_1007A29A4();

        if (os_log_type_enabled(v100, v101))
        {
LABEL_111:
          v125 = swift_slowAlloc();
          *v125 = 134217984;
          swift_getKeyPath();
          v162 = v7;
          sub_100797A14();

          *(v125 + 4) = *(v7 + 320);
          _os_log_impl(&_mh_execute_header, v100, v101, "Scrubber position set to %f", v125, 0xCu);
        }

LABEL_112:

        goto LABEL_113;
      }
    }

    else
    {
      swift_getKeyPath();
      aBlock[0] = v7;
      sub_100797A14();

      v98 = *(v7 + 216);
      swift_getKeyPath();
      aBlock[0] = v7;
      sub_100797A14();

      v99 = *(v7 + 256);
      v28 = 0.0;
      if (v99 >= 2 && v98 >= 1 && v99 >= v98)
      {
        v28 = (v98 - 1) / (v99 - 1);
      }

      swift_beginAccess();
      if (*(v7 + 320) == v28)
      {
        *(v7 + 320) = v28;

        v100 = sub_10079ACC4();
        v101 = sub_1007A29A4();

        if (os_log_type_enabled(v100, v101))
        {
          goto LABEL_111;
        }

        goto LABEL_112;
      }
    }

    v102 = swift_getKeyPath();
    __chkstk_darwin(v102);
    *(&v139 - 2) = v7;
    *(&v139 - 1) = v28;
    v162 = v7;
    goto LABEL_88;
  }

  v73 = v61 & 0xC000000000000000;
  if ((v61 & 0xC000000000000000) != 0x8000000000000000 || (v74 = v155, (v61 | 8) != 0x8000000000000018))
  {
    v74 = 1;
  }

  v140 = v74;
  swift_getKeyPath();
  aBlock[0] = v7;
  sub_100797A14();

  v75 = *(v7 + 216);
  swift_getKeyPath();
  aBlock[0] = v7;
  sub_100797A14();

  v76 = *(v7 + 256);
  v77 = 0.0;
  if (v76 >= 2 && v75 >= 1 && v76 >= v75)
  {
    v77 = (v75 - 1) / (v76 - 1);
  }

  swift_getKeyPath();
  aBlock[0] = v7;
  sub_100797A14();

  v78 = *(v7 + 216);
  v79 = sub_10079ACC4();
  v80 = sub_1007A29A4();
  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v81 = 136315906;
    sub_1001F1160(&unk_100AD5090);
    v82 = swift_allocObject();
    v139 = xmmword_10080B690;
    *(v82 + 16) = xmmword_10080B690;
    *(v82 + 56) = &type metadata for CGFloat;
    *(v82 + 64) = sub_100343784();
    *(v82 + 32) = v28;
    v83 = sub_1007A2284();
    v85 = sub_1000070F4(v83, v84, aBlock);

    *(v81 + 4) = v85;
    *(v81 + 12) = 2080;
    v86 = swift_allocObject();
    *(v86 + 16) = v139;
    *(v86 + 56) = &type metadata for Double;
    *(v86 + 64) = &protocol witness table for Double;
    *(v86 + 32) = vabdd_f64(v28, v77);
    v87 = sub_1007A2284();
    v89 = sub_1000070F4(v87, v88, aBlock);

    *(v81 + 14) = v89;
    v61 = v157;
    *(v81 + 22) = 2048;
    *(v81 + 24) = v78;
    *(v81 + 32) = 2048;
    *(v81 + 34) = v150;
    _os_log_impl(&_mh_execute_header, v79, v80, "scrub new position is %s for a delta of %s startPage: %ld animationTargetPageNumber: %ld", v81, 0x2Au);
    swift_arrayDestroy();
  }

  v90 = v156;
  if ((v73 != 0x8000000000000000 || (v61 | 8) != 0x8000000000000018) && v78 == v150)
  {
    sub_10033A0A4(0x8000000000000008);
    v91 = v151;
    if (*(v7 + 280) >= 2u)
    {
      sub_100343518(0, 2);
    }

    else
    {
      v92 = swift_getKeyPath();
      __chkstk_darwin(v92);
      *(&v139 - 4) = v7;
      *(&v139 - 3) = 0;
      *(&v139 - 16) = 2;
      aBlock[0] = v7;
      sub_100797A04();
    }

    v112 = v153;
    v120 = swift_getKeyPath();
    __chkstk_darwin(v120);
    *(&v139 - 3) = 0;
    *(&v139 - 2) = 0;
    *(&v139 - 4) = v7;
    *(&v139 - 8) = -64;
    aBlock[0] = v7;
    sub_100797A04();
    v121 = v157;
    goto LABEL_123;
  }

  swift_beginAccess();
  v91 = v151;
  if (*(v7 + 320) == v28)
  {
    *(v7 + 320) = v28;

    v94 = sub_10079ACC4();
    v95 = sub_1007A29A4();

    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      *v96 = 134217984;
      swift_getKeyPath();
      aBlock[0] = v7;
      sub_100797A14();

      *(v96 + 4) = *(v7 + 320);
      _os_log_impl(&_mh_execute_header, v94, v95, "Scrubber position set to %f", v96, 0xCu);
    }
  }

  else
  {
    v104 = swift_getKeyPath();
    __chkstk_darwin(v104);
    *(&v139 - 2) = v7;
    *(&v139 - 1) = v28;
    aBlock[0] = v7;
    sub_100797A04();
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v105 = *(v7 + 56);
    v106 = swift_getObjectType();
    (*(v105 + 8))(v140, v106, v105, v28);
    swift_unknownObjectRelease();
  }

  sub_10034194C(v149, v90, v155, v28 - a5);
  swift_getKeyPath();
  aBlock[0] = v7;
  sub_100797A14();

  v107 = *(v7 + 216);
  v108 = swift_getKeyPath();
  __chkstk_darwin(v108);
  *(&v139 - 4) = v7;
  *(&v139 - 3) = v107;
  *(&v139 - 2) = v150;
  *(&v139 - 8) = -127;
  aBlock[0] = v7;
  sub_100797A04();
  v155 = 0;

  v109 = v157;
  v110 = v157 >> 62;
  if (!(v157 >> 62))
  {

    sub_10033BFCC(v111, 0);
    sub_1002B6C54(v109);
  }

  swift_getKeyPath();
  aBlock[0] = v7;
  sub_100797A14();

  if (*(v7 + 280) >= 2u)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      swift_getKeyPath();
      aBlock[0] = v7;
      sub_100797A14();

      v113 = *(v7 + 216);
      swift_getKeyPath();
      aBlock[0] = v7;
      v91 = v151;
      sub_100797A14();

      v114 = *(v7 + 256);
      v115 = v148;
      *v148 = v113;
      *(v115 + 8) = v150;
      *(v115 + 16) = v114;
      swift_storeEnumTagMultiPayload();
      sub_1007A1A94();
      v109 = v157;
      swift_unknownObjectRelease();
      sub_100343710(v115);
    }

    if (!v110)
    {
      swift_getKeyPath();
      aBlock[0] = v7;

      v116 = v109;
      sub_100797A14();

      v117 = v150;
      if (*(v7 + 216) != v150)
      {
        *&v157 = *(v7 + 192);
        v132 = swift_allocObject();
        swift_weakInit();
        v133 = swift_allocObject();
        *(v133 + 16) = v132;
        *(v133 + 24) = v109;
        v156 = v132;
        *(v133 + 32) = v117;
        *(v133 + 40) = 1;
        aBlock[4] = sub_10034376C;
        aBlock[5] = v133;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1003323D0;
        aBlock[3] = &unk_100A16478;
        v134 = _Block_copy(aBlock);
        sub_1002B6C38(v116);

        v135 = v141;
        sub_1007A1C74();
        v160 = _swiftEmptyArrayStorage;
        sub_100342F78(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags);
        sub_1001F1160(&unk_100AD7CA0);
        v91 = v151;
        sub_100005920(&qword_100ADA680, &unk_100AD7CA0);
        v136 = v143;
        v137 = v146;
        sub_1007A3594();
        sub_1007A2D94();
        _Block_release(v134);
        sub_1002B6C54(v116);
        (*(v145 + 8))(v136, v137);
        (*(v142 + 8))(v135, v144);

        v112 = v153;
        v109 = v116;
        goto LABEL_120;
      }

      v118 = swift_getKeyPath();
      __chkstk_darwin(v118);
      *(&v139 - 3) = 0;
      *(&v139 - 2) = 0;
      *(&v139 - 4) = v7;
      *(&v139 - 8) = -64;
      aBlock[0] = v7;
      v119 = v155;
      sub_100797A04();
      v155 = v119;

      swift_getKeyPath();
      aBlock[0] = v7;
      sub_100797A14();

      if (*(v7 + 328) != 0x8000000000000000)
      {
        sub_10033A0A4(0x8000000000000008);
      }

      v109 = v157;
      sub_1002B6C54(v157);
      goto LABEL_95;
    }

    v122 = sub_10079ACC4();
    v123 = sub_1007A29B4();
    if (os_log_type_enabled(v122, v123))
    {
      v124 = swift_slowAlloc();
      *v124 = 0;
      _os_log_impl(&_mh_execute_header, v122, v123, "We must have the chapter scrubbing state here", v124, 2u);
    }

    v112 = v153;
LABEL_119:
    v109 = v157;
    goto LABEL_120;
  }

LABEL_95:
  v112 = v153;
LABEL_120:
  sub_1002B6C38(v109);
  sub_10033A0A4(v109);
  if (*(v7 + 312) == v29)
  {
    sub_1002B6C54(v109);
    result = sub_100342F4C(v91, v112);
    *(v7 + 312) = v29;
    return result;
  }

  v131 = swift_getKeyPath();
  __chkstk_darwin(v131);
  *(&v139 - 2) = v7;
  *(&v139 - 1) = v29;
  v160 = v7;
  sub_100797A04();
  v121 = v109;
LABEL_123:
  sub_1002B6C54(v121);
  sub_100342F4C(v91, v112);
}

Swift::Int sub_100341270(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = a1;
  v11 = a2;
  if (a2 == -1)
  {
    swift_getKeyPath();
    v42 = v4;
    sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
    sub_100797A14();

    v10 = *(v4 + 272);
    v11 = *(v4 + 280);
    sub_100337314(v10, v11);
    if (a4)
    {
      goto LABEL_3;
    }
  }

  else if (a4)
  {
LABEL_3:
    swift_getKeyPath();
    v42 = v4;
    sub_100343BC0(a1, a2);
    sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
    sub_100797A14();

    swift_beginAccess();
    v12 = *(v4 + 320);
    goto LABEL_6;
  }

  v12 = *&a3;
  sub_100343BC0(a1, a2);
LABEL_6:
  if (v11)
  {
    if (v11 != 1)
    {
      if (qword_100AD1440 != -1)
      {
        swift_once();
      }

      v13 = sub_10079ACE4();
      sub_100008B98(v13, qword_100ADC838);
      v14 = sub_10079ACC4();
      v15 = sub_1007A29B4();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v14, v15, "We should not be in idle state while scrubbing. Treating as Chapter scrub", v16, 2u);
      }
    }

    v17 = REActionMenuState.page(at:)(v12);
    if (qword_100AD1440 != -1)
    {
      swift_once();
    }

    v18 = sub_10079ACE4();
    sub_100008B98(v18, qword_100ADC838);
    swift_retain_n();
    v19 = sub_10079ACC4();
    v20 = sub_1007A29A4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v40[0] = v22;
      *v21 = 136315650;
      sub_1001F1160(&unk_100AD5090);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_10080B690;
      *(v23 + 56) = &type metadata for Double;
      *(v23 + 64) = &protocol witness table for Double;
      *(v23 + 32) = v12;
      v24 = sub_1007A2284();
      v26 = sub_1000070F4(v24, v25, v40);

      *(v21 + 4) = v26;
      *(v21 + 12) = 2048;
      *(v21 + 14) = v17;
      *(v21 + 22) = 2048;
      swift_getKeyPath();
      v41 = v5;
      sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
      sub_100797A14();

      v27 = *(v5 + 256);

      *(v21 + 24) = v27;

      _os_log_impl(&_mh_execute_header, v19, v20, "chapter scrub position %s produces page %ld (pageCount %ld)", v21, 0x20u);
      sub_1000074E0(v22);
    }

    else
    {
    }

    sub_100342F4C(v10, v11);
  }

  else
  {
    v28 = *(v4 + 144);
    v17 = sub_1004C1AC8();
    if (qword_100AD1440 != -1)
    {
      swift_once();
    }

    v29 = sub_10079ACE4();
    sub_100008B98(v29, qword_100ADC838);

    v30 = sub_10079ACC4();
    v31 = sub_1007A29A4();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v32 = 136315906;
      sub_1001F1160(&unk_100AD5090);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_10080B690;
      *(v33 + 56) = &type metadata for Double;
      *(v33 + 64) = &protocol witness table for Double;
      *(v33 + 32) = v12;
      v34 = sub_1007A2284();
      v36 = sub_1000070F4(v34, v35, &v41);

      *(v32 + 4) = v36;
      *(v32 + 12) = 2048;
      *(v32 + 14) = v17;
      *(v32 + 22) = 2080;
      v37 = *(v28 + OBJC_IVAR____TtC5Books24ScrubberMarkerController_markerPageRange);
      v40[2] = *(v28 + OBJC_IVAR____TtC5Books24ScrubberMarkerController_markerPageRange + 8);
      v40[3] = v37;
      sub_1007A3894();
      v43._countAndFlagsBits = 3026478;
      v43._object = 0xE300000000000000;
      sub_1007A23D4(v43);
      sub_1007A3894();
      v38 = sub_1000070F4(0, 0xE000000000000000, &v41);

      *(v32 + 24) = v38;
      *(v32 + 32) = 2048;
      *(v32 + 34) = v10;
      _os_log_impl(&_mh_execute_header, v30, v31, "page scrub position %s produces page %ld (in range %s starting page %ld", v32, 0x2Au);
      swift_arrayDestroy();
    }
  }

  return v17;
}

void sub_10034194C(uint64_t a1, char a2, char a3, double a4)
{
  v5 = v4;
  v7 = *(v4 + 304);
  if (!a2)
  {
    if (v7 == a4)
    {
      *(v4 + 304) = a4;
      if (a3)
      {
        goto LABEL_7;
      }
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
      sub_100797A04();

      if (a3)
      {
LABEL_7:
        if (!*(v4 + 280) && *(v4 + 272) == a1)
        {
          v8 = a1;
LABEL_23:
          v17 = 0;
LABEL_30:
          sub_100343518(v8, v17);
          goto LABEL_31;
        }

        v9 = swift_getKeyPath();
        __chkstk_darwin(v9);
        sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
        sub_100797A04();
        goto LABEL_25;
      }
    }

    swift_getKeyPath();
    sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
    sub_100797A14();

    v14 = *(v4 + 272);
    v15 = *(v4 + 280);
    swift_getKeyPath();
    sub_100337314(v14, v15);
    sub_100797A14();

    swift_beginAccess();
    if (v15)
    {
      v16 = *(v4 + 216);
      sub_100342F4C(v14, v15);
      v14 = v16;
    }

    if (!*(v5 + 280) && *(v5 + 272) == v14)
    {
      v8 = v14;
      goto LABEL_23;
    }

    v18 = swift_getKeyPath();
    __chkstk_darwin(v18);
    v32 = v5;
    sub_100797A04();
LABEL_25:

    goto LABEL_31;
  }

  if (a2 != 1)
  {
    if (v7 == 0.0)
    {
      *(v4 + 304) = 0;
    }

    else
    {
      v19 = swift_getKeyPath();
      __chkstk_darwin(v19);
      sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
      sub_100797A04();
    }

    if (*(v4 + 280) < 2u)
    {
      v20 = swift_getKeyPath();
      __chkstk_darwin(v20);
      sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
      sub_100797A04();

      goto LABEL_31;
    }

    v8 = 0;
    v17 = 2;
    goto LABEL_30;
  }

  if (v7 == a4)
  {
    *(v4 + 304) = a4;
  }

  else
  {
    v10 = swift_getKeyPath();
    __chkstk_darwin(v10);
    sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
    sub_100797A04();
  }

  if (*(v4 + 280) == 1)
  {
    sub_100337314(a1, 1);
    sub_100343518(a1, 1);
    sub_100342F4C(a1, 1);
  }

  else
  {
    v11 = swift_getKeyPath();
    __chkstk_darwin(v11);
    sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);

    sub_100797A04();
    sub_100342F4C(a1, 1);
  }

LABEL_31:
  if (qword_100AD1440 != -1)
  {
    swift_once();
  }

  v21 = sub_10079ACE4();
  sub_100008B98(v21, qword_100ADC838);

  v22 = sub_10079ACC4();
  v23 = sub_1007A29A4();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v32 = v25;
    *v24 = 136315138;
    swift_getKeyPath();
    sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
    sub_100797A14();

    v26 = *(v5 + 272);
    v27 = *(v5 + 280);
    sub_100337314(v26, v27);
    v28 = ScrubberState.description.getter(v26, v27);
    v30 = v29;
    sub_100342F4C(v26, v27);
    v31 = sub_1000070F4(v28, v30, &v32);

    *(v24 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v22, v23, "updated scrubberState is %s", v24, 0xCu);
    sub_1000074E0(v25);
  }
}

Swift::Double __swiftcall REActionMenuState.scrubberStartingPosition()()
{
  swift_getKeyPath();
  sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
  sub_100797A14();

  swift_beginAccess();
  v1 = *(v0 + 216);
  swift_getKeyPath();
  sub_100797A14();

  v2 = *(v0 + 256);
  result = 0.0;
  if (v2 >= 2 && v1 >= 1 && v2 >= v1)
  {
    return (v1 - 1) / (v2 - 1);
  }

  return result;
}

uint64_t REActionMenuState.setupMonitoring(safeAreaInsetsPublisher:annotationProvider:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  swift_weakInit();
  sub_1001F1160(&qword_100ADC880);
  sub_100005920(&qword_100ADC888, &qword_100ADC880);
  sub_10079BB04();

  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  swift_getObjectType();
  sub_1003430E4(a2, v2);
  return sub_10034249C();
}

uint64_t sub_10034249C()
{
  v1 = sub_1001F1160(&qword_100AD7EB0);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  v12 = sub_1001F1160(&qword_100ADD120);
  v4 = *(v12 - 8);
  __chkstk_darwin(v12);
  v6 = &v11 - v5;
  v13 = *(v0 + 288);
  sub_1001F1160(&unk_100AD1E40);
  sub_100005920(&qword_100AF2870, &unk_100AD1E40);
  v13 = sub_10079BA14();
  sub_10000A7C4(0, &qword_100AD1E10);
  v7 = sub_1007A2D74();
  v14 = v7;
  v8 = sub_1007A2D24();
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  sub_1001F1160(&unk_100AF27D0);
  sub_100005920(&qword_100AEA160, &unk_100AF27D0);
  sub_100017E1C();
  sub_10079BAB4();
  sub_100007840(v3, &qword_100AD7EB0);

  swift_allocObject();
  swift_weakInit();
  sub_100005920(&unk_100AF27E0, &qword_100ADD120);
  v9 = v12;
  sub_10079BB04();

  (*(v4 + 8))(v6, v9);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();
}

uint64_t sub_1003427EC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    swift_getKeyPath();
    swift_getKeyPath();
    return sub_10079B9B4();
  }

  return result;
}

uint64_t sub_100342890()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = sub_10079F284();
    result = sub_10079F294();
    if (__OFADD__(v2, result))
    {
      __break(1u);
    }

    else
    {
      if (*(v1 + 136) != v2 + result)
      {
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
        sub_100797A04();
      }
    }
  }

  return result;
}

uint64_t sub_1003429E8(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (v1 == *(result + 281))
    {
      *(result + 281) = v1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
      sub_100797A04();
    }

    v4 = sub_10033AE54();
    sub_100334B58(v4, v5);
  }

  return result;
}

uint64_t sub_100342B34@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_100342BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = *a1;
  v7 = *(a1 + 8);
  sub_100337314(*a1, v7);
  return a5(v6, v7);
}

uint64_t sub_100342C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a4;
  v20 = a2;
  v6 = type metadata accessor for BookActionMenuDataSource();
  v30[3] = v6;
  v30[4] = &off_100A19810;
  v30[0] = a1;
  type metadata accessor for ChapterScrubbingState();
  v7 = swift_allocObject();
  v8 = sub_10022569C(v30, v6);
  __chkstk_darwin(v8);
  v10 = (&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10);
  v12 = *v10;
  v29[3] = v6;
  v29[4] = &off_100A19810;
  v29[0] = v12;
  v13 = OBJC_IVAR____TtC5Books21ChapterScrubbingState__pageIndeces;
  v27[0] = _swiftEmptyArrayStorage;
  sub_1001F1160(&unk_100AF23A0);
  sub_10079B964();
  v14 = OBJC_IVAR____TtC5Books21ChapterScrubbingState_pageImageLoaders;
  *(v7 + v14) = sub_1001ED82C(_swiftEmptyArrayStorage);
  swift_beginAccess();

  v15 = sub_1001F1160(&qword_100ADD148);
  (*(*(v15 - 8) + 8))(v7 + v13, v15);
  v28 = a3;
  sub_10079B964();
  swift_endAccess();
  v16 = sub_1001ED82C(_swiftEmptyArrayStorage);
  v17 = *sub_10000E3E8(v29, v6);
  v27[3] = v6;
  v27[4] = &off_100A19810;
  v27[0] = v17;
  v28 = v16;
  swift_bridgeObjectRetain_n();

  v26 = sub_100408F6C(v16);
  v23 = &v28;
  v24 = &v26;
  v25 = v27;
  sub_1006D1368(sub_100343E10, v22, a3);

  sub_100332178(v26);

  v18 = v28;
  sub_1000074E0(v27);

  sub_1000074E0(v29);
  swift_beginAccess();
  *(v7 + v14) = v18;

  *(v7 + OBJC_IVAR____TtC5Books21ChapterScrubbingState_currentContentSnapshotView) = v21;
  sub_1000074E0(v30);
  return v7;
}

uint64_t sub_100342F4C(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
  }

  return result;
}

uint64_t sub_100342F78(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_100342FD8()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 304) = result;
  return result;
}

uint64_t sub_100342FE8(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!(v2 >> 62))
  {
    if (!(v3 >> 62))
    {
      return _s5Books21ChapterScrubbingStateC2eeoiySbAC_ACtFZ_0(v2, v3) & 1;
    }

    return 0;
  }

  if (v2 >> 62 == 1)
  {
    if (v3 >> 62 == 1)
    {
      v2 &= 0x3FFFFFFFFFFFFFFFuLL;
      v3 &= 0x3FFFFFFFFFFFFFFFuLL;
      return _s5Books21ChapterScrubbingStateC2eeoiySbAC_ACtFZ_0(v2, v3) & 1;
    }

    return 0;
  }

  v5 = __ROR8__(v2 ^ 0x8000000000000000, 3);
  if (v5 <= 1)
  {
    if (!v5)
    {
      return v3 == 0x8000000000000000;
    }

    if (v3 == 0x8000000000000008)
    {
      return 1;
    }
  }

  else
  {
    if (v5 == 2)
    {
      return v3 == 0x8000000000000010;
    }

    if (v5 == 3)
    {
      return v3 == 0x8000000000000018;
    }

    if (v3 == 0x8000000000000020)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1003430E4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1001F1160(&qword_100AD7EB0);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  v6 = sub_1001F1160(&qword_100ADD128);
  v18 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v16 - v7;
  sub_1007A0894();
  v9 = sub_10079F284();
  result = sub_10079F294();
  v11 = v9 + result;
  if (__OFADD__(v9, result))
  {
    __break(1u);
  }

  else
  {
    v17 = v6;
    if (*(a2 + 136) == v11)
    {

      *(a2 + 136) = v11;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      v16 = &v16;
      __chkstk_darwin(KeyPath);
      *(&v16 - 2) = a2;
      *(&v16 - 1) = v11;
      v19 = a2;
      sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);
      sub_100797A04();
    }

    v19 = sub_1007A08D4();
    sub_10000A7C4(0, &qword_100AD1E10);
    v13 = sub_1007A2D74();
    v20 = v13;
    v14 = sub_1007A2D24();
    (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
    sub_1001F1160(&qword_100ADD130);
    sub_100005920(&qword_100ADD138, &qword_100ADD130);
    sub_100017E1C();
    sub_10079BAB4();
    sub_100007840(v5, &qword_100AD7EB0);

    swift_allocObject();
    swift_weakInit();
    sub_100005920(&qword_100ADD140, &qword_100ADD128);
    v15 = v17;
    sub_10079BB04();

    (*(v18 + 8))(v8, v15);
    swift_beginAccess();
    sub_10079B854();
    swift_endAccess();
  }

  return result;
}

uint64_t sub_100343518(uint64_t a1, char a2)
{
  v3 = v2;
  v4 = *(v2 + 272);
  *(v2 + 272) = a1;
  v5 = *(v2 + 280);
  *(v3 + 280) = a2;
  sub_100337314(a1, a2);
  sub_100342F4C(v4, v5);
  v6 = *(v3 + 128);
  swift_getKeyPath();
  sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState);

  sub_100797A14();

  v7 = *(v3 + 272);
  v8 = *(v3 + 280);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100337314(v7, v8);

  sub_100337314(v7, v8);
  sub_10079B9B4();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong() && (v9 = *(v6 + 32), v10 = swift_getObjectType(), v11 = (*(v9 + 24))(v10, v9), v13 = v12, swift_unknownObjectRelease(), v11))
  {
    ObjectType = swift_getObjectType();
    (*(v13 + 8))(ObjectType, v13);
    sub_100342F4C(v7, v8);

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_100342F4C(v7, v8);
  }
}

double sub_100343700()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 312) = result;
  return result;
}

uint64_t sub_100343710(uint64_t a1)
{
  v2 = sub_10079FFF4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100343784()
{
  result = qword_100AEB810;
  if (!qword_100AEB810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEB810);
  }

  return result;
}

void sub_100343808()
{
  sub_100343898();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100343898()
{
  if (!qword_100ADC8C8)
  {
    type metadata accessor for UIEdgeInsets(255);
    v0 = sub_10079B9D4();
    if (!v1)
    {
      atomic_store(v0, &qword_100ADC8C8);
    }
  }
}

uint64_t sub_10034391C()
{
  result = sub_100797A54();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_100343A6C()
{

  return swift_deallocObject();
}

uint64_t sub_100343BC0(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
    return sub_100337314(a1, a2);
  }

  return a1;
}

uint64_t sub_100343C10()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 352) = v2;
  return result;
}

uint64_t sub_100343C64()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_100337314(v1, v2);
  sub_100343518(v1, v2);
  return sub_100342F4C(v1, v2);
}

uint64_t sub_100343CEC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void sub_100343CF8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  v3 = *(v1 + 232);
  v4 = *(v1 + 240);
  *(v1 + 232) = *(v0 + 24);
  v5 = *(v1 + 248);
  *(v1 + 248) = v2;
  sub_100336064(v3, v4, v5);
}

uint64_t sub_100343D40()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_beginAccess();
  *(v2 + 216) = v1;
  return sub_100334D1C(v3);
}

void *PalettePresentationInteraction.view.getter()
{
  v1 = OBJC_IVAR___BKPalettePresentationInteraction_view;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void PalettePresentationInteraction.view.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___BKPalettePresentationInteraction_view;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1003440FC(int a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = OBJC_IVAR___BKPalettePresentationInteraction_animationController;
    if (!*(Strong + OBJC_IVAR___BKPalettePresentationInteraction_animationController) || (type metadata accessor for AudiobookPaletteStyleAnimationController(), (v5 = swift_dynamicCastClass()) == 0))
    {

      return;
    }

    v6 = v5;
    swift_unknownObjectRetain();
    v7 = [v6 isReversed];
    if ([v6 isReversed])
    {
      if (!v7 || (a1 & 1) != 0)
      {
        goto LABEL_11;
      }
    }

    else if (((v7 | a1) & 1) == 0)
    {
LABEL_11:
      *&v3[v4] = 0;
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      return;
    }

    swift_unknownObjectWeakAssign();
    goto LABEL_11;
  }
}

uint64_t sub_100344208(uint64_t a1)
{
  *(v1 + OBJC_IVAR___BKPalettePresentationInteraction_animationController) = a1;
  swift_unknownObjectRetain();
  result = swift_unknownObjectRelease();
  if (a1)
  {
    type metadata accessor for AudiobookPaletteStyleAnimationController();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      v5 = v4;
      v6 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v7 = swift_allocObject();
      *(v7 + 16) = sub_100345788;
      *(v7 + 24) = v6;
      v8 = OBJC_IVAR____TtC5Books40AudiobookPaletteStyleAnimationController_completionBlocks;
      swift_beginAccess();
      v9 = *(v5 + v8);
      swift_retain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v5 + v8) = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v9 = sub_10066AAA8(0, v9[2] + 1, 1, v9);
        *(v5 + v8) = v9;
      }

      v12 = v9[2];
      v11 = v9[3];
      if (v12 >= v11 >> 1)
      {
        v9 = sub_10066AAA8((v11 > 1), v12 + 1, 1, v9);
      }

      v9[2] = v12 + 1;
      v13 = &v9[2 * v12];
      v13[4] = sub_100345790;
      v13[5] = v7;
      *(v5 + v8) = v9;
      swift_endAccess();
      swift_unknownObjectRelease();
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_1003443D4(void (*a1)(id), uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v5 = [Strong transitionCoordinator];
    if (v5)
    {
      v6 = v5;
      v7 = swift_allocObject();
      v7[2] = a1;
      v7[3] = a2;
      v7[4] = v11;
      aBlock[4] = sub_100345708;
      aBlock[5] = v7;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100569BDC;
      aBlock[3] = &unk_100A16808;
      v8 = _Block_copy(aBlock);
      sub_1000260E8(a1);
      v9 = v11;

      [v6 animateAlongsideTransition:0 completion:v8];

      _Block_release(v8);
      swift_unknownObjectRelease();
    }

    else
    {
      v10 = v11;
      if (a1)
      {
        a1(v11);
        v10 = v11;
      }
    }
  }

  else
  {

    sub_1003446C0(a1, a2);
  }
}

void sub_1003446C0(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v21 = [Strong presentedViewControllerFor:v2];
  swift_unknownObjectRelease();
  if (!v21)
  {
    return;
  }

  v6 = swift_unknownObjectWeakLoadStrong();
  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = [v6 presentingViewControllerFor:v2];
  swift_unknownObjectRelease();
  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = [v7 presentedViewController];
  if (v8)
  {
    v9 = v8;
    sub_10000A7C4(0, &qword_100AD7CB0);
    v10 = v21;
    v11 = sub_1007A3184();

    if (v11)
    {
      sub_1007A29D4();
      sub_10000A7C4(0, &qword_100AD20A0);
      v21 = sub_1007A33A4();
      sub_10079AB44();

LABEL_8:

      return;
    }
  }

  [v21 setTransitioningDelegate:{v2, v21}];
  [v22 setModalPresentationStyle:2];
  v12 = [v22 presentationController];
  if (v12)
  {
    v13 = v12;
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (v14)
    {
      v15 = v14;
      [v14 _setWantsFullScreen:1];
      [v15 _setAllowsInteractiveDismissWhenFullScreen:1];
      [v15 _setShouldDismissWhenTappedOutside:1];
      [v15 _setCornerRadiusForPresentationAndDismissal:0.0];
      v16 = OBJC_IVAR___BKPalettePresentationInteraction_view;
      swift_beginAccess();
      v17 = [*(v2 + v16) superview];
      [v15 setSourceView:v17];
    }

    else
    {
    }
  }

  v18 = swift_allocObject();
  v18[2] = a1;
  v18[3] = a2;
  v18[4] = v22;
  aBlock[4] = sub_100345708;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003323D0;
  aBlock[3] = &unk_100A167B8;
  v19 = _Block_copy(aBlock);
  v20 = v22;
  sub_1000260E8(a1);

  [v7 presentViewController:v20 animated:1 completion:v19];

  _Block_release(v19);
  swift_unknownObjectWeakAssign();
}

id PalettePresentationInteraction.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PalettePresentationInteraction();
  return objc_msgSendSuper2(&v2, "dealloc");
}

Swift::Void __swiftcall PalettePresentationInteraction.willMove(to:)(UIView_optional to)
{
  v2 = v1;
  isa = to.value.super.super.isa;
  v4 = OBJC_IVAR___BKPalettePresentationInteraction_view;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (v5)
  {
    if (!isa || (sub_10000A7C4(0, &qword_100AD7620), v6 = v5, v7 = isa, v8 = sub_1007A3184(), v6, v7, (v8 & 1) == 0) && (v5 = *(v2 + v4)) != 0)
    {
      [v5 removeGestureRecognizer:*(v2 + OBJC_IVAR___BKPalettePresentationInteraction_tapGestureRecognizer)];
      v9 = *(v2 + v4);
      if (v9)
      {
        [v9 removeGestureRecognizer:*(v2 + OBJC_IVAR___BKPalettePresentationInteraction_panGestureRecognizer)];
      }
    }
  }
}

Swift::Void __swiftcall PalettePresentationInteraction.didMove(to:)(UIView_optional to)
{
  v2 = v1;
  isa = to.value.super.super.isa;
  v4 = OBJC_IVAR___BKPalettePresentationInteraction_view;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (!v5)
  {
    if (!isa)
    {
      return;
    }

    v9 = 0;
LABEL_7:
    *(v2 + v4) = isa;
    v10 = isa;

    [(objc_class *)v10 addGestureRecognizer:*(v2 + OBJC_IVAR___BKPalettePresentationInteraction_tapGestureRecognizer)];
    v11 = *(v2 + v4);
    if (!v11)
    {
      return;
    }

    goto LABEL_8;
  }

  if (isa)
  {
    sub_10000A7C4(0, &qword_100AD7620);
    v6 = v5;
    v7 = isa;
    v8 = sub_1007A3184();

    if (v8)
    {
      return;
    }

    v9 = *(v2 + v4);
    goto LABEL_7;
  }

  *(v1 + v4) = 0;
  v12 = 0;

  v11 = *(v1 + v4);
  if (!v11)
  {
    return;
  }

LABEL_8:
  [v11 addGestureRecognizer:*(v2 + OBJC_IVAR___BKPalettePresentationInteraction_panGestureRecognizer)];
}

Swift::Bool __swiftcall PalettePresentationInteraction.gestureRecognizerShouldBegin(_:)(UIGestureRecognizer a1)
{
  v2 = v1;
  sub_10000A7C4(0, &qword_100ADAF70);
  v3 = OBJC_IVAR___BKPalettePresentationInteraction_panGestureRecognizer;
  v4 = *(v1 + OBJC_IVAR___BKPalettePresentationInteraction_panGestureRecognizer);
  v5 = sub_1007A3184();

  v6 = *(v2 + OBJC_IVAR___BKPalettePresentationInteraction_animationController);
  result = (v5 ^ 1) & (v6 == 0);
  if (((v5 ^ 1) & 1) == 0 && !v6)
  {
    v8 = *(v2 + v3);
    v9 = [v8 view];
    [v8 translationInView:v9];
    v11 = v10;
    v13 = v12;

    v14 = fabs(v13);
    return v14 > 2.22044605e-16 && fabs(v11 * 0.5) < v14 && v13 < 2.22044605e-16;
  }

  return result;
}

UIPresentationController_optional __swiftcall PalettePresentationInteraction.presentationController(forPresented:presenting:source:)(UIViewController forPresented, UIViewController_optional presenting, UIViewController source)
{
  isa = presenting.value.super.super.isa;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v6 = v4;
    v7 = type metadata accessor for AssetSheetPresentationController();
    v8.receiver = objc_allocWithZone(v7);
    v8.super_class = v7;
    v4 = objc_msgSendSuper2(&v8, "initWithPresentedViewController:presentingViewController:", v6, isa);
  }

  result.value.super.isa = v4;
  result.is_nil = v5;
  return result;
}

id PalettePresentationInteraction.animationController(forDismissed:)(void *a1)
{
  v2 = [a1 presentingViewController];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4 && (v5 = [v4 finishedConsuming], sub_1003453A0(v3, v5, v17), (v18 & 1) == 0))
  {
    v7 = *v17;
    v8 = *&v17[1];
    v9 = *&v17[2];
    v10 = *&v17[3];
    v11 = [v3 traitCollection];
    if (((_UISolariumEnabled() | v5) & 1) != 0 || v11 && [v11 userInterfaceIdiom] == 1)
    {
      v12 = type metadata accessor for AudiobookPaletteStyleAnimationControllerPad();
    }

    else
    {
      v12 = type metadata accessor for AudiobookPaletteStyleAnimationControllerPhone();
    }

    v13 = objc_allocWithZone(v12);
    v14 = v1;
    v6 = sub_10025CE2C(v14);

    [v6 setIsReversed:1];
    [v6 setSourceFrame:{v7, v8, v9, v10}];
    v15 = v6;
    sub_100344208(v6);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_1003453A0(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v7 = OBJC_IVAR___BKPalettePresentationInteraction_view;
  swift_beginAccess();
  v8 = *(v3 + v7);
  if (!v8)
  {
    v23 = 0uLL;
    v24 = 0uLL;
LABEL_11:
    *a3 = v23;
    *(a3 + 16) = v24;
    *(a3 + 32) = v8 == 0;
    return;
  }

  v9 = v8;
  if ((_UISolariumEnabled() & 1) != 0 || (a2 & 1) != 0 || (v10 = [a1 traitCollection], v11 = objc_msgSend(v10, "userInterfaceIdiom"), v10, v11 == 1))
  {
    v12 = [a1 view];
    if (!v12)
    {
      goto LABEL_13;
    }

    v13 = v12;
    [v12 bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    v44.origin.x = v15;
    v44.origin.y = v17;
    v44.size.width = v19;
    v44.size.height = v21;
    Height = CGRectGetHeight(v44);
    v45.origin.x = 0.0;
    v45.origin.y = 0.0;
    v45.size.width = 0.0;
    v45.size.height = 0.0;
    v46 = CGRectOffset(v45, 0.0, Height);
    y = v46.origin.y;
    x = v46.origin.x;
  }

  else
  {
    [v9 frame];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v33 = [a1 view];
    [v9 convertRect:v33 toView:{v26, v28, v30, v32}];
    y = v35;
    x = v34;
  }

  v36 = [a1 view];
  if (v36)
  {
    v37 = v36;
    [v36 frame];
    v40 = v38;
    v41 = v39;

    *&v23 = x;
    *(&v23 + 1) = y;
    *&v24 = v40;
    *(&v24 + 1) = v41;
    goto LABEL_11;
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

uint64_t _s5Books30PalettePresentationInteractionC17gestureRecognizer_33shouldRecognizeSimultaneouslyWithSbSo09UIGestureF0C_AGtF_0()
{
  v1 = *(v0 + OBJC_IVAR___BKPalettePresentationInteraction_panGestureRecognizer);
  sub_10000A7C4(0, &unk_100AEA0E0);
  v2 = v1;
  v3 = sub_1007A3184();

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = *(v0 + OBJC_IVAR___BKPalettePresentationInteraction_tapGestureRecognizer);
    v6 = sub_1007A3184();

    v4 = v6 ^ 1;
  }

  return v4 & 1;
}

id sub_10034565C(void *a1)
{
  v2 = [a1 traitCollection];
  if (_UISolariumEnabled() || v2 && [v2 userInterfaceIdiom] == 1)
  {
    v3 = type metadata accessor for AudiobookPaletteStyleAnimationControllerPad();
  }

  else
  {
    v3 = type metadata accessor for AudiobookPaletteStyleAnimationControllerPhone();
  }

  v4 = objc_allocWithZone(v3);
  v5 = v1;
  v6 = sub_10025CE2C(v5);

  v7 = v6;
  sub_100344208(v6);
  return v6;
}

uint64_t sub_100345708()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(*(v0 + 32));
  }

  return result;
}

uint64_t sub_100345740()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1003457A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1000077D8(a3, v25 - v10, &qword_100AD67D0);
  v12 = sub_1007A2744();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100007840(v11, &qword_100AD67D0);
  }

  else
  {
    sub_1007A2734();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1007A2694();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1007A2304() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_100007840(a3, &qword_100AD67D0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100007840(a3, &qword_100AD67D0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100345AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1000077D8(a3, v25 - v10, &qword_100AD67D0);
  v12 = sub_1007A2744();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100007840(v11, &qword_100AD67D0);
  }

  else
  {
    sub_1007A2734();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1007A2694();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1007A2304() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_1001F1160(&qword_100ADD528);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_100007840(a3, &qword_100AD67D0);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100007840(a3, &qword_100AD67D0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_1001F1160(&qword_100ADD528);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100345DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1000077D8(a3, v25 - v10, &qword_100AD67D0);
  v12 = sub_1007A2744();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100007840(v11, &qword_100AD67D0);
  }

  else
  {
    sub_1007A2734();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1007A2694();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1007A2304() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_1001F1160(&unk_100ADD530);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_100007840(a3, &qword_100AD67D0);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100007840(a3, &qword_100AD67D0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_1001F1160(&unk_100ADD530);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void sub_1003460C8(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    if (a2)
    {
      v19 = *(v2 + OBJC_IVAR___BKEngagementManager_eventController);
      sub_1001F1160(&unk_100ADE550);
      inited = swift_initStackObject();
      v21 = inited;
      *(inited + 16) = xmmword_10080EFF0;
      *(inited + 32) = 0x746E6F436B6F6F62;
      *(inited + 40) = 0xEF65707954746E65;
      *(inited + 48) = a1;
      *(inited + 72) = &type metadata for Int16;
      *(inited + 80) = 0x746E657665;
      v22 = 6581861;
      if ((a1 & 0x10000) != 0)
      {
        v22 = 0x7472617473;
      }

      *(inited + 120) = &type metadata for String;
      v23 = 0xE300000000000000;
      if ((a1 & 0x10000) != 0)
      {
        v23 = 0xE500000000000000;
      }

      *(inited + 88) = 0xE500000000000000;
      *(inited + 96) = v22;
      *(inited + 104) = v23;
      v6 = v19;
      sub_100019158(v21);
      swift_setDeallocating();
      sub_1001F1160(&unk_100ADD560);
      swift_arrayDestroy();
    }

    else
    {
      v7 = *(v2 + OBJC_IVAR___BKEngagementManager_eventController);
      sub_1001F1160(&unk_100ADE550);
      v8 = swift_initStackObject();
      v9 = v8;
      *(v8 + 32) = 0x6E6F69746341;
      v10 = v8 + 32;
      *(v8 + 16) = xmmword_10080B690;
      v11 = 1852141679;
      if ((a1 & 1) == 0)
      {
        v11 = 0x65736F6C63;
      }

      v12 = 0xE500000000000000;
      if (a1)
      {
        v12 = 0xE400000000000000;
      }

      *(v8 + 72) = &type metadata for String;
      *(v8 + 40) = 0xE600000000000000;
      *(v8 + 48) = v11;
      *(v8 + 56) = v12;
      v6 = v7;
      sub_100019158(v9);
      swift_setDeallocating();
      sub_100007840(v10, &unk_100ADD560);
    }

    goto LABEL_22;
  }

  if (a2 == 2)
  {
    v13 = *(v2 + OBJC_IVAR___BKEngagementManager_eventController);
    sub_1001F1160(&unk_100ADE550);
    v14 = swift_initStackObject();
    v15 = v14;
    *(v14 + 32) = 0x7463617265746E69;
    v16 = v14 + 32;
    *(v14 + 16) = xmmword_10080B690;
    v17 = 1970169197;
    if (a1)
    {
      v17 = 0x6154656C62756F64;
    }

    v18 = 0xE400000000000000;
    if (a1)
    {
      v18 = 0xE900000000000070;
    }

    *(v14 + 72) = &type metadata for String;
    *(v14 + 40) = 0xEB000000006E6F69;
    *(v14 + 48) = v17;
    *(v14 + 56) = v18;
    v6 = v13;
    sub_100019158(v15);
    swift_setDeallocating();
    sub_100007840(v16, &unk_100ADD560);
    goto LABEL_22;
  }

  if (a2 == 3)
  {
    v4 = *(v2 + OBJC_IVAR___BKEngagementManager_eventController);
    sub_1001F1160(&unk_100ADE550);
    v5 = swift_initStackObject();
    *(v5 + 16) = xmmword_10080B690;
    strcpy((v5 + 32), "numberOfPage");
    *(v5 + 72) = &type metadata for Int;
    *(v5 + 45) = 0;
    *(v5 + 46) = -5120;
    *(v5 + 48) = a1;
    v6 = v4;
    sub_100019158(v5);
    swift_setDeallocating();
    sub_100007840(v5 + 32, &unk_100ADD560);
LABEL_22:
    sub_10079E994();

    return;
  }

  v24 = *(v2 + OBJC_IVAR___BKEngagementManager_eventController);
  sub_10079E994();
}

id EngagementManager.metadata.getter()
{
  v1 = OBJC_IVAR___BKEngagementManager_metadata;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void EngagementManager.metadata.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___BKEngagementManager_metadata;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *EngagementManager.analyticsHelper.getter()
{
  v1 = OBJC_IVAR___BKEngagementManager_analyticsHelper;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void EngagementManager.analyticsHelper.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___BKEngagementManager_analyticsHelper;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

char *EngagementManager.init(configuration:configurationContainer:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_10079ACE4();
  __chkstk_darwin(v6);
  v2[OBJC_IVAR___BKEngagementManager_cloudKitSyncEnabled] = 0;
  v7 = OBJC_IVAR___BKEngagementManager_metadata;
  *&v3[v7] = [objc_allocWithZone(type metadata accessor for EngagementManagerMetadata()) init];
  *&v3[OBJC_IVAR___BKEngagementManager_analyticsHelper] = 0;
  *&v3[OBJC_IVAR___BKEngagementManager_updateMetadataGeneration] = 0;
  v8 = OBJC_IVAR___BKEngagementManager____lazy_storage___iso8601DateFormatStyle;
  v9 = sub_100796AD4();
  (*(*(v9 - 8) + 56))(&v3[v8], 1, 1, v9);
  *&v3[OBJC_IVAR___BKEngagementManager_eventController] = [objc_allocWithZone(sub_10079E9B4()) init];
  v10 = [a1 managerConfiguration];
  v11 = objc_allocWithZone(sub_100799A34());
  *&v3[OBJC_IVAR___BKEngagementManager_manager] = sub_1007998F4();
  *&v3[OBJC_IVAR___BKEngagementManager_remoteConfigurationContainer] = a2;
  v23.receiver = v3;
  v23.super_class = type metadata accessor for EngagementManager();
  v12 = a2;
  v13 = objc_msgSendSuper2(&v23, "init");
  v14 = *&v13[OBJC_IVAR___BKEngagementManager_eventController];
  v15 = v13;
  v16 = v14;
  sub_10079E9A4();

  v17 = [objc_allocWithZone(type metadata accessor for SessionDonor()) init];
  v18 = *&v15[OBJC_IVAR___BKEngagementManager_manager];
  v19 = v17;
  sub_100799A04();

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v21 = result;
    [result addObserver:v15];

    v22 = [objc_opt_self() defaultCenter];
    [v22 addObserver:v15 selector:"onDidReceiveAppDidBackground:" name:UIApplicationWillResignActiveNotification object:0];

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for EngagementManager()
{
  result = qword_100ADD310;
  if (!qword_100ADD310)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Void __swiftcall EngagementManager.setupSessionDonor()()
{
  v1 = v0;
  v2 = sub_10079ACE4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10079AC84();
  v6 = sub_10079ACC4();
  v7 = sub_1007A29D4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Setting up SessionDonor for engagement manager", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v9 = OBJC_IVAR___BKEngagementManager_manager;
  v10 = *(v1 + OBJC_IVAR___BKEngagementManager_manager);
  v11 = sub_1007999E4();

  if (v11)
  {
    type metadata accessor for SessionDonor();
    if (swift_dynamicCastClass())
    {
      v12 = *(v1 + v9);
      sub_1003741B4(v12);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

uint64_t EngagementManager.setup(personalizationEventDonor:)(void *a1)
{
  v2 = v1;
  v4 = sub_10079ACE4();
  __chkstk_darwin(v4);
  v5 = sub_1007A1C54();
  v42 = *(v5 - 8);
  v43 = v5;
  __chkstk_darwin(v5);
  v41 = &v35[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1007A1CA4();
  v39 = *(v7 - 8);
  v40 = v7;
  __chkstk_darwin(v7);
  v38 = &v35[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v37 = sub_1007A1CC4();
  v36 = *(v37 - 8);
  __chkstk_darwin(v37);
  v10 = &v35[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v35[-v12];
  v14 = *&v1[OBJC_IVAR___BKEngagementManager_manager];
  sub_100799A04();

  v15 = objc_allocWithZone(type metadata accessor for EngagementManagerAnalyticsHelper());
  v16 = v2;
  v17 = a1;
  v18 = sub_1004A6760(v16, v17);

  v19 = OBJC_IVAR___BKEngagementManager_analyticsHelper;
  swift_beginAccess();
  v20 = *&v16[v19];
  *&v16[v19] = v18;

  v21 = OBJC_IVAR___BKEngagementManager_remoteConfigurationContainer;
  v22 = *&v16[OBJC_IVAR___BKEngagementManager_remoteConfigurationContainer];
  sub_10034861C(v22, 0);

  v23 = [objc_opt_self() defaultCenter];
  v24 = sub_1007A2E44();
  [v23 addObserver:v16 selector:"onConfigurationChange:" name:v24 object:*&v16[v21]];

  sub_10000A7C4(0, &unk_100ADD210);
  v25 = [swift_getObjCClassFromMetadata() defaultCenter];
  [v25 addObserver:v16 selector:"onCloudUpdate:" name:BDSSecureEngagementManagerChanged object:0];

  sub_10000A7C4(0, &qword_100AD1E10);
  v26 = sub_1007A2D74();
  sub_1007A1CB4();
  sub_1007A1D24();
  v36 = *(v36 + 8);
  v27 = v10;
  v28 = v37;
  (v36)(v27, v37);
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_10035A430;
  aBlock[5] = v29;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003323D0;
  aBlock[3] = &unk_100A168A8;
  v30 = _Block_copy(aBlock);

  v31 = v38;
  sub_1007A1C74();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000228AC(&qword_100ADA670, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001F1160(&unk_100AD7CA0);
  sub_100234698();
  v32 = v41;
  v33 = v43;
  sub_1007A3594();
  sub_1007A2D04();
  _Block_release(v30);

  (*(v42 + 8))(v32, v33);
  (*(v39 + 8))(v31, v40);
  return (v36)(v13, v28);
}

Swift::Void __swiftcall EngagementManager.reportAppOpenEvent()()
{
  v1 = v0;
  v2 = sub_10079ACE4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10079AC84();
  v6 = sub_10079ACC4();
  v7 = sub_1007A29D4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Report appOpen event", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v9 = *(v1 + OBJC_IVAR___BKEngagementManager_eventController);
  sub_10079E994();

  v10 = *(v1 + OBJC_IVAR___BKEngagementManager_manager);
  sub_100799964();
}

uint64_t sub_100347ADC()
{
  v1 = v0;
  v2 = sub_10079ACE4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10079AC84();
  v6 = sub_10079ACC4();
  v7 = sub_1007A29D4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Syncing from CloudKit...", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v9 = *&v1[OBJC_IVAR___BKEngagementManager_manager];
  v13[1] = sub_10000A7C4(0, &qword_100ADD668);
  v10 = v9;
  sub_1001F1160(&unk_100ADD670);
  sub_1007A22E4();
  *(swift_allocObject() + 16) = v1;
  v11 = v1;
  sub_100799944();
}

uint64_t EngagementManager.syncToCloudKit(completion:)(void (*a1)(void, void), uint64_t a2)
{
  v3 = v2;
  v40 = a1;
  v41 = a2;
  ObjectType = swift_getObjectType();
  v4 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v4 - 8);
  v42 = &v34 - v5;
  v39 = sub_100796AD4();
  v37 = *(v39 - 8);
  v6 = *(v37 + 64);
  __chkstk_darwin(v39);
  __chkstk_darwin(v7);
  v9 = &v34 - v8;
  v10 = sub_10079ACE4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10079AC84();
  v14 = sub_10079ACC4();
  v15 = sub_1007A29D4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Updating CloudKit...", v16, 2u);
  }

  (*(v11 + 8))(v13, v10);
  v17 = OBJC_IVAR___BKEngagementManager_analyticsHelper;
  swift_beginAccess();
  v18 = *&v3[v17];
  if (v18)
  {
    v35 = v18;
    v36 = v9;
    sub_100349EB4(v9);
    v19 = sub_1007A2744();
    (*(*(v19 - 8) + 56))(v42, 1, 1, v19);
    v20 = v37;
    v21 = v39;
    (*(v37 + 16))(&v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9, v39);
    v22 = (*(v20 + 80) + 56) & ~*(v20 + 80);
    v23 = (v6 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
    v24 = swift_allocObject();
    *(v24 + 2) = 0;
    *(v24 + 3) = 0;
    v25 = v40;
    v26 = v41;
    *(v24 + 4) = v3;
    *(v24 + 5) = v25;
    *(v24 + 6) = v26;
    (*(v20 + 32))(&v24[v22], &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v21);
    v27 = v35;
    *&v24[v23] = v35;
    *&v24[(v23 + 15) & 0xFFFFFFFFFFFFFFF8] = ObjectType;
    v28 = v27;
    v29 = v3;

    sub_1003457A0(0, 0, v42, &unk_10081C828, v24);

    return (*(v20 + 8))(v36, v21);
  }

  else
  {
    v31 = sub_100799784();
    sub_1000228AC(&qword_100ADD220, 255, &type metadata accessor for PropertyError);
    v32 = swift_allocError();
    (*(*(v31 - 8) + 104))(v33, enum case for PropertyError.InvalidPropertyValue(_:), v31);
    v40(v32, 1);
  }
}

uint64_t EngagementManager.onCloudUpdate(_:)()
{
  if (*(v0 + OBJC_IVAR___BKEngagementManager_cloudKitSyncEnabled) == 1)
  {
    return sub_100347ADC();
  }

  return result;
}

uint64_t sub_100348448(uint64_t a1, char a2)
{
  v3 = sub_10079ACE4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v16 - v8;
  if (a2)
  {
    sub_10079AC84();
    v10 = sub_10079ACC4();
    v11 = sub_1007A29B4();
    if (!os_log_type_enabled(v10, v11))
    {
      v6 = v9;
      goto LABEL_8;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Error while updating local storage for engagement collector", v12, 2u);
    v6 = v9;
    goto LABEL_6;
  }

  sub_10079AC84();
  v10 = sub_10079ACC4();
  v13 = sub_1007A29A4();
  if (os_log_type_enabled(v10, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v10, v13, "Engagement Collector updated local storage successfully", v14, 2u);
LABEL_6:
  }

LABEL_8:

  return (*(v4 + 8))(v6, v3);
}

void sub_10034861C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (!a2)
  {
    sub_10079E764();
  }

  v4.super.isa = sub_1007A2024().super.isa;

  if ([(objc_class *)v4.super.isa valueForKeyPath:BRCBooksDefaultsKeyPersonalizationLocalSignalSyncEnabled])
  {
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13[0] = v11;
  v13[1] = v12;
  sub_1000077D8(v13, &v11, &unk_100AD5B40);
  if (!*(&v12 + 1))
  {
    sub_100007840(&v11, &unk_100AD5B40);
LABEL_13:
    if (*(v2 + OBJC_IVAR___BKEngagementManager_cloudKitSyncEnabled) == 1)
    {
      *(v2 + OBJC_IVAR___BKEngagementManager_cloudKitSyncEnabled) = 0;
    }

    goto LABEL_15;
  }

  sub_10000A7C4(0, &qword_100AD6750);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v5 = [v10 BOOLValue];

  v6 = OBJC_IVAR___BKEngagementManager_cloudKitSyncEnabled;
  if (v5 != *(v3 + OBJC_IVAR___BKEngagementManager_cloudKitSyncEnabled))
  {
    *(v3 + OBJC_IVAR___BKEngagementManager_cloudKitSyncEnabled) = v5;
    if (v5)
    {
      sub_100347ADC();
      if (*(v3 + v6) == 1)
      {
        v7 = [objc_allocWithZone(type metadata accessor for EngagementManagerMetadata()) init];
        v8 = OBJC_IVAR___BKEngagementManager_metadata;
        swift_beginAccess();
        v9 = *(v3 + v8);
        *(v3 + v8) = v7;

        sub_10034884C();
        sub_100007840(v13, &unk_100AD5B40);
        return;
      }
    }
  }

LABEL_15:
  sub_100007840(v13, &unk_100AD5B40);
}

void sub_10034884C()
{
  v1 = v0;
  v2 = sub_1007A1C54();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1007A1CA4();
  v31 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1007A1CC4();
  __chkstk_darwin(v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v26 - v15;
  v17 = *(v1 + OBJC_IVAR___BKEngagementManager_updateMetadataGeneration);
  v18 = v17 + 1;
  if (__OFADD__(v17, 1))
  {
    __break(1u);
  }

  else
  {
    *(v1 + OBJC_IVAR___BKEngagementManager_updateMetadataGeneration) = v18;
    v26 = v8;
    v19 = v13;
    v29 = v13;
    v20 = v14;
    sub_10000A7C4(0, &qword_100AD1E10);
    v30 = v6;
    v27 = sub_1007A2D74();
    sub_1007A1CB4();
    sub_1007A1D24();
    v28 = *(v20 + 8);
    v28(v11, v19);
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v22 = swift_allocObject();
    *(v22 + 16) = v21;
    *(v22 + 24) = v18;
    aBlock[4] = sub_10035A230;
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1003323D0;
    aBlock[3] = &unk_100A16E70;
    v23 = _Block_copy(aBlock);

    v24 = v26;
    sub_1007A1C74();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1000228AC(&qword_100ADA670, 255, &type metadata accessor for DispatchWorkItemFlags);
    sub_1001F1160(&unk_100AD7CA0);
    sub_100234698();
    sub_1007A3594();
    v25 = v27;
    sub_1007A2D04();
    _Block_release(v23);

    (*(v3 + 8))(v5, v2);
    (*(v31 + 8))(v24, v30);
    v28(v16, v29);
  }
}

uint64_t sub_100348C40()
{
  ObjectType = swift_getObjectType();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = *&v0[OBJC_IVAR___BKEngagementManager_manager];
  v4 = swift_allocObject();
  v4[2] = v0;
  v4[3] = sub_1003599A8;
  v4[4] = v2;
  v4[5] = ObjectType;
  v5 = v0;
  v6 = v3;

  sub_1007999C4();
}

uint64_t sub_100348D24()
{
  v0 = sub_1007A1C54();
  v20 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1007A1CA4();
  v18 = *(v3 - 8);
  v19 = v3;
  __chkstk_darwin(v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1007A1CC4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v17 - v11;
  sub_10000A7C4(0, &qword_100AD1E10);
  v13 = sub_1007A2D74();
  sub_1007A1CB4();
  sub_1007A1D24();
  v17 = *(v7 + 8);
  v17(v9, v6);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_100359A40;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003323D0;
  aBlock[3] = &unk_100A16A88;
  v15 = _Block_copy(aBlock);

  sub_1007A1C74();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000228AC(&qword_100ADA670, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001F1160(&unk_100AD7CA0);
  sub_100234698();
  sub_1007A3594();
  sub_1007A2D04();
  _Block_release(v15);

  (*(v20 + 8))(v2, v0);
  (*(v18 + 8))(v5, v19);
  return (v17)(v12, v6);
}

void sub_1003490E0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100348C40();
  }
}

uint64_t sub_100349134(uint64_t a1, void *a2, void (*a3)(void, double), uint64_t a4, uint64_t a5)
{
  v33 = a5;
  v34 = a3;
  v35 = a4;
  v32 = a2;
  v6 = sub_1001F1160(&unk_100ADD540);
  __chkstk_darwin(v6);
  v8 = &v32 - v7;
  v9 = sub_100796BB4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v32 - v14;
  v16 = sub_1001F1160(&unk_100ADB5C0);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v32 - v18;
  v20 = *(v10 + 56);
  v20(&v32 - v18, 1, 1, v9, v17);
  sub_1000077D8(a1, v8, &unk_100ADD540);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100007840(v8, &unk_100ADD540);
  }

  else
  {
    v21 = *(v10 + 32);
    v21(v15, v8, v9);
    sub_100007840(v19, &unk_100ADB5C0);
    v21(v19, v15, v9);
    (v20)(v19, 0, 1, v9);
  }

  if ((*(v10 + 48))(v19, 1, v9) || ((*(v10 + 16))(v12, v19, v9), sub_100796B34(), v23 = v22, v24 = (*(v10 + 8))(v12, v9), v23 < -86400.0))
  {
    v25 = swift_allocObject();
    v26 = v32;
    v27 = v34;
    v28 = v35;
    v25[2] = v32;
    v25[3] = v27;
    v29 = v33;
    v25[4] = v28;
    v25[5] = v29;
    v30 = v26;

    EngagementManager.syncToCloudKit(completion:)(sub_1003599FC, v25);
  }

  else
  {
    v34(v24, v23 + 86400.0 + 10.0);
  }

  return sub_100007840(v19, &unk_100ADB5C0);
}

uint64_t sub_1003494BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_100796BB4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a3 + OBJC_IVAR___BKEngagementManager_manager);
  sub_100796BA4();
  v15 = swift_allocObject();
  v15[2] = a4;
  v15[3] = a5;
  v15[4] = a6;

  sub_1007999D4();

  return (*(v11 + 8))(v13, v10);
}

Swift::Void __swiftcall EngagementManager.forcePurgeAll()()
{
  v1 = *(v0 + OBJC_IVAR___BKEngagementManager_manager);
  sub_1007999B4();
}

uint64_t EngagementManager.donor(type:)()
{
  v1 = *(v0 + OBJC_IVAR___BKEngagementManager_manager);
  v2 = sub_1007999E4();

  return v2;
}

uint64_t EngagementManager.engagementEventDataForEvent(eventName:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + OBJC_IVAR___BKEngagementManager_manager);
  sub_100799A14();

  sub_1007998B4();
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;

  sub_100799724();
}

uint64_t sub_10034986C(uint64_t a1, void (*a2)(void, uint64_t), uint64_t a3)
{
  v6 = sub_100799734();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001F1160(&qword_100ADD598);
  __chkstk_darwin(v10);
  v12 = &v50 - v11;
  sub_1000077D8(a1, &v50 - v11, &qword_100ADD598);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v7 + 32))(v9, v12, v6);
    sub_1000228AC(&qword_100ADD5A0, 255, &type metadata accessor for CollectorError);
    v13 = swift_allocError();
    (*(v7 + 16))(v14, v9, v6);
    a2(0, v13);

    return (*(v7 + 8))(v9, v6);
  }

  else
  {
    v51 = a2;
    v16 = *v12;
    v19 = *(*v12 + 64);
    v18 = *v12 + 64;
    v17 = v19;
    v20 = 1 << *(v16 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & v17;
    v23 = (v20 + 63) >> 6;
    v54 = v16;

    v24 = 0;
    v25 = _swiftEmptyDictionarySingleton;
    v52 = v18;
    v53 = a3;
    while (v22)
    {
LABEL_13:
      v28 = __clz(__rbit64(v22)) | (v24 << 6);
      v29 = *(*(v54 + 48) + 8 * v28);
      v30 = (*(v54 + 56) + 48 * v28);
      v31 = *(v30 + 25);
      v32 = v30[1];
      v58 = *v30;
      v59[0] = v32;
      *(v59 + 9) = v31;
      v33 = v29;
      sub_100359B60(&v58, v57);
      v34 = sub_100799814();
      v36 = v35;
      sub_100799794();
      sub_1000076D4(v57, v56);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v55 = v25;
      v38 = sub_10000E53C(v34, v36);
      v40 = v25[2];
      v41 = (v39 & 1) == 0;
      v42 = __OFADD__(v40, v41);
      v43 = v40 + v41;
      if (v42)
      {
        goto LABEL_24;
      }

      v44 = v39;
      if (v25[3] >= v43)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v49 = v38;
          sub_1002F0EA0();
          v38 = v49;
        }
      }

      else
      {
        sub_1003D4168(v43, isUniquelyReferenced_nonNull_native);
        v38 = sub_10000E53C(v34, v36);
        if ((v44 & 1) != (v45 & 1))
        {
          goto LABEL_26;
        }
      }

      v25 = v55;
      if (v44)
      {
        v26 = (v55[7] + 32 * v38);
        sub_1000074E0(v26);
        sub_1000076D4(v56, v26);
      }

      else
      {
        v55[(v38 >> 6) + 8] |= 1 << v38;
        v46 = (v25[6] + 16 * v38);
        *v46 = v34;
        v46[1] = v36;
        sub_1000076D4(v56, (v25[7] + 32 * v38));
        v47 = v25[2];
        v42 = __OFADD__(v47, 1);
        v48 = v47 + 1;
        if (v42)
        {
          goto LABEL_25;
        }

        v25[2] = v48;
      }

      v22 &= v22 - 1;
      sub_100359BBC(&v58);
      v18 = v52;
    }

    while (1)
    {
      v27 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v27 >= v23)
      {

        v51(v25, 0);
      }

      v22 = *(v18 + 8 * v27);
      ++v24;
      if (v22)
      {
        v24 = v27;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    result = sub_1007A3B24();
    __break(1u);
  }

  return result;
}

void sub_100349E08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5.super.isa = sub_1007A2024().super.isa;
    if (a2)
    {
LABEL_3:
      v6 = sub_1007967C4();
      goto LABEL_6;
    }
  }

  else
  {
    v5.super.isa = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  v7 = v6;
  (*(a3 + 16))(a3, v5.super.isa);
}

uint64_t sub_100349EB4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1001F1160(&unk_100ADD550);
  __chkstk_darwin(v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR___BKEngagementManager____lazy_storage___iso8601DateFormatStyle;
  swift_beginAccess();
  sub_1000077D8(v1 + v9, v8, &unk_100ADD550);
  v10 = sub_100796AD4();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_100007840(v8, &unk_100ADD550);
  sub_100796734();
  (*(v11 + 16))(v5, a1, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_1002391EC(v5, v1 + v9, &unk_100ADD550);
  return swift_endAccess();
}

id EngagementManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EngagementManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10034A1E4(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void *, uint64_t))
{
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;

  v39 = a1;

  v11 = 0;
  v38 = v6;
  if (v9)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_7:
    v15 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v15 >= v10)
    {

      a4(a3, a2);
    }

    v9 = *(v6 + 8 * v15);
    ++v11;
  }

  while (!v9);
  while (1)
  {
    v16 = __clz(__rbit64(v9)) | (v15 << 6);
    v17 = (*(v39 + 48) + 16 * v16);
    v19 = *v17;
    v18 = v17[1];
    v20 = *(*(v39 + 56) + 8 * v16);
    swift_bridgeObjectRetain_n();
    v21 = v20;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = sub_10000E53C(v19, v18);
    v25 = a3[2];
    v26 = (v24 & 1) == 0;
    v27 = __OFADD__(v25, v26);
    v28 = v25 + v26;
    if (v27)
    {
      break;
    }

    v29 = v24;
    if (a3[3] >= v28)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v34 = v23;
        sub_1002F158C();
        v23 = v34;
      }
    }

    else
    {
      sub_1003D4CE0(v28, isUniquelyReferenced_nonNull_native);
      v23 = sub_10000E53C(v19, v18);
      if ((v29 & 1) != (v30 & 1))
      {
        goto LABEL_26;
      }
    }

    v9 &= v9 - 1;
    if (v29)
    {
      v12 = v23;

      v13 = a3[7];
      v14 = *(v13 + 8 * v12);
      *(v13 + 8 * v12) = v21;

      v11 = v15;
      v6 = v38;
      if (!v9)
      {
        goto LABEL_7;
      }
    }

    else
    {
      a3[(v23 >> 6) + 8] |= 1 << v23;
      v31 = (a3[6] + 16 * v23);
      *v31 = v19;
      v31[1] = v18;
      *(a3[7] + 8 * v23) = v21;

      v32 = a3[2];
      v27 = __OFADD__(v32, 1);
      v33 = v32 + 1;
      if (v27)
      {
        goto LABEL_25;
      }

      a3[2] = v33;
      v11 = v15;
      v6 = v38;
      if (!v9)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    v15 = v11;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_1007A3B24();
  __break(1u);
  return result;
}

void sub_10034A550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000A7C4(0, &qword_100AD7E98);
  v5.super.isa = sub_1007A2024().super.isa;
  if (a2)
  {
    v6 = sub_1007967C4();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5.super.isa);
}

uint64_t sub_10034A608(void *a1, uint64_t a2, void (*a3)(void, void), uint64_t a4)
{
  v8 = sub_10079ACE4();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    sub_10079AC84();
    swift_errorRetain();
    v13 = sub_10079ACC4();
    v14 = sub_1007A29B4();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v37 = a3;
      v16 = v15;
      v17 = swift_slowAlloc();
      v36 = a1;
      v18 = v17;
      v39[0] = v17;
      *v16 = 136315138;
      swift_getErrorValue();
      v19 = sub_1007A3B84();
      v21 = sub_1000070F4(v19, v20, v39);
      v35 = v8;
      v22 = a4;
      v23 = v21;

      *(v16 + 4) = v23;
      a4 = v22;
      _os_log_impl(&_mh_execute_header, v13, v14, "Failed fetching request. %s", v16, 0xCu);
      sub_1000074E0(v18);
      a1 = v36;

      a3 = v37;

      (*(v9 + 8))(v12, v35);
    }

    else
    {

      (*(v9 + 8))(v12, v8);
    }
  }

  v40 = _swiftEmptyDictionarySingleton;
  if (a1)
  {
    v24 = [a1 messageActions];
    if (v24)
    {
      v25 = v24;
      sub_10000A7C4(0, &qword_100ADD588);
      v26 = sub_1007A25E4();

      v38 = a4;
      if (v26 >> 62)
      {
        goto LABEL_19;
      }

      for (i = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1007A38D4())
      {
        v28 = 0;
        while (1)
        {
          if ((v26 & 0xC000000000000001) != 0)
          {
            v29 = sub_1007A3784();
          }

          else
          {
            if (v28 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_18;
            }

            v29 = *(v26 + 8 * v28 + 32);
          }

          v30 = v29;
          v31 = v28 + 1;
          if (__OFADD__(v28, 1))
          {
            break;
          }

          v39[0] = v29;
          sub_10034A974(v39, &v40);

          ++v28;
          if (v31 == i)
          {
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        ;
      }

LABEL_20:
    }
  }

  swift_beginAccess();

  a3(v32, a2);
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_10034A974(id *a1, void *a2)
{
  v5 = sub_10079ACE4();
  v61 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [*a1 placements];
  v62 = v8;
  if (!v9)
  {
LABEL_29:
    sub_10079AC84();
    v49 = sub_10079ACC4();
    v50 = sub_1007A29D4();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v69 = v52;
      *v51 = 136315138;
      swift_beginAccess();
      sub_10000A7C4(0, &qword_100AD7E98);

      v53 = sub_1007A2054();
      v55 = v54;

      v56 = sub_1000070F4(v53, v55, &v69);

      *(v51 + 4) = v56;
      _os_log_impl(&_mh_execute_header, v49, v50, "requests: %s", v51, 0xCu);
      sub_1000074E0(v52);

      return (*(v61 + 8))(v62, v5);
    }

    else
    {

      return (*(v61 + 8))(v8, v5);
    }
  }

  v10 = v9;
  v59 = v5;
  v60 = v2;
  sub_10000A7C4(0, &qword_100ADD590);
  v11 = sub_1007A2044();

  v12 = v11 + 64;
  v13 = 1 << *(v11 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v11 + 64);
  v16 = (v13 + 63) >> 6;

  v17 = 0;
  v63 = a2;
  v64 = v16;
  v65 = v11 + 64;
  if (v15)
  {
LABEL_9:
    while (1)
    {
      v19 = __clz(__rbit64(v15)) | (v17 << 6);
      v20 = (*(v11 + 48) + 16 * v19);
      v21 = *v20;
      v22 = v20[1];
      v23 = *(*(v11 + 56) + 8 * v19);

      v68 = v23;
      v24 = v11;
      v25 = [v68 makeDialogRequest];
      swift_beginAccess();
      v67 = v25;
      if (v25)
      {
        break;
      }

      v37 = sub_10000E53C(v21, v22);
      v11 = v24;
      v12 = v65;
      if (v38)
      {
        v39 = v37;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41 = *a2;
        v69 = *a2;
        *a2 = 0x8000000000000000;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1002F158C();
          v41 = v69;
        }

        sub_1002F9CFC(v39, v41);
LABEL_25:
        *a2 = v41;
      }

      v15 &= v15 - 1;
      swift_endAccess();

      if (!v15)
      {
        goto LABEL_5;
      }
    }

    v26 = swift_isUniquelyReferenced_nonNull_native();
    v69 = *a2;
    v27 = v69;
    *a2 = 0x8000000000000000;
    v66 = v21;
    v28 = v22;
    v30 = sub_10000E53C(v21, v22);
    v31 = *(v27 + 16);
    v32 = (v29 & 1) == 0;
    v33 = v31 + v32;
    if (__OFADD__(v31, v32))
    {
      goto LABEL_33;
    }

    v34 = v29;
    if (*(v27 + 24) >= v33)
    {
      if ((v26 & 1) == 0)
      {
        sub_1002F158C();
      }
    }

    else
    {
      sub_1003D4CE0(v33, v26);
      v35 = sub_10000E53C(v66, v22);
      if ((v34 & 1) != (v36 & 1))
      {
        goto LABEL_35;
      }

      v30 = v35;
    }

    v11 = v24;
    v41 = v69;
    v12 = v65;
    if (v34)
    {
      v42 = v69[7];
      v43 = *(v42 + 8 * v30);
      *(v42 + 8 * v30) = v67;

      v16 = v64;
    }

    else
    {
      v69[(v30 >> 6) + 8] |= 1 << v30;
      v44 = (v41[6] + 16 * v30);
      v45 = v67;
      *v44 = v66;
      v44[1] = v28;
      *(v41[7] + 8 * v30) = v45;
      v46 = v41[2];
      v47 = __OFADD__(v46, 1);
      v48 = v46 + 1;
      v16 = v64;
      if (v47)
      {
        goto LABEL_34;
      }

      v41[2] = v48;
    }

    a2 = v63;
    goto LABEL_25;
  }

LABEL_5:
  while (1)
  {
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v18 >= v16)
    {

      v5 = v59;
      v8 = v62;
      goto LABEL_29;
    }

    v15 = *(v12 + 8 * v18);
    ++v17;
    if (v15)
    {
      v17 = v18;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  result = sub_1007A3B24();
  __break(1u);
  return result;
}

Swift::Void __swiftcall EngagementManager.sendReaderEventNewSectionViaToC()()
{
  v1 = *(v0 + OBJC_IVAR___BKEngagementManager_eventController);
  sub_10079E994();
}

uint64_t sub_10034B03C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a8;
  v8[9] = v12;
  v8[6] = a6;
  v8[7] = a7;
  v8[4] = a4;
  v8[5] = a5;
  v9 = sub_100796BB4();
  v8[10] = v9;
  v8[11] = *(v9 - 8);
  v8[12] = swift_task_alloc();
  v8[13] = swift_task_alloc();
  v8[14] = swift_task_alloc();

  return _swift_task_switch(sub_10034B124, 0, 0);
}

uint64_t sub_10034B124()
{
  v1 = *(v0[4] + OBJC_IVAR___BKEngagementManager_manager);
  v0[15] = v1;
  v2 = v1;
  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = sub_10034B1E0;
  v4 = v0[14];

  return sub_10034B718(v4, v2);
}

uint64_t sub_10034B1E0()
{

  return _swift_task_switch(sub_10034B2DC, 0, 0);
}

uint64_t sub_10034B2DC()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  sub_100796A94();
  v4 = sub_100796B14();
  v5 = *(v3 + 8);
  *(v0 + 136) = v5;
  *(v0 + 144) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v2);
  if (v4)
  {
    v6 = *(v0 + 112);
    v7 = *(v0 + 120);
    v9 = *(v0 + 96);
    v8 = *(v0 + 104);
    v10 = *(v0 + 80);
    v11 = *(v0 + 88);
    v12 = *(v0 + 72);
    v21 = *(v0 + 56);
    sub_100796BA4();
    (*(v11 + 16))(v9, v6, v10);
    v13 = sub_1001F1160(&qword_100ADD5A8);
    v14 = swift_task_alloc();
    *(v0 + 152) = v14;
    *(v14 + 16) = v9;
    *(v14 + 24) = v7;
    *(v14 + 32) = v21;
    *(v14 + 48) = v8;
    *(v14 + 56) = v12;
    v15 = swift_task_alloc();
    *(v0 + 160) = v15;
    *v15 = v0;
    v15[1] = sub_10034B508;

    return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 16, v13, v13, 0, 0, &unk_10081C9B8, v14, v13);
  }

  else
  {
    v16 = *(v0 + 112);
    v17 = *(v0 + 120);
    v18 = *(v0 + 80);
    (*(v0 + 40))(0, 0);

    v5(v16, v18);

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_10034B508()
{

  return _swift_task_switch(sub_10034B620, 0, 0);
}

uint64_t sub_10034B620()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v4 = *(v0 + 96);
  v10 = *(v0 + 104);
  v5 = *(v0 + 80);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  (*(v0 + 40))(v6, v7);

  sub_100359CEC(v6, v7);
  v1(v2, v5);
  v1(v4, v5);
  v1(v10, v5);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10034B718(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_1001F1160(&unk_100ADB5C0);
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  v4 = swift_task_alloc();
  v3[7] = v4;
  *v4 = v3;
  v4[1] = sub_10034B7FC;

  return Manager.getAllConfigurations()();
}

uint64_t sub_10034B7FC(uint64_t a1)
{
  *(*v1 + 64) = a1;

  return _swift_task_switch(sub_10034B8FC, 0, 0);
}

uint64_t sub_10034B8FC()
{
  v33 = v0;
  v1 = v0[8];
  v32 = _swiftEmptyArrayStorage;
  if (v1 >> 62)
  {
LABEL_30:
    v2 = sub_1007A38D4();
    v3 = v0[8];
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v3 = v1;
  }

  if (v2)
  {
    v4 = 0;
    v0 = (v1 & 0xC000000000000001);
    v5 = v1 & 0xFFFFFFFFFFFFFF8;
    v6 = v3 + 32;
    while (1)
    {
      if (v0)
      {
        v7 = sub_1007A3784();
        v8 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_14;
        }
      }

      else
      {
        if (v4 >= *(v5 + 16))
        {
          __break(1u);
          goto LABEL_30;
        }

        v7 = *(v6 + 8 * v4);
        swift_unknownObjectRetain();
        v8 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_14:
          __break(1u);
LABEL_15:
          v0 = v31;
          v9 = v32;

          if ((v9 & 0x8000000000000000) == 0)
          {
            goto LABEL_18;
          }

          goto LABEL_31;
        }
      }

      if ([v7 shouldBeSynced])
      {
        sub_1007A37D4();
        sub_1007A3804();
        sub_1007A3814();
        v1 = &v32;
        sub_1007A37E4();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      ++v4;
      if (v8 == v2)
      {
        goto LABEL_15;
      }
    }
  }

  v9 = _swiftEmptyArrayStorage;

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
  {
    goto LABEL_31;
  }

LABEL_18:
  if ((v9 & 0x4000000000000000) != 0)
  {
LABEL_31:
    v10 = sub_1007A38D4();
    if (v10)
    {
      goto LABEL_20;
    }

LABEL_32:

    v17 = _swiftEmptyArrayStorage;
    goto LABEL_33;
  }

  v10 = *(v9 + 16);
  if (!v10)
  {
    goto LABEL_32;
  }

LABEL_20:
  v32 = _swiftEmptyArrayStorage;
  v11 = sub_1003BD0CC(0, v10 & ~(v10 >> 63), 0);
  if (v10 < 0)
  {
    __break(1u);
    return Manager.getEarliestTimestamp(propertyNames:assetIDs:earliestTimestampComparator:)(v11, v12, v13, v14, v15);
  }

  v16 = 0;
  v17 = v32;
  do
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v18 = sub_1007A3784();
    }

    else
    {
      v18 = *(v9 + 8 * v16 + 32);
      swift_unknownObjectRetain();
    }

    v19 = [v18 eventName];
    v20 = sub_1007A2254();
    v22 = v21;

    swift_unknownObjectRelease();
    v32 = v17;
    v24 = v17[2];
    v23 = v17[3];
    if (v24 >= v23 >> 1)
    {
      sub_1003BD0CC((v23 > 1), v24 + 1, 1);
      v17 = v32;
    }

    ++v16;
    v17[2] = v24 + 1;
    v25 = &v17[2 * v24];
    v25[4] = v20;
    v25[5] = v22;
  }

  while (v10 != v16);

  v0 = v31;
LABEL_33:
  v26 = v0[4];
  v27 = sub_10040E374(v17);
  v0[9] = v27;

  v28 = swift_task_alloc();
  v0[10] = v28;
  *(v28 + 16) = v26;
  v29 = swift_task_alloc();
  v0[11] = v29;
  *v29 = v0;
  v29[1] = sub_10034BC50;
  v11 = v0[6];
  v14 = sub_10035A180;
  v12 = v27;
  v13 = 0;
  v15 = v28;

  return Manager.getEarliestTimestamp(propertyNames:assetIDs:earliestTimestampComparator:)(v11, v12, v13, v14, v15);
}

uint64_t sub_10034BC50()
{

  return _swift_task_switch(sub_10034BD84, 0, 0);
}

uint64_t sub_10034BD84()
{
  v1 = v0[5];
  sub_1000077D8(v0[6], v1, &unk_100ADB5C0);
  v2 = sub_100796BB4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 48);
  v5 = v4(v1, 1, v2);
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[2];
  if (v5 == 1)
  {
    sub_100796A94();
    sub_100007840(v7, &unk_100ADB5C0);
    if (v4(v6, 1, v2) != 1)
    {
      sub_100007840(v0[5], &unk_100ADB5C0);
    }
  }

  else
  {
    sub_100007840(v0[6], &unk_100ADB5C0);
    (*(v3 + 32))(v8, v6, v2);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_10034BF14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[17] = a7;
  v8[18] = a8;
  v8[15] = a5;
  v8[16] = a6;
  v8[13] = a3;
  v8[14] = a4;
  v8[11] = a1;
  v8[12] = a2;
  v9 = sub_1001F1160(&qword_100ADD5B0);
  v8[19] = v9;
  v8[20] = *(v9 - 8);
  v8[21] = swift_task_alloc();
  v10 = sub_100796AD4();
  v8[22] = v10;
  v11 = *(v10 - 8);
  v8[23] = v11;
  v8[24] = *(v11 + 64);
  v8[25] = swift_task_alloc();
  sub_1001F1160(&qword_100AD67D0);
  v8[26] = swift_task_alloc();
  v8[27] = swift_task_alloc();
  v12 = sub_100796BB4();
  v8[28] = v12;
  v8[29] = *(v12 - 8);
  v8[30] = swift_task_alloc();
  v8[31] = swift_task_alloc();
  v8[32] = swift_task_alloc();
  v8[33] = swift_task_alloc();
  v8[34] = swift_task_alloc();
  v13 = sub_100796544();
  v8[35] = v13;
  v14 = *(v13 - 8);
  v8[36] = v14;
  v8[37] = *(v14 + 64);
  v8[38] = swift_task_alloc();
  v8[39] = swift_task_alloc();

  return _swift_task_switch(sub_10034C190, 0, 0);
}

uint64_t sub_10034C190()
{
  v1 = *(v0 + 232);
  v3 = *(v1 + 16);
  v1 += 16;
  v2 = v3;
  v4 = (v1 - 8);
  v38 = *(v0 + 296) + 7;
  v37 = *(v0 + 192) + 7;
  v41 = *(v0 + 184);
  v35 = (v1 + 24);
  v36 = (*(v0 + 288) + 8);
  v42 = *(v0 + 288);
  v43 = **(v0 + 96);
  v39 = (v1 - 8);
  v40 = v3;
  do
  {
    v45 = *(v0 + 312);
    v49 = *(v0 + 304);
    v12 = *(v0 + 272);
    v58 = *(v0 + 280);
    v54 = v12;
    v14 = *(v0 + 256);
    v13 = *(v0 + 264);
    v15 = *(v0 + 248);
    v46 = *(v0 + 240);
    v16 = *(v0 + 224);
    v59 = *(v0 + 216);
    v53 = *(v0 + 208);
    v56 = *(v0 + 176);
    v57 = *(v0 + 200);
    v50 = *(v0 + 144);
    v52 = *(v0 + 128);
    v48 = *(v0 + 120);
    v51 = *(v0 + 112);
    v2(v12, *(v0 + 104), v16);
    sub_100354B00(v12, v13);
    sub_100796AE4();
    sub_100354B00(v14, v15);
    v2(v46, v13, v16);
    sub_100796AA4();
    sub_100796524();
    v17 = *v4;
    (*v4)(v15, v16);
    v17(v14, v16);
    v17(v13, v16);
    v18 = v54;
    v55 = v17;
    v17(v18, v16);
    v44 = sub_1007A2744();
    v47 = *(v44 - 8);
    (*(v47 + 56))(v59, 1, 1, v44);
    (*(v42 + 16))(v49, v45, v58);
    (*(v41 + 16))(v57, v48, v56);
    v19 = (*(v42 + 80) + 32) & ~*(v42 + 80);
    v20 = (v38 + v19) & 0xFFFFFFFFFFFFFFF8;
    v21 = (*(v41 + 80) + v20 + 8) & ~*(v41 + 80);
    v22 = (v37 + v21) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    *(v23 + 24) = 0;
    (*(v42 + 32))(v23 + v19, v49, v58);
    *(v23 + v20) = v51;
    (*(v41 + 32))(v23 + v21, v57, v56);
    *(v23 + v22) = v52;
    *(v23 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8)) = v50;
    sub_1000077D8(v59, v53, &qword_100AD67D0);
    LODWORD(v20) = (*(v47 + 48))(v53, 1, v44);
    v24 = v51;
    v25 = v52;
    v26 = *(v0 + 208);
    if (v20 == 1)
    {
      sub_100007840(*(v0 + 208), &qword_100AD67D0);
    }

    else
    {
      sub_1007A2734();
      (*(v47 + 8))(v26, v44);
    }

    if (*(v23 + 16))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v27 = sub_1007A2694();
      v29 = v28;
      swift_unknownObjectRelease();
    }

    else
    {
      v27 = 0;
      v29 = 0;
    }

    v30 = swift_allocObject();
    *(v30 + 16) = &unk_10081C9D0;
    *(v30 + 24) = v23;

    sub_1001F1160(&qword_100ADD5A8);
    v31 = v29 | v27;
    if (v29 | v27)
    {
      v31 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v27;
      *(v0 + 40) = v29;
    }

    v5 = *(v0 + 312);
    v6 = *(v0 + 272);
    v7 = *(v0 + 280);
    v8 = *(v0 + 216);
    v9 = *(v0 + 224);
    v10 = *(v0 + 104);
    *(v0 + 48) = 1;
    *(v0 + 56) = v31;
    *(v0 + 64) = v43;
    swift_task_create();

    sub_100007840(v8, &qword_100AD67D0);
    sub_100796514();
    (*v36)(v5, v7);
    (*v35)(v10, v6, v9);
    v2 = v40;
    v40(v6, v10, v9);
    v11 = sub_100796B14();
    v4 = v39;
    v55(v6, v9);
  }

  while ((v11 & 1) != 0);
  sub_1007A26C4();
  v32 = swift_task_alloc();
  *(v0 + 320) = v32;
  *v32 = v0;
  v32[1] = sub_10034C7D8;
  v33 = *(v0 + 152);

  return TaskGroup.Iterator.next(isolation:)(v0 + 72, 0, 0, v33);
}

uint64_t sub_10034C7D8()
{

  return _swift_task_switch(sub_10034C8D4, 0, 0);
}

uint64_t sub_10034C8D4()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  if (v2 == 255)
  {
    v1 = 0;
  }

  else if ((v2 & 1) == 0)
  {
    v3 = swift_task_alloc();
    *(v0 + 320) = v3;
    *v3 = v0;
    v3[1] = sub_10034C7D8;
    v4 = *(v0 + 152);

    return TaskGroup.Iterator.next(isolation:)(v0 + 72, 0, 0, v4);
  }

  v5 = v2 != 255;
  v6 = *(v0 + 88);
  (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
  *v6 = v1;
  *(v6 + 8) = v5;

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10034CAA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a7;
  v8[13] = a8;
  v8[10] = a5;
  v8[11] = a6;
  v8[8] = a1;
  v8[9] = a4;
  v9 = sub_10079ACE4();
  v8[14] = v9;
  v8[15] = *(v9 - 8);
  v8[16] = swift_task_alloc();

  return _swift_task_switch(sub_10034CB6C, 0, 0);
}

uint64_t sub_10034CB6C()
{
  v1 = *(v0 + 104);
  v2 = swift_task_alloc();
  *(v0 + 136) = v2;
  v3 = *(v0 + 88);
  *(v2 + 16) = vextq_s8(*(v0 + 72), *(v0 + 72), 8uLL);
  *(v2 + 32) = v1;
  *(v2 + 40) = v3;
  v4 = swift_task_alloc();
  *(v0 + 144) = v4;
  v5 = sub_1001F1160(&qword_100ADD5A8);
  *v4 = v0;
  v4[1] = sub_10034CC88;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 40, 0, 0, 0xD00000000000003DLL, 0x80000001008CC7E0, sub_100359EAC, v2, v5);
}

uint64_t sub_10034CC88()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_10034CE18;
  }

  else
  {

    v2 = sub_10034CDA4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10034CDA4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 64);
  *v2 = *(v0 + 40);
  *(v2 + 8) = v1;

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10034CE18()
{
  v18 = v0;

  sub_10079AC84();
  swift_errorRetain();
  v1 = sub_10079ACC4();
  v2 = sub_1007A29B4();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[15];
    v3 = v0[16];
    v5 = v0[14];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_1007A3B84();
    v10 = sub_1000070F4(v8, v9, &v17);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error syncing bucket to CloudKit: %s", v6, 0xCu);
    sub_1000074E0(v7);

    (*(v4 + 8))(v3, v5);
  }

  else
  {
    v12 = v0[15];
    v11 = v0[16];
    v13 = v0[14];

    (*(v12 + 8))(v11, v13);
  }

  v14 = v0[8];
  *v14 = v0[19];
  *(v14 + 8) = 1;

  v15 = v0[1];

  return v15();
}

uint64_t sub_10034CFF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v37 = a3;
  v41 = a4;
  v6 = sub_100796AD4();
  v38 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100796BB4();
  v39 = *(v9 - 8);
  v40 = v9;
  __chkstk_darwin(v9);
  v36 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1001F1160(&unk_100ADB5C0);
  __chkstk_darwin(v11 - 8);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v35 - v15;
  __chkstk_darwin(v17);
  v19 = &v35 - v18;
  __chkstk_darwin(v20);
  v22 = &v35 - v21;
  sub_1000077D8(a2, &v35 - v21, &unk_100ADB5C0);
  if (*(a1 + 40) == 2 && (v23 = *(a1 + 32), *(v23 + 16)) && (v24 = sub_10000E53C(0x6D617473656D6974, 0xE900000000000070), (v25 & 1) != 0) && (sub_100007484(*(v23 + 56) + 32 * v24, v43), sub_1001F1160(&qword_100ADD660), (swift_dynamicCast() & 1) != 0))
  {
    v26 = v42;
    sub_100349EB4(v8);
    sub_100796AB4();
    v37 = v26;
    (*(v38 + 8))(v8, v6);
    v28 = v39;
    v29 = v40;
    v38 = *(v39 + 56);
    (v38)(v19, 0, 1, v40);
    v30 = *(v28 + 32);
    v30(v36, v19, v29);
    sub_1000077D8(v22, v16, &unk_100ADB5C0);
    v31 = *(v28 + 48);
    if (v31(v16, 1, v29) == 1)
    {

      sub_100007840(v16, &unk_100ADB5C0);
      v32 = v36;
      goto LABEL_13;
    }

    sub_100007840(v16, &unk_100ADB5C0);
    v29 = v40;
    sub_1000077D8(v22, v13, &unk_100ADB5C0);
    result = (v31)(v13, 1, v29);
    if (result != 1)
    {

      v32 = v36;
      v33 = sub_100796B84();
      v34 = *(v39 + 8);
      v34(v13, v29);
      if (v33 != -1)
      {
        v34(v32, v29);
        return sub_10020B3C8(v22, v41, &unk_100ADB5C0);
      }

LABEL_13:
      sub_100007840(v22, &unk_100ADB5C0);
      v30(v22, v32, v29);
      (v38)(v22, 0, 1, v29);
      return sub_10020B3C8(v22, v41, &unk_100ADB5C0);
    }

    __break(1u);
  }

  else
  {
    sub_100007840(v22, &unk_100ADB5C0);
    return sub_1000077D8(a2, v41, &unk_100ADB5C0);
  }

  return result;
}

uint64_t sub_10034D558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v52 = a6;
  v53 = a2;
  v48 = a5;
  v60 = a4;
  v51 = a1;
  v58 = sub_1001F1160(&qword_100ADD5B8);
  v56 = *(v58 - 8);
  v50 = *(v56 + 64);
  __chkstk_darwin(v58);
  v59 = &v42 - v7;
  v57 = sub_100796544();
  v55 = *(v57 - 8);
  v49 = *(v55 + 64);
  __chkstk_darwin(v57);
  v54 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_100796AD4();
  v9 = *(v45 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v45);
  v43 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1001F1160(&unk_100ADB5C0);
  __chkstk_darwin(v11 - 8);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v42 - v15;
  v17 = [objc_opt_self() sharedManager];
  v47 = [v17 engagementManager];

  v18 = swift_allocObject();
  *(v18 + 16) = _swiftEmptyDictionarySingleton;
  v42 = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = _swiftEmptyDictionarySingleton;
  v46 = v16;
  sub_100796534();
  v20 = sub_100796BB4();
  v21 = *(*(v20 - 8) + 56);
  v21(v16, 0, 1, v20);
  v44 = v13;
  sub_100796514();
  v21(v13, 0, 1, v20);
  v22 = v43;
  v23 = v45;
  (*(v9 + 16))(v43, v48, v45);
  v24 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v25 = (v10 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  *(v26 + 16) = v60;
  (*(v9 + 32))(v26 + v24, v22, v23);
  *(v26 + v25) = v18;
  *(v26 + ((v25 + 15) & 0xFFFFFFFFFFFFFFF8)) = v19;
  v27 = v19;
  v28 = v55;
  (*(v55 + 16))(v54, a3, v57);
  v29 = v56;
  (*(v56 + 16))(v59, v51, v58);
  v30 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v31 = (v49 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
  v33 = (*(v29 + 80) + v32 + 8) & ~*(v29 + 80);
  v34 = (v50 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  (*(v55 + 32))(v36 + v30, v54, v57);
  *(v36 + v31) = v27;
  *(v36 + v32) = v42;
  (*(v56 + 32))(v36 + v33, v59, v58);
  *(v36 + v34) = v60;
  *(v36 + v35) = v47;
  v37 = v52;
  *(v36 + ((v35 + 15) & 0xFFFFFFFFFFFFFFF8)) = v52;
  swift_retain_n();
  swift_retain_n();
  swift_unknownObjectRetain();
  v38 = v37;
  v39 = v46;
  v40 = v44;
  sub_100799A24();
  swift_unknownObjectRelease();

  sub_100007840(v40, &unk_100ADB5C0);
  sub_100007840(v39, &unk_100ADB5C0);
}

id sub_10034DB0C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v92 = a5;
  v93 = a4;
  v88 = a3;
  v11 = sub_100796AD4();
  v86 = *(v11 - 8);
  v87 = v11;
  __chkstk_darwin(v11);
  v85 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1001F1160(&qword_100ADD620);
  __chkstk_darwin(v13 - 8);
  v84 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v82 - v16;
  v18 = sub_1001F1160(&qword_100ADD638);
  __chkstk_darwin(v18 - 8);
  v20 = &v82 - v19;
  v21 = sub_1007988C4();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v89 = &v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v94 = &v82 - v25;
  v26 = sub_100798B14();
  v95 = *(v26 - 8);
  v27 = __chkstk_darwin(v26);
  v29 = &v82 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 shouldBeSynced];
  if (!result)
  {
    return result;
  }

  v82 = a6;
  v83 = a7;
  v91 = v26;
  sub_100798B04();
  [a1 ageToExpire];
  sub_100798AD4();
  [a1 countLimit];
  sub_100798A94();
  v31 = [a1 eventName];
  sub_1007A2254();
  v90 = v21;

  v32 = v90;
  sub_100798AF4();
  [a1 recordType];
  sub_100799774();
  sub_100798AB4();
  sub_10034E388(a2, v20);
  v33 = (*(v22 + 48))(v20, 1, v32);
  v93 = v22;
  if (v33 == 1)
  {
    (*(v95 + 8))(v29, v91);
    return sub_100007840(v20, &qword_100ADD638);
  }

  (*(v93 + 32))(v94, v20, v32);
  v34 = [a1 eventName];
  v35 = sub_1007A2254();
  v37 = v36;

  v38 = v82;
  swift_beginAccess();
  v39 = *(v38 + 16);
  if (*(v39 + 16))
  {
    v40 = sub_10000E53C(v35, v37);
    v42 = v41;

    v43 = v83;
    if (v42)
    {
      (*(v95 + 16))(v17, *(v39 + 56) + *(v95 + 72) * v40, v91);
      v44 = 0;
    }

    else
    {
      v44 = 1;
    }
  }

  else
  {

    v44 = 1;
    v43 = v83;
  }

  v45 = v95;
  v46 = *(v95 + 56);
  v47 = v91;
  v46(v17, v44, 1, v91);
  swift_endAccess();
  LODWORD(v47) = (*(v45 + 48))(v17, 1, v47);
  sub_100007840(v17, &qword_100ADD620);
  if (v47 == 1)
  {
    v48 = [a1 eventName];
    v49 = sub_1007A2254();
    v51 = v50;

    v52 = v84;
    v53 = v91;
    (*(v95 + 16))(v84, v29, v91);
    v46(v52, 0, 1, v53);
    swift_beginAccess();
    sub_1005E938C(v52, v49, v51);
    swift_endAccess();
  }

  v54 = [a1 eventName];
  v55 = sub_1007A2254();
  v57 = v56;

  swift_beginAccess();
  v58 = *(v43 + 16);
  v59 = v94;
  if (!*(v58 + 16))
  {

    goto LABEL_15;
  }

  v60 = sub_10000E53C(v55, v57);
  v62 = v61;

  if ((v62 & 1) == 0)
  {
LABEL_15:
    swift_endAccess();
    v63 = _swiftEmptyDictionarySingleton;
    goto LABEL_16;
  }

  v63 = *(*(v58 + 56) + 8 * v60);
  swift_endAccess();

LABEL_16:
  v64 = v85;
  sub_1007963F4();
  sub_1000228AC(&qword_100ADD570, 255, &type metadata accessor for Date.ISO8601FormatStyle);
  v65 = v87;
  sub_100796B94();
  (*(v86 + 8))(v64, v65);
  v67 = v97;
  v66 = v98;
  if (sub_100798824())
  {
    v97 = sub_1007987F4();
    v98 = v68;

    v99._countAndFlagsBits = 124;
    v99._object = 0xE100000000000000;
    sub_1007A23D4(v99);

    v100._countAndFlagsBits = v67;
    v100._object = v66;
    sub_1007A23D4(v100);
  }

  else
  {
    v97 = 124;
    v98 = 0xE100000000000000;
    v101._countAndFlagsBits = v67;
    v101._object = v66;
    sub_1007A23D4(v101);
  }

  v70 = v97;
  v69 = v98;
  v71 = v93;
  v72 = v89;
  v73 = v59;
  v74 = v90;
  (*(v93 + 16))(v89, v73, v90);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v97 = v63;
  sub_1002F52DC(v72, v70, v69, isUniquelyReferenced_nonNull_native);

  v76 = v97;
  v77 = [a1 eventName];
  v78 = sub_1007A2254();
  v80 = v79;

  swift_beginAccess();
  v81 = swift_isUniquelyReferenced_nonNull_native();
  v96 = *(v43 + 16);
  *(v43 + 16) = 0x8000000000000000;
  sub_1002F52A0(v76, v78, v80, v81);

  *(v43 + 16) = v96;
  swift_endAccess();
  (*(v71 + 8))(v94, v74);
  return (*(v95 + 8))(v29, v91);
}

uint64_t sub_10034E388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v114 = *(a1 + 8);
  v111 = v4;
  v5 = *(a1 + 32);
  v112 = *(a1 + 24);
  v113 = v5;
  v6 = sub_10079ACE4();
  v121 = *(v6 - 8);
  v122 = v6;
  __chkstk_darwin(v6);
  v8 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_100798574();
  v93 = *(v94 - 8);
  __chkstk_darwin(v94);
  v92 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v91 = &v89 - v11;
  v12 = sub_1001F1160(&unk_100ADD640);
  __chkstk_darwin(v12 - 8);
  v99 = &v89 - v13;
  v101 = sub_100798B24();
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v98 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_100798C34();
  v96 = *(v97 - 8);
  __chkstk_darwin(v97);
  v95 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v110 = &v89 - v17;
  v105 = sub_100798BB4();
  v104 = *(v105 - 8);
  __chkstk_darwin(v105);
  v103 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v102 = &v89 - v20;
  v109 = sub_100798534();
  v108 = *(v109 - 8);
  __chkstk_darwin(v109);
  v107 = &v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v106 = &v89 - v23;
  v24 = sub_10079AA74();
  __chkstk_darwin(v24 - 8);
  v25 = sub_1007988C4();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v117 = &v89 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1001F1160(&unk_100ADB5C0);
  __chkstk_darwin(v28 - 8);
  v30 = &v89 - v29;
  v120 = sub_100796BB4();
  v31 = *(v120 - 8);
  __chkstk_darwin(v120);
  v33 = &v89 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v34);
  v118 = v26;
  v119 = &v89 - v36;
  v37 = *(v26 + 56);
  v116 = v26 + 56;
  v115 = v37;
  (v37)(a2, 1, 1, v25, v35);
  sub_100799794();
  sub_100007484(v126, &v125);
  sub_1001F1160(&qword_100AD6710);
  if (swift_dynamicCast())
  {
    v90 = a2;
    v38 = v123;
    v39 = *(v123 + 16);
    v89 = v25;
    if (v39)
    {
      v40 = sub_10000E53C(0x6D617473656D6974, 0xE900000000000070);
      if (v41)
      {
        sub_100007484(*(v38 + 56) + 32 * v40, &v125);
        swift_dynamicCast();
      }
    }

    sub_100796AB4();

    v42 = v31;
    v43 = *(v31 + 56);
    v44 = v120;
    v43(v30, 0, 1, v120);
    v45 = v119;
    (*(v42 + 32))(v119, v30, v44);
    v46 = sub_1007997B4();
    if (!v47 || (sub_10063F35C(v46), (v48 & 1) != 0))
    {
      (*(v42 + 8))(v45, v44);

      goto LABEL_8;
    }

    v57 = v117;
    sub_1007988B4();
    (*(v42 + 16))(v33, v45, v44);
    sub_10079AA64();
    sub_1007988A4();
    v58 = *(a1 + 8);
    v59 = *(a1 + 40);
    if (v59 == 1)
    {

      v60 = v89;
      if (!v58)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v60 = v89;
      if (v59 != 2 || (, , , , , !v58))
      {
LABEL_15:
        sub_100798884();
        v61 = v119;
        if (*(v38 + 16))
        {
          v62 = sub_10000E53C(0x73736572676F7270, 0xE800000000000000);
          if (v63)
          {
            sub_100007484(*(v38 + 56) + 32 * v62, &v125);
            if (swift_dynamicCast())
            {
              v64 = v106;
              sub_100798524();
              sub_100798514();
              if (*(v38 + 16) && (v65 = sub_10000E53C(0x656C706D61537369, 0xE800000000000000), (v66 & 1) != 0))
              {
                sub_100007484(*(v38 + 56) + 32 * v65, &v125);

                if (swift_dynamicCast())
                {
                  sub_1007984F4();
                }
              }

              else
              {
              }

              v84 = v90;
              v85 = v108;
              v86 = v109;
              (*(v108 + 16))(v107, v64, v109);
              sub_100798834();
              (*(v85 + 8))(v64, v86);
              (*(v42 + 8))(v61, v120);
              sub_1000074E0(v126);
              goto LABEL_44;
            }
          }
        }

        if (*(v38 + 16))
        {
          v67 = sub_10000E53C(0x676E69746172, 0xE600000000000000);
          if (v68)
          {
            sub_100007484(*(v38 + 56) + 32 * v67, &v125);
            if (swift_dynamicCast())
            {

              v69 = v102;
              sub_100798BA4();
              sub_100798B94();
              v70 = v104;
              v71 = v105;
              (*(v104 + 16))(v103, v69, v105);
              sub_1007987E4();
LABEL_42:
              (*(v70 + 8))(v69, v71);
              goto LABEL_43;
            }
          }
        }

        if (*(v38 + 16))
        {
          v72 = sub_10000E53C(0x73696E616863656DLL, 0xE90000000000006DLL);
          if (v73)
          {
            sub_100007484(*(v38 + 56) + 32 * v72, &v125);
            if (swift_dynamicCast())
            {

              v74 = v123;
              v75 = v124;
              sub_100798C24();
              v76._rawValue = &off_100A0CBA8;
              v127._countAndFlagsBits = v74;
              v127._object = v75;
              v77 = sub_1007A3964(v76, v127);

              if (v77 > 2)
              {
                v87 = v100;
                v88 = v101;
                (*(v100 + 56))(v99, 1, 1, v101);
                (*(v87 + 104))(v98, enum case for MarkedAsFinishedMechanism.unknown(_:), v88);
              }

              else
              {
                v78 = **(&off_100A16EC0 + v77);
                v79 = v100;
                v80 = v99;
                v81 = v101;
                (*(v100 + 104))(v99, v78, v101);
                (*(v79 + 56))(v80, 0, 1, v81);
                (*(v79 + 32))();
              }

              v69 = v110;
              sub_100798C14();
              v70 = v96;
              v71 = v97;
              (*(v96 + 16))(v95, v69, v97);
              sub_100798854();
              goto LABEL_42;
            }
          }
        }

        if (*(v38 + 16) && (v82 = sub_10000E53C(0x6D6D6F6365526577, 0xED00006465646E65), (v83 & 1) != 0))
        {
          sub_100007484(*(v38 + 56) + 32 * v82, &v125);

          if (swift_dynamicCast())
          {
            v69 = v91;
            sub_100798564();
            sub_100798554();
            v70 = v93;
            v71 = v94;
            (*(v93 + 16))(v92, v69, v94);
            sub_100798844();
            goto LABEL_42;
          }
        }

        else
        {
        }

LABEL_43:
        (*(v42 + 8))(v61, v120);
        sub_1000074E0(v126);
        v84 = v90;
LABEL_44:
        sub_100007840(v84, &qword_100ADD638);
        (*(v118 + 32))(v84, v57, v60);
        return v115(v84, 0, 1, v60);
      }
    }

    sub_100798804();
    goto LABEL_15;
  }

LABEL_8:
  sub_10079AC84();
  sub_100359B60(a1, &v125);
  v49 = sub_10079ACC4();
  v50 = sub_1007A29B4();
  sub_100359BBC(a1);
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v125 = v52;
    *v51 = 136315138;
    v53 = sub_1007997A4();
    v55 = sub_1000070F4(v53, v54, &v125);

    *(v51 + 4) = v55;
    _os_log_impl(&_mh_execute_header, v49, v50, "Can't create protobuf for property %s", v51, 0xCu);
    sub_1000074E0(v52);
  }

  (*(v121 + 8))(v8, v122);
  return sub_1000074E0(v126);
}

uint64_t sub_10034F3A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v139 = a7;
  v136 = a6;
  v152 = a4;
  v163 = a3;
  v141 = sub_10079ACE4();
  v140 = *(v141 - 8);
  __chkstk_darwin(v141);
  v138 = &v133 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v137 = &v133 - v11;
  v151 = sub_1001F1160(&qword_100ADD5B8);
  v135 = *(v151 - 8);
  v133 = *(v135 + 64);
  __chkstk_darwin(v151);
  v134 = &v133 - v12;
  v13 = sub_1007988C4();
  v180 = *(v13 - 8);
  __chkstk_darwin(v13);
  v179 = &v133 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v178 = &v133 - v16;
  v17 = sub_1001F1160(&qword_100ADD620);
  __chkstk_darwin(v17 - 8);
  v162 = &v133 - v18;
  v167 = sub_100798924();
  v156 = *(v167 - 8);
  __chkstk_darwin(v167);
  v166 = &v133 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v133 - v21;
  v147 = sub_100796AD4();
  v146 = *(v147 - 8);
  __chkstk_darwin(v147);
  v144 = &v133 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_100796BB4();
  v143 = *(v145 - 8);
  __chkstk_darwin(v145);
  v25 = &v133 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_10079AA74();
  __chkstk_darwin(v26 - 8);
  v27 = sub_1007989C4();
  v150 = *(v27 - 8);
  __chkstk_darwin(v27);
  v29 = &v133 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007989B4();
  v148 = a1;
  sub_100796534();
  v142 = v25;
  sub_10079AA64();
  sub_100798984();
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  v155 = v30 + 16;
  v149 = v30;
  *(v30 + 24) = 0xE000000000000000;
  swift_beginAccess();
  v164 = a2;
  v31 = *(a2 + 16);
  v32 = *(v31 + 16);
  v176 = v22;
  if (v32)
  {
    v33 = sub_1005D6574(v32, 0);
    v177 = sub_1005D886C(&aBlock, v33 + 4, v32, v31);
    v175 = v184;
    swift_bridgeObjectRetain_n();
    sub_10004DC54();
    if (v177 != v32)
    {
      goto LABEL_54;
    }

    v22 = v176;
  }

  else
  {

    v33 = _swiftEmptyArrayStorage;
  }

  aBlock._countAndFlagsBits = v33;
  sub_100357490(&aBlock);
  v170 = 0;

  countAndFlagsBits = aBlock._countAndFlagsBits;
  v35 = *(aBlock._countAndFlagsBits + 16);
  v161 = v27;
  v165 = v29;
  v160 = v35;
  if (!v35)
  {
LABEL_38:

    v93 = v142;
    sub_100796534();
    v94 = v144;
    sub_1007963F4();
    sub_1000228AC(&qword_100ADD570, 255, &type metadata accessor for Date.ISO8601FormatStyle);
    v95 = v147;
    sub_100796B94();
    (*(v146 + 8))(v94, v95);
    (*(v143 + 8))(v93, v145);
    v97 = aBlock._countAndFlagsBits;
    object = aBlock._object;
    v98 = *(sub_1007989A4() + 16);

    if (v98)
    {
      v99 = objc_allocWithZone(BDSMutableSecureEngagementData);
      v100 = sub_1007A2214();
      v101 = [v99 initWithStartTimestampString:v100 durationInterval:86400.0];

      sub_1000228AC(&unk_100ADD628, 255, &type metadata accessor for PBPropertyTimeSlice);
      v102 = v170;
      v103 = sub_10079AAB4();
      if (v102)
      {

        v105 = v138;
        sub_10079AC84();
        swift_errorRetain();
        v106 = sub_10079ACC4();
        v107 = sub_1007A29B4();

        if (os_log_type_enabled(v106, v107))
        {
          v108 = swift_slowAlloc();
          v109 = swift_slowAlloc();
          aBlock._countAndFlagsBits = v109;
          *v108 = 136315138;
          swift_getErrorValue();
          v110 = sub_1007A3B84();
          v112 = sub_1000070F4(v110, v111, &aBlock._countAndFlagsBits);

          *(v108 + 4) = v112;
          _os_log_impl(&_mh_execute_header, v106, v107, "Could not convert property value to a valid JSON data object: %s", v108, 0xCu);
          sub_1000074E0(v109);
          v27 = v161;

          v29 = v165;
        }

        (*(v140 + 8))(v105, v141);
        swift_errorRetain();
        EngagementManagerAnalyticsHelper.registerSyncToCloudKitError(_:)(v102);
        aBlock._countAndFlagsBits = v102;
        LOBYTE(aBlock._object) = 1;
        sub_1007A26B4();

        (*(v150 + 8))(v29, v27);
      }

      else
      {
        v180 = v103;
        v119 = v104;
        isa = sub_1007969C4().super.isa;
        [v101 setValue:isa];

        v179 = v101;
        v121 = v135;
        v122 = v134;
        v123 = v151;
        (*(v135 + 16))(v134, v152, v151);
        v124 = (*(v121 + 80) + 40) & ~*(v121 + 80);
        v125 = (v133 + v124 + 7) & 0xFFFFFFFFFFFFFFF8;
        v126 = swift_allocObject();
        *(v126 + 2) = v97;
        *(v126 + 3) = object;
        v127 = v139;
        *(v126 + 4) = v139;
        (*(v121 + 32))(&v126[v124], v122, v123);
        *&v126[v125] = v149;
        v184 = sub_10035A0B8;
        v185 = v126;
        aBlock._countAndFlagsBits = _NSConcreteStackBlock;
        aBlock._object = 1107296256;
        v182 = sub_1006412EC;
        v183 = &unk_100A16D58;
        v128 = _Block_copy(&aBlock);
        v129 = v179;
        v130 = v127;

        [v136 setEngagementData:v129 completion:v128];
        sub_10000ADCC(v180, v119);
        _Block_release(v128);

        (*(v150 + 8))(v165, v161);
      }
    }

    else
    {
      v113 = v137;
      sub_10079AC84();

      v114 = sub_10079ACC4();
      v115 = sub_1007A29A4();

      if (os_log_type_enabled(v114, v115))
      {
        v116 = swift_slowAlloc();
        v117 = swift_slowAlloc();
        aBlock._countAndFlagsBits = v117;
        *v116 = 136315138;
        v118 = sub_1000070F4(v97, object, &aBlock._countAndFlagsBits);

        *(v116 + 4) = v118;
        _os_log_impl(&_mh_execute_header, v114, v115, "Skipping syncing empty bucket %s to engagement data", v116, 0xCu);
        sub_1000074E0(v117);
        v29 = v165;
      }

      else
      {
      }

      (*(v140 + 8))(v113, v141);
      v131 = v150;
      aBlock._countAndFlagsBits = 0;
      LOBYTE(aBlock._object) = 0;
      sub_1007A26B4();
      (*(v131 + 8))(v29, v27);
    }
  }

  v36 = 0;
  v159 = aBlock._countAndFlagsBits + 32;
  v174 = v180 + 16;
  v173 = v180 + 32;
  v172 = v180 + 8;
  v154 = (v156 + 16);
  v153 = v156 + 32;
  v157 = (v156 + 8);
  v175 = v13;
  v158 = aBlock._countAndFlagsBits;
  while (v36 < *(countAndFlagsBits + 16))
  {
    v169 = v36;
    v37 = (v159 + 16 * v36);
    v38 = *v37;
    v39 = v37[1];
    v40 = v164;
    swift_beginAccess();
    v41 = *(v40 + 16);
    v42 = *(v41 + 16);

    if (!v42)
    {
      goto LABEL_55;
    }

    v43 = sub_10000E53C(v38, v39);
    if ((v44 & 1) == 0)
    {
      goto LABEL_55;
    }

    v171 = v38;
    v45 = *(*(v41 + 56) + 8 * v43);
    swift_endAccess();

    sub_100798914();
    v46 = v163;
    swift_beginAccess();
    v47 = *(v46 + 16);
    v48 = v162;
    if (*(v47 + 16) && (v49 = sub_10000E53C(v171, v39), (v50 & 1) != 0))
    {
      v51 = v49;
      v52 = *(v47 + 56);
      v53 = sub_100798B14();
      v54 = v39;
      v55 = *(v53 - 8);
      (*(v55 + 16))(v48, v52 + *(v55 + 72) * v51, v53);
      (*(v55 + 56))(v48, 0, 1, v53);
      v39 = v54;
    }

    else
    {
      v53 = sub_100798B14();
      (*(*(v53 - 8) + 56))(v48, 1, 1, v53);
    }

    swift_endAccess();
    sub_100798B14();
    if ((*(*(v53 - 8) + 48))(v48, 1, v53) == 1)
    {
      goto LABEL_56;
    }

    sub_1007988E4();
    v56 = *(v45 + 16);
    v168 = v39;
    if (v56)
    {
      v57 = sub_1005D6574(v56, 0);
      v58 = sub_1005D886C(&aBlock, v57 + 4, v56, v45);
      v177 = v184;
      swift_bridgeObjectRetain_n();
      sub_10004DC54();
      if (v58 != v56)
      {
        goto LABEL_53;
      }

      v22 = v176;
    }

    else
    {

      v57 = _swiftEmptyArrayStorage;
    }

    aBlock._countAndFlagsBits = v57;
    v59 = v170;
    sub_100357490(&aBlock);
    v170 = v59;
    if (v59)
    {
      goto LABEL_57;
    }

    v60 = aBlock._countAndFlagsBits;
    v177 = *(aBlock._countAndFlagsBits + 16);
    if (v177)
    {
      v61 = 0;
      v62 = (aBlock._countAndFlagsBits + 40);
      while (v61 < *(v60 + 16))
      {
        if (!*(v45 + 16))
        {
          goto LABEL_50;
        }

        v63 = *(v62 - 1);
        v64 = *v62;

        v65 = sub_10000E53C(v63, v64);
        v67 = v66;

        if ((v67 & 1) == 0)
        {
          goto LABEL_51;
        }

        v68 = *(v180 + 72);
        v69 = *(v45 + 56) + v68 * v65;
        v70 = *(v180 + 16);
        v71 = v178;
        v70(v178, v69, v13);
        v70(v179, v71, v13);
        v72 = sub_1007988F4();
        v74 = v73;
        v75 = *v73;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v74 = v75;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v75 = sub_10066B24C(0, v75[2] + 1, 1, v75);
          *v74 = v75;
        }

        v78 = v75[2];
        v77 = v75[3];
        if (v78 >= v77 >> 1)
        {
          v75 = sub_10066B24C(v77 > 1, v78 + 1, 1, v75);
          *v74 = v75;
        }

        ++v61;
        v75[2] = v78 + 1;
        v79 = v180;
        v80 = v75 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + v78 * v68;
        v13 = v175;
        (*(v180 + 32))(v80, v179, v175);
        v72(&aBlock, 0);
        (*(v79 + 8))(v178, v13);
        v62 += 2;
        v22 = v176;
        if (v177 == v61)
        {
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      break;
    }

LABEL_32:

    v81 = *(sub_100798904() + 16);

    if (v81)
    {
      aBlock._countAndFlagsBits = v171;
      aBlock._object = v168;
      v187._countAndFlagsBits = 40;
      v187._object = 0xE100000000000000;
      sub_1007A23D4(v187);
      v82 = *(v45 + 16);

      v186 = v82;
      v188._countAndFlagsBits = sub_1007A3A74();
      sub_1007A23D4(v188);

      v189._countAndFlagsBits = 8233;
      v189._object = 0xE200000000000000;
      sub_1007A23D4(v189);
      sub_1007A23D4(aBlock);

      (*v154)(v166, v22, v167);
      v29 = v165;
      v83 = sub_100798994();
      v85 = v84;
      v86 = *v84;
      v87 = swift_isUniquelyReferenced_nonNull_native();
      *v85 = v86;
      v27 = v161;
      if ((v87 & 1) == 0)
      {
        v86 = sub_10066B224(0, v86[2] + 1, 1, v86);
        *v85 = v86;
      }

      v89 = v86[2];
      v88 = v86[3];
      if (v89 >= v88 >> 1)
      {
        v86 = sub_10066B224(v88 > 1, v89 + 1, 1, v86);
        *v85 = v86;
      }

      countAndFlagsBits = v158;
      v86[2] = v89 + 1;
      v90 = v156;
      v91 = v86 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + *(v90 + 72) * v89;
      v92 = v167;
      (*(v156 + 32))(v91, v166, v167);
      v83(&aBlock, 0);
      (*(v90 + 8))(v22, v92);
    }

    else
    {
      (*v157)(v22, v167);

      v27 = v161;
      v29 = v165;
      countAndFlagsBits = v158;
    }

    v36 = v169 + 1;
    if (v169 + 1 == v160)
    {
      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  swift_endAccess();
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:

  __break(1u);
  return result;
}

uint64_t sub_100350818(int a1, char a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v42 = a4;
  v43 = a1;
  v14 = sub_10079ACE4();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v40 - v19;
  if (a3)
  {
    v44 = v14;
    v21 = a2;
    swift_errorRetain();
    sub_10079AC84();
    swift_errorRetain();

    v22 = sub_10079ACC4();
    v23 = sub_1007A29B4();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v40 = a6;
      v26 = v25;
      v27 = swift_slowAlloc();
      v41 = a7;
      v28 = v27;
      v45 = v27;
      *v24 = 136315906;
      *(v24 + 4) = sub_1000070F4(v42, a5, &v45);
      *(v24 + 12) = 1024;
      *(v24 + 14) = v43 & 1;
      *(v24 + 18) = 1024;
      *(v24 + 20) = v21 & 1;
      *(v24 + 24) = 2112;
      swift_errorRetain();
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 26) = v29;
      *v26 = v29;
      _os_log_impl(&_mh_execute_header, v22, v23, "setEngagementData(%s) success=%{BOOL}d hasChanges=%{BOOL}d error=%@", v24, 0x22u);
      sub_100007840(v26, &unk_100AD9480);

      sub_1000074E0(v28);
    }

    (*(v15 + 8))(v20, v44);
    swift_errorRetain();
    EngagementManagerAnalyticsHelper.registerSyncToCloudKitError(_:)(a3);
    v45 = a3;
    v46 = 1;
    sub_1001F1160(&qword_100ADD5B8);
    sub_1007A26B4();
  }

  else
  {
    sub_10079AC84();

    v31 = sub_10079ACC4();
    v32 = sub_1007A29D4();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v44 = v14;
      v34 = a2;
      v35 = v33;
      v36 = swift_slowAlloc();
      v41 = a7;
      v47 = v36;
      *v35 = 136315906;
      *(v35 + 4) = sub_1000070F4(v42, a5, &v47);
      *(v35 + 12) = 2080;
      swift_beginAccess();
      v38 = *(a8 + 16);
      v37 = *(a8 + 24);

      v39 = sub_1000070F4(v38, v37, &v47);

      *(v35 + 14) = v39;
      *(v35 + 22) = 1024;
      *(v35 + 24) = v43 & 1;
      *(v35 + 28) = 1024;
      *(v35 + 30) = v34 & 1;
      _os_log_impl(&_mh_execute_header, v31, v32, "setEngagementData(%s) %ssuccess=%{BOOL}d hasChanges=%{BOOL}d", v35, 0x22u);
      swift_arrayDestroy();

      (*(v15 + 8))(v17, v44);
    }

    else
    {

      (*(v15 + 8))(v17, v14);
    }

    EngagementManagerAnalyticsHelper.registerSyncToCloudKitSuccess()();
    v47 = 0;
    v48 = 0;
    sub_1001F1160(&qword_100ADD5B8);
    return sub_1007A26B4();
  }
}

void sub_100350CC4(void *a1, char a2, void *a3)
{
  if ((a2 & 1) == 0)
  {
    v5 = objc_opt_self();
    v6 = a1;
    v7 = [v5 sharedManager];
    v8 = [v7 engagementManager];

    v18 = sub_1007997E4();
    v19 = &protocol witness table for CDCloudSyncVersions;
    *&v16 = v6;
    type metadata accessor for CDCloudSyncVersionsAdaptor();
    v9 = swift_allocObject();
    sub_1000077C0(&v16, v9 + 16);
    v10 = objc_allocWithZone(BCMutableCloudSyncVersions);
    v11 = v6;
    v12 = [v10 initWithCloudSyncVersions:{v9, v16}];

    if (v12)
    {
      v13 = swift_allocObject();
      *(v13 + 16) = a3;
      v19 = sub_10035A1A0;
      v20 = v13;
      *&v16 = _NSConcreteStackBlock;
      *(&v16 + 1) = 1107296256;
      v17 = sub_1003547B4;
      v18 = &unk_100A16DD0;
      v14 = _Block_copy(&v16);
      v15 = a3;

      [v8 getEngagementDataChangesSince:v12 completion:v14];
      _Block_release(v14);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    sub_10035A194(a1, 0);
  }
}

uint64_t sub_100350EA0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, int a5, char *a6)
{
  v53 = a6;
  v55 = a5;
  v9 = sub_10079ACE4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10079AC84();

  v13 = a3;
  swift_errorRetain();
  v14 = sub_10079ACC4();
  v15 = sub_1007A2994();
  v54 = v13;

  v16 = v14;

  v17 = v15;
  v18 = os_log_type_enabled(v16, v15);
  v52 = a1;
  if (v18)
  {
    v49 = v10;
    v50 = v9;
    v51 = a3;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v56[0] = v48;
    *v19 = 136316162;
    if (!a1 && _swiftEmptyArrayStorage >> 62 && sub_1007A38D4())
    {
      sub_1001F2658(_swiftEmptyArrayStorage);
    }

    v47 = v16;
    sub_10000A7C4(0, &qword_100AD3C58);
    sub_10035A1A8();

    v21 = sub_1007A2844();
    v23 = v22;

    v24 = sub_1000070F4(v21, v23, v56);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2080;

    v25 = sub_1007A2844();
    v27 = v26;

    v28 = sub_1000070F4(v25, v27, v56);

    *(v19 + 14) = v28;
    *(v19 + 22) = 2112;
    v29 = v54;
    *(v19 + 24) = v54;
    a3 = v51;
    *v20 = v51;
    *(v19 + 32) = 2112;
    v30 = v29;
    if (a4)
    {
      swift_errorRetain();
      v31 = _swift_stdlib_bridgeErrorToNSError();
      v32 = v31;
    }

    else
    {
      v31 = 0;
      v32 = 0;
    }

    v33 = v55;
    v34 = v49;
    *(v19 + 34) = v31;
    v20[1] = v32;
    *(v19 + 42) = 1024;
    *(v19 + 44) = v33 & 1;
    v35 = v17;
    v36 = v47;
    _os_log_impl(&_mh_execute_header, v47, v35, "updated: %s removed: %s) currentSyncVersions:%@ error=%@ fetchAgain=%{BOOL}d", v19, 0x30u);
    sub_1001F1160(&unk_100AD9480);
    swift_arrayDestroy();

    swift_arrayDestroy();

    (*(v34 + 8))(v12, v50);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
    v29 = v54;
    v33 = v55;
  }

  v37 = OBJC_IVAR___BKEngagementManager_analyticsHelper;
  v38 = v53;
  result = swift_beginAccess();
  v40 = *&v38[v37];
  if (v40)
  {
    v41 = v40;
    EngagementManagerAnalyticsHelper.registerSyncFromCloudKitError(_:)(a4);

    v42 = *&v38[OBJC_IVAR___BKEngagementManager_manager];
    v43 = swift_allocObject();
    *(v43 + 16) = v52;
    *(v43 + 24) = v38;
    *(v43 + 32) = a3;
    *(v43 + 40) = a4;
    *(v43 + 48) = v33 & 1;

    v44 = v29;
    swift_errorRetain();
    v45 = v42;
    v46 = v38;
    sub_100799974();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100351348(unint64_t a1, char *a2, uint64_t a3, void *a4, uint64_t a5, int a6)
{
  v342 = a6;
  v343 = a5;
  v350 = a4;
  v413 = a3;
  v410 = a2;
  v7 = 0;
  v8 = sub_1001F1160(&unk_100ADB5C0);
  __chkstk_darwin(v8 - 8);
  v359 = &v315 - v9;
  v397 = sub_1001F1160(&unk_100AE9030);
  v396 = *(v397 - 8);
  __chkstk_darwin(v397);
  v406 = &v315 - v10;
  v339 = sub_100798574();
  v11 = *(v339 - 8);
  __chkstk_darwin(v339);
  v338 = &v315 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v341 = sub_100798B24();
  v13 = *(v341 - 8);
  __chkstk_darwin(v341);
  v340 = &v315 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v355 = sub_100798C34();
  v402 = *(v355 - 8);
  __chkstk_darwin(v355);
  v354 = &v315 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v384 = sub_100798BB4();
  v401 = *(v384 - 8);
  __chkstk_darwin(v384);
  v383 = &v315 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v367 = sub_100798534();
  v400 = *(v367 - 8);
  __chkstk_darwin(v367);
  v370 = &v315 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1001F1160(&qword_100ADD690);
  __chkstk_darwin(v18 - 8);
  v20 = &v315 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v315 - v22;
  v423 = sub_100796BB4();
  v398 = *(v423 - 8);
  __chkstk_darwin(v423);
  v422 = &v315 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v409 = &v315 - v26;
  v420 = sub_10079AA74();
  v405 = *(v420 - 8);
  __chkstk_darwin(v420);
  v419 = &v315 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v408 = sub_100796AD4();
  v395 = *(v408 - 8);
  __chkstk_darwin(v408);
  v407 = &v315 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v417 = sub_1007988C4();
  v411 = *(v417 - 8);
  __chkstk_darwin(v417);
  v30 = &v315 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v393 = sub_10079ACE4();
  v394 = *(v393 - 8);
  __chkstk_darwin(v393);
  v386 = &v315 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v360 = &v315 - v33;
  __chkstk_darwin(v34);
  v346 = &v315 - v35;
  __chkstk_darwin(v36);
  v38 = &v315 - v37;
  __chkstk_darwin(v39);
  v345 = &v315 - v40;
  v361 = sub_100798B14();
  v389 = *(v361 - 8);
  __chkstk_darwin(v361);
  v332 = &v315 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v344 = &v315 - v43;
  __chkstk_darwin(v44);
  v46 = &v315 - v45;
  __chkstk_darwin(v47);
  v381 = &v315 - v48;
  v49 = sub_100798924();
  v368 = *(v49 - 8);
  v369 = v49;
  __chkstk_darwin(v49);
  v379 = &v315 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v391 = sub_1007989C4();
  v390 = *(v391 - 8);
  __chkstk_darwin(v391);
  v387 = &v315 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v52);
  v325 = &v315 - v53;
  v54 = sub_10079AA94();
  __chkstk_darwin(v54 - 8);
  v378 = &v315 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1001F1160(&qword_100ADD698);
  __chkstk_darwin(v56 - 8);
  v376 = (&v315 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v58);
  v377 = &v315 - v59;
  __chkstk_darwin(v60);
  v388 = &v315 - v61;
  v404 = v11;
  v403 = v13;
  if (a1 >> 62)
  {
    goto LABEL_210;
  }

  v62 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v385 = v38;
  v424 = v30;
  v399 = v20;
  v63 = _swiftEmptyDictionarySingleton;
  v412 = v23;
  v331 = v46;
  if (v62)
  {
    v38 = 0;
    v418 = (a1 & 0xC000000000000001);
    v416 = a1 & 0xFFFFFFFFFFFFFF8;
    v415 = a1;
    v414 = v7;
    do
    {
      if (v418)
      {
        v23 = sub_1007A3784();
        v65 = (v38 + 1);
        if (__OFADD__(v38, 1))
        {
          goto LABEL_201;
        }
      }

      else
      {
        if (v38 >= *(v416 + 16))
        {
          goto LABEL_202;
        }

        v23 = *(a1 + 8 * v38 + 32);
        swift_unknownObjectRetain();
        v65 = (v38 + 1);
        if (__OFADD__(v38, 1))
        {
          goto LABEL_201;
        }
      }

      v421 = v65;
      v30 = v62;
      v66 = [v23 eventName];
      v46 = sub_1007A2254();
      v7 = v67;

      swift_unknownObjectRetain();
      v20 = v63;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v432[0] = v20;
      v70 = sub_10000E53C(v46, v7);
      v71 = *(v20 + 16);
      v72 = (v69 & 1) == 0;
      v73 = v71 + v72;
      if (__OFADD__(v71, v72))
      {
        goto LABEL_203;
      }

      a1 = v69;
      if (*(v20 + 24) >= v73)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v69)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v20 = v432;
          sub_1002F15A0();
          if (a1)
          {
            goto LABEL_5;
          }
        }
      }

      else
      {
        sub_1003D4D58(v73, isUniquelyReferenced_nonNull_native);
        v20 = v432[0];
        v74 = sub_10000E53C(v46, v7);
        if ((a1 & 1) != (v75 & 1))
        {
          goto LABEL_223;
        }

        v70 = v74;
        if (a1)
        {
LABEL_5:

          v63 = v432[0];
          v64 = *(v432[0] + 56);
          v20 = *(v64 + 8 * v70);
          *(v64 + 8 * v70) = v23;
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          goto LABEL_6;
        }
      }

      v63 = v432[0];
      *(v432[0] + 8 * (v70 >> 6) + 64) |= 1 << v70;
      v76 = (v63[6] + 16 * v70);
      *v76 = v46;
      v76[1] = v7;
      *(v63[7] + 8 * v70) = v23;
      swift_unknownObjectRelease();
      v77 = v63[2];
      v78 = __OFADD__(v77, 1);
      v79 = v77 + 1;
      if (v78)
      {
        goto LABEL_206;
      }

      v63[2] = v79;
LABEL_6:
      ++v38;
      v62 = v30;
      v7 = v414;
      a1 = v415;
    }

    while (v421 != v30);
  }

  v38 = v410;
  if (!v410)
  {
    if (_swiftEmptyArrayStorage >> 62)
    {
      goto LABEL_216;
    }

LABEL_26:
    v38 = &_swiftEmptySetSingleton;
  }

LABEL_27:
  v380 = v63;
  if ((v38 & 0xC000000000000001) != 0)
  {

    sub_1007A35E4();
    sub_10000A7C4(0, &qword_100AD3C58);
    sub_10035A1A8();
    sub_1007A2864();
    v38 = v432[0];
    v46 = v432[1];
    v20 = v432[2];
    v23 = v432[3];
    v30 = v432[4];
  }

  else
  {
    v81 = -1 << *(v38 + 32);
    v46 = v38 + 56;
    v20 = ~v81;
    v82 = -v81;
    if (v82 < 64)
    {
      v83 = ~(-1 << v82);
    }

    else
    {
      v83 = -1;
    }

    v30 = (v83 & *(v38 + 56));

    v23 = 0;
  }

  v348 = v20;
  v84 = (v20 + 64) >> 6;
  a1 = v390 + 56;
  v357 = (v398 + 56);
  v392 = (v394 + 1);
  v421 = (v405 + 1);
  v418 = (v398 + 8);
  v405 = (v395 + 8);
  LODWORD(v395) = enum case for PBPropertyValue.OneOf_Params.noParams(_:);
  v324 = (v404 + 32);
  v322 = (v404 + 8);
  v336 = (v403 + 11);
  v337 = (v402 + 32);
  v382 = enum case for PBPropertyValue.OneOf_Params.floatParam(_:);
  v316 = v403 + 1;
  v333 = (v402 + 8);
  v366 = enum case for PBPropertyValue.OneOf_Params.bookReadParams(_:);
  v352 = (v400 + 32);
  v349 = (v400 + 8);
  v351 = enum case for PBPropertyValue.OneOf_Params.markedAsFinishedParam(_:);
  v364 = (v401 + 8);
  v365 = (v401 + 32);
  v394 = (v398 + 16);
  *&v80 = 136315394;
  v326 = v80;
  *&v80 = 136315138;
  v321 = v80;
  *&v80 = 138412290;
  v353 = v80;
  v363 = v389 + 8;
  v347 = v389 + 16;
  v335 = enum case for PBPropertyValue.OneOf_Params.bookImpressionParam(_:);
  v334 = enum case for MarkedAsFinishedMechanism.UNRECOGNIZED(_:);
  v330 = enum case for MarkedAsFinishedMechanism.unknown(_:);
  v323 = enum case for MarkedAsFinishedMechanism.manually(_:);
  v320 = enum case for MarkedAsFinishedMechanism.automatically(_:);
  v374 = v38;
  v375 = (v390 + 48);
  v358 = v368 + 16;
  v404 = v411 + 16;
  v403 = (v411 + 8);
  v356 = (v368 + 8);
  v318 = (v390 + 16);
  v319 = (v390 + 32);
  v317 = (v390 + 8);
  v371 = v390 + 56;
  v372 = v84;
  v373 = v46;
  while ((v38 & 0x8000000000000000) == 0)
  {
    v85 = v23;
    v86 = v30;
    v87 = v23;
    if (!v30)
    {
      while (1)
      {
        v87 = v85 + 1;
        if (__OFADD__(v85, 1))
        {
          break;
        }

        if (v87 >= v84)
        {
          goto LABEL_197;
        }

        v86 = *(v46 + 8 * v87);
        ++v85;
        if (v86)
        {
          goto LABEL_40;
        }
      }

      __break(1u);
LABEL_201:
      __break(1u);
LABEL_202:
      __break(1u);
LABEL_203:
      __break(1u);
LABEL_204:
      __break(1u);
LABEL_205:
      __break(1u);
LABEL_206:
      __break(1u);
LABEL_207:
      __break(1u);
LABEL_208:
      __break(1u);
LABEL_209:
      __break(1u);
LABEL_210:
      v62 = sub_1007A38D4();
      goto LABEL_3;
    }

LABEL_40:
    v398 = (v86 - 1) & v86;
    v20 = *(*(v38 + 48) + ((v87 << 9) | (8 * __clz(__rbit64(v86)))));
    if (!v20)
    {
      goto LABEL_197;
    }

LABEL_44:
    objc_opt_self();
    v89 = swift_dynamicCastObjCClass();
    v90 = v20;
    if (v89)
    {
      v91 = v89;
      v389 = v90;
      v390 = v87;
      v92 = *a1;
      v63 = a1;
      a1 = v388;
      v46 = v391;
      v92(v388, 1, 1, v391);
      v93 = [v91 value];
      sub_1007969D4();

      v431 = 0;
      v429 = 0u;
      v430 = 0u;
      sub_10079AA84();
      sub_1000228AC(&unk_100ADD628, 255, &type metadata accessor for PBPropertyTimeSlice);
      v94 = v377;
      sub_10079AAA4();
      if (v7)
      {
        v95 = OBJC_IVAR___BKEngagementManager_analyticsHelper;
        v96 = v413;
        swift_beginAccess();
        v97 = *(v96 + v95);
        if (!v97)
        {
          goto LABEL_222;
        }

        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v99 = OBJC_IVAR___BKEngagementManager_metadata;
          v100 = Strong;
          swift_beginAccess();
          v101 = *&v100[v99];
          swift_errorRetain();
          swift_errorRetain();
          v102 = v97;
          v103 = v101;

          v104 = OBJC_IVAR___BKEngagementManagerMetadata_lastSyncFromCloudKitError;
          swift_beginAccess();
          *&v103[v104] = v7;
          swift_errorRetain();
        }

        else
        {
          swift_errorRetain();
          swift_errorRetain();
          v106 = v97;
        }

        v107 = swift_unknownObjectWeakLoadStrong();
        if (v107)
        {
          v108 = OBJC_IVAR___BKEngagementManager_metadata;
          v109 = v107;
          swift_beginAccess();
          v110 = *&v109[v108];

          v111 = v359;
          sub_100796BA4();

          (*v357)(v111, 0, 1, v423);
          v112 = OBJC_IVAR___BKEngagementManagerMetadata_lastSyncFromCloudKitErrorTimestamp;
          swift_beginAccess();
          sub_1002391EC(v111, v110 + v112, &unk_100ADB5C0);
          swift_endAccess();
        }

        else
        {
        }

        sub_10079AC84();
        swift_errorRetain();
        v113 = sub_10079ACC4();
        v114 = sub_1007A29B4();

        if (os_log_type_enabled(v113, v114))
        {
          v115 = swift_slowAlloc();
          v116 = swift_slowAlloc();
          *v115 = v353;
          swift_errorRetain();
          v117 = _swift_stdlib_bridgeErrorToNSError();
          *(v115 + 4) = v117;
          *v116 = v117;
          _os_log_impl(&_mh_execute_header, v113, v114, "Error while deserializing property time slice %@", v115, 0xCu);
          sub_100007840(v116, &unk_100AD9480);
        }

        else
        {
        }

        v38 = v424;
        v46 = v391;
        v105 = v387;
        v23 = v376;
        (*v392)(v386, v393);
        v7 = 0;
        a1 = v388;
        v20 = &qword_100ADD698;
        v30 = &unk_10081CA48;
      }

      else
      {
        v20 = &qword_100ADD698;
        v30 = &unk_10081CA48;
        sub_100007840(a1, &qword_100ADD698);
        v92(v94, 0, 1, v46);
        sub_10020B3C8(v94, a1, &qword_100ADD698);
        v38 = v424;
        v105 = v387;
        v23 = v376;
      }

      sub_1000077D8(a1, v23, &qword_100ADD698);
      if ((*v375)(v23, 1, v46) == 1)
      {
        sub_100007840(a1, &qword_100ADD698);

        sub_100007840(v23, &qword_100ADD698);
        v23 = v390;
        v30 = v398;
        v46 = v373;
        v38 = v374;
        a1 = v371;
        v84 = v372;
      }

      else
      {
        v20 = v325;
        (*v319)(v325, v23, v46);
        v427 = 0;
        v428 = 0xE000000000000000;
        v118 = sub_1007989A4();
        v329 = *(v118 + 16);
        if (v329)
        {
          v119 = 0;
          v120 = *(v368 + 80);
          v327 = v118;
          v328 = v118 + ((v120 + 32) & ~v120);
          v315 = OBJC_IVAR___BKEngagementManager_manager;
          while (1)
          {
            if (v119 >= *(v118 + 16))
            {
              goto LABEL_209;
            }

            v126 = *(v368 + 72);
            v362 = v119;
            (*(v368 + 16))(v379, v328 + v126 * v119, v369);
            sub_1007988D4();
            v127 = sub_100798AE4();
            v129 = v380[2];
            v414 = v7;
            if (v129)
            {
              v23 = v128;
              v130 = sub_10000E53C(v127, v128);
              v132 = v131;

              if (v132)
              {
                v410 = *(v380[7] + 8 * v130);
                swift_unknownObjectRetain();
                v30 = v412;
                goto LABEL_89;
              }
            }

            else
            {
            }

            v133 = v381;
            sub_100798AA4();
            sub_100799764();
            if ((v134 & 1) == 0)
            {
              sub_100798AE4();
              sub_100798AC4();
              sub_100798A84();
              v151 = objc_allocWithZone(sub_100799824());
              v410 = sub_100799804();
              v152 = sub_100798AE4();
              v23 = v153;
              v154 = v380;
              v155 = swift_isUniquelyReferenced_nonNull_native();
              *&v429 = v154;
              v156 = sub_10000E53C(v152, v23);
              v158 = v154[2];
              v159 = (v157 & 1) == 0;
              v78 = __OFADD__(v158, v159);
              v160 = v158 + v159;
              if (v78)
              {
LABEL_215:
                __break(1u);
LABEL_216:
                if (!sub_1007A38D4())
                {
                  goto LABEL_26;
                }

                sub_1001F2658(_swiftEmptyArrayStorage);
                v38 = v314;
                goto LABEL_27;
              }

              v161 = v157;
              if (v154[3] >= v160)
              {
                if (v155)
                {
                  goto LABEL_83;
                }

                v173 = v156;
                sub_1002F15A0();
                v156 = v173;
                if ((v161 & 1) == 0)
                {
                  goto LABEL_86;
                }

LABEL_84:
                v172 = v156;

                v380 = v429;
                *(*(v429 + 56) + 8 * v172) = v410;
                swift_unknownObjectRelease();
              }

              else
              {
                sub_1003D4D58(v160, v155);
                v156 = sub_10000E53C(v152, v23);
                if ((v161 & 1) != (v162 & 1))
                {
                  goto LABEL_223;
                }

LABEL_83:
                if (v161)
                {
                  goto LABEL_84;
                }

LABEL_86:
                v174 = v429;
                *(v429 + 8 * (v156 >> 6) + 64) |= 1 << v156;
                v175 = (v174[6] + 16 * v156);
                *v175 = v152;
                v175[1] = v23;
                *(v174[7] + 8 * v156) = v410;
                v176 = v174[2];
                v78 = __OFADD__(v176, 1);
                v177 = v176 + 1;
                if (v78)
                {
LABEL_220:
                  __break(1u);
LABEL_221:
                  __break(1u);
LABEL_222:
                  __break(1u);
LABEL_223:
                  result = sub_1007A3B24();
                  __break(1u);
                  return result;
                }

                v380 = v174;
                v174[2] = v177;
              }

              v30 = v412;
              v38 = v424;
LABEL_89:
              v20 = v379;
              v178 = sub_100798904();
              v402 = *(v178 + 16);
              if (v402)
              {
                v46 = 0;
                v401 = v178 + ((*(v411 + 80) + 32) & ~*(v411 + 80));
                v415 = _swiftEmptyArrayStorage;
                v400 = v178;
                while (1)
                {
                  if (v46 >= *(v178 + 16))
                  {
                    goto LABEL_204;
                  }

                  (*(v411 + 16))(v38, v401 + *(v411 + 72) * v46, v417);
                  v180 = sub_100798874();
                  v416 = v46;
                  if (v180)
                  {
                    *&v429 = sub_100798874();
                    v7 = sub_1007A3A74();
                    v63 = v181;
                  }

                  else
                  {
                    v7 = 0;
                    v63 = 0;
                  }

                  v182 = v407;
                  sub_100349EB4(v407);
                  v183 = v419;
                  sub_100798894();
                  v46 = v409;
                  sub_10079AA54();
                  v184 = *v421;
                  (*v421)(v183, v420);
                  v185 = sub_100796AC4();
                  v187 = v186;
                  v38 = *v418;
                  (*v418)(v46, v423);
                  (*v405)(v182, v408);
                  *(&v430 + 1) = &type metadata for String;
                  *&v429 = v185;
                  *(&v429 + 1) = v187;
                  sub_1000076D4(&v429, v426);
                  v20 = _swiftEmptyDictionarySingleton;
                  v23 = swift_isUniquelyReferenced_nonNull_native();
                  v425 = _swiftEmptyDictionarySingleton;
                  a1 = 0x6D617473656D6974;
                  v188 = sub_10000E53C(0x6D617473656D6974, 0xE900000000000070);
                  v190 = _swiftEmptyDictionarySingleton[2];
                  v191 = (v189 & 1) == 0;
                  v78 = __OFADD__(v190, v191);
                  v192 = v190 + v191;
                  if (v78)
                  {
                    goto LABEL_205;
                  }

                  v46 = v189;
                  if (_swiftEmptyDictionarySingleton[3] < v192)
                  {
                    break;
                  }

                  if (v23)
                  {
                    goto LABEL_103;
                  }

                  v20 = &v425;
                  v195 = v188;
                  sub_1002F0EA0();
                  v188 = v195;
                  v23 = v425;
                  if (v46)
                  {
LABEL_104:
                    v194 = (*(v23 + 56) + 32 * v188);
                    sub_1000074E0(v194);
                    sub_1000076D4(v426, v194);
                    goto LABEL_108;
                  }

LABEL_106:
                  *(v23 + 8 * (v188 >> 6) + 64) |= 1 << v188;
                  v196 = (*(v23 + 48) + 16 * v188);
                  *v196 = 0x6D617473656D6974;
                  v196[1] = 0xE900000000000070;
                  sub_1000076D4(v426, (*(v23 + 56) + 32 * v188));
                  v197 = *(v23 + 16);
                  v78 = __OFADD__(v197, 1);
                  v198 = (v197 + 1);
                  if (v78)
                  {
                    goto LABEL_207;
                  }

                  *(v23 + 16) = v198;
LABEL_108:
                  v199 = v419;
                  sub_100798894();
                  sub_10079AA54();
                  v184(v199, v420);
                  sub_100798864();
                  v20 = sub_100798814();
                  v200 = *(v20 - 8);
                  if ((*(v200 + 48))(v30, 1, v20) == 1)
                  {
                    a1 = v63;
                    goto LABEL_178;
                  }

                  v201 = v30;
                  v202 = v399;
                  sub_1000077D8(v201, v399, &qword_100ADD690);
                  v203 = (*(v200 + 88))(v202, v20);
                  a1 = v63;
                  if (v203 == v395)
                  {
                    (*(v200 + 8))(v202, v20);
LABEL_112:
                    v30 = v412;
                    goto LABEL_178;
                  }

                  if (v203 == v382)
                  {
                    v204 = *(v200 + 96);
                    v46 = v200 + 96;
                    v30 = v399;
                    v204(v399, v20);
                    (*v365)(v383, v30, v384);
                    sub_100798B84();
                    *(&v430 + 1) = &type metadata for Float;
                    LODWORD(v429) = v205;
                    sub_1000076D4(&v429, v426);
                    v206 = swift_isUniquelyReferenced_nonNull_native();
                    v425 = v23;
                    v20 = v23;
                    v207 = sub_10000E53C(0x676E69746172, 0xE600000000000000);
                    v209 = *(v23 + 16);
                    v210 = (v208 & 1) == 0;
                    v78 = __OFADD__(v209, v210);
                    v211 = v209 + v210;
                    if (v78)
                    {
                      goto LABEL_208;
                    }

                    v212 = v208;
                    if (*(v23 + 24) >= v211)
                    {
                      v30 = v412;
                      if (v206)
                      {
                        goto LABEL_129;
                      }

                      v20 = &v425;
                      v249 = v207;
                      sub_1002F0EA0();
                      v207 = v249;
                      v23 = v425;
                      if ((v212 & 1) == 0)
                      {
                        goto LABEL_155;
                      }

LABEL_130:
                      v20 = *(v23 + 56) + 32 * v207;
                      sub_1000074E0(v20);
                      sub_1000076D4(v426, v20);
                    }

                    else
                    {
                      sub_1003D4168(v211, v206);
                      v20 = v425;
                      v207 = sub_10000E53C(0x676E69746172, 0xE600000000000000);
                      v30 = v412;
                      if ((v212 & 1) != (v213 & 1))
                      {
                        goto LABEL_223;
                      }

LABEL_129:
                      v23 = v425;
                      if (v212)
                      {
                        goto LABEL_130;
                      }

LABEL_155:
                      *(v23 + 8 * (v207 >> 6) + 64) |= 1 << v207;
                      v250 = (*(v23 + 48) + 16 * v207);
                      *v250 = 0x676E69746172;
                      v250[1] = 0xE600000000000000;
                      sub_1000076D4(v426, (*(v23 + 56) + 32 * v207));
                      v251 = *(v23 + 16);
                      v78 = __OFADD__(v251, 1);
                      v252 = (v251 + 1);
                      if (v78)
                      {
                        goto LABEL_212;
                      }

                      *(v23 + 16) = v252;
                    }

                    (*v364)(v383, v384);
                    goto LABEL_178;
                  }

                  if (v203 == v366)
                  {
                    v214 = v399;
                    (*(v200 + 96))(v399, v20);
                    (*v352)(v370, v214, v367);
                    sub_100798504();
                    *(&v430 + 1) = &type metadata for Float;
                    LODWORD(v429) = v215;
                    sub_1000076D4(&v429, v426);
                    v216 = swift_isUniquelyReferenced_nonNull_native();
                    v425 = v23;
                    v217 = sub_10000E53C(0x73736572676F7270, 0xE800000000000000);
                    v219 = *(v23 + 16);
                    v220 = (v218 & 1) == 0;
                    v78 = __OFADD__(v219, v220);
                    v221 = v219 + v220;
                    if (v78)
                    {
                      __break(1u);
LABEL_212:
                      __break(1u);
LABEL_213:
                      __break(1u);
LABEL_214:
                      __break(1u);
                      goto LABEL_215;
                    }

                    v222 = v218;
                    if (*(v23 + 24) >= v221)
                    {
                      v30 = v412;
                      if (v216)
                      {
                        goto LABEL_137;
                      }

                      v253 = v217;
                      sub_1002F0EA0();
                      v217 = v253;
                      v239 = v425;
                      if ((v222 & 1) == 0)
                      {
                        goto LABEL_159;
                      }

LABEL_138:
                      v240 = (v239[7].isa + 32 * v217);
                      sub_1000074E0(v240);
                      sub_1000076D4(v426, v240);
                    }

                    else
                    {
                      sub_1003D4168(v221, v216);
                      v217 = sub_10000E53C(0x73736572676F7270, 0xE800000000000000);
                      v30 = v412;
                      if ((v222 & 1) != (v223 & 1))
                      {
                        goto LABEL_223;
                      }

LABEL_137:
                      v239 = v425;
                      if (v222)
                      {
                        goto LABEL_138;
                      }

LABEL_159:
                      sub_1003DA920(v217, 0x73736572676F7270, 0xE800000000000000, v426, v239);
                    }

                    v254 = sub_1007984E4();
                    *(&v430 + 1) = &type metadata for Bool;
                    LOBYTE(v429) = v254 & 1;
                    sub_1000076D4(&v429, v426);
                    v255 = swift_isUniquelyReferenced_nonNull_native();
                    v425 = v239;
                    v20 = v239;
                    v256 = sub_10000E53C(0x656C706D61537369, 0xE800000000000000);
                    isa = v239[2].isa;
                    v259 = (v257 & 1) == 0;
                    v78 = __OFADD__(isa, v259);
                    v260 = isa + v259;
                    if (v78)
                    {
                      goto LABEL_213;
                    }

                    v261 = v257;
                    if (v239[3].isa >= v260)
                    {
                      if (v255)
                      {
                        goto LABEL_165;
                      }

                      v20 = &v425;
                      v263 = v256;
                      sub_1002F0EA0();
                      v256 = v263;
                      v23 = v425;
                      if ((v261 & 1) == 0)
                      {
                        goto LABEL_168;
                      }

LABEL_166:
                      v20 = *(v23 + 56) + 32 * v256;
                      sub_1000074E0(v20);
                      sub_1000076D4(v426, v20);
                    }

                    else
                    {
                      sub_1003D4168(v260, v255);
                      v20 = v425;
                      v256 = sub_10000E53C(0x656C706D61537369, 0xE800000000000000);
                      if ((v261 & 1) != (v262 & 1))
                      {
                        goto LABEL_223;
                      }

LABEL_165:
                      v23 = v425;
                      if (v261)
                      {
                        goto LABEL_166;
                      }

LABEL_168:
                      sub_1003DA920(v256, 0x656C706D61537369, 0xE800000000000000, v426, v23);
                    }

                    (*v349)(v370, v367);
                    goto LABEL_178;
                  }

                  if (v203 == v351)
                  {
                    v224 = v399;
                    (*(v200 + 96))(v399, v20);
                    (*v337)(v354, v224, v355);
                    v225 = v340;
                    sub_100798C04();
                    v226 = (*v336)(v225, v341);
                    v227 = 0xE700000000000000;
                    if (v226 == v334)
                    {
                      v228 = 0x6E776F6E6B6E75;
                      v30 = v412;
                    }

                    else
                    {
                      v228 = 0x6E776F6E6B6E75;
                      v30 = v412;
                      if (v226 != v330)
                      {
                        if (v226 == v323)
                        {
                          v227 = 0xE800000000000000;
                          v228 = 0x796C6C61756E616DLL;
                        }

                        else if (v226 == v320)
                        {
                          v228 = 0x6974616D6F747561;
                          v227 = 0xED0000796C6C6163;
                        }

                        else
                        {
                          (*v316)(v340, v341);
                          v227 = 0xE700000000000000;
                          v228 = 0x6E776F6E6B6E75;
                        }
                      }
                    }

                    *(&v430 + 1) = &type metadata for String;
                    *&v429 = v228;
                    *(&v429 + 1) = v227;
                    sub_1000076D4(&v429, v426);
                    v241 = swift_isUniquelyReferenced_nonNull_native();
                    v425 = v23;
                    v20 = v23;
                    v242 = sub_10000E53C(0x73696E616863656DLL, 0xE90000000000006DLL);
                    v244 = *(v23 + 16);
                    v245 = (v243 & 1) == 0;
                    v78 = __OFADD__(v244, v245);
                    v246 = v244 + v245;
                    if (v78)
                    {
                      goto LABEL_214;
                    }

                    v247 = v243;
                    if (*(v23 + 24) >= v246)
                    {
                      if (v241)
                      {
                        goto LABEL_152;
                      }

                      v20 = &v425;
                      v264 = v242;
                      sub_1002F0EA0();
                      v242 = v264;
                      v23 = v425;
                      if ((v247 & 1) == 0)
                      {
                        goto LABEL_171;
                      }

LABEL_153:
                      v20 = *(v23 + 56) + 32 * v242;
                      sub_1000074E0(v20);
                      sub_1000076D4(v426, v20);
                    }

                    else
                    {
                      sub_1003D4168(v246, v241);
                      v20 = v425;
                      v242 = sub_10000E53C(0x73696E616863656DLL, 0xE90000000000006DLL);
                      if ((v247 & 1) != (v248 & 1))
                      {
                        goto LABEL_223;
                      }

LABEL_152:
                      v23 = v425;
                      if (v247)
                      {
                        goto LABEL_153;
                      }

LABEL_171:
                      *(v23 + 8 * (v242 >> 6) + 64) |= 1 << v242;
                      v265 = (*(v23 + 48) + 16 * v242);
                      *v265 = 0x73696E616863656DLL;
                      v265[1] = 0xE90000000000006DLL;
                      sub_1000076D4(v426, (*(v23 + 56) + 32 * v242));
                      v266 = *(v23 + 16);
                      v78 = __OFADD__(v266, 1);
                      v267 = (v266 + 1);
                      if (v78)
                      {
                        goto LABEL_219;
                      }

                      *(v23 + 16) = v267;
                    }

                    (*v333)(v354, v355);
                    goto LABEL_178;
                  }

                  if (v203 != v335)
                  {
                    (*(v200 + 8))(v399, v20);
                    goto LABEL_112;
                  }

                  v229 = v399;
                  (*(v200 + 96))(v399, v20);
                  (*v324)(v338, v229, v339);
                  v230 = sub_100798544();
                  *(&v430 + 1) = &type metadata for Bool;
                  LOBYTE(v429) = v230 & 1;
                  sub_1000076D4(&v429, v426);
                  v231 = swift_isUniquelyReferenced_nonNull_native();
                  v425 = v23;
                  v20 = v23;
                  v232 = sub_10000E53C(0x6D6D6F6365526577, 0xED00006465646E65);
                  v234 = *(v23 + 16);
                  v235 = (v233 & 1) == 0;
                  v78 = __OFADD__(v234, v235);
                  v236 = v234 + v235;
                  if (v78)
                  {
                    __break(1u);
LABEL_219:
                    __break(1u);
                    goto LABEL_220;
                  }

                  v237 = v233;
                  if (*(v23 + 24) < v236)
                  {
                    sub_1003D4168(v236, v231);
                    v20 = v425;
                    v232 = sub_10000E53C(0x6D6D6F6365526577, 0xED00006465646E65);
                    v30 = v412;
                    if ((v237 & 1) != (v238 & 1))
                    {
                      goto LABEL_223;
                    }

LABEL_144:
                    v23 = v425;
                    if ((v237 & 1) == 0)
                    {
                      goto LABEL_175;
                    }

                    goto LABEL_145;
                  }

                  v30 = v412;
                  if (v231)
                  {
                    goto LABEL_144;
                  }

                  v20 = &v425;
                  v268 = v232;
                  sub_1002F0EA0();
                  v232 = v268;
                  v23 = v425;
                  if ((v237 & 1) == 0)
                  {
LABEL_175:
                    *(v23 + 8 * (v232 >> 6) + 64) |= 1 << v232;
                    v269 = *(v23 + 48) + 16 * v232;
                    strcpy(v269, "weRecommended");
                    *(v269 + 14) = -4864;
                    sub_1000076D4(v426, (*(v23 + 56) + 32 * v232));
                    v270 = *(v23 + 16);
                    v78 = __OFADD__(v270, 1);
                    v271 = (v270 + 1);
                    if (v78)
                    {
                      goto LABEL_221;
                    }

                    *(v23 + 16) = v271;
                    goto LABEL_177;
                  }

LABEL_145:
                  v20 = *(v23 + 56) + 32 * v232;
                  sub_1000074E0(v20);
                  sub_1000076D4(v426, v20);
LABEL_177:
                  (*v322)(v338, v339);
LABEL_178:
                  sub_100007840(v30, &qword_100ADD690);
                  v272 = [v410 recordType];
                  if (v272 == 2)
                  {
                    v275 = sub_1007987F4();
                    v277 = v280;
                    v278 = sub_100581680(v23);

                    v279 = 2;
                    goto LABEL_186;
                  }

                  if (v272 == 1)
                  {

                    v275 = sub_1007987F4();
                    v277 = v276;
                    v7 = sub_100581680(v23);

                    a1 = 0;
                    v278 = 0;
                    v279 = 1;
LABEL_186:
                    v281 = v406 + *(v397 + 48);
                    (*v394)();
                    *v281 = v275;
                    *(v281 + 8) = v277;
                    *(v281 + 16) = v7;
                    *(v281 + 24) = a1;
                    *(v281 + 32) = v278;
                    *(v281 + 40) = v279;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v415 = sub_10066B378(0, v415[2] + 1, 1, v415);
                    }

                    v179 = v416;
                    v23 = v415[2];
                    v282 = v415[3];
                    v20 = v23 + 1;
                    v30 = v412;
                    if (v23 >= v282 >> 1)
                    {
                      v415 = sub_10066B378(v282 > 1, v23 + 1, 1, v415);
                    }

                    (v38)(v422, v423);
                    v38 = v424;
                    (*v403)(v424, v417);
                    v283 = v415;
                    v415[2] = v20;
                    sub_10020B3C8(v406, v283 + ((*(v396 + 80) + 32) & ~*(v396 + 80)) + *(v396 + 72) * v23, &unk_100AE9030);
                    v178 = v400;
                    goto LABEL_93;
                  }

                  if (v272)
                  {

                    (v38)(v422, v423);
                    v38 = v424;
                    (*v403)(v424, v417);
                  }

                  else
                  {

                    v273 = v385;
                    sub_10079AC84();
                    v20 = sub_10079ACC4();
                    v23 = sub_1007A29B4();
                    if (os_log_type_enabled(v20, v23))
                    {
                      v274 = swift_slowAlloc();
                      *v274 = 0;
                      _os_log_impl(&_mh_execute_header, v20, v23, "Counter properties are not supported for sync at present", v274, 2u);
                      v30 = v412;
                    }

                    (*v392)(v273, v393);
                    (v38)(v422, v423);
                    v38 = v424;
                    (*v403)(v424, v417);
                  }

                  v178 = v400;
                  v179 = v416;
LABEL_93:
                  v46 = v179 + 1;
                  if (v402 == v46)
                  {
                    goto LABEL_63;
                  }
                }

                sub_1003D4168(v192, v23);
                v20 = v425;
                v188 = sub_10000E53C(0x6D617473656D6974, 0xE900000000000070);
                if ((v46 & 1) != (v193 & 1))
                {
                  goto LABEL_223;
                }

LABEL_103:
                v23 = v425;
                if (v46)
                {
                  goto LABEL_104;
                }

                goto LABEL_106;
              }

              v415 = _swiftEmptyArrayStorage;
LABEL_63:

              v63 = v410;
              v121 = [v410 eventName];
              v122 = sub_1007A2254();
              v124 = v123;

              *&v429 = v122;
              *(&v429 + 1) = v124;
              v433._countAndFlagsBits = 40;
              v433._object = 0xE100000000000000;
              sub_1007A23D4(v433);
              *&v426[0] = v415[2];
              v434._countAndFlagsBits = sub_1007A3A74();
              sub_1007A23D4(v434);

              v435._countAndFlagsBits = 8233;
              v435._object = 0xE200000000000000;
              sub_1007A23D4(v435);
              v30 = *(&v429 + 1);
              v23 = v429;
              swift_beginAccess();
              v436._countAndFlagsBits = v23;
              v436._object = v30;
              sub_1007A23D4(v436);
              swift_endAccess();

              v125 = *(v413 + v315);
              sub_100799934();
              swift_unknownObjectRelease();

              (*v363)(v381, v361);
              (*v356)(v379, v369);
              goto LABEL_64;
            }

            v135 = v345;
            sub_10079AC84();
            v136 = *v347;
            v137 = v331;
            v138 = v361;
            (*v347)(v331, v133, v361);
            v139 = v344;
            v136(v344, v133, v138);
            v140 = sub_10079ACC4();
            v141 = sub_1007A29B4();
            if (os_log_type_enabled(v140, v141))
            {
              v142 = swift_slowAlloc();
              v415 = swift_slowAlloc();
              *&v429 = v415;
              *v142 = v326;
              v143 = sub_100798AE4();
              v145 = v144;
              v416 = v136;
              v146 = *v363;
              (*v363)(v137, v138);
              v147 = sub_1000070F4(v143, v145, &v429);

              *(v142 + 4) = v147;
              *(v142 + 12) = 2048;
              v148 = v344;
              v149 = sub_100798AA4();
              v146(v148, v138);
              v136 = v416;
              *(v142 + 14) = v149;
              _os_log_impl(&_mh_execute_header, v140, v141, "Seeing a configuration %s in the cloud that has unknown record type %lld", v142, 0x16u);
              sub_1000074E0(v415);

              v150 = *v392;
              (*v392)(v345, v393);
            }

            else
            {
              v146 = *v363;
              (*v363)(v139, v138);

              v146(v137, v138);
              v163 = v135;
              v150 = *v392;
              (*v392)(v163, v393);
            }

            a1 = v346;
            v30 = v332;
            sub_10079AC84();
            v136(v30, v381, v138);
            v23 = sub_10079ACC4();
            v63 = v138;
            v164 = sub_1007A29B4();
            if (os_log_type_enabled(v23, v164))
            {
              v165 = v30;
              v30 = swift_slowAlloc();
              v166 = swift_slowAlloc();
              v416 = v150;
              v167 = v166;
              *&v429 = v166;
              *v30 = v321;
              v168 = sub_100798AE4();
              a1 = v169;
              v170 = v63;
              v63 = v363;
              v146(v165, v170);
              v171 = sub_1000070F4(v168, a1, &v429);

              *(v30 + 4) = v171;
              _os_log_impl(&_mh_execute_header, v23, v164, "Seeing a configuration %s in the cloud that is not available locally", v30, 0xCu);
              sub_1000074E0(v167);

              (v416)(v346, v393);
              v146(v381, v361);
            }

            else
            {

              v146(v30, v138);
              v150(a1, v393);
              v146(v381, v138);
            }

            (*v356)(v379, v369);
            v38 = v424;
LABEL_64:
            v20 = v360;
            v119 = v362 + 1;
            v7 = v414;
            v46 = v391;
            v105 = v387;
            v118 = v327;
            if (v362 + 1 == v329)
            {

              goto LABEL_193;
            }
          }
        }

        v20 = v360;
LABEL_193:
        sub_10079AC84();
        v284 = v325;
        (*v318)(v105, v325, v46);
        v285 = sub_10079ACC4();
        v286 = sub_1007A2994();
        v287 = v286;
        if (os_log_type_enabled(v285, v286))
        {
          v288 = swift_slowAlloc();
          v289 = v105;
          LODWORD(v415) = v287;
          v290 = v288;
          v416 = swift_slowAlloc();
          *&v429 = v416;
          *v290 = v326;
          v291 = v46;
          v292 = v419;
          sub_100798974();
          v293 = v409;
          sub_10079AA54();
          (*v421)(v292, v420);
          sub_1000228AC(&unk_100AE9A30, 255, &type metadata accessor for Date);
          v294 = v423;
          v295 = sub_1007A3A74();
          v297 = v296;
          (*v418)(v293, v294);
          v298 = *v317;
          (*v317)(v289, v291);
          v299 = sub_1000070F4(v295, v297, &v429);

          *(v290 + 4) = v299;
          *(v290 + 12) = 2080;
          swift_beginAccess();
          v300 = v427;
          v20 = v428;

          v301 = sub_1000070F4(v300, v20, &v429);

          *(v290 + 14) = v301;
          _os_log_impl(&_mh_execute_header, v285, v415, "syncFromCloudKit(%s) downloaded %s", v290, 0x16u);
          swift_arrayDestroy();

          (*v392)(v360, v393);
          v298(v325, v291);
        }

        else
        {

          v302 = *v317;
          (*v317)(v105, v46);
          (*v392)(v20, v393);
          v302(v284, v46);
        }

        sub_100007840(v388, &qword_100ADD698);

        v46 = v373;
        v38 = v374;
        a1 = v371;
        v84 = v372;
        v30 = v398;
        v23 = v390;
      }
    }

    else
    {

      v23 = v87;
      v30 = v398;
    }
  }

  v88 = sub_1007A3654();
  if (v88)
  {
    *&v426[0] = v88;
    sub_10000A7C4(0, &qword_100AD3C58);
    swift_dynamicCast();
    v20 = v429;
    v87 = v23;
    v398 = v30;
    if (v429)
    {
      goto LABEL_44;
    }
  }

LABEL_197:
  sub_10004DC54();
  v303 = v350;
  if (v350)
  {
    v304 = *(v413 + OBJC_IVAR___BKEngagementManager_manager);
    v305 = type metadata accessor for BCCloudSyncVersionsAdaptor();
    v306 = swift_allocObject();
    *(v306 + 16) = v303;
    *(&v430 + 1) = v305;
    v431 = sub_1000228AC(&unk_100ADD6A0, v307, type metadata accessor for BCCloudSyncVersionsAdaptor);
    *&v429 = v306;
    v308 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v309 = swift_allocObject();
    v310 = v343;
    *(v309 + 16) = v308;
    *(v309 + 24) = v310;
    *(v309 + 32) = v342 & 1;
    v311 = v303;
    v312 = v304;

    swift_errorRetain();
    sub_100799954();

    sub_1000074E0(&v429);
  }
}

void sub_1003543E0(void *a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = sub_10079ACE4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    goto LABEL_8;
  }

  v37 = v11;
  v14 = [a1 managedObjectContext];
  if (!v14)
  {
LABEL_7:
    sub_10035A194(a1, 0);
    goto LABEL_8;
  }

  v15 = v14;
  if (([v14 hasChanges] & 1) == 0)
  {

    goto LABEL_7;
  }

  v38[0] = 0;
  if ([v15 save:v38])
  {
    v16 = v38[0];
    sub_10035A194(a1, 0);
  }

  else
  {
    v23 = v38[0];
    v24 = sub_1007967D4();

    swift_willThrow();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v36 = v24;
      v26 = OBJC_IVAR___BKEngagementManager_analyticsHelper;
      v27 = Strong;
      swift_beginAccess();
      v28 = *&v27[v26];
      v29 = v28;

      if (!v28)
      {
LABEL_28:
        __break(1u);
        return;
      }

      EngagementManagerAnalyticsHelper.registerSyncFromCloudKitError(_:)(a4);
    }

    else
    {
    }

    sub_10079AC84();
    swift_errorRetain();
    v30 = sub_10079ACC4();
    v31 = sub_1007A29B4();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v32 = 138412290;
      if (a4)
      {
        swift_errorRetain();
        v33 = _swift_stdlib_bridgeErrorToNSError();
        v34 = v33;
      }

      else
      {
        v33 = 0;
        v34 = 0;
      }

      *(v32 + 4) = v33;
      v35 = v36;
      *v36 = v34;
      _os_log_impl(&_mh_execute_header, v30, v31, "Error saving versions from cloud %@", v32, 0xCu);
      sub_100007840(v35, &unk_100AD9480);

      sub_10035A194(a1, 0);
    }

    else
    {
      sub_10035A194(a1, 0);
    }

    (*(v10 + 8))(v13, v37);
  }

LABEL_8:
  if (a5)
  {
    swift_beginAccess();
    v17 = swift_unknownObjectWeakLoadStrong();
    if (!v17)
    {
      return;
    }

    v18 = v17;
    sub_100347ADC();
    goto LABEL_14;
  }

  swift_beginAccess();
  v19 = swift_unknownObjectWeakLoadStrong();
  if (!v19)
  {
    return;
  }

  v20 = OBJC_IVAR___BKEngagementManager_analyticsHelper;
  v21 = v19;
  swift_beginAccess();
  v22 = *&v21[v20];
  v18 = v22;

  if (!v22)
  {
    __break(1u);
    goto LABEL_28;
  }

  EngagementManagerAnalyticsHelper.registerSyncFromCloudKitSuccess()();
LABEL_14:
}

uint64_t sub_1003547B4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v10 = a2;
  v11 = *(a1 + 32);
  if (a2)
  {
    sub_10000A7C4(0, &qword_100AD3C58);
    sub_10035A1A8();
    v10 = sub_1007A2834();
  }

  if (a3)
  {
    a3 = sub_1007A2834();
  }

  v12 = a4;
  v13 = a5;
  v11(v10, a3, a4, a5, a6);
}

uint64_t sub_1003548C0()
{
  v1 = *(v0 + OBJC_IVAR___BKEngagementManager_remoteConfigurationContainer);
  v2 = sub_100796584();
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = v2;
  sub_10079E784();
  *&v10 = sub_10079E754();
  *(&v10 + 1) = v4;
  sub_1007A36B4();
  if (!*(v3 + 16) || (v5 = sub_10000E2A4(v9), (v6 & 1) == 0))
  {

    sub_10002899C(v9);
LABEL_9:
    v10 = 0u;
    v11 = 0u;
    goto LABEL_10;
  }

  sub_100007484(*(v3 + 56) + 32 * v5, &v10);
  sub_10002899C(v9);

  if (!*(&v11 + 1))
  {
LABEL_10:
    sub_100007840(&v10, &unk_100AD5B40);
    v7 = 0;
    goto LABEL_11;
  }

  sub_1001F1160(&qword_100AD6710);
  if (swift_dynamicCast())
  {
    v7 = v9[0];
  }

  else
  {
    v7 = 0;
  }

LABEL_11:
  sub_10034861C(v1, v7);
}

uint64_t sub_100354B00@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a1;
  v52 = a2;
  v2 = sub_1001F1160(&unk_100ADB5C0);
  __chkstk_darwin(v2 - 8);
  v56 = &v48 - v3;
  v4 = sub_1001F1160(&qword_100AE1A50);
  __chkstk_darwin(v4 - 8);
  v60 = &v48 - v5;
  v6 = sub_100796674();
  v50 = *(v6 - 8);
  v51 = v6;
  __chkstk_darwin(v6);
  v55 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v61 = &v48 - v9;
  v10 = sub_1001F1160(&qword_100ADD650);
  __chkstk_darwin(v10 - 8);
  v58 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v54 = &v48 - v13;
  __chkstk_darwin(v14);
  v16 = &v48 - v15;
  v17 = sub_100796DE4();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100796DA4();
  v62 = *(v21 - 8);
  v63 = v21;
  __chkstk_darwin(v21);
  v23 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100796D04();
  sub_100796DD4();
  v57 = *(v18 + 48);
  result = v57(v16, 1, v17);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_6;
  }

  v49 = v18;
  v48 = *(v18 + 32);
  v48(v20, v16, v17);
  sub_100796D74();
  sub_1001F1160(&qword_100ADD658);
  v25 = sub_100796D84();
  v26 = *(v25 - 8);
  v27 = *(v26 + 72);
  v28 = *(v26 + 80);
  v53 = v17;
  v29 = (v28 + 32) & ~v28;
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_100812CF0;
  v31 = v30 + v29;
  v32 = *(v26 + 104);
  v32(v31, enum case for Calendar.Component.year(_:), v25);
  v32(v31 + v27, enum case for Calendar.Component.month(_:), v25);
  v32(v31 + 2 * v27, enum case for Calendar.Component.day(_:), v25);
  sub_1001F2338(v30);
  swift_setDeallocating();
  v33 = v53;
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v34 = v61;
  sub_100796D34();

  v36 = v62;
  v35 = v63;
  v37 = *(v62 + 16);
  v38 = v60;
  v59 = v23;
  v37(v60, v23, v63);
  (*(v36 + 56))(v38, 0, 1, v35);
  v39 = v58;
  sub_100796DD4();
  result = v57(v39, 1, v33);
  if (result == 1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v40 = v54;
  v48(v54, v39, v33);
  (*(v49 + 56))(v40, 0, 1, v33);
  sub_100796644();
  sub_100796654();
  sub_100796624();
  v41 = v55;
  sub_100796664();
  v42 = v56;
  sub_100796634();
  v43 = sub_100796BB4();
  v44 = *(v43 - 8);
  result = (*(v44 + 48))(v42, 1, v43);
  if (result != 1)
  {
    v45 = *(v50 + 8);
    v46 = v41;
    v47 = v51;
    v45(v46, v51);
    v45(v34, v47);
    (*(v62 + 8))(v59, v63);
    return (*(v44 + 32))(v52, v42, v43);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_100355238()
{
  v1[25] = v0;
  v2 = sub_10079ACE4();
  v1[26] = v2;
  v1[27] = *(v2 - 8);
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v3 = sub_100796BB4();
  v1[31] = v3;
  v1[32] = *(v3 - 8);
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();

  return _swift_task_switch(sub_100355384, 0, 0);
}

uint64_t sub_100355384()
{
  v17 = v0;
  v1 = v0[25];
  sub_100796BA4();
  v2 = OBJC_IVAR___BKEngagementManager_analyticsHelper;
  v0[36] = OBJC_IVAR___BKEngagementManager_analyticsHelper;
  v3 = swift_beginAccess();
  v4 = *(v1 + v2);
  if (!v4)
  {
    __break(1u);
    return Manager.fetchCounts(_:)(v3);
  }

  v5 = v0[25];
  v6 = *(v4 + OBJC_IVAR___BKEngagementManagerAnalyticsHelper_standardProperties);
  v7 = OBJC_IVAR___BKEngagementManager_manager;
  v0[37] = v6;
  v0[38] = v7;
  v8 = *(v5 + v7);
  v0[39] = v8;
  v9 = *(v6 + 16);
  if (v9)
  {
    v10 = sub_1005D6574(*(v6 + 16), 0);
    v15 = sub_1005D6C1C(&v16, v10 + 4, v9, v6);
    swift_bridgeObjectRetain_n();
    v11 = v8;
    sub_10004DC54();
    if (v15 == v9)
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  v12 = v8;
  v10 = _swiftEmptyArrayStorage;
LABEL_6:
  v0[40] = v10;
  v13 = swift_task_alloc();
  v0[41] = v13;
  *v13 = v0;
  v13[1] = sub_100355524;
  v3 = v10;

  return Manager.fetchCounts(_:)(v3);
}

uint64_t sub_100355524(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 336) = v1;

  if (v1)
  {
    v5 = sub_10035668C;
  }

  else
  {
    v6 = *(v4 + 312);

    *(v4 + 344) = a1;
    v5 = sub_100355658;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100355658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 200);
  v5 = *(v4 + *(v3 + 288));
  if (!v5)
  {
    __break(1u);
    return Manager.getProperties(propertyName:assetIDs:)(a1, a2, a3);
  }

  v6 = *(v3 + 344);
  v7 = *(v5 + OBJC_IVAR___BKEngagementManagerAnalyticsHelper_sampleCapableProperties);
  *(v3 + 352) = v7;
  v8 = *(v7 + 32);
  *(v3 + 424) = v8;
  v9 = -1;
  v10 = -1 << v8;
  if (-(-1 << v8) < 64)
  {
    v9 = ~(-1 << -v10);
  }

  v11 = v9 & *(v7 + 56);
  *(v3 + 360) = v6;
  swift_bridgeObjectRetain_n();
  if (v11)
  {
    v12 = 0;
LABEL_9:
    *(v3 + 368) = v11;
    *(v3 + 376) = v12;
    v14 = *(v3 + 304);
    v15 = (*(v7 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v11)))));
    v16 = *v15;
    *(v3 + 384) = *v15;
    v17 = v15[1];
    *(v3 + 392) = v17;
    v18 = *(v4 + v14);
    *(v3 + 400) = v18;

    v18;
    v19 = swift_task_alloc();
    *(v3 + 408) = v19;
    *v19 = v3;
    v19[1] = sub_100355A80;
    a1 = v16;
    a2 = v17;
    a3 = 0;

    return Manager.getProperties(propertyName:assetIDs:)(a1, a2, a3);
  }

  v13 = 0;
  while (((63 - v10) >> 6) - 1 != v13)
  {
    v12 = v13 + 1;
    v11 = *(v7 + 8 * v13++ + 64);
    if (v11)
    {
      goto LABEL_9;
    }
  }

  if (*(v6 + 16))
  {
    v20 = *(v3 + 200);
    v21 = OBJC_IVAR___BKEngagementManager_metadata;
    swift_beginAccess();
    v22 = *(v20 + v21);
    v23 = OBJC_IVAR___BKEngagementManagerMetadata_propertyCounts;
    swift_beginAccess();
    *(v22 + v23) = v6;
  }

  v25 = *(v3 + 272);
  v24 = *(v3 + 280);
  v26 = *(v3 + 248);
  v27 = *(v3 + 256);
  sub_10079AC84();
  (*(v27 + 16))(v25, v24, v26);
  v28 = sub_10079ACC4();
  v29 = sub_1007A2994();
  v30 = os_log_type_enabled(v28, v29);
  v31 = *(v3 + 272);
  if (v30)
  {
    v47 = v29;
    v33 = *(v3 + 256);
    v32 = *(v3 + 264);
    v34 = *(v3 + 248);
    v35 = swift_slowAlloc();
    *v35 = 134217984;
    sub_100796BA4();
    sub_100796B44();
    v37 = v36;
    v38 = *(v33 + 8);
    v38(v32, v34);
    sub_100796B44();
    v40 = v39;
    v38(v31, v34);
    *(v35 + 4) = v37 - v40;
    _os_log_impl(&_mh_execute_header, v28, v47, "Time to calculate engagement manager property metadata %fs", v35, 0xCu);
  }

  else
  {
    v41 = *(v3 + 248);
    v42 = *(v3 + 256);

    v38 = *(v42 + 8);
    v38(v31, v41);
  }

  v43 = *(v3 + 280);
  v44 = *(v3 + 248);
  (*(*(v3 + 216) + 8))(*(v3 + 232), *(v3 + 208));
  v38(v43, v44);

  v45 = *(v3 + 8);

  return v45();
}

uint64_t sub_100355A80(uint64_t a1)
{
  v2 = *(*v1 + 400);
  *(*v1 + 416) = a1;

  return _swift_task_switch(sub_100355B9C, 0, 0);
}

uint64_t sub_100355B9C(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v113 = v3;
  v4 = v3[36];
  v5 = v3[25];
  if (!*(v5 + v4))
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v3[15] = v3[48];
  v6 = v3[45];
  v3[16] = v3[49];

  v115._countAndFlagsBits = 45;
  v115._object = 0xE100000000000000;
  sub_1007A23D4(v115);
  v116._countAndFlagsBits = 0x706D61732D6E6F6ELL;
  v116._object = 0xEA0000000000656CLL;
  sub_1007A23D4(v116);
  v7 = v3[15];
  v8 = v3[16];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v112 = v6;
  sub_1002F5624(0, v7, v8, isUniquelyReferenced_nonNull_native);

  if (!*(v5 + v4))
  {
LABEL_74:
    __break(1u);
    return Manager.getProperties(propertyName:assetIDs:)(a1, a2, a3);
  }

  v10 = v112;
  v11 = v3[52];
  v12 = v3[49];
  v3[17] = v3[48];
  v3[18] = v12;

  v117._countAndFlagsBits = 45;
  v117._object = 0xE100000000000000;
  sub_1007A23D4(v117);
  v118._countAndFlagsBits = 0x656C706D6173;
  v118._object = 0xE600000000000000;
  sub_1007A23D4(v118);
  v13 = v3[17];
  v14 = v3[18];
  v15 = swift_isUniquelyReferenced_nonNull_native();
  v112 = v10;
  sub_1002F5624(0, v13, v14, v15);
  v16 = v11;

  v17 = *(v11 + 16);
  a1 = v3[52];
  if (!v17)
  {
LABEL_47:

    v60 = v3[46];
    v59 = v3[47];
    v3[45] = v10;
    v61 = (v60 - 1) & v60;
    if (v61)
    {
      v62 = v3[44];
LABEL_53:
      v3[46] = v61;
      v3[47] = v59;
      v64 = v3[38];
      v65 = v3[25];
      v66 = (*(v62 + 48) + ((v59 << 10) | (16 * __clz(__rbit64(v61)))));
      v67 = *v66;
      v3[48] = *v66;
      v68 = v66[1];
      v3[49] = v68;
      v69 = *(v65 + v64);
      v3[50] = v69;

      v69;
      v70 = swift_task_alloc();
      v3[51] = v70;
      *v70 = v3;
      v70[1] = sub_100355A80;
      a1 = v67;
      a2 = v68;
      a3 = 0;

      return Manager.getProperties(propertyName:assetIDs:)(a1, a2, a3);
    }

    while (1)
    {
      v63 = v59 + 1;
      if (__OFADD__(v59, 1))
      {
        break;
      }

      v62 = v3[44];
      if (v63 >= (((1 << *(v3 + 424)) + 63) >> 6))
      {
        v71 = v10;

        if (*(v10 + 16))
        {
          v72 = v3[25];
          v73 = OBJC_IVAR___BKEngagementManager_metadata;
          swift_beginAccess();
          v74 = *(v72 + v73);
          v75 = OBJC_IVAR___BKEngagementManagerMetadata_propertyCounts;
          swift_beginAccess();
          *(v74 + v75) = v71;
        }

        v76 = v3[34];
        v77 = v3[35];
        v78 = v3[31];
        v79 = v3[32];
        sub_10079AC84();
        (*(v79 + 16))(v76, v77, v78);
        v80 = sub_10079ACC4();
        v81 = sub_1007A2994();
        v82 = os_log_type_enabled(v80, v81);
        v83 = v3[34];
        if (v82)
        {
          v85 = v3[32];
          v84 = v3[33];
          v86 = v3[31];
          v87 = swift_slowAlloc();
          *v87 = 134217984;
          sub_100796BA4();
          sub_100796B44();
          v89 = v88;
          v90 = *(v85 + 8);
          v90(v84, v86);
          sub_100796B44();
          v92 = v91;
          v90(v83, v86);
          *(v87 + 4) = v89 - v92;
          _os_log_impl(&_mh_execute_header, v80, v81, "Time to calculate engagement manager property metadata %fs", v87, 0xCu);
        }

        else
        {
          v94 = v3[31];
          v93 = v3[32];

          v90 = *(v93 + 8);
          v90(v83, v94);
        }

        v95 = v3[35];
        v96 = v3[31];
        (*(v3[27] + 8))(v3[29], v3[26]);
        v90(v95, v96);

        v97 = v3[1];

        return v97();
      }

      v61 = *(v62 + 8 * v63 + 56);
      ++v59;
      if (v61)
      {
        v59 = v63;
        goto LABEL_53;
      }
    }

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
    goto LABEL_73;
  }

  v18 = 0;
  v19 = (a1 + 72);
  v110 = v11;
  v111 = *(v11 + 16);
  v105 = v3;
  while (1)
  {
    if (v18 >= *(v16 + 16))
    {
      __break(1u);
      goto LABEL_68;
    }

    if (*v19 == 2)
    {
      break;
    }

LABEL_7:
    ++v18;
    v19 += 48;
    if (v17 == v18)
    {
      goto LABEL_47;
    }
  }

  v21 = *(v19 - 5);
  v20 = *(v19 - 4);
  v23 = *(v19 - 3);
  v22 = *(v19 - 2);
  v24 = *(v19 - 1);
  sub_10035A334(v21, v20, v23, v22, v24, 2);

  if (!*(v24 + 16) || (v25 = sub_10000E53C(0x656C706D61537369, 0xE800000000000000), v16 = v110, (v26 & 1) == 0))
  {
    sub_10035A3A8(v21, v20, v23, v22, v24, 2);

LABEL_6:
    v17 = v111;
    goto LABEL_7;
  }

  sub_100007484(*(v24 + 56) + 32 * v25, (v3 + 2));
  sub_1001F1160(&qword_100ADD660);
  sub_10000A7C4(0, &qword_100AD6750);
  if ((swift_dynamicCast() & 1) == 0)
  {

    a1 = sub_10035A3A8(v21, v20, v23, v22, v24, 2);
LABEL_46:
    v16 = v110;
    goto LABEL_6;
  }

  v106 = v10;
  v27 = v3[23];
  sub_10079AC84();

  v28 = v27;
  v29 = sub_10079ACC4();
  v30 = sub_1007A29A4();

  v107 = v28;

  v103 = v30;
  log = v29;
  if (os_log_type_enabled(v29, v30))
  {
    v32 = v105[48];
    v31 = v105[49];
    v100 = v105[27];
    v101 = v105[26];
    v102 = v105[30];
    v33 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    v112 = swift_slowAlloc();
    *v33 = 136315650;
    *(v33 + 4) = sub_1000070F4(v32, v31, &v112);
    *(v33 + 12) = 2080;
    if (v20)
    {
      v34 = v21;
    }

    else
    {
      v34 = 0x3E6C6C756E3CLL;
    }

    if (v20)
    {
      v35 = v20;
    }

    else
    {
      v35 = 0xE600000000000000;
    }

    v36 = sub_1000070F4(v34, v35, &v112);

    *(v33 + 14) = v36;
    *(v33 + 22) = 2112;
    *(v33 + 24) = v107;
    *v99 = v107;
    v37 = v107;
    _os_log_impl(&_mh_execute_header, log, v103, "property %s identifier %s isSample=%@", v33, 0x20u);
    sub_100007840(v99, &unk_100AD9480);

    swift_arrayDestroy();

    a1 = (*(v100 + 8))(v102, v101);
    v3 = v105;
  }

  else
  {
    v3 = v105;
    v104 = v105[30];
    v38 = v105[26];
    v39 = v105[27];

    a1 = (*(v39 + 8))(v104, v38);
  }

  if (!*(v3[25] + v3[36]))
  {
    goto LABEL_72;
  }

  v40 = v3[49];
  loga = v3[48];
  sub_10035A3A8(v21, v20, v23, v22, v24, 2);

  v41 = [v107 BOOLValue];
  v3[19] = loga;
  v3[20] = v40;

  v119._countAndFlagsBits = 45;
  v119._object = 0xE100000000000000;
  sub_1007A23D4(v119);
  if (v41)
  {
    v42._countAndFlagsBits = 0x656C706D6173;
  }

  else
  {
    v42._countAndFlagsBits = 0x706D61732D6E6F6ELL;
  }

  if (v41)
  {
    v43 = 0xE600000000000000;
  }

  else
  {
    v43 = 0xEA0000000000656CLL;
  }

  v42._object = v43;
  sub_1007A23D4(v42);

  v45 = v3[19];
  v44 = v3[20];
  v46 = v106[2];
  if (v46)
  {
    a1 = sub_10000E53C(v3[19], v3[20]);
    if (a2)
    {
      v46 = *(v106[7] + 8 * a1);
    }

    else
    {
      v46 = 0;
    }
  }

  v47 = v46 + 1;
  if (__OFADD__(v46, 1))
  {
    goto LABEL_69;
  }

  v48 = swift_isUniquelyReferenced_nonNull_native();
  v3[24] = v106;
  a1 = sub_10000E53C(v45, v44);
  v49 = v106[2];
  v50 = (a2 & 1) == 0;
  v51 = __OFADD__(v49, v50);
  v52 = v49 + v50;
  if (v51)
  {
    goto LABEL_70;
  }

  v53 = a2;
  if (v106[3] >= v52)
  {
    if ((v48 & 1) == 0)
    {
      v55 = a1;
      sub_1002F15B4();
      a1 = v55;
      v54 = v3[24];
      if (v53)
      {
        goto LABEL_41;
      }

      goto LABEL_43;
    }

LABEL_40:
    v54 = v3[24];
    if (v53)
    {
LABEL_41:
      *(v54[7] + 8 * a1) = v47;

      v10 = v54;
LABEL_45:

      goto LABEL_46;
    }

LABEL_43:
    v54[(a1 >> 6) + 8] |= 1 << a1;
    v56 = (v54[6] + 16 * a1);
    *v56 = v45;
    v56[1] = v44;
    *(v54[7] + 8 * a1) = v47;
    v57 = v54[2];
    v51 = __OFADD__(v57, 1);
    v58 = v57 + 1;
    if (v51)
    {
      goto LABEL_71;
    }

    v10 = v54;
    v54[2] = v58;
    goto LABEL_45;
  }

  sub_1003D4D6C(v52, v48);
  a1 = sub_10000E53C(v45, v44);
  if ((v53 & 1) == (a2 & 1))
  {
    goto LABEL_40;
  }

  return sub_1007A3B24();
}