uint64_t sub_10038A50C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 760) = v1;
  if (v1)
  {
    v2 = sub_10038AE78;
  }

  else
  {
    v2 = sub_10038A61C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10038A61C()
{
  v1 = v0[94];
  v2 = v0[93];
  v3 = v0[92];
  v4 = v0[88];
  v5 = v0[79];
  v6 = v0[78];
  v7 = v0[61];
  type metadata accessor for Lyrics(0);
  swift_allocObject();
  v10 = Lyrics.init(identifier:songInfo:)(0, 0, v7);

  sub_1000A79FC(v3, v2);
  (*(v5 + 8))(v4, v6);

  v8 = v0[1];

  return v8(v10, 0, 1);
}

uint64_t sub_10038A7D4()
{
  *(*v1 + 808) = v0;

  if (v0)
  {
    v2 = sub_10038B434;
  }

  else
  {
    v2 = sub_10038A924;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10038A924()
{
  v1 = *(v0 + 704);
  v2 = *(v0 + 632);
  v3 = *(v0 + 624);
  sub_10008246C(*(v0 + 776), *(v0 + 784));
  (*(v2 + 8))(v1, v3);
  v7 = *(v0 + 408);
  v8 = *(v0 + 400);
  v6 = *(v0 + 416);

  v4 = *(v0 + 8);

  return v4(v8, v7, v6);
}

uint64_t sub_10038AAA4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 824) = v1;

  if (v1)
  {
    v5 = sub_10038B5A0;
  }

  else
  {
    *(v4 + 832) = a1;
    v5 = sub_10038ABCC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10038ABCC()
{
  v3 = v0[104];
  (*(v0[79] + 8))(v0[88], v0[78]);

  v1 = v0[1];

  return v1(v3, 0, 1);
}

uint64_t sub_10038AD34()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10038AE78()
{
  v66 = v0;
  v1 = v0[82];
  v58 = v0[81];
  v60 = v0[88];
  v2 = v0[79];
  v3 = v0[78];
  v4 = v0[71];
  v5 = v0[70];
  v6 = v0[69];
  v62 = v0[80];
  v64 = v0[65];
  v7 = v0[64];
  swift_willThrow();
  v8 = Logger.lyrics.unsafeMutableAddressor();
  (*(v5 + 16))(v4, v8, v6);
  v9 = *(v2 + 16);
  v9(v1, v7, v3);
  v9(v58, v60, v3);
  v9(v62, v7, v3);
  v10 = v64;
  swift_errorRetain();
  v11 = sub_10056DF68();
  v12 = sub_100573448();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = v0[95];
    v14 = v0[82];
    v56 = v0[81];
    v57 = v0[80];
    v15 = v0[79];
    v16 = v0[78];
    v59 = v0[70];
    v61 = v0[69];
    v63 = v0[71];
    v17 = v0[65];
    v18 = swift_slowAlloc();
    v65[0] = swift_slowAlloc();
    *v18 = 136447234;
    v0[62] = v17;
    v19 = sub_100572978();
    v21 = sub_10037A2AC(v19, v20, v65);

    *(v18 + 4) = v21;
    *(v18 + 12) = 2082;
    v0[63] = v13;
    swift_errorRetain();
    sub_100009DCC(&qword_1006F47F0);
    v22 = sub_100572978();
    v24 = sub_10037A2AC(v22, v23, v65);

    *(v18 + 14) = v24;
    *(v18 + 22) = 2082;
    v25 = sub_100571958();
    if (v25)
    {
      v26 = 1702195828;
    }

    else
    {
      v26 = 0x65736C6166;
    }

    if (v25)
    {
      v27 = 0xE400000000000000;
    }

    else
    {
      v27 = 0xE500000000000000;
    }

    v28 = *(v15 + 8);
    v28(v14, v16);
    v29 = sub_10037A2AC(v26, v27, v65);

    *(v18 + 24) = v29;
    *(v18 + 32) = 2082;
    v0[55] = sub_100571938();
    v0[56] = v30;
    sub_100009DCC(&qword_1006F5C90);
    v31 = sub_100572978();
    v33 = v32;
    v28(v56, v16);
    v34 = sub_10037A2AC(v31, v33, v65);

    *(v18 + 34) = v34;
    *(v18 + 42) = 2082;
    v35 = sub_100388CD8();
    v37 = v36;
    v28(v57, v16);
    v38 = sub_10037A2AC(v35, v37, v65);

    *(v18 + 44) = v38;
    _os_log_impl(&_mh_execute_header, v11, v12, "Loader<%{public}s> loadLyrics(for:completion:) didn't parse TTML custom lyrics with error=%{public}s song.hasCustomLyrics=%{public}s song.customLyrics=%{public}s %{public}s", v18, 0x34u);
    swift_arrayDestroy();

    (*(v59 + 8))(v63, v61);
  }

  else
  {
    v39 = v0[82];
    v40 = v0[81];
    v41 = v0[80];
    v42 = v0[79];
    v43 = v0[78];
    v44 = v0[71];
    v45 = v11;
    v46 = v0[70];
    v47 = v0[69];

    v28 = *(v42 + 8);
    v28(v41, v43);
    v28(v40, v43);
    v28(v39, v43);
    (*(v46 + 8))(v44, v47);
  }

  v48 = v0[94];
  v49 = v0[93];
  v50 = v0[92];
  v51 = v0[88];
  v52 = v0[78];
  sub_10039198C();
  swift_allocError();
  *v53 = 0;
  swift_willThrow();

  sub_1000A79FC(v50, v49);
  v28(v51, v52);

  v54 = v0[1];

  return v54();
}

uint64_t sub_10038B434()
{
  v1 = v0[88];
  v2 = v0[79];
  v3 = v0[78];
  sub_10008246C(v0[97], v0[98]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10038B5A0()
{
  (*(v0[79] + 8))(v0[88], v0[78]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10038B6F8()
{

  v0 = sub_100572AA8();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    do
    {
      v6 = sub_100572AA8();
      if (!v7)
      {

        return 1;
      }

      if (v2 == v6 && v3 == v7)
      {
      }

      else
      {
        v4 = sub_100574498();

        if ((v4 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v2 = sub_100572AA8();
      v3 = v5;
    }

    while (v5);
  }

  sub_100572AA8();
  v9 = v8;

  if (!v9)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

void *sub_10038B854(uint64_t a1, void *a2, void *a3)
{
  result = sub_10000C8CC((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100009DCC(&qword_1006F47F0);
    swift_allocError();
    *v6 = a3;
    v7 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else if (a2)
  {
    **(*(*result + 64) + 40) = a2;
    v8 = a2;

    return swift_continuation_throwingResume();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10038B92C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100009DCC(&qword_1006EFC40);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = aBlock - v11;
  v13 = objc_allocWithZone(MSVLyricsTTMLParser);
  isa = sub_10056C908().super.isa;
  v15 = [v13 initWithTTMLData:isa];

  (*(v9 + 16))(v12, a1, v8);
  v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v17 = swift_allocObject();
  (*(v9 + 32))(v17 + v16, v12, v8);
  v18 = (v17 + ((v10 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v18 = a4;
  v18[1] = a5;
  aBlock[4] = sub_100392F74;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000128FC;
  aBlock[3] = &unk_10069FA18;
  v19 = _Block_copy(aBlock);

  [v15 parseWithCompletion:v19];
  _Block_release(v19);
}

void sub_10038BB50(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    type metadata accessor for Lyrics(0);
    swift_allocObject();
    v8 = a1;

    Lyrics.init(identifier:songInfo:)(a4, a5, v8);
    sub_100009DCC(&qword_1006EFC40);
    sub_100572E98();
  }

  else
  {
    if (!a2)
    {
      sub_10039198C();
      swift_allocError();
      *v9 = 3;
    }

    swift_errorRetain();
    sub_100009DCC(&qword_1006EFC40);
    sub_100572E88();
  }
}

uint64_t sub_10038BD74()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  sub_10056DE48();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10001036C(*(v0 + 32), &qword_1006EFBE8);
    sub_10039198C();
    swift_allocError();
    *v5 = 4;
    swift_willThrow();

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    (*(*(v0 + 48) + 32))(*(v0 + 56), *(v0 + 32), *(v0 + 40));
    v8 = swift_task_alloc();
    *(v0 + 64) = v8;
    *v8 = v0;
    v8[1] = sub_10038BF04;
    v9 = *(v0 + 56);

    return LyricsLoader.loadLyrics(for:)(v9);
  }
}

uint64_t sub_10038BF04(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v4;
  *(*v4 + 72) = v3;

  if (v3)
  {
    v9 = sub_10038C0DC;
  }

  else
  {
    *(v8 + 96) = a3;
    *(v8 + 80) = a2;
    *(v8 + 88) = a1;
    v9 = sub_10038C040;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10038C040()
{
  v1 = *(v0 + 96);
  (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));

  v2 = *(v0 + 8);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);

  return v2(v3, v4, v1 & 1);
}

uint64_t sub_10038C0DC()
{
  (*(v0[6] + 8))(v0[7], v0[5]);

  v1 = v0[1];

  return v1();
}

id static LyricsLoader.requiredProperties()()
{
  sub_100009DCC(&qword_1006F44B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10057BD80;
  *(v0 + 32) = sub_1005728D8();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_1005728D8();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_1005728D8();
  *(v0 + 72) = v3;
  *(v0 + 80) = sub_1005728D8();
  *(v0 + 88) = v4;
  sub_100009DCC(&qword_1006EFBF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100580F90;
  *(inited + 32) = sub_1005728D8();
  *(inited + 40) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10057B510;
  *(v7 + 32) = sub_1005728D8();
  *(v7 + 40) = v8;
  isa = sub_100572D08().super.isa;

  v10 = objc_opt_self();
  v11 = [v10 propertySetWithProperties:isa];

  *(inited + 48) = v11;
  *(inited + 56) = sub_1005728D8();
  *(inited + 64) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10057BD80;
  *(v13 + 32) = sub_1005728D8();
  *(v13 + 40) = v14;
  *(v13 + 48) = sub_1005728D8();
  *(v13 + 56) = v15;
  *(v13 + 64) = sub_1005728D8();
  *(v13 + 72) = v16;
  *(v13 + 80) = sub_1005728D8();
  *(v13 + 88) = v17;
  v18 = sub_100572D08().super.isa;

  v19 = [v10 propertySetWithProperties:v18];

  *(inited + 72) = v19;
  *(inited + 80) = sub_1005728D8();
  *(inited + 88) = v20;
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_10057B510;
  *(v21 + 32) = sub_1005728D8();
  *(v21 + 40) = v22;
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_10057B510;
  *(v23 + 32) = sub_1005728D8();
  *(v23 + 40) = v24;
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_10057B510;
  *(v25 + 32) = sub_1005728D8();
  *(v25 + 40) = v26;
  v27 = sub_100572D08().super.isa;

  v28 = [v10 propertySetWithProperties:v27];

  *(v23 + 48) = v28;
  sub_100385CBC(v23);
  swift_setDeallocating();
  sub_10001036C(v23 + 32, &qword_1006EFBF8);
  v29 = objc_allocWithZone(MPPropertySet);
  v30 = sub_100572D08().super.isa;

  sub_100392D28();
  v31 = sub_100572688().super.isa;

  v32 = [v29 initWithProperties:v30 relationships:v31];

  *(inited + 96) = v32;
  sub_100385CBC(inited);
  swift_setDeallocating();
  sub_100009DCC(&qword_1006EFBF8);
  swift_arrayDestroy();
  v33 = objc_allocWithZone(MPPropertySet);
  v34 = sub_100572D08().super.isa;

  v35 = sub_100572688().super.isa;

  v36 = [v33 initWithProperties:v34 relationships:v35];

  return v36;
}

uint64_t sub_10038C638(uint64_t a1)
{
  v2[79] = v1;
  v2[78] = a1;
  v3 = sub_100572928();
  v2[80] = v3;
  v2[81] = *(v3 - 8);
  v2[82] = swift_task_alloc();
  v4 = sub_100571A68();
  v2[83] = v4;
  v2[84] = *(v4 - 8);
  v2[85] = swift_task_alloc();
  v5 = sub_10056DF88();
  v2[86] = v5;
  v2[87] = *(v5 - 8);
  v2[88] = swift_task_alloc();
  v2[89] = swift_task_alloc();
  v2[90] = swift_task_alloc();
  v2[91] = swift_task_alloc();
  v2[92] = swift_task_alloc();
  v2[93] = swift_task_alloc();
  v2[94] = swift_task_alloc();
  v2[95] = swift_task_alloc();
  v6 = sub_100570DC8();
  v2[96] = v6;
  v2[97] = *(v6 - 8);
  v2[98] = swift_task_alloc();
  v7 = sub_100570D98();
  v2[99] = v7;
  v2[100] = *(v7 - 8);
  v2[101] = swift_task_alloc();
  v8 = sub_10056C258();
  v2[102] = v8;
  v2[103] = *(v8 - 8);
  v2[104] = swift_task_alloc();
  v2[105] = swift_task_alloc();
  v9 = sub_10056C3A8();
  v2[106] = v9;
  v2[107] = *(v9 - 8);
  v2[108] = swift_task_alloc();
  v2[109] = swift_task_alloc();
  v2[110] = swift_task_alloc();
  sub_100009DCC(&qword_1006EFC48);
  v2[111] = swift_task_alloc();
  sub_100009DCC(&qword_1006EFC50);
  v2[112] = swift_task_alloc();
  v10 = sub_10056CC18();
  v2[113] = v10;
  v2[114] = *(v10 - 8);
  v2[115] = swift_task_alloc();
  v2[116] = swift_task_alloc();
  v2[117] = swift_task_alloc();
  v2[118] = swift_task_alloc();
  v2[119] = swift_task_alloc();
  sub_100009DCC(&qword_1006EFC58);
  v2[120] = swift_task_alloc();
  v2[121] = swift_task_alloc();
  v2[122] = swift_task_alloc();
  v11 = sub_10056CC38();
  v2[123] = v11;
  v2[124] = *(v11 - 8);
  v2[125] = swift_task_alloc();
  v2[126] = swift_task_alloc();
  sub_100009DCC(&qword_1006EFC60);
  v2[127] = swift_task_alloc();
  v2[128] = swift_task_alloc();
  v2[129] = swift_task_alloc();
  sub_100009DCC(&qword_1006EF140);
  v2[130] = swift_task_alloc();
  v12 = sub_10056C8A8();
  v2[131] = v12;
  v2[132] = *(v12 - 8);
  v2[133] = swift_task_alloc();
  v2[134] = swift_task_alloc();

  return _swift_task_switch(sub_10038CC6C, 0, 0);
}

uint64_t sub_10038CC6C()
{
  v251 = v0;
  v1 = v0;
  sub_100571998();
  v248 = v0;
  if (!v2)
  {
    v45 = v0[90];
    v46 = v0[87];
    v47 = v0[86];
    v48 = Logger.lyrics.unsafeMutableAddressor();
    (*(v46 + 16))(v45, v48, v47);
    v49 = sub_10056DF68();
    v50 = sub_100573428();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v49, v50, "fetchStoreLyrics: song has no storeID", v51, 2u);
    }

    v52 = v1[90];
    v53 = v1[87];
    v54 = v1[86];

    (*(v53 + 8))(v52, v54);
    sub_10039198C();
    swift_allocError();
    v56 = 2;
    goto LABEL_21;
  }

  BagProvider.shared.unsafeMutableAddressor();

  v3 = BagProvider.bag.getter();
  v0[135] = v3;

  if (!v3)
  {
    v57 = v0[91];
    v58 = v0[87];
    v59 = v0[86];

    v60 = Logger.lyrics.unsafeMutableAddressor();
    (*(v58 + 16))(v57, v60, v59);
    v61 = sub_10056DF68();
    v62 = sub_100573428();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&_mh_execute_header, v61, v62, "fetchStoreLyrics: Bag is nil", v63, 2u);
    }

    v64 = v1[91];
    v65 = v1[87];
    v66 = v1[86];

    (*(v65 + 8))(v64, v66);
    sub_10039198C();
    swift_allocError();
    v56 = 3;
LABEL_21:
    *v55 = v56;
    swift_willThrow();
LABEL_27:

    v78 = v248[1];

    return v78();
  }

  v4 = LyricsOptionsManager.shared.unsafeMutableAddressor();
  v5 = *(**v4 + 120);

  v6 = v3;
  v5(v3);

  v7 = [v6 stringForBagKey:ICURLBagKeyCountryCode];
  if (!v7)
  {
LABEL_23:

LABEL_24:
    v67 = v1[92];
    v68 = v1[87];
    v69 = v1[86];
    v70 = Logger.lyrics.unsafeMutableAddressor();
    (*(v68 + 16))(v67, v70, v69);
    v71 = sub_10056DF68();
    v72 = sub_100573428();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&_mh_execute_header, v71, v72, "fetchStoreLyrics: Unable to get the domain from the bag", v73, 2u);
    }

    v74 = v1[92];
    v75 = v1[87];
    v76 = v1[86];

    (*(v75 + 8))(v74, v76);
    sub_10039198C();
    swift_allocError();
    *v77 = 3;
    swift_willThrow();

    goto LABEL_27;
  }

  v8 = v7;
  v9 = sub_1005728D8();
  v11 = v10;

  v12 = [v6 dictionaryForBagKey:ICURLBagKeyMusicCommon];
  if (!v12 || (v13 = v12, v14 = sub_1005726A8(), v13, v15 = sub_100406710(v14), , !v15))
  {
LABEL_22:

    goto LABEL_23;
  }

  v16 = sub_1005728D8();
  if (!*(v15 + 16))
  {

    goto LABEL_31;
  }

  v18 = sub_100429D94(v16, v17);
  v20 = v19;

  if ((v20 & 1) == 0)
  {
LABEL_31:

    v1 = v248;
    goto LABEL_24;
  }

  v1 = v248;
  v21 = v248 + 75;
  sub_1000F40D4(*(v15 + 56) + 40 * v18, (v248 + 23));

  sub_100009DCC(&qword_1006EFC68);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  v22 = *v21;
  if (!*(*v21 + 16) || (v23 = sub_100429D94(0x746C7561666564, 0xE700000000000000), (v24 & 1) == 0))
  {

    goto LABEL_23;
  }

  sub_1000F40D4(*(v22 + 56) + 40 * v23, (v248 + 18));

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  v243 = v248[132];
  v245 = v248[131];
  v241 = v248[130];
  v25 = v248[62];
  v26 = v248[63];
  sub_100573ED8(49);

  v249 = 0x2F2F3A7370747468;
  v250 = 0xE800000000000000;
  v253._countAndFlagsBits = v25;
  v253._object = v26;
  sub_100572A98(v253);

  v254._countAndFlagsBits = 0x617461632F31762FLL;
  v254._object = 0xEC0000002F676F6CLL;
  sub_100572A98(v254);
  v255._countAndFlagsBits = v9;
  v255._object = v11;
  sub_100572A98(v255);
  v256._countAndFlagsBits = 0x2F73676E6F732FLL;
  v256._object = 0xE700000000000000;
  sub_100572A98(v256);
  v27 = sub_1005713B8();
  v29 = v28;

  v257._countAndFlagsBits = v27;
  v257._object = v29;
  sub_100572A98(v257);

  v258._object = 0x80000001005B8220;
  v258._countAndFlagsBits = 0xD000000000000010;
  sub_100572A98(v258);
  sub_10056C868();
  if ((*(v243 + 48))(v241, 1, v245) == 1)
  {
    v30 = v248[130];
    v31 = v248[93];
    v32 = v248[87];
    v33 = v248[86];

    sub_10001036C(v30, &qword_1006EF140);
    v34 = Logger.lyrics.unsafeMutableAddressor();
    (*(v32 + 16))(v31, v34, v33);

    v35 = sub_10056DF68();
    v36 = sub_100573428();

    v37 = os_log_type_enabled(v35, v36);
    v38 = v248[93];
    v39 = v248[87];
    v40 = v248[86];
    if (v37)
    {
      v41 = v248[93];
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v249 = v43;
      *v42 = 136446210;
      v44 = sub_10037A2AC(0x2F2F3A7370747468, 0xE800000000000000, &v249);

      *(v42 + 4) = v44;
      _os_log_impl(&_mh_execute_header, v35, v36, "fetchStoreLyrics: Couldn't build URL: %{public}s", v42, 0xCu);
      sub_100010474(v43);

      (*(v39 + 8))(v41, v40);
    }

    else
    {

      (*(v39 + 8))(v38, v40);
    }

    sub_10039198C();
    swift_allocError();
    *v171 = 3;
    swift_willThrow();

    goto LABEL_27;
  }

  v80 = v248[134];
  v81 = v248[132];
  v82 = v248[131];
  v83 = v248[130];
  v84 = v248[129];
  v85 = v248[124];
  v246 = v248[123];

  (*(v81 + 32))(v80, v83, v82);
  v232 = *(v85 + 56);
  v232(v84, 1, 1, v246);
  v86 = sub_10056CB48();
  v87 = v86;
  v88 = *(v86 + 16);
  if (!v88)
  {
    v226 = 0;
    v227 = _swiftEmptyArrayStorage;
    v240 = _swiftEmptyArrayStorage;
    goto LABEL_84;
  }

  v226 = 0;
  v89 = 0;
  v90 = v248[124];
  v236 = (v90 + 48);
  v231 = (v90 + 16);
  v91 = (v248[114] + 8);
  v92 = (v90 + 8);
  v93 = v86 + 40;
  v234 = -v88;
  v235 = v92;
  v227 = _swiftEmptyArrayStorage;
  v240 = _swiftEmptyArrayStorage;
  v237 = v86;
  v225 = v86 + 40;
  do
  {
    v94 = v93 + 16 * v89;
    v95 = v89 + 1;
    while (1)
    {
      v247 = v95;
      if ((v95 - 1) >= *(v87 + 16))
      {
        __break(1u);
      }

      v98 = v91;
      v99 = v1[129];
      v100 = v1[128];
      v101 = v1[123];
      v244 = v94;

      sub_10056CAF8();
      sub_100393048(v99, v100);
      if ((*v236)(v100, 1, v101) == 1)
      {
        v102 = v1[129];
        v103 = v1[128];
        v104 = v1[126];
        v105 = v1[123];
        sub_10001036C(v102, &qword_1006EFC60);
        sub_10001036C(v103, &qword_1006EFC60);
        (*v231)(v102, v104, v105);
        v232(v102, 0, 1, v105);
      }

      else
      {
        sub_10001036C(v1[128], &qword_1006EFC60);
      }

      v106 = v1[122];
      v107 = v1[119];
      v108 = v1[113];
      sub_10056CC28();
      sub_10056CBE8();
      v242 = *v91;
      (*v91)(v107, v108);
      v109 = sub_10056CB38();
      v110 = *(v109 - 8);
      v239 = *(v110 + 48);
      v238 = v110;
      if (v239(v106, 1, v109) == 1)
      {
        sub_10001036C(v1[122], &qword_1006EFC58);
      }

      else
      {
        v111 = v1[122];
        v112 = sub_10056CB18();
        v113 = v110;
        v114 = v112;
        v116 = v115;
        (*(v113 + 8))(v111, v109);
        v1[64] = sub_10056CB08();
        v1[65] = v117;
        v1[56] = 45;
        v1[57] = 0xE100000000000000;
        sub_10037AD68();
        LOBYTE(v111) = sub_100573D38();

        if (v111)
        {

          v118 = sub_10056CB08();
          v120 = v119;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v240 = sub_100474884(0, *(v240 + 2) + 1, 1, v240);
          }

          v122 = *(v240 + 2);
          v121 = *(v240 + 3);
          if (v122 >= v121 >> 1)
          {
            v240 = sub_100474884((v121 > 1), v122 + 1, 1, v240);
          }

          *(v240 + 2) = v122 + 1;
          v123 = &v240[16 * v122];
          *(v123 + 4) = v118;
          *(v123 + 5) = v120;
        }

        else
        {
          v124 = v1[112];
          v249 = v114;
          v250 = v116;
          v259._countAndFlagsBits = 45;
          v259._object = 0xE100000000000000;
          sub_100572A98(v259);
          sub_10056CBB8();
          v125 = sub_10056CB88();
          v126 = v1;
          v127 = *(v125 - 8);
          v128 = (*(v127 + 48))(v124, 1, v125);
          v129 = v126[112];
          if (v128 == 1)
          {
            sub_10001036C(v129, &qword_1006EFC50);
            v130._countAndFlagsBits = sub_1005729B8();
            object = v130._object;
          }

          else
          {
            v132 = sub_10056CB78();
            object = v133;
            (*(v127 + 8))(v129, v125);
            v130._countAndFlagsBits = v132;
          }

          v130._object = object;
          sub_100572A98(v130);

          v134 = v249;
          v135 = v250;
          v1 = v248;
          v91 = v98;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v240 = sub_100474884(0, *(v240 + 2) + 1, 1, v240);
          }

          v137 = *(v240 + 2);
          v136 = *(v240 + 3);
          if (v137 >= v136 >> 1)
          {
            v240 = sub_100474884((v136 > 1), v137 + 1, 1, v240);
          }

          *(v240 + 2) = v137 + 1;
          v138 = &v240[16 * v137];
          *(v138 + 4) = v134;
          *(v138 + 5) = v135;
        }
      }

      *(v1 + 1194) = 6;
      v139 = sub_1003930B8();
      if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v139) & 1) == 0)
      {
        (*v235)(v1[126], v1[123]);
LABEL_63:
        v87 = v237;
LABEL_64:
        v97 = v247;
        goto LABEL_37;
      }

      v233 = v109;
      v140 = v1[118];
      v141 = v1[113];
      v142 = v1[111];
      sub_10056CC28();
      sub_10056CC08();
      v242(v140, v141);
      v143 = sub_10056CBA8();
      v144 = v91;
      v145 = *(v143 - 8);
      if ((*(v145 + 48))(v142, 1, v143) != 1)
      {
        break;
      }

      v96 = v1[111];
      (*v235)(v1[126], v1[123]);
      sub_10001036C(v96, &qword_1006EFC48);
      v87 = v237;
      v97 = v247;
      v91 = v144;
LABEL_37:
      v94 = v244 + 16;
      v95 = v97 + 1;
      if (v234 + v95 == 1)
      {
        goto LABEL_84;
      }
    }

    v146 = v1[121];
    v147 = v1;
    v148 = v1[117];
    v229 = v147[113];
    v149 = v147[111];
    v228 = sub_10056CB98();
    v230 = v150;
    (*(v145 + 8))(v149, v143);
    sub_10056CC28();
    sub_10056CBE8();
    v242(v148, v229);
    v91 = v144;
    if (v239(v146, 1, v233) == 1)
    {
      v151 = v147[121];
      (*v235)(v147[126], v147[123]);

      sub_10001036C(v151, &qword_1006EFC58);
      v1 = v147;
      goto LABEL_63;
    }

    v152 = v147[121];
    v153 = sub_10056CB18();
    v155 = v154;
    (*(v238 + 8))(v152, v233);
    v156 = Lyrics.scriptMap.unsafeMutableAddressor();
    v157 = *v156;
    v1 = v147;
    if (*(*v156 + 16))
    {

      v158 = v230;
      v159 = sub_100429D94(v228, v230);
      if (v160)
      {
        v161 = (*(v157 + 56) + 16 * v159);
        v162 = v161[1];
        v228 = *v161;

        v158 = v162;
      }
    }

    else
    {
      v158 = v230;
    }

    v249 = v153;
    v250 = v155;
    v260._countAndFlagsBits = 45;
    v260._object = 0xE100000000000000;
    sub_100572A98(v260);
    v261._countAndFlagsBits = v228;
    v261._object = v158;
    sub_100572A98(v261);
    v163 = v155;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v227 = sub_100474884(0, *(v227 + 2) + 1, 1, v227);
    }

    v165 = *(v227 + 2);
    v164 = *(v227 + 3);
    if (v165 >= v164 >> 1)
    {
      v227 = sub_100474884((v164 > 1), v165 + 1, 1, v227);
    }

    *(v227 + 2) = v165 + 1;
    v166 = &v227[16 * v165];
    *(v166 + 4) = v153;
    *(v166 + 5) = v163;
    v167 = Lyrics.defaultScript.unsafeMutableAddressor();
    v168 = v1[126];
    v169 = v1[123];
    if (v228 != *v167 || v158 != *(v167 + 1))
    {
      v170 = sub_100574498();

      (*v235)(v168, v169);
      v87 = v237;
      if (v170)
      {
        goto LABEL_79;
      }

      goto LABEL_64;
    }

    (*v235)(v168, v169);
    v87 = v237;
LABEL_79:
    v226 = 1;
    v89 = v247;
    v93 = v225;
  }

  while (v234 + v247);
LABEL_84:
  v172 = v1[129];
  v173 = v1[127];
  v174 = v1[124];
  v175 = v1[123];

  sub_100393048(v172, v173);
  if ((*(v174 + 48))(v173, 1, v175) == 1)
  {
    sub_10001036C(v1[127], &qword_1006EFC60);
  }

  else
  {
    (*(v1[124] + 32))(v1[125], v1[127], v1[123]);
    if ((v226 & 1) != 0 || (v176 = v1[116], v177 = v1[114], v178 = v1[113], v179 = *v4, , sub_10056CC28(), v180 = (*(*v179 + 256))(v176), , v181 = *(v177 + 8), v181(v176, v178), (v180 & 1) == 0))
    {
      (*(v1[124] + 8))(v1[125], v1[123]);
    }

    else
    {
      v182 = v1[120];
      v183 = v1[115];
      v184 = v1[113];
      sub_10056CC28();
      sub_10056CBE8();
      v181(v183, v184);
      v185 = sub_10056CB38();
      v186 = *(v185 - 8);
      if ((*(v186 + 48))(v182, 1, v185) == 1)
      {
        v187 = v1[120];
        (*(v1[124] + 8))(v1[125], v1[123]);
        sub_10001036C(v187, &qword_1006EFC58);
      }

      else
      {
        v213 = v1[120];
        v214 = sub_10056CB18();
        v216 = v215;
        (*(v186 + 8))(v213, v185);
        v249 = v214;
        v250 = v216;
        v262._countAndFlagsBits = 45;
        v262._object = 0xE100000000000000;
        sub_100572A98(v262);
        v217 = Lyrics.defaultScript.unsafeMutableAddressor();
        v219 = *v217;
        v218 = v217[1];

        v263._countAndFlagsBits = v219;
        v263._object = v218;
        sub_100572A98(v263);

        v221 = v249;
        v220 = v216;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v227 = sub_100474884(0, *(v227 + 2) + 1, 1, v227);
        }

        v223 = *(v227 + 2);
        v222 = *(v227 + 3);
        if (v223 >= v222 >> 1)
        {
          v227 = sub_100474884((v222 > 1), v223 + 1, 1, v227);
        }

        v1 = v248;
        (*(v248[124] + 8))(v248[125], v248[123]);
        *(v227 + 2) = v223 + 1;
        v224 = &v227[16 * v223];
        *(v224 + 4) = v221;
        *(v224 + 5) = v220;
      }
    }
  }

  v1[72] = v240;
  sub_100009DCC(&qword_1006EFC78);
  sub_10039310C();
  sub_100572798();

  sub_10056C378();

  v188 = sub_100474990(0, 1, 1, _swiftEmptyArrayStorage);
  v190 = *(v188 + 2);
  v189 = *(v188 + 3);
  if (v190 >= v189 >> 1)
  {
    v188 = sub_100474990(v189 > 1, v190 + 1, 1, v188);
  }

  v191 = v1[110];
  v192 = v1[107];
  v193 = v1[106];
  *(v188 + 2) = v190 + 1;
  v195 = *(v192 + 32);
  v192 += 32;
  v194 = v195;
  v196 = (*(v192 + 48) + 32) & ~*(v192 + 48);
  v197 = *(v192 + 40);
  v195(&v188[v196 + v197 * v190], v191, v193);
  *(v1 + 1193) = 6;
  v198 = sub_1003930B8();
  v1[136] = v198;
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v198))
  {
    v1[76] = v227;
    sub_100572798();

    sub_10056C378();

    v200 = *(v188 + 2);
    v199 = *(v188 + 3);
    if (v200 >= v199 >> 1)
    {
      v188 = sub_100474990(v199 > 1, v200 + 1, 1, v188);
    }

    v201 = v1[109];
    v202 = v1[106];
    *(v188 + 2) = v200 + 1;
    v194(&v188[v196 + v200 * v197], v201, v202);
    sub_10056C378();
    v204 = *(v188 + 2);
    v203 = *(v188 + 3);
    if (v204 >= v203 >> 1)
    {
      v188 = sub_100474990(v203 > 1, v204 + 1, 1, v188);
    }

    v205 = v1[108];
    v206 = v1[106];
    *(v188 + 2) = v204 + 1;
    v194(&v188[v196 + v204 * v197], v205, v206);
  }

  else
  {
  }

  v207 = v1[105];
  v208 = v1[104];
  v209 = v1[103];
  v210 = v1[102];
  sub_10056C888();

  sub_10056C238();
  (*(v209 + 16))(v208, v207, v210);
  sub_100570D48();
  v211 = swift_task_alloc();
  v1[137] = v211;
  *v211 = v1;
  v211[1] = sub_10038E79C;
  v212 = v1[98];

  return MusicDataRequest.response()(v212);
}

uint64_t sub_10038E79C()
{
  *(*v1 + 1104) = v0;

  if (v0)
  {
    v2 = sub_10038FC8C;
  }

  else
  {
    v2 = sub_10038E8DC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10038E8DC()
{
  v121 = v0;
  v1 = *(v0 + 760);
  v2 = *(v0 + 696);
  v3 = *(v0 + 680);
  v4 = *(v0 + 672);
  v5 = *(v0 + 664);
  v6 = *(v0 + 632);
  v7 = *(v0 + 624);
  v119 = 0x3C726564616F4CLL;
  v120 = 0xE700000000000000;
  *(v0 + 560) = v6;
  v123._countAndFlagsBits = sub_100572978();
  sub_100572A98(v123);

  v124._countAndFlagsBits = 62;
  v124._object = 0xE100000000000000;
  sub_100572A98(v124);
  v8 = v120;
  v107 = v119;
  v9 = Logger.lyrics.unsafeMutableAddressor();
  *(v0 + 1112) = v9;
  v10 = *(v2 + 16);
  *(v0 + 1120) = v10;
  *(v0 + 1128) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v112 = v9;
  v110 = v10;
  v10(v1);
  (*(v4 + 16))(v3, v7, v5);

  v11 = sub_10056DF68();
  v12 = sub_100573448();

  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 760);
  v15 = *(v0 + 696);
  v115 = *(v0 + 688);
  v16 = *(v0 + 680);
  v17 = *(v0 + 672);
  v18 = *(v0 + 664);
  if (v13)
  {
    v105 = *(v0 + 760);
    v19 = swift_slowAlloc();
    v119 = swift_slowAlloc();
    *v19 = 136446466;
    v20 = sub_10037A2AC(v107, v8, &v119);

    *(v19 + 4) = v20;
    *(v19 + 12) = 2082;
    v21 = sub_100388CD8();
    v23 = v22;
    (*(v17 + 8))(v16, v18);
    v24 = sub_10037A2AC(v21, v23, &v119);

    *(v19 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v11, v12, "%{public}s loadLyrics(for:completion:) completed for %{public}s", v19, 0x16u);
    swift_arrayDestroy();

    v25 = *(v15 + 8);
    v25(v105, v115);
  }

  else
  {

    (*(v17 + 8))(v16, v18);
    v25 = *(v15 + 8);
    v25(v14, v115);
  }

  *(v0 + 1136) = v25;
  v26 = *(v0 + 1088);
  *(v0 + 1192) = 6;
  v27 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v26);
  if (v27)
  {
    v28 = 0xD000000000000011;
  }

  else
  {
    v28 = 1819112564;
  }

  if (v27)
  {
    v29 = 0x80000001005B8240;
  }

  else
  {
    v29 = 0xE400000000000000;
  }

  v30 = objc_opt_self();
  v31 = sub_100570DB8();
  v33 = v32;
  isa = sub_10056C908().super.isa;
  sub_10008246C(v31, v33);
  *(v0 + 536) = 0;
  v35 = [v30 JSONObjectWithData:isa options:0 error:v0 + 536];

  v36 = *(v0 + 536);
  if (!v35)
  {
    v55 = *(v0 + 784);
    v56 = *(v0 + 776);
    v57 = *(v0 + 768);
    v58 = v36;

    sub_10056C728();

    swift_willThrow();
    (*(v56 + 8))(v55, v57);
LABEL_37:
    v73 = *(v0 + 712);
    v74 = *(v0 + 696);
    v75 = *(v0 + 688);
    v76 = Logger.lyrics.unsafeMutableAddressor();
    (*(v74 + 16))(v73, v76, v75);
    swift_errorRetain();
    v77 = sub_10056DF68();
    v78 = sub_100573428();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      *v79 = 138543362;
      swift_errorRetain();
      v81 = _swift_stdlib_bridgeErrorToNSError();
      *(v79 + 4) = v81;
      *v80 = v81;
      _os_log_impl(&_mh_execute_header, v77, v78, "Data request error: %{public}@", v79, 0xCu);
      sub_10001036C(v80, &qword_1006EF680);
    }

    v106 = *(v0 + 1080);
    v82 = *(v0 + 1056);
    v114 = *(v0 + 1048);
    v118 = *(v0 + 1072);
    v111 = *(v0 + 840);
    v113 = *(v0 + 1032);
    v83 = *(v0 + 824);
    v109 = *(v0 + 816);
    v84 = *(v0 + 808);
    v85 = *(v0 + 800);
    v86 = *(v0 + 792);
    v87 = v77;
    v88 = *(v0 + 712);
    v89 = *(v0 + 696);
    v90 = *(v0 + 688);

    (*(v89 + 8))(v88, v90);
    swift_willThrow();

    (*(v85 + 8))(v84, v86);
    (*(v83 + 8))(v111, v109);
    sub_10001036C(v113, &qword_1006EFC60);
    (*(v82 + 8))(v118, v114);

    v91 = *(v0 + 8);

    return v91();
  }

  v37 = v36;
  sub_100573D58();
  swift_unknownObjectRelease();
  sub_100009DCC(&qword_1006EFC88);
  if (swift_dynamicCast())
  {
    v38 = *(v0 + 528);
  }

  else
  {
    v38 = 0;
  }

  if (!v38 || !*(v38 + 16))
  {
    goto LABEL_32;
  }

  v39 = sub_100429D94(1635017060, 0xE400000000000000);
  if ((v40 & 1) == 0)
  {
    goto LABEL_31;
  }

  v41 = v0 + 616;
  sub_100081F38(*(v38 + 56) + 32 * v39, v0 + 384);

  sub_100009DCC(&qword_1006EFC98);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_32;
  }

  if (!*(*v41 + 16))
  {
LABEL_31:

LABEL_32:

    goto LABEL_33;
  }

  sub_100081F38(*v41 + 32, v0 + 224);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_32;
  }

  v42 = *(v0 + 552);
  if (!*(v42 + 16))
  {
    goto LABEL_44;
  }

  v43 = sub_100429D94(0x7475626972747461, 0xEA00000000007365);
  if ((v44 & 1) == 0)
  {
    goto LABEL_44;
  }

  v45 = (v0 + 568);
  sub_100081F38(*(v42 + 56) + 32 * v43, v0 + 352);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_32;
  }

  v46 = *v45;
  if (!*(*v45 + 16))
  {
LABEL_44:

    goto LABEL_32;
  }

  v47 = sub_100429D94(v28, v29);
  v49 = v48;

  if ((v49 & 1) == 0)
  {
    goto LABEL_32;
  }

  sub_100081F38(*(v46 + 56) + 32 * v47, v0 + 320);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_32;
  }

  v116 = v25;
  v50 = *(v0 + 656);
  v51 = *(v0 + 648);
  v108 = *(v0 + 640);
  sub_100572918();
  v52 = sub_1005728E8();
  v54 = v53;

  *(v0 + 1144) = v52;
  *(v0 + 1152) = v54;
  (*(v51 + 8))(v50, v108);
  if (v54 >> 60 == 15)
  {
LABEL_27:

LABEL_28:
    v25 = v116;
LABEL_33:
    v110(*(v0 + 752), v112, *(v0 + 688));

    v59 = sub_10056DF68();
    v60 = sub_100573428();

    v61 = os_log_type_enabled(v59, v60);
    v62 = *(v0 + 752);
    v63 = *(v0 + 688);
    if (v61)
    {
      v64 = swift_slowAlloc();
      v117 = v25;
      v65 = swift_slowAlloc();
      v119 = v65;
      *v64 = 136446210;
      *(v0 + 544) = v38;
      sub_100009DCC(&qword_1006EFC90);
      v66 = sub_100572978();
      v68 = sub_10037A2AC(v66, v67, &v119);

      *(v64 + 4) = v68;
      _os_log_impl(&_mh_execute_header, v59, v60, "Invalid response: %{public}s", v64, 0xCu);
      sub_100010474(v65);

      v117(v62, v63);
    }

    else
    {

      v25(v62, v63);
    }

    v69 = *(v0 + 784);
    v70 = *(v0 + 776);
    v71 = *(v0 + 768);
    sub_10039198C();
    swift_allocError();
    *v72 = 1;
    swift_willThrow();
    (*(v70 + 8))(v69, v71);
    goto LABEL_37;
  }

  v25 = v116;
  if (!*(v46 + 16) || (v93 = sub_100429D94(0x6172615079616C70, 0xEA0000000000736DLL), (v94 & 1) == 0))
  {
    sub_1000A79FC(v52, v54);
    goto LABEL_32;
  }

  v95 = v54;
  v96 = (v0 + 584);
  sub_100081F38(*(v46 + 56) + 32 * v93, v0 + 288);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_56;
  }

  v97 = *v96;
  if (!*(*v96 + 16) || (v98 = sub_100429D94(25705, 0xE200000000000000), (v99 & 1) == 0))
  {
    sub_1000A79FC(v52, v95);
    goto LABEL_27;
  }

  sub_100081F38(*(v97 + 56) + 32 * v98, v0 + 256);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_56:
    sub_1000A79FC(v52, v95);
    goto LABEL_28;
  }

  v100 = *(v0 + 488);
  *(v0 + 1160) = *(v0 + 480);
  *(v0 + 1168) = v100;
  v101 = objc_allocWithZone(MSVLyricsTTMLParser);
  sub_1000F54C8(v52, v95);
  v102 = sub_10056C908().super.isa;
  v103 = [v101 initWithTTMLData:v102];
  *(v0 + 1176) = v103;

  sub_1000A79FC(v52, v95);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 592;
  *(v0 + 24) = sub_10038F788;
  v104 = swift_continuation_init();
  *(v0 + 136) = sub_100009DCC(&qword_1006EFBE0);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_10038B854;
  *(v0 + 104) = &unk_10069FA40;
  *(v0 + 112) = v104;
  [v103 parseWithCompletion:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_10038F788()
{
  v1 = *(*v0 + 48);
  *(*v0 + 1184) = v1;
  if (v1)
  {

    v2 = sub_1003900D8;
  }

  else
  {
    v2 = sub_10038F8CC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10038F8CC()
{
  v14 = v0[146];
  v1 = v0[145];
  v18 = v0[147];
  v19 = v0[144];
  v17 = v0[143];
  v23 = v0[134];
  v2 = v0[132];
  v22 = v0[131];
  v20 = v0[135];
  v21 = v0[129];
  v16 = v0[105];
  v3 = v0[103];
  v15 = v0[102];
  v13 = v0[101];
  v4 = v0[100];
  v5 = v0[99];
  v6 = v0[98];
  v7 = v0[97];
  v8 = v0[96];
  v9 = v0[74];
  type metadata accessor for Lyrics(0);
  swift_allocObject();
  v10 = Lyrics.init(identifier:songInfo:)(v1, v14, v9);

  sub_1000A79FC(v17, v19);
  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v13, v5);
  (*(v3 + 8))(v16, v15);
  sub_10001036C(v21, &qword_1006EFC60);
  (*(v2 + 8))(v23, v22);

  v11 = v0[1];

  return v11(v10);
}

uint64_t sub_10038FC8C()
{
  v1 = v0[89];
  v2 = v0[87];
  v3 = v0[86];
  v4 = Logger.lyrics.unsafeMutableAddressor();
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v5 = sub_10056DF68();
  v6 = sub_100573428();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Data request error: %{public}@", v7, 0xCu);
    sub_10001036C(v8, &qword_1006EF680);
  }

  v10 = v0[135];
  v11 = v0[132];
  v25 = v0[131];
  v26 = v0[134];
  v23 = v0[105];
  v24 = v0[129];
  v12 = v5;
  v13 = v0[103];
  v22 = v0[102];
  v14 = v0[101];
  v15 = v0[100];
  v16 = v0[99];
  v17 = v0[89];
  v18 = v0[87];
  v19 = v0[86];

  (*(v18 + 8))(v17, v19);
  swift_willThrow();

  (*(v15 + 8))(v14, v16);
  (*(v13 + 8))(v23, v22);
  sub_10001036C(v24, &qword_1006EFC60);
  (*(v11 + 8))(v26, v25);

  v20 = v0[1];

  return v20();
}

uint64_t sub_1003900D8()
{
  v1 = v0[140];
  v2 = v0[139];
  v3 = v0[88];
  v4 = v0[86];
  swift_willThrow();
  v1(v3, v2, v4);
  swift_errorRetain();
  v5 = sub_10056DF68();
  v6 = sub_100573428();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Parsing error: %{public}@", v7, 0xCu);
    sub_10001036C(v8, &qword_1006EF680);
  }

  v10 = v0[147];
  v11 = v0[144];
  v12 = v0[143];
  v13 = v0[142];
  v14 = v0[97];
  v42 = v0[96];
  v44 = v0[98];
  v15 = v0[88];
  v16 = v0[86];

  v13(v15, v16);
  swift_willThrow();

  sub_1000A79FC(v12, v11);
  (*(v14 + 8))(v44, v42);
  v17 = v0[89];
  v18 = v0[87];
  v19 = v0[86];
  v20 = Logger.lyrics.unsafeMutableAddressor();
  (*(v18 + 16))(v17, v20, v19);
  swift_errorRetain();
  v21 = sub_10056DF68();
  v22 = sub_100573428();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138543362;
    swift_errorRetain();
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v23 + 4) = v25;
    *v24 = v25;
    _os_log_impl(&_mh_execute_header, v21, v22, "Data request error: %{public}@", v23, 0xCu);
    sub_10001036C(v24, &qword_1006EF680);
  }

  v26 = v0[135];
  v27 = v0[132];
  v41 = v0[131];
  v43 = v0[134];
  v39 = v0[105];
  v40 = v0[129];
  v28 = v21;
  v29 = v0[103];
  v38 = v0[102];
  v30 = v0[101];
  v31 = v0[100];
  v32 = v0[99];
  v33 = v0[89];
  v34 = v0[87];
  v35 = v0[86];

  (*(v34 + 8))(v33, v35);
  swift_willThrow();

  (*(v31 + 8))(v30, v32);
  (*(v29 + 8))(v39, v38);
  sub_10001036C(v40, &qword_1006EFC60);
  (*(v27 + 8))(v43, v41);

  v36 = v0[1];

  return v36();
}

id LyricsLoader.init()()
{
  v1 = OBJC_IVAR___MusicLyricsLoader_operationQueue;
  v2 = [objc_allocWithZone(NSOperationQueue) init];
  [v2 setMaxConcurrentOperationCount:1];
  *&v0[v1] = v2;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for LyricsLoader();
  return objc_msgSendSuper2(&v4, "init");
}

id LyricsLoader.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LyricsLoader();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t _s11MusicCoreUI12LyricsLoaderC08supportsD03forSb0A3Kit4SongV_tFZ_0(uint64_t a1)
{
  v2 = sub_100571A68();
  v3 = *(v2 - 8);
  v196 = v2;
  v197 = v3;
  __chkstk_darwin(v2);
  v5 = &v185 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v194 = &v185 - v7;
  __chkstk_darwin(v8);
  v193 = (&v185 - v9);
  __chkstk_darwin(v10);
  v192 = (&v185 - v11);
  __chkstk_darwin(v12);
  v187 = &v185 - v13;
  __chkstk_darwin(v14);
  v186 = &v185 - v15;
  __chkstk_darwin(v16);
  v18 = &v185 - v17;
  __chkstk_darwin(v19);
  v21 = &v185 - v20;
  __chkstk_darwin(v22);
  v189 = (&v185 - v23);
  __chkstk_darwin(v24);
  v188 = &v185 - v25;
  __chkstk_darwin(v26);
  v191 = &v185 - v27;
  __chkstk_darwin(v28);
  v30 = &v185 - v29;
  v31 = sub_10056DF88();
  v32 = *(v31 - 8);
  v199 = v31;
  v200 = v32;
  __chkstk_darwin(v31);
  v34 = &v185 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v195 = &v185 - v36;
  __chkstk_darwin(v37);
  v190 = &v185 - v38;
  __chkstk_darwin(v39);
  v41 = &v185 - v40;
  __chkstk_darwin(v42);
  v44 = &v185 - v43;
  __chkstk_darwin(v45);
  v47 = &v185 - v46;
  if ((sub_100571A58() & 1) == 0 && (sub_100571958() & 1) == 0)
  {
    v75 = Logger.lyrics.unsafeMutableAddressor();
    v76 = v199;
    v77 = v200;
    (*(v200 + 16))(v34, v75, v199);
    v78 = v196;
    v79 = v197;
    (*(v197 + 16))(v5, a1, v196);
    v80 = sub_10056DF68();
    v81 = sub_100573448();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      *&v204[0] = v83;
      *v82 = 136446210;
      v84 = sub_100388CD8();
      v85 = v78;
      v87 = v86;
      (*(v79 + 8))(v5, v85);
      v88 = sub_10037A2AC(v84, v87, v204);

      *(v82 + 4) = v88;
      _os_log_impl(&_mh_execute_header, v80, v81, "Loader supportsLyrics=false [hasLyrics and hasCustomLyrics were false] %{public}s", v82, 0xCu);
      sub_100010474(v83);

      (*(v200 + 8))(v34, v199);
    }

    else
    {

      (*(v79 + 8))(v5, v78);
      (*(v77 + 8))(v34, v76);
    }

    v159 = 0;
    return v159 & 1;
  }

  v198 = a1;
  BagProvider.shared.unsafeMutableAddressor();

  v48 = BagProvider.bag.getter();

  if (v48)
  {
    if (([objc_opt_self() supportsLyricsForURLBag:v48] & 1) == 0)
    {
      v89 = [v48 dictionaryForBagKey:ICURLBagKeyMusicSubscription];
      v90 = v198;
      v91 = v196;
      if (v89)
      {

        v92 = Logger.lyrics.unsafeMutableAddressor();
        (*(v200 + 16))(v47, v92, v199);
        v93 = v197;
        v94 = *(v197 + 16);
        v94(v30, v90, v91);
        v95 = v191;
        v94(v191, v90, v91);
        v96 = sub_10056DF68();
        v97 = sub_100573448();
        if (os_log_type_enabled(v96, v97))
        {
          v98 = swift_slowAlloc();
          v195 = v48;
          v99 = v98;
          v194 = swift_slowAlloc();
          *&v204[0] = v194;
          *v99 = 136446466;
          v193 = v96;
          v100 = sub_100571958();
          if (v100)
          {
            v101 = 1702195828;
          }

          else
          {
            v101 = 0x65736C6166;
          }

          LODWORD(v192) = v97;
          v102 = v91;
          if (v100)
          {
            v103 = 0xE400000000000000;
          }

          else
          {
            v103 = 0xE500000000000000;
          }

          v104 = *(v93 + 8);
          v104(v30, v102);
          v105 = sub_10037A2AC(v101, v103, v204);

          *(v99 + 4) = v105;
          *(v99 + 12) = 2082;
          v106 = sub_100388CD8();
          v108 = v107;
          v104(v95, v102);
          v109 = sub_10037A2AC(v106, v108, v204);

          *(v99 + 14) = v109;
          v110 = v193;
          _os_log_impl(&_mh_execute_header, v193, v192, "Loader supportsLyrics=%{public}s [no lyrics keys in bag] %{public}s", v99, 0x16u);
          swift_arrayDestroy();

          v48 = v195;
        }

        else
        {

          v180 = *(v93 + 8);
          v180(v95, v91);
          v180(v30, v91);
        }

        (*(v200 + 8))(v47, v199);
      }

      else
      {
        v160 = Logger.lyrics.unsafeMutableAddressor();
        (*(v200 + 16))(v44, v160, v199);
        v161 = v197;
        v162 = *(v197 + 16);
        v163 = v188;
        v162(v188, v90, v91);
        v164 = v189;
        v162(v189, v90, v91);
        v165 = sub_10056DF68();
        v166 = sub_100573448();
        if (os_log_type_enabled(v165, v166))
        {
          v167 = swift_slowAlloc();
          v195 = v48;
          v168 = v167;
          v193 = swift_slowAlloc();
          *&v204[0] = v193;
          *v168 = 136446466;
          v192 = v165;
          v169 = sub_100571958();
          if (v169)
          {
            v170 = 1702195828;
          }

          else
          {
            v170 = 0x65736C6166;
          }

          v194 = v44;
          v171 = v164;
          if (v169)
          {
            v172 = 0xE400000000000000;
          }

          else
          {
            v172 = 0xE500000000000000;
          }

          LODWORD(v191) = v166;
          v173 = *(v161 + 8);
          v173(v163, v91);
          v174 = sub_10037A2AC(v170, v172, v204);

          *(v168 + 4) = v174;
          *(v168 + 12) = 2082;
          v175 = sub_100388CD8();
          v177 = v176;
          v173(v171, v91);
          v178 = sub_10037A2AC(v175, v177, v204);

          *(v168 + 14) = v178;
          v179 = v192;
          _os_log_impl(&_mh_execute_header, v192, v191, "Loader supportsLyrics=%{public}s [no musicSubscription key in bag] %{public}s", v168, 0x16u);
          swift_arrayDestroy();

          v48 = v195;

          (*(v200 + 8))(v194, v199);
        }

        else
        {

          v181 = *(v161 + 8);
          v181(v164, v91);
          v181(v163, v91);
          (*(v200 + 8))(v44, v199);
        }
      }

      v182 = sub_100571958();

      v159 = v182;
      return v159 & 1;
    }

    v49 = v199;
    v50 = v200;
    v52 = v196;
    v51 = v197;
    v53 = v192;
  }

  else
  {
    v54 = Logger.lyrics.unsafeMutableAddressor();
    v55 = v199;
    (*(v200 + 16))(v41, v54, v199);
    v51 = v197;
    v56 = v198;
    v57 = *(v197 + 16);
    v58 = v196;
    v57(v21, v198, v196);
    v57(v18, v56, v58);
    v59 = sub_10056DF68();
    v60 = sub_100573448();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v191 = swift_slowAlloc();
      *&v204[0] = v191;
      *v61 = 136446466;
      v189 = v59;
      v62 = sub_100571958();
      if (v62)
      {
        v63 = 1702195828;
      }

      else
      {
        v63 = 0x65736C6166;
      }

      if (v62)
      {
        v64 = 0xE400000000000000;
      }

      else
      {
        v64 = 0xE500000000000000;
      }

      v65 = v196;
      LODWORD(v188) = v60;
      v66 = *(v197 + 8);
      v66(v21, v196);
      v67 = sub_10037A2AC(v63, v64, v204);
      v51 = v197;

      *(v61 + 4) = v67;
      *(v61 + 12) = 2082;
      v68 = sub_100388CD8();
      v70 = v69;
      v66(v18, v65);
      v71 = v199;
      v50 = v200;
      v72 = sub_10037A2AC(v68, v70, v204);

      *(v61 + 14) = v72;
      v73 = v189;
      _os_log_impl(&_mh_execute_header, v189, v188, "Loader supportsLyrics=%{public}s [bag is nil] %{public}s", v61, 0x16u);
      swift_arrayDestroy();

      v74 = v41;
      v49 = v71;
      (*(v50 + 8))(v74, v71);
      v52 = v65;
      v53 = v192;
    }

    else
    {

      v111 = *(v51 + 8);
      v112 = v18;
      v52 = v196;
      v111(v112, v196);
      v111(v21, v52);
      v113 = v200;
      (*(v200 + 8))(v41, v55);
      v53 = v192;
      v49 = v55;
      v50 = v113;
    }
  }

  v114 = sub_100571A58();
  v115 = v195;
  v116 = v193;
  if (v114 & 1) != 0 && (static ApplicationCapabilities.shared.getter(v202), v117 = v203, , sub_100108D2C(v202), v118 = sub_1001B4D1C(2, v117), , (v118))
  {
    static ApplicationCapabilities.shared.getter(v204);
    sub_100108D2C(v204);
    if (BYTE10(v204[0]))
    {
      v159 = 1;
      return v159 & 1;
    }

    v119 = Logger.lyrics.unsafeMutableAddressor();
    v120 = v190;
    (*(v50 + 16))(v190, v119, v49);
    v121 = *(v51 + 16);
    v122 = v186;
    v123 = v198;
    v121(v186, v198, v52);
    v124 = v51;
    v125 = v49;
    v126 = v187;
    v121(v187, v123, v52);
    v127 = sub_10056DF68();
    v128 = sub_100573448();
    if (os_log_type_enabled(v127, v128))
    {
      v129 = swift_slowAlloc();
      v197 = swift_slowAlloc();
      v201 = v197;
      *v129 = 67240450;
      v130 = sub_100571958() & 1;
      v131 = *(v124 + 8);
      v131(v122, v52);
      *(v129 + 4) = v130;
      *(v129 + 8) = 2082;
      v132 = sub_100388CD8();
      v133 = v126;
      v134 = v200;
      v136 = v135;
      v131(v133, v52);
      v137 = sub_10037A2AC(v132, v136, &v201);

      *(v129 + 10) = v137;
      _os_log_impl(&_mh_execute_header, v127, v128, "Loader supportsLyrics=%{BOOL,public}d [not supported by subscription] subscriptionCapabilities.contains(.catalogLyricsViewing)=false %{public}s", v129, 0x12u);
      sub_100010474(v197);

      (*(v134 + 8))(v190, v199);
    }

    else
    {
      v184 = *(v124 + 8);
      v184(v122, v52);

      v184(v126, v52);
      (*(v200 + 8))(v120, v125);
    }
  }

  else
  {
    v138 = Logger.lyrics.unsafeMutableAddressor();
    (*(v50 + 16))(v115, v138, v49);
    v139 = *(v51 + 16);
    v140 = v198;
    v139(v53, v198, v52);
    v141 = v116;
    v139(v116, v140, v52);
    v142 = v194;
    v139(v194, v140, v52);
    v143 = sub_10056DF68();
    v144 = sub_100573448();
    if (os_log_type_enabled(v143, v144))
    {
      v145 = swift_slowAlloc();
      v197 = swift_slowAlloc();
      v201 = v197;
      *v145 = 67240962;
      LODWORD(v192) = v144;
      v146 = sub_100571958() & 1;
      v147 = *(v51 + 8);
      v147(v53, v52);
      *(v145 + 4) = v146;
      v148 = v141;
      v149 = v200;
      *(v145 + 8) = 1026;
      v150 = sub_100571A58() & 1;
      v147(v148, v52);
      *(v145 + 10) = v150;
      *(v145 + 14) = 1026;
      static ApplicationCapabilities.shared.getter(v204);
      v151 = v205;

      sub_100108D2C(v204);
      v152 = sub_1001B4D1C(2, v151);

      *(v145 + 16) = v152 & 1;
      *(v145 + 20) = 2082;
      v153 = v194;
      v154 = sub_100388CD8();
      v156 = v155;
      v147(v153, v52);
      v157 = sub_10037A2AC(v154, v156, &v201);

      *(v145 + 22) = v157;
      _os_log_impl(&_mh_execute_header, v143, v192, "Loader supportsLyrics=%{BOOL,public}d [can't support store lyrics] song.hasLyrics=%{BOOL,public}d allowsSubscriptionContent=%{BOOL,public}d %{public}s", v145, 0x1Eu);
      sub_100010474(v197);

      (*(v149 + 8))(v195, v199);
    }

    else
    {
      v158 = *(v51 + 8);
      v158(v141, v52);
      v158(v53, v52);

      v158(v142, v52);
      (*(v200 + 8))(v115, v199);
    }
  }

  v159 = sub_100571958();
  return v159 & 1;
}

unint64_t sub_10039198C()
{
  result = qword_1006EFBC0;
  if (!qword_1006EFBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EFBC0);
  }

  return result;
}

unint64_t sub_1003919E0()
{
  result = qword_1006EFBD0;
  if (!qword_1006EFBD0)
  {
    sub_100571A68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EFBD0);
  }

  return result;
}

uint64_t _s11MusicCoreUI12LyricsLoaderC08supportsD03forSbSo11MPModelSongC_tFZ_0(void *a1)
{
  v194 = sub_10056DF88();
  v2 = *(v194 - 8);
  __chkstk_darwin(v194);
  v4 = &v185 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v185 - v6;
  __chkstk_darwin(v8);
  v10 = &v185 - v9;
  __chkstk_darwin(v11);
  v13 = &v185 - v12;
  __chkstk_darwin(v14);
  v16 = &v185 - v15;
  __chkstk_darwin(v17);
  v19 = &v185 - v18;
  *&v21 = __chkstk_darwin(v20).n128_u64[0];
  v23 = &v185 - v22;
  v193 = [a1 lyrics];
  if (v193)
  {
    if ([a1 hasVideo])
    {

      goto LABEL_4;
    }

    v191 = v10;
    v192 = v2;
    v36 = v193;
    v37 = [v193 hasLibraryLyrics];
    if (([v36 hasStoreLyrics] & 1) == 0 && !v37)
    {
      v38 = Logger.lyrics.unsafeMutableAddressor();
      v39 = v192;
      v40 = v194;
      (*(v192 + 16))(v7, v38, v194);
      v41 = a1;
      v42 = v193;
      v43 = sub_10056DF68();
      v44 = sub_100573448();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v193 = swift_slowAlloc();
        *&v198[0] = v193;
        *v45 = 67240962;
        *(v45 + 4) = [v42 hasLibraryLyrics];
        *(v45 + 8) = 1026;
        *(v45 + 10) = [v42 hasStoreLyrics];

        *(v45 + 14) = 2082;
        v46 = [v41 title];
        if (v46)
        {
          v47 = v46;
          v48 = sub_1005728D8();
          v50 = v49;
        }

        else
        {
          v48 = 0;
          v50 = 0;
        }

        *&v200[0] = v48;
        *(&v200[0] + 1) = v50;
        sub_100009DCC(&qword_1006F5C90);
        v92 = sub_100572978();
        v94 = sub_10037A2AC(v92, v93, v198);

        *(v45 + 16) = v94;
        *(v45 + 24) = 2082;
        v95 = [v41 identifiers];
        v96 = [v95 description];
        v97 = sub_1005728D8();
        v99 = v98;

        v100 = sub_10037A2AC(v97, v99, v198);

        *(v45 + 26) = v100;
        _os_log_impl(&_mh_execute_header, v43, v44, "Loader supportsLyrics=false [no lyrics found] lyrics.hasLibraryLyrics=%{BOOL,public}d lyrics.hasStoreLyrics=%{BOOL,public}d song.title=%{public}s song.identifiers=%{public}s", v45, 0x22u);
        swift_arrayDestroy();

        (*(v192 + 8))(v7, v194);
      }

      else
      {

        (*(v39 + 8))(v7, v40);
      }

      return 0;
    }

    v190 = v37;
    BagProvider.shared.unsafeMutableAddressor();

    v51 = BagProvider.bag.getter();

    if (v51)
    {
      v52 = [objc_opt_self() supportsLyricsForURLBag:v51];
      v53 = v192;
      if ((v52 & 1) == 0)
      {
        v191 = v51;
        v79 = [v51 dictionaryForBagKey:ICURLBagKeyMusicSubscription];
        if (v79)
        {

          v80 = Logger.lyrics.unsafeMutableAddressor();
          v81 = v194;
          (*(v53 + 16))(v23, v80, v194);
          v82 = v53;
          v83 = a1;
          v84 = sub_10056DF68();
          v85 = sub_100573448();

          if (os_log_type_enabled(v84, v85))
          {
            v86 = swift_slowAlloc();
            v189 = swift_slowAlloc();
            *&v198[0] = v189;
            *v86 = 67240706;
            *(v86 + 4) = v190;
            *(v86 + 8) = 2082;
            v87 = [v83 title];
            if (v87)
            {
              v88 = v87;
              v89 = sub_1005728D8();
              v91 = v90;
            }

            else
            {
              v89 = 0;
              v91 = 0;
            }

            *&v200[0] = v89;
            *(&v200[0] + 1) = v91;
            sub_100009DCC(&qword_1006F5C90);
            v158 = sub_100572978();
            v160 = sub_10037A2AC(v158, v159, v198);

            *(v86 + 10) = v160;
            *(v86 + 18) = 2082;
            v161 = [v83 identifiers];
            v162 = [v161 description];
            v163 = sub_1005728D8();
            v165 = v164;

            v166 = sub_10037A2AC(v163, v165, v198);

            *(v86 + 20) = v166;
            _os_log_impl(&_mh_execute_header, v84, v85, "Loader supportsLyrics=%{BOOL,public}d [no lyrics keys in bag] song.title=%{public}s song.identifiers=%{public}s", v86, 0x1Cu);
            swift_arrayDestroy();

            (*(v192 + 8))(v23, v194);
            return v190;
          }

          (*(v82 + 8))(v23, v81);
        }

        else
        {
          v101 = Logger.lyrics.unsafeMutableAddressor();
          v102 = v194;
          (*(v53 + 16))(v19, v101, v194);
          v103 = v53;
          v104 = a1;
          v105 = sub_10056DF68();
          v106 = sub_100573448();

          if (os_log_type_enabled(v105, v106))
          {
            v107 = swift_slowAlloc();
            v189 = swift_slowAlloc();
            *&v198[0] = v189;
            *v107 = 67240706;
            *(v107 + 4) = v190;
            *(v107 + 8) = 2082;
            v108 = [v104 title];
            if (v108)
            {
              v109 = v108;
              v110 = sub_1005728D8();
              v112 = v111;
            }

            else
            {
              v110 = 0;
              v112 = 0;
            }

            *&v200[0] = v110;
            *(&v200[0] + 1) = v112;
            sub_100009DCC(&qword_1006F5C90);
            v167 = sub_100572978();
            v169 = sub_10037A2AC(v167, v168, v198);

            *(v107 + 10) = v169;
            *(v107 + 18) = 2082;
            v170 = [v104 identifiers];
            v171 = [v170 description];
            v172 = sub_1005728D8();
            v174 = v173;

            v175 = sub_10037A2AC(v172, v174, v198);

            *(v107 + 20) = v175;
            _os_log_impl(&_mh_execute_header, v105, v106, "Loader supportsLyrics=%{BOOL,public}d [no musicSubscription key in bag] song.title=%{public}s song.identifiers=%{public}s", v107, 0x1Cu);
            swift_arrayDestroy();

            (*(v192 + 8))(v19, v194);
            return v190;
          }

          (*(v103 + 8))(v19, v102);
        }

        return v190;
      }

      v54 = v13;

      v55 = v194;
    }

    else
    {
      v66 = Logger.lyrics.unsafeMutableAddressor();
      v53 = v192;
      v55 = v194;
      (*(v192 + 16))(v16, v66, v194);
      v67 = a1;
      v68 = sub_10056DF68();
      v69 = sub_100573448();

      v54 = v13;
      if (os_log_type_enabled(v68, v69))
      {
        v187 = v69;
        v188 = v13;
        v189 = v68;
        v70 = swift_slowAlloc();
        v186 = swift_slowAlloc();
        *&v198[0] = v186;
        *v70 = 67240706;
        *(v70 + 4) = v190;
        v71 = v70;
        *(v70 + 8) = 2082;
        v72 = v67;
        v73 = [v67 title];
        v74 = &selRef_changeItemCommand;
        if (v73)
        {
          v75 = v73;
          v76 = sub_1005728D8();
          v78 = v77;
        }

        else
        {
          v76 = 0;
          v78 = 0;
        }

        *&v200[0] = v76;
        *(&v200[0] + 1) = v78;
        sub_100009DCC(&qword_1006F5C90);
        v113 = sub_100572978();
        v115 = sub_10037A2AC(v113, v114, v198);

        *(v71 + 10) = v115;
        *(v71 + 18) = 2082;
        v116 = [v72 identifiers];
        v117 = [v116 description];
        v118 = sub_1005728D8();
        v120 = v119;

        v121 = sub_10037A2AC(v118, v120, v198);

        *(v71 + 20) = v121;
        v122 = v189;
        _os_log_impl(&_mh_execute_header, v189, v187, "Loader supportsLyrics=%{BOOL,public}d [bag is nil] song.title=%{public}s song.identifiers=%{public}s", v71, 0x1Cu);
        swift_arrayDestroy();

        v55 = v194;
        (*(v53 + 8))(v16, v194);
        v54 = v188;
LABEL_38:
        if ([v193 v74[142]] && (static ApplicationCapabilities.shared.getter(v198), v123 = v199, , sub_100108D2C(v198), v124 = sub_1001B4D1C(2, v123), , (v124 & 1) != 0))
        {
          static ApplicationCapabilities.shared.getter(v200);
          sub_100108D2C(v200);
          if (BYTE10(v200[0]))
          {

            return 1;
          }

          v125 = Logger.lyrics.unsafeMutableAddressor();
          (*(v53 + 16))(v54, v125, v55);
          v126 = a1;
          v127 = sub_10056DF68();
          v128 = sub_100573448();

          if (os_log_type_enabled(v127, v128))
          {
            v129 = swift_slowAlloc();
            v191 = swift_slowAlloc();
            v197 = v191;
            *v129 = 67240706;
            *(v129 + 4) = v190;
            *(v129 + 8) = 2082;
            v130 = [v126 title];
            if (v130)
            {
              v131 = v130;
              v132 = sub_1005728D8();
              v134 = v133;
            }

            else
            {
              v132 = 0;
              v134 = 0;
            }

            v195 = v132;
            v196 = v134;
            sub_100009DCC(&qword_1006F5C90);
            v176 = sub_100572978();
            v178 = sub_10037A2AC(v176, v177, &v197);

            *(v129 + 10) = v178;
            *(v129 + 18) = 2082;
            v179 = [v126 identifiers];
            v180 = [v179 description];
            v181 = sub_1005728D8();
            v183 = v182;

            v184 = sub_10037A2AC(v181, v183, &v197);

            *(v129 + 20) = v184;
            _os_log_impl(&_mh_execute_header, v127, v128, "Loader supportsLyrics=%{BOOL,public}d [not supported by subscription] subscriptionCapabilities.contains(.catalogLyricsViewing)=false song.title=%{public}s song.identifiers=%{public}s", v129, 0x1Cu);
            swift_arrayDestroy();

            (*(v192 + 8))(v54, v194);
            return v190;
          }

          (*(v53 + 8))(v54, v55);
        }

        else
        {
          v135 = Logger.lyrics.unsafeMutableAddressor();
          v136 = v191;
          (*(v53 + 16))(v191, v135, v55);
          v137 = a1;
          v138 = v193;
          v139 = sub_10056DF68();
          v140 = sub_100573448();

          if (os_log_type_enabled(v139, v140))
          {
            v141 = swift_slowAlloc();
            v193 = swift_slowAlloc();
            v197 = v193;
            *v141 = 67241218;
            *(v141 + 4) = v190;
            *(v141 + 8) = 1026;
            *(v141 + 10) = [v138 v74[142]];

            *(v141 + 14) = 1026;
            static ApplicationCapabilities.shared.getter(v200);
            v142 = v201;

            sub_100108D2C(v200);
            v143 = sub_1001B4D1C(2, v142);

            *(v141 + 16) = v143 & 1;
            *(v141 + 20) = 2082;
            v144 = [v137 title];
            if (v144)
            {
              v145 = v144;
              v146 = sub_1005728D8();
              v148 = v147;
            }

            else
            {
              v146 = 0;
              v148 = 0;
            }

            v195 = v146;
            v196 = v148;
            sub_100009DCC(&qword_1006F5C90);
            v149 = sub_100572978();
            v151 = sub_10037A2AC(v149, v150, &v197);

            *(v141 + 22) = v151;
            *(v141 + 30) = 2082;
            v152 = [v137 identifiers];
            v153 = [v152 description];
            v154 = sub_1005728D8();
            v156 = v155;

            v157 = sub_10037A2AC(v154, v156, &v197);

            *(v141 + 32) = v157;
            _os_log_impl(&_mh_execute_header, v139, v140, "Loader supportsLyrics=%{BOOL,public}d [can't support store lyrics] lyrics.hasStoreLyrics=%{BOOL,public}d allowsSubscriptionContent=%{BOOL,public}d song.title=%{public}s song.identifiers=%{public}s", v141, 0x28u);
            swift_arrayDestroy();

            (*(v192 + 8))(v191, v194);
            return v190;
          }

          (*(v53 + 8))(v136, v55);
        }

        return v190;
      }

      (*(v53 + 8))(v16, v55);
    }

    v74 = &selRef_changeItemCommand;
    goto LABEL_38;
  }

LABEL_4:
  v24 = Logger.lyrics.unsafeMutableAddressor();
  v25 = v194;
  (*(v2 + 16))(v4, v24, v194);
  v26 = v2;
  v27 = a1;
  v28 = sub_10056DF68();
  v29 = sub_100573448();

  if (os_log_type_enabled(v28, v29))
  {
    v192 = v26;
    v30 = swift_slowAlloc();
    *&v198[0] = swift_slowAlloc();
    *v30 = 136446466;
    v31 = [v27 title];
    if (v31)
    {
      v32 = v31;
      v33 = sub_1005728D8();
      v35 = v34;
    }

    else
    {
      v33 = 0;
      v35 = 0;
    }

    *&v200[0] = v33;
    *(&v200[0] + 1) = v35;
    sub_100009DCC(&qword_1006F5C90);
    v56 = sub_100572978();
    v58 = sub_10037A2AC(v56, v57, v198);

    *(v30 + 4) = v58;
    *(v30 + 12) = 2082;
    v59 = [v27 identifiers];
    v60 = [v59 description];
    v61 = sub_1005728D8();
    v63 = v62;

    v64 = sub_10037A2AC(v61, v63, v198);

    *(v30 + 14) = v64;
    _os_log_impl(&_mh_execute_header, v28, v29, "Loader supportsLyrics=false [MPModelLyrics was nil] song.title=%{public}s song.identifiers=%{public}s", v30, 0x16u);
    swift_arrayDestroy();

    (*(v192 + 8))(v4, v194);
  }

  else
  {

    (*(v26 + 8))(v4, v25);
  }

  return 0;
}

unint64_t sub_100392D28()
{
  result = qword_1006EFC00;
  if (!qword_1006EFC00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006EFC00);
  }

  return result;
}

unint64_t sub_100392D9C()
{
  result = qword_1006EFC10;
  if (!qword_1006EFC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EFC10);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for Corner(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100392E10(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100392E58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_100392EC8()
{
  v1 = sub_100009DCC(&qword_1006EFC40);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

void sub_100392F74(void *a1, uint64_t a2)
{
  v5 = *(sub_100009DCC(&qword_1006EFC40) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  sub_10038BB50(a1, a2, v2 + v6, v8, v9);
}

uint64_t sub_100393030(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100393048(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006EFC60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1003930B8()
{
  result = qword_1006EFC70;
  if (!qword_1006EFC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EFC70);
  }

  return result;
}

unint64_t sub_10039310C()
{
  result = qword_1006EFC80;
  if (!qword_1006EFC80)
  {
    sub_100010324(&qword_1006EFC78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EFC80);
  }

  return result;
}

uint64_t Lyrics.StateManager.__allocating_init()()
{
  v0 = swift_allocObject();
  Lyrics.StateManager.init()();
  return v0;
}

uint64_t Lyrics.StateManager.init()()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
  type metadata accessor for Lyrics.StateManager.State.Loading(0);
  swift_storeEnumTagMultiPayload();
  v3 = type metadata accessor for Lyrics.StateManager.State(0);
  v4 = v2 + *(v3 + 20);
  v5 = enum case for ScenePhase.inactive(_:);
  v6 = sub_10056E5F8();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  v7 = type metadata accessor for Lyrics.StateManager.State.Display(0);
  *(v4 + *(v7 + 20)) = 0;
  *(v4 + *(v7 + 24)) = 0;
  v8 = *(v3 + 24);
  v9 = sub_10056CAA8();
  (*(*(v9 - 8) + 56))(v2 + v8, 1, 1, v9);
  *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__tracklist) = 0;
  v10 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__song;
  v11 = sub_100571A68();
  (*(*(v11 - 8) + 56))(v1 + v10, 1, 1, v11);
  *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__showTranslationButton) = 0;
  *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__needsLyricsReset) = 0;
  v12 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentTranslation;
  v13 = type metadata accessor for Lyrics.Translation(0);
  (*(*(v13 - 8) + 56))(v1 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentTransliteration;
  v15 = type metadata accessor for Lyrics.Transliteration(0);
  (*(*(v15 - 8) + 56))(v1 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__metricsPage;
  v17 = type metadata accessor for MetricsEvent.Page(0);
  (*(*(v17 - 8) + 56))(v1 + v16, 1, 1, v17);
  *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__loader) = [objc_allocWithZone(type metadata accessor for LyricsLoader()) init];
  *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentLyricsTask) = 0;
  *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__optionsObserver) = 0;
  v18 = [objc_allocWithZone(MPCLyricsReportingController) init];
  *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__lyricsReportingController) = v18;
  _s9MusicCore18EnvironmentMonitorC22__observationRegistrar33_6CC8A35C601F3763940B11776112173411Observation0lF0Vvpfi_0();
  v19 = *LyricsOptionsManager.shared.unsafeMutableAddressor();
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = *(*v19 + 224);

  v21(sub_10039444C, v20);

  swift_getKeyPath();
  sub_1003A1FD4(&qword_1006EFD10, type metadata accessor for Lyrics.StateManager);
  sub_10056CEE8();

  return v1;
}

uint64_t sub_100393600()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t Lyrics.StateManager.state.setter(uint64_t a1)
{
  v3 = type metadata accessor for Lyrics.StateManager.State(0);
  __chkstk_darwin(v3 - 8);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v13 - v7;
  v9 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
  swift_beginAccess();
  sub_1003A0A4C(v1 + v9, v8, type metadata accessor for Lyrics.StateManager.State);
  v10 = _s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V23__derived_struct_equalsySbAH_AHtFZ_0(v8, a1);
  sub_1003A0AB4(v8, type metadata accessor for Lyrics.StateManager.State);
  if (v10)
  {
    sub_1003A0A4C(a1, v8, type metadata accessor for Lyrics.StateManager.State);
    sub_1003A0A4C(v1 + v9, v5, type metadata accessor for Lyrics.StateManager.State);
    swift_beginAccess();
    sub_1003A11A0(v8, v1 + v9, type metadata accessor for Lyrics.StateManager.State);
    swift_endAccess();
    sub_1003945AC(v5);
    sub_1003A0AB4(v5, type metadata accessor for Lyrics.StateManager.State);
    sub_1003A0AB4(v8, type metadata accessor for Lyrics.StateManager.State);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v13[-2] = v1;
    v13[-1] = a1;
    v13[1] = v1;
    sub_1003A1FD4(&qword_1006EFD10, type metadata accessor for Lyrics.StateManager);
    sub_10056CEE8();
  }

  return sub_1003A0AB4(a1, type metadata accessor for Lyrics.StateManager.State);
}

uint64_t sub_1003938EC(char a1, uint64_t *a2)
{
  v3 = a1 & 1;
  v4 = *a2;
  result = swift_beginAccess();
  if (*(v2 + v4) == v3)
  {
    *(v2 + v4) = v3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1003A1FD4(&qword_1006EFD10, type metadata accessor for Lyrics.StateManager);
    sub_10056CEE8();
  }

  return result;
}

void sub_100393A08(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__loader;
  v5 = *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__loader);
  type metadata accessor for LyricsLoader();
  v6 = v5;
  v7 = sub_100573A58();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1003A1FD4(&qword_1006EFD10, type metadata accessor for Lyrics.StateManager);
    sub_10056CEE8();
  }
}

void sub_100393B6C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__lyricsReportingController;
  v5 = *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__lyricsReportingController);
  sub_1000D3B98(0, &qword_1006F02F0);
  v6 = v5;
  v7 = sub_100573A58();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1003A1FD4(&qword_1006EFD10, type metadata accessor for Lyrics.StateManager);
    sub_10056CEE8();
  }
}

uint64_t sub_100393CE0(uint64_t a1)
{
  v2 = sub_100009DCC(&qword_1006EFD30);
  __chkstk_darwin(v2 - 8);
  v4 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v50 - v6;
  __chkstk_darwin(v8);
  v10 = &v50 - v9;
  v11 = type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin(v11);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Lyrics.StateManager.State(0);
  __chkstk_darwin(v14 - 8);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = result;
    swift_getKeyPath();
    v19 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
    v63 = v18;
    v20 = sub_1003A1FD4(&qword_1006EFD10, type metadata accessor for Lyrics.StateManager);
    v59 = v19;
    v60 = v20;
    sub_10056CEF8();

    v21 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
    swift_beginAccess();
    sub_1003A0A4C(v18 + v21, v16, type metadata accessor for Lyrics.StateManager.State);
    sub_1003A0A4C(v16, v13, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1003A0AB4(v16, type metadata accessor for Lyrics.StateManager.State);
    if (swift_getEnumCaseMultiPayload() != 1)
    {

      return sub_1003A0AB4(v13, type metadata accessor for Lyrics.StateManager.State.Loading);
    }

    v57 = v4;
    v58 = a1;
    v22 = *v13;
    v23 = *(v13 + 1);
    v25 = *(v13 + 2);
    v24 = *(v13 + 3);
    v26 = v13[32];
    v27 = *(sub_100009DCC(&qword_1006EFD18) + 48);
    v28 = sub_100571A68();
    v29 = (*(*(v28 - 8) + 8))(&v13[v27], v28);
    if (v26 != 1)
    {
    }

    v30 = v23;
    v55 = v25;
    v56 = v24;
    v31 = (*v22 + 312);
    v32 = *v31;
    v33 = v31;
    (*v31)(v29);
    v34 = type metadata accessor for Lyrics.Transliteration(0);
    v35 = *(v34 - 8);
    v36 = *(v35 + 48);
    v53 = v34;
    if ((v36)(v10, 1) == 1)
    {

      sub_1003A1DD4(v22, v30, v55, v56, 1);
      v37 = v10;
    }

    else
    {
      v52 = v35;
      v50 = v33;
      v51 = v32;
      v54 = v22;
      sub_10001036C(v10, &qword_1006EFD30);
      v38 = sub_10045DEE8(3, v58);
      v39 = *(**LyricsOptionsManager.shared.unsafeMutableAddressor() + 248);

      LODWORD(v39) = v39(3) & 1;

      if (v38 == v39)
      {
        sub_1003A1DD4(v54, v30, v55, v56, 1);
      }

      v58 = v30;
      (*(*v54 + 440))(v40);
      swift_getKeyPath();
      v62 = v18;
      sub_10056CEF8();

      v41 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentTransliteration;
      swift_beginAccess();
      sub_10000CC8C(v18 + v41, v7, &qword_1006EFD30);
      v42 = v53;
      v43 = v36(v7, 1, v53);
      sub_10001036C(v7, &qword_1006EFD30);
      v44 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__needsLyricsReset;
      v45 = swift_beginAccess();
      if (*(v18 + v44) == 1)
      {
        *(v18 + v44) = 1;
      }

      else
      {
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        *(&v50 - 2) = v18;
        *(&v50 - 8) = 1;
        v61 = v18;
        sub_10056CEE8();
      }

      v47 = v57;
      if (v43 == 1)
      {
        (*(v52 + 56))(v57, 1, 1, v42);
        v48 = v54;
      }

      else
      {
        v48 = v54;
        v51(v45);
      }

      v49 = swift_getKeyPath();
      __chkstk_darwin(v49);
      *(&v50 - 2) = v18;
      *(&v50 - 1) = v47;
      v61 = v18;
      sub_10056CEE8();
      sub_1003A1DD4(v48, v58, v55, v56, 1);

      v37 = v47;
    }

    return sub_10001036C(v37, &qword_1006EFD30);
  }

  return result;
}

uint64_t Lyrics.StateManager.State.lyrics.getter()
{
  v1 = type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin(v1);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003A0A4C(v0, v3, type metadata accessor for Lyrics.StateManager.State.Loading);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1003A0AB4(v3, type metadata accessor for Lyrics.StateManager.State.Loading);
    return 0;
  }

  v4 = *v3;
  v5 = v3[32];
  v6 = *(sub_100009DCC(&qword_1006EFD18) + 48);
  v7 = sub_100571A68();
  (*(*(v7 - 8) + 8))(&v3[v6], v7);
  if ((v5 & 1) == 0)
  {

    return 0;
  }

  return v4;
}

uint64_t sub_1003945AC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100009DCC(&qword_1006F0320);
  __chkstk_darwin(v4 - 8);
  v6 = &v79[-v5];
  v7 = sub_10056E5F8();
  v92 = *(v7 - 8);
  __chkstk_darwin(v7);
  v91 = &v79[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v85 = type metadata accessor for Lyrics.StateManager.State.Display(0);
  __chkstk_darwin(v85);
  v93 = &v79[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_100009DCC(&qword_1006EFD30);
  __chkstk_darwin(v10 - 8);
  v88 = &v79[-v11];
  v12 = sub_100009DCC(&qword_1006EFD28);
  __chkstk_darwin(v12 - 8);
  v87 = &v79[-v13];
  v100 = type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin(v100);
  v90 = &v79[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v17 = &v79[-v16];
  v18 = sub_10056DF88();
  v96 = *(v18 - 8);
  v97 = v18;
  __chkstk_darwin(v18);
  v20 = &v79[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v99 = type metadata accessor for Lyrics.StateManager.State(0);
  __chkstk_darwin(v99);
  v86 = &v79[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v22);
  v24 = &v79[-v23];
  __chkstk_darwin(v25);
  v27 = &v79[-v26];
  swift_getKeyPath();
  v28 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  v102[3] = v2;
  v29 = sub_1003A1FD4(&qword_1006EFD10, type metadata accessor for Lyrics.StateManager);
  v89 = v28;
  v94 = v29;
  sub_10056CEF8();

  v30 = v2 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
  swift_beginAccess();
  v98 = v30;
  sub_1003A0A4C(v30, v27, type metadata accessor for Lyrics.StateManager.State);
  v95 = a1;
  LOBYTE(v30) = _s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V23__derived_struct_equalsySbAH_AHtFZ_0(v27, a1);
  result = sub_1003A0AB4(v27, type metadata accessor for Lyrics.StateManager.State);
  if ((v30 & 1) == 0)
  {
    v83 = v7;
    v84 = v6;
    v32 = Logger.lyrics.unsafeMutableAddressor();
    (*(v96 + 16))(v20, v32, v97);
    sub_1003A0A4C(v95, v24, type metadata accessor for Lyrics.StateManager.State);

    v33 = sub_10056DF68();
    v34 = sub_100573448();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v102[0] = v82;
      *v35 = 136446466;
      sub_1003A0A4C(v24, v27, type metadata accessor for Lyrics.StateManager.State);
      v36 = sub_100572978();
      v81 = v33;
      v37 = v36;
      v80 = v34;
      v39 = v38;
      sub_1003A0AB4(v24, type metadata accessor for Lyrics.StateManager.State);
      v40 = sub_10037A2AC(v37, v39, v102);

      *(v35 + 4) = v40;
      *(v35 + 12) = 2082;
      swift_getKeyPath();
      v101 = v2;
      sub_10056CEF8();

      v41 = v98;
      sub_1003A0A4C(v98, v27, type metadata accessor for Lyrics.StateManager.State);
      v42 = sub_100572978();
      v44 = sub_10037A2AC(v42, v43, v102);

      *(v35 + 14) = v44;
      v45 = v81;
      _os_log_impl(&_mh_execute_header, v81, v80, "[State] changed from %{public}s to %{public}s", v35, 0x16u);
      swift_arrayDestroy();

      (*(v96 + 8))(v20, v97);
    }

    else
    {

      sub_1003A0AB4(v24, type metadata accessor for Lyrics.StateManager.State);
      (*(v96 + 8))(v20, v97);
      v41 = v98;
    }

    swift_getKeyPath();
    v102[0] = v2;
    sub_10056CEF8();

    v46 = v86;
    sub_1003A0A4C(v41, v86, type metadata accessor for Lyrics.StateManager.State);
    sub_1003A0A4C(v46, v17, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1003A0AB4(v46, type metadata accessor for Lyrics.StateManager.State);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v47 = *v17;
      v48 = v17[32];
      v49 = *(sub_100009DCC(&qword_1006EFD18) + 48);
      v50 = sub_100571A68();
      (*(*(v50 - 8) + 8))(&v17[v49], v50);
      if (v48)
      {
        v51 = v90;
        v52 = v88;
        if (v47)
        {
          v53 = *(*v47 + 288);

          v55 = v87;
          v53(v54);

          v56 = type metadata accessor for Lyrics.Translation(0);
          v57 = 1;
          v58 = (*(*(v56 - 8) + 48))(v55, 1, v56);
          sub_10001036C(v55, &qword_1006EFD28);
          if (v58 != 1)
          {
            goto LABEL_17;
          }

          v59 = *(*v47 + 312);

          v59(v60);

          v61 = type metadata accessor for Lyrics.Transliteration(0);
          v57 = 1;
          if ((*(*(v61 - 8) + 48))(v52, 1, v61) != 1)
          {
LABEL_16:
            sub_10001036C(v52, &qword_1006EFD30);
LABEL_17:
            v65 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__showTranslationButton;
            swift_beginAccess();
            if (v57 == *(v2 + v65))
            {
              *(v2 + v65) = v57;
            }

            else
            {
              KeyPath = swift_getKeyPath();
              __chkstk_darwin(KeyPath);
              *&v79[-16] = v2;
              v79[-8] = v57;
              v101 = v2;
              sub_10056CEE8();
            }

            v67 = v84;
            swift_getKeyPath();
            v101 = v2;
            sub_10056CEF8();

            v68 = v98;
            sub_1003A0A4C(v98, v51, type metadata accessor for Lyrics.StateManager.State.Loading);
            swift_getKeyPath();
            v101 = v2;
            sub_10056CEF8();

            v69 = v68 + *(v99 + 20);
            v70 = v93;
            sub_1003A0A4C(v69, v93, type metadata accessor for Lyrics.StateManager.State.Display);
            v72 = v91;
            v71 = v92;
            v73 = v83;
            (*(v92 + 104))(v91, enum case for ScenePhase.active(_:), v83);
            v74 = sub_10056E5E8();
            (*(v71 + 8))(v72, v73);
            if ((v74 & 1) != 0 && v70[*(v85 + 20)] == 1)
            {
              v75 = v70[*(v85 + 24)];
            }

            else
            {
              v75 = 0;
            }

            sub_1003A0AB4(v70, type metadata accessor for Lyrics.StateManager.State.Display);
            sub_1003A23AC(v51, v67);
            EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
            if (EnumCaseMultiPayload)
            {
              if (EnumCaseMultiPayload == 1)
              {
                sub_1003A1DD4(*v67, *(v67 + 8), *(v67 + 16), *(v67 + 24), *(v67 + 32));
                v77 = *(sub_100009DCC(&qword_1006EFD18) + 48);
                v78 = sub_100571A68();
                (*(*(v78 - 8) + 8))(v67 + v77, v78);
                if (v75)
                {
                  goto LABEL_30;
                }
              }
            }

            else
            {
              sub_1003A0AB4(v67, type metadata accessor for Lyrics.StateManager.State.Loading);
            }

            sub_10039E3B4(v95);
LABEL_30:
            sub_10039DA90();
          }

LABEL_15:
          v57 = 0;
          goto LABEL_16;
        }

LABEL_14:
        v62 = type metadata accessor for Lyrics.Translation(0);
        v63 = v87;
        (*(*(v62 - 8) + 56))(v87, 1, 1, v62);
        sub_10001036C(v63, &qword_1006EFD28);
        v64 = type metadata accessor for Lyrics.Transliteration(0);
        (*(*(v64 - 8) + 56))(v52, 1, 1, v64);
        goto LABEL_15;
      }

      v51 = v90;
    }

    else
    {
      sub_1003A0AB4(v17, type metadata accessor for Lyrics.StateManager.State.Loading);
      v51 = v90;
    }

    v52 = v88;
    goto LABEL_14;
  }

  return result;
}

void (*sub_1003952B8(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(type metadata accessor for Lyrics.StateManager.State(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[10] = swift_coroFrameAlloc();
    v4[11] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[10] = malloc(v5);
    v4[11] = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  v8 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
  v4[12] = v6;
  v4[13] = v8;
  swift_beginAccess();
  sub_1003A0A4C(v1 + v8, v7, type metadata accessor for Lyrics.StateManager.State);
  return sub_1003953E0;
}

void sub_1003953E0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 96);
  v4 = *(*a1 + 104);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  v7 = *(*a1 + 72);
  if (a2)
  {
    sub_1003A0A4C(*(*a1 + 96), v6, type metadata accessor for Lyrics.StateManager.State);
    sub_1003A0A4C(v7 + v4, v5, type metadata accessor for Lyrics.StateManager.State);
    swift_beginAccess();
    sub_1003A11A0(v6, v7 + v4, type metadata accessor for Lyrics.StateManager.State);
    swift_endAccess();
    sub_1003945AC(v5);
    sub_1003A0AB4(v5, type metadata accessor for Lyrics.StateManager.State);
  }

  else
  {
    sub_1003A0A4C(v7 + v4, v6, type metadata accessor for Lyrics.StateManager.State);
    swift_beginAccess();
    sub_1003A11A0(v3, v7 + v4, type metadata accessor for Lyrics.StateManager.State);
    swift_endAccess();
    sub_1003945AC(v6);
  }

  sub_1003A0AB4(v6, type metadata accessor for Lyrics.StateManager.State);
  sub_1003A0AB4(v3, type metadata accessor for Lyrics.StateManager.State);
  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

uint64_t Lyrics.StateManager.state.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1003A1FD4(&qword_1006EFD10, type metadata accessor for Lyrics.StateManager);
  sub_10056CEF8();

  v3 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
  swift_beginAccess();
  return sub_1003A0A4C(v5 + v3, a1, type metadata accessor for Lyrics.StateManager.State);
}

uint64_t sub_10039562C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1003A1FD4(&qword_1006EFD10, type metadata accessor for Lyrics.StateManager);
  sub_10056CEF8();

  v4 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
  swift_beginAccess();
  return sub_1003A0A4C(v3 + v4, a2, type metadata accessor for Lyrics.StateManager.State);
}

uint64_t sub_100395708(uint64_t a1)
{
  v2 = type metadata accessor for Lyrics.StateManager.State(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003A0A4C(a1, v4, type metadata accessor for Lyrics.StateManager.State);
  return Lyrics.StateManager.state.setter(v4);
}

uint64_t sub_1003957A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Lyrics.StateManager.State(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v12[-v8];
  sub_1003A0A4C(a2, &v12[-v8], type metadata accessor for Lyrics.StateManager.State);
  v10 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
  swift_beginAccess();
  sub_1003A0A4C(a1 + v10, v6, type metadata accessor for Lyrics.StateManager.State);
  swift_beginAccess();
  sub_1003A11A0(v9, a1 + v10, type metadata accessor for Lyrics.StateManager.State);
  swift_endAccess();
  sub_1003945AC(v6);
  sub_1003A0AB4(v6, type metadata accessor for Lyrics.StateManager.State);
  return sub_1003A0AB4(v9, type metadata accessor for Lyrics.StateManager.State);
}

void (*Lyrics.StateManager.state.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1003A1FD4(&qword_1006EFD10, type metadata accessor for Lyrics.StateManager);
  sub_10056CEF8();

  *v4 = v1;
  swift_getKeyPath();
  sub_10056CF18();

  v4[7] = sub_1003952B8(v4);
  return sub_100395A24;
}

uint64_t sub_100395A30()
{
  v1 = v0;
  v2 = sub_100009DCC(&qword_1006EFD30);
  __chkstk_darwin(v2 - 8);
  v4 = v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v60 = v55 - v6;
  __chkstk_darwin(v7);
  v9 = v55 - v8;
  __chkstk_darwin(v10);
  v12 = v55 - v11;
  v13 = type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin(v13);
  v15 = v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Lyrics.StateManager.State(0);
  __chkstk_darwin(v16 - 8);
  v18 = v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v19 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  v65 = v1;
  v61 = sub_1003A1FD4(&qword_1006EFD10, type metadata accessor for Lyrics.StateManager);
  v62 = v19;
  sub_10056CEF8();

  v20 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__tracklist;
  swift_beginAccess();
  v21 = *(v1 + v20);
  if (v21)
  {
    v22 = [v21 vocalsControlCommand];
    if (v22)
    {
      v23 = [v22 isActive];
      swift_unknownObjectRelease();
      if (v23)
      {
        swift_getKeyPath();
        v64 = v1;
        sub_10056CEF8();

        v24 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
        swift_beginAccess();
        sub_1003A0A4C(v1 + v24, v18, type metadata accessor for Lyrics.StateManager.State);
        sub_1003A0A4C(v18, v15, type metadata accessor for Lyrics.StateManager.State.Loading);
        sub_1003A0AB4(v18, type metadata accessor for Lyrics.StateManager.State);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v25 = *v15;
          v26 = *(v15 + 1);
          v27 = *(v15 + 3);
          v58 = *(v15 + 2);
          v59 = v27;
          v28 = v15[32];
          v29 = *(sub_100009DCC(&qword_1006EFD18) + 48);
          v30 = sub_100571A68();
          v31 = (*(*(v30 - 8) + 8))(&v15[v29], v30);
          if (v28 == 1)
          {
            v57 = v26;
            v32 = (*v25 + 312);
            v56 = *v32;
            v55[1] = v32;
            v56(v31);
            v33 = type metadata accessor for Lyrics.Transliteration(0);
            v34 = *(*(v33 - 8) + 48);
            if (v34(v12, 1, v33) == 1)
            {
              sub_1003A1DD4(v25, v57, v58, v59, 1);
              sub_10001036C(v12, &qword_1006EFD30);
            }

            else
            {
              v55[0] = v25;
              sub_10001036C(v12, &qword_1006EFD30);
              swift_getKeyPath();
              v64 = v1;
              sub_10056CEF8();

              v46 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentTransliteration;
              swift_beginAccess();
              sub_10000CC8C(v1 + v46, v9, &qword_1006EFD30);
              v47 = v34(v9, 1, v33);
              v48 = v57;
              if (v47 == 1)
              {
                sub_10001036C(v9, &qword_1006EFD30);
                v49 = *(**LyricsOptionsManager.shared.unsafeMutableAddressor() + 248);

                LOBYTE(v49) = v49(2);

                v52 = v58;
                v51 = v59;
                if ((v49 & 1) == 0)
                {
                  v44 = v60;
                  v53 = v55[0];
                  v56(v50);
                  KeyPath = swift_getKeyPath();
                  __chkstk_darwin(KeyPath);
                  v55[-2] = v1;
                  v55[-1] = v44;
                  v64 = v1;
                  sub_10056CEE8();
                  sub_1003A1DD4(v53, v48, v52, v51, 1);
                  goto LABEL_16;
                }

                sub_1003A1DD4(v55[0], v48, v58, v59, 1);
              }

              else
              {
                sub_1003A1DD4(v55[0], v57, v58, v59, 1);
                sub_10001036C(v9, &qword_1006EFD30);
              }
            }
          }

          else
          {
          }
        }

        else
        {
          sub_1003A0AB4(v15, type metadata accessor for Lyrics.StateManager.State.Loading);
        }
      }
    }
  }

  swift_getKeyPath();
  v64 = v1;
  sub_10056CEF8();

  v35 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentTransliteration;
  swift_beginAccess();
  sub_10000CC8C(v1 + v35, v4, &qword_1006EFD30);
  v36 = type metadata accessor for Lyrics.Transliteration(0);
  v37 = *(v36 - 8);
  v38 = (*(v37 + 48))(v4, 1, v36);
  result = sub_10001036C(v4, &qword_1006EFD30);
  if (v38 != 1)
  {
    v40 = *(**LyricsOptionsManager.shared.unsafeMutableAddressor() + 248);

    LOBYTE(v40) = v40(1);

    if ((v40 & 1) == 0)
    {
      swift_getKeyPath();
      v63 = v1;
      sub_10056CEF8();

      v41 = *(v1 + v20);
      if (!v41 || (v42 = [v41 vocalsControlCommand]) == 0 || (v43 = objc_msgSend(v42, "isActive"), result = swift_unknownObjectRelease(), (v43 & 1) == 0))
      {
        v44 = v60;
        (*(v37 + 56))(v60, 1, 1, v36);
        v45 = swift_getKeyPath();
        __chkstk_darwin(v45);
        v55[-2] = v1;
        v55[-1] = v44;
        v63 = v1;
        sub_10056CEE8();
LABEL_16:

        return sub_10001036C(v44, &qword_1006EFD30);
      }
    }
  }

  return result;
}

uint64_t (*sub_10039630C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_100396370;
}

uint64_t sub_100396370(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_100395A30();
  }

  return result;
}

void *Lyrics.StateManager.tracklist.getter()
{
  swift_getKeyPath();
  v5 = v0;
  sub_1003A1FD4(&qword_1006EFD10, type metadata accessor for Lyrics.StateManager);
  sub_10056CEF8();

  v1 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__tracklist;
  swift_beginAccess();
  v2 = *(v5 + v1);
  v3 = v2;
  return v2;
}

id sub_100396468@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1003A1FD4(&qword_1006EFD10, type metadata accessor for Lyrics.StateManager);
  sub_10056CEF8();

  v4 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__tracklist;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void Lyrics.StateManager.tracklist.setter(void *a1)
{
  v3 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__tracklist;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      v6 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1003A1FD4(&qword_1006EFD10, type metadata accessor for Lyrics.StateManager);
    sub_10056CEE8();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1000D3B98(0, &qword_1006EFD20);
  v5 = v4;
  v6 = a1;
  v7 = sub_100573A58();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v1 + v3);
LABEL_8:
  *(v1 + v3) = a1;
  v10 = v6;

  sub_100395A30();
}

uint64_t sub_1003966EC(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__tracklist;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
  v6 = a2;

  return sub_100395A30();
}

void (*Lyrics.StateManager.tracklist.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1003A1FD4(&qword_1006EFD10, type metadata accessor for Lyrics.StateManager);
  sub_10056CEF8();

  *v4 = v1;
  swift_getKeyPath();
  sub_10056CF18();

  v4[7] = sub_10039630C(v4);
  return sub_10039689C;
}

uint64_t sub_1003968A8(uint64_t a1)
{
  v2 = v1;
  v37 = a1;
  v3 = sub_100009DCC(&qword_1006F4800);
  __chkstk_darwin(v3 - 8);
  v5 = &v35 - v4;
  v6 = sub_100009DCC(&qword_1006EFBE8);
  __chkstk_darwin(v6 - 8);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v35 - v10;
  v12 = sub_100571A68();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v36 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v35 - v16;
  swift_getKeyPath();
  v18 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  v41 = v2;
  v19 = sub_1003A1FD4(&qword_1006EFD10, type metadata accessor for Lyrics.StateManager);
  v38 = v18;
  v39 = v19;
  sub_10056CEF8();

  v20 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__song;
  swift_beginAccess();
  sub_10000CC8C(&v2[v20], v11, &qword_1006EFBE8);
  v21 = *(v13 + 48);
  if (v21(v11, 1, v12) == 1)
  {
    sub_10001036C(v11, &qword_1006EFBE8);
  }

  else
  {
    v35 = v5;
    v22 = *(v13 + 32);
    v22(v17, v11, v12);
    sub_10000CC8C(v37, v8, &qword_1006EFBE8);
    if (v21(v8, 1, v12) == 1)
    {
      (*(v13 + 8))(v17, v12);
      sub_10001036C(v8, &qword_1006EFBE8);
    }

    else
    {
      v23 = v36;
      v22(v36, v8, v12);
      sub_1003A1FD4(&qword_1006F0300, &type metadata accessor for Song);
      if (sub_1005712E8())
      {
        v24 = _s11MusicCoreUI12LyricsLoaderC08supportsD03forSb0A3Kit4SongV_tFZ_0(v17);
        v25 = _s11MusicCoreUI12LyricsLoaderC08supportsD03forSb0A3Kit4SongV_tFZ_0(v23);
        v26 = *(v13 + 8);
        v26(v23, v12);
        result = (v26)(v17, v12);
        v5 = v35;
        if (((v24 ^ v25) & 1) == 0)
        {
          return result;
        }

        goto LABEL_10;
      }

      v28 = *(v13 + 8);
      v28(v23, v12);
      v28(v17, v12);
    }

    v5 = v35;
  }

LABEL_10:
  swift_getKeyPath();
  v40 = v2;
  sub_10056CEF8();

  v29 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentLyricsTask;
  if (*&v2[OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentLyricsTask])
  {

    sub_100572FB8();
    if (*&v2[v29])
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *(&v35 - 2) = v2;
      *(&v35 - 1) = 0;
      v40 = v2;
      sub_10056CEE8();
    }
  }

  v31 = sub_100572F48();
  (*(*(v31 - 8) + 56))(v5, 1, 1, v31);
  sub_100572F08();

  v32 = sub_100572EF8();
  v33 = swift_allocObject();
  v33[2] = v32;
  v33[3] = &protocol witness table for MainActor;
  v33[4] = v2;
  sub_100396F38(0, 0, v5, &unk_10059A528, v33);

  sub_10039A2FC(v34);
}

uint64_t sub_100396E8C()
{
  v0[2] = sub_100572F08();
  v0[3] = sub_100572EF8();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_10031E56C;

  return sub_10039A734();
}

uint64_t sub_100396F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100009DCC(&qword_1006F4800);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10000CC8C(a3, v25 - v10, &qword_1006F4800);
  v12 = sub_100572F48();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10001036C(v11, &qword_1006F4800);
  }

  else
  {
    sub_100572F38();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_100572E78();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1005729C8() + 32;
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

      sub_10001036C(a3, &qword_1006F4800);

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

  sub_10001036C(a3, &qword_1006F4800);
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

uint64_t sub_100397238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100009DCC(&qword_1006F4800);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10000CC8C(a3, v25 - v10, &qword_1006F4800);
  v12 = sub_100572F48();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10001036C(v11, &qword_1006F4800);
  }

  else
  {
    sub_100572F38();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_100572E78();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1005729C8() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_100009DCC(&qword_1006F0308);
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

      sub_10001036C(a3, &qword_1006F4800);

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

  sub_10001036C(a3, &qword_1006F4800);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_100009DCC(&qword_1006F0308);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10039754C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100009DCC(&qword_1006F4800);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10000CC8C(a3, v25 - v10, &qword_1006F4800);
  v12 = sub_100572F48();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10001036C(v11, &qword_1006F4800);
  }

  else
  {
    sub_100572F38();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_100572E78();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1005729C8() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_100009DCC(&unk_1006F2A60);
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

      sub_10001036C(a3, &qword_1006F4800);

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

  sub_10001036C(a3, &qword_1006F4800);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_100009DCC(&unk_1006F2A60);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void (*sub_100397860(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(sub_100009DCC(&qword_1006EFBE8) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[10] = swift_coroFrameAlloc();
    v4[11] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[10] = malloc(v5);
    v4[11] = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  v8 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__song;
  v4[12] = v6;
  v4[13] = v8;
  swift_beginAccess();
  sub_10000CC8C(v1 + v8, v7, &qword_1006EFBE8);
  return sub_100397990;
}

void sub_100397990(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 96);
  v4 = *(*a1 + 104);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  v7 = *(*a1 + 72);
  if (a2)
  {
    sub_10000CC8C(*(*a1 + 96), v6, &qword_1006EFBE8);
    sub_10000CC8C(v7 + v4, v5, &qword_1006EFBE8);
    swift_beginAccess();
    sub_1000F64CC(v6, v7 + v4, &qword_1006EFBE8);
    swift_endAccess();
    sub_1003968A8(v5);
    sub_10001036C(v5, &qword_1006EFBE8);
  }

  else
  {
    sub_10000CC8C(v7 + v4, v6, &qword_1006EFBE8);
    swift_beginAccess();
    sub_1000F64CC(v3, v7 + v4, &qword_1006EFBE8);
    swift_endAccess();
    sub_1003968A8(v6);
  }

  sub_10001036C(v6, &qword_1006EFBE8);
  sub_10001036C(v3, &qword_1006EFBE8);
  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

uint64_t sub_100397B28(uint64_t a1)
{
  v2 = sub_100009DCC(&qword_1006EFBE8);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - v3;
  sub_10000CC8C(a1, &v6 - v3, &qword_1006EFBE8);
  return Lyrics.StateManager.song.setter(v4);
}

uint64_t Lyrics.StateManager.song.setter(uint64_t a1)
{
  v3 = sub_100009DCC(&qword_1006EFBE8);
  __chkstk_darwin(v3 - 8);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v13 - v7;
  v9 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__song;
  swift_beginAccess();
  sub_10000CC8C(v1 + v9, v8, &qword_1006EFBE8);
  v10 = sub_1003A0BA0(v8, a1);
  sub_10001036C(v8, &qword_1006EFBE8);
  if (v10)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v13[-2] = v1;
    v13[-1] = a1;
    v13[2] = v1;
    sub_1003A1FD4(&qword_1006EFD10, type metadata accessor for Lyrics.StateManager);
    sub_10056CEE8();
  }

  else
  {
    sub_10000CC8C(a1, v8, &qword_1006EFBE8);
    sub_10000CC8C(v1 + v9, v5, &qword_1006EFBE8);
    swift_beginAccess();
    sub_1000F64CC(v8, v1 + v9, &qword_1006EFBE8);
    swift_endAccess();
    sub_1003968A8(v5);
    sub_10001036C(v5, &qword_1006EFBE8);
    sub_10001036C(v8, &qword_1006EFBE8);
  }

  return sub_10001036C(a1, &qword_1006EFBE8);
}

uint64_t sub_100397E3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006EFBE8);
  __chkstk_darwin(v4 - 8);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v12[-v8];
  sub_10000CC8C(a2, &v12[-v8], &qword_1006EFBE8);
  v10 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__song;
  swift_beginAccess();
  sub_10000CC8C(a1 + v10, v6, &qword_1006EFBE8);
  swift_beginAccess();
  sub_1000F64CC(v9, a1 + v10, &qword_1006EFBE8);
  swift_endAccess();
  sub_1003968A8(v6);
  sub_10001036C(v6, &qword_1006EFBE8);
  return sub_10001036C(v9, &qword_1006EFBE8);
}

void (*Lyrics.StateManager.song.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1003A1FD4(&qword_1006EFD10, type metadata accessor for Lyrics.StateManager);
  sub_10056CEF8();

  *v4 = v1;
  swift_getKeyPath();
  sub_10056CF18();

  v4[7] = sub_100397860(v4);
  return sub_1003980D4;
}

void (*Lyrics.StateManager.showTranslationButton.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1003A1FD4(&qword_1006EFD10, type metadata accessor for Lyrics.StateManager);
  sub_10056CEF8();

  *v4 = v1;
  swift_getKeyPath();
  sub_10056CF18();

  v4[7] = sub_1003980E0();
  return sub_10039828C;
}

uint64_t sub_10039830C(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1003A1FD4(&qword_1006EFD10, type metadata accessor for Lyrics.StateManager);
  sub_10056CEF8();

  v4 = *a2;
  swift_beginAccess();
  return *(v2 + v4);
}

uint64_t sub_1003983C0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1003A1FD4(&qword_1006EFD10, type metadata accessor for Lyrics.StateManager);
  sub_10056CEF8();

  v6 = *a2;
  result = swift_beginAccess();
  *a3 = *(v5 + v6);
  return result;
}

void (*Lyrics.StateManager.needsLyricsReset.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1003A1FD4(&qword_1006EFD10, type metadata accessor for Lyrics.StateManager);
  sub_10056CEF8();

  *v4 = v1;
  swift_getKeyPath();
  sub_10056CF18();

  v4[7] = sub_100398298();
  return sub_1003985C0;
}

void (*Lyrics.StateManager.currentTranslation.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1003A1FD4(&qword_1006EFD10, type metadata accessor for Lyrics.StateManager);
  sub_10056CEF8();

  *v4 = v1;
  swift_getKeyPath();
  sub_10056CF18();

  v4[7] = sub_1003985CC();
  return sub_1003987B8;
}

uint64_t sub_100398848@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  v9 = v3;
  sub_1003A1FD4(&qword_1006EFD10, type metadata accessor for Lyrics.StateManager);
  sub_10056CEF8();

  v7 = *a1;
  swift_beginAccess();
  return sub_10000CC8C(v9 + v7, a3, a2);
}

uint64_t sub_100398928@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t *a3@<X5>, uint64_t a4@<X8>)
{
  v7 = *a1;
  swift_getKeyPath();
  sub_1003A1FD4(&qword_1006EFD10, type metadata accessor for Lyrics.StateManager);
  sub_10056CEF8();

  v8 = *a2;
  swift_beginAccess();
  return sub_10000CC8C(v7 + v8, a4, a3);
}

uint64_t sub_100398A3C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = *a3;
  swift_beginAccess();
  sub_1000F64CC(a2, a1 + v7, a4);
  return swift_endAccess();
}

void (*Lyrics.StateManager.currentTransliteration.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1003A1FD4(&qword_1006EFD10, type metadata accessor for Lyrics.StateManager);
  sub_10056CEF8();

  *v4 = v1;
  swift_getKeyPath();
  sub_10056CF18();

  v4[7] = sub_1003987C4();
  return sub_100398BF4;
}

uint64_t sub_100398C84(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = sub_100009DCC(a5);
  __chkstk_darwin(v8 - 8);
  v10 = &v13[-v9];
  sub_10000CC8C(a1, &v13[-v9], a5);
  v11 = *a2;
  swift_getKeyPath();
  v14 = v11;
  v15 = v10;
  v16 = v11;
  sub_1003A1FD4(&qword_1006EFD10, type metadata accessor for Lyrics.StateManager);
  sub_10056CEE8();

  return sub_10001036C(v10, a5);
}

uint64_t sub_100398DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  swift_getKeyPath();
  sub_1003A1FD4(&qword_1006EFD10, type metadata accessor for Lyrics.StateManager);
  sub_10056CEE8();

  return sub_10001036C(a1, a4);
}

void (*Lyrics.StateManager.metricsPage.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1003A1FD4(&qword_1006EFD10, type metadata accessor for Lyrics.StateManager);
  sub_10056CEF8();

  *v4 = v1;
  swift_getKeyPath();
  sub_10056CF18();

  v4[7] = sub_100398C00();
  return sub_100399010;
}

void sub_10039901C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_10056CF08();

  free(v1);
}

Swift::Void __swiftcall Lyrics.StateManager.retryLoadingLyrics()()
{
  v1 = v0;
  v2 = sub_100009DCC(&qword_1006F4800);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;
  v5 = sub_100572F48();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_100572F08();

  v6 = sub_100572EF8();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  v7[4] = v1;
  sub_100396F38(0, 0, v4, &unk_10059A1A0, v7);
}

uint64_t sub_1003991D4()
{
  v0[2] = sub_100572F08();
  v0[3] = sub_100572EF8();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_10031E380;

  return sub_10039A734();
}

uint64_t sub_100399280()
{
  v1 = sub_10056E5F8();
  v30 = *(v1 - 8);
  v31 = v1;
  __chkstk_darwin(v1);
  v29 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin(v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100009DCC(&qword_1006F2E20);
  __chkstk_darwin(v6 - 8);
  v27 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v26 - v9;
  v28 = type metadata accessor for Lyrics.StateManager.State(0);
  v11 = *(v28 + 24);
  sub_10000CC8C(v0 + v11, v10, &qword_1006F2E20);
  v12 = sub_10056CAA8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v10, 1, v12);
  v15 = v10;
  v16 = v0;
  sub_10001036C(v15, &qword_1006F2E20);
  if (v14 == 1)
  {
    sub_1003A0A4C(v0, v5, type metadata accessor for Lyrics.StateManager.State.Loading);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1003A1DD4(*v5, *(v5 + 1), *(v5 + 2), *(v5 + 3), v5[32]);
      v17 = *(sub_100009DCC(&qword_1006EFD18) + 48);
      v18 = sub_100571A68();
      (*(*(v18 - 8) + 8))(&v5[v17], v18);
      v19 = v29;
      v20 = v0 + *(v28 + 20);
      v22 = v30;
      v21 = v31;
      (*(v30 + 104))(v29, enum case for ScenePhase.active(_:), v31);
      LOBYTE(v17) = sub_10056E5E8();
      (*(v22 + 8))(v19, v21);
      if (v17)
      {
        v23 = type metadata accessor for Lyrics.StateManager.State.Display(0);
        if (*(v20 + *(v23 + 20)) == 1 && *(v20 + *(v23 + 24)) == 1)
        {
          v24 = v27;
          sub_10056CA68();
          (*(v13 + 56))(v24, 0, 1, v12);
          return sub_1003A2188(v24, v16 + v11);
        }
      }
    }

    else
    {
      sub_1003A0AB4(v5, type metadata accessor for Lyrics.StateManager.State.Loading);
    }
  }

  sub_10001036C(v16 + v11, &qword_1006F2E20);
  return (*(v13 + 56))(v16 + v11, 1, 1, v12);
}

uint64_t Lyrics.StateManager.State.loading.setter(uint64_t a1)
{
  v3 = type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v11 - v7;
  sub_1003A0A4C(v1, &v11 - v7, type metadata accessor for Lyrics.StateManager.State.Loading);
  sub_1003A11A0(a1, v1, type metadata accessor for Lyrics.StateManager.State.Loading);
  sub_1003A0A4C(v1, v5, type metadata accessor for Lyrics.StateManager.State.Loading);
  v9 = _s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v5, v8);
  sub_1003A0AB4(v5, type metadata accessor for Lyrics.StateManager.State.Loading);
  if ((v9 & 1) == 0)
  {
    sub_100399280();
  }

  sub_1003A0AB4(a1, type metadata accessor for Lyrics.StateManager.State.Loading);
  return sub_1003A0AB4(v8, type metadata accessor for Lyrics.StateManager.State.Loading);
}

void (*Lyrics.StateManager.State.loading.modify(void *a1))(uint64_t **a1, char a2)
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
  *v3 = v1;
  v5 = *(*(type metadata accessor for Lyrics.StateManager.State.Loading(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[1] = swift_coroFrameAlloc();
    v4[2] = swift_coroFrameAlloc();
    v4[3] = swift_coroFrameAlloc();
    v4[4] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[1] = malloc(v5);
    v4[2] = malloc(v5);
    v4[3] = malloc(v5);
    v4[4] = malloc(v5);
    v6 = malloc(v5);
  }

  v4[5] = v6;
  sub_1003A0A4C(v1, v6, type metadata accessor for Lyrics.StateManager.State.Loading);
  return sub_1003998F0;
}

void sub_1003998F0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  if (a2)
  {
    v5 = v2[2];
    v4 = v2[3];
    v7 = *v2;
    v6 = v2[1];
    sub_1003A0A4C((*a1)[5], v5, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1003A0A4C(v7, v6, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1003A11A0(v5, v7, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1003A0A4C(v7, v4, type metadata accessor for Lyrics.StateManager.State.Loading);
    v8 = _s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v4, v6);
    sub_1003A0AB4(v4, type metadata accessor for Lyrics.StateManager.State.Loading);
    if ((v8 & 1) == 0)
    {
      sub_100399280();
    }

    v10 = v2[4];
    v9 = v2[5];
    v12 = v2[2];
    v11 = v2[3];
    v13 = v2[1];
    sub_1003A0AB4(v12, type metadata accessor for Lyrics.StateManager.State.Loading);
    v14 = v13;
    v15 = v9;
  }

  else
  {
    v17 = v2[3];
    v16 = v2[4];
    v18 = *v2;
    sub_1003A0A4C(*v2, v16, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1003A11A0(v3, v18, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1003A0A4C(v18, v17, type metadata accessor for Lyrics.StateManager.State.Loading);
    v19 = _s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v17, v16);
    sub_1003A0AB4(v17, type metadata accessor for Lyrics.StateManager.State.Loading);
    if ((v19 & 1) == 0)
    {
      sub_100399280();
    }

    v9 = v2[4];
    v14 = v2[5];
    v12 = v2[2];
    v11 = v2[3];
    v13 = v2[1];
    v15 = v14;
    v10 = v9;
  }

  sub_1003A0AB4(v14, type metadata accessor for Lyrics.StateManager.State.Loading);
  sub_1003A0AB4(v9, type metadata accessor for Lyrics.StateManager.State.Loading);
  free(v15);
  free(v10);
  free(v11);
  free(v12);
  free(v13);

  free(v2);
}

uint64_t Lyrics.StateManager.State.display.setter(uint64_t a1)
{
  v3 = type metadata accessor for Lyrics.StateManager.State.Display(0);
  __chkstk_darwin(v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v12 - v7;
  v9 = *(type metadata accessor for Lyrics.StateManager.State(0) + 20);
  sub_1003A0A4C(v1 + v9, v8, type metadata accessor for Lyrics.StateManager.State.Display);
  sub_1003A11A0(a1, v1 + v9, type metadata accessor for Lyrics.StateManager.State.Display);
  sub_1003A0A4C(v1 + v9, v5, type metadata accessor for Lyrics.StateManager.State.Display);
  if ((sub_10056E5E8() & 1) != 0 && v5[*(v3 + 20)] == v8[*(v3 + 20)])
  {
    v11 = v5[*(v3 + 24)];
    sub_1003A0AB4(v5, type metadata accessor for Lyrics.StateManager.State.Display);
    if (v11 == v8[*(v3 + 24)])
    {
      goto LABEL_5;
    }
  }

  else
  {
    sub_1003A0AB4(v5, type metadata accessor for Lyrics.StateManager.State.Display);
  }

  sub_100399280();
LABEL_5:
  sub_1003A0AB4(a1, type metadata accessor for Lyrics.StateManager.State.Display);
  return sub_1003A0AB4(v8, type metadata accessor for Lyrics.StateManager.State.Display);
}

void (*Lyrics.StateManager.State.display.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(type metadata accessor for Lyrics.StateManager.State.Display(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  v5 = v4;
  a1[2] = v4;
  v6 = type metadata accessor for Lyrics.StateManager.State(0);
  sub_1003A0A4C(v1 + *(v6 + 20), v5, type metadata accessor for Lyrics.StateManager.State.Display);
  return sub_100399D94;
}

void sub_100399D94(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    sub_1003A0A4C(*(a1 + 16), v2, type metadata accessor for Lyrics.StateManager.State.Display);
    Lyrics.StateManager.State.display.setter(v2);
    sub_1003A0AB4(v3, type metadata accessor for Lyrics.StateManager.State.Display);
  }

  else
  {
    Lyrics.StateManager.State.display.setter(*(a1 + 16));
  }

  free(v3);

  free(v2);
}

uint64_t Lyrics.StateManager.State.Loading.lyricsType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin(v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003A0A4C(v2, v6, type metadata accessor for Lyrics.StateManager.State.Loading);
  result = swift_getEnumCaseMultiPayload();
  v8 = 0uLL;
  if (!result)
  {
    result = sub_1003A0AB4(v6, type metadata accessor for Lyrics.StateManager.State.Loading);
    v8 = 0uLL;
    goto LABEL_5;
  }

  if (result != 1)
  {
LABEL_5:
    v10 = -1;
    v13 = 0uLL;
    goto LABEL_6;
  }

  v9 = *v6;
  v14 = *(v6 + 1);
  v15 = v9;
  v10 = v6[32];
  v11 = *(sub_100009DCC(&qword_1006EFD18) + 48);
  v12 = sub_100571A68();
  result = (*(*(v12 - 8) + 8))(&v6[v11], v12);
  v13 = v14;
  v8 = v15;
LABEL_6:
  *a1 = v8;
  *(a1 + 16) = v13;
  *(a1 + 32) = v10;
  return result;
}

uint64_t Lyrics.StateManager.State.Display.scenePhase.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10056E5F8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Lyrics.StateManager.State.Display.scenePhase.setter(uint64_t a1)
{
  v3 = sub_10056E5F8();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t Lyrics.StateManager.State.Display.sceneIsVisible.setter(char a1)
{
  result = type metadata accessor for Lyrics.StateManager.State.Display(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t Lyrics.StateManager.State.Display.hasAppeared.setter(char a1)
{
  result = type metadata accessor for Lyrics.StateManager.State.Display(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t static Lyrics.StateManager.State.Display.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_10056E5E8() & 1) != 0 && (v4 = type metadata accessor for Lyrics.StateManager.State.Display(0), *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20))))
  {
    v5 = *(a1 + *(v4 + 24)) ^ *(a2 + *(v4 + 24)) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_10039A208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_10056E5E8() & 1) != 0 && *(a1 + *(a3 + 20)) == *(a2 + *(a3 + 20)))
  {
    v6 = *(a1 + *(a3 + 24)) ^ *(a2 + *(a3 + 24)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_10039A288(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return _s7LyricsX0A0C11MusicCoreUIE12StateManagerC0A4TypeO2eeoiySbAH_AHtFZ_0(v5, v7) & 1;
}

uint64_t sub_10039A2FC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentLyricsTask;
  if (!*(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentLyricsTask))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1003A1FD4(&qword_1006EFD10, type metadata accessor for Lyrics.StateManager);
    sub_10056CEE8();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = sub_100572F98();

  if ((v4 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + v3) = a1;
}

uint64_t sub_10039A4A0()
{
  swift_getKeyPath();
  sub_1003A1FD4(&qword_1006EFD10, type metadata accessor for Lyrics.StateManager);
  sub_10056CEF8();
}

uint64_t sub_10039A544@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1003A1FD4(&qword_1006EFD10, type metadata accessor for Lyrics.StateManager);
  sub_10056CEF8();

  *a3 = *(v5 + *a2);
}

uint64_t sub_10039A624()
{
  swift_getKeyPath();
  sub_1003A1FD4(&qword_1006EFD10, type metadata accessor for Lyrics.StateManager);
  sub_10056CEE8();
}

uint64_t sub_10039A734()
{
  v1[74] = v0;
  sub_100009DCC(&qword_1006EFD30);
  v1[75] = swift_task_alloc();
  sub_100009DCC(&qword_1006EFD28);
  v1[76] = swift_task_alloc();
  v2 = sub_10056DF88();
  v1[77] = v2;
  v1[78] = *(v2 - 8);
  v1[79] = swift_task_alloc();
  v1[80] = swift_task_alloc();
  v1[81] = swift_task_alloc();
  v1[82] = swift_task_alloc();
  type metadata accessor for Lyrics.StateManager.State(0);
  v1[83] = swift_task_alloc();
  v1[84] = swift_task_alloc();
  v1[85] = swift_task_alloc();
  v1[86] = swift_task_alloc();
  v1[87] = swift_task_alloc();
  v1[88] = swift_task_alloc();
  v1[89] = swift_task_alloc();
  v1[90] = swift_task_alloc();
  v1[91] = swift_task_alloc();
  v1[92] = type metadata accessor for Lyrics.StateManager.State.Loading(0);
  v1[93] = swift_task_alloc();
  v1[94] = swift_task_alloc();
  v1[95] = swift_task_alloc();
  v1[96] = swift_task_alloc();
  v1[97] = swift_task_alloc();
  v1[98] = swift_task_alloc();
  v1[99] = swift_task_alloc();
  v1[100] = swift_task_alloc();
  v1[101] = swift_task_alloc();
  v1[102] = swift_task_alloc();
  v1[103] = swift_task_alloc();
  v1[104] = swift_task_alloc();
  v1[105] = swift_task_alloc();
  v1[106] = swift_task_alloc();
  v1[107] = swift_task_alloc();
  v1[108] = swift_task_alloc();
  sub_100009DCC(&qword_1006EFBE8);
  v1[109] = swift_task_alloc();
  v1[110] = swift_task_alloc();
  v3 = sub_100571A68();
  v1[111] = v3;
  v1[112] = *(v3 - 8);
  v1[113] = swift_task_alloc();
  v1[114] = swift_task_alloc();
  v1[115] = swift_task_alloc();
  v1[116] = swift_task_alloc();
  v1[117] = swift_task_alloc();
  v1[118] = swift_task_alloc();
  sub_100572F08();
  v1[119] = sub_100572EF8();
  v5 = sub_100572E78();
  v1[120] = v5;
  v1[121] = v4;

  return _swift_task_switch(sub_10039AB0C, v5, v4);
}

uint64_t sub_10039AB0C()
{
  v68 = v0;
  v1 = v0[112];
  v2 = v0[111];
  v3 = v0[110];
  v4 = v0[74];
  swift_getKeyPath();
  v0[122] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  v0[41] = v4;
  v0[123] = sub_1003A1FD4(&qword_1006EFD10, type metadata accessor for Lyrics.StateManager);
  sub_10056CEF8();

  v5 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__song;
  v0[124] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__song;
  swift_beginAccess();
  sub_10000CC8C(v4 + v5, v3, &qword_1006EFBE8);
  v6 = *(v1 + 48);
  v0[125] = v6;
  v0[126] = (v1 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v6(v3, 1, v2) == 1)
  {
    v7 = v0[110];
    v8 = v0[98];
    v66 = v0[97];
    v9 = v0[85];
    v10 = v0[74];

    sub_10001036C(v7, &qword_1006EFBE8);
    *v8 = 0;
    *(v8 + 8) = 2;
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    v0[73] = v10;
    sub_10056CEF8();

    v0[69] = v10;
    swift_getKeyPath();
    sub_10056CF18();

    v11 = v10 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
    swift_beginAccess();
    sub_1003A0A4C(v11, v9, type metadata accessor for Lyrics.StateManager.State);
    sub_1003A0A4C(v9, v66, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1003A11A0(v8, v9, type metadata accessor for Lyrics.StateManager.State.Loading);
    if ((_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v9, v66) & 1) == 0)
    {
      sub_100399280();
    }

    v12 = v0[98];
    v13 = v0[90];
    v14 = v0[85];
    v15 = v0[74];
    sub_1003A0AB4(v0[97], type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1003A0AB4(v12, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1003A0A4C(v11, v13, type metadata accessor for Lyrics.StateManager.State);
    swift_beginAccess();
    sub_1003A11A0(v14, v11, type metadata accessor for Lyrics.StateManager.State);
    swift_endAccess();
    sub_1003945AC(v13);
    sub_1003A0AB4(v13, type metadata accessor for Lyrics.StateManager.State);
    sub_1003A0AB4(v14, type metadata accessor for Lyrics.StateManager.State);
    v0[63] = v15;
    swift_getKeyPath();
    sub_10056CF08();

    v16 = v0[1];

    return v16();
  }

  else
  {
    v18 = v0[118];
    v19 = v0[112];
    v20 = v0[111];
    v21 = v0[110];
    v22 = v0[108];
    v63 = v0[107];
    v23 = v0[91];
    v24 = v0[74];
    v25 = *(v19 + 32);
    v0[127] = v25;
    v0[128] = (v19 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v25(v18, v21, v20);
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    v0[58] = v24;
    sub_10056CEF8();

    v0[55] = v24;
    swift_getKeyPath();
    sub_10056CF18();

    v26 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
    v0[129] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
    swift_beginAccess();
    sub_1003A0A4C(v24 + v26, v23, type metadata accessor for Lyrics.StateManager.State);
    sub_1003A0A4C(v23, v63, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1003A11A0(v22, v23, type metadata accessor for Lyrics.StateManager.State.Loading);
    if ((_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v23, v63) & 1) == 0)
    {
      sub_100399280();
    }

    v61 = v0[117];
    v64 = v0[118];
    v27 = v0[112];
    v28 = v0[108];
    v29 = v0[91];
    v30 = v0[90];
    v56 = v0[82];
    v31 = v0[78];
    v57 = v0[77];
    v59 = v0[111];
    v32 = v0[74];
    sub_1003A0AB4(v0[107], type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1003A0AB4(v28, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1003A0A4C(v24 + v26, v30, type metadata accessor for Lyrics.StateManager.State);
    swift_beginAccess();
    sub_1003A11A0(v29, v24 + v26, type metadata accessor for Lyrics.StateManager.State);
    swift_endAccess();
    sub_1003945AC(v30);
    sub_1003A0AB4(v30, type metadata accessor for Lyrics.StateManager.State);
    sub_1003A0AB4(v29, type metadata accessor for Lyrics.StateManager.State);
    v0[52] = v32;
    swift_getKeyPath();
    sub_10056CF08();

    v33 = Logger.lyrics.unsafeMutableAddressor();
    v0[130] = v33;
    v34 = *(v31 + 16);
    v0[131] = v34;
    v0[132] = (v31 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v34(v56, v33, v57);
    v35 = *(v27 + 16);
    v0[133] = v35;
    v0[134] = (v27 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v35(v61, v64, v59);
    v36 = sub_10056DF68();
    v37 = sub_100573448();
    v38 = os_log_type_enabled(v36, v37);
    v39 = v0[117];
    v40 = v0[112];
    v41 = v0[111];
    v42 = v0[82];
    v43 = v0[78];
    v44 = v0[77];
    if (v38)
    {
      v45 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v67 = v65;
      *v45 = 136446210;
      sub_1003A1FD4(&qword_1006F02F8, &type metadata accessor for Song);
      v60 = v44;
      v62 = v42;
      v46 = sub_100574408();
      v48 = v47;
      v58 = v37;
      v49 = *(v40 + 8);
      v49(v39, v41);
      v50 = sub_10037A2AC(v46, v48, &v67);

      *(v45 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v36, v58, "[State] Loading lyrics song %{public}s", v45, 0xCu);
      sub_100010474(v65);

      v51 = *(v43 + 8);
      v51(v62, v60);
    }

    else
    {

      v49 = *(v40 + 8);
      v49(v39, v41);
      v51 = *(v43 + 8);
      v51(v42, v44);
    }

    v0[136] = v49;
    v0[135] = v51;
    v52 = v0[74];
    swift_getKeyPath();
    v0[50] = v52;
    sub_10056CEF8();

    v53 = *(v52 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__loader);
    v0[137] = v53;
    v53;
    v54 = swift_task_alloc();
    v0[138] = v54;
    *v54 = v0;
    v54[1] = sub_10039B5D4;
    v55 = v0[118];

    return LyricsLoader.loadLyrics(for:)(v55);
  }
}

uint64_t sub_10039B5D4(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *v4;
  *(v5 + 1112) = a1;
  *(v5 + 1120) = a2;
  *(v5 + 323) = a3;
  *(v5 + 1128) = v3;

  if (v3)
  {
    v6 = *(v5 + 968);
    v7 = *(v5 + 960);
    v8 = sub_10039CD10;
  }

  else
  {

    v6 = *(v5 + 968);
    v7 = *(v5 + 960);
    v8 = sub_10039B704;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_10039B704()
{
  v163 = v0;

  if (sub_100572FC8())
  {
    v1 = *(v0 + 1120);
    v2 = *(v0 + 1112);
    v3 = *(v0 + 323);
    (*(v0 + 1088))(*(v0 + 944), *(v0 + 888));
    sub_10001B5A4(v2, v1, v3 & 1);
    goto LABEL_36;
  }

  v4 = *(v0 + 1000);
  v5 = *(v0 + 992);
  v6 = *(v0 + 888);
  v7 = *(v0 + 872);
  v8 = *(v0 + 592);
  swift_getKeyPath();
  *(v0 + 424) = v8;
  sub_10056CEF8();

  sub_10000CC8C(v8 + v5, v7, &qword_1006EFBE8);
  if (v4(v7, 1, v6) == 1)
  {
    v9 = *(v0 + 1120);
    v10 = *(v0 + 1112);
    v11 = *(v0 + 872);
    v12 = *(v0 + 323);
    (*(v0 + 1088))(*(v0 + 944), *(v0 + 888));
    sub_10001B5A4(v10, v9, v12 & 1);
    sub_10001036C(v11, &qword_1006EFBE8);
    goto LABEL_36;
  }

  (*(v0 + 1016))(*(v0 + 928), *(v0 + 872), *(v0 + 888));
  sub_1003A1FD4(&qword_1006F0300, &type metadata accessor for Song);
  v13 = sub_1005712E8();
  v14 = *(v0 + 323);
  v15 = *(v0 + 1120);
  v16 = *(v0 + 1112);
  if ((v13 & 1) == 0)
  {
    v53 = *(v0 + 1088);
    v54 = *(v0 + 944);
    v55 = *(v0 + 928);
    v56 = *(v0 + 888);
    sub_10001B5A4(*(v0 + 1112), *(v0 + 1120), v14 & 1);
    v53(v55, v56);
    v53(v54, v56);
    goto LABEL_36;
  }

  v17 = *(v0 + 1064);
  v18 = *(v0 + 944);
  v19 = *(v0 + 920);
  v20 = *(v0 + 888);
  (*(v0 + 1048))(*(v0 + 648), *(v0 + 1040), *(v0 + 616));
  v17(v19, v18, v20);
  sub_10002AAC4(v16, v15, v14 & 1);
  v21 = sub_10056DF68();
  v22 = sub_100573448();
  sub_10001B5A4(v16, v15, v14 & 1);
  if (os_log_type_enabled(v21, v22))
  {
    v23 = *(v0 + 1112);
    v24 = *(v0 + 920);
    v130 = *(v0 + 1088);
    v25 = *(v0 + 888);
    v149 = *(v0 + 648);
    v156 = *(v0 + 1080);
    v134 = *(v0 + 1120);
    v143 = *(v0 + 616);
    v132 = *(v0 + 323);
    v26 = swift_slowAlloc();
    v162[0] = swift_slowAlloc();
    *v26 = 136446466;
    sub_1003A1FD4(&qword_1006F02F8, &type metadata accessor for Song);
    v27 = sub_100574408();
    v29 = v28;
    v130(v24, v25);
    v30 = sub_10037A2AC(v27, v29, v162);

    *(v26 + 4) = v30;
    *(v26 + 12) = 2082;
    *(v0 + 304) = v23;
    *(v0 + 312) = v134;
    *(v0 + 320) = v132 & 1;
    sub_10002AAC4(v23, v134, v132 & 1);
    v31 = sub_100572978();
    v33 = sub_10037A2AC(v31, v32, v162);

    *(v26 + 14) = v33;
    _os_log_impl(&_mh_execute_header, v21, v22, "[State] Successfully loaded lyrics for song %{public}s with result %{public}s", v26, 0x16u);
    swift_arrayDestroy();

    v156(v149, v143);
    if ((*(v0 + 323) & 1) == 0)
    {
LABEL_8:
      v34 = *(v0 + 1120);
      v35 = *(v0 + 1112);
      v36 = *(v0 + 1064);
      v150 = *(v0 + 1032);
      v37 = *(v0 + 944);
      v38 = *(v0 + 888);
      v39 = *(v0 + 848);
      v157 = *(v0 + 840);
      v40 = *(v0 + 712);
      v41 = *(v0 + 592);
      v42 = *(sub_100009DCC(&qword_1006EFD18) + 48);
      *v39 = v35;
      *(v39 + 8) = v34;
      *(v39 + 16) = _swiftEmptyArrayStorage;
      *(v39 + 24) = 0;
      *(v39 + 32) = 0;
      v36(v39 + v42, v37, v38);
      swift_storeEnumTagMultiPayload();
      swift_getKeyPath();
      *(v0 + 568) = v41;

      sub_10056CEF8();

      *(v0 + 576) = v41;
      swift_getKeyPath();
      sub_10056CF18();

      sub_1003A0A4C(v41 + v150, v40, type metadata accessor for Lyrics.StateManager.State);
      sub_1003A0A4C(v40, v157, type metadata accessor for Lyrics.StateManager.State.Loading);
      sub_1003A11A0(v39, v40, type metadata accessor for Lyrics.StateManager.State.Loading);
      if ((_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v40, v157) & 1) == 0)
      {
        sub_100399280();
      }

      v43 = *(v0 + 1088);
      v44 = *(v0 + 1032);
      v151 = *(v0 + 1120);
      v158 = *(v0 + 944);
      v138 = *(v0 + 1112);
      v144 = *(v0 + 928);
      v45 = *(v0 + 888);
      v46 = *(v0 + 848);
      v47 = *(v0 + 720);
      v48 = *(v0 + 712);
      v49 = *(v0 + 592);
      sub_1003A0AB4(*(v0 + 840), type metadata accessor for Lyrics.StateManager.State.Loading);
      sub_1003A0AB4(v46, type metadata accessor for Lyrics.StateManager.State.Loading);
      sub_1003A0A4C(v49 + v44, v47, type metadata accessor for Lyrics.StateManager.State);
      swift_beginAccess();
      sub_1003A11A0(v48, v49 + v44, type metadata accessor for Lyrics.StateManager.State);
      swift_endAccess();
      sub_1003945AC(v47);
      sub_1003A0AB4(v47, type metadata accessor for Lyrics.StateManager.State);
      sub_1003A0AB4(v48, type metadata accessor for Lyrics.StateManager.State);
      *(v0 + 336) = v49;
      swift_getKeyPath();
      sub_10056CF08();

      v50 = v138;
      v51 = v151;
      v52 = 0;
LABEL_31:
      sub_10001B5A4(v50, v51, v52);
      v43(v144, v45);
      v43(v158, v45);
      goto LABEL_36;
    }
  }

  else
  {
    v57 = *(v0 + 1088);
    v58 = *(v0 + 1080);
    v59 = *(v0 + 920);
    v60 = *(v0 + 888);
    v61 = *(v0 + 648);
    v62 = *(v0 + 616);

    v57(v59, v60);
    v58(v61, v62);
    if ((*(v0 + 323) & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v63 = *(v0 + 1112);
  v64 = *(v0 + 592);
  swift_getKeyPath();
  *(v0 + 432) = v64;
  sub_10056CEF8();

  v65 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__tracklist;
  swift_beginAccess();
  v66 = *(v64 + v65);
  if (v66)
  {
    v67 = v66;
    if ((MPCPlayerResponseTracklist.playingItemSupportsTimeSyncedLyrics.getter() & 1) == 0)
    {
      v110 = *(v0 + 1112);
      v133 = *(v0 + 1120);
      v129 = *(v0 + 1064);
      v147 = *(v0 + 1032);
      v111 = *(v0 + 944);
      v112 = *(v0 + 888);
      v113 = *(v0 + 832);
      v154 = *(v0 + 824);
      v161 = v67;
      v114 = *(v0 + 704);
      v115 = *(v0 + 592);
      v116 = *(sub_100009DCC(&qword_1006EFD18) + 48);
      v117 = (*(*v63 + 384))();
      v118 = *&v63[OBJC_IVAR____TtC7LyricsX6Lyrics_songwriters];
      *v113 = v117;
      *(v113 + 8) = v119;
      *(v113 + 16) = v118;
      *(v113 + 24) = v110;
      *(v113 + 32) = 0;
      v129(v113 + v116, v111, v112);
      swift_storeEnumTagMultiPayload();
      swift_getKeyPath();
      *(v0 + 536) = v115;
      sub_10002AAC4(v110, v133, 1);

      sub_10056CEF8();

      *(v0 + 544) = v115;
      swift_getKeyPath();
      sub_10056CF18();

      sub_1003A0A4C(v115 + v147, v114, type metadata accessor for Lyrics.StateManager.State);
      sub_1003A0A4C(v114, v154, type metadata accessor for Lyrics.StateManager.State.Loading);
      sub_1003A11A0(v113, v114, type metadata accessor for Lyrics.StateManager.State.Loading);
      if ((_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v114, v154) & 1) == 0)
      {
        sub_100399280();
      }

      v120 = *(v0 + 1088);
      v121 = *(v0 + 1032);
      v148 = *(v0 + 1120);
      v155 = *(v0 + 944);
      v137 = *(v0 + 1112);
      v142 = *(v0 + 928);
      v122 = *(v0 + 888);
      v123 = *(v0 + 832);
      v124 = *(v0 + 720);
      v125 = *(v0 + 704);
      v126 = *(v0 + 592);
      sub_1003A0AB4(*(v0 + 824), type metadata accessor for Lyrics.StateManager.State.Loading);
      sub_1003A0AB4(v123, type metadata accessor for Lyrics.StateManager.State.Loading);
      sub_1003A0A4C(v126 + v121, v124, type metadata accessor for Lyrics.StateManager.State);
      swift_beginAccess();
      sub_1003A11A0(v125, v126 + v121, type metadata accessor for Lyrics.StateManager.State);
      swift_endAccess();
      sub_1003945AC(v124);
      sub_1003A0AB4(v124, type metadata accessor for Lyrics.StateManager.State);
      sub_1003A0AB4(v125, type metadata accessor for Lyrics.StateManager.State);
      *(v0 + 560) = v126;
      swift_getKeyPath();
      sub_10056CF08();

      sub_10001B5A4(v137, v148, 1);
      v120(v142, v122);
      v120(v155, v122);
      goto LABEL_36;
    }
  }

  v68 = v63;
  if (v63[56] - 1 > 1)
  {
    v95 = *(v0 + 1112);
    v136 = *(v0 + 1120);
    v131 = *(v0 + 1064);
    v152 = *(v0 + 1032);
    v96 = *(v0 + 944);
    v97 = *(v0 + 888);
    v98 = *(v0 + 800);
    v160 = *(v0 + 792);
    v99 = *(v0 + 688);
    v100 = *(v0 + 592);
    v101 = *(sub_100009DCC(&qword_1006EFD18) + 48);
    v102 = (*(*v68 + 384))();
    v103 = *&v68[OBJC_IVAR____TtC7LyricsX6Lyrics_songwriters];
    *v98 = v102;
    *(v98 + 8) = v104;
    *(v98 + 16) = v103;
    *(v98 + 24) = v95;
    *(v98 + 32) = 0;
    v131(v98 + v101, v96, v97);
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    *(v0 + 448) = v100;
    sub_10002AAC4(v95, v136, 1);

    sub_10056CEF8();

    *(v0 + 456) = v100;
    swift_getKeyPath();
    sub_10056CF18();

    sub_1003A0A4C(v100 + v152, v99, type metadata accessor for Lyrics.StateManager.State);
    sub_1003A0A4C(v99, v160, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1003A11A0(v98, v99, type metadata accessor for Lyrics.StateManager.State.Loading);
    if ((_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v99, v160) & 1) == 0)
    {
      sub_100399280();
    }

    v43 = *(v0 + 1088);
    v105 = *(v0 + 1032);
    v153 = *(v0 + 1120);
    v158 = *(v0 + 944);
    v141 = *(v0 + 1112);
    v144 = *(v0 + 928);
    v45 = *(v0 + 888);
    v106 = *(v0 + 800);
    v107 = *(v0 + 720);
    v108 = *(v0 + 688);
    v109 = *(v0 + 592);
    sub_1003A0AB4(*(v0 + 792), type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1003A0AB4(v106, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1003A0A4C(v109 + v105, v107, type metadata accessor for Lyrics.StateManager.State);
    swift_beginAccess();
    sub_1003A11A0(v108, v109 + v105, type metadata accessor for Lyrics.StateManager.State);
    swift_endAccess();
    sub_1003945AC(v107);
    sub_1003A0AB4(v107, type metadata accessor for Lyrics.StateManager.State);
    sub_1003A0AB4(v108, type metadata accessor for Lyrics.StateManager.State);
    *(v0 + 472) = v109;
    swift_getKeyPath();
    sub_10056CF08();

    v50 = v141;
    v51 = v153;
    v52 = 1;
    goto LABEL_31;
  }

  v69 = *(**LyricsOptionsManager.shared.unsafeMutableAddressor() + 248);

  if (v69(0))
  {
    v70 = *(v0 + 608);
    v71 = *(v0 + 592);
    (*(*v63 + 288))();
    swift_getKeyPath();
    v72 = swift_task_alloc();
    *(v72 + 16) = v71;
    *(v72 + 24) = v70;
    *(v0 + 528) = v71;
    sub_10056CEE8();

    sub_10001036C(v70, &qword_1006EFD28);
  }

  v73 = *(v0 + 592);
  swift_getKeyPath();
  *(v0 + 480) = v73;
  sub_10056CEF8();

  v74 = *(v64 + v65);
  if (v74 && (v75 = [v74 vocalsControlCommand]) != 0 && (v76 = objc_msgSend(v75, "isActive"), swift_unknownObjectRelease(), v76) && (v69(2) & 1) == 0 || (v69(1) & 1) != 0)
  {
    v77 = *(v0 + 600);
    v78 = *(v0 + 592);
    (*(*v63 + 312))();
    swift_getKeyPath();
    v79 = swift_task_alloc();
    *(v79 + 16) = v78;
    *(v79 + 24) = v77;
    *(v0 + 520) = v78;
    sub_10056CEE8();

    sub_10001036C(v77, &qword_1006EFD30);
  }

  v80 = *(v0 + 1112);
  v81 = *(v0 + 1064);
  v139 = *(v0 + 1032);
  v82 = *(v0 + 944);
  v83 = *(v0 + 888);
  v84 = *(v0 + 816);
  v145 = *(v0 + 808);
  v85 = *(v0 + 696);
  v86 = *(v0 + 592);
  v87 = *(sub_100009DCC(&qword_1006EFD18) + 48);
  *v84 = v80;
  *(v84 + 8) = 0;
  *(v84 + 16) = 0;
  *(v84 + 24) = 0;
  *(v84 + 32) = 1;
  v81(v84 + v87, v82, v83);
  swift_storeEnumTagMultiPayload();
  swift_getKeyPath();
  *(v0 + 488) = v86;

  sub_10056CEF8();

  *(v0 + 496) = v86;
  swift_getKeyPath();
  sub_10056CF18();

  sub_1003A0A4C(v86 + v139, v85, type metadata accessor for Lyrics.StateManager.State);
  sub_1003A0A4C(v85, v145, type metadata accessor for Lyrics.StateManager.State.Loading);
  sub_1003A11A0(v84, v85, type metadata accessor for Lyrics.StateManager.State.Loading);
  if ((_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v85, v145) & 1) == 0)
  {
    sub_100399280();
  }

  v88 = *(v0 + 1088);
  v89 = *(v0 + 1032);
  v159 = *(v0 + 944);
  v140 = *(v0 + 928);
  v146 = *(v0 + 1120);
  v135 = *(v0 + 1112);
  v90 = *(v0 + 888);
  v91 = *(v0 + 816);
  v92 = *(v0 + 720);
  v93 = *(v0 + 696);
  v94 = *(v0 + 592);
  sub_1003A0AB4(*(v0 + 808), type metadata accessor for Lyrics.StateManager.State.Loading);
  sub_1003A0AB4(v91, type metadata accessor for Lyrics.StateManager.State.Loading);
  sub_1003A0A4C(v94 + v89, v92, type metadata accessor for Lyrics.StateManager.State);
  swift_beginAccess();
  sub_1003A11A0(v93, v94 + v89, type metadata accessor for Lyrics.StateManager.State);
  swift_endAccess();
  sub_1003945AC(v92);
  sub_1003A0AB4(v92, type metadata accessor for Lyrics.StateManager.State);
  sub_1003A0AB4(v93, type metadata accessor for Lyrics.StateManager.State);
  *(v0 + 512) = v94;
  swift_getKeyPath();
  sub_10056CF08();

  sub_10001B5A4(v135, v146, 1);
  v88(v140, v90);
  v88(v159, v90);
LABEL_36:

  v127 = *(v0 + 8);

  return v127();
}

uint64_t sub_10039CD10()
{
  v87 = v0;
  v1 = *(v0 + 1128);
  v2 = *(v0 + 1096);

  *(v0 + 360) = v1;
  swift_errorRetain();
  sub_100009DCC(&qword_1006F47F0);
  v3 = swift_dynamicCast();
  v77 = *(v0 + 1064);
  v4 = *(v0 + 1048);
  v5 = *(v0 + 1040);
  v6 = *(v0 + 944);
  v7 = *(v0 + 888);
  v8 = *(v0 + 616);
  if (v3)
  {
    v9 = *(v0 + 912);
    v10 = *(v0 + 640);

    v74 = *(v0 + 321);
    v4(v10, v5, v8);
    v77(v9, v6, v7);
    v11 = sub_10056DF68();
    v12 = sub_100573448();
    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 1088);
    v15 = *(v0 + 1080);
    v16 = *(v0 + 912);
    v17 = *(v0 + 888);
    v18 = *(v0 + 640);
    v19 = *(v0 + 616);
    if (v13)
    {
      v78 = *(v0 + 640);
      v20 = swift_slowAlloc();
      v86[0] = swift_slowAlloc();
      *v20 = 136446466;
      sub_1003A1FD4(&qword_1006F02F8, &type metadata accessor for Song);
      v69 = v19;
      v71 = v15;
      v21 = sub_100574408();
      v23 = v22;
      v14(v16, v17);
      v24 = sub_10037A2AC(v21, v23, v86);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2082;
      *(v0 + 322) = v74;
      v25 = sub_100572978();
      v27 = sub_10037A2AC(v25, v26, v86);

      *(v20 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v11, v12, "[State] Failed to load lyrics for song %{public}s — Error = %{public}s", v20, 0x16u);
      swift_arrayDestroy();

      v71(v78, v69);
    }

    else
    {

      v14(v16, v17);
      v15(v18, v19);
    }

    v82 = *(v0 + 1032);
    v42 = *(v0 + 768);
    v43 = *(v0 + 760);
    v44 = *(v0 + 672);
    v45 = *(v0 + 592);
    *v42 = v74;
    *(v42 + 8) = 0;
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    *(v0 + 384) = v45;
    sub_10056CEF8();

    *(v0 + 392) = v45;
    swift_getKeyPath();
    sub_10056CF18();

    sub_1003A0A4C(v45 + v82, v44, type metadata accessor for Lyrics.StateManager.State);
    sub_1003A0A4C(v44, v43, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1003A11A0(v42, v44, type metadata accessor for Lyrics.StateManager.State.Loading);
    if ((_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v44, v43) & 1) == 0)
    {
      sub_100399280();
    }

    v46 = *(v0 + 1032);
    v80 = *(v0 + 944);
    v83 = *(v0 + 1088);
    v75 = *(v0 + 888);
    v47 = *(v0 + 768);
    v48 = *(v0 + 720);
    v49 = *(v0 + 672);
    v50 = *(v0 + 592);
    sub_1003A0AB4(*(v0 + 760), type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1003A0AB4(v47, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1003A0A4C(v50 + v46, v48, type metadata accessor for Lyrics.StateManager.State);
    swift_beginAccess();
    sub_1003A11A0(v49, v50 + v46, type metadata accessor for Lyrics.StateManager.State);
    swift_endAccess();
    sub_1003945AC(v48);
    sub_1003A0AB4(v48, type metadata accessor for Lyrics.StateManager.State);
    sub_1003A0AB4(v49, type metadata accessor for Lyrics.StateManager.State);
    *(v0 + 408) = v50;
    swift_getKeyPath();
    sub_10056CF08();

    v83(v80, v75);
  }

  else
  {
    v28 = *(v0 + 904);
    v29 = *(v0 + 632);

    v4(v29, v5, v8);
    v77(v28, v6, v7);
    swift_errorRetain();
    v30 = sub_10056DF68();
    v31 = sub_100573448();

    if (os_log_type_enabled(v30, v31))
    {
      v68 = *(v0 + 1088);
      v70 = *(v0 + 1128);
      v32 = *(v0 + 904);
      v33 = *(v0 + 888);
      v79 = *(v0 + 632);
      v81 = *(v0 + 1080);
      v72 = *(v0 + 616);
      v34 = swift_slowAlloc();
      v86[0] = swift_slowAlloc();
      *v34 = 136446466;
      sub_1003A1FD4(&qword_1006F02F8, &type metadata accessor for Song);
      v35 = sub_100574408();
      v37 = v36;
      v68(v32, v33);
      v38 = sub_10037A2AC(v35, v37, v86);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2082;
      *(v0 + 376) = v70;
      swift_errorRetain();
      v39 = sub_100572978();
      v41 = sub_10037A2AC(v39, v40, v86);

      *(v34 + 14) = v41;
      _os_log_impl(&_mh_execute_header, v30, v31, "[State] Failed to load lyrics for song %{public}s — Error = %{public}s", v34, 0x16u);
      swift_arrayDestroy();

      v81(v79, v72);
    }

    else
    {
      v51 = *(v0 + 1088);
      v52 = *(v0 + 1080);
      v53 = *(v0 + 904);
      v54 = *(v0 + 888);
      v55 = *(v0 + 632);
      v56 = *(v0 + 616);

      v51(v53, v54);
      v52(v55, v56);
    }

    v84 = *(v0 + 1032);
    v57 = *(v0 + 752);
    v58 = *(v0 + 744);
    v59 = *(v0 + 664);
    v60 = *(v0 + 592);
    *v57 = 1;
    *(v57 + 8) = 2;
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    *(v0 + 344) = v60;
    sub_10056CEF8();

    *(v0 + 352) = v60;
    swift_getKeyPath();
    sub_10056CF18();

    sub_1003A0A4C(v60 + v84, v59, type metadata accessor for Lyrics.StateManager.State);
    sub_1003A0A4C(v59, v58, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1003A11A0(v57, v59, type metadata accessor for Lyrics.StateManager.State.Loading);
    if ((_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v59, v58) & 1) == 0)
    {
      sub_100399280();
    }

    v85 = *(v0 + 1088);
    v61 = *(v0 + 1032);
    v73 = *(v0 + 888);
    v76 = *(v0 + 944);
    v62 = *(v0 + 752);
    v63 = *(v0 + 720);
    v64 = *(v0 + 664);
    v65 = *(v0 + 592);
    sub_1003A0AB4(*(v0 + 744), type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1003A0AB4(v62, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1003A0A4C(v65 + v61, v63, type metadata accessor for Lyrics.StateManager.State);
    swift_beginAccess();
    sub_1003A11A0(v64, v65 + v61, type metadata accessor for Lyrics.StateManager.State);
    swift_endAccess();
    sub_1003945AC(v63);
    sub_1003A0AB4(v63, type metadata accessor for Lyrics.StateManager.State);
    sub_1003A0AB4(v64, type metadata accessor for Lyrics.StateManager.State);
    *(v0 + 368) = v65;
    swift_getKeyPath();
    sub_10056CF08();

    v85(v76, v73);
  }

  v66 = *(v0 + 8);

  return v66();
}

id sub_10039D91C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1003A1FD4(&qword_1006EFD10, type metadata accessor for Lyrics.StateManager);
  sub_10056CEF8();

  v4 = *(v2 + *a2);

  return v4;
}

id sub_10039D9CC@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1003A1FD4(&qword_1006EFD10, type metadata accessor for Lyrics.StateManager);
  sub_10056CEF8();

  v6 = *(v5 + *a2);
  *a3 = v6;

  return v6;
}

uint64_t sub_10039DA90()
{
  v1 = v0;
  v2 = sub_100009DCC(&qword_1006EF140);
  __chkstk_darwin(v2 - 8);
  v53 = &v47[-v3];
  v4 = type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin(v4);
  v6 = &v47[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_100009DCC(&qword_1006EFD38);
  __chkstk_darwin(v7 - 8);
  v9 = &v47[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v47[-v11];
  v13 = type metadata accessor for MetricsEvent.Page(0);
  v54 = *(*(v13 - 8) + 56);
  v54(v12, 1, 1, v13);
  swift_getKeyPath();
  v14 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  *&v57 = v1;
  sub_1003A1FD4(&qword_1006EFD10, type metadata accessor for Lyrics.StateManager);
  v55 = v14;
  sub_10056CEF8();

  v15 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
  swift_beginAccess();
  sub_1003A0A4C(v1 + v15, v6, type metadata accessor for Lyrics.StateManager.State.Loading);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v17 = *(v6 + 1);
      v18 = *(v6 + 2);
      v19 = *(v6 + 3);
      if (v6[32] != 1)
      {
        sub_1003A1DD4(*v6, v17, v18, v19, 0);
        sub_10001036C(v12, &qword_1006EFD38);
        v23 = sub_10056C8A8();
        v24 = *(*(v23 - 8) + 56);
        goto LABEL_24;
      }

      v49 = *v6;
      v50 = v17;
      v51 = v18;
      v52 = v19;
      swift_getKeyPath();
      *&v57 = v1;
      sub_10056CEF8();

      v20 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__tracklist;
      swift_beginAccess();
      v21 = *(v1 + v20);
      if (v21 && (v22 = [v21 vocalsControlCommand]) != 0)
      {
        v48 = [v22 isDisabled];
        swift_unknownObjectRelease();
      }

      else
      {
        v48 = 1;
      }

      swift_getKeyPath();
      *&v57 = v1;
      sub_10056CEF8();

      v25 = *(v1 + v20);
      if (v25)
      {
        v26 = [v25 playingItem];
        if (v26)
        {
          v27 = v26;
          v28 = [v26 metadataObject];

          if (v28)
          {
            v29 = [v28 innermostModelObject];

            objc_opt_self();
            v30 = swift_dynamicCastObjCClass();
            if (v30)
            {
              v31 = [v30 lyrics];

              if (v31)
              {
                v32 = [v31 hasStoreLyrics];

                v33 = v32 ^ 1;
LABEL_20:
                static ApplicationCapabilities.shared.getter(&v57);
                sub_100108D2C(&v57);
                if (*(v49 + 56))
                {
                  v34 = (v58 == 1) & ~(v48 | v33);
                  if (*(v49 + 56) == 1)
                  {
                    sub_1003A1DD4(v49, v50, v51, v52, 1);
                    sub_10001036C(v12, &qword_1006EFD38);
                    v35 = sub_10056C8A8();
                    v36 = v53;
                    (*(*(v35 - 8) + 56))(v53, 1, 1, v35);
                    v37 = 0x80000001005B83C0;
                    v46 = v34;
                    v38 = v9;
                    v39 = 0xD000000000000010;
                  }

                  else
                  {
                    sub_1003A1DD4(v49, v50, v51, v52, 1);
                    sub_10001036C(v12, &qword_1006EFD38);
                    v41 = sub_10056C8A8();
                    v36 = v53;
                    (*(*(v41 - 8) + 56))(v53, 1, 1, v41);
                    v46 = v34;
                    v39 = 0x795373636972794CLL;
                    v37 = 0xEE00656C62616C6CLL;
                    v38 = v9;
                  }

                  MetricsEvent.Page.init(pageIdentifier:pageType:pageURL:pageDetails:searchTerm:pageDisplayType:extRefUrl:attenuationAvailable:)(v39, v37, 0x6979616C50776F4ELL, 0xEA0000000000676ELL, v36, 0, 0, 0, v38, 1, 0, 0, v46);
                  goto LABEL_27;
                }

                sub_1003A1DD4(v49, v50, v51, v52, 1);
                sub_10001036C(v12, &qword_1006EFD38);
                v23 = sub_10056C8A8();
                v24 = *(*(v23 - 8) + 56);
LABEL_24:
                v40 = v53;
                v24(v53, 1, 1, v23);
                MetricsEvent.Page.init(pageIdentifier:pageType:pageURL:pageDetails:searchTerm:pageDisplayType:extRefUrl:attenuationAvailable:)(0x745373636972794CLL, 0xEC00000063697461, 0x6979616C50776F4ELL, 0xEA0000000000676ELL, v40, 0, 0, 0, v9, 1, 0, 0, 2);
LABEL_27:
                v54(v9, 0, 1, v13);
                sub_1003A1ED0(v9, v12);
                v42 = *(sub_100009DCC(&qword_1006EFD18) + 48);
                v43 = sub_100571A68();
                (*(*(v43 - 8) + 8))(&v6[v42], v43);
                goto LABEL_28;
              }
            }

            else
            {
            }
          }
        }
      }

      v33 = 1;
      goto LABEL_20;
    }

    sub_10001036C(v12, &qword_1006EFD38);
  }

  else
  {
    sub_10001036C(v12, &qword_1006EFD38);
    sub_1003A0AB4(v6, type metadata accessor for Lyrics.StateManager.State.Loading);
  }

  v54(v12, 1, 1, v13);
LABEL_28:
  sub_10000CC8C(v12, v9, &qword_1006EFD38);
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  v56 = v1;
  sub_10056CEE8();

  sub_10001036C(v12, &qword_1006EFD38);
  return sub_10001036C(v9, &qword_1006EFD38);
}

uint64_t sub_10039E3B4(uint64_t a1)
{
  v2 = sub_100009DCC(&qword_1006F02E8);
  __chkstk_darwin(v2 - 8);
  v170 = &v162 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v171 = &v162 - v5;
  v6 = sub_100009DCC(&qword_1006EFC58);
  __chkstk_darwin(v6 - 8);
  v8 = &v162 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v162 - v10;
  v12 = sub_100009DCC(&qword_1006EFD30);
  __chkstk_darwin(v12 - 8);
  v177 = &v162 - v13;
  v14 = sub_100009DCC(&qword_1006EFD28);
  __chkstk_darwin(v14 - 8);
  v176 = &v162 - v15;
  v16 = sub_100009DCC(&qword_1006EFBE8);
  __chkstk_darwin(v16 - 8);
  v175 = &v162 - v17;
  v188 = type metadata accessor for Lyrics.StateManager.State(0);
  __chkstk_darwin(v188);
  v189 = &v162 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v187 = &v162 - v20;
  __chkstk_darwin(v21);
  v173 = &v162 - v22;
  v192 = sub_10056DF88();
  v190 = *(v192 - 8);
  __chkstk_darwin(v192);
  v191 = &v162 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v179 = &v162 - v25;
  __chkstk_darwin(v26);
  v174 = &v162 - v27;
  v28 = sub_100009DCC(&qword_1006F2E20);
  __chkstk_darwin(v28 - 8);
  v180 = &v162 - v29;
  v184 = sub_10056CAA8();
  v183 = *(v184 - 8);
  __chkstk_darwin(v184);
  v182 = &v162 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = sub_10056E5F8();
  v185 = *(v186 - 8);
  __chkstk_darwin(v186);
  v32 = &v162 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin(v33);
  v35 = &v162 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_100571A68();
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = &v162 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a1;
  sub_1003A0A4C(a1, v35, type metadata accessor for Lyrics.StateManager.State.Loading);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1003A0AB4(v35, type metadata accessor for Lyrics.StateManager.State.Loading);
LABEL_11:
    v56 = v192;
    v55 = v190;
LABEL_12:
    v57 = Logger.lyrics.unsafeMutableAddressor();
    v58 = v191;
    (*(v55 + 16))(v191, v57, v56);
    v59 = v189;
    sub_1003A0A4C(v40, v189, type metadata accessor for Lyrics.StateManager.State);
    v60 = sub_10056DF68();
    v61 = sub_100573448();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = v55;
      v64 = swift_slowAlloc();
      v196 = v64;
      *v62 = 136446210;
      sub_1003A0A4C(v59, v187, type metadata accessor for Lyrics.StateManager.State);
      v65 = sub_100572978();
      v67 = v66;
      sub_1003A0AB4(v59, type metadata accessor for Lyrics.StateManager.State);
      v68 = sub_10037A2AC(v65, v67, &v196);

      *(v62 + 4) = v68;
      _os_log_impl(&_mh_execute_header, v60, v61, "Skipping Reporting lyrics for state=%{public}s", v62, 0xCu);
      sub_100010474(v64);

      return (*(v63 + 8))(v191, v192);
    }

    else
    {

      sub_1003A0AB4(v59, type metadata accessor for Lyrics.StateManager.State);
      return (*(v55 + 8))(v58, v56);
    }
  }

  v163 = v11;
  v162 = v8;
  v41 = *(v35 + 1);
  v178 = *v35;
  v172 = v41;
  v42 = *(v35 + 2);
  v43 = *(v35 + 3);
  v44 = v35[32];
  v45 = sub_100009DCC(&qword_1006EFD18);
  (*(v37 + 32))(v39, &v35[*(v45 + 48)], v36);
  if ((sub_100571A58() & 1) == 0)
  {
    (*(v37 + 8))(v39, v36);
    sub_1003A1DD4(v178, v172, v42, v43, v44);
    goto LABEL_11;
  }

  v164 = v42;
  v165 = v43;
  v167 = v44;
  v168 = v39;
  v166 = v37;
  v169 = v36;
  v46 = v40 + *(v188 + 20);
  v47 = v185;
  v48 = v186;
  (v185[13])(v32, enum case for ScenePhase.active(_:), v186);
  v49 = sub_10056E5E8();
  v47[1](v32, v48);
  if ((v49 & 1) == 0 || (v50 = type metadata accessor for Lyrics.StateManager.State.Display(0), *(v46 + *(v50 + 20)) != 1) || *(v46 + *(v50 + 24)) != 1)
  {
    sub_1003A1DD4(v178, v172, v164, v165, v167);
    (*(v166 + 8))(v168, v169);
    goto LABEL_11;
  }

  v51 = v180;
  sub_10000CC8C(v40 + *(v188 + 24), v180, &qword_1006F2E20);
  v52 = v183;
  v53 = v184;
  v54 = (*(v183 + 48))(v51, 1, v184);
  v55 = v190;
  if (v54 == 1)
  {
    (*(v166 + 8))(v168, v169);
    sub_1003A1DD4(v178, v172, v164, v165, v167);
    sub_10001036C(v51, &qword_1006F2E20);
    v56 = v192;
    goto LABEL_12;
  }

  (*(v52 + 32))(v182, v51, v53);
  v70 = Logger.lyrics.unsafeMutableAddressor();
  v71 = *(v55 + 16);
  v72 = v174;
  v186 = v70;
  v73 = v192;
  v185 = v71;
  v180 = v55 + 16;
  (v71)(v174);
  v74 = v173;
  sub_1003A0A4C(v40, v173, type metadata accessor for Lyrics.StateManager.State);
  v75 = sub_10056DF68();
  v76 = sub_100573448();
  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v196 = v78;
    *v77 = 136446210;
    sub_1003A0A4C(v74, v187, type metadata accessor for Lyrics.StateManager.State);
    v79 = sub_100572978();
    v81 = v80;
    v73 = v192;
    sub_1003A0AB4(v74, type metadata accessor for Lyrics.StateManager.State);
    v82 = v79;
    v55 = v190;
    v83 = sub_10037A2AC(v82, v81, &v196);

    *(v77 + 4) = v83;
    _os_log_impl(&_mh_execute_header, v75, v76, "Reporting lyrics for state=%{public}s", v77, 0xCu);
    sub_100010474(v78);
  }

  else
  {

    sub_1003A0AB4(v74, type metadata accessor for Lyrics.StateManager.State);
  }

  v188 = *(v55 + 8);
  (v188)(v72, v73);
  v84 = v165;
  sub_10056CA28();
  v86 = -v85;
  v87 = [objc_allocWithZone(MPCReportingLyricsViewEvent) init];
  v88 = v166;
  v89 = v175;
  v90 = v169;
  (*(v166 + 16))(v175, v168, v169);
  (*(v88 + 56))(v89, 0, 1, v90);
  sub_100573808();
  swift_getKeyPath();
  v91 = v181;
  v196 = v181;
  v189 = sub_1003A1FD4(&qword_1006EFD10, type metadata accessor for Lyrics.StateManager);
  sub_10056CEF8();

  v92 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__tracklist;
  swift_beginAccess();
  v93 = *(v91 + v92);
  if (v93)
  {
    v94 = v93;
    v95 = MPCPlayerResponseTracklist.currentPlayEvent.getter();
  }

  else
  {
    v95 = 0;
  }

  [v87 setModelPlayEvent:v95];

  [v87 setVisibleDuration:v86];
  swift_getKeyPath();
  v191 = v87;
  v96 = v181;
  v195[4] = v181;
  sub_10056CEF8();

  v97 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentTranslation;
  swift_beginAccess();
  v98 = v176;
  sub_10000CC8C(v96 + v97, v176, &qword_1006EFD28);
  v99 = type metadata accessor for Lyrics.Translation(0);
  v100 = (*(*(v99 - 8) + 48))(v98, 1, v99) != 1;
  sub_10001036C(v98, &qword_1006EFD28);
  [v191 setDisplayTranslationEnabled:v100];
  swift_getKeyPath();
  v195[1] = v96;
  sub_10056CEF8();

  v101 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentTransliteration;
  swift_beginAccess();
  v102 = v96 + v101;
  v103 = v177;
  sub_10000CC8C(v102, v177, &qword_1006EFD30);
  v104 = type metadata accessor for Lyrics.Transliteration(0);
  v105 = (*(*(v104 - 8) + 48))(v103, 1, v104) != 1;
  v106 = v191;
  sub_10001036C(v103, &qword_1006EFD30);
  [v106 setDisplayTransliterationEnabled:v105];
  if (v167)
  {
    v107 = v178;
    v108 = v192;
    if (*(v178 + 24))
    {
      sub_1003A1E74(v178, v172, v164, v84, 1);

      v109 = sub_100572898();
    }

    else
    {

      v109 = 0;
    }

    v118 = v171;
    [v191 setLyricsID:v109];

    (*(*v107 + 232))();
    v119 = sub_10056CC18();
    v120 = *(v119 - 8);
    if ((*(v120 + 48))(v118, 1, v119) == 1)
    {
      sub_10001036C(v118, &qword_1006F02E8);
      v121 = 0;
      v122 = v164;
      v123 = v172;
    }

    else
    {
      v124 = v163;
      sub_10056CBE8();
      (*(v120 + 8))(v118, v119);
      v125 = sub_10056CB38();
      v126 = *(v125 - 8);
      if ((*(v126 + 48))(v124, 1, v125) == 1)
      {
        sub_10001036C(v124, &qword_1006EFC58);
        v121 = 0;
      }

      else
      {
        sub_10056CB18();
        (*(v126 + 8))(v124, v125);
        v121 = sub_100572898();
      }

      v84 = v165;
      v122 = v164;
      v123 = v172;
      v108 = v192;
    }

    v106 = v191;
    [v191 setLanguage:v121];

    v130 = v178;
    [v106 setDisplayType:*(v178 + 56)];
    sub_1003A1DD4(v130, v123, v122, v84, 1);
    v110 = v179;
  }

  else
  {
    v110 = v179;
    v108 = v192;
    if (v84 && v84[3])
    {

      v111 = sub_100572898();
    }

    else
    {

      v111 = 0;
    }

    [v106 setLyricsID:v111];

    if (v84)
    {
      v112 = *(*v84 + 232);

      v114 = v170;
      v112(v113);

      v115 = sub_10056CC18();
      v116 = *(v115 - 8);
      if ((*(v116 + 48))(v114, 1, v115) == 1)
      {
        sub_10001036C(v114, &qword_1006F02E8);
        v117 = 0;
        v110 = v179;
        v108 = v192;
      }

      else
      {
        v127 = v162;
        sub_10056CBE8();
        (*(v116 + 8))(v114, v115);
        v128 = sub_10056CB38();
        v129 = *(v128 - 8);
        if ((*(v129 + 48))(v127, 1, v128) == 1)
        {
          sub_10001036C(v127, &qword_1006EFC58);
          v117 = 0;
        }

        else
        {
          sub_10056CB18();
          (*(v129 + 8))(v127, v128);
          v117 = sub_100572898();
        }

        v110 = v179;
        v84 = v165;
        v106 = v191;
        v108 = v192;
      }
    }

    else
    {
      v117 = 0;
    }

    [v106 setLanguage:v117];

    [v106 setDisplayType:0];
  }

  v131 = sub_100572898();
  [v106 setFeatureName:v131];

  [v106 setUserPreferenceSyllable:2];
  swift_getKeyPath();
  v132 = v181;
  v193 = v181;
  sub_10056CEF8();

  [*(v132 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__lyricsReportingController) recordLyricsViewEvent:v106];
  (v185)(v110, v186, v108);
  v133 = v106;
  v134 = sub_10056DF68();
  v135 = sub_100573448();

  if (os_log_type_enabled(v134, v135))
  {
    v136 = swift_slowAlloc();
    v195[0] = swift_slowAlloc();
    *v136 = 136446978;
    v193 = [v133 displayType];
    type metadata accessor for MPCReportingLyricsViewEventDisplayType(0);
    v137 = sub_100572978();
    v139 = sub_10037A2AC(v137, v138, v195);

    *(v136 + 4) = v139;
    *(v136 + 12) = 2082;
    v140 = [v133 lyricsID];
    if (v140)
    {
      v141 = v140;
      v142 = sub_1005728D8();
      v144 = v143;
    }

    else
    {
      v142 = 0;
      v144 = 0;
    }

    v193 = v142;
    v194 = v144;
    sub_100009DCC(&qword_1006F5C90);
    v147 = sub_100572978();
    v149 = sub_10037A2AC(v147, v148, v195);

    *(v136 + 14) = v149;
    *(v136 + 22) = 2082;
    [v133 visibleDuration];
    v150 = sub_100573058();
    v152 = sub_10037A2AC(v150, v151, v195);

    *(v136 + 24) = v152;
    *(v136 + 32) = 2082;
    v153 = [v133 modelSong];
    if (v153)
    {
      v154 = v153;
      v155 = [v153 humanDescription];

      v156 = sub_1005728D8();
      v158 = v157;
    }

    else
    {
      v156 = 0;
      v158 = 0;
    }

    v193 = v156;
    v194 = v158;
    v159 = sub_100572978();
    v161 = sub_10037A2AC(v159, v160, v195);

    *(v136 + 34) = v161;
    _os_log_impl(&_mh_execute_header, v134, v135, "Recorded PAF Event of type=%{public}s; id=%{public}s; duration=%{public}ss; song=%{public}s", v136, 0x2Au);
    swift_arrayDestroy();

    sub_1003A1DD4(v178, v172, v164, v165, v167);
    v145 = v179;
    v146 = v192;
  }

  else
  {

    sub_1003A1DD4(v178, v172, v164, v84, v167);
    v145 = v110;
    v146 = v108;
  }

  (v188)(v145, v146);
  (*(v183 + 8))(v182, v184);
  return (*(v166 + 8))(v168, v169);
}

uint64_t Lyrics.StateManager.deinit()
{
  sub_1003A0AB4(v0 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state, type metadata accessor for Lyrics.StateManager.State);

  sub_10001036C(v0 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__song, &qword_1006EFBE8);
  sub_10001036C(v0 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentTranslation, &qword_1006EFD28);
  sub_10001036C(v0 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentTransliteration, &qword_1006EFD30);
  sub_10001036C(v0 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__metricsPage, &qword_1006EFD38);

  v1 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  v2 = sub_10056CF38();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t Lyrics.StateManager.__deallocating_deinit()
{
  Lyrics.StateManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_10039FE3C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1003A250C;

  return v6(a1);
}

uint64_t _s7LyricsX0A0C11MusicCoreUIE12StateManagerC0A4TypeO2eeoiySbAH_AHtFZ_0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (a1[4])
  {
    if (*(a2 + 32))
    {
      return *a2 == v3;
    }

    return 0;
  }

  if (*(a2 + 32))
  {
    return 0;
  }

  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = v3 == *a2 && a1[1] == *(a2 + 8);
  if (!v9 && (sub_100574498() & 1) == 0 || (sub_1003DF5F8(v5, v7) & 1) == 0)
  {
    return 0;
  }

  if (v8)
  {
    v10 = v6 == v8;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  if (v6)
  {
    return v11;
  }

  else
  {
    return v8 == 0;
  }
}

uint64_t _s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO5ErrorO21__derived_enum_equalsySbAL_ALtFZ_0(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if (a2 == 1)
    {
      if (a4 == 1)
      {
        sub_1000D3B98(0, &unk_1006F6120);
        return sub_100573A58() & 1;
      }

      return 0;
    }

    if (a1)
    {
      return a4 == 2 && a3 == 1;
    }

    return a4 == 2 && !a3;
  }

  else
  {
    if (a4)
    {
      return 0;
    }

    return a3 == a1;
  }
}

uint64_t _s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100571A68();
  v41 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v40 = &v40 - v8;
  v9 = type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin(v9);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v40 - v13;
  v15 = sub_100009DCC(&qword_1006F0310);
  __chkstk_darwin(v15 - 8);
  v17 = &v40 - v16;
  v19 = &v40 + *(v18 + 56) - v16;
  sub_1003A0A4C(a1, &v40 - v16, type metadata accessor for Lyrics.StateManager.State.Loading);
  sub_1003A0A4C(a2, v19, type metadata accessor for Lyrics.StateManager.State.Loading);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1003A0A4C(v17, v14, type metadata accessor for Lyrics.StateManager.State.Loading);
    v30 = *v14;
    v31 = v14[8];
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1003A2228(v30, v31);
      goto LABEL_11;
    }

    v32 = *v19;
    v33 = v19[8];
    if (v31)
    {
      if (v31 == 1)
      {
        if (v33 == 1)
        {
          v34 = *v19;
          sub_1000D3B98(0, &unk_1006F6120);
          v35 = sub_100573A58();
          sub_1003A2228(v34, 1);
          sub_1003A2228(v30, 1);
          if ((v35 & 1) == 0)
          {
            goto LABEL_33;
          }

          goto LABEL_9;
        }

        sub_1003A2228(v32, v33);
        v32 = v30;
        LOBYTE(v33) = 1;
      }

      else if (v30)
      {
        if (v33 == 2 && v32 == 1)
        {
          goto LABEL_9;
        }
      }

      else if (v33 == 2 && v32 == 0)
      {
        goto LABEL_9;
      }
    }

    else if (!v19[8])
    {
      if (v32 != v30)
      {
        goto LABEL_33;
      }

LABEL_9:
      sub_1003A0AB4(v17, type metadata accessor for Lyrics.StateManager.State.Loading);
      v28 = 1;
      return v28 & 1;
    }

    sub_1003A2228(v32, v33);
    goto LABEL_33;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      goto LABEL_9;
    }

LABEL_11:
    sub_10001036C(v17, &qword_1006F0310);
LABEL_34:
    v28 = 0;
    return v28 & 1;
  }

  sub_1003A0A4C(v17, v11, type metadata accessor for Lyrics.StateManager.State.Loading);
  v21 = *(v11 + 1);
  v42[0] = *v11;
  v42[1] = v21;
  v43 = v11[32];
  v22 = *(sub_100009DCC(&qword_1006EFD18) + 48);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v41 + 8))(&v11[v22], v4);
    sub_1003A21F8(v42);
    goto LABEL_11;
  }

  v23 = *(v19 + 1);
  v44[0] = *v19;
  v44[1] = v23;
  v45 = v19[32];
  v24 = v41;
  v25 = *(v41 + 32);
  v26 = &v11[v22];
  v27 = v40;
  v25(v40, v26, v4);
  v25(v6, &v19[v22], v4);
  if ((_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0A4TypeO2eeoiySbAH_AHtFZ_0(v42, v44) & 1) == 0)
  {
    sub_1003A21F8(v44);
    sub_1003A21F8(v42);
    v36 = *(v24 + 8);
    v36(v6, v4);
    v36(v27, v4);
LABEL_33:
    sub_1003A0AB4(v17, type metadata accessor for Lyrics.StateManager.State.Loading);
    goto LABEL_34;
  }

  v28 = sub_1005719F8();
  sub_1003A21F8(v44);
  sub_1003A21F8(v42);
  v29 = *(v24 + 8);
  v29(v6, v4);
  v29(v27, v4);
  sub_1003A0AB4(v17, type metadata accessor for Lyrics.StateManager.State.Loading);
  return v28 & 1;
}

BOOL _s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V23__derived_struct_equalsySbAH_AHtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10056CAA8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100009DCC(&qword_1006F2E20);
  __chkstk_darwin(v8 - 8);
  v10 = &v26 - v9;
  v11 = sub_100009DCC(&qword_1006F3450);
  __chkstk_darwin(v11);
  v13 = &v26 - v12;
  if ((_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v27 = v5;
  v14 = type metadata accessor for Lyrics.StateManager.State(0);
  v15 = *(v14 + 20);
  v16 = a1 + v15;
  v17 = a2 + v15;
  if ((sub_10056E5E8() & 1) == 0)
  {
    return 0;
  }

  v18 = type metadata accessor for Lyrics.StateManager.State.Display(0);
  if (*(v16 + *(v18 + 20)) != *(v17 + *(v18 + 20)) || *(v16 + *(v18 + 24)) != *(v17 + *(v18 + 24)))
  {
    return 0;
  }

  v19 = *(v14 + 24);
  v20 = *(v11 + 48);
  sub_10000CC8C(a1 + v19, v13, &qword_1006F2E20);
  sub_10000CC8C(a2 + v19, &v13[v20], &qword_1006F2E20);
  v21 = v27;
  v22 = *(v27 + 48);
  if (v22(v13, 1, v4) == 1)
  {
    if (v22(&v13[v20], 1, v4) == 1)
    {
      sub_10001036C(v13, &qword_1006F2E20);
      return 1;
    }

    goto LABEL_10;
  }

  sub_10000CC8C(v13, v10, &qword_1006F2E20);
  if (v22(&v13[v20], 1, v4) == 1)
  {
    (*(v21 + 8))(v10, v4);
LABEL_10:
    sub_10001036C(v13, &qword_1006F3450);
    return 0;
  }

  (*(v21 + 32))(v7, &v13[v20], v4);
  sub_1003A1FD4(&qword_1006F3480, &type metadata accessor for Date);
  v24 = sub_1005727E8();
  v25 = *(v21 + 8);
  v25(v7, v4);
  v25(v10, v4);
  sub_10001036C(v13, &qword_1006F2E20);
  return (v24 & 1) != 0;
}

uint64_t sub_1003A0A4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003A0AB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1003A0B18(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  Lyrics.StateManager.tracklist.setter(v1);
}

uint64_t sub_1003A0BA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100571A68();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100009DCC(&qword_1006EFBE8);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_100009DCC(&qword_1006F0318);
  __chkstk_darwin(v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_10000CC8C(a1, &v21 - v12, &qword_1006EFBE8);
  sub_10000CC8C(a2, &v13[v15], &qword_1006EFBE8);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_10000CC8C(v13, v10, &qword_1006EFBE8);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_1003A1FD4(&qword_1006F0300, &type metadata accessor for Song);
      v18 = sub_1005727E8();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_10001036C(v13, &qword_1006EFBE8);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_10001036C(v13, &qword_1006F0318);
    v17 = 1;
    return v17 & 1;
  }

  sub_10001036C(v13, &qword_1006EFBE8);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1003A10EC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000CB98;

  return sub_1003991D4();
}

uint64_t sub_1003A11A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

void sub_1003A1210()
{
  type metadata accessor for Lyrics.StateManager.State(319);
  if (v0 <= 0x3F)
  {
    sub_1003A17E4(319, &qword_1006EFD78, &type metadata accessor for Song);
    if (v1 <= 0x3F)
    {
      sub_1003A17E4(319, &qword_1006EFD80, type metadata accessor for Lyrics.Translation);
      if (v2 <= 0x3F)
      {
        sub_1003A17E4(319, &qword_1006EFD88, type metadata accessor for Lyrics.Transliteration);
        if (v3 <= 0x3F)
        {
          sub_1003A17E4(319, &unk_1006EFD90, type metadata accessor for MetricsEvent.Page);
          if (v4 <= 0x3F)
          {
            sub_10056CF38();
            if (v5 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1003A1474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Lyrics.StateManager.State.Loading(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for Lyrics.StateManager.State.Display(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_100009DCC(&qword_1006F2E20);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_1003A15D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Lyrics.StateManager.State.Loading(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for Lyrics.StateManager.State.Display(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_100009DCC(&qword_1006F2E20);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

void sub_1003A172C()
{
  type metadata accessor for Lyrics.StateManager.State.Loading(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Lyrics.StateManager.State.Display(319);
    if (v1 <= 0x3F)
    {
      sub_1003A17E4(319, &unk_1006F0168, &type metadata accessor for Date);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1003A17E4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_100573C28();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1003A1838()
{
  sub_1003A18A4();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_1003A18A4()
{
  if (!qword_1006F0220)
  {
    sub_100571A68();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1006F0220);
    }
  }
}

uint64_t sub_1003A190C(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_1003A194C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10056E5F8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1003A1A2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10056E5F8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1003A1AE4()
{
  result = sub_10056E5F8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 initializeWithCopy for HitMyRectButton.HitRectAdjustment(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for HitMyRectButton.HitRectAdjustment(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for HitMyRectButton.HitRectAdjustment(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1003A1C2C()
{

  return swift_deallocObject();
}

uint64_t sub_1003A1C64(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000116F0;

  return sub_10000C500(a1, v4);
}

uint64_t sub_1003A1D1C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000CB98;

  return sub_10000C500(a1, v4);
}

uint64_t sub_1003A1DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {

    v5 = vars8;
  }
}

uint64_t sub_1003A1E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  else
  {
  }
}

uint64_t sub_1003A1ED0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006EFD38);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1003A1F40()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__lyricsReportingController);
  *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__lyricsReportingController) = v2;
  v4 = v2;
}

uint64_t sub_1003A1FD4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1003A2090()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__loader);
  *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__loader) = v2;
  v4 = v2;
}

uint64_t sub_1003A20D0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000116F0;

  return sub_1001BFD70(a1, v4);
}

uint64_t sub_1003A2188(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006F2E20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1003A2228(id a1, char a2)
{
  if (a2 == 1)
  {
  }
}

uint64_t sub_1003A223C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000116F0;

  return sub_10039FE3C(a1, v4);
}

uint64_t sub_1003A22F8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000116F0;

  return sub_100396E8C();
}

uint64_t sub_1003A23AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Lyrics.StateManager.State.Loading(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003A2410(void *a1)
{
  *(*(v1 + 16) + *a1) = *(v1 + 24);
}

uint64_t sub_1003A2454(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  result = swift_beginAccess();
  *(v2 + v4) = v3;
  return result;
}

char *VocalsAttenuationSlider.init(frame:)(double a1, double a2, double a3, double a4)
{
  v30.receiver = v4;
  v30.super_class = swift_getObjectType();
  v9 = objc_msgSendSuper2(&v30, "initWithFrame:", a1, a2, a3, a4);
  v10 = static AccessibilityIdentifier.named(_:)(0xD000000000000017, 0x80000001005B83E0);
  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v10, v11);
  if (qword_1006EE950 != -1)
  {
    swift_once();
  }

  v12 = qword_1006FDF00;
  LOBYTE(v50[0]) = 1;
  *&v33 = 0x6F68706F7263694DLL;
  *(&v33 + 1) = 0xEA0000000000656ELL;
  *&v34 = qword_1006FDF00;
  *(&v34 + 1) = 0x3FF0000000000000;
  v35 = 0;
  v36 = 0;
  v37 = 0x3FF0000000000000;
  v38 = 0;
  *&v39 = 0;
  *(&v39 + 1) = _swiftEmptyArrayStorage;
  v40 = 0;
  v41 = 0;
  v42 = 1;
  v43 = v33;
  v44 = v34;
  v49 = 1;
  v47 = v39;
  v48 = 0u;
  v13 = &v9[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageDefinition];
  v45 = 0u;
  v46 = 0x3FF0000000000000uLL;
  swift_beginAccess();
  v14 = *v13;
  v15 = *(v13 + 2);
  v31[1] = *(v13 + 1);
  v31[2] = v15;
  v31[0] = v14;
  v16 = *(v13 + 3);
  v17 = *(v13 + 4);
  v18 = *(v13 + 5);
  v32 = v13[96];
  v31[4] = v17;
  v31[5] = v18;
  v31[3] = v16;
  v20 = *(v13 + 4);
  v19 = *(v13 + 5);
  v21 = *(v13 + 3);
  v51 = v13[96];
  v50[4] = v20;
  v50[5] = v19;
  v50[3] = v21;
  v22 = *v13;
  v23 = *(v13 + 2);
  v50[1] = *(v13 + 1);
  v50[2] = v23;
  v50[0] = v22;
  v24 = v48;
  *(v13 + 4) = v47;
  *(v13 + 5) = v24;
  v13[96] = v49;
  v25 = v44;
  *v13 = v43;
  *(v13 + 1) = v25;
  v26 = v46;
  *(v13 + 2) = v45;
  *(v13 + 3) = v26;
  v27 = v12;
  sub_1003A28BC(v31, v29);
  sub_10037012C(&v33, v29);
  sub_1003A292C(v50);
  sub_10047C390(v31);
  sub_1003A292C(v31);
  sub_1003714B8(&v33);

  return v9;
}

void VocalsAttenuationSlider.accessibilitySliderCurrentPercentageValue.getter()
{
  if (*(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue) > *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue))
  {
    __break(1u);
  }
}

uint64_t sub_1003A28BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006F0328);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003A292C(uint64_t a1)
{
  v2 = sub_100009DCC(&qword_1006F0328);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003A29B8()
{
  sub_1003A40D4();
  result = sub_10056E8F8();
  static AnyTransition.glowTextReveal = result;
  return result;
}

uint64_t *AnyTransition.glowTextReveal.unsafeMutableAddressor()
{
  if (qword_1006EEAB8 != -1)
  {
    swift_once();
  }

  return &static AnyTransition.glowTextReveal;
}

uint64_t static AnyTransition.glowTextReveal.getter()
{
  if (qword_1006EEAB8 != -1)
  {
    swift_once();
  }
}

uint64_t GlowTextRevealTransition.body(content:phase:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (sub_10056ED08())
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = sub_100009DCC(&qword_1006F0358);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  result = sub_100009DCC(&qword_1006F0360);
  *(a2 + *(result + 36)) = v4;
  return result;
}

uint64_t (*GlowTextRevealEffectRenderer.animatableData.modify(void *a1))()
{
  a1[1] = v1;
  *a1 = *v1;
  return sub_1003A4128;
}

uint64_t GlowTextRevealEffectRenderer.draw(layout:in:)(uint64_t a1, uint64_t *a2, double a3)
{
  v63 = a2;
  v62 = sub_10056EC28();
  v56 = *(v62 - 8);
  __chkstk_darwin(v62);
  v61 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_100009DCC(&qword_1006F0368);
  v64 = *(v69 - 8);
  __chkstk_darwin(v69);
  v67 = &v49 - v6;
  v71 = sub_10056FEA8();
  v55 = *(v71 - 8);
  __chkstk_darwin(v71);
  v60 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v52 = &v49 - v9;
  v10 = sub_100009DCC(&qword_1006F0370);
  __chkstk_darwin(v10 - 8);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = (&v49 - v14);
  v16 = sub_10056FEB8();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100009DCC(&qword_1006F0378);
  __chkstk_darwin(v20 - 8);
  v22 = &v49 - v21;
  v23 = sub_100009DCC(&qword_1006F0380);
  v24 = v23 - 8;
  __chkstk_darwin(v23);
  v26 = &v49 - v25;
  v68 = sub_1003A3388(a1, a3);
  (*(v17 + 16))(v22, a1, v16);
  v27 = v22;
  v28 = v26;
  (*(v17 + 32))(v19, v27, v16);
  sub_1003A3798(&qword_1006F0388);
  sub_100572B98();
  v50 = *(v24 + 44);
  *&v26[v50] = 0;
  v29 = *(sub_100009DCC(&qword_1006F0390) + 36);
  v30 = sub_1003A3798(&qword_1006F0398);
  v66 = 0;
  v51 = (v55 + 16);
  v70 = (v55 + 32);
  v31 = v64;
  v64 += 6;
  v65 = (v31 + 7);
  v54 = (v56 + 8);
  v53 = (v55 + 8);
  v56 = v29;
  v55 = v30;
  v59 = v15;
  v58 = v16;
  v57 = v12;
  while (1)
  {
    sub_100573208();
    if (*(v28 + v29) == v73[0])
    {
      v32 = 1;
      v33 = v69;
      goto LABEL_6;
    }

    v34 = sub_1005732E8();
    v35 = v52;
    v36 = v71;
    (*v51)(v52);
    v34(v73, 0);
    sub_100573218();
    v33 = v69;
    v37 = v70;
    v38 = *(v69 + 48);
    v40 = v66;
    v39 = v67;
    *v67 = v66;
    result = (*v37)(&v39[v38], v35, v36);
    if (__OFADD__(v40, 1))
    {
      break;
    }

    v66 = v40 + 1;
    *(v28 + v50) = v40 + 1;
    sub_100019B40(v67, v12, &qword_1006F0368);
    v32 = 0;
LABEL_6:
    (*v65)(v12, v32, 1, v33);
    sub_100019B40(v12, v15, &qword_1006F0370);
    if ((*v64)(v15, 1, v33) == 1)
    {
      sub_1003A37DC(v28);
    }

    v42 = *v15;
    v43 = v15 + *(v33 + 48);
    v44 = v60;
    (*v70)(v60, v43, v71);
    v73[0] = *v63;
    __chkstk_darwin(v73[0]);
    *(&v49 - 4) = a3;
    v45 = v68;
    *(&v49 - 3) = v44;
    *(&v49 - 2) = v45;
    *(&v49 - 1) = v42;

    v46 = sub_10056EBE8();
    v72 = v73[0];
    __chkstk_darwin(v46);
    *(&v49 - 4) = a3;
    *(&v49 - 3) = v44;
    *(&v49 - 2) = v45;
    *(&v49 - 1) = v42;
    v12 = v57;

    sub_10056EBE8();
    v47 = v61;
    sub_10056EC18();
    sub_10056EC58();
    (*v54)(v47, v62);
    sub_10056EBF8();
    sub_10056EBF8();

    v48 = v44;
    v15 = v59;
    (*v53)(v48, v71);
    v29 = v56;
  }

  __break(1u);
  return result;
}

char *sub_1003A3388(uint64_t a1, double a2)
{
  v33 = sub_10056FEA8();
  v4 = *(v33 - 8);
  __chkstk_darwin(v33);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10056FEB8();
  sub_1003A3798(&qword_1006F0398);
  v7 = sub_1005731C8();
  v8 = _swiftEmptyArrayStorage;
  if (v7)
  {
    v9 = v7;
    v34 = _swiftEmptyArrayStorage;
    sub_1004753E8(0, v7 & ~(v7 >> 63), 0);
    v8 = v34;
    sub_1005731B8();
    if (v9 < 0)
    {
      goto LABEL_24;
    }

    v32 = (v4 + 16);
    do
    {
      v10 = sub_1005732E8();
      v11 = v33;
      (*v32)(v6);
      v10(v40, 0);
      sub_10056FE98();
      v41.origin.x = v35;
      v41.size.width = v37;
      v41.origin.y = v36 - v38;
      v41.size.height = v38 + v39;
      Width = CGRectGetWidth(v41);
      (*(v4 + 8))(v6, v11);
      v34 = v8;
      v13 = a1;
      v15 = v8[2];
      v14 = v8[3];
      if (v15 >= v14 >> 1)
      {
        sub_1004753E8((v14 > 1), v15 + 1, 1);
        v8 = v34;
      }

      v8[2] = v15 + 1;
      *&v8[v15 + 4] = Width;
      sub_100573218();
      --v9;
      a1 = v13;
    }

    while (v9);
  }

  v16 = v8[2];
  if (!v16)
  {
    v18 = 0.0;
    goto LABEL_16;
  }

  if (v16 <= 3)
  {
    v17 = 0;
    v18 = 0.0;
LABEL_14:
    v21 = v16 - v17;
    v22 = &v8[v17 + 4];
    do
    {
      v23 = *v22++;
      v18 = v18 + v23;
      --v21;
    }

    while (v21);
    goto LABEL_16;
  }

  v17 = v16 & 0x7FFFFFFFFFFFFFFCLL;
  v19 = (v8 + 6);
  v18 = 0.0;
  v20 = v16 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v18 = v18 + *(v19 - 2) + *(v19 - 1) + *v19 + v19[1];
    v19 += 4;
    v20 -= 4;
  }

  while (v20);
  if (v16 != v17)
  {
    goto LABEL_14;
  }

LABEL_16:
  sub_100009DCC(&qword_1006F03D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10057B510;
  *(inited + 32) = 0;
  if (v16)
  {
    v25 = 0;
    while (v25 < v8[2])
    {
      v26 = *&v8[v25 + 4];
      v27 = v25 + 1;
      v28 = *(inited + 8 * v25 + 32);
      v29 = *(inited + 24);
      if (v25 + 1 >= v29 >> 1)
      {
        inited = sub_1004749B8((v29 > 1), v25 + 2, 1, inited);
      }

      *(inited + 16) = v25 + 2;
      *(inited + 8 * v25++ + 40) = v26 / v18 + v28;
      if (v16 == v27)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

LABEL_22:

  v40[0] = inited;
  v30 = sub_1003A3970(0, v16, v40, a2);

  return v30;
}

uint64_t sub_1003A3798(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10056FEB8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1003A37DC(uint64_t a1)
{
  v2 = sub_100009DCC(&qword_1006F0380);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003A389C(uint64_t result, uint64_t (*a2)(void, uint64_t, double))
{
  v3 = v2[5];
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = v2[4];
    if (*(v4 + 16) > v3)
    {
      return a2(v2[3], result, *(v4 + 8 * v3 + 32));
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1003A391C()
{
  result = qword_1006F03A0;
  if (!qword_1006F03A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F03A0);
  }

  return result;
}

char *sub_1003A3970(char *result, uint64_t a2, uint64_t a3, double a4)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    goto LABEL_18;
  }

  v5 = result;
  result = _swiftEmptyArrayStorage;
  if (v4)
  {
    result = sub_1004753C8(0, v4 & ~(v4 >> 63), 0);
    if (a2 < v5 || v4 < 0)
    {
      goto LABEL_19;
    }

    result = _swiftEmptyArrayStorage;
    v9 = v5;
    while (a2 != v9)
    {
      if (v5 < 0)
      {
        goto LABEL_15;
      }

      v10 = *(*a3 + 16);
      if (v9 >= v10)
      {
        goto LABEL_16;
      }

      v11 = v9 + 1;
      if (v9 + 1 >= v10)
      {
        goto LABEL_17;
      }

      v12 = *a3 + 8 * v9;
      v13 = *(v12 + 32);
      v14 = *(v12 + 40);
      v17 = result;
      v16 = *(result + 2);
      v15 = *(result + 3);
      if (v16 >= v15 >> 1)
      {
        sub_1004753C8((v15 > 1), v16 + 1, 1);
        result = v17;
      }

      *(result + 2) = v16 + 1;
      *&result[8 * v16 + 32] = (a4 - v13) / (v14 - v13);
      v9 = v11;
      if (a2 == v11)
      {
        return result;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  return result;
}

double sub_1003A3B04(double *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

double (*sub_1003A3B10(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return sub_1003A3B3C;
}

double sub_1003A3B3C(uint64_t a1)
{
  result = *a1;
  **(a1 + 8) = *a1;
  return result;
}

unint64_t sub_1003A3B74()
{
  result = qword_1006F03A8;
  if (!qword_1006F03A8)
  {
    sub_100010324(&qword_1006F0360);
    sub_100010BC0(&qword_1006F03B0, &qword_1006F0358);
    sub_100010BC0(&qword_1006F03B8, &qword_1006F03C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F03A8);
  }

  return result;
}

uint64_t sub_1003A3C58()
{
  v0 = sub_10056EC48();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006F03D0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10057B500;
  *(v4 + 32) = sub_1005704D8();
  *(v4 + 40) = sub_1005704B8();
  sub_100570968();
  sub_10056FE98();
  sub_10056FE98();
  sub_10056FE98();
  *&v10.origin.x = v6[13];
  *&v10.size.width = v6[15];
  v10.origin.y = *&v6[14] - v7;
  v10.size.height = v7 + v8;
  CGRectInset(v10, -14.0, 0.0);
  sub_10056FD78();
  sub_10056EC38();

  sub_10056EC08();
  sub_1003A4080(v9);
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1003A3E34()
{
  v0 = sub_10056EC48();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006F03C8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10057BD80;
  sub_1005704B8();
  *(v4 + 32) = sub_100570948();
  *(v4 + 40) = v5;
  sub_1005704D8();
  *(v4 + 48) = sub_100570948();
  *(v4 + 56) = v6;
  sub_1005704D8();
  *(v4 + 64) = sub_100570948();
  *(v4 + 72) = v7;
  sub_1005704B8();
  *(v4 + 80) = sub_100570948();
  *(v4 + 88) = v8;
  sub_100570958();
  sub_10056FE98();
  sub_10056FE98();
  sub_10056FE98();
  *&v14.origin.x = v10[13];
  *&v14.size.width = v10[15];
  v14.origin.y = *&v10[14] - v11;
  v14.size.height = v11 + v12;
  CGRectInset(v14, -57.5, 0.0);
  sub_10056FD78();
  sub_10056EC38();

  sub_10056EC08();
  sub_1003A4080(v13);
  return (*(v1 + 8))(v3, v0);
}

unint64_t sub_1003A40D4()
{
  result = qword_1006F03E0;
  if (!qword_1006F03E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F03E0);
  }

  return result;
}

double Corner.radius(in:)(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 <= 1u)
  {
    return *&a1;
  }

  Width = CGRectGetWidth(*&a2);
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  Height = CGRectGetHeight(v14);
  if (Height >= Width)
  {
    Height = Width;
  }

  return Height * 0.5;
}

void Corner.hash(into:)(uint64_t a1, Swift::UInt64 a2, Swift::UInt a3, char a4)
{
  if (a4)
  {
    if (a4 == 1)
    {
      sub_1005729F8();
      if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = 0;
      }

      sub_1005746B8(v5);
    }

    else
    {

      sub_1005729F8();
    }
  }

  else
  {
    sub_1005729F8();
    if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = 0;
    }

    sub_1005746B8(v7);
    sub_100574688(a3);
  }
}

BOOL static Corner.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if (a3 == 1)
    {
      if (a6 == 1)
      {
        return *&a1 == *&a4;
      }
    }

    else if (a6 == 2 && !(a5 | a4))
    {
      return 1;
    }

    return 0;
  }

  if (a6)
  {
    return 0;
  }

  return *&a1 == *&a4 && a2 == a5;
}

Swift::Int Corner.hashValue.getter(Swift::UInt64 a1, Swift::UInt a2, char a3)
{
  sub_100574678();
  Corner.hash(into:)(v7, a1, a2, a3);
  return sub_1005746C8();
}

Swift::Int sub_1003A435C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_100574678();
  Corner.hash(into:)(v5, v1, v2, v3);
  return sub_1005746C8();
}

Swift::Int sub_1003A43C4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_100574678();
  Corner.hash(into:)(v5, v1, v2, v3);
  return sub_1005746C8();
}

uint64_t sub_1003A441C(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (*(a1 + 16))
  {
    v5 = *a1 == v2;
    if (v4 != 1)
    {
      v5 = 0;
    }

    v6 = v3 | *&v2;
    v8 = v4 == 2 && v6 == 0;
    if (*(a1 + 16) == 1)
    {
      return v5;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    if (*(a2 + 16))
    {
      v10 = 0;
    }

    else
    {
      v10 = *(a1 + 8) == v3;
    }

    v11 = v10;
    if (*a1 == *a2)
    {
      return v11;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t static Border.__derived_struct_equals(_:_:)(double a1, double a2, uint64_t a3, unsigned __int8 a4, uint64_t a5, unsigned __int8 a6)
{
  v7 = a4;
  v8 = sub_100570478() & (a1 == a2);
  if (v7 == a6)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

void Border.hash(into:)(double a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  sub_100570498();
  v6 = 0.0;
  if (a1 != 0.0)
  {
    v6 = a1;
  }

  sub_1005746B8(*&v6);
  sub_100574688(a4);
}

Swift::Int Border.hashValue.getter(double a1, uint64_t a2, unsigned __int8 a3)
{
  sub_100574678();
  sub_100570498();
  v5 = 0.0;
  if (a1 != 0.0)
  {
    v5 = a1;
  }

  sub_1005746B8(*&v5);
  sub_100574688(a3);
  return sub_1005746C8();
}

void sub_1003A45BC()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_100570498();
  v3 = 0.0;
  if (v1 != 0.0)
  {
    v3 = v1;
  }

  sub_1005746B8(*&v3);
  sub_100574688(v2);
}

Swift::Int sub_1003A461C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_100574678();
  sub_100570498();
  v3 = 0.0;
  if (v1 != 0.0)
  {
    v3 = v1;
  }

  sub_1005746B8(*&v3);
  sub_100574688(v2);
  return sub_1005746C8();
}

BOOL sub_1003A469C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = sub_100570478();
  result = 0;
  if ((v6 & 1) != 0 && v2 == v4)
  {
    return v3 == v5;
  }

  return result;
}

uint64_t UIView.Shadow.init(color:opacity:radius:offset:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  *(a2 + 16) = a4;
  *(a2 + 24) = a5;
  *(a2 + 32) = a6;
  return result;
}

void Shadow.hash(into:)()
{
  sub_100570498();
  v1 = v0[1];
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  sub_1005746B8(*&v1);
  v2 = v0[2];
  v3 = v0[3];
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  sub_1005746B8(*&v2);
  if (v3 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v3;
  }

  sub_1005746B8(*&v4);
  v5 = v0[4];
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  sub_1005746B8(*&v5);
}

Swift::Int Shadow.hashValue.getter()
{
  sub_100574678();
  Shadow.hash(into:)();
  return sub_1005746C8();
}

Swift::Int sub_1003A4854()
{
  sub_100574678();
  Shadow.hash(into:)();
  return sub_1005746C8();
}

BOOL sub_1003A4890(double *a1, double *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v5 = a1[3];
  v4 = a1[4];
  v6 = a2[1];
  v7 = a2[2];
  v9 = a2[3];
  v8 = a2[4];
  v10 = sub_100570478();
  result = 0;
  if ((v10 & 1) != 0 && v2 == v6 && v3 == v7 && v5 == v9)
  {
    return v4 == v8;
  }

  return result;
}

uint64_t sub_1003A4948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = *(v2 + 16);
  v8 = sub_100009DCC(&qword_1006F0428);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  result = sub_100009DCC(&qword_1006F0430);
  v10 = a2 + *(result + 36);
  *v10 = v5;
  *(v10 + 8) = v6;
  *(v10 + 16) = v7;
  *(v10 + 24) = 0;
  *(v10 + 32) = 256;
  return result;
}

uint64_t sub_1003A4A44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  if (!*(v2 + 16))
  {
    v6 = 0.5;
    goto LABEL_5;
  }

  v5 = 0.0;
  if (*(v2 + 16) == 1)
  {
    v6 = -0.5;
LABEL_5:
    v5 = *(v2 + 1) * v6;
  }

  v8 = v2[3];
  v7 = v2[4];
  v9 = *(v2 + 40);
  sub_10056E728();

  v10 = sub_1005709E8();
  v12 = v11;
  v13 = sub_1005709E8();
  v15 = v14;
  *&v27 = v8;
  *(&v27 + 1) = v7;
  LOBYTE(v28) = v9;
  *(&v28 + 1) = v5;
  v29 = v24;
  v30 = v25;
  *&v31 = v26;
  *(&v31 + 1) = v4;
  LOWORD(v32) = 256;
  *(&v32 + 1) = v10;
  *&v33 = v12;
  *(&v33 + 1) = v13;
  v34 = v14;
  v16 = sub_100009DCC(&qword_1006F0438);
  (*(*(v16 - 8) + 16))(a2, a1, v16);
  v17 = a2 + *(sub_100009DCC(&qword_1006F0440) + 36);
  v18 = v32;
  *(v17 + 64) = v31;
  *(v17 + 80) = v18;
  *(v17 + 96) = v33;
  *(v17 + 112) = v34;
  v19 = v28;
  *v17 = v27;
  *(v17 + 16) = v19;
  v20 = v30;
  *(v17 + 32) = v29;
  *(v17 + 48) = v20;
  v35[0] = v8;
  v35[1] = v7;
  v36 = v9;
  v37 = v5;
  v38 = v24;
  v39 = v25;
  v40 = v26;
  v41 = v4;
  v42 = 256;
  v43 = v10;
  v44 = v12;
  v45 = v13;
  v46 = v15;
  sub_10000CC8C(&v27, &v23, &qword_1006F0448);
  return sub_10001036C(v35, &qword_1006F0448);
}

uint64_t View.shadow(_:corner:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *v5 = *a1;
  *&v5[8] = *(a1 + 8);
  *&v5[24] = *(a1 + 24);
  *&v5[40] = a2;
  *&v5[48] = a3;
  v5[56] = a4;

  sub_100570328();
  v6[0] = *v5;
  v6[1] = *&v5[16];
  v7[0] = *&v5[32];
  *(v7 + 9) = *&v5[41];
  return sub_1003A67E0(v6);
}

uint64_t sub_1003A4D1C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_100009DCC(&qword_1006F0470);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v36[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v36[-v9];
  v11 = *(a1 + 48);
  v39 = *(a1 + 40);
  v37 = *(a1 + 56);
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  sub_1003A6ECC(a1, v49);
  v16 = sub_10056FA38();
  sub_10056E598();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  LOBYTE(v49[0]) = 0;
  v25 = *(v5 + 44);
  v26 = enum case for BlendMode.destinationOut(_:);
  v27 = sub_100570A78();
  (*(*(v27 - 8) + 104))(&v10[v25], v26, v27);
  v28 = v39;
  *v10 = v39;
  *(v10 + 1) = v11;
  v29 = v11;
  v38 = v11;
  LOBYTE(v11) = v37;
  v10[16] = v37;
  *(v10 + 3) = 0;
  sub_10000CC8C(v10, v7, &qword_1006F0470);
  *&v42 = v28;
  *(&v42 + 1) = v29;
  LOBYTE(v43) = v11;
  *(&v43 + 1) = *v41;
  HIDWORD(v43) = *&v41[3];
  v44 = 0;
  *&v45 = v12;
  *(&v45 + 1) = v13;
  *&v46 = v14;
  *(&v46 + 1) = v15;
  LOBYTE(v47) = v16;
  *(&v47 + 1) = *v40;
  DWORD1(v47) = *&v40[3];
  *(&v47 + 1) = v18;
  *&v48[0] = v20;
  *(&v48[0] + 1) = v22;
  *&v48[1] = v24;
  BYTE8(v48[1]) = 0;
  v30 = v43;
  *a2 = v42;
  a2[1] = v30;
  v31 = v45;
  v32 = v46;
  *(a2 + 89) = *(v48 + 9);
  v33 = v48[0];
  a2[4] = v47;
  a2[5] = v33;
  a2[2] = v31;
  a2[3] = v32;
  v34 = sub_100009DCC(&qword_1006F0478);
  sub_10000CC8C(v7, a2 + *(v34 + 48), &qword_1006F0470);
  sub_10000CC8C(&v42, v49, &qword_1006F0480);
  sub_10001036C(v10, &qword_1006F0470);
  sub_10001036C(v7, &qword_1006F0470);
  v49[0] = v39;
  v49[1] = v38;
  v50 = v11;
  *v51 = *v41;
  *&v51[3] = *&v41[3];
  v52 = 0;
  v53 = v12;
  v54 = v13;
  v55 = v14;
  v56 = v15;
  v57 = v16;
  *v58 = *v40;
  *&v58[3] = *&v40[3];
  v59 = v18;
  v60 = v20;
  v61 = v22;
  v62 = v24;
  v63 = 0;
  return sub_10001036C(v49, &qword_1006F0480);
}

uint64_t sub_1003A50DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[1];
  v16[0] = *v2;
  v16[1] = v5;
  v17[0] = v2[2];
  *(v17 + 9) = *(v2 + 41);
  v6 = sub_1005709E8();
  v8 = v7;
  v9 = (a2 + *(sub_100009DCC(&qword_1006F0450) + 36));
  *v9 = sub_1005709E8();
  v9[1] = v10;
  v11 = sub_100009DCC(&qword_1006F0458);
  sub_1003A4D1C(v16, (v9 + *(v11 + 44)));
  v12 = (v9 + *(sub_100009DCC(&qword_1006F0460) + 36));
  *v12 = v6;
  v12[1] = v8;
  v13 = sub_100009DCC(&qword_1006F0468);
  v14 = *(*(v13 - 8) + 16);

  return v14(a2, a1, v13);
}

uint64_t sub_1003A526C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18[0] = a1;
  v18[1] = a2;
  v3 = sub_10056F5D8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100009DCC(&qword_1006F0488);
  __chkstk_darwin(v7);
  v9 = v18 - v8;
  v10 = *v2;
  v11 = v2[1];
  v12 = *(v2 + 16);
  v13 = *(v2 + 3);
  v15 = v18 + *(v14 + 36) - v8;
  sub_100009DCC(&qword_1006F0490);
  sub_10056EE28();
  *v15 = v10;
  *(v15 + 1) = v11;
  v15[16] = v12;
  *(v15 + 3) = -v13;
  v15[32] = 0;
  v16 = sub_100009DCC(&qword_1006F0498);
  (*(*(v16 - 8) + 16))(v9, v18[0], v16);
  sub_10056EE48();
  sub_1003A6F04();
  sub_1003A6FE8();
  sub_100570038();
  (*(v4 + 8))(v6, v3);
  return sub_10001036C(v9, &qword_1006F0488);
}

void sub_1003A5484(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, _OWORD *a4@<X8>, CGFloat a5@<D0>, CGFloat a6@<D1>, CGFloat a7@<D2>, CGFloat a8@<D3>, CGFloat a9@<D4>)
{
  LODWORD(v48) = a3;
  v46 = a2;
  *&v47 = a1;
  v49 = a4;
  v14 = sub_100009DCC(&qword_1006F0550);
  __chkstk_darwin(v14 - 8);
  v16 = &v43 - v15;
  v17 = sub_10056FAE8();
  v43 = *(v17 - 8);
  __chkstk_darwin(v17);
  v18 = sub_10056F348();
  v44 = *(v18 - 8);
  v45 = v18;
  __chkstk_darwin(v18);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10056F2E8();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100570888();
  __chkstk_darwin(v25 - 8);
  v27 = &v43 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10056EDC8();
  v29 = __chkstk_darwin(v28);
  v31 = &v43 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v48)
  {
    v33 = v46;
    if (v46 == -1)
    {
      v40 = sub_10056EDD8();
      (*(v22 + 104))(&v31[*(v40 + 20)], enum case for RoundedCornerStyle.continuous(_:), v21);
      v41 = v47;
      *v31 = v47;
      *(v31 + 1) = v41;
      *&v31[*(v28 + 20)] = a9;
      sub_10056EDB8();
      v47 = v50;
      v48 = v51;
      v32 = v52;
      sub_1003A7660(v31, &type metadata accessor for RoundedRectangle._Inset);
    }

    else
    {
      v34 = *&v47;
      v54.origin.x = a5;
      v54.origin.y = a6;
      v54.size.width = a7;
      v54.size.height = a8;
      v55 = CGRectInset(v54, a9, a9);
      v35 = [objc_opt_self() bezierPathWithRoundedRect:v33 byRoundingCorners:v55.origin.x cornerRadii:{v55.origin.y, v55.size.width, v55.size.height, v34, v34}];
      v36 = [v35 CGPath];
      sub_10056FD88();
      v47 = v50;
      v48 = v51;
      v32 = v52;
    }

    goto LABEL_8;
  }

  if (v48 == 1)
  {
    sub_10056FAD8();
    (*(v43 + 56))(v16, 0, 1, v17);
    sub_10056FAC8();
    sub_10001036C(v16, &qword_1006F0550);
    sub_10056F338();
    v53.origin.x = a5;
    v53.origin.y = a6;
    v53.size.width = a7;
    v53.size.height = a8;
    CGRectInset(v53, a9, a9);
    sub_10056F328();
    v47 = v50;
    v48 = v51;
    v32 = v52;
    (*(v44 + 8))(v20, v45);
LABEL_8:
    v39 = v47;
    v38 = v48;
    goto LABEL_9;
  }

  v37 = *(v22 + 104);
  v37(v27, enum case for RoundedCornerStyle.continuous(_:), v21, v29);
  (v37)(v24, enum case for RoundedCornerStyle.circular(_:), v21);
  sub_10056F2D8();
  (*(v22 + 8))(v24, v21);
  sub_1003A7660(v27, &type metadata accessor for Capsule);
  sub_100570878();
  v39 = v50;
  v38 = v51;
  v32 = v52;
LABEL_9:
  v42 = v49;
  *v49 = v39;
  v42[1] = v38;
  *(v42 + 32) = v32;
}

double sub_1003A5A04@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = *(v2 + 16);
  result = *(v2 + 24) + a2;
  *a1 = *v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = result;
  return result;
}

double sub_1003A5A24@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_1003A5484(*v5, *(v5 + 8), *(v5 + 16), v9, a2, a3, a4, a5, *(v5 + 24));
  result = *v9;
  v8 = v9[1];
  *a1 = v9[0];
  *(a1 + 16) = v8;
  *(a1 + 32) = v10;
  return result;
}

void (*sub_1003A5A74(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_10056E528();
  return sub_1003674BC;
}

uint64_t sub_1003A5AFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1003A75B4();

  return static Shape._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1003A5B60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1003A75B4();

  return static Shape._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1003A5BC4(uint64_t a1)
{
  v2 = sub_1003A75B4();

  return Shape.body.getter(a1, v2);
}

void sub_1003A5C10()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  byte_1006F03E8 = v1 == 6;
}

uint64_t sub_1003A5C74()
{
  if (qword_1006EEAC0 != -1)
  {
    result = swift_once();
  }

  v0 = 0x4008000000000000;
  if (byte_1006F03E8)
  {
    v0 = 0x4018000000000000;
  }

  static Corner.extraSmall = v0;
  unk_1006FE280 = -1;
  byte_1006FE288 = 0;
  return result;
}

uint64_t *Corner.extraSmall.unsafeMutableAddressor()
{
  if (qword_1006EEAC8 != -1)
  {
    swift_once();
  }

  return &static Corner.extraSmall;
}

uint64_t static Corner.extraSmall.getter()
{
  if (qword_1006EEAC8 != -1)
  {
    swift_once();
  }

  return static Corner.extraSmall;
}

uint64_t sub_1003A5D90()
{
  if (qword_1006EEAC0 != -1)
  {
    result = swift_once();
  }

  v0 = 0x4014000000000000;
  if (byte_1006F03E8)
  {
    v0 = 0x4020000000000000;
  }

  static Corner.small = v0;
  *algn_1006FE298 = -1;
  byte_1006FE2A0 = 0;
  return result;
}

uint64_t *Corner.small.unsafeMutableAddressor()
{
  if (qword_1006EEAD0 != -1)
  {
    swift_once();
  }

  return &static Corner.small;
}

uint64_t static Corner.small.getter()
{
  if (qword_1006EEAD0 != -1)
  {
    swift_once();
  }

  return static Corner.small;
}

uint64_t sub_1003A5EAC()
{
  if (qword_1006EEAC0 != -1)
  {
    result = swift_once();
  }

  v0 = 0x4020000000000000;
  if (byte_1006F03E8)
  {
    v0 = 0x4024000000000000;
  }

  static Corner.medium = v0;
  unk_1006FE2B0 = -1;
  byte_1006FE2B8 = 0;
  return result;
}

uint64_t *Corner.medium.unsafeMutableAddressor()
{
  if (qword_1006EEAD8 != -1)
  {
    swift_once();
  }

  return &static Corner.medium;
}

uint64_t static Corner.medium.getter()
{
  if (qword_1006EEAD8 != -1)
  {
    swift_once();
  }

  return static Corner.medium;
}

uint64_t sub_1003A5FC8()
{
  if (qword_1006EEAC0 != -1)
  {
    result = swift_once();
  }

  v0 = 0x4024000000000000;
  if (byte_1006F03E8)
  {
    v0 = 0x4030000000000000;
  }

  static Corner.large = v0;
  *algn_1006FE2C8 = -1;
  byte_1006FE2D0 = 0;
  return result;
}

uint64_t *Corner.large.unsafeMutableAddressor()
{
  if (qword_1006EEAE0 != -1)
  {
    swift_once();
  }

  return &static Corner.large;
}

uint64_t static Corner.large.getter()
{
  if (qword_1006EEAE0 != -1)
  {
    swift_once();
  }

  return static Corner.large;
}

uint64_t sub_1003A60E4()
{
  if (qword_1006EEAC0 != -1)
  {
    result = swift_once();
  }

  v0 = 0x402C000000000000;
  if (byte_1006F03E8)
  {
    v0 = 0x4038000000000000;
  }

  static Corner.extraLarge = v0;
  unk_1006FE2E0 = -1;
  byte_1006FE2E8 = 0;
  return result;
}

uint64_t *Corner.extraLarge.unsafeMutableAddressor()
{
  if (qword_1006EEAE8 != -1)
  {
    swift_once();
  }

  return &static Corner.extraLarge;
}

uint64_t static Corner.extraLarge.getter()
{
  if (qword_1006EEAE8 != -1)
  {
    swift_once();
  }

  return static Corner.extraLarge;
}

uint64_t sub_1003A6200()
{
  v0 = objc_allocWithZone(UIColor);
  v3[4] = sub_1003A62DC;
  v3[5] = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 1107296256;
  v3[2] = sub_1000376F0;
  v3[3] = &unk_1006A0170;
  v1 = _Block_copy(v3);
  [v0 initWithDynamicProvider:v1];
  _Block_release(v1);

  result = sub_100570448();
  static Border.artwork = result;
  qword_1006FE2F8 = 0x3FE0000000000000;
  byte_1006FE300 = 0;
  return result;
}

id sub_1003A62DC(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_opt_self();
  v3 = dbl_100596EA0[v1 == 1];
  v4 = &selRef_blackColor;
  if (v1 != 1)
  {
    v4 = &selRef_whiteColor;
  }

  v5 = [v2 *v4];
  v6 = [v5 colorWithAlphaComponent:v3];

  return v6;
}

uint64_t *Border.artwork.unsafeMutableAddressor()
{
  if (qword_1006EEAF0 != -1)
  {
    swift_once();
  }

  return &static Border.artwork;
}

double static Border.artwork.getter()
{
  if (qword_1006EEAF0 != -1)
  {
    swift_once();
  }

  v0 = *&qword_1006FE2F8;

  return v0;
}

double sub_1003A6440()
{
  sub_1005704A8();
  v0 = sub_1005704E8();

  static Shadow.shallow = v0;
  unk_1006FE310 = xmmword_100596EB0;
  result = 2.0;
  unk_1006FE320 = xmmword_100596EC0;
  return result;
}

uint64_t *Shadow.shallow.unsafeMutableAddressor()
{
  if (qword_1006EEAF8 != -1)
  {
    swift_once();
  }

  return &static Shadow.shallow;
}

uint64_t static Shadow.shallow.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006EEAF8 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static Shadow.shallow;
  *(a1 + 8) = unk_1006FE310;
  *(a1 + 24) = unk_1006FE320;
}

double sub_1003A6574()
{
  sub_1005704A8();
  v0 = sub_1005704E8();

  static Shadow.intermediate = v0;
  unk_1006FE338 = xmmword_100596ED0;
  result = 15.0;
  unk_1006FE348 = xmmword_100596EE0;
  return result;
}

uint64_t *Shadow.intermediate.unsafeMutableAddressor()
{
  if (qword_1006EEB00 != -1)
  {
    swift_once();
  }

  return &static Shadow.intermediate;
}

uint64_t static Shadow.intermediate.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006EEB00 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static Shadow.intermediate;
  *(a1 + 8) = unk_1006FE338;
  *(a1 + 24) = unk_1006FE348;
}

double sub_1003A66AC()
{
  sub_1005704A8();
  v0 = sub_1005704E8();

  static Shadow.deep = v0;
  *algn_1006FE360 = xmmword_100596EF0;
  result = 25.0;
  *&algn_1006FE360[16] = xmmword_100596F00;
  return result;
}

uint64_t *Shadow.deep.unsafeMutableAddressor()
{
  if (qword_1006EEB08 != -1)
  {
    swift_once();
  }

  return &static Shadow.deep;
}

uint64_t static Shadow.deep.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006EEB08 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static Shadow.deep;
  *(a1 + 8) = *algn_1006FE360;
  *(a1 + 24) = *&algn_1006FE360[16];
}

unint64_t sub_1003A6814()
{
  result = qword_1006F03F0;
  if (!qword_1006F03F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F03F0);
  }

  return result;
}

unint64_t sub_1003A686C()
{
  result = qword_1006F03F8;
  if (!qword_1006F03F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F03F8);
  }

  return result;
}

unint64_t sub_1003A68C4()
{
  result = qword_1006F0400;
  if (!qword_1006F0400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F0400);
  }

  return result;
}

unint64_t sub_1003A691C()
{
  result = qword_1006F0408;
  if (!qword_1006F0408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F0408);
  }

  return result;
}

uint64_t sub_1003A6970(uint64_t a1)
{
  if (*(a1 + 16) <= 1u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 2);
  }
}

__n128 sub_1003A69B8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}