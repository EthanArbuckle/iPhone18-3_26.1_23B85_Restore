uint64_t sub_10027DE30()
{
  v1 = v0[109];
  v2 = v0[108];
  v3 = v0[66];

  PresentationSource.presentDownloadPinsAlertIfNecessary(catalogID:metricsReportingContext:)(v2, v1, v3);

  return _swift_task_switch(sub_10027DEC8, 0, 0);
}

uint64_t sub_10027DEC8()
{
  (*(v0[101] + 8))(v0[103], v0[100]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10027E030()
{
  v1 = v0[65];
  v2 = sub_100572EF8();
  v0[115] = v2;
  v3 = swift_task_alloc();
  v0[116] = v3;
  *(v3 + 16) = 7;
  *(v3 + 24) = v1;
  *(v3 + 32) = 0;
  v4 = swift_task_alloc();
  v0[117] = v4;
  *v4 = v0;
  v4[1] = sub_10027E144;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 122, v2, &protocol witness table for MainActor, 0xD00000000000003DLL, 0x80000001005ACD10, sub_1001093B0, v3, &type metadata for Bool);
}

uint64_t sub_10027E144()
{
  v1 = *v0;

  v2 = *(v1 + 912);
  v3 = *(v1 + 904);

  return _swift_task_switch(sub_10027E2A4, v3, v2);
}

uint64_t sub_10027E2A4()
{

  return _swift_task_switch(sub_10027E30C, 0, 0);
}

uint64_t sub_10027E30C()
{
  (*(v0[85] + 8))(v0[87], v0[84]);
  (*(v0[101] + 8))(v0[103], v0[100]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10027E490()
{

  sub_1001CAB6C(0, v0 + 280);

  return _swift_task_switch(sub_10027E504, 0, 0);
}

uint64_t sub_10027E504()
{
  *(v0 + 960) = sub_100572EF8();
  v2 = sub_100572E78();

  return _swift_task_switch(sub_10027E590, v2, v1);
}

uint64_t sub_10027E590()
{
  v1 = *(v0 + 520);

  v2 = sub_10017F500(v0 + 280, 0, 1);
  v3 = v2;
  v4 = *(v0 + 312);
  v5 = *(v1 + 80);
  if (v5)
  {
    v6 = qword_1006E4FE8;

    if (v6 != -1)
    {
      swift_once();
    }

    v7 = sub_10056DF88();
    sub_10000C49C(v7, qword_1006ECA00);
    v8 = sub_10056DF68();
    v9 = sub_100573448();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Deferring presentation…", v10, 2u);
    }

    v11 = *(v0 + 520);

    v12 = objc_allocWithZone(MSVBlockGuard);
    *(v0 + 384) = sub_1002EC584;
    *(v0 + 392) = 0;
    *(v0 + 352) = _NSConcreteStackBlock;
    *(v0 + 360) = 1107296256;
    *(v0 + 368) = sub_1002ED584;
    *(v0 + 376) = &unk_1006968C8;
    v13 = _Block_copy((v0 + 352));
    v14 = [v12 initWithTimeout:v13 interruptionHandler:10.0];
    _Block_release(v13);

    sub_1000FEAFC(v11, v0 + 16);
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    sub_1000FF9D0(v0 + 16, v15 + 24);
    *(v15 + 120) = v3;
    *(v15 + 128) = v4;
    *(v15 + 129) = 1;
    *(v15 + 136) = 0;
    *(v15 + 144) = 0;
    v16 = v14;
    v17 = v3;
    v5(v11, v17, sub_100112BB0, v15);
    sub_1000F3E14(v5);

    sub_100109250(v0 + 280);
  }

  else
  {
    sub_1002EAA64(v2, *(v0 + 312), 1, 0, 0);

    sub_100109250(v0 + 280);
  }

  return _swift_task_switch(sub_100287B58, 0, 0);
}

uint64_t sub_10027E878()
{
  v1 = *(v0 + 520);

  v2 = sub_10017F500(v0 + 208, 0, 1);
  v3 = v2;
  v4 = *(v0 + 240);
  v5 = *(v1 + 80);
  if (v5)
  {
    v6 = qword_1006E4FE8;

    if (v6 != -1)
    {
      swift_once();
    }

    v7 = sub_10056DF88();
    sub_10000C49C(v7, qword_1006ECA00);
    v8 = sub_10056DF68();
    v9 = sub_100573448();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Deferring presentation…", v10, 2u);
    }

    v11 = *(v0 + 520);

    v12 = objc_allocWithZone(MSVBlockGuard);
    *(v0 + 432) = sub_1002EC584;
    *(v0 + 440) = 0;
    *(v0 + 400) = _NSConcreteStackBlock;
    *(v0 + 408) = 1107296256;
    *(v0 + 416) = sub_1002ED584;
    *(v0 + 424) = &unk_100696940;
    v13 = _Block_copy((v0 + 400));
    v14 = [v12 initWithTimeout:v13 interruptionHandler:10.0];
    _Block_release(v13);

    sub_1000FEAFC(v11, v0 + 112);
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    sub_1000FF9D0(v0 + 112, v15 + 24);
    *(v15 + 120) = v3;
    *(v15 + 128) = v4;
    *(v15 + 129) = 1;
    *(v15 + 136) = 0;
    *(v15 + 144) = 0;
    v16 = v14;
    v17 = v3;
    v5(v11, v17, sub_100112BB0, v15);
    sub_1000F3E14(v5);

    sub_100109250(v0 + 208);
    v18 = sub_10027EB60;
  }

  else
  {
    sub_1002EAA64(v2, *(v0 + 240), 1, 0, 0);

    sub_100109250(v0 + 208);
    v18 = sub_100287B8C;
  }

  return _swift_task_switch(v18, 0, 0);
}

uint64_t sub_10027EB60()
{

  (*(v0[101] + 8))(v0[103], v0[100]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10027ECD0()
{
  *(v0 + 488) = *(v0 + 840);
  swift_errorRetain();
  sub_100009DCC(&qword_1006E9B60);
  if (swift_dynamicCast())
  {
    if ((*(*(v0 + 560) + 88))(*(v0 + 568), *(v0 + 552)) == enum case for MusicLibrary.InternalError.maximumPinCountReached(_:))
    {
      v1 = *(v0 + 656);
      v2 = *(v0 + 648);
      v3 = *(v0 + 640);
      v4 = *(v0 + 632);

      sub_100571898();
      sub_100571888();
      sub_100571528();

      v5 = sub_10056D5B8();

      sub_100572858();
      v52._countAndFlagsBits = 0xD000000000000035;
      v52._object = 0x80000001005B3520;
      sub_100572848(v52);
      v48 = v5;
      *(v0 + 496) = v5;
      sub_1002876B8();
      v53._countAndFlagsBits = sub_100573D48();
      sub_100572838(v53);

      v54._countAndFlagsBits = 0xD000000000000018;
      v54._object = 0x80000001005B3560;
      sub_100572848(v54);
      sub_100572878();
      v38 = *(v3 + 16);
      v38(v2, v1, v4);
      if (qword_1006E4C60 != -1)
      {
        swift_once();
      }

      v6 = *(v0 + 656);
      v7 = *(v0 + 648);
      v8 = *(v0 + 640);
      v9 = *(v0 + 632);
      v40 = *(v0 + 720);
      v41 = *(v0 + 616);
      v43 = *(v0 + 712);
      v42 = *(v0 + 600);
      v44 = *(v0 + 592);
      v45 = *(v0 + 584);
      v46 = *(v0 + 576);
      v34 = *(v0 + 528);
      v35 = *(v0 + 704);
      v33 = *(v0 + 512);
      v10 = qword_1006FC3B8;
      v49 = *(v0 + 536);
      sub_10056CBC8();
      v11 = v10;
      v50 = sub_100572948();
      v32 = v12;
      v13 = *(v8 + 8);
      v13(v6, v9);
      v31 = v13;
      sub_100572818();
      v38(v7, v6, v9);
      sub_10056CBC8();
      v14 = sub_100572948();
      v36 = v15;
      v37 = v14;
      v13(v6, v9);
      sub_100009DCC(&qword_1006E6120);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_10057B510;
      sub_100572818();
      v38(v7, v6, v9);
      sub_10056CBC8();
      v47 = sub_100572948();
      v39 = v17;
      v31(v6, v9);
      (*(v35 + 16))(v40, v33, v49);
      sub_10000CC8C(v34, v41, &qword_1006E6B80);
      v18 = (*(v35 + 80) + 56) & ~*(v35 + 80);
      v19 = (v43 + *(v42 + 80) + v18) & ~*(v42 + 80);
      v20 = swift_allocObject();
      *(v20 + 16) = v49;
      *(v20 + 32) = v50;
      *(v20 + 40) = v32;
      *(v20 + 48) = v48;
      (*(v35 + 32))(v20 + v18, v40, v49);
      sub_100019B40(v41, v20 + v19, &qword_1006E6B80);

      _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
      v21 = sub_10056CAB8();
      v23 = v22;
      (*(v45 + 8))(v44, v46);
      *(v16 + 32) = v21;
      *(v16 + 40) = v23;
      *(v16 + 48) = v47;
      *(v16 + 56) = v39;
      *(v16 + 64) = 2;
      *(v16 + 72) = &unk_10058FA00;
      *(v16 + 80) = v20;
      *(v0 + 208) = v37;
      *(v0 + 216) = v36;
      *(v0 + 224) = v50;
      *(v0 + 232) = v32;
      *(v0 + 240) = 0;
      *(v0 + 248) = 0;
      *(v0 + 256) = 1;
      *(v0 + 264) = v16;
      *(v0 + 272) = 0;
      sub_100572F08();
      *(v0 + 968) = sub_100572EF8();
      v25 = sub_100572E78();

      return _swift_task_switch(sub_10027E878, v25, v24);
    }

    (*(*(v0 + 560) + 8))(*(v0 + 568), *(v0 + 552));
  }

  v26 = *(v0 + 824);
  v27 = *(v0 + 808);
  v28 = *(v0 + 800);

  (*(v27 + 8))(v26, v28);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_10027F408()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(*(sub_100009DCC(&qword_1006E6B80) - 8) + 80);

  (*(v2 + 8))(v0 + v3, v1);
  v6 = v0 + v4;
  swift_unknownObjectWeakDestroy();
  v7 = *(v0 + v4 + 48);
  if (v7 != 255)
  {
    sub_1000FF9AC(*(v6 + 8), *(v6 + 16), *(v6 + 24), *(v6 + 32), *(v6 + 40), v7);
  }

  if (*(v6 + 64))
  {
  }

  v8 = (v4 + v5 + 96) & ~v5;
  if (*(v6 + 80))
  {
  }

  v9 = v0 + v8;
  v10 = type metadata accessor for Actions.MetricsReportingContext();
  if (!(*(*(v10 - 8) + 48))(v0 + v8, 1, v10))
  {
    if (*(v9 + 8) >= 0xDuLL)
    {
    }

    v11 = v9 + *(v10 + 20);
    v12 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
    {

      v13 = *(v12 + 24);
      v14 = sub_10056C8A8();
      v15 = *(v14 - 8);
      v19 = v13;
      v16 = v11 + v13;
      v17 = v14;
      if (!(*(v15 + 48))(v16, 1, v14))
      {
        (*(v15 + 8))(v11 + v19, v17);
      }
    }
  }

  return swift_deallocObject();
}

uint64_t sub_10027F728()
{
  v3 = v0[2];
  v2 = v0[3];
  v4 = (*(*(v3 - 8) + 80) + 40) & ~*(*(v3 - 8) + 80);
  v5 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_100009DCC(&qword_1006E6B80) - 8);
  v7 = (v5 + *(v6 + 80) + 96) & ~*(v6 + 80);
  v8 = v0[4];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_1000116F0;

  return sub_10027D090(v8, v0 + v4, v0 + v5, v0 + v7, v3, v2);
}

void PresentationSource.presentDownloadPinsAlertIfNecessary(catalogID:metricsReportingContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = a1;
  v5 = sub_100009DCC(&qword_1006E6B80);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v8 = &v40 - v7;
  v9 = sub_100009DCC(&qword_1006EA928);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v40 - v11;
  v43 = objc_opt_self();
  v13 = [v43 standardUserDefaults];
  v14 = sub_1001E9EF8();
  v15 = sub_1000C5FB8();
  v44 = v14;
  v42 = v15;
  NSUserDefaults.subscript.getter(&aBlock);

  if (v48)
  {
    if (swift_dynamicCast() & 1) != 0 && (v51[0])
    {
      return;
    }
  }

  else
  {
    sub_10001036C(&aBlock, &qword_1006EA040);
  }

  sub_100571898();
  sub_100571888();
  sub_100571528();

  sub_10056D5C8();

  sub_100282E24();
  sub_1005731B8();
  sub_100573208();
  v16 = sub_1005731F8();
  (*(v10 + 8))(v12, v9);
  if (v16 >= 2)
  {
    v17 = [objc_opt_self() sharedCloudController];
    if (v17)
    {
      v18 = v17;
      v19 = [v17 isAutomaticDownloadsEnabledForPinnedLibraryEntities];

      if ((v19 & 1) == 0)
      {
        sub_10000CC8C(a3, v8, &qword_1006E6B80);
        v20 = (*(v6 + 80) + 32) & ~*(v6 + 80);
        v21 = swift_allocObject();
        *(v21 + 16) = v41;
        *(v21 + 24) = a2;
        sub_100019B40(v8, v21 + v20, &qword_1006E6B80);

        sub_1001CDF7C(sub_1002866E4, v21, v51);

        v22 = sub_10017F500(v51, 0, 1);
        v23 = v22;
        v24 = v52;
        v25 = v45;
        v26 = *(v45 + 80);
        if (v26)
        {
          v27 = qword_1006E4FE8;

          if (v27 != -1)
          {
            swift_once();
          }

          v28 = sub_10056DF88();
          sub_10000C49C(v28, qword_1006ECA00);
          v29 = sub_10056DF68();
          v30 = sub_100573448();
          if (os_log_type_enabled(v29, v30))
          {
            v31 = swift_slowAlloc();
            *v31 = 0;
            _os_log_impl(&_mh_execute_header, v29, v30, "Deferring presentation…", v31, 2u);
          }

          v32 = objc_allocWithZone(MSVBlockGuard);
          v49 = sub_1002EC584;
          v50 = 0;
          *&aBlock = _NSConcreteStackBlock;
          *(&aBlock + 1) = 1107296256;
          v47 = sub_1002ED584;
          v48 = &unk_1006965A0;
          v33 = _Block_copy(&aBlock);
          v34 = [v32 initWithTimeout:v33 interruptionHandler:10.0];
          _Block_release(v33);

          sub_1000FEAFC(v25, &aBlock);
          v35 = swift_allocObject();
          *(v35 + 16) = v34;
          sub_1000FF9D0(&aBlock, v35 + 24);
          *(v35 + 120) = v23;
          *(v35 + 128) = v24;
          *(v35 + 129) = 1;
          *(v35 + 136) = 0;
          *(v35 + 144) = 0;
          v36 = v34;
          v37 = v23;
          v26(v25, v37, sub_100112A60, v35);
          sub_1000F3E14(v26);
        }

        else
        {
          sub_1002EAA64(v22, v52, 1, 0, 0);
        }

        sub_100109250(v51);
        v38 = [v43 standardUserDefaults];
        v48 = &type metadata for Bool;
        LOBYTE(aBlock) = 1;
        NSUserDefaults.subscript.setter(&aBlock, v39, &_s4KeysON);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_10027FEC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[57] = a7;
  v8[58] = a8;
  v8[55] = a5;
  v8[56] = a6;
  v8[53] = a3;
  v8[54] = a4;
  sub_100009DCC(&qword_1006E6B80);
  v8[59] = swift_task_alloc();
  v8[60] = *(a8 - 8);
  v8[61] = swift_task_alloc();

  return _swift_task_switch(sub_10027FFBC, 0, 0);
}

uint64_t sub_10027FFBC()
{
  v2 = *(v0 + 480);
  v1 = *(v0 + 488);
  v3 = *(v0 + 464);
  v5 = *(v0 + 440);
  v4 = *(v0 + 448);
  sub_100573ED8(79);
  v21._countAndFlagsBits = 0xD000000000000035;
  v21._object = 0x80000001005B3520;
  sub_100572A98(v21);
  *(v0 + 416) = v5;
  sub_1002876B8();
  v22._countAndFlagsBits = sub_100573D48();
  sub_100572A98(v22);

  v23._countAndFlagsBits = 0xD000000000000018;
  v23._object = 0x80000001005B3560;
  sub_100572A98(v23);
  (*(v2 + 16))(v1, v4, v3);
  sub_100009DCC(&qword_1006E6448);
  if (swift_dynamicCast())
  {
    v6 = *(v0 + 400);
    v7 = *(v0 + 408);
    sub_10000C8CC((v0 + 376), v6);
    v8 = (*(v7 + 8))(v6, v7);
    if (v9)
    {
      v10 = v8;
      v11 = v9;
    }

    else
    {
      v11 = 0xEB000000006D6574;
      v10 = 0x497972617262694CLL;
    }

    sub_100010474(v0 + 376);
  }

  else
  {
    v11 = 0xEB000000006D6574;
    v10 = 0x497972617262694CLL;
    *(v0 + 408) = 0;
    *(v0 + 376) = 0u;
    *(v0 + 392) = 0u;
    sub_10001036C(v0 + 376, &unk_1006EBE50);
  }

  v13 = *(v0 + 424);
  v12 = *(v0 + 432);
  strcpy((v0 + 16), "PinnedContent");
  *(v0 + 30) = -4864;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xD000000000000014;
  *(v0 + 48) = 0x80000001005B3580;
  *(v0 + 56) = v13;
  *(v0 + 64) = v12;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0xE000000000000000;
  *(v0 + 88) = &off_100685020;
  *(v0 + 96) = v10;
  *(v0 + 104) = v11;
  *(v0 + 112) = 19279;
  *(v0 + 120) = 0xE200000000000000;
  *(v0 + 128) = 0;
  strcpy((v0 + 136), "PinnedContent");
  *(v0 + 150) = -4864;
  *(v0 + 152) = 0;
  *(v0 + 160) = 0xD000000000000014;
  *(v0 + 168) = 0x80000001005B3580;
  *(v0 + 176) = v13;
  *(v0 + 184) = v12;
  *(v0 + 192) = 0;
  *(v0 + 200) = 0xE000000000000000;
  *(v0 + 208) = &off_100685020;
  *(v0 + 216) = v10;
  *(v0 + 224) = v11;
  *(v0 + 232) = 19279;
  *(v0 + 240) = 0xE200000000000000;
  *(v0 + 248) = 0;

  sub_1001941D8(v0 + 16, v0 + 256);
  sub_100194210(v0 + 136);
  if (qword_1006E4D30 != -1)
  {
    swift_once();
  }

  v14 = *(v0 + 472);
  sub_10000CC8C(*(v0 + 456), v14, &qword_1006E6B80);
  v15 = type metadata accessor for Actions.MetricsReportingContext();
  v16 = (*(*(v15 - 8) + 48))(v14, 1, v15);
  v17 = *(v0 + 472);
  if (v16 == 1)
  {
    sub_10001036C(*(v0 + 472), &qword_1006E6B80);
  }

  else
  {

    sub_10017A920(v17, type metadata accessor for Actions.MetricsReportingContext);
  }

  _s9MusicCore26MetricsReportingControllerC17recordDialogEvent_11pageContextyAA0cH0V0G0V_SSSgtF_0(v0 + 16);

  sub_100194210(v0 + 16);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_100280398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[11] = a3;
  v6[12] = a4;
  v6[9] = a1;
  v6[10] = a2;
  sub_100009DCC(&qword_1006E6428);
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = type metadata accessor for MetricsEvent.Click(0);
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  sub_100009DCC(&qword_1006E5D10);
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  sub_100009DCC(&qword_1006E6B80);
  v6[29] = swift_task_alloc();
  v7 = type metadata accessor for Actions.MetricsReportingContext();
  v6[30] = v7;
  v6[31] = *(v7 - 8);
  v6[32] = swift_task_alloc();

  return _swift_task_switch(sub_1002805B0, 0, 0);
}

uint64_t sub_1002805B0()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v1(7);
  }

  v2 = *(v0 + 240);
  v3 = *(v0 + 248);
  v4 = *(v0 + 232);
  sub_10000CC8C(*(v0 + 88), v4, &qword_1006E6B80);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_10001036C(*(v0 + 232), &qword_1006E6B80);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = *(v0 + 224);
    v8 = *(v0 + 104);
    sub_1002875F4(*(v0 + 232), *(v0 + 256), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 264) = MusicItem.metricsTargetIdentifier.getter(v8);
    *(v0 + 272) = v9;
    v10 = sub_10056C8A8();
    *(v0 + 280) = v10;
    v11 = *(v10 - 8);
    v12 = *(v11 + 56);
    *(v0 + 288) = v12;
    *(v0 + 296) = (v11 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v12(v7, 1, 1, v10);
    sub_100009DCC(&qword_1006E6D88);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10057B510;
    *(inited + 32) = MusicItem.metricsContentType.getter(v8);
    *(inited + 40) = v14;
    *(inited + 48) = 0;
    *(v0 + 304) = sub_1000E0568(inited);
    *(v0 + 312) = v15;
    *(v0 + 320) = v16;
    *(v0 + 336) = v17;
    swift_setDeallocating();
    sub_100114BA8(inited + 32);
    sub_100572F08();
    *(v0 + 328) = sub_100572EF8();
    v19 = sub_100572E78();

    return _swift_task_switch(sub_1002808BC, v19, v18);
  }
}

uint64_t sub_1002808BC()
{
  v80 = *(v0 + 336);
  v73 = *(v0 + 304);
  v76 = *(v0 + 272);
  v78 = *(v0 + 320);
  v74 = *(v0 + 264);
  v1 = *(v0 + 256);
  v2 = *(v0 + 240);
  v4 = *(v0 + 216);
  v3 = *(v0 + 224);
  v5 = *(v0 + 184);
  v6 = *(v0 + 192);
  v7 = *(v0 + 176);
  v72 = *(v0 + 168);

  sub_10000CC8C(v3, v4, &qword_1006E5D10);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_10000CC8C(v1 + v2[5], v7, &qword_1006E6428);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 7429;
  sub_100019B40(v4, v6 + v5[7], &qword_1006E5D10);
  *(v6 + v5[8]) = v8;
  v12 = (v6 + v5[9]);
  v75 = v9;
  v77 = v10;
  *v12 = v9;
  v12[1] = v10;
  v13 = v6 + v5[10];
  *v13 = v73;
  *(v13 + 16) = v78;
  *(v13 + 24) = v80;
  sub_10000CC8C(v7, v72, &qword_1006E6428);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v14 - 1) + 48);
  v15 = v79(v72, 1, v14);
  v16 = *(v0 + 336);
  v17 = *(v0 + 312);
  v18 = *(v0 + 320);
  v19 = *(v0 + 304);
  v20 = *(v0 + 168);
  if (v15 == 1)
  {

    sub_1000DC030(v75, v77);

    sub_1000DCFE4(v19, v17, v18, v16, SBYTE1(v16));
    sub_10001036C(v20, &qword_1006E6428);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    sub_1000DC030(v75, v77);

    sub_1000DCFE4(v19, v17, v18, v16, SBYTE1(v16));

    sub_10017A920(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 176);
  v24 = *(v0 + 160);
  v25 = (*(v0 + 192) + *(*(v0 + 184) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_10000CC8C(v23, v24, &qword_1006E6428);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 160);
  if (v26 == 1)
  {
    sub_10001036C(*(v0 + 160), &qword_1006E6428);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_10017A920(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 176);
  v31 = *(v0 + 152);
  v32 = (*(v0 + 192) + *(*(v0 + 184) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_10000CC8C(v30, v31, &qword_1006E6428);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 288);
    v34 = *(v0 + 280);
    v35 = *(v0 + 208);
    sub_10001036C(*(v0 + 152), &qword_1006E6428);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 152);
    sub_10000CC8C(v36 + v14[6], *(v0 + 208), &qword_1006E5D10);
    sub_10017A920(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 176);
  v38 = *(v0 + 144);
  sub_100019B40(*(v0 + 208), *(v0 + 192) + *(*(v0 + 184) + 56), &qword_1006E5D10);
  sub_10000CC8C(v37, v38, &qword_1006E6428);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 144);
  if (v39 == 1)
  {
    sub_10001036C(*(v0 + 144), &qword_1006E6428);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_10017A920(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 176);
  v43 = *(v0 + 136);
  *(*(v0 + 192) + *(*(v0 + 184) + 60)) = v41;
  sub_10000CC8C(v42, v43, &qword_1006E6428);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 136);
  if (v44 == 1)
  {
    sub_10001036C(v45, &qword_1006E6428);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    sub_10017A920(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 176);
  v48 = *(v0 + 128);
  *(*(v0 + 192) + *(*(v0 + 184) + 64)) = v46;
  sub_10000CC8C(v47, v48, &qword_1006E6428);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 128);
  if (v49 == 1)
  {
    sub_10001036C(*(v0 + 128), &qword_1006E6428);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_10017A920(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 176);
  v55 = *(v0 + 120);
  v56 = (*(v0 + 192) + *(*(v0 + 184) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_100019B40(v54, v55, &qword_1006E6428);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 120);
  if (v57 == 1)
  {
    sub_10001036C(v58, &qword_1006E6428);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    sub_10017A920(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 192);
  v61 = *(v0 + 200);
  v62 = *(v0 + 184);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_1002875F4(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_1006E4D30 != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 312);
  v63 = *(v0 + 320);
  v65 = *(v0 + 304);
  v66 = *(v0 + 256);
  v67 = *(v0 + 240);
  v68 = *(v0 + 224);
  v69 = *(v0 + 200);
  v70 = *(v0 + 336);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  sub_100109184(v65, v64, v63, v70, SBYTE1(v70));
  sub_10017A920(v69, type metadata accessor for MetricsEvent.Click);
  sub_10001036C(v68, &qword_1006E5D10);

  return _swift_task_switch(sub_100175FA8, 0, 0);
}

uint64_t sub_100281070()
{
  v3 = v0[2];
  v2 = v0[3];
  v4 = *(sub_100009DCC(&qword_1006E6B80) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80);
  v7 = v0[4];
  v8 = v0[5];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_1000116F0;

  return sub_100280398(v7, v8, v0 + v5, v0 + v6, v3, v2);
}

uint64_t sub_1002811E8()
{
  v0 = sub_1005714E8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100009DCC(&qword_1006EAB88);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  sub_10056D4F8();
  sub_100571658();
  (*(v1 + 8))(v3, v0);
  v8 = sub_1002814A0();
  (*(v5 + 8))(v7, v4);
  return v8;
}

uint64_t sub_1002813A4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1002814A0()
{
  v1 = sub_1005714D8();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v25 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v27 = &v24 - v6;
  __chkstk_darwin(v5);
  v8 = &v24 - v7;
  v9 = sub_100009DCC(&qword_1006EAB88);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v24 - v14;
  v16 = *(v10 + 16);
  v26 = v0;
  v16(&v24 - v14, v0, v9);
  v17 = (*(v10 + 88))(v15, v9);
  if (v17 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    (*(v10 + 96))(v15, v9);
    (*(v2 + 32))(v8, v15, v1);
    v18 = *(v2 + 16);
    v19 = v27;
    v18(v27, v8, v1);
    v20 = (*(v2 + 88))(v19, v1);
    if (v20 == enum case for MusicLibrary.UnpinAction.UnsupportedReason.notPinned(_:))
    {
      (*(v2 + 8))(v8, v1);
      return 0x6E6E695020746F4ELL;
    }

    else if (v20 == enum case for MusicLibrary.UnpinAction.UnsupportedReason.sharedLibrary(_:))
    {
      (*(v2 + 8))(v8, v1);
      return 0x6C20646572616853;
    }

    else if (v20 == enum case for MusicLibrary.UnpinAction.UnsupportedReason.unknown(_:))
    {
      v21 = 0x206E776F6E6B6E55;
      (*(v2 + 8))(v8, v1);
    }

    else if (v20 == enum case for MusicLibrary.UnpinAction.UnsupportedReason.unsupportedType(_:))
    {
      v21 = 0xD000000000000010;
      (*(v2 + 8))(v8, v1);
    }

    else
    {
      v28 = 0;
      v29 = 0xE000000000000000;
      sub_100573ED8(17);

      v28 = 0x206E776F6E6B6E55;
      v29 = 0xEF206E6F73616572;
      v18(v25, v8, v1);
      v31._countAndFlagsBits = sub_100572978();
      sub_100572A98(v31);

      v21 = v28;
      v23 = *(v2 + 8);
      v23(v8, v1);
      v23(v27, v1);
    }
  }

  else if (v17 == enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
  {
    return 0;
  }

  else
  {
    v28 = 0;
    v29 = 0xE000000000000000;
    sub_100573ED8(27);

    v28 = 0xD000000000000019;
    v29 = 0x80000001005ADFC0;
    v16(v13, v26, v9);
    v30._countAndFlagsBits = sub_100572978();
    sub_100572A98(v30);

    v21 = v28;
    (*(v10 + 8))(v15, v9);
  }

  return v21;
}

uint64_t sub_1002819B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a3;
  v5[3] = type metadata accessor for Notice.Variant(0);
  v5[4] = swift_task_alloc();
  v9 = swift_task_alloc();
  v5[5] = v9;
  *v9 = v5;
  v9[1] = sub_100281AA0;

  return MusicLibrary.unpin<A>(_:)(a2, a4, a5);
}

uint64_t sub_100281AA0()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_100281BEC, 0, 0);
  }
}

uint64_t sub_100281BEC()
{
  swift_storeEnumTagMultiPayload();
  sub_100572F08();
  *(v0 + 48) = sub_100572EF8();
  v2 = sub_100572E78();

  return _swift_task_switch(sub_100281C8C, v2, v1);
}

uint64_t sub_100281C8C()
{
  v1 = *(v0 + 32);

  sub_10022F384(v1, 0);
  sub_10017A920(v1, type metadata accessor for Notice.Variant);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100281D28()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  v5 = v0 + v4;
  swift_unknownObjectWeakDestroy();
  v6 = *(v0 + v4 + 48);
  if (v6 != 255)
  {
    sub_1000FF9AC(*(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), v6);
  }

  if (*(v5 + 64))
  {
  }

  if (*(v5 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100281E38()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = (*(*(v2 - 8) + 80) + 40) & ~*(*(v2 - 8) + 80);
  v5 = (*(*(v2 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1000116F0;

  return sub_1002819B4(v6, v0 + v4, v0 + v5, v2, v3);
}

uint64_t sub_100281F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[11] = a3;
  v6[12] = a4;
  v6[9] = a1;
  v6[10] = a2;
  sub_100009DCC(&qword_1006E6428);
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = type metadata accessor for MetricsEvent.Click(0);
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  sub_100009DCC(&qword_1006E5D10);
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  sub_100009DCC(&qword_1006E6B80);
  v6[29] = swift_task_alloc();
  v7 = type metadata accessor for Actions.MetricsReportingContext();
  v6[30] = v7;
  v6[31] = *(v7 - 8);
  v6[32] = swift_task_alloc();

  return _swift_task_switch(sub_100282160, 0, 0);
}

uint64_t sub_100282160()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v1(8);
  }

  v2 = *(v0 + 240);
  v3 = *(v0 + 248);
  v4 = *(v0 + 232);
  sub_10000CC8C(*(v0 + 88), v4, &qword_1006E6B80);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_10001036C(*(v0 + 232), &qword_1006E6B80);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = *(v0 + 224);
    v8 = *(v0 + 104);
    sub_1002875F4(*(v0 + 232), *(v0 + 256), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 264) = MusicItem.metricsTargetIdentifier.getter(v8);
    *(v0 + 272) = v9;
    v10 = sub_10056C8A8();
    *(v0 + 280) = v10;
    v11 = *(v10 - 8);
    v12 = *(v11 + 56);
    *(v0 + 288) = v12;
    *(v0 + 296) = (v11 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v12(v7, 1, 1, v10);
    sub_100009DCC(&qword_1006E6D88);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10057B510;
    *(inited + 32) = MusicItem.metricsContentType.getter(v8);
    *(inited + 40) = v14;
    *(inited + 48) = 0;
    *(v0 + 304) = sub_1000E0568(inited);
    *(v0 + 312) = v15;
    *(v0 + 320) = v16;
    *(v0 + 336) = v17;
    swift_setDeallocating();
    sub_100114BA8(inited + 32);
    sub_100572F08();
    *(v0 + 328) = sub_100572EF8();
    v19 = sub_100572E78();

    return _swift_task_switch(sub_10028246C, v19, v18);
  }
}

uint64_t sub_10028246C()
{
  v80 = *(v0 + 336);
  v73 = *(v0 + 304);
  v76 = *(v0 + 272);
  v78 = *(v0 + 320);
  v74 = *(v0 + 264);
  v1 = *(v0 + 256);
  v2 = *(v0 + 240);
  v4 = *(v0 + 216);
  v3 = *(v0 + 224);
  v5 = *(v0 + 184);
  v6 = *(v0 + 192);
  v7 = *(v0 + 176);
  v72 = *(v0 + 168);

  sub_10000CC8C(v3, v4, &qword_1006E5D10);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_10000CC8C(v1 + v2[5], v7, &qword_1006E6428);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 7685;
  sub_100019B40(v4, v6 + v5[7], &qword_1006E5D10);
  *(v6 + v5[8]) = v8;
  v12 = (v6 + v5[9]);
  v75 = v9;
  v77 = v10;
  *v12 = v9;
  v12[1] = v10;
  v13 = v6 + v5[10];
  *v13 = v73;
  *(v13 + 16) = v78;
  *(v13 + 24) = v80;
  sub_10000CC8C(v7, v72, &qword_1006E6428);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v14 - 1) + 48);
  v15 = v79(v72, 1, v14);
  v16 = *(v0 + 336);
  v17 = *(v0 + 312);
  v18 = *(v0 + 320);
  v19 = *(v0 + 304);
  v20 = *(v0 + 168);
  if (v15 == 1)
  {

    sub_1000DC030(v75, v77);

    sub_1000DCFE4(v19, v17, v18, v16, SBYTE1(v16));
    sub_10001036C(v20, &qword_1006E6428);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    sub_1000DC030(v75, v77);

    sub_1000DCFE4(v19, v17, v18, v16, SBYTE1(v16));

    sub_10017A920(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 176);
  v24 = *(v0 + 160);
  v25 = (*(v0 + 192) + *(*(v0 + 184) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_10000CC8C(v23, v24, &qword_1006E6428);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 160);
  if (v26 == 1)
  {
    sub_10001036C(*(v0 + 160), &qword_1006E6428);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_10017A920(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 176);
  v31 = *(v0 + 152);
  v32 = (*(v0 + 192) + *(*(v0 + 184) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_10000CC8C(v30, v31, &qword_1006E6428);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 288);
    v34 = *(v0 + 280);
    v35 = *(v0 + 208);
    sub_10001036C(*(v0 + 152), &qword_1006E6428);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 152);
    sub_10000CC8C(v36 + v14[6], *(v0 + 208), &qword_1006E5D10);
    sub_10017A920(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 176);
  v38 = *(v0 + 144);
  sub_100019B40(*(v0 + 208), *(v0 + 192) + *(*(v0 + 184) + 56), &qword_1006E5D10);
  sub_10000CC8C(v37, v38, &qword_1006E6428);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 144);
  if (v39 == 1)
  {
    sub_10001036C(*(v0 + 144), &qword_1006E6428);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_10017A920(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 176);
  v43 = *(v0 + 136);
  *(*(v0 + 192) + *(*(v0 + 184) + 60)) = v41;
  sub_10000CC8C(v42, v43, &qword_1006E6428);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 136);
  if (v44 == 1)
  {
    sub_10001036C(v45, &qword_1006E6428);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    sub_10017A920(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 176);
  v48 = *(v0 + 128);
  *(*(v0 + 192) + *(*(v0 + 184) + 64)) = v46;
  sub_10000CC8C(v47, v48, &qword_1006E6428);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 128);
  if (v49 == 1)
  {
    sub_10001036C(*(v0 + 128), &qword_1006E6428);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_10017A920(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 176);
  v55 = *(v0 + 120);
  v56 = (*(v0 + 192) + *(*(v0 + 184) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_100019B40(v54, v55, &qword_1006E6428);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 120);
  if (v57 == 1)
  {
    sub_10001036C(v58, &qword_1006E6428);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    sub_10017A920(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 192);
  v61 = *(v0 + 200);
  v62 = *(v0 + 184);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_1002875F4(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_1006E4D30 != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 312);
  v63 = *(v0 + 320);
  v65 = *(v0 + 304);
  v66 = *(v0 + 256);
  v67 = *(v0 + 240);
  v68 = *(v0 + 224);
  v69 = *(v0 + 200);
  v70 = *(v0 + 336);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  sub_100109184(v65, v64, v63, v70, SBYTE1(v70));
  sub_10017A920(v69, type metadata accessor for MetricsEvent.Click);
  sub_10001036C(v68, &qword_1006E5D10);

  return _swift_task_switch(sub_10017A988, 0, 0);
}

uint64_t sub_100282C24()
{
  v3 = v0[2];
  v2 = v0[3];
  v4 = *(sub_100009DCC(&qword_1006E6B80) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80);
  v7 = v0[4];
  v8 = v0[5];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_1000116F0;

  return sub_100281F48(v7, v8, v0 + v5, v0 + v6, v3, v2);
}

uint64_t sub_100282D9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_100282E24()
{
  result = qword_1006EA930;
  if (!qword_1006EA930)
  {
    sub_100010324(&qword_1006EA928);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EA930);
  }

  return result;
}

uint64_t Actions.UpdatePinAction.Context.init(pin:action:library:metricsReportingContext:onFinish:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v83 = a5;
  v84 = a6;
  v85 = a4;
  v91 = a3;
  v88 = a2;
  v9 = sub_10056D858();
  v10 = *(v9 - 8);
  v77 = *(v10 + 64);
  v11 = __chkstk_darwin(v9);
  v93 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v80 = &v70 - v14;
  __chkstk_darwin(v13);
  v87 = &v70 - v15;
  v16 = sub_10056D888();
  v86 = v16;
  v95 = *(v16 - 8);
  v17 = v95;
  v92 = *(v95 + 64);
  v18 = __chkstk_darwin(v16);
  v94 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v76 = &v70 - v21;
  __chkstk_darwin(v20);
  v23 = &v70 - v22;
  v24 = *(v17 + 16);
  v81 = a7;
  v89 = a1;
  v24(a7, a1, v16);
  v75 = v24;
  updated = type metadata accessor for Actions.UpdatePinAction.Context(0);
  v25 = *(v10 + 16);
  v26 = (a7 + *(updated + 20));
  v27 = v88;
  v96 = v9;
  v28 = v25;
  v74 = v25;
  v25(v26, v88, v9);
  v24(v23, a1, v16);
  v28(v87, v27, v9);
  v29 = v95;
  v78 = *(v95 + 80);
  v30 = *(v10 + 80);
  v31 = v10;
  v32 = (v78 + 24) & ~v78;
  v73 = v32;
  v33 = (v92 + v30 + v32) & ~v30;
  v90 = v78 | v30 | 7;
  v34 = v77;
  v35 = swift_allocObject();
  v36 = v91;
  *(v35 + 16) = v91;
  v72 = *(v29 + 32);
  v95 = v29 + 32;
  v37 = v35 + v32;
  v38 = v35;
  v79 = v35;
  v39 = v23;
  v40 = v86;
  v72(v37, v39, v86);
  v41 = *(v31 + 32);
  v70 = v31 + 32;
  v71 = v41;
  v42 = v38 + v33;
  v43 = v96;
  v41(v42, v87, v96);
  v44 = v76;
  v75(v76, v89, v40);
  v45 = v80;
  v46 = v88;
  v74(v80, v88, v43);
  v47 = swift_allocObject();
  v87 = v47;
  *(v47 + 16) = v36;
  v48 = v44;
  v49 = v86;
  v50 = v72;
  v72(v47 + v73, v48, v86);
  v51 = v47 + v33;
  v52 = v45;
  v53 = v96;
  v54 = v71;
  v71(v51, v52, v96);
  v54(v93, v46, v53);
  v50(v94, v89, v49);
  v55 = v50;
  v56 = (v30 + 32) & ~v30;
  v57 = *(sub_100009DCC(&qword_1006E6B80) - 8);
  v58 = (v56 + v34 + *(v57 + 80)) & ~*(v57 + 80);
  v59 = (*(v57 + 64) + v78 + v58) & ~v78;
  v60 = swift_allocObject();
  v61 = v84;
  *(v60 + 16) = v83;
  *(v60 + 24) = v61;
  v54((v60 + v56), v93, v96);
  sub_100019B40(v85, v60 + v58, &qword_1006E6B80);
  v55(v60 + v59, v94, v49);
  v62 = v81;
  v63 = updated;
  v64 = (v81 + *(updated + 24));
  v65 = v79;
  *v64 = sub_100286780;
  v64[1] = v65;
  v66 = (v62 + *(v63 + 28));
  v67 = v87;
  *v66 = &unk_10058F938;
  v66[1] = v67;
  v68 = (v62 + *(v63 + 32));
  *v68 = &unk_10058F948;
  v68[1] = v60;
}

uint64_t sub_10028343C()
{
  v0 = sub_100571638();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100009DCC(&qword_1006EAB78);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  sub_10056D548();
  sub_10056D888();
  sub_10028765C();
  sub_100571658();
  (*(v1 + 8))(v3, v0);
  v8 = sub_100283608();
  (*(v5 + 8))(v7, v4);
  return v8;
}

uint64_t sub_100283608()
{
  v1 = sub_100571628();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v29 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v31 = &v28 - v6;
  __chkstk_darwin(v5);
  v8 = &v28 - v7;
  v9 = sub_100009DCC(&qword_1006EAB78);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v28 - v14;
  v16 = *(v10 + 16);
  v30 = v0;
  v16(&v28 - v14, v0, v9);
  v17 = (*(v10 + 88))(v15, v9);
  if (v17 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    (*(v10 + 96))(v15, v9);
    (*(v2 + 32))(v8, v15, v1);
    v18 = *(v2 + 16);
    v19 = v31;
    v18(v31, v8, v1);
    v20 = (*(v2 + 88))(v19, v1);
    v21 = v1;
    v22 = v2;
    if (v20 == enum case for MusicLibrary.UpdatePinAction.UnsupportedReason.notPinned(_:))
    {
      (*(v2 + 8))(v8, v21);
      return 0x6E6E695020746F4ELL;
    }

    else if (v20 == enum case for MusicLibrary.UpdatePinAction.UnsupportedReason.sharedLibrary(_:))
    {
      (*(v2 + 8))(v8, v21);
      return 0x6C20646572616853;
    }

    else if (v20 == enum case for MusicLibrary.UpdatePinAction.UnsupportedReason.unsupportedAction(_:))
    {
      (*(v2 + 8))(v8, v21);
      return 0xD000000000000012;
    }

    else if (v20 == enum case for MusicLibrary.UpdatePinAction.UnsupportedReason.unsupportedType(_:))
    {
      (*(v2 + 8))(v8, v21);
      return 0xD000000000000010;
    }

    else if (v20 == enum case for MusicLibrary.UpdatePinAction.UnsupportedReason.unknown(_:))
    {
      (*(v2 + 8))(v8, v21);
      return 0x206E776F6E6B6E55;
    }

    else
    {
      v32 = 0;
      v33 = 0xE000000000000000;
      v25 = v21;
      sub_100573ED8(17);

      v32 = 0x206E776F6E6B6E55;
      v33 = 0xEF206E6F73616572;
      v18(v29, v8, v25);
      v35._countAndFlagsBits = sub_100572978();
      sub_100572A98(v35);

      v26 = v32;
      v27 = *(v22 + 8);
      v27(v8, v25);
      v27(v31, v25);
      return v26;
    }
  }

  else if (v17 == enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
  {
    return 0;
  }

  else
  {
    v32 = 0;
    v33 = 0xE000000000000000;
    sub_100573ED8(27);

    v32 = 0xD000000000000019;
    v33 = 0x80000001005ADFC0;
    v16(v13, v30, v9);
    v34._countAndFlagsBits = sub_100572978();
    sub_100572A98(v34);

    v24 = v32;
    (*(v10 + 8))(v15, v9);
    return v24;
  }
}

uint64_t sub_100283B5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_10000CB98;

  return MusicLibrary.updatePin(_:defaultAction:)(a2, a3);
}

uint64_t sub_100283C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  sub_100009DCC(&qword_1006E6428);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v5[22] = type metadata accessor for MetricsEvent.Click(0);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  sub_100009DCC(&qword_1006E5D10);
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  sub_100009DCC(&qword_1006E6B80);
  v5[28] = swift_task_alloc();
  v6 = type metadata accessor for Actions.MetricsReportingContext();
  v5[29] = v6;
  v5[30] = *(v6 - 8);
  v5[31] = swift_task_alloc();
  v7 = sub_10056D858();
  v5[32] = v7;
  v5[33] = *(v7 - 8);
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();

  return _swift_task_switch(sub_100283E8C, 0, 0);
}

uint64_t sub_100283E8C()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = *(v0 + 280);
    v3 = *(v0 + 256);
    v4 = *(v0 + 264);
    (*(v4 + 16))(v2, *(v0 + 88), v3);
    v5 = (*(v4 + 88))(v2, v3);
    if (v5 == enum case for MusicPin.Action.navigate(_:))
    {
      v6 = 46;
LABEL_9:
      v1(v6);
      goto LABEL_10;
    }

    if (v5 != enum case for MusicPin.Action.play(_:))
    {
      if (v5 == enum case for MusicPin.Action.shuffle(_:))
      {
        v6 = 45;
        goto LABEL_9;
      }

      (*(*(v0 + 264) + 8))(*(v0 + 280), *(v0 + 256));
    }

    v6 = 44;
    goto LABEL_9;
  }

LABEL_10:
  v7 = *(v0 + 232);
  v8 = *(v0 + 240);
  v9 = *(v0 + 224);
  sub_10000CC8C(*(v0 + 96), v9, &qword_1006E6B80);
  if ((*(v8 + 48))(v9, 1, v7) == 1)
  {
    sub_10001036C(*(v0 + 224), &qword_1006E6B80);

    v10 = *(v0 + 8);

    return v10();
  }

  v13 = *(v0 + 264);
  v12 = *(v0 + 272);
  v14 = *(v0 + 256);
  v15 = *(v0 + 88);
  sub_1002875F4(*(v0 + 224), *(v0 + 248), type metadata accessor for Actions.MetricsReportingContext);
  *(v0 + 288) = sub_1000DFEFC();
  *(v0 + 296) = v16;
  (*(v13 + 16))(v12, v15, v14);
  v17 = (*(v13 + 88))(v12, v14);
  if (v17 != enum case for MusicPin.Action.navigate(_:))
  {
    if (v17 != enum case for MusicPin.Action.play(_:))
    {
      if (v17 == enum case for MusicPin.Action.shuffle(_:))
      {
        v18 = 46;
        goto LABEL_21;
      }

      (*(*(v0 + 264) + 8))(*(v0 + 272), *(v0 + 256));
    }

    v18 = 45;
    goto LABEL_21;
  }

  v18 = 47;
LABEL_21:
  *(v0 + 362) = v18;
  v19 = *(v0 + 216);
  v20 = sub_10056C8A8();
  *(v0 + 304) = v20;
  v21 = *(v20 - 8);
  v22 = *(v21 + 56);
  *(v0 + 312) = v22;
  *(v0 + 320) = (v21 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v22(v19, 1, 1, v20);
  sub_100009DCC(&qword_1006E6D88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10057B510;
  *(inited + 32) = sub_1000DF608();
  *(inited + 40) = v24;
  *(inited + 48) = 0;
  *(v0 + 328) = sub_1000E0568(inited);
  *(v0 + 336) = v25;
  *(v0 + 344) = v26;
  *(v0 + 360) = v27;
  swift_setDeallocating();
  sub_100114BA8(inited + 32);
  sub_100572F08();
  *(v0 + 352) = sub_100572EF8();
  v29 = sub_100572E78();

  return _swift_task_switch(sub_1002842E0, v29, v28);
}

uint64_t sub_1002842E0()
{
  v83 = *(v0 + 360);
  v76 = *(v0 + 328);
  v81 = *(v0 + 362);
  v79 = *(v0 + 296);
  v77 = *(v0 + 344);
  v78 = *(v0 + 288);
  v1 = *(v0 + 248);
  v2 = *(v0 + 232);
  v4 = *(v0 + 208);
  v3 = *(v0 + 216);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  v7 = *(v0 + 168);
  v75 = *(v0 + 160);

  sub_10000CC8C(v3, v4, &qword_1006E5D10);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_10000CC8C(v1 + v2[5], v7, &qword_1006E6428);
  v11 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v12 = (v6 + v5[20]);
  *v12 = 0;
  v12[1] = 0;
  *v6 = v78;
  *(v6 + 8) = v79;
  *(v6 + 16) = 5;
  *(v6 + 17) = v81;
  sub_100019B40(v4, v6 + v5[7], &qword_1006E5D10);
  v80 = v10;
  *(v6 + v5[8]) = v8;
  v13 = (v6 + v5[9]);
  v82 = v9;
  *v13 = v9;
  v13[1] = v10;
  v14 = v6 + v5[10];
  *v14 = v76;
  *(v14 + 16) = v77;
  *(v14 + 24) = v83;
  sub_10000CC8C(v7, v75, &qword_1006E6428);
  v15 = type metadata accessor for MetricsEvent.Page(0);
  v16 = *(*(v15 - 1) + 48);
  v17 = v16(v75, 1, v15);
  v18 = *(v0 + 360);
  v19 = *(v0 + 336);
  v20 = *(v0 + 344);
  v21 = *(v0 + 328);
  v22 = *(v0 + 160);
  v84 = v11;
  if (v17 == 1)
  {

    sub_1000DC030(v82, v80);

    sub_1000DCFE4(v21, v19, v20, v18, SBYTE1(v18));
    sub_10001036C(v22, &qword_1006E6428);
    v23 = 0;
    v24 = 0;
  }

  else
  {
    v23 = *v22;
    v24 = v22[1];

    sub_1000DC030(v82, v80);

    sub_1000DCFE4(v21, v19, v20, v18, SBYTE1(v18));

    sub_10017A920(v22, type metadata accessor for MetricsEvent.Page);
  }

  v25 = *(v0 + 168);
  v26 = *(v0 + 152);
  v27 = (*(v0 + 184) + *(*(v0 + 176) + 48));
  *v27 = v23;
  v27[1] = v24;
  sub_10000CC8C(v25, v26, &qword_1006E6428);
  v28 = v16(v26, 1, v15);
  v29 = *(v0 + 152);
  if (v28 == 1)
  {
    sub_10001036C(*(v0 + 152), &qword_1006E6428);
    v30 = 0;
    v31 = 0;
  }

  else
  {
    v30 = *(v29 + 16);
    v31 = *(v29 + 24);

    sub_10017A920(v29, type metadata accessor for MetricsEvent.Page);
  }

  v32 = *(v0 + 168);
  v33 = *(v0 + 144);
  v34 = (*(v0 + 184) + *(*(v0 + 176) + 52));
  *v34 = v30;
  v34[1] = v31;
  sub_10000CC8C(v32, v33, &qword_1006E6428);
  if (v16(v33, 1, v15) == 1)
  {
    v35 = v16;
    v36 = *(v0 + 312);
    v37 = *(v0 + 304);
    v38 = *(v0 + 200);
    sub_10001036C(*(v0 + 144), &qword_1006E6428);
    v36(v38, 1, 1, v37);
    v16 = v35;
  }

  else
  {
    v39 = *(v0 + 144);
    sub_10000CC8C(v39 + v15[6], *(v0 + 200), &qword_1006E5D10);
    sub_10017A920(v39, type metadata accessor for MetricsEvent.Page);
  }

  v40 = *(v0 + 168);
  v41 = *(v0 + 136);
  sub_100019B40(*(v0 + 200), *(v0 + 184) + *(*(v0 + 176) + 56), &qword_1006E5D10);
  sub_10000CC8C(v40, v41, &qword_1006E6428);
  v42 = v16(v41, 1, v15);
  v43 = *(v0 + 136);
  if (v42 == 1)
  {
    sub_10001036C(*(v0 + 136), &qword_1006E6428);
    v44 = 0;
  }

  else
  {
    v44 = *(v43 + v15[7]);

    sub_10017A920(v43, type metadata accessor for MetricsEvent.Page);
  }

  v45 = *(v0 + 168);
  v46 = *(v0 + 128);
  *(*(v0 + 184) + *(*(v0 + 176) + 60)) = v44;
  sub_10000CC8C(v45, v46, &qword_1006E6428);
  v47 = v16(v46, 1, v15);
  v48 = *(v0 + 128);
  if (v47 == 1)
  {
    sub_10001036C(v48, &qword_1006E6428);
    v49 = 1;
  }

  else
  {
    v49 = *(v48 + v15[9]);
    sub_10017A920(v48, type metadata accessor for MetricsEvent.Page);
  }

  v50 = *(v0 + 168);
  v51 = *(v0 + 120);
  *(*(v0 + 184) + *(*(v0 + 176) + 64)) = v49;
  sub_10000CC8C(v50, v51, &qword_1006E6428);
  v52 = v16(v51, 1, v15);
  v53 = *(v0 + 120);
  if (v52 == 1)
  {
    sub_10001036C(*(v0 + 120), &qword_1006E6428);
    v54 = 0;
    v55 = 0;
  }

  else
  {
    v56 = (v53 + v15[8]);
    v54 = *v56;
    v55 = v56[1];

    sub_10017A920(v53, type metadata accessor for MetricsEvent.Page);
  }

  v57 = *(v0 + 168);
  v58 = *(v0 + 112);
  v59 = (*(v0 + 184) + *(*(v0 + 176) + 72));
  *v59 = v54;
  v59[1] = v55;
  sub_100019B40(v57, v58, &qword_1006E6428);
  v60 = v16(v58, 1, v15);
  v61 = *(v0 + 112);
  if (v60 == 1)
  {
    sub_10001036C(v61, &qword_1006E6428);
    v62 = 2;
  }

  else
  {
    v62 = *(v61 + v15[11]);
    sub_10017A920(v61, type metadata accessor for MetricsEvent.Page);
  }

  v63 = *(v0 + 184);
  v64 = *(v0 + 192);
  v65 = *(v0 + 176);
  *(v63 + *(v65 + 68)) = v62;
  *(v63 + *(v65 + 44)) = v84;
  sub_1002875F4(v63, v64, type metadata accessor for MetricsEvent.Click);
  if (qword_1006E4D30 != -1)
  {
    swift_once();
  }

  v67 = *(v0 + 336);
  v66 = *(v0 + 344);
  v68 = *(v0 + 328);
  v69 = *(v0 + 248);
  v70 = *(v0 + 232);
  v71 = *(v0 + 216);
  v72 = *(v0 + 192);
  v73 = *(v0 + 360);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v72, *(v69 + *(v70 + 24)), *(v69 + *(v70 + 24) + 8), *(v69 + *(v70 + 36)), *(v69 + *(v70 + 36) + 8), *(v69 + *(v70 + 36) + 16));
  sub_100109184(v68, v67, v66, v73, SBYTE1(v73));
  sub_10017A920(v72, type metadata accessor for MetricsEvent.Click);
  sub_10001036C(v71, &qword_1006E5D10);

  return _swift_task_switch(sub_100284AC4, 0, 0);
}

uint64_t sub_100284AC4()
{
  sub_10017A920(*(v0 + 248), type metadata accessor for Actions.MetricsReportingContext);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t Actions.Pin.Context.menuItemTitle.getter()
{
  v1 = v0;
  v2 = sub_10056CC38();
  __chkstk_darwin(v2 - 8);
  v3 = sub_100572888();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v23[-v8];
  v10 = sub_100009DCC(&qword_1006EA938);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v23[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v15 = &v23[-v14];
  sub_10000CC8C(v1, &v23[-v14], &qword_1006EA938);
  v16 = sub_10056D818();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    goto LABEL_2;
  }

  sub_10000CC8C(v15, v13, &qword_1006EA938);
  v20 = (*(v17 + 88))(v13, v16);
  if (v20 != enum case for MusicPin.Item.album(_:) && v20 != enum case for MusicPin.Item.artist(_:) && v20 != enum case for MusicPin.Item.musicVideo(_:) && v20 != enum case for MusicPin.Item.playlist(_:) && v20 != enum case for MusicPin.Item.song(_:))
  {
    (*(v17 + 8))(v13, v16);
LABEL_2:
    sub_100572818();
    (*(v4 + 16))(v7, v9, v3);
    if (qword_1006E4C60 != -1)
    {
      swift_once();
    }

    v18 = qword_1006FC3B8;
    sub_10056CBC8();
    v19 = sub_100572948();
    (*(v4 + 8))(v9, v3);
    goto LABEL_13;
  }

  sub_100572818();
  (*(v4 + 16))(v7, v9, v3);
  if (qword_1006E4C60 != -1)
  {
    swift_once();
  }

  v21 = qword_1006FC3B8;
  sub_10056CBC8();
  v19 = sub_100572948();
  (*(v4 + 8))(v9, v3);
  (*(v17 + 8))(v13, v16);
LABEL_13:
  sub_10001036C(v15, &qword_1006EA938);
  return v19;
}

uint64_t (*Actions.Pin.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 7235952;
  *(v0 + 24) = 0xE300000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 7235952;
  *(v1 + 24) = 0xE300000000000000;
  return sub_100108BF8;
}

uint64_t (*sub_1002851BC())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 7235952;
  *(v0 + 24) = 0xE300000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 7235952;
  *(v1 + 24) = 0xE300000000000000;
  return sub_100109428;
}

uint64_t Actions.Unpin.Context.menuItemTitle.getter()
{
  v1 = v0;
  v2 = sub_10056CC38();
  __chkstk_darwin(v2 - 8);
  v3 = sub_100572888();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v23[-v8];
  v10 = sub_100009DCC(&qword_1006EA938);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v23[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v15 = &v23[-v14];
  sub_10000CC8C(v1, &v23[-v14], &qword_1006EA938);
  v16 = sub_10056D818();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    goto LABEL_2;
  }

  sub_10000CC8C(v15, v13, &qword_1006EA938);
  v20 = (*(v17 + 88))(v13, v16);
  if (v20 != enum case for MusicPin.Item.album(_:) && v20 != enum case for MusicPin.Item.artist(_:) && v20 != enum case for MusicPin.Item.musicVideo(_:) && v20 != enum case for MusicPin.Item.playlist(_:) && v20 != enum case for MusicPin.Item.song(_:))
  {
    (*(v17 + 8))(v13, v16);
LABEL_2:
    sub_100572818();
    (*(v4 + 16))(v7, v9, v3);
    if (qword_1006E4C60 != -1)
    {
      swift_once();
    }

    v18 = qword_1006FC3B8;
    sub_10056CBC8();
    v19 = sub_100572948();
    (*(v4 + 8))(v9, v3);
    goto LABEL_10;
  }

  sub_100572818();
  (*(v4 + 16))(v7, v9, v3);
  if (qword_1006E4C60 != -1)
  {
    swift_once();
  }

  v21 = qword_1006FC3B8;
  sub_10056CBC8();
  v19 = sub_100572948();
  (*(v4 + 8))(v9, v3);
  (*(v17 + 8))(v13, v16);
LABEL_10:
  sub_10001036C(v15, &qword_1006EA938);
  return v19;
}

uint64_t (*Actions.Unpin.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x73616C732E6E6970;
  *(v0 + 24) = 0xE900000000000068;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x73616C732E6E6970;
  *(v1 + 24) = 0xE900000000000068;
  return sub_100109428;
}

uint64_t (*sub_100285810())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x73616C732E6E6970;
  *(v0 + 24) = 0xE900000000000068;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x73616C732E6E6970;
  *(v1 + 24) = 0xE900000000000068;
  return sub_100109428;
}

uint64_t Actions.UpdatePinAction.Context.menuItemTitle.getter()
{
  v0 = sub_10056D818();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Actions.UpdatePinAction.Context(0);
  sub_10056D828();
  v4 = MusicPin.Action.localizedTitle(for:)(v3);
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t Actions.UpdatePinAction.Context.menuItemState.getter()
{
  v0 = sub_10056D858();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10056D868();
  type metadata accessor for Actions.UpdatePinAction.Context(0);
  v4 = sub_10056D848();
  (*(v1 + 8))(v3, v0);
  return v4 & 1;
}

uint64_t sub_100285A80()
{
  v0 = sub_10056D818();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10056D828();
  v4 = MusicPin.Action.localizedTitle(for:)(v3);
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_100285B6C()
{
  v0 = sub_10056D858();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10056D868();
  v4 = sub_10056D848();
  (*(v1 + 8))(v3, v0);
  return v4 & 1;
}

uint64_t MusicPin.genericMusicItem.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10056D818();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10056D828();
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for MusicPin.Item.album(_:))
  {
    (*(v3 + 96))(v5, v2);
    v7 = sub_100571B78();
    (*(*(v7 - 8) + 32))(a1, v5, v7);
    v8 = &enum case for GenericMusicItem.album(_:);
  }

  else if (v6 == enum case for MusicPin.Item.artist(_:))
  {
    (*(v3 + 96))(v5, v2);
    v9 = sub_100571CF8();
    (*(*(v9 - 8) + 32))(a1, v5, v9);
    v8 = &enum case for GenericMusicItem.artist(_:);
  }

  else if (v6 == enum case for MusicPin.Item.musicVideo(_:))
  {
    (*(v3 + 96))(v5, v2);
    v10 = sub_1005713A8();
    (*(*(v10 - 8) + 32))(a1, v5, v10);
    v8 = &enum case for GenericMusicItem.musicVideo(_:);
  }

  else if (v6 == enum case for MusicPin.Item.playlist(_:))
  {
    (*(v3 + 96))(v5, v2);
    v11 = sub_1005722D8();
    (*(*(v11 - 8) + 32))(a1, v5, v11);
    v8 = &enum case for GenericMusicItem.playlist(_:);
  }

  else
  {
    if (v6 != enum case for MusicPin.Item.song(_:))
    {
      v17 = sub_10056D438();
      (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
      return (*(v3 + 8))(v5, v2);
    }

    (*(v3 + 96))(v5, v2);
    v12 = sub_100571A68();
    (*(*(v12 - 8) + 32))(a1, v5, v12);
    v8 = &enum case for GenericMusicItem.song(_:);
  }

  v13 = *v8;
  v14 = sub_10056D438();
  v15 = *(v14 - 8);
  (*(v15 + 104))(a1, v13, v14);
  return (*(v15 + 56))(a1, 0, 1, v14);
}

uint64_t sub_100286034(int a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v28 = a4;
  v26 = a2;
  v27 = a1;
  v5 = sub_100009DCC(&qword_1006E6B80);
  __chkstk_darwin(v5 - 8);
  v7 = &v25 - v6;
  v8 = sub_10056CC38();
  __chkstk_darwin(v8 - 8);
  v9 = sub_100572888();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v25 - v14;
  sub_100572818();
  (*(v10 + 16))(v13, v15, v9);
  if (qword_1006E4C60 != -1)
  {
    swift_once();
  }

  v16 = qword_1006FC3B8;
  sub_10056CBC8();
  v17 = sub_100572948();
  v19 = v18;
  (*(v10 + 8))(v15, v9);
  strcpy(v44, "DownloadPins");
  HIBYTE(v44[6]) = 0;
  v44[7] = -5120;
  v45 = 1;
  v46 = 0xD000000000000016;
  v47 = 0x80000001005B05B0;
  v20 = 0x497972617262694CLL;
  if (a3)
  {
    v20 = v26;
  }

  v21 = 0xEB000000006D6574;
  if (a3)
  {
    v21 = a3;
  }

  v48 = v17;
  v49 = v19;
  v22 = 0x776F4E20746F4ELL;
  if (v27)
  {
    v22 = 0x6E4F206E727554;
  }

  v50 = 0xD00000000000003CLL;
  v51 = 0x80000001005B05D0;
  v52 = &off_100685050;
  v53 = v20;
  v54 = v21;
  v55 = v22;
  v56 = 0xE700000000000000;
  v57 = (v27 & 1) == 0;
  strcpy(v30, "DownloadPins");
  HIBYTE(v30[6]) = 0;
  v30[7] = -5120;
  v31 = 1;
  v32 = 0xD000000000000016;
  v33 = 0x80000001005B05B0;
  v34 = v17;
  v35 = v19;
  v36 = 0xD00000000000003CLL;
  v37 = 0x80000001005B05D0;
  v38 = &off_100685050;
  v39 = v20;
  v40 = v21;
  v41 = v22;
  v42 = 0xE700000000000000;
  v43 = v57;

  sub_1001941D8(v44, &v29);
  sub_100194210(v30);
  if (qword_1006E4D30 != -1)
  {
    swift_once();
  }

  sub_10000CC8C(v28, v7, &qword_1006E6B80);
  v23 = type metadata accessor for Actions.MetricsReportingContext();
  if ((*(*(v23 - 8) + 48))(v7, 1, v23) == 1)
  {
    sub_10001036C(v7, &qword_1006E6B80);
  }

  else
  {

    sub_10017A920(v7, type metadata accessor for Actions.MetricsReportingContext);
  }

  _s9MusicCore26MetricsReportingControllerC17recordDialogEvent_11pageContextyAA0cH0V0G0V_SSSgtF_0(v44);

  return sub_100194210(v44);
}

uint64_t sub_100286494()
{
  v1 = *(sub_100009DCC(&qword_1006E6B80) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);

  v3 = v0 + v2;
  v4 = type metadata accessor for Actions.MetricsReportingContext();
  if (!(*(*(v4 - 8) + 48))(v0 + v2, 1, v4))
  {
    if (*(v3 + 8) >= 0xDuLL)
    {
    }

    v5 = v3 + *(v4 + 20);
    v6 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
    {

      v7 = *(v6 + 24);
      v8 = sub_10056C8A8();
      v9 = *(v8 - 8);
      v13 = v7;
      v10 = v5 + v7;
      v11 = v8;
      if (!(*(v9 + 48))(v10, 1, v8))
      {
        (*(v9 + 8))(v5 + v13, v11);
      }
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1002866E4(int a1)
{
  v3 = *(sub_100009DCC(&qword_1006E6B80) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_100286034(a1, v4, v5, v6);
}

uint64_t sub_100286764(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100286780()
{
  sub_10056D888();
  sub_10056D858();

  return sub_10028343C();
}

uint64_t sub_100286850()
{
  v1 = sub_10056D888();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_10056D858();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1002869A0()
{
  v2 = *(sub_10056D888() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_10056D858() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_10000CB98;

  return sub_100283B5C(v7, v0 + v3, v0 + v6);
}

uint64_t sub_100286AD4()
{
  v1 = sub_10056D858();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(sub_100009DCC(&qword_1006E6B80) - 8);
  v6 = (v4 + *(v5 + 80)) & ~*(v5 + 80);
  v20 = *(v5 + 64);
  v7 = sub_10056D888();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  if (*(v0 + 16))
  {
  }

  (*(v2 + 8))(v0 + v3, v1);
  v10 = v0 + v6;
  v11 = type metadata accessor for Actions.MetricsReportingContext();
  if (!(*(*(v11 - 8) + 48))(v0 + v6, 1, v11))
  {
    v19 = v6;
    if (*(v10 + 8) >= 0xDuLL)
    {
    }

    v12 = v10 + *(v11 + 20);
    v13 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
    {

      v18 = *(v13 + 24);
      v14 = sub_10056C8A8();
      v16 = *(v14 - 8);
      v17 = v14;
      if (!(*(v16 + 48))(v12 + v18, 1))
      {
        (*(v16 + 8))(v12 + v18, v17);
      }
    }

    v6 = v19;
  }

  (*(v8 + 8))(v0 + ((v6 + v20 + v9) & ~v9), v7);

  return swift_deallocObject();
}

uint64_t sub_100286E38()
{
  v2 = *(sub_10056D858() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(sub_100009DCC(&qword_1006E6B80) - 8);
  v6 = (v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_10056D888() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v0 + 16);
  v11 = *(v0 + 24);
  v12 = swift_task_alloc();
  *(v1 + 16) = v12;
  *v12 = v1;
  v12[1] = sub_1000116F0;

  return sub_100283C0C(v10, v11, v0 + v3, v0 + v6, v0 + v9);
}

uint64_t sub_100286FE0()
{

  return swift_deallocObject();
}

void sub_10028705C()
{
  if (!qword_1006EAA08)
  {
    sub_10056D818();
    v0 = sub_100573C28();
    if (!v1)
    {
      atomic_store(v0, &qword_1006EAA08);
    }
  }
}

uint64_t sub_1002870D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100009DCC(&qword_1006EA938);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1002871B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100009DCC(&qword_1006EA938);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_100287278()
{
  sub_10028705C();
  if (v0 <= 0x3F)
  {
    sub_1000D81FC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100287328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10056D888();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_10056D858();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_100287448(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10056D888();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_10056D858();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

unint64_t sub_100287550()
{
  result = sub_10056D888();
  if (v1 <= 0x3F)
  {
    result = sub_10056D858();
    if (v2 <= 0x3F)
    {
      result = sub_1000D81FC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1002875F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10028765C()
{
  result = qword_1006EAB80;
  if (!qword_1006EAB80)
  {
    sub_10056D888();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EAB80);
  }

  return result;
}

unint64_t sub_1002876B8()
{
  result = qword_1006EAB98;
  if (!qword_1006EAB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EAB98);
  }

  return result;
}

uint64_t sub_10028770C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_100009DCC(&qword_1006E6B80) - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  v7 = v0 + v6;
  v8 = type metadata accessor for Actions.MetricsReportingContext();
  if (!(*(*(v8 - 8) + 48))(v0 + v6, 1, v8))
  {
    if (*(v7 + 8) >= 0xDuLL)
    {
    }

    v9 = v7 + *(v8 + 20);
    v10 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
    {

      v11 = *(v10 + 24);
      v12 = sub_10056C8A8();
      v16 = *(v12 - 8);
      v17 = v11;
      v13 = v9 + v11;
      v14 = v12;
      if (!(*(v16 + 48))(v13, 1, v12))
      {
        (*(v16 + 8))(v9 + v17, v14);
      }
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1002879CC(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = *(*(v5 - 8) + 64);
  v7 = (*(*(v5 - 8) + 80) + 56) & ~*(*(v5 - 8) + 80);
  v8 = *(sub_100009DCC(&qword_1006E6B80) - 8);
  v9 = (v7 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v2[4];
  v11 = v2[5];
  v12 = v2[6];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_10000CB98;

  return sub_10027FEC0(a1, a2, v10, v11, v12, v2 + v7, v2 + v9, v5);
}

id MPCPlaybackEngine.init(configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = sub_100572898();
  v8 = [v6 initWithPlayerID:v7];

  v9 = v8;
  sub_10028B080(a3, a4);

  return v9;
}

uint64_t MPCPlaybackEngine.configuration.getter()
{
  v1 = [v0 playerID];
  v2 = sub_1005728D8();

  sub_10028AF98(v0);
  v3 = [v0 fallbackPlaybackIntent];
  return v2;
}

void MPCPlaybackEngine.configuration.setter(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_10028B080(a3, a4);
}

void (*MPCPlaybackEngine.configuration.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = [v1 playerID];
  v6 = sub_1005728D8();
  v8 = v7;

  v9 = sub_10028AF98(v1);
  v10 = [v1 fallbackPlaybackIntent];
  *v4 = v6;
  v4[1] = v8;
  v4[2] = v9;
  v4[3] = v10;
  return sub_100287E68;
}

void sub_100287E68(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (a2)
  {
    v4 = v3;

    sub_10028B080(v5, v3);

    v3 = v2[3];
  }

  else
  {
    sub_10028B080(*(*a1 + 16), v3);
  }

  free(v2);
}

void sub_100287F18()
{
  v0 = sub_1000D126C(&off_100683238);
  v1 = [objc_allocWithZone(MPModelLibraryRequest) init];
  v2 = sub_100572898();
  [v1 setLabel:v2];

  v3 = [objc_opt_self() kindWithVariants:3];
  [v1 setItemKind:v3];

  v4 = [v1 playbackIntentWithStartItemIdentifiers:0];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    [v6 setShuffleMode:1];
  }

  static MPCPlaybackEngine.Configuration.systemMusic = 0x636973754DLL;
  *algn_1006FC878 = 0xE500000000000000;
  qword_1006FC880 = v0;
  unk_1006FC888 = v5;
}

uint64_t *MPCPlaybackEngine.Configuration.systemMusic.unsafeMutableAddressor()
{
  if (qword_1006E4F70 != -1)
  {
    swift_once();
  }

  return &static MPCPlaybackEngine.Configuration.systemMusic;
}

uint64_t static MPCPlaybackEngine.Configuration.systemMusic.getter()
{
  if (qword_1006E4F70 != -1)
  {
    swift_once();
  }

  v0 = static MPCPlaybackEngine.Configuration.systemMusic;
  v1 = unk_1006FC888;

  v2 = v1;
  return v0;
}

Swift::Int MPCPlayerRequestTracklistRange.hashValue.getter(Swift::UInt a1, Swift::UInt a2)
{
  sub_100574678();
  sub_100574688(a1);
  sub_100574688(a2);
  return sub_1005746C8();
}

Swift::Int sub_100288228()
{
  v1 = *v0;
  v2 = v0[1];
  sub_100574678();
  sub_100574688(v1);
  sub_100574688(v2);
  return sub_1005746C8();
}

void sub_100288284()
{
  v1 = v0[1];
  sub_100574688(*v0);
  sub_100574688(v1);
}

Swift::Int sub_1002882C0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_100574678();
  sub_100574688(v1);
  sub_100574688(v2);
  return sub_1005746C8();
}

id MPCPlayerResponse.playingModelObject.getter()
{
  v1 = [v0 tracklist];
  v2 = [v1 playingItem];

  if (!v2)
  {
    return 0;
  }

  v3 = [v2 metadataObject];

  if (!v3)
  {
    return 0;
  }

  v4 = [v3 innermostModelObject];

  return v4;
}

void sub_1002883C0()
{
  sub_100009DCC(&qword_1006E9140);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10057B500;
  *(inited + 32) = sub_1005728D8();
  *(inited + 40) = v1;
  v2 = objc_opt_self();
  *(inited + 48) = [v2 emptyPropertySet];
  *(inited + 56) = sub_1005728D8();
  *(inited + 64) = v3;
  *(inited + 72) = [v2 emptyPropertySet];
  sub_1000F41EC(inited);
  swift_setDeallocating();
  sub_100009DCC(&qword_1006E9148);
  swift_arrayDestroy();
  v4 = objc_allocWithZone(MPPropertySet);
  isa = sub_100572D08().super.isa;
  sub_1000D3B98(0, &qword_1006EADF0);
  v6 = sub_100572688().super.isa;

  v7 = [v4 initWithProperties:isa relationships:v6];

  static MPCPlayerResponse.playStateSectionProperties = v7;
}

uint64_t *MPCPlayerResponse.playStateSectionProperties.unsafeMutableAddressor()
{
  if (qword_1006E4F78 != -1)
  {
    swift_once();
  }

  return &static MPCPlayerResponse.playStateSectionProperties;
}

id static MPCPlayerResponse.playStateSectionProperties.getter()
{
  if (qword_1006E4F78 != -1)
  {
    swift_once();
  }

  v1 = static MPCPlayerResponse.playStateSectionProperties;

  return v1;
}

id sub_100288604()
{
  v1 = v0;
  v2 = sub_100009DCC(&qword_1006EADE8);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v21 - v6;
  v8 = [v1 tracklist];
  v9 = [v8 playingItem];

  if (v9)
  {
    v10 = [v9 metadataObject];

    if (!v10)
    {
      return 0;
    }

    v11 = [v1 tracklist];
    v12 = [v11 playingItemIndexPath];

    if (v12)
    {
      sub_10056CDB8();

      v13 = sub_10056CE18();
      (*(*(v13 - 8) + 56))(v5, 0, 1, v13);
    }

    else
    {
      v13 = sub_10056CE18();
      (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
    }

    sub_10028B5C0(v5, v7);
    sub_10056CE18();
    v15 = *(v13 - 8);
    if ((*(v15 + 48))(v7, 1, v13) != 1)
    {
      v16 = sub_10056CDF8();
      (*(v15 + 8))(v7, v13);
      v17 = [v1 tracklist];
      v18 = [v17 items];

      v19 = [v18 sectionAtIndex:v16];
      v20 = [v19 metadataObject];

      [v1 state];
      return v20;
    }

    sub_10028B630(v7);
  }

  return 0;
}

uint64_t MPCPlayerResponse.playState(for:in:)(void *a1, void *a2)
{
  v4 = sub_100288604();
  if (!v5)
  {
    return 0;
  }

  v7 = v4;
  v8 = v5;
  v9 = v6;
  v10 = [v5 identifiers];
  v11 = [a1 identifiers];
  v12 = [v10 intersectsSet:v11];

  if (!v12)
  {
    goto LABEL_9;
  }

  if (v7)
  {
    if (!a2)
    {

      return 0;
    }

    v13 = a2;
    v14 = v7;
    v15 = v13;
    v7 = v14;
    if ([v7 type] != 2 || (v16 = objc_msgSend(v7, "album")) == 0)
    {

      goto LABEL_14;
    }

    v17 = v16;
    v18 = [v16 identifiers];
    v19 = [v15 identifiers];
    v20 = [v18 intersectsSet:v19];

    if (v20)
    {

      return v9;
    }

LABEL_9:

LABEL_14:
    return 0;
  }

  if (a2)
  {
    return 0;
  }

  return v9;
}

{
  v4 = sub_100288604();
  if (v5)
  {
    v7 = v4;
    v8 = v5;
    v9 = v6;
    v10 = [v5 innermostModelObject];
    v11 = [v10 identifiers];

    v12 = [v8 identifiers];
    v13 = [v11 unionSet:v12];

    v14 = [a1 identifiers];
    LODWORD(v12) = [v13 intersectsSet:v14];

    if (v12)
    {
      if (!v7)
      {
        v9 = 0;
        v7 = v8;
        goto LABEL_12;
      }

      v7 = v7;
      if ([v7 type] != 4 || (v15 = objc_msgSend(v7, "playlist")) == 0)
      {

        goto LABEL_11;
      }

      v16 = v15;
      v17 = [v15 identifiers];
      v18 = [a2 identifiers];
      v19 = [v17 intersectsSet:v18];

      if (v19)
      {

        v7 = v8;
LABEL_12:

        return v9;
      }
    }

LABEL_11:
    v9 = 0;
    goto LABEL_12;
  }

  return 0;
}

uint64_t MPCPlayerResponseTracklist.playingItemSupportsTimeSyncedLyrics.getter()
{
  v1 = v0;
  v2 = sub_10056CE18();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v7 = __chkstk_darwin(v6).n128_u64[0];
  v9 = &v21[-v8];
  result = [v1 playingItem];
  if (result)
  {
    v11 = result;
    [result duration];
    if (v21[56] == 1)
    {
LABEL_3:

      return 0;
    }

    v12 = [v1 playingItemIndexPath];
    if (v12)
    {
      v13 = v12;
      sub_10056CDB8();

      (*(v3 + 32))(v9, v5, v2);
      v14 = [v1 items];
      v15 = [v14 sectionAtIndex:sub_10056CDF8()];

      v16 = [v15 metadataObject];
      if (v16)
      {
        v17 = [v16 innermostModelObject];
        objc_opt_self();
        v18 = swift_dynamicCastObjCClass();
        if (v18)
        {
          v19 = v18;
          if ([v18 type] == 4)
          {
            (*(v3 + 8))(v9, v2);

            goto LABEL_3;
          }

          v20 = [v19 subtype];

          (*(v3 + 8))(v9, v2);
          if (v20 == 1)
          {
            return 0;
          }
        }

        else
        {

          (*(v3 + 8))(v9, v2);
        }

        return 1;
      }

      (*(v3 + 8))(v9, v2);
    }

    return 1;
  }

  return result;
}

id MPCPlayerResponseTracklist.currentPlayEvent.getter()
{
  v1 = v0;
  v2 = sub_10056CE18();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = __chkstk_darwin(v6).n128_u64[0];
  v9 = &aBlock[-1] - v8;
  result = [v1 playingItemIndexPath];
  if (result)
  {
    v11 = result;
    sub_10056CDB8();

    (*(v3 + 32))(v9, v5, v2);
    v12 = [v1 items];
    v13 = [v12 sectionAtIndex:sub_10056CDF8()];

    v14 = [v13 metadataObject];
    if (v14)
    {
      v23 = 0;
      v15 = [v14 identifiers];
      __chkstk_darwin(v15);
      *(&v21 - 2) = v14;
      *(&v21 - 1) = &v23;
      v16 = objc_allocWithZone(MPModelPlayEvent);
      v17 = swift_allocObject();
      *(v17 + 16) = sub_10028B16C;
      *(v17 + 24) = &v21 - 4;
      aBlock[4] = sub_1001DA9E4;
      aBlock[5] = v17;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1001D65E4;
      aBlock[3] = &unk_1006969B8;
      v18 = _Block_copy(aBlock);

      v19 = [v16 initWithIdentifiers:v15 block:v18];

      _Block_release(v18);
      (*(v3 + 8))(v9, v2);

      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
      }

      else if (v23 == 1)
      {

        return 0;
      }

      else
      {
        return v19;
      }
    }

    else
    {
      (*(v3 + 8))(v9, v2);
      return 0;
    }
  }

  return result;
}

void sub_100289318(uint64_t a1, void *a2, _BYTE *a3)
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClassUnconditional();
  v10 = [a2 anyObject];
  if (!v10)
  {
    goto LABEL_14;
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      [v5 setPlaylist:v7];
      goto LABEL_10;
    }

    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      [v5 setArtist:v8];
      goto LABEL_10;
    }

    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      [v5 setRadioStation:v9];
      goto LABEL_10;
    }

LABEL_14:
    *a3 = 1;
    return;
  }

  [v5 setAlbum:v6];
LABEL_10:
}

id MPCVocalsControlCommand.isTrulyActive.getter()
{
  result = [v0 isActive];
  if (result)
  {
    return ([v0 isDisabled] ^ 1);
  }

  return result;
}

id MPCPlayerResponse.VideoContext.__allocating_init(playerResponse:)(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = [a1 videoOutput];
  if (v2)
  {
    v3 = swift_dynamicCastObjCProtocolConditional();
    if (v3)
    {
      v4 = v3;
      swift_getObjectType();
      sub_1000D3B98(0, &qword_1006E93C0);
      if (swift_dynamicCastMetatype())
      {
        type metadata accessor for MPCPlayerResponse.VideoContext();
        v2 = swift_allocObject();
        MPCPlayerResponse.VideoContext.init(output:)(v4);
        goto LABEL_6;
      }
    }

    swift_unknownObjectRelease();
    return 0;
  }

LABEL_6:

  return v2;
}

uint64_t MPCPlayerResponse.VideoContext.__allocating_init(output:)(void *a1)
{
  v2 = swift_allocObject();
  MPCPlayerResponse.VideoContext.init(output:)(a1);
  return v2;
}

uint64_t MPCPlayerResponse.VideoContext.init(output:)(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtCE9MusicCoreCSo17MPCPlayerResponse12VideoContext_binding;
  *(v1 + OBJC_IVAR____TtCE9MusicCoreCSo17MPCPlayerResponse12VideoContext_binding) = 0;
  *(v1 + OBJC_IVAR____TtCE9MusicCoreCSo17MPCPlayerResponse12VideoContext_output) = a1;
  v4 = a1;
  [v4 videoBounds];
  swift_beginAccess();
  type metadata accessor for CGRect(0);
  sub_10056E438();
  swift_endAccess();
  [v4 isReadyForDisplay];
  swift_beginAccess();
  sub_10056E438();
  swift_endAccess();
  sub_100009DCC(&unk_1006E84D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10057B500;
  KeyPath = swift_getKeyPath();
  *(inited + 56) = sub_100009DCC(&qword_1006EAC28);
  *(inited + 64) = &protocol witness table for KeyValueObservationTrigger<A, B>;
  *(inited + 32) = v4;
  *(inited + 40) = KeyPath;
  v7 = swift_getKeyPath();
  *(inited + 96) = sub_100009DCC(&unk_1006EAC30);
  *(inited + 104) = &protocol witness table for KeyValueObservationTrigger<A, B>;
  *(inited + 72) = v4;
  *(inited + 80) = v7;
  v8 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for Whitetail.Binding();
  swift_allocObject();
  v9 = v4;

  v10 = Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(inited, 0, sub_10028B2A4, v8);

  *(v2 + v3) = v10;

  return v2;
}

uint64_t MPCPlayerResponse.VideoContext.videoBounds.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10056E488();
}

uint64_t MPCPlayerResponse.VideoContext.isReadyForDisplay.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10056E488();
}

uint64_t sub_100289968()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = OBJC_IVAR____TtCE9MusicCoreCSo17MPCPlayerResponse12VideoContext_output;
    swift_beginAccess();
    [*(v1 + v2) videoBounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v11 = [*(v1 + v2) isReadyForDisplay];
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10056E478();

    v15.origin.x = v4;
    v15.origin.y = v6;
    v15.size.width = v8;
    v15.size.height = v10;
    if (!CGRectEqualToRect(v15, v14))
    {
      v16.origin.x = v4;
      v16.origin.y = v6;
      v16.size.width = v8;
      v16.size.height = v10;
      Width = CGRectGetWidth(v16);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10056E478();

      if (vabdd_f64(Width, CGRectGetWidth(v14)) > 1.0)
      {
        v17.origin.x = v4;
        v17.origin.y = v6;
        v17.size.width = v8;
        v17.size.height = v10;
        Height = CGRectGetHeight(v17);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_10056E478();

        if (vabdd_f64(Height, CGRectGetHeight(v14)) > 1.0)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          LOBYTE(v14.origin.x) = LOBYTE(v4);

          sub_10056E488();
        }
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_10056E478();

    if (v11 == LOBYTE(v14.origin.x))
    {
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      return sub_10056E488();
    }
  }

  return result;
}

uint64_t MPCPlayerResponse.VideoContext.isReadyForDisplay.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  return v1;
}

uint64_t sub_100289CBC@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  *a1 = v3;
  return result;
}

uint64_t sub_100289D3C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10056E488();
}

void (*MPCPlayerResponse.VideoContext.isReadyForDisplay.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_10056E468();
  return sub_10028B698;
}

uint64_t MPCPlayerResponse.VideoContext.$isReadyForDisplay.setter(uint64_t a1)
{
  v2 = sub_100009DCC(&qword_1006EAC40);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_100009DCC(&qword_1006EA0D8);
  sub_10056E458();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MPCPlayerResponse.VideoContext.$isReadyForDisplay.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_100009DCC(&qword_1006EAC40);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtCE9MusicCoreCSo17MPCPlayerResponse12VideoContext__isReadyForDisplay;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100009DCC(&qword_1006EA0D8);
  sub_10056E448();
  swift_endAccess();
  return sub_10028B69C;
}

double MPCPlayerResponse.VideoContext.videoBounds.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  return v1;
}

double sub_10028A190@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_10028A210()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10056E488();
}

void (*MPCPlayerResponse.VideoContext.videoBounds.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_10056E468();
  return sub_10028A32C;
}

uint64_t sub_10028A34C(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  sub_100009DCC(a2);
  sub_10056E448();
  return swift_endAccess();
}

uint64_t MPCPlayerResponse.VideoContext.$videoBounds.setter(uint64_t a1)
{
  v2 = sub_100009DCC(&qword_1006EAC50);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_100009DCC(&qword_1006EAC48);
  sub_10056E458();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MPCPlayerResponse.VideoContext.$videoBounds.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_100009DCC(&qword_1006EAC50);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtCE9MusicCoreCSo17MPCPlayerResponse12VideoContext__videoBounds;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100009DCC(&qword_1006EAC48);
  sub_10056E448();
  swift_endAccess();
  return sub_10028A66C;
}

void sub_10028A670(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    sub_10056E458();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_10056E458();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

id MPCPlayerResponse.VideoContext.output.getter()
{
  v1 = OBJC_IVAR____TtCE9MusicCoreCSo17MPCPlayerResponse12VideoContext_output;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void MPCPlayerResponse.VideoContext.output.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE9MusicCoreCSo17MPCPlayerResponse12VideoContext_output;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

unint64_t MPCPlayerResponse.VideoContext.description.getter()
{
  v1 = v0;
  sub_100573ED8(40);

  v2 = OBJC_IVAR____TtCE9MusicCoreCSo17MPCPlayerResponse12VideoContext_output;
  swift_beginAccess();
  v3 = *(v1 + v2);
  swift_getObjectType();
  v4 = v3;
  swift_getWitnessTable();
  v6._countAndFlagsBits = sub_100572988();
  sub_100572A98(v6);

  return 0xD000000000000026;
}

uint64_t MPCPlayerResponse.VideoContext.deinit()
{
  v1 = OBJC_IVAR____TtCE9MusicCoreCSo17MPCPlayerResponse12VideoContext__isReadyForDisplay;
  v2 = sub_100009DCC(&qword_1006EA0D8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCE9MusicCoreCSo17MPCPlayerResponse12VideoContext__videoBounds;
  v4 = sub_100009DCC(&qword_1006EAC48);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t MPCPlayerResponse.VideoContext.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCE9MusicCoreCSo17MPCPlayerResponse12VideoContext__isReadyForDisplay;
  v2 = sub_100009DCC(&qword_1006EA0D8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCE9MusicCoreCSo17MPCPlayerResponse12VideoContext__videoBounds;
  v4 = sub_100009DCC(&qword_1006EAC48);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

id MPCPlayerResponse.videoContext.getter()
{
  result = [v0 videoOutput];
  if (result)
  {
    v2 = swift_dynamicCastObjCProtocolConditional();
    if (v2 && (v3 = v2, swift_getObjectType(), sub_1000D3B98(0, &qword_1006E93C0), swift_dynamicCastMetatype()))
    {
      type metadata accessor for MPCPlayerResponse.VideoContext();
      v4 = swift_allocObject();
      MPCPlayerResponse.VideoContext.init(output:)(v3);
      return v4;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

uint64_t _sSo17MPCPlaybackEngineC9MusicCoreE13ConfigurationV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2, Swift::Int a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  if (a1 == a5 && a2 == a6 || (sub_100574498()) && (sub_100248A28(a3, a7))
  {
    if (a4)
    {
      if (a8)
      {
        sub_1000D3B98(0, &qword_1006EADF8);
        v12 = a8;
        v13 = a4;
        v14 = sub_100573A58();

        if (v14)
        {
          return 1;
        }
      }
    }

    else if (!a8)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t _sSo17MPCPlayerResponseC9MusicCoreE12VideoContextC2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_1000D3B98(0, &qword_1006E93C0);
  v4 = OBJC_IVAR____TtCE9MusicCoreCSo17MPCPlayerResponse12VideoContext_output;
  swift_beginAccess();
  v5 = *(a1 + v4);
  v6 = OBJC_IVAR____TtCE9MusicCoreCSo17MPCPlayerResponse12VideoContext_output;
  swift_beginAccess();
  v7 = *(a2 + v6);
  v8 = v5;
  v9 = v7;
  v10 = sub_100573A58();

  if ((v10 & 1) == 0)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  result = CGRectEqualToRect(v12, v12);
  if (!result)
  {
    return result;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  if (LOBYTE(v12.origin.x) != 1)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  return LOBYTE(v12.origin.x);
}

void *sub_10028AF98(void *a1)
{
  v8 = &_swiftEmptySetSingleton;
  if ([a1 isSystemMusicApplication])
  {
    sub_100250B24(&v3, 0);
  }

  if ([a1 isAudioAnalyzerEnabled])
  {
    sub_100250B24(&v4, 1);
  }

  if ([a1 isPictureInPictureSupported])
  {
    sub_100250B24(&v5, 2);
  }

  if ([a1 isVideoSupported])
  {
    sub_100250B24(&v6, 3);
  }

  if ([a1 isStateRestorationSupported])
  {
    sub_100250B24(&v7, 4);
  }

  return v8;
}

id sub_10028B080(uint64_t a1, uint64_t a2)
{
  [v2 setSystemMusicApplication:{sub_1001B5D68(0, a1)}];
  [v2 setAudioAnalyzerEnabled:{sub_1001B5D68(1u, a1)}];
  [v2 setPictureInPictureSupported:{sub_1001B5D68(2u, a1)}];
  [v2 setVideoSupported:{sub_1001B5D68(3u, a1)}];
  [v2 setStateRestorationSupported:{sub_1001B5D68(4u, a1)}];

  return [v2 setFallbackPlaybackIntent:a2];
}

uint64_t sub_10028B184(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for MPCPlayerResponse.VideoContext()
{
  result = qword_1006EACA0;
  if (!qword_1006EACA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_10028B1F4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isReadyForDisplay];
  *a2 = result;
  return result;
}

id sub_10028B234@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 videoBounds];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

uint64_t sub_10028B26C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

unint64_t sub_10028B2C0()
{
  result = qword_1006EAC58;
  if (!qword_1006EAC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EAC58);
  }

  return result;
}

unint64_t sub_10028B318()
{
  result = qword_1006EAC60;
  if (!qword_1006EAC60)
  {
    sub_100010324(&qword_1006EAC68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EAC60);
  }

  return result;
}

unint64_t sub_10028B380()
{
  result = qword_1006EAC70;
  if (!qword_1006EAC70)
  {
    type metadata accessor for MPCPlayerRequestTracklistRange(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EAC70);
  }

  return result;
}

uint64_t sub_10028B3D8(uint64_t a1, int a2)
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

uint64_t sub_10028B420(uint64_t result, int a2, int a3)
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

void sub_10028B488()
{
  sub_10026C1BC();
  if (v0 <= 0x3F)
  {
    sub_10028B568();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10028B568()
{
  if (!qword_1006EACB8)
  {
    type metadata accessor for CGRect(255);
    v0 = sub_10056E4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1006EACB8);
    }
  }
}

uint64_t sub_10028B5C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006EADE8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10028B630(uint64_t a1)
{
  v2 = sub_100009DCC(&qword_1006EADE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Player.SnapshotController.__allocating_init(windowScene:player:)(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  Player.SnapshotController.init(windowScene:player:)(a1, a2);
  return v4;
}

uint64_t Player.SnapshotController.init(windowScene:player:)(void *a1, uint64_t a2)
{
  v3 = v2;
  swift_unknownObjectWeakInit();
  *(v3 + 72) = 0;
  *(v3 + 32) = _swiftEmptyArrayStorage;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 64) = 0;
  *(v3 + 80) = 1;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  *(v3 + 24) = a2;
  sub_100009DCC(&qword_1006E8B80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100582490;
  sub_100009DCC(&unk_1006E84D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10057B500;
  v7 = CFRange.init(_:)(UISceneDidEnterBackgroundNotification);
  *(inited + 56) = &type metadata for NotificationTrigger;
  *(inited + 64) = &protocol witness table for NotificationTrigger;
  *(inited + 32) = v7;
  v8 = CFRange.init(_:)(UISceneWillEnterForegroundNotification);
  *(inited + 96) = &type metadata for NotificationTrigger;
  *(inited + 104) = &protocol witness table for NotificationTrigger;
  *(inited + 72) = v8;
  v9 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for Whitetail.Binding();
  swift_allocObject();

  v10 = UISceneDidEnterBackgroundNotification;
  v11 = UISceneWillEnterForegroundNotification;

  v12 = Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(inited, 1, sub_10028BB68, v9);

  *(v5 + 32) = v12;
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_10057B510;
  v14 = CFRange.init(_:)(UIScreenBrightnessDidChangeNotification);
  *(v13 + 56) = &type metadata for NotificationTrigger;
  *(v13 + 64) = &protocol witness table for NotificationTrigger;
  *(v13 + 32) = v14;
  v15 = swift_allocObject();
  swift_weakInit();
  swift_allocObject();
  v16 = UIScreenBrightnessDidChangeNotification;

  v17 = Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(v13, 1, sub_10028C324, v15);

  *(v5 + 40) = v17;
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_10057B510;
  v19 = CFRange.init(_:)(UIApplicationProtectedDataDidBecomeAvailable);
  *(v18 + 56) = &type metadata for NotificationTrigger;
  *(v18 + 64) = &protocol witness table for NotificationTrigger;
  *(v18 + 32) = v19;
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = UIApplicationProtectedDataDidBecomeAvailable;

  swift_allocObject();

  v22 = Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(v18, 1, sub_10028C990, v20);

  *(v5 + 48) = v22;

  *(v3 + 32) = v5;

  return v3;
}

uint64_t sub_10028BAD8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10028BB10()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10028BB70();
  }

  return result;
}

void sub_10028BB70()
{
  v1 = v0;
  v2 = sub_100009DCC(&qword_1006E75F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v36 - v3;
  v5 = sub_100009DCC(&unk_1006EDF80);
  v38 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v36 - v6;
  v8 = sub_100009DCC(&qword_1006EAED8);
  v39 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v36 - v9;
  v11 = sub_100009DCC(&qword_1006EAEE0);
  v40 = *(v11 - 8);
  v41 = v11;
  __chkstk_darwin(v11);
  v13 = &v36 - v12;
  v14 = sub_100009DCC(&qword_1006EAEE8);
  v42 = *(v14 - 8);
  v43 = v14;
  __chkstk_darwin(v14);
  v16 = &v36 - v15;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v18 = Strong, v19 = [Strong activationState], v18, v19 == 2))
  {
    if (*(v1 + 40))
    {
      return;
    }

    if (qword_1006E4FA0 != -1)
    {
      swift_once();
    }

    v37 = v4;
    v20 = sub_10056DF88();
    sub_10000C49C(v20, qword_1006FC8E8);
    v21 = sub_10056DF68();
    v22 = sub_100573448();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "[📸👁️] App is backgrounded: Observing for now playing changes", v23, 2u);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_10056E478();

    v24 = *(v1 + 48);
    *(v1 + 48) = v44;

    swift_beginAccess();
    sub_100009DCC(&qword_1006EB170);
    sub_10056E448();
    swift_endAccess();
    sub_100010BC0(&qword_1006EB650, &unk_1006EDF80);
    sub_10056E4F8();
    (*(v38 + 8))(v7, v5);
    sub_100010BC0(&qword_1006EAEF0, &qword_1006EAED8);
    sub_10028D60C();
    sub_10056E508();
    (*(v39 + 8))(v10, v8);
    sub_1000D3B98(0, &qword_1006E84A0);
    v25 = sub_1005735E8();
    v44 = v25;
    v26 = sub_1005735C8();
    v27 = v37;
    (*(*(v26 - 8) + 56))(v37, 1, 1, v26);
    sub_100010BC0(&qword_1006EAF10, &qword_1006EAEE0);
    sub_10028D6BC(&qword_1006EB620, &qword_1006E84A0);
    v28 = v41;
    sub_10056E4E8();
    sub_10001036C(v27, &qword_1006E75F0);

    (*(v40 + 8))(v13, v28);
    swift_allocObject();
    swift_weakInit();
    sub_100010BC0(&qword_1006EAF18, &qword_1006EAEE8);
    v29 = v43;
    v30 = sub_10056E518();

    (*(v42 + 8))(v16, v29);
    *(v1 + 40) = v30;
  }

  else
  {
    if (qword_1006E4FA0 != -1)
    {
      swift_once();
    }

    v31 = sub_10056DF88();
    sub_10000C49C(v31, qword_1006FC8E8);
    v32 = sub_10056DF68();
    v33 = sub_100573448();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "[📸👁️] App is foregrounded: Stopping now playing changes observation", v34, 2u);
    }

    v35 = *(v1 + 64);
    *(v1 + 64) = 0;
    if (v35 == 1)
    {
      *(v1 + 72) = 0;
      *(v1 + 80) = 1;
    }

    *(v1 + 40) = 0;
  }
}

void sub_10028C344(char a1)
{
  if (*(v1 + 64) == 1)
  {
    v3 = objc_opt_self();
    v4 = [v3 sharedApplication];
    v5 = [v4 isProtectedDataAvailable];

    if (v5)
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong && (v7 = Strong, v8 = [Strong screen], v7, objc_msgSend(v8, "brightness"), v10 = v9, v8, v10 > 0.0))
      {
        v11 = *(v1 + 64);
        *(v1 + 64) = 0;
        if (v11 == 1)
        {
          *(v1 + 72) = 0;
          *(v1 + 80) = 1;
        }

        if (qword_1006E4FA0 != -1)
        {
          swift_once();
        }

        v12 = sub_10056DF88();
        sub_10000C49C(v12, qword_1006FC8E8);
        v13 = sub_10056DF68();
        v14 = sub_100573448();
        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          v46 = v16;
          *v15 = 134349314;
          *(v15 + 4) = v10;
          *(v15 + 12) = 2080;
          v17 = [v3 sharedApplication];
          v18 = [v17 isProtectedDataAvailable];

          if (v18)
          {
            v19 = 0x64656B636F6C6E75;
          }

          else
          {
            v19 = 0x64656B636F6CLL;
          }

          if (v18)
          {
            v20 = 0xE800000000000000;
          }

          else
          {
            v20 = 0xE600000000000000;
          }

          v21 = sub_1000C9784(v19, v20, &v46);

          *(v15 + 14) = v21;
          _os_log_impl(&_mh_execute_header, v13, v14, "[📸] Brightness is at %{public}f, device is %s", v15, 0x16u);
          sub_100010474(v16);
        }

        v22 = sub_10056DF68();
        v23 = sub_100573448();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          v46 = v25;
          *v24 = 136446210;
          v26 = sub_100572978();
          v28 = sub_1000C9784(v26, v27, &v46);

          *(v24 + 4) = v28;
          _os_log_impl(&_mh_execute_header, v22, v23, "[📸✅:%{public}s] Taking Snapshot!", v24, 0xCu);
          sub_100010474(v25);
        }

        v29 = [v3 sharedApplication];
        [v29 _updateSnapshotForBackgroundApplication:0];
      }

      else
      {
        if (qword_1006E4FA0 != -1)
        {
          swift_once();
        }

        v37 = sub_10056DF88();
        sub_10000C49C(v37, qword_1006FC8E8);
        v38 = sub_10056DF68();
        v39 = sub_100573448();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v46 = v41;
          *v40 = 136446210;
          v42 = sub_100572978();
          v44 = sub_1000C9784(v42, v43, &v46);

          *(v40 + 4) = v44;
          _os_log_impl(&_mh_execute_header, v38, v39, "[📸❌:%{public}s] Skipping: Screen brightness is 0", v40, 0xCu);
          sub_100010474(v41);
        }
      }
    }

    else
    {
      if (qword_1006E4FA0 != -1)
      {
        swift_once();
      }

      v30 = sub_10056DF88();
      sub_10000C49C(v30, qword_1006FC8E8);
      oslog = sub_10056DF68();
      v31 = sub_100573448();
      if (os_log_type_enabled(oslog, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v47[0] = v33;
        *v32 = 136446210;
        LOBYTE(v46) = a1;
        v34 = sub_100572978();
        v36 = sub_1000C9784(v34, v35, v47);

        *(v32 + 4) = v36;
        _os_log_impl(&_mh_execute_header, oslog, v31, "[📸❌:%{public}s] Skipping Snapshot Request: Device is locked", v32, 0xCu);
        sub_100010474(v33);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_10028C930(uint64_t a1, char a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10028C344(a2);
  }

  return result;
}

void sub_10028C9B0(void *a1, char a2)
{
  v5 = sub_100009DCC(&qword_1006E6420);
  __chkstk_darwin(v5 - 8);
  v7 = &v31 - v6;
  v8 = *(v2 + 48);
  v32 = v8;
  if ((a2 & 1) == 0)
  {
    if (v8)
    {
      v11 = [v8 tracklist];
      v12 = [v11 playingItem];

      if (!a1)
      {
        v13 = 0;
        if (!v12)
        {
          v12 = 0;
          v14 = 0;
LABEL_24:
          if ((sub_10028CDE4(v12, v14) & 1) == 0)
          {

LABEL_30:
            v29 = *(v2 + 48);
            *(v2 + 48) = a1;
            v30 = a1;

            return;
          }

          v13 = v14;
LABEL_26:
          sub_100572F18();
          v25 = sub_100572F48();
          (*(*(v25 - 8) + 56))(v7, 0, 1, v25);
          v26 = swift_allocObject();
          *(v26 + 16) = &unk_10058FEE8;
          *(v26 + 24) = v2;

          v27 = static Task<>.delayed(by:priority:task:)(v7, &unk_10058FEF8, v26, &type metadata for () + 8, 1.0);

          sub_10001036C(v7, &qword_1006E6420);
          v28 = *(v2 + 56);
          *(v2 + 56) = v27;
          if (v28)
          {

            sub_100009DCC(&qword_1006E9B60);
            sub_100572FB8();
          }

          goto LABEL_30;
        }

        goto LABEL_11;
      }
    }

    else
    {
      v12 = 0;
      v14 = 0;
      if (!a1)
      {
        goto LABEL_24;
      }
    }

    v15 = [a1 tracklist];
    v13 = [v15 playingItem];

    if (!v12)
    {
      v19 = 0;
      v17 = 0;
      v14 = 0;
      if (!v13)
      {
        goto LABEL_24;
      }

      goto LABEL_15;
    }

LABEL_11:
    v16 = [v12 contentItemIdentifier];
    v17 = sub_1005728D8();
    v19 = v18;

    if (!v13)
    {
      v14 = 0;
      if (!v19)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    }

LABEL_15:
    v20 = [v13 contentItemIdentifier];
    v21 = sub_1005728D8();
    v23 = v22;

    if (v19)
    {
      if (v23)
      {
        if (v17 == v21 && v19 == v23)
        {

          v14 = v13;
        }

        else
        {
          v24 = sub_100574498();

          v14 = v13;
          if ((v24 & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        goto LABEL_24;
      }
    }

    else
    {
      v14 = v13;
      if (!v23)
      {
        goto LABEL_24;
      }
    }

LABEL_22:

    goto LABEL_26;
  }

  *(v2 + 48) = a1;
  v9 = a1;
  v10 = v32;
}

uint64_t sub_10028CD80(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10028C9B0(v1, 0);
  }

  return result;
}

uint64_t sub_10028CDE4(void *a1, id a2)
{
  if (a1)
  {
    v3 = [a1 metadataObject];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 innermostModelObject];

      if (!a2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v10 = [a2 metadataObject];
      if (v10)
      {
        v11 = v10;
        a2 = [v10 innermostModelObject];

        if (v5)
        {
          goto LABEL_5;
        }
      }

      else
      {
        a2 = 0;
        if (v5)
        {
          goto LABEL_5;
        }
      }

      goto LABEL_10;
    }
  }

  v5 = 0;
  if (a2)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (v5)
  {
LABEL_5:
    if (a2)
    {
      v6 = [v5 identifiers];
      v7 = [a2 identifiers];
      v8 = [v6 intersectsSet:v7];

      return v8 ^ 1;
    }

    return 1;
  }

LABEL_10:
  if (a2)
  {

    return 1;
  }

  return 0;
}

uint64_t sub_10028CF2C(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_100572F08();
  *(v1 + 24) = sub_100572EF8();
  v3 = sub_100572E78();

  return _swift_task_switch(sub_10028CFC4, v3, v2);
}

uint64_t sub_10028CFC4()
{

  if ((sub_100572FC8() & 1) == 0)
  {
    sub_10028D038(2);
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10028D038(char a1)
{
  v2 = v1;
  v4 = sub_100009DCC(&qword_1006E6420);
  result = __chkstk_darwin(v4 - 8);
  v7 = &v19[-v6];
  if ((*(v1 + 64) & 1) == 0)
  {
    *(v1 + 64) = 1;
    *(v1 + 72) = 0;
    *(v1 + 80) = 1;
    if (qword_1006E4FA0 != -1)
    {
      swift_once();
    }

    v8 = sub_10056DF88();
    sub_10000C49C(v8, qword_1006FC8E8);
    v9 = sub_10056DF68();
    v10 = sub_100573448();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v20 = v12;
      *v11 = 136446210;
      v19[7] = a1;
      v13 = sub_100572978();
      v15 = sub_1000C9784(v13, v14, &v20);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "[📸] Set Needs Snapshot for Reason=%{public}s", v11, 0xCu);
      sub_100010474(v12);
    }

    v16 = sub_100572F48();
    (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
    sub_100572F08();

    v17 = sub_100572EF8();
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    *(v18 + 24) = &protocol witness table for MainActor;
    *(v18 + 32) = v2;
    *(v18 + 40) = a1;
    sub_1001B3FAC(0, 0, v7, &unk_10058FF10, v18);
  }

  return result;
}

uint64_t sub_10028D2B0(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_10000C5F8;

  return v5();
}

uint64_t sub_10028D398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 32) = a5;
  *(v5 + 16) = a4;
  sub_100572F08();
  *(v5 + 24) = sub_100572EF8();
  v7 = sub_100572E78();

  return _swift_task_switch(sub_10028D434, v7, v6);
}

uint64_t sub_10028D434()
{
  v1 = *(v0 + 32);

  sub_10028C344(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t Player.SnapshotController.deinit()
{
  swift_unknownObjectWeakDestroy();

  return v0;
}

uint64_t Player.SnapshotController.__deallocating_deinit()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_10028D548@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

unint64_t sub_10028D60C()
{
  result = qword_1006EAEF8;
  if (!qword_1006EAEF8)
  {
    sub_100010324(&qword_1006EB560);
    sub_10028D6BC(&qword_1006EAF00, &qword_1006EAF08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EAEF8);
  }

  return result;
}

uint64_t sub_10028D6BC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000D3B98(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10028D708()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1000116F0;

  return sub_10028CF2C(v0);
}

uint64_t sub_10028D798()
{

  return swift_deallocObject();
}

uint64_t sub_10028D7D0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000CB98;

  return sub_10028D2B0(a1, v4);
}

uint64_t sub_10028D888()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10028D8C8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000CB98;

  return sub_10028D398(a1, v4, v5, v6, v7);
}

unint64_t sub_10028D9A0()
{
  result = qword_1006EAF20;
  if (!qword_1006EAF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EAF20);
  }

  return result;
}

uint64_t PlaybackController.insert(_:location:issuer:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[18] = a3;
  v4[19] = v3;
  v4[16] = a1;
  v4[17] = a2;
  v5 = sub_10056CAE8();
  v4[20] = v5;
  v4[21] = *(v5 - 8);
  v4[22] = swift_task_alloc();
  v4[23] = sub_100572F08();
  v4[24] = sub_100572EF8();
  v7 = sub_100572E78();
  v4[25] = v7;
  v4[26] = v6;

  return _swift_task_switch(sub_10028DAF0, v7, v6);
}

uint64_t sub_10028DAF0()
{
  v35 = v0;
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v4 = sub_10056CAB8();
  v6 = v5;
  v0[27] = v4;
  v0[28] = v5;
  (*(v2 + 8))(v1, v3);
  if (qword_1006E4F80 != -1)
  {
    swift_once();
  }

  v7 = v0[16];
  v8 = sub_10056DF88();
  v0[29] = sub_10000C49C(v8, static Logger.playbackController);

  v9 = v7;
  v10 = sub_10056DF68();
  v11 = sub_100573448();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = v0[16];
    v13 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v13 = 136446466;
    *(v13 + 4) = sub_1000C9784(v4, v6, &v34);
    *(v13 + 12) = 2082;
    v14 = v12;
    v15 = [v14 description];
    v16 = sub_1005728D8();
    v18 = v17;

    v19 = sub_1000C9784(v16, v18, &v34);

    *(v13 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v10, v11, "⤵️ Inserting new intent with ID=%{public}s, intent=%{public}s", v13, 0x16u);
    swift_arrayDestroy();
  }

  v20 = v0[19];
  v21 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  v22 = *(v20 + v21);
  v24 = v0[16];
  v23 = v0[17];
  if (v22)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v25 = v24;

    sub_100101FC4(v23);
    sub_10056E478();

    v26 = v0[14];
    if (v26)
    {
    }
  }

  else
  {
    v27 = v24;
    sub_100101FC4(v23);
  }

  v28 = v0[16];
  v29 = v0[17];
  sub_100573548();
  v0[5] = &type metadata for Player.InsertCommand;
  v0[6] = &protocol witness table for Player.InsertCommand;
  v0[2] = v28;
  v0[3] = v29;
  v30 = v28;
  sub_100101FC4(v29);
  v0[30] = sub_100572EF8();
  v32 = sub_100572E78();
  v0[31] = v32;
  v0[32] = v31;

  return _swift_task_switch(sub_10028DE40, v32, v31);
}

uint64_t sub_10028DE40()
{
  v1 = v0[16];
  sub_100009DCC(&unk_1006EAF50);
  v2 = swift_allocObject();
  v0[33] = v2;
  *(v2 + 16) = xmmword_10057B510;
  sub_10002EA8C((v0 + 2), v2 + 32);
  v0[34] = sub_100572EF8();
  v3 = swift_task_alloc();
  v0[35] = v3;
  *v3 = v0;
  v3[1] = sub_10028DF3C;
  v4 = v0[18];

  return sub_10029AD70(v2, 0x10000, 1, 0, v1, v4);
}

uint64_t sub_10028DF3C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 288) = a1;
  *(v3 + 296) = v1;

  if (v1)
  {

    v4 = sub_100572E78();
    v6 = v5;
    v7 = sub_10028E1F8;
  }

  else
  {
    v4 = sub_100572E78();
    v6 = v8;
    v7 = sub_10028E0B4;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_10028E0B4()
{

  v1 = *(v0 + 248);
  v2 = *(v0 + 256);

  return _swift_task_switch(sub_10028E120, v1, v2);
}

uint64_t sub_10028E120()
{
  v1 = v0[36];

  if (v1 >> 62)
  {
    goto LABEL_6;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    while ((v1 & 0xC000000000000001) == 0)
    {
      v1 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v1)
      {
        goto LABEL_10;
      }

      __break(1u);
LABEL_6:
      if (!sub_100574178())
      {
        goto LABEL_9;
      }
    }

    sub_100573F58();
    swift_unknownObjectRelease();
  }

LABEL_9:

LABEL_10:
  sub_100010474((v0 + 2));
  v2 = v0[25];
  v3 = v0[26];

  return _swift_task_switch(sub_10028E75C, v2, v3);
}

uint64_t sub_10028E1F8()
{

  v1 = *(v0 + 248);
  v2 = *(v0 + 256);

  return _swift_task_switch(sub_10028E25C, v1, v2);
}

uint64_t sub_10028E25C()
{

  v1 = *(v0 + 200);
  v2 = *(v0 + 208);

  return _swift_task_switch(sub_10028E2C0, v1, v2);
}

uint64_t sub_10028E2C0()
{
  v33 = v0;
  v1 = *(v0 + 296);
  sub_100010474(v0 + 16);
  *(v0 + 120) = v1;
  swift_errorRetain();
  sub_100009DCC(&qword_1006E9B60);
  if (swift_dynamicCast())
  {

    v3 = *(v0 + 80);
    v2 = *(v0 + 88);
    *(v0 + 304) = v3;
    *(v0 + 312) = v2;
    v4 = sub_10056C718();
    v5 = [v4 code];

    if (v5 == 3)
    {

      v6 = sub_10056DF68();
      v7 = sub_100573428();

      if (os_log_type_enabled(v6, v7))
      {
        v9 = *(v0 + 216);
        v8 = *(v0 + 224);
        v10 = swift_slowAlloc();
        v32[0] = swift_slowAlloc();
        *v10 = 136446466;
        *(v10 + 4) = sub_1000C9784(v9, v8, v32);
        *(v10 + 12) = 2082;
        *(v10 + 14) = sub_1000C9784(0xD00000000000001FLL, 0x80000001005B3750, v32);
        _os_log_impl(&_mh_execute_header, v6, v7, "❌ Insert failed for intent with ID=%{public}s, error=%{public}s", v10, 0x16u);
        swift_arrayDestroy();
      }

      v11 = swift_task_alloc();
      *(v0 + 320) = v11;
      *v11 = v0;
      v11[1] = sub_10028E8F4;
      v12 = *(v0 + 216);
      v13 = *(v0 + 224);
      v14 = *(v0 + 144);
      v15 = *(v0 + 128);

      return sub_10029201C(v15, v12, v13, v14);
    }

    swift_errorRetain();

    v18 = sub_10056DF68();
    v19 = sub_100573428();

    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 224);
    if (v20)
    {
      v22 = *(v0 + 216);
      v23 = swift_slowAlloc();
      v32[0] = swift_slowAlloc();
      *v23 = 136446466;
      v24 = sub_1000C9784(v22, v21, v32);

      *(v23 + 4) = v24;
      *(v23 + 12) = 2082;
      *(v0 + 96) = v3;
      *(v0 + 104) = v2;
      swift_errorRetain();

      v25 = sub_100572978();
      v27 = sub_1000C9784(v25, v26, v32);

      *(v23 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v18, v19, "❌ Insert failed for intent with ID=%{public}s, error=%{public}s", v23, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v29 = *(v0 + 128);
    v28 = *(v0 + 136);
    sub_1002A858C();
    swift_allocError();
    *v30 = v3;
    v30[1] = v2;
    swift_willThrow();
    swift_errorRetain();

    sub_100155F88(v28);
  }

  else
  {
    v17 = *(v0 + 136);

    sub_100155F88(v17);
  }

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_10028E75C()
{
  v15 = v0;

  v1 = sub_10056DF68();
  v2 = sub_100573448();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 224);
  if (v3)
  {
    v5 = *(v0 + 216);
    v7 = *(v0 + 128);
    v6 = *(v0 + 136);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136446210;
    v10 = sub_1000C9784(v5, v4, &v14);

    *(v8 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "✅ Successfully inserted intent with ID=%{public}s", v8, 0xCu);
    sub_100010474(v9);

    sub_100155F88(v6);
  }

  else
  {
    v11 = *(v0 + 136);

    sub_100155F88(v11);
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_10028E8F4()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 200);
    v4 = *(v2 + 208);
    v5 = sub_1002AB53C;
  }

  else
  {

    v3 = *(v2 + 200);
    v4 = *(v2 + 208);
    v5 = sub_10028EA38;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10028EA38()
{
  v2 = v0[16];
  v1 = v0[17];

  sub_1002A85E0();
  swift_allocError();
  *v3 = 3;
  *(v3 + 8) = 2;
  swift_willThrow();

  sub_100155F88(v1);

  v4 = v0[1];

  return v4();
}

uint64_t PlaybackController.add(_:route:)(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  v4 = sub_10056C208();
  v3[18] = v4;
  v3[19] = *(v4 - 8);
  v3[20] = swift_task_alloc();
  v5 = sub_10056DFD8();
  v3[21] = v5;
  v3[22] = *(v5 - 8);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = type metadata accessor for PlaybackIntentDescriptor(0);
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v6 = sub_10056CAE8();
  v3[31] = v6;
  v3[32] = *(v6 - 8);
  v3[33] = swift_task_alloc();
  sub_100572F08();
  v3[34] = sub_100572EF8();
  v8 = sub_100572E78();
  v3[35] = v8;
  v3[36] = v7;

  return _swift_task_switch(sub_10028ED58, v8, v7);
}

uint64_t sub_10028ED58()
{
  v38 = v0;
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[31];
  v4 = (v0[17] + OBJC_IVAR____TtC9MusicCore18PlaybackController_nowPlayingPresentationDescriptor);
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  v4[4] = 0;
  sub_1002A8634(v5, v6, v7);
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v8 = sub_10056CAB8();
  v10 = v9;
  v0[37] = v8;
  v0[38] = v9;
  (*(v2 + 8))(v1, v3);
  if (qword_1006E4F80 != -1)
  {
    swift_once();
  }

  v11 = v0[30];
  v12 = v0[15];
  v13 = sub_10056DF88();
  v0[39] = v13;
  v0[40] = sub_10000C49C(v13, static Logger.playbackController);
  sub_1002A8678(v12, v11, type metadata accessor for PlaybackIntentDescriptor);

  v14 = sub_10056DF68();
  v15 = sub_100573448();

  v16 = os_log_type_enabled(v14, v15);
  v17 = v0[30];
  if (v16)
  {
    v18 = v0[29];
    v19 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v19 = 136446466;
    *(v19 + 4) = sub_1000C9784(v8, v10, &v37);
    *(v19 + 12) = 2082;
    sub_1002A8678(v17, v18, type metadata accessor for PlaybackIntentDescriptor);
    v20 = sub_100572978();
    v22 = v21;
    sub_1002A8CEC(v17, type metadata accessor for PlaybackIntentDescriptor);
    v23 = sub_1000C9784(v20, v22, &v37);

    *(v19 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v14, v15, "➕ Adding new playback intent with ID=%{public}s, descriptor=%{public}s", v19, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1002A8CEC(v17, type metadata accessor for PlaybackIntentDescriptor);
  }

  sub_1002A8678(v0[15], v0[27], type metadata accessor for PlaybackIntentDescriptor.IntentType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v25 = v0[27];
  if (EnumCaseMultiPayload == 1)
  {
    v26 = v0[24];
    v27 = v0[21];
    v28 = v0[22];
    (*(v28 + 32))(v26, v25, v27);
    v29 = sub_10056DFA8();
    (*(v28 + 8))(v26, v27);
  }

  else
  {
    v29 = *v25;
  }

  v30 = v0[17];
  v31 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  if (*(v30 + v31))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_10056E478();

    v32 = v0[9];
    if (v32)
    {
    }
  }

  sub_100573548();

  v33 = swift_task_alloc();
  v0[41] = v33;
  *v33 = v0;
  v33[1] = sub_10028F198;
  v34 = v0[16];
  v35 = v0[15];

  return sub_100293458(v35, v8, v10, v34);
}

uint64_t sub_10028F198()
{
  v2 = *v1;
  *(*v1 + 336) = v0;

  v3 = *(v2 + 288);
  v4 = *(v2 + 280);
  if (v0)
  {
    v5 = sub_10028FC98;
  }

  else
  {
    v5 = sub_10028F2D4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10028F2D4()
{
  v19 = v0;

  v1 = sub_10056DF68();
  v2 = sub_100573448();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[37];
    v3 = v0[38];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v18 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_1000C9784(v4, v3, &v18);
    _os_log_impl(&_mh_execute_header, v1, v2, "✅ Successfully added intent with ID=%{public}s", v5, 0xCu);
    sub_100010474(v6);
  }

  v7 = v0[28];
  v8 = v0[15];
  _s9MusicCore9AppReviewO16recordSongPlayedyyFZ_0();
  v9 = *(v8 + *(v7 + 36));
  v10 = v0[28];
  v11 = v0[15];
  if (v9 == 1)
  {
    v12 = *(v10 + 32);
    v13 = swift_task_alloc();
    v0[43] = v13;
    *v13 = v0;
    v13[1] = sub_10028F630;

    return sub_100299804(v11 + v12);
  }

  if (*(v11 + *(v10 + 40)))
  {

LABEL_14:

    v17 = v0[1];

    return v17();
  }

  sub_1002A8678(v0[15], v0[26], type metadata accessor for PlaybackIntentDescriptor.IntentType);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v16 = v0[26];

    sub_1002A8CEC(v16, type metadata accessor for PlaybackIntentDescriptor.IntentType);
    goto LABEL_14;
  }

  (*(v0[22] + 32))(v0[23], v0[26], v0[21]);
  v15 = swift_task_alloc();
  v0[44] = v15;
  *v15 = v0;
  v15[1] = sub_10028F93C;

  return MusicPlaybackIntentDescriptor.donate()();
}

uint64_t sub_10028F630()
{
  v1 = *v0;

  v2 = *(v1 + 288);
  v3 = *(v1 + 280);

  return _swift_task_switch(sub_10028F750, v3, v2);
}

uint64_t sub_10028F750()
{
  v1 = v0[15];
  if (*(v1 + *(v0[28] + 40)))
  {

LABEL_8:

    v4 = v0[1];

    return v4();
  }

  sub_1002A8678(v1, v0[26], type metadata accessor for PlaybackIntentDescriptor.IntentType);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v3 = v0[26];

    sub_1002A8CEC(v3, type metadata accessor for PlaybackIntentDescriptor.IntentType);
    goto LABEL_8;
  }

  (*(v0[22] + 32))(v0[23], v0[26], v0[21]);
  v2 = swift_task_alloc();
  v0[44] = v2;
  *v2 = v0;
  v2[1] = sub_10028F93C;

  return MusicPlaybackIntentDescriptor.donate()();
}

uint64_t sub_10028F93C()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {

    v3 = *(v2 + 280);
    v4 = *(v2 + 288);
    v5 = sub_1002905EC;
  }

  else
  {
    v3 = *(v2 + 280);
    v4 = *(v2 + 288);
    v5 = sub_10028FA58;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10028FA58()
{
  v18 = v0;

  if (qword_1006E4F90 != -1)
  {
    swift_once();
  }

  sub_10000C49C(v0[39], static Logger.siriIntents);

  v1 = sub_10056DF68();
  v2 = sub_100573448();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[38];
  if (v3)
  {
    v5 = v0[37];
    v7 = v0[22];
    v6 = v0[23];
    v8 = v0[21];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136446210;
    v11 = sub_1000C9784(v5, v4, &v17);

    *(v9 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v1, v2, "Successfully donated intent with ID=%{public}s", v9, 0xCu);
    sub_100010474(v10);

    (*(v7 + 8))(v6, v8);
  }

  else
  {
    v13 = v0[22];
    v12 = v0[23];
    v14 = v0[21];

    (*(v13 + 8))(v12, v14);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_10028FC98()
{
  v65 = v0;
  v1 = *(v0 + 336);

  *(v0 + 80) = v1;
  swift_errorRetain();
  sub_100009DCC(&qword_1006E9B60);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 40);
    v3 = *(v0 + 48);
    if (!*(v0 + 48))
    {

      sub_1002A8714(v2, 0);
      v26 = sub_10056DF68();
      v27 = sub_100573428();

      sub_1002A86E0(v2, 0);
      v28 = os_log_type_enabled(v26, v27);
      v29 = *(v0 + 304);
      if (v28)
      {
        v30 = *(v0 + 296);
        v31 = swift_slowAlloc();
        v64[0] = swift_slowAlloc();
        *v31 = 136446466;
        v32 = sub_1000C9784(v30, v29, v64);

        *(v31 + 4) = v32;
        *(v31 + 12) = 2082;
        *(v0 + 104) = v2;
        sub_1002A8738(v2);
        v33 = sub_100572978();
        v35 = sub_1000C9784(v33, v34, v64);

        *(v31 + 14) = v35;
        _os_log_impl(&_mh_execute_header, v26, v27, "❌ Intent id=%{public}s) — Could not present alertKind=%{public}s", v31, 0x16u);
        swift_arrayDestroy();

        sub_1002A86E0(v2, 0);
      }

      else
      {

        sub_1002A86E0(v2, 0);
      }

      goto LABEL_33;
    }

    if (v3 == 3)
    {
      if (!v2)
      {

        v18 = sub_10056DF68();
        v55 = sub_100573428();

        v56 = os_log_type_enabled(v18, v55);
        v57 = *(v0 + 304);
        if (v56)
        {
          v58 = *(v0 + 296);
          v59 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          v64[0] = v60;
          *v59 = 136446210;
          v61 = sub_1000C9784(v58, v57, v64);

          *(v59 + 4) = v61;
          _os_log_impl(&_mh_execute_header, v18, v55, "❌ Intent id=%{public}s) — Missing player", v59, 0xCu);
          sub_100010474(v60);

          goto LABEL_33;
        }

LABEL_32:

        goto LABEL_33;
      }

      if (v2 == 2)
      {

        goto LABEL_9;
      }
    }

    sub_1002A86E0(*(v0 + 40), v3);
  }

  v5 = *(v0 + 152);
  v4 = *(v0 + 160);
  v6 = *(v0 + 144);

  swift_errorRetain();
  sub_10056C1F8();
  sub_1002AA1A8(&qword_1006EAF78, &type metadata accessor for CocoaError.Code);
  v7 = sub_10056C678();

  (*(v5 + 8))(v4, v6);
  if (v7)
  {
LABEL_9:

    v8 = sub_10056DF68();
    v9 = sub_100573428();

    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 304);
    if (v10)
    {
      v12 = *(v0 + 296);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v64[0] = v14;
      *v13 = 136446210;
      v15 = sub_1000C9784(v12, v11, v64);

      *(v13 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v8, v9, "❌ Intent id=%{public}s) — User cancelled", v13, 0xCu);
      sub_100010474(v14);
LABEL_23:

      goto LABEL_34;
    }

LABEL_24:

    goto LABEL_34;
  }

  *(v0 + 88) = *(v0 + 336);
  swift_errorRetain();
  if (!swift_dynamicCast())
  {
LABEL_21:

    swift_errorRetain();
    v8 = sub_10056DF68();
    v36 = sub_100573428();

    if (os_log_type_enabled(v8, v36))
    {
      v37 = *(v0 + 336);
      v39 = *(v0 + 296);
      v38 = *(v0 + 304);
      v40 = swift_slowAlloc();
      v64[0] = swift_slowAlloc();
      *v40 = 136446466;
      v41 = sub_1000C9784(v39, v38, v64);

      *(v40 + 4) = v41;
      *(v40 + 12) = 2082;
      *(v0 + 96) = v37;
      swift_errorRetain();
      v42 = sub_100572978();
      v44 = sub_1000C9784(v42, v43, v64);

      *(v40 + 14) = v44;
      _os_log_impl(&_mh_execute_header, v8, v36, "❌ Intent id=%{public}s) — Failed to add with error=%{public}s", v40, 0x16u);
      swift_arrayDestroy();
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  v16 = *(v0 + 56);
  v17 = *(v0 + 64);
  if (v17 == 1)
  {

    sub_1002A8714(v16, 1);
    v18 = sub_10056DF68();
    v45 = sub_100573428();

    sub_1002A86E0(v16, 1);
    v46 = os_log_type_enabled(v18, v45);
    v47 = *(v0 + 304);
    if (!v46)
    {

      sub_1002A86E0(v16, 1);
      goto LABEL_33;
    }

    v48 = *(v0 + 296);
    v49 = swift_slowAlloc();
    v64[0] = swift_slowAlloc();
    *v49 = 136446466;
    v50 = sub_1000C9784(v48, v47, v64);

    *(v49 + 4) = v50;
    *(v49 + 12) = 2082;
    sub_100009DCC(&qword_1006EAF80);
    v51 = sub_100572D38();
    v53 = v52;
    sub_1002A86E0(v16, 1);
    v54 = sub_1000C9784(v51, v53, v64);

    *(v49 + 14) = v54;
    _os_log_impl(&_mh_execute_header, v18, v45, "❌ Intent id=%{public}s) — Could not produce playback commands=%{public}s", v49, 0x16u);
    swift_arrayDestroy();

    goto LABEL_28;
  }

  if (v17 != 3 || v16 != 1)
  {
    sub_1002A86E0(*(v0 + 56), v17);
    goto LABEL_21;
  }

  v18 = sub_10056DF68();
  v19 = sub_100573428();

  v20 = os_log_type_enabled(v18, v19);
  v21 = *(v0 + 304);
  if (!v20)
  {
    goto LABEL_32;
  }

  v22 = *(v0 + 296);
  v23 = swift_slowAlloc();
  v24 = swift_slowAlloc();
  v64[0] = v24;
  *v23 = 136446210;
  v25 = sub_1000C9784(v22, v21, v64);

  *(v23 + 4) = v25;
  _os_log_impl(&_mh_execute_header, v18, v19, "❌ Intent id=%{public}s) — Could not playback, subscription needed", v23, 0xCu);
  sub_100010474(v24);

LABEL_28:

LABEL_33:

LABEL_34:
  swift_willThrow();

  v62 = *(v0 + 8);

  return v62();
}

uint64_t sub_1002905EC()
{
  v17 = v0;

  if (qword_1006E4F90 != -1)
  {
    swift_once();
  }

  sub_10000C49C(v0[39], static Logger.siriIntents);
  swift_errorRetain();
  v1 = sub_10056DF68();
  v2 = sub_100573428();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[45];
  v5 = v0[22];
  v6 = v0[23];
  v7 = v0[21];
  if (v3)
  {
    v15 = v0[23];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136446210;
    v0[14] = v4;
    swift_errorRetain();
    sub_100009DCC(&qword_1006E9B60);
    v10 = sub_100572978();
    v12 = sub_1000C9784(v10, v11, &v16);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v1, v2, "Donation error=%{public}s)", v8, 0xCu);
    sub_100010474(v9);

    (*(v5 + 8))(v15, v7);
  }

  else
  {

    (*(v5 + 8))(v6, v7);
  }

  v13 = v0[1];

  return v13();
}

id PlaybackController.init(coordinator:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC9MusicCore18PlaybackController_player] = 0;
  v4 = &v1[OBJC_IVAR____TtC9MusicCore18PlaybackController_nowPlayingPresentationDescriptor];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  *&v1[OBJC_IVAR____TtC9MusicCore18PlaybackController_nowPlayingSubscription] = 0;
  *&v1[OBJC_IVAR____TtC9MusicCore18PlaybackController_ageVerificationWrapper] = 0;
  v1[OBJC_IVAR____TtC9MusicCore18PlaybackController_isErrorAlertPresented] = 0;
  v1[OBJC_IVAR____TtC9MusicCore18PlaybackController_isLeaseEndAlertPresented] = 0;
  sub_10002EA8C(a1, &v1[OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator]);
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, "init");
  sub_100010474(a1);
  return v5;
}

uint64_t sub_10029096C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100009DCC(&unk_1006EDF80);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - v6;
  if (a1)
  {
    swift_beginAccess();
    v8 = *(a1 + 24);
    if (v8)
    {
      if (v8 == v2)
      {
        swift_beginAccess();
        *(a1 + 24) = 0;
        swift_unknownObjectRelease();
        [*(a1 + OBJC_IVAR____TtC9MusicCore6Player_engine) setDelegate:0];
      }
    }
  }

  v9 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  v10 = *&v2[v9];
  if (v10)
  {
    swift_beginAccess();
    *(v10 + 24) = v2;

    v11 = v2;
    swift_unknownObjectRelease();
    [*(v10 + OBJC_IVAR____TtC9MusicCore6Player_engine) setDelegate:v11];

    if (*&v2[v9])
    {
      swift_beginAccess();

      sub_100009DCC(&qword_1006EB170);
      sub_10056E448();
      swift_endAccess();

      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_1002AAB10();
      v10 = sub_10056E518();

      (*(v5 + 8))(v7, v4);
    }

    else
    {
      v10 = 0;
    }
  }

  *&v2[OBJC_IVAR____TtC9MusicCore18PlaybackController_nowPlayingSubscription] = v10;
}

void sub_100290BFC(void **a1)
{
  v2 = sub_100009DCC(&qword_1006E6420);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = sub_100572F48();
    (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
    sub_100572F08();
    v9 = v5;
    v10 = v7;
    v11 = sub_100572EF8();
    v12 = swift_allocObject();
    v12[2] = v11;
    v12[3] = &protocol witness table for MainActor;
    v12[4] = v10;
    v12[5] = v5;
    sub_1001B3FAC(0, 0, v4, &unk_1005904D0, v12);
  }
}

uint64_t sub_100290D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_100572F08();
  v5[4] = sub_100572EF8();
  v7 = sub_100572E78();

  return _swift_task_switch(sub_100290DFC, v7, v6);
}

uint64_t sub_100290DFC()
{
  v1 = *(v0 + 24);

  sub_100290E68(v1);
  v2 = *(v0 + 8);

  return v2();
}

void sub_100290E68(void *a1)
{
  if (!a1 || (v3 = [a1 tracklist]) == 0)
  {
LABEL_8:
    v6 = v1 + OBJC_IVAR____TtC9MusicCore18PlaybackController_nowPlayingPresentationDescriptor;
    v7 = *(v1 + OBJC_IVAR____TtC9MusicCore18PlaybackController_nowPlayingPresentationDescriptor);
    v8 = *(v1 + OBJC_IVAR____TtC9MusicCore18PlaybackController_nowPlayingPresentationDescriptor + 8);
    v9 = *(v1 + OBJC_IVAR____TtC9MusicCore18PlaybackController_nowPlayingPresentationDescriptor + 16);
    *v6 = 0u;
    *(v6 + 16) = 0u;
    *(v6 + 32) = 0;

    sub_1002A8634(v7, v8, v9);
    return;
  }

  v104 = v3;
  v4 = [v3 playingItem];
  if (!v4)
  {
    v5 = v104;
    goto LABEL_7;
  }

  v5 = v4;
  if ([v4 isPlaceholder])
  {

LABEL_7:
    goto LABEL_8;
  }

  v10 = [v104 uniqueIdentifier];
  v11 = sub_1005728D8();
  v13 = v12;

  v14 = (v1 + OBJC_IVAR____TtC9MusicCore18PlaybackController_nowPlayingPresentationDescriptor);
  if (!*(v1 + OBJC_IVAR____TtC9MusicCore18PlaybackController_nowPlayingPresentationDescriptor + 16))
  {

LABEL_17:
    v16 = [v5 contentItemIdentifier];
    v17 = sub_1005728D8();
    v19 = v18;

    v20 = [v104 uniqueIdentifier];
    v21 = sub_1005728D8();
    v23 = v22;

    v24 = *v14;
    v25 = v14[1];
    v26 = v14[2];
    *v14 = 1;
    v14[1] = v17;
    v14[2] = v19;
    v14[3] = v21;
    v14[4] = v23;
    sub_1002A8634(v24, v25, v26);
    goto LABEL_18;
  }

  if (v11 == v14[3] && v13 == v14[4])
  {

    goto LABEL_18;
  }

  v15 = sub_100574498();

  if ((v15 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_18:
  v27 = [v5 contentItemIdentifier];
  v28 = sub_1005728D8();
  v30 = v29;

  v31 = v14[2];
  if (v31)
  {
    if (v28 == v14[1] && v30 == v31)
    {
      v32 = 1;
    }

    else
    {
      v32 = sub_100574498();
    }
  }

  else
  {
    v32 = 0;
  }

  if (v14[2])
  {
    v33 = *v14;
  }

  else
  {
    v33 = 0;
  }

  if ([a1 videoOutput])
  {
    v107 = &OBJC_PROTOCOL___MPCVideoOutput;
    v34 = swift_dynamicCastObjCProtocolConditional();
    if (!v34 || (v35 = v34, swift_getObjectType(), sub_1000D3B98(0, &qword_1006E93C0), !swift_dynamicCastMetatype()))
    {

      swift_unknownObjectRelease();
      return;
    }

    v103 = v1;
    type metadata accessor for MPCPlayerResponse.VideoContext();
    swift_allocObject();
    v36 = MPCPlayerResponse.VideoContext.init(output:)(v35);
    if ((v33 & 1) == 0 || (v32 & 1) == 0 || (v97 = v36, [a1 state] != 2))
    {

LABEL_40:

      return;
    }

    v96 = objc_opt_self();
    v37 = [v96 sharedApplication];
    v38 = [v37 openSessions];

    sub_1000D3B98(0, &qword_1006EB178);
    sub_1002AAC7C();
    v39 = sub_1005730F8();

    if ((v39 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_100573DF8();
      sub_100573138();
      v39 = v108;
      v40 = v109;
      v41 = v110;
      v42 = v111;
      v43 = v112;
    }

    else
    {
      v44 = -1 << *(v39 + 32);
      v40 = v39 + 56;
      v41 = ~v44;
      v45 = -v44;
      if (v45 < 64)
      {
        v46 = ~(-1 << v45);
      }

      else
      {
        v46 = -1;
      }

      v43 = v46 & *(v39 + 56);

      v42 = 0;
    }

    v47 = (v41 + 64) >> 6;
    v99 = v40;
    if (v39 < 0)
    {
      goto LABEL_51;
    }

LABEL_46:
    v48 = v42;
    v49 = v43;
    v50 = v42;
    if (!v43)
    {
      while (1)
      {
        v50 = v48 + 1;
        if (__OFADD__(v48, 1))
        {
          break;
        }

        if (v50 >= v47)
        {
LABEL_61:
          sub_10025A994();

          return;
        }

        v49 = *(v40 + 8 * v50);
        ++v48;
        if (v49)
        {
          goto LABEL_50;
        }
      }

      __break(1u);
LABEL_93:
      v89 = v102;
      v88 = v103;
LABEL_89:
      sub_10025A994();

      v101 = 0;
      if (!v14[2])
      {
        goto LABEL_91;
      }

LABEL_90:
      *v14 = 0;
LABEL_91:
      v90 = *(v88 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
      v91 = *(v88 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
      sub_10000C8CC((v88 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v90);
      v105[0] = v97;
      v106 = 1;
      v92 = *(v91 + 8);

      v92(v105, v90, v91);

      sub_1002A9DCC(v105);
      return;
    }

LABEL_50:
    v51 = (v49 - 1) & v49;
    v52 = *(*(v39 + 48) + ((v50 << 9) | (8 * __clz(__rbit64(v49)))));
    while (1)
    {
      if (!v52)
      {
        goto LABEL_61;
      }

      v54 = v39;
      v102 = v52;
      v55 = [v52 role];
      v56 = sub_1005728D8();
      v58 = v57;
      if (v56 == sub_1005728D8() && v58 == v59)
      {
        break;
      }

      v61 = sub_100574498();

      if (v61)
      {
        goto LABEL_63;
      }

      v42 = v50;
      v43 = v51;
      v39 = v54;
      v40 = v99;
      if ((v39 & 0x8000000000000000) == 0)
      {
        goto LABEL_46;
      }

LABEL_51:
      v53 = sub_100573E28();
      if (!v53)
      {
        goto LABEL_61;
      }

      v113 = v53;
      swift_dynamicCast();
      v52 = v105[0];
      v50 = v42;
      v51 = v43;
    }

LABEL_63:
    sub_10025A994();

    v62 = [v102 scene];
    if (!v62 || (v63 = v62, v64 = [v62 activationState], v63, v64))
    {

      goto LABEL_40;
    }

    v65 = [v96 sharedApplication];
    v66 = [v65 openSessions];

    v67 = sub_1005730F8();
    if ((v67 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_100573DF8();
      sub_100573138();
      v67 = v113;
      v68 = v114;
      v69 = v115;
      v70 = v116;
      v71 = v117;
    }

    else
    {
      v72 = -1 << *(v67 + 32);
      v68 = v67 + 56;
      v69 = ~v72;
      v73 = -v72;
      if (v73 < 64)
      {
        v74 = ~(-1 << v73);
      }

      else
      {
        v74 = -1;
      }

      v71 = v74 & *(v67 + 56);

      v70 = 0;
    }

    v75 = (v69 + 64) >> 6;
    v98 = v68;
    if (v67 < 0)
    {
      goto LABEL_78;
    }

LABEL_73:
    v76 = v70;
    v77 = v71;
    v78 = v70;
    if (v71)
    {
LABEL_77:
      v100 = (v77 - 1) & v77;
      v79 = *(*(v67 + 48) + ((v78 << 9) | (8 * __clz(__rbit64(v77)))));
      while (1)
      {
        v80 = v67;
        if (!v79)
        {
          goto LABEL_93;
        }

        v101 = v79;
        v81 = [v79 role];
        v82 = sub_1005728D8();
        v84 = v83;
        if (v82 == sub_1005728D8() && v84 == v85)
        {
          break;
        }

        v87 = sub_100574498();

        if (v87)
        {
          goto LABEL_95;
        }

        v70 = v78;
        v67 = v80;
        v68 = v98;
        v71 = v100;
        if ((v67 & 0x8000000000000000) == 0)
        {
          goto LABEL_73;
        }

LABEL_78:
        if (!sub_100573E28())
        {
          goto LABEL_88;
        }

        swift_dynamicCast();
        v79 = v105[0];
        v78 = v70;
        v100 = v71;
      }

LABEL_95:
      sub_10025A994();

      v93 = [v101 scene];
      if (v93)
      {
        v94 = v93;
        v95 = [v93 activationState];

        if (v95 == -1)
        {
          v89 = v102;
          v88 = v103;
          if (!v14[2])
          {
            goto LABEL_91;
          }

          goto LABEL_90;
        }
      }

      else
      {
      }

      goto LABEL_40;
    }

    while (1)
    {
      v78 = v76 + 1;
      if (__OFADD__(v76, 1))
      {
        break;
      }

      if (v78 >= v75)
      {
LABEL_88:
        v89 = v102;
        v88 = v103;
        goto LABEL_89;
      }

      v77 = *(v68 + 8 * v78);
      ++v76;
      if (v77)
      {
        goto LABEL_77;
      }
    }

    __break(1u);
  }

  else
  {
  }
}

uint64_t PlaybackController.player.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;

  sub_10029096C(v4);
}

void (*PlaybackController.player.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);

  return sub_100291A14;
}

void sub_100291A14(uint64_t a1, char a2)
{
  v3 = *a1;
  v5 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v6 = *(v5 + v4);
  *(v5 + v4) = *(*a1 + 24);

  if (a2)
  {

    sub_10029096C(v6);
  }

  else
  {
    sub_10029096C(v6);
  }

  free(v3);
}

uint64_t PlaybackController.perform(_:route:intent:issuer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = sub_100572F08();
  v5[8] = sub_100572EF8();
  v7 = sub_100572E78();
  v5[9] = v7;
  v5[10] = v6;

  return _swift_task_switch(sub_100291B88, v7, v6);
}

{
  v4[2] = sub_100572F08();
  v4[3] = sub_100572EF8();
  v9 = swift_task_alloc();
  v4[4] = v9;
  *v9 = v4;
  v9[1] = sub_10029AB88;

  return sub_10029AD70(a1, 0x10000, 1, a2, a3, a4);
}

uint64_t sub_100291B88()
{
  v1 = v0[2];
  sub_100009DCC(&unk_1006EAF50);
  v2 = swift_allocObject();
  v0[11] = v2;
  *(v2 + 16) = xmmword_10057B510;
  sub_10002EA8C(v1, v2 + 32);
  v0[12] = sub_100572EF8();
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_100291C80;
  v4 = v0[5];
  v5 = v0[3];
  v6 = v0[4];

  return sub_10029AD70(v2, 0x10000, 1, v5, v6, v4);
}

uint64_t sub_100291C80(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 120) = v1;

  if (v1)
  {

    v4 = sub_100572E78();
    v6 = v5;
    v7 = sub_100291F54;
  }

  else
  {
    v4 = sub_100572E78();
    v6 = v8;
    v7 = sub_100291DF8;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_100291DF8()
{

  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return _swift_task_switch(sub_100291E64, v1, v2);
}

uint64_t sub_100291E64()
{
  v1 = *(v0 + 112);

  if (v1 >> 62)
  {
    result = sub_100574178();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    v3 = 0;
    goto LABEL_9;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = sub_100573F58();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(*(v0 + 112) + 32);
  }

LABEL_9:
  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_100291F54()
{

  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return _swift_task_switch(sub_100291FB8, v1, v2);
}

uint64_t sub_100291FB8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10029201C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[26] = a4;
  v5[27] = v4;
  v5[24] = a2;
  v5[25] = a3;
  v5[23] = a1;
  v6 = sub_10056C208();
  v5[28] = v6;
  v5[29] = *(v6 - 8);
  v5[30] = swift_task_alloc();

  return _swift_task_switch(sub_1002920E4, 0, 0);
}

uint64_t sub_1002920E4()
{
  v12 = v0;
  if (qword_1006E4F80 != -1)
  {
    swift_once();
  }

  v1 = sub_10056DF88();
  v0[31] = sub_10000C49C(v1, static Logger.playbackController);

  v2 = sub_10056DF68();
  v3 = sub_100573448();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[24];
    v4 = v0[25];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_1000C9784(v5, v4, &v11);
    _os_log_impl(&_mh_execute_header, v2, v3, "Intent id=%{public}s) — Offering play local option to user", v6, 0xCu);
    sub_100010474(v7);
  }

  v0[32] = sub_100572F08();
  v0[33] = sub_100572EF8();
  v9 = sub_100572E78();
  v0[34] = v9;
  v0[35] = v8;

  return _swift_task_switch(sub_1002922AC, v9, v8);
}

uint64_t sub_1002922AC()
{
  v1 = sub_100572EF8();
  *(v0 + 288) = v1;
  if (v1)
  {
    swift_getObjectType();
    v2 = sub_100572E78();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  return _swift_task_switch(sub_100292340, v2, v4);
}

uint64_t sub_100292340()
{
  v1 = v0[27];
  v0[2] = v0;
  v0[7] = v0 + 153;
  v0[3] = sub_1002923F4;
  v2 = swift_continuation_init();
  sub_10029E154(v2, v1);

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1002923F4()
{
  v1 = *v0;
  *(*v0 + 154) = *(*v0 + 153);
  v2 = *(v1 + 280);
  v3 = *(v1 + 272);

  return _swift_task_switch(sub_100292500, v3, v2);
}

uint64_t sub_100292500()
{

  return _swift_task_switch(sub_100292568, 0, 0);
}

uint64_t sub_100292568()
{
  v37 = v0;
  if (*(v0 + 154) == 1)
  {
    v1 = (*(v0 + 216) + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator);
    v2 = v1[3];
    v3 = v1[4];
    sub_10000C8CC(v1, v2);
    *(v0 + 296) = (*(v3 + 40))(v2, v3);
    v4 = swift_task_alloc();
    *(v0 + 304) = v4;
    *v4 = v0;
    v4[1] = sub_100292B54;

    return GroupActivitiesManager.leave(performLeaveCommand:)(0);
  }

  sub_1002A85E0();
  v6 = swift_allocError();
  *v7 = 2;
  *(v7 + 8) = 3;
  swift_willThrow();
  *(v0 + 160) = v6;
  swift_errorRetain();
  sub_100009DCC(&qword_1006E9B60);
  if (swift_dynamicCast())
  {
    v8 = *(v0 + 144);
    v9 = *(v0 + 152);
    if (!*(v0 + 152))
    {

      sub_1002A8714(v8, 0);
      v28 = sub_10056DF68();
      v29 = sub_100573428();

      sub_1002A86E0(v8, 0);
      if (os_log_type_enabled(v28, v29))
      {
        v31 = *(v0 + 192);
        v30 = *(v0 + 200);
        v32 = swift_slowAlloc();
        v36[0] = swift_slowAlloc();
        *v32 = 136446466;
        *(v32 + 4) = sub_1000C9784(v31, v30, v36);
        *(v32 + 12) = 2082;
        *(v0 + 176) = v8;
        sub_1002A8738(v8);
        v33 = sub_100572978();
        v35 = sub_1000C9784(v33, v34, v36);

        *(v32 + 14) = v35;
        _os_log_impl(&_mh_execute_header, v28, v29, "Intent id=%{public}s) — Could not present alertKind=%{public}s", v32, 0x16u);
        swift_arrayDestroy();

        sub_1002A86E0(v8, 0);
      }

      else
      {

        sub_1002A86E0(v8, 0);
      }

      goto LABEL_18;
    }

    if (v9 == 3 && v8 == 2)
    {

      goto LABEL_12;
    }

    sub_1002A86E0(*(v0 + 144), v9);
  }

  v11 = *(v0 + 232);
  v10 = *(v0 + 240);
  v12 = *(v0 + 224);

  swift_errorRetain();
  sub_10056C1F8();
  sub_1002AA1A8(&qword_1006EAF78, &type metadata accessor for CocoaError.Code);
  v13 = sub_10056C678();

  (*(v11 + 8))(v10, v12);
  if (v13)
  {
LABEL_12:

    v14 = sub_10056DF68();
    v15 = sub_100573428();

    if (os_log_type_enabled(v14, v15))
    {
      v17 = *(v0 + 192);
      v16 = *(v0 + 200);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v36[0] = v19;
      *v18 = 136446210;
      *(v18 + 4) = sub_1000C9784(v17, v16, v36);
      _os_log_impl(&_mh_execute_header, v14, v15, "Intent id=%{public}s) — User cancelled", v18, 0xCu);
      sub_100010474(v19);

LABEL_16:

      goto LABEL_17;
    }

    goto LABEL_17;
  }

  swift_errorRetain();
  v14 = sub_10056DF68();
  v20 = sub_100573428();

  if (os_log_type_enabled(v14, v20))
  {
    v22 = *(v0 + 192);
    v21 = *(v0 + 200);
    v23 = swift_slowAlloc();
    v36[0] = swift_slowAlloc();
    *v23 = 136446466;
    *(v23 + 4) = sub_1000C9784(v22, v21, v36);
    *(v23 + 12) = 2082;
    *(v0 + 168) = v6;
    swift_errorRetain();
    v24 = sub_100572978();
    v26 = sub_1000C9784(v24, v25, v36);

    *(v23 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v14, v20, "Intent id=%{public}s) — Failed to insert with error=%{public}s", v23, 0x16u);
    swift_arrayDestroy();

    goto LABEL_16;
  }

LABEL_17:

LABEL_18:
  swift_willThrow();

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_100292B54()
{

  return _swift_task_switch(sub_100292C6C, 0, 0);
}

uint64_t sub_100292C6C()
{
  v1 = v0[27];
  v2 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v0[39] = v3;
  if (v3)
  {
    v4 = v0[23];
    v0[10] = v4;
    v0[13] = &type metadata for Player.ReplaceCommand;
    v0[14] = &protocol witness table for Player.ReplaceCommand;
    v0[11] = 3;
    v5 = v4;

    v6 = swift_task_alloc();
    v0[40] = v6;
    *v6 = v0;
    v6[1] = sub_100292DBC;
    v7 = v0[26];

    return Player.perform(_:options:issuer:)((v0 + 10), 0x10000, 0, 0, v7);
  }

  else
  {

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_100292DBC(void *a1)
{
  v4 = *v2;
  *(*v2 + 328) = v1;

  if (v1)
  {
    v5 = sub_100292F68;
  }

  else
  {

    sub_100010474(v4 + 80);
    v5 = sub_100292EFC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100292EFC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100292F68()
{
  v32 = v0;

  sub_100010474(v0 + 80);
  v1 = *(v0 + 328);
  *(v0 + 160) = v1;
  swift_errorRetain();
  sub_100009DCC(&qword_1006E9B60);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 144);
    v3 = *(v0 + 152);
    if (!*(v0 + 152))
    {

      sub_1002A8714(v2, 0);
      v23 = sub_10056DF68();
      v24 = sub_100573428();

      sub_1002A86E0(v2, 0);
      if (os_log_type_enabled(v23, v24))
      {
        v26 = *(v0 + 192);
        v25 = *(v0 + 200);
        v27 = swift_slowAlloc();
        v31[0] = swift_slowAlloc();
        *v27 = 136446466;
        *(v27 + 4) = sub_1000C9784(v26, v25, v31);
        *(v27 + 12) = 2082;
        *(v0 + 176) = v2;
        sub_1002A8738(v2);
        v28 = sub_100572978();
        v30 = sub_1000C9784(v28, v29, v31);

        *(v27 + 14) = v30;
        _os_log_impl(&_mh_execute_header, v23, v24, "Intent id=%{public}s) — Could not present alertKind=%{public}s", v27, 0x16u);
        swift_arrayDestroy();

        sub_1002A86E0(v2, 0);
      }

      else
      {

        sub_1002A86E0(v2, 0);
      }

      goto LABEL_14;
    }

    if (v3 == 3 && v2 == 2)
    {

      goto LABEL_8;
    }

    sub_1002A86E0(*(v0 + 144), v3);
  }

  v5 = *(v0 + 232);
  v4 = *(v0 + 240);
  v6 = *(v0 + 224);

  swift_errorRetain();
  sub_10056C1F8();
  sub_1002AA1A8(&qword_1006EAF78, &type metadata accessor for CocoaError.Code);
  v7 = sub_10056C678();

  (*(v5 + 8))(v4, v6);
  if (v7)
  {
LABEL_8:

    v8 = sub_10056DF68();
    v9 = sub_100573428();

    if (os_log_type_enabled(v8, v9))
    {
      v11 = *(v0 + 192);
      v10 = *(v0 + 200);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v31[0] = v13;
      *v12 = 136446210;
      *(v12 + 4) = sub_1000C9784(v11, v10, v31);
      _os_log_impl(&_mh_execute_header, v8, v9, "Intent id=%{public}s) — User cancelled", v12, 0xCu);
      sub_100010474(v13);
LABEL_12:

      goto LABEL_13;
    }

    goto LABEL_13;
  }

  swift_errorRetain();
  v8 = sub_10056DF68();
  v14 = sub_100573428();

  if (os_log_type_enabled(v8, v14))
  {
    v16 = *(v0 + 192);
    v15 = *(v0 + 200);
    v17 = swift_slowAlloc();
    v31[0] = swift_slowAlloc();
    *v17 = 136446466;
    *(v17 + 4) = sub_1000C9784(v16, v15, v31);
    *(v17 + 12) = 2082;
    *(v0 + 168) = v1;
    swift_errorRetain();
    v18 = sub_100572978();
    v20 = sub_1000C9784(v18, v19, v31);

    *(v17 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v14, "Intent id=%{public}s) — Failed to insert with error=%{public}s", v17, 0x16u);
    swift_arrayDestroy();
    goto LABEL_12;
  }

LABEL_13:

LABEL_14:
  swift_willThrow();

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_100293458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[126] = v4;
  v5[125] = a4;
  v5[124] = a3;
  v5[123] = a2;
  v5[122] = a1;
  v6 = sub_10056CAE8();
  v5[127] = v6;
  v5[128] = *(v6 - 8);
  v5[129] = swift_task_alloc();
  sub_10056CC38();
  v5[130] = swift_task_alloc();
  v7 = sub_100572888();
  v5[131] = v7;
  v5[132] = *(v7 - 8);
  v5[133] = swift_task_alloc();
  v5[134] = swift_task_alloc();
  v8 = sub_10056DFD8();
  v5[135] = v8;
  v5[136] = *(v8 - 8);
  v5[137] = swift_task_alloc();
  v5[138] = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v5[139] = swift_task_alloc();
  v5[140] = swift_task_alloc();
  v5[141] = swift_task_alloc();
  v5[142] = swift_task_alloc();
  v5[143] = swift_task_alloc();
  v5[144] = swift_task_alloc();
  v5[145] = swift_task_alloc();
  v5[146] = swift_task_alloc();
  v5[147] = swift_task_alloc();
  v5[148] = sub_100572F08();
  v5[149] = sub_100572EF8();
  v10 = sub_100572E78();
  v5[150] = v10;
  v5[151] = v9;

  return _swift_task_switch(sub_1002936E4, v10, v9);
}

uint64_t sub_1002936E4()
{
  v18 = v0;
  v1 = v0[126];
  v2 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  v0[152] = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v0[153] = v3;
  if (v3)
  {
    v4 = OBJC_IVAR____TtC9MusicCore6Player_engineState;
    swift_beginAccess();
    if (*(v3 + v4) == 2)
    {
    }

    else
    {
      v8 = qword_1006E4F80;

      if (v8 != -1)
      {
        swift_once();
      }

      v9 = sub_10056DF88();
      sub_10000C49C(v9, static Logger.playbackController);

      v10 = sub_10056DF68();
      v11 = sub_100573448();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = v0[124];
        v13 = v0[123];
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v17 = v15;
        *v14 = 136446210;
        *(v14 + 4) = sub_1000C9784(v13, v12, &v17);
        _os_log_impl(&_mh_execute_header, v10, v11, "Intent id=%{public}s) — Awaiting for engine to start", v14, 0xCu);
        sub_100010474(v15);
      }
    }

    v16 = swift_task_alloc();
    v0[154] = v16;
    *v16 = v0;
    v16[1] = sub_100293A4C;

    return Player.startEngineIfNeeded()();
  }

  else
  {

    sub_1002A85E0();
    swift_allocError();
    *v5 = 0;
    *(v5 + 8) = 3;
    swift_willThrow();

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_100293A4C()
{
  v1 = *v0;

  v2 = *(v1 + 1208);
  v3 = *(v1 + 1200);

  return _swift_task_switch(sub_100293B6C, v3, v2);
}

uint64_t sub_100293B6C()
{
  v1 = *(v0 + 1000);
  if (!v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10056E478();

    v2 = *(v0 + 960);
    v1 = [v2 route];
  }

  *(v0 + 1240) = v1;
  v3 = *(v0 + 976);
  v4 = type metadata accessor for PlaybackIntentDescriptor(0);
  *(v0 + 1248) = v4;
  *(v0 + 1256) = *(v3 + v4[5]);
  if ((*(v3 + v4[10]) & 1) != 0 || *(v3 + v4[9]) == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = *(v3 + v4[6]);
  }

  *(v0 + 1264) = v5;
  v6 = *(v0 + 1000);
  v7 = swift_task_alloc();
  *(v0 + 1272) = v7;
  *v7 = v0;
  v7[1] = sub_100293CDC;
  v8 = *(v0 + 976);

  return sub_10029B9B8(v1, v8);
}

uint64_t sub_100293CDC(char a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 218) = a1;
  *(v4 + 1280) = v1;

  v5 = *(v3 + 1208);
  v6 = *(v3 + 1200);
  if (v1)
  {
    v7 = sub_100297834;
  }

  else
  {
    v7 = sub_100293E24;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100293E24()
{
  v81 = v0;
  if (*(v0 + 218) == 2)
  {
    v1 = *(v0 + 1240);

    v2 = *(v0 + 8);

    return v2();
  }

  if (qword_1006E4F80 != -1)
  {
    swift_once();
  }

  v4 = sub_10056DF88();
  *(v0 + 1288) = sub_10000C49C(v4, static Logger.playbackController);

  v5 = sub_10056DF68();
  v6 = sub_100573448();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 218);
    v8 = *(v0 + 992);
    v9 = *(v0 + 984);
    v10 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    *v10 = 136446466;
    *(v10 + 4) = sub_1000C9784(v9, v8, &v80);
    *(v10 + 12) = 2082;
    *(v0 + 217) = v7 & 1;
    v11 = sub_100572978();
    v13 = sub_1000C9784(v11, v12, &v80);

    *(v10 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "Intent id=%{public}s) — Resolved Playability Options=%{public}s", v10, 0x16u);
    swift_arrayDestroy();
  }

  sub_1002A8678(*(v0 + 976), *(v0 + 1176), type metadata accessor for PlaybackIntentDescriptor.IntentType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v15 = *(v0 + 1176);
  if (EnumCaseMultiPayload == 1)
  {
    v16 = *(v0 + 1096);
    v17 = *(v0 + 1088);
    v18 = *(v0 + 1080);
    (*(v17 + 32))(v16, v15, v18);
    v19 = sub_10056DFA8();
    (*(v17 + 8))(v16, v18);
  }

  else
  {
    v19 = *v15;
  }

  v20 = [v19 sharedListeningProperties];

  if (v20)
  {

    swift_getKeyPath();
    swift_getKeyPath();
    sub_10056E478();

    v21 = *(v0 + 952);
    if (!v21)
    {
      goto LABEL_25;
    }

    v22 = [*(v0 + 952) isSharedListeningSession];

    if (!v22)
    {
      goto LABEL_25;
    }

    sub_1002A8678(*(v0 + 976), *(v0 + 1160), type metadata accessor for PlaybackIntentDescriptor.IntentType);
    v23 = swift_getEnumCaseMultiPayload();
    v24 = *(v0 + 1160);
    if (v23 == 1)
    {
      v25 = *(v0 + 1096);
      v26 = *(v0 + 1088);
      v27 = *(v0 + 1080);
      (*(v26 + 32))(v25, v24, v27);
      v28 = sub_10056DFA8();
      (*(v26 + 8))(v25, v27);
    }

    else
    {
      v28 = *v24;
    }

    v43 = [v28 tracklistSource];

    if (v43 == 100)
    {
LABEL_25:
      v44 = *(v0 + 1264);
      *(v0 + 1360) = *(v0 + 1256);
      *(v0 + 1352) = v44;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10056E478();

      v45 = *(v0 + 944);
      v46 = [v45 route];
      *(v0 + 1368) = v46;

      if (!v46)
      {
        v52 = *(v0 + 1240);
        goto LABEL_34;
      }

      objc_opt_self();
      v47 = swift_dynamicCastObjCClass();
      *(v0 + 1376) = v47;
      if (!v47)
      {
        goto LABEL_31;
      }

      v48 = v47;
      v49 = v46;
      if ([v48 isDeviceRoute])
      {
LABEL_30:

LABEL_31:
        v52 = *(v0 + 1240);
LABEL_32:

LABEL_34:
        *(v0 + 1408) = v52;
        sub_1002A8678(*(v0 + 976), *(v0 + 1144), type metadata accessor for PlaybackIntentDescriptor.IntentType);
        v53 = swift_getEnumCaseMultiPayload();
        v54 = *(v0 + 1144);
        if (v53 == 1)
        {
          v55 = *(v0 + 1096);
          v56 = *(v0 + 1088);
          v57 = *(v0 + 1080);
          (*(v56 + 32))(v55, v54, v57);
          v58 = sub_10056DFA8();
          (*(v56 + 8))(v55, v57);
        }

        else
        {
          v58 = *v54;
        }

        *(v0 + 1416) = v58;
        *(v0 + 220) = *(*(v0 + 1248) + 32);
        *(v0 + 1424) = sub_100572EF8();
        v60 = sub_100572E78();
        *(v0 + 1432) = v60;
        *(v0 + 1440) = v59;

        return _swift_task_switch(sub_100295BF0, v60, v59);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_10056E478();

      v50 = *(v0 + 760);
      v51 = *(v0 + 218);
      if (v50)
      {

        if ((v51 & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      else if ((*(v0 + 218) & 1) == 0)
      {
        sub_1002A8678(*(v0 + 976), *(v0 + 1152), type metadata accessor for PlaybackIntentDescriptor.IntentType);
        v71 = swift_getEnumCaseMultiPayload();
        v72 = *(v0 + 1152);
        if (v71 == 1)
        {
          v73 = *(v0 + 1096);
          v74 = *(v0 + 1088);
          v75 = *(v0 + 1080);
          (*(v74 + 32))(v73, v72, v75);
          v76 = sub_10056DFA8();
          (*(v74 + 8))(v73, v75);
        }

        else
        {
          v76 = *v72;
        }

        v77 = [v76 prefersEnqueuingUsingAirPlay];

        if ((v77 & 1) == 0)
        {
          v79 = [v48 supportsRemoteControl];

          if (v79 && (*(*(v0 + 976) + *(*(v0 + 1248) + 36)) & 1) == 0)
          {
            v52 = *(v0 + 1240);
            if (([*(v0 + 1376) canModifyGroupMembership] & 1) == 0)
            {
              [*(v0 + 1376) establishGroup];
            }

            goto LABEL_32;
          }

          goto LABEL_51;
        }
      }

LABEL_51:
      v78 = swift_task_alloc();
      *(v0 + 1384) = v78;
      *v78 = v0;
      v78[1] = sub_100295948;

      return Player.prepareForBufferedAirPlay()();
    }

    v61 = sub_10056DF68();
    v62 = sub_100573448();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = *(v0 + 992);
      v64 = *(v0 + 984);
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v80 = v66;
      *v65 = 136446210;
      *(v65 + 4) = sub_1000C9784(v64, v63, &v80);
      _os_log_impl(&_mh_execute_header, v61, v62, "Intent id=%{public}s) — Offering Shared Listening options", v65, 0xCu);
      sub_100010474(v66);
    }

    v67 = swift_task_alloc();
    *(v0 + 1320) = v67;
    *v67 = v0;
    v67[1] = sub_100295294;
    v68 = *(v0 + 992);
    v69 = *(v0 + 984);
    v70 = *(v0 + 976);

    return sub_10029C504(v70, v69, v68);
  }

  else
  {
    sub_1002A8678(*(v0 + 976), *(v0 + 1168), type metadata accessor for PlaybackIntentDescriptor.IntentType);
    v29 = swift_getEnumCaseMultiPayload();
    v30 = *(v0 + 1168);
    if (v29 == 1)
    {
      v31 = *(v0 + 1096);
      v32 = *(v0 + 1088);
      v33 = *(v0 + 1080);
      (*(v32 + 32))(v31, v30, v33);
      v34 = sub_10056DFA8();
      (*(v32 + 8))(v31, v33);
    }

    else
    {
      v34 = *v30;
    }

    *(v0 + 1296) = v34;
    v35 = *(v0 + 1248);
    v36 = *(v0 + 976);
    v37 = (*(v0 + 1008) + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator);
    v38 = v37[3];
    v39 = v37[4];
    sub_10000C8CC(v37, v38);
    *(v0 + 1304) = (*(v39 + 40))(v38, v39);
    v40 = *(v36 + *(v35 + 44));
    v41 = v34;
    v42 = swift_task_alloc();
    *(v0 + 1312) = v42;
    *v42 = v0;
    v42[1] = sub_100294974;

    return GroupActivitiesManager.initiateSession(with:alwaysPromptSharePlayPermissions:confirmReplacement:)(v34, v40, v40);
  }
}

uint64_t sub_100294974(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 1296);
  *(*v1 + 219) = a1;

  v4 = *(v2 + 1208);
  v5 = *(v2 + 1200);

  return _swift_task_switch(sub_100294AD8, v5, v4);
}

uint64_t sub_100294AD8()
{
  v51 = v0;
  v1 = *(v0 + 219);

  if (v1 == 1)
  {
    v2 = *(v0 + 1240);

    v3 = *(v0 + 8);

    return v3();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  v5 = *(v0 + 952);
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = [*(v0 + 952) isSharedListeningSession];

  if (!v6)
  {
    goto LABEL_11;
  }

  sub_1002A8678(*(v0 + 976), *(v0 + 1160), type metadata accessor for PlaybackIntentDescriptor.IntentType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = *(v0 + 1160);
  if (EnumCaseMultiPayload == 1)
  {
    v9 = *(v0 + 1096);
    v10 = *(v0 + 1088);
    v11 = *(v0 + 1080);
    (*(v10 + 32))(v9, v8, v11);
    v12 = sub_10056DFA8();
    (*(v10 + 8))(v9, v11);
  }

  else
  {
    v12 = *v8;
  }

  v13 = [v12 tracklistSource];

  if (v13 == 100)
  {
LABEL_11:
    v14 = *(v0 + 1264);
    *(v0 + 1360) = *(v0 + 1256);
    *(v0 + 1352) = v14;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10056E478();

    v15 = *(v0 + 944);
    v16 = [v15 route];
    *(v0 + 1368) = v16;

    if (!v16)
    {
      v22 = *(v0 + 1240);
      goto LABEL_20;
    }

    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    *(v0 + 1376) = v17;
    if (!v17)
    {
      goto LABEL_17;
    }

    v18 = v17;
    v19 = v16;
    if ([v18 isDeviceRoute])
    {
LABEL_16:

LABEL_17:
      v22 = *(v0 + 1240);
LABEL_18:

LABEL_20:
      *(v0 + 1408) = v22;
      sub_1002A8678(*(v0 + 976), *(v0 + 1144), type metadata accessor for PlaybackIntentDescriptor.IntentType);
      v23 = swift_getEnumCaseMultiPayload();
      v24 = *(v0 + 1144);
      if (v23 == 1)
      {
        v25 = *(v0 + 1096);
        v26 = *(v0 + 1088);
        v27 = *(v0 + 1080);
        (*(v26 + 32))(v25, v24, v27);
        v28 = sub_10056DFA8();
        (*(v26 + 8))(v25, v27);
      }

      else
      {
        v28 = *v24;
      }

      *(v0 + 1416) = v28;
      *(v0 + 220) = *(*(v0 + 1248) + 32);
      *(v0 + 1424) = sub_100572EF8();
      v30 = sub_100572E78();
      *(v0 + 1432) = v30;
      *(v0 + 1440) = v29;

      return _swift_task_switch(sub_100295BF0, v30, v29);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_10056E478();

    v20 = *(v0 + 760);
    v21 = *(v0 + 218);
    if (v20)
    {

      if ((v21 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else if ((*(v0 + 218) & 1) == 0)
    {
      sub_1002A8678(*(v0 + 976), *(v0 + 1152), type metadata accessor for PlaybackIntentDescriptor.IntentType);
      v41 = swift_getEnumCaseMultiPayload();
      v42 = *(v0 + 1152);
      if (v41 == 1)
      {
        v43 = *(v0 + 1096);
        v44 = *(v0 + 1088);
        v45 = *(v0 + 1080);
        (*(v44 + 32))(v43, v42, v45);
        v46 = sub_10056DFA8();
        (*(v44 + 8))(v43, v45);
      }

      else
      {
        v46 = *v42;
      }

      v47 = [v46 prefersEnqueuingUsingAirPlay];

      if ((v47 & 1) == 0)
      {
        v49 = [v18 supportsRemoteControl];

        if (v49 && (*(*(v0 + 976) + *(*(v0 + 1248) + 36)) & 1) == 0)
        {
          v22 = *(v0 + 1240);
          if (([*(v0 + 1376) canModifyGroupMembership] & 1) == 0)
          {
            [*(v0 + 1376) establishGroup];
          }

          goto LABEL_18;
        }

        goto LABEL_37;
      }
    }

LABEL_37:
    v48 = swift_task_alloc();
    *(v0 + 1384) = v48;
    *v48 = v0;
    v48[1] = sub_100295948;

    return Player.prepareForBufferedAirPlay()();
  }

  v31 = sub_10056DF68();
  v32 = sub_100573448();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = *(v0 + 992);
    v34 = *(v0 + 984);
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v50 = v36;
    *v35 = 136446210;
    *(v35 + 4) = sub_1000C9784(v34, v33, &v50);
    _os_log_impl(&_mh_execute_header, v31, v32, "Intent id=%{public}s) — Offering Shared Listening options", v35, 0xCu);
    sub_100010474(v36);
  }

  v37 = swift_task_alloc();
  *(v0 + 1320) = v37;
  *v37 = v0;
  v37[1] = sub_100295294;
  v38 = *(v0 + 992);
  v39 = *(v0 + 984);
  v40 = *(v0 + 976);

  return sub_10029C504(v40, v39, v38);
}

uint64_t sub_100295294(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v4;
  *(*v4 + 1328) = v3;

  if (v3)
  {
    v9 = *(v8 + 1208);
    v10 = *(v8 + 1200);
    v11 = sub_100297980;
  }

  else
  {
    *(v8 + 297) = a3;
    *(v8 + 1336) = a2;
    *(v8 + 1344) = a1;
    v9 = *(v8 + 1208);
    v10 = *(v8 + 1200);
    v11 = sub_1002953DC;
  }

  return _swift_task_switch(v11, v10, v9);
}

uint64_t sub_1002953DC()
{
  if (*(v0 + 297))
  {
    v1 = *(v0 + 1240);

    sub_1002A85E0();
    swift_allocError();
    *v2 = 2;
    *(v2 + 8) = 3;
    swift_willThrow();

    v3 = *(v0 + 8);

    return v3();
  }

  v5 = *(v0 + 1336);
  *(v0 + 1360) = *(v0 + 1344);
  *(v0 + 1352) = v5;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  v6 = *(v0 + 944);
  v7 = [v6 route];
  *(v0 + 1368) = v7;

  if (!v7)
  {
    v13 = *(v0 + 1240);
    goto LABEL_14;
  }

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  *(v0 + 1376) = v8;
  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = v8;
  v10 = v7;
  if ([v9 isDeviceRoute])
  {
LABEL_10:

LABEL_11:
    v13 = *(v0 + 1240);
LABEL_12:

LABEL_14:
    *(v0 + 1408) = v13;
    sub_1002A8678(*(v0 + 976), *(v0 + 1144), type metadata accessor for PlaybackIntentDescriptor.IntentType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v15 = *(v0 + 1144);
    if (EnumCaseMultiPayload == 1)
    {
      v16 = *(v0 + 1096);
      v17 = *(v0 + 1088);
      v18 = *(v0 + 1080);
      (*(v17 + 32))(v16, v15, v18);
      v19 = sub_10056DFA8();
      (*(v17 + 8))(v16, v18);
    }

    else
    {
      v19 = *v15;
    }

    *(v0 + 1416) = v19;
    *(v0 + 220) = *(*(v0 + 1248) + 32);
    *(v0 + 1424) = sub_100572EF8();
    v21 = sub_100572E78();
    *(v0 + 1432) = v21;
    *(v0 + 1440) = v20;

    return _swift_task_switch(sub_100295BF0, v21, v20);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  v11 = *(v0 + 760);
  v12 = *(v0 + 218);
  if (v11)
  {

    if ((v12 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

  if (*(v0 + 218))
  {
    goto LABEL_25;
  }

  sub_1002A8678(*(v0 + 976), *(v0 + 1152), type metadata accessor for PlaybackIntentDescriptor.IntentType);
  v22 = swift_getEnumCaseMultiPayload();
  v23 = *(v0 + 1152);
  if (v22 == 1)
  {
    v24 = *(v0 + 1096);
    v25 = *(v0 + 1088);
    v26 = *(v0 + 1080);
    (*(v25 + 32))(v24, v23, v26);
    v27 = sub_10056DFA8();
    (*(v25 + 8))(v24, v26);
  }

  else
  {
    v27 = *v23;
  }

  v28 = [v27 prefersEnqueuingUsingAirPlay];

  if (v28)
  {
LABEL_25:

    goto LABEL_26;
  }

  v30 = [v9 supportsRemoteControl];

  if (v30 && (*(*(v0 + 976) + *(*(v0 + 1248) + 36)) & 1) == 0)
  {
    v13 = *(v0 + 1240);
    if (([*(v0 + 1376) canModifyGroupMembership] & 1) == 0)
    {
      [*(v0 + 1376) establishGroup];
    }

    goto LABEL_12;
  }

LABEL_26:
  v29 = swift_task_alloc();
  *(v0 + 1384) = v29;
  *v29 = v0;
  v29[1] = sub_100295948;

  return Player.prepareForBufferedAirPlay()();
}

uint64_t sub_100295948(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1392) = v1;

  if (v1)
  {
    v5 = v4[151];
    v6 = v4[150];
    v7 = sub_100297ACC;
  }

  else
  {
    v4[175] = a1;
    v5 = v4[151];
    v6 = v4[150];
    v7 = sub_100295A78;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100295A78()
{
  v1 = *(v0 + 1400);
  if (([*(v0 + 1376) canModifyGroupMembership] & 1) == 0)
  {
    [*(v0 + 1376) establishGroup];
  }

  *(v0 + 1408) = v1;
  sub_1002A8678(*(v0 + 976), *(v0 + 1144), type metadata accessor for PlaybackIntentDescriptor.IntentType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = *(v0 + 1144);
  if (EnumCaseMultiPayload == 1)
  {
    v4 = *(v0 + 1096);
    v5 = *(v0 + 1088);
    v6 = *(v0 + 1080);
    (*(v5 + 32))(v4, v3, v6);
    v7 = sub_10056DFA8();
    (*(v5 + 8))(v4, v6);
  }

  else
  {
    v7 = *v3;
  }

  *(v0 + 1416) = v7;
  *(v0 + 220) = *(*(v0 + 1248) + 32);
  *(v0 + 1424) = sub_100572EF8();
  v9 = sub_100572E78();
  *(v0 + 1432) = v9;
  *(v0 + 1440) = v8;

  return _swift_task_switch(sub_100295BF0, v9, v8);
}

uint64_t sub_100295BF0()
{
  v21 = v0;
  v1 = sub_10029D1A8(*(v0 + 1416), *(v0 + 1360), *(v0 + 1352));
  *(v0 + 1448) = v1;
  if (v1[2])
  {

    v2 = sub_10056DF68();
    v3 = sub_100573448();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 992);
      v5 = *(v0 + 984);
      v6 = swift_slowAlloc();
      v20[0] = swift_slowAlloc();
      *v6 = 136446466;
      *(v6 + 4) = sub_1000C9784(v5, v4, v20);
      *(v6 + 12) = 2082;
      sub_100009DCC(&qword_1006EAF80);
      v7 = sub_100572D38();
      v9 = sub_1000C9784(v7, v8, v20);

      *(v6 + 14) = v9;
      _os_log_impl(&_mh_execute_header, v2, v3, "Intent id=%{public}s) — Performing the following commands: %{public}s", v6, 0x16u);
      swift_arrayDestroy();
    }

    v10 = *(v0 + 220);
    v11 = *(v0 + 1416);
    v12 = *(v0 + 976);
    v13 = swift_task_alloc();
    *(v0 + 1464) = v13;
    *v13 = v0;
    v13[1] = sub_1002974C8;
    v14 = *(v0 + 1408);

    return sub_10029AD70(v1, 0x10000, 1, v14, v11, v12 + v10);
  }

  else
  {

    sub_1002A85E0();
    v16 = swift_allocError();
    *v17 = v1;
    *(v17 + 8) = 1;
    swift_willThrow();
    *(v0 + 1456) = v16;
    v18 = *(v0 + 1208);
    v19 = *(v0 + 1200);

    return _swift_task_switch(sub_100295E8C, v19, v18);
  }
}

uint64_t sub_100295E8C()
{
  v147 = v0;
  v1 = *(v0 + 1456);

  *(v0 + 936) = v1;
  swift_errorRetain();
  sub_100009DCC(&qword_1006E9B60);
  if (!swift_dynamicCast())
  {
    v15 = *(v0 + 1408);

    swift_willThrow();

LABEL_9:

    v16 = *(v0 + 8);
LABEL_10:

    return v16();
  }

  v2 = *(v0 + 720);
  *(v0 + 1480) = v2;
  v3 = *(v0 + 728);
  *(v0 + 1488) = v3;
  v4 = sub_10056C718();
  *(v0 + 1496) = v4;
  type metadata accessor for Code(0);
  *(v0 + 928) = 1;
  sub_1002AA1A8(&qword_1006E5EF0, type metadata accessor for Code);
  v5 = v4;
  v6 = sub_10056C678();

  if (v6)
  {

    v7 = sub_10056DF68();
    v8 = sub_100573448();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 992);
      v10 = *(v0 + 984);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v146[0] = v12;
      *v11 = 136446210;
      *(v11 + 4) = sub_1000C9784(v10, v9, v146);
      _os_log_impl(&_mh_execute_header, v7, v8, "Intent id=%{public}s) — Offering replace intent options to user", v11, 0xCu);
      sub_100010474(v12);
    }

    *(v0 + 1504) = sub_100572EF8();
    v14 = sub_100572E78();
    *(v0 + 1512) = v14;
    *(v0 + 1520) = v13;

    return _swift_task_switch(sub_100297C20, v14, v13);
  }

  *(v0 + 888) = 5;
  v17 = v5;
  v18 = sub_10056C678();

  if (v18)
  {
    v143 = *(v0 + 1408);
    v19 = *(v0 + 1248);
    v20 = *(v0 + 1008);
    v21 = *(v0 + 976);

    v22 = *(v20 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
    v23 = *(v20 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
    sub_10000C8CC((v20 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v22);
    sub_10000CC8C(v21 + *(v19 + 28), v0 + 144, &qword_1006EB1C0);
    *(v0 + 216) = 2;
    (*(v23 + 8))(v0 + 144, v22, v23);
    sub_1002A9DCC(v0 + 144);
    sub_1002A85E0();
    swift_allocError();
    *v24 = 1;
    *(v24 + 8) = 3;
    swift_willThrow();

    goto LABEL_9;
  }

  *(v0 + 856) = 3;
  v25 = v17;
  v26 = sub_10056C678();

  if (v26)
  {
    sub_1002A8678(*(v0 + 976), *(v0 + 1128), type metadata accessor for PlaybackIntentDescriptor.IntentType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v28 = *(v0 + 1128);
    if (EnumCaseMultiPayload == 1)
    {
      v29 = *(v0 + 1096);
      v30 = *(v0 + 1088);
      v31 = *(v0 + 1080);
      (*(v30 + 32))(v29, v28, v31);
      v32 = sub_10056DFA8();
      (*(v30 + 8))(v29, v31);
    }

    else
    {
      v32 = *v28;
    }

    *(v0 + 1608) = v32;
    v41 = *(v0 + 220);
    v42 = *(v0 + 976);
    v43 = swift_task_alloc();
    *(v0 + 1616) = v43;
    *v43 = v0;
    v43[1] = sub_10029895C;
    v44 = *(v0 + 992);
    v45 = *(v0 + 984);

    return sub_10029201C(v32, v45, v44, v42 + v41);
  }

  _s3__C4CodeOMa_0(0);
  *(v0 + 848) = 1001;
  sub_1002AA1A8(&unk_1006EB190, _s3__C4CodeOMa_0);
  v33 = v25;
  v34 = sub_10056C678();

  if ((v34 & 1) == 0)
  {
    v46 = *(v0 + 1408);

LABEL_56:
    sub_1002A858C();
    swift_allocError();
    *v87 = v2;
    v87[1] = v3;
    swift_willThrow();
    swift_errorRetain();

    goto LABEL_9;
  }

  sub_1002A8678(*(v0 + 976), *(v0 + 1120), type metadata accessor for PlaybackIntentDescriptor.IntentType);
  v35 = swift_getEnumCaseMultiPayload();
  v36 = *(v0 + 1120);
  if (v35 == 1)
  {
    v37 = *(v0 + 1096);
    v38 = *(v0 + 1088);
    v39 = *(v0 + 1080);
    (*(v38 + 32))(v37, v36, v39);
    v40 = sub_10056DFA8();
    (*(v38 + 8))(v37, v39);
  }

  else
  {
    v40 = *v36;
  }

  v47 = [v40 sharedListeningProperties];

  if (!v47)
  {
    goto LABEL_41;
  }

  v48 = [v33 userInfo];
  v49 = sub_1005726A8();

  v50 = sub_1005728D8();
  if (!*(v49 + 16))
  {

    goto LABEL_43;
  }

  v52 = sub_1000EB89C(v50, v51);
  v54 = v53;

  if ((v54 & 1) == 0)
  {
LABEL_43:

    goto LABEL_44;
  }

  sub_100081F38(*(v49 + 56) + 32 * v52, v0 + 576);

  type metadata accessor for MPCPlayerRequestError(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_41:

LABEL_44:
    if (!*(*(v0 + 1008) + *(v0 + 1216)))
    {
      goto LABEL_55;
    }

    swift_getKeyPath();
    swift_getKeyPath();

    sub_10056E478();

    v72 = *(v0 + 840);
    if (!v72)
    {
      goto LABEL_55;
    }

    v73 = [v33 userInfo];
    v74 = sub_1005726A8();

    v75 = sub_1005728D8();
    if (*(v74 + 16))
    {
      v77 = sub_1000EB89C(v75, v76);
      v79 = v78;

      if (v79)
      {
        v80 = (v0 + 832);
        sub_100081F38(*(v74 + 56) + 32 * v77, v0 + 608);

        type metadata accessor for MPCMusicBehaviorError(0);
        if (swift_dynamicCast())
        {
          v81 = *v80;
          *(v0 + 800) = *v80;
          sub_1002AA1A8(&qword_1006E5E70, type metadata accessor for MPCMusicBehaviorError);
          sub_10056C6D8();
          if (*(v0 + 792) == 6)
          {
            v145 = v0;
            *(v0 + 968) = v81;
            v82 = sub_10056C6F8();
            v83 = sub_1005728D8();
            if (*(v82 + 16) && (v85 = sub_1000EB89C(v83, v84), (v86 & 1) != 0))
            {
              sub_100081F38(*(v82 + 56) + 32 * v85, v0 + 512);
            }

            else
            {
              *(v0 + 512) = 0u;
              *(v0 + 528) = 0u;
            }

            if (!*(v0 + 536))
            {

              sub_10001036C(v0 + 512, &qword_1006EA040);
              goto LABEL_55;
            }

            v88 = v0 + 768;
            sub_100009DCC(&qword_1006EB1A0);
            if (swift_dynamicCast())
            {
              v144 = v81;
              if (*(*v88 + 16))
              {
                v89 = *(*v88 + 32);

                *(v145 + 776) = v89;
                sub_10056C6D8();
                if (*(v145 + 784) == 4)
                {
                  v142 = v89;
                  *(v145 + 752) = v89;
                  v90 = sub_10056C6F8();
                  v91 = sub_1005728D8();
                  if (*(v90 + 16) && (v93 = sub_1000EB89C(v91, v92), (v94 & 1) != 0))
                  {
                    v0 = v145;
                    sub_100081F38(*(v90 + 56) + 32 * v93, v145 + 640);
                  }

                  else
                  {
                    v0 = v145;
                    *(v145 + 640) = 0u;
                    *(v145 + 656) = 0u;
                  }

                  if (*(v0 + 664))
                  {
                    v95 = v0 + 808;
                    sub_100009DCC(&qword_1006EB1A8);
                    if (swift_dynamicCast())
                    {
                      if (*(*v95 + 16))
                      {
                        v96 = *(*v95 + 32);

                        *(v145 + 816) = v96;
                        type metadata accessor for MPCError(0);
                        sub_1002AA1A8(&qword_1006E5EC0, type metadata accessor for MPCError);
                        sub_10056C6D8();

                        if (*(v145 + 824) == 61)
                        {

                          v97 = sub_10056DF68();
                          v98 = sub_100573448();

                          if (os_log_type_enabled(v97, v98))
                          {
                            v99 = *(v145 + 992);
                            v100 = *(v145 + 984);
                            v101 = swift_slowAlloc();
                            v102 = swift_slowAlloc();
                            v146[0] = v102;
                            *v101 = 136446210;
                            *(v101 + 4) = sub_1000C9784(v100, v99, v146);
                            _os_log_impl(&_mh_execute_header, v97, v98, "Intent id=%{public}s) — SharePlayTogether content not available in host's storefront", v101, 0xCu);
                            sub_100010474(v102);
                          }

                          v141 = (v145 + 376);
                          v103 = *(v145 + 1072);
                          v104 = *(v145 + 1064);
                          v105 = *(v145 + 1056);
                          v106 = *(v145 + 1048);
                          sub_100572818();
                          v137 = *(v105 + 16);
                          v137(v104, v103, v106);
                          if (qword_1006E4C60 != -1)
                          {
                            swift_once();
                          }

                          v107 = *(v145 + 1072);
                          v108 = *(v145 + 1064);
                          v109 = *(v145 + 1056);
                          v110 = *(v145 + 1048);
                          v136 = *(v145 + 1032);
                          v138 = *(v145 + 1024);
                          v139 = *(v145 + 1016);
                          v140 = *(v145 + 1008);
                          v111 = qword_1006FC3B8;
                          sub_10056CBC8();
                          v112 = v111;
                          v113 = sub_100572948();
                          v134 = v114;
                          v135 = v113;
                          v115 = *(v109 + 8);
                          v115(v107, v110);
                          sub_100572818();
                          v137(v108, v107, v110);
                          sub_10056CBC8();
                          v116 = sub_100572948();
                          v132 = v117;
                          v133 = v116;
                          v115(v107, v110);
                          sub_100009DCC(&qword_1006E6120);
                          v118 = swift_allocObject();
                          *(v118 + 16) = xmmword_10057B510;
                          sub_100572818();
                          v137(v108, v107, v110);
                          sub_10056CBC8();
                          v119 = sub_100572948();
                          v121 = v120;
                          v115(v107, v110);
                          _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
                          v122 = sub_10056CAB8();
                          v124 = v123;
                          (*(v138 + 8))(v136, v139);
                          *(v118 + 32) = v122;
                          *(v118 + 40) = v124;
                          *(v118 + 48) = v119;
                          *(v118 + 56) = v121;
                          *(v118 + 64) = 2;
                          *(v118 + 72) = 0;
                          *(v118 + 80) = 0;
                          LOBYTE(v146[0]) = 1;
                          *(v145 + 376) = v135;
                          *(v145 + 384) = v134;
                          *(v145 + 392) = v133;
                          *(v145 + 400) = v132;
                          *(v145 + 408) = 0;
                          *(v145 + 416) = 0;
                          *(v145 + 424) = 1;
                          *(v145 + 432) = v118;
                          *(v145 + 440) = 0;
                          v125 = *(v140 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
                          v126 = *(v140 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
                          sub_10000C8CC((v140 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v125);
                          v127 = *(v145 + 424);
                          *(v145 + 256) = *(v145 + 408);
                          *(v145 + 272) = v127;
                          *(v145 + 288) = *(v145 + 440);
                          v128 = *(v145 + 392);
                          *(v145 + 224) = *v141;
                          *(v145 + 240) = v128;
                          *(v145 + 296) = 0;
                          v129 = *(v126 + 8);
                          sub_10017E66C(v141, v145 + 304);
                          v129(v145 + 224, v125, v126);

                          sub_100109250(v141);

                          sub_1002A9DCC(v145 + 224);
                          v130 = *(v145 + 1408);

                          v16 = *(v145 + 8);
                          goto LABEL_10;
                        }
                      }

                      else
                      {
                      }
                    }

                    v0 = v145;
                  }

                  else
                  {

                    sub_10001036C(v0 + 640, &qword_1006EA040);
                  }
                }

                else
                {

                  v0 = v145;
                }
              }

              else
              {
              }

              goto LABEL_55;
            }
          }
        }

LABEL_55:
        v46 = *(v0 + 1408);
        goto LABEL_56;
      }
    }

    else
    {
    }

    goto LABEL_55;
  }

  v55 = *(v0 + 864);
  *(v0 + 1632) = v55;
  *(v0 + 872) = v55;
  sub_1002AA1A8(&unk_1006EB1B0, type metadata accessor for MPCPlayerRequestError);
  sub_10056C6D8();
  if (*(v0 + 880) != 1000)
  {

    goto LABEL_44;
  }

  *(v0 + 896) = v55;
  v56 = sub_10056C6F8();
  v57 = sub_1005728D8();
  if (!*(v56 + 16))
  {

    goto LABEL_68;
  }

  v59 = sub_1000EB89C(v57, v58);
  v61 = v60;

  if ((v61 & 1) == 0)
  {
LABEL_68:

    goto LABEL_69;
  }

  sub_100081F38(*(v56 + 56) + 32 * v59, v0 + 544);

  type metadata accessor for MPCError(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_69:

LABEL_70:

    goto LABEL_44;
  }

  v62 = *(v0 + 904);
  *(v0 + 1640) = v62;
  *(v0 + 912) = v62;
  sub_1002AA1A8(&qword_1006E5EC0, type metadata accessor for MPCError);
  sub_10056C6D8();
  if (*(v0 + 920) != 58)
  {

    goto LABEL_70;
  }

  v63 = sub_10056DF68();
  v64 = sub_100573448();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = *(v0 + 992);
    v66 = *(v0 + 984);
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v146[0] = v68;
    *v67 = 136446210;
    *(v67 + 4) = sub_1000C9784(v66, v65, v146);
    _os_log_impl(&_mh_execute_header, v63, v64, "Intent id=%{public}s) — SharedListening requires system route", v67, 0xCu);
    sub_100010474(v68);
  }

  v69 = objc_opt_self();
  *(v0 + 1648) = v69;
  v70 = [v69 systemRoute];
  *(v0 + 1656) = v70;
  *(v0 + 80) = v0;
  *(v0 + 88) = sub_100298A80;
  v71 = swift_continuation_init();
  *(v0 + 504) = sub_100009DCC(&unk_1006EB680);
  *(v0 + 448) = _NSConcreteStackBlock;
  *(v0 + 456) = 1107296256;
  *(v0 + 464) = sub_100192078;
  *(v0 + 472) = &unk_1006974A0;
  *(v0 + 480) = v71;
  [v69 setActiveRoute:v70 completion:v0 + 448];

  return _swift_continuation_await(v0 + 80);
}

uint64_t sub_1002974C8()
{
  v2 = *v1;
  *(*v1 + 1472) = v0;

  if (v0)
  {
    v3 = *(v2 + 1440);
    v4 = *(v2 + 1432);
    v5 = sub_1002977B8;
  }

  else
  {

    v3 = *(v2 + 1440);
    v4 = *(v2 + 1432);
    v5 = sub_100297604;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100297604()
{
  v1 = v0[177];

  v2 = v0[151];
  v3 = v0[150];

  return _swift_task_switch(sub_100297674, v3, v2);
}

uint64_t sub_100297674()
{
  v1 = *(v0 + 1408);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1002977B8()
{

  v0[182] = v0[184];
  v1 = v0[151];
  v2 = v0[150];

  return _swift_task_switch(sub_100295E8C, v2, v1);
}

uint64_t sub_100297834()
{
  v1 = *(v0 + 1240);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100297980()
{
  v1 = *(v0 + 1240);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100297ACC()
{
  v1 = v0[171];
  v2 = v0[155];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100297C20()
{
  v1 = sub_100572EF8();
  *(v0 + 1528) = v1;
  if (v1)
  {
    swift_getObjectType();
    v2 = sub_100572E78();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  return _swift_task_switch(sub_100297CB4, v2, v4);
}

uint64_t sub_100297CB4()
{
  v1 = v0[126];
  v0[2] = v0;
  v0[7] = v0 + 92;
  v0[3] = sub_100297D68;
  v2 = swift_continuation_init();
  sub_10029D738(v2, v1);

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100297D68()
{
  v1 = *v0;
  v2 = *v0;
  *(v2 + 1536) = *(*v0 + 736);
  *(v2 + 298) = *(v2 + 744);
  v3 = *(v1 + 1520);
  v4 = *(v1 + 1512);

  return _swift_task_switch(sub_100297E8C, v4, v3);
}

uint64_t sub_100297E8C()
{

  v1 = *(v0 + 1208);
  v2 = *(v0 + 1200);

  return _swift_task_switch(sub_100297EF4, v2, v1);
}

uint64_t sub_100297EF4()
{
  if (*(v0 + 298))
  {
    v1 = *(v0 + 1496);
    v2 = *(v0 + 1408);

    sub_1002A85E0();
    swift_allocError();
    *v3 = 2;
    *(v3 + 8) = 3;
    swift_willThrow();

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    sub_1002A8678(*(v0 + 976), *(v0 + 1136), type metadata accessor for PlaybackIntentDescriptor.IntentType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v7 = *(v0 + 1136);
    if (EnumCaseMultiPayload == 1)
    {
      v8 = *(v0 + 1096);
      v9 = *(v0 + 1088);
      v10 = *(v0 + 1080);
      (*(v9 + 32))(v8, v7, v10);
      v11 = sub_10056DFA8();
      (*(v9 + 8))(v8, v10);
    }

    else
    {
      v11 = *v7;
    }

    *(v0 + 1544) = v11;
    *(v0 + 1552) = sub_100572EF8();
    v13 = sub_100572E78();
    *(v0 + 1560) = v13;
    *(v0 + 1568) = v12;

    return _swift_task_switch(sub_1002981B0, v13, v12);
  }
}

uint64_t sub_1002981B0()
{
  v21 = v0;
  v1 = sub_10029D1A8(*(v0 + 1544), *(v0 + 1360), *(v0 + 1536));
  *(v0 + 1576) = v1;
  if (v1[2])
  {

    v2 = sub_10056DF68();
    v3 = sub_100573448();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 992);
      v5 = *(v0 + 984);
      v6 = swift_slowAlloc();
      v20[0] = swift_slowAlloc();
      *v6 = 136446466;
      *(v6 + 4) = sub_1000C9784(v5, v4, v20);
      *(v6 + 12) = 2082;
      sub_100009DCC(&qword_1006EAF80);
      v7 = sub_100572D38();
      v9 = sub_1000C9784(v7, v8, v20);

      *(v6 + 14) = v9;
      _os_log_impl(&_mh_execute_header, v2, v3, "Intent id=%{public}s) — Performing the following commands: %{public}s", v6, 0x16u);
      swift_arrayDestroy();
    }

    v10 = *(v0 + 1544);
    v11 = *(v0 + 220);
    v12 = *(v0 + 976);
    v13 = swift_task_alloc();
    *(v0 + 1592) = v13;
    *v13 = v0;
    v13[1] = sub_1002985C8;
    v14 = *(v0 + 1408);

    return sub_10029AD70(v1, 0x10000, 0, v14, v10, v12 + v11);
  }

  else
  {

    sub_1002A85E0();
    v16 = swift_allocError();
    *v17 = v1;
    *(v17 + 8) = 1;
    swift_willThrow();
    *(v0 + 1584) = v16;
    v18 = *(v0 + 1208);
    v19 = *(v0 + 1200);

    return _swift_task_switch(sub_10029844C, v19, v18);
  }
}

uint64_t sub_10029844C()
{
  v1 = v0[193];
  v2 = v0[187];
  v3 = v0[176];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1002985C8()
{
  v2 = *v1;
  *(*v1 + 1600) = v0;

  if (v0)
  {
    v3 = *(v2 + 1568);
    v4 = *(v2 + 1560);
    v5 = sub_1002988E0;
  }

  else
  {

    v3 = *(v2 + 1568);
    v4 = *(v2 + 1560);
    v5 = sub_100298704;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100298704()
{
  v1 = v0[193];

  v2 = v0[151];
  v3 = v0[150];

  return _swift_task_switch(sub_100298774, v3, v2);
}

uint64_t sub_100298774()
{
  v1 = v0[187];

  v2 = v0[176];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1002988E0()
{

  v0[198] = v0[200];
  v1 = v0[151];
  v2 = v0[150];

  return _swift_task_switch(sub_10029844C, v2, v1);
}

uint64_t sub_10029895C()
{
  v2 = *v1;
  *(*v1 + 1624) = v0;

  if (v0)
  {
    v3 = *(v2 + 1208);
    v4 = *(v2 + 1200);
    v5 = sub_1002994F4;
  }

  else
  {

    v3 = *(v2 + 1208);
    v4 = *(v2 + 1200);
    v5 = sub_1002AB590;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100298A80()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 1664) = v2;
  v3 = *(v1 + 1208);
  v4 = *(v1 + 1200);
  if (v2)
  {
    v5 = sub_100299670;
  }

  else
  {
    v5 = sub_100298BB0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100298BB0()
{
  v1 = *(v0 + 1112);
  v2 = *(v0 + 976);

  sub_1002A8678(v2, v1, type metadata accessor for PlaybackIntentDescriptor.IntentType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v4 = *(v0 + 1112);
  if (EnumCaseMultiPayload == 1)
  {
    v5 = *(v0 + 1096);
    v6 = *(v0 + 1088);
    v7 = *(v0 + 1080);
    (*(v6 + 32))(v5, v4, v7);
    v8 = sub_10056DFA8();
    (*(v6 + 8))(v5, v7);
  }

  else
  {
    v8 = *v4;
  }

  *(v0 + 1672) = v8;
  *(v0 + 1680) = [*(v0 + 1648) systemRoute];
  *(v0 + 1688) = sub_100572EF8();
  v10 = sub_100572E78();
  *(v0 + 1696) = v10;
  *(v0 + 1704) = v9;

  return _swift_task_switch(sub_100298D08, v10, v9);
}

uint64_t sub_100298D08()
{
  v22 = v0;
  v1 = sub_10029D1A8(*(v0 + 1672), *(v0 + 1360), *(v0 + 1352));
  *(v0 + 1712) = v1;
  if (v1[2])
  {

    v2 = sub_10056DF68();
    v3 = sub_100573448();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 992);
      v5 = *(v0 + 984);
      v6 = swift_slowAlloc();
      v21[0] = swift_slowAlloc();
      *v6 = 136446466;
      *(v6 + 4) = sub_1000C9784(v5, v4, v21);
      *(v6 + 12) = 2082;
      sub_100009DCC(&qword_1006EAF80);
      v7 = sub_100572D38();
      v9 = sub_1000C9784(v7, v8, v21);

      *(v6 + 14) = v9;
      _os_log_impl(&_mh_execute_header, v2, v3, "Intent id=%{public}s) — Performing the following commands: %{public}s", v6, 0x16u);
      swift_arrayDestroy();
    }

    v10 = *(v0 + 1680);
    v11 = *(v0 + 1672);
    v12 = *(v0 + 220);
    v13 = *(v0 + 976);
    v14 = swift_task_alloc();
    *(v0 + 1728) = v14;
    *v14 = v0;
    v14[1] = sub_10029913C;

    return sub_10029AD70(v1, 0x10000, 1, v10, v11, v13 + v12);
  }

  else
  {
    v16 = *(v0 + 1680);

    sub_1002A85E0();
    v17 = swift_allocError();
    *v18 = v1;
    *(v18 + 8) = 1;
    swift_willThrow();

    *(v0 + 1720) = v17;
    v19 = *(v0 + 1208);
    v20 = *(v0 + 1200);

    return _swift_task_switch(sub_100298FB0, v20, v19);
  }
}

uint64_t sub_100298FB0()
{
  v1 = v0[209];
  v2 = v0[205];
  v3 = v0[204];
  v4 = v0[187];
  v5 = v0[176];

  v6 = v0[1];

  return v6();
}

uint64_t sub_10029913C()
{
  v2 = *v1;
  *(*v1 + 1736) = v0;

  if (v0)
  {
    v3 = *(v2 + 1704);
    v4 = *(v2 + 1696);
    v5 = sub_10029946C;
  }

  else
  {

    v3 = *(v2 + 1704);
    v4 = *(v2 + 1696);
    v5 = sub_100299278;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100299278()
{
  v1 = v0[210];
  v2 = v0[209];

  v3 = v0[151];
  v4 = v0[150];

  return _swift_task_switch(sub_1002992F0, v4, v3);
}

uint64_t sub_1002992F0()
{
  v1 = v0[205];
  v2 = v0[204];
  v3 = v0[187];

  v4 = v0[176];

  v5 = v0[1];

  return v5();
}

uint64_t sub_10029946C()
{

  *(v0 + 1720) = *(v0 + 1736);
  v1 = *(v0 + 1208);
  v2 = *(v0 + 1200);

  return _swift_task_switch(sub_100298FB0, v2, v1);
}

uint64_t sub_1002994F4()
{
  v1 = v0[201];
  v2 = v0[187];
  v3 = v0[176];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100299670()
{
  v1 = v0[207];
  v2 = v0[205];
  v3 = v0[204];
  v4 = v0[187];
  v5 = v0[176];

  swift_willThrow();

  v6 = v0[1];

  return v6();
}

uint64_t sub_100299804(uint64_t a1)
{
  v2[26] = a1;
  v2[27] = v1;
  sub_100572F08();
  v2[28] = sub_100572EF8();
  v4 = sub_100572E78();
  v2[29] = v4;
  v2[30] = v3;

  return _swift_task_switch(sub_10029989C, v4, v3);
}

uint64_t sub_10029989C()
{
  v1 = *(v0 + 216);
  v2 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  v3 = *(v1 + v2);
  *(v0 + 248) = v3;
  if (v3)
  {

    if (sub_1002A8BC8(&_mh_execute_header))
    {
      if (qword_1006E4F80 != -1)
      {
        swift_once();
      }

      v4 = sub_10056DF88();
      *(v0 + 272) = sub_10000C49C(v4, static Logger.playbackController);
      v5 = sub_10056DF68();
      v6 = sub_100573448();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v5, v6, "[Auto-Sing] Awaiting for Vocals Command…", v7, 2u);
      }

      *(v0 + 160) = &type metadata for Player.VocalsCommand;
      *(v0 + 168) = &protocol witness table for Player.VocalsCommand;
      *(v0 + 140) = 1;
      *(v0 + 136) = 0;
      v8 = swift_task_alloc();
      *(v0 + 280) = v8;
      *v8 = v0;
      v8[1] = sub_100299EA8;
      v9 = *(v0 + 208);
      v10 = 5.0;
      v11 = v0 + 136;
    }

    else
    {
      if (qword_1006E4F80 != -1)
      {
        swift_once();
      }

      v14 = sub_10056DF88();
      sub_10000C49C(v14, static Logger.playbackController);
      v15 = sub_10056DF68();
      v16 = sub_100573448();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v15, v16, "[Auto-Sing] Preparing VA…", v17, 2u);
      }

      *(v0 + 120) = &type metadata for Player.VocalsCommand.Prepare;
      *(v0 + 128) = &protocol witness table for Player.VocalsCommand.Prepare;
      v18 = swift_task_alloc();
      *(v0 + 256) = v18;
      *v18 = v0;
      v18[1] = sub_100299BEC;
      v9 = *(v0 + 208);
      v11 = v0 + 96;
      v10 = 5.0;
    }

    return Player.performWhenAvailable(_:options:issuer:timeout:)(v11, 0, 0, 0, v9, v10);
  }

  else
  {

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_100299BEC(void *a1)
{
  v4 = *v2;
  *(*v2 + 264) = v1;

  if (v1)
  {
    v5 = *(v4 + 232);
    v6 = *(v4 + 240);
    v7 = sub_10029A118;
  }

  else
  {

    sub_100010474(v4 + 96);
    v5 = *(v4 + 232);
    v6 = *(v4 + 240);
    v7 = sub_100299D18;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_100299D18()
{
  if (qword_1006E4F80 != -1)
  {
    swift_once();
  }

  v1 = sub_10056DF88();
  *(v0 + 272) = sub_10000C49C(v1, static Logger.playbackController);
  v2 = sub_10056DF68();
  v3 = sub_100573448();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "[Auto-Sing] Awaiting for Vocals Command…", v4, 2u);
  }

  *(v0 + 160) = &type metadata for Player.VocalsCommand;
  *(v0 + 168) = &protocol witness table for Player.VocalsCommand;
  *(v0 + 140) = 1;
  *(v0 + 136) = 0;
  v5 = swift_task_alloc();
  *(v0 + 280) = v5;
  *v5 = v0;
  v5[1] = sub_100299EA8;
  v6 = *(v0 + 208);

  return Player.performWhenAvailable(_:options:issuer:timeout:)(v0 + 136, 0, 0, 0, v6, 5.0);
}

uint64_t sub_100299EA8(void *a1)
{
  v4 = *v2;
  *(*v2 + 288) = v1;

  if (v1)
  {
    v5 = *(v4 + 232);
    v6 = *(v4 + 240);
    v7 = sub_10029A358;
  }

  else
  {

    sub_100010474(v4 + 136);
    v5 = *(v4 + 232);
    v6 = *(v4 + 240);
    v7 = sub_100299FD4;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_100299FD4()
{

  v1 = sub_10056DF68();
  v2 = sub_100573448();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "[Auto-Sing] Vocals command performed", v3, 2u);
  }

  v4 = (*(v0 + 216) + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator);
  v5 = v4[3];
  v6 = v4[4];
  sub_10000C8CC(v4, v5);
  *(v0 + 16) = 0;
  *(v0 + 88) = 1;
  (*(v6 + 8))(v0 + 16, v5, v6);

  sub_1002A9DCC(v0 + 16);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10029A118()
{
  v16 = v0;

  sub_100010474(v0 + 96);
  v1 = *(v0 + 264);
  if (qword_1006E4F80 != -1)
  {
    swift_once();
  }

  v2 = sub_10056DF88();
  sub_10000C49C(v2, static Logger.playbackController);
  swift_errorRetain();
  v3 = sub_10056DF68();
  v4 = sub_100573428();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136446210;
    *(v0 + 200) = v1;
    swift_errorRetain();
    sub_100009DCC(&qword_1006E9B60);
    v7 = sub_100572978();
    v9 = sub_1000C9784(v7, v8, &v15);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "[Auto-Sing] Failed with error=%{public}s", v5, 0xCu);
    sub_100010474(v6);
  }

  else
  {
  }

  v10 = (*(v0 + 216) + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator);
  v11 = v10[3];
  v12 = v10[4];
  sub_10000C8CC(v10, v11);
  *(v0 + 16) = 0;
  *(v0 + 88) = 1;
  (*(v12 + 8))(v0 + 16, v11, v12);

  sub_1002A9DCC(v0 + 16);
  v13 = *(v0 + 8);

  return v13();
}