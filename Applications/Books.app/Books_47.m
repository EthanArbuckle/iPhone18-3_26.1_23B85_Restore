uint64_t sub_1005F1810(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AED470);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005F1880(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 56) = a6;
  *(v7 + 64) = a7;
  *(v7 + 105) = a5;
  *(v7 + 104) = a4;
  *(v7 + 72) = type metadata accessor for MenuAppAnalyticsHelpers.TrackerInfo();
  *(v7 + 80) = swift_task_alloc();
  *(v7 + 88) = swift_task_alloc();
  sub_1007A26F4();
  *(v7 + 96) = sub_1007A26E4();
  v9 = sub_1007A2694();

  return _swift_task_switch(sub_1005F195C, v9, v8);
}

void *sub_1005F195C()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 56);
  v3 = *(v0 + 104);

  sub_10041393C(v2, v1);
  if (v3 == 1)
  {
    v5 = *(v0 + 80);
    v4 = *(v0 + 88);
    v6 = *(v0 + 56);
    sub_100798004();
    v14 = sub_100797FF4();
    sub_1007A2254();
    sub_10000E3E8(v6, v6[3]);
    sub_100797674();
    sub_100797E84();

    sub_10041393C(v6, v5);
    v7 = sub_100797FF4();
    sub_10000E3E8(v6, v6[3]);
    sub_100797674();
    sub_100797E74();

    sub_100415124(v5);
    sub_100415124(v4);
  }

  else
  {
    sub_10000E3E8(*(v0 + 56), *(*(v0 + 56) + 24));
    result = sub_1002C7274((v0 + 16));
    if (!*(v0 + 40))
    {
      __break(1u);
      return result;
    }

    v9 = *(v0 + 88);
    v10 = *(v0 + 64);
    v11 = sub_1007A2254();
    sub_100414A10(v10, (v0 + 16), v11, v12);

    sub_100415124(v9);
    sub_1000074E0(v0 + 16);
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1005F1BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 192) = v15;
  *(v8 + 282) = v14;
  *(v8 + 176) = v13;
  *(v8 + 281) = a8;
  *(v8 + 160) = a6;
  *(v8 + 168) = a7;
  *(v8 + 144) = a4;
  *(v8 + 152) = a5;
  *(v8 + 200) = type metadata accessor for MenuAppAnalyticsHelpers.TrackerInfo();
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  sub_1007A26F4();
  *(v8 + 224) = sub_1007A26E4();
  v10 = sub_1007A2694();
  *(v8 + 232) = v10;
  *(v8 + 240) = v9;

  return _swift_task_switch(sub_1005F1CE4, v10, v9);
}

uint64_t sub_1005F1CE4()
{
  v1 = [*(v0[18] + 8) collectionController];
  v0[31] = v1;
  v2 = sub_1007A2214();
  v0[32] = v2;
  v0[2] = v0;
  v0[7] = v0 + 35;
  v0[3] = sub_1005F1E44;
  v3 = swift_continuation_init();
  v0[17] = sub_1001F1160(&unk_100AE6E70);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1005EB504;
  v0[13] = &unk_100A26360;
  v0[14] = v3;
  [v1 markAsFinishedStoreID:v2 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1005F1E44()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 264) = v2;
  v3 = *(v1 + 240);
  v4 = *(v1 + 232);
  if (v2)
  {
    v5 = sub_1005F2594;
  }

  else
  {
    v5 = sub_1005F1F74;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1005F1F74()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 280);
  swift_unknownObjectRelease();

  if (v2 == 1)
  {
    v3 = *(v0 + 216);
    v4 = *(v0 + 176);
    v28 = *(v0 + 208);
    v29 = *(v0 + 282);
    v6 = *(v0 + 160);
    v5 = *(v0 + 168);
    v7 = *(v0 + 152);
    v8 = sub_1007A2254();
    v10 = v9;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1002F4A28(v7, v6, v8, v10, isUniquelyReferenced_nonNull_native);

    v12 = [objc_opt_self() defaultCenter];
    v13 = BKLibraryAssetMarkedAsFinishedNotification;
    sub_1005813B8(v5);

    isa = sub_1007A2024().super.isa;

    [v12 postNotificationName:v13 object:0 userInfo:isa];

    sub_10041393C(v4, v3);
    sub_100798004();
    v15 = sub_100797FF4();
    v27 = kBKCollectionDefaultIDFinished;
    sub_1007A2254();
    sub_10000E3E8(v4, v4[3]);
    sub_100797674();
    sub_100797E84();

    sub_10041393C(v4, v28);
    v16 = sub_100797FF4();
    sub_10000E3E8(v4, v4[3]);
    sub_100797674();
    sub_100797E74();

    sub_100415124(v28);
    sub_100415124(v3);
    if (v29 == 1)
    {
      v17 = swift_task_alloc();
      *(v0 + 272) = v17;
      *v17 = v0;
      v17[1] = sub_1005F2404;
      v18 = *(v0 + 184);
      v19 = *(v0 + 192);
      v20 = *(v0 + 176);

      return sub_1005F33F4(1, v20, v27, v18, v19);
    }
  }

  else
  {

    if (qword_100AD1928 != -1)
    {
      swift_once();
    }

    v22 = sub_10079ACE4();
    sub_100008B98(v22, qword_100AED458);
    v23 = sub_10079ACC4();
    v24 = sub_1007A29B4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Got error while marking as asset as finished", v25, 2u);
    }
  }

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_1005F2404()
{
  v1 = *v0;

  v2 = *(v1 + 240);
  v3 = *(v1 + 232);

  return _swift_task_switch(sub_1005F2524, v3, v2);
}

uint64_t sub_1005F2524()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005F2594()
{
  v1 = *(v0 + 256);

  swift_willThrow();
  swift_unknownObjectRelease();

  if (qword_100AD1928 != -1)
  {
    swift_once();
  }

  v2 = sub_10079ACE4();
  sub_100008B98(v2, qword_100AED458);
  v3 = sub_10079ACC4();
  v4 = sub_1007A29B4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Got error while marking as asset as finished", v5, 2u);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1005F26EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 88))(v10);
  v3 = v11;
  if (v11)
  {
    v4 = v12;
    sub_10000E3E8(v10, v11);
    v5 = sub_1005F27C4(v3, v4);
    LOBYTE(v4) = v6;
    sub_1000074E0(v10);
    if ((v4 & 1) == 0)
    {
      return v5;
    }
  }

  else
  {
    sub_100007840(v10, &unk_100AF1C40);
  }

  v8 = sub_1007976B4();
  result = sub_1005F3060(v8);
  if (v9)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1005F27C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v63[2] = a2;
  v69 = sub_100798F64();
  v65 = *(v69 - 8);
  __chkstk_darwin(v69);
  v68 = v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100798E34();
  v73 = *(v6 - 8);
  v74 = v6;
  __chkstk_darwin(v6);
  v63[1] = v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v72 = v63 - v9;
  v10 = sub_100798E54();
  v70 = *(v10 - 8);
  __chkstk_darwin(v10);
  v67 = v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v71 = v63 - v13;
  __chkstk_darwin(v14);
  v16 = v63 - v15;
  v17 = sub_100799224();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a1 - 8);
  __chkstk_darwin(v22);
  v64 = v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v24);
  v27 = v63 - v26;
  v75 = v21;
  v28 = *(v21 + 16);
  v66 = v3;
  v28(v63 - v26, v3, a1, v25);
  if (swift_dynamicCast())
  {
    (*(v18 + 8))(v20, v17);
    v29 = 6;
    v30 = a1;
LABEL_3:
    v31 = v75;
    goto LABEL_4;
  }

  v30 = a1;
  if (swift_dynamicCast())
  {
    v34 = v70;
    v33 = v71;
    (*(v70 + 32))(v71, v16, v10);
    v35 = v72;
    v36 = v10;
    sub_100798E44();
    v38 = v73;
    v37 = v74;
    v39 = (*(v73 + 88))(v35, v74);
    v31 = v75;
    if (v39 == enum case for LibraryBookInfo.BookType.epub(_:))
    {
      (*(v34 + 8))(v33, v10);
      (*(v38 + 8))(v35, v37);
      v29 = 1;
    }

    else if (v39 == enum case for LibraryBookInfo.BookType.iba(_:))
    {
      (*(v34 + 8))(v33, v10);
      v29 = 4;
    }

    else
    {
      if (qword_100AD1928 != -1)
      {
        swift_once();
      }

      v69 = v30;
      v53 = sub_10079ACE4();
      sub_100008B98(v53, qword_100AED458);
      (*(v34 + 16))(v67, v33, v10);
      v54 = sub_10079ACC4();
      v55 = sub_1007A29D4();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v76 = v66;
        *v56 = 136315138;
        v57 = v67;
        sub_100798E44();
        v58 = sub_1007A22E4();
        v68 = v27;
        v60 = v59;
        v70 = *(v34 + 8);
        (v70)(v57, v36);
        v61 = sub_1000070F4(v58, v60, &v76);
        v27 = v68;
        v37 = v74;

        *(v56 + 4) = v61;
        _os_log_impl(&_mh_execute_header, v54, v55, "Unknown BookType: %s", v56, 0xCu);
        sub_1000074E0(v66);
        v35 = v72;

        v38 = v73;

        (v70)(v71, v36);
      }

      else
      {

        v62 = *(v34 + 8);
        v62(v67, v36);
        v62(v33, v36);
      }

      (*(v38 + 8))(v35, v37);
      v29 = 0;
      v30 = v69;
    }
  }

  else
  {
    v41 = v68;
    v40 = v69;
    if (swift_dynamicCast())
    {
      (*(v65 + 8))(v41, v40);
      v29 = 3;
      goto LABEL_3;
    }

    v42 = v27;
    if (qword_100AD1928 != -1)
    {
      swift_once();
    }

    v43 = sub_10079ACE4();
    sub_100008B98(v43, qword_100AED458);
    v44 = v64;
    (v28)(v64, v66, v30);
    v45 = sub_10079ACC4();
    v46 = sub_1007A29D4();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v76 = v48;
      *v47 = 136315138;
      v49 = sub_1007A3A74();
      v51 = v50;
      v31 = v75;
      (*(v75 + 8))(v44, v30);
      v52 = sub_1000070F4(v49, v51, &v76);

      *(v47 + 4) = v52;
      _os_log_impl(&_mh_execute_header, v45, v46, "Unknown libraryContent: %s", v47, 0xCu);
      sub_1000074E0(v48);
    }

    else
    {

      v31 = v75;
      (*(v75 + 8))(v44, v30);
    }

    v29 = 0;
    v27 = v42;
  }

LABEL_4:
  (*(v31 + 8))(v27, v30);
  return v29;
}

uint64_t sub_1005F3060(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    if (a1 <= 1u)
    {
      if (a1)
      {
        return 3;
      }

      goto LABEL_6;
    }

    v12 = a1 == 2;
    v13 = 1;
    v14 = 6;
LABEL_13:
    if (v12)
    {
      return v13;
    }

    else
    {
      return v14;
    }
  }

  if (a1 - 4 >= 2)
  {
    v12 = a1 == 6;
    v13 = 2;
    v14 = 4;
    goto LABEL_13;
  }

LABEL_6:
  v15[7] = v1;
  v15[8] = v2;
  if (qword_100AD1928 != -1)
  {
    swift_once();
  }

  v4 = sub_10079ACE4();
  sub_100008B98(v4, qword_100AED458);
  v5 = sub_10079ACC4();
  v6 = sub_1007A29B4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15[0] = v8;
    *v7 = 136315138;
    v9 = sub_1007A22E4();
    v11 = sub_1000070F4(v9, v10, v15);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "Unknown ContextActionAssetType: %s", v7, 0xCu);
    sub_1000074E0(v8);
  }

  return 0;
}

uint64_t sub_1005F3214(uint64_t a1)
{
  v10 = *(v1 + 24);
  v11 = *(v1 + 16);
  v4 = *(v1 + 80);
  v9 = *(v1 + 72);
  v5 = *(v1 + 88);
  v6 = *(v1 + 96);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100009A34;

  return sub_1005F1BEC(a1, v11, v10, v1 + 32, v9, v4, v5, v6);
}

uint64_t sub_1005F331C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 88);
  v8 = *(v1 + 33);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100009A34;

  return sub_1005F1880(a1, v4, v5, v6, v8, v1 + 40, v7);
}

uint64_t sub_1005F33F4(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 176) = a4;
  *(v5 + 184) = a5;
  *(v5 + 160) = a2;
  *(v5 + 168) = a3;
  *(v5 + 296) = a1;
  v6 = sub_100796C04();
  *(v5 + 192) = v6;
  *(v5 + 200) = *(v6 - 8);
  *(v5 + 208) = swift_task_alloc();
  sub_1007A26F4();
  *(v5 + 216) = sub_1007A26E4();
  v7 = sub_1007A2694();
  *(v5 + 224) = v7;
  *(v5 + 232) = v8;

  return _swift_task_switch(sub_1005F3524, v7, v8);
}

uint64_t sub_1005F3524()
{
  v61 = v0;
  v1 = *(v0 + 168);
  v2 = [objc_opt_self() defaultManager];
  v3 = [v2 collectionProvider];

  *(v0 + 152) = 0;
  v4 = [v3 collectionOnMainQueueWithCollectionID:v1 error:v0 + 152];
  *(v0 + 240) = v4;
  swift_unknownObjectRelease();
  v5 = *(v0 + 152);
  if (v4)
  {
    v6 = *(v0 + 160);
    v7 = v6[3];
    v8 = v6[4];
    v9 = v6[5];
    sub_10000E3E8(v6, v7);
    v10 = v5;
    v11 = sub_1005F26EC(v7, v8, v9);
    if (v11)
    {
      v12 = v11;
      v13 = *(v0 + 184);
      v14 = *(v0 + 296);
      sub_10000E3E8(v13, v13[3]);
      v15 = sub_100796EF4();
      *(v0 + 248) = v15;
      if (v14 == 1)
      {
        v16 = (v0 + 112);
        sub_10000E3E8(*(v0 + 160), v6[3]);
        sub_1002C7274((v0 + 112));
        if (*(v0 + 136))
        {
          sub_10000E3E8(v16, *(v0 + 136));
          v59 = sub_100799184();
          v18 = v17;
          sub_1000074E0(v16);
        }

        else
        {
          v43 = *(v0 + 200);
          v42 = *(v0 + 208);
          v44 = *(v0 + 192);
          sub_100007840(v16, &unk_100AF1C40);
          _s5Books7InfoBarO7MessageC2id10Foundation4UUIDVvpfi_0();
          v59 = sub_100796BC4();
          v18 = v45;
          (*(v43 + 8))(v42, v44);
        }

        v58 = v18;
        *(v0 + 256) = v18;
        v31 = [v4 title];
        if (v31)
        {
          v46 = v31;
          v57 = sub_1007A2254();
          v48 = v47;

          *(v0 + 264) = v48;
          v49 = [v4 collectionID];
          if (v49)
          {
            v50 = v49;
            v51 = sub_1007A2254();
            v53 = v52;
          }

          else
          {
            v51 = 0;
            v53 = 0;
          }

          *(v0 + 272) = v53;
          v54 = *(v0 + 184);
          sub_10000A7C4(0, &unk_100ADAA00);
          sub_10000E3E8(v54, v13[3]);
          v55 = sub_100796EA4();
          *(v0 + 280) = v55;
          v56 = swift_task_alloc();
          *(v0 + 288) = v56;
          *v56 = v0;
          v56[1] = sub_1005F3B48;
          v65 = *(v0 + 176);
          v64 = 0;
          v63 = v55;
          v32 = v58;
          v31 = v59;
          v33 = v12;
          v34 = v57;
          v35 = v48;
          v36 = v51;
          v37 = v53;
          v38 = v15;

          return static BSUINoticeViewController.presentNoticeForAdding(assetID:assetContentType:collectionTitle:collectionID:options:objectGraph:useNonSpecificDeterminerInMessage:tracker:)(v31, v32, v33, v34, v35, v36, v37, v38);
        }

LABEL_27:
        __break(1u);
        return static BSUINoticeViewController.presentNoticeForAdding(assetID:assetContentType:collectionTitle:collectionID:options:objectGraph:useNonSpecificDeterminerInMessage:tracker:)(v31, v32, v33, v34, v35, v36, v37, v38);
      }

      v31 = [v4 title];
      if (!v31)
      {
        __break(1u);
        goto LABEL_27;
      }

      v39 = v31;

      sub_10000A7C4(0, &unk_100ADAA00);
      sub_1007A2254();

      sub_1007A2F84();
    }

    else
    {
      v20 = v0 + 16;

      if (qword_100AD1928 != -1)
      {
        swift_once();
      }

      v21 = *(v0 + 160);
      v22 = sub_10079ACE4();
      sub_100008B98(v22, qword_100AED458);
      sub_1002B0670(v21, v0 + 16);
      v23 = sub_10079ACC4();
      v24 = sub_1007A29B4();
      if (!os_log_type_enabled(v23, v24))
      {
        swift_unknownObjectRelease();

        sub_1000074E0(v0 + 16);
        goto LABEL_15;
      }

      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v60 = v26;
      *v25 = 136315138;
      sub_1002B0670(v20, v0 + 64);
      sub_1001F1160(qword_100AD4B50);
      v27 = sub_1007A22E4();
      v29 = v28;
      sub_1000074E0(v20);
      v30 = sub_1000070F4(v27, v29, &v60);

      *(v25 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v23, v24, "Unrecognized asset info: %s, can't present notice", v25, 0xCu);
      sub_1000074E0(v26);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v19 = v5;

    sub_1007967D4();

    swift_willThrow();
  }

LABEL_15:

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_1005F3B48()
{
  v1 = *v0;

  v2 = *(v1 + 232);
  v3 = *(v1 + 224);

  return _swift_task_switch(sub_1005F3D38, v3, v2);
}

uint64_t sub_1005F3D38()
{

  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005F3DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[22] = a5;
  v5[19] = a2;
  v5[20] = a3;
  v5[18] = a1;
  sub_1007A26F4();
  v5[23] = sub_1007A26E4();
  v7 = sub_1007A2694();
  v5[24] = v7;
  v5[25] = v6;

  return _swift_task_switch(sub_1005F3E78, v7, v6);
}

uint64_t sub_1005F3E78()
{
  v1 = *(v0 + 144);
  v2 = [*(v0 + 168) collectionController];
  *(v0 + 208) = v2;
  sub_10000E3E8(v1, v1[3]);
  sub_100797674();
  v3 = sub_1007A2214();
  *(v0 + 216) = v3;

  v4 = kBKCollectionDefaultIDWantToRead;
  *(v0 + 224) = kBKCollectionDefaultIDWantToRead;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 248;
  *(v0 + 24) = sub_1005F401C;
  v5 = swift_continuation_init();
  *(v0 + 136) = sub_1001F1160(&unk_100AE6E70);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1005EB504;
  *(v0 + 104) = &unk_100A26388;
  *(v0 + 112) = v5;
  [v2 addStoreID:v3 toCollectionID:v4 forceToTop:0 completion:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_1005F401C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 232) = v2;
  v3 = *(v1 + 200);
  v4 = *(v1 + 192);
  if (v2)
  {
    v5 = sub_1005F4530;
  }

  else
  {
    v5 = sub_1005F414C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1005F414C()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  v3 = *(v0 + 248);
  swift_unknownObjectRelease();

  if (v3 == 1)
  {
    sub_100414210(*(v0 + 144), *(v0 + 152));
    v4 = swift_task_alloc();
    *(v0 + 240) = v4;
    *v4 = v0;
    v4[1] = sub_1005F4308;
    v5 = *(v0 + 224);
    v6 = *(v0 + 152);
    v7 = *(v0 + 160);
    v8 = *(v0 + 144);

    return sub_1005F33F4(1, v8, v5, v6, v7);
  }

  else
  {

    if (qword_100AD1928 != -1)
    {
      swift_once();
    }

    v10 = sub_10079ACE4();
    sub_100008B98(v10, qword_100AED458);
    v11 = sub_10079ACC4();
    v12 = sub_1007A29B4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Failed trying to add asset to want to read", v13, 2u);
    }

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_1005F4308()
{
  v1 = *v0;

  v2 = *(v1 + 200);
  v3 = *(v1 + 192);

  return _swift_task_switch(sub_1005F4428, v3, v2);
}

uint64_t sub_1005F4428()
{
  v1 = *(v0 + 176);

  if (v1)
  {
    v2 = *(*(v0 + 176) + OBJC_IVAR___BKEngagementManager_manager);
    v3 = sub_1007999E4();

    if (v3)
    {
      type metadata accessor for SessionDonor();
      v4 = swift_dynamicCastClass();
      if (v4 && (v4[OBJC_IVAR___BKSessionDonor_addToWTRButtonUsed] & 1) == 0)
      {
        v4[OBJC_IVAR___BKSessionDonor_addToWTRButtonUsed] = 1;
        [v4 propertyDidChange:v4 propertyConfiguration:*&v4[OBJC_IVAR___BKSessionDonor_addToWTRButtonUsedConfig]];
      }

      swift_unknownObjectRelease();
    }
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1005F4530()
{
  v1 = v0[28];
  v2 = v0[27];

  swift_willThrow();
  swift_unknownObjectRelease();

  if (qword_100AD1928 != -1)
  {
    swift_once();
  }

  v3 = sub_10079ACE4();
  sub_100008B98(v3, qword_100AED458);
  v4 = sub_10079ACC4();
  v5 = sub_1007A29B4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed trying to add asset to want to read", v6, 2u);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_1005F46A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[22] = a5;
  v5[19] = a2;
  v5[20] = a3;
  v5[18] = a1;
  v6 = sub_1007971A4();
  v5[23] = v6;
  v5[24] = *(v6 - 8);
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  sub_1007A26F4();
  v5[28] = sub_1007A26E4();
  v8 = sub_1007A2694();
  v5[29] = v8;
  v5[30] = v7;

  return _swift_task_switch(sub_1005F47BC, v8, v7);
}

uint64_t sub_1005F47BC()
{
  v1 = *(v0 + 152);
  v2 = [*(v0 + 176) collectionController];
  *(v0 + 248) = v2;
  sub_10000E3E8(v1, v1[3]);
  sub_100797674();
  v3 = sub_1007A2214();
  *(v0 + 256) = v3;

  v4 = kBKCollectionDefaultIDWantToRead;
  *(v0 + 264) = kBKCollectionDefaultIDWantToRead;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 288;
  *(v0 + 24) = sub_1005F495C;
  v5 = swift_continuation_init();
  *(v0 + 136) = sub_1001F1160(&unk_100AE6E70);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1005EB504;
  *(v0 + 104) = &unk_100A263B0;
  *(v0 + 112) = v5;
  [v2 removeAssetID:v3 fromCollectionID:v4 completion:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_1005F495C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 272) = v2;
  v3 = *(v1 + 240);
  v4 = *(v1 + 232);
  if (v2)
  {
    v5 = sub_1005F4FAC;
  }

  else
  {
    v5 = sub_1005F4A8C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1005F4A8C()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);
  v3 = *(v0 + 288);
  swift_unknownObjectRelease();

  if (v3 != 1)
  {

    if (qword_100AD1928 != -1)
    {
      swift_once();
    }

    v12 = sub_10079ACE4();
    sub_100008B98(v12, qword_100AED458);
    v13 = sub_10079ACC4();
    v14 = sub_1007A29B4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Failed trying to remove asset from want to read", v15, 2u);
    }

    goto LABEL_18;
  }

  v4 = *(v0 + 216);
  v5 = *(v0 + 184);
  v6 = *(v0 + 192);
  v7 = *(v0 + 144);
  sub_1004143F0(*(v0 + 152), *(v0 + 160));
  sub_10000E3E8(v7, v7[3]);
  sub_100797784();
  if ((*(v6 + 88))(v4, v5) == enum case for ContextActionSource.library(_:))
  {
    v8 = *(v0 + 216);
    (*(*(v0 + 192) + 96))(v8, *(v0 + 184));
    v10 = *v8;
    v9 = v8[1];
    sub_1000074E0((v8 + 2));
    if (v10 == sub_1007A2254() && v9 == v11)
    {

LABEL_17:

LABEL_18:

      v29 = *(v0 + 8);

      return v29();
    }

    v28 = sub_1007A3AB4();

    if (v28)
    {
      goto LABEL_17;
    }
  }

  else
  {
    (*(*(v0 + 192) + 8))(*(v0 + 216), *(v0 + 184));
  }

  v17 = *(v0 + 200);
  v16 = *(v0 + 208);
  v18 = *(v0 + 184);
  v19 = *(v0 + 192);
  sub_100797784();
  (*(v19 + 104))(v17, enum case for ContextActionSource.wantToReadEntry(_:), v18);
  v20 = sub_100797184();
  v21 = *(v19 + 8);
  v21(v17, v18);
  v21(v16, v18);
  if (v20)
  {
    goto LABEL_17;
  }

  v22 = swift_task_alloc();
  *(v0 + 280) = v22;
  *v22 = v0;
  v22[1] = sub_1005F4E10;
  v23 = *(v0 + 264);
  v24 = *(v0 + 160);
  v25 = *(v0 + 168);
  v26 = *(v0 + 152);

  return sub_1005F33F4(0, v26, v23, v24, v25);
}

uint64_t sub_1005F4E10()
{
  v1 = *v0;

  v2 = *(v1 + 240);
  v3 = *(v1 + 232);

  return _swift_task_switch(sub_1005F4F30, v3, v2);
}

uint64_t sub_1005F4F30()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005F4FAC()
{
  v1 = v0[33];
  v2 = v0[32];

  swift_willThrow();
  swift_unknownObjectRelease();

  if (qword_100AD1928 != -1)
  {
    swift_once();
  }

  v3 = sub_10079ACE4();
  sub_100008B98(v3, qword_100AED458);
  v4 = sub_10079ACC4();
  v5 = sub_1007A29B4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed trying to remove asset from want to read", v6, 2u);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_1005F5120(char a1, uint64_t a2)
{
  v5 = *(sub_1001F1160(&unk_100ADA050) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1005F0648(a1, a2, v2 + v6, v8, v9);
}

uint64_t sub_1005F51F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002812C;

  return sub_1005F0978(a1, v4, v5, v7, v6);
}

uint64_t sub_1005F5308(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaAPINextInOrderedSeriesSeedBasedRecommendationService.NextInSeriesItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005F53B4()
{
  v1 = sub_1001F1160(&unk_100ADA050);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1005F54A4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(sub_1001F1160(&unk_100ADA050) - 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a2(a1, v5, v6, v7);
}

unint64_t sub_1005F5538()
{
  result = qword_100AED4B8;
  if (!qword_100AED4B8)
  {
    sub_1001F1234(&unk_100AF4D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AED4B8);
  }

  return result;
}

uint64_t sub_1005F559C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1005F55E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100009A34;

  return sub_1005EED94(a1, v4, v5, v7, v6);
}

uint64_t ServiceFactory.createService(withServiceCenter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *(a3 + 32);
  a4[3] = swift_getAssociatedTypeWitness();
  a4[4] = swift_getAssociatedConformanceWitness();
  sub_1002256EC(a4);
  return v8(a1, a2, a3);
}

uint64_t sub_1005F57BC(void *a1, void *a2, void *a3)
{
  sub_100009864(a1, &v11);
  sub_1001F1160(&qword_100AEB0E0);
  type metadata accessor for WidgetService();
  if (swift_dynamicCast())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a3;
    v7 = a3;
    WidgetService.setupService(libraryManager:onWidgetConfigurationChangeCallback:)(a2, sub_1005F8ED8, v6);
  }

  else
  {
    v11 = 0;
    v12 = 0xE000000000000000;
    sub_1007A3744(34);

    v11 = sub_1007A3D34();
    v12 = v9;
    v13._object = 0x80000001008E0BB0;
    v13._countAndFlagsBits = 0xD00000000000001ELL;
    sub_1007A23D4(v13);
    sub_10000E3E8(a1, a1[3]);
    swift_getDynamicType();
    v14._countAndFlagsBits = sub_1007A3D34();
    sub_1007A23D4(v14);

    result = sub_1007A38A4();
    __break(1u);
  }

  return result;
}

void sub_1005F5974(void *a1, void *a2, void *a3)
{
  sub_100009864(a1, &v8);
  sub_1001F1160(&qword_100AEB0E0);
  type metadata accessor for ReadingActivityService();
  if (swift_dynamicCast())
  {
    sub_100651640(v7, a2, a3);
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
    sub_1007A3744(34);

    v8 = sub_1007A3D34();
    v9 = v6;
    v10._object = 0x80000001008E0BB0;
    v10._countAndFlagsBits = 0xD00000000000001ELL;
    sub_1007A23D4(v10);
    sub_10000E3E8(a1, a1[3]);
    swift_getDynamicType();
    v11._countAndFlagsBits = sub_1007A3D34();
    sub_1007A23D4(v11);

    sub_1007A38A4();
    __break(1u);
  }
}

uint64_t ServiceFactory.setupService(_:withLibraryManager:appDelegate:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_1007A3454();
  v24 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  v14 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(v15);
  v17 = &v24 - v16;
  v25 = a1;
  sub_100009864(a1, &v26);
  sub_1001F1160(&qword_100AEB0E0);
  v18 = swift_dynamicCast();
  v19 = *(v14 + 56);
  if (v18)
  {
    v19(v13, 0, 1, AssociatedTypeWitness);
    (*(v14 + 32))(v17, v13, AssociatedTypeWitness);
    (*(a5 + 40))(v17, a2, a3, a4, a5);
    return (*(v14 + 8))(v17, AssociatedTypeWitness);
  }

  else
  {
    v19(v13, 1, 1, AssociatedTypeWitness);
    (*(v24 + 8))(v13, v11);
    v26 = 0;
    v27 = 0xE000000000000000;
    sub_1007A3744(34);
    swift_getObjectType();
    v21 = sub_1007A3D34();
    v23 = v22;

    v26 = v21;
    v27 = v23;
    v28._object = 0x80000001008E0BB0;
    v28._countAndFlagsBits = 0xD00000000000001ELL;
    sub_1007A23D4(v28);
    sub_10000E3E8(v25, v25[3]);
    swift_getDynamicType();
    v29._countAndFlagsBits = sub_1007A3D34();
    sub_1007A23D4(v29);

    result = sub_1007A38A4();
    __break(1u);
  }

  return result;
}

uint64_t ServiceCenter.registeredService<A>(withIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = sub_1007A3454();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23 - v11;
  v13 = OBJC_IVAR___BKServiceCenter_services;
  swift_beginAccess();
  v14 = *(v4 + v13);
  if (*(v14 + 16) && (v15 = sub_10000E53C(a1, a2), (v16 & 1) != 0))
  {
    sub_1000077D8(*(v14 + 56) + 56 * v15, &v23, &qword_100ADAE70);
    v27 = v23;
    v28 = v24;
    v29 = v25;
    v30 = v26;
    swift_endAccess();
    v23 = v27;
    v24 = v28;
    v25 = v29;
    v26 = v30;
    swift_unknownObjectRelease();
    sub_1001F1160(&qword_100AEB0E0);
    v17 = swift_dynamicCast();
    v18 = *(a3 - 8);
    v19 = *(v18 + 56);
    if (v17)
    {
      v20 = *(a3 - 8);
      v19(v12, 0, 1, a3);
      (*(v20 + 32))(a4, v12, a3);
      return (v19)(a4, 0, 1, a3);
    }

    v19(v12, 1, 1, a3);
    (*(v10 + 8))(v12, v9);
    v22 = v18;
  }

  else
  {
    swift_endAccess();
    v22 = *(a3 - 8);
  }

  return (*(v22 + 56))(a4, 1, 1, a3);
}

id sub_1005F60CC()
{
  v1 = OBJC_IVAR___BKServiceCenter____lazy_storage___serviceQueue;
  v2 = *(v0 + OBJC_IVAR___BKServiceCenter____lazy_storage___serviceQueue);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___BKServiceCenter____lazy_storage___serviceQueue);
  }

  else
  {
    v4 = [objc_allocWithZone(NSOperationQueue) init];
    [v4 setQualityOfService:25];
    v5 = sub_1007A2214();
    [v4 setName:v5];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

NSObject *sub_1005F618C()
{
  v1 = OBJC_IVAR___BKServiceCenter____lazy_storage___group;
  v2 = *(v0 + OBJC_IVAR___BKServiceCenter____lazy_storage___group);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___BKServiceCenter____lazy_storage___group);
  }

  else
  {
    v4 = dispatch_group_create();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id ServiceCenter.__allocating_init(configuration:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return sub_1005F806C(a1, v2, ObjectType, a2);
}

id ServiceCenter.init(configuration:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return sub_1005F80C4(a1, v2, ObjectType, a2);
}

uint64_t ServiceCenter.setupServices(withLibraryManager:appDelegate:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1007A1C54();
  v27 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1007A1CA4();
  v26 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR___BKServiceCenter_services;
  swift_beginAccess();
  if (*(*&v2[v12] + 16))
  {

    sub_100798954();

    if (LOBYTE(aBlock[0]))
    {
      return result;
    }

    sub_1007A29A4();
    if (qword_100AD1378 != -1)
    {
      swift_once();
    }

    sub_10079AB44();

    sub_100798B74();

    v14 = swift_allocObject();
    v25 = v14;
    *(v14 + 16) = _swiftEmptyArrayStorage;
    v15 = (v14 + 16);
    v16 = v3;
    v17 = a1;
    v18 = a2;

    sub_1005F85C4(v19, v16, v15, v17, v18);

    v20 = sub_1005F618C();
    sub_100017E74();
    v21 = sub_1007A2D74();
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = v22;
    aBlock[4] = sub_1005F8980;
    aBlock[5] = v23;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1003323D0;
    aBlock[3] = &unk_100A26788;
    v24 = _Block_copy(aBlock);

    sub_1007A1C74();
    v28 = _swiftEmptyArrayStorage;
    sub_100265BDC();
    sub_1001F1160(&unk_100AD7CA0);
    sub_100234698();
    sub_1007A3594();
    sub_1007A2CB4();
    _Block_release(v24);

    (*(v27 + 8))(v8, v6);
    (*(v26 + 8))(v11, v9);
  }

  else
  {

    sub_100798B74();
  }
}

void sub_1005F67C8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1001F1160(&qword_100AED518);
    sub_100798944();
    if (v3 == 2)
    {
      v2 = sub_1005F618C();
      dispatch_group_leave(v2);
    }
  }
}

uint64_t sub_1005F6858(uint64_t a1)
{
  sub_1007A29A4();
  if (qword_100AD1378 != -1)
  {
    swift_once();
  }

  sub_1001F1160(&unk_100AD5090);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10080EFF0;
  swift_beginAccess();
  v3 = *(a1 + 16);
  if (v3 >> 62)
  {
    v4 = sub_1007A38D4();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v2 + 56) = &type metadata for Int;
  *(v2 + 64) = &protocol witness table for Int;
  *(v2 + 32) = v4;
  swift_beginAccess();
  v5 = *(a1 + 16);
  if (v5 >> 62)
  {
    v6 = sub_1007A38D4();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = sub_10000E4C4();
  v8 = 115;
  if (v6 == 1)
  {
    v8 = 0;
  }

  v9 = 0xE100000000000000;
  *(v2 + 96) = &type metadata for String;
  *(v2 + 104) = v7;
  if (v6 == 1)
  {
    v9 = 0xE000000000000000;
  }

  *(v2 + 72) = v8;
  *(v2 + 80) = v9;
  sub_10079AB44();

  swift_beginAccess();
  *(a1 + 16) = _swiftEmptyArrayStorage;

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;

    sub_100798B74();
  }

  return result;
}

uint64_t ServiceCenter.deleteCloudData(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  v8 = sub_1007A2744();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  v9[5] = a1;
  v9[6] = a2;
  v10 = v2;
  sub_1000260E8(a1);
  sub_1003457A0(0, 0, v7, &unk_1008353B8, v9);
}

uint64_t sub_1005F6C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  return _swift_task_switch(sub_1005F6C40, 0, 0);
}

uint64_t sub_1005F6C40()
{
  v1 = v0[4];
  v2 = sub_1001F1160(&qword_100ADD5A8);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_1005F6D44;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 2, v2, v2, 0, 0, &unk_1008354E0, v3, v2);
}

uint64_t sub_1005F6D44()
{

  return _swift_task_switch(sub_1005F6E5C, 0, 0);
}

uint64_t sub_1005F6E5C()
{
  v1 = *(v0 + 40);
  if (*(v0 + 24) == 1)
  {
    v2 = *(v0 + 16);
    if (v1)
    {
      swift_errorRetain();
      v1(0, v2);
      sub_100359CEC(v2, 1);
    }

    sub_100359CEC(v2, 1);
  }

  else if (v1)
  {
    v1(1, 0);
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1005F6F24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[33] = a2;
  v3[34] = a3;
  v3[32] = a1;
  sub_1001F1160(&qword_100AD67D0);
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v4 = sub_1001F1160(&qword_100ADD5B0);
  v3[37] = v4;
  v3[38] = *(v4 - 8);
  v3[39] = swift_task_alloc();

  return _swift_task_switch(sub_1005F7038, 0, 0);
}

uint64_t sub_1005F7038()
{
  v1 = *(v0 + 272);
  v2 = OBJC_IVAR___BKServiceCenter_services;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = v3 + 64;
  v5 = -1;
  v6 = -1 << *(v3 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(v3 + 64);
  v8 = (63 - v6) >> 6;
  v37 = v3;
  v9 = swift_bridgeObjectRetain_n();
  v13 = 0;
  v35 = v8;
  v36 = v4;
  while (v7)
  {
LABEL_10:
    v16 = *(v0 + 280);
    v17 = *(v0 + 288);
    v18 = __clz(__rbit64(v7)) | (v13 << 6);
    v19 = (*(v37 + 48) + 16 * v18);
    v21 = *v19;
    v20 = v19[1];
    sub_1000077D8(*(v37 + 56) + 56 * v18, v0 + 32, &qword_100ADAE70);
    *(v0 + 16) = v21;
    *(v0 + 24) = v20;
    sub_1000077D8(v0 + 16, v0 + 88, &qword_100AED510);

    v38 = *(v0 + 104);
    sub_1000074E0(v0 + 120);
    v22 = sub_1007A2744();
    v23 = *(v22 - 8);
    (*(v23 + 56))(v17, 1, 1, v22);
    v24 = swift_allocObject();
    *(v24 + 16) = 0;
    v25 = (v24 + 16);
    *(v24 + 24) = 0;
    *(v24 + 32) = v38;
    sub_1000077D8(v17, v16, &qword_100AD67D0);
    LODWORD(v21) = (*(v23 + 48))(v16, 1, v22);
    swift_unknownObjectRetain();
    v26 = *(v0 + 280);
    if (v21 == 1)
    {
      sub_100007840(*(v0 + 280), &qword_100AD67D0);
      if (*v25)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_1007A2734();
      (*(v23 + 8))(v26, v22);
      if (*v25)
      {
LABEL_12:
        swift_getObjectType();
        swift_unknownObjectRetain();
        v27 = sub_1007A2694();
        v29 = v28;
        swift_unknownObjectRelease();
        goto LABEL_15;
      }
    }

    v27 = 0;
    v29 = 0;
LABEL_15:
    v30 = **(v0 + 264);
    v31 = swift_allocObject();
    *(v31 + 16) = &unk_100835500;
    *(v31 + 24) = v24;

    sub_1001F1160(&qword_100ADD5A8);
    v32 = v29 | v27;
    if (v29 | v27)
    {
      v32 = v0 + 160;
      *(v0 + 160) = 0;
      *(v0 + 168) = 0;
      *(v0 + 176) = v27;
      *(v0 + 184) = v29;
    }

    v14 = *(v0 + 288);
    v7 &= v7 - 1;
    *(v0 + 216) = 1;
    *(v0 + 224) = v32;
    *(v0 + 232) = v30;
    swift_task_create();

    swift_unknownObjectRelease();

    sub_100007840(v14, &qword_100AD67D0);
    v9 = sub_100007840(v0 + 16, &qword_100AED510);
    v8 = v35;
    v4 = v36;
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      return TaskGroup.Iterator.next(isolation:)(v9, v10, v11, v12);
    }

    if (v15 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v15);
    ++v13;
    if (v7)
    {
      v13 = v15;
      goto LABEL_10;
    }
  }

  sub_1001F1160(&qword_100ADD5A8);
  sub_1007A26C4();
  v33 = swift_task_alloc();
  *(v0 + 320) = v33;
  *v33 = v0;
  v33[1] = sub_1005F74E0;
  v12 = *(v0 + 296);
  v9 = v0 + 240;
  v10 = 0;
  v11 = 0;

  return TaskGroup.Iterator.next(isolation:)(v9, v10, v11, v12);
}

uint64_t sub_1005F74E0()
{

  return _swift_task_switch(sub_1005F75DC, 0, 0);
}

uint64_t sub_1005F75DC()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);
  if (v2 == 255)
  {
    v1 = 0;
  }

  else if ((v2 & 1) == 0)
  {
    v3 = swift_task_alloc();
    *(v0 + 320) = v3;
    *v3 = v0;
    v3[1] = sub_1005F74E0;
    v4 = *(v0 + 296);

    return TaskGroup.Iterator.next(isolation:)(v0 + 240, 0, 0, v4);
  }

  v5 = v2 != 255;
  v6 = *(v0 + 256);
  (*(*(v0 + 304) + 8))(*(v0 + 312), *(v0 + 296));
  *v6 = v1;
  *(v6 + 8) = v5;

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1005F7734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[22] = a1;
  v4[23] = a4;
  v5 = sub_10079ACE4();
  v4[24] = v5;
  v4[25] = *(v5 - 8);
  v4[26] = swift_task_alloc();

  return _swift_task_switch(sub_1005F77F4, 0, 0);
}

uint64_t sub_1005F77F4()
{
  v1 = v0[23];
  v0[2] = v0;
  v0[7] = v0 + 28;
  v0[3] = sub_1005F7910;
  v2 = swift_continuation_init();
  v0[17] = sub_1001F1160(&unk_100AE6E70);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1005EB504;
  v0[13] = &unk_100A26930;
  v0[14] = v2;
  [v1 deleteCloudDataWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1005F7910()
{
  v1 = *(*v0 + 48);
  *(*v0 + 216) = v1;
  if (v1)
  {
    v2 = sub_1005F7A94;
  }

  else
  {
    v2 = sub_1005F7A20;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1005F7A20()
{
  v1 = v0[22];
  v2 = v0[27] != 0;
  *v1 = 0;
  *(v1 + 8) = v2;

  v3 = v0[1];

  return v3();
}

uint64_t sub_1005F7A94()
{
  v19 = v0;
  swift_willThrow();
  sub_10079AC84();
  swift_errorRetain();
  v1 = sub_10079ACC4();
  v2 = sub_1007A29B4();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[26];
    v4 = v0[24];
    v5 = v0[25];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_1007A3B84();
    v10 = sub_1000070F4(v8, v9, &v18);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error deleting service data: %s", v6, 0xCu);
    sub_1000074E0(v7);

    (*(v5 + 8))(v3, v4);
  }

  else
  {
    v12 = v0[25];
    v11 = v0[26];
    v13 = v0[24];

    (*(v12 + 8))(v11, v13);
  }

  v14 = v0[27];
  v15 = v0[22];
  *v15 = v14;
  *(v15 + 8) = v14 != 0;

  v16 = v0[1];

  return v16();
}

uint64_t sub_1005F7E44(uint64_t a1, int *a2)
{
  *(v2 + 32) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  *v3 = v2;
  v3[1] = sub_1005F7F38;

  return v5(v2 + 16);
}

uint64_t sub_1005F7F38()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *v0;

  v4 = *(v1 + 24);
  *v2 = *(v1 + 16);
  *(v2 + 8) = v4;
  v5 = *(v3 + 8);

  return v5();
}

id sub_1005F806C(uint64_t a1, Class a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_allocWithZone(a2);

  return sub_1005F80C4(a1, v7, a3, a4);
}

id sub_1005F80C4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  *&a2[OBJC_IVAR___BKServiceCenter____lazy_storage___serviceQueue] = 0;
  *&a2[OBJC_IVAR___BKServiceCenter____lazy_storage___group] = 0;
  *&a2[OBJC_IVAR___BKServiceCenter_services] = _swiftEmptyDictionarySingleton;
  v8 = OBJC_IVAR___BKServiceCenter__setupState;
  v13 = 0;
  sub_1001F1160(&qword_100AD1F38);
  swift_allocObject();
  *&a2[v8] = sub_100798B54();
  v12.receiver = a2;
  v12.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v12, "init");
  v10 = swift_unknownObjectRetain();
  sub_1005F81D0(v10, v9, a3, a4);

  swift_unknownObjectRelease_n();
  return v9;
}

uint64_t sub_1005F81D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (*(a4 + 8))(a3, a4);
  v41 = *(v5 + 16);
  v42 = v5;
  if (!v41)
  {
  }

  v6 = 0;
  v39 = v5 + 32;
  v40 = OBJC_IVAR___BKServiceCenter_services;
  while (v6 < *(v42 + 16))
  {
    v43 = v6;
    v44 = *(v39 + 16 * v6);
    ObjectType = swift_getObjectType();
    v8 = *(*(&v44 + 1) + 8);
    swift_unknownObjectRetain();
    v8(v52, a2, ObjectType, *(&v44 + 1));
    sub_10000E3E8(v52, v52[3]);
    DynamicType = swift_getDynamicType();
    v10 = a2;
    v11 = v52[4];
    sub_1007A29A4();
    if (qword_100AD1378 != -1)
    {
      swift_once();
    }

    sub_1001F1160(&unk_100AD5090);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_10080B690;
    v13 = *(v11 + 8);
    v14 = v13(DynamicType, v11);
    v16 = v15;
    *(v12 + 56) = &type metadata for String;
    *(v12 + 64) = sub_10000E4C4();
    *(v12 + 32) = v14;
    *(v12 + 40) = v16;
    sub_10079AB44();

    v17 = v13(DynamicType, v11);
    v19 = v18;
    v49 = v44;
    sub_100009864(v52, v50);
    swift_beginAccess();
    v45 = v49;
    v46 = v50[0];
    v47 = v50[1];
    v48 = v51;
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v10 + v40);
    *(v10 + v40) = 0x8000000000000000;
    v23 = sub_10000E53C(v17, v19);
    v24 = v21[2];
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      goto LABEL_21;
    }

    v27 = v22;
    a2 = v10;
    if (v21[3] >= v26)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v22)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_1002F243C();
        if (v27)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_10000E5D8(v26, isUniquelyReferenced_nonNull_native);
      v28 = sub_10000E53C(v17, v19);
      if ((v27 & 1) != (v29 & 1))
      {
        goto LABEL_23;
      }

      v23 = v28;
      if (v27)
      {
LABEL_3:

        sub_10057FFF0(&v45, v21[7] + 56 * v23);
        goto LABEL_4;
      }
    }

    v21[(v23 >> 6) + 8] |= 1 << v23;
    v30 = (v21[6] + 16 * v23);
    *v30 = v17;
    v30[1] = v19;
    v31 = v21[7] + 56 * v23;
    v32 = v48;
    v34 = v46;
    v33 = v47;
    *v31 = v45;
    *(v31 + 16) = v34;
    *(v31 + 32) = v33;
    *(v31 + 48) = v32;
    v35 = v21[2];
    v36 = __OFADD__(v35, 1);
    v37 = v35 + 1;
    if (v36)
    {
      goto LABEL_22;
    }

    v21[2] = v37;
LABEL_4:
    v6 = v43 + 1;
    *(a2 + v40) = v21;
    swift_endAccess();
    swift_unknownObjectRelease();
    sub_1000074E0(v52);
    if (v41 == v43 + 1)
    {
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_1007A3B24();
  __break(1u);
  return result;
}

uint64_t sub_1005F85C4(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  v28 = v5;
  for (i = v9; v8; v9 = i)
  {
    v12 = a3;
LABEL_10:
    v14 = __clz(__rbit64(v8)) | (v11 << 6);
    v15 = (*(a1 + 48) + 16 * v14);
    v17 = *v15;
    v16 = v15[1];
    sub_1000077D8(*(a1 + 56) + 56 * v14, &v43, &qword_100ADAE70);
    v42[0] = v17;
    v42[1] = v16;

    v18 = sub_1005F618C();
    dispatch_group_enter(v18);

    sub_1000077D8(v42, v36, &qword_100AED510);

    swift_unknownObjectRelease();
    sub_1000077C0(v37, v39);
    v19 = v40;
    v20 = v41;
    sub_10000E3E8(v39, v40);
    (*(v20 + 16))(v19, v20);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100798964();

    sub_1007A25C4();
    if (*((*v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1007A2614();
    }

    v8 &= v8 - 1;
    sub_1007A2644();
    v33 = sub_1005F60CC();
    sub_1000077D8(v42, v36, &qword_100AED510);
    sub_100009864(v39, v35);
    v21 = swift_allocObject();
    v22 = v37[1];
    *(v21 + 48) = v37[0];
    *(v21 + 64) = v22;
    *(v21 + 80) = v38;
    v23 = v36[1];
    *(v21 + 16) = v36[0];
    *(v21 + 32) = v23;
    sub_1000077C0(v35, v21 + 88);
    *(v21 + 128) = a4;
    *(v21 + 136) = a5;
    aBlock[4] = sub_1005F925C;
    aBlock[5] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1003323D0;
    aBlock[3] = &unk_100A26980;
    v24 = _Block_copy(aBlock);
    v25 = a4;
    v26 = a5;

    [v33 addOperationWithBlock:v24];
    _Block_release(v24);

    sub_1000074E0(v39);
    result = sub_100007840(v42, &qword_100AED510);
    v5 = v28;
  }

  v12 = a3;
  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v9)
    {
    }

    v8 = *(v5 + 8 * v13);
    ++v11;
    if (v8)
    {
      v11 = v13;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1005F8990(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100009A34;

  return sub_1005F6C1C(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_1005F8A5C()
{
  result = qword_100AED4D0;
  if (!qword_100AED4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AED4D0);
  }

  return result;
}

void sub_1005F8AD4(void *a1, void *a2)
{
  sub_100009864(a1, &v6);
  sub_1001F1160(&qword_100AEB0E0);
  type metadata accessor for YearInReviewEligibilityService();
  if (swift_dynamicCast())
  {
    sub_10023DD84(v5, a2);
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
    sub_1007A3744(34);

    v6 = sub_1007A3D34();
    v7 = v4;
    v8._object = 0x80000001008E0BB0;
    v8._countAndFlagsBits = 0xD00000000000001ELL;
    sub_1007A23D4(v8);
    sub_10000E3E8(a1, a1[3]);
    swift_getDynamicType();
    v9._countAndFlagsBits = sub_1007A3D34();
    sub_1007A23D4(v9);

    sub_1007A38A4();
    __break(1u);
  }
}

void sub_1005F8C44(void *a1, void *a2)
{
  sub_100009864(a1, &v14);
  sub_1001F1160(&qword_100AEB0E0);
  type metadata accessor for PriceTrackingService();
  if (swift_dynamicCast())
  {
    v4 = [a2 priceTracker];
    v5 = [objc_opt_self() sharedInstance];
    sub_100798B74();
    sub_10068A63C(v5, v4);
    v6 = &v13[OBJC_IVAR___BKPriceTrackingService__addToWTRDelegate];
    swift_beginAccess();
    v7 = *v6;
    v8 = *(v6 + 1);
    v9 = *(v6 + 2);
    v10 = v9;

    v11 = sub_1006288C0(v7, v8, v9);

    [objc_opt_self() setAddToWTRDelegate:v11];

    sub_100798B74();
  }

  else
  {
    v14 = 0;
    v15 = 0xE000000000000000;
    sub_1007A3744(34);

    v14 = sub_1007A3D34();
    v15 = v12;
    v16._object = 0x80000001008E0BB0;
    v16._countAndFlagsBits = 0xD00000000000001ELL;
    sub_1007A23D4(v16);
    sub_10000E3E8(a1, a1[3]);
    swift_getDynamicType();
    v17._countAndFlagsBits = sub_1007A3D34();
    sub_1007A23D4(v17);

    sub_1007A38A4();
    __break(1u);
  }
}

uint64_t sub_1005F8EE0()
{
  swift_unknownObjectRelease();

  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1005F8F30(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002812C;

  return sub_1005F6C1C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1005F9000(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100009A34;

  return sub_1005F6F24(a1, a2, v6);
}

uint64_t sub_1005F90B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100009A34;

  return sub_1005F7734(a1, v4, v5, v6);
}

uint64_t sub_1005F9170(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002812C;

  return sub_1005F7E44(a1, v4);
}

uint64_t sub_1005F925C()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[5];
  ObjectType = swift_getObjectType();
  return (*(v3 + 16))(v0 + 11, v1, v2, ObjectType, v3);
}

id sub_1005F92D0@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = sub_1005F9304(*a1, a2, a3);
  *a4 = result;
  return result;
}

id sub_1005F9304(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = sub_1007974F4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = 0;
  v57 = 0u;
  v58 = 0u;
  sub_1001F1160(&unk_100AF1C20);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10080EFF0;
  sub_1007974E4();
  sub_1007974D4();
  *&v54[0] = v9;
  sub_1005F9A84();
  sub_1001F1160(&unk_100AF1C30);
  sub_1005F9ADC();
  sub_1007A3594();
  sub_100797404();
  if (v56 > 1u)
  {
    v44 = a2;
    if (v56 == 2)
    {
      v43 = a3;
      v15 = *&v54[0];
      v16 = a2[3];
      v17 = a2[4];
      sub_10000E3E8(a2, v16);
      v18 = v15;
      v19 = sub_100799574();
      v21 = v20;

      v22 = (*(v17 + 32))(v19, v21, v16, v17);

      if (v22)
      {
        BKLibraryAsset.contentInfo(options:)(v8, &v51);

        sub_1005F9B40(&v57);
        v14 = 0;
        v57 = v51;
        v58 = v52;
        v59 = v53;
      }

      else
      {
        v14 = 0;
      }

      a3 = v43;
      a2 = v44;
    }

    else
    {
      sub_1000077C0(v54, &v51);
      sub_10000E3E8(&v51, *(&v52 + 1));
      v15 = sub_100798EC4();
      v24 = a2[4];
      sub_10000E3E8(a2, a2[3]);
      sub_10000E3E8(&v51, *(&v52 + 1));
      v25 = sub_100798EB4();
      v26 = (*(v24 + 32))(v25);

      if (v26)
      {
        BKLibraryAsset.contentInfo(options:)(v8, &v48);

        sub_1005F9B40(&v57);
        v57 = v48;
        v58 = v49;
        v59 = v50;
        a2 = v44;
      }

      else
      {
        v43 = a3;
        v27 = v53;
        sub_10000E3E8(&v51, *(&v52 + 1));
        v42[1] = v27;
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        v29 = sub_1007A3454();
        v42[2] = v42;
        v42[0] = v29;
        v30 = *(v29 - 8);
        __chkstk_darwin(v29);
        v32 = v42 - v31;
        sub_100798EA4();
        v33 = *(AssociatedTypeWitness - 8);
        if ((*(v33 + 48))(v32, 1, AssociatedTypeWitness) == 1)
        {
          sub_1005F9B40(&v57);
          (*(v30 + 8))(v32, v42[0]);
          v48 = 0u;
          v49 = 0u;
          v50 = 0;
        }

        else
        {
          v46 = AssociatedTypeWitness;
          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
          v34 = sub_1002256EC(v45);
          (*(v33 + 32))(v34, v32, AssociatedTypeWitness);
          v35 = v46;
          v36 = AssociatedConformanceWitness;
          v37 = sub_10000E3E8(v45, v46);
          *(&v49 + 1) = v35;
          v50 = *(v36 + 8);
          v38 = sub_1002256EC(&v48);
          (*(*(v35 - 8) + 16))(v38, v37, v35);
          sub_1005F9B40(&v57);
          sub_1000074E0(v45);
        }

        a2 = v44;
        v57 = v48;
        v58 = v49;
        v59 = v50;
        a3 = v43;
      }

      sub_1000074E0(&v51);
      v14 = 0;
    }
  }

  else if (v56)
  {
    v14 = v55;
    sub_1000076D4(v54, &v48);
    sub_100007484(&v48, &v51);
    sub_1002BACBC();
    if (swift_dynamicCast())
    {
      v23 = v45[0];
      BKLibraryAsset.contentInfo(options:)(v8, &v51);

      sub_1000074E0(&v48);
      sub_1005F9B40(&v57);
      v57 = v51;
      v58 = v52;
      v59 = v53;
    }

    else
    {
      sub_1000074E0(&v48);
    }

    v15 = 0;
  }

  else
  {
    v10 = v54[0];
    v11 = a2[3];
    v12 = a2[4];
    sub_10000E3E8(a2, v11);
    v13 = (*(v12 + 32))(v10, *(&v10 + 1), v11, v12);

    if (v13)
    {
      BKLibraryAsset.contentInfo(options:)(v8, &v51);

      sub_1005F9B40(&v57);
      v14 = 0;
      v15 = 0;
      v57 = v51;
      v58 = v52;
      v59 = v53;
    }

    else
    {
      v14 = 0;
      v15 = 0;
    }
  }

  sub_1005F9BA8(&v57, v54);
  sub_100009864(a2, &v51);
  sub_100009864(a3, &v48);
  v39 = objc_allocWithZone(type metadata accessor for ContextAssetInfo());
  v40 = sub_1002BBC44(v15, v54, v14, &v51, &v48);
  (*(v6 + 8))(v8, v5);
  sub_1005F9B40(&v57);
  return v40;
}

unint64_t sub_1005F9A84()
{
  result = qword_100ADA290;
  if (!qword_100ADA290)
  {
    sub_1007974F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADA290);
  }

  return result;
}

unint64_t sub_1005F9ADC()
{
  result = qword_100ADA298;
  if (!qword_100ADA298)
  {
    sub_1001F1234(&unk_100AF1C30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADA298);
  }

  return result;
}

uint64_t sub_1005F9B40(uint64_t a1)
{
  v2 = sub_1001F1160(&unk_100AF1C40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1005F9BA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&unk_100AF1C40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

Class sub_1005F9C18(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_10000A7C4(0, &qword_100AE8DB0);
  sub_1007A25E4();
  v1();

  v2.super.isa = sub_1007A25D4().super.isa;

  return v2.super.isa;
}

uint64_t sub_1005F9CB0()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AED520);
  sub_100008B98(v0, qword_100AED520);
  return sub_10079ACD4();
}

unint64_t sub_1005F9DDC()
{
  result = qword_100AED570;
  if (!qword_100AED570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AED570);
  }

  return result;
}

void *sub_1005F9E30(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_14;
  }

  v3 = Strong;
  if (![Strong targetForAction:objc_msgSend(a1 withSender:{"action"), a1}])
  {

LABEL_14:
    if (qword_100AD1930 != -1)
    {
      swift_once();
    }

    v14 = sub_10079ACE4();
    sub_100008B98(v14, qword_100AED520);
    v15 = a1;
    v16 = sub_10079ACC4();
    v17 = sub_1007A29A4();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v26[0] = v19;
      *v18 = 136315138;
      [v15 action];
      v20 = sub_100796E84();
      v22 = sub_1000070F4(v20, v21, v26);

      *(v18 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v16, v17, "Dropping action '%s' because there's no target", v18, 0xCu);
      sub_1000074E0(v19);
    }

    return 0;
  }

  sub_1007A3504();
  swift_unknownObjectRelease();
  sub_100007484(v26, v25);
  sub_10000A7C4(0, &unk_100ADF430);
  if (swift_dynamicCast())
  {
    [v24 validateCommand:a1];
  }

  if (([a1 attributes] & 1) != 0 || (objc_msgSend(a1, "attributes") & 4) != 0)
  {
    if (qword_100AD1930 != -1)
    {
      swift_once();
    }

    v5 = sub_10079ACE4();
    sub_100008B98(v5, qword_100AED520);
    v6 = a1;
    v7 = sub_10079ACC4();
    v8 = sub_1007A29A4();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v25[0] = v10;
      *v9 = 136315138;
      [v6 action];
      v11 = sub_100796E84();
      v13 = sub_1000070F4(v11, v12, v25);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "Dropping action '%s' because target disabled or hid it", v9, 0xCu);
      sub_1000074E0(v10);
    }

    sub_1000074E0(v26);
    return 0;
  }

  sub_1000074E0(v26);

  v4 = a1;
  return a1;
}

uint64_t sub_1005FA1CC(void *a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1005FC3A8;
  *(v4 + 24) = v3;
  v9[4] = sub_1005FC3B0;
  v9[5] = v4;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1005F9C18;
  v9[3] = &unk_100A26AD8;
  v5 = _Block_copy(v9);
  v6 = v1;

  [a1 replaceChildrenOfMenuForIdentifier:UIMenuRoot fromChildrenBlock:v5];
  _Block_release(v5);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

UIMenu sub_1005FA338()
{
  v1 = sub_100796CF4();
  __chkstk_darwin(v1 - 8);
  v47 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1007A21D4();
  v50 = *(v46 - 8);
  __chkstk_darwin(v46);
  v45 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v44 = &v40 - v5;
  sub_1001F1160(&qword_100AED578);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100815060;
  v7 = v6;
  sub_1005FBE34(0, 0xE000000000000000);
  v8 = sub_1007A2214();
  v9 = objc_opt_self();
  v49 = v9;
  v10 = [v9 systemImageNamed:v8];

  v11 = sub_10000A7C4(0, &qword_100AECAB0);
  v51 = 0u;
  v52 = 0u;
  v12 = v10;
  v43 = v11;
  v13 = sub_1007A3414();
  v42 = v0;
  v14 = sub_1005F9E30(v13);

  *(v7 + 32) = v14;
  v48 = v7;
  sub_1005FB8C4(0, 0xE000000000000000);
  v15 = sub_1007A2214();
  v16 = [v9 _systemImageNamed:v15];

  v51 = 0u;
  v52 = 0u;
  v17 = v16;
  v18 = sub_1007A3414();
  v19 = sub_1005F9E30(v18);

  *(v7 + 40) = v19;
  v20 = v44;
  sub_1007A2154();
  v21 = v50;
  v41 = *(v50 + 16);
  v23 = v45;
  v22 = v46;
  v41(v45, v20, v46);
  sub_100796C94();
  sub_1007A22B4();
  v24 = *(v21 + 8);
  v50 = v21 + 8;
  v40 = v24;
  v24(v20, v22);
  v25 = sub_1007A2214();
  v26 = [v49 systemImageNamed:v25];

  v51 = 0u;
  v52 = 0u;
  v27 = v26;
  v28 = sub_1007A3414();
  v29 = sub_1005F9E30(v28);

  *(v48 + 48) = v29;
  sub_1007A2154();
  v41(v23, v20, v22);
  sub_100796C94();
  sub_1007A22B4();
  v40(v20, v22);
  v30 = sub_1007A2214();
  v31 = [v49 systemImageNamed:v30];

  v51 = 0u;
  v52 = 0u;
  v32 = v31;
  v33 = sub_1007A3414();
  v34 = sub_1005F9E30(v33);

  v35 = v48;
  *(v48 + 56) = v34;
  *&v51 = v35;
  sub_1001F1160(&qword_100AED580);
  sub_10000A7C4(0, &qword_100AE8DB0);
  sub_100005920(&qword_100AED588, &qword_100AED580);
  v36 = sub_1007A24D4();

  *&v51 = v36;
  sub_1001F1160(&unk_100AF2640);
  sub_100005920(&qword_100AE12E8, &unk_100AF2640);
  if (sub_1007A28A4())
  {
    sub_10000A7C4(0, &qword_100AD8170);
    v54._countAndFlagsBits = 0;
    v54._object = 0xE000000000000000;
    v55.value._countAndFlagsBits = 0;
    v55.value._object = 0;
    v53.value.super.isa = 0;
    v53.is_nil = 0;
    v37.value = 17;
    return sub_1007A30C4(v54, v55, v53, v37, 0xFFFFFFFFFFFFFFFFLL, v36, v39);
  }

  else
  {

    return 0;
  }
}

UIMenu sub_1005FAAB0()
{
  v0 = sub_100796CF4();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1007A21D4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v18 - v6;
  sub_1001F1160(&qword_100AED578);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10080B690;
  sub_1007A2154();
  (*(v2 + 16))(v4, v7, v1);
  sub_100796C94();
  sub_1007A22B4();
  (*(v2 + 8))(v7, v1);
  v9 = sub_1007A2214();
  v10 = [objc_opt_self() systemImageNamed:v9];

  sub_10000A7C4(0, &qword_100AECAB0);
  memset(v18, 0, sizeof(v18));
  v11 = v10;
  v12 = sub_1007A3414();
  v13 = sub_1005F9E30(v12);

  *(v8 + 32) = v13;
  *&v18[0] = v8;
  sub_1001F1160(&qword_100AED580);
  sub_10000A7C4(0, &qword_100AE8DB0);
  sub_100005920(&qword_100AED588, &qword_100AED580);
  v14 = sub_1007A24D4();

  *&v18[0] = v14;
  sub_1001F1160(&unk_100AF2640);
  sub_100005920(&qword_100AE12E8, &unk_100AF2640);
  if (sub_1007A28A4())
  {
    sub_10000A7C4(0, &qword_100AD8170);
    v20._countAndFlagsBits = 0;
    v20._object = 0xE000000000000000;
    v21.value._countAndFlagsBits = 0;
    v21.value._object = 0;
    v19.value.super.isa = 0;
    v19.is_nil = 0;
    v15.value = 1;
    return sub_1007A30C4(v20, v21, v19, v15, 0xFFFFFFFFFFFFFFFFLL, v14, v17);
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1005FAEC8()
{
  sub_1001F1160(&qword_100AED578);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10080B690;
  if (_UISolariumEnabled())
  {
    v1 = 129;
  }

  else
  {
    v1 = 17;
  }

  v2 = sub_1005FB108(0);
  if (v2 >> 62)
  {
    sub_10000A7C4(0, &qword_100AE8DB0);
    v3 = sub_1007A38C4();
  }

  else
  {

    sub_1007A3AD4();
    sub_10000A7C4(0, &qword_100AE8DB0);
    v3 = v2;
  }

  sub_1001F1160(&unk_100AF2640);
  sub_100005920(&qword_100AE12E8, &unk_100AF2640);
  if (sub_1007A28A4())
  {
    sub_10000A7C4(0, &qword_100AD8170);
    v9._countAndFlagsBits = 0;
    v9._object = 0xE000000000000000;
    v10.value._countAndFlagsBits = 0;
    v10.value._object = 0;
    v8.value.super.isa = 0;
    v8.is_nil = 0;
    v4.value = v1;
    v5.super.super.isa = sub_1007A30C4(v9, v10, v8, v4, 0xFFFFFFFFFFFFFFFFLL, v3, v3).super.super.isa;
  }

  else
  {

    v5.super.super.isa = 0;
  }

  *(v0 + 32) = v5;
  sub_1001F1160(&qword_100AED580);
  sub_10000A7C4(0, &qword_100AE8DB0);
  sub_100005920(&qword_100AED588, &qword_100AED580);
  v6 = sub_1007A24D4();

  return v6;
}

void *sub_1005FB108(char a1)
{
  v2 = sub_1003FFEB0(a1);
  v3 = v2;
  v14 = _swiftEmptyArrayStorage;
  v4 = v2 & 0xFFFFFFFFFFFFFF8;
  if (v2 >> 62)
  {
LABEL_17:
    v5 = sub_1007A38D4();
  }

  else
  {
    v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = v1;
  v7 = 0;
  v13 = _swiftEmptyArrayStorage;
  while (v5 != v7)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v8 = sub_1007A3784();
    }

    else
    {
      if (v7 >= *(v4 + 16))
      {
        goto LABEL_16;
      }

      v8 = *(v3 + 8 * v7 + 32);
    }

    v9 = v8;
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v1 = v6;
    v11 = sub_1005F9E30(v8);

    ++v7;
    if (v11)
    {
      sub_1007A25C4();
      if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1007A2614();
      }

      v1 = &v14;
      sub_1007A2644();
      v13 = v14;
      v7 = v10;
    }
  }

  return v13;
}

id sub_1005FB280()
{
  v0 = sub_100796CF4();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1007A21D4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v25 - v6;
  sub_1007A2154();
  (*(v2 + 16))(v4, v7, v1);
  sub_100796C94();
  sub_1007A22B4();
  (*(v2 + 8))(v7, v1);
  v8 = objc_opt_self();
  v9 = sub_1007A2214();
  v10 = [v8 __systemImageNamedSwift:v9];

  sub_10000A7C4(0, &qword_100AECAB0);
  memset(v30, 0, 32);
  v11 = v10;
  v12 = _swiftEmptyArrayStorage;
  v13 = sub_1007A3414();
  v14 = sub_1005F9E30(v13);

  if (!v14)
  {
    return v14;
  }

  v15 = v14;
  v16 = sub_1005FB108(0);
  v17 = v16;
  if (v16 >> 62)
  {
    goto LABEL_18;
  }

  v18 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v18)
  {
LABEL_19:

LABEL_20:
    sub_10079E904();
    v14 = sub_10079E8E4();

    return v14;
  }

  while (1)
  {
    v29 = v12;
    result = sub_1007A37F4();
    if (v18 < 0)
    {
      break;
    }

    v20 = 0;
    v26 = v15;
    v27 = v17 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v15 = (v20 + 1);
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if ((v17 & 0xC000000000000001) != 0)
      {
        v23 = sub_1007A3784();
      }

      else
      {
        if (v20 >= *(v27 + 16))
        {
          goto LABEL_17;
        }

        v23 = *(v17 + 8 * v20 + 32);
      }

      v24 = v23;
      result = [v23 propertyList];
      if (!result)
      {
        goto LABEL_23;
      }

      sub_1007A3504();
      swift_unknownObjectRelease();
      sub_1000076D4(&v28, v30);
      swift_dynamicCast();
      result = sub_1007A00D4();
      if (result > 5u)
      {
        goto LABEL_24;
      }

      sub_10000A7C4(0, &qword_100AD8390);
      sub_10079E904();
      sub_10079E8F4();
      v21 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v22 = swift_allocObject();
      *(v22 + 16) = v21;
      *(v22 + 24) = v24;
      sub_1007A31D4();
      sub_1007A37D4();
      v12 = v29[2];
      sub_1007A3804();
      sub_1007A3814();
      sub_1007A37E4();
      ++v20;
      if (v15 == v18)
      {

        v15 = v26;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    v18 = sub_1007A38D4();
    if (!v18)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void sub_1005FB7FC(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      v8 = [a3 action];
      v10[3] = sub_10000A7C4(0, &qword_100AECAB0);
      v10[0] = a3;
      v9 = a3;
      sub_100699F0C(v8, v10);

      sub_1000230BC(v10);
    }
  }
}

uint64_t sub_1005FB8C4(uint64_t a1, unint64_t a2)
{
  v35 = a2;
  v36 = a1;
  v2 = sub_100796504();
  v31 = *(v2 - 8);
  v32 = v2;
  __chkstk_darwin(v2);
  v30 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100796CF4();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1007A21D4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v29 - v10;
  sub_1007A2154();
  v12 = *(v6 + 16);
  v12(v8, v11, v5);
  sub_100796C94();
  v33 = sub_1007A22B4();
  v34 = v13;
  v14 = *(v6 + 8);
  v14(v11, v5);
  sub_1007A2154();
  v12(v8, v11, v5);
  sub_100796C94();
  v15 = v35;
  v29[1] = sub_1007A22B4();
  v14(v11, v5);
  sub_1007A2154();
  v12(v8, v11, v5);
  sub_100796C94();
  sub_1007A22B4();
  v14(v11, v5);
  v16 = v36;
  v17 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v17 = v36 & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {

    if (sub_1007A23A4() <= 24)
    {

      sub_1001F1160(&unk_100AD5090);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_10080B690;
      *(v27 + 56) = &type metadata for String;
      *(v27 + 64) = sub_10000E4C4();
      *(v27 + 32) = v16;
      *(v27 + 40) = v15;
    }

    else
    {

      sub_10048A2C0(23);

      v18 = sub_1007A2334();
      v20 = v19;

      v37 = v18;
      v38 = v20;
      v21 = v30;
      sub_1007964E4();
      sub_100206ECC();
      v22 = sub_1007A3494();
      v24 = v23;
      (*(v31 + 8))(v21, v32);

      sub_1001F1160(&unk_100AD5090);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_10080B690;
      *(v25 + 56) = &type metadata for String;
      *(v25 + 64) = sub_10000E4C4();
      *(v25 + 32) = v22;
      *(v25 + 40) = v24;
    }

    v26 = sub_1007A2284();
  }

  else
  {

    return v33;
  }

  return v26;
}

uint64_t sub_1005FBE34(uint64_t a1, unint64_t a2)
{
  v35 = a2;
  v36 = a1;
  v2 = sub_100796504();
  v31 = *(v2 - 8);
  v32 = v2;
  __chkstk_darwin(v2);
  v30 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100796CF4();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1007A21D4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v29 - v10;
  sub_1007A2154();
  v12 = *(v6 + 16);
  v12(v8, v11, v5);
  sub_100796C94();
  v33 = sub_1007A22B4();
  v34 = v13;
  v14 = *(v6 + 8);
  v14(v11, v5);
  sub_1007A2154();
  v12(v8, v11, v5);
  sub_100796C94();
  v15 = v35;
  v29[1] = sub_1007A22B4();
  v14(v11, v5);
  sub_1007A2154();
  v12(v8, v11, v5);
  sub_100796C94();
  sub_1007A22B4();
  v14(v11, v5);
  v16 = v36;
  v17 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v17 = v36 & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {

    if (sub_1007A23A4() <= 24)
    {

      sub_1001F1160(&unk_100AD5090);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_10080B690;
      *(v27 + 56) = &type metadata for String;
      *(v27 + 64) = sub_10000E4C4();
      *(v27 + 32) = v16;
      *(v27 + 40) = v15;
    }

    else
    {

      sub_10048A2C0(23);

      v18 = sub_1007A2334();
      v20 = v19;

      v37 = v18;
      v38 = v20;
      v21 = v30;
      sub_1007964E4();
      sub_100206ECC();
      v22 = sub_1007A3494();
      v24 = v23;
      (*(v31 + 8))(v21, v32);

      sub_1001F1160(&unk_100AD5090);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_10080B690;
      *(v25 + 56) = &type metadata for String;
      *(v25 + 64) = sub_10000E4C4();
      *(v25 + 32) = v22;
      *(v25 + 40) = v24;
    }

    v26 = sub_1007A2284();
  }

  else
  {

    return v33;
  }

  return v26;
}

uint64_t sub_1005FC3E0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_10079CB24();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = sub_1001F1160(&qword_100AED5A0);
  return sub_1005FC438(a1, a2 + *(v4 + 44));
}

uint64_t sub_1005FC438@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1001F1160(&qword_100AED5A8);
  __chkstk_darwin(v4 - 8);
  v62 = &v45[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v45[-v7];
  v9 = sub_1001F1160(&qword_100AED5B0);
  __chkstk_darwin(v9 - 8);
  v64 = &v45[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v45[-v12];
  v61 = sub_10079E254();
  v57 = *(v61 - 8);
  v14 = v57;
  __chkstk_darwin(v61);
  v60 = &v45[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v63 = &v45[-v17];
  __chkstk_darwin(v18);
  v20 = &v45[-v19];
  __chkstk_darwin(v21);
  v23 = &v45[-v22];
  v24 = sub_1001F1160(&qword_100AED5B8);
  __chkstk_darwin(v24 - 8);
  v26 = &v45[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v27);
  v29 = &v45[-v28];
  sub_10079E474();
  sub_10079BE54();
  v53 = v65;
  v52 = v67;
  v51 = v69;
  v50 = v70;
  v73 = 1;
  v72 = v66;
  v71 = v68;
  v59 = v29;
  sub_1005FCA34(a1, v29);
  v58 = v23;
  sub_10079E244();
  v56 = v13;
  sub_1005FD708(a1, v13);
  v54 = v20;
  sub_10079E244();
  v49 = v8;
  sub_1005FE1B4(a1, v8);
  v46 = v73;
  v47 = v72;
  v48 = v71;
  v30 = v29;
  v31 = v26;
  v55 = v26;
  sub_1000077D8(v30, v26, &qword_100AED5B8);
  v32 = *(v14 + 16);
  v33 = v63;
  v34 = v23;
  v35 = v61;
  v32(v63, v34, v61);
  v36 = v13;
  v37 = v64;
  sub_1000077D8(v36, v64, &qword_100AED5B0);
  v38 = v60;
  v32(v60, v20, v35);
  v39 = v8;
  v40 = v62;
  sub_1000077D8(v39, v62, &qword_100AED5A8);
  *a2 = 0;
  *(a2 + 8) = v46;
  *(a2 + 16) = v53;
  *(a2 + 24) = v47;
  *(a2 + 32) = v52;
  *(a2 + 40) = v48;
  v41 = v50;
  *(a2 + 48) = v51;
  *(a2 + 56) = v41;
  v42 = sub_1001F1160(&qword_100AED5C0);
  sub_1000077D8(v31, a2 + v42[12], &qword_100AED5B8);
  v32((a2 + v42[16]), v33, v35);
  sub_1000077D8(v37, a2 + v42[20], &qword_100AED5B0);
  v32((a2 + v42[24]), v38, v35);
  sub_1000077D8(v40, a2 + v42[28], &qword_100AED5A8);
  sub_100007840(v49, &qword_100AED5A8);
  v43 = *(v57 + 8);
  v43(v54, v35);
  sub_100007840(v56, &qword_100AED5B0);
  v43(v58, v35);
  sub_100007840(v59, &qword_100AED5B8);
  sub_100007840(v40, &qword_100AED5A8);
  v43(v38, v35);
  sub_100007840(v64, &qword_100AED5B0);
  v43(v63, v35);
  return sub_100007840(v55, &qword_100AED5B8);
}

uint64_t sub_1005FCA34@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v3 = sub_1001F1160(&qword_100AED640);
  __chkstk_darwin(v3 - 8);
  v61 = v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v59 = v55 - v6;
  v58 = sub_1001F1160(&qword_100AED648) - 8;
  __chkstk_darwin(v58);
  v60 = v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v69 = v55 - v9;
  __chkstk_darwin(v10);
  v67 = (v55 - v11);
  __chkstk_darwin(v12);
  v63 = (v55 - v13);
  v14 = sub_10079CA84();
  v15 = *(v14 - 8);
  v56 = v14;
  v57 = v15;
  __chkstk_darwin(v14);
  v17 = v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1001F1160(&qword_100ADB860);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v55 - v20;
  v66 = sub_1001F1160(&qword_100AED620);
  v68 = *(v66 - 8);
  __chkstk_darwin(v66);
  v65 = v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v64 = v55 - v24;
  *&v71 = 0;
  *(&v71 + 1) = 0xE000000000000000;
  sub_1007A3744(24);

  *&v71 = 0x206F7420706154;
  *(&v71 + 1) = 0xE700000000000000;
  v74 = a1[19];
  sub_1001F1160(&qword_100ADB850);
  sub_10079DFF4();
  if (v73)
  {
    v25._countAndFlagsBits = 1162103112;
  }

  else
  {
    v25._countAndFlagsBits = 1464813651;
  }

  v25._object = 0xE400000000000000;
  sub_1007A23D4(v25);

  v75._countAndFlagsBits = 0x20726F7469646520;
  v75._object = 0xEF756E656D206E69;
  sub_1007A23D4(v75);
  v26 = v71;
  v27 = swift_allocObject();
  memcpy((v27 + 16), a1, 0x140uLL);
  v74 = v26;
  sub_100600CA4(a1, &v71);
  sub_100206ECC();
  sub_10079E084();
  sub_10079CA74();
  sub_100005920(&qword_100AEE360, &qword_100ADB860);
  sub_100600CE4();
  v28 = v56;
  sub_10079D6A4();
  (*(v57 + 8))(v17, v28);
  (*(v19 + 8))(v21, v18);
  v29 = a1;
  v73 = a1[5];
  v74 = v73;
  sub_1001F1160(&qword_100AD7168);
  sub_10079E014();
  v30 = v71;
  v31 = v72;
  v32 = sub_10079C8F4();
  v33 = v63;
  *v63 = v32;
  v33[1] = 0;
  *(v33 + 16) = 1;
  v34 = sub_1001F1160(&qword_100AED650);
  sub_1005FE8F4(v30, *(&v30 + 1), 0xD000000000000011, 0x80000001008E10B0, v33 + *(v34 + 44), v31);

  v71 = v74;
  sub_10079DFF4();
  v35 = v58;
  v36 = (v33 + *(v58 + 44));
  *v36 = v73;
  v36[1] = sub_1005FD38C;
  v36[2] = 0;
  v55[1] = v29;
  v73 = v29[6];
  v70 = v29[6];
  sub_10079E014();
  v37 = v71;
  v38 = v72;
  v39 = sub_10079C8F4();
  v40 = v67;
  *v67 = v39;
  v40[1] = 0;
  *(v40 + 16) = 1;
  sub_1005FE8F4(v37, *(&v37 + 1), 0xD000000000000019, 0x80000001008E10D0, v40 + *(v34 + 44), v38);

  v71 = v73;
  sub_10079DFF4();
  v41 = (v40 + *(v35 + 44));
  *v41 = v70;
  v41[1] = sub_1005FD3C8;
  v41[2] = 0;
  v42 = v59;
  sub_1005FD404(v59);
  v58 = *(v68 + 16);
  v43 = v65;
  v44 = v66;
  (v58)(v65, v64, v66);
  v45 = v69;
  sub_1000077D8(v33, v69, &qword_100AED648);
  v46 = v60;
  sub_1000077D8(v40, v60, &qword_100AED648);
  v47 = v42;
  v48 = v42;
  v49 = v61;
  sub_1000077D8(v47, v61, &qword_100AED640);
  v50 = v62;
  (v58)(v62, v43, v44);
  v51 = sub_1001F1160(&qword_100AED658);
  sub_1000077D8(v45, v50 + v51[12], &qword_100AED648);
  sub_1000077D8(v46, v50 + v51[16], &qword_100AED648);
  sub_1000077D8(v49, v50 + v51[20], &qword_100AED640);
  sub_100007840(v48, &qword_100AED640);
  sub_100007840(v67, &qword_100AED648);
  sub_100007840(v63, &qword_100AED648);
  v52 = *(v68 + 8);
  v53 = v66;
  v52(v64, v66);
  sub_100007840(v49, &qword_100AED640);
  sub_100007840(v46, &qword_100AED648);
  sub_100007840(v69, &qword_100AED648);
  return (v52)(v65, v53);
}

uint64_t sub_1005FD29C(uint64_t a1)
{
  v3 = *(a1 + 304);
  v4 = v3;
  v5 = *(&v3 + 1);
  sub_1000077D8(&v5, v2, &qword_100AED638);
  sub_1001F1160(&qword_100ADB850);
  sub_10079DFF4();
  v3 = v4;
  v2[0] = !v2[0];
  sub_10079E004();
  sub_100007840(&v4, &qword_100ADB850);
  sub_10079FCE4();
  v3 = v4;
  sub_10079DFF4();
  return sub_10079FAB4();
}

uint64_t sub_1005FD404@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_10079CB34();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = sub_1001F1160(&qword_100AED660);
  sub_1005FEE74(v1, a1 + *(v3 + 44));
  sub_1001F1160(&qword_100ADC7D8);
  sub_10079DFF4();
  v4 = (a1 + *(sub_1001F1160(&qword_100AED668) + 36));
  *v4 = v13;
  v4[1] = sub_1005FF7AC;
  v4[2] = 0;
  sub_10079DFF4();
  v5 = (a1 + *(sub_1001F1160(&qword_100AED670) + 36));
  *v5 = v13;
  v5[1] = sub_1005FF7E8;
  v5[2] = 0;
  sub_10079DFF4();
  v6 = (a1 + *(sub_1001F1160(&qword_100AED678) + 36));
  *v6 = v13;
  v6[1] = sub_1005FF824;
  v6[2] = 0;
  sub_10079DFF4();
  v7 = (a1 + *(sub_1001F1160(&qword_100AED680) + 36));
  *v7 = v13;
  v7[1] = sub_1005FF860;
  v7[2] = 0;
  sub_10079DFF4();
  v8 = (a1 + *(sub_1001F1160(&qword_100AED688) + 36));
  *v8 = v13;
  v8[1] = sub_1005FF89C;
  v8[2] = 0;
  sub_10079DFF4();
  v9 = (a1 + *(sub_1001F1160(&qword_100AED690) + 36));
  *v9 = v13;
  v9[1] = sub_1005FF8D8;
  v9[2] = 0;
  sub_10079DFF4();
  v10 = (a1 + *(sub_1001F1160(&qword_100AED698) + 36));
  *v10 = v13;
  v10[1] = sub_1005FF914;
  v10[2] = 0;
  sub_10079DFF4();
  result = sub_1001F1160(&qword_100AED640);
  v12 = (a1 + *(result + 36));
  *v12 = v13;
  v12[1] = sub_1005FF950;
  v12[2] = 0;
  return result;
}

uint64_t sub_1005FD708@<X0>(__int128 *a1@<X0>, char *a2@<X8>)
{
  v72 = a2;
  v3 = sub_1001F1160(&qword_100AED5C8);
  v69 = *(v3 - 8);
  v70 = v3;
  __chkstk_darwin(v3);
  v58 = (&v57 - v4);
  v5 = sub_1001F1160(&qword_100AED618);
  __chkstk_darwin(v5 - 8);
  v71 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v65 = &v57 - v8;
  v9 = sub_10079CA84();
  v76 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1001F1160(&qword_100ADB860);
  v75 = *(v12 - 8);
  __chkstk_darwin(v12);
  v64 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v57 - v15;
  v17 = sub_1001F1160(&qword_100AED620);
  v67 = *(v17 - 8);
  v68 = v17;
  __chkstk_darwin(v17);
  v66 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v74 = &v57 - v20;
  __chkstk_darwin(v21);
  v77 = &v57 - v22;
  __chkstk_darwin(v23);
  v25 = &v57 - v24;
  *&v80[0] = 0;
  *(&v80[0] + 1) = 0xE000000000000000;
  sub_1007A3744(21);

  *&v80[0] = 0xD000000000000013;
  *(&v80[0] + 1) = 0x80000001008E1050;
  v81 = *a1;
  v63 = sub_1001F1160(&qword_100ADB850);
  sub_10079DFF4();
  if (v79)
  {
    v26._countAndFlagsBits = 7562585;
  }

  else
  {
    v26._countAndFlagsBits = 28494;
  }

  if (v79)
  {
    v27 = 0xE300000000000000;
  }

  else
  {
    v27 = 0xE200000000000000;
  }

  v26._object = v27;
  sub_1007A23D4(v26);

  v28 = v80[0];
  v29 = swift_allocObject();
  memcpy((v29 + 16), a1, 0x140uLL);
  v81 = v28;
  v30 = a1;
  sub_100600CA4(a1, v80);
  v62 = sub_100206ECC();
  sub_10079E084();
  sub_10079CA74();
  v61 = sub_100005920(&qword_100AEE360, &qword_100ADB860);
  v31 = sub_100600CE4();
  v59 = v12;
  v60 = v31;
  v73 = v25;
  v32 = v9;
  sub_10079D6A4();
  v33 = *(v76 + 8);
  v76 += 8;
  v33(v11, v9);
  v34 = *(v75 + 8);
  v75 += 8;
  v34(v16, v12);
  *&v80[0] = 0;
  *(&v80[0] + 1) = 0xE000000000000000;
  sub_1007A3744(22);

  *&v80[0] = 0xD000000000000014;
  *(&v80[0] + 1) = 0x80000001008E1070;
  v81 = v30[1];
  v79 = v30[1];
  sub_10079DFF4();
  if (v78)
  {
    v35._countAndFlagsBits = 7562585;
  }

  else
  {
    v35._countAndFlagsBits = 28494;
  }

  if (v78)
  {
    v36 = 0xE300000000000000;
  }

  else
  {
    v36 = 0xE200000000000000;
  }

  v35._object = v36;
  sub_1007A23D4(v35);

  v37 = v80[0];
  v38 = swift_allocObject();
  memcpy((v38 + 16), v30, 0x140uLL);
  v79 = v37;
  v39 = v30;
  sub_100600CA4(v30, v80);
  v40 = v64;
  sub_10079E084();
  sub_10079CA74();
  v41 = v59;
  sub_10079D6A4();
  v33(v11, v32);
  v42 = v65;
  v34(v40, v41);
  v80[0] = v81;
  sub_10079DFF4();
  v43 = 1;
  if (v79 == 1)
  {
    v44 = sub_10079CB24();
    v45 = v58;
    *v58 = v44;
    *(v45 + 8) = 0;
    *(v45 + 16) = 1;
    v46 = sub_1001F1160(&qword_100AED5D0);
    sub_1005FF98C(v39, v45 + *(v46 + 44), 0.0, 1.0);
    sub_100600D44(v45, v42);
    v43 = 0;
  }

  (*(v69 + 56))(v42, v43, 1, v70);
  v47 = v67;
  v48 = v68;
  v49 = *(v67 + 16);
  v50 = v74;
  v49(v74, v73, v68);
  v51 = v66;
  v49(v66, v77, v48);
  v52 = v71;
  sub_1000077D8(v42, v71, &qword_100AED618);
  v53 = v72;
  v49(v72, v50, v48);
  v54 = sub_1001F1160(&qword_100AED630);
  v49(&v53[*(v54 + 48)], v51, v48);
  sub_1000077D8(v52, &v53[*(v54 + 64)], &qword_100AED618);
  sub_100007840(v42, &qword_100AED618);
  v55 = *(v47 + 8);
  v55(v77, v48);
  v55(v73, v48);
  sub_100007840(v52, &qword_100AED618);
  v55(v51, v48);
  return (v55)(v74, v48);
}

uint64_t sub_1005FDF84(__int128 *a1)
{
  v4 = *a1;
  v5 = v4;
  v6 = *(&v4 + 1);
  sub_1000077D8(&v6, v3, &qword_100AED638);
  sub_1001F1160(&qword_100ADB850);
  sub_10079DFF4();
  v4 = v5;
  v3[0] = !v3[0];
  sub_10079E004();
  sub_100007840(&v5, &qword_100ADB850);
  sub_10079FCE4();
  v4 = v5;
  sub_10079DFF4();
  sub_10079FAE4();
  v4 = a1[1];
  v3[0] = 0;
  return sub_10079E004();
}

uint64_t sub_1005FE09C(__int128 *a1)
{
  v4 = a1[1];
  v5 = v4;
  v6 = *(&v4 + 1);
  sub_1000077D8(&v6, v3, &qword_100AED638);
  sub_1001F1160(&qword_100ADB850);
  sub_10079DFF4();
  v4 = v5;
  v3[0] = !v3[0];
  sub_10079E004();
  sub_100007840(&v5, &qword_100ADB850);
  sub_10079FCE4();
  v4 = v5;
  sub_10079DFF4();
  sub_10079FB04();
  v4 = *a1;
  v3[0] = 0;
  return sub_10079E004();
}

uint64_t sub_1005FE1B4@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v33 = sub_10079E254();
  v36 = *(v33 - 8);
  __chkstk_darwin(v33);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v29 - v6;
  v8 = sub_1001F1160(&qword_100AED5C8);
  __chkstk_darwin(v8 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v29 - v12;
  *v13 = sub_10079CB24();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v14 = &v13[*(sub_1001F1160(&qword_100AED5D0) + 44)];
  v30 = v13;
  sub_1005FFF98(a1, v14, 44.0, 200.0);
  v35 = sub_10079C8F4();
  v38 = 1;
  sub_1005FE66C(a1, &v51);
  v45 = *&v52[80];
  v46 = *&v52[96];
  v47 = *&v52[112];
  v41 = *&v52[16];
  v42 = *&v52[32];
  v43 = *&v52[48];
  v44 = *&v52[64];
  v39 = v51;
  v40 = *v52;
  v48[6] = *&v52[80];
  v48[7] = *&v52[96];
  v48[8] = *&v52[112];
  v48[2] = *&v52[16];
  v48[3] = *&v52[32];
  v48[4] = *&v52[48];
  v48[5] = *&v52[64];
  v48[0] = v51;
  v48[1] = *v52;
  sub_1000077D8(&v39, &v49, &qword_100AED5D8);
  sub_100007840(v48, &qword_100AED5D8);
  *&v37[87] = v44;
  *&v37[103] = v45;
  *&v37[119] = v46;
  *&v37[135] = v47;
  *&v37[23] = v40;
  *&v37[39] = v41;
  *&v37[55] = v42;
  *&v37[71] = v43;
  *&v37[7] = v39;
  v15 = v38;
  v31 = v38;
  v29 = v7;
  sub_10079E244();
  v32 = v10;
  sub_1000077D8(v13, v10, &qword_100AED5C8);
  v16 = *(v36 + 16);
  v17 = v33;
  v16(v4, v7, v33);
  v18 = v10;
  v19 = v34;
  sub_1000077D8(v18, v34, &qword_100AED5C8);
  v20 = sub_1001F1160(&qword_100AED5E0);
  v21 = v19 + *(v20 + 48);
  v49 = v35;
  v50[0] = v15;
  *&v50[97] = *&v37[96];
  *&v50[113] = *&v37[112];
  *&v50[129] = *&v37[128];
  *&v50[144] = *&v37[143];
  *&v50[33] = *&v37[32];
  *&v50[49] = *&v37[48];
  *&v50[65] = *&v37[64];
  *&v50[81] = *&v37[80];
  *&v50[17] = *&v37[16];
  *&v50[1] = *v37;
  v22 = *&v50[128];
  *(v21 + 128) = *&v50[112];
  *(v21 + 144) = v22;
  *(v21 + 160) = *&v50[144];
  v23 = *&v50[64];
  *(v21 + 64) = *&v50[48];
  *(v21 + 80) = v23;
  v24 = *&v50[96];
  *(v21 + 96) = *&v50[80];
  *(v21 + 112) = v24;
  v25 = *v50;
  *v21 = v49;
  *(v21 + 16) = v25;
  v26 = *&v50[32];
  *(v21 + 32) = *&v50[16];
  *(v21 + 48) = v26;
  v16((v19 + *(v20 + 64)), v4, v17);
  sub_1000077D8(&v49, &v51, &qword_100AED5E8);
  v27 = *(v36 + 8);
  v27(v29, v17);
  sub_100007840(v30, &qword_100AED5C8);
  v27(v4, v17);
  *&v52[97] = *&v37[96];
  *&v52[113] = *&v37[112];
  v53[0] = *&v37[128];
  *&v52[33] = *&v37[32];
  *&v52[49] = *&v37[48];
  *&v52[65] = *&v37[64];
  *&v52[81] = *&v37[80];
  *&v52[1] = *v37;
  v51 = v35;
  v52[0] = v31;
  *(v53 + 15) = *&v37[143];
  *&v52[17] = *&v37[16];
  sub_100007840(&v51, &qword_100AED5E8);
  return sub_100007840(v32, &qword_100AED5C8);
}

uint64_t sub_1005FE66C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = *(a1 + 48);
  sub_1001F1160(&qword_100AD7168);
  sub_10079DFF4();
  sub_10079E474();
  sub_10079BE54();
  *(&v9 + 1) = _s5Books11ChromeStyleC20_themeSecondaryLabel33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI5ColorVGvpfi_0();
  *&v9 = swift_getKeyPath();
  LOBYTE(v36) = v12;
  LOBYTE(v29) = v14;
  v36 = *(a1 + 48);
  sub_10079DFF4();
  sub_10079E474();
  sub_10079BE54();
  v4 = _s5Books11ChromeStyleC20_themeSecondaryLabel33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI5ColorVGvpfi_0();
  KeyPath = swift_getKeyPath();
  LOBYTE(v36) = v17;
  *&v21 = v11;
  BYTE8(v21) = v12;
  *&v22 = v13;
  BYTE8(v22) = v14;
  v23 = v15;
  v24 = v9;
  *&v25 = v16;
  BYTE8(v25) = v17;
  *&v26 = v18;
  BYTE8(v26) = v19;
  v27 = v20;
  *&v28 = KeyPath;
  *(&v28 + 1) = v4;
  *&v10[55] = v28;
  *&v10[39] = v20;
  *&v10[23] = v26;
  *&v10[7] = v25;
  v6 = v21;
  v7 = v22;
  *(a2 + 32) = v15;
  *(a2 + 48) = v9;
  *a2 = v6;
  *(a2 + 16) = v7;
  *(a2 + 64) = 0;
  *(a2 + 72) = 1;
  *(a2 + 73) = *v10;
  *(a2 + 136) = *&v10[63];
  *(a2 + 121) = *&v10[48];
  *(a2 + 105) = *&v10[32];
  *(a2 + 89) = *&v10[16];
  v29 = v16;
  v30 = v17;
  v31 = v18;
  v32 = v19;
  v33 = v20;
  v34 = KeyPath;
  v35 = v4;
  sub_1000077D8(&v21, &v36, &qword_100AED5F0);
  sub_1000077D8(&v25, &v36, &qword_100AED5F0);
  sub_100007840(&v29, &qword_100AED5F0);
  *&v36 = v11;
  BYTE8(v36) = v12;
  v37 = v13;
  v38 = v14;
  v39 = v15;
  v40 = v9;
  return sub_100007840(&v36, &qword_100AED5F0);
}

uint64_t sub_1005FE8F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>, double a6@<D0>)
{
  v12 = sub_1001F1160(&qword_100ADF300);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v26 - v17;
  v28 = a1;
  v29 = a2;
  v30 = a6;
  v27 = xmmword_100830EB0;
  v26[1] = 0x3FA999999999999ALL;
  sub_1002582C8();

  sub_10079E144();
  *&v27 = a3;
  *(&v27 + 1) = a4;

  v31._countAndFlagsBits = 8250;
  v31._object = 0xE200000000000000;
  sub_1007A23D4(v31);
  v28 = a1;
  v29 = a2;
  v30 = a6;
  sub_1001F1160(&qword_100AED6C8);
  sub_10079E1C4();
  v32._countAndFlagsBits = sub_1007A27C4();
  sub_1007A23D4(v32);

  v19 = v27;
  v20 = *(v13 + 16);
  v20(v15, v18, v12);
  v20(a5, v15, v12);
  v21 = sub_1001F1160(&qword_100AED6C0);
  v22 = &a5[*(v21 + 48)];
  *v22 = v19;
  v22[16] = 0;
  *(v22 + 3) = _swiftEmptyArrayStorage;
  v23 = &a5[*(v21 + 64)];
  *v23 = 0;
  v23[8] = 1;
  sub_1001F1894(v19, *(&v19 + 1), 0);
  v24 = *(v13 + 8);

  v24(v18, v12);
  sub_10020B430(v19, *(&v19 + 1), 0);

  return (v24)(v15, v12);
}

uint64_t sub_1005FEBB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, char *a5@<X8>, double a6@<D0>)
{
  v12 = sub_1001F1160(&qword_100ADF300);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v26 - v17;
  v28 = a1;
  v29 = a2;
  v30 = a6;
  v27 = xmmword_10081BC80;
  v26[1] = 0x3FA999999999999ALL;
  sub_100247DCC();

  sub_10079E144();
  *&v27 = 0;
  *(&v27 + 1) = 0xE000000000000000;
  v31._countAndFlagsBits = a3;
  v31._object = a4;
  sub_1007A23D4(v31);
  v32._countAndFlagsBits = 8250;
  v32._object = 0xE200000000000000;
  sub_1007A23D4(v32);
  v28 = a1;
  v29 = a2;
  v30 = a6;
  sub_1001F1160(&qword_100AED6B8);
  sub_10079E1C4();
  sub_1007A27D4();
  v19 = v27;
  v20 = *(v13 + 16);
  v20(v15, v18, v12);
  v20(a5, v15, v12);
  v21 = sub_1001F1160(&qword_100AED6C0);
  v22 = &a5[*(v21 + 48)];
  *v22 = v19;
  v22[16] = 0;
  *(v22 + 3) = _swiftEmptyArrayStorage;
  v23 = &a5[*(v21 + 64)];
  *v23 = 0;
  v23[8] = 1;
  sub_1001F1894(v19, *(&v19 + 1), 0);
  v24 = *(v13 + 8);

  v24(v18, v12);
  sub_10020B430(v19, *(&v19 + 1), 0);

  return (v24)(v15, v12);
}

uint64_t sub_1005FEE74@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v94 = a2;
  v3 = sub_1001F1160(&qword_100AED6A0);
  __chkstk_darwin(v3 - 8);
  v101 = &v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v93 = &v88 - v6;
  __chkstk_darwin(v7);
  v92 = &v88 - v8;
  __chkstk_darwin(v9);
  v91 = &v88 - v10;
  __chkstk_darwin(v11);
  v90 = &v88 - v12;
  __chkstk_darwin(v13);
  v89 = &v88 - v14;
  __chkstk_darwin(v15);
  v88 = &v88 - v16;
  __chkstk_darwin(v17);
  v98 = &v88 - v18;
  __chkstk_darwin(v19);
  v104 = (&v88 - v20);
  __chkstk_darwin(v21);
  v95 = (&v88 - v22);
  __chkstk_darwin(v23);
  v102 = (&v88 - v24);
  __chkstk_darwin(v25);
  v103 = (&v88 - v26);
  __chkstk_darwin(v27);
  v29 = &v88 - v28;
  __chkstk_darwin(v30);
  v32 = &v88 - v31;
  __chkstk_darwin(v33);
  v35 = &v88 - v34;
  __chkstk_darwin(v36);
  v38 = &v88 - v37;
  v108 = a1[7];
  sub_1001F1160(&qword_100ADC7D8);
  sub_10079E014();
  v39 = v105;
  v40 = v106;
  v41 = v107;
  *v38 = sub_10079CB24();
  *(v38 + 1) = 0;
  v38[16] = 1;
  v100 = v38;
  v42 = sub_1001F1160(&qword_100AED6A8);
  sub_1005FEBB0(v39, v40, 0x207974696361704FLL, 0xED0000746E6F7246, &v38[*(v42 + 44)], v41);

  v108 = a1[8];
  sub_10079E014();
  v43 = v105;
  v44 = v106;
  v45 = v107;
  v46 = sub_10079CB24();
  v99 = v35;
  *v35 = v46;
  *(v35 + 1) = 0;
  v35[16] = 1;
  sub_1005FEBB0(v43, v44, 0x207974696361704FLL, 0xED0000306B636142, &v35[*(v42 + 44)], v45);

  v108 = a1[9];
  sub_10079E014();
  v47 = v105;
  v48 = v106;
  v49 = v107;
  v50 = sub_10079CB24();
  v97 = v32;
  *v32 = v50;
  *(v32 + 1) = 0;
  v32[16] = 1;
  sub_1005FEBB0(v47, v48, 0x207974696361704FLL, 0xED0000316B636142, &v32[*(v42 + 44)], v49);

  v108 = a1[10];
  sub_10079E014();
  v51 = v105;
  v52 = v106;
  v53 = v107;
  v54 = sub_10079CB24();
  v96 = v29;
  *v29 = v54;
  *(v29 + 1) = 0;
  v29[16] = 1;
  sub_1005FEBB0(v51, v52, 0x207974696361704FLL, 0xEE00776F64616853, &v29[*(v42 + 44)], v53);

  v108 = a1[11];
  sub_10079E014();
  v55 = v105;
  v56 = v106;
  v57 = v107;
  v58 = sub_10079CB24();
  v59 = v103;
  *v103 = v58;
  v59[1] = 0;
  *(v59 + 16) = 1;
  sub_1005FEBB0(v55, v56, 0x6874676E65727453, 0xEE00746E6F724620, v59 + *(v42 + 44), v57);

  v108 = a1[12];
  sub_10079E014();
  v60 = v105;
  v61 = v106;
  v62 = v107;
  v63 = sub_10079CB24();
  v64 = v102;
  *v102 = v63;
  v64[1] = 0;
  *(v64 + 16) = 1;
  sub_1005FEBB0(v60, v61, 0x6874676E65727453, 0xEE00306B63614220, v64 + *(v42 + 44), v62);

  v108 = a1[13];
  sub_10079E014();
  v65 = v105;
  v66 = v106;
  v67 = v107;
  v68 = sub_10079CB24();
  v69 = v95;
  *v95 = v68;
  v69[1] = 0;
  *(v69 + 16) = 1;
  sub_1005FEBB0(v65, v66, 0x6874676E65727453, 0xEE00316B63614220, v69 + *(v42 + 44), v67);

  v108 = a1[14];
  sub_10079E014();
  v70 = v105;
  v71 = v106;
  v72 = v107;
  v73 = sub_10079CB24();
  v74 = v104;
  *v104 = v73;
  v74[1] = 0;
  *(v74 + 16) = 1;
  sub_1005FEBB0(v70, v71, 0x6874676E65727453, 0xEF776F6461685320, v74 + *(v42 + 44), v72);

  v75 = v98;
  sub_1000077D8(v100, v98, &qword_100AED6A0);
  v76 = v88;
  sub_1000077D8(v99, v88, &qword_100AED6A0);
  v77 = v89;
  sub_1000077D8(v97, v89, &qword_100AED6A0);
  v78 = v90;
  sub_1000077D8(v96, v90, &qword_100AED6A0);
  v79 = v91;
  sub_1000077D8(v103, v91, &qword_100AED6A0);
  v80 = v92;
  sub_1000077D8(v102, v92, &qword_100AED6A0);
  v81 = v69;
  v82 = v93;
  sub_1000077D8(v81, v93, &qword_100AED6A0);
  sub_1000077D8(v104, v101, &qword_100AED6A0);
  v83 = v94;
  sub_1000077D8(v75, v94, &qword_100AED6A0);
  v84 = sub_1001F1160(&qword_100AED6B0);
  sub_1000077D8(v76, v83 + v84[12], &qword_100AED6A0);
  sub_1000077D8(v77, v83 + v84[16], &qword_100AED6A0);
  sub_1000077D8(v78, v83 + v84[20], &qword_100AED6A0);
  sub_1000077D8(v79, v83 + v84[24], &qword_100AED6A0);
  sub_1000077D8(v80, v83 + v84[28], &qword_100AED6A0);
  sub_1000077D8(v82, v83 + v84[32], &qword_100AED6A0);
  v85 = v83 + v84[36];
  v86 = v101;
  sub_1000077D8(v101, v85, &qword_100AED6A0);
  sub_100007840(v104, &qword_100AED6A0);
  sub_100007840(v95, &qword_100AED6A0);
  sub_100007840(v102, &qword_100AED6A0);
  sub_100007840(v103, &qword_100AED6A0);
  sub_100007840(v96, &qword_100AED6A0);
  sub_100007840(v97, &qword_100AED6A0);
  sub_100007840(v99, &qword_100AED6A0);
  sub_100007840(v100, &qword_100AED6A0);
  sub_100007840(v86, &qword_100AED6A0);
  sub_100007840(v82, &qword_100AED6A0);
  sub_100007840(v80, &qword_100AED6A0);
  sub_100007840(v79, &qword_100AED6A0);
  sub_100007840(v78, &qword_100AED6A0);
  sub_100007840(v77, &qword_100AED6A0);
  sub_100007840(v76, &qword_100AED6A0);
  return sub_100007840(v98, &qword_100AED6A0);
}

uint64_t sub_1005FF98C@<X0>(const void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8 = sub_1001F1160(&qword_100AED5F8);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v21 - v12;
  *v13 = sub_10079C8F4();
  *(v13 + 1) = 0;
  v13[16] = 1;
  sub_1001F1160(&qword_100AED600);
  sub_1005FFC80(a1, a3, a4);
  v14 = sub_10079C8F4();
  LOBYTE(v27[0]) = 1;
  sub_1005FFED8(v23);
  *(v22 + 7) = v23[0];
  *(&v22[1] + 7) = v23[1];
  *(&v22[2] + 7) = v24[0];
  v22[3] = *(v24 + 9);
  v15 = v27[0];
  sub_1000077D8(v13, v10, &qword_100AED5F8);
  *a2 = 0xD000000000000019;
  *(a2 + 8) = 0x80000001008E1090;
  *(a2 + 16) = 0;
  *(a2 + 24) = _swiftEmptyArrayStorage;
  v16 = sub_1001F1160(&qword_100AED608);
  sub_1000077D8(v10, a2 + *(v16 + 48), &qword_100AED5F8);
  v17 = a2 + *(v16 + 64);
  v25 = v14;
  v26[0] = v15;
  *&v26[17] = v22[1];
  *&v26[1] = v22[0];
  *&v26[33] = v22[2];
  *&v26[49] = v22[3];
  v18 = *&v26[32];
  *(v17 + 32) = *&v26[16];
  *(v17 + 48) = v18;
  *(v17 + 64) = *&v26[48];
  *(v17 + 80) = v26[64];
  v19 = *v26;
  *v17 = v25;
  *(v17 + 16) = v19;
  sub_1001F1894(0xD000000000000019, 0x80000001008E1090, 0);

  sub_1000077D8(&v25, v27, &qword_100AED610);
  sub_100007840(v13, &qword_100AED5F8);
  v27[0] = v14;
  v27[1] = 0;
  v28 = v15;
  v29 = v22[0];
  v30 = v22[1];
  v31 = v22[2];
  v32 = v22[3];
  sub_100007840(v27, &qword_100AED610);
  sub_100007840(v10, &qword_100AED5F8);
  sub_10020B430(0xD000000000000019, 0x80000001008E1090, 0);
}

uint64_t sub_1005FFC80(const void *a1, double a2, double a3)
{
  sub_1001F1160(&qword_100AD7168);
  result = sub_10079E014();
  if (a2 > a3)
  {
    __break(1u);
  }

  else
  {
    v7 = swift_allocObject();
    memcpy((v7 + 16), a1, 0x140uLL);
    v15 = v9;
    v16 = v10;
    v13 = a2;
    v14 = a3;
    v12 = 0x3FA999999999999ALL;
    *&v8 = 0;
    *(&v8 + 1) = 0xE000000000000000;
    sub_100600CA4(a1, &v9);
    sub_1007A27D4();
    v9 = v8;
    LOBYTE(v10) = 0;
    v11 = _swiftEmptyArrayStorage;
    sub_1007A27D4();
    sub_1002582C8();
    return sub_10079E134();
  }

  return result;
}

double sub_1005FFE48@<D0>(uint64_t a1@<X8>)
{
  *&result = 0x6168706C41;
  *a1 = xmmword_1008355D0;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_1005FFE68()
{
  sub_10079FCE4();
  sub_1001F1160(&qword_100AD7168);
  sub_10079DFF4();
  return sub_10079FBE4();
}

uint64_t sub_1005FFED8@<X0>(uint64_t a1@<X8>)
{
  sub_1001F1160(&qword_100AD7168);
  sub_10079DFF4();
  v2 = sub_1007A27C4();
  v4 = v3;
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = 0;
  *(a1 + 40) = _swiftEmptyArrayStorage;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  sub_1001F1894(v2, v3, 0);

  sub_10020B430(v2, v4, 0);
}

uint64_t sub_1005FFF98@<X0>(const void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8 = sub_1001F1160(&qword_100AED5F8);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v21 - v12;
  *v13 = sub_10079C8F4();
  *(v13 + 1) = 0;
  v13[16] = 1;
  sub_1001F1160(&qword_100AED600);
  sub_10060028C(a1, a3, a4);
  v14 = sub_10079C8F4();
  LOBYTE(v27[0]) = 1;
  sub_100600550(v23);
  *(v22 + 7) = v23[0];
  *(&v22[1] + 7) = v23[1];
  *(&v22[2] + 7) = v24[0];
  v22[3] = *(v24 + 9);
  v15 = v27[0];
  sub_1000077D8(v13, v10, &qword_100AED5F8);
  *a2 = 0xD000000000000010;
  *(a2 + 8) = 0x80000001008E1030;
  *(a2 + 16) = 0;
  *(a2 + 24) = _swiftEmptyArrayStorage;
  v16 = sub_1001F1160(&qword_100AED608);
  sub_1000077D8(v10, a2 + *(v16 + 48), &qword_100AED5F8);
  v17 = a2 + *(v16 + 64);
  v25 = v14;
  v26[0] = v15;
  *&v26[17] = v22[1];
  *&v26[1] = v22[0];
  *&v26[33] = v22[2];
  *&v26[49] = v22[3];
  v18 = *&v26[32];
  *(v17 + 32) = *&v26[16];
  *(v17 + 48) = v18;
  *(v17 + 64) = *&v26[48];
  *(v17 + 80) = v26[64];
  v19 = *v26;
  *v17 = v25;
  *(v17 + 16) = v19;
  sub_1001F1894(0xD000000000000010, 0x80000001008E1030, 0);

  sub_1000077D8(&v25, v27, &qword_100AED610);
  sub_100007840(v13, &qword_100AED5F8);
  v27[0] = v14;
  v27[1] = 0;
  v28 = v15;
  v29 = v22[0];
  v30 = v22[1];
  v31 = v22[2];
  v32 = v22[3];
  sub_100007840(v27, &qword_100AED610);
  sub_100007840(v10, &qword_100AED5F8);
  sub_10020B430(0xD000000000000010, 0x80000001008E1030, 0);
}

uint64_t sub_10060028C(const void *a1, double a2, double a3)
{
  sub_1001F1160(&qword_100AD7168);
  result = sub_10079E014();
  if (a2 > a3)
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = swift_allocObject();
  result = memcpy((v7 + 16), a1, 0x140uLL);
  v16 = v9;
  v17 = v10;
  v18 = v11;
  v14 = a2;
  v15 = a3;
  v13 = 0x3FF0000000000000;
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (a2 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (a2 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_100600CA4(a1, &v9);
  result = sub_1007A3A74();
  v9 = result;
  v10 = v8;
  LOBYTE(v11) = 0;
  v12 = _swiftEmptyArrayStorage;
  if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (a3 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (a3 < 9.22337204e18)
  {
    sub_1007A3A74();
    sub_1002582C8();
    return sub_10079E134();
  }

LABEL_15:
  __break(1u);
  return result;
}

double sub_1006004C0@<D0>(uint64_t a1@<X8>)
{
  *&result = 0x6874646957;
  *a1 = xmmword_1008355E0;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_1006004E0()
{
  sub_10079FCE4();
  sub_1001F1160(&qword_100AD7168);
  sub_10079DFF4();
  return sub_10079FB54();
}

uint64_t sub_100600550@<X0>(uint64_t a1@<X8>)
{
  sub_1001F1160(&qword_100AD7168);
  result = sub_10079DFF4();
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v6 < 9.22337204e18)
  {
    v3 = sub_1007A3A74();
    v5 = v4;
    *a1 = 0;
    *(a1 + 8) = 1;
    *(a1 + 16) = v3;
    *(a1 + 24) = v4;
    *(a1 + 32) = 0;
    *(a1 + 40) = _swiftEmptyArrayStorage;
    *(a1 + 48) = 0;
    *(a1 + 56) = 1;
    sub_1001F1894(v3, v4, 0);

    sub_10020B430(v3, v5, 0);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_100600670()
{
  memcpy(__dst, v0, sizeof(__dst));
  sub_10079D274();
  sub_1001F1160(&qword_100AED590);
  sub_100005920(&qword_100AED598, &qword_100AED590);
  return sub_10079BBD4();
}

double sub_100600740@<D0>(uint64_t a1@<X8>)
{
  sub_10079FCE4();
  sub_10079FAD4();
  sub_10079DFE4();
  sub_10079FAF4();
  sub_10079DFE4();
  sub_10079FBD4();
  sub_10079DFE4();
  sub_10079FB44();
  sub_10079DFE4();
  sub_10079FCB4();
  sub_10079DFE4();
  sub_10079FC94();
  sub_10079DFE4();
  sub_10079FCC4();
  sub_10079DFE4();
  sub_10079FBB4();
  sub_10079DFE4();
  sub_10079FB74();
  sub_10079DFE4();
  sub_10079FB94();
  sub_10079DFE4();
  sub_10079FC54();
  sub_10079DFE4();
  sub_10079FC34();
  sub_10079DFE4();
  sub_10079FBF4();
  sub_10079DFE4();
  sub_10079FC14();
  sub_10079DFE4();
  sub_10079FC74();
  sub_10079DFE4();
  sub_10079FB34();
  sub_10079DFE4();
  sub_10079FB14();
  sub_10079DFE4();
  sub_10079FB24();
  sub_10079DFE4();
  sub_10079FB64();
  sub_10079DFE4();
  sub_10079FAA4();
  sub_10079DFE4();
  *a1 = LOBYTE(v3);
  *(a1 + 8) = v4;
  *(a1 + 16) = LOBYTE(v3);
  *(a1 + 24) = v4;
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
  *(a1 + 48) = v3;
  *(a1 + 56) = v4;
  *(a1 + 64) = v3;
  *(a1 + 72) = v4;
  *(a1 + 80) = v3;
  *(a1 + 88) = v4;
  result = v3;
  *(a1 + 96) = v3;
  *(a1 + 104) = v4;
  *(a1 + 112) = v3;
  *(a1 + 120) = v4;
  *(a1 + 128) = v3;
  *(a1 + 136) = v4;
  *(a1 + 144) = v3;
  *(a1 + 152) = v4;
  *(a1 + 160) = v3;
  *(a1 + 168) = v4;
  *(a1 + 176) = v3;
  *(a1 + 184) = v4;
  *(a1 + 192) = v3;
  *(a1 + 200) = v4;
  *(a1 + 208) = v3;
  *(a1 + 216) = v4;
  *(a1 + 224) = v3;
  *(a1 + 232) = v4;
  *(a1 + 240) = v3;
  *(a1 + 248) = v4;
  *(a1 + 256) = v3;
  *(a1 + 264) = v4;
  *(a1 + 272) = v3;
  *(a1 + 280) = v4;
  *(a1 + 288) = v3;
  *(a1 + 296) = v4;
  *(a1 + 304) = LOBYTE(v3);
  *(a1 + 312) = v4;
  return result;
}

uint64_t sub_100600B8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 320))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 240);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100600BD4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 312) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
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
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 320) = 1;
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
      *(result + 240) = (a2 - 1);
      return result;
    }

    *(result + 320) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100600CE4()
{
  result = qword_100AED628;
  if (!qword_100AED628)
  {
    sub_10079CA84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AED628);
  }

  return result;
}

uint64_t sub_100600D44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AED5C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100600DBC()
{

  return swift_deallocObject();
}

uint64_t sub_100600EB4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_100600EFC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100600F64(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    if (v2 != v5)
    {
      return 0;
    }
  }

  else
  {
    v9 = sub_1007A3AB4();
    result = 0;
    if (v9 & 1) == 0 || ((v2 ^ v5))
    {
      return result;
    }
  }

  if (v3 == v6 && v4 == v7)
  {
    return 1;
  }

  return sub_1007A3AB4();
}

unint64_t sub_10060104C()
{
  result = qword_100AED6E0;
  if (!qword_100AED6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AED6E0);
  }

  return result;
}

BOOL sub_1006010A0(uint64_t a1, CGFloat a2, CGFloat a3)
{
  if (*(v3 + OBJC_IVAR____TtC5Books35NowPlayingTransportControlStackView_useBoundsAsPointInside) == 1)
  {
    [v3 bounds];
    v16.x = a2;
    v16.y = a3;
    return CGRectContainsPoint(v17, v16);
  }

  else
  {
    v15.receiver = v3;
    v15.super_class = type metadata accessor for NowPlayingTransportControlStackView();
    if (objc_msgSendSuper2(&v15, "pointInside:withEvent:", a1, a2, a3))
    {
      return 1;
    }

    else
    {
      v8 = [v3 arrangedSubviews];
      sub_10000A7C4(0, &qword_100AD7620);
      v9 = sub_1007A25E4();

      if (v9 >> 62)
      {
LABEL_19:
        v10 = sub_1007A38D4();
      }

      else
      {
        v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      for (i = 0; v10 != i; ++i)
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v12 = sub_1007A3784();
        }

        else
        {
          if (i >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          v12 = *(v9 + 8 * i + 32);
        }

        v13 = v12;
        if (__OFADD__(i, 1))
        {
          __break(1u);
LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

        [v12 convertPoint:v3 fromCoordinateSpace:{a2, a3}];
        v14 = [v13 pointInside:a1 withEvent:?];

        if (v14)
        {

          return 1;
        }
      }

      return 0;
    }
  }
}

void sub_1006013E8(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC5Books25NowPlayingTransportButton_highlightIndicatorView] = 0;
  *&v4[OBJC_IVAR____TtC5Books25NowPlayingTransportButton_highlightIndicatorWidthConstraint] = 0;
  *&v4[OBJC_IVAR____TtC5Books25NowPlayingTransportButton_highlightIndicatorWidth] = 0x4046000000000000;
  v50.receiver = v4;
  v50.super_class = type metadata accessor for NowPlayingTransportButton();
  v9 = objc_msgSendSuper2(&v50, "initWithFrame:", a1, a2, a3, a4);
  v10 = objc_allocWithZone(UIView);
  v11 = v9;
  v12 = [v10 init];
  v13 = OBJC_IVAR____TtC5Books25NowPlayingTransportButton_highlightIndicatorView;
  v14 = *&v11[OBJC_IVAR____TtC5Books25NowPlayingTransportButton_highlightIndicatorView];
  *&v11[OBJC_IVAR____TtC5Books25NowPlayingTransportButton_highlightIndicatorView] = v12;
  v15 = v12;

  if (!v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];

  v16 = *&v11[v13];
  if (!v16)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v17 = objc_opt_self();
  v18 = v16;
  v19 = [v17 bc_booksTransportControlsColor];
  [v18 setBackgroundColor:v19];

  v20 = *&v11[v13];
  if (!v20)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  [v20 setAlpha:0.0];
  v21 = *&v11[v13];
  if (!v21)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  CGAffineTransformMakeScale(&v49, 1.4, 1.4);
  [v21 setTransform:&v49];
  v22 = *&v11[v13];
  if (!v22)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v23 = v11;
  [v23 insertSubview:v22 atIndex:0];
  v24 = *&v11[v13];
  if (!v24)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v25 = [v24 widthAnchor];
  v26 = [v25 constraintEqualToConstant:44.0];

  v27 = OBJC_IVAR____TtC5Books25NowPlayingTransportButton_highlightIndicatorWidthConstraint;
  v28 = *&v23[OBJC_IVAR____TtC5Books25NowPlayingTransportButton_highlightIndicatorWidthConstraint];
  *&v23[OBJC_IVAR____TtC5Books25NowPlayingTransportButton_highlightIndicatorWidthConstraint] = v26;

  sub_1001F1160(&unk_100AD8160);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_100816E30;
  v30 = *&v23[v27];
  if (!v30)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v31 = v29;
  *(v29 + 32) = v30;
  v32 = *&v11[v13];
  if (!v32)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v33 = v30;
  v34 = [v32 heightAnchor];
  v35 = *&v11[v13];
  if (!v35)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v36 = [v35 widthAnchor];
  v37 = [v34 constraintEqualToAnchor:v36];

  v31[5] = v37;
  v38 = *&v11[v13];
  if (!v38)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v39 = [v38 centerXAnchor];
  v40 = [v23 centerXAnchor];

  v41 = [v39 constraintEqualToAnchor:v40];
  v31[6] = v41;
  v42 = *&v11[v13];
  if (!v42)
  {
LABEL_25:
    __break(1u);
    return;
  }

  v43 = objc_opt_self();
  v44 = [v42 centerYAnchor];
  v45 = [v23 centerYAnchor];
  v46 = [v44 constraintEqualToAnchor:v45];

  v31[7] = v46;
  sub_10000A7C4(0, &qword_100AE9010);
  isa = sub_1007A25D4().super.isa;

  [v43 activateConstraints:isa];

  v48 = [v23 imageView];
  if (v48)
  {
    [v48 setContentMode:4];
  }
}

void sub_100601978()
{
  v1 = [v0 isHighlighted];
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  if (v1)
  {
    v13 = sub_100602710;
    v14 = v3;
    v9 = _NSConcreteStackBlock;
    v10 = 1107296256;
    v4 = &unk_100A26F10;
  }

  else
  {
    v13 = sub_1006026F8;
    v14 = v3;
    v9 = _NSConcreteStackBlock;
    v10 = 1107296256;
    v11 = sub_1003323D0;
    v12 = &unk_100A26E70;
    v5 = _Block_copy(&v9);
    v0 = v0;

    [v2 animateWithDuration:2 delay:v5 options:0 animations:0.47 completion:0.0];
    _Block_release(v5);
    v6 = swift_allocObject();
    *(v6 + 16) = v0;
    v13 = sub_100602708;
    v14 = v6;
    v9 = _NSConcreteStackBlock;
    v10 = 1107296256;
    v4 = &unk_100A26EC0;
  }

  v11 = sub_1003323D0;
  v12 = v4;
  v7 = _Block_copy(&v9);
  v8 = v0;

  [v2 animateWithDuration:2 delay:v7 options:0 animations:0.2 completion:{0.0, v9, v10}];
  _Block_release(v7);
}

id sub_100601BBC(char *a1)
{
  v2 = [a1 imageView];
  if (v2)
  {
    v3 = v2;
    CGAffineTransformMakeScale(&v7, 0.8, 0.8);
    [v3 setTransform:&v7];
  }

  v4 = OBJC_IVAR____TtC5Books25NowPlayingTransportButton_highlightIndicatorView;
  result = *&a1[OBJC_IVAR____TtC5Books25NowPlayingTransportButton_highlightIndicatorView];
  if (result)
  {
    result = [result setAlpha:0.1];
    v6 = *&a1[v4];
    if (v6)
    {
      CGAffineTransformMakeScale(&v7, 1.2, 1.2);
      return [v6 setTransform:&v7];
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_100601CB0(char *a1)
{
  v2 = [a1 imageView];
  if (v2)
  {
    v5[0] = 0x3FF0000000000000;
    v5[1] = 0;
    v5[2] = 0;
    v5[3] = 0x3FF0000000000000;
    v5[4] = 0;
    v5[5] = 0;
    v3 = v2;
    [v2 setTransform:v5];
  }

  result = *&a1[OBJC_IVAR____TtC5Books25NowPlayingTransportButton_highlightIndicatorView];
  if (result)
  {
    return [result setAlpha:0.0];
  }

  __break(1u);
  return result;
}

char *sub_100601D3C(char *result)
{
  v1 = *&result[OBJC_IVAR____TtC5Books25NowPlayingTransportButton_highlightIndicatorView];
  if (v1)
  {
    CGAffineTransformMakeScale(&v2, 1.4, 1.4);
    return [v1 setTransform:&v2];
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100601DBC(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for NowPlayingTransportButton();
  return objc_msgSendSuper2(&v5, *a3);
}

void sub_100601F44()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for NowPlayingTransportButton();
  objc_msgSendSuper2(&v7, "layoutSubviews");
  v1 = [v0 imageView];
  if (v1)
  {
    v2 = v1;
    [v0 bounds];
    [v0 contentRectForBounds:?];
    [v0 imageRectForContentRect:?];
    [v2 setUntransformedFrame:?];
  }

  v3 = OBJC_IVAR____TtC5Books25NowPlayingTransportButton_highlightIndicatorView;
  v4 = *&v0[OBJC_IVAR____TtC5Books25NowPlayingTransportButton_highlightIndicatorView];
  if (v4)
  {
    v5 = [v4 layer];
    v6 = *&v0[v3];
    if (v6)
    {
      [v6 bounds];
      [v5 setCornerRadius:CGRectGetWidth(v8) * 0.5];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_10060211C(void *a1, uint64_t a2)
{
  v2[OBJC_IVAR____TtC5Books28NowPlayingVibrancyEffectView_vibrancyState] = 1;
  *&v2[OBJC_IVAR____TtC5Books28NowPlayingVibrancyEffectView_contentItemView] = a1;
  *&v2[OBJC_IVAR____TtC5Books28NowPlayingVibrancyEffectView_vibrancyStyle] = a2;
  v30.receiver = v2;
  v30.super_class = type metadata accessor for NowPlayingVibrancyEffectView();
  v4 = a1;
  v5 = objc_msgSendSuper2(&v30, "initWithEffect:", 0);
  v6 = [v5 contentView];
  [v6 addSubview:v4];

  v7 = [v5 contentView];
  v8 = [v5 contentView];
  type metadata accessor for NowPlayingTransportButton();
  v9 = swift_dynamicCastClass() != 0;

  [v7 setClipsToBounds:v9];
  v10 = objc_opt_self();
  sub_1001F1160(&unk_100AD8160);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100816E30;
  v12 = [v4 leadingAnchor];
  v13 = [v5 contentView];
  v14 = [v13 leadingAnchor];

  v15 = [v12 constraintEqualToAnchor:v14];
  *(v11 + 32) = v15;
  v16 = [v4 trailingAnchor];
  v17 = [v5 contentView];
  v18 = [v17 trailingAnchor];

  v19 = [v16 constraintEqualToAnchor:v18];
  *(v11 + 40) = v19;
  v20 = [v4 topAnchor];
  v21 = [v5 contentView];
  v22 = [v21 topAnchor];

  v23 = [v20 constraintEqualToAnchor:v22];
  *(v11 + 48) = v23;
  v24 = [v4 bottomAnchor];
  v25 = [v5 contentView];

  v26 = [v25 bottomAnchor];
  v27 = [v24 constraintEqualToAnchor:v26];

  *(v11 + 56) = v27;
  sub_10000A7C4(0, &qword_100AE9010);
  isa = sub_1007A25D4().super.isa;

  [v10 activateConstraints:isa];

  return v5;
}

id sub_100602624(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_1006026A4()
{
  result = qword_100AED798;
  if (!qword_100AED798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AED798);
  }

  return result;
}

uint64_t sub_100602728(uint64_t *a1)
{
  v3 = OBJC_IVAR____TtC5Books29SidebarSearchFieldContentView_configuration;
  swift_beginAccess();
  sub_100009864(v1 + v3, v8);
  swift_beginAccess();
  sub_100537ECC((v1 + v3), a1);
  swift_endAccess();
  sub_100009864(v8, v7);
  sub_1001F1160(&qword_100AE91E8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v5[0] = 0;
    v5[1] = 0;
    v6 = 0;
  }

  sub_100602CF4(v5);
  sub_1000074E0(a1);
  sub_1000074E0(v8);
  return sub_100007840(v5, &qword_100AE93D8);
}

id sub_100602820(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC5Books29SidebarSearchFieldContentView_searchBar;
  *&v1[v3] = [objc_allocWithZone(UISearchBar) init];
  *&v1[OBJC_IVAR____TtC5Books29SidebarSearchFieldContentView_textSubscriptionCancellable] = 0;
  v4 = &v1[OBJC_IVAR____TtC5Books29SidebarSearchFieldContentView_configuration];
  *&v1[OBJC_IVAR____TtC5Books29SidebarSearchFieldContentView_configuration + 24] = &type metadata for SidebarSearchFieldContentConfiguration;
  v4[4] = sub_100542344();
  v5 = swift_allocObject();
  *v4 = v5;
  sub_10040727C(a1, v5 + 16);
  v10.receiver = v1;
  v10.super_class = type metadata accessor for SidebarSearchFieldContentView();
  v6 = objc_msgSendSuper2(&v10, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_1006029C8();
  v8[0] = 0;
  v8[1] = 0;
  v9 = 0;
  sub_100602CF4(v8);

  sub_100542398(a1);
  sub_100007840(v8, &qword_100AE93D8);
  return v6;
}

void sub_1006029C8()
{
  v1 = *&v0[OBJC_IVAR____TtC5Books29SidebarSearchFieldContentView_searchBar];
  [v1 setSearchBarStyle:2];
  [v0 addSubview:v1];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v1 setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraLarge];
  v2 = objc_opt_self();
  sub_1001F1160(&unk_100AD8160);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100816E30;
  v4 = [v1 leadingAnchor];
  v5 = [v0 safeAreaLayoutGuide];
  v6 = [v5 leadingAnchor];

  v7 = [v4 constraintEqualToAnchor:v6 constant:-9.0];
  *(v3 + 32) = v7;
  v8 = [v1 trailingAnchor];
  v9 = [v0 safeAreaLayoutGuide];
  v10 = [v9 trailingAnchor];

  v11 = [v8 constraintEqualToAnchor:v10 constant:9.0];
  *(v3 + 40) = v11;
  v12 = [v1 topAnchor];
  v13 = [v0 safeAreaLayoutGuide];
  v14 = [v13 topAnchor];

  v15 = [v12 constraintEqualToAnchor:v14 constant:-5.0];
  *(v3 + 48) = v15;
  v16 = [v1 bottomAnchor];
  v17 = [v0 safeAreaLayoutGuide];
  v18 = [v17 bottomAnchor];

  v19 = [v16 constraintEqualToAnchor:v18];
  *(v3 + 56) = v19;
  sub_10000A7C4(0, &qword_100AE9010);
  isa = sub_1007A25D4().super.isa;

  [v2 activateConstraints:isa];
}

uint64_t sub_100602CF4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1001F1160(&qword_100AD7EB0);
  __chkstk_darwin(v4 - 8);
  v6 = &v35 - v5;
  v7 = sub_1001F1160(&qword_100AD8228);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v35 - v9;
  v11 = sub_1001F1160(&qword_100AD8230);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v35 - v13;
  v15 = OBJC_IVAR____TtC5Books29SidebarSearchFieldContentView_configuration;
  swift_beginAccess();
  sub_100009864(v2 + v15, v41);
  sub_1001F1160(&qword_100AE91E8);
  if (!swift_dynamicCast())
  {
    v39[0] = 0;
    v39[1] = 0;
    v40 = 0;
    return sub_100007840(v39, &qword_100AE93D8);
  }

  v37 = v8;
  v38 = v12;
  sub_1005422E8(v39, v43);
  v16 = v43[0];
  sub_1006037E8(a1, v41);
  v17 = v41[0];
  if (v41[0])
  {

    sub_100542398(v41);

    if (v16 == v17)
    {
      goto LABEL_14;
    }
  }

  else
  {
    sub_100007840(v41, &qword_100AE93D8);
  }

  v36 = a1;
  v19 = *(v2 + OBJC_IVAR____TtC5Books29SidebarSearchFieldContentView_searchBar);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  if (v41[1])
  {
    v20 = sub_1007A2214();
  }

  else
  {
    v20 = 0;
  }

  [v19 setText:v20];

  if (*(v16 + OBJC_IVAR____TtCC5Books16SidebarViewModel16SearchFieldModel_placeholder + 8))
  {
    v21 = sub_1007A2214();
  }

  else
  {
    v21 = 0;
  }

  [v19 setPlaceholder:v21];

  swift_beginAccess();
  sub_1001F1160(&unk_100AD5110);
  sub_10079B974();
  swift_endAccess();
  sub_10000A7C4(0, &qword_100AD1E10);
  v22 = sub_1007A2D74();
  v41[0] = v22;
  v23 = sub_1007A2D24();
  (*(*(v23 - 8) + 56))(v6, 1, 1, v23);
  sub_100005920(&unk_100ADF110, &qword_100AD8228);
  sub_100017E1C();
  sub_10079BAB4();
  sub_100007840(v6, &qword_100AD7EB0);

  (*(v37 + 8))(v10, v7);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100005920(&unk_100AD82A0, &qword_100AD8230);
  v24 = sub_10079BB04();

  (*(v38 + 8))(v14, v11);
  *(v2 + OBJC_IVAR____TtC5Books29SidebarSearchFieldContentView_textSubscriptionCancellable) = v24;

  a1 = v36;
LABEL_14:
  v25 = *(v2 + OBJC_IVAR____TtC5Books29SidebarSearchFieldContentView_searchBar);
  [v25 setDelegate:swift_unknownObjectWeakLoadStrong()];
  swift_unknownObjectRelease();
  v26 = v44;
  sub_1006037E8(a1, v41);
  if (v41[0])
  {
    v27 = v42;
    sub_100542398(v41);
    if (v27 == v26)
    {
      return sub_100542398(v43);
    }
  }

  else
  {
    sub_100007840(v41, &qword_100AE93D8);
  }

  v28 = [v25 isFirstResponder];
  if (v26)
  {
    if ((v28 & 1) == 0)
    {
      [v25 becomeFirstResponder];
      if (qword_100AD1768 != -1)
      {
        swift_once();
      }

      v29 = sub_10079ACE4();
      sub_100008B98(v29, qword_100AE7000);
      v30 = sub_10079ACC4();
      v31 = sub_1007A29A4();
      if (!os_log_type_enabled(v30, v31))
      {
        goto LABEL_30;
      }

      v32 = swift_slowAlloc();
      *v32 = 0;
      v33 = "Search bar becomeFirstResponder()";
LABEL_29:
      _os_log_impl(&_mh_execute_header, v30, v31, v33, v32, 2u);

LABEL_30:
    }
  }

  else if (v28)
  {
    [v25 resignFirstResponder];
    if (qword_100AD1768 != -1)
    {
      swift_once();
    }

    v34 = sub_10079ACE4();
    sub_100008B98(v34, qword_100AE7000);
    v30 = sub_10079ACC4();
    v31 = sub_1007A29A4();
    if (!os_log_type_enabled(v30, v31))
    {
      goto LABEL_30;
    }

    v32 = swift_slowAlloc();
    *v32 = 0;
    v33 = "Search bar resignFirstResponder()";
    goto LABEL_29;
  }

  return sub_100542398(v43);
}

void sub_10060345C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = OBJC_IVAR____TtC5Books29SidebarSearchFieldContentView_searchBar;
    v6 = [*(Strong + OBJC_IVAR____TtC5Books29SidebarSearchFieldContentView_searchBar) text];
    if (!v6)
    {
      if (!v2)
      {
        goto LABEL_9;
      }

LABEL_11:
      v13 = *&v4[v5];
      v14 = sub_1007A2214();
LABEL_13:
      [v13 setText:v14];

      return;
    }

    v7 = v6;
    v8 = sub_1007A2254();
    v10 = v9;

    if (!v2)
    {

      v13 = *&v4[v5];
      v14 = 0;
      goto LABEL_13;
    }

    if (v8 != v1 || v2 != v10)
    {
      v12 = sub_1007A3AB4();

      if (v12)
      {
LABEL_9:

        return;
      }

      goto LABEL_11;
    }
  }
}

id sub_1006035D8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SidebarSearchFieldContentView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10060368C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC5Books29SidebarSearchFieldContentView_configuration;
  swift_beginAccess();
  return sub_100009864(v1 + v3, a1);
}

void (*sub_1006036E8(uint64_t *a1))(uint64_t *a1, char a2)
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
  *(v3 + 104) = v1;
  v5 = OBJC_IVAR____TtC5Books29SidebarSearchFieldContentView_configuration;
  swift_beginAccess();
  sub_100009864(v1 + v5, v4);
  return sub_100603780;
}

void sub_100603780(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_100009864(*a1, (v2 + 5));
    sub_100602728(v2 + 5);
    sub_1000074E0(v2);
  }

  else
  {
    sub_100602728(*a1);
  }

  free(v2);
}

uint64_t sub_1006037E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AE93D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10060388C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>, double a5@<D0>)
{
  v56 = a3;
  v55 = a2;
  v59 = a4;
  v57 = sub_10079CCC4();
  v58 = *(v57 - 8);
  __chkstk_darwin(v57);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1001F1160(&qword_100AED7E0);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v53 - v11;
  v13 = sub_1001F1160(&qword_100AED7E8);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v53 - v15;
  v54 = sub_1001F1160(&qword_100AED7F0);
  __chkstk_darwin(v54);
  v18 = &v53 - v17;
  sub_10079CFD4();
  sub_10079D354();
  sub_10079D3F4();
  v19 = sub_10079D464();

  KeyPath = swift_getKeyPath();
  v21 = &v12[*(sub_1001F1160(&qword_100AED7F8) + 36)];
  *v21 = KeyPath;
  v21[1] = v19;
  v22 = swift_getKeyPath();
  v23 = &v12[*(sub_1001F1160(&qword_100AED800) + 36)];
  *v23 = v22;
  v23[1] = a1;
  v53 = a1;

  LOBYTE(v22) = sub_10079D284();
  sub_10079BBA4();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = &v12[*(sub_1001F1160(&qword_100AED808) + 36)];
  *v32 = v22;
  *(v32 + 1) = v25;
  *(v32 + 2) = v27;
  *(v32 + 3) = v29;
  *(v32 + 4) = v31;
  v32[40] = 0;
  sub_10079E474();
  sub_10079C414();
  v33 = &v12[*(sub_1001F1160(&qword_100AED810) + 36)];
  v34 = v65;
  *(v33 + 4) = v64;
  *(v33 + 5) = v34;
  *(v33 + 6) = v66;
  v35 = v61;
  *v33 = v60;
  *(v33 + 1) = v35;
  v36 = v63;
  *(v33 + 2) = v62;
  *(v33 + 3) = v36;
  v37 = sub_10079E474();
  v39 = v38;
  v40 = &v12[*(v10 + 44)];
  v41 = enum case for RoundedCornerStyle.continuous(_:);
  v42 = sub_10079C9E4();
  (*(*(v42 - 8) + 104))(v40, v41, v42);
  v43 = sub_1001F1160(&qword_100AED818);
  *&v40[*(v43 + 52)] = v55;
  *&v40[*(v43 + 56)] = 256;
  v44 = &v40[*(sub_1001F1160(&qword_100AED820) + 36)];
  *v44 = v37;
  v44[1] = v39;

  if (sub_10079CFE4())
  {
    v45 = 0.6;
  }

  else
  {
    v45 = 1.0;
  }

  sub_10020B3C8(v12, v16, &qword_100AED7E0);
  *&v16[*(v14 + 44)] = v45;
  v46 = sub_10079E474();
  v48 = v47;
  v49 = &v18[*(v54 + 36)];
  sub_100603E00(v56, v49, a5);
  v50 = (v49 + *(sub_1001F1160(&qword_100AED828) + 36));
  *v50 = v46;
  v50[1] = v48;
  sub_10020B3C8(v16, v18, &qword_100AED7E8);
  sub_10079C454();
  sub_1006041A8();
  sub_10060465C(&qword_100AD8DC8, &type metadata accessor for AutomaticHoverEffect);
  v51 = v57;
  sub_10079D6F4();
  (*(v58 + 8))(v8, v51);
  return sub_1006046A4(v18);
}

uint64_t sub_100603E00@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = sub_10079E234();
  __chkstk_darwin(v6 - 8);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1001F1160(&qword_100AED878);
  __chkstk_darwin(v9 - 8);
  v11 = &v32 - v10;
  v12 = sub_1001F1160(&qword_100AED880);
  __chkstk_darwin(v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17.n128_f64[0] = __chkstk_darwin(v15);
  v19 = &v32 - v18;
  if (a1 && a3 > 0.0)
  {
    v20 = enum case for RoundedCornerStyle.continuous(_:);
    v32 = v16;
    v21 = sub_10079C9E4();
    (*(*(v21 - 8) + 104))(v8, v20, v21);

    sub_10079BCF4();
    sub_10060470C(v8, v11);
    v22 = &v11[*(sub_1001F1160(&qword_100AED888) + 36)];
    v23 = v34;
    *v22 = v33;
    *(v22 + 1) = v23;
    *(v22 + 4) = v35;
    v24 = sub_1001F1160(&qword_100AED890);
    *&v11[*(v24 + 52)] = a1;
    *&v11[*(v24 + 56)] = 256;
    v25 = sub_10079E474();
    v27 = v26;
    sub_100604770(v8);
    v28 = &v11[*(sub_1001F1160(&qword_100AED898) + 36)];
    *v28 = v25;
    v28[1] = v27;
    if (sub_10079CFE4())
    {
      v29 = 0.6;
    }

    else
    {
      v29 = 1.0;
    }

    sub_10020B3C8(v11, v14, &qword_100AED878);
    *&v14[*(v12 + 36)] = v29;
    sub_10020B3C8(v14, v19, &qword_100AED880);
    sub_10020B3C8(v19, a2, &qword_100AED880);
    return (*(v32 + 56))(a2, 0, 1, v12);
  }

  else
  {
    v31 = *(v16 + 56);

    return v31(a2, 1, 1, v12, v17);
  }
}

unint64_t sub_1006041A8()
{
  result = qword_100AED830;
  if (!qword_100AED830)
  {
    sub_1001F1234(&qword_100AED7F0);
    sub_100604260();
    sub_100005920(&qword_100AED870, &qword_100AED828);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AED830);
  }

  return result;
}

unint64_t sub_100604260()
{
  result = qword_100AED838;
  if (!qword_100AED838)
  {
    sub_1001F1234(&qword_100AED7E8);
    sub_1006042EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AED838);
  }

  return result;
}

unint64_t sub_1006042EC()
{
  result = qword_100AED840;
  if (!qword_100AED840)
  {
    sub_1001F1234(&qword_100AED7E0);
    sub_1006043A4();
    sub_100005920(&qword_100AED868, &qword_100AED820);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AED840);
  }

  return result;
}

unint64_t sub_1006043A4()
{
  result = qword_100AED848;
  if (!qword_100AED848)
  {
    sub_1001F1234(&qword_100AED810);
    sub_100604430();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AED848);
  }

  return result;
}

unint64_t sub_100604430()
{
  result = qword_100AED850;
  if (!qword_100AED850)
  {
    sub_1001F1234(&qword_100AED808);
    sub_1006044BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AED850);
  }

  return result;
}

unint64_t sub_1006044BC()
{
  result = qword_100AED858;
  if (!qword_100AED858)
  {
    sub_1001F1234(&qword_100AED800);
    sub_100604574();
    sub_100005920(&unk_100AD1D10, &qword_100ADB490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AED858);
  }

  return result;
}

unint64_t sub_100604574()
{
  result = qword_100AED860;
  if (!qword_100AED860)
  {
    sub_1001F1234(&qword_100AED7F8);
    sub_10060465C(&qword_100ADC328, &type metadata accessor for ButtonStyleConfiguration.Label);
    sub_100005920(&unk_100AD1CF0, &qword_100ADBDA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AED860);
  }

  return result;
}

uint64_t sub_10060465C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1006046A4(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AED7F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10060470C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10079E234();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100604770(uint64_t a1)
{
  v2 = sub_10079E234();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1006047CC()
{
  v1 = v0;
  if (qword_100AD1938 != -1)
  {
    swift_once();
  }

  v2 = sub_10079ACE4();
  sub_100008B98(v2, qword_100AED8A0);
  v3 = sub_10079ACC4();
  v4 = sub_1007A29A4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Cancel requested", v5, 2u);
  }

  v6 = *(v1 + 24);
  *(v1 + 24) = 0;
  if (v6)
  {
    sub_1007A2764();
  }
}

void sub_1006048FC(void *a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  v9 = sub_1007969B4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v13 - 8);
  v15 = &v38 - v14;
  if (*(v4 + 24))
  {
    if (qword_100AD1938 != -1)
    {
      swift_once();
    }

    v16 = sub_10079ACE4();
    sub_100008B98(v16, qword_100AED8A0);
    v39 = sub_10079ACC4();
    v17 = sub_1007A2994();
    if (os_log_type_enabled(v39, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v39, v17, "snapshot in progress, ignoring snapshot request", v18, 2u);
    }

    v19 = v39;
  }

  else
  {
    v38 = a3;
    swift_unknownObjectWeakAssign();
    [a1 bounds];
    v21 = v20;
    v23 = v22;
    v24 = [a1 window];
    v39 = a4;
    if (v24)
    {
      v25 = v24;
      [v24 frame];
    }

    else
    {
      v25 = [objc_opt_self() mainScreen];
      [v25 bounds];
    }

    v28 = v26;
    v29 = v27;

    sub_1007A2704();
    v30 = sub_1007A2744();
    (*(*(v30 - 8) + 56))(v15, 0, 1, v30);
    v31 = swift_allocObject();
    swift_weakInit();
    (*(v10 + 16))(&v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v9);
    v32 = (*(v10 + 80) + 96) & ~*(v10 + 80);
    v33 = swift_allocObject();
    *(v33 + 2) = 0;
    *(v33 + 3) = 0;
    v34 = v39;
    *(v33 + 4) = v38;
    *(v33 + 5) = v34;
    *(v33 + 6) = v31;
    *(v33 + 7) = a1;
    *(v33 + 8) = v21;
    *(v33 + 9) = v23;
    *(v33 + 10) = v28;
    *(v33 + 11) = v29;
    (*(v10 + 32))(&v33[v32], v12, v9);

    v35 = a1;
    v36 = sub_1005E3DA4(0, 0, v15, &unk_100835D08, v33);
    sub_100007840(v15, &qword_100AD67D0);
    v37 = *(v4 + 24);
    *(v4 + 24) = v36;
    if (v37)
    {

      sub_1007A2764();
    }
  }
}

uint64_t sub_100604D28()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AED8A0);
  sub_100008B98(v0, qword_100AED8A0);
  return sub_10079ACD4();
}

uint64_t sub_100604DAC(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *(v12 + 104) = a12;
  *(v12 + 88) = a3;
  *(v12 + 96) = a4;
  *(v12 + 72) = a1;
  *(v12 + 80) = a2;
  *(v12 + 56) = a10;
  *(v12 + 64) = a11;
  *(v12 + 40) = a8;
  *(v12 + 48) = a9;
  v13 = sub_1007A3864();
  *(v12 + 112) = v13;
  *(v12 + 120) = *(v13 - 8);
  *(v12 + 128) = swift_task_alloc();

  return _swift_task_switch(sub_100604E7C, 0, 0);
}

uint64_t sub_100604E7C()
{
  sub_1007A3B54();
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = sub_100604F48;

  return sub_1004B1524(100000000000000000, 0, 0, 0, 1);
}

uint64_t sub_100604F48()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  (*(v2[15] + 8))(v2[16], v2[14]);
  if (v0)
  {
    v3 = sub_1006053E8;
  }

  else
  {
    v3 = sub_1006050B0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1006050B0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 19) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 20) = v2;
    *v2 = v0;
    v2[1] = sub_1006051B0;
    v3 = *(v0 + 13);
    v4 = v0[11];
    v5 = v0[12];
    v6 = v0[9];
    v7 = v0[10];
    v8 = *(v0 + 8);

    return sub_1006067C4(v8, v3, v6, v7, v4, v5);
  }

  else
  {

    v10 = *(v0 + 1);

    return v10();
  }
}

uint64_t sub_1006051B0(char a1)
{
  *(*v1 + 176) = a1;

  return _swift_task_switch(sub_1006052B0, 0, 0);
}

uint64_t sub_1006052B0()
{
  sub_1007A26F4();
  *(v0 + 168) = sub_1007A26E4();
  v2 = sub_1007A2694();

  return _swift_task_switch(sub_100605344, v2, v1);
}

uint64_t sub_100605344()
{
  v1 = *(v0 + 152);

  v2 = *(v1 + 24);
  *(v1 + 24) = 0;
  if (v2)
  {
    sub_1007A2764();
  }

  return _swift_task_switch(sub_100605520, 0, 0);
}

uint64_t sub_1006053E8()
{
  if (qword_100AD1938 != -1)
  {
    swift_once();
  }

  v1 = sub_10079ACE4();
  sub_100008B98(v1, qword_100AED8A0);
  v2 = sub_10079ACC4();
  v3 = sub_1007A29A4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Cancelled before starting, bail", v4, 2u);
  }

  v5 = *(v0 + 40);

  v5(0);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100605520()
{
  (*(v0 + 40))(*(v0 + 176));

  v1 = *(v0 + 8);

  return v1();
}

void sub_10060559C(void *a1, id a2)
{
  v3 = [a2 layer];
  v4 = [a1 CGContext];
  [v3 renderInContext:v4];
}

uint64_t sub_10060562C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_100605690(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1007969B4() - 8);
  v6 = (*(v5 + 80) + 96) & ~*(v5 + 80);
  v7 = *(v1 + 2);
  v8 = *(v1 + 3);
  v9 = *(v1 + 4);
  v10 = *(v1 + 5);
  v11 = *(v1 + 6);
  v12 = *(v1 + 7);
  v13 = v1[8];
  v14 = v1[9];
  v15 = v1[10];
  v16 = v1[11];
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_10002812C;

  return sub_100604DAC(v13, v14, v15, v16, a1, v7, v8, v9, v10, v11, v12, v1 + v6);
}

uint64_t sub_1006057D4(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *(v4 + 88) = a2;
  *(v4 + 72) = a3;
  *(v4 + 80) = a4;
  *(v4 + 64) = a1;
  sub_1007A26F4();
  *(v4 + 96) = sub_1007A26E4();
  v6 = sub_1007A2694();

  return _swift_task_switch(sub_100605874, v6, v5);
}

uint64_t sub_100605874()
{

  if (qword_100AD1938 != -1)
  {
    swift_once();
  }

  v1 = sub_10079ACE4();
  sub_100008B98(v1, qword_100AED8A0);
  v2 = sub_10079ACC4();
  v3 = sub_1007A29A4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "will render", v4, 2u);
  }

  v5 = *(v0 + 11);
  v7 = v0[9];
  v6 = v0[10];
  v8 = *(v0 + 8);

  v9 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:v5 format:{v7, v6}];
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_100607044;
  *(v11 + 24) = v10;
  *(v0 + 6) = sub_1002C70B8;
  *(v0 + 7) = v11;
  *(v0 + 2) = _NSConcreteStackBlock;
  *(v0 + 3) = 1107296256;
  *(v0 + 4) = sub_1004091A8;
  *(v0 + 5) = &unk_100A270B0;
  v12 = _Block_copy(v0 + 2);
  v13 = v8;

  v14 = [v9 imageWithActions:v12];

  _Block_release(v12);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  else
  {
    v16 = *(v0 + 1);

    return v16(v14);
  }

  return result;
}

uint64_t sub_100605B04(uint64_t a1, double a2, double a3, double a4, double a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 16) = a1;
  v6 = sub_1007A3864();
  *(v5 + 56) = v6;
  *(v5 + 64) = *(v6 - 8);
  *(v5 + 72) = swift_task_alloc();

  return _swift_task_switch(sub_100605BCC, 0, 0);
}

uint64_t sub_100605BCC()
{
  v1 = *(v0 + 24);
  if (v1 <= 0.0 || (v2 = *(v0 + 32), v2 <= 0.0))
  {
    if (qword_100AD1938 != -1)
    {
      swift_once();
    }

    v9 = *(v0 + 16);
    v10 = sub_10079ACE4();
    sub_100008B98(v10, qword_100AED8A0);
    v11 = v9;
    v12 = sub_10079ACC4();
    v13 = sub_1007A29A4();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = *(v0 + 16);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      *(v15 + 4) = v14;
      *v16 = v14;
      v17 = v14;
      _os_log_impl(&_mh_execute_header, v12, v13, "Snapshotting a CGSizeZero view: %@", v15, 0xCu);
      sub_100007840(v16, &unk_100AD9480);
    }

    v18 = *(v0 + 8);

    return v18(0);
  }

  else
  {
    sub_100606FF8();
    v3 = [swift_getObjCClassFromMetadata() preferredFormat];
    *(v0 + 80) = v3;
    [v3 scale];
    v5 = v4;
    CGSizeScaleToScreen();
    if (v7 < v1 || v6 < v2)
    {
      CGSizeScaleThatFitsInCGSize();
    }

    else
    {
      v20 = v5;
    }

    [v3 setScale:v20];
    v21 = swift_task_alloc();
    *(v0 + 88) = v21;
    *v21 = v0;
    v21[1] = sub_100605EA4;
    v22 = *(v0 + 24);
    v23 = *(v0 + 32);
    v24 = *(v0 + 16);

    return sub_1006057D4(v24, v3, v22, v23);
  }
}

uint64_t sub_100605EA4(uint64_t a1)
{
  *(*v1 + 96) = a1;

  return _swift_task_switch(sub_100605FA4, 0, 0);
}

uint64_t sub_100605FA4()
{
  if (qword_100AD1938 != -1)
  {
    swift_once();
  }

  v1 = sub_10079ACE4();
  *(v0 + 104) = sub_100008B98(v1, qword_100AED8A0);
  v2 = sub_10079ACC4();
  v3 = sub_1007A29A4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "did render", v4, 2u);
  }

  sub_1007A3B54();
  v5 = swift_task_alloc();
  *(v0 + 112) = v5;
  *v5 = v0;
  v5[1] = sub_100606134;

  return sub_1004B1524(10000000000000000, 0, 0, 0, 1);
}

uint64_t sub_100606134()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  *(*v1 + 120) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_100606460;
  }

  else
  {
    v5 = sub_1006062A4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1006062A4()
{
  v1 = sub_10079ACC4();
  v2 = sub_1007A29A4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "we are back, check cancellation", v3, 2u);
  }

  v4 = *(v0 + 120);

  sub_1007A2774();
  if (v4)
  {

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = sub_10079ACC4();
    v8 = sub_1007A29A4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Snapshot task was NOT cancelled!", v9, 2u);
    }

    v10 = *(v0 + 96);

    v11 = *(v0 + 8);

    return v11(v10);
  }
}

uint64_t sub_100606460()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1006064D8(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return _swift_task_switch(sub_1006064F8, 0, 0);
}

uint64_t sub_1006064F8()
{
  v1 = UIImagePNGRepresentation(*(v0 + 48));
  if (v1)
  {
    v2 = v1;
    v3 = sub_1007969D4();
    v5 = v4;

    sub_1007969E4();
    sub_10000ADCC(v3, v5);
  }

  if (qword_100AD1938 != -1)
  {
    swift_once();
  }

  v6 = sub_10079ACE4();
  sub_100008B98(v6, qword_100AED8A0);
  v7 = sub_10079ACC4();
  v8 = sub_1007A29A4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Saved snapshot", v9, 2u);
  }

  v10 = *(v0 + 8);

  return v10(1);
}

uint64_t sub_1006067C4(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  *(v6 + 56) = a2;
  *(v6 + 40) = a5;
  *(v6 + 48) = a6;
  *(v6 + 24) = a3;
  *(v6 + 32) = a4;
  *(v6 + 16) = a1;
  sub_1007A26F4();
  *(v6 + 64) = sub_1007A26E4();
  v8 = sub_1007A2694();
  *(v6 + 72) = v8;
  *(v6 + 80) = v7;

  return _swift_task_switch(sub_100606868, v8, v7);
}

uint64_t sub_100606868()
{
  sub_1007A2774();
  v1 = swift_task_alloc();
  *(v0 + 11) = v1;
  *v1 = v0;
  v1[1] = sub_100606A20;
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + 2);

  return sub_100605B04(v6, v4, v5, v2, v3);
}

uint64_t sub_100606A20(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 96) = a1;
  *(v4 + 104) = v1;

  v5 = *(v3 + 80);
  v6 = *(v3 + 72);
  if (v1)
  {
    v7 = sub_100606D38;
  }

  else
  {
    v7 = sub_100606B64;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100606B64()
{
  v1 = v0[12];
  if (!v1)
  {

LABEL_9:
    v8 = v0[1];

    return v8(0);
  }

  v2 = v0[13];
  v3 = v1;
  sub_1007A2774();

  if (v2)
  {

    if (qword_100AD1938 != -1)
    {
      swift_once();
    }

    v4 = sub_10079ACE4();
    sub_100008B98(v4, qword_100AED8A0);
    v5 = sub_10079ACC4();
    v6 = sub_1007A29A4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Scene snapshot cancelled", v7, 2u);
    }

    goto LABEL_9;
  }

  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_100606E64;
  v11 = v0[7];

  return sub_1006064D8(v3, v11);
}

uint64_t sub_100606D38()
{

  if (qword_100AD1938 != -1)
  {
    swift_once();
  }

  v1 = sub_10079ACE4();
  sub_100008B98(v1, qword_100AED8A0);
  v2 = sub_10079ACC4();
  v3 = sub_1007A29A4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Scene snapshot cancelled", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5(0);
}

uint64_t sub_100606E64(char a1)
{
  v2 = *v1;
  *(*v1 + 120) = a1;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);

  return _swift_task_switch(sub_100606F8C, v4, v3);
}

uint64_t sub_100606F8C()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 120);
  v3 = *(v0 + 8);

  return v3(v2);
}

unint64_t sub_100606FF8()
{
  result = qword_100AF71C0;
  if (!qword_100AF71C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100AF71C0);
  }

  return result;
}

id sub_10060706C()
{
  v1 = v0;
  v2 = sub_1007A1C54();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1007A1CA4();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&v0[OBJC_IVAR____TtC5Books18CarPlayDataManager_libraryProvider];
  [v11 setDelegate:{v1, v8}];
  [*&v1[OBJC_IVAR____TtC5Books18CarPlayDataManager_player] addObserver:v1];
  result = [v11 isContentLoaded];
  if (result)
  {
    v21 = v6;
    v13 = [v11 fetchedContent];
    if (v13)
    {
      v14 = v13;
      sub_10000A7C4(0, &unk_100ADE530);
      v15 = sub_1007A25E4();
    }

    else
    {
      v15 = _swiftEmptyArrayStorage;
    }

    v22 = v3;

    if (v15 >> 62)
    {
      sub_1001F1160(&qword_100ADDB80);
      v16 = sub_1007A38C4();
    }

    else
    {
      sub_1007A3AD4();
      v16 = v15;
    }

    v20 = *&v1[OBJC_IVAR____TtC5Books18CarPlayDataManager_accessQueue];
    v17 = swift_allocObject();
    *(v17 + 16) = v1;
    *(v17 + 24) = v16;
    aBlock[4] = sub_100609B00;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1003323D0;
    aBlock[3] = &unk_100A271D8;
    v18 = _Block_copy(aBlock);

    v19 = v1;
    sub_1007A1C74();
    v23 = _swiftEmptyArrayStorage;
    sub_100022AA4(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags);
    sub_1001F1160(&unk_100AD7CA0);
    sub_100609AA4(&qword_100ADA680, &unk_100AD7CA0);
    sub_1007A3594();
    sub_1007A2D94();
    _Block_release(v18);
    (*(v22 + 8))(v5, v2);
    (*(v7 + 8))(v10, v21);
  }

  return result;
}

uint64_t sub_100607470(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v7 = swift_getObjectType();

  return a3(a1, a2, v3, ObjectType, v7);
}

id CarPlayDataManager.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC5Books18CarPlayDataManager_player] removeObserver:v0];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CarPlayDataManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100607618(uint64_t a1, unint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100307F8C(a2);

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1006076D8()
{
  v1 = sub_1007A29D4();
  if (qword_100AD1530 != -1)
  {
    swift_once();
  }

  v2 = qword_100AE15E0;
  if (os_log_type_enabled(qword_100AE15E0, v1))
  {
    v3 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v3 = 136315394;
    swift_getObjectType();
    v4 = sub_1007A3D34();
    v6 = sub_1000070F4(v4, v5, &v29);

    *(v3 + 4) = v6;
    *(v3 + 12) = 2080;
    *(v3 + 14) = sub_1000070F4(0xD000000000000016, 0x80000001008E14E0, &v29);
    _os_log_impl(&_mh_execute_header, v2, v1, "%s %s", v3, 0x16u);
    swift_arrayDestroy();
  }

  v7 = *(v0 + OBJC_IVAR____TtC5Books18CarPlayDataManager_player);
  if ([v7 state] != 2)
  {
    return 0;
  }

  result = [v7 currentAudiobook];
  if (!result)
  {
    return result;
  }

  v9 = result;
  [v7 positionInCurrentAudiobook];
  v11 = v10;
  [v9 duration];
  if (vabdd_f64(v11, v12) < 0.01)
  {
    v13 = 1;
LABEL_11:
    sub_10000A7C4(0, &qword_100AD6750);
    v14.super.super.isa = sub_1007A3154(v13).super.super.isa;
    goto LABEL_12;
  }

  if (fabs(v11) < 0.01)
  {
    v13 = 0;
    goto LABEL_11;
  }

  if (v12 <= 0.0 || (v14.super.super.isa = [objc_allocWithZone(NSNumber) initWithDouble:v11 / v12]) == 0)
  {
    swift_unknownObjectRelease();
    return 0;
  }

LABEL_12:
  v15 = [v9 assetID];
  v16 = sub_1007A2254();
  v18 = v17;

  v19 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v19 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (v19)
  {
    v20 = [v9 assetID];
    v21 = sub_1007A2254();
    v23 = v22;

    v24 = type metadata accessor for CarPlayListenNowData();
    v25 = objc_allocWithZone(v24);
    *&v25[OBJC_IVAR____TtC5Books20CarPlayListenNowData_updatedReadingProgress] = v14;
    v26 = &v25[OBJC_IVAR____TtC5Books20CarPlayListenNowData_assetID];
    *v26 = v21;
    v26[1] = v23;
    v30.receiver = v25;
    v30.super_class = v24;
    v27 = v14.super.super.isa;
    v28 = objc_msgSendSuper2(&v30, "init");

    swift_unknownObjectRelease();
    return v28;
  }

  swift_unknownObjectRelease();

  return 0;
}

char *sub_100607A38()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Books18CarPlayDataManager_player);
  result = [v1 currentAudiobook];
  if (result)
  {
    v3 = result;
    [v1 listeningSessionStartTime];
    CMTimeMakeWithSeconds(&v31.start, v4 + 0.5, 1000000000);
    value = v31.start.value;
    v6 = *&v31.start.timescale;
    epoch = v31.start.epoch;
    [v1 playbackRate];
    v9 = v8;
    if ([v1 currentChapterIndex] < 3)
    {
      v28 = 0;
    }

    else
    {
      result = [v1 currentChapterIndex];
      if (result < 2)
      {
        __break(1u);
        return result;
      }

      v28 = result - 2;
    }

    v27 = [v1 currentChapterIndex];
    v10 = [v3 chapters];
    sub_1001F1160(&qword_100AED9C0);
    v11 = sub_1007A25E4();

    if (v11 >> 62)
    {
LABEL_23:
      v12 = sub_1007A38D4();
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v13 = 0;
    while (1)
    {
      if (v12 == v13)
      {
        swift_unknownObjectRelease();

        return 0;
      }

      if ((v11 & 0xC000000000000001) != 0)
      {
        v14 = sub_1007A3784();
      }

      else
      {
        if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

        v14 = *(v11 + 8 * v13 + 32);
        swift_unknownObjectRetain();
      }

      [v14 timeRangeInAudiobook];
      time.epoch = epoch;
      time.value = value;
      *&time.timescale = v6;
      v15 = CMTimeRangeContainsTime(&v31, &time);
      swift_unknownObjectRelease();
      if (v15)
      {
        break;
      }

      if (__OFADD__(v13++, 1))
      {
        goto LABEL_22;
      }
    }

    v17 = [v3 title];
    v18 = sub_1007A2254();
    v20 = v19;

    v21 = [v3 chapters];
    v22 = sub_1007A25E4();

    v23 = type metadata accessor for CarPlayAudiobookData();
    v24 = objc_allocWithZone(v23);
    v25 = &v24[OBJC_IVAR____TtC5Books20CarPlayAudiobookData_title];
    *v25 = v18;
    v25[1] = v20;
    *&v24[OBJC_IVAR____TtC5Books20CarPlayAudiobookData_chapters] = v22;
    *&v24[OBJC_IVAR____TtC5Books20CarPlayAudiobookData_firstChapterIndex] = v28;
    *&v24[OBJC_IVAR____TtC5Books20CarPlayAudiobookData_sessionStartIndex] = v13;
    *&v24[OBJC_IVAR____TtC5Books20CarPlayAudiobookData_currentIndex] = v27;
    *&v24[OBJC_IVAR____TtC5Books20CarPlayAudiobookData_playbackRate] = v9;
    v29.receiver = v24;
    v29.super_class = v23;
    v26 = objc_msgSendSuper2(&v29, "init");
    swift_unknownObjectRelease();
    return v26;
  }

  return result;
}

uint64_t sub_100607DC8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  sub_10000A7C4(0, &unk_100ADE530);
  v7 = sub_1007A25E4();
  swift_unknownObjectRetain();
  v8 = a1;
  a5(v7);
  swift_unknownObjectRelease();
}

id CarPlayDataManager.player(_:audiobookDidChange:)(void *a1, void *a2)
{
  v4 = sub_1007A29D4();
  if (qword_100AD1530 != -1)
  {
    swift_once();
  }

  v5 = qword_100AE15E0;
  if (os_log_type_enabled(qword_100AE15E0, v4))
  {
    v6 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v6 = 136315650;
    swift_getObjectType();
    v7 = sub_1007A3D34();
    v9 = sub_1000070F4(v7, v8, &v16);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_1000070F4(0xD00000000000001DLL, 0x80000001008E13D0, &v16);
    *(v6 + 22) = 2080;
    if (a2)
    {
      v10 = [a2 assetID];
      v11 = sub_1007A2254();
      v13 = v12;
    }

    else
    {
      v13 = 0xE300000000000000;
      v11 = 7104878;
    }

    v14 = sub_1000070F4(v11, v13, &v16);

    *(v6 + 24) = v14;
    _os_log_impl(&_mh_execute_header, v5, v4, "%s %s current: %s", v6, 0x20u);
    swift_arrayDestroy();
  }

  result = [a1 state];
  if (result == 2)
  {

    return sub_1006080B4();
  }

  return result;
}

uint64_t sub_1006080B4()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    *(result + OBJC_IVAR____TtC5Books17CarPlayInteractor_hasShownError) = 0;
    result = swift_unknownObjectRelease();
  }

  v2 = (v0 + OBJC_IVAR____TtC5Books18CarPlayDataManager_lastBookAssetID);
  v3 = *(v0 + OBJC_IVAR____TtC5Books18CarPlayDataManager_lastBookAssetID + 8);
  if (v3)
  {
    v4 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v4 = *v2 & 0xFFFFFFFFFFFFLL;
    }

    if (v4)
    {
      sub_10000A7C4(0, &qword_100AED9C8);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

      v6 = sub_1007A2214();

      [ObjCClassFromMetadata markCarPlayBackgroundBookAsCurrent:v6];

      *v2 = 0;
      v2[1] = 0;
    }
  }

  return result;
}

void sub_100608254(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v8 = a1;
  a5(a4);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

uint64_t CarPlayDataManager.player(_:stateDidChangeFrom:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 == 2)
  {
    return sub_1006080B4();
  }

  return result;
}

uint64_t CarPlayDataManager.player(_:playbackRateDidChange:)(void *a1, float a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = [a1 precisionRates];
    sub_10000A7C4(0, &qword_100AD6750);
    v6 = sub_1007A25E4();

    sub_100308498(v6, a2);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t CarPlayDataManager.player(_:failedWithError:)()
{
  v1 = (v0 + OBJC_IVAR____TtC5Books18CarPlayDataManager_lastBookAssetID);
  *v1 = 0;
  v1[1] = 0;

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100308670();

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_10060862C(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(type metadata accessor for CarPlayDataManager());

  return sub_10060868C(a1, a2, v4);
}

id sub_10060868C(uint64_t a1, uint64_t a2, char *a3)
{
  v17 = a1;
  v18 = a2;
  v4 = sub_1007A2CF4();
  __chkstk_darwin(v4);
  v5 = sub_1007A1CA4();
  __chkstk_darwin(v5 - 8);
  v6 = sub_1007A2D64();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&a3[OBJC_IVAR____TtC5Books18CarPlayDataManager_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v10 = &a3[OBJC_IVAR____TtC5Books18CarPlayDataManager_lastBookAssetID];
  *v10 = 0;
  *(v10 + 1) = 0;
  v16 = OBJC_IVAR____TtC5Books18CarPlayDataManager_accessQueue;
  v15[1] = sub_10000A7C4(0, &qword_100AD1E10);
  (*(v7 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v6);
  sub_1007A1C74();
  v20 = _swiftEmptyArrayStorage;
  sub_100022AA4(&qword_100AE8220, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1001F1160(&unk_100AD1E20);
  sub_100609AA4(&qword_100AE8230, &unk_100AD1E20);
  sub_1007A3594();
  v11 = sub_1007A2DA4();
  v12 = v17;
  *&a3[v16] = v11;
  *&a3[OBJC_IVAR____TtC5Books18CarPlayDataManager_player] = v12;
  *&a3[OBJC_IVAR____TtC5Books18CarPlayDataManager_libraryProvider] = v18;
  v13 = type metadata accessor for CarPlayDataManager();
  v19.receiver = a3;
  v19.super_class = v13;
  return objc_msgSendSuper2(&v19, "init");
}

uint64_t sub_100608980(unint64_t a1)
{
  v2 = v1;
  v4 = sub_1007A1C54();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v51 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1007A1CA4();
  v50 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v1) = sub_1007A29D4();
  if (qword_100AD1530 != -1)
  {
LABEL_27:
    swift_once();
  }

  v10 = qword_100AE15E0;
  v11 = os_log_type_enabled(qword_100AE15E0, v1);
  v12 = a1 >> 62;
  v52 = v7;
  if (v11)
  {
    v44 = v1;
    v47 = v9;
    v13 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    aBlock[0] = v41;
    *v13 = 136315650;
    v46 = v2;
    swift_getObjectType();
    v14 = sub_1007A3D34();
    v9 = sub_1000070F4(v14, v15, aBlock);

    *(v13 + 4) = v9;
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_1000070F4(0xD000000000000022, 0x80000001008E14B0, aBlock);
    v43 = v13;
    *(v13 + 22) = 2080;
    v45 = a1 >> 62;
    v2 = (a1 & 0xFFFFFFFFFFFFFF8);
    if (v12)
    {
      v16 = sub_1007A38D4();
    }

    else
    {
      v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v42 = v10;
    v48 = v5;
    v49 = v4;
    if (v16)
    {
      v7 = 0;
      v4 = a1 & 0xC000000000000001;
      v17 = _swiftEmptyArrayStorage;
      v5 = &selRef__setupSizeRestrictionsForWindowScene_sceneType_;
      do
      {
        v1 = v7;
        while (1)
        {
          if (v4)
          {
            v18 = sub_1007A3784();
          }

          else
          {
            if (v1 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_26;
            }

            v18 = *(a1 + 8 * v1 + 32);
          }

          v19 = v18;
          v7 = v1 + 1;
          if (__OFADD__(v1, 1))
          {
            __break(1u);
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }

          v20 = [v18 assetID];
          if (v20)
          {
            break;
          }

          ++v1;
          if (v7 == v16)
          {
            goto LABEL_21;
          }
        }

        v21 = v20;
        v22 = sub_1007A2254();
        v40 = v23;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_10000B3D8(0, *(v17 + 2) + 1, 1, v17);
        }

        v9 = *(v17 + 2);
        v24 = *(v17 + 3);
        if (v9 >= v24 >> 1)
        {
          v17 = sub_10000B3D8((v24 > 1), v9 + 1, 1, v17);
        }

        *(v17 + 2) = v9 + 1;
        v25 = &v17[16 * v9];
        v26 = v40;
        *(v25 + 4) = v22;
        *(v25 + 5) = v26;
      }

      while (v7 != v16);
    }

LABEL_21:
    v27 = sub_1007A25F4();
    v29 = v28;

    v30 = sub_1000070F4(v27, v29, aBlock);

    v31 = v42;
    v32 = v43;
    *(v43 + 24) = v30;
    _os_log_impl(&_mh_execute_header, v31, v44, "%s %s assets: %s", v32, 0x20u);
    swift_arrayDestroy();

    v5 = v48;
    v4 = v49;
    v2 = v46;
    v9 = v47;
    v12 = v45;
  }

  if (v12)
  {
    sub_1001F1160(&qword_100ADDB80);
    v38 = sub_1007A38C4();

    a1 = v38;
  }

  else
  {
    sub_1007A3AD4();
  }

  v33 = swift_allocObject();
  *(v33 + 16) = v2;
  *(v33 + 24) = a1;
  aBlock[4] = sub_100609B00;
  aBlock[5] = v33;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003323D0;
  aBlock[3] = &unk_100A27188;
  v34 = _Block_copy(aBlock);
  v35 = v2;

  sub_1007A1C74();
  v53 = _swiftEmptyArrayStorage;
  sub_100022AA4(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001F1160(&unk_100AD7CA0);
  sub_100609AA4(&qword_100ADA680, &unk_100AD7CA0);
  v36 = v51;
  sub_1007A3594();
  sub_1007A2D94();
  _Block_release(v34);
  (v5[1])(v36, v4);
  (*(v50 + 8))(v9, v52);
}

uint64_t sub_100608FB4(unint64_t a1)
{
  v2 = v1;
  v4 = sub_1007A1C54();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v51 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1007A1CA4();
  v50 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v1) = sub_1007A29D4();
  if (qword_100AD1530 != -1)
  {
LABEL_27:
    swift_once();
  }

  v10 = qword_100AE15E0;
  v11 = os_log_type_enabled(qword_100AE15E0, v1);
  v12 = a1 >> 62;
  v52 = v7;
  if (v11)
  {
    v44 = v1;
    v47 = v9;
    v13 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    aBlock[0] = v41;
    *v13 = 136315650;
    v46 = v2;
    swift_getObjectType();
    v14 = sub_1007A3D34();
    v9 = sub_1000070F4(v14, v15, aBlock);

    *(v13 + 4) = v9;
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_1000070F4(0xD000000000000024, 0x80000001008E1480, aBlock);
    v43 = v13;
    *(v13 + 22) = 2080;
    v45 = a1 >> 62;
    v2 = (a1 & 0xFFFFFFFFFFFFFF8);
    if (v12)
    {
      v16 = sub_1007A38D4();
    }

    else
    {
      v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v42 = v10;
    v48 = v5;
    v49 = v4;
    if (v16)
    {
      v7 = 0;
      v4 = a1 & 0xC000000000000001;
      v17 = _swiftEmptyArrayStorage;
      v5 = &selRef__setupSizeRestrictionsForWindowScene_sceneType_;
      do
      {
        v1 = v7;
        while (1)
        {
          if (v4)
          {
            v18 = sub_1007A3784();
          }

          else
          {
            if (v1 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_26;
            }

            v18 = *(a1 + 8 * v1 + 32);
          }

          v19 = v18;
          v7 = v1 + 1;
          if (__OFADD__(v1, 1))
          {
            __break(1u);
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }

          v20 = [v18 assetID];
          if (v20)
          {
            break;
          }

          ++v1;
          if (v7 == v16)
          {
            goto LABEL_21;
          }
        }

        v21 = v20;
        v22 = sub_1007A2254();
        v40 = v23;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_10000B3D8(0, *(v17 + 2) + 1, 1, v17);
        }

        v9 = *(v17 + 2);
        v24 = *(v17 + 3);
        if (v9 >= v24 >> 1)
        {
          v17 = sub_10000B3D8((v24 > 1), v9 + 1, 1, v17);
        }

        *(v17 + 2) = v9 + 1;
        v25 = &v17[16 * v9];
        v26 = v40;
        *(v25 + 4) = v22;
        *(v25 + 5) = v26;
      }

      while (v7 != v16);
    }

LABEL_21:
    v27 = sub_1007A25F4();
    v29 = v28;

    v30 = sub_1000070F4(v27, v29, aBlock);

    v31 = v42;
    v32 = v43;
    *(v43 + 24) = v30;
    _os_log_impl(&_mh_execute_header, v31, v44, "%s %s assets: %s", v32, 0x20u);
    swift_arrayDestroy();

    v5 = v48;
    v4 = v49;
    v2 = v46;
    v9 = v47;
    v12 = v45;
  }

  if (v12)
  {
    sub_1001F1160(&qword_100ADDB80);
    v38 = sub_1007A38C4();

    a1 = v38;
  }

  else
  {
    sub_1007A3AD4();
  }

  v33 = swift_allocObject();
  *(v33 + 16) = v2;
  *(v33 + 24) = a1;
  aBlock[4] = sub_100609A94;
  aBlock[5] = v33;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003323D0;
  aBlock[3] = &unk_100A27138;
  v34 = _Block_copy(aBlock);
  v35 = v2;

  sub_1007A1C74();
  v53 = _swiftEmptyArrayStorage;
  sub_100022AA4(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001F1160(&unk_100AD7CA0);
  sub_100609AA4(&qword_100ADA680, &unk_100AD7CA0);
  v36 = v51;
  sub_1007A3594();
  sub_1007A2D94();
  _Block_release(v34);
  (v5[1])(v36, v4);
  (*(v50 + 8))(v9, v52);
}

uint64_t sub_1006095E8(void *a1)
{
  v2 = sub_1007A29D4();
  if (qword_100AD1530 != -1)
  {
    swift_once();
  }

  v3 = qword_100AE15E0;
  if (os_log_type_enabled(qword_100AE15E0, v2))
  {
    v4 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v4 = 136315650;
    swift_getObjectType();
    v5 = sub_1007A3D34();
    v7 = sub_1000070F4(v5, v6, &v14);

    *(v4 + 4) = v7;
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_1000070F4(0xD00000000000001ELL, 0x80000001008E1460, &v14);
    *(v4 + 22) = 2080;
    if (a1)
    {
      v8 = [a1 assetID];
      v9 = sub_1007A2254();
      v11 = v10;
    }

    else
    {
      v11 = 0xE300000000000000;
      v9 = 7104878;
    }

    v12 = sub_1000070F4(v9, v11, &v14);

    *(v4 + 24) = v12;
    _os_log_impl(&_mh_execute_header, v3, v2, "%s %s current: %s", v4, 0x20u);
    swift_arrayDestroy();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100307D4C();

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10060980C(void *a1)
{
  v2 = sub_1007A29D4();
  if (qword_100AD1530 != -1)
  {
    swift_once();
  }

  v3 = qword_100AE15E0;
  if (os_log_type_enabled(qword_100AE15E0, v2))
  {
    v4 = 0x64656D616E6E75;
    v5 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v5 = 136315650;
    swift_getObjectType();
    v6 = sub_1007A3D34();
    v8 = sub_1000070F4(v6, v7, &v15);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_1000070F4(0xD00000000000001BLL, 0x80000001008E1440, &v15);
    *(v5 + 22) = 2080;
    if (a1 && (v9 = [a1 title]) != 0)
    {
      v10 = v9;
      v4 = sub_1007A2254();
      v12 = v11;
    }

    else
    {
      v12 = 0xE700000000000000;
    }

    v13 = sub_1000070F4(v4, v12, &v15);

    *(v5 + 24) = v13;
    _os_log_impl(&_mh_execute_header, v3, v2, "%s %s %s", v5, 0x20u);
    swift_arrayDestroy();
  }

  v14 = sub_100607A38();
  if (v14)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1003082D4(v14);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_100609AA4(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1001F1234(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for MultipleGiftActionItem()
{
  result = qword_100AEDA88;
  if (!qword_100AEDA88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100609B80()
{
  sub_1001FEBC8(319, &qword_100AD4AF0);
  if (v0 <= 0x3F)
  {
    sub_1001FEBC8(319, &unk_100AE9C00);
    if (v1 <= 0x3F)
    {
      sub_1001FEB70();
      if (v2 <= 0x3F)
      {
        sub_1001FEBC8(319, &qword_100AE9C10);
        if (v3 <= 0x3F)
        {
          sub_1001FEBC8(319, &unk_100ADF848);
          if (v4 <= 0x3F)
          {
            sub_100797144();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_100609CEC()
{
  v1 = sub_100799424();
  v49 = *(v1 - 8);
  __chkstk_darwin(v1);
  v48 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_1001F1160(&qword_100AE2FD8);
  __chkstk_darwin(v60);
  v58 = &v47 - v3;
  v4 = sub_1001F1160(&qword_100AE2FE0);
  __chkstk_darwin(v4 - 8);
  v59 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v61 = &v47 - v7;
  __chkstk_darwin(v8);
  v57 = &v47 - v9;
  v10 = sub_1007971A4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v47 - v15;
  v17 = v0[8];
  v62 = v0;
  sub_10000E3E8(v0 + 5, v17);
  sub_100797784();
  v18 = *(v11 + 104);
  v18(v13, enum case for ContextActionSource.unifiedProductItem(_:), v10);
  v19 = sub_100797184();
  v20 = *(v11 + 8);
  v20(v13, v10);
  v20(v16, v10);
  if ((v19 & 1) == 0)
  {
    v21 = v62[8];
    v56 = v62[9];
    sub_10000E3E8(v62 + 5, v21);
    sub_100797784();
    v18(v13, enum case for ContextActionSource.productPage(_:), v10);
    v22 = sub_100797184();
    v20(v13, v10);
    v20(v16, v10);
    if ((v22 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  sub_10000E3E8(v62 + 5, v62[8]);
  sub_1007977A4();
  if (v66 == 1)
  {
    sub_1001FF70C(&v64);
LABEL_27:
    v46 = 0;
    return v46 & 1;
  }

  sub_1000077C0(&v64, v67);
  sub_1000077C0(v67, v68);
  sub_10000E3E8(v68, v69);
  v23 = *(sub_1007975C4() + 16);

  if (v23 < 2)
  {
    sub_1000074E0(v68);
    goto LABEL_27;
  }

  sub_10000E3E8(v68, v69);
  result = sub_1007975C4();
  v56 = *(result + 16);
  if (!v56)
  {
    v50 = _swiftEmptyArrayStorage;
LABEL_30:

    *&v64 = v50;
    sub_1001F1160(&qword_100AEDAD0);
    sub_100005920(&qword_100AEDAD8, &qword_100AEDAD0);
    v46 = sub_1007A28A4();

    sub_1000074E0(v68);
    return v46 & 1;
  }

  v25 = 0;
  v26 = result + 32;
  v27 = (v49 + 7);
  v54 = enum case for MAsset.OfferType.buy(_:);
  v53 = (v49 + 13);
  v28 = (v49 + 6);
  v47 = (v49 + 4);
  v50 = _swiftEmptyArrayStorage;
  ++v49;
  v29 = v57;
  v55 = result;
  v52 = v28;
  v51 = v27;
  v30 = v58;
  while (v25 < *(result + 16))
  {
    v62 = v26;
    sub_100009864(v26, &v64);
    sub_10000E3E8(&v64, v65);
    v31 = sub_100798EC4();
    if (v31)
    {
      v32 = v31;
      sub_100799434();
    }

    else
    {
      (*v27)(v29, 1, 1, v1);
    }

    v33 = v61;
    (*v53)(v61, v54, v1);
    (*v27)(v33, 0, 1, v1);
    v34 = *(v60 + 48);
    sub_1000077D8(v29, v30, &qword_100AE2FE0);
    sub_1000077D8(v33, v30 + v34, &qword_100AE2FE0);
    v35 = v1;
    v36 = *v52;
    if ((*v52)(v30, 1, v35) == 1)
    {
      sub_100007840(v33, &qword_100AE2FE0);
      sub_100007840(v29, &qword_100AE2FE0);
      v37 = v36(v30 + v34, 1, v35);
      v27 = v51;
      v1 = v35;
      if (v37 == 1)
      {
        sub_100007840(v30, &qword_100AE2FE0);
LABEL_21:
        sub_1000077C0(&v64, v67);
        v42 = v50;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v63 = v42;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1003BD600(0, v42[2] + 1, 1);
          v42 = v63;
        }

        v45 = v42[2];
        v44 = v42[3];
        if (v45 >= v44 >> 1)
        {
          sub_1003BD600((v44 > 1), v45 + 1, 1);
          v42 = v63;
        }

        v42[2] = v45 + 1;
        v50 = v42;
        sub_1000077C0(v67, &v42[5 * v45 + 4]);
        v29 = v57;
        goto LABEL_11;
      }

      goto LABEL_9;
    }

    v38 = v59;
    sub_1000077D8(v30, v59, &qword_100AE2FE0);
    if (v36(v30 + v34, 1, v35) == 1)
    {
      sub_100007840(v61, &qword_100AE2FE0);
      v29 = v57;
      sub_100007840(v57, &qword_100AE2FE0);
      (*v49)(v38, v35);
      v27 = v51;
      v1 = v35;
LABEL_9:
      sub_100007840(v30, &qword_100AE2FD8);
      goto LABEL_10;
    }

    v39 = v48;
    (*v47)(v48, v30 + v34, v35);
    sub_10060B824(&qword_100AE2FE8, &type metadata accessor for MAsset.OfferType);
    v40 = sub_1007A2124();
    v41 = *v49;
    (*v49)(v39, v35);
    sub_100007840(v61, &qword_100AE2FE0);
    v29 = v57;
    sub_100007840(v57, &qword_100AE2FE0);
    v41(v59, v35);
    sub_100007840(v30, &qword_100AE2FE0);
    v27 = v51;
    v1 = v35;
    if (v40)
    {
      goto LABEL_21;
    }

LABEL_10:
    sub_1000074E0(&v64);
LABEL_11:
    ++v25;
    v26 = (v62 + 5);
    result = v55;
    if (v56 == v25)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
  return result;
}

void *sub_10060A66C()
{
  sub_10000E3E8(v0 + 5, v0[8]);
  sub_1007977A4();
  if (v41)
  {
    sub_1001FF70C(&v39);
    return _swiftEmptyArrayStorage;
  }

  v36 = v0;
  sub_1000077C0(&v39, v42);
  sub_1000077C0(v42, v43);
  *&v42[0] = _swiftEmptyArrayStorage;
  v2 = _swiftEmptyDictionarySingleton;
  v38 = _swiftEmptyDictionarySingleton;
  sub_10000E3E8(v43, v44);
  v3 = sub_1007975C4();
  v4 = v3;
  v5 = *(v3 + 16);
  if (!v5)
  {
LABEL_25:

    sub_10000E3E8(v43, v44);
    v30 = sub_1007975C4();
    v31 = v30;
    v32 = *(v30 + 16);
    if (v32)
    {
      v33 = 0;
      v34 = v30 + 32;
      while (v33 < *(v31 + 16))
      {
        sub_100009864(v34, &v39);
        sub_10060A9E0(&v39, v36, v43, &v38, v42);
        ++v33;
        sub_1000074E0(&v39);
        v34 += 40;
        if (v32 == v33)
        {
          goto LABEL_29;
        }
      }

      goto LABEL_32;
    }

LABEL_29:

    v1 = *&v42[0];
    sub_1000074E0(v43);
    return v1;
  }

  v6 = 0;
  v7 = v3 + 32;
  while (v6 < *(v4 + 16))
  {
    sub_100009864(v7, &v39);
    sub_10000E3E8(&v39, v40);
    v9 = sub_1007994F4();
    if (!v10)
    {
      goto LABEL_7;
    }

    v11 = v9;
    v12 = v10;
    v13 = v2[2];
    if (v13)
    {
      v14 = sub_10000E53C(v9, v10);
      if (v15)
      {
        v13 = *(v2[7] + 8 * v14);
      }

      else
      {
        v13 = 0;
      }
    }

    v16 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      goto LABEL_33;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = v38;
    v18 = sub_10000E53C(v11, v12);
    v20 = v38[2];
    v21 = (v19 & 1) == 0;
    v22 = __OFADD__(v20, v21);
    v23 = v20 + v21;
    if (v22)
    {
      goto LABEL_34;
    }

    v24 = v19;
    if (v38[3] < v23)
    {
      sub_1003D4D6C(v23, isUniquelyReferenced_nonNull_native);
      v18 = sub_10000E53C(v11, v12);
      if ((v24 & 1) != (v25 & 1))
      {
        goto LABEL_36;
      }

LABEL_20:
      if ((v24 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_5;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_20;
    }

    v29 = v18;
    sub_1002F15B4();
    v18 = v29;
    if ((v24 & 1) == 0)
    {
LABEL_21:
      v2 = v38;
      v38[(v18 >> 6) + 8] |= 1 << v18;
      v26 = (v37[6] + 16 * v18);
      *v26 = v11;
      v26[1] = v12;
      *(v37[7] + 8 * v18) = v16;
      v27 = v37[2];
      v22 = __OFADD__(v27, 1);
      v28 = v27 + 1;
      if (v22)
      {
        goto LABEL_35;
      }

      v37[2] = v28;
      goto LABEL_6;
    }

LABEL_5:
    v8 = v18;

    v2 = v38;
    *(v38[7] + 8 * v8) = v16;
LABEL_6:
    v38 = v2;
LABEL_7:
    ++v6;
    sub_1000074E0(&v39);
    v7 += 40;
    if (v5 == v6)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);

  sub_1000074E0(&v39);
  __break(1u);
LABEL_36:
  result = sub_1007A3B24();
  __break(1u);
  return result;
}

void sub_10060A9E0(void *a1, void *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v57 = a5;
  v58 = a3;
  v59 = a4;
  v55 = type metadata accessor for GiftActionItem();
  __chkstk_darwin(v55);
  v56 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v64 = &v54 - v9;
  v10 = sub_100797474();
  v62 = *(v10 - 8);
  v63 = v10;
  __chkstk_darwin(v10);
  v61 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v60 = &v54 - v13;
  v14 = sub_1007971A4();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009864(a1, &v65);
  v18 = objc_allocWithZone(sub_100797424());
  sub_100797414();
  sub_10000E3E8(a2 + 5, a2[8]);
  sub_100797714();
  v19 = objc_allocWithZone(sub_100797454());
  v20 = sub_100797434();
  (*(v15 + 104))(v17, enum case for ContextActionSource.sendGiftActionItem(_:), v14);
  v21 = sub_100797194();
  v23 = v22;
  (*(v15 + 8))(v17, v14);
  v66 = &type metadata for String;
  *&v65 = v21;
  *(&v65 + 1) = v23;
  sub_100797384();
  sub_10000E3E8(v58, v58[3]);
  sub_100797674();
  sub_100797334();
  v24 = a2[8];
  v58 = a2;
  sub_10000E3E8(a2 + 5, v24);
  sub_100797734();
  sub_100797354();
  sub_10000E3E8(a1, a1[3]);
  v25 = sub_1007994F4();
  if (v26)
  {
    v27 = v26;
  }

  else
  {
    v27 = 0xE000000000000000;
  }

  if (*(*v59 + 16))
  {
    if (!v26)
    {
      v25 = 0;
    }

    sub_10000E53C(v25, v27);
  }

  else
  {
  }

  v28 = v64;
  sub_1007973D4();
  v29 = objc_opt_self();
  v30 = v20;
  v31 = [v29 defaultManager];
  v32 = v60;
  sub_100797464();
  v33 = type metadata accessor for ContextActionData();
  v34 = objc_allocWithZone(v33);
  v36 = v61;
  v35 = v62;
  v37 = v63;
  (*(v62 + 16))(v61, v32, v63);
  v64 = v30;
  v38 = sub_1003DC344(v30, v31, v36, v34);
  (*(v35 + 8))(v32, v37);
  if (v38)
  {
    *(v28 + 8) = v33;
    *(v28 + 9) = sub_10060B824(&qword_100ADF908, type metadata accessor for ContextActionData);
    *(v28 + 5) = v38;
    v39 = v58;
    sub_100009864(v58, v28);
    v40 = v39[10];
    sub_100009864((v39 + 11), (v28 + 88));
    v41 = v55;
    v42 = *(v55 + 32);
    v43 = enum case for ContextActionType.gift(_:);
    v44 = sub_100797144();
    (*(*(v44 - 8) + 104))(&v28[v42], v43, v44);
    *(v28 + 10) = v40;
    v28[*(v41 + 36)] = 1;
    v45 = v56;
    sub_10060B764(v28, v56);
    v46 = v57;
    v47 = *v57;
    v48 = v40;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v46 = v47;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v47 = sub_10066B4F4(0, v47[2] + 1, 1, v47);
      *v46 = v47;
    }

    v51 = v47[2];
    v50 = v47[3];
    if (v51 >= v50 >> 1)
    {
      *v46 = sub_10066B4F4((v50 > 1), v51 + 1, 1, v47);
    }

    sub_10060B7C8(v28);
    v66 = v41;
    v67 = sub_10060B824(&qword_100AD1EE8, type metadata accessor for GiftActionItem);
    v52 = sub_1002256EC(&v65);
    sub_10060B764(v45, v52);
    v53 = *v46;
    *(v53 + 16) = v51 + 1;
    sub_1000077C0(&v65, v53 + 40 * v51 + 32);
    sub_10060B7C8(v45);
  }

  else
  {
  }
}

uint64_t sub_10060B008()
{
  sub_10060A66C();
  swift_getKeyPath();
  sub_1001F1160(&qword_100ADF8F8);
  sub_100005920(&qword_100ADF900, &qword_100ADF8F8);
  return sub_10079E264();
}

uint64_t sub_10060B0F0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10000E3E8(a1, a1[3]);
  sub_100796FD4();
  v3 = sub_10000E3E8(v9, v9[3]);
  v4 = __chkstk_darwin(v3);
  (*(v6 + 16))(&v9[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  *a2 = sub_10079E1B4();
  return sub_1000074E0(v9);
}

uint64_t sub_10060B1F4()
{
  sub_1001F1160(&qword_100ADF8E8);
  sub_1003A202C();
  return sub_10079DFC4();
}

uint64_t sub_10060B290@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for MultipleGiftActionItem();
  sub_10060B824(&qword_100AD1EF0, type metadata accessor for MultipleGiftActionItem);
  sub_100797094();
  sub_100206ECC();
  result = sub_10079D5D4();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_10060B33C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MultipleGiftActionItem();
  sub_10060B824(&qword_100AD1EF0, type metadata accessor for MultipleGiftActionItem);
  result = sub_100797084();
  if (result)
  {
    result = sub_10079DF04();
  }

  *a1 = result;
  return result;
}

uint64_t sub_10060B3C8@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_1001F1160(&qword_100ADF890);
  a1[3] = v3;
  a1[4] = sub_1003A1E4C();
  v4 = sub_1002256EC(a1);
  sub_1001F1160(&qword_100ADF8C0);
  sub_1001F1160(&qword_100ADF8C8);
  sub_100005920(&qword_100ADF8D0, &qword_100ADF8C0);
  sub_1003A1F30();
  sub_10079D534();
  KeyPath = swift_getKeyPath();
  sub_100009864(v1 + 128, v8);
  v6 = (v4 + *(v3 + 36));
  sub_1000077D8(v8, (v6 + 1), &qword_100ADF8E0);
  *v6 = KeyPath;
  return sub_100007840(v8, &qword_100ADF8E0);
}

uint64_t sub_10060B54C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  sub_100009864(a1, (a6 + 5));
  sub_100009864(a2, a6);
  sub_100009864(a4, (a6 + 11));
  a6[19] = sub_1007978D4();
  a6[20] = sub_10060B824(&qword_100ADF888, &type metadata accessor for ContextActionItemCoverProvider);
  sub_1002256EC(a6 + 16);
  sub_1007978C4();
  sub_1000074E0(a4);
  sub_1000074E0(a2);
  sub_1000074E0(a1);
  v12 = *(a5 + 36);
  v13 = enum case for ContextActionType.multipleGift(_:);
  v14 = sub_100797144();
  result = (*(*(v14 - 8) + 104))(a6 + v12, v13, v14);
  a6[10] = a3;
  return result;
}

uint64_t sub_10060B66C@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *(a6 + 36);
  v14 = enum case for ContextActionType.multipleGift(_:);
  v15 = sub_100797144();
  (*(*(v15 - 8) + 104))(a7 + v13, v14, v15);
  sub_1000077C0(a1, a7 + 40);
  sub_1000077C0(a2, a7);
  *(a7 + 80) = a3;
  sub_1000077C0(a4, a7 + 88);

  return sub_1000077C0(a5, a7 + 128);
}

uint64_t sub_10060B764(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GiftActionItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10060B7C8(uint64_t a1)
{
  v2 = type metadata accessor for GiftActionItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10060B824(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10060B86C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1007A1C54();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1007A1CA4();
  v10 = *(v25 - 8);
  v11 = __chkstk_darwin(v25);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 && (v14 = [a1 image]) != 0 && (v15 = v14, v16 = objc_msgSend(v14, "CGImage"), v15, v16))
  {
    sub_1007A29A4();
    if (qword_100AD1370 != -1)
    {
      swift_once();
    }

    sub_10079AB44();
    sub_100017E74();
    v17 = sub_1007A2D74();
    v18 = swift_allocObject();
    v18[2] = a2;
    v18[3] = a3;
    v18[4] = v16;
    v30 = sub_10060BFB4;
    v31 = v18;
    aBlock = _NSConcreteStackBlock;
    v27 = 1107296256;
    v28 = sub_1003323D0;
    v29 = &unk_100A272D8;
    v19 = _Block_copy(&aBlock);

    v20 = v16;

    sub_1007A1C74();
    aBlock = _swiftEmptyArrayStorage;
    sub_100265BDC();
    sub_1001F1160(&unk_100AD7CA0);
    sub_100234698();
    sub_1007A3594();
    sub_1007A2D94();
    _Block_release(v19);
  }

  else
  {
    sub_1007A29B4();
    if (qword_100AD1370 != -1)
    {
      swift_once();
    }

    sub_10079AB44();
    sub_100017E74();
    v17 = sub_1007A2D74();
    v21 = swift_allocObject();
    *(v21 + 16) = a2;
    *(v21 + 24) = a3;
    v30 = sub_10060BFAC;
    v31 = v21;
    aBlock = _NSConcreteStackBlock;
    v27 = 1107296256;
    v28 = sub_1003323D0;
    v29 = &unk_100A27288;
    v22 = _Block_copy(&aBlock);

    sub_1007A1C74();
    aBlock = _swiftEmptyArrayStorage;
    sub_100265BDC();
    sub_1001F1160(&unk_100AD7CA0);
    sub_100234698();
    sub_1007A3594();
    sub_1007A2D94();
    _Block_release(v22);
  }

  (*(v7 + 8))(v9, v6);
  return (*(v10 + 8))(v13, v25);
}

uint64_t sub_10060BD44(void (*a1)(uint64_t, uint64_t))
{
  sub_10060BFE8();
  v2 = swift_allocError();
  a1(v2, 1);
}

void sub_10060BDD8(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = objc_allocWithZone(BICDescribedImage);
  v11 = sub_1007A2214();
  v12 = [v10 initWithIdentifier:v11];

  [v12 setImageSize:{a1, a2}];
  [v12 setProcessingOptions:2];
  [v12 setPriority:5];
  [v12 setRequestOptions:2];
  v13 = [objc_opt_self() defaultCacheManager];
  v14 = swift_allocObject();
  *(v14 + 16) = a5;
  *(v14 + 24) = a6;
  v16[4] = sub_10060BF9C;
  v16[5] = v14;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_100569BDC;
  v16[3] = &unk_100A27238;
  v15 = _Block_copy(v16);

  [v13 fetchCGImageFor:v12 forRequest:v12 completion:v15];
  _Block_release(v15);
}

unint64_t sub_10060BFE8()
{
  result = qword_100AEDB80;
  if (!qword_100AEDB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEDB80);
  }

  return result;
}

unint64_t sub_10060C050()
{
  result = qword_100AEDB88;
  if (!qword_100AEDB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEDB88);
  }

  return result;
}

uint64_t sub_10060C0A8()
{
  v0 = sub_1007967F4();
  v25 = *(v0 - 8);
  v26 = v0;
  __chkstk_darwin(v0);
  v2 = (&v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = sub_100796814();
  v27 = *(v3 - 8);
  __chkstk_darwin(v3);
  v24 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100796CF4();
  v5 = *(v23 - 8);
  __chkstk_darwin(v23);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  v11 = sub_1007A21D4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v21 - v16;
  v22 = v3;
  sub_100009A38(v3, qword_100B236B0);
  v21 = sub_100008B98(v3, qword_100B236B0);
  sub_1007A2154();
  sub_100796C94();
  (*(v12 + 16))(v14, v17, v11);
  v18 = v23;
  (*(v5 + 16))(v7, v10, v23);
  *v2 = type metadata accessor for BundleFinder();
  (*(v25 + 104))(v2, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v26);
  v19 = v24;
  sub_100796834();
  (*(v5 + 8))(v10, v18);
  (*(v12 + 8))(v17, v11);
  return (*(v27 + 32))(v21, v19, v22);
}

double sub_10060C44C@<D0>(_OWORD *a1@<X8>)
{
  sub_100795DF4();
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_10060C498(_OWORD *a1)
{
  v1 = a1[3];
  v2 = a1[1];
  v10 = a1[2];
  v11 = v1;
  v3 = a1[3];
  v4 = a1[5];
  v12 = a1[4];
  v13 = v4;
  v5 = a1[1];
  v9[0] = *a1;
  v9[1] = v5;
  v8[8] = v10;
  v8[9] = v3;
  v6 = a1[5];
  v8[10] = v12;
  v8[11] = v6;
  v8[6] = v9[0];
  v8[7] = v2;
  sub_1002A40C0(v9, v8);
  sub_100795E04();
  return sub_1002A411C(v9);
}

void (*sub_10060C510(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_100795DE4();
  return sub_1001FD958;
}

unint64_t sub_10060C584()
{
  result = qword_100AEDB90;
  if (!qword_100AEDB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEDB90);
  }

  return result;
}

uint64_t sub_10060C5D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10060D5B4();
  v5 = sub_100214E9C();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_10060C644()
{
  result = qword_100AEDB98;
  if (!qword_100AEDB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEDB98);
  }

  return result;
}

unint64_t sub_10060C69C()
{
  result = qword_100AEDBA0;
  if (!qword_100AEDBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEDBA0);
  }

  return result;
}

unint64_t sub_10060C6F4()
{
  result = qword_100AEDBA8;
  if (!qword_100AEDBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEDBA8);
  }

  return result;
}

uint64_t sub_10060C764@<X0>(uint64_t a1@<X8>)
{
  if (qword_100AD1940 != -1)
  {
    swift_once();
  }

  v2 = sub_100796814();
  v3 = sub_100008B98(v2, qword_100B236B0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10060C80C(uint64_t a1)
{
  v2 = sub_10060D5B4();

  return static OpenIntent.openAppWhenRun.getter(a1, v2);
}

uint64_t sub_10060C848()
{
  v0 = sub_1001F1160(&qword_100AEDBD8);
  __chkstk_darwin(v0 - 8);
  v1 = sub_1001F1160(&qword_100AEDBE0);
  __chkstk_darwin(v1);
  sub_1007961D4();
  v3._countAndFlagsBits = 0x206E65704FLL;
  v3._object = 0xE500000000000000;
  sub_1007961C4(v3);
  swift_getKeyPath();
  sub_1001F1160(&qword_100AEDBE8);
  sub_1007961B4();

  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  sub_1007961C4(v4);
  sub_1007961F4();
  return sub_1007961A4();
}

uint64_t sub_10060C9E8(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_10060D5B4();
  v6 = sub_10060D608();
  v7 = sub_100214E9C();
  *v4 = v2;
  v4[1] = sub_10060CAB4;

  return URLRepresentableIntent<>.perform()(a2, v5, v6, v7);
}

uint64_t sub_10060CAB4()
{
  v2 = *v1;

  if (v0)
  {
    v4 = *(v2 + 8);

    return v4();
  }

  return result;
}

uint64_t sub_10060CBBC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10060CCEC();
  *a1 = result;
  return result;
}

uint64_t sub_10060CBE4(uint64_t a1)
{
  v2 = sub_10060C584();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10060CC24()
{
  result = qword_100AEDBB0;
  if (!qword_100AEDBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEDBB0);
  }

  return result;
}

unint64_t sub_10060CC88()
{
  result = qword_100AEDBB8;
  if (!qword_100AEDBB8)
  {
    sub_1001F1234(&qword_100AEDBC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEDBB8);
  }

  return result;
}

uint64_t sub_10060CCEC()
{
  v52 = sub_100796274();
  v51 = *(v52 - 8);
  __chkstk_darwin(v52);
  v50 = v39 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = sub_1001F1160(&qword_100AD5CB0);
  __chkstk_darwin(v1 - 8);
  v49 = v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v48 = v39 - v4;
  v5 = sub_1001F1160(&qword_100AD5CC0);
  __chkstk_darwin(v5 - 8);
  v63 = v39 - v6;
  v62 = sub_1007967F4();
  v64 = *(v62 - 8);
  __chkstk_darwin(v62);
  v8 = (v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = sub_100796CF4();
  v9 = *(v42 - 8);
  __chkstk_darwin(v42);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v39 - v13;
  v15 = sub_1007A21D4();
  v53 = v15;
  v55 = *(v15 - 8);
  v16 = v55;
  __chkstk_darwin(v15);
  v18 = v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v39 - v20;
  v44 = sub_100796814();
  v43 = *(v44 - 8);
  __chkstk_darwin(v44);
  v45 = v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v46 = v39 - v24;
  v47 = sub_1001F1160(&qword_100ADC580);
  sub_1007A2154();
  sub_100796C94();
  v25 = *(v16 + 16);
  v60 = v16 + 16;
  v61 = v25;
  v25(v18, v21, v15);
  v26 = *(v9 + 16);
  v56 = v9 + 16;
  v57 = v26;
  v54 = v11;
  v27 = v42;
  v26(v11, v14, v42);
  v59 = type metadata accessor for BundleFinder();
  *v8 = v59;
  v58 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v40 = *(v64 + 104);
  v64 += 104;
  v28 = v62;
  v40(v8);
  sub_100796834();
  v29 = *(v9 + 8);
  v39[1] = v9 + 8;
  v29(v14, v27);
  v41 = v29;
  v55 = *(v55 + 8);
  v30 = v53;
  (v55)(v21, v53);
  sub_1007A2154();
  sub_100796C94();
  v61(v18, v21, v30);
  v57(v54, v14, v27);
  *v8 = v59;
  v31 = v28;
  v32 = v40;
  (v40)(v8, v58, v31);
  v33 = v63;
  sub_100796834();
  v29(v14, v27);
  v34 = v53;
  (v55)(v21, v53);
  (*(v43 + 56))(v33, 0, 1, v44);
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  sub_1007A2154();
  sub_100796C94();
  v61(v18, v21, v34);
  v57(v54, v14, v27);
  *v8 = v59;
  (v32)(v8, v58, v62);
  sub_100796834();
  v41(v14, v27);
  (v55)(v21, v34);
  v35 = v48;
  sub_100795CF4();
  v36 = sub_100795CE4();
  v37 = *(*(v36 - 8) + 56);
  v37(v35, 0, 1, v36);
  v37(v49, 1, 1, v36);
  (*(v51 + 104))(v50, enum case for InputConnectionBehavior.default(_:), v52);
  sub_10020E834();
  return sub_100795E74();
}

unint64_t sub_10060D5B4()
{
  result = qword_100AEDBC8;
  if (!qword_100AEDBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEDBC8);
  }

  return result;
}

unint64_t sub_10060D608()
{
  result = qword_100AEDBD0;
  if (!qword_100AEDBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEDBD0);
  }

  return result;
}

id sub_10060D7D4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR___BKGoalPickerViewController_onFinalized;
  *&v4[OBJC_IVAR___BKGoalPickerViewController_onFinalized] = 0;
  *&v4[OBJC_IVAR___BKGoalPickerViewController_separatorView] = 0;
  v10 = sub_100798654();
  v11 = (v10 == 2) | v10 & 1;
  v4[OBJC_IVAR___BKGoalPickerViewController_goalType] = v11;
  *&v4[OBJC_IVAR___BKGoalPickerViewController_eventHandler] = a3;
  swift_unknownObjectRetain();
  sub_10060FA64(v11, a2, v25);
  v12 = &v4[OBJC_IVAR___BKGoalPickerViewController_model];
  v13 = v25[1];
  *v12 = v25[0];
  *(v12 + 1) = v13;
  *(v12 + 2) = v26;
  v14 = *(&v26 + 1);
  *(v12 + 6) = v27;
  *&v4[OBJC_IVAR___BKGoalPickerViewController_selectedRow] = v14;
  v15 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR___BKGoalPickerViewController_pickerRowTitleLabel] = v15;
  *&v4[OBJC_IVAR___BKGoalPickerViewController_sourceViewHorizontalSizeClass] = 0;
  v16 = *&v4[v9];
  *&v4[v9] = a4;
  v17 = a4;

  v18 = sub_1007A2214();
  v24.receiver = v4;
  v24.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v24, "initWithNibName:bundle:", v18, 0);

  v20 = v19;
  [v20 setTransitioningDelegate:v20];
  v21 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v20 action:"backgroundTapped:"];
  [v21 setDelegate:v20];
  result = [v20 view];
  if (result)
  {
    v23 = result;
    [result addGestureRecognizer:v21];

    sub_10000A7C4(0, &qword_100AE15B0);
    sub_1007A2E04();
    sub_1007A2C44();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    return v20;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10060DAAC(uint64_t a1, uint64_t a2, uint64_t a3, objc_class *a4)
{
  v8 = type metadata accessor for GoalPickerViewController();
  v9 = objc_allocWithZone(v8);
  swift_unknownObjectRetain();
  v10 = sub_10060D7D4(a1, a2, a3, 0);
  v11 = [objc_opt_self() sharedInstance];
  sub_1001F1160(&qword_100AD7FB0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10080B690;
  *(v12 + 56) = v8;
  *(v12 + 32) = v10;
  v13 = v10;
  v19._countAndFlagsBits = 0x80000001008E17F0;
  v14.super.isa = a4;
  v18.value._rawValue = v12;
  v18.is_nil = 78;
  v19._object = 87;
  sub_1007A32F4(v14, v18, v19, v15);
}

void sub_10060DCD4()
{
  ObjectType = swift_getObjectType();
  v2 = sub_100796CF4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v83 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v84 = &v74 - v6;
  v85 = sub_1007A21D4();
  v7 = *(v85 - 8);
  __chkstk_darwin(v85);
  v82 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  v12 = &v74 - v11;
  v87.receiver = v0;
  v87.super_class = ObjectType;
  objc_msgSendSuper2(&v87, "viewDidLoad", v10);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_19;
  }

  v14 = Strong;
  v15 = objc_opt_self();
  v16 = [v15 systemBackgroundColor];
  [v14 setBackgroundColor:v16];

  v17 = OBJC_IVAR___BKGoalPickerViewController_titleView;
  v18 = swift_unknownObjectWeakLoadStrong();
  if (!v18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v19 = v18;
  v20 = [v15 secondarySystemBackgroundColor];
  [v19 setBackgroundColor:v20];

  v21 = OBJC_IVAR___BKGoalPickerViewController_doneButton;
  v22 = swift_unknownObjectWeakLoadStrong();
  if (!v22)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v23 = v22;
  v24 = [v15 labelColor];
  [v23 setTitleColor:v24 forState:0];

  v25 = swift_unknownObjectWeakLoadStrong();
  if (!v25)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v26 = v25;
  [v25 setDelegate:v0];

  v27 = swift_unknownObjectWeakLoadStrong();
  if (!v27)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v28 = v27;
  v81 = v3;
  [v27 setDataSource:v0];

  v29 = swift_unknownObjectWeakLoadStrong();
  if (!v29)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v30 = v29;
  [v29 selectRow:*&v0[OBJC_IVAR___BKGoalPickerViewController_model + 40] inComponent:*&v0[OBJC_IVAR___BKGoalPickerViewController_model + 48] animated:0];

  sub_10061051C();
  v86 = v31;
  v32 = [objc_opt_self() defaultFontSpec];
  if (!v32)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v33 = v32;
  v34 = [v32 fontSpecWithDesign:UIFontDescriptorSystemDesignSerif];
  if (!v34)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v35 = v34;

  v36 = [v35 fontSpecWithPointSize:18.0];
  if (!v36)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v37 = v36;
  v80 = v2;

  v38 = [v37 fontSpecWithWeight:UIFontWeightSemibold];
  if (!v38)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v39 = v38;

  v40 = v39;
  v41 = [v0 traitCollection];
  v42 = [v40 mappedSpecIfNeededWithTraitCollection:v41];

  if (!v42)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v43 = [v42 font];
  if (!v43)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v44 = v43;
  v77 = v42;
  v79 = v21;
  v78 = v17;
  v76 = v15;
  v45 = swift_unknownObjectWeakLoadStrong();
  if (!v45)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v46 = v45;
  sub_1001F1160(qword_100AEFD60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10080B690;
  *(inited + 32) = NSFontAttributeName;
  *(inited + 64) = sub_10000A7C4(0, &unk_100AEB3C0);
  *(inited + 40) = v44;
  v48 = NSFontAttributeName;
  v75 = v44;
  sub_1001ED420(inited);
  swift_setDeallocating();
  sub_10039FAF4(inited + 32);
  v49 = objc_allocWithZone(NSAttributedString);
  v50 = sub_1007A2214();
  type metadata accessor for Key(0);
  sub_100610874(&qword_100AEDDB0, type metadata accessor for Key);
  isa = sub_1007A2024().super.isa;

  v52 = [v49 initWithString:v50 attributes:isa];

  [v46 setAttributedText:v52];
  sub_1007A2154();
  v53 = v84;
  sub_100796C94();
  v54 = v85;
  (*(v7 + 16))(v82, v12, v85);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v56 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v57 = v80;
  v58 = v81;
  (*(v81 + 16))(v83, v53, v80);
  sub_1007A22D4();
  (*(v58 + 8))(v53, v57);
  (*(v7 + 8))(v12, v54);
  v59 = swift_unknownObjectWeakLoadStrong();
  if (!v59)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v60 = v59;
  v61 = sub_1007A2214();
  [v60 setTitle:v61 forState:0];

  v62 = swift_unknownObjectWeakLoadStrong();
  v63 = v77;
  if (!v62)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v64 = v62;
  [v62 frame];
  v66 = v65;
  v68 = v67;

  v69 = [objc_allocWithZone(UIView) init];
  [v69 setFrame:{0.0, v68 + -0.5, v66, 0.5}];
  v70 = [v76 separatorColor];
  [v69 setBackgroundColor:v70];

  [v69 setHidden:1];
  v71 = swift_unknownObjectWeakLoadStrong();
  if (v71)
  {
    v72 = v71;

    [v72 addSubview:v69];

    v73 = *&v0[OBJC_IVAR___BKGoalPickerViewController_separatorView];
    *&v0[OBJC_IVAR___BKGoalPickerViewController_separatorView] = v69;

    return;
  }

LABEL_33:
  __break(1u);
}

void sub_10060E5C4()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceStyle];

  v3 = objc_opt_self();
  if (v2 == 1)
  {
    v4 = [v3 blackColor];
    v9 = [v4 colorWithAlphaComponent:0.02];
  }

  else
  {
    v9 = [v3 secondarySystemBackgroundColor];
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    [Strong setBackgroundColor:v9];

    v7 = *&v0[OBJC_IVAR___BKGoalPickerViewController_separatorView];
    if (v7)
    {
      v8 = v7;
      [v8 setHidden:v2 != 1];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10060E764(char a1)
{
  v7.receiver = v1;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, "viewWillAppear:", a1 & 1);
  if (*&v1[OBJC_IVAR___BKGoalPickerViewController_sourceViewHorizontalSizeClass] == 2)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      [Strong setHidden:1];

      v5 = swift_unknownObjectWeakLoadStrong();
      if (v5)
      {
        v6 = v5;
        [v5 setUserInteractionEnabled:0];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_10060E874()
{
  v28.receiver = v0;
  v28.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v28, "viewWillLayoutSubviews");
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_10;
  }

  v2 = v1;
  [v1 frame];
  v4 = v3;

  v5 = [v0 view];
  if (!v5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = v5;
  [v5 frame];
  v8 = v7;

  v9 = [objc_opt_self() sharedApplication];
  v10 = [v9 userInterfaceLayoutDirection];

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = Strong;
  v13 = v4 * 0.5 + -37.5;
  if (v10 == 1)
  {
    v14 = v8 * 0.5 - v13;
  }

  else
  {
    v14 = v8 * 0.5;
  }

  [Strong frame];
  v16 = v15;

  v17 = OBJC_IVAR___BKGoalPickerViewController_pickerRowTitleLabel;
  [*&v0[OBJC_IVAR___BKGoalPickerViewController_pickerRowTitleLabel] setFrame:{v14 + 37.5, v16 * 0.5 + -12.0, v13, 24.0}];
  v18 = *&v0[v17];
  v19 = objc_opt_self();
  v20 = v18;
  v21 = [v19 boldSystemFontOfSize:15.0];
  [v20 setFont:v21];

  v22 = *&v0[v17];
  v23 = objc_opt_self();
  v24 = v22;
  v25 = [v23 clearColor];
  [v24 setBackgroundColor:v25];

  [*&v0[v17] setTextAlignment:0];
  v26 = swift_unknownObjectWeakLoadStrong();
  if (v26)
  {
    v27 = v26;
    [v26 addSubview:*&v0[v17]];

    sub_10060EAF4();
    return;
  }

LABEL_12:
  __break(1u);
}