uint64_t sub_10007D0E8()
{
}

id sub_10007D15C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SymbolAndTextFallbackView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10007D238()
{
  result = qword_10014EA68;
  if (!qword_10014EA68)
  {
    type metadata accessor for UILayoutPriority(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10014EA68);
  }

  return result;
}

void sub_10007D290()
{
  v1 = OBJC_IVAR____TtC21JournalShareExtension25SymbolAndTextFallbackView_titleLabel;
  *(v0 + v1) = [objc_allocWithZone(UILabel) init];
  v2 = OBJC_IVAR____TtC21JournalShareExtension25SymbolAndTextFallbackView_subtitleLabel;
  *(v0 + v2) = [objc_allocWithZone(UILabel) init];
  v3 = OBJC_IVAR____TtC21JournalShareExtension25SymbolAndTextFallbackView_captionLabel;
  *(v0 + v3) = [objc_allocWithZone(UILabel) init];
  v4 = OBJC_IVAR____TtC21JournalShareExtension25SymbolAndTextFallbackView_titleStack;
  *(v0 + v4) = [objc_allocWithZone(UIStackView) init];
  v5 = (v0 + OBJC_IVAR____TtC21JournalShareExtension25SymbolAndTextFallbackView_symbolName);
  *v5 = 0;
  v5[1] = 0;
  sub_100101D94();
  __break(1u);
}

id sub_10007D380(char *a1)
{
  v2 = [a1 traitCollection];
  v3 = [v2 preferredContentSizeCategory];

  v4 = sub_100101804();
  [*&a1[OBJC_IVAR____TtC21JournalShareExtension25SymbolAndTextFallbackView_titleLabel] setAdjustsFontSizeToFitWidth:v4 & 1];
  [*&a1[OBJC_IVAR____TtC21JournalShareExtension25SymbolAndTextFallbackView_subtitleLabel] setAdjustsFontForContentSizeCategory:v4 & 1];
  v5 = *&a1[OBJC_IVAR____TtC21JournalShareExtension25SymbolAndTextFallbackView_captionLabel];

  return [v5 setAdjustsFontForContentSizeCategory:v4 & 1];
}

BOOL sub_10007D448()
{
  v6 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  v3 = 0;
  [v0 getRed:&v6 green:&v5 blue:&v4 alpha:&v3];
  v1 = v6 >= 0.99;
  if (v5 < 0.99)
  {
    v1 = 0;
  }

  return v4 >= 0.99 && v1;
}

BOOL sub_10007D4E4()
{
  v6 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  v3 = 0;
  [v0 getRed:&v6 green:&v5 blue:&v4 alpha:&v3];
  v1 = v6 <= 0.001;
  if (v5 > 0.001)
  {
    v1 = 0;
  }

  return v4 <= 0.001 && v1;
}

id sub_10007D580(void *a1, void *a2, void *a3)
{
  if ([a1 userInterfaceStyle] == 2)
  {
    v5 = a2;
  }

  else
  {
    v5 = a3;
  }

  return v5;
}

id sub_10007D5C8(uint64_t a1, uint64_t a2)
{
  v5 = [v2 documentRange];
  v6 = [v5 location];

  v7 = [v2 locationFromLocation:v6 withOffset:a1];
  swift_unknownObjectRelease();
  if (v7)
  {
    v8 = [v2 locationFromLocation:v7 withOffset:a2];
    if (v8)
    {
      v9 = [objc_allocWithZone(NSTextRange) initWithLocation:v7 endLocation:v8];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return v9;
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

uint64_t sub_10007D6D0(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, uint64_t a6, CGRect *a7)
{
  v8.size.height = a4;
  v8.size.width = a3;
  v8.origin.y = a2;
  v8.origin.x = a1;
  *a7 = CGRectUnion(*a7, v8);
  return 1;
}

uint64_t sub_10007D718()
{
  sub_100100FD4();
  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1001010B4(v2);
  v0 = sub_100100F94();

  qword_1001586F8 = v0;
  return result;
}

uint64_t sub_10007D780()
{
  v0 = sub_100100AE4();
  sub_100003CD4(v0, qword_10014EA70);
  v1 = sub_100003D38(v0, qword_10014EA70);
  if (qword_10014B880 != -1)
  {
    swift_once();
  }

  v2 = sub_100003D38(v0, qword_100158810);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10007D848()
{
  v1 = v0;
  v2 = sub_1000FF874();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v1 id];
  if (v6)
  {
    v7 = v6;
    sub_1000FF854();

    if (qword_10014B840 != -1)
    {
      swift_once();
    }

    sub_10007E88C(v5);
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    if (qword_10014B768 != -1)
    {
      swift_once();
    }

    v8 = sub_100100AE4();
    sub_100003D38(v8, qword_10014EA70);
    v13 = sub_100100AC4();
    v9 = sub_1001015B4();
    if (os_log_type_enabled(v13, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v13, v9, "(purgeCache) unable to get assetId from an asset", v10, 2u);
    }

    v11 = v13;
  }
}

void sub_10007DA44(int a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v65 = a3;
  v78 = sub_1000FF3F4();
  v88 = *(v78 - 8);
  __chkstk_darwin(v78);
  v77 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_1000FF514();
  v83 = *(v76 - 8);
  v9 = __chkstk_darwin(v76);
  v87 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v63 - v11;
  v91 = 0x2D626D756874;
  v92 = 0xE600000000000000;
  v13 = sub_1000FF874();
  v14 = sub_1000302F8(&qword_10014C018, &type metadata accessor for UUID);
  v71 = a5;
  v69 = v13;
  v68 = v14;
  v93._countAndFlagsBits = sub_100101E44();
  sub_1001010B4(v93);

  v94._countAndFlagsBits = 45;
  v94._object = 0xE100000000000000;
  sub_1001010B4(v94);
  v90._countAndFlagsBits = 0;
  v95._countAndFlagsBits = sub_100101E44();
  sub_1001010B4(v95);

  v96._countAndFlagsBits = 45;
  v96._object = 0xE100000000000000;
  sub_1001010B4(v96);
  LODWORD(v86) = a1;
  v15 = 0xE500000000000000;
  v16 = 0x657263536C6C7566;
  if (a1 == 6)
  {
    v16 = 0x6C6C616D73;
  }

  else
  {
    v15 = 0xEA00000000006E65;
  }

  v17 = 0xE600000000000000;
  v18 = 0x61546D756964656DLL;
  if (a1 == 4)
  {
    v18 = 0x6D756964656DLL;
  }

  else
  {
    v17 = 0xEA00000000006C6CLL;
  }

  if (a1 <= 5u)
  {
    v16 = v18;
    v15 = v17;
  }

  v19 = 0xE500000000000000;
  v20 = 0x69576D756964656DLL;
  if (a1 != 2)
  {
    v20 = 0x656772616CLL;
  }

  v64 = 0xEA00000000006564;
  if (a1 == 2)
  {
    v19 = 0xEA00000000006564;
  }

  v21 = 0x6154656772614C78;
  if (a1)
  {
    v21 = 0x656772614C78;
    v22 = 0xE600000000000000;
  }

  else
  {
    v22 = 0xEA00000000006C6CLL;
  }

  if (a1 <= 1u)
  {
    v20 = v21;
    v19 = v22;
  }

  if (a1 <= 3u)
  {
    v23._countAndFlagsBits = v20;
  }

  else
  {
    v23._countAndFlagsBits = v16;
  }

  if (a1 <= 3u)
  {
    v24 = v19;
  }

  else
  {
    v24 = v15;
  }

  v23._object = v24;
  sub_1001010B4(v23);

  v25 = v92;
  v26 = a4;
  v72 = v12;
  if (a4)
  {
    v27 = v91;
  }

  else
  {
    v90._countAndFlagsBits = 45;
    v90._object = 0xE100000000000000;
    v89 = v65;
    v97._countAndFlagsBits = sub_100101E44();
    sub_1001010B4(v97);

    sub_1001010B4(v90);
    v26 = a4;

    v27 = v91;
    v25 = v92;
  }

  v28 = v77;
  v29 = v78;
  v30 = v87;
  if (qword_10014B840 != -1)
  {
    swift_once();
  }

  v75 = objc_opt_self();
  v31 = v27;
  if (qword_10014B710 != -1)
  {
    swift_once();
  }

  v74 = sub_1001001E4();
  v32 = enum case for URL.DirectoryHint.inferFromPath(_:);
  v33 = v88;
  v34 = (v88 + 104);
  v35 = (v88 + 8);
  v73 = (v83 + 8);
  v88 = 1;
  v67 = v86;
  v70 = v26;
  v85 = (v33 + 104);
  v84 = enum case for URL.DirectoryHint.inferFromPath(_:);
  v66 = v35;
  do
  {
    v82 = sub_100003D38(v74, qword_100158698);
    sub_1001001A4();
    v91 = v31;
    v92 = v25;
    v86 = v25;
    v83 = *v34;
    (v83)(v28, v32, v29);
    v36 = sub_10005B20C();
    v37 = v72;
    v81 = v36;
    sub_1000FF4F4();
    v80 = *v35;
    v80(v28, v29);
    v38 = *v73;
    v39 = v30;
    v40 = v31;
    v41 = v76;
    (*v73)(v39, v76);
    v42 = [v75 defaultManager];
    sub_1000FF4D4();
    v43 = sub_100100F94();

    v44 = [v42 fileExistsAtPath:v43];

    v45 = v37;
    v79 = v38;
    v38(v37, v41);
    if ((v44 & 1) == 0)
    {

      return;
    }

    v46 = *(*(qword_100158788 + 16) + qword_1001511D0);
    v47 = objc_allocWithZone(NSString);
    v48 = v86;
    v49 = sub_100100F94();
    v50 = [v47 initWithString:v49];

    [v46 removeObjectForKey:v50];
    v51 = v87;
    sub_1001001A4();
    v91 = v40;
    v92 = v48;
    v52 = v78;
    (v83)(v28, v84, v78);
    sub_1000FF4F4();
    v53 = v66;
    v80(v28, v52);
    v54 = v79;
    v79(v51, v41);

    sub_10007E644();
    v54(v45, v41);
    v55 = 0xE600000000000000;
    v91 = 0x2D626D756874;
    v92 = 0xE600000000000000;
    v99._countAndFlagsBits = sub_100101E44();
    sub_1001010B4(v99);

    v100._countAndFlagsBits = 45;
    v100._object = 0xE100000000000000;
    sub_1001010B4(v100);
    v90._countAndFlagsBits = v88;
    v101._countAndFlagsBits = sub_100101E44();
    sub_1001010B4(v101);

    v102._countAndFlagsBits = 45;
    v102._object = 0xE100000000000000;
    sub_1001010B4(v102);
    v56 = v52;
    if (v67 > 3)
    {
      v57 = v70;
      if (v67 > 5)
      {
        v28 = v77;
        v35 = v53;
        if (v67 == 6)
        {
          v55 = 0xE500000000000000;
          v58._countAndFlagsBits = 0x6C6C616D73;
        }

        else
        {
          v55 = 0xEA00000000006E65;
          v58._countAndFlagsBits = 0x657263536C6C7566;
        }
      }

      else
      {
        v28 = v77;
        v35 = v53;
        if (v67 == 4)
        {
          v58._countAndFlagsBits = 0x6D756964656DLL;
        }

        else
        {
          v58._countAndFlagsBits = 0x61546D756964656DLL;
          v55 = 0xEA00000000006C6CLL;
        }
      }

      goto LABEL_49;
    }

    v57 = v70;
    if (v67 > 1)
    {
      v28 = v77;
      v35 = v53;
      if (v67 == 2)
      {
        v58._countAndFlagsBits = 0x69576D756964656DLL;
        v55 = v64;
      }

      else
      {
        v55 = 0xE500000000000000;
        v58._countAndFlagsBits = 0x656772616CLL;
      }

LABEL_49:
      v34 = v85;
      goto LABEL_50;
    }

    v58._countAndFlagsBits = 0x656772614C78;
    v28 = v77;
    v34 = v85;
    v35 = v53;
    if (!v67)
    {
      v58._countAndFlagsBits = 0x6154656772614C78;
      v55 = 0xEA00000000006C6CLL;
    }

LABEL_50:
    v58._object = v55;
    sub_1001010B4(v58);

    v25 = v92;
    v29 = v56;
    if (v57)
    {
      v30 = v87;
      v31 = v91;
    }

    else
    {
      v90._countAndFlagsBits = 45;
      v90._object = 0xE100000000000000;
      v89 = v65;
      v98._countAndFlagsBits = sub_100101E44();
      sub_1001010B4(v98);

      sub_1001010B4(v90);

      v31 = v91;
      v25 = v92;
      v30 = v87;
    }

    v32 = v84;
    ++v88;
  }

  while (v88 != 102);

  if (qword_10014B768 != -1)
  {
    swift_once();
  }

  v59 = sub_100100AE4();
  sub_100003D38(v59, qword_10014EA70);
  v60 = sub_100100AC4();
  v61 = sub_1001015B4();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    *v62 = 0;
    _os_log_impl(&_mh_execute_header, v60, v61, "(purgeCache) Infinite loop, exiting", v62, 2u);
  }
}

void sub_10007E490(uint64_t a1)
{
  for (i = 0; i != 8; ++i)
  {
    v3 = *(&off_1001349C8 + i + 32);
    if (v3 <= 3 || *(&off_1001349C8 + i + 32) <= 5u || v3 == 6)
    {
      v4 = sub_100101E84();

      if ((v4 & 1) == 0)
      {
        sub_10007DA44(v3, a1, 0, 1, a1);
        sub_10007DA44(v3, a1, 1, 0, a1);
        sub_10007DA44(v3, a1, 2, 0, a1);
      }
    }

    else
    {
    }
  }
}

void sub_10007E644()
{
  v0 = [objc_opt_self() defaultManager];
  sub_1000FF474(v1);
  v3 = v2;
  v14 = 0;
  v4 = [v0 removeItemAtURL:v2 error:&v14];

  v5 = v14;
  if (v4)
  {

    v6 = v5;
  }

  else
  {
    v7 = v14;
    sub_1000FF334();

    swift_willThrow();
    if (qword_10014B6C8 != -1)
    {
      swift_once();
    }

    v8 = sub_100100AE4();
    sub_100003D38(v8, qword_10014DBE0);
    swift_errorRetain();
    v9 = sub_100100AC4();
    v10 = sub_1001015B4();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      swift_errorRetain();
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v13;
      *v12 = v13;
      _os_log_impl(&_mh_execute_header, v9, v10, "Delete data from url error: %@", v11, 0xCu);
      sub_100011058(v12);
    }

    else
    {
    }
  }
}

uint64_t sub_10007E88C(uint64_t a1)
{
  v2 = sub_100100C44();
  v17 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100100CB4();
  v5 = *(v16 - 8);
  __chkstk_darwin(v16);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000FF874();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  if (qword_10014B848 != -1)
  {
    swift_once();
  }

  v15 = qword_100158790;
  (*(v9 + 16))(&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v11 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v12 = swift_allocObject();
  (*(v9 + 32))(v12 + v11, &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  aBlock[4] = sub_10007ECA8;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000D2F3C;
  aBlock[3] = &unk_1001373B8;
  v13 = _Block_copy(aBlock);
  sub_100100C64();
  v18 = _swiftEmptyArrayStorage;
  sub_1000302F8(&qword_10014D090, &type metadata accessor for DispatchWorkItemFlags);
  sub_100007210(&qword_10014E310);
  sub_10002FCF8();
  sub_100101B64();
  sub_100101714();
  _Block_release(v13);
  (*(v17 + 8))(v4, v2);
  (*(v5 + 8))(v7, v16);
}

uint64_t sub_10007EC20()
{
  v1 = sub_1000FF874();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_10007ECA8()
{
  v1 = *(sub_1000FF874() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_10007E490(v2);
}

uint64_t sub_10007ED08(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10007ED20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(void), void (*a11)(void))
{
  v12 = v11;
  v50 = a7;
  v51 = a8;
  v49 = a5;
  ObjectType = swift_getObjectType();
  v14 = sub_100100034();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_100100784())
  {
    v48 = a6;
    if (byte_10014EA88 == 1)
    {
      if (a10)
      {
        a10();
      }
    }

    else
    {
      v43 = a9;
      v44 = a11;
      v45 = a10;
      type metadata accessor for JurassicAlertController();
      v47 = v12;
      v18 = sub_100100F94();
      v19 = sub_100100F94();
      v46 = [swift_getObjCClassFromMetadata() alertControllerWithTitle:v18 message:v19 preferredStyle:1];

      (*(v15 + 16))(&v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v43, v14);
      v20 = (*(v15 + 80) + 48) & ~*(v15 + 80);
      v21 = (v16 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
      v22 = swift_allocObject();
      v23 = v48;
      *(v22 + 2) = v49;
      *(v22 + 3) = v23;
      v24 = v51;
      *(v22 + 4) = v50;
      *(v22 + 5) = v24;
      (*(v15 + 32))(&v22[v20], v17, v14);
      v25 = &v22[v21];
      v26 = v44;
      v27 = v45;
      *v25 = v45;
      v25[1] = v26;
      v28 = ObjectType;
      *&v22[(v21 + 23) & 0xFFFFFFFFFFFFFFF8] = ObjectType;

      v29 = v26;
      sub_100030340(v27);
      v30 = sub_100100F94();
      v57 = sub_10007F6C0;
      v58 = v22;
      aBlock = _NSConcreteStackBlock;
      v54 = 1107296256;
      v55 = sub_1000D2328;
      v56 = &unk_100137408;
      v31 = _Block_copy(&aBlock);

      v32 = objc_opt_self();
      v33 = [v32 actionWithTitle:v30 style:0 handler:v31];
      _Block_release(v31);

      v34 = [objc_opt_self() mainBundle];
      v41._countAndFlagsBits = 0x8000000100107970;
      v59._countAndFlagsBits = 0x6C65636E6143;
      v59._object = 0xE600000000000000;
      v60.value._countAndFlagsBits = 0;
      v60.value._object = 0;
      v35.super.isa = v34;
      v61._countAndFlagsBits = 0;
      v61._object = 0xE000000000000000;
      sub_1000FF2E4(v59, v60, v35, v61, v41);

      v36 = swift_allocObject();
      *(v36 + 2) = v27;
      *(v36 + 3) = v29;
      *(v36 + 4) = v28;
      sub_100030340(v27);
      v37 = sub_100100F94();

      v57 = sub_10007FD30;
      v58 = v36;
      aBlock = _NSConcreteStackBlock;
      v54 = 1107296256;
      v55 = sub_1000D2328;
      v56 = &unk_100137458;
      v38 = _Block_copy(&aBlock);

      v39 = [v32 actionWithTitle:v37 style:1 handler:v38];
      _Block_release(v38);

      v40 = v46;
      [v46 addAction:v39];
      [v40 addAction:v33];
      byte_10014EA88 = 1;
      [v47 presentViewController:v40 animated:1 completion:0];
    }
  }
}

uint64_t sub_10007F1E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(char *, char *, uint64_t), uint64_t a7, uint64_t a8)
{
  v37 = a7;
  v38 = a8;
  v42 = a5;
  v43 = a6;
  v40 = a3;
  v41 = a4;
  v39 = a2;
  v8 = sub_100007210(&qword_10014CBD8);
  __chkstk_darwin(v8 - 8);
  v10 = &v34 - v9;
  v11 = sub_100100054();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100007210(&qword_10014EBD0);
  __chkstk_darwin(v15 - 8);
  v17 = &v34 - v16;
  v18 = sub_1000FF514();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v36 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v34 - v22;
  sub_100100064();
  sub_100100044();
  sub_100100024();
  (*(v12 + 8))(v14, v11);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    result = sub_100073EEC(v17);
  }

  else
  {
    v43 = *(v19 + 32);
    v25 = v23;
    v35 = v23;
    v43(v23, v17, v18);
    v26 = sub_100101324();
    (*(*(v26 - 8) + 56))(v10, 1, 1, v26);
    v27 = v36;
    (*(v19 + 16))(v36, v25, v18);
    sub_100101304();
    v42 = v10;
    v28 = v37;
    v29 = v38;
    sub_100030340(v37);
    v30 = sub_1001012F4();
    v31 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v32 = swift_allocObject();
    *(v32 + 16) = v30;
    *(v32 + 24) = &protocol witness table for MainActor;
    v43((v32 + v31), v27, v18);
    v33 = (v32 + ((v20 + v31 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v33 = v28;
    v33[1] = v29;
    sub_1000D73F8(0, 0, v42, &unk_10010DFF0, v32);

    result = (*(v19 + 8))(v35, v18);
  }

  byte_10014EA88 = 0;
  return result;
}

uint64_t sub_10007F5CC()
{
  v1 = sub_100100034();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5))
  {
  }

  return _swift_deallocObject(v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_10007F6C0(uint64_t a1)
{
  v3 = *(sub_100100034() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_10007F1E4(a1, v1[2], v1[3], v1[4], v1[5], (v1 + v4), *(v1 + v5), *(v1 + v5 + 8));
}

uint64_t sub_10007F774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[20] = a5;
  v6[21] = a6;
  v6[19] = a4;
  sub_100101304();
  v6[22] = sub_1001012F4();
  v8 = sub_100101284();
  v6[23] = v8;
  v6[24] = v7;

  return _swift_task_switch(sub_10007F810, v8, v7);
}

uint64_t sub_10007F810()
{
  v1 = [objc_opt_self() defaultWorkspace];
  v0[25] = v1;
  if (v1)
  {
    v3 = v1;
    sub_1000FF474(v2);
    v5 = v4;
    v0[26] = v4;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_10007F974;
    v6 = swift_continuation_init();
    v0[17] = sub_100007210(&qword_10014EA90);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_10007FBDC;
    v0[13] = &unk_1001374A8;
    v0[14] = v6;
    [v3 openURL:v5 configuration:0 completionHandler:v0 + 10];
    v1 = v0 + 2;
  }

  else
  {
    __break(1u);
  }

  return _swift_continuation_await(v1);
}

uint64_t sub_10007F974()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 216) = v2;
  v3 = *(v1 + 192);
  v4 = *(v1 + 184);
  if (v2)
  {
    v5 = sub_10007FB38;
  }

  else
  {
    v5 = sub_10007FAA4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10007FAA4()
{
  v2 = v0[25];
  v1 = v0[26];

  v4 = v0[20];
  if (v4)
  {
    v4(v3);
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_10007FB38()
{
  v1 = v0[26];
  v2 = v0[25];

  swift_willThrow();

  v3 = v0[20];
  if (v3)
  {
    v3();
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_10007FBDC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *sub_1000110C0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100007210(&qword_10014EBE0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    if (a2)
    {
      v9 = sub_100100E64();
    }

    else
    {
      v9 = 0;
    }

    **(*(v5 + 64) + 40) = v9;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_10007FCD8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10007FCF0()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10007FD30()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    result = v1();
  }

  byte_10014EA88 = 0;
  return result;
}

uint64_t sub_10007FD68()
{
  v1 = sub_1000FF514();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5))
  {
  }

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10007FE4C(uint64_t a1)
{
  v4 = *(sub_1000FF514() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100008030;

  return sub_10007F774(a1, v6, v7, v1 + v5, v9, v10);
}

NSString sub_10007FF9C()
{
  result = sub_100100F94();
  qword_100158700 = result;
  return result;
}

NSString sub_10007FFD4()
{
  result = sub_100100F94();
  qword_100158708 = result;
  return result;
}

NSString sub_100080010()
{
  result = sub_100100F94();
  qword_100158710 = result;
  return result;
}

NSString sub_100080048()
{
  result = sub_100100F94();
  qword_100158718 = result;
  return result;
}

void sub_1000800A4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = HIBYTE(a2) & 0xF;
  v10 = HIBYTE(a4) & 0xF;
  if (a2)
  {
    v11 = a1 & 0xFFFFFFFFFFFFLL;
    if ((a2 & 0x2000000000000000) != 0)
    {
      v11 = HIBYTE(a2) & 0xF;
    }

    v12 = a1;
    if (v11)
    {
      goto LABEL_9;
    }
  }

  if (!a4)
  {
    goto LABEL_10;
  }

  v13 = a3 & 0xFFFFFFFFFFFFLL;
  if ((a4 & 0x2000000000000000) != 0)
  {
    v13 = HIBYTE(a4) & 0xF;
  }

  v12 = a3;
  if (v13)
  {
LABEL_9:
    sub_100080DD0(10, v12);
    v14 = sub_100100F94();
  }

  else
  {
LABEL_10:
    v14 = 0;
  }

  [v4 setDisplayName:v14];

  if (a4)
  {
    v15 = a3 & 0xFFFFFFFFFFFFLL;
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15 = v10;
    }

    if (v15)
    {
      goto LABEL_19;
    }
  }

  if (!a2)
  {
    goto LABEL_20;
  }

  v16 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v16 = v9;
  }

  if (v16)
  {
LABEL_19:
    v17 = sub_100100F94();
  }

  else
  {
LABEL_20:
    v17 = 0;
  }

  v18 = v17;
  [v4 setContentDescription:?];
}

uint64_t sub_1000801E4()
{
  v1 = sub_1000FF8B4();
  __chkstk_darwin(v1 - 8);
  v2 = sub_100100F84();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1001007D4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, v0, v3);
  v7 = (*(v4 + 88))(v6, v3);
  if (v7 == enum case for AssetType.photo(_:))
  {
    v8 = [objc_opt_self() mainBundle];
    v17._countAndFlagsBits = 0x8000000100107EC0;
    v9 = 1953458288;
LABEL_3:
    v10._countAndFlagsBits = v9 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
LABEL_4:
    v10._object = 0xE500000000000000;
LABEL_5:
    v11.value._countAndFlagsBits = 0;
    v11.value._object = 0;
    v12.super.isa = v8;
    v13._countAndFlagsBits = 0;
    v13._object = 0xE000000000000000;
LABEL_9:
    v14 = sub_1000FF2E4(v10, v11, v12, v13, v17);

    return v14;
  }

  if (v7 == enum case for AssetType.livePhoto(_:))
  {
    v8 = [objc_opt_self() mainBundle];
    v17._countAndFlagsBits = 0x8000000100107E80;
    v10._countAndFlagsBits = 0x6F6870206576696CLL;
    v10._object = 0xEA00000000006F74;
LABEL_8:
    v11.value._countAndFlagsBits = 0;
    v11.value._object = 0;
    v12.super.isa = v8;
    v13._countAndFlagsBits = 0;
    v13._object = 0xE000000000000000;
    goto LABEL_9;
  }

  if (v7 == enum case for AssetType.video(_:))
  {
    v8 = [objc_opt_self() mainBundle];
    v17._countAndFlagsBits = 0x8000000100107E40;
    v9 = 1701079414;
    goto LABEL_3;
  }

  if (v7 == enum case for AssetType.music(_:))
  {
    v8 = [objc_opt_self() mainBundle];
    v17._countAndFlagsBits = 0x8000000100107E00;
    v10._countAndFlagsBits = 0x636973756DLL;
    goto LABEL_4;
  }

  if (v7 == enum case for AssetType.podcast(_:))
  {
    v8 = [objc_opt_self() mainBundle];
    v17._countAndFlagsBits = 0x8000000100107DC0;
    v16 = 0x736163646F70;
LABEL_17:
    v10._countAndFlagsBits = v16 & 0xFFFFFFFFFFFFLL | 0x74000000000000;
LABEL_18:
    v10._object = 0xE700000000000000;
    goto LABEL_8;
  }

  if (v7 == enum case for AssetType.book(_:))
  {
    v8 = [objc_opt_self() mainBundle];
    v17._countAndFlagsBits = 0x8000000100107D80;
    v10._countAndFlagsBits = 1802465122;
    v10._object = 0xE400000000000000;
    goto LABEL_8;
  }

  if (v7 == enum case for AssetType.audio(_:))
  {
    v8 = [objc_opt_self() mainBundle];
    v17._countAndFlagsBits = 0x8000000100107D40;
    v10._countAndFlagsBits = 0x6572206F69647561;
    v10._object = 0xEF676E6964726F63;
    goto LABEL_5;
  }

  if (v7 == enum case for AssetType.visit(_:))
  {
    v8 = [objc_opt_self() mainBundle];
    v17._countAndFlagsBits = 0x8000000100107CC0;
    v10._countAndFlagsBits = 0x7469736976;
    goto LABEL_4;
  }

  if (v7 == enum case for AssetType.multiPinMap(_:))
  {
    v8 = [objc_opt_self() mainBundle];
    v17._countAndFlagsBits = 0x8000000100107CC0;
    v10._countAndFlagsBits = 0x6563616C70;
    goto LABEL_4;
  }

  if (v7 == enum case for AssetType.genericMap(_:))
  {
    v8 = [objc_opt_self() mainBundle];
    v17._countAndFlagsBits = 0x8000000100107CC0;
    v10._countAndFlagsBits = 0x20676E696B6C6177;
    v10._object = 0xEC00000061657261;
    goto LABEL_5;
  }

  if (v7 == enum case for AssetType.link(_:))
  {
    v8 = [objc_opt_self() mainBundle];
    v17._countAndFlagsBits = 0x8000000100107C80;
    v10._countAndFlagsBits = 1802398060;
    v10._object = 0xE400000000000000;
    goto LABEL_8;
  }

  if (v7 == enum case for AssetType.contact(_:))
  {
    v8 = [objc_opt_self() mainBundle];
    v17._countAndFlagsBits = 0x8000000100107C40;
    v16 = 0x6361746E6F63;
    goto LABEL_17;
  }

  if (v7 == enum case for AssetType.workoutIcon(_:))
  {
    v8 = [objc_opt_self() mainBundle];
    v17._countAndFlagsBits = 0x8000000100107C00;
    v10._countAndFlagsBits = 0x74756F6B726F77;
    goto LABEL_18;
  }

  if (v7 == enum case for AssetType.workoutRoute(_:))
  {
    v8 = [objc_opt_self() mainBundle];
    v17._countAndFlagsBits = 0x8000000100107BC0;
    v10._countAndFlagsBits = 0x2074756F6B726F77;
    v10._object = 0xED00006574756F72;
    goto LABEL_8;
  }

  if (v7 == enum case for AssetType.reflection(_:))
  {
    v8 = [objc_opt_self() mainBundle];
    v17._countAndFlagsBits = 0x8000000100107B80;
    v10._countAndFlagsBits = 0x697463656C666572;
    v10._object = 0xEA00000000006E6FLL;
    goto LABEL_8;
  }

  if (v7 == enum case for AssetType.stateOfMind(_:))
  {
    v8 = [objc_opt_self() mainBundle];
    v17._countAndFlagsBits = 0x8000000100107B40;
    v10._countAndFlagsBits = 0x666F206574617473;
    v10._object = 0xED0000646E696D20;
    goto LABEL_8;
  }

  if (v7 == enum case for AssetType.motionActivity(_:))
  {
    v8 = [objc_opt_self() mainBundle];
    v17._countAndFlagsBits = 0x8000000100107B00;
    v10._countAndFlagsBits = 0x61206E6F69746F6DLL;
    v10._object = 0xEF79746976697463;
    goto LABEL_8;
  }

  if (v7 == enum case for AssetType.thirdPartyMedia(_:))
  {
    v8 = [objc_opt_self() mainBundle];
    v17._countAndFlagsBits = 0x8000000100107AC0;
    v10._countAndFlagsBits = 0x616964656DLL;
    goto LABEL_4;
  }

  if (v7 == enum case for AssetType.placeholder(_:))
  {
    v8 = [objc_opt_self() mainBundle];
    v17._countAndFlagsBits = 0x8000000100107D00;
    v10._countAndFlagsBits = 0x6C6F686563616C70;
    v10._object = 0xEB00000000726564;
    goto LABEL_8;
  }

  if (v7 == enum case for AssetType.streakEvent(_:))
  {
    return 0;
  }

  if (v7 == enum case for AssetType.drawing(_:))
  {
    v8 = [objc_opt_self() mainBundle];
    v17._countAndFlagsBits = 0x8000000100107A80;
    v10._countAndFlagsBits = 0x676E6977617264;
    goto LABEL_18;
  }

  if (v7 == enum case for AssetType.confetti(_:))
  {
    sub_100100F14();
    sub_1000FF8A4();
    return sub_100101004();
  }

  if (v7 == enum case for AssetType.unknown(_:))
  {
    return 0;
  }

  result = sub_100101E74();
  __break(1u);
  return result;
}

id sub_100080CA0()
{
  v1 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  [v1 setAlignment:{objc_msgSend(v0, "alignment")}];
  [v0 firstLineHeadIndent];
  [v1 setFirstLineHeadIndent:?];
  [v0 headIndent];
  [v1 setHeadIndent:?];
  [v1 setBaseWritingDirection:{objc_msgSend(v0, "baseWritingDirection")}];
  isa = [v0 textLists];
  if (!isa)
  {
    sub_100081BFC();
    sub_1001011D4();
    isa = sub_1001011C4().super.isa;
  }

  [v1 setTextLists:isa];

  return v1;
}

uint64_t sub_100080DD0(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = 1;
  v6 = swift_allocObject();
  v6[2] = v4;
  v6[3] = a1;
  v6[4] = v5;

  sub_100007210(&qword_10014EB30);
  sub_10005B20C();
  sub_100032894(&qword_10014EB38, &qword_10014EB30);
  sub_100101AF4();

  swift_beginAccess();
  if (*(v5 + 32))
  {
  }

  else
  {
    sub_100101154();
    a2 = sub_100101054();
  }

  return a2;
}

uint64_t sub_100080FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  result = swift_beginAccess();
  v15 = *(a8 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(a8 + 16) = v17;
    if (v17 >= a9)
    {
      result = swift_beginAccess();
      *(a10 + 16) = a5;
      *(a10 + 24) = a6;
      *(a10 + 32) = 0;
      *a7 = 1;
    }
  }

  return result;
}

uint64_t sub_100081080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v89 = a1;
  v90 = a3;
  v4 = sub_1000FF664();
  v87 = *(v4 - 8);
  v88 = v4;
  __chkstk_darwin(v4);
  v86 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000FF6B4();
  v84 = *(v6 - 8);
  v85 = v6;
  __chkstk_darwin(v6);
  v83 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000FF6E4();
  v81 = *(v8 - 8);
  v82 = v8;
  __chkstk_darwin(v8);
  v80 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000FF684();
  v78 = *(v10 - 8);
  v79 = v10;
  __chkstk_darwin(v10);
  v77 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000FF3C4();
  __chkstk_darwin(v12 - 8);
  v76 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000FF9F4();
  __chkstk_darwin(v14 - 8);
  v75 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000FF9C4();
  __chkstk_darwin(v16 - 8);
  v74 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000FF8B4();
  __chkstk_darwin(v18 - 8);
  v71 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100007210(&qword_10014E3D0);
  __chkstk_darwin(v20 - 8);
  v69 = &v67 - v21;
  v22 = sub_100007210(&qword_10014E3D8);
  __chkstk_darwin(v22 - 8);
  v24 = &v67 - v23;
  v25 = sub_1000FF714();
  v67 = *(v25 - 8);
  v26 = __chkstk_darwin(v25);
  v28 = &v67 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v26);
  v68 = &v67 - v30;
  v31 = __chkstk_darwin(v29);
  v70 = &v67 - v32;
  v33 = __chkstk_darwin(v31);
  v72 = &v67 - v34;
  __chkstk_darwin(v33);
  v73 = &v67 - v35;
  v36 = sub_100007210(&unk_10014D640);
  __chkstk_darwin(v36 - 8);
  v38 = &v67 - v37;
  v39 = sub_1000FF804();
  v40 = *(v39 - 8);
  __chkstk_darwin(v39);
  v91 = &v67 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a2;

  v43 = sub_10000F02C(0, 1, 1, &_swiftEmptyArrayStorage);
  v45 = *(v43 + 2);
  v44 = *(v43 + 3);
  if (v45 >= v44 >> 1)
  {
    v43 = sub_10000F02C((v44 > 1), v45 + 1, 1, v43);
  }

  *(v43 + 2) = v45 + 1;
  v46 = &v43[16 * v45];
  v47 = v90;
  *(v46 + 4) = v89;
  *(v46 + 5) = v42;
  sub_100081A40(v47, v38);
  if ((*(v40 + 48))(v38, 1, v39) == 1)
  {
    sub_100081AB0(v38);
  }

  else
  {
    v48 = *(v40 + 32);
    v90 = v39;
    v48(v91, v38, v39);
    v49 = sub_1000FF604();
    (*(*(v49 - 8) + 56))(v24, 1, 1, v49);
    v50 = sub_1000FF5D4();
    (*(*(v50 - 8) + 56))(v69, 1, 1, v50);
    sub_1000FF884();
    sub_1000FF934();
    sub_1000FF9D4();
    sub_1000FF3B4();
    sub_1000FF624();
    v51 = v77;
    sub_1000FF674();
    v52 = v68;
    sub_1000FF634();
    (*(v78 + 8))(v51, v79);
    v53 = *(v67 + 8);
    v53(v28, v25);
    v54 = v80;
    sub_1000FF6C4();
    v55 = v70;
    sub_1000FF704();
    (*(v81 + 8))(v54, v82);
    v53(v52, v25);
    v56 = v83;
    sub_1000FF694();
    v57 = v72;
    sub_1000FF644();
    (*(v84 + 8))(v56, v85);
    v53(v55, v25);
    v58 = v86;
    sub_1000FF654();
    v59 = v73;
    sub_1000FF614();
    (*(v87 + 8))(v58, v88);
    v53(v57, v25);
    sub_100081B18();
    sub_1000FF7E4();
    v53(v59, v25);
    v60 = v92;
    v61 = v93;
    v63 = *(v43 + 2);
    v62 = *(v43 + 3);
    if (v63 >= v62 >> 1)
    {
      v43 = sub_10000F02C((v62 > 1), v63 + 1, 1, v43);
    }

    (*(v40 + 8))(v91, v90);
    *(v43 + 2) = v63 + 1;
    v64 = &v43[16 * v63];
    *(v64 + 4) = v60;
    *(v64 + 5) = v61;
  }

  v92 = v43;
  sub_100007210(&unk_10014D670);
  sub_100032894(&qword_10014C218, &unk_10014D670);
  v65 = sub_100100EA4();

  return v65;
}

uint64_t sub_100081A40(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007210(&unk_10014D640);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100081AB0(uint64_t a1)
{
  v2 = sub_100007210(&unk_10014D640);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100081B18()
{
  result = qword_10014E3B8;
  if (!qword_10014E3B8)
  {
    sub_1000FF714();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10014E3B8);
  }

  return result;
}

uint64_t sub_100081B90()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_100081BFC()
{
  result = qword_10014E118;
  if (!qword_10014E118)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10014E118);
  }

  return result;
}

id sub_100081C48()
{
  result = [objc_allocWithZone(type metadata accessor for OperationsManager()) init];
  qword_10014EB40 = result;
  return result;
}

id sub_100081C78()
{
  v1 = &v0[OBJC_IVAR____TtC21JournalShareExtension17OperationsManager_mapTableFileAttachmentsQueue];
  v2 = [objc_opt_self() mapTableWithKeyOptions:0x10000 valueOptions:5];
  *v1 = 0;
  *(v1 + 1) = v2;
  v3 = &v0[OBJC_IVAR____TtC21JournalShareExtension17OperationsManager_mapTableAssetMetadataQueue];
  v4 = [objc_opt_self() mapTableWithKeyOptions:0x10000 valueOptions:5];
  *v3 = 0;
  *(v3 + 1) = v4;
  v5 = [objc_allocWithZone(NSOperationQueue) init];
  v6 = OBJC_IVAR____TtC21JournalShareExtension17OperationsManager_cacheQueueLowPriority;
  *&v0[OBJC_IVAR____TtC21JournalShareExtension17OperationsManager_cacheQueueLowPriority] = v5;
  v7 = qword_10014B5D8;
  v8 = v5;
  if (v7 != -1)
  {
    swift_once();
  }

  [v8 setUnderlyingQueue:qword_100158468];

  v9 = *&v0[v6];
  v10 = sub_100100F94();
  [v9 setName:v10];

  [*&v0[v6] setMaxConcurrentOperationCount:6];
  [*&v0[v6] setQualityOfService:9];
  v11 = [objc_allocWithZone(NSOperationQueue) init];
  v12 = OBJC_IVAR____TtC21JournalShareExtension17OperationsManager_cacheQueueRegularPriority;
  *&v0[OBJC_IVAR____TtC21JournalShareExtension17OperationsManager_cacheQueueRegularPriority] = v11;
  v13 = qword_10014B5E0;
  v14 = v11;
  if (v13 != -1)
  {
    swift_once();
  }

  [v14 setUnderlyingQueue:qword_100158470];

  v15 = *&v0[v12];
  v16 = sub_100100F94();
  [v15 setName:v16];

  [*&v0[v12] setMaxConcurrentOperationCount:6];
  [*&v0[v12] setQualityOfService:-1];
  v17 = [objc_allocWithZone(NSOperationQueue) init];
  v18 = OBJC_IVAR____TtC21JournalShareExtension17OperationsManager_cacheQueueHighPriority;
  *&v0[OBJC_IVAR____TtC21JournalShareExtension17OperationsManager_cacheQueueHighPriority] = v17;
  v19 = qword_10014B5E8;
  v20 = v17;
  if (v19 != -1)
  {
    swift_once();
  }

  [v20 setUnderlyingQueue:qword_100158478];

  v21 = *&v0[v18];
  v22 = sub_100100F94();
  [v21 setName:v22];

  [*&v0[v18] setMaxConcurrentOperationCount:2];
  [*&v0[v18] setQualityOfService:33];
  v23 = [objc_allocWithZone(NSOperationQueue) init];
  v24 = OBJC_IVAR____TtC21JournalShareExtension17OperationsManager_fileAttachmentsQueue;
  *&v0[OBJC_IVAR____TtC21JournalShareExtension17OperationsManager_fileAttachmentsQueue] = v23;
  v25 = qword_10014B7D0;
  v26 = v23;
  if (v25 != -1)
  {
    swift_once();
  }

  [v26 setUnderlyingQueue:qword_100158758];

  v27 = *&v0[v24];
  v28 = sub_100100F94();
  [v27 setName:v28];

  [*&v0[v24] setMaxConcurrentOperationCount:2];
  [*&v0[v24] setQualityOfService:-1];
  v29 = [objc_allocWithZone(NSOperationQueue) init];
  v30 = OBJC_IVAR____TtC21JournalShareExtension17OperationsManager_assetMetadataQueue;
  *&v0[OBJC_IVAR____TtC21JournalShareExtension17OperationsManager_assetMetadataQueue] = v29;
  v31 = qword_10014B7D8;
  v32 = v29;
  if (v31 != -1)
  {
    swift_once();
  }

  [v32 setUnderlyingQueue:qword_100158760];

  v33 = *&v0[v30];
  v34 = sub_100100F94();
  [v33 setName:v34];

  [*&v0[v30] setMaxConcurrentOperationCount:2];
  [*&v0[v30] setQualityOfService:-1];
  v35 = [objc_allocWithZone(NSOperationQueue) init];
  v36 = OBJC_IVAR____TtC21JournalShareExtension17OperationsManager_batchRecordDownloadQueue;
  *&v0[OBJC_IVAR____TtC21JournalShareExtension17OperationsManager_batchRecordDownloadQueue] = v35;
  v37 = qword_10014B7E0;
  v38 = v35;
  if (v37 != -1)
  {
    swift_once();
  }

  [v38 setUnderlyingQueue:qword_100158768];

  v39 = *&v0[v36];
  v40 = sub_100100F94();
  [v39 setName:v40];

  [*&v0[v36] setMaxConcurrentOperationCount:1];
  [*&v0[v36] setQualityOfService:9];
  v42.receiver = v0;
  v42.super_class = type metadata accessor for OperationsManager();
  return objc_msgSendSuper2(&v42, "init");
}

id sub_10008226C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OperationsManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_100082378()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_100007210(&qword_10014EBB0);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

void sub_1000823A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a3;
  if (qword_10014B790 != -1)
  {
LABEL_31:
    swift_once();
  }

  v5 = qword_10014EB40;
  sub_100007210(&unk_10014D0F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10010D7D0;
  v7 = *(v5 + OBJC_IVAR____TtC21JournalShareExtension17OperationsManager_cacheQueueHighPriority);
  *(inited + 32) = v7;
  v31 = inited + 32;
  v8 = *(v5 + OBJC_IVAR____TtC21JournalShareExtension17OperationsManager_cacheQueueRegularPriority);
  *(inited + 40) = v8;
  v9 = *(v5 + OBJC_IVAR____TtC21JournalShareExtension17OperationsManager_cacheQueueLowPriority);
  *(inited + 48) = v9;
  v10 = inited & 0xC000000000000001;
  v29 = inited & 0xFFFFFFFFFFFFFF8;
  v11 = v7;
  v12 = v8;
  v13 = v9;
  v14 = 0;
  v30 = v10;
  do
  {
    v32 = v14;
    if (v10)
    {
      v15 = sub_100101CA4();
    }

    else
    {
      if (v14 >= *(v29 + 16))
      {
        goto LABEL_30;
      }

      v15 = *(v31 + 8 * v14);
    }

    v33 = v15;
    v16 = [v15 operations];
    sub_100010F50(0, &qword_10014EBB8);
    v17 = sub_1001011D4();

    if (v17 >> 62)
    {
      v18 = sub_100101DA4();
      if (v18)
      {
LABEL_10:
        v19 = 0;
        while (1)
        {
          if ((v17 & 0xC000000000000001) != 0)
          {
            v20 = sub_100101CA4();
          }

          else
          {
            if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_29;
            }

            v20 = *(v17 + 8 * v19 + 32);
          }

          v21 = v20;
          v22 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          type metadata accessor for ThumbnailCacheOperation();
          v23 = swift_dynamicCastClass();
          if (v23)
          {
            v24 = v23;
            v25 = *(v23 + qword_100151300) == a1 && *(v23 + qword_100151300 + 8) == a2;
            if (v25 || (sub_100101E84() & 1) != 0)
            {
              v26 = v21;

              swift_setDeallocating();
              swift_arrayDestroy();
              v27 = v26;
              [v24 setQueuePriority:v28];

              return;
            }
          }

          ++v19;
          if (v22 == v18)
          {
            goto LABEL_3;
          }
        }

        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }
    }

    else
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v18)
      {
        goto LABEL_10;
      }
    }

LABEL_3:
    v14 = v32 + 1;

    v10 = v30;
  }

  while (v32 != 2);
  swift_setDeallocating();
  swift_arrayDestroy();
}

void *sub_1000826C4(uint64_t a1, uint64_t a2)
{
  if (qword_10014B790 != -1)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v4 = qword_10014EB40;
    sub_100010F50(0, &qword_10014E140);
    if (qword_10014B5D8 != -1)
    {
      swift_once();
    }

    if (sub_100101A34())
    {
      v5 = &OBJC_IVAR____TtC21JournalShareExtension17OperationsManager_cacheQueueLowPriority;
    }

    else
    {
      if (qword_10014B5E8 != -1)
      {
        swift_once();
      }

      v6 = sub_100101A34();
      v5 = &OBJC_IVAR____TtC21JournalShareExtension17OperationsManager_cacheQueueRegularPriority;
      if (v6)
      {
        v5 = &OBJC_IVAR____TtC21JournalShareExtension17OperationsManager_cacheQueueHighPriority;
      }
    }

    v7 = [*(v4 + *v5) operations];
    sub_100010F50(0, &qword_10014EBB8);
    v8 = sub_1001011D4();

    if (v8 >> 62)
    {
      break;
    }

    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      goto LABEL_32;
    }

LABEL_12:
    v10 = 0;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v11 = sub_100101CA4();
      }

      else
      {
        if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        v11 = *(v8 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      type metadata accessor for ThumbnailCacheOperation();
      v14 = swift_dynamicCastClass();
      if (v14)
      {
        v15 = v14;
        v16 = *(v14 + qword_100151300) == a1 && *(v14 + qword_100151300 + 8) == a2;
        if (v16 || (sub_100101E84()) && ![v15 isCancelled])
        {

          return v15;
        }
      }

      ++v10;
      if (v13 == v9)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    swift_once();
  }

  v9 = sub_100101DA4();
  if (v9)
  {
    goto LABEL_12;
  }

LABEL_32:

  return 0;
}

void sub_100082964(uint64_t a1, uint64_t a2)
{
  if (qword_10014B790 != -1)
  {
    swift_once();
  }

  v4 = qword_10014EB40;
  sub_100007210(&unk_10014D0F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10010D7D0;
  v6 = *(v4 + OBJC_IVAR____TtC21JournalShareExtension17OperationsManager_cacheQueueHighPriority);
  *(inited + 32) = v6;
  v7 = *(v4 + OBJC_IVAR____TtC21JournalShareExtension17OperationsManager_cacheQueueRegularPriority);
  *(inited + 40) = v7;
  v8 = *(v4 + OBJC_IVAR____TtC21JournalShareExtension17OperationsManager_cacheQueueLowPriority);
  *(inited + 48) = v8;
  v9 = inited & 0xC000000000000001;
  v10 = v6;
  v11 = v7;
  v12 = v8;
  if ((inited & 0xC000000000000001) != 0)
  {
    v13 = sub_100101CA4();
  }

  else
  {
    if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_26;
    }

    v13 = v10;
  }

  v14 = v13;
  v15 = [v13 underlyingQueue];
  if (v15)
  {
    v16 = v15;
    v17 = sub_1000826C4(a1, a2);

    if (v17)
    {
      goto LABEL_23;
    }

    v14 = v16;
  }

  if (v9)
  {
    v18 = sub_100101CA4();
  }

  else
  {
    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
      goto LABEL_26;
    }

    v18 = *(inited + 40);
  }

  v19 = v18;
  v20 = [v18 underlyingQueue];
  if (v20)
  {
    v21 = v20;
    v22 = sub_1000826C4(a1, a2);

    if (!v22)
    {
      v19 = v21;
      goto LABEL_17;
    }

LABEL_23:

    return;
  }

LABEL_17:

  if (!v9)
  {
    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
    {
      v23 = *(inited + 48);
      goto LABEL_21;
    }

LABEL_26:
    __break(1u);
    return;
  }

  v23 = sub_100101CA4();
LABEL_21:
  v24 = v23;
  v25 = [v23 underlyingQueue];
  if (v25)
  {
    v26 = v25;
    v27 = sub_1000826C4(a1, a2);

    if (v27)
    {
      goto LABEL_23;
    }

    v24 = v26;
  }
}

id sub_100082BB8(uint64_t a1)
{
  if (qword_10014B790 != -1)
  {
    swift_once();
  }

  v2 = qword_10014EB40;
  sub_100010F50(0, &qword_10014E140);
  if (qword_10014B5D8 != -1)
  {
    swift_once();
  }

  if (sub_100101A34())
  {
    v3 = &OBJC_IVAR____TtC21JournalShareExtension17OperationsManager_cacheQueueLowPriority;
  }

  else
  {
    if (qword_10014B5E8 != -1)
    {
      swift_once();
    }

    v4 = sub_100101A34();
    v3 = &OBJC_IVAR____TtC21JournalShareExtension17OperationsManager_cacheQueueRegularPriority;
    if (v4)
    {
      v3 = &OBJC_IVAR____TtC21JournalShareExtension17OperationsManager_cacheQueueHighPriority;
    }
  }

  v5 = *(v2 + *v3);

  return [v5 addOperation:a1];
}

unint64_t sub_100082D0C()
{
  result = qword_10014EBC0;
  if (!qword_10014EBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10014EBC0);
  }

  return result;
}

unint64_t sub_100082D60()
{
  if (*v0)
  {
    return 0xD000000000000045;
  }

  else
  {
    return 0xD00000000000001ELL;
  }
}

void sub_100082DDC(uint64_t a1)
{
  v2 = sub_100007210(&qword_10014EBC8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - v4;
  (*(v3 + 16))(&v9 - v4, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  v8 = sub_100101604();
}

uint64_t sub_100082F38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100007210(&qword_10014EBD0);
  __chkstk_darwin(v5 - 8);
  v7 = v22 - v6;
  v8 = sub_1000FF514();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = v22 - v14;
  __chkstk_darwin(v13);
  v17 = v22 - v16;
  sub_100083320(a1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_100073EEC(v7);
    if (a3)
    {
      v18 = a3;
    }

    else
    {
      sub_100082D0C();
      v18 = swift_allocError();
      *v19 = 0;
    }

    swift_willThrow();
    swift_errorRetain();
    v22[0] = v18;
    sub_100007210(&qword_10014EBC8);
    return sub_100101294();
  }

  else
  {
    (*(v9 + 32))(v17, v7, v8);
    sub_10005D9D8(v15);
    (*(v9 + 16))(v12, v15, v8);
    sub_100007210(&qword_10014EBC8);
    sub_1001012A4();
    v20 = *(v9 + 8);
    v20(v15, v8);
    return (v20)(v17, v8);
  }
}

uint64_t sub_1000831F8()
{
  v1 = sub_100007210(&qword_10014EBC8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10008328C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100007210(&qword_10014EBC8);

  return sub_100082F38(a1, a2, a3);
}

uint64_t sub_100083320(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007210(&qword_10014EBD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100083390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  if (a1)
  {
    swift_getObjectType();
    v5 = sub_100101284();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v4[21] = v5;
  v4[22] = v7;

  return _swift_task_switch(sub_100083420, v5, v7);
}

uint64_t sub_100083420()
{
  v1 = v0[20];
  sub_100100904();
  v2 = sub_100100F94();
  v0[23] = v2;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100083568;
  v3 = swift_continuation_init();
  v0[17] = sub_100007210(&qword_10014EBD8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100083774;
  v0[13] = &unk_100137580;
  v0[14] = v3;
  [v1 loadItemForTypeIdentifier:v2 options:0 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100083568()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  v3 = *(v1 + 176);
  v4 = *(v1 + 168);
  if (v2)
  {
    v5 = sub_100083704;
  }

  else
  {
    v5 = sub_100083698;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100083698()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100083704()
{
  v1 = *(v0 + 184);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100083774(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1000110C0((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_100007210(&qword_10014EBE0);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      swift_unknownObjectRetain();
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

unint64_t sub_10008387C()
{
  result = qword_10014EBE8;
  if (!qword_10014EBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10014EBE8);
  }

  return result;
}

uint64_t sub_1000838D0()
{
  v0 = sub_100100AE4();
  sub_100003CD4(v0, qword_10014EBF0);
  sub_100003D38(v0, qword_10014EBF0);
  return sub_100100AD4();
}

uint64_t sub_100083990(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  sub_100007210(&qword_10014C3C0);
  v3[7] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v5 = sub_100101284();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v3[8] = v5;
  v3[9] = v7;

  return _swift_task_switch(sub_100083A6C, v5, v7);
}

uint64_t sub_100083A6C()
{
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_100083B04;
  v2 = v0[5];
  v3 = v0[4];

  return sub_1000F1FC0(v3, v2);
}

uint64_t sub_100083B04(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 88) = a1;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);

  return _swift_task_switch(sub_100083C2C, v4, v3);
}

uint64_t sub_100083C2C()
{
  v1 = v0[11];
  if (v1)
  {
LABEL_13:

    v15 = v0[1];

    return v15(v1);
  }

  v2 = v0[7];
  sub_10008452C(v0[6] + qword_100158720, v2);
  v3 = sub_100100554();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v2, 1, v3);
  v6 = v0[7];
  if (v5 == 1)
  {
    sub_1000844C4(v0[7]);
LABEL_8:
    if (qword_10014B798 != -1)
    {
      swift_once();
    }

    v11 = sub_100100AE4();
    sub_100003D38(v11, qword_10014EBF0);
    v12 = sub_100100AC4();
    v13 = sub_1001015B4();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "generateImage no route info in metadata", v14, 2u);
    }

    goto LABEL_13;
  }

  v7 = sub_1001004F4();
  v0[12] = v7;
  (*(v4 + 8))(v6, v3);
  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = (v0[6] + qword_100151300);
  v0[13] = *v8;
  v0[14] = v8[1];
  sub_100101304();

  v0[15] = sub_1001012F4();
  v10 = sub_100101284();

  return _swift_task_switch(sub_100083EA8, v10, v9);
}

uint64_t sub_100083EA8()
{
  receiver = v0[7].receiver;
  v3 = v0[6].receiver;
  super_class = v0[6].super_class;

  v4 = type metadata accessor for RouteMapGenerator();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC21JournalShareExtension17RouteMapGenerator_mapSnapshotter] = 0;
  *&v5[OBJC_IVAR____TtC21JournalShareExtension17RouteMapGenerator_lineWidth] = 0x4008000000000000;
  v5[OBJC_IVAR____TtC21JournalShareExtension17RouteMapGenerator_sizeType] = 8;
  v6 = &v5[OBJC_IVAR____TtC21JournalShareExtension17RouteMapGenerator_id];
  *v6 = super_class;
  v6[1] = receiver;
  *&v5[OBJC_IVAR____TtC21JournalShareExtension17RouteMapGenerator_routeCoordinates] = v3;
  v0[1].receiver = v5;
  v0[1].super_class = v4;
  v0[8].receiver = objc_msgSendSuper2(v0 + 1, "init");
  v7 = v0[4].receiver;
  v8 = v0[4].super_class;

  return _swift_task_switch(sub_100083FA0, v7, v8);
}

uint64_t sub_100083FA0()
{
  v1 = *(*(v0 + 48) + qword_100158A80);
  *(v0 + 152) = v1;
  v2 = swift_task_alloc();
  *(v0 + 136) = v2;
  *v2 = v0;
  v2[1] = sub_10008404C;

  return sub_100011308(v1);
}

uint64_t sub_10008404C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  *(*v1 + 144) = a1;

  v4 = *(v2 + 72);
  v5 = *(v2 + 64);

  return _swift_task_switch(sub_100084194, v5, v4);
}

uint64_t sub_100084194()
{
  v1 = *(v0 + 144);
  if (v1)
  {
    if (sub_1000797E0(*(v0 + 152)))
    {
      if (qword_10014B840 != -1)
      {
        swift_once();
      }

      sub_1000F3B9C(v1, *(v0 + 104), *(v0 + 112));
    }

    v2 = *(v0 + 144);
  }

  else
  {
    if (qword_10014B798 != -1)
    {
      swift_once();
    }

    v3 = sub_100100AE4();
    sub_100003D38(v3, qword_10014EBF0);
    v4 = sub_100100AC4();
    v5 = sub_1001015B4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "error generating route map image", v6, 2u);
    }

    v2 = 0;
  }

  v7 = *(v0 + 8);

  return v7(v2);
}

uint64_t type metadata accessor for WorkoutRouteThumbnailCacheOperation()
{
  result = qword_10014EC30;
  if (!qword_10014EC30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100084384()
{
  sub_100084414();
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_100084414()
{
  if (!qword_10014EC40)
  {
    sub_100100554();
    v0 = sub_100101A94();
    if (!v1)
    {
      atomic_store(v0, &qword_10014EC40);
    }
  }
}

uint64_t sub_100084474(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_1000844C4(uint64_t a1)
{
  v2 = sub_100007210(&qword_10014C3C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10008452C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007210(&qword_10014C3C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008459C()
{
  v107 = sub_1001001E4();
  v104 = *(v107 - 8);
  __chkstk_darwin(v107);
  v106 = &v101 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
  v2 = __chkstk_darwin(v115);
  v4 = &v101 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v7 = &v101 - v6;
  v8 = __chkstk_darwin(v5);
  v109 = &v101 - v9;
  __chkstk_darwin(v8);
  v11 = &v101 - v10;
  v12 = sub_100007210(&qword_10014EBD0);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v101 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v101 - v16;
  v118 = type metadata accessor for AssetAttachment.AssetType(0);
  v18 = __chkstk_darwin(v118);
  v20 = &v101 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v23 = (&v101 - v22);
  v24 = __chkstk_darwin(v21);
  v108 = &v101 - v25;
  __chkstk_darwin(v24);
  v27 = (&v101 - v26);
  v28 = OBJC_IVAR____TtC21JournalShareExtension5Asset_sourceAttachments;
  result = swift_beginAccess();
  v103 = v0;
  v30 = *(v0 + v28);
  if (v30 >> 62)
  {
LABEL_44:
    v62 = v30;
    result = sub_100101DA4();
    v30 = v62;
    v31 = result;
    v116 = v11;
    v117 = v27;
    if (result)
    {
      goto LABEL_3;
    }

    goto LABEL_45;
  }

  v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v116 = v11;
  v117 = v27;
  if (!v31)
  {
LABEL_45:
    v34 = 0;
LABEL_46:
    v63 = *(v103 + OBJC_IVAR____TtC21JournalShareExtension5Asset_attachments);
    v64 = v109;
    if (v63 >> 62)
    {
      goto LABEL_89;
    }

    v65 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v65)
    {
LABEL_90:
      v66 = 0;
LABEL_91:
      if (v66 <= v34)
      {
        return v34;
      }

      else
      {
        return v66;
      }
    }

LABEL_48:
    if (v65 < 1)
    {
      goto LABEL_96;
    }

    v114 = v63 & 0xC000000000000001;
    v112 = (v104 + 8);

    v66 = 0;
    v67 = 0;
    v113 = v65;
    while (1)
    {
      v68 = v17;
      if (v114)
      {
        v69 = sub_100101CA4();
      }

      else
      {
        v69 = *(v63 + 8 * v67 + 32);
      }

      v70 = OBJC_IVAR____TtC21JournalShareExtension15AssetAttachment_assetType;
      sub_1000329A0(v69 + OBJC_IVAR____TtC21JournalShareExtension15AssetAttachment_assetType, v27, type metadata accessor for AssetAttachment.AssetType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v72 = EnumCaseMultiPayload;
      if (EnumCaseMultiPayload > 1)
      {
        break;
      }

      v74 = v27;
      if (!v72)
      {
        goto LABEL_57;
      }

      v91 = *v27;
      v92 = UIImageHEICRepresentation(v91);
      if (!v92)
      {

        v87 = 0;
        goto LABEL_71;
      }

      v93 = v92;
      v94 = sub_1000FF564();
      v96 = v95;

      v97 = v96;
      v98 = v96 >> 62;
      if ((v96 >> 62) > 1)
      {
        v17 = v68;
        if (v98 == 2)
        {
          v100 = *(v94 + 16);
          v99 = *(v94 + 24);
          result = sub_1000064C0(v94, v97);
          v87 = v99 - v100;
          v11 = v116;
          if (__OFSUB__(v99, v100))
          {
            goto LABEL_99;
          }

          v64 = v109;
        }

        else
        {
          sub_1000064C0(v94, v96);
          v87 = 0;
          v64 = v109;
          v11 = v116;
        }

        goto LABEL_72;
      }

      v17 = v68;
      v27 = v117;
      if (v98)
      {
        result = sub_1000064C0(v94, v96);
        LODWORD(v87) = HIDWORD(v94) - v94;
        v11 = v116;
        if (__OFSUB__(HIDWORD(v94), v94))
        {
          goto LABEL_100;
        }

        v87 = v87;
        v64 = v109;
      }

      else
      {
        sub_1000064C0(v94, v96);
        v87 = BYTE6(v96);
        v64 = v109;
        v11 = v116;
      }

LABEL_73:
      v55 = __OFADD__(v66, v87);
      v66 += v87;
      if (v55)
      {
        __break(1u);
LABEL_89:
        result = sub_100101DA4();
        v65 = result;
        if (!result)
        {
          goto LABEL_90;
        }

        goto LABEL_48;
      }

      if (v113 == ++v67)
      {

        goto LABEL_91;
      }
    }

    v73 = EnumCaseMultiPayload - 2;
    v74 = v27;
    if (v73 >= 2)
    {

      v74 = v27 + *(sub_100007210(&qword_10014CE88) + 48);
    }

LABEL_57:
    sub_1000328DC(v74, type metadata accessor for AssetAttachment.AssetType.FilePathType);
    v75 = v69 + v70;
    v76 = v108;
    sub_1000329A0(v75, v108, type metadata accessor for AssetAttachment.AssetType);
    v77 = swift_getEnumCaseMultiPayload();
    v78 = v77;
    if (v77 <= 1)
    {
      v80 = v76;
      if (v78)
      {
        sub_1000328DC(v76, type metadata accessor for AssetAttachment.AssetType);
        v84 = 1;
        goto LABEL_65;
      }
    }

    else
    {
      v79 = v77 - 2;
      v80 = v76;
      if (v79 >= 2)
      {

        v81 = sub_100007210(&qword_10014CE88);
        v80 = v108 + *(v81 + 48);
      }
    }

    sub_10008BF3C(v80, v11, type metadata accessor for AssetAttachment.AssetType.FilePathType);
    sub_1000329A0(v11, v64, type metadata accessor for AssetAttachment.AssetType.FilePathType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1000328DC(v11, type metadata accessor for AssetAttachment.AssetType.FilePathType);
      v82 = sub_1000FF514();
      (*(*(v82 - 8) + 32))(v68, v64, v82);
    }

    else
    {
      v83 = v106;
      sub_1001001D4();
      sub_100100184();

      (*v112)(v83, v107);
      sub_1000328DC(v11, type metadata accessor for AssetAttachment.AssetType.FilePathType);
    }

    v84 = 0;
LABEL_65:
    v85 = sub_1000FF514();
    v86 = *(v85 - 8);
    (*(v86 + 56))(v68, v84, 1, v85);
    if ((*(v86 + 48))(v68, 1, v85) == 1)
    {

      sub_10000FFB4(v68, &qword_10014EBD0);
      v87 = 0;
    }

    else
    {
      v88 = sub_1000FF414();
      v90 = v89;

      (*(v86 + 8))(v68, v85);
      v54 = (v90 & 1) == 0;
      v11 = v116;
      if (v54)
      {
        v87 = v88;
      }

      else
      {
        v87 = 0;
      }
    }

    v64 = v109;
LABEL_71:
    v17 = v68;
LABEL_72:
    v27 = v117;
    goto LABEL_73;
  }

LABEL_3:
  if (v31 >= 1)
  {
    v102 = v17;
    v114 = v30 & 0xC000000000000001;
    v105 = (v104 + 8);
    v32 = v30;

    v33 = v32;
    v34 = 0;
    v17 = 0;
    v110 = v7;
    v111 = v4;
    v112 = v31;
    v113 = v33;
    while (1)
    {
      if (v114)
      {
        v35 = sub_100101CA4();
      }

      else
      {
        v35 = *(v33 + 8 * v17 + 32);
      }

      v36 = OBJC_IVAR____TtC21JournalShareExtension15AssetAttachment_assetType;
      sub_1000329A0(v35 + OBJC_IVAR____TtC21JournalShareExtension15AssetAttachment_assetType, v23, type metadata accessor for AssetAttachment.AssetType);
      v37 = swift_getEnumCaseMultiPayload();
      v38 = v37;
      if (v37 > 1)
      {
        break;
      }

      v40 = v23;
      if (!v38)
      {
        goto LABEL_12;
      }

      v4 = *v23;
      v56 = UIImageHEICRepresentation(*v23);
      if (!v56)
      {

        v49 = 0;
        v11 = v116;
        goto LABEL_26;
      }

      v57 = v56;
      v58 = sub_1000FF564();
      v7 = v59;

      v60 = v7 >> 62;
      if ((v7 >> 62) > 1)
      {
        v11 = v116;
        if (v60 == 2)
        {
          v61 = *(v58 + 16);
          v4 = *(v58 + 24);
          result = sub_1000064C0(v58, v7);
          v49 = &v4[-v61];
          if (__OFSUB__(v4, v61))
          {
            goto LABEL_97;
          }

          goto LABEL_26;
        }

        sub_1000064C0(v58, v7);
LABEL_22:
        v49 = 0;
LABEL_26:
        v27 = v117;
        goto LABEL_27;
      }

      v11 = v116;
      v27 = v117;
      if (v60)
      {
        v4 = HIDWORD(v58);
        result = sub_1000064C0(v58, v7);
        LODWORD(v49) = HIDWORD(v58) - v58;
        if (__OFSUB__(HIDWORD(v58), v58))
        {
          goto LABEL_98;
        }

        v49 = v49;
      }

      else
      {
        sub_1000064C0(v58, v7);
        v49 = BYTE6(v7);
      }

LABEL_27:
      v30 = v112;
      v33 = v113;
      v55 = __OFADD__(v34, v49);
      v34 += v49;
      if (v55)
      {
        __break(1u);
        goto LABEL_44;
      }

      ++v17;
      v7 = v110;
      v4 = v111;
      if (v112 == v17)
      {

        v17 = v102;
        goto LABEL_46;
      }
    }

    v39 = v37 - 2;
    v40 = v23;
    if (v39 >= 2)
    {

      v40 = v23 + *(sub_100007210(&qword_10014CE88) + 48);
    }

LABEL_12:
    sub_1000328DC(v40, type metadata accessor for AssetAttachment.AssetType.FilePathType);
    sub_1000329A0(v35 + v36, v20, type metadata accessor for AssetAttachment.AssetType);
    v41 = swift_getEnumCaseMultiPayload();
    v42 = v41;
    if (v41 <= 1)
    {
      v44 = v20;
      if (v42)
      {
        sub_1000328DC(v20, type metadata accessor for AssetAttachment.AssetType);
        v48 = 1;
LABEL_20:
        v4 = sub_1000FF514();
        v7 = *(v4 - 1);
        (*(v7 + 56))(v15, v48, 1, v4);
        if ((*(v7 + 48))(v15, 1, v4) != 1)
        {
          v50 = sub_1000FF414();
          v52 = v51;

          v53 = *(v7 + 8);
          v7 += 8;
          v53(v15, v4);
          v54 = (v52 & 1) == 0;
          v11 = v116;
          if (v54)
          {
            v49 = v50;
          }

          else
          {
            v49 = 0;
          }

          goto LABEL_26;
        }

        sub_10000FFB4(v15, &qword_10014EBD0);
        goto LABEL_22;
      }
    }

    else
    {
      v43 = v41 - 2;
      v44 = v20;
      if (v43 >= 2)
      {

        v44 = &v20[*(sub_100007210(&qword_10014CE88) + 48)];
      }
    }

    sub_10008BF3C(v44, v7, type metadata accessor for AssetAttachment.AssetType.FilePathType);
    sub_1000329A0(v7, v4, type metadata accessor for AssetAttachment.AssetType.FilePathType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1000328DC(v7, type metadata accessor for AssetAttachment.AssetType.FilePathType);
      v45 = sub_1000FF514();
      (*(*(v45 - 8) + 32))(v15, v4, v45);
    }

    else
    {
      v46 = v106;
      sub_1001001D4();
      sub_100100184();

      v47 = v46;
      v11 = v116;
      (*v105)(v47, v107);
      sub_1000328DC(v7, type metadata accessor for AssetAttachment.AssetType.FilePathType);
    }

    v48 = 0;
    goto LABEL_20;
  }

  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
  return result;
}

void sub_100085274(uint64_t a1, void *a2)
{
  v4 = sub_100007210(&unk_10014EF00);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - v6;
  sub_100010F50(0, &qword_10014CBF0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  (*(v5 + 16))(v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v7, v4);
  aBlock[4] = sub_10008C608;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10008C9D4;
  aBlock[3] = &unk_1001376B0;
  v11 = _Block_copy(aBlock);

  v12 = [a2 loadObjectOfClass:ObjCClassFromMetadata completionHandler:v11];
  _Block_release(v11);
}

void sub_100085458(uint64_t a1, void *a2)
{
  v4 = sub_100007210(&unk_10014EEE0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - v6;
  sub_100010F50(0, &qword_10014EED8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  (*(v5 + 16))(v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v7, v4);
  aBlock[4] = sub_10008BFC8;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10008C9D4;
  aBlock[3] = &unk_100137660;
  v11 = _Block_copy(aBlock);

  v12 = [a2 loadObjectOfClass:ObjCClassFromMetadata completionHandler:v11];
  _Block_release(v11);
}

uint64_t sub_10008563C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (a1 && (objc_opt_self(), swift_dynamicCastObjCClass()))
  {
    swift_unknownObjectRetain();
    sub_100007210(a5);
    return sub_1001012A4();
  }

  else
  {
    if (!a2)
    {
      sub_100082D0C();
      swift_allocError();
      *v8 = 0;
    }

    swift_errorRetain();
    sub_100007210(a5);
    return sub_100101294();
  }
}

unint64_t sub_100085718(uint64_t a1)
{
  result = 0xD000000000000024;
  if (!a1)
  {
    return 0xD000000000000029;
  }

  if (a1 != 1)
  {
    sub_100101C64(38);

    v3._countAndFlagsBits = sub_1001020E4();
    sub_1001010B4(v3);

    return 0xD000000000000024;
  }

  return result;
}

uint64_t sub_1000857EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[9] = a2;
  sub_100007210(&qword_10014CBD8);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  sub_100101304();
  v4[14] = sub_1001012F4();
  v6 = sub_100101284();

  return _swift_task_switch(sub_1000858CC, v6, v5);
}

uint64_t sub_1000858CC()
{
  v1 = v0[10];

  if (v1 >> 62)
  {
    result = sub_100101DA4();
    if (!result)
    {
      goto LABEL_19;
    }
  }

  else
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_19;
    }
  }

  if (result < 1)
  {
    __break(1u);
    return result;
  }

  v3 = 0;
  v23 = *v0[9];
  v24 = result;
  v21 = v0 + 2;
  v22 = v1 & 0xC000000000000001;
  v20 = v0[10] + 32;
  v27 = v0;
  do
  {
    v26 = v3;
    if (v22)
    {
      v6 = sub_100101CA4();
    }

    else
    {
      v6 = *(v20 + 8 * v3);
    }

    v7 = v6;
    v9 = v0[12];
    v8 = v0[13];
    v10 = v27[11];
    v11 = sub_100101324();
    v12 = *(v11 - 8);
    (*(v12 + 56))(v8, 1, 1, v11);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = v10;
    v13[5] = v7;
    sub_100010014(v8, v9, &qword_10014CBD8);
    LODWORD(v8) = (*(v12 + 48))(v9, 1, v11);
    v0 = v27;

    v25 = v7;
    v14 = v27[12];
    if (v8 == 1)
    {
      sub_10000FFB4(v27[12], &qword_10014CBD8);
    }

    else
    {
      sub_100101314();
      (*(v12 + 8))(v14, v11);
    }

    if (v13[2])
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v15 = sub_100101284();
      v17 = v16;
      swift_unknownObjectRelease();
    }

    else
    {
      v15 = 0;
      v17 = 0;
    }

    v18 = swift_allocObject();
    *(v18 + 16) = &unk_10010E250;
    *(v18 + 24) = v13;

    if (v17 | v15)
    {
      v4 = v21;
      *v21 = 0;
      v21[1] = 0;
      v27[4] = v15;
      v27[5] = v17;
    }

    else
    {
      v4 = 0;
    }

    ++v3;
    v5 = v27[13];
    v27[6] = 1;
    v27[7] = v4;
    v27[8] = v23;
    swift_task_create();

    sub_10000FFB4(v5, &qword_10014CBD8);
  }

  while (v24 != v26 + 1);
LABEL_19:

  v19 = v0[1];

  return v19();
}

uint64_t sub_100085C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_100008030;

  return sub_100085CE4(a5);
}

uint64_t sub_100085CE4(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  sub_100007210(&qword_10014EEF0);
  v2[5] = swift_task_alloc();
  v3 = sub_1000FF514();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v4 = sub_100100A04();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  sub_100101304();
  v2[17] = sub_1001012F4();
  v6 = sub_100101284();
  v2[18] = v6;
  v2[19] = v5;

  return _swift_task_switch(sub_100085EA8, v6, v5);
}

uint64_t sub_100085EA8()
{
  v1 = v0[16];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[3];
  sub_1001009B4();
  sub_100100904();
  v5 = sub_100100F94();

  LODWORD(v4) = [v4 hasItemConformingToTypeIdentifier:v5];

  v6 = *(v3 + 8);
  v0[20] = v6;
  v0[21] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  if (v4)
  {
    v7 = v0[17];
    sub_1001009B4();

    if (v7)
    {
      swift_getObjectType();
      v8 = sub_100101284();
      v10 = v9;
    }

    else
    {
      v8 = 0;
      v10 = 0;
    }

    v0[22] = v8;
    v0[23] = v10;
    v25 = sub_1000861F4;
  }

  else
  {
    v11 = v0[20];
    v12 = v0[16];
    v13 = v0[12];
    v14 = v0[13];
    v15 = v0[5];
    v16 = v0[3];
    sub_1001009A4();
    v17 = [v16 registeredContentTypes];
    v18 = sub_1001011D4();

    *(swift_task_alloc() + 16) = v12;
    sub_1000B8154(sub_10008BFFC, v18, v15);

    v11(v12, v13);
    if ((*(v14 + 48))(v15, 1, v13) == 1)
    {
      sub_10000FFB4(v0[5], &qword_10014EEF0);
    }

    else
    {
      v19 = v0[20];
      v20 = v0[16];
      v21 = v0[12];
      (*(v0[13] + 32))(v0[14], v0[5], v21);
      sub_1001009A4();
      sub_10008C528(&qword_10014EEF8, &type metadata accessor for UTType);
      v22 = sub_100100F04();
      v19(v20, v21);
      if ((v22 & 1) == 0)
      {
        v26 = v0[17];

        if (v26)
        {
          swift_getObjectType();
          v8 = sub_100101284();
          v10 = v27;
        }

        else
        {
          v8 = 0;
          v10 = 0;
        }

        v0[27] = v8;
        v0[28] = v10;
        v25 = sub_100086D8C;
        goto LABEL_18;
      }

      (v0[20])(v0[14], v0[12]);
    }

    v23 = v0[17];

    if (v23)
    {
      swift_getObjectType();
      v8 = sub_100101284();
      v10 = v24;
    }

    else
    {
      v8 = 0;
      v10 = 0;
    }

    v0[32] = v8;
    v0[33] = v10;
    v25 = sub_100087560;
  }

LABEL_18:

  return _swift_task_switch(v25, v8, v10);
}

uint64_t sub_1000861F4()
{
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[24] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[25] = v5;
  *v5 = v0;
  v5[1] = sub_1000862FC;
  v6 = v0[11];
  v7 = v0[6];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v6, v1, &protocol witness table for MainActor, 0xD00000000000001CLL, 0x8000000100108260, sub_10008C9D8, v4, v7);
}

uint64_t sub_1000862FC()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = *(v2 + 176);
    v4 = *(v2 + 184);
    v5 = sub_100086938;
  }

  else
  {

    v3 = *(v2 + 176);
    v4 = *(v2 + 184);
    v5 = sub_100086418;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100086418()
{
  v1 = v0[20];
  v2 = v0[15];
  v3 = v0[12];

  v1(v2, v3);
  v4 = v0[18];
  v5 = v0[19];

  return _swift_task_switch(sub_10008649C, v4, v5);
}

uint64_t sub_10008649C()
{
  v1 = *(v0 + 208);
  sub_10008A1FC(*(v0 + 88), 1);
  if (v1)
  {
    (*(*(v0 + 56) + 8))(*(v0 + 88), *(v0 + 48));
    if (qword_10014B8D8 != -1)
    {
      swift_once();
    }

    v2 = sub_100100AE4();
    sub_100003D38(v2, qword_100158900);
    swift_errorRetain();
    v3 = sub_100100AC4();
    v4 = sub_1001015B4();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      swift_errorRetain();
      v7 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 4) = v7;
      *v6 = v7;
      _os_log_impl(&_mh_execute_header, v3, v4, "Failed to fetch video: %@", v5, 0xCu);
      sub_10000FFB4(v6, &unk_10014D660);
    }

    else
    {
    }

    v10 = *(v0 + 160);
    v11 = *(v0 + 128);
    v12 = *(v0 + 96);
    v13 = *(v0 + 104);
    v14 = *(v0 + 40);
    v15 = *(v0 + 24);
    sub_1001009A4();
    v16 = [v15 registeredContentTypes];
    v17 = sub_1001011D4();

    *(swift_task_alloc() + 16) = v11;
    sub_1000B8154(sub_10008BFFC, v17, v14);

    v10(v11, v12);
    if ((*(v13 + 48))(v14, 1, v12) == 1)
    {
      sub_10000FFB4(*(v0 + 40), &qword_10014EEF0);
    }

    else
    {
      v18 = *(v0 + 160);
      v19 = *(v0 + 128);
      v20 = *(v0 + 96);
      (*(*(v0 + 104) + 32))(*(v0 + 112), *(v0 + 40), v20);
      sub_1001009A4();
      sub_10008C528(&qword_10014EEF8, &type metadata accessor for UTType);
      v21 = sub_100100F04();
      v18(v19, v20);
      if ((v21 & 1) == 0)
      {
        v27 = *(v0 + 136);

        if (v27)
        {
          swift_getObjectType();
          v23 = sub_100101284();
          v25 = v28;
        }

        else
        {
          v23 = 0;
          v25 = 0;
        }

        *(v0 + 216) = v23;
        *(v0 + 224) = v25;
        v26 = sub_100086D8C;
        goto LABEL_22;
      }

      (*(v0 + 160))(*(v0 + 112), *(v0 + 96));
    }

    v22 = *(v0 + 136);

    if (v22)
    {
      swift_getObjectType();
      v23 = sub_100101284();
      v25 = v24;
    }

    else
    {
      v23 = 0;
      v25 = 0;
    }

    *(v0 + 256) = v23;
    *(v0 + 264) = v25;
    v26 = sub_100087560;
LABEL_22:

    return _swift_task_switch(v26, v23, v25);
  }

  (*(*(v0 + 56) + 8))(*(v0 + 88), *(v0 + 48));

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100086938()
{
  v1 = v0[20];
  v2 = v0[15];
  v3 = v0[12];

  v1(v2, v3);
  v4 = v0[18];
  v5 = v0[19];

  return _swift_task_switch(sub_1000869D0, v4, v5);
}

uint64_t sub_1000869D0()
{
  if (qword_10014B8D8 != -1)
  {
    swift_once();
  }

  v1 = sub_100100AE4();
  sub_100003D38(v1, qword_100158900);
  swift_errorRetain();
  v2 = sub_100100AC4();
  v3 = sub_1001015B4();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to fetch video: %@", v4, 0xCu);
    sub_10000FFB4(v5, &unk_10014D660);
  }

  else
  {
  }

  v7 = v0[20];
  v8 = v0[16];
  v9 = v0[12];
  v10 = v0[13];
  v11 = v0[5];
  v12 = v0[3];
  sub_1001009A4();
  v13 = [v12 registeredContentTypes];
  v14 = sub_1001011D4();

  *(swift_task_alloc() + 16) = v8;
  sub_1000B8154(sub_10008BFFC, v14, v11);

  v7(v8, v9);
  if ((*(v10 + 48))(v11, 1, v9) == 1)
  {
    sub_10000FFB4(v0[5], &qword_10014EEF0);
  }

  else
  {
    v15 = v0[20];
    v16 = v0[16];
    v17 = v0[12];
    (*(v0[13] + 32))(v0[14], v0[5], v17);
    sub_1001009A4();
    sub_10008C528(&qword_10014EEF8, &type metadata accessor for UTType);
    v18 = sub_100100F04();
    v15(v16, v17);
    if ((v18 & 1) == 0)
    {
      v24 = v0[17];

      if (v24)
      {
        swift_getObjectType();
        v20 = sub_100101284();
        v22 = v25;
      }

      else
      {
        v20 = 0;
        v22 = 0;
      }

      v0[27] = v20;
      v0[28] = v22;
      v23 = sub_100086D8C;
      goto LABEL_18;
    }

    (v0[20])(v0[14], v0[12]);
  }

  v19 = v0[17];

  if (v19)
  {
    swift_getObjectType();
    v20 = sub_100101284();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  v0[32] = v20;
  v0[33] = v22;
  v23 = sub_100087560;
LABEL_18:

  return _swift_task_switch(v23, v20, v22);
}

uint64_t sub_100086D8C()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[29] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[30] = v5;
  *v5 = v0;
  v5[1] = sub_100086E94;
  v6 = v0[10];
  v7 = v0[6];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v6, v1, &protocol witness table for MainActor, 0xD00000000000001CLL, 0x8000000100108260, sub_10008C9D8, v4, v7);
}

uint64_t sub_100086E94()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = *(v2 + 216);
    v4 = *(v2 + 224);
    v5 = sub_100087300;
  }

  else
  {

    v3 = *(v2 + 216);
    v4 = *(v2 + 224);
    v5 = sub_100086FB0;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100086FB0()
{

  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  return _swift_task_switch(sub_100087014, v1, v2);
}

uint64_t sub_100087014()
{
  v1 = *(v0 + 248);
  sub_10008A1FC(*(v0 + 80), 0);
  if (v1)
  {
    (*(*(v0 + 56) + 8))(*(v0 + 80), *(v0 + 48));
    if (qword_10014B8D8 != -1)
    {
      swift_once();
    }

    v2 = sub_100100AE4();
    sub_100003D38(v2, qword_100158900);
    swift_errorRetain();
    v3 = sub_100100AC4();
    v4 = sub_1001015B4();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      swift_errorRetain();
      v7 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 4) = v7;
      *v6 = v7;
      _os_log_impl(&_mh_execute_header, v3, v4, "Failed to fetch image file representation: %@", v5, 0xCu);
      sub_10000FFB4(v6, &unk_10014D660);
    }

    else
    {
    }

    (*(v0 + 160))(*(v0 + 112), *(v0 + 96));
    v13 = *(v0 + 136);

    if (v13)
    {
      swift_getObjectType();
      v14 = sub_100101284();
      v16 = v15;
    }

    else
    {
      v14 = 0;
      v16 = 0;
    }

    *(v0 + 256) = v14;
    *(v0 + 264) = v16;

    return _swift_task_switch(sub_100087560, v14, v16);
  }

  else
  {
    v8 = *(v0 + 160);
    v9 = *(v0 + 112);
    v10 = *(v0 + 96);
    (*(*(v0 + 56) + 8))(*(v0 + 80), *(v0 + 48));

    v8(v9, v10);

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_100087300()
{

  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  return _swift_task_switch(sub_100087370, v1, v2);
}

uint64_t sub_100087370()
{
  if (qword_10014B8D8 != -1)
  {
    swift_once();
  }

  v1 = sub_100100AE4();
  sub_100003D38(v1, qword_100158900);
  swift_errorRetain();
  v2 = sub_100100AC4();
  v3 = sub_1001015B4();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to fetch image file representation: %@", v4, 0xCu);
    sub_10000FFB4(v5, &unk_10014D660);
  }

  else
  {
  }

  (*(v0 + 160))(*(v0 + 112), *(v0 + 96));
  v7 = *(v0 + 136);

  if (v7)
  {
    swift_getObjectType();
    v8 = sub_100101284();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  *(v0 + 256) = v8;
  *(v0 + 264) = v10;

  return _swift_task_switch(sub_100087560, v8, v10);
}

uint64_t sub_100087560()
{
  v1 = v0[17];
  v2 = v0[3];
  v3 = swift_task_alloc();
  v0[34] = v3;
  *(v3 + 16) = v2;
  v4 = swift_task_alloc();
  v0[35] = v4;
  v5 = sub_100010F50(0, &qword_10014EED8);
  *v4 = v0;
  v4[1] = sub_10008767C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, v1, &protocol witness table for MainActor, 0x656A624F64616F6CLL, 0xEF293A666F287463, sub_10008C9DC, v3, v5);
}

uint64_t sub_10008767C()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v3 = *(v2 + 256);
    v4 = *(v2 + 264);
    v5 = sub_100087ADC;
  }

  else
  {

    v3 = *(v2 + 256);
    v4 = *(v2 + 264);
    v5 = sub_100087798;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100087798()
{

  v0[37] = v0[2];
  v1 = v0[18];
  v2 = v0[19];

  return _swift_task_switch(sub_100087804, v1, v2);
}

uint64_t sub_100087804()
{
  v1 = v0[36];
  v2 = v0[37];
  v3 = v0[9];
  sub_1000FF4C4();

  sub_10008A1FC(v3, 0);
  if (v1)
  {
    (*(v0[7] + 8))(v0[9], v0[6]);
    if (qword_10014B8D8 != -1)
    {
      swift_once();
    }

    v4 = sub_100100AE4();
    v0[38] = sub_100003D38(v4, qword_100158900);
    swift_errorRetain();
    v5 = sub_100100AC4();
    v6 = sub_1001015B4();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      swift_errorRetain();
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v9;
      *v8 = v9;
      _os_log_impl(&_mh_execute_header, v5, v6, "Failed to fetch image file URL: %@", v7, 0xCu);
      sub_10000FFB4(v8, &unk_10014D660);
    }

    else
    {
    }

    v12 = swift_task_alloc();
    v0[39] = v12;
    *v12 = v0;
    v12[1] = sub_100087D2C;
    v13 = v0[3];

    return sub_10008C01C(v13);
  }

  else
  {
    (*(v0[7] + 8))(v0[9], v0[6]);

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_100087ADC()
{

  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  return _swift_task_switch(sub_100087B4C, v1, v2);
}

uint64_t sub_100087B4C()
{
  if (qword_10014B8D8 != -1)
  {
    swift_once();
  }

  v1 = sub_100100AE4();
  v0[38] = sub_100003D38(v1, qword_100158900);
  swift_errorRetain();
  v2 = sub_100100AC4();
  v3 = sub_1001015B4();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to fetch image file URL: %@", v4, 0xCu);
    sub_10000FFB4(v5, &unk_10014D660);
  }

  else
  {
  }

  v7 = swift_task_alloc();
  v0[39] = v7;
  *v7 = v0;
  v7[1] = sub_100087D2C;
  v8 = v0[3];

  return sub_10008C01C(v8);
}

uint64_t sub_100087D2C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 320) = a1;
  *(v4 + 328) = v1;

  v5 = *(v3 + 152);
  v6 = *(v3 + 144);
  if (v1)
  {
    v7 = sub_100088080;
  }

  else
  {
    v7 = sub_100087E70;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100087E70()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 328);
  v3 = *(v0 + 64);

  sub_100089F50(v1, v3);
  if (v2)
  {

    swift_errorRetain();
    v5 = sub_100100AC4();
    v6 = sub_1001015B4();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      swift_errorRetain();
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v9;
      *v8 = v9;
      _os_log_impl(&_mh_execute_header, v5, v6, "Failed to fetch image object: %@", v7, 0xCu);
      sub_10000FFB4(v8, &unk_10014D660);
    }

    else
    {
    }
  }

  else
  {
    sub_10008A1FC(*(v0 + 64), 0);
    v4 = *(v0 + 320);
    (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100088080()
{

  swift_errorRetain();
  v1 = sub_100100AC4();
  v2 = sub_1001015B4();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to fetch image object: %@", v3, 0xCu);
    sub_10000FFB4(v4, &unk_10014D660);
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10008823C(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  sub_1000FF804();
  v3[7] = swift_task_alloc();
  v4 = sub_1000FFC54();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v5 = sub_1000FF514();
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v6 = sub_100100A04();
  v3[18] = v6;
  v3[19] = *(v6 - 8);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  sub_100101304();
  v3[22] = sub_1001012F4();
  v7 = sub_100101284();
  v3[23] = v7;
  v3[24] = v8;

  return _swift_task_switch(sub_100088488, v7, v8);
}

uint64_t sub_100088488()
{
  v1 = v0[21];
  v2 = v0[18];
  v3 = v0[19];
  v4 = v0[4];
  sub_100100994();
  sub_100100904();
  v5 = sub_100100F94();

  LODWORD(v4) = [v4 hasItemConformingToTypeIdentifier:v5];

  v6 = *(v3 + 8);
  v0[25] = v6;
  v0[26] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = v0[22];
  if (v4)
  {
    sub_100100994();

    if (v7)
    {
      swift_getObjectType();
      v8 = sub_100101284();
      v10 = v9;
    }

    else
    {
      v8 = 0;
      v10 = 0;
    }

    v0[27] = v8;
    v0[28] = v10;
    v12 = sub_100088628;
  }

  else
  {

    if (v7)
    {
      swift_getObjectType();
      v8 = sub_100101284();
      v10 = v11;
    }

    else
    {
      v8 = 0;
      v10 = 0;
    }

    v0[35] = v8;
    v0[36] = v10;
    v12 = sub_1000891F8;
  }

  return _swift_task_switch(v12, v8, v10);
}

uint64_t sub_100088628()
{
  v1 = v0;
  v2 = v0[22];
  v3 = v0[20];
  v4 = v1[4];
  v5 = swift_task_alloc();
  v1[29] = v5;
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = swift_task_alloc();
  v1[30] = v6;
  *v6 = v1;
  v6[1] = sub_10008875C;
  v7 = v1[17];
  v8 = v1[12];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v7, v2, &protocol witness table for MainActor, 0xD00000000000001CLL, 0x8000000100108260, sub_10008BFAC, v5, v8);
}

uint64_t sub_10008875C()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = *(v2 + 216);
    v4 = *(v2 + 224);
    v5 = sub_10008902C;
  }

  else
  {

    v3 = *(v2 + 216);
    v4 = *(v2 + 224);
    v5 = sub_1000888AC;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1000888AC()
{
  v1 = v0[25];
  v2 = v0[20];
  v3 = v0[18];

  v1(v2, v3);
  v4 = v0[23];
  v5 = v0[24];

  return _swift_task_switch(sub_100088964, v4, v5);
}

uint64_t sub_100088964()
{
  v1 = v0[22];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  (*(v0[13] + 16))(v0[16], v0[17], v0[12]);
  (*(v4 + 104))(v2, enum case for AssetSource.shareSheet(_:), v3);

  v5 = swift_task_alloc();
  v0[32] = v5;
  *v5 = v0;
  v5[1] = sub_100088AA0;
  v6 = v0[16];
  v7 = v0[11];

  return sub_100017AB4(v1, &protocol witness table for MainActor, v6, v7);
}

uint64_t sub_100088AA0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 264) = a1;
  *(v4 + 272) = v1;

  v5 = *(v3 + 192);
  v6 = *(v3 + 184);
  if (v1)
  {
    v7 = sub_100088F04;
  }

  else
  {
    v7 = sub_100088C28;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100088C28()
{

  v1 = sub_10008459C();
  if (sub_10005B880(v1))
  {
    *(v0[6] + 24) = 1;
    v2 = [objc_opt_self() defaultManager];
    sub_1000FF474(v3);
    v5 = v4;
    v0[3] = 0;
    v6 = [v2 removeItemAtURL:v4 error:v0 + 3];

    v7 = v0[3];
    if (v6)
    {
      v8 = v7;
    }

    else
    {
      v12 = v7;
      sub_1000FF334();

      swift_willThrow();
    }

    v13 = v0[33];
    v14 = v0[17];
    v15 = v0[12];
    v16 = v0[13];
    sub_10003D958();
    swift_allocError();
    *v17 = 0;
    swift_willThrow();

    (*(v16 + 8))(v14, v15);

    v18 = v0[1];

    return v18();
  }

  else
  {
    (*(v0[13] + 8))(v0[17], v0[12]);
    v9 = v0[33];

    v10 = v0[1];

    return v10(v9);
  }
}

uint64_t sub_100088F04()
{
  v1 = v0[17];
  v2 = v0[12];
  v3 = v0[13];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10008902C()
{
  v1 = v0[25];
  v2 = v0[20];
  v3 = v0[18];

  v1(v2, v3);
  v4 = v0[23];
  v5 = v0[24];

  return _swift_task_switch(sub_1000890F0, v4, v5);
}

uint64_t sub_1000890F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000891F8()
{
  v1 = v0[22];
  v2 = v0[4];
  v3 = swift_task_alloc();
  v0[37] = v3;
  *(v3 + 16) = v2;
  v4 = swift_task_alloc();
  v0[38] = v4;
  v5 = sub_100010F50(0, &qword_10014EED8);
  *v4 = v0;
  v4[1] = sub_100089340;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, v1, &protocol witness table for MainActor, 0x656A624F64616F6CLL, 0xEF293A666F287463, sub_10008BFA4, v3, v5);
}

uint64_t sub_100089340()
{
  v2 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v3 = *(v2 + 280);
    v4 = *(v2 + 288);
    v5 = sub_10008970C;
  }

  else
  {

    v3 = *(v2 + 280);
    v4 = *(v2 + 288);
    v5 = sub_100089490;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100089490()
{

  v0[40] = v0[2];
  v1 = v0[23];
  v2 = v0[24];

  return _swift_task_switch(sub_100089528, v1, v2);
}

uint64_t sub_100089528()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 40);
  sub_1000FF4C4();

  v3 = [v2 attributedTitle];
  if (v3 || (v3 = [*(v0 + 40) attributedContentText]) != 0)
  {
    v4 = v3;
    v5 = [v3 string];

    v6 = sub_100100FD4();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = *(v0 + 176);
  v11 = *(v0 + 72);
  v10 = *(v0 + 80);
  v12 = *(v0 + 64);
  (*(*(v0 + 104) + 16))(*(v0 + 112), *(v0 + 120), *(v0 + 96));
  (*(v11 + 104))(v10, enum case for AssetSource.shareSheet(_:), v12);

  sub_1000FF7C4();
  v13 = swift_task_alloc();
  *(v0 + 328) = v13;
  *v13 = v0;
  v13[1] = sub_1000898B0;
  v14 = *(v0 + 112);
  v15 = *(v0 + 80);
  v16 = *(v0 + 56);

  return sub_10009C4EC(v9, &protocol witness table for MainActor, v15, v14, v6, v8, v16);
}

uint64_t sub_10008970C()
{

  v1 = *(v0 + 184);
  v2 = *(v0 + 192);

  return _swift_task_switch(sub_1000897A8, v1, v2);
}

uint64_t sub_1000897A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000898B0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 336) = v1;

  if (v1)
  {
    v5 = v4[23];
    v6 = v4[24];
    v7 = sub_100089B50;
  }

  else
  {
    v4[43] = a1;
    v5 = v4[23];
    v6 = v4[24];
    v7 = sub_100089A20;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_100089A20()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];

  (*(v3 + 8))(v1, v2);
  v4 = v0[43];

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_100089B50()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100089C78(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  if (a1 && (v17[2] = a1, swift_unknownObjectRetain(), sub_100007210(&qword_10014EF10), (swift_dynamicCast() & 1) != 0))
  {
    a3(v17[0], v17[1]);
  }

  else
  {
    if (qword_10014B8D8 != -1)
    {
      swift_once();
    }

    v6 = sub_100100AE4();
    sub_100003D38(v6, qword_100158900);
    swift_errorRetain();
    v7 = sub_100100AC4();
    v8 = sub_1001015B4();

    if (os_log_type_enabled(v7, v8))
    {
      v16 = a3;
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v17[0] = v10;
      *v9 = 136315138;
      if (!a2)
      {
        sub_100082D0C();
        swift_allocError();
        *v11 = 0;
      }

      swift_getErrorValue();
      swift_errorRetain();
      v12 = sub_100101F14();
      v14 = v13;

      v15 = sub_10007A774(v12, v14, v17);

      *(v9 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v7, v8, "Failed to fetch string: %s", v9, 0xCu);
      sub_10001100C(v10);

      return (v16)(0, 0);
    }

    else
    {

      return (a3)(0, 0);
    }
  }
}

uint64_t sub_100089ED0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t sub_100089F50@<X0>(UIImage *a1@<X0>, char *a2@<X8>)
{
  v32 = a2;
  v4 = sub_1000FF874();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000FF514();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v28 - v13;
  v15 = UIImagePNGRepresentation(a1);
  if (v15)
  {
    v16 = v15;
    v29 = sub_1000FF564();
    v31 = v8;
    v17 = v4;
    v19 = v18;

    sub_1000FF464();
    sub_1000FF864();
    sub_1000FF814();
    v30 = v2;
    v20 = v17;
    v21 = v31;
    (*(v5 + 8))(v7, v20);
    v22 = v29;
    sub_1000FF494();

    v23 = *(v9 + 8);
    v23(v12, v21);
    v24 = v32;
    sub_1000FF4A4();
    v23(v14, v21);
    v25 = v30;
    sub_1000FF574();
    if (v25)
    {
      v23(v24, v21);
    }

    return sub_1000064C0(v22, v19);
  }

  else
  {
    sub_10003D958();
    swift_allocError();
    *v27 = 1;
    return swift_willThrow();
  }
}

void sub_10008A1FC(char *a1, int a2)
{
  LODWORD(v205) = a2;
  v214 = a1;
  v199 = sub_100007210(&qword_10014C2B0);
  __chkstk_darwin(v199);
  v200 = &v186 - v2;
  v198 = sub_1001004B4();
  v197 = *(v198 - 8);
  __chkstk_darwin(v198);
  v196 = &v186 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = type metadata accessor for AssetAttachment.AssetType(0);
  __chkstk_darwin(v191);
  v192 = &v186 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v217 = sub_1000FF514();
  v5 = *(v217 - 8);
  v6 = __chkstk_darwin(v217);
  v188 = &v186 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v190 = &v186 - v9;
  __chkstk_darwin(v8);
  v189 = &v186 - v10;
  v11 = sub_1000FF874();
  v218 = *(v11 - 8);
  v219 = v11;
  v12 = __chkstk_darwin(v11);
  v207 = &v186 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v212 = &v186 - v14;
  v221 = sub_1001007D4();
  v15 = *(v221 - 1);
  v16 = __chkstk_darwin(v221);
  v206 = &v186 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v220 = &v186 - v18;
  v19 = sub_100007210(&unk_10014D640);
  v20 = __chkstk_darwin(v19 - 8);
  v22 = &v186 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v195 = &v186 - v24;
  __chkstk_darwin(v23);
  v26 = &v186 - v25;
  v27 = sub_100007210(&qword_10014EBD0);
  v28 = __chkstk_darwin(v27 - 8);
  v194 = (&v186 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = __chkstk_darwin(v28);
  v213 = &v186 - v31;
  v32 = __chkstk_darwin(v30);
  v193 = (&v186 - v33);
  __chkstk_darwin(v32);
  v211 = &v186 - v34;
  v35 = sub_1000FFC54();
  v36 = *(v35 - 8);
  v37 = __chkstk_darwin(v35);
  v39 = &v186 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __chkstk_darwin(v37);
  v204 = &v186 - v41;
  v42 = __chkstk_darwin(v40);
  v216 = &v186 - v43;
  v44 = __chkstk_darwin(v42);
  v215 = v36 + 2;
  v46 = v36[13];
  v210 = v5 + 16;
  v209 = v15;
  v202 = (v15 + 104);
  v208 = v44;
  v203 = v5;
  if (v205)
  {
    v47 = &v186 - v45;
    v48 = v35;
    v46(&v186 - v45, enum case for AssetSource.shareSheet(_:), v35);
    v49 = v5;
    v50 = *(v5 + 16);
    v51 = v211;
    v52 = v217;
    v194 = v50;
    v50(v211, v214, v217);
    (*(v49 + 56))(v51, 0, 1, v52);
    v213 = v26;
    sub_10005D4F4();
    v53 = v209;
    v54 = v220;
    (v209[13])(v220, enum case for AssetType.video(_:), v221);
    v202 = v36[2];
    v205 = v47;
    v55 = v36;
    v56 = v48;
    v202(v216, v47, v48);
    v57 = v212;
    sub_1000FF864();
    v58 = objc_allocWithZone(type metadata accessor for VideoAsset());
    *&v58[OBJC_IVAR____TtC21JournalShareExtension10VideoAsset_metadata] = 0;
    v59 = v218;
    v60 = v207;
    (*(v218 + 16))(v207, v57, v219);
    v61 = *(v53 + 16);
    v62 = v206;
    v61(v206, v54, v221);
    v63 = v204;
    v64 = v216;
    v202(v204, v216, v56);
    v65 = sub_1000429EC(v60, v62, v63);
    v66 = *(v59 + 8);
    v67 = v219;
    v218 = v59 + 8;
    v66(v57, v219);
    v68 = v55[1];
    v215 = v55 + 1;
    v216 = v68;
    (v68)(v64, v56);
    (v209[1])(v220, v221);
    v69 = v193;
    sub_100010014(v211, v193, &qword_10014EBD0);
    v70 = v203;
    v71 = v217;
    v72 = (*(v203 + 48))(v69, 1, v217);
    v207 = v65;
    if (v72 == 1)
    {
      sub_10000FFB4(v69, &qword_10014EBD0);
    }

    else
    {
      v96 = v67;
      v97 = v189;
      (*(v70 + 32))(v189, v69, v71);
      v98 = v192;
      v194(v192, v97, v71);
      type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      sub_1000FF864();
      v99 = v65;
      v100 = sub_1000FF814();
      v101 = v96;
      v103 = v102;
      v66(v57, v101);
      type metadata accessor for AssetAttachment(0);
      v104 = swift_allocObject();
      *(v104 + 16) = 0;
      sub_10008BF3C(v98, v104 + OBJC_IVAR____TtC21JournalShareExtension15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
      v105 = (v104 + OBJC_IVAR____TtC21JournalShareExtension15AssetAttachment_fileNameID);
      *v105 = v100;
      v105[1] = v103;
      v106 = OBJC_IVAR____TtC21JournalShareExtension5Asset_sourceAttachments;
      swift_beginAccess();
      sub_1001011B4();
      if (*((*&v99[v106] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v99[v106] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100101204();
      }

      sub_100101234();
      swift_endAccess();
      (*(v70 + 8))(v97, v71);
    }

    v107 = v213;
    sub_100010014(v213, v195, &unk_10014D640);
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v224.origin.x = CGRectZero.origin.x;
    v224.origin.y = y;
    v224.size.width = width;
    v224.size.height = height;
    v111 = NSStringFromCGRect(v224);
    sub_100100FD4();

    v225.origin.x = CGRectZero.origin.x;
    v225.origin.y = y;
    v225.size.width = width;
    v225.size.height = height;
    v112 = NSStringFromCGRect(v225);
    sub_100100FD4();

    v226.origin.x = CGRectZero.origin.x;
    v226.origin.y = y;
    v226.size.width = width;
    v226.size.height = height;
    v113 = NSStringFromCGRect(v226);
    sub_100100FD4();

    v114 = v196;
    sub_100100484();
    sub_10000FFB4(v107, &unk_10014D640);
    sub_10000FFB4(v211, &qword_10014EBD0);
    (v216)(v205, v208);
    v115 = v200;
    (*(v197 + 32))(v200, v114, v198);
    swift_storeEnumTagMultiPayload();
    sub_100007210(&unk_10014EEA0);
    v116 = swift_allocObject();
    v117 = *(*v116 + 104);
    v118 = sub_100007210(&qword_10014C2B8);
    (*(*(v118 - 8) + 56))(v116 + v117, 1, 1, v118);
    *(v116 + *(*v116 + 112)) = xmmword_10010BC70;
    sub_10008BCBC(v115, v116 + *(*v116 + 120));
    v119 = v207;
    *&v207[OBJC_IVAR____TtC21JournalShareExtension10VideoAsset_metadata] = v116;
    goto LABEL_23;
  }

  v46(v39, enum case for AssetSource.shareSheet(_:), v35);
  v73 = v5;
  v74 = *(v5 + 16);
  v75 = v213;
  v76 = v217;
  v193 = v74;
  (v74)(v213, v214, v217);
  (*(v73 + 56))(v75, 0, 1, v76);
  v211 = v22;
  sub_10005D4F4();
  v77 = v209;
  (v209[13])(v220, enum case for AssetType.photo(_:), v221);
  v202 = v36[2];
  v205 = v39;
  v78 = v35;
  v202(v216, v39, v35);
  v79 = v212;
  sub_1000FF864();
  v80 = objc_allocWithZone(type metadata accessor for PhotoAsset());
  *&v80[OBJC_IVAR____TtC21JournalShareExtension10PhotoAsset_metadata] = 0;
  v81 = v218;
  v82 = *(v218 + 16);
  v83 = v207;
  v189 = (v218 + 16);
  v187 = v82;
  v82(v207, v79, v219);
  v84 = v206;
  (*(v77 + 16))(v206, v220, v221);
  v85 = v204;
  v86 = v216;
  v202(v204, v216, v78);
  v87 = sub_1000429EC(v83, v84, v85);
  v90 = *(v81 + 8);
  v89 = v81 + 8;
  v88 = v90;
  v91 = v212;
  v90(v212, v219);
  v92 = v36[1];
  v215 = v36 + 1;
  v216 = v92;
  (v92)(v86, v78);
  (*(v77 + 8))(v220, v221);
  v93 = v194;
  sub_100010014(v213, v194, &qword_10014EBD0);
  v94 = v203;
  v95 = v217;
  if ((*(v203 + 48))(v93, 1, v217) == 1)
  {
    sub_10000FFB4(v93, &qword_10014EBD0);
  }

  else
  {
    v221 = v88;
    v120 = v91;
    v218 = v89;
    v121 = v190;
    (*(v94 + 32))(v190, v93, v95);
    v122 = [objc_opt_self() defaultManager];
    sub_1000FF4D4();
    v123 = sub_100100F94();

    v124 = [v122 fileExistsAtPath:v123];

    if ((v124 & 1) == 0)
    {
      if (qword_10014B7E8 != -1)
      {
        swift_once();
      }

      v135 = sub_100100AE4();
      sub_100003D38(v135, qword_10014F560);
      v136 = v188;
      (v193)(v188, v121, v95);
      v137 = v121;
      v138 = v87;
      v139 = sub_100100AC4();
      v140 = sub_1001015B4();

      if (os_log_type_enabled(v139, v140))
      {
        v141 = swift_slowAlloc();
        v142 = swift_slowAlloc();
        v209 = v142;
        v210 = swift_slowAlloc();
        v223 = v210;
        *v141 = 138412802;
        *(v141 + 4) = v138;
        *v142 = v138;
        *(v141 + 12) = 2080;
        LODWORD(v207) = v140;
        v143 = v219;
        v187(v120, &v138[OBJC_IVAR____TtC21JournalShareExtension5Asset_id], v219);
        sub_10008C528(&qword_10014C018, &type metadata accessor for UUID);
        v220 = v87;
        v144 = v137;
        v145 = v138;
        v146 = sub_100101E44();
        v148 = v147;
        v221(v120, v143);
        v149 = sub_10007A774(v146, v148, &v223);

        *(v141 + 14) = v149;
        *(v141 + 22) = 2080;
        sub_10008C528(&qword_10014EEC0, &type metadata accessor for URL);
        v150 = v188;
        v151 = v217;
        v152 = sub_100101E44();
        v154 = v153;
        v155 = *(v94 + 8);
        v155(v150, v151);
        v156 = sub_10007A774(v152, v154, &v223);

        *(v141 + 24) = v156;
        _os_log_impl(&_mh_execute_header, v139, v207, "%@[%s] failed init imageFile does not exist: %s", v141, 0x20u);
        sub_10000FFB4(v209, &unk_10014D660);

        swift_arrayDestroy();

        v155(v144, v151);
        v87 = v220;
      }

      else
      {

        v157 = *(v94 + 8);
        v157(v136, v95);
        v157(v137, v95);
      }

      v134 = v213;
      goto LABEL_19;
    }

    sub_100007210(&unk_10014D0F0);
    v125 = swift_allocObject();
    *(v125 + 16) = xmmword_10010C650;
    v220 = v87;
    v126 = v192;
    (v193)(v192, v121, v95);
    type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_1000FF864();
    v127 = sub_1000FF814();
    v129 = v128;
    v221(v120, v219);
    type metadata accessor for AssetAttachment(0);
    v130 = swift_allocObject();
    *(v130 + 16) = 0;
    v131 = v126;
    v87 = v220;
    sub_10008BF3C(v131, v130 + OBJC_IVAR____TtC21JournalShareExtension15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
    v132 = (v130 + OBJC_IVAR____TtC21JournalShareExtension15AssetAttachment_fileNameID);
    *v132 = v127;
    v132[1] = v129;
    *(v125 + 32) = v130;
    (*(v94 + 8))(v121, v95);
    v133 = OBJC_IVAR____TtC21JournalShareExtension5Asset_sourceAttachments;
    swift_beginAccess();
    *&v87[v133] = v125;
  }

  v134 = v213;
LABEL_19:
  v158 = OBJC_IVAR____TtC21JournalShareExtension5Asset_sourceAttachments;
  swift_beginAccess();
  v159 = *&v87[v158];
  if (v159 >> 62)
  {
    v160 = sub_100101DA4();
  }

  else
  {
    v160 = *((v159 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v161 = v211;
  if (!v160)
  {
    sub_10008BEE8();
    swift_allocError();
    *v185 = 0;
    swift_willThrow();

    sub_10000FFB4(v161, &unk_10014D640);
    sub_10000FFB4(v134, &qword_10014EBD0);
    (v216)(v205, v208);
    return;
  }

  sub_100010014(v211, v195, &unk_10014D640);
  v162 = CGRectZero.origin.y;
  v163 = CGRectZero.size.width;
  v164 = CGRectZero.size.height;
  v207 = v87;
  v227.origin.x = CGRectZero.origin.x;
  v227.origin.y = v162;
  v227.size.width = v163;
  v227.size.height = v164;
  v165 = NSStringFromCGRect(v227);
  v221 = sub_100100FD4();

  v228.origin.x = CGRectZero.origin.x;
  v228.origin.y = v162;
  v228.size.width = v163;
  v228.size.height = v164;
  v166 = NSStringFromCGRect(v228);
  sub_100100FD4();

  v229.origin.x = CGRectZero.origin.x;
  v229.origin.y = v162;
  v229.size.width = v163;
  v229.size.height = v164;
  v167 = NSStringFromCGRect(v229);
  sub_100100FD4();

  v119 = v207;
  v168 = v196;
  sub_100100484();
  sub_10000FFB4(v161, &unk_10014D640);
  sub_10000FFB4(v134, &qword_10014EBD0);
  (v216)(v205, v208);
  v169 = v200;
  (*(v197 + 32))(v200, v168, v198);
  swift_storeEnumTagMultiPayload();
  sub_100007210(&unk_10014EEA0);
  v170 = swift_allocObject();
  v171 = *(*v170 + 104);
  v172 = sub_100007210(&qword_10014C2B8);
  (*(*(v172 - 8) + 56))(v170 + v171, 1, 1, v172);
  *(v170 + *(*v170 + 112)) = xmmword_10010BC70;
  sub_10008BCBC(v169, v170 + *(*v170 + 120));
  *&v119[OBJC_IVAR____TtC21JournalShareExtension10PhotoAsset_metadata] = v170;

LABEL_23:

  v173 = v119;
  v174 = sub_10008459C();

  v175 = sub_10005B880(v174);
  v176 = v201;
  if (!v175)
  {
    swift_beginAccess();
    v183 = v173;
    sub_1001011B4();
    if (*((*(v176 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v176 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100101204();
    }

    sub_100101234();
    swift_endAccess();
    goto LABEL_29;
  }

  *(v201 + 24) = 1;
  v177 = [objc_opt_self() defaultManager];
  sub_1000FF474(v178);
  v180 = v179;
  v222 = 0;
  v181 = [v177 removeItemAtURL:v179 error:&v222];

  if (v181)
  {
    v182 = v222;
LABEL_29:

    return;
  }

  v184 = v222;
  sub_1000FF334();

  swift_willThrow();
}

uint64_t sub_10008BC60()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10008BCBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007210(&qword_10014C2B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_10008BD2C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100100A04();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100100984();
  sub_100100904();
  (*(v7 + 8))(v9, v6);
  v10 = sub_100100F94();

  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  aBlock[4] = sub_10008C6F4;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10008C9D4;
  aBlock[3] = &unk_100137700;
  v12 = _Block_copy(aBlock);

  [a1 loadItemForTypeIdentifier:v10 options:0 completionHandler:v12];
  _Block_release(v12);
}

unint64_t sub_10008BEE8()
{
  result = qword_10014EEB0;
  if (!qword_10014EEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10014EEB0);
  }

  return result;
}

uint64_t sub_10008BF3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10008BFE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10008C01C(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_100100A04();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_100101304();
  v1[6] = sub_1001012F4();
  v4 = sub_100101284();
  v1[7] = v4;
  v1[8] = v3;

  return _swift_task_switch(sub_10008C110, v4, v3);
}

uint64_t sub_10008C110()
{
  v1 = v0[6];
  sub_1001009A4();

  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_10008C1CC;
  v3 = v0[5];

  return sub_100083390(v1, &protocol witness table for MainActor, v3);
}

uint64_t sub_10008C1CC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *(*v2 + 32);
  v7 = *(*v2 + 24);
  *(v4 + 80) = a1;
  *(v4 + 88) = v1;

  (*(v6 + 8))(v5, v7);

  v8 = *(v3 + 64);
  v9 = *(v3 + 56);
  if (v1)
  {
    v10 = sub_10008C4BC;
  }

  else
  {
    v10 = sub_10008C390;
  }

  return _swift_task_switch(v10, v9, v8);
}

uint64_t sub_10008C390()
{

  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;

    v3 = *(v0 + 8);

    return v3(v2);
  }

  else
  {
    ObjectType = swift_getObjectType();
    sub_10003D958();
    swift_allocError();
    *v6 = ObjectType;
    swift_willThrow();
    swift_unknownObjectRelease();

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_10008C4BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10008C528(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10008C584(uint64_t *a1)
{
  v2 = sub_100007210(a1);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_10008C6BC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10008C6FC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10008C744(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008030;

  return sub_100085C48(a1, v4, v5, v7, v6);
}

uint64_t sub_10008C804(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100008030;

  return sub_1000AE834(a1, v4);
}

uint64_t getEnumTagSinglePayload for ShareSheetDataManager.Failure(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ShareSheetDataManager.Failure(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_10008C978(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_10008C990(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_10008C9E0()
{
  v1[2] = v0;
  sub_100007210(&qword_10014EF68);
  v1[3] = swift_task_alloc();
  v2 = sub_1001014F4();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v3 = sub_100101514();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  v4 = sub_100101504();
  v1[11] = v4;
  v1[12] = *(v4 - 8);
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_10008CB9C, 0, 0);
}

uint64_t sub_10008CB9C()
{
  (*(v0[9] + 16))(v0[10], v0[2], v0[8]);
  sub_1000916D8(&qword_10014EF70, &type metadata accessor for CSSearchQuery.Results);
  sub_100101374();
  v0[14] = _swiftEmptyArrayStorage;
  v1 = sub_1000916D8(&qword_10014EF78, &type metadata accessor for CSSearchQuery.Results.Iterator);
  v2 = swift_task_alloc();
  v0[15] = v2;
  *v2 = v0;
  v2[1] = sub_10008CCFC;
  v3 = v0[11];
  v4 = v0[3];

  return dispatch thunk of AsyncIteratorProtocol.next()(v4, v3, v1);
}

uint64_t sub_10008CCFC()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    (*(v2[12] + 8))(v2[13], v2[11]);

    v3 = sub_10008D0EC;
  }

  else
  {
    v3 = sub_10008CE30;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10008CE30()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    (*(v0[12] + 8))(v0[13], v0[11]);
    sub_10000FFB4(v3, &qword_10014EF68);

    v4 = v0[1];
    v5 = v0[14];

    return v4(v5);
  }

  else
  {
    v8 = v0[6];
    v7 = v0[7];
    v9 = *(v2 + 32);
    v9(v7, v3, v1);
    (*(v2 + 16))(v8, v7, v1);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = v0[14];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_10000F95C(0, *(v11 + 16) + 1, 1, v0[14]);
    }

    v13 = *(v11 + 16);
    v12 = *(v11 + 24);
    if (v13 >= v12 >> 1)
    {
      v11 = sub_10000F95C(v12 > 1, v13 + 1, 1, v11);
    }

    v14 = v0[6];
    v15 = v0[4];
    v16 = v0[5];
    (*(v16 + 8))(v0[7], v15);
    *(v11 + 16) = v13 + 1;
    v9(v11 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v13, v14, v15);
    v0[14] = v11;
    v17 = sub_1000916D8(&qword_10014EF78, &type metadata accessor for CSSearchQuery.Results.Iterator);
    v18 = swift_task_alloc();
    v0[15] = v18;
    *v18 = v0;
    v18[1] = sub_10008CCFC;
    v19 = v0[11];
    v20 = v0[3];

    return dispatch thunk of AsyncIteratorProtocol.next()(v20, v19, v17);
  }
}

uint64_t sub_10008D0EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10008D184()
{
  v0 = sub_100100AE4();
  sub_100003CD4(v0, qword_10014EF18);
  sub_100003D38(v0, qword_10014EF18);
  return sub_100100AD4();
}

uint64_t sub_10008D2C8(uint64_t a1, void *a2)
{
  v3 = sub_1000110C0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_100007210(&qword_10014EBE0);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = *v3;

    return _swift_continuation_throwingResume(v8);
  }
}

uint64_t sub_10008D4F0(char a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_10008D5AC;

  return sub_10008F710(0, 0, a1);
}

uint64_t sub_10008D5AC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10008D838(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10008D8E8;

  return sub_10009094C(0);
}

uint64_t sub_10008D8E8()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *v1;

  v6 = *(v3 + 16);
  if (v2)
  {
    v7 = sub_1000FF324();

    (*(v6 + 16))(v6, v7);
  }

  else
  {
    (*(v6 + 16))(v6, 0);
  }

  _Block_release(*(v4 + 16));
  v8 = *(v5 + 8);

  return v8();
}

void sub_10008DA4C(const char *a1, double a2)
{
  if (qword_10014B7A0 != -1)
  {
    swift_once();
  }

  v4 = sub_100100AE4();
  sub_100003D38(v4, qword_10014EF18);
  oslog = sub_100100AC4();
  v5 = sub_1001015D4();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    sub_100007210(&qword_10014CE40);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_10010BC80;
    Current = CFAbsoluteTimeGetCurrent();
    *(v8 + 56) = &type metadata for Double;
    *(v8 + 64) = &protocol witness table for Double;
    *(v8 + 32) = Current - a2;
    v10 = sub_100100FE4();
    v12 = sub_10007A774(v10, v11, &v14);

    *(v6 + 4) = v12;
    _os_log_impl(&_mh_execute_header, oslog, v5, a1, v6, 0xCu);
    sub_10001100C(v7);
  }
}

void sub_10008DC04(uint64_t a1, void *a2)
{
  v4 = sub_100007210(&unk_10014D0B0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - v6;
  v8 = objc_allocWithZone(CSSearchableIndex);
  v9 = NSFileProtectionCompleteUnlessOpen;
  v10 = sub_100100F94();
  v11 = sub_100100F94();
  v12 = [v8 initWithName:v10 protectionClass:v9 bundleIdentifier:v11];

  (*(v5 + 16))(v7, a1, v4);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  (*(v5 + 32))(v14 + v13, v7, v4);
  aBlock[4] = sub_10003D274;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000D2F3C;
  aBlock[3] = &unk_1001378F8;
  v15 = _Block_copy(aBlock);

  [a2 searchableIndex:v12 reindexAllSearchableItemsWithAcknowledgementHandler:v15];
  _Block_release(v15);
}

uint64_t sub_10008DFD4(void *a1, void *aBlock)
{
  v2[2] = a1;
  v2[3] = _Block_copy(aBlock);
  v2[4] = swift_getObjCClassMetadata();
  v4 = a1;

  return _swift_task_switch(sub_10008E060, 0, 0);
}

uint64_t sub_10008E060()
{
  v1 = v0[4];
  v2 = v0[2];
  sub_1000FF594();
  v0[5] = v3;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_10008E160;

  return withCheckedContinuation<A>(isolation:function:_:)();
}

uint64_t sub_10008E160()
{

  return _swift_task_switch(sub_10008E278, 0, 0);
}

uint64_t sub_10008E278()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_10008DA4C("SpotlightUtilities.reindexAllSearchableItems completed in %s seconds.", *(v0 + 40));

  v2[2](v2, 0);
  _Block_release(v2);
  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_10008E304(uint64_t a1, uint64_t a2)
{
  v37 = sub_1000FF514();
  v4 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  v7 = sub_100050BD8();
  if (v7)
  {
    v8 = v7;
    v9 = [v6 objectID];
    v10 = [v9 URIRepresentation];

    v11 = v36;
    sub_1000FF4C4();

    sub_1000FF434();
    (*(v4 + 8))(v11, v37);
    v12 = objc_allocWithZone(CSSearchableItem);
    v13 = v8;
    v14 = sub_100100F94();

    v15 = sub_100100F94();
    [v12 initWithUniqueIdentifier:v14 domainIdentifier:v15 attributeSet:v13];

    swift_beginAccess();
    sub_1001011B4();
    if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100101204();
    }

    sub_100101234();
    swift_endAccess();
  }

  v35 = a2;
  result = sub_1000FFB94();
  v17 = result;
  if (!(result >> 62))
  {
    v18 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
      goto LABEL_7;
    }
  }

  result = sub_100101DA4();
  v18 = result;
  if (!result)
  {
  }

LABEL_7:
  if (v18 >= 1)
  {
    v19 = 0;
    v38 = v17 & 0xC000000000000001;
    v34 = (v4 + 8);
    do
    {
      if (v38)
      {
        v20 = sub_100101CA4();
      }

      else
      {
        v20 = *(v17 + 8 * v19 + 32);
      }

      v21 = v20;
      v22 = sub_100051950();
      if (v22)
      {
        v23 = v22;
        v24 = v17;
        v25 = [v21 objectID];
        v26 = [v25 URIRepresentation];

        v27 = v36;
        sub_1000FF4C4();

        sub_1000FF434();
        (*v34)(v27, v37);
        v28 = objc_allocWithZone(CSSearchableItem);
        v29 = v23;
        v30 = sub_100100F94();

        v31 = sub_100100F94();
        [v28 initWithUniqueIdentifier:v30 domainIdentifier:v31 attributeSet:v29];

        v32 = v35;
        swift_beginAccess();
        sub_1001011B4();
        if (*((*(v32 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v32 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_100101204();
        }

        sub_100101234();
        swift_endAccess();

        v17 = v24;
      }

      ++v19;
    }

    while (v18 != v19);
  }

  __break(1u);
  return result;
}

id sub_10008E7A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpotlightUtilities();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10008E7F8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_100008124;

  return v6();
}

uint64_t sub_10008E8E0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_100008030;

  return v7();
}

uint64_t sub_10008E9C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100007210(&qword_10014CBD8);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_1000911E0(a3, v23 - v10);
  v12 = sub_100101324();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10000FFB4(v11, &qword_10014CBD8);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_100101314();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_100101284();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_100101044() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_10000FFB4(a3, &qword_10014CBD8);

    return v21;
  }

LABEL_8:
  sub_10000FFB4(a3, &qword_10014CBD8);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_10008ECB4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10008EDAC;

  return v6(a1);
}

uint64_t sub_10008EDAC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10008EEA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a3;
  v5 = sub_100101824();
  v3[22] = v5;
  v3[23] = *(v5 - 8);
  v3[24] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v6 = sub_100101284();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v3[25] = v6;
  v3[26] = v8;

  return _swift_task_switch(sub_10008EF94, v6, v8);
}

uint64_t sub_10008EF94()
{
  v2 = v0[23];
  v1 = v0[24];
  v4 = v0[21];
  v3 = v0[22];
  v5 = swift_allocObject();
  v0[27] = v5;
  *(v5 + 16) = _swiftEmptyArrayStorage;
  v6 = swift_allocObject();
  v0[28] = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  (*(v2 + 104))(v1, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v3);

  v7 = swift_task_alloc();
  v0[29] = v7;
  *v7 = v0;
  v7[1] = sub_10008F0F0;
  v8 = v0[24];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v7, v8, sub_100091798, v6, &type metadata for () + 8);
}

uint64_t sub_10008F0F0()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2[23] + 8))(v2[24], v2[22]);

    v4 = v2[25];
    v5 = v2[26];

    return _swift_task_switch(sub_10008F244, v4, v5);
  }
}

uint64_t sub_10008F244()
{
  v1 = objc_allocWithZone(CSSearchableIndex);
  v2 = NSFileProtectionCompleteUnlessOpen;
  v3 = sub_100100F94();
  v4 = sub_100100F94();
  v5 = [v1 initWithName:v3 protectionClass:v2 bundleIdentifier:v4];
  v0[30] = v5;

  swift_beginAccess();
  sub_100010F50(0, &qword_10014EF60);

  isa = sub_1001011C4().super.isa;
  v0[31] = isa;

  v0[32] = NSFileProtectionCompleteUntilFirstUserAuthentication;
  v7 = NSFileProtectionCompleteUntilFirstUserAuthentication;
  v8 = sub_100100F94();
  v0[33] = v8;
  v0[2] = v0;
  v0[3] = sub_10008F498;
  v9 = swift_continuation_init();
  v0[17] = sub_100007210(&qword_10014C658);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10008D2C8;
  v0[13] = &unk_100137AB0;
  v0[14] = v9;
  [v5 indexSearchableItems:isa deleteSearchableItemsWithIdentifiers:0 clientState:0 clientStateName:0 protectionClass:v7 forBundleID:v8 options:0 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10008F498()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 272) = v2;
  v3 = *(v1 + 208);
  v4 = *(v1 + 200);
  if (v2)
  {
    v5 = sub_10008F664;
  }

  else
  {
    v5 = sub_10008F5C8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10008F5C8()
{
  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  v3 = *(v0 + 248);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10008F664()
{
  v1 = v0[33];
  v3 = v0[31];
  v2 = v0[32];
  v4 = v0[30];
  swift_willThrow();

  v5 = v0[1];

  return v5();
}

uint64_t sub_10008F710(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 336) = a3;
  *(v3 + 152) = a1;
  *(v3 + 160) = a2;
  v5 = sub_1001014F4();
  *(v3 + 168) = v5;
  *(v3 + 176) = *(v5 - 8);
  *(v3 + 184) = swift_task_alloc();
  v6 = sub_100101514();
  *(v3 + 192) = v6;
  *(v3 + 200) = *(v6 - 8);
  *(v3 + 208) = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v7 = sub_100101284();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  *(v3 + 216) = v7;
  *(v3 + 224) = v9;

  return _swift_task_switch(sub_10008F860, v7, v9);
}

uint64_t sub_10008F860()
{
  sub_1000FF594();
  *(v0 + 232) = v1;
  if (qword_10014B7A0 != -1)
  {
    swift_once();
  }

  v2 = sub_100100AE4();
  *(v0 + 240) = sub_100003D38(v2, qword_10014EF18);
  v3 = sub_100100AC4();
  v4 = sub_1001015D4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 336);
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = v5;
    _os_log_impl(&_mh_execute_header, v3, v4, "SpotlightUtilities.setDisableSearchInSpotlightFlag disableSearchInSpotlight: %{BOOL}d", v6, 8u);
  }

  v7 = objc_allocWithZone(CSSearchQuery);
  v8 = sub_100100F94();
  v9 = [v7 initWithQueryString:v8 queryContext:0];
  *(v0 + 248) = v9;

  sub_100007210(&qword_10014EF58);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10010BC80;
  *(v0 + 256) = NSFileProtectionCompleteUnlessOpen;
  *(v10 + 32) = NSFileProtectionCompleteUnlessOpen;
  type metadata accessor for FileProtectionType(0);
  v11 = NSFileProtectionCompleteUnlessOpen;
  isa = sub_1001011C4().super.isa;

  [v9 setProtectionClasses:isa];

  sub_100101524();
  v13 = swift_task_alloc();
  *(v0 + 264) = v13;
  *v13 = v0;
  v13[1] = sub_10008FAD4;

  return sub_10008C9E0();
}

uint64_t sub_10008FAD4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[34] = a1;
  v4[35] = v1;

  (*(v3[25] + 8))(v3[26], v3[24]);
  v5 = v3[28];
  v6 = v3[27];
  if (v1)
  {
    v7 = sub_100090608;
  }

  else
  {
    v7 = sub_10008FC64;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10008FC64()
{

  v1 = sub_100100AC4();
  v2 = sub_1001015D4();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 272);
  if (v3)
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = *(v4 + 16);

    _os_log_impl(&_mh_execute_header, v1, v2, "SpotlightUtilities.setDisableSearchInSpotlightFlag found %ld searchable items", v5, 0xCu);
  }

  else
  {
  }

  v6 = *(v0 + 272);
  v7 = [objc_allocWithZone(NSNumber) initWithBool:*(v0 + 336)];
  *(v0 + 288) = v7;
  *(v0 + 144) = _swiftEmptyArrayStorage;
  v8 = *(v6 + 16);
  if (v8)
  {
    v9 = *(v0 + 176);
    v10 = *(v9 + 16);
    v9 += 16;
    v51 = v10;
    v11 = *(v0 + 272) + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v12 = (v9 - 8);
    v13 = _swiftEmptyArrayStorage;
    v50 = *(v9 + 56);
    while (1)
    {
      v14 = *(v0 + 184);
      v15 = *(v0 + 168);
      v51(v14, v11, v15);
      v16 = sub_1001014E4();
      (*v12)(v14, v15);
      v17 = [v16 attributeSet];
      v18 = [v17 disableSearchInSpotlight];

      if (!v18)
      {
        break;
      }

      sub_100010F50(0, &qword_10014D230);
      v19 = v7;
      v20 = sub_100101A34();

      if ((v20 & 1) == 0)
      {
        goto LABEL_12;
      }

LABEL_7:
      v11 += v50;
      if (!--v8)
      {

        goto LABEL_17;
      }
    }

    v21 = v7;
LABEL_12:
    v22 = [v16 attributeSet];
    [v22 setDisableSearchInSpotlight:v7];

    [v16 setIsUpdate:1];
    v23 = v16;
    sub_1001011B4();
    if (*((*(v0 + 144) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 144) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100101204();
    }

    sub_100101234();

    v13 = *(v0 + 144);
    goto LABEL_7;
  }

  v13 = _swiftEmptyArrayStorage;
LABEL_17:
  *(v0 + 296) = v13;
  v24 = sub_100100AC4();
  v25 = sub_1001015D4();
  v26 = &_s10Foundation8CalendarV9ComponentO6secondyA2EmFWC_ptr;
  if (os_log_type_enabled(v24, v25))
  {
    v27 = *(v0 + 256);
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 138412290;
    v30 = objc_allocWithZone(CSSearchableIndex);
    v31 = v27;
    v32 = sub_100100F94();
    v33 = sub_100100F94();
    v34 = [v30 initWithName:v32 protectionClass:v31 bundleIdentifier:v33];

    *(v28 + 4) = v34;
    *v29 = v34;
    _os_log_impl(&_mh_execute_header, v24, v25, "SpotlightUtilities.setDisableSearchInSpotlightFlag searchableIndex = %@", v28, 0xCu);
    sub_10000FFB4(v29, &unk_10014D660);

    v26 = &_s10Foundation8CalendarV9ComponentO6secondyA2EmFWC_ptr;
  }

  v35 = sub_100100AC4();
  v36 = sub_1001015D4();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 134217984;
    if (v13 >> 62)
    {
      v38 = sub_100101DA4();
    }

    else
    {
      v38 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v37 + 4) = v38;

    _os_log_impl(&_mh_execute_header, v35, v36, "SpotlightUtilities.setDisableSearchInSpotlightFlag updated = %ld items", v37, 0xCu);
  }

  else
  {
  }

  v39 = *(v0 + 256);
  v40 = objc_allocWithZone(v26[113]);
  v41 = v39;
  v42 = sub_100100F94();
  v43 = sub_100100F94();
  v44 = [v40 initWithName:v42 protectionClass:v41 bundleIdentifier:v43];
  *(v0 + 304) = v44;

  sub_100010F50(0, &qword_10014EF60);
  isa = sub_1001011C4().super.isa;
  *(v0 + 312) = isa;
  v46 = v41;
  v47 = sub_100100F94();
  *(v0 + 320) = v47;
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_100090350;
  v48 = swift_continuation_init();
  *(v0 + 136) = sub_100007210(&qword_10014C658);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_10008D2C8;
  *(v0 + 104) = &unk_100137A38;
  *(v0 + 112) = v48;
  [v44 indexSearchableItems:isa deleteSearchableItemsWithIdentifiers:0 clientState:0 clientStateName:0 protectionClass:v46 forBundleID:v47 options:256 completionHandler:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_100090350()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 328) = v2;
  if (v2)
  {

    v3 = *(v1 + 216);
    v4 = *(v1 + 224);
    v5 = sub_100090794;
  }

  else
  {
    v3 = *(v1 + 216);
    v4 = *(v1 + 224);
    v5 = sub_100090468;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100090468()
{
  v2 = *(v0 + 312);
  v1 = *(v0 + 320);
  v3 = *(v0 + 256);

  v4 = sub_100100AC4();
  v5 = sub_1001015D4();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 296);
  if (v6)
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    if (v7 >> 62)
    {
      v9 = sub_100101DA4();
    }

    else
    {
      v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = *(v0 + 288);
    v11 = *(v0 + 248);

    *(v8 + 4) = v9;

    _os_log_impl(&_mh_execute_header, v4, v5, "SpotlightUtilities.setDisableSearchInSpotlightFlag update of %ld items was successful", v8, 0xCu);
  }

  else
  {
    v10 = *(v0 + 288);
    v11 = *(v0 + 248);
    swift_bridgeObjectRelease_n();
  }

  sub_10008DA4C("SpotlightUtilities.setDisableSearchInSpotlightFlag completed in %s seconds.", *(v0 + 232));

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100090608()
{
  swift_errorRetain();
  v1 = sub_100100AC4();
  v2 = sub_1001015B4();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "SpotlightUtilities.setDisableSearchInSpotlightFlag error %@", v3, 0xCu);
    sub_10000FFB4(v4, &unk_10014D660);
  }

  else
  {
  }

  sub_10008DA4C("SpotlightUtilities.setDisableSearchInSpotlightFlag completed in %s seconds.", *(v0 + 232));

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100090794()
{
  v1 = *(v0 + 320);
  v3 = *(v0 + 304);
  v2 = *(v0 + 312);
  v4 = *(v0 + 288);
  v6 = *(v0 + 248);
  v5 = *(v0 + 256);
  swift_willThrow();

  swift_errorRetain();
  v7 = sub_100100AC4();
  v8 = sub_1001015B4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v7, v8, "SpotlightUtilities.setDisableSearchInSpotlightFlag error %@", v9, 0xCu);
    sub_10000FFB4(v10, &unk_10014D660);
  }

  else
  {
  }

  sub_10008DA4C("SpotlightUtilities.setDisableSearchInSpotlightFlag completed in %s seconds.", *(v0 + 232));

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_10009094C(uint64_t a1)
{
  if (a1)
  {
    swift_getObjectType();
    v2 = sub_100101284();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  *(v1 + 144) = v2;
  *(v1 + 152) = v4;

  return _swift_task_switch(sub_1000909D8, v2, v4);
}

uint64_t sub_1000909D8()
{
  sub_1000FF594();
  v0[20] = v1;
  v2 = objc_allocWithZone(CSSearchableIndex);
  v3 = NSFileProtectionCompleteUnlessOpen;
  v4 = sub_100100F94();
  v5 = sub_100100F94();
  v6 = [v2 initWithName:v4 protectionClass:v3 bundleIdentifier:v5];
  v0[21] = v6;

  isa = sub_1001011C4().super.isa;
  v0[22] = isa;
  v0[2] = v0;
  v0[3] = sub_100090BA8;
  v8 = swift_continuation_init();
  v0[17] = sub_100007210(&qword_10014C658);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10008D2C8;
  v0[13] = &unk_100137998;
  v0[14] = v8;
  [v6 deleteSearchableItemsWithDomainIdentifiers:isa completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100090BA8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  v3 = *(v1 + 152);
  v4 = *(v1 + 144);
  if (v2)
  {
    v5 = sub_100090D54;
  }

  else
  {
    v5 = sub_100090CD8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100090CD8()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 160);

  sub_10008DA4C("SpotlightUtilities.deleteAllSearchableItems completed in %s seconds.", v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100090D54()
{
  v1 = *(v0 + 22);
  v2 = *(v0 + 21);
  v3 = v0[20];
  swift_willThrow();

  sub_10008DA4C("SpotlightUtilities.deleteAllSearchableItems completed in %s seconds.", v3);
  v4 = *(v0 + 1);

  return v4();
}

uint64_t sub_100090F60()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100090FA0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100008124;

  return sub_10008DFD4(v2, v3);
}

uint64_t sub_100091054()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100008124;

  return sub_10008E7F8(v2, v3, v4);
}

uint64_t sub_100091114(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008124;

  return sub_10008E8E0(a1, v4, v5, v6);
}

uint64_t sub_1000911E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007210(&qword_10014CBD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100091250()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100091288(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100008124;

  return sub_10008ECB4(a1, v4);
}

uint64_t sub_100091340(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100008030;

  return sub_10008ECB4(a1, v4);
}

uint64_t sub_100091400()
{
  v1 = sub_100007210(&unk_10014D0B0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100091494(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000914AC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000914E4()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100008124;

  return sub_10008D838(v2);
}

uint64_t sub_1000915AC()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000915E4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100008030;

  return sub_10008D4F0(v2, v3);
}

uint64_t sub_100091698()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000916D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100091720()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100091758()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000917DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 32))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 1);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_100091830(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 1) = a2 + 1;
    }
  }

  return result;
}

double sub_100091884(__int16 a1, uint64_t a2, int a3, double a4)
{
  v8 = COERCE_DOUBLE(sub_100091AE8(a1, a2, a3 & 1));
  v9 = 0.0;
  v10 = 0.0;
  if ((v11 & 1) == 0)
  {
    if ((a2 > 1 || (a3 & 1) != 0 || (a3 & 0x10000) != 0 && (a1 & 0x100) == 0) && (a3 & 0x100) != 0)
    {
      v12 = v8 * 0.45;
      v13 = (v8 - v8 * 0.45) * 0.5;
      v14 = v13;
    }

    else
    {
      v13 = v8 * 0.55 * 0.5;
      v12 = v8 * 0.45;
      v14 = a4;
    }

    nullsub_1(v13, v14, v12, v12);
    v10 = v15;
  }

  v16 = COERCE_DOUBLE(sub_100091AE8(a1, a2, a3 & 1));
  if ((v17 & 1) == 0)
  {
    if ((a2 > 1 || (a3 & 1) != 0 || (a3 & 0x10000) != 0 && (a1 & 0x100) == 0) && (a3 & 0x100) != 0)
    {
      v18 = v16 * 0.45;
      v19 = (v16 - v16 * 0.45) * 0.5;
      v20 = v19;
    }

    else
    {
      v19 = v16 * 0.55 * 0.5;
      v18 = v16 * 0.45;
      v20 = a4;
    }

    v9 = nullsub_1(v19, v20, v18, v18);
  }

  v21 = COERCE_DOUBLE(sub_100091AE8(a1, a2, a3 & 1));
  v22 = 0.0;
  if ((v23 & 1) == 0)
  {
    if ((a2 > 1 || (a3 & 1) != 0 || (a3 & 0x10000) != 0 && (a1 & 0x100) == 0) && (a3 & 0x100) != 0)
    {
      v24 = v21 * 0.45;
      v25 = (v21 - v21 * 0.45) * 0.5;
      v26 = v25;
    }

    else
    {
      v25 = v21 * 0.55 * 0.5;
      v24 = v21 * 0.45;
      v26 = a4;
    }

    nullsub_1(v25, v26, v24, v24);
  }

  v27 = v10 * 0.15 * 0.5;
  v28 = v22 - v27;

  return nullsub_1(v9 - v27, v28, v10 * 1.15, v10 * 1.15);
}

void *sub_100091A98()
{
  result = sub_10004D4EC(&off_100134678);
  off_10014EF80 = result;
  return result;
}

void *sub_100091AC0()
{
  result = sub_10004D4EC(&off_1001345E8);
  off_10014EF88 = result;
  return result;
}

uint64_t sub_100091AE8(unsigned __int8 a1, uint64_t a2, char a3)
{
  if (a2 > 1 || (a3 & 1) != 0)
  {
    if (qword_10014B7B0 != -1)
    {
      v7 = a1;
      swift_once();
      a1 = v7;
    }

    v3 = off_10014EF88;
    if (!*(off_10014EF88 + 2))
    {
      return 0;
    }
  }

  else
  {
    if (qword_10014B7A8 != -1)
    {
      v8 = a1;
      swift_once();
      a1 = v8;
    }

    v3 = off_10014EF80;
    if (!*(off_10014EF80 + 2))
    {
      return 0;
    }
  }

  v4 = sub_10004C5B8(a1);
  if (v5)
  {
    return *(v3[7] + 8 * v4);
  }

  return 0;
}

id sub_100091E08(void *a1, uint64_t a2, unsigned int *a3)
{
  v5 = sub_1000FFC84();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v8, *a3, v5);
  v9 = a1;
  sub_1000FFC74();
  (*(v6 + 8))(v8, v5);
  v10 = sub_100100F94();

  v11 = [v9 integerForKey:v10];

  return v11;
}

void sub_100091F50(void *a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v7 = sub_1000FFC84();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v10, *a4, v7);
  v11 = a1;
  sub_1000FFC74();
  (*(v8 + 8))(v10, v7);
  v12 = sub_100100F94();

  [v11 setInteger:a3 forKey:v12];
}

id sub_1000920A0(void *a1, uint64_t a2, unsigned int *a3)
{
  v5 = sub_1000FFC84();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v8, *a3, v5);
  v9 = a1;
  sub_1000FFC74();
  (*(v6 + 8))(v8, v5);
  v10 = sub_100100F94();

  v11 = [v9 BOOLForKey:v10];

  return v11;
}

void sub_100092248(char a1, unsigned int *a2, unsigned int *a3, unsigned int *a4)
{
  v18 = a3;
  v19 = a4;
  v6 = v4;
  v8 = sub_1000FFC84();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v9 + 104);
  v12(v11, *a2, v8);
  sub_1000FFC74();
  v13 = *(v9 + 8);
  v13(v11, v8);
  v14 = sub_100100F94();
  v15 = v6;

  [v6 setBool:a1 & 1 forKey:v14];

  if ((a1 & 1) == 0)
  {
    v12(v11, *v18, v8);
    sub_1000FFC74();
    v13(v11, v8);
    v16 = sub_100100F94();

    [v15 removeObjectForKey:v16];

    v12(v11, *v19, v8);
    sub_1000FFC74();
    v13(v11, v8);
    v17 = sub_100100F94();

    [v15 removeObjectForKey:v17];
  }
}

uint64_t sub_100092690(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 5:
      return 2;
    case 15:
      return 3;
  }

  return 5;
}

uint64_t sub_100092708()
{
  v0 = sub_1000FFC84();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100092C74();
  v4 = sub_100101614();
  v5 = sub_100100F94();
  v6 = [v4 objectForKey:v5];

  if (!v6)
  {
    v19 = 0u;
    v20 = 0u;
    sub_10002329C(&v19);
    (*(v1 + 104))(v3, enum case for SettingsKey.lockJournalState(_:), v0);
    sub_1000FFC74();
    (*(v1 + 8))(v3, v0);
    v11 = sub_100100F94();

    v12 = [v4 objectForKey:v11];

    if (v12)
    {
      sub_100101B14();
      swift_unknownObjectRelease();
    }

    else
    {
      v17 = 0u;
      v18 = 0u;
    }

    v19 = v17;
    v20 = v18;
    if (!*(&v18 + 1))
    {

      sub_10002329C(&v19);
      return 4;
    }

    if (swift_dynamicCast())
    {
      v13 = sub_100092690(v16);

      result = v13;
      if (v13 != 5)
      {
        return result;
      }

      return 4;
    }

LABEL_12:

    return 4;
  }

  sub_100101B14();
  swift_unknownObjectRelease();
  sub_10002FC28(&v17, &v19);
  sub_10002329C(&v19);
  v7 = sub_100100F94();
  v8 = [v4 BOOLForKey:v7];

  if ((v8 & 1) == 0)
  {
    goto LABEL_12;
  }

  v9 = sub_100100F94();
  v10 = [v4 objectForKey:v9];

  if (v10)
  {
    sub_100101B14();
    swift_unknownObjectRelease();
  }

  else
  {

    v17 = 0u;
    v18 = 0u;
  }

  v19 = v17;
  v20 = v18;
  if (*(&v18 + 1))
  {
    if (swift_dynamicCast())
    {
      switch(v16)
      {
        case 0:
          return 0;
        case 15:
          return 3;
        case 5:
          return 2;
      }
    }
  }

  else
  {
    sub_10002329C(&v19);
  }

  return 1;
}

void sub_100092A98()
{
  v1 = v0;
  v2 = sub_1000FFC84();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = 0;
  if (v7 >> 60 != 15)
  {
    isa = sub_1000FF554().super.isa;
  }

  v8 = *(v3 + 104);
  v8(v5, enum case for SettingsKey.journalingScheduleData(_:), v2);
  sub_1000FFC74();
  v9 = *(v3 + 8);
  v9(v5, v2);
  v10 = sub_100100F94();

  [v1 setObject:isa forKey:v10];
  swift_unknownObjectRelease();

  v8(v5, enum case for SettingsKey.journalingScheduleDataLegacy(_:), v2);
  sub_1000FFC74();
  v9(v5, v2);
  v11 = sub_100100F94();

  [v1 removeObjectForKey:v11];
}

unint64_t sub_100092C74()
{
  result = qword_10014C648;
  if (!qword_10014C648)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10014C648);
  }

  return result;
}

id sub_100092CD0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BookAsset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for BookAsset()
{
  result = qword_10014F050;
  if (!qword_10014F050)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_100092DD8()
{
  v1 = v0;
  v2 = sub_1000FF8B4();
  __chkstk_darwin(v2 - 8);
  v40[1] = v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100100F84();
  __chkstk_darwin(v4 - 8);
  v5 = sub_100007210(&unk_10014D640);
  __chkstk_darwin(v5 - 8);
  v41 = v40 - v6;
  v7 = sub_100100A04();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100007210(&qword_10014C308);
  __chkstk_darwin(v11 - 8);
  v13 = v40 - v12;
  v14 = sub_1000FFDE4();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000E46C(v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_10000FFB4(v13, &qword_10014C308);
    return 0;
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    sub_100100994();
    v19 = objc_allocWithZone(CSSearchableItemAttributeSet);
    isa = sub_100100944().super.isa;
    v18 = [v19 initWithContentType:isa];

    (*(v8 + 8))(v10, v7);
    sub_1000FFDC4();
    if (v21)
    {
      v22 = sub_100100F94();
    }

    else
    {
      v22 = 0;
    }

    [v18 setDisplayName:v22];

    sub_1000FFDD4();
    if (v23)
    {
      v24 = sub_100100F94();
    }

    else
    {
      v24 = 0;
    }

    v25 = v41;
    [v18 setContentDescription:v24];

    v26 = *(v1 + OBJC_IVAR____TtC21JournalShareExtension5Asset_assetMO);
    if (v26 && (v27 = [v26 entry]) != 0)
    {
      v28 = v27;
      sub_1000FFBA4();

      v29 = 0;
    }

    else
    {
      v29 = 1;
    }

    v30 = sub_1000FF804();
    (*(*(v30 - 8) + 56))(v25, v29, 1, v30);
    sub_100100F14();
    sub_1000FF8A4();
    v31 = sub_100101004();
    v33 = v32;
    sub_100007210(&qword_10014C220);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_10010BC80;
    v35 = sub_100081080(v31, v33, v25);
    v37 = v36;

    *(v34 + 32) = v35;
    *(v34 + 40) = v37;
    v38 = sub_1001011C4().super.isa;

    [v18 setAlternateNames:v38];

    sub_10000FFB4(v25, &unk_10014D640);
    (*(v15 + 8))(v17, v14);
  }

  return v18;
}

uint64_t sub_1000933A4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1000FFDE4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1000933F8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContactAsset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ContactAsset()
{
  result = qword_10014F0C8;
  if (!qword_10014F0C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_100093500()
{
  v1 = sub_1000FF8B4();
  __chkstk_darwin(v1 - 8);
  v65 = &v60 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100100F84();
  __chkstk_darwin(v3 - 8);
  v64 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100007210(&unk_10014D640);
  v6 = __chkstk_darwin(v5 - 8);
  v63 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v66 = &v60 - v8;
  v62 = sub_1000FFB34();
  v9 = *(v62 - 8);
  __chkstk_darwin(v62);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100100A04();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100007210(&qword_10014C330);
  __chkstk_darwin(v16 - 8);
  v18 = &v60 - v17;
  v19 = sub_1001000B4();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v0;
  sub_10000D6EC(v18);
  v23 = v19;
  v24 = v20;
  if ((*(v20 + 48))(v18, 1, v23) == 1)
  {
    sub_10000FFB4(v18, &qword_10014C330);
    return 0;
  }

  else
  {
    v26 = *(v20 + 32);
    v60 = v23;
    v26(v22, v18, v23);
    sub_1001009D4();
    v27 = objc_allocWithZone(CSSearchableItemAttributeSet);
    isa = sub_100100944().super.isa;
    v25 = [v27 initWithContentType:isa];

    (*(v13 + 8))(v15, v12);
    sub_100100094();
    v29 = sub_100100F94();

    [v25 setDisplayName:v29];

    v30 = v62;
    (*(v9 + 104))(v11, enum case for JournalFeatureFlags.search(_:), v62);
    LOBYTE(isa) = sub_1000FFB24();
    (*(v9 + 8))(v11, v30);
    v31 = v22;
    if (isa)
    {
      sub_100100094();
      v32 = objc_allocWithZone(CSPerson);
      v33 = sub_100100F94();

      v34 = sub_1001011C4().super.isa;
      v35 = sub_100100F94();
      v36 = [v32 initWithDisplayName:v33 handles:v34 handleIdentifier:v35];

      sub_100007210(&unk_10014D0F0);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_10010C650;
      *(v37 + 32) = v36;
      sub_100093E18();
      v38 = v36;
      v39.super.isa = sub_1001011C4().super.isa;

      [v25 setAuthors:v39.super.isa];
    }

    else
    {
      sub_100007210(&qword_10014C220);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_10010BC80;
      *(v40 + 32) = sub_100100094();
      *(v40 + 40) = v41;
      v39.super.isa = sub_1001011C4().super.isa;

      [v25 setAuthorNames:v39.super.isa];
    }

    v42 = v66;
    v43 = v63;

    sub_1001000A4();
    v44 = sub_1000FF804();
    v45 = *(v44 - 8);
    v46 = *(v45 + 48);
    if (v46(v43, 1, v44) == 1)
    {
      v47 = *(v61 + OBJC_IVAR____TtC21JournalShareExtension5Asset_assetMO);
      if (v47 && (v48 = [v47 entry]) != 0)
      {
        v49 = v48;
        sub_1000FFBA4();

        v50 = 0;
      }

      else
      {
        v50 = 1;
      }

      (*(v45 + 56))(v42, v50, 1, v44);
      if (v46(v43, 1, v44) != 1)
      {
        sub_10000FFB4(v43, &unk_10014D640);
      }
    }

    else
    {
      (*(v45 + 32))(v42, v43, v44);
      (*(v45 + 56))(v42, 0, 1, v44);
    }

    sub_100100F14();
    sub_1000FF8A4();
    v51 = sub_100101004();
    v53 = v52;
    sub_100007210(&qword_10014C220);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_10010BC80;
    v55 = sub_100081080(v51, v53, v42);
    v57 = v56;

    *(v54 + 32) = v55;
    *(v54 + 40) = v57;
    v58 = sub_1001011C4().super.isa;

    [v25 setAlternateNames:v58];

    sub_10000FFB4(v42, &unk_10014D640);
    (*(v24 + 8))(v31, v60);
  }

  return v25;
}

uint64_t sub_100093DD4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1001000B4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100093E18()
{
  result = qword_10014F118;
  if (!qword_10014F118)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10014F118);
  }

  return result;
}

uint64_t sub_100093E64()
{
  v1 = sub_1000FF8B4();
  __chkstk_darwin(v1 - 8);
  v2 = sub_100100F84();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1000FFCB4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, v0, v3);
  v7 = (*(v4 + 88))(v6, v3);
  if (v7 == enum case for MediaViewType.song(_:) || v7 == enum case for MediaViewType.songAlbum(_:))
  {
    goto LABEL_10;
  }

  v8 = v7 == enum case for MediaViewType.podcast(_:) || v7 == enum case for MediaViewType.podcastArtist(_:);
  if (v8 || v7 == enum case for MediaViewType.audiobook(_:))
  {
    goto LABEL_10;
  }

  if (v7 == enum case for MediaViewType.thirdPartyMedia(_:))
  {
    sub_100100F14();
    sub_1000FF8A4();
    return sub_100100FF4();
  }

  if (v7 == enum case for MediaViewType.thirdPartyMediaAlbum(_:) || v7 == enum case for MediaViewType.thirdPartyMediaArtist(_:))
  {
LABEL_10:
    sub_100100F14();
    sub_1000FF8A4();
    return sub_100101004();
  }

  result = sub_100101E74();
  __break(1u);
  return result;
}

NSString sub_100094228()
{
  result = sub_100100F94();
  qword_100158738 = result;
  return result;
}

NSString sub_100094260()
{
  result = sub_100100F94();
  qword_100158740 = result;
  return result;
}

uint64_t sub_100094298()
{
  v9 = sub_1001016E4();
  v1 = *(v9 - 8);
  __chkstk_darwin(v9);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100101694();
  __chkstk_darwin(v4);
  v5 = sub_100100CB4();
  __chkstk_darwin(v5 - 8);
  sub_100007210(&qword_10014F280);
  swift_allocObject();
  *(v0 + 16) = sub_100100BF4();
  *(v0 + 24) = 0;
  v6 = sub_100095D18();
  v8[0] = "r.userBecameActive";
  v8[1] = v6;
  sub_100100C54();
  v10 = _swiftEmptyArrayStorage;
  sub_100095E0C(&qword_10014F2B8, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100007210(&qword_10014F2C0);
  sub_100032894(&qword_10014F2C8, &qword_10014F2C0);
  sub_100101B64();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v9);
  *(v0 + 32) = sub_100101724();
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  sub_100100AD4();
  sub_100094580();
  return v0;
}

uint64_t sub_100094580()
{
  v1 = v0;
  v2 = sub_100007210(&qword_10014F290);
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - v3;
  v18 = sub_1001016D4();
  v5 = *(v18 - 8);
  __chkstk_darwin(v18);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100007210(&qword_10014F298);
  v9 = *(v8 - 8);
  v19 = v8;
  v20 = v9;
  __chkstk_darwin(v8);
  v11 = &v17 - v10;
  v22 = *(v0 + 16);

  sub_1001016C4();
  v12 = *(v0 + 32);
  v21 = v12;
  v13 = sub_1001016A4();
  (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
  v17 = v12;
  sub_100007210(&qword_10014F280);
  sub_100095D18();
  sub_100032894(&qword_10014F2A0, &qword_10014F280);
  sub_100095E0C(&qword_10014F2A8, sub_100095D18);
  sub_100100C24();
  sub_100095D64(v4);

  (*(v5 + 8))(v7, v18);

  swift_allocObject();
  swift_weakInit();
  sub_100032894(&qword_10014F2B0, &qword_10014F298);
  v14 = v19;
  v15 = sub_100100C34();

  (*(v20 + 8))(v11, v14);
  *(v1 + 24) = v15;
}

uint64_t sub_10009490C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100094964();
  }

  return result;
}

uint64_t sub_100094964()
{
  v1 = v0;
  v2 = sub_100007210(&qword_10014CBD8);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - v3;
  v5 = sub_1000FF804();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100100AC4();
  v10 = sub_1001015A4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v22 = v0;
    v12 = v11;
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 136315138;
    sub_1000FF7C4();
    v14 = sub_1000FF724();
    v16 = v15;
    (*(v6 + 8))(v8, v5);
    v17 = sub_10007A774(v14, v16, &v23);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, "🫀 Reset inactivity timer at %s", v12, 0xCu);
    sub_10001100C(v13);

    v1 = v22;
  }

  v18 = sub_100101324();
  (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
  sub_100101304();

  v19 = sub_1001012F4();
  v20 = swift_allocObject();
  v20[2] = v19;
  v20[3] = &protocol witness table for MainActor;
  v20[4] = v1;
  sub_1000D73F8(0, 0, v4, &unk_10010E630, v20);
}

uint64_t sub_100094C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a1;
  v4[4] = a4;
  v4[5] = sub_100101304();
  v4[6] = sub_1001012F4();
  v6 = sub_100101284();
  v4[7] = v6;
  v4[8] = v5;

  return _swift_task_switch(sub_100094CBC, v6, v5);
}

uint64_t sub_100094CBC()
{
  swift_weakInit();

  return _swift_task_switch(sub_100094D28, 0, 0);
}

uint64_t sub_100094D28()
{
  *(v0 + 72) = sub_1001012F4();
  v2 = sub_100101284();

  return _swift_task_switch(sub_100094DB4, v2, v1);
}

uint64_t sub_100094DB4()
{

  sub_100094EC8();
  swift_weakDestroy();
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return _swift_task_switch(sub_100094E68, v1, v2);
}

uint64_t sub_100094E68()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_100094EC8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [*(Strong + 40) invalidate];
    v2 = [objc_opt_self() scheduledTimerWithTimeInterval:v1 target:"inactivityTimerDidFire" selector:0 userInfo:0 repeats:60.0];
    v3 = *(v1 + 40);
    *(v1 + 40) = v2;
  }
}

uint64_t sub_100094F84()
{
  v1 = v0;
  v2 = sub_1000FF804();
  v3 = *(v2 - 8);
  result = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v0 + 48) & 1) == 0)
  {
    v7 = sub_100100AC4();
    v8 = sub_1001015A4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v17 = v10;
      *v9 = 136315138;
      sub_1000FF7C4();
      v11 = sub_1000FF724();
      v13 = v12;
      (*(v3 + 8))(v6, v2);
      v14 = sub_10007A774(v11, v13, &v17);

      *(v9 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v7, v8, "🫀 Keep alive called at %s", v9, 0xCu);
      sub_10001100C(v10);
    }

    if (!*(v1 + 24))
    {
      sub_100094580();
      v15 = [objc_opt_self() defaultCenter];
      if (qword_10014B7B8 != -1)
      {
        swift_once();
      }

      [v15 postNotificationName:qword_100158738 object:0 userInfo:0];
    }

    sub_100007210(&qword_10014F280);
    sub_100032894(&qword_10014F288, &qword_10014F280);
    return sub_100100C04();
  }

  return result;
}

uint64_t sub_100095228()
{
  v1 = v0;
  v2 = sub_100007210(&qword_10014CBD8);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - v3;
  v5 = sub_1000FF804();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100100AC4();
  v10 = sub_100101594();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v22 = v4;
    v12 = v11;
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 136315138;
    sub_1000FF7C4();
    v14 = sub_1000FF724();
    v16 = v15;
    (*(v6 + 8))(v8, v5);
    v17 = sub_10007A774(v14, v16, &v23);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, "🫀 End session at %s", v12, 0xCu);
    sub_10001100C(v13);

    v4 = v22;
  }

  if (*(v1 + 24))
  {

    sub_100100BC4();
  }

  *(v1 + 24) = 0;

  v18 = sub_100101324();
  (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
  sub_100101304();

  v19 = sub_1001012F4();
  v20 = swift_allocObject();
  v20[2] = v19;
  v20[3] = &protocol witness table for MainActor;
  v20[4] = v1;
  sub_1000D73F8(0, 0, v4, &unk_10010E618, v20);
}

uint64_t sub_100095514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_100101304();
  v4[4] = sub_1001012F4();

  return _swift_task_switch(sub_100095590, 0, 0);
}

uint64_t sub_100095590()
{
  *(v0 + 40) = sub_1001012F4();
  v2 = sub_100101284();

  return _swift_task_switch(sub_10009561C, v2, v1);
}

uint64_t sub_10009561C()
{
  v1 = *(v0 + 16);

  v2 = *(v1 + 40);
  if (v2)
  {
    [v2 invalidate];
    v3 = *(v1 + 40);
    *(v1 + 40) = 0;
  }

  v5 = sub_100101284();

  return _swift_task_switch(sub_1000956C0, v5, v4);
}

uint64_t sub_1000956C0()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_100095720()
{
  v0 = sub_1000FF804();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100100AC4();
  v5 = sub_100101594();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    sub_1000FF7C4();
    v8 = sub_1000FF724();
    v10 = v9;
    (*(v1 + 8))(v3, v0);
    v11 = sub_10007A774(v8, v10, &v14);

    *(v6 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "🫀 User became inactive at %s", v6, 0xCu);
    sub_10001100C(v7);
  }

  sub_100095228();
  v12 = [objc_opt_self() defaultCenter];
  if (qword_10014B7C0 != -1)
  {
    swift_once();
  }

  [v12 postNotificationName:qword_100158740 object:0 userInfo:0];
}

uint64_t sub_100095998()
{

  v1 = OBJC_IVAR____TtC21JournalShareExtension17CanvasIdleTracker_logger;
  v2 = sub_100100AE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CanvasIdleTracker()
{
  result = qword_10014F150;
  if (!qword_10014F150)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100095AA8()
{
  result = sub_100100AE4();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100095B70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008030;

  return sub_100095514(a1, v4, v5, v6);
}

uint64_t sub_100095C24()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100095C64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008124;

  return sub_100094C20(a1, v4, v5, v6);
}

unint64_t sub_100095D18()
{
  result = qword_10014E300;
  if (!qword_10014E300)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10014E300);
  }

  return result;
}

uint64_t sub_100095D64(uint64_t a1)
{
  v2 = sub_100007210(&qword_10014F290);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100095DCC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100095E0C(unint64_t *a1, void (*a2)(uint64_t))
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

double *sub_100095E58(double a1)
{
  v2 = v1;
  v4 = [v1 superview];
  if (v4)
  {
    v5 = v4;
    [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [v1 leadingAnchor];
    v7 = [v5 leadingAnchor];
    v8 = [v6 constraintEqualToAnchor:v7];

    [v8 setConstant:a1];
    if (v8)
    {
      v9 = v8;
      sub_1001011B4();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100101204();
      }

      sub_100101234();
    }
  }

  v10 = [v2 superview];
  if (v10)
  {
    v11 = v10;
    [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = [v2 trailingAnchor];
    v13 = [v11 trailingAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];

    [v14 setConstant:-a1];
    if (v14)
    {
      [v14 setActive:1];

      v15 = v14;
      sub_1001011B4();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100101204();
      }

      sub_100101234();
    }

    else
    {
    }
  }

  v16 = [v2 superview];
  if (v16)
  {
    v17 = v16;
    [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    v18 = [v2 topAnchor];
    v19 = [v17 topAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];

    [v20 setConstant:a1];
    if (v20)
    {
      v21 = v20;
      sub_1001011B4();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100101204();
      }

      sub_100101234();
    }
  }

  v22 = [v2 superview];
  if (v22)
  {
    v23 = v22;
    [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    v24 = [v2 bottomAnchor];
    v25 = [v23 bottomAnchor];
    v26 = [v24 constraintEqualToAnchor:v25];

    [v26 setConstant:-a1];
    if (v26)
    {
      v27 = v26;
      sub_1001011B4();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100101204();
      }

      sub_100101234();
    }
  }

  v28 = objc_opt_self();
  sub_100071C44();
  isa = sub_1001011C4().super.isa;
  [v28 activateConstraints:isa];

  return _swiftEmptyArrayStorage;
}

id sub_100096328(char a1, char a2, double a3)
{
  v4 = v3;
  v8 = [v4 superview];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = [v4 bottomAnchor];
  v11 = [v9 bottomAnchor];
  v12 = [v10 *off_100137C08[a1]];

  if (v12)
  {
    [v12 setConstant:-a3];
    if (a2)
    {
      [v12 setActive:1];
    }
  }

  else if (a2)
  {
    v12 = 0;
  }

  return v12;
}

id sub_10009645C(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC21JournalShareExtension16JournalAssetView_fallbackView;
  type metadata accessor for CanvasFallbackAssetView();
  *&v4[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4[OBJC_IVAR____TtC21JournalShareExtension16JournalAssetView_hasCalledSizeTypeUpdated] = 0;
  v4[OBJC_IVAR____TtC21JournalShareExtension16JournalAssetView_sizeType] = 6;
  *&v4[OBJC_IVAR____TtC21JournalShareExtension16JournalAssetView_loadingDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4[OBJC_IVAR____TtC21JournalShareExtension16JournalAssetView_isAssetFinishedLoading] = 0;
  v11.receiver = v4;
  v11.super_class = type metadata accessor for JournalAssetView();
  return objc_msgSendSuper2(&v11, "initWithFrame:", a1, a2, a3, a4);
}

id sub_100096554(void *a1)
{
  v3 = OBJC_IVAR____TtC21JournalShareExtension16JournalAssetView_fallbackView;
  type metadata accessor for CanvasFallbackAssetView();
  *&v1[v3] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v1[OBJC_IVAR____TtC21JournalShareExtension16JournalAssetView_hasCalledSizeTypeUpdated] = 0;
  v1[OBJC_IVAR____TtC21JournalShareExtension16JournalAssetView_sizeType] = 6;
  *&v1[OBJC_IVAR____TtC21JournalShareExtension16JournalAssetView_loadingDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC21JournalShareExtension16JournalAssetView_isAssetFinishedLoading] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for JournalAssetView();
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

id sub_100096648()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JournalAssetView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10009673C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000FF5D4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000FF8B4();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_11:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_12;
  }

  v14 = sub_1000FF9C4();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_11;
  }

  v15 = sub_1000FF9F4();
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_11;
  }

  v16 = sub_1000FF3C4();
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_11;
  }

  v18 = sub_1000FF804();
  v19 = *(*(v18 - 8) + 48);
  v20 = a1 + a3[9];

  return v19(v20, a2, v18);
}

uint64_t sub_100096968(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1000FF5D4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_1000FF8B4();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_11:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_12;
  }

  v16 = sub_1000FF9C4();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_11;
  }

  v17 = sub_1000FF9F4();
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_11;
  }

  v18 = sub_1000FF3C4();
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_11;
  }

  v20 = sub_1000FF804();
  v21 = *(*(v20 - 8) + 56);
  v22 = a1 + a4[9];

  return v21(v22, a2, a2, v20);
}

uint64_t _s23YearAdaptiveFormatStyleVMa()
{
  result = qword_10014F378;
  if (!qword_10014F378)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100096BD8()
{
  result = sub_1000FF5D4();
  if (v1 <= 0x3F)
  {
    result = sub_1000FF8B4();
    if (v2 <= 0x3F)
    {
      result = sub_1000FF9C4();
      if (v3 <= 0x3F)
      {
        result = sub_1000FF9F4();
        if (v4 <= 0x3F)
        {
          result = sub_1000FF3C4();
          if (v5 <= 0x3F)
          {
            result = sub_1000FF804();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_100096CBC(uint64_t a1)
{
  v2 = v1;
  v81 = a1;
  v3 = sub_1000FF664();
  v63 = *(v3 - 8);
  v64 = v3;
  __chkstk_darwin(v3);
  v62 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1000FF6B4();
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v59 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1000FF6E4();
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v56 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000FF3C4();
  v78 = *(v7 - 8);
  v79 = v7;
  __chkstk_darwin(v7);
  v80 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000FF9F4();
  v75 = *(v9 - 8);
  v76 = v9;
  __chkstk_darwin(v9);
  v77 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000FF9C4();
  v68 = *(v11 - 8);
  v69 = v11;
  __chkstk_darwin(v11);
  v74 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000FF8B4();
  v65 = *(v13 - 8);
  v66 = v13;
  __chkstk_darwin(v13);
  v70 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100007210(&qword_10014E3D0);
  __chkstk_darwin(v15 - 8);
  v17 = &v55 - v16;
  v18 = sub_100007210(&qword_10014E3D8);
  __chkstk_darwin(v18 - 8);
  v67 = &v55 - v19;
  v20 = sub_1000FF714();
  v72 = *(v20 - 8);
  v73 = v20;
  v21 = __chkstk_darwin(v20);
  v23 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21);
  v26 = &v55 - v25;
  v27 = __chkstk_darwin(v24);
  v55 = &v55 - v28;
  __chkstk_darwin(v27);
  v71 = &v55 - v29;
  v30 = sub_1000FF9B4();
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v33 = &v55 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = _s23YearAdaptiveFormatStyleVMa();
  v35 = v34[6];
  (*(v31 + 104))(v33, enum case for Calendar.Component.year(_:), v30);
  v36 = sub_1000FF984();
  (*(v31 + 8))(v33, v30);
  if (v36)
  {
    v37 = sub_1000FF604();
    (*(*(v37 - 8) + 56))(v67, 1, 1, v37);
    v38 = sub_1000FF5D4();
    v39 = *(v38 - 8);
    (*(v39 + 16))(v17, v2, v38);
    (*(v39 + 56))(v17, 0, 1, v38);
    (*(v65 + 16))(v70, v2 + v34[5], v66);
    (*(v68 + 16))(v74, v2 + v35, v69);
    (*(v75 + 16))(v77, v2 + v34[7], v76);
    (*(v78 + 16))(v80, v2 + v34[8], v79);
    sub_1000FF624();
    v40 = v56;
    sub_1000FF6D4();
    sub_1000FF704();
    (*(v57 + 8))(v40, v58);
    v42 = v72;
    v41 = v73;
    v43 = *(v72 + 8);
    v43(v23, v73);
    v44 = v59;
    sub_1000FF6A4();
    v45 = v55;
    sub_1000FF644();
    (*(v60 + 8))(v44, v61);
    v43(v26, v41);
    v46 = v62;
    sub_1000FF654();
    v47 = v71;
    sub_1000FF614();
    (*(v63 + 8))(v46, v64);
    v43(v45, v41);
    v48 = v42;
  }

  else
  {
    v49 = v67;
    sub_1000FF5F4();
    v50 = sub_1000FF604();
    (*(*(v50 - 8) + 56))(v49, 0, 1, v50);
    v51 = sub_1000FF5D4();
    v52 = *(v51 - 8);
    (*(v52 + 16))(v17, v2, v51);
    (*(v52 + 56))(v17, 0, 1, v51);
    (*(v65 + 16))(v70, v2 + v34[5], v66);
    (*(v68 + 16))(v74, v2 + v35, v69);
    (*(v75 + 16))(v77, v2 + v34[7], v76);
    (*(v78 + 16))(v80, v2 + v34[8], v79);
    v47 = v71;
    sub_1000FF624();
    v48 = v72;
    v41 = v73;
  }

  v53 = sub_1000FF6F4();
  (*(v48 + 8))(v47, v41);
  return v53;
}

uint64_t sub_1000976F0()
{
  v1 = *v0;
  v2 = 0x6C797453656D6974;
  v3 = 0x656E6F5A656D6974;
  v4 = 0xD000000000000015;
  if (v1 != 4)
  {
    v4 = 0x636E657265666572;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656C61636F6CLL;
  if (v1 != 1)
  {
    v5 = 0x7261646E656C6163;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000977AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10009916C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000977EC(uint64_t a1)
{
  v2 = sub_100098EF8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100097828(uint64_t a1)
{
  v2 = sub_100098EF8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100097864(void *a1)
{
  v3 = sub_100007210(&qword_10014F420);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_1000110C0(a1, a1[3]);
  sub_100098EF8();
  sub_100102024();
  v8[15] = 0;
  sub_1000FF5D4();
  sub_100098F4C(&qword_10014F428, &type metadata accessor for Date.FormatStyle.TimeStyle);
  sub_100101E24();
  if (!v1)
  {
    _s23YearAdaptiveFormatStyleVMa();
    v8[14] = 1;
    sub_1000FF8B4();
    sub_100098F4C(&qword_10014F430, &type metadata accessor for Locale);
    sub_100101E24();
    v8[13] = 2;
    sub_1000FF9C4();
    sub_100098F4C(&qword_10014F438, &type metadata accessor for Calendar);
    sub_100101E24();
    v8[12] = 3;
    sub_1000FF9F4();
    sub_100098F4C(&qword_10014F440, &type metadata accessor for TimeZone);
    sub_100101E24();
    v8[11] = 4;
    sub_1000FF3C4();
    sub_100098F4C(&qword_10014F448, &type metadata accessor for FormatStyleCapitalizationContext);
    sub_100101E24();
    v8[10] = 5;
    sub_1000FF804();
    sub_100098F4C(&qword_10014F450, &type metadata accessor for Date);
    sub_100101E24();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100097C38@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = sub_1000FF804();
  v56 = *(v3 - 8);
  v57 = v3;
  __chkstk_darwin(v3);
  v40 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000FF3C4();
  v54 = *(v5 - 8);
  v55 = v5;
  __chkstk_darwin(v5);
  v41 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1000FF9F4();
  v59 = *(v53 - 8);
  __chkstk_darwin(v53);
  v42 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1000FF9C4();
  v61 = *(v64 - 8);
  __chkstk_darwin(v64);
  v43 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1000FF8B4();
  v63 = *(v51 - 8);
  __chkstk_darwin(v51);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000FF5D4();
  v44 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_100007210(&qword_10014F3E0);
  v45 = *(v47 - 8);
  __chkstk_darwin(v47);
  v15 = &v38 - v14;
  v16 = _s23YearAdaptiveFormatStyleVMa();
  v17 = (v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v17[7];
  sub_1000FF884();
  v60 = v17[8];
  sub_1000FF934();
  v58 = v17[9];
  sub_1000FF9D4();
  v49 = v17[10];
  sub_1000FF3B4();
  v50 = v17[11];
  sub_1000FF7C4();
  v20 = a1[3];
  v52 = a1;
  sub_1000110C0(a1, v20);
  sub_100098EF8();
  v46 = v15;
  v21 = v48;
  sub_100102014();
  if (v21)
  {
    v22 = v57;
    v23 = v55;
    v26 = v51;
    v27 = v49;
    sub_10001100C(v52);
    v29 = v53;
    v28 = v54;
    (*(v63 + 8))(&v19[v62], v26);
    (*(v61 + 8))(&v19[v60], v64);
    (*(v59 + 8))(&v19[v58], v29);
    (*(v28 + 8))(&v19[v27], v23);
    return (*(v56 + 8))(&v19[v50], v22);
  }

  else
  {
    v70 = 0;
    sub_100098F4C(&qword_10014F3F0, &type metadata accessor for Date.FormatStyle.TimeStyle);
    sub_100101E14();
    v24 = v57;
    v25 = v55;
    v31 = *(v44 + 32);
    v48 = v11;
    v31(v19, v13, v11);
    v69 = 1;
    sub_100098F4C(&qword_10014F3F8, &type metadata accessor for Locale);
    v32 = v10;
    v33 = v51;
    sub_100101E14();
    v34 = v49;
    (*(v63 + 40))(&v19[v62], v32, v33);
    v68 = 2;
    sub_100098F4C(&qword_10014F400, &type metadata accessor for Calendar);
    v35 = v64;
    sub_100101E14();
    v36 = v54;
    (*(v61 + 40))(&v19[v60], v43, v35);
    v67 = 3;
    sub_100098F4C(&qword_10014F408, &type metadata accessor for TimeZone);
    v37 = v53;
    sub_100101E14();
    (*(v59 + 40))(&v19[v58], v42, v37);
    v66 = 4;
    sub_100098F4C(&qword_10014F410, &type metadata accessor for FormatStyleCapitalizationContext);
    sub_100101E14();
    (*(v36 + 40))(&v19[v34], v41, v25);
    v65 = 5;
    sub_100098F4C(&qword_10014F418, &type metadata accessor for Date);
    sub_100101E14();
    (*(v45 + 8))(v46, v47);
    (*(v56 + 40))(&v19[v50], v40, v24);
    sub_100098E94(v19, v39);
    sub_10001100C(v52);
    return sub_10007015C(v19);
  }
}

uint64_t sub_1000985B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100096CBC(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1000985DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_100098E94(v3, a3);
  v7 = *(a2 + 20);
  v8 = sub_1000FF8B4();
  v9 = *(*(v8 - 8) + 24);

  return v9(a3 + v7, a1, v8);
}

Swift::Int sub_100098694()
{
  sub_100101F84();
  sub_1000FF5D4();
  sub_100098F4C(&qword_10014F458, &type metadata accessor for Date.FormatStyle.TimeStyle);
  sub_100100E94();
  sub_1000FF8B4();
  sub_100098F4C(&qword_10014F460, &type metadata accessor for Locale);
  sub_100100E94();
  sub_1000FF9C4();
  sub_100098F4C(&qword_10014F468, &type metadata accessor for Calendar);
  sub_100100E94();
  sub_1000FF9F4();
  sub_100098F4C(&qword_10014F470, &type metadata accessor for TimeZone);
  sub_100100E94();
  sub_1000FF3C4();
  sub_100098F4C(&qword_10014F478, &type metadata accessor for FormatStyleCapitalizationContext);
  sub_100100E94();
  sub_1000FF804();
  sub_100098F4C(&qword_10014D260, &type metadata accessor for Date);
  sub_100100E94();
  return sub_100101FE4();
}

uint64_t sub_1000988E4()
{
  sub_1000FF5D4();
  sub_100098F4C(&qword_10014F458, &type metadata accessor for Date.FormatStyle.TimeStyle);
  sub_100100E94();
  sub_1000FF8B4();
  sub_100098F4C(&qword_10014F460, &type metadata accessor for Locale);
  sub_100100E94();
  sub_1000FF9C4();
  sub_100098F4C(&qword_10014F468, &type metadata accessor for Calendar);
  sub_100100E94();
  sub_1000FF9F4();
  sub_100098F4C(&qword_10014F470, &type metadata accessor for TimeZone);
  sub_100100E94();
  sub_1000FF3C4();
  sub_100098F4C(&qword_10014F478, &type metadata accessor for FormatStyleCapitalizationContext);
  sub_100100E94();
  sub_1000FF804();
  sub_100098F4C(&qword_10014D260, &type metadata accessor for Date);
  return sub_100100E94();
}

Swift::Int sub_100098B24()
{
  sub_100101F84();
  sub_1000FF5D4();
  sub_100098F4C(&qword_10014F458, &type metadata accessor for Date.FormatStyle.TimeStyle);
  sub_100100E94();
  sub_1000FF8B4();
  sub_100098F4C(&qword_10014F460, &type metadata accessor for Locale);
  sub_100100E94();
  sub_1000FF9C4();
  sub_100098F4C(&qword_10014F468, &type metadata accessor for Calendar);
  sub_100100E94();
  sub_1000FF9F4();
  sub_100098F4C(&qword_10014F470, &type metadata accessor for TimeZone);
  sub_100100E94();
  sub_1000FF3C4();
  sub_100098F4C(&qword_10014F478, &type metadata accessor for FormatStyleCapitalizationContext);
  sub_100100E94();
  sub_1000FF804();
  sub_100098F4C(&qword_10014D260, &type metadata accessor for Date);
  sub_100100E94();
  return sub_100101FE4();
}

uint64_t sub_100098E94(uint64_t a1, uint64_t a2)
{
  v4 = _s23YearAdaptiveFormatStyleVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100098EF8()
{
  result = qword_10014F3E8;
  if (!qword_10014F3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10014F3E8);
  }

  return result;
}

uint64_t sub_100098F4C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100098F94(uint64_t a1, uint64_t a2)
{
  if ((sub_1000FF5A4() & 1) == 0)
  {
    return 0;
  }

  v4 = _s23YearAdaptiveFormatStyleVMa();
  if ((sub_1000FF894() & 1) == 0 || (sub_1000FF944() & 1) == 0 || (sub_1000FF9E4() & 1) == 0 || (sub_1000FF3A4() & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 36);

  return static Date.== infix(_:_:)(a1 + v5, a2 + v5);
}

unint64_t sub_100099068()
{
  result = qword_10014F480;
  if (!qword_10014F480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10014F480);
  }

  return result;
}

unint64_t sub_1000990C0()
{
  result = qword_10014F488;
  if (!qword_10014F488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10014F488);
  }

  return result;
}

unint64_t sub_100099118()
{
  result = qword_10014F490;
  if (!qword_10014F490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10014F490);
  }

  return result;
}

uint64_t sub_10009916C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C797453656D6974 && a2 == 0xE900000000000065;
  if (v4 || (sub_100101E84() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (sub_100101E84() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7261646E656C6163 && a2 == 0xE800000000000000 || (sub_100101E84() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656E6F5A656D6974 && a2 == 0xE800000000000000 || (sub_100101E84() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000100108970 == a2 || (sub_100101E84() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x636E657265666572 && a2 == 0xE900000000000065)
  {

    return 5;
  }

  else
  {
    v6 = sub_100101E84();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

void sub_10009937C(CGRectEdge edge@<W0>, CGPoint *a2@<X8>, double a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>, CGFloat a7@<D4>)
{
  if (edge > CGRectMinYEdge)
  {
    if (edge == CGRectMaxYEdge)
    {
      v12 = CGRectMinYEdge;
LABEL_8:
      v13 = a7;
LABEL_12:
      v14 = v13 * a3;
      memset(&slice, 0, sizeof(slice));
      v15 = (1.0 - a3) * v13;
      memset(&remainder, 0, sizeof(remainder));
      v22.origin.x = a4;
      v22.origin.y = a5;
      v22.size.width = a6;
      v22.size.height = a7;
      CGRectDivide(v22, &slice, &remainder, v14, edge);
      size = slice.size;
      origin = slice.origin;
      memset(&slice, 0, sizeof(slice));
      memset(&remainder, 0, sizeof(remainder));
      v23.origin.x = a4;
      v23.origin.y = a5;
      v23.size.width = a6;
      v23.size.height = a7;
      CGRectDivide(v23, &slice, &remainder, v15, v12);
      v16 = slice.origin;
      v17 = slice.size;
      *a2 = origin;
      a2[1] = size;
      a2[2] = v16;
      a2[3] = v17;
      return;
    }

    if (edge == CGRectMaxXEdge)
    {
      v12 = CGRectMinXEdge;
      goto LABEL_11;
    }
  }

  else
  {
    if (edge == CGRectMinXEdge)
    {
      v12 = CGRectMaxXEdge;
LABEL_11:
      v13 = a6;
      goto LABEL_12;
    }

    if (edge == CGRectMinYEdge)
    {
      v12 = CGRectMaxYEdge;
      goto LABEL_8;
    }
  }

  type metadata accessor for CGRectEdge(0);
  sub_100101EB4();
  __break(1u);
}

uint64_t sub_1000994EC(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_1000110C0((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_100007210(&qword_10014EBE0);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_1000995C4()
{
  v0 = sub_100100AE4();
  sub_100003CD4(v0, qword_10014F498);
  v1 = sub_100003D38(v0, qword_10014F498);
  if (qword_10014B888 != -1)
  {
    swift_once();
  }

  v2 = sub_100003D38(v0, qword_100158828);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_10009968C()
{
  v1 = sub_1000FFE34();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100007210(&qword_10014C358);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  if (!*(v0 + OBJC_IVAR____TtC21JournalShareExtension9LinkAsset_metadata))
  {
    return 0;
  }

  sub_10000935C(v7);

  if ((*(v2 + 48))(v7, 1, v1))
  {
    sub_10000FFB4(v7, &qword_10014C358);
    return 0;
  }

  (*(v2 + 16))(v4, v7, v1);
  sub_10000FFB4(v7, &qword_10014C358);
  v9 = sub_1000FFE04();
  v11 = v10;
  (*(v2 + 8))(v4, v1);
  isa = sub_1000FF554().super.isa;
  v13 = [objc_opt_self() metadataWithDataRepresentation:isa];

  sub_1000064C0(v9, v11);
  return v13;
}

void sub_100099898()
{
  v1 = OBJC_IVAR____TtC21JournalShareExtension5Asset_assetMO;
  v2 = *(v0 + OBJC_IVAR____TtC21JournalShareExtension5Asset_assetMO);
  if (v2)
  {
    v3 = v0;
    v4 = v2;
    v5 = sub_10009968C();
    if (v5)
    {
      v6 = sub_100099A18();

      if (v6 > 5u)
      {
        v5 = 0;
      }

      else
      {
        v5 = sub_100100F94();
      }
    }

    [v4 setContentType:v5];

    v7 = *(v3 + v1);
    if (v7)
    {

      [v7 setIsUploadedToCloud:0];
    }
  }
}

uint64_t sub_100099A18()
{
  v98 = sub_100100884();
  v94 = *(v98 - 8);
  __chkstk_darwin(v98);
  v97 = v70 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_100007210(&qword_10014F528);
  v2 = *(v100 - 8);
  v3 = __chkstk_darwin(v100);
  v5 = v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = v70 - v7;
  v9 = __chkstk_darwin(v6);
  v73 = v70 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = v70 - v12;
  v14 = __chkstk_darwin(v11);
  v78 = v70 - v15;
  v16 = __chkstk_darwin(v14);
  v96 = v70 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = v70 - v19;
  v21 = __chkstk_darwin(v18);
  v77 = v70 - v22;
  __chkstk_darwin(v21);
  v99 = v70 - v23;
  v24 = sub_100007210(&qword_10014F530);
  v25 = __chkstk_darwin(v24 - 8);
  v27 = v70 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v76 = v70 - v28;
  v29 = [v0 itemType];
  if (v29)
  {
    v30 = v29;
    v81 = sub_100100FD4();
    v82 = v31;
  }

  else
  {
    v81 = 0;
    v82 = 0xE000000000000000;
  }

  v32 = [v0 siteName];
  if (v32)
  {
    v33 = v32;
    v34 = sub_100100FD4();
    v36 = v35;
  }

  else
  {
    v34 = 0;
    v36 = 0xE000000000000000;
  }

  v70[3] = " result type display";
  v70[2] = "/\\bspotify|pandora\\b/";
  v70[1] = "/\\bbook|books\\b/";
  ++v94;
  v95 = (v2 + 32);
  v93 = (v2 + 8);
  v37 = HIBYTE(v82) & 0xF;
  if ((v82 & 0x2000000000000000) == 0)
  {
    v37 = v81;
  }

  v38 = 7;
  if (((v82 >> 60) & ((v81 & 0x800000000000000) == 0)) != 0)
  {
    v39 = 11;
  }

  else
  {
    v39 = 7;
  }

  v75 = v39 | (v37 << 16);
  v40 = HIBYTE(v36) & 0xF;
  if ((v36 & 0x2000000000000000) == 0)
  {
    v40 = v34;
  }

  v80 = v36;
  v70[5] = v34;
  if (((v36 >> 60) & ((v34 & 0x800000000000000) == 0)) != 0)
  {
    v38 = 11;
  }

  v70[4] = v38 | (v40 << 16);
  v74 = v5;
  v41 = 0;
  v91 = v13;
  v71 = v27;
  v79 = v8;
  v72 = v20;
  while (1)
  {
    v42 = *(&off_100134768 + v41 + 32);
    v92 = v42;
    v86 = v41;
    sub_100100894();
    v43 = v77;
    v44 = v100;
    v89 = *v95;
    v89(v77, v20, v100);
    v45 = v96;
    sub_1001008B4();
    v46 = v97;
    sub_100100874();
    sub_1001008C4();
    v88 = *v94;
    v88(v46, v98);
    v47 = *v93;
    (*v93)(v45, v44);
    v90 = v47;
    v47(v43, v44);
    sub_100101154();
    v48 = sub_10009B434();
    v49 = v78;
    v87 = v48;
    sub_100100864();
    v50 = v76;
    sub_1001008A4();

    v51 = v100;
    v52 = v90;
    v90(v49, v100);
    v52(v99, v51);
    v53 = sub_100007210(&qword_10014F540);
    v54 = *(v53 - 8);
    v55 = v54;
    v56 = *(v54 + 48);
    v57 = v54 + 48;
    v58 = v56(v50, 1, v53);
    v59 = v79;
    if (v58 != 1)
    {

      v69 = v50;
      goto LABEL_23;
    }

    sub_10000FFB4(v50, &qword_10014F530);
    v90 = v53;
    v84 = v57;
    v85 = v56;
    v83 = v55;
    sub_100100894();
    v60 = v73;
    v61 = v100;
    v89(v73, v59, v100);
    v62 = v96;
    sub_1001008B4();
    v63 = v97;
    sub_100100874();
    sub_1001008C4();
    v88(v63, v98);
    v52(v62, v61);
    v52(v60, v61);
    sub_100101154();
    v64 = v74;
    sub_100100864();
    v65 = v71;
    sub_1001008A4();

    v52(v64, v61);
    v52(v91, v61);
    v66 = v86;
    v67 = v85(v65, 1, v90);
    v20 = v72;
    if (v67 != 1)
    {
      break;
    }

    v41 = v66 + 1;
    sub_10000FFB4(v65, &qword_10014F530);
    if (v41 == 6)
    {

      return 6;
    }
  }

  v69 = v65;
LABEL_23:
  sub_10000FFB4(v69, &qword_10014F530);
  return v92;
}

id sub_10009A5D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LinkAsset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for LinkAsset()
{
  result = qword_10014F4D8;
  if (!qword_10014F4D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}